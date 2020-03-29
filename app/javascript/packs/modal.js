const allButtons = Array.from(document.querySelectorAll("button"));

const modalTriggerButton = allButtons.find(
  button => button.dataset.toggle === "modal"
);

const modalCloseButton = allButtons.find(
  button => button.dataset.dismiss === "modal"
);

const triggerModal = modalTriggerButton => {
  const modalToOpen = document.querySelector(modalTriggerButton.dataset.target);
  modalToOpen.classList.toggle("hide");
};

const closeModal = modalTriggerButton => {
  const modalToOpen = document.querySelector(modalTriggerButton.dataset.target);
  modalToOpen.classList.toggle("hide");
};

modalTriggerButton.addEventListener("click", () => {
  triggerModal(modalTriggerButton);
});
