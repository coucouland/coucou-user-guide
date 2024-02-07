# Coucal API - Roles

Workspace roles associate users with permissions. Initially, a single role is created that provides full access to administer a workspace.
The creator of the workspace will be the sole member of this role.

## List roles/role details

```json
GET https://api.coucal.net/v1/roles               # if a workspace exists and is selected via cookie
[
  {
    "uid": "1234-abcd-8765-edaf",
    "fn": "Owners"
  }
]

GET https://api.coucal.net/v1/repositories/1234-abcd-8765-edaf             # get details of repository with id=1
{
  "uid": "1234-abcd-8765-edaf",
  "fn": "Workspace Owners",
  "member": "creator@example.com",
  "role": "urn:coucal:link:permission:workspace_modify",
  "role": "urn:coucal:link:permission:workspace_delete",
  "role": "urn:coucal:link:permission:role_create",
  "role": "urn:coucal:link:permission:role_modify",
  "role": "urn:coucal:link:permission:role_delete",
  "role": "urn:coucal:link:permission:repository_create",
  "role": "urn:coucal:link:permission:repository_modify",
  "role": "urn:coucal:link:permission:repository_delete",
  "role": "urn:coucal:link:permission:channel_create",
  "role": "urn:coucal:link:permission:channel_modify",
  "role": "urn:coucal:link:permission:channel_delete",
  "role": "urn:coucal:link:permission:subscription_create",
  "role": "urn:coucal:link:permission:subscription_modify",
  "role": "urn:coucal:link:permission:subscription_delete",
  "role": "urn:coucal:link:permission:filter_create",
  "role": "urn:coucal:link:permission:filter_modify",
  "role": "urn:coucal:link:permission:filter_delete"
}

```

If a workspace is not selected, or does not exist a `HTTP 404` status is returned.
