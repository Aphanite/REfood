const filterButton = document.getElementById("filter-button");
const content = document.querySelector(".filters-top-page");
if (filterButton) {
filterButton.addEventListener("click", (event) => {
    document.body.innerHTML = content.innerHTML
    });
}
