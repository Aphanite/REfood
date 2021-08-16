
// Loop through the buttons and add the active class to the current/clicked button

import { state } from "../config";

state.itemMode = 'supermarket'
state.displayMode = 'list'

const toggleItemContainer = document.getElementById("item-selection");
const toggleDisplayContainer = document.getElementById("display-selection");

const itemButtons = toggleItemContainer.getElementsByClassName('toggle-btn')
const displayButtons = toggleDisplayContainer.getElementsByClassName('toggle-btn')

export const renderPage = () => {
  console.log(state);

  toggleActiveClass(itemButtons, state.itemMode);
  toggleActiveClass(displayButtons, state.displayMode);
}

const toggleActiveClass = (buttons, name) => {
  for (const button of buttons) {
      if (button.dataset.name === name) {
        button.classList.add('active')
      } else {
        button.classList.remove('active')
      }
  }
};

const bindButtons = (buttons, kind) => {
  for (const button of buttons) {
    button.addEventListener("click", function() {
      state[kind] = button.dataset.name
      renderPage()
    })
  }
};

export const bindToggleButtons = () => {
  bindButtons(itemButtons, 'itemMode');
  bindButtons(displayButtons, 'displayMode');
}
