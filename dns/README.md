# DNS records, managed by OctoDNS

> [!warning]
> **Came here for managing your project subdomain's DNS records on `lorebooks.wiki`?**
> We'll be moving the process to a lorebooks-wiki repository soon! More to come later.

We manage our Cloudflare DNS records as code for all of our domains through
[OctoDNS](https://github.com/octodns/octodns) and manually ran by a human to
ensure nothing go wrong.

For the main configuration itself, see the [`../octodns-config.yml` file](../octodns-config.yml).

## Cookbooks for squad members

For the `.env.keys` file, ask @ajhalili2006 by providing your GPG pubkey ID in order to
decrypt via GPG. Please be reminded that you must notify anyone before you apply
DNS changes.

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
