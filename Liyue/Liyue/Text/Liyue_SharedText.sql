INSERT OR IGNORE INTO BaseGameText (Tag, Text)
VALUES	('LOC_UNIT_HILICHURL_FIGHTER_DESCRIPTION',	'{LOC_UNIT_WARRIOR_DESCRIPTION}'	),
		('LOC_UNIT_HILICHURL_GUARD_DESCRIPTION',	'{LOC_UNIT_SPEARMAN_DESCRIPTION}'	);

INSERT OR IGNORE INTO LocalizedText (Language, Tag, Text)		-- Names Included in the Genshin Mondstadt Mod
VALUES	('en_US',	'LOC_BUILDING_STATUE_OF_THE_SEVEN_NAME',			'Statue of the Seven'),
		('en_US',	'LOC_BUILDING_STATUE_OF_THE_SEVEN_DESCRIPTION',		'Genshin Impact unique building that replaces the Monument. Provides an additional +2 [ICON_Faith] Faith. Provides +1 Loyalty per turn in this city. If the city already has maximum Loyalty, also provides an additional +1 [ICON_Culture] Culture.[NEWLINE][NEWLINE]Units instantly heals when moved to a Statue of the Seven. Each Statue of the Seven increases total healing power of your Statues by 25 per turn and the power is shared by all of them.'),
		('en_US',	'LOC_TOOLTIP_STATUE_OF_THE_SEVEN',					"Statue's Blessing: "),
		('en_US',	'LOC_PEDIA_BUILDINGS_PAGE_BUILDING_STATUE_OF_THE_SEVEN_CHAPTER_HISTORY_PARA_1',					''	),

		('en_US',	'LOC_UNIT_HILICHURL_FIGHTER_NAME',	'Hilichurl'	),
		('en_US',	'LOC_PEDIA_UNITS_PAGE_UNIT_HILICHURL_FIGHTER_CHAPTER_HISTORY_PARA_1',					''	),
		('en_US',	'LOC_UNIT_HILICHURL_GUARD_NAME',	'Mitachurl'	),
		('en_US',	'LOC_PEDIA_UNITS_PAGE_UNIT_HILICHURL_GUARD_CHAPTER_HISTORY_PARA_1',					''	),

		('en_US',	'LOC_NAMED_DESSERT_LIYUE_1',		'Sal Terrae'		),
		('en_US',	'LOC_NAMED_DESSERT_LIYUE_2',		'Yaoguang Shoal'	),
		('en_US',	'LOC_NAMED_RIVER_LIYUE_1',			'Stonegate Creek'	),
		('en_US',	'LOC_NAMED_MOUNTAIN_MONDSTADT_1',	'Dragonspine'		),
		('en_US',	'LOC_NAMED_RIVER_MONDSTADT_1',		'Wyrmrest River'	),
		('en_US',	'LOC_NAMED_VOLCANO_MONDSTADT_3',	'Skyfrost Nail'		),

--------------------------------------------------------------
		('zh_Hans_CN',	'LOC_BUILDING_STATUE_OF_THE_SEVEN_NAME',			'七天神像'		),
		('zh_Hans_CN',	'LOC_BUILDING_STATUE_OF_THE_SEVEN_DESCRIPTION',		'替代纪念碑的原神特色建筑。额外提供 +2 [ICON_Faith] 信仰值。使此城市每回合 +1 忠诚度。如城市已拥有最高忠诚度，则额外 +1 [ICON_Culture] 文化值。[NEWLINE][NEWLINE]移动至七天神像的单位立即回复生命值（每座神像提升25点每回合的总回复力，回复力由您境内所有的神像共享）。'),
		('zh_Hans_CN',	'LOC_TOOLTIP_STATUE_OF_THE_SEVEN',					'神像的恩泽：'	),
		('zh_Hans_CN',	'LOC_PEDIA_BUILDINGS_PAGE_BUILDING_STATUE_OF_THE_SEVEN_CHAPTER_HISTORY_PARA_1',					'七天神像是镇驻在提瓦特各处的巨大石像，据说它们的形象来自于七位神明。它们可以在提瓦特大陆的各处找到，七国中每个国家的神像都与它们的神所对应，分别诉说着各自的长久历史——在蒙德有5座，璃月和稻妻则有6座。一开始，旅行者只能点亮位于坠星山谷和风啸山坡的七天神像，而在可探索的区域扩展之后则可以前往其他神像处。当旅行者首次点亮一处七天神像时，可以获得额外的视野和新的探索派遣。它还可以切换旅行者的共鸣状态，并为旅行者提供治疗的恩泽。在雪山的七天神像附近时，还可以降低角色的寒冷值。'	),

		('zh_Hans_CN',	'LOC_UNIT_HILICHURL_FIGHTER_NAME',	'丘丘人'		),
		('zh_Hans_CN',	'LOC_PEDIA_UNITS_PAGE_UNIT_HILICHURL_FIGHTER_CHAPTER_HISTORY_PARA_1',					'丘丘人遍布提瓦特大陆，它们与人类轮廓相似，却失去了智能与灵性，仅有基础的文明形态。它们在大地上出没超过千年，却没有产生发达的文化，更不要说记录历史了。自五百年前的灾祸以来，丘丘人广泛地分布在大地各处。虽然力量弱小，缺乏组织，但有时也能给人们带来不小的麻烦。大部分“文明”人已经放弃了与丘丘人沟通的尝试，认为它们只是纯粹的、不通言语的魔物。尽管被大多数人视作是无法交流的未开化蛮族，不同地区不同部族的丘丘人仍然有各自不同的习惯。在蒙德的达达乌帕谷，喜好大吃大喝的好肉族会蓄养野猪，狡猾精明的好睡族会搭建简陋的房屋和床，而具有独特的图腾崇拜的黑日族则有更强大的萨满，并为它们之中地位最高的萨满准备了高大的御座。'	),
		('zh_Hans_CN',	'LOC_UNIT_HILICHURL_GUARD_NAME',	'丘丘暴徒'	),
		('zh_Hans_CN',	'LOC_PEDIA_UNITS_PAGE_UNIT_HILICHURL_GUARD_CHAPTER_HISTORY_PARA_1',					'一般来说，丘丘人部落中最具权威的是萨满——部落岁数最老的成员。然而，丘丘人衡量地位的标准并非只有年龄。在许多部落中，那些块头更大、战斗力更强的成员会取代萨满成为部落领袖，而这些部落似乎也会在它们的领导下变得更加好战。很容易地从巨大的体型和浮夸的面具头角装饰上就能分辨出这些好战的部落头目，也就是丘丘暴徒。它们通过磨炼成为大块头的战斗主力，假如在恶劣的环境中活得够久，这些专门的战士将会是部落中最受重视的领袖。有时，丘丘人群落中甚至会出现一些被称为“Lawa”（可能是“王”或“头领”之意）的庞然大物，不过它们并不作为头领实行统治或者指挥，而是避开其他丘丘人独自生活。'	),
		
		('zh_Hans_CN',	'LOC_NAMED_DESSERT_LIYUE_1',		'地中之盐'	),
		('zh_Hans_CN',	'LOC_NAMED_DESSERT_LIYUE_2',		'瑶光滩'		),
		('zh_Hans_CN',	'LOC_NAMED_RIVER_LIYUE_1',			'石门涧'		),
		('zh_Hans_CN',	'LOC_NAMED_MOUNTAIN_MONDSTADT_1',	'龙脊雪山'	),
		('zh_Hans_CN',	'LOC_NAMED_RIVER_MONDSTADT_1',		'卧龙溪'		),
		('zh_Hans_CN',	'LOC_NAMED_VOLCANO_MONDSTADT_3',	'寒天之钉'	);