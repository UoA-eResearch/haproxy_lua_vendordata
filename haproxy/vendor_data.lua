core.register_service("vendor_data", "http", function(applet)
    local path = applet.path
    if path and path:find("vendor_data") then
        local response = vendor_data_response
        applet:set_status(200)
        applet:add_header("content-length", string.len(response))
        applet:add_header("content-type", "text/plain")
        applet:start_response()
        applet:send(response)
    end
end)

core.register_init(function()
    local file_path = "/usr/local/etc/haproxy/cloud-config.json"
    local file = io.open(file_path, "r")
    local content = file:read("*a")
    core.Info(content)
    file:close()
    vendor_data_response = content
end)
