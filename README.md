# backup

Script to simplify my backup process

## Requirements & optional additions
- [rsync](https://rsync.samba.org) or [openrsync](https://www.openrsync.org)
- [restic](https://github.com/restic/restic)
- [bitrot](https://github.com/ambv/bitrot)
- [todo](https://github.com/sqrtiswap/todo) (optional)
- [notmuch](https://notmuchmail.org) (optional)

## Installation
```shell
make
```

## Removal
```shell
make uninstall
```

## Usage & documentation
`backup` expects its input in the form of text files containing one directory or pattern per line:
- `list-backup.txt`: Directories to backup with `rsync(1)` or `openrsync(1)` (depending on what's installed)
- `list-bitrot.txt`: Directories to run bitrot on
- `list-exclude.txt`: Patterns of files/directories to exclude in all backups, e.g. `.DS_Store`, `venv`, etc.
- `list-restic.txt`: Directories to backup with `restic(1)`

The location of the list needs to be specified via `BACKUP_LISTDIR`.

`backup prep` collects installed packages and dumps the `notmuch(1)` database. The target for these collections needs to be specified via `BACKUP_DATADIR`.

```shell
backup help
```
prints a small usage message on the available commands.

For more details one needs to look at the code for now.

## License
[ISC](https://opensource.org/licenses/ISC)
