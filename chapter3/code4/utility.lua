local utility = {}

utility.getos = function()

        -- Unix, Linux varients
        fh,err = io.popen("uname -o 2>/dev/null","r")
        if fh then
                osname = fh:read()
                end
        if osname then return osname end

        -- Add code for other operating systems here
        return "unknown"
end


-- Lua non supporta funzioni di attesa
utility.wait = function (seconds)
	local start = os.time();

	repeat until os.time() > start + seconds
end

return utility