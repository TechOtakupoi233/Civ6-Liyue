INSERT INTO Players(
	Domain,
	CivilizationType,
	CivilizationName,
	CivilizationIcon,
	CivilizationAbilityName,
	CivilizationAbilityDescription,
	CivilizationAbilityIcon,
	LeaderType,
	LeaderName,
	LeaderIcon,
	LeaderAbilityName,
	LeaderAbilityDescription,
	LeaderAbilityIcon,
	Portrait,
	PortraitBackground
) VALUES (
	/* Domain  */ 'Players:Expansion1_Players',
	/* CivType */ 'CIVILIZATION_GENSHIN_LIYUE',
	/* CivName */ 'LOC_CIVILIZATION_GENSHIN_LIYUE_NAME',
	/* CivIcon */ 'ICON_CIVILIZATION_GENSHIN_LIYUE',
	/* UA Name */ 'LOC_TRAIT_CIVILIZATION_JADE_MOON_UPON_CLOUDS_NAME',
	/* UA Dscp */ 'LOC_TRAIT_CIVILIZATION_JADE_MOON_UPON_CLOUDS_DESCRIPTION',
	/* UA Icon */ 'ICON_CIVILIZATION_GENSHIN_LIYUE',
	/* LdrType */ 'LEADER_KEQING',
	/* LdrName */ 'LOC_LEADER_KEQING_NAME',
	/* LdrIcon */ 'ICON_LEADER_KEQING',
	/* LA Name */ 'LOC_TRAIT_LEADER_QIXING_YUHENG_NAME',
	/* LA Dscp */ 'LOC_TRAIT_LEADER_QIXING_YUHENG_DESCRIPTION',
	/* LA Icon */ 'ICON_LEADER_KEQING',
	/* Prtrait */ 'LEADER_KEQING_NEUTRAL',
	/* Backgnd */ 'LEADER_KEQING_BACKGROUND'
),(
	/* Domain  */ 'Players:Expansion2_Players',
	/* CivType */ 'CIVILIZATION_GENSHIN_LIYUE',
	/* CivName */ 'LOC_CIVILIZATION_GENSHIN_LIYUE_NAME',
	/* CivIcon */ 'ICON_CIVILIZATION_GENSHIN_LIYUE',
	/* UA Name */ 'LOC_TRAIT_CIVILIZATION_JADE_MOON_UPON_CLOUDS_NAME',
	/* UA Dscp */ 'LOC_TRAIT_CIVILIZATION_JADE_MOON_UPON_CLOUDS_DESCRIPTION',
	/* UA Icon */ 'ICON_CIVILIZATION_GENSHIN_LIYUE',
	/* LdrType */ 'LEADER_KEQING',
	/* LdrName */ 'LOC_LEADER_KEQING_NAME',
	/* LdrIcon */ 'ICON_LEADER_KEQING',
	/* LA Name */ 'LOC_TRAIT_LEADER_QIXING_YUHENG_NAME',
	/* LA Dscp */ 'LOC_TRAIT_LEADER_QIXING_YUHENG_DESCRIPTION',
	/* LA Icon */ 'ICON_LEADER_KEQING',
	/* Prtrait */ 'LEADER_KEQING_NEUTRAL',
	/* Backgnd */ 'LEADER_KEQING_BACKGROUND'
);

INSERT INTO PlayerItems (Domain, CivilizationType, LeaderType, Type, Icon, Name, Description, SortIndex)
VALUES (
	/* Domain  */ 'Players:Expansion1_Players',
	/* CivType */ 'CIVILIZATION_GENSHIN_LIYUE',
	/* LdrType */ 'LEADER_KEQING',
	/* ItmType */ 'UNIT_MILLELITH',
	/* ItmIcon */ 'ICON_UNIT_MILLELITH',
	/* ItmName */ 'LOC_UNIT_MILLELITH_NAME',
	/* Dscrptn */ 'LOC_UNIT_MILLELITH_DESCRIPTION',
	/* SortIdx */ 10
),(
	/* Domain  */ 'Players:Expansion1_Players',
	/* CivType */ 'CIVILIZATION_GENSHIN_LIYUE',
	/* LdrType */ 'LEADER_KEQING',
	/* ItmType */ 'DISTRICT_LIYUE_HARBOR',
	/* ItmIcon */ 'ICON_DISTRICT_LIYUE_HARBOR',
	/* ItmName */ 'LOC_DISTRICT_LIYUE_HARBOR_NAME',
	/* Dscrptn */ 'LOC_DISTRICT_LIYUE_HARBOR_DESCRIPTION',
	/* SortIdx */ 20
),(
	/* Domain  */ 'Players:Expansion1_Players',
	/* CivType */ 'CIVILIZATION_GENSHIN_LIYUE',
	/* LdrType */ 'LEADER_KEQING',
	/* ItmType */ 'BUILDING_STATUE_OF_THE_SEVEN',
	/* ItmIcon */ 'ICON_BUILDING_STATUE_OF_THE_SEVEN',
	/* ItmName */ 'LOC_BUILDING_STATUE_OF_THE_SEVEN_NAME',
	/* Dscrptn */ 'LOC_BUILDING_STATUE_OF_THE_SEVEN_DESCRIPTION',
	/* SortIdx */ 30
),(
	/* Domain  */ 'Players:Expansion1_Players',
	/* CivType */ 'CIVILIZATION_GENSHIN_LIYUE',
	/* LdrType */ 'LEADER_KEQING',
	/* ItmType */ 'IMPROVEMENT_ADVENTURERS_GUILD',
	/* ItmIcon */ 'ICON_IMPROVEMENT_ADVENTURERS_GUILD',
	/* ItmName */ 'LOC_IMPROVEMENT_ADVENTURERS_GUILD_NAME',
	/* Dscrptn */ 'LOC_IMPROVEMENT_ADVENTURERS_GUILD_DESCRIPTION',
	/* SortIdx */ 40
),(
	/* Domain  */ 'Players:Expansion2_Players',
	/* CivType */ 'CIVILIZATION_GENSHIN_LIYUE',
	/* LdrType */ 'LEADER_KEQING',
	/* ItmType */ 'UNIT_MILLELITH',
	/* ItmIcon */ 'ICON_UNIT_MILLELITH',
	/* ItmName */ 'LOC_UNIT_MILLELITH_NAME',
	/* Dscrptn */ 'LOC_UNIT_MILLELITH_DESCRIPTION',
	/* SortIdx */ 10
),(
	/* Domain  */ 'Players:Expansion2_Players',
	/* CivType */ 'CIVILIZATION_GENSHIN_LIYUE',
	/* LdrType */ 'LEADER_KEQING',
	/* ItmType */ 'DISTRICT_LIYUE_HARBOR',
	/* ItmIcon */ 'ICON_DISTRICT_LIYUE_HARBOR',
	/* ItmName */ 'LOC_DISTRICT_LIYUE_HARBOR_NAME',
	/* Dscrptn */ 'LOC_DISTRICT_LIYUE_HARBOR_DESCRIPTION',
	/* SortIdx */ 20
),(
	/* Domain  */ 'Players:Expansion2_Players',
	/* CivType */ 'CIVILIZATION_GENSHIN_LIYUE',
	/* LdrType */ 'LEADER_KEQING',
	/* ItmType */ 'BUILDING_STATUE_OF_THE_SEVEN',
	/* ItmIcon */ 'ICON_BUILDING_STATUE_OF_THE_SEVEN',
	/* ItmName */ 'LOC_BUILDING_STATUE_OF_THE_SEVEN_NAME',
	/* Dscrptn */ 'LOC_BUILDING_STATUE_OF_THE_SEVEN_DESCRIPTION',
	/* SortIdx */ 30
),(
	/* Domain  */ 'Players:Expansion2_Players',
	/* CivType */ 'CIVILIZATION_GENSHIN_LIYUE',
	/* LdrType */ 'LEADER_KEQING',
	/* ItmType */ 'IMPROVEMENT_ADVENTURERS_GUILD',
	/* ItmIcon */ 'ICON_IMPROVEMENT_ADVENTURERS_GUILD',
	/* ItmName */ 'LOC_IMPROVEMENT_ADVENTURERS_GUILD_NAME',
	/* Dscrptn */ 'LOC_IMPROVEMENT_ADVENTURERS_GUILD_DESCRIPTION',
	/* SortIdx */ 40
);