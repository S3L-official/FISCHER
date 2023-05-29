proc main (uint8 a_0, uint8 a_1, uint8 a_2, uint8 a_3, uint8 a_4, uint8 b_0, uint8 b_1, uint8 b_2, uint8 b_3, uint8 b_4, uint8 r_2, uint8 r_4, uint8 r_7, uint8 r_9, uint8 r_14, uint8 r_19, uint8 rr_1, uint8 rr_3) =
{
  true
  &&
  true
}



(*   %alpha = alloca [25 x i8], align 16 *)
(*   %t = alloca [25 x i8], align 16 *)
(*   %0 = load i8, i8* %a, align 1 *)
mov v0 a_0;
(*   %1 = load i8, i8* %b, align 1 *)
mov v1 b_0;
(*   %conv.i = zext i8 %1 to i32 *)
cast v_conv_i@uint32 v1@uint8;
(*   %and.i = and i32 %conv.i, 1 *)
(* You may need to modify here *)
and uint32 v_and_i v_conv_i (0x1)@uint32;
(*   %conv1.i = zext i8 %0 to i32 *)
cast v_conv1_i@uint32 v0@uint8;
(*   %mul.i = mul nsw i32 %and.i, %conv1.i *)
mul v_mul_i v_and_i v_conv1_i;
(*   %conv3.i = trunc i32 %mul.i to i8 *)
split tmp_v_mul_i v_conv3_i v_mul_i 8;
vpc v_conv3_i@uint8 v_conv3_i@uint32;
(*   %conv4.i = zext i8 %1 to i32 *)
cast v_conv4_i@uint32 v1@uint8;
(*   %shr.i = ashr i32 %conv4.i, 1 *)
(* You may need to modify here *)
split v_shr_i tmp_to_be_used v_conv4_i 1;
(*   %conv5.i = trunc i32 %shr.i to i8 *)
split tmp_v_shr_i v_conv5_i v_shr_i 8;
vpc v_conv5_i@uint8 v_conv5_i@uint32;
(*   %conv6.i = zext i8 %0 to i32 *)
cast v_conv6_i@uint32 v0@uint8;
(*   %shl.i = shl i32 %conv6.i, 1 *)
shls discard_0 v_shl_i v_conv6_i 1;
(*   %conv7.i = trunc i32 %shl.i to i8 *)
split tmp_v_shl_i v_conv7_i v_shl_i 8;
vpc v_conv7_i@uint8 v_conv7_i@uint32;
(*   %conv.i.1 = zext i8 %conv5.i to i32 *)
cast v_conv_i_1@uint32 v_conv5_i@uint8;
(*   %and.i.1 = and i32 %conv.i.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1 v_conv_i_1 (0x1)@uint32;
(*   %conv1.i.1 = zext i8 %conv7.i to i32 *)
cast v_conv1_i_1@uint32 v_conv7_i@uint8;
(*   %mul.i.1 = mul nsw i32 %and.i.1, %conv1.i.1 *)
mul v_mul_i_1 v_and_i_1 v_conv1_i_1;
(*   %conv2.i.1 = zext i8 %conv3.i to i32 *)
cast v_conv2_i_1@uint32 v_conv3_i@uint8;
(*   %xor.i.1 = xor i32 %conv2.i.1, %mul.i.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1 v_conv2_i_1 v_mul_i_1;
(*   %conv3.i.1 = trunc i32 %xor.i.1 to i8 *)
split tmp_v_xor_i_1 v_conv3_i_1 v_xor_i_1 8;
vpc v_conv3_i_1@uint8 v_conv3_i_1@uint32;
(*   %conv4.i.1 = zext i8 %conv5.i to i32 *)
cast v_conv4_i_1@uint32 v_conv5_i@uint8;
(*   %shr.i.1 = ashr i32 %conv4.i.1, 1 *)
(* You may need to modify here *)
split v_shr_i_1 tmp_to_be_used v_conv4_i_1 1;
(*   %conv5.i.1 = trunc i32 %shr.i.1 to i8 *)
split tmp_v_shr_i_1 v_conv5_i_1 v_shr_i_1 8;
vpc v_conv5_i_1@uint8 v_conv5_i_1@uint32;
(*   %conv6.i.1 = zext i8 %conv7.i to i32 *)
cast v_conv6_i_1@uint32 v_conv7_i@uint8;
(*   %shl.i.1 = shl i32 %conv6.i.1, 1 *)
shls discard_1 v_shl_i_1 v_conv6_i_1 1;
(*   %conv7.i.1 = trunc i32 %shl.i.1 to i8 *)
split tmp_v_shl_i_1 v_conv7_i_1 v_shl_i_1 8;
vpc v_conv7_i_1@uint8 v_conv7_i_1@uint32;
(*   %conv.i.2 = zext i8 %conv5.i.1 to i32 *)
cast v_conv_i_2@uint32 v_conv5_i_1@uint8;
(*   %and.i.2 = and i32 %conv.i.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2 v_conv_i_2 (0x1)@uint32;
(*   %conv1.i.2 = zext i8 %conv7.i.1 to i32 *)
cast v_conv1_i_2@uint32 v_conv7_i_1@uint8;
(*   %mul.i.2 = mul nsw i32 %and.i.2, %conv1.i.2 *)
mul v_mul_i_2 v_and_i_2 v_conv1_i_2;
(*   %conv2.i.2 = zext i8 %conv3.i.1 to i32 *)
cast v_conv2_i_2@uint32 v_conv3_i_1@uint8;
(*   %xor.i.2 = xor i32 %conv2.i.2, %mul.i.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2 v_conv2_i_2 v_mul_i_2;
(*   %conv3.i.2 = trunc i32 %xor.i.2 to i8 *)
split tmp_v_xor_i_2 v_conv3_i_2 v_xor_i_2 8;
vpc v_conv3_i_2@uint8 v_conv3_i_2@uint32;
(*   %conv4.i.2 = zext i8 %conv5.i.1 to i32 *)
cast v_conv4_i_2@uint32 v_conv5_i_1@uint8;
(*   %shr.i.2 = ashr i32 %conv4.i.2, 1 *)
(* You may need to modify here *)
split v_shr_i_2 tmp_to_be_used v_conv4_i_2 1;
(*   %conv5.i.2 = trunc i32 %shr.i.2 to i8 *)
split tmp_v_shr_i_2 v_conv5_i_2 v_shr_i_2 8;
vpc v_conv5_i_2@uint8 v_conv5_i_2@uint32;
(*   %conv6.i.2 = zext i8 %conv7.i.1 to i32 *)
cast v_conv6_i_2@uint32 v_conv7_i_1@uint8;
(*   %shl.i.2 = shl i32 %conv6.i.2, 1 *)
shls discard_2 v_shl_i_2 v_conv6_i_2 1;
(*   %conv7.i.2 = trunc i32 %shl.i.2 to i8 *)
split tmp_v_shl_i_2 v_conv7_i_2 v_shl_i_2 8;
vpc v_conv7_i_2@uint8 v_conv7_i_2@uint32;
(*   %conv.i.3 = zext i8 %conv5.i.2 to i32 *)
cast v_conv_i_3@uint32 v_conv5_i_2@uint8;
(*   %and.i.3 = and i32 %conv.i.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3 v_conv_i_3 (0x1)@uint32;
(*   %conv1.i.3 = zext i8 %conv7.i.2 to i32 *)
cast v_conv1_i_3@uint32 v_conv7_i_2@uint8;
(*   %mul.i.3 = mul nsw i32 %and.i.3, %conv1.i.3 *)
mul v_mul_i_3 v_and_i_3 v_conv1_i_3;
(*   %conv2.i.3 = zext i8 %conv3.i.2 to i32 *)
cast v_conv2_i_3@uint32 v_conv3_i_2@uint8;
(*   %xor.i.3 = xor i32 %conv2.i.3, %mul.i.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3 v_conv2_i_3 v_mul_i_3;
(*   %conv3.i.3 = trunc i32 %xor.i.3 to i8 *)
split tmp_v_xor_i_3 v_conv3_i_3 v_xor_i_3 8;
vpc v_conv3_i_3@uint8 v_conv3_i_3@uint32;
(*   %conv4.i.3 = zext i8 %conv5.i.2 to i32 *)
cast v_conv4_i_3@uint32 v_conv5_i_2@uint8;
(*   %shr.i.3 = ashr i32 %conv4.i.3, 1 *)
(* You may need to modify here *)
split v_shr_i_3 tmp_to_be_used v_conv4_i_3 1;
(*   %conv5.i.3 = trunc i32 %shr.i.3 to i8 *)
split tmp_v_shr_i_3 v_conv5_i_3 v_shr_i_3 8;
vpc v_conv5_i_3@uint8 v_conv5_i_3@uint32;
(*   %conv6.i.3 = zext i8 %conv7.i.2 to i32 *)
cast v_conv6_i_3@uint32 v_conv7_i_2@uint8;
(*   %shl.i.3 = shl i32 %conv6.i.3, 1 *)
shls discard_3 v_shl_i_3 v_conv6_i_3 1;
(*   %conv7.i.3 = trunc i32 %shl.i.3 to i8 *)
split tmp_v_shl_i_3 v_conv7_i_3 v_shl_i_3 8;
vpc v_conv7_i_3@uint8 v_conv7_i_3@uint32;
(*   %conv.i.4 = zext i8 %conv5.i.3 to i32 *)
cast v_conv_i_4@uint32 v_conv5_i_3@uint8;
(*   %and.i.4 = and i32 %conv.i.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4 v_conv_i_4 (0x1)@uint32;
(*   %conv1.i.4 = zext i8 %conv7.i.3 to i32 *)
cast v_conv1_i_4@uint32 v_conv7_i_3@uint8;
(*   %mul.i.4 = mul nsw i32 %and.i.4, %conv1.i.4 *)
mul v_mul_i_4 v_and_i_4 v_conv1_i_4;
(*   %conv2.i.4 = zext i8 %conv3.i.3 to i32 *)
cast v_conv2_i_4@uint32 v_conv3_i_3@uint8;
(*   %xor.i.4 = xor i32 %conv2.i.4, %mul.i.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4 v_conv2_i_4 v_mul_i_4;
(*   %conv3.i.4 = trunc i32 %xor.i.4 to i8 *)
split tmp_v_xor_i_4 v_conv3_i_4 v_xor_i_4 8;
vpc v_conv3_i_4@uint8 v_conv3_i_4@uint32;
(*   %conv4.i.4 = zext i8 %conv5.i.3 to i32 *)
cast v_conv4_i_4@uint32 v_conv5_i_3@uint8;
(*   %shr.i.4 = ashr i32 %conv4.i.4, 1 *)
(* You may need to modify here *)
split v_shr_i_4 tmp_to_be_used v_conv4_i_4 1;
(*   %conv5.i.4 = trunc i32 %shr.i.4 to i8 *)
split tmp_v_shr_i_4 v_conv5_i_4 v_shr_i_4 8;
vpc v_conv5_i_4@uint8 v_conv5_i_4@uint32;
(*   %conv6.i.4 = zext i8 %conv7.i.3 to i32 *)
cast v_conv6_i_4@uint32 v_conv7_i_3@uint8;
(*   %shl.i.4 = shl i32 %conv6.i.4, 1 *)
shls discard_4 v_shl_i_4 v_conv6_i_4 1;
(*   %conv7.i.4 = trunc i32 %shl.i.4 to i8 *)
split tmp_v_shl_i_4 v_conv7_i_4 v_shl_i_4 8;
vpc v_conv7_i_4@uint8 v_conv7_i_4@uint32;
(*   %conv.i.5 = zext i8 %conv5.i.4 to i32 *)
cast v_conv_i_5@uint32 v_conv5_i_4@uint8;
(*   %and.i.5 = and i32 %conv.i.5, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5 v_conv_i_5 (0x1)@uint32;
(*   %conv1.i.5 = zext i8 %conv7.i.4 to i32 *)
cast v_conv1_i_5@uint32 v_conv7_i_4@uint8;
(*   %mul.i.5 = mul nsw i32 %and.i.5, %conv1.i.5 *)
mul v_mul_i_5 v_and_i_5 v_conv1_i_5;
(*   %conv2.i.5 = zext i8 %conv3.i.4 to i32 *)
cast v_conv2_i_5@uint32 v_conv3_i_4@uint8;
(*   %xor.i.5 = xor i32 %conv2.i.5, %mul.i.5 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5 v_conv2_i_5 v_mul_i_5;
(*   %conv3.i.5 = trunc i32 %xor.i.5 to i8 *)
split tmp_v_xor_i_5 v_conv3_i_5 v_xor_i_5 8;
vpc v_conv3_i_5@uint8 v_conv3_i_5@uint32;
(*   %conv4.i.5 = zext i8 %conv5.i.4 to i32 *)
cast v_conv4_i_5@uint32 v_conv5_i_4@uint8;
(*   %shr.i.5 = ashr i32 %conv4.i.5, 1 *)
(* You may need to modify here *)
split v_shr_i_5 tmp_to_be_used v_conv4_i_5 1;
(*   %conv5.i.5 = trunc i32 %shr.i.5 to i8 *)
split tmp_v_shr_i_5 v_conv5_i_5 v_shr_i_5 8;
vpc v_conv5_i_5@uint8 v_conv5_i_5@uint32;
(*   %conv6.i.5 = zext i8 %conv7.i.4 to i32 *)
cast v_conv6_i_5@uint32 v_conv7_i_4@uint8;
(*   %shl.i.5 = shl i32 %conv6.i.5, 1 *)
shls discard_5 v_shl_i_5 v_conv6_i_5 1;
(*   %conv7.i.5 = trunc i32 %shl.i.5 to i8 *)
split tmp_v_shl_i_5 v_conv7_i_5 v_shl_i_5 8;
vpc v_conv7_i_5@uint8 v_conv7_i_5@uint32;
(*   %conv.i.6 = zext i8 %conv5.i.5 to i32 *)
cast v_conv_i_6@uint32 v_conv5_i_5@uint8;
(*   %and.i.6 = and i32 %conv.i.6, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6 v_conv_i_6 (0x1)@uint32;
(*   %conv1.i.6 = zext i8 %conv7.i.5 to i32 *)
cast v_conv1_i_6@uint32 v_conv7_i_5@uint8;
(*   %mul.i.6 = mul nsw i32 %and.i.6, %conv1.i.6 *)
mul v_mul_i_6 v_and_i_6 v_conv1_i_6;
(*   %conv2.i.6 = zext i8 %conv3.i.5 to i32 *)
cast v_conv2_i_6@uint32 v_conv3_i_5@uint8;
(*   %xor.i.6 = xor i32 %conv2.i.6, %mul.i.6 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6 v_conv2_i_6 v_mul_i_6;
(*   %conv3.i.6 = trunc i32 %xor.i.6 to i8 *)
split tmp_v_xor_i_6 v_conv3_i_6 v_xor_i_6 8;
vpc v_conv3_i_6@uint8 v_conv3_i_6@uint32;
(*   %conv4.i.6 = zext i8 %conv5.i.5 to i32 *)
cast v_conv4_i_6@uint32 v_conv5_i_5@uint8;
(*   %shr.i.6 = ashr i32 %conv4.i.6, 1 *)
(* You may need to modify here *)
split v_shr_i_6 tmp_to_be_used v_conv4_i_6 1;
(*   %conv5.i.6 = trunc i32 %shr.i.6 to i8 *)
split tmp_v_shr_i_6 v_conv5_i_6 v_shr_i_6 8;
vpc v_conv5_i_6@uint8 v_conv5_i_6@uint32;
(*   %conv6.i.6 = zext i8 %conv7.i.5 to i32 *)
cast v_conv6_i_6@uint32 v_conv7_i_5@uint8;
(*   %shl.i.6 = shl i32 %conv6.i.6, 1 *)
shls discard_6 v_shl_i_6 v_conv6_i_6 1;
(*   %conv7.i.6 = trunc i32 %shl.i.6 to i8 *)
split tmp_v_shl_i_6 v_conv7_i_6 v_shl_i_6 8;
vpc v_conv7_i_6@uint8 v_conv7_i_6@uint32;
(*   %conv.i.7 = zext i8 %conv5.i.6 to i32 *)
cast v_conv_i_7@uint32 v_conv5_i_6@uint8;
(*   %and.i.7 = and i32 %conv.i.7, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7 v_conv_i_7 (0x1)@uint32;
(*   %conv1.i.7 = zext i8 %conv7.i.6 to i32 *)
cast v_conv1_i_7@uint32 v_conv7_i_6@uint8;
(*   %mul.i.7 = mul nsw i32 %and.i.7, %conv1.i.7 *)
mul v_mul_i_7 v_and_i_7 v_conv1_i_7;
(*   %conv2.i.7 = zext i8 %conv3.i.6 to i32 *)
cast v_conv2_i_7@uint32 v_conv3_i_6@uint8;
(*   %xor.i.7 = xor i32 %conv2.i.7, %mul.i.7 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7 v_conv2_i_7 v_mul_i_7;
(*   %conv3.i.7 = trunc i32 %xor.i.7 to i8 *)
split tmp_v_xor_i_7 v_conv3_i_7 v_xor_i_7 8;
vpc v_conv3_i_7@uint8 v_conv3_i_7@uint32;
(*   %arrayidx7 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 0 *)
(*   store i8 %conv3.i.7, i8* %arrayidx7, align 1 *)
mov alpha_0 v_conv3_i_7;
(*   %arrayidx5.1 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %2 = load i8, i8* %arrayidx5.1, align 1 *)
mov v2 b_1;
(*   %conv.i.142 = zext i8 %2 to i32 *)
cast v_conv_i_142@uint32 v2@uint8;
(*   %and.i.143 = and i32 %conv.i.142, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_143 v_conv_i_142 (0x1)@uint32;
(*   %conv1.i.144 = zext i8 %0 to i32 *)
cast v_conv1_i_144@uint32 v0@uint8;
(*   %mul.i.145 = mul nsw i32 %and.i.143, %conv1.i.144 *)
mul v_mul_i_145 v_and_i_143 v_conv1_i_144;
(*   %conv3.i.146 = trunc i32 %mul.i.145 to i8 *)
split tmp_v_mul_i_145 v_conv3_i_146 v_mul_i_145 8;
vpc v_conv3_i_146@uint8 v_conv3_i_146@uint32;
(*   %conv4.i.147 = zext i8 %2 to i32 *)
cast v_conv4_i_147@uint32 v2@uint8;
(*   %shr.i.148 = ashr i32 %conv4.i.147, 1 *)
(* You may need to modify here *)
split v_shr_i_148 tmp_to_be_used v_conv4_i_147 1;
(*   %conv5.i.149 = trunc i32 %shr.i.148 to i8 *)
split tmp_v_shr_i_148 v_conv5_i_149 v_shr_i_148 8;
vpc v_conv5_i_149@uint8 v_conv5_i_149@uint32;
(*   %conv6.i.150 = zext i8 %0 to i32 *)
cast v_conv6_i_150@uint32 v0@uint8;
(*   %shl.i.151 = shl i32 %conv6.i.150, 1 *)
shls discard_7 v_shl_i_151 v_conv6_i_150 1;
(*   %conv7.i.152 = trunc i32 %shl.i.151 to i8 *)
split tmp_v_shl_i_151 v_conv7_i_152 v_shl_i_151 8;
vpc v_conv7_i_152@uint8 v_conv7_i_152@uint32;
(*   %conv.i.1.1 = zext i8 %conv5.i.149 to i32 *)
cast v_conv_i_1_1@uint32 v_conv5_i_149@uint8;
(*   %and.i.1.1 = and i32 %conv.i.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_1 v_conv_i_1_1 (0x1)@uint32;
(*   %conv1.i.1.1 = zext i8 %conv7.i.152 to i32 *)
cast v_conv1_i_1_1@uint32 v_conv7_i_152@uint8;
(*   %mul.i.1.1 = mul nsw i32 %and.i.1.1, %conv1.i.1.1 *)
mul v_mul_i_1_1 v_and_i_1_1 v_conv1_i_1_1;
(*   %conv2.i.1.1 = zext i8 %conv3.i.146 to i32 *)
cast v_conv2_i_1_1@uint32 v_conv3_i_146@uint8;
(*   %xor.i.1.1 = xor i32 %conv2.i.1.1, %mul.i.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_1 v_conv2_i_1_1 v_mul_i_1_1;
(*   %conv3.i.1.1 = trunc i32 %xor.i.1.1 to i8 *)
split tmp_v_xor_i_1_1 v_conv3_i_1_1 v_xor_i_1_1 8;
vpc v_conv3_i_1_1@uint8 v_conv3_i_1_1@uint32;
(*   %conv4.i.1.1 = zext i8 %conv5.i.149 to i32 *)
cast v_conv4_i_1_1@uint32 v_conv5_i_149@uint8;
(*   %shr.i.1.1 = ashr i32 %conv4.i.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_1_1 tmp_to_be_used v_conv4_i_1_1 1;
(*   %conv5.i.1.1 = trunc i32 %shr.i.1.1 to i8 *)
split tmp_v_shr_i_1_1 v_conv5_i_1_1 v_shr_i_1_1 8;
vpc v_conv5_i_1_1@uint8 v_conv5_i_1_1@uint32;
(*   %conv6.i.1.1 = zext i8 %conv7.i.152 to i32 *)
cast v_conv6_i_1_1@uint32 v_conv7_i_152@uint8;
(*   %shl.i.1.1 = shl i32 %conv6.i.1.1, 1 *)
shls discard_8 v_shl_i_1_1 v_conv6_i_1_1 1;
(*   %conv7.i.1.1 = trunc i32 %shl.i.1.1 to i8 *)
split tmp_v_shl_i_1_1 v_conv7_i_1_1 v_shl_i_1_1 8;
vpc v_conv7_i_1_1@uint8 v_conv7_i_1_1@uint32;
(*   %conv.i.2.1 = zext i8 %conv5.i.1.1 to i32 *)
cast v_conv_i_2_1@uint32 v_conv5_i_1_1@uint8;
(*   %and.i.2.1 = and i32 %conv.i.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_1 v_conv_i_2_1 (0x1)@uint32;
(*   %conv1.i.2.1 = zext i8 %conv7.i.1.1 to i32 *)
cast v_conv1_i_2_1@uint32 v_conv7_i_1_1@uint8;
(*   %mul.i.2.1 = mul nsw i32 %and.i.2.1, %conv1.i.2.1 *)
mul v_mul_i_2_1 v_and_i_2_1 v_conv1_i_2_1;
(*   %conv2.i.2.1 = zext i8 %conv3.i.1.1 to i32 *)
cast v_conv2_i_2_1@uint32 v_conv3_i_1_1@uint8;
(*   %xor.i.2.1 = xor i32 %conv2.i.2.1, %mul.i.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_1 v_conv2_i_2_1 v_mul_i_2_1;
(*   %conv3.i.2.1 = trunc i32 %xor.i.2.1 to i8 *)
split tmp_v_xor_i_2_1 v_conv3_i_2_1 v_xor_i_2_1 8;
vpc v_conv3_i_2_1@uint8 v_conv3_i_2_1@uint32;
(*   %conv4.i.2.1 = zext i8 %conv5.i.1.1 to i32 *)
cast v_conv4_i_2_1@uint32 v_conv5_i_1_1@uint8;
(*   %shr.i.2.1 = ashr i32 %conv4.i.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i_2_1 tmp_to_be_used v_conv4_i_2_1 1;
(*   %conv5.i.2.1 = trunc i32 %shr.i.2.1 to i8 *)
split tmp_v_shr_i_2_1 v_conv5_i_2_1 v_shr_i_2_1 8;
vpc v_conv5_i_2_1@uint8 v_conv5_i_2_1@uint32;
(*   %conv6.i.2.1 = zext i8 %conv7.i.1.1 to i32 *)
cast v_conv6_i_2_1@uint32 v_conv7_i_1_1@uint8;
(*   %shl.i.2.1 = shl i32 %conv6.i.2.1, 1 *)
shls discard_9 v_shl_i_2_1 v_conv6_i_2_1 1;
(*   %conv7.i.2.1 = trunc i32 %shl.i.2.1 to i8 *)
split tmp_v_shl_i_2_1 v_conv7_i_2_1 v_shl_i_2_1 8;
vpc v_conv7_i_2_1@uint8 v_conv7_i_2_1@uint32;
(*   %conv.i.3.1 = zext i8 %conv5.i.2.1 to i32 *)
cast v_conv_i_3_1@uint32 v_conv5_i_2_1@uint8;
(*   %and.i.3.1 = and i32 %conv.i.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_1 v_conv_i_3_1 (0x1)@uint32;
(*   %conv1.i.3.1 = zext i8 %conv7.i.2.1 to i32 *)
cast v_conv1_i_3_1@uint32 v_conv7_i_2_1@uint8;
(*   %mul.i.3.1 = mul nsw i32 %and.i.3.1, %conv1.i.3.1 *)
mul v_mul_i_3_1 v_and_i_3_1 v_conv1_i_3_1;
(*   %conv2.i.3.1 = zext i8 %conv3.i.2.1 to i32 *)
cast v_conv2_i_3_1@uint32 v_conv3_i_2_1@uint8;
(*   %xor.i.3.1 = xor i32 %conv2.i.3.1, %mul.i.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_1 v_conv2_i_3_1 v_mul_i_3_1;
(*   %conv3.i.3.1 = trunc i32 %xor.i.3.1 to i8 *)
split tmp_v_xor_i_3_1 v_conv3_i_3_1 v_xor_i_3_1 8;
vpc v_conv3_i_3_1@uint8 v_conv3_i_3_1@uint32;
(*   %conv4.i.3.1 = zext i8 %conv5.i.2.1 to i32 *)
cast v_conv4_i_3_1@uint32 v_conv5_i_2_1@uint8;
(*   %shr.i.3.1 = ashr i32 %conv4.i.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i_3_1 tmp_to_be_used v_conv4_i_3_1 1;
(*   %conv5.i.3.1 = trunc i32 %shr.i.3.1 to i8 *)
split tmp_v_shr_i_3_1 v_conv5_i_3_1 v_shr_i_3_1 8;
vpc v_conv5_i_3_1@uint8 v_conv5_i_3_1@uint32;
(*   %conv6.i.3.1 = zext i8 %conv7.i.2.1 to i32 *)
cast v_conv6_i_3_1@uint32 v_conv7_i_2_1@uint8;
(*   %shl.i.3.1 = shl i32 %conv6.i.3.1, 1 *)
shls discard_10 v_shl_i_3_1 v_conv6_i_3_1 1;
(*   %conv7.i.3.1 = trunc i32 %shl.i.3.1 to i8 *)
split tmp_v_shl_i_3_1 v_conv7_i_3_1 v_shl_i_3_1 8;
vpc v_conv7_i_3_1@uint8 v_conv7_i_3_1@uint32;
(*   %conv.i.4.1 = zext i8 %conv5.i.3.1 to i32 *)
cast v_conv_i_4_1@uint32 v_conv5_i_3_1@uint8;
(*   %and.i.4.1 = and i32 %conv.i.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_1 v_conv_i_4_1 (0x1)@uint32;
(*   %conv1.i.4.1 = zext i8 %conv7.i.3.1 to i32 *)
cast v_conv1_i_4_1@uint32 v_conv7_i_3_1@uint8;
(*   %mul.i.4.1 = mul nsw i32 %and.i.4.1, %conv1.i.4.1 *)
mul v_mul_i_4_1 v_and_i_4_1 v_conv1_i_4_1;
(*   %conv2.i.4.1 = zext i8 %conv3.i.3.1 to i32 *)
cast v_conv2_i_4_1@uint32 v_conv3_i_3_1@uint8;
(*   %xor.i.4.1 = xor i32 %conv2.i.4.1, %mul.i.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_1 v_conv2_i_4_1 v_mul_i_4_1;
(*   %conv3.i.4.1 = trunc i32 %xor.i.4.1 to i8 *)
split tmp_v_xor_i_4_1 v_conv3_i_4_1 v_xor_i_4_1 8;
vpc v_conv3_i_4_1@uint8 v_conv3_i_4_1@uint32;
(*   %conv4.i.4.1 = zext i8 %conv5.i.3.1 to i32 *)
cast v_conv4_i_4_1@uint32 v_conv5_i_3_1@uint8;
(*   %shr.i.4.1 = ashr i32 %conv4.i.4.1, 1 *)
(* You may need to modify here *)
split v_shr_i_4_1 tmp_to_be_used v_conv4_i_4_1 1;
(*   %conv5.i.4.1 = trunc i32 %shr.i.4.1 to i8 *)
split tmp_v_shr_i_4_1 v_conv5_i_4_1 v_shr_i_4_1 8;
vpc v_conv5_i_4_1@uint8 v_conv5_i_4_1@uint32;
(*   %conv6.i.4.1 = zext i8 %conv7.i.3.1 to i32 *)
cast v_conv6_i_4_1@uint32 v_conv7_i_3_1@uint8;
(*   %shl.i.4.1 = shl i32 %conv6.i.4.1, 1 *)
shls discard_11 v_shl_i_4_1 v_conv6_i_4_1 1;
(*   %conv7.i.4.1 = trunc i32 %shl.i.4.1 to i8 *)
split tmp_v_shl_i_4_1 v_conv7_i_4_1 v_shl_i_4_1 8;
vpc v_conv7_i_4_1@uint8 v_conv7_i_4_1@uint32;
(*   %conv.i.5.1 = zext i8 %conv5.i.4.1 to i32 *)
cast v_conv_i_5_1@uint32 v_conv5_i_4_1@uint8;
(*   %and.i.5.1 = and i32 %conv.i.5.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_1 v_conv_i_5_1 (0x1)@uint32;
(*   %conv1.i.5.1 = zext i8 %conv7.i.4.1 to i32 *)
cast v_conv1_i_5_1@uint32 v_conv7_i_4_1@uint8;
(*   %mul.i.5.1 = mul nsw i32 %and.i.5.1, %conv1.i.5.1 *)
mul v_mul_i_5_1 v_and_i_5_1 v_conv1_i_5_1;
(*   %conv2.i.5.1 = zext i8 %conv3.i.4.1 to i32 *)
cast v_conv2_i_5_1@uint32 v_conv3_i_4_1@uint8;
(*   %xor.i.5.1 = xor i32 %conv2.i.5.1, %mul.i.5.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_1 v_conv2_i_5_1 v_mul_i_5_1;
(*   %conv3.i.5.1 = trunc i32 %xor.i.5.1 to i8 *)
split tmp_v_xor_i_5_1 v_conv3_i_5_1 v_xor_i_5_1 8;
vpc v_conv3_i_5_1@uint8 v_conv3_i_5_1@uint32;
(*   %conv4.i.5.1 = zext i8 %conv5.i.4.1 to i32 *)
cast v_conv4_i_5_1@uint32 v_conv5_i_4_1@uint8;
(*   %shr.i.5.1 = ashr i32 %conv4.i.5.1, 1 *)
(* You may need to modify here *)
split v_shr_i_5_1 tmp_to_be_used v_conv4_i_5_1 1;
(*   %conv5.i.5.1 = trunc i32 %shr.i.5.1 to i8 *)
split tmp_v_shr_i_5_1 v_conv5_i_5_1 v_shr_i_5_1 8;
vpc v_conv5_i_5_1@uint8 v_conv5_i_5_1@uint32;
(*   %conv6.i.5.1 = zext i8 %conv7.i.4.1 to i32 *)
cast v_conv6_i_5_1@uint32 v_conv7_i_4_1@uint8;
(*   %shl.i.5.1 = shl i32 %conv6.i.5.1, 1 *)
shls discard_12 v_shl_i_5_1 v_conv6_i_5_1 1;
(*   %conv7.i.5.1 = trunc i32 %shl.i.5.1 to i8 *)
split tmp_v_shl_i_5_1 v_conv7_i_5_1 v_shl_i_5_1 8;
vpc v_conv7_i_5_1@uint8 v_conv7_i_5_1@uint32;
(*   %conv.i.6.1 = zext i8 %conv5.i.5.1 to i32 *)
cast v_conv_i_6_1@uint32 v_conv5_i_5_1@uint8;
(*   %and.i.6.1 = and i32 %conv.i.6.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_1 v_conv_i_6_1 (0x1)@uint32;
(*   %conv1.i.6.1 = zext i8 %conv7.i.5.1 to i32 *)
cast v_conv1_i_6_1@uint32 v_conv7_i_5_1@uint8;
(*   %mul.i.6.1 = mul nsw i32 %and.i.6.1, %conv1.i.6.1 *)
mul v_mul_i_6_1 v_and_i_6_1 v_conv1_i_6_1;
(*   %conv2.i.6.1 = zext i8 %conv3.i.5.1 to i32 *)
cast v_conv2_i_6_1@uint32 v_conv3_i_5_1@uint8;
(*   %xor.i.6.1 = xor i32 %conv2.i.6.1, %mul.i.6.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_1 v_conv2_i_6_1 v_mul_i_6_1;
(*   %conv3.i.6.1 = trunc i32 %xor.i.6.1 to i8 *)
split tmp_v_xor_i_6_1 v_conv3_i_6_1 v_xor_i_6_1 8;
vpc v_conv3_i_6_1@uint8 v_conv3_i_6_1@uint32;
(*   %conv4.i.6.1 = zext i8 %conv5.i.5.1 to i32 *)
cast v_conv4_i_6_1@uint32 v_conv5_i_5_1@uint8;
(*   %shr.i.6.1 = ashr i32 %conv4.i.6.1, 1 *)
(* You may need to modify here *)
split v_shr_i_6_1 tmp_to_be_used v_conv4_i_6_1 1;
(*   %conv5.i.6.1 = trunc i32 %shr.i.6.1 to i8 *)
split tmp_v_shr_i_6_1 v_conv5_i_6_1 v_shr_i_6_1 8;
vpc v_conv5_i_6_1@uint8 v_conv5_i_6_1@uint32;
(*   %conv6.i.6.1 = zext i8 %conv7.i.5.1 to i32 *)
cast v_conv6_i_6_1@uint32 v_conv7_i_5_1@uint8;
(*   %shl.i.6.1 = shl i32 %conv6.i.6.1, 1 *)
shls discard_13 v_shl_i_6_1 v_conv6_i_6_1 1;
(*   %conv7.i.6.1 = trunc i32 %shl.i.6.1 to i8 *)
split tmp_v_shl_i_6_1 v_conv7_i_6_1 v_shl_i_6_1 8;
vpc v_conv7_i_6_1@uint8 v_conv7_i_6_1@uint32;
(*   %conv.i.7.1 = zext i8 %conv5.i.6.1 to i32 *)
cast v_conv_i_7_1@uint32 v_conv5_i_6_1@uint8;
(*   %and.i.7.1 = and i32 %conv.i.7.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_1 v_conv_i_7_1 (0x1)@uint32;
(*   %conv1.i.7.1 = zext i8 %conv7.i.6.1 to i32 *)
cast v_conv1_i_7_1@uint32 v_conv7_i_6_1@uint8;
(*   %mul.i.7.1 = mul nsw i32 %and.i.7.1, %conv1.i.7.1 *)
mul v_mul_i_7_1 v_and_i_7_1 v_conv1_i_7_1;
(*   %conv2.i.7.1 = zext i8 %conv3.i.6.1 to i32 *)
cast v_conv2_i_7_1@uint32 v_conv3_i_6_1@uint8;
(*   %xor.i.7.1 = xor i32 %conv2.i.7.1, %mul.i.7.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_1 v_conv2_i_7_1 v_mul_i_7_1;
(*   %conv3.i.7.1 = trunc i32 %xor.i.7.1 to i8 *)
split tmp_v_xor_i_7_1 v_conv3_i_7_1 v_xor_i_7_1 8;
vpc v_conv3_i_7_1@uint8 v_conv3_i_7_1@uint32;
(*   %arrayidx7.1 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 1 *)
(*   store i8 %conv3.i.7.1, i8* %arrayidx7.1, align 1 *)
mov alpha_1 v_conv3_i_7_1;
(*   %arrayidx5.2 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %3 = load i8, i8* %arrayidx5.2, align 1 *)
mov v3 b_2;
(*   %conv.i.253 = zext i8 %3 to i32 *)
cast v_conv_i_253@uint32 v3@uint8;
(*   %and.i.254 = and i32 %conv.i.253, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_254 v_conv_i_253 (0x1)@uint32;
(*   %conv1.i.255 = zext i8 %0 to i32 *)
cast v_conv1_i_255@uint32 v0@uint8;
(*   %mul.i.256 = mul nsw i32 %and.i.254, %conv1.i.255 *)
mul v_mul_i_256 v_and_i_254 v_conv1_i_255;
(*   %conv3.i.257 = trunc i32 %mul.i.256 to i8 *)
split tmp_v_mul_i_256 v_conv3_i_257 v_mul_i_256 8;
vpc v_conv3_i_257@uint8 v_conv3_i_257@uint32;
(*   %conv4.i.258 = zext i8 %3 to i32 *)
cast v_conv4_i_258@uint32 v3@uint8;
(*   %shr.i.259 = ashr i32 %conv4.i.258, 1 *)
(* You may need to modify here *)
split v_shr_i_259 tmp_to_be_used v_conv4_i_258 1;
(*   %conv5.i.260 = trunc i32 %shr.i.259 to i8 *)
split tmp_v_shr_i_259 v_conv5_i_260 v_shr_i_259 8;
vpc v_conv5_i_260@uint8 v_conv5_i_260@uint32;
(*   %conv6.i.261 = zext i8 %0 to i32 *)
cast v_conv6_i_261@uint32 v0@uint8;
(*   %shl.i.262 = shl i32 %conv6.i.261, 1 *)
shls discard_14 v_shl_i_262 v_conv6_i_261 1;
(*   %conv7.i.263 = trunc i32 %shl.i.262 to i8 *)
split tmp_v_shl_i_262 v_conv7_i_263 v_shl_i_262 8;
vpc v_conv7_i_263@uint8 v_conv7_i_263@uint32;
(*   %conv.i.1.2 = zext i8 %conv5.i.260 to i32 *)
cast v_conv_i_1_2@uint32 v_conv5_i_260@uint8;
(*   %and.i.1.2 = and i32 %conv.i.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_2 v_conv_i_1_2 (0x1)@uint32;
(*   %conv1.i.1.2 = zext i8 %conv7.i.263 to i32 *)
cast v_conv1_i_1_2@uint32 v_conv7_i_263@uint8;
(*   %mul.i.1.2 = mul nsw i32 %and.i.1.2, %conv1.i.1.2 *)
mul v_mul_i_1_2 v_and_i_1_2 v_conv1_i_1_2;
(*   %conv2.i.1.2 = zext i8 %conv3.i.257 to i32 *)
cast v_conv2_i_1_2@uint32 v_conv3_i_257@uint8;
(*   %xor.i.1.2 = xor i32 %conv2.i.1.2, %mul.i.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_2 v_conv2_i_1_2 v_mul_i_1_2;
(*   %conv3.i.1.2 = trunc i32 %xor.i.1.2 to i8 *)
split tmp_v_xor_i_1_2 v_conv3_i_1_2 v_xor_i_1_2 8;
vpc v_conv3_i_1_2@uint8 v_conv3_i_1_2@uint32;
(*   %conv4.i.1.2 = zext i8 %conv5.i.260 to i32 *)
cast v_conv4_i_1_2@uint32 v_conv5_i_260@uint8;
(*   %shr.i.1.2 = ashr i32 %conv4.i.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_1_2 tmp_to_be_used v_conv4_i_1_2 1;
(*   %conv5.i.1.2 = trunc i32 %shr.i.1.2 to i8 *)
split tmp_v_shr_i_1_2 v_conv5_i_1_2 v_shr_i_1_2 8;
vpc v_conv5_i_1_2@uint8 v_conv5_i_1_2@uint32;
(*   %conv6.i.1.2 = zext i8 %conv7.i.263 to i32 *)
cast v_conv6_i_1_2@uint32 v_conv7_i_263@uint8;
(*   %shl.i.1.2 = shl i32 %conv6.i.1.2, 1 *)
shls discard_15 v_shl_i_1_2 v_conv6_i_1_2 1;
(*   %conv7.i.1.2 = trunc i32 %shl.i.1.2 to i8 *)
split tmp_v_shl_i_1_2 v_conv7_i_1_2 v_shl_i_1_2 8;
vpc v_conv7_i_1_2@uint8 v_conv7_i_1_2@uint32;
(*   %conv.i.2.2 = zext i8 %conv5.i.1.2 to i32 *)
cast v_conv_i_2_2@uint32 v_conv5_i_1_2@uint8;
(*   %and.i.2.2 = and i32 %conv.i.2.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_2 v_conv_i_2_2 (0x1)@uint32;
(*   %conv1.i.2.2 = zext i8 %conv7.i.1.2 to i32 *)
cast v_conv1_i_2_2@uint32 v_conv7_i_1_2@uint8;
(*   %mul.i.2.2 = mul nsw i32 %and.i.2.2, %conv1.i.2.2 *)
mul v_mul_i_2_2 v_and_i_2_2 v_conv1_i_2_2;
(*   %conv2.i.2.2 = zext i8 %conv3.i.1.2 to i32 *)
cast v_conv2_i_2_2@uint32 v_conv3_i_1_2@uint8;
(*   %xor.i.2.2 = xor i32 %conv2.i.2.2, %mul.i.2.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_2 v_conv2_i_2_2 v_mul_i_2_2;
(*   %conv3.i.2.2 = trunc i32 %xor.i.2.2 to i8 *)
split tmp_v_xor_i_2_2 v_conv3_i_2_2 v_xor_i_2_2 8;
vpc v_conv3_i_2_2@uint8 v_conv3_i_2_2@uint32;
(*   %conv4.i.2.2 = zext i8 %conv5.i.1.2 to i32 *)
cast v_conv4_i_2_2@uint32 v_conv5_i_1_2@uint8;
(*   %shr.i.2.2 = ashr i32 %conv4.i.2.2, 1 *)
(* You may need to modify here *)
split v_shr_i_2_2 tmp_to_be_used v_conv4_i_2_2 1;
(*   %conv5.i.2.2 = trunc i32 %shr.i.2.2 to i8 *)
split tmp_v_shr_i_2_2 v_conv5_i_2_2 v_shr_i_2_2 8;
vpc v_conv5_i_2_2@uint8 v_conv5_i_2_2@uint32;
(*   %conv6.i.2.2 = zext i8 %conv7.i.1.2 to i32 *)
cast v_conv6_i_2_2@uint32 v_conv7_i_1_2@uint8;
(*   %shl.i.2.2 = shl i32 %conv6.i.2.2, 1 *)
shls discard_16 v_shl_i_2_2 v_conv6_i_2_2 1;
(*   %conv7.i.2.2 = trunc i32 %shl.i.2.2 to i8 *)
split tmp_v_shl_i_2_2 v_conv7_i_2_2 v_shl_i_2_2 8;
vpc v_conv7_i_2_2@uint8 v_conv7_i_2_2@uint32;
(*   %conv.i.3.2 = zext i8 %conv5.i.2.2 to i32 *)
cast v_conv_i_3_2@uint32 v_conv5_i_2_2@uint8;
(*   %and.i.3.2 = and i32 %conv.i.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_2 v_conv_i_3_2 (0x1)@uint32;
(*   %conv1.i.3.2 = zext i8 %conv7.i.2.2 to i32 *)
cast v_conv1_i_3_2@uint32 v_conv7_i_2_2@uint8;
(*   %mul.i.3.2 = mul nsw i32 %and.i.3.2, %conv1.i.3.2 *)
mul v_mul_i_3_2 v_and_i_3_2 v_conv1_i_3_2;
(*   %conv2.i.3.2 = zext i8 %conv3.i.2.2 to i32 *)
cast v_conv2_i_3_2@uint32 v_conv3_i_2_2@uint8;
(*   %xor.i.3.2 = xor i32 %conv2.i.3.2, %mul.i.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_2 v_conv2_i_3_2 v_mul_i_3_2;
(*   %conv3.i.3.2 = trunc i32 %xor.i.3.2 to i8 *)
split tmp_v_xor_i_3_2 v_conv3_i_3_2 v_xor_i_3_2 8;
vpc v_conv3_i_3_2@uint8 v_conv3_i_3_2@uint32;
(*   %conv4.i.3.2 = zext i8 %conv5.i.2.2 to i32 *)
cast v_conv4_i_3_2@uint32 v_conv5_i_2_2@uint8;
(*   %shr.i.3.2 = ashr i32 %conv4.i.3.2, 1 *)
(* You may need to modify here *)
split v_shr_i_3_2 tmp_to_be_used v_conv4_i_3_2 1;
(*   %conv5.i.3.2 = trunc i32 %shr.i.3.2 to i8 *)
split tmp_v_shr_i_3_2 v_conv5_i_3_2 v_shr_i_3_2 8;
vpc v_conv5_i_3_2@uint8 v_conv5_i_3_2@uint32;
(*   %conv6.i.3.2 = zext i8 %conv7.i.2.2 to i32 *)
cast v_conv6_i_3_2@uint32 v_conv7_i_2_2@uint8;
(*   %shl.i.3.2 = shl i32 %conv6.i.3.2, 1 *)
shls discard_17 v_shl_i_3_2 v_conv6_i_3_2 1;
(*   %conv7.i.3.2 = trunc i32 %shl.i.3.2 to i8 *)
split tmp_v_shl_i_3_2 v_conv7_i_3_2 v_shl_i_3_2 8;
vpc v_conv7_i_3_2@uint8 v_conv7_i_3_2@uint32;
(*   %conv.i.4.2 = zext i8 %conv5.i.3.2 to i32 *)
cast v_conv_i_4_2@uint32 v_conv5_i_3_2@uint8;
(*   %and.i.4.2 = and i32 %conv.i.4.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_2 v_conv_i_4_2 (0x1)@uint32;
(*   %conv1.i.4.2 = zext i8 %conv7.i.3.2 to i32 *)
cast v_conv1_i_4_2@uint32 v_conv7_i_3_2@uint8;
(*   %mul.i.4.2 = mul nsw i32 %and.i.4.2, %conv1.i.4.2 *)
mul v_mul_i_4_2 v_and_i_4_2 v_conv1_i_4_2;
(*   %conv2.i.4.2 = zext i8 %conv3.i.3.2 to i32 *)
cast v_conv2_i_4_2@uint32 v_conv3_i_3_2@uint8;
(*   %xor.i.4.2 = xor i32 %conv2.i.4.2, %mul.i.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_2 v_conv2_i_4_2 v_mul_i_4_2;
(*   %conv3.i.4.2 = trunc i32 %xor.i.4.2 to i8 *)
split tmp_v_xor_i_4_2 v_conv3_i_4_2 v_xor_i_4_2 8;
vpc v_conv3_i_4_2@uint8 v_conv3_i_4_2@uint32;
(*   %conv4.i.4.2 = zext i8 %conv5.i.3.2 to i32 *)
cast v_conv4_i_4_2@uint32 v_conv5_i_3_2@uint8;
(*   %shr.i.4.2 = ashr i32 %conv4.i.4.2, 1 *)
(* You may need to modify here *)
split v_shr_i_4_2 tmp_to_be_used v_conv4_i_4_2 1;
(*   %conv5.i.4.2 = trunc i32 %shr.i.4.2 to i8 *)
split tmp_v_shr_i_4_2 v_conv5_i_4_2 v_shr_i_4_2 8;
vpc v_conv5_i_4_2@uint8 v_conv5_i_4_2@uint32;
(*   %conv6.i.4.2 = zext i8 %conv7.i.3.2 to i32 *)
cast v_conv6_i_4_2@uint32 v_conv7_i_3_2@uint8;
(*   %shl.i.4.2 = shl i32 %conv6.i.4.2, 1 *)
shls discard_18 v_shl_i_4_2 v_conv6_i_4_2 1;
(*   %conv7.i.4.2 = trunc i32 %shl.i.4.2 to i8 *)
split tmp_v_shl_i_4_2 v_conv7_i_4_2 v_shl_i_4_2 8;
vpc v_conv7_i_4_2@uint8 v_conv7_i_4_2@uint32;
(*   %conv.i.5.2 = zext i8 %conv5.i.4.2 to i32 *)
cast v_conv_i_5_2@uint32 v_conv5_i_4_2@uint8;
(*   %and.i.5.2 = and i32 %conv.i.5.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_2 v_conv_i_5_2 (0x1)@uint32;
(*   %conv1.i.5.2 = zext i8 %conv7.i.4.2 to i32 *)
cast v_conv1_i_5_2@uint32 v_conv7_i_4_2@uint8;
(*   %mul.i.5.2 = mul nsw i32 %and.i.5.2, %conv1.i.5.2 *)
mul v_mul_i_5_2 v_and_i_5_2 v_conv1_i_5_2;
(*   %conv2.i.5.2 = zext i8 %conv3.i.4.2 to i32 *)
cast v_conv2_i_5_2@uint32 v_conv3_i_4_2@uint8;
(*   %xor.i.5.2 = xor i32 %conv2.i.5.2, %mul.i.5.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_2 v_conv2_i_5_2 v_mul_i_5_2;
(*   %conv3.i.5.2 = trunc i32 %xor.i.5.2 to i8 *)
split tmp_v_xor_i_5_2 v_conv3_i_5_2 v_xor_i_5_2 8;
vpc v_conv3_i_5_2@uint8 v_conv3_i_5_2@uint32;
(*   %conv4.i.5.2 = zext i8 %conv5.i.4.2 to i32 *)
cast v_conv4_i_5_2@uint32 v_conv5_i_4_2@uint8;
(*   %shr.i.5.2 = ashr i32 %conv4.i.5.2, 1 *)
(* You may need to modify here *)
split v_shr_i_5_2 tmp_to_be_used v_conv4_i_5_2 1;
(*   %conv5.i.5.2 = trunc i32 %shr.i.5.2 to i8 *)
split tmp_v_shr_i_5_2 v_conv5_i_5_2 v_shr_i_5_2 8;
vpc v_conv5_i_5_2@uint8 v_conv5_i_5_2@uint32;
(*   %conv6.i.5.2 = zext i8 %conv7.i.4.2 to i32 *)
cast v_conv6_i_5_2@uint32 v_conv7_i_4_2@uint8;
(*   %shl.i.5.2 = shl i32 %conv6.i.5.2, 1 *)
shls discard_19 v_shl_i_5_2 v_conv6_i_5_2 1;
(*   %conv7.i.5.2 = trunc i32 %shl.i.5.2 to i8 *)
split tmp_v_shl_i_5_2 v_conv7_i_5_2 v_shl_i_5_2 8;
vpc v_conv7_i_5_2@uint8 v_conv7_i_5_2@uint32;
(*   %conv.i.6.2 = zext i8 %conv5.i.5.2 to i32 *)
cast v_conv_i_6_2@uint32 v_conv5_i_5_2@uint8;
(*   %and.i.6.2 = and i32 %conv.i.6.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_2 v_conv_i_6_2 (0x1)@uint32;
(*   %conv1.i.6.2 = zext i8 %conv7.i.5.2 to i32 *)
cast v_conv1_i_6_2@uint32 v_conv7_i_5_2@uint8;
(*   %mul.i.6.2 = mul nsw i32 %and.i.6.2, %conv1.i.6.2 *)
mul v_mul_i_6_2 v_and_i_6_2 v_conv1_i_6_2;
(*   %conv2.i.6.2 = zext i8 %conv3.i.5.2 to i32 *)
cast v_conv2_i_6_2@uint32 v_conv3_i_5_2@uint8;
(*   %xor.i.6.2 = xor i32 %conv2.i.6.2, %mul.i.6.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_2 v_conv2_i_6_2 v_mul_i_6_2;
(*   %conv3.i.6.2 = trunc i32 %xor.i.6.2 to i8 *)
split tmp_v_xor_i_6_2 v_conv3_i_6_2 v_xor_i_6_2 8;
vpc v_conv3_i_6_2@uint8 v_conv3_i_6_2@uint32;
(*   %conv4.i.6.2 = zext i8 %conv5.i.5.2 to i32 *)
cast v_conv4_i_6_2@uint32 v_conv5_i_5_2@uint8;
(*   %shr.i.6.2 = ashr i32 %conv4.i.6.2, 1 *)
(* You may need to modify here *)
split v_shr_i_6_2 tmp_to_be_used v_conv4_i_6_2 1;
(*   %conv5.i.6.2 = trunc i32 %shr.i.6.2 to i8 *)
split tmp_v_shr_i_6_2 v_conv5_i_6_2 v_shr_i_6_2 8;
vpc v_conv5_i_6_2@uint8 v_conv5_i_6_2@uint32;
(*   %conv6.i.6.2 = zext i8 %conv7.i.5.2 to i32 *)
cast v_conv6_i_6_2@uint32 v_conv7_i_5_2@uint8;
(*   %shl.i.6.2 = shl i32 %conv6.i.6.2, 1 *)
shls discard_20 v_shl_i_6_2 v_conv6_i_6_2 1;
(*   %conv7.i.6.2 = trunc i32 %shl.i.6.2 to i8 *)
split tmp_v_shl_i_6_2 v_conv7_i_6_2 v_shl_i_6_2 8;
vpc v_conv7_i_6_2@uint8 v_conv7_i_6_2@uint32;
(*   %conv.i.7.2 = zext i8 %conv5.i.6.2 to i32 *)
cast v_conv_i_7_2@uint32 v_conv5_i_6_2@uint8;
(*   %and.i.7.2 = and i32 %conv.i.7.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_2 v_conv_i_7_2 (0x1)@uint32;
(*   %conv1.i.7.2 = zext i8 %conv7.i.6.2 to i32 *)
cast v_conv1_i_7_2@uint32 v_conv7_i_6_2@uint8;
(*   %mul.i.7.2 = mul nsw i32 %and.i.7.2, %conv1.i.7.2 *)
mul v_mul_i_7_2 v_and_i_7_2 v_conv1_i_7_2;
(*   %conv2.i.7.2 = zext i8 %conv3.i.6.2 to i32 *)
cast v_conv2_i_7_2@uint32 v_conv3_i_6_2@uint8;
(*   %xor.i.7.2 = xor i32 %conv2.i.7.2, %mul.i.7.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_2 v_conv2_i_7_2 v_mul_i_7_2;
(*   %conv3.i.7.2 = trunc i32 %xor.i.7.2 to i8 *)
split tmp_v_xor_i_7_2 v_conv3_i_7_2 v_xor_i_7_2 8;
vpc v_conv3_i_7_2@uint8 v_conv3_i_7_2@uint32;
(*   %arrayidx7.2 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 2 *)
(*   store i8 %conv3.i.7.2, i8* %arrayidx7.2, align 1 *)
mov alpha_2 v_conv3_i_7_2;
(*   %arrayidx5.3 = getelementptr inbounds i8, i8* %b, i64 3 *)
(*   %4 = load i8, i8* %arrayidx5.3, align 1 *)
mov v4 b_3;
(*   %conv.i.364 = zext i8 %4 to i32 *)
cast v_conv_i_364@uint32 v4@uint8;
(*   %and.i.365 = and i32 %conv.i.364, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_365 v_conv_i_364 (0x1)@uint32;
(*   %conv1.i.366 = zext i8 %0 to i32 *)
cast v_conv1_i_366@uint32 v0@uint8;
(*   %mul.i.367 = mul nsw i32 %and.i.365, %conv1.i.366 *)
mul v_mul_i_367 v_and_i_365 v_conv1_i_366;
(*   %conv3.i.368 = trunc i32 %mul.i.367 to i8 *)
split tmp_v_mul_i_367 v_conv3_i_368 v_mul_i_367 8;
vpc v_conv3_i_368@uint8 v_conv3_i_368@uint32;
(*   %conv4.i.369 = zext i8 %4 to i32 *)
cast v_conv4_i_369@uint32 v4@uint8;
(*   %shr.i.370 = ashr i32 %conv4.i.369, 1 *)
(* You may need to modify here *)
split v_shr_i_370 tmp_to_be_used v_conv4_i_369 1;
(*   %conv5.i.371 = trunc i32 %shr.i.370 to i8 *)
split tmp_v_shr_i_370 v_conv5_i_371 v_shr_i_370 8;
vpc v_conv5_i_371@uint8 v_conv5_i_371@uint32;
(*   %conv6.i.372 = zext i8 %0 to i32 *)
cast v_conv6_i_372@uint32 v0@uint8;
(*   %shl.i.373 = shl i32 %conv6.i.372, 1 *)
shls discard_21 v_shl_i_373 v_conv6_i_372 1;
(*   %conv7.i.374 = trunc i32 %shl.i.373 to i8 *)
split tmp_v_shl_i_373 v_conv7_i_374 v_shl_i_373 8;
vpc v_conv7_i_374@uint8 v_conv7_i_374@uint32;
(*   %conv.i.1.3 = zext i8 %conv5.i.371 to i32 *)
cast v_conv_i_1_3@uint32 v_conv5_i_371@uint8;
(*   %and.i.1.3 = and i32 %conv.i.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_3 v_conv_i_1_3 (0x1)@uint32;
(*   %conv1.i.1.3 = zext i8 %conv7.i.374 to i32 *)
cast v_conv1_i_1_3@uint32 v_conv7_i_374@uint8;
(*   %mul.i.1.3 = mul nsw i32 %and.i.1.3, %conv1.i.1.3 *)
mul v_mul_i_1_3 v_and_i_1_3 v_conv1_i_1_3;
(*   %conv2.i.1.3 = zext i8 %conv3.i.368 to i32 *)
cast v_conv2_i_1_3@uint32 v_conv3_i_368@uint8;
(*   %xor.i.1.3 = xor i32 %conv2.i.1.3, %mul.i.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_3 v_conv2_i_1_3 v_mul_i_1_3;
(*   %conv3.i.1.3 = trunc i32 %xor.i.1.3 to i8 *)
split tmp_v_xor_i_1_3 v_conv3_i_1_3 v_xor_i_1_3 8;
vpc v_conv3_i_1_3@uint8 v_conv3_i_1_3@uint32;
(*   %conv4.i.1.3 = zext i8 %conv5.i.371 to i32 *)
cast v_conv4_i_1_3@uint32 v_conv5_i_371@uint8;
(*   %shr.i.1.3 = ashr i32 %conv4.i.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i_1_3 tmp_to_be_used v_conv4_i_1_3 1;
(*   %conv5.i.1.3 = trunc i32 %shr.i.1.3 to i8 *)
split tmp_v_shr_i_1_3 v_conv5_i_1_3 v_shr_i_1_3 8;
vpc v_conv5_i_1_3@uint8 v_conv5_i_1_3@uint32;
(*   %conv6.i.1.3 = zext i8 %conv7.i.374 to i32 *)
cast v_conv6_i_1_3@uint32 v_conv7_i_374@uint8;
(*   %shl.i.1.3 = shl i32 %conv6.i.1.3, 1 *)
shls discard_22 v_shl_i_1_3 v_conv6_i_1_3 1;
(*   %conv7.i.1.3 = trunc i32 %shl.i.1.3 to i8 *)
split tmp_v_shl_i_1_3 v_conv7_i_1_3 v_shl_i_1_3 8;
vpc v_conv7_i_1_3@uint8 v_conv7_i_1_3@uint32;
(*   %conv.i.2.3 = zext i8 %conv5.i.1.3 to i32 *)
cast v_conv_i_2_3@uint32 v_conv5_i_1_3@uint8;
(*   %and.i.2.3 = and i32 %conv.i.2.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_3 v_conv_i_2_3 (0x1)@uint32;
(*   %conv1.i.2.3 = zext i8 %conv7.i.1.3 to i32 *)
cast v_conv1_i_2_3@uint32 v_conv7_i_1_3@uint8;
(*   %mul.i.2.3 = mul nsw i32 %and.i.2.3, %conv1.i.2.3 *)
mul v_mul_i_2_3 v_and_i_2_3 v_conv1_i_2_3;
(*   %conv2.i.2.3 = zext i8 %conv3.i.1.3 to i32 *)
cast v_conv2_i_2_3@uint32 v_conv3_i_1_3@uint8;
(*   %xor.i.2.3 = xor i32 %conv2.i.2.3, %mul.i.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_3 v_conv2_i_2_3 v_mul_i_2_3;
(*   %conv3.i.2.3 = trunc i32 %xor.i.2.3 to i8 *)
split tmp_v_xor_i_2_3 v_conv3_i_2_3 v_xor_i_2_3 8;
vpc v_conv3_i_2_3@uint8 v_conv3_i_2_3@uint32;
(*   %conv4.i.2.3 = zext i8 %conv5.i.1.3 to i32 *)
cast v_conv4_i_2_3@uint32 v_conv5_i_1_3@uint8;
(*   %shr.i.2.3 = ashr i32 %conv4.i.2.3, 1 *)
(* You may need to modify here *)
split v_shr_i_2_3 tmp_to_be_used v_conv4_i_2_3 1;
(*   %conv5.i.2.3 = trunc i32 %shr.i.2.3 to i8 *)
split tmp_v_shr_i_2_3 v_conv5_i_2_3 v_shr_i_2_3 8;
vpc v_conv5_i_2_3@uint8 v_conv5_i_2_3@uint32;
(*   %conv6.i.2.3 = zext i8 %conv7.i.1.3 to i32 *)
cast v_conv6_i_2_3@uint32 v_conv7_i_1_3@uint8;
(*   %shl.i.2.3 = shl i32 %conv6.i.2.3, 1 *)
shls discard_23 v_shl_i_2_3 v_conv6_i_2_3 1;
(*   %conv7.i.2.3 = trunc i32 %shl.i.2.3 to i8 *)
split tmp_v_shl_i_2_3 v_conv7_i_2_3 v_shl_i_2_3 8;
vpc v_conv7_i_2_3@uint8 v_conv7_i_2_3@uint32;
(*   %conv.i.3.3 = zext i8 %conv5.i.2.3 to i32 *)
cast v_conv_i_3_3@uint32 v_conv5_i_2_3@uint8;
(*   %and.i.3.3 = and i32 %conv.i.3.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_3 v_conv_i_3_3 (0x1)@uint32;
(*   %conv1.i.3.3 = zext i8 %conv7.i.2.3 to i32 *)
cast v_conv1_i_3_3@uint32 v_conv7_i_2_3@uint8;
(*   %mul.i.3.3 = mul nsw i32 %and.i.3.3, %conv1.i.3.3 *)
mul v_mul_i_3_3 v_and_i_3_3 v_conv1_i_3_3;
(*   %conv2.i.3.3 = zext i8 %conv3.i.2.3 to i32 *)
cast v_conv2_i_3_3@uint32 v_conv3_i_2_3@uint8;
(*   %xor.i.3.3 = xor i32 %conv2.i.3.3, %mul.i.3.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_3 v_conv2_i_3_3 v_mul_i_3_3;
(*   %conv3.i.3.3 = trunc i32 %xor.i.3.3 to i8 *)
split tmp_v_xor_i_3_3 v_conv3_i_3_3 v_xor_i_3_3 8;
vpc v_conv3_i_3_3@uint8 v_conv3_i_3_3@uint32;
(*   %conv4.i.3.3 = zext i8 %conv5.i.2.3 to i32 *)
cast v_conv4_i_3_3@uint32 v_conv5_i_2_3@uint8;
(*   %shr.i.3.3 = ashr i32 %conv4.i.3.3, 1 *)
(* You may need to modify here *)
split v_shr_i_3_3 tmp_to_be_used v_conv4_i_3_3 1;
(*   %conv5.i.3.3 = trunc i32 %shr.i.3.3 to i8 *)
split tmp_v_shr_i_3_3 v_conv5_i_3_3 v_shr_i_3_3 8;
vpc v_conv5_i_3_3@uint8 v_conv5_i_3_3@uint32;
(*   %conv6.i.3.3 = zext i8 %conv7.i.2.3 to i32 *)
cast v_conv6_i_3_3@uint32 v_conv7_i_2_3@uint8;
(*   %shl.i.3.3 = shl i32 %conv6.i.3.3, 1 *)
shls discard_24 v_shl_i_3_3 v_conv6_i_3_3 1;
(*   %conv7.i.3.3 = trunc i32 %shl.i.3.3 to i8 *)
split tmp_v_shl_i_3_3 v_conv7_i_3_3 v_shl_i_3_3 8;
vpc v_conv7_i_3_3@uint8 v_conv7_i_3_3@uint32;
(*   %conv.i.4.3 = zext i8 %conv5.i.3.3 to i32 *)
cast v_conv_i_4_3@uint32 v_conv5_i_3_3@uint8;
(*   %and.i.4.3 = and i32 %conv.i.4.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_3 v_conv_i_4_3 (0x1)@uint32;
(*   %conv1.i.4.3 = zext i8 %conv7.i.3.3 to i32 *)
cast v_conv1_i_4_3@uint32 v_conv7_i_3_3@uint8;
(*   %mul.i.4.3 = mul nsw i32 %and.i.4.3, %conv1.i.4.3 *)
mul v_mul_i_4_3 v_and_i_4_3 v_conv1_i_4_3;
(*   %conv2.i.4.3 = zext i8 %conv3.i.3.3 to i32 *)
cast v_conv2_i_4_3@uint32 v_conv3_i_3_3@uint8;
(*   %xor.i.4.3 = xor i32 %conv2.i.4.3, %mul.i.4.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_3 v_conv2_i_4_3 v_mul_i_4_3;
(*   %conv3.i.4.3 = trunc i32 %xor.i.4.3 to i8 *)
split tmp_v_xor_i_4_3 v_conv3_i_4_3 v_xor_i_4_3 8;
vpc v_conv3_i_4_3@uint8 v_conv3_i_4_3@uint32;
(*   %conv4.i.4.3 = zext i8 %conv5.i.3.3 to i32 *)
cast v_conv4_i_4_3@uint32 v_conv5_i_3_3@uint8;
(*   %shr.i.4.3 = ashr i32 %conv4.i.4.3, 1 *)
(* You may need to modify here *)
split v_shr_i_4_3 tmp_to_be_used v_conv4_i_4_3 1;
(*   %conv5.i.4.3 = trunc i32 %shr.i.4.3 to i8 *)
split tmp_v_shr_i_4_3 v_conv5_i_4_3 v_shr_i_4_3 8;
vpc v_conv5_i_4_3@uint8 v_conv5_i_4_3@uint32;
(*   %conv6.i.4.3 = zext i8 %conv7.i.3.3 to i32 *)
cast v_conv6_i_4_3@uint32 v_conv7_i_3_3@uint8;
(*   %shl.i.4.3 = shl i32 %conv6.i.4.3, 1 *)
shls discard_25 v_shl_i_4_3 v_conv6_i_4_3 1;
(*   %conv7.i.4.3 = trunc i32 %shl.i.4.3 to i8 *)
split tmp_v_shl_i_4_3 v_conv7_i_4_3 v_shl_i_4_3 8;
vpc v_conv7_i_4_3@uint8 v_conv7_i_4_3@uint32;
(*   %conv.i.5.3 = zext i8 %conv5.i.4.3 to i32 *)
cast v_conv_i_5_3@uint32 v_conv5_i_4_3@uint8;
(*   %and.i.5.3 = and i32 %conv.i.5.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_3 v_conv_i_5_3 (0x1)@uint32;
(*   %conv1.i.5.3 = zext i8 %conv7.i.4.3 to i32 *)
cast v_conv1_i_5_3@uint32 v_conv7_i_4_3@uint8;
(*   %mul.i.5.3 = mul nsw i32 %and.i.5.3, %conv1.i.5.3 *)
mul v_mul_i_5_3 v_and_i_5_3 v_conv1_i_5_3;
(*   %conv2.i.5.3 = zext i8 %conv3.i.4.3 to i32 *)
cast v_conv2_i_5_3@uint32 v_conv3_i_4_3@uint8;
(*   %xor.i.5.3 = xor i32 %conv2.i.5.3, %mul.i.5.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_3 v_conv2_i_5_3 v_mul_i_5_3;
(*   %conv3.i.5.3 = trunc i32 %xor.i.5.3 to i8 *)
split tmp_v_xor_i_5_3 v_conv3_i_5_3 v_xor_i_5_3 8;
vpc v_conv3_i_5_3@uint8 v_conv3_i_5_3@uint32;
(*   %conv4.i.5.3 = zext i8 %conv5.i.4.3 to i32 *)
cast v_conv4_i_5_3@uint32 v_conv5_i_4_3@uint8;
(*   %shr.i.5.3 = ashr i32 %conv4.i.5.3, 1 *)
(* You may need to modify here *)
split v_shr_i_5_3 tmp_to_be_used v_conv4_i_5_3 1;
(*   %conv5.i.5.3 = trunc i32 %shr.i.5.3 to i8 *)
split tmp_v_shr_i_5_3 v_conv5_i_5_3 v_shr_i_5_3 8;
vpc v_conv5_i_5_3@uint8 v_conv5_i_5_3@uint32;
(*   %conv6.i.5.3 = zext i8 %conv7.i.4.3 to i32 *)
cast v_conv6_i_5_3@uint32 v_conv7_i_4_3@uint8;
(*   %shl.i.5.3 = shl i32 %conv6.i.5.3, 1 *)
shls discard_26 v_shl_i_5_3 v_conv6_i_5_3 1;
(*   %conv7.i.5.3 = trunc i32 %shl.i.5.3 to i8 *)
split tmp_v_shl_i_5_3 v_conv7_i_5_3 v_shl_i_5_3 8;
vpc v_conv7_i_5_3@uint8 v_conv7_i_5_3@uint32;
(*   %conv.i.6.3 = zext i8 %conv5.i.5.3 to i32 *)
cast v_conv_i_6_3@uint32 v_conv5_i_5_3@uint8;
(*   %and.i.6.3 = and i32 %conv.i.6.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_3 v_conv_i_6_3 (0x1)@uint32;
(*   %conv1.i.6.3 = zext i8 %conv7.i.5.3 to i32 *)
cast v_conv1_i_6_3@uint32 v_conv7_i_5_3@uint8;
(*   %mul.i.6.3 = mul nsw i32 %and.i.6.3, %conv1.i.6.3 *)
mul v_mul_i_6_3 v_and_i_6_3 v_conv1_i_6_3;
(*   %conv2.i.6.3 = zext i8 %conv3.i.5.3 to i32 *)
cast v_conv2_i_6_3@uint32 v_conv3_i_5_3@uint8;
(*   %xor.i.6.3 = xor i32 %conv2.i.6.3, %mul.i.6.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_3 v_conv2_i_6_3 v_mul_i_6_3;
(*   %conv3.i.6.3 = trunc i32 %xor.i.6.3 to i8 *)
split tmp_v_xor_i_6_3 v_conv3_i_6_3 v_xor_i_6_3 8;
vpc v_conv3_i_6_3@uint8 v_conv3_i_6_3@uint32;
(*   %conv4.i.6.3 = zext i8 %conv5.i.5.3 to i32 *)
cast v_conv4_i_6_3@uint32 v_conv5_i_5_3@uint8;
(*   %shr.i.6.3 = ashr i32 %conv4.i.6.3, 1 *)
(* You may need to modify here *)
split v_shr_i_6_3 tmp_to_be_used v_conv4_i_6_3 1;
(*   %conv5.i.6.3 = trunc i32 %shr.i.6.3 to i8 *)
split tmp_v_shr_i_6_3 v_conv5_i_6_3 v_shr_i_6_3 8;
vpc v_conv5_i_6_3@uint8 v_conv5_i_6_3@uint32;
(*   %conv6.i.6.3 = zext i8 %conv7.i.5.3 to i32 *)
cast v_conv6_i_6_3@uint32 v_conv7_i_5_3@uint8;
(*   %shl.i.6.3 = shl i32 %conv6.i.6.3, 1 *)
shls discard_27 v_shl_i_6_3 v_conv6_i_6_3 1;
(*   %conv7.i.6.3 = trunc i32 %shl.i.6.3 to i8 *)
split tmp_v_shl_i_6_3 v_conv7_i_6_3 v_shl_i_6_3 8;
vpc v_conv7_i_6_3@uint8 v_conv7_i_6_3@uint32;
(*   %conv.i.7.3 = zext i8 %conv5.i.6.3 to i32 *)
cast v_conv_i_7_3@uint32 v_conv5_i_6_3@uint8;
(*   %and.i.7.3 = and i32 %conv.i.7.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_3 v_conv_i_7_3 (0x1)@uint32;
(*   %conv1.i.7.3 = zext i8 %conv7.i.6.3 to i32 *)
cast v_conv1_i_7_3@uint32 v_conv7_i_6_3@uint8;
(*   %mul.i.7.3 = mul nsw i32 %and.i.7.3, %conv1.i.7.3 *)
mul v_mul_i_7_3 v_and_i_7_3 v_conv1_i_7_3;
(*   %conv2.i.7.3 = zext i8 %conv3.i.6.3 to i32 *)
cast v_conv2_i_7_3@uint32 v_conv3_i_6_3@uint8;
(*   %xor.i.7.3 = xor i32 %conv2.i.7.3, %mul.i.7.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_3 v_conv2_i_7_3 v_mul_i_7_3;
(*   %conv3.i.7.3 = trunc i32 %xor.i.7.3 to i8 *)
split tmp_v_xor_i_7_3 v_conv3_i_7_3 v_xor_i_7_3 8;
vpc v_conv3_i_7_3@uint8 v_conv3_i_7_3@uint32;
(*   %arrayidx7.3 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 3 *)
(*   store i8 %conv3.i.7.3, i8* %arrayidx7.3, align 1 *)
mov alpha_3 v_conv3_i_7_3;
(*   %arrayidx5.4 = getelementptr inbounds i8, i8* %b, i64 4 *)
(*   %5 = load i8, i8* %arrayidx5.4, align 1 *)
mov v5 b_4;
(*   %conv.i.475 = zext i8 %5 to i32 *)
cast v_conv_i_475@uint32 v5@uint8;
(*   %and.i.476 = and i32 %conv.i.475, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_476 v_conv_i_475 (0x1)@uint32;
(*   %conv1.i.477 = zext i8 %0 to i32 *)
cast v_conv1_i_477@uint32 v0@uint8;
(*   %mul.i.478 = mul nsw i32 %and.i.476, %conv1.i.477 *)
mul v_mul_i_478 v_and_i_476 v_conv1_i_477;
(*   %conv3.i.479 = trunc i32 %mul.i.478 to i8 *)
split tmp_v_mul_i_478 v_conv3_i_479 v_mul_i_478 8;
vpc v_conv3_i_479@uint8 v_conv3_i_479@uint32;
(*   %conv4.i.480 = zext i8 %5 to i32 *)
cast v_conv4_i_480@uint32 v5@uint8;
(*   %shr.i.481 = ashr i32 %conv4.i.480, 1 *)
(* You may need to modify here *)
split v_shr_i_481 tmp_to_be_used v_conv4_i_480 1;
(*   %conv5.i.482 = trunc i32 %shr.i.481 to i8 *)
split tmp_v_shr_i_481 v_conv5_i_482 v_shr_i_481 8;
vpc v_conv5_i_482@uint8 v_conv5_i_482@uint32;
(*   %conv6.i.483 = zext i8 %0 to i32 *)
cast v_conv6_i_483@uint32 v0@uint8;
(*   %shl.i.484 = shl i32 %conv6.i.483, 1 *)
shls discard_28 v_shl_i_484 v_conv6_i_483 1;
(*   %conv7.i.485 = trunc i32 %shl.i.484 to i8 *)
split tmp_v_shl_i_484 v_conv7_i_485 v_shl_i_484 8;
vpc v_conv7_i_485@uint8 v_conv7_i_485@uint32;
(*   %conv.i.1.4 = zext i8 %conv5.i.482 to i32 *)
cast v_conv_i_1_4@uint32 v_conv5_i_482@uint8;
(*   %and.i.1.4 = and i32 %conv.i.1.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_4 v_conv_i_1_4 (0x1)@uint32;
(*   %conv1.i.1.4 = zext i8 %conv7.i.485 to i32 *)
cast v_conv1_i_1_4@uint32 v_conv7_i_485@uint8;
(*   %mul.i.1.4 = mul nsw i32 %and.i.1.4, %conv1.i.1.4 *)
mul v_mul_i_1_4 v_and_i_1_4 v_conv1_i_1_4;
(*   %conv2.i.1.4 = zext i8 %conv3.i.479 to i32 *)
cast v_conv2_i_1_4@uint32 v_conv3_i_479@uint8;
(*   %xor.i.1.4 = xor i32 %conv2.i.1.4, %mul.i.1.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_4 v_conv2_i_1_4 v_mul_i_1_4;
(*   %conv3.i.1.4 = trunc i32 %xor.i.1.4 to i8 *)
split tmp_v_xor_i_1_4 v_conv3_i_1_4 v_xor_i_1_4 8;
vpc v_conv3_i_1_4@uint8 v_conv3_i_1_4@uint32;
(*   %conv4.i.1.4 = zext i8 %conv5.i.482 to i32 *)
cast v_conv4_i_1_4@uint32 v_conv5_i_482@uint8;
(*   %shr.i.1.4 = ashr i32 %conv4.i.1.4, 1 *)
(* You may need to modify here *)
split v_shr_i_1_4 tmp_to_be_used v_conv4_i_1_4 1;
(*   %conv5.i.1.4 = trunc i32 %shr.i.1.4 to i8 *)
split tmp_v_shr_i_1_4 v_conv5_i_1_4 v_shr_i_1_4 8;
vpc v_conv5_i_1_4@uint8 v_conv5_i_1_4@uint32;
(*   %conv6.i.1.4 = zext i8 %conv7.i.485 to i32 *)
cast v_conv6_i_1_4@uint32 v_conv7_i_485@uint8;
(*   %shl.i.1.4 = shl i32 %conv6.i.1.4, 1 *)
shls discard_29 v_shl_i_1_4 v_conv6_i_1_4 1;
(*   %conv7.i.1.4 = trunc i32 %shl.i.1.4 to i8 *)
split tmp_v_shl_i_1_4 v_conv7_i_1_4 v_shl_i_1_4 8;
vpc v_conv7_i_1_4@uint8 v_conv7_i_1_4@uint32;
(*   %conv.i.2.4 = zext i8 %conv5.i.1.4 to i32 *)
cast v_conv_i_2_4@uint32 v_conv5_i_1_4@uint8;
(*   %and.i.2.4 = and i32 %conv.i.2.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_4 v_conv_i_2_4 (0x1)@uint32;
(*   %conv1.i.2.4 = zext i8 %conv7.i.1.4 to i32 *)
cast v_conv1_i_2_4@uint32 v_conv7_i_1_4@uint8;
(*   %mul.i.2.4 = mul nsw i32 %and.i.2.4, %conv1.i.2.4 *)
mul v_mul_i_2_4 v_and_i_2_4 v_conv1_i_2_4;
(*   %conv2.i.2.4 = zext i8 %conv3.i.1.4 to i32 *)
cast v_conv2_i_2_4@uint32 v_conv3_i_1_4@uint8;
(*   %xor.i.2.4 = xor i32 %conv2.i.2.4, %mul.i.2.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_4 v_conv2_i_2_4 v_mul_i_2_4;
(*   %conv3.i.2.4 = trunc i32 %xor.i.2.4 to i8 *)
split tmp_v_xor_i_2_4 v_conv3_i_2_4 v_xor_i_2_4 8;
vpc v_conv3_i_2_4@uint8 v_conv3_i_2_4@uint32;
(*   %conv4.i.2.4 = zext i8 %conv5.i.1.4 to i32 *)
cast v_conv4_i_2_4@uint32 v_conv5_i_1_4@uint8;
(*   %shr.i.2.4 = ashr i32 %conv4.i.2.4, 1 *)
(* You may need to modify here *)
split v_shr_i_2_4 tmp_to_be_used v_conv4_i_2_4 1;
(*   %conv5.i.2.4 = trunc i32 %shr.i.2.4 to i8 *)
split tmp_v_shr_i_2_4 v_conv5_i_2_4 v_shr_i_2_4 8;
vpc v_conv5_i_2_4@uint8 v_conv5_i_2_4@uint32;
(*   %conv6.i.2.4 = zext i8 %conv7.i.1.4 to i32 *)
cast v_conv6_i_2_4@uint32 v_conv7_i_1_4@uint8;
(*   %shl.i.2.4 = shl i32 %conv6.i.2.4, 1 *)
shls discard_30 v_shl_i_2_4 v_conv6_i_2_4 1;
(*   %conv7.i.2.4 = trunc i32 %shl.i.2.4 to i8 *)
split tmp_v_shl_i_2_4 v_conv7_i_2_4 v_shl_i_2_4 8;
vpc v_conv7_i_2_4@uint8 v_conv7_i_2_4@uint32;
(*   %conv.i.3.4 = zext i8 %conv5.i.2.4 to i32 *)
cast v_conv_i_3_4@uint32 v_conv5_i_2_4@uint8;
(*   %and.i.3.4 = and i32 %conv.i.3.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_4 v_conv_i_3_4 (0x1)@uint32;
(*   %conv1.i.3.4 = zext i8 %conv7.i.2.4 to i32 *)
cast v_conv1_i_3_4@uint32 v_conv7_i_2_4@uint8;
(*   %mul.i.3.4 = mul nsw i32 %and.i.3.4, %conv1.i.3.4 *)
mul v_mul_i_3_4 v_and_i_3_4 v_conv1_i_3_4;
(*   %conv2.i.3.4 = zext i8 %conv3.i.2.4 to i32 *)
cast v_conv2_i_3_4@uint32 v_conv3_i_2_4@uint8;
(*   %xor.i.3.4 = xor i32 %conv2.i.3.4, %mul.i.3.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_4 v_conv2_i_3_4 v_mul_i_3_4;
(*   %conv3.i.3.4 = trunc i32 %xor.i.3.4 to i8 *)
split tmp_v_xor_i_3_4 v_conv3_i_3_4 v_xor_i_3_4 8;
vpc v_conv3_i_3_4@uint8 v_conv3_i_3_4@uint32;
(*   %conv4.i.3.4 = zext i8 %conv5.i.2.4 to i32 *)
cast v_conv4_i_3_4@uint32 v_conv5_i_2_4@uint8;
(*   %shr.i.3.4 = ashr i32 %conv4.i.3.4, 1 *)
(* You may need to modify here *)
split v_shr_i_3_4 tmp_to_be_used v_conv4_i_3_4 1;
(*   %conv5.i.3.4 = trunc i32 %shr.i.3.4 to i8 *)
split tmp_v_shr_i_3_4 v_conv5_i_3_4 v_shr_i_3_4 8;
vpc v_conv5_i_3_4@uint8 v_conv5_i_3_4@uint32;
(*   %conv6.i.3.4 = zext i8 %conv7.i.2.4 to i32 *)
cast v_conv6_i_3_4@uint32 v_conv7_i_2_4@uint8;
(*   %shl.i.3.4 = shl i32 %conv6.i.3.4, 1 *)
shls discard_31 v_shl_i_3_4 v_conv6_i_3_4 1;
(*   %conv7.i.3.4 = trunc i32 %shl.i.3.4 to i8 *)
split tmp_v_shl_i_3_4 v_conv7_i_3_4 v_shl_i_3_4 8;
vpc v_conv7_i_3_4@uint8 v_conv7_i_3_4@uint32;
(*   %conv.i.4.4 = zext i8 %conv5.i.3.4 to i32 *)
cast v_conv_i_4_4@uint32 v_conv5_i_3_4@uint8;
(*   %and.i.4.4 = and i32 %conv.i.4.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_4 v_conv_i_4_4 (0x1)@uint32;
(*   %conv1.i.4.4 = zext i8 %conv7.i.3.4 to i32 *)
cast v_conv1_i_4_4@uint32 v_conv7_i_3_4@uint8;
(*   %mul.i.4.4 = mul nsw i32 %and.i.4.4, %conv1.i.4.4 *)
mul v_mul_i_4_4 v_and_i_4_4 v_conv1_i_4_4;
(*   %conv2.i.4.4 = zext i8 %conv3.i.3.4 to i32 *)
cast v_conv2_i_4_4@uint32 v_conv3_i_3_4@uint8;
(*   %xor.i.4.4 = xor i32 %conv2.i.4.4, %mul.i.4.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_4 v_conv2_i_4_4 v_mul_i_4_4;
(*   %conv3.i.4.4 = trunc i32 %xor.i.4.4 to i8 *)
split tmp_v_xor_i_4_4 v_conv3_i_4_4 v_xor_i_4_4 8;
vpc v_conv3_i_4_4@uint8 v_conv3_i_4_4@uint32;
(*   %conv4.i.4.4 = zext i8 %conv5.i.3.4 to i32 *)
cast v_conv4_i_4_4@uint32 v_conv5_i_3_4@uint8;
(*   %shr.i.4.4 = ashr i32 %conv4.i.4.4, 1 *)
(* You may need to modify here *)
split v_shr_i_4_4 tmp_to_be_used v_conv4_i_4_4 1;
(*   %conv5.i.4.4 = trunc i32 %shr.i.4.4 to i8 *)
split tmp_v_shr_i_4_4 v_conv5_i_4_4 v_shr_i_4_4 8;
vpc v_conv5_i_4_4@uint8 v_conv5_i_4_4@uint32;
(*   %conv6.i.4.4 = zext i8 %conv7.i.3.4 to i32 *)
cast v_conv6_i_4_4@uint32 v_conv7_i_3_4@uint8;
(*   %shl.i.4.4 = shl i32 %conv6.i.4.4, 1 *)
shls discard_32 v_shl_i_4_4 v_conv6_i_4_4 1;
(*   %conv7.i.4.4 = trunc i32 %shl.i.4.4 to i8 *)
split tmp_v_shl_i_4_4 v_conv7_i_4_4 v_shl_i_4_4 8;
vpc v_conv7_i_4_4@uint8 v_conv7_i_4_4@uint32;
(*   %conv.i.5.4 = zext i8 %conv5.i.4.4 to i32 *)
cast v_conv_i_5_4@uint32 v_conv5_i_4_4@uint8;
(*   %and.i.5.4 = and i32 %conv.i.5.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_4 v_conv_i_5_4 (0x1)@uint32;
(*   %conv1.i.5.4 = zext i8 %conv7.i.4.4 to i32 *)
cast v_conv1_i_5_4@uint32 v_conv7_i_4_4@uint8;
(*   %mul.i.5.4 = mul nsw i32 %and.i.5.4, %conv1.i.5.4 *)
mul v_mul_i_5_4 v_and_i_5_4 v_conv1_i_5_4;
(*   %conv2.i.5.4 = zext i8 %conv3.i.4.4 to i32 *)
cast v_conv2_i_5_4@uint32 v_conv3_i_4_4@uint8;
(*   %xor.i.5.4 = xor i32 %conv2.i.5.4, %mul.i.5.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_4 v_conv2_i_5_4 v_mul_i_5_4;
(*   %conv3.i.5.4 = trunc i32 %xor.i.5.4 to i8 *)
split tmp_v_xor_i_5_4 v_conv3_i_5_4 v_xor_i_5_4 8;
vpc v_conv3_i_5_4@uint8 v_conv3_i_5_4@uint32;
(*   %conv4.i.5.4 = zext i8 %conv5.i.4.4 to i32 *)
cast v_conv4_i_5_4@uint32 v_conv5_i_4_4@uint8;
(*   %shr.i.5.4 = ashr i32 %conv4.i.5.4, 1 *)
(* You may need to modify here *)
split v_shr_i_5_4 tmp_to_be_used v_conv4_i_5_4 1;
(*   %conv5.i.5.4 = trunc i32 %shr.i.5.4 to i8 *)
split tmp_v_shr_i_5_4 v_conv5_i_5_4 v_shr_i_5_4 8;
vpc v_conv5_i_5_4@uint8 v_conv5_i_5_4@uint32;
(*   %conv6.i.5.4 = zext i8 %conv7.i.4.4 to i32 *)
cast v_conv6_i_5_4@uint32 v_conv7_i_4_4@uint8;
(*   %shl.i.5.4 = shl i32 %conv6.i.5.4, 1 *)
shls discard_33 v_shl_i_5_4 v_conv6_i_5_4 1;
(*   %conv7.i.5.4 = trunc i32 %shl.i.5.4 to i8 *)
split tmp_v_shl_i_5_4 v_conv7_i_5_4 v_shl_i_5_4 8;
vpc v_conv7_i_5_4@uint8 v_conv7_i_5_4@uint32;
(*   %conv.i.6.4 = zext i8 %conv5.i.5.4 to i32 *)
cast v_conv_i_6_4@uint32 v_conv5_i_5_4@uint8;
(*   %and.i.6.4 = and i32 %conv.i.6.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_4 v_conv_i_6_4 (0x1)@uint32;
(*   %conv1.i.6.4 = zext i8 %conv7.i.5.4 to i32 *)
cast v_conv1_i_6_4@uint32 v_conv7_i_5_4@uint8;
(*   %mul.i.6.4 = mul nsw i32 %and.i.6.4, %conv1.i.6.4 *)
mul v_mul_i_6_4 v_and_i_6_4 v_conv1_i_6_4;
(*   %conv2.i.6.4 = zext i8 %conv3.i.5.4 to i32 *)
cast v_conv2_i_6_4@uint32 v_conv3_i_5_4@uint8;
(*   %xor.i.6.4 = xor i32 %conv2.i.6.4, %mul.i.6.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_4 v_conv2_i_6_4 v_mul_i_6_4;
(*   %conv3.i.6.4 = trunc i32 %xor.i.6.4 to i8 *)
split tmp_v_xor_i_6_4 v_conv3_i_6_4 v_xor_i_6_4 8;
vpc v_conv3_i_6_4@uint8 v_conv3_i_6_4@uint32;
(*   %conv4.i.6.4 = zext i8 %conv5.i.5.4 to i32 *)
cast v_conv4_i_6_4@uint32 v_conv5_i_5_4@uint8;
(*   %shr.i.6.4 = ashr i32 %conv4.i.6.4, 1 *)
(* You may need to modify here *)
split v_shr_i_6_4 tmp_to_be_used v_conv4_i_6_4 1;
(*   %conv5.i.6.4 = trunc i32 %shr.i.6.4 to i8 *)
split tmp_v_shr_i_6_4 v_conv5_i_6_4 v_shr_i_6_4 8;
vpc v_conv5_i_6_4@uint8 v_conv5_i_6_4@uint32;
(*   %conv6.i.6.4 = zext i8 %conv7.i.5.4 to i32 *)
cast v_conv6_i_6_4@uint32 v_conv7_i_5_4@uint8;
(*   %shl.i.6.4 = shl i32 %conv6.i.6.4, 1 *)
shls discard_34 v_shl_i_6_4 v_conv6_i_6_4 1;
(*   %conv7.i.6.4 = trunc i32 %shl.i.6.4 to i8 *)
split tmp_v_shl_i_6_4 v_conv7_i_6_4 v_shl_i_6_4 8;
vpc v_conv7_i_6_4@uint8 v_conv7_i_6_4@uint32;
(*   %conv.i.7.4 = zext i8 %conv5.i.6.4 to i32 *)
cast v_conv_i_7_4@uint32 v_conv5_i_6_4@uint8;
(*   %and.i.7.4 = and i32 %conv.i.7.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_4 v_conv_i_7_4 (0x1)@uint32;
(*   %conv1.i.7.4 = zext i8 %conv7.i.6.4 to i32 *)
cast v_conv1_i_7_4@uint32 v_conv7_i_6_4@uint8;
(*   %mul.i.7.4 = mul nsw i32 %and.i.7.4, %conv1.i.7.4 *)
mul v_mul_i_7_4 v_and_i_7_4 v_conv1_i_7_4;
(*   %conv2.i.7.4 = zext i8 %conv3.i.6.4 to i32 *)
cast v_conv2_i_7_4@uint32 v_conv3_i_6_4@uint8;
(*   %xor.i.7.4 = xor i32 %conv2.i.7.4, %mul.i.7.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_4 v_conv2_i_7_4 v_mul_i_7_4;
(*   %conv3.i.7.4 = trunc i32 %xor.i.7.4 to i8 *)
split tmp_v_xor_i_7_4 v_conv3_i_7_4 v_xor_i_7_4 8;
vpc v_conv3_i_7_4@uint8 v_conv3_i_7_4@uint32;
(*   %arrayidx7.4 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 4 *)
(*   store i8 %conv3.i.7.4, i8* %arrayidx7.4, align 1 *)
mov alpha_4 v_conv3_i_7_4;
(*   %arrayidx.1 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %6 = load i8, i8* %arrayidx.1, align 1 *)
mov v6 a_1;
(*   %7 = load i8, i8* %b, align 1 *)
mov v7 b_0;
(*   %conv.i.186 = zext i8 %7 to i32 *)
cast v_conv_i_186@uint32 v7@uint8;
(*   %and.i.187 = and i32 %conv.i.186, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_187 v_conv_i_186 (0x1)@uint32;
(*   %conv1.i.188 = zext i8 %6 to i32 *)
cast v_conv1_i_188@uint32 v6@uint8;
(*   %mul.i.189 = mul nsw i32 %and.i.187, %conv1.i.188 *)
mul v_mul_i_189 v_and_i_187 v_conv1_i_188;
(*   %conv3.i.190 = trunc i32 %mul.i.189 to i8 *)
split tmp_v_mul_i_189 v_conv3_i_190 v_mul_i_189 8;
vpc v_conv3_i_190@uint8 v_conv3_i_190@uint32;
(*   %conv4.i.191 = zext i8 %7 to i32 *)
cast v_conv4_i_191@uint32 v7@uint8;
(*   %shr.i.192 = ashr i32 %conv4.i.191, 1 *)
(* You may need to modify here *)
split v_shr_i_192 tmp_to_be_used v_conv4_i_191 1;
(*   %conv5.i.193 = trunc i32 %shr.i.192 to i8 *)
split tmp_v_shr_i_192 v_conv5_i_193 v_shr_i_192 8;
vpc v_conv5_i_193@uint8 v_conv5_i_193@uint32;
(*   %conv6.i.194 = zext i8 %6 to i32 *)
cast v_conv6_i_194@uint32 v6@uint8;
(*   %shl.i.195 = shl i32 %conv6.i.194, 1 *)
shls discard_35 v_shl_i_195 v_conv6_i_194 1;
(*   %conv7.i.196 = trunc i32 %shl.i.195 to i8 *)
split tmp_v_shl_i_195 v_conv7_i_196 v_shl_i_195 8;
vpc v_conv7_i_196@uint8 v_conv7_i_196@uint32;
(*   %conv.i.1.197 = zext i8 %conv5.i.193 to i32 *)
cast v_conv_i_1_197@uint32 v_conv5_i_193@uint8;
(*   %and.i.1.198 = and i32 %conv.i.1.197, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_198 v_conv_i_1_197 (0x1)@uint32;
(*   %conv1.i.1.199 = zext i8 %conv7.i.196 to i32 *)
cast v_conv1_i_1_199@uint32 v_conv7_i_196@uint8;
(*   %mul.i.1.1100 = mul nsw i32 %and.i.1.198, %conv1.i.1.199 *)
mul v_mul_i_1_1100 v_and_i_1_198 v_conv1_i_1_199;
(*   %conv2.i.1.1101 = zext i8 %conv3.i.190 to i32 *)
cast v_conv2_i_1_1101@uint32 v_conv3_i_190@uint8;
(*   %xor.i.1.1102 = xor i32 %conv2.i.1.1101, %mul.i.1.1100 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_1102 v_conv2_i_1_1101 v_mul_i_1_1100;
(*   %conv3.i.1.1103 = trunc i32 %xor.i.1.1102 to i8 *)
split tmp_v_xor_i_1_1102 v_conv3_i_1_1103 v_xor_i_1_1102 8;
vpc v_conv3_i_1_1103@uint8 v_conv3_i_1_1103@uint32;
(*   %conv4.i.1.1104 = zext i8 %conv5.i.193 to i32 *)
cast v_conv4_i_1_1104@uint32 v_conv5_i_193@uint8;
(*   %shr.i.1.1105 = ashr i32 %conv4.i.1.1104, 1 *)
(* You may need to modify here *)
split v_shr_i_1_1105 tmp_to_be_used v_conv4_i_1_1104 1;
(*   %conv5.i.1.1106 = trunc i32 %shr.i.1.1105 to i8 *)
split tmp_v_shr_i_1_1105 v_conv5_i_1_1106 v_shr_i_1_1105 8;
vpc v_conv5_i_1_1106@uint8 v_conv5_i_1_1106@uint32;
(*   %conv6.i.1.1107 = zext i8 %conv7.i.196 to i32 *)
cast v_conv6_i_1_1107@uint32 v_conv7_i_196@uint8;
(*   %shl.i.1.1108 = shl i32 %conv6.i.1.1107, 1 *)
shls discard_36 v_shl_i_1_1108 v_conv6_i_1_1107 1;
(*   %conv7.i.1.1109 = trunc i32 %shl.i.1.1108 to i8 *)
split tmp_v_shl_i_1_1108 v_conv7_i_1_1109 v_shl_i_1_1108 8;
vpc v_conv7_i_1_1109@uint8 v_conv7_i_1_1109@uint32;
(*   %conv.i.2.1110 = zext i8 %conv5.i.1.1106 to i32 *)
cast v_conv_i_2_1110@uint32 v_conv5_i_1_1106@uint8;
(*   %and.i.2.1111 = and i32 %conv.i.2.1110, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_1111 v_conv_i_2_1110 (0x1)@uint32;
(*   %conv1.i.2.1112 = zext i8 %conv7.i.1.1109 to i32 *)
cast v_conv1_i_2_1112@uint32 v_conv7_i_1_1109@uint8;
(*   %mul.i.2.1113 = mul nsw i32 %and.i.2.1111, %conv1.i.2.1112 *)
mul v_mul_i_2_1113 v_and_i_2_1111 v_conv1_i_2_1112;
(*   %conv2.i.2.1114 = zext i8 %conv3.i.1.1103 to i32 *)
cast v_conv2_i_2_1114@uint32 v_conv3_i_1_1103@uint8;
(*   %xor.i.2.1115 = xor i32 %conv2.i.2.1114, %mul.i.2.1113 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_1115 v_conv2_i_2_1114 v_mul_i_2_1113;
(*   %conv3.i.2.1116 = trunc i32 %xor.i.2.1115 to i8 *)
split tmp_v_xor_i_2_1115 v_conv3_i_2_1116 v_xor_i_2_1115 8;
vpc v_conv3_i_2_1116@uint8 v_conv3_i_2_1116@uint32;
(*   %conv4.i.2.1117 = zext i8 %conv5.i.1.1106 to i32 *)
cast v_conv4_i_2_1117@uint32 v_conv5_i_1_1106@uint8;
(*   %shr.i.2.1118 = ashr i32 %conv4.i.2.1117, 1 *)
(* You may need to modify here *)
split v_shr_i_2_1118 tmp_to_be_used v_conv4_i_2_1117 1;
(*   %conv5.i.2.1119 = trunc i32 %shr.i.2.1118 to i8 *)
split tmp_v_shr_i_2_1118 v_conv5_i_2_1119 v_shr_i_2_1118 8;
vpc v_conv5_i_2_1119@uint8 v_conv5_i_2_1119@uint32;
(*   %conv6.i.2.1120 = zext i8 %conv7.i.1.1109 to i32 *)
cast v_conv6_i_2_1120@uint32 v_conv7_i_1_1109@uint8;
(*   %shl.i.2.1121 = shl i32 %conv6.i.2.1120, 1 *)
shls discard_37 v_shl_i_2_1121 v_conv6_i_2_1120 1;
(*   %conv7.i.2.1122 = trunc i32 %shl.i.2.1121 to i8 *)
split tmp_v_shl_i_2_1121 v_conv7_i_2_1122 v_shl_i_2_1121 8;
vpc v_conv7_i_2_1122@uint8 v_conv7_i_2_1122@uint32;
(*   %conv.i.3.1123 = zext i8 %conv5.i.2.1119 to i32 *)
cast v_conv_i_3_1123@uint32 v_conv5_i_2_1119@uint8;
(*   %and.i.3.1124 = and i32 %conv.i.3.1123, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_1124 v_conv_i_3_1123 (0x1)@uint32;
(*   %conv1.i.3.1125 = zext i8 %conv7.i.2.1122 to i32 *)
cast v_conv1_i_3_1125@uint32 v_conv7_i_2_1122@uint8;
(*   %mul.i.3.1126 = mul nsw i32 %and.i.3.1124, %conv1.i.3.1125 *)
mul v_mul_i_3_1126 v_and_i_3_1124 v_conv1_i_3_1125;
(*   %conv2.i.3.1127 = zext i8 %conv3.i.2.1116 to i32 *)
cast v_conv2_i_3_1127@uint32 v_conv3_i_2_1116@uint8;
(*   %xor.i.3.1128 = xor i32 %conv2.i.3.1127, %mul.i.3.1126 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_1128 v_conv2_i_3_1127 v_mul_i_3_1126;
(*   %conv3.i.3.1129 = trunc i32 %xor.i.3.1128 to i8 *)
split tmp_v_xor_i_3_1128 v_conv3_i_3_1129 v_xor_i_3_1128 8;
vpc v_conv3_i_3_1129@uint8 v_conv3_i_3_1129@uint32;
(*   %conv4.i.3.1130 = zext i8 %conv5.i.2.1119 to i32 *)
cast v_conv4_i_3_1130@uint32 v_conv5_i_2_1119@uint8;
(*   %shr.i.3.1131 = ashr i32 %conv4.i.3.1130, 1 *)
(* You may need to modify here *)
split v_shr_i_3_1131 tmp_to_be_used v_conv4_i_3_1130 1;
(*   %conv5.i.3.1132 = trunc i32 %shr.i.3.1131 to i8 *)
split tmp_v_shr_i_3_1131 v_conv5_i_3_1132 v_shr_i_3_1131 8;
vpc v_conv5_i_3_1132@uint8 v_conv5_i_3_1132@uint32;
(*   %conv6.i.3.1133 = zext i8 %conv7.i.2.1122 to i32 *)
cast v_conv6_i_3_1133@uint32 v_conv7_i_2_1122@uint8;
(*   %shl.i.3.1134 = shl i32 %conv6.i.3.1133, 1 *)
shls discard_38 v_shl_i_3_1134 v_conv6_i_3_1133 1;
(*   %conv7.i.3.1135 = trunc i32 %shl.i.3.1134 to i8 *)
split tmp_v_shl_i_3_1134 v_conv7_i_3_1135 v_shl_i_3_1134 8;
vpc v_conv7_i_3_1135@uint8 v_conv7_i_3_1135@uint32;
(*   %conv.i.4.1136 = zext i8 %conv5.i.3.1132 to i32 *)
cast v_conv_i_4_1136@uint32 v_conv5_i_3_1132@uint8;
(*   %and.i.4.1137 = and i32 %conv.i.4.1136, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_1137 v_conv_i_4_1136 (0x1)@uint32;
(*   %conv1.i.4.1138 = zext i8 %conv7.i.3.1135 to i32 *)
cast v_conv1_i_4_1138@uint32 v_conv7_i_3_1135@uint8;
(*   %mul.i.4.1139 = mul nsw i32 %and.i.4.1137, %conv1.i.4.1138 *)
mul v_mul_i_4_1139 v_and_i_4_1137 v_conv1_i_4_1138;
(*   %conv2.i.4.1140 = zext i8 %conv3.i.3.1129 to i32 *)
cast v_conv2_i_4_1140@uint32 v_conv3_i_3_1129@uint8;
(*   %xor.i.4.1141 = xor i32 %conv2.i.4.1140, %mul.i.4.1139 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_1141 v_conv2_i_4_1140 v_mul_i_4_1139;
(*   %conv3.i.4.1142 = trunc i32 %xor.i.4.1141 to i8 *)
split tmp_v_xor_i_4_1141 v_conv3_i_4_1142 v_xor_i_4_1141 8;
vpc v_conv3_i_4_1142@uint8 v_conv3_i_4_1142@uint32;
(*   %conv4.i.4.1143 = zext i8 %conv5.i.3.1132 to i32 *)
cast v_conv4_i_4_1143@uint32 v_conv5_i_3_1132@uint8;
(*   %shr.i.4.1144 = ashr i32 %conv4.i.4.1143, 1 *)
(* You may need to modify here *)
split v_shr_i_4_1144 tmp_to_be_used v_conv4_i_4_1143 1;
(*   %conv5.i.4.1145 = trunc i32 %shr.i.4.1144 to i8 *)
split tmp_v_shr_i_4_1144 v_conv5_i_4_1145 v_shr_i_4_1144 8;
vpc v_conv5_i_4_1145@uint8 v_conv5_i_4_1145@uint32;
(*   %conv6.i.4.1146 = zext i8 %conv7.i.3.1135 to i32 *)
cast v_conv6_i_4_1146@uint32 v_conv7_i_3_1135@uint8;
(*   %shl.i.4.1147 = shl i32 %conv6.i.4.1146, 1 *)
shls discard_39 v_shl_i_4_1147 v_conv6_i_4_1146 1;
(*   %conv7.i.4.1148 = trunc i32 %shl.i.4.1147 to i8 *)
split tmp_v_shl_i_4_1147 v_conv7_i_4_1148 v_shl_i_4_1147 8;
vpc v_conv7_i_4_1148@uint8 v_conv7_i_4_1148@uint32;
(*   %conv.i.5.1149 = zext i8 %conv5.i.4.1145 to i32 *)
cast v_conv_i_5_1149@uint32 v_conv5_i_4_1145@uint8;
(*   %and.i.5.1150 = and i32 %conv.i.5.1149, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_1150 v_conv_i_5_1149 (0x1)@uint32;
(*   %conv1.i.5.1151 = zext i8 %conv7.i.4.1148 to i32 *)
cast v_conv1_i_5_1151@uint32 v_conv7_i_4_1148@uint8;
(*   %mul.i.5.1152 = mul nsw i32 %and.i.5.1150, %conv1.i.5.1151 *)
mul v_mul_i_5_1152 v_and_i_5_1150 v_conv1_i_5_1151;
(*   %conv2.i.5.1153 = zext i8 %conv3.i.4.1142 to i32 *)
cast v_conv2_i_5_1153@uint32 v_conv3_i_4_1142@uint8;
(*   %xor.i.5.1154 = xor i32 %conv2.i.5.1153, %mul.i.5.1152 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_1154 v_conv2_i_5_1153 v_mul_i_5_1152;
(*   %conv3.i.5.1155 = trunc i32 %xor.i.5.1154 to i8 *)
split tmp_v_xor_i_5_1154 v_conv3_i_5_1155 v_xor_i_5_1154 8;
vpc v_conv3_i_5_1155@uint8 v_conv3_i_5_1155@uint32;
(*   %conv4.i.5.1156 = zext i8 %conv5.i.4.1145 to i32 *)
cast v_conv4_i_5_1156@uint32 v_conv5_i_4_1145@uint8;
(*   %shr.i.5.1157 = ashr i32 %conv4.i.5.1156, 1 *)
(* You may need to modify here *)
split v_shr_i_5_1157 tmp_to_be_used v_conv4_i_5_1156 1;
(*   %conv5.i.5.1158 = trunc i32 %shr.i.5.1157 to i8 *)
split tmp_v_shr_i_5_1157 v_conv5_i_5_1158 v_shr_i_5_1157 8;
vpc v_conv5_i_5_1158@uint8 v_conv5_i_5_1158@uint32;
(*   %conv6.i.5.1159 = zext i8 %conv7.i.4.1148 to i32 *)
cast v_conv6_i_5_1159@uint32 v_conv7_i_4_1148@uint8;
(*   %shl.i.5.1160 = shl i32 %conv6.i.5.1159, 1 *)
shls discard_40 v_shl_i_5_1160 v_conv6_i_5_1159 1;
(*   %conv7.i.5.1161 = trunc i32 %shl.i.5.1160 to i8 *)
split tmp_v_shl_i_5_1160 v_conv7_i_5_1161 v_shl_i_5_1160 8;
vpc v_conv7_i_5_1161@uint8 v_conv7_i_5_1161@uint32;
(*   %conv.i.6.1162 = zext i8 %conv5.i.5.1158 to i32 *)
cast v_conv_i_6_1162@uint32 v_conv5_i_5_1158@uint8;
(*   %and.i.6.1163 = and i32 %conv.i.6.1162, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_1163 v_conv_i_6_1162 (0x1)@uint32;
(*   %conv1.i.6.1164 = zext i8 %conv7.i.5.1161 to i32 *)
cast v_conv1_i_6_1164@uint32 v_conv7_i_5_1161@uint8;
(*   %mul.i.6.1165 = mul nsw i32 %and.i.6.1163, %conv1.i.6.1164 *)
mul v_mul_i_6_1165 v_and_i_6_1163 v_conv1_i_6_1164;
(*   %conv2.i.6.1166 = zext i8 %conv3.i.5.1155 to i32 *)
cast v_conv2_i_6_1166@uint32 v_conv3_i_5_1155@uint8;
(*   %xor.i.6.1167 = xor i32 %conv2.i.6.1166, %mul.i.6.1165 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_1167 v_conv2_i_6_1166 v_mul_i_6_1165;
(*   %conv3.i.6.1168 = trunc i32 %xor.i.6.1167 to i8 *)
split tmp_v_xor_i_6_1167 v_conv3_i_6_1168 v_xor_i_6_1167 8;
vpc v_conv3_i_6_1168@uint8 v_conv3_i_6_1168@uint32;
(*   %conv4.i.6.1169 = zext i8 %conv5.i.5.1158 to i32 *)
cast v_conv4_i_6_1169@uint32 v_conv5_i_5_1158@uint8;
(*   %shr.i.6.1170 = ashr i32 %conv4.i.6.1169, 1 *)
(* You may need to modify here *)
split v_shr_i_6_1170 tmp_to_be_used v_conv4_i_6_1169 1;
(*   %conv5.i.6.1171 = trunc i32 %shr.i.6.1170 to i8 *)
split tmp_v_shr_i_6_1170 v_conv5_i_6_1171 v_shr_i_6_1170 8;
vpc v_conv5_i_6_1171@uint8 v_conv5_i_6_1171@uint32;
(*   %conv6.i.6.1172 = zext i8 %conv7.i.5.1161 to i32 *)
cast v_conv6_i_6_1172@uint32 v_conv7_i_5_1161@uint8;
(*   %shl.i.6.1173 = shl i32 %conv6.i.6.1172, 1 *)
shls discard_41 v_shl_i_6_1173 v_conv6_i_6_1172 1;
(*   %conv7.i.6.1174 = trunc i32 %shl.i.6.1173 to i8 *)
split tmp_v_shl_i_6_1173 v_conv7_i_6_1174 v_shl_i_6_1173 8;
vpc v_conv7_i_6_1174@uint8 v_conv7_i_6_1174@uint32;
(*   %conv.i.7.1175 = zext i8 %conv5.i.6.1171 to i32 *)
cast v_conv_i_7_1175@uint32 v_conv5_i_6_1171@uint8;
(*   %and.i.7.1176 = and i32 %conv.i.7.1175, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_1176 v_conv_i_7_1175 (0x1)@uint32;
(*   %conv1.i.7.1177 = zext i8 %conv7.i.6.1174 to i32 *)
cast v_conv1_i_7_1177@uint32 v_conv7_i_6_1174@uint8;
(*   %mul.i.7.1178 = mul nsw i32 %and.i.7.1176, %conv1.i.7.1177 *)
mul v_mul_i_7_1178 v_and_i_7_1176 v_conv1_i_7_1177;
(*   %conv2.i.7.1179 = zext i8 %conv3.i.6.1168 to i32 *)
cast v_conv2_i_7_1179@uint32 v_conv3_i_6_1168@uint8;
(*   %xor.i.7.1180 = xor i32 %conv2.i.7.1179, %mul.i.7.1178 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_1180 v_conv2_i_7_1179 v_mul_i_7_1178;
(*   %conv3.i.7.1181 = trunc i32 %xor.i.7.1180 to i8 *)
split tmp_v_xor_i_7_1180 v_conv3_i_7_1181 v_xor_i_7_1180 8;
vpc v_conv3_i_7_1181@uint8 v_conv3_i_7_1181@uint32;
(*   %arrayidx7.1185 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 5 *)
(*   store i8 %conv3.i.7.1181, i8* %arrayidx7.1185, align 1 *)
mov alpha_5 v_conv3_i_7_1181;
(*   %arrayidx5.1.1 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %8 = load i8, i8* %arrayidx5.1.1, align 1 *)
mov v8 b_1;
(*   %conv.i.142.1 = zext i8 %8 to i32 *)
cast v_conv_i_142_1@uint32 v8@uint8;
(*   %and.i.143.1 = and i32 %conv.i.142.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_143_1 v_conv_i_142_1 (0x1)@uint32;
(*   %conv1.i.144.1 = zext i8 %6 to i32 *)
cast v_conv1_i_144_1@uint32 v6@uint8;
(*   %mul.i.145.1 = mul nsw i32 %and.i.143.1, %conv1.i.144.1 *)
mul v_mul_i_145_1 v_and_i_143_1 v_conv1_i_144_1;
(*   %conv3.i.146.1 = trunc i32 %mul.i.145.1 to i8 *)
split tmp_v_mul_i_145_1 v_conv3_i_146_1 v_mul_i_145_1 8;
vpc v_conv3_i_146_1@uint8 v_conv3_i_146_1@uint32;
(*   %conv4.i.147.1 = zext i8 %8 to i32 *)
cast v_conv4_i_147_1@uint32 v8@uint8;
(*   %shr.i.148.1 = ashr i32 %conv4.i.147.1, 1 *)
(* You may need to modify here *)
split v_shr_i_148_1 tmp_to_be_used v_conv4_i_147_1 1;
(*   %conv5.i.149.1 = trunc i32 %shr.i.148.1 to i8 *)
split tmp_v_shr_i_148_1 v_conv5_i_149_1 v_shr_i_148_1 8;
vpc v_conv5_i_149_1@uint8 v_conv5_i_149_1@uint32;
(*   %conv6.i.150.1 = zext i8 %6 to i32 *)
cast v_conv6_i_150_1@uint32 v6@uint8;
(*   %shl.i.151.1 = shl i32 %conv6.i.150.1, 1 *)
shls discard_42 v_shl_i_151_1 v_conv6_i_150_1 1;
(*   %conv7.i.152.1 = trunc i32 %shl.i.151.1 to i8 *)
split tmp_v_shl_i_151_1 v_conv7_i_152_1 v_shl_i_151_1 8;
vpc v_conv7_i_152_1@uint8 v_conv7_i_152_1@uint32;
(*   %conv.i.1.1.1 = zext i8 %conv5.i.149.1 to i32 *)
cast v_conv_i_1_1_1@uint32 v_conv5_i_149_1@uint8;
(*   %and.i.1.1.1 = and i32 %conv.i.1.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_1_1 v_conv_i_1_1_1 (0x1)@uint32;
(*   %conv1.i.1.1.1 = zext i8 %conv7.i.152.1 to i32 *)
cast v_conv1_i_1_1_1@uint32 v_conv7_i_152_1@uint8;
(*   %mul.i.1.1.1 = mul nsw i32 %and.i.1.1.1, %conv1.i.1.1.1 *)
mul v_mul_i_1_1_1 v_and_i_1_1_1 v_conv1_i_1_1_1;
(*   %conv2.i.1.1.1 = zext i8 %conv3.i.146.1 to i32 *)
cast v_conv2_i_1_1_1@uint32 v_conv3_i_146_1@uint8;
(*   %xor.i.1.1.1 = xor i32 %conv2.i.1.1.1, %mul.i.1.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_1_1 v_conv2_i_1_1_1 v_mul_i_1_1_1;
(*   %conv3.i.1.1.1 = trunc i32 %xor.i.1.1.1 to i8 *)
split tmp_v_xor_i_1_1_1 v_conv3_i_1_1_1 v_xor_i_1_1_1 8;
vpc v_conv3_i_1_1_1@uint8 v_conv3_i_1_1_1@uint32;
(*   %conv4.i.1.1.1 = zext i8 %conv5.i.149.1 to i32 *)
cast v_conv4_i_1_1_1@uint32 v_conv5_i_149_1@uint8;
(*   %shr.i.1.1.1 = ashr i32 %conv4.i.1.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_1_1_1 tmp_to_be_used v_conv4_i_1_1_1 1;
(*   %conv5.i.1.1.1 = trunc i32 %shr.i.1.1.1 to i8 *)
split tmp_v_shr_i_1_1_1 v_conv5_i_1_1_1 v_shr_i_1_1_1 8;
vpc v_conv5_i_1_1_1@uint8 v_conv5_i_1_1_1@uint32;
(*   %conv6.i.1.1.1 = zext i8 %conv7.i.152.1 to i32 *)
cast v_conv6_i_1_1_1@uint32 v_conv7_i_152_1@uint8;
(*   %shl.i.1.1.1 = shl i32 %conv6.i.1.1.1, 1 *)
shls discard_43 v_shl_i_1_1_1 v_conv6_i_1_1_1 1;
(*   %conv7.i.1.1.1 = trunc i32 %shl.i.1.1.1 to i8 *)
split tmp_v_shl_i_1_1_1 v_conv7_i_1_1_1 v_shl_i_1_1_1 8;
vpc v_conv7_i_1_1_1@uint8 v_conv7_i_1_1_1@uint32;
(*   %conv.i.2.1.1 = zext i8 %conv5.i.1.1.1 to i32 *)
cast v_conv_i_2_1_1@uint32 v_conv5_i_1_1_1@uint8;
(*   %and.i.2.1.1 = and i32 %conv.i.2.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_1_1 v_conv_i_2_1_1 (0x1)@uint32;
(*   %conv1.i.2.1.1 = zext i8 %conv7.i.1.1.1 to i32 *)
cast v_conv1_i_2_1_1@uint32 v_conv7_i_1_1_1@uint8;
(*   %mul.i.2.1.1 = mul nsw i32 %and.i.2.1.1, %conv1.i.2.1.1 *)
mul v_mul_i_2_1_1 v_and_i_2_1_1 v_conv1_i_2_1_1;
(*   %conv2.i.2.1.1 = zext i8 %conv3.i.1.1.1 to i32 *)
cast v_conv2_i_2_1_1@uint32 v_conv3_i_1_1_1@uint8;
(*   %xor.i.2.1.1 = xor i32 %conv2.i.2.1.1, %mul.i.2.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_1_1 v_conv2_i_2_1_1 v_mul_i_2_1_1;
(*   %conv3.i.2.1.1 = trunc i32 %xor.i.2.1.1 to i8 *)
split tmp_v_xor_i_2_1_1 v_conv3_i_2_1_1 v_xor_i_2_1_1 8;
vpc v_conv3_i_2_1_1@uint8 v_conv3_i_2_1_1@uint32;
(*   %conv4.i.2.1.1 = zext i8 %conv5.i.1.1.1 to i32 *)
cast v_conv4_i_2_1_1@uint32 v_conv5_i_1_1_1@uint8;
(*   %shr.i.2.1.1 = ashr i32 %conv4.i.2.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_2_1_1 tmp_to_be_used v_conv4_i_2_1_1 1;
(*   %conv5.i.2.1.1 = trunc i32 %shr.i.2.1.1 to i8 *)
split tmp_v_shr_i_2_1_1 v_conv5_i_2_1_1 v_shr_i_2_1_1 8;
vpc v_conv5_i_2_1_1@uint8 v_conv5_i_2_1_1@uint32;
(*   %conv6.i.2.1.1 = zext i8 %conv7.i.1.1.1 to i32 *)
cast v_conv6_i_2_1_1@uint32 v_conv7_i_1_1_1@uint8;
(*   %shl.i.2.1.1 = shl i32 %conv6.i.2.1.1, 1 *)
shls discard_44 v_shl_i_2_1_1 v_conv6_i_2_1_1 1;
(*   %conv7.i.2.1.1 = trunc i32 %shl.i.2.1.1 to i8 *)
split tmp_v_shl_i_2_1_1 v_conv7_i_2_1_1 v_shl_i_2_1_1 8;
vpc v_conv7_i_2_1_1@uint8 v_conv7_i_2_1_1@uint32;
(*   %conv.i.3.1.1 = zext i8 %conv5.i.2.1.1 to i32 *)
cast v_conv_i_3_1_1@uint32 v_conv5_i_2_1_1@uint8;
(*   %and.i.3.1.1 = and i32 %conv.i.3.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_1_1 v_conv_i_3_1_1 (0x1)@uint32;
(*   %conv1.i.3.1.1 = zext i8 %conv7.i.2.1.1 to i32 *)
cast v_conv1_i_3_1_1@uint32 v_conv7_i_2_1_1@uint8;
(*   %mul.i.3.1.1 = mul nsw i32 %and.i.3.1.1, %conv1.i.3.1.1 *)
mul v_mul_i_3_1_1 v_and_i_3_1_1 v_conv1_i_3_1_1;
(*   %conv2.i.3.1.1 = zext i8 %conv3.i.2.1.1 to i32 *)
cast v_conv2_i_3_1_1@uint32 v_conv3_i_2_1_1@uint8;
(*   %xor.i.3.1.1 = xor i32 %conv2.i.3.1.1, %mul.i.3.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_1_1 v_conv2_i_3_1_1 v_mul_i_3_1_1;
(*   %conv3.i.3.1.1 = trunc i32 %xor.i.3.1.1 to i8 *)
split tmp_v_xor_i_3_1_1 v_conv3_i_3_1_1 v_xor_i_3_1_1 8;
vpc v_conv3_i_3_1_1@uint8 v_conv3_i_3_1_1@uint32;
(*   %conv4.i.3.1.1 = zext i8 %conv5.i.2.1.1 to i32 *)
cast v_conv4_i_3_1_1@uint32 v_conv5_i_2_1_1@uint8;
(*   %shr.i.3.1.1 = ashr i32 %conv4.i.3.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_3_1_1 tmp_to_be_used v_conv4_i_3_1_1 1;
(*   %conv5.i.3.1.1 = trunc i32 %shr.i.3.1.1 to i8 *)
split tmp_v_shr_i_3_1_1 v_conv5_i_3_1_1 v_shr_i_3_1_1 8;
vpc v_conv5_i_3_1_1@uint8 v_conv5_i_3_1_1@uint32;
(*   %conv6.i.3.1.1 = zext i8 %conv7.i.2.1.1 to i32 *)
cast v_conv6_i_3_1_1@uint32 v_conv7_i_2_1_1@uint8;
(*   %shl.i.3.1.1 = shl i32 %conv6.i.3.1.1, 1 *)
shls discard_45 v_shl_i_3_1_1 v_conv6_i_3_1_1 1;
(*   %conv7.i.3.1.1 = trunc i32 %shl.i.3.1.1 to i8 *)
split tmp_v_shl_i_3_1_1 v_conv7_i_3_1_1 v_shl_i_3_1_1 8;
vpc v_conv7_i_3_1_1@uint8 v_conv7_i_3_1_1@uint32;
(*   %conv.i.4.1.1 = zext i8 %conv5.i.3.1.1 to i32 *)
cast v_conv_i_4_1_1@uint32 v_conv5_i_3_1_1@uint8;
(*   %and.i.4.1.1 = and i32 %conv.i.4.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_1_1 v_conv_i_4_1_1 (0x1)@uint32;
(*   %conv1.i.4.1.1 = zext i8 %conv7.i.3.1.1 to i32 *)
cast v_conv1_i_4_1_1@uint32 v_conv7_i_3_1_1@uint8;
(*   %mul.i.4.1.1 = mul nsw i32 %and.i.4.1.1, %conv1.i.4.1.1 *)
mul v_mul_i_4_1_1 v_and_i_4_1_1 v_conv1_i_4_1_1;
(*   %conv2.i.4.1.1 = zext i8 %conv3.i.3.1.1 to i32 *)
cast v_conv2_i_4_1_1@uint32 v_conv3_i_3_1_1@uint8;
(*   %xor.i.4.1.1 = xor i32 %conv2.i.4.1.1, %mul.i.4.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_1_1 v_conv2_i_4_1_1 v_mul_i_4_1_1;
(*   %conv3.i.4.1.1 = trunc i32 %xor.i.4.1.1 to i8 *)
split tmp_v_xor_i_4_1_1 v_conv3_i_4_1_1 v_xor_i_4_1_1 8;
vpc v_conv3_i_4_1_1@uint8 v_conv3_i_4_1_1@uint32;
(*   %conv4.i.4.1.1 = zext i8 %conv5.i.3.1.1 to i32 *)
cast v_conv4_i_4_1_1@uint32 v_conv5_i_3_1_1@uint8;
(*   %shr.i.4.1.1 = ashr i32 %conv4.i.4.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_4_1_1 tmp_to_be_used v_conv4_i_4_1_1 1;
(*   %conv5.i.4.1.1 = trunc i32 %shr.i.4.1.1 to i8 *)
split tmp_v_shr_i_4_1_1 v_conv5_i_4_1_1 v_shr_i_4_1_1 8;
vpc v_conv5_i_4_1_1@uint8 v_conv5_i_4_1_1@uint32;
(*   %conv6.i.4.1.1 = zext i8 %conv7.i.3.1.1 to i32 *)
cast v_conv6_i_4_1_1@uint32 v_conv7_i_3_1_1@uint8;
(*   %shl.i.4.1.1 = shl i32 %conv6.i.4.1.1, 1 *)
shls discard_46 v_shl_i_4_1_1 v_conv6_i_4_1_1 1;
(*   %conv7.i.4.1.1 = trunc i32 %shl.i.4.1.1 to i8 *)
split tmp_v_shl_i_4_1_1 v_conv7_i_4_1_1 v_shl_i_4_1_1 8;
vpc v_conv7_i_4_1_1@uint8 v_conv7_i_4_1_1@uint32;
(*   %conv.i.5.1.1 = zext i8 %conv5.i.4.1.1 to i32 *)
cast v_conv_i_5_1_1@uint32 v_conv5_i_4_1_1@uint8;
(*   %and.i.5.1.1 = and i32 %conv.i.5.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_1_1 v_conv_i_5_1_1 (0x1)@uint32;
(*   %conv1.i.5.1.1 = zext i8 %conv7.i.4.1.1 to i32 *)
cast v_conv1_i_5_1_1@uint32 v_conv7_i_4_1_1@uint8;
(*   %mul.i.5.1.1 = mul nsw i32 %and.i.5.1.1, %conv1.i.5.1.1 *)
mul v_mul_i_5_1_1 v_and_i_5_1_1 v_conv1_i_5_1_1;
(*   %conv2.i.5.1.1 = zext i8 %conv3.i.4.1.1 to i32 *)
cast v_conv2_i_5_1_1@uint32 v_conv3_i_4_1_1@uint8;
(*   %xor.i.5.1.1 = xor i32 %conv2.i.5.1.1, %mul.i.5.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_1_1 v_conv2_i_5_1_1 v_mul_i_5_1_1;
(*   %conv3.i.5.1.1 = trunc i32 %xor.i.5.1.1 to i8 *)
split tmp_v_xor_i_5_1_1 v_conv3_i_5_1_1 v_xor_i_5_1_1 8;
vpc v_conv3_i_5_1_1@uint8 v_conv3_i_5_1_1@uint32;
(*   %conv4.i.5.1.1 = zext i8 %conv5.i.4.1.1 to i32 *)
cast v_conv4_i_5_1_1@uint32 v_conv5_i_4_1_1@uint8;
(*   %shr.i.5.1.1 = ashr i32 %conv4.i.5.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_5_1_1 tmp_to_be_used v_conv4_i_5_1_1 1;
(*   %conv5.i.5.1.1 = trunc i32 %shr.i.5.1.1 to i8 *)
split tmp_v_shr_i_5_1_1 v_conv5_i_5_1_1 v_shr_i_5_1_1 8;
vpc v_conv5_i_5_1_1@uint8 v_conv5_i_5_1_1@uint32;
(*   %conv6.i.5.1.1 = zext i8 %conv7.i.4.1.1 to i32 *)
cast v_conv6_i_5_1_1@uint32 v_conv7_i_4_1_1@uint8;
(*   %shl.i.5.1.1 = shl i32 %conv6.i.5.1.1, 1 *)
shls discard_47 v_shl_i_5_1_1 v_conv6_i_5_1_1 1;
(*   %conv7.i.5.1.1 = trunc i32 %shl.i.5.1.1 to i8 *)
split tmp_v_shl_i_5_1_1 v_conv7_i_5_1_1 v_shl_i_5_1_1 8;
vpc v_conv7_i_5_1_1@uint8 v_conv7_i_5_1_1@uint32;
(*   %conv.i.6.1.1 = zext i8 %conv5.i.5.1.1 to i32 *)
cast v_conv_i_6_1_1@uint32 v_conv5_i_5_1_1@uint8;
(*   %and.i.6.1.1 = and i32 %conv.i.6.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_1_1 v_conv_i_6_1_1 (0x1)@uint32;
(*   %conv1.i.6.1.1 = zext i8 %conv7.i.5.1.1 to i32 *)
cast v_conv1_i_6_1_1@uint32 v_conv7_i_5_1_1@uint8;
(*   %mul.i.6.1.1 = mul nsw i32 %and.i.6.1.1, %conv1.i.6.1.1 *)
mul v_mul_i_6_1_1 v_and_i_6_1_1 v_conv1_i_6_1_1;
(*   %conv2.i.6.1.1 = zext i8 %conv3.i.5.1.1 to i32 *)
cast v_conv2_i_6_1_1@uint32 v_conv3_i_5_1_1@uint8;
(*   %xor.i.6.1.1 = xor i32 %conv2.i.6.1.1, %mul.i.6.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_1_1 v_conv2_i_6_1_1 v_mul_i_6_1_1;
(*   %conv3.i.6.1.1 = trunc i32 %xor.i.6.1.1 to i8 *)
split tmp_v_xor_i_6_1_1 v_conv3_i_6_1_1 v_xor_i_6_1_1 8;
vpc v_conv3_i_6_1_1@uint8 v_conv3_i_6_1_1@uint32;
(*   %conv4.i.6.1.1 = zext i8 %conv5.i.5.1.1 to i32 *)
cast v_conv4_i_6_1_1@uint32 v_conv5_i_5_1_1@uint8;
(*   %shr.i.6.1.1 = ashr i32 %conv4.i.6.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_6_1_1 tmp_to_be_used v_conv4_i_6_1_1 1;
(*   %conv5.i.6.1.1 = trunc i32 %shr.i.6.1.1 to i8 *)
split tmp_v_shr_i_6_1_1 v_conv5_i_6_1_1 v_shr_i_6_1_1 8;
vpc v_conv5_i_6_1_1@uint8 v_conv5_i_6_1_1@uint32;
(*   %conv6.i.6.1.1 = zext i8 %conv7.i.5.1.1 to i32 *)
cast v_conv6_i_6_1_1@uint32 v_conv7_i_5_1_1@uint8;
(*   %shl.i.6.1.1 = shl i32 %conv6.i.6.1.1, 1 *)
shls discard_48 v_shl_i_6_1_1 v_conv6_i_6_1_1 1;
(*   %conv7.i.6.1.1 = trunc i32 %shl.i.6.1.1 to i8 *)
split tmp_v_shl_i_6_1_1 v_conv7_i_6_1_1 v_shl_i_6_1_1 8;
vpc v_conv7_i_6_1_1@uint8 v_conv7_i_6_1_1@uint32;
(*   %conv.i.7.1.1 = zext i8 %conv5.i.6.1.1 to i32 *)
cast v_conv_i_7_1_1@uint32 v_conv5_i_6_1_1@uint8;
(*   %and.i.7.1.1 = and i32 %conv.i.7.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_1_1 v_conv_i_7_1_1 (0x1)@uint32;
(*   %conv1.i.7.1.1 = zext i8 %conv7.i.6.1.1 to i32 *)
cast v_conv1_i_7_1_1@uint32 v_conv7_i_6_1_1@uint8;
(*   %mul.i.7.1.1 = mul nsw i32 %and.i.7.1.1, %conv1.i.7.1.1 *)
mul v_mul_i_7_1_1 v_and_i_7_1_1 v_conv1_i_7_1_1;
(*   %conv2.i.7.1.1 = zext i8 %conv3.i.6.1.1 to i32 *)
cast v_conv2_i_7_1_1@uint32 v_conv3_i_6_1_1@uint8;
(*   %xor.i.7.1.1 = xor i32 %conv2.i.7.1.1, %mul.i.7.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_1_1 v_conv2_i_7_1_1 v_mul_i_7_1_1;
(*   %conv3.i.7.1.1 = trunc i32 %xor.i.7.1.1 to i8 *)
split tmp_v_xor_i_7_1_1 v_conv3_i_7_1_1 v_xor_i_7_1_1 8;
vpc v_conv3_i_7_1_1@uint8 v_conv3_i_7_1_1@uint32;
(*   %arrayidx7.1.1 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 6 *)
(*   store i8 %conv3.i.7.1.1, i8* %arrayidx7.1.1, align 1 *)
mov alpha_6 v_conv3_i_7_1_1;
(*   %arrayidx5.2.1 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %9 = load i8, i8* %arrayidx5.2.1, align 1 *)
mov v9 b_2;
(*   %conv.i.253.1 = zext i8 %9 to i32 *)
cast v_conv_i_253_1@uint32 v9@uint8;
(*   %and.i.254.1 = and i32 %conv.i.253.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_254_1 v_conv_i_253_1 (0x1)@uint32;
(*   %conv1.i.255.1 = zext i8 %6 to i32 *)
cast v_conv1_i_255_1@uint32 v6@uint8;
(*   %mul.i.256.1 = mul nsw i32 %and.i.254.1, %conv1.i.255.1 *)
mul v_mul_i_256_1 v_and_i_254_1 v_conv1_i_255_1;
(*   %conv3.i.257.1 = trunc i32 %mul.i.256.1 to i8 *)
split tmp_v_mul_i_256_1 v_conv3_i_257_1 v_mul_i_256_1 8;
vpc v_conv3_i_257_1@uint8 v_conv3_i_257_1@uint32;
(*   %conv4.i.258.1 = zext i8 %9 to i32 *)
cast v_conv4_i_258_1@uint32 v9@uint8;
(*   %shr.i.259.1 = ashr i32 %conv4.i.258.1, 1 *)
(* You may need to modify here *)
split v_shr_i_259_1 tmp_to_be_used v_conv4_i_258_1 1;
(*   %conv5.i.260.1 = trunc i32 %shr.i.259.1 to i8 *)
split tmp_v_shr_i_259_1 v_conv5_i_260_1 v_shr_i_259_1 8;
vpc v_conv5_i_260_1@uint8 v_conv5_i_260_1@uint32;
(*   %conv6.i.261.1 = zext i8 %6 to i32 *)
cast v_conv6_i_261_1@uint32 v6@uint8;
(*   %shl.i.262.1 = shl i32 %conv6.i.261.1, 1 *)
shls discard_49 v_shl_i_262_1 v_conv6_i_261_1 1;
(*   %conv7.i.263.1 = trunc i32 %shl.i.262.1 to i8 *)
split tmp_v_shl_i_262_1 v_conv7_i_263_1 v_shl_i_262_1 8;
vpc v_conv7_i_263_1@uint8 v_conv7_i_263_1@uint32;
(*   %conv.i.1.2.1 = zext i8 %conv5.i.260.1 to i32 *)
cast v_conv_i_1_2_1@uint32 v_conv5_i_260_1@uint8;
(*   %and.i.1.2.1 = and i32 %conv.i.1.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_2_1 v_conv_i_1_2_1 (0x1)@uint32;
(*   %conv1.i.1.2.1 = zext i8 %conv7.i.263.1 to i32 *)
cast v_conv1_i_1_2_1@uint32 v_conv7_i_263_1@uint8;
(*   %mul.i.1.2.1 = mul nsw i32 %and.i.1.2.1, %conv1.i.1.2.1 *)
mul v_mul_i_1_2_1 v_and_i_1_2_1 v_conv1_i_1_2_1;
(*   %conv2.i.1.2.1 = zext i8 %conv3.i.257.1 to i32 *)
cast v_conv2_i_1_2_1@uint32 v_conv3_i_257_1@uint8;
(*   %xor.i.1.2.1 = xor i32 %conv2.i.1.2.1, %mul.i.1.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_2_1 v_conv2_i_1_2_1 v_mul_i_1_2_1;
(*   %conv3.i.1.2.1 = trunc i32 %xor.i.1.2.1 to i8 *)
split tmp_v_xor_i_1_2_1 v_conv3_i_1_2_1 v_xor_i_1_2_1 8;
vpc v_conv3_i_1_2_1@uint8 v_conv3_i_1_2_1@uint32;
(*   %conv4.i.1.2.1 = zext i8 %conv5.i.260.1 to i32 *)
cast v_conv4_i_1_2_1@uint32 v_conv5_i_260_1@uint8;
(*   %shr.i.1.2.1 = ashr i32 %conv4.i.1.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i_1_2_1 tmp_to_be_used v_conv4_i_1_2_1 1;
(*   %conv5.i.1.2.1 = trunc i32 %shr.i.1.2.1 to i8 *)
split tmp_v_shr_i_1_2_1 v_conv5_i_1_2_1 v_shr_i_1_2_1 8;
vpc v_conv5_i_1_2_1@uint8 v_conv5_i_1_2_1@uint32;
(*   %conv6.i.1.2.1 = zext i8 %conv7.i.263.1 to i32 *)
cast v_conv6_i_1_2_1@uint32 v_conv7_i_263_1@uint8;
(*   %shl.i.1.2.1 = shl i32 %conv6.i.1.2.1, 1 *)
shls discard_50 v_shl_i_1_2_1 v_conv6_i_1_2_1 1;
(*   %conv7.i.1.2.1 = trunc i32 %shl.i.1.2.1 to i8 *)
split tmp_v_shl_i_1_2_1 v_conv7_i_1_2_1 v_shl_i_1_2_1 8;
vpc v_conv7_i_1_2_1@uint8 v_conv7_i_1_2_1@uint32;
(*   %conv.i.2.2.1 = zext i8 %conv5.i.1.2.1 to i32 *)
cast v_conv_i_2_2_1@uint32 v_conv5_i_1_2_1@uint8;
(*   %and.i.2.2.1 = and i32 %conv.i.2.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_2_1 v_conv_i_2_2_1 (0x1)@uint32;
(*   %conv1.i.2.2.1 = zext i8 %conv7.i.1.2.1 to i32 *)
cast v_conv1_i_2_2_1@uint32 v_conv7_i_1_2_1@uint8;
(*   %mul.i.2.2.1 = mul nsw i32 %and.i.2.2.1, %conv1.i.2.2.1 *)
mul v_mul_i_2_2_1 v_and_i_2_2_1 v_conv1_i_2_2_1;
(*   %conv2.i.2.2.1 = zext i8 %conv3.i.1.2.1 to i32 *)
cast v_conv2_i_2_2_1@uint32 v_conv3_i_1_2_1@uint8;
(*   %xor.i.2.2.1 = xor i32 %conv2.i.2.2.1, %mul.i.2.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_2_1 v_conv2_i_2_2_1 v_mul_i_2_2_1;
(*   %conv3.i.2.2.1 = trunc i32 %xor.i.2.2.1 to i8 *)
split tmp_v_xor_i_2_2_1 v_conv3_i_2_2_1 v_xor_i_2_2_1 8;
vpc v_conv3_i_2_2_1@uint8 v_conv3_i_2_2_1@uint32;
(*   %conv4.i.2.2.1 = zext i8 %conv5.i.1.2.1 to i32 *)
cast v_conv4_i_2_2_1@uint32 v_conv5_i_1_2_1@uint8;
(*   %shr.i.2.2.1 = ashr i32 %conv4.i.2.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i_2_2_1 tmp_to_be_used v_conv4_i_2_2_1 1;
(*   %conv5.i.2.2.1 = trunc i32 %shr.i.2.2.1 to i8 *)
split tmp_v_shr_i_2_2_1 v_conv5_i_2_2_1 v_shr_i_2_2_1 8;
vpc v_conv5_i_2_2_1@uint8 v_conv5_i_2_2_1@uint32;
(*   %conv6.i.2.2.1 = zext i8 %conv7.i.1.2.1 to i32 *)
cast v_conv6_i_2_2_1@uint32 v_conv7_i_1_2_1@uint8;
(*   %shl.i.2.2.1 = shl i32 %conv6.i.2.2.1, 1 *)
shls discard_51 v_shl_i_2_2_1 v_conv6_i_2_2_1 1;
(*   %conv7.i.2.2.1 = trunc i32 %shl.i.2.2.1 to i8 *)
split tmp_v_shl_i_2_2_1 v_conv7_i_2_2_1 v_shl_i_2_2_1 8;
vpc v_conv7_i_2_2_1@uint8 v_conv7_i_2_2_1@uint32;
(*   %conv.i.3.2.1 = zext i8 %conv5.i.2.2.1 to i32 *)
cast v_conv_i_3_2_1@uint32 v_conv5_i_2_2_1@uint8;
(*   %and.i.3.2.1 = and i32 %conv.i.3.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_2_1 v_conv_i_3_2_1 (0x1)@uint32;
(*   %conv1.i.3.2.1 = zext i8 %conv7.i.2.2.1 to i32 *)
cast v_conv1_i_3_2_1@uint32 v_conv7_i_2_2_1@uint8;
(*   %mul.i.3.2.1 = mul nsw i32 %and.i.3.2.1, %conv1.i.3.2.1 *)
mul v_mul_i_3_2_1 v_and_i_3_2_1 v_conv1_i_3_2_1;
(*   %conv2.i.3.2.1 = zext i8 %conv3.i.2.2.1 to i32 *)
cast v_conv2_i_3_2_1@uint32 v_conv3_i_2_2_1@uint8;
(*   %xor.i.3.2.1 = xor i32 %conv2.i.3.2.1, %mul.i.3.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_2_1 v_conv2_i_3_2_1 v_mul_i_3_2_1;
(*   %conv3.i.3.2.1 = trunc i32 %xor.i.3.2.1 to i8 *)
split tmp_v_xor_i_3_2_1 v_conv3_i_3_2_1 v_xor_i_3_2_1 8;
vpc v_conv3_i_3_2_1@uint8 v_conv3_i_3_2_1@uint32;
(*   %conv4.i.3.2.1 = zext i8 %conv5.i.2.2.1 to i32 *)
cast v_conv4_i_3_2_1@uint32 v_conv5_i_2_2_1@uint8;
(*   %shr.i.3.2.1 = ashr i32 %conv4.i.3.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i_3_2_1 tmp_to_be_used v_conv4_i_3_2_1 1;
(*   %conv5.i.3.2.1 = trunc i32 %shr.i.3.2.1 to i8 *)
split tmp_v_shr_i_3_2_1 v_conv5_i_3_2_1 v_shr_i_3_2_1 8;
vpc v_conv5_i_3_2_1@uint8 v_conv5_i_3_2_1@uint32;
(*   %conv6.i.3.2.1 = zext i8 %conv7.i.2.2.1 to i32 *)
cast v_conv6_i_3_2_1@uint32 v_conv7_i_2_2_1@uint8;
(*   %shl.i.3.2.1 = shl i32 %conv6.i.3.2.1, 1 *)
shls discard_52 v_shl_i_3_2_1 v_conv6_i_3_2_1 1;
(*   %conv7.i.3.2.1 = trunc i32 %shl.i.3.2.1 to i8 *)
split tmp_v_shl_i_3_2_1 v_conv7_i_3_2_1 v_shl_i_3_2_1 8;
vpc v_conv7_i_3_2_1@uint8 v_conv7_i_3_2_1@uint32;
(*   %conv.i.4.2.1 = zext i8 %conv5.i.3.2.1 to i32 *)
cast v_conv_i_4_2_1@uint32 v_conv5_i_3_2_1@uint8;
(*   %and.i.4.2.1 = and i32 %conv.i.4.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_2_1 v_conv_i_4_2_1 (0x1)@uint32;
(*   %conv1.i.4.2.1 = zext i8 %conv7.i.3.2.1 to i32 *)
cast v_conv1_i_4_2_1@uint32 v_conv7_i_3_2_1@uint8;
(*   %mul.i.4.2.1 = mul nsw i32 %and.i.4.2.1, %conv1.i.4.2.1 *)
mul v_mul_i_4_2_1 v_and_i_4_2_1 v_conv1_i_4_2_1;
(*   %conv2.i.4.2.1 = zext i8 %conv3.i.3.2.1 to i32 *)
cast v_conv2_i_4_2_1@uint32 v_conv3_i_3_2_1@uint8;
(*   %xor.i.4.2.1 = xor i32 %conv2.i.4.2.1, %mul.i.4.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_2_1 v_conv2_i_4_2_1 v_mul_i_4_2_1;
(*   %conv3.i.4.2.1 = trunc i32 %xor.i.4.2.1 to i8 *)
split tmp_v_xor_i_4_2_1 v_conv3_i_4_2_1 v_xor_i_4_2_1 8;
vpc v_conv3_i_4_2_1@uint8 v_conv3_i_4_2_1@uint32;
(*   %conv4.i.4.2.1 = zext i8 %conv5.i.3.2.1 to i32 *)
cast v_conv4_i_4_2_1@uint32 v_conv5_i_3_2_1@uint8;
(*   %shr.i.4.2.1 = ashr i32 %conv4.i.4.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i_4_2_1 tmp_to_be_used v_conv4_i_4_2_1 1;
(*   %conv5.i.4.2.1 = trunc i32 %shr.i.4.2.1 to i8 *)
split tmp_v_shr_i_4_2_1 v_conv5_i_4_2_1 v_shr_i_4_2_1 8;
vpc v_conv5_i_4_2_1@uint8 v_conv5_i_4_2_1@uint32;
(*   %conv6.i.4.2.1 = zext i8 %conv7.i.3.2.1 to i32 *)
cast v_conv6_i_4_2_1@uint32 v_conv7_i_3_2_1@uint8;
(*   %shl.i.4.2.1 = shl i32 %conv6.i.4.2.1, 1 *)
shls discard_53 v_shl_i_4_2_1 v_conv6_i_4_2_1 1;
(*   %conv7.i.4.2.1 = trunc i32 %shl.i.4.2.1 to i8 *)
split tmp_v_shl_i_4_2_1 v_conv7_i_4_2_1 v_shl_i_4_2_1 8;
vpc v_conv7_i_4_2_1@uint8 v_conv7_i_4_2_1@uint32;
(*   %conv.i.5.2.1 = zext i8 %conv5.i.4.2.1 to i32 *)
cast v_conv_i_5_2_1@uint32 v_conv5_i_4_2_1@uint8;
(*   %and.i.5.2.1 = and i32 %conv.i.5.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_2_1 v_conv_i_5_2_1 (0x1)@uint32;
(*   %conv1.i.5.2.1 = zext i8 %conv7.i.4.2.1 to i32 *)
cast v_conv1_i_5_2_1@uint32 v_conv7_i_4_2_1@uint8;
(*   %mul.i.5.2.1 = mul nsw i32 %and.i.5.2.1, %conv1.i.5.2.1 *)
mul v_mul_i_5_2_1 v_and_i_5_2_1 v_conv1_i_5_2_1;
(*   %conv2.i.5.2.1 = zext i8 %conv3.i.4.2.1 to i32 *)
cast v_conv2_i_5_2_1@uint32 v_conv3_i_4_2_1@uint8;
(*   %xor.i.5.2.1 = xor i32 %conv2.i.5.2.1, %mul.i.5.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_2_1 v_conv2_i_5_2_1 v_mul_i_5_2_1;
(*   %conv3.i.5.2.1 = trunc i32 %xor.i.5.2.1 to i8 *)
split tmp_v_xor_i_5_2_1 v_conv3_i_5_2_1 v_xor_i_5_2_1 8;
vpc v_conv3_i_5_2_1@uint8 v_conv3_i_5_2_1@uint32;
(*   %conv4.i.5.2.1 = zext i8 %conv5.i.4.2.1 to i32 *)
cast v_conv4_i_5_2_1@uint32 v_conv5_i_4_2_1@uint8;
(*   %shr.i.5.2.1 = ashr i32 %conv4.i.5.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i_5_2_1 tmp_to_be_used v_conv4_i_5_2_1 1;
(*   %conv5.i.5.2.1 = trunc i32 %shr.i.5.2.1 to i8 *)
split tmp_v_shr_i_5_2_1 v_conv5_i_5_2_1 v_shr_i_5_2_1 8;
vpc v_conv5_i_5_2_1@uint8 v_conv5_i_5_2_1@uint32;
(*   %conv6.i.5.2.1 = zext i8 %conv7.i.4.2.1 to i32 *)
cast v_conv6_i_5_2_1@uint32 v_conv7_i_4_2_1@uint8;
(*   %shl.i.5.2.1 = shl i32 %conv6.i.5.2.1, 1 *)
shls discard_54 v_shl_i_5_2_1 v_conv6_i_5_2_1 1;
(*   %conv7.i.5.2.1 = trunc i32 %shl.i.5.2.1 to i8 *)
split tmp_v_shl_i_5_2_1 v_conv7_i_5_2_1 v_shl_i_5_2_1 8;
vpc v_conv7_i_5_2_1@uint8 v_conv7_i_5_2_1@uint32;
(*   %conv.i.6.2.1 = zext i8 %conv5.i.5.2.1 to i32 *)
cast v_conv_i_6_2_1@uint32 v_conv5_i_5_2_1@uint8;
(*   %and.i.6.2.1 = and i32 %conv.i.6.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_2_1 v_conv_i_6_2_1 (0x1)@uint32;
(*   %conv1.i.6.2.1 = zext i8 %conv7.i.5.2.1 to i32 *)
cast v_conv1_i_6_2_1@uint32 v_conv7_i_5_2_1@uint8;
(*   %mul.i.6.2.1 = mul nsw i32 %and.i.6.2.1, %conv1.i.6.2.1 *)
mul v_mul_i_6_2_1 v_and_i_6_2_1 v_conv1_i_6_2_1;
(*   %conv2.i.6.2.1 = zext i8 %conv3.i.5.2.1 to i32 *)
cast v_conv2_i_6_2_1@uint32 v_conv3_i_5_2_1@uint8;
(*   %xor.i.6.2.1 = xor i32 %conv2.i.6.2.1, %mul.i.6.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_2_1 v_conv2_i_6_2_1 v_mul_i_6_2_1;
(*   %conv3.i.6.2.1 = trunc i32 %xor.i.6.2.1 to i8 *)
split tmp_v_xor_i_6_2_1 v_conv3_i_6_2_1 v_xor_i_6_2_1 8;
vpc v_conv3_i_6_2_1@uint8 v_conv3_i_6_2_1@uint32;
(*   %conv4.i.6.2.1 = zext i8 %conv5.i.5.2.1 to i32 *)
cast v_conv4_i_6_2_1@uint32 v_conv5_i_5_2_1@uint8;
(*   %shr.i.6.2.1 = ashr i32 %conv4.i.6.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i_6_2_1 tmp_to_be_used v_conv4_i_6_2_1 1;
(*   %conv5.i.6.2.1 = trunc i32 %shr.i.6.2.1 to i8 *)
split tmp_v_shr_i_6_2_1 v_conv5_i_6_2_1 v_shr_i_6_2_1 8;
vpc v_conv5_i_6_2_1@uint8 v_conv5_i_6_2_1@uint32;
(*   %conv6.i.6.2.1 = zext i8 %conv7.i.5.2.1 to i32 *)
cast v_conv6_i_6_2_1@uint32 v_conv7_i_5_2_1@uint8;
(*   %shl.i.6.2.1 = shl i32 %conv6.i.6.2.1, 1 *)
shls discard_55 v_shl_i_6_2_1 v_conv6_i_6_2_1 1;
(*   %conv7.i.6.2.1 = trunc i32 %shl.i.6.2.1 to i8 *)
split tmp_v_shl_i_6_2_1 v_conv7_i_6_2_1 v_shl_i_6_2_1 8;
vpc v_conv7_i_6_2_1@uint8 v_conv7_i_6_2_1@uint32;
(*   %conv.i.7.2.1 = zext i8 %conv5.i.6.2.1 to i32 *)
cast v_conv_i_7_2_1@uint32 v_conv5_i_6_2_1@uint8;
(*   %and.i.7.2.1 = and i32 %conv.i.7.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_2_1 v_conv_i_7_2_1 (0x1)@uint32;
(*   %conv1.i.7.2.1 = zext i8 %conv7.i.6.2.1 to i32 *)
cast v_conv1_i_7_2_1@uint32 v_conv7_i_6_2_1@uint8;
(*   %mul.i.7.2.1 = mul nsw i32 %and.i.7.2.1, %conv1.i.7.2.1 *)
mul v_mul_i_7_2_1 v_and_i_7_2_1 v_conv1_i_7_2_1;
(*   %conv2.i.7.2.1 = zext i8 %conv3.i.6.2.1 to i32 *)
cast v_conv2_i_7_2_1@uint32 v_conv3_i_6_2_1@uint8;
(*   %xor.i.7.2.1 = xor i32 %conv2.i.7.2.1, %mul.i.7.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_2_1 v_conv2_i_7_2_1 v_mul_i_7_2_1;
(*   %conv3.i.7.2.1 = trunc i32 %xor.i.7.2.1 to i8 *)
split tmp_v_xor_i_7_2_1 v_conv3_i_7_2_1 v_xor_i_7_2_1 8;
vpc v_conv3_i_7_2_1@uint8 v_conv3_i_7_2_1@uint32;
(*   %arrayidx7.2.1 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 7 *)
(*   store i8 %conv3.i.7.2.1, i8* %arrayidx7.2.1, align 1 *)
mov alpha_7 v_conv3_i_7_2_1;
(*   %arrayidx5.3.1 = getelementptr inbounds i8, i8* %b, i64 3 *)
(*   %10 = load i8, i8* %arrayidx5.3.1, align 1 *)
mov v10 b_3;
(*   %conv.i.364.1 = zext i8 %10 to i32 *)
cast v_conv_i_364_1@uint32 v10@uint8;
(*   %and.i.365.1 = and i32 %conv.i.364.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_365_1 v_conv_i_364_1 (0x1)@uint32;
(*   %conv1.i.366.1 = zext i8 %6 to i32 *)
cast v_conv1_i_366_1@uint32 v6@uint8;
(*   %mul.i.367.1 = mul nsw i32 %and.i.365.1, %conv1.i.366.1 *)
mul v_mul_i_367_1 v_and_i_365_1 v_conv1_i_366_1;
(*   %conv3.i.368.1 = trunc i32 %mul.i.367.1 to i8 *)
split tmp_v_mul_i_367_1 v_conv3_i_368_1 v_mul_i_367_1 8;
vpc v_conv3_i_368_1@uint8 v_conv3_i_368_1@uint32;
(*   %conv4.i.369.1 = zext i8 %10 to i32 *)
cast v_conv4_i_369_1@uint32 v10@uint8;
(*   %shr.i.370.1 = ashr i32 %conv4.i.369.1, 1 *)
(* You may need to modify here *)
split v_shr_i_370_1 tmp_to_be_used v_conv4_i_369_1 1;
(*   %conv5.i.371.1 = trunc i32 %shr.i.370.1 to i8 *)
split tmp_v_shr_i_370_1 v_conv5_i_371_1 v_shr_i_370_1 8;
vpc v_conv5_i_371_1@uint8 v_conv5_i_371_1@uint32;
(*   %conv6.i.372.1 = zext i8 %6 to i32 *)
cast v_conv6_i_372_1@uint32 v6@uint8;
(*   %shl.i.373.1 = shl i32 %conv6.i.372.1, 1 *)
shls discard_56 v_shl_i_373_1 v_conv6_i_372_1 1;
(*   %conv7.i.374.1 = trunc i32 %shl.i.373.1 to i8 *)
split tmp_v_shl_i_373_1 v_conv7_i_374_1 v_shl_i_373_1 8;
vpc v_conv7_i_374_1@uint8 v_conv7_i_374_1@uint32;
(*   %conv.i.1.3.1 = zext i8 %conv5.i.371.1 to i32 *)
cast v_conv_i_1_3_1@uint32 v_conv5_i_371_1@uint8;
(*   %and.i.1.3.1 = and i32 %conv.i.1.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_3_1 v_conv_i_1_3_1 (0x1)@uint32;
(*   %conv1.i.1.3.1 = zext i8 %conv7.i.374.1 to i32 *)
cast v_conv1_i_1_3_1@uint32 v_conv7_i_374_1@uint8;
(*   %mul.i.1.3.1 = mul nsw i32 %and.i.1.3.1, %conv1.i.1.3.1 *)
mul v_mul_i_1_3_1 v_and_i_1_3_1 v_conv1_i_1_3_1;
(*   %conv2.i.1.3.1 = zext i8 %conv3.i.368.1 to i32 *)
cast v_conv2_i_1_3_1@uint32 v_conv3_i_368_1@uint8;
(*   %xor.i.1.3.1 = xor i32 %conv2.i.1.3.1, %mul.i.1.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_3_1 v_conv2_i_1_3_1 v_mul_i_1_3_1;
(*   %conv3.i.1.3.1 = trunc i32 %xor.i.1.3.1 to i8 *)
split tmp_v_xor_i_1_3_1 v_conv3_i_1_3_1 v_xor_i_1_3_1 8;
vpc v_conv3_i_1_3_1@uint8 v_conv3_i_1_3_1@uint32;
(*   %conv4.i.1.3.1 = zext i8 %conv5.i.371.1 to i32 *)
cast v_conv4_i_1_3_1@uint32 v_conv5_i_371_1@uint8;
(*   %shr.i.1.3.1 = ashr i32 %conv4.i.1.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i_1_3_1 tmp_to_be_used v_conv4_i_1_3_1 1;
(*   %conv5.i.1.3.1 = trunc i32 %shr.i.1.3.1 to i8 *)
split tmp_v_shr_i_1_3_1 v_conv5_i_1_3_1 v_shr_i_1_3_1 8;
vpc v_conv5_i_1_3_1@uint8 v_conv5_i_1_3_1@uint32;
(*   %conv6.i.1.3.1 = zext i8 %conv7.i.374.1 to i32 *)
cast v_conv6_i_1_3_1@uint32 v_conv7_i_374_1@uint8;
(*   %shl.i.1.3.1 = shl i32 %conv6.i.1.3.1, 1 *)
shls discard_57 v_shl_i_1_3_1 v_conv6_i_1_3_1 1;
(*   %conv7.i.1.3.1 = trunc i32 %shl.i.1.3.1 to i8 *)
split tmp_v_shl_i_1_3_1 v_conv7_i_1_3_1 v_shl_i_1_3_1 8;
vpc v_conv7_i_1_3_1@uint8 v_conv7_i_1_3_1@uint32;
(*   %conv.i.2.3.1 = zext i8 %conv5.i.1.3.1 to i32 *)
cast v_conv_i_2_3_1@uint32 v_conv5_i_1_3_1@uint8;
(*   %and.i.2.3.1 = and i32 %conv.i.2.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_3_1 v_conv_i_2_3_1 (0x1)@uint32;
(*   %conv1.i.2.3.1 = zext i8 %conv7.i.1.3.1 to i32 *)
cast v_conv1_i_2_3_1@uint32 v_conv7_i_1_3_1@uint8;
(*   %mul.i.2.3.1 = mul nsw i32 %and.i.2.3.1, %conv1.i.2.3.1 *)
mul v_mul_i_2_3_1 v_and_i_2_3_1 v_conv1_i_2_3_1;
(*   %conv2.i.2.3.1 = zext i8 %conv3.i.1.3.1 to i32 *)
cast v_conv2_i_2_3_1@uint32 v_conv3_i_1_3_1@uint8;
(*   %xor.i.2.3.1 = xor i32 %conv2.i.2.3.1, %mul.i.2.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_3_1 v_conv2_i_2_3_1 v_mul_i_2_3_1;
(*   %conv3.i.2.3.1 = trunc i32 %xor.i.2.3.1 to i8 *)
split tmp_v_xor_i_2_3_1 v_conv3_i_2_3_1 v_xor_i_2_3_1 8;
vpc v_conv3_i_2_3_1@uint8 v_conv3_i_2_3_1@uint32;
(*   %conv4.i.2.3.1 = zext i8 %conv5.i.1.3.1 to i32 *)
cast v_conv4_i_2_3_1@uint32 v_conv5_i_1_3_1@uint8;
(*   %shr.i.2.3.1 = ashr i32 %conv4.i.2.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i_2_3_1 tmp_to_be_used v_conv4_i_2_3_1 1;
(*   %conv5.i.2.3.1 = trunc i32 %shr.i.2.3.1 to i8 *)
split tmp_v_shr_i_2_3_1 v_conv5_i_2_3_1 v_shr_i_2_3_1 8;
vpc v_conv5_i_2_3_1@uint8 v_conv5_i_2_3_1@uint32;
(*   %conv6.i.2.3.1 = zext i8 %conv7.i.1.3.1 to i32 *)
cast v_conv6_i_2_3_1@uint32 v_conv7_i_1_3_1@uint8;
(*   %shl.i.2.3.1 = shl i32 %conv6.i.2.3.1, 1 *)
shls discard_58 v_shl_i_2_3_1 v_conv6_i_2_3_1 1;
(*   %conv7.i.2.3.1 = trunc i32 %shl.i.2.3.1 to i8 *)
split tmp_v_shl_i_2_3_1 v_conv7_i_2_3_1 v_shl_i_2_3_1 8;
vpc v_conv7_i_2_3_1@uint8 v_conv7_i_2_3_1@uint32;
(*   %conv.i.3.3.1 = zext i8 %conv5.i.2.3.1 to i32 *)
cast v_conv_i_3_3_1@uint32 v_conv5_i_2_3_1@uint8;
(*   %and.i.3.3.1 = and i32 %conv.i.3.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_3_1 v_conv_i_3_3_1 (0x1)@uint32;
(*   %conv1.i.3.3.1 = zext i8 %conv7.i.2.3.1 to i32 *)
cast v_conv1_i_3_3_1@uint32 v_conv7_i_2_3_1@uint8;
(*   %mul.i.3.3.1 = mul nsw i32 %and.i.3.3.1, %conv1.i.3.3.1 *)
mul v_mul_i_3_3_1 v_and_i_3_3_1 v_conv1_i_3_3_1;
(*   %conv2.i.3.3.1 = zext i8 %conv3.i.2.3.1 to i32 *)
cast v_conv2_i_3_3_1@uint32 v_conv3_i_2_3_1@uint8;
(*   %xor.i.3.3.1 = xor i32 %conv2.i.3.3.1, %mul.i.3.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_3_1 v_conv2_i_3_3_1 v_mul_i_3_3_1;
(*   %conv3.i.3.3.1 = trunc i32 %xor.i.3.3.1 to i8 *)
split tmp_v_xor_i_3_3_1 v_conv3_i_3_3_1 v_xor_i_3_3_1 8;
vpc v_conv3_i_3_3_1@uint8 v_conv3_i_3_3_1@uint32;
(*   %conv4.i.3.3.1 = zext i8 %conv5.i.2.3.1 to i32 *)
cast v_conv4_i_3_3_1@uint32 v_conv5_i_2_3_1@uint8;
(*   %shr.i.3.3.1 = ashr i32 %conv4.i.3.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i_3_3_1 tmp_to_be_used v_conv4_i_3_3_1 1;
(*   %conv5.i.3.3.1 = trunc i32 %shr.i.3.3.1 to i8 *)
split tmp_v_shr_i_3_3_1 v_conv5_i_3_3_1 v_shr_i_3_3_1 8;
vpc v_conv5_i_3_3_1@uint8 v_conv5_i_3_3_1@uint32;
(*   %conv6.i.3.3.1 = zext i8 %conv7.i.2.3.1 to i32 *)
cast v_conv6_i_3_3_1@uint32 v_conv7_i_2_3_1@uint8;
(*   %shl.i.3.3.1 = shl i32 %conv6.i.3.3.1, 1 *)
shls discard_59 v_shl_i_3_3_1 v_conv6_i_3_3_1 1;
(*   %conv7.i.3.3.1 = trunc i32 %shl.i.3.3.1 to i8 *)
split tmp_v_shl_i_3_3_1 v_conv7_i_3_3_1 v_shl_i_3_3_1 8;
vpc v_conv7_i_3_3_1@uint8 v_conv7_i_3_3_1@uint32;
(*   %conv.i.4.3.1 = zext i8 %conv5.i.3.3.1 to i32 *)
cast v_conv_i_4_3_1@uint32 v_conv5_i_3_3_1@uint8;
(*   %and.i.4.3.1 = and i32 %conv.i.4.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_3_1 v_conv_i_4_3_1 (0x1)@uint32;
(*   %conv1.i.4.3.1 = zext i8 %conv7.i.3.3.1 to i32 *)
cast v_conv1_i_4_3_1@uint32 v_conv7_i_3_3_1@uint8;
(*   %mul.i.4.3.1 = mul nsw i32 %and.i.4.3.1, %conv1.i.4.3.1 *)
mul v_mul_i_4_3_1 v_and_i_4_3_1 v_conv1_i_4_3_1;
(*   %conv2.i.4.3.1 = zext i8 %conv3.i.3.3.1 to i32 *)
cast v_conv2_i_4_3_1@uint32 v_conv3_i_3_3_1@uint8;
(*   %xor.i.4.3.1 = xor i32 %conv2.i.4.3.1, %mul.i.4.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_3_1 v_conv2_i_4_3_1 v_mul_i_4_3_1;
(*   %conv3.i.4.3.1 = trunc i32 %xor.i.4.3.1 to i8 *)
split tmp_v_xor_i_4_3_1 v_conv3_i_4_3_1 v_xor_i_4_3_1 8;
vpc v_conv3_i_4_3_1@uint8 v_conv3_i_4_3_1@uint32;
(*   %conv4.i.4.3.1 = zext i8 %conv5.i.3.3.1 to i32 *)
cast v_conv4_i_4_3_1@uint32 v_conv5_i_3_3_1@uint8;
(*   %shr.i.4.3.1 = ashr i32 %conv4.i.4.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i_4_3_1 tmp_to_be_used v_conv4_i_4_3_1 1;
(*   %conv5.i.4.3.1 = trunc i32 %shr.i.4.3.1 to i8 *)
split tmp_v_shr_i_4_3_1 v_conv5_i_4_3_1 v_shr_i_4_3_1 8;
vpc v_conv5_i_4_3_1@uint8 v_conv5_i_4_3_1@uint32;
(*   %conv6.i.4.3.1 = zext i8 %conv7.i.3.3.1 to i32 *)
cast v_conv6_i_4_3_1@uint32 v_conv7_i_3_3_1@uint8;
(*   %shl.i.4.3.1 = shl i32 %conv6.i.4.3.1, 1 *)
shls discard_60 v_shl_i_4_3_1 v_conv6_i_4_3_1 1;
(*   %conv7.i.4.3.1 = trunc i32 %shl.i.4.3.1 to i8 *)
split tmp_v_shl_i_4_3_1 v_conv7_i_4_3_1 v_shl_i_4_3_1 8;
vpc v_conv7_i_4_3_1@uint8 v_conv7_i_4_3_1@uint32;
(*   %conv.i.5.3.1 = zext i8 %conv5.i.4.3.1 to i32 *)
cast v_conv_i_5_3_1@uint32 v_conv5_i_4_3_1@uint8;
(*   %and.i.5.3.1 = and i32 %conv.i.5.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_3_1 v_conv_i_5_3_1 (0x1)@uint32;
(*   %conv1.i.5.3.1 = zext i8 %conv7.i.4.3.1 to i32 *)
cast v_conv1_i_5_3_1@uint32 v_conv7_i_4_3_1@uint8;
(*   %mul.i.5.3.1 = mul nsw i32 %and.i.5.3.1, %conv1.i.5.3.1 *)
mul v_mul_i_5_3_1 v_and_i_5_3_1 v_conv1_i_5_3_1;
(*   %conv2.i.5.3.1 = zext i8 %conv3.i.4.3.1 to i32 *)
cast v_conv2_i_5_3_1@uint32 v_conv3_i_4_3_1@uint8;
(*   %xor.i.5.3.1 = xor i32 %conv2.i.5.3.1, %mul.i.5.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_3_1 v_conv2_i_5_3_1 v_mul_i_5_3_1;
(*   %conv3.i.5.3.1 = trunc i32 %xor.i.5.3.1 to i8 *)
split tmp_v_xor_i_5_3_1 v_conv3_i_5_3_1 v_xor_i_5_3_1 8;
vpc v_conv3_i_5_3_1@uint8 v_conv3_i_5_3_1@uint32;
(*   %conv4.i.5.3.1 = zext i8 %conv5.i.4.3.1 to i32 *)
cast v_conv4_i_5_3_1@uint32 v_conv5_i_4_3_1@uint8;
(*   %shr.i.5.3.1 = ashr i32 %conv4.i.5.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i_5_3_1 tmp_to_be_used v_conv4_i_5_3_1 1;
(*   %conv5.i.5.3.1 = trunc i32 %shr.i.5.3.1 to i8 *)
split tmp_v_shr_i_5_3_1 v_conv5_i_5_3_1 v_shr_i_5_3_1 8;
vpc v_conv5_i_5_3_1@uint8 v_conv5_i_5_3_1@uint32;
(*   %conv6.i.5.3.1 = zext i8 %conv7.i.4.3.1 to i32 *)
cast v_conv6_i_5_3_1@uint32 v_conv7_i_4_3_1@uint8;
(*   %shl.i.5.3.1 = shl i32 %conv6.i.5.3.1, 1 *)
shls discard_61 v_shl_i_5_3_1 v_conv6_i_5_3_1 1;
(*   %conv7.i.5.3.1 = trunc i32 %shl.i.5.3.1 to i8 *)
split tmp_v_shl_i_5_3_1 v_conv7_i_5_3_1 v_shl_i_5_3_1 8;
vpc v_conv7_i_5_3_1@uint8 v_conv7_i_5_3_1@uint32;
(*   %conv.i.6.3.1 = zext i8 %conv5.i.5.3.1 to i32 *)
cast v_conv_i_6_3_1@uint32 v_conv5_i_5_3_1@uint8;
(*   %and.i.6.3.1 = and i32 %conv.i.6.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_3_1 v_conv_i_6_3_1 (0x1)@uint32;
(*   %conv1.i.6.3.1 = zext i8 %conv7.i.5.3.1 to i32 *)
cast v_conv1_i_6_3_1@uint32 v_conv7_i_5_3_1@uint8;
(*   %mul.i.6.3.1 = mul nsw i32 %and.i.6.3.1, %conv1.i.6.3.1 *)
mul v_mul_i_6_3_1 v_and_i_6_3_1 v_conv1_i_6_3_1;
(*   %conv2.i.6.3.1 = zext i8 %conv3.i.5.3.1 to i32 *)
cast v_conv2_i_6_3_1@uint32 v_conv3_i_5_3_1@uint8;
(*   %xor.i.6.3.1 = xor i32 %conv2.i.6.3.1, %mul.i.6.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_3_1 v_conv2_i_6_3_1 v_mul_i_6_3_1;
(*   %conv3.i.6.3.1 = trunc i32 %xor.i.6.3.1 to i8 *)
split tmp_v_xor_i_6_3_1 v_conv3_i_6_3_1 v_xor_i_6_3_1 8;
vpc v_conv3_i_6_3_1@uint8 v_conv3_i_6_3_1@uint32;
(*   %conv4.i.6.3.1 = zext i8 %conv5.i.5.3.1 to i32 *)
cast v_conv4_i_6_3_1@uint32 v_conv5_i_5_3_1@uint8;
(*   %shr.i.6.3.1 = ashr i32 %conv4.i.6.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i_6_3_1 tmp_to_be_used v_conv4_i_6_3_1 1;
(*   %conv5.i.6.3.1 = trunc i32 %shr.i.6.3.1 to i8 *)
split tmp_v_shr_i_6_3_1 v_conv5_i_6_3_1 v_shr_i_6_3_1 8;
vpc v_conv5_i_6_3_1@uint8 v_conv5_i_6_3_1@uint32;
(*   %conv6.i.6.3.1 = zext i8 %conv7.i.5.3.1 to i32 *)
cast v_conv6_i_6_3_1@uint32 v_conv7_i_5_3_1@uint8;
(*   %shl.i.6.3.1 = shl i32 %conv6.i.6.3.1, 1 *)
shls discard_62 v_shl_i_6_3_1 v_conv6_i_6_3_1 1;
(*   %conv7.i.6.3.1 = trunc i32 %shl.i.6.3.1 to i8 *)
split tmp_v_shl_i_6_3_1 v_conv7_i_6_3_1 v_shl_i_6_3_1 8;
vpc v_conv7_i_6_3_1@uint8 v_conv7_i_6_3_1@uint32;
(*   %conv.i.7.3.1 = zext i8 %conv5.i.6.3.1 to i32 *)
cast v_conv_i_7_3_1@uint32 v_conv5_i_6_3_1@uint8;
(*   %and.i.7.3.1 = and i32 %conv.i.7.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_3_1 v_conv_i_7_3_1 (0x1)@uint32;
(*   %conv1.i.7.3.1 = zext i8 %conv7.i.6.3.1 to i32 *)
cast v_conv1_i_7_3_1@uint32 v_conv7_i_6_3_1@uint8;
(*   %mul.i.7.3.1 = mul nsw i32 %and.i.7.3.1, %conv1.i.7.3.1 *)
mul v_mul_i_7_3_1 v_and_i_7_3_1 v_conv1_i_7_3_1;
(*   %conv2.i.7.3.1 = zext i8 %conv3.i.6.3.1 to i32 *)
cast v_conv2_i_7_3_1@uint32 v_conv3_i_6_3_1@uint8;
(*   %xor.i.7.3.1 = xor i32 %conv2.i.7.3.1, %mul.i.7.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_3_1 v_conv2_i_7_3_1 v_mul_i_7_3_1;
(*   %conv3.i.7.3.1 = trunc i32 %xor.i.7.3.1 to i8 *)
split tmp_v_xor_i_7_3_1 v_conv3_i_7_3_1 v_xor_i_7_3_1 8;
vpc v_conv3_i_7_3_1@uint8 v_conv3_i_7_3_1@uint32;
(*   %arrayidx7.3.1 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 8 *)
(*   store i8 %conv3.i.7.3.1, i8* %arrayidx7.3.1, align 1 *)
mov alpha_8 v_conv3_i_7_3_1;
(*   %arrayidx5.4.1 = getelementptr inbounds i8, i8* %b, i64 4 *)
(*   %11 = load i8, i8* %arrayidx5.4.1, align 1 *)
mov v11 b_4;
(*   %conv.i.475.1 = zext i8 %11 to i32 *)
cast v_conv_i_475_1@uint32 v11@uint8;
(*   %and.i.476.1 = and i32 %conv.i.475.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_476_1 v_conv_i_475_1 (0x1)@uint32;
(*   %conv1.i.477.1 = zext i8 %6 to i32 *)
cast v_conv1_i_477_1@uint32 v6@uint8;
(*   %mul.i.478.1 = mul nsw i32 %and.i.476.1, %conv1.i.477.1 *)
mul v_mul_i_478_1 v_and_i_476_1 v_conv1_i_477_1;
(*   %conv3.i.479.1 = trunc i32 %mul.i.478.1 to i8 *)
split tmp_v_mul_i_478_1 v_conv3_i_479_1 v_mul_i_478_1 8;
vpc v_conv3_i_479_1@uint8 v_conv3_i_479_1@uint32;
(*   %conv4.i.480.1 = zext i8 %11 to i32 *)
cast v_conv4_i_480_1@uint32 v11@uint8;
(*   %shr.i.481.1 = ashr i32 %conv4.i.480.1, 1 *)
(* You may need to modify here *)
split v_shr_i_481_1 tmp_to_be_used v_conv4_i_480_1 1;
(*   %conv5.i.482.1 = trunc i32 %shr.i.481.1 to i8 *)
split tmp_v_shr_i_481_1 v_conv5_i_482_1 v_shr_i_481_1 8;
vpc v_conv5_i_482_1@uint8 v_conv5_i_482_1@uint32;
(*   %conv6.i.483.1 = zext i8 %6 to i32 *)
cast v_conv6_i_483_1@uint32 v6@uint8;
(*   %shl.i.484.1 = shl i32 %conv6.i.483.1, 1 *)
shls discard_63 v_shl_i_484_1 v_conv6_i_483_1 1;
(*   %conv7.i.485.1 = trunc i32 %shl.i.484.1 to i8 *)
split tmp_v_shl_i_484_1 v_conv7_i_485_1 v_shl_i_484_1 8;
vpc v_conv7_i_485_1@uint8 v_conv7_i_485_1@uint32;
(*   %conv.i.1.4.1 = zext i8 %conv5.i.482.1 to i32 *)
cast v_conv_i_1_4_1@uint32 v_conv5_i_482_1@uint8;
(*   %and.i.1.4.1 = and i32 %conv.i.1.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_4_1 v_conv_i_1_4_1 (0x1)@uint32;
(*   %conv1.i.1.4.1 = zext i8 %conv7.i.485.1 to i32 *)
cast v_conv1_i_1_4_1@uint32 v_conv7_i_485_1@uint8;
(*   %mul.i.1.4.1 = mul nsw i32 %and.i.1.4.1, %conv1.i.1.4.1 *)
mul v_mul_i_1_4_1 v_and_i_1_4_1 v_conv1_i_1_4_1;
(*   %conv2.i.1.4.1 = zext i8 %conv3.i.479.1 to i32 *)
cast v_conv2_i_1_4_1@uint32 v_conv3_i_479_1@uint8;
(*   %xor.i.1.4.1 = xor i32 %conv2.i.1.4.1, %mul.i.1.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_4_1 v_conv2_i_1_4_1 v_mul_i_1_4_1;
(*   %conv3.i.1.4.1 = trunc i32 %xor.i.1.4.1 to i8 *)
split tmp_v_xor_i_1_4_1 v_conv3_i_1_4_1 v_xor_i_1_4_1 8;
vpc v_conv3_i_1_4_1@uint8 v_conv3_i_1_4_1@uint32;
(*   %conv4.i.1.4.1 = zext i8 %conv5.i.482.1 to i32 *)
cast v_conv4_i_1_4_1@uint32 v_conv5_i_482_1@uint8;
(*   %shr.i.1.4.1 = ashr i32 %conv4.i.1.4.1, 1 *)
(* You may need to modify here *)
split v_shr_i_1_4_1 tmp_to_be_used v_conv4_i_1_4_1 1;
(*   %conv5.i.1.4.1 = trunc i32 %shr.i.1.4.1 to i8 *)
split tmp_v_shr_i_1_4_1 v_conv5_i_1_4_1 v_shr_i_1_4_1 8;
vpc v_conv5_i_1_4_1@uint8 v_conv5_i_1_4_1@uint32;
(*   %conv6.i.1.4.1 = zext i8 %conv7.i.485.1 to i32 *)
cast v_conv6_i_1_4_1@uint32 v_conv7_i_485_1@uint8;
(*   %shl.i.1.4.1 = shl i32 %conv6.i.1.4.1, 1 *)
shls discard_64 v_shl_i_1_4_1 v_conv6_i_1_4_1 1;
(*   %conv7.i.1.4.1 = trunc i32 %shl.i.1.4.1 to i8 *)
split tmp_v_shl_i_1_4_1 v_conv7_i_1_4_1 v_shl_i_1_4_1 8;
vpc v_conv7_i_1_4_1@uint8 v_conv7_i_1_4_1@uint32;
(*   %conv.i.2.4.1 = zext i8 %conv5.i.1.4.1 to i32 *)
cast v_conv_i_2_4_1@uint32 v_conv5_i_1_4_1@uint8;
(*   %and.i.2.4.1 = and i32 %conv.i.2.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_4_1 v_conv_i_2_4_1 (0x1)@uint32;
(*   %conv1.i.2.4.1 = zext i8 %conv7.i.1.4.1 to i32 *)
cast v_conv1_i_2_4_1@uint32 v_conv7_i_1_4_1@uint8;
(*   %mul.i.2.4.1 = mul nsw i32 %and.i.2.4.1, %conv1.i.2.4.1 *)
mul v_mul_i_2_4_1 v_and_i_2_4_1 v_conv1_i_2_4_1;
(*   %conv2.i.2.4.1 = zext i8 %conv3.i.1.4.1 to i32 *)
cast v_conv2_i_2_4_1@uint32 v_conv3_i_1_4_1@uint8;
(*   %xor.i.2.4.1 = xor i32 %conv2.i.2.4.1, %mul.i.2.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_4_1 v_conv2_i_2_4_1 v_mul_i_2_4_1;
(*   %conv3.i.2.4.1 = trunc i32 %xor.i.2.4.1 to i8 *)
split tmp_v_xor_i_2_4_1 v_conv3_i_2_4_1 v_xor_i_2_4_1 8;
vpc v_conv3_i_2_4_1@uint8 v_conv3_i_2_4_1@uint32;
(*   %conv4.i.2.4.1 = zext i8 %conv5.i.1.4.1 to i32 *)
cast v_conv4_i_2_4_1@uint32 v_conv5_i_1_4_1@uint8;
(*   %shr.i.2.4.1 = ashr i32 %conv4.i.2.4.1, 1 *)
(* You may need to modify here *)
split v_shr_i_2_4_1 tmp_to_be_used v_conv4_i_2_4_1 1;
(*   %conv5.i.2.4.1 = trunc i32 %shr.i.2.4.1 to i8 *)
split tmp_v_shr_i_2_4_1 v_conv5_i_2_4_1 v_shr_i_2_4_1 8;
vpc v_conv5_i_2_4_1@uint8 v_conv5_i_2_4_1@uint32;
(*   %conv6.i.2.4.1 = zext i8 %conv7.i.1.4.1 to i32 *)
cast v_conv6_i_2_4_1@uint32 v_conv7_i_1_4_1@uint8;
(*   %shl.i.2.4.1 = shl i32 %conv6.i.2.4.1, 1 *)
shls discard_65 v_shl_i_2_4_1 v_conv6_i_2_4_1 1;
(*   %conv7.i.2.4.1 = trunc i32 %shl.i.2.4.1 to i8 *)
split tmp_v_shl_i_2_4_1 v_conv7_i_2_4_1 v_shl_i_2_4_1 8;
vpc v_conv7_i_2_4_1@uint8 v_conv7_i_2_4_1@uint32;
(*   %conv.i.3.4.1 = zext i8 %conv5.i.2.4.1 to i32 *)
cast v_conv_i_3_4_1@uint32 v_conv5_i_2_4_1@uint8;
(*   %and.i.3.4.1 = and i32 %conv.i.3.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_4_1 v_conv_i_3_4_1 (0x1)@uint32;
(*   %conv1.i.3.4.1 = zext i8 %conv7.i.2.4.1 to i32 *)
cast v_conv1_i_3_4_1@uint32 v_conv7_i_2_4_1@uint8;
(*   %mul.i.3.4.1 = mul nsw i32 %and.i.3.4.1, %conv1.i.3.4.1 *)
mul v_mul_i_3_4_1 v_and_i_3_4_1 v_conv1_i_3_4_1;
(*   %conv2.i.3.4.1 = zext i8 %conv3.i.2.4.1 to i32 *)
cast v_conv2_i_3_4_1@uint32 v_conv3_i_2_4_1@uint8;
(*   %xor.i.3.4.1 = xor i32 %conv2.i.3.4.1, %mul.i.3.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_4_1 v_conv2_i_3_4_1 v_mul_i_3_4_1;
(*   %conv3.i.3.4.1 = trunc i32 %xor.i.3.4.1 to i8 *)
split tmp_v_xor_i_3_4_1 v_conv3_i_3_4_1 v_xor_i_3_4_1 8;
vpc v_conv3_i_3_4_1@uint8 v_conv3_i_3_4_1@uint32;
(*   %conv4.i.3.4.1 = zext i8 %conv5.i.2.4.1 to i32 *)
cast v_conv4_i_3_4_1@uint32 v_conv5_i_2_4_1@uint8;
(*   %shr.i.3.4.1 = ashr i32 %conv4.i.3.4.1, 1 *)
(* You may need to modify here *)
split v_shr_i_3_4_1 tmp_to_be_used v_conv4_i_3_4_1 1;
(*   %conv5.i.3.4.1 = trunc i32 %shr.i.3.4.1 to i8 *)
split tmp_v_shr_i_3_4_1 v_conv5_i_3_4_1 v_shr_i_3_4_1 8;
vpc v_conv5_i_3_4_1@uint8 v_conv5_i_3_4_1@uint32;
(*   %conv6.i.3.4.1 = zext i8 %conv7.i.2.4.1 to i32 *)
cast v_conv6_i_3_4_1@uint32 v_conv7_i_2_4_1@uint8;
(*   %shl.i.3.4.1 = shl i32 %conv6.i.3.4.1, 1 *)
shls discard_66 v_shl_i_3_4_1 v_conv6_i_3_4_1 1;
(*   %conv7.i.3.4.1 = trunc i32 %shl.i.3.4.1 to i8 *)
split tmp_v_shl_i_3_4_1 v_conv7_i_3_4_1 v_shl_i_3_4_1 8;
vpc v_conv7_i_3_4_1@uint8 v_conv7_i_3_4_1@uint32;
(*   %conv.i.4.4.1 = zext i8 %conv5.i.3.4.1 to i32 *)
cast v_conv_i_4_4_1@uint32 v_conv5_i_3_4_1@uint8;
(*   %and.i.4.4.1 = and i32 %conv.i.4.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_4_1 v_conv_i_4_4_1 (0x1)@uint32;
(*   %conv1.i.4.4.1 = zext i8 %conv7.i.3.4.1 to i32 *)
cast v_conv1_i_4_4_1@uint32 v_conv7_i_3_4_1@uint8;
(*   %mul.i.4.4.1 = mul nsw i32 %and.i.4.4.1, %conv1.i.4.4.1 *)
mul v_mul_i_4_4_1 v_and_i_4_4_1 v_conv1_i_4_4_1;
(*   %conv2.i.4.4.1 = zext i8 %conv3.i.3.4.1 to i32 *)
cast v_conv2_i_4_4_1@uint32 v_conv3_i_3_4_1@uint8;
(*   %xor.i.4.4.1 = xor i32 %conv2.i.4.4.1, %mul.i.4.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_4_1 v_conv2_i_4_4_1 v_mul_i_4_4_1;
(*   %conv3.i.4.4.1 = trunc i32 %xor.i.4.4.1 to i8 *)
split tmp_v_xor_i_4_4_1 v_conv3_i_4_4_1 v_xor_i_4_4_1 8;
vpc v_conv3_i_4_4_1@uint8 v_conv3_i_4_4_1@uint32;
(*   %conv4.i.4.4.1 = zext i8 %conv5.i.3.4.1 to i32 *)
cast v_conv4_i_4_4_1@uint32 v_conv5_i_3_4_1@uint8;
(*   %shr.i.4.4.1 = ashr i32 %conv4.i.4.4.1, 1 *)
(* You may need to modify here *)
split v_shr_i_4_4_1 tmp_to_be_used v_conv4_i_4_4_1 1;
(*   %conv5.i.4.4.1 = trunc i32 %shr.i.4.4.1 to i8 *)
split tmp_v_shr_i_4_4_1 v_conv5_i_4_4_1 v_shr_i_4_4_1 8;
vpc v_conv5_i_4_4_1@uint8 v_conv5_i_4_4_1@uint32;
(*   %conv6.i.4.4.1 = zext i8 %conv7.i.3.4.1 to i32 *)
cast v_conv6_i_4_4_1@uint32 v_conv7_i_3_4_1@uint8;
(*   %shl.i.4.4.1 = shl i32 %conv6.i.4.4.1, 1 *)
shls discard_67 v_shl_i_4_4_1 v_conv6_i_4_4_1 1;
(*   %conv7.i.4.4.1 = trunc i32 %shl.i.4.4.1 to i8 *)
split tmp_v_shl_i_4_4_1 v_conv7_i_4_4_1 v_shl_i_4_4_1 8;
vpc v_conv7_i_4_4_1@uint8 v_conv7_i_4_4_1@uint32;
(*   %conv.i.5.4.1 = zext i8 %conv5.i.4.4.1 to i32 *)
cast v_conv_i_5_4_1@uint32 v_conv5_i_4_4_1@uint8;
(*   %and.i.5.4.1 = and i32 %conv.i.5.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_4_1 v_conv_i_5_4_1 (0x1)@uint32;
(*   %conv1.i.5.4.1 = zext i8 %conv7.i.4.4.1 to i32 *)
cast v_conv1_i_5_4_1@uint32 v_conv7_i_4_4_1@uint8;
(*   %mul.i.5.4.1 = mul nsw i32 %and.i.5.4.1, %conv1.i.5.4.1 *)
mul v_mul_i_5_4_1 v_and_i_5_4_1 v_conv1_i_5_4_1;
(*   %conv2.i.5.4.1 = zext i8 %conv3.i.4.4.1 to i32 *)
cast v_conv2_i_5_4_1@uint32 v_conv3_i_4_4_1@uint8;
(*   %xor.i.5.4.1 = xor i32 %conv2.i.5.4.1, %mul.i.5.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_4_1 v_conv2_i_5_4_1 v_mul_i_5_4_1;
(*   %conv3.i.5.4.1 = trunc i32 %xor.i.5.4.1 to i8 *)
split tmp_v_xor_i_5_4_1 v_conv3_i_5_4_1 v_xor_i_5_4_1 8;
vpc v_conv3_i_5_4_1@uint8 v_conv3_i_5_4_1@uint32;
(*   %conv4.i.5.4.1 = zext i8 %conv5.i.4.4.1 to i32 *)
cast v_conv4_i_5_4_1@uint32 v_conv5_i_4_4_1@uint8;
(*   %shr.i.5.4.1 = ashr i32 %conv4.i.5.4.1, 1 *)
(* You may need to modify here *)
split v_shr_i_5_4_1 tmp_to_be_used v_conv4_i_5_4_1 1;
(*   %conv5.i.5.4.1 = trunc i32 %shr.i.5.4.1 to i8 *)
split tmp_v_shr_i_5_4_1 v_conv5_i_5_4_1 v_shr_i_5_4_1 8;
vpc v_conv5_i_5_4_1@uint8 v_conv5_i_5_4_1@uint32;
(*   %conv6.i.5.4.1 = zext i8 %conv7.i.4.4.1 to i32 *)
cast v_conv6_i_5_4_1@uint32 v_conv7_i_4_4_1@uint8;
(*   %shl.i.5.4.1 = shl i32 %conv6.i.5.4.1, 1 *)
shls discard_68 v_shl_i_5_4_1 v_conv6_i_5_4_1 1;
(*   %conv7.i.5.4.1 = trunc i32 %shl.i.5.4.1 to i8 *)
split tmp_v_shl_i_5_4_1 v_conv7_i_5_4_1 v_shl_i_5_4_1 8;
vpc v_conv7_i_5_4_1@uint8 v_conv7_i_5_4_1@uint32;
(*   %conv.i.6.4.1 = zext i8 %conv5.i.5.4.1 to i32 *)
cast v_conv_i_6_4_1@uint32 v_conv5_i_5_4_1@uint8;
(*   %and.i.6.4.1 = and i32 %conv.i.6.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_4_1 v_conv_i_6_4_1 (0x1)@uint32;
(*   %conv1.i.6.4.1 = zext i8 %conv7.i.5.4.1 to i32 *)
cast v_conv1_i_6_4_1@uint32 v_conv7_i_5_4_1@uint8;
(*   %mul.i.6.4.1 = mul nsw i32 %and.i.6.4.1, %conv1.i.6.4.1 *)
mul v_mul_i_6_4_1 v_and_i_6_4_1 v_conv1_i_6_4_1;
(*   %conv2.i.6.4.1 = zext i8 %conv3.i.5.4.1 to i32 *)
cast v_conv2_i_6_4_1@uint32 v_conv3_i_5_4_1@uint8;
(*   %xor.i.6.4.1 = xor i32 %conv2.i.6.4.1, %mul.i.6.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_4_1 v_conv2_i_6_4_1 v_mul_i_6_4_1;
(*   %conv3.i.6.4.1 = trunc i32 %xor.i.6.4.1 to i8 *)
split tmp_v_xor_i_6_4_1 v_conv3_i_6_4_1 v_xor_i_6_4_1 8;
vpc v_conv3_i_6_4_1@uint8 v_conv3_i_6_4_1@uint32;
(*   %conv4.i.6.4.1 = zext i8 %conv5.i.5.4.1 to i32 *)
cast v_conv4_i_6_4_1@uint32 v_conv5_i_5_4_1@uint8;
(*   %shr.i.6.4.1 = ashr i32 %conv4.i.6.4.1, 1 *)
(* You may need to modify here *)
split v_shr_i_6_4_1 tmp_to_be_used v_conv4_i_6_4_1 1;
(*   %conv5.i.6.4.1 = trunc i32 %shr.i.6.4.1 to i8 *)
split tmp_v_shr_i_6_4_1 v_conv5_i_6_4_1 v_shr_i_6_4_1 8;
vpc v_conv5_i_6_4_1@uint8 v_conv5_i_6_4_1@uint32;
(*   %conv6.i.6.4.1 = zext i8 %conv7.i.5.4.1 to i32 *)
cast v_conv6_i_6_4_1@uint32 v_conv7_i_5_4_1@uint8;
(*   %shl.i.6.4.1 = shl i32 %conv6.i.6.4.1, 1 *)
shls discard_69 v_shl_i_6_4_1 v_conv6_i_6_4_1 1;
(*   %conv7.i.6.4.1 = trunc i32 %shl.i.6.4.1 to i8 *)
split tmp_v_shl_i_6_4_1 v_conv7_i_6_4_1 v_shl_i_6_4_1 8;
vpc v_conv7_i_6_4_1@uint8 v_conv7_i_6_4_1@uint32;
(*   %conv.i.7.4.1 = zext i8 %conv5.i.6.4.1 to i32 *)
cast v_conv_i_7_4_1@uint32 v_conv5_i_6_4_1@uint8;
(*   %and.i.7.4.1 = and i32 %conv.i.7.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_4_1 v_conv_i_7_4_1 (0x1)@uint32;
(*   %conv1.i.7.4.1 = zext i8 %conv7.i.6.4.1 to i32 *)
cast v_conv1_i_7_4_1@uint32 v_conv7_i_6_4_1@uint8;
(*   %mul.i.7.4.1 = mul nsw i32 %and.i.7.4.1, %conv1.i.7.4.1 *)
mul v_mul_i_7_4_1 v_and_i_7_4_1 v_conv1_i_7_4_1;
(*   %conv2.i.7.4.1 = zext i8 %conv3.i.6.4.1 to i32 *)
cast v_conv2_i_7_4_1@uint32 v_conv3_i_6_4_1@uint8;
(*   %xor.i.7.4.1 = xor i32 %conv2.i.7.4.1, %mul.i.7.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_4_1 v_conv2_i_7_4_1 v_mul_i_7_4_1;
(*   %conv3.i.7.4.1 = trunc i32 %xor.i.7.4.1 to i8 *)
split tmp_v_xor_i_7_4_1 v_conv3_i_7_4_1 v_xor_i_7_4_1 8;
vpc v_conv3_i_7_4_1@uint8 v_conv3_i_7_4_1@uint32;
(*   %arrayidx7.4.1 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 9 *)
(*   store i8 %conv3.i.7.4.1, i8* %arrayidx7.4.1, align 1 *)
mov alpha_9 v_conv3_i_7_4_1;
(*   %arrayidx.2 = getelementptr inbounds i8, i8* %a, i64 2 *)
(*   %12 = load i8, i8* %arrayidx.2, align 1 *)
mov v12 a_2;
(*   %13 = load i8, i8* %b, align 1 *)
mov v13 b_0;
(*   %conv.i.2188 = zext i8 %13 to i32 *)
cast v_conv_i_2188@uint32 v13@uint8;
(*   %and.i.2189 = and i32 %conv.i.2188, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2189 v_conv_i_2188 (0x1)@uint32;
(*   %conv1.i.2190 = zext i8 %12 to i32 *)
cast v_conv1_i_2190@uint32 v12@uint8;
(*   %mul.i.2191 = mul nsw i32 %and.i.2189, %conv1.i.2190 *)
mul v_mul_i_2191 v_and_i_2189 v_conv1_i_2190;
(*   %conv3.i.2192 = trunc i32 %mul.i.2191 to i8 *)
split tmp_v_mul_i_2191 v_conv3_i_2192 v_mul_i_2191 8;
vpc v_conv3_i_2192@uint8 v_conv3_i_2192@uint32;
(*   %conv4.i.2193 = zext i8 %13 to i32 *)
cast v_conv4_i_2193@uint32 v13@uint8;
(*   %shr.i.2194 = ashr i32 %conv4.i.2193, 1 *)
(* You may need to modify here *)
split v_shr_i_2194 tmp_to_be_used v_conv4_i_2193 1;
(*   %conv5.i.2195 = trunc i32 %shr.i.2194 to i8 *)
split tmp_v_shr_i_2194 v_conv5_i_2195 v_shr_i_2194 8;
vpc v_conv5_i_2195@uint8 v_conv5_i_2195@uint32;
(*   %conv6.i.2196 = zext i8 %12 to i32 *)
cast v_conv6_i_2196@uint32 v12@uint8;
(*   %shl.i.2197 = shl i32 %conv6.i.2196, 1 *)
shls discard_70 v_shl_i_2197 v_conv6_i_2196 1;
(*   %conv7.i.2198 = trunc i32 %shl.i.2197 to i8 *)
split tmp_v_shl_i_2197 v_conv7_i_2198 v_shl_i_2197 8;
vpc v_conv7_i_2198@uint8 v_conv7_i_2198@uint32;
(*   %conv.i.1.2199 = zext i8 %conv5.i.2195 to i32 *)
cast v_conv_i_1_2199@uint32 v_conv5_i_2195@uint8;
(*   %and.i.1.2200 = and i32 %conv.i.1.2199, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_2200 v_conv_i_1_2199 (0x1)@uint32;
(*   %conv1.i.1.2201 = zext i8 %conv7.i.2198 to i32 *)
cast v_conv1_i_1_2201@uint32 v_conv7_i_2198@uint8;
(*   %mul.i.1.2202 = mul nsw i32 %and.i.1.2200, %conv1.i.1.2201 *)
mul v_mul_i_1_2202 v_and_i_1_2200 v_conv1_i_1_2201;
(*   %conv2.i.1.2203 = zext i8 %conv3.i.2192 to i32 *)
cast v_conv2_i_1_2203@uint32 v_conv3_i_2192@uint8;
(*   %xor.i.1.2204 = xor i32 %conv2.i.1.2203, %mul.i.1.2202 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_2204 v_conv2_i_1_2203 v_mul_i_1_2202;
(*   %conv3.i.1.2205 = trunc i32 %xor.i.1.2204 to i8 *)
split tmp_v_xor_i_1_2204 v_conv3_i_1_2205 v_xor_i_1_2204 8;
vpc v_conv3_i_1_2205@uint8 v_conv3_i_1_2205@uint32;
(*   %conv4.i.1.2206 = zext i8 %conv5.i.2195 to i32 *)
cast v_conv4_i_1_2206@uint32 v_conv5_i_2195@uint8;
(*   %shr.i.1.2207 = ashr i32 %conv4.i.1.2206, 1 *)
(* You may need to modify here *)
split v_shr_i_1_2207 tmp_to_be_used v_conv4_i_1_2206 1;
(*   %conv5.i.1.2208 = trunc i32 %shr.i.1.2207 to i8 *)
split tmp_v_shr_i_1_2207 v_conv5_i_1_2208 v_shr_i_1_2207 8;
vpc v_conv5_i_1_2208@uint8 v_conv5_i_1_2208@uint32;
(*   %conv6.i.1.2209 = zext i8 %conv7.i.2198 to i32 *)
cast v_conv6_i_1_2209@uint32 v_conv7_i_2198@uint8;
(*   %shl.i.1.2210 = shl i32 %conv6.i.1.2209, 1 *)
shls discard_71 v_shl_i_1_2210 v_conv6_i_1_2209 1;
(*   %conv7.i.1.2211 = trunc i32 %shl.i.1.2210 to i8 *)
split tmp_v_shl_i_1_2210 v_conv7_i_1_2211 v_shl_i_1_2210 8;
vpc v_conv7_i_1_2211@uint8 v_conv7_i_1_2211@uint32;
(*   %conv.i.2.2212 = zext i8 %conv5.i.1.2208 to i32 *)
cast v_conv_i_2_2212@uint32 v_conv5_i_1_2208@uint8;
(*   %and.i.2.2213 = and i32 %conv.i.2.2212, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_2213 v_conv_i_2_2212 (0x1)@uint32;
(*   %conv1.i.2.2214 = zext i8 %conv7.i.1.2211 to i32 *)
cast v_conv1_i_2_2214@uint32 v_conv7_i_1_2211@uint8;
(*   %mul.i.2.2215 = mul nsw i32 %and.i.2.2213, %conv1.i.2.2214 *)
mul v_mul_i_2_2215 v_and_i_2_2213 v_conv1_i_2_2214;
(*   %conv2.i.2.2216 = zext i8 %conv3.i.1.2205 to i32 *)
cast v_conv2_i_2_2216@uint32 v_conv3_i_1_2205@uint8;
(*   %xor.i.2.2217 = xor i32 %conv2.i.2.2216, %mul.i.2.2215 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_2217 v_conv2_i_2_2216 v_mul_i_2_2215;
(*   %conv3.i.2.2218 = trunc i32 %xor.i.2.2217 to i8 *)
split tmp_v_xor_i_2_2217 v_conv3_i_2_2218 v_xor_i_2_2217 8;
vpc v_conv3_i_2_2218@uint8 v_conv3_i_2_2218@uint32;
(*   %conv4.i.2.2219 = zext i8 %conv5.i.1.2208 to i32 *)
cast v_conv4_i_2_2219@uint32 v_conv5_i_1_2208@uint8;
(*   %shr.i.2.2220 = ashr i32 %conv4.i.2.2219, 1 *)
(* You may need to modify here *)
split v_shr_i_2_2220 tmp_to_be_used v_conv4_i_2_2219 1;
(*   %conv5.i.2.2221 = trunc i32 %shr.i.2.2220 to i8 *)
split tmp_v_shr_i_2_2220 v_conv5_i_2_2221 v_shr_i_2_2220 8;
vpc v_conv5_i_2_2221@uint8 v_conv5_i_2_2221@uint32;
(*   %conv6.i.2.2222 = zext i8 %conv7.i.1.2211 to i32 *)
cast v_conv6_i_2_2222@uint32 v_conv7_i_1_2211@uint8;
(*   %shl.i.2.2223 = shl i32 %conv6.i.2.2222, 1 *)
shls discard_72 v_shl_i_2_2223 v_conv6_i_2_2222 1;
(*   %conv7.i.2.2224 = trunc i32 %shl.i.2.2223 to i8 *)
split tmp_v_shl_i_2_2223 v_conv7_i_2_2224 v_shl_i_2_2223 8;
vpc v_conv7_i_2_2224@uint8 v_conv7_i_2_2224@uint32;
(*   %conv.i.3.2225 = zext i8 %conv5.i.2.2221 to i32 *)
cast v_conv_i_3_2225@uint32 v_conv5_i_2_2221@uint8;
(*   %and.i.3.2226 = and i32 %conv.i.3.2225, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_2226 v_conv_i_3_2225 (0x1)@uint32;
(*   %conv1.i.3.2227 = zext i8 %conv7.i.2.2224 to i32 *)
cast v_conv1_i_3_2227@uint32 v_conv7_i_2_2224@uint8;
(*   %mul.i.3.2228 = mul nsw i32 %and.i.3.2226, %conv1.i.3.2227 *)
mul v_mul_i_3_2228 v_and_i_3_2226 v_conv1_i_3_2227;
(*   %conv2.i.3.2229 = zext i8 %conv3.i.2.2218 to i32 *)
cast v_conv2_i_3_2229@uint32 v_conv3_i_2_2218@uint8;
(*   %xor.i.3.2230 = xor i32 %conv2.i.3.2229, %mul.i.3.2228 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_2230 v_conv2_i_3_2229 v_mul_i_3_2228;
(*   %conv3.i.3.2231 = trunc i32 %xor.i.3.2230 to i8 *)
split tmp_v_xor_i_3_2230 v_conv3_i_3_2231 v_xor_i_3_2230 8;
vpc v_conv3_i_3_2231@uint8 v_conv3_i_3_2231@uint32;
(*   %conv4.i.3.2232 = zext i8 %conv5.i.2.2221 to i32 *)
cast v_conv4_i_3_2232@uint32 v_conv5_i_2_2221@uint8;
(*   %shr.i.3.2233 = ashr i32 %conv4.i.3.2232, 1 *)
(* You may need to modify here *)
split v_shr_i_3_2233 tmp_to_be_used v_conv4_i_3_2232 1;
(*   %conv5.i.3.2234 = trunc i32 %shr.i.3.2233 to i8 *)
split tmp_v_shr_i_3_2233 v_conv5_i_3_2234 v_shr_i_3_2233 8;
vpc v_conv5_i_3_2234@uint8 v_conv5_i_3_2234@uint32;
(*   %conv6.i.3.2235 = zext i8 %conv7.i.2.2224 to i32 *)
cast v_conv6_i_3_2235@uint32 v_conv7_i_2_2224@uint8;
(*   %shl.i.3.2236 = shl i32 %conv6.i.3.2235, 1 *)
shls discard_73 v_shl_i_3_2236 v_conv6_i_3_2235 1;
(*   %conv7.i.3.2237 = trunc i32 %shl.i.3.2236 to i8 *)
split tmp_v_shl_i_3_2236 v_conv7_i_3_2237 v_shl_i_3_2236 8;
vpc v_conv7_i_3_2237@uint8 v_conv7_i_3_2237@uint32;
(*   %conv.i.4.2238 = zext i8 %conv5.i.3.2234 to i32 *)
cast v_conv_i_4_2238@uint32 v_conv5_i_3_2234@uint8;
(*   %and.i.4.2239 = and i32 %conv.i.4.2238, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_2239 v_conv_i_4_2238 (0x1)@uint32;
(*   %conv1.i.4.2240 = zext i8 %conv7.i.3.2237 to i32 *)
cast v_conv1_i_4_2240@uint32 v_conv7_i_3_2237@uint8;
(*   %mul.i.4.2241 = mul nsw i32 %and.i.4.2239, %conv1.i.4.2240 *)
mul v_mul_i_4_2241 v_and_i_4_2239 v_conv1_i_4_2240;
(*   %conv2.i.4.2242 = zext i8 %conv3.i.3.2231 to i32 *)
cast v_conv2_i_4_2242@uint32 v_conv3_i_3_2231@uint8;
(*   %xor.i.4.2243 = xor i32 %conv2.i.4.2242, %mul.i.4.2241 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_2243 v_conv2_i_4_2242 v_mul_i_4_2241;
(*   %conv3.i.4.2244 = trunc i32 %xor.i.4.2243 to i8 *)
split tmp_v_xor_i_4_2243 v_conv3_i_4_2244 v_xor_i_4_2243 8;
vpc v_conv3_i_4_2244@uint8 v_conv3_i_4_2244@uint32;
(*   %conv4.i.4.2245 = zext i8 %conv5.i.3.2234 to i32 *)
cast v_conv4_i_4_2245@uint32 v_conv5_i_3_2234@uint8;
(*   %shr.i.4.2246 = ashr i32 %conv4.i.4.2245, 1 *)
(* You may need to modify here *)
split v_shr_i_4_2246 tmp_to_be_used v_conv4_i_4_2245 1;
(*   %conv5.i.4.2247 = trunc i32 %shr.i.4.2246 to i8 *)
split tmp_v_shr_i_4_2246 v_conv5_i_4_2247 v_shr_i_4_2246 8;
vpc v_conv5_i_4_2247@uint8 v_conv5_i_4_2247@uint32;
(*   %conv6.i.4.2248 = zext i8 %conv7.i.3.2237 to i32 *)
cast v_conv6_i_4_2248@uint32 v_conv7_i_3_2237@uint8;
(*   %shl.i.4.2249 = shl i32 %conv6.i.4.2248, 1 *)
shls discard_74 v_shl_i_4_2249 v_conv6_i_4_2248 1;
(*   %conv7.i.4.2250 = trunc i32 %shl.i.4.2249 to i8 *)
split tmp_v_shl_i_4_2249 v_conv7_i_4_2250 v_shl_i_4_2249 8;
vpc v_conv7_i_4_2250@uint8 v_conv7_i_4_2250@uint32;
(*   %conv.i.5.2251 = zext i8 %conv5.i.4.2247 to i32 *)
cast v_conv_i_5_2251@uint32 v_conv5_i_4_2247@uint8;
(*   %and.i.5.2252 = and i32 %conv.i.5.2251, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_2252 v_conv_i_5_2251 (0x1)@uint32;
(*   %conv1.i.5.2253 = zext i8 %conv7.i.4.2250 to i32 *)
cast v_conv1_i_5_2253@uint32 v_conv7_i_4_2250@uint8;
(*   %mul.i.5.2254 = mul nsw i32 %and.i.5.2252, %conv1.i.5.2253 *)
mul v_mul_i_5_2254 v_and_i_5_2252 v_conv1_i_5_2253;
(*   %conv2.i.5.2255 = zext i8 %conv3.i.4.2244 to i32 *)
cast v_conv2_i_5_2255@uint32 v_conv3_i_4_2244@uint8;
(*   %xor.i.5.2256 = xor i32 %conv2.i.5.2255, %mul.i.5.2254 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_2256 v_conv2_i_5_2255 v_mul_i_5_2254;
(*   %conv3.i.5.2257 = trunc i32 %xor.i.5.2256 to i8 *)
split tmp_v_xor_i_5_2256 v_conv3_i_5_2257 v_xor_i_5_2256 8;
vpc v_conv3_i_5_2257@uint8 v_conv3_i_5_2257@uint32;
(*   %conv4.i.5.2258 = zext i8 %conv5.i.4.2247 to i32 *)
cast v_conv4_i_5_2258@uint32 v_conv5_i_4_2247@uint8;
(*   %shr.i.5.2259 = ashr i32 %conv4.i.5.2258, 1 *)
(* You may need to modify here *)
split v_shr_i_5_2259 tmp_to_be_used v_conv4_i_5_2258 1;
(*   %conv5.i.5.2260 = trunc i32 %shr.i.5.2259 to i8 *)
split tmp_v_shr_i_5_2259 v_conv5_i_5_2260 v_shr_i_5_2259 8;
vpc v_conv5_i_5_2260@uint8 v_conv5_i_5_2260@uint32;
(*   %conv6.i.5.2261 = zext i8 %conv7.i.4.2250 to i32 *)
cast v_conv6_i_5_2261@uint32 v_conv7_i_4_2250@uint8;
(*   %shl.i.5.2262 = shl i32 %conv6.i.5.2261, 1 *)
shls discard_75 v_shl_i_5_2262 v_conv6_i_5_2261 1;
(*   %conv7.i.5.2263 = trunc i32 %shl.i.5.2262 to i8 *)
split tmp_v_shl_i_5_2262 v_conv7_i_5_2263 v_shl_i_5_2262 8;
vpc v_conv7_i_5_2263@uint8 v_conv7_i_5_2263@uint32;
(*   %conv.i.6.2264 = zext i8 %conv5.i.5.2260 to i32 *)
cast v_conv_i_6_2264@uint32 v_conv5_i_5_2260@uint8;
(*   %and.i.6.2265 = and i32 %conv.i.6.2264, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_2265 v_conv_i_6_2264 (0x1)@uint32;
(*   %conv1.i.6.2266 = zext i8 %conv7.i.5.2263 to i32 *)
cast v_conv1_i_6_2266@uint32 v_conv7_i_5_2263@uint8;
(*   %mul.i.6.2267 = mul nsw i32 %and.i.6.2265, %conv1.i.6.2266 *)
mul v_mul_i_6_2267 v_and_i_6_2265 v_conv1_i_6_2266;
(*   %conv2.i.6.2268 = zext i8 %conv3.i.5.2257 to i32 *)
cast v_conv2_i_6_2268@uint32 v_conv3_i_5_2257@uint8;
(*   %xor.i.6.2269 = xor i32 %conv2.i.6.2268, %mul.i.6.2267 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_2269 v_conv2_i_6_2268 v_mul_i_6_2267;
(*   %conv3.i.6.2270 = trunc i32 %xor.i.6.2269 to i8 *)
split tmp_v_xor_i_6_2269 v_conv3_i_6_2270 v_xor_i_6_2269 8;
vpc v_conv3_i_6_2270@uint8 v_conv3_i_6_2270@uint32;
(*   %conv4.i.6.2271 = zext i8 %conv5.i.5.2260 to i32 *)
cast v_conv4_i_6_2271@uint32 v_conv5_i_5_2260@uint8;
(*   %shr.i.6.2272 = ashr i32 %conv4.i.6.2271, 1 *)
(* You may need to modify here *)
split v_shr_i_6_2272 tmp_to_be_used v_conv4_i_6_2271 1;
(*   %conv5.i.6.2273 = trunc i32 %shr.i.6.2272 to i8 *)
split tmp_v_shr_i_6_2272 v_conv5_i_6_2273 v_shr_i_6_2272 8;
vpc v_conv5_i_6_2273@uint8 v_conv5_i_6_2273@uint32;
(*   %conv6.i.6.2274 = zext i8 %conv7.i.5.2263 to i32 *)
cast v_conv6_i_6_2274@uint32 v_conv7_i_5_2263@uint8;
(*   %shl.i.6.2275 = shl i32 %conv6.i.6.2274, 1 *)
shls discard_76 v_shl_i_6_2275 v_conv6_i_6_2274 1;
(*   %conv7.i.6.2276 = trunc i32 %shl.i.6.2275 to i8 *)
split tmp_v_shl_i_6_2275 v_conv7_i_6_2276 v_shl_i_6_2275 8;
vpc v_conv7_i_6_2276@uint8 v_conv7_i_6_2276@uint32;
(*   %conv.i.7.2277 = zext i8 %conv5.i.6.2273 to i32 *)
cast v_conv_i_7_2277@uint32 v_conv5_i_6_2273@uint8;
(*   %and.i.7.2278 = and i32 %conv.i.7.2277, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_2278 v_conv_i_7_2277 (0x1)@uint32;
(*   %conv1.i.7.2279 = zext i8 %conv7.i.6.2276 to i32 *)
cast v_conv1_i_7_2279@uint32 v_conv7_i_6_2276@uint8;
(*   %mul.i.7.2280 = mul nsw i32 %and.i.7.2278, %conv1.i.7.2279 *)
mul v_mul_i_7_2280 v_and_i_7_2278 v_conv1_i_7_2279;
(*   %conv2.i.7.2281 = zext i8 %conv3.i.6.2270 to i32 *)
cast v_conv2_i_7_2281@uint32 v_conv3_i_6_2270@uint8;
(*   %xor.i.7.2282 = xor i32 %conv2.i.7.2281, %mul.i.7.2280 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_2282 v_conv2_i_7_2281 v_mul_i_7_2280;
(*   %conv3.i.7.2283 = trunc i32 %xor.i.7.2282 to i8 *)
split tmp_v_xor_i_7_2282 v_conv3_i_7_2283 v_xor_i_7_2282 8;
vpc v_conv3_i_7_2283@uint8 v_conv3_i_7_2283@uint32;
(*   %arrayidx7.2287 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 10 *)
(*   store i8 %conv3.i.7.2283, i8* %arrayidx7.2287, align 1 *)
mov alpha_10 v_conv3_i_7_2283;
(*   %arrayidx5.1.2 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %14 = load i8, i8* %arrayidx5.1.2, align 1 *)
mov v14 b_1;
(*   %conv.i.142.2 = zext i8 %14 to i32 *)
cast v_conv_i_142_2@uint32 v14@uint8;
(*   %and.i.143.2 = and i32 %conv.i.142.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_143_2 v_conv_i_142_2 (0x1)@uint32;
(*   %conv1.i.144.2 = zext i8 %12 to i32 *)
cast v_conv1_i_144_2@uint32 v12@uint8;
(*   %mul.i.145.2 = mul nsw i32 %and.i.143.2, %conv1.i.144.2 *)
mul v_mul_i_145_2 v_and_i_143_2 v_conv1_i_144_2;
(*   %conv3.i.146.2 = trunc i32 %mul.i.145.2 to i8 *)
split tmp_v_mul_i_145_2 v_conv3_i_146_2 v_mul_i_145_2 8;
vpc v_conv3_i_146_2@uint8 v_conv3_i_146_2@uint32;
(*   %conv4.i.147.2 = zext i8 %14 to i32 *)
cast v_conv4_i_147_2@uint32 v14@uint8;
(*   %shr.i.148.2 = ashr i32 %conv4.i.147.2, 1 *)
(* You may need to modify here *)
split v_shr_i_148_2 tmp_to_be_used v_conv4_i_147_2 1;
(*   %conv5.i.149.2 = trunc i32 %shr.i.148.2 to i8 *)
split tmp_v_shr_i_148_2 v_conv5_i_149_2 v_shr_i_148_2 8;
vpc v_conv5_i_149_2@uint8 v_conv5_i_149_2@uint32;
(*   %conv6.i.150.2 = zext i8 %12 to i32 *)
cast v_conv6_i_150_2@uint32 v12@uint8;
(*   %shl.i.151.2 = shl i32 %conv6.i.150.2, 1 *)
shls discard_77 v_shl_i_151_2 v_conv6_i_150_2 1;
(*   %conv7.i.152.2 = trunc i32 %shl.i.151.2 to i8 *)
split tmp_v_shl_i_151_2 v_conv7_i_152_2 v_shl_i_151_2 8;
vpc v_conv7_i_152_2@uint8 v_conv7_i_152_2@uint32;
(*   %conv.i.1.1.2 = zext i8 %conv5.i.149.2 to i32 *)
cast v_conv_i_1_1_2@uint32 v_conv5_i_149_2@uint8;
(*   %and.i.1.1.2 = and i32 %conv.i.1.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_1_2 v_conv_i_1_1_2 (0x1)@uint32;
(*   %conv1.i.1.1.2 = zext i8 %conv7.i.152.2 to i32 *)
cast v_conv1_i_1_1_2@uint32 v_conv7_i_152_2@uint8;
(*   %mul.i.1.1.2 = mul nsw i32 %and.i.1.1.2, %conv1.i.1.1.2 *)
mul v_mul_i_1_1_2 v_and_i_1_1_2 v_conv1_i_1_1_2;
(*   %conv2.i.1.1.2 = zext i8 %conv3.i.146.2 to i32 *)
cast v_conv2_i_1_1_2@uint32 v_conv3_i_146_2@uint8;
(*   %xor.i.1.1.2 = xor i32 %conv2.i.1.1.2, %mul.i.1.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_1_2 v_conv2_i_1_1_2 v_mul_i_1_1_2;
(*   %conv3.i.1.1.2 = trunc i32 %xor.i.1.1.2 to i8 *)
split tmp_v_xor_i_1_1_2 v_conv3_i_1_1_2 v_xor_i_1_1_2 8;
vpc v_conv3_i_1_1_2@uint8 v_conv3_i_1_1_2@uint32;
(*   %conv4.i.1.1.2 = zext i8 %conv5.i.149.2 to i32 *)
cast v_conv4_i_1_1_2@uint32 v_conv5_i_149_2@uint8;
(*   %shr.i.1.1.2 = ashr i32 %conv4.i.1.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_1_1_2 tmp_to_be_used v_conv4_i_1_1_2 1;
(*   %conv5.i.1.1.2 = trunc i32 %shr.i.1.1.2 to i8 *)
split tmp_v_shr_i_1_1_2 v_conv5_i_1_1_2 v_shr_i_1_1_2 8;
vpc v_conv5_i_1_1_2@uint8 v_conv5_i_1_1_2@uint32;
(*   %conv6.i.1.1.2 = zext i8 %conv7.i.152.2 to i32 *)
cast v_conv6_i_1_1_2@uint32 v_conv7_i_152_2@uint8;
(*   %shl.i.1.1.2 = shl i32 %conv6.i.1.1.2, 1 *)
shls discard_78 v_shl_i_1_1_2 v_conv6_i_1_1_2 1;
(*   %conv7.i.1.1.2 = trunc i32 %shl.i.1.1.2 to i8 *)
split tmp_v_shl_i_1_1_2 v_conv7_i_1_1_2 v_shl_i_1_1_2 8;
vpc v_conv7_i_1_1_2@uint8 v_conv7_i_1_1_2@uint32;
(*   %conv.i.2.1.2 = zext i8 %conv5.i.1.1.2 to i32 *)
cast v_conv_i_2_1_2@uint32 v_conv5_i_1_1_2@uint8;
(*   %and.i.2.1.2 = and i32 %conv.i.2.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_1_2 v_conv_i_2_1_2 (0x1)@uint32;
(*   %conv1.i.2.1.2 = zext i8 %conv7.i.1.1.2 to i32 *)
cast v_conv1_i_2_1_2@uint32 v_conv7_i_1_1_2@uint8;
(*   %mul.i.2.1.2 = mul nsw i32 %and.i.2.1.2, %conv1.i.2.1.2 *)
mul v_mul_i_2_1_2 v_and_i_2_1_2 v_conv1_i_2_1_2;
(*   %conv2.i.2.1.2 = zext i8 %conv3.i.1.1.2 to i32 *)
cast v_conv2_i_2_1_2@uint32 v_conv3_i_1_1_2@uint8;
(*   %xor.i.2.1.2 = xor i32 %conv2.i.2.1.2, %mul.i.2.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_1_2 v_conv2_i_2_1_2 v_mul_i_2_1_2;
(*   %conv3.i.2.1.2 = trunc i32 %xor.i.2.1.2 to i8 *)
split tmp_v_xor_i_2_1_2 v_conv3_i_2_1_2 v_xor_i_2_1_2 8;
vpc v_conv3_i_2_1_2@uint8 v_conv3_i_2_1_2@uint32;
(*   %conv4.i.2.1.2 = zext i8 %conv5.i.1.1.2 to i32 *)
cast v_conv4_i_2_1_2@uint32 v_conv5_i_1_1_2@uint8;
(*   %shr.i.2.1.2 = ashr i32 %conv4.i.2.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_2_1_2 tmp_to_be_used v_conv4_i_2_1_2 1;
(*   %conv5.i.2.1.2 = trunc i32 %shr.i.2.1.2 to i8 *)
split tmp_v_shr_i_2_1_2 v_conv5_i_2_1_2 v_shr_i_2_1_2 8;
vpc v_conv5_i_2_1_2@uint8 v_conv5_i_2_1_2@uint32;
(*   %conv6.i.2.1.2 = zext i8 %conv7.i.1.1.2 to i32 *)
cast v_conv6_i_2_1_2@uint32 v_conv7_i_1_1_2@uint8;
(*   %shl.i.2.1.2 = shl i32 %conv6.i.2.1.2, 1 *)
shls discard_79 v_shl_i_2_1_2 v_conv6_i_2_1_2 1;
(*   %conv7.i.2.1.2 = trunc i32 %shl.i.2.1.2 to i8 *)
split tmp_v_shl_i_2_1_2 v_conv7_i_2_1_2 v_shl_i_2_1_2 8;
vpc v_conv7_i_2_1_2@uint8 v_conv7_i_2_1_2@uint32;
(*   %conv.i.3.1.2 = zext i8 %conv5.i.2.1.2 to i32 *)
cast v_conv_i_3_1_2@uint32 v_conv5_i_2_1_2@uint8;
(*   %and.i.3.1.2 = and i32 %conv.i.3.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_1_2 v_conv_i_3_1_2 (0x1)@uint32;
(*   %conv1.i.3.1.2 = zext i8 %conv7.i.2.1.2 to i32 *)
cast v_conv1_i_3_1_2@uint32 v_conv7_i_2_1_2@uint8;
(*   %mul.i.3.1.2 = mul nsw i32 %and.i.3.1.2, %conv1.i.3.1.2 *)
mul v_mul_i_3_1_2 v_and_i_3_1_2 v_conv1_i_3_1_2;
(*   %conv2.i.3.1.2 = zext i8 %conv3.i.2.1.2 to i32 *)
cast v_conv2_i_3_1_2@uint32 v_conv3_i_2_1_2@uint8;
(*   %xor.i.3.1.2 = xor i32 %conv2.i.3.1.2, %mul.i.3.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_1_2 v_conv2_i_3_1_2 v_mul_i_3_1_2;
(*   %conv3.i.3.1.2 = trunc i32 %xor.i.3.1.2 to i8 *)
split tmp_v_xor_i_3_1_2 v_conv3_i_3_1_2 v_xor_i_3_1_2 8;
vpc v_conv3_i_3_1_2@uint8 v_conv3_i_3_1_2@uint32;
(*   %conv4.i.3.1.2 = zext i8 %conv5.i.2.1.2 to i32 *)
cast v_conv4_i_3_1_2@uint32 v_conv5_i_2_1_2@uint8;
(*   %shr.i.3.1.2 = ashr i32 %conv4.i.3.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_3_1_2 tmp_to_be_used v_conv4_i_3_1_2 1;
(*   %conv5.i.3.1.2 = trunc i32 %shr.i.3.1.2 to i8 *)
split tmp_v_shr_i_3_1_2 v_conv5_i_3_1_2 v_shr_i_3_1_2 8;
vpc v_conv5_i_3_1_2@uint8 v_conv5_i_3_1_2@uint32;
(*   %conv6.i.3.1.2 = zext i8 %conv7.i.2.1.2 to i32 *)
cast v_conv6_i_3_1_2@uint32 v_conv7_i_2_1_2@uint8;
(*   %shl.i.3.1.2 = shl i32 %conv6.i.3.1.2, 1 *)
shls discard_80 v_shl_i_3_1_2 v_conv6_i_3_1_2 1;
(*   %conv7.i.3.1.2 = trunc i32 %shl.i.3.1.2 to i8 *)
split tmp_v_shl_i_3_1_2 v_conv7_i_3_1_2 v_shl_i_3_1_2 8;
vpc v_conv7_i_3_1_2@uint8 v_conv7_i_3_1_2@uint32;
(*   %conv.i.4.1.2 = zext i8 %conv5.i.3.1.2 to i32 *)
cast v_conv_i_4_1_2@uint32 v_conv5_i_3_1_2@uint8;
(*   %and.i.4.1.2 = and i32 %conv.i.4.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_1_2 v_conv_i_4_1_2 (0x1)@uint32;
(*   %conv1.i.4.1.2 = zext i8 %conv7.i.3.1.2 to i32 *)
cast v_conv1_i_4_1_2@uint32 v_conv7_i_3_1_2@uint8;
(*   %mul.i.4.1.2 = mul nsw i32 %and.i.4.1.2, %conv1.i.4.1.2 *)
mul v_mul_i_4_1_2 v_and_i_4_1_2 v_conv1_i_4_1_2;
(*   %conv2.i.4.1.2 = zext i8 %conv3.i.3.1.2 to i32 *)
cast v_conv2_i_4_1_2@uint32 v_conv3_i_3_1_2@uint8;
(*   %xor.i.4.1.2 = xor i32 %conv2.i.4.1.2, %mul.i.4.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_1_2 v_conv2_i_4_1_2 v_mul_i_4_1_2;
(*   %conv3.i.4.1.2 = trunc i32 %xor.i.4.1.2 to i8 *)
split tmp_v_xor_i_4_1_2 v_conv3_i_4_1_2 v_xor_i_4_1_2 8;
vpc v_conv3_i_4_1_2@uint8 v_conv3_i_4_1_2@uint32;
(*   %conv4.i.4.1.2 = zext i8 %conv5.i.3.1.2 to i32 *)
cast v_conv4_i_4_1_2@uint32 v_conv5_i_3_1_2@uint8;
(*   %shr.i.4.1.2 = ashr i32 %conv4.i.4.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_4_1_2 tmp_to_be_used v_conv4_i_4_1_2 1;
(*   %conv5.i.4.1.2 = trunc i32 %shr.i.4.1.2 to i8 *)
split tmp_v_shr_i_4_1_2 v_conv5_i_4_1_2 v_shr_i_4_1_2 8;
vpc v_conv5_i_4_1_2@uint8 v_conv5_i_4_1_2@uint32;
(*   %conv6.i.4.1.2 = zext i8 %conv7.i.3.1.2 to i32 *)
cast v_conv6_i_4_1_2@uint32 v_conv7_i_3_1_2@uint8;
(*   %shl.i.4.1.2 = shl i32 %conv6.i.4.1.2, 1 *)
shls discard_81 v_shl_i_4_1_2 v_conv6_i_4_1_2 1;
(*   %conv7.i.4.1.2 = trunc i32 %shl.i.4.1.2 to i8 *)
split tmp_v_shl_i_4_1_2 v_conv7_i_4_1_2 v_shl_i_4_1_2 8;
vpc v_conv7_i_4_1_2@uint8 v_conv7_i_4_1_2@uint32;
(*   %conv.i.5.1.2 = zext i8 %conv5.i.4.1.2 to i32 *)
cast v_conv_i_5_1_2@uint32 v_conv5_i_4_1_2@uint8;
(*   %and.i.5.1.2 = and i32 %conv.i.5.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_1_2 v_conv_i_5_1_2 (0x1)@uint32;
(*   %conv1.i.5.1.2 = zext i8 %conv7.i.4.1.2 to i32 *)
cast v_conv1_i_5_1_2@uint32 v_conv7_i_4_1_2@uint8;
(*   %mul.i.5.1.2 = mul nsw i32 %and.i.5.1.2, %conv1.i.5.1.2 *)
mul v_mul_i_5_1_2 v_and_i_5_1_2 v_conv1_i_5_1_2;
(*   %conv2.i.5.1.2 = zext i8 %conv3.i.4.1.2 to i32 *)
cast v_conv2_i_5_1_2@uint32 v_conv3_i_4_1_2@uint8;
(*   %xor.i.5.1.2 = xor i32 %conv2.i.5.1.2, %mul.i.5.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_1_2 v_conv2_i_5_1_2 v_mul_i_5_1_2;
(*   %conv3.i.5.1.2 = trunc i32 %xor.i.5.1.2 to i8 *)
split tmp_v_xor_i_5_1_2 v_conv3_i_5_1_2 v_xor_i_5_1_2 8;
vpc v_conv3_i_5_1_2@uint8 v_conv3_i_5_1_2@uint32;
(*   %conv4.i.5.1.2 = zext i8 %conv5.i.4.1.2 to i32 *)
cast v_conv4_i_5_1_2@uint32 v_conv5_i_4_1_2@uint8;
(*   %shr.i.5.1.2 = ashr i32 %conv4.i.5.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_5_1_2 tmp_to_be_used v_conv4_i_5_1_2 1;
(*   %conv5.i.5.1.2 = trunc i32 %shr.i.5.1.2 to i8 *)
split tmp_v_shr_i_5_1_2 v_conv5_i_5_1_2 v_shr_i_5_1_2 8;
vpc v_conv5_i_5_1_2@uint8 v_conv5_i_5_1_2@uint32;
(*   %conv6.i.5.1.2 = zext i8 %conv7.i.4.1.2 to i32 *)
cast v_conv6_i_5_1_2@uint32 v_conv7_i_4_1_2@uint8;
(*   %shl.i.5.1.2 = shl i32 %conv6.i.5.1.2, 1 *)
shls discard_82 v_shl_i_5_1_2 v_conv6_i_5_1_2 1;
(*   %conv7.i.5.1.2 = trunc i32 %shl.i.5.1.2 to i8 *)
split tmp_v_shl_i_5_1_2 v_conv7_i_5_1_2 v_shl_i_5_1_2 8;
vpc v_conv7_i_5_1_2@uint8 v_conv7_i_5_1_2@uint32;
(*   %conv.i.6.1.2 = zext i8 %conv5.i.5.1.2 to i32 *)
cast v_conv_i_6_1_2@uint32 v_conv5_i_5_1_2@uint8;
(*   %and.i.6.1.2 = and i32 %conv.i.6.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_1_2 v_conv_i_6_1_2 (0x1)@uint32;
(*   %conv1.i.6.1.2 = zext i8 %conv7.i.5.1.2 to i32 *)
cast v_conv1_i_6_1_2@uint32 v_conv7_i_5_1_2@uint8;
(*   %mul.i.6.1.2 = mul nsw i32 %and.i.6.1.2, %conv1.i.6.1.2 *)
mul v_mul_i_6_1_2 v_and_i_6_1_2 v_conv1_i_6_1_2;
(*   %conv2.i.6.1.2 = zext i8 %conv3.i.5.1.2 to i32 *)
cast v_conv2_i_6_1_2@uint32 v_conv3_i_5_1_2@uint8;
(*   %xor.i.6.1.2 = xor i32 %conv2.i.6.1.2, %mul.i.6.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_1_2 v_conv2_i_6_1_2 v_mul_i_6_1_2;
(*   %conv3.i.6.1.2 = trunc i32 %xor.i.6.1.2 to i8 *)
split tmp_v_xor_i_6_1_2 v_conv3_i_6_1_2 v_xor_i_6_1_2 8;
vpc v_conv3_i_6_1_2@uint8 v_conv3_i_6_1_2@uint32;
(*   %conv4.i.6.1.2 = zext i8 %conv5.i.5.1.2 to i32 *)
cast v_conv4_i_6_1_2@uint32 v_conv5_i_5_1_2@uint8;
(*   %shr.i.6.1.2 = ashr i32 %conv4.i.6.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_6_1_2 tmp_to_be_used v_conv4_i_6_1_2 1;
(*   %conv5.i.6.1.2 = trunc i32 %shr.i.6.1.2 to i8 *)
split tmp_v_shr_i_6_1_2 v_conv5_i_6_1_2 v_shr_i_6_1_2 8;
vpc v_conv5_i_6_1_2@uint8 v_conv5_i_6_1_2@uint32;
(*   %conv6.i.6.1.2 = zext i8 %conv7.i.5.1.2 to i32 *)
cast v_conv6_i_6_1_2@uint32 v_conv7_i_5_1_2@uint8;
(*   %shl.i.6.1.2 = shl i32 %conv6.i.6.1.2, 1 *)
shls discard_83 v_shl_i_6_1_2 v_conv6_i_6_1_2 1;
(*   %conv7.i.6.1.2 = trunc i32 %shl.i.6.1.2 to i8 *)
split tmp_v_shl_i_6_1_2 v_conv7_i_6_1_2 v_shl_i_6_1_2 8;
vpc v_conv7_i_6_1_2@uint8 v_conv7_i_6_1_2@uint32;
(*   %conv.i.7.1.2 = zext i8 %conv5.i.6.1.2 to i32 *)
cast v_conv_i_7_1_2@uint32 v_conv5_i_6_1_2@uint8;
(*   %and.i.7.1.2 = and i32 %conv.i.7.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_1_2 v_conv_i_7_1_2 (0x1)@uint32;
(*   %conv1.i.7.1.2 = zext i8 %conv7.i.6.1.2 to i32 *)
cast v_conv1_i_7_1_2@uint32 v_conv7_i_6_1_2@uint8;
(*   %mul.i.7.1.2 = mul nsw i32 %and.i.7.1.2, %conv1.i.7.1.2 *)
mul v_mul_i_7_1_2 v_and_i_7_1_2 v_conv1_i_7_1_2;
(*   %conv2.i.7.1.2 = zext i8 %conv3.i.6.1.2 to i32 *)
cast v_conv2_i_7_1_2@uint32 v_conv3_i_6_1_2@uint8;
(*   %xor.i.7.1.2 = xor i32 %conv2.i.7.1.2, %mul.i.7.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_1_2 v_conv2_i_7_1_2 v_mul_i_7_1_2;
(*   %conv3.i.7.1.2 = trunc i32 %xor.i.7.1.2 to i8 *)
split tmp_v_xor_i_7_1_2 v_conv3_i_7_1_2 v_xor_i_7_1_2 8;
vpc v_conv3_i_7_1_2@uint8 v_conv3_i_7_1_2@uint32;
(*   %arrayidx7.1.2 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 11 *)
(*   store i8 %conv3.i.7.1.2, i8* %arrayidx7.1.2, align 1 *)
mov alpha_11 v_conv3_i_7_1_2;
(*   %arrayidx5.2.2 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %15 = load i8, i8* %arrayidx5.2.2, align 1 *)
mov v15 b_2;
(*   %conv.i.253.2 = zext i8 %15 to i32 *)
cast v_conv_i_253_2@uint32 v15@uint8;
(*   %and.i.254.2 = and i32 %conv.i.253.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_254_2 v_conv_i_253_2 (0x1)@uint32;
(*   %conv1.i.255.2 = zext i8 %12 to i32 *)
cast v_conv1_i_255_2@uint32 v12@uint8;
(*   %mul.i.256.2 = mul nsw i32 %and.i.254.2, %conv1.i.255.2 *)
mul v_mul_i_256_2 v_and_i_254_2 v_conv1_i_255_2;
(*   %conv3.i.257.2 = trunc i32 %mul.i.256.2 to i8 *)
split tmp_v_mul_i_256_2 v_conv3_i_257_2 v_mul_i_256_2 8;
vpc v_conv3_i_257_2@uint8 v_conv3_i_257_2@uint32;
(*   %conv4.i.258.2 = zext i8 %15 to i32 *)
cast v_conv4_i_258_2@uint32 v15@uint8;
(*   %shr.i.259.2 = ashr i32 %conv4.i.258.2, 1 *)
(* You may need to modify here *)
split v_shr_i_259_2 tmp_to_be_used v_conv4_i_258_2 1;
(*   %conv5.i.260.2 = trunc i32 %shr.i.259.2 to i8 *)
split tmp_v_shr_i_259_2 v_conv5_i_260_2 v_shr_i_259_2 8;
vpc v_conv5_i_260_2@uint8 v_conv5_i_260_2@uint32;
(*   %conv6.i.261.2 = zext i8 %12 to i32 *)
cast v_conv6_i_261_2@uint32 v12@uint8;
(*   %shl.i.262.2 = shl i32 %conv6.i.261.2, 1 *)
shls discard_84 v_shl_i_262_2 v_conv6_i_261_2 1;
(*   %conv7.i.263.2 = trunc i32 %shl.i.262.2 to i8 *)
split tmp_v_shl_i_262_2 v_conv7_i_263_2 v_shl_i_262_2 8;
vpc v_conv7_i_263_2@uint8 v_conv7_i_263_2@uint32;
(*   %conv.i.1.2.2 = zext i8 %conv5.i.260.2 to i32 *)
cast v_conv_i_1_2_2@uint32 v_conv5_i_260_2@uint8;
(*   %and.i.1.2.2 = and i32 %conv.i.1.2.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_2_2 v_conv_i_1_2_2 (0x1)@uint32;
(*   %conv1.i.1.2.2 = zext i8 %conv7.i.263.2 to i32 *)
cast v_conv1_i_1_2_2@uint32 v_conv7_i_263_2@uint8;
(*   %mul.i.1.2.2 = mul nsw i32 %and.i.1.2.2, %conv1.i.1.2.2 *)
mul v_mul_i_1_2_2 v_and_i_1_2_2 v_conv1_i_1_2_2;
(*   %conv2.i.1.2.2 = zext i8 %conv3.i.257.2 to i32 *)
cast v_conv2_i_1_2_2@uint32 v_conv3_i_257_2@uint8;
(*   %xor.i.1.2.2 = xor i32 %conv2.i.1.2.2, %mul.i.1.2.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_2_2 v_conv2_i_1_2_2 v_mul_i_1_2_2;
(*   %conv3.i.1.2.2 = trunc i32 %xor.i.1.2.2 to i8 *)
split tmp_v_xor_i_1_2_2 v_conv3_i_1_2_2 v_xor_i_1_2_2 8;
vpc v_conv3_i_1_2_2@uint8 v_conv3_i_1_2_2@uint32;
(*   %conv4.i.1.2.2 = zext i8 %conv5.i.260.2 to i32 *)
cast v_conv4_i_1_2_2@uint32 v_conv5_i_260_2@uint8;
(*   %shr.i.1.2.2 = ashr i32 %conv4.i.1.2.2, 1 *)
(* You may need to modify here *)
split v_shr_i_1_2_2 tmp_to_be_used v_conv4_i_1_2_2 1;
(*   %conv5.i.1.2.2 = trunc i32 %shr.i.1.2.2 to i8 *)
split tmp_v_shr_i_1_2_2 v_conv5_i_1_2_2 v_shr_i_1_2_2 8;
vpc v_conv5_i_1_2_2@uint8 v_conv5_i_1_2_2@uint32;
(*   %conv6.i.1.2.2 = zext i8 %conv7.i.263.2 to i32 *)
cast v_conv6_i_1_2_2@uint32 v_conv7_i_263_2@uint8;
(*   %shl.i.1.2.2 = shl i32 %conv6.i.1.2.2, 1 *)
shls discard_85 v_shl_i_1_2_2 v_conv6_i_1_2_2 1;
(*   %conv7.i.1.2.2 = trunc i32 %shl.i.1.2.2 to i8 *)
split tmp_v_shl_i_1_2_2 v_conv7_i_1_2_2 v_shl_i_1_2_2 8;
vpc v_conv7_i_1_2_2@uint8 v_conv7_i_1_2_2@uint32;
(*   %conv.i.2.2.2 = zext i8 %conv5.i.1.2.2 to i32 *)
cast v_conv_i_2_2_2@uint32 v_conv5_i_1_2_2@uint8;
(*   %and.i.2.2.2 = and i32 %conv.i.2.2.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_2_2 v_conv_i_2_2_2 (0x1)@uint32;
(*   %conv1.i.2.2.2 = zext i8 %conv7.i.1.2.2 to i32 *)
cast v_conv1_i_2_2_2@uint32 v_conv7_i_1_2_2@uint8;
(*   %mul.i.2.2.2 = mul nsw i32 %and.i.2.2.2, %conv1.i.2.2.2 *)
mul v_mul_i_2_2_2 v_and_i_2_2_2 v_conv1_i_2_2_2;
(*   %conv2.i.2.2.2 = zext i8 %conv3.i.1.2.2 to i32 *)
cast v_conv2_i_2_2_2@uint32 v_conv3_i_1_2_2@uint8;
(*   %xor.i.2.2.2 = xor i32 %conv2.i.2.2.2, %mul.i.2.2.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_2_2 v_conv2_i_2_2_2 v_mul_i_2_2_2;
(*   %conv3.i.2.2.2 = trunc i32 %xor.i.2.2.2 to i8 *)
split tmp_v_xor_i_2_2_2 v_conv3_i_2_2_2 v_xor_i_2_2_2 8;
vpc v_conv3_i_2_2_2@uint8 v_conv3_i_2_2_2@uint32;
(*   %conv4.i.2.2.2 = zext i8 %conv5.i.1.2.2 to i32 *)
cast v_conv4_i_2_2_2@uint32 v_conv5_i_1_2_2@uint8;
(*   %shr.i.2.2.2 = ashr i32 %conv4.i.2.2.2, 1 *)
(* You may need to modify here *)
split v_shr_i_2_2_2 tmp_to_be_used v_conv4_i_2_2_2 1;
(*   %conv5.i.2.2.2 = trunc i32 %shr.i.2.2.2 to i8 *)
split tmp_v_shr_i_2_2_2 v_conv5_i_2_2_2 v_shr_i_2_2_2 8;
vpc v_conv5_i_2_2_2@uint8 v_conv5_i_2_2_2@uint32;
(*   %conv6.i.2.2.2 = zext i8 %conv7.i.1.2.2 to i32 *)
cast v_conv6_i_2_2_2@uint32 v_conv7_i_1_2_2@uint8;
(*   %shl.i.2.2.2 = shl i32 %conv6.i.2.2.2, 1 *)
shls discard_86 v_shl_i_2_2_2 v_conv6_i_2_2_2 1;
(*   %conv7.i.2.2.2 = trunc i32 %shl.i.2.2.2 to i8 *)
split tmp_v_shl_i_2_2_2 v_conv7_i_2_2_2 v_shl_i_2_2_2 8;
vpc v_conv7_i_2_2_2@uint8 v_conv7_i_2_2_2@uint32;
(*   %conv.i.3.2.2 = zext i8 %conv5.i.2.2.2 to i32 *)
cast v_conv_i_3_2_2@uint32 v_conv5_i_2_2_2@uint8;
(*   %and.i.3.2.2 = and i32 %conv.i.3.2.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_2_2 v_conv_i_3_2_2 (0x1)@uint32;
(*   %conv1.i.3.2.2 = zext i8 %conv7.i.2.2.2 to i32 *)
cast v_conv1_i_3_2_2@uint32 v_conv7_i_2_2_2@uint8;
(*   %mul.i.3.2.2 = mul nsw i32 %and.i.3.2.2, %conv1.i.3.2.2 *)
mul v_mul_i_3_2_2 v_and_i_3_2_2 v_conv1_i_3_2_2;
(*   %conv2.i.3.2.2 = zext i8 %conv3.i.2.2.2 to i32 *)
cast v_conv2_i_3_2_2@uint32 v_conv3_i_2_2_2@uint8;
(*   %xor.i.3.2.2 = xor i32 %conv2.i.3.2.2, %mul.i.3.2.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_2_2 v_conv2_i_3_2_2 v_mul_i_3_2_2;
(*   %conv3.i.3.2.2 = trunc i32 %xor.i.3.2.2 to i8 *)
split tmp_v_xor_i_3_2_2 v_conv3_i_3_2_2 v_xor_i_3_2_2 8;
vpc v_conv3_i_3_2_2@uint8 v_conv3_i_3_2_2@uint32;
(*   %conv4.i.3.2.2 = zext i8 %conv5.i.2.2.2 to i32 *)
cast v_conv4_i_3_2_2@uint32 v_conv5_i_2_2_2@uint8;
(*   %shr.i.3.2.2 = ashr i32 %conv4.i.3.2.2, 1 *)
(* You may need to modify here *)
split v_shr_i_3_2_2 tmp_to_be_used v_conv4_i_3_2_2 1;
(*   %conv5.i.3.2.2 = trunc i32 %shr.i.3.2.2 to i8 *)
split tmp_v_shr_i_3_2_2 v_conv5_i_3_2_2 v_shr_i_3_2_2 8;
vpc v_conv5_i_3_2_2@uint8 v_conv5_i_3_2_2@uint32;
(*   %conv6.i.3.2.2 = zext i8 %conv7.i.2.2.2 to i32 *)
cast v_conv6_i_3_2_2@uint32 v_conv7_i_2_2_2@uint8;
(*   %shl.i.3.2.2 = shl i32 %conv6.i.3.2.2, 1 *)
shls discard_87 v_shl_i_3_2_2 v_conv6_i_3_2_2 1;
(*   %conv7.i.3.2.2 = trunc i32 %shl.i.3.2.2 to i8 *)
split tmp_v_shl_i_3_2_2 v_conv7_i_3_2_2 v_shl_i_3_2_2 8;
vpc v_conv7_i_3_2_2@uint8 v_conv7_i_3_2_2@uint32;
(*   %conv.i.4.2.2 = zext i8 %conv5.i.3.2.2 to i32 *)
cast v_conv_i_4_2_2@uint32 v_conv5_i_3_2_2@uint8;
(*   %and.i.4.2.2 = and i32 %conv.i.4.2.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_2_2 v_conv_i_4_2_2 (0x1)@uint32;
(*   %conv1.i.4.2.2 = zext i8 %conv7.i.3.2.2 to i32 *)
cast v_conv1_i_4_2_2@uint32 v_conv7_i_3_2_2@uint8;
(*   %mul.i.4.2.2 = mul nsw i32 %and.i.4.2.2, %conv1.i.4.2.2 *)
mul v_mul_i_4_2_2 v_and_i_4_2_2 v_conv1_i_4_2_2;
(*   %conv2.i.4.2.2 = zext i8 %conv3.i.3.2.2 to i32 *)
cast v_conv2_i_4_2_2@uint32 v_conv3_i_3_2_2@uint8;
(*   %xor.i.4.2.2 = xor i32 %conv2.i.4.2.2, %mul.i.4.2.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_2_2 v_conv2_i_4_2_2 v_mul_i_4_2_2;
(*   %conv3.i.4.2.2 = trunc i32 %xor.i.4.2.2 to i8 *)
split tmp_v_xor_i_4_2_2 v_conv3_i_4_2_2 v_xor_i_4_2_2 8;
vpc v_conv3_i_4_2_2@uint8 v_conv3_i_4_2_2@uint32;
(*   %conv4.i.4.2.2 = zext i8 %conv5.i.3.2.2 to i32 *)
cast v_conv4_i_4_2_2@uint32 v_conv5_i_3_2_2@uint8;
(*   %shr.i.4.2.2 = ashr i32 %conv4.i.4.2.2, 1 *)
(* You may need to modify here *)
split v_shr_i_4_2_2 tmp_to_be_used v_conv4_i_4_2_2 1;
(*   %conv5.i.4.2.2 = trunc i32 %shr.i.4.2.2 to i8 *)
split tmp_v_shr_i_4_2_2 v_conv5_i_4_2_2 v_shr_i_4_2_2 8;
vpc v_conv5_i_4_2_2@uint8 v_conv5_i_4_2_2@uint32;
(*   %conv6.i.4.2.2 = zext i8 %conv7.i.3.2.2 to i32 *)
cast v_conv6_i_4_2_2@uint32 v_conv7_i_3_2_2@uint8;
(*   %shl.i.4.2.2 = shl i32 %conv6.i.4.2.2, 1 *)
shls discard_88 v_shl_i_4_2_2 v_conv6_i_4_2_2 1;
(*   %conv7.i.4.2.2 = trunc i32 %shl.i.4.2.2 to i8 *)
split tmp_v_shl_i_4_2_2 v_conv7_i_4_2_2 v_shl_i_4_2_2 8;
vpc v_conv7_i_4_2_2@uint8 v_conv7_i_4_2_2@uint32;
(*   %conv.i.5.2.2 = zext i8 %conv5.i.4.2.2 to i32 *)
cast v_conv_i_5_2_2@uint32 v_conv5_i_4_2_2@uint8;
(*   %and.i.5.2.2 = and i32 %conv.i.5.2.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_2_2 v_conv_i_5_2_2 (0x1)@uint32;
(*   %conv1.i.5.2.2 = zext i8 %conv7.i.4.2.2 to i32 *)
cast v_conv1_i_5_2_2@uint32 v_conv7_i_4_2_2@uint8;
(*   %mul.i.5.2.2 = mul nsw i32 %and.i.5.2.2, %conv1.i.5.2.2 *)
mul v_mul_i_5_2_2 v_and_i_5_2_2 v_conv1_i_5_2_2;
(*   %conv2.i.5.2.2 = zext i8 %conv3.i.4.2.2 to i32 *)
cast v_conv2_i_5_2_2@uint32 v_conv3_i_4_2_2@uint8;
(*   %xor.i.5.2.2 = xor i32 %conv2.i.5.2.2, %mul.i.5.2.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_2_2 v_conv2_i_5_2_2 v_mul_i_5_2_2;
(*   %conv3.i.5.2.2 = trunc i32 %xor.i.5.2.2 to i8 *)
split tmp_v_xor_i_5_2_2 v_conv3_i_5_2_2 v_xor_i_5_2_2 8;
vpc v_conv3_i_5_2_2@uint8 v_conv3_i_5_2_2@uint32;
(*   %conv4.i.5.2.2 = zext i8 %conv5.i.4.2.2 to i32 *)
cast v_conv4_i_5_2_2@uint32 v_conv5_i_4_2_2@uint8;
(*   %shr.i.5.2.2 = ashr i32 %conv4.i.5.2.2, 1 *)
(* You may need to modify here *)
split v_shr_i_5_2_2 tmp_to_be_used v_conv4_i_5_2_2 1;
(*   %conv5.i.5.2.2 = trunc i32 %shr.i.5.2.2 to i8 *)
split tmp_v_shr_i_5_2_2 v_conv5_i_5_2_2 v_shr_i_5_2_2 8;
vpc v_conv5_i_5_2_2@uint8 v_conv5_i_5_2_2@uint32;
(*   %conv6.i.5.2.2 = zext i8 %conv7.i.4.2.2 to i32 *)
cast v_conv6_i_5_2_2@uint32 v_conv7_i_4_2_2@uint8;
(*   %shl.i.5.2.2 = shl i32 %conv6.i.5.2.2, 1 *)
shls discard_89 v_shl_i_5_2_2 v_conv6_i_5_2_2 1;
(*   %conv7.i.5.2.2 = trunc i32 %shl.i.5.2.2 to i8 *)
split tmp_v_shl_i_5_2_2 v_conv7_i_5_2_2 v_shl_i_5_2_2 8;
vpc v_conv7_i_5_2_2@uint8 v_conv7_i_5_2_2@uint32;
(*   %conv.i.6.2.2 = zext i8 %conv5.i.5.2.2 to i32 *)
cast v_conv_i_6_2_2@uint32 v_conv5_i_5_2_2@uint8;
(*   %and.i.6.2.2 = and i32 %conv.i.6.2.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_2_2 v_conv_i_6_2_2 (0x1)@uint32;
(*   %conv1.i.6.2.2 = zext i8 %conv7.i.5.2.2 to i32 *)
cast v_conv1_i_6_2_2@uint32 v_conv7_i_5_2_2@uint8;
(*   %mul.i.6.2.2 = mul nsw i32 %and.i.6.2.2, %conv1.i.6.2.2 *)
mul v_mul_i_6_2_2 v_and_i_6_2_2 v_conv1_i_6_2_2;
(*   %conv2.i.6.2.2 = zext i8 %conv3.i.5.2.2 to i32 *)
cast v_conv2_i_6_2_2@uint32 v_conv3_i_5_2_2@uint8;
(*   %xor.i.6.2.2 = xor i32 %conv2.i.6.2.2, %mul.i.6.2.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_2_2 v_conv2_i_6_2_2 v_mul_i_6_2_2;
(*   %conv3.i.6.2.2 = trunc i32 %xor.i.6.2.2 to i8 *)
split tmp_v_xor_i_6_2_2 v_conv3_i_6_2_2 v_xor_i_6_2_2 8;
vpc v_conv3_i_6_2_2@uint8 v_conv3_i_6_2_2@uint32;
(*   %conv4.i.6.2.2 = zext i8 %conv5.i.5.2.2 to i32 *)
cast v_conv4_i_6_2_2@uint32 v_conv5_i_5_2_2@uint8;
(*   %shr.i.6.2.2 = ashr i32 %conv4.i.6.2.2, 1 *)
(* You may need to modify here *)
split v_shr_i_6_2_2 tmp_to_be_used v_conv4_i_6_2_2 1;
(*   %conv5.i.6.2.2 = trunc i32 %shr.i.6.2.2 to i8 *)
split tmp_v_shr_i_6_2_2 v_conv5_i_6_2_2 v_shr_i_6_2_2 8;
vpc v_conv5_i_6_2_2@uint8 v_conv5_i_6_2_2@uint32;
(*   %conv6.i.6.2.2 = zext i8 %conv7.i.5.2.2 to i32 *)
cast v_conv6_i_6_2_2@uint32 v_conv7_i_5_2_2@uint8;
(*   %shl.i.6.2.2 = shl i32 %conv6.i.6.2.2, 1 *)
shls discard_90 v_shl_i_6_2_2 v_conv6_i_6_2_2 1;
(*   %conv7.i.6.2.2 = trunc i32 %shl.i.6.2.2 to i8 *)
split tmp_v_shl_i_6_2_2 v_conv7_i_6_2_2 v_shl_i_6_2_2 8;
vpc v_conv7_i_6_2_2@uint8 v_conv7_i_6_2_2@uint32;
(*   %conv.i.7.2.2 = zext i8 %conv5.i.6.2.2 to i32 *)
cast v_conv_i_7_2_2@uint32 v_conv5_i_6_2_2@uint8;
(*   %and.i.7.2.2 = and i32 %conv.i.7.2.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_2_2 v_conv_i_7_2_2 (0x1)@uint32;
(*   %conv1.i.7.2.2 = zext i8 %conv7.i.6.2.2 to i32 *)
cast v_conv1_i_7_2_2@uint32 v_conv7_i_6_2_2@uint8;
(*   %mul.i.7.2.2 = mul nsw i32 %and.i.7.2.2, %conv1.i.7.2.2 *)
mul v_mul_i_7_2_2 v_and_i_7_2_2 v_conv1_i_7_2_2;
(*   %conv2.i.7.2.2 = zext i8 %conv3.i.6.2.2 to i32 *)
cast v_conv2_i_7_2_2@uint32 v_conv3_i_6_2_2@uint8;
(*   %xor.i.7.2.2 = xor i32 %conv2.i.7.2.2, %mul.i.7.2.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_2_2 v_conv2_i_7_2_2 v_mul_i_7_2_2;
(*   %conv3.i.7.2.2 = trunc i32 %xor.i.7.2.2 to i8 *)
split tmp_v_xor_i_7_2_2 v_conv3_i_7_2_2 v_xor_i_7_2_2 8;
vpc v_conv3_i_7_2_2@uint8 v_conv3_i_7_2_2@uint32;
(*   %arrayidx7.2.2 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 12 *)
(*   store i8 %conv3.i.7.2.2, i8* %arrayidx7.2.2, align 1 *)
mov alpha_12 v_conv3_i_7_2_2;
(*   %arrayidx5.3.2 = getelementptr inbounds i8, i8* %b, i64 3 *)
(*   %16 = load i8, i8* %arrayidx5.3.2, align 1 *)
mov v16 b_3;
(*   %conv.i.364.2 = zext i8 %16 to i32 *)
cast v_conv_i_364_2@uint32 v16@uint8;
(*   %and.i.365.2 = and i32 %conv.i.364.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_365_2 v_conv_i_364_2 (0x1)@uint32;
(*   %conv1.i.366.2 = zext i8 %12 to i32 *)
cast v_conv1_i_366_2@uint32 v12@uint8;
(*   %mul.i.367.2 = mul nsw i32 %and.i.365.2, %conv1.i.366.2 *)
mul v_mul_i_367_2 v_and_i_365_2 v_conv1_i_366_2;
(*   %conv3.i.368.2 = trunc i32 %mul.i.367.2 to i8 *)
split tmp_v_mul_i_367_2 v_conv3_i_368_2 v_mul_i_367_2 8;
vpc v_conv3_i_368_2@uint8 v_conv3_i_368_2@uint32;
(*   %conv4.i.369.2 = zext i8 %16 to i32 *)
cast v_conv4_i_369_2@uint32 v16@uint8;
(*   %shr.i.370.2 = ashr i32 %conv4.i.369.2, 1 *)
(* You may need to modify here *)
split v_shr_i_370_2 tmp_to_be_used v_conv4_i_369_2 1;
(*   %conv5.i.371.2 = trunc i32 %shr.i.370.2 to i8 *)
split tmp_v_shr_i_370_2 v_conv5_i_371_2 v_shr_i_370_2 8;
vpc v_conv5_i_371_2@uint8 v_conv5_i_371_2@uint32;
(*   %conv6.i.372.2 = zext i8 %12 to i32 *)
cast v_conv6_i_372_2@uint32 v12@uint8;
(*   %shl.i.373.2 = shl i32 %conv6.i.372.2, 1 *)
shls discard_91 v_shl_i_373_2 v_conv6_i_372_2 1;
(*   %conv7.i.374.2 = trunc i32 %shl.i.373.2 to i8 *)
split tmp_v_shl_i_373_2 v_conv7_i_374_2 v_shl_i_373_2 8;
vpc v_conv7_i_374_2@uint8 v_conv7_i_374_2@uint32;
(*   %conv.i.1.3.2 = zext i8 %conv5.i.371.2 to i32 *)
cast v_conv_i_1_3_2@uint32 v_conv5_i_371_2@uint8;
(*   %and.i.1.3.2 = and i32 %conv.i.1.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_3_2 v_conv_i_1_3_2 (0x1)@uint32;
(*   %conv1.i.1.3.2 = zext i8 %conv7.i.374.2 to i32 *)
cast v_conv1_i_1_3_2@uint32 v_conv7_i_374_2@uint8;
(*   %mul.i.1.3.2 = mul nsw i32 %and.i.1.3.2, %conv1.i.1.3.2 *)
mul v_mul_i_1_3_2 v_and_i_1_3_2 v_conv1_i_1_3_2;
(*   %conv2.i.1.3.2 = zext i8 %conv3.i.368.2 to i32 *)
cast v_conv2_i_1_3_2@uint32 v_conv3_i_368_2@uint8;
(*   %xor.i.1.3.2 = xor i32 %conv2.i.1.3.2, %mul.i.1.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_3_2 v_conv2_i_1_3_2 v_mul_i_1_3_2;
(*   %conv3.i.1.3.2 = trunc i32 %xor.i.1.3.2 to i8 *)
split tmp_v_xor_i_1_3_2 v_conv3_i_1_3_2 v_xor_i_1_3_2 8;
vpc v_conv3_i_1_3_2@uint8 v_conv3_i_1_3_2@uint32;
(*   %conv4.i.1.3.2 = zext i8 %conv5.i.371.2 to i32 *)
cast v_conv4_i_1_3_2@uint32 v_conv5_i_371_2@uint8;
(*   %shr.i.1.3.2 = ashr i32 %conv4.i.1.3.2, 1 *)
(* You may need to modify here *)
split v_shr_i_1_3_2 tmp_to_be_used v_conv4_i_1_3_2 1;
(*   %conv5.i.1.3.2 = trunc i32 %shr.i.1.3.2 to i8 *)
split tmp_v_shr_i_1_3_2 v_conv5_i_1_3_2 v_shr_i_1_3_2 8;
vpc v_conv5_i_1_3_2@uint8 v_conv5_i_1_3_2@uint32;
(*   %conv6.i.1.3.2 = zext i8 %conv7.i.374.2 to i32 *)
cast v_conv6_i_1_3_2@uint32 v_conv7_i_374_2@uint8;
(*   %shl.i.1.3.2 = shl i32 %conv6.i.1.3.2, 1 *)
shls discard_92 v_shl_i_1_3_2 v_conv6_i_1_3_2 1;
(*   %conv7.i.1.3.2 = trunc i32 %shl.i.1.3.2 to i8 *)
split tmp_v_shl_i_1_3_2 v_conv7_i_1_3_2 v_shl_i_1_3_2 8;
vpc v_conv7_i_1_3_2@uint8 v_conv7_i_1_3_2@uint32;
(*   %conv.i.2.3.2 = zext i8 %conv5.i.1.3.2 to i32 *)
cast v_conv_i_2_3_2@uint32 v_conv5_i_1_3_2@uint8;
(*   %and.i.2.3.2 = and i32 %conv.i.2.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_3_2 v_conv_i_2_3_2 (0x1)@uint32;
(*   %conv1.i.2.3.2 = zext i8 %conv7.i.1.3.2 to i32 *)
cast v_conv1_i_2_3_2@uint32 v_conv7_i_1_3_2@uint8;
(*   %mul.i.2.3.2 = mul nsw i32 %and.i.2.3.2, %conv1.i.2.3.2 *)
mul v_mul_i_2_3_2 v_and_i_2_3_2 v_conv1_i_2_3_2;
(*   %conv2.i.2.3.2 = zext i8 %conv3.i.1.3.2 to i32 *)
cast v_conv2_i_2_3_2@uint32 v_conv3_i_1_3_2@uint8;
(*   %xor.i.2.3.2 = xor i32 %conv2.i.2.3.2, %mul.i.2.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_3_2 v_conv2_i_2_3_2 v_mul_i_2_3_2;
(*   %conv3.i.2.3.2 = trunc i32 %xor.i.2.3.2 to i8 *)
split tmp_v_xor_i_2_3_2 v_conv3_i_2_3_2 v_xor_i_2_3_2 8;
vpc v_conv3_i_2_3_2@uint8 v_conv3_i_2_3_2@uint32;
(*   %conv4.i.2.3.2 = zext i8 %conv5.i.1.3.2 to i32 *)
cast v_conv4_i_2_3_2@uint32 v_conv5_i_1_3_2@uint8;
(*   %shr.i.2.3.2 = ashr i32 %conv4.i.2.3.2, 1 *)
(* You may need to modify here *)
split v_shr_i_2_3_2 tmp_to_be_used v_conv4_i_2_3_2 1;
(*   %conv5.i.2.3.2 = trunc i32 %shr.i.2.3.2 to i8 *)
split tmp_v_shr_i_2_3_2 v_conv5_i_2_3_2 v_shr_i_2_3_2 8;
vpc v_conv5_i_2_3_2@uint8 v_conv5_i_2_3_2@uint32;
(*   %conv6.i.2.3.2 = zext i8 %conv7.i.1.3.2 to i32 *)
cast v_conv6_i_2_3_2@uint32 v_conv7_i_1_3_2@uint8;
(*   %shl.i.2.3.2 = shl i32 %conv6.i.2.3.2, 1 *)
shls discard_93 v_shl_i_2_3_2 v_conv6_i_2_3_2 1;
(*   %conv7.i.2.3.2 = trunc i32 %shl.i.2.3.2 to i8 *)
split tmp_v_shl_i_2_3_2 v_conv7_i_2_3_2 v_shl_i_2_3_2 8;
vpc v_conv7_i_2_3_2@uint8 v_conv7_i_2_3_2@uint32;
(*   %conv.i.3.3.2 = zext i8 %conv5.i.2.3.2 to i32 *)
cast v_conv_i_3_3_2@uint32 v_conv5_i_2_3_2@uint8;
(*   %and.i.3.3.2 = and i32 %conv.i.3.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_3_2 v_conv_i_3_3_2 (0x1)@uint32;
(*   %conv1.i.3.3.2 = zext i8 %conv7.i.2.3.2 to i32 *)
cast v_conv1_i_3_3_2@uint32 v_conv7_i_2_3_2@uint8;
(*   %mul.i.3.3.2 = mul nsw i32 %and.i.3.3.2, %conv1.i.3.3.2 *)
mul v_mul_i_3_3_2 v_and_i_3_3_2 v_conv1_i_3_3_2;
(*   %conv2.i.3.3.2 = zext i8 %conv3.i.2.3.2 to i32 *)
cast v_conv2_i_3_3_2@uint32 v_conv3_i_2_3_2@uint8;
(*   %xor.i.3.3.2 = xor i32 %conv2.i.3.3.2, %mul.i.3.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_3_2 v_conv2_i_3_3_2 v_mul_i_3_3_2;
(*   %conv3.i.3.3.2 = trunc i32 %xor.i.3.3.2 to i8 *)
split tmp_v_xor_i_3_3_2 v_conv3_i_3_3_2 v_xor_i_3_3_2 8;
vpc v_conv3_i_3_3_2@uint8 v_conv3_i_3_3_2@uint32;
(*   %conv4.i.3.3.2 = zext i8 %conv5.i.2.3.2 to i32 *)
cast v_conv4_i_3_3_2@uint32 v_conv5_i_2_3_2@uint8;
(*   %shr.i.3.3.2 = ashr i32 %conv4.i.3.3.2, 1 *)
(* You may need to modify here *)
split v_shr_i_3_3_2 tmp_to_be_used v_conv4_i_3_3_2 1;
(*   %conv5.i.3.3.2 = trunc i32 %shr.i.3.3.2 to i8 *)
split tmp_v_shr_i_3_3_2 v_conv5_i_3_3_2 v_shr_i_3_3_2 8;
vpc v_conv5_i_3_3_2@uint8 v_conv5_i_3_3_2@uint32;
(*   %conv6.i.3.3.2 = zext i8 %conv7.i.2.3.2 to i32 *)
cast v_conv6_i_3_3_2@uint32 v_conv7_i_2_3_2@uint8;
(*   %shl.i.3.3.2 = shl i32 %conv6.i.3.3.2, 1 *)
shls discard_94 v_shl_i_3_3_2 v_conv6_i_3_3_2 1;
(*   %conv7.i.3.3.2 = trunc i32 %shl.i.3.3.2 to i8 *)
split tmp_v_shl_i_3_3_2 v_conv7_i_3_3_2 v_shl_i_3_3_2 8;
vpc v_conv7_i_3_3_2@uint8 v_conv7_i_3_3_2@uint32;
(*   %conv.i.4.3.2 = zext i8 %conv5.i.3.3.2 to i32 *)
cast v_conv_i_4_3_2@uint32 v_conv5_i_3_3_2@uint8;
(*   %and.i.4.3.2 = and i32 %conv.i.4.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_3_2 v_conv_i_4_3_2 (0x1)@uint32;
(*   %conv1.i.4.3.2 = zext i8 %conv7.i.3.3.2 to i32 *)
cast v_conv1_i_4_3_2@uint32 v_conv7_i_3_3_2@uint8;
(*   %mul.i.4.3.2 = mul nsw i32 %and.i.4.3.2, %conv1.i.4.3.2 *)
mul v_mul_i_4_3_2 v_and_i_4_3_2 v_conv1_i_4_3_2;
(*   %conv2.i.4.3.2 = zext i8 %conv3.i.3.3.2 to i32 *)
cast v_conv2_i_4_3_2@uint32 v_conv3_i_3_3_2@uint8;
(*   %xor.i.4.3.2 = xor i32 %conv2.i.4.3.2, %mul.i.4.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_3_2 v_conv2_i_4_3_2 v_mul_i_4_3_2;
(*   %conv3.i.4.3.2 = trunc i32 %xor.i.4.3.2 to i8 *)
split tmp_v_xor_i_4_3_2 v_conv3_i_4_3_2 v_xor_i_4_3_2 8;
vpc v_conv3_i_4_3_2@uint8 v_conv3_i_4_3_2@uint32;
(*   %conv4.i.4.3.2 = zext i8 %conv5.i.3.3.2 to i32 *)
cast v_conv4_i_4_3_2@uint32 v_conv5_i_3_3_2@uint8;
(*   %shr.i.4.3.2 = ashr i32 %conv4.i.4.3.2, 1 *)
(* You may need to modify here *)
split v_shr_i_4_3_2 tmp_to_be_used v_conv4_i_4_3_2 1;
(*   %conv5.i.4.3.2 = trunc i32 %shr.i.4.3.2 to i8 *)
split tmp_v_shr_i_4_3_2 v_conv5_i_4_3_2 v_shr_i_4_3_2 8;
vpc v_conv5_i_4_3_2@uint8 v_conv5_i_4_3_2@uint32;
(*   %conv6.i.4.3.2 = zext i8 %conv7.i.3.3.2 to i32 *)
cast v_conv6_i_4_3_2@uint32 v_conv7_i_3_3_2@uint8;
(*   %shl.i.4.3.2 = shl i32 %conv6.i.4.3.2, 1 *)
shls discard_95 v_shl_i_4_3_2 v_conv6_i_4_3_2 1;
(*   %conv7.i.4.3.2 = trunc i32 %shl.i.4.3.2 to i8 *)
split tmp_v_shl_i_4_3_2 v_conv7_i_4_3_2 v_shl_i_4_3_2 8;
vpc v_conv7_i_4_3_2@uint8 v_conv7_i_4_3_2@uint32;
(*   %conv.i.5.3.2 = zext i8 %conv5.i.4.3.2 to i32 *)
cast v_conv_i_5_3_2@uint32 v_conv5_i_4_3_2@uint8;
(*   %and.i.5.3.2 = and i32 %conv.i.5.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_3_2 v_conv_i_5_3_2 (0x1)@uint32;
(*   %conv1.i.5.3.2 = zext i8 %conv7.i.4.3.2 to i32 *)
cast v_conv1_i_5_3_2@uint32 v_conv7_i_4_3_2@uint8;
(*   %mul.i.5.3.2 = mul nsw i32 %and.i.5.3.2, %conv1.i.5.3.2 *)
mul v_mul_i_5_3_2 v_and_i_5_3_2 v_conv1_i_5_3_2;
(*   %conv2.i.5.3.2 = zext i8 %conv3.i.4.3.2 to i32 *)
cast v_conv2_i_5_3_2@uint32 v_conv3_i_4_3_2@uint8;
(*   %xor.i.5.3.2 = xor i32 %conv2.i.5.3.2, %mul.i.5.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_3_2 v_conv2_i_5_3_2 v_mul_i_5_3_2;
(*   %conv3.i.5.3.2 = trunc i32 %xor.i.5.3.2 to i8 *)
split tmp_v_xor_i_5_3_2 v_conv3_i_5_3_2 v_xor_i_5_3_2 8;
vpc v_conv3_i_5_3_2@uint8 v_conv3_i_5_3_2@uint32;
(*   %conv4.i.5.3.2 = zext i8 %conv5.i.4.3.2 to i32 *)
cast v_conv4_i_5_3_2@uint32 v_conv5_i_4_3_2@uint8;
(*   %shr.i.5.3.2 = ashr i32 %conv4.i.5.3.2, 1 *)
(* You may need to modify here *)
split v_shr_i_5_3_2 tmp_to_be_used v_conv4_i_5_3_2 1;
(*   %conv5.i.5.3.2 = trunc i32 %shr.i.5.3.2 to i8 *)
split tmp_v_shr_i_5_3_2 v_conv5_i_5_3_2 v_shr_i_5_3_2 8;
vpc v_conv5_i_5_3_2@uint8 v_conv5_i_5_3_2@uint32;
(*   %conv6.i.5.3.2 = zext i8 %conv7.i.4.3.2 to i32 *)
cast v_conv6_i_5_3_2@uint32 v_conv7_i_4_3_2@uint8;
(*   %shl.i.5.3.2 = shl i32 %conv6.i.5.3.2, 1 *)
shls discard_96 v_shl_i_5_3_2 v_conv6_i_5_3_2 1;
(*   %conv7.i.5.3.2 = trunc i32 %shl.i.5.3.2 to i8 *)
split tmp_v_shl_i_5_3_2 v_conv7_i_5_3_2 v_shl_i_5_3_2 8;
vpc v_conv7_i_5_3_2@uint8 v_conv7_i_5_3_2@uint32;
(*   %conv.i.6.3.2 = zext i8 %conv5.i.5.3.2 to i32 *)
cast v_conv_i_6_3_2@uint32 v_conv5_i_5_3_2@uint8;
(*   %and.i.6.3.2 = and i32 %conv.i.6.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_3_2 v_conv_i_6_3_2 (0x1)@uint32;
(*   %conv1.i.6.3.2 = zext i8 %conv7.i.5.3.2 to i32 *)
cast v_conv1_i_6_3_2@uint32 v_conv7_i_5_3_2@uint8;
(*   %mul.i.6.3.2 = mul nsw i32 %and.i.6.3.2, %conv1.i.6.3.2 *)
mul v_mul_i_6_3_2 v_and_i_6_3_2 v_conv1_i_6_3_2;
(*   %conv2.i.6.3.2 = zext i8 %conv3.i.5.3.2 to i32 *)
cast v_conv2_i_6_3_2@uint32 v_conv3_i_5_3_2@uint8;
(*   %xor.i.6.3.2 = xor i32 %conv2.i.6.3.2, %mul.i.6.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_3_2 v_conv2_i_6_3_2 v_mul_i_6_3_2;
(*   %conv3.i.6.3.2 = trunc i32 %xor.i.6.3.2 to i8 *)
split tmp_v_xor_i_6_3_2 v_conv3_i_6_3_2 v_xor_i_6_3_2 8;
vpc v_conv3_i_6_3_2@uint8 v_conv3_i_6_3_2@uint32;
(*   %conv4.i.6.3.2 = zext i8 %conv5.i.5.3.2 to i32 *)
cast v_conv4_i_6_3_2@uint32 v_conv5_i_5_3_2@uint8;
(*   %shr.i.6.3.2 = ashr i32 %conv4.i.6.3.2, 1 *)
(* You may need to modify here *)
split v_shr_i_6_3_2 tmp_to_be_used v_conv4_i_6_3_2 1;
(*   %conv5.i.6.3.2 = trunc i32 %shr.i.6.3.2 to i8 *)
split tmp_v_shr_i_6_3_2 v_conv5_i_6_3_2 v_shr_i_6_3_2 8;
vpc v_conv5_i_6_3_2@uint8 v_conv5_i_6_3_2@uint32;
(*   %conv6.i.6.3.2 = zext i8 %conv7.i.5.3.2 to i32 *)
cast v_conv6_i_6_3_2@uint32 v_conv7_i_5_3_2@uint8;
(*   %shl.i.6.3.2 = shl i32 %conv6.i.6.3.2, 1 *)
shls discard_97 v_shl_i_6_3_2 v_conv6_i_6_3_2 1;
(*   %conv7.i.6.3.2 = trunc i32 %shl.i.6.3.2 to i8 *)
split tmp_v_shl_i_6_3_2 v_conv7_i_6_3_2 v_shl_i_6_3_2 8;
vpc v_conv7_i_6_3_2@uint8 v_conv7_i_6_3_2@uint32;
(*   %conv.i.7.3.2 = zext i8 %conv5.i.6.3.2 to i32 *)
cast v_conv_i_7_3_2@uint32 v_conv5_i_6_3_2@uint8;
(*   %and.i.7.3.2 = and i32 %conv.i.7.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_3_2 v_conv_i_7_3_2 (0x1)@uint32;
(*   %conv1.i.7.3.2 = zext i8 %conv7.i.6.3.2 to i32 *)
cast v_conv1_i_7_3_2@uint32 v_conv7_i_6_3_2@uint8;
(*   %mul.i.7.3.2 = mul nsw i32 %and.i.7.3.2, %conv1.i.7.3.2 *)
mul v_mul_i_7_3_2 v_and_i_7_3_2 v_conv1_i_7_3_2;
(*   %conv2.i.7.3.2 = zext i8 %conv3.i.6.3.2 to i32 *)
cast v_conv2_i_7_3_2@uint32 v_conv3_i_6_3_2@uint8;
(*   %xor.i.7.3.2 = xor i32 %conv2.i.7.3.2, %mul.i.7.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_3_2 v_conv2_i_7_3_2 v_mul_i_7_3_2;
(*   %conv3.i.7.3.2 = trunc i32 %xor.i.7.3.2 to i8 *)
split tmp_v_xor_i_7_3_2 v_conv3_i_7_3_2 v_xor_i_7_3_2 8;
vpc v_conv3_i_7_3_2@uint8 v_conv3_i_7_3_2@uint32;
(*   %arrayidx7.3.2 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 13 *)
(*   store i8 %conv3.i.7.3.2, i8* %arrayidx7.3.2, align 1 *)
mov alpha_13 v_conv3_i_7_3_2;
(*   %arrayidx5.4.2 = getelementptr inbounds i8, i8* %b, i64 4 *)
(*   %17 = load i8, i8* %arrayidx5.4.2, align 1 *)
mov v17 b_4;
(*   %conv.i.475.2 = zext i8 %17 to i32 *)
cast v_conv_i_475_2@uint32 v17@uint8;
(*   %and.i.476.2 = and i32 %conv.i.475.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_476_2 v_conv_i_475_2 (0x1)@uint32;
(*   %conv1.i.477.2 = zext i8 %12 to i32 *)
cast v_conv1_i_477_2@uint32 v12@uint8;
(*   %mul.i.478.2 = mul nsw i32 %and.i.476.2, %conv1.i.477.2 *)
mul v_mul_i_478_2 v_and_i_476_2 v_conv1_i_477_2;
(*   %conv3.i.479.2 = trunc i32 %mul.i.478.2 to i8 *)
split tmp_v_mul_i_478_2 v_conv3_i_479_2 v_mul_i_478_2 8;
vpc v_conv3_i_479_2@uint8 v_conv3_i_479_2@uint32;
(*   %conv4.i.480.2 = zext i8 %17 to i32 *)
cast v_conv4_i_480_2@uint32 v17@uint8;
(*   %shr.i.481.2 = ashr i32 %conv4.i.480.2, 1 *)
(* You may need to modify here *)
split v_shr_i_481_2 tmp_to_be_used v_conv4_i_480_2 1;
(*   %conv5.i.482.2 = trunc i32 %shr.i.481.2 to i8 *)
split tmp_v_shr_i_481_2 v_conv5_i_482_2 v_shr_i_481_2 8;
vpc v_conv5_i_482_2@uint8 v_conv5_i_482_2@uint32;
(*   %conv6.i.483.2 = zext i8 %12 to i32 *)
cast v_conv6_i_483_2@uint32 v12@uint8;
(*   %shl.i.484.2 = shl i32 %conv6.i.483.2, 1 *)
shls discard_98 v_shl_i_484_2 v_conv6_i_483_2 1;
(*   %conv7.i.485.2 = trunc i32 %shl.i.484.2 to i8 *)
split tmp_v_shl_i_484_2 v_conv7_i_485_2 v_shl_i_484_2 8;
vpc v_conv7_i_485_2@uint8 v_conv7_i_485_2@uint32;
(*   %conv.i.1.4.2 = zext i8 %conv5.i.482.2 to i32 *)
cast v_conv_i_1_4_2@uint32 v_conv5_i_482_2@uint8;
(*   %and.i.1.4.2 = and i32 %conv.i.1.4.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_4_2 v_conv_i_1_4_2 (0x1)@uint32;
(*   %conv1.i.1.4.2 = zext i8 %conv7.i.485.2 to i32 *)
cast v_conv1_i_1_4_2@uint32 v_conv7_i_485_2@uint8;
(*   %mul.i.1.4.2 = mul nsw i32 %and.i.1.4.2, %conv1.i.1.4.2 *)
mul v_mul_i_1_4_2 v_and_i_1_4_2 v_conv1_i_1_4_2;
(*   %conv2.i.1.4.2 = zext i8 %conv3.i.479.2 to i32 *)
cast v_conv2_i_1_4_2@uint32 v_conv3_i_479_2@uint8;
(*   %xor.i.1.4.2 = xor i32 %conv2.i.1.4.2, %mul.i.1.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_4_2 v_conv2_i_1_4_2 v_mul_i_1_4_2;
(*   %conv3.i.1.4.2 = trunc i32 %xor.i.1.4.2 to i8 *)
split tmp_v_xor_i_1_4_2 v_conv3_i_1_4_2 v_xor_i_1_4_2 8;
vpc v_conv3_i_1_4_2@uint8 v_conv3_i_1_4_2@uint32;
(*   %conv4.i.1.4.2 = zext i8 %conv5.i.482.2 to i32 *)
cast v_conv4_i_1_4_2@uint32 v_conv5_i_482_2@uint8;
(*   %shr.i.1.4.2 = ashr i32 %conv4.i.1.4.2, 1 *)
(* You may need to modify here *)
split v_shr_i_1_4_2 tmp_to_be_used v_conv4_i_1_4_2 1;
(*   %conv5.i.1.4.2 = trunc i32 %shr.i.1.4.2 to i8 *)
split tmp_v_shr_i_1_4_2 v_conv5_i_1_4_2 v_shr_i_1_4_2 8;
vpc v_conv5_i_1_4_2@uint8 v_conv5_i_1_4_2@uint32;
(*   %conv6.i.1.4.2 = zext i8 %conv7.i.485.2 to i32 *)
cast v_conv6_i_1_4_2@uint32 v_conv7_i_485_2@uint8;
(*   %shl.i.1.4.2 = shl i32 %conv6.i.1.4.2, 1 *)
shls discard_99 v_shl_i_1_4_2 v_conv6_i_1_4_2 1;
(*   %conv7.i.1.4.2 = trunc i32 %shl.i.1.4.2 to i8 *)
split tmp_v_shl_i_1_4_2 v_conv7_i_1_4_2 v_shl_i_1_4_2 8;
vpc v_conv7_i_1_4_2@uint8 v_conv7_i_1_4_2@uint32;
(*   %conv.i.2.4.2 = zext i8 %conv5.i.1.4.2 to i32 *)
cast v_conv_i_2_4_2@uint32 v_conv5_i_1_4_2@uint8;
(*   %and.i.2.4.2 = and i32 %conv.i.2.4.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_4_2 v_conv_i_2_4_2 (0x1)@uint32;
(*   %conv1.i.2.4.2 = zext i8 %conv7.i.1.4.2 to i32 *)
cast v_conv1_i_2_4_2@uint32 v_conv7_i_1_4_2@uint8;
(*   %mul.i.2.4.2 = mul nsw i32 %and.i.2.4.2, %conv1.i.2.4.2 *)
mul v_mul_i_2_4_2 v_and_i_2_4_2 v_conv1_i_2_4_2;
(*   %conv2.i.2.4.2 = zext i8 %conv3.i.1.4.2 to i32 *)
cast v_conv2_i_2_4_2@uint32 v_conv3_i_1_4_2@uint8;
(*   %xor.i.2.4.2 = xor i32 %conv2.i.2.4.2, %mul.i.2.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_4_2 v_conv2_i_2_4_2 v_mul_i_2_4_2;
(*   %conv3.i.2.4.2 = trunc i32 %xor.i.2.4.2 to i8 *)
split tmp_v_xor_i_2_4_2 v_conv3_i_2_4_2 v_xor_i_2_4_2 8;
vpc v_conv3_i_2_4_2@uint8 v_conv3_i_2_4_2@uint32;
(*   %conv4.i.2.4.2 = zext i8 %conv5.i.1.4.2 to i32 *)
cast v_conv4_i_2_4_2@uint32 v_conv5_i_1_4_2@uint8;
(*   %shr.i.2.4.2 = ashr i32 %conv4.i.2.4.2, 1 *)
(* You may need to modify here *)
split v_shr_i_2_4_2 tmp_to_be_used v_conv4_i_2_4_2 1;
(*   %conv5.i.2.4.2 = trunc i32 %shr.i.2.4.2 to i8 *)
split tmp_v_shr_i_2_4_2 v_conv5_i_2_4_2 v_shr_i_2_4_2 8;
vpc v_conv5_i_2_4_2@uint8 v_conv5_i_2_4_2@uint32;
(*   %conv6.i.2.4.2 = zext i8 %conv7.i.1.4.2 to i32 *)
cast v_conv6_i_2_4_2@uint32 v_conv7_i_1_4_2@uint8;
(*   %shl.i.2.4.2 = shl i32 %conv6.i.2.4.2, 1 *)
shls discard_100 v_shl_i_2_4_2 v_conv6_i_2_4_2 1;
(*   %conv7.i.2.4.2 = trunc i32 %shl.i.2.4.2 to i8 *)
split tmp_v_shl_i_2_4_2 v_conv7_i_2_4_2 v_shl_i_2_4_2 8;
vpc v_conv7_i_2_4_2@uint8 v_conv7_i_2_4_2@uint32;
(*   %conv.i.3.4.2 = zext i8 %conv5.i.2.4.2 to i32 *)
cast v_conv_i_3_4_2@uint32 v_conv5_i_2_4_2@uint8;
(*   %and.i.3.4.2 = and i32 %conv.i.3.4.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_4_2 v_conv_i_3_4_2 (0x1)@uint32;
(*   %conv1.i.3.4.2 = zext i8 %conv7.i.2.4.2 to i32 *)
cast v_conv1_i_3_4_2@uint32 v_conv7_i_2_4_2@uint8;
(*   %mul.i.3.4.2 = mul nsw i32 %and.i.3.4.2, %conv1.i.3.4.2 *)
mul v_mul_i_3_4_2 v_and_i_3_4_2 v_conv1_i_3_4_2;
(*   %conv2.i.3.4.2 = zext i8 %conv3.i.2.4.2 to i32 *)
cast v_conv2_i_3_4_2@uint32 v_conv3_i_2_4_2@uint8;
(*   %xor.i.3.4.2 = xor i32 %conv2.i.3.4.2, %mul.i.3.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_4_2 v_conv2_i_3_4_2 v_mul_i_3_4_2;
(*   %conv3.i.3.4.2 = trunc i32 %xor.i.3.4.2 to i8 *)
split tmp_v_xor_i_3_4_2 v_conv3_i_3_4_2 v_xor_i_3_4_2 8;
vpc v_conv3_i_3_4_2@uint8 v_conv3_i_3_4_2@uint32;
(*   %conv4.i.3.4.2 = zext i8 %conv5.i.2.4.2 to i32 *)
cast v_conv4_i_3_4_2@uint32 v_conv5_i_2_4_2@uint8;
(*   %shr.i.3.4.2 = ashr i32 %conv4.i.3.4.2, 1 *)
(* You may need to modify here *)
split v_shr_i_3_4_2 tmp_to_be_used v_conv4_i_3_4_2 1;
(*   %conv5.i.3.4.2 = trunc i32 %shr.i.3.4.2 to i8 *)
split tmp_v_shr_i_3_4_2 v_conv5_i_3_4_2 v_shr_i_3_4_2 8;
vpc v_conv5_i_3_4_2@uint8 v_conv5_i_3_4_2@uint32;
(*   %conv6.i.3.4.2 = zext i8 %conv7.i.2.4.2 to i32 *)
cast v_conv6_i_3_4_2@uint32 v_conv7_i_2_4_2@uint8;
(*   %shl.i.3.4.2 = shl i32 %conv6.i.3.4.2, 1 *)
shls discard_101 v_shl_i_3_4_2 v_conv6_i_3_4_2 1;
(*   %conv7.i.3.4.2 = trunc i32 %shl.i.3.4.2 to i8 *)
split tmp_v_shl_i_3_4_2 v_conv7_i_3_4_2 v_shl_i_3_4_2 8;
vpc v_conv7_i_3_4_2@uint8 v_conv7_i_3_4_2@uint32;
(*   %conv.i.4.4.2 = zext i8 %conv5.i.3.4.2 to i32 *)
cast v_conv_i_4_4_2@uint32 v_conv5_i_3_4_2@uint8;
(*   %and.i.4.4.2 = and i32 %conv.i.4.4.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_4_2 v_conv_i_4_4_2 (0x1)@uint32;
(*   %conv1.i.4.4.2 = zext i8 %conv7.i.3.4.2 to i32 *)
cast v_conv1_i_4_4_2@uint32 v_conv7_i_3_4_2@uint8;
(*   %mul.i.4.4.2 = mul nsw i32 %and.i.4.4.2, %conv1.i.4.4.2 *)
mul v_mul_i_4_4_2 v_and_i_4_4_2 v_conv1_i_4_4_2;
(*   %conv2.i.4.4.2 = zext i8 %conv3.i.3.4.2 to i32 *)
cast v_conv2_i_4_4_2@uint32 v_conv3_i_3_4_2@uint8;
(*   %xor.i.4.4.2 = xor i32 %conv2.i.4.4.2, %mul.i.4.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_4_2 v_conv2_i_4_4_2 v_mul_i_4_4_2;
(*   %conv3.i.4.4.2 = trunc i32 %xor.i.4.4.2 to i8 *)
split tmp_v_xor_i_4_4_2 v_conv3_i_4_4_2 v_xor_i_4_4_2 8;
vpc v_conv3_i_4_4_2@uint8 v_conv3_i_4_4_2@uint32;
(*   %conv4.i.4.4.2 = zext i8 %conv5.i.3.4.2 to i32 *)
cast v_conv4_i_4_4_2@uint32 v_conv5_i_3_4_2@uint8;
(*   %shr.i.4.4.2 = ashr i32 %conv4.i.4.4.2, 1 *)
(* You may need to modify here *)
split v_shr_i_4_4_2 tmp_to_be_used v_conv4_i_4_4_2 1;
(*   %conv5.i.4.4.2 = trunc i32 %shr.i.4.4.2 to i8 *)
split tmp_v_shr_i_4_4_2 v_conv5_i_4_4_2 v_shr_i_4_4_2 8;
vpc v_conv5_i_4_4_2@uint8 v_conv5_i_4_4_2@uint32;
(*   %conv6.i.4.4.2 = zext i8 %conv7.i.3.4.2 to i32 *)
cast v_conv6_i_4_4_2@uint32 v_conv7_i_3_4_2@uint8;
(*   %shl.i.4.4.2 = shl i32 %conv6.i.4.4.2, 1 *)
shls discard_102 v_shl_i_4_4_2 v_conv6_i_4_4_2 1;
(*   %conv7.i.4.4.2 = trunc i32 %shl.i.4.4.2 to i8 *)
split tmp_v_shl_i_4_4_2 v_conv7_i_4_4_2 v_shl_i_4_4_2 8;
vpc v_conv7_i_4_4_2@uint8 v_conv7_i_4_4_2@uint32;
(*   %conv.i.5.4.2 = zext i8 %conv5.i.4.4.2 to i32 *)
cast v_conv_i_5_4_2@uint32 v_conv5_i_4_4_2@uint8;
(*   %and.i.5.4.2 = and i32 %conv.i.5.4.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_4_2 v_conv_i_5_4_2 (0x1)@uint32;
(*   %conv1.i.5.4.2 = zext i8 %conv7.i.4.4.2 to i32 *)
cast v_conv1_i_5_4_2@uint32 v_conv7_i_4_4_2@uint8;
(*   %mul.i.5.4.2 = mul nsw i32 %and.i.5.4.2, %conv1.i.5.4.2 *)
mul v_mul_i_5_4_2 v_and_i_5_4_2 v_conv1_i_5_4_2;
(*   %conv2.i.5.4.2 = zext i8 %conv3.i.4.4.2 to i32 *)
cast v_conv2_i_5_4_2@uint32 v_conv3_i_4_4_2@uint8;
(*   %xor.i.5.4.2 = xor i32 %conv2.i.5.4.2, %mul.i.5.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_4_2 v_conv2_i_5_4_2 v_mul_i_5_4_2;
(*   %conv3.i.5.4.2 = trunc i32 %xor.i.5.4.2 to i8 *)
split tmp_v_xor_i_5_4_2 v_conv3_i_5_4_2 v_xor_i_5_4_2 8;
vpc v_conv3_i_5_4_2@uint8 v_conv3_i_5_4_2@uint32;
(*   %conv4.i.5.4.2 = zext i8 %conv5.i.4.4.2 to i32 *)
cast v_conv4_i_5_4_2@uint32 v_conv5_i_4_4_2@uint8;
(*   %shr.i.5.4.2 = ashr i32 %conv4.i.5.4.2, 1 *)
(* You may need to modify here *)
split v_shr_i_5_4_2 tmp_to_be_used v_conv4_i_5_4_2 1;
(*   %conv5.i.5.4.2 = trunc i32 %shr.i.5.4.2 to i8 *)
split tmp_v_shr_i_5_4_2 v_conv5_i_5_4_2 v_shr_i_5_4_2 8;
vpc v_conv5_i_5_4_2@uint8 v_conv5_i_5_4_2@uint32;
(*   %conv6.i.5.4.2 = zext i8 %conv7.i.4.4.2 to i32 *)
cast v_conv6_i_5_4_2@uint32 v_conv7_i_4_4_2@uint8;
(*   %shl.i.5.4.2 = shl i32 %conv6.i.5.4.2, 1 *)
shls discard_103 v_shl_i_5_4_2 v_conv6_i_5_4_2 1;
(*   %conv7.i.5.4.2 = trunc i32 %shl.i.5.4.2 to i8 *)
split tmp_v_shl_i_5_4_2 v_conv7_i_5_4_2 v_shl_i_5_4_2 8;
vpc v_conv7_i_5_4_2@uint8 v_conv7_i_5_4_2@uint32;
(*   %conv.i.6.4.2 = zext i8 %conv5.i.5.4.2 to i32 *)
cast v_conv_i_6_4_2@uint32 v_conv5_i_5_4_2@uint8;
(*   %and.i.6.4.2 = and i32 %conv.i.6.4.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_4_2 v_conv_i_6_4_2 (0x1)@uint32;
(*   %conv1.i.6.4.2 = zext i8 %conv7.i.5.4.2 to i32 *)
cast v_conv1_i_6_4_2@uint32 v_conv7_i_5_4_2@uint8;
(*   %mul.i.6.4.2 = mul nsw i32 %and.i.6.4.2, %conv1.i.6.4.2 *)
mul v_mul_i_6_4_2 v_and_i_6_4_2 v_conv1_i_6_4_2;
(*   %conv2.i.6.4.2 = zext i8 %conv3.i.5.4.2 to i32 *)
cast v_conv2_i_6_4_2@uint32 v_conv3_i_5_4_2@uint8;
(*   %xor.i.6.4.2 = xor i32 %conv2.i.6.4.2, %mul.i.6.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_4_2 v_conv2_i_6_4_2 v_mul_i_6_4_2;
(*   %conv3.i.6.4.2 = trunc i32 %xor.i.6.4.2 to i8 *)
split tmp_v_xor_i_6_4_2 v_conv3_i_6_4_2 v_xor_i_6_4_2 8;
vpc v_conv3_i_6_4_2@uint8 v_conv3_i_6_4_2@uint32;
(*   %conv4.i.6.4.2 = zext i8 %conv5.i.5.4.2 to i32 *)
cast v_conv4_i_6_4_2@uint32 v_conv5_i_5_4_2@uint8;
(*   %shr.i.6.4.2 = ashr i32 %conv4.i.6.4.2, 1 *)
(* You may need to modify here *)
split v_shr_i_6_4_2 tmp_to_be_used v_conv4_i_6_4_2 1;
(*   %conv5.i.6.4.2 = trunc i32 %shr.i.6.4.2 to i8 *)
split tmp_v_shr_i_6_4_2 v_conv5_i_6_4_2 v_shr_i_6_4_2 8;
vpc v_conv5_i_6_4_2@uint8 v_conv5_i_6_4_2@uint32;
(*   %conv6.i.6.4.2 = zext i8 %conv7.i.5.4.2 to i32 *)
cast v_conv6_i_6_4_2@uint32 v_conv7_i_5_4_2@uint8;
(*   %shl.i.6.4.2 = shl i32 %conv6.i.6.4.2, 1 *)
shls discard_104 v_shl_i_6_4_2 v_conv6_i_6_4_2 1;
(*   %conv7.i.6.4.2 = trunc i32 %shl.i.6.4.2 to i8 *)
split tmp_v_shl_i_6_4_2 v_conv7_i_6_4_2 v_shl_i_6_4_2 8;
vpc v_conv7_i_6_4_2@uint8 v_conv7_i_6_4_2@uint32;
(*   %conv.i.7.4.2 = zext i8 %conv5.i.6.4.2 to i32 *)
cast v_conv_i_7_4_2@uint32 v_conv5_i_6_4_2@uint8;
(*   %and.i.7.4.2 = and i32 %conv.i.7.4.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_4_2 v_conv_i_7_4_2 (0x1)@uint32;
(*   %conv1.i.7.4.2 = zext i8 %conv7.i.6.4.2 to i32 *)
cast v_conv1_i_7_4_2@uint32 v_conv7_i_6_4_2@uint8;
(*   %mul.i.7.4.2 = mul nsw i32 %and.i.7.4.2, %conv1.i.7.4.2 *)
mul v_mul_i_7_4_2 v_and_i_7_4_2 v_conv1_i_7_4_2;
(*   %conv2.i.7.4.2 = zext i8 %conv3.i.6.4.2 to i32 *)
cast v_conv2_i_7_4_2@uint32 v_conv3_i_6_4_2@uint8;
(*   %xor.i.7.4.2 = xor i32 %conv2.i.7.4.2, %mul.i.7.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_4_2 v_conv2_i_7_4_2 v_mul_i_7_4_2;
(*   %conv3.i.7.4.2 = trunc i32 %xor.i.7.4.2 to i8 *)
split tmp_v_xor_i_7_4_2 v_conv3_i_7_4_2 v_xor_i_7_4_2 8;
vpc v_conv3_i_7_4_2@uint8 v_conv3_i_7_4_2@uint32;
(*   %arrayidx7.4.2 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 14 *)
(*   store i8 %conv3.i.7.4.2, i8* %arrayidx7.4.2, align 1 *)
mov alpha_14 v_conv3_i_7_4_2;
(*   %arrayidx.3 = getelementptr inbounds i8, i8* %a, i64 3 *)
(*   %18 = load i8, i8* %arrayidx.3, align 1 *)
mov v18 a_3;
(*   %19 = load i8, i8* %b, align 1 *)
mov v19 b_0;
(*   %conv.i.3290 = zext i8 %19 to i32 *)
cast v_conv_i_3290@uint32 v19@uint8;
(*   %and.i.3291 = and i32 %conv.i.3290, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3291 v_conv_i_3290 (0x1)@uint32;
(*   %conv1.i.3292 = zext i8 %18 to i32 *)
cast v_conv1_i_3292@uint32 v18@uint8;
(*   %mul.i.3293 = mul nsw i32 %and.i.3291, %conv1.i.3292 *)
mul v_mul_i_3293 v_and_i_3291 v_conv1_i_3292;
(*   %conv3.i.3294 = trunc i32 %mul.i.3293 to i8 *)
split tmp_v_mul_i_3293 v_conv3_i_3294 v_mul_i_3293 8;
vpc v_conv3_i_3294@uint8 v_conv3_i_3294@uint32;
(*   %conv4.i.3295 = zext i8 %19 to i32 *)
cast v_conv4_i_3295@uint32 v19@uint8;
(*   %shr.i.3296 = ashr i32 %conv4.i.3295, 1 *)
(* You may need to modify here *)
split v_shr_i_3296 tmp_to_be_used v_conv4_i_3295 1;
(*   %conv5.i.3297 = trunc i32 %shr.i.3296 to i8 *)
split tmp_v_shr_i_3296 v_conv5_i_3297 v_shr_i_3296 8;
vpc v_conv5_i_3297@uint8 v_conv5_i_3297@uint32;
(*   %conv6.i.3298 = zext i8 %18 to i32 *)
cast v_conv6_i_3298@uint32 v18@uint8;
(*   %shl.i.3299 = shl i32 %conv6.i.3298, 1 *)
shls discard_105 v_shl_i_3299 v_conv6_i_3298 1;
(*   %conv7.i.3300 = trunc i32 %shl.i.3299 to i8 *)
split tmp_v_shl_i_3299 v_conv7_i_3300 v_shl_i_3299 8;
vpc v_conv7_i_3300@uint8 v_conv7_i_3300@uint32;
(*   %conv.i.1.3301 = zext i8 %conv5.i.3297 to i32 *)
cast v_conv_i_1_3301@uint32 v_conv5_i_3297@uint8;
(*   %and.i.1.3302 = and i32 %conv.i.1.3301, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_3302 v_conv_i_1_3301 (0x1)@uint32;
(*   %conv1.i.1.3303 = zext i8 %conv7.i.3300 to i32 *)
cast v_conv1_i_1_3303@uint32 v_conv7_i_3300@uint8;
(*   %mul.i.1.3304 = mul nsw i32 %and.i.1.3302, %conv1.i.1.3303 *)
mul v_mul_i_1_3304 v_and_i_1_3302 v_conv1_i_1_3303;
(*   %conv2.i.1.3305 = zext i8 %conv3.i.3294 to i32 *)
cast v_conv2_i_1_3305@uint32 v_conv3_i_3294@uint8;
(*   %xor.i.1.3306 = xor i32 %conv2.i.1.3305, %mul.i.1.3304 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_3306 v_conv2_i_1_3305 v_mul_i_1_3304;
(*   %conv3.i.1.3307 = trunc i32 %xor.i.1.3306 to i8 *)
split tmp_v_xor_i_1_3306 v_conv3_i_1_3307 v_xor_i_1_3306 8;
vpc v_conv3_i_1_3307@uint8 v_conv3_i_1_3307@uint32;
(*   %conv4.i.1.3308 = zext i8 %conv5.i.3297 to i32 *)
cast v_conv4_i_1_3308@uint32 v_conv5_i_3297@uint8;
(*   %shr.i.1.3309 = ashr i32 %conv4.i.1.3308, 1 *)
(* You may need to modify here *)
split v_shr_i_1_3309 tmp_to_be_used v_conv4_i_1_3308 1;
(*   %conv5.i.1.3310 = trunc i32 %shr.i.1.3309 to i8 *)
split tmp_v_shr_i_1_3309 v_conv5_i_1_3310 v_shr_i_1_3309 8;
vpc v_conv5_i_1_3310@uint8 v_conv5_i_1_3310@uint32;
(*   %conv6.i.1.3311 = zext i8 %conv7.i.3300 to i32 *)
cast v_conv6_i_1_3311@uint32 v_conv7_i_3300@uint8;
(*   %shl.i.1.3312 = shl i32 %conv6.i.1.3311, 1 *)
shls discard_106 v_shl_i_1_3312 v_conv6_i_1_3311 1;
(*   %conv7.i.1.3313 = trunc i32 %shl.i.1.3312 to i8 *)
split tmp_v_shl_i_1_3312 v_conv7_i_1_3313 v_shl_i_1_3312 8;
vpc v_conv7_i_1_3313@uint8 v_conv7_i_1_3313@uint32;
(*   %conv.i.2.3314 = zext i8 %conv5.i.1.3310 to i32 *)
cast v_conv_i_2_3314@uint32 v_conv5_i_1_3310@uint8;
(*   %and.i.2.3315 = and i32 %conv.i.2.3314, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_3315 v_conv_i_2_3314 (0x1)@uint32;
(*   %conv1.i.2.3316 = zext i8 %conv7.i.1.3313 to i32 *)
cast v_conv1_i_2_3316@uint32 v_conv7_i_1_3313@uint8;
(*   %mul.i.2.3317 = mul nsw i32 %and.i.2.3315, %conv1.i.2.3316 *)
mul v_mul_i_2_3317 v_and_i_2_3315 v_conv1_i_2_3316;
(*   %conv2.i.2.3318 = zext i8 %conv3.i.1.3307 to i32 *)
cast v_conv2_i_2_3318@uint32 v_conv3_i_1_3307@uint8;
(*   %xor.i.2.3319 = xor i32 %conv2.i.2.3318, %mul.i.2.3317 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_3319 v_conv2_i_2_3318 v_mul_i_2_3317;
(*   %conv3.i.2.3320 = trunc i32 %xor.i.2.3319 to i8 *)
split tmp_v_xor_i_2_3319 v_conv3_i_2_3320 v_xor_i_2_3319 8;
vpc v_conv3_i_2_3320@uint8 v_conv3_i_2_3320@uint32;
(*   %conv4.i.2.3321 = zext i8 %conv5.i.1.3310 to i32 *)
cast v_conv4_i_2_3321@uint32 v_conv5_i_1_3310@uint8;
(*   %shr.i.2.3322 = ashr i32 %conv4.i.2.3321, 1 *)
(* You may need to modify here *)
split v_shr_i_2_3322 tmp_to_be_used v_conv4_i_2_3321 1;
(*   %conv5.i.2.3323 = trunc i32 %shr.i.2.3322 to i8 *)
split tmp_v_shr_i_2_3322 v_conv5_i_2_3323 v_shr_i_2_3322 8;
vpc v_conv5_i_2_3323@uint8 v_conv5_i_2_3323@uint32;
(*   %conv6.i.2.3324 = zext i8 %conv7.i.1.3313 to i32 *)
cast v_conv6_i_2_3324@uint32 v_conv7_i_1_3313@uint8;
(*   %shl.i.2.3325 = shl i32 %conv6.i.2.3324, 1 *)
shls discard_107 v_shl_i_2_3325 v_conv6_i_2_3324 1;
(*   %conv7.i.2.3326 = trunc i32 %shl.i.2.3325 to i8 *)
split tmp_v_shl_i_2_3325 v_conv7_i_2_3326 v_shl_i_2_3325 8;
vpc v_conv7_i_2_3326@uint8 v_conv7_i_2_3326@uint32;
(*   %conv.i.3.3327 = zext i8 %conv5.i.2.3323 to i32 *)
cast v_conv_i_3_3327@uint32 v_conv5_i_2_3323@uint8;
(*   %and.i.3.3328 = and i32 %conv.i.3.3327, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_3328 v_conv_i_3_3327 (0x1)@uint32;
(*   %conv1.i.3.3329 = zext i8 %conv7.i.2.3326 to i32 *)
cast v_conv1_i_3_3329@uint32 v_conv7_i_2_3326@uint8;
(*   %mul.i.3.3330 = mul nsw i32 %and.i.3.3328, %conv1.i.3.3329 *)
mul v_mul_i_3_3330 v_and_i_3_3328 v_conv1_i_3_3329;
(*   %conv2.i.3.3331 = zext i8 %conv3.i.2.3320 to i32 *)
cast v_conv2_i_3_3331@uint32 v_conv3_i_2_3320@uint8;
(*   %xor.i.3.3332 = xor i32 %conv2.i.3.3331, %mul.i.3.3330 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_3332 v_conv2_i_3_3331 v_mul_i_3_3330;
(*   %conv3.i.3.3333 = trunc i32 %xor.i.3.3332 to i8 *)
split tmp_v_xor_i_3_3332 v_conv3_i_3_3333 v_xor_i_3_3332 8;
vpc v_conv3_i_3_3333@uint8 v_conv3_i_3_3333@uint32;
(*   %conv4.i.3.3334 = zext i8 %conv5.i.2.3323 to i32 *)
cast v_conv4_i_3_3334@uint32 v_conv5_i_2_3323@uint8;
(*   %shr.i.3.3335 = ashr i32 %conv4.i.3.3334, 1 *)
(* You may need to modify here *)
split v_shr_i_3_3335 tmp_to_be_used v_conv4_i_3_3334 1;
(*   %conv5.i.3.3336 = trunc i32 %shr.i.3.3335 to i8 *)
split tmp_v_shr_i_3_3335 v_conv5_i_3_3336 v_shr_i_3_3335 8;
vpc v_conv5_i_3_3336@uint8 v_conv5_i_3_3336@uint32;
(*   %conv6.i.3.3337 = zext i8 %conv7.i.2.3326 to i32 *)
cast v_conv6_i_3_3337@uint32 v_conv7_i_2_3326@uint8;
(*   %shl.i.3.3338 = shl i32 %conv6.i.3.3337, 1 *)
shls discard_108 v_shl_i_3_3338 v_conv6_i_3_3337 1;
(*   %conv7.i.3.3339 = trunc i32 %shl.i.3.3338 to i8 *)
split tmp_v_shl_i_3_3338 v_conv7_i_3_3339 v_shl_i_3_3338 8;
vpc v_conv7_i_3_3339@uint8 v_conv7_i_3_3339@uint32;
(*   %conv.i.4.3340 = zext i8 %conv5.i.3.3336 to i32 *)
cast v_conv_i_4_3340@uint32 v_conv5_i_3_3336@uint8;
(*   %and.i.4.3341 = and i32 %conv.i.4.3340, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_3341 v_conv_i_4_3340 (0x1)@uint32;
(*   %conv1.i.4.3342 = zext i8 %conv7.i.3.3339 to i32 *)
cast v_conv1_i_4_3342@uint32 v_conv7_i_3_3339@uint8;
(*   %mul.i.4.3343 = mul nsw i32 %and.i.4.3341, %conv1.i.4.3342 *)
mul v_mul_i_4_3343 v_and_i_4_3341 v_conv1_i_4_3342;
(*   %conv2.i.4.3344 = zext i8 %conv3.i.3.3333 to i32 *)
cast v_conv2_i_4_3344@uint32 v_conv3_i_3_3333@uint8;
(*   %xor.i.4.3345 = xor i32 %conv2.i.4.3344, %mul.i.4.3343 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_3345 v_conv2_i_4_3344 v_mul_i_4_3343;
(*   %conv3.i.4.3346 = trunc i32 %xor.i.4.3345 to i8 *)
split tmp_v_xor_i_4_3345 v_conv3_i_4_3346 v_xor_i_4_3345 8;
vpc v_conv3_i_4_3346@uint8 v_conv3_i_4_3346@uint32;
(*   %conv4.i.4.3347 = zext i8 %conv5.i.3.3336 to i32 *)
cast v_conv4_i_4_3347@uint32 v_conv5_i_3_3336@uint8;
(*   %shr.i.4.3348 = ashr i32 %conv4.i.4.3347, 1 *)
(* You may need to modify here *)
split v_shr_i_4_3348 tmp_to_be_used v_conv4_i_4_3347 1;
(*   %conv5.i.4.3349 = trunc i32 %shr.i.4.3348 to i8 *)
split tmp_v_shr_i_4_3348 v_conv5_i_4_3349 v_shr_i_4_3348 8;
vpc v_conv5_i_4_3349@uint8 v_conv5_i_4_3349@uint32;
(*   %conv6.i.4.3350 = zext i8 %conv7.i.3.3339 to i32 *)
cast v_conv6_i_4_3350@uint32 v_conv7_i_3_3339@uint8;
(*   %shl.i.4.3351 = shl i32 %conv6.i.4.3350, 1 *)
shls discard_109 v_shl_i_4_3351 v_conv6_i_4_3350 1;
(*   %conv7.i.4.3352 = trunc i32 %shl.i.4.3351 to i8 *)
split tmp_v_shl_i_4_3351 v_conv7_i_4_3352 v_shl_i_4_3351 8;
vpc v_conv7_i_4_3352@uint8 v_conv7_i_4_3352@uint32;
(*   %conv.i.5.3353 = zext i8 %conv5.i.4.3349 to i32 *)
cast v_conv_i_5_3353@uint32 v_conv5_i_4_3349@uint8;
(*   %and.i.5.3354 = and i32 %conv.i.5.3353, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_3354 v_conv_i_5_3353 (0x1)@uint32;
(*   %conv1.i.5.3355 = zext i8 %conv7.i.4.3352 to i32 *)
cast v_conv1_i_5_3355@uint32 v_conv7_i_4_3352@uint8;
(*   %mul.i.5.3356 = mul nsw i32 %and.i.5.3354, %conv1.i.5.3355 *)
mul v_mul_i_5_3356 v_and_i_5_3354 v_conv1_i_5_3355;
(*   %conv2.i.5.3357 = zext i8 %conv3.i.4.3346 to i32 *)
cast v_conv2_i_5_3357@uint32 v_conv3_i_4_3346@uint8;
(*   %xor.i.5.3358 = xor i32 %conv2.i.5.3357, %mul.i.5.3356 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_3358 v_conv2_i_5_3357 v_mul_i_5_3356;
(*   %conv3.i.5.3359 = trunc i32 %xor.i.5.3358 to i8 *)
split tmp_v_xor_i_5_3358 v_conv3_i_5_3359 v_xor_i_5_3358 8;
vpc v_conv3_i_5_3359@uint8 v_conv3_i_5_3359@uint32;
(*   %conv4.i.5.3360 = zext i8 %conv5.i.4.3349 to i32 *)
cast v_conv4_i_5_3360@uint32 v_conv5_i_4_3349@uint8;
(*   %shr.i.5.3361 = ashr i32 %conv4.i.5.3360, 1 *)
(* You may need to modify here *)
split v_shr_i_5_3361 tmp_to_be_used v_conv4_i_5_3360 1;
(*   %conv5.i.5.3362 = trunc i32 %shr.i.5.3361 to i8 *)
split tmp_v_shr_i_5_3361 v_conv5_i_5_3362 v_shr_i_5_3361 8;
vpc v_conv5_i_5_3362@uint8 v_conv5_i_5_3362@uint32;
(*   %conv6.i.5.3363 = zext i8 %conv7.i.4.3352 to i32 *)
cast v_conv6_i_5_3363@uint32 v_conv7_i_4_3352@uint8;
(*   %shl.i.5.3364 = shl i32 %conv6.i.5.3363, 1 *)
shls discard_110 v_shl_i_5_3364 v_conv6_i_5_3363 1;
(*   %conv7.i.5.3365 = trunc i32 %shl.i.5.3364 to i8 *)
split tmp_v_shl_i_5_3364 v_conv7_i_5_3365 v_shl_i_5_3364 8;
vpc v_conv7_i_5_3365@uint8 v_conv7_i_5_3365@uint32;
(*   %conv.i.6.3366 = zext i8 %conv5.i.5.3362 to i32 *)
cast v_conv_i_6_3366@uint32 v_conv5_i_5_3362@uint8;
(*   %and.i.6.3367 = and i32 %conv.i.6.3366, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_3367 v_conv_i_6_3366 (0x1)@uint32;
(*   %conv1.i.6.3368 = zext i8 %conv7.i.5.3365 to i32 *)
cast v_conv1_i_6_3368@uint32 v_conv7_i_5_3365@uint8;
(*   %mul.i.6.3369 = mul nsw i32 %and.i.6.3367, %conv1.i.6.3368 *)
mul v_mul_i_6_3369 v_and_i_6_3367 v_conv1_i_6_3368;
(*   %conv2.i.6.3370 = zext i8 %conv3.i.5.3359 to i32 *)
cast v_conv2_i_6_3370@uint32 v_conv3_i_5_3359@uint8;
(*   %xor.i.6.3371 = xor i32 %conv2.i.6.3370, %mul.i.6.3369 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_3371 v_conv2_i_6_3370 v_mul_i_6_3369;
(*   %conv3.i.6.3372 = trunc i32 %xor.i.6.3371 to i8 *)
split tmp_v_xor_i_6_3371 v_conv3_i_6_3372 v_xor_i_6_3371 8;
vpc v_conv3_i_6_3372@uint8 v_conv3_i_6_3372@uint32;
(*   %conv4.i.6.3373 = zext i8 %conv5.i.5.3362 to i32 *)
cast v_conv4_i_6_3373@uint32 v_conv5_i_5_3362@uint8;
(*   %shr.i.6.3374 = ashr i32 %conv4.i.6.3373, 1 *)
(* You may need to modify here *)
split v_shr_i_6_3374 tmp_to_be_used v_conv4_i_6_3373 1;
(*   %conv5.i.6.3375 = trunc i32 %shr.i.6.3374 to i8 *)
split tmp_v_shr_i_6_3374 v_conv5_i_6_3375 v_shr_i_6_3374 8;
vpc v_conv5_i_6_3375@uint8 v_conv5_i_6_3375@uint32;
(*   %conv6.i.6.3376 = zext i8 %conv7.i.5.3365 to i32 *)
cast v_conv6_i_6_3376@uint32 v_conv7_i_5_3365@uint8;
(*   %shl.i.6.3377 = shl i32 %conv6.i.6.3376, 1 *)
shls discard_111 v_shl_i_6_3377 v_conv6_i_6_3376 1;
(*   %conv7.i.6.3378 = trunc i32 %shl.i.6.3377 to i8 *)
split tmp_v_shl_i_6_3377 v_conv7_i_6_3378 v_shl_i_6_3377 8;
vpc v_conv7_i_6_3378@uint8 v_conv7_i_6_3378@uint32;
(*   %conv.i.7.3379 = zext i8 %conv5.i.6.3375 to i32 *)
cast v_conv_i_7_3379@uint32 v_conv5_i_6_3375@uint8;
(*   %and.i.7.3380 = and i32 %conv.i.7.3379, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_3380 v_conv_i_7_3379 (0x1)@uint32;
(*   %conv1.i.7.3381 = zext i8 %conv7.i.6.3378 to i32 *)
cast v_conv1_i_7_3381@uint32 v_conv7_i_6_3378@uint8;
(*   %mul.i.7.3382 = mul nsw i32 %and.i.7.3380, %conv1.i.7.3381 *)
mul v_mul_i_7_3382 v_and_i_7_3380 v_conv1_i_7_3381;
(*   %conv2.i.7.3383 = zext i8 %conv3.i.6.3372 to i32 *)
cast v_conv2_i_7_3383@uint32 v_conv3_i_6_3372@uint8;
(*   %xor.i.7.3384 = xor i32 %conv2.i.7.3383, %mul.i.7.3382 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_3384 v_conv2_i_7_3383 v_mul_i_7_3382;
(*   %conv3.i.7.3385 = trunc i32 %xor.i.7.3384 to i8 *)
split tmp_v_xor_i_7_3384 v_conv3_i_7_3385 v_xor_i_7_3384 8;
vpc v_conv3_i_7_3385@uint8 v_conv3_i_7_3385@uint32;
(*   %arrayidx7.3389 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 15 *)
(*   store i8 %conv3.i.7.3385, i8* %arrayidx7.3389, align 1 *)
mov alpha_15 v_conv3_i_7_3385;
(*   %arrayidx5.1.3 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %20 = load i8, i8* %arrayidx5.1.3, align 1 *)
mov v20 b_1;
(*   %conv.i.142.3 = zext i8 %20 to i32 *)
cast v_conv_i_142_3@uint32 v20@uint8;
(*   %and.i.143.3 = and i32 %conv.i.142.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_143_3 v_conv_i_142_3 (0x1)@uint32;
(*   %conv1.i.144.3 = zext i8 %18 to i32 *)
cast v_conv1_i_144_3@uint32 v18@uint8;
(*   %mul.i.145.3 = mul nsw i32 %and.i.143.3, %conv1.i.144.3 *)
mul v_mul_i_145_3 v_and_i_143_3 v_conv1_i_144_3;
(*   %conv3.i.146.3 = trunc i32 %mul.i.145.3 to i8 *)
split tmp_v_mul_i_145_3 v_conv3_i_146_3 v_mul_i_145_3 8;
vpc v_conv3_i_146_3@uint8 v_conv3_i_146_3@uint32;
(*   %conv4.i.147.3 = zext i8 %20 to i32 *)
cast v_conv4_i_147_3@uint32 v20@uint8;
(*   %shr.i.148.3 = ashr i32 %conv4.i.147.3, 1 *)
(* You may need to modify here *)
split v_shr_i_148_3 tmp_to_be_used v_conv4_i_147_3 1;
(*   %conv5.i.149.3 = trunc i32 %shr.i.148.3 to i8 *)
split tmp_v_shr_i_148_3 v_conv5_i_149_3 v_shr_i_148_3 8;
vpc v_conv5_i_149_3@uint8 v_conv5_i_149_3@uint32;
(*   %conv6.i.150.3 = zext i8 %18 to i32 *)
cast v_conv6_i_150_3@uint32 v18@uint8;
(*   %shl.i.151.3 = shl i32 %conv6.i.150.3, 1 *)
shls discard_112 v_shl_i_151_3 v_conv6_i_150_3 1;
(*   %conv7.i.152.3 = trunc i32 %shl.i.151.3 to i8 *)
split tmp_v_shl_i_151_3 v_conv7_i_152_3 v_shl_i_151_3 8;
vpc v_conv7_i_152_3@uint8 v_conv7_i_152_3@uint32;
(*   %conv.i.1.1.3 = zext i8 %conv5.i.149.3 to i32 *)
cast v_conv_i_1_1_3@uint32 v_conv5_i_149_3@uint8;
(*   %and.i.1.1.3 = and i32 %conv.i.1.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_1_3 v_conv_i_1_1_3 (0x1)@uint32;
(*   %conv1.i.1.1.3 = zext i8 %conv7.i.152.3 to i32 *)
cast v_conv1_i_1_1_3@uint32 v_conv7_i_152_3@uint8;
(*   %mul.i.1.1.3 = mul nsw i32 %and.i.1.1.3, %conv1.i.1.1.3 *)
mul v_mul_i_1_1_3 v_and_i_1_1_3 v_conv1_i_1_1_3;
(*   %conv2.i.1.1.3 = zext i8 %conv3.i.146.3 to i32 *)
cast v_conv2_i_1_1_3@uint32 v_conv3_i_146_3@uint8;
(*   %xor.i.1.1.3 = xor i32 %conv2.i.1.1.3, %mul.i.1.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_1_3 v_conv2_i_1_1_3 v_mul_i_1_1_3;
(*   %conv3.i.1.1.3 = trunc i32 %xor.i.1.1.3 to i8 *)
split tmp_v_xor_i_1_1_3 v_conv3_i_1_1_3 v_xor_i_1_1_3 8;
vpc v_conv3_i_1_1_3@uint8 v_conv3_i_1_1_3@uint32;
(*   %conv4.i.1.1.3 = zext i8 %conv5.i.149.3 to i32 *)
cast v_conv4_i_1_1_3@uint32 v_conv5_i_149_3@uint8;
(*   %shr.i.1.1.3 = ashr i32 %conv4.i.1.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i_1_1_3 tmp_to_be_used v_conv4_i_1_1_3 1;
(*   %conv5.i.1.1.3 = trunc i32 %shr.i.1.1.3 to i8 *)
split tmp_v_shr_i_1_1_3 v_conv5_i_1_1_3 v_shr_i_1_1_3 8;
vpc v_conv5_i_1_1_3@uint8 v_conv5_i_1_1_3@uint32;
(*   %conv6.i.1.1.3 = zext i8 %conv7.i.152.3 to i32 *)
cast v_conv6_i_1_1_3@uint32 v_conv7_i_152_3@uint8;
(*   %shl.i.1.1.3 = shl i32 %conv6.i.1.1.3, 1 *)
shls discard_113 v_shl_i_1_1_3 v_conv6_i_1_1_3 1;
(*   %conv7.i.1.1.3 = trunc i32 %shl.i.1.1.3 to i8 *)
split tmp_v_shl_i_1_1_3 v_conv7_i_1_1_3 v_shl_i_1_1_3 8;
vpc v_conv7_i_1_1_3@uint8 v_conv7_i_1_1_3@uint32;
(*   %conv.i.2.1.3 = zext i8 %conv5.i.1.1.3 to i32 *)
cast v_conv_i_2_1_3@uint32 v_conv5_i_1_1_3@uint8;
(*   %and.i.2.1.3 = and i32 %conv.i.2.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_1_3 v_conv_i_2_1_3 (0x1)@uint32;
(*   %conv1.i.2.1.3 = zext i8 %conv7.i.1.1.3 to i32 *)
cast v_conv1_i_2_1_3@uint32 v_conv7_i_1_1_3@uint8;
(*   %mul.i.2.1.3 = mul nsw i32 %and.i.2.1.3, %conv1.i.2.1.3 *)
mul v_mul_i_2_1_3 v_and_i_2_1_3 v_conv1_i_2_1_3;
(*   %conv2.i.2.1.3 = zext i8 %conv3.i.1.1.3 to i32 *)
cast v_conv2_i_2_1_3@uint32 v_conv3_i_1_1_3@uint8;
(*   %xor.i.2.1.3 = xor i32 %conv2.i.2.1.3, %mul.i.2.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_1_3 v_conv2_i_2_1_3 v_mul_i_2_1_3;
(*   %conv3.i.2.1.3 = trunc i32 %xor.i.2.1.3 to i8 *)
split tmp_v_xor_i_2_1_3 v_conv3_i_2_1_3 v_xor_i_2_1_3 8;
vpc v_conv3_i_2_1_3@uint8 v_conv3_i_2_1_3@uint32;
(*   %conv4.i.2.1.3 = zext i8 %conv5.i.1.1.3 to i32 *)
cast v_conv4_i_2_1_3@uint32 v_conv5_i_1_1_3@uint8;
(*   %shr.i.2.1.3 = ashr i32 %conv4.i.2.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i_2_1_3 tmp_to_be_used v_conv4_i_2_1_3 1;
(*   %conv5.i.2.1.3 = trunc i32 %shr.i.2.1.3 to i8 *)
split tmp_v_shr_i_2_1_3 v_conv5_i_2_1_3 v_shr_i_2_1_3 8;
vpc v_conv5_i_2_1_3@uint8 v_conv5_i_2_1_3@uint32;
(*   %conv6.i.2.1.3 = zext i8 %conv7.i.1.1.3 to i32 *)
cast v_conv6_i_2_1_3@uint32 v_conv7_i_1_1_3@uint8;
(*   %shl.i.2.1.3 = shl i32 %conv6.i.2.1.3, 1 *)
shls discard_114 v_shl_i_2_1_3 v_conv6_i_2_1_3 1;
(*   %conv7.i.2.1.3 = trunc i32 %shl.i.2.1.3 to i8 *)
split tmp_v_shl_i_2_1_3 v_conv7_i_2_1_3 v_shl_i_2_1_3 8;
vpc v_conv7_i_2_1_3@uint8 v_conv7_i_2_1_3@uint32;
(*   %conv.i.3.1.3 = zext i8 %conv5.i.2.1.3 to i32 *)
cast v_conv_i_3_1_3@uint32 v_conv5_i_2_1_3@uint8;
(*   %and.i.3.1.3 = and i32 %conv.i.3.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_1_3 v_conv_i_3_1_3 (0x1)@uint32;
(*   %conv1.i.3.1.3 = zext i8 %conv7.i.2.1.3 to i32 *)
cast v_conv1_i_3_1_3@uint32 v_conv7_i_2_1_3@uint8;
(*   %mul.i.3.1.3 = mul nsw i32 %and.i.3.1.3, %conv1.i.3.1.3 *)
mul v_mul_i_3_1_3 v_and_i_3_1_3 v_conv1_i_3_1_3;
(*   %conv2.i.3.1.3 = zext i8 %conv3.i.2.1.3 to i32 *)
cast v_conv2_i_3_1_3@uint32 v_conv3_i_2_1_3@uint8;
(*   %xor.i.3.1.3 = xor i32 %conv2.i.3.1.3, %mul.i.3.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_1_3 v_conv2_i_3_1_3 v_mul_i_3_1_3;
(*   %conv3.i.3.1.3 = trunc i32 %xor.i.3.1.3 to i8 *)
split tmp_v_xor_i_3_1_3 v_conv3_i_3_1_3 v_xor_i_3_1_3 8;
vpc v_conv3_i_3_1_3@uint8 v_conv3_i_3_1_3@uint32;
(*   %conv4.i.3.1.3 = zext i8 %conv5.i.2.1.3 to i32 *)
cast v_conv4_i_3_1_3@uint32 v_conv5_i_2_1_3@uint8;
(*   %shr.i.3.1.3 = ashr i32 %conv4.i.3.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i_3_1_3 tmp_to_be_used v_conv4_i_3_1_3 1;
(*   %conv5.i.3.1.3 = trunc i32 %shr.i.3.1.3 to i8 *)
split tmp_v_shr_i_3_1_3 v_conv5_i_3_1_3 v_shr_i_3_1_3 8;
vpc v_conv5_i_3_1_3@uint8 v_conv5_i_3_1_3@uint32;
(*   %conv6.i.3.1.3 = zext i8 %conv7.i.2.1.3 to i32 *)
cast v_conv6_i_3_1_3@uint32 v_conv7_i_2_1_3@uint8;
(*   %shl.i.3.1.3 = shl i32 %conv6.i.3.1.3, 1 *)
shls discard_115 v_shl_i_3_1_3 v_conv6_i_3_1_3 1;
(*   %conv7.i.3.1.3 = trunc i32 %shl.i.3.1.3 to i8 *)
split tmp_v_shl_i_3_1_3 v_conv7_i_3_1_3 v_shl_i_3_1_3 8;
vpc v_conv7_i_3_1_3@uint8 v_conv7_i_3_1_3@uint32;
(*   %conv.i.4.1.3 = zext i8 %conv5.i.3.1.3 to i32 *)
cast v_conv_i_4_1_3@uint32 v_conv5_i_3_1_3@uint8;
(*   %and.i.4.1.3 = and i32 %conv.i.4.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_1_3 v_conv_i_4_1_3 (0x1)@uint32;
(*   %conv1.i.4.1.3 = zext i8 %conv7.i.3.1.3 to i32 *)
cast v_conv1_i_4_1_3@uint32 v_conv7_i_3_1_3@uint8;
(*   %mul.i.4.1.3 = mul nsw i32 %and.i.4.1.3, %conv1.i.4.1.3 *)
mul v_mul_i_4_1_3 v_and_i_4_1_3 v_conv1_i_4_1_3;
(*   %conv2.i.4.1.3 = zext i8 %conv3.i.3.1.3 to i32 *)
cast v_conv2_i_4_1_3@uint32 v_conv3_i_3_1_3@uint8;
(*   %xor.i.4.1.3 = xor i32 %conv2.i.4.1.3, %mul.i.4.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_1_3 v_conv2_i_4_1_3 v_mul_i_4_1_3;
(*   %conv3.i.4.1.3 = trunc i32 %xor.i.4.1.3 to i8 *)
split tmp_v_xor_i_4_1_3 v_conv3_i_4_1_3 v_xor_i_4_1_3 8;
vpc v_conv3_i_4_1_3@uint8 v_conv3_i_4_1_3@uint32;
(*   %conv4.i.4.1.3 = zext i8 %conv5.i.3.1.3 to i32 *)
cast v_conv4_i_4_1_3@uint32 v_conv5_i_3_1_3@uint8;
(*   %shr.i.4.1.3 = ashr i32 %conv4.i.4.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i_4_1_3 tmp_to_be_used v_conv4_i_4_1_3 1;
(*   %conv5.i.4.1.3 = trunc i32 %shr.i.4.1.3 to i8 *)
split tmp_v_shr_i_4_1_3 v_conv5_i_4_1_3 v_shr_i_4_1_3 8;
vpc v_conv5_i_4_1_3@uint8 v_conv5_i_4_1_3@uint32;
(*   %conv6.i.4.1.3 = zext i8 %conv7.i.3.1.3 to i32 *)
cast v_conv6_i_4_1_3@uint32 v_conv7_i_3_1_3@uint8;
(*   %shl.i.4.1.3 = shl i32 %conv6.i.4.1.3, 1 *)
shls discard_116 v_shl_i_4_1_3 v_conv6_i_4_1_3 1;
(*   %conv7.i.4.1.3 = trunc i32 %shl.i.4.1.3 to i8 *)
split tmp_v_shl_i_4_1_3 v_conv7_i_4_1_3 v_shl_i_4_1_3 8;
vpc v_conv7_i_4_1_3@uint8 v_conv7_i_4_1_3@uint32;
(*   %conv.i.5.1.3 = zext i8 %conv5.i.4.1.3 to i32 *)
cast v_conv_i_5_1_3@uint32 v_conv5_i_4_1_3@uint8;
(*   %and.i.5.1.3 = and i32 %conv.i.5.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_1_3 v_conv_i_5_1_3 (0x1)@uint32;
(*   %conv1.i.5.1.3 = zext i8 %conv7.i.4.1.3 to i32 *)
cast v_conv1_i_5_1_3@uint32 v_conv7_i_4_1_3@uint8;
(*   %mul.i.5.1.3 = mul nsw i32 %and.i.5.1.3, %conv1.i.5.1.3 *)
mul v_mul_i_5_1_3 v_and_i_5_1_3 v_conv1_i_5_1_3;
(*   %conv2.i.5.1.3 = zext i8 %conv3.i.4.1.3 to i32 *)
cast v_conv2_i_5_1_3@uint32 v_conv3_i_4_1_3@uint8;
(*   %xor.i.5.1.3 = xor i32 %conv2.i.5.1.3, %mul.i.5.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_1_3 v_conv2_i_5_1_3 v_mul_i_5_1_3;
(*   %conv3.i.5.1.3 = trunc i32 %xor.i.5.1.3 to i8 *)
split tmp_v_xor_i_5_1_3 v_conv3_i_5_1_3 v_xor_i_5_1_3 8;
vpc v_conv3_i_5_1_3@uint8 v_conv3_i_5_1_3@uint32;
(*   %conv4.i.5.1.3 = zext i8 %conv5.i.4.1.3 to i32 *)
cast v_conv4_i_5_1_3@uint32 v_conv5_i_4_1_3@uint8;
(*   %shr.i.5.1.3 = ashr i32 %conv4.i.5.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i_5_1_3 tmp_to_be_used v_conv4_i_5_1_3 1;
(*   %conv5.i.5.1.3 = trunc i32 %shr.i.5.1.3 to i8 *)
split tmp_v_shr_i_5_1_3 v_conv5_i_5_1_3 v_shr_i_5_1_3 8;
vpc v_conv5_i_5_1_3@uint8 v_conv5_i_5_1_3@uint32;
(*   %conv6.i.5.1.3 = zext i8 %conv7.i.4.1.3 to i32 *)
cast v_conv6_i_5_1_3@uint32 v_conv7_i_4_1_3@uint8;
(*   %shl.i.5.1.3 = shl i32 %conv6.i.5.1.3, 1 *)
shls discard_117 v_shl_i_5_1_3 v_conv6_i_5_1_3 1;
(*   %conv7.i.5.1.3 = trunc i32 %shl.i.5.1.3 to i8 *)
split tmp_v_shl_i_5_1_3 v_conv7_i_5_1_3 v_shl_i_5_1_3 8;
vpc v_conv7_i_5_1_3@uint8 v_conv7_i_5_1_3@uint32;
(*   %conv.i.6.1.3 = zext i8 %conv5.i.5.1.3 to i32 *)
cast v_conv_i_6_1_3@uint32 v_conv5_i_5_1_3@uint8;
(*   %and.i.6.1.3 = and i32 %conv.i.6.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_1_3 v_conv_i_6_1_3 (0x1)@uint32;
(*   %conv1.i.6.1.3 = zext i8 %conv7.i.5.1.3 to i32 *)
cast v_conv1_i_6_1_3@uint32 v_conv7_i_5_1_3@uint8;
(*   %mul.i.6.1.3 = mul nsw i32 %and.i.6.1.3, %conv1.i.6.1.3 *)
mul v_mul_i_6_1_3 v_and_i_6_1_3 v_conv1_i_6_1_3;
(*   %conv2.i.6.1.3 = zext i8 %conv3.i.5.1.3 to i32 *)
cast v_conv2_i_6_1_3@uint32 v_conv3_i_5_1_3@uint8;
(*   %xor.i.6.1.3 = xor i32 %conv2.i.6.1.3, %mul.i.6.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_1_3 v_conv2_i_6_1_3 v_mul_i_6_1_3;
(*   %conv3.i.6.1.3 = trunc i32 %xor.i.6.1.3 to i8 *)
split tmp_v_xor_i_6_1_3 v_conv3_i_6_1_3 v_xor_i_6_1_3 8;
vpc v_conv3_i_6_1_3@uint8 v_conv3_i_6_1_3@uint32;
(*   %conv4.i.6.1.3 = zext i8 %conv5.i.5.1.3 to i32 *)
cast v_conv4_i_6_1_3@uint32 v_conv5_i_5_1_3@uint8;
(*   %shr.i.6.1.3 = ashr i32 %conv4.i.6.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i_6_1_3 tmp_to_be_used v_conv4_i_6_1_3 1;
(*   %conv5.i.6.1.3 = trunc i32 %shr.i.6.1.3 to i8 *)
split tmp_v_shr_i_6_1_3 v_conv5_i_6_1_3 v_shr_i_6_1_3 8;
vpc v_conv5_i_6_1_3@uint8 v_conv5_i_6_1_3@uint32;
(*   %conv6.i.6.1.3 = zext i8 %conv7.i.5.1.3 to i32 *)
cast v_conv6_i_6_1_3@uint32 v_conv7_i_5_1_3@uint8;
(*   %shl.i.6.1.3 = shl i32 %conv6.i.6.1.3, 1 *)
shls discard_118 v_shl_i_6_1_3 v_conv6_i_6_1_3 1;
(*   %conv7.i.6.1.3 = trunc i32 %shl.i.6.1.3 to i8 *)
split tmp_v_shl_i_6_1_3 v_conv7_i_6_1_3 v_shl_i_6_1_3 8;
vpc v_conv7_i_6_1_3@uint8 v_conv7_i_6_1_3@uint32;
(*   %conv.i.7.1.3 = zext i8 %conv5.i.6.1.3 to i32 *)
cast v_conv_i_7_1_3@uint32 v_conv5_i_6_1_3@uint8;
(*   %and.i.7.1.3 = and i32 %conv.i.7.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_1_3 v_conv_i_7_1_3 (0x1)@uint32;
(*   %conv1.i.7.1.3 = zext i8 %conv7.i.6.1.3 to i32 *)
cast v_conv1_i_7_1_3@uint32 v_conv7_i_6_1_3@uint8;
(*   %mul.i.7.1.3 = mul nsw i32 %and.i.7.1.3, %conv1.i.7.1.3 *)
mul v_mul_i_7_1_3 v_and_i_7_1_3 v_conv1_i_7_1_3;
(*   %conv2.i.7.1.3 = zext i8 %conv3.i.6.1.3 to i32 *)
cast v_conv2_i_7_1_3@uint32 v_conv3_i_6_1_3@uint8;
(*   %xor.i.7.1.3 = xor i32 %conv2.i.7.1.3, %mul.i.7.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_1_3 v_conv2_i_7_1_3 v_mul_i_7_1_3;
(*   %conv3.i.7.1.3 = trunc i32 %xor.i.7.1.3 to i8 *)
split tmp_v_xor_i_7_1_3 v_conv3_i_7_1_3 v_xor_i_7_1_3 8;
vpc v_conv3_i_7_1_3@uint8 v_conv3_i_7_1_3@uint32;
(*   %arrayidx7.1.3 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 16 *)
(*   store i8 %conv3.i.7.1.3, i8* %arrayidx7.1.3, align 1 *)
mov alpha_16 v_conv3_i_7_1_3;
(*   %arrayidx5.2.3 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %21 = load i8, i8* %arrayidx5.2.3, align 1 *)
mov v21 b_2;
(*   %conv.i.253.3 = zext i8 %21 to i32 *)
cast v_conv_i_253_3@uint32 v21@uint8;
(*   %and.i.254.3 = and i32 %conv.i.253.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_254_3 v_conv_i_253_3 (0x1)@uint32;
(*   %conv1.i.255.3 = zext i8 %18 to i32 *)
cast v_conv1_i_255_3@uint32 v18@uint8;
(*   %mul.i.256.3 = mul nsw i32 %and.i.254.3, %conv1.i.255.3 *)
mul v_mul_i_256_3 v_and_i_254_3 v_conv1_i_255_3;
(*   %conv3.i.257.3 = trunc i32 %mul.i.256.3 to i8 *)
split tmp_v_mul_i_256_3 v_conv3_i_257_3 v_mul_i_256_3 8;
vpc v_conv3_i_257_3@uint8 v_conv3_i_257_3@uint32;
(*   %conv4.i.258.3 = zext i8 %21 to i32 *)
cast v_conv4_i_258_3@uint32 v21@uint8;
(*   %shr.i.259.3 = ashr i32 %conv4.i.258.3, 1 *)
(* You may need to modify here *)
split v_shr_i_259_3 tmp_to_be_used v_conv4_i_258_3 1;
(*   %conv5.i.260.3 = trunc i32 %shr.i.259.3 to i8 *)
split tmp_v_shr_i_259_3 v_conv5_i_260_3 v_shr_i_259_3 8;
vpc v_conv5_i_260_3@uint8 v_conv5_i_260_3@uint32;
(*   %conv6.i.261.3 = zext i8 %18 to i32 *)
cast v_conv6_i_261_3@uint32 v18@uint8;
(*   %shl.i.262.3 = shl i32 %conv6.i.261.3, 1 *)
shls discard_119 v_shl_i_262_3 v_conv6_i_261_3 1;
(*   %conv7.i.263.3 = trunc i32 %shl.i.262.3 to i8 *)
split tmp_v_shl_i_262_3 v_conv7_i_263_3 v_shl_i_262_3 8;
vpc v_conv7_i_263_3@uint8 v_conv7_i_263_3@uint32;
(*   %conv.i.1.2.3 = zext i8 %conv5.i.260.3 to i32 *)
cast v_conv_i_1_2_3@uint32 v_conv5_i_260_3@uint8;
(*   %and.i.1.2.3 = and i32 %conv.i.1.2.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_2_3 v_conv_i_1_2_3 (0x1)@uint32;
(*   %conv1.i.1.2.3 = zext i8 %conv7.i.263.3 to i32 *)
cast v_conv1_i_1_2_3@uint32 v_conv7_i_263_3@uint8;
(*   %mul.i.1.2.3 = mul nsw i32 %and.i.1.2.3, %conv1.i.1.2.3 *)
mul v_mul_i_1_2_3 v_and_i_1_2_3 v_conv1_i_1_2_3;
(*   %conv2.i.1.2.3 = zext i8 %conv3.i.257.3 to i32 *)
cast v_conv2_i_1_2_3@uint32 v_conv3_i_257_3@uint8;
(*   %xor.i.1.2.3 = xor i32 %conv2.i.1.2.3, %mul.i.1.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_2_3 v_conv2_i_1_2_3 v_mul_i_1_2_3;
(*   %conv3.i.1.2.3 = trunc i32 %xor.i.1.2.3 to i8 *)
split tmp_v_xor_i_1_2_3 v_conv3_i_1_2_3 v_xor_i_1_2_3 8;
vpc v_conv3_i_1_2_3@uint8 v_conv3_i_1_2_3@uint32;
(*   %conv4.i.1.2.3 = zext i8 %conv5.i.260.3 to i32 *)
cast v_conv4_i_1_2_3@uint32 v_conv5_i_260_3@uint8;
(*   %shr.i.1.2.3 = ashr i32 %conv4.i.1.2.3, 1 *)
(* You may need to modify here *)
split v_shr_i_1_2_3 tmp_to_be_used v_conv4_i_1_2_3 1;
(*   %conv5.i.1.2.3 = trunc i32 %shr.i.1.2.3 to i8 *)
split tmp_v_shr_i_1_2_3 v_conv5_i_1_2_3 v_shr_i_1_2_3 8;
vpc v_conv5_i_1_2_3@uint8 v_conv5_i_1_2_3@uint32;
(*   %conv6.i.1.2.3 = zext i8 %conv7.i.263.3 to i32 *)
cast v_conv6_i_1_2_3@uint32 v_conv7_i_263_3@uint8;
(*   %shl.i.1.2.3 = shl i32 %conv6.i.1.2.3, 1 *)
shls discard_120 v_shl_i_1_2_3 v_conv6_i_1_2_3 1;
(*   %conv7.i.1.2.3 = trunc i32 %shl.i.1.2.3 to i8 *)
split tmp_v_shl_i_1_2_3 v_conv7_i_1_2_3 v_shl_i_1_2_3 8;
vpc v_conv7_i_1_2_3@uint8 v_conv7_i_1_2_3@uint32;
(*   %conv.i.2.2.3 = zext i8 %conv5.i.1.2.3 to i32 *)
cast v_conv_i_2_2_3@uint32 v_conv5_i_1_2_3@uint8;
(*   %and.i.2.2.3 = and i32 %conv.i.2.2.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_2_3 v_conv_i_2_2_3 (0x1)@uint32;
(*   %conv1.i.2.2.3 = zext i8 %conv7.i.1.2.3 to i32 *)
cast v_conv1_i_2_2_3@uint32 v_conv7_i_1_2_3@uint8;
(*   %mul.i.2.2.3 = mul nsw i32 %and.i.2.2.3, %conv1.i.2.2.3 *)
mul v_mul_i_2_2_3 v_and_i_2_2_3 v_conv1_i_2_2_3;
(*   %conv2.i.2.2.3 = zext i8 %conv3.i.1.2.3 to i32 *)
cast v_conv2_i_2_2_3@uint32 v_conv3_i_1_2_3@uint8;
(*   %xor.i.2.2.3 = xor i32 %conv2.i.2.2.3, %mul.i.2.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_2_3 v_conv2_i_2_2_3 v_mul_i_2_2_3;
(*   %conv3.i.2.2.3 = trunc i32 %xor.i.2.2.3 to i8 *)
split tmp_v_xor_i_2_2_3 v_conv3_i_2_2_3 v_xor_i_2_2_3 8;
vpc v_conv3_i_2_2_3@uint8 v_conv3_i_2_2_3@uint32;
(*   %conv4.i.2.2.3 = zext i8 %conv5.i.1.2.3 to i32 *)
cast v_conv4_i_2_2_3@uint32 v_conv5_i_1_2_3@uint8;
(*   %shr.i.2.2.3 = ashr i32 %conv4.i.2.2.3, 1 *)
(* You may need to modify here *)
split v_shr_i_2_2_3 tmp_to_be_used v_conv4_i_2_2_3 1;
(*   %conv5.i.2.2.3 = trunc i32 %shr.i.2.2.3 to i8 *)
split tmp_v_shr_i_2_2_3 v_conv5_i_2_2_3 v_shr_i_2_2_3 8;
vpc v_conv5_i_2_2_3@uint8 v_conv5_i_2_2_3@uint32;
(*   %conv6.i.2.2.3 = zext i8 %conv7.i.1.2.3 to i32 *)
cast v_conv6_i_2_2_3@uint32 v_conv7_i_1_2_3@uint8;
(*   %shl.i.2.2.3 = shl i32 %conv6.i.2.2.3, 1 *)
shls discard_121 v_shl_i_2_2_3 v_conv6_i_2_2_3 1;
(*   %conv7.i.2.2.3 = trunc i32 %shl.i.2.2.3 to i8 *)
split tmp_v_shl_i_2_2_3 v_conv7_i_2_2_3 v_shl_i_2_2_3 8;
vpc v_conv7_i_2_2_3@uint8 v_conv7_i_2_2_3@uint32;
(*   %conv.i.3.2.3 = zext i8 %conv5.i.2.2.3 to i32 *)
cast v_conv_i_3_2_3@uint32 v_conv5_i_2_2_3@uint8;
(*   %and.i.3.2.3 = and i32 %conv.i.3.2.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_2_3 v_conv_i_3_2_3 (0x1)@uint32;
(*   %conv1.i.3.2.3 = zext i8 %conv7.i.2.2.3 to i32 *)
cast v_conv1_i_3_2_3@uint32 v_conv7_i_2_2_3@uint8;
(*   %mul.i.3.2.3 = mul nsw i32 %and.i.3.2.3, %conv1.i.3.2.3 *)
mul v_mul_i_3_2_3 v_and_i_3_2_3 v_conv1_i_3_2_3;
(*   %conv2.i.3.2.3 = zext i8 %conv3.i.2.2.3 to i32 *)
cast v_conv2_i_3_2_3@uint32 v_conv3_i_2_2_3@uint8;
(*   %xor.i.3.2.3 = xor i32 %conv2.i.3.2.3, %mul.i.3.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_2_3 v_conv2_i_3_2_3 v_mul_i_3_2_3;
(*   %conv3.i.3.2.3 = trunc i32 %xor.i.3.2.3 to i8 *)
split tmp_v_xor_i_3_2_3 v_conv3_i_3_2_3 v_xor_i_3_2_3 8;
vpc v_conv3_i_3_2_3@uint8 v_conv3_i_3_2_3@uint32;
(*   %conv4.i.3.2.3 = zext i8 %conv5.i.2.2.3 to i32 *)
cast v_conv4_i_3_2_3@uint32 v_conv5_i_2_2_3@uint8;
(*   %shr.i.3.2.3 = ashr i32 %conv4.i.3.2.3, 1 *)
(* You may need to modify here *)
split v_shr_i_3_2_3 tmp_to_be_used v_conv4_i_3_2_3 1;
(*   %conv5.i.3.2.3 = trunc i32 %shr.i.3.2.3 to i8 *)
split tmp_v_shr_i_3_2_3 v_conv5_i_3_2_3 v_shr_i_3_2_3 8;
vpc v_conv5_i_3_2_3@uint8 v_conv5_i_3_2_3@uint32;
(*   %conv6.i.3.2.3 = zext i8 %conv7.i.2.2.3 to i32 *)
cast v_conv6_i_3_2_3@uint32 v_conv7_i_2_2_3@uint8;
(*   %shl.i.3.2.3 = shl i32 %conv6.i.3.2.3, 1 *)
shls discard_122 v_shl_i_3_2_3 v_conv6_i_3_2_3 1;
(*   %conv7.i.3.2.3 = trunc i32 %shl.i.3.2.3 to i8 *)
split tmp_v_shl_i_3_2_3 v_conv7_i_3_2_3 v_shl_i_3_2_3 8;
vpc v_conv7_i_3_2_3@uint8 v_conv7_i_3_2_3@uint32;
(*   %conv.i.4.2.3 = zext i8 %conv5.i.3.2.3 to i32 *)
cast v_conv_i_4_2_3@uint32 v_conv5_i_3_2_3@uint8;
(*   %and.i.4.2.3 = and i32 %conv.i.4.2.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_2_3 v_conv_i_4_2_3 (0x1)@uint32;
(*   %conv1.i.4.2.3 = zext i8 %conv7.i.3.2.3 to i32 *)
cast v_conv1_i_4_2_3@uint32 v_conv7_i_3_2_3@uint8;
(*   %mul.i.4.2.3 = mul nsw i32 %and.i.4.2.3, %conv1.i.4.2.3 *)
mul v_mul_i_4_2_3 v_and_i_4_2_3 v_conv1_i_4_2_3;
(*   %conv2.i.4.2.3 = zext i8 %conv3.i.3.2.3 to i32 *)
cast v_conv2_i_4_2_3@uint32 v_conv3_i_3_2_3@uint8;
(*   %xor.i.4.2.3 = xor i32 %conv2.i.4.2.3, %mul.i.4.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_2_3 v_conv2_i_4_2_3 v_mul_i_4_2_3;
(*   %conv3.i.4.2.3 = trunc i32 %xor.i.4.2.3 to i8 *)
split tmp_v_xor_i_4_2_3 v_conv3_i_4_2_3 v_xor_i_4_2_3 8;
vpc v_conv3_i_4_2_3@uint8 v_conv3_i_4_2_3@uint32;
(*   %conv4.i.4.2.3 = zext i8 %conv5.i.3.2.3 to i32 *)
cast v_conv4_i_4_2_3@uint32 v_conv5_i_3_2_3@uint8;
(*   %shr.i.4.2.3 = ashr i32 %conv4.i.4.2.3, 1 *)
(* You may need to modify here *)
split v_shr_i_4_2_3 tmp_to_be_used v_conv4_i_4_2_3 1;
(*   %conv5.i.4.2.3 = trunc i32 %shr.i.4.2.3 to i8 *)
split tmp_v_shr_i_4_2_3 v_conv5_i_4_2_3 v_shr_i_4_2_3 8;
vpc v_conv5_i_4_2_3@uint8 v_conv5_i_4_2_3@uint32;
(*   %conv6.i.4.2.3 = zext i8 %conv7.i.3.2.3 to i32 *)
cast v_conv6_i_4_2_3@uint32 v_conv7_i_3_2_3@uint8;
(*   %shl.i.4.2.3 = shl i32 %conv6.i.4.2.3, 1 *)
shls discard_123 v_shl_i_4_2_3 v_conv6_i_4_2_3 1;
(*   %conv7.i.4.2.3 = trunc i32 %shl.i.4.2.3 to i8 *)
split tmp_v_shl_i_4_2_3 v_conv7_i_4_2_3 v_shl_i_4_2_3 8;
vpc v_conv7_i_4_2_3@uint8 v_conv7_i_4_2_3@uint32;
(*   %conv.i.5.2.3 = zext i8 %conv5.i.4.2.3 to i32 *)
cast v_conv_i_5_2_3@uint32 v_conv5_i_4_2_3@uint8;
(*   %and.i.5.2.3 = and i32 %conv.i.5.2.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_2_3 v_conv_i_5_2_3 (0x1)@uint32;
(*   %conv1.i.5.2.3 = zext i8 %conv7.i.4.2.3 to i32 *)
cast v_conv1_i_5_2_3@uint32 v_conv7_i_4_2_3@uint8;
(*   %mul.i.5.2.3 = mul nsw i32 %and.i.5.2.3, %conv1.i.5.2.3 *)
mul v_mul_i_5_2_3 v_and_i_5_2_3 v_conv1_i_5_2_3;
(*   %conv2.i.5.2.3 = zext i8 %conv3.i.4.2.3 to i32 *)
cast v_conv2_i_5_2_3@uint32 v_conv3_i_4_2_3@uint8;
(*   %xor.i.5.2.3 = xor i32 %conv2.i.5.2.3, %mul.i.5.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_2_3 v_conv2_i_5_2_3 v_mul_i_5_2_3;
(*   %conv3.i.5.2.3 = trunc i32 %xor.i.5.2.3 to i8 *)
split tmp_v_xor_i_5_2_3 v_conv3_i_5_2_3 v_xor_i_5_2_3 8;
vpc v_conv3_i_5_2_3@uint8 v_conv3_i_5_2_3@uint32;
(*   %conv4.i.5.2.3 = zext i8 %conv5.i.4.2.3 to i32 *)
cast v_conv4_i_5_2_3@uint32 v_conv5_i_4_2_3@uint8;
(*   %shr.i.5.2.3 = ashr i32 %conv4.i.5.2.3, 1 *)
(* You may need to modify here *)
split v_shr_i_5_2_3 tmp_to_be_used v_conv4_i_5_2_3 1;
(*   %conv5.i.5.2.3 = trunc i32 %shr.i.5.2.3 to i8 *)
split tmp_v_shr_i_5_2_3 v_conv5_i_5_2_3 v_shr_i_5_2_3 8;
vpc v_conv5_i_5_2_3@uint8 v_conv5_i_5_2_3@uint32;
(*   %conv6.i.5.2.3 = zext i8 %conv7.i.4.2.3 to i32 *)
cast v_conv6_i_5_2_3@uint32 v_conv7_i_4_2_3@uint8;
(*   %shl.i.5.2.3 = shl i32 %conv6.i.5.2.3, 1 *)
shls discard_124 v_shl_i_5_2_3 v_conv6_i_5_2_3 1;
(*   %conv7.i.5.2.3 = trunc i32 %shl.i.5.2.3 to i8 *)
split tmp_v_shl_i_5_2_3 v_conv7_i_5_2_3 v_shl_i_5_2_3 8;
vpc v_conv7_i_5_2_3@uint8 v_conv7_i_5_2_3@uint32;
(*   %conv.i.6.2.3 = zext i8 %conv5.i.5.2.3 to i32 *)
cast v_conv_i_6_2_3@uint32 v_conv5_i_5_2_3@uint8;
(*   %and.i.6.2.3 = and i32 %conv.i.6.2.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_2_3 v_conv_i_6_2_3 (0x1)@uint32;
(*   %conv1.i.6.2.3 = zext i8 %conv7.i.5.2.3 to i32 *)
cast v_conv1_i_6_2_3@uint32 v_conv7_i_5_2_3@uint8;
(*   %mul.i.6.2.3 = mul nsw i32 %and.i.6.2.3, %conv1.i.6.2.3 *)
mul v_mul_i_6_2_3 v_and_i_6_2_3 v_conv1_i_6_2_3;
(*   %conv2.i.6.2.3 = zext i8 %conv3.i.5.2.3 to i32 *)
cast v_conv2_i_6_2_3@uint32 v_conv3_i_5_2_3@uint8;
(*   %xor.i.6.2.3 = xor i32 %conv2.i.6.2.3, %mul.i.6.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_2_3 v_conv2_i_6_2_3 v_mul_i_6_2_3;
(*   %conv3.i.6.2.3 = trunc i32 %xor.i.6.2.3 to i8 *)
split tmp_v_xor_i_6_2_3 v_conv3_i_6_2_3 v_xor_i_6_2_3 8;
vpc v_conv3_i_6_2_3@uint8 v_conv3_i_6_2_3@uint32;
(*   %conv4.i.6.2.3 = zext i8 %conv5.i.5.2.3 to i32 *)
cast v_conv4_i_6_2_3@uint32 v_conv5_i_5_2_3@uint8;
(*   %shr.i.6.2.3 = ashr i32 %conv4.i.6.2.3, 1 *)
(* You may need to modify here *)
split v_shr_i_6_2_3 tmp_to_be_used v_conv4_i_6_2_3 1;
(*   %conv5.i.6.2.3 = trunc i32 %shr.i.6.2.3 to i8 *)
split tmp_v_shr_i_6_2_3 v_conv5_i_6_2_3 v_shr_i_6_2_3 8;
vpc v_conv5_i_6_2_3@uint8 v_conv5_i_6_2_3@uint32;
(*   %conv6.i.6.2.3 = zext i8 %conv7.i.5.2.3 to i32 *)
cast v_conv6_i_6_2_3@uint32 v_conv7_i_5_2_3@uint8;
(*   %shl.i.6.2.3 = shl i32 %conv6.i.6.2.3, 1 *)
shls discard_125 v_shl_i_6_2_3 v_conv6_i_6_2_3 1;
(*   %conv7.i.6.2.3 = trunc i32 %shl.i.6.2.3 to i8 *)
split tmp_v_shl_i_6_2_3 v_conv7_i_6_2_3 v_shl_i_6_2_3 8;
vpc v_conv7_i_6_2_3@uint8 v_conv7_i_6_2_3@uint32;
(*   %conv.i.7.2.3 = zext i8 %conv5.i.6.2.3 to i32 *)
cast v_conv_i_7_2_3@uint32 v_conv5_i_6_2_3@uint8;
(*   %and.i.7.2.3 = and i32 %conv.i.7.2.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_2_3 v_conv_i_7_2_3 (0x1)@uint32;
(*   %conv1.i.7.2.3 = zext i8 %conv7.i.6.2.3 to i32 *)
cast v_conv1_i_7_2_3@uint32 v_conv7_i_6_2_3@uint8;
(*   %mul.i.7.2.3 = mul nsw i32 %and.i.7.2.3, %conv1.i.7.2.3 *)
mul v_mul_i_7_2_3 v_and_i_7_2_3 v_conv1_i_7_2_3;
(*   %conv2.i.7.2.3 = zext i8 %conv3.i.6.2.3 to i32 *)
cast v_conv2_i_7_2_3@uint32 v_conv3_i_6_2_3@uint8;
(*   %xor.i.7.2.3 = xor i32 %conv2.i.7.2.3, %mul.i.7.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_2_3 v_conv2_i_7_2_3 v_mul_i_7_2_3;
(*   %conv3.i.7.2.3 = trunc i32 %xor.i.7.2.3 to i8 *)
split tmp_v_xor_i_7_2_3 v_conv3_i_7_2_3 v_xor_i_7_2_3 8;
vpc v_conv3_i_7_2_3@uint8 v_conv3_i_7_2_3@uint32;
(*   %arrayidx7.2.3 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 17 *)
(*   store i8 %conv3.i.7.2.3, i8* %arrayidx7.2.3, align 1 *)
mov alpha_17 v_conv3_i_7_2_3;
(*   %arrayidx5.3.3 = getelementptr inbounds i8, i8* %b, i64 3 *)
(*   %22 = load i8, i8* %arrayidx5.3.3, align 1 *)
mov v22 b_3;
(*   %conv.i.364.3 = zext i8 %22 to i32 *)
cast v_conv_i_364_3@uint32 v22@uint8;
(*   %and.i.365.3 = and i32 %conv.i.364.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_365_3 v_conv_i_364_3 (0x1)@uint32;
(*   %conv1.i.366.3 = zext i8 %18 to i32 *)
cast v_conv1_i_366_3@uint32 v18@uint8;
(*   %mul.i.367.3 = mul nsw i32 %and.i.365.3, %conv1.i.366.3 *)
mul v_mul_i_367_3 v_and_i_365_3 v_conv1_i_366_3;
(*   %conv3.i.368.3 = trunc i32 %mul.i.367.3 to i8 *)
split tmp_v_mul_i_367_3 v_conv3_i_368_3 v_mul_i_367_3 8;
vpc v_conv3_i_368_3@uint8 v_conv3_i_368_3@uint32;
(*   %conv4.i.369.3 = zext i8 %22 to i32 *)
cast v_conv4_i_369_3@uint32 v22@uint8;
(*   %shr.i.370.3 = ashr i32 %conv4.i.369.3, 1 *)
(* You may need to modify here *)
split v_shr_i_370_3 tmp_to_be_used v_conv4_i_369_3 1;
(*   %conv5.i.371.3 = trunc i32 %shr.i.370.3 to i8 *)
split tmp_v_shr_i_370_3 v_conv5_i_371_3 v_shr_i_370_3 8;
vpc v_conv5_i_371_3@uint8 v_conv5_i_371_3@uint32;
(*   %conv6.i.372.3 = zext i8 %18 to i32 *)
cast v_conv6_i_372_3@uint32 v18@uint8;
(*   %shl.i.373.3 = shl i32 %conv6.i.372.3, 1 *)
shls discard_126 v_shl_i_373_3 v_conv6_i_372_3 1;
(*   %conv7.i.374.3 = trunc i32 %shl.i.373.3 to i8 *)
split tmp_v_shl_i_373_3 v_conv7_i_374_3 v_shl_i_373_3 8;
vpc v_conv7_i_374_3@uint8 v_conv7_i_374_3@uint32;
(*   %conv.i.1.3.3 = zext i8 %conv5.i.371.3 to i32 *)
cast v_conv_i_1_3_3@uint32 v_conv5_i_371_3@uint8;
(*   %and.i.1.3.3 = and i32 %conv.i.1.3.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_3_3 v_conv_i_1_3_3 (0x1)@uint32;
(*   %conv1.i.1.3.3 = zext i8 %conv7.i.374.3 to i32 *)
cast v_conv1_i_1_3_3@uint32 v_conv7_i_374_3@uint8;
(*   %mul.i.1.3.3 = mul nsw i32 %and.i.1.3.3, %conv1.i.1.3.3 *)
mul v_mul_i_1_3_3 v_and_i_1_3_3 v_conv1_i_1_3_3;
(*   %conv2.i.1.3.3 = zext i8 %conv3.i.368.3 to i32 *)
cast v_conv2_i_1_3_3@uint32 v_conv3_i_368_3@uint8;
(*   %xor.i.1.3.3 = xor i32 %conv2.i.1.3.3, %mul.i.1.3.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_3_3 v_conv2_i_1_3_3 v_mul_i_1_3_3;
(*   %conv3.i.1.3.3 = trunc i32 %xor.i.1.3.3 to i8 *)
split tmp_v_xor_i_1_3_3 v_conv3_i_1_3_3 v_xor_i_1_3_3 8;
vpc v_conv3_i_1_3_3@uint8 v_conv3_i_1_3_3@uint32;
(*   %conv4.i.1.3.3 = zext i8 %conv5.i.371.3 to i32 *)
cast v_conv4_i_1_3_3@uint32 v_conv5_i_371_3@uint8;
(*   %shr.i.1.3.3 = ashr i32 %conv4.i.1.3.3, 1 *)
(* You may need to modify here *)
split v_shr_i_1_3_3 tmp_to_be_used v_conv4_i_1_3_3 1;
(*   %conv5.i.1.3.3 = trunc i32 %shr.i.1.3.3 to i8 *)
split tmp_v_shr_i_1_3_3 v_conv5_i_1_3_3 v_shr_i_1_3_3 8;
vpc v_conv5_i_1_3_3@uint8 v_conv5_i_1_3_3@uint32;
(*   %conv6.i.1.3.3 = zext i8 %conv7.i.374.3 to i32 *)
cast v_conv6_i_1_3_3@uint32 v_conv7_i_374_3@uint8;
(*   %shl.i.1.3.3 = shl i32 %conv6.i.1.3.3, 1 *)
shls discard_127 v_shl_i_1_3_3 v_conv6_i_1_3_3 1;
(*   %conv7.i.1.3.3 = trunc i32 %shl.i.1.3.3 to i8 *)
split tmp_v_shl_i_1_3_3 v_conv7_i_1_3_3 v_shl_i_1_3_3 8;
vpc v_conv7_i_1_3_3@uint8 v_conv7_i_1_3_3@uint32;
(*   %conv.i.2.3.3 = zext i8 %conv5.i.1.3.3 to i32 *)
cast v_conv_i_2_3_3@uint32 v_conv5_i_1_3_3@uint8;
(*   %and.i.2.3.3 = and i32 %conv.i.2.3.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_3_3 v_conv_i_2_3_3 (0x1)@uint32;
(*   %conv1.i.2.3.3 = zext i8 %conv7.i.1.3.3 to i32 *)
cast v_conv1_i_2_3_3@uint32 v_conv7_i_1_3_3@uint8;
(*   %mul.i.2.3.3 = mul nsw i32 %and.i.2.3.3, %conv1.i.2.3.3 *)
mul v_mul_i_2_3_3 v_and_i_2_3_3 v_conv1_i_2_3_3;
(*   %conv2.i.2.3.3 = zext i8 %conv3.i.1.3.3 to i32 *)
cast v_conv2_i_2_3_3@uint32 v_conv3_i_1_3_3@uint8;
(*   %xor.i.2.3.3 = xor i32 %conv2.i.2.3.3, %mul.i.2.3.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_3_3 v_conv2_i_2_3_3 v_mul_i_2_3_3;
(*   %conv3.i.2.3.3 = trunc i32 %xor.i.2.3.3 to i8 *)
split tmp_v_xor_i_2_3_3 v_conv3_i_2_3_3 v_xor_i_2_3_3 8;
vpc v_conv3_i_2_3_3@uint8 v_conv3_i_2_3_3@uint32;
(*   %conv4.i.2.3.3 = zext i8 %conv5.i.1.3.3 to i32 *)
cast v_conv4_i_2_3_3@uint32 v_conv5_i_1_3_3@uint8;
(*   %shr.i.2.3.3 = ashr i32 %conv4.i.2.3.3, 1 *)
(* You may need to modify here *)
split v_shr_i_2_3_3 tmp_to_be_used v_conv4_i_2_3_3 1;
(*   %conv5.i.2.3.3 = trunc i32 %shr.i.2.3.3 to i8 *)
split tmp_v_shr_i_2_3_3 v_conv5_i_2_3_3 v_shr_i_2_3_3 8;
vpc v_conv5_i_2_3_3@uint8 v_conv5_i_2_3_3@uint32;
(*   %conv6.i.2.3.3 = zext i8 %conv7.i.1.3.3 to i32 *)
cast v_conv6_i_2_3_3@uint32 v_conv7_i_1_3_3@uint8;
(*   %shl.i.2.3.3 = shl i32 %conv6.i.2.3.3, 1 *)
shls discard_128 v_shl_i_2_3_3 v_conv6_i_2_3_3 1;
(*   %conv7.i.2.3.3 = trunc i32 %shl.i.2.3.3 to i8 *)
split tmp_v_shl_i_2_3_3 v_conv7_i_2_3_3 v_shl_i_2_3_3 8;
vpc v_conv7_i_2_3_3@uint8 v_conv7_i_2_3_3@uint32;
(*   %conv.i.3.3.3 = zext i8 %conv5.i.2.3.3 to i32 *)
cast v_conv_i_3_3_3@uint32 v_conv5_i_2_3_3@uint8;
(*   %and.i.3.3.3 = and i32 %conv.i.3.3.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_3_3 v_conv_i_3_3_3 (0x1)@uint32;
(*   %conv1.i.3.3.3 = zext i8 %conv7.i.2.3.3 to i32 *)
cast v_conv1_i_3_3_3@uint32 v_conv7_i_2_3_3@uint8;
(*   %mul.i.3.3.3 = mul nsw i32 %and.i.3.3.3, %conv1.i.3.3.3 *)
mul v_mul_i_3_3_3 v_and_i_3_3_3 v_conv1_i_3_3_3;
(*   %conv2.i.3.3.3 = zext i8 %conv3.i.2.3.3 to i32 *)
cast v_conv2_i_3_3_3@uint32 v_conv3_i_2_3_3@uint8;
(*   %xor.i.3.3.3 = xor i32 %conv2.i.3.3.3, %mul.i.3.3.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_3_3 v_conv2_i_3_3_3 v_mul_i_3_3_3;
(*   %conv3.i.3.3.3 = trunc i32 %xor.i.3.3.3 to i8 *)
split tmp_v_xor_i_3_3_3 v_conv3_i_3_3_3 v_xor_i_3_3_3 8;
vpc v_conv3_i_3_3_3@uint8 v_conv3_i_3_3_3@uint32;
(*   %conv4.i.3.3.3 = zext i8 %conv5.i.2.3.3 to i32 *)
cast v_conv4_i_3_3_3@uint32 v_conv5_i_2_3_3@uint8;
(*   %shr.i.3.3.3 = ashr i32 %conv4.i.3.3.3, 1 *)
(* You may need to modify here *)
split v_shr_i_3_3_3 tmp_to_be_used v_conv4_i_3_3_3 1;
(*   %conv5.i.3.3.3 = trunc i32 %shr.i.3.3.3 to i8 *)
split tmp_v_shr_i_3_3_3 v_conv5_i_3_3_3 v_shr_i_3_3_3 8;
vpc v_conv5_i_3_3_3@uint8 v_conv5_i_3_3_3@uint32;
(*   %conv6.i.3.3.3 = zext i8 %conv7.i.2.3.3 to i32 *)
cast v_conv6_i_3_3_3@uint32 v_conv7_i_2_3_3@uint8;
(*   %shl.i.3.3.3 = shl i32 %conv6.i.3.3.3, 1 *)
shls discard_129 v_shl_i_3_3_3 v_conv6_i_3_3_3 1;
(*   %conv7.i.3.3.3 = trunc i32 %shl.i.3.3.3 to i8 *)
split tmp_v_shl_i_3_3_3 v_conv7_i_3_3_3 v_shl_i_3_3_3 8;
vpc v_conv7_i_3_3_3@uint8 v_conv7_i_3_3_3@uint32;
(*   %conv.i.4.3.3 = zext i8 %conv5.i.3.3.3 to i32 *)
cast v_conv_i_4_3_3@uint32 v_conv5_i_3_3_3@uint8;
(*   %and.i.4.3.3 = and i32 %conv.i.4.3.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_3_3 v_conv_i_4_3_3 (0x1)@uint32;
(*   %conv1.i.4.3.3 = zext i8 %conv7.i.3.3.3 to i32 *)
cast v_conv1_i_4_3_3@uint32 v_conv7_i_3_3_3@uint8;
(*   %mul.i.4.3.3 = mul nsw i32 %and.i.4.3.3, %conv1.i.4.3.3 *)
mul v_mul_i_4_3_3 v_and_i_4_3_3 v_conv1_i_4_3_3;
(*   %conv2.i.4.3.3 = zext i8 %conv3.i.3.3.3 to i32 *)
cast v_conv2_i_4_3_3@uint32 v_conv3_i_3_3_3@uint8;
(*   %xor.i.4.3.3 = xor i32 %conv2.i.4.3.3, %mul.i.4.3.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_3_3 v_conv2_i_4_3_3 v_mul_i_4_3_3;
(*   %conv3.i.4.3.3 = trunc i32 %xor.i.4.3.3 to i8 *)
split tmp_v_xor_i_4_3_3 v_conv3_i_4_3_3 v_xor_i_4_3_3 8;
vpc v_conv3_i_4_3_3@uint8 v_conv3_i_4_3_3@uint32;
(*   %conv4.i.4.3.3 = zext i8 %conv5.i.3.3.3 to i32 *)
cast v_conv4_i_4_3_3@uint32 v_conv5_i_3_3_3@uint8;
(*   %shr.i.4.3.3 = ashr i32 %conv4.i.4.3.3, 1 *)
(* You may need to modify here *)
split v_shr_i_4_3_3 tmp_to_be_used v_conv4_i_4_3_3 1;
(*   %conv5.i.4.3.3 = trunc i32 %shr.i.4.3.3 to i8 *)
split tmp_v_shr_i_4_3_3 v_conv5_i_4_3_3 v_shr_i_4_3_3 8;
vpc v_conv5_i_4_3_3@uint8 v_conv5_i_4_3_3@uint32;
(*   %conv6.i.4.3.3 = zext i8 %conv7.i.3.3.3 to i32 *)
cast v_conv6_i_4_3_3@uint32 v_conv7_i_3_3_3@uint8;
(*   %shl.i.4.3.3 = shl i32 %conv6.i.4.3.3, 1 *)
shls discard_130 v_shl_i_4_3_3 v_conv6_i_4_3_3 1;
(*   %conv7.i.4.3.3 = trunc i32 %shl.i.4.3.3 to i8 *)
split tmp_v_shl_i_4_3_3 v_conv7_i_4_3_3 v_shl_i_4_3_3 8;
vpc v_conv7_i_4_3_3@uint8 v_conv7_i_4_3_3@uint32;
(*   %conv.i.5.3.3 = zext i8 %conv5.i.4.3.3 to i32 *)
cast v_conv_i_5_3_3@uint32 v_conv5_i_4_3_3@uint8;
(*   %and.i.5.3.3 = and i32 %conv.i.5.3.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_3_3 v_conv_i_5_3_3 (0x1)@uint32;
(*   %conv1.i.5.3.3 = zext i8 %conv7.i.4.3.3 to i32 *)
cast v_conv1_i_5_3_3@uint32 v_conv7_i_4_3_3@uint8;
(*   %mul.i.5.3.3 = mul nsw i32 %and.i.5.3.3, %conv1.i.5.3.3 *)
mul v_mul_i_5_3_3 v_and_i_5_3_3 v_conv1_i_5_3_3;
(*   %conv2.i.5.3.3 = zext i8 %conv3.i.4.3.3 to i32 *)
cast v_conv2_i_5_3_3@uint32 v_conv3_i_4_3_3@uint8;
(*   %xor.i.5.3.3 = xor i32 %conv2.i.5.3.3, %mul.i.5.3.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_3_3 v_conv2_i_5_3_3 v_mul_i_5_3_3;
(*   %conv3.i.5.3.3 = trunc i32 %xor.i.5.3.3 to i8 *)
split tmp_v_xor_i_5_3_3 v_conv3_i_5_3_3 v_xor_i_5_3_3 8;
vpc v_conv3_i_5_3_3@uint8 v_conv3_i_5_3_3@uint32;
(*   %conv4.i.5.3.3 = zext i8 %conv5.i.4.3.3 to i32 *)
cast v_conv4_i_5_3_3@uint32 v_conv5_i_4_3_3@uint8;
(*   %shr.i.5.3.3 = ashr i32 %conv4.i.5.3.3, 1 *)
(* You may need to modify here *)
split v_shr_i_5_3_3 tmp_to_be_used v_conv4_i_5_3_3 1;
(*   %conv5.i.5.3.3 = trunc i32 %shr.i.5.3.3 to i8 *)
split tmp_v_shr_i_5_3_3 v_conv5_i_5_3_3 v_shr_i_5_3_3 8;
vpc v_conv5_i_5_3_3@uint8 v_conv5_i_5_3_3@uint32;
(*   %conv6.i.5.3.3 = zext i8 %conv7.i.4.3.3 to i32 *)
cast v_conv6_i_5_3_3@uint32 v_conv7_i_4_3_3@uint8;
(*   %shl.i.5.3.3 = shl i32 %conv6.i.5.3.3, 1 *)
shls discard_131 v_shl_i_5_3_3 v_conv6_i_5_3_3 1;
(*   %conv7.i.5.3.3 = trunc i32 %shl.i.5.3.3 to i8 *)
split tmp_v_shl_i_5_3_3 v_conv7_i_5_3_3 v_shl_i_5_3_3 8;
vpc v_conv7_i_5_3_3@uint8 v_conv7_i_5_3_3@uint32;
(*   %conv.i.6.3.3 = zext i8 %conv5.i.5.3.3 to i32 *)
cast v_conv_i_6_3_3@uint32 v_conv5_i_5_3_3@uint8;
(*   %and.i.6.3.3 = and i32 %conv.i.6.3.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_3_3 v_conv_i_6_3_3 (0x1)@uint32;
(*   %conv1.i.6.3.3 = zext i8 %conv7.i.5.3.3 to i32 *)
cast v_conv1_i_6_3_3@uint32 v_conv7_i_5_3_3@uint8;
(*   %mul.i.6.3.3 = mul nsw i32 %and.i.6.3.3, %conv1.i.6.3.3 *)
mul v_mul_i_6_3_3 v_and_i_6_3_3 v_conv1_i_6_3_3;
(*   %conv2.i.6.3.3 = zext i8 %conv3.i.5.3.3 to i32 *)
cast v_conv2_i_6_3_3@uint32 v_conv3_i_5_3_3@uint8;
(*   %xor.i.6.3.3 = xor i32 %conv2.i.6.3.3, %mul.i.6.3.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_3_3 v_conv2_i_6_3_3 v_mul_i_6_3_3;
(*   %conv3.i.6.3.3 = trunc i32 %xor.i.6.3.3 to i8 *)
split tmp_v_xor_i_6_3_3 v_conv3_i_6_3_3 v_xor_i_6_3_3 8;
vpc v_conv3_i_6_3_3@uint8 v_conv3_i_6_3_3@uint32;
(*   %conv4.i.6.3.3 = zext i8 %conv5.i.5.3.3 to i32 *)
cast v_conv4_i_6_3_3@uint32 v_conv5_i_5_3_3@uint8;
(*   %shr.i.6.3.3 = ashr i32 %conv4.i.6.3.3, 1 *)
(* You may need to modify here *)
split v_shr_i_6_3_3 tmp_to_be_used v_conv4_i_6_3_3 1;
(*   %conv5.i.6.3.3 = trunc i32 %shr.i.6.3.3 to i8 *)
split tmp_v_shr_i_6_3_3 v_conv5_i_6_3_3 v_shr_i_6_3_3 8;
vpc v_conv5_i_6_3_3@uint8 v_conv5_i_6_3_3@uint32;
(*   %conv6.i.6.3.3 = zext i8 %conv7.i.5.3.3 to i32 *)
cast v_conv6_i_6_3_3@uint32 v_conv7_i_5_3_3@uint8;
(*   %shl.i.6.3.3 = shl i32 %conv6.i.6.3.3, 1 *)
shls discard_132 v_shl_i_6_3_3 v_conv6_i_6_3_3 1;
(*   %conv7.i.6.3.3 = trunc i32 %shl.i.6.3.3 to i8 *)
split tmp_v_shl_i_6_3_3 v_conv7_i_6_3_3 v_shl_i_6_3_3 8;
vpc v_conv7_i_6_3_3@uint8 v_conv7_i_6_3_3@uint32;
(*   %conv.i.7.3.3 = zext i8 %conv5.i.6.3.3 to i32 *)
cast v_conv_i_7_3_3@uint32 v_conv5_i_6_3_3@uint8;
(*   %and.i.7.3.3 = and i32 %conv.i.7.3.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_3_3 v_conv_i_7_3_3 (0x1)@uint32;
(*   %conv1.i.7.3.3 = zext i8 %conv7.i.6.3.3 to i32 *)
cast v_conv1_i_7_3_3@uint32 v_conv7_i_6_3_3@uint8;
(*   %mul.i.7.3.3 = mul nsw i32 %and.i.7.3.3, %conv1.i.7.3.3 *)
mul v_mul_i_7_3_3 v_and_i_7_3_3 v_conv1_i_7_3_3;
(*   %conv2.i.7.3.3 = zext i8 %conv3.i.6.3.3 to i32 *)
cast v_conv2_i_7_3_3@uint32 v_conv3_i_6_3_3@uint8;
(*   %xor.i.7.3.3 = xor i32 %conv2.i.7.3.3, %mul.i.7.3.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_3_3 v_conv2_i_7_3_3 v_mul_i_7_3_3;
(*   %conv3.i.7.3.3 = trunc i32 %xor.i.7.3.3 to i8 *)
split tmp_v_xor_i_7_3_3 v_conv3_i_7_3_3 v_xor_i_7_3_3 8;
vpc v_conv3_i_7_3_3@uint8 v_conv3_i_7_3_3@uint32;
(*   %arrayidx7.3.3 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 18 *)
(*   store i8 %conv3.i.7.3.3, i8* %arrayidx7.3.3, align 1 *)
mov alpha_18 v_conv3_i_7_3_3;
(*   %arrayidx5.4.3 = getelementptr inbounds i8, i8* %b, i64 4 *)
(*   %23 = load i8, i8* %arrayidx5.4.3, align 1 *)
mov v23 b_4;
(*   %conv.i.475.3 = zext i8 %23 to i32 *)
cast v_conv_i_475_3@uint32 v23@uint8;
(*   %and.i.476.3 = and i32 %conv.i.475.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_476_3 v_conv_i_475_3 (0x1)@uint32;
(*   %conv1.i.477.3 = zext i8 %18 to i32 *)
cast v_conv1_i_477_3@uint32 v18@uint8;
(*   %mul.i.478.3 = mul nsw i32 %and.i.476.3, %conv1.i.477.3 *)
mul v_mul_i_478_3 v_and_i_476_3 v_conv1_i_477_3;
(*   %conv3.i.479.3 = trunc i32 %mul.i.478.3 to i8 *)
split tmp_v_mul_i_478_3 v_conv3_i_479_3 v_mul_i_478_3 8;
vpc v_conv3_i_479_3@uint8 v_conv3_i_479_3@uint32;
(*   %conv4.i.480.3 = zext i8 %23 to i32 *)
cast v_conv4_i_480_3@uint32 v23@uint8;
(*   %shr.i.481.3 = ashr i32 %conv4.i.480.3, 1 *)
(* You may need to modify here *)
split v_shr_i_481_3 tmp_to_be_used v_conv4_i_480_3 1;
(*   %conv5.i.482.3 = trunc i32 %shr.i.481.3 to i8 *)
split tmp_v_shr_i_481_3 v_conv5_i_482_3 v_shr_i_481_3 8;
vpc v_conv5_i_482_3@uint8 v_conv5_i_482_3@uint32;
(*   %conv6.i.483.3 = zext i8 %18 to i32 *)
cast v_conv6_i_483_3@uint32 v18@uint8;
(*   %shl.i.484.3 = shl i32 %conv6.i.483.3, 1 *)
shls discard_133 v_shl_i_484_3 v_conv6_i_483_3 1;
(*   %conv7.i.485.3 = trunc i32 %shl.i.484.3 to i8 *)
split tmp_v_shl_i_484_3 v_conv7_i_485_3 v_shl_i_484_3 8;
vpc v_conv7_i_485_3@uint8 v_conv7_i_485_3@uint32;
(*   %conv.i.1.4.3 = zext i8 %conv5.i.482.3 to i32 *)
cast v_conv_i_1_4_3@uint32 v_conv5_i_482_3@uint8;
(*   %and.i.1.4.3 = and i32 %conv.i.1.4.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_4_3 v_conv_i_1_4_3 (0x1)@uint32;
(*   %conv1.i.1.4.3 = zext i8 %conv7.i.485.3 to i32 *)
cast v_conv1_i_1_4_3@uint32 v_conv7_i_485_3@uint8;
(*   %mul.i.1.4.3 = mul nsw i32 %and.i.1.4.3, %conv1.i.1.4.3 *)
mul v_mul_i_1_4_3 v_and_i_1_4_3 v_conv1_i_1_4_3;
(*   %conv2.i.1.4.3 = zext i8 %conv3.i.479.3 to i32 *)
cast v_conv2_i_1_4_3@uint32 v_conv3_i_479_3@uint8;
(*   %xor.i.1.4.3 = xor i32 %conv2.i.1.4.3, %mul.i.1.4.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_4_3 v_conv2_i_1_4_3 v_mul_i_1_4_3;
(*   %conv3.i.1.4.3 = trunc i32 %xor.i.1.4.3 to i8 *)
split tmp_v_xor_i_1_4_3 v_conv3_i_1_4_3 v_xor_i_1_4_3 8;
vpc v_conv3_i_1_4_3@uint8 v_conv3_i_1_4_3@uint32;
(*   %conv4.i.1.4.3 = zext i8 %conv5.i.482.3 to i32 *)
cast v_conv4_i_1_4_3@uint32 v_conv5_i_482_3@uint8;
(*   %shr.i.1.4.3 = ashr i32 %conv4.i.1.4.3, 1 *)
(* You may need to modify here *)
split v_shr_i_1_4_3 tmp_to_be_used v_conv4_i_1_4_3 1;
(*   %conv5.i.1.4.3 = trunc i32 %shr.i.1.4.3 to i8 *)
split tmp_v_shr_i_1_4_3 v_conv5_i_1_4_3 v_shr_i_1_4_3 8;
vpc v_conv5_i_1_4_3@uint8 v_conv5_i_1_4_3@uint32;
(*   %conv6.i.1.4.3 = zext i8 %conv7.i.485.3 to i32 *)
cast v_conv6_i_1_4_3@uint32 v_conv7_i_485_3@uint8;
(*   %shl.i.1.4.3 = shl i32 %conv6.i.1.4.3, 1 *)
shls discard_134 v_shl_i_1_4_3 v_conv6_i_1_4_3 1;
(*   %conv7.i.1.4.3 = trunc i32 %shl.i.1.4.3 to i8 *)
split tmp_v_shl_i_1_4_3 v_conv7_i_1_4_3 v_shl_i_1_4_3 8;
vpc v_conv7_i_1_4_3@uint8 v_conv7_i_1_4_3@uint32;
(*   %conv.i.2.4.3 = zext i8 %conv5.i.1.4.3 to i32 *)
cast v_conv_i_2_4_3@uint32 v_conv5_i_1_4_3@uint8;
(*   %and.i.2.4.3 = and i32 %conv.i.2.4.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_4_3 v_conv_i_2_4_3 (0x1)@uint32;
(*   %conv1.i.2.4.3 = zext i8 %conv7.i.1.4.3 to i32 *)
cast v_conv1_i_2_4_3@uint32 v_conv7_i_1_4_3@uint8;
(*   %mul.i.2.4.3 = mul nsw i32 %and.i.2.4.3, %conv1.i.2.4.3 *)
mul v_mul_i_2_4_3 v_and_i_2_4_3 v_conv1_i_2_4_3;
(*   %conv2.i.2.4.3 = zext i8 %conv3.i.1.4.3 to i32 *)
cast v_conv2_i_2_4_3@uint32 v_conv3_i_1_4_3@uint8;
(*   %xor.i.2.4.3 = xor i32 %conv2.i.2.4.3, %mul.i.2.4.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_4_3 v_conv2_i_2_4_3 v_mul_i_2_4_3;
(*   %conv3.i.2.4.3 = trunc i32 %xor.i.2.4.3 to i8 *)
split tmp_v_xor_i_2_4_3 v_conv3_i_2_4_3 v_xor_i_2_4_3 8;
vpc v_conv3_i_2_4_3@uint8 v_conv3_i_2_4_3@uint32;
(*   %conv4.i.2.4.3 = zext i8 %conv5.i.1.4.3 to i32 *)
cast v_conv4_i_2_4_3@uint32 v_conv5_i_1_4_3@uint8;
(*   %shr.i.2.4.3 = ashr i32 %conv4.i.2.4.3, 1 *)
(* You may need to modify here *)
split v_shr_i_2_4_3 tmp_to_be_used v_conv4_i_2_4_3 1;
(*   %conv5.i.2.4.3 = trunc i32 %shr.i.2.4.3 to i8 *)
split tmp_v_shr_i_2_4_3 v_conv5_i_2_4_3 v_shr_i_2_4_3 8;
vpc v_conv5_i_2_4_3@uint8 v_conv5_i_2_4_3@uint32;
(*   %conv6.i.2.4.3 = zext i8 %conv7.i.1.4.3 to i32 *)
cast v_conv6_i_2_4_3@uint32 v_conv7_i_1_4_3@uint8;
(*   %shl.i.2.4.3 = shl i32 %conv6.i.2.4.3, 1 *)
shls discard_135 v_shl_i_2_4_3 v_conv6_i_2_4_3 1;
(*   %conv7.i.2.4.3 = trunc i32 %shl.i.2.4.3 to i8 *)
split tmp_v_shl_i_2_4_3 v_conv7_i_2_4_3 v_shl_i_2_4_3 8;
vpc v_conv7_i_2_4_3@uint8 v_conv7_i_2_4_3@uint32;
(*   %conv.i.3.4.3 = zext i8 %conv5.i.2.4.3 to i32 *)
cast v_conv_i_3_4_3@uint32 v_conv5_i_2_4_3@uint8;
(*   %and.i.3.4.3 = and i32 %conv.i.3.4.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_4_3 v_conv_i_3_4_3 (0x1)@uint32;
(*   %conv1.i.3.4.3 = zext i8 %conv7.i.2.4.3 to i32 *)
cast v_conv1_i_3_4_3@uint32 v_conv7_i_2_4_3@uint8;
(*   %mul.i.3.4.3 = mul nsw i32 %and.i.3.4.3, %conv1.i.3.4.3 *)
mul v_mul_i_3_4_3 v_and_i_3_4_3 v_conv1_i_3_4_3;
(*   %conv2.i.3.4.3 = zext i8 %conv3.i.2.4.3 to i32 *)
cast v_conv2_i_3_4_3@uint32 v_conv3_i_2_4_3@uint8;
(*   %xor.i.3.4.3 = xor i32 %conv2.i.3.4.3, %mul.i.3.4.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_4_3 v_conv2_i_3_4_3 v_mul_i_3_4_3;
(*   %conv3.i.3.4.3 = trunc i32 %xor.i.3.4.3 to i8 *)
split tmp_v_xor_i_3_4_3 v_conv3_i_3_4_3 v_xor_i_3_4_3 8;
vpc v_conv3_i_3_4_3@uint8 v_conv3_i_3_4_3@uint32;
(*   %conv4.i.3.4.3 = zext i8 %conv5.i.2.4.3 to i32 *)
cast v_conv4_i_3_4_3@uint32 v_conv5_i_2_4_3@uint8;
(*   %shr.i.3.4.3 = ashr i32 %conv4.i.3.4.3, 1 *)
(* You may need to modify here *)
split v_shr_i_3_4_3 tmp_to_be_used v_conv4_i_3_4_3 1;
(*   %conv5.i.3.4.3 = trunc i32 %shr.i.3.4.3 to i8 *)
split tmp_v_shr_i_3_4_3 v_conv5_i_3_4_3 v_shr_i_3_4_3 8;
vpc v_conv5_i_3_4_3@uint8 v_conv5_i_3_4_3@uint32;
(*   %conv6.i.3.4.3 = zext i8 %conv7.i.2.4.3 to i32 *)
cast v_conv6_i_3_4_3@uint32 v_conv7_i_2_4_3@uint8;
(*   %shl.i.3.4.3 = shl i32 %conv6.i.3.4.3, 1 *)
shls discard_136 v_shl_i_3_4_3 v_conv6_i_3_4_3 1;
(*   %conv7.i.3.4.3 = trunc i32 %shl.i.3.4.3 to i8 *)
split tmp_v_shl_i_3_4_3 v_conv7_i_3_4_3 v_shl_i_3_4_3 8;
vpc v_conv7_i_3_4_3@uint8 v_conv7_i_3_4_3@uint32;
(*   %conv.i.4.4.3 = zext i8 %conv5.i.3.4.3 to i32 *)
cast v_conv_i_4_4_3@uint32 v_conv5_i_3_4_3@uint8;
(*   %and.i.4.4.3 = and i32 %conv.i.4.4.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_4_3 v_conv_i_4_4_3 (0x1)@uint32;
(*   %conv1.i.4.4.3 = zext i8 %conv7.i.3.4.3 to i32 *)
cast v_conv1_i_4_4_3@uint32 v_conv7_i_3_4_3@uint8;
(*   %mul.i.4.4.3 = mul nsw i32 %and.i.4.4.3, %conv1.i.4.4.3 *)
mul v_mul_i_4_4_3 v_and_i_4_4_3 v_conv1_i_4_4_3;
(*   %conv2.i.4.4.3 = zext i8 %conv3.i.3.4.3 to i32 *)
cast v_conv2_i_4_4_3@uint32 v_conv3_i_3_4_3@uint8;
(*   %xor.i.4.4.3 = xor i32 %conv2.i.4.4.3, %mul.i.4.4.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_4_3 v_conv2_i_4_4_3 v_mul_i_4_4_3;
(*   %conv3.i.4.4.3 = trunc i32 %xor.i.4.4.3 to i8 *)
split tmp_v_xor_i_4_4_3 v_conv3_i_4_4_3 v_xor_i_4_4_3 8;
vpc v_conv3_i_4_4_3@uint8 v_conv3_i_4_4_3@uint32;
(*   %conv4.i.4.4.3 = zext i8 %conv5.i.3.4.3 to i32 *)
cast v_conv4_i_4_4_3@uint32 v_conv5_i_3_4_3@uint8;
(*   %shr.i.4.4.3 = ashr i32 %conv4.i.4.4.3, 1 *)
(* You may need to modify here *)
split v_shr_i_4_4_3 tmp_to_be_used v_conv4_i_4_4_3 1;
(*   %conv5.i.4.4.3 = trunc i32 %shr.i.4.4.3 to i8 *)
split tmp_v_shr_i_4_4_3 v_conv5_i_4_4_3 v_shr_i_4_4_3 8;
vpc v_conv5_i_4_4_3@uint8 v_conv5_i_4_4_3@uint32;
(*   %conv6.i.4.4.3 = zext i8 %conv7.i.3.4.3 to i32 *)
cast v_conv6_i_4_4_3@uint32 v_conv7_i_3_4_3@uint8;
(*   %shl.i.4.4.3 = shl i32 %conv6.i.4.4.3, 1 *)
shls discard_137 v_shl_i_4_4_3 v_conv6_i_4_4_3 1;
(*   %conv7.i.4.4.3 = trunc i32 %shl.i.4.4.3 to i8 *)
split tmp_v_shl_i_4_4_3 v_conv7_i_4_4_3 v_shl_i_4_4_3 8;
vpc v_conv7_i_4_4_3@uint8 v_conv7_i_4_4_3@uint32;
(*   %conv.i.5.4.3 = zext i8 %conv5.i.4.4.3 to i32 *)
cast v_conv_i_5_4_3@uint32 v_conv5_i_4_4_3@uint8;
(*   %and.i.5.4.3 = and i32 %conv.i.5.4.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_4_3 v_conv_i_5_4_3 (0x1)@uint32;
(*   %conv1.i.5.4.3 = zext i8 %conv7.i.4.4.3 to i32 *)
cast v_conv1_i_5_4_3@uint32 v_conv7_i_4_4_3@uint8;
(*   %mul.i.5.4.3 = mul nsw i32 %and.i.5.4.3, %conv1.i.5.4.3 *)
mul v_mul_i_5_4_3 v_and_i_5_4_3 v_conv1_i_5_4_3;
(*   %conv2.i.5.4.3 = zext i8 %conv3.i.4.4.3 to i32 *)
cast v_conv2_i_5_4_3@uint32 v_conv3_i_4_4_3@uint8;
(*   %xor.i.5.4.3 = xor i32 %conv2.i.5.4.3, %mul.i.5.4.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_4_3 v_conv2_i_5_4_3 v_mul_i_5_4_3;
(*   %conv3.i.5.4.3 = trunc i32 %xor.i.5.4.3 to i8 *)
split tmp_v_xor_i_5_4_3 v_conv3_i_5_4_3 v_xor_i_5_4_3 8;
vpc v_conv3_i_5_4_3@uint8 v_conv3_i_5_4_3@uint32;
(*   %conv4.i.5.4.3 = zext i8 %conv5.i.4.4.3 to i32 *)
cast v_conv4_i_5_4_3@uint32 v_conv5_i_4_4_3@uint8;
(*   %shr.i.5.4.3 = ashr i32 %conv4.i.5.4.3, 1 *)
(* You may need to modify here *)
split v_shr_i_5_4_3 tmp_to_be_used v_conv4_i_5_4_3 1;
(*   %conv5.i.5.4.3 = trunc i32 %shr.i.5.4.3 to i8 *)
split tmp_v_shr_i_5_4_3 v_conv5_i_5_4_3 v_shr_i_5_4_3 8;
vpc v_conv5_i_5_4_3@uint8 v_conv5_i_5_4_3@uint32;
(*   %conv6.i.5.4.3 = zext i8 %conv7.i.4.4.3 to i32 *)
cast v_conv6_i_5_4_3@uint32 v_conv7_i_4_4_3@uint8;
(*   %shl.i.5.4.3 = shl i32 %conv6.i.5.4.3, 1 *)
shls discard_138 v_shl_i_5_4_3 v_conv6_i_5_4_3 1;
(*   %conv7.i.5.4.3 = trunc i32 %shl.i.5.4.3 to i8 *)
split tmp_v_shl_i_5_4_3 v_conv7_i_5_4_3 v_shl_i_5_4_3 8;
vpc v_conv7_i_5_4_3@uint8 v_conv7_i_5_4_3@uint32;
(*   %conv.i.6.4.3 = zext i8 %conv5.i.5.4.3 to i32 *)
cast v_conv_i_6_4_3@uint32 v_conv5_i_5_4_3@uint8;
(*   %and.i.6.4.3 = and i32 %conv.i.6.4.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_4_3 v_conv_i_6_4_3 (0x1)@uint32;
(*   %conv1.i.6.4.3 = zext i8 %conv7.i.5.4.3 to i32 *)
cast v_conv1_i_6_4_3@uint32 v_conv7_i_5_4_3@uint8;
(*   %mul.i.6.4.3 = mul nsw i32 %and.i.6.4.3, %conv1.i.6.4.3 *)
mul v_mul_i_6_4_3 v_and_i_6_4_3 v_conv1_i_6_4_3;
(*   %conv2.i.6.4.3 = zext i8 %conv3.i.5.4.3 to i32 *)
cast v_conv2_i_6_4_3@uint32 v_conv3_i_5_4_3@uint8;
(*   %xor.i.6.4.3 = xor i32 %conv2.i.6.4.3, %mul.i.6.4.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_4_3 v_conv2_i_6_4_3 v_mul_i_6_4_3;
(*   %conv3.i.6.4.3 = trunc i32 %xor.i.6.4.3 to i8 *)
split tmp_v_xor_i_6_4_3 v_conv3_i_6_4_3 v_xor_i_6_4_3 8;
vpc v_conv3_i_6_4_3@uint8 v_conv3_i_6_4_3@uint32;
(*   %conv4.i.6.4.3 = zext i8 %conv5.i.5.4.3 to i32 *)
cast v_conv4_i_6_4_3@uint32 v_conv5_i_5_4_3@uint8;
(*   %shr.i.6.4.3 = ashr i32 %conv4.i.6.4.3, 1 *)
(* You may need to modify here *)
split v_shr_i_6_4_3 tmp_to_be_used v_conv4_i_6_4_3 1;
(*   %conv5.i.6.4.3 = trunc i32 %shr.i.6.4.3 to i8 *)
split tmp_v_shr_i_6_4_3 v_conv5_i_6_4_3 v_shr_i_6_4_3 8;
vpc v_conv5_i_6_4_3@uint8 v_conv5_i_6_4_3@uint32;
(*   %conv6.i.6.4.3 = zext i8 %conv7.i.5.4.3 to i32 *)
cast v_conv6_i_6_4_3@uint32 v_conv7_i_5_4_3@uint8;
(*   %shl.i.6.4.3 = shl i32 %conv6.i.6.4.3, 1 *)
shls discard_139 v_shl_i_6_4_3 v_conv6_i_6_4_3 1;
(*   %conv7.i.6.4.3 = trunc i32 %shl.i.6.4.3 to i8 *)
split tmp_v_shl_i_6_4_3 v_conv7_i_6_4_3 v_shl_i_6_4_3 8;
vpc v_conv7_i_6_4_3@uint8 v_conv7_i_6_4_3@uint32;
(*   %conv.i.7.4.3 = zext i8 %conv5.i.6.4.3 to i32 *)
cast v_conv_i_7_4_3@uint32 v_conv5_i_6_4_3@uint8;
(*   %and.i.7.4.3 = and i32 %conv.i.7.4.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_4_3 v_conv_i_7_4_3 (0x1)@uint32;
(*   %conv1.i.7.4.3 = zext i8 %conv7.i.6.4.3 to i32 *)
cast v_conv1_i_7_4_3@uint32 v_conv7_i_6_4_3@uint8;
(*   %mul.i.7.4.3 = mul nsw i32 %and.i.7.4.3, %conv1.i.7.4.3 *)
mul v_mul_i_7_4_3 v_and_i_7_4_3 v_conv1_i_7_4_3;
(*   %conv2.i.7.4.3 = zext i8 %conv3.i.6.4.3 to i32 *)
cast v_conv2_i_7_4_3@uint32 v_conv3_i_6_4_3@uint8;
(*   %xor.i.7.4.3 = xor i32 %conv2.i.7.4.3, %mul.i.7.4.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_4_3 v_conv2_i_7_4_3 v_mul_i_7_4_3;
(*   %conv3.i.7.4.3 = trunc i32 %xor.i.7.4.3 to i8 *)
split tmp_v_xor_i_7_4_3 v_conv3_i_7_4_3 v_xor_i_7_4_3 8;
vpc v_conv3_i_7_4_3@uint8 v_conv3_i_7_4_3@uint32;
(*   %arrayidx7.4.3 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 19 *)
(*   store i8 %conv3.i.7.4.3, i8* %arrayidx7.4.3, align 1 *)
mov alpha_19 v_conv3_i_7_4_3;
(*   %arrayidx.4 = getelementptr inbounds i8, i8* %a, i64 4 *)
(*   %24 = load i8, i8* %arrayidx.4, align 1 *)
mov v24 a_4;
(*   %25 = load i8, i8* %b, align 1 *)
mov v25 b_0;
(*   %conv.i.4392 = zext i8 %25 to i32 *)
cast v_conv_i_4392@uint32 v25@uint8;
(*   %and.i.4393 = and i32 %conv.i.4392, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4393 v_conv_i_4392 (0x1)@uint32;
(*   %conv1.i.4394 = zext i8 %24 to i32 *)
cast v_conv1_i_4394@uint32 v24@uint8;
(*   %mul.i.4395 = mul nsw i32 %and.i.4393, %conv1.i.4394 *)
mul v_mul_i_4395 v_and_i_4393 v_conv1_i_4394;
(*   %conv3.i.4396 = trunc i32 %mul.i.4395 to i8 *)
split tmp_v_mul_i_4395 v_conv3_i_4396 v_mul_i_4395 8;
vpc v_conv3_i_4396@uint8 v_conv3_i_4396@uint32;
(*   %conv4.i.4397 = zext i8 %25 to i32 *)
cast v_conv4_i_4397@uint32 v25@uint8;
(*   %shr.i.4398 = ashr i32 %conv4.i.4397, 1 *)
(* You may need to modify here *)
split v_shr_i_4398 tmp_to_be_used v_conv4_i_4397 1;
(*   %conv5.i.4399 = trunc i32 %shr.i.4398 to i8 *)
split tmp_v_shr_i_4398 v_conv5_i_4399 v_shr_i_4398 8;
vpc v_conv5_i_4399@uint8 v_conv5_i_4399@uint32;
(*   %conv6.i.4400 = zext i8 %24 to i32 *)
cast v_conv6_i_4400@uint32 v24@uint8;
(*   %shl.i.4401 = shl i32 %conv6.i.4400, 1 *)
shls discard_140 v_shl_i_4401 v_conv6_i_4400 1;
(*   %conv7.i.4402 = trunc i32 %shl.i.4401 to i8 *)
split tmp_v_shl_i_4401 v_conv7_i_4402 v_shl_i_4401 8;
vpc v_conv7_i_4402@uint8 v_conv7_i_4402@uint32;
(*   %conv.i.1.4403 = zext i8 %conv5.i.4399 to i32 *)
cast v_conv_i_1_4403@uint32 v_conv5_i_4399@uint8;
(*   %and.i.1.4404 = and i32 %conv.i.1.4403, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_4404 v_conv_i_1_4403 (0x1)@uint32;
(*   %conv1.i.1.4405 = zext i8 %conv7.i.4402 to i32 *)
cast v_conv1_i_1_4405@uint32 v_conv7_i_4402@uint8;
(*   %mul.i.1.4406 = mul nsw i32 %and.i.1.4404, %conv1.i.1.4405 *)
mul v_mul_i_1_4406 v_and_i_1_4404 v_conv1_i_1_4405;
(*   %conv2.i.1.4407 = zext i8 %conv3.i.4396 to i32 *)
cast v_conv2_i_1_4407@uint32 v_conv3_i_4396@uint8;
(*   %xor.i.1.4408 = xor i32 %conv2.i.1.4407, %mul.i.1.4406 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_4408 v_conv2_i_1_4407 v_mul_i_1_4406;
(*   %conv3.i.1.4409 = trunc i32 %xor.i.1.4408 to i8 *)
split tmp_v_xor_i_1_4408 v_conv3_i_1_4409 v_xor_i_1_4408 8;
vpc v_conv3_i_1_4409@uint8 v_conv3_i_1_4409@uint32;
(*   %conv4.i.1.4410 = zext i8 %conv5.i.4399 to i32 *)
cast v_conv4_i_1_4410@uint32 v_conv5_i_4399@uint8;
(*   %shr.i.1.4411 = ashr i32 %conv4.i.1.4410, 1 *)
(* You may need to modify here *)
split v_shr_i_1_4411 tmp_to_be_used v_conv4_i_1_4410 1;
(*   %conv5.i.1.4412 = trunc i32 %shr.i.1.4411 to i8 *)
split tmp_v_shr_i_1_4411 v_conv5_i_1_4412 v_shr_i_1_4411 8;
vpc v_conv5_i_1_4412@uint8 v_conv5_i_1_4412@uint32;
(*   %conv6.i.1.4413 = zext i8 %conv7.i.4402 to i32 *)
cast v_conv6_i_1_4413@uint32 v_conv7_i_4402@uint8;
(*   %shl.i.1.4414 = shl i32 %conv6.i.1.4413, 1 *)
shls discard_141 v_shl_i_1_4414 v_conv6_i_1_4413 1;
(*   %conv7.i.1.4415 = trunc i32 %shl.i.1.4414 to i8 *)
split tmp_v_shl_i_1_4414 v_conv7_i_1_4415 v_shl_i_1_4414 8;
vpc v_conv7_i_1_4415@uint8 v_conv7_i_1_4415@uint32;
(*   %conv.i.2.4416 = zext i8 %conv5.i.1.4412 to i32 *)
cast v_conv_i_2_4416@uint32 v_conv5_i_1_4412@uint8;
(*   %and.i.2.4417 = and i32 %conv.i.2.4416, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_4417 v_conv_i_2_4416 (0x1)@uint32;
(*   %conv1.i.2.4418 = zext i8 %conv7.i.1.4415 to i32 *)
cast v_conv1_i_2_4418@uint32 v_conv7_i_1_4415@uint8;
(*   %mul.i.2.4419 = mul nsw i32 %and.i.2.4417, %conv1.i.2.4418 *)
mul v_mul_i_2_4419 v_and_i_2_4417 v_conv1_i_2_4418;
(*   %conv2.i.2.4420 = zext i8 %conv3.i.1.4409 to i32 *)
cast v_conv2_i_2_4420@uint32 v_conv3_i_1_4409@uint8;
(*   %xor.i.2.4421 = xor i32 %conv2.i.2.4420, %mul.i.2.4419 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_4421 v_conv2_i_2_4420 v_mul_i_2_4419;
(*   %conv3.i.2.4422 = trunc i32 %xor.i.2.4421 to i8 *)
split tmp_v_xor_i_2_4421 v_conv3_i_2_4422 v_xor_i_2_4421 8;
vpc v_conv3_i_2_4422@uint8 v_conv3_i_2_4422@uint32;
(*   %conv4.i.2.4423 = zext i8 %conv5.i.1.4412 to i32 *)
cast v_conv4_i_2_4423@uint32 v_conv5_i_1_4412@uint8;
(*   %shr.i.2.4424 = ashr i32 %conv4.i.2.4423, 1 *)
(* You may need to modify here *)
split v_shr_i_2_4424 tmp_to_be_used v_conv4_i_2_4423 1;
(*   %conv5.i.2.4425 = trunc i32 %shr.i.2.4424 to i8 *)
split tmp_v_shr_i_2_4424 v_conv5_i_2_4425 v_shr_i_2_4424 8;
vpc v_conv5_i_2_4425@uint8 v_conv5_i_2_4425@uint32;
(*   %conv6.i.2.4426 = zext i8 %conv7.i.1.4415 to i32 *)
cast v_conv6_i_2_4426@uint32 v_conv7_i_1_4415@uint8;
(*   %shl.i.2.4427 = shl i32 %conv6.i.2.4426, 1 *)
shls discard_142 v_shl_i_2_4427 v_conv6_i_2_4426 1;
(*   %conv7.i.2.4428 = trunc i32 %shl.i.2.4427 to i8 *)
split tmp_v_shl_i_2_4427 v_conv7_i_2_4428 v_shl_i_2_4427 8;
vpc v_conv7_i_2_4428@uint8 v_conv7_i_2_4428@uint32;
(*   %conv.i.3.4429 = zext i8 %conv5.i.2.4425 to i32 *)
cast v_conv_i_3_4429@uint32 v_conv5_i_2_4425@uint8;
(*   %and.i.3.4430 = and i32 %conv.i.3.4429, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_4430 v_conv_i_3_4429 (0x1)@uint32;
(*   %conv1.i.3.4431 = zext i8 %conv7.i.2.4428 to i32 *)
cast v_conv1_i_3_4431@uint32 v_conv7_i_2_4428@uint8;
(*   %mul.i.3.4432 = mul nsw i32 %and.i.3.4430, %conv1.i.3.4431 *)
mul v_mul_i_3_4432 v_and_i_3_4430 v_conv1_i_3_4431;
(*   %conv2.i.3.4433 = zext i8 %conv3.i.2.4422 to i32 *)
cast v_conv2_i_3_4433@uint32 v_conv3_i_2_4422@uint8;
(*   %xor.i.3.4434 = xor i32 %conv2.i.3.4433, %mul.i.3.4432 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_4434 v_conv2_i_3_4433 v_mul_i_3_4432;
(*   %conv3.i.3.4435 = trunc i32 %xor.i.3.4434 to i8 *)
split tmp_v_xor_i_3_4434 v_conv3_i_3_4435 v_xor_i_3_4434 8;
vpc v_conv3_i_3_4435@uint8 v_conv3_i_3_4435@uint32;
(*   %conv4.i.3.4436 = zext i8 %conv5.i.2.4425 to i32 *)
cast v_conv4_i_3_4436@uint32 v_conv5_i_2_4425@uint8;
(*   %shr.i.3.4437 = ashr i32 %conv4.i.3.4436, 1 *)
(* You may need to modify here *)
split v_shr_i_3_4437 tmp_to_be_used v_conv4_i_3_4436 1;
(*   %conv5.i.3.4438 = trunc i32 %shr.i.3.4437 to i8 *)
split tmp_v_shr_i_3_4437 v_conv5_i_3_4438 v_shr_i_3_4437 8;
vpc v_conv5_i_3_4438@uint8 v_conv5_i_3_4438@uint32;
(*   %conv6.i.3.4439 = zext i8 %conv7.i.2.4428 to i32 *)
cast v_conv6_i_3_4439@uint32 v_conv7_i_2_4428@uint8;
(*   %shl.i.3.4440 = shl i32 %conv6.i.3.4439, 1 *)
shls discard_143 v_shl_i_3_4440 v_conv6_i_3_4439 1;
(*   %conv7.i.3.4441 = trunc i32 %shl.i.3.4440 to i8 *)
split tmp_v_shl_i_3_4440 v_conv7_i_3_4441 v_shl_i_3_4440 8;
vpc v_conv7_i_3_4441@uint8 v_conv7_i_3_4441@uint32;
(*   %conv.i.4.4442 = zext i8 %conv5.i.3.4438 to i32 *)
cast v_conv_i_4_4442@uint32 v_conv5_i_3_4438@uint8;
(*   %and.i.4.4443 = and i32 %conv.i.4.4442, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_4443 v_conv_i_4_4442 (0x1)@uint32;
(*   %conv1.i.4.4444 = zext i8 %conv7.i.3.4441 to i32 *)
cast v_conv1_i_4_4444@uint32 v_conv7_i_3_4441@uint8;
(*   %mul.i.4.4445 = mul nsw i32 %and.i.4.4443, %conv1.i.4.4444 *)
mul v_mul_i_4_4445 v_and_i_4_4443 v_conv1_i_4_4444;
(*   %conv2.i.4.4446 = zext i8 %conv3.i.3.4435 to i32 *)
cast v_conv2_i_4_4446@uint32 v_conv3_i_3_4435@uint8;
(*   %xor.i.4.4447 = xor i32 %conv2.i.4.4446, %mul.i.4.4445 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_4447 v_conv2_i_4_4446 v_mul_i_4_4445;
(*   %conv3.i.4.4448 = trunc i32 %xor.i.4.4447 to i8 *)
split tmp_v_xor_i_4_4447 v_conv3_i_4_4448 v_xor_i_4_4447 8;
vpc v_conv3_i_4_4448@uint8 v_conv3_i_4_4448@uint32;
(*   %conv4.i.4.4449 = zext i8 %conv5.i.3.4438 to i32 *)
cast v_conv4_i_4_4449@uint32 v_conv5_i_3_4438@uint8;
(*   %shr.i.4.4450 = ashr i32 %conv4.i.4.4449, 1 *)
(* You may need to modify here *)
split v_shr_i_4_4450 tmp_to_be_used v_conv4_i_4_4449 1;
(*   %conv5.i.4.4451 = trunc i32 %shr.i.4.4450 to i8 *)
split tmp_v_shr_i_4_4450 v_conv5_i_4_4451 v_shr_i_4_4450 8;
vpc v_conv5_i_4_4451@uint8 v_conv5_i_4_4451@uint32;
(*   %conv6.i.4.4452 = zext i8 %conv7.i.3.4441 to i32 *)
cast v_conv6_i_4_4452@uint32 v_conv7_i_3_4441@uint8;
(*   %shl.i.4.4453 = shl i32 %conv6.i.4.4452, 1 *)
shls discard_144 v_shl_i_4_4453 v_conv6_i_4_4452 1;
(*   %conv7.i.4.4454 = trunc i32 %shl.i.4.4453 to i8 *)
split tmp_v_shl_i_4_4453 v_conv7_i_4_4454 v_shl_i_4_4453 8;
vpc v_conv7_i_4_4454@uint8 v_conv7_i_4_4454@uint32;
(*   %conv.i.5.4455 = zext i8 %conv5.i.4.4451 to i32 *)
cast v_conv_i_5_4455@uint32 v_conv5_i_4_4451@uint8;
(*   %and.i.5.4456 = and i32 %conv.i.5.4455, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_4456 v_conv_i_5_4455 (0x1)@uint32;
(*   %conv1.i.5.4457 = zext i8 %conv7.i.4.4454 to i32 *)
cast v_conv1_i_5_4457@uint32 v_conv7_i_4_4454@uint8;
(*   %mul.i.5.4458 = mul nsw i32 %and.i.5.4456, %conv1.i.5.4457 *)
mul v_mul_i_5_4458 v_and_i_5_4456 v_conv1_i_5_4457;
(*   %conv2.i.5.4459 = zext i8 %conv3.i.4.4448 to i32 *)
cast v_conv2_i_5_4459@uint32 v_conv3_i_4_4448@uint8;
(*   %xor.i.5.4460 = xor i32 %conv2.i.5.4459, %mul.i.5.4458 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_4460 v_conv2_i_5_4459 v_mul_i_5_4458;
(*   %conv3.i.5.4461 = trunc i32 %xor.i.5.4460 to i8 *)
split tmp_v_xor_i_5_4460 v_conv3_i_5_4461 v_xor_i_5_4460 8;
vpc v_conv3_i_5_4461@uint8 v_conv3_i_5_4461@uint32;
(*   %conv4.i.5.4462 = zext i8 %conv5.i.4.4451 to i32 *)
cast v_conv4_i_5_4462@uint32 v_conv5_i_4_4451@uint8;
(*   %shr.i.5.4463 = ashr i32 %conv4.i.5.4462, 1 *)
(* You may need to modify here *)
split v_shr_i_5_4463 tmp_to_be_used v_conv4_i_5_4462 1;
(*   %conv5.i.5.4464 = trunc i32 %shr.i.5.4463 to i8 *)
split tmp_v_shr_i_5_4463 v_conv5_i_5_4464 v_shr_i_5_4463 8;
vpc v_conv5_i_5_4464@uint8 v_conv5_i_5_4464@uint32;
(*   %conv6.i.5.4465 = zext i8 %conv7.i.4.4454 to i32 *)
cast v_conv6_i_5_4465@uint32 v_conv7_i_4_4454@uint8;
(*   %shl.i.5.4466 = shl i32 %conv6.i.5.4465, 1 *)
shls discard_145 v_shl_i_5_4466 v_conv6_i_5_4465 1;
(*   %conv7.i.5.4467 = trunc i32 %shl.i.5.4466 to i8 *)
split tmp_v_shl_i_5_4466 v_conv7_i_5_4467 v_shl_i_5_4466 8;
vpc v_conv7_i_5_4467@uint8 v_conv7_i_5_4467@uint32;
(*   %conv.i.6.4468 = zext i8 %conv5.i.5.4464 to i32 *)
cast v_conv_i_6_4468@uint32 v_conv5_i_5_4464@uint8;
(*   %and.i.6.4469 = and i32 %conv.i.6.4468, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_4469 v_conv_i_6_4468 (0x1)@uint32;
(*   %conv1.i.6.4470 = zext i8 %conv7.i.5.4467 to i32 *)
cast v_conv1_i_6_4470@uint32 v_conv7_i_5_4467@uint8;
(*   %mul.i.6.4471 = mul nsw i32 %and.i.6.4469, %conv1.i.6.4470 *)
mul v_mul_i_6_4471 v_and_i_6_4469 v_conv1_i_6_4470;
(*   %conv2.i.6.4472 = zext i8 %conv3.i.5.4461 to i32 *)
cast v_conv2_i_6_4472@uint32 v_conv3_i_5_4461@uint8;
(*   %xor.i.6.4473 = xor i32 %conv2.i.6.4472, %mul.i.6.4471 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_4473 v_conv2_i_6_4472 v_mul_i_6_4471;
(*   %conv3.i.6.4474 = trunc i32 %xor.i.6.4473 to i8 *)
split tmp_v_xor_i_6_4473 v_conv3_i_6_4474 v_xor_i_6_4473 8;
vpc v_conv3_i_6_4474@uint8 v_conv3_i_6_4474@uint32;
(*   %conv4.i.6.4475 = zext i8 %conv5.i.5.4464 to i32 *)
cast v_conv4_i_6_4475@uint32 v_conv5_i_5_4464@uint8;
(*   %shr.i.6.4476 = ashr i32 %conv4.i.6.4475, 1 *)
(* You may need to modify here *)
split v_shr_i_6_4476 tmp_to_be_used v_conv4_i_6_4475 1;
(*   %conv5.i.6.4477 = trunc i32 %shr.i.6.4476 to i8 *)
split tmp_v_shr_i_6_4476 v_conv5_i_6_4477 v_shr_i_6_4476 8;
vpc v_conv5_i_6_4477@uint8 v_conv5_i_6_4477@uint32;
(*   %conv6.i.6.4478 = zext i8 %conv7.i.5.4467 to i32 *)
cast v_conv6_i_6_4478@uint32 v_conv7_i_5_4467@uint8;
(*   %shl.i.6.4479 = shl i32 %conv6.i.6.4478, 1 *)
shls discard_146 v_shl_i_6_4479 v_conv6_i_6_4478 1;
(*   %conv7.i.6.4480 = trunc i32 %shl.i.6.4479 to i8 *)
split tmp_v_shl_i_6_4479 v_conv7_i_6_4480 v_shl_i_6_4479 8;
vpc v_conv7_i_6_4480@uint8 v_conv7_i_6_4480@uint32;
(*   %conv.i.7.4481 = zext i8 %conv5.i.6.4477 to i32 *)
cast v_conv_i_7_4481@uint32 v_conv5_i_6_4477@uint8;
(*   %and.i.7.4482 = and i32 %conv.i.7.4481, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_4482 v_conv_i_7_4481 (0x1)@uint32;
(*   %conv1.i.7.4483 = zext i8 %conv7.i.6.4480 to i32 *)
cast v_conv1_i_7_4483@uint32 v_conv7_i_6_4480@uint8;
(*   %mul.i.7.4484 = mul nsw i32 %and.i.7.4482, %conv1.i.7.4483 *)
mul v_mul_i_7_4484 v_and_i_7_4482 v_conv1_i_7_4483;
(*   %conv2.i.7.4485 = zext i8 %conv3.i.6.4474 to i32 *)
cast v_conv2_i_7_4485@uint32 v_conv3_i_6_4474@uint8;
(*   %xor.i.7.4486 = xor i32 %conv2.i.7.4485, %mul.i.7.4484 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_4486 v_conv2_i_7_4485 v_mul_i_7_4484;
(*   %conv3.i.7.4487 = trunc i32 %xor.i.7.4486 to i8 *)
split tmp_v_xor_i_7_4486 v_conv3_i_7_4487 v_xor_i_7_4486 8;
vpc v_conv3_i_7_4487@uint8 v_conv3_i_7_4487@uint32;
(*   %arrayidx7.4491 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 20 *)
(*   store i8 %conv3.i.7.4487, i8* %arrayidx7.4491, align 1 *)
mov alpha_20 v_conv3_i_7_4487;
(*   %arrayidx5.1.4 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %26 = load i8, i8* %arrayidx5.1.4, align 1 *)
mov v26 b_1;
(*   %conv.i.142.4 = zext i8 %26 to i32 *)
cast v_conv_i_142_4@uint32 v26@uint8;
(*   %and.i.143.4 = and i32 %conv.i.142.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_143_4 v_conv_i_142_4 (0x1)@uint32;
(*   %conv1.i.144.4 = zext i8 %24 to i32 *)
cast v_conv1_i_144_4@uint32 v24@uint8;
(*   %mul.i.145.4 = mul nsw i32 %and.i.143.4, %conv1.i.144.4 *)
mul v_mul_i_145_4 v_and_i_143_4 v_conv1_i_144_4;
(*   %conv3.i.146.4 = trunc i32 %mul.i.145.4 to i8 *)
split tmp_v_mul_i_145_4 v_conv3_i_146_4 v_mul_i_145_4 8;
vpc v_conv3_i_146_4@uint8 v_conv3_i_146_4@uint32;
(*   %conv4.i.147.4 = zext i8 %26 to i32 *)
cast v_conv4_i_147_4@uint32 v26@uint8;
(*   %shr.i.148.4 = ashr i32 %conv4.i.147.4, 1 *)
(* You may need to modify here *)
split v_shr_i_148_4 tmp_to_be_used v_conv4_i_147_4 1;
(*   %conv5.i.149.4 = trunc i32 %shr.i.148.4 to i8 *)
split tmp_v_shr_i_148_4 v_conv5_i_149_4 v_shr_i_148_4 8;
vpc v_conv5_i_149_4@uint8 v_conv5_i_149_4@uint32;
(*   %conv6.i.150.4 = zext i8 %24 to i32 *)
cast v_conv6_i_150_4@uint32 v24@uint8;
(*   %shl.i.151.4 = shl i32 %conv6.i.150.4, 1 *)
shls discard_147 v_shl_i_151_4 v_conv6_i_150_4 1;
(*   %conv7.i.152.4 = trunc i32 %shl.i.151.4 to i8 *)
split tmp_v_shl_i_151_4 v_conv7_i_152_4 v_shl_i_151_4 8;
vpc v_conv7_i_152_4@uint8 v_conv7_i_152_4@uint32;
(*   %conv.i.1.1.4 = zext i8 %conv5.i.149.4 to i32 *)
cast v_conv_i_1_1_4@uint32 v_conv5_i_149_4@uint8;
(*   %and.i.1.1.4 = and i32 %conv.i.1.1.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_1_4 v_conv_i_1_1_4 (0x1)@uint32;
(*   %conv1.i.1.1.4 = zext i8 %conv7.i.152.4 to i32 *)
cast v_conv1_i_1_1_4@uint32 v_conv7_i_152_4@uint8;
(*   %mul.i.1.1.4 = mul nsw i32 %and.i.1.1.4, %conv1.i.1.1.4 *)
mul v_mul_i_1_1_4 v_and_i_1_1_4 v_conv1_i_1_1_4;
(*   %conv2.i.1.1.4 = zext i8 %conv3.i.146.4 to i32 *)
cast v_conv2_i_1_1_4@uint32 v_conv3_i_146_4@uint8;
(*   %xor.i.1.1.4 = xor i32 %conv2.i.1.1.4, %mul.i.1.1.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_1_4 v_conv2_i_1_1_4 v_mul_i_1_1_4;
(*   %conv3.i.1.1.4 = trunc i32 %xor.i.1.1.4 to i8 *)
split tmp_v_xor_i_1_1_4 v_conv3_i_1_1_4 v_xor_i_1_1_4 8;
vpc v_conv3_i_1_1_4@uint8 v_conv3_i_1_1_4@uint32;
(*   %conv4.i.1.1.4 = zext i8 %conv5.i.149.4 to i32 *)
cast v_conv4_i_1_1_4@uint32 v_conv5_i_149_4@uint8;
(*   %shr.i.1.1.4 = ashr i32 %conv4.i.1.1.4, 1 *)
(* You may need to modify here *)
split v_shr_i_1_1_4 tmp_to_be_used v_conv4_i_1_1_4 1;
(*   %conv5.i.1.1.4 = trunc i32 %shr.i.1.1.4 to i8 *)
split tmp_v_shr_i_1_1_4 v_conv5_i_1_1_4 v_shr_i_1_1_4 8;
vpc v_conv5_i_1_1_4@uint8 v_conv5_i_1_1_4@uint32;
(*   %conv6.i.1.1.4 = zext i8 %conv7.i.152.4 to i32 *)
cast v_conv6_i_1_1_4@uint32 v_conv7_i_152_4@uint8;
(*   %shl.i.1.1.4 = shl i32 %conv6.i.1.1.4, 1 *)
shls discard_148 v_shl_i_1_1_4 v_conv6_i_1_1_4 1;
(*   %conv7.i.1.1.4 = trunc i32 %shl.i.1.1.4 to i8 *)
split tmp_v_shl_i_1_1_4 v_conv7_i_1_1_4 v_shl_i_1_1_4 8;
vpc v_conv7_i_1_1_4@uint8 v_conv7_i_1_1_4@uint32;
(*   %conv.i.2.1.4 = zext i8 %conv5.i.1.1.4 to i32 *)
cast v_conv_i_2_1_4@uint32 v_conv5_i_1_1_4@uint8;
(*   %and.i.2.1.4 = and i32 %conv.i.2.1.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_1_4 v_conv_i_2_1_4 (0x1)@uint32;
(*   %conv1.i.2.1.4 = zext i8 %conv7.i.1.1.4 to i32 *)
cast v_conv1_i_2_1_4@uint32 v_conv7_i_1_1_4@uint8;
(*   %mul.i.2.1.4 = mul nsw i32 %and.i.2.1.4, %conv1.i.2.1.4 *)
mul v_mul_i_2_1_4 v_and_i_2_1_4 v_conv1_i_2_1_4;
(*   %conv2.i.2.1.4 = zext i8 %conv3.i.1.1.4 to i32 *)
cast v_conv2_i_2_1_4@uint32 v_conv3_i_1_1_4@uint8;
(*   %xor.i.2.1.4 = xor i32 %conv2.i.2.1.4, %mul.i.2.1.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_1_4 v_conv2_i_2_1_4 v_mul_i_2_1_4;
(*   %conv3.i.2.1.4 = trunc i32 %xor.i.2.1.4 to i8 *)
split tmp_v_xor_i_2_1_4 v_conv3_i_2_1_4 v_xor_i_2_1_4 8;
vpc v_conv3_i_2_1_4@uint8 v_conv3_i_2_1_4@uint32;
(*   %conv4.i.2.1.4 = zext i8 %conv5.i.1.1.4 to i32 *)
cast v_conv4_i_2_1_4@uint32 v_conv5_i_1_1_4@uint8;
(*   %shr.i.2.1.4 = ashr i32 %conv4.i.2.1.4, 1 *)
(* You may need to modify here *)
split v_shr_i_2_1_4 tmp_to_be_used v_conv4_i_2_1_4 1;
(*   %conv5.i.2.1.4 = trunc i32 %shr.i.2.1.4 to i8 *)
split tmp_v_shr_i_2_1_4 v_conv5_i_2_1_4 v_shr_i_2_1_4 8;
vpc v_conv5_i_2_1_4@uint8 v_conv5_i_2_1_4@uint32;
(*   %conv6.i.2.1.4 = zext i8 %conv7.i.1.1.4 to i32 *)
cast v_conv6_i_2_1_4@uint32 v_conv7_i_1_1_4@uint8;
(*   %shl.i.2.1.4 = shl i32 %conv6.i.2.1.4, 1 *)
shls discard_149 v_shl_i_2_1_4 v_conv6_i_2_1_4 1;
(*   %conv7.i.2.1.4 = trunc i32 %shl.i.2.1.4 to i8 *)
split tmp_v_shl_i_2_1_4 v_conv7_i_2_1_4 v_shl_i_2_1_4 8;
vpc v_conv7_i_2_1_4@uint8 v_conv7_i_2_1_4@uint32;
(*   %conv.i.3.1.4 = zext i8 %conv5.i.2.1.4 to i32 *)
cast v_conv_i_3_1_4@uint32 v_conv5_i_2_1_4@uint8;
(*   %and.i.3.1.4 = and i32 %conv.i.3.1.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_1_4 v_conv_i_3_1_4 (0x1)@uint32;
(*   %conv1.i.3.1.4 = zext i8 %conv7.i.2.1.4 to i32 *)
cast v_conv1_i_3_1_4@uint32 v_conv7_i_2_1_4@uint8;
(*   %mul.i.3.1.4 = mul nsw i32 %and.i.3.1.4, %conv1.i.3.1.4 *)
mul v_mul_i_3_1_4 v_and_i_3_1_4 v_conv1_i_3_1_4;
(*   %conv2.i.3.1.4 = zext i8 %conv3.i.2.1.4 to i32 *)
cast v_conv2_i_3_1_4@uint32 v_conv3_i_2_1_4@uint8;
(*   %xor.i.3.1.4 = xor i32 %conv2.i.3.1.4, %mul.i.3.1.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_1_4 v_conv2_i_3_1_4 v_mul_i_3_1_4;
(*   %conv3.i.3.1.4 = trunc i32 %xor.i.3.1.4 to i8 *)
split tmp_v_xor_i_3_1_4 v_conv3_i_3_1_4 v_xor_i_3_1_4 8;
vpc v_conv3_i_3_1_4@uint8 v_conv3_i_3_1_4@uint32;
(*   %conv4.i.3.1.4 = zext i8 %conv5.i.2.1.4 to i32 *)
cast v_conv4_i_3_1_4@uint32 v_conv5_i_2_1_4@uint8;
(*   %shr.i.3.1.4 = ashr i32 %conv4.i.3.1.4, 1 *)
(* You may need to modify here *)
split v_shr_i_3_1_4 tmp_to_be_used v_conv4_i_3_1_4 1;
(*   %conv5.i.3.1.4 = trunc i32 %shr.i.3.1.4 to i8 *)
split tmp_v_shr_i_3_1_4 v_conv5_i_3_1_4 v_shr_i_3_1_4 8;
vpc v_conv5_i_3_1_4@uint8 v_conv5_i_3_1_4@uint32;
(*   %conv6.i.3.1.4 = zext i8 %conv7.i.2.1.4 to i32 *)
cast v_conv6_i_3_1_4@uint32 v_conv7_i_2_1_4@uint8;
(*   %shl.i.3.1.4 = shl i32 %conv6.i.3.1.4, 1 *)
shls discard_150 v_shl_i_3_1_4 v_conv6_i_3_1_4 1;
(*   %conv7.i.3.1.4 = trunc i32 %shl.i.3.1.4 to i8 *)
split tmp_v_shl_i_3_1_4 v_conv7_i_3_1_4 v_shl_i_3_1_4 8;
vpc v_conv7_i_3_1_4@uint8 v_conv7_i_3_1_4@uint32;
(*   %conv.i.4.1.4 = zext i8 %conv5.i.3.1.4 to i32 *)
cast v_conv_i_4_1_4@uint32 v_conv5_i_3_1_4@uint8;
(*   %and.i.4.1.4 = and i32 %conv.i.4.1.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_1_4 v_conv_i_4_1_4 (0x1)@uint32;
(*   %conv1.i.4.1.4 = zext i8 %conv7.i.3.1.4 to i32 *)
cast v_conv1_i_4_1_4@uint32 v_conv7_i_3_1_4@uint8;
(*   %mul.i.4.1.4 = mul nsw i32 %and.i.4.1.4, %conv1.i.4.1.4 *)
mul v_mul_i_4_1_4 v_and_i_4_1_4 v_conv1_i_4_1_4;
(*   %conv2.i.4.1.4 = zext i8 %conv3.i.3.1.4 to i32 *)
cast v_conv2_i_4_1_4@uint32 v_conv3_i_3_1_4@uint8;
(*   %xor.i.4.1.4 = xor i32 %conv2.i.4.1.4, %mul.i.4.1.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_1_4 v_conv2_i_4_1_4 v_mul_i_4_1_4;
(*   %conv3.i.4.1.4 = trunc i32 %xor.i.4.1.4 to i8 *)
split tmp_v_xor_i_4_1_4 v_conv3_i_4_1_4 v_xor_i_4_1_4 8;
vpc v_conv3_i_4_1_4@uint8 v_conv3_i_4_1_4@uint32;
(*   %conv4.i.4.1.4 = zext i8 %conv5.i.3.1.4 to i32 *)
cast v_conv4_i_4_1_4@uint32 v_conv5_i_3_1_4@uint8;
(*   %shr.i.4.1.4 = ashr i32 %conv4.i.4.1.4, 1 *)
(* You may need to modify here *)
split v_shr_i_4_1_4 tmp_to_be_used v_conv4_i_4_1_4 1;
(*   %conv5.i.4.1.4 = trunc i32 %shr.i.4.1.4 to i8 *)
split tmp_v_shr_i_4_1_4 v_conv5_i_4_1_4 v_shr_i_4_1_4 8;
vpc v_conv5_i_4_1_4@uint8 v_conv5_i_4_1_4@uint32;
(*   %conv6.i.4.1.4 = zext i8 %conv7.i.3.1.4 to i32 *)
cast v_conv6_i_4_1_4@uint32 v_conv7_i_3_1_4@uint8;
(*   %shl.i.4.1.4 = shl i32 %conv6.i.4.1.4, 1 *)
shls discard_151 v_shl_i_4_1_4 v_conv6_i_4_1_4 1;
(*   %conv7.i.4.1.4 = trunc i32 %shl.i.4.1.4 to i8 *)
split tmp_v_shl_i_4_1_4 v_conv7_i_4_1_4 v_shl_i_4_1_4 8;
vpc v_conv7_i_4_1_4@uint8 v_conv7_i_4_1_4@uint32;
(*   %conv.i.5.1.4 = zext i8 %conv5.i.4.1.4 to i32 *)
cast v_conv_i_5_1_4@uint32 v_conv5_i_4_1_4@uint8;
(*   %and.i.5.1.4 = and i32 %conv.i.5.1.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_1_4 v_conv_i_5_1_4 (0x1)@uint32;
(*   %conv1.i.5.1.4 = zext i8 %conv7.i.4.1.4 to i32 *)
cast v_conv1_i_5_1_4@uint32 v_conv7_i_4_1_4@uint8;
(*   %mul.i.5.1.4 = mul nsw i32 %and.i.5.1.4, %conv1.i.5.1.4 *)
mul v_mul_i_5_1_4 v_and_i_5_1_4 v_conv1_i_5_1_4;
(*   %conv2.i.5.1.4 = zext i8 %conv3.i.4.1.4 to i32 *)
cast v_conv2_i_5_1_4@uint32 v_conv3_i_4_1_4@uint8;
(*   %xor.i.5.1.4 = xor i32 %conv2.i.5.1.4, %mul.i.5.1.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_1_4 v_conv2_i_5_1_4 v_mul_i_5_1_4;
(*   %conv3.i.5.1.4 = trunc i32 %xor.i.5.1.4 to i8 *)
split tmp_v_xor_i_5_1_4 v_conv3_i_5_1_4 v_xor_i_5_1_4 8;
vpc v_conv3_i_5_1_4@uint8 v_conv3_i_5_1_4@uint32;
(*   %conv4.i.5.1.4 = zext i8 %conv5.i.4.1.4 to i32 *)
cast v_conv4_i_5_1_4@uint32 v_conv5_i_4_1_4@uint8;
(*   %shr.i.5.1.4 = ashr i32 %conv4.i.5.1.4, 1 *)
(* You may need to modify here *)
split v_shr_i_5_1_4 tmp_to_be_used v_conv4_i_5_1_4 1;
(*   %conv5.i.5.1.4 = trunc i32 %shr.i.5.1.4 to i8 *)
split tmp_v_shr_i_5_1_4 v_conv5_i_5_1_4 v_shr_i_5_1_4 8;
vpc v_conv5_i_5_1_4@uint8 v_conv5_i_5_1_4@uint32;
(*   %conv6.i.5.1.4 = zext i8 %conv7.i.4.1.4 to i32 *)
cast v_conv6_i_5_1_4@uint32 v_conv7_i_4_1_4@uint8;
(*   %shl.i.5.1.4 = shl i32 %conv6.i.5.1.4, 1 *)
shls discard_152 v_shl_i_5_1_4 v_conv6_i_5_1_4 1;
(*   %conv7.i.5.1.4 = trunc i32 %shl.i.5.1.4 to i8 *)
split tmp_v_shl_i_5_1_4 v_conv7_i_5_1_4 v_shl_i_5_1_4 8;
vpc v_conv7_i_5_1_4@uint8 v_conv7_i_5_1_4@uint32;
(*   %conv.i.6.1.4 = zext i8 %conv5.i.5.1.4 to i32 *)
cast v_conv_i_6_1_4@uint32 v_conv5_i_5_1_4@uint8;
(*   %and.i.6.1.4 = and i32 %conv.i.6.1.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_1_4 v_conv_i_6_1_4 (0x1)@uint32;
(*   %conv1.i.6.1.4 = zext i8 %conv7.i.5.1.4 to i32 *)
cast v_conv1_i_6_1_4@uint32 v_conv7_i_5_1_4@uint8;
(*   %mul.i.6.1.4 = mul nsw i32 %and.i.6.1.4, %conv1.i.6.1.4 *)
mul v_mul_i_6_1_4 v_and_i_6_1_4 v_conv1_i_6_1_4;
(*   %conv2.i.6.1.4 = zext i8 %conv3.i.5.1.4 to i32 *)
cast v_conv2_i_6_1_4@uint32 v_conv3_i_5_1_4@uint8;
(*   %xor.i.6.1.4 = xor i32 %conv2.i.6.1.4, %mul.i.6.1.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_1_4 v_conv2_i_6_1_4 v_mul_i_6_1_4;
(*   %conv3.i.6.1.4 = trunc i32 %xor.i.6.1.4 to i8 *)
split tmp_v_xor_i_6_1_4 v_conv3_i_6_1_4 v_xor_i_6_1_4 8;
vpc v_conv3_i_6_1_4@uint8 v_conv3_i_6_1_4@uint32;
(*   %conv4.i.6.1.4 = zext i8 %conv5.i.5.1.4 to i32 *)
cast v_conv4_i_6_1_4@uint32 v_conv5_i_5_1_4@uint8;
(*   %shr.i.6.1.4 = ashr i32 %conv4.i.6.1.4, 1 *)
(* You may need to modify here *)
split v_shr_i_6_1_4 tmp_to_be_used v_conv4_i_6_1_4 1;
(*   %conv5.i.6.1.4 = trunc i32 %shr.i.6.1.4 to i8 *)
split tmp_v_shr_i_6_1_4 v_conv5_i_6_1_4 v_shr_i_6_1_4 8;
vpc v_conv5_i_6_1_4@uint8 v_conv5_i_6_1_4@uint32;
(*   %conv6.i.6.1.4 = zext i8 %conv7.i.5.1.4 to i32 *)
cast v_conv6_i_6_1_4@uint32 v_conv7_i_5_1_4@uint8;
(*   %shl.i.6.1.4 = shl i32 %conv6.i.6.1.4, 1 *)
shls discard_153 v_shl_i_6_1_4 v_conv6_i_6_1_4 1;
(*   %conv7.i.6.1.4 = trunc i32 %shl.i.6.1.4 to i8 *)
split tmp_v_shl_i_6_1_4 v_conv7_i_6_1_4 v_shl_i_6_1_4 8;
vpc v_conv7_i_6_1_4@uint8 v_conv7_i_6_1_4@uint32;
(*   %conv.i.7.1.4 = zext i8 %conv5.i.6.1.4 to i32 *)
cast v_conv_i_7_1_4@uint32 v_conv5_i_6_1_4@uint8;
(*   %and.i.7.1.4 = and i32 %conv.i.7.1.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_1_4 v_conv_i_7_1_4 (0x1)@uint32;
(*   %conv1.i.7.1.4 = zext i8 %conv7.i.6.1.4 to i32 *)
cast v_conv1_i_7_1_4@uint32 v_conv7_i_6_1_4@uint8;
(*   %mul.i.7.1.4 = mul nsw i32 %and.i.7.1.4, %conv1.i.7.1.4 *)
mul v_mul_i_7_1_4 v_and_i_7_1_4 v_conv1_i_7_1_4;
(*   %conv2.i.7.1.4 = zext i8 %conv3.i.6.1.4 to i32 *)
cast v_conv2_i_7_1_4@uint32 v_conv3_i_6_1_4@uint8;
(*   %xor.i.7.1.4 = xor i32 %conv2.i.7.1.4, %mul.i.7.1.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_1_4 v_conv2_i_7_1_4 v_mul_i_7_1_4;
(*   %conv3.i.7.1.4 = trunc i32 %xor.i.7.1.4 to i8 *)
split tmp_v_xor_i_7_1_4 v_conv3_i_7_1_4 v_xor_i_7_1_4 8;
vpc v_conv3_i_7_1_4@uint8 v_conv3_i_7_1_4@uint32;
(*   %arrayidx7.1.4 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 21 *)
(*   store i8 %conv3.i.7.1.4, i8* %arrayidx7.1.4, align 1 *)
mov alpha_21 v_conv3_i_7_1_4;
(*   %arrayidx5.2.4 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %27 = load i8, i8* %arrayidx5.2.4, align 1 *)
mov v27 b_2;
(*   %conv.i.253.4 = zext i8 %27 to i32 *)
cast v_conv_i_253_4@uint32 v27@uint8;
(*   %and.i.254.4 = and i32 %conv.i.253.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_254_4 v_conv_i_253_4 (0x1)@uint32;
(*   %conv1.i.255.4 = zext i8 %24 to i32 *)
cast v_conv1_i_255_4@uint32 v24@uint8;
(*   %mul.i.256.4 = mul nsw i32 %and.i.254.4, %conv1.i.255.4 *)
mul v_mul_i_256_4 v_and_i_254_4 v_conv1_i_255_4;
(*   %conv3.i.257.4 = trunc i32 %mul.i.256.4 to i8 *)
split tmp_v_mul_i_256_4 v_conv3_i_257_4 v_mul_i_256_4 8;
vpc v_conv3_i_257_4@uint8 v_conv3_i_257_4@uint32;
(*   %conv4.i.258.4 = zext i8 %27 to i32 *)
cast v_conv4_i_258_4@uint32 v27@uint8;
(*   %shr.i.259.4 = ashr i32 %conv4.i.258.4, 1 *)
(* You may need to modify here *)
split v_shr_i_259_4 tmp_to_be_used v_conv4_i_258_4 1;
(*   %conv5.i.260.4 = trunc i32 %shr.i.259.4 to i8 *)
split tmp_v_shr_i_259_4 v_conv5_i_260_4 v_shr_i_259_4 8;
vpc v_conv5_i_260_4@uint8 v_conv5_i_260_4@uint32;
(*   %conv6.i.261.4 = zext i8 %24 to i32 *)
cast v_conv6_i_261_4@uint32 v24@uint8;
(*   %shl.i.262.4 = shl i32 %conv6.i.261.4, 1 *)
shls discard_154 v_shl_i_262_4 v_conv6_i_261_4 1;
(*   %conv7.i.263.4 = trunc i32 %shl.i.262.4 to i8 *)
split tmp_v_shl_i_262_4 v_conv7_i_263_4 v_shl_i_262_4 8;
vpc v_conv7_i_263_4@uint8 v_conv7_i_263_4@uint32;
(*   %conv.i.1.2.4 = zext i8 %conv5.i.260.4 to i32 *)
cast v_conv_i_1_2_4@uint32 v_conv5_i_260_4@uint8;
(*   %and.i.1.2.4 = and i32 %conv.i.1.2.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_2_4 v_conv_i_1_2_4 (0x1)@uint32;
(*   %conv1.i.1.2.4 = zext i8 %conv7.i.263.4 to i32 *)
cast v_conv1_i_1_2_4@uint32 v_conv7_i_263_4@uint8;
(*   %mul.i.1.2.4 = mul nsw i32 %and.i.1.2.4, %conv1.i.1.2.4 *)
mul v_mul_i_1_2_4 v_and_i_1_2_4 v_conv1_i_1_2_4;
(*   %conv2.i.1.2.4 = zext i8 %conv3.i.257.4 to i32 *)
cast v_conv2_i_1_2_4@uint32 v_conv3_i_257_4@uint8;
(*   %xor.i.1.2.4 = xor i32 %conv2.i.1.2.4, %mul.i.1.2.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_2_4 v_conv2_i_1_2_4 v_mul_i_1_2_4;
(*   %conv3.i.1.2.4 = trunc i32 %xor.i.1.2.4 to i8 *)
split tmp_v_xor_i_1_2_4 v_conv3_i_1_2_4 v_xor_i_1_2_4 8;
vpc v_conv3_i_1_2_4@uint8 v_conv3_i_1_2_4@uint32;
(*   %conv4.i.1.2.4 = zext i8 %conv5.i.260.4 to i32 *)
cast v_conv4_i_1_2_4@uint32 v_conv5_i_260_4@uint8;
(*   %shr.i.1.2.4 = ashr i32 %conv4.i.1.2.4, 1 *)
(* You may need to modify here *)
split v_shr_i_1_2_4 tmp_to_be_used v_conv4_i_1_2_4 1;
(*   %conv5.i.1.2.4 = trunc i32 %shr.i.1.2.4 to i8 *)
split tmp_v_shr_i_1_2_4 v_conv5_i_1_2_4 v_shr_i_1_2_4 8;
vpc v_conv5_i_1_2_4@uint8 v_conv5_i_1_2_4@uint32;
(*   %conv6.i.1.2.4 = zext i8 %conv7.i.263.4 to i32 *)
cast v_conv6_i_1_2_4@uint32 v_conv7_i_263_4@uint8;
(*   %shl.i.1.2.4 = shl i32 %conv6.i.1.2.4, 1 *)
shls discard_155 v_shl_i_1_2_4 v_conv6_i_1_2_4 1;
(*   %conv7.i.1.2.4 = trunc i32 %shl.i.1.2.4 to i8 *)
split tmp_v_shl_i_1_2_4 v_conv7_i_1_2_4 v_shl_i_1_2_4 8;
vpc v_conv7_i_1_2_4@uint8 v_conv7_i_1_2_4@uint32;
(*   %conv.i.2.2.4 = zext i8 %conv5.i.1.2.4 to i32 *)
cast v_conv_i_2_2_4@uint32 v_conv5_i_1_2_4@uint8;
(*   %and.i.2.2.4 = and i32 %conv.i.2.2.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_2_4 v_conv_i_2_2_4 (0x1)@uint32;
(*   %conv1.i.2.2.4 = zext i8 %conv7.i.1.2.4 to i32 *)
cast v_conv1_i_2_2_4@uint32 v_conv7_i_1_2_4@uint8;
(*   %mul.i.2.2.4 = mul nsw i32 %and.i.2.2.4, %conv1.i.2.2.4 *)
mul v_mul_i_2_2_4 v_and_i_2_2_4 v_conv1_i_2_2_4;
(*   %conv2.i.2.2.4 = zext i8 %conv3.i.1.2.4 to i32 *)
cast v_conv2_i_2_2_4@uint32 v_conv3_i_1_2_4@uint8;
(*   %xor.i.2.2.4 = xor i32 %conv2.i.2.2.4, %mul.i.2.2.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_2_4 v_conv2_i_2_2_4 v_mul_i_2_2_4;
(*   %conv3.i.2.2.4 = trunc i32 %xor.i.2.2.4 to i8 *)
split tmp_v_xor_i_2_2_4 v_conv3_i_2_2_4 v_xor_i_2_2_4 8;
vpc v_conv3_i_2_2_4@uint8 v_conv3_i_2_2_4@uint32;
(*   %conv4.i.2.2.4 = zext i8 %conv5.i.1.2.4 to i32 *)
cast v_conv4_i_2_2_4@uint32 v_conv5_i_1_2_4@uint8;
(*   %shr.i.2.2.4 = ashr i32 %conv4.i.2.2.4, 1 *)
(* You may need to modify here *)
split v_shr_i_2_2_4 tmp_to_be_used v_conv4_i_2_2_4 1;
(*   %conv5.i.2.2.4 = trunc i32 %shr.i.2.2.4 to i8 *)
split tmp_v_shr_i_2_2_4 v_conv5_i_2_2_4 v_shr_i_2_2_4 8;
vpc v_conv5_i_2_2_4@uint8 v_conv5_i_2_2_4@uint32;
(*   %conv6.i.2.2.4 = zext i8 %conv7.i.1.2.4 to i32 *)
cast v_conv6_i_2_2_4@uint32 v_conv7_i_1_2_4@uint8;
(*   %shl.i.2.2.4 = shl i32 %conv6.i.2.2.4, 1 *)
shls discard_156 v_shl_i_2_2_4 v_conv6_i_2_2_4 1;
(*   %conv7.i.2.2.4 = trunc i32 %shl.i.2.2.4 to i8 *)
split tmp_v_shl_i_2_2_4 v_conv7_i_2_2_4 v_shl_i_2_2_4 8;
vpc v_conv7_i_2_2_4@uint8 v_conv7_i_2_2_4@uint32;
(*   %conv.i.3.2.4 = zext i8 %conv5.i.2.2.4 to i32 *)
cast v_conv_i_3_2_4@uint32 v_conv5_i_2_2_4@uint8;
(*   %and.i.3.2.4 = and i32 %conv.i.3.2.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_2_4 v_conv_i_3_2_4 (0x1)@uint32;
(*   %conv1.i.3.2.4 = zext i8 %conv7.i.2.2.4 to i32 *)
cast v_conv1_i_3_2_4@uint32 v_conv7_i_2_2_4@uint8;
(*   %mul.i.3.2.4 = mul nsw i32 %and.i.3.2.4, %conv1.i.3.2.4 *)
mul v_mul_i_3_2_4 v_and_i_3_2_4 v_conv1_i_3_2_4;
(*   %conv2.i.3.2.4 = zext i8 %conv3.i.2.2.4 to i32 *)
cast v_conv2_i_3_2_4@uint32 v_conv3_i_2_2_4@uint8;
(*   %xor.i.3.2.4 = xor i32 %conv2.i.3.2.4, %mul.i.3.2.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_2_4 v_conv2_i_3_2_4 v_mul_i_3_2_4;
(*   %conv3.i.3.2.4 = trunc i32 %xor.i.3.2.4 to i8 *)
split tmp_v_xor_i_3_2_4 v_conv3_i_3_2_4 v_xor_i_3_2_4 8;
vpc v_conv3_i_3_2_4@uint8 v_conv3_i_3_2_4@uint32;
(*   %conv4.i.3.2.4 = zext i8 %conv5.i.2.2.4 to i32 *)
cast v_conv4_i_3_2_4@uint32 v_conv5_i_2_2_4@uint8;
(*   %shr.i.3.2.4 = ashr i32 %conv4.i.3.2.4, 1 *)
(* You may need to modify here *)
split v_shr_i_3_2_4 tmp_to_be_used v_conv4_i_3_2_4 1;
(*   %conv5.i.3.2.4 = trunc i32 %shr.i.3.2.4 to i8 *)
split tmp_v_shr_i_3_2_4 v_conv5_i_3_2_4 v_shr_i_3_2_4 8;
vpc v_conv5_i_3_2_4@uint8 v_conv5_i_3_2_4@uint32;
(*   %conv6.i.3.2.4 = zext i8 %conv7.i.2.2.4 to i32 *)
cast v_conv6_i_3_2_4@uint32 v_conv7_i_2_2_4@uint8;
(*   %shl.i.3.2.4 = shl i32 %conv6.i.3.2.4, 1 *)
shls discard_157 v_shl_i_3_2_4 v_conv6_i_3_2_4 1;
(*   %conv7.i.3.2.4 = trunc i32 %shl.i.3.2.4 to i8 *)
split tmp_v_shl_i_3_2_4 v_conv7_i_3_2_4 v_shl_i_3_2_4 8;
vpc v_conv7_i_3_2_4@uint8 v_conv7_i_3_2_4@uint32;
(*   %conv.i.4.2.4 = zext i8 %conv5.i.3.2.4 to i32 *)
cast v_conv_i_4_2_4@uint32 v_conv5_i_3_2_4@uint8;
(*   %and.i.4.2.4 = and i32 %conv.i.4.2.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_2_4 v_conv_i_4_2_4 (0x1)@uint32;
(*   %conv1.i.4.2.4 = zext i8 %conv7.i.3.2.4 to i32 *)
cast v_conv1_i_4_2_4@uint32 v_conv7_i_3_2_4@uint8;
(*   %mul.i.4.2.4 = mul nsw i32 %and.i.4.2.4, %conv1.i.4.2.4 *)
mul v_mul_i_4_2_4 v_and_i_4_2_4 v_conv1_i_4_2_4;
(*   %conv2.i.4.2.4 = zext i8 %conv3.i.3.2.4 to i32 *)
cast v_conv2_i_4_2_4@uint32 v_conv3_i_3_2_4@uint8;
(*   %xor.i.4.2.4 = xor i32 %conv2.i.4.2.4, %mul.i.4.2.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_2_4 v_conv2_i_4_2_4 v_mul_i_4_2_4;
(*   %conv3.i.4.2.4 = trunc i32 %xor.i.4.2.4 to i8 *)
split tmp_v_xor_i_4_2_4 v_conv3_i_4_2_4 v_xor_i_4_2_4 8;
vpc v_conv3_i_4_2_4@uint8 v_conv3_i_4_2_4@uint32;
(*   %conv4.i.4.2.4 = zext i8 %conv5.i.3.2.4 to i32 *)
cast v_conv4_i_4_2_4@uint32 v_conv5_i_3_2_4@uint8;
(*   %shr.i.4.2.4 = ashr i32 %conv4.i.4.2.4, 1 *)
(* You may need to modify here *)
split v_shr_i_4_2_4 tmp_to_be_used v_conv4_i_4_2_4 1;
(*   %conv5.i.4.2.4 = trunc i32 %shr.i.4.2.4 to i8 *)
split tmp_v_shr_i_4_2_4 v_conv5_i_4_2_4 v_shr_i_4_2_4 8;
vpc v_conv5_i_4_2_4@uint8 v_conv5_i_4_2_4@uint32;
(*   %conv6.i.4.2.4 = zext i8 %conv7.i.3.2.4 to i32 *)
cast v_conv6_i_4_2_4@uint32 v_conv7_i_3_2_4@uint8;
(*   %shl.i.4.2.4 = shl i32 %conv6.i.4.2.4, 1 *)
shls discard_158 v_shl_i_4_2_4 v_conv6_i_4_2_4 1;
(*   %conv7.i.4.2.4 = trunc i32 %shl.i.4.2.4 to i8 *)
split tmp_v_shl_i_4_2_4 v_conv7_i_4_2_4 v_shl_i_4_2_4 8;
vpc v_conv7_i_4_2_4@uint8 v_conv7_i_4_2_4@uint32;
(*   %conv.i.5.2.4 = zext i8 %conv5.i.4.2.4 to i32 *)
cast v_conv_i_5_2_4@uint32 v_conv5_i_4_2_4@uint8;
(*   %and.i.5.2.4 = and i32 %conv.i.5.2.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_2_4 v_conv_i_5_2_4 (0x1)@uint32;
(*   %conv1.i.5.2.4 = zext i8 %conv7.i.4.2.4 to i32 *)
cast v_conv1_i_5_2_4@uint32 v_conv7_i_4_2_4@uint8;
(*   %mul.i.5.2.4 = mul nsw i32 %and.i.5.2.4, %conv1.i.5.2.4 *)
mul v_mul_i_5_2_4 v_and_i_5_2_4 v_conv1_i_5_2_4;
(*   %conv2.i.5.2.4 = zext i8 %conv3.i.4.2.4 to i32 *)
cast v_conv2_i_5_2_4@uint32 v_conv3_i_4_2_4@uint8;
(*   %xor.i.5.2.4 = xor i32 %conv2.i.5.2.4, %mul.i.5.2.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_2_4 v_conv2_i_5_2_4 v_mul_i_5_2_4;
(*   %conv3.i.5.2.4 = trunc i32 %xor.i.5.2.4 to i8 *)
split tmp_v_xor_i_5_2_4 v_conv3_i_5_2_4 v_xor_i_5_2_4 8;
vpc v_conv3_i_5_2_4@uint8 v_conv3_i_5_2_4@uint32;
(*   %conv4.i.5.2.4 = zext i8 %conv5.i.4.2.4 to i32 *)
cast v_conv4_i_5_2_4@uint32 v_conv5_i_4_2_4@uint8;
(*   %shr.i.5.2.4 = ashr i32 %conv4.i.5.2.4, 1 *)
(* You may need to modify here *)
split v_shr_i_5_2_4 tmp_to_be_used v_conv4_i_5_2_4 1;
(*   %conv5.i.5.2.4 = trunc i32 %shr.i.5.2.4 to i8 *)
split tmp_v_shr_i_5_2_4 v_conv5_i_5_2_4 v_shr_i_5_2_4 8;
vpc v_conv5_i_5_2_4@uint8 v_conv5_i_5_2_4@uint32;
(*   %conv6.i.5.2.4 = zext i8 %conv7.i.4.2.4 to i32 *)
cast v_conv6_i_5_2_4@uint32 v_conv7_i_4_2_4@uint8;
(*   %shl.i.5.2.4 = shl i32 %conv6.i.5.2.4, 1 *)
shls discard_159 v_shl_i_5_2_4 v_conv6_i_5_2_4 1;
(*   %conv7.i.5.2.4 = trunc i32 %shl.i.5.2.4 to i8 *)
split tmp_v_shl_i_5_2_4 v_conv7_i_5_2_4 v_shl_i_5_2_4 8;
vpc v_conv7_i_5_2_4@uint8 v_conv7_i_5_2_4@uint32;
(*   %conv.i.6.2.4 = zext i8 %conv5.i.5.2.4 to i32 *)
cast v_conv_i_6_2_4@uint32 v_conv5_i_5_2_4@uint8;
(*   %and.i.6.2.4 = and i32 %conv.i.6.2.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_2_4 v_conv_i_6_2_4 (0x1)@uint32;
(*   %conv1.i.6.2.4 = zext i8 %conv7.i.5.2.4 to i32 *)
cast v_conv1_i_6_2_4@uint32 v_conv7_i_5_2_4@uint8;
(*   %mul.i.6.2.4 = mul nsw i32 %and.i.6.2.4, %conv1.i.6.2.4 *)
mul v_mul_i_6_2_4 v_and_i_6_2_4 v_conv1_i_6_2_4;
(*   %conv2.i.6.2.4 = zext i8 %conv3.i.5.2.4 to i32 *)
cast v_conv2_i_6_2_4@uint32 v_conv3_i_5_2_4@uint8;
(*   %xor.i.6.2.4 = xor i32 %conv2.i.6.2.4, %mul.i.6.2.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_2_4 v_conv2_i_6_2_4 v_mul_i_6_2_4;
(*   %conv3.i.6.2.4 = trunc i32 %xor.i.6.2.4 to i8 *)
split tmp_v_xor_i_6_2_4 v_conv3_i_6_2_4 v_xor_i_6_2_4 8;
vpc v_conv3_i_6_2_4@uint8 v_conv3_i_6_2_4@uint32;
(*   %conv4.i.6.2.4 = zext i8 %conv5.i.5.2.4 to i32 *)
cast v_conv4_i_6_2_4@uint32 v_conv5_i_5_2_4@uint8;
(*   %shr.i.6.2.4 = ashr i32 %conv4.i.6.2.4, 1 *)
(* You may need to modify here *)
split v_shr_i_6_2_4 tmp_to_be_used v_conv4_i_6_2_4 1;
(*   %conv5.i.6.2.4 = trunc i32 %shr.i.6.2.4 to i8 *)
split tmp_v_shr_i_6_2_4 v_conv5_i_6_2_4 v_shr_i_6_2_4 8;
vpc v_conv5_i_6_2_4@uint8 v_conv5_i_6_2_4@uint32;
(*   %conv6.i.6.2.4 = zext i8 %conv7.i.5.2.4 to i32 *)
cast v_conv6_i_6_2_4@uint32 v_conv7_i_5_2_4@uint8;
(*   %shl.i.6.2.4 = shl i32 %conv6.i.6.2.4, 1 *)
shls discard_160 v_shl_i_6_2_4 v_conv6_i_6_2_4 1;
(*   %conv7.i.6.2.4 = trunc i32 %shl.i.6.2.4 to i8 *)
split tmp_v_shl_i_6_2_4 v_conv7_i_6_2_4 v_shl_i_6_2_4 8;
vpc v_conv7_i_6_2_4@uint8 v_conv7_i_6_2_4@uint32;
(*   %conv.i.7.2.4 = zext i8 %conv5.i.6.2.4 to i32 *)
cast v_conv_i_7_2_4@uint32 v_conv5_i_6_2_4@uint8;
(*   %and.i.7.2.4 = and i32 %conv.i.7.2.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_2_4 v_conv_i_7_2_4 (0x1)@uint32;
(*   %conv1.i.7.2.4 = zext i8 %conv7.i.6.2.4 to i32 *)
cast v_conv1_i_7_2_4@uint32 v_conv7_i_6_2_4@uint8;
(*   %mul.i.7.2.4 = mul nsw i32 %and.i.7.2.4, %conv1.i.7.2.4 *)
mul v_mul_i_7_2_4 v_and_i_7_2_4 v_conv1_i_7_2_4;
(*   %conv2.i.7.2.4 = zext i8 %conv3.i.6.2.4 to i32 *)
cast v_conv2_i_7_2_4@uint32 v_conv3_i_6_2_4@uint8;
(*   %xor.i.7.2.4 = xor i32 %conv2.i.7.2.4, %mul.i.7.2.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_2_4 v_conv2_i_7_2_4 v_mul_i_7_2_4;
(*   %conv3.i.7.2.4 = trunc i32 %xor.i.7.2.4 to i8 *)
split tmp_v_xor_i_7_2_4 v_conv3_i_7_2_4 v_xor_i_7_2_4 8;
vpc v_conv3_i_7_2_4@uint8 v_conv3_i_7_2_4@uint32;
(*   %arrayidx7.2.4 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 22 *)
(*   store i8 %conv3.i.7.2.4, i8* %arrayidx7.2.4, align 1 *)
mov alpha_22 v_conv3_i_7_2_4;
(*   %arrayidx5.3.4 = getelementptr inbounds i8, i8* %b, i64 3 *)
(*   %28 = load i8, i8* %arrayidx5.3.4, align 1 *)
mov v28 b_3;
(*   %conv.i.364.4 = zext i8 %28 to i32 *)
cast v_conv_i_364_4@uint32 v28@uint8;
(*   %and.i.365.4 = and i32 %conv.i.364.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_365_4 v_conv_i_364_4 (0x1)@uint32;
(*   %conv1.i.366.4 = zext i8 %24 to i32 *)
cast v_conv1_i_366_4@uint32 v24@uint8;
(*   %mul.i.367.4 = mul nsw i32 %and.i.365.4, %conv1.i.366.4 *)
mul v_mul_i_367_4 v_and_i_365_4 v_conv1_i_366_4;
(*   %conv3.i.368.4 = trunc i32 %mul.i.367.4 to i8 *)
split tmp_v_mul_i_367_4 v_conv3_i_368_4 v_mul_i_367_4 8;
vpc v_conv3_i_368_4@uint8 v_conv3_i_368_4@uint32;
(*   %conv4.i.369.4 = zext i8 %28 to i32 *)
cast v_conv4_i_369_4@uint32 v28@uint8;
(*   %shr.i.370.4 = ashr i32 %conv4.i.369.4, 1 *)
(* You may need to modify here *)
split v_shr_i_370_4 tmp_to_be_used v_conv4_i_369_4 1;
(*   %conv5.i.371.4 = trunc i32 %shr.i.370.4 to i8 *)
split tmp_v_shr_i_370_4 v_conv5_i_371_4 v_shr_i_370_4 8;
vpc v_conv5_i_371_4@uint8 v_conv5_i_371_4@uint32;
(*   %conv6.i.372.4 = zext i8 %24 to i32 *)
cast v_conv6_i_372_4@uint32 v24@uint8;
(*   %shl.i.373.4 = shl i32 %conv6.i.372.4, 1 *)
shls discard_161 v_shl_i_373_4 v_conv6_i_372_4 1;
(*   %conv7.i.374.4 = trunc i32 %shl.i.373.4 to i8 *)
split tmp_v_shl_i_373_4 v_conv7_i_374_4 v_shl_i_373_4 8;
vpc v_conv7_i_374_4@uint8 v_conv7_i_374_4@uint32;
(*   %conv.i.1.3.4 = zext i8 %conv5.i.371.4 to i32 *)
cast v_conv_i_1_3_4@uint32 v_conv5_i_371_4@uint8;
(*   %and.i.1.3.4 = and i32 %conv.i.1.3.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_3_4 v_conv_i_1_3_4 (0x1)@uint32;
(*   %conv1.i.1.3.4 = zext i8 %conv7.i.374.4 to i32 *)
cast v_conv1_i_1_3_4@uint32 v_conv7_i_374_4@uint8;
(*   %mul.i.1.3.4 = mul nsw i32 %and.i.1.3.4, %conv1.i.1.3.4 *)
mul v_mul_i_1_3_4 v_and_i_1_3_4 v_conv1_i_1_3_4;
(*   %conv2.i.1.3.4 = zext i8 %conv3.i.368.4 to i32 *)
cast v_conv2_i_1_3_4@uint32 v_conv3_i_368_4@uint8;
(*   %xor.i.1.3.4 = xor i32 %conv2.i.1.3.4, %mul.i.1.3.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_3_4 v_conv2_i_1_3_4 v_mul_i_1_3_4;
(*   %conv3.i.1.3.4 = trunc i32 %xor.i.1.3.4 to i8 *)
split tmp_v_xor_i_1_3_4 v_conv3_i_1_3_4 v_xor_i_1_3_4 8;
vpc v_conv3_i_1_3_4@uint8 v_conv3_i_1_3_4@uint32;
(*   %conv4.i.1.3.4 = zext i8 %conv5.i.371.4 to i32 *)
cast v_conv4_i_1_3_4@uint32 v_conv5_i_371_4@uint8;
(*   %shr.i.1.3.4 = ashr i32 %conv4.i.1.3.4, 1 *)
(* You may need to modify here *)
split v_shr_i_1_3_4 tmp_to_be_used v_conv4_i_1_3_4 1;
(*   %conv5.i.1.3.4 = trunc i32 %shr.i.1.3.4 to i8 *)
split tmp_v_shr_i_1_3_4 v_conv5_i_1_3_4 v_shr_i_1_3_4 8;
vpc v_conv5_i_1_3_4@uint8 v_conv5_i_1_3_4@uint32;
(*   %conv6.i.1.3.4 = zext i8 %conv7.i.374.4 to i32 *)
cast v_conv6_i_1_3_4@uint32 v_conv7_i_374_4@uint8;
(*   %shl.i.1.3.4 = shl i32 %conv6.i.1.3.4, 1 *)
shls discard_162 v_shl_i_1_3_4 v_conv6_i_1_3_4 1;
(*   %conv7.i.1.3.4 = trunc i32 %shl.i.1.3.4 to i8 *)
split tmp_v_shl_i_1_3_4 v_conv7_i_1_3_4 v_shl_i_1_3_4 8;
vpc v_conv7_i_1_3_4@uint8 v_conv7_i_1_3_4@uint32;
(*   %conv.i.2.3.4 = zext i8 %conv5.i.1.3.4 to i32 *)
cast v_conv_i_2_3_4@uint32 v_conv5_i_1_3_4@uint8;
(*   %and.i.2.3.4 = and i32 %conv.i.2.3.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_3_4 v_conv_i_2_3_4 (0x1)@uint32;
(*   %conv1.i.2.3.4 = zext i8 %conv7.i.1.3.4 to i32 *)
cast v_conv1_i_2_3_4@uint32 v_conv7_i_1_3_4@uint8;
(*   %mul.i.2.3.4 = mul nsw i32 %and.i.2.3.4, %conv1.i.2.3.4 *)
mul v_mul_i_2_3_4 v_and_i_2_3_4 v_conv1_i_2_3_4;
(*   %conv2.i.2.3.4 = zext i8 %conv3.i.1.3.4 to i32 *)
cast v_conv2_i_2_3_4@uint32 v_conv3_i_1_3_4@uint8;
(*   %xor.i.2.3.4 = xor i32 %conv2.i.2.3.4, %mul.i.2.3.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_3_4 v_conv2_i_2_3_4 v_mul_i_2_3_4;
(*   %conv3.i.2.3.4 = trunc i32 %xor.i.2.3.4 to i8 *)
split tmp_v_xor_i_2_3_4 v_conv3_i_2_3_4 v_xor_i_2_3_4 8;
vpc v_conv3_i_2_3_4@uint8 v_conv3_i_2_3_4@uint32;
(*   %conv4.i.2.3.4 = zext i8 %conv5.i.1.3.4 to i32 *)
cast v_conv4_i_2_3_4@uint32 v_conv5_i_1_3_4@uint8;
(*   %shr.i.2.3.4 = ashr i32 %conv4.i.2.3.4, 1 *)
(* You may need to modify here *)
split v_shr_i_2_3_4 tmp_to_be_used v_conv4_i_2_3_4 1;
(*   %conv5.i.2.3.4 = trunc i32 %shr.i.2.3.4 to i8 *)
split tmp_v_shr_i_2_3_4 v_conv5_i_2_3_4 v_shr_i_2_3_4 8;
vpc v_conv5_i_2_3_4@uint8 v_conv5_i_2_3_4@uint32;
(*   %conv6.i.2.3.4 = zext i8 %conv7.i.1.3.4 to i32 *)
cast v_conv6_i_2_3_4@uint32 v_conv7_i_1_3_4@uint8;
(*   %shl.i.2.3.4 = shl i32 %conv6.i.2.3.4, 1 *)
shls discard_163 v_shl_i_2_3_4 v_conv6_i_2_3_4 1;
(*   %conv7.i.2.3.4 = trunc i32 %shl.i.2.3.4 to i8 *)
split tmp_v_shl_i_2_3_4 v_conv7_i_2_3_4 v_shl_i_2_3_4 8;
vpc v_conv7_i_2_3_4@uint8 v_conv7_i_2_3_4@uint32;
(*   %conv.i.3.3.4 = zext i8 %conv5.i.2.3.4 to i32 *)
cast v_conv_i_3_3_4@uint32 v_conv5_i_2_3_4@uint8;
(*   %and.i.3.3.4 = and i32 %conv.i.3.3.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_3_4 v_conv_i_3_3_4 (0x1)@uint32;
(*   %conv1.i.3.3.4 = zext i8 %conv7.i.2.3.4 to i32 *)
cast v_conv1_i_3_3_4@uint32 v_conv7_i_2_3_4@uint8;
(*   %mul.i.3.3.4 = mul nsw i32 %and.i.3.3.4, %conv1.i.3.3.4 *)
mul v_mul_i_3_3_4 v_and_i_3_3_4 v_conv1_i_3_3_4;
(*   %conv2.i.3.3.4 = zext i8 %conv3.i.2.3.4 to i32 *)
cast v_conv2_i_3_3_4@uint32 v_conv3_i_2_3_4@uint8;
(*   %xor.i.3.3.4 = xor i32 %conv2.i.3.3.4, %mul.i.3.3.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_3_4 v_conv2_i_3_3_4 v_mul_i_3_3_4;
(*   %conv3.i.3.3.4 = trunc i32 %xor.i.3.3.4 to i8 *)
split tmp_v_xor_i_3_3_4 v_conv3_i_3_3_4 v_xor_i_3_3_4 8;
vpc v_conv3_i_3_3_4@uint8 v_conv3_i_3_3_4@uint32;
(*   %conv4.i.3.3.4 = zext i8 %conv5.i.2.3.4 to i32 *)
cast v_conv4_i_3_3_4@uint32 v_conv5_i_2_3_4@uint8;
(*   %shr.i.3.3.4 = ashr i32 %conv4.i.3.3.4, 1 *)
(* You may need to modify here *)
split v_shr_i_3_3_4 tmp_to_be_used v_conv4_i_3_3_4 1;
(*   %conv5.i.3.3.4 = trunc i32 %shr.i.3.3.4 to i8 *)
split tmp_v_shr_i_3_3_4 v_conv5_i_3_3_4 v_shr_i_3_3_4 8;
vpc v_conv5_i_3_3_4@uint8 v_conv5_i_3_3_4@uint32;
(*   %conv6.i.3.3.4 = zext i8 %conv7.i.2.3.4 to i32 *)
cast v_conv6_i_3_3_4@uint32 v_conv7_i_2_3_4@uint8;
(*   %shl.i.3.3.4 = shl i32 %conv6.i.3.3.4, 1 *)
shls discard_164 v_shl_i_3_3_4 v_conv6_i_3_3_4 1;
(*   %conv7.i.3.3.4 = trunc i32 %shl.i.3.3.4 to i8 *)
split tmp_v_shl_i_3_3_4 v_conv7_i_3_3_4 v_shl_i_3_3_4 8;
vpc v_conv7_i_3_3_4@uint8 v_conv7_i_3_3_4@uint32;
(*   %conv.i.4.3.4 = zext i8 %conv5.i.3.3.4 to i32 *)
cast v_conv_i_4_3_4@uint32 v_conv5_i_3_3_4@uint8;
(*   %and.i.4.3.4 = and i32 %conv.i.4.3.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_3_4 v_conv_i_4_3_4 (0x1)@uint32;
(*   %conv1.i.4.3.4 = zext i8 %conv7.i.3.3.4 to i32 *)
cast v_conv1_i_4_3_4@uint32 v_conv7_i_3_3_4@uint8;
(*   %mul.i.4.3.4 = mul nsw i32 %and.i.4.3.4, %conv1.i.4.3.4 *)
mul v_mul_i_4_3_4 v_and_i_4_3_4 v_conv1_i_4_3_4;
(*   %conv2.i.4.3.4 = zext i8 %conv3.i.3.3.4 to i32 *)
cast v_conv2_i_4_3_4@uint32 v_conv3_i_3_3_4@uint8;
(*   %xor.i.4.3.4 = xor i32 %conv2.i.4.3.4, %mul.i.4.3.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_3_4 v_conv2_i_4_3_4 v_mul_i_4_3_4;
(*   %conv3.i.4.3.4 = trunc i32 %xor.i.4.3.4 to i8 *)
split tmp_v_xor_i_4_3_4 v_conv3_i_4_3_4 v_xor_i_4_3_4 8;
vpc v_conv3_i_4_3_4@uint8 v_conv3_i_4_3_4@uint32;
(*   %conv4.i.4.3.4 = zext i8 %conv5.i.3.3.4 to i32 *)
cast v_conv4_i_4_3_4@uint32 v_conv5_i_3_3_4@uint8;
(*   %shr.i.4.3.4 = ashr i32 %conv4.i.4.3.4, 1 *)
(* You may need to modify here *)
split v_shr_i_4_3_4 tmp_to_be_used v_conv4_i_4_3_4 1;
(*   %conv5.i.4.3.4 = trunc i32 %shr.i.4.3.4 to i8 *)
split tmp_v_shr_i_4_3_4 v_conv5_i_4_3_4 v_shr_i_4_3_4 8;
vpc v_conv5_i_4_3_4@uint8 v_conv5_i_4_3_4@uint32;
(*   %conv6.i.4.3.4 = zext i8 %conv7.i.3.3.4 to i32 *)
cast v_conv6_i_4_3_4@uint32 v_conv7_i_3_3_4@uint8;
(*   %shl.i.4.3.4 = shl i32 %conv6.i.4.3.4, 1 *)
shls discard_165 v_shl_i_4_3_4 v_conv6_i_4_3_4 1;
(*   %conv7.i.4.3.4 = trunc i32 %shl.i.4.3.4 to i8 *)
split tmp_v_shl_i_4_3_4 v_conv7_i_4_3_4 v_shl_i_4_3_4 8;
vpc v_conv7_i_4_3_4@uint8 v_conv7_i_4_3_4@uint32;
(*   %conv.i.5.3.4 = zext i8 %conv5.i.4.3.4 to i32 *)
cast v_conv_i_5_3_4@uint32 v_conv5_i_4_3_4@uint8;
(*   %and.i.5.3.4 = and i32 %conv.i.5.3.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_3_4 v_conv_i_5_3_4 (0x1)@uint32;
(*   %conv1.i.5.3.4 = zext i8 %conv7.i.4.3.4 to i32 *)
cast v_conv1_i_5_3_4@uint32 v_conv7_i_4_3_4@uint8;
(*   %mul.i.5.3.4 = mul nsw i32 %and.i.5.3.4, %conv1.i.5.3.4 *)
mul v_mul_i_5_3_4 v_and_i_5_3_4 v_conv1_i_5_3_4;
(*   %conv2.i.5.3.4 = zext i8 %conv3.i.4.3.4 to i32 *)
cast v_conv2_i_5_3_4@uint32 v_conv3_i_4_3_4@uint8;
(*   %xor.i.5.3.4 = xor i32 %conv2.i.5.3.4, %mul.i.5.3.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_3_4 v_conv2_i_5_3_4 v_mul_i_5_3_4;
(*   %conv3.i.5.3.4 = trunc i32 %xor.i.5.3.4 to i8 *)
split tmp_v_xor_i_5_3_4 v_conv3_i_5_3_4 v_xor_i_5_3_4 8;
vpc v_conv3_i_5_3_4@uint8 v_conv3_i_5_3_4@uint32;
(*   %conv4.i.5.3.4 = zext i8 %conv5.i.4.3.4 to i32 *)
cast v_conv4_i_5_3_4@uint32 v_conv5_i_4_3_4@uint8;
(*   %shr.i.5.3.4 = ashr i32 %conv4.i.5.3.4, 1 *)
(* You may need to modify here *)
split v_shr_i_5_3_4 tmp_to_be_used v_conv4_i_5_3_4 1;
(*   %conv5.i.5.3.4 = trunc i32 %shr.i.5.3.4 to i8 *)
split tmp_v_shr_i_5_3_4 v_conv5_i_5_3_4 v_shr_i_5_3_4 8;
vpc v_conv5_i_5_3_4@uint8 v_conv5_i_5_3_4@uint32;
(*   %conv6.i.5.3.4 = zext i8 %conv7.i.4.3.4 to i32 *)
cast v_conv6_i_5_3_4@uint32 v_conv7_i_4_3_4@uint8;
(*   %shl.i.5.3.4 = shl i32 %conv6.i.5.3.4, 1 *)
shls discard_166 v_shl_i_5_3_4 v_conv6_i_5_3_4 1;
(*   %conv7.i.5.3.4 = trunc i32 %shl.i.5.3.4 to i8 *)
split tmp_v_shl_i_5_3_4 v_conv7_i_5_3_4 v_shl_i_5_3_4 8;
vpc v_conv7_i_5_3_4@uint8 v_conv7_i_5_3_4@uint32;
(*   %conv.i.6.3.4 = zext i8 %conv5.i.5.3.4 to i32 *)
cast v_conv_i_6_3_4@uint32 v_conv5_i_5_3_4@uint8;
(*   %and.i.6.3.4 = and i32 %conv.i.6.3.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_3_4 v_conv_i_6_3_4 (0x1)@uint32;
(*   %conv1.i.6.3.4 = zext i8 %conv7.i.5.3.4 to i32 *)
cast v_conv1_i_6_3_4@uint32 v_conv7_i_5_3_4@uint8;
(*   %mul.i.6.3.4 = mul nsw i32 %and.i.6.3.4, %conv1.i.6.3.4 *)
mul v_mul_i_6_3_4 v_and_i_6_3_4 v_conv1_i_6_3_4;
(*   %conv2.i.6.3.4 = zext i8 %conv3.i.5.3.4 to i32 *)
cast v_conv2_i_6_3_4@uint32 v_conv3_i_5_3_4@uint8;
(*   %xor.i.6.3.4 = xor i32 %conv2.i.6.3.4, %mul.i.6.3.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_3_4 v_conv2_i_6_3_4 v_mul_i_6_3_4;
(*   %conv3.i.6.3.4 = trunc i32 %xor.i.6.3.4 to i8 *)
split tmp_v_xor_i_6_3_4 v_conv3_i_6_3_4 v_xor_i_6_3_4 8;
vpc v_conv3_i_6_3_4@uint8 v_conv3_i_6_3_4@uint32;
(*   %conv4.i.6.3.4 = zext i8 %conv5.i.5.3.4 to i32 *)
cast v_conv4_i_6_3_4@uint32 v_conv5_i_5_3_4@uint8;
(*   %shr.i.6.3.4 = ashr i32 %conv4.i.6.3.4, 1 *)
(* You may need to modify here *)
split v_shr_i_6_3_4 tmp_to_be_used v_conv4_i_6_3_4 1;
(*   %conv5.i.6.3.4 = trunc i32 %shr.i.6.3.4 to i8 *)
split tmp_v_shr_i_6_3_4 v_conv5_i_6_3_4 v_shr_i_6_3_4 8;
vpc v_conv5_i_6_3_4@uint8 v_conv5_i_6_3_4@uint32;
(*   %conv6.i.6.3.4 = zext i8 %conv7.i.5.3.4 to i32 *)
cast v_conv6_i_6_3_4@uint32 v_conv7_i_5_3_4@uint8;
(*   %shl.i.6.3.4 = shl i32 %conv6.i.6.3.4, 1 *)
shls discard_167 v_shl_i_6_3_4 v_conv6_i_6_3_4 1;
(*   %conv7.i.6.3.4 = trunc i32 %shl.i.6.3.4 to i8 *)
split tmp_v_shl_i_6_3_4 v_conv7_i_6_3_4 v_shl_i_6_3_4 8;
vpc v_conv7_i_6_3_4@uint8 v_conv7_i_6_3_4@uint32;
(*   %conv.i.7.3.4 = zext i8 %conv5.i.6.3.4 to i32 *)
cast v_conv_i_7_3_4@uint32 v_conv5_i_6_3_4@uint8;
(*   %and.i.7.3.4 = and i32 %conv.i.7.3.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_3_4 v_conv_i_7_3_4 (0x1)@uint32;
(*   %conv1.i.7.3.4 = zext i8 %conv7.i.6.3.4 to i32 *)
cast v_conv1_i_7_3_4@uint32 v_conv7_i_6_3_4@uint8;
(*   %mul.i.7.3.4 = mul nsw i32 %and.i.7.3.4, %conv1.i.7.3.4 *)
mul v_mul_i_7_3_4 v_and_i_7_3_4 v_conv1_i_7_3_4;
(*   %conv2.i.7.3.4 = zext i8 %conv3.i.6.3.4 to i32 *)
cast v_conv2_i_7_3_4@uint32 v_conv3_i_6_3_4@uint8;
(*   %xor.i.7.3.4 = xor i32 %conv2.i.7.3.4, %mul.i.7.3.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_3_4 v_conv2_i_7_3_4 v_mul_i_7_3_4;
(*   %conv3.i.7.3.4 = trunc i32 %xor.i.7.3.4 to i8 *)
split tmp_v_xor_i_7_3_4 v_conv3_i_7_3_4 v_xor_i_7_3_4 8;
vpc v_conv3_i_7_3_4@uint8 v_conv3_i_7_3_4@uint32;
(*   %arrayidx7.3.4 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 23 *)
(*   store i8 %conv3.i.7.3.4, i8* %arrayidx7.3.4, align 1 *)
mov alpha_23 v_conv3_i_7_3_4;
(*   %arrayidx5.4.4 = getelementptr inbounds i8, i8* %b, i64 4 *)
(*   %29 = load i8, i8* %arrayidx5.4.4, align 1 *)
mov v29 b_4;
(*   %conv.i.475.4 = zext i8 %29 to i32 *)
cast v_conv_i_475_4@uint32 v29@uint8;
(*   %and.i.476.4 = and i32 %conv.i.475.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_476_4 v_conv_i_475_4 (0x1)@uint32;
(*   %conv1.i.477.4 = zext i8 %24 to i32 *)
cast v_conv1_i_477_4@uint32 v24@uint8;
(*   %mul.i.478.4 = mul nsw i32 %and.i.476.4, %conv1.i.477.4 *)
mul v_mul_i_478_4 v_and_i_476_4 v_conv1_i_477_4;
(*   %conv3.i.479.4 = trunc i32 %mul.i.478.4 to i8 *)
split tmp_v_mul_i_478_4 v_conv3_i_479_4 v_mul_i_478_4 8;
vpc v_conv3_i_479_4@uint8 v_conv3_i_479_4@uint32;
(*   %conv4.i.480.4 = zext i8 %29 to i32 *)
cast v_conv4_i_480_4@uint32 v29@uint8;
(*   %shr.i.481.4 = ashr i32 %conv4.i.480.4, 1 *)
(* You may need to modify here *)
split v_shr_i_481_4 tmp_to_be_used v_conv4_i_480_4 1;
(*   %conv5.i.482.4 = trunc i32 %shr.i.481.4 to i8 *)
split tmp_v_shr_i_481_4 v_conv5_i_482_4 v_shr_i_481_4 8;
vpc v_conv5_i_482_4@uint8 v_conv5_i_482_4@uint32;
(*   %conv6.i.483.4 = zext i8 %24 to i32 *)
cast v_conv6_i_483_4@uint32 v24@uint8;
(*   %shl.i.484.4 = shl i32 %conv6.i.483.4, 1 *)
shls discard_168 v_shl_i_484_4 v_conv6_i_483_4 1;
(*   %conv7.i.485.4 = trunc i32 %shl.i.484.4 to i8 *)
split tmp_v_shl_i_484_4 v_conv7_i_485_4 v_shl_i_484_4 8;
vpc v_conv7_i_485_4@uint8 v_conv7_i_485_4@uint32;
(*   %conv.i.1.4.4 = zext i8 %conv5.i.482.4 to i32 *)
cast v_conv_i_1_4_4@uint32 v_conv5_i_482_4@uint8;
(*   %and.i.1.4.4 = and i32 %conv.i.1.4.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_4_4 v_conv_i_1_4_4 (0x1)@uint32;
(*   %conv1.i.1.4.4 = zext i8 %conv7.i.485.4 to i32 *)
cast v_conv1_i_1_4_4@uint32 v_conv7_i_485_4@uint8;
(*   %mul.i.1.4.4 = mul nsw i32 %and.i.1.4.4, %conv1.i.1.4.4 *)
mul v_mul_i_1_4_4 v_and_i_1_4_4 v_conv1_i_1_4_4;
(*   %conv2.i.1.4.4 = zext i8 %conv3.i.479.4 to i32 *)
cast v_conv2_i_1_4_4@uint32 v_conv3_i_479_4@uint8;
(*   %xor.i.1.4.4 = xor i32 %conv2.i.1.4.4, %mul.i.1.4.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_4_4 v_conv2_i_1_4_4 v_mul_i_1_4_4;
(*   %conv3.i.1.4.4 = trunc i32 %xor.i.1.4.4 to i8 *)
split tmp_v_xor_i_1_4_4 v_conv3_i_1_4_4 v_xor_i_1_4_4 8;
vpc v_conv3_i_1_4_4@uint8 v_conv3_i_1_4_4@uint32;
(*   %conv4.i.1.4.4 = zext i8 %conv5.i.482.4 to i32 *)
cast v_conv4_i_1_4_4@uint32 v_conv5_i_482_4@uint8;
(*   %shr.i.1.4.4 = ashr i32 %conv4.i.1.4.4, 1 *)
(* You may need to modify here *)
split v_shr_i_1_4_4 tmp_to_be_used v_conv4_i_1_4_4 1;
(*   %conv5.i.1.4.4 = trunc i32 %shr.i.1.4.4 to i8 *)
split tmp_v_shr_i_1_4_4 v_conv5_i_1_4_4 v_shr_i_1_4_4 8;
vpc v_conv5_i_1_4_4@uint8 v_conv5_i_1_4_4@uint32;
(*   %conv6.i.1.4.4 = zext i8 %conv7.i.485.4 to i32 *)
cast v_conv6_i_1_4_4@uint32 v_conv7_i_485_4@uint8;
(*   %shl.i.1.4.4 = shl i32 %conv6.i.1.4.4, 1 *)
shls discard_169 v_shl_i_1_4_4 v_conv6_i_1_4_4 1;
(*   %conv7.i.1.4.4 = trunc i32 %shl.i.1.4.4 to i8 *)
split tmp_v_shl_i_1_4_4 v_conv7_i_1_4_4 v_shl_i_1_4_4 8;
vpc v_conv7_i_1_4_4@uint8 v_conv7_i_1_4_4@uint32;
(*   %conv.i.2.4.4 = zext i8 %conv5.i.1.4.4 to i32 *)
cast v_conv_i_2_4_4@uint32 v_conv5_i_1_4_4@uint8;
(*   %and.i.2.4.4 = and i32 %conv.i.2.4.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_4_4 v_conv_i_2_4_4 (0x1)@uint32;
(*   %conv1.i.2.4.4 = zext i8 %conv7.i.1.4.4 to i32 *)
cast v_conv1_i_2_4_4@uint32 v_conv7_i_1_4_4@uint8;
(*   %mul.i.2.4.4 = mul nsw i32 %and.i.2.4.4, %conv1.i.2.4.4 *)
mul v_mul_i_2_4_4 v_and_i_2_4_4 v_conv1_i_2_4_4;
(*   %conv2.i.2.4.4 = zext i8 %conv3.i.1.4.4 to i32 *)
cast v_conv2_i_2_4_4@uint32 v_conv3_i_1_4_4@uint8;
(*   %xor.i.2.4.4 = xor i32 %conv2.i.2.4.4, %mul.i.2.4.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_4_4 v_conv2_i_2_4_4 v_mul_i_2_4_4;
(*   %conv3.i.2.4.4 = trunc i32 %xor.i.2.4.4 to i8 *)
split tmp_v_xor_i_2_4_4 v_conv3_i_2_4_4 v_xor_i_2_4_4 8;
vpc v_conv3_i_2_4_4@uint8 v_conv3_i_2_4_4@uint32;
(*   %conv4.i.2.4.4 = zext i8 %conv5.i.1.4.4 to i32 *)
cast v_conv4_i_2_4_4@uint32 v_conv5_i_1_4_4@uint8;
(*   %shr.i.2.4.4 = ashr i32 %conv4.i.2.4.4, 1 *)
(* You may need to modify here *)
split v_shr_i_2_4_4 tmp_to_be_used v_conv4_i_2_4_4 1;
(*   %conv5.i.2.4.4 = trunc i32 %shr.i.2.4.4 to i8 *)
split tmp_v_shr_i_2_4_4 v_conv5_i_2_4_4 v_shr_i_2_4_4 8;
vpc v_conv5_i_2_4_4@uint8 v_conv5_i_2_4_4@uint32;
(*   %conv6.i.2.4.4 = zext i8 %conv7.i.1.4.4 to i32 *)
cast v_conv6_i_2_4_4@uint32 v_conv7_i_1_4_4@uint8;
(*   %shl.i.2.4.4 = shl i32 %conv6.i.2.4.4, 1 *)
shls discard_170 v_shl_i_2_4_4 v_conv6_i_2_4_4 1;
(*   %conv7.i.2.4.4 = trunc i32 %shl.i.2.4.4 to i8 *)
split tmp_v_shl_i_2_4_4 v_conv7_i_2_4_4 v_shl_i_2_4_4 8;
vpc v_conv7_i_2_4_4@uint8 v_conv7_i_2_4_4@uint32;
(*   %conv.i.3.4.4 = zext i8 %conv5.i.2.4.4 to i32 *)
cast v_conv_i_3_4_4@uint32 v_conv5_i_2_4_4@uint8;
(*   %and.i.3.4.4 = and i32 %conv.i.3.4.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_4_4 v_conv_i_3_4_4 (0x1)@uint32;
(*   %conv1.i.3.4.4 = zext i8 %conv7.i.2.4.4 to i32 *)
cast v_conv1_i_3_4_4@uint32 v_conv7_i_2_4_4@uint8;
(*   %mul.i.3.4.4 = mul nsw i32 %and.i.3.4.4, %conv1.i.3.4.4 *)
mul v_mul_i_3_4_4 v_and_i_3_4_4 v_conv1_i_3_4_4;
(*   %conv2.i.3.4.4 = zext i8 %conv3.i.2.4.4 to i32 *)
cast v_conv2_i_3_4_4@uint32 v_conv3_i_2_4_4@uint8;
(*   %xor.i.3.4.4 = xor i32 %conv2.i.3.4.4, %mul.i.3.4.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_4_4 v_conv2_i_3_4_4 v_mul_i_3_4_4;
(*   %conv3.i.3.4.4 = trunc i32 %xor.i.3.4.4 to i8 *)
split tmp_v_xor_i_3_4_4 v_conv3_i_3_4_4 v_xor_i_3_4_4 8;
vpc v_conv3_i_3_4_4@uint8 v_conv3_i_3_4_4@uint32;
(*   %conv4.i.3.4.4 = zext i8 %conv5.i.2.4.4 to i32 *)
cast v_conv4_i_3_4_4@uint32 v_conv5_i_2_4_4@uint8;
(*   %shr.i.3.4.4 = ashr i32 %conv4.i.3.4.4, 1 *)
(* You may need to modify here *)
split v_shr_i_3_4_4 tmp_to_be_used v_conv4_i_3_4_4 1;
(*   %conv5.i.3.4.4 = trunc i32 %shr.i.3.4.4 to i8 *)
split tmp_v_shr_i_3_4_4 v_conv5_i_3_4_4 v_shr_i_3_4_4 8;
vpc v_conv5_i_3_4_4@uint8 v_conv5_i_3_4_4@uint32;
(*   %conv6.i.3.4.4 = zext i8 %conv7.i.2.4.4 to i32 *)
cast v_conv6_i_3_4_4@uint32 v_conv7_i_2_4_4@uint8;
(*   %shl.i.3.4.4 = shl i32 %conv6.i.3.4.4, 1 *)
shls discard_171 v_shl_i_3_4_4 v_conv6_i_3_4_4 1;
(*   %conv7.i.3.4.4 = trunc i32 %shl.i.3.4.4 to i8 *)
split tmp_v_shl_i_3_4_4 v_conv7_i_3_4_4 v_shl_i_3_4_4 8;
vpc v_conv7_i_3_4_4@uint8 v_conv7_i_3_4_4@uint32;
(*   %conv.i.4.4.4 = zext i8 %conv5.i.3.4.4 to i32 *)
cast v_conv_i_4_4_4@uint32 v_conv5_i_3_4_4@uint8;
(*   %and.i.4.4.4 = and i32 %conv.i.4.4.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_4_4 v_conv_i_4_4_4 (0x1)@uint32;
(*   %conv1.i.4.4.4 = zext i8 %conv7.i.3.4.4 to i32 *)
cast v_conv1_i_4_4_4@uint32 v_conv7_i_3_4_4@uint8;
(*   %mul.i.4.4.4 = mul nsw i32 %and.i.4.4.4, %conv1.i.4.4.4 *)
mul v_mul_i_4_4_4 v_and_i_4_4_4 v_conv1_i_4_4_4;
(*   %conv2.i.4.4.4 = zext i8 %conv3.i.3.4.4 to i32 *)
cast v_conv2_i_4_4_4@uint32 v_conv3_i_3_4_4@uint8;
(*   %xor.i.4.4.4 = xor i32 %conv2.i.4.4.4, %mul.i.4.4.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_4_4 v_conv2_i_4_4_4 v_mul_i_4_4_4;
(*   %conv3.i.4.4.4 = trunc i32 %xor.i.4.4.4 to i8 *)
split tmp_v_xor_i_4_4_4 v_conv3_i_4_4_4 v_xor_i_4_4_4 8;
vpc v_conv3_i_4_4_4@uint8 v_conv3_i_4_4_4@uint32;
(*   %conv4.i.4.4.4 = zext i8 %conv5.i.3.4.4 to i32 *)
cast v_conv4_i_4_4_4@uint32 v_conv5_i_3_4_4@uint8;
(*   %shr.i.4.4.4 = ashr i32 %conv4.i.4.4.4, 1 *)
(* You may need to modify here *)
split v_shr_i_4_4_4 tmp_to_be_used v_conv4_i_4_4_4 1;
(*   %conv5.i.4.4.4 = trunc i32 %shr.i.4.4.4 to i8 *)
split tmp_v_shr_i_4_4_4 v_conv5_i_4_4_4 v_shr_i_4_4_4 8;
vpc v_conv5_i_4_4_4@uint8 v_conv5_i_4_4_4@uint32;
(*   %conv6.i.4.4.4 = zext i8 %conv7.i.3.4.4 to i32 *)
cast v_conv6_i_4_4_4@uint32 v_conv7_i_3_4_4@uint8;
(*   %shl.i.4.4.4 = shl i32 %conv6.i.4.4.4, 1 *)
shls discard_172 v_shl_i_4_4_4 v_conv6_i_4_4_4 1;
(*   %conv7.i.4.4.4 = trunc i32 %shl.i.4.4.4 to i8 *)
split tmp_v_shl_i_4_4_4 v_conv7_i_4_4_4 v_shl_i_4_4_4 8;
vpc v_conv7_i_4_4_4@uint8 v_conv7_i_4_4_4@uint32;
(*   %conv.i.5.4.4 = zext i8 %conv5.i.4.4.4 to i32 *)
cast v_conv_i_5_4_4@uint32 v_conv5_i_4_4_4@uint8;
(*   %and.i.5.4.4 = and i32 %conv.i.5.4.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_4_4 v_conv_i_5_4_4 (0x1)@uint32;
(*   %conv1.i.5.4.4 = zext i8 %conv7.i.4.4.4 to i32 *)
cast v_conv1_i_5_4_4@uint32 v_conv7_i_4_4_4@uint8;
(*   %mul.i.5.4.4 = mul nsw i32 %and.i.5.4.4, %conv1.i.5.4.4 *)
mul v_mul_i_5_4_4 v_and_i_5_4_4 v_conv1_i_5_4_4;
(*   %conv2.i.5.4.4 = zext i8 %conv3.i.4.4.4 to i32 *)
cast v_conv2_i_5_4_4@uint32 v_conv3_i_4_4_4@uint8;
(*   %xor.i.5.4.4 = xor i32 %conv2.i.5.4.4, %mul.i.5.4.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_4_4 v_conv2_i_5_4_4 v_mul_i_5_4_4;
(*   %conv3.i.5.4.4 = trunc i32 %xor.i.5.4.4 to i8 *)
split tmp_v_xor_i_5_4_4 v_conv3_i_5_4_4 v_xor_i_5_4_4 8;
vpc v_conv3_i_5_4_4@uint8 v_conv3_i_5_4_4@uint32;
(*   %conv4.i.5.4.4 = zext i8 %conv5.i.4.4.4 to i32 *)
cast v_conv4_i_5_4_4@uint32 v_conv5_i_4_4_4@uint8;
(*   %shr.i.5.4.4 = ashr i32 %conv4.i.5.4.4, 1 *)
(* You may need to modify here *)
split v_shr_i_5_4_4 tmp_to_be_used v_conv4_i_5_4_4 1;
(*   %conv5.i.5.4.4 = trunc i32 %shr.i.5.4.4 to i8 *)
split tmp_v_shr_i_5_4_4 v_conv5_i_5_4_4 v_shr_i_5_4_4 8;
vpc v_conv5_i_5_4_4@uint8 v_conv5_i_5_4_4@uint32;
(*   %conv6.i.5.4.4 = zext i8 %conv7.i.4.4.4 to i32 *)
cast v_conv6_i_5_4_4@uint32 v_conv7_i_4_4_4@uint8;
(*   %shl.i.5.4.4 = shl i32 %conv6.i.5.4.4, 1 *)
shls discard_173 v_shl_i_5_4_4 v_conv6_i_5_4_4 1;
(*   %conv7.i.5.4.4 = trunc i32 %shl.i.5.4.4 to i8 *)
split tmp_v_shl_i_5_4_4 v_conv7_i_5_4_4 v_shl_i_5_4_4 8;
vpc v_conv7_i_5_4_4@uint8 v_conv7_i_5_4_4@uint32;
(*   %conv.i.6.4.4 = zext i8 %conv5.i.5.4.4 to i32 *)
cast v_conv_i_6_4_4@uint32 v_conv5_i_5_4_4@uint8;
(*   %and.i.6.4.4 = and i32 %conv.i.6.4.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_4_4 v_conv_i_6_4_4 (0x1)@uint32;
(*   %conv1.i.6.4.4 = zext i8 %conv7.i.5.4.4 to i32 *)
cast v_conv1_i_6_4_4@uint32 v_conv7_i_5_4_4@uint8;
(*   %mul.i.6.4.4 = mul nsw i32 %and.i.6.4.4, %conv1.i.6.4.4 *)
mul v_mul_i_6_4_4 v_and_i_6_4_4 v_conv1_i_6_4_4;
(*   %conv2.i.6.4.4 = zext i8 %conv3.i.5.4.4 to i32 *)
cast v_conv2_i_6_4_4@uint32 v_conv3_i_5_4_4@uint8;
(*   %xor.i.6.4.4 = xor i32 %conv2.i.6.4.4, %mul.i.6.4.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_4_4 v_conv2_i_6_4_4 v_mul_i_6_4_4;
(*   %conv3.i.6.4.4 = trunc i32 %xor.i.6.4.4 to i8 *)
split tmp_v_xor_i_6_4_4 v_conv3_i_6_4_4 v_xor_i_6_4_4 8;
vpc v_conv3_i_6_4_4@uint8 v_conv3_i_6_4_4@uint32;
(*   %conv4.i.6.4.4 = zext i8 %conv5.i.5.4.4 to i32 *)
cast v_conv4_i_6_4_4@uint32 v_conv5_i_5_4_4@uint8;
(*   %shr.i.6.4.4 = ashr i32 %conv4.i.6.4.4, 1 *)
(* You may need to modify here *)
split v_shr_i_6_4_4 tmp_to_be_used v_conv4_i_6_4_4 1;
(*   %conv5.i.6.4.4 = trunc i32 %shr.i.6.4.4 to i8 *)
split tmp_v_shr_i_6_4_4 v_conv5_i_6_4_4 v_shr_i_6_4_4 8;
vpc v_conv5_i_6_4_4@uint8 v_conv5_i_6_4_4@uint32;
(*   %conv6.i.6.4.4 = zext i8 %conv7.i.5.4.4 to i32 *)
cast v_conv6_i_6_4_4@uint32 v_conv7_i_5_4_4@uint8;
(*   %shl.i.6.4.4 = shl i32 %conv6.i.6.4.4, 1 *)
shls discard_174 v_shl_i_6_4_4 v_conv6_i_6_4_4 1;
(*   %conv7.i.6.4.4 = trunc i32 %shl.i.6.4.4 to i8 *)
split tmp_v_shl_i_6_4_4 v_conv7_i_6_4_4 v_shl_i_6_4_4 8;
vpc v_conv7_i_6_4_4@uint8 v_conv7_i_6_4_4@uint32;
(*   %conv.i.7.4.4 = zext i8 %conv5.i.6.4.4 to i32 *)
cast v_conv_i_7_4_4@uint32 v_conv5_i_6_4_4@uint8;
(*   %and.i.7.4.4 = and i32 %conv.i.7.4.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_4_4 v_conv_i_7_4_4 (0x1)@uint32;
(*   %conv1.i.7.4.4 = zext i8 %conv7.i.6.4.4 to i32 *)
cast v_conv1_i_7_4_4@uint32 v_conv7_i_6_4_4@uint8;
(*   %mul.i.7.4.4 = mul nsw i32 %and.i.7.4.4, %conv1.i.7.4.4 *)
mul v_mul_i_7_4_4 v_and_i_7_4_4 v_conv1_i_7_4_4;
(*   %conv2.i.7.4.4 = zext i8 %conv3.i.6.4.4 to i32 *)
cast v_conv2_i_7_4_4@uint32 v_conv3_i_6_4_4@uint8;
(*   %xor.i.7.4.4 = xor i32 %conv2.i.7.4.4, %mul.i.7.4.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_4_4 v_conv2_i_7_4_4 v_mul_i_7_4_4;
(*   %conv3.i.7.4.4 = trunc i32 %xor.i.7.4.4 to i8 *)
split tmp_v_xor_i_7_4_4 v_conv3_i_7_4_4 v_xor_i_7_4_4 8;
vpc v_conv3_i_7_4_4@uint8 v_conv3_i_7_4_4@uint32;
(*   %arrayidx7.4.4 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 24 *)
(*   store i8 %conv3.i.7.4.4, i8* %arrayidx7.4.4, align 1 *)
mov alpha_24 v_conv3_i_7_4_4;
(*   %scevgep38 = getelementptr i8, i8* %r, i64 1 *)
(*   %arrayidx18 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 0 *)
(*   %30 = load i8, i8* %arrayidx18, align 1 *)
mov v30 alpha_0;
(*   store i8 %30, i8* %c, align 1 *)
mov c_0 v30;
(*   %arrayidx29 = getelementptr inbounds i8, i8* %r, i64 4 *)
(*   %31 = load i8, i8* %arrayidx29, align 1 *)
mov v31 r_4;
(*   %conv = zext i8 %31 to i32 *)
cast v_conv@uint32 v31@uint8;
(*   %arrayidx33 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 4 *)
(*   %32 = load i8, i8* %arrayidx33, align 1 *)
mov v32 alpha_4;
(*   %conv34 = zext i8 %32 to i32 *)
cast v_conv34@uint32 v32@uint8;
(*   %xor = xor i32 %conv, %conv34 *)
(* You may need to modify here *)
xor uint32 v_xor v_conv v_conv34;
(*   %arrayidx38 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 20 *)
(*   %33 = load i8, i8* %arrayidx38, align 1 *)
mov v33 alpha_20;
(*   %conv39 = zext i8 %33 to i32 *)
cast v_conv39@uint32 v33@uint8;
(*   %xor40 = xor i32 %xor, %conv39 *)
(* You may need to modify here *)
xor uint32 v_xor40 v_xor v_conv39;
(*   %arrayidx42 = getelementptr inbounds i8, i8* %rr, i64 3 *)
(*   %34 = load i8, i8* %arrayidx42, align 1 *)
mov v34 rr_3;
(*   %conv43 = zext i8 %34 to i32 *)
cast v_conv43@uint32 v34@uint8;
(*   %xor44 = xor i32 %xor40, %conv43 *)
(* You may need to modify here *)
xor uint32 v_xor44 v_xor40 v_conv43;
(*   %arrayidx49 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 3 *)
(*   %35 = load i8, i8* %arrayidx49, align 1 *)
mov v35 alpha_3;
(*   %conv50 = zext i8 %35 to i32 *)
cast v_conv50@uint32 v35@uint8;
(*   %xor51 = xor i32 %xor44, %conv50 *)
(* You may need to modify here *)
xor uint32 v_xor51 v_xor44 v_conv50;
(*   %arrayidx56 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 15 *)
(*   %36 = load i8, i8* %arrayidx56, align 1 *)
mov v36 alpha_15;
(*   %conv57 = zext i8 %36 to i32 *)
cast v_conv57@uint32 v36@uint8;
(*   %xor58 = xor i32 %xor51, %conv57 *)
(* You may need to modify here *)
xor uint32 v_xor58 v_xor51 v_conv57;
(*   %conv59 = trunc i32 %xor58 to i8 *)
split tmp_v_xor58 v_conv59 v_xor58 8;
vpc v_conv59@uint8 v_conv59@uint32;
(*   %arrayidx63 = getelementptr inbounds [25 x i8], [25 x i8]* %t, i64 0, i64 4 *)
(*   store i8 %conv59, i8* %arrayidx63, align 1 *)
mov t_4 v_conv59;
(*   %arrayidx67 = getelementptr inbounds [25 x i8], [25 x i8]* %t, i64 0, i64 4 *)
(*   %37 = load i8, i8* %arrayidx67, align 1 *)
mov v37 t_4;
(*   %conv68 = zext i8 %37 to i32 *)
cast v_conv68@uint32 v37@uint8;
(*   %38 = load i8, i8* %c, align 1 *)
mov v38 c_0;
(*   %conv71 = zext i8 %38 to i32 *)
cast v_conv71@uint32 v38@uint8;
(*   %xor72 = xor i32 %conv71, %conv68 *)
(* You may need to modify here *)
xor uint32 v_xor72 v_conv71 v_conv68;
(*   %conv73 = trunc i32 %xor72 to i8 *)
split tmp_v_xor72 v_conv73 v_xor72 8;
vpc v_conv73@uint8 v_conv73@uint32;
(*   store i8 %conv73, i8* %c, align 1 *)
mov c_0 v_conv73;
(*   %arrayidx29.1 = getelementptr inbounds i8, i8* %r, i64 2 *)
(*   %39 = load i8, i8* %arrayidx29.1, align 1 *)
mov v39 r_2;
(*   %conv.1 = zext i8 %39 to i32 *)
cast v_conv_1@uint32 v39@uint8;
(*   %arrayidx33.1 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 2 *)
(*   %40 = load i8, i8* %arrayidx33.1, align 1 *)
mov v40 alpha_2;
(*   %conv34.1 = zext i8 %40 to i32 *)
cast v_conv34_1@uint32 v40@uint8;
(*   %xor.1 = xor i32 %conv.1, %conv34.1 *)
(* You may need to modify here *)
xor uint32 v_xor_1 v_conv_1 v_conv34_1;
(*   %arrayidx38.1 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 10 *)
(*   %41 = load i8, i8* %arrayidx38.1, align 1 *)
mov v41 alpha_10;
(*   %conv39.1 = zext i8 %41 to i32 *)
cast v_conv39_1@uint32 v41@uint8;
(*   %xor40.1 = xor i32 %xor.1, %conv39.1 *)
(* You may need to modify here *)
xor uint32 v_xor40_1 v_xor_1 v_conv39_1;
(*   %arrayidx42.1 = getelementptr inbounds i8, i8* %rr, i64 1 *)
(*   %42 = load i8, i8* %arrayidx42.1, align 1 *)
mov v42 rr_1;
(*   %conv43.1 = zext i8 %42 to i32 *)
cast v_conv43_1@uint32 v42@uint8;
(*   %xor44.1 = xor i32 %xor40.1, %conv43.1 *)
(* You may need to modify here *)
xor uint32 v_xor44_1 v_xor40_1 v_conv43_1;
(*   %arrayidx49.1 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 1 *)
(*   %43 = load i8, i8* %arrayidx49.1, align 1 *)
mov v43 alpha_1;
(*   %conv50.1 = zext i8 %43 to i32 *)
cast v_conv50_1@uint32 v43@uint8;
(*   %xor51.1 = xor i32 %xor44.1, %conv50.1 *)
(* You may need to modify here *)
xor uint32 v_xor51_1 v_xor44_1 v_conv50_1;
(*   %arrayidx56.1 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 5 *)
(*   %44 = load i8, i8* %arrayidx56.1, align 1 *)
mov v44 alpha_5;
(*   %conv57.1 = zext i8 %44 to i32 *)
cast v_conv57_1@uint32 v44@uint8;
(*   %xor58.1 = xor i32 %xor51.1, %conv57.1 *)
(* You may need to modify here *)
xor uint32 v_xor58_1 v_xor51_1 v_conv57_1;
(*   %conv59.1 = trunc i32 %xor58.1 to i8 *)
split tmp_v_xor58_1 v_conv59_1 v_xor58_1 8;
vpc v_conv59_1@uint8 v_conv59_1@uint32;
(*   %arrayidx63.1 = getelementptr inbounds [25 x i8], [25 x i8]* %t, i64 0, i64 2 *)
(*   store i8 %conv59.1, i8* %arrayidx63.1, align 1 *)
mov t_2 v_conv59_1;
(*   %arrayidx67.1 = getelementptr inbounds [25 x i8], [25 x i8]* %t, i64 0, i64 2 *)
(*   %45 = load i8, i8* %arrayidx67.1, align 1 *)
mov v45 t_2;
(*   %conv68.1 = zext i8 %45 to i32 *)
cast v_conv68_1@uint32 v45@uint8;
(*   %46 = load i8, i8* %c, align 1 *)
mov v46 c_0;
(*   %conv71.1 = zext i8 %46 to i32 *)
cast v_conv71_1@uint32 v46@uint8;
(*   %xor72.1 = xor i32 %conv71.1, %conv68.1 *)
(* You may need to modify here *)
xor uint32 v_xor72_1 v_conv71_1 v_conv68_1;
(*   %conv73.1 = trunc i32 %xor72.1 to i8 *)
split tmp_v_xor72_1 v_conv73_1 v_xor72_1 8;
vpc v_conv73_1@uint8 v_conv73_1@uint32;
(*   store i8 %conv73.1, i8* %c, align 1 *)
mov c_0 v_conv73_1;
(*   %arrayidx18.1 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 6 *)
(*   %47 = load i8, i8* %arrayidx18.1, align 1 *)
mov v47 alpha_6;
(*   %arrayidx20.1 = getelementptr inbounds i8, i8* %c, i64 1 *)
(*   store i8 %47, i8* %arrayidx20.1, align 1 *)
mov c_1 v47;
(*   %arrayidx70.1 = getelementptr inbounds i8, i8* %c, i64 1 *)
(*   %arrayidx29.1501 = getelementptr inbounds i8, i8* %r, i64 9 *)
(*   %48 = load i8, i8* %arrayidx29.1501, align 1 *)
mov v48 r_9;
(*   %conv.1502 = zext i8 %48 to i32 *)
cast v_conv_1502@uint32 v48@uint8;
(*   %arrayidx33.1504 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 9 *)
(*   %49 = load i8, i8* %arrayidx33.1504, align 1 *)
mov v49 alpha_9;
(*   %conv34.1505 = zext i8 %49 to i32 *)
cast v_conv34_1505@uint32 v49@uint8;
(*   %xor.1506 = xor i32 %conv.1502, %conv34.1505 *)
(* You may need to modify here *)
xor uint32 v_xor_1506 v_conv_1502 v_conv34_1505;
(*   %arrayidx38.1508 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 21 *)
(*   %50 = load i8, i8* %arrayidx38.1508, align 1 *)
mov v50 alpha_21;
(*   %conv39.1509 = zext i8 %50 to i32 *)
cast v_conv39_1509@uint32 v50@uint8;
(*   %xor40.1510 = xor i32 %xor.1506, %conv39.1509 *)
(* You may need to modify here *)
xor uint32 v_xor40_1510 v_xor_1506 v_conv39_1509;
(*   %arrayidx42.1511 = getelementptr inbounds i8, i8* %rr, i64 3 *)
(*   %51 = load i8, i8* %arrayidx42.1511, align 1 *)
mov v51 rr_3;
(*   %conv43.1512 = zext i8 %51 to i32 *)
cast v_conv43_1512@uint32 v51@uint8;
(*   %xor44.1513 = xor i32 %xor40.1510, %conv43.1512 *)
(* You may need to modify here *)
xor uint32 v_xor44_1513 v_xor40_1510 v_conv43_1512;
(*   %arrayidx49.1515 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 8 *)
(*   %52 = load i8, i8* %arrayidx49.1515, align 1 *)
mov v52 alpha_8;
(*   %conv50.1516 = zext i8 %52 to i32 *)
cast v_conv50_1516@uint32 v52@uint8;
(*   %xor51.1517 = xor i32 %xor44.1513, %conv50.1516 *)
(* You may need to modify here *)
xor uint32 v_xor51_1517 v_xor44_1513 v_conv50_1516;
(*   %arrayidx56.1519 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 16 *)
(*   %53 = load i8, i8* %arrayidx56.1519, align 1 *)
mov v53 alpha_16;
(*   %conv57.1520 = zext i8 %53 to i32 *)
cast v_conv57_1520@uint32 v53@uint8;
(*   %xor58.1521 = xor i32 %xor51.1517, %conv57.1520 *)
(* You may need to modify here *)
xor uint32 v_xor58_1521 v_xor51_1517 v_conv57_1520;
(*   %conv59.1522 = trunc i32 %xor58.1521 to i8 *)
split tmp_v_xor58_1521 v_conv59_1522 v_xor58_1521 8;
vpc v_conv59_1522@uint8 v_conv59_1522@uint32;
(*   %arrayidx63.1524 = getelementptr inbounds [25 x i8], [25 x i8]* %t, i64 0, i64 9 *)
(*   store i8 %conv59.1522, i8* %arrayidx63.1524, align 1 *)
mov t_9 v_conv59_1522;
(*   %arrayidx67.1526 = getelementptr inbounds [25 x i8], [25 x i8]* %t, i64 0, i64 9 *)
(*   %54 = load i8, i8* %arrayidx67.1526, align 1 *)
mov v54 t_9;
(*   %conv68.1527 = zext i8 %54 to i32 *)
cast v_conv68_1527@uint32 v54@uint8;
(*   %55 = load i8, i8* %arrayidx70.1, align 1 *)
mov v55 c_1;
(*   %conv71.1528 = zext i8 %55 to i32 *)
cast v_conv71_1528@uint32 v55@uint8;
(*   %xor72.1529 = xor i32 %conv71.1528, %conv68.1527 *)
(* You may need to modify here *)
xor uint32 v_xor72_1529 v_conv71_1528 v_conv68_1527;
(*   %conv73.1530 = trunc i32 %xor72.1529 to i8 *)
split tmp_v_xor72_1529 v_conv73_1530 v_xor72_1529 8;
vpc v_conv73_1530@uint8 v_conv73_1530@uint32;
(*   store i8 %conv73.1530, i8* %arrayidx70.1, align 1 *)
mov c_1 v_conv73_1530;
(*   %arrayidx83.1 = getelementptr inbounds i8, i8* %r, i64 7 *)
(*   %56 = load i8, i8* %arrayidx83.1, align 1 *)
mov v56 r_7;
(*   %conv84.1 = zext i8 %56 to i32 *)
cast v_conv84_1@uint32 v56@uint8;
(*   %arrayidx89.1 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 7 *)
(*   %57 = load i8, i8* %arrayidx89.1, align 1 *)
mov v57 alpha_7;
(*   %conv90.1 = zext i8 %57 to i32 *)
cast v_conv90_1@uint32 v57@uint8;
(*   %xor91.1 = xor i32 %conv84.1, %conv90.1 *)
(* You may need to modify here *)
xor uint32 v_xor91_1 v_conv84_1 v_conv90_1;
(*   %arrayidx96.1 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 11 *)
(*   %58 = load i8, i8* %arrayidx96.1, align 1 *)
mov v58 alpha_11;
(*   %conv97.1 = zext i8 %58 to i32 *)
cast v_conv97_1@uint32 v58@uint8;
(*   %xor98.1 = xor i32 %xor91.1, %conv97.1 *)
(* You may need to modify here *)
xor uint32 v_xor98_1 v_xor91_1 v_conv97_1;
(*   %conv99.1 = trunc i32 %xor98.1 to i8 *)
split tmp_v_xor98_1 v_conv99_1 v_xor98_1 8;
vpc v_conv99_1@uint8 v_conv99_1@uint32;
(*   %arrayidx104.1 = getelementptr inbounds [25 x i8], [25 x i8]* %t, i64 0, i64 7 *)
(*   store i8 %conv99.1, i8* %arrayidx104.1, align 1 *)
mov t_7 v_conv99_1;
(*   %arrayidx109.1 = getelementptr inbounds [25 x i8], [25 x i8]* %t, i64 0, i64 7 *)
(*   %59 = load i8, i8* %arrayidx109.1, align 1 *)
mov v59 t_7;
(*   %conv110.1 = zext i8 %59 to i32 *)
cast v_conv110_1@uint32 v59@uint8;
(*   %arrayidx112.1 = getelementptr inbounds i8, i8* %c, i64 1 *)
(*   %60 = load i8, i8* %arrayidx112.1, align 1 *)
mov v60 c_1;
(*   %conv113.1 = zext i8 %60 to i32 *)
cast v_conv113_1@uint32 v60@uint8;
(*   %xor114.1 = xor i32 %conv113.1, %conv110.1 *)
(* You may need to modify here *)
xor uint32 v_xor114_1 v_conv113_1 v_conv110_1;
(*   %conv115.1 = trunc i32 %xor114.1 to i8 *)
split tmp_v_xor114_1 v_conv115_1 v_xor114_1 8;
vpc v_conv115_1@uint8 v_conv115_1@uint32;
(*   store i8 %conv115.1, i8* %arrayidx112.1, align 1 *)
mov c_1 v_conv115_1;
(*   %arrayidx121.1 = getelementptr inbounds i8, i8* %rr, i64 1 *)
(*   %61 = load i8, i8* %arrayidx121.1, align 1 *)
mov v61 rr_1;
(*   %conv122.1 = zext i8 %61 to i32 *)
cast v_conv122_1@uint32 v61@uint8;
(*   %arrayidx124.1 = getelementptr inbounds i8, i8* %c, i64 1 *)
(*   %62 = load i8, i8* %arrayidx124.1, align 1 *)
mov v62 c_1;
(*   %conv125.1 = zext i8 %62 to i32 *)
cast v_conv125_1@uint32 v62@uint8;
(*   %xor126.1 = xor i32 %conv125.1, %conv122.1 *)
(* You may need to modify here *)
xor uint32 v_xor126_1 v_conv125_1 v_conv122_1;
(*   %conv127.1 = trunc i32 %xor126.1 to i8 *)
split tmp_v_xor126_1 v_conv127_1 v_xor126_1 8;
vpc v_conv127_1@uint8 v_conv127_1@uint32;
(*   store i8 %conv127.1, i8* %arrayidx124.1, align 1 *)
mov c_1 v_conv127_1;
(*   %arrayidx18.2 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 12 *)
(*   %63 = load i8, i8* %arrayidx18.2, align 1 *)
mov v63 alpha_12;
(*   %arrayidx20.2 = getelementptr inbounds i8, i8* %c, i64 2 *)
(*   store i8 %63, i8* %arrayidx20.2, align 1 *)
mov c_2 v63;
(*   %arrayidx70.2 = getelementptr inbounds i8, i8* %c, i64 2 *)
(*   %arrayidx29.2 = getelementptr inbounds i8, i8* %r, i64 14 *)
(*   %64 = load i8, i8* %arrayidx29.2, align 1 *)
mov v64 r_14;
(*   %conv.2 = zext i8 %64 to i32 *)
cast v_conv_2@uint32 v64@uint8;
(*   %arrayidx33.2 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 14 *)
(*   %65 = load i8, i8* %arrayidx33.2, align 1 *)
mov v65 alpha_14;
(*   %conv34.2 = zext i8 %65 to i32 *)
cast v_conv34_2@uint32 v65@uint8;
(*   %xor.2 = xor i32 %conv.2, %conv34.2 *)
(* You may need to modify here *)
xor uint32 v_xor_2 v_conv_2 v_conv34_2;
(*   %arrayidx38.2 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 22 *)
(*   %66 = load i8, i8* %arrayidx38.2, align 1 *)
mov v66 alpha_22;
(*   %conv39.2 = zext i8 %66 to i32 *)
cast v_conv39_2@uint32 v66@uint8;
(*   %xor40.2 = xor i32 %xor.2, %conv39.2 *)
(* You may need to modify here *)
xor uint32 v_xor40_2 v_xor_2 v_conv39_2;
(*   %arrayidx42.2 = getelementptr inbounds i8, i8* %rr, i64 3 *)
(*   %67 = load i8, i8* %arrayidx42.2, align 1 *)
mov v67 rr_3;
(*   %conv43.2 = zext i8 %67 to i32 *)
cast v_conv43_2@uint32 v67@uint8;
(*   %xor44.2 = xor i32 %xor40.2, %conv43.2 *)
(* You may need to modify here *)
xor uint32 v_xor44_2 v_xor40_2 v_conv43_2;
(*   %arrayidx49.2 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 13 *)
(*   %68 = load i8, i8* %arrayidx49.2, align 1 *)
mov v68 alpha_13;
(*   %conv50.2 = zext i8 %68 to i32 *)
cast v_conv50_2@uint32 v68@uint8;
(*   %xor51.2 = xor i32 %xor44.2, %conv50.2 *)
(* You may need to modify here *)
xor uint32 v_xor51_2 v_xor44_2 v_conv50_2;
(*   %arrayidx56.2 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 17 *)
(*   %69 = load i8, i8* %arrayidx56.2, align 1 *)
mov v69 alpha_17;
(*   %conv57.2 = zext i8 %69 to i32 *)
cast v_conv57_2@uint32 v69@uint8;
(*   %xor58.2 = xor i32 %xor51.2, %conv57.2 *)
(* You may need to modify here *)
xor uint32 v_xor58_2 v_xor51_2 v_conv57_2;
(*   %conv59.2 = trunc i32 %xor58.2 to i8 *)
split tmp_v_xor58_2 v_conv59_2 v_xor58_2 8;
vpc v_conv59_2@uint8 v_conv59_2@uint32;
(*   %arrayidx63.2 = getelementptr inbounds [25 x i8], [25 x i8]* %t, i64 0, i64 14 *)
(*   store i8 %conv59.2, i8* %arrayidx63.2, align 1 *)
mov t_14 v_conv59_2;
(*   %arrayidx67.2 = getelementptr inbounds [25 x i8], [25 x i8]* %t, i64 0, i64 14 *)
(*   %70 = load i8, i8* %arrayidx67.2, align 1 *)
mov v70 t_14;
(*   %conv68.2 = zext i8 %70 to i32 *)
cast v_conv68_2@uint32 v70@uint8;
(*   %71 = load i8, i8* %arrayidx70.2, align 1 *)
mov v71 c_2;
(*   %conv71.2 = zext i8 %71 to i32 *)
cast v_conv71_2@uint32 v71@uint8;
(*   %xor72.2 = xor i32 %conv71.2, %conv68.2 *)
(* You may need to modify here *)
xor uint32 v_xor72_2 v_conv71_2 v_conv68_2;
(*   %conv73.2 = trunc i32 %xor72.2 to i8 *)
split tmp_v_xor72_2 v_conv73_2 v_xor72_2 8;
vpc v_conv73_2@uint8 v_conv73_2@uint32;
(*   store i8 %conv73.2, i8* %arrayidx70.2, align 1 *)
mov c_2 v_conv73_2;
(*   %arrayidx140.2 = getelementptr inbounds i8, i8* %c, i64 2 *)
(*   %scevgep39.2 = getelementptr i8, i8* %scevgep38, i64 6 *)
(*   %72 = load i8, i8* %scevgep39.2, align 1 *)
mov v72 r_7;
(*   %conv138.2 = zext i8 %72 to i32 *)
cast v_conv138_2@uint32 v72@uint8;
(*   %73 = load i8, i8* %arrayidx140.2, align 1 *)
mov v73 c_2;
(*   %conv141.2 = zext i8 %73 to i32 *)
cast v_conv141_2@uint32 v73@uint8;
(*   %xor142.2 = xor i32 %conv141.2, %conv138.2 *)
(* You may need to modify here *)
xor uint32 v_xor142_2 v_conv141_2 v_conv138_2;
(*   %conv143.2 = trunc i32 %xor142.2 to i8 *)
split tmp_v_xor142_2 v_conv143_2 v_xor142_2 8;
vpc v_conv143_2@uint8 v_conv143_2@uint32;
(*   store i8 %conv143.2, i8* %arrayidx140.2, align 1 *)
mov c_2 v_conv143_2;
(*   %scevgep41.2 = getelementptr i8, i8* %scevgep39.2, i64 -5 *)
(*   %74 = load i8, i8* %scevgep41.2, align 1 *)
mov v74 r_2;
(*   %conv138.1.2 = zext i8 %74 to i32 *)
cast v_conv138_1_2@uint32 v74@uint8;
(*   %75 = load i8, i8* %arrayidx140.2, align 1 *)
mov v75 c_2;
(*   %conv141.1.2 = zext i8 %75 to i32 *)
cast v_conv141_1_2@uint32 v75@uint8;
(*   %xor142.1.2 = xor i32 %conv141.1.2, %conv138.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor142_1_2 v_conv141_1_2 v_conv138_1_2;
(*   %conv143.1.2 = trunc i32 %xor142.1.2 to i8 *)
split tmp_v_xor142_1_2 v_conv143_1_2 v_xor142_1_2 8;
vpc v_conv143_1_2@uint8 v_conv143_1_2@uint32;
(*   store i8 %conv143.1.2, i8* %arrayidx140.2, align 1 *)
mov c_2 v_conv143_1_2;
(*   %arrayidx18.3 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 18 *)
(*   %76 = load i8, i8* %arrayidx18.3, align 1 *)
mov v76 alpha_18;
(*   %arrayidx20.3 = getelementptr inbounds i8, i8* %c, i64 3 *)
(*   store i8 %76, i8* %arrayidx20.3, align 1 *)
mov c_3 v76;
(*   %arrayidx83.3 = getelementptr inbounds i8, i8* %r, i64 19 *)
(*   %77 = load i8, i8* %arrayidx83.3, align 1 *)
mov v77 r_19;
(*   %conv84.3 = zext i8 %77 to i32 *)
cast v_conv84_3@uint32 v77@uint8;
(*   %arrayidx89.3 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 19 *)
(*   %78 = load i8, i8* %arrayidx89.3, align 1 *)
mov v78 alpha_19;
(*   %conv90.3 = zext i8 %78 to i32 *)
cast v_conv90_3@uint32 v78@uint8;
(*   %xor91.3 = xor i32 %conv84.3, %conv90.3 *)
(* You may need to modify here *)
xor uint32 v_xor91_3 v_conv84_3 v_conv90_3;
(*   %arrayidx96.3 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 23 *)
(*   %79 = load i8, i8* %arrayidx96.3, align 1 *)
mov v79 alpha_23;
(*   %conv97.3 = zext i8 %79 to i32 *)
cast v_conv97_3@uint32 v79@uint8;
(*   %xor98.3 = xor i32 %xor91.3, %conv97.3 *)
(* You may need to modify here *)
xor uint32 v_xor98_3 v_xor91_3 v_conv97_3;
(*   %conv99.3 = trunc i32 %xor98.3 to i8 *)
split tmp_v_xor98_3 v_conv99_3 v_xor98_3 8;
vpc v_conv99_3@uint8 v_conv99_3@uint32;
(*   %arrayidx104.3 = getelementptr inbounds [25 x i8], [25 x i8]* %t, i64 0, i64 19 *)
(*   store i8 %conv99.3, i8* %arrayidx104.3, align 1 *)
mov t_19 v_conv99_3;
(*   %arrayidx109.3 = getelementptr inbounds [25 x i8], [25 x i8]* %t, i64 0, i64 19 *)
(*   %80 = load i8, i8* %arrayidx109.3, align 1 *)
mov v80 t_19;
(*   %conv110.3 = zext i8 %80 to i32 *)
cast v_conv110_3@uint32 v80@uint8;
(*   %arrayidx112.3 = getelementptr inbounds i8, i8* %c, i64 3 *)
(*   %81 = load i8, i8* %arrayidx112.3, align 1 *)
mov v81 c_3;
(*   %conv113.3 = zext i8 %81 to i32 *)
cast v_conv113_3@uint32 v81@uint8;
(*   %xor114.3 = xor i32 %conv113.3, %conv110.3 *)
(* You may need to modify here *)
xor uint32 v_xor114_3 v_conv113_3 v_conv110_3;
(*   %conv115.3 = trunc i32 %xor114.3 to i8 *)
split tmp_v_xor114_3 v_conv115_3 v_xor114_3 8;
vpc v_conv115_3@uint8 v_conv115_3@uint32;
(*   store i8 %conv115.3, i8* %arrayidx112.3, align 1 *)
mov c_3 v_conv115_3;
(*   %arrayidx121.3 = getelementptr inbounds i8, i8* %rr, i64 3 *)
(*   %82 = load i8, i8* %arrayidx121.3, align 1 *)
mov v82 rr_3;
(*   %conv122.3 = zext i8 %82 to i32 *)
cast v_conv122_3@uint32 v82@uint8;
(*   %arrayidx124.3 = getelementptr inbounds i8, i8* %c, i64 3 *)
(*   %83 = load i8, i8* %arrayidx124.3, align 1 *)
mov v83 c_3;
(*   %conv125.3 = zext i8 %83 to i32 *)
cast v_conv125_3@uint32 v83@uint8;
(*   %xor126.3 = xor i32 %conv125.3, %conv122.3 *)
(* You may need to modify here *)
xor uint32 v_xor126_3 v_conv125_3 v_conv122_3;
(*   %conv127.3 = trunc i32 %xor126.3 to i8 *)
split tmp_v_xor126_3 v_conv127_3 v_xor126_3 8;
vpc v_conv127_3@uint8 v_conv127_3@uint32;
(*   store i8 %conv127.3, i8* %arrayidx124.3, align 1 *)
mov c_3 v_conv127_3;
(*   %arrayidx18.4 = getelementptr inbounds [25 x i8], [25 x i8]* %alpha, i64 0, i64 24 *)
(*   %84 = load i8, i8* %arrayidx18.4, align 1 *)
mov v84 alpha_24;
(*   %arrayidx20.4 = getelementptr inbounds i8, i8* %c, i64 4 *)
(*   store i8 %84, i8* %arrayidx20.4, align 1 *)
mov c_4 v84;
(*   %arrayidx140.4 = getelementptr inbounds i8, i8* %c, i64 4 *)
(*   %scevgep39.4 = getelementptr i8, i8* %scevgep38, i64 18 *)
(*   %85 = load i8, i8* %scevgep39.4, align 1 *)
mov v85 r_19;
(*   %conv138.4 = zext i8 %85 to i32 *)
cast v_conv138_4@uint32 v85@uint8;
(*   %86 = load i8, i8* %arrayidx140.4, align 1 *)
mov v86 c_4;
(*   %conv141.4 = zext i8 %86 to i32 *)
cast v_conv141_4@uint32 v86@uint8;
(*   %xor142.4 = xor i32 %conv141.4, %conv138.4 *)
(* You may need to modify here *)
xor uint32 v_xor142_4 v_conv141_4 v_conv138_4;
(*   %conv143.4 = trunc i32 %xor142.4 to i8 *)
split tmp_v_xor142_4 v_conv143_4 v_xor142_4 8;
vpc v_conv143_4@uint8 v_conv143_4@uint32;
(*   store i8 %conv143.4, i8* %arrayidx140.4, align 1 *)
mov c_4 v_conv143_4;
(*   %scevgep41.4 = getelementptr i8, i8* %scevgep39.4, i64 -5 *)
(*   %87 = load i8, i8* %scevgep41.4, align 1 *)
mov v87 r_14;
(*   %conv138.1.4 = zext i8 %87 to i32 *)
cast v_conv138_1_4@uint32 v87@uint8;
(*   %88 = load i8, i8* %arrayidx140.4, align 1 *)
mov v88 c_4;
(*   %conv141.1.4 = zext i8 %88 to i32 *)
cast v_conv141_1_4@uint32 v88@uint8;
(*   %xor142.1.4 = xor i32 %conv141.1.4, %conv138.1.4 *)
(* You may need to modify here *)
xor uint32 v_xor142_1_4 v_conv141_1_4 v_conv138_1_4;
(*   %conv143.1.4 = trunc i32 %xor142.1.4 to i8 *)
split tmp_v_xor142_1_4 v_conv143_1_4 v_xor142_1_4 8;
vpc v_conv143_1_4@uint8 v_conv143_1_4@uint32;
(*   store i8 %conv143.1.4, i8* %arrayidx140.4, align 1 *)
mov c_4 v_conv143_1_4;
(*   %scevgep41.1.4 = getelementptr i8, i8* %scevgep41.4, i64 -5 *)
(*   %89 = load i8, i8* %scevgep41.1.4, align 1 *)
mov v89 r_9;
(*   %conv138.1494.4 = zext i8 %89 to i32 *)
cast v_conv138_1494_4@uint32 v89@uint8;
(*   %90 = load i8, i8* %arrayidx140.4, align 1 *)
mov v90 c_4;
(*   %conv141.1495.4 = zext i8 %90 to i32 *)
cast v_conv141_1495_4@uint32 v90@uint8;
(*   %xor142.1496.4 = xor i32 %conv141.1495.4, %conv138.1494.4 *)
(* You may need to modify here *)
xor uint32 v_xor142_1496_4 v_conv141_1495_4 v_conv138_1494_4;
(*   %conv143.1497.4 = trunc i32 %xor142.1496.4 to i8 *)
split tmp_v_xor142_1496_4 v_conv143_1497_4 v_xor142_1496_4 8;
vpc v_conv143_1497_4@uint8 v_conv143_1497_4@uint32;
(*   store i8 %conv143.1497.4, i8* %arrayidx140.4, align 1 *)
mov c_4 v_conv143_1497_4;
(*   %scevgep41.1499.4 = getelementptr i8, i8* %scevgep41.1.4, i64 -5 *)
(*   %91 = load i8, i8* %scevgep41.1499.4, align 1 *)
mov v91 r_4;
(*   %conv138.1.1.4 = zext i8 %91 to i32 *)
cast v_conv138_1_1_4@uint32 v91@uint8;
(*   %92 = load i8, i8* %arrayidx140.4, align 1 *)
mov v92 c_4;
(*   %conv141.1.1.4 = zext i8 %92 to i32 *)
cast v_conv141_1_1_4@uint32 v92@uint8;
(*   %xor142.1.1.4 = xor i32 %conv141.1.1.4, %conv138.1.1.4 *)
(* You may need to modify here *)
xor uint32 v_xor142_1_1_4 v_conv141_1_1_4 v_conv138_1_1_4;
(*   %conv143.1.1.4 = trunc i32 %xor142.1.1.4 to i8 *)
split tmp_v_xor142_1_1_4 v_conv143_1_1_4 v_xor142_1_1_4 8;
vpc v_conv143_1_1_4@uint8 v_conv143_1_1_4@uint32;
(*   store i8 %conv143.1.1.4, i8* %arrayidx140.4, align 1 *)
mov c_4 v_conv143_1_1_4;
(*   %93 = load i8, i8* %a, align 1 *)
mov v93 a_0;
(*   %scevgep30.1 = getelementptr i8, i8* %a, i64 1 *)
(*   %94 = load i8, i8* %scevgep30.1, align 1 *)
mov v94 a_1;
(*   %conv.i.i165.1 = zext i8 %94 to i32 *)
cast v_conv_i_i165_1@uint32 v94@uint8;
(*   %conv1.i.i166.1 = zext i8 %93 to i32 *)
cast v_conv1_i_i166_1@uint32 v93@uint8;
(*   %xor.i.i167.1 = xor i32 %conv1.i.i166.1, %conv.i.i165.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i167_1 v_conv1_i_i166_1 v_conv_i_i165_1;
(*   %conv2.i.i168.1 = trunc i32 %xor.i.i167.1 to i8 *)
split tmp_v_xor_i_i167_1 v_conv2_i_i168_1 v_xor_i_i167_1 8;
vpc v_conv2_i_i168_1@uint8 v_conv2_i_i168_1@uint32;
(*   %scevgep30.2 = getelementptr i8, i8* %a, i64 2 *)
(*   %95 = load i8, i8* %scevgep30.2, align 1 *)
mov v95 a_2;
(*   %conv.i.i165.2 = zext i8 %95 to i32 *)
cast v_conv_i_i165_2@uint32 v95@uint8;
(*   %conv1.i.i166.2 = zext i8 %conv2.i.i168.1 to i32 *)
cast v_conv1_i_i166_2@uint32 v_conv2_i_i168_1@uint8;
(*   %xor.i.i167.2 = xor i32 %conv1.i.i166.2, %conv.i.i165.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i167_2 v_conv1_i_i166_2 v_conv_i_i165_2;
(*   %conv2.i.i168.2 = trunc i32 %xor.i.i167.2 to i8 *)
split tmp_v_xor_i_i167_2 v_conv2_i_i168_2 v_xor_i_i167_2 8;
vpc v_conv2_i_i168_2@uint8 v_conv2_i_i168_2@uint32;
(*   %scevgep30.3 = getelementptr i8, i8* %a, i64 3 *)
(*   %96 = load i8, i8* %scevgep30.3, align 1 *)
mov v96 a_3;
(*   %conv.i.i165.3 = zext i8 %96 to i32 *)
cast v_conv_i_i165_3@uint32 v96@uint8;
(*   %conv1.i.i166.3 = zext i8 %conv2.i.i168.2 to i32 *)
cast v_conv1_i_i166_3@uint32 v_conv2_i_i168_2@uint8;
(*   %xor.i.i167.3 = xor i32 %conv1.i.i166.3, %conv.i.i165.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i167_3 v_conv1_i_i166_3 v_conv_i_i165_3;
(*   %conv2.i.i168.3 = trunc i32 %xor.i.i167.3 to i8 *)
split tmp_v_xor_i_i167_3 v_conv2_i_i168_3 v_xor_i_i167_3 8;
vpc v_conv2_i_i168_3@uint8 v_conv2_i_i168_3@uint32;
(*   %scevgep30.4 = getelementptr i8, i8* %a, i64 4 *)
(*   %97 = load i8, i8* %scevgep30.4, align 1 *)
mov v97 a_4;
(*   %conv.i.i165.4 = zext i8 %97 to i32 *)
cast v_conv_i_i165_4@uint32 v97@uint8;
(*   %conv1.i.i166.4 = zext i8 %conv2.i.i168.3 to i32 *)
cast v_conv1_i_i166_4@uint32 v_conv2_i_i168_3@uint8;
(*   %xor.i.i167.4 = xor i32 %conv1.i.i166.4, %conv.i.i165.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i167_4 v_conv1_i_i166_4 v_conv_i_i165_4;
(*   %conv2.i.i168.4 = trunc i32 %xor.i.i167.4 to i8 *)
split tmp_v_xor_i_i167_4 v_conv2_i_i168_4 v_xor_i_i167_4 8;
vpc v_conv2_i_i168_4@uint8 v_conv2_i_i168_4@uint32;
(*   %98 = load i8, i8* %b, align 1 *)
mov v98 b_0;
(*   %scevgep26.1 = getelementptr i8, i8* %b, i64 1 *)
(*   %99 = load i8, i8* %scevgep26.1, align 1 *)
mov v99 b_1;
(*   %conv.i.i182.1 = zext i8 %99 to i32 *)
cast v_conv_i_i182_1@uint32 v99@uint8;
(*   %conv1.i.i183.1 = zext i8 %98 to i32 *)
cast v_conv1_i_i183_1@uint32 v98@uint8;
(*   %xor.i.i184.1 = xor i32 %conv1.i.i183.1, %conv.i.i182.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i184_1 v_conv1_i_i183_1 v_conv_i_i182_1;
(*   %conv2.i.i185.1 = trunc i32 %xor.i.i184.1 to i8 *)
split tmp_v_xor_i_i184_1 v_conv2_i_i185_1 v_xor_i_i184_1 8;
vpc v_conv2_i_i185_1@uint8 v_conv2_i_i185_1@uint32;
(*   %scevgep26.2 = getelementptr i8, i8* %b, i64 2 *)
(*   %100 = load i8, i8* %scevgep26.2, align 1 *)
mov v100 b_2;
(*   %conv.i.i182.2 = zext i8 %100 to i32 *)
cast v_conv_i_i182_2@uint32 v100@uint8;
(*   %conv1.i.i183.2 = zext i8 %conv2.i.i185.1 to i32 *)
cast v_conv1_i_i183_2@uint32 v_conv2_i_i185_1@uint8;
(*   %xor.i.i184.2 = xor i32 %conv1.i.i183.2, %conv.i.i182.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i184_2 v_conv1_i_i183_2 v_conv_i_i182_2;
(*   %conv2.i.i185.2 = trunc i32 %xor.i.i184.2 to i8 *)
split tmp_v_xor_i_i184_2 v_conv2_i_i185_2 v_xor_i_i184_2 8;
vpc v_conv2_i_i185_2@uint8 v_conv2_i_i185_2@uint32;
(*   %scevgep26.3 = getelementptr i8, i8* %b, i64 3 *)
(*   %101 = load i8, i8* %scevgep26.3, align 1 *)
mov v101 b_3;
(*   %conv.i.i182.3 = zext i8 %101 to i32 *)
cast v_conv_i_i182_3@uint32 v101@uint8;
(*   %conv1.i.i183.3 = zext i8 %conv2.i.i185.2 to i32 *)
cast v_conv1_i_i183_3@uint32 v_conv2_i_i185_2@uint8;
(*   %xor.i.i184.3 = xor i32 %conv1.i.i183.3, %conv.i.i182.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i184_3 v_conv1_i_i183_3 v_conv_i_i182_3;
(*   %conv2.i.i185.3 = trunc i32 %xor.i.i184.3 to i8 *)
split tmp_v_xor_i_i184_3 v_conv2_i_i185_3 v_xor_i_i184_3 8;
vpc v_conv2_i_i185_3@uint8 v_conv2_i_i185_3@uint32;
(*   %scevgep26.4 = getelementptr i8, i8* %b, i64 4 *)
(*   %102 = load i8, i8* %scevgep26.4, align 1 *)
mov v102 b_4;
(*   %conv.i.i182.4 = zext i8 %102 to i32 *)
cast v_conv_i_i182_4@uint32 v102@uint8;
(*   %conv1.i.i183.4 = zext i8 %conv2.i.i185.3 to i32 *)
cast v_conv1_i_i183_4@uint32 v_conv2_i_i185_3@uint8;
(*   %xor.i.i184.4 = xor i32 %conv1.i.i183.4, %conv.i.i182.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i184_4 v_conv1_i_i183_4 v_conv_i_i182_4;
(*   %conv2.i.i185.4 = trunc i32 %xor.i.i184.4 to i8 *)
split tmp_v_xor_i_i184_4 v_conv2_i_i185_4 v_xor_i_i184_4 8;
vpc v_conv2_i_i185_4@uint8 v_conv2_i_i185_4@uint32;
(*   %conv.i195 = zext i8 %conv2.i.i185.4 to i32 *)
cast v_conv_i195@uint32 v_conv2_i_i185_4@uint8;
(*   %and.i196 = and i32 %conv.i195, 1 *)
(* You may need to modify here *)
and uint32 v_and_i196 v_conv_i195 (0x1)@uint32;
(*   %conv1.i197 = zext i8 %conv2.i.i168.4 to i32 *)
cast v_conv1_i197@uint32 v_conv2_i_i168_4@uint8;
(*   %mul.i198 = mul nsw i32 %and.i196, %conv1.i197 *)
mul v_mul_i198 v_and_i196 v_conv1_i197;
(*   %conv3.i201 = trunc i32 %mul.i198 to i8 *)
split tmp_v_mul_i198 v_conv3_i201 v_mul_i198 8;
vpc v_conv3_i201@uint8 v_conv3_i201@uint32;
(*   %conv4.i202 = zext i8 %conv2.i.i185.4 to i32 *)
cast v_conv4_i202@uint32 v_conv2_i_i185_4@uint8;
(*   %shr.i203 = ashr i32 %conv4.i202, 1 *)
(* You may need to modify here *)
split v_shr_i203 tmp_to_be_used v_conv4_i202 1;
(*   %conv5.i204 = trunc i32 %shr.i203 to i8 *)
split tmp_v_shr_i203 v_conv5_i204 v_shr_i203 8;
vpc v_conv5_i204@uint8 v_conv5_i204@uint32;
(*   %conv6.i205 = zext i8 %conv2.i.i168.4 to i32 *)
cast v_conv6_i205@uint32 v_conv2_i_i168_4@uint8;
(*   %shl.i206 = shl i32 %conv6.i205, 1 *)
shls discard_175 v_shl_i206 v_conv6_i205 1;
(*   %conv7.i207 = trunc i32 %shl.i206 to i8 *)
split tmp_v_shl_i206 v_conv7_i207 v_shl_i206 8;
vpc v_conv7_i207@uint8 v_conv7_i207@uint32;
(*   %conv.i195.1 = zext i8 %conv5.i204 to i32 *)
cast v_conv_i195_1@uint32 v_conv5_i204@uint8;
(*   %and.i196.1 = and i32 %conv.i195.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i196_1 v_conv_i195_1 (0x1)@uint32;
(*   %conv1.i197.1 = zext i8 %conv7.i207 to i32 *)
cast v_conv1_i197_1@uint32 v_conv7_i207@uint8;
(*   %mul.i198.1 = mul nsw i32 %and.i196.1, %conv1.i197.1 *)
mul v_mul_i198_1 v_and_i196_1 v_conv1_i197_1;
(*   %conv2.i199.1 = zext i8 %conv3.i201 to i32 *)
cast v_conv2_i199_1@uint32 v_conv3_i201@uint8;
(*   %xor.i200.1 = xor i32 %conv2.i199.1, %mul.i198.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i200_1 v_conv2_i199_1 v_mul_i198_1;
(*   %conv3.i201.1 = trunc i32 %xor.i200.1 to i8 *)
split tmp_v_xor_i200_1 v_conv3_i201_1 v_xor_i200_1 8;
vpc v_conv3_i201_1@uint8 v_conv3_i201_1@uint32;
(*   %conv4.i202.1 = zext i8 %conv5.i204 to i32 *)
cast v_conv4_i202_1@uint32 v_conv5_i204@uint8;
(*   %shr.i203.1 = ashr i32 %conv4.i202.1, 1 *)
(* You may need to modify here *)
split v_shr_i203_1 tmp_to_be_used v_conv4_i202_1 1;
(*   %conv5.i204.1 = trunc i32 %shr.i203.1 to i8 *)
split tmp_v_shr_i203_1 v_conv5_i204_1 v_shr_i203_1 8;
vpc v_conv5_i204_1@uint8 v_conv5_i204_1@uint32;
(*   %conv6.i205.1 = zext i8 %conv7.i207 to i32 *)
cast v_conv6_i205_1@uint32 v_conv7_i207@uint8;
(*   %shl.i206.1 = shl i32 %conv6.i205.1, 1 *)
shls discard_176 v_shl_i206_1 v_conv6_i205_1 1;
(*   %conv7.i207.1 = trunc i32 %shl.i206.1 to i8 *)
split tmp_v_shl_i206_1 v_conv7_i207_1 v_shl_i206_1 8;
vpc v_conv7_i207_1@uint8 v_conv7_i207_1@uint32;
(*   %conv.i195.2 = zext i8 %conv5.i204.1 to i32 *)
cast v_conv_i195_2@uint32 v_conv5_i204_1@uint8;
(*   %and.i196.2 = and i32 %conv.i195.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i196_2 v_conv_i195_2 (0x1)@uint32;
(*   %conv1.i197.2 = zext i8 %conv7.i207.1 to i32 *)
cast v_conv1_i197_2@uint32 v_conv7_i207_1@uint8;
(*   %mul.i198.2 = mul nsw i32 %and.i196.2, %conv1.i197.2 *)
mul v_mul_i198_2 v_and_i196_2 v_conv1_i197_2;
(*   %conv2.i199.2 = zext i8 %conv3.i201.1 to i32 *)
cast v_conv2_i199_2@uint32 v_conv3_i201_1@uint8;
(*   %xor.i200.2 = xor i32 %conv2.i199.2, %mul.i198.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i200_2 v_conv2_i199_2 v_mul_i198_2;
(*   %conv3.i201.2 = trunc i32 %xor.i200.2 to i8 *)
split tmp_v_xor_i200_2 v_conv3_i201_2 v_xor_i200_2 8;
vpc v_conv3_i201_2@uint8 v_conv3_i201_2@uint32;
(*   %conv4.i202.2 = zext i8 %conv5.i204.1 to i32 *)
cast v_conv4_i202_2@uint32 v_conv5_i204_1@uint8;
(*   %shr.i203.2 = ashr i32 %conv4.i202.2, 1 *)
(* You may need to modify here *)
split v_shr_i203_2 tmp_to_be_used v_conv4_i202_2 1;
(*   %conv5.i204.2 = trunc i32 %shr.i203.2 to i8 *)
split tmp_v_shr_i203_2 v_conv5_i204_2 v_shr_i203_2 8;
vpc v_conv5_i204_2@uint8 v_conv5_i204_2@uint32;
(*   %conv6.i205.2 = zext i8 %conv7.i207.1 to i32 *)
cast v_conv6_i205_2@uint32 v_conv7_i207_1@uint8;
(*   %shl.i206.2 = shl i32 %conv6.i205.2, 1 *)
shls discard_177 v_shl_i206_2 v_conv6_i205_2 1;
(*   %conv7.i207.2 = trunc i32 %shl.i206.2 to i8 *)
split tmp_v_shl_i206_2 v_conv7_i207_2 v_shl_i206_2 8;
vpc v_conv7_i207_2@uint8 v_conv7_i207_2@uint32;
(*   %conv.i195.3 = zext i8 %conv5.i204.2 to i32 *)
cast v_conv_i195_3@uint32 v_conv5_i204_2@uint8;
(*   %and.i196.3 = and i32 %conv.i195.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i196_3 v_conv_i195_3 (0x1)@uint32;
(*   %conv1.i197.3 = zext i8 %conv7.i207.2 to i32 *)
cast v_conv1_i197_3@uint32 v_conv7_i207_2@uint8;
(*   %mul.i198.3 = mul nsw i32 %and.i196.3, %conv1.i197.3 *)
mul v_mul_i198_3 v_and_i196_3 v_conv1_i197_3;
(*   %conv2.i199.3 = zext i8 %conv3.i201.2 to i32 *)
cast v_conv2_i199_3@uint32 v_conv3_i201_2@uint8;
(*   %xor.i200.3 = xor i32 %conv2.i199.3, %mul.i198.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i200_3 v_conv2_i199_3 v_mul_i198_3;
(*   %conv3.i201.3 = trunc i32 %xor.i200.3 to i8 *)
split tmp_v_xor_i200_3 v_conv3_i201_3 v_xor_i200_3 8;
vpc v_conv3_i201_3@uint8 v_conv3_i201_3@uint32;
(*   %conv4.i202.3 = zext i8 %conv5.i204.2 to i32 *)
cast v_conv4_i202_3@uint32 v_conv5_i204_2@uint8;
(*   %shr.i203.3 = ashr i32 %conv4.i202.3, 1 *)
(* You may need to modify here *)
split v_shr_i203_3 tmp_to_be_used v_conv4_i202_3 1;
(*   %conv5.i204.3 = trunc i32 %shr.i203.3 to i8 *)
split tmp_v_shr_i203_3 v_conv5_i204_3 v_shr_i203_3 8;
vpc v_conv5_i204_3@uint8 v_conv5_i204_3@uint32;
(*   %conv6.i205.3 = zext i8 %conv7.i207.2 to i32 *)
cast v_conv6_i205_3@uint32 v_conv7_i207_2@uint8;
(*   %shl.i206.3 = shl i32 %conv6.i205.3, 1 *)
shls discard_178 v_shl_i206_3 v_conv6_i205_3 1;
(*   %conv7.i207.3 = trunc i32 %shl.i206.3 to i8 *)
split tmp_v_shl_i206_3 v_conv7_i207_3 v_shl_i206_3 8;
vpc v_conv7_i207_3@uint8 v_conv7_i207_3@uint32;
(*   %conv.i195.4 = zext i8 %conv5.i204.3 to i32 *)
cast v_conv_i195_4@uint32 v_conv5_i204_3@uint8;
(*   %and.i196.4 = and i32 %conv.i195.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i196_4 v_conv_i195_4 (0x1)@uint32;
(*   %conv1.i197.4 = zext i8 %conv7.i207.3 to i32 *)
cast v_conv1_i197_4@uint32 v_conv7_i207_3@uint8;
(*   %mul.i198.4 = mul nsw i32 %and.i196.4, %conv1.i197.4 *)
mul v_mul_i198_4 v_and_i196_4 v_conv1_i197_4;
(*   %conv2.i199.4 = zext i8 %conv3.i201.3 to i32 *)
cast v_conv2_i199_4@uint32 v_conv3_i201_3@uint8;
(*   %xor.i200.4 = xor i32 %conv2.i199.4, %mul.i198.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i200_4 v_conv2_i199_4 v_mul_i198_4;
(*   %conv3.i201.4 = trunc i32 %xor.i200.4 to i8 *)
split tmp_v_xor_i200_4 v_conv3_i201_4 v_xor_i200_4 8;
vpc v_conv3_i201_4@uint8 v_conv3_i201_4@uint32;
(*   %conv4.i202.4 = zext i8 %conv5.i204.3 to i32 *)
cast v_conv4_i202_4@uint32 v_conv5_i204_3@uint8;
(*   %shr.i203.4 = ashr i32 %conv4.i202.4, 1 *)
(* You may need to modify here *)
split v_shr_i203_4 tmp_to_be_used v_conv4_i202_4 1;
(*   %conv5.i204.4 = trunc i32 %shr.i203.4 to i8 *)
split tmp_v_shr_i203_4 v_conv5_i204_4 v_shr_i203_4 8;
vpc v_conv5_i204_4@uint8 v_conv5_i204_4@uint32;
(*   %conv6.i205.4 = zext i8 %conv7.i207.3 to i32 *)
cast v_conv6_i205_4@uint32 v_conv7_i207_3@uint8;
(*   %shl.i206.4 = shl i32 %conv6.i205.4, 1 *)
shls discard_179 v_shl_i206_4 v_conv6_i205_4 1;
(*   %conv7.i207.4 = trunc i32 %shl.i206.4 to i8 *)
split tmp_v_shl_i206_4 v_conv7_i207_4 v_shl_i206_4 8;
vpc v_conv7_i207_4@uint8 v_conv7_i207_4@uint32;
(*   %conv.i195.5 = zext i8 %conv5.i204.4 to i32 *)
cast v_conv_i195_5@uint32 v_conv5_i204_4@uint8;
(*   %and.i196.5 = and i32 %conv.i195.5, 1 *)
(* You may need to modify here *)
and uint32 v_and_i196_5 v_conv_i195_5 (0x1)@uint32;
(*   %conv1.i197.5 = zext i8 %conv7.i207.4 to i32 *)
cast v_conv1_i197_5@uint32 v_conv7_i207_4@uint8;
(*   %mul.i198.5 = mul nsw i32 %and.i196.5, %conv1.i197.5 *)
mul v_mul_i198_5 v_and_i196_5 v_conv1_i197_5;
(*   %conv2.i199.5 = zext i8 %conv3.i201.4 to i32 *)
cast v_conv2_i199_5@uint32 v_conv3_i201_4@uint8;
(*   %xor.i200.5 = xor i32 %conv2.i199.5, %mul.i198.5 *)
(* You may need to modify here *)
xor uint32 v_xor_i200_5 v_conv2_i199_5 v_mul_i198_5;
(*   %conv3.i201.5 = trunc i32 %xor.i200.5 to i8 *)
split tmp_v_xor_i200_5 v_conv3_i201_5 v_xor_i200_5 8;
vpc v_conv3_i201_5@uint8 v_conv3_i201_5@uint32;
(*   %conv4.i202.5 = zext i8 %conv5.i204.4 to i32 *)
cast v_conv4_i202_5@uint32 v_conv5_i204_4@uint8;
(*   %shr.i203.5 = ashr i32 %conv4.i202.5, 1 *)
(* You may need to modify here *)
split v_shr_i203_5 tmp_to_be_used v_conv4_i202_5 1;
(*   %conv5.i204.5 = trunc i32 %shr.i203.5 to i8 *)
split tmp_v_shr_i203_5 v_conv5_i204_5 v_shr_i203_5 8;
vpc v_conv5_i204_5@uint8 v_conv5_i204_5@uint32;
(*   %conv6.i205.5 = zext i8 %conv7.i207.4 to i32 *)
cast v_conv6_i205_5@uint32 v_conv7_i207_4@uint8;
(*   %shl.i206.5 = shl i32 %conv6.i205.5, 1 *)
shls discard_180 v_shl_i206_5 v_conv6_i205_5 1;
(*   %conv7.i207.5 = trunc i32 %shl.i206.5 to i8 *)
split tmp_v_shl_i206_5 v_conv7_i207_5 v_shl_i206_5 8;
vpc v_conv7_i207_5@uint8 v_conv7_i207_5@uint32;
(*   %conv.i195.6 = zext i8 %conv5.i204.5 to i32 *)
cast v_conv_i195_6@uint32 v_conv5_i204_5@uint8;
(*   %and.i196.6 = and i32 %conv.i195.6, 1 *)
(* You may need to modify here *)
and uint32 v_and_i196_6 v_conv_i195_6 (0x1)@uint32;
(*   %conv1.i197.6 = zext i8 %conv7.i207.5 to i32 *)
cast v_conv1_i197_6@uint32 v_conv7_i207_5@uint8;
(*   %mul.i198.6 = mul nsw i32 %and.i196.6, %conv1.i197.6 *)
mul v_mul_i198_6 v_and_i196_6 v_conv1_i197_6;
(*   %conv2.i199.6 = zext i8 %conv3.i201.5 to i32 *)
cast v_conv2_i199_6@uint32 v_conv3_i201_5@uint8;
(*   %xor.i200.6 = xor i32 %conv2.i199.6, %mul.i198.6 *)
(* You may need to modify here *)
xor uint32 v_xor_i200_6 v_conv2_i199_6 v_mul_i198_6;
(*   %conv3.i201.6 = trunc i32 %xor.i200.6 to i8 *)
split tmp_v_xor_i200_6 v_conv3_i201_6 v_xor_i200_6 8;
vpc v_conv3_i201_6@uint8 v_conv3_i201_6@uint32;
(*   %conv4.i202.6 = zext i8 %conv5.i204.5 to i32 *)
cast v_conv4_i202_6@uint32 v_conv5_i204_5@uint8;
(*   %shr.i203.6 = ashr i32 %conv4.i202.6, 1 *)
(* You may need to modify here *)
split v_shr_i203_6 tmp_to_be_used v_conv4_i202_6 1;
(*   %conv5.i204.6 = trunc i32 %shr.i203.6 to i8 *)
split tmp_v_shr_i203_6 v_conv5_i204_6 v_shr_i203_6 8;
vpc v_conv5_i204_6@uint8 v_conv5_i204_6@uint32;
(*   %conv6.i205.6 = zext i8 %conv7.i207.5 to i32 *)
cast v_conv6_i205_6@uint32 v_conv7_i207_5@uint8;
(*   %shl.i206.6 = shl i32 %conv6.i205.6, 1 *)
shls discard_181 v_shl_i206_6 v_conv6_i205_6 1;
(*   %conv7.i207.6 = trunc i32 %shl.i206.6 to i8 *)
split tmp_v_shl_i206_6 v_conv7_i207_6 v_shl_i206_6 8;
vpc v_conv7_i207_6@uint8 v_conv7_i207_6@uint32;
(*   %conv.i195.7 = zext i8 %conv5.i204.6 to i32 *)
cast v_conv_i195_7@uint32 v_conv5_i204_6@uint8;
(*   %and.i196.7 = and i32 %conv.i195.7, 1 *)
(* You may need to modify here *)
and uint32 v_and_i196_7 v_conv_i195_7 (0x1)@uint32;
(*   %conv1.i197.7 = zext i8 %conv7.i207.6 to i32 *)
cast v_conv1_i197_7@uint32 v_conv7_i207_6@uint8;
(*   %mul.i198.7 = mul nsw i32 %and.i196.7, %conv1.i197.7 *)
mul v_mul_i198_7 v_and_i196_7 v_conv1_i197_7;
(*   %conv2.i199.7 = zext i8 %conv3.i201.6 to i32 *)
cast v_conv2_i199_7@uint32 v_conv3_i201_6@uint8;
(*   %xor.i200.7 = xor i32 %conv2.i199.7, %mul.i198.7 *)
(* You may need to modify here *)
xor uint32 v_xor_i200_7 v_conv2_i199_7 v_mul_i198_7;
(*   %conv3.i201.7 = trunc i32 %xor.i200.7 to i8 *)
split tmp_v_xor_i200_7 v_conv3_i201_7 v_xor_i200_7 8;
vpc v_conv3_i201_7@uint8 v_conv3_i201_7@uint32;
(*   store i8 %conv3.i201.7, i8* %AB, align 1 *)
mov AB_0 v_conv3_i201_7;
(*   %103 = load i8, i8* %c, align 1 *)
mov v103 c_0;
(*   %scevgep.1 = getelementptr i8, i8* %c, i64 1 *)
(*   %104 = load i8, i8* %scevgep.1, align 1 *)
mov v104 c_1;
(*   %conv.i.i.1 = zext i8 %104 to i32 *)
cast v_conv_i_i_1@uint32 v104@uint8;
(*   %conv1.i.i.1 = zext i8 %103 to i32 *)
cast v_conv1_i_i_1@uint32 v103@uint8;
(*   %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_1 v_conv1_i_i_1 v_conv_i_i_1;
(*   %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8 *)
split tmp_v_xor_i_i_1 v_conv2_i_i_1 v_xor_i_i_1 8;
vpc v_conv2_i_i_1@uint8 v_conv2_i_i_1@uint32;
(*   %scevgep.2 = getelementptr i8, i8* %c, i64 2 *)
(*   %105 = load i8, i8* %scevgep.2, align 1 *)
mov v105 c_2;
(*   %conv.i.i.2 = zext i8 %105 to i32 *)
cast v_conv_i_i_2@uint32 v105@uint8;
(*   %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32 *)
cast v_conv1_i_i_2@uint32 v_conv2_i_i_1@uint8;
(*   %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_2 v_conv1_i_i_2 v_conv_i_i_2;
(*   %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8 *)
split tmp_v_xor_i_i_2 v_conv2_i_i_2 v_xor_i_i_2 8;
vpc v_conv2_i_i_2@uint8 v_conv2_i_i_2@uint32;
(*   %scevgep.3 = getelementptr i8, i8* %c, i64 3 *)
(*   %106 = load i8, i8* %scevgep.3, align 1 *)
mov v106 c_3;
(*   %conv.i.i.3 = zext i8 %106 to i32 *)
cast v_conv_i_i_3@uint32 v106@uint8;
(*   %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32 *)
cast v_conv1_i_i_3@uint32 v_conv2_i_i_2@uint8;
(*   %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_3 v_conv1_i_i_3 v_conv_i_i_3;
(*   %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8 *)
split tmp_v_xor_i_i_3 v_conv2_i_i_3 v_xor_i_i_3 8;
vpc v_conv2_i_i_3@uint8 v_conv2_i_i_3@uint32;
(*   %scevgep.4 = getelementptr i8, i8* %c, i64 4 *)
(*   %107 = load i8, i8* %scevgep.4, align 1 *)
mov v107 c_4;
(*   %conv.i.i.4 = zext i8 %107 to i32 *)
cast v_conv_i_i_4@uint32 v107@uint8;
(*   %conv1.i.i.4 = zext i8 %conv2.i.i.3 to i32 *)
cast v_conv1_i_i_4@uint32 v_conv2_i_i_3@uint8;
(*   %xor.i.i.4 = xor i32 %conv1.i.i.4, %conv.i.i.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_4 v_conv1_i_i_4 v_conv_i_i_4;
(*   %conv2.i.i.4 = trunc i32 %xor.i.i.4 to i8 *)
split tmp_v_xor_i_i_4 v_conv2_i_i_4 v_xor_i_i_4 8;
vpc v_conv2_i_i_4@uint8 v_conv2_i_i_4@uint32;
(*   store i8 %conv2.i.i.4, i8* %C, align 1 *)
mov C_0 v_conv2_i_i_4;
(*   ret void *)


(* Outputs *)

mov _ AB_0@uint8;
mov _ C_0@uint8;


{
  true
  &&
  true
}

