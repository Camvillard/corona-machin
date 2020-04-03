const addItemToggle = document.querySelector("#add-item-toggle");
const addItemInput = document.querySelector("#add-item-input");
const addItemText = document.querySelector("#add-item-text");

addItemToggle.addEventListener("click", () => {
  console.log("hello");

  replaceToggleText();
  addItemToggle.classList.toggle("open");
  addItemInput.classList.toggle("hide");
  addItemInput.classList.toggle("open");
});

const replaceToggleText = () => {
  addItemToggle.innerHTML = "<<";
};
