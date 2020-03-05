import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

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
  plugins: [new rangePlugin({ input: "#range_end"})]
})
