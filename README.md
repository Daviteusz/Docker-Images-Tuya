Clone and Build

- git clone -b development https://github.com/Daviteusz/tuya-docker.git
- cd tuya-docker
- docker build -t tuya:latest .

Configure docker-compose.yml file 

- config to fill in:
  - WLAN=[your wlan-interface]
  - AP=[the access-point you want to create]
  - GATEWAY=[the gateway address-which should be used]
- example-data which could be used
  - WLAN=wlan0
  - AP=vtrust-flash
  - adjust the volume folder, where you want your backups stored

Run the image:

- cd tuya-docker
- docker-compose up -d
- docker-compose exec tuya start
  - tuya-convert now starts within docker

Stop the image:

- ctrl + c 
- docker-compose down
