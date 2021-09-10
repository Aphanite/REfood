
const bindCounterButton = (item) => {
  const buttons = item.getElementsByClassName('incrementer');
  const counterEl = item.querySelector("#counter");
  const productId = Number.parseInt(item.dataset.productid, 10)
  let counter = Number.parseInt(counterEl.innerText, 10);

  for (const button of buttons) {
    button.addEventListener('click', (event) => {
      const offset = Number.parseInt(event.currentTarget.dataset.offset, 10);
      console.log(offset);
      counter += offset;
      if (counter < 0) {
        counter = 0
      }
      updateCartRequest(productId, counter);
      }
    );
  }
}


const updateCartRequest = (productId, newCount) => {
  const csrfToken = document.querySelector("[name='csrf-token']").content
  const data = { productId, newCount };
  console.log(data);

  fetch('/json/change_cart_count', {
    method: 'POST',
    headers: {
      "X-CSRF-Token": csrfToken,
      'Content-Type': 'application/json',
    },
    body: JSON.stringify(data),
  })
  .then(response => response.json())
  .then(data => {
    if (!data.success) {
      alert("Error");
      return
    }
    console.log('Success:', data);
    window.location.reload();
  })
  .catch((error) => {
    console.error('Error:', error);
    alert("Error");
    return
  });
}

export const bindCartButtons = () => {
  console.log('Inside bindCartButtons');
  const cartContainer = document.querySelector(".cart__content");
  if (cartContainer) {
    const cartItems = document.getElementsByClassName('cart__content__item');
    for (const cartItem of cartItems) {
      console.log(cartItem);
      bindCounterButton(cartItem);
    }
  }
}
