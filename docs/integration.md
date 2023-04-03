Integrations allow Coucal to send calendar and resource updates to data subscribers and attendees.
The integrations build-in to the Coucal application include:

* Email Transport (SMTP/IMAP)
* AWS Cloud-native Tooling (e.g. SQS, SNS, EventBridge, etc.)
* Direct Integration (via HTTP webhooks)

## Email Transport

As with most other calendaring clients, Coucal supports sending and receiving invites and other calendar
updates via email. You will need to provide your email server configuration in order to use email
integration.

## AWS Cloud-native Tooling

Coucal also supports Enterprise Integration Patterns, such as message-based queues and pubsub implementations.
AWS provides various tools in this space, which are available for configuration. These include:

* SQS - a serverless message queue with support for sequential or out of order message processing
* SNS - a serverless notification service with support for email and SMS
* EventBridge - a serverless pubsub implementation

## Direct Integration

You can also directly communicate with other systems via supported webhooks. This allows you to share
the full potential of Coucal by connecting multiple instances over HTTP.

For example, you might develop a custom integration with an in-house scheduling or work tracking tool
that you would like to expose via webhooks. With Coucal you can deploy an agent that is capable of
iCalendar iTIP interoperability to synchronize one or more of your internal systems.
