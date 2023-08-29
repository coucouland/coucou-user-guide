# Introduction

Coucal is a platform for collaborative calendaring and scheduling. Support for calendar events, tasks and
journaling workflows provides a powerful foundation for collaborative applications.

## Overview

Conceptually, Coucal is based on four primary constructs: Workspace, Repository, Channel, and Subscription.

A [**Workspace**](workspace.md) provides a clear delineation of user-generated content. A Workspace may be associated with an individual
user, or a team, and represents a collaborative space for content management.

A [**Repository**](repository.md) is concerned with persistence of user-generated content, and is exclusively associated with a single
Workspace. A Workspace, however, may interact with one or more Repositories.

A [**Channel**](channel.md) supports the flow of content into and out of a Workspace. A Channel must be associated with a single
Workspace, but a Workspace may have more than one Channel.

A [**Subscription**](subscription.md) represents a connection between a Channel and an external subscriber. A subscriber represents a
consumer of content that may exist outside the boundaries of the Coucal platform. Zero or more Subscriptions may
be associated with each Channel.

