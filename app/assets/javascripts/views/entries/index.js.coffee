class BackboneApp.Views.EntriesIndex extends Backbone.View

  template: JST['entries/index']

  events:
    'submit #new_entry': 'createEntry'

  initialize: ->
    @collection.on('reset',@render, this)
    @collection.on('add',@appendEntry, this)

  render: ->
    $(@el).html(@template())
    @collection.each(@appendEntry)
    this

  appendEntry: (entry) ->
    view = new BackboneApp.Views.Entry(model: entry)
    $('#entries').append(view.render().el)

  createEntry: (event)->
    event.preventDefault()
    @collection.create name: $('#new_entry_name').val()
    $('#new_entry_name').val('')
