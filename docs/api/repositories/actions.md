# Coucal API - Repository Content: Actions

### Creation

    POST https://api.coucal.net/v1/repositories/1/actions  # create a new action in repository with id=1
    {
      "concept": "https://ical4j.org/extensions/concept/action/ACTION",
    }

### Update

    POST https://api.coucal.net/v1/repositories/1/actions/2  # update action status to in-progress
    {
        "link": {
            "linkrel": "status",
            "value": "uri",
            "uri": "https://ical4j.org/extensions/link/status/IN_PROGRESS",
        }
    }
