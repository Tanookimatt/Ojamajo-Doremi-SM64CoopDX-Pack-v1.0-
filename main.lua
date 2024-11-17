-- name: [CS] Ojamajo Pack
-- description: Doremi, Hazuki & Aiko! \n\n\\#ff7777\\This pack requires Character Select\nto use as a Library!
-- deluxe: true
local globalModName = "tanuOJAMAJOS"
local E_MODEL_HAZUKI = smlua_model_util_get_id("hazuki_geo")
local E_MODEL_DOREMI = smlua_model_util_get_id("doremi_geo")
local E_MODEL_AIKO = smlua_model_util_get_id("aiko_geo")

local TEXT_MOD_NAME = "Ojamajo Doremi"

local DOREMI_SOUNDBANK = {
	--[CHAR_SOUND_OKEY_DOKEY] = 'CharaOKIEDOKIE.ogg', -- Starting game
	[CHAR_SOUND_HELLO] = 'doremiBaa.ogg',
	[CHAR_SOUND_LETS_A_GO] = 'doremiYata.ogg', -- Starting level
	[CHAR_SOUND_PUNCH_YAH] = 'doremiPu1(clean).ogg', -- Punch 1
	[CHAR_SOUND_PUNCH_WAH] = 'doremiPu2(clean).ogg', -- Punch 2
	[CHAR_SOUND_PUNCH_HOO] = 'doremiPu3(clean).ogg', -- Punch 3
	[CHAR_SOUND_YAH_WAH_HOO] = {'doremiSa.ogg', 'doremiAh.ogg', 'doremiHeh2.ogg'}, -- First/Second jump sounds
	[CHAR_SOUND_HOOHOO] = 'doremiEy.ogg', -- Third jump sound
	[CHAR_SOUND_YAHOO_WAHA_YIPPEE] = {'doremiKakkoii.ogg', 'doremiLucky.ogg', 'doremiIkouyo.ogg'}, -- Triple jump sounds
	[CHAR_SOUND_UH] = 'doremiDoh.ogg', -- Wall bonk
	[CHAR_SOUND_UH2] = 'doremiEh.ogg', -- Landing after long jump
	[CHAR_SOUND_UH2_2] = 'doremiEh.ogg', -- Same sound as UH2; jumping onto ledge
	[CHAR_SOUND_HAHA] = 'doremiHaha.ogg', -- Landing triple jump
	[CHAR_SOUND_YAHOO] = 'doremiHUEhh.ogg', -- Long jump
	[CHAR_SOUND_DOH] = 'doremiACKu.ogg', -- Long jump wall bonk
	[CHAR_SOUND_WHOA] = 'doremiUn.ogg', -- Grabbing ledge
	[CHAR_SOUND_EEUH] = 'doremiUuueu.ogg', -- Climbing over ledge
	[CHAR_SOUND_WAAAOOOW] = 'doremiScream.ogg', -- Falling a long distance
	[CHAR_SOUND_TWIRL_BOUNCE] = 'doremiDoh2.ogg', -- Bouncing off of a flower spring
	[CHAR_SOUND_GROUND_POUND_WAH] = 'doremiMo.ogg', 
	[CHAR_SOUND_HRMM] = 'doremiYoysho.ogg', -- Lifting something
	[CHAR_SOUND_HERE_WE_GO] = 'doremiLuckylucky.ogg', -- Star get
	[CHAR_SOUND_SO_LONGA_BOWSER] = 'doremiSoremoyada.ogg', -- Throwing Bowser
--DAMAGE
	[CHAR_SOUND_ATTACKED] = 'doremiDuaa.ogg', -- Damaged
	[CHAR_SOUND_OOOF] = 'doremiGaah.ogg',
    [CHAR_SOUND_OOOF2] = 'doremiDuah.ogg',
	[CHAR_SOUND_PANTING] = 'doremiPant.ogg', -- Low health
	[CHAR_SOUND_PANTING_COLD] = 'doremiTetetete.ogg',
	[CHAR_SOUND_ON_FIRE] = 'doremiEeeh.ogg', -- Burned
--SLEEP SOUNDS
	[CHAR_SOUND_IMA_TIRED] = 'doremiHeehh.ogg', -- Mario feeling tired
	[CHAR_SOUND_YAWNING] = 'doremiYawn.ogg', -- Mario yawning before he sits down to sleep
	[CHAR_SOUND_SNORING1] = 'doremiInhale.ogg', -- Snore Inhale
	[CHAR_SOUND_SNORING2] = 'doremiExhale.ogg', -- Exhale
	[CHAR_SOUND_SNORING3] = {'doremiExhale.ogg', 'doremiInhale.ogg', 'doremiSleeptalk.ogg'}, -- Sleep talking / mumbling
--COUGHING (USED IN THE GAS MAZE)
	[CHAR_SOUND_COUGHING1] = 'doremiCough1.ogg', -- Cough take 1
	[CHAR_SOUND_COUGHING2] = 'doremiCough2.ogg', -- Cough take 2
	[CHAR_SOUND_COUGHING3] = 'doremiCough3.ogg', -- Cough take 3
--DEATH
	[CHAR_SOUND_DYING] = 'doremiUnluckiestbishoujo.ogg', -- Dying from damage
	[CHAR_SOUND_DROWNING] = 'doremiSighBig.ogg', -- Running out of air underwater
	[CHAR_SOUND_MAMA_MIA] = {'doremiYadayada.ogg', 'doremiAitatata.ogg'} -- Booted out of level
}

local HAZUKI_SOUNDBANK = {
	--[CHAR_SOUND_OKEY_DOKEY] = 'CharaOKIEDOKIE.ogg', -- Starting game
	[CHAR_SOUND_HELLO] = 'hazukiSoloDebut.ogg',
	[CHAR_SOUND_LETS_A_GO] = 'hazukiHaii.ogg', -- Starting level
	[CHAR_SOUND_PUNCH_YAH] = 'hazukiMm.ogg', -- Punch 1
	[CHAR_SOUND_PUNCH_WAH] = 'hazukiMn.ogg', -- Punch 2
	[CHAR_SOUND_PUNCH_HOO] = 'hazukiHah.ogg', -- Punch 3
	[CHAR_SOUND_YAH_WAH_HOO] = {'hazukiMm.ogg', 'hazukiMn.ogg', 'hazukiAh3.ogg'}, -- First/Second jump sounds
	[CHAR_SOUND_HOOHOO] = 'hazukiMnn.ogg', -- Third jump sound
	[CHAR_SOUND_YAHOO_WAHA_YIPPEE] = {'hazukiHaii.ogg', 'hazukiSoyo.ogg', 'hazukiOkay.ogg'}, -- Triple jump sounds
	[CHAR_SOUND_UH] = 'hazukiA.ogg', -- Wall bonk
	[CHAR_SOUND_UH2] = 'hazukiE.ogg', -- Landing after long jump
	[CHAR_SOUND_UH2_2] = 'hazukiE.ogg', -- Same sound as UH2; jumping onto ledge
	[CHAR_SOUND_HAHA] = 'hazukiAra.ogg', -- Landing triple jump
	[CHAR_SOUND_YAHOO] = 'hazukiAaa.ogg', -- Long jump
	[CHAR_SOUND_DOH] = 'hazukiNe.ogg', -- Long jump wall bonk
	[CHAR_SOUND_WHOA] = 'hazukiHuhn.ogg', -- Grabbing ledge
	[CHAR_SOUND_EEUH] = 'hazukiHoii.ogg', -- Climbing over ledge
	[CHAR_SOUND_WAAAOOOW] = 'hazukiScreamEcho.ogg', -- Falling a long distance
	[CHAR_SOUND_TWIRL_BOUNCE] = 'hazukiSaa.ogg', -- Bouncing off of a flower spring
	[CHAR_SOUND_GROUND_POUND_WAH] = 'hazukiUn.ogg', 
	[CHAR_SOUND_HRMM] = 'hazukiMn2.ogg', -- Lifting something
	[CHAR_SOUND_HERE_WE_GO] = 'hazukiPachiPachiPachi.ogg', -- Star get
	[CHAR_SOUND_SO_LONGA_BOWSER] = 'hazukiScream.ogg', -- Throwing Bowser
--DAMAGE
	[CHAR_SOUND_ATTACKED] = 'hazukiAh.ogg', -- Damaged
	[CHAR_SOUND_OOOF] = "hazukiEeh.ogg",
    [CHAR_SOUND_OOOF2] = "hazukiHuUh.ogg",
	[CHAR_SOUND_PANTING] = 'hazukiPant.ogg', -- Low health
	[CHAR_SOUND_PANTING_COLD] = 'hazukiItata.ogg',
	[CHAR_SOUND_ON_FIRE] = 'hazukiKyaa2.ogg', -- Burned
--SLEEP SOUNDS
	[CHAR_SOUND_IMA_TIRED] = 'hazukiAno.ogg', -- Mario feeling tired
	[CHAR_SOUND_YAWNING] = 'hazukiHaah.ogg', -- Mario yawning before he sits down to sleep
	[CHAR_SOUND_SNORING1] = 'hazukiMm2.ogg', -- Snore Inhale
	[CHAR_SOUND_SNORING2] = 'hazukiSigh.ogg', -- Exhale
	[CHAR_SOUND_SNORING3] = {'hazukiMm2.ogg', 'hazukiSigh.ogg', 'hazukiHumming.ogg'}, -- Sleep talking / mumbling
--COUGHING (USED IN THE GAS MAZE)
	[CHAR_SOUND_COUGHING1] = 'hazukiNerves1.ogg', -- Cough take 1
	[CHAR_SOUND_COUGHING2] = 'hazukiNerves2.ogg', -- Cough take 2
	[CHAR_SOUND_COUGHING3] = 'hazukiNerves3.ogg', -- Cough take 3
--DEATH
	[CHAR_SOUND_DYING] = {'hazukiAtATimeLikeThis.ogg', 'hazukiAhMario.ogg'}, -- Dying from damage
	[CHAR_SOUND_DROWNING] = 'hazukiGiggle2.ogg', -- Running out of air underwater
	[CHAR_SOUND_MAMA_MIA] = 'hazukiSokana.ogg' -- Booted out of level
}

local AIKO_SOUNDBANK = {
	--[CHAR_SOUND_OKEY_DOKEY] = 'CharaOKIEDOKIE.ogg', -- Starting game
	[CHAR_SOUND_HELLO] = 'aikoKeptYouWaiting.ogg',
	[CHAR_SOUND_LETS_A_GO] = 'aikoLeaveittome.ogg', -- Starting level
	[CHAR_SOUND_PUNCH_YAH] = 'aikoHue.ogg', -- Punch 1
	[CHAR_SOUND_PUNCH_WAH] = 'aikoHouh.ogg', -- Punch 2
	[CHAR_SOUND_PUNCH_HOO] = 'aikoYo.ogg', -- Punch 3
	[CHAR_SOUND_YAH_WAH_HOO] = {'aikoHue.ogg', 'aikoHouh.ogg', 'aikoHa.ogg'}, -- First/Second jump sounds
	[CHAR_SOUND_HOOHOO] = 'aikoMa.ogg', -- Third jump sound
	[CHAR_SOUND_YAHOO_WAHA_YIPPEE] = {'aikoHaa.ogg', 'aikoYosha.ogg', 'aikoThatsIt.ogg'}, -- Triple jump sounds
	[CHAR_SOUND_UH] = 'aikoUn.ogg', -- Wall bonk
	[CHAR_SOUND_UH2] = 'aikoHona.ogg', -- Landing after long jump
	[CHAR_SOUND_UH2_2] = 'aikoHona.ogg', -- Same sound as UH2; jumping onto ledge
	[CHAR_SOUND_HAHA] = 'aikoHaa2.ogg', -- Landing triple jump
	[CHAR_SOUND_YAHOO] = 'aikoKsaa.ogg', -- Long jump
	[CHAR_SOUND_DOH] = 'aikoHuh.ogg', -- Long jump wall bonk
	[CHAR_SOUND_WHOA] = 'aikoAh2.ogg', -- Grabbing ledge
	[CHAR_SOUND_EEUH] = 'aikoMoh.ogg', -- Climbing over ledge
	[CHAR_SOUND_WAAAOOOW] = 'aikoNanyakore.ogg', -- Falling a long distance
	[CHAR_SOUND_TWIRL_BOUNCE] = 'aikoMyo.ogg', -- Bouncing off of a flower spring
	[CHAR_SOUND_GROUND_POUND_WAH] = 'aikoHaa0.ogg', 
	[CHAR_SOUND_HRMM] = 'aikoMmmm.ogg', -- Lifting something
	[CHAR_SOUND_HERE_WE_GO] = 'aikoYoshaBig.ogg', -- Star get
	[CHAR_SOUND_SO_LONGA_BOWSER] = 'aikoNoway.ogg', -- Throwing Bowser
--DAMAGE
	[CHAR_SOUND_ATTACKED] = 'aikoHuah.ogg', -- Damaged
	[CHAR_SOUND_OOOF] = "aikoOoaa.ogg",
    [CHAR_SOUND_OOOF2] = "aikoAhm.ogg",
	[CHAR_SOUND_PANTING] = 'aikoMm.ogg', -- Low health
	[CHAR_SOUND_PANTING_COLD] = 'aikoEh.ogg',
	[CHAR_SOUND_ON_FIRE] = 'aikoHuaah.ogg', -- Burned
--SLEEP SOUNDS
	[CHAR_SOUND_IMA_TIRED] = 'aikoSigh.ogg', -- Mario feeling tired
	[CHAR_SOUND_YAWNING] = 'aikoAhAaah.ogg', -- Mario yawning before he sits down to sleep
	[CHAR_SOUND_SNORING1] = 'aikoInhale.ogg', -- Snore Inhale
	[CHAR_SOUND_SNORING2] = 'aikoExhale.ogg', -- Exhale
	[CHAR_SOUND_SNORING3] = {'aikoInhale.ogg', 'aikoExhale.ogg', 'aikoTakoyaki.ogg'}, -- Sleep talking / mumbling
--COUGHING (USED IN THE GAS MAZE)
	[CHAR_SOUND_COUGHING1] = 'aikoCough1.ogg', -- Cough take 1
	[CHAR_SOUND_COUGHING2] = 'aikoGasp.ogg', -- Cough take 2
	[CHAR_SOUND_COUGHING3] = 'aikoGasp2.ogg', -- Cough take 3
--DEATH
	[CHAR_SOUND_DYING] = 'aikoThisAintGonnaWork.ogg', -- Dying from damage
	[CHAR_SOUND_DROWNING] = 'aikoHuuaa.ogg', -- Running out of air underwater
	[CHAR_SOUND_MAMA_MIA] = 'aikoOioi.ogg' -- Booted out of level
}

--[[
local CHARA_CAPMODELS = { -- cap code
	normal = smlua_model_util_get_id("chara_skl_cap_geo"),
	wing = smlua_model_util_get_id("chara_skl_cap_wing_geo"),
	metal = smlua_model_util_get_id("chara_skl_cap_metal_geo"),
	metalWing = smlua_model_util_get_id("chara_skl_cap_metal_wing_geo"),
}
--]]

local DOREMI_PALETTE = {
	[PANTS] = "773781",
	[SHIRT] = "FFD3F0",
	[GLOVES] = "ffffff",
	[SHOES] = "FF8FB4",
	[HAIR] = "943348",
	[SKIN] = "FFD5CB",
	[CAP] = "F3D9FF",
	[EMBLEM] = "FFDD4F",
}

local HAZUKI_PALETTE = {
	[PANTS] = "FFC18B",
	[SHIRT] = "FFD7AB",
	[GLOVES] = "ffffff",
	[SHOES] = "FFA09C",
	[HAIR] = "865232",
	[SKIN] = "FFD5CB",
	[CAP] = "ffffff",
	[EMBLEM] = "000000",
}

local AIKO_PALETTE = {
	[PANTS] = "3E7097",
	[SHIRT] = "FFD3F0",
	[GLOVES] = "ffffff",
	[SHOES] = "CDAB9D",
	[HAIR] = "2B4174",
	[SKIN] = "F7C6AB",
	[CAP] = "ffffff",
	[EMBLEM] = "000000",
}

if _G.charSelectExists and SM64COOPDX_VERSION then
	local curVers = _G.charSelect.version_get()
	if not tonumber(curVers) then -- if this cannot be simplified to a number, there's other strings in this
		curVers = string.gsub(curVers, "[%a%s_()!?:,@#-]+", "") -- removing all letters, spaces, and the chars in the [set]
		
		curVers = curVers:gsub("%.", "X", 1):gsub("%.", ""):gsub("X", ".") -- removes all instances except the first decimal point
	end
	curVers = tonumber(curVers)
	
	local charNum = _G.charSelect.character_add("Doremi", {"Pirika Pirilala Popolina Peperuto!", "-Doremi Harukaze",}, "tanukimatt", { r = 235, g = 52, b = 113 }, E_MODEL_DOREMI, CT_MARIO, get_texture_info("doremi_icon"))
	local charNum = _G.charSelect.character_add("Hazuki", {"Paipai Ponpoi Puwapuwa Puu!", "-Hazuki Fujiwara",}, "tanukimatt", { r = 255, g = 118, b = 33 }, E_MODEL_HAZUKI, CT_MARIO, get_texture_info("hazuki_icon"))
	local charNum = _G.charSelect.character_add("Aiko", {"Pameruku Raruku Rarirori Poppun!", "-Aiko Senoo",}, "tanukimatt", { r = 33, g = 89, b = 255 }, E_MODEL_AIKO, CT_MARIO, get_texture_info("aiko_icon"))
	--_G.charSelect.character_add_caps(E_MODEL_DOREMI, CHARA_CAPMODELS) -- cap code
	_G.charSelect.character_add_voice(E_MODEL_DOREMI, DOREMI_SOUNDBANK)
	_G.charSelect.character_add_palette_preset(E_MODEL_DOREMI, DOREMI_PALETTE)

	--_G.charSelect.character_add_caps(E_MODEL_HAZUKI, CHARA_CAPMODELS) -- cap code
	_G.charSelect.character_add_voice(E_MODEL_HAZUKI, HAZUKI_SOUNDBANK)
	_G.charSelect.character_add_palette_preset(E_MODEL_HAZUKI, HAZUKI_PALETTE)

	--_G.charSelect.character_add_caps(E_MODEL_AIKO, CHARA_CAPMODELS) -- cap code
	_G.charSelect.character_add_voice(E_MODEL_AIKO, AIKO_SOUNDBANK)
	_G.charSelect.character_add_palette_preset(E_MODEL_AIKO, AIKO_PALETTE)

	
	hook_event(HOOK_CHARACTER_SOUND, function (m, sound)
		if _G.charSelect.character_get_voice(m) == DOREMI_SOUNDBANK then return _G.charSelect.voice.sound(m, sound) end
		if _G.charSelect.character_get_voice(m) == HAZUKI_SOUNDBANK then return _G.charSelect.voice.sound(m, sound) end
		if _G.charSelect.character_get_voice(m) == AIKO_SOUNDBANK then return _G.charSelect.voice.sound(m, sound) end
	end)
	hook_event(HOOK_MARIO_UPDATE, function (m)
		if _G.charSelect.character_get_voice(m) == DOREMI_SOUNDBANK then return _G.charSelect.voice.snore(m) end
		if _G.charSelect.character_get_voice(m) == HAZUKI_SOUNDBANK then return _G.charSelect.voice.snore(m) end
		if _G.charSelect.character_get_voice(m) == AIKO_SOUNDBANK then return _G.charSelect.voice.snore(m) end
	end)
else
    djui_popup_create("\\#ffffdc\\\n"..globalModName.."\nRequires the Character Select Mod\nto use as a Library!\n\nPlease turn on the Character Select Mod\nand Restart the Room!", 6)
end