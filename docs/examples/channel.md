## Enable an email channel

    coucal channel email -smtpHost=smtp.google.com /google

## Publish an event via email

    coucal channel publish -uid=1234-abcd-9876-fffa -recipient=joe.bloggs@example.com /google

## Set the default channel

    coucal channel default /google

## Send an invitation to event attendees

    coucal channel request -uid=1234-abcd-9876-fffa # will use the default channel

## Enable a Slack channel

    coucal channel slack -slackChannel=events /slack/events

## Publish an event via Slack

    coucal channel publish -uid=1234-abcd-9876-fffa /slack/events

## Accept an event invitation

    coucal channel reply -uid=1234-abcd-9876-fffa -partstat=accepted /google

