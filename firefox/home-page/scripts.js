/**
 * Clock function
 */
const clock = document.querySelector("#clock .clock_time");
const date = document.querySelector("#clock .clock_date");
function startTime() {
  const now = new Date();
  let h = now.getHours();
  let m = now.getMinutes();
  m = m < 10 ? "0" + m : m;
  clock.innerHTML =  h + ":" + m;
  setTimeout(startTime, 10000);
}
startTime()

function updateDate(today) {
  const options = {
    weekday: "long",
    month: "long",
    day: "numeric",
  }
  date.innerText = new Intl.DateTimeFormat("fr-FR", options).format(today) ;
}
updateDate(new Date())

/**
 * Search function
 */

const searchInput = document.querySelector("#search-bar > input")
const searchButton = document.querySelector("#search-bar > button")

const lookup = {
  "deepl":"https://deepl.com/",
  "reddit":"https://reddit.com/",
  "maps":"https://maps.google.com/",
  "yt":"https://youtube.com",
  "x":"https://twitter.com",
  "chatgpt":"https://chat.openai.com"
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

