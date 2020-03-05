import "bootstrap";
import "../plugins/flatpickr";
import "../plugins/moment";

// Importing CSS
import 'mapbox-gl/dist/mapbox-gl.css';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

// Importing Functions
import { initMapbox } from '../plugins/init_mapbox';
import { calcTotalPrice } from '../components/total_price_calculation';

// Calling Functions
initMapbox();
calcTotalPrice();
