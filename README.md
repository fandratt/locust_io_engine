# LOCUST IO

This automation requires you to install Docker. Kindly install based on your OS:
`https://www.docker.com/products/docker-desktop`

## Build Docker Image

Run in your terminal `build.sh` to create the docker image. Make sure you have stable internet connection as it will download the required dependencies.

## Run Locust

### Traditional Way

> Run Specific Locust File

```sh
locust -f script/file.py --headless --csv reports/locust_report --html reports/locust_report.html -u 2 -t 3 -r 4 --processes 1
```

> Run Locust Specific Tags

```sh
locust -f script/file.py --headless --csv reports/locust_report --html reports/locust_report.html --tags special -u 3 -t 3 -r 4 --processes 1
```

> Run using the Docker Image

```sh
docker run -t --rm -v ${PWD}:/app locust_io_engine locust -f /app/script --headless --csv reports/locust_report --html reports/locust_report.html --tags special -u 2 -t 3 -r 4 --processes 1
```

## Docker Hub

This automation requires you to install Docker. Kindly install based on your OS:
`https://hub.docker.com/repository/docker/fandratt/locust_io_engine`
