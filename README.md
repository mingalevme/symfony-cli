# symfony-cli

Alpine-based Docker image for Symfony CLI

Like the official [symfonycorp/cli](https://hub.docker.com/r/symfonycorp/cli) but CI/CD itegratable.

.gitlab-ci.yml
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
