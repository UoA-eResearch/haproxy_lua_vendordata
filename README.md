# haproxy_lua_vendordata

POC of LUA script to intercept and modify HTTP requests in HAProxy

```
docker compose up --build
```

```
curl http://0.0.0.0:8080/
{"health":true}
```

```
curl http://0.0.0.0:8080/user_data
{"user_data":"user_data"}
```

```
curl http://0.0.0.0:8080/vendor_data
{
  "cloud-init": {
    "write_files": [
      {
        ....
      }
    ]
  }
}
```
