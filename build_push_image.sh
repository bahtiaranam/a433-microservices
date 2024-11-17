# build images item-app:v1
docker build -t item-app:v1 .
# menampilkan list images
docker images
# duplicate images dengan nama/versi baru
docker tag item-app:v1 bahtiar/item-app:v1
# login ke docker hub
docker login
# push images ke docker hub
docker push bahtiar/item-app:v1