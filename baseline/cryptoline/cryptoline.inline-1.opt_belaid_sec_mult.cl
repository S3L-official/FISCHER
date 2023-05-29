proc main (uint8 a_0, uint8 a_1, uint8 b_0, uint8 b_1, uint8 r_1) =
{
  true
  &&
  true
}



(*   %alpha = alloca [4 x i8], align 1 *)
(*   %t = alloca [4 x i8], align 1 *)
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
(*   %arrayidx7 = getelementptr inbounds [4 x i8], [4 x i8]* %alpha, i64 0, i64 0 *)
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
(*   %arrayidx7.1 = getelementptr inbounds [4 x i8], [4 x i8]* %alpha, i64 0, i64 1 *)
(*   store i8 %conv3.i.7.1, i8* %arrayidx7.1, align 1 *)
mov alpha_1 v_conv3_i_7_1;
(*   %arrayidx.1 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %3 = load i8, i8* %arrayidx.1, align 1 *)
mov v3 a_1;
(*   %4 = load i8, i8* %b, align 1 *)
mov v4 b_0;
(*   %conv.i.152 = zext i8 %4 to i32 *)
cast v_conv_i_152@uint32 v4@uint8;
(*   %and.i.153 = and i32 %conv.i.152, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_153 v_conv_i_152 (0x1)@uint32;
(*   %conv1.i.154 = zext i8 %3 to i32 *)
cast v_conv1_i_154@uint32 v3@uint8;
(*   %mul.i.155 = mul nsw i32 %and.i.153, %conv1.i.154 *)
mul v_mul_i_155 v_and_i_153 v_conv1_i_154;
(*   %conv3.i.156 = trunc i32 %mul.i.155 to i8 *)
split tmp_v_mul_i_155 v_conv3_i_156 v_mul_i_155 8;
vpc v_conv3_i_156@uint8 v_conv3_i_156@uint32;
(*   %conv4.i.157 = zext i8 %4 to i32 *)
cast v_conv4_i_157@uint32 v4@uint8;
(*   %shr.i.158 = ashr i32 %conv4.i.157, 1 *)
(* You may need to modify here *)
split v_shr_i_158 tmp_to_be_used v_conv4_i_157 1;
(*   %conv5.i.159 = trunc i32 %shr.i.158 to i8 *)
split tmp_v_shr_i_158 v_conv5_i_159 v_shr_i_158 8;
vpc v_conv5_i_159@uint8 v_conv5_i_159@uint32;
(*   %conv6.i.160 = zext i8 %3 to i32 *)
cast v_conv6_i_160@uint32 v3@uint8;
(*   %shl.i.161 = shl i32 %conv6.i.160, 1 *)
shls discard_14 v_shl_i_161 v_conv6_i_160 1;
(*   %conv7.i.162 = trunc i32 %shl.i.161 to i8 *)
split tmp_v_shl_i_161 v_conv7_i_162 v_shl_i_161 8;
vpc v_conv7_i_162@uint8 v_conv7_i_162@uint32;
(*   %conv.i.1.163 = zext i8 %conv5.i.159 to i32 *)
cast v_conv_i_1_163@uint32 v_conv5_i_159@uint8;
(*   %and.i.1.164 = and i32 %conv.i.1.163, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_164 v_conv_i_1_163 (0x1)@uint32;
(*   %conv1.i.1.165 = zext i8 %conv7.i.162 to i32 *)
cast v_conv1_i_1_165@uint32 v_conv7_i_162@uint8;
(*   %mul.i.1.166 = mul nsw i32 %and.i.1.164, %conv1.i.1.165 *)
mul v_mul_i_1_166 v_and_i_1_164 v_conv1_i_1_165;
(*   %conv2.i.1.167 = zext i8 %conv3.i.156 to i32 *)
cast v_conv2_i_1_167@uint32 v_conv3_i_156@uint8;
(*   %xor.i.1.168 = xor i32 %conv2.i.1.167, %mul.i.1.166 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_168 v_conv2_i_1_167 v_mul_i_1_166;
(*   %conv3.i.1.169 = trunc i32 %xor.i.1.168 to i8 *)
split tmp_v_xor_i_1_168 v_conv3_i_1_169 v_xor_i_1_168 8;
vpc v_conv3_i_1_169@uint8 v_conv3_i_1_169@uint32;
(*   %conv4.i.1.170 = zext i8 %conv5.i.159 to i32 *)
cast v_conv4_i_1_170@uint32 v_conv5_i_159@uint8;
(*   %shr.i.1.171 = ashr i32 %conv4.i.1.170, 1 *)
(* You may need to modify here *)
split v_shr_i_1_171 tmp_to_be_used v_conv4_i_1_170 1;
(*   %conv5.i.1.172 = trunc i32 %shr.i.1.171 to i8 *)
split tmp_v_shr_i_1_171 v_conv5_i_1_172 v_shr_i_1_171 8;
vpc v_conv5_i_1_172@uint8 v_conv5_i_1_172@uint32;
(*   %conv6.i.1.173 = zext i8 %conv7.i.162 to i32 *)
cast v_conv6_i_1_173@uint32 v_conv7_i_162@uint8;
(*   %shl.i.1.174 = shl i32 %conv6.i.1.173, 1 *)
shls discard_15 v_shl_i_1_174 v_conv6_i_1_173 1;
(*   %conv7.i.1.175 = trunc i32 %shl.i.1.174 to i8 *)
split tmp_v_shl_i_1_174 v_conv7_i_1_175 v_shl_i_1_174 8;
vpc v_conv7_i_1_175@uint8 v_conv7_i_1_175@uint32;
(*   %conv.i.2.176 = zext i8 %conv5.i.1.172 to i32 *)
cast v_conv_i_2_176@uint32 v_conv5_i_1_172@uint8;
(*   %and.i.2.177 = and i32 %conv.i.2.176, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_177 v_conv_i_2_176 (0x1)@uint32;
(*   %conv1.i.2.178 = zext i8 %conv7.i.1.175 to i32 *)
cast v_conv1_i_2_178@uint32 v_conv7_i_1_175@uint8;
(*   %mul.i.2.179 = mul nsw i32 %and.i.2.177, %conv1.i.2.178 *)
mul v_mul_i_2_179 v_and_i_2_177 v_conv1_i_2_178;
(*   %conv2.i.2.180 = zext i8 %conv3.i.1.169 to i32 *)
cast v_conv2_i_2_180@uint32 v_conv3_i_1_169@uint8;
(*   %xor.i.2.181 = xor i32 %conv2.i.2.180, %mul.i.2.179 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_181 v_conv2_i_2_180 v_mul_i_2_179;
(*   %conv3.i.2.182 = trunc i32 %xor.i.2.181 to i8 *)
split tmp_v_xor_i_2_181 v_conv3_i_2_182 v_xor_i_2_181 8;
vpc v_conv3_i_2_182@uint8 v_conv3_i_2_182@uint32;
(*   %conv4.i.2.183 = zext i8 %conv5.i.1.172 to i32 *)
cast v_conv4_i_2_183@uint32 v_conv5_i_1_172@uint8;
(*   %shr.i.2.184 = ashr i32 %conv4.i.2.183, 1 *)
(* You may need to modify here *)
split v_shr_i_2_184 tmp_to_be_used v_conv4_i_2_183 1;
(*   %conv5.i.2.185 = trunc i32 %shr.i.2.184 to i8 *)
split tmp_v_shr_i_2_184 v_conv5_i_2_185 v_shr_i_2_184 8;
vpc v_conv5_i_2_185@uint8 v_conv5_i_2_185@uint32;
(*   %conv6.i.2.186 = zext i8 %conv7.i.1.175 to i32 *)
cast v_conv6_i_2_186@uint32 v_conv7_i_1_175@uint8;
(*   %shl.i.2.187 = shl i32 %conv6.i.2.186, 1 *)
shls discard_16 v_shl_i_2_187 v_conv6_i_2_186 1;
(*   %conv7.i.2.188 = trunc i32 %shl.i.2.187 to i8 *)
split tmp_v_shl_i_2_187 v_conv7_i_2_188 v_shl_i_2_187 8;
vpc v_conv7_i_2_188@uint8 v_conv7_i_2_188@uint32;
(*   %conv.i.3.189 = zext i8 %conv5.i.2.185 to i32 *)
cast v_conv_i_3_189@uint32 v_conv5_i_2_185@uint8;
(*   %and.i.3.190 = and i32 %conv.i.3.189, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_190 v_conv_i_3_189 (0x1)@uint32;
(*   %conv1.i.3.191 = zext i8 %conv7.i.2.188 to i32 *)
cast v_conv1_i_3_191@uint32 v_conv7_i_2_188@uint8;
(*   %mul.i.3.192 = mul nsw i32 %and.i.3.190, %conv1.i.3.191 *)
mul v_mul_i_3_192 v_and_i_3_190 v_conv1_i_3_191;
(*   %conv2.i.3.193 = zext i8 %conv3.i.2.182 to i32 *)
cast v_conv2_i_3_193@uint32 v_conv3_i_2_182@uint8;
(*   %xor.i.3.194 = xor i32 %conv2.i.3.193, %mul.i.3.192 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_194 v_conv2_i_3_193 v_mul_i_3_192;
(*   %conv3.i.3.195 = trunc i32 %xor.i.3.194 to i8 *)
split tmp_v_xor_i_3_194 v_conv3_i_3_195 v_xor_i_3_194 8;
vpc v_conv3_i_3_195@uint8 v_conv3_i_3_195@uint32;
(*   %conv4.i.3.196 = zext i8 %conv5.i.2.185 to i32 *)
cast v_conv4_i_3_196@uint32 v_conv5_i_2_185@uint8;
(*   %shr.i.3.197 = ashr i32 %conv4.i.3.196, 1 *)
(* You may need to modify here *)
split v_shr_i_3_197 tmp_to_be_used v_conv4_i_3_196 1;
(*   %conv5.i.3.198 = trunc i32 %shr.i.3.197 to i8 *)
split tmp_v_shr_i_3_197 v_conv5_i_3_198 v_shr_i_3_197 8;
vpc v_conv5_i_3_198@uint8 v_conv5_i_3_198@uint32;
(*   %conv6.i.3.199 = zext i8 %conv7.i.2.188 to i32 *)
cast v_conv6_i_3_199@uint32 v_conv7_i_2_188@uint8;
(*   %shl.i.3.1100 = shl i32 %conv6.i.3.199, 1 *)
shls discard_17 v_shl_i_3_1100 v_conv6_i_3_199 1;
(*   %conv7.i.3.1101 = trunc i32 %shl.i.3.1100 to i8 *)
split tmp_v_shl_i_3_1100 v_conv7_i_3_1101 v_shl_i_3_1100 8;
vpc v_conv7_i_3_1101@uint8 v_conv7_i_3_1101@uint32;
(*   %conv.i.4.1102 = zext i8 %conv5.i.3.198 to i32 *)
cast v_conv_i_4_1102@uint32 v_conv5_i_3_198@uint8;
(*   %and.i.4.1103 = and i32 %conv.i.4.1102, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_1103 v_conv_i_4_1102 (0x1)@uint32;
(*   %conv1.i.4.1104 = zext i8 %conv7.i.3.1101 to i32 *)
cast v_conv1_i_4_1104@uint32 v_conv7_i_3_1101@uint8;
(*   %mul.i.4.1105 = mul nsw i32 %and.i.4.1103, %conv1.i.4.1104 *)
mul v_mul_i_4_1105 v_and_i_4_1103 v_conv1_i_4_1104;
(*   %conv2.i.4.1106 = zext i8 %conv3.i.3.195 to i32 *)
cast v_conv2_i_4_1106@uint32 v_conv3_i_3_195@uint8;
(*   %xor.i.4.1107 = xor i32 %conv2.i.4.1106, %mul.i.4.1105 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_1107 v_conv2_i_4_1106 v_mul_i_4_1105;
(*   %conv3.i.4.1108 = trunc i32 %xor.i.4.1107 to i8 *)
split tmp_v_xor_i_4_1107 v_conv3_i_4_1108 v_xor_i_4_1107 8;
vpc v_conv3_i_4_1108@uint8 v_conv3_i_4_1108@uint32;
(*   %conv4.i.4.1109 = zext i8 %conv5.i.3.198 to i32 *)
cast v_conv4_i_4_1109@uint32 v_conv5_i_3_198@uint8;
(*   %shr.i.4.1110 = ashr i32 %conv4.i.4.1109, 1 *)
(* You may need to modify here *)
split v_shr_i_4_1110 tmp_to_be_used v_conv4_i_4_1109 1;
(*   %conv5.i.4.1111 = trunc i32 %shr.i.4.1110 to i8 *)
split tmp_v_shr_i_4_1110 v_conv5_i_4_1111 v_shr_i_4_1110 8;
vpc v_conv5_i_4_1111@uint8 v_conv5_i_4_1111@uint32;
(*   %conv6.i.4.1112 = zext i8 %conv7.i.3.1101 to i32 *)
cast v_conv6_i_4_1112@uint32 v_conv7_i_3_1101@uint8;
(*   %shl.i.4.1113 = shl i32 %conv6.i.4.1112, 1 *)
shls discard_18 v_shl_i_4_1113 v_conv6_i_4_1112 1;
(*   %conv7.i.4.1114 = trunc i32 %shl.i.4.1113 to i8 *)
split tmp_v_shl_i_4_1113 v_conv7_i_4_1114 v_shl_i_4_1113 8;
vpc v_conv7_i_4_1114@uint8 v_conv7_i_4_1114@uint32;
(*   %conv.i.5.1115 = zext i8 %conv5.i.4.1111 to i32 *)
cast v_conv_i_5_1115@uint32 v_conv5_i_4_1111@uint8;
(*   %and.i.5.1116 = and i32 %conv.i.5.1115, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_1116 v_conv_i_5_1115 (0x1)@uint32;
(*   %conv1.i.5.1117 = zext i8 %conv7.i.4.1114 to i32 *)
cast v_conv1_i_5_1117@uint32 v_conv7_i_4_1114@uint8;
(*   %mul.i.5.1118 = mul nsw i32 %and.i.5.1116, %conv1.i.5.1117 *)
mul v_mul_i_5_1118 v_and_i_5_1116 v_conv1_i_5_1117;
(*   %conv2.i.5.1119 = zext i8 %conv3.i.4.1108 to i32 *)
cast v_conv2_i_5_1119@uint32 v_conv3_i_4_1108@uint8;
(*   %xor.i.5.1120 = xor i32 %conv2.i.5.1119, %mul.i.5.1118 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_1120 v_conv2_i_5_1119 v_mul_i_5_1118;
(*   %conv3.i.5.1121 = trunc i32 %xor.i.5.1120 to i8 *)
split tmp_v_xor_i_5_1120 v_conv3_i_5_1121 v_xor_i_5_1120 8;
vpc v_conv3_i_5_1121@uint8 v_conv3_i_5_1121@uint32;
(*   %conv4.i.5.1122 = zext i8 %conv5.i.4.1111 to i32 *)
cast v_conv4_i_5_1122@uint32 v_conv5_i_4_1111@uint8;
(*   %shr.i.5.1123 = ashr i32 %conv4.i.5.1122, 1 *)
(* You may need to modify here *)
split v_shr_i_5_1123 tmp_to_be_used v_conv4_i_5_1122 1;
(*   %conv5.i.5.1124 = trunc i32 %shr.i.5.1123 to i8 *)
split tmp_v_shr_i_5_1123 v_conv5_i_5_1124 v_shr_i_5_1123 8;
vpc v_conv5_i_5_1124@uint8 v_conv5_i_5_1124@uint32;
(*   %conv6.i.5.1125 = zext i8 %conv7.i.4.1114 to i32 *)
cast v_conv6_i_5_1125@uint32 v_conv7_i_4_1114@uint8;
(*   %shl.i.5.1126 = shl i32 %conv6.i.5.1125, 1 *)
shls discard_19 v_shl_i_5_1126 v_conv6_i_5_1125 1;
(*   %conv7.i.5.1127 = trunc i32 %shl.i.5.1126 to i8 *)
split tmp_v_shl_i_5_1126 v_conv7_i_5_1127 v_shl_i_5_1126 8;
vpc v_conv7_i_5_1127@uint8 v_conv7_i_5_1127@uint32;
(*   %conv.i.6.1128 = zext i8 %conv5.i.5.1124 to i32 *)
cast v_conv_i_6_1128@uint32 v_conv5_i_5_1124@uint8;
(*   %and.i.6.1129 = and i32 %conv.i.6.1128, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_1129 v_conv_i_6_1128 (0x1)@uint32;
(*   %conv1.i.6.1130 = zext i8 %conv7.i.5.1127 to i32 *)
cast v_conv1_i_6_1130@uint32 v_conv7_i_5_1127@uint8;
(*   %mul.i.6.1131 = mul nsw i32 %and.i.6.1129, %conv1.i.6.1130 *)
mul v_mul_i_6_1131 v_and_i_6_1129 v_conv1_i_6_1130;
(*   %conv2.i.6.1132 = zext i8 %conv3.i.5.1121 to i32 *)
cast v_conv2_i_6_1132@uint32 v_conv3_i_5_1121@uint8;
(*   %xor.i.6.1133 = xor i32 %conv2.i.6.1132, %mul.i.6.1131 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_1133 v_conv2_i_6_1132 v_mul_i_6_1131;
(*   %conv3.i.6.1134 = trunc i32 %xor.i.6.1133 to i8 *)
split tmp_v_xor_i_6_1133 v_conv3_i_6_1134 v_xor_i_6_1133 8;
vpc v_conv3_i_6_1134@uint8 v_conv3_i_6_1134@uint32;
(*   %conv4.i.6.1135 = zext i8 %conv5.i.5.1124 to i32 *)
cast v_conv4_i_6_1135@uint32 v_conv5_i_5_1124@uint8;
(*   %shr.i.6.1136 = ashr i32 %conv4.i.6.1135, 1 *)
(* You may need to modify here *)
split v_shr_i_6_1136 tmp_to_be_used v_conv4_i_6_1135 1;
(*   %conv5.i.6.1137 = trunc i32 %shr.i.6.1136 to i8 *)
split tmp_v_shr_i_6_1136 v_conv5_i_6_1137 v_shr_i_6_1136 8;
vpc v_conv5_i_6_1137@uint8 v_conv5_i_6_1137@uint32;
(*   %conv6.i.6.1138 = zext i8 %conv7.i.5.1127 to i32 *)
cast v_conv6_i_6_1138@uint32 v_conv7_i_5_1127@uint8;
(*   %shl.i.6.1139 = shl i32 %conv6.i.6.1138, 1 *)
shls discard_20 v_shl_i_6_1139 v_conv6_i_6_1138 1;
(*   %conv7.i.6.1140 = trunc i32 %shl.i.6.1139 to i8 *)
split tmp_v_shl_i_6_1139 v_conv7_i_6_1140 v_shl_i_6_1139 8;
vpc v_conv7_i_6_1140@uint8 v_conv7_i_6_1140@uint32;
(*   %conv.i.7.1141 = zext i8 %conv5.i.6.1137 to i32 *)
cast v_conv_i_7_1141@uint32 v_conv5_i_6_1137@uint8;
(*   %and.i.7.1142 = and i32 %conv.i.7.1141, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_1142 v_conv_i_7_1141 (0x1)@uint32;
(*   %conv1.i.7.1143 = zext i8 %conv7.i.6.1140 to i32 *)
cast v_conv1_i_7_1143@uint32 v_conv7_i_6_1140@uint8;
(*   %mul.i.7.1144 = mul nsw i32 %and.i.7.1142, %conv1.i.7.1143 *)
mul v_mul_i_7_1144 v_and_i_7_1142 v_conv1_i_7_1143;
(*   %conv2.i.7.1145 = zext i8 %conv3.i.6.1134 to i32 *)
cast v_conv2_i_7_1145@uint32 v_conv3_i_6_1134@uint8;
(*   %xor.i.7.1146 = xor i32 %conv2.i.7.1145, %mul.i.7.1144 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_1146 v_conv2_i_7_1145 v_mul_i_7_1144;
(*   %conv3.i.7.1147 = trunc i32 %xor.i.7.1146 to i8 *)
split tmp_v_xor_i_7_1146 v_conv3_i_7_1147 v_xor_i_7_1146 8;
vpc v_conv3_i_7_1147@uint8 v_conv3_i_7_1147@uint32;
(*   %arrayidx7.1151 = getelementptr inbounds [4 x i8], [4 x i8]* %alpha, i64 0, i64 2 *)
(*   store i8 %conv3.i.7.1147, i8* %arrayidx7.1151, align 1 *)
mov alpha_2 v_conv3_i_7_1147;
(*   %arrayidx5.1.1 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %5 = load i8, i8* %arrayidx5.1.1, align 1 *)
mov v5 b_1;
(*   %conv.i.141.1 = zext i8 %5 to i32 *)
cast v_conv_i_141_1@uint32 v5@uint8;
(*   %and.i.142.1 = and i32 %conv.i.141.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_142_1 v_conv_i_141_1 (0x1)@uint32;
(*   %conv1.i.143.1 = zext i8 %3 to i32 *)
cast v_conv1_i_143_1@uint32 v3@uint8;
(*   %mul.i.144.1 = mul nsw i32 %and.i.142.1, %conv1.i.143.1 *)
mul v_mul_i_144_1 v_and_i_142_1 v_conv1_i_143_1;
(*   %conv3.i.145.1 = trunc i32 %mul.i.144.1 to i8 *)
split tmp_v_mul_i_144_1 v_conv3_i_145_1 v_mul_i_144_1 8;
vpc v_conv3_i_145_1@uint8 v_conv3_i_145_1@uint32;
(*   %conv4.i.146.1 = zext i8 %5 to i32 *)
cast v_conv4_i_146_1@uint32 v5@uint8;
(*   %shr.i.147.1 = ashr i32 %conv4.i.146.1, 1 *)
(* You may need to modify here *)
split v_shr_i_147_1 tmp_to_be_used v_conv4_i_146_1 1;
(*   %conv5.i.148.1 = trunc i32 %shr.i.147.1 to i8 *)
split tmp_v_shr_i_147_1 v_conv5_i_148_1 v_shr_i_147_1 8;
vpc v_conv5_i_148_1@uint8 v_conv5_i_148_1@uint32;
(*   %conv6.i.149.1 = zext i8 %3 to i32 *)
cast v_conv6_i_149_1@uint32 v3@uint8;
(*   %shl.i.150.1 = shl i32 %conv6.i.149.1, 1 *)
shls discard_21 v_shl_i_150_1 v_conv6_i_149_1 1;
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
shls discard_22 v_shl_i_1_1_1 v_conv6_i_1_1_1 1;
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
shls discard_23 v_shl_i_2_1_1 v_conv6_i_2_1_1 1;
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
shls discard_24 v_shl_i_3_1_1 v_conv6_i_3_1_1 1;
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
shls discard_25 v_shl_i_4_1_1 v_conv6_i_4_1_1 1;
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
shls discard_26 v_shl_i_5_1_1 v_conv6_i_5_1_1 1;
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
shls discard_27 v_shl_i_6_1_1 v_conv6_i_6_1_1 1;
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
(*   %arrayidx7.1.1 = getelementptr inbounds [4 x i8], [4 x i8]* %alpha, i64 0, i64 3 *)
(*   store i8 %conv3.i.7.1.1, i8* %arrayidx7.1.1, align 1 *)
mov alpha_3 v_conv3_i_7_1_1;
(*   %arrayidx18 = getelementptr inbounds [4 x i8], [4 x i8]* %alpha, i64 0, i64 0 *)
(*   %6 = load i8, i8* %arrayidx18, align 1 *)
mov v6 alpha_0;
(*   store i8 %6, i8* %c, align 1 *)
mov c_0 v6;
(*   %arrayidx83 = getelementptr inbounds i8, i8* %r, i64 1 *)
(*   %7 = load i8, i8* %arrayidx83, align 1 *)
mov v7 r_1;
(*   %conv84 = zext i8 %7 to i32 *)
cast v_conv84@uint32 v7@uint8;
(*   %arrayidx89 = getelementptr inbounds [4 x i8], [4 x i8]* %alpha, i64 0, i64 1 *)
(*   %8 = load i8, i8* %arrayidx89, align 1 *)
mov v8 alpha_1;
(*   %conv90 = zext i8 %8 to i32 *)
cast v_conv90@uint32 v8@uint8;
(*   %xor91 = xor i32 %conv84, %conv90 *)
(* You may need to modify here *)
xor uint32 v_xor91 v_conv84 v_conv90;
(*   %arrayidx96 = getelementptr inbounds [4 x i8], [4 x i8]* %alpha, i64 0, i64 2 *)
(*   %9 = load i8, i8* %arrayidx96, align 1 *)
mov v9 alpha_2;
(*   %conv97 = zext i8 %9 to i32 *)
cast v_conv97@uint32 v9@uint8;
(*   %xor98 = xor i32 %xor91, %conv97 *)
(* You may need to modify here *)
xor uint32 v_xor98 v_xor91 v_conv97;
(*   %conv99 = trunc i32 %xor98 to i8 *)
split tmp_v_xor98 v_conv99 v_xor98 8;
vpc v_conv99@uint8 v_conv99@uint32;
(*   %arrayidx104 = getelementptr inbounds [4 x i8], [4 x i8]* %t, i64 0, i64 1 *)
(*   store i8 %conv99, i8* %arrayidx104, align 1 *)
mov t_1 v_conv99;
(*   %arrayidx109 = getelementptr inbounds [4 x i8], [4 x i8]* %t, i64 0, i64 1 *)
(*   %10 = load i8, i8* %arrayidx109, align 1 *)
mov v10 t_1;
(*   %conv110 = zext i8 %10 to i32 *)
cast v_conv110@uint32 v10@uint8;
(*   %11 = load i8, i8* %c, align 1 *)
mov v11 c_0;
(*   %conv113 = zext i8 %11 to i32 *)
cast v_conv113@uint32 v11@uint8;
(*   %xor114 = xor i32 %conv113, %conv110 *)
(* You may need to modify here *)
xor uint32 v_xor114 v_conv113 v_conv110;
(*   %conv115 = trunc i32 %xor114 to i8 *)
split tmp_v_xor114 v_conv115 v_xor114 8;
vpc v_conv115@uint8 v_conv115@uint32;
(*   store i8 %conv115, i8* %c, align 1 *)
mov c_0 v_conv115;
(*   %arrayidx18.1 = getelementptr inbounds [4 x i8], [4 x i8]* %alpha, i64 0, i64 3 *)
(*   %12 = load i8, i8* %arrayidx18.1, align 1 *)
mov v12 alpha_3;
(*   %arrayidx20.1 = getelementptr inbounds i8, i8* %c, i64 1 *)
(*   store i8 %12, i8* %arrayidx20.1, align 1 *)
mov c_1 v12;
(*   %arrayidx140.1 = getelementptr inbounds i8, i8* %c, i64 1 *)
(*   %scevgep38.1 = getelementptr i8, i8* %r, i64 1 *)
(*   %13 = load i8, i8* %scevgep38.1, align 1 *)
mov v13 r_1;
(*   %conv138.prol.1 = zext i8 %13 to i32 *)
cast v_conv138_prol_1@uint32 v13@uint8;
(*   %14 = load i8, i8* %arrayidx140.1, align 1 *)
mov v14 c_1;
(*   %conv141.prol.1 = zext i8 %14 to i32 *)
cast v_conv141_prol_1@uint32 v14@uint8;
(*   %xor142.prol.1 = xor i32 %conv141.prol.1, %conv138.prol.1 *)
(* You may need to modify here *)
xor uint32 v_xor142_prol_1 v_conv141_prol_1 v_conv138_prol_1;
(*   %conv143.prol.1 = trunc i32 %xor142.prol.1 to i8 *)
split tmp_v_xor142_prol_1 v_conv143_prol_1 v_xor142_prol_1 8;
vpc v_conv143_prol_1@uint8 v_conv143_prol_1@uint32;
(*   store i8 %conv143.prol.1, i8* %arrayidx140.1, align 1 *)
mov c_1 v_conv143_prol_1;
(*   %15 = load i8, i8* %a, align 1 *)
mov v15 a_0;
(*   %scevgep30.1 = getelementptr i8, i8* %a, i64 1 *)
(*   %16 = load i8, i8* %scevgep30.1, align 1 *)
mov v16 a_1;
(*   %conv.i.i165.1 = zext i8 %16 to i32 *)
cast v_conv_i_i165_1@uint32 v16@uint8;
(*   %conv1.i.i166.1 = zext i8 %15 to i32 *)
cast v_conv1_i_i166_1@uint32 v15@uint8;
(*   %xor.i.i167.1 = xor i32 %conv1.i.i166.1, %conv.i.i165.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i167_1 v_conv1_i_i166_1 v_conv_i_i165_1;
(*   %conv2.i.i168.1 = trunc i32 %xor.i.i167.1 to i8 *)
split tmp_v_xor_i_i167_1 v_conv2_i_i168_1 v_xor_i_i167_1 8;
vpc v_conv2_i_i168_1@uint8 v_conv2_i_i168_1@uint32;
(*   %17 = load i8, i8* %b, align 1 *)
mov v17 b_0;
(*   %scevgep26.1 = getelementptr i8, i8* %b, i64 1 *)
(*   %18 = load i8, i8* %scevgep26.1, align 1 *)
mov v18 b_1;
(*   %conv.i.i182.1 = zext i8 %18 to i32 *)
cast v_conv_i_i182_1@uint32 v18@uint8;
(*   %conv1.i.i183.1 = zext i8 %17 to i32 *)
cast v_conv1_i_i183_1@uint32 v17@uint8;
(*   %xor.i.i184.1 = xor i32 %conv1.i.i183.1, %conv.i.i182.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i184_1 v_conv1_i_i183_1 v_conv_i_i182_1;
(*   %conv2.i.i185.1 = trunc i32 %xor.i.i184.1 to i8 *)
split tmp_v_xor_i_i184_1 v_conv2_i_i185_1 v_xor_i_i184_1 8;
vpc v_conv2_i_i185_1@uint8 v_conv2_i_i185_1@uint32;
(*   %conv.i195 = zext i8 %conv2.i.i185.1 to i32 *)
cast v_conv_i195@uint32 v_conv2_i_i185_1@uint8;
(*   %and.i196 = and i32 %conv.i195, 1 *)
(* You may need to modify here *)
and uint32 v_and_i196 v_conv_i195 (0x1)@uint32;
(*   %conv1.i197 = zext i8 %conv2.i.i168.1 to i32 *)
cast v_conv1_i197@uint32 v_conv2_i_i168_1@uint8;
(*   %mul.i198 = mul nsw i32 %and.i196, %conv1.i197 *)
mul v_mul_i198 v_and_i196 v_conv1_i197;
(*   %conv3.i201 = trunc i32 %mul.i198 to i8 *)
split tmp_v_mul_i198 v_conv3_i201 v_mul_i198 8;
vpc v_conv3_i201@uint8 v_conv3_i201@uint32;
(*   %conv4.i202 = zext i8 %conv2.i.i185.1 to i32 *)
cast v_conv4_i202@uint32 v_conv2_i_i185_1@uint8;
(*   %shr.i203 = ashr i32 %conv4.i202, 1 *)
(* You may need to modify here *)
split v_shr_i203 tmp_to_be_used v_conv4_i202 1;
(*   %conv5.i204 = trunc i32 %shr.i203 to i8 *)
split tmp_v_shr_i203 v_conv5_i204 v_shr_i203 8;
vpc v_conv5_i204@uint8 v_conv5_i204@uint32;
(*   %conv6.i205 = zext i8 %conv2.i.i168.1 to i32 *)
cast v_conv6_i205@uint32 v_conv2_i_i168_1@uint8;
(*   %shl.i206 = shl i32 %conv6.i205, 1 *)
shls discard_28 v_shl_i206 v_conv6_i205 1;
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
shls discard_29 v_shl_i206_1 v_conv6_i205_1 1;
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
shls discard_30 v_shl_i206_2 v_conv6_i205_2 1;
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
shls discard_31 v_shl_i206_3 v_conv6_i205_3 1;
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
shls discard_32 v_shl_i206_4 v_conv6_i205_4 1;
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
shls discard_33 v_shl_i206_5 v_conv6_i205_5 1;
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
shls discard_34 v_shl_i206_6 v_conv6_i205_6 1;
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
(*   %19 = load i8, i8* %c, align 1 *)
mov v19 c_0;
(*   %scevgep.1 = getelementptr i8, i8* %c, i64 1 *)
(*   %20 = load i8, i8* %scevgep.1, align 1 *)
mov v20 c_1;
(*   %conv.i.i.1 = zext i8 %20 to i32 *)
cast v_conv_i_i_1@uint32 v20@uint8;
(*   %conv1.i.i.1 = zext i8 %19 to i32 *)
cast v_conv1_i_i_1@uint32 v19@uint8;
(*   %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_1 v_conv1_i_i_1 v_conv_i_i_1;
(*   %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8 *)
split tmp_v_xor_i_i_1 v_conv2_i_i_1 v_xor_i_i_1 8;
vpc v_conv2_i_i_1@uint8 v_conv2_i_i_1@uint32;
(*   store i8 %conv2.i.i.1, i8* %C, align 1 *)
mov C_0 v_conv2_i_i_1;
(*   ret void *)


(* Outputs *)

mov _ AB_0@uint8;
mov _ C_0@uint8;


{
  true
  &&
  true
}

