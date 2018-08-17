const status = () => {
  var bookingParagraph = document.querySelectorAll('.booking-status');
  bookingParagraph.forEach((p) => {
    var pContent = p.innerHTML
    if (pContent.includes("Denied")) {
      p.classList.add("deny")
    }
    else if (pContent.includes("Accepted")) {
      p.classList.add("accept")
    }
    else {
      p.classList.add("pending")
    }
  })
};

status();

