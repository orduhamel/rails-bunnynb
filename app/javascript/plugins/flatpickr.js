import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"
import { calcTotalPrice } from '../components/total_price_calculation';


// flatpickr(".datepicker", {
//   altInput: true,
//   altFormat: "F j, Y",
//   dateFormat: "Y-m-d",
// })

flatpickr("#range_start", {
  // altInput: true,
  // altFormat: "F j, Y",
  // dateFormat: "Y-m-d",
  dateFormat: "d/m/Y",
  plugins: [new rangePlugin({ input: "#range_end"})],
  onChange: (selectedDates, dateStr, instance) => {
    calcTotalPrice(selectedDates[0], selectedDates[1]);
  }
});

