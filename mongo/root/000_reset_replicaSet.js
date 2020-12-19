cfg = rs.conf()
cfg.members[0].host="192.168.88.28:27017"
cfg.members[1].host="192.168.88.28:27018"
cfg.members[2].host="192.168.88.28:27019"
rs.reconfig(cfg,{
        "force" : true,
        "maxTimeMS" : 10000
    }
);
// 这里的host可以考虑修改～
// 达到对外暴露的目的