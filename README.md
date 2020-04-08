# test-embulk
Test embulk with docker-compose

Init

```
docker-compose build
docker-compose up -d
```

Preview

```
docker-compose exec embulk sh -c "embulk preview /liquid/_config.yml.liquid"
```

Excute

```
docker-compose exec embulk sh -c "embulk run /liquid/_config.yml.liquid"
```
