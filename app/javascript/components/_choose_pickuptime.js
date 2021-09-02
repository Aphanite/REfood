import flatpickr from "flatpickr";

const chooseDate = (dateInput) => {
  console.log('chooseDate', dateInput)
  const maxDate = dateInput.dataset.maxdate

  flatpickr(dateInput, {
    altInput: true,
    altFormat: "F j, Y",
    dateFormat: "Y-m-d",
    minDate: "today",
    maxDate: maxDate,
    disableMobile: true
  })
};


const chooseTime = () => {
  flatpickr(".pickupTime", {
    enableTime: true,
    noCalendar: true,
    dateFormat: "H:i",
    minTime: "08:00",
    maxTime: "20:00",
    disableMobile: true
  })
}


export const addPickUpSlot = () => {
  console.log('addPickUpSlot')
  const pickUpContainer = document.getElementById("pickupContainer");
  if (pickUpContainer) {
    const dateInputs = Array.from(document.getElementsByClassName('pickupDate'));
    for (const dateInput of dateInputs) {
      chooseDate(dateInput);
      chooseTime();
    }
  }


  // const pickUpContainer = document.getElementById("pickupContainer");
  // if (pickUpContainer) {
    // console.log("WE are IN");
    // document.getElementById('booking_form')
  // }
}
