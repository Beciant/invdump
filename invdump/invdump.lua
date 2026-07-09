addon.name    = 'invdump'
addon.author  = 'Beciant'
addon.version = '1.9'
addon.desc    = 'Dump inventory with augments + wardrobe names (Ashita v4)'

require 'common'

-- Force-load augment table using absolute path
local base = AshitaCore:GetInstallPath()
local augment_path = string.format('%s\\addons\\invdump\\assets\\augment_table.lua', base)
local augment_names = assert(loadfile(augment_path))()

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
-- SAFE AUGMENT DECODER (Ashita v4)
-----------------------------------------------------------------------
local function decode_augments(extra, info)
    -- Only gear categories can have augments
    if not info or info.Type < 1 or info.Type > 4 then
        return nil
    end

    if not extra or #extra < 5 then
        return nil
    end

    local count = extra:byte(1)

    -- Valid augment count is 1–12
    if count < 1 or count > 12 then
        return nil
    end

    -- Augment block must be exactly 1 + count*4 bytes
    local needed = 1 + (count * 4)
    if #extra ~= needed then
        return nil
    end

    local augments = {}
    local pos = 2

    for i = 1, count do
        local id  = extra:byte(pos) + extra:byte(pos + 1) * 256
        local val = extra:byte(pos + 2) + extra:byte(pos + 3) * 256

        if val > 32767 then val = val - 65536 end

        table.insert(augments, { id = id, val = val })
        pos = pos + 4
    end

    return (#augments > 0) and augments or nil
end


-----------------------------------------------------------------------
-- Convert augment list to readable text
-----------------------------------------------------------------------
local function augment_text(augments)
    if not augments then
        return ''
    end

    local parts = {}

    for _, a in ipairs(augments) do
        local name = augment_names[a.id] or ('AugID:' .. a.id)
        table.insert(parts, string.format('%s %+d', name, a.val))
    end

    return table.concat(parts, ', ')
end

-----------------------------------------------------------------------
-- MAIN INVENTORY DUMP
-----------------------------------------------------------------------
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

                local aug = decode_augments(item.Extra, info)
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

-----------------------------------------------------------------------
-- COMMAND HANDLER
-----------------------------------------------------------------------
ashita.events.register('command', 'command_cb', function(e)
    local args = e.command:args()
    if args[1] == '/invdump' then
        dump_inventory()
        e.blocked = true
    end
end)