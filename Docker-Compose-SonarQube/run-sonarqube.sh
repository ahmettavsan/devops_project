docker run --rm -v "$(pwd)":/usr/src/mymaven -w /usr/src/mymaven maven:3.6.3-openjdk-11 mvn clean verify sonar:sonar \
  -Dsonar.projectKey=phonebook \
  -Dsonar.projectName='phonebook' \
  -Dsonar.host.url=http://localhost:9000 \
  -Dsonar.token=sqp_f1dfc09c6bd8a3474565a729ca8607687d08b896
