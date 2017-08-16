class Roles {
    class TL {
        unitClassname = "rhs_vmf_flora_junior_sergeant";
        uniform = "TL_Gorka";
        vest = "TL_6b23";
        primaryWeapon = "AK74M_GP25_OPTICS";
        items = "TL";
    };
    class REL : TL {
        unitClassname = "rhs_vmf_flora_efreitor";
    };
    class SL : TL {
        unitClassname = "rhs_vmf_flora_sergeant";
        backpack = "SL_Respawn";
    };
    class R {
        unitClassname = "rhs_vmf_flora_LAT";
        uniform = "R_Gorka";
        vest = "R_6b23";
        primaryWeapon = "AK74M_CQB";
        items = "R";
    };
    class R_AT : R {
        launcher = "RPG26";
    };
    class CLS : R {
        unitClassname = "rhs_vmf_flora_medic";
        backpack = "Medic";
    };
    class DM : R {
        unitClassname = "rhs_vmf_flora_marksman";
        uniform = "DM_Gorka";
        vest = "DM_6b23";
        primaryWeapon = "SVD";
        secondaryWeapon = "PP2000";
    };
    class MG : R {
        unitClassname = "rhs_vmf_flora_machinegunner";
        primaryWeapon = "PKP_OPTICS";
        vest = "MG_6b23";
        backpack = "MG";
    };
    class AT : R {
        unitClassname = "rhs_vmf_flora_grenadier_rpg";
        primaryWeapon = "AK74M_RAIL_CQB";
        launcher = "RPG7";
        backpack = "RPG";
    };
    class AAT : R {
        unitClassname = "rhs_vmf_flora_strelok_rpg_assist";
        backpack = "RPG";
    };
};