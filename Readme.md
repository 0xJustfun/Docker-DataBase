### 1、注释 mongo1中 entrypoint 参数
`
    chmod 400 mongo/etc/mongod-keyfile
    docker-compose -f docker-compose-firsh.yml up --build --remove-orphans -d

    docker-compose exec mongo1 mongo admin -u root -p gRrcYm07lj7Q /root/000_init_replicaSet.js
`


### 2、取消注释，重新启动
`
    docker-compose up --build --remove-orphans -d
`

### 停止运行
`
    docker-compose down --remove-orphans
`



##### 可选
docker-compose exec mongo1 mongo admin -u root -p gRrcYm07lj7Q /root/000_init_replicaSet.js
docker-compose exec mongo1 mongo admin -u root -p password /root/001_init_database.js
docker-compose exec mongo1 mongo admin -u root -p password /root/002_init_user.js

