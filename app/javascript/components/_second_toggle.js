
// Loop through the buttons and add the active class to the current/clicked button
import { state } from "../config";

// const toggleItemContainer = document.getElementById("item-selection");
// const toggleDisplayContainer = document.getElementById("display-selection");
// const contentContainer = document.getElementById("content-container");

// var itemButtons, displayButtons, contentTabs;

// // only do next steps if on the correct page
// if (toggleItemContainer) {
//   itemButtons = toggleItemContainer.getElementsByClassName('toggle-btn')
//   displayButtons = toggleDisplayContainer.getElementsByClassName('toggle-btn')
//   contentTabs = contentContainer.children
// };



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

const renderPage = (itemButtons, displayButtons, contentTabs) => {
    toggleActiveClass(itemButtons, state.itemMode);
    toggleActiveClass(displayButtons, state.displayMode);

    toggleVisibleTab(contentTabs);
};


const bindButtons = (buttons, kind, rest) => {
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

      renderPage(buttons, rest[0], rest[1])
    })
  }
};

const bindToggleButtons = (itemButtons, displayButtons, contentTabs) => {
  bindButtons(itemButtons, 'itemMode', [displayButtons, contentTabs]);
  bindButtons(displayButtons, 'displayMode', [itemButtons, contentTabs]);

};

export const initToggleDisplay = () => {

  const toggleItemContainer = document.getElementById("item-selection");
  const toggleDisplayContainer = document.getElementById("display-selection");
  const contentContainer = document.getElementById("content-container");

  // only do next steps if on the correct page
  if (!toggleItemContainer) return

  const itemButtons = toggleItemContainer.getElementsByClassName('toggle-btn');
  const displayButtons = toggleDisplayContainer.getElementsByClassName('toggle-btn');
  const contentTabs = contentContainer.children;

  renderPage(itemButtons, displayButtons, contentTabs);
  bindToggleButtons(itemButtons, displayButtons, contentTabs);
  
}
