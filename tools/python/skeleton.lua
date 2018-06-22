
local cjson = require('cjson');


function serialize(tbObj)  
    local strLua = ""  
    local t = type(tbObj)  
    if t == "number" then  
        strLua = strLua .. tbObj  
    elseif t == "boolean" then  
        strLua = strLua .. tostring(tbObj)  
    elseif t == "string" then  
        strLua = strLua .. string.format("%q", tbObj)  
    elseif t == "table" then  
        strLua = strLua .. "{"  
        for k, v in pairs(tbObj) do  
            if k ~= '__index' and k ~= 'super' and k ~= '__supers' then
                strLua = strLua .. "[" .. serialize(k) .. "]=" .. serialize(v) ..",";
            end
        end  
        strLua = strLua .. "}"  

    elseif t == "userdata" or t == 'function' then
        return string.format("%q", tostring(tbObj));

    elseif t == "nil" then
        return nil  
    else  
        error("can not serialize a " .. t .. " type.")  
    end  
    strLua = string.gsub(strLua, ",}", "}");
    return strLua  
end


local file = io.open('php/tmp_file_SkeletonConfig.json');
local content = file:read("*a");

local file1 = io.open('../scripts/common/config/SkeletonConfig.lua','w');
file1:write('module "common.config.SkeletonConfig"',"\n\n");
file1:write('config = ');
local content1 = serialize(cjson.decode(content));
content1 = string.gsub(content1, "}}},", "}}},\n");
content1 = string.gsub(content1, "}},", "}},\n");
content1 = string.gsub(content1, "},", "},\n");
file1:write(content1, ";\n\n");