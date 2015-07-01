# Description
#   A hubot script to relay Rackspace Cloud Monitoring notifications
#
# Configuration:
#   None
#
# Commands:
#   None
#
# Author:
#   Ben Speakman <ben@3sq.re>

module.exports = (robot) ->
  robot.router.post '/hubot/rackspace/:room', (req, res) ->
    room = req.params.room
    body = req.body
    robot.messageRoom room, "*#{body.details.state}* _(#{body.entity.label})_\n#{body.check.label}: #{body.details.status}"
    res.send 'OK'
