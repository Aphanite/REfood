import flatpickr from "flatpickr";

const chooseDate = () => {
  console.log("Init flatpickr");
  flatpickr("#pickupDate", {
    altInput: true,
    altFormat: "F j, Y",
    dateFormat: "Y-m-d",
    minDate: "today",
    // maxDate: best_before_date
  })
};


const chooseTime = () => {
  flatpickr("#pickup-time", {
    enableTime: true,
    noCalendar: true,
    dateFormat: "H:i",
    minTime: "08:00",
    maxTime: "20:00",
  })
}


export const addPickUpSlot = () => {
  const pickUpContainer = document.getElementById("pickupContainer");
  if (pickUpContainer) {
    console.log("WE are IN");
    chooseDate();
    chooseTime();
  }
}
