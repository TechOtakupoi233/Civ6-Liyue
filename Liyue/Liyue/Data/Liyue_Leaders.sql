INSERT INTO Types (Type, Kind)
VALUES	('LEADER_KEQING',				'KIND_LEADER'	),
		('LEADER_NINGGUANG',			'KIND_LEADER'	),
		('TRAIT_LEADER_QIXING_YUHENG',	'KIND_TRAIT'	);

INSERT INTO CivilizationLeaders (CivilizationType, LeaderType, CapitalName)
VALUES	('CIVILIZATION_LIYUE_CL',	'LEADER_KEQING',	'LOC_CITY_NAME_LIYUE'),
		('CIVILIZATION_LIYUE_CL',	'LEADER_NINGGUANG',	'LOC_CITY_NAME_LIYUE');

INSERT INTO Leaders (LeaderType, Name, Sex, InheritFrom, SceneLayers)
VALUES	('LEADER_KEQING',		'LOC_LEADER_KEQING_NAME',		'Female', 'LEADER_DEFAULT', 4),
		('LEADER_NINGGUANG',	'LOC_LEADER_NINGGUANG_NAME',	'Female', 'LEADER_DEFAULT', 4);

INSERT INTO LeaderQuotes (LeaderType, Quote, QuoteAudio)
VALUES	('LEADER_KEQING',		'LOC_PEDIA_LEADERS_PAGE_KEQING_QUOTE',		'KEQING_MISC_PEP_TALK_A'	),
		('LEADER_NINGGUANG',	'LOC_PEDIA_LEADERS_PAGE_NINGGUANG_QUOTE',	'NINGGUANG_MISC_PEP_TALK_A'	);

--------------------------------------------------------------
INSERT INTO Traits (TraitType, Name, Description)
VALUES	('TRAIT_LEADER_QIXING_YUHENG',	'LOC_TRAIT_LEADER_QIXING_YUHENG_NAME',	'LOC_TRAIT_LEADER_QIXING_YUHENG_DESCRIPTION');

INSERT INTO LeaderTraits (LeaderType, TraitType)
VALUES	('LEADER_KEQING',	'TRAIT_LEADER_QIXING_YUHENG');

INSERT INTO TraitModifiers (TraitType, ModifierId)
VALUES	('TRAIT_LEADER_QIXING_YUHENG',	'TRAIT_KEQING_UNITS_IGNORE_TERRAIN');

/*Designed to work with the lua script, so don't expect them to work properly without modifying the script!
  Grant ability to all builders and military engineers when they are created so that they can restore movement the turn it is created.*/
INSERT INTO TraitModifiers (TraitType, ModifierId)
VALUES	('TRAIT_LEADER_QIXING_YUHENG',	'TRAIT_QIXING_YUHENG_EXTENDED_SHIFT_GRANT');

--------------------------------------------------------------
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
VALUES	('TRAIT_KEQING_UNITS_IGNORE_TERRAIN',	'MODIFIER_PLAYER_UNITS_ATTACH_MODIFIER',	'KEQING_UNIT_IS_CIVILIAN_REQUIREMENTS');

INSERT INTO ModifierArguments (ModifierId, Name, Value)
VALUES	('TRAIT_KEQING_UNITS_IGNORE_TERRAIN',	'ModifierId',	'MOD_IGNORE_TERRAIN_COST'	);

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)
VALUES ('KEQING_UNIT_IS_CIVILIAN_REQUIREMENTS', 'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
VALUES ('KEQING_UNIT_IS_CIVILIAN_REQUIREMENTS', 'REQUIRES_CIVILIAN_UNIT_LIYUE');

INSERT INTO Requirements (RequirementId, RequirementType)
VALUES ('REQUIRES_CIVILIAN_UNIT_LIYUE', 'REQUIREMENT_UNIT_TAG_MATCHES');

INSERT INTO RequirementArguments (RequirementId, Name, Value)
VALUES ('REQUIRES_CIVILIAN_UNIT_LIYUE', 'Tag', 'CLASS_LANDCIVILIAN');

/*Designed to work with the lua script, so don't expect them to work properly without modifying the script!
  Grant ability to all builders and military engineers when they are created so that they can restore movement the turn it is created.*/
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
VALUES	('TRAIT_QIXING_YUHENG_EXTENDED_SHIFT_GRANT',	'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',	'KEQING_UNIT_IS_CIVILIAN_REQUIREMENTS');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
VALUES	('TRAIT_QIXING_YUHENG_EXTENDED_SHIFT_GRANT',	'AbilityType',	'ABILITY_KEQING_EXTENDED_SHIFT'	);
