# Docker pureftpd server with default users for testing

This image is intended to be used for testing ftp connections. Find it a [hub.docker.com](https://hub.docker.com/r/bwolf/testftpd/). It is based on [stilliard/pure-ftpd](https://github.com/stilliard/docker-pure-ftpd).

To run the ftp daemon:

    docker run --name testftpd -d -p 21:21 -p 30000-30009:30000-30009 bwolf/testftpd

The following users are created by default:
- username=DOMAIN\scott, password=tiger
- username=system, password=manager

## Development notes

    docker build --rm -t testftpd:latest .
    docker login ...
    docker tag testftpd:latest bwolf/testftpd:latest
    docker push bwolf/testftpd:latest

EOF