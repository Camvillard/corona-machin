import mapboxgl from "mapbox-gl";
import axios from "axios";
// handle the display or no the map
const mapToggle = document.querySelector("#map-toggle");
const mapContainer = document.querySelector(".show-map-container");
const mapElement = document.querySelector("#map");

mapToggle.addEventListener("click", () => {
  mapContainer.classList.toggle("open");
});

const allDemands = JSON.parse(mapElement.dataset.demands);

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

const getUsergeolocation = () => {
  return navigator.geolocation.getCurrentPosition(
    (e) => {
      const lng = e.coords.longitude;
      const lat = e.coords.latitude;
      return [lng, lat];
    },
    () => console.log("error")
  );
};

const location = getUsergeolocation();

const initMapbox = () => {
  mapboxgl.accessToken =
    "pk.eyJ1IjoiY2FtdmlsbGFyZCIsImEiOiJjazhkamkyY2QwdjBuM210N2txbHk2YmZhIn0.KRmSud_67BKoDUanEAWIMw";
  const map = new mapboxgl.Map({
    container: "map",
    style: "mapbox://styles/mapbox/streets-v11",
    center: [-73.6106935, 45.5375804],
    zoom: 11.15,
  });

  allDemands.map((address) => {
    return convertAddressInCoordinates(address.address).then((r) => {
      const [lng, lat] = r.data.features[0].geometry.coordinates;
      const popup = new mapboxgl.Popup().setHTML(address.infoWindow);
      new mapboxgl.Marker().setLngLat([lng, lat]).setPopup(popup).addTo(map);
    });
  });
};

if (mapElement) {
  initMapbox();
}
