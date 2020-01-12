Clone and Build

- git clone -b development https://github.com/Daviteusz/Docker-Images-Tuya.git
- cd Docker-Images-Tuya
- docker build -t tuya:latest .

Configure

- cd Docker-Images-Tuya
- Copy .env-template to .env and fill in parameters into .env
- .env itself won't be checked in, since it may contain sensitive data
- config to fill in:
  - WLAN=[your wlan-interface]
  - AP=[the access-point you want to create]
  - GATEWAY=[the gateway address-which should be used]
- example-data which could be used
  - WLAN=wlan0
  - AP=vtrust-flash
  - GATEWAY=10.42.42.1
  
Setup docker-compose:

- adjust docker-compose.yml, if necessary:
  - environment-variables may be different, for example network-adapter may be different from wlan0
  - adjust the volume folder, where you want your backups stored

Run the image:

- cd Docker-Images-Tuya
- docker-compose up -d
- docker-compose exec tuya start
  - tuya-convert now starts within docker

Stop the image:

- push ctrl + c 
- docker-compose down
