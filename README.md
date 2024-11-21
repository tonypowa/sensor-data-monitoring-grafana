# Monitor sensor data with Raspberry Pi and Grafana

In this project, we leverage a Python script to simulate sensor data. The data is exposed via an HTTP endpoint, which is then scraped by Prometheus. Prometheus collects these metrics and stores them in its time-series database, where they can be queried. Grafana is used to visualize this data, offering real-time dashboards to track sensor metrics like temperature, and humidity.

For the full step-by-step instructions including hardware and software requirements, Raspberry Pi sensor wiring, code explanation, and overview of the tech stack needed (Python, Prometheus, Docker), see this [blog post](https://grafana.com/blog/2023/10/23/monitor-temperature-and-humidity-with-grafana-and-raspberry-pi/). 

## How to use these files

Here is an overview of the steps that you need to take: 

- Step 1 - Install the requirements:
  - Git
  - Docker
  - Docker compose

- Step 2 - Set up the Grafana stack
- Step 3 - Monitor your data from Grafana

## Step 1 - Install the requirements

### [Git](https://git-scm.com/)

First, update your package list to ensure you get the latest version available.

```
sudo apt update
sudo apt upgrade -y
```

Install Git with a single command:

``` 
sudo apt install -y git
```

To confirm Git is installed correctly, check the version:

``` 
git --version
```

### [Docker](https://docs.docker.com/install/) & [Docker compose](https://docs.docker.com/compose/)

Ensure **Docker** is already installed on your Raspberry Pi. If Docker is not installed, you can follow these instructions to install it:

``` bash
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
```

** Optional: add your user to the docker group (this lets you run Docker without `sudo`):

```
sudo usermod -aG docker $USER
```

Run the following commands to install the latest version of **Docker Compose**:

``` bash
sudo apt install -y libffi-dev libssl-dev
sudo apt install -y python3 python3-pip
sudo pip3 install docker-compose
```

> Note: Docker Compose requires these additional libraries to work properly, and Python 3, which will be used to run Docker Compose.

To confirm that Docker Compose was installed correctly, check the version:

```
docker compose verison
```

## Set up the Grafana stack


