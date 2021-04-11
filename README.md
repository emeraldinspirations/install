MongoDB

Install
-------

Import the public key used by the package management system.
============================================================

From a terminal, issue the following command to import the MongoDB public GPG
Key from https://www.mongodb.org/static/pgp/server-4.4.asc:

```bash
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
```

The operation should respond with an OK.

However, if you receive an error indicating that gnupg is not installed, you can:

Install gnupg and its required libraries using the following command:
=====================================================================

```bash
sudo apt-get install gnupg
```

Once installed, retry importing the key:

```bash
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
```

Create a list file for MongoDB.
===============================

Create the list file `/etc/apt/sources.list.d/mongodb-org-4.4.list` for your
version of Ubuntu.

**Ubuntu 20.04 (Focal)**
The following instruction is for Ubuntu 20.04 (Focal).

Create the `/etc/apt/sources.list.d/mongodb-org-4.4.list' file for Ubuntu
20.04 (Focal):

```bash
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
```

Reload local package database.
==============================

Issue the following command to reload the local package database:

```bash
sudo apt-get update
```

Install the MongoDB packages.
=============================

You can install either the latest stable version of MongoDB or a specific version of MongoDB.

Install the latest version of MongoDB.

```bash
sudo apt-get install -y mongodb-org
```

> Source: [Install MongoDB Community Edition on Ubuntu — MongoDB Manual](https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/)

Apply Ubuntu Fix
----------------

I reinstalled mongod-org, since my data will still stay safe.

The problem was that my system couldn't find mongod.service when I ran sudo
service mongod status.

Running this fixed it and restored the service:

```bash
sudo systemctl enable mongod
```

Then all I had to do was copy my correct config to `/etc/mongod.conf` and run

```bash
sudo service mongod restart
```

> Source [16.04 - Failed to start mongod.service: Unit mongod.service not found - Ask Ubuntu](https://askubuntu.com/questions/921753/failed-to-start-mongod-service-unit-mongod-service-not-found)
