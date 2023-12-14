# Coucal API - Repository Content: Events

### Creation


    POST https://api.coucal.net/v1/repositories/1/events  # create a new meeting in repository with id=1
    {
      "concept": "https://ical4j.org/extensions/concept/event/MEETING",
      "dtstart": "20231206T093000",
      "dtend": "20231206T100000",
      "summary": "Coffee break",
      "participants": [
        "joe@example.com",
        "alice@example.com",
        "sandeep@example.com"
      ]
    }

### Retrieval

    GET https://api.coucal.net/v1/repositories/1/events     # list all events in repository with id=1 (summarized)

    GET https://api.coucal.net/v1/repositories/1/events/2   # get event with id=2 from repository with id=1

#### Other

Non-CRUD operations also apply to repositories and content as follows.

    POST https://api.coucal.net/v1/repositories/1/events/2/publish     # publish content to participants via channels
    {
        "channel": "smtp"
    }

    GET https://api.coucal.net/v1/repositories/1/events/export     # export entire event list of a repository
