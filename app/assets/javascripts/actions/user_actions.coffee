alt = require("../alt")

class UserActions
  constructor: ->
    @generateActions "fetchList", "fetchItem", "fetchSuccess", "fetchError"


module.exports = alt.createActions(UserActions)