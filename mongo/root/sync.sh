FROM_HOST=34.92.198.209:27017
FROM_DBNAME=korun
FROM_U=root
FROM_P=gRrcYm07lj7Q

TO_HOST=127.0.0.1:27017
TO_DBNAME=korun
TO_U=root
TO_P=gRrcYm07lj7Q

# # 导出指定数据库
# echo "mongodump -h ${FROM_HOST} -d ${FROM_DBNAME} -u ${FROM_U} -p ${FROM_P} --authenticationDatabase=admin -o /data/db"
# echo "mongorestore -h ${TO_HOST} -d ${TO_DBNAME} -u ${TO_U} -p ${TO_P} --authenticationDatabase=admin /data/db/${FROM_DBNAME}"

# 导出所有数据库
echo "mongodump -h ${FROM_HOST} -u ${FROM_U} -p ${FROM_P} --authenticationDatabase=admin -o /data/db/all"
echo "mongorestore -h ${TO_HOST} -u ${TO_U} -p ${TO_P} --authenticationDatabase=admin /data/db/all"
# 没有密码
# echo "mongodump -h ${FROM_HOST} -d ${FROM_DBNAME} -o /data/db"
# echo "mongorestore -h ${TO_HOST} -d ${TO_DBNAME} /data/db/${FROM_DBNAME}"


# docker-compose exec mongo1 /bin/sh