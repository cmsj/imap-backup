#!/bin/sh

# Pass all incoming arguments to imap-backup
exec /usr/local/bundle/bin/imap-backup "$@"
