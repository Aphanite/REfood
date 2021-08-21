import { adjustCount } from '../cart'

var counter = 1;
var counterEl;

export const bindCounterButton = () => {
  const buttons = document.getElementsByClassName('incrementer');
  if (!buttons) return

  counterEl = document.getElementById("counter");
  for (const button of buttons) {
    button.addEventListener('click', handleButtonClck);
  }

  const cartButton = document.getElementsByClassName("product-cart-btn")[0];
  cartButton.addEventListener('click', handleAddToCart);
};

const handleButtonClck = (event) => {
  const offset = Number.parseInt(event.currentTarget.dataset.offset, 10);
  counter += offset;

  if (counter < 1) {
    counter = 1
  }

  counterEl.innerText = counter;
};

const handleAddToCart = () => {
  const productId = window.product_id;
  if (!productId) return

  adjustCount(productId, counter);
}
