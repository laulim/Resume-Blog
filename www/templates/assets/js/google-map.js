function initMap(){
	var voronezh = {lat: 51.668535, lng: 39.205380};
	var myMap = new google.maps.Map(document.getElementById('map'), {
		center: voronezh,
		zoom: 13,
		styles: [{"featureType":"administrative","elementType":"labels.text.fill","stylers":[{"color":"#444444"}]},{"featureType":"landscape","elementType":"all","stylers":[{"color":"#f2f2f2"}]},{"featureType":"landscape","elementType":"labels.text","stylers":[{"visibility":"on"},{"hue":"#ff0000"}]},{"featureType":"poi","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"road","elementType":"all","stylers":[{"saturation":-100},{"lightness":45}]},{"featureType":"road.highway","elementType":"all","stylers":[{"visibility":"simplified"}]},{"featureType":"road.arterial","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"transit","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"water","elementType":"all","stylers":[{"color":"#10ade4"},{"visibility":"on"}]}]
	});
	// var markerImage = 'img/map-marker.png';
	var markerImage = new google.maps.MarkerImage(
		    '/img/map-marker.png',
		    new google.maps.Size(31,43),
		    new google.maps.Point(0,0),
		    new google.maps.Point(0,50)
		);
	var markerVoronezh = new google.maps.Marker({
		position: voronezh,
		map: myMap,
		title: 'Воронеж',
		icon: markerImage
	});
	var contentStringVoronezh = '<div id="content">'+
	      '<div id="siteNotice">'+
	      '</div>'+
	      '<h1 id="firstHeading" class="firstHeading">Воронеж</h1>'+
	      '<div id="bodyContent">'+
	      '<p>Центрально-Черноземный район<br>' +
	      'Воронеж, Воронежская облать, Россия</p>'+
	      '</div>'+
	      '</div>';
	var infowindowVoronezh = new google.maps.InfoWindow({
		content: contentStringVoronezh,
		maxWidth: 400
	});
	markerVoronezh.addListener('click', function() {
		infowindowVoronezh.open(myMap, markerVoronezh);
	});
};
