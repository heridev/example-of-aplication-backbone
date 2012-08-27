class BackboneApp.Routers.Entries extends Backbone.Router
  routes:
    '' : 'index'
    'entries/:id': 'show'

  index: ->
    alert 'hello to home page'

  show:(id) ->
    alert 'hello #{id}'
