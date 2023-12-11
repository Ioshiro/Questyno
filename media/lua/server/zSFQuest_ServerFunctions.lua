require("SFQuest_ServerFunctions")

function SFQuest_Server.parseTable(data, writer, _ident)
	if not writer then
		print("SOUL QUEST SYSTEM - No Filewriter. Unable to parse data table.");
		return
	end
	if not _ident then
		_ident = "";
	end

	local parsedTable = {};

	local addNonTable = function(ident, value)
		local st;
		if type(value) == "string" then
			st = ident .. "='" .. value .. "';\n";
		else
			st = ident .. "=" .. tostring(value) .. ";\n";
		end
		--print(st);
		table.insert(parsedTable, st);
	end
	local function addTable(ident, tablet)
		local st;
		for kn, vn in pairs(tablet) do
			local keyFormat4 = "." .. tostring(kn);
			if string.len(tostring(kn)) < 4 then
				keyFormat4 = "[" .. tostring(kn) .. "]";
				-- else if kn is a string coordinate like "1234x1234x0"
				-- then we need to wrap it with [''] to make it a valid key
			elseif string.match(tostring(kn), "^%d.*x.*") then
				keyFormat4 = "['" .. tostring(kn) .. "']";
			end
			local newIdent4 = ident .. keyFormat4;
			if type(vn) == "table" then
				st = newIdent4 .. "={}\n";
				--print(st);
				table.insert(parsedTable, st);
				addTable(newIdent4, vn);
			else
				addNonTable(newIdent4, vn);
			end
		end
	end

	local s;
	for k, v in pairs(data) do
		if type(v) == "table" then
			local keyFormat = "." .. tostring(k);
			if string.len(tostring(k)) < 4 then
				keyFormat = "[" .. tostring(k) .. "]";
			end
			local newIdent = tostring(_ident) .. keyFormat;
			s = newIdent .. "={}\n";
			--print(s);
			table.insert(parsedTable, s);
			local s2;
			addTable(newIdent, v);
		else
			--Just a simple variable inside the table, store it.
			sDent = tostring(_ident) .. "." .. tostring(k);
			addNonTable(sDent, v);
		end
	end

	for l, m in ipairs(parsedTable) do
		local line = m;
		writer:write(line);
	end
	writer:close();
end