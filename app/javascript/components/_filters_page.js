const filterButton = document.getElementById("filter-button");
const newContent = document.querySelector(".filters-top-page");
if (filterButton) {
filterButton.addEventListener("click", (event) => {
    document.body.innerHTML = newContent.innerHTML
    });
};

const arrowBackButton = document.querySelector(".fa-chevron-left");
const oldContent = document.getElementById("inner");
if (arrowBackButton) {
arrowBackButton.addEventListener("click", (event) => {
    document.body.innerHTML = oldContent.innerHTML
    });
};


// TODO: implementing toggle logic on buttons

// const filterEntry = document.querySelectorAll(".filter-entry")

// const toggleActiveClass = (event) => {
//   event.currentTarget.classList.toggle("active")
// };

// const toggleActiveOnClick = (item) => {
//     item.addEventListener("click", toggleActiveClass);
// };

// filterEntry.forEach(toggleActiveOnClick);
