$(document).ready(function() {

var distinationLocations = [];

$(function () {
	// Declare a proxy to reference the hub.
	var trackings = $.connection.trackingHub;
	var carsList = [];
	$('#datetimepicker1').datetimepicker();
	$('#datetimepicker2').datetimepicker();


	    // Get the form.
		var form = $('#history-form');

	$(form).submit(function(event) {
		// Stop the browser from submitting the form.
		event.preventDefault();
		// var e = document.getElementById("carsList");
		// var selectedCar = e.options[e.selectedIndex].value;
		var formData = $(form).serialize();

		//Submit the form using AJAX.
		$.ajax({
			type: 'GET',
			dataType: "json",
			url: $(form).attr('action'),
			data: formData
		})
		.done(function(res) {
			$('#carTracking').modal("show");
			$('#carTracking_body').html("<div id='carMap' style='height:500px'></div>");
			//$('#carTracking_body').text(formData)
			var carMap = initCarMap();

			var carCoordinates = res.map(t => ({lat: parseFloat(t.Lat), lng: parseFloat(t.Lng)}));

			  var carPath = new google.maps.Polyline({
				path: carCoordinates,
				geodesic: true,
				strokeColor: '#FF0000',
				strokeOpacity: 1.0,
				strokeWeight: 2
			  });
	  
			  carPath.setMap(carMap);
		  })
		  .fail(function() {
			alert( "error" );
		  });
		
	});

	var map = initialize();
	// Create a function that the hub can call to broadcast messages.
	trackings.client.RecieveNotification = function (myData) {
		distinationLocations = myData;
		setMarkers(map, distinationLocations);
		getCars(myData);
		if(carsList.length == 0){
			carsList = myData;
			buildCarsDropDownList(carsList);
		}
	};
	// Start the connection.
	$.connection.hub.start().done(function () {
		trackings.server.sendNotifications();
	}).fail(function (e) {
		alert(e);
	});

	window.setInterval(function () {
		$.connection.hub.start().done(function () {
			trackings.server.sendNotifications();
		}).fail(function (e) {
			alert(e);
		});
	},
		5000);
});

function getBlockedAreas(map) {
	$.ajax({
		type: 'GET',
		contentType: 'application/json',
		url: 'api/BlockedArea',
	})
	.done( function (data, status) {
		data.BlockedAreas.forEach(element => {
			var coordinates = element.BlockedAreaCoordinates
			.map(t => ({lat: parseFloat(t.Lat), lng: parseFloat(t.Lng)}));

			var areaPath = new google.maps.Polygon({
				path: coordinates,
				strokeColor: '#FF0000',
				strokeOpacity: 1.0,
				strokeWeight: 0,
				fillOpacity: 0.45,
				});
				areaPath.setMap(map);
			});
	})
	.fail( function (data, status) {
		console.log(data);
	});
}

function initCarMap() {
	var carMap = new google.maps.Map(document.getElementById('carMap'), {
		center: new google.maps.LatLng(24.7281755, 46.6434111),
		zoom: 8,
		mapTypeId: google.maps.MapTypeId.ROADMAP
	});

	return carMap;
}

function buildCarsDropDownList(cars){
	var carsDropDown = document.getElementById("selectedCar");
	carsDropDown.innerHTML = "<option></option>"
	for (let i = 0; i < cars.length; i++) {
		carsDropDown.innerHTML += "<option value="+ cars[i].ModemId +">"+ cars[i].ModemId +"</option>";
	}
}

function getCars(cars) {
	var carsBody = document.getElementById("cars");
	carsBody.innerHTML = "";
	for (let i = 0; i < cars.length; i++) {
		const status = cars[i].Speed > 0 ? "<span class='status online'></span>" : "<span class='status pendding'></span>";
		carsBody.innerHTML += "<div class='panel-title'>\
			<label class='check'>\
			<input type='checkbox'>\
			<span class='checkmark'></span>\
			</label>\
			<a class='group'>\
			<div class='name pull-left'>" +
			cars[i].ModemId +
			"<small>" + cars[i].ServerTimestamp + "</small>\
			</div>\
			<div>" +
			"<span> " +
			cars[i].Speed + " kph</span >" +
			status +
			"</div>\
			</a>\
			<div class='dropdown'>\
			<button class='btn dropdown-toggle' type='button' data-toggle='dropdown'>\
			<i class=' icon-options-vertical'></i>\
			</button>\
			<ul class='dropdown-menu'>\
			<li><a href='#'>Option 1</a></li>\
			<li><a href='#'>Option 2</a></li>\
			<li><a href='#'>Option 3</a></li>\
			</ul>\
			</div>\
			</div >";
	}
}

function initialize() {

	google.maps.Map.prototype.markers = new Array();

	google.maps.Map.prototype.addMarker = function (marker) {
		this.markers[this.markers.length] = marker;
	};

	google.maps.Map.prototype.getMarkers = function () {
		return this.markers;
	};

	google.maps.Map.prototype.clearMarkers = function () {
		for (var i = 0; i < this.markers.length; i++) {
			this.markers[i].setMap(null);
		}
		this.markers = new Array();
	};

	google.maps.Marker.prototype._setMap = google.maps.Marker.prototype.setMap;

	google.maps.Marker.prototype.setMap = function (map) {
		if (map) {
			map.markers[map.markers.length] = this;
		}
		this._setMap(map);
	};
	var infoWindow = new google.maps.InfoWindow();
	var pos = {};

	var myMap = new google.maps.Map(document.getElementById("map"));

	if (navigator.geolocation) {
		navigator.geolocation.getCurrentPosition(function (position) {
			pos = {
				lat: position.coords.latitude,
				lng: position.coords.longitude
			};

			var myOptions = {
				center: new google.maps.LatLng(pos.lat || 24.7281755, pos.lng || 46.6434111),
				zoom: 12,
				mapTypeId: google.maps.MapTypeId.ROADMAP

			};
			myMap.setOptions(myOptions);

		}, function () {
			handleLocationError(true, infoWindow, map.getCenter());
			var myOptions = {
				center: new google.maps.LatLng(24.7281755, 46.6434111),
				zoom: 12,
				mapTypeId: google.maps.MapTypeId.ROADMAP
			};
			myMap.setOptions(myOptions);

		});
	} else {
		// Browser doesn't support Geolocation
		handleLocationError(false, infoWindow, map.getCenter());
		var myOptions = {
			center: new google.maps.LatLng(24.7281755, 46.6434111),
			zoom: 12,
			mapTypeId: google.maps.MapTypeId.ROADMAP
		};
		myMap.setOptions(myOptions);
	}
	getBlockedAreas(myMap);

	return myMap;

}
function handleLocationError(browserHasGeolocation, infoWindow, pos) {
	infoWindow.setPosition(pos);
	infoWindow.setContent(browserHasGeolocation
		? 'Error: The Geolocation service failed.'
		: 'Error: Your browser doesn\'t support geolocation.');
}

function setMarkers(map, locations) {

	var marker, i;
	var car = "M17.402,0H5.643C2.526,0,0,3.467,0,6.584v34.804c0,3.116,2.526,5.644,5.643,5.644h11.759c3.116,0,5.644-2.527,5.644-5.644 V6.584C23.044,3.467,20.518,0,17.402,0z M22.057,14.188v11.665l-2.729,0.351v-4.806L22.057,14.188z M20.625,10.773 c-1.016,3.9-2.219,8.51-2.219,8.51H4.638l-2.222-8.51C2.417,10.773,11.3,7.755,20.625,10.773z M3.748,21.713v4.492l-2.73-0.349 V14.502L3.748,21.713z M1.018,37.938V27.579l2.73,0.343v8.196L1.018,37.938z M2.575,40.882l2.218-3.336h13.771l2.219,3.336H2.575z M19.328,35.805v-7.872l2.729-0.355v10.048L19.328,35.805z";
	map.clearMarkers();

	for (i = 0; i < locations.length; i++) {

		var modem = locations[i].ModemId;
		var lat = locations[i].Lat;
		var long = locations[i].Long;
		var direction = locations[i].Direction;
		var speed = locations[i].Speed;
		var time = locations[i].ServerTimestamp;

		var latlngset = new google.maps.LatLng(lat, long);

		marker = new google.maps.Marker({
			map: map,
			title: modem,
			position: latlngset
		});

		marker.setIcon({
			//path: google.maps.SymbolPath.car,
			//scale: 5,
			color: "green",
			rotation: parseInt(direction),

			path: car,
			scale: .7
			//strokeColor: 'white',
			//strokeWeight: .10,
			//fillOpacity: 1,
			//fillColor: '#404040',
			//offset: '5%',
			//rotation: parseInt(direction),
			//anchor: new google.maps.Point(10, 25) // orig 10,50 back of car, 10,0 front of car, 10,25 center of car

		});

		map.addMarker(marker);
		marker.setMap(map);

		//var content = "<h5> ModemId: " + modem + '</h5>' + "<h6>Lat: " + lat + ", Long: " + long + "</h6>" +
		//    "<h6>direction: " + direction + ", Speed: " + speed +", Time: " + time + "</h6>";

		var content = "<h5> Name: " + modem + '</h5>' + "<h6>Lat: " + lat + ", Long: " + long + "</h6>" +
			", Speed: " + speed + ", Time: " + time + "</h5>";

		var infowindow = new google.maps.InfoWindow();

		google.maps.event.addListener(marker,
			'click',
			(function (marker, content, infowindow) {
				return function () {
					infowindow.setContent(content);
					infowindow.open(map, marker);
				};
			})(marker, content, infowindow));

	}
	
}
});