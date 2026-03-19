# ColdFront Docker Container

A Docker container configuration to build and run the ColdFront application.  
This repository contains a `Dockerfile` and related files used to build the container image that runs ColdFront.

> ⚠️ **Important:** This repository *does not* contain the ColdFront application source code.  
> ColdFront is the original project created and maintained by the University at Buffalo Center for Computational Research (UBCCR) with contributions from developers including Andrew E. Bruno, Dori Sajdak, and others.

---

## About

ColdFront is an open‑source incident response and case management platform.  
This container project packages the official ColdFront app into a Docker container for testing.

For the official installation instructions and documentation, see:
🔗 https://docs.coldfront.dev/en/stable/install/

---

## Build the Container

To build your local Docker image for ColdFront:
first navigate to the `coldfront-docker` folder
then

```
docker build -t my-coldfront .
```

## Run the Container

```
docker run -d -p 8000:8000 my-coldfront
```

## Accessing it:

```
http://localhost:8000
```

## Login Information:

username: admin
password: admin


