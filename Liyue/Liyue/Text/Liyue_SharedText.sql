INSERT OR IGNORE INTO BaseGameText (Tag, Text)
VALUES	('LOC_UNIT_HILICHURL_FIGHTER_DESCRIPTION',	'{LOC_UNIT_WARRIOR_DESCRIPTION}'	),
		('LOC_UNIT_HILICHURL_GUARD_DESCRIPTION',	'{LOC_UNIT_SPEARMAN_DESCRIPTION}'	);

INSERT OR IGNORE INTO LocalizedText (Language, Tag, Text)		-- Names Included in the Genshin Mondstadt Mod
VALUES	('en_US',	'LOC_BUILDING_STATUE_OF_THE_SEVEN_NAME',			'Statue of the Seven'),
		('en_US',	'LOC_BUILDING_STATUE_OF_THE_SEVEN_DESCRIPTION',		'Genshin Impact unique building that replaces the Monument. Provides an additional +2 [ICON_Faith] Faith. Provides +1 Loyalty per turn in this city. If the city already has maximum Loyalty, also provides an additional +1 [ICON_Culture] Culture.[NEWLINE]Units instantly heals when moved to a Statue of the Seven. The healing power of the statue is 25 per turn.'),
		('en_US',	'LOC_TOOLTIP_STATUE_OF_THE_SEVEN',					"Statue's Blessing: "),

		('en_US',	'LOC_IMPROVEMENT_ADVENTURERS_GUILD_NAME',			"Adventurers' Guild"),
		('en_US',	'LOC_IMPROVEMENT_ADVENTURERS_GUILD_DESCRIPTION',	"Unlocks the Builder ability to constrcut a Adventurers' Guild, unique to Genshin Impact.[NEWLINE][NEWLINE]+1 [ICON_Culture] Culture and [ICON_Production] Production. +1 [ICON_Gold] Gold and Appeal to adjacent tiles. One per city. Tiles with Adventurers' Guild cannot be swapped."),

		('en_US',	'LOC_UNIT_HILICHURL_FIGHTER_NAME',	'Hilichurl'	),
		('en_US',	'LOC_UNIT_HILICHURL_GUARD_NAME',	'Mitachurl'	),

		('en_US',	'LOC_NAMED_DESSERT_LIYUE_1',		'Sal Terrae'		),
		('en_US',	'LOC_NAMED_DESSERT_LIYUE_2',		'Yaoguang Shoal'	),
		('en_US',	'LOC_NAMED_RIVER_LIYUE_1',			'Stonegate Creek'	),
		('en_US',	'LOC_NAMED_MOUNTAIN_MONDSTADT_1',	'Dragonspine'		),
		('en_US',	'LOC_NAMED_RIVER_MONDSTADT_1',		'Wyrmrest River'	),
		('en_US',	'LOC_NAMED_VOLCANO_MONDSTADT_3',	'Skyfrost Nail'		),

--------------------------------------------------------------
		('zh_Hans_CN',	'LOC_BUILDING_STATUE_OF_THE_SEVEN_NAME',			'七天神像'		),
		('zh_Hans_CN',	'LOC_BUILDING_STATUE_OF_THE_SEVEN_DESCRIPTION',		'替代纪念碑的原神特色建筑。额外提供 +2 [ICON_Faith] 信仰值。使此城市每回合 +1 忠诚度。如城市已拥有最高忠诚度，则额外 +1 [ICON_Culture] 文化值。[NEWLINE]移动至七天神像的单位立即回复生命值（每回合最多25点）。'),
		('zh_Hans_CN',	'LOC_TOOLTIP_STATUE_OF_THE_SEVEN',					'神像的恩泽：'	),

		('zh_Hans_CN',	'LOC_IMPROVEMENT_ADVENTURERS_GUILD_NAME',			'冒险家协会'		),
		('zh_Hans_CN',	'LOC_IMPROVEMENT_ADVENTURERS_GUILD_DESCRIPTION',	'解锁建造冒险家协会（原神特色改良设施）的能力。[NEWLINE][NEWLINE]+1 [ICON_Culture] 文化值 +1 [ICON_Production] 生产力，为相邻单元格提供 +1 [ICON_Gold] 金币 +1 魅力。每个城市仅限建造一座。冒险家协会所在的单元格无法被切换给另一座城市。'),

		('zh_Hans_CN',	'LOC_UNIT_HILICHURL_FIGHTER_NAME',	'丘丘人'		),
		('zh_Hans_CN',	'LOC_UNIT_HILICHURL_GUARD_NAME',	'丘丘人首领'	),
		
		('zh_Hans_CN',	'LOC_NAMED_DESSERT_LIYUE_1',		'地中之盐'	),
		('zh_Hans_CN',	'LOC_NAMED_DESSERT_LIYUE_2',		'瑶光滩'		),
		('zh_Hans_CN',	'LOC_NAMED_RIVER_LIYUE_1',			'石门涧'		),
		('zh_Hans_CN',	'LOC_NAMED_MOUNTAIN_MONDSTADT_1',	'龙脊雪山'	),
		('zh_Hans_CN',	'LOC_NAMED_RIVER_MONDSTADT_1',		'卧龙溪'		),
		('zh_Hans_CN',	'LOC_NAMED_VOLCANO_MONDSTADT_3',	'寒天之钉'	);