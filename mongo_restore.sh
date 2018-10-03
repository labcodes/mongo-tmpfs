#!/bin/bash
# Restore from dump
echo "Restoring database"
mongorestore --drop --gzip --db ${MONGO_DATABASE} /home/dump
