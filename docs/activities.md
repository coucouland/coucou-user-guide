# Coucal - Activities

Workspace activities are defined behaviours triggered in response to system messages.

## Overview

An activity is defined by the following properties:

* Intent - defines intent of the activity, such as send email, create new content, etc. without specifying how it is achieved.
* Source URI - applicable source of activity for the intent (could be an internal repository or external source)
* Filter - fine-grained filtering of content changes

## Intents

In Coucal intents are used to define actions taken by an activity. These intents map directly to commands that
define the implementation of the action.

So for example, an intent to send email to event participants will map to a command implementation that constructs
an email message, attach the event and send via SMTP.
