proc main (uint8 a_0, uint8 a_1, uint8 a_2, uint8 a_3, uint8 b_0, uint8 b_1, uint8 b_2, uint8 b_3, uint8 r_1, uint8 r_3, uint8 r_7, uint8 r_11, uint8 rr_2) =
{
  true
  &&
  true
}



(*   %alpha = alloca [16 x i8], align 16 *)
(*   %t = alloca [16 x i8], align 16 *)
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
(*   %arrayidx7 = getelementptr inbounds [16 x i8], [16 x i8]* %alpha, i64 0, i64 0 *)
(*   store i8 %conv3.i.7, i8* %arrayidx7, align 1 *)
mov alpha_0 v_conv3_i_7;
(*   %arrayidx5.1 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %2 = load i8, i8* %arrayidx5.1, align 1 *)
mov v2 b_1;
(*   %conv.i.141 = zext i8 %2 to i32 *)
cast v_conv_i_141@uint32 v2@uint8;
(*   %and.i.142 = and i32 %conv.i.141, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_142 v_conv_i_141 (0x1)@uint32;
(*   %conv1.i.143 = zext i8 %0 to i32 *)
cast v_conv1_i_143@uint32 v0@uint8;
(*   %mul.i.144 = mul nsw i32 %and.i.142, %conv1.i.143 *)
mul v_mul_i_144 v_and_i_142 v_conv1_i_143;
(*   %conv3.i.145 = trunc i32 %mul.i.144 to i8 *)
split tmp_v_mul_i_144 v_conv3_i_145 v_mul_i_144 8;
vpc v_conv3_i_145@uint8 v_conv3_i_145@uint32;
(*   %conv4.i.146 = zext i8 %2 to i32 *)
cast v_conv4_i_146@uint32 v2@uint8;
(*   %shr.i.147 = ashr i32 %conv4.i.146, 1 *)
(* You may need to modify here *)
split v_shr_i_147 tmp_to_be_used v_conv4_i_146 1;
(*   %conv5.i.148 = trunc i32 %shr.i.147 to i8 *)
split tmp_v_shr_i_147 v_conv5_i_148 v_shr_i_147 8;
vpc v_conv5_i_148@uint8 v_conv5_i_148@uint32;
(*   %conv6.i.149 = zext i8 %0 to i32 *)
cast v_conv6_i_149@uint32 v0@uint8;
(*   %shl.i.150 = shl i32 %conv6.i.149, 1 *)
shls discard_7 v_shl_i_150 v_conv6_i_149 1;
(*   %conv7.i.151 = trunc i32 %shl.i.150 to i8 *)
split tmp_v_shl_i_150 v_conv7_i_151 v_shl_i_150 8;
vpc v_conv7_i_151@uint8 v_conv7_i_151@uint32;
(*   %conv.i.1.1 = zext i8 %conv5.i.148 to i32 *)
cast v_conv_i_1_1@uint32 v_conv5_i_148@uint8;
(*   %and.i.1.1 = and i32 %conv.i.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_1 v_conv_i_1_1 (0x1)@uint32;
(*   %conv1.i.1.1 = zext i8 %conv7.i.151 to i32 *)
cast v_conv1_i_1_1@uint32 v_conv7_i_151@uint8;
(*   %mul.i.1.1 = mul nsw i32 %and.i.1.1, %conv1.i.1.1 *)
mul v_mul_i_1_1 v_and_i_1_1 v_conv1_i_1_1;
(*   %conv2.i.1.1 = zext i8 %conv3.i.145 to i32 *)
cast v_conv2_i_1_1@uint32 v_conv3_i_145@uint8;
(*   %xor.i.1.1 = xor i32 %conv2.i.1.1, %mul.i.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_1 v_conv2_i_1_1 v_mul_i_1_1;
(*   %conv3.i.1.1 = trunc i32 %xor.i.1.1 to i8 *)
split tmp_v_xor_i_1_1 v_conv3_i_1_1 v_xor_i_1_1 8;
vpc v_conv3_i_1_1@uint8 v_conv3_i_1_1@uint32;
(*   %conv4.i.1.1 = zext i8 %conv5.i.148 to i32 *)
cast v_conv4_i_1_1@uint32 v_conv5_i_148@uint8;
(*   %shr.i.1.1 = ashr i32 %conv4.i.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_1_1 tmp_to_be_used v_conv4_i_1_1 1;
(*   %conv5.i.1.1 = trunc i32 %shr.i.1.1 to i8 *)
split tmp_v_shr_i_1_1 v_conv5_i_1_1 v_shr_i_1_1 8;
vpc v_conv5_i_1_1@uint8 v_conv5_i_1_1@uint32;
(*   %conv6.i.1.1 = zext i8 %conv7.i.151 to i32 *)
cast v_conv6_i_1_1@uint32 v_conv7_i_151@uint8;
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
(*   %arrayidx7.1 = getelementptr inbounds [16 x i8], [16 x i8]* %alpha, i64 0, i64 1 *)
(*   store i8 %conv3.i.7.1, i8* %arrayidx7.1, align 1 *)
mov alpha_1 v_conv3_i_7_1;
(*   %arrayidx5.2 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %3 = load i8, i8* %arrayidx5.2, align 1 *)
mov v3 b_2;
(*   %conv.i.252 = zext i8 %3 to i32 *)
cast v_conv_i_252@uint32 v3@uint8;
(*   %and.i.253 = and i32 %conv.i.252, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_253 v_conv_i_252 (0x1)@uint32;
(*   %conv1.i.254 = zext i8 %0 to i32 *)
cast v_conv1_i_254@uint32 v0@uint8;
(*   %mul.i.255 = mul nsw i32 %and.i.253, %conv1.i.254 *)
mul v_mul_i_255 v_and_i_253 v_conv1_i_254;
(*   %conv3.i.256 = trunc i32 %mul.i.255 to i8 *)
split tmp_v_mul_i_255 v_conv3_i_256 v_mul_i_255 8;
vpc v_conv3_i_256@uint8 v_conv3_i_256@uint32;
(*   %conv4.i.257 = zext i8 %3 to i32 *)
cast v_conv4_i_257@uint32 v3@uint8;
(*   %shr.i.258 = ashr i32 %conv4.i.257, 1 *)
(* You may need to modify here *)
split v_shr_i_258 tmp_to_be_used v_conv4_i_257 1;
(*   %conv5.i.259 = trunc i32 %shr.i.258 to i8 *)
split tmp_v_shr_i_258 v_conv5_i_259 v_shr_i_258 8;
vpc v_conv5_i_259@uint8 v_conv5_i_259@uint32;
(*   %conv6.i.260 = zext i8 %0 to i32 *)
cast v_conv6_i_260@uint32 v0@uint8;
(*   %shl.i.261 = shl i32 %conv6.i.260, 1 *)
shls discard_14 v_shl_i_261 v_conv6_i_260 1;
(*   %conv7.i.262 = trunc i32 %shl.i.261 to i8 *)
split tmp_v_shl_i_261 v_conv7_i_262 v_shl_i_261 8;
vpc v_conv7_i_262@uint8 v_conv7_i_262@uint32;
(*   %conv.i.1.2 = zext i8 %conv5.i.259 to i32 *)
cast v_conv_i_1_2@uint32 v_conv5_i_259@uint8;
(*   %and.i.1.2 = and i32 %conv.i.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_2 v_conv_i_1_2 (0x1)@uint32;
(*   %conv1.i.1.2 = zext i8 %conv7.i.262 to i32 *)
cast v_conv1_i_1_2@uint32 v_conv7_i_262@uint8;
(*   %mul.i.1.2 = mul nsw i32 %and.i.1.2, %conv1.i.1.2 *)
mul v_mul_i_1_2 v_and_i_1_2 v_conv1_i_1_2;
(*   %conv2.i.1.2 = zext i8 %conv3.i.256 to i32 *)
cast v_conv2_i_1_2@uint32 v_conv3_i_256@uint8;
(*   %xor.i.1.2 = xor i32 %conv2.i.1.2, %mul.i.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_2 v_conv2_i_1_2 v_mul_i_1_2;
(*   %conv3.i.1.2 = trunc i32 %xor.i.1.2 to i8 *)
split tmp_v_xor_i_1_2 v_conv3_i_1_2 v_xor_i_1_2 8;
vpc v_conv3_i_1_2@uint8 v_conv3_i_1_2@uint32;
(*   %conv4.i.1.2 = zext i8 %conv5.i.259 to i32 *)
cast v_conv4_i_1_2@uint32 v_conv5_i_259@uint8;
(*   %shr.i.1.2 = ashr i32 %conv4.i.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_1_2 tmp_to_be_used v_conv4_i_1_2 1;
(*   %conv5.i.1.2 = trunc i32 %shr.i.1.2 to i8 *)
split tmp_v_shr_i_1_2 v_conv5_i_1_2 v_shr_i_1_2 8;
vpc v_conv5_i_1_2@uint8 v_conv5_i_1_2@uint32;
(*   %conv6.i.1.2 = zext i8 %conv7.i.262 to i32 *)
cast v_conv6_i_1_2@uint32 v_conv7_i_262@uint8;
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
(*   %arrayidx7.2 = getelementptr inbounds [16 x i8], [16 x i8]* %alpha, i64 0, i64 2 *)
(*   store i8 %conv3.i.7.2, i8* %arrayidx7.2, align 1 *)
mov alpha_2 v_conv3_i_7_2;
(*   %arrayidx5.3 = getelementptr inbounds i8, i8* %b, i64 3 *)
(*   %4 = load i8, i8* %arrayidx5.3, align 1 *)
mov v4 b_3;
(*   %conv.i.363 = zext i8 %4 to i32 *)
cast v_conv_i_363@uint32 v4@uint8;
(*   %and.i.364 = and i32 %conv.i.363, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_364 v_conv_i_363 (0x1)@uint32;
(*   %conv1.i.365 = zext i8 %0 to i32 *)
cast v_conv1_i_365@uint32 v0@uint8;
(*   %mul.i.366 = mul nsw i32 %and.i.364, %conv1.i.365 *)
mul v_mul_i_366 v_and_i_364 v_conv1_i_365;
(*   %conv3.i.367 = trunc i32 %mul.i.366 to i8 *)
split tmp_v_mul_i_366 v_conv3_i_367 v_mul_i_366 8;
vpc v_conv3_i_367@uint8 v_conv3_i_367@uint32;
(*   %conv4.i.368 = zext i8 %4 to i32 *)
cast v_conv4_i_368@uint32 v4@uint8;
(*   %shr.i.369 = ashr i32 %conv4.i.368, 1 *)
(* You may need to modify here *)
split v_shr_i_369 tmp_to_be_used v_conv4_i_368 1;
(*   %conv5.i.370 = trunc i32 %shr.i.369 to i8 *)
split tmp_v_shr_i_369 v_conv5_i_370 v_shr_i_369 8;
vpc v_conv5_i_370@uint8 v_conv5_i_370@uint32;
(*   %conv6.i.371 = zext i8 %0 to i32 *)
cast v_conv6_i_371@uint32 v0@uint8;
(*   %shl.i.372 = shl i32 %conv6.i.371, 1 *)
shls discard_21 v_shl_i_372 v_conv6_i_371 1;
(*   %conv7.i.373 = trunc i32 %shl.i.372 to i8 *)
split tmp_v_shl_i_372 v_conv7_i_373 v_shl_i_372 8;
vpc v_conv7_i_373@uint8 v_conv7_i_373@uint32;
(*   %conv.i.1.3 = zext i8 %conv5.i.370 to i32 *)
cast v_conv_i_1_3@uint32 v_conv5_i_370@uint8;
(*   %and.i.1.3 = and i32 %conv.i.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_3 v_conv_i_1_3 (0x1)@uint32;
(*   %conv1.i.1.3 = zext i8 %conv7.i.373 to i32 *)
cast v_conv1_i_1_3@uint32 v_conv7_i_373@uint8;
(*   %mul.i.1.3 = mul nsw i32 %and.i.1.3, %conv1.i.1.3 *)
mul v_mul_i_1_3 v_and_i_1_3 v_conv1_i_1_3;
(*   %conv2.i.1.3 = zext i8 %conv3.i.367 to i32 *)
cast v_conv2_i_1_3@uint32 v_conv3_i_367@uint8;
(*   %xor.i.1.3 = xor i32 %conv2.i.1.3, %mul.i.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_3 v_conv2_i_1_3 v_mul_i_1_3;
(*   %conv3.i.1.3 = trunc i32 %xor.i.1.3 to i8 *)
split tmp_v_xor_i_1_3 v_conv3_i_1_3 v_xor_i_1_3 8;
vpc v_conv3_i_1_3@uint8 v_conv3_i_1_3@uint32;
(*   %conv4.i.1.3 = zext i8 %conv5.i.370 to i32 *)
cast v_conv4_i_1_3@uint32 v_conv5_i_370@uint8;
(*   %shr.i.1.3 = ashr i32 %conv4.i.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i_1_3 tmp_to_be_used v_conv4_i_1_3 1;
(*   %conv5.i.1.3 = trunc i32 %shr.i.1.3 to i8 *)
split tmp_v_shr_i_1_3 v_conv5_i_1_3 v_shr_i_1_3 8;
vpc v_conv5_i_1_3@uint8 v_conv5_i_1_3@uint32;
(*   %conv6.i.1.3 = zext i8 %conv7.i.373 to i32 *)
cast v_conv6_i_1_3@uint32 v_conv7_i_373@uint8;
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
(*   %arrayidx7.3 = getelementptr inbounds [16 x i8], [16 x i8]* %alpha, i64 0, i64 3 *)
(*   store i8 %conv3.i.7.3, i8* %arrayidx7.3, align 1 *)
mov alpha_3 v_conv3_i_7_3;
(*   %arrayidx.1 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %5 = load i8, i8* %arrayidx.1, align 1 *)
mov v5 a_1;
(*   %6 = load i8, i8* %b, align 1 *)
mov v6 b_0;
(*   %conv.i.174 = zext i8 %6 to i32 *)
cast v_conv_i_174@uint32 v6@uint8;
(*   %and.i.175 = and i32 %conv.i.174, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_175 v_conv_i_174 (0x1)@uint32;
(*   %conv1.i.176 = zext i8 %5 to i32 *)
cast v_conv1_i_176@uint32 v5@uint8;
(*   %mul.i.177 = mul nsw i32 %and.i.175, %conv1.i.176 *)
mul v_mul_i_177 v_and_i_175 v_conv1_i_176;
(*   %conv3.i.178 = trunc i32 %mul.i.177 to i8 *)
split tmp_v_mul_i_177 v_conv3_i_178 v_mul_i_177 8;
vpc v_conv3_i_178@uint8 v_conv3_i_178@uint32;
(*   %conv4.i.179 = zext i8 %6 to i32 *)
cast v_conv4_i_179@uint32 v6@uint8;
(*   %shr.i.180 = ashr i32 %conv4.i.179, 1 *)
(* You may need to modify here *)
split v_shr_i_180 tmp_to_be_used v_conv4_i_179 1;
(*   %conv5.i.181 = trunc i32 %shr.i.180 to i8 *)
split tmp_v_shr_i_180 v_conv5_i_181 v_shr_i_180 8;
vpc v_conv5_i_181@uint8 v_conv5_i_181@uint32;
(*   %conv6.i.182 = zext i8 %5 to i32 *)
cast v_conv6_i_182@uint32 v5@uint8;
(*   %shl.i.183 = shl i32 %conv6.i.182, 1 *)
shls discard_28 v_shl_i_183 v_conv6_i_182 1;
(*   %conv7.i.184 = trunc i32 %shl.i.183 to i8 *)
split tmp_v_shl_i_183 v_conv7_i_184 v_shl_i_183 8;
vpc v_conv7_i_184@uint8 v_conv7_i_184@uint32;
(*   %conv.i.1.185 = zext i8 %conv5.i.181 to i32 *)
cast v_conv_i_1_185@uint32 v_conv5_i_181@uint8;
(*   %and.i.1.186 = and i32 %conv.i.1.185, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_186 v_conv_i_1_185 (0x1)@uint32;
(*   %conv1.i.1.187 = zext i8 %conv7.i.184 to i32 *)
cast v_conv1_i_1_187@uint32 v_conv7_i_184@uint8;
(*   %mul.i.1.188 = mul nsw i32 %and.i.1.186, %conv1.i.1.187 *)
mul v_mul_i_1_188 v_and_i_1_186 v_conv1_i_1_187;
(*   %conv2.i.1.189 = zext i8 %conv3.i.178 to i32 *)
cast v_conv2_i_1_189@uint32 v_conv3_i_178@uint8;
(*   %xor.i.1.190 = xor i32 %conv2.i.1.189, %mul.i.1.188 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_190 v_conv2_i_1_189 v_mul_i_1_188;
(*   %conv3.i.1.191 = trunc i32 %xor.i.1.190 to i8 *)
split tmp_v_xor_i_1_190 v_conv3_i_1_191 v_xor_i_1_190 8;
vpc v_conv3_i_1_191@uint8 v_conv3_i_1_191@uint32;
(*   %conv4.i.1.192 = zext i8 %conv5.i.181 to i32 *)
cast v_conv4_i_1_192@uint32 v_conv5_i_181@uint8;
(*   %shr.i.1.193 = ashr i32 %conv4.i.1.192, 1 *)
(* You may need to modify here *)
split v_shr_i_1_193 tmp_to_be_used v_conv4_i_1_192 1;
(*   %conv5.i.1.194 = trunc i32 %shr.i.1.193 to i8 *)
split tmp_v_shr_i_1_193 v_conv5_i_1_194 v_shr_i_1_193 8;
vpc v_conv5_i_1_194@uint8 v_conv5_i_1_194@uint32;
(*   %conv6.i.1.195 = zext i8 %conv7.i.184 to i32 *)
cast v_conv6_i_1_195@uint32 v_conv7_i_184@uint8;
(*   %shl.i.1.196 = shl i32 %conv6.i.1.195, 1 *)
shls discard_29 v_shl_i_1_196 v_conv6_i_1_195 1;
(*   %conv7.i.1.197 = trunc i32 %shl.i.1.196 to i8 *)
split tmp_v_shl_i_1_196 v_conv7_i_1_197 v_shl_i_1_196 8;
vpc v_conv7_i_1_197@uint8 v_conv7_i_1_197@uint32;
(*   %conv.i.2.198 = zext i8 %conv5.i.1.194 to i32 *)
cast v_conv_i_2_198@uint32 v_conv5_i_1_194@uint8;
(*   %and.i.2.199 = and i32 %conv.i.2.198, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_199 v_conv_i_2_198 (0x1)@uint32;
(*   %conv1.i.2.1100 = zext i8 %conv7.i.1.197 to i32 *)
cast v_conv1_i_2_1100@uint32 v_conv7_i_1_197@uint8;
(*   %mul.i.2.1101 = mul nsw i32 %and.i.2.199, %conv1.i.2.1100 *)
mul v_mul_i_2_1101 v_and_i_2_199 v_conv1_i_2_1100;
(*   %conv2.i.2.1102 = zext i8 %conv3.i.1.191 to i32 *)
cast v_conv2_i_2_1102@uint32 v_conv3_i_1_191@uint8;
(*   %xor.i.2.1103 = xor i32 %conv2.i.2.1102, %mul.i.2.1101 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_1103 v_conv2_i_2_1102 v_mul_i_2_1101;
(*   %conv3.i.2.1104 = trunc i32 %xor.i.2.1103 to i8 *)
split tmp_v_xor_i_2_1103 v_conv3_i_2_1104 v_xor_i_2_1103 8;
vpc v_conv3_i_2_1104@uint8 v_conv3_i_2_1104@uint32;
(*   %conv4.i.2.1105 = zext i8 %conv5.i.1.194 to i32 *)
cast v_conv4_i_2_1105@uint32 v_conv5_i_1_194@uint8;
(*   %shr.i.2.1106 = ashr i32 %conv4.i.2.1105, 1 *)
(* You may need to modify here *)
split v_shr_i_2_1106 tmp_to_be_used v_conv4_i_2_1105 1;
(*   %conv5.i.2.1107 = trunc i32 %shr.i.2.1106 to i8 *)
split tmp_v_shr_i_2_1106 v_conv5_i_2_1107 v_shr_i_2_1106 8;
vpc v_conv5_i_2_1107@uint8 v_conv5_i_2_1107@uint32;
(*   %conv6.i.2.1108 = zext i8 %conv7.i.1.197 to i32 *)
cast v_conv6_i_2_1108@uint32 v_conv7_i_1_197@uint8;
(*   %shl.i.2.1109 = shl i32 %conv6.i.2.1108, 1 *)
shls discard_30 v_shl_i_2_1109 v_conv6_i_2_1108 1;
(*   %conv7.i.2.1110 = trunc i32 %shl.i.2.1109 to i8 *)
split tmp_v_shl_i_2_1109 v_conv7_i_2_1110 v_shl_i_2_1109 8;
vpc v_conv7_i_2_1110@uint8 v_conv7_i_2_1110@uint32;
(*   %conv.i.3.1111 = zext i8 %conv5.i.2.1107 to i32 *)
cast v_conv_i_3_1111@uint32 v_conv5_i_2_1107@uint8;
(*   %and.i.3.1112 = and i32 %conv.i.3.1111, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_1112 v_conv_i_3_1111 (0x1)@uint32;
(*   %conv1.i.3.1113 = zext i8 %conv7.i.2.1110 to i32 *)
cast v_conv1_i_3_1113@uint32 v_conv7_i_2_1110@uint8;
(*   %mul.i.3.1114 = mul nsw i32 %and.i.3.1112, %conv1.i.3.1113 *)
mul v_mul_i_3_1114 v_and_i_3_1112 v_conv1_i_3_1113;
(*   %conv2.i.3.1115 = zext i8 %conv3.i.2.1104 to i32 *)
cast v_conv2_i_3_1115@uint32 v_conv3_i_2_1104@uint8;
(*   %xor.i.3.1116 = xor i32 %conv2.i.3.1115, %mul.i.3.1114 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_1116 v_conv2_i_3_1115 v_mul_i_3_1114;
(*   %conv3.i.3.1117 = trunc i32 %xor.i.3.1116 to i8 *)
split tmp_v_xor_i_3_1116 v_conv3_i_3_1117 v_xor_i_3_1116 8;
vpc v_conv3_i_3_1117@uint8 v_conv3_i_3_1117@uint32;
(*   %conv4.i.3.1118 = zext i8 %conv5.i.2.1107 to i32 *)
cast v_conv4_i_3_1118@uint32 v_conv5_i_2_1107@uint8;
(*   %shr.i.3.1119 = ashr i32 %conv4.i.3.1118, 1 *)
(* You may need to modify here *)
split v_shr_i_3_1119 tmp_to_be_used v_conv4_i_3_1118 1;
(*   %conv5.i.3.1120 = trunc i32 %shr.i.3.1119 to i8 *)
split tmp_v_shr_i_3_1119 v_conv5_i_3_1120 v_shr_i_3_1119 8;
vpc v_conv5_i_3_1120@uint8 v_conv5_i_3_1120@uint32;
(*   %conv6.i.3.1121 = zext i8 %conv7.i.2.1110 to i32 *)
cast v_conv6_i_3_1121@uint32 v_conv7_i_2_1110@uint8;
(*   %shl.i.3.1122 = shl i32 %conv6.i.3.1121, 1 *)
shls discard_31 v_shl_i_3_1122 v_conv6_i_3_1121 1;
(*   %conv7.i.3.1123 = trunc i32 %shl.i.3.1122 to i8 *)
split tmp_v_shl_i_3_1122 v_conv7_i_3_1123 v_shl_i_3_1122 8;
vpc v_conv7_i_3_1123@uint8 v_conv7_i_3_1123@uint32;
(*   %conv.i.4.1124 = zext i8 %conv5.i.3.1120 to i32 *)
cast v_conv_i_4_1124@uint32 v_conv5_i_3_1120@uint8;
(*   %and.i.4.1125 = and i32 %conv.i.4.1124, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_1125 v_conv_i_4_1124 (0x1)@uint32;
(*   %conv1.i.4.1126 = zext i8 %conv7.i.3.1123 to i32 *)
cast v_conv1_i_4_1126@uint32 v_conv7_i_3_1123@uint8;
(*   %mul.i.4.1127 = mul nsw i32 %and.i.4.1125, %conv1.i.4.1126 *)
mul v_mul_i_4_1127 v_and_i_4_1125 v_conv1_i_4_1126;
(*   %conv2.i.4.1128 = zext i8 %conv3.i.3.1117 to i32 *)
cast v_conv2_i_4_1128@uint32 v_conv3_i_3_1117@uint8;
(*   %xor.i.4.1129 = xor i32 %conv2.i.4.1128, %mul.i.4.1127 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_1129 v_conv2_i_4_1128 v_mul_i_4_1127;
(*   %conv3.i.4.1130 = trunc i32 %xor.i.4.1129 to i8 *)
split tmp_v_xor_i_4_1129 v_conv3_i_4_1130 v_xor_i_4_1129 8;
vpc v_conv3_i_4_1130@uint8 v_conv3_i_4_1130@uint32;
(*   %conv4.i.4.1131 = zext i8 %conv5.i.3.1120 to i32 *)
cast v_conv4_i_4_1131@uint32 v_conv5_i_3_1120@uint8;
(*   %shr.i.4.1132 = ashr i32 %conv4.i.4.1131, 1 *)
(* You may need to modify here *)
split v_shr_i_4_1132 tmp_to_be_used v_conv4_i_4_1131 1;
(*   %conv5.i.4.1133 = trunc i32 %shr.i.4.1132 to i8 *)
split tmp_v_shr_i_4_1132 v_conv5_i_4_1133 v_shr_i_4_1132 8;
vpc v_conv5_i_4_1133@uint8 v_conv5_i_4_1133@uint32;
(*   %conv6.i.4.1134 = zext i8 %conv7.i.3.1123 to i32 *)
cast v_conv6_i_4_1134@uint32 v_conv7_i_3_1123@uint8;
(*   %shl.i.4.1135 = shl i32 %conv6.i.4.1134, 1 *)
shls discard_32 v_shl_i_4_1135 v_conv6_i_4_1134 1;
(*   %conv7.i.4.1136 = trunc i32 %shl.i.4.1135 to i8 *)
split tmp_v_shl_i_4_1135 v_conv7_i_4_1136 v_shl_i_4_1135 8;
vpc v_conv7_i_4_1136@uint8 v_conv7_i_4_1136@uint32;
(*   %conv.i.5.1137 = zext i8 %conv5.i.4.1133 to i32 *)
cast v_conv_i_5_1137@uint32 v_conv5_i_4_1133@uint8;
(*   %and.i.5.1138 = and i32 %conv.i.5.1137, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_1138 v_conv_i_5_1137 (0x1)@uint32;
(*   %conv1.i.5.1139 = zext i8 %conv7.i.4.1136 to i32 *)
cast v_conv1_i_5_1139@uint32 v_conv7_i_4_1136@uint8;
(*   %mul.i.5.1140 = mul nsw i32 %and.i.5.1138, %conv1.i.5.1139 *)
mul v_mul_i_5_1140 v_and_i_5_1138 v_conv1_i_5_1139;
(*   %conv2.i.5.1141 = zext i8 %conv3.i.4.1130 to i32 *)
cast v_conv2_i_5_1141@uint32 v_conv3_i_4_1130@uint8;
(*   %xor.i.5.1142 = xor i32 %conv2.i.5.1141, %mul.i.5.1140 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_1142 v_conv2_i_5_1141 v_mul_i_5_1140;
(*   %conv3.i.5.1143 = trunc i32 %xor.i.5.1142 to i8 *)
split tmp_v_xor_i_5_1142 v_conv3_i_5_1143 v_xor_i_5_1142 8;
vpc v_conv3_i_5_1143@uint8 v_conv3_i_5_1143@uint32;
(*   %conv4.i.5.1144 = zext i8 %conv5.i.4.1133 to i32 *)
cast v_conv4_i_5_1144@uint32 v_conv5_i_4_1133@uint8;
(*   %shr.i.5.1145 = ashr i32 %conv4.i.5.1144, 1 *)
(* You may need to modify here *)
split v_shr_i_5_1145 tmp_to_be_used v_conv4_i_5_1144 1;
(*   %conv5.i.5.1146 = trunc i32 %shr.i.5.1145 to i8 *)
split tmp_v_shr_i_5_1145 v_conv5_i_5_1146 v_shr_i_5_1145 8;
vpc v_conv5_i_5_1146@uint8 v_conv5_i_5_1146@uint32;
(*   %conv6.i.5.1147 = zext i8 %conv7.i.4.1136 to i32 *)
cast v_conv6_i_5_1147@uint32 v_conv7_i_4_1136@uint8;
(*   %shl.i.5.1148 = shl i32 %conv6.i.5.1147, 1 *)
shls discard_33 v_shl_i_5_1148 v_conv6_i_5_1147 1;
(*   %conv7.i.5.1149 = trunc i32 %shl.i.5.1148 to i8 *)
split tmp_v_shl_i_5_1148 v_conv7_i_5_1149 v_shl_i_5_1148 8;
vpc v_conv7_i_5_1149@uint8 v_conv7_i_5_1149@uint32;
(*   %conv.i.6.1150 = zext i8 %conv5.i.5.1146 to i32 *)
cast v_conv_i_6_1150@uint32 v_conv5_i_5_1146@uint8;
(*   %and.i.6.1151 = and i32 %conv.i.6.1150, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_1151 v_conv_i_6_1150 (0x1)@uint32;
(*   %conv1.i.6.1152 = zext i8 %conv7.i.5.1149 to i32 *)
cast v_conv1_i_6_1152@uint32 v_conv7_i_5_1149@uint8;
(*   %mul.i.6.1153 = mul nsw i32 %and.i.6.1151, %conv1.i.6.1152 *)
mul v_mul_i_6_1153 v_and_i_6_1151 v_conv1_i_6_1152;
(*   %conv2.i.6.1154 = zext i8 %conv3.i.5.1143 to i32 *)
cast v_conv2_i_6_1154@uint32 v_conv3_i_5_1143@uint8;
(*   %xor.i.6.1155 = xor i32 %conv2.i.6.1154, %mul.i.6.1153 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_1155 v_conv2_i_6_1154 v_mul_i_6_1153;
(*   %conv3.i.6.1156 = trunc i32 %xor.i.6.1155 to i8 *)
split tmp_v_xor_i_6_1155 v_conv3_i_6_1156 v_xor_i_6_1155 8;
vpc v_conv3_i_6_1156@uint8 v_conv3_i_6_1156@uint32;
(*   %conv4.i.6.1157 = zext i8 %conv5.i.5.1146 to i32 *)
cast v_conv4_i_6_1157@uint32 v_conv5_i_5_1146@uint8;
(*   %shr.i.6.1158 = ashr i32 %conv4.i.6.1157, 1 *)
(* You may need to modify here *)
split v_shr_i_6_1158 tmp_to_be_used v_conv4_i_6_1157 1;
(*   %conv5.i.6.1159 = trunc i32 %shr.i.6.1158 to i8 *)
split tmp_v_shr_i_6_1158 v_conv5_i_6_1159 v_shr_i_6_1158 8;
vpc v_conv5_i_6_1159@uint8 v_conv5_i_6_1159@uint32;
(*   %conv6.i.6.1160 = zext i8 %conv7.i.5.1149 to i32 *)
cast v_conv6_i_6_1160@uint32 v_conv7_i_5_1149@uint8;
(*   %shl.i.6.1161 = shl i32 %conv6.i.6.1160, 1 *)
shls discard_34 v_shl_i_6_1161 v_conv6_i_6_1160 1;
(*   %conv7.i.6.1162 = trunc i32 %shl.i.6.1161 to i8 *)
split tmp_v_shl_i_6_1161 v_conv7_i_6_1162 v_shl_i_6_1161 8;
vpc v_conv7_i_6_1162@uint8 v_conv7_i_6_1162@uint32;
(*   %conv.i.7.1163 = zext i8 %conv5.i.6.1159 to i32 *)
cast v_conv_i_7_1163@uint32 v_conv5_i_6_1159@uint8;
(*   %and.i.7.1164 = and i32 %conv.i.7.1163, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_1164 v_conv_i_7_1163 (0x1)@uint32;
(*   %conv1.i.7.1165 = zext i8 %conv7.i.6.1162 to i32 *)
cast v_conv1_i_7_1165@uint32 v_conv7_i_6_1162@uint8;
(*   %mul.i.7.1166 = mul nsw i32 %and.i.7.1164, %conv1.i.7.1165 *)
mul v_mul_i_7_1166 v_and_i_7_1164 v_conv1_i_7_1165;
(*   %conv2.i.7.1167 = zext i8 %conv3.i.6.1156 to i32 *)
cast v_conv2_i_7_1167@uint32 v_conv3_i_6_1156@uint8;
(*   %xor.i.7.1168 = xor i32 %conv2.i.7.1167, %mul.i.7.1166 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_1168 v_conv2_i_7_1167 v_mul_i_7_1166;
(*   %conv3.i.7.1169 = trunc i32 %xor.i.7.1168 to i8 *)
split tmp_v_xor_i_7_1168 v_conv3_i_7_1169 v_xor_i_7_1168 8;
vpc v_conv3_i_7_1169@uint8 v_conv3_i_7_1169@uint32;
(*   %arrayidx7.1173 = getelementptr inbounds [16 x i8], [16 x i8]* %alpha, i64 0, i64 4 *)
(*   store i8 %conv3.i.7.1169, i8* %arrayidx7.1173, align 1 *)
mov alpha_4 v_conv3_i_7_1169;
(*   %arrayidx5.1.1 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %7 = load i8, i8* %arrayidx5.1.1, align 1 *)
mov v7 b_1;
(*   %conv.i.141.1 = zext i8 %7 to i32 *)
cast v_conv_i_141_1@uint32 v7@uint8;
(*   %and.i.142.1 = and i32 %conv.i.141.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_142_1 v_conv_i_141_1 (0x1)@uint32;
(*   %conv1.i.143.1 = zext i8 %5 to i32 *)
cast v_conv1_i_143_1@uint32 v5@uint8;
(*   %mul.i.144.1 = mul nsw i32 %and.i.142.1, %conv1.i.143.1 *)
mul v_mul_i_144_1 v_and_i_142_1 v_conv1_i_143_1;
(*   %conv3.i.145.1 = trunc i32 %mul.i.144.1 to i8 *)
split tmp_v_mul_i_144_1 v_conv3_i_145_1 v_mul_i_144_1 8;
vpc v_conv3_i_145_1@uint8 v_conv3_i_145_1@uint32;
(*   %conv4.i.146.1 = zext i8 %7 to i32 *)
cast v_conv4_i_146_1@uint32 v7@uint8;
(*   %shr.i.147.1 = ashr i32 %conv4.i.146.1, 1 *)
(* You may need to modify here *)
split v_shr_i_147_1 tmp_to_be_used v_conv4_i_146_1 1;
(*   %conv5.i.148.1 = trunc i32 %shr.i.147.1 to i8 *)
split tmp_v_shr_i_147_1 v_conv5_i_148_1 v_shr_i_147_1 8;
vpc v_conv5_i_148_1@uint8 v_conv5_i_148_1@uint32;
(*   %conv6.i.149.1 = zext i8 %5 to i32 *)
cast v_conv6_i_149_1@uint32 v5@uint8;
(*   %shl.i.150.1 = shl i32 %conv6.i.149.1, 1 *)
shls discard_35 v_shl_i_150_1 v_conv6_i_149_1 1;
(*   %conv7.i.151.1 = trunc i32 %shl.i.150.1 to i8 *)
split tmp_v_shl_i_150_1 v_conv7_i_151_1 v_shl_i_150_1 8;
vpc v_conv7_i_151_1@uint8 v_conv7_i_151_1@uint32;
(*   %conv.i.1.1.1 = zext i8 %conv5.i.148.1 to i32 *)
cast v_conv_i_1_1_1@uint32 v_conv5_i_148_1@uint8;
(*   %and.i.1.1.1 = and i32 %conv.i.1.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_1_1 v_conv_i_1_1_1 (0x1)@uint32;
(*   %conv1.i.1.1.1 = zext i8 %conv7.i.151.1 to i32 *)
cast v_conv1_i_1_1_1@uint32 v_conv7_i_151_1@uint8;
(*   %mul.i.1.1.1 = mul nsw i32 %and.i.1.1.1, %conv1.i.1.1.1 *)
mul v_mul_i_1_1_1 v_and_i_1_1_1 v_conv1_i_1_1_1;
(*   %conv2.i.1.1.1 = zext i8 %conv3.i.145.1 to i32 *)
cast v_conv2_i_1_1_1@uint32 v_conv3_i_145_1@uint8;
(*   %xor.i.1.1.1 = xor i32 %conv2.i.1.1.1, %mul.i.1.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_1_1 v_conv2_i_1_1_1 v_mul_i_1_1_1;
(*   %conv3.i.1.1.1 = trunc i32 %xor.i.1.1.1 to i8 *)
split tmp_v_xor_i_1_1_1 v_conv3_i_1_1_1 v_xor_i_1_1_1 8;
vpc v_conv3_i_1_1_1@uint8 v_conv3_i_1_1_1@uint32;
(*   %conv4.i.1.1.1 = zext i8 %conv5.i.148.1 to i32 *)
cast v_conv4_i_1_1_1@uint32 v_conv5_i_148_1@uint8;
(*   %shr.i.1.1.1 = ashr i32 %conv4.i.1.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_1_1_1 tmp_to_be_used v_conv4_i_1_1_1 1;
(*   %conv5.i.1.1.1 = trunc i32 %shr.i.1.1.1 to i8 *)
split tmp_v_shr_i_1_1_1 v_conv5_i_1_1_1 v_shr_i_1_1_1 8;
vpc v_conv5_i_1_1_1@uint8 v_conv5_i_1_1_1@uint32;
(*   %conv6.i.1.1.1 = zext i8 %conv7.i.151.1 to i32 *)
cast v_conv6_i_1_1_1@uint32 v_conv7_i_151_1@uint8;
(*   %shl.i.1.1.1 = shl i32 %conv6.i.1.1.1, 1 *)
shls discard_36 v_shl_i_1_1_1 v_conv6_i_1_1_1 1;
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
shls discard_37 v_shl_i_2_1_1 v_conv6_i_2_1_1 1;
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
shls discard_38 v_shl_i_3_1_1 v_conv6_i_3_1_1 1;
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
shls discard_39 v_shl_i_4_1_1 v_conv6_i_4_1_1 1;
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
shls discard_40 v_shl_i_5_1_1 v_conv6_i_5_1_1 1;
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
shls discard_41 v_shl_i_6_1_1 v_conv6_i_6_1_1 1;
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
(*   %arrayidx7.1.1 = getelementptr inbounds [16 x i8], [16 x i8]* %alpha, i64 0, i64 5 *)
(*   store i8 %conv3.i.7.1.1, i8* %arrayidx7.1.1, align 1 *)
mov alpha_5 v_conv3_i_7_1_1;
(*   %arrayidx5.2.1 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %8 = load i8, i8* %arrayidx5.2.1, align 1 *)
mov v8 b_2;
(*   %conv.i.252.1 = zext i8 %8 to i32 *)
cast v_conv_i_252_1@uint32 v8@uint8;
(*   %and.i.253.1 = and i32 %conv.i.252.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_253_1 v_conv_i_252_1 (0x1)@uint32;
(*   %conv1.i.254.1 = zext i8 %5 to i32 *)
cast v_conv1_i_254_1@uint32 v5@uint8;
(*   %mul.i.255.1 = mul nsw i32 %and.i.253.1, %conv1.i.254.1 *)
mul v_mul_i_255_1 v_and_i_253_1 v_conv1_i_254_1;
(*   %conv3.i.256.1 = trunc i32 %mul.i.255.1 to i8 *)
split tmp_v_mul_i_255_1 v_conv3_i_256_1 v_mul_i_255_1 8;
vpc v_conv3_i_256_1@uint8 v_conv3_i_256_1@uint32;
(*   %conv4.i.257.1 = zext i8 %8 to i32 *)
cast v_conv4_i_257_1@uint32 v8@uint8;
(*   %shr.i.258.1 = ashr i32 %conv4.i.257.1, 1 *)
(* You may need to modify here *)
split v_shr_i_258_1 tmp_to_be_used v_conv4_i_257_1 1;
(*   %conv5.i.259.1 = trunc i32 %shr.i.258.1 to i8 *)
split tmp_v_shr_i_258_1 v_conv5_i_259_1 v_shr_i_258_1 8;
vpc v_conv5_i_259_1@uint8 v_conv5_i_259_1@uint32;
(*   %conv6.i.260.1 = zext i8 %5 to i32 *)
cast v_conv6_i_260_1@uint32 v5@uint8;
(*   %shl.i.261.1 = shl i32 %conv6.i.260.1, 1 *)
shls discard_42 v_shl_i_261_1 v_conv6_i_260_1 1;
(*   %conv7.i.262.1 = trunc i32 %shl.i.261.1 to i8 *)
split tmp_v_shl_i_261_1 v_conv7_i_262_1 v_shl_i_261_1 8;
vpc v_conv7_i_262_1@uint8 v_conv7_i_262_1@uint32;
(*   %conv.i.1.2.1 = zext i8 %conv5.i.259.1 to i32 *)
cast v_conv_i_1_2_1@uint32 v_conv5_i_259_1@uint8;
(*   %and.i.1.2.1 = and i32 %conv.i.1.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_2_1 v_conv_i_1_2_1 (0x1)@uint32;
(*   %conv1.i.1.2.1 = zext i8 %conv7.i.262.1 to i32 *)
cast v_conv1_i_1_2_1@uint32 v_conv7_i_262_1@uint8;
(*   %mul.i.1.2.1 = mul nsw i32 %and.i.1.2.1, %conv1.i.1.2.1 *)
mul v_mul_i_1_2_1 v_and_i_1_2_1 v_conv1_i_1_2_1;
(*   %conv2.i.1.2.1 = zext i8 %conv3.i.256.1 to i32 *)
cast v_conv2_i_1_2_1@uint32 v_conv3_i_256_1@uint8;
(*   %xor.i.1.2.1 = xor i32 %conv2.i.1.2.1, %mul.i.1.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_2_1 v_conv2_i_1_2_1 v_mul_i_1_2_1;
(*   %conv3.i.1.2.1 = trunc i32 %xor.i.1.2.1 to i8 *)
split tmp_v_xor_i_1_2_1 v_conv3_i_1_2_1 v_xor_i_1_2_1 8;
vpc v_conv3_i_1_2_1@uint8 v_conv3_i_1_2_1@uint32;
(*   %conv4.i.1.2.1 = zext i8 %conv5.i.259.1 to i32 *)
cast v_conv4_i_1_2_1@uint32 v_conv5_i_259_1@uint8;
(*   %shr.i.1.2.1 = ashr i32 %conv4.i.1.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i_1_2_1 tmp_to_be_used v_conv4_i_1_2_1 1;
(*   %conv5.i.1.2.1 = trunc i32 %shr.i.1.2.1 to i8 *)
split tmp_v_shr_i_1_2_1 v_conv5_i_1_2_1 v_shr_i_1_2_1 8;
vpc v_conv5_i_1_2_1@uint8 v_conv5_i_1_2_1@uint32;
(*   %conv6.i.1.2.1 = zext i8 %conv7.i.262.1 to i32 *)
cast v_conv6_i_1_2_1@uint32 v_conv7_i_262_1@uint8;
(*   %shl.i.1.2.1 = shl i32 %conv6.i.1.2.1, 1 *)
shls discard_43 v_shl_i_1_2_1 v_conv6_i_1_2_1 1;
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
shls discard_44 v_shl_i_2_2_1 v_conv6_i_2_2_1 1;
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
shls discard_45 v_shl_i_3_2_1 v_conv6_i_3_2_1 1;
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
shls discard_46 v_shl_i_4_2_1 v_conv6_i_4_2_1 1;
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
shls discard_47 v_shl_i_5_2_1 v_conv6_i_5_2_1 1;
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
shls discard_48 v_shl_i_6_2_1 v_conv6_i_6_2_1 1;
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
(*   %arrayidx7.2.1 = getelementptr inbounds [16 x i8], [16 x i8]* %alpha, i64 0, i64 6 *)
(*   store i8 %conv3.i.7.2.1, i8* %arrayidx7.2.1, align 1 *)
mov alpha_6 v_conv3_i_7_2_1;
(*   %arrayidx5.3.1 = getelementptr inbounds i8, i8* %b, i64 3 *)
(*   %9 = load i8, i8* %arrayidx5.3.1, align 1 *)
mov v9 b_3;
(*   %conv.i.363.1 = zext i8 %9 to i32 *)
cast v_conv_i_363_1@uint32 v9@uint8;
(*   %and.i.364.1 = and i32 %conv.i.363.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_364_1 v_conv_i_363_1 (0x1)@uint32;
(*   %conv1.i.365.1 = zext i8 %5 to i32 *)
cast v_conv1_i_365_1@uint32 v5@uint8;
(*   %mul.i.366.1 = mul nsw i32 %and.i.364.1, %conv1.i.365.1 *)
mul v_mul_i_366_1 v_and_i_364_1 v_conv1_i_365_1;
(*   %conv3.i.367.1 = trunc i32 %mul.i.366.1 to i8 *)
split tmp_v_mul_i_366_1 v_conv3_i_367_1 v_mul_i_366_1 8;
vpc v_conv3_i_367_1@uint8 v_conv3_i_367_1@uint32;
(*   %conv4.i.368.1 = zext i8 %9 to i32 *)
cast v_conv4_i_368_1@uint32 v9@uint8;
(*   %shr.i.369.1 = ashr i32 %conv4.i.368.1, 1 *)
(* You may need to modify here *)
split v_shr_i_369_1 tmp_to_be_used v_conv4_i_368_1 1;
(*   %conv5.i.370.1 = trunc i32 %shr.i.369.1 to i8 *)
split tmp_v_shr_i_369_1 v_conv5_i_370_1 v_shr_i_369_1 8;
vpc v_conv5_i_370_1@uint8 v_conv5_i_370_1@uint32;
(*   %conv6.i.371.1 = zext i8 %5 to i32 *)
cast v_conv6_i_371_1@uint32 v5@uint8;
(*   %shl.i.372.1 = shl i32 %conv6.i.371.1, 1 *)
shls discard_49 v_shl_i_372_1 v_conv6_i_371_1 1;
(*   %conv7.i.373.1 = trunc i32 %shl.i.372.1 to i8 *)
split tmp_v_shl_i_372_1 v_conv7_i_373_1 v_shl_i_372_1 8;
vpc v_conv7_i_373_1@uint8 v_conv7_i_373_1@uint32;
(*   %conv.i.1.3.1 = zext i8 %conv5.i.370.1 to i32 *)
cast v_conv_i_1_3_1@uint32 v_conv5_i_370_1@uint8;
(*   %and.i.1.3.1 = and i32 %conv.i.1.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_3_1 v_conv_i_1_3_1 (0x1)@uint32;
(*   %conv1.i.1.3.1 = zext i8 %conv7.i.373.1 to i32 *)
cast v_conv1_i_1_3_1@uint32 v_conv7_i_373_1@uint8;
(*   %mul.i.1.3.1 = mul nsw i32 %and.i.1.3.1, %conv1.i.1.3.1 *)
mul v_mul_i_1_3_1 v_and_i_1_3_1 v_conv1_i_1_3_1;
(*   %conv2.i.1.3.1 = zext i8 %conv3.i.367.1 to i32 *)
cast v_conv2_i_1_3_1@uint32 v_conv3_i_367_1@uint8;
(*   %xor.i.1.3.1 = xor i32 %conv2.i.1.3.1, %mul.i.1.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_3_1 v_conv2_i_1_3_1 v_mul_i_1_3_1;
(*   %conv3.i.1.3.1 = trunc i32 %xor.i.1.3.1 to i8 *)
split tmp_v_xor_i_1_3_1 v_conv3_i_1_3_1 v_xor_i_1_3_1 8;
vpc v_conv3_i_1_3_1@uint8 v_conv3_i_1_3_1@uint32;
(*   %conv4.i.1.3.1 = zext i8 %conv5.i.370.1 to i32 *)
cast v_conv4_i_1_3_1@uint32 v_conv5_i_370_1@uint8;
(*   %shr.i.1.3.1 = ashr i32 %conv4.i.1.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i_1_3_1 tmp_to_be_used v_conv4_i_1_3_1 1;
(*   %conv5.i.1.3.1 = trunc i32 %shr.i.1.3.1 to i8 *)
split tmp_v_shr_i_1_3_1 v_conv5_i_1_3_1 v_shr_i_1_3_1 8;
vpc v_conv5_i_1_3_1@uint8 v_conv5_i_1_3_1@uint32;
(*   %conv6.i.1.3.1 = zext i8 %conv7.i.373.1 to i32 *)
cast v_conv6_i_1_3_1@uint32 v_conv7_i_373_1@uint8;
(*   %shl.i.1.3.1 = shl i32 %conv6.i.1.3.1, 1 *)
shls discard_50 v_shl_i_1_3_1 v_conv6_i_1_3_1 1;
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
shls discard_51 v_shl_i_2_3_1 v_conv6_i_2_3_1 1;
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
shls discard_52 v_shl_i_3_3_1 v_conv6_i_3_3_1 1;
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
shls discard_53 v_shl_i_4_3_1 v_conv6_i_4_3_1 1;
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
shls discard_54 v_shl_i_5_3_1 v_conv6_i_5_3_1 1;
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
shls discard_55 v_shl_i_6_3_1 v_conv6_i_6_3_1 1;
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
(*   %arrayidx7.3.1 = getelementptr inbounds [16 x i8], [16 x i8]* %alpha, i64 0, i64 7 *)
(*   store i8 %conv3.i.7.3.1, i8* %arrayidx7.3.1, align 1 *)
mov alpha_7 v_conv3_i_7_3_1;
(*   %arrayidx.2 = getelementptr inbounds i8, i8* %a, i64 2 *)
(*   %10 = load i8, i8* %arrayidx.2, align 1 *)
mov v10 a_2;
(*   %11 = load i8, i8* %b, align 1 *)
mov v11 b_0;
(*   %conv.i.2176 = zext i8 %11 to i32 *)
cast v_conv_i_2176@uint32 v11@uint8;
(*   %and.i.2177 = and i32 %conv.i.2176, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2177 v_conv_i_2176 (0x1)@uint32;
(*   %conv1.i.2178 = zext i8 %10 to i32 *)
cast v_conv1_i_2178@uint32 v10@uint8;
(*   %mul.i.2179 = mul nsw i32 %and.i.2177, %conv1.i.2178 *)
mul v_mul_i_2179 v_and_i_2177 v_conv1_i_2178;
(*   %conv3.i.2180 = trunc i32 %mul.i.2179 to i8 *)
split tmp_v_mul_i_2179 v_conv3_i_2180 v_mul_i_2179 8;
vpc v_conv3_i_2180@uint8 v_conv3_i_2180@uint32;
(*   %conv4.i.2181 = zext i8 %11 to i32 *)
cast v_conv4_i_2181@uint32 v11@uint8;
(*   %shr.i.2182 = ashr i32 %conv4.i.2181, 1 *)
(* You may need to modify here *)
split v_shr_i_2182 tmp_to_be_used v_conv4_i_2181 1;
(*   %conv5.i.2183 = trunc i32 %shr.i.2182 to i8 *)
split tmp_v_shr_i_2182 v_conv5_i_2183 v_shr_i_2182 8;
vpc v_conv5_i_2183@uint8 v_conv5_i_2183@uint32;
(*   %conv6.i.2184 = zext i8 %10 to i32 *)
cast v_conv6_i_2184@uint32 v10@uint8;
(*   %shl.i.2185 = shl i32 %conv6.i.2184, 1 *)
shls discard_56 v_shl_i_2185 v_conv6_i_2184 1;
(*   %conv7.i.2186 = trunc i32 %shl.i.2185 to i8 *)
split tmp_v_shl_i_2185 v_conv7_i_2186 v_shl_i_2185 8;
vpc v_conv7_i_2186@uint8 v_conv7_i_2186@uint32;
(*   %conv.i.1.2187 = zext i8 %conv5.i.2183 to i32 *)
cast v_conv_i_1_2187@uint32 v_conv5_i_2183@uint8;
(*   %and.i.1.2188 = and i32 %conv.i.1.2187, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_2188 v_conv_i_1_2187 (0x1)@uint32;
(*   %conv1.i.1.2189 = zext i8 %conv7.i.2186 to i32 *)
cast v_conv1_i_1_2189@uint32 v_conv7_i_2186@uint8;
(*   %mul.i.1.2190 = mul nsw i32 %and.i.1.2188, %conv1.i.1.2189 *)
mul v_mul_i_1_2190 v_and_i_1_2188 v_conv1_i_1_2189;
(*   %conv2.i.1.2191 = zext i8 %conv3.i.2180 to i32 *)
cast v_conv2_i_1_2191@uint32 v_conv3_i_2180@uint8;
(*   %xor.i.1.2192 = xor i32 %conv2.i.1.2191, %mul.i.1.2190 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_2192 v_conv2_i_1_2191 v_mul_i_1_2190;
(*   %conv3.i.1.2193 = trunc i32 %xor.i.1.2192 to i8 *)
split tmp_v_xor_i_1_2192 v_conv3_i_1_2193 v_xor_i_1_2192 8;
vpc v_conv3_i_1_2193@uint8 v_conv3_i_1_2193@uint32;
(*   %conv4.i.1.2194 = zext i8 %conv5.i.2183 to i32 *)
cast v_conv4_i_1_2194@uint32 v_conv5_i_2183@uint8;
(*   %shr.i.1.2195 = ashr i32 %conv4.i.1.2194, 1 *)
(* You may need to modify here *)
split v_shr_i_1_2195 tmp_to_be_used v_conv4_i_1_2194 1;
(*   %conv5.i.1.2196 = trunc i32 %shr.i.1.2195 to i8 *)
split tmp_v_shr_i_1_2195 v_conv5_i_1_2196 v_shr_i_1_2195 8;
vpc v_conv5_i_1_2196@uint8 v_conv5_i_1_2196@uint32;
(*   %conv6.i.1.2197 = zext i8 %conv7.i.2186 to i32 *)
cast v_conv6_i_1_2197@uint32 v_conv7_i_2186@uint8;
(*   %shl.i.1.2198 = shl i32 %conv6.i.1.2197, 1 *)
shls discard_57 v_shl_i_1_2198 v_conv6_i_1_2197 1;
(*   %conv7.i.1.2199 = trunc i32 %shl.i.1.2198 to i8 *)
split tmp_v_shl_i_1_2198 v_conv7_i_1_2199 v_shl_i_1_2198 8;
vpc v_conv7_i_1_2199@uint8 v_conv7_i_1_2199@uint32;
(*   %conv.i.2.2200 = zext i8 %conv5.i.1.2196 to i32 *)
cast v_conv_i_2_2200@uint32 v_conv5_i_1_2196@uint8;
(*   %and.i.2.2201 = and i32 %conv.i.2.2200, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_2201 v_conv_i_2_2200 (0x1)@uint32;
(*   %conv1.i.2.2202 = zext i8 %conv7.i.1.2199 to i32 *)
cast v_conv1_i_2_2202@uint32 v_conv7_i_1_2199@uint8;
(*   %mul.i.2.2203 = mul nsw i32 %and.i.2.2201, %conv1.i.2.2202 *)
mul v_mul_i_2_2203 v_and_i_2_2201 v_conv1_i_2_2202;
(*   %conv2.i.2.2204 = zext i8 %conv3.i.1.2193 to i32 *)
cast v_conv2_i_2_2204@uint32 v_conv3_i_1_2193@uint8;
(*   %xor.i.2.2205 = xor i32 %conv2.i.2.2204, %mul.i.2.2203 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_2205 v_conv2_i_2_2204 v_mul_i_2_2203;
(*   %conv3.i.2.2206 = trunc i32 %xor.i.2.2205 to i8 *)
split tmp_v_xor_i_2_2205 v_conv3_i_2_2206 v_xor_i_2_2205 8;
vpc v_conv3_i_2_2206@uint8 v_conv3_i_2_2206@uint32;
(*   %conv4.i.2.2207 = zext i8 %conv5.i.1.2196 to i32 *)
cast v_conv4_i_2_2207@uint32 v_conv5_i_1_2196@uint8;
(*   %shr.i.2.2208 = ashr i32 %conv4.i.2.2207, 1 *)
(* You may need to modify here *)
split v_shr_i_2_2208 tmp_to_be_used v_conv4_i_2_2207 1;
(*   %conv5.i.2.2209 = trunc i32 %shr.i.2.2208 to i8 *)
split tmp_v_shr_i_2_2208 v_conv5_i_2_2209 v_shr_i_2_2208 8;
vpc v_conv5_i_2_2209@uint8 v_conv5_i_2_2209@uint32;
(*   %conv6.i.2.2210 = zext i8 %conv7.i.1.2199 to i32 *)
cast v_conv6_i_2_2210@uint32 v_conv7_i_1_2199@uint8;
(*   %shl.i.2.2211 = shl i32 %conv6.i.2.2210, 1 *)
shls discard_58 v_shl_i_2_2211 v_conv6_i_2_2210 1;
(*   %conv7.i.2.2212 = trunc i32 %shl.i.2.2211 to i8 *)
split tmp_v_shl_i_2_2211 v_conv7_i_2_2212 v_shl_i_2_2211 8;
vpc v_conv7_i_2_2212@uint8 v_conv7_i_2_2212@uint32;
(*   %conv.i.3.2213 = zext i8 %conv5.i.2.2209 to i32 *)
cast v_conv_i_3_2213@uint32 v_conv5_i_2_2209@uint8;
(*   %and.i.3.2214 = and i32 %conv.i.3.2213, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_2214 v_conv_i_3_2213 (0x1)@uint32;
(*   %conv1.i.3.2215 = zext i8 %conv7.i.2.2212 to i32 *)
cast v_conv1_i_3_2215@uint32 v_conv7_i_2_2212@uint8;
(*   %mul.i.3.2216 = mul nsw i32 %and.i.3.2214, %conv1.i.3.2215 *)
mul v_mul_i_3_2216 v_and_i_3_2214 v_conv1_i_3_2215;
(*   %conv2.i.3.2217 = zext i8 %conv3.i.2.2206 to i32 *)
cast v_conv2_i_3_2217@uint32 v_conv3_i_2_2206@uint8;
(*   %xor.i.3.2218 = xor i32 %conv2.i.3.2217, %mul.i.3.2216 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_2218 v_conv2_i_3_2217 v_mul_i_3_2216;
(*   %conv3.i.3.2219 = trunc i32 %xor.i.3.2218 to i8 *)
split tmp_v_xor_i_3_2218 v_conv3_i_3_2219 v_xor_i_3_2218 8;
vpc v_conv3_i_3_2219@uint8 v_conv3_i_3_2219@uint32;
(*   %conv4.i.3.2220 = zext i8 %conv5.i.2.2209 to i32 *)
cast v_conv4_i_3_2220@uint32 v_conv5_i_2_2209@uint8;
(*   %shr.i.3.2221 = ashr i32 %conv4.i.3.2220, 1 *)
(* You may need to modify here *)
split v_shr_i_3_2221 tmp_to_be_used v_conv4_i_3_2220 1;
(*   %conv5.i.3.2222 = trunc i32 %shr.i.3.2221 to i8 *)
split tmp_v_shr_i_3_2221 v_conv5_i_3_2222 v_shr_i_3_2221 8;
vpc v_conv5_i_3_2222@uint8 v_conv5_i_3_2222@uint32;
(*   %conv6.i.3.2223 = zext i8 %conv7.i.2.2212 to i32 *)
cast v_conv6_i_3_2223@uint32 v_conv7_i_2_2212@uint8;
(*   %shl.i.3.2224 = shl i32 %conv6.i.3.2223, 1 *)
shls discard_59 v_shl_i_3_2224 v_conv6_i_3_2223 1;
(*   %conv7.i.3.2225 = trunc i32 %shl.i.3.2224 to i8 *)
split tmp_v_shl_i_3_2224 v_conv7_i_3_2225 v_shl_i_3_2224 8;
vpc v_conv7_i_3_2225@uint8 v_conv7_i_3_2225@uint32;
(*   %conv.i.4.2226 = zext i8 %conv5.i.3.2222 to i32 *)
cast v_conv_i_4_2226@uint32 v_conv5_i_3_2222@uint8;
(*   %and.i.4.2227 = and i32 %conv.i.4.2226, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_2227 v_conv_i_4_2226 (0x1)@uint32;
(*   %conv1.i.4.2228 = zext i8 %conv7.i.3.2225 to i32 *)
cast v_conv1_i_4_2228@uint32 v_conv7_i_3_2225@uint8;
(*   %mul.i.4.2229 = mul nsw i32 %and.i.4.2227, %conv1.i.4.2228 *)
mul v_mul_i_4_2229 v_and_i_4_2227 v_conv1_i_4_2228;
(*   %conv2.i.4.2230 = zext i8 %conv3.i.3.2219 to i32 *)
cast v_conv2_i_4_2230@uint32 v_conv3_i_3_2219@uint8;
(*   %xor.i.4.2231 = xor i32 %conv2.i.4.2230, %mul.i.4.2229 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_2231 v_conv2_i_4_2230 v_mul_i_4_2229;
(*   %conv3.i.4.2232 = trunc i32 %xor.i.4.2231 to i8 *)
split tmp_v_xor_i_4_2231 v_conv3_i_4_2232 v_xor_i_4_2231 8;
vpc v_conv3_i_4_2232@uint8 v_conv3_i_4_2232@uint32;
(*   %conv4.i.4.2233 = zext i8 %conv5.i.3.2222 to i32 *)
cast v_conv4_i_4_2233@uint32 v_conv5_i_3_2222@uint8;
(*   %shr.i.4.2234 = ashr i32 %conv4.i.4.2233, 1 *)
(* You may need to modify here *)
split v_shr_i_4_2234 tmp_to_be_used v_conv4_i_4_2233 1;
(*   %conv5.i.4.2235 = trunc i32 %shr.i.4.2234 to i8 *)
split tmp_v_shr_i_4_2234 v_conv5_i_4_2235 v_shr_i_4_2234 8;
vpc v_conv5_i_4_2235@uint8 v_conv5_i_4_2235@uint32;
(*   %conv6.i.4.2236 = zext i8 %conv7.i.3.2225 to i32 *)
cast v_conv6_i_4_2236@uint32 v_conv7_i_3_2225@uint8;
(*   %shl.i.4.2237 = shl i32 %conv6.i.4.2236, 1 *)
shls discard_60 v_shl_i_4_2237 v_conv6_i_4_2236 1;
(*   %conv7.i.4.2238 = trunc i32 %shl.i.4.2237 to i8 *)
split tmp_v_shl_i_4_2237 v_conv7_i_4_2238 v_shl_i_4_2237 8;
vpc v_conv7_i_4_2238@uint8 v_conv7_i_4_2238@uint32;
(*   %conv.i.5.2239 = zext i8 %conv5.i.4.2235 to i32 *)
cast v_conv_i_5_2239@uint32 v_conv5_i_4_2235@uint8;
(*   %and.i.5.2240 = and i32 %conv.i.5.2239, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_2240 v_conv_i_5_2239 (0x1)@uint32;
(*   %conv1.i.5.2241 = zext i8 %conv7.i.4.2238 to i32 *)
cast v_conv1_i_5_2241@uint32 v_conv7_i_4_2238@uint8;
(*   %mul.i.5.2242 = mul nsw i32 %and.i.5.2240, %conv1.i.5.2241 *)
mul v_mul_i_5_2242 v_and_i_5_2240 v_conv1_i_5_2241;
(*   %conv2.i.5.2243 = zext i8 %conv3.i.4.2232 to i32 *)
cast v_conv2_i_5_2243@uint32 v_conv3_i_4_2232@uint8;
(*   %xor.i.5.2244 = xor i32 %conv2.i.5.2243, %mul.i.5.2242 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_2244 v_conv2_i_5_2243 v_mul_i_5_2242;
(*   %conv3.i.5.2245 = trunc i32 %xor.i.5.2244 to i8 *)
split tmp_v_xor_i_5_2244 v_conv3_i_5_2245 v_xor_i_5_2244 8;
vpc v_conv3_i_5_2245@uint8 v_conv3_i_5_2245@uint32;
(*   %conv4.i.5.2246 = zext i8 %conv5.i.4.2235 to i32 *)
cast v_conv4_i_5_2246@uint32 v_conv5_i_4_2235@uint8;
(*   %shr.i.5.2247 = ashr i32 %conv4.i.5.2246, 1 *)
(* You may need to modify here *)
split v_shr_i_5_2247 tmp_to_be_used v_conv4_i_5_2246 1;
(*   %conv5.i.5.2248 = trunc i32 %shr.i.5.2247 to i8 *)
split tmp_v_shr_i_5_2247 v_conv5_i_5_2248 v_shr_i_5_2247 8;
vpc v_conv5_i_5_2248@uint8 v_conv5_i_5_2248@uint32;
(*   %conv6.i.5.2249 = zext i8 %conv7.i.4.2238 to i32 *)
cast v_conv6_i_5_2249@uint32 v_conv7_i_4_2238@uint8;
(*   %shl.i.5.2250 = shl i32 %conv6.i.5.2249, 1 *)
shls discard_61 v_shl_i_5_2250 v_conv6_i_5_2249 1;
(*   %conv7.i.5.2251 = trunc i32 %shl.i.5.2250 to i8 *)
split tmp_v_shl_i_5_2250 v_conv7_i_5_2251 v_shl_i_5_2250 8;
vpc v_conv7_i_5_2251@uint8 v_conv7_i_5_2251@uint32;
(*   %conv.i.6.2252 = zext i8 %conv5.i.5.2248 to i32 *)
cast v_conv_i_6_2252@uint32 v_conv5_i_5_2248@uint8;
(*   %and.i.6.2253 = and i32 %conv.i.6.2252, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_2253 v_conv_i_6_2252 (0x1)@uint32;
(*   %conv1.i.6.2254 = zext i8 %conv7.i.5.2251 to i32 *)
cast v_conv1_i_6_2254@uint32 v_conv7_i_5_2251@uint8;
(*   %mul.i.6.2255 = mul nsw i32 %and.i.6.2253, %conv1.i.6.2254 *)
mul v_mul_i_6_2255 v_and_i_6_2253 v_conv1_i_6_2254;
(*   %conv2.i.6.2256 = zext i8 %conv3.i.5.2245 to i32 *)
cast v_conv2_i_6_2256@uint32 v_conv3_i_5_2245@uint8;
(*   %xor.i.6.2257 = xor i32 %conv2.i.6.2256, %mul.i.6.2255 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_2257 v_conv2_i_6_2256 v_mul_i_6_2255;
(*   %conv3.i.6.2258 = trunc i32 %xor.i.6.2257 to i8 *)
split tmp_v_xor_i_6_2257 v_conv3_i_6_2258 v_xor_i_6_2257 8;
vpc v_conv3_i_6_2258@uint8 v_conv3_i_6_2258@uint32;
(*   %conv4.i.6.2259 = zext i8 %conv5.i.5.2248 to i32 *)
cast v_conv4_i_6_2259@uint32 v_conv5_i_5_2248@uint8;
(*   %shr.i.6.2260 = ashr i32 %conv4.i.6.2259, 1 *)
(* You may need to modify here *)
split v_shr_i_6_2260 tmp_to_be_used v_conv4_i_6_2259 1;
(*   %conv5.i.6.2261 = trunc i32 %shr.i.6.2260 to i8 *)
split tmp_v_shr_i_6_2260 v_conv5_i_6_2261 v_shr_i_6_2260 8;
vpc v_conv5_i_6_2261@uint8 v_conv5_i_6_2261@uint32;
(*   %conv6.i.6.2262 = zext i8 %conv7.i.5.2251 to i32 *)
cast v_conv6_i_6_2262@uint32 v_conv7_i_5_2251@uint8;
(*   %shl.i.6.2263 = shl i32 %conv6.i.6.2262, 1 *)
shls discard_62 v_shl_i_6_2263 v_conv6_i_6_2262 1;
(*   %conv7.i.6.2264 = trunc i32 %shl.i.6.2263 to i8 *)
split tmp_v_shl_i_6_2263 v_conv7_i_6_2264 v_shl_i_6_2263 8;
vpc v_conv7_i_6_2264@uint8 v_conv7_i_6_2264@uint32;
(*   %conv.i.7.2265 = zext i8 %conv5.i.6.2261 to i32 *)
cast v_conv_i_7_2265@uint32 v_conv5_i_6_2261@uint8;
(*   %and.i.7.2266 = and i32 %conv.i.7.2265, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_2266 v_conv_i_7_2265 (0x1)@uint32;
(*   %conv1.i.7.2267 = zext i8 %conv7.i.6.2264 to i32 *)
cast v_conv1_i_7_2267@uint32 v_conv7_i_6_2264@uint8;
(*   %mul.i.7.2268 = mul nsw i32 %and.i.7.2266, %conv1.i.7.2267 *)
mul v_mul_i_7_2268 v_and_i_7_2266 v_conv1_i_7_2267;
(*   %conv2.i.7.2269 = zext i8 %conv3.i.6.2258 to i32 *)
cast v_conv2_i_7_2269@uint32 v_conv3_i_6_2258@uint8;
(*   %xor.i.7.2270 = xor i32 %conv2.i.7.2269, %mul.i.7.2268 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_2270 v_conv2_i_7_2269 v_mul_i_7_2268;
(*   %conv3.i.7.2271 = trunc i32 %xor.i.7.2270 to i8 *)
split tmp_v_xor_i_7_2270 v_conv3_i_7_2271 v_xor_i_7_2270 8;
vpc v_conv3_i_7_2271@uint8 v_conv3_i_7_2271@uint32;
(*   %arrayidx7.2275 = getelementptr inbounds [16 x i8], [16 x i8]* %alpha, i64 0, i64 8 *)
(*   store i8 %conv3.i.7.2271, i8* %arrayidx7.2275, align 1 *)
mov alpha_8 v_conv3_i_7_2271;
(*   %arrayidx5.1.2 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %12 = load i8, i8* %arrayidx5.1.2, align 1 *)
mov v12 b_1;
(*   %conv.i.141.2 = zext i8 %12 to i32 *)
cast v_conv_i_141_2@uint32 v12@uint8;
(*   %and.i.142.2 = and i32 %conv.i.141.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_142_2 v_conv_i_141_2 (0x1)@uint32;
(*   %conv1.i.143.2 = zext i8 %10 to i32 *)
cast v_conv1_i_143_2@uint32 v10@uint8;
(*   %mul.i.144.2 = mul nsw i32 %and.i.142.2, %conv1.i.143.2 *)
mul v_mul_i_144_2 v_and_i_142_2 v_conv1_i_143_2;
(*   %conv3.i.145.2 = trunc i32 %mul.i.144.2 to i8 *)
split tmp_v_mul_i_144_2 v_conv3_i_145_2 v_mul_i_144_2 8;
vpc v_conv3_i_145_2@uint8 v_conv3_i_145_2@uint32;
(*   %conv4.i.146.2 = zext i8 %12 to i32 *)
cast v_conv4_i_146_2@uint32 v12@uint8;
(*   %shr.i.147.2 = ashr i32 %conv4.i.146.2, 1 *)
(* You may need to modify here *)
split v_shr_i_147_2 tmp_to_be_used v_conv4_i_146_2 1;
(*   %conv5.i.148.2 = trunc i32 %shr.i.147.2 to i8 *)
split tmp_v_shr_i_147_2 v_conv5_i_148_2 v_shr_i_147_2 8;
vpc v_conv5_i_148_2@uint8 v_conv5_i_148_2@uint32;
(*   %conv6.i.149.2 = zext i8 %10 to i32 *)
cast v_conv6_i_149_2@uint32 v10@uint8;
(*   %shl.i.150.2 = shl i32 %conv6.i.149.2, 1 *)
shls discard_63 v_shl_i_150_2 v_conv6_i_149_2 1;
(*   %conv7.i.151.2 = trunc i32 %shl.i.150.2 to i8 *)
split tmp_v_shl_i_150_2 v_conv7_i_151_2 v_shl_i_150_2 8;
vpc v_conv7_i_151_2@uint8 v_conv7_i_151_2@uint32;
(*   %conv.i.1.1.2 = zext i8 %conv5.i.148.2 to i32 *)
cast v_conv_i_1_1_2@uint32 v_conv5_i_148_2@uint8;
(*   %and.i.1.1.2 = and i32 %conv.i.1.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_1_2 v_conv_i_1_1_2 (0x1)@uint32;
(*   %conv1.i.1.1.2 = zext i8 %conv7.i.151.2 to i32 *)
cast v_conv1_i_1_1_2@uint32 v_conv7_i_151_2@uint8;
(*   %mul.i.1.1.2 = mul nsw i32 %and.i.1.1.2, %conv1.i.1.1.2 *)
mul v_mul_i_1_1_2 v_and_i_1_1_2 v_conv1_i_1_1_2;
(*   %conv2.i.1.1.2 = zext i8 %conv3.i.145.2 to i32 *)
cast v_conv2_i_1_1_2@uint32 v_conv3_i_145_2@uint8;
(*   %xor.i.1.1.2 = xor i32 %conv2.i.1.1.2, %mul.i.1.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_1_2 v_conv2_i_1_1_2 v_mul_i_1_1_2;
(*   %conv3.i.1.1.2 = trunc i32 %xor.i.1.1.2 to i8 *)
split tmp_v_xor_i_1_1_2 v_conv3_i_1_1_2 v_xor_i_1_1_2 8;
vpc v_conv3_i_1_1_2@uint8 v_conv3_i_1_1_2@uint32;
(*   %conv4.i.1.1.2 = zext i8 %conv5.i.148.2 to i32 *)
cast v_conv4_i_1_1_2@uint32 v_conv5_i_148_2@uint8;
(*   %shr.i.1.1.2 = ashr i32 %conv4.i.1.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_1_1_2 tmp_to_be_used v_conv4_i_1_1_2 1;
(*   %conv5.i.1.1.2 = trunc i32 %shr.i.1.1.2 to i8 *)
split tmp_v_shr_i_1_1_2 v_conv5_i_1_1_2 v_shr_i_1_1_2 8;
vpc v_conv5_i_1_1_2@uint8 v_conv5_i_1_1_2@uint32;
(*   %conv6.i.1.1.2 = zext i8 %conv7.i.151.2 to i32 *)
cast v_conv6_i_1_1_2@uint32 v_conv7_i_151_2@uint8;
(*   %shl.i.1.1.2 = shl i32 %conv6.i.1.1.2, 1 *)
shls discard_64 v_shl_i_1_1_2 v_conv6_i_1_1_2 1;
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
shls discard_65 v_shl_i_2_1_2 v_conv6_i_2_1_2 1;
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
shls discard_66 v_shl_i_3_1_2 v_conv6_i_3_1_2 1;
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
shls discard_67 v_shl_i_4_1_2 v_conv6_i_4_1_2 1;
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
shls discard_68 v_shl_i_5_1_2 v_conv6_i_5_1_2 1;
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
shls discard_69 v_shl_i_6_1_2 v_conv6_i_6_1_2 1;
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
(*   %arrayidx7.1.2 = getelementptr inbounds [16 x i8], [16 x i8]* %alpha, i64 0, i64 9 *)
(*   store i8 %conv3.i.7.1.2, i8* %arrayidx7.1.2, align 1 *)
mov alpha_9 v_conv3_i_7_1_2;
(*   %arrayidx5.2.2 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %13 = load i8, i8* %arrayidx5.2.2, align 1 *)
mov v13 b_2;
(*   %conv.i.252.2 = zext i8 %13 to i32 *)
cast v_conv_i_252_2@uint32 v13@uint8;
(*   %and.i.253.2 = and i32 %conv.i.252.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_253_2 v_conv_i_252_2 (0x1)@uint32;
(*   %conv1.i.254.2 = zext i8 %10 to i32 *)
cast v_conv1_i_254_2@uint32 v10@uint8;
(*   %mul.i.255.2 = mul nsw i32 %and.i.253.2, %conv1.i.254.2 *)
mul v_mul_i_255_2 v_and_i_253_2 v_conv1_i_254_2;
(*   %conv3.i.256.2 = trunc i32 %mul.i.255.2 to i8 *)
split tmp_v_mul_i_255_2 v_conv3_i_256_2 v_mul_i_255_2 8;
vpc v_conv3_i_256_2@uint8 v_conv3_i_256_2@uint32;
(*   %conv4.i.257.2 = zext i8 %13 to i32 *)
cast v_conv4_i_257_2@uint32 v13@uint8;
(*   %shr.i.258.2 = ashr i32 %conv4.i.257.2, 1 *)
(* You may need to modify here *)
split v_shr_i_258_2 tmp_to_be_used v_conv4_i_257_2 1;
(*   %conv5.i.259.2 = trunc i32 %shr.i.258.2 to i8 *)
split tmp_v_shr_i_258_2 v_conv5_i_259_2 v_shr_i_258_2 8;
vpc v_conv5_i_259_2@uint8 v_conv5_i_259_2@uint32;
(*   %conv6.i.260.2 = zext i8 %10 to i32 *)
cast v_conv6_i_260_2@uint32 v10@uint8;
(*   %shl.i.261.2 = shl i32 %conv6.i.260.2, 1 *)
shls discard_70 v_shl_i_261_2 v_conv6_i_260_2 1;
(*   %conv7.i.262.2 = trunc i32 %shl.i.261.2 to i8 *)
split tmp_v_shl_i_261_2 v_conv7_i_262_2 v_shl_i_261_2 8;
vpc v_conv7_i_262_2@uint8 v_conv7_i_262_2@uint32;
(*   %conv.i.1.2.2 = zext i8 %conv5.i.259.2 to i32 *)
cast v_conv_i_1_2_2@uint32 v_conv5_i_259_2@uint8;
(*   %and.i.1.2.2 = and i32 %conv.i.1.2.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_2_2 v_conv_i_1_2_2 (0x1)@uint32;
(*   %conv1.i.1.2.2 = zext i8 %conv7.i.262.2 to i32 *)
cast v_conv1_i_1_2_2@uint32 v_conv7_i_262_2@uint8;
(*   %mul.i.1.2.2 = mul nsw i32 %and.i.1.2.2, %conv1.i.1.2.2 *)
mul v_mul_i_1_2_2 v_and_i_1_2_2 v_conv1_i_1_2_2;
(*   %conv2.i.1.2.2 = zext i8 %conv3.i.256.2 to i32 *)
cast v_conv2_i_1_2_2@uint32 v_conv3_i_256_2@uint8;
(*   %xor.i.1.2.2 = xor i32 %conv2.i.1.2.2, %mul.i.1.2.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_2_2 v_conv2_i_1_2_2 v_mul_i_1_2_2;
(*   %conv3.i.1.2.2 = trunc i32 %xor.i.1.2.2 to i8 *)
split tmp_v_xor_i_1_2_2 v_conv3_i_1_2_2 v_xor_i_1_2_2 8;
vpc v_conv3_i_1_2_2@uint8 v_conv3_i_1_2_2@uint32;
(*   %conv4.i.1.2.2 = zext i8 %conv5.i.259.2 to i32 *)
cast v_conv4_i_1_2_2@uint32 v_conv5_i_259_2@uint8;
(*   %shr.i.1.2.2 = ashr i32 %conv4.i.1.2.2, 1 *)
(* You may need to modify here *)
split v_shr_i_1_2_2 tmp_to_be_used v_conv4_i_1_2_2 1;
(*   %conv5.i.1.2.2 = trunc i32 %shr.i.1.2.2 to i8 *)
split tmp_v_shr_i_1_2_2 v_conv5_i_1_2_2 v_shr_i_1_2_2 8;
vpc v_conv5_i_1_2_2@uint8 v_conv5_i_1_2_2@uint32;
(*   %conv6.i.1.2.2 = zext i8 %conv7.i.262.2 to i32 *)
cast v_conv6_i_1_2_2@uint32 v_conv7_i_262_2@uint8;
(*   %shl.i.1.2.2 = shl i32 %conv6.i.1.2.2, 1 *)
shls discard_71 v_shl_i_1_2_2 v_conv6_i_1_2_2 1;
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
shls discard_72 v_shl_i_2_2_2 v_conv6_i_2_2_2 1;
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
shls discard_73 v_shl_i_3_2_2 v_conv6_i_3_2_2 1;
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
shls discard_74 v_shl_i_4_2_2 v_conv6_i_4_2_2 1;
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
shls discard_75 v_shl_i_5_2_2 v_conv6_i_5_2_2 1;
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
shls discard_76 v_shl_i_6_2_2 v_conv6_i_6_2_2 1;
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
(*   %arrayidx7.2.2 = getelementptr inbounds [16 x i8], [16 x i8]* %alpha, i64 0, i64 10 *)
(*   store i8 %conv3.i.7.2.2, i8* %arrayidx7.2.2, align 1 *)
mov alpha_10 v_conv3_i_7_2_2;
(*   %arrayidx5.3.2 = getelementptr inbounds i8, i8* %b, i64 3 *)
(*   %14 = load i8, i8* %arrayidx5.3.2, align 1 *)
mov v14 b_3;
(*   %conv.i.363.2 = zext i8 %14 to i32 *)
cast v_conv_i_363_2@uint32 v14@uint8;
(*   %and.i.364.2 = and i32 %conv.i.363.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_364_2 v_conv_i_363_2 (0x1)@uint32;
(*   %conv1.i.365.2 = zext i8 %10 to i32 *)
cast v_conv1_i_365_2@uint32 v10@uint8;
(*   %mul.i.366.2 = mul nsw i32 %and.i.364.2, %conv1.i.365.2 *)
mul v_mul_i_366_2 v_and_i_364_2 v_conv1_i_365_2;
(*   %conv3.i.367.2 = trunc i32 %mul.i.366.2 to i8 *)
split tmp_v_mul_i_366_2 v_conv3_i_367_2 v_mul_i_366_2 8;
vpc v_conv3_i_367_2@uint8 v_conv3_i_367_2@uint32;
(*   %conv4.i.368.2 = zext i8 %14 to i32 *)
cast v_conv4_i_368_2@uint32 v14@uint8;
(*   %shr.i.369.2 = ashr i32 %conv4.i.368.2, 1 *)
(* You may need to modify here *)
split v_shr_i_369_2 tmp_to_be_used v_conv4_i_368_2 1;
(*   %conv5.i.370.2 = trunc i32 %shr.i.369.2 to i8 *)
split tmp_v_shr_i_369_2 v_conv5_i_370_2 v_shr_i_369_2 8;
vpc v_conv5_i_370_2@uint8 v_conv5_i_370_2@uint32;
(*   %conv6.i.371.2 = zext i8 %10 to i32 *)
cast v_conv6_i_371_2@uint32 v10@uint8;
(*   %shl.i.372.2 = shl i32 %conv6.i.371.2, 1 *)
shls discard_77 v_shl_i_372_2 v_conv6_i_371_2 1;
(*   %conv7.i.373.2 = trunc i32 %shl.i.372.2 to i8 *)
split tmp_v_shl_i_372_2 v_conv7_i_373_2 v_shl_i_372_2 8;
vpc v_conv7_i_373_2@uint8 v_conv7_i_373_2@uint32;
(*   %conv.i.1.3.2 = zext i8 %conv5.i.370.2 to i32 *)
cast v_conv_i_1_3_2@uint32 v_conv5_i_370_2@uint8;
(*   %and.i.1.3.2 = and i32 %conv.i.1.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_3_2 v_conv_i_1_3_2 (0x1)@uint32;
(*   %conv1.i.1.3.2 = zext i8 %conv7.i.373.2 to i32 *)
cast v_conv1_i_1_3_2@uint32 v_conv7_i_373_2@uint8;
(*   %mul.i.1.3.2 = mul nsw i32 %and.i.1.3.2, %conv1.i.1.3.2 *)
mul v_mul_i_1_3_2 v_and_i_1_3_2 v_conv1_i_1_3_2;
(*   %conv2.i.1.3.2 = zext i8 %conv3.i.367.2 to i32 *)
cast v_conv2_i_1_3_2@uint32 v_conv3_i_367_2@uint8;
(*   %xor.i.1.3.2 = xor i32 %conv2.i.1.3.2, %mul.i.1.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_3_2 v_conv2_i_1_3_2 v_mul_i_1_3_2;
(*   %conv3.i.1.3.2 = trunc i32 %xor.i.1.3.2 to i8 *)
split tmp_v_xor_i_1_3_2 v_conv3_i_1_3_2 v_xor_i_1_3_2 8;
vpc v_conv3_i_1_3_2@uint8 v_conv3_i_1_3_2@uint32;
(*   %conv4.i.1.3.2 = zext i8 %conv5.i.370.2 to i32 *)
cast v_conv4_i_1_3_2@uint32 v_conv5_i_370_2@uint8;
(*   %shr.i.1.3.2 = ashr i32 %conv4.i.1.3.2, 1 *)
(* You may need to modify here *)
split v_shr_i_1_3_2 tmp_to_be_used v_conv4_i_1_3_2 1;
(*   %conv5.i.1.3.2 = trunc i32 %shr.i.1.3.2 to i8 *)
split tmp_v_shr_i_1_3_2 v_conv5_i_1_3_2 v_shr_i_1_3_2 8;
vpc v_conv5_i_1_3_2@uint8 v_conv5_i_1_3_2@uint32;
(*   %conv6.i.1.3.2 = zext i8 %conv7.i.373.2 to i32 *)
cast v_conv6_i_1_3_2@uint32 v_conv7_i_373_2@uint8;
(*   %shl.i.1.3.2 = shl i32 %conv6.i.1.3.2, 1 *)
shls discard_78 v_shl_i_1_3_2 v_conv6_i_1_3_2 1;
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
shls discard_79 v_shl_i_2_3_2 v_conv6_i_2_3_2 1;
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
shls discard_80 v_shl_i_3_3_2 v_conv6_i_3_3_2 1;
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
shls discard_81 v_shl_i_4_3_2 v_conv6_i_4_3_2 1;
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
shls discard_82 v_shl_i_5_3_2 v_conv6_i_5_3_2 1;
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
shls discard_83 v_shl_i_6_3_2 v_conv6_i_6_3_2 1;
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
(*   %arrayidx7.3.2 = getelementptr inbounds [16 x i8], [16 x i8]* %alpha, i64 0, i64 11 *)
(*   store i8 %conv3.i.7.3.2, i8* %arrayidx7.3.2, align 1 *)
mov alpha_11 v_conv3_i_7_3_2;
(*   %arrayidx.3 = getelementptr inbounds i8, i8* %a, i64 3 *)
(*   %15 = load i8, i8* %arrayidx.3, align 1 *)
mov v15 a_3;
(*   %16 = load i8, i8* %b, align 1 *)
mov v16 b_0;
(*   %conv.i.3278 = zext i8 %16 to i32 *)
cast v_conv_i_3278@uint32 v16@uint8;
(*   %and.i.3279 = and i32 %conv.i.3278, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3279 v_conv_i_3278 (0x1)@uint32;
(*   %conv1.i.3280 = zext i8 %15 to i32 *)
cast v_conv1_i_3280@uint32 v15@uint8;
(*   %mul.i.3281 = mul nsw i32 %and.i.3279, %conv1.i.3280 *)
mul v_mul_i_3281 v_and_i_3279 v_conv1_i_3280;
(*   %conv3.i.3282 = trunc i32 %mul.i.3281 to i8 *)
split tmp_v_mul_i_3281 v_conv3_i_3282 v_mul_i_3281 8;
vpc v_conv3_i_3282@uint8 v_conv3_i_3282@uint32;
(*   %conv4.i.3283 = zext i8 %16 to i32 *)
cast v_conv4_i_3283@uint32 v16@uint8;
(*   %shr.i.3284 = ashr i32 %conv4.i.3283, 1 *)
(* You may need to modify here *)
split v_shr_i_3284 tmp_to_be_used v_conv4_i_3283 1;
(*   %conv5.i.3285 = trunc i32 %shr.i.3284 to i8 *)
split tmp_v_shr_i_3284 v_conv5_i_3285 v_shr_i_3284 8;
vpc v_conv5_i_3285@uint8 v_conv5_i_3285@uint32;
(*   %conv6.i.3286 = zext i8 %15 to i32 *)
cast v_conv6_i_3286@uint32 v15@uint8;
(*   %shl.i.3287 = shl i32 %conv6.i.3286, 1 *)
shls discard_84 v_shl_i_3287 v_conv6_i_3286 1;
(*   %conv7.i.3288 = trunc i32 %shl.i.3287 to i8 *)
split tmp_v_shl_i_3287 v_conv7_i_3288 v_shl_i_3287 8;
vpc v_conv7_i_3288@uint8 v_conv7_i_3288@uint32;
(*   %conv.i.1.3289 = zext i8 %conv5.i.3285 to i32 *)
cast v_conv_i_1_3289@uint32 v_conv5_i_3285@uint8;
(*   %and.i.1.3290 = and i32 %conv.i.1.3289, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_3290 v_conv_i_1_3289 (0x1)@uint32;
(*   %conv1.i.1.3291 = zext i8 %conv7.i.3288 to i32 *)
cast v_conv1_i_1_3291@uint32 v_conv7_i_3288@uint8;
(*   %mul.i.1.3292 = mul nsw i32 %and.i.1.3290, %conv1.i.1.3291 *)
mul v_mul_i_1_3292 v_and_i_1_3290 v_conv1_i_1_3291;
(*   %conv2.i.1.3293 = zext i8 %conv3.i.3282 to i32 *)
cast v_conv2_i_1_3293@uint32 v_conv3_i_3282@uint8;
(*   %xor.i.1.3294 = xor i32 %conv2.i.1.3293, %mul.i.1.3292 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_3294 v_conv2_i_1_3293 v_mul_i_1_3292;
(*   %conv3.i.1.3295 = trunc i32 %xor.i.1.3294 to i8 *)
split tmp_v_xor_i_1_3294 v_conv3_i_1_3295 v_xor_i_1_3294 8;
vpc v_conv3_i_1_3295@uint8 v_conv3_i_1_3295@uint32;
(*   %conv4.i.1.3296 = zext i8 %conv5.i.3285 to i32 *)
cast v_conv4_i_1_3296@uint32 v_conv5_i_3285@uint8;
(*   %shr.i.1.3297 = ashr i32 %conv4.i.1.3296, 1 *)
(* You may need to modify here *)
split v_shr_i_1_3297 tmp_to_be_used v_conv4_i_1_3296 1;
(*   %conv5.i.1.3298 = trunc i32 %shr.i.1.3297 to i8 *)
split tmp_v_shr_i_1_3297 v_conv5_i_1_3298 v_shr_i_1_3297 8;
vpc v_conv5_i_1_3298@uint8 v_conv5_i_1_3298@uint32;
(*   %conv6.i.1.3299 = zext i8 %conv7.i.3288 to i32 *)
cast v_conv6_i_1_3299@uint32 v_conv7_i_3288@uint8;
(*   %shl.i.1.3300 = shl i32 %conv6.i.1.3299, 1 *)
shls discard_85 v_shl_i_1_3300 v_conv6_i_1_3299 1;
(*   %conv7.i.1.3301 = trunc i32 %shl.i.1.3300 to i8 *)
split tmp_v_shl_i_1_3300 v_conv7_i_1_3301 v_shl_i_1_3300 8;
vpc v_conv7_i_1_3301@uint8 v_conv7_i_1_3301@uint32;
(*   %conv.i.2.3302 = zext i8 %conv5.i.1.3298 to i32 *)
cast v_conv_i_2_3302@uint32 v_conv5_i_1_3298@uint8;
(*   %and.i.2.3303 = and i32 %conv.i.2.3302, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_3303 v_conv_i_2_3302 (0x1)@uint32;
(*   %conv1.i.2.3304 = zext i8 %conv7.i.1.3301 to i32 *)
cast v_conv1_i_2_3304@uint32 v_conv7_i_1_3301@uint8;
(*   %mul.i.2.3305 = mul nsw i32 %and.i.2.3303, %conv1.i.2.3304 *)
mul v_mul_i_2_3305 v_and_i_2_3303 v_conv1_i_2_3304;
(*   %conv2.i.2.3306 = zext i8 %conv3.i.1.3295 to i32 *)
cast v_conv2_i_2_3306@uint32 v_conv3_i_1_3295@uint8;
(*   %xor.i.2.3307 = xor i32 %conv2.i.2.3306, %mul.i.2.3305 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_3307 v_conv2_i_2_3306 v_mul_i_2_3305;
(*   %conv3.i.2.3308 = trunc i32 %xor.i.2.3307 to i8 *)
split tmp_v_xor_i_2_3307 v_conv3_i_2_3308 v_xor_i_2_3307 8;
vpc v_conv3_i_2_3308@uint8 v_conv3_i_2_3308@uint32;
(*   %conv4.i.2.3309 = zext i8 %conv5.i.1.3298 to i32 *)
cast v_conv4_i_2_3309@uint32 v_conv5_i_1_3298@uint8;
(*   %shr.i.2.3310 = ashr i32 %conv4.i.2.3309, 1 *)
(* You may need to modify here *)
split v_shr_i_2_3310 tmp_to_be_used v_conv4_i_2_3309 1;
(*   %conv5.i.2.3311 = trunc i32 %shr.i.2.3310 to i8 *)
split tmp_v_shr_i_2_3310 v_conv5_i_2_3311 v_shr_i_2_3310 8;
vpc v_conv5_i_2_3311@uint8 v_conv5_i_2_3311@uint32;
(*   %conv6.i.2.3312 = zext i8 %conv7.i.1.3301 to i32 *)
cast v_conv6_i_2_3312@uint32 v_conv7_i_1_3301@uint8;
(*   %shl.i.2.3313 = shl i32 %conv6.i.2.3312, 1 *)
shls discard_86 v_shl_i_2_3313 v_conv6_i_2_3312 1;
(*   %conv7.i.2.3314 = trunc i32 %shl.i.2.3313 to i8 *)
split tmp_v_shl_i_2_3313 v_conv7_i_2_3314 v_shl_i_2_3313 8;
vpc v_conv7_i_2_3314@uint8 v_conv7_i_2_3314@uint32;
(*   %conv.i.3.3315 = zext i8 %conv5.i.2.3311 to i32 *)
cast v_conv_i_3_3315@uint32 v_conv5_i_2_3311@uint8;
(*   %and.i.3.3316 = and i32 %conv.i.3.3315, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_3316 v_conv_i_3_3315 (0x1)@uint32;
(*   %conv1.i.3.3317 = zext i8 %conv7.i.2.3314 to i32 *)
cast v_conv1_i_3_3317@uint32 v_conv7_i_2_3314@uint8;
(*   %mul.i.3.3318 = mul nsw i32 %and.i.3.3316, %conv1.i.3.3317 *)
mul v_mul_i_3_3318 v_and_i_3_3316 v_conv1_i_3_3317;
(*   %conv2.i.3.3319 = zext i8 %conv3.i.2.3308 to i32 *)
cast v_conv2_i_3_3319@uint32 v_conv3_i_2_3308@uint8;
(*   %xor.i.3.3320 = xor i32 %conv2.i.3.3319, %mul.i.3.3318 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_3320 v_conv2_i_3_3319 v_mul_i_3_3318;
(*   %conv3.i.3.3321 = trunc i32 %xor.i.3.3320 to i8 *)
split tmp_v_xor_i_3_3320 v_conv3_i_3_3321 v_xor_i_3_3320 8;
vpc v_conv3_i_3_3321@uint8 v_conv3_i_3_3321@uint32;
(*   %conv4.i.3.3322 = zext i8 %conv5.i.2.3311 to i32 *)
cast v_conv4_i_3_3322@uint32 v_conv5_i_2_3311@uint8;
(*   %shr.i.3.3323 = ashr i32 %conv4.i.3.3322, 1 *)
(* You may need to modify here *)
split v_shr_i_3_3323 tmp_to_be_used v_conv4_i_3_3322 1;
(*   %conv5.i.3.3324 = trunc i32 %shr.i.3.3323 to i8 *)
split tmp_v_shr_i_3_3323 v_conv5_i_3_3324 v_shr_i_3_3323 8;
vpc v_conv5_i_3_3324@uint8 v_conv5_i_3_3324@uint32;
(*   %conv6.i.3.3325 = zext i8 %conv7.i.2.3314 to i32 *)
cast v_conv6_i_3_3325@uint32 v_conv7_i_2_3314@uint8;
(*   %shl.i.3.3326 = shl i32 %conv6.i.3.3325, 1 *)
shls discard_87 v_shl_i_3_3326 v_conv6_i_3_3325 1;
(*   %conv7.i.3.3327 = trunc i32 %shl.i.3.3326 to i8 *)
split tmp_v_shl_i_3_3326 v_conv7_i_3_3327 v_shl_i_3_3326 8;
vpc v_conv7_i_3_3327@uint8 v_conv7_i_3_3327@uint32;
(*   %conv.i.4.3328 = zext i8 %conv5.i.3.3324 to i32 *)
cast v_conv_i_4_3328@uint32 v_conv5_i_3_3324@uint8;
(*   %and.i.4.3329 = and i32 %conv.i.4.3328, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_3329 v_conv_i_4_3328 (0x1)@uint32;
(*   %conv1.i.4.3330 = zext i8 %conv7.i.3.3327 to i32 *)
cast v_conv1_i_4_3330@uint32 v_conv7_i_3_3327@uint8;
(*   %mul.i.4.3331 = mul nsw i32 %and.i.4.3329, %conv1.i.4.3330 *)
mul v_mul_i_4_3331 v_and_i_4_3329 v_conv1_i_4_3330;
(*   %conv2.i.4.3332 = zext i8 %conv3.i.3.3321 to i32 *)
cast v_conv2_i_4_3332@uint32 v_conv3_i_3_3321@uint8;
(*   %xor.i.4.3333 = xor i32 %conv2.i.4.3332, %mul.i.4.3331 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_3333 v_conv2_i_4_3332 v_mul_i_4_3331;
(*   %conv3.i.4.3334 = trunc i32 %xor.i.4.3333 to i8 *)
split tmp_v_xor_i_4_3333 v_conv3_i_4_3334 v_xor_i_4_3333 8;
vpc v_conv3_i_4_3334@uint8 v_conv3_i_4_3334@uint32;
(*   %conv4.i.4.3335 = zext i8 %conv5.i.3.3324 to i32 *)
cast v_conv4_i_4_3335@uint32 v_conv5_i_3_3324@uint8;
(*   %shr.i.4.3336 = ashr i32 %conv4.i.4.3335, 1 *)
(* You may need to modify here *)
split v_shr_i_4_3336 tmp_to_be_used v_conv4_i_4_3335 1;
(*   %conv5.i.4.3337 = trunc i32 %shr.i.4.3336 to i8 *)
split tmp_v_shr_i_4_3336 v_conv5_i_4_3337 v_shr_i_4_3336 8;
vpc v_conv5_i_4_3337@uint8 v_conv5_i_4_3337@uint32;
(*   %conv6.i.4.3338 = zext i8 %conv7.i.3.3327 to i32 *)
cast v_conv6_i_4_3338@uint32 v_conv7_i_3_3327@uint8;
(*   %shl.i.4.3339 = shl i32 %conv6.i.4.3338, 1 *)
shls discard_88 v_shl_i_4_3339 v_conv6_i_4_3338 1;
(*   %conv7.i.4.3340 = trunc i32 %shl.i.4.3339 to i8 *)
split tmp_v_shl_i_4_3339 v_conv7_i_4_3340 v_shl_i_4_3339 8;
vpc v_conv7_i_4_3340@uint8 v_conv7_i_4_3340@uint32;
(*   %conv.i.5.3341 = zext i8 %conv5.i.4.3337 to i32 *)
cast v_conv_i_5_3341@uint32 v_conv5_i_4_3337@uint8;
(*   %and.i.5.3342 = and i32 %conv.i.5.3341, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_3342 v_conv_i_5_3341 (0x1)@uint32;
(*   %conv1.i.5.3343 = zext i8 %conv7.i.4.3340 to i32 *)
cast v_conv1_i_5_3343@uint32 v_conv7_i_4_3340@uint8;
(*   %mul.i.5.3344 = mul nsw i32 %and.i.5.3342, %conv1.i.5.3343 *)
mul v_mul_i_5_3344 v_and_i_5_3342 v_conv1_i_5_3343;
(*   %conv2.i.5.3345 = zext i8 %conv3.i.4.3334 to i32 *)
cast v_conv2_i_5_3345@uint32 v_conv3_i_4_3334@uint8;
(*   %xor.i.5.3346 = xor i32 %conv2.i.5.3345, %mul.i.5.3344 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_3346 v_conv2_i_5_3345 v_mul_i_5_3344;
(*   %conv3.i.5.3347 = trunc i32 %xor.i.5.3346 to i8 *)
split tmp_v_xor_i_5_3346 v_conv3_i_5_3347 v_xor_i_5_3346 8;
vpc v_conv3_i_5_3347@uint8 v_conv3_i_5_3347@uint32;
(*   %conv4.i.5.3348 = zext i8 %conv5.i.4.3337 to i32 *)
cast v_conv4_i_5_3348@uint32 v_conv5_i_4_3337@uint8;
(*   %shr.i.5.3349 = ashr i32 %conv4.i.5.3348, 1 *)
(* You may need to modify here *)
split v_shr_i_5_3349 tmp_to_be_used v_conv4_i_5_3348 1;
(*   %conv5.i.5.3350 = trunc i32 %shr.i.5.3349 to i8 *)
split tmp_v_shr_i_5_3349 v_conv5_i_5_3350 v_shr_i_5_3349 8;
vpc v_conv5_i_5_3350@uint8 v_conv5_i_5_3350@uint32;
(*   %conv6.i.5.3351 = zext i8 %conv7.i.4.3340 to i32 *)
cast v_conv6_i_5_3351@uint32 v_conv7_i_4_3340@uint8;
(*   %shl.i.5.3352 = shl i32 %conv6.i.5.3351, 1 *)
shls discard_89 v_shl_i_5_3352 v_conv6_i_5_3351 1;
(*   %conv7.i.5.3353 = trunc i32 %shl.i.5.3352 to i8 *)
split tmp_v_shl_i_5_3352 v_conv7_i_5_3353 v_shl_i_5_3352 8;
vpc v_conv7_i_5_3353@uint8 v_conv7_i_5_3353@uint32;
(*   %conv.i.6.3354 = zext i8 %conv5.i.5.3350 to i32 *)
cast v_conv_i_6_3354@uint32 v_conv5_i_5_3350@uint8;
(*   %and.i.6.3355 = and i32 %conv.i.6.3354, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_3355 v_conv_i_6_3354 (0x1)@uint32;
(*   %conv1.i.6.3356 = zext i8 %conv7.i.5.3353 to i32 *)
cast v_conv1_i_6_3356@uint32 v_conv7_i_5_3353@uint8;
(*   %mul.i.6.3357 = mul nsw i32 %and.i.6.3355, %conv1.i.6.3356 *)
mul v_mul_i_6_3357 v_and_i_6_3355 v_conv1_i_6_3356;
(*   %conv2.i.6.3358 = zext i8 %conv3.i.5.3347 to i32 *)
cast v_conv2_i_6_3358@uint32 v_conv3_i_5_3347@uint8;
(*   %xor.i.6.3359 = xor i32 %conv2.i.6.3358, %mul.i.6.3357 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_3359 v_conv2_i_6_3358 v_mul_i_6_3357;
(*   %conv3.i.6.3360 = trunc i32 %xor.i.6.3359 to i8 *)
split tmp_v_xor_i_6_3359 v_conv3_i_6_3360 v_xor_i_6_3359 8;
vpc v_conv3_i_6_3360@uint8 v_conv3_i_6_3360@uint32;
(*   %conv4.i.6.3361 = zext i8 %conv5.i.5.3350 to i32 *)
cast v_conv4_i_6_3361@uint32 v_conv5_i_5_3350@uint8;
(*   %shr.i.6.3362 = ashr i32 %conv4.i.6.3361, 1 *)
(* You may need to modify here *)
split v_shr_i_6_3362 tmp_to_be_used v_conv4_i_6_3361 1;
(*   %conv5.i.6.3363 = trunc i32 %shr.i.6.3362 to i8 *)
split tmp_v_shr_i_6_3362 v_conv5_i_6_3363 v_shr_i_6_3362 8;
vpc v_conv5_i_6_3363@uint8 v_conv5_i_6_3363@uint32;
(*   %conv6.i.6.3364 = zext i8 %conv7.i.5.3353 to i32 *)
cast v_conv6_i_6_3364@uint32 v_conv7_i_5_3353@uint8;
(*   %shl.i.6.3365 = shl i32 %conv6.i.6.3364, 1 *)
shls discard_90 v_shl_i_6_3365 v_conv6_i_6_3364 1;
(*   %conv7.i.6.3366 = trunc i32 %shl.i.6.3365 to i8 *)
split tmp_v_shl_i_6_3365 v_conv7_i_6_3366 v_shl_i_6_3365 8;
vpc v_conv7_i_6_3366@uint8 v_conv7_i_6_3366@uint32;
(*   %conv.i.7.3367 = zext i8 %conv5.i.6.3363 to i32 *)
cast v_conv_i_7_3367@uint32 v_conv5_i_6_3363@uint8;
(*   %and.i.7.3368 = and i32 %conv.i.7.3367, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_3368 v_conv_i_7_3367 (0x1)@uint32;
(*   %conv1.i.7.3369 = zext i8 %conv7.i.6.3366 to i32 *)
cast v_conv1_i_7_3369@uint32 v_conv7_i_6_3366@uint8;
(*   %mul.i.7.3370 = mul nsw i32 %and.i.7.3368, %conv1.i.7.3369 *)
mul v_mul_i_7_3370 v_and_i_7_3368 v_conv1_i_7_3369;
(*   %conv2.i.7.3371 = zext i8 %conv3.i.6.3360 to i32 *)
cast v_conv2_i_7_3371@uint32 v_conv3_i_6_3360@uint8;
(*   %xor.i.7.3372 = xor i32 %conv2.i.7.3371, %mul.i.7.3370 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_3372 v_conv2_i_7_3371 v_mul_i_7_3370;
(*   %conv3.i.7.3373 = trunc i32 %xor.i.7.3372 to i8 *)
split tmp_v_xor_i_7_3372 v_conv3_i_7_3373 v_xor_i_7_3372 8;
vpc v_conv3_i_7_3373@uint8 v_conv3_i_7_3373@uint32;
(*   %arrayidx7.3377 = getelementptr inbounds [16 x i8], [16 x i8]* %alpha, i64 0, i64 12 *)
(*   store i8 %conv3.i.7.3373, i8* %arrayidx7.3377, align 1 *)
mov alpha_12 v_conv3_i_7_3373;
(*   %arrayidx5.1.3 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %17 = load i8, i8* %arrayidx5.1.3, align 1 *)
mov v17 b_1;
(*   %conv.i.141.3 = zext i8 %17 to i32 *)
cast v_conv_i_141_3@uint32 v17@uint8;
(*   %and.i.142.3 = and i32 %conv.i.141.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_142_3 v_conv_i_141_3 (0x1)@uint32;
(*   %conv1.i.143.3 = zext i8 %15 to i32 *)
cast v_conv1_i_143_3@uint32 v15@uint8;
(*   %mul.i.144.3 = mul nsw i32 %and.i.142.3, %conv1.i.143.3 *)
mul v_mul_i_144_3 v_and_i_142_3 v_conv1_i_143_3;
(*   %conv3.i.145.3 = trunc i32 %mul.i.144.3 to i8 *)
split tmp_v_mul_i_144_3 v_conv3_i_145_3 v_mul_i_144_3 8;
vpc v_conv3_i_145_3@uint8 v_conv3_i_145_3@uint32;
(*   %conv4.i.146.3 = zext i8 %17 to i32 *)
cast v_conv4_i_146_3@uint32 v17@uint8;
(*   %shr.i.147.3 = ashr i32 %conv4.i.146.3, 1 *)
(* You may need to modify here *)
split v_shr_i_147_3 tmp_to_be_used v_conv4_i_146_3 1;
(*   %conv5.i.148.3 = trunc i32 %shr.i.147.3 to i8 *)
split tmp_v_shr_i_147_3 v_conv5_i_148_3 v_shr_i_147_3 8;
vpc v_conv5_i_148_3@uint8 v_conv5_i_148_3@uint32;
(*   %conv6.i.149.3 = zext i8 %15 to i32 *)
cast v_conv6_i_149_3@uint32 v15@uint8;
(*   %shl.i.150.3 = shl i32 %conv6.i.149.3, 1 *)
shls discard_91 v_shl_i_150_3 v_conv6_i_149_3 1;
(*   %conv7.i.151.3 = trunc i32 %shl.i.150.3 to i8 *)
split tmp_v_shl_i_150_3 v_conv7_i_151_3 v_shl_i_150_3 8;
vpc v_conv7_i_151_3@uint8 v_conv7_i_151_3@uint32;
(*   %conv.i.1.1.3 = zext i8 %conv5.i.148.3 to i32 *)
cast v_conv_i_1_1_3@uint32 v_conv5_i_148_3@uint8;
(*   %and.i.1.1.3 = and i32 %conv.i.1.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_1_3 v_conv_i_1_1_3 (0x1)@uint32;
(*   %conv1.i.1.1.3 = zext i8 %conv7.i.151.3 to i32 *)
cast v_conv1_i_1_1_3@uint32 v_conv7_i_151_3@uint8;
(*   %mul.i.1.1.3 = mul nsw i32 %and.i.1.1.3, %conv1.i.1.1.3 *)
mul v_mul_i_1_1_3 v_and_i_1_1_3 v_conv1_i_1_1_3;
(*   %conv2.i.1.1.3 = zext i8 %conv3.i.145.3 to i32 *)
cast v_conv2_i_1_1_3@uint32 v_conv3_i_145_3@uint8;
(*   %xor.i.1.1.3 = xor i32 %conv2.i.1.1.3, %mul.i.1.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_1_3 v_conv2_i_1_1_3 v_mul_i_1_1_3;
(*   %conv3.i.1.1.3 = trunc i32 %xor.i.1.1.3 to i8 *)
split tmp_v_xor_i_1_1_3 v_conv3_i_1_1_3 v_xor_i_1_1_3 8;
vpc v_conv3_i_1_1_3@uint8 v_conv3_i_1_1_3@uint32;
(*   %conv4.i.1.1.3 = zext i8 %conv5.i.148.3 to i32 *)
cast v_conv4_i_1_1_3@uint32 v_conv5_i_148_3@uint8;
(*   %shr.i.1.1.3 = ashr i32 %conv4.i.1.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i_1_1_3 tmp_to_be_used v_conv4_i_1_1_3 1;
(*   %conv5.i.1.1.3 = trunc i32 %shr.i.1.1.3 to i8 *)
split tmp_v_shr_i_1_1_3 v_conv5_i_1_1_3 v_shr_i_1_1_3 8;
vpc v_conv5_i_1_1_3@uint8 v_conv5_i_1_1_3@uint32;
(*   %conv6.i.1.1.3 = zext i8 %conv7.i.151.3 to i32 *)
cast v_conv6_i_1_1_3@uint32 v_conv7_i_151_3@uint8;
(*   %shl.i.1.1.3 = shl i32 %conv6.i.1.1.3, 1 *)
shls discard_92 v_shl_i_1_1_3 v_conv6_i_1_1_3 1;
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
shls discard_93 v_shl_i_2_1_3 v_conv6_i_2_1_3 1;
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
shls discard_94 v_shl_i_3_1_3 v_conv6_i_3_1_3 1;
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
shls discard_95 v_shl_i_4_1_3 v_conv6_i_4_1_3 1;
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
shls discard_96 v_shl_i_5_1_3 v_conv6_i_5_1_3 1;
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
shls discard_97 v_shl_i_6_1_3 v_conv6_i_6_1_3 1;
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
(*   %arrayidx7.1.3 = getelementptr inbounds [16 x i8], [16 x i8]* %alpha, i64 0, i64 13 *)
(*   store i8 %conv3.i.7.1.3, i8* %arrayidx7.1.3, align 1 *)
mov alpha_13 v_conv3_i_7_1_3;
(*   %arrayidx5.2.3 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %18 = load i8, i8* %arrayidx5.2.3, align 1 *)
mov v18 b_2;
(*   %conv.i.252.3 = zext i8 %18 to i32 *)
cast v_conv_i_252_3@uint32 v18@uint8;
(*   %and.i.253.3 = and i32 %conv.i.252.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_253_3 v_conv_i_252_3 (0x1)@uint32;
(*   %conv1.i.254.3 = zext i8 %15 to i32 *)
cast v_conv1_i_254_3@uint32 v15@uint8;
(*   %mul.i.255.3 = mul nsw i32 %and.i.253.3, %conv1.i.254.3 *)
mul v_mul_i_255_3 v_and_i_253_3 v_conv1_i_254_3;
(*   %conv3.i.256.3 = trunc i32 %mul.i.255.3 to i8 *)
split tmp_v_mul_i_255_3 v_conv3_i_256_3 v_mul_i_255_3 8;
vpc v_conv3_i_256_3@uint8 v_conv3_i_256_3@uint32;
(*   %conv4.i.257.3 = zext i8 %18 to i32 *)
cast v_conv4_i_257_3@uint32 v18@uint8;
(*   %shr.i.258.3 = ashr i32 %conv4.i.257.3, 1 *)
(* You may need to modify here *)
split v_shr_i_258_3 tmp_to_be_used v_conv4_i_257_3 1;
(*   %conv5.i.259.3 = trunc i32 %shr.i.258.3 to i8 *)
split tmp_v_shr_i_258_3 v_conv5_i_259_3 v_shr_i_258_3 8;
vpc v_conv5_i_259_3@uint8 v_conv5_i_259_3@uint32;
(*   %conv6.i.260.3 = zext i8 %15 to i32 *)
cast v_conv6_i_260_3@uint32 v15@uint8;
(*   %shl.i.261.3 = shl i32 %conv6.i.260.3, 1 *)
shls discard_98 v_shl_i_261_3 v_conv6_i_260_3 1;
(*   %conv7.i.262.3 = trunc i32 %shl.i.261.3 to i8 *)
split tmp_v_shl_i_261_3 v_conv7_i_262_3 v_shl_i_261_3 8;
vpc v_conv7_i_262_3@uint8 v_conv7_i_262_3@uint32;
(*   %conv.i.1.2.3 = zext i8 %conv5.i.259.3 to i32 *)
cast v_conv_i_1_2_3@uint32 v_conv5_i_259_3@uint8;
(*   %and.i.1.2.3 = and i32 %conv.i.1.2.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_2_3 v_conv_i_1_2_3 (0x1)@uint32;
(*   %conv1.i.1.2.3 = zext i8 %conv7.i.262.3 to i32 *)
cast v_conv1_i_1_2_3@uint32 v_conv7_i_262_3@uint8;
(*   %mul.i.1.2.3 = mul nsw i32 %and.i.1.2.3, %conv1.i.1.2.3 *)
mul v_mul_i_1_2_3 v_and_i_1_2_3 v_conv1_i_1_2_3;
(*   %conv2.i.1.2.3 = zext i8 %conv3.i.256.3 to i32 *)
cast v_conv2_i_1_2_3@uint32 v_conv3_i_256_3@uint8;
(*   %xor.i.1.2.3 = xor i32 %conv2.i.1.2.3, %mul.i.1.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_2_3 v_conv2_i_1_2_3 v_mul_i_1_2_3;
(*   %conv3.i.1.2.3 = trunc i32 %xor.i.1.2.3 to i8 *)
split tmp_v_xor_i_1_2_3 v_conv3_i_1_2_3 v_xor_i_1_2_3 8;
vpc v_conv3_i_1_2_3@uint8 v_conv3_i_1_2_3@uint32;
(*   %conv4.i.1.2.3 = zext i8 %conv5.i.259.3 to i32 *)
cast v_conv4_i_1_2_3@uint32 v_conv5_i_259_3@uint8;
(*   %shr.i.1.2.3 = ashr i32 %conv4.i.1.2.3, 1 *)
(* You may need to modify here *)
split v_shr_i_1_2_3 tmp_to_be_used v_conv4_i_1_2_3 1;
(*   %conv5.i.1.2.3 = trunc i32 %shr.i.1.2.3 to i8 *)
split tmp_v_shr_i_1_2_3 v_conv5_i_1_2_3 v_shr_i_1_2_3 8;
vpc v_conv5_i_1_2_3@uint8 v_conv5_i_1_2_3@uint32;
(*   %conv6.i.1.2.3 = zext i8 %conv7.i.262.3 to i32 *)
cast v_conv6_i_1_2_3@uint32 v_conv7_i_262_3@uint8;
(*   %shl.i.1.2.3 = shl i32 %conv6.i.1.2.3, 1 *)
shls discard_99 v_shl_i_1_2_3 v_conv6_i_1_2_3 1;
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
shls discard_100 v_shl_i_2_2_3 v_conv6_i_2_2_3 1;
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
shls discard_101 v_shl_i_3_2_3 v_conv6_i_3_2_3 1;
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
shls discard_102 v_shl_i_4_2_3 v_conv6_i_4_2_3 1;
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
shls discard_103 v_shl_i_5_2_3 v_conv6_i_5_2_3 1;
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
shls discard_104 v_shl_i_6_2_3 v_conv6_i_6_2_3 1;
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
(*   %arrayidx7.2.3 = getelementptr inbounds [16 x i8], [16 x i8]* %alpha, i64 0, i64 14 *)
(*   store i8 %conv3.i.7.2.3, i8* %arrayidx7.2.3, align 1 *)
mov alpha_14 v_conv3_i_7_2_3;
(*   %arrayidx5.3.3 = getelementptr inbounds i8, i8* %b, i64 3 *)
(*   %19 = load i8, i8* %arrayidx5.3.3, align 1 *)
mov v19 b_3;
(*   %conv.i.363.3 = zext i8 %19 to i32 *)
cast v_conv_i_363_3@uint32 v19@uint8;
(*   %and.i.364.3 = and i32 %conv.i.363.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_364_3 v_conv_i_363_3 (0x1)@uint32;
(*   %conv1.i.365.3 = zext i8 %15 to i32 *)
cast v_conv1_i_365_3@uint32 v15@uint8;
(*   %mul.i.366.3 = mul nsw i32 %and.i.364.3, %conv1.i.365.3 *)
mul v_mul_i_366_3 v_and_i_364_3 v_conv1_i_365_3;
(*   %conv3.i.367.3 = trunc i32 %mul.i.366.3 to i8 *)
split tmp_v_mul_i_366_3 v_conv3_i_367_3 v_mul_i_366_3 8;
vpc v_conv3_i_367_3@uint8 v_conv3_i_367_3@uint32;
(*   %conv4.i.368.3 = zext i8 %19 to i32 *)
cast v_conv4_i_368_3@uint32 v19@uint8;
(*   %shr.i.369.3 = ashr i32 %conv4.i.368.3, 1 *)
(* You may need to modify here *)
split v_shr_i_369_3 tmp_to_be_used v_conv4_i_368_3 1;
(*   %conv5.i.370.3 = trunc i32 %shr.i.369.3 to i8 *)
split tmp_v_shr_i_369_3 v_conv5_i_370_3 v_shr_i_369_3 8;
vpc v_conv5_i_370_3@uint8 v_conv5_i_370_3@uint32;
(*   %conv6.i.371.3 = zext i8 %15 to i32 *)
cast v_conv6_i_371_3@uint32 v15@uint8;
(*   %shl.i.372.3 = shl i32 %conv6.i.371.3, 1 *)
shls discard_105 v_shl_i_372_3 v_conv6_i_371_3 1;
(*   %conv7.i.373.3 = trunc i32 %shl.i.372.3 to i8 *)
split tmp_v_shl_i_372_3 v_conv7_i_373_3 v_shl_i_372_3 8;
vpc v_conv7_i_373_3@uint8 v_conv7_i_373_3@uint32;
(*   %conv.i.1.3.3 = zext i8 %conv5.i.370.3 to i32 *)
cast v_conv_i_1_3_3@uint32 v_conv5_i_370_3@uint8;
(*   %and.i.1.3.3 = and i32 %conv.i.1.3.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_3_3 v_conv_i_1_3_3 (0x1)@uint32;
(*   %conv1.i.1.3.3 = zext i8 %conv7.i.373.3 to i32 *)
cast v_conv1_i_1_3_3@uint32 v_conv7_i_373_3@uint8;
(*   %mul.i.1.3.3 = mul nsw i32 %and.i.1.3.3, %conv1.i.1.3.3 *)
mul v_mul_i_1_3_3 v_and_i_1_3_3 v_conv1_i_1_3_3;
(*   %conv2.i.1.3.3 = zext i8 %conv3.i.367.3 to i32 *)
cast v_conv2_i_1_3_3@uint32 v_conv3_i_367_3@uint8;
(*   %xor.i.1.3.3 = xor i32 %conv2.i.1.3.3, %mul.i.1.3.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_3_3 v_conv2_i_1_3_3 v_mul_i_1_3_3;
(*   %conv3.i.1.3.3 = trunc i32 %xor.i.1.3.3 to i8 *)
split tmp_v_xor_i_1_3_3 v_conv3_i_1_3_3 v_xor_i_1_3_3 8;
vpc v_conv3_i_1_3_3@uint8 v_conv3_i_1_3_3@uint32;
(*   %conv4.i.1.3.3 = zext i8 %conv5.i.370.3 to i32 *)
cast v_conv4_i_1_3_3@uint32 v_conv5_i_370_3@uint8;
(*   %shr.i.1.3.3 = ashr i32 %conv4.i.1.3.3, 1 *)
(* You may need to modify here *)
split v_shr_i_1_3_3 tmp_to_be_used v_conv4_i_1_3_3 1;
(*   %conv5.i.1.3.3 = trunc i32 %shr.i.1.3.3 to i8 *)
split tmp_v_shr_i_1_3_3 v_conv5_i_1_3_3 v_shr_i_1_3_3 8;
vpc v_conv5_i_1_3_3@uint8 v_conv5_i_1_3_3@uint32;
(*   %conv6.i.1.3.3 = zext i8 %conv7.i.373.3 to i32 *)
cast v_conv6_i_1_3_3@uint32 v_conv7_i_373_3@uint8;
(*   %shl.i.1.3.3 = shl i32 %conv6.i.1.3.3, 1 *)
shls discard_106 v_shl_i_1_3_3 v_conv6_i_1_3_3 1;
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
shls discard_107 v_shl_i_2_3_3 v_conv6_i_2_3_3 1;
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
shls discard_108 v_shl_i_3_3_3 v_conv6_i_3_3_3 1;
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
shls discard_109 v_shl_i_4_3_3 v_conv6_i_4_3_3 1;
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
shls discard_110 v_shl_i_5_3_3 v_conv6_i_5_3_3 1;
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
shls discard_111 v_shl_i_6_3_3 v_conv6_i_6_3_3 1;
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
(*   %arrayidx7.3.3 = getelementptr inbounds [16 x i8], [16 x i8]* %alpha, i64 0, i64 15 *)
(*   store i8 %conv3.i.7.3.3, i8* %arrayidx7.3.3, align 1 *)
mov alpha_15 v_conv3_i_7_3_3;
(*   %arrayidx18 = getelementptr inbounds [16 x i8], [16 x i8]* %alpha, i64 0, i64 0 *)
(*   %20 = load i8, i8* %arrayidx18, align 1 *)
mov v20 alpha_0;
(*   store i8 %20, i8* %c, align 1 *)
mov c_0 v20;
(*   %arrayidx29 = getelementptr inbounds i8, i8* %r, i64 3 *)
(*   %21 = load i8, i8* %arrayidx29, align 1 *)
mov v21 r_3;
(*   %conv = zext i8 %21 to i32 *)
cast v_conv@uint32 v21@uint8;
(*   %arrayidx33 = getelementptr inbounds [16 x i8], [16 x i8]* %alpha, i64 0, i64 3 *)
(*   %22 = load i8, i8* %arrayidx33, align 1 *)
mov v22 alpha_3;
(*   %conv34 = zext i8 %22 to i32 *)
cast v_conv34@uint32 v22@uint8;
(*   %xor = xor i32 %conv, %conv34 *)
(* You may need to modify here *)
xor uint32 v_xor v_conv v_conv34;
(*   %arrayidx38 = getelementptr inbounds [16 x i8], [16 x i8]* %alpha, i64 0, i64 12 *)
(*   %23 = load i8, i8* %arrayidx38, align 1 *)
mov v23 alpha_12;
(*   %conv39 = zext i8 %23 to i32 *)
cast v_conv39@uint32 v23@uint8;
(*   %xor40 = xor i32 %xor, %conv39 *)
(* You may need to modify here *)
xor uint32 v_xor40 v_xor v_conv39;
(*   %arrayidx42 = getelementptr inbounds i8, i8* %rr, i64 2 *)
(*   %24 = load i8, i8* %arrayidx42, align 1 *)
mov v24 rr_2;
(*   %conv43 = zext i8 %24 to i32 *)
cast v_conv43@uint32 v24@uint8;
(*   %xor44 = xor i32 %xor40, %conv43 *)
(* You may need to modify here *)
xor uint32 v_xor44 v_xor40 v_conv43;
(*   %arrayidx49 = getelementptr inbounds [16 x i8], [16 x i8]* %alpha, i64 0, i64 2 *)
(*   %25 = load i8, i8* %arrayidx49, align 1 *)
mov v25 alpha_2;
(*   %conv50 = zext i8 %25 to i32 *)
cast v_conv50@uint32 v25@uint8;
(*   %xor51 = xor i32 %xor44, %conv50 *)
(* You may need to modify here *)
xor uint32 v_xor51 v_xor44 v_conv50;
(*   %arrayidx56 = getelementptr inbounds [16 x i8], [16 x i8]* %alpha, i64 0, i64 8 *)
(*   %26 = load i8, i8* %arrayidx56, align 1 *)
mov v26 alpha_8;
(*   %conv57 = zext i8 %26 to i32 *)
cast v_conv57@uint32 v26@uint8;
(*   %xor58 = xor i32 %xor51, %conv57 *)
(* You may need to modify here *)
xor uint32 v_xor58 v_xor51 v_conv57;
(*   %conv59 = trunc i32 %xor58 to i8 *)
split tmp_v_xor58 v_conv59 v_xor58 8;
vpc v_conv59@uint8 v_conv59@uint32;
(*   %arrayidx63 = getelementptr inbounds [16 x i8], [16 x i8]* %t, i64 0, i64 3 *)
(*   store i8 %conv59, i8* %arrayidx63, align 1 *)
mov t_3 v_conv59;
(*   %arrayidx67 = getelementptr inbounds [16 x i8], [16 x i8]* %t, i64 0, i64 3 *)
(*   %27 = load i8, i8* %arrayidx67, align 1 *)
mov v27 t_3;
(*   %conv68 = zext i8 %27 to i32 *)
cast v_conv68@uint32 v27@uint8;
(*   %28 = load i8, i8* %c, align 1 *)
mov v28 c_0;
(*   %conv71 = zext i8 %28 to i32 *)
cast v_conv71@uint32 v28@uint8;
(*   %xor72 = xor i32 %conv71, %conv68 *)
(* You may need to modify here *)
xor uint32 v_xor72 v_conv71 v_conv68;
(*   %conv73 = trunc i32 %xor72 to i8 *)
split tmp_v_xor72 v_conv73 v_xor72 8;
vpc v_conv73@uint8 v_conv73@uint32;
(*   store i8 %conv73, i8* %c, align 1 *)
mov c_0 v_conv73;
(*   %arrayidx83 = getelementptr inbounds i8, i8* %r, i64 1 *)
(*   %29 = load i8, i8* %arrayidx83, align 1 *)
mov v29 r_1;
(*   %conv84 = zext i8 %29 to i32 *)
cast v_conv84@uint32 v29@uint8;
(*   %arrayidx89 = getelementptr inbounds [16 x i8], [16 x i8]* %alpha, i64 0, i64 1 *)
(*   %30 = load i8, i8* %arrayidx89, align 1 *)
mov v30 alpha_1;
(*   %conv90 = zext i8 %30 to i32 *)
cast v_conv90@uint32 v30@uint8;
(*   %xor91 = xor i32 %conv84, %conv90 *)
(* You may need to modify here *)
xor uint32 v_xor91 v_conv84 v_conv90;
(*   %arrayidx96 = getelementptr inbounds [16 x i8], [16 x i8]* %alpha, i64 0, i64 4 *)
(*   %31 = load i8, i8* %arrayidx96, align 1 *)
mov v31 alpha_4;
(*   %conv97 = zext i8 %31 to i32 *)
cast v_conv97@uint32 v31@uint8;
(*   %xor98 = xor i32 %xor91, %conv97 *)
(* You may need to modify here *)
xor uint32 v_xor98 v_xor91 v_conv97;
(*   %conv99 = trunc i32 %xor98 to i8 *)
split tmp_v_xor98 v_conv99 v_xor98 8;
vpc v_conv99@uint8 v_conv99@uint32;
(*   %arrayidx104 = getelementptr inbounds [16 x i8], [16 x i8]* %t, i64 0, i64 1 *)
(*   store i8 %conv99, i8* %arrayidx104, align 1 *)
mov t_1 v_conv99;
(*   %arrayidx109 = getelementptr inbounds [16 x i8], [16 x i8]* %t, i64 0, i64 1 *)
(*   %32 = load i8, i8* %arrayidx109, align 1 *)
mov v32 t_1;
(*   %conv110 = zext i8 %32 to i32 *)
cast v_conv110@uint32 v32@uint8;
(*   %33 = load i8, i8* %c, align 1 *)
mov v33 c_0;
(*   %conv113 = zext i8 %33 to i32 *)
cast v_conv113@uint32 v33@uint8;
(*   %xor114 = xor i32 %conv113, %conv110 *)
(* You may need to modify here *)
xor uint32 v_xor114 v_conv113 v_conv110;
(*   %conv115 = trunc i32 %xor114 to i8 *)
split tmp_v_xor114 v_conv115 v_xor114 8;
vpc v_conv115@uint8 v_conv115@uint32;
(*   store i8 %conv115, i8* %c, align 1 *)
mov c_0 v_conv115;
(*   %arrayidx18.1 = getelementptr inbounds [16 x i8], [16 x i8]* %alpha, i64 0, i64 5 *)
(*   %34 = load i8, i8* %arrayidx18.1, align 1 *)
mov v34 alpha_5;
(*   %arrayidx20.1 = getelementptr inbounds i8, i8* %c, i64 1 *)
(*   store i8 %34, i8* %arrayidx20.1, align 1 *)
mov c_1 v34;
(*   %arrayidx70.1 = getelementptr inbounds i8, i8* %c, i64 1 *)
(*   %arrayidx29.1 = getelementptr inbounds i8, i8* %r, i64 7 *)
(*   %35 = load i8, i8* %arrayidx29.1, align 1 *)
mov v35 r_7;
(*   %conv.1 = zext i8 %35 to i32 *)
cast v_conv_1@uint32 v35@uint8;
(*   %arrayidx33.1 = getelementptr inbounds [16 x i8], [16 x i8]* %alpha, i64 0, i64 7 *)
(*   %36 = load i8, i8* %arrayidx33.1, align 1 *)
mov v36 alpha_7;
(*   %conv34.1 = zext i8 %36 to i32 *)
cast v_conv34_1@uint32 v36@uint8;
(*   %xor.1 = xor i32 %conv.1, %conv34.1 *)
(* You may need to modify here *)
xor uint32 v_xor_1 v_conv_1 v_conv34_1;
(*   %arrayidx38.1 = getelementptr inbounds [16 x i8], [16 x i8]* %alpha, i64 0, i64 13 *)
(*   %37 = load i8, i8* %arrayidx38.1, align 1 *)
mov v37 alpha_13;
(*   %conv39.1 = zext i8 %37 to i32 *)
cast v_conv39_1@uint32 v37@uint8;
(*   %xor40.1 = xor i32 %xor.1, %conv39.1 *)
(* You may need to modify here *)
xor uint32 v_xor40_1 v_xor_1 v_conv39_1;
(*   %arrayidx42.1 = getelementptr inbounds i8, i8* %rr, i64 2 *)
(*   %38 = load i8, i8* %arrayidx42.1, align 1 *)
mov v38 rr_2;
(*   %conv43.1 = zext i8 %38 to i32 *)
cast v_conv43_1@uint32 v38@uint8;
(*   %xor44.1 = xor i32 %xor40.1, %conv43.1 *)
(* You may need to modify here *)
xor uint32 v_xor44_1 v_xor40_1 v_conv43_1;
(*   %arrayidx49.1 = getelementptr inbounds [16 x i8], [16 x i8]* %alpha, i64 0, i64 6 *)
(*   %39 = load i8, i8* %arrayidx49.1, align 1 *)
mov v39 alpha_6;
(*   %conv50.1 = zext i8 %39 to i32 *)
cast v_conv50_1@uint32 v39@uint8;
(*   %xor51.1 = xor i32 %xor44.1, %conv50.1 *)
(* You may need to modify here *)
xor uint32 v_xor51_1 v_xor44_1 v_conv50_1;
(*   %arrayidx56.1 = getelementptr inbounds [16 x i8], [16 x i8]* %alpha, i64 0, i64 9 *)
(*   %40 = load i8, i8* %arrayidx56.1, align 1 *)
mov v40 alpha_9;
(*   %conv57.1 = zext i8 %40 to i32 *)
cast v_conv57_1@uint32 v40@uint8;
(*   %xor58.1 = xor i32 %xor51.1, %conv57.1 *)
(* You may need to modify here *)
xor uint32 v_xor58_1 v_xor51_1 v_conv57_1;
(*   %conv59.1 = trunc i32 %xor58.1 to i8 *)
split tmp_v_xor58_1 v_conv59_1 v_xor58_1 8;
vpc v_conv59_1@uint8 v_conv59_1@uint32;
(*   %arrayidx63.1 = getelementptr inbounds [16 x i8], [16 x i8]* %t, i64 0, i64 7 *)
(*   store i8 %conv59.1, i8* %arrayidx63.1, align 1 *)
mov t_7 v_conv59_1;
(*   %arrayidx67.1 = getelementptr inbounds [16 x i8], [16 x i8]* %t, i64 0, i64 7 *)
(*   %41 = load i8, i8* %arrayidx67.1, align 1 *)
mov v41 t_7;
(*   %conv68.1 = zext i8 %41 to i32 *)
cast v_conv68_1@uint32 v41@uint8;
(*   %42 = load i8, i8* %arrayidx70.1, align 1 *)
mov v42 c_1;
(*   %conv71.1 = zext i8 %42 to i32 *)
cast v_conv71_1@uint32 v42@uint8;
(*   %xor72.1 = xor i32 %conv71.1, %conv68.1 *)
(* You may need to modify here *)
xor uint32 v_xor72_1 v_conv71_1 v_conv68_1;
(*   %conv73.1 = trunc i32 %xor72.1 to i8 *)
split tmp_v_xor72_1 v_conv73_1 v_xor72_1 8;
vpc v_conv73_1@uint8 v_conv73_1@uint32;
(*   store i8 %conv73.1, i8* %arrayidx70.1, align 1 *)
mov c_1 v_conv73_1;
(*   %arrayidx140.1 = getelementptr inbounds i8, i8* %c, i64 1 *)
(*   %scevgep38.1 = getelementptr i8, i8* %r, i64 1 *)
(*   %43 = load i8, i8* %scevgep38.1, align 1 *)
mov v43 r_1;
(*   %conv138.prol.1 = zext i8 %43 to i32 *)
cast v_conv138_prol_1@uint32 v43@uint8;
(*   %44 = load i8, i8* %arrayidx140.1, align 1 *)
mov v44 c_1;
(*   %conv141.prol.1 = zext i8 %44 to i32 *)
cast v_conv141_prol_1@uint32 v44@uint8;
(*   %xor142.prol.1 = xor i32 %conv141.prol.1, %conv138.prol.1 *)
(* You may need to modify here *)
xor uint32 v_xor142_prol_1 v_conv141_prol_1 v_conv138_prol_1;
(*   %conv143.prol.1 = trunc i32 %xor142.prol.1 to i8 *)
split tmp_v_xor142_prol_1 v_conv143_prol_1 v_xor142_prol_1 8;
vpc v_conv143_prol_1@uint8 v_conv143_prol_1@uint32;
(*   store i8 %conv143.prol.1, i8* %arrayidx140.1, align 1 *)
mov c_1 v_conv143_prol_1;
(*   %arrayidx18.2 = getelementptr inbounds [16 x i8], [16 x i8]* %alpha, i64 0, i64 10 *)
(*   %45 = load i8, i8* %arrayidx18.2, align 1 *)
mov v45 alpha_10;
(*   %arrayidx20.2 = getelementptr inbounds i8, i8* %c, i64 2 *)
(*   store i8 %45, i8* %arrayidx20.2, align 1 *)
mov c_2 v45;
(*   %arrayidx83.2 = getelementptr inbounds i8, i8* %r, i64 11 *)
(*   %46 = load i8, i8* %arrayidx83.2, align 1 *)
mov v46 r_11;
(*   %conv84.2 = zext i8 %46 to i32 *)
cast v_conv84_2@uint32 v46@uint8;
(*   %arrayidx89.2 = getelementptr inbounds [16 x i8], [16 x i8]* %alpha, i64 0, i64 11 *)
(*   %47 = load i8, i8* %arrayidx89.2, align 1 *)
mov v47 alpha_11;
(*   %conv90.2 = zext i8 %47 to i32 *)
cast v_conv90_2@uint32 v47@uint8;
(*   %xor91.2 = xor i32 %conv84.2, %conv90.2 *)
(* You may need to modify here *)
xor uint32 v_xor91_2 v_conv84_2 v_conv90_2;
(*   %arrayidx96.2 = getelementptr inbounds [16 x i8], [16 x i8]* %alpha, i64 0, i64 14 *)
(*   %48 = load i8, i8* %arrayidx96.2, align 1 *)
mov v48 alpha_14;
(*   %conv97.2 = zext i8 %48 to i32 *)
cast v_conv97_2@uint32 v48@uint8;
(*   %xor98.2 = xor i32 %xor91.2, %conv97.2 *)
(* You may need to modify here *)
xor uint32 v_xor98_2 v_xor91_2 v_conv97_2;
(*   %conv99.2 = trunc i32 %xor98.2 to i8 *)
split tmp_v_xor98_2 v_conv99_2 v_xor98_2 8;
vpc v_conv99_2@uint8 v_conv99_2@uint32;
(*   %arrayidx104.2 = getelementptr inbounds [16 x i8], [16 x i8]* %t, i64 0, i64 11 *)
(*   store i8 %conv99.2, i8* %arrayidx104.2, align 1 *)
mov t_11 v_conv99_2;
(*   %arrayidx109.2 = getelementptr inbounds [16 x i8], [16 x i8]* %t, i64 0, i64 11 *)
(*   %49 = load i8, i8* %arrayidx109.2, align 1 *)
mov v49 t_11;
(*   %conv110.2 = zext i8 %49 to i32 *)
cast v_conv110_2@uint32 v49@uint8;
(*   %arrayidx112.2 = getelementptr inbounds i8, i8* %c, i64 2 *)
(*   %50 = load i8, i8* %arrayidx112.2, align 1 *)
mov v50 c_2;
(*   %conv113.2 = zext i8 %50 to i32 *)
cast v_conv113_2@uint32 v50@uint8;
(*   %xor114.2 = xor i32 %conv113.2, %conv110.2 *)
(* You may need to modify here *)
xor uint32 v_xor114_2 v_conv113_2 v_conv110_2;
(*   %conv115.2 = trunc i32 %xor114.2 to i8 *)
split tmp_v_xor114_2 v_conv115_2 v_xor114_2 8;
vpc v_conv115_2@uint8 v_conv115_2@uint32;
(*   store i8 %conv115.2, i8* %arrayidx112.2, align 1 *)
mov c_2 v_conv115_2;
(*   %arrayidx18.3 = getelementptr inbounds [16 x i8], [16 x i8]* %alpha, i64 0, i64 15 *)
(*   %51 = load i8, i8* %arrayidx18.3, align 1 *)
mov v51 alpha_15;
(*   %arrayidx20.3 = getelementptr inbounds i8, i8* %c, i64 3 *)
(*   store i8 %51, i8* %arrayidx20.3, align 1 *)
mov c_3 v51;
(*   %arrayidx140.3 = getelementptr inbounds i8, i8* %c, i64 3 *)
(*   %scevgep38.3 = getelementptr i8, i8* %r, i64 11 *)
(*   %52 = load i8, i8* %scevgep38.3, align 1 *)
mov v52 r_11;
(*   %conv138.prol.3 = zext i8 %52 to i32 *)
cast v_conv138_prol_3@uint32 v52@uint8;
(*   %53 = load i8, i8* %arrayidx140.3, align 1 *)
mov v53 c_3;
(*   %conv141.prol.3 = zext i8 %53 to i32 *)
cast v_conv141_prol_3@uint32 v53@uint8;
(*   %xor142.prol.3 = xor i32 %conv141.prol.3, %conv138.prol.3 *)
(* You may need to modify here *)
xor uint32 v_xor142_prol_3 v_conv141_prol_3 v_conv138_prol_3;
(*   %conv143.prol.3 = trunc i32 %xor142.prol.3 to i8 *)
split tmp_v_xor142_prol_3 v_conv143_prol_3 v_xor142_prol_3 8;
vpc v_conv143_prol_3@uint8 v_conv143_prol_3@uint32;
(*   store i8 %conv143.prol.3, i8* %arrayidx140.3, align 1 *)
mov c_3 v_conv143_prol_3;
(*   %scevgep40.prol.3 = getelementptr i8, i8* %scevgep38.3, i64 -4 *)
(*   %54 = load i8, i8* %scevgep40.prol.3, align 1 *)
mov v54 r_7;
(*   %conv138.3 = zext i8 %54 to i32 *)
cast v_conv138_3@uint32 v54@uint8;
(*   %55 = load i8, i8* %arrayidx140.3, align 1 *)
mov v55 c_3;
(*   %conv141.3 = zext i8 %55 to i32 *)
cast v_conv141_3@uint32 v55@uint8;
(*   %xor142.3 = xor i32 %conv141.3, %conv138.3 *)
(* You may need to modify here *)
xor uint32 v_xor142_3 v_conv141_3 v_conv138_3;
(*   %conv143.3 = trunc i32 %xor142.3 to i8 *)
split tmp_v_xor142_3 v_conv143_3 v_xor142_3 8;
vpc v_conv143_3@uint8 v_conv143_3@uint32;
(*   store i8 %conv143.3, i8* %arrayidx140.3, align 1 *)
mov c_3 v_conv143_3;
(*   %scevgep40.3 = getelementptr i8, i8* %scevgep40.prol.3, i64 -4 *)
(*   %56 = load i8, i8* %scevgep40.3, align 1 *)
mov v56 r_3;
(*   %conv138.1.3 = zext i8 %56 to i32 *)
cast v_conv138_1_3@uint32 v56@uint8;
(*   %57 = load i8, i8* %arrayidx140.3, align 1 *)
mov v57 c_3;
(*   %conv141.1.3 = zext i8 %57 to i32 *)
cast v_conv141_1_3@uint32 v57@uint8;
(*   %xor142.1.3 = xor i32 %conv141.1.3, %conv138.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor142_1_3 v_conv141_1_3 v_conv138_1_3;
(*   %conv143.1.3 = trunc i32 %xor142.1.3 to i8 *)
split tmp_v_xor142_1_3 v_conv143_1_3 v_xor142_1_3 8;
vpc v_conv143_1_3@uint8 v_conv143_1_3@uint32;
(*   store i8 %conv143.1.3, i8* %arrayidx140.3, align 1 *)
mov c_3 v_conv143_1_3;
(*   %58 = load i8, i8* %a, align 1 *)
mov v58 a_0;
(*   %scevgep30.1 = getelementptr i8, i8* %a, i64 1 *)
(*   %59 = load i8, i8* %scevgep30.1, align 1 *)
mov v59 a_1;
(*   %conv.i.i165.1 = zext i8 %59 to i32 *)
cast v_conv_i_i165_1@uint32 v59@uint8;
(*   %conv1.i.i166.1 = zext i8 %58 to i32 *)
cast v_conv1_i_i166_1@uint32 v58@uint8;
(*   %xor.i.i167.1 = xor i32 %conv1.i.i166.1, %conv.i.i165.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i167_1 v_conv1_i_i166_1 v_conv_i_i165_1;
(*   %conv2.i.i168.1 = trunc i32 %xor.i.i167.1 to i8 *)
split tmp_v_xor_i_i167_1 v_conv2_i_i168_1 v_xor_i_i167_1 8;
vpc v_conv2_i_i168_1@uint8 v_conv2_i_i168_1@uint32;
(*   %scevgep30.2 = getelementptr i8, i8* %a, i64 2 *)
(*   %60 = load i8, i8* %scevgep30.2, align 1 *)
mov v60 a_2;
(*   %conv.i.i165.2 = zext i8 %60 to i32 *)
cast v_conv_i_i165_2@uint32 v60@uint8;
(*   %conv1.i.i166.2 = zext i8 %conv2.i.i168.1 to i32 *)
cast v_conv1_i_i166_2@uint32 v_conv2_i_i168_1@uint8;
(*   %xor.i.i167.2 = xor i32 %conv1.i.i166.2, %conv.i.i165.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i167_2 v_conv1_i_i166_2 v_conv_i_i165_2;
(*   %conv2.i.i168.2 = trunc i32 %xor.i.i167.2 to i8 *)
split tmp_v_xor_i_i167_2 v_conv2_i_i168_2 v_xor_i_i167_2 8;
vpc v_conv2_i_i168_2@uint8 v_conv2_i_i168_2@uint32;
(*   %scevgep30.3 = getelementptr i8, i8* %a, i64 3 *)
(*   %61 = load i8, i8* %scevgep30.3, align 1 *)
mov v61 a_3;
(*   %conv.i.i165.3 = zext i8 %61 to i32 *)
cast v_conv_i_i165_3@uint32 v61@uint8;
(*   %conv1.i.i166.3 = zext i8 %conv2.i.i168.2 to i32 *)
cast v_conv1_i_i166_3@uint32 v_conv2_i_i168_2@uint8;
(*   %xor.i.i167.3 = xor i32 %conv1.i.i166.3, %conv.i.i165.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i167_3 v_conv1_i_i166_3 v_conv_i_i165_3;
(*   %conv2.i.i168.3 = trunc i32 %xor.i.i167.3 to i8 *)
split tmp_v_xor_i_i167_3 v_conv2_i_i168_3 v_xor_i_i167_3 8;
vpc v_conv2_i_i168_3@uint8 v_conv2_i_i168_3@uint32;
(*   %62 = load i8, i8* %b, align 1 *)
mov v62 b_0;
(*   %scevgep26.1 = getelementptr i8, i8* %b, i64 1 *)
(*   %63 = load i8, i8* %scevgep26.1, align 1 *)
mov v63 b_1;
(*   %conv.i.i182.1 = zext i8 %63 to i32 *)
cast v_conv_i_i182_1@uint32 v63@uint8;
(*   %conv1.i.i183.1 = zext i8 %62 to i32 *)
cast v_conv1_i_i183_1@uint32 v62@uint8;
(*   %xor.i.i184.1 = xor i32 %conv1.i.i183.1, %conv.i.i182.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i184_1 v_conv1_i_i183_1 v_conv_i_i182_1;
(*   %conv2.i.i185.1 = trunc i32 %xor.i.i184.1 to i8 *)
split tmp_v_xor_i_i184_1 v_conv2_i_i185_1 v_xor_i_i184_1 8;
vpc v_conv2_i_i185_1@uint8 v_conv2_i_i185_1@uint32;
(*   %scevgep26.2 = getelementptr i8, i8* %b, i64 2 *)
(*   %64 = load i8, i8* %scevgep26.2, align 1 *)
mov v64 b_2;
(*   %conv.i.i182.2 = zext i8 %64 to i32 *)
cast v_conv_i_i182_2@uint32 v64@uint8;
(*   %conv1.i.i183.2 = zext i8 %conv2.i.i185.1 to i32 *)
cast v_conv1_i_i183_2@uint32 v_conv2_i_i185_1@uint8;
(*   %xor.i.i184.2 = xor i32 %conv1.i.i183.2, %conv.i.i182.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i184_2 v_conv1_i_i183_2 v_conv_i_i182_2;
(*   %conv2.i.i185.2 = trunc i32 %xor.i.i184.2 to i8 *)
split tmp_v_xor_i_i184_2 v_conv2_i_i185_2 v_xor_i_i184_2 8;
vpc v_conv2_i_i185_2@uint8 v_conv2_i_i185_2@uint32;
(*   %scevgep26.3 = getelementptr i8, i8* %b, i64 3 *)
(*   %65 = load i8, i8* %scevgep26.3, align 1 *)
mov v65 b_3;
(*   %conv.i.i182.3 = zext i8 %65 to i32 *)
cast v_conv_i_i182_3@uint32 v65@uint8;
(*   %conv1.i.i183.3 = zext i8 %conv2.i.i185.2 to i32 *)
cast v_conv1_i_i183_3@uint32 v_conv2_i_i185_2@uint8;
(*   %xor.i.i184.3 = xor i32 %conv1.i.i183.3, %conv.i.i182.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i184_3 v_conv1_i_i183_3 v_conv_i_i182_3;
(*   %conv2.i.i185.3 = trunc i32 %xor.i.i184.3 to i8 *)
split tmp_v_xor_i_i184_3 v_conv2_i_i185_3 v_xor_i_i184_3 8;
vpc v_conv2_i_i185_3@uint8 v_conv2_i_i185_3@uint32;
(*   %conv.i195 = zext i8 %conv2.i.i185.3 to i32 *)
cast v_conv_i195@uint32 v_conv2_i_i185_3@uint8;
(*   %and.i196 = and i32 %conv.i195, 1 *)
(* You may need to modify here *)
and uint32 v_and_i196 v_conv_i195 (0x1)@uint32;
(*   %conv1.i197 = zext i8 %conv2.i.i168.3 to i32 *)
cast v_conv1_i197@uint32 v_conv2_i_i168_3@uint8;
(*   %mul.i198 = mul nsw i32 %and.i196, %conv1.i197 *)
mul v_mul_i198 v_and_i196 v_conv1_i197;
(*   %conv3.i201 = trunc i32 %mul.i198 to i8 *)
split tmp_v_mul_i198 v_conv3_i201 v_mul_i198 8;
vpc v_conv3_i201@uint8 v_conv3_i201@uint32;
(*   %conv4.i202 = zext i8 %conv2.i.i185.3 to i32 *)
cast v_conv4_i202@uint32 v_conv2_i_i185_3@uint8;
(*   %shr.i203 = ashr i32 %conv4.i202, 1 *)
(* You may need to modify here *)
split v_shr_i203 tmp_to_be_used v_conv4_i202 1;
(*   %conv5.i204 = trunc i32 %shr.i203 to i8 *)
split tmp_v_shr_i203 v_conv5_i204 v_shr_i203 8;
vpc v_conv5_i204@uint8 v_conv5_i204@uint32;
(*   %conv6.i205 = zext i8 %conv2.i.i168.3 to i32 *)
cast v_conv6_i205@uint32 v_conv2_i_i168_3@uint8;
(*   %shl.i206 = shl i32 %conv6.i205, 1 *)
shls discard_112 v_shl_i206 v_conv6_i205 1;
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
shls discard_113 v_shl_i206_1 v_conv6_i205_1 1;
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
shls discard_114 v_shl_i206_2 v_conv6_i205_2 1;
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
shls discard_115 v_shl_i206_3 v_conv6_i205_3 1;
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
shls discard_116 v_shl_i206_4 v_conv6_i205_4 1;
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
shls discard_117 v_shl_i206_5 v_conv6_i205_5 1;
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
shls discard_118 v_shl_i206_6 v_conv6_i205_6 1;
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
(*   %66 = load i8, i8* %c, align 1 *)
mov v66 c_0;
(*   %scevgep.1 = getelementptr i8, i8* %c, i64 1 *)
(*   %67 = load i8, i8* %scevgep.1, align 1 *)
mov v67 c_1;
(*   %conv.i.i.1 = zext i8 %67 to i32 *)
cast v_conv_i_i_1@uint32 v67@uint8;
(*   %conv1.i.i.1 = zext i8 %66 to i32 *)
cast v_conv1_i_i_1@uint32 v66@uint8;
(*   %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_1 v_conv1_i_i_1 v_conv_i_i_1;
(*   %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8 *)
split tmp_v_xor_i_i_1 v_conv2_i_i_1 v_xor_i_i_1 8;
vpc v_conv2_i_i_1@uint8 v_conv2_i_i_1@uint32;
(*   %scevgep.2 = getelementptr i8, i8* %c, i64 2 *)
(*   %68 = load i8, i8* %scevgep.2, align 1 *)
mov v68 c_2;
(*   %conv.i.i.2 = zext i8 %68 to i32 *)
cast v_conv_i_i_2@uint32 v68@uint8;
(*   %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32 *)
cast v_conv1_i_i_2@uint32 v_conv2_i_i_1@uint8;
(*   %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_2 v_conv1_i_i_2 v_conv_i_i_2;
(*   %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8 *)
split tmp_v_xor_i_i_2 v_conv2_i_i_2 v_xor_i_i_2 8;
vpc v_conv2_i_i_2@uint8 v_conv2_i_i_2@uint32;
(*   %scevgep.3 = getelementptr i8, i8* %c, i64 3 *)
(*   %69 = load i8, i8* %scevgep.3, align 1 *)
mov v69 c_3;
(*   %conv.i.i.3 = zext i8 %69 to i32 *)
cast v_conv_i_i_3@uint32 v69@uint8;
(*   %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32 *)
cast v_conv1_i_i_3@uint32 v_conv2_i_i_2@uint8;
(*   %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_3 v_conv1_i_i_3 v_conv_i_i_3;
(*   %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8 *)
split tmp_v_xor_i_i_3 v_conv2_i_i_3 v_xor_i_i_3 8;
vpc v_conv2_i_i_3@uint8 v_conv2_i_i_3@uint32;
(*   store i8 %conv2.i.i.3, i8* %C, align 1 *)
mov C_0 v_conv2_i_i_3;
(*   ret void *)


assert AB_0=C_0 && true;

mov _ AB_0@uint8;
mov _ C_0@uint8;


{
  true
  &&
  true
}

