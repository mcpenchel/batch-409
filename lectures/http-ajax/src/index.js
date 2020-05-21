// imports
import { fetchMovies, updateResultsWithMovies } from './movies'; // <-- add this line
import { initSortable } from './plugins/init_sortable';
import { initMarkdown } from './plugins/init_markdown';
import { initSelect2 } from './plugins/init_select2';

// plugins
initSortable();
initMarkdown();
initSelect2();

// my own functions
fetchMovies("Predator");

// my own code (event listeners, selectors, etc.)

const form    = document.getElementById('search-movies');
form.addEventListener("submit", updateResultsWithMovies);
