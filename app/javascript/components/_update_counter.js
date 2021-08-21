import { adjustCount } from '../cart'

var counter = 1;
var counterEl;

export const bindCounterButton = () => {
  if (!window.product_id) return

  const buttons = document.getElementsByClassName('incrementer');

  counterEl = document.getElementById("counter");
  for (const button of buttons) {
    button.addEventListener('click', handleButtonClick);
  }

  const cartButton = document.getElementsByClassName("product-cart-btn")[0];
  cartButton.addEventListener('click', handleAddToCart);
};

const handleButtonClick = (event) => {
  const offset = Number.parseInt(event.currentTarget.dataset.offset, 10);
  counter += offset;

  if (counter < 1) {
    counter = 1
  }

  counterEl.innerText = counter;
};

const handleAddToCart = () => {
  adjustCount(window.product_id, counter);
}
