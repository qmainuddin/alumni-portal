# Alumni Portal

The Alumni Portal is a comprehensive platform designed to manage and engage with the alumni of an institution. The project utilizes a microservices architecture to ensure scalability, maintainability, and ease of deployment.

## Table of Contents

- [Technologies Used](#technologies-used)
- [Microservices Architecture](#microservices-architecture)
- [Setup and Running the Project](#setup-and-running-the-project)
- [Deployment](#deployment)
- [Using Helm](#using-helm)
- [Logging and Monitoring](#logging-and-monitoring)
- [Contributing](#contributing)
- [License](#license)

## Technologies Used

- **Java Spring Boot**: For building the microservices.
- **Spring Cloud**: For service discovery, configuration management, and API gateway.
- **RabbitMQ**: For messaging and communication between services.
- **PostgreSQL**: For the database needs of different services.
- **Docker**: For containerization of services.
- **Kubernetes**: For orchestrating the containers.
- **Elastic Stack (ELK)**: For logging and monitoring.

## Microservices Architecture

### Alumni Authentication Service
- Manages user authentication and authorization.
- Technologies: Spring Security, JWT.

### Alumni API Gateway
- Acts as a single entry point for all client requests.
- Technologies: Spring Cloud Gateway.

### Config Server
- Centralized configuration management.
- Technologies: Spring Cloud Config.

### Discovery Server
- Service registry for dynamic discovery of microservices.
- Technologies: Spring Cloud Netflix Eureka.

### Attendance Service
- Manages alumni attendance records for events.
- Technologies: Spring Boot, PostgreSQL.

### Event Service
- Manages event creation, updates, and deletions.
- Technologies: Spring Boot, PostgreSQL.

### Job Post Service
- Manages job postings for alumni.
- Technologies: Spring Boot, PostgreSQL.

### News Service
- Manages news articles related to the alumni network.
- Technologies: Spring Boot, PostgreSQL.

### Survey Service
- Manages surveys for gathering alumni feedback.
- Technologies: Spring Boot, PostgreSQL.

### Work Experience Service
- Manages work experiences of alumni.
- Technologies: Spring Boot, PostgreSQL.

## Setup and Running the Project

### Prerequisites

- **Docker** and **Docker Compose** installed
- **Java 11** or higher installed
- **PostgreSQL** database running

### Clone the Repository

```sh
git clone https://github.com/qmainuddin/alumni-portal-combined.git
cd alumni-portal-combined



## Configure Environment Variables
Create a .env file in the root directory and configure the following variables:

```bash
  POSTGRES_USER=your_postgres_user
  POSTGRES_PASSWORD=your_postgres_password
  POSTGRES_DB=your_postgres_db
  RABBITMQ_DEFAULT_USER=your_rabbitmq_user
  RABBITMQ_DEFAULT_PASS=your_rabbitmq_password
```

## Build and Run with Docker Compose
```bash
docker-compose up --build
```

## Deployment
### Prerequisites
- Kubernetes cluster
- Kubectl installed and configured
- Helm installed

### Deploying to Kubernetes

#### 1. Build Docker Images
```bash
docker build -t your-docker-repo/alumni-portal-auth-service ./auth-service
docker build -t your-docker-repo/alumni-portal-api-gateway ./api-gateway
# Repeat for other services
```
#### 2. Push Docker Images to a Registry
```bash
docker push your-docker-repo/alumni-portal-auth-service
docker push your-docker-repo/alumni-portal-api-gateway
# Repeat for other services
```

#### 3. Deploy to kubernetes
```bash
kubectl apply -f k8s/
```


## Configure Environment Variables
Create a .env file in the root directory and configure the following variables:

```bash
  POSTGRES_USER=your_postgres_user
  POSTGRES_PASSWORD=your_postgres_password
  POSTGRES_DB=your_postgres_db
  RABBITMQ_DEFAULT_USER=your_rabbitmq_user
  RABBITMQ_DEFAULT_PASS=your_rabbitmq_password
```

## Build and Run with Docker Compose
```bash
docker-compose up --build
```

## Deployment
### Prerequisites
- Kubernetes cluster
- Kubectl installed and configured
- Helm installed

### Deploying to Kubernetes

#### 1. Build Docker Images
```bash
docker build -t your-docker-repo/alumni-portal-auth-service ./auth-service
docker build -t your-docker-repo/alumni-portal-api-gateway ./api-gateway
# Repeat for other services
```
#### 2. Push Docker Images to a Registry
```bash
docker push your-docker-repo/alumni-portal-auth-service
docker push your-docker-repo/alumni-portal-api-gateway
# Repeat for other services
```

#### 3. Deploy to kubernetes
```bash
kubectl apply -f k8s/
```

## Logging and Monitoring
- Elastic Stack (ELK): Integrated for centralized logging and monitoring of the microservices.
- Kibana: For visualizing logs and monitoring application performance.

## License
This project is licensed under the MIT License.
