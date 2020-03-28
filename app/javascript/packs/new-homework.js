const inputs = document.querySelectorAll(".for-hidden-input");
const hiddenInputs = Array.from(document.querySelectorAll(".hidden-input"));

inputs.forEach(input => {
  input.addEventListener("blur", event => {
    const { value, name } = event.target;

    const matchingInput = hiddenInputs.find(input => input.id.includes(name));
    matchingInput.value = value;
  });
});
