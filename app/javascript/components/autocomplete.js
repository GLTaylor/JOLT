function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var ndeCity = document.getElementById('nde_city');

    if (ndeCity) {
      var autocomplete = new google.maps.places.Autocomplete(ndeCity, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(ndeCity, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
