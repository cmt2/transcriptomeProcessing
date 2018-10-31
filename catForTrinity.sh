cd /global/scratch/cmt2/transcriptome_raw_data/transcriptomes_Jesus
mkdir allium
mkdir hemero

cat clean/CSJM004C_1.fq clean/CSJM004D_1.fq clean/CSJM004L_1.fq clean/CSJM004E_1.fq clean/CSJM004F_1.fq clean/CSJM004G_1.fq clean/CSJM004k_1.fq clean/CSJM004H_1.fq clean/CSJM004J_1.fq clean/CSJM004A_1.fq clean/CSJM004B_1.fq clean/CSJM004I_1.fq clean/CSJM005G_1.fq clean/CSJM005H_1.fq clean/CSJM005I_1.fq clean/CSJM005J_1.fq clean/CSJM005k_1.fq clean/CSJM005L_1.fq > allium/allium_1.fq
cat clean/CSJM004C_2.fq clean/CSJM004D_2.fq clean/CSJM004L_2.fq clean/CSJM004E_2.fq clean/CSJM004F_2.fq clean/CSJM004G_2.fq clean/CSJM004k_2.fq clean/CSJM004H_2.fq clean/CSJM004J_2.fq clean/CSJM004A_2.fq clean/CSJM004B_2.fq clean/CSJM004I_2.fq clean/CSJM005G_2.fq clean/CSJM005H_2.fq clean/CSJM005I_2.fq clean/CSJM005J_2.fq clean/CSJM005k_2.fq clean/CSJM005L_2.fq > allium/allium_2.fq

cat clean/CSJM005A_1.fq clean/CSJM005B_1.fq clean/CSJM005C_1.fq clean/CSJM005D_1.fq clean/CSJM005E_1.fq clean/CSJM005F_1.fq > hemero/hemero_1.fq
cat clean/CSJM005A_2.fq clean/CSJM005B_2.fq clean/CSJM005C_2.fq clean/CSJM005D_2.fq clean/CSJM005E_2.fq clean/CSJM005F_2.fq > hemero/hemero_2.fq
