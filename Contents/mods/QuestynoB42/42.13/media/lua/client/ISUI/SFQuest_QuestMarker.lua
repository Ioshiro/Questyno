require "Foraging/forageSystem";
require "ISUI/ISPanel";
require "Foraging/ISBaseIcon";
SFQuest_Marker = ISBaseIcon:derive("SFQuest_Marker");

-------------------------------------------------
-------------------------------------------------
function SFQuest_Marker:updatePinIconPosition()
	self:updateZoom();
	self:updateAlpha();
	local dx, dy = self:getScreenDelta();
	self:setX(isoToScreenX(self.player, self.xCoord, self.yCoord, self.zCoord) + dx - self.width / 2);
	self:setY(isoToScreenY(self.player, self.xCoord, self.yCoord, self.zCoord) + dy + (self.pinOffset / self.zoom));
	self:setY(self.y - (30 / self.zoom) - (self.height) + (math.sin(self.bounceStep) * self.bounceHeight));
end

function SFQuest_Marker:initialise()
	ISBaseIcon.initialise(self);
	--
	self:findTextureCenter();
	self:findPinOffset();
	--self:initItemCount();
end
-------------------------------------------------
-------------------------------------------------
function SFQuest_Marker:new(_manager, _icon)
	local o = {};
	o = ISBaseIcon:new(_manager, _icon);
	setmetatable(o, self)
	self.__index = self;
	o.canMoveVertical			= true;
	o.iconClass					= "questIcon";
	o:initialise();
	return o;
end