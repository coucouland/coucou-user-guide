# Coucal API - Channels: Websub

Websub is a specification that supports publishing content to registered subscribers on the Internet. This channel
supports publishing content via a configured Websub Hub such that subscribers receive the content updates.

## Egress

Publishing content changes via a Websub channel requires the channel to include a Hub configuration. This includes:

- Websub Hub Host details
- Authentication credentials (if required)

## Ingress

Consuming content from a Websub channel requires one or more subscriptions to Hub topics.
