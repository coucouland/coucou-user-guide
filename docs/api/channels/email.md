# Coucal API - Channels: Email

An Email channel supports sending and receiving content via Email transports (i.e. SMTP/IMAP/POP).

## Egress

Publishing content changes via an Email channel requires the channel to include an SMTP configuration. This includes:

- SMTP Host/port details
- Authentication credentials (if required)

## Ingress

Consuming content from an Email channel requires an IMAP or POP configuration. This includes:

- IMAP/POP Host/port details
- Authentication credentials

As email is not an authenticated transport (i.e. anyone can send a message to an email address), by default only
messages from Workspace members will be accepted.

You can add additional valid email addresses to the accept whitelist, to include content sent within your
organization, etc.
