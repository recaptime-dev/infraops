# DNS records, managed by OctoDNS

> [!note]
> **Came here for managing your project subdomain's DNS records on `lorebooks.wiki`?**
> You might prefer to [file a issue on the meta issue tracker](https://lorebooks.wiki/docs/issue-tracker) instead
> unless you want to submit your DNS records for your documentation or wiki.

For the main configuration itself, see the [`./octodns-config.yml` file](../octodns-config.yml).

## Cookbooks for squad members

* Export DNS records into YAML: `pipenv run dns-export` (may lose YAML comments)
* Load secrets into a fresh session `dotenvx run -f .env.ci -- pipenv shell`
* Dry run: `dotenvx run -f .env.ci -- pipenv run dns-dryrun`
* Apply: `dotenvx run -f .env.ci -- pipenv run dns-apply`

## Got `octodns.provider.plan.TooMuchChange` error/warning?

> [!warning]
> Before you force apply DNS changes, you must know what you are doing, alongside
> any DNS-related changes you are doing.
>
> In case you need to roll back:
>
> ```bash
> git reset --hard HEAD # or git stash if you need to save stuff
> dotenvx run -f .env.ci -- pipenv run dns-apply --force
> ```

To prevent surprises in production domains, changes above 25% of DNS records will be blocked
from running the `dns-apply` pipenv script without doing a bypass flag.

To bypass it, add `--force` after the apply command above to force apply changes to DNS zone. Be warned that if you force it at the wrong time, things could go wrong.