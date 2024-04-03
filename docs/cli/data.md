# Coucal CLI - Data Management

Data management commands use a virtual path to specify the location of the content. The virtual path is defined
as follows:

    /<workspace>/<repository>/<component>/<subcomponent>

Any sub-path is also valid for all commands as long as it follows the above hierarchical convention.

Data management commands include:

* List - list content at the specified path
* Move - move content to a destination path
* Read - read content at the specified path
* Write - write content to the specified path
* Delete - delete content at the specified path

## List

The list command is used to discover repositories and content in a Coucal instance.

Examples:

    $ coucal ls /   # list all workspaces

    $ coucal ls /user1   # list all repositories in user1's default workspace

    $ coucal ls /user1/1   # list all content in user1's repository identifed by "1"

    $ coucal ls /user1/1/events   # list only events in user1's repository identifed by "1"

    $ coucal ls /user1/1/events/2   # list subcomponents of event 2 in user1's repository identifed by "1"

    $ coucal ls /user1/1/events/2/participants   # list only participants of event 2 in user1's repository identifed by "1"


## Move

The move command can be used to reorganise repositories and content in a Coucal instance.

Examples:

    $ coucal mv /user1/1 /newworkspace  # move a repository identified by "1" to a shared workspace

    $ coucal mv /user1/1/events/2 /newworkspace/2  # move an event identified by "2" to a shared workspace repository


## Read

The read command can be used to export data from Coucal to a variety of formats.

Examples:

    $ coucal read /user1/1/events  # output all events in repository "1" as a single iCalendar object 

    $ coucal read /user1/1/events/2  # output a single event in repository "1" as an iCalendar object


## Write

TBD.

## Delete

TBD.
