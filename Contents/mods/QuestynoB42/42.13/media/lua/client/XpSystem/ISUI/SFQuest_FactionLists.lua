require "ISUI/ISScrollingListBox"

SFQuest_FactionLists = ISScrollingListBox:derive("SFQuest_FactionLists")

local FONT_HGT_SMALL = getTextManager():getFontHeight(UIFont.Small)

function SFQuest_FactionLists:addItem(name, item)
    local i = item;
 	i.tooltip = nil;
    i.itemindex = self.count + 1;
	i.height = item.height or self.itemheight;
	--print("item height returned: " .. tostring(i.height));
    table.insert(self.items, i);
    self.count = self.count + 1;
    self:setScrollHeight(self:getScrollHeight()+i.height);
    return i;
end

function SFQuest_FactionLists:insertItem(index, name, item)
	local i = item
	i.tooltip = nil
	i.height = item.height or self.itemheight;

	if #self.items == 0 or index > #self.items then
		i.itemindex = 1
		table.insert(self.items, i)
	elseif index < 1 then
		i.itemindex = 1
		table.insert(self.items, 1, i)
	else
		i.itemindex = index
		table.insert(self.items, index, i)
	end
	self.count = self.count + 1
	self:setScrollHeight(self:getScrollHeight() + i.height)
	return i
end

function SFQuest_FactionLists:doDrawItem(y, item, alt)
	if y + self:getYScroll() >= self.height then return y + item.height end
	if y + item.height + self:getYScroll() <= 0 then return y + item.height end

	self:drawRectBorder(0, y, self:getWidth(), item.height, 0.5, self.borderColor.r, self.borderColor.g, self.borderColor.b)
	
	local itemPadY = (36 - self.fontHgt) / 2
	local r,g,b,a = 1.0,1.0,1.0,1.0

	local text = getText(item.name);
	self:drawText(text, 12, y+itemPadY, r, g, b, a, self.font);
	
	local totalWidth = self.width - 250;
	self:drawTextRight(getText(item.tiername), 220, y+itemPadY, r,g,b,a, self.font);
	self:drawRect(230, y+itemPadY+4, totalWidth, FONT_HGT_SMALL - 8, 0.05, 1.0, 1.0, 1.0);
	if item.reputation > 0 then
		local colorTable = SF_MissionPanel:getColor(item.tiercolor);
		local barR, barG, barB = colorTable[1], colorTable[2], colorTable[3];
		local repWidth = (totalWidth / item.repmax) * item.reputation;	
		self:drawRect(230, y+itemPadY+4, repWidth, FONT_HGT_SMALL - 8, 1.0, barR, barG, barB);
	end
	self:drawRectBorder(230, y+itemPadY+4, totalWidth, FONT_HGT_SMALL - 8, 1.0, 0.75, 0.75, 0.75);

	
	y = y + item.height
	return y;
end

function SFQuest_FactionLists:new(x, y, width, height, character, greyed)
	local o = ISScrollingListBox.new(self, x, y, width, height)
	o.character = character
	o.scriptItem = nil
	return o
end