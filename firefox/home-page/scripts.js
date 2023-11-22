/**
 * Search function
 */

const searchInput = document.querySelector("#search-bar > input")
const searchButton = document.querySelector("#search-bar > button")

const lookup = {
  "deepl":"https://deepl.com/",
  "reddit":"https://reddit.com/",
  "maps":"https://maps.google.com/"
}
const engine = "duckduckgo"
const engineUrls = {
  duckduckgo: "https://duckduckgo.com/?q={query}",
  google: "https://www.google.com/search?q={query}",
  startpage: "https://www.startpage.com/search?q={query}",
}

const isWebUrl = value => {
  try {
    const url = new URL(value)
    return url.protocol === "http:" || url.protocol === "https:"
  } catch {
    return false
  }
}

const getTargetUrl = value => {
  if (isWebUrl(value)) return value
  if (lookup[value]) return lookup[value]
  const url = engineUrls[engine] ?? engine
  return url.replace("{query}", value)
}

const search = () => {
  const value = searchInput.value
  const targetUrl = getTargetUrl(value)
  window.open(targetUrl, "_self")
}

searchInput.onkeyup = event => event.key === "Enter" && search()
searchButton.onclick = search
