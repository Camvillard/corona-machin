const submitButton = document.querySelector("#submit-button");
const validatedInput = document.querySelectorAll(".validation-form");

submitButton.addEventListener("click", event => {
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