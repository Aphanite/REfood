// import ConfettiGenerator from "confetti-js";
require('canvas-confetti');
export const makeConfetti = () => {
  const confirmPage = document.getElementById("my-canvas");
  if(!confirmPage) return;
  // var confettiSettings = { target: confirmPage };
  // var confetti = new ConfettiGenerator(confettiSettings);
  // confetti.render();
  const confetti = require('canvas-confetti');
  confetti();
}
