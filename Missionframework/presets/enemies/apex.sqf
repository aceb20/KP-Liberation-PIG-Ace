/*
    File: apex.sqf
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes, Aceb20
    Date: 2017-10-07
    Last Update: 2026-04-16
    License: MIT License - http://www.opensource.org/licenses/MIT

    Description:
        CSAT pacific enemy preset.

    Modlist: Vanilla Plus 4 16 26
*/

// Enemy infantry classes
KPLIB_o_officer = "O_T_Officer_F";                                      // Officer
KPLIB_o_squadLeader = "O_T_Soldier_SL_F";                               // Squad Leader
KPLIB_o_teamLeader = "O_T_Soldier_TL_F";                                // Team Leader
KPLIB_o_sentry = "O_T_Soldier_F";                                       // Rifleman
KPLIB_o_rifleman = "O_T_Soldier_F";                                     // Rifleman
KPLIB_o_riflemanLAT = "O_T_Soldier_LAT_F";                              // Rifleman (LAT)
KPLIB_o_grenadier = "O_T_Soldier_GL_F";                                 // Grenadier
KPLIB_o_machinegunner = "O_T_Soldier_AR_F";                             // Autorifleman
KPLIB_o_heavyGunner = "O_T_HeavyGunner_F";                              // Autorifleman
KPLIB_o_marksman = "O_T_Soldier_M_F";                                   // Marksman
KPLIB_o_sharpshooter = "O_T_Sharpshooter_F";                            // Marksman
KPLIB_o_sniper = "O_T_Sniper_F";                                        // Sniper
KPLIB_o_atSpecialist = "O_T_Soldier_AT_F";                              // AT Specialist
KPLIB_o_aaSpecialist = "O_T_Soldier_AA_F";                              // AA Specialist
KPLIB_o_medic = "O_T_Medic_F";                                          // Combat Life Saver
KPLIB_o_engineer = "O_T_Engineer_F";                                    // Engineer
KPLIB_o_paratrooper = "O_T_Soldier_PG_F";                               // Paratrooper


// Enemy vehicles used by secondary objectives.
KPLIB_o_mrap = "O_T_LSV_02_unarmed_F";                                  // Qilin
KPLIB_o_mrapArmed = "O_T_LSV_02_armed_F";                               // Qilin (HMG)
KPLIB_o_transportHeli = "O_Heli_Transport_04_bench_F";                  // Mi-290 Taru (Bench)
KPLIB_o_transportTruck = "O_T_Truck_03_covered_ghex_F";                 // Tempest Transport (Covered)
KPLIB_o_transportTruckAmmo = "O_T_Truck_03_transport_ghex_F";           // Tempest Transport (Open) -> Has to be able to transport resource crates!
KPLIB_o_fuelTruck = "O_T_Truck_03_fuel_ghex_F";                         // Tempest Fuel
KPLIB_o_ammoTruck = "O_T_Truck_03_ammo_ghex_F";                         // Tempest Ammo
KPLIB_o_fuelContainer = "Land_Pod_Heli_Transport_04_fuel_F";            // Taru Fuel Pod
KPLIB_o_ammoContainer = "Land_Pod_Heli_Transport_04_ammo_F";            // Taru Ammo Pod
KPLIB_o_flag = "Flag_CSAT_F";                                           // Flag

// Enemy mines types (CfgVehicles classes as explained here https://community.bistudio.com/wiki/createMine)
KPLIB_o_APMine = "APERSMine";
KPLIB_o_ATMine = "ATMine";

/* Adding a value to these arrays below will add them to a one out of however many in the array, random pick chance.
Therefore, adding the same value twice or three times means they are more likely to be chosen more often. */

/* Militia infantry. Lightweight soldier classnames the game will pick from randomly as sector defenders.
Think of them like garrison or military police forces, which are more meant to control the local population instead of fighting enemy armies. */
KPLIB_o_militiaInfantry = [
    "O_soldierU_F",                                                     // Rifleman (Lite)
    "O_soldierU_F",                                                     // Rifleman (Lite)
    "O_soldierU_F",                                                     // Rifleman
    "O_soldierU_F",                                                     // Rifleman
    "O_soldierU_LAT_F",                                                 // Rifleman (AT)
    "O_soldierU_AR_F",                                                  // Autorifleman
    "O_soldierU_M_F",                                                   // Marksman
    "O_soldierU_medic_F",                                               // Medic
    "O_engineer_U_F"                                                    // Engineer
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders. Can also be empty for only infantry milita.
KPLIB_o_militiaVehicles = [
    "O_T_LSV_02_armed_F",                                               // Qilin (armed)
    "O_T_LSV_02_armed_F",                                               // Qilin (armed)
    "O_T_LSV_02_armed_F",                                               // Qilin (armed)
    "dcx_csat_zamak_zu23_ghex",                                         // KamAZ (Zu-23-2)
    "dcx_o_t_pickup_mrl",                                               // RAM 1500 (MRL)
    "O_T_LSV_02_armed_F",                                               // Niutou HMG
    "O_T_LSV_02_armed_F"                                                // Niutou HMG
];

// All enemy vehicles that can spawn as sector defenders and patrols at high enemy combat readiness (aggression levels)
KPLIB_o_armyVehicles = [

    /*Light Vehicles - 15*/
    "O_T_MRAP_02_hmg_ghex_F",                                           // Ifrit (HMG)
    "O_T_MRAP_02_hmg_ghex_F",                                           // Ifrit (HMG)
    "O_T_MRAP_02_hmg_ghex_F",                                           // Ifrit (HMG)
    "O_T_MRAP_02_hmg_ghex_F",                                           // Ifrit (HMG)
    "O_T_MRAP_02_hmg_ghex_F",                                           // Ifrit (HMG)
    "O_T_LSV_02_AT_F",                                                  // Qilin (AT)
    "O_T_LSV_02_AT_F",                                                  // Qilin (AT)
    "O_T_LSV_02_AT_F",                                                  // Qilin (AT)
    "O_T_LSV_02_AT_F",                                                  // Qilin (AT)
    "O_T_LSV_02_AT_F",                                                  // Qilin (AT)
    "O_T_Pickup_rcws_rf",                                               // Ram 1500 (RCWS)
    "O_T_Pickup_rcws_rf",                                               // Ram 1500 (RCWS)
    "O_T_Pickup_rcws_rf",                                               // Ram 1500 (RCWS)
    "O_T_Pickup_rcws_rf",                                               // Ram 1500 (RCWS)
    "O_T_Pickup_rcws_rf",                                               // Ram 1500 (RCWS)

    /*APCs - 10*/
    "EF_O_Gyra_HMG_OPF_T",                                              // Gyra HMG
    "EF_O_Gyra_HMG_OPF_T",                                              // Gyra HMG
    "EF_O_Gyra_HMG_OPF_T",                                              // Gyra HMG
    "EF_O_Gyra_HMG_OPF_T",                                              // Gyra HMG
    "O_T_APC_Wheeled_02_hmg_lxWS",                                      // Otokar ARMA (HMG)
    "O_T_APC_Wheeled_02_hmg_lxWS",                                      // Otokar ARMA (HMG)
    "O_T_APC_Wheeled_02_hmg_lxWS",                                      // Otokar ARMA (HMG)
    "O_A_APC_Wheeled_02_rcws_v2_F",                                     // MSE-3 Marid
    "O_A_APC_Wheeled_02_rcws_v2_F",                                     // MSE-3 Marid
    "O_A_APC_Wheeled_02_rcws_v2_F",                                     // MSE-3 Marid
    
    /*Artillery - 8*/
    "ddx_csat_zamak_mrl_ghex",                                          // Kamaz MRL
    "ddx_csat_zamak_mrl_ghex",                                          // Kamaz MRL
    "ddx_csat_zamak_mrl_ghex",                                          // Kamaz MRL
    "ddx_csat_zamak_mrl_ghex",                                          // Kamaz MRL
    "EF_O_Gyra_Mortar_OPF_T",                                           // Gyra Mortar
    "EF_O_Gyra_Mortar_OPF_T",                                           // Gyra Mortar
    "EF_O_Gyra_Mortar_OPF_T",                                           // Gyra Mortar
    "AX_O_T_SPG_pll09_ghex_F",                                          // PLL-9

    /*IFVs - 10*/
    "lk_o_t_vodnik_autocannon",                                         // Vodnik
    "lk_o_t_vodnik_autocannon",                                         // Vodnik
    "EF_O_Gyra_Armed_OPF_T",                                            // Gyra IFV
    "EF_O_Gyra_Armed_OPF_T",                                            // Gyra IFV
    "OPF_T_F_QAV_BMP1",                                                 // ZBD-86
    "OPF_T_F_QAV_BMP1",                                                 // ZBD-86
    "AX_O_T_APC_zbl09_ghex_F",                                          // ZBL-8
    "O_T_APC_Tracked_02_cannon_ghex_F",                                 // BTR-K Kamysh
    "O_T_APC_Tracked_02_30mm_lxWS",                                     // BM2-T Stalker
    "AX_O_T_APC_zbd04A_ghex_F",                                         // ZBD-4A Sanmiao   


    /*Tanks - 12*/
    "qav_o_t_ztl11",                                                    // ZTL-11
    "qav_o_t_ztl11",                                                    // ZTL-11
    "AX_O_T_MBT_ztq15_ghex_F",                                          // ZTQ-15
    "AX_O_T_MBT_ztq15_ghex_F",                                          // ZTQ-15
    "AX_O_T_MBT_ztz96b_ghex_F",                                         // ZTZ-96B
    "AX_O_T_MBT_ztz96b_ghex_F",                                         // ZTZ-96B
    "AX_O_T_MBT_ztz99a_ghex_F",                                         // ZTZ-99A
    "AX_O_T_MBT_ztz99a_ghex_F",                                         // ZTZ-99A
    "O_T_MBT_02_cannon_ghex_F",                                         // T-100 Varsuk
    "O_T_MBT_04_cannon_F",                                              // T-140 Angara
    "O_T_MBT_04_command_F",                                             // T-140K Angara
    "O_T_MBT_02_railgun_ghex_F",                                        // T-100X

    /*Anti-Air - 6*/
    "EF_O_Gyra_Antiair_OPF_T",                                          // Gyra AA
    "EF_O_Gyra_Antiair_OPF_T",                                          // Gyra AA
    "AX_O_T_SPAA_pzg09AA_ghex_F",                                       // PZG-9
    "AX_O_T_SPAA_pzg09AA_ghex_F",                                       // PZG-9
    "O_T_APC_Tracked_02_AA_ghex_F",                                     // ZSU-39 Tigris
    "qav_o_t_625e"                                                      // PGL-625E

];

// All enemy vehicles that can spawn as sector defenders and patrols but at a lower enemy combat readiness (aggression levels).
KPLIB_o_armyVehiclesLight = [

    /*Light Vehicles - 22*/
    "O_T_MRAP_02_hmg_ghex_F",                                           // Ifrit (HMG)
    "O_T_MRAP_02_hmg_ghex_F",                                           // Ifrit (HMG)
    "O_T_MRAP_02_hmg_ghex_F",                                           // Ifrit (HMG)
    "O_T_MRAP_02_hmg_ghex_F",                                           // Ifrit (HMG)
    "O_T_MRAP_02_hmg_ghex_F",                                           // Ifrit (HMG)
    "O_T_MRAP_02_hmg_ghex_F",                                           // Ifrit (HMG)
    "O_T_LSV_02_AT_F",                                                  // Qilin (AT)
    "O_T_LSV_02_AT_F",                                                  // Qilin (AT)
    "O_T_LSV_02_AT_F",                                                  // Qilin (AT)
    "O_T_LSV_02_AT_F",                                                  // Qilin (AT)
    "O_T_LSV_02_AT_F",                                                  // Qilin (AT)
    "O_T_LSV_02_armed_F",                                               // Niutou HMG
    "O_T_LSV_02_armed_F",                                               // Niutou HMG
    "O_T_LSV_02_armed_F",                                               // Niutou HMG
    "O_T_LSV_02_armed_F",                                               // Niutou HMG
    "O_T_LSV_02_armed_F",                                               // Niutou HMG
    "O_T_LSV_02_armed_F",                                               // Niutou HMG
    "O_T_Pickup_rcws_rf",                                               // Ram 1500 (RCWS)
    "O_T_Pickup_rcws_rf",                                               // Ram 1500 (RCWS)
    "O_T_Pickup_rcws_rf",                                               // Ram 1500 (RCWS)
    "O_T_Pickup_rcws_rf",                                               // Ram 1500 (RCWS)
    "O_T_Pickup_rcws_rf",                                               // Ram 1500 (RCWS)

    /*APCs - 6*/
    "EF_O_Gyra_HMG_OPF_T",                                              // Gyra HMG
    "EF_O_Gyra_HMG_OPF_T",                                              // Gyra HMG
    "EF_O_Gyra_HMG_OPF_T",                                              // Gyra HMG
    "O_T_APC_Wheeled_02_hmg_lxWS",                                      // Otokar ARMA (HMG)
    "O_T_APC_Wheeled_02_hmg_lxWS",                                      // Otokar ARMA (HMG)
    "O_T_APC_Wheeled_02_rcws_ghex_F",                                   // MSE-3 Marid

    /*Artillery - 6*/
    "dcx_o_t_pickup_mrl",                                               // Ram 1500 (MRL)
    "dcx_o_t_pickup_mrl",                                               // Ram 1500 (MRL)
    "dcx_o_t_pickup_mrl",                                               // Ram 1500 (MRL)
    "ddx_csat_zamak_mrl_ghex",                                          // Kamaz MRL 
    "ddx_csat_zamak_mrl_ghex",                                          // Kamaz MRL 
    "EF_O_Gyra_Mortar_OPF_T",                                           // Gyra Mortar 

    /*IFVs - 8*/
    "EF_O_Gyra_Armed_OPF_T",                                            // Gyra IFV
    "EF_O_Gyra_Armed_OPF_T",                                            // Gyra IFV
    "EF_O_Gyra_Armed_OPF_T",                                            // Gyra IFV
    "EF_O_Gyra_Armed_OPF_T",                                            // Gyra IFV
    "O_T_APC_Tracked_02_cannon_ghex_F",                                 // BTR-K Kamysh
    "O_T_APC_Tracked_02_cannon_ghex_F",                                 // BTR-K Kamysh
    "OPF_T_F_QAV_BMP1",                                                 // ZBD-86
    "AX_O_T_APC_zbd04A_ghex_F",                                         // ZBD-4A Sanmiao 

    /*Tanks - 4*/
    "qav_o_t_ztl11",                                                    // ZTL-11
    "qav_o_t_ztl11",                                                    // ZTL-11
    "AX_O_T_MBT_ztq15_ghex_F",                                          // ZTQ-15
    "AX_O_T_MBT_ztz96b_ghex_F",                                         // ZTZ-96B

    /*Anti-Air - 3*/
    "dcx_csat_zamak_zu23_ghex",                                         // KamAZ (Zu-23-2) 
    "dcx_csat_zamak_zu23_ghex",                                         // KamAZ (Zu-23-2)
    "dcx_csat_zamak_zu23_ghex"                                          // KamAZ (Zu-23-2)  

];



// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at high enemy combat readiness (aggression levels).
KPLIB_o_battleGrpVehicles = [

    /*Transports*/
    "lk_o_t_vodnik_transport",                                          // Vodnik Transport
    "O_T_APC_Wheeled_02_unarmed_lxWS",                                  // Otokar ARMA Tranport
    "O_T_Truck_03_transport_ghex_F",                                    // Tempest Transport
    "O_T_Truck_03_covered_ghex_F",                                      // Tempest Transport (Covered)
    "O_Heli_Transport_04_bench_F",                                      // Mi-290 Taru (Bench)
    "AX_O_T_Heli_Transport_z8l_F",                                      // Z-8L (Transport, Heavy Lift Helicopter)
    "dcx_csat_pac_orca_up",                                             // Ka-60 (Transport Helicopter)

    /*Light Vehicles - 15*/
    "O_T_MRAP_02_hmg_ghex_F",                                           // Ifrit (HMG)
    "O_T_MRAP_02_hmg_ghex_F",                                           // Ifrit (HMG)
    "O_T_MRAP_02_hmg_ghex_F",                                           // Ifrit (HMG)
    "O_T_MRAP_02_hmg_ghex_F",                                           // Ifrit (HMG)
    "O_T_MRAP_02_hmg_ghex_F",                                           // Ifrit (HMG)
    "O_T_LSV_02_AT_F",                                                  // Qilin (AT)
    "O_T_LSV_02_AT_F",                                                  // Qilin (AT)
    "O_T_LSV_02_AT_F",                                                  // Qilin (AT)
    "O_T_LSV_02_AT_F",                                                  // Qilin (AT)
    "O_T_LSV_02_AT_F",                                                  // Qilin (AT)
    "O_T_Pickup_rcws_rf",                                               // Ram 1500 (RCWS)
    "O_T_Pickup_rcws_rf",                                               // Ram 1500 (RCWS)
    "O_T_Pickup_rcws_rf",                                               // Ram 1500 (RCWS)
    "O_T_Pickup_rcws_rf",                                               // Ram 1500 (RCWS)
    "O_T_Pickup_rcws_rf",                                               // Ram 1500 (RCWS)

    /*APCs - 10*/
    "EF_O_Gyra_HMG_OPF_T",                                              // Gyra HMG
    "EF_O_Gyra_HMG_OPF_T",                                              // Gyra HMG
    "EF_O_Gyra_HMG_OPF_T",                                              // Gyra HMG
    "EF_O_Gyra_HMG_OPF_T",                                              // Gyra HMG
    "O_T_APC_Wheeled_02_hmg_lxWS",                                      // Otokar ARMA (HMG)
    "O_T_APC_Wheeled_02_hmg_lxWS",                                      // Otokar ARMA (HMG)
    "O_T_APC_Wheeled_02_hmg_lxWS",                                      // Otokar ARMA (HMG)
    "O_A_APC_Wheeled_02_rcws_v2_F",                                     // MSE-3 Marid
    "O_A_APC_Wheeled_02_rcws_v2_F",                                     // MSE-3 Marid
    "O_A_APC_Wheeled_02_rcws_v2_F",                                     // MSE-3 Marid
    
    /*Artillery - 8*/
    "ddx_csat_zamak_mrl_ghex",                                          // Kamaz MRL
    "ddx_csat_zamak_mrl_ghex",                                          // Kamaz MRL
    "ddx_csat_zamak_mrl_ghex",                                          // Kamaz MRL
    "ddx_csat_zamak_mrl_ghex",                                          // Kamaz MRL
    "EF_O_Gyra_Mortar_OPF_T",                                           // Gyra Mortar
    "EF_O_Gyra_Mortar_OPF_T",                                           // Gyra Mortar
    "EF_O_Gyra_Mortar_OPF_T",                                           // Gyra Mortar
    "AX_O_T_SPG_pll09_ghex_F",                                          // PLL-9

    /*IFVs - 10*/
    "lk_o_t_vodnik_autocannon",                                         // Vodnik
    "lk_o_t_vodnik_autocannon",                                         // Vodnik
    "EF_O_Gyra_Armed_OPF_T",                                            // Gyra IFV
    "EF_O_Gyra_Armed_OPF_T",                                            // Gyra IFV
    "OPF_T_F_QAV_BMP1",                                                 // ZBD-86
    "OPF_T_F_QAV_BMP1",                                                 // ZBD-86
    "AX_O_T_APC_zbl09_ghex_F",                                          // ZBL-8
    "O_T_APC_Tracked_02_cannon_ghex_F",                                 // BTR-K Kamysh
    "O_T_APC_Tracked_02_30mm_lxWS",                                     // BM2-T Stalker
    "AX_O_T_APC_zbd04A_ghex_F",                                         // ZBD-4A Sanmiao   

    /*Tanks - 12*/
    "qav_o_t_ztl11",                                                    // ZTL-11
    "qav_o_t_ztl11",                                                    // ZTL-11
    "AX_O_T_MBT_ztq15_ghex_F",                                          // ZTQ-15
    "AX_O_T_MBT_ztq15_ghex_F",                                          // ZTQ-15
    "AX_O_T_MBT_ztz96b_ghex_F",                                         // ZTZ-96B
    "AX_O_T_MBT_ztz96b_ghex_F",                                         // ZTZ-96B
    "AX_O_T_MBT_ztz99a_ghex_F",                                         // ZTZ-99A
    "AX_O_T_MBT_ztz99a_ghex_F",                                         // ZTZ-99A
    "O_T_MBT_02_cannon_ghex_F",                                         // T-100 Varsuk
    "O_T_MBT_04_cannon_F",                                              // T-140 Angara
    "O_T_MBT_04_command_F",                                             // T-140K Angara
    "O_T_MBT_02_railgun_ghex_F",                                        // T-100X

    /*Anti-Air - 6*/
    "EF_O_Gyra_Antiair_OPF_T",                                          // Gyra AA
    "EF_O_Gyra_Antiair_OPF_T",                                          // Gyra AA
    "AX_O_T_SPAA_pzg09AA_ghex_F",                                       // PZG-9
    "AX_O_T_SPAA_pzg09AA_ghex_F",                                       // PZG-9
    "O_T_APC_Tracked_02_AA_ghex_F",                                     // ZSU-39 Tigris
    "qav_o_t_625e",                                                     // PGL-625E

    /*Attack Helicopters - 8*/
    "AX_O_T_Heli_Light_z11wa_F",                                        // Z-11WA
    "AX_O_T_Heli_Light_z11wa_F",                                        // Z-11WA
    "AX_O_T_Heli_Light_z11wa_F",                                        // Z-11WA
    "AX_O_T_Heli_Attack_z19_F",                                         // Z-19
    "AX_O_T_Heli_Attack_z19_F",                                         // Z-19
    "AX_O_T_Heli_Attack_z10_F",                                         // Z-10
    "AX_O_T_Heli_Attack_z10_F",                                         // Z-10
    "O_T_Heli_Attack_02_dynamicLoadout_F",                              // MI-48

    /*Attack/Transport Helicopters - 5*/
    "O_T_Heli_Light_02_dynamicLoadout_ghex_F",                          // Po-30 Orca (Armed)
    "O_T_Heli_Light_02_dynamicLoadout_ghex_F",                          // Po-30 Orca (Armed)
    "O_T_Heli_Light_02_dynamicLoadout_ghex_F",                          // Po-30 Orca (Armed)
    "dcx_csat_pac_orca_up_armed",                                       // Orca UP (Armed)
    "dcx_csat_pac_orca_up_armed",                                       // Orca UP (Armed)

    /*Planes*/
    "ddx_csat_pac_xian_inf",                                            // Y-32 Xi'an (Infantry)
    "ddx_csat_pac_xian_inf"                                             // Y-32 Xi'an (Infantry) 
    
];


// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at lower enemy combat readiness (aggression levels).
KPLIB_o_battleGrpVehiclesLight = [

    /*Transports*/
    "O_T_Truck_03_transport_ghex_F",                                    // Tempest Transport

    /*Light Vehicles - 22*/
    "O_T_MRAP_02_hmg_ghex_F",                                           // Ifrit (HMG)
    "O_T_MRAP_02_hmg_ghex_F",                                           // Ifrit (HMG)
    "O_T_MRAP_02_hmg_ghex_F",                                           // Ifrit (HMG)
    "O_T_MRAP_02_hmg_ghex_F",                                           // Ifrit (HMG)
    "O_T_MRAP_02_hmg_ghex_F",                                           // Ifrit (HMG)
    "O_T_MRAP_02_hmg_ghex_F",                                           // Ifrit (HMG)
    "O_T_LSV_02_AT_F",                                                  // Qilin (AT)
    "O_T_LSV_02_AT_F",                                                  // Qilin (AT)
    "O_T_LSV_02_AT_F",                                                  // Qilin (AT)
    "O_T_LSV_02_AT_F",                                                  // Qilin (AT)
    "O_T_LSV_02_AT_F",                                                  // Qilin (AT)
    "O_T_LSV_02_armed_F",                                               // Niutou HMG
    "O_T_LSV_02_armed_F",                                               // Niutou HMG
    "O_T_LSV_02_armed_F",                                               // Niutou HMG
    "O_T_LSV_02_armed_F",                                               // Niutou HMG
    "O_T_LSV_02_armed_F",                                               // Niutou HMG
    "O_T_LSV_02_armed_F",                                               // Niutou HMG
    "O_T_Pickup_rcws_rf",                                               // Ram 1500 (RCWS)
    "O_T_Pickup_rcws_rf",                                               // Ram 1500 (RCWS)
    "O_T_Pickup_rcws_rf",                                               // Ram 1500 (RCWS)
    "O_T_Pickup_rcws_rf",                                               // Ram 1500 (RCWS)
    "O_T_Pickup_rcws_rf",                                               // Ram 1500 (RCWS)

    /*APCs - 6*/
    "EF_O_Gyra_HMG_OPF_T",                                              // Gyra HMG
    "EF_O_Gyra_HMG_OPF_T",                                              // Gyra HMG
    "EF_O_Gyra_HMG_OPF_T",                                              // Gyra HMG
    "O_T_APC_Wheeled_02_hmg_lxWS",                                      // Otokar ARMA (HMG)
    "O_T_APC_Wheeled_02_hmg_lxWS",                                      // Otokar ARMA (HMG)
    "O_T_APC_Wheeled_02_rcws_ghex_F",                                   // MSE-3 Marid

    /*Artillery - 6*/
    "dcx_o_t_pickup_mrl",                                               // Ram 1500 (MRL)
    "dcx_o_t_pickup_mrl",                                               // Ram 1500 (MRL)
    "dcx_o_t_pickup_mrl",                                               // Ram 1500 (MRL)
    "ddx_csat_zamak_mrl_ghex",                                          // Kamaz MRL 
    "ddx_csat_zamak_mrl_ghex",                                          // Kamaz MRL 
    "EF_O_Gyra_Mortar_OPF_T",                                           // Gyra Mortar 

    /*IFVs - 8*/
    "EF_O_Gyra_Armed_OPF_T",                                            // Gyra IFV
    "EF_O_Gyra_Armed_OPF_T",                                            // Gyra IFV
    "EF_O_Gyra_Armed_OPF_T",                                            // Gyra IFV
    "EF_O_Gyra_Armed_OPF_T",                                            // Gyra IFV
    "O_T_APC_Tracked_02_cannon_ghex_F",                                 // BTR-K Kamysh
    "O_T_APC_Tracked_02_cannon_ghex_F",                                 // BTR-K Kamysh
    "OPF_T_F_QAV_BMP1",                                                 // ZBD-86
    "AX_O_T_APC_zbd04A_ghex_F",                                         // ZBD-4A Sanmiao 

    /*Tanks - 4*/
    "qav_o_t_ztl11",                                                    // ZTL-11
    "qav_o_t_ztl11",                                                    // ZTL-11
    "AX_O_T_MBT_ztq15_ghex_F",                                          // ZTQ-15
    "AX_O_T_MBT_ztz96b_ghex_F",                                         // ZTZ-96B

    /*Anti-Air - 3*/
    "dcx_csat_zamak_zu23_ghex",                                         // KamAZ (Zu-23-2) 
    "dcx_csat_zamak_zu23_ghex",                                         // KamAZ (Zu-23-2)
    "dcx_csat_zamak_zu23_ghex",                                         // KamAZ (Zu-23-2)  

    /*Attack Helicopters - 6*/
    "AX_O_T_Heli_Light_z11wa_F",                                        // Z-11WA
    "AX_O_T_Heli_Light_z11wa_F",                                        // Z-11WA
    "AX_O_T_Heli_Light_z11wa_F",                                        // Z-11WA
    "AX_O_T_Heli_Attack_z19_F",                                         // Z-19
    "AX_O_T_Heli_Attack_z19_F",                                         // Z-19

    /*Attack/Transport Helicopters - 5*/
    "O_T_Heli_Light_02_dynamicLoadout_ghex_F",                          // Po-30 Orca (Armed)
    "O_T_Heli_Light_02_dynamicLoadout_ghex_F",                          // Po-30 Orca (Armed)
    "O_T_Heli_Light_02_dynamicLoadout_ghex_F",                          // Po-30 Orca (Armed)
    "O_Heli_Transport_04_bench_F",                                      // Mi-290 Taru (Bench)
    "O_Heli_Transport_04_bench_F"                                       // Mi-290 Taru (Bench)
];

/* All vehicles that spawn within battlegroups (see the above 2 arrays) and also hold 8 soldiers as passengers.
If something in this array can't hold all 8 soldiers then buggy behaviours may occur. */
KPLIB_o_troopTransports = [

    /*Ground Transports*/
    "lk_o_t_vodnik_transport",                                          // Vodnik Transport
    "O_T_APC_Wheeled_02_unarmed_lxWS",                                  // Otokar ARMA Tranport
    "O_T_Truck_03_transport_ghex_F",                                    // Tempest Transport
    "O_T_Truck_03_covered_ghex_F",                                      // Tempest Transport (Covered)
    "O_T_APC_Wheeled_02_rcws_ghex_F",                                   // MSE-3 Marid
    "O_T_APC_Tracked_02_30mm_lxWS",                                     // BM2-T Stalker

    /*Air Transports*/
    "O_Heli_Transport_04_bench_F",                                      // Mi-290 Taru (Bench)
    "O_T_Heli_Light_02_dynamicLoadout_ghex_F",                          // Po-30 Orca (Armed)
    "dcx_csat_pac_orca_up_armed",                                       // Orca UP (Armed)
    "AX_O_T_Heli_Transport_z8l_F",                                      // Z-8L (Transport, Heavy Lift Helicopter)
    "dcx_csat_pac_orca_up",                                             // Ka-60 (Transport Helicopter)
    "O_T_VTOL_02_infantry_dynamicLoadout_F"                             // Y-32 Xi'an (Infantry)
];

// Enemy rotary-wings that will need to spawn in flight.
KPLIB_o_helicopters = [
    "AX_O_T_Heli_Light_z11wa_F",                                        // Z-11WA
    "AX_O_T_Heli_Attack_z19_F",                                         // Z-19
    "AX_O_T_Heli_Attack_z10_F",                                         // Z-10
    "O_T_Heli_Attack_02_dynamicLoadout_F",                              // MI-48
    "O_Heli_Transport_04_bench_F",                                      // Mi-290 Taru (Bench)
    "O_T_Heli_Light_02_dynamicLoadout_ghex_F",                          // Po-30 Orca (Armed)
    "dcx_csat_pac_orca_up_armed",                                       // Orca UP (Armed)
    "AX_O_T_Heli_Transport_z8l_F",                                      // Z-8L (Transport, Heavy Lift Helicopter)
    "dcx_csat_pac_orca_up",                                             // Ka-60 (Transport Helicopter)
    "O_T_VTOL_02_infantry_dynamicLoadout_F"                             // Y-32 Xi'an (Infantry)
];

// Enemy fixed-wings that will need to spawn in the air.
KPLIB_o_planes = [
    "AX_O_T_Plane_Fighter_j10_F",                                       // J-10C
    "FA_Mig29_CSAT_Trop",                                               // MiG-29SMT
    "O_T_Plane_CAS_02_dynamicLoadout_ghex_F",                           // To-199 Neophron (CAS)
    "AX_O_T_Plane_Fighter_j11_F",                                       // J-11D
    "AX_O_T_Plane_Fighter_j15_F",                                       // J-15
    "AX_O_T_Plane_Fighter_j16_F",                                       // J-16
    "AX_O_T_Plane_Fighter_j20_F",                                       // J-20A
    "O_T_Plane_Fighter_02_ghex_F",                                      // To-201 Shikra
    "O_T_Plane_Fighter_02_Stealth_ghex_F"                               // To-201 (Stealth)
];

// Enemy SAM turrets that will be spawned in the back country
KPLIB_o_turrets_SAM = [
    ["B_SAM_System_01_F"], 
    ["B_SAM_System_02_F"], 
    ["O_SAM_System_04_F", "O_Radar_System_02_F"]
];