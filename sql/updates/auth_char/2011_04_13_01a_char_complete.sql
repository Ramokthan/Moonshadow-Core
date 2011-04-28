ALTER TABLE `gameobject_respawn`
    CHANGE `respawntime` `respawnTime` int(10) unsigned NOT NULL DEFAULT '0',
    CHANGE `instance` `instanceId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Identifier';
ALTER TABLE `creature_respawn`
    CHANGE `respawntime` `respawnTime` int(10) unsigned NOT NULL DEFAULT '0',
    CHANGE `instance` `instanceId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Identifier';
ALTER TABLE `corpse`
    CHANGE `guid` `corpseGuid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
    CHANGE `player` `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
    CHANGE `map` `mapId` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
    CHANGE `position_x` `posX` float NOT NULL DEFAULT '0',
    CHANGE `position_y` `posY` float NOT NULL DEFAULT '0',
    CHANGE `position_z` `posZ` float NOT NULL DEFAULT '0',
    CHANGE `guild` `guildId` int(10) unsigned NOT NULL DEFAULT '0',
    CHANGE `corpse_type` `corpseType` tinyint(3) unsigned NOT NULL DEFAULT '0',
    CHANGE `instance` `instanceId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Identifier';
ALTER TABLE `arena_team_member`
ADD COLUMN `personalRating` SMALLINT(5) NOT NULL DEFAULT '0' AFTER guid;

UPDATE arena_team_member
INNER JOIN character_arena_stats ON arena_team_member.guid = character_arena_stats.guid
INNER JOIN arena_team ON arena_team.arenaTeamId = arena_team_member.arenaTeamId AND (slot = 0 AND TYPE = 2 OR slot = 1 AND TYPE = 3 OR slot = 2 AND TYPE = 5)
SET arena_team_member.personalRating = character_arena_stats.personalRating;

ALTER TABLE `character_arena_stats`
DROP COLUMN `personalRating`;
ALTER TABLE `arena_team`
CHANGE `rating` `rating` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `rank` `rank` INT(10) UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE `character_homebind`
    CHANGE `map` `mapId` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
    CHANGE `zone` `zoneId` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Zone Identifier',
    CHANGE `position_x` `posX` float NOT NULL DEFAULT '0',
    CHANGE `position_y` `posY` float NOT NULL DEFAULT '0',
    CHANGE `position_z` `posZ` float NOT NULL DEFAULT '0';
ALTER TABLE `character_battleground_data`
    CHANGE `instance_id` `instanceId` int(10) unsigned NOT NULL COMMENT 'Instance Identifier',
    CHANGE `join_map` `joinMapId` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
    CHANGE `join_x` `joinX` float NOT NULL DEFAULT '0',
    CHANGE `join_y` `joinY` float NOT NULL DEFAULT '0',
    CHANGE `join_z` `joinZ` float NOT NULL DEFAULT '0',
    CHANGE `join_o` `joinO` float NOT NULL DEFAULT '0',
    CHANGE `taxi_start` `taxiStart` int(10) unsigned NOT NULL DEFAULT '0',
    CHANGE `taxi_end` `taxiEnd` int(10) unsigned NOT NULL DEFAULT '0',
    CHANGE `mount_spell` `mountSpell` mediumint(8) unsigned NOT NULL DEFAULT '0';
-- Update arena_team_member table
ALTER TABLE `arena_team_member`
DROP COLUMN `personalRating`;
-- Update arena_team table
ALTER TABLE `arena_team`
CHANGE `arenateamid` `arenaTeamId` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `captainguid` `captainGuid` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `BackgroundColor` `backgroundColor` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `EmblemStyle` `emblemStyle` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `EmblemColor` `emblemColor` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `BorderStyle` `borderStyle` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `BorderColor` `borderColor` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
ADD COLUMN `rating` SMALLINT(5) UNSIGNED NOT NULL AFTER `type`,
ADD COLUMN `seasonGames` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL AFTER `rating`,
ADD COLUMN `seasonWins` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL AFTER `seasonGames`,
ADD COLUMN `weekGames` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL AFTER `seasonWins`,
ADD COLUMN `weekWins` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL AFTER `weekGames`,
ADD COLUMN `rank` INT(10) UNSIGNED NOT NULL AFTER `weekWins`;

-- Move data from arena_team_stats to new columns in arena_team
UPDATE `arena_team` a, `arena_team_stats` s SET
`a`.`rating` = `s`.`rating`,
`a`.`seasonGames` = `s`.`played`,
`a`.`seasonWins` = `s`.`wins2`,
`a`.`weekGames` = `s`.`games`,
`a`.`weekWins` = `s`.`wins`,
`a`.`rank` = `s`.`rank`
WHERE `a`.`arenaTeamId` = `s`.`arenateamid`;

-- Remove arena_team_stats table
DROP TABLE `arena_team_stats`;

-- Update arena_team_member table
ALTER TABLE `arena_team_member`
CHANGE `arenateamid` `arenaTeamId` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `played_week` `weekGames` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `wons_week` `weekWins` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `played_season` `seasonGames` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `wons_season` `seasonWins` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL,
ADD COLUMN `personalRating` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL AFTER `seasonWins`;

-- Update character_arena_stats table
ALTER TABLE `character_arena_stats`
CHANGE `personal_rating` `personalRating` SMALLINT(5) NOT NULL,
CHANGE `matchmaker_rating` `matchMakerRating` SMALLINT(5) NOT NULL;
