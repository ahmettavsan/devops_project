dotnet sonarscanner begin /k:"kaizen" /d:sonar.host.url="http://localhost:9000"  /d:sonar.token="sqp_3d09a43331f9c45ce3c4988f003974b99b58d26b"
dotnet build
dotnet sonarscanner end /d:sonar.token="sqp_3d09a43331f9c45ce3c4988f003974b99b58d26b"