
// Loop through the buttons and add the active class to the current/clicked button

import { state } from "../config";

const toggleItemContainer = document.getElementById("item-selection");
const toggleDisplayContainer = document.getElementById("display-selection");
const contentContainer = document.getElementById("content-container");

const itemButtons = toggleItemContainer.getElementsByClassName('toggle-btn')
const displayButtons = toggleDisplayContainer.getElementsByClassName('toggle-btn')
const contentTabs = contentContainer.children


const toggleActiveClass = (buttons, name) => {
  for (const button of buttons) {
      if (button.dataset.name === name) {
        button.classList.add('active')
      } else {
        button.classList.remove('active')
      }
  }
};

const toggleVisibleTab = () => {
 for (const tab of contentTabs) {
  if (tab.dataset.name === state.tab) {
        tab.hidden = false
      } else {
        tab.hidden = true
      }
 }
};

export const renderPage = () => {
  console.log(state);

  toggleActiveClass(itemButtons, state.itemMode);
  toggleActiveClass(displayButtons, state.displayMode);

  toggleVisibleTab();
};


const bindButtons = (buttons, kind) => {
  for (const button of buttons) {
    button.addEventListener("click", function() {
      state[kind] = button.dataset.name

      if (state.displayMode === 'map') {
        state.tab = 'map'
      } else {
        if (state.itemMode === 'supermarket') {
          state.tab = 'supermarkets'
        } else {
          state.tab = 'items'
        }
      }

      renderPage()
    })
  }
};

export const bindToggleButtons = () => {
  bindButtons(itemButtons, 'itemMode');
  bindButtons(displayButtons, 'displayMode');
};