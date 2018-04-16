# How to create local certificate authority

Node.js, websockets operations may require to have server and client cetificate, signed by Certificate Authority.

In this example, we will create CA of our own and issue certificates for server and client.

ECDSA keys claimed to provide better security, privacy and performance -
especially on mobile.

Create CA private key:
```
openssl ecparam -genkey -name prime256v1 -out ca.key
```

Generate CA root certificate:
```
openssl req -x509 -new -nodes -key ca.key -sha256 -days 1825 -out ca.pem
```

Install CA root certificate in Mac OS keychain:
* Open Keychain Access.
* Import items - pick up ca.pem.
* Find the certificate, double click on it and in Trust section select 'Always trust'.

Generate private key for server certificate:
```
openssl ecparam -genkey -name prime256v1 -out server.key
```

Generate Certificate Signing Request for the server key:
```
openssl req -new -sha256 -key server.key -nodes -out server.csr
```

View the CSR:
```
openssl req -in server.csr -noout -text
```

Sign the server certificate:
```
openssl x509 -req -sha256 -days 1825 -in server.csr -CA ca.pem -CAkey ca.key -CAcreateserial -out server.pem
```

Display the server certificate:
```
openssl x509 -in server.pem -text
```
