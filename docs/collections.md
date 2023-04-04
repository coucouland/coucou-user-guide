Collections provide a way to group together similar calendar and resource data.

## Overview

Each configured Connector contains one or more collections for managing user data. For each collection type
there is a default collection that is used for commands where no collection is specified. The default
collection can be changed via the `set-default` sub-command of the Collection feature.

There are three types of collection available for storing calendar or card-based data, as well 
as attachments.

### Calendar Collections

Calendar-based data includes anything managed via the scheduler, tracker, journal and availability
features. These can all be stored in a calendar collection, along with saved templates for each of these
features.

### Card Collections

Card-based data is managed via the asset and entity functions. This data, including groups and template
can be stored in card collections.

### Attachments

Any binary and other artefacts attached to card or calendar-based data can be stored in this type of
collection. This collection type can be useful for enforcing lifecycle rules and centralized access to
attachments.

## Create a Collection

Each collection is associated with a Connector and is accessed as an extension of the Connector
virtual path. For example, the default collections included by default are found in the local storage
Connector under path `/local`:

    /local/calendars
    /local/cards
    /local/attachments

To add a new collection you can specify a full path for an existing connector:

    coucal collection new /local/team-pheasant -type=schedule

The type indicates what subset of calendar, card or attachment data is supported. Type options include:

* schedule
* tracker
* availability
* journal
* asset
* entity
* attachment


## Set the default Collection

The default collection is used to support commands where no collection is specified. For example, if
we want to perform many operations on a collection we can simplify this using the default collection:

    coucal collection default /local/team-pheasant # set as default for supported collection types
    coucal schedule meeting <..> # will be created in collection /local/team-pheasant if no collection is specified
