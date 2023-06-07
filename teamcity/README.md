## teamcity-server-instance
```sh
docker run -d --name teamcity-server-instance \
-v /home/$USER/data:/data/teamcity_server/datadir \
-v /home/$USER/logs:/opt/teamcity/logs \
-p 8111:8111 \
jetbrains/teamcity-server
```
## teamcity-agent-docker
```sh
docker run -d --name teamcity-agent-docker \
-it -e SERVER_URL="http://$(curl ifconfig.me):8111" \
-v teamcity_agent_conf:/data/teamcity_agent/conf \
-u 0 -v docker_volumes:/var/lib/docker \
--privileged -e DOCKER_IN_DOCKER=start \
jetbrains/teamcity-agent
```
```sh
docker exec -it teamcity-agent-docker bash
```
```sh
sudo dockerd
```

