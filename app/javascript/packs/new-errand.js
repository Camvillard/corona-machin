const itemHiddenInput = document.querySelector(".hidden-item-input");
const addItemInput = document.querySelector(".add-item-input");
const qtyItemInput = document.querySelector(".quantity-item-input");
const submitItemButton = document.querySelector("#submit-item-btn");
const listItemsContainer = document.querySelector(".list-items-container");

submitItemButton.addEventListener("click", event => {
  addItemToList();
  displayNewItems();
  clearInputs();
});

const addItemToList = () => {
  itemHiddenInput.value =
    itemHiddenInput.value +
    (itemHiddenInput.value ? "," : "") +
    `${addItemInput.value} - ${qtyItemInput.value}`;
};

const displayNewItems = () => {
  listItemsContainer.insertAdjacentHTML(
    "beforeend",
    `<p>${addItemInput.value} - ${qtyItemInput.value}</p>`
  );
};

const clearInputs = () => {
  addItemInput.value = "";
  qtyItemInput.value = "";
};
