local hyper = {"ctrl", "alt", "cmd"}

hs.loadSpoon("MiroWindowsManager")

hs.window.animationDuration = 0.1
spoon.MiroWindowsManager:bindHotkeys({
    up         = {hyper, "k"},
    right      = {hyper, ";"},
    down       = {hyper, "j"},
    left       = {hyper, "h"},
    fullscreen = {hyper, "return"},
    center     = {hyper, "c"},
    move       = {hyper, "v"},
    resize     = {hyper, "d"}
})
