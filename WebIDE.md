# Web IDE

## Intro

I'm a long time Vi / Vim user, but always feeling opportunistic about new editors and development environments.

In complicated system software projects, the repository I'm actively working on will be part of a bigger multi-repository development environment. The environment can be provided in the form of virtual machine or container.

In such environment, there are multiple ways to use a native editor, each with its own pros and cons:
* Virtual machine's file system can be mounted on native filesystem, but most editors don't cope well with the performance of the mounted volume.
* Virtual's machine repository can be synced with local one with tools like Rsync, but the correctness of synchronization mechanism can be influenced by git operations.

Web IDE can come in handy for a rapid development in a multi-repository environment with nontrivial setup and build process. It's particularly good for making quick fixes in multiple repositories, addressing code review comments and running tests.

Sharing development environment for pair programming or troubleshooting can be a real time saver.

## Cloud9

Cloud9 is arguably the easiest one to start with.

### Install C9 core (https://github.com/c9/core)

    git clone https://github.com/c9/core.git
    cd core
    scripts/install-sdk.sh

### Launch

    export IP=0.0.0.0
    ~/.c9/node/bin/node server.js -p 8080 -a : -w ~/my_workspace/

### Access

* To access from the hosting laptop, setup port forwarding for port 8080

* If required, unload VM firewall:


    systemctl status firewalld
    systemctl stop firewalld
    systemctl disable firewalld
