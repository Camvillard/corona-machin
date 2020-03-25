const inputs = document.querySelectorAll(".for-hidden-input");
const hiddenInputs = Array.from(document.querySelectorAll(".hidden-input"));

const itemHiddenInput = document.querySelector(".hidden-item-input");
const addItemInput = document.querySelector(".add-item-input");
const qtyItemInput = document.querySelector(".quantity-item-input");
const submitItemButton = document.querySelector("#submit-item-btn");
const listItemsContainer = document.querySelector(".list-items-container");

inputs.forEach(input => {
  input.addEventListener("blur", event => {
    const { value, name } = event.target;
    console.log(value);
    console.log(name);

    const matchingInput = hiddenInputs.find(input => input.id.includes(name));
    matchingInput.value = value;
  });
});

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
