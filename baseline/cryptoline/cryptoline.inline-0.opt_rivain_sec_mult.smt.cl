proc main (uint8 a_0, uint8 b_0) =
{
  true
  &&
  true
}



(*   %0 = load i8, i8* %a, align 1 *)
mov v0 a_0;
(*   %1 = load i8, i8* %b, align 1 *)
mov v1 b_0;
(*   %conv.i132 = zext i8 %1 to i32 *)
cast v_conv_i132@uint32 v1@uint8;
(*   %and.i133 = and i32 %conv.i132, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133 v_conv_i132 (0x1)@uint32;
(*   %conv1.i134 = zext i8 %0 to i32 *)
cast v_conv1_i134@uint32 v0@uint8;
(*   %mul.i135 = mul nsw i32 %and.i133, %conv1.i134 *)
mul v_mul_i135 v_and_i133 v_conv1_i134;
(*   %conv3.i138 = trunc i32 %mul.i135 to i8 *)
split tmp_v_mul_i135 v_conv3_i138 v_mul_i135 8;
vpc v_conv3_i138@uint8 v_conv3_i138@uint32;
(*   %conv4.i139 = zext i8 %1 to i32 *)
cast v_conv4_i139@uint32 v1@uint8;
(*   %shr.i140 = ashr i32 %conv4.i139, 1 *)
(* You may need to modify here *)
split v_shr_i140 tmp_to_be_used v_conv4_i139 1;
(*   %conv5.i141 = trunc i32 %shr.i140 to i8 *)
split tmp_v_shr_i140 v_conv5_i141 v_shr_i140 8;
vpc v_conv5_i141@uint8 v_conv5_i141@uint32;
(*   %conv6.i142 = zext i8 %0 to i32 *)
cast v_conv6_i142@uint32 v0@uint8;
(*   %shl.i143 = shl i32 %conv6.i142, 1 *)
shls discard_0 v_shl_i143 v_conv6_i142 1;
(*   %conv7.i144 = trunc i32 %shl.i143 to i8 *)
split tmp_v_shl_i143 v_conv7_i144 v_shl_i143 8;
vpc v_conv7_i144@uint8 v_conv7_i144@uint32;
(*   %conv.i132.1 = zext i8 %conv5.i141 to i32 *)
cast v_conv_i132_1@uint32 v_conv5_i141@uint8;
(*   %and.i133.1 = and i32 %conv.i132.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_1 v_conv_i132_1 (0x1)@uint32;
(*   %conv1.i134.1 = zext i8 %conv7.i144 to i32 *)
cast v_conv1_i134_1@uint32 v_conv7_i144@uint8;
(*   %mul.i135.1 = mul nsw i32 %and.i133.1, %conv1.i134.1 *)
mul v_mul_i135_1 v_and_i133_1 v_conv1_i134_1;
(*   %conv2.i136.1 = zext i8 %conv3.i138 to i32 *)
cast v_conv2_i136_1@uint32 v_conv3_i138@uint8;
(*   %xor.i137.1 = xor i32 %conv2.i136.1, %mul.i135.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i137_1 v_conv2_i136_1 v_mul_i135_1;
(*   %conv3.i138.1 = trunc i32 %xor.i137.1 to i8 *)
split tmp_v_xor_i137_1 v_conv3_i138_1 v_xor_i137_1 8;
vpc v_conv3_i138_1@uint8 v_conv3_i138_1@uint32;
(*   %conv4.i139.1 = zext i8 %conv5.i141 to i32 *)
cast v_conv4_i139_1@uint32 v_conv5_i141@uint8;
(*   %shr.i140.1 = ashr i32 %conv4.i139.1, 1 *)
(* You may need to modify here *)
split v_shr_i140_1 tmp_to_be_used v_conv4_i139_1 1;
(*   %conv5.i141.1 = trunc i32 %shr.i140.1 to i8 *)
split tmp_v_shr_i140_1 v_conv5_i141_1 v_shr_i140_1 8;
vpc v_conv5_i141_1@uint8 v_conv5_i141_1@uint32;
(*   %conv6.i142.1 = zext i8 %conv7.i144 to i32 *)
cast v_conv6_i142_1@uint32 v_conv7_i144@uint8;
(*   %shl.i143.1 = shl i32 %conv6.i142.1, 1 *)
shls discard_1 v_shl_i143_1 v_conv6_i142_1 1;
(*   %conv7.i144.1 = trunc i32 %shl.i143.1 to i8 *)
split tmp_v_shl_i143_1 v_conv7_i144_1 v_shl_i143_1 8;
vpc v_conv7_i144_1@uint8 v_conv7_i144_1@uint32;
(*   %conv.i132.2 = zext i8 %conv5.i141.1 to i32 *)
cast v_conv_i132_2@uint32 v_conv5_i141_1@uint8;
(*   %and.i133.2 = and i32 %conv.i132.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_2 v_conv_i132_2 (0x1)@uint32;
(*   %conv1.i134.2 = zext i8 %conv7.i144.1 to i32 *)
cast v_conv1_i134_2@uint32 v_conv7_i144_1@uint8;
(*   %mul.i135.2 = mul nsw i32 %and.i133.2, %conv1.i134.2 *)
mul v_mul_i135_2 v_and_i133_2 v_conv1_i134_2;
(*   %conv2.i136.2 = zext i8 %conv3.i138.1 to i32 *)
cast v_conv2_i136_2@uint32 v_conv3_i138_1@uint8;
(*   %xor.i137.2 = xor i32 %conv2.i136.2, %mul.i135.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i137_2 v_conv2_i136_2 v_mul_i135_2;
(*   %conv3.i138.2 = trunc i32 %xor.i137.2 to i8 *)
split tmp_v_xor_i137_2 v_conv3_i138_2 v_xor_i137_2 8;
vpc v_conv3_i138_2@uint8 v_conv3_i138_2@uint32;
(*   %conv4.i139.2 = zext i8 %conv5.i141.1 to i32 *)
cast v_conv4_i139_2@uint32 v_conv5_i141_1@uint8;
(*   %shr.i140.2 = ashr i32 %conv4.i139.2, 1 *)
(* You may need to modify here *)
split v_shr_i140_2 tmp_to_be_used v_conv4_i139_2 1;
(*   %conv5.i141.2 = trunc i32 %shr.i140.2 to i8 *)
split tmp_v_shr_i140_2 v_conv5_i141_2 v_shr_i140_2 8;
vpc v_conv5_i141_2@uint8 v_conv5_i141_2@uint32;
(*   %conv6.i142.2 = zext i8 %conv7.i144.1 to i32 *)
cast v_conv6_i142_2@uint32 v_conv7_i144_1@uint8;
(*   %shl.i143.2 = shl i32 %conv6.i142.2, 1 *)
shls discard_2 v_shl_i143_2 v_conv6_i142_2 1;
(*   %conv7.i144.2 = trunc i32 %shl.i143.2 to i8 *)
split tmp_v_shl_i143_2 v_conv7_i144_2 v_shl_i143_2 8;
vpc v_conv7_i144_2@uint8 v_conv7_i144_2@uint32;
(*   %conv.i132.3 = zext i8 %conv5.i141.2 to i32 *)
cast v_conv_i132_3@uint32 v_conv5_i141_2@uint8;
(*   %and.i133.3 = and i32 %conv.i132.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_3 v_conv_i132_3 (0x1)@uint32;
(*   %conv1.i134.3 = zext i8 %conv7.i144.2 to i32 *)
cast v_conv1_i134_3@uint32 v_conv7_i144_2@uint8;
(*   %mul.i135.3 = mul nsw i32 %and.i133.3, %conv1.i134.3 *)
mul v_mul_i135_3 v_and_i133_3 v_conv1_i134_3;
(*   %conv2.i136.3 = zext i8 %conv3.i138.2 to i32 *)
cast v_conv2_i136_3@uint32 v_conv3_i138_2@uint8;
(*   %xor.i137.3 = xor i32 %conv2.i136.3, %mul.i135.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i137_3 v_conv2_i136_3 v_mul_i135_3;
(*   %conv3.i138.3 = trunc i32 %xor.i137.3 to i8 *)
split tmp_v_xor_i137_3 v_conv3_i138_3 v_xor_i137_3 8;
vpc v_conv3_i138_3@uint8 v_conv3_i138_3@uint32;
(*   %conv4.i139.3 = zext i8 %conv5.i141.2 to i32 *)
cast v_conv4_i139_3@uint32 v_conv5_i141_2@uint8;
(*   %shr.i140.3 = ashr i32 %conv4.i139.3, 1 *)
(* You may need to modify here *)
split v_shr_i140_3 tmp_to_be_used v_conv4_i139_3 1;
(*   %conv5.i141.3 = trunc i32 %shr.i140.3 to i8 *)
split tmp_v_shr_i140_3 v_conv5_i141_3 v_shr_i140_3 8;
vpc v_conv5_i141_3@uint8 v_conv5_i141_3@uint32;
(*   %conv6.i142.3 = zext i8 %conv7.i144.2 to i32 *)
cast v_conv6_i142_3@uint32 v_conv7_i144_2@uint8;
(*   %shl.i143.3 = shl i32 %conv6.i142.3, 1 *)
shls discard_3 v_shl_i143_3 v_conv6_i142_3 1;
(*   %conv7.i144.3 = trunc i32 %shl.i143.3 to i8 *)
split tmp_v_shl_i143_3 v_conv7_i144_3 v_shl_i143_3 8;
vpc v_conv7_i144_3@uint8 v_conv7_i144_3@uint32;
(*   %conv.i132.4 = zext i8 %conv5.i141.3 to i32 *)
cast v_conv_i132_4@uint32 v_conv5_i141_3@uint8;
(*   %and.i133.4 = and i32 %conv.i132.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_4 v_conv_i132_4 (0x1)@uint32;
(*   %conv1.i134.4 = zext i8 %conv7.i144.3 to i32 *)
cast v_conv1_i134_4@uint32 v_conv7_i144_3@uint8;
(*   %mul.i135.4 = mul nsw i32 %and.i133.4, %conv1.i134.4 *)
mul v_mul_i135_4 v_and_i133_4 v_conv1_i134_4;
(*   %conv2.i136.4 = zext i8 %conv3.i138.3 to i32 *)
cast v_conv2_i136_4@uint32 v_conv3_i138_3@uint8;
(*   %xor.i137.4 = xor i32 %conv2.i136.4, %mul.i135.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i137_4 v_conv2_i136_4 v_mul_i135_4;
(*   %conv3.i138.4 = trunc i32 %xor.i137.4 to i8 *)
split tmp_v_xor_i137_4 v_conv3_i138_4 v_xor_i137_4 8;
vpc v_conv3_i138_4@uint8 v_conv3_i138_4@uint32;
(*   %conv4.i139.4 = zext i8 %conv5.i141.3 to i32 *)
cast v_conv4_i139_4@uint32 v_conv5_i141_3@uint8;
(*   %shr.i140.4 = ashr i32 %conv4.i139.4, 1 *)
(* You may need to modify here *)
split v_shr_i140_4 tmp_to_be_used v_conv4_i139_4 1;
(*   %conv5.i141.4 = trunc i32 %shr.i140.4 to i8 *)
split tmp_v_shr_i140_4 v_conv5_i141_4 v_shr_i140_4 8;
vpc v_conv5_i141_4@uint8 v_conv5_i141_4@uint32;
(*   %conv6.i142.4 = zext i8 %conv7.i144.3 to i32 *)
cast v_conv6_i142_4@uint32 v_conv7_i144_3@uint8;
(*   %shl.i143.4 = shl i32 %conv6.i142.4, 1 *)
shls discard_4 v_shl_i143_4 v_conv6_i142_4 1;
(*   %conv7.i144.4 = trunc i32 %shl.i143.4 to i8 *)
split tmp_v_shl_i143_4 v_conv7_i144_4 v_shl_i143_4 8;
vpc v_conv7_i144_4@uint8 v_conv7_i144_4@uint32;
(*   %conv.i132.5 = zext i8 %conv5.i141.4 to i32 *)
cast v_conv_i132_5@uint32 v_conv5_i141_4@uint8;
(*   %and.i133.5 = and i32 %conv.i132.5, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_5 v_conv_i132_5 (0x1)@uint32;
(*   %conv1.i134.5 = zext i8 %conv7.i144.4 to i32 *)
cast v_conv1_i134_5@uint32 v_conv7_i144_4@uint8;
(*   %mul.i135.5 = mul nsw i32 %and.i133.5, %conv1.i134.5 *)
mul v_mul_i135_5 v_and_i133_5 v_conv1_i134_5;
(*   %conv2.i136.5 = zext i8 %conv3.i138.4 to i32 *)
cast v_conv2_i136_5@uint32 v_conv3_i138_4@uint8;
(*   %xor.i137.5 = xor i32 %conv2.i136.5, %mul.i135.5 *)
(* You may need to modify here *)
xor uint32 v_xor_i137_5 v_conv2_i136_5 v_mul_i135_5;
(*   %conv3.i138.5 = trunc i32 %xor.i137.5 to i8 *)
split tmp_v_xor_i137_5 v_conv3_i138_5 v_xor_i137_5 8;
vpc v_conv3_i138_5@uint8 v_conv3_i138_5@uint32;
(*   %conv4.i139.5 = zext i8 %conv5.i141.4 to i32 *)
cast v_conv4_i139_5@uint32 v_conv5_i141_4@uint8;
(*   %shr.i140.5 = ashr i32 %conv4.i139.5, 1 *)
(* You may need to modify here *)
split v_shr_i140_5 tmp_to_be_used v_conv4_i139_5 1;
(*   %conv5.i141.5 = trunc i32 %shr.i140.5 to i8 *)
split tmp_v_shr_i140_5 v_conv5_i141_5 v_shr_i140_5 8;
vpc v_conv5_i141_5@uint8 v_conv5_i141_5@uint32;
(*   %conv6.i142.5 = zext i8 %conv7.i144.4 to i32 *)
cast v_conv6_i142_5@uint32 v_conv7_i144_4@uint8;
(*   %shl.i143.5 = shl i32 %conv6.i142.5, 1 *)
shls discard_5 v_shl_i143_5 v_conv6_i142_5 1;
(*   %conv7.i144.5 = trunc i32 %shl.i143.5 to i8 *)
split tmp_v_shl_i143_5 v_conv7_i144_5 v_shl_i143_5 8;
vpc v_conv7_i144_5@uint8 v_conv7_i144_5@uint32;
(*   %conv.i132.6 = zext i8 %conv5.i141.5 to i32 *)
cast v_conv_i132_6@uint32 v_conv5_i141_5@uint8;
(*   %and.i133.6 = and i32 %conv.i132.6, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_6 v_conv_i132_6 (0x1)@uint32;
(*   %conv1.i134.6 = zext i8 %conv7.i144.5 to i32 *)
cast v_conv1_i134_6@uint32 v_conv7_i144_5@uint8;
(*   %mul.i135.6 = mul nsw i32 %and.i133.6, %conv1.i134.6 *)
mul v_mul_i135_6 v_and_i133_6 v_conv1_i134_6;
(*   %conv2.i136.6 = zext i8 %conv3.i138.5 to i32 *)
cast v_conv2_i136_6@uint32 v_conv3_i138_5@uint8;
(*   %xor.i137.6 = xor i32 %conv2.i136.6, %mul.i135.6 *)
(* You may need to modify here *)
xor uint32 v_xor_i137_6 v_conv2_i136_6 v_mul_i135_6;
(*   %conv3.i138.6 = trunc i32 %xor.i137.6 to i8 *)
split tmp_v_xor_i137_6 v_conv3_i138_6 v_xor_i137_6 8;
vpc v_conv3_i138_6@uint8 v_conv3_i138_6@uint32;
(*   %conv4.i139.6 = zext i8 %conv5.i141.5 to i32 *)
cast v_conv4_i139_6@uint32 v_conv5_i141_5@uint8;
(*   %shr.i140.6 = ashr i32 %conv4.i139.6, 1 *)
(* You may need to modify here *)
split v_shr_i140_6 tmp_to_be_used v_conv4_i139_6 1;
(*   %conv5.i141.6 = trunc i32 %shr.i140.6 to i8 *)
split tmp_v_shr_i140_6 v_conv5_i141_6 v_shr_i140_6 8;
vpc v_conv5_i141_6@uint8 v_conv5_i141_6@uint32;
(*   %conv6.i142.6 = zext i8 %conv7.i144.5 to i32 *)
cast v_conv6_i142_6@uint32 v_conv7_i144_5@uint8;
(*   %shl.i143.6 = shl i32 %conv6.i142.6, 1 *)
shls discard_6 v_shl_i143_6 v_conv6_i142_6 1;
(*   %conv7.i144.6 = trunc i32 %shl.i143.6 to i8 *)
split tmp_v_shl_i143_6 v_conv7_i144_6 v_shl_i143_6 8;
vpc v_conv7_i144_6@uint8 v_conv7_i144_6@uint32;
(*   %conv.i132.7 = zext i8 %conv5.i141.6 to i32 *)
cast v_conv_i132_7@uint32 v_conv5_i141_6@uint8;
(*   %and.i133.7 = and i32 %conv.i132.7, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_7 v_conv_i132_7 (0x1)@uint32;
(*   %conv1.i134.7 = zext i8 %conv7.i144.6 to i32 *)
cast v_conv1_i134_7@uint32 v_conv7_i144_6@uint8;
(*   %mul.i135.7 = mul nsw i32 %and.i133.7, %conv1.i134.7 *)
mul v_mul_i135_7 v_and_i133_7 v_conv1_i134_7;
(*   %conv2.i136.7 = zext i8 %conv3.i138.6 to i32 *)
cast v_conv2_i136_7@uint32 v_conv3_i138_6@uint8;
(*   %xor.i137.7 = xor i32 %conv2.i136.7, %mul.i135.7 *)
(* You may need to modify here *)
xor uint32 v_xor_i137_7 v_conv2_i136_7 v_mul_i135_7;
(*   %conv3.i138.7 = trunc i32 %xor.i137.7 to i8 *)
split tmp_v_xor_i137_7 v_conv3_i138_7 v_xor_i137_7 8;
vpc v_conv3_i138_7@uint8 v_conv3_i138_7@uint32;
(*   store i8 %conv3.i138.7, i8* %c, align 1 *)
mov c_0 v_conv3_i138_7;
(*   %2 = load i8, i8* %a, align 1 *)
mov v2 a_0;
(*   %3 = load i8, i8* %b, align 1 *)
mov v3 b_0;
(*   %conv.i93 = zext i8 %3 to i32 *)
cast v_conv_i93@uint32 v3@uint8;
(*   %and.i94 = and i32 %conv.i93, 1 *)
(* You may need to modify here *)
and uint32 v_and_i94 v_conv_i93 (0x1)@uint32;
(*   %conv1.i95 = zext i8 %2 to i32 *)
cast v_conv1_i95@uint32 v2@uint8;
(*   %mul.i96 = mul nsw i32 %and.i94, %conv1.i95 *)
mul v_mul_i96 v_and_i94 v_conv1_i95;
(*   %conv3.i99 = trunc i32 %mul.i96 to i8 *)
split tmp_v_mul_i96 v_conv3_i99 v_mul_i96 8;
vpc v_conv3_i99@uint8 v_conv3_i99@uint32;
(*   %conv4.i100 = zext i8 %3 to i32 *)
cast v_conv4_i100@uint32 v3@uint8;
(*   %shr.i101 = ashr i32 %conv4.i100, 1 *)
(* You may need to modify here *)
split v_shr_i101 tmp_to_be_used v_conv4_i100 1;
(*   %conv5.i102 = trunc i32 %shr.i101 to i8 *)
split tmp_v_shr_i101 v_conv5_i102 v_shr_i101 8;
vpc v_conv5_i102@uint8 v_conv5_i102@uint32;
(*   %conv6.i103 = zext i8 %2 to i32 *)
cast v_conv6_i103@uint32 v2@uint8;
(*   %shl.i104 = shl i32 %conv6.i103, 1 *)
shls discard_7 v_shl_i104 v_conv6_i103 1;
(*   %conv7.i105 = trunc i32 %shl.i104 to i8 *)
split tmp_v_shl_i104 v_conv7_i105 v_shl_i104 8;
vpc v_conv7_i105@uint8 v_conv7_i105@uint32;
(*   %conv.i93.1 = zext i8 %conv5.i102 to i32 *)
cast v_conv_i93_1@uint32 v_conv5_i102@uint8;
(*   %and.i94.1 = and i32 %conv.i93.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i94_1 v_conv_i93_1 (0x1)@uint32;
(*   %conv1.i95.1 = zext i8 %conv7.i105 to i32 *)
cast v_conv1_i95_1@uint32 v_conv7_i105@uint8;
(*   %mul.i96.1 = mul nsw i32 %and.i94.1, %conv1.i95.1 *)
mul v_mul_i96_1 v_and_i94_1 v_conv1_i95_1;
(*   %conv2.i97.1 = zext i8 %conv3.i99 to i32 *)
cast v_conv2_i97_1@uint32 v_conv3_i99@uint8;
(*   %xor.i98.1 = xor i32 %conv2.i97.1, %mul.i96.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i98_1 v_conv2_i97_1 v_mul_i96_1;
(*   %conv3.i99.1 = trunc i32 %xor.i98.1 to i8 *)
split tmp_v_xor_i98_1 v_conv3_i99_1 v_xor_i98_1 8;
vpc v_conv3_i99_1@uint8 v_conv3_i99_1@uint32;
(*   %conv4.i100.1 = zext i8 %conv5.i102 to i32 *)
cast v_conv4_i100_1@uint32 v_conv5_i102@uint8;
(*   %shr.i101.1 = ashr i32 %conv4.i100.1, 1 *)
(* You may need to modify here *)
split v_shr_i101_1 tmp_to_be_used v_conv4_i100_1 1;
(*   %conv5.i102.1 = trunc i32 %shr.i101.1 to i8 *)
split tmp_v_shr_i101_1 v_conv5_i102_1 v_shr_i101_1 8;
vpc v_conv5_i102_1@uint8 v_conv5_i102_1@uint32;
(*   %conv6.i103.1 = zext i8 %conv7.i105 to i32 *)
cast v_conv6_i103_1@uint32 v_conv7_i105@uint8;
(*   %shl.i104.1 = shl i32 %conv6.i103.1, 1 *)
shls discard_8 v_shl_i104_1 v_conv6_i103_1 1;
(*   %conv7.i105.1 = trunc i32 %shl.i104.1 to i8 *)
split tmp_v_shl_i104_1 v_conv7_i105_1 v_shl_i104_1 8;
vpc v_conv7_i105_1@uint8 v_conv7_i105_1@uint32;
(*   %conv.i93.2 = zext i8 %conv5.i102.1 to i32 *)
cast v_conv_i93_2@uint32 v_conv5_i102_1@uint8;
(*   %and.i94.2 = and i32 %conv.i93.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i94_2 v_conv_i93_2 (0x1)@uint32;
(*   %conv1.i95.2 = zext i8 %conv7.i105.1 to i32 *)
cast v_conv1_i95_2@uint32 v_conv7_i105_1@uint8;
(*   %mul.i96.2 = mul nsw i32 %and.i94.2, %conv1.i95.2 *)
mul v_mul_i96_2 v_and_i94_2 v_conv1_i95_2;
(*   %conv2.i97.2 = zext i8 %conv3.i99.1 to i32 *)
cast v_conv2_i97_2@uint32 v_conv3_i99_1@uint8;
(*   %xor.i98.2 = xor i32 %conv2.i97.2, %mul.i96.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i98_2 v_conv2_i97_2 v_mul_i96_2;
(*   %conv3.i99.2 = trunc i32 %xor.i98.2 to i8 *)
split tmp_v_xor_i98_2 v_conv3_i99_2 v_xor_i98_2 8;
vpc v_conv3_i99_2@uint8 v_conv3_i99_2@uint32;
(*   %conv4.i100.2 = zext i8 %conv5.i102.1 to i32 *)
cast v_conv4_i100_2@uint32 v_conv5_i102_1@uint8;
(*   %shr.i101.2 = ashr i32 %conv4.i100.2, 1 *)
(* You may need to modify here *)
split v_shr_i101_2 tmp_to_be_used v_conv4_i100_2 1;
(*   %conv5.i102.2 = trunc i32 %shr.i101.2 to i8 *)
split tmp_v_shr_i101_2 v_conv5_i102_2 v_shr_i101_2 8;
vpc v_conv5_i102_2@uint8 v_conv5_i102_2@uint32;
(*   %conv6.i103.2 = zext i8 %conv7.i105.1 to i32 *)
cast v_conv6_i103_2@uint32 v_conv7_i105_1@uint8;
(*   %shl.i104.2 = shl i32 %conv6.i103.2, 1 *)
shls discard_9 v_shl_i104_2 v_conv6_i103_2 1;
(*   %conv7.i105.2 = trunc i32 %shl.i104.2 to i8 *)
split tmp_v_shl_i104_2 v_conv7_i105_2 v_shl_i104_2 8;
vpc v_conv7_i105_2@uint8 v_conv7_i105_2@uint32;
(*   %conv.i93.3 = zext i8 %conv5.i102.2 to i32 *)
cast v_conv_i93_3@uint32 v_conv5_i102_2@uint8;
(*   %and.i94.3 = and i32 %conv.i93.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i94_3 v_conv_i93_3 (0x1)@uint32;
(*   %conv1.i95.3 = zext i8 %conv7.i105.2 to i32 *)
cast v_conv1_i95_3@uint32 v_conv7_i105_2@uint8;
(*   %mul.i96.3 = mul nsw i32 %and.i94.3, %conv1.i95.3 *)
mul v_mul_i96_3 v_and_i94_3 v_conv1_i95_3;
(*   %conv2.i97.3 = zext i8 %conv3.i99.2 to i32 *)
cast v_conv2_i97_3@uint32 v_conv3_i99_2@uint8;
(*   %xor.i98.3 = xor i32 %conv2.i97.3, %mul.i96.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i98_3 v_conv2_i97_3 v_mul_i96_3;
(*   %conv3.i99.3 = trunc i32 %xor.i98.3 to i8 *)
split tmp_v_xor_i98_3 v_conv3_i99_3 v_xor_i98_3 8;
vpc v_conv3_i99_3@uint8 v_conv3_i99_3@uint32;
(*   %conv4.i100.3 = zext i8 %conv5.i102.2 to i32 *)
cast v_conv4_i100_3@uint32 v_conv5_i102_2@uint8;
(*   %shr.i101.3 = ashr i32 %conv4.i100.3, 1 *)
(* You may need to modify here *)
split v_shr_i101_3 tmp_to_be_used v_conv4_i100_3 1;
(*   %conv5.i102.3 = trunc i32 %shr.i101.3 to i8 *)
split tmp_v_shr_i101_3 v_conv5_i102_3 v_shr_i101_3 8;
vpc v_conv5_i102_3@uint8 v_conv5_i102_3@uint32;
(*   %conv6.i103.3 = zext i8 %conv7.i105.2 to i32 *)
cast v_conv6_i103_3@uint32 v_conv7_i105_2@uint8;
(*   %shl.i104.3 = shl i32 %conv6.i103.3, 1 *)
shls discard_10 v_shl_i104_3 v_conv6_i103_3 1;
(*   %conv7.i105.3 = trunc i32 %shl.i104.3 to i8 *)
split tmp_v_shl_i104_3 v_conv7_i105_3 v_shl_i104_3 8;
vpc v_conv7_i105_3@uint8 v_conv7_i105_3@uint32;
(*   %conv.i93.4 = zext i8 %conv5.i102.3 to i32 *)
cast v_conv_i93_4@uint32 v_conv5_i102_3@uint8;
(*   %and.i94.4 = and i32 %conv.i93.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i94_4 v_conv_i93_4 (0x1)@uint32;
(*   %conv1.i95.4 = zext i8 %conv7.i105.3 to i32 *)
cast v_conv1_i95_4@uint32 v_conv7_i105_3@uint8;
(*   %mul.i96.4 = mul nsw i32 %and.i94.4, %conv1.i95.4 *)
mul v_mul_i96_4 v_and_i94_4 v_conv1_i95_4;
(*   %conv2.i97.4 = zext i8 %conv3.i99.3 to i32 *)
cast v_conv2_i97_4@uint32 v_conv3_i99_3@uint8;
(*   %xor.i98.4 = xor i32 %conv2.i97.4, %mul.i96.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i98_4 v_conv2_i97_4 v_mul_i96_4;
(*   %conv3.i99.4 = trunc i32 %xor.i98.4 to i8 *)
split tmp_v_xor_i98_4 v_conv3_i99_4 v_xor_i98_4 8;
vpc v_conv3_i99_4@uint8 v_conv3_i99_4@uint32;
(*   %conv4.i100.4 = zext i8 %conv5.i102.3 to i32 *)
cast v_conv4_i100_4@uint32 v_conv5_i102_3@uint8;
(*   %shr.i101.4 = ashr i32 %conv4.i100.4, 1 *)
(* You may need to modify here *)
split v_shr_i101_4 tmp_to_be_used v_conv4_i100_4 1;
(*   %conv5.i102.4 = trunc i32 %shr.i101.4 to i8 *)
split tmp_v_shr_i101_4 v_conv5_i102_4 v_shr_i101_4 8;
vpc v_conv5_i102_4@uint8 v_conv5_i102_4@uint32;
(*   %conv6.i103.4 = zext i8 %conv7.i105.3 to i32 *)
cast v_conv6_i103_4@uint32 v_conv7_i105_3@uint8;
(*   %shl.i104.4 = shl i32 %conv6.i103.4, 1 *)
shls discard_11 v_shl_i104_4 v_conv6_i103_4 1;
(*   %conv7.i105.4 = trunc i32 %shl.i104.4 to i8 *)
split tmp_v_shl_i104_4 v_conv7_i105_4 v_shl_i104_4 8;
vpc v_conv7_i105_4@uint8 v_conv7_i105_4@uint32;
(*   %conv.i93.5 = zext i8 %conv5.i102.4 to i32 *)
cast v_conv_i93_5@uint32 v_conv5_i102_4@uint8;
(*   %and.i94.5 = and i32 %conv.i93.5, 1 *)
(* You may need to modify here *)
and uint32 v_and_i94_5 v_conv_i93_5 (0x1)@uint32;
(*   %conv1.i95.5 = zext i8 %conv7.i105.4 to i32 *)
cast v_conv1_i95_5@uint32 v_conv7_i105_4@uint8;
(*   %mul.i96.5 = mul nsw i32 %and.i94.5, %conv1.i95.5 *)
mul v_mul_i96_5 v_and_i94_5 v_conv1_i95_5;
(*   %conv2.i97.5 = zext i8 %conv3.i99.4 to i32 *)
cast v_conv2_i97_5@uint32 v_conv3_i99_4@uint8;
(*   %xor.i98.5 = xor i32 %conv2.i97.5, %mul.i96.5 *)
(* You may need to modify here *)
xor uint32 v_xor_i98_5 v_conv2_i97_5 v_mul_i96_5;
(*   %conv3.i99.5 = trunc i32 %xor.i98.5 to i8 *)
split tmp_v_xor_i98_5 v_conv3_i99_5 v_xor_i98_5 8;
vpc v_conv3_i99_5@uint8 v_conv3_i99_5@uint32;
(*   %conv4.i100.5 = zext i8 %conv5.i102.4 to i32 *)
cast v_conv4_i100_5@uint32 v_conv5_i102_4@uint8;
(*   %shr.i101.5 = ashr i32 %conv4.i100.5, 1 *)
(* You may need to modify here *)
split v_shr_i101_5 tmp_to_be_used v_conv4_i100_5 1;
(*   %conv5.i102.5 = trunc i32 %shr.i101.5 to i8 *)
split tmp_v_shr_i101_5 v_conv5_i102_5 v_shr_i101_5 8;
vpc v_conv5_i102_5@uint8 v_conv5_i102_5@uint32;
(*   %conv6.i103.5 = zext i8 %conv7.i105.4 to i32 *)
cast v_conv6_i103_5@uint32 v_conv7_i105_4@uint8;
(*   %shl.i104.5 = shl i32 %conv6.i103.5, 1 *)
shls discard_12 v_shl_i104_5 v_conv6_i103_5 1;
(*   %conv7.i105.5 = trunc i32 %shl.i104.5 to i8 *)
split tmp_v_shl_i104_5 v_conv7_i105_5 v_shl_i104_5 8;
vpc v_conv7_i105_5@uint8 v_conv7_i105_5@uint32;
(*   %conv.i93.6 = zext i8 %conv5.i102.5 to i32 *)
cast v_conv_i93_6@uint32 v_conv5_i102_5@uint8;
(*   %and.i94.6 = and i32 %conv.i93.6, 1 *)
(* You may need to modify here *)
and uint32 v_and_i94_6 v_conv_i93_6 (0x1)@uint32;
(*   %conv1.i95.6 = zext i8 %conv7.i105.5 to i32 *)
cast v_conv1_i95_6@uint32 v_conv7_i105_5@uint8;
(*   %mul.i96.6 = mul nsw i32 %and.i94.6, %conv1.i95.6 *)
mul v_mul_i96_6 v_and_i94_6 v_conv1_i95_6;
(*   %conv2.i97.6 = zext i8 %conv3.i99.5 to i32 *)
cast v_conv2_i97_6@uint32 v_conv3_i99_5@uint8;
(*   %xor.i98.6 = xor i32 %conv2.i97.6, %mul.i96.6 *)
(* You may need to modify here *)
xor uint32 v_xor_i98_6 v_conv2_i97_6 v_mul_i96_6;
(*   %conv3.i99.6 = trunc i32 %xor.i98.6 to i8 *)
split tmp_v_xor_i98_6 v_conv3_i99_6 v_xor_i98_6 8;
vpc v_conv3_i99_6@uint8 v_conv3_i99_6@uint32;
(*   %conv4.i100.6 = zext i8 %conv5.i102.5 to i32 *)
cast v_conv4_i100_6@uint32 v_conv5_i102_5@uint8;
(*   %shr.i101.6 = ashr i32 %conv4.i100.6, 1 *)
(* You may need to modify here *)
split v_shr_i101_6 tmp_to_be_used v_conv4_i100_6 1;
(*   %conv5.i102.6 = trunc i32 %shr.i101.6 to i8 *)
split tmp_v_shr_i101_6 v_conv5_i102_6 v_shr_i101_6 8;
vpc v_conv5_i102_6@uint8 v_conv5_i102_6@uint32;
(*   %conv6.i103.6 = zext i8 %conv7.i105.5 to i32 *)
cast v_conv6_i103_6@uint32 v_conv7_i105_5@uint8;
(*   %shl.i104.6 = shl i32 %conv6.i103.6, 1 *)
shls discard_13 v_shl_i104_6 v_conv6_i103_6 1;
(*   %conv7.i105.6 = trunc i32 %shl.i104.6 to i8 *)
split tmp_v_shl_i104_6 v_conv7_i105_6 v_shl_i104_6 8;
vpc v_conv7_i105_6@uint8 v_conv7_i105_6@uint32;
(*   %conv.i93.7 = zext i8 %conv5.i102.6 to i32 *)
cast v_conv_i93_7@uint32 v_conv5_i102_6@uint8;
(*   %and.i94.7 = and i32 %conv.i93.7, 1 *)
(* You may need to modify here *)
and uint32 v_and_i94_7 v_conv_i93_7 (0x1)@uint32;
(*   %conv1.i95.7 = zext i8 %conv7.i105.6 to i32 *)
cast v_conv1_i95_7@uint32 v_conv7_i105_6@uint8;
(*   %mul.i96.7 = mul nsw i32 %and.i94.7, %conv1.i95.7 *)
mul v_mul_i96_7 v_and_i94_7 v_conv1_i95_7;
(*   %conv2.i97.7 = zext i8 %conv3.i99.6 to i32 *)
cast v_conv2_i97_7@uint32 v_conv3_i99_6@uint8;
(*   %xor.i98.7 = xor i32 %conv2.i97.7, %mul.i96.7 *)
(* You may need to modify here *)
xor uint32 v_xor_i98_7 v_conv2_i97_7 v_mul_i96_7;
(*   %conv3.i99.7 = trunc i32 %xor.i98.7 to i8 *)
split tmp_v_xor_i98_7 v_conv3_i99_7 v_xor_i98_7 8;
vpc v_conv3_i99_7@uint8 v_conv3_i99_7@uint32;
(*   store i8 %conv3.i99.7, i8* %AB, align 1 *)
mov AB_0 v_conv3_i99_7;
(*   %4 = load i8, i8* %c, align 1 *)
mov v4 c_0;
(*   store i8 %4, i8* %C, align 1 *)
mov C_0 v4;
(*   ret void *)


assert true && AB_0=C_0;

mov _ AB_0@uint8;
mov _ C_0@uint8;


{
  true
  &&
  true
}

