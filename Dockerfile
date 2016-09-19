FROM stilliard/pure-ftpd:latest
MAINTAINER Marcus Geiger <marcus.geiger@spqr-info.de>
ENV PUBLICHOST=localhost
EXPOSE 21 30000-30009
VOLUME /home
RUN ( echo tiger; echo tiger ) | pure-pw useradd DOMAIN\\scott -u ftpuser -d /home/ftpusers/scott \
    && ( echo manager; echo manager ) | pure-pw useradd system -u ftpuser -d /home/ftpusers/system \
    && pure-pw mkdb

CMD /usr/sbin/pure-ftpd -c 500 -C 50 -l puredb:/etc/pure-ftpd/pureftpd.pdb -E -j -R -P $PUBLICHOST -p 30000:30009