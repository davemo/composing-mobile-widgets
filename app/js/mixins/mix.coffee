# Got an object? Want to dynamically add more methods to it?
#
# hello.mixins.mix this, with:
#   someNewMethod: -> #thatDoesStuff
#
# And now "this" will have someNewMethod and it will be _.bind'ed to this.
def 'hello.mixins.mix', (target, options) ->
  _(options.with).functions (f) -> _(f).bind(target)
  _(target).extend(options.with)
