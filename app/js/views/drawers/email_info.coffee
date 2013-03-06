def 'hello.views.drawers.EmailInfo', class EmailInfo extends Backbone.Fixins.SuperView

  el: "#email-info-drawer .inner"

  events: ->
    "click .submit" : "deleteEmail"

  initialize: (options) ->
    hello.mixins.drawer(@)

  deleteEmail: =>
    @model.collection.remove(@model)
    @closeDrawer()

