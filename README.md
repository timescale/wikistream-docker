# Docker Environment for Wikistream

This is a demo environment for Wikistream, a Python package to stream Wikimedia edits (['wikistream'](https://github.com/timescale/wikistream)).

It includes TimescaleDB, Grafana and Wikistream as three services in a `docker-compose.yml` file.

## Usage

Clone the repository:

```
git clone https://github.com/timescale/wikistream-docker
```

Bring up the services with `docker-compose`:

```
docker-compose up
```

Once everything has started you can visit `http://localhost:3000` to login to Grafana.

The username and password are both `admin`.

If you'd like to connect directly to TimescaleDB use `psql`:

```
psql -U postgres -d wikistream
```

Note that this assumes you aren't running PostgreSQL locally, as the TimescaleDB container
will attempt to use `localhost` with the default port of `5432`.

If you have a local instance of PostgreSQL running you'll need to shut it down and try `docker-compose up` again.

## Contributing

If you discover an interesting query in Grafana please consider sharing your dashboard/panel back to the community.

You can export the entire dashboard as a JSON file from Grafana by clicking "Share dashboard":

![Image of Share Link in Grafana]
(https://user-images.githubusercontent.com/270746/78011390-5fa00580-72f8-11ea-9d9c-5112042f6849.png)

Then select the "Export" tab and click "Save to file":

![Image of Save to File Button in Grafana]
(https://user-images.githubusercontent.com/270746/78011801-efde4a80-72f8-11ea-8ae7-74485e280c43.png)

Replace the entire contents of [`grafana/provisioning/dashboards/wikistream.json`](https://github.com/timescale/wikistream-docker/blob/master/grafana/provisioning/dashboards/wikistream.json)
with your new and improved dashboard and send us a [pull request](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request)!

## Troubleshooting

If you're having issues getting up and running [submit an issue](https://help.github.com/en/github/managing-your-work-on-github/creating-an-issue)
or stop by the [Timescale Slack](https://slack.timescale.com/) and ask around for `@avthar` or `@jonan`. We're always happy to help.

🐯 ❤️ 

## License
MIT

Copyright (c) 2020 Jonan Scheffler ([LICENSE](https://github.com/timescale/wikistream-docker/LICENSE.md))
