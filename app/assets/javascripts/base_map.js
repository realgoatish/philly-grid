
var vectorSource = new ol.source.Vector({
  url: 'https://raw.githubusercontent.com/azavea/geo-data/master/Neighborhoods_Philadelphia/Neighborhoods_Philadelphia.geojson',
  format: new ol.format.GeoJSON()
});

var vectorLayer = new ol.layer.Vector({
      source: vectorSource
    });

var map = new ol.Map({
    target: 'map',
    layers: [
        new ol.layer.Tile({
            source: new ol.source.OSM()
        }),
        vectorLayer
    ],
    view: new ol.View({
        center: ol.proj.fromLonLat([-75.166923, 39.955948]),
        zoom: 13
    })
});

var geojsonObject = <%= @response.html_safe %>;
console.log(geojsonObject);
