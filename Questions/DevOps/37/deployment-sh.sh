echo  $(pwd) "deployment işlemi bu dizindeki proje için gerçekleştirilecek"

docker-compose up
echo "proje için image dosyası hazırlanmaya başlıyor"
docker build -t  profile-app-image . 
docker run  -p 8080:8080 --rm  profile-app-image 