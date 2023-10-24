# Postgres Docker Setup Remote (2. sem efterår 2023)


## Requirements

- Droplet with Ubuntu
- [Docker](https://docs.docker.com/get-docker/) Docker installed

## Features

- [PostgreSQL](https://www.postgresql.org/) for database
- [Docker](https://www.docker.com/) for containerization
- [Docker Compose](https://docs.docker.com/compose/) for container orchestration

## Setup

### 1. Find på et godt Postgres password i docker-compose.yml filen:

```bash
POSTGRES_USER: postgres
POSTGRES_PASSWORD: <dit_sikre_password> 
```

### 2. Kør Docker

```bash
  docker-compose up -d
```

### 3. Tilføj den nye remote Postgres server i PgAdmin (på din lokale maskine)

- Host name/address: <dit IP nummer på Dropletten>
- Port: 5432
- password: <dit_password> (se docker-compose.yml på din Droplet)

### Hvis du ønsker at stoppe Docker

```bash
  docker-compose down
```

### Nulstilling af Postgres (fjerner alle databaserne)

(-v) // remove volumes
```bash
 docker-compose down -v 
```

```bash
 sudo  rm -rf ./data
```
