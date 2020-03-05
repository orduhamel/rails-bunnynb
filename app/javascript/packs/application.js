import "bootstrap";
import "../plugins/flatpickr"

// Importing CSS
import 'mapbox-gl/dist/mapbox-gl.css';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

// Importing Functions
import { initMapbox } from '../plugins/init_mapbox';

// Calling Functions
initMapbox();
