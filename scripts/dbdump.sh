#!/usr/bin/env bash
set -enx
cd `dirname $0`

cd ..
docker-compose exec db sh -c 'exec mysqldump -h 0.0.0.0 -uuser -p cakeapp' > ./mysql/initdb/dbdump.sql
