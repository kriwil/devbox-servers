docker-compose exec postgres9 dropdb -U aldi pace
docker-compose exec postgres9 createdb -U aldi pace
docker-compose exec postgres9 pg_restore -d pace -U aldi -O --clean /data/db.dump
docker-compose exec postgres9 pg_restore -d pace -U aldi -O --clean /data/db.dump
