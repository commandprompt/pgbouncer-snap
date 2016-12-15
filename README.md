# pgbouncer-snap

This is a collection of snapcraft recipes for PgBouncer that can be used to create PostgreSQL snap packages.

The packages are maintained as a service to the community by Command Prompt, Inc. A PostgreSQL and Linux Professional services company.
You can find Command Prompt on the web at https://commandprompt.com

## Get binaries

If you don't want to build the binaries but instead just want to install the
packages, run this command:

`$ sudo snap install pgbouncer`

## Build

Snapcraft recipes for each PgBouncer version are found in separate branches. To build a specific PgBouncer version simply check out a branch that corresponds to the version you need and run `snapcraft` in a root of that branch checkout.

## Install

To install a local build of a snap package run this command:

`$ sudo snap install --force-dangerous pgbouncer_1.7.2_amd64.snap`

To install from Ubuntu Store simply run:

`$ sudo snap install pgbouncer`

## pgbouncer User

PgBouncer must be run by an unprivileged user, e.g. pgbouncer.

This user has to be created manually.

`$ adduser pgbouncer`

## Running Commands

Note that you may need to run PgBouncer command directly or via a wrapper. By convention all snap package binaries start with a snap package name as prefix. For example, to run pgbouncer binary directly you would run pgbouncer.orig. To run it via a wrapper that initializes an environment and sets up a basic configuration file you would run simply pgbouncer. This is just how snap packages work (see http://snapcraft.io/docs/core/usage, section "Run snaps”).

To get a list of all commands that are available in a package simply run:

`$ ls /snap/pgbouncer/current/*.wrapper

Where command-pgbouncer.wrapper is simply pgbouncer and command-orig.wrapper is pgbouncer.orig.

