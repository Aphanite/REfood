
// Loop through the buttons and add the active class to the current/clicked button
import { state } from "../config";

let itemButtons, displayButtons, contentTabs;

const toggleActiveClass = (buttons, name) => {
  for (const button of buttons) {
      if (button.dataset.name === name) {
        button.classList.add('active')
      } else {
        button.classList.remove('active')
      }
  }
};

const toggleVisibleTab = (contentTabs) => {
 for (const tab of contentTabs) {
  if (tab.dataset.name === state.tab) {
        tab.hidden = false
      } else {
        tab.hidden = true
      }
 }
};

const renderPage = () => {
    toggleActiveClass(itemButtons, state.itemMode);
    toggleActiveClass(displayButtons, state.displayMode);

    toggleVisibleTab(contentTabs);
};


const bindButtons = (buttons, kind) => {
  for (const button of buttons) {
    button.addEventListener("click", function() {
      state[kind] = button.dataset.name

      if (state.displayMode === 'map') {
        state.tab = 'map'
        state.itemMode = 'supermarket'
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

const bindToggleButtons = () => {
  bindButtons(itemButtons, 'itemMode');
  bindButtons(displayButtons, 'displayMode');

};

export const initToggleDisplay = () => {
  const toggleItemContainer = document.getElementById("item-selection");
  const toggleDisplayContainer = document.getElementById("display-selection");
  const contentContainer = document.getElementById("content-container");

  // only do next steps if on the correct page
  if (!toggleItemContainer) return

  itemButtons = toggleItemContainer.getElementsByClassName('toggle-btn');
  displayButtons = toggleDisplayContainer.getElementsByClassName('toggle-btn');
  contentTabs = contentContainer.children;

  renderPage();
  bindToggleButtons();
}
