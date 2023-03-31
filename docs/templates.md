Templates are partially pre-filled calendar and resource data that make it easier to create new
data in a consistent way. Coucou includes some built-in templates that are used to define the many
creation options under each subcommand.

For example, templates included with the schedule subcommand include:

* Appointment
* Meeting
* Reminder
* Observance

The work tracker subcommand includes:

* Task
* Project
* Milestone

## Saved Templates

You can also define your own templates using the same functionality for creating new data. For any
creation command you can add the `-save-template=<name>` option to save the data as a template. 

Saved templates are essentially 'hidden' from most views, but can be specified as the base template for 
new data via the option `-use-template=<name>`. You can also list and delete saved templates via the
`template` subcommand.
