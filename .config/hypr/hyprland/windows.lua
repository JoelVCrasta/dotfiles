-- Window Rules --

hl.window_rule({
     -- Ignore maximize requests from all apps.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

hl.window_rule({
    name = "pavucontrol-float",
    match = { class = "org.pulseaudio.pavucontrol" },
    float = true,
    size = {700,400},
    center = true,
})
hl.window_rule({
    name = "blueman-float",
    match = { class = "blueman-manager" },
    float = true,
    size = {700, 400},
    center = true,
})
hl.window_rule({
    name = "networkmanager-float",
    match = { class = "nm-connection-editor" },
    float = true,
    size = {700, 400},
    center = true,
})
hl.window_rule({
    name = "copyq-float",
    match = { class = "com.github.hluk.copyq" },
    float = true,
    size = {700, 400},
    center = true,
})
hl.window_rule({
    name = "viewnior-float",
    match = { class = "viewnior" },
    float = true,
    size = {1024, 768},
    center = true,
})
hl.window_rule({
    name = "nautilus-float",
    match = { class = "org.gnome.Nautilus" },
    float = true,
    size = {1024, 768},
    center = true,
})
hl.window_rule({
    name = "stacer-float",
    match = { class = "stacer" },
    float = true,
    size = {1024, 768},
    center = true,
})
hl.window_rule({
    name = "waypaper-float",
    match = { class = "waypaper" },
    float = true,
    size = {1024, 768},
    center = true,
})
hl.window_rule({
    name = "open-folder-float",
    match = { 
        class = "xdg-desktop-portal-gtk",
    },
    float = true,
    size = {1024, 768},
    center = true,
})
hl.window_rule({
    name = "smile-float",
    match = { class = "it.mijorus.smile" },
    float = true,
    size = {100, 100},
    move = {920, 817},
    animation = "popin"
})