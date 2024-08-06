#!/bin/bash
echo "****** Apache Tomcat Kurulumu  ****  "

# User Variable
TOMCAT="Apache Tomcat"

# dockerTomcat
dockerTomcat() {
    echo -e "\n###### ${TOMCAT} ######  "
    read -p "Docker Üzerinden Apache Tomcat Kurmak ister misiniz ? e/h " dockerTomcatResult
    if [[ $dockerTomcatResult == "e" || $dockerTomcatResult == "E" ]]; then
        echo -e "Docker Tomcat Kurulumu ..."

        # Geri Sayım
        ./countdown.sh

        # Docker
        docker search tomcat 
        docker pull tomcat:9.0.8-jre8-alpine
        docker images 
        docker run -d --name Apache_tomcat_deployment -p  1111:8080 tomcat:9.0.8-jre8-alpine
        docker container ps 
        docker push 
        #docker container ls -a
        curl localhost:1111

        # Windows Üzerinde devam ediyorsam
        read -p "OS işletim sistemini Seçiniz Windows e/h " osResult
        if [[ $osResult == "e" || $osResult == "E" ]]; then
            echo -e "Windows  ..."
            # Geri Sayım
            ./countdown.sh
            winpty docker container exec -it Apache_tomcat_deployment bash 
            ls -al 
            cd bin 
        else
            echo -e "Ubuntu"
            docker container exec -it my_tomcat1 bash 
        fi
    else
        echo -e "Docker Üzerinden Apache Tomcat Çalıştırılmadı"
    fi
}
dockerTomcat