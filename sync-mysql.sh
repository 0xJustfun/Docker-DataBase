FROM_HOST=172.104.184.185
FROM_PORT=3306
FROM_DBNAME=wx_member
FROM_U=root
FROM_P=gRrcYm07lj7Q

TO_HOST=178.128.91.48
TO_PORT=3306
TO_DBNAME=wx_member
TO_U=root
TO_P=gRrcYm07lj7Q


echo "\n导出数据库:"
echo "mysqldump -h${FROM_HOST} -P${FROM_PORT} -u${FROM_U} -p${FROM_P} ${FROM_DBNAME} > ${FROM_DBNAME}.sql"

echo "\n还原数据库:"
echo "mysqldump -h${TO_HOST} -P${TO_PORT} -u${TO_U} -p${TO_P} ${TO_DBNAME} < ${FROM_DBNAME}.sql"
echo ""