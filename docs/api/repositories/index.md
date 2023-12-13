# Coucal API - Repositories

The core feature of the API is support for Repositories for storing mixed content. Each authenticated user can maintain
multiple Repositories and content using standard CRUD operations.


#### Creation

    POST https://api.coucal.net/v1/repositories             # create a new repository
    {
      "name": "Meetings and Stuff"
    }

    POST https://api.coucal.net/v1/repositories/1/metrics  # create a new action in repository with id=1
    {
      "concept": "https://ical4j.org/metric-types/ATTENDANCE",
    }

    POST https://api.coucal.net/v1/repositories/1/records  # create a new action in repository with id=1
    {
      "concept": "https://ical4j.org/record-types/DECISION",
    }



#### Retrieval

    GET https://api.coucal.net/v1/repositories               # list all repositories for the current user

    GET https://api.coucal.net/v1/repositories/1             # get details of repository with id=1


#### Update

TBD.

#### Deletion

TBD.

#### Other

Non-CRUD operations also apply to repositories and content as follows.

    POST https://api.coucal.net/v1/repositories/1/events/2/publish     # publish content to participants via channels
    {
        "channel": "smtp"
    }

    GET https://api.coucal.net/v1/repositories/1/events/export     # export entire event list of a repository

    POST https://api.coucal.net/v1/repositories/1/issues/import     # import issues from a supported data format
