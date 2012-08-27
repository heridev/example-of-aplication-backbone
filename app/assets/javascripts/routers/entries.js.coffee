class BackboneApp.Routers.Entries extends Backbone.Router
  routes:
    '' : 'index'
    'entries/:id': 'show'

  initialize: ->
    @collection = new BackboneApp.Collections.Entries()
    @collection.fetch()

  index: ->
    view = new BackboneApp.Views.EntriesIndex(collection: @collection)
    $('#container').html(view.render().el)

  show:(id) ->
    alert "hello #{id}"
