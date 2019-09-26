start=`date`
docker-compose exec postgres9 dropdb -U aldi pace
docker-compose exec postgres9 createdb -U aldi pace
docker-compose exec postgres9 pg_restore -d pace -U aldi -j6 -O --clean /data/pace.dump
docker-compose exec postgres9 pg_restore -d pace -U aldi -j6 -O --clean /data/pace.dump
end=`date`
echo $start -- $end
