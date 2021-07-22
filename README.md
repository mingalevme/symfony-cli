# Symfony CLI  (symfony-cli)

Alpine-based Docker image for Symfony CLI

Like the official [symfonycorp/cli](https://hub.docker.com/r/symfonycorp/cli) but CI/CD integratable.

## Basic usage example

```shell
docker run --rm -v "$(pwd):/app" mingalevme/symfony-cli check:security`
```

## GitLab CI/CD usage example (.gitlab-ci.yml)

```yml
...
security:
  stage: quality
  image:
    name: mingalevme/symfony-cli
    entrypoint: [""]
  script:
    - symfony check:security
...
```
