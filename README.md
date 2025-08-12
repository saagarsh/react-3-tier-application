This is a web application portal, developed with react, to submit students and teachers data.

For development purposes simply run "docker compose up -d" command in working directory it will run all the conatiners and start the application.

To pull the images from dockerhub you will be needing authentication so run ./docker_authentication.sh 

To build images on latest code and to push on ducker hub run bash script "./dockerpush.sh"

For production run docker-compose-imagepull file it will pull the latest images and start the application

The frontend or the webpage of the portal can be accessed on "http://localhost:80"

For observability connect prometheus as datasource to grafana.

prometheus web ui can be accessed on http://localhost:9090

grafana web ui can be accessed on http://localhost:3000
