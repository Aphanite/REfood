import { adjustCount } from '../cart'

export const bindCounterButton = () => {
  const productPage = document.getElementById("product-counter");
  if (!productPage) return
  // if (!window.product_id) return
  console.log("inside");
  const buttons = document.getElementsByClassName('incrementer');
  let counter = 1;
  let counterEl;

  counterEl = document.getElementById("counter");
  for (const button of buttons) {
    button.addEventListener('click', (event) => {
      const offset = Number.parseInt(event.currentTarget.dataset.offset, 10);
      counter += offset;

      if (counter < 1) {
        counter = 1
      }

      counterEl.innerText = counter;
    });
  }

  const cartButton = document.getElementsByClassName("product-cart-btn")[0];
  cartButton.addEventListener('click', () => {
    adjustCount(window.product_id, window.supermarket_id, counter);
  });
};

// const handleButtonClick = (event) => {
//   const offset = Number.parseInt(event.currentTarget.dataset.offset, 10);
//   counter += offset;

//   if (counter < 1) {
//     counter = 1
//   }

//   counterEl.innerText = counter;
// };

// const handleAddToCart = (counter) => {
//   adjustCount(window.product_id, window.supermarket_id, counter);
// }
