window.BackboneApp =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new BackboneApp.Routers.Entries()
    Backbone.history.start()

$(document).ready ->
  BackboneApp.init()
