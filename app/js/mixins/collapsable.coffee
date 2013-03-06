def 'hello.mixins.collapsable', (view) ->

  hello.mixins.mix view, with:
    toggleCollapse: (element) ->
      element ?= @
      element.find(".collapsable .body").toggle()
      element.find(".collapsable .header .icon").toggleClass("icon-plus-sign icon-minus-sign")
      element.find(".collapsable .header").toggleClass("collapsed")
