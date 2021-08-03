# Run PostgreSQL with Docker
The simple and contained way to run any version of PostgreSQL

---

## Prerequisites

- Docker
- Make

👉 Scroll down for the detailed instructions how to resolve the prerequisites.

## Run Postgres with Docker

The official PostgreSQL Docker image is:  
https://hub.docker.com/_/postgres

You can quickly run it locally as:

```bash
docker run \
  --rm \
  --name pg \
  -p 5432:5432 \
  -v $(pwd)/.docker-data:/var/lib/postgresql/data \
  -e POSTGRES_PASSWORD=postgres \
  postgres:13.2
```

- `--rm` will automatically remove the containers once you stop it (`Ctrl + c`)
- `--name` will give an explicit name to the container, so that we can play with it
- `-p` will expose the PostgreSQL process on your host's network on the default port
- `-v` sets a persisted data volume for your database
- `-e` sets the password for the default user (`postgres`) on the default database (`postgres`)

👉 The cool thing is that you can play with many different versions of PostgreSQL by changing the tag of the image that you want to run.

## Run PSQL against the running container

You can also use Docker to run the `psql` cli tool.

This example uses the running PostgreSQL container and runs `psql` inside it.

👉 We can easily do that as we set an explicit name `pg` that we can now use to connect to such container.

```bash
docker exec -it pg psql -U postgres postgres
```

Or we can spin up a new container to run `psql` and link it to the running PostgreSQL container, also here we use the container's name as link target:

```bash
docker run \
  --rm \
  -it \
  --link pg:pg \
  postgres:13.2 \
  psql postgresql://postgres:postgres@pg:5432/postgres
```

- `-it` will attach your terminal to the container's shell
- `--link` will create a DNS to the PostgreSQL running container

## Run a SQL query programmatically

Using `psql` from the same container:

```bash
docker exec -it pg psql -U postgres postgres \
  -c 'select now();'
```

Using a dedicated container:

```bash
docker run \
  --rm \
  -it \
  --link pg:pg \
  postgres:13.2 \
  psql postgresql://postgres:postgres@pg:5432/postgres \
  -c 'select now();'
```

## Run an SQL script programmatically

Using `psql` from the same container:

```bash
docker exec -i pg psql -U postgres postgres \
  < example.sql
```

Using a dedicated container:

```bash
docker run \
  --rm \
  -i \
  --link pg:pg \
  postgres:13.2 \
  psql postgresql://postgres:postgres@pg:5432/postgres \
  < example.sql
```