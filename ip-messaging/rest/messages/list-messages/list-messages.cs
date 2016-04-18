// Download the twilio-csharp library from twilio.com/docs/csharp/install
using System;
using Twilio;

class Example {
    static void Main (string[] args) {
        // Find your Account Sid and Auth Token at twilio.com/user/account
        string accountSid = "accountSid";
        string authToken = "authToken";
        string credentialSid = "credentialSid";
        string channelSid = "channelSid";

        // List all Messages
        var client = new TwilioIpMessagingClient(accountSid, authToken);
        MessageResult result = client.ListMessages(serviceSid, channelSid);

        Console.WriteLine(result);
    }
}