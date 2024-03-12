# Coucal Examples - Time Tracker

Tracking time spent by teams is used for funding allocation and justification.

## Overview

Time tracking with Coucal could incorporate the following:

* A workspace with roles for time entry and time approval
* A repository to record timesheets and approval actions

## Implementation

The following steps can be used to configure a time tracker in Coucal using either command line
or API interfaces.

### Configure via the command line

1. Create a new workspace

        $ coucal workspaces add timetracker <<EOF
        {
            "fn": "Time Tracker for A-Team",
            "member": "coucal:user:joe"
            "member": "coucal:user:sally"
            "member": "coucal:user:frank"
        }
        EOF

2. Create the time tracking roles

        $ coucal roles add timetracker <<EOF
        {
            "fn": "Time Entry Submitter",
            "role": "coucal:permission:note:*"
            "role": "coucal:permission:action:read"
            "member": "coucal:user:joe"
            "member": "coucal:user:sally"
        }
        EOF
    
        $ coucal roles add timetracker <<EOF
        {
            "fn": "Time Entry Approver",
            "role": "coucal:permission:action:*"
            "role": "coucal:permission:note:read"
            "member": "coucal:user:frank"
        }
        EOF

3. Create the time tracking repository

        $ coucal repositories add timetracker <<EOF
        {
            "fn": "Time Tracker repository for A-Team"
        }
        EOF

4. Create approval workflows

   Create named filters to be used as workflow triggers:

         $ coucal filters add <<EOF
         {
            "fn": "Timesheet",
            "query": "concept = ical4j:concept:note:timesheet",
            "uid": "coucal:filter:concept:timesheet"
         }
         EOF

         $ coucal filters add <<EOF
         {
            "fn": "Status:Created",
            "query": "status = created",
            "uid": "coucal:filter:status:created"
         }
         EOF

   When a timesheet is submitted, create a new approval action:

        $ coucal workflows add timetracker <<EOF
        {
            "fn": "Create approval for time submission",
            "context": "/timetracker/1",
            "trigger": "coucal:filter:concept:timesheet",
            "trigger": "coucal:filter:status:created",
            "intent": "coucal:intent:approval:create"
        }

   When a timesheet approval is completed, update the status on the associated timesheet:

        $ coucal workflows add timetracker <<EOF
        {
            "fn": "Update status for time submission",
            "context": "/timetracker/1",
            "trigger": "coucal:filter:concept:approval",
            "trigger": "coucal:filter:status:closed",
            "intent": "coucal:intent:timesheet:approve"
        }
        EOF

### 