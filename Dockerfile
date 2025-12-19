FROM alpine:latest
WORKDIR /pb
ADD https://github.com/pocketbase/pocketbase/releases/download/v0.22.14/pocketbase_0.22.14_linux_amd64.zip /pb/pb.zip
RUN unzip pb.zip && chmod +x pocketbase
EXPOSE 8090
CMD ["./pocketbase", "serve", "--http=0.0.0.0:8090"]
