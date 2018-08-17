const slider = document.getElementById("drama");
const output = document.getElementById("drama_value")

// Update the current slider value (each time you drag the slider handle)
slider.oninput = function() {
  if (this.value === 0) {
    output.innerText = "all"
  } else {
    output.innerHTML = this.value;
  }
}

