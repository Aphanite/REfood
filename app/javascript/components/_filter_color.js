
const toggleActiveClass = (filters, category) => {
  for (const filter of filters) {
      if (filter.dataset.category === category) {
        filter.classList.add('active')
      } else {
        filter.classList.remove('active')
      }
  }
};

export const bindFilters = () => {
  // const filterContainer = document.querySelector(".category-filter");
  // var filters;
  console.log(window.category);

  // if (filterContainer) {
  //   const filters = filterContainer.querySelectorAll("a");
  //   console.log(filters);
  //   let category = "all";

  //   for (const filter of filters) {
  //     filter.addEventListener("click", function() {
  //       console.log(filter.dataset.category);
  //       category = filter.dataset.category;
  //     })
  //   }

  //   toggleActiveClass(filters, category);
  // }
}
