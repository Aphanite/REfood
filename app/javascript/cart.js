
export const adjustCount = (productId, offset) => {
  const csrfToken = document.querySelector("[name='csrf-token']").content
  const data = { productId, offset };
  console.log(data);

  fetch('/json/adjust_cart', {
    method: 'POST',
    headers: {
      "X-CSRF-Token": csrfToken,
      'Content-Type': 'application/json',
    },
    body: JSON.stringify(data),
  })
  .then(response => response.json())
  .then(data => {
    console.log('Success:', data);
    if (true)
    {
      alert(`${data.product} got added to your cart ${data.amount} times`)
    }
  })
  .catch((error) => {
    console.error('Error:', error);
  });
}
