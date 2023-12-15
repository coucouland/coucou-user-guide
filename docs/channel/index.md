A Channel is an asynchronous delivery mechanism used to transport content into and out of a Workspace. To use the email
analogy again, a Channel would be the SMTP/IMAP/POP server used to deliver messages to/from email addresses. However,
as Coucal does not have senders or recipients of content, a Channel is responsible for publishing and consuming (or
subscribing to) content.

A Channel SHOULD support the following features:

* Ability to publish content, along with the context in which it exists. For example, the context would include the Repository collection.
* Deliver content to subscribers asynchronously, or continue to attempt delivery according to configured parameters.
* Support different subscription types to allow delivery based on explicit content subscription and contextual (i.e. collection) subscriptions.
* Ability to consume content published via external sources, such that it may be delivered to appropriate Repository collections based on contextual information.

## Egress

An Egress Channel supports delivery of content updates to Subscribers. A Channel may be configured to deliver content
from multiple Repositories.  

## Ingress

An Ingress Channel supports consuming content updates from external sources.
