###play with it
```bash
docker run -i -t -p 8000:8000 -p 8080:8080 -d wangkangluo1/alerta-docker
```
####add alert 

```bash
alerta send -r web01 -e NodeDown -E Production -S Website -s major -t "Web server is down." -v ERROR
```
####open brower http://{your_url}:8000
>note: your need open it under allow cros setting, otherwise you can't see anything in webui

###docker build
```bash
docker build -t alerta ./
```



