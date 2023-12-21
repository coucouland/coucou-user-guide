# Coucal API - Subscriptions

The subscriptions API is used to managed subscriptions to external content providers.

#### Creation

To create new subscription you MUST include the external content URL as well as the Websub Hub. Note that the
content URL does not need to be resolvable, as it is used as a registered topic in the specified hub.

When a subscription is created, Coucal will call the provided Hub to make a subscription request. The parameters
used for the [Websub subscription](websub.md) are mapped as follows:

* `hub.topic` = topicUrl
* `hub.callback` = `https://api.coucal.net/v1/websub/callback/{workspaceUid}`

The status of the subscription will reflect whether the subscription was successful, is active, etc.

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

    GET https://api.coucal.net/v1/subscriptions/1234        # get subscription details for subscprion with uid = 1234
    {
        "name": "Watch 1234",
        "topicUrl": "https://coucou.land/1234",
        "hub": "https://hub.coucou.land",
        "targetRepo": "abcd-1234-0123-fdge",
        "leaseDuration": 36000,
        "uid": "8765-abcd-8392-dgfe",
        "status": "subscribed"
    }


#### Update

TBD.

#### Deletion

TBD.

#### Other

TBD.
