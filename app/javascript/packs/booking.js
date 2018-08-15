
const status = () => {
  const bookingParagraph = document.querySelectorAll('.booking-status');
  console.log(bookingParagraph);
  bookingParagraph.forEach((p) => {
    const pContent = p.innerHTML
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

export { status }
