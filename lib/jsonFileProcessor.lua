function jsonFileRead(filePath)
    local data = nil
    local handle = io.open(filePath, "r")
 
    if handle then
        data = json.parse(handle:read("*a"))
        handle:close()
    end
    
    return data
end

function jsonFileWrite(filePath, data, pretty)    
    local handle = io.open(filePath, "w+")
    
    if handle then
		if pretty then
			handle:write(json.stringify(data))
		else
			handle:write(json.stringify(data, nil, 4))
		end
        handle:close()
    end
end
