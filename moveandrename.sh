
cd /global/scratch/cmt2/transcriptome_raw_data/transcriptomes_Bomarea
mkdir clean

mv output_final/CSJM003G_S39_L006_R2_001_val_2.fq clean/CSJM003G_2.fq 
mv output_final/CSJM003E_S37_L006_R2_001_val_2.fq clean/CSJM003E_2.fq 
mv output_final/CSJM003J_S42_L006_R2_001_val_2.fq clean/CSJM003J_2.fq 
mv output_final/CSJM003I_S41_L006_R2_001_val_2.fq clean/CSJM003I_2.fq 
mv output_final/CSJM003k_S43_L006_R2_001_val_2.fq clean/CSJM003k_2.fq 
mv output_final/CSJM003B_S34_L006_R2_001_val_2.fq clean/CSJM003B_2.fq 
mv output_final/CSJM003D_S36_L006_R2_001_val_2.fq clean/CSJM003D_2.fq 
mv output_final/CSJM003L_S44_L006_R2_001_val_2.fq clean/CSJM003L_2.fq 
mv output_final/CSJM003A_S33_L006_R2_001_val_2.fq clean/CSJM003A_2.fq 
mv output_final/CSJM003C_S35_L006_R2_001_val_2.fq clean/CSJM003C_2.fq 
mv output_final/CSJM003H_S40_L006_R2_001_val_2.fq clean/CSJM003H_2.fq 
mv output_final/CSJM003F_S38_L006_R2_001_val_2.fq clean/CSJM003F_2.fq 

mv output_final/CSJM003F_S38_L006_R1_001_val_1.fq clean/CSJM003F_1.fq
mv output_final/CSJM003C_S35_L006_R1_001_val_1.fq clean/CSJM003C_1.fq
mv output_final/CSJM003G_S39_L006_R1_001_val_1.fq clean/CSJM003G_1.fq
mv output_final/CSJM003B_S34_L006_R1_001_val_1.fq clean/CSJM003B_1.fq
mv output_final/CSJM003J_S42_L006_R1_001_val_1.fq clean/CSJM003J_1.fq
mv output_final/CSJM003L_S44_L006_R1_001_val_1.fq clean/CSJM003L_1.fq
mv output_final/CSJM003I_S41_L006_R1_001_val_1.fq clean/CSJM003I_1.fq
mv output_final/CSJM003H_S40_L006_R1_001_val_1.fq clean/CSJM003H_1.fq
mv output_final/CSJM003k_S43_L006_R1_001_val_1.fq clean/CSJM003k_1.fq
mv output_final/CSJM003E_S37_L006_R1_001_val_1.fq clean/CSJM003E_1.fq
mv output_final/CSJM003A_S33_L006_R1_001_val_1.fq clean/CSJM003A_1.fq
mv output_final/CSJM003D_S36_L006_R1_001_val_1.fq clean/CSJM003D_1.fq

cat output_final/CSJM003E_S37_L006_R1_001_unpaired_1.fq output_final/CSJM003E_S37_L006_R1_001_unpaired_2.fq | sed 's/ 2:/ 1:/g' > clean/CSJM003E_u.fq
cat output_final/CSJM003L_S44_L006_R1_001_unpaired_1.fq output_final/CSJM003L_S44_L006_R1_001_unpaired_2.fq | sed 's/ 2:/ 1:/g' > clean/CSJM003L_u.fq
cat output_final/CSJM003G_S39_L006_R1_001_unpaired_1.fq output_final/CSJM003G_S39_L006_R1_001_unpaired_2.fq | sed 's/ 2:/ 1:/g' > clean/CSJM003G_u.fq
cat output_final/CSJM003I_S41_L006_R1_001_unpaired_1.fq output_final/CSJM003I_S41_L006_R1_001_unpaired_2.fq | sed 's/ 2:/ 1:/g' > clean/CSJM003I_u.fq
cat output_final/CSJM003J_S42_L006_R1_001_unpaired_1.fq output_final/CSJM003J_S42_L006_R1_001_unpaired_2.fq | sed 's/ 2:/ 1:/g' > clean/CSJM003J_u.fq
cat output_final/CSJM003A_S33_L006_R1_001_unpaired_1.fq output_final/CSJM003A_S33_L006_R1_001_unpaired_2.fq | sed 's/ 2:/ 1:/g' > clean/CSJM003A_u.fq
cat output_final/CSJM003B_S34_L006_R1_001_unpaired_1.fq output_final/CSJM003B_S34_L006_R1_001_unpaired_2.fq | sed 's/ 2:/ 1:/g' > clean/CSJM003B_u.fq
cat output_final/CSJM003D_S36_L006_R1_001_unpaired_1.fq output_final/CSJM003D_S36_L006_R1_001_unpaired_2.fq | sed 's/ 2:/ 1:/g' > clean/CSJM003D_u.fq
cat output_final/CSJM003F_S38_L006_R1_001_unpaired_1.fq output_final/CSJM003F_S38_L006_R1_001_unpaired_2.fq | sed 's/ 2:/ 1:/g' > clean/CSJM003F_u.fq
cat output_final/CSJM003k_S43_L006_R1_001_unpaired_1.fq output_final/CSJM003k_S43_L006_R1_001_unpaired_2.fq | sed 's/ 2:/ 1:/g' > clean/CSJM003k_u.fq
cat output_final/CSJM003C_S35_L006_R1_001_unpaired_1.fq output_final/CSJM003C_S35_L006_R1_001_unpaired_2.fq | sed 's/ 2:/ 1:/g' > clean/CSJM003C_u.fq
cat output_final/CSJM003H_S40_L006_R1_001_unpaired_1.fq output_final/CSJM003H_S40_L006_R1_001_unpaired_2.fq | sed 's/ 2:/ 1:/g' > clean/CSJM003H_u.fq
