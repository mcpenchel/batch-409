import { getCars, postCar } from './cars'

getCars();

const newCarForm = document.querySelector('#new-car');
newCarForm.addEventListener("submit", postCar);
