# Coucal API - Channels

Channels define how Repository content is published and ingested. Apart from the standard Repository content API,
content may be shared via other integrations such as Email and other productivity platforms.

#### Creation

    POST https://api.coucal.net/v1/channels             # create a new channel
    {
        "name": "SMTP Channel",
        "type": "smtp",
        "host": "smtp.example.com",
        "port": 587
    }

#### Retrieval

    GET https://api.coucal.net/v1/channels             # list all channels


#### Update

TBD.

#### Deletion

TBD.
