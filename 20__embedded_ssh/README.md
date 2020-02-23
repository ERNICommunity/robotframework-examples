# Embedded SSH

This is taken from http://robotframework.org/SSHLibrary/SSHLibrary.html#Example

This is an example running test scripts via SSH as it can be done on embedded systems.
This opens an SSH connection and executes some test scripts.

## Setup

This needs an SSH server to connect to.
If docker is available then a server can be started locally by running the `start-docker.sh`.
Otherwise another server needs to be configured to connect to.

## Variables

This test accepts the following variables

* HOST: The host to connect to (default: localhost)
* PORT: The port to connect to (default: 2222)
* USERNAME: The username to login with (default: user)
* PASSWORD: The password to login with (default: edd2001)