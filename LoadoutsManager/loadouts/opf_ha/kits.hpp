class Kits {
    class PrimaryWeapons {
        class AK74M_CQB {
            weapon = "rhs_weap_ak74m";
            attachments[] = {"rhs_acc_dtk", "rhs_acc_ekp1"};
        };
        class AK74M_RAIL_CQB {
            weapon = "rhs_weap_ak74m_npz";
            attachments[] = {"rhs_acc_dtk", "rhs_acc_rakursPM"};
        };
        class AK74M_OPTICS {
            weapon = "rhs_weap_ak74m";
            attachments[] = {"rhs_acc_dtk", "rhs_acc_1p29"};
        };
        class AK74M_GP25_OPTICS {
            weapon = "rhs_weap_ak74m_gp25";
            attachments[] = {"rhs_acc_dtk", "rhs_acc_1p29"};
        };
        class PKP_OPTICS {
            weapon = "rhs_weap_pkp";
            attachments[] = {"rhs_acc_1p29"};
        };
        class SVD {
            weapon = "rhs_weap_svds";
            attachments[] = {"rhs_acc_pso1m2"};
        };
    };
    class SecondaryWeapons {
        class PP2000 {
            weapon = "rhs_weap_pp2000_folded";
            attachments[] = {"rhs_acc_rakursPM"};
        };
    };
    class Launchers {
        class RPG26 {
            weapon = "rhs_weap_rpg26";
        };
        class RPG7 {
            weapon = "rhs_weap_rpg7";
            attachments[] = {"rhs_acc_pgo7v3"};
        };
    };
    class Uniforms {
        class R_Gorka {
            container = "rhs_uniform_gorka_r_y";
            contents[] = {
                "ACE_fieldDressing", 4,
                "ACE_morphine", 2,
                "ACE_EarPlugs"
            };
        };
        class TL_Gorka {
            container = "rhs_uniform_gorka_r_y";
            contents[] = {
                "ACE_fieldDressing", 4,
                "ACE_morphine", 2,
                "ACE_EarPlugs",
                "rhs_30Rnd_545x39_7N22_AK", 3
            };
        };
        class DM_Gorka {
            container = "rhs_uniform_gorka_r_y";
            contents[] = {
                "ACE_fieldDressing", 4,
                "ACE_morphine", 2,
                "ACE_EarPlugs",
                "rhs_10Rnd_762x54mmR_7N1", 3,
                "rhs_mag_9x19mm_7n21_20"
            };
        };
    };
    class Vests {
        class TL_6b23 {
            container = "rhs_6b23_digi_6sh92_spetsnaz2";
            contents[] = {
              "rhs_30Rnd_545x39_7N22_AK", 6,
              "rhs_30Rnd_545x39_AK_green",
              "rhs_mag_rdg2_white", 2,
              "rhs_mag_rgd5", 2,
              "rhs_VOG25", 9,
              "rhs_VG40OP_white", 3
            };
        };
        class R_6b23 {
            container = "rhs_6b23_digi_6sh92_Vog_Radio_Spetsnaz";
            contents[] = {
              "rhs_30Rnd_545x39_7N22_AK", 3,
              "rhs_30Rnd_545x39_AK_green",
              "rhs_mag_rdg2_white", 2,
              "rhs_mag_rgd5", 2
            };
        };
        class MG_6b23 {
            container = "rhs_6b23_digi_6sh92_spetsnaz2";
            contents[] = {
              "rhs_100Rnd_762x54mmR_7N13",
              "rhs_mag_rdg2_white", 2,
              "rhs_mag_rgd5", 2
            };
        };
        class DM_6b23 {
            container = "rhs_6b23_digi_6sh92_spetsnaz2";
            contents[] = {
              "rhs_10Rnd_762x54mmR_7N1", 5,
              "rhs_mag_9x19mm_7n21_20", 2,
              "rhs_mag_rdg2_white", 2,
              "rhs_mag_rgd5", 2
            };
        };
    };
    class Backpacks {
        class Medic {
            container = "rhs_medic_bag";
            contents[] = {
                "ACE_fieldDressing", 30,
                "ACE_epinephrine", 10,
                "ACE_morphine", 20,
                "ACE_bloodIV_500", 7
            };
        };
        class RPG {
            container = "rhs_rpg_empty";
            contents[] = {
                "rhs_rpg7_OG7V_mag", 3,
                "rhs_rpg7_PG7VL_mag", 2
            };
        };
        class MG {
            container = "rhs_sidor";
            contents[] = {
                "rhs_100Rnd_762x54mmR_7N13", 2
            };
        };
        class SL_Respawn {
            container = "B_Patrol_Respawn_bag_F";
        };
    };
    class Items {
        class R {
            headgear = "rhs_6b47";
            items[] = {
                "ItemMap", "ItemCompass", "ItemRadio", "tf_microdagr", "rhs_1PN138"
            };
        };
        class TL {
            headgear = "rhs_6b47";
            items[] = {
                "ItemMap", "ItemCompass", "ItemRadio", "tf_microdagr", "rhs_1PN138", "ItemGPS"
            };
        };
    };
};