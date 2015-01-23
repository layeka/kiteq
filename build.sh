#!/bin/bash

go get -u github.com/golang/protobuf/{proto,protoc-gen-go}
go get github.com/go-sql-driver/mysql

go build go-kite/stat
go build go-kite/binding
go build go-kite/protocol
go build go-kite/store
go build go-kite/handler
go build go-kite/remoting/session
go build go-kite/remoting/server
go build go-kite/client


#########
go install go-kite/stat
go install go-kite/binding
go install go-kite/protocol
go install go-kite/store
go install go-kite/handler
go install go-kite/remoting/session
go install go-kite/remoting/server
go install go-kite/client


##############
echo "------------ compoments  installing is finished!-------------"

PROJ=`pwd | awk -F'/' '{print $(NF)}'`
#VERSION=$1
#go build  -o ./$PROJ-$VERSION $PROJ.go
go build  -o ./$PROJ $PROJ.go

go build kite_benchmark.go






