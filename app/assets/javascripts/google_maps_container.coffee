class GoogleMapsContainer
  @map
  @marker
  constructor: (@$mapContainer, @$markerDidDragged={}) ->
    if google?.maps
      @initMap()
    else
      $.getScript("//maps.googleapis.com/maps/api/js?key=#{@$mapContainer.data('api-key')}&libraries=visualization", =>
        @initMap())

  initMap: () ->
    latlng = { lat: @$mapContainer.data('lat'), lng: @$mapContainer.data('lng') }
    markerTitle = @$mapContainer.data('marker-title')
    @map = new google.maps.Map(
      @$mapContainer[0],
      center: latlng,
      scrollwheel: false,
      zoom: 15)

    $(window).resize(->
      @map.setCenter(latlng))

    @marker = new google.maps.Marker(
      map: @map,
      draggable: true,
      position: latlng,
      title: markerTitle)
    @marker.addListener('dragend', @$markerDidDragged)

@App ||= {}
App.GoogleMapsContainer = GoogleMapsContainer