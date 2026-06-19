/*
    File: apex.sqf
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2017-10-07
    Last Update: 2020-05-25
    License: MIT License - http://www.opensource.org/licenses/MIT

    Description:
        NATO pacific player preset.

    Needed Mods:
        - None

    Optional Mods:
        - BWMod
        - CUP Vehicles
        - CUP Weapons
        - F-15C
        - F/A-18
        - RHSUSAF
        - USAF Fighters Pack
        - USAF Main Pack
        - USAF Utility Pack
*/

/*
    --- Support classnames ---
    Each of these should be unique.
    The same classnames for different purposes may cause various unpredictable issues with player actions.
    Or not, just don't try!
*/
KPLIB_b_fobBuilding     = "Land_Cargo_HQ_V1_F";                         // This is the main FOB HQ building.
KPLIB_b_fobBox          = "B_Slingload_01_Cargo_F";                     // This is the FOB as a container.
KPLIB_b_fobTruck        = "B_Truck_01_box_F";                           // This is the FOB as a vehicle.
KPLIB_b_arsenal         = "B_supplyCrate_F";                            // This is the virtual arsenal as portable supply crates.
KPLIB_b_outpostBox      = "Land_Cargo10_military_green_F";              // This is the Outpost as a container.
KPLIB_b_outpostBuilding = "Land_BagBunker_Large_F";                     // This is the Outpost building.

// This is the mobile respawn (and medical) truck.
KPLIB_b_mobileRespawn   = ["B_Truck_01_medical_F","B_T_Truck_01_medical_F"];

KPLIB_b_potato01        = "B_Heli_Transport_03_unarmed_F";              // This is Potato 01, a multipurpose mobile respawn as a helicopter.
KPLIB_b_crewUnit        = "B_crew_F";                                   // This defines the crew for vehicles.
KPLIB_b_heliPilotUnit   = "B_Helipilot_F";                              // This defines the pilot for helicopters.
KPLIB_b_crewStatic      = "B_Soldier_F";                                // This defines the crew for static weapons.
KPLIB_b_addHeli         = "B_Heli_Light_01_F";                          // These are the additional helicopters which spawn on the Freedom or at Chimera base.
KPLIB_b_addBoat         = "B_Boat_Transport_01_F";                      // These are the boats which spawn at the stern of the Freedom.
KPLIB_b_logiTruck       = "B_Truck_01_transport_F";                     // These are the trucks which are used in the logistic convoy system.
KPLIB_b_smallStorage    = "Land_Cargo20_brick_red_F";                   // A small storage area for resources.
KPLIB_b_largeStorage    = "Land_Cargo40_brick_red_F";                   // A large storage area for resources.
KPLIB_b_transStorage    = "Land_Cargo10_brick_red_F";                   // This defines a transportable storage.
KPLIB_b_logiStation     = "Land_RepairDepot_01_tan_F";                  // The building defined to unlock FOB recycling functionality.
KPLIB_b_airControl      = "Land_Radar_Small_F";                         // The building defined to unlock FOB air vehicle functionality.
KPLIB_b_slotHeli        = "Land_HelipadSquare_F";                       // The helipad used to increase the GLOBAL rotary-wing cap.
KPLIB_b_slotPlane       = "Land_TentHangar_V1_F";                       // The hangar used to increase the GLOBAL fixed-wing cap.
KPLIB_b_crateSupply     = "CargoNet_01_box_F";                          // This defines the supply crates, as in resources.
KPLIB_b_crateAmmo       = "B_CargoNet_01_ammo_F";                       // This defines the ammunition crates.
KPLIB_b_crateFuel       = "CargoNet_01_barrels_F";                      // This defines the fuel crates.
KPLIB_b_supplyDump      = "Land_Cargo20_military_green_F";              // This defines supply dump for the supply menu
KPLIB_b_barrack         = "Land_Cargo_House_V1_F";                      // The building defined to unlock FOB redeploy and IA/squads buying
KPLIB_b_fortify_small   = "Box_GEN_Equip_F";                            // This defines small crate for usage with Ace fortify
KPLIB_b_fortify_medium  = "I_EAF_supplyCrate_F";                        // This defines medium crate for usage with Ace fortify

// Basic uniform to spawn with
KPLIB_b_basic_uniform = "U_B_CombatUniform_mcam";

/*
    Classnames of crates (parent of ReammoBox_F) that can be used as supply carriers and its prices
*/

KPLIB_supply_crates = [
    ["C_IDAP_supplyCrate_F",10,0,0],
    ["Box_NATO_Equip_F",10,0,0],
    ["Box_NATO_Ammo_F",10,0,0],
    ["Box_NATO_Wps_F",10,0,0],
    ["Box_NATO_AmmoOrd_F",10,0,0],
    ["Box_NATO_Grenades_F",10,0,0],
    ["Box_NATO_WpsLaunch_F",10,0,0],
    ["Box_NATO_Support_F",10,0,0],
    ["ACE_medicalSupplyCrate_advanced",10,0,0]
];

/*
    --- Friendly classnames ---
    Each array below represents one of the 7 pages within the build menu.
    Format: ["vehicle_classname",supplies,ammunition,fuel],
    Example: ["B_APC_Tracked_01_AA_F",300,150,150],
    The above example is the NATO IFV-6a Cheetah, it costs 300 supplies, 150 ammunition and 150 fuel to build.
    IMPORTANT: The last element inside each array must have no comma at the end!
*/
KPLIB_b_infantry = [
    ["B_T_Soldier_F",20,0,0],                                           // Rifleman
    ["B_T_Soldier_LAT_F",30,0,0],                                       // Rifleman (AT)
    ["B_T_Soldier_GL_F",25,0,0],                                        // Grenadier
    ["B_T_Soldier_AR_F",25,0,0],                                        // Autorifleman
    ["B_T_soldier_M_F",30,0,0],                                         // Marksman
    ["B_T_Soldier_AT_F",50,10,0],                                       // AT Specialist
    ["B_T_Soldier_AA_F",50,10,0],                                       // AA Specialist
    ["B_T_Medic_F",30,0,0],                                             // Combat Life Saver
    ["B_T_Engineer_F",30,0,0],                                          // Engineer
    ["B_T_Soldier_Exp_F",30,0,0],                                       // Explosives Specialist
    ["B_T_Recon_F",20,0,0],                                             // Recon Scout
    ["B_T_Recon_LAT_F",30,0,0],                                         // Recon Scout (AT)
    ["B_T_Recon_M_F",30,0,0],                                           // Recon Marksman
    ["B_T_Recon_Medic_F",30,0,0],                                       // Recon Paramedic
    ["B_T_Recon_exp_F",30,0,0],                                         // Recon Demolition Expert
    ["B_T_Sniper_F",70,5,0],                                            // Sniper
    ["B_T_ghillie_tna_F",70,5,0],                                       // Sniper (Jungle)
    ["B_T_Spotter_F",20,0,0],                                           // Spotter
    ["B_T_Crew_F",10,0,0],                                              // Crewman
    ["B_T_Soldier_PG_F",20,0,0],                                        // Para Trooper
    ["B_T_Helicrew_F",10,0,0],                                          // Helicopter Crew
    ["B_T_Helipilot_F",10,0,0],                                         // Helicopter Pilot
    ["B_T_Pilot_F",10,0,0]                                              // Pilot
];

KPLIB_b_vehLight = [

    /*Cars*/
    ["B_T_Quadbike_01_F",15,0,5],                                       // Quad Bike
    ["B_T_LSV_01_unarmed_F",75,0,50],                                   // Prowler
    ["B_T_LSV_01_armed_F",75,40,50],                                    // Prowler (HMG)
    ["B_T_LSV_01_AT_F",75,100,50],                                      // Prowler (AT)
    ["B_Pickup_rf",75,0,50],                                            // Pickup
    ["B_Pickup_mmg_rf",75,25,50],                                       // Pickup (MMG)
    ["dcx_b_pickup_hmg",75,40,50],                                      // Pickup (HMG)
    ["B_Pickup_aat_rf",75,100,50],                                      // Pickup (AA)
    ["Aegis_B_Pickup_AT_RF",75,100,50],                                 // Pickup (AT)

    /*MRAPS*/
    ["B_T_MRAP_01_F",100,0,50],                                         // Hunter
    ["B_T_MRAP_01_hmg_F",100,40,50],                                    // Hunter (HMG)
    ["B_T_MRAP_01_gmg_F",100,60,50],                                    // Hunter (GMG)
    ["EF_B_MRAP_01_AT_NATO",100,125,50],                                // M-ATV AT
    ["EF_B_MRAP_01_LAAD_NATO",100,125,50],                              // M-ATV AA
    ["EF_B_MRAP_01_FSV_NATO",100,150,50],                               // M-ATV FSV
    ["I_MRAP_03_F",100,0,50],                                           // Strider
    ["I_MRAP_03_hmg_F",100,40,50],                                      // Strider (HMG)
    ["I_MRAP_03_gmg_F",100,60,50],                                      // Strider (GMG)

    /*Logistics*/
    ["B_T_Truck_01_transport_F",125,0,75],                              // HEMTT Transport
    ["B_T_Truck_01_covered_F",125,0,75],                                // HEMTT Transport (Covered)

    /*UGVs*/
    ["B_UGV_01_F",150,0,50],                                            // UGV Stomper
    ["B_UGV_01_rcws_F",150,40,50],                                      // UGV Stomper (RCWS)

    /*Boats*/
    ["B_T_Boat_Transport_01_F",15,0,5],                                 // Assault Boat
    ["B_T_Boat_Armed_01_minigun_F",200,80,75],                          // Speedboat Minigun
    ["B_SDV_01_F",150,0,50]                                             // SDV
];

KPLIB_b_vehHeavy = [

    /*APCS*/
    ["B_T_APC_Tracked_01_rcws_F",300,100,150],                          // IFV-6c Panther
    ["APC_Wheeled_01_apc_qav",200,50,125],                              // AMV-7 Marshall (APC)

    /*IFVs*/
    ["B_T_APC_Wheeled_01_cannon_v2_F",200,75,125],                      // AMV-7 Marshall
    ["I_APC_Wheeled_03_cannon_F",200,75,125],                           // AFV-4 Gorgon
    ["I_APC_tracked_03_cannon_v2_F",300,150,150],                       // FV-720 Mora
    ["B_APC_Wheeled_01_atgm_lxWS_v2",250,175,125],                      // AMV-7 Marshall (ATGM)

    /*MBTs*/
    ["I_MBT_03_cannon_F",400,300,200],                                  // MBT-52 Kuma
    ["B_merkava_mk2B",300,200,150],                                     // M1A Slammer
    ["B_merkava_mk2D",325,225,175],                                     // M1A Slammer UP
    ["B_merkava_mk3B",350,250,175],                                     // M1B Slammer
    ["B_T_MBT_01_cannon_F",400,300,200],                                // M2A1 Slammer
    ["B_T_MBT_01_TUSK_F",500,350,225],                                  // M2A4 Slammer UP
    ["B_qav_abramsx",550,400,250],                                      // M3A1 Knight
    ["B_qav_abramsx_templar",600,450,300],                              // M3A2 Knight
    ["B_qav_abramsx_tusk",650,475,325],                                 // M3A3 Knight UP
    ["B_qav_abramsx_zeus",700,550,350],                                 // M3E1 Knight

    /*Light Tanks*/
    ["I_LT_01_AT_F",300,250,175],                                       // AWC 302 Nyx (AT)
    ["I_LT_01_cannon_F",300,250,175],                                   // AWC 302 Nyx (Cannon)
    ["qav_b_ripsaw_Mk44",275,200,150],                                  // MS4 Ripsaw

    /*Tank Destroyers*/
    ["B_T_AFV_Wheeled_01_cannon_F",500,500,250],                        // Rhino MGS
    ["B_T_AFV_Wheeled_01_up_cannon_F",550,550,250],                     // Rhino MGS UP
    ["APC_Wheeled_01_mgs_QAV",200,400,125],                             // AMV-7 Marshall (MGS)
    ["APC_Wheeled_01_mgs_up_QAV",200,450,125],                          // AMV-7 Marshall (MGS-UP)

    /*Heavy UGVs*/
    ["qav_ripsaw_c",250,50,150],                                        // M6C Bullfrog (Cargo)
    ["qav_ripsaw_Mk44",250,150,150],                                    // M6A Ripsaw (Mk44)
    

    /*Self-Propelled Artillery*/
    ["B_T_MBT_01_arty_F",600,1250,300],                                 // M4 Scorcher
    ["B_APC_Wheeled_01_mortar_lxWS",200,500,125],                       // AMV-7 Marshall (Mortar)

    /*MLRS*/
    ["B_T_MBT_01_mlrs_F",800,1750,400],                                 // M5 Sandstorm MLRS

    /*Self-Propelled AA*/
    ["I_LT_01_scout_F",200,0,125],                                      // AWC 302 Nyx (AA)
    ["B_T_APC_Tracked_01_AA_F",300,250,175],                            // IFV-6a Cheetah
    ["I_LT_01_AA_F",300,250,175],                                       // AWC 302 Nyx (AA)
    ["APC_Wheeled_01_shorad_QAV",200,200,125],                          // AMV-7A Guardian

    /*Utility*/
    ["B_APC_Wheeled_01_command_lxWS",200,50,125],                       // AMV-7 Marshall (Command)
    
    /*Boats*/
    ["EF_B_CombatBoat_AT_NATO",350,300,125],                            // Combat Boat (AT)
    ["EF_B_CombatBoat_HMG_NATO",350,250,125],                           // Combat Boat (HMG)
    ["EF_B_CombatBoat_Unarmed_NATO",350,0,125]                          // Combat Boat (Unarmed)        
];



KPLIB_b_vehAir = [

    /*UAV*/
    ["B_UAV_01_F",75,0,25],                                             // AR-2 Darter
    ["B_UAV_06_F",80,0,30],                                             // AL-6 Pelican (Cargo)
    ["rksla3_aeroshark_blufor",200,100,100],                            // Aeroshark Mini-UAV

    /*Utility Helicopter*/
    ["B_Heli_Light_01_F",200,0,100],                                    // MH-9 Hummingbird
    ["I_Heli_light_03_unarmed_F",225,0,125],                            // WY-55 Hellcat
    ["B_Heli_Transport_01_F",250,80,150],                               // UH-80 Ghost Hawk
    ["B_Heli_Transport_01_camo_F",250,80,150],                          // UH-80 Ghost Hawk (Camo)
    ["I_Heli_Transport_02_F",275,0,175],                                // CH-49 Mohawk
    ["B_Heli_EC_04_military_RF",300,0,175],                             // H225M Super Cougar (Unarmed)
    ["B_Heli_EC_03_RF",300,150,175],                                    // H225M Super Cougar

    /*Attack Helicopter*/
    ["B_Heli_Light_01_dynamicLoadout_F",200,100,100],                   // AH-9 Pawnee
    ["I_Heli_light_03_dynamicLoadout_F",225,200,125],                   // WY-55 Hellcat (Armed)
    ["B_Heli_Transport_01_pylons_F",250,200,150],                       // UH-80 Ghost Hawk (Stub Wings)
    ["B_Heli_Transport_01_pylons_02_F",250,375,150],                    // UH-80 Ghost Hawk (DAP)
    ["B_Heli_Attack_01_dynamicLoadout_F",650,400,200],                  // AH-99 Blackfoot
    ["B_Heli_Attack_01_pylons_dynamicLoadout_F",650,500,200],           // RAH-99 Comanche (Stub Wings)
    ["B_Heli_Transport_03_F",300,80,175],                               // CH-67 Huron (Armed)
    ["Aegis_B_Heli_Attack_03_F",500,400,200],                           // AH-64E Apache
    ["dcx_b_cougar_02",300,300,175],                                    // H225M Super Cougar SOCAT

    /*UAV Helicopter*/
    ["B_UAV_02_dynamicLoadout_F",400,300,200],                          // MQ-4A Greyhawk
    ["B_T_UAV_03_dynamicLoadout_F",450,500,250],                        // MQ-12 Falcon

    /*Plane*/
    ["B_UAV_05_F",500,500,200],                                         // UCAV Sentinel
    ["I_Plane_Fighter_03_dynamicLoadout_F",500,400,350],                // A-143 Buzzard (AA)
    ["B_Plane_CAS_01_dynamicLoadout_F",1000,800,400],                   // A-164 Wipeout (CAS)
    ["ITC_A10E",1200,800,450],                                          // A-10E
    ["I_Plane_Fighter_04_F",1000,1200,400],                             // A-149 Gryphon
    ["B_Plane_Fighter_01_F",1500,1750,450],                             // F/A-181 Black Wasp II
    ["B_Plane_Fighter_01_Stealth_F",1500,1750,450],                     // F/A-181 Black Wasp II (Stealth)
    ["EX3B_AV35B_F",1550,1750,450],                                     // AV-35B Phantom
    ["EX3B_A35C_F",1600,1750,500],                                      // AV-35C Phantom
    ["B_Plane_Fighter_05_F",1750,1750,500],                             // F-35F Lightning II
    ["B_Plane_Fighter_05_Stealth_F",1750,1750,500],                     // F-35F Lightning II (Stealth)
    ["B_T_VTOL_01_armed_F",750,1500,500],                               // V-44 X Blackfish (Armed)
    ["B_T_VTOL_01_infantry_F",750,0,500],                               // V-44 X Blackfish (Infantry)
    ["B_T_VTOL_01_vehicle_F",750,0,500]                                 // V-44 X Blackfish (Vehicle)
];



KPLIB_b_vehStatic = [

    /*HMGs*/
    ["B_HMG_01_F",25,40,0],                                             // Mk30A HMG .50
    ["B_HMG_01_high_F",25,40,0],                                        // Mk30 HMG .50 (Raised)
    ["B_HMG_01_A_F",35,40,0],                                           // Mk30 HMG .50 (Autonomous)

    /*GMG*/
    ["B_GMG_01_F",35,60,0],                                             // Mk32A GMG 20mm
    ["B_GMG_01_high_F",35,60,0],                                        // Mk32 GMG 20mm (Raised)
    ["B_GMG_01_A_F",45,60,0],                                           // Mk32 GMG 20mm (Autonomous)

    /*Launchers*/
    ["B_T_Static_AT_F",50,100,0],                                       // Static Titan Launcher (AT)
    ["B_T_Static_AA_F",50,100,0],                                       // Static Titan Launcher (AA)
    ["ace_dragon_staticAssembled",50,100,0],                            // M-47 Super Dragon

    /*Mortars*/
    ["B_Mortar_01_F",80,150,0],                                         // Mk6 Mortar

    /*SAMs*/
    ["B_SAM_System_03_F",250,500,0],                                     // MIM-145 Defender

    [KPLIB_b_fortify_small,50,0,0],                                     // Fortify Small crate
    [KPLIB_b_fortify_medium,100,0,0]                                    // Fortify Medium crate
];

KPLIB_b_objectsDeco = [
    ["Land_Cargo_House_V1_F",0,0,0],
    ["Land_Cargo_Patrol_V1_F",0,0,0],
    ["Land_Cargo_Tower_V1_F",0,0,0],
    ["Flag_NATO_F",0,0,0],
    ["Flag_US_F",0,0,0],
    ["BWA3_Flag_Ger_F",0,0,0],
    ["Flag_UK_F",0,0,0],
    ["Flag_White_F",0,0,0],
    ["Land_Medevac_house_V1_F",0,0,0],
    ["Land_Medevac_HQ_V1_F",0,0,0],
    ["Flag_RedCrystal_F",0,0,0],
    ["CamoNet_BLUFOR_F",0,0,0],
    ["CamoNet_BLUFOR_open_F",0,0,0],
    ["CamoNet_BLUFOR_big_F",0,0,0],
    ["Land_PortableLight_single_F",0,0,0],
    ["Land_PortableLight_double_F",0,0,0],
    ["Land_LampSolar_F",0,0,0],
    ["Land_LampHalogen_F",0,0,0],
    ["Land_LampStreet_small_F",0,0,0],
    ["Land_LampAirport_F",0,0,0],
    ["Land_HelipadCircle_F",0,0,0],                                     // Strictly aesthetic - as in it does not increase helicopter cap!
    ["Land_HelipadRescue_F",0,0,0],                                     // Strictly aesthetic - as in it does not increase helicopter cap!
    ["PortableHelipadLight_01_blue_F",0,0,0],
    ["PortableHelipadLight_01_green_F",0,0,0],
    ["PortableHelipadLight_01_red_F",0,0,0],
    ["Land_CampingChair_V1_F",0,0,0],
    ["Land_CampingChair_V2_F",0,0,0],
    ["Land_CampingTable_F",0,0,0],
    ["MapBoard_altis_F",0,0,0],
    ["MapBoard_stratis_F",0,0,0],
    ["MapBoard_seismic_F",0,0,0],
    ["Land_Pallet_MilBoxes_F",0,0,0],
    ["Land_PaperBox_open_empty_F",0,0,0],
    ["Land_PaperBox_open_full_F",0,0,0],
    ["Land_PaperBox_closed_F",0,0,0],
    ["Land_DieselGroundPowerUnit_01_F",0,0,0],
    ["Land_ToolTrolley_02_F",0,0,0],
    ["Land_WeldingTrolley_01_F",0,0,0],
    ["Land_Workbench_01_F",0,0,0],
    ["Land_GasTank_01_blue_F",0,0,0],
    ["Land_GasTank_01_khaki_F",0,0,0],
    ["Land_GasTank_01_yellow_F",0,0,0],
    ["Land_GasTank_02_F",0,0,0],
    ["Land_BarrelWater_F",0,0,0],
    ["Land_BarrelWater_grey_F",0,0,0],
    ["Land_WaterBarrel_F",0,0,0],
    ["Land_WaterTank_F",0,0,0],
    ["Land_BagFence_Round_F",0,0,0],
    ["Land_BagFence_Short_F",0,0,0],
    ["Land_BagFence_Long_F",0,0,0],
    ["Land_BagFence_Corner_F",0,0,0],
    ["Land_BagFence_End_F",0,0,0],
    ["Land_SandbagBarricade_01_F",0,0,0],
    ["Land_SandbagBarricade_01_half_F",0,0,0],
    ["Land_Rampart_F",0,0,0],
    ["Land_DragonsTeeth_01_4x2_new_F",0,0,0],
    ["ACE_envelope_big",0,0,0],
    ["GRAD_envelope_giant",0,0,0],
    ["GRAD_envelope_long",0,0,0],
    ["GRAD_envelope_short",0,0,0],
    ["ACE_envelope_small",0,0,0],
    ["GRAD_envelope_vehicle",0,0,0],
    ["Land_Pier_F",20,0,0],                      // Pier block, to have a plane surface to build
    ["Land_SandbagBarricade_01_hole_F",0,0,0],
    ["Land_BagBunker_Small_F",0,0,0],
    ["Land_BagBunker_Large_F",0,0,0],
    ["Land_BagBunker_Tower_F",0,0,0],
    ["Land_HBarrier_1_F",0,0,0],
    ["Land_HBarrier_3_F",0,0,0],
    ["Land_HBarrier_5_F",0,0,0],
    ["Land_HBarrier_Big_F",0,0,0],
    ["Land_HBarrierWall4_F",0,0,0],
    ["Land_HBarrierWall6_F",0,0,0],
    ["Land_HBarrierWall_corner_F",0,0,0],
    ["Land_HBarrierWall_corridor_F",0,0,0],
    ["Land_HBarrierTower_F",0,0,0],
    ["Land_CncBarrierMedium_F",0,0,0],
    ["Land_CncBarrierMedium4_F",0,0,0],
    ["Land_Concrete_SmallWall_4m_F",0,0,0],
    ["Land_Concrete_SmallWall_8m_F",0,0,0],
    ["Land_CncShelter_F",0,0,0],
    ["Land_CncWall1_F",0,0,0],
    ["Land_CncWall4_F",0,0,0],
    ["Land_Sign_WarningMilitaryArea_F",0,0,0],
    ["Land_Sign_WarningMilAreaSmall_F",0,0,0],
    ["Land_Sign_WarningMilitaryVehicles_F",0,0,0],
    ["Land_Razorwire_F",0,0,0],
    ["Land_ClutterCutter_large_F",0,0,0]
];

KPLIB_b_vehSupport = [
    [KPLIB_b_arsenal,100,200,0],
    [(KPLIB_b_mobileRespawn select 0),200,0,100],
    [(KPLIB_b_mobileRespawn select 1),200,0,100],
    [KPLIB_b_fobBox,500,500,0],
    [KPLIB_b_fobTruck,500,500,75],
    [KPLIB_b_outpostBox,300,300,0],
    [KPLIB_b_smallStorage,0,0,0],
    [KPLIB_b_largeStorage,0,0,0],
    [KPLIB_b_transStorage,100,0,0],
    [KPLIB_b_logiStation,250,0,0],
    [KPLIB_b_airControl,1000,0,0],
    [KPLIB_b_slotHeli,500,0,0],
    [KPLIB_b_slotPlane,1000,0,0],
    [KPLIB_b_supplyDump, 250,1000,0],                                  // Supply dump
    [KPLIB_b_barrack, 200,0,0],                                        // Barrack
    ["B_UAV_01_F", 50, 0, 0],
    ["B_UAV_06_medical_F", 50, 0, 0],
    ["C_IDAP_UAV_06_antimine_F", 50, 50, 0],
    ["ACE_medicalSupplyCrate_advanced",50,0,0],
    ["ACE_Box_82mm_Mo_HE",50,40,0],
    ["ACE_Box_82mm_Mo_Smoke",50,10,0],
    ["ACE_Box_82mm_Mo_Illum",50,10,0],
    ["ACE_Wheel",10,0,0],
    ["ACE_Track",10,0,0],

    ["FL_parts_avionics",35,0,0],                                       // ACE Advanced Repair
    ["FL_parts_controlsurfaces",30,0,0],                                // ACE Advanced Repair
    ["FL_parts_fueltanklarge",15,0,10],                                 // ACE Advanced Repair
    ["FL_parts_fueltanksmall",10,0,5],                                  // ACE Advanced Repair
    ["FL_parts_gunfcs",20,15,0],                                        // ACE Advanced Repair
    ["FL_parts_enginepistonlarge",25,0,15],                             // ACE Advanced Repair
    ["FL_parts_enginepistonmedium",20,0,10],                            // ACE Advanced Repair
    ["FL_parts_enginepistonsmall",15,0,5],                              // ACE Advanced Repair
    ["FL_parts_rotorassembly",30,0,0],                                  // ACE Advanced Repair
    ["FL_parts_turretdrive",25,15,0],                                   // ACE Advanced Repair
    ["FL_parts_engineturbinesmall",25,0,0],                             // ACE Advanced Repair
    ["FL_parts_engineturbinelarge",35,0,0],                             // ACE Advanced Repair

    ["Land_Bomb_Trolley_01_F",0,1000,0],                                // Required to use PiG's pylon manager
    ["Land_Missle_Trolley_02_F",0,1000,0],                              // Required to use PiG's pylon manager
    ["USAF_missileCart_W_AGM114",50,150,0],                             // Missile Cart (AGM-114)
    ["USAF_missileCart_AGMMix",50,150,0],                               // Missile Cart (AGM-65 Mix)
    ["USAF_missileCart_AGM1",50,150,0],                                 // Missile Cart (AGM-65D)
    ["USAF_missileCart_AGM2",50,150,0],                                 // Missile Cart (AGM-65E)
    ["USAF_missileCart_AGM3",50,150,0],                                 // Missile Cart (AGM-65K)
    ["USAF_missileCart_AA1",50,150,0],                                  // Missile Cart (AIM-9M/AIM-120)
    ["USAF_missileCart_AA2",50,150,0],                                  // Missile Cart (AIM-9X/AIM-120)
    ["USAF_missileCart_GBU12_green",50,150,0],                          // Missile Cart (GBU12 Green)
    ["USAF_missileCart_GBU12_maritime",50,150,0],                       // Missile Cart (GBU12 Maritime)
    ["USAF_missileCart_GBU12",50,150,0],                                // Missile Cart (GBU12)
    ["USAF_missileCart_Gbu31",50,150,0],                                // Missile Cart (GBU31)
    ["USAF_missileCart_GBU39",50,150,0],                                // Missile Cart (GBU39)
    ["USAF_missileCart_Mk82",50,150,0],                                 // Missile Cart (Mk82)
    ["CUP_B_TowingTractor_NATO",50,0,25],                               // Towing Tractor
    ["B_APC_Tracked_01_CRV_F",500,250,350],                             // CRV-6e Bobcat
    ["B_Truck_01_Repair_F",325,0,75],                                   // HEMTT Repair
    ["B_Truck_01_fuel_F",125,0,275],                                    // HEMTT Fuel
    ["B_Truck_01_ammo_F",125,200,75],                                   // HEMTT Ammo
    ["rhsusf_M977A4_REPAIR_BKIT_usarmy_wd",325,0,75],                   // M977A4 Repair
    ["rhsusf_M978A4_BKIT_usarmy_wd",125,0,275],                         // M978A4 Fuel
    ["rhsusf_M977A4_AMMO_BKIT_usarmy_wd",125,200,75],                   // M977A4 Ammo
    ["B_Slingload_01_Repair_F",275,0,0],                                // Huron Repair
    ["B_Slingload_01_Fuel_F",75,0,200],                                 // Huron Fuel
    ["B_Slingload_01_Ammo_F",75,200,0]                                  // Huron Ammo
];

/*
    --- Squads ---
    Pre-made squads for the commander build menu.
    These shouldn't exceed 10 members.
*/

// Light infantry squad.
KPLIB_b_squadLight = [
    "B_T_Soldier_TL_F",
    "B_T_Soldier_F",
    "B_T_Soldier_F",
    "B_T_Soldier_LAT_F",
    "B_T_Soldier_GL_F",
    "B_T_Soldier_AR_F",
    "B_T_Soldier_AR_F",
    "B_T_soldier_M_F",
    "B_T_Medic_F",
    "B_T_Engineer_F"
];

// Heavy infantry squad.
KPLIB_b_squadInf = [
    "B_T_Soldier_TL_F",
    "B_T_Soldier_LAT_F",
    "B_T_Soldier_LAT_F",
    "B_T_Soldier_GL_F",
    "B_T_Soldier_AR_F",
    "B_T_Soldier_AR_F",
    "B_T_Soldier_AR_F",
    "B_T_soldier_M_F",
    "B_T_Medic_F",
    "B_T_Engineer_F"
];

// AT specialists squad.
KPLIB_b_squadAT = [
    "B_T_Soldier_TL_F",
    "B_T_Soldier_F",
    "B_T_Soldier_F",
    "B_T_Soldier_AT_F",
    "B_T_Soldier_AT_F",
    "B_T_Soldier_AT_F",
    "B_T_Medic_F",
    "B_T_Soldier_F"
];

// AA specialists squad.
KPLIB_b_squadAA = [
    "B_T_Soldier_TL_F",
    "B_T_Soldier_F",
    "B_T_Soldier_F",
    "B_T_Soldier_AA_F",
    "B_T_Soldier_AA_F",
    "B_T_Soldier_AA_F",
    "B_T_Medic_F",
    "B_T_Soldier_F"
];

// Force recon squad.
KPLIB_b_squadRecon = [
    "B_T_Recon_TL_F",
    "B_T_Recon_F",
    "B_T_Recon_F",
    "B_T_Recon_LAT_F",
    "B_T_Recon_M_F",
    "B_T_Recon_M_F",
    "B_T_Sniper_F",
    "B_T_Spotter_F",
    "B_T_Recon_Medic_F",
    "B_T_Recon_Exp_F"
];

// Paratroopers squad (The units of this squad will automatically get parachutes on build)
KPLIB_b_squadPara = [
    "B_T_Soldier_PG_F",
    "B_T_Soldier_PG_F",
    "B_T_Soldier_PG_F",
    "B_T_Soldier_PG_F",
    "B_T_Soldier_PG_F",
    "B_T_Soldier_PG_F",
    "B_T_Soldier_PG_F",
    "B_T_Soldier_PG_F",
    "B_T_Soldier_PG_F",
    "B_T_Soldier_PG_F"
];

/*
    --- Vehicles to unlock ---
    Classnames below have to be unlocked by capturing military bases.
    Which base locks a vehicle can selected or randomized on the first start of the campaign.
            0: vehicle classname <STRING>
        1: sector which locks the vehicle <STRING>
    Example:
        ["vehicle_classname", "military_1"]
    If an empty string ("") is left in the sector selection, it will be randomized.
*/
KPLIB_b_vehToUnlock = [

    /*Boats*/
    ["EF_B_CombatBoat_AT_NATO",""],                                          // Combat Boat (AT)
    ["EF_B_CombatBoat_HMG_NATO",""],                                         // Combat Boat (HMG)

    /*Light Vehicles*/
    ["B_T_AFV_Wheeled_01_up_cannon_F",""],                                   // Rhino MGS UP
    ["APC_Wheeled_01_mgs_up_QAV",""],                                        // AMV-7 Marshall (MGS-UP)
    ["APC_Wheeled_01_shorad_QAV",""],                                        // AMV-7A Guardian
    ["B_APC_Wheeled_01_mortar_lxWS",""],                                     // AMV-7 Marshall (Mortar)
    
    /*Tanks*/
    ["B_T_MBT_01_TUSK_F",""],                                                // M2A4 Slammer UP
    ["B_T_MBT_01_arty_F",""],                                                // M4 Scorcher
    ["B_qav_abramsx_templar",""],                                            // M3A2 Knight
    ["B_qav_abramsx_tusk",""],                                               // M3A3 Knight UP
    ["B_qav_abramsx_zeus",""],                                               // M3E1 Knight
    ["qav_ripsaw_Mk44",""],                                                  // M6A Ripsaw (Mk44)

    /*Artillery*/
    ["B_T_MBT_01_mlrs_F",""],                                                // M5 Sandstorm MLRS

    /*Helicopters*/
    ["B_Heli_Attack_01_dynamicLoadout_F",""],                                // AH-99 Blackfoot
    ["B_UAV_02_dynamicLoadout_F",""],                                        // MQ-4A Greyhawk
    ["B_T_UAV_03_dynamicLoadout_F",""],                                      // MQ-12 Falcon
    ["B_Heli_Attack_01_pylons_dynamicLoadout_F",""],                         // RAH-99 Comanche (Stub Wings)
    ["Aegis_B_Heli_Attack_03_F",""],                                         // AH-64E Apache
    ["dcx_b_cougar_02",""],                                                  // H225M Super Cougar SOCAT
    ["B_Heli_Transport_01_pylons_02_F",""],                                  // UH-80 Ghost Hawk (DAP)
    
    /*Planes*/
    ["B_UAV_05_F",""],                                                       // UCAV Sentinel
    ["B_Plane_CAS_01_dynamicLoadout_F",""],                                  // A-164 Wipeout (CAS)
    ["ITC_A10E",""],                                                         // A-10E
    ["I_Plane_Fighter_04_F",""],                                             // A-149 Gryphon
    ["B_Plane_Fighter_01_F",""],                                             // F/A-181 Black Wasp II
    ["B_Plane_Fighter_01_Stealth_F",""],                                     // F/A-181 Black Wasp II (Stealth)
    ["EX3B_AV35B_F",""],                                                     // AV-35B Phantom
    ["EX3B_A35C_F",""],                                                      // AV-35C Phantom
    ["B_Plane_Fighter_05_F",""],                                             // F-35F Lightning II
    ["B_Plane_Fighter_05_Stealth_F",""],                                     // F-35F Lightning II (Stealth)
    ["B_T_VTOL_01_armed_F",""]                                               // V-44 X Blackfish (Armed)
];
