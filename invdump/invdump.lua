addon.name    = 'invdump'
addon.author  = 'Beciant'
addon.version = '1.0'
addon.desc    = 'Dumps inventory with augment descriptions to a text file.(Ashita v4)'

require 'common'
package.path = package.path .. ';' .. AshitaCore:GetInstallPath() .. '\\addons\\invdump\\assets\\?.lua'
-- Load the augment table
local augdata = require('augment_table')


-- Container names based on Ashita v4 ordering
local container_names = {
    [0]  = 'Inventory',
    [1]  = 'Safe',
    [2]  = 'Storage',
    [3]  = 'Temporary',
    [4]  = 'Locker',
    [5]  = 'Satchel',
    [6]  = 'Sack',
    [7]  = 'Case',
    [8]  = 'Wardrobe 1',
    [9]  = 'Safe 2',
    [10] = 'Wardrobe 2',
    [11] = 'Wardrobe 3',
    [12] = 'Wardrobe 4',
    [13] = 'Wardrobe 5',
    [14] = 'Wardrobe 6',
    [15] = 'Wardrobe 7',
    [16] = 'Wardrobe 8',
    [17] = 'Recycle',
}

-----------------------------------------------------------------------
-- UNIVERSAL AUGMENT RESOLVER
local function resolve_augments(item, info)
    local name = info and info.Name[1] or nil
    if not name then return nil end

    -- 1. Magian / Trial / Relic / Homestead
    local mag = augdata.Magian[item.Id]
    if mag then
        return mag
    end

    -- 2. Ambuscade Path
    local path = augdata.Paths[name]
    if path then
        return { "Path " .. path }
    end

    -- 3. Modern augmented items
    local modern = augdata.Modern[name]
    if modern then
        return modern
    end

    -- 4. Standard augment block
    local extra = item.Extra
    if not extra or #extra < 5 then
        return nil
    end

    local count = extra:byte(1)
    if count < 1 or count > 12 then
        return nil
    end

    local needed = 1 + (count * 4)
    if #extra < needed then
        return nil
    end

    local augments = {}
    local pos = 2

    for i = 1, count do
        local id  = extra:byte(pos) + extra:byte(pos + 1) * 256
        local val = extra:byte(pos + 2) + extra:byte(pos + 3) * 256

        if val > 32767 then val = val - 65536 end

        local aname = augdata.Standard[id] or ("AugID:" .. id)
        table.insert(augments, string.format("%s %+d", aname, val))

        pos = pos + 4
    end

    -- 5. Hide legacy augments
    local function is_legacy(aug)
        if not aug or #aug == 0 then
            return true
        end

        for _, a in ipairs(aug) do
            if a:find("AugID:0") or a:find("AugID:67") then
                return true
            end

            local val = tonumber(a:match("([%+%-]%d+)"))
            if val and math.abs(val) > 5000 then
                return true
            end

            if a:find("AugID:") then
                return true
            end
        end

        return false
    end

    if is_legacy(augments) then
        return nil
    end

    return augments
end


local function augment_text(aug)
    if not aug then return '' end
    return table.concat(aug, ', ')
end

-----------------------------------------------------------------------
-- MAIN INVENTORY DUMP
local function dump_inventory()
    local mm  = AshitaCore:GetMemoryManager()
    local inv = mm:GetInventory()
    local res = AshitaCore:GetResourceManager()

    if not inv then
        print('[invdump] Inventory manager unavailable.')
        return
    end

    local base = AshitaCore:GetInstallPath()
    local path = string.format('%s\\docs\\invdump.txt', base)

    local f = io.open(path, 'w')
    if not f then
        print('[invdump] Failed to open file for writing.')
        return
    end

    local bagCount = inv:GetContainerCount()

    for bag = 0, bagCount - 1 do
        local bagName = container_names[bag] or ('Bag ' .. bag)
        f:write(string.format('=== %s ===\n', bagName))

        local maxSlots = inv:GetContainerCountMax(bag)

        for slot = 1, maxSlots do
            local item = inv:GetContainerItem(bag, slot)

            if item and item.Id > 0 then
                local info = res:GetItemById(item.Id)
                local name = info and info.Name[1] or 'Unknown'

                local aug = resolve_augments(item, info)
                local augtxt = augment_text(aug)

                f:write(string.format(
                    '[%02d] ID:%d Qty:%d Name:%s%s\n',
                    slot, item.Id, item.Count, name,
                    (augtxt ~= '' and (' | Augments: ' .. augtxt) or '')
                ))
            end
        end

        f:write('\n')
    end

    f:close()
    print(string.format('Inventory dumped to %s', path))
end

ashita.events.register('command', 'command_cb', function(e)
    local args = e.command:args()
    if args[1] == '/invdump' then
        dump_inventory()
        e.blocked = true
    end
end)