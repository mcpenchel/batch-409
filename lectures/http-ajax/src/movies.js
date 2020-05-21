const results = document.getElementById("results");

const insertMovies = (data) => {
  if (data.Search) {
    data.Search.forEach((movieObject) => {
      const movieLi = `<li class="list-inline-item">
        <img src="${movieObject.Poster}" alt="">
        <p>${movieObject.Title}</p>
        </li>`

      results.insertAdjacentHTML("beforeend", movieLi);
    })
  } else {
    results.insertAdjacentHTML("beforeend", "<li class='list-inline-item'>Sorry, no results</li>");
  }
}

const fetchMovies = (keywordStr) => {
  fetch(`http://www.omdbapi.com/?s=${keywordStr}&apikey=adf1f2d7`)
    .then(response => response.json())
    .then(insertMovies);
}

const updateResultsWithMovies = (event) => {
  event.preventDefault();
  const input = event.currentTarget.querySelector('#keyword');
  results.innerHTML = "";
  fetchMovies(input.value);
}

export { fetchMovies, updateResultsWithMovies };
