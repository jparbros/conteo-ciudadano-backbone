window.ConteoCiudadano =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new ConteoCiudadano.Routers.Casillas()
    Backbone.history.start()

$(document).ready ->
  ConteoCiudadano.init()
