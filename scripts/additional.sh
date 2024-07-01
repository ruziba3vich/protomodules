wget https://repo1.maven.org/maven2/io/grpc/protoc-gen-grpc-java/1.43.0/protoc-gen-grpc-java-1.43.0-linux-x86_64.exe

mv protoc-gen-grpc-java-1.43.0-linux-x86_64.exe protoc-gen-grpc-java
chmod +x protoc-gen-grpc-java
sudo mv protoc-gen-grpc-java /usr/local/bin/

which protoc-gen-grpc-java

protoc --java_out=genprotos --proto_path=protos protos/users.proto
protoc --grpc-java_out=genprotos --proto_path=protos protos/users.proto
