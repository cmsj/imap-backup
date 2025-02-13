# imap-backup

Docker container for [imap-backup](https://github.com/joeyates/imap-backup). By default the configurations and backups will be stored in the `/root/.imap-backup` directory and so this should be persisted [using volumes](https://docs.docker.com/engine/admin/volumes/volumes/).

This repo is forked from flungo's version, which hasn't been updated since 2017. The changes are that I have simplified the entrypoint.sh to remove the debug mode and ability to run other commands, but more importantly, the container image is automatically updated by GitHub Workflows any time there is a new release of imap-backup to RubyGems, any time any of its dependencies are updated, or any time the base Ruby (Alpine) image is updated.

## Usage

This section will outline basic usage of the container, assuming that `/srv/imap-backup` will be used on the host for persistence.

### Setup

The setup utility can be run using:

```shell
docker run --rm -it -v /srv/imap-backup:/root/.imap-backup ghcr.io/cmsj/imap-backup:latest setup
```

### Backup

To run a backup (assuming setup has been completed), the following command can be used:

```shell
docker run --rm -v /srv/imap-backup:/root/.imap-backup ghcr.io/cmsj/imap-backup:latest
```
