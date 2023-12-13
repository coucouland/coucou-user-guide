# Coucal API - Repository Content: Entities

#### Creation

    POST https://api.coucal.net/v1/repositories/1/entities  # create a new application in repository with id=1
    {
        "kind": "application",
        "fn": "A Cloud Managed Environment (ACME)",
        "logo": "https://static.example.com/logos/acme.png"
        "categories": "cloud,platform,x-as-a-service",
        "org": "E-Corp;IT;Cloud Platforms",
        "email": "acme-support@example.com",
        "url": "https://www.acme.example.com",
        "caladruri": "mailto:ecorp-acme@teams.coucou.land"
    }
