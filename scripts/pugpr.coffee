# Description:
#   Triggers a 'pug me' when someone asks for a PR review
#
# Dependencies:
#   Availability of http://pugme.herokuapp.com/random
#
# Configuration:
#   None
#
# Commands:
#   None - Just need a string to match 'pull/<number>'

module.exports = (robot) ->
  robot.respond /(.*)pull/i, (msg) ->
    msg.http("http://pugme.herokuapp.com/random")
      .get() (err, res, body) ->
        msg.send JSON.parse(body).pug
