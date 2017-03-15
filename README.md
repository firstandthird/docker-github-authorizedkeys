# docker-github-authorizedkeys
Add github user's authoized keys via docker

## Usage in Docker Cloud

We recommend using this image in Docker Cloud as follows:

```
authorizedkeys:
  image: firstandthird/github-authorizedkeys
  deployment_strategy: every_node
  autodestroy: always
  environment:
    GITHUB_USERS: username1,username2
  volumes:
    - /root:/user:rw
```
