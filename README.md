# docker-github-authorizedkeys
Add github user's authoized keys via docker

## Usage on single matchine

```
docker run --rm -e GITHUB_USERS=user1,user2 -v /home/docker/.ssh:/user/.ssh firstandthird/github-authorizedkeys
```

## Usage in swarm

```
docker service create --name github-auth -e GITHUB_USERS=user1,user2 --mount type=bind,source=/home/docker/.ssh,target=/user/.ssh --restart-condition none --constraint 'node.role == manager' firstandthird/github-authorizedkeys
```

## Usage in compose

```
services:
  github-auth:
    image: 'firstandthird/github-authorizedkeys'
    environment:
      GITHUB_USERS: 'user1,user2'
    volumes:
      - '/home/docker/.ssh:/user/.ssh'
    deploy:
      placement:
        constraints:
          - node.role == manager
      restart_policy:
        condition: none
```
