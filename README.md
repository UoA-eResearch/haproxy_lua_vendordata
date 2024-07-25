# haproxy_lua_vendordata

POC of LUA script to intercept and modify HTTP requests in HAProxy

```
docker compose up --build
```

```
curl -v http://0.0.0.0/
{"health":true}
```

```
curl -v http://0.0.0.0:8080/user_data
{"user_data":"user_data"}
```

```
curl -v http://0.0.0.0:8080/vendor_data
#cloud-config
users:
  - default
  - name: aklops
    shell: /bin/bash
    groups:
      - sudo
    sudo:
      - ALL=(ALL:ALL) NOPASSWD:ALL
    ssh_authorized_keys:
* Connection #0 to host 0.0.0.0 left intact
      - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAICHODQ9IQyUDa7Dm3k9M2I5KU0Qu++hIUqVo+EapIZ2Z
```
