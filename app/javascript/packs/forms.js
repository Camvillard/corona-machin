const checkBoxes = document.querySelectorAll(".checkbox-group");

checkBoxes.forEach(check => {
  const input = check.querySelector("input");
  const label = check.querySelector("label");

  input.addEventListener("click", () => {
    label.classList.toggle("active-label");
  });
});
