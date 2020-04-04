const allButtons = Array.from(document.querySelectorAll("button"));

const selectTriggerButton = buttons => {
  return buttons.find(button => button.dataset.toggle === "modal");
};

const selectCloseButton = buttons => {
  return buttons.find(button => button.dataset.dismiss === "modal");
};

const triggerModal = modalTriggerButton => {
  const modalToOpen = document.querySelector(modalTriggerButton.dataset.target);
  modalToOpen.classList.toggle("hide");
};

const closeModal = modalTriggerButton => {
  const modalToOpen = document.querySelector(modalTriggerButton.dataset.target);
  modalToOpen.classList.toggle("hide");
};

const startModal = triggerButton => {
  triggerButton.addEventListener("click", () => {
    triggerModal(triggerButton);
  });
};

const initModal = buttons => {
  if (!buttons) {
    return;
  }
  const triggerButton = selectTriggerButton(buttons);
  const closeButton = selectCloseButton(buttons);
  startModal(triggerButton);
};

initModal(allButtons);
