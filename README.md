# InfraOps at RecapTime.dev

This is the monorepo for all the cookbooks and infrastructure related content
and code at RecapTime.dev's Infrastructure and Platform Engineering teams. This
also serves as single source of truth for infrastructure tooling and IaaC related
code we use in production and as a single place for all the infrastructure-related
support requests.

## Issue Tracker

Internal issue tracker ID: `INFRA`

* **Internal issue tracker**: <https://youtrack.recaptime.dev/projects/1da5b766-9ff2-40c4-867e-419f6da08910>
  * ping @ajhalili2006 for access (use the [GitHub issue form][gh-ra] or the
  [GitLab issue description template][gl-ra]), although due to free tier limitations we may need to adjust stuff
* **GitLab**: <https://gitlab.com/recaptime-dev/infra/ops/issues> / <https://mau.dev/recaptimedev/infraops> (formerly
<https://mau.dev/recaptime-dev/infra/issue-tracker/issues>)
* **GitHub**: <https://github.com/recaptime-dev/infraops/issues>

## What's inside?

* GitHub specifics
  * [`.github/ISSUE_TEMPLATE`](.github/ISSUE_TEMPLATE/) - GitHub Issue forms
  * [`.gitlab/issue_templates`](.gitlab/issue_templates) - Issue description templates for GitLab
* GitLab specifics
  * [`.gitlab/issue_templates`](.gitlab/issue_templates/) - Issue description templates for GitLab
* [`docker`](./docker) - Docker images, Compose files and related configuration.
  * Container Images
    * [`docker/images/devenv`](./devenv/) - Dev container for Recap Time Squad projects
* [`dns`](./dns) - Cloudflare DNS records for Recap Time Squad, managed by octodns
  * For [Community Lorebooks](https://lorebooks.wiki) DNS records, [see its repo instead][registry].

## Related projects

* [`@recaptime-dev/dotenvx-secretstore`][dotenvx-secretstore] - Git-based SecretOps workflow for managing `dotenvx` encrypted secrets.
* [`@recaptimedev-infra/linux-dotfiles`][infra-dotfiles] - Linux dotfiles and configuration files for pubnixes we use (e.g. Hashbang and Hack Club Nest)

## License

Unless otherwise specified above, code is licensed under MPL-2.0 while
documentation and non-code content is under CC-BY-SA-4.0.

[registry]: https://github.com/lorebooks-wiki/registry
[gh-ra]: https://github.com/recaptime-dev/infraops/issues/new?template=general-requests.yml
[gl-ra]: https://gitlab.com/recaptime-dev/infra/ops/issues/new?description_template=general-requests
[dotenvx-secretstore]: https://github.com/recaptime-dev/dotenvx-secretstore
[infra-dotfiles]: https://gitlab.com/recaptime-dev/infra/linux-dotfiles
