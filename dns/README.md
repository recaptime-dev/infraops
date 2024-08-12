# DNS records, managed by OctoDNS

For the main configuration itself, see the [`octodns-config.yml` file](../octodns-config.yml).

## Cookbooks

* Export DNS records into YAML: `scripts/export-records.sh`
* Load secrets into a fresh session `dotenvx run -f .env.ci -- pipenv shell`
* Dry run: `dotenvx run -f .env.ci -- pipenv run dns-dryrun`
* Apply: `dotenvx run -f .env.ci -- pipenv run dns-apply`