# Docker pureftpd server with default users for testing

This image is intended to be used for testing ftp connections.

To run the ftp daemon:

    docker run --name testftpd -d -p 21:21 -p 30000-30009:30000-30009 bwolf/testftpd

The following users are created by default:
- username=DOMAIN\scott, password=tiger
- username=system, password=manager

EOF