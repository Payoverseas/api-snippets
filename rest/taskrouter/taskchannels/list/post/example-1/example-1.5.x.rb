# Get twilio-ruby from twilio.com/docs/ruby/install
require 'twilio-ruby'

# Get your Account SID and Auth Token from twilio.com/console
account_sid = 'ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
auth_token = 'your_auth_token'
workspace_sid = 'WSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'

client = Twilio::REST::Client.new(account_sid, auth_token)

task_channel = client.taskrouter.v1.workspaces(workspace_sid).task_channels
                  .create(friendly_name: "My Channel",
                          unique_name: "my-channel")

puts task_channel.friendly_name
puts task_channel.unique_name
