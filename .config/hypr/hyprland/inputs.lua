-- Input --

hl.config({
    input = {
        kb_layout = "us",
        kb_variant = "",
        kb_model = "",
        kb_options = "",
        kb_rules = "",

        follow_mouse = 1,

        sensitivity = 0,

        touchpad = {
            natural_scroll = true,
        }
    }
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace",
})

hl.device({
    name = "instant-usb-gaming-mouse-",
    sensitivity = -0.15,
    accel_profile = "flat"
})

hl.device({
    name = "elan0001:00-04f3:31ad-touchpad",
    sensitivity = 0.2,
    accel_profile = "adaptive"
})
