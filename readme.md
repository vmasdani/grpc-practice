# grpc-practice

gRPC practice for flutter (frontend) and go (backend)

### Flutter

1. Enable protoc globally
```
dart pub global activate protoc_plugin
```

2. add to path
```
export PATH="$PATH:$HOME/.pub-cache/bin"
```

3. Generate
```
protoc --dart_out=grpc:mobile/lib protos/model.proto
```

### Golang

1. Install
```
go install google.golang.org/protobuf/cmd/protoc-gen-go@v1.26
go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.1
```

2. Add go bin to path
```
export PATH=$PATH:~/go/bin
```

3. Generate
```
protoc --go-grpc_out=backend protos/model.proto
```