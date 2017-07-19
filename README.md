How to Install Node.js
======================

- [How To Install the Distro-Stable Version for Ubuntu](#how-to-install-the-distro-stable-version-for-ubuntu)
- [Fix for error `/usr/bin/env: ‘node’: No such file or directory`](#fix-for-error-usr-bin-env-node-no-such-file-or-directory-)
- [Fix for error `ERR: Your Node.js version is v4.2.6. Please update to the latest Node 6 LTS version (or latest Node).`](#fix-for-error-err-your-node-js-version-is-v4-2-6-please-update-to-the-latest-node-6-lts-version-or-latest-node-)

How To Install the Distro-Stable Version for Ubuntu
---------------------------------------------------
https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-16-04

Ubuntu 16.04 contains a version of Node.js in its default repositories that can be used to easily provide a consistent experience across multiple systems. At the time of writing, the version in the repositories is v4.2.6. This will not be the latest version, but it should be quite stable, and should be sufficient for quick experimentation with the language.

In order to get this version, we just have to use the apt package manager. We should refresh our local package index first, and then install from the repositories:

```sh
sudo apt-get update
sudo apt-get install nodejs
```
If the package in the repositories suits your needs, this is all that you need to do to get set up with Node.js. In most cases, you'll also want to also install npm, which is the Node.js package manager. You can do this by typing:

```sh
sudo apt-get install npm
```
This will allow you to easily install modules and packages to use with Node.js.

Because of a conflict with another package, the executable from the Ubuntu repositories is called nodejs instead of node. Keep this in mind as you are running software.

Next, we'll discuss more flexible and robust methods of installation.

---

Fix for error `/usr/bin/env: ‘node’: No such file or directory`
---------------------------------------------------------------
https://github.com/nodejs/node-v0.x-archive/issues/3911#issuecomment-8956154

I've found this is often a misnaming error, if you install from a package manager you bin may be called nodejs so you just need to symlink it like so
```sh
ln -s /usr/bin/nodejs /usr/bin/node
```

Fix for error `ERR: Your Node.js version is v4.2.6. Please update to the latest Node 6 LTS version (or latest Node).`
--------------------------------------------------------------------------------
https://askubuntu.com/a/786279

The core reason is that the setup script didn't run correctly.  Therefore, thanks to the updated data from the OP which supports this,  the data from the NodeSource repository was never seen by `apt` because it was not properly configured by the script.

The script, therefore, may not have found your distribution, or it may have messed up when configuring the repository, or there may have been a network interruption, or any of a thousand reasons it was disrupted and didn't do its job.

The fact you are seeing version `4.x` getting installed means that the script didn't do its job right, so the script is not necessarily at fault.  This just means we have to potentially do this a harder way.

> I should point out: the script doesn't actually do any installing - all it does is determine the Debian/Ubuntu version you're on, and configure the repository for it to get data from.  The installation part is actually the `sudo apt-get install` step you ran by hand.

------

Rather than rely on the script, we can do what the script is doing the old-school way: by hand, ourselves, set up the repository configuration and install NodeJS.

Here's the manual way of making this work, and it is basically what the script does (except for Step 4, which is to make sure you are getting accurate version data):

 1. **Create a new file: `/etc/apt/sources.list.d/nodesource.list`**

    You'll need to create this file with `sudo`, but when you create the file, put this inside it:

        deb https://deb.nodesource.com/node_6.x xenial main
        deb-src https://deb.nodesource.com/node_6.x xenial main

    Then, save the file.

 2. **Download the GPG Signing Key from Nodesource for the repository**.  Otherwise, you may get `NO_PUBKEY` errors with `apt-get update`:

        curl -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | sudo apt-key add -

 3. **Manually run `sudo apt-get update`**.

    This refreshes the data from the nodesource repo so `apt` knows a newer version exists.

    If you get a `NO_PUBKEY` GPG error, then go back to Step 2

 4. **Check `apt-cache policy nodejs` output.**

    This is not done by the script, but you want to make sure you see an entry that says something like this in the output:

        Version table:
            6.2.1-1nodesource1~xenial1 500
               500 https://deb.nodesource.com/node_6.x xenial/main amd64 Packages
            4.2.6~dfsg-1ubuntu4 500
               500 http://archive.ubuntu.com/ubuntu xenial/universe amd64 Packages

    ***If you do not see entries like this, and only see 4.2.6, start over.  Otherwise, proceed.***

 5. **Install the `nodejs` binary.**  Now that you have confirmed 6.x is available on your system, you can install it: `sudo apt-get install nodejs`

 6. `nodejs --version` should now show `v6.2.1` or similar on output (as long as it starts with `v6.` you're on version 6 then).
