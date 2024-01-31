# Coucal Examples - Issue Tracker

An issue tracker is typically used to track any impediments or faults relating to a team or service.

## Overview

To implement an issue tracker with Coucal you could start with the following:

* A workspace including roles for team members, users and administrators
* A repository for managing issues, comments, attachments, etc.
* A chat (e.g. Slack, MS Teams, etc.) channel that creates issues submitted by users
* A chat channel that publishes issue changes to team members and supports issue updates (ChatOps)
* A webmention channel that updates issue relationships (e.g. depends-on, blocked-by, etc.)

Automated issue reporting is also easily implemented via webhooks:

* A webhook (e.g. JIRA, IFTTT, custom, etc.) channel that creates new issues when invoked
* An email channel to publish resolved issues to relevant stakeholders
