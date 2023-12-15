# Coucal API - Channels: Chat

Chat applications provide instant messaging capabilities for communicating with collaborators or other applications
(e.g. ChatOps/ChatBots). This channel supports integration with Chat applications to publish and/or consume
compatible content.

## When to use Chat

This channel type is unique in that it can publish content on-demand, via chat requests. For example, you could
enable querying for availability times via chat request in order to determine the best time to schedule a team
meeting.

## Egress

Publishing content changes via a Chat channel requires the channel to include a service configuration. This includes:

- Service endpoint details (e.g. XMPP, Slack, Google, Microsoft, etc.)
- Authentication credentials

## Ingress

Whilst chat is technically always a bidirectional channel, we consider ingress to be when repository content is
updated from a chat request.

Ingress activities define how to respond to different chat requests for specific integrations.  
