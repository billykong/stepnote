ready = ->
  @App ||= {}
  $mapContainer = $('#google-map-container')
  if $mapContainer.length
    googleMapsContainer = new App.GoogleMapsContainer($mapContainer, (e) ->
    	googleMapsContainer.map.panTo(e.latLng)

    	$('#event_lat').val(e.latLng.lat)
    	$('#event_lng').val(e.latLng.lng)

    	geocoder = new google.maps.Geocoder
	    geocoder.geocode({'location': e.latLng}, ((results, status) ->
	      if status == 'OK' 
	        if (results[1])
	        	$('#address').val(results[1].formatted_address)
	        else
	        	$('#address').val('No results found')
	      else
	      	$('#address').val('Geocoder failed due to: ' + status)
	    ));
    	)

$(document).on("turbolinks:load", ready)