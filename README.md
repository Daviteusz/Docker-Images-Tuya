- Build with: docker build . -t tuya:latest .
- if you want to build new version, you should change this line in your DOCKERFILE as followed:
  - git clone -b master https://github.com/ct-Open-Source/tuya-convert.git && cd /usr/bin/tuya-convert && git checkout [commithash or tag]
  - replace [commithash or tag] with appropriate hash or tag from https://github.com/ct-Open-Source/tuya-convert.git


How to use?

docker-compose for Docker-Images-Tuya with tutorial is here:
https://github.com/Cyber1000/Docker-Services-Tuya
