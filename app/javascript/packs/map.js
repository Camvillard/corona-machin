import mapboxgl from "mapbox-gl";
import axios from "axios";
// handle the display or no the map
const mapToggle = document.querySelector("#map-toggle");
const mapContainer = document.querySelector(".show-map-container");
const mapElement = document.querySelector("#map");

mapToggle.addEventListener("click", () => {
  mapContainer.classList.toggle("open");
});

const mapboxApi = mapElement.dataset.mapboxApiKey;
const allDemands = JSON.parse(mapElement.dataset.demands);
console.log("demands", allDemands);

const allAddresses = allDemands.filter((demand) => demand.address);

console.log("adresses", allAddresses);

const convertAllAddressesInGeocoded = (addresses) => {
  console.log("sfdc", addresses);

  return addresses.map((address) => convertAddressInCoordinates(address));
};

const convertAddressInCoordinates = (address) => {
  const token =
    "pk.eyJ1IjoiY2FtdmlsbGFyZCIsImEiOiJjazhkamkyY2QwdjBuM210N2txbHk2YmZhIn0.KRmSud_67BKoDUanEAWIMw";
  const data = axios({
    maethod: "get",
    baseURL: "https://api.mapbox.com",
    url: `/geocoding/v5/mapbox.places/${address}.json?access_token=${token}`,
  });

  return data;
};

const initMapbox = () => {
  mapboxgl.accessToken =
    "pk.eyJ1IjoiY2FtdmlsbGFyZCIsImEiOiJjazhkamkyY2QwdjBuM210N2txbHk2YmZhIn0.KRmSud_67BKoDUanEAWIMw";
  const map = new mapboxgl.Map({
    container: "map",
    style: "mapbox://styles/mapbox/streets-v11",
    center: [-77.04, 38.907],
    zoom: 11.15,
  });

  convertAllAddressesInGeocoded(allAdresses).then((response) =>
    console.log("res", response)
  );
};

if (mapElement) {
  initMapbox();
}
