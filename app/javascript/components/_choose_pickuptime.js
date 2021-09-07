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
    disableMobile: true,
    disable: [
        function(date) {
            // return true to disable
            return (date.getDay() === 0);

        }
    ],
    locale: {
        "firstDayOfWeek": 1 // start week on Monday
    }
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
}
