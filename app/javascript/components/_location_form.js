const button = document.querySelector('.button-homepage')
const locationForm = document.querySelector('.location-form')
if (button) {
  button.addEventListener('click', (event) => {
    locationForm.style.display = 'block';
    const homeScreen = document.getElementById("home-screen");
    homeScreen.hidden = true;
})
}





