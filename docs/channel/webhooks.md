# Coucal Channel - Webhooks

Webhooks are an established pattern for publishing content directly to a consuming endpoint of a target application.
With Webhooks the content must be provided in a format compatible with the Webhook endpoint.

## When to use Webhooks

Webhooks channels are suited to direct integration with other applications where guaranteed delivery is required.

✅ Webhooks can provide greater security through trust relationships with source/target endpoints.

## Egress

Publishing content changes via a Webhook channel requires the channel to include a target webhook configuration. This 
includes:

- Webhook content type (e.g. Generic iCalendar, Zapier, IFTT, JIRA, etc.)
- Webhook target host details
- Authentication credentials (if required)

## Ingress

Ingress Webhooks provide support for automated content updates based on events in external tools.

For example, you may use JIRA to manage issues but would like to organize a peer review once a task is completed. You
can use ingress Webhooks to detect when an issue is completed and create or update a review agenda automatically.

Ingress activities define how to respond to different content types for Webhook integrations.  
