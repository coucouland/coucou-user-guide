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

1. Create a new workspace:

       $ coucal workspaces add timetracker <<EOF
       {
           "fn": "Time Tracker for A-Team"
       }
       EOF

2. Create the time tracking roles:

       $ coucal roles add timetracker <<EOF
       {
           "fn": "Time Entry Submitter",
           "role": "coucal:permission:action:create"
       }
       EOF
   
       $ coucal roles add timetracker <<EOF
       {
           "fn": "Time Entry Approver",
           "role": "coucal:permission:action:status:update"
       }
       EOF

3. Create the time tracking repository:

       $ coucal repositories add timetracker <<EOF
       {
           "fn": "Time Tracker repository for A-Team"
       }
       EOF

4. Create approval workflow:

   When a timesheet is submitted, create a new approval action.

       $ coucal workflows add timetracker <<EOF
       {
           "fn": "Create approval for time submission",
           "context": "/timetracker/1",
           "trigger": "coucal:message:action:timesheet:status:submitted",
           "intent": "coucal:intent:action:approval:create"
       }

   When a timesheet approval is completed, update the status on the associated timesheet.

       $ coucal workflows add timetracker <<EOF
       {
           "fn": "Update status for time submission",
           "context": "/timetracker/1",
           "trigger": "coucal:message:action:approval:status:closed",
           "intent": "coucal:intent:action:timesheet:status:update"
       }
       EOF

### 