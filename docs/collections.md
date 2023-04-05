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

    coucal collection new /local/household/cleaning -type=schedule

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

## Domains

Domains are a proposed way of organizing your collections, in order to partition data into separate
contexts. Note that the following domains are suggestions only, and you are encouraged to develop your
own.

### Household

A household domain, relating to household activities, might include the following subdomains:

* Cleaning - routine cleaning of household areas
* Cooking - preparing meals
* Gardening - maintaining outdoor areas
* Maintenance - general repairs and upkeep

Each subdomain could be represented by separate collections for storing assets, reminders, tasks, etc.

* /local/house/cleaning/calendars
* /local/house/cleaning/cards
* /local/house/cleaning/attachments
* ...

You can use these subdomains to start tracking your assets:

    coucal journal tool -summary='Lawn Mower' -attach=@warranty.pdf /local/house/gardening/cards
    Created journal: 1234-abcd-9887

And related reminders:

    coucal schedule reminder -summary='Sharpen lawn mower blades' -use-template=annual-reminder \
        -related=1234-abcd-9887 /local/house/gardening/calendars

### Workplace

A workplace domain (depending on the nature of work), could include subdomains like this:

* Finance - internal budgeting and costing
* Operations - regular support activities
* Projects - funded enhancements/changes to processes or services

Within a team the domain hierarchy could look like this:

* /local/acme/project-one/finance/calendars
* /local/acme/project-one/finance/attachments
* /local/acme/project-one/work/calendars
* /local/acme/bau/finance/calendars
* /local/acme/bau/operations/calendars

You can see how easily domains can be subdivided making it easier to manage the pressures of data overload.
