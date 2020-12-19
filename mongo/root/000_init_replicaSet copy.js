rs.initiate(
    {
        _id: "rs0",
        members: [
            {_id: 0, host: "107.174.206.37:27017"},
            {_id: 1, host: "107.174.206.37:27017"},
            {_id: 2, host: "107.174.206.37:27017", arbiterOnly: true}
        ]
    }
);
// 这里的host可以考虑修改～
// 达到对外暴露的目的