-- USES HOTKEY: NUMPAD 3.

RegisterKeyBind(Key.NUM_THREE, function()
    -- Call the API to find all instances of PalDynamicWeaponItemDataBase
    local instances = FindAllOf("PalDynamicWeaponItemDataBase")

    -- Check if any instances were found
    if instances then
        -- Iterate through each instance
        for _, instance in ipairs(instances) do
            local itemId = instance.StaticId:ToString()
            if not string.find(itemId, "NPC") then
                 -- Check if the instance has the property you want to update
                if instance.Durability then
                    -- Update the property value as needed
                    instance.Durability = 9999999.999
                end
                if instance.MaxDurability then
                    -- Update the property value as needed
                    instance.MaxDurability = 9999999.999
                end
                if instance.OldDurability then
                    -- Update the property value as needed
                    instance.OldDurability = 9999999.999
                end
                -- This might be pulled out into a separate script to avoid serious issues
                -- crossbow for example will have unlimited ammo/no reload speed cooldown.
                -- if instance.RemainingBullets then
                --     -- Update the property value as needed
                --     instance.RemainingBullets = 9999999
                -- end
                print("----")
                print("Updated durability of " .. itemId .. "\n")
                print("----")
            end
           
        end
    else
        print("No instances of PalDynamicWeaponItemDataBase found.\n")
    end

    -- Call the API to find all instances of PalDynamicArmorItemDataBase
    local instances = FindAllOf("PalDynamicArmorItemDataBase")

    -- Check if any instances were found
    if instances then
        -- Iterate through each instance
        for _, instance in ipairs(instances) do
            local itemId = instance.StaticId:ToString()
            if not string.find(itemId, "NPC") then
                -- Check if the instance has the property you want to update
                if instance.Durability then
                    -- Update the property value as needed
                    instance.Durability = 9999999.999
                end
                if instance.MaxDurability then
                    -- Update the property value as needed
                    instance.MaxDurability = 9999999.999
                end
                if instance.OldDurability then
                    -- Update the property value as needed
                    instance.OldDurability = 9999999.999
                end
                print("----\n")
                print("Updated durability of " .. itemId .. "\n")
                print("----\n")
            end
        end
    else
        print("No instances of PalDynamicArmorItemDataBase found.\n")
    end
end)