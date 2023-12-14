# Coucal API - Repository Content: Issues

#### Creation

    POST https://api.coucal.net/v1/repositories/1/issues  # create a new action in repository with id=1
    {
      "concept": "https://ical4j.org/issue-types/RISK",
    }

#### Other

Non-CRUD operations also apply to repositories and content as follows.

    POST https://api.coucal.net/v1/repositories/1/issues/import     # import issues from a supported data format
