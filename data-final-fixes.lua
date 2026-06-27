local shallow = data.raw.tile and data.raw.tile["oil-ocean-shallow"]
local shallow_2 = data.raw.tile and data.raw.tile["oil-ocean-shallow-2"]

if shallow and shallow_2 then
    if shallow.layer ~= nil then
        shallow_2.layer = shallow.layer
    end

    if shallow.variants and shallow_2.variants then
        if shallow.variants.material_background then
            shallow_2.variants.material_background = table.deepcopy(shallow.variants.material_background)
        end

        if shallow.variants.material_texture_width_in_tiles then
            shallow_2.variants.material_texture_width_in_tiles = shallow.variants.material_texture_width_in_tiles
        end

        if shallow.variants.material_texture_height_in_tiles then
            shallow_2.variants.material_texture_height_in_tiles = shallow.variants.material_texture_height_in_tiles
        end
    end
end
