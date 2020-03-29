import mapboxgl from "mapbox-gl";
// handle the display or no the map
const mapToggle = document.querySelector("#map-toggle");
const mapContainer = document.querySelector(".show-map-container");
const mapElement = document.querySelector("#map");

mapToggle.addEventListener("click", () => {
  mapContainer.classList.toggle("open");
});

const initMapbox = () => {
  mapboxgl.accessToken =
    "pk.eyJ1IjoiY2FtdmlsbGFyZCIsImEiOiJjazhkamkyY2QwdjBuM210N2txbHk2YmZhIn0.KRmSud_67BKoDUanEAWIMw";
  const map = new mapboxgl.Map({
    container: "map",
    style: "mapbox://styles/mapbox/streets-v11",
    center: [-77.04, 38.907],
    zoom: 11.15
  });
};

if (mapElement) {
  initMapbox();
}
