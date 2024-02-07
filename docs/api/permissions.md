# Coucal API - Permissions

Permissions are used to restrict API access based on role membership for authenticated users.

## List Permissions

```json
GET https://api.coucal.net/v1/permissions               # list all permissions (global)
[
  {
    "name": "List Workspaces",
    "uri": "urn:coucal:link:permission:list_workspaces"
  },
  ...
]

```

When creating or modifying workspace roles, permisions from this list may be used.
