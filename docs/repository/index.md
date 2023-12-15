The Repository is an abstraction for the underlying persistence layer. It is intended to be simple enough to support
a wide variety of implementations, from relational to object stores, and everything between.

A Repository SHOULD support the following features:

* Storage and retrieval of mixed content. This could be events, tasks, entities and/or binary content.
* Collections to group similar/related content. Collections need not support mixed content and may be restricted to a single content type.
* Query support for filtering and searching content. A specific query language is to be defined.
* Support for content revision management

## Calendar

Calendar content includes events, tasks, journals and availability. A Calendar Repository is used to
manage schedules and workflows.

## Card

A Card Repository is used to maintain entity data such as individual contacts or assets.

## File

A File Repository maintains file storage for arbitrary binary content.
