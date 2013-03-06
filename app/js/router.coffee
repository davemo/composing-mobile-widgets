def 'hello.Router', class Router extends Backbone.Router

  routes:
    "*path" : "emailList"

  constructor: (options) ->
    @emails = options.emails
    @container = $("#view")
    super

  emailList: =>
    @renderPage(hello.views.EmailList, collection: @emails)

  renderPage: (viewClass, options) =>
    @container.empty()
    view = new viewClass(options, el: @container.get(0))
    @container.append(view.render().el)


