# Coucal API - Subscriptions

The subscriptions API is used to managed subscriptions to external content providers.

#### Creation

To create new subscription you MUST include the external content URL as well as the Websub Hub. Note that the
content URL does not need to be resolvable, as it is used as a registered topic in the specified hub.

    POST https://api.coucal.net/v1/subscriptions             # create a new subscription
    {
        "name": "Watch 1234",
        "topicUrl": "https://coucou.land/1234",
        "hub": "https://hub.coucou.land",
        "targetRepo": "abcd-1234-0123-fdge",
        "leaseDuration": 36000
    }

#### Retrieval

    GET https://api.coucal.net/v1/subscriptions             # list all subscriptions


#### Update

TBD.

#### Deletion

TBD.

#### Other

TBD.
