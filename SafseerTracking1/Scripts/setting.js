$(document).ready(function () {
	var drawingManager;
	var selectedShape;
	var blockedAreas = [];

	function clearSelection() {
		if (selectedShape) {
			selectedShape.setEditable(false);
			selectedShape = null;
		}
	}

	function setSelection(shape) {
		clearSelection();
		selectedShape = shape;
		shape.setEditable(true);
	}

	function deleteSelectedShape() {
		if (selectedShape) {
			for (var i = 0; i < blockedAreas.length; i++) {
				if (blockedAreas[i].Name === selectedShape.name) {
					blockedAreas.splice(i, 1);
				}
			}
			selectedShape.setMap(null);
		}
	}

	function uniqueId() {
		return (Date.now().toString(36) + Math.random().toString(36).substr(2, 5)).toUpperCase()
	  }

	function initialize() {
		var blockedAreasMap = new google.maps.Map(document.getElementById('blockedAreasMap'), {
			zoom: 7,
			center: new google.maps.LatLng(24.7281755, 46.6434111),
			mapTypeId: google.maps.MapTypeId.ROADMAP,
			disableDefaultUI: true,
			zoomControl: true
		});

		var polyOptions = {
			strokeWeight: 0,
			fillOpacity: 0.45,
			editable: true
		};
		// Creates a drawing manager attached to the map that allows the user to draw
		// markers, lines, and shapes.
		drawingManager = new google.maps.drawing.DrawingManager({
			drawingMode: google.maps.drawing.OverlayType.POLYGON,
			polylineOptions: {
				editable: true
			},
			polygonOptions: polyOptions,
			map: blockedAreasMap
		});

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
				  areaPath.setMap(blockedAreasMap);
				  areaPath.name = element.Name;
				  blockedAreas.push({ Name: element.Name, BlockedAreaCoordinates: coordinates });

				  google.maps.event.addListener(areaPath, 'click', function () {
					setSelection(areaPath);
				});
			});
		})
		.fail( function (data, status) {
			console.log(data);
		});


		google.maps.event.addListener(drawingManager, 'overlaycomplete', function (e) {
			if (e.type != google.maps.drawing.OverlayType.MARKER) {
				// Switch back to non-drawing mode after drawing a shape.
				drawingManager.setDrawingMode(null);
				var shapeName = uniqueId();
				var coordinates = [];
				// Add an event listener that selects the newly-drawn shape when the user
				// mouses down on it.
				var newShape = e.overlay;
				newShape.type = e.type;
				newShape.name = shapeName;

				google.maps.event.addListener(newShape, 'click', function () {
					setSelection(newShape);
				});

				setSelection(newShape);

				var path = newShape.getPath();
				for (var i = 0; i < path.length; i++) {
					coordinates.push({
						Lat: path.getAt(i).lat(),
						Lng: path.getAt(i).lng()
					});
				}

				blockedAreas.push({ Name: shapeName, BlockedAreaCoordinates: coordinates });
			}
			return false;
		});
		$(".alert-success").hide();
		$(".alert-danger").hide();
		function saveBlockedAreas() {
			$.ajax({
				type: 'POST',
				contentType: 'application/json',
				url: 'api/BlockedArea',
				data: JSON.stringify({blockedAreas})
			})
			.done( function (data, status) {
				//do whatever you want with the return data upon successful return
				$(".alert-success").fadeTo(2000, 500).slideUp(500, function(){
					$(".alert-success").slideUp(500);
				});
			})
			.fail( function (data, status) {
				//do whatever you want with the return data upon error
				$(".alert-danger").fadeTo(2000, 500).slideUp(500, function(){
					$(".alert-danger").slideUp(500);
				});
			});
		}


		// Clear the current selection when the drawing mode is changed, or when the
		// map is clicked.
		google.maps.event.addListener(drawingManager, 'drawingmode_changed', clearSelection);
		google.maps.event.addListener(blockedAreasMap, 'click', clearSelection);
		google.maps.event.addDomListener(document.getElementById('delete-button'), 'click', deleteSelectedShape);

		google.maps.event.addDomListener(document.getElementById('save-button'), 'click', saveBlockedAreas);

	}

	initialize();

});