import store from 'storejs'


export const initCart = () => {
  // initialize a cart to {} if it doesn't exist yet
  if (!store.get("?cart")) {
    store.set('cart', "{}");
  }
}

export const getCart = () => {
  return JSON.parse(store.get('cart'))
}

export const setCart = (newCart) => {
  store.set('cart', JSON.stringify(newCart))
}

export const getCount = (productId) => {
  const cart = getCart()
  return cart[productId] || 0
}

export const setCount = (productId, count) => {
  const newCart = getCart()
  newCart[productId] = count
  setCart(cart)
}

export const adjustCount = (productId, offset) => {
  const currentCount = getCount(productId)
  const newCount = currentCount + offset
  setCount(productId, newCount)
}
