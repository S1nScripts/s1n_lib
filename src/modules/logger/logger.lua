local Logger = {}

-- Niveaux de log
Logger.levels = {
    ["DEBUG"] = {color = "^7", prefix = "[DEBUG]"},
    ["INFO"] = {color = "^2", prefix = "[INFO]"},
    ["WARN"] = {color = "^3", prefix = "[WARN]"},
    ["ERROR"] = {color = "^1", prefix = "[ERROR]"}
}

-- Fonction de log générique
function Logger.log(level, message)
    local levelInfo = Logger.levels[level] or Logger.levels["INFO"]
    local msg = levelInfo.color .. levelInfo.prefix .. " " .. message .. "^0"

    print(msg)
end

-- Fonctions de niveau de log spécifiques
function Logger.debug(message)
    Logger.log("DEBUG", message)
end

function Logger.info(message)
    Logger.log("INFO", message)
end

function Logger.warn(message)
    Logger.log("WARN", message)
end

function Logger.error(message)
    Logger.log("ERROR", message)
end

return Logger
