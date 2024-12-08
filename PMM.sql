-- Config
-- By default, this SQL changes nothing and allows you to change the multiplication values.
-- You can only run one section at a time. If/ElseIf/Else situation.
-- ex: Setting @multiplyAll above 0 will always catch the IF statement.

-- Multiply All - Use this to multiplayer everything (herbs and ores).
SET @multiplyAll = 		:= 0;

-- Multiply By Group - Use this if you want to multiply groups by different values.
SET @herbMultiplyAll 	:= 0; -- Multiply ALL Herbs
SET @oreMultiplyAll 	:= 0; -- Multiply ALL Ores
 
-- Individual Multiplications - Use this to set the multiplication value of each individual material.
-- Herbs
SET @frostLotus 		:= 1;
SET @flameCap 			:= 1;
SET @liferoot 			:= 1;
SET @nightmareVine	 	:= 1;
SET @netherbloom 		:= 1;
SET @addersTongue 		:= 1;
SET @talandrasRose 		:= 1;
SET @swiftthistle 		:= 1;
SET @arthasTears 		:= 1;
SET @stranglekelp 		:= 1;
SET @purpleLotus 		:= 1;
SET @goldclover 		:= 1;
SET @lichbloom 			:= 1;
SET @tigerLily 			:= 1;
SET @sungrass 			:= 1;
SET @icethorn 			:= 1;
SET @wildvine 			:= 1;
SET @blackLotus 		:= 1;
SET @deadnettle 		:= 1;
SET @ancientLichen 		:= 1;
SET @briarthorn 		:= 1;
SET @mageroyal 			:= 1;
SET @firebloom 			:= 1;
SET @ghostMushroom 		:= 1;
SET @fadeleaf 			:= 1;
SET @goldthorn 			:= 1;
SET @terocone 			:= 1;
SET @felweed 			:= 1;
SET @wildSteelbloom 	:= 1;
SET @kingsblood 		:= 1;
SET @wintersbite 		:= 1;
SET @peacebloom 		:= 1;
SET @earthroot 			:= 1;
SET @manaThistle 		:= 1;
SET @silverleaf 		:= 1;
SET @gromsblood 		:= 1;
SET @goldenSansam 		:= 1;
SET @felLotus 			:= 1;
SET @bruiseweed 		:= 1;
SET @dreamfoil 			:= 1;
SET @blindweed 			:= 1;
SET @mountainSilversage := 1;
SET @graveMoss 			:= 1;
SET @icecap 			:= 1;
SET @ragveil 			:= 1;
SET @dreamingGlory 		:= 1;
SET @khadgarsWhisker 	:= 1;
SET @bloodvine 			:= 1;
SET @nightmareSeed 		:= 1;
SET @plaguebloom 		:= 1;
SET @bloodthistle 		:= 1;
SET @bloodScythe 		:= 1;

-- Ores
SET @adamantiteDeposit 				:= 1;
SET @alteracGranite 				:= 1;
SET @ancientGemVein 				:= 1;
SET @chunkofSaronite 				:= 1;
SET @cobaltDeposit 					:= 1;
SET @copperVein 					:= 1;
SET @darkIronDeposit 				:= 1;
SET @draenethystMineCrystal 		:= 1;
SET @felIronDeposit 				:= 1;
SET @goldVein 						:= 1;
SET @hakkariThoriumVein 			:= 1;
SET @incendiciteMineralVein 		:= 1;
SET @induriumMineralVein 			:= 1;
SET @ironDeposit 					:= 1;
SET @khoriumVein 					:= 1;
SET @largeObsidianChunk 			:= 1;
SET @lesserBloodstoneDeposit 		:= 1;
SET @mithrilDeposit 				:= 1;
SET @netherciteDeposit 				:= 1;
SET @nethervineCrystal 				:= 1;
SET @oozeCoveredGoldVein 			:= 1;
SET @oozeCoveredMithrilDeposit 		:= 1;
SET @oozeCoveredRichThoriumVein 	:= 1;
SET @oozeCoveredSilverVein 			:= 1;
SET @oozeCoveredThoriumVein 		:= 1;
SET @oozeCoveredTruesilverDeposit 	:= 1;
SET @pureSaroniteDeposit 			:= 1;
SET @richAdamantiteDeposit 			:= 1;
SET @richCobaltDeposit 				:= 1;
SET @richSaroniteDeposit 			:= 1;
SET @richThoriumVein 				:= 1;
SET @saroniteDeposit 				:= 1;
SET @silverVein 					:= 1;
SET @smallObsidianChunk 			:= 1;
SET @smallThoriumVein 				:= 1;
SET @tinVein 						:= 1;
SET @titaniumVein 					:= 1;
SET @truesilverDeposit 				:= 1;

DELIMITER $$

CREATE PROCEDURE RunMaterialUpdate()
BEGIN

	IF @multiplyAll > 0 THEN -- Multiply All
		-- Herbs
		UPDATE pool_template SET max_limit = max_limit * @multiplyAll WHERE
		description LIKE "%Frost Lotus%" OR
		description LIKE "%Flame Cap%" OR
		description LIKE "%Liferoot%" OR
		description LIKE "%Nightmare Vine%" OR
		description LIKE "%Netherbloom%" OR
		description LIKE "%Adder's Tongue%" OR
		description LIKE "%Talandra's Rose%" OR
		description LIKE "%Swiftthistle%" OR
		description LIKE "%Arthas' Tears%" OR
		description LIKE "%Stranglekelp%" OR
		description LIKE "%Purple Lotus%" OR
		description LIKE "%Goldclover%" OR
		description LIKE "%Lichbloom%" OR
		description LIKE "%Tiger Lily%" OR
		description LIKE "%Sungrass%" OR
		description LIKE "%Icethorn%" OR
		description LIKE "%Wildvine%" OR
		description LIKE "%Black Lotus%" OR
		description LIKE "%Deadnettle%" OR
		description LIKE "%Ancient Lichen%" OR
		description LIKE "%Briarthorn%" OR
		description LIKE "%Mageroyal%" OR
		description LIKE "%Firebloom%" OR
		description LIKE "%Ghost Mushroom%" OR
		description LIKE "%Fadeleaf%" OR
		description LIKE "%Goldthorn%" OR
		description LIKE "%Terocone%" OR
		description LIKE "%Felweed%" OR
		description LIKE "%Wild Steelbloom%" OR
		description LIKE "%Kingsblood%" OR
		description LIKE "%Wintersbite%" OR
		description LIKE "%Peacebloom%" OR
		description LIKE "%Earthroot%" OR
		description LIKE "%Mana Thistle%" OR
		description LIKE "%Silverleaf%" OR
		description LIKE "%Gromsblood%" OR
		description LIKE "%Golden Sansam%" OR
		description LIKE "%Fel Lotus%" OR
		description LIKE "%Bruiseweed%" OR
		description LIKE "%Dreamfoil%" OR
		description LIKE "%Blindweed%" OR
		description LIKE "%Mountain Silversage%" OR
		description LIKE "%Grave Moss%" OR
		description LIKE "%Icecap%" OR
		description LIKE "%Ragveil%" OR
		description LIKE "%Dreaming Glory%" OR
		description LIKE "%Khadgar's Whisker%" OR
		description LIKE "%Bloodvine%" OR
		description LIKE "%Nightmare Seed%" OR
		description LIKE "%Plaguebloom%" OR
		description LIKE "%Bloodthistle%" OR
		description LIKE "%Blood Scythe%";
		
		-- Ores
		UPDATE pool_template SET max_limit = max_limit * @multiplyAll WHERE
		description LIKE "%Adamantite Deposit%" OR
		description LIKE "%Alterac Granite%" OR
		description LIKE "%Ancient Gem Vein%" OR
		description LIKE "%Chunk of Saronite%" OR
		description LIKE "%Cobalt Deposit%" OR
		description LIKE "%Copper Vein%" OR
		description LIKE "%Dark Iron Deposit%" OR
		description LIKE "%Draenethyst Mine Crystal	%" OR
		description LIKE "%Fel Iron Deposit%" OR
		description LIKE "%Gold Vein%" OR
		description LIKE "%Hakkari Thorium Vein%" OR
		description LIKE "%Incendicite Mineral Vein%" OR
		description LIKE "%Indurium Mineral Vein%" OR
		description LIKE "%Iron Deposit%" OR
		description LIKE "%Khorium Vein%" OR
		description LIKE "%Large Obsidian Chunk%" OR
		description LIKE "%Lesser Bloodstone Deposit%" OR
		description LIKE "%Mithril Deposit%" OR
		description LIKE "%Nethercite Deposit%" OR
		description LIKE "%Nethervine Crystal%" OR
		description LIKE "%Ooze Covered Gold Vein%" OR
		description LIKE "%Ooze Covered Mithril Deposit%" OR
		description LIKE "%Ooze Covered Rich Thorium Vein%" OR
		description LIKE "%Ooze Covered Silver Vein%" OR
		description LIKE "%Ooze Covered Thorium Vein%" OR
		description LIKE "%Ooze Covered Truesilver Deposit%" OR
		description LIKE "%Pure Saronite Deposit%" OR
		description LIKE "%Rich Adamantite Deposit%" OR
		description LIKE "%Rich Cobalt Deposit%" OR
		description LIKE "%Rich Saronite Deposit%" OR
		description LIKE "%Rich Thorium Vein%" OR
		description LIKE "%Saronite Deposit%" OR
		description LIKE "%Silver Vein%" OR
		description LIKE "%Small Obsidian Chunk%" OR
		description LIKE "%Small Thorium Vein%" OR
		description LIKE "%Tin Vein%" OR
		description LIKE "%Titanium Vein%" OR
		description LIKE "%Truesilver Deposit%";
	
	ELSEIF @herbMultiplyAll > 0 OR @oreMultiplyAll > 0 THEN -- Multiply By Group
		-- Herbs
		UPDATE pool_template SET max_limit = max_limit * @herbMultiplyAll WHERE
		description LIKE "%Frost Lotus%" OR
		description LIKE "%Flame Cap%" OR
		description LIKE "%Liferoot%" OR
		description LIKE "%Nightmare Vine%" OR
		description LIKE "%Netherbloom%" OR
		description LIKE "%Adder's Tongue%" OR
		description LIKE "%Talandra's Rose%" OR
		description LIKE "%Swiftthistle%" OR
		description LIKE "%Arthas' Tears%" OR
		description LIKE "%Stranglekelp%" OR
		description LIKE "%Purple Lotus%" OR
		description LIKE "%Goldclover%" OR
		description LIKE "%Lichbloom%" OR
		description LIKE "%Tiger Lily%" OR
		description LIKE "%Sungrass%" OR
		description LIKE "%Icethorn%" OR
		description LIKE "%Wildvine%" OR
		description LIKE "%Black Lotus%" OR
		description LIKE "%Deadnettle%" OR
		description LIKE "%Ancient Lichen%" OR
		description LIKE "%Briarthorn%" OR
		description LIKE "%Mageroyal%" OR
		description LIKE "%Firebloom%" OR
		description LIKE "%Ghost Mushroom%" OR
		description LIKE "%Fadeleaf%" OR
		description LIKE "%Goldthorn%" OR
		description LIKE "%Terocone%" OR
		description LIKE "%Felweed%" OR
		description LIKE "%Wild Steelbloom%" OR
		description LIKE "%Kingsblood%" OR
		description LIKE "%Wintersbite%" OR
		description LIKE "%Peacebloom%" OR
		description LIKE "%Earthroot%" OR
		description LIKE "%Mana Thistle%" OR
		description LIKE "%Silverleaf%" OR
		description LIKE "%Gromsblood%" OR
		description LIKE "%Golden Sansam%" OR
		description LIKE "%Fel Lotus%" OR
		description LIKE "%Bruiseweed%" OR
		description LIKE "%Dreamfoil%" OR
		description LIKE "%Blindweed%" OR
		description LIKE "%Mountain Silversage%" OR
		description LIKE "%Grave Moss%" OR
		description LIKE "%Icecap%" OR
		description LIKE "%Ragveil%" OR
		description LIKE "%Dreaming Glory%" OR
		description LIKE "%Khadgar's Whisker%" OR
		description LIKE "%Bloodvine%" OR
		description LIKE "%Nightmare Seed%" OR
		description LIKE "%Plaguebloom%" OR
		description LIKE "%Bloodthistle%" OR
		description LIKE "%Blood Scythe%";
		
		-- Ores
		UPDATE pool_template SET max_limit = max_limit * @oreMultiplyAll WHERE
		description LIKE "%Adamantite Deposit%" OR
		description LIKE "%Alterac Granite%" OR
		description LIKE "%Ancient Gem Vein%" OR
		description LIKE "%Chunk of Saronite%" OR
		description LIKE "%Cobalt Deposit%" OR
		description LIKE "%Copper Vein%" OR
		description LIKE "%Dark Iron Deposit%" OR
		description LIKE "%Draenethyst Mine Crystal	%" OR
		description LIKE "%Fel Iron Deposit%" OR
		description LIKE "%Gold Vein%" OR
		description LIKE "%Hakkari Thorium Vein%" OR
		description LIKE "%Incendicite Mineral Vein%" OR
		description LIKE "%Indurium Mineral Vein%" OR
		description LIKE "%Iron Deposit%" OR
		description LIKE "%Khorium Vein%" OR
		description LIKE "%Large Obsidian Chunk%" OR
		description LIKE "%Lesser Bloodstone Deposit%" OR
		description LIKE "%Mithril Deposit%" OR
		description LIKE "%Nethercite Deposit%" OR
		description LIKE "%Nethervine Crystal%" OR
		description LIKE "%Ooze Covered Gold Vein%" OR
		description LIKE "%Ooze Covered Mithril Deposit%" OR
		description LIKE "%Ooze Covered Rich Thorium Vein%" OR
		description LIKE "%Ooze Covered Silver Vein%" OR
		description LIKE "%Ooze Covered Thorium Vein%" OR
		description LIKE "%Ooze Covered Truesilver Deposit%" OR
		description LIKE "%Pure Saronite Deposit%" OR
		description LIKE "%Rich Adamantite Deposit%" OR
		description LIKE "%Rich Cobalt Deposit%" OR
		description LIKE "%Rich Saronite Deposit%" OR
		description LIKE "%Rich Thorium Vein%" OR
		description LIKE "%Saronite Deposit%" OR
		description LIKE "%Silver Vein%" OR
		description LIKE "%Small Obsidian Chunk%" OR
		description LIKE "%Small Thorium Vein%" OR
		description LIKE "%Tin Vein%" OR
		description LIKE "%Titanium Vein%" OR
		description LIKE "%Truesilver Deposit%";
	
	ELSE -- Individual Multiplication
		-- Herbs
		UPDATE pool_template SET max_limit = max_limit * @frostLotus WHERE description LIKE "%Frost Lotus%";
		UPDATE pool_template SET max_limit = max_limit * @flameCap WHERE description LIKE "%Flame Cap%";
		UPDATE pool_template SET max_limit = max_limit * @liferoot WHERE description LIKE "%Liferoot%";
		UPDATE pool_template SET max_limit = max_limit * @nightmareVine WHERE description LIKE "%Nightmare Vine%";
		UPDATE pool_template SET max_limit = max_limit * @netherbloom WHERE description LIKE "%Netherbloom%";
		UPDATE pool_template SET max_limit = max_limit * @addersTongue WHERE description LIKE "%Adder's Tongue%";
		UPDATE pool_template SET max_limit = max_limit * @talandrasRose WHERE description LIKE "%Talandra's Rose%";
		UPDATE pool_template SET max_limit = max_limit * @swiftthistle WHERE description LIKE "%Swiftthistle%";
		UPDATE pool_template SET max_limit = max_limit * @arthasTears WHERE description LIKE "%Arthas' Tears%";
		UPDATE pool_template SET max_limit = max_limit * @stranglekelp WHERE description LIKE "%Stranglekelp%";
		UPDATE pool_template SET max_limit = max_limit * @purpleLotus WHERE description LIKE "%Purple Lotus%";
		UPDATE pool_template SET max_limit = max_limit * @goldclover WHERE description LIKE "%Goldclover%";
		UPDATE pool_template SET max_limit = max_limit * @lichbloom WHERE description LIKE "%Lichbloom%";
		UPDATE pool_template SET max_limit = max_limit * @tigerLily WHERE description LIKE "%Tiger Lily%";
		UPDATE pool_template SET max_limit = max_limit * @sungrass WHERE description LIKE "%Sungrass%";
		UPDATE pool_template SET max_limit = max_limit * @icethorn WHERE description LIKE "%Icethorn%";
		UPDATE pool_template SET max_limit = max_limit * @wildvine WHERE description LIKE "%Wildvine%";
		UPDATE pool_template SET max_limit = max_limit * @blackLotus WHERE description LIKE "%Black Lotus%";
		UPDATE pool_template SET max_limit = max_limit * @deadnettle WHERE description LIKE "%Deadnettle%";
		UPDATE pool_template SET max_limit = max_limit * @ancientLichen WHERE description LIKE "%Ancient Lichen%";
		UPDATE pool_template SET max_limit = max_limit * @briarthorn WHERE description LIKE "%Briarthorn%";
		UPDATE pool_template SET max_limit = max_limit * @mageroyal WHERE description LIKE "%Mageroyal%";
		UPDATE pool_template SET max_limit = max_limit * @firebloom WHERE description LIKE "%Firebloom%";
		UPDATE pool_template SET max_limit = max_limit * @ghostMushroom WHERE description LIKE "%Ghost Mushroom%";
		UPDATE pool_template SET max_limit = max_limit * @fadeleaf WHERE description LIKE "%Fadeleaf%";
		UPDATE pool_template SET max_limit = max_limit * @goldthorn WHERE description LIKE "%Goldthorn%";
		UPDATE pool_template SET max_limit = max_limit * @terocone WHERE description LIKE "%Terocone%";
		UPDATE pool_template SET max_limit = max_limit * @felweed WHERE description LIKE "%Felweed%";
		UPDATE pool_template SET max_limit = max_limit * @wildSteelbloom WHERE description LIKE "%Wild Steelbloom%";
		UPDATE pool_template SET max_limit = max_limit * @kingsblood WHERE description LIKE "%Kingsblood%";
		UPDATE pool_template SET max_limit = max_limit * @wintersbite WHERE description LIKE "%Wintersbite%";
		UPDATE pool_template SET max_limit = max_limit * @peacebloom WHERE description LIKE "%Peacebloom%";
		UPDATE pool_template SET max_limit = max_limit * @earthroot WHERE description LIKE "%Earthroot%";
		UPDATE pool_template SET max_limit = max_limit * @manaThistle WHERE description LIKE "%Mana Thistle%";
		UPDATE pool_template SET max_limit = max_limit * @silverleaf WHERE description LIKE "%Silverleaf%";
		UPDATE pool_template SET max_limit = max_limit * @gromsblood WHERE description LIKE "%Gromsblood%";
		UPDATE pool_template SET max_limit = max_limit * @goldenSansam WHERE description LIKE "%Golden Sansam%";
		UPDATE pool_template SET max_limit = max_limit * @felLotus WHERE description LIKE "%Fel Lotus%";
		UPDATE pool_template SET max_limit = max_limit * @bruiseweed WHERE description LIKE "%Bruiseweed%";
		UPDATE pool_template SET max_limit = max_limit * @dreamfoil WHERE description LIKE "%Dreamfoil%";
		UPDATE pool_template SET max_limit = max_limit * @blindweed WHERE description LIKE "%Blindweed%";
		UPDATE pool_template SET max_limit = max_limit * @mountainSilversage WHERE description LIKE "%Mountain Silversage%";
		UPDATE pool_template SET max_limit = max_limit * @graveMoss WHERE description LIKE "%Grave Moss%";
		UPDATE pool_template SET max_limit = max_limit * @icecap WHERE description LIKE "%Icecap%";
		UPDATE pool_template SET max_limit = max_limit * @ragveil WHERE description LIKE "%Ragveil%";
		UPDATE pool_template SET max_limit = max_limit * @dreamingGlory WHERE description LIKE "%Dreaming Glory%";
		UPDATE pool_template SET max_limit = max_limit * @khadgarsWhisker WHERE description LIKE "%Khadgar's Whisker%";
		UPDATE pool_template SET max_limit = max_limit * @bloodvine WHERE description LIKE "%Bloodvine%";
		UPDATE pool_template SET max_limit = max_limit * @nightmareSeed WHERE description LIKE "%Nightmare Seed%";
		UPDATE pool_template SET max_limit = max_limit * @plaguebloom WHERE description LIKE "%Plaguebloom%";
		UPDATE pool_template SET max_limit = max_limit * @bloodthistle WHERE description LIKE "%Bloodthistle%";
		UPDATE pool_template SET max_limit = max_limit * @bloodScythe WHERE description LIKE "%Blood Scythe%";
		
		-- Ores
		UPDATE pool_template SET max_limit = max_limit * @adamantiteDeposit WHERE description LIKE "%Adamantite Deposit%";
		UPDATE pool_template SET max_limit = max_limit * @alteracGranite WHERE description LIKE "%Alterac Granite%";
		UPDATE pool_template SET max_limit = max_limit * @ancientGemVein WHERE description LIKE "%Ancient Gem Vein%";
		UPDATE pool_template SET max_limit = max_limit * @chunkofSaronite WHERE description LIKE "%Chunk of Saronite%";
		UPDATE pool_template SET max_limit = max_limit * @cobaltDeposit WHERE description LIKE "%Cobalt Deposit%";
		UPDATE pool_template SET max_limit = max_limit * @copperVein WHERE description LIKE "%Copper Vein%";
		UPDATE pool_template SET max_limit = max_limit * @darkIronDeposit WHERE description LIKE "%Dark Iron Deposit%";
		UPDATE pool_template SET max_limit = max_limit * @draenethystMineCrystal WHERE description LIKE "%Draenethyst Mine Crystal	%";
		UPDATE pool_template SET max_limit = max_limit * @felIronDeposit WHERE description LIKE "%Fel Iron Deposit%";
		UPDATE pool_template SET max_limit = max_limit * @goldVein WHERE description LIKE "%Gold Vein%";
		UPDATE pool_template SET max_limit = max_limit * @hakkariThoriumVein WHERE description LIKE "%Hakkari Thorium Vein%";
		UPDATE pool_template SET max_limit = max_limit * @incendiciteMineralVein WHERE description LIKE "%Incendicite Mineral Vein%";
		UPDATE pool_template SET max_limit = max_limit * @induriumMineralVein WHERE description LIKE "%Indurium Mineral Vein%";
		UPDATE pool_template SET max_limit = max_limit * @ironDeposit WHERE description LIKE "%Iron Deposit%";
		UPDATE pool_template SET max_limit = max_limit * @khoriumVein WHERE description LIKE "%Khorium Vein%";
		UPDATE pool_template SET max_limit = max_limit * @largeObsidianChunk WHERE description LIKE "%Large Obsidian Chunk%";
		UPDATE pool_template SET max_limit = max_limit * @lesserBloodstoneDeposit WHERE description LIKE "%Lesser Bloodstone Deposit%";
		UPDATE pool_template SET max_limit = max_limit * @mithrilDeposit WHERE description LIKE "%Mithril Deposit%";
		UPDATE pool_template SET max_limit = max_limit * @netherciteDeposit WHERE description LIKE "%Nethercite Deposit%";
		UPDATE pool_template SET max_limit = max_limit * @nethervineCrystal WHERE description LIKE "%Nethervine Crystal%";
		UPDATE pool_template SET max_limit = max_limit * @oozeCoveredGoldVein WHERE description LIKE "%Ooze Covered Gold Vein%";
		UPDATE pool_template SET max_limit = max_limit * @oozeCoveredMithrilDeposit WHERE description LIKE "%Ooze Covered Mithril Deposit%";
		UPDATE pool_template SET max_limit = max_limit * @oozeCoveredRichThoriumVein WHERE description LIKE "%Ooze Covered Rich Thorium Vein%";
		UPDATE pool_template SET max_limit = max_limit * @oozeCoveredSilverVein WHERE description LIKE "%Ooze Covered Silver Vein%";
		UPDATE pool_template SET max_limit = max_limit * @oozeCoveredThoriumVein WHERE description LIKE "%Ooze Covered Thorium Vein%";
		UPDATE pool_template SET max_limit = max_limit * @oozeCoveredTruesilverDeposit WHERE description LIKE "%Ooze Covered Truesilver Deposit%";
		UPDATE pool_template SET max_limit = max_limit * @pureSaroniteDeposit WHERE description LIKE "%Pure Saronite Deposit%";
		UPDATE pool_template SET max_limit = max_limit * @richAdamantiteDeposit WHERE description LIKE "%Rich Adamantite Deposit%";
		UPDATE pool_template SET max_limit = max_limit * @richCobaltDeposit WHERE description LIKE "%Rich Cobalt Deposit%";
		UPDATE pool_template SET max_limit = max_limit * @richSaroniteDeposit WHERE description LIKE "%Rich Saronite Deposit%";
		UPDATE pool_template SET max_limit = max_limit * @richThoriumVein WHERE description LIKE "%Rich Thorium Vein%";
		UPDATE pool_template SET max_limit = max_limit * @saroniteDeposit WHERE description LIKE "%Saronite Deposit%";
		UPDATE pool_template SET max_limit = max_limit * @silverVein WHERE description LIKE "%Silver Vein%";
		UPDATE pool_template SET max_limit = max_limit * @smallObsidianChunk WHERE description LIKE "%Small Obsidian Chunk%";
		UPDATE pool_template SET max_limit = max_limit * @smallThoriumVein WHERE description LIKE "%Small Thorium Vein%";
		UPDATE pool_template SET max_limit = max_limit * @tinVein WHERE description LIKE "%Tin Vein%";
		UPDATE pool_template SET max_limit = max_limit * @titaniumVein WHERE description LIKE "%Titanium Vein%";
		UPDATE pool_template SET max_limit = max_limit * @truesilverDeposit WHERE description LIKE "%Truesilver Deposit%";

	END IF;
	
END$$

DELIMITER ;

CALL RunMaterialUpdate();

DROP PROCEDURE IF EXISTS RunMaterialUpdate;