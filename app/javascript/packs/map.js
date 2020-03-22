const mapToggle = document.querySelector("#map-toggle");
const mapContainer = document.querySelector(".show-map-container");

mapToggle.addEventListener("click", () => {
  mapContainer.classList.toggle("open");
});
