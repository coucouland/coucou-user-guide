# Coucal API - Workspaces

Coucal Workspaces provide isolated collaborative environments for maintaining a collection of content
Repositories, Channels and Subscriptions. By default, each authenticated user is provided with a default Workspace
for content management, and this API allows users to create and maintain additional Workspaces.

#### Creation

    POST https://api.coucal.net/v1/workspaces             # create a new workspace
    {
        "name": "My New Workspace"
    }


#### Retrieval

    GET https://api.coucal.net/v1/workspaces             # list all workspaces


#### Update

TBD.

#### Deletion

TBD.
