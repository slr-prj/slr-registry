# Registry for repositories with projects developed with slr-kit 

## Motivation of this repository

This repository contains references to external resources related to slr-kit projects.

Each reference points to a git repository that is expected to contain the necessary information to run the slr-kit tools.
In particular, the repository should contain a version of the terms classified by one author.

## Sources

The references are stored in the `sources.list` file.

The format of the file is one URL per line.
Lines beginning with a hash character are comments.
Comments are useful to remind the nature of the link.

## Download the resources

The `bash` script `cloneall.sh` uses the content of `sources.list` to clone all the repositories and store them within a target directory.
To clone all the repositories run

    ./cloneall.sh <path>

where `path` is the directory that will contain all the repositories.
The destination path must be outside the current repository.

If you want to download a selected sub-set of repositories, you can edit the `sources.list` file, leaving the desired references only and removing the undesired ones.
