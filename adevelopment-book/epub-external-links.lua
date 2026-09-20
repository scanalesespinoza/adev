-- EPUB packages cannot retain links to files that live outside the package.
-- Keep repository-relative links in the Markdown canon, but publish them as
-- durable links to the corresponding asset on GitHub.
--
-- ADEV_REPO_REF pins the generated URLs to an immutable ref (the workflows pass
-- the build commit SHA); a mutable branch would let published artifacts drift.

function Link(link)
  local target = link.target

  if not target:match("^%.%./") then
    return link
  end

  while target:match("^%.%./") do
    target = target:gsub("^%.%./", "", 1)
  end

  local ref = os.getenv("ADEV_REPO_REF") or "main"
  local view = target:match("/$") and "tree" or "blob"
  link.target = "https://github.com/scanalesespinoza/adev/"
    .. view .. "/" .. ref .. "/" .. target

  return link
end
