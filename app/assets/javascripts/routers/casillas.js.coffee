class ConteoCiudadano.Routers.Casillas extends Backbone.Router
  routes:
    '' : 'index'
    'casillas/:id' : 'show'

  index: ->
    alert 'home page'

  show: (id) ->
    alert "Casilla #{id}"