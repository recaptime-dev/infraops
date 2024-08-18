# DNS records, managed by OctoDNS

> [!note]
> **Came here for managing your project subdomain's DNS records on `lorebooks.wiki`?**
> You might prefer to [file a issue on the meta issue tracker](https://lorebooks.wiki/docs/issue-tracker) instead unless you know about using octodns.

For the main configuration itself, see the [`../octodns-config.yml` file](../octodns-config.yml).

## Cookbooks for squad members

* Export DNS records into YAML: `pipenv run dns-export` (may lose YAML comments)
* Load secrets into a fresh session `dotenvx run -f .env.ci -- pipenv shell`
* Dry run: `dotenvx run -f .env.ci -- pipenv run dns-dryrun`
* Apply: `dotenvx run -f .env.ci -- pipenv run dns-apply`