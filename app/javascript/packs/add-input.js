const addItemToggle = document.querySelector("#add-item-toggle");
const addItemInput = document.querySelector("#add-item-input");
const addItemText = document.querySelector("#add-item-text");

addItemToggle.addEventListener("click", () => {
  replaceToggleText();
  addItemToggle.classList.toggle("open");
  addItemInput.classList.toggle("hide");
});

const replaceToggleText = () => {
  addItemToggle.innerHTML = "<<";
};

const test = () => {};
const blabla = () => {};
