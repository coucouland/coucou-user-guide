Integration channels allow Coucal to share calendar and resource updates with subscribers and attendees.

## Overview

Coucal supports sharing invites and updates to calendaring and scheduling data via configured channels.
Each channel may support a subset of integration methods depending on the type of integration.

## Integration Methods

The supported methods of integration include:

* Publish - share calendar data with anyone
* Request - invite specific attendees to join an event, etc.
* Reply - respond to a calendar invitation
* Add - modify published calendar data by adding occurrences
* Cancel - cancel published calendar data
* Refresh - request an update from a calendar publisher
* Counter - propose an alternative time for a calendar invitation
* Decline Counter - decline a proposal for changing a calendar invitation


## Integration Channels

The integrations build-in to the Coucal application include:

* Email Transport (SMTP/IMAP)
* AWS Cloud-native Tooling (e.g. SQS, SNS, EventBridge, etc.)
* Direct Integration (via HTTP webhooks)

### Email Transport

As with most other calendaring clients, Coucal supports sending and receiving invites and other calendar
updates via email. You will need to provide your email server configuration in order to use email
integration.

**Supported Methods:** Email supports all integration methods as it supports addressing individual
attendees.

### AWS Cloud-native Tooling

Coucal also supports Enterprise Integration Patterns, such as message-based queues and pubsub implementations.
AWS provides various tools in this space, which are available for configuration. These include:

* SQS - a serverless message queue with support for sequential or out of order message processing
* SNS - a serverless notification service with support for email and SMS
* EventBridge - a serverless pubsub implementation

**Supported Methods:** As SQS and SNS can support delivering data to addressable attendees, Publish, 
Request, Add, Cancel and Decline Counter MAY be supported. However, Reply, Refresh and Counter would 
likely require a different channel such as email.

Due to EventBridge being a pubsub model only Publish, Add and Cancel are supported.

### Webhooks

You can also directly communicate with other systems via supported webhooks. This allows you to share
the full potential of Coucal by connecting multiple instances over HTTP.

For example, you might develop a custom integration with an in-house scheduling or work tracking tool
that you would like to expose via webhooks. With Coucal you can deploy an agent that is capable of
iCalendar iTIP interoperability to synchronize one or more of your internal systems.

**Supported Methods:** As webhooks MAY support delivering data to addressable attendees, Publish,
Request, Add, Cancel and Decline Counter MAY be supported. However, Reply, Refresh and Counter would
likely require a different channel such as email.
