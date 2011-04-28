SET @GUID := 152021 ; -- Set GUID

SET @BG_Zar := 32832;
SET @Moonstrike := 32834;
SET @ZomBocom := 31865;
SET @Xazi := 31864;
SET @Nargle := 31863;
SET @Krezzik := 32405;
SET @Argex := 32407;
SET @Thunderhorn := 32383;
SET @Doris := 32385;
SET @Tristia := 32380;
SET @Dirgehammer := 32381;

DELETE FROM `creature` WHERE `id` IN (@BG_Zar,@Moonstrike,@ZomBocom,@Xazi,@Nargle,@Kezzik,@Argex,@Thunderhorn,@Doris,@Tristia,@Dirgehammer);
INSERT INTO creature
(`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`)
VALUES
(@GUID,@Nargle,571,1,1,26463,0,5753.74,585.413,615.052,0,180,0,0,1,0,0,0,0,0,0), -- Nargle Lashcord
(@GUID+1,@Argex,1,1,1,27953,0,-7123.33,-3766.68,9.40339,0,180,0,0,1,0,0,0,0,0,0), -- Argex Irongut
(@GUID+2,@Krezzik,530,1,1,0,0,3066.45,3638.87,145.218,0.875901,120,0,0,1,0,0,0,0,0,0), -- Krezzik the Striker
(@GUID+3,@Xazi,571,1,1,26464,0,5751.54,584.66,615.052,0,180,0,0,1,0,0,0,0,0,0), -- Xazi Smolderpipe
(@GUID+4,@ZomBocom,571,1,1,26465,0,5751.73,582.943,615.052,0,180,0,0,1,0,0,0,0,0,0), -- Zom Bocom
(@GUID+5,@Doris,1,1,1,0,0,1673.07,-4201.89,56.3826,3.62927,25,0,0,55888,0,0,0,0,0,0), -- Doris
(@GUID+6,@BG_Zar,1,1,1,0,0,1670.17,-4199.26,56.3827,3.98664,25,0,0,11828,0,0,0,0,0,0), -- BG_Zar
(@GUID+7,@Thunderhorn,1,1,1,0,0,1669.09,-4196.78,56.3827,4.10416,25,0,0,11828,0,0,0,0,0,0), -- Thunderhorn
(@GUID+8,@Moonstrike,0,1,1,28301,0,-8775.85,423.96,105.233,5.73298,180,0,0,11828,0,0,0,0,0,0), -- Moonstrike
(@GUID+9,@Tristia,0,1,1,21512,0,-8773.78,425.804,105.233,4.80621,180,0,0,11828,0,0,0,0,0,0), -- Tristia
(@GUID+10,@Dirgehammer,0,1,1,12917,0,-8781.18,419.883,105.233,6.18459,180,0,0,7048,0,0,0,0,0,0); -- Dirgehammer

DELETE FROM `game_event_creature` WHERE `event`=57;
INSERT INTO `game_event_creature` (`guid`,`event`) VALUES
(@GUID,57), -- Nargle Lashcord (31863)
(@GUID+1,57), -- Argex Irongut (32407)
(@GUID+2,57), -- Krezzik the Striker (32405)
(@GUID+3,57), -- Xazi Smolderpipe (31864)
(@GUID+4,57), -- Zom Bocom (31865)
(@GUID+5,57), -- Doris Volanthius (32385)
(@GUID+6,57), -- Blood Guard Zar'shi (32832)
(@GUID+7,57), -- Sergeant Thunderhorn (32383)
(@GUID+8,57), -- Knight Lieutenant Moonstrike (32834)
(@GUID+9,57), -- Lieutenant Tristia (32380)
(@GUID+10,57); -- Captain Dirgehammer (32381)
-- ----------------------
-- -- Vendor Templates --
-- ---------------------- 
SET @31600HP := 2560;
SET @38000HP := 2561;
SET @1660RT_39400HP := 2564;
SET @1750RT_47400HP := 2565;
SET @1600RT_47400HP := 2566;
SET @1690RT_47400HP := 2567;
SET @49600HP := 2559;
SET @50000HP := 2570;
SET @60000HP := 2569;
SET @1800RT_62000HP := 2568;
SET @1720RT_62000HP := 2563;
SET @1630RT_62000HP := 2562;
SET @7200HP_200AP := 2443;
SET @9600HP_275AP := 2445;
SET @12000HP_350AP := 2440;
SET @1615RT_7200HP_400AP := 2452;
SET @1775RT_9600HP_550AP := 2459;
SET @1645RT_12000HP_700AP := 2454;
SET @1735RT_12000HP_700AP := 2453;
SET @1675RT_12000HP_700AP := 2451;
SET @1930RT_2250AP := 2469;
SET @1930RT_1200AP := 2468;
SET @1930RT_4500AP := 2460;
SET @1930RT_3150AP := 2466;
SET @1930RT_1350AP := 2467;
SET @1750RT_1350AP := 2463;
SET @2050RT_1750AP := 2470;
SET @1810RT_2250AP := 2465;
SET @1870RT_2250AP := 2462;
SET @1990RT_2250AP := 2464;

-- Vendor Defines:
SET @BG_Zar := 32832; -- (34061/34062/34063) as s6/s7/s8?
SET @Moonstrike := 32834; -- (34082/34083/34084) as s6/s7/s8?
SET @ZomBocom := 31865; -- (or 29541 or 40205)
SET @Xazi := 31864; -- (or 29540 or 40210)
SET @Nargle := 31863; -- (or 29539 or 40211)
SET @Kezzik := 32405; -- (or 32356 or 40207)
SET @Argex := 32407; -- (or 32359 or 40215)
SET @Thunderhorn := 32383; -- (most likely) (34036/34037/34038) as s6/s7/s8?
SET @Doris := 32385; -- (most likely) (34058/34059/34060) as s6/s7/s8?
SET @Tristia := 32380; -- (most likely) (34076,34077,34078) as s6/s7/s8?

DELETE FROM `npc_vendor` WHERE `entry` IN (@BG_Zar,@Moonstrike,@ZomBocom,@Xazi,@Nargle,@Kezzik,@Argex,@Thunderhorn,@Doris,@Tristia);
INSERT INTO `npc_vendor` 
(`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`)
VALUES 
-- Spacer
(@BG_Zar,0,40779,0,0,@60000HP), -- Savage Gladiator Chest DK
(@BG_Zar,0,40799,0,0,@50000HP), -- Savage Gladiator Gloves DK
(@BG_Zar,0,40817,0,0,@60000HP), -- Savage Gladiator Helm DK
(@BG_Zar,0,40837,0,0,@60000HP), -- Savage Gladiator Legs DK
(@BG_Zar,0,40857,0,0,@50000HP), -- Savage Gladiator Shoulders DK
(@BG_Zar,0,41272,0,0,@60000HP), -- Savage Gladiator Chest Druid1
(@BG_Zar,0,41268,0,0,@50000HP), -- Savage Gladiator Gloves Druid1
(@BG_Zar,0,41269,0,0,@60000HP), -- Savage Gladiator Helm Druid1
(@BG_Zar,0,41270,0,0,@60000HP), -- Savage Gladiator Legs Druid1
(@BG_Zar,0,41271,0,0,@50000HP), -- Savage Gladiator Shoulders Druid1
(@BG_Zar,0,41658,0,0,@60000HP), -- Savage Gladiator Chest Druid2
(@BG_Zar,0,41770,0,0,@50000HP), -- Savage Gladiator Gloves Druid2
(@BG_Zar,0,41675,0,0,@60000HP), -- Savage Gladiator Helm Druid2
(@BG_Zar,0,41664,0,0,@60000HP), -- Savage Gladiator Legs Druid2
(@BG_Zar,0,41712,0,0,@50000HP), -- Savage Gladiator Shoulders Druid2
(@BG_Zar,0,41313,0,0,@60000HP), -- Savage Gladiator Chest Druid3
(@BG_Zar,0,41290,0,0,@50000HP), -- Savage Gladiator Gloves Druid3
(@BG_Zar,0,41324,0,0,@60000HP), -- Savage Gladiator Helm Druid3
(@BG_Zar,0,41301,0,0,@60000HP), -- Savage Gladiator Legs Druid3
(@BG_Zar,0,41278,0,0,@50000HP), -- Savage Gladiator Shoulders Druid3
(@BG_Zar,0,41084,0,0,@60000HP), -- Savage Gladiator Chest Hunter
(@BG_Zar,0,41140,0,0,@50000HP), -- Savage Gladiator Gloves Hunter
(@BG_Zar,0,41154,0,0,@60000HP), -- Savage Gladiator Helm Hunter
(@BG_Zar,0,41202,0,0,@60000HP), -- Savage Gladiator Legs Hunter
(@BG_Zar,0,41214,0,0,@50000HP), -- Savage Gladiator Shoulders Hunter
(@BG_Zar,0,41949,0,0,@60000HP), -- Savage Gladiator Chest Mage
(@BG_Zar,0,41968,0,0,@50000HP), -- Savage Gladiator Gloves Mage
(@BG_Zar,0,41943,0,0,@60000HP), -- Savage Gladiator Helm Mage
(@BG_Zar,0,41956,0,0,@60000HP), -- Savage Gladiator Legs Mage
(@BG_Zar,0,41962,0,0,@50000HP), -- Savage Gladiator Shoulders Mage
(@BG_Zar,0,40898,0,0,@60000HP), -- Savage Gladiator Chest Paladin1
(@BG_Zar,0,40918,0,0,@50000HP), -- Savage Gladiator Gloves Paladin1
(@BG_Zar,0,40930,0,0,@60000HP), -- Savage Gladiator Helm Paladin1
(@BG_Zar,0,40936,0,0,@60000HP), -- Savage Gladiator Legs Paladin1
(@BG_Zar,0,40960,0,0,@50000HP), -- Savage Gladiator Shoulders Paladin1
(@BG_Zar,0,40780,0,0,@60000HP), -- Savage Gladiator Chest Paladin2
(@BG_Zar,0,40798,0,0,@50000HP), -- Savage Gladiator Gloves Paladin2
(@BG_Zar,0,40818,0,0,@60000HP), -- Savage Gladiator Helm Paladin2
(@BG_Zar,0,40838,0,0,@60000HP), -- Savage Gladiator Legs Paladin2
(@BG_Zar,0,40858,0,0,@50000HP), -- Savage Gladiator Shoulders Paladin2
(@BG_Zar,0,41851,0,0,@60000HP), -- Savage Gladiator Chest Priest1
(@BG_Zar,0,41847,0,0,@50000HP), -- Savage Gladiator Gloves Priest1
(@BG_Zar,0,41848,0,0,@60000HP), -- Savage Gladiator Helm Priest1
(@BG_Zar,0,41849,0,0,@60000HP), -- Savage Gladiator Legs Priest1
(@BG_Zar,0,41850,0,0,@50000HP), -- Savage Gladiator Shoulders Priest1
(@BG_Zar,0,41918,0,0,@60000HP), -- Savage Gladiator Chest Priest2
(@BG_Zar,0,41937,0,0,@50000HP), -- Savage Gladiator Gloves Priest2
(@BG_Zar,0,41912,0,0,@60000HP), -- Savage Gladiator Helm Priest2
(@BG_Zar,0,41924,0,0,@60000HP), -- Savage Gladiator Legs Priest2
(@BG_Zar,0,41930,0,0,@50000HP), -- Savage Gladiator Shoulders Priest2
(@BG_Zar,0,41647,0,0,@60000HP), -- Savage Gladiator Chest Rogue
(@BG_Zar,0,41643,0,0,@50000HP), -- Savage Gladiator Gloves Rogue
(@BG_Zar,0,41644,0,0,@60000HP), -- Savage Gladiator Helm Rogue
(@BG_Zar,0,41645,0,0,@60000HP), -- Savage Gladiator Legs Rogue
(@BG_Zar,0,41646,0,0,@50000HP), -- Savage Gladiator Shoulders Rogue
(@BG_Zar,0,41078,0,0,@60000HP), -- Savage Gladiator Chest Shaman1
(@BG_Zar,0,41134,0,0,@50000HP), -- Savage Gladiator Gloves Shaman1
(@BG_Zar,0,41148,0,0,@60000HP), -- Savage Gladiator Helm Shaman1
(@BG_Zar,0,41160,0,0,@60000HP), -- Savage Gladiator Legs Shaman1
(@BG_Zar,0,41208,0,0,@50000HP), -- Savage Gladiator Shoulders Shaman1
(@BG_Zar,0,40987,0,0,@60000HP), -- Savage Gladiator Chest Shaman2
(@BG_Zar,0,41004,0,0,@50000HP), -- Savage Gladiator Gloves Shaman2
(@BG_Zar,0,41016,0,0,@60000HP), -- Savage Gladiator Helm Shaman2
(@BG_Zar,0,41030,0,0,@60000HP), -- Savage Gladiator Legs Shaman2
(@BG_Zar,0,41041,0,0,@50000HP), -- Savage Gladiator Shoulders Shaman2
(@BG_Zar,0,40986,0,0,@60000HP), -- Savage Gladiator Chest Shaman3
(@BG_Zar,0,40998,0,0,@50000HP), -- Savage Gladiator Gloves Shaman3
(@BG_Zar,0,41010,0,0,@60000HP), -- Savage Gladiator Helm Shaman3
(@BG_Zar,0,41023,0,0,@60000HP), -- Savage Gladiator Legs Shaman3
(@BG_Zar,0,41024,0,0,@50000HP), -- Savage Gladiator Shoulders Shaman3
(@BG_Zar,0,41996,0,0,@60000HP), -- Savage Gladiator Chest Warlock
(@BG_Zar,0,42014,0,0,@50000HP), -- Savage Gladiator Gloves Warlock
(@BG_Zar,0,41990,0,0,@60000HP), -- Savage Gladiator Helm Warlock
(@BG_Zar,0,42002,0,0,@60000HP), -- Savage Gladiator Legs Warlock
(@BG_Zar,0,42008,0,0,@50000HP), -- Savage Gladiator Shoulders Warlock
(@BG_Zar,0,40778,0,0,@60000HP), -- Savage Gladiator Chest Warrior
(@BG_Zar,0,40797,0,0,@50000HP), -- Savage Gladiator Gloves Warrior
(@BG_Zar,0,40816,0,0,@60000HP), -- Savage Gladiator Helm Warrior
(@BG_Zar,0,40836,0,0,@60000HP), -- Savage Gladiator Legs Warrior
(@BG_Zar,0,40856,0,0,@50000HP), -- Savage Gladiator Shoulders Warrior
-- Spacer
(@Moonstrike,0,40779,0,0,@60000HP), -- Savage Gladiator Chest DK
(@Moonstrike,0,40799,0,0,@50000HP), -- Savage Gladiator Gloves DK
(@Moonstrike,0,40817,0,0,@60000HP), -- Savage Gladiator Helm DK
(@Moonstrike,0,40837,0,0,@60000HP), -- Savage Gladiator Legs DK
(@Moonstrike,0,40857,0,0,@50000HP), -- Savage Gladiator Shoulders DK
(@Moonstrike,0,41272,0,0,@60000HP), -- Savage Gladiator Chest Druid1
(@Moonstrike,0,41268,0,0,@50000HP), -- Savage Gladiator Gloves Druid1
(@Moonstrike,0,41269,0,0,@60000HP), -- Savage Gladiator Helm Druid1
(@Moonstrike,0,41270,0,0,@60000HP), -- Savage Gladiator Legs Druid1
(@Moonstrike,0,41271,0,0,@50000HP), -- Savage Gladiator Shoulders Druid1
(@Moonstrike,0,41658,0,0,@60000HP), -- Savage Gladiator Chest Druid2
(@Moonstrike,0,41770,0,0,@50000HP), -- Savage Gladiator Gloves Druid2
(@Moonstrike,0,41675,0,0,@60000HP), -- Savage Gladiator Helm Druid2
(@Moonstrike,0,41664,0,0,@60000HP), -- Savage Gladiator Legs Druid2
(@Moonstrike,0,41712,0,0,@50000HP), -- Savage Gladiator Shoulders Druid2
(@Moonstrike,0,41313,0,0,@60000HP), -- Savage Gladiator Chest Druid3
(@Moonstrike,0,41290,0,0,@50000HP), -- Savage Gladiator Gloves Druid3
(@Moonstrike,0,41324,0,0,@60000HP), -- Savage Gladiator Helm Druid3
(@Moonstrike,0,41301,0,0,@60000HP), -- Savage Gladiator Legs Druid3
(@Moonstrike,0,41278,0,0,@50000HP), -- Savage Gladiator Shoulders Druid3
(@Moonstrike,0,41084,0,0,@60000HP), -- Savage Gladiator Chest Hunter
(@Moonstrike,0,41140,0,0,@50000HP), -- Savage Gladiator Gloves Hunter
(@Moonstrike,0,41154,0,0,@60000HP), -- Savage Gladiator Helm Hunter
(@Moonstrike,0,41202,0,0,@60000HP), -- Savage Gladiator Legs Hunter
(@Moonstrike,0,41214,0,0,@50000HP), -- Savage Gladiator Shoulders Hunter
(@Moonstrike,0,41949,0,0,@60000HP), -- Savage Gladiator Chest Mage
(@Moonstrike,0,41968,0,0,@50000HP), -- Savage Gladiator Gloves Mage
(@Moonstrike,0,41943,0,0,@60000HP), -- Savage Gladiator Helm Mage
(@Moonstrike,0,41956,0,0,@60000HP), -- Savage Gladiator Legs Mage
(@Moonstrike,0,41962,0,0,@50000HP), -- Savage Gladiator Shoulders Mage
(@Moonstrike,0,40898,0,0,@60000HP), -- Savage Gladiator Chest Paladin1
(@Moonstrike,0,40918,0,0,@50000HP), -- Savage Gladiator Gloves Paladin1
(@Moonstrike,0,40930,0,0,@60000HP), -- Savage Gladiator Helm Paladin1
(@Moonstrike,0,40936,0,0,@60000HP), -- Savage Gladiator Legs Paladin1
(@Moonstrike,0,40960,0,0,@50000HP), -- Savage Gladiator Shoulders Paladin1
(@Moonstrike,0,40780,0,0,@60000HP), -- Savage Gladiator Chest Paladin2
(@Moonstrike,0,40798,0,0,@50000HP), -- Savage Gladiator Gloves Paladin2
(@Moonstrike,0,40818,0,0,@60000HP), -- Savage Gladiator Helm Paladin2
(@Moonstrike,0,40838,0,0,@60000HP), -- Savage Gladiator Legs Paladin2
(@Moonstrike,0,40858,0,0,@50000HP), -- Savage Gladiator Shoulders Paladin2
(@Moonstrike,0,41851,0,0,@60000HP), -- Savage Gladiator Chest Priest1
(@Moonstrike,0,41847,0,0,@50000HP), -- Savage Gladiator Gloves Priest1
(@Moonstrike,0,41848,0,0,@60000HP), -- Savage Gladiator Helm Priest1
(@Moonstrike,0,41849,0,0,@60000HP), -- Savage Gladiator Legs Priest1
(@Moonstrike,0,41850,0,0,@50000HP), -- Savage Gladiator Shoulders Priest1
(@Moonstrike,0,41918,0,0,@60000HP), -- Savage Gladiator Chest Priest2
(@Moonstrike,0,41937,0,0,@50000HP), -- Savage Gladiator Gloves Priest2
(@Moonstrike,0,41912,0,0,@60000HP), -- Savage Gladiator Helm Priest2
(@Moonstrike,0,41924,0,0,@60000HP), -- Savage Gladiator Legs Priest2
(@Moonstrike,0,41930,0,0,@50000HP), -- Savage Gladiator Shoulders Priest2
(@Moonstrike,0,41647,0,0,@60000HP), -- Savage Gladiator Chest Rogue
(@Moonstrike,0,41643,0,0,@50000HP), -- Savage Gladiator Gloves Rogue
(@Moonstrike,0,41644,0,0,@60000HP), -- Savage Gladiator Helm Rogue
(@Moonstrike,0,41645,0,0,@60000HP), -- Savage Gladiator Legs Rogue
(@Moonstrike,0,41646,0,0,@50000HP), -- Savage Gladiator Shoulders Rogue
(@Moonstrike,0,41078,0,0,@60000HP), -- Savage Gladiator Chest Shaman1
(@Moonstrike,0,41134,0,0,@50000HP), -- Savage Gladiator Gloves Shaman1
(@Moonstrike,0,41148,0,0,@60000HP), -- Savage Gladiator Helm Shaman1
(@Moonstrike,0,41160,0,0,@60000HP), -- Savage Gladiator Legs Shaman1
(@Moonstrike,0,41208,0,0,@50000HP), -- Savage Gladiator Shoulders Shaman1
(@Moonstrike,0,40987,0,0,@60000HP), -- Savage Gladiator Chest Shaman2
(@Moonstrike,0,41004,0,0,@50000HP), -- Savage Gladiator Gloves Shaman2
(@Moonstrike,0,41016,0,0,@60000HP), -- Savage Gladiator Helm Shaman2
(@Moonstrike,0,41030,0,0,@60000HP), -- Savage Gladiator Legs Shaman2
(@Moonstrike,0,41041,0,0,@50000HP), -- Savage Gladiator Shoulders Shaman2
(@Moonstrike,0,40986,0,0,@60000HP), -- Savage Gladiator Chest Shaman3
(@Moonstrike,0,40998,0,0,@50000HP), -- Savage Gladiator Gloves Shaman3
(@Moonstrike,0,41010,0,0,@60000HP), -- Savage Gladiator Helm Shaman3
(@Moonstrike,0,41023,0,0,@60000HP), -- Savage Gladiator Legs Shaman3
(@Moonstrike,0,41024,0,0,@50000HP), -- Savage Gladiator Shoulders Shaman3
(@Moonstrike,0,41996,0,0,@60000HP), -- Savage Gladiator Chest Warlock
(@Moonstrike,0,42014,0,0,@50000HP), -- Savage Gladiator Gloves Warlock
(@Moonstrike,0,41990,0,0,@60000HP), -- Savage Gladiator Helm Warlock
(@Moonstrike,0,42002,0,0,@60000HP), -- Savage Gladiator Legs Warlock
(@Moonstrike,0,42008,0,0,@50000HP), -- Savage Gladiator Shoulders Warlock
(@Moonstrike,0,40778,0,0,@60000HP), -- Savage Gladiator Chest Warrior
(@Moonstrike,0,40797,0,0,@50000HP), -- Savage Gladiator Gloves Warrior
(@Moonstrike,0,40816,0,0,@60000HP), -- Savage Gladiator Helm Warrior
(@Moonstrike,0,40836,0,0,@60000HP), -- Savage Gladiator Legs Warrior
(@Moonstrike,0,40856,0,0,@50000HP), -- Savage Gladiator Shoulders Warrior
-- Double Spacer
-- Double Spacer
(@ZomBocom,0,40779,0,0,@12000HP_350AP), -- Savage Gladiator Chest DK
(@ZomBocom,0,40799,0,0,@7200HP_200AP), -- Savage Gladiator Gloves DK
(@ZomBocom,0,40817,0,0,@12000HP_350AP), -- Savage Gladiator Helm DK
(@ZomBocom,0,40837,0,0,@12000HP_350AP), -- Savage Gladiator Legs DK
(@ZomBocom,0,40857,0,0,@9600HP_275AP), -- Savage Gladiator Shoulders DK
(@ZomBocom,0,41272,0,0,@12000HP_350AP), -- Savage Gladiator Chest Druid1
(@ZomBocom,0,41268,0,0,@7200HP_200AP), -- Savage Gladiator Gloves Druid1
(@ZomBocom,0,41269,0,0,@12000HP_350AP), -- Savage Gladiator Helm Druid1
(@ZomBocom,0,41270,0,0,@12000HP_350AP), -- Savage Gladiator Legs Druid1
(@ZomBocom,0,41271,0,0,@9600HP_275AP), -- Savage Gladiator Shoulders Druid1
(@ZomBocom,0,41658,0,0,@12000HP_350AP), -- Savage Gladiator Chest Druid2
(@ZomBocom,0,41770,0,0,@7200HP_200AP), -- Savage Gladiator Gloves Druid2
(@ZomBocom,0,41675,0,0,@12000HP_350AP), -- Savage Gladiator Helm Druid2
(@ZomBocom,0,41664,0,0,@12000HP_350AP), -- Savage Gladiator Legs Druid2
(@ZomBocom,0,41712,0,0,@9600HP_275AP), -- Savage Gladiator Shoulders Druid2
(@ZomBocom,0,41313,0,0,@12000HP_350AP), -- Savage Gladiator Chest Druid3
(@ZomBocom,0,41290,0,0,@7200HP_200AP), -- Savage Gladiator Gloves Druid3
(@ZomBocom,0,41324,0,0,@12000HP_350AP), -- Savage Gladiator Helm Druid3
(@ZomBocom,0,41301,0,0,@12000HP_350AP), -- Savage Gladiator Legs Druid3
(@ZomBocom,0,41278,0,0,@9600HP_200AP), -- Savage Gladiator Shoulders Druid3
(@ZomBocom,0,41084,0,0,@12000HP_350AP), -- Savage Gladiator Chest Hunter
(@ZomBocom,0,41140,0,0,@7200HP_200AP), -- Savage Gladiator Gloves Hunter
(@ZomBocom,0,41154,0,0,@12000HP_350AP), -- Savage Gladiator Helm Hunter
(@ZomBocom,0,41202,0,0,@12000HP_350AP), -- Savage Gladiator Legs Hunter
(@ZomBocom,0,41214,0,0,@9600HP_275AP), -- Savage Gladiator Shoulders Hunter
(@ZomBocom,0,41949,0,0,@12000HP_350AP), -- Savage Gladiator Chest Mage
(@ZomBocom,0,41968,0,0,@7200HP_200AP), -- Savage Gladiator Gloves Mage
(@ZomBocom,0,41943,0,0,@12000HP_350AP), -- Savage Gladiator Helm Mage
(@ZomBocom,0,41956,0,0,@12000HP_350AP), -- Savage Gladiator Legs Mage
(@ZomBocom,0,41962,0,0,@9600HP_275AP), -- Savage Gladiator Shoulders Mage
(@ZomBocom,0,40898,0,0,@12000HP_350AP), -- Savage Gladiator Chest Paladin1
(@ZomBocom,0,40918,0,0,@7200HP_200AP), -- Savage Gladiator Gloves Paladin1
(@ZomBocom,0,40930,0,0,@12000HP_350AP), -- Savage Gladiator Helm Paladin1
(@ZomBocom,0,40936,0,0,@12000HP_350AP), -- Savage Gladiator Legs Paladin1
(@ZomBocom,0,40960,0,0,@9600HP_275AP), -- Savage Gladiator Shoulders Paladin1
(@ZomBocom,0,40780,0,0,@12000HP_350AP), -- Savage Gladiator Chest Paladin2
(@ZomBocom,0,40798,0,0,@7200HP_200AP), -- Savage Gladiator Gloves Paladin2
(@ZomBocom,0,40818,0,0,@12000HP_350AP), -- Savage Gladiator Helm Paladin2
(@ZomBocom,0,40838,0,0,@12000HP_350AP), -- Savage Gladiator Legs Paladin2
(@ZomBocom,0,40858,0,0,@9600HP_275AP), -- Savage Gladiator Shoulders Paladin2
(@ZomBocom,0,41851,0,0,@12000HP_350AP), -- Savage Gladiator Chest Priest1
(@ZomBocom,0,41847,0,0,@7200HP_200AP), -- Savage Gladiator Gloves Priest1
(@ZomBocom,0,41848,0,0,@12000HP_350AP), -- Savage Gladiator Helm Priest1
(@ZomBocom,0,41849,0,0,@12000HP_350AP), -- Savage Gladiator Legs Priest1
(@ZomBocom,0,41850,0,0,@9600HP_275AP), -- Savage Gladiator Shoulders Priest1
(@ZomBocom,0,41918,0,0,@12000HP_350AP), -- Savage Gladiator Chest Priest2
(@ZomBocom,0,41937,0,0,@7200HP_200AP), -- Savage Gladiator Gloves Priest2
(@ZomBocom,0,41912,0,0,@12000HP_350AP), -- Savage Gladiator Helm Priest2
(@ZomBocom,0,41924,0,0,@12000HP_350AP), -- Savage Gladiator Legs Priest2
(@ZomBocom,0,41930,0,0,@9600HP_275AP), -- Savage Gladiator Shoulders Priest2
(@ZomBocom,0,41647,0,0,@12000HP_350AP), -- Savage Gladiator Chest Rogue
(@ZomBocom,0,41643,0,0,@7200HP_200AP), -- Savage Gladiator Gloves Rogue
(@ZomBocom,0,41644,0,0,@12000HP_350AP), -- Savage Gladiator Helm Rogue
(@ZomBocom,0,41645,0,0,@12000HP_350AP), -- Savage Gladiator Legs Rogue
(@ZomBocom,0,41646,0,0,@9600HP_275AP), -- Savage Gladiator Shoulders Rogue
(@ZomBocom,0,41078,0,0,@12000HP_350AP), -- Savage Gladiator Chest Shaman1
(@ZomBocom,0,41134,0,0,@7200HP_200AP), -- Savage Gladiator Gloves Shaman1
(@ZomBocom,0,41148,0,0,@12000HP_350AP), -- Savage Gladiator Helm Shaman1
(@ZomBocom,0,41160,0,0,@12000HP_350AP), -- Savage Gladiator Legs Shaman1
(@ZomBocom,0,41208,0,0,@9600HP_275AP), -- Savage Gladiator Shoulders Shaman1
(@ZomBocom,0,40987,0,0,@12000HP_350AP), -- Savage Gladiator Chest Shaman2
(@ZomBocom,0,41004,0,0,@7200HP_200AP), -- Savage Gladiator Gloves Shaman2
(@ZomBocom,0,41016,0,0,@12000HP_350AP), -- Savage Gladiator Helm Shaman2
(@ZomBocom,0,41030,0,0,@12000HP_350AP), -- Savage Gladiator Legs Shaman2
(@ZomBocom,0,41041,0,0,@9600HP_275AP), -- Savage Gladiator Shoulders Shaman2
(@ZomBocom,0,40986,0,0,@12000HP_350AP), -- Savage Gladiator Chest Shaman3
(@ZomBocom,0,40998,0,0,@7200HP_200AP), -- Savage Gladiator Gloves Shaman3
(@ZomBocom,0,41010,0,0,@12000HP_350AP), -- Savage Gladiator Helm Shaman3
(@ZomBocom,0,41023,0,0,@12000HP_350AP), -- Savage Gladiator Legs Shaman3
(@ZomBocom,0,41024,0,0,@9600HP_275AP), -- Savage Gladiator Shoulders Shaman3
(@ZomBocom,0,41996,0,0,@12000HP_350AP), -- Savage Gladiator Chest Warlock
(@ZomBocom,0,42014,0,0,@7200HP_200AP), -- Savage Gladiator Gloves Warlock
(@ZomBocom,0,41990,0,0,@12000HP_350AP), -- Savage Gladiator Helm Warlock
(@ZomBocom,0,42002,0,0,@12000HP_350AP), -- Savage Gladiator Legs Warlock
(@ZomBocom,0,42008,0,0,@9600HP_275AP), -- Savage Gladiator Shoulders Warlock
(@ZomBocom,0,40778,0,0,@12000HP_350AP), -- Savage Gladiator Chest Warrior
(@ZomBocom,0,40797,0,0,@7200HP_200AP), -- Savage Gladiator Gloves Warrior
(@ZomBocom,0,40816,0,0,@12000HP_350AP), -- Savage Gladiator Helm Warrior
(@ZomBocom,0,40836,0,0,@12000HP_350AP), -- Savage Gladiator Legs Warrior
(@ZomBocom,0,40856,0,0,@9600HP_275AP), -- Savage Gladiator Shoulders Warrior
-- NEXT SET SPACER
-- NEXT SET SPACER
-- NEXT SET SPACER
(@Xazi,0,40781,0,0,@1675RT_12000HP_700AP), -- Hateful Gladiator Chest DK
(@Xazi,0,40803,0,0,@1615RT_7200HP_400AP),  -- Hateful Gladiator Gloves DK
(@Xazi,0,40820,0,0,@1735RT_12000HP_700AP), -- Hateful Gladiator Helm DK
(@Xazi,0,40841,0,0,@1645RT_12000HP_700AP), -- Hateful Gladiator Legs DK
(@Xazi,0,40860,0,0,@1775RT_9600HP_550AP),  -- Hateful Gladiator Shoulders DK
(@Xazi,0,41308,0,0,@1675RT_12000HP_700AP), -- Hateful Gladiator Chest Druid1
(@Xazi,0,41284,0,0,@1615RT_7200HP_400AP),  -- Hateful Gladiator Gloves Druid1
(@Xazi,0,41319,0,0,@1735RT_12000HP_700AP), -- Hateful Gladiator Helm Druid1
(@Xazi,0,41296,0,0,@1645RT_12000HP_700AP), -- Hateful Gladiator Legs Druid1
(@Xazi,0,41273,0,0,@1775RT_9600HP_550AP),  -- Hateful Gladiator Shoulders Druid1
(@Xazi,0,41659,0,0,@1675RT_12000HP_700AP), -- Hateful Gladiator Chest Druid2
(@Xazi,0,41771,0,0,@1615RT_7200HP_400AP),  -- Hateful Gladiator Gloves Druid2
(@Xazi,0,41676,0,0,@1735RT_12000HP_700AP), -- Hateful Gladiator Helm Druid2
(@Xazi,0,41665,0,0,@1645RT_12000HP_700AP), -- Hateful Gladiator Legs Druid2
(@Xazi,0,41713,0,0,@1775RT_9600HP_550AP),  -- Hateful Gladiator Shoulders Druid2
(@Xazi,0,41314,0,0,@1675RT_12000HP_700AP), -- Hateful Gladiator Chest Druid3
(@Xazi,0,41291,0,0,@1615RT_7200HP_400AP),  -- Hateful Gladiator Gloves Druid3
(@Xazi,0,41325,0,0,@1735RT_12000HP_700AP), -- Hateful Gladiator Helm Druid3
(@Xazi,0,41302,0,0,@1645RT_12000HP_700AP), -- Hateful Gladiator Legs Druid3
(@Xazi,0,41279,0,0,@1775RT_9600HP_550AP), -- Hateful Gladiator Shoulders Druid3
(@Xazi,0,41085,0,0,@1675RT_12000HP_700AP), -- Hateful Gladiator Chest Hunter
(@Xazi,0,41141,0,0,@1615RT_7200HP_400AP), -- Hateful Gladiator Gloves Hunter
(@Xazi,0,41155,0,0,@1735RT_12000HP_700AP), -- Hateful Gladiator Helm Hunter
(@Xazi,0,41203,0,0,@1645RT_12000HP_700AP), -- Hateful Gladiator Legs Hunter
(@Xazi,0,41215,0,0,@1775RT_9600HP_550AP), -- Hateful Gladiator Shoulders Hunter
(@Xazi,0,41950,0,0,@1675RT_12000HP_700AP), -- Hateful Gladiator Chest Mage
(@Xazi,0,41969,0,0,@1615RT_7200HP_400AP), -- Hateful Gladiator Gloves Mage
(@Xazi,0,41944,0,0,@1735RT_12000HP_700AP), -- Hateful Gladiator Helm Mage
(@Xazi,0,41957,0,0,@1645RT_12000HP_700AP), -- Hateful Gladiator Legs Mage
(@Xazi,0,41963,0,0,@1775RT_9600HP_550AP), -- Hateful Gladiator Shoulders Mage
(@Xazi,0,40904,0,0,@1675RT_12000HP_700AP), -- Hateful Gladiator Chest Paladin1
(@Xazi,0,40925,0,0,@1615RT_7200HP_400AP), -- Hateful Gladiator Gloves Paladin1
(@Xazi,0,40931,0,0,@1735RT_12000HP_700AP), -- Hateful Gladiator Helm Paladin1
(@Xazi,0,40937,0,0,@1645RT_12000HP_700AP), -- Hateful Gladiator Legs Paladin1
(@Xazi,0,40961,0,0,@1775RT_9600HP_550AP), -- Hateful Gladiator Shoulders Paladin1
(@Xazi,0,40782,0,0,@1675RT_12000HP_700AP), -- Hateful Gladiator Chest Paladin2
(@Xazi,0,40802,0,0,@1615RT_7200HP_400AP), -- Hateful Gladiator Gloves Paladin2
(@Xazi,0,40821,0,0,@1735RT_12000HP_700AP), -- Hateful Gladiator Helm Paladin2
(@Xazi,0,40842,0,0,@1645RT_12000HP_700AP), -- Hateful Gladiator Legs Paladin2
(@Xazi,0,40861,0,0,@1775RT_9600HP_550AP), -- Hateful Gladiator Shoulders Paladin2
(@Xazi,0,41857,0,0,@1675RT_12000HP_700AP), -- Hateful Gladiator Chest Priest1
(@Xazi,0,41872,0,0,@1615RT_7200HP_400AP), -- Hateful Gladiator Gloves Priest1
(@Xazi,0,41852,0,0,@1735RT_12000HP_700AP), -- Hateful Gladiator Helm Priest1
(@Xazi,0,41862,0,0,@1645RT_12000HP_700AP), -- Hateful Gladiator Legs Priest1
(@Xazi,0,41867,0,0,@1775RT_9600HP_550AP), -- Hateful Gladiator Shoulders Priest1
(@Xazi,0,41919,0,0,@1675RT_12000HP_700AP), -- Hateful Gladiator Chest Priest2
(@Xazi,0,41938,0,0,@1615RT_7200HP_400AP), -- Hateful Gladiator Gloves Priest2
(@Xazi,0,41913,0,0,@1735RT_12000HP_700AP), -- Hateful Gladiator Helm Priest2
(@Xazi,0,41925,0,0,@1645RT_12000HP_700AP), -- Hateful Gladiator Legs Priest2
(@Xazi,0,41931,0,0,@1775RT_9600HP_550AP), -- Hateful Gladiator Shoulders Priest2
(@Xazi,0,41648,0,0,@1675RT_12000HP_700AP), -- Hateful Gladiator Chest Rogue
(@Xazi,0,41765,0,0,@1615RT_7200HP_400AP), -- Hateful Gladiator Gloves Rogue
(@Xazi,0,41670,0,0,@1735RT_12000HP_700AP), -- Hateful Gladiator Helm Rogue
(@Xazi,0,41653,0,0,@1645RT_12000HP_700AP), -- Hateful Gladiator Legs Rogue
(@Xazi,0,41681,0,0,@1775RT_9600HP_550AP), -- Hateful Gladiator Shoulders Rogue
(@Xazi,0,41079,0,0,@1675RT_12000HP_700AP), -- Hateful Gladiator Chest Shaman1
(@Xazi,0,41135,0,0,@1615RT_7200HP_400AP), -- Hateful Gladiator Gloves Shaman1
(@Xazi,0,41149,0,0,@1735RT_12000HP_700AP), -- Hateful Gladiator Helm Shaman1
(@Xazi,0,41162,0,0,@1645RT_12000HP_700AP), -- Hateful Gladiator Legs Shaman1
(@Xazi,0,41209,0,0,@1775RT_9600HP_550AP), -- Hateful Gladiator Shoulders Shaman1
(@Xazi,0,40989,0,0,@1675RT_12000HP_700AP), -- Hateful Gladiator Chest Shaman2
(@Xazi,0,41005,0,0,@1615RT_7200HP_400AP), -- Hateful Gladiator Gloves Shaman2
(@Xazi,0,41017,0,0,@1735RT_12000HP_700AP), -- Hateful Gladiator Helm Shaman2
(@Xazi,0,41031,0,0,@1645RT_12000HP_700AP), -- Hateful Gladiator Legs Shaman2
(@Xazi,0,41042,0,0,@1775RT_9600HP_550AP), -- Hateful Gladiator Shoulders Shaman2
(@Xazi,0,40988,0,0,@1675RT_12000HP_700AP), -- Hateful Gladiator Chest Shaman3
(@Xazi,0,40999,0,0,@1615RT_7200HP_400AP), -- Hateful Gladiator Gloves Shaman3
(@Xazi,0,41011,0,0,@1735RT_12000HP_700AP), -- Hateful Gladiator Helm Shaman3
(@Xazi,0,41025,0,0,@1645RT_12000HP_700AP), -- Hateful Gladiator Legs Shaman3
(@Xazi,0,41036,0,0,@1775RT_9600HP_550AP), -- Hateful Gladiator Shoulders Shaman3
(@Xazi,0,42001,0,0,@1675RT_12000HP_700AP), -- Hateful Gladiator Chest Warlock
(@Xazi,0,42015,0,0,@1615RT_7200HP_400AP), -- Hateful Gladiator Gloves Warlock
(@Xazi,0,41991,0,0,@1735RT_12000HP_700AP), -- Hateful Gladiator Helm Warlock
(@Xazi,0,42003,0,0,@1645RT_12000HP_700AP), -- Hateful Gladiator Legs Warlock
(@Xazi,0,42009,0,0,@1775RT_9600HP_550AP), -- Hateful Gladiator Shoulders Warlock
(@Xazi,0,40783,0,0,@1675RT_12000HP_700AP), -- Hateful Gladiator Chest Warrior
(@Xazi,0,40801,0,0,@1615RT_7200HP_400AP), -- Hateful Gladiator Gloves Warrior
(@Xazi,0,40819,0,0,@1735RT_12000HP_700AP), -- Hateful Gladiator Helm Warrior
(@Xazi,0,40840,0,0,@1645RT_12000HP_700AP), -- Hateful Gladiator Legs Warrior
(@Xazi,0,40859,0,0,@1775RT_9600HP_550AP), -- Hateful Gladiator Shoulders Warrior
-- NEXT SET SPACER
-- NEXT SET SPACER
-- NEXT SET SPACER
(@Nargle,0,40784,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest DK
(@Nargle,0,40806,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves DK
(@Nargle,0,40824,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm DK
(@Nargle,0,40845,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs DK
(@Nargle,0,40863,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders DK
(@Nargle,0,41309,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Druid1
(@Nargle,0,41286,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Druid1
(@Nargle,0,41320,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Druid1
(@Nargle,0,41297,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Druid1
(@Nargle,0,41274,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Druid1
(@Nargle,0,41660,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Druid2
(@Nargle,0,41772,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Druid2
(@Nargle,0,41677,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Druid2
(@Nargle,0,41666,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Druid2
(@Nargle,0,41714,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Druid2
(@Nargle,0,41315,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Druid3
(@Nargle,0,41292,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Druid3
(@Nargle,0,41326,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Druid3
(@Nargle,0,41303,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Druid3
(@Nargle,0,41280,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Druid3
(@Nargle,0,41086,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Hunter
(@Nargle,0,41142,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Hunter
(@Nargle,0,41156,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Hunter
(@Nargle,0,41204,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Hunter
(@Nargle,0,41216,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Hunter
(@Nargle,0,41951,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Mage
(@Nargle,0,41970,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Mage
(@Nargle,0,41945,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Mage
(@Nargle,0,41958,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Mage
(@Nargle,0,41964,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Mage
(@Nargle,0,40905,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Paladin1
(@Nargle,0,40926,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Paladin1
(@Nargle,0,40932,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Paladin1
(@Nargle,0,40938,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Paladin1
(@Nargle,0,40962,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Paladin1
(@Nargle,0,40785,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Paladin2
(@Nargle,0,40805,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Paladin2
(@Nargle,0,40825,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Paladin2
(@Nargle,0,40846,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Paladin2
(@Nargle,0,40864,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Paladin2
(@Nargle,0,41858,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Priest1
(@Nargle,0,41873,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Priest1
(@Nargle,0,41853,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Priest1
(@Nargle,0,41863,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Priest1
(@Nargle,0,41868,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Priest1
(@Nargle,0,41920,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Priest2
(@Nargle,0,41939,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Priest2
(@Nargle,0,41914,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Priest2
(@Nargle,0,41926,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Priest2
(@Nargle,0,41933,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Priest2
(@Nargle,0,41649,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Rogue
(@Nargle,0,41766,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Rogue
(@Nargle,0,41671,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Rogue
(@Nargle,0,41654,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Rogue
(@Nargle,0,41682,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Rogue
(@Nargle,0,41080,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Shaman1
(@Nargle,0,41136,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Shaman1
(@Nargle,0,41150,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Shaman1
(@Nargle,0,41198,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Shaman1
(@Nargle,0,41210,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Shaman1
(@Nargle,0,40991,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Shaman2
(@Nargle,0,41006,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Shaman2
(@Nargle,0,41018,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Shaman2
(@Nargle,0,41032,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Shaman2
(@Nargle,0,41043,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Shaman2
(@Nargle,0,40990,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Shaman3
(@Nargle,0,41000,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Shaman3
(@Nargle,0,41012,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Shaman3
(@Nargle,0,41026,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Shaman3
(@Nargle,0,41037,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Shaman3
(@Nargle,0,41997,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Warlock
(@Nargle,0,42016,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Warlock
(@Nargle,0,41992,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Warlock
(@Nargle,0,42004,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Warlock
(@Nargle,0,42010,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Warlock
(@Nargle,0,40786,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Warrior
(@Nargle,0,40804,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Warrior
(@Nargle,0,40823,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Warrior
(@Nargle,0,40844,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Warrior
(@Nargle,0,40862,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Warrior
-- Weapons
(@Nargle,0,42490,0,0,@1930RT_4500AP),-- Deadly Gladiator Longbow (bow)
(@Nargle,0,42495,0,0,@1930RT_4500AP),-- Deadly Gladiator Heavy Crossbow (crossbow)
(@Nargle,0,42255,0,0,@1930RT_3150AP),-- Deadly Gladiator Mutilator (dagger) offhand
(@Nargle,0,42242,0,0,@1930RT_3150AP),-- Deadly Gladiator Shanker (dagger) One Hand
(@Nargle,0,42248,0,0,@1930RT_3150AP),-- Deadly Gladiator Shiv (dagger) offhand
(@Nargle,0,42346,0,0,@1930RT_3150AP),-- Deadly Gladiator Spellblade (dagger) Main Hand
(@Nargle,0,42265,0,0,@1930RT_3150AP),-- Deadly Gladiator Left Render (Fist Weapon) offhand
(@Nargle,0,42270,0,0,@1930RT_3150AP),-- Deadly Gladiator Left Ripper (Fist Weapon) offhand
(@Nargle,0,42260,0,0,@1930RT_3150AP),-- Deadly Gladiator Right Ripper (Fist Weapon) main hand
(@Nargle,0,42485,0,0,@1930RT_4500AP),-- Deadly Gladiator Rifle (Gun)
(@Nargle,0,42232,0,0,@1930RT_3150AP),-- Deadly Gladiator Chopper (1haxe) offhand
(@Nargle,0,42208,0,0,@1930RT_3150AP),-- Deadly Gladiator Cleaver (1haxe) mainhand
(@Nargle,0,42227,0,0,@1930RT_3150AP),-- Deadly Gladiator Hacker (1haxe) offhand
(@Nargle,0,42237,0,0,@1930RT_3150AP),-- Deadly Gladiator Waraxe (1haxe) one hand
(@Nargle,0,42280,0,0,@1930RT_3150AP),-- Deadly Gladiator Bonecracker (1hmace) offhand
(@Nargle,0,42232,0,0,@1930RT_3150AP),-- Deadly Gladiator Gavel (1h mace) main hand
(@Nargle,0,42275,0,0,@1930RT_3150AP),-- Deadly Gladiator Pummeler (1h mace) one hand
(@Nargle,0,42290,0,0,@1930RT_3150AP),-- Deadly Gladiator Quickblade (1h sword) off hand
(@Nargle,0,42285,0,0,@1930RT_3150AP),-- Deadly Gladiator Slicer (1h sword) one hand
(@Nargle,0,42327,0,0,@1930RT_4500AP),-- Deadly Gladiator Pike (polearm)
(@Nargle,0,42362,0,0,@1930RT_4500AP),-- Deadly Gladiator Battle Staff (staff)
(@Nargle,0,42384,0,0,@1930RT_4500AP),-- Deadly Gladiator Energy Staff (staff)
(@Nargle,0,44420,0,0,@1930RT_4500AP),-- Deadly Gladiator Focus Staff (staff)
(@Nargle,0,42390,0,0,@1930RT_4500AP),-- Deadly Gladiator Staff (staff)
(@Nargle,0,44419,0,0,@1930RT_4500AP),-- Deadly Gladiator War Staff (staff)
(@Nargle,0,42450,0,0,@1930RT_2250AP),-- Deadly Gladiator War Edge (Thrown)
(@Nargle,0,42317,0,0,@1930RT_4500AP),-- Deadly Gladiator Decapitator (2haxe)
(@Nargle,0,42322,0,0,@1930RT_4500AP),-- Deadly Gladiator Bonegrinder (2hmace)
(@Nargle,0,42232,0,0,@1930RT_4500AP),-- Deadly Gladiator Greatsword (2h Sword)
(@Nargle,0,42513,0,0,@1930RT_2250AP),-- Deadly Gladiator Baton of Light (wand)
(@Nargle,0,42519,0,0,@1930RT_2250AP),-- Deadly Gladiator Piercing Touch (wand)
(@Nargle,0,42502,0,0,@1930RT_2250AP),-- Deadly Gladiator Touch of Defeat (wand)
(@Nargle,0,42564,0,0,@1930RT_2250AP),-- Deadly Gladiator Barrier (shield)
(@Nargle,0,42570,0,0,@1930RT_2250AP),-- Deadly Gladiator Redoubt (shield)
(@Nargle,0,42559,0,0,@1930RT_2250AP),-- Deadly Gladiator Shield Wall (shield)
(@Nargle,0,42588,0,0,@1930RT_1200AP),-- Deadly Gladiator Idol of Resolve (Relic)
(@Nargle,0,42583,0,0,@1930RT_1200AP),-- Deadly Gladiator Idol of Steadfastness (Relic)
(@Nargle,0,42578,0,0,@1930RT_1200AP),-- Deadly Gladiator Idol of Tenacity (Relic)
(@Nargle,0,42852,0,0,@1930RT_1200AP),-- Deadly Gladiator Libram of Fortitude (Relic)
(@Nargle,0,42614,0,0,@1930RT_1200AP),-- Deadly Gladiator Libram of Justice (Relic)
(@Nargle,0,42620,0,0,@1930RT_1200AP),-- Deadly Gladiator Sigil of Strife (Relic)
(@Nargle,0,42607,0,0,@1930RT_1200AP),-- Deadly Gladiator Totem of Indomitability (Relic)
(@Nargle,0,42602,0,0,@1930RT_1200AP),-- Deadly Gladiator Totem of Survival (Relic)
(@Nargle,0,42597,0,0,@1930RT_1200AP),-- Deadly Gladiator Totem of the Third Wind (Relic)
-- Spacer
(@Kezzik,0,40784,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest DK
(@Kezzik,0,40806,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves DK
(@Kezzik,0,40824,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm DK
(@Kezzik,0,40845,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs DK
(@Kezzik,0,40863,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders DK
(@Kezzik,0,41309,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Druid1
(@Kezzik,0,41286,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Druid1
(@Kezzik,0,41320,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Druid1
(@Kezzik,0,41297,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Druid1
(@Kezzik,0,41274,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Druid1
(@Kezzik,0,41660,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Druid2
(@Kezzik,0,41772,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Druid2
(@Kezzik,0,41677,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Druid2
(@Kezzik,0,41666,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Druid2
(@Kezzik,0,41714,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Druid2
(@Kezzik,0,41315,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Druid3
(@Kezzik,0,41292,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Druid3
(@Kezzik,0,41326,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Druid3
(@Kezzik,0,41303,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Druid3
(@Kezzik,0,41280,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Druid3
(@Kezzik,0,41086,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Hunter
(@Kezzik,0,41142,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Hunter
(@Kezzik,0,41156,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Hunter
(@Kezzik,0,41204,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Hunter
(@Kezzik,0,41216,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Hunter
(@Kezzik,0,41951,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Mage
(@Kezzik,0,41970,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Mage
(@Kezzik,0,41945,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Mage
(@Kezzik,0,41958,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Mage
(@Kezzik,0,41964,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Mage
(@Kezzik,0,40905,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Paladin1
(@Kezzik,0,40926,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Paladin1
(@Kezzik,0,40932,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Paladin1
(@Kezzik,0,40938,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Paladin1
(@Kezzik,0,40962,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Paladin1
(@Kezzik,0,40785,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Paladin2
(@Kezzik,0,40805,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Paladin2
(@Kezzik,0,40825,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Paladin2
(@Kezzik,0,40846,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Paladin2
(@Kezzik,0,40864,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Paladin2
(@Kezzik,0,41858,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Priest1
(@Kezzik,0,41873,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Priest1
(@Kezzik,0,41853,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Priest1
(@Kezzik,0,41863,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Priest1
(@Kezzik,0,41868,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Priest1
(@Kezzik,0,41920,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Priest2
(@Kezzik,0,41939,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Priest2
(@Kezzik,0,41914,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Priest2
(@Kezzik,0,41926,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Priest2
(@Kezzik,0,41933,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Priest2
(@Kezzik,0,41649,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Rogue
(@Kezzik,0,41766,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Rogue
(@Kezzik,0,41671,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Rogue
(@Kezzik,0,41654,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Rogue
(@Kezzik,0,41682,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Rogue
(@Kezzik,0,41080,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Shaman1
(@Kezzik,0,41136,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Shaman1
(@Kezzik,0,41150,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Shaman1
(@Kezzik,0,41198,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Shaman1
(@Kezzik,0,41210,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Shaman1
(@Kezzik,0,40991,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Shaman2
(@Kezzik,0,41006,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Shaman2
(@Kezzik,0,41018,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Shaman2
(@Kezzik,0,41032,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Shaman2
(@Kezzik,0,41043,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Shaman2
(@Kezzik,0,40990,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Shaman3
(@Kezzik,0,41000,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Shaman3
(@Kezzik,0,41012,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Shaman3
(@Kezzik,0,41026,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Shaman3
(@Kezzik,0,41037,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Shaman3
(@Kezzik,0,41997,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Warlock
(@Kezzik,0,42016,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Warlock
(@Kezzik,0,41992,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Warlock
(@Kezzik,0,42004,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Warlock
(@Kezzik,0,42010,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Warlock
(@Kezzik,0,40786,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Warrior
(@Kezzik,0,40804,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Warrior
(@Kezzik,0,40823,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Warrior
(@Kezzik,0,40844,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Warrior
(@Kezzik,0,40862,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Warrior
-- Weapons
(@Kezzik,0,42490,0,0,@1930RT_4500AP),-- Deadly Gladiator Longbow (bow)
(@Kezzik,0,42495,0,0,@1930RT_4500AP),-- Deadly Gladiator Heavy Crossbow (crossbow)
(@Kezzik,0,42255,0,0,@1930RT_3150AP),-- Deadly Gladiator Mutilator (dagger) offhand
(@Kezzik,0,42242,0,0,@1930RT_3150AP),-- Deadly Gladiator Shanker (dagger) One Hand
(@Kezzik,0,42248,0,0,@1930RT_3150AP),-- Deadly Gladiator Shiv (dagger) offhand
(@Kezzik,0,42346,0,0,@1930RT_3150AP),-- Deadly Gladiator Spellblade (dagger) Main Hand
(@Kezzik,0,42265,0,0,@1930RT_3150AP),-- Deadly Gladiator Left Render (Fist Weapon) offhand
(@Kezzik,0,42270,0,0,@1930RT_3150AP),-- Deadly Gladiator Left Ripper (Fist Weapon) offhand
(@Kezzik,0,42260,0,0,@1930RT_3150AP),-- Deadly Gladiator Right Ripper (Fist Weapon) main hand
(@Kezzik,0,42485,0,0,@1930RT_4500AP),-- Deadly Gladiator Rifle (Gun)
(@Kezzik,0,42232,0,0,@1930RT_3150AP),-- Deadly Gladiator Chopper (1haxe) offhand
(@Kezzik,0,42208,0,0,@1930RT_3150AP),-- Deadly Gladiator Cleaver (1haxe) mainhand
(@Kezzik,0,42227,0,0,@1930RT_3150AP),-- Deadly Gladiator Hacker (1haxe) offhand
(@Kezzik,0,42237,0,0,@1930RT_3150AP),-- Deadly Gladiator Waraxe (1haxe) one hand
(@Kezzik,0,42280,0,0,@1930RT_3150AP),-- Deadly Gladiator Bonecracker (1hmace) offhand
(@Kezzik,0,42232,0,0,@1930RT_3150AP),-- Deadly Gladiator Gavel (1h mace) main hand
(@Kezzik,0,42275,0,0,@1930RT_3150AP),-- Deadly Gladiator Pummeler (1h mace) one hand
(@Kezzik,0,42290,0,0,@1930RT_3150AP),-- Deadly Gladiator Quickblade (1h sword) off hand
(@Kezzik,0,42285,0,0,@1930RT_3150AP),-- Deadly Gladiator Slicer (1h sword) one hand
(@Kezzik,0,42327,0,0,@1930RT_4500AP),-- Deadly Gladiator Pike (polearm)
(@Kezzik,0,42362,0,0,@1930RT_4500AP),-- Deadly Gladiator Battle Staff (staff)
(@Kezzik,0,42384,0,0,@1930RT_4500AP),-- Deadly Gladiator Energy Staff (staff)
(@Kezzik,0,44420,0,0,@1930RT_4500AP),-- Deadly Gladiator Focus Staff (staff)
(@Kezzik,0,42390,0,0,@1930RT_4500AP),-- Deadly Gladiator Staff (staff)
(@Kezzik,0,44419,0,0,@1930RT_4500AP),-- Deadly Gladiator War Staff (staff)
(@Kezzik,0,42450,0,0,@1930RT_2250AP),-- Deadly Gladiator War Edge (Thrown)
(@Kezzik,0,42317,0,0,@1930RT_4500AP),-- Deadly Gladiator Decapitator (2haxe)
(@Kezzik,0,42322,0,0,@1930RT_4500AP),-- Deadly Gladiator Bonegrinder (2hmace)
(@Kezzik,0,42232,0,0,@1930RT_4500AP),-- Deadly Gladiator Greatsword (2h Sword)
(@Kezzik,0,42513,0,0,@1930RT_2250AP),-- Deadly Gladiator Baton of Light (wand)
(@Kezzik,0,42519,0,0,@1930RT_2250AP),-- Deadly Gladiator Piercing Touch (wand)
(@Kezzik,0,42502,0,0,@1930RT_2250AP),-- Deadly Gladiator Touch of Defeat (wand)
(@Kezzik,0,42564,0,0,@1930RT_2250AP),-- Deadly Gladiator Barrier (shield)
(@Kezzik,0,42570,0,0,@1930RT_2250AP),-- Deadly Gladiator Redoubt (shield)
(@Kezzik,0,42559,0,0,@1930RT_2250AP),-- Deadly Gladiator Shield Wall (shield)
(@Kezzik,0,42588,0,0,@1930RT_1200AP),-- Deadly Gladiator Idol of Resolve (Relic)
(@Kezzik,0,42583,0,0,@1930RT_1200AP),-- Deadly Gladiator Idol of Steadfastness (Relic)
(@Kezzik,0,42578,0,0,@1930RT_1200AP),-- Deadly Gladiator Idol of Tenacity (Relic)
(@Kezzik,0,42852,0,0,@1930RT_1200AP),-- Deadly Gladiator Libram of Fortitude (Relic)
(@Kezzik,0,42614,0,0,@1930RT_1200AP),-- Deadly Gladiator Libram of Justice (Relic)
(@Kezzik,0,42620,0,0,@1930RT_1200AP),-- Deadly Gladiator Sigil of Strife (Relic)
(@Kezzik,0,42607,0,0,@1930RT_1200AP),-- Deadly Gladiator Totem of Indomitability (Relic)
(@Kezzik,0,42602,0,0,@1930RT_1200AP),-- Deadly Gladiator Totem of Survival (Relic)
(@Kezzik,0,42597,0,0,@1930RT_1200AP),-- Deadly Gladiator Totem of the Third Wind (Relic)
-- Spacer
(@Argex,0,40784,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest DK
(@Argex,0,40806,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves DK
(@Argex,0,40824,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm DK
(@Argex,0,40845,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs DK
(@Argex,0,40863,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders DK
(@Argex,0,41309,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Druid1
(@Argex,0,41286,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Druid1
(@Argex,0,41320,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Druid1
(@Argex,0,41297,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Druid1
(@Argex,0,41274,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Druid1
(@Argex,0,41660,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Druid2
(@Argex,0,41772,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Druid2
(@Argex,0,41677,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Druid2
(@Argex,0,41666,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Druid2
(@Argex,0,41714,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Druid2
(@Argex,0,41315,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Druid3
(@Argex,0,41292,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Druid3
(@Argex,0,41326,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Druid3
(@Argex,0,41303,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Druid3
(@Argex,0,41280,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Druid3
(@Argex,0,41086,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Hunter
(@Argex,0,41142,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Hunter
(@Argex,0,41156,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Hunter
(@Argex,0,41204,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Hunter
(@Argex,0,41216,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Hunter
(@Argex,0,41951,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Mage
(@Argex,0,41970,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Mage
(@Argex,0,41945,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Mage
(@Argex,0,41958,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Mage
(@Argex,0,41964,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Mage
(@Argex,0,40905,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Paladin1
(@Argex,0,40926,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Paladin1
(@Argex,0,40932,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Paladin1
(@Argex,0,40938,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Paladin1
(@Argex,0,40962,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Paladin1
(@Argex,0,40785,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Paladin2
(@Argex,0,40805,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Paladin2
(@Argex,0,40825,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Paladin2
(@Argex,0,40846,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Paladin2
(@Argex,0,40864,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Paladin2
(@Argex,0,41858,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Priest1
(@Argex,0,41873,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Priest1
(@Argex,0,41853,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Priest1
(@Argex,0,41863,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Priest1
(@Argex,0,41868,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Priest1
(@Argex,0,41920,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Priest2
(@Argex,0,41939,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Priest2
(@Argex,0,41914,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Priest2
(@Argex,0,41926,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Priest2
(@Argex,0,41933,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Priest2
(@Argex,0,41649,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Rogue
(@Argex,0,41766,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Rogue
(@Argex,0,41671,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Rogue
(@Argex,0,41654,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Rogue
(@Argex,0,41682,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Rogue
(@Argex,0,41080,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Shaman1
(@Argex,0,41136,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Shaman1
(@Argex,0,41150,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Shaman1
(@Argex,0,41198,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Shaman1
(@Argex,0,41210,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Shaman1
(@Argex,0,40991,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Shaman2
(@Argex,0,41006,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Shaman2
(@Argex,0,41018,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Shaman2
(@Argex,0,41032,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Shaman2
(@Argex,0,41043,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Shaman2
(@Argex,0,40990,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Shaman3
(@Argex,0,41000,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Shaman3
(@Argex,0,41012,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Shaman3
(@Argex,0,41026,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Shaman3
(@Argex,0,41037,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Shaman3
(@Argex,0,41997,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Warlock
(@Argex,0,42016,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Warlock
(@Argex,0,41992,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Warlock
(@Argex,0,42004,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Warlock
(@Argex,0,42010,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Warlock
(@Argex,0,40786,0,0,@1870RT_2250AP), -- Deadly Gladiator Chest Warrior
(@Argex,0,40804,0,0,@1750RT_1350AP), -- Deadly Gladiator Gloves Warrior
(@Argex,0,40823,0,0,@1990RT_2250AP), -- Deadly Gladiator Helm Warrior
(@Argex,0,40844,0,0,@1810RT_2250AP), -- Deadly Gladiator Legs Warrior
(@Argex,0,40862,0,0,@2050RT_1750AP), -- Deadly Gladiator Shoulders Warrior
-- Weapons
(@Argex,0,42490,0,0,@1930RT_4500AP),-- Deadly Gladiator Longbow (bow)
(@Argex,0,42495,0,0,@1930RT_4500AP),-- Deadly Gladiator Heavy Crossbow (crossbow)
(@Argex,0,42255,0,0,@1930RT_3150AP),-- Deadly Gladiator Mutilator (dagger) offhand
(@Argex,0,42242,0,0,@1930RT_3150AP),-- Deadly Gladiator Shanker (dagger) One Hand
(@Argex,0,42248,0,0,@1930RT_3150AP),-- Deadly Gladiator Shiv (dagger) offhand
(@Argex,0,42346,0,0,@1930RT_3150AP),-- Deadly Gladiator Spellblade (dagger) Main Hand
(@Argex,0,42265,0,0,@1930RT_3150AP),-- Deadly Gladiator Left Render (Fist Weapon) offhand
(@Argex,0,42270,0,0,@1930RT_3150AP),-- Deadly Gladiator Left Ripper (Fist Weapon) offhand
(@Argex,0,42260,0,0,@1930RT_3150AP),-- Deadly Gladiator Right Ripper (Fist Weapon) main hand
(@Argex,0,42485,0,0,@1930RT_4500AP),-- Deadly Gladiator Rifle (Gun)
(@Argex,0,42232,0,0,@1930RT_3150AP),-- Deadly Gladiator Chopper (1haxe) offhand
(@Argex,0,42208,0,0,@1930RT_3150AP),-- Deadly Gladiator Cleaver (1haxe) mainhand
(@Argex,0,42227,0,0,@1930RT_3150AP),-- Deadly Gladiator Hacker (1haxe) offhand
(@Argex,0,42237,0,0,@1930RT_3150AP),-- Deadly Gladiator Waraxe (1haxe) one hand
(@Argex,0,42280,0,0,@1930RT_3150AP),-- Deadly Gladiator Bonecracker (1hmace) offhand
(@Argex,0,42232,0,0,@1930RT_3150AP),-- Deadly Gladiator Gavel (1h mace) main hand
(@Argex,0,42275,0,0,@1930RT_3150AP),-- Deadly Gladiator Pummeler (1h mace) one hand
(@Argex,0,42290,0,0,@1930RT_3150AP),-- Deadly Gladiator Quickblade (1h sword) off hand
(@Argex,0,42285,0,0,@1930RT_3150AP),-- Deadly Gladiator Slicer (1h sword) one hand
(@Argex,0,42327,0,0,@1930RT_4500AP),-- Deadly Gladiator Pike (polearm)
(@Argex,0,42362,0,0,@1930RT_4500AP),-- Deadly Gladiator Battle Staff (staff)
(@Argex,0,42384,0,0,@1930RT_4500AP),-- Deadly Gladiator Energy Staff (staff)
(@Argex,0,44420,0,0,@1930RT_4500AP),-- Deadly Gladiator Focus Staff (staff)
(@Argex,0,42390,0,0,@1930RT_4500AP),-- Deadly Gladiator Staff (staff)
(@Argex,0,44419,0,0,@1930RT_4500AP),-- Deadly Gladiator War Staff (staff)
(@Argex,0,42450,0,0,@1930RT_2250AP),-- Deadly Gladiator War Edge (Thrown)
(@Argex,0,42317,0,0,@1930RT_4500AP),-- Deadly Gladiator Decapitator (2haxe)
(@Argex,0,42322,0,0,@1930RT_4500AP),-- Deadly Gladiator Bonegrinder (2hmace)
(@Argex,0,42232,0,0,@1930RT_4500AP),-- Deadly Gladiator Greatsword (2h Sword)
(@Argex,0,42513,0,0,@1930RT_2250AP),-- Deadly Gladiator Baton of Light (wand)
(@Argex,0,42519,0,0,@1930RT_2250AP),-- Deadly Gladiator Piercing Touch (wand)
(@Argex,0,42502,0,0,@1930RT_2250AP),-- Deadly Gladiator Touch of Defeat (wand)
(@Argex,0,42564,0,0,@1930RT_2250AP),-- Deadly Gladiator Barrier (shield)
(@Argex,0,42570,0,0,@1930RT_2250AP),-- Deadly Gladiator Redoubt (shield)
(@Argex,0,42559,0,0,@1930RT_2250AP),-- Deadly Gladiator Shield Wall (shield)
(@Argex,0,42588,0,0,@1930RT_1200AP),-- Deadly Gladiator Idol of Resolve (Relic)
(@Argex,0,42583,0,0,@1930RT_1200AP),-- Deadly Gladiator Idol of Steadfastness (Relic)
(@Argex,0,42578,0,0,@1930RT_1200AP),-- Deadly Gladiator Idol of Tenacity (Relic)
(@Argex,0,42852,0,0,@1930RT_1200AP),-- Deadly Gladiator Libram of Fortitude (Relic)
(@Argex,0,42614,0,0,@1930RT_1200AP),-- Deadly Gladiator Libram of Justice (Relic)
(@Argex,0,42620,0,0,@1930RT_1200AP),-- Deadly Gladiator Sigil of Strife (Relic)
(@Argex,0,42607,0,0,@1930RT_1200AP),-- Deadly Gladiator Totem of Indomitability (Relic)
(@Argex,0,42602,0,0,@1930RT_1200AP),-- Deadly Gladiator Totem of Survival (Relic)
(@Argex,0,42597,0,0,@1930RT_1200AP),-- Deadly Gladiator Totem of the Third Wind (Relic)
-- NEXT SET SPACER
-- NEXT SET SPACER
-- NEXT SET SPACER
(@Thunderhorn,0,42110,0,0,@38000HP), -- Hateful Gladiator Band of Dominance
(@Thunderhorn,0,42112,0,0,@38000HP), -- Hateful Gladiator Band of Triumph
(@Thunderhorn,0,42057,0,0,@38000HP), -- Hateful Gladiator's Cloak of Ascendancy
(@Thunderhorn,0,42059,0,0,@38000HP), -- Hateful Gladiator's Cloak of Deliverance
(@Thunderhorn,0,42055,0,0,@38000HP), -- Hateful Gladiator's Cloak of Dominance
(@Thunderhorn,0,42058,0,0,@38000HP), -- Hateful Gladiator's Cloak of Salvation
(@Thunderhorn,0,42056,0,0,@38000HP), -- Hateful Gladiator's Cloak of Subjugation
(@Thunderhorn,0,42060,0,0,@38000HP), -- Hateful Gladiator's Cloak of Triumph
(@Thunderhorn,0,42061,0,0,@38000HP), -- Hateful Gladiator's Cloak of Victory
(@Thunderhorn,0,42024,0,0,@38000HP), -- Hateful Gladiator's Pendant of Ascendancy
(@Thunderhorn,0,42025,0,0,@38000HP), -- Hateful Gladiator's Pendant of Deliverance
(@Thunderhorn,0,42022,0,0,@38000HP), -- Hateful Gladiator's Pendant of Dominance
(@Thunderhorn,0,42026,0,0,@38000HP), -- Hateful Gladiator's Pendant of Salvation
(@Thunderhorn,0,42023,0,0,@38000HP), -- Hateful Gladiator's Pendant of Subjugation
(@Thunderhorn,0,42020,0,0,@38000HP), -- Hateful Gladiator's Pendant of Triumph
(@Thunderhorn,0,42021,0,0,@38000HP), -- Hateful Gladiator's Pendant of Victory
(@Thunderhorn,0,41638,0,0,@31600HP), -- Hateful Gladiator's Armwraps of Dominance
(@Thunderhorn,0,41332,0,0,@31600HP), -- Hateful Gladiator's Armwraps of Salvation
(@Thunderhorn,0,41830,0,0,@31600HP), -- Hateful Gladiator's Armwraps of Triumph
(@Thunderhorn,0,40972,0,0,@31600HP), -- Hateful Gladiator's Bracers of Salvation
(@Thunderhorn,0,40887,0,0,@31600HP), -- Hateful Gladiator's Bracers of Triumph
(@Thunderhorn,0,41907,0,0,@31600HP), -- Hateful Gladiator's Cuffs of Dominance
(@Thunderhorn,0,41878,0,0,@31600HP), -- Hateful Gladiator's Cuffs of Salvation
(@Thunderhorn,0,41063,0,0,@31600HP), -- Hateful Gladiator's Wristguards of Dominance
(@Thunderhorn,0,41047,0,0,@31600HP), -- Hateful Gladiator's Wristguards of Salvation
(@Thunderhorn,0,41223,0,0,@31600HP), -- Hateful Gladiator's Wristguards of Triumph
(@Thunderhorn,0,41633,0,0,@49600HP), -- Hateful Gladiator's Boots of Dominance
(@Thunderhorn,0,41331,0,0,@49600HP), -- Hateful Gladiator's Boots of Salvation
(@Thunderhorn,0,41828,0,0,@49600HP), -- Hateful Gladiator's Boots of Triumph
(@Thunderhorn,0,40973,0,0,@49600HP), -- Hateful Gladiator's Greaves of Salvation
(@Thunderhorn,0,40878,0,0,@49600HP), -- Hateful Gladiator's Greaves of Triumph
(@Thunderhorn,0,41073,0,0,@49600HP), -- Hateful Gladiator's Sabatons of Dominance
(@Thunderhorn,0,41049,0,0,@49600HP), -- Hateful Gladiator's Sabatons of Salvation
(@Thunderhorn,0,41228,0,0,@49600HP), -- Hateful Gladiator's Sabatons of Triumph
(@Thunderhorn,0,41901,0,0,@49600HP), -- Hateful Gladiator's Slippers of Dominance
(@Thunderhorn,0,41879,0,0,@49600HP), -- Hateful Gladiator's Slippers of Salvation
(@Thunderhorn,0,41628,0,0,@49600HP), -- Hateful Gladiator's Belt of Dominance
(@Thunderhorn,0,41330,0,0,@49600HP), -- Hateful Gladiator's Belt of Salvation
(@Thunderhorn,0,41827,0,0,@49600HP), -- Hateful Gladiator's Belt of Triumph
(@Thunderhorn,0,41896,0,0,@49600HP), -- Hateful Gladiator's Cord of Dominance
(@Thunderhorn,0,41877,0,0,@49600HP), -- Hateful Gladiator's Cord of Salvation
(@Thunderhorn,0,40966,0,0,@49600HP), -- Hateful Gladiator's Girdle of Salvation
(@Thunderhorn,0,40877,0,0,@49600HP), -- Hateful Gladiator's Girdle of Triumph
(@Thunderhorn,0,41068,0,0,@49600HP), -- Hateful Gladiator's Waistguard of Dominance
(@Thunderhorn,0,41050,0,0,@49600HP), -- Hateful Gladiator's Waistguard of Salvation
(@Thunderhorn,0,41233,0,0,@49600HP), -- Hateful Gladiator's Waistguard of Triumph
(@Thunderhorn,0,42122,0,0,@49600HP), -- Medallion of the Horde
-- NEXT SET SPACER
-- NEXT SET SPACER
-- NEXT SET SPACER
(@Doris,0,42129,0,0,@1800RT_62000HP), -- Battlemasters Accuracy   213
(@Doris,0,42130,0,0,@1800RT_62000HP), -- Battlemasters Avidity    213
(@Doris,0,42132,0,0,@1800RT_62000HP), -- Battlemasters Bravery    213
(@Doris,0,42131,0,0,@1800RT_62000HP), -- Battlemasters Conviction 213
(@Doris,0,42128,0,0,@1800RT_62000HP), -- Battlemasters Hostility  213
(@Doris,0,42064,0,0,@1750RT_47400HP), -- Deadly Gladiator Cloack of Ascendancy
(@Doris,0,42066,0,0,@1750RT_47400HP), -- Deadly Gladiator Cloack of Deliverance
(@Doris,0,42062,0,0,@1750RT_47400HP), -- Deadly Gladiator Cloack of Dominance
(@Doris,0,42065,0,0,@1750RT_47400HP), -- Deadly Gladiator Cloack of Salvation
(@Doris,0,42063,0,0,@1750RT_47400HP), -- Deadly Gladiator Cloack of Subjugation
(@Doris,0,42067,0,0,@1750RT_47400HP), -- Deadly Gladiator Cloack of Triumph
(@Doris,0,42068,0,0,@1750RT_47400HP), -- Deadly Gladiator Cloack of Victory
(@Doris,0,41634,0,0,@1720RT_62000HP), -- Deadly Gladiator Boots of Dominance
(@Doris,0,41620,0,0,@1720RT_62000HP), -- Deadly Gladiator Boots of Salvation
(@Doris,0,41835,0,0,@1720RT_62000HP), -- Deadly Gladiator Boots of Triumph
(@Doris,0,40975,0,0,@1720RT_62000HP), -- Deadly Gladiator Greaves of Salvation
(@Doris,0,40880,0,0,@1720RT_62000HP), -- Deadly Gladiator Greaves of Triumph
(@Doris,0,41074,0,0,@1720RT_62000HP), -- Deadly Gladiator Sabatons of Dominance
(@Doris,0,41054,0,0,@1720RT_62000HP), -- Deadly Gladiator Sabatons of Salvation
(@Doris,0,41229,0,0,@1720RT_62000HP), -- Deadly Gladiator Sabatons of Triumph
(@Doris,0,41902,0,0,@1720RT_62000HP), -- Deadly Gladiator Treads of Dominance
(@Doris,0,41884,0,0,@1720RT_62000HP), -- Deadly Gladiator Treads of Salvation
(@Doris,0,42114,0,0,@1690RT_47400HP), -- Deadly Gladiator Band of Ascendancy
(@Doris,0,42115,0,0,@1690RT_47400HP), -- Deadly Gladiator Band of Victory
(@Doris,0,41639,0,0,@1660RT_39400HP), -- Deadly Gladiator Armwraps of Dominance
(@Doris,0,41624,0,0,@1660RT_39400HP), -- Deadly Gladiator Armwraps of Salvation
(@Doris,0,41839,0,0,@1660RT_39400HP), -- Deadly Gladiator Armwraps of Triumph
(@Doris,0,40982,0,0,@1660RT_39400HP), -- Deadly Gladiator Bracers of Salvation
(@Doris,0,40888,0,0,@1660RT_39400HP), -- Deadly Gladiator Bracers of Triumph
(@Doris,0,41908,0,0,@1660RT_39400HP), -- Deadly Gladiator Cuffs of Dominance
(@Doris,0,41892,0,0,@1660RT_39400HP), -- Deadly Gladiator Cuffs of Salvation
(@Doris,0,41064,0,0,@1660RT_39400HP), -- Deadly Gladiator Wristguards of Dominance
(@Doris,0,41059,0,0,@1660RT_39400HP), -- Deadly Gladiator Wristguards of Salvation
(@Doris,0,41224,0,0,@1660RT_39400HP), -- Deadly Gladiator Wristguards of Triumph
(@Doris,0,41629,0,0,@1630RT_62000HP), -- Deadly Gladiator Belt of Dominance
(@Doris,0,41616,0,0,@1630RT_62000HP), -- Deadly Gladiator Belt of Salvation
(@Doris,0,41831,0,0,@1630RT_62000HP), -- Deadly Gladiator Belt of Triumph
(@Doris,0,41897,0,0,@1630RT_62000HP), -- Deadly Gladiator Cord of Dominance
(@Doris,0,41880,0,0,@1630RT_62000HP), -- Deadly Gladiator Cord of Salvation
(@Doris,0,40974,0,0,@1630RT_62000HP), -- Deadly Gladiator Girdle of Salvation
(@Doris,0,40879,0,0,@1630RT_62000HP), -- Deadly Gladiator Girdle of Triumph
(@Doris,0,41069,0,0,@1630RT_62000HP), -- Deadly Gladiator Waistguard of Dominance
(@Doris,0,41048,0,0,@1630RT_62000HP), -- Deadly Gladiator Waistguard of Salvation
(@Doris,0,41234,0,0,@1630RT_62000HP), -- Deadly Gladiator Waistguard of Triumph
(@Doris,0,42030,0,0,@1600RT_47400HP), -- Deadly Gladiator Pendant of Ascendancy
(@Doris,0,42032,0,0,@1600RT_47400HP), -- Deadly Gladiator Pendant of Deliverance
(@Doris,0,42029,0,0,@1600RT_47400HP), -- Deadly Gladiator Pendant of Dominance
(@Doris,0,42033,0,0,@1600RT_47400HP), -- Deadly Gladiator Pendant of Salvation
(@Doris,0,42031,0,0,@1600RT_47400HP), -- Deadly Gladiator Pendant of Subjugation
(@Doris,0,42027,0,0,@1600RT_47400HP), -- Deadly Gladiator Pendant of Triumph
(@Doris,0,42028,0,0,@1600RT_47400HP), -- Deadly Gladiator Pendant of Victory
-- Spacer
(@Tristia,0,42129,0,0,@1800RT_62000HP), -- Battlemasters Accuracy   213
(@Tristia,0,42130,0,0,@1800RT_62000HP), -- Battlemasters Avidity    213
(@Tristia,0,42132,0,0,@1800RT_62000HP), -- Battlemasters Bravery    213
(@Tristia,0,42131,0,0,@1800RT_62000HP), -- Battlemasters Conviction 213
(@Tristia,0,42128,0,0,@1800RT_62000HP), -- Battlemasters Hostility  213
(@Tristia,0,42064,0,0,@1750RT_47400HP), -- Deadly Gladiator Cloack of Ascendancy
(@Tristia,0,42066,0,0,@1750RT_47400HP), -- Deadly Gladiator Cloack of Deliverance
(@Tristia,0,42062,0,0,@1750RT_47400HP), -- Deadly Gladiator Cloack of Dominance
(@Tristia,0,42065,0,0,@1750RT_47400HP), -- Deadly Gladiator Cloack of Salvation
(@Tristia,0,42063,0,0,@1750RT_47400HP), -- Deadly Gladiator Cloack of Subjugation
(@Tristia,0,42067,0,0,@1750RT_47400HP), -- Deadly Gladiator Cloack of Triumph
(@Tristia,0,42068,0,0,@1750RT_47400HP), -- Deadly Gladiator Cloack of Victory
(@Tristia,0,41634,0,0,@1720RT_62000HP), -- Deadly Gladiator Boots of Dominance
(@Tristia,0,41620,0,0,@1720RT_62000HP), -- Deadly Gladiator Boots of Salvation
(@Tristia,0,41835,0,0,@1720RT_62000HP), -- Deadly Gladiator Boots of Triumph
(@Tristia,0,40975,0,0,@1720RT_62000HP), -- Deadly Gladiator Greaves of Salvation
(@Tristia,0,40880,0,0,@1720RT_62000HP), -- Deadly Gladiator Greaves of Triumph
(@Tristia,0,41074,0,0,@1720RT_62000HP), -- Deadly Gladiator Sabatons of Dominance
(@Tristia,0,41054,0,0,@1720RT_62000HP), -- Deadly Gladiator Sabatons of Salvation
(@Tristia,0,41229,0,0,@1720RT_62000HP), -- Deadly Gladiator Sabatons of Triumph
(@Tristia,0,41902,0,0,@1720RT_62000HP), -- Deadly Gladiator Treads of Dominance
(@Tristia,0,41884,0,0,@1720RT_62000HP), -- Deadly Gladiator Treads of Salvation
(@Tristia,0,42114,0,0,@1690RT_47400HP), -- Deadly Gladiator Band of Ascendancy
(@Tristia,0,42115,0,0,@1690RT_47400HP), -- Deadly Gladiator Band of Victory
(@Tristia,0,41639,0,0,@1660RT_39400HP), -- Deadly Gladiator Armwraps of Dominance
(@Tristia,0,41624,0,0,@1660RT_39400HP), -- Deadly Gladiator Armwraps of Salvation
(@Tristia,0,41839,0,0,@1660RT_39400HP), -- Deadly Gladiator Armwraps of Triumph
(@Tristia,0,40982,0,0,@1660RT_39400HP), -- Deadly Gladiator Bracers of Salvation
(@Tristia,0,40888,0,0,@1660RT_39400HP), -- Deadly Gladiator Bracers of Triumph
(@Tristia,0,41908,0,0,@1660RT_39400HP), -- Deadly Gladiator Cuffs of Dominance
(@Tristia,0,41892,0,0,@1660RT_39400HP), -- Deadly Gladiator Cuffs of Salvation
(@Tristia,0,41064,0,0,@1660RT_39400HP), -- Deadly Gladiator Wristguards of Dominance
(@Tristia,0,41059,0,0,@1660RT_39400HP), -- Deadly Gladiator Wristguards of Salvation
(@Tristia,0,41224,0,0,@1660RT_39400HP), -- Deadly Gladiator Wristguards of Triumph
(@Tristia,0,41629,0,0,@1630RT_62000HP), -- Deadly Gladiator Belt of Dominance
(@Tristia,0,41616,0,0,@1630RT_62000HP), -- Deadly Gladiator Belt of Salvation
(@Tristia,0,41831,0,0,@1630RT_62000HP), -- Deadly Gladiator Belt of Triumph
(@Tristia,0,41897,0,0,@1630RT_62000HP), -- Deadly Gladiator Cord of Dominance
(@Tristia,0,41880,0,0,@1630RT_62000HP), -- Deadly Gladiator Cord of Salvation
(@Tristia,0,40974,0,0,@1630RT_62000HP), -- Deadly Gladiator Girdle of Salvation
(@Tristia,0,40879,0,0,@1630RT_62000HP), -- Deadly Gladiator Girdle of Triumph
(@Tristia,0,41069,0,0,@1630RT_62000HP), -- Deadly Gladiator Waistguard of Dominance
(@Tristia,0,41048,0,0,@1630RT_62000HP), -- Deadly Gladiator Waistguard of Salvation
(@Tristia,0,41234,0,0,@1630RT_62000HP), -- Deadly Gladiator Waistguard of Triumph
(@Tristia,0,42030,0,0,@1600RT_47400HP), -- Deadly Gladiator Pendant of Ascendancy
(@Tristia,0,42032,0,0,@1600RT_47400HP), -- Deadly Gladiator Pendant of Deliverance
(@Tristia,0,42029,0,0,@1600RT_47400HP), -- Deadly Gladiator Pendant of Dominance
(@Tristia,0,42033,0,0,@1600RT_47400HP), -- Deadly Gladiator Pendant of Salvation
(@Tristia,0,42031,0,0,@1600RT_47400HP), -- Deadly Gladiator Pendant of Subjugation
(@Tristia,0,42027,0,0,@1600RT_47400HP), -- Deadly Gladiator Pendant of Triumph
(@Tristia,0,42028,0,0,@1600RT_47400HP); -- Deadly Gladiator Pendant of Victory
-- Add Spectral Gyphron to Wintergrasp
DELETE FROM `spell_area` WHERE `spell`=55164 AND `area`=4197;
INSERT INTO `spell_area` 
(`spell`,`area`,`quest_start`,`quest_start_active`,`aura_spell`,`racemask`,`gender`,`autocast`) 
VALUES
(55164,4197,0,0,8326,65527,2,1);

-- Missing database loot entries for Mature Lasher
SET @lasher := 34300;
DELETE FROM `creature_loot_template` WHERE `entry`=@lasher;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(@lasher,37704,100,1,0,1,3), -- Crystalised Life
(@lasher,43324,-75,1,0,1,1), -- Alliance Herb Pouch
(@lasher,44809,-75,1,0,1,1), -- Horde Herb Pouch 
(@lasher,44774,80,1,0,1,1), -- Ice-Piercing Thorn
(@lasher,44775,20,1,0,1,1); -- Revolting Flower

-- Missing database harvest loot entries for Mature and Living Lasher
UPDATE `creature_template` SET `skinloot`=80007 WHERE `entry` IN (34300,30845);
DELETE FROM `disables` WHERE `sourceType`=4 AND `entry` IN (7608,7609);
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (7608,7609);
INSERT INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`, `ScriptName`) VALUES
(7608,12,0,0, ''),
(7608,13,8,0, ''),
(7609,12,1,0, ''),
(7609,13,20,0, '');
-- Zidormi SAI
SET @ENTRY  := 31848;
SET @GOSSIP := 10131;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,62,0,100,0,@GOSSIP,0,0,0,85,46343,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Zidormi - On gossip option select - Player Cast Teleport to Caverns of Time on self');
-- Cleanup gossip
UPDATE `gossip_menu_option` SET `action_script_id`=0 WHERE `menu_id`=@GOSSIP;
DELETE FROM `gossip_scripts` WHERE `id`=@GOSSIP;

-- Darrok SAI
SET @ENTRY  := 27425;
SET @GOSSIP := 21250;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,@GOSSIP,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Darrok - On gossip option select - Close gossip'),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,85,48960,3,0,0,0,0,1,0,0,0,0,0,0,0, 'Darrok - On gossip option select - Cast Horde Log Ride 01 Begin on player'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,85,48961,3,0,0,0,0,1,0,0,0,0,0,0,0, 'Darrok - On gossip option select - Cast Log Ride Horde 00 on player');
-- Cleanup gossip
UPDATE `gossip_menu_option` SET `action_script_id`=0 WHERE `menu_id`=@GOSSIP;
DELETE FROM `gossip_scripts` WHERE `id`=2125100;

-- Stabled Argent Hippogryph SAI
SET @ENTRY  := 35117;
SET @GOSSIP := 10616;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,62,0,100,0,@GOSSIP,0,0,0,11,66777,2,0,0,0,0,7,0,0,0,0,0,0,0, 'Stabled Argent Hippogryph - On gossip option select - Cast Mount Up on player');
-- Cleanup gossip
UPDATE `gossip_menu_option` SET `action_script_id`=0 WHERE `menu_id`=@GOSSIP;
DELETE FROM `gossip_scripts` WHERE `id`=1061600;

-- Arch Druid Lilliandra SAI
SET @ENTRY  := 30630;
SET @GOSSIP := 9991;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,62,0,100,0,@GOSSIP,0,0,0,85,57536,0,0,0,0,0,19,30630,0,0,0,0,0,0, 'Arch Druid Lilliandra - On gossip option select - Player Cast Forcecast Portal: Moonglade on Arch Druid Lilliandra');
-- Cleanup gossip
UPDATE `gossip_menu_option` SET `action_script_id`=0 WHERE `menu_id`=@GOSSIP;
DELETE FROM `gossip_scripts` WHERE `id`=999200;

-- Librarian Tiare SAI
SET @ENTRY  := 30051;
SET @GOSSIP := 9626;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,62,0,100,0,@GOSSIP,0,0,0,11,50135,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Librarian Tiare - On gossip option select - Cast Teleport - Coldarra, Transitus Shield to Amber Ledge on player');
-- Cleanup gossip
UPDATE `gossip_menu_option` SET `action_script_id`=0 WHERE `menu_id`=@GOSSIP;
DELETE FROM `gossip_scripts` WHERE `id`=962600;

-- Surristrasz SAI
SET @ENTRY  := 24795;
SET @GOSSIP := 9472;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,@GOSSIP,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Surristrasz - On gossip option select - Close gossip'),
(@ENTRY,0,1,0,61,0,100,0,@GOSSIP,0,0,0,85,46064,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Surristrasz - On gossip option select - Player Cast Amber Ledge to Coldarra on self');
-- Cleanup gossip
UPDATE `gossip_menu_option` SET `action_script_id`=0 WHERE `menu_id`=@GOSSIP;
DELETE FROM `gossip_scripts` WHERE `id`=947200;

-- Jero'me SAI
SET @ENTRY  := 19882;
SET @GOSSIP := 8060;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,62,0,100,0,@GOSSIP,1,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Jero''me - On gossip option select - Close gossip');
-- Cleanup gossip
UPDATE `gossip_menu_option` SET `action_script_id`=0 WHERE `menu_id`=@GOSSIP;
DELETE FROM `gossip_scripts` WHERE `id`=806000;

-- Greer Orehammer SAI
SET @ENTRY  := 23859;
SET @GOSSIP := 9546;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,80,2385900,0,2,0,0,0,1,0,0,0,0,0,0,0, 'Greer Orehammer - On aggro - Run Script'),
(@ENTRY,0,1,2,62,0,100,0,@GOSSIP,1,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Greer Orehammer - On gossip option select - Close gossip'),
(@ENTRY,0,2,3,61,0,100,0,0,0,0,0,56,33634,10,0,0,0,0,7,0,0,0,0,0,0,0, 'Greer Orehammer - On gossip option select - give player 10 Orehammer''s Precision Bombs'),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,52,745,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Greer Orehammer - On gossip option select - Plague This Taxi Start');
-- Cleanup gossip
UPDATE `gossip_menu_option` SET `action_script_id`=0 WHERE `menu_id`=@GOSSIP;
DELETE FROM `gossip_scripts` WHERE `id`=954601;

UPDATE `instance_template` SET `script`='instance_blackrock_spire' WHERE `map`=229;
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_putricide_ooze_channel';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(70447, 'spell_putricide_ooze_channel'),
(72836, 'spell_putricide_ooze_channel'),
(72837, 'spell_putricide_ooze_channel'),
(72838, 'spell_putricide_ooze_channel'),
(70672, 'spell_putricide_ooze_channel'),
(72455, 'spell_putricide_ooze_channel'),
(72832, 'spell_putricide_ooze_channel'),
(72833, 'spell_putricide_ooze_channel');
DELETE FROM `spell_linked_spell` WHERE `spell_effect`=70530;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(-70447,70530,0, 'Putricide: Volatile Ooze Adhesive Protection'),
(-72836,70530,0, 'Putricide: Volatile Ooze Adhesive Protection'),
(-72837,70530,0, 'Putricide: Volatile Ooze Adhesive Protection'),
(-72838,70530,0, 'Putricide: Volatile Ooze Adhesive Protection');
DELETE FROM `command` WHERE name = 'learn all';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_valanar_kinetic_bomb_absorb';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(72054, 'spell_valanar_kinetic_bomb_absorb');
UPDATE `creature_template` SET `ScriptName`='npc_princess_stillpine' WHERE `entry`=17682;
UPDATE `gameobject_template` SET `ScriptName`='go_princess_stillpines_cage' WHERE `entry`=181928;
DELETE FROM `script_texts` WHERE `npc_entry` =17682;
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(17682,-1800074,'Go to the west',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL);
UPDATE `creature_template` SET `ScriptName` = 'npc_corki' WHERE `entry` IN (18445,20812,18369);
UPDATE `gameobject_template` SET `ScriptName` = 'go_corkis_prison' WHERE `entry` IN (182349,182350,182521);
DELETE FROM `script_texts` WHERE `npc_entry` IN (18445,20812,18369);
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(18445,-1800071, 'Thanks, $C! I''m sure my dad will reward you greatly! Bye!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(20812,-1800072, 'This is the last time I get caught!I promise! Bye!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(18369,-1800073, 'Thank you for saving me again!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL);
-- Add spell script
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_ulduar_proximity_mines';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(63027, 'spell_ulduar_proximity_mines');
-- Add spell script
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_symbol_of_life_dummy';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(8593, 'spell_symbol_of_life_dummy');
DELETE FROM `smart_scripts` WHERE (`entryorguid`=25171 OR `entryorguid` BETWEEN -209026 AND -209019) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-209019,0,0,0,1,0,100,1,500,500,0,0,11,63413,0,0,0,0,0,11,35469,10,0,0,0,0,0, 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Gormok the Impaler'),
(-209020,0,0,0,1,0,100,1,500,500,0,0,11,63413,0,0,0,0,0,11,35469,10,0,0,0,0,0, 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Gormok the Impaler'),
(-209022,0,0,0,1,0,100,1,500,500,0,0,11,63413,0,0,0,0,0,11,35469,10,0,0,0,0,0, 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Gormok the Impaler'),
(-209023,0,0,0,1,0,100,1,500,500,0,0,11,63413,0,0,0,0,0,11,35469,10,0,0,0,0,0, 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Gormok the Impaler'),
(-209021,0,0,0,1,0,100,1,500,500,0,0,11,63413,0,0,0,0,0,11,35470,10,0,0,0,0,0, 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Icehowl'),
(-209024,0,0,0,1,0,100,1,500,500,0,0,11,63413,0,0,0,0,0,11,35470,10,0,0,0,0,0, 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Icehowl'),
(-209025,0,0,0,1,0,100,1,500,500,0,0,11,63413,0,0,0,0,0,11,35470,10,0,0,0,0,0, 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Icehowl'),
(-209026,0,0,0,1,0,100,1,500,500,0,0,11,63413,0,0,0,0,0,11,35470,10,0,0,0,0,0, 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Icehowl');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (19,20) AND `SourceEntry` IN (13593,13703,13704,13705,13706,13707,13708,13709,13710,13711);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(19,0,13593,0,8,13700,0,0,0,'','Valiant Of Stormwind - Alliance Champion Marker'),
(19,0,13703,0,8,13700,0,0,0,'','Valiant Of Ironforge - Alliance Champion Marker'),
(19,0,13704,0,8,13700,0,0,0,'','Valiant Of Gnomeregan - Alliance Champion Marker'),
(19,0,13705,0,8,13700,0,0,0,'','Valiant Of The Exodar - Alliance Champion Marker'),
(19,0,13706,0,8,13700,0,0,0,'','Valiant Of Darnassus - Alliance Champion Marker'),
(19,0,13707,0,8,13701,0,0,0,'','Valiant Of Orgrimmar - Horde Champion Marker'),
(19,0,13708,0,8,13701,0,0,0,'','Valiant Of Sen''jin - Horde Champion Marker'),
(19,0,13709,0,8,13701,0,0,0,'','Valiant Of Thunder Bluff - Horde Champion Marker'),
(19,0,13710,0,8,13701,0,0,0,'','Valiant Of Undercity - Horde Champion Marker'),
(19,0,13711,0,8,13701,0,0,0,'','Valiant Of Silvermoon - Horde Champion Marker'),
(20,0,13593,0,8,13700,0,0,0,'','Valiant Of Stormwind - Alliance Champion Marker'),
(20,0,13703,0,8,13700,0,0,0,'','Valiant Of Ironforge - Alliance Champion Marker'),
(20,0,13704,0,8,13700,0,0,0,'','Valiant Of Gnomeregan - Alliance Champion Marker'),
(20,0,13705,0,8,13700,0,0,0,'','Valiant Of The Exodar - Alliance Champion Marker'),
(20,0,13706,0,8,13700,0,0,0,'','Valiant Of Darnassus - Alliance Champion Marker'),
(20,0,13707,0,8,13701,0,0,0,'','Valiant Of Orgrimmar - Horde Champion Marker'),
(20,0,13708,0,8,13701,0,0,0,'','Valiant Of Sen''jin - Horde Champion Marker'),
(20,0,13709,0,8,13701,0,0,0,'','Valiant Of Thunder Bluff - Horde Champion Marker'),
(20,0,13710,0,8,13701,0,0,0,'','Valiant Of Undercity - Horde Champion Marker'),
(20,0,13711,0,8,13701,0,0,0,'','Valiant Of Silvermoon - Horde Champion Marker');

-- Cast Armistice inside pavillions as well
DELETE FROM `spell_area` WHERE `spell`=64373 AND `area` IN (4666,4667,4674);
INSERT INTO `spell_area` (`spell`,`area`,`quest_start`,`quest_start_active`,`quest_end`,`aura_spell`,`racemask`,`gender`,`autocast`) VALUES
(64373,4666,0,0,0,0,0,2,1), -- Sunreaver Pavillion
(64373,4667,0,0,0,0,0,2,1), -- Silver Covenant Pavillion
(64373,4674,0,0,0,0,0,2,1); -- Argent Pavillion

UPDATE `npc_spellclick_spells` SET `quest_end`=13687 WHERE `npc_entry`=33842; -- Sunreaver Hawkstrider - !Horde Tournament Eligibility Marker
UPDATE `npc_spellclick_spells` SET `quest_end`=13686 WHERE `npc_entry`=33843; -- Quel'dorei Steed - !Alliance Tournament Eligibility Marker

-- Valiant of * quests, by Kaelima
-- Alliance
UPDATE `quest_template` SET `RequiredRaces`=`RequiredRaces`&~1 WHERE `entry`=13593; -- !Human - Valiant Of Stormwind
UPDATE `quest_template` SET `RequiredRaces`=`RequiredRaces`&~4 WHERE `entry`=13703; -- !Dwarf - Valiant Of Ironforge
UPDATE `quest_template` SET `RequiredRaces`=`RequiredRaces`&~64 WHERE `entry`=13704; -- !Gnome - Valiant Of Gnomeregan
UPDATE `quest_template` SET `RequiredRaces`=`RequiredRaces`&~1024 WHERE `entry`=13705; -- !Draenei - Valiant Of The Exodar
UPDATE `quest_template` SET `RequiredRaces`=`RequiredRaces`&~8 WHERE `entry`=13706; -- !Night Elf - Valiant Of Darnassus
-- Horde
UPDATE `quest_template` SET `RequiredRaces`=`RequiredRaces`&~2 WHERE `entry`=13707; -- !Orc - Valiant of Orgrimmar
UPDATE `quest_template` SET `RequiredRaces`=`RequiredRaces`&~128 WHERE `entry`=13708; -- !Troll - Valiant Of Sen'jin
UPDATE `quest_template` SET `RequiredRaces`=`RequiredRaces`&~32 WHERE `entry`=13709; -- !Tauren - Valiant Of Thunder Bluff
UPDATE `quest_template` SET `RequiredRaces`=`RequiredRaces`&~16 WHERE `entry`=13710; -- !Undead - Valiant Of Undercity
UPDATE `quest_template` SET `RequiredRaces`=`RequiredRaces`&~512 WHERE `entry`=13711; -- !Blood Elf - Valiant Of Silvermoon
UPDATE `creature_template` SET `speed_run`=1,`spell2`=30708 WHERE `entry`=17539; -- Totem of Wrath I
UPDATE `creature_template` SET `faction_A`=35,`faction_H`=35,`speed_run`=1,`spell2`=30708 WHERE `entry`=30652; -- Totem of Wrath II
UPDATE `creature_template` SET `spell2`=30708 WHERE `entry`=30653; -- Totem of Wrath III
UPDATE `creature_template` SET `faction_A`=35,`faction_H`=35,`spell2`=30708 WHERE `entry`=30654; -- Totem of Wrath IV

UPDATE `creature_model_info` SET `bounding_radius`=1,`combat_reach`=0,`gender`=2 WHERE `modelid`=4589;

DELETE FROM `creature_template_addon` WHERE `entry` IN (17539,30652,30653,30654);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(17539,0,0,257,0,NULL), -- Totem of Wrath I
(30652,0,0,257,0,NULL), -- Totem of Wrath II
(30653,0,0,257,0,NULL), -- Totem of Wrath III
(30654,0,0,1,0,NULL); -- Totem of Wrath IV

DELETE FROM `spell_group` WHERE `spell_id`=30708; -- Unneeded stack rules
--
-- Table structure for table `achievement_dbc`
--

DROP TABLE IF EXISTS `achievement_dbc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `achievement_dbc` (
  `ID` int(10) unsigned NOT NULL,
  `requiredFaction` int(11) NOT NULL DEFAULT '-1',
  `mapID` int(11) NOT NULL DEFAULT '-1',
  `points` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(10) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  `refAchievement` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achievement_dbc`
--

LOCK TABLES `achievement_dbc` WRITE;
/*!40000 ALTER TABLE `achievement_dbc` DISABLE KEYS */;
INSERT INTO `achievement_dbc` VALUES
(3696,-1,-1,0,2,1,0), -- Earned the right to represent a city in the Argent Tournament
(4788,-1,-1,0,2,1,0), -- Is exalted with The Aldor or has any of exalted rewards
(4789,-1,-1,0,2,1,0); -- Is exalted with The Scryers or has any of exalted rewards
/*!40000 ALTER TABLE `achievement_dbc` ENABLE KEYS */;
UNLOCK TABLES;
-- Pathing for Redfang Elder Entry: 26436
SET @NPC := 102310;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3466.93,`position_y`=-4594.270,`position_z`=231.273 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3462.383,-4612.148,231.4899,0,0,0,100,0),
(@PATH,2,3455.436,-4622.705,231.2399,0,0,0,100,0),
(@PATH,3,3431.224,-4629.703,231.8959,0,0,0,100,0),
(@PATH,4,3417.972,-4627.66,231.7709,0,0,0,100,0),
(@PATH,5,3407.802,-4618.447,231.8959,0,0,0,100,0),
(@PATH,6,3404.309,-4602.283,231.6459,0,0,0,100,0),
(@PATH,7,3407.839,-4586.454,231.6536,0,0,0,100,0),
(@PATH,8,3418.060,-4573.690,231.466,0,0,0,100,0),
(@PATH,9,3434.690,-4569.920,231.300,0,0,0,100,0),
(@PATH,10,3450.15,-4570.980,231.293,0,0,0,100,0),
(@PATH,11,3462.95,-4577.800,231.405,0,0,0,100,0),
(@PATH,12,3466.93,-4594.270,231.273,0,0,0,100,0);

-- Pathing for Sorlof Entry: 24914
SET @NPC := 103278;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=234.3479,`position_y`=-3839.657,`position_z`=6.546998 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,260.008,-3825.02,5.059539,0,0,0,100,0),
(@PATH,2,279.0299,-3805.746,4.302778,0,0,0,100,0),
(@PATH,3,307.1137,-3802.395,2.265985,0,0,0,100,0),
(@PATH,4,327.6607,-3807.026,2.515985,0,0,0,100,0),
(@PATH,5,356.2998,-3801.84,1.635767,0,0,0,100,0),
(@PATH,6,390.8152,-3765.867,0.9720907,0,0,0,100,0),
(@PATH,7,376.6523,-3827.153,2.452734,0,0,0,100,0),
(@PATH,8,341.8276,-3860.943,5.220708,0,0,0,100,0),
(@PATH,9,317.3375,-3872.974,3.487318,0,0,0,100,0),
(@PATH,10,299.2409,-3881.008,1.03899,0,0,0,100,0),
(@PATH,11,281.0217,-3887.393,5.197232,0,0,0,100,0),
(@PATH,12,242.4368,-3911.016,4.672004,0,0,0,100,0),
(@PATH,13,234.3479,-3839.657,6.546998,0,0,0,100,0);

-- Pathing for Defias Tower Sentry Entry: 7056
SET @NPC := 66994;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-11155.1,`position_y`=537.7078,`position_z`=61.61254 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-11149.68,531.8951,61.64723,0,0,0,100,0),
(@PATH,2,-11145.47,530.3519,61.64816,0,0,0,100,0),
(@PATH,3,-11142.67,529.801,61.65041,0,0,0,100,0),
(@PATH,4,-11140.16,529.242,61.64826,0,0,0,100,0),
(@PATH,5,-11135.57,530.644,61.6618,0,0,0,100,0),
(@PATH,6,-11131.79,533.377,61.64826,0,0,0,100,0),
(@PATH,7,-11130.45,537.5435,61.64826,0,0,0,100,0),
(@PATH,8,-11129.11,544.0456,61.61562,0,0,0,100,0),
(@PATH,9,-11131.18,551.2862,61.6304,0,0,0,100,0),
(@PATH,10,-11133.83,554.506,61.63765,0,0,0,100,0),
(@PATH,11,-11137.87,556.6643,61.64382,0,0,0,100,0),
(@PATH,12,-11144.09,557.5725,61.63416,0,0,0,100,0),
(@PATH,13,-11150.33,555.5367,61.60638,0,0,0,100,0),
(@PATH,14,-11154.31,552.1038,61.62201,0,0,0,100,0),
(@PATH,15,-11156.64,544.7747,61.62113,0,0,0,100,0),
(@PATH,16,-11155.1,537.7078,61.61254,0,0,0,100,0);

-- Pathing for Defias Tower Patroller Entry: 7052
SET @NPC := 66988;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-11152.27,`position_y`=552.6809,`position_z`=55.89178 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-11149.12,554.4658,55.80492,0,0,0,100,0),
(@PATH,2,-11144.68,556.6826,55.13705,0,0,0,100,0),
(@PATH,3,-11140.38,556.8944,53.87344,0,0,0,100,0),
(@PATH,4,-11136,554.8301,52.57347,0,0,0,100,0),
(@PATH,5,-11131.66,549.8716,50.37294,0,0,0,100,0),
(@PATH,6,-11130.73,546.1309,49.47009,0,0,0,100,0),
(@PATH,7,-11131.66,549.8716,50.37294,0,0,0,100,0),
(@PATH,8,-11136,554.8301,52.57347,0,0,0,100,0),
(@PATH,9,-11140.38,556.8944,53.87344,0,0,0,100,0),
(@PATH,10,-11144.68,556.6826,55.13705,0,0,0,100,0),
(@PATH,11,-11149.12,554.4658,55.80492,0,0,0,100,0),
(@PATH,12,-11152.27,552.6809,55.89178,0,0,0,100,0);

-- Pathing for Malformed Defias Drone Entry: 7051
SET @NPC := 90331;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-11147.35,`position_y`=512.5392,`position_z`=32.61861 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-11155.68,519.0281,32.36861,0,0,0,100,0),
(@PATH,2,-11147.35,512.5392,32.61861,0,0,0,100,0),
(@PATH,3,-11135.54,503.5617,31.61861,0,0,0,100,0),
(@PATH,4,-11120.64,505.8491,31.42709,0,0,0,100,0),
(@PATH,5,-11107.24,507.4966,30.92709,0,0,0,100,0),
(@PATH,6,-11120.64,505.8491,31.42709,0,0,0,100,0),
(@PATH,7,-11135.54,503.5617,31.61861,0,0,0,100,0),
(@PATH,8,-11147.35,512.5392,32.61861,0,0,0,100,0);

-- Pathing for Blackrock Scout Entry: 4064
SET @NPC := 28337;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-9293.198,`position_y`=-2943.878,`position_z`=163.8473 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-9294.498,-2942.447,163.8475,0,0,0,100,0),
(@PATH,2,-9295.34,-2940.965,163.8479,0,0,0,100,0),
(@PATH,3,-9295.685,-2939.59,163.8468,0,0,0,100,0),
(@PATH,4,-9295.738,-2938.026,163.8467,0,0,0,100,0),
(@PATH,5,-9295.759,-2936.388,163.847,0,0,0,100,0),
(@PATH,6,-9295.278,-2935.375,163.8471,0,0,0,100,0),
(@PATH,7,-9294.543,-2934.205,163.8473,0,0,0,100,0),
(@PATH,8,-9294.007,-2933.157,163.8473,0,0,0,100,0),
(@PATH,9,-9292.805,-2932.29,163.8473,0,0,0,100,0),
(@PATH,10,-9291.458,-2931.706,163.8473,0,0,0,100,0),
(@PATH,11,-9290.221,-2931.361,163.8473,0,0,0,100,0),
(@PATH,12,-9289.213,-2931.191,163.8473,0,0,0,100,0),
(@PATH,13,-9288.1,-2930.992,163.8473,0,0,0,100,0),
(@PATH,14,-9287.005,-2931.001,163.8473,0,0,0,100,0),
(@PATH,15,-9285.914,-2931.289,163.8473,0,0,0,100,0),
(@PATH,16,-9284.389,-2931.998,163.8473,0,0,0,100,0),
(@PATH,17,-9283.646,-2933.005,163.8473,0,0,0,100,0),
(@PATH,18,-9282.956,-2934.348,163.8473,0,0,0,100,0),
(@PATH,19,-9282.225,-2935.459,163.8473,0,0,0,100,0),
(@PATH,20,-9281.658,-2936.635,163.8473,0,0,0,100,0),
(@PATH,21,-9281.364,-2937.675,163.8473,0,0,0,100,0),
(@PATH,22,-9281.658,-2936.635,163.8473,0,0,0,100,0),
(@PATH,23,-9282.225,-2935.459,163.8473,0,0,0,100,0),
(@PATH,24,-9282.956,-2934.348,163.8473,0,0,0,100,0),
(@PATH,25,-9283.646,-2933.005,163.8473,0,0,0,100,0),
(@PATH,26,-9284.389,-2931.998,163.8473,0,0,0,100,0),
(@PATH,27,-9285.914,-2931.289,163.8473,0,0,0,100,0),
(@PATH,28,-9287.005,-2931.001,163.8473,0,0,0,100,0),
(@PATH,29,-9288.1,-2930.992,163.8473,0,0,0,100,0),
(@PATH,30,-9289.213,-2931.191,163.8473,0,0,0,100,0),
(@PATH,31,-9290.221,-2931.361,163.8473,0,0,0,100,0),
(@PATH,32,-9291.458,-2931.706,163.8473,0,0,0,100,0),
(@PATH,33,-9292.805,-2932.29,163.8473,0,0,0,100,0),
(@PATH,34,-9294.007,-2933.157,163.8473,0,0,0,100,0),
(@PATH,35,-9294.543,-2934.205,163.8473,0,0,0,100,0),
(@PATH,36,-9295.278,-2935.375,163.8471,0,0,0,100,0),
(@PATH,37,-9295.759,-2936.388,163.847,0,0,0,100,0),
(@PATH,38,-9295.738,-2938.026,163.8467,0,0,0,100,0),
(@PATH,39,-9295.685,-2939.59,163.8468,0,0,0,100,0),
(@PATH,40,-9295.391,-2940.761,163.8475,0,0,0,100,0),
(@PATH,41,-9294.498,-2942.447,163.8475,0,0,0,100,0),
(@PATH,42,-9293.198,-2943.878,163.8473,0,0,0,100,0),
(@PATH,43,-9291.648,-2944.502,163.8473,0,0,0,100,0),
(@PATH,44,-9289.801,-2945.168,163.8473,0,0,0,100,0),
(@PATH,45,-9288.234,-2945.503,163.8473,0,0,0,100,0),
(@PATH,46,-9286.938,-2945.095,163.8473,0,0,0,100,0),
(@PATH,47,-9285.65,-2944.349,163.8473,0,0,0,100,0),
(@PATH,48,-9284.43,-2943.57,163.8473,0,0,0,100,0),
(@PATH,49,-9283.33,-2942.828,163.8473,0,0,0,100,0),
(@PATH,50,-9282.16,-2941.825,163.8473,0,0,0,100,0),
(@PATH,51,-9283.208,-2942.748,163.8473,0,0,0,100,0),
(@PATH,52,-9284.43,-2943.57,163.8473,0,0,0,100,0),
(@PATH,53,-9285.65,-2944.349,163.8473,0,0,0,100,0),
(@PATH,54,-9286.938,-2945.095,163.8473,0,0,0,100,0),
(@PATH,55,-9288.209,-2945.509,163.8473,0,0,0,100,0),
(@PATH,56,-9289.801,-2945.168,163.8473,0,0,0,100,0),
(@PATH,57,-9291.648,-2944.502,163.8473,0,0,0,100,0),
(@PATH,58,-9293.198,-2943.878,163.8473,0,0,0,100,0);

-- Pathing for Blackrock Tracker Entry: 615
SET @NPC := 17316;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-8726,`position_y`=-2374.531,`position_z`=157.9322 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-8720.093,-2371.032,156.9322,0,0,0,100,0),
(@PATH,2,-8714.607,-2362.74,156.7913,0,0,0,100,0),
(@PATH,3,-8706.662,-2347.766,156.1663,0,0,0,100,0),
(@PATH,4,-8694.753,-2337.18,156.0414,0,0,0,100,0),
(@PATH,5,-8681.48,-2329.154,156.0413,0,0,0,100,0),
(@PATH,6,-8676.822,-2318.932,156.0413,0,0,0,100,0),
(@PATH,7,-8682.414,-2311.587,156.0413,0,0,0,100,0),
(@PATH,8,-8691.346,-2314.592,156.6663,0,0,0,100,0),
(@PATH,9,-8697.195,-2324.672,157.0413,0,0,0,100,0),
(@PATH,10,-8704.646,-2338.616,156.0413,0,0,0,100,0),
(@PATH,11,-8712.913,-2350.304,156.1663,0,0,0,100,0),
(@PATH,12,-8751.018,-2372.175,157.9172,0,0,0,100,0),
(@PATH,13,-8759.117,-2380.215,156.7922,0,0,0,100,0),
(@PATH,14,-8773.799,-2405.039,156.4857,0,0,0,100,0),
(@PATH,15,-8767.317,-2393.249,156.0413,0,0,0,100,0),
(@PATH,16,-8757.157,-2380.358,157.0422,0,0,0,100,0),
(@PATH,17,-8744.273,-2377.308,158.5422,0,0,0,100,0),
(@PATH,18,-8735.471,-2378.812,159.4172,0,0,0,100,0),
(@PATH,19,-8726,-2374.531,157.9322,0,0,0,100,0);

-- Pathing for Redridge Mongrel Entry: 423
SET @NPC := 16227;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `id`=423,`modelid`=0,`spawndist`=0,`MovementType`=2,`position_x`=-9621.853,`position_y`=-2534.608,`position_z`=59.30342 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-9611.43,-2537.291,59.55342,0,0,0,100,0),
(@PATH,2,-9596.484,-2523.148,62.104,0,0,0,100,0),
(@PATH,3,-9595.624,-2513.513,59.729,0,0,0,100,0),
(@PATH,4,-9578.707,-2505.862,59.229,0,0,0,100,0),
(@PATH,5,-9595.624,-2513.513,59.729,0,0,0,100,0),
(@PATH,6,-9596.484,-2523.148,62.104,0,0,0,100,0),
(@PATH,7,-9611.43,-2537.291,59.55342,0,0,0,100,0),
(@PATH,8,-9621.853,-2534.608,59.30342,0,0,0,100,0),
(@PATH,9,-9631.005,-2520.389,59.22416,0,0,0,100,0),
(@PATH,10,-9626.435,-2493.965,61.77357,0,0,0,100,0),
(@PATH,11,-9615.699,-2482.903,60.27357,0,0,0,100,0),
(@PATH,12,-9600.611,-2478.035,59.14857,0,0,0,100,0),
(@PATH,13,-9615.699,-2482.903,60.27357,0,0,0,100,0),
(@PATH,14,-9626.435,-2493.965,61.77357,0,0,0,100,0),
(@PATH,15,-9631.005,-2520.389,59.22416,0,0,0,100,0),
(@PATH,16,-9621.853,-2534.608,59.30342,0,0,0,100,0);

-- Pathing for Redridge Mongrel Entry: 423
SET @NPC := 16349;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-9539.159,`position_y`=-1908.932,`position_z`=73.13508 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-9515.88,-1927.064,76.08606,0,0,0,100,0),
(@PATH,2,-9539.159,-1908.932,73.13508,0,0,0,100,0),
(@PATH,3,-9535.29,-1892.516,74.76267,0,0,0,100,0),
(@PATH,4,-9488.921,-1881.527,82.08475,0,0,0,100,0),
(@PATH,5,-9479.733,-1869.828,84.58475,0,0,0,100,0),
(@PATH,6,-9488.921,-1881.527,82.08475,0,0,0,100,0),
(@PATH,7,-9535.29,-1892.516,74.76267,0,0,0,100,0),
(@PATH,8,-9539.159,-1908.932,73.13508,0,0,0,100,0);

-- Pathing for Redridge Mongrel Entry: 423
SET @NPC := 15218;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-9632.086,`position_y`=-2441.966,`position_z`=63.98378 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-9606.604,-2486.99,60.02357,0,0,0,100,0),
(@PATH,2,-9602.279,-2502.665,59.72416,0,0,0,100,0),
(@PATH,3,-9609.739,-2488.236,60.27357,0,0,0,100,0),
(@PATH,4,-9625.794,-2448.716,63.23378,0,0,0,100,0),
(@PATH,5,-9632.086,-2441.966,63.98378,0,0,0,100,0);

-- Pathing for Redridge Poacher Entry: 424
SET @NPC := 15219;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-9622.567,`position_y`=-2470.478,`position_z`=60.27357 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-9609.739,-2488.236,60.27357,0,0,0,100,0),
(@PATH,2,-9606.604,-2486.99,60.02357,0,0,0,100,0),
(@PATH,3,-9602.279,-2502.665,59.72416,0,0,0,100,0),
(@PATH,4,-9609.739,-2488.236,60.27357,0,0,0,100,0),
(@PATH,5,-9622.567,-2470.478,60.27357,0,0,0,100,0),
(@PATH,6,-9625.794,-2448.716,63.23378,0,0,0,100,0),
(@PATH,7,-9622.567,-2470.478,60.27357,0,0,0,100,0);

-- Pathing for Redridge Poacher Entry: 424
SET @NPC := 16224;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-9605.831,`position_y`=-2504.101,`position_z`=59.84916 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-9617.936,-2505.087,60.59916,0,0,0,100,0),
(@PATH,2,-9624.509,-2515.335,59.47416,0,0,0,100,0),
(@PATH,3,-9638.779,-2525.417,59.05296,0,0,0,100,0),
(@PATH,4,-9628.489,-2516.524,59.34916,0,0,0,100,0),
(@PATH,5,-9615.57,-2504.555,60.34916,0,0,0,100,0),
(@PATH,6,-9605.831,-2504.101,59.84916,0,0,0,100,0),
(@PATH,7,-9602.604,-2510.273,59.34916,8000,0,0,100,0),
(@PATH,8,-9605.831,-2504.101,59.84916,0,0,0,100,0);

-- Pathing for Redridge Brute Entry: 426
SET @NPC := 10109;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-9129.793,`position_y`=-2061.262,`position_z`=128.7022 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-9129.67,-2045.571,128.7022,0,0,0,100,0),
(@PATH,2,-9136.09,-2034.611,128.5107,0,0,0,100,0),
(@PATH,3,-9129.67,-2045.571,128.7022,0,0,0,100,0),
(@PATH,4,-9129.793,-2061.262,128.7022,0,0,0,100,0),
(@PATH,5,-9102.493,-2073.968,128.7588,0,0,0,100,0),
(@PATH,6,-9081.025,-2073.283,128.7137,0,0,0,100,0),
(@PATH,7,-9061.23,-2083.464,129.3531,0,0,0,100,0),
(@PATH,8,-9081.025,-2073.283,128.7137,0,0,0,100,0),
(@PATH,9,-9102.493,-2073.968,128.7588,0,0,0,100,0),
(@PATH,10,-9129.793,-2061.262,128.7022,0,0,0,100,0);

-- Pathing for Redridge Brute Entry: 426
SET @NPC := 26003;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-9081.852,`position_y`=-2446.575,`position_z`=123.6152 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-9068.523,-2439.98,127.2402,0,0,0,100,0),
(@PATH,2,-9055.93,-2434.33,127.9016,0,0,0,100,0),
(@PATH,3,-9043.435,-2417.14,128.5205,0,0,0,100,0),
(@PATH,4,-9055.781,-2434.121,127.9016,0,0,0,100,0),
(@PATH,5,-9068.496,-2439.973,127.2402,0,0,0,100,0),
(@PATH,6,-9080.561,-2445.323,124.1152,0,0,0,100,0),
(@PATH,7,-9095.229,-2447.28,120.7402,0,0,0,100,0),
(@PATH,8,-9081.852,-2446.575,123.6152,0,0,0,100,0);

-- Pathing for Redridge Mystic Entry: 430
SET @NPC := 10108;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-9085.817,`position_y`=-2041.056,`position_z`=129.4007 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-9093.47,-2023.117,128.7757,0,0,0,100,0),
(@PATH,2,-9085.817,-2041.056,129.4007,0,0,0,100,0),
(@PATH,3,-9098.341,-2060.571,128.7757,0,0,0,100,0),
(@PATH,4,-9121.283,-2054.603,128.7022,0,0,0,100,0),
(@PATH,5,-9098.341,-2060.571,128.7757,0,0,0,100,0),
(@PATH,6,-9085.817,-2041.056,129.4007,0,0,0,100,0);

-- Pathing for Blackrock Champion Entry: 435
SET @NPC := 10171;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-8719.215,`position_y`=-2162.265,`position_z`=157.9493 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-8732.552,-2168.392,159.3678,0,0,0,100,0),
(@PATH,2,-8746.09,-2167.292,158.6607,0,0,0,100,0),
(@PATH,3,-8732.552,-2168.392,159.3678,0,0,0,100,0),
(@PATH,4,-8719.215,-2162.265,157.9493,0,0,0,100,0),
(@PATH,5,-8696.335,-2161.937,157.3559,0,0,0,100,0),
(@PATH,6,-8692.609,-2182.1,156.5922,0,0,0,100,0),
(@PATH,7,-8701.185,-2195.719,154.9269,0,0,0,100,0),
(@PATH,8,-8702.752,-2227.732,154.6221,0,0,0,100,0),
(@PATH,9,-8713.253,-2240.955,154.7007,0,0,0,100,0),
(@PATH,10,-8732.683,-2250.81,154.3486,0,0,0,100,0),
(@PATH,11,-8713.253,-2240.955,154.7007,0,0,0,100,0),
(@PATH,12,-8702.752,-2227.732,154.6221,0,0,0,100,0),
(@PATH,13,-8701.185,-2195.719,154.9269,0,0,0,100,0),
(@PATH,14,-8692.609,-2182.1,156.5922,0,0,0,100,0),
(@PATH,15,-8696.276,-2161.936,157.3557,0,0,0,100,0),
(@PATH,16,-8719.215,-2162.265,157.9493,0,0,0,100,0);

-- Pathing for Redridge Basher Entry: 446
SET @NPC := 10126;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-8856.583,`position_y`=-1959.49,`position_z`=122.6195 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-8869.44,-1973.048,123.1989,0,0,0,100,0),
(@PATH,2,-8872.306,-1987.248,125.6125,0,0,0,100,0),
(@PATH,3,-8871.035,-1998.969,123.9351,0,0,0,100,0),
(@PATH,4,-8874.864,-2010.225,123.8613,0,0,0,100,0),
(@PATH,5,-8881.981,-2014.834,124.7159,0,0,0,100,0),
(@PATH,6,-8890.29,-2014.196,125.0285,0,0,0,100,0),
(@PATH,7,-8882.051,-2014.828,124.7096,0,0,0,100,0),
(@PATH,8,-8874.864,-2010.225,123.8613,0,0,0,100,0),
(@PATH,9,-8871.035,-1998.969,123.9351,0,0,0,100,0),
(@PATH,10,-8872.306,-1987.248,125.6125,0,0,0,100,0),
(@PATH,11,-8869.474,-1973.084,123.2088,0,0,0,100,0),
(@PATH,12,-8856.583,-1959.49,122.6195,0,0,0,100,0),
(@PATH,13,-8854.203,-1933.718,124.2242,0,0,0,100,0),
(@PATH,14,-8849.34,-1913.927,126.1551,0,0,0,100,0),
(@PATH,15,-8874.792,-1914.902,132.0751,0,0,0,100,0),
(@PATH,16,-8889.941,-1926.165,135.8921,0,0,0,100,0),
(@PATH,17,-8903.536,-1951.488,137.975,0,0,0,100,0),
(@PATH,18,-8889.941,-1926.165,135.8921,0,0,0,100,0),
(@PATH,19,-8874.792,-1914.902,132.0751,0,0,0,100,0),
(@PATH,20,-8849.34,-1913.927,126.1551,0,0,0,100,0),
(@PATH,21,-8854.203,-1933.718,124.2242,0,0,0,100,0),
(@PATH,22,-8856.583,-1959.49,122.6195,0,0,0,100,0);

-- Pathing for Redridge Basher Entry: 446
SET @NPC := 16422;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-8996.826,`position_y`=-2085.873,`position_z`=132.5694 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-8962.664,-2081.184,132.5694,0,0,0,100,0),
(@PATH,2,-8996.826,-2085.873,132.5694,0,0,0,100,0),
(@PATH,3,-9022.803,-2096.318,132.0085,0,0,0,100,0),
(@PATH,4,-8996.826,-2085.873,132.5694,0,0,0,100,0);

-- Pathing for Redridge Drudger Entry: 580
SET @NPC := 11897;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-8795.307,`position_y`=-1973.387,`position_z`=126.7356 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-8801.047,-1955.703,126.1625,0,0,0,100,0),
(@PATH,2,-8795.307,-1973.387,126.7356,0,0,0,100,0),
(@PATH,3,-8782.728,-1980.681,128.0934,0,0,0,100,0),
(@PATH,4,-8772.052,-1993.34,129.6344,0,0,0,100,0),
(@PATH,5,-8768.62,-2016.962,130.0639,0,0,0,100,0),
(@PATH,6,-8786.789,-2040.241,127.6738,0,0,0,100,0),
(@PATH,7,-8804.953,-2054.536,129.402,0,0,0,100,0),
(@PATH,8,-8786.789,-2040.241,127.6738,0,0,0,100,0),
(@PATH,9,-8768.62,-2016.962,130.0639,0,0,0,100,0),
(@PATH,10,-8772.052,-1993.34,129.6344,0,0,0,100,0),
(@PATH,11,-8782.728,-1980.681,128.0934,0,0,0,100,0),
(@PATH,12,-8795.307,-1973.387,126.7356,0,0,0,100,0);

-- Pathing for Redridge Basher Entry: 446
SET @NPC := 11679;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-9008.022,`position_y`=-2015.315,`position_z`=135.5978 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-9013.389,-2001.146,135.8478,0,0,0,100,0),
(@PATH,2,-9020.631,-1992.944,136.1136,0,0,0,100,0),
(@PATH,3,-9032.95,-1992.436,138.1136,0,0,0,100,0),
(@PATH,4,-9020.631,-1992.944,136.1136,0,0,0,100,0),
(@PATH,5,-9013.389,-2001.146,135.8478,0,0,0,100,0),
(@PATH,6,-9008.022,-2015.315,135.5978,0,0,0,100,0),
(@PATH,7,-9000.12,-2022.714,135.7228,0,0,0,100,0),
(@PATH,8,-8983.734,-2024.047,135.9675,0,0,0,100,0),
(@PATH,9,-8976.881,-2007.302,135.8149,0,0,0,100,0),
(@PATH,10,-8945.093,-1989.848,138.4766,0,0,0,100,0),
(@PATH,11,-8928.801,-1979.029,139.8955,0,0,0,100,0),
(@PATH,12,-8918.683,-1984.234,140.0949,0,0,0,100,0),
(@PATH,13,-8893.354,-1992.97,136.0317,0,0,0,100,0),
(@PATH,14,-8918.683,-1984.234,140.0949,0,0,0,100,0),
(@PATH,15,-8928.801,-1979.029,139.8955,0,0,0,100,0),
(@PATH,16,-8944.557,-1989.485,138.5895,0,0,0,100,0),
(@PATH,17,-8976.881,-2007.302,135.8149,0,0,0,100,0),
(@PATH,18,-8983.734,-2024.047,135.9675,0,0,0,100,0),
(@PATH,19,-9000.12,-2022.714,135.7228,0,0,0,100,0),
(@PATH,20,-9008.022,-2015.315,135.5978,0,0,0,100,0);

-- Pathing for Redridge Mongrel Entry: 423
SET @NPC := 10095;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-9475.37,`position_y`=-1934.13,`position_z`=80.3683 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-9471.528,-1924.836,81.67286,0,0,0,100,0),
(@PATH,2,-9466.015,-1923.353,82.18614,0,0,0,100,0),
(@PATH,3,-9460.636,-1918.143,82.68614,0,0,0,100,0),
(@PATH,4,-9458.96,-1909.725,82.56114,0,0,0,100,0),
(@PATH,5,-9460.59,-1901.123,82.43614,0,0,0,100,0),
(@PATH,6,-9492.081,-1893.237,80.33475,0,0,0,100,0),
(@PATH,7,-9510.62,-1931.774,76.58606,0,0,0,100,0),
(@PATH,8,-9524.609,-1944.812,74.45707,0,0,0,100,0),
(@PATH,9,-9523.66,-1956.9,74.2286,0,0,0,100,0),
(@PATH,10,-9508.4,-1957.79,77.6211,0,0,0,100,0),
(@PATH,11,-9492.42,-1952.17,79.3943,0,0,0,100,0),
(@PATH,12,-9480.27,-1944.86,79.5265,0,0,0,100,0),
(@PATH,13,-9475.37,-1934.13,80.3683,0,0,0,100,0);

-- Pathing for Rabid Shadowhide Gnoll Entry: 434
SET @NPC := 10053;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-9265.055,`position_y`=-3209.41,`position_z`=102.3781 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-9292.012,-3240.249,100.6492,0,0,0,100,0),
(@PATH,2,-9310.653,-3233.226,100.8562,0,0,0,100,0),
(@PATH,3,-9343.33,-3233.92,95.33384,0,0,0,100,0),
(@PATH,4,-9376.466,-3260.896,88.62462,4000,0,0,100,0),
(@PATH,5,-9343.33,-3233.92,95.33384,0,0,0,100,0),
(@PATH,6,-9310.653,-3233.226,100.8562,0,0,0,100,0),
(@PATH,7,-9292.012,-3240.249,100.6492,0,0,0,100,0),
(@PATH,8,-9265.055,-3209.41,102.3781,0,0,0,100,0);

-- Pathing for Bone Chewer Entry: 210
SET @NPC := 5973;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-10222.43,`position_y`=143.7129,`position_z`=2.255024 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-10243.54,161.2734,0.0465889,0,0,0,100,0),
(@PATH,2,-10274.24,166.031,1.11338,0,0,0,100,0),
(@PATH,3,-10275.96,150.4307,1.513012,0,0,0,100,0),
(@PATH,4,-10261.48,138.3093,2.175644,0,0,0,100,0),
(@PATH,5,-10222.57,178.1452,0.4510765,0,0,0,100,0),
(@PATH,6,-10209.76,180.1912,1.390846,0,0,0,100,0),
(@PATH,7,-10204.68,164.0327,1.472527,0,0,0,100,0),
(@PATH,8,-10206.47,150.2491,1.775291,0,0,0,100,0),
(@PATH,9,-10222.43,143.7129,2.255024,0,0,0,100,0);

-- Pathing for Bone Chewer Entry: 210
SET @NPC := 4394;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `id`=210,`modelid`=0,`spawndist`=0,`MovementType`=2,`position_x`=-10224.68,`position_y`=214.6403,`position_z`=2.800045 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-10221.75,199.632,2.804298,0,0,0,100,0),
(@PATH,2,-10224.68,214.6403,2.800045,0,0,0,100,0),
(@PATH,3,-10222.65,233.476,2.799393,0,0,0,100,0),
(@PATH,4,-10224.83,251.8642,2.799393,0,0,0,100,0),
(@PATH,5,-10236.47,256.503,2.799393,0,0,0,100,0),
(@PATH,6,-10240.21,269.6581,2.799393,0,0,0,100,0),
(@PATH,7,-10238.13,284.0669,2.799393,0,0,0,100,0),
(@PATH,8,-10229.13,286.6407,2.799393,0,0,0,100,0),
(@PATH,9,-10209.48,282.851,2.16798,0,0,0,100,0),
(@PATH,10,-10205.71,282.0735,2.416508,0,0,0,100,0),
(@PATH,11,-10201.7,282.9867,2.54327,0,0,0,100,0),
(@PATH,12,-10196.69,286.0379,2.193909,0,0,0,100,0),
(@PATH,13,-10195.89,292.459,2.453735,0,0,0,100,0),
(@PATH,14,-10200.42,308.0852,4.772118,0,0,0,100,0),
(@PATH,15,-10195.89,292.459,2.453735,0,0,0,100,0),
(@PATH,16,-10196.69,286.0379,2.193909,0,0,0,100,0),
(@PATH,17,-10201.7,282.9867,2.54327,0,0,0,100,0),
(@PATH,18,-10205.71,282.0735,2.416508,0,0,0,100,0),
(@PATH,19,-10209.48,282.851,2.16798,0,0,0,100,0),
(@PATH,20,-10229.13,286.6407,2.799393,0,0,0,100,0),
(@PATH,21,-10238.13,284.0669,2.799393,0,0,0,100,0),
(@PATH,22,-10240.21,269.6581,2.799393,0,0,0,100,0),
(@PATH,23,-10236.47,256.503,2.799393,0,0,0,100,0),
(@PATH,24,-10224.83,251.8642,2.799393,0,0,0,100,0),
(@PATH,25,-10222.65,233.476,2.799393,0,0,0,100,0),
(@PATH,26,-10224.68,214.6403,2.800045,0,0,0,100,0);

-- Pathing for Blackrock Outrunner Entry: 485
SET @NPC := 31809;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-9164.028,`position_y`=-2442.941,`position_z`=110.9322 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-9162.086,-2442.718,109.9972,10000,1,0,100,0),
(@PATH,2,-9140.406,-2451.874,110.0572,0,1,0,100,0),
(@PATH,3,-9112.781,-2462.785,119.0318,0,1,0,100,0),
(@PATH,4,-9107.47,-2472.122,120.0782,0,1,0,100,0),
(@PATH,5,-9110.72,-2477.348,119.7032,10000,1,0,100,0),
(@PATH,6,-9110.416,-2471.354,119.5782,0,1,0,100,0),
(@PATH,7,-9119.938,-2462.73,117.2818,0,1,0,100,0),
(@PATH,8,-9135.719,-2453.595,111.1822,0,1,0,100,0),
(@PATH,9,-9154.232,-2450.505,110.5572,0,1,0,100,0),
(@PATH,10,-9164.028,-2442.941,110.9322,0,1,0,100,0);
DELETE FROM `creature` WHERE `guid` IN (31833,31807);
DELETE FROM `creature_addon` WHERE `guid` IN (31833,31807);

-- Pathing for Watcher Ladimore Entry: 576
SET @NPC := 4211;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-10577.47,`position_y`=-1165.161,`position_z`=28.14966 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-10581.63,-1172.892,28.49362,0,0,0,100,0),
(@PATH,2,-10584.04,-1180.587,27.99362,0,0,0,100,0),
(@PATH,3,-10573.58,-1185.804,27.99362,0,0,0,100,0),
(@PATH,4,-10570.05,-1191.732,27.86862,0,0,0,100,0),
(@PATH,5,-10569.19,-1199.181,27.74362,0,0,0,100,0),
(@PATH,6,-10551.35,-1205.735,27.56617,0,0,0,100,0),
(@PATH,7,-10549.26,-1192.892,27.66226,0,0,0,100,0),
(@PATH,8,-10535.19,-1192.908,27.66226,0,0,0,100,0),
(@PATH,9,-10546.21,-1179.316,28.16226,0,0,0,100,0),
(@PATH,10,-10547.91,-1167.96,27.78726,0,0,0,100,0),
(@PATH,11,-10554.19,-1153.211,28.07649,0,0,0,100,0),
(@PATH,12,-10565.88,-1154.214,27.57649,0,0,0,100,0),
(@PATH,13,-10577.47,-1165.161,28.14966,0,0,0,100,0);

-- Pathing for Calor Entry: 663
SET @NPC := 4176;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-10572.92,`position_y`=-1211.979,`position_z`=26.21894 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-10581.87,-1200.016,27.71894,0,0,0,100,0),
(@PATH,2,-10581.5,-1199.797,27.74362,56000,0,0,100,0),
(@PATH,3,-10572.92,-1211.979,26.21894,8000,0,0,100,0);

-- Pathing for Morg Gnarltree Entry: 226
SET @NPC := 4082;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-10596.64,`position_y`=-1163.852,`position_z`=30.05967 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-10596.3,-1164.096,30.05967,0,0,0,100,0), 
(@PATH,2,-10590.63,-1156.783,30.05967,0,0,0,100,0),
(@PATH,3,-10590.52,-1155.93,30.05967,55000,0,0,100,0),
(@PATH,4,-10590.21,-1156.136,30.05967,0,0,0,100,0),
(@PATH,5,-10596.64,-1163.852,30.05967,14000,0,0,100,0);

-- Pathing for Chef Grual Entry: 272
SET @NPC := 4192;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-10499.35,`position_y`=-1157.982,`position_z`=28.08655 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-10494.12,-1160.191,28.37647,45000,0,0,100,0), 
(@PATH,2,-10498.6,-1160.361,28.08655,0,0,0,100,0),
(@PATH,3,-10498.77,-1161.604,28.08655,9000,0,0,100,0),
(@PATH,4,-10498.77,-1161.249,28.08655,0,0,0,100,0),
(@PATH,5,-10507.73,-1161.963,28.09953,0,0,0,100,0),
(@PATH,6,-10509.7,-1160.204,28.09953,6000,0,0,100,0),
(@PATH,7,-10509.61,-1160.543,28.09953,0,0,0,100,0),
(@PATH,8,-10507.16,-1161.83,28.09953,0,0,0,100,0),
(@PATH,9,-10499.27,-1159.314,28.08655,0,0,0,100,0),
(@PATH,10,-10499.35,-1157.982,28.08655,18000,0,0,100,0);
-- Scripting cleanup
UPDATE `creature_template` SET `ScriptName`= '' WHERE `entry` IN (29154,28961,28965);
UPDATE `creature_template` SET `AIName`= '' WHERE `entry` IN (23069,23259,23336,33229,33243,33272);

-- SAI for Gavin Gnarltree
SET @ENTRY := 225;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=-10617.34,`position_y`=-1153.902,`position_z`=27.11271 WHERE `guid`=4086;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Gavin Gnarltree - On spawn - Start WP movement'),
(@ENTRY,0,1,2,40,0,100,0,1,@ENTRY,0,0,54,6000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Gavin Gnarltree - Reach wp 1 - pause path'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,5,25,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Gavin Gnarltree - Reach wp 1 - ONESHOT_POINT'),
(@ENTRY,0,3,0,40,0,100,0,6,@ENTRY,0,0,54,50000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Gavin Gnarltree - Reach wp 6 - pause path'),
(@ENTRY,0,4,5,40,0,100,0,10,@ENTRY,0,0,54,30000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Gavin Gnarltree - Reach wp 10 - pause path'),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Gavin Gnarltree - Reach wp 10 - STATE_WORK_MINING'),
(@ENTRY,0,6,0,56,0,100,0,10,@ENTRY,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Gavin Gnarltree - waypoint 10 resumed - STATE_NONE');
-- Waypoints for Gavin Gnarltree from sniff
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,-10616.74,-1150.729,28.03606, 'Gavin Gnarltree'),
(@ENTRY,2,-10609.4,-1154.94,28.2175, 'Gavin Gnarltree'),
(@ENTRY,3,-10605.3,-1157.31,30.007, 'Gavin Gnarltree'),
(@ENTRY,4,-10600.3,-1159.58,30.0602, 'Gavin Gnarltree'),
(@ENTRY,5,-10596.1,-1156.43,30.0602, 'Gavin Gnarltree'),
(@ENTRY,6,-10596.89,-1154.147,30.05965, 'Gavin Gnarltree'),
(@ENTRY,7,-10601.7,-1159.03,30.0602, 'Gavin Gnarltree'),
(@ENTRY,8,-10606,-1156.86,29.9963, 'Gavin Gnarltree'),
(@ENTRY,9,-10609.6,-1155.18,28.2269, 'Gavin Gnarltree'),
(@ENTRY,10,-10617.34,-1153.902,27.11271, 'Gavin Gnarltree');

-- SAI for Joseph Wilson
SET @ENTRY := 33589;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=8489.46,`position_y`=964.667,`position_z`=547.293 WHERE `guid`=75904;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@ENTRY*100;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Joseph Wilson - On spawn - Start WP movement'),
(@ENTRY,0,1,0,40,0,100,0,1,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Joseph Wilson - Reach wp 1 - run script'),
(@ENTRY,0,2,3,40,0,100,0,4,@ENTRY,0,0,54,60000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Joseph Wilson - Reach wp 4 - pause path'),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,3.193953, 'Joseph Wilson - Reach wp 4 - turn to'),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,54,22000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Joseph Wilson - Script - pause path'),
(@ENTRY*100,9,1,0,0,0,100,0,500,500,0,0,66,0,0,0,0,0,0,19,33479,0,0,0,0,0,0, 'Joseph Wilson - Script - turn to'),
(@ENTRY*100,9,2,0,0,0,100,0,500,500,0,0,11,61493,0,0,0,0,0,19,33479,0,0,0,0,0,0, 'Joseph Wilson - Script - cast'),
(@ENTRY*100,9,3,0,0,0,100,0,10000,10000,0,0,66,0,0,0,0,0,0,19,33460,0,0,0,0,0,0, 'Joseph Wilson - Script - turn to'),
(@ENTRY*100,9,4,0,0,0,100,0,500,500,0,0,11,61493,0,0,0,0,0,19,33460,0,0,0,0,0,0, 'Joseph Wilson - Script - cast');
-- Waypoints for Joseph Wilson from sniff
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,8492.984,961.6198,547.2927, 'Joseph Wilson'),
(@ENTRY,2,8489.46,964.667,547.293, 'Joseph Wilson'),
(@ENTRY,3,8489.138,966.7257,547.2927, 'Joseph Wilson'),
(@ENTRY,4,8489.907,967.6441,547.2939, 'Joseph Wilson'),
(@ENTRY,5,8489.138,966.7257,547.2927, 'Joseph Wilson'),
(@ENTRY,6,8489.46,964.667,547.293, 'Joseph Wilson');

-- SAI for Thomas Partridge
SET @ENTRY := 33854;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=8480.21,`position_y`=937.883,`position_z`=547.293 WHERE `guid`=76735;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@ENTRY*100;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Thomas Partridge - On spawn - Start WP movement'),
(@ENTRY,0,1,2,40,0,100,0,1,@ENTRY,0,0,54,60000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thomas Partridge - Reach wp 1 - pause path'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,3.01942, 'Thomas Partridge - Reach wp 1 - turn to'),
(@ENTRY,0,3,0,40,0,100,0,5,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thomas Partridge - Reach wp 5 - run script'),
(@ENTRY,0,4,0,40,0,100,0,9,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thomas Partridge - Reach wp 9 - run script'),
(@ENTRY,0,5,0,40,0,100,0,13,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thomas Partridge - Reach wp 13 - run script'),
(@ENTRY,0,6,0,40,0,100,0,16,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thomas Partridge - Reach wp 16 - run script'),
(@ENTRY,0,7,0,40,0,100,0,20,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thomas Partridge - Reach wp 20 - run script'),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,54,8000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thomas Partridge - Script - pause path'),
(@ENTRY*100,9,1,0,0,0,100,0,500,500,0,0,5,273,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thomas Partridge - Script - emote');
-- Waypoints for Thomas Partridge from sniff
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,8481.685,959.4879,547.2927, 'Thomas Partridge'),
(@ENTRY,2,8482.575,952.007,547.2927, 'Thomas Partridge'),
(@ENTRY,3,8479.16,931.178,547.294, 'Thomas Partridge'),
(@ENTRY,4,8480.29,928.951,547.293, 'Thomas Partridge'),
(@ENTRY,5,8481.386,929.6846,547.2927, 'Thomas Partridge'),
(@ENTRY,6,8479.16,931.178,547.294, 'Thomas Partridge'),
(@ENTRY,7,8479.08,935.109,547.293, 'Thomas Partridge'),
(@ENTRY,8,8482.33,937.765,547.294, 'Thomas Partridge'),
(@ENTRY,9,8487.458,937.033,547.2927, 'Thomas Partridge'),
(@ENTRY,10,8482.33,937.765,547.294, 'Thomas Partridge'),
(@ENTRY,11,8479.16,931.178,547.294, 'Thomas Partridge'),
(@ENTRY,12,8479.21,919.35,547.294, 'Thomas Partridge'),
(@ENTRY,13,8483.181,917.6667,547.2927, 'Thomas Partridge'),
(@ENTRY,14,8480.25,917.926,547.293, 'Thomas Partridge'),
(@ENTRY,15,8480.31,909.402,547.293, 'Thomas Partridge'),
(@ENTRY,16,8484.031,903.8014,547.2927, 'Thomas Partridge'),
(@ENTRY,17,8479.39,909.922,547.293, 'Thomas Partridge'),
(@ENTRY,18,8479.08,935.109,547.293, 'Thomas Partridge'),
(@ENTRY,19,8483.99,937.559,547.293, 'Thomas Partridge'),
(@ENTRY,20,8486.654,940.0261,547.2929, 'Thomas Partridge'),
(@ENTRY,21,8483.99,937.559,547.293, 'Thomas Partridge'),
(@ENTRY,22,8480.21,937.883,547.293, 'Thomas Partridge');

-- SAI for Brammold Deepmine
SET @ENTRY := 32509;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=5771.88,`position_y`=632.803,`position_z`=661.075 WHERE `guid`=120355;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Brammold Deepmine - On spawn - Start WP movement'),
(@ENTRY,0,1,2,40,0,100,0,2,@ENTRY,0,0,54,480000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Brammold Deepmine - Reach wp 2 - pause path'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,2.321288, 'Brammold Deepmine - Reach wp 2 - turm to'),
(@ENTRY,0,3,4,40,0,100,0,8,@ENTRY,0,0,54,480000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Brammold Deepmine - Reach wp 8 - pause path'),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,1.692969, 'Brammold Deepmine - Reach wp 8 - turn to');
-- Waypoints for Brammold Deepmine from sniff
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,5769.026,629.7931,661.0721, 'Brammold Deepmine'),
(@ENTRY,2,5770.056,625.5038,661.0721, 'Brammold Deepmine'),
(@ENTRY,3,5769.026,629.7931,661.0721, 'Brammold Deepmine'),
(@ENTRY,4,5771.88,632.803,661.075, 'Brammold Deepmine'),
(@ENTRY,5,5773.25,637.491,661.151, 'Brammold Deepmine'),
(@ENTRY,6,5759.77,648.809,650.12, 'Brammold Deepmine'),
(@ENTRY,7,5757,647.883,650.141, 'Brammold Deepmine'),
(@ENTRY,8,5753.792,635.2266,650.1417, 'Brammold Deepmine'),
(@ENTRY,9,5757,647.883,650.141, 'Brammold Deepmine'),
(@ENTRY,10,5759.77,648.809,650.12, 'Brammold Deepmine'),
(@ENTRY,11,5773.25,637.491,661.151, 'Brammold Deepmine'),
(@ENTRY,12,5771.88,632.803,661.075, 'Brammold Deepmine');

-- SAI for Emi
SET @ENTRY := 32668;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=5805.625,`position_y`=692.3191,`position_z`=647.0484 WHERE `guid`=110543;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Emi - On spawn - Start WP movement'),
(@ENTRY,0,1,0,40,0,100,0,1,@ENTRY,0,0,54,18000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Emi - Reach wp 1 - pause path'),
(@ENTRY,0,2,3,40,0,100,0,2,@ENTRY,0,0,54,25000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Emi - Reach wp 2 - pause path'),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,3.316126, 'Emi - Reach wp 2 - turm to');
-- Waypoints for Emi from sniff
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,5809.61,694.5121,647.0484, 'Emi'),
(@ENTRY,2,5805.625,692.3191,647.0484, 'Emi');
-- 0xF130007F9C00292F .go 5809.61 694.5121 647.0484

-- SAI for Colin
SET @ENTRY := 32669;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=5807.146,`position_y`=683.3826,`position_z`=647.0484 WHERE `guid`=110586;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Colin - On spawn - Start WP movement'),
(@ENTRY,0,1,2,40,0,100,0,1,@ENTRY,0,0,54,4000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Colin - Reach wp 1 - pause path'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,5.427974, 'Colin - Reach wp 1 - turm to'),
(@ENTRY,0,3,4,40,0,100,0,2,@ENTRY,0,0,54,28000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Colin - Reach wp 2 - pause path'),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0.2094395, 'Colin - Reach wp 2 - turm to'),
(@ENTRY,0,5,6,40,0,100,0,3,@ENTRY,0,0,54,23000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Colin - Reach wp 3 - pause path'),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,3.804818, 'Colin - Reach wp 3 - turm to');
-- Waypoints for Colin from sniff
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,5815.523,681.2226,647.0484, 'Colin'),
(@ENTRY,2,5818.646,688.2175,647.0484, 'Colin'),
(@ENTRY,3,5807.146,683.3826,647.0484, 'Colin');
-- 0xF130007F9D00293F .go 5815.523 681.2226 647.0484
SET @GUID = 209030; -- Need 2 - creature.guid
SET @BotH = 35607; -- Reginald Arcfire
SET @BotA = 35594; -- Brassbolt Mechawrench

UPDATE `creature_template` SET `npcflag`=`npcflag`|1|2097152,`speed_run`=0.99206,`flags_extra`=`flags_extra`|2 WHERE `entry`=@BotA; -- Brassbolt Mechawrench
UPDATE `creature_template` SET `baseattacktime`=2000,`npcflag`=`npcflag`|1|2097152,`speed_run`=0.99206 WHERE `entry`=@BotH; -- Reginald Arcfire

UPDATE `creature_model_info` SET `bounding_radius`=0.465,`combat_reach`=1.5,`gender`=2 WHERE `modelid`=28282;

DELETE FROM `creature_addon` WHERE `guid`=85057; -- old spawn
DELETE FROM `creature_template_addon` WHERE `entry` IN (@BotH,@BotA);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(@BotH,0,65536,1,0, '60191 0'), -- Reginald Arcfire
(@BotA,0,65536,1,0, '60190 0'); -- Brassbolt Mechawrench

DELETE FROM `creature` WHERE `id` IN (@BotH,@BotA);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`) VALUES
(@GUID+0,@BotH,571,1,1,5927.63500,731.5764,643.253052,4.694936,120),
(@GUID+1,@BotA,571,1,1,5927.62939,731.5903,643.253052,4.764749,120);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=10656;
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`action_script_id`,`box_coded`,`box_money`,`box_text`) VALUES
(10656,0,6,NULL,13,2097152,0,0,0,0,0,NULL);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=10656;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`Comment`) VALUES
(15,10656,0,7,202,350, 'Steam-Powered Auctioneer - Engineering 350');

DELETE FROM `spell_area` WHERE `spell` IN (60197,60194);
INSERT INTO `spell_area` (`spell`,`area`,`racemask`,`gender`,`autocast`) VALUES
(60197,4395,690,2,1), -- Reginald Arcfire
(60194,4395,1101,2,1); -- Brassbolt Mechawrench
SET @Event = 63;
SET @GUID = 209029;

-- Elder Clearwater
UPDATE `creature_template` SET `baseattacktime`=2000,`unit_flags`=`unit_flags`|768,`equipment_id`=589 WHERE `entry`=38294; -- Elder Clearwater
UPDATE `creature_model_info` SET `bounding_radius`=0.6076385,`combat_reach`=2.625,`gender`=2 WHERE `modelid`=23657; -- Elder Clearwater
DELETE FROM `creature_template_addon` WHERE `entry`=38294;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(38294,0,0,1,0, NULL);

DELETE FROM `creature` WHERE `id`=38294;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(@GUID,38294,571,1,1,0,0,5699.039,617.319458,646.797363,0.8552113,120,0,0,1,0,0,0);

DELETE FROM `game_event` WHERE `eventEntry` IN (@Event,@Event+1);
INSERT INTO `game_event` (`eventEntry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`description`,`world_event`) VALUES
(@Event+0, '2011-01-03 13:00:00', '2020-12-31 05:00:00',10080,3*60,0, 'Kalu''ak Fishing Derby Turn-ins',0),
(@Event+1, '2011-01-03 14:00:00', '2020-12-31 05:00:00',10080,1*60,0, 'Kalu''ak Fishing Derby Fishing Pools',0); -- to be used with conditions

DELETE FROM `game_event_creature` WHERE `guid`=@GUID;
INSERT INTO `game_event_creature` (`eventEntry`,`guid`) VALUES
(@Event,@GUID);

-- And I thought that these were wdb fields...
UPDATE `quest_template` SET `RequestItemsText`='I''m afraid we''ve already had a winner for today, young $N. However, if you bring a shark, I''ll see that it''s released back into the waters, and I might just have a little something for you...',
`OfferRewardText`='Well, it''s nice that you tried $R. I don''t want you to think your efforts were wasted, so I''ve got something for you.' WHERE `entry`=24806; -- Better Luck Next Time
UPDATE `quest_template` SET `RequestItemsText`='The Kalu''ak have a long tradition of honing our fishing skills by putting them to the the test every week.$B$BThe first person to catch and bring a blacktip shark to me will be rewarded handsomely, and be known as the greatest fisherman of the north... for a couple days at least.$B$BThe blacktip shark''s favorite food is the pygmy suckerfish. Try fishing for the blacktip wherever you would normally catch the suckerfish.',
`OfferRewardText`='Don''t just stand there! Give me the shark and I''ll declare you the winner!' WHERE `entry` =24803; -- Kalu'ak Fishing Derby
UPDATE `game_event` SET `start_time`='2011-01-01 14:00:00' WHERE `eventEntry`=14; -- Fishing Extravaganza Announce
UPDATE `game_event` SET `start_time`='2011-01-02 14:00:00' WHERE `eventEntry`=15; -- Fishing Extravaganza Pools
UPDATE `game_event` SET `start_time`='2011-01-02 14:00:00' WHERE `eventEntry`=62; -- Fishing Extravaganza Turn-ins
SET @Event = 62;
SET @GUID = 209028;

UPDATE `game_event` SET `start_time`='2011-01-04 14:00:00',`description`='Fishing Extravaganza Fishing Pools' WHERE `eventEntry`=15; -- Fishing Extravaganza
UPDATE `game_event` SET `start_time`='2011-01-03 14:00:00',`length`=60*(24+3) WHERE `eventEntry`=14; -- Fishing Extravaganza Announce
DELETE FROM `game_event` WHERE `eventEntry`=@Event;
INSERT INTO `game_event` (`eventEntry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`description`,`world_event`) VALUES
(@Event, '2011-01-04 14:00:00', '2020-12-31 05:00:00',10080,3*60,0, 'Fishing Extravaganza Turn-ins',0);

UPDATE `game_event_creature` SET `eventEntry`=@Event WHERE `guid` IN (54688,54687,203521);
DELETE FROM `game_event_creature` WHERE `guid`=@GUID;
INSERT INTO `game_event_creature` (`eventEntry`,`guid`) VALUES
(14,@GUID);

DELETE FROM `creature` WHERE `id`=15119;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(@GUID,15119,0,1,1,0,0,-4964.69,-936.287,501.743,5.44543,300,0,0,1,0,0,0,0,0,0);
UPDATE `creature_template` SET `ScriptName` ='' WHERE `entry`=35473; -- Argent Tournament Post
-- Addon data
DELETE FROM `creature_template_addon` WHERE `entry` IN (15214,25171,30281,30298,30342,30343,31898,31899,32498,33222,33223,33225,33229);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(15214,0,0,1,0, NULL), -- Invisible Stalker
(25171,0,0,1,0, NULL), -- Invisible Stalker (Scale x0.5)
(30281,0,1,1,0, NULL), -- Silver Covenant Hippogryph
(30298,0,0,1,0, NULL), -- Invisible Stalker (Float, Uninteractible, LargeAOI)
(30342,0,0,1,0, NULL), -- Orgrim's Hammer
(30343,0,0,1,0, NULL), -- The Skybreaker
(31898,0,0,1,0, NULL), -- Asric
(31899,0,0,1,0, NULL), -- Jadaar
(32498,0,0,1,0, '51583 0'), -- Glacier Penguin; Aura: [DND] Creature Random Size (0 - 50)
(33222,0,0,1,0, '5301 0'), -- Sir Marcus Barlowe; Aura: Defensive State (DND)
(33223,0,0,1,0, '5301 0'), -- Captain Joseph Holley Aura: Defensive State (DND)
(33225,0,0,1,0, '5301 0 62594 0'), -- Marshal Jacob Alerius Aura: Defensive State (DND), Stormwind Champion's Pennant
(33229,0,0,1,0, '7056 0'); -- Melee Target

UPDATE `creature_template_addon` SET `bytes1`=0,`bytes2`=1,`mount`=0,`emote`=0,`auras`=NULL WHERE `entry`=17213; -- Broom
UPDATE `creature_model_info` SET `bounding_radius`=0.2263,`combat_reach`=0.73,`gender`=2 WHERE `modelid`=25391; -- Glacier Penguin

-- Template updates
UPDATE `creature_template` SET `speed_run`=0.85714 WHERE `entry`=17213; -- Broom
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=25171; -- Invisible Stalker (Scale x0.5) (move to new file)
UPDATE `creature_template` SET `speed_run`=4.28571 WHERE `entry`=30281; -- Silver Covenant Hippogryph
UPDATE `creature_template` SET `minlevel`=80,`exp`=1 WHERE `entry`=31898; -- Asric
UPDATE `creature_template` SET `minlevel`=80,`exp`=1 WHERE `entry`=31899; -- Jadaar
UPDATE `creature_template` SET `speed_run`=1 WHERE `entry`=32498; -- Glacier Penguin
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|33536 WHERE `entry`=33222; -- Sir Marcus Barlowe
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|33536 WHERE `entry`=33223; -- Captain Joseph Holley
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|33536 WHERE `entry`=33225; -- Marshal Jacob Alerius
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|131072,`dynamicflags`=132,`speed_walk`=1,`speed_run`=1,`flags_extra`=`flags_extra`|262144 WHERE `entry`=33229; -- Melee Target

-- Spawns
UPDATE  `creature` SET `position_x`= 8530.686,`position_y`=647.2205,`position_z`=558.7308,`orientation`=1.623156 WHERE `guid` =202363; -- Invisible Stalker
DELETE FROM `creature` WHERE `guid` IN (110531,110391); -- wrong Asric & Jadaar spawns in Dalaran Sewers

SET @CGUID = 209019;
DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID AND @CGUID+7 AND `id`=25171;
DELETE FROM `creature` WHERE `guid`=@CGUID+8 AND `id`=30298;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(@CGUID+0,25171,571,1,1,0,0,8363.315,783.223938,550.2727,3.33357882,120,0,0,1,0,0,0), -- Invisible Stalker (Scale x0.5)
(@CGUID+1,25171,571,1,1,0,0,8366.177,766.661438,551.2031,1.83259571,120,0,0,1,0,0,0), -- Invisible Stalker (Scale x0.5)
(@CGUID+2,25171,571,1,1,0,0,8366.972,896.803833,552.576355,2.75762,120,0,0,1,0,0,0), -- Invisible Stalker (Scale x0.5)
(@CGUID+3,25171,571,1,1,0,0,8370.458,779.0816,550.0816,3.33357882,120,0,0,1,0,0,0), -- Invisible Stalker (Scale x0.5)
(@CGUID+4,25171,571,1,1,0,0,8371.508,770.821167,550.436157,2.72271371,120,0,0,1,0,0,0), -- Invisible Stalker (Scale x0.5)
(@CGUID+5,25171,571,1,1,0,0,8375.15,908.0208,549.7291,2.75762,120,0,0,1,0,0,0), -- Invisible Stalker (Scale x0.5)
(@CGUID+6,25171,571,1,1,0,0,8388.508,888.4358,548.0348,2.443461,120,0,0,1,0,0,0), -- Invisible Stalker (Scale x0.5)
(@CGUID+7,25171,571,1,1,0,0,8393.317,894.256958,546.748,2.75762,120,0,0,1,0,0,0), -- Invisible Stalker (Scale x0.5)
(@CGUID+8,30298,571,1,1,0,0,8440.007,793.1233,585.525,0,120,0,0,1,0,0,0); -- Invisible Stalker (Float, Uninteractible, LargeAOI)

-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid`=25171 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(25171,0,0,0,1,0,100,1,500,500,0,0,11,63413,0,0,0,0,0,11,35469,10,0,0,0,0,0, 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Gormok the Impaler (not repeteable)'),
(25171,0,1,0,1,0,100,1,500,500,0,0,11,63413,0,0,0,0,0,11,35470,10,0,0,0,0,0, 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Icehowl (not repeteable)');
UPDATE `item_loot_template` SET `ChanceOrQuestChance`=100,`mincountOrRef`=5,`maxcount`=5 WHERE `entry`=41426; -- Magically Wrapped Gift
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (19,20) AND `SourceEntry` IN (13671,13625,13670,13669,13666);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (19,20) AND `SourceEntry` IN (13676,13673,13674,13675,13677);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
-- Alliance
(19,0,13671,0,8,13835,0,0,0, '', NULL), -- Training In The Field - Mastery Of The Shield-Breaker
(20,0,13671,0,8,13835,0,0,0, '', NULL),
(19,0,13671,0,8,13837,0,0,0, '', NULL), -- Training In The Field - Mastery Of The Charge
(20,0,13671,0,8,13837,0,0,0, '', NULL),
(19,0,13671,0,8,13828,0,0,0, '', NULL), -- Training In The Field - Mastery Of Melee
(20,0,13671,0,8,13828,0,0,0, '', NULL),
(19,0,13625,0,8,13835,0,0,0, '', NULL), -- Learning The Reins - Mastery Of The Shield-Breaker
(20,0,13625,0,8,13835,0,0,0, '', NULL),
(19,0,13625,0,8,13837,0,0,0, '', NULL), -- Learning The Reins - Mastery Of The Charge
(20,0,13625,0,8,13837,0,0,0, '', NULL),
(19,0,13625,0,8,13828,0,0,0, '', NULL), -- Learning The Reins - Mastery Of Melee
(20,0,13625,0,8,13828,0,0,0, '', NULL),
(19,0,13670,0,8,13835,0,0,0, '', NULL), -- The Edge Of Winter - Mastery Of The Shield-Breaker
(20,0,13670,0,8,13835,0,0,0, '', NULL),
(19,0,13670,0,8,13837,0,0,0, '', NULL), -- The Edge Of Winter - Mastery Of The Charge
(20,0,13670,0,8,13837,0,0,0, '', NULL),
(19,0,13670,0,8,13828,0,0,0, '', NULL), -- The Edge Of Winter - Mastery Of Melee
(20,0,13670,0,8,13828,0,0,0, '', NULL),
(19,0,13669,0,8,13835,0,0,0, '', NULL), -- A Worthy Weapon - Mastery Of The Shield-Breaker
(20,0,13669,0,8,13835,0,0,0, '', NULL),
(19,0,13669,0,8,13837,0,0,0, '', NULL), -- A Worthy Weapon - Mastery Of The Charge
(20,0,13669,0,8,13837,0,0,0, '', NULL),
(19,0,13669,0,8,13828,0,0,0, '', NULL), -- A Worthy Weapon - Mastery Of Melee
(20,0,13669,0,8,13828,0,0,0, '', NULL),
(19,0,13666,0,8,13835,0,0,0, '', NULL), -- A Blade Fit For A Champion - Mastery Of The Shield-Breaker
(20,0,13666,0,8,13835,0,0,0, '', NULL),
(19,0,13666,0,8,13837,0,0,0, '', NULL), -- A Blade Fit For A Champion - Mastery Of The Charge
(20,0,13666,0,8,13837,0,0,0, '', NULL),
(19,0,13666,0,8,13828,0,0,0, '', NULL), -- A Blade Fit For A Champion - Mastery Of Melee
(20,0,13666,0,8,13828,0,0,0, '', NULL),
-- Horde
(19,0,13676,0,8,13838,0,0,0, '', NULL), -- Training In The Field - Mastery Of The Shield-Breaker
(20,0,13676,0,8,13838,0,0,0, '', NULL),
(19,0,13676,0,8,13839,0,0,0, '', NULL), -- Training In The Field - Mastery Of The Charge
(20,0,13676,0,8,13839,0,0,0, '', NULL),
(19,0,13676,0,8,13829,0,0,0, '', NULL), -- Training In The Field - Mastery Of Melee
(20,0,13676,0,8,13829,0,0,0, '', NULL),
(19,0,13677,0,8,13838,0,0,0, '', NULL), -- Learning The Reins - Mastery Of The Shield-Breaker
(20,0,13677,0,8,13838,0,0,0, '', NULL),
(19,0,13677,0,8,13839,0,0,0, '', NULL), -- Learning The Reins - Mastery Of The Charge
(20,0,13677,0,8,13839,0,0,0, '', NULL),
(19,0,13677,0,8,13829,0,0,0, '', NULL), -- Learning The Reins - Mastery Of Melee
(20,0,13677,0,8,13829,0,0,0, '', NULL),
(19,0,13675,0,8,13838,0,0,0, '', NULL), -- The Edge Of Winter - Mastery Of The Shield-Breaker
(20,0,13675,0,8,13838,0,0,0, '', NULL),
(19,0,13675,0,8,13839,0,0,0, '', NULL), -- The Edge Of Winter - Mastery Of The Charge
(20,0,13675,0,8,13839,0,0,0, '', NULL),
(19,0,13675,0,8,13829,0,0,0, '', NULL), -- The Edge Of Winter - Mastery Of Melee
(20,0,13675,0,8,13829,0,0,0, '', NULL),
(19,0,13674,0,8,13838,0,0,0, '', NULL), -- A Worthy Weapon - Mastery Of The Shield-Breaker
(20,0,13674,0,8,13838,0,0,0, '', NULL),
(19,0,13674,0,8,13839,0,0,0, '', NULL), -- A Worthy Weapon - Mastery Of The Charge
(20,0,13674,0,8,13839,0,0,0, '', NULL),
(19,0,13674,0,8,13829,0,0,0, '', NULL), -- A Worthy Weapon - Mastery Of Melee
(20,0,13674,0,8,13829,0,0,0, '', NULL),
(19,0,13673,0,8,13838,0,0,0, '', NULL), -- A Blade Fit For A Champion - Mastery Of The Shield-Breaker
(20,0,13673,0,8,13838,0,0,0, '', NULL),
(19,0,13673,0,8,13839,0,0,0, '', NULL), -- A Blade Fit For A Champion - Mastery Of The Charge
(20,0,13673,0,8,13839,0,0,0, '', NULL),
(19,0,13673,0,8,13829,0,0,0, '', NULL), -- A Blade Fit For A Champion - Mastery Of Melee
(20,0,13673,0,8,13829,0,0,0, '', NULL);
UPDATE `version` SET `db_version`='TDB 335.11.39' LIMIT 1;
