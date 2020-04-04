const itemHiddenInput = document.querySelector(".hidden-item-input");
const addItemInput = document.querySelector(".add-item-input");
const qtyItemInput = document.querySelector(".quantity-item-input");
const submitItemButton = document.querySelector("#submit-item-btn");
const listItemsContainer = document.querySelector(".list-items-container");
const submitButton = document.querySelector("#submit-button");
const validatedInput = document.querySelectorAll(".validation-form");


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

submitButton.addEventListener("click", event => {
  console.log("validation input", validatedInput)
  validatedInput.forEach((inputDiv) => {
    displayErrorMessage(inputDiv);
  })
})

const displayErrorMessage = (inputDiv) => {

  const input = inputDiv.querySelector("input")
  const select = inputDiv.querySelector("select")
  const errorMessage = inputDiv.querySelector(".error-message");

  if (input) {
    errorMessage.innerHTML = !input.value ? "ce champs ne peut pas être vide" : ""
  };

  if (select) {
    errorMessage.innerHTML = !select.value ? "ce champs ne peut pas être vide" : ""
  }
};