local aux_util = require('openmw_aux.util')

local type LogLevel = enum
    "TRACE"
    "DEBUG"
    "INFO"
    "WARNING"
    "ERROR"
end

local LEVELS: {LogLevel: integer} = {
    TRACE = 5,
    DEBUG = 4,
    INFO = 3,
    WARNING = 2,
    ERROR = 1,
}

global LOG_LEVEL: LogLevel = "DEBUG"

local function log(level: LogLevel, message: string, payload: {string:any})
    if LEVELS[level] > LEVELS[LOG_LEVEL] then return end
    print("[QM] " .. level .. ": " .. message)
    if payload ~= nil then
        for key, value in pairs(payload) do
            print("      " .. key .. ": " .. (aux_util.deepToString(value, 6) as string))
        end
    end
end

local function trace(message: string, payload?: {string:any})
    log("TRACE", message, payload)
end

local function debug(message: string, payload?: {string:any})
    log("DEBUG", message, payload)
end

local function info(message: string, payload?: {string:any})
    log("INFO", message, payload)
end

local function warning(message: string, payload?: {string:any})
    log("WARNING", message, payload)
end

local function error(message: string, payload?: {string:any})
    log("ERROR", message, payload)
end

return {
    LogLevel = LogLevel,
    trace = trace,
    debug = debug,
    info = info,
    warning = warning,
    error = error,
    LOG_LEVEL = LOG_LEVEL,
    LEVELS = LEVELS,
}