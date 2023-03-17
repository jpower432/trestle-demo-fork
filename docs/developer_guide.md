# Developer Guide


## Repository Layout

All automation resources besides the top-level Makefile are in the automation repository.

```bash
automation/
├── demo
├── iac
├── lib
└── mk
```

- demo - Contains scripts related to pre-recorded demos using asciinema.
- iac - Currently empty, but will contain any infrastructure-as-code resources.
- lib - Bash library used by make targets and CI to do multi-line or more complex logic.
- mk - Library of phony make targets. This contains logic that would be used by a user interacting with this repository or CI automation.

## Creating Demo Recording

### Prerequisites

Create a secret with docker or podman container a GH personal access token scope to the repository. It must be named `pat`

```bash
printf "token" | podman secret create pat -
```

Create a `.env` file in your home directory with the following entries:

```bash
GIT_REPO=<URL to personal repo>
GIT_NAME=<My Name>
GIT_EMAIL=<myemail@myemail.com>
```

Recordings can be made by persona.

```bash
make control-issuer-run
make control-provide-run
make control-owner-run
```

All recordings are saved to `docs/recordings`.


