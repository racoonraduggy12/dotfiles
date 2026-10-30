-- Ref https://wiki.hypr.land/configuring/core/rules/workspace-rules/

local state = {
    ratio = 0.58,
    offset = 0,
}

local sides = { "left", "top", "right", "bottom" }
local opposite = {
    left = "right",
    right = "left",
    top = "bottom",
    bottom = "top",
}

local function clamp(x, min, max)
return math.max(min, math.min(max, x))
end

hl.layout.register("spiral", {
    recalculate = function(ctx)
    local n = #ctx.targets
    if n == 0 then
        return
        end

        local area = ctx.area

        for i, target in ipairs(ctx.targets) do
            if i == n then
                target:place(area)
                else
                    local side = sides[((i - 1 + state.offset) % #sides) + 1]
                    target:place(ctx:split(area, side, state.ratio))
                    area = ctx:split(area, opposite[side], 1.0 - state.ratio)
                    end
                    end
                    end,

                    layout_msg = function(ctx, msg)
                    local command, arg = msg:match("^(%S+)%s*(.*)$")

                    if command == "ratio" then
                        state.ratio = clamp(tonumber(arg) or state.ratio, 0.1, 0.9)
                        elseif command == "grow" then
                            state.ratio = clamp(state.ratio + 0.05, 0.1, 0.9)
                            elseif command == "shrink" then
                                state.ratio = clamp(state.ratio - 0.05, 0.1, 0.9)
                                elseif command == "rotate" then
                                    state.offset = (state.offset + 1) % #sides
                                    else
                                        return "spiral: expected ratio <0.1..0.9>, grow, shrink, or rotate"
                                        end

                                        return true
                                        end,
})

hl.workspace_rule({
    workspace = "1",
    layout = "dwindle",
    monitor = "HDMI-A-1",
    default = true,
    persistent = true
})

hl.workspace_rule({
    workspace = "2",
    layout = "scrolling",
    monitor = "DP-1",
    default = true,
    persistent = true
})

hl.workspace_rule({
    workspace = "3",
    layout = "scrolling",
    monitor = "DP-2",
    default = true,
    persistent = true
})


hl.workspace_rule({
    workspace = "4",
    layout = "dwindle",
    monitor = "DP-4",
    default = true,
    persistent = false
})


hl.workspace_rule({
    workspace = "5",
    layout = "dwindle",
    monitor = "HDMI-A-1",
    default = false,
    persistent = false
})

hl.workspace_rule({
    workspace = "6",
    layout = "scrolling",
    monitor = "HDMI-A-1",
    default = false,
    persistent = false,
    layout_opts = {
        direction = "right",
    }
})

hl.workspace_rule({
    workspace = "7",
    layout = "lua:spiral",
    monitor = "HDMI-A-1",
    default = false,
    persistent = false
})

hl.config({
    dwindle = {
        preserve_split = true, -- You probably want this
    },
})

-- See https://wiki.hypr.land/configuring/layouts/master-layout/ for more
hl.config({
    master = {
        new_status = "inherit",
        new_on_top = true,
        mfact = 0.618,
        orientation = "left"
    },
})

-- See https://wiki.hypr.land/configuring/layouts/scrolling-layout/ for more
hl.config({
    scrolling = {
        fullscreen_on_one_column = true,
        direction = "up",
        column_width = 1.0,
    },
})
