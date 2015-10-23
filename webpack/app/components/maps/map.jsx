var React = require('react');

module.exports = React.createClass({

  componentDidMount: function(){
    this.initializeMap();
  },

  initializeMap: function() {
    var events = this.props.events;
    var mapCanvas = document.getElementById('map-canvas');
    var mapOptions = {
      center: new google.maps.LatLng(41.930619, -87.713654),
      zoom: 12
    }
    var map = new google.maps.Map(mapCanvas, mapOptions);
    
    for(var event in events){
      var latLng = new google.maps.LatLng(events[event].lat, events[event].lon);
      var marker = new google.maps.Marker({
          position: latLng,
          map: map,
          title: events[event].request_text
      });
    }

  },

  render: function() {
    return (
      <div>
        <h1>Yo.</h1>
      </div>
    ); 
  }

});
