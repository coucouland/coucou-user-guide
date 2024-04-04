# Coucal CLI - Data Management

Data management commands use a virtual path to specify the location of the content. The virtual path is defined
as follows:

    /<workspace>/<repository>/{actions|availability|entities|events|issues|metrics|notes|requests}/<component>[/<occurrence>]/{alarms|locations|participants|resources}/<subcomponent>

Any sub-path is also valid for all commands as long as it follows the above hierarchical convention.

Data management commands include:

* List - list content at the specified path
* Move - move content to a destination path
* Read - read content at the specified path
* Write - write content to the specified path
* Delete - delete content at the specified path

## List

The list command is used to list summarized details of the children at a specified path. List is analagous to a `GET` request
via RESTful API for the following paths:

| Description | CLI Path | API Path |
|-------------|----------|----------|
|List workspaces| list / | `GET <endpoint>/workspaces HTTP/1.1` |
|List repositories in workspace `default`| list /default |`GET <endpoint>/ HTTP/1.1` (cookie defines current workspace)|
|List all content in repository `1`| list /default/1 | N/A|
|List actions in repository `1`| list /default/1/actions | `GET <endpoint>/1/actions HTTP/1.1`|
|List availability in repository `1`| list /default/1/availability | `GET <endpoint>/1/availability HTTP/1.1`|
|List entities in repository `1`| list /default/1/entities | `GET <endpoint>/1/entities HTTP/1.1`|
|List events in repository `1`| list /default/1/events | `GET <endpoint>/1/events HTTP/1.1`|
|List issues in repository `1`| list /default/1/issues | `GET <endpoint>/1/issues HTTP/1.1`|
|List metrics in repository `1`| list /default/1/metrics | `GET <endpoint>/1/metrics HTTP/1.1`|
|List notes in repository `1`| list /default/1/notes | `GET <endpoint>/1/notes HTTP/1.1`|
|List requests in repository `1`| list /default/1/requests | `GET <endpoint>/1/requests HTTP/1.1`|
|List all content defined in event `2`| list /default/1/events/2 | N/A|
|List alarms defined in event `2`| list /default/1/events/2/alarms | `GET <endpoint>/1/events/2/alarms HTTP/1.1`|
|List locations defined in event `2`| list /default/1/events/2/locations | `GET <endpoint>/1/events/2/locations HTTP/1.1`|
|List participants defined in event `2`| list /default/1/events/2/participants | `GET <endpoint>/1/events/2/participants HTTP/1.1`|
|List resources defined in event `2`| list /default/1/events/2/resources | `GET <endpoint>/1/events/2/resources HTTP/1.1`|
|List all content defined in event occurrence `20240404`| list /default/1/events/2/20240404 | N/A|
|List alarms defined in event occurrence `20240404`| list /default/1/events/2/20240404/alarms | `GET <endpoint>/1/events/2/20240404/alarms HTTP/1.1`|
|List locations defined in event occurrence `20240404`| list /default/1/events/2/20240404/locations | `GET <endpoint>/1/events/2/20240404/locations HTTP/1.1`|
|List participants defined in event occurrence `20240404`| list /default/1/events/2/20240404/participants | `GET <endpoint>/1/events/2/20240404/participants HTTP/1.1`|
|List resources defined in event occurrence `20240404`| list /default/1/events/2/20240404/resources | `GET <endpoint>/1/events/2/20240404/resources HTTP/1.1`|
|List locations defined in alarm `3`| list /default/1/events/2/alarms/3/locations | `GET <endpoint>/1/events/2/alarms/3/locations HTTP/1.1`|



Examples:

    $ coucal ls /   # list all workspaces

    $ coucal ls /user1   # list all repositories in user1's default workspace

    $ coucal ls /user1/1   # list all content in user1's repository identifed by "1"

    $ coucal ls /user1/1/events   # list only events in user1's repository identifed by "1"

    $ coucal ls /user1/1/events/2   # list subcomponents of event 2 in user1's repository identifed by "1"

    $ coucal ls /user1/1/events/2/participants   # list only participants of event 2 in user1's repository identifed by "1"


## Move

The move command can be used to reorganise repositories and content in a Coucal instance. The move command does not currently have
equivalent functionality defined via the REST API, and is a CLI-only feature.

Examples:

    $ coucal mv /user1/1 /newworkspace  # move a repository identified by "1" to a shared workspace

    $ coucal mv /user1/1/events/2 /newworkspace/2  # move an event identified by "2" to a shared workspace repository


## Read

The read command can be used to export data from Coucal to a variety of formats. Read is analagous to a `GET` request
via RESTful API for the following paths:

| Description | CLI Path | API Path |
|-------------|----------|----------|
|Read `default` workspace details| read /default | `GET <endpoint>/workspaces/default HTTP/1.1` |
|Read repository `1` details| read /default/1 | `GET <endpoint>/1 HTTP/1.1` (cookie defines current workspace)|
|Read all event details in repository `1`| read /default/1/events | N/A|
|Read event `2` details| read /default/1/events/2 | `GET <endpoint>/1/events/2 HTTP/1.1`|
|Read event occurrence `20240404` details| read /default/1/events/2/20240404 | `GET <endpoint>/1/events/2/20240404 HTTP/1.1`|
|Read event alarm `3` details| read /default/1/events/2/alarms/3 | `GET <endpoint>/1/events/2/alarms/3 HTTP/1.1`|

Examples:

    $ coucal read /user1/1/events  # output all events in repository "1" as a single iCalendar object 

    $ coucal read /user1/1/events/2  # output a single event in repository "1" as an iCalendar object


## Write

The write command is used to create and update data. Write is typically analagous to a `POST` request in the REST API, as defined
for the following paths:

| Description | CLI Path | API Path |
|-------------|----------|----------|
|Create a new workspace| `write / <workspace details>` | `POST <endpoint>/workspaces HTTP/1.1` |
|Update existing `default` workspace| `write /default <workspace details>` | `POST <endpoint>/workspaces/default HTTP/1.1` |
|Create a new repository| `write /default <repository details>` | `POST <endpoint>/ HTTP/1.1` (cookie defines current workspace)|
|Update existing repository `1`| `write /default/1 <repository details>` | `POST <endpoint>/1 HTTP/1.1` |
|Create a new event| `write /default/1/events <event details>` | `POST <endpoint>/events HTTP/1.1`|
|Update existing event `2`| `write /default/1/events/2 <event details>` | `POST <endpoint>/1/events/2 HTTP/1.1` |


## Delete

The write command is used to remove data. Delete is analagous to a `DELETE` request in the REST API, as defined
for the following paths:

| Description | CLI Path | API Path |
|-------------|----------|----------|
|Delete a workspace| `delete /default | `DELETE <endpoint>/workspaces/default HTTP/1.1` |
|Delete repository `1`| `delete /default/1` | `DELETE <endpoint>/1 HTTP/1.1` (cookie defines current workspace)|
|Delete event `2`| `delete /default/1/events/2` | `DELETE <endpoint>/1/events/2 HTTP/1.1` |
