const filterButton = document.getElementById("filter-button");
const content = document.querySelector(".filters-top-page");
if (filterButton) {
filterButton.addEventListener("click", (event) => {
    document.body.innerHTML = content.innerHTML
    });
}

const filterEntry = document.querySelectorAll(".filter-entry")

const toggleActiveClass = (event) => {
  event.currentTarget.classList.toggle("active")
}

const toggleActiveOnClick = (item) => {
    item.addEventListener("click", toggleActiveClass);
}

filterEntry.forEach(toggleActiveOnClick);
