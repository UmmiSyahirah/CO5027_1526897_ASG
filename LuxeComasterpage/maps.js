function initMaps() {
    var lcb = { lat: 4.885470, lng: 114.931614 };
    var map = new google.maps.Map(document.getElementById('maps'), {
        zoom: 40,
        center: lcb
    });
    var marker = new google.maps.Marker({
        position: lcb,
        map: map
    });
}