# test-embulk
Test embulk with docker-compose

Preview

```
docker-compose exec embulk sh -c "embulk preview -b bundle /liquid/_config.yml.liquid"
```

Excute

```
docker-compose exec embulk sh -c "embulk run -b bundle /liquid/_config.yml.liquid"
```
