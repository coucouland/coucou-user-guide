# Coucal API - Channels: Webhooks

Webhooks are an established pattern for publishing content directly to a consuming endpoint of a target application.
With Webhooks the content must be provided in a format compatible with the Webhook endpoint.

## Egress

Publishing content changes via a Webhook channel requires the channel to include a target webhook configuration. This 
includes:

- Webhook content type (e.g. Generic iCalendar, Zapier, IFTT, JIRA, etc.)
- Webhook target host details
- Authentication credentials (if required)

## Ingress

TBD.
