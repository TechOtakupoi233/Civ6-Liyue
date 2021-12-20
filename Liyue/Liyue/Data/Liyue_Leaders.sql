INSERT INTO Types (Type, Kind)
VALUES	('LEADER_KEQING',				'KIND_LEADER'	),
		('LEADER_NINGGUANG',			'KIND_LEADER'	),
		('TRAIT_LEADER_QIXING_YUHENG',	'KIND_TRAIT'	),
		('TRAIT_AGENDA_KEQING',			'KIND_TRAIT'	);

INSERT INTO CivilizationLeaders (CivilizationType, LeaderType, CapitalName)
VALUES	('CIVILIZATION_LIYUE_CL',	'LEADER_KEQING',	'LOC_CITY_NAME_LIYUE_CL_1'),
		('CIVILIZATION_LIYUE_CL',	'LEADER_NINGGUANG',	'LOC_CITY_NAME_LIYUE_CL_1');

INSERT INTO Leaders (LeaderType, Name, Sex, InheritFrom, SceneLayers)
VALUES	('LEADER_KEQING',		'LOC_LEADER_KEQING_NAME',		'Female', 'LEADER_DEFAULT', 4),
		('LEADER_NINGGUANG',	'LOC_LEADER_NINGGUANG_NAME',	'Female', 'LEADER_DEFAULT', 4);

INSERT INTO LeaderQuotes (LeaderType, Quote, QuoteAudio)
VALUES	('LEADER_KEQING',		'LOC_PEDIA_LEADERS_PAGE_KEQING_QUOTE',		'KEQING_MISC_PEP_TALK_A'	),
		('LEADER_NINGGUANG',	'LOC_PEDIA_LEADERS_PAGE_NINGGUANG_QUOTE',	'NINGGUANG_MISC_PEP_TALK_A'	);

--------------------------------------------------------------
INSERT INTO Traits (TraitType, Name, Description)
VALUES	('TRAIT_LEADER_QIXING_YUHENG',	'LOC_TRAIT_LEADER_QIXING_YUHENG_NAME',	'LOC_TRAIT_LEADER_QIXING_YUHENG_DESCRIPTION'),
		('TRAIT_AGENDA_KEQING',			NULL,									NULL										);

INSERT INTO LeaderTraits (LeaderType, TraitType)
VALUES	('LEADER_KEQING',	'TRAIT_LEADER_QIXING_YUHENG'			),
		('LEADER_KEQING',	'TRAIT_LEADER_LOW_RELIGIOUS_PREFERENCE'	);

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

--------

INSERT INTO AiListTypes (ListType)
VALUES	('KeqingCivics'), ('KeqingTechs'), ('KeqingWonders'),	('KeqingFavoredDistricts');

INSERT INTO AiLists (LeaderType, ListType, System)
VALUES	('TRAIT_LEADER_QIXING_YUHENG',		'KeqingCivics',		'Civics'		),
		('TRAIT_LEADER_QIXING_YUHENG',		'KeqingTechs',		'Technologies'	),
		('TRAIT_LEADER_QIXING_YUHENG',		'KeqingWonders',	'Buildings'		);

INSERT INTO AiLists (ListType, AgendaType, System)
VALUES	('ExploitationLoverExploitationPreference',		'TRAIT_AGENDA_KEQING',		'PseudoYields'		),
		('KeqingFavoredDistricts',						'TRAIT_AGENDA_KEQING',		'PseudoYields'		);

INSERT INTO AiFavoredItems (ListType, Item, Favored)
VALUES	('KeqingCivics',	'CIVIC_STATE_WORKFORCE',	1),
		('KeqingCivics',	'CIVIC_CIVIL_SERVICE',		1),
		('KeqingCivics',	'CIVIC_HUMANISM',			1),
		('KeqingCivics',	'CIVIC_THE_ENLIGHTENMENT',	1),
		('KeqingCivics',	'CIVIC_NATURAL_HISTORY',	1),
		('KeqingCivics',	'CIVIC_CIVIL_ENGINEERING',	1),
		('KeqingCivics',	'CIVIC_MOBILIZATION',		1),
		('KeqingCivics',	'CIVIC_RAPID_DEPLOYMENT',	1),
		('KeqingTechs',		'TECH_MASONRY',				1),
		('KeqingTechs',		'TECH_CONSTRUCTION',		1),
		('KeqingTechs',		'TECH_ENGINEERING',			1),
		('KeqingTechs',		'TECH_SANITATION',			1),
		('KeqingTechs',		'TECH_STEEL',				1),
		('KeqingWonders',	'BUILDING_PYRAMIDS',		1),
		('KeqingWonders',	'BUILDING_RUHR_VALLEY',		1);

INSERT INTO AiFavoredItems (ListType, Item, Value)
VALUES	('KeqingFavoredDistricts',	'PSEUDOYIELD_DISTRICT',		50);

INSERT INTO Agendas (AgendaType, Name, Description)
VALUES	('AGENDA_KEQING',	'LOC_AGENDA_KEQING_NAME',	'LOC_AGENDA_KEQING_DESCRIPTION'	);

INSERT INTO HistoricalAgendas (LeaderType, AgendaType)
VALUES	('LEADER_KEQING',	'AGENDA_KEQING'	);

INSERT INTO ExclusiveAgendas (AgendaOne, AgendaTwo)
VALUES	('AGENDA_KEQING',	'AGENDA_EXPLOITATIVE'	),
		('AGENDA_KEQING',	'AGENDA_ENVIRONMENTALIST'	);

INSERT INTO AgendaTraits (AgendaType, TraitType)
VALUES	('AGENDA_KEQING',	'TRAIT_AGENDA_KEQING'	);