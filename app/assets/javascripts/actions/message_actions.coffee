alt = require("../alt")

urlRoot = ->
  squad = Squadd.App.getCurrentSquad()
  room  = Squadd.App.getCurrentRoom()
  return "/api/squads/#{squad.id}/rooms/#{room.id}"

class MessageActions
  fetch: (postId) ->
    url = urlRoot()
    url += "/posts/#{postId}" if postId?
    url += "/messages"

    return (dispatch) =>
      dispatch()
      return $.getJSON(url)
        .then(@update.bind(@))
        .fail(@fetchError.bind(@))

  update: (messages) -> messages
  fetchError: (response) -> response

module.exports = alt.createActions(MessageActions)