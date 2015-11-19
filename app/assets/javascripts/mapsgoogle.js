var map;
var marker;
var flightPath;
var listaPontos = new Array();

function initialize() {
   var mapOptions = {
      center: new google.maps.LatLng(-22.203776,-49.954834),
      zoom: 13,
      mapTypeId: 'roadmap'
   };

   
   map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
   google.maps.event.addListener(map, "click", function(event) {
      var lat = event.latLng.lat().toFixed(6);
      var lng = event.latLng.lng().toFixed(6);
      createMarker(lat, lng);
      getCoords(lat, lng);
   });
}

google.maps.event.addDomListener(window, 'load', initialize);

function createMarker(lat, lng) {
   if (marker) {
      marker.setMap(null);
      marker = "";
   }

   marker = new google.maps.Marker({
      position: new google.maps.LatLng(lat, lng),
      draggable: true,
      map: map
   }
   );
   
   google.maps.event.addListener(marker, 'dragend', function() {
      
      marker.position = marker.getPosition();
      var lat = marker.position.lat().toFixed(6);
      var lng = marker.position.lng().toFixed(6);
      getCoords(lat, lng);
      var path = flightPath.getPath();
      path.push(event.latLng);
   });
}

function getCoords(lat, lng) {
   var coords_lat = document.getElementById('lat');
   coords_lat.value = lat;
   var coords_lng = document.getElementById('lng');
   coords_lng.value = lng;
}