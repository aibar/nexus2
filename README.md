## Usage
    docker run --restart always -d \
               --name nexus \
               -p 8081:8081 \
               -v /data:/data \
               aibar/nexus2