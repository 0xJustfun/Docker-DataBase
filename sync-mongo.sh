FROM_HOST=34.69.164.238:27017
FROM_DBNAME=spanel_server
FROM_U=root
FROM_P=WI4p82wr0i3cSwn0

TO_HOST=35.220.211.125:27017
TO_DBNAME=spanel_server
TO_U=root
TO_P=gRrcYm07lj7Q

echo "mongodump -h ${FROM_HOST} -d ${FROM_DBNAME} -u ${FROM_U} -p ${FROM_P} --authenticationDatabase=admin -o /data/db"
echo "mongorestore -h ${TO_HOST} -d ${TO_DBNAME} -u ${TO_U} -p ${TO_P} --authenticationDatabase=admin /data/db/${FROM_DBNAME}"


echo "mongodump -h ${FROM_HOST} -d ${FROM_DBNAME} -o /data/db"
echo "mongorestore -h ${TO_HOST} -d ${TO_DBNAME} /data/db/${FROM_DBNAME}"