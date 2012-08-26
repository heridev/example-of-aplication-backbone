window.BackboneApp =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: -> alert 'Hello from Backbone!'

$(document).ready ->
  BackboneApp.init()
