local output = arg[1]
if not output then
    return
end

local function exec(str)
    local f = io.popen(str)
    local out = f:read("*all")
    f:close()
    return out
end

local function get()
    local cmd = string.format(
        'xrandr --verbose --current | grep --after-context 5 "%s " | tail --lines 1 | sed "s/\\s*Brightness:\\s*//"',
        output)

    local value = tonumber(exec(cmd))
    return value and value or 0
end

local function set(value)
    local current = get()
    local b = current + value

    if b > 1 or b <= 0 then
        return
    end

    local cmd = string.format("xrandr --output %s --brightness %f", output, b)
    exec(cmd)
end

local param = tonumber(arg[2])
if not param then
    local value = get()
    local text = {}
    text[1] = "##########"
    text[0.9] = "#########."
    text[0.8] = "########.."
    text[0.7] = "#######..."
    text[0.6] = "######...."
    text[0.5] = "#####....."
    text[0.4] = "####......"
    text[0.3] = "###......."
    text[0.2] = "##........"
    text[0.1] = "#........."

    print(text[value])
    return
end

set(param)
