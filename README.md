compose-postgrest
=================

[Postgres](https://www.postgresql.org/), [PostgREST](https://github.com/begriffs/postgrest), and [Swagger UI](https://github.com/swagger-api/swagger-ui) conveniently wrapped up with docker-compose.

Place SQL into the `initdb` folder, get REST! 
Includes [world sample database](https://www.postgresql.org/ftp/projects/pgFoundry/dbsamples/world/).

Contains a simple front-end  demo application.

Architecture
------------

![Deployment Diagram](diagrams/deployment-diagram.png)

Usage
-----

**Start the containers**

`docker-compose up -d`

**Tearing down the containers**

`docker-compose down --remove-orphans -v`

**Demo Application**

Located at [http://localhost](http://localhost)

**Postgrest**

Located at [http://localhost:8000](http://localhost:8000)

Try things like:
* [http://localhost:8000/houses](http://localhost:8000/houses)
* [http://localhost:8000/houses?city=eq.Kabul](http://localhost:8000/city?name=eq.Kabul)
* [http://localhost:8000/houses?district=like.Kab*`](http://localhost:8000/houses?city=like.Kab*)
* [http://localhost:8000/houses?select=id,city](http://localhost:8000/houses?select=id,city)

**Swagger UI**

Located at [http://localhost:8080](http://localhost:8080)
