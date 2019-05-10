export const fetchSearchGiphys = (searchTerm) => {
  return $.ajax({
    method: "GET",
    url: `http://api.giphy.com/v1/gifs/search?q=${searchTerm}&api_key=u1Knv2xXsKaMsrCpZtj8hQ5kwKPCjgI5&limit=2`
  })
}

// window.fetchSearchGiphys = fetchSearchGiphys;
// u1Knv2xXsKaMsrCpZtj8hQ5kwKPCjgI5