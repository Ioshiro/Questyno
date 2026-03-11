require "ISUI/ISScrollingListBox"

SFQuest_MissionLists = ISScrollingListBox:derive("SFQuest_MissionLists")

local FONT_HGT_SMALL = getTextManager():getFontHeight(UIFont.Small)

function SFQuest_MissionLists:addItem(name, item)
    local i = item;
 	i.tooltip = nil;
    i.itemindex = self.count + 1;
	i.height = item.height or self.itemheight;
	if item.objectives and #item.objectives > 0 then
		i.height = self.itemheight;
		for obj=1, #item.objectives do
			if not item.objectives[obj].hidden then
				i.height = i.height + (self.fontHgt + 4);
			end
		end
		--print("item height with extra objectives returned: " .. tostring(i.height));
	end
    table.insert(self.items, i);
    self.count = self.count + 1;
    self:setScrollHeight(self:getScrollHeight()+i.height);
    return i;
end

function SFQuest_MissionLists:insertItem(index, name, item)
	local i = item
	i.tooltip = nil
	i.height = item.height or self.itemheight;
	if item.objectives and #item.objectives > 0 then
		i.height = self.itemheight;
		for obj=1, #item.objectives do
			if not item.objectives[obj].hidden then
				i.height = i.height + (self.fontHgt + 4);
			end
		end
	end
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

function SFQuest_MissionLists:doDrawItem(y, item, alt)
	if y + self:getYScroll() >= self.height then return y + item.height end
	if y + item.height + self:getYScroll() <= 0 then return y + item.height end

	self:drawRectBorder(0, y, self:getWidth(), item.height, 0.5, self.borderColor.r, self.borderColor.g, self.borderColor.b)

	local lore;
	if item.lore then
		if SF_MissionPanel.instance.expanded == item.guid then
			self:drawTexture( getTexture("media/ui/TreeExpanded.png"), 2, y+6/2, 1, 1, 1, 0.8);
		else
			self:drawTexture( getTexture("media/ui/TreeCollapsed.png"), 2, y+6/2, 1, 1, 1, 0.8);
		end
	end
	
	local texture = getTexture(item.texture) or nil
	if texture then
		local texWidth = texture:getWidthOrig()
		local texHeight = texture:getHeightOrig()
		local a = 1
		if texWidth <= 32 and texHeight <= 32 then
			self:drawTexture(texture,6+(32-texWidth)/2,y+(36-texHeight)/2,a,1,1,1)
		else
			self:drawTextureScaledAspect(texture,6,y+(36-texHeight)/2,32,32,a,1,1,1)
		end
	end

	local itemPadY = (36 - self.fontHgt) / 2
	local r,g,b,a = 0.5,0.5,0.5,1.0
	if not self.greyed then
		r,g,b = 1.0,1.0,1.0
	end
	

	local text = getText(item.text);
	if item.status then
		text = getText("IGUI_XP_TaskStatus_" .. item.status) .. getText(item.text);
	end

	self:drawText(text, 44, y+itemPadY, r, g, b, a, self.font);

	
	if item.objectives and #item.objectives > 0 then
		for i=1,#item.objectives do
			if not item.objectives[i].hidden then
				local objtext = getText(item.objectives[i].text)
				r,g,b = 0.5,0.5,0.5;
				if not self.greyed then
					r,g,b = 1.0,1.0,1.0;
				end
				if item.objectives[i].status then
					objtext = getText("IGUI_XP_TaskStatus_" .. item.objectives[i].status) .. getText(item.objectives[i].text);
					if item.objectives[i].status == "Failed" then
						r,g,b = 1.0,0.25,0.25;
					elseif  item.objectives[i].status == "Delivered" then
						r,g,b = 0.5,0.5,0.5;
					end
				end
				self:drawText(objtext, 6 + 32 + 26, y+itemPadY+((self.fontHgt + 4) * i), r, g, b, a, self.font);
			end
		end
	end	

	y = y + item.height
	return y;
end

function SFQuest_MissionLists:onMouseDown(x, y)
	local parent = SF_MissionPanel.instance;
	if #self.items == 0 then return end
	local row = self:rowAt(x, y)

	if row > #self.items then
		row = #self.items;
	end
	if row < 1 then
		row = 1;
	end

	self.selected = row;

        -- expand or collapse...
        --if x < 6 then
            if self.items[row].guid == parent.expanded then
                parent.expanded = nil;
				parent.loretitle = nil;
				parent.lore = {};
				parent.currentPage = 1;
				self:setHeight(self.originalheight);
				parent.titleLabel:setVisible(false);
				parent.pageLabel:setVisible(false);
				parent.nextPage:setVisible(false);
				parent.previousPage:setVisible(false);
				parent.richText:setVisible(false);
				getSoundManager():playUISound("UISelectListItem");
			elseif self.items[row].lore and #self.items[row].lore > 0 then
				self:setHeight(self.height2);
				parent.expanded = self.items[row].guid;
				parent.lore = self.items[row].lore;
				parent.currentPage = 1;
				parent.loretitle = getText(self.items[row].title) or "???";
				parent.titleLabel.name = getText(self.items[row].title) or "???";
				parent.titleLabel:setVisible(true);
				parent.pageLabel.name = getText("IGUI_Pages") .. tostring(parent.currentPage) .. "/" .. tostring(#parent.lore or 1);
				parent.pageLabel:setVisible(true);
				if #parent.lore == 1 then
					parent.nextPage:setEnable(false);
				else
					parent.nextPage:setEnable(true);				
				end
				parent.nextPage:setVisible(true);
				parent.previousPage:setVisible(true);
				parent.richText:setVisible(true);
				local text = self.items[row].lore[1];
				parent.richText.text = getText(text);
				getSoundManager():playUISound("UISelectListItem");
            end
			SF_MissionPanel.instance:triggerUpdate();	
        --end
end

function SFQuest_MissionLists:new(x, y, width, height, character, greyed)
	local o = ISScrollingListBox.new(self, x, y, width, height)
	o.originalheight = height
	o.height2 = height - 200;
	o.character = character
	o.greyed = greyed;
	return o
end