start=`date`
docker-compose exec postgres12 dropdb -U aldi pace
docker-compose exec postgres12 createdb -U aldi pace
# docker-compose exec postgres12 pg_restore -d pace -U aldi -j10 -O --clean /data/pace.dump
# docker-compose exec postgres12 pg_restore -d pace -U aldi -j10 -O --clean /data/pace.dump
docker-compose exec postgres12 pg_restore --verbose --clean --no-acl --no-owner -U aldi -d pace /data/pace.dump
docker-compose exec postgres12 pg_restore --verbose --clean --no-acl --no-owner -U aldi -d pace /data/pace.dump
end=`date`
echo $start -- $end
