const authorization    = "Bearer sk_your_key";

// AUTHENTICATE
//
// Pass your API key as
// a bearer token in an Authorization header.

// GET REQUEST TO
// https://person.clearbit.com/v2/combined/find?email=:email
// :email should be a real e-mail

// 1) store the element with id=clearbitEmail inside a const
// 2) store the form with id=clearbitForm inside a const
// 3) add event listener to the form; event => submit
//    3.????) ??????????? -> event.preventDefault()!!
//    3.1) make an AJAX GET request to the ClearbitAPI
//    3.2) we'll console.log the data
//    3.3) assign correct values to each of the corresponding rows

const emailInput = document.getElementById("clearbitEmail");
const form = document.querySelector("#clearbitForm");

form.addEventListener("submit", (event) => {
  event.preventDefault();

  fetch(`https://person.clearbit.com/v2/combined/find?email=${emailInput.value}`, {
      headers: { 'Authorization': authorization }
    })
    .then(response => response.json())
    .then((data) => {

      const nameTd     = document.getElementById("userName");
      const emailTd    = document.getElementById("userEmail");
      const bioTd      = document.getElementById("userBio");
      const locationTd = document.getElementById("userLocation");

      nameTd.innerText = "";
      emailTd.innerText = "";
      bioTd.innerText = "";
      locationTd.innerText = "";

      if (data.person) {
        nameTd.innerText  = data.person.name.fullName;
        emailTd.innerText = data.person.email;
        bioTd.innerText = data.person.bio;
        locationTd.innerText = data.person.location;
      } else {
        nameTd.innerText  = "This person doesn't exist.";
      }
      // 3.3) assign correct values to each of the corresponding rows
    })
})
