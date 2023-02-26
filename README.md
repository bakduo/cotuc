Cotuc
===============

# Summary

This's an app for connect service out of box container. It's permit connect external service by tunnel ssh by key and without modify external service protocol or configuration final service. It's permit other posibility for connect service when exist the server in the virtual machine and limit the privileges.

![Use case](img/example.png "Use case")

You can connect:
 * Apache
 * Nginx
 * MySQL
 * Mongo
 * SSH
 * FTP
 * maybe any service by port

# Example

```
source.sh

export PORT_LOCAL=9906
export HOST_DESTINY=service.domain.tld
export PORT_DESTINY=8080
export USER_DESTINY=anyoneuser
export FILE_KEY=/home/proxytunnel/anyoneuser.pem

```