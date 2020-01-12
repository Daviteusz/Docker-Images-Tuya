Clone and Build

- git clone -b development https://github.com/Daviteusz/Docker-Images-Tuya.git
- cd Docker-Images-Tuya
- docker build -t tuya:latest .

Configure .env file 

- fill parameters into .env
- .env itself won't be checked in, since it may contain sensitive data
- config to fill in:
  - WLAN=[your wlan-interface]
  - AP=[the access-point you want to create]
  - GATEWAY=[the gateway address-which should be used]
- example-data which could be used
  - WLAN=wlan0
  - AP=vtrust-flash
  - GATEWAY=10.42.42.1
- adjust docker-compose.yml , if necessary:
  - adjust the volume folder, where you want your backups stored

Run the image:

- cd Docker-Images-Tuya
- docker-compose up -d
- docker-compose exec tuya start
  - tuya-convert now starts within docker

Stop the image:

- push ctrl + c 
- docker-compose down
