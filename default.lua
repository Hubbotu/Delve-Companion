local _, addon = ...

--[[
Правила:
- Префиксы для разных частей:
--- ui
--- debug
--- data
--- config
-
]]
addon.lockit = setmetatable(
    {
        -- Информация о ключах
        ["ui-bountiful-keys-count-owned-format"] = "%s %s: %d",
        -- Список подземелий
        ["ui-delve-instance-button-tooltip-click-text"] = "Shift + ЛКМ, чтобы установить точку маршрута к вылазке",
        ["ui-delve-instance-button-tooltip-current-text"] = "Точка маршрута установлена.\nShift + ЛКМ, чтобы очистить точку маршрута.",

        -- Информация о добыче
        ["ui-loot-info-description"] = "Завершите вылазку, чтобы получить:",
        ["ui-loot-info-bountilful-gear-title"] = "Обильный"
    },
    {
        __index = function(_, ...)
            addon.log("Ключ не найден: %s", ...);
        end
    }
)