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
(*   %conv.i188 = zext i8 %1 to i32 *)
cast v_conv_i188@uint32 v1@uint8;
(*   %and.i189 = and i32 %conv.i188, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189 v_conv_i188 (0x1)@uint32;
(*   %conv1.i190 = zext i8 %0 to i32 *)
cast v_conv1_i190@uint32 v0@uint8;
(*   %mul.i191 = mul nsw i32 %and.i189, %conv1.i190 *)
mul v_mul_i191 v_and_i189 v_conv1_i190;
(*   %conv3.i194 = trunc i32 %mul.i191 to i8 *)
split tmp_v_mul_i191 v_conv3_i194 v_mul_i191 8;
vpc v_conv3_i194@uint8 v_conv3_i194@uint32;
(*   %conv4.i195 = zext i8 %1 to i32 *)
cast v_conv4_i195@uint32 v1@uint8;
(*   %shr.i196 = ashr i32 %conv4.i195, 1 *)
(* You may need to modify here *)
split v_shr_i196 tmp_to_be_used v_conv4_i195 1;
(*   %conv5.i197 = trunc i32 %shr.i196 to i8 *)
split tmp_v_shr_i196 v_conv5_i197 v_shr_i196 8;
vpc v_conv5_i197@uint8 v_conv5_i197@uint32;
(*   %conv6.i198 = zext i8 %0 to i32 *)
cast v_conv6_i198@uint32 v0@uint8;
(*   %shl.i199 = shl i32 %conv6.i198, 1 *)
shls discard_0 v_shl_i199 v_conv6_i198 1;
(*   %conv7.i200 = trunc i32 %shl.i199 to i8 *)
split tmp_v_shl_i199 v_conv7_i200 v_shl_i199 8;
vpc v_conv7_i200@uint8 v_conv7_i200@uint32;
(*   %conv.i188.1 = zext i8 %conv5.i197 to i32 *)
cast v_conv_i188_1@uint32 v_conv5_i197@uint8;
(*   %and.i189.1 = and i32 %conv.i188.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_1 v_conv_i188_1 (0x1)@uint32;
(*   %conv1.i190.1 = zext i8 %conv7.i200 to i32 *)
cast v_conv1_i190_1@uint32 v_conv7_i200@uint8;
(*   %mul.i191.1 = mul nsw i32 %and.i189.1, %conv1.i190.1 *)
mul v_mul_i191_1 v_and_i189_1 v_conv1_i190_1;
(*   %conv2.i192.1 = zext i8 %conv3.i194 to i32 *)
cast v_conv2_i192_1@uint32 v_conv3_i194@uint8;
(*   %xor.i193.1 = xor i32 %conv2.i192.1, %mul.i191.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i193_1 v_conv2_i192_1 v_mul_i191_1;
(*   %conv3.i194.1 = trunc i32 %xor.i193.1 to i8 *)
split tmp_v_xor_i193_1 v_conv3_i194_1 v_xor_i193_1 8;
vpc v_conv3_i194_1@uint8 v_conv3_i194_1@uint32;
(*   %conv4.i195.1 = zext i8 %conv5.i197 to i32 *)
cast v_conv4_i195_1@uint32 v_conv5_i197@uint8;
(*   %shr.i196.1 = ashr i32 %conv4.i195.1, 1 *)
(* You may need to modify here *)
split v_shr_i196_1 tmp_to_be_used v_conv4_i195_1 1;
(*   %conv5.i197.1 = trunc i32 %shr.i196.1 to i8 *)
split tmp_v_shr_i196_1 v_conv5_i197_1 v_shr_i196_1 8;
vpc v_conv5_i197_1@uint8 v_conv5_i197_1@uint32;
(*   %conv6.i198.1 = zext i8 %conv7.i200 to i32 *)
cast v_conv6_i198_1@uint32 v_conv7_i200@uint8;
(*   %shl.i199.1 = shl i32 %conv6.i198.1, 1 *)
shls discard_1 v_shl_i199_1 v_conv6_i198_1 1;
(*   %conv7.i200.1 = trunc i32 %shl.i199.1 to i8 *)
split tmp_v_shl_i199_1 v_conv7_i200_1 v_shl_i199_1 8;
vpc v_conv7_i200_1@uint8 v_conv7_i200_1@uint32;
(*   %conv.i188.2 = zext i8 %conv5.i197.1 to i32 *)
cast v_conv_i188_2@uint32 v_conv5_i197_1@uint8;
(*   %and.i189.2 = and i32 %conv.i188.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_2 v_conv_i188_2 (0x1)@uint32;
(*   %conv1.i190.2 = zext i8 %conv7.i200.1 to i32 *)
cast v_conv1_i190_2@uint32 v_conv7_i200_1@uint8;
(*   %mul.i191.2 = mul nsw i32 %and.i189.2, %conv1.i190.2 *)
mul v_mul_i191_2 v_and_i189_2 v_conv1_i190_2;
(*   %conv2.i192.2 = zext i8 %conv3.i194.1 to i32 *)
cast v_conv2_i192_2@uint32 v_conv3_i194_1@uint8;
(*   %xor.i193.2 = xor i32 %conv2.i192.2, %mul.i191.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i193_2 v_conv2_i192_2 v_mul_i191_2;
(*   %conv3.i194.2 = trunc i32 %xor.i193.2 to i8 *)
split tmp_v_xor_i193_2 v_conv3_i194_2 v_xor_i193_2 8;
vpc v_conv3_i194_2@uint8 v_conv3_i194_2@uint32;
(*   %conv4.i195.2 = zext i8 %conv5.i197.1 to i32 *)
cast v_conv4_i195_2@uint32 v_conv5_i197_1@uint8;
(*   %shr.i196.2 = ashr i32 %conv4.i195.2, 1 *)
(* You may need to modify here *)
split v_shr_i196_2 tmp_to_be_used v_conv4_i195_2 1;
(*   %conv5.i197.2 = trunc i32 %shr.i196.2 to i8 *)
split tmp_v_shr_i196_2 v_conv5_i197_2 v_shr_i196_2 8;
vpc v_conv5_i197_2@uint8 v_conv5_i197_2@uint32;
(*   %conv6.i198.2 = zext i8 %conv7.i200.1 to i32 *)
cast v_conv6_i198_2@uint32 v_conv7_i200_1@uint8;
(*   %shl.i199.2 = shl i32 %conv6.i198.2, 1 *)
shls discard_2 v_shl_i199_2 v_conv6_i198_2 1;
(*   %conv7.i200.2 = trunc i32 %shl.i199.2 to i8 *)
split tmp_v_shl_i199_2 v_conv7_i200_2 v_shl_i199_2 8;
vpc v_conv7_i200_2@uint8 v_conv7_i200_2@uint32;
(*   %conv.i188.3 = zext i8 %conv5.i197.2 to i32 *)
cast v_conv_i188_3@uint32 v_conv5_i197_2@uint8;
(*   %and.i189.3 = and i32 %conv.i188.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_3 v_conv_i188_3 (0x1)@uint32;
(*   %conv1.i190.3 = zext i8 %conv7.i200.2 to i32 *)
cast v_conv1_i190_3@uint32 v_conv7_i200_2@uint8;
(*   %mul.i191.3 = mul nsw i32 %and.i189.3, %conv1.i190.3 *)
mul v_mul_i191_3 v_and_i189_3 v_conv1_i190_3;
(*   %conv2.i192.3 = zext i8 %conv3.i194.2 to i32 *)
cast v_conv2_i192_3@uint32 v_conv3_i194_2@uint8;
(*   %xor.i193.3 = xor i32 %conv2.i192.3, %mul.i191.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i193_3 v_conv2_i192_3 v_mul_i191_3;
(*   %conv3.i194.3 = trunc i32 %xor.i193.3 to i8 *)
split tmp_v_xor_i193_3 v_conv3_i194_3 v_xor_i193_3 8;
vpc v_conv3_i194_3@uint8 v_conv3_i194_3@uint32;
(*   %conv4.i195.3 = zext i8 %conv5.i197.2 to i32 *)
cast v_conv4_i195_3@uint32 v_conv5_i197_2@uint8;
(*   %shr.i196.3 = ashr i32 %conv4.i195.3, 1 *)
(* You may need to modify here *)
split v_shr_i196_3 tmp_to_be_used v_conv4_i195_3 1;
(*   %conv5.i197.3 = trunc i32 %shr.i196.3 to i8 *)
split tmp_v_shr_i196_3 v_conv5_i197_3 v_shr_i196_3 8;
vpc v_conv5_i197_3@uint8 v_conv5_i197_3@uint32;
(*   %conv6.i198.3 = zext i8 %conv7.i200.2 to i32 *)
cast v_conv6_i198_3@uint32 v_conv7_i200_2@uint8;
(*   %shl.i199.3 = shl i32 %conv6.i198.3, 1 *)
shls discard_3 v_shl_i199_3 v_conv6_i198_3 1;
(*   %conv7.i200.3 = trunc i32 %shl.i199.3 to i8 *)
split tmp_v_shl_i199_3 v_conv7_i200_3 v_shl_i199_3 8;
vpc v_conv7_i200_3@uint8 v_conv7_i200_3@uint32;
(*   %conv.i188.4 = zext i8 %conv5.i197.3 to i32 *)
cast v_conv_i188_4@uint32 v_conv5_i197_3@uint8;
(*   %and.i189.4 = and i32 %conv.i188.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_4 v_conv_i188_4 (0x1)@uint32;
(*   %conv1.i190.4 = zext i8 %conv7.i200.3 to i32 *)
cast v_conv1_i190_4@uint32 v_conv7_i200_3@uint8;
(*   %mul.i191.4 = mul nsw i32 %and.i189.4, %conv1.i190.4 *)
mul v_mul_i191_4 v_and_i189_4 v_conv1_i190_4;
(*   %conv2.i192.4 = zext i8 %conv3.i194.3 to i32 *)
cast v_conv2_i192_4@uint32 v_conv3_i194_3@uint8;
(*   %xor.i193.4 = xor i32 %conv2.i192.4, %mul.i191.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i193_4 v_conv2_i192_4 v_mul_i191_4;
(*   %conv3.i194.4 = trunc i32 %xor.i193.4 to i8 *)
split tmp_v_xor_i193_4 v_conv3_i194_4 v_xor_i193_4 8;
vpc v_conv3_i194_4@uint8 v_conv3_i194_4@uint32;
(*   %conv4.i195.4 = zext i8 %conv5.i197.3 to i32 *)
cast v_conv4_i195_4@uint32 v_conv5_i197_3@uint8;
(*   %shr.i196.4 = ashr i32 %conv4.i195.4, 1 *)
(* You may need to modify here *)
split v_shr_i196_4 tmp_to_be_used v_conv4_i195_4 1;
(*   %conv5.i197.4 = trunc i32 %shr.i196.4 to i8 *)
split tmp_v_shr_i196_4 v_conv5_i197_4 v_shr_i196_4 8;
vpc v_conv5_i197_4@uint8 v_conv5_i197_4@uint32;
(*   %conv6.i198.4 = zext i8 %conv7.i200.3 to i32 *)
cast v_conv6_i198_4@uint32 v_conv7_i200_3@uint8;
(*   %shl.i199.4 = shl i32 %conv6.i198.4, 1 *)
shls discard_4 v_shl_i199_4 v_conv6_i198_4 1;
(*   %conv7.i200.4 = trunc i32 %shl.i199.4 to i8 *)
split tmp_v_shl_i199_4 v_conv7_i200_4 v_shl_i199_4 8;
vpc v_conv7_i200_4@uint8 v_conv7_i200_4@uint32;
(*   %conv.i188.5 = zext i8 %conv5.i197.4 to i32 *)
cast v_conv_i188_5@uint32 v_conv5_i197_4@uint8;
(*   %and.i189.5 = and i32 %conv.i188.5, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_5 v_conv_i188_5 (0x1)@uint32;
(*   %conv1.i190.5 = zext i8 %conv7.i200.4 to i32 *)
cast v_conv1_i190_5@uint32 v_conv7_i200_4@uint8;
(*   %mul.i191.5 = mul nsw i32 %and.i189.5, %conv1.i190.5 *)
mul v_mul_i191_5 v_and_i189_5 v_conv1_i190_5;
(*   %conv2.i192.5 = zext i8 %conv3.i194.4 to i32 *)
cast v_conv2_i192_5@uint32 v_conv3_i194_4@uint8;
(*   %xor.i193.5 = xor i32 %conv2.i192.5, %mul.i191.5 *)
(* You may need to modify here *)
xor uint32 v_xor_i193_5 v_conv2_i192_5 v_mul_i191_5;
(*   %conv3.i194.5 = trunc i32 %xor.i193.5 to i8 *)
split tmp_v_xor_i193_5 v_conv3_i194_5 v_xor_i193_5 8;
vpc v_conv3_i194_5@uint8 v_conv3_i194_5@uint32;
(*   %conv4.i195.5 = zext i8 %conv5.i197.4 to i32 *)
cast v_conv4_i195_5@uint32 v_conv5_i197_4@uint8;
(*   %shr.i196.5 = ashr i32 %conv4.i195.5, 1 *)
(* You may need to modify here *)
split v_shr_i196_5 tmp_to_be_used v_conv4_i195_5 1;
(*   %conv5.i197.5 = trunc i32 %shr.i196.5 to i8 *)
split tmp_v_shr_i196_5 v_conv5_i197_5 v_shr_i196_5 8;
vpc v_conv5_i197_5@uint8 v_conv5_i197_5@uint32;
(*   %conv6.i198.5 = zext i8 %conv7.i200.4 to i32 *)
cast v_conv6_i198_5@uint32 v_conv7_i200_4@uint8;
(*   %shl.i199.5 = shl i32 %conv6.i198.5, 1 *)
shls discard_5 v_shl_i199_5 v_conv6_i198_5 1;
(*   %conv7.i200.5 = trunc i32 %shl.i199.5 to i8 *)
split tmp_v_shl_i199_5 v_conv7_i200_5 v_shl_i199_5 8;
vpc v_conv7_i200_5@uint8 v_conv7_i200_5@uint32;
(*   %conv.i188.6 = zext i8 %conv5.i197.5 to i32 *)
cast v_conv_i188_6@uint32 v_conv5_i197_5@uint8;
(*   %and.i189.6 = and i32 %conv.i188.6, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_6 v_conv_i188_6 (0x1)@uint32;
(*   %conv1.i190.6 = zext i8 %conv7.i200.5 to i32 *)
cast v_conv1_i190_6@uint32 v_conv7_i200_5@uint8;
(*   %mul.i191.6 = mul nsw i32 %and.i189.6, %conv1.i190.6 *)
mul v_mul_i191_6 v_and_i189_6 v_conv1_i190_6;
(*   %conv2.i192.6 = zext i8 %conv3.i194.5 to i32 *)
cast v_conv2_i192_6@uint32 v_conv3_i194_5@uint8;
(*   %xor.i193.6 = xor i32 %conv2.i192.6, %mul.i191.6 *)
(* You may need to modify here *)
xor uint32 v_xor_i193_6 v_conv2_i192_6 v_mul_i191_6;
(*   %conv3.i194.6 = trunc i32 %xor.i193.6 to i8 *)
split tmp_v_xor_i193_6 v_conv3_i194_6 v_xor_i193_6 8;
vpc v_conv3_i194_6@uint8 v_conv3_i194_6@uint32;
(*   %conv4.i195.6 = zext i8 %conv5.i197.5 to i32 *)
cast v_conv4_i195_6@uint32 v_conv5_i197_5@uint8;
(*   %shr.i196.6 = ashr i32 %conv4.i195.6, 1 *)
(* You may need to modify here *)
split v_shr_i196_6 tmp_to_be_used v_conv4_i195_6 1;
(*   %conv5.i197.6 = trunc i32 %shr.i196.6 to i8 *)
split tmp_v_shr_i196_6 v_conv5_i197_6 v_shr_i196_6 8;
vpc v_conv5_i197_6@uint8 v_conv5_i197_6@uint32;
(*   %conv6.i198.6 = zext i8 %conv7.i200.5 to i32 *)
cast v_conv6_i198_6@uint32 v_conv7_i200_5@uint8;
(*   %shl.i199.6 = shl i32 %conv6.i198.6, 1 *)
shls discard_6 v_shl_i199_6 v_conv6_i198_6 1;
(*   %conv7.i200.6 = trunc i32 %shl.i199.6 to i8 *)
split tmp_v_shl_i199_6 v_conv7_i200_6 v_shl_i199_6 8;
vpc v_conv7_i200_6@uint8 v_conv7_i200_6@uint32;
(*   %conv.i188.7 = zext i8 %conv5.i197.6 to i32 *)
cast v_conv_i188_7@uint32 v_conv5_i197_6@uint8;
(*   %and.i189.7 = and i32 %conv.i188.7, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_7 v_conv_i188_7 (0x1)@uint32;
(*   %conv1.i190.7 = zext i8 %conv7.i200.6 to i32 *)
cast v_conv1_i190_7@uint32 v_conv7_i200_6@uint8;
(*   %mul.i191.7 = mul nsw i32 %and.i189.7, %conv1.i190.7 *)
mul v_mul_i191_7 v_and_i189_7 v_conv1_i190_7;
(*   %conv2.i192.7 = zext i8 %conv3.i194.6 to i32 *)
cast v_conv2_i192_7@uint32 v_conv3_i194_6@uint8;
(*   %xor.i193.7 = xor i32 %conv2.i192.7, %mul.i191.7 *)
(* You may need to modify here *)
xor uint32 v_xor_i193_7 v_conv2_i192_7 v_mul_i191_7;
(*   %conv3.i194.7 = trunc i32 %xor.i193.7 to i8 *)
split tmp_v_xor_i193_7 v_conv3_i194_7 v_xor_i193_7 8;
vpc v_conv3_i194_7@uint8 v_conv3_i194_7@uint32;
(*   store i8 %conv3.i194.7, i8* %c, align 1 *)
mov c_0 v_conv3_i194_7;
(*   %2 = load i8, i8* %a, align 1 *)
mov v2 a_0;
(*   %3 = load i8, i8* %b, align 1 *)
mov v3 b_0;
(*   %conv.i149 = zext i8 %3 to i32 *)
cast v_conv_i149@uint32 v3@uint8;
(*   %and.i150 = and i32 %conv.i149, 1 *)
(* You may need to modify here *)
and uint32 v_and_i150 v_conv_i149 (0x1)@uint32;
(*   %conv1.i151 = zext i8 %2 to i32 *)
cast v_conv1_i151@uint32 v2@uint8;
(*   %mul.i152 = mul nsw i32 %and.i150, %conv1.i151 *)
mul v_mul_i152 v_and_i150 v_conv1_i151;
(*   %conv3.i155 = trunc i32 %mul.i152 to i8 *)
split tmp_v_mul_i152 v_conv3_i155 v_mul_i152 8;
vpc v_conv3_i155@uint8 v_conv3_i155@uint32;
(*   %conv4.i156 = zext i8 %3 to i32 *)
cast v_conv4_i156@uint32 v3@uint8;
(*   %shr.i157 = ashr i32 %conv4.i156, 1 *)
(* You may need to modify here *)
split v_shr_i157 tmp_to_be_used v_conv4_i156 1;
(*   %conv5.i158 = trunc i32 %shr.i157 to i8 *)
split tmp_v_shr_i157 v_conv5_i158 v_shr_i157 8;
vpc v_conv5_i158@uint8 v_conv5_i158@uint32;
(*   %conv6.i159 = zext i8 %2 to i32 *)
cast v_conv6_i159@uint32 v2@uint8;
(*   %shl.i160 = shl i32 %conv6.i159, 1 *)
shls discard_7 v_shl_i160 v_conv6_i159 1;
(*   %conv7.i161 = trunc i32 %shl.i160 to i8 *)
split tmp_v_shl_i160 v_conv7_i161 v_shl_i160 8;
vpc v_conv7_i161@uint8 v_conv7_i161@uint32;
(*   %conv.i149.1 = zext i8 %conv5.i158 to i32 *)
cast v_conv_i149_1@uint32 v_conv5_i158@uint8;
(*   %and.i150.1 = and i32 %conv.i149.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i150_1 v_conv_i149_1 (0x1)@uint32;
(*   %conv1.i151.1 = zext i8 %conv7.i161 to i32 *)
cast v_conv1_i151_1@uint32 v_conv7_i161@uint8;
(*   %mul.i152.1 = mul nsw i32 %and.i150.1, %conv1.i151.1 *)
mul v_mul_i152_1 v_and_i150_1 v_conv1_i151_1;
(*   %conv2.i153.1 = zext i8 %conv3.i155 to i32 *)
cast v_conv2_i153_1@uint32 v_conv3_i155@uint8;
(*   %xor.i154.1 = xor i32 %conv2.i153.1, %mul.i152.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i154_1 v_conv2_i153_1 v_mul_i152_1;
(*   %conv3.i155.1 = trunc i32 %xor.i154.1 to i8 *)
split tmp_v_xor_i154_1 v_conv3_i155_1 v_xor_i154_1 8;
vpc v_conv3_i155_1@uint8 v_conv3_i155_1@uint32;
(*   %conv4.i156.1 = zext i8 %conv5.i158 to i32 *)
cast v_conv4_i156_1@uint32 v_conv5_i158@uint8;
(*   %shr.i157.1 = ashr i32 %conv4.i156.1, 1 *)
(* You may need to modify here *)
split v_shr_i157_1 tmp_to_be_used v_conv4_i156_1 1;
(*   %conv5.i158.1 = trunc i32 %shr.i157.1 to i8 *)
split tmp_v_shr_i157_1 v_conv5_i158_1 v_shr_i157_1 8;
vpc v_conv5_i158_1@uint8 v_conv5_i158_1@uint32;
(*   %conv6.i159.1 = zext i8 %conv7.i161 to i32 *)
cast v_conv6_i159_1@uint32 v_conv7_i161@uint8;
(*   %shl.i160.1 = shl i32 %conv6.i159.1, 1 *)
shls discard_8 v_shl_i160_1 v_conv6_i159_1 1;
(*   %conv7.i161.1 = trunc i32 %shl.i160.1 to i8 *)
split tmp_v_shl_i160_1 v_conv7_i161_1 v_shl_i160_1 8;
vpc v_conv7_i161_1@uint8 v_conv7_i161_1@uint32;
(*   %conv.i149.2 = zext i8 %conv5.i158.1 to i32 *)
cast v_conv_i149_2@uint32 v_conv5_i158_1@uint8;
(*   %and.i150.2 = and i32 %conv.i149.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i150_2 v_conv_i149_2 (0x1)@uint32;
(*   %conv1.i151.2 = zext i8 %conv7.i161.1 to i32 *)
cast v_conv1_i151_2@uint32 v_conv7_i161_1@uint8;
(*   %mul.i152.2 = mul nsw i32 %and.i150.2, %conv1.i151.2 *)
mul v_mul_i152_2 v_and_i150_2 v_conv1_i151_2;
(*   %conv2.i153.2 = zext i8 %conv3.i155.1 to i32 *)
cast v_conv2_i153_2@uint32 v_conv3_i155_1@uint8;
(*   %xor.i154.2 = xor i32 %conv2.i153.2, %mul.i152.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i154_2 v_conv2_i153_2 v_mul_i152_2;
(*   %conv3.i155.2 = trunc i32 %xor.i154.2 to i8 *)
split tmp_v_xor_i154_2 v_conv3_i155_2 v_xor_i154_2 8;
vpc v_conv3_i155_2@uint8 v_conv3_i155_2@uint32;
(*   %conv4.i156.2 = zext i8 %conv5.i158.1 to i32 *)
cast v_conv4_i156_2@uint32 v_conv5_i158_1@uint8;
(*   %shr.i157.2 = ashr i32 %conv4.i156.2, 1 *)
(* You may need to modify here *)
split v_shr_i157_2 tmp_to_be_used v_conv4_i156_2 1;
(*   %conv5.i158.2 = trunc i32 %shr.i157.2 to i8 *)
split tmp_v_shr_i157_2 v_conv5_i158_2 v_shr_i157_2 8;
vpc v_conv5_i158_2@uint8 v_conv5_i158_2@uint32;
(*   %conv6.i159.2 = zext i8 %conv7.i161.1 to i32 *)
cast v_conv6_i159_2@uint32 v_conv7_i161_1@uint8;
(*   %shl.i160.2 = shl i32 %conv6.i159.2, 1 *)
shls discard_9 v_shl_i160_2 v_conv6_i159_2 1;
(*   %conv7.i161.2 = trunc i32 %shl.i160.2 to i8 *)
split tmp_v_shl_i160_2 v_conv7_i161_2 v_shl_i160_2 8;
vpc v_conv7_i161_2@uint8 v_conv7_i161_2@uint32;
(*   %conv.i149.3 = zext i8 %conv5.i158.2 to i32 *)
cast v_conv_i149_3@uint32 v_conv5_i158_2@uint8;
(*   %and.i150.3 = and i32 %conv.i149.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i150_3 v_conv_i149_3 (0x1)@uint32;
(*   %conv1.i151.3 = zext i8 %conv7.i161.2 to i32 *)
cast v_conv1_i151_3@uint32 v_conv7_i161_2@uint8;
(*   %mul.i152.3 = mul nsw i32 %and.i150.3, %conv1.i151.3 *)
mul v_mul_i152_3 v_and_i150_3 v_conv1_i151_3;
(*   %conv2.i153.3 = zext i8 %conv3.i155.2 to i32 *)
cast v_conv2_i153_3@uint32 v_conv3_i155_2@uint8;
(*   %xor.i154.3 = xor i32 %conv2.i153.3, %mul.i152.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i154_3 v_conv2_i153_3 v_mul_i152_3;
(*   %conv3.i155.3 = trunc i32 %xor.i154.3 to i8 *)
split tmp_v_xor_i154_3 v_conv3_i155_3 v_xor_i154_3 8;
vpc v_conv3_i155_3@uint8 v_conv3_i155_3@uint32;
(*   %conv4.i156.3 = zext i8 %conv5.i158.2 to i32 *)
cast v_conv4_i156_3@uint32 v_conv5_i158_2@uint8;
(*   %shr.i157.3 = ashr i32 %conv4.i156.3, 1 *)
(* You may need to modify here *)
split v_shr_i157_3 tmp_to_be_used v_conv4_i156_3 1;
(*   %conv5.i158.3 = trunc i32 %shr.i157.3 to i8 *)
split tmp_v_shr_i157_3 v_conv5_i158_3 v_shr_i157_3 8;
vpc v_conv5_i158_3@uint8 v_conv5_i158_3@uint32;
(*   %conv6.i159.3 = zext i8 %conv7.i161.2 to i32 *)
cast v_conv6_i159_3@uint32 v_conv7_i161_2@uint8;
(*   %shl.i160.3 = shl i32 %conv6.i159.3, 1 *)
shls discard_10 v_shl_i160_3 v_conv6_i159_3 1;
(*   %conv7.i161.3 = trunc i32 %shl.i160.3 to i8 *)
split tmp_v_shl_i160_3 v_conv7_i161_3 v_shl_i160_3 8;
vpc v_conv7_i161_3@uint8 v_conv7_i161_3@uint32;
(*   %conv.i149.4 = zext i8 %conv5.i158.3 to i32 *)
cast v_conv_i149_4@uint32 v_conv5_i158_3@uint8;
(*   %and.i150.4 = and i32 %conv.i149.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i150_4 v_conv_i149_4 (0x1)@uint32;
(*   %conv1.i151.4 = zext i8 %conv7.i161.3 to i32 *)
cast v_conv1_i151_4@uint32 v_conv7_i161_3@uint8;
(*   %mul.i152.4 = mul nsw i32 %and.i150.4, %conv1.i151.4 *)
mul v_mul_i152_4 v_and_i150_4 v_conv1_i151_4;
(*   %conv2.i153.4 = zext i8 %conv3.i155.3 to i32 *)
cast v_conv2_i153_4@uint32 v_conv3_i155_3@uint8;
(*   %xor.i154.4 = xor i32 %conv2.i153.4, %mul.i152.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i154_4 v_conv2_i153_4 v_mul_i152_4;
(*   %conv3.i155.4 = trunc i32 %xor.i154.4 to i8 *)
split tmp_v_xor_i154_4 v_conv3_i155_4 v_xor_i154_4 8;
vpc v_conv3_i155_4@uint8 v_conv3_i155_4@uint32;
(*   %conv4.i156.4 = zext i8 %conv5.i158.3 to i32 *)
cast v_conv4_i156_4@uint32 v_conv5_i158_3@uint8;
(*   %shr.i157.4 = ashr i32 %conv4.i156.4, 1 *)
(* You may need to modify here *)
split v_shr_i157_4 tmp_to_be_used v_conv4_i156_4 1;
(*   %conv5.i158.4 = trunc i32 %shr.i157.4 to i8 *)
split tmp_v_shr_i157_4 v_conv5_i158_4 v_shr_i157_4 8;
vpc v_conv5_i158_4@uint8 v_conv5_i158_4@uint32;
(*   %conv6.i159.4 = zext i8 %conv7.i161.3 to i32 *)
cast v_conv6_i159_4@uint32 v_conv7_i161_3@uint8;
(*   %shl.i160.4 = shl i32 %conv6.i159.4, 1 *)
shls discard_11 v_shl_i160_4 v_conv6_i159_4 1;
(*   %conv7.i161.4 = trunc i32 %shl.i160.4 to i8 *)
split tmp_v_shl_i160_4 v_conv7_i161_4 v_shl_i160_4 8;
vpc v_conv7_i161_4@uint8 v_conv7_i161_4@uint32;
(*   %conv.i149.5 = zext i8 %conv5.i158.4 to i32 *)
cast v_conv_i149_5@uint32 v_conv5_i158_4@uint8;
(*   %and.i150.5 = and i32 %conv.i149.5, 1 *)
(* You may need to modify here *)
and uint32 v_and_i150_5 v_conv_i149_5 (0x1)@uint32;
(*   %conv1.i151.5 = zext i8 %conv7.i161.4 to i32 *)
cast v_conv1_i151_5@uint32 v_conv7_i161_4@uint8;
(*   %mul.i152.5 = mul nsw i32 %and.i150.5, %conv1.i151.5 *)
mul v_mul_i152_5 v_and_i150_5 v_conv1_i151_5;
(*   %conv2.i153.5 = zext i8 %conv3.i155.4 to i32 *)
cast v_conv2_i153_5@uint32 v_conv3_i155_4@uint8;
(*   %xor.i154.5 = xor i32 %conv2.i153.5, %mul.i152.5 *)
(* You may need to modify here *)
xor uint32 v_xor_i154_5 v_conv2_i153_5 v_mul_i152_5;
(*   %conv3.i155.5 = trunc i32 %xor.i154.5 to i8 *)
split tmp_v_xor_i154_5 v_conv3_i155_5 v_xor_i154_5 8;
vpc v_conv3_i155_5@uint8 v_conv3_i155_5@uint32;
(*   %conv4.i156.5 = zext i8 %conv5.i158.4 to i32 *)
cast v_conv4_i156_5@uint32 v_conv5_i158_4@uint8;
(*   %shr.i157.5 = ashr i32 %conv4.i156.5, 1 *)
(* You may need to modify here *)
split v_shr_i157_5 tmp_to_be_used v_conv4_i156_5 1;
(*   %conv5.i158.5 = trunc i32 %shr.i157.5 to i8 *)
split tmp_v_shr_i157_5 v_conv5_i158_5 v_shr_i157_5 8;
vpc v_conv5_i158_5@uint8 v_conv5_i158_5@uint32;
(*   %conv6.i159.5 = zext i8 %conv7.i161.4 to i32 *)
cast v_conv6_i159_5@uint32 v_conv7_i161_4@uint8;
(*   %shl.i160.5 = shl i32 %conv6.i159.5, 1 *)
shls discard_12 v_shl_i160_5 v_conv6_i159_5 1;
(*   %conv7.i161.5 = trunc i32 %shl.i160.5 to i8 *)
split tmp_v_shl_i160_5 v_conv7_i161_5 v_shl_i160_5 8;
vpc v_conv7_i161_5@uint8 v_conv7_i161_5@uint32;
(*   %conv.i149.6 = zext i8 %conv5.i158.5 to i32 *)
cast v_conv_i149_6@uint32 v_conv5_i158_5@uint8;
(*   %and.i150.6 = and i32 %conv.i149.6, 1 *)
(* You may need to modify here *)
and uint32 v_and_i150_6 v_conv_i149_6 (0x1)@uint32;
(*   %conv1.i151.6 = zext i8 %conv7.i161.5 to i32 *)
cast v_conv1_i151_6@uint32 v_conv7_i161_5@uint8;
(*   %mul.i152.6 = mul nsw i32 %and.i150.6, %conv1.i151.6 *)
mul v_mul_i152_6 v_and_i150_6 v_conv1_i151_6;
(*   %conv2.i153.6 = zext i8 %conv3.i155.5 to i32 *)
cast v_conv2_i153_6@uint32 v_conv3_i155_5@uint8;
(*   %xor.i154.6 = xor i32 %conv2.i153.6, %mul.i152.6 *)
(* You may need to modify here *)
xor uint32 v_xor_i154_6 v_conv2_i153_6 v_mul_i152_6;
(*   %conv3.i155.6 = trunc i32 %xor.i154.6 to i8 *)
split tmp_v_xor_i154_6 v_conv3_i155_6 v_xor_i154_6 8;
vpc v_conv3_i155_6@uint8 v_conv3_i155_6@uint32;
(*   %conv4.i156.6 = zext i8 %conv5.i158.5 to i32 *)
cast v_conv4_i156_6@uint32 v_conv5_i158_5@uint8;
(*   %shr.i157.6 = ashr i32 %conv4.i156.6, 1 *)
(* You may need to modify here *)
split v_shr_i157_6 tmp_to_be_used v_conv4_i156_6 1;
(*   %conv5.i158.6 = trunc i32 %shr.i157.6 to i8 *)
split tmp_v_shr_i157_6 v_conv5_i158_6 v_shr_i157_6 8;
vpc v_conv5_i158_6@uint8 v_conv5_i158_6@uint32;
(*   %conv6.i159.6 = zext i8 %conv7.i161.5 to i32 *)
cast v_conv6_i159_6@uint32 v_conv7_i161_5@uint8;
(*   %shl.i160.6 = shl i32 %conv6.i159.6, 1 *)
shls discard_13 v_shl_i160_6 v_conv6_i159_6 1;
(*   %conv7.i161.6 = trunc i32 %shl.i160.6 to i8 *)
split tmp_v_shl_i160_6 v_conv7_i161_6 v_shl_i160_6 8;
vpc v_conv7_i161_6@uint8 v_conv7_i161_6@uint32;
(*   %conv.i149.7 = zext i8 %conv5.i158.6 to i32 *)
cast v_conv_i149_7@uint32 v_conv5_i158_6@uint8;
(*   %and.i150.7 = and i32 %conv.i149.7, 1 *)
(* You may need to modify here *)
and uint32 v_and_i150_7 v_conv_i149_7 (0x1)@uint32;
(*   %conv1.i151.7 = zext i8 %conv7.i161.6 to i32 *)
cast v_conv1_i151_7@uint32 v_conv7_i161_6@uint8;
(*   %mul.i152.7 = mul nsw i32 %and.i150.7, %conv1.i151.7 *)
mul v_mul_i152_7 v_and_i150_7 v_conv1_i151_7;
(*   %conv2.i153.7 = zext i8 %conv3.i155.6 to i32 *)
cast v_conv2_i153_7@uint32 v_conv3_i155_6@uint8;
(*   %xor.i154.7 = xor i32 %conv2.i153.7, %mul.i152.7 *)
(* You may need to modify here *)
xor uint32 v_xor_i154_7 v_conv2_i153_7 v_mul_i152_7;
(*   %conv3.i155.7 = trunc i32 %xor.i154.7 to i8 *)
split tmp_v_xor_i154_7 v_conv3_i155_7 v_xor_i154_7 8;
vpc v_conv3_i155_7@uint8 v_conv3_i155_7@uint32;
(*   store i8 %conv3.i155.7, i8* %AB, align 1 *)
mov AB_0 v_conv3_i155_7;
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

