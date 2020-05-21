const apiUrl = 'https://wagon-garage-api.herokuapp.com/mahoneys-garage/cars';

const brandInput = document.querySelector('#brand');
const modelInput = document.querySelector('#model');
const plateInput = document.querySelector('#plate');
const ownerInput = document.querySelector('#owner');

const carList = document.querySelector('.cars-list');

const createCar = (carObject) => {
  brandInput.value = "";
  modelInput.value = "";
  plateInput.value = "";
  ownerInput.value = "";

  const carDiv = `<div class="car">
      <div class="car-image">
        <img src="http://loremflickr.com/280/280/${carObject.brand} ${carObject.model}" />
      </div>
      <div class="car-info">
        <h4>${carObject.brand} ${carObject.model}</h4>
        <p><strong>Owner:</strong> ${carObject.owner}</p>
        <p><strong>Plate:</strong> ${carObject.plate}</p>
      </div>
    </div>`

  carList.insertAdjacentHTML("beforeend", carDiv);
}

const postCar = (event) => {
  event.preventDefault();

  fetch(apiUrl, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({
      brand: brandInput.value,
      model: modelInput.value,
      plate: plateInput.value,
      owner: ownerInput.value
    })
  })
  .then(response => response.json())
  .then(createCar)
}

const getCars = () =>  {
  fetch(apiUrl)
  .then(response => response.json())
  .then((data) => {
    data.forEach((element) => {
      createCar(element);
    })
  })
}

export { getCars, postCar }
