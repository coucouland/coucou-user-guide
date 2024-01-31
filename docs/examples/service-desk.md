# Coucal Examples - Service Desk

A common need for collaborative teams is to provide an interface for management of service requests.

## Overview

To implement a Service Desk in Coucal you will need the following:

* A team workspace with roles defined for team members, users, administrators, etc.
* A repository for service requests
* An email channel to notify assignees, requestors, etc. of changes to service requests

This configuration will allow users to create requests, and team members to self-assign and resolve. This could
be further enhanced with an approval workflow:

* A repository for approvals
* An email channel for notifying approvers of new approval requests
* A websub channel for publishing changes to requests
* A subscription to the service request websub channel that triggers creation of approval requests
* A webmention channel that updates a service request with a link to the associated approval request

Whilst application logic can manage the required workflow in the UI, the creation and linking of approvals
could be entirely automated via Coucal channels and subscriptions.

Further configuration can support tracking of metrics for reporting:

* A repository for metrics
* A subscription to the service request websub channel that triggers creation of metrics (e.g. time-to-resolve, etc.)
* A webmention channel that updates a service request with a link to the associated metric

You can also avoid the need for an application entirely by integrating Coucal with a Chat tool:

* A chat (e.g. Slack, MS Teams, etc.) channel that creates service requests from users
* A chat channel that publishes request changes to team members and supports request updates
* A chat channel that publishes approvals to team approvers and approval updates
