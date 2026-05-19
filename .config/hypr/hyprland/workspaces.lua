-- Workspace Rules -- 

for i = 1, 9 do
    hl.workspace_rule({
        workspace = tostring(i),
        monitor = "eDP-1"
    })
end
hl.workspace_rule({
    workspace = "10",
    monitor = "HDMI-A-1"
})
