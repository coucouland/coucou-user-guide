# Coucal API - Subscriptions

Subscriptions allow an external party to "watch" content for any changes and be notified accordingly. Specifically,
this functionality allows anyone to track content without being explicitly included in the content participants.

#### Creation

    POST https://api.coucal.net/v1/subscriptions             # create a new subscription
    {
        "name": "Watch 1234",
        "sourceUid": "1234",
        "targetUri": "mailto:phillip@example.com"
    }

#### Retrieval

    GET https://api.coucal.net/v1/subscriptions             # list all subscriptions


#### Update

TBD.

#### Deletion

TBD.
