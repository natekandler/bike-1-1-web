var React = require('react');

module.exports = React.createClass({

  componentDidMount: function(){
    this.initializeMap();
  },

  initializeMap: function() {
    var events = this.props.events;
    console.warn(events);
    var latLng = new google.maps.LatLng(41.930638, -87.713697);
    var mapCanvas = document.getElementById('map-canvas');
    var mapOptions = {
      center: new google.maps.LatLng(41.930619, -87.713654),
      zoom: 12
    }
    var map = new google.maps.Map(mapCanvas, mapOptions);
    var marker = new google.maps.Marker({
        position: latLng,
        map: map,
        title: 'title'
    });
  },

  render: function() {
    return (
      <div>
        <h1>Yo.</h1>
      </div>
    ); 
  }

});
