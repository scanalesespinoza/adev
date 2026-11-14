#!/usr/bin/env python3
"""Compose deterministic edition typography over the ADEV cover art."""

from __future__ import annotations

import argparse
from pathlib import Path

from PIL import Image, ImageDraw, ImageFont


FONT_CANDIDATES = {
    "bold": (
        "/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf",
        "C:/Windows/Fonts/arialbd.ttf",
    ),
    "regular": (
        "/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf",
        "C:/Windows/Fonts/arial.ttf",
    ),
}


def find_font(weight: str) -> str:
    for candidate in FONT_CANDIDATES[weight]:
        if Path(candidate).is_file():
            return candidate
    raise FileNotFoundError(f"No supported {weight} font found")


def font(path: str, size: int) -> ImageFont.FreeTypeFont:
    return ImageFont.truetype(path, size=size)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--input", required=True, type=Path)
    parser.add_argument("--output", required=True, type=Path)
    parser.add_argument("--edition", choices=("es", "en"), default="es")
    args = parser.parse_args()

    image = Image.open(args.input).convert("RGB")
    if image.size != (1024, 1536):
        raise ValueError(f"Expected 1024x1536 cover master, got {image.size}")

    bold = find_font("bold")
    regular = find_font("regular")
    overlay = Image.new("RGBA", image.size, (0, 0, 0, 0))
    overlay_draw = ImageDraw.Draw(overlay)

    # A restrained gradient protects title contrast without flattening the art.
    for y in range(0, 520):
        alpha = round(122 * (1 - y / 520))
        overlay_draw.line((0, y, image.width, y), fill=(3, 18, 34, alpha))
    image = Image.alpha_composite(image.convert("RGBA"), overlay)
    draw = ImageDraw.Draw(image)

    left = 76
    off_white = "#F2F0E8"
    cyan = "#9FC6D7"
    amber = "#F2B45F"

    edition_text = {
        "es": {
            "eyebrow": "LA PRÁCTICA DE",
            "subtitle_1": "Responsabilidad humana, contexto explícito y evidencia",
            "subtitle_2": "para desarrollar software con agentes",
        },
        "en": {
            "eyebrow": "THE PRACTICE OF",
            "subtitle_1": "Human responsibility, explicit context, and evidence",
            "subtitle_2": "for developing software with agents",
        },
    }[args.edition]

    draw.text((left, 70), "ADEV", font=font(bold, 112), fill=off_white)
    draw.text((left + 4, 194), edition_text["eyebrow"], font=font(bold, 27), fill=cyan)
    draw.text((left, 232), "AI AGENTIC", font=font(bold, 55), fill=off_white)
    draw.text((left, 292), "DEVELOPMENT", font=font(bold, 55), fill=off_white)
    draw.line((left, 370, 342, 370), fill=amber, width=4)
    draw.text(
        (left, 389),
        edition_text["subtitle_1"],
        font=font(regular, 23),
        fill=off_white,
    )
    draw.text(
        (left, 423),
        edition_text["subtitle_2"],
        font=font(regular, 23),
        fill=off_white,
    )
    draw.text(
        (left, 476),
        "SERGIO SEBASTIÁN CANALES ESPINOZA",
        font=font(bold, 19),
        fill=cyan,
    )

    args.output.parent.mkdir(parents=True, exist_ok=True)
    image.convert("RGB").save(args.output, format="PNG", optimize=True)


if __name__ == "__main__":
    main()
