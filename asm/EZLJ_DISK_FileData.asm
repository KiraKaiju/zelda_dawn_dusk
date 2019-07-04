//Zelda 64 Dawn & Dusk - Expansion Disk
//By LuigiBlood

//Uses ARM9 bass

//Virtual File Table (DMA Data equivalent)

EZLJ_FILE_TABLE0:
n64dd_FileEntry(VFILE_ICON_ITEM_STATIC, 0x007BD000, DDHOOK_ICON_ITEM_STATIC, 0x888A0)
n64dd_FileEntry(VFILE_ICON_ITEM_24_STATIC, 0x00846000, DDHOOK_ICON_ITEM_24_STATIC, 0xB400)
n64dd_FileEntry(VFILE_ICON_ITEM_FIELD_STATIC, 0x00852000, DDHOOK_ICON_ITEM_FIELD_STATIC, EZLJ_ICON_ITEM_FIELD_STATIC.size)
n64dd_FileEntry(VFILE_ICON_ITEM_NES_STATIC, 0x00872000, DDHOOK_ICON_ITEM_NES_STATIC, EZLJ_ICON_ITEM_NES_STATIC.size)
n64dd_FileEntry(VFILE_ITEM_NAME_STATIC, 0x00880000, DDHOOK_ITEM_NAME_STATIC, 0x1EC00)
n64dd_FileEntry(VFILE_MAP_NAME_STATIC, 0x008BE000, DDHOOK_MAP_NAME_STATIC, 0x21800)

n64dd_FileEntry(VFILE_MAP_GRAND_STATIC, 0x00967000, EZLJ_MAP_GRAND_STATIC, EZLJ_MAP_GRAND_STATIC.size)

//Main Overlays
n64dd_FileEntry(VFILE_OVL_KALEIDO_SCOPE, 0x00BB11E0, DDHOOK_OVL_KALEIDO_SCOPE, 0x1C990)
n64dd_FileEntry(VFILE_OVL_PLAYER_ACTOR, 0x00BCDB70, DDHOOK_OVL_PLAYER_ACTOR, 0x26560)

//Actor Overlays
n64dd_FileEntry(VFILE_OVL_ITEM_SHIELD, 0x00DB1F40, DDHOOK_OVL_ITEM_SHIELD, 0xA10)

//Particle Overlays
n64dd_FileEntry(VFILE_OVL_EFFECT_SS_STICK, 0x00EAD0F0, DDHOOK_OVL_EFFECT_SS_STICK, 0x3A0)

//Objects
n64dd_FileEntry(VFILE_GAMEPLAY_DANGEON_KEEP, 0x00F6D000, DDHOOK_GAMEPLAY_DANGEON_KEEP, 0x17AF0)
n64dd_FileEntry(VFILE_OBJECT_LINK_CHILD, 0x00FBE000, DDHOOK_OBJECT_LINK_CHILD, 0x2CF80)

EZLJ_FILE_TABLE0_END:
scope EZLJ_FILE_TABLE0 {
    variable size(EZLJ_FILE_TABLE0_END - EZLJ_FILE_TABLE0)
}

EZLJ_FILE_TABLE1:
n64dd_FileEntry(VFILE_MAP_GRAND_STATIC, 0x00967000, EZLJ_MAP_GRAND_STATIC, EZLJ_MAP_GRAND_STATIC.size)
EZLJ_FILE_TABLE1_END:
scope EZLJ_FILE_TABLE1 {
    variable size(EZLJ_FILE_TABLE1_END - EZLJ_FILE_TABLE1)
}

EZLJ_FILE_TABLE2:
n64dd_FileEntry(VFILE_MAP_GRAND_STATIC, 0x00967000, EZLJ_MAP_GRAND_STATIC, EZLJ_MAP_GRAND_STATIC.size)
EZLJ_FILE_TABLE2_END:
scope EZLJ_FILE_TABLE2 {
    variable size(EZLJ_FILE_TABLE2_END - EZLJ_FILE_TABLE2)
}

constant EZLJ_FILE_COUNT(EZLJ_FILE_TABLE0.size / 0x10)