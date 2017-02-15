ready = ->
  if $('body.events.edit').length || $('body.events.new').length
  	@App ||= {}
  	$mapContainer = $('#google-map-container')
  	$('#reverse_geocode').click ->
  		reverseGeocodeAddress()
  	if google?.maps
        setupMap()
      else
        $.getScript("//maps.googleapis.com/maps/api/js?key=#{$mapContainer.data('api-key')}&libraries=visualization", =>
          setupMap())
    $("#address").on('keyup keypress', (e) ->
  	  keyCode = e.keyCode || e.which;
  	  if keyCode == 13
  	    e.preventDefault();
  	    reverseGeocodeAddress()
  	    return false;
  	)


setupMap = ->
  $mapContainer = $('#google-map-container')
  getAddress({ lat: $mapContainer.data('lat'), lng: $mapContainer.data('lng') })
  if $mapContainer.length
    googleMapsContainer = new App.GoogleMapsContainer($mapContainer, (e) ->
    	googleMapsContainer.map.panTo(e.latLng)
    	$('#event_lat').val(e.latLng.lat)
    	$('#event_lng').val(e.latLng.lng)
    	getAddress(e.latLng)
    	)
    @mapContainer = googleMapsContainer.map

getAddress = (latLng) ->
	geocoder = new google.maps.Geocoder
	geocoder.geocode({'location': latLng}, (results, status) ->
  	if status == 'OK'
      if (results[1])
      	$('#address').val(results[1].formatted_address)
      else
      	$('#address').val('No results found')
    else
    	$('#address').val('Geocoder failed due to: ' + status)
  )

reverseGeocodeAddress = ->
	address = $('#address').val()
	geocoder = new google.maps.Geocoder
	geocoder.geocode({'address': address}, (results, status) ->
	  if status == 'OK'
	    animateMap(results[0].geometry.location)
	  else
	    alert('Geocode was not successful for the following reason: ' + status);
  )

animateMap = (latLng) ->
	@mapContainer.map.panTo(latLng)
	@mapContainer.map.setZoom(14)
	$('#event_lat').val(latLng.lat)
	$('#event_lng').val(latLng.lng)
	@mapContainer.marker.setPosition(latLng)

$(document).on("turbolinks:load", ready)