def 'hello.App', class App

  constructor: ->
    @emails = new hello.collections.Emails(hello.data.Emails())
    @router = new hello.Router(emails: @emails)

  start: ->
    Backbone.history.start()

$ -> hello.App = new hello.App(); hello.App.start()

