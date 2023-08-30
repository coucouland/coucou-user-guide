## Overview

A Subscription defines the delivery rules for content published via a Channel. Once again to use the email analogy,
Subscriptions are like the contact list, where you may find the address of well-known collaborators. But a Subscription
also includes rules about the content that is published, and how or where to deliver it.

A Subscription SHOULD support the follow features:

* Define one or more recipient addresses for published content.
* Define rules to match published content that will trigger delivery to recipients.

A Subscription cannot be used to arbitrarily add eternal subscribers without their consent. External subscribers
may only be added via an Invitation process flow.

## Invitation

To provide temporary access to subscribe to otherwise private channels, an Invitation may be
sent to one or more recipients. An Invitation allows access to a Channel for designated recipients
until the specified expiry date.

Invitations may also be sent for public Channels, when you want to include external subscrbers.
