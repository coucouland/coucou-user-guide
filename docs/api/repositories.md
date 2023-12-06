# Coucal API - Repositories

The core feature of the API is support for Repositories for storing mixed content. Each authenticated user can maintain
multiple Repositories and content using standard CRUD operations.


#### Creation

    POST https://api.coucal.net/v1/repositories             # create a new repository
    {
      "name": "Meetings and Stuff"
    }

    POST https://api.coucal.net/v1/repositories/1/content  # create a new meeting in repository with id=1
    {
      "template": "meeting",
      "dtstart": "20231206T093000",
      "dtend": "20231206T100000",
      "summary": "Coffee break",
      "participants": [
        "joe@example.com",
        "alice@example.com",
        "sandeep@example.com"
      ]
    }


#### Retrieval

    GET https://api.coucal.net/v1/repositories               # list all repositories for the current user

    GET https://api.coucal.net/v1/repositories/1             # get details of repository with id=1

    GET https://api.coucal.net/v1/repositories/1/content     # list all content in repository with id=1 (summarized)

    GET https://api.coucal.net/v1/repositories/1/content/2   # get content with id=2 from repository with id=1


#### Update

TBD.

#### Deletion

TBD.
