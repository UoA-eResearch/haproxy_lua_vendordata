core.register_service("vendor_data", "http", function(applet)
    local path = applet.path
    if path and path:find("vendor_data") then
        local response = "#cloud-config\nusers:\n  - default\n  - name: aklops\n    shell: /bin/bash\n    groups:\n      - sudo\n    sudo:\n      - ALL=(ALL:ALL) NOPASSWD:ALL\n    ssh_authorized_keys:\n      - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAICHODQ9IQyUDa7Dm3k9M2I5KU0Qu++hIUqVo+EapIZ2Z"
        applet:set_status(200)
        applet:add_header("content-length", string.len(response))
        applet:add_header("content-type", "text/plain")
        applet:start_response()
        applet:send(response)
    end
end)
