def 'hello.views.EmailList', class EmailList extends Backbone.Fixins.SuperView

  events:
    "click .header" : "toggle"
    "click .body a" : "showDrawer"

  initialize: ->
    hello.mixins.collapsable(@)
    @drawer = new hello.views.drawers.EmailInfo
    @collection.on("remove", @render)

  toggle: (e) ->
    @toggleCollapse($(e.currentTarget).parents(".email-list"))

  showDrawer: (e) ->
    e.preventDefault?()
    @drawer.model = @collection.get($(e.currentTarget).data('model-id'))
    @drawer.openDrawer()

  templateContext: =>
    inbox = @collection.where({folder: "inbox"})
    trash = @collection.where({folder: "trash"})

    folders:[
      {
        name: "inbox"
        emails: _(inbox).map (email) => email.toJSON()
        count:  inbox.length
      }
      {
        name: "trash"
        emails: _(trash).map (email) => email.toJSON()
        count: trash.length
      }
    ]
