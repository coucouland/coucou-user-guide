# Coucal API - Chat

The Chat endpoint is a more specific type of webhooks endpoint for chat applications. Coucal can interpret commands
from chat applications and respond via the applicable channel(s).

## Slack

A Slack application can be configured to `POST` events to a callback URL.

    POST https://api.coucal.net/v1/chat/slack/8765-abcd-8392-dgfe  # Slack posts event to callback
    {
        ...
    }

## Microsoft Teams

In Microsoft Teams you can add an Outgoing Webhook to `POST` events to a callback URL.

    POST https://api.coucal.net/v1/chat/msteams/8765-abcd-8392-dgfe  # Micosoft Teams posts event to callback
    {
        ...
    }

