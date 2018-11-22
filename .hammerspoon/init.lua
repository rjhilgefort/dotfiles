local hyper = {"ctrl", "alt", "cmd"}
local hyperShift = {"ctrl", "alt", "cmd", "shift"}

-- https://github.com/miromannino/miro-windows-manager/pull/5
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
