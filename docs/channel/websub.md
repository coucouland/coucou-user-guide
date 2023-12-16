# Coucal Channel - Websub

Websub is a specification that supports publishing content to registered subscribers on the Internet. This channel
supports publishing content via a configured Websub Hub such that subscribers receive the content updates.

## When to use Websub

Websub channels are good for publishing content to an unknown list of subscribers (i.e. subscribers are managed
externally via the Websub Hub). This can be a good option for notifying other applications of changes to content
without a need for guaranteed delivery.

✅ Websub does not rely on polling for ingress and so can be more responsive than email. 

## Egress

Publishing content changes via a Websub channel requires the channel to include a Hub configuration. This includes:

- Websub Hub Host details
- Authentication credentials (if required)

## Ingress

Consuming content from a Websub channel requires one or more subscriptions to Hub topics.

### Supported Content

A Websub channel is used primarily to publish content in one direction. As such the use-case is limited to iTIP method
related to publishing only:

* iCalendar iTIP created externally (e.g. `PUBLISH`, `ADD`, `CANCEL`) - used to
create/update content
