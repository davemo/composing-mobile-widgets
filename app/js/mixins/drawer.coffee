def 'hello.mixins.drawer', (target) ->
  hello.mixins.mix target, with:
    openDrawer: ->
      target.render()
      $(target.el).parent().addClass("open")
      $('#ui-blocking-layer').show()

    closeDrawer: ->
      $(target.el).parent().removeClass("open")
      $(target.el).empty()
      $('#ui-blocking-layer').hide()

  events =
    "click .close-drawer" : "closeDrawer"
    "click .cancel"       : "closeDrawer"

  target.events = _.extend(events, target.events?())


