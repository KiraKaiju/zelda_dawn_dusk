//Zelda 64 Dawn & Dusk - Expansion Disk
//By LuigiBlood

//Uses ARM9 bass

//Virtual File Table (DMA Data equivalent)

EZLJ_FILE_TABLE0:
n64dd_FileEntry(0x007BD000, DDHOOK_ICON_ITEM_STATIC, 0x888A0)

n64dd_FileEntry(0x00846000, DDHOOK_ICON_ITEM_24_STATIC, 0xB400)
n64dd_FileEntry(0x00852000, DDHOOK_ICON_ITEM_FIELD_STATIC, EZLJ_ICON_ITEM_FIELD_STATIC.size)
n64dd_FileEntry(0x00872000, DDHOOK_ICON_ITEM_NES_STATIC, EZLJ_ICON_ITEM_NES_STATIC.size)

n64dd_FileEntry(0x0089EC00 + 0x1800, DDHOOK_ITEM_NAME_STATIC_SLINGSHOT, EZLJ_ITEM_NAME_STATIC_SLINGSHOT.size)
n64dd_FileEntry(0x0089EC00 + 0x4400, DDHOOK_ITEM_NAME_STATIC_HAMMER, EZLJ_ITEM_NAME_STATIC_HAMMER.size)
n64dd_FileEntry(0x0089EC00 + 0xEC00, DDHOOK_ITEM_NAME_STATIC_SWORD1, EZLJ_ITEM_NAME_STATIC_SWORD1.size)
n64dd_FileEntry(0x0089EC00 + 0xF800, DDHOOK_ITEM_NAME_STATIC_SHIELD1, EZLJ_ITEM_NAME_STATIC_SHIELD1.size)
n64dd_FileEntry(0x0089EC00 + 0xFC00, DDHOOK_ITEM_NAME_STATIC_SHIELD2, EZLJ_ITEM_NAME_STATIC_SHIELD2.size)
n64dd_FileEntry(0x0089EC00 + 0x10400, DDHOOK_ITEM_NAME_STATIC_TUNIC1, EZLJ_ITEM_NAME_STATIC_TUNIC1.size)
n64dd_FileEntry(0x0089EC00 + 0x10800, DDHOOK_ITEM_NAME_STATIC_TUNIC2, EZLJ_ITEM_NAME_STATIC_TUNIC2.size)
n64dd_FileEntry(0x0089EC00 + 0x11000, DDHOOK_ITEM_NAME_STATIC_BOOTS1, EZLJ_ITEM_NAME_STATIC_BOOTS1.size)
n64dd_FileEntry(0x0089EC00 + 0x14000, DDHOOK_ITEM_NAME_STATIC_BRACELET, EZLJ_ITEM_NAME_STATIC_BRACELET.size)

n64dd_FileEntry(0x008BE000 + 0x5800, DDHOOK_MAP_NAME_STATIC_LAND, EZLJ_MAP_NAME_STATIC_LAND.size)
n64dd_FileEntry(0x008BE000 + 0x16400, DDHOOK_MAP_NAME_STATIC_DAWN, EZLJ_MAP_NAME_STATIC_DAWN.size)
n64dd_FileEntry(0x008BE000 + 0x19600, DDHOOK_MAP_NAME_STATIC_DUSK, EZLJ_MAP_NAME_STATIC_DUSK.size)

n64dd_FileEntry(0x00967000, DDHOOK_MAP_GRAND_STATIC, EZLJ_MAP_GRAND_STATIC.size)

//Main Overlays
n64dd_FileEntry(0x00BB11E0, DDHOOK_OVL_KALEIDO_SCOPE, 0x1C990)
n64dd_FileEntry(0x00BCDB70, DDHOOK_OVL_PLAYER_ACTOR, 0x26560)

//Actor Overlays
n64dd_FileEntry(0x00DB1F40, DDHOOK_OVL_ITEM_SHIELD, 0xA10)

//Particle Overlays
n64dd_FileEntry(0x00EAD0F0, DDHOOK_OVL_EFFECT_SS_STICK, 0x3A0)

//Objects
n64dd_FileEntry(0x00F6D000, DDHOOK_GAMEPLAY_DANGEON_KEEP, 0x17AF0)
n64dd_FileEntry(0x00FBE000, DDHOOK_OBJECT_LINK_CHILD, 0x2CF80)

//Get Item Objects
n64dd_FileEntry(0x01547000, DDHOOK_OBJECT_GI_SHIELD1, EZLJ_OBJECT_GI_SHIELD1.size)
n64dd_FileEntry(0x015B9000, DDHOOK_OBJECT_GI_SHIELD2, EZLJ_OBJECT_GI_SHIELD2.size)
n64dd_FileEntry(0x01638000, DDHOOK_OBJECT_GI_CLOTHES, EZLJ_OBJECT_GI_CLOTHES.size)
n64dd_FileEntry(0x01791000, DDHOOK_OBJECT_GI_BRACELET, EZLJ_OBJECT_GI_BRACELET.size)

EZLJ_FILE_TABLE0_END:
scope EZLJ_FILE_TABLE0 {
    variable size(EZLJ_FILE_TABLE0_END - EZLJ_FILE_TABLE0)
}

EZLJ_FILE_TABLE1:
n64dd_FileEntry(0x00967000, DDHOOK_MAP_GRAND_STATIC, EZLJ_MAP_GRAND_STATIC.size)
EZLJ_FILE_TABLE1_END:
scope EZLJ_FILE_TABLE1 {
    variable size(EZLJ_FILE_TABLE1_END - EZLJ_FILE_TABLE1)
}

EZLJ_FILE_TABLE2:
n64dd_FileEntry(0x00967000, DDHOOK_MAP_GRAND_STATIC, EZLJ_MAP_GRAND_STATIC.size)
EZLJ_FILE_TABLE2_END:
scope EZLJ_FILE_TABLE2 {
    variable size(EZLJ_FILE_TABLE2_END - EZLJ_FILE_TABLE2)
}

constant EZLJ_FILE_COUNT(EZLJ_FILE_TABLE0.size / 0x10)