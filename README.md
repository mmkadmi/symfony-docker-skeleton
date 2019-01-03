# symfony-docker-skeleton
Start project : make start
Stop project : make stop
Restart project : make restart
Get container ip : docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' container_name_or_id