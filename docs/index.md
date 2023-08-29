# Introduction

Coucal is a platform for collaborative calendaring and scheduling. Support for calendar events, tasks and
journaling workflows provides a powerful foundation for collaborative applications.

## Overview

Conceptually, Coucal is based on four primary constructs: Workspace, Repository, Channel, and Subscription.

A **Workspace** provides a clear delineation of user-generated content. A Workspace may be associated with an individual
user, or a team, and represents a collaborative space for content management.

A **Repository** is concerned with persistence of user-generated content, and is exclusively associated with a single
Workspace. A Workspace, however, may interact with one or more Repositories.

A **Channel** supports the flow of content into and out of a Workspace. A Channel must be associated with a single
Workspace, but a Workspace may have more than one Channel.

A **Subscription** represents a connection between a Channel and an external subscriber. A subscriber represents a
consumer of content that may exist outside the boundaries of the Coucal platform. Zero or more Subscriptions may
be associated with each Channel.


## Workspace

Each verified user on the Coucal platform is allocated their own Workspace. This is where they can access subscribed
content and create new content. A Workspace is analogous to an email Inbox, where you are able to send and receive
email messages. However, Coucal is not like email in that there is no explicit sender or recipient of content. Rather,
content is published and consumed (via subscriptions).


## Repository

The Repository is an abstraction for the underlying persistence layer. It is intended to be simple enough to support
a wide variety of implementations, from relational to object stores, and everything between. 

A Repository SHOULD support the following features:

* Storage and retrieval of mixed content. This could be events, tasks, entities and/or binary content.
* Collections to group similar/related content. Collections need not support mixed content and may be restricted to a single content type.
* Query support for filtering and searching content. A specific query language is to be defined.


## Channel

A Channel is an asynchronous delivery mechanism used to transport content into and out of a Workspace. To use the email
analogy again, a Channel would be the SMTP/IMAP/POP server used to deliver messages to/from email addresses. However,
as Coucal does not have senders or recipients of content, a Channel is responsible for publishing and consuming (or
subscribing to) content.

A Channel SHOULD support the following features:

* Ability to publish content, along with the context in which it exists. For example, the context would include the Repository collection.
* Deliver content to subscribers asynchronously, or continue to attempt delivery according to configured parameters.
* Support different subscription types to allow delivery based on explicit content subscription and contextual (i.e. collection) subscriptions.
* Ability to consume content published via external sources, such that it may be delivered to appropriate Repository collections based on contextual information.


## Subscription

A Subscription defines the delivery rules for content published via a Channel. Once again to use the email analogy,
Subscriptions are like the contact list, where you may find the address of well-known collaborators. But a Subscription
also includes rules about the content that is published, and how or where to deliver it.

A Subscription SHOULD support the follow features:

* Define one or more recipient addresses for published content.
* Define rules to match published content that will trigger delivery to recipients.



================

Coucal is based on the iCalendar and vCard standards, which provides maximum interoperability with other
tools that support these specifications.

## Collections

Coucal is based on the familiar concept of collections established by the CalDAV and CardDAV specifications.
Collections are used to group similar card and calendar data to support a wide range of use-cases.

Collection visibility is controlled via the following principles:

  * Public collections are visible to everyone
  * Private collections are visible only to:
    * Users with an invitation to the collection
    * Users that are subscribed to the collection
    * Members of a group subscribed to the collection

### Users

User profiles are maintained as a card collection managed via the following endpoints:

  - `GET` /users
  - `POST` /users
  - `GET` /users/{uid}
  - `PUT` /users/{uid}
  - `PATCH` /users/{uid}
  - `DELETE` /users/{uid}

### Email Verifications

TBD.

### Directory

The public directory lists all public collections that are automatically visible to all users. Public
collections do not require an invitation to subscribe to updates.

### Invitations

Invitations provide limited access to private collections in order to subscribe permanently. Only private
collections with an active invitation or subscription are visible to end users.

### Subscriptions

Subscriptions control visibility of collections and access to manage collection contents. Subscriptions
are stored as group cards in a collection with the following endpoints:

  - `GET` /subscriptions
  - `POST` /subscriptions
  - `GET` /subscriptions/{uid}
  - `PUT` /subscriptions/{uid}
  - `PATCH` /subscriptions/{uid}
  - `DELETE` /subscriptions/{uid}

### Collections

The collections API provides management of collections owned by the end user. Users can create new
collections and control the visibility and sharing with other users.

  - `GET` /collections
  - `POST` /collections
  - `GET` /collections/{uuid}
  - `PUT` /collections/{uuid}
  - `PATCH` /collections/{uuid}
  - `DELETE` /collections/{uuid}

### Groups

The groups API allows management of user groups that may be used interchangeably with users. For example,
a group can be used to subscribe to a collection which provides group members the same access as if they
were subscribed individually.


## Command Structure

Coucal presents your calendar and asset data as a virtual filesystem, whereby collections are analogous
to directories and calendar and card data like files. As such, many of the commands are based on filesystem
operations as follows:

  | Command | Abbreviation | Arguments              | Description                                                        |
|---------|--------------|------------------------|--------------------------------------------------------------------|
| List    | ls           | \[<path>]              | List connectors, collections and resources at a specified path     |
| Tree    | -            | \[<path>]              | Show a hierarchical view of connections, collections and resources |
| Copy    | cp           | <src> <dest>           | Copy collections and resources to a different path                 |
| Move    | mv           | <src> <dest>           | Move collections and resources to a different path                 |
| Delete  | rm           | <path>                 | Delete connectors, collections and resources at a specified path   |
| New     | -            | <path>                 | Create connectors, collections and resources at a specified path   |
| Import  | -            | <path> <local file(s)> | Import collections and resources to a specified path               |
| Export  | -            | <path>                 | Export collections and resources locally                           |
| Find    | -            | <filter query>         | Query collections and resources using filter expressions           |



Coucal is a calendaring and scheduling tool with a powerful command line interface. It can be used
to manage your calendars in other tools (e.g. MS Outlook, Google, etc.) and to collaborate directly
with other calendar users.

Coucal includes a tracker for task management, resource and availability management features,
journaling, and powerful template and query tooling for managing your data.
       

# Where's the UI?

Coucal is an API-first command-driven application for managing calendaring and
scheduling information. 

We believe the most powerful tools are those that provide APIs or command line interfaces, allowing
for integration with existing processes and systems. This is where the full potential of interoperability
is realised, and interoperability is the prime directive of Coucal, and the iCalendar standards on which it
is based.
