# Coucal API - Repository Content: Notes

#### Creation

    POST https://api.coucal.net/v1/repositories/1/notes  # create a new note in repository with id=1
    {
        "concept": "https://ical4j.org/extensions/concept/note/NOTE",
        "summary": "Meeting finished early due to not reaching a quorum",
        "related-to": "123456"
    }
