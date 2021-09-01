



export const changeCartCount = () => {
  console.log('Inside changeCartCount');
  const cartContainer = document.querySelector(".order__content");
  if (cartContainer) {
    const cartItems = Array.from(document.getElementsByClassName('order__content__item'));
    for (const cartItem of cartItems) {
      console.log("Product")
    }
  }
}
