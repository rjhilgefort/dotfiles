local hyper = { "ctrl", "alt", "cmd" }
local hyperShift = { "ctrl", "alt", "cmd", "shift" }

-- https://github.com/miromannino/miro-windows-manager/pull/5
hs.loadSpoon("MiroWindowsManager")

hs.window.animationDuration = 0.0

spoon.MiroWindowsManager:bindHotkeys({
    up         = {hyper, "k"},
    right      = {hyper, "l"},
    down       = {hyper, "j"},
    left       = {hyper, "h"},
    fullscreen = {hyper, "return"},
    center     = {hyper, "c"},
    move       = {hyper, "v"},
    resize     = {hyper, "d"}
})
spoon.MiroWindowsManager.sizes = { 6/5, 4/3, 3/2, 2/1, 3/1, 4/1, 6/1 }

-- move focused window to other screen
hs.hotkey.bind(hyper, 'left', function()
    hs.window.focusedWindow():moveOneScreenWest(true, true)
end)
hs.hotkey.bind(hyper, 'right', function()
    hs.window.focusedWindow():moveOneScreenEast(true, true)
end)
