require 'Definitions/HairOutfitDefinitions'

-- define possible haircut based on outfit
-- if nothing is defined for a outfit, we just pick a random one
-- the haircuts in ZombiesZoneDefinitions take precedence over this!
-- this is used mainly for stories, so when i spawn a punk, i want more chance to have a mohawk on him..

local cat = {};
cat.outfit = "TraderBandit";
cat.haircut = "LibertySpikes:5;MohawkFan:5;MohawkShort:5;MohawkSpike:5"; -- total should not exced 100! anything "left over" will be a random haircut
cat.haircutColor = "0.98,0.87,0:10;0.82,0.15,0.07:10;0.21,0.6,0.3:10;0.26,0.6,0.81:10"; -- forcing a haircut color, total should not exced 100 anything "left over" will be a random color from our default color
table.insert(HairOutfitDefinitions.haircutOutfitDefinition, cat);