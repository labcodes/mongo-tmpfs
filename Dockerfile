FROM mongo:latest

ENV TMPFS_SIZE 1024
ADD mongod.conf /etc/mongod.conf

COPY mongo_restore.sh /docker-entrypoint-initdb.d/

ONBUILD RUN mount -t tmpfs -o size=${TMPFS_SIZE}m tmpfs /data/db

EXPOSE 27017
CMD ["mongod", "--config", "/etc/mongod.conf"]
