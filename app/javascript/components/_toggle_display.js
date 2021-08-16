
// Loop through the buttons and add the active class to the current/clicked button



const toggleActiveClass = (toggles, btnClass) => {
  console.log(toggles);
  for (var i = 0; i < toggles.length; i++) {
    toggles[i].addEventListener("click", function() {
      event.preventDefault();
      var current = document.getElementsByClassName(`active ${btnClass}`);
      console.log(current);
      current[0].className = current[0].className.replace(" active", "");
      this.className += " active";
    });
  }
};

const toggleItems = () => {
  // Get the container element
  const toggleItemsContainer = document.getElementById("item-selection");

  if (toggleItemsContainer) {
    // Get all buttons with class="btn" inside the container
    const itemToggles = toggleItemsContainer.getElementsByClassName("toggle-btn");
    toggleActiveClass(itemToggles, "toggle-item");
  };
};

const toggleDisplay = () => {
  // Get the container element
  const toggleDisplayContainer = document.getElementById("display-selection");

  if (toggleDisplayContainer) {
    // Get all buttons with class="btn" inside the container
    const displayToggles = toggleDisplayContainer.getElementsByClassName("toggle-btn");
    toggleActiveClass(displayToggles, "toggle-display");
  };
};

export { toggleItems, toggleDisplay }
