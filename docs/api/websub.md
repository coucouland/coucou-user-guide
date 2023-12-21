# Coucal API - Websub

The Websub endpoint provides support for external subscriptions to workspace content as well as callback URLs
for ingesting updates from external topics.

The Websub endpoint does not follow the typical CRUD convention, but includes two primary paths. These paths are
also not authenticated in the typical way, as to allow external access.

## Websub Hub

To subscribe to content updates in a specific workspace the topic URL MUST be provided. See also
[Websub Subscription Request](https://www.w3.org/TR/websub/#subscriber-sends-subscription-request)

    POST https://api.coucal.net/v1/websub/hub             # register a new subscription
    {
        "hub.callback": "https://api.coucal.net/v1/websub/callback/8765-abcd-8392-dgfe",
        "hub.mode": "subscribe",
        "hub.topic": "https://coucou.land/1234",
        "hub.lease_seconds": 360000
    }

## Websub Callback

The Websub callback endpoint is used to handle subscription verification challenges and content updates.

### Websub Verification Challenge

When a challenge is received by the callback endpoint, Coucal will cross-check the topic with active subscriptions
and respond with the challenge value if a matching local subscription is found.

    POST https://api.coucal.net/v1/websub/callback/8765-abcd-8392-dgfe             # verify a new subscription via challenge
    {
        "hub.mode": "subscribe",
        "hub.topic": "https://coucou.land/1234",
        "hub.challenge": "1234566789",
        "hub.lease_seconds": 360000
    }

### Websub Content Distribution Update

When a change is made to remote content the Websub Hub will use the callback endpoint to provide an update. Coucal
will use the `rel=self` Link Header to identify the active subscription and send the content to the appropriate
repository.

    POST https://api.coucal.net/v1/websub/callback/8765-abcd-8392-dgfe             # content update
    BEGIN:VCALENDAR
    ...
    END:VCALENDAR
