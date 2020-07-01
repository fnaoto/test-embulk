# test-embulk
Test embulk with docker-compose

Init

```
docker-compose -f docker-compose.yml -f docker-compose.local.yml build
docker-compose -f docker-compose.yml -f docker-compose.local.yml up -d
```

Preview

```
docker-compose exec embulk sh -c "embulk preview /liquid/_config.yml.liquid"
```

Excute

```
docker-compose exec embulk sh -c "embulk run /liquid/_config.yml.liquid"
```
