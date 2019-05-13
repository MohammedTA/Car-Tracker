$(document).ready(function () {
	var drawingManager;
	var selectedShape;
	var coordinates = [];

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
			selectedShape.setMap(null);
		}
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


		google.maps.event.addListener(drawingManager, 'overlaycomplete', function (e) {
			if (e.type != google.maps.drawing.OverlayType.MARKER) {
				// Switch back to non-drawing mode after drawing a shape.
				drawingManager.setDrawingMode(null);

				// Add an event listener that selects the newly-drawn shape when the user
				// mouses down on it.
				var newShape = e.overlay;
				newShape.type = e.type;
				google.maps.event.addListener(newShape, 'click', function () {
					setSelection(newShape);
				});
				setSelection(newShape);

				var path = newShape.getPath();
				for (var i = 0 ; i < path.length ; i++) {
					coordinates.push({
						lat: path.getAt(i).lat(),
						lng: path.getAt(i).lng()
					});
				}
				console.log(coordinates);
			}
			return false;
		});


		// Clear the current selection when the drawing mode is changed, or when the
		// map is clicked.
		google.maps.event.addListener(drawingManager, 'drawingmode_changed', clearSelection);
		google.maps.event.addListener(blockedAreasMap, 'click', clearSelection);
		google.maps.event.addDomListener(document.getElementById('delete-button'), 'click', deleteSelectedShape);
	}

	initialize();

});