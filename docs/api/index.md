# Coucal API

Coucal offers a REST API to manage data and integrations with external systems.

## Overview

The Coucal API is designed to be simple to use and adapt to your needs. It supports both single user and collaborative
team workspaces for isolating and grouping data sets.

## REST-ful Verbs

The HTTP verbs used to access the Coucal API are as follows:

* POST - create a new resource, or a new version of an existing resource (where versioning is supported)
* PUT - replace an existing resource with a completely different resource
* PATCH - update an existing resource without creating a new version (this is idempotent)
* GET - retrieve an existing resource or list of resources
* DELETE - remove an existing resource

## Getting Started

When you first login to Coucal you will have no existing repositories or workspaces. This can be verified as follows:

```json
GET https://api.coucal.net/v1/ HTTP/1.1

>> RESPONSE <<

HTTP/1.1 200 OK
[]
```

```json
GET https://api.coucal.net/v1/workspaces HTTP/1.1

>> RESPONSE <<

HTTP/1.1 200 OK
[]
```

### Create a repository

You can immediately create a new repository, which will be associated with your default workspace (i.e. user ID):

```json
POST https://api.coucal.net/v1/ HTTP/1.1
{
    "displayName": "My First Repository"
}

>> RESPONSE <<

HTTP/1.1 201 CREATED
1234-abcd-5678-edfb
```

```json
GET https://api.coucal.net/v1/ HTTP/1.1

>> RESPONSE <<

HTTP/1.1 200 OK
[
  {
    "id": "1234-abcd-5678-edfb",
    "displayName": "My First Repository"
  }
]
```

```json
GET https://api.coucal.net/v1/workspaces HTTP/1.1

>> RESPONSE <<

HTTP/1.1 200 OK
[
  "foobar"
]
```

### Add content to a repository

Adding events to a repository can be done incrementally using POST and PATCH HTTP verbs:


```json
POST https://api.coucal.net/v1/1234-abcd-5678-edfb/events HTTP/1.1
{
    "summary": "My First Event",
    "dtstart": "20240126T093000",
    "duration": "PT30M"
}

>> RESPONSE <<

HTTP/1.1 201 CREATED
9876-aaaa-4321-ffff
```

```json
POST https://api.coucal.net/v1/1234-abcd-5678-edfb/events/9876-aaaa-4321-ffff HTTP/1.1
{
    "summary": "My First Recurring Event",
    "rrule": "FREQ=WEEKLY;BYDAY=FR,SA"
}

>> RESPONSE <<

HTTP/1.1 200 OK
9876-aaaa-4321-ffff
```

```json
PATCH https://api.coucal.net/v1/1234-abcd-5678-edfb/events/9876-aaaa-4321-ffff HTTP/1.1
{
    "duration": "PT1H"
}

>> RESPONSE <<

HTTP/1.1 200 OK
9876-aaaa-4321-ffff
```

### Stage a new workspace and create a repository

We call it staging because a workspace is not actually created until the first repository is initialised:

```json
POST https://api.coucal.net/v1/workspaces HTTP/1.1
bazball

>> RESPONSE <<

HTTP/1.1 200 OK
Set-Cookie: workspace=bazball;Version=1
```

```json
GET https://api.coucal.net/v1/workspaces HTTP/1.1

>> RESPONSE <<

HTTP/1.1 200 OK
[
  "foobar",
  "*bazball"
]
```

```json
POST https://api.coucal.net/v1/ HTTP/1.1
{
    "displayName": "My First Repository"
}

>> RESPONSE <<

HTTP/1.1 201 CREATED
9999-abcd-1111-edfb
```

```json
GET https://api.coucal.net/v1/ HTTP/1.1

>> RESPONSE <<

HTTP/1.1 200 OK
[
  {
    "id": "9999-abcd-1111-edfb",
    "displayName": "My First Repository"
  }
]
```

```json
GET https://api.coucal.net/v1/workspaces HTTP/1.1

>> RESPONSE <<

HTTP/1.1 200 OK
[
  "foobar",
  "bazball"
]
```
