class ItineraryRoadmapContainer
	@map
	constructor: (@$mapContainer, @locations) ->
		if google?.maps
			@initMap()
		else
			$.getScript("//maps.googleapis.com/maps/api/js?key=#{@$mapContainer.data('api-key')}&libraries=visualization", =>
				@initMap())

	initMap: () ->
		events = @$mapContainer.data('events')
		latlng = { lat: +events[0]['lat'], lng: +events[0]['lng'] }
		@map = new google.maps.Map(
			@$mapContainer[0],
			center: latlng,
			scrollwheel: false,
			zoom: 12)

		markers = []
		bounds = new google.maps.LatLngBounds()
		for event in events
			marker = new google.maps.Marker(
				map: @map,
				position: { lat: +event.lat, lng: +event.lng },
				title: event.title)
			markers.push(marker)
			bounds.extend(marker.getPosition())
		@map.fitBounds(bounds)

ready = ->
	if $('body#itinerary-roadmap-container').length
		$mapContainer = $('#itinerary-roadmap-container')
		events = $('#itinerary-roadmap-container').data('events')
		new ItineraryRoadmapContainer($mapContainer, events)


$(document).on("turbolinks:load", ready)