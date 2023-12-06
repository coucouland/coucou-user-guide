# Coucal API - Filters

Named Filters provide a convenient way to record common filter expressions used for content retrieval.

#### Creation

    POST https://api.coucal.net/filters             # create a new filter
    {
        "name": "Meetings this week",
        "expression": "concept = meeting and dtstart >= startOfWeek() and dtend <= endOfWeek()"
    }

#### Retrieval

    GET https://api.coucal.net/filters             # list all filters


#### Update

TBD.

#### Deletion

TBD.
