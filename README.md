# hubot-rackspace-cloud-monitoring

A hubot script to relay [Rackspace Cloud Monitoring](http://www.rackspace.com/en-us/cloud/monitoring) notifications.

This script sets up a Hubot [Http listener](https://github.com/github/hubot/blob/master/docs/scripting.md#http-listener) to handle webhook notifications from Rackspace Monitoring. So your hubot installation endpoint needs to be publicly accessible.

## Installation

Run the following command to install the script:

`npm install hubot-rackspace-monitoring --save`

Then add **hubot-rackspace-monitoring** to your `external-scripts.json`

## Notifications

Create or edit an existing notification plan in the rackspace monitoring console. Then add a new notification with the type set to webhook and set the url to your endpoint `http://my.hubot.com:8088/hubot/rackspace/roomname`

An example payload `example.json` is included so that you can test your integration.