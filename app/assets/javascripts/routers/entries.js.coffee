class BackboneApp.Routers.Entries extends Backbone.Router
  routes:
    '' : 'index'
    'entries/:id': 'show'

  index: ->
    view = new BackboneApp.Views.EntriesIndex()
    $('#container').html(view.render().el)

  show:(id) ->
    alert "hello #{id}"
