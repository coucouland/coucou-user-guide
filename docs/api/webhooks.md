# Coucal API - Webhooks

The Webhooks endpoint provides support for integrating workspaces with external content producers. Coucal can use
content from supported applications to create and update workspace content.

## IFTT Callback

IFTT can be configured to send updates to Coucal in a recognized format.

    POST https://api.coucal.net/v1/webhooks/iftt/8765-abcd-8392-dgfe  # IFTT posts update to callback
    {
        ...
    }

## Zaper Callback

TBD.

## JIRA Callback

TBD.

