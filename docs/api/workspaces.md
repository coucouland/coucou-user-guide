# Coucal API - Workspaces

Coucal Workspaces provide isolated collaborative environments for maintaining a collection of content
Repositories. By default, each authenticated user is provided with a default Workspace for Repository management,
and this API allows users to create and maintain additional Workspaces.

#### Creation

    POST https://api.coucal.net/workspaces             # create a new workspace
    {
        "name": "My New Workspace"
    }

