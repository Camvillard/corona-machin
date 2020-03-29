const options =
  document
    .querySelectorAll(".option");

options.forEach( (option) => 
  option
    .addEventListener("click", (event) => 
    {
      const optionSelected =
        document
          .querySelector(".option-selected");
      optionSelected
        .classList
        .remove("option-selected")
      option
        .classList
        .add("option-selected");
    })
  );