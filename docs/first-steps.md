# Help Documentation

When you first install Coucou a good way to familiarize yourself with the commands is via the help
documentation:

    $ coucou -help

```
Usage: coucou [-hV] [COMMAND]
Coucou! Let's collaborate.
  -h, --help      Show this help message and exit.
  -V, --version   Print version information and exit.
Commands:
  alert         Manage configured alert templates
  assets        Manage asset used as attachments, etc.
  availability  Manage recorded availability data
  entity        Manage entity data
  collection    Workspaces for calendar and card data
  schedule      Manage scheduled event data
  journal       Manage recorded journaling data
  query         Filter queries for retrieving calendar and card data
  connector     Backend support for calendar and card data
  tracker       Task and workflow tracking
  server        Start server for receiving requests
  integration   External integrations for sharing calendar and card data
  insight       Report on stored data using AI
```

Each of the subcommands also provide contextual help documentation:

    $ coucou schedule -help

```
Usage: coucou schedule [-hV] [COMMAND]
Manage scheduled event data
  -h, --help      Show this help message and exit.
  -V, --version   Print version information and exit.
Commands:
  list     List available events
  meeting  Create a new meeting
```

