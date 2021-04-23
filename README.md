# slr-registry

This repository contains references to external resources related to slr-kit projects.

Each reference points to a git repository that is expected to contain the necessary information to run the slr-kit tools.
In particular, it should contain a version of the terms classified by one author.

The references are stored in the `sources.list` file.

The format of the file is one URL per line. Lines beginning with a hash character are comments.
They are useful to remind the nature of the link.

The `bash` script `cloneall.sh` uses the content of `sources.list` to clone all the repository within a target directory.
