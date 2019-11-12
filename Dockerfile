FROM icebrian/moodle36m2:latest

COPY init.sh /usr/local/bin/
RUN chmod u+x /usr/local/bin/init.sh

RUN chown www-data:www-data /moodle -R

EXPOSE 80 443
ENTRYPOINT ["init.sh"]