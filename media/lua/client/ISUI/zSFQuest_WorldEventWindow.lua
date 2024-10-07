local original_SFQuest_WorldEventWindow_createChildren = SFQuest_WorldEventWindow.createChildren
function SFQuest_WorldEventWindow:createChildren()
	original_SFQuest_WorldEventWindow_createChildren(self)
	if self.dialogueinfo.sound then
		self.playTalk = getSoundManager():PlaySound(self.dialogueinfo.sound.begin, false, 0.0);
		getSoundManager():PlayAsMusic(self.dialogueinfo.sound.begin,self.playTalk,false,0);
        self.playTalk:setVolume(1);
	end
end

local original_SFQuest_WorldEventWindow_close = SFQuest_WorldEventWindow.close
function SFQuest_WorldEventWindow:close()
	original_SFQuest_WorldEventWindow_close(self)
	if self.playTalk then
		self.playTalk:stop()
	end
end

local original_SFQuest_WorldEventWindow_onOptionMouseDown= SFQuest_WorldEventWindow.onOptionMouseDown
function SFQuest_WorldEventWindow:onOptionMouseDown(button, x, y)
	if button.internal == "DECLINE" then
		if self.playTalk then
			self.playTalk:stop()
			if self.dialogueinfo.sound.decline then
				self.playTalk = getSoundManager():PlaySound(self.dialogueinfo.sound.decline, false, 0.0);
				getSoundManager():PlayAsMusic(self.dialogueinfo.sound.decline,self.playTalk,false,0);
        		self.playTalk:setVolume(1);
			end
		end
	end
	if button.internal == "ACCEPT" then
		if self.playTalk then
			self.playTalk:stop()
			if self.dialogueinfo.sound.accept then
				self.playTalk = getSoundManager():PlaySound(self.dialogueinfo.sound.accept, false, 0.0);
				getSoundManager():PlayAsMusic(self.dialogueinfo.sound.accept,self.playTalk,false,0);
        		self.playTalk:setVolume(1);
			end
		end
	end
	original_SFQuest_WorldEventWindow_onOptionMouseDown(self, button, x, y)
end
