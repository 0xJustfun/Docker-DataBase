FROM_HOST=34.92.198.209
FROM_U=root
FROM_P=gRrcYm07lj7Q

TO_HOST=192.168.88.28
TO_U=root
TO_P=gRrcYm07lj7Q


# 不能自动输入密码，会出错
echo "mysqldump -h ${FROM_HOST} -u ${FROM_U} -p --all-databases > /var/lib/mysql/all.sql"
echo "mysql -h ${TO_HOST} -u ${TO_U} -p < /var/lib/mysql/all.sql"
