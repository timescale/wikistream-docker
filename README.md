# Docker Environment for Wikistream

This is a demo environment for Wikistream, a Python package to stream Wikimedia edits (['wikistream'](https://github.com/timescale/wikistream)).

It includes TimescaleDB, Grafana and Wikistream as three services in a `docker-compose.yml` file.

If everything went according to plan you should be able to fire it up like this:

## Usage

Clone the repository:

```
git clone https://github.com/timescale/wikistream-docker
```

Bring up the services with `docker-compose`:
```
docker-compose up
```

Once the services have started you can visit `http://localhost:3000` to login to Grafana.

The username and password are both `admin`.

If you'd like to connect directly to TimescaleDB use `psql`:

```
psql -U postgres -d wikistream
```

Note that this assumes you aren't running PostgreSQL locally, as the TimescaleDB container
will attempt to use `localhost` with the default port of `5432`.

If you have a local instance of PostgreSQL running you'll need to shut it down and try again.

## License
MIT

Copyright (c) 2020 Jonan Scheffler ([LICENSE](https://github.com/timescale/wikistream-docker/LICENSE.md))
