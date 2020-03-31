#!/bin/sh
set -e

until pgtest -host=$POSTGRES_HOST -database=$POSTGRES_DB -password=$POSTGRES_PASSWORD; do
  >&2 echo "Postgres is unavailable - sleeping"
  sleep 1
done

>&2 echo "Postgres is up - executing command"
exec "$@"
