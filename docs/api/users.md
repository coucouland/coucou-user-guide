# Coucal API - User Profiles

User profiles capture user preferences and information for sharing with collaborators.

## List Users

```json
GET https://api.coucal.net/v1/users               # list all users (global)
[
  {
    "fn": "Joe Bloggs",
    "uid": "..."
  }
]

GET https://api.coucal.net/v1/users/1             # get details of user with id=1
{
  "fn": "Joe Bloggs",
  "uid": "...",
  "picture": "...",
  "caladruri": "..."
}
```
