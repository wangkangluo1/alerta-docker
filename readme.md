###play with it
```bash
docker run -i -t -p 8000:8000 -d alerta
```
>add alert 

```bash
alerta send -r web01 -e NodeDown -E Production -S Website -s major -t "Web server is down." -v ERROR
```

###docker build
```bash
docker build -t alerta ./
```



