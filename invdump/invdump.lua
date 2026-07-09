addon.name    = 'invdump'
addon.author  = 'Beciant'
addon.version = '1.0'
addon.desc    = 'Dumps inventory to a text file. (Ashita v4)'

require 'common'

-- In-game container ordering
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

-- Print order matching FFXI UI
local container_order = {
    3,   -- Temporary
    0,   -- Inventory
    1,   -- Safe
    9,   -- Safe 2
    2,   -- Storage
    4,   -- Locker
    5,   -- Satchel
    6,   -- Sack
    7,   -- Case
    8,   -- Wardrobe 1
    10,  -- Wardrobe 2
    11,  -- Wardrobe 3
    12,  -- Wardrobe 4
    13,  -- Wardrobe 5
    14,  -- Wardrobe 6
    15,  -- Wardrobe 7
    16,  -- Wardrobe 8
    17,  -- Recycle
}

-----------------------------------------------------------------------
-- MAIN INVENTORY DUMP (NO AUGMENTS, TABBED OUTPUT)
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

    for _, bag in ipairs(container_order) do
        local bagName = container_names[bag] or ('Bag ' .. bag)
        f:write(string.format('=== %s ===\n', bagName))

        local maxSlots = inv:GetContainerCountMax(bag)

        for slot = 1, maxSlots do
            local item = inv:GetContainerItem(bag, slot)

            if item and item.Id > 0 then
                local info = res:GetItemById(item.Id)
                local name = info and info.Name[1] or 'Unknown'

                -- Tab-aligned output
                f:write(string.format(
				'%02d\tID:%-6d\tQty:%-3d\tName:%s\n',
				slot, item.Id, item.Count, name
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