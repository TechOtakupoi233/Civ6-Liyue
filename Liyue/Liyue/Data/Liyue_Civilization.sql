INSERT INTO Types (Type, Kind)
VALUES	('CIVILIZATION_LIYUE_CL',					'KIND_CIVILIZATION'	),
		('UNIT_MILLELITH',								'KIND_UNIT'			),
		('DISTRICT_LIYUE_HARBOR',						'KIND_DISTRICT'		),
		('TRAIT_CIVILIZATION_HARBOR_OF_STONE_AND_CONTRACTS',	'KIND_TRAIT'		),
		('TRAIT_CIVILIZATION_UNIT_MILLELITH',			'KIND_TRAIT'		),
		('TRAIT_CIVILIZATION_DISTRICT_LIYUE_HARBOR',	'KIND_TRAIT'		),
		('ABILITY_MILLELITH_TERRAIN_MOVEMENT',			'KIND_ABILITY'		),
		('ABILITY_MILLELITH_TERRAIN_STRENGTH',			'KIND_ABILITY'		);

INSERT INTO Civilizations (CivilizationType, Name, Description, Adjective, StartingCivilizationLevelType, Ethnicity, RandomCityNameDepth)
VALUES(
	'CIVILIZATION_LIYUE_CL',
	'LOC_CIVILIZATION_LIYUE_CL_NAME',
	'LOC_CIVILIZATION_LIYUE_CL_DESCRIPTION',
	'LOC_CIVILIZATION_LIYUE_CL_ADJECTIVE',
	'CIVILIZATION_LEVEL_FULL_CIV',
	'ETHNICITY_ASIAN',
	10
);

INSERT INTO CivilizationTraits (CivilizationType, TraitType)
VALUES	('CIVILIZATION_LIYUE_CL',	'TRAIT_CIVILIZATION_HARBOR_OF_STONE_AND_CONTRACTS'	),
		('CIVILIZATION_LIYUE_CL',	'TRAIT_CIVILIZATION_UNIT_MILLELITH'			),
		('CIVILIZATION_LIYUE_CL',	'TRAIT_CIVILIZATION_DISTRICT_LIYUE_HARBOR'	);

INSERT INTO Traits (TraitType, Name, Description)
VALUES	('TRAIT_CIVILIZATION_HARBOR_OF_STONE_AND_CONTRACTS',	'LOC_TRAIT_CIVILIZATION_HARBOR_OF_STONE_AND_CONTRACTS_NAME',	'LOC_TRAIT_CIVILIZATION_HARBOR_OF_STONE_AND_CONTRACTS_DESCRIPTION'	),
		('TRAIT_CIVILIZATION_UNIT_MILLELITH',			'LOC_UNIT_MILLELITH_NAME',								'LOC_UNIT_MILLELITH_DESCRIPTION'							),
		('TRAIT_CIVILIZATION_DISTRICT_LIYUE_HARBOR',	'LOC_DISTRICT_LIYUE_HARBOR_NAME',						'LOC_DISTRICT_LIYUE_HARBOR_DESCRIPTION'						);

INSERT INTO TraitModifiers (TraitType, ModifierId)
VALUES	('TRAIT_CIVILIZATION_HARBOR_OF_STONE_AND_CONTRACTS',	'TRAIT_LIYUE_IMPROVEMEMT_BONUS_PRODUCTION'	),
		('TRAIT_CIVILIZATION_HARBOR_OF_STONE_AND_CONTRACTS',	'TRAIT_LIYUE_IMPROVEMEMT_BONUS_GOLD'		),
		('TRAIT_CIVILIZATION_HARBOR_OF_STONE_AND_CONTRACTS',	'TRAIT_LIYUE_IMPROVEMEMT_BONUS_CULTURE'		),
		('TRAIT_CIVILIZATION_DISTRICT_LIYUE_HARBOR',	'TRAIT_LIYUE_HARBOR_FREE_TRADING_POSTS'		);

--------------------------------------------------------------
INSERT INTO UnitAiInfos (UnitType, AiType)
SELECT	'UNIT_MILLELITH', AiType
FROM	UnitAiInfos
WHERE	UnitType = 'UNIT_SPEARMAN';

INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType)
VALUES	('UNIT_MILLELITH',	'UNIT_SPEARMAN');

INSERT INTO Tags (Tag, Vocabulary)
VALUES	('CLASS_MILLELITH',	'ABILITY_CLASS');

INSERT INTO TypeTags (Type, Tag)
VALUES	('UNIT_MILLELITH',						'CLASS_ANTI_CAVALRY'),
		('UNIT_MILLELITH',						'CLASS_MILLELITH'	),
		('ABILITY_MILLELITH_TERRAIN_MOVEMENT',	'CLASS_MILLELITH'	),
		('ABILITY_MILLELITH_TERRAIN_STRENGTH',	'CLASS_MILLELITH'	);

INSERT INTO Units(
	UnitType,
	Name,
	Description,
	Maintenance,
	BaseMoves,
	BaseSightRange,
	ZoneOfControl,
	Domain,
	Combat,
	FormationClass,
	PromotionClass,
	AdvisorType,
	Cost,
	PurchaseYield,
	PrereqTech,
	MandatoryObsoleteTech,
	TraitType
) SELECT
	'UNIT_MILLELITH',
	'LOC_UNIT_MILLELITH_NAME',
	'LOC_UNIT_MILLELITH_DESCRIPTION',
	Maintenance, BaseMoves, BaseSightRange, ZoneOfControl,
	Domain, (Combat+5), FormationClass, PromotionClass, AdvisorType,
	Cost, PurchaseYield, PrereqTech, MandatoryObsoleteTech,
	'TRAIT_CIVILIZATION_UNIT_MILLELITH'
FROM Units
WHERE UnitType = 'UNIT_SPEARMAN';

INSERT INTO UnitUpgrades (Unit, UpgradeUnit)
VALUES	('UNIT_MILLELITH', 'UNIT_PIKEMAN');

INSERT INTO UnitAbilities (UnitAbilityType, Name, Description)
VALUES	('ABILITY_MILLELITH_TERRAIN_MOVEMENT',	'LOC_PROMOTION_ALPINE_NAME',					'LOC_PROMOTION_ALPINE_DESCRIPTION'					),
		('ABILITY_MILLELITH_TERRAIN_STRENGTH',	'LOC_ABILITY_MILLELITH_TERRAIN_STRENGTH_NAME',	'LOC_ABILITY_MILLELITH_TERRAIN_STRENGTH_DESCRIPTION');

INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId)
VALUES	('ABILITY_MILLELITH_TERRAIN_MOVEMENT',	'ALPINE_IGNORE_HILLS_MOVEMENT_PENALTY'	),
		('ABILITY_MILLELITH_TERRAIN_STRENGTH',	'MILLELITH_TERRAIN_BONUS_STRENGTH'		);

--------------------------------------------------------------
INSERT INTO DistrictReplaces (CivUniqueDistrictType, ReplacesDistrictType)
VALUES	('DISTRICT_LIYUE_HARBOR', 'DISTRICT_HARBOR');

INSERT INTO Districts(
	DistrictType,
	Name,
	Description,
	PrereqTech,
	PlunderType,
	PlunderAmount,
	AdvisorType,
	Cost,
	CostProgressionModel,
	CostProgressionParam1,
	RequiresPlacement,
	RequiresPopulation,
	Coast,
	Aqueduct,
	FreeEmbark,
	NoAdjacentCity,
	AdjacentToLand,
	InternalOnly,
	ZOC,
	TradeEmbark,
	CaptureRemovesBuildings,
	CaptureRemovesCityDefenses,
	MilitaryDomain,
	TravelTime,
	CityStrengthModifier,
	TraitType
) SELECT
	'DISTRICT_LIYUE_HARBOR',
	'LOC_DISTRICT_LIYUE_HARBOR_NAME',
	'LOC_DISTRICT_LIYUE_HARBOR_DESCRIPTION',
	PrereqTech, PlunderType, PlunderAmount, AdvisorType, Cost, CostProgressionModel, CostProgressionParam1,
	RequiresPlacement, RequiresPopulation, Coast, Aqueduct, FreeEmbark, NoAdjacentCity, AdjacentToLand, InternalOnly, ZOC,
	TradeEmbark, CaptureRemovesBuildings, CaptureRemovesCityDefenses, MilitaryDomain, TravelTime, CityStrengthModifier,
	'TRAIT_CIVILIZATION_DISTRICT_LIYUE_HARBOR'
FROM Districts
WHERE DistrictType = 'DISTRICT_ROYAL_NAVY_DOCKYARD';

INSERT INTO District_Adjacencies (DistrictType, YieldChangeId)
SELECT	'DISTRICT_LIYUE_HARBOR', YieldChangeId
FROM	District_Adjacencies
WHERE	DistrictType = 'DISTRICT_HARBOR';

INSERT INTO District_GreatPersonPoints (DistrictType, GreatPersonClassType, PointsPerTurn)
VALUES	('DISTRICT_LIYUE_HARBOR',	'GREAT_PERSON_CLASS_ADMIRAL', 2);

INSERT INTO District_TradeRouteYields (DistrictType, YieldType, YieldChangeAsOrigin, YieldChangeAsDomesticDestination, YieldChangeAsInternationalDestination)
VALUES	('DISTRICT_LIYUE_HARBOR',	'YIELD_PRODUCTION',		0, 1, 0),
		('DISTRICT_LIYUE_HARBOR',	'YIELD_GOLD',			0, 0, 3);

INSERT INTO District_CitizenYieldChanges (DistrictType, YieldType, YieldChange)
VALUES	('DISTRICT_LIYUE_HARBOR',	'YIELD_GOLD',	2),
		('DISTRICT_LIYUE_HARBOR',	'YIELD_FOOD',	1);

--------------------------------------------------------------
INSERT INTO Modifiers (ModifierId, ModifierType)
VALUES	('TRAIT_LIYUE_IMPROVEMEMT_BONUS_GOLD', 'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER');

INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
VALUES	('TRAIT_LIYUE_IMPROVEMEMT_BONUS_PRODUCTION',		'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',			'LIYUE_PLOT_HAS_QUARRY_OR_MINE_REQUIREMENTS'	),
		('TRAIT_LIYUE_IMPROVEMEMT_BONUS_GOLD_MODIFIER',		'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD',	'LIYUE_HARBOR_HAS_QUARRY_OR_MINE_REQUIREMENTS'	),
		('TRAIT_LIYUE_IMPROVEMEMT_BONUS_CULTURE',			'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',			'LIYUE_RESOURCE_HAS_QUARRY_OR_MINE_REQUIREMENTS'),
		('MILLELITH_TERRAIN_BONUS_STRENGTH',				'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',			'MILLELITH_HILL_TERRAIN_DEFENDING_REQUIREMENTS'	),
		('TRAIT_LIYUE_HARBOR_FREE_TRADING_POSTS',			'MODIFIER_PLAYER_CITIES_GRANT_TRADING_POST',	'CITY_HAS_LIYUE_HARBOR_REQUIREMENTS'			);

INSERT INTO ModifierArguments (ModifierId, Name, Value)
VALUES	('TRAIT_LIYUE_IMPROVEMEMT_BONUS_PRODUCTION',		'YieldType',		'YIELD_PRODUCTION'								),
		('TRAIT_LIYUE_IMPROVEMEMT_BONUS_PRODUCTION',		'Amount',			1												),
		('TRAIT_LIYUE_IMPROVEMEMT_BONUS_GOLD_MODIFIER',		'YieldType',		'YIELD_GOLD'									),
		('TRAIT_LIYUE_IMPROVEMEMT_BONUS_GOLD_MODIFIER',		'Amount',			2												),
		('TRAIT_LIYUE_IMPROVEMEMT_BONUS_CULTURE',			'YieldType',		'YIELD_CULTURE'									),
		('TRAIT_LIYUE_IMPROVEMEMT_BONUS_CULTURE',			'Amount',			1												),
		('TRAIT_LIYUE_IMPROVEMEMT_BONUS_GOLD',				'ModifierId',		'TRAIT_LIYUE_IMPROVEMEMT_BONUS_GOLD_MODIFIER'	),
		('MILLELITH_TERRAIN_BONUS_STRENGTH',				'Amount',			5												);

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)
VALUES	('LIYUE_PLOT_HAS_QUARRY_OR_MINE_REQUIREMENTS',		'REQUIREMENTSET_TEST_ANY'),
		('LIYUE_HARBOR_HAS_QUARRY_OR_MINE_REQUIREMENTS',	'REQUIREMENTSET_TEST_ALL'),
		('LIYUE_RESOURCE_HAS_QUARRY_OR_MINE_REQUIREMENTS',	'REQUIREMENTSET_TEST_ALL'),
		('MILLELITH_HILL_TERRAIN_DEFENDING_REQUIREMENTS',	'REQUIREMENTSET_TEST_ALL'),
		('CITY_HAS_LIYUE_HARBOR_REQUIREMENTS',				'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
VALUES	('LIYUE_PLOT_HAS_QUARRY_OR_MINE_REQUIREMENTS',		'REQUIRES_PLOT_HAS_QUARRY'				),
		('LIYUE_PLOT_HAS_QUARRY_OR_MINE_REQUIREMENTS',		'REQUIRES_PLOT_HAS_MINE'				),
		('LIYUE_HARBOR_HAS_QUARRY_OR_MINE_REQUIREMENTS',	'REQUIRES_LIYUE_PLOT_HAS_QUARRY_OR_MINE'),
		('LIYUE_HARBOR_HAS_QUARRY_OR_MINE_REQUIREMENTS',	'REQUIRES_CITY_HAS_LIYUE_HARBOR'		),
		('LIYUE_RESOURCE_HAS_QUARRY_OR_MINE_REQUIREMENTS',	'REQUIRES_LIYUE_PLOT_HAS_QUARRY_OR_MINE'),
		('LIYUE_RESOURCE_HAS_QUARRY_OR_MINE_REQUIREMENTS',	'REQUIRES_PLOT_HAS_VISIBLE_RESOURCE'	),
		('MILLELITH_HILL_TERRAIN_DEFENDING_REQUIREMENTS',	'PLAYER_IS_DEFENDER_REQUIREMENTS'		),
		('MILLELITH_HILL_TERRAIN_DEFENDING_REQUIREMENTS',	'PLOT_IS_HILLS_REQUIREMENT'				),
		('CITY_HAS_LIYUE_HARBOR_REQUIREMENTS',				'REQUIRES_CITY_HAS_LIYUE_HARBOR'		);

INSERT INTO Requirements (RequirementId, RequirementType)
VALUES	('REQUIRES_LIYUE_PLOT_HAS_QUARRY_OR_MINE',	'REQUIREMENT_REQUIREMENTSET_IS_MET'	),
		('REQUIRES_CITY_HAS_LIYUE_HARBOR',			'REQUIREMENT_CITY_HAS_DISTRICT'		),
		('REQUIRES_MILLELITH_ON_HILLS',				'REQUIREMENT_REQUIREMENTSET_IS_MET'	),
		('CITY_HAS_LIYUE_HARBOR_REQUIREMENTS',		'REQUIREMENTSET_TEST_ALL'			);

INSERT INTO RequirementArguments (RequirementId, Name, Value)
VALUES	('REQUIRES_LIYUE_PLOT_HAS_QUARRY_OR_MINE',	'RequirementSetId',	'LIYUE_PLOT_HAS_QUARRY_OR_MINE_REQUIREMENTS'),
		('REQUIRES_CITY_HAS_LIYUE_HARBOR',			'DistrictType',		'DISTRICT_LIYUE_HARBOR'						);

INSERT INTO ModifierStrings (ModifierId, Context, Text)
VALUES	('MILLELITH_TERRAIN_BONUS_STRENGTH', 'Preview', 'LOC_ABILITY_MILLELITH_TERRAIN_STRENGTH_DESCRIPTION');

--------------------------------------------------------------
INSERT INTO StartBiasTerrains (CivilizationType, TerrainType, Tier)
VALUES	('CIVILIZATION_LIYUE_CL',	'TERRAIN_COAST',	2);

INSERT INTO StartBiasResources (CivilizationType, ResourceType, Tier)
SELECT	'CIVILIZATION_LIYUE_CL', ResourceType, 5
FROM	Improvement_ValidResources
WHERE	ImprovementType = 'IMPROVEMENT_QUARRY';

INSERT INTO CityNames (CivilizationType, CityName)
VALUES	('CIVILIZATION_LIYUE_CL',	'LOC_CITY_NAME_LIYUE'		),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITY_NAME_FEIYUN'	    ),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITY_NAME_CHIHU'		),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITY_NAME_YUJING'		),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITY_NAME_TIANHENG'	),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITY_NAME_DIHUA'		),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITY_NAME_WANGSHU'		),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITY_NAME_QINGCE'		),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITY_NAME_JUEYUN'		),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITY_NAME_STONE_GATE'	),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITY_NAME_WUWANG'		),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITY_NAME_SAL_TERRAE'	),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITY_NAME_MINLIN'		),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITY_NAME_CUIJUE'		),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITY_NAME_HUAGUANG'	),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITY_NAME_AOCANG'		),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITY_NAME_HULAO'		),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITY_NAME_NANTIANMEN'	),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITY_NAME_QINYUN'		),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITY_NAME_TIANQIU'		),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITY_NAME_QIONGJI'		),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITY_NAME_GUILI'		),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITY_NAME_MINGYUN'		),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITY_NAME_YAOGUANG'	),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITY_NAME_LISHA'		),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITY_NAME_DUNYU'		),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITY_NAME_LINGJU'		),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITY_NAME_QINGXU'		),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITY_NAME_GUYUN'		),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITY_NAME_THE_CHASM'	);

INSERT INTO CivilizationCitizenNames (CivilizationType, CitizenName, Female, Modern)
VALUES	('CIVILIZATION_LIYUE_CL',	'LOC_CITIZEN_LIYUE_CL_MALE_1',		0, 0),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITIZEN_LIYUE_CL_MALE_2',		0, 0),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITIZEN_LIYUE_CL_MALE_3',		0, 0),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITIZEN_LIYUE_CL_MALE_4',		0, 0),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITIZEN_LIYUE_CL_MALE_5',		0, 0),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITIZEN_LIYUE_CL_MALE_6',		0, 0),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITIZEN_LIYUE_CL_MALE_7',		0, 0),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITIZEN_LIYUE_CL_MALE_8',		0, 0),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITIZEN_LIYUE_CL_MALE_9',		0, 0),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITIZEN_LIYUE_CL_MALE_10',	0, 0),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITIZEN_LIYUE_CL_MALE_11',	0, 1),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITIZEN_LIYUE_CL_MALE_12',	0, 1),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITIZEN_LIYUE_CL_MALE_13',	0, 1),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITIZEN_LIYUE_CL_MALE_14',	0, 1),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITIZEN_LIYUE_CL_MALE_15',	0, 1),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITIZEN_LIYUE_CL_MALE_16',	0, 1),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITIZEN_LIYUE_CL_MALE_17',	0, 1),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITIZEN_LIYUE_CL_MALE_18',	0, 1),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITIZEN_LIYUE_CL_MALE_19',	0, 1),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITIZEN_LIYUE_CL_MALE_20',	0, 1),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITIZEN_LIYUE_CL_FEMALE_1',	1, 0),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITIZEN_LIYUE_CL_FEMALE_2',	1, 0),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITIZEN_LIYUE_CL_FEMALE_3',	1, 0),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITIZEN_LIYUE_CL_FEMALE_4',	1, 0),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITIZEN_LIYUE_CL_FEMALE_5',	1, 0),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITIZEN_LIYUE_CL_FEMALE_6',	1, 0),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITIZEN_LIYUE_CL_FEMALE_7',	1, 0),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITIZEN_LIYUE_CL_FEMALE_8',	1, 0),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITIZEN_LIYUE_CL_FEMALE_9',	1, 0),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITIZEN_LIYUE_CL_FEMALE_10',	1, 0),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITIZEN_LIYUE_CL_FEMALE_11',	1, 1),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITIZEN_LIYUE_CL_FEMALE_12',	1, 1),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITIZEN_LIYUE_CL_FEMALE_13',	1, 1),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITIZEN_LIYUE_CL_FEMALE_14',	1, 1),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITIZEN_LIYUE_CL_FEMALE_15',	1, 1),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITIZEN_LIYUE_CL_FEMALE_16',	1, 1),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITIZEN_LIYUE_CL_FEMALE_17',	1, 1),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITIZEN_LIYUE_CL_FEMALE_18',	1, 1),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITIZEN_LIYUE_CL_FEMALE_19',	1, 1),
		('CIVILIZATION_LIYUE_CL',	'LOC_CITIZEN_LIYUE_CL_FEMALE_20',	1, 1);

INSERT INTO CivilizationInfo (CivilizationType, Header, Caption, SortIndex)
VALUES	('CIVILIZATION_LIYUE_CL',	'LOC_CIVINFO_LOCATION',		'LOC_CIVINFO_LIYUE_CL_LOCATION',	10),
		('CIVILIZATION_LIYUE_CL',	'LOC_CIVINFO_SIZE',			'LOC_CIVINFO_LIYUE_CL_SIZE',		20),
		('CIVILIZATION_LIYUE_CL',	'LOC_CIVINFO_POPULATION',	'LOC_CIVINFO_LIYUE_CL_POPULATION',	30),
		('CIVILIZATION_LIYUE_CL',	'LOC_CIVINFO_CAPITAL',		'LOC_CIVINFO_LIYUE_CL_CAPITAL',	40);