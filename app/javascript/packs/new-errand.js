console.log("prout");

const nameInput = document.querySelector("#name");
const hiddenNameInput = document.querySelector("#hidden-name");

nameInput.addEventListener("blur", e => {
  console.log(e.target.value);
  hiddenNameInput.value = e.target.value;
});
