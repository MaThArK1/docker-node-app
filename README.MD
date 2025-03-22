# Docker Compose Node.js Ambient

This project sets up a development environment for a Node.js application using Docker Compose.

## Features

- Node.js runtime environment
- Docker Compose for container orchestration with a mongoDB container
- Easy setup and teardown of the development environment

## Prerequisites

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Getting Started

1. Clone the repository:
    ```bash
    git clone https://github.com/MaThArK1/docker-node-app.git
    cd docker-node-app.git
    ```

2. Start the containers:
    ```bash
    docker-compose up
    ```

3. Access the application:
    - The application will be running at `http://localhost:3001` (or the port specified in the `docker-compose.yml` file).

4. Stop the containers:
    ```bash
    docker-compose down
    ```

## Project Structure

```
.
├── docker-compose.yml   # Docker Compose configuration
├── Dockerfile           # Node.js application Dockerfile
├── index.js             # Application source code
└── README.md            # Project documentation
```