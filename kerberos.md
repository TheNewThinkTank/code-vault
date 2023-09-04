# Kerberos

## Terminology

realms: systems Kerberos can authenticate users onto<br>
principal: unique identity of user or service (within realm)<br>
client: process that accesses service on behalf of user<br>

there can be multiple clients and users within realms

service: resource provided to a client (e.g. file server, application)<br>

KDC: Key Distribution Center. Supplies tickets and generates temporary session keys, allowing a user to securely authenticate to a service. Stores secret symmetric keys for users and services. Has two servers:

- authentication server: confirms that a known user is making an access request, and issues ticket granting tickets.
- ticket granting server: confirms that a user is making an access request to a known service, and issues service tickets.

during the authentication, multiple messages are sent.
Two important types of messages:

- Authenticators (allows mutual authentication between user and service)
- Tickets (contains info such as client id, service id. All encrypted using server's secret key)

## Useful commands

destroys Kerberos tickets<br>
`/usr/bin/kdestroy`

obtains and caches Kerberos ticket-granting ticket<br>
`/usr/bin/kinit`

displays current Kerberos tickets<br>
`/usr/bin/klist`

changes a Kerberos password<br>
`/usr/bin/kpasswd`

manages Kerberos keytab files<br>
`/usr/bin/ktutil`
