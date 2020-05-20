// Recap about Selectors

document.querySelector('.class') // -> DOM element
document.querySelectorAll('.class') // -> Array of DOM elements
document.querySelector('#id') // -> DOM element
document.getElementById('id') // -> DOM element

// Recap about Loops

const someArray = [1, 2, 3, 4];
// someArray = ["Hey", "Yo", "Let's Go"] -> error
// to do this, we need to use let instead of const, which will
// allow us to change the value of the variable!

someArray.forEach((element) => {
  // console.log(element);
})

// Recap about EventListeners

const button = document.querySelector('#click-me');
button.addEventListener('click', (event) => {
  event.currentTarget.innerText = "Hold on..."
  event.currentTarget.setAttribute("disabled", "");
});

// AJAX GET request

const results = document.getElementById("results");

// AJAX GET request through click on the form's submit btn

const form = document.querySelector('#search-movies');

const fetchMovies = (keywordStr) => {
  fetch(`http://www.omdbapi.com/?s=${keywordStr}&apikey=adf1f2d7`)
    .then(response => response.json())
    .then((data) => {
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
    });
}

form.addEventListener("submit", (event) => {
  event.preventDefault();
  const input = event.currentTarget.querySelector('#keyword');
  results.innerHTML = "";
  fetchMovies(input.value);
});

// AJAX POST request through typing on the form

const searchAlgoliaPlaces = (event) => {
  // Event is the key up!!
  const searchInput = event.currentTarget;

  fetch("https://places-dsn.algolia.net/1/places/query", {
    method: "POST",
    body: JSON.stringify({ query: searchInput.value })
  })
    .then(response => response.json())
    .then((data) => {
      const placesResult = document.getElementById("places-results");

      placesResult.innerHTML = "";

      if (data.hits) {
        data.hits.forEach((locationObj) => {
          const locationLi = `<li class="list-inline-item">
            <p>${locationObj.administrative[0]}</p>
            </li><br>`

          placesResult.insertAdjacentHTML("beforeend", locationLi);
        })
      }
    });
};

const input = document.querySelector("#search");
input.addEventListener("keyup", searchAlgoliaPlaces);
