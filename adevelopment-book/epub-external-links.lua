-- EPUB packages cannot retain links to files that live outside the package.
-- Keep repository-relative links in the Markdown canon, but publish them as
-- durable links to the corresponding asset on the canonical GitHub branch.

function Link(link)
  local target = link.target

  if not target:match("^%.%./") then
    return link
  end

  while target:match("^%.%./") do
    target = target:gsub("^%.%./", "", 1)
  end

  local view = target:match("/$") and "tree" or "blob"
  link.target = "https://github.com/scanalesespinoza/adev/"
    .. view .. "/main/" .. target

  return link
end
