proc main (uint8 a_0, uint8 a_1, uint8 a_2, uint8 b_0, uint8 b_1, uint8 b_2, uint8 r_2, uint8 r_5, uint8 rr_1) =
{
  true
  &&
  true
}



(*   %alpha = alloca [9 x i8], align 1 *)
(*   %t = alloca [9 x i8], align 1 *)
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
(*   %arrayidx7 = getelementptr inbounds [9 x i8], [9 x i8]* %alpha, i64 0, i64 0 *)
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
(*   %arrayidx7.1 = getelementptr inbounds [9 x i8], [9 x i8]* %alpha, i64 0, i64 1 *)
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
(*   %arrayidx7.2 = getelementptr inbounds [9 x i8], [9 x i8]* %alpha, i64 0, i64 2 *)
(*   store i8 %conv3.i.7.2, i8* %arrayidx7.2, align 1 *)
mov alpha_2 v_conv3_i_7_2;
(*   %arrayidx.1 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %4 = load i8, i8* %arrayidx.1, align 1 *)
mov v4 a_1;
(*   %5 = load i8, i8* %b, align 1 *)
mov v5 b_0;
(*   %conv.i.164 = zext i8 %5 to i32 *)
cast v_conv_i_164@uint32 v5@uint8;
(*   %and.i.165 = and i32 %conv.i.164, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_165 v_conv_i_164 (0x1)@uint32;
(*   %conv1.i.166 = zext i8 %4 to i32 *)
cast v_conv1_i_166@uint32 v4@uint8;
(*   %mul.i.167 = mul nsw i32 %and.i.165, %conv1.i.166 *)
mul v_mul_i_167 v_and_i_165 v_conv1_i_166;
(*   %conv3.i.168 = trunc i32 %mul.i.167 to i8 *)
split tmp_v_mul_i_167 v_conv3_i_168 v_mul_i_167 8;
vpc v_conv3_i_168@uint8 v_conv3_i_168@uint32;
(*   %conv4.i.169 = zext i8 %5 to i32 *)
cast v_conv4_i_169@uint32 v5@uint8;
(*   %shr.i.170 = ashr i32 %conv4.i.169, 1 *)
(* You may need to modify here *)
split v_shr_i_170 tmp_to_be_used v_conv4_i_169 1;
(*   %conv5.i.171 = trunc i32 %shr.i.170 to i8 *)
split tmp_v_shr_i_170 v_conv5_i_171 v_shr_i_170 8;
vpc v_conv5_i_171@uint8 v_conv5_i_171@uint32;
(*   %conv6.i.172 = zext i8 %4 to i32 *)
cast v_conv6_i_172@uint32 v4@uint8;
(*   %shl.i.173 = shl i32 %conv6.i.172, 1 *)
shls discard_21 v_shl_i_173 v_conv6_i_172 1;
(*   %conv7.i.174 = trunc i32 %shl.i.173 to i8 *)
split tmp_v_shl_i_173 v_conv7_i_174 v_shl_i_173 8;
vpc v_conv7_i_174@uint8 v_conv7_i_174@uint32;
(*   %conv.i.1.175 = zext i8 %conv5.i.171 to i32 *)
cast v_conv_i_1_175@uint32 v_conv5_i_171@uint8;
(*   %and.i.1.176 = and i32 %conv.i.1.175, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_176 v_conv_i_1_175 (0x1)@uint32;
(*   %conv1.i.1.177 = zext i8 %conv7.i.174 to i32 *)
cast v_conv1_i_1_177@uint32 v_conv7_i_174@uint8;
(*   %mul.i.1.178 = mul nsw i32 %and.i.1.176, %conv1.i.1.177 *)
mul v_mul_i_1_178 v_and_i_1_176 v_conv1_i_1_177;
(*   %conv2.i.1.179 = zext i8 %conv3.i.168 to i32 *)
cast v_conv2_i_1_179@uint32 v_conv3_i_168@uint8;
(*   %xor.i.1.180 = xor i32 %conv2.i.1.179, %mul.i.1.178 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_180 v_conv2_i_1_179 v_mul_i_1_178;
(*   %conv3.i.1.181 = trunc i32 %xor.i.1.180 to i8 *)
split tmp_v_xor_i_1_180 v_conv3_i_1_181 v_xor_i_1_180 8;
vpc v_conv3_i_1_181@uint8 v_conv3_i_1_181@uint32;
(*   %conv4.i.1.182 = zext i8 %conv5.i.171 to i32 *)
cast v_conv4_i_1_182@uint32 v_conv5_i_171@uint8;
(*   %shr.i.1.183 = ashr i32 %conv4.i.1.182, 1 *)
(* You may need to modify here *)
split v_shr_i_1_183 tmp_to_be_used v_conv4_i_1_182 1;
(*   %conv5.i.1.184 = trunc i32 %shr.i.1.183 to i8 *)
split tmp_v_shr_i_1_183 v_conv5_i_1_184 v_shr_i_1_183 8;
vpc v_conv5_i_1_184@uint8 v_conv5_i_1_184@uint32;
(*   %conv6.i.1.185 = zext i8 %conv7.i.174 to i32 *)
cast v_conv6_i_1_185@uint32 v_conv7_i_174@uint8;
(*   %shl.i.1.186 = shl i32 %conv6.i.1.185, 1 *)
shls discard_22 v_shl_i_1_186 v_conv6_i_1_185 1;
(*   %conv7.i.1.187 = trunc i32 %shl.i.1.186 to i8 *)
split tmp_v_shl_i_1_186 v_conv7_i_1_187 v_shl_i_1_186 8;
vpc v_conv7_i_1_187@uint8 v_conv7_i_1_187@uint32;
(*   %conv.i.2.188 = zext i8 %conv5.i.1.184 to i32 *)
cast v_conv_i_2_188@uint32 v_conv5_i_1_184@uint8;
(*   %and.i.2.189 = and i32 %conv.i.2.188, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_189 v_conv_i_2_188 (0x1)@uint32;
(*   %conv1.i.2.190 = zext i8 %conv7.i.1.187 to i32 *)
cast v_conv1_i_2_190@uint32 v_conv7_i_1_187@uint8;
(*   %mul.i.2.191 = mul nsw i32 %and.i.2.189, %conv1.i.2.190 *)
mul v_mul_i_2_191 v_and_i_2_189 v_conv1_i_2_190;
(*   %conv2.i.2.192 = zext i8 %conv3.i.1.181 to i32 *)
cast v_conv2_i_2_192@uint32 v_conv3_i_1_181@uint8;
(*   %xor.i.2.193 = xor i32 %conv2.i.2.192, %mul.i.2.191 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_193 v_conv2_i_2_192 v_mul_i_2_191;
(*   %conv3.i.2.194 = trunc i32 %xor.i.2.193 to i8 *)
split tmp_v_xor_i_2_193 v_conv3_i_2_194 v_xor_i_2_193 8;
vpc v_conv3_i_2_194@uint8 v_conv3_i_2_194@uint32;
(*   %conv4.i.2.195 = zext i8 %conv5.i.1.184 to i32 *)
cast v_conv4_i_2_195@uint32 v_conv5_i_1_184@uint8;
(*   %shr.i.2.196 = ashr i32 %conv4.i.2.195, 1 *)
(* You may need to modify here *)
split v_shr_i_2_196 tmp_to_be_used v_conv4_i_2_195 1;
(*   %conv5.i.2.197 = trunc i32 %shr.i.2.196 to i8 *)
split tmp_v_shr_i_2_196 v_conv5_i_2_197 v_shr_i_2_196 8;
vpc v_conv5_i_2_197@uint8 v_conv5_i_2_197@uint32;
(*   %conv6.i.2.198 = zext i8 %conv7.i.1.187 to i32 *)
cast v_conv6_i_2_198@uint32 v_conv7_i_1_187@uint8;
(*   %shl.i.2.199 = shl i32 %conv6.i.2.198, 1 *)
shls discard_23 v_shl_i_2_199 v_conv6_i_2_198 1;
(*   %conv7.i.2.1100 = trunc i32 %shl.i.2.199 to i8 *)
split tmp_v_shl_i_2_199 v_conv7_i_2_1100 v_shl_i_2_199 8;
vpc v_conv7_i_2_1100@uint8 v_conv7_i_2_1100@uint32;
(*   %conv.i.3.1101 = zext i8 %conv5.i.2.197 to i32 *)
cast v_conv_i_3_1101@uint32 v_conv5_i_2_197@uint8;
(*   %and.i.3.1102 = and i32 %conv.i.3.1101, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_1102 v_conv_i_3_1101 (0x1)@uint32;
(*   %conv1.i.3.1103 = zext i8 %conv7.i.2.1100 to i32 *)
cast v_conv1_i_3_1103@uint32 v_conv7_i_2_1100@uint8;
(*   %mul.i.3.1104 = mul nsw i32 %and.i.3.1102, %conv1.i.3.1103 *)
mul v_mul_i_3_1104 v_and_i_3_1102 v_conv1_i_3_1103;
(*   %conv2.i.3.1105 = zext i8 %conv3.i.2.194 to i32 *)
cast v_conv2_i_3_1105@uint32 v_conv3_i_2_194@uint8;
(*   %xor.i.3.1106 = xor i32 %conv2.i.3.1105, %mul.i.3.1104 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_1106 v_conv2_i_3_1105 v_mul_i_3_1104;
(*   %conv3.i.3.1107 = trunc i32 %xor.i.3.1106 to i8 *)
split tmp_v_xor_i_3_1106 v_conv3_i_3_1107 v_xor_i_3_1106 8;
vpc v_conv3_i_3_1107@uint8 v_conv3_i_3_1107@uint32;
(*   %conv4.i.3.1108 = zext i8 %conv5.i.2.197 to i32 *)
cast v_conv4_i_3_1108@uint32 v_conv5_i_2_197@uint8;
(*   %shr.i.3.1109 = ashr i32 %conv4.i.3.1108, 1 *)
(* You may need to modify here *)
split v_shr_i_3_1109 tmp_to_be_used v_conv4_i_3_1108 1;
(*   %conv5.i.3.1110 = trunc i32 %shr.i.3.1109 to i8 *)
split tmp_v_shr_i_3_1109 v_conv5_i_3_1110 v_shr_i_3_1109 8;
vpc v_conv5_i_3_1110@uint8 v_conv5_i_3_1110@uint32;
(*   %conv6.i.3.1111 = zext i8 %conv7.i.2.1100 to i32 *)
cast v_conv6_i_3_1111@uint32 v_conv7_i_2_1100@uint8;
(*   %shl.i.3.1112 = shl i32 %conv6.i.3.1111, 1 *)
shls discard_24 v_shl_i_3_1112 v_conv6_i_3_1111 1;
(*   %conv7.i.3.1113 = trunc i32 %shl.i.3.1112 to i8 *)
split tmp_v_shl_i_3_1112 v_conv7_i_3_1113 v_shl_i_3_1112 8;
vpc v_conv7_i_3_1113@uint8 v_conv7_i_3_1113@uint32;
(*   %conv.i.4.1114 = zext i8 %conv5.i.3.1110 to i32 *)
cast v_conv_i_4_1114@uint32 v_conv5_i_3_1110@uint8;
(*   %and.i.4.1115 = and i32 %conv.i.4.1114, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_1115 v_conv_i_4_1114 (0x1)@uint32;
(*   %conv1.i.4.1116 = zext i8 %conv7.i.3.1113 to i32 *)
cast v_conv1_i_4_1116@uint32 v_conv7_i_3_1113@uint8;
(*   %mul.i.4.1117 = mul nsw i32 %and.i.4.1115, %conv1.i.4.1116 *)
mul v_mul_i_4_1117 v_and_i_4_1115 v_conv1_i_4_1116;
(*   %conv2.i.4.1118 = zext i8 %conv3.i.3.1107 to i32 *)
cast v_conv2_i_4_1118@uint32 v_conv3_i_3_1107@uint8;
(*   %xor.i.4.1119 = xor i32 %conv2.i.4.1118, %mul.i.4.1117 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_1119 v_conv2_i_4_1118 v_mul_i_4_1117;
(*   %conv3.i.4.1120 = trunc i32 %xor.i.4.1119 to i8 *)
split tmp_v_xor_i_4_1119 v_conv3_i_4_1120 v_xor_i_4_1119 8;
vpc v_conv3_i_4_1120@uint8 v_conv3_i_4_1120@uint32;
(*   %conv4.i.4.1121 = zext i8 %conv5.i.3.1110 to i32 *)
cast v_conv4_i_4_1121@uint32 v_conv5_i_3_1110@uint8;
(*   %shr.i.4.1122 = ashr i32 %conv4.i.4.1121, 1 *)
(* You may need to modify here *)
split v_shr_i_4_1122 tmp_to_be_used v_conv4_i_4_1121 1;
(*   %conv5.i.4.1123 = trunc i32 %shr.i.4.1122 to i8 *)
split tmp_v_shr_i_4_1122 v_conv5_i_4_1123 v_shr_i_4_1122 8;
vpc v_conv5_i_4_1123@uint8 v_conv5_i_4_1123@uint32;
(*   %conv6.i.4.1124 = zext i8 %conv7.i.3.1113 to i32 *)
cast v_conv6_i_4_1124@uint32 v_conv7_i_3_1113@uint8;
(*   %shl.i.4.1125 = shl i32 %conv6.i.4.1124, 1 *)
shls discard_25 v_shl_i_4_1125 v_conv6_i_4_1124 1;
(*   %conv7.i.4.1126 = trunc i32 %shl.i.4.1125 to i8 *)
split tmp_v_shl_i_4_1125 v_conv7_i_4_1126 v_shl_i_4_1125 8;
vpc v_conv7_i_4_1126@uint8 v_conv7_i_4_1126@uint32;
(*   %conv.i.5.1127 = zext i8 %conv5.i.4.1123 to i32 *)
cast v_conv_i_5_1127@uint32 v_conv5_i_4_1123@uint8;
(*   %and.i.5.1128 = and i32 %conv.i.5.1127, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_1128 v_conv_i_5_1127 (0x1)@uint32;
(*   %conv1.i.5.1129 = zext i8 %conv7.i.4.1126 to i32 *)
cast v_conv1_i_5_1129@uint32 v_conv7_i_4_1126@uint8;
(*   %mul.i.5.1130 = mul nsw i32 %and.i.5.1128, %conv1.i.5.1129 *)
mul v_mul_i_5_1130 v_and_i_5_1128 v_conv1_i_5_1129;
(*   %conv2.i.5.1131 = zext i8 %conv3.i.4.1120 to i32 *)
cast v_conv2_i_5_1131@uint32 v_conv3_i_4_1120@uint8;
(*   %xor.i.5.1132 = xor i32 %conv2.i.5.1131, %mul.i.5.1130 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_1132 v_conv2_i_5_1131 v_mul_i_5_1130;
(*   %conv3.i.5.1133 = trunc i32 %xor.i.5.1132 to i8 *)
split tmp_v_xor_i_5_1132 v_conv3_i_5_1133 v_xor_i_5_1132 8;
vpc v_conv3_i_5_1133@uint8 v_conv3_i_5_1133@uint32;
(*   %conv4.i.5.1134 = zext i8 %conv5.i.4.1123 to i32 *)
cast v_conv4_i_5_1134@uint32 v_conv5_i_4_1123@uint8;
(*   %shr.i.5.1135 = ashr i32 %conv4.i.5.1134, 1 *)
(* You may need to modify here *)
split v_shr_i_5_1135 tmp_to_be_used v_conv4_i_5_1134 1;
(*   %conv5.i.5.1136 = trunc i32 %shr.i.5.1135 to i8 *)
split tmp_v_shr_i_5_1135 v_conv5_i_5_1136 v_shr_i_5_1135 8;
vpc v_conv5_i_5_1136@uint8 v_conv5_i_5_1136@uint32;
(*   %conv6.i.5.1137 = zext i8 %conv7.i.4.1126 to i32 *)
cast v_conv6_i_5_1137@uint32 v_conv7_i_4_1126@uint8;
(*   %shl.i.5.1138 = shl i32 %conv6.i.5.1137, 1 *)
shls discard_26 v_shl_i_5_1138 v_conv6_i_5_1137 1;
(*   %conv7.i.5.1139 = trunc i32 %shl.i.5.1138 to i8 *)
split tmp_v_shl_i_5_1138 v_conv7_i_5_1139 v_shl_i_5_1138 8;
vpc v_conv7_i_5_1139@uint8 v_conv7_i_5_1139@uint32;
(*   %conv.i.6.1140 = zext i8 %conv5.i.5.1136 to i32 *)
cast v_conv_i_6_1140@uint32 v_conv5_i_5_1136@uint8;
(*   %and.i.6.1141 = and i32 %conv.i.6.1140, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_1141 v_conv_i_6_1140 (0x1)@uint32;
(*   %conv1.i.6.1142 = zext i8 %conv7.i.5.1139 to i32 *)
cast v_conv1_i_6_1142@uint32 v_conv7_i_5_1139@uint8;
(*   %mul.i.6.1143 = mul nsw i32 %and.i.6.1141, %conv1.i.6.1142 *)
mul v_mul_i_6_1143 v_and_i_6_1141 v_conv1_i_6_1142;
(*   %conv2.i.6.1144 = zext i8 %conv3.i.5.1133 to i32 *)
cast v_conv2_i_6_1144@uint32 v_conv3_i_5_1133@uint8;
(*   %xor.i.6.1145 = xor i32 %conv2.i.6.1144, %mul.i.6.1143 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_1145 v_conv2_i_6_1144 v_mul_i_6_1143;
(*   %conv3.i.6.1146 = trunc i32 %xor.i.6.1145 to i8 *)
split tmp_v_xor_i_6_1145 v_conv3_i_6_1146 v_xor_i_6_1145 8;
vpc v_conv3_i_6_1146@uint8 v_conv3_i_6_1146@uint32;
(*   %conv4.i.6.1147 = zext i8 %conv5.i.5.1136 to i32 *)
cast v_conv4_i_6_1147@uint32 v_conv5_i_5_1136@uint8;
(*   %shr.i.6.1148 = ashr i32 %conv4.i.6.1147, 1 *)
(* You may need to modify here *)
split v_shr_i_6_1148 tmp_to_be_used v_conv4_i_6_1147 1;
(*   %conv5.i.6.1149 = trunc i32 %shr.i.6.1148 to i8 *)
split tmp_v_shr_i_6_1148 v_conv5_i_6_1149 v_shr_i_6_1148 8;
vpc v_conv5_i_6_1149@uint8 v_conv5_i_6_1149@uint32;
(*   %conv6.i.6.1150 = zext i8 %conv7.i.5.1139 to i32 *)
cast v_conv6_i_6_1150@uint32 v_conv7_i_5_1139@uint8;
(*   %shl.i.6.1151 = shl i32 %conv6.i.6.1150, 1 *)
shls discard_27 v_shl_i_6_1151 v_conv6_i_6_1150 1;
(*   %conv7.i.6.1152 = trunc i32 %shl.i.6.1151 to i8 *)
split tmp_v_shl_i_6_1151 v_conv7_i_6_1152 v_shl_i_6_1151 8;
vpc v_conv7_i_6_1152@uint8 v_conv7_i_6_1152@uint32;
(*   %conv.i.7.1153 = zext i8 %conv5.i.6.1149 to i32 *)
cast v_conv_i_7_1153@uint32 v_conv5_i_6_1149@uint8;
(*   %and.i.7.1154 = and i32 %conv.i.7.1153, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_1154 v_conv_i_7_1153 (0x1)@uint32;
(*   %conv1.i.7.1155 = zext i8 %conv7.i.6.1152 to i32 *)
cast v_conv1_i_7_1155@uint32 v_conv7_i_6_1152@uint8;
(*   %mul.i.7.1156 = mul nsw i32 %and.i.7.1154, %conv1.i.7.1155 *)
mul v_mul_i_7_1156 v_and_i_7_1154 v_conv1_i_7_1155;
(*   %conv2.i.7.1157 = zext i8 %conv3.i.6.1146 to i32 *)
cast v_conv2_i_7_1157@uint32 v_conv3_i_6_1146@uint8;
(*   %xor.i.7.1158 = xor i32 %conv2.i.7.1157, %mul.i.7.1156 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_1158 v_conv2_i_7_1157 v_mul_i_7_1156;
(*   %conv3.i.7.1159 = trunc i32 %xor.i.7.1158 to i8 *)
split tmp_v_xor_i_7_1158 v_conv3_i_7_1159 v_xor_i_7_1158 8;
vpc v_conv3_i_7_1159@uint8 v_conv3_i_7_1159@uint32;
(*   %arrayidx7.1163 = getelementptr inbounds [9 x i8], [9 x i8]* %alpha, i64 0, i64 3 *)
(*   store i8 %conv3.i.7.1159, i8* %arrayidx7.1163, align 1 *)
mov alpha_3 v_conv3_i_7_1159;
(*   %arrayidx5.1.1 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %6 = load i8, i8* %arrayidx5.1.1, align 1 *)
mov v6 b_1;
(*   %conv.i.142.1 = zext i8 %6 to i32 *)
cast v_conv_i_142_1@uint32 v6@uint8;
(*   %and.i.143.1 = and i32 %conv.i.142.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_143_1 v_conv_i_142_1 (0x1)@uint32;
(*   %conv1.i.144.1 = zext i8 %4 to i32 *)
cast v_conv1_i_144_1@uint32 v4@uint8;
(*   %mul.i.145.1 = mul nsw i32 %and.i.143.1, %conv1.i.144.1 *)
mul v_mul_i_145_1 v_and_i_143_1 v_conv1_i_144_1;
(*   %conv3.i.146.1 = trunc i32 %mul.i.145.1 to i8 *)
split tmp_v_mul_i_145_1 v_conv3_i_146_1 v_mul_i_145_1 8;
vpc v_conv3_i_146_1@uint8 v_conv3_i_146_1@uint32;
(*   %conv4.i.147.1 = zext i8 %6 to i32 *)
cast v_conv4_i_147_1@uint32 v6@uint8;
(*   %shr.i.148.1 = ashr i32 %conv4.i.147.1, 1 *)
(* You may need to modify here *)
split v_shr_i_148_1 tmp_to_be_used v_conv4_i_147_1 1;
(*   %conv5.i.149.1 = trunc i32 %shr.i.148.1 to i8 *)
split tmp_v_shr_i_148_1 v_conv5_i_149_1 v_shr_i_148_1 8;
vpc v_conv5_i_149_1@uint8 v_conv5_i_149_1@uint32;
(*   %conv6.i.150.1 = zext i8 %4 to i32 *)
cast v_conv6_i_150_1@uint32 v4@uint8;
(*   %shl.i.151.1 = shl i32 %conv6.i.150.1, 1 *)
shls discard_28 v_shl_i_151_1 v_conv6_i_150_1 1;
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
shls discard_29 v_shl_i_1_1_1 v_conv6_i_1_1_1 1;
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
shls discard_30 v_shl_i_2_1_1 v_conv6_i_2_1_1 1;
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
shls discard_31 v_shl_i_3_1_1 v_conv6_i_3_1_1 1;
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
shls discard_32 v_shl_i_4_1_1 v_conv6_i_4_1_1 1;
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
shls discard_33 v_shl_i_5_1_1 v_conv6_i_5_1_1 1;
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
shls discard_34 v_shl_i_6_1_1 v_conv6_i_6_1_1 1;
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
(*   %arrayidx7.1.1 = getelementptr inbounds [9 x i8], [9 x i8]* %alpha, i64 0, i64 4 *)
(*   store i8 %conv3.i.7.1.1, i8* %arrayidx7.1.1, align 1 *)
mov alpha_4 v_conv3_i_7_1_1;
(*   %arrayidx5.2.1 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %7 = load i8, i8* %arrayidx5.2.1, align 1 *)
mov v7 b_2;
(*   %conv.i.253.1 = zext i8 %7 to i32 *)
cast v_conv_i_253_1@uint32 v7@uint8;
(*   %and.i.254.1 = and i32 %conv.i.253.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_254_1 v_conv_i_253_1 (0x1)@uint32;
(*   %conv1.i.255.1 = zext i8 %4 to i32 *)
cast v_conv1_i_255_1@uint32 v4@uint8;
(*   %mul.i.256.1 = mul nsw i32 %and.i.254.1, %conv1.i.255.1 *)
mul v_mul_i_256_1 v_and_i_254_1 v_conv1_i_255_1;
(*   %conv3.i.257.1 = trunc i32 %mul.i.256.1 to i8 *)
split tmp_v_mul_i_256_1 v_conv3_i_257_1 v_mul_i_256_1 8;
vpc v_conv3_i_257_1@uint8 v_conv3_i_257_1@uint32;
(*   %conv4.i.258.1 = zext i8 %7 to i32 *)
cast v_conv4_i_258_1@uint32 v7@uint8;
(*   %shr.i.259.1 = ashr i32 %conv4.i.258.1, 1 *)
(* You may need to modify here *)
split v_shr_i_259_1 tmp_to_be_used v_conv4_i_258_1 1;
(*   %conv5.i.260.1 = trunc i32 %shr.i.259.1 to i8 *)
split tmp_v_shr_i_259_1 v_conv5_i_260_1 v_shr_i_259_1 8;
vpc v_conv5_i_260_1@uint8 v_conv5_i_260_1@uint32;
(*   %conv6.i.261.1 = zext i8 %4 to i32 *)
cast v_conv6_i_261_1@uint32 v4@uint8;
(*   %shl.i.262.1 = shl i32 %conv6.i.261.1, 1 *)
shls discard_35 v_shl_i_262_1 v_conv6_i_261_1 1;
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
shls discard_36 v_shl_i_1_2_1 v_conv6_i_1_2_1 1;
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
shls discard_37 v_shl_i_2_2_1 v_conv6_i_2_2_1 1;
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
shls discard_38 v_shl_i_3_2_1 v_conv6_i_3_2_1 1;
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
shls discard_39 v_shl_i_4_2_1 v_conv6_i_4_2_1 1;
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
shls discard_40 v_shl_i_5_2_1 v_conv6_i_5_2_1 1;
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
shls discard_41 v_shl_i_6_2_1 v_conv6_i_6_2_1 1;
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
(*   %arrayidx7.2.1 = getelementptr inbounds [9 x i8], [9 x i8]* %alpha, i64 0, i64 5 *)
(*   store i8 %conv3.i.7.2.1, i8* %arrayidx7.2.1, align 1 *)
mov alpha_5 v_conv3_i_7_2_1;
(*   %arrayidx.2 = getelementptr inbounds i8, i8* %a, i64 2 *)
(*   %8 = load i8, i8* %arrayidx.2, align 1 *)
mov v8 a_2;
(*   %9 = load i8, i8* %b, align 1 *)
mov v9 b_0;
(*   %conv.i.2166 = zext i8 %9 to i32 *)
cast v_conv_i_2166@uint32 v9@uint8;
(*   %and.i.2167 = and i32 %conv.i.2166, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2167 v_conv_i_2166 (0x1)@uint32;
(*   %conv1.i.2168 = zext i8 %8 to i32 *)
cast v_conv1_i_2168@uint32 v8@uint8;
(*   %mul.i.2169 = mul nsw i32 %and.i.2167, %conv1.i.2168 *)
mul v_mul_i_2169 v_and_i_2167 v_conv1_i_2168;
(*   %conv3.i.2170 = trunc i32 %mul.i.2169 to i8 *)
split tmp_v_mul_i_2169 v_conv3_i_2170 v_mul_i_2169 8;
vpc v_conv3_i_2170@uint8 v_conv3_i_2170@uint32;
(*   %conv4.i.2171 = zext i8 %9 to i32 *)
cast v_conv4_i_2171@uint32 v9@uint8;
(*   %shr.i.2172 = ashr i32 %conv4.i.2171, 1 *)
(* You may need to modify here *)
split v_shr_i_2172 tmp_to_be_used v_conv4_i_2171 1;
(*   %conv5.i.2173 = trunc i32 %shr.i.2172 to i8 *)
split tmp_v_shr_i_2172 v_conv5_i_2173 v_shr_i_2172 8;
vpc v_conv5_i_2173@uint8 v_conv5_i_2173@uint32;
(*   %conv6.i.2174 = zext i8 %8 to i32 *)
cast v_conv6_i_2174@uint32 v8@uint8;
(*   %shl.i.2175 = shl i32 %conv6.i.2174, 1 *)
shls discard_42 v_shl_i_2175 v_conv6_i_2174 1;
(*   %conv7.i.2176 = trunc i32 %shl.i.2175 to i8 *)
split tmp_v_shl_i_2175 v_conv7_i_2176 v_shl_i_2175 8;
vpc v_conv7_i_2176@uint8 v_conv7_i_2176@uint32;
(*   %conv.i.1.2177 = zext i8 %conv5.i.2173 to i32 *)
cast v_conv_i_1_2177@uint32 v_conv5_i_2173@uint8;
(*   %and.i.1.2178 = and i32 %conv.i.1.2177, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_2178 v_conv_i_1_2177 (0x1)@uint32;
(*   %conv1.i.1.2179 = zext i8 %conv7.i.2176 to i32 *)
cast v_conv1_i_1_2179@uint32 v_conv7_i_2176@uint8;
(*   %mul.i.1.2180 = mul nsw i32 %and.i.1.2178, %conv1.i.1.2179 *)
mul v_mul_i_1_2180 v_and_i_1_2178 v_conv1_i_1_2179;
(*   %conv2.i.1.2181 = zext i8 %conv3.i.2170 to i32 *)
cast v_conv2_i_1_2181@uint32 v_conv3_i_2170@uint8;
(*   %xor.i.1.2182 = xor i32 %conv2.i.1.2181, %mul.i.1.2180 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_2182 v_conv2_i_1_2181 v_mul_i_1_2180;
(*   %conv3.i.1.2183 = trunc i32 %xor.i.1.2182 to i8 *)
split tmp_v_xor_i_1_2182 v_conv3_i_1_2183 v_xor_i_1_2182 8;
vpc v_conv3_i_1_2183@uint8 v_conv3_i_1_2183@uint32;
(*   %conv4.i.1.2184 = zext i8 %conv5.i.2173 to i32 *)
cast v_conv4_i_1_2184@uint32 v_conv5_i_2173@uint8;
(*   %shr.i.1.2185 = ashr i32 %conv4.i.1.2184, 1 *)
(* You may need to modify here *)
split v_shr_i_1_2185 tmp_to_be_used v_conv4_i_1_2184 1;
(*   %conv5.i.1.2186 = trunc i32 %shr.i.1.2185 to i8 *)
split tmp_v_shr_i_1_2185 v_conv5_i_1_2186 v_shr_i_1_2185 8;
vpc v_conv5_i_1_2186@uint8 v_conv5_i_1_2186@uint32;
(*   %conv6.i.1.2187 = zext i8 %conv7.i.2176 to i32 *)
cast v_conv6_i_1_2187@uint32 v_conv7_i_2176@uint8;
(*   %shl.i.1.2188 = shl i32 %conv6.i.1.2187, 1 *)
shls discard_43 v_shl_i_1_2188 v_conv6_i_1_2187 1;
(*   %conv7.i.1.2189 = trunc i32 %shl.i.1.2188 to i8 *)
split tmp_v_shl_i_1_2188 v_conv7_i_1_2189 v_shl_i_1_2188 8;
vpc v_conv7_i_1_2189@uint8 v_conv7_i_1_2189@uint32;
(*   %conv.i.2.2190 = zext i8 %conv5.i.1.2186 to i32 *)
cast v_conv_i_2_2190@uint32 v_conv5_i_1_2186@uint8;
(*   %and.i.2.2191 = and i32 %conv.i.2.2190, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_2191 v_conv_i_2_2190 (0x1)@uint32;
(*   %conv1.i.2.2192 = zext i8 %conv7.i.1.2189 to i32 *)
cast v_conv1_i_2_2192@uint32 v_conv7_i_1_2189@uint8;
(*   %mul.i.2.2193 = mul nsw i32 %and.i.2.2191, %conv1.i.2.2192 *)
mul v_mul_i_2_2193 v_and_i_2_2191 v_conv1_i_2_2192;
(*   %conv2.i.2.2194 = zext i8 %conv3.i.1.2183 to i32 *)
cast v_conv2_i_2_2194@uint32 v_conv3_i_1_2183@uint8;
(*   %xor.i.2.2195 = xor i32 %conv2.i.2.2194, %mul.i.2.2193 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_2195 v_conv2_i_2_2194 v_mul_i_2_2193;
(*   %conv3.i.2.2196 = trunc i32 %xor.i.2.2195 to i8 *)
split tmp_v_xor_i_2_2195 v_conv3_i_2_2196 v_xor_i_2_2195 8;
vpc v_conv3_i_2_2196@uint8 v_conv3_i_2_2196@uint32;
(*   %conv4.i.2.2197 = zext i8 %conv5.i.1.2186 to i32 *)
cast v_conv4_i_2_2197@uint32 v_conv5_i_1_2186@uint8;
(*   %shr.i.2.2198 = ashr i32 %conv4.i.2.2197, 1 *)
(* You may need to modify here *)
split v_shr_i_2_2198 tmp_to_be_used v_conv4_i_2_2197 1;
(*   %conv5.i.2.2199 = trunc i32 %shr.i.2.2198 to i8 *)
split tmp_v_shr_i_2_2198 v_conv5_i_2_2199 v_shr_i_2_2198 8;
vpc v_conv5_i_2_2199@uint8 v_conv5_i_2_2199@uint32;
(*   %conv6.i.2.2200 = zext i8 %conv7.i.1.2189 to i32 *)
cast v_conv6_i_2_2200@uint32 v_conv7_i_1_2189@uint8;
(*   %shl.i.2.2201 = shl i32 %conv6.i.2.2200, 1 *)
shls discard_44 v_shl_i_2_2201 v_conv6_i_2_2200 1;
(*   %conv7.i.2.2202 = trunc i32 %shl.i.2.2201 to i8 *)
split tmp_v_shl_i_2_2201 v_conv7_i_2_2202 v_shl_i_2_2201 8;
vpc v_conv7_i_2_2202@uint8 v_conv7_i_2_2202@uint32;
(*   %conv.i.3.2203 = zext i8 %conv5.i.2.2199 to i32 *)
cast v_conv_i_3_2203@uint32 v_conv5_i_2_2199@uint8;
(*   %and.i.3.2204 = and i32 %conv.i.3.2203, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_2204 v_conv_i_3_2203 (0x1)@uint32;
(*   %conv1.i.3.2205 = zext i8 %conv7.i.2.2202 to i32 *)
cast v_conv1_i_3_2205@uint32 v_conv7_i_2_2202@uint8;
(*   %mul.i.3.2206 = mul nsw i32 %and.i.3.2204, %conv1.i.3.2205 *)
mul v_mul_i_3_2206 v_and_i_3_2204 v_conv1_i_3_2205;
(*   %conv2.i.3.2207 = zext i8 %conv3.i.2.2196 to i32 *)
cast v_conv2_i_3_2207@uint32 v_conv3_i_2_2196@uint8;
(*   %xor.i.3.2208 = xor i32 %conv2.i.3.2207, %mul.i.3.2206 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_2208 v_conv2_i_3_2207 v_mul_i_3_2206;
(*   %conv3.i.3.2209 = trunc i32 %xor.i.3.2208 to i8 *)
split tmp_v_xor_i_3_2208 v_conv3_i_3_2209 v_xor_i_3_2208 8;
vpc v_conv3_i_3_2209@uint8 v_conv3_i_3_2209@uint32;
(*   %conv4.i.3.2210 = zext i8 %conv5.i.2.2199 to i32 *)
cast v_conv4_i_3_2210@uint32 v_conv5_i_2_2199@uint8;
(*   %shr.i.3.2211 = ashr i32 %conv4.i.3.2210, 1 *)
(* You may need to modify here *)
split v_shr_i_3_2211 tmp_to_be_used v_conv4_i_3_2210 1;
(*   %conv5.i.3.2212 = trunc i32 %shr.i.3.2211 to i8 *)
split tmp_v_shr_i_3_2211 v_conv5_i_3_2212 v_shr_i_3_2211 8;
vpc v_conv5_i_3_2212@uint8 v_conv5_i_3_2212@uint32;
(*   %conv6.i.3.2213 = zext i8 %conv7.i.2.2202 to i32 *)
cast v_conv6_i_3_2213@uint32 v_conv7_i_2_2202@uint8;
(*   %shl.i.3.2214 = shl i32 %conv6.i.3.2213, 1 *)
shls discard_45 v_shl_i_3_2214 v_conv6_i_3_2213 1;
(*   %conv7.i.3.2215 = trunc i32 %shl.i.3.2214 to i8 *)
split tmp_v_shl_i_3_2214 v_conv7_i_3_2215 v_shl_i_3_2214 8;
vpc v_conv7_i_3_2215@uint8 v_conv7_i_3_2215@uint32;
(*   %conv.i.4.2216 = zext i8 %conv5.i.3.2212 to i32 *)
cast v_conv_i_4_2216@uint32 v_conv5_i_3_2212@uint8;
(*   %and.i.4.2217 = and i32 %conv.i.4.2216, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_2217 v_conv_i_4_2216 (0x1)@uint32;
(*   %conv1.i.4.2218 = zext i8 %conv7.i.3.2215 to i32 *)
cast v_conv1_i_4_2218@uint32 v_conv7_i_3_2215@uint8;
(*   %mul.i.4.2219 = mul nsw i32 %and.i.4.2217, %conv1.i.4.2218 *)
mul v_mul_i_4_2219 v_and_i_4_2217 v_conv1_i_4_2218;
(*   %conv2.i.4.2220 = zext i8 %conv3.i.3.2209 to i32 *)
cast v_conv2_i_4_2220@uint32 v_conv3_i_3_2209@uint8;
(*   %xor.i.4.2221 = xor i32 %conv2.i.4.2220, %mul.i.4.2219 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_2221 v_conv2_i_4_2220 v_mul_i_4_2219;
(*   %conv3.i.4.2222 = trunc i32 %xor.i.4.2221 to i8 *)
split tmp_v_xor_i_4_2221 v_conv3_i_4_2222 v_xor_i_4_2221 8;
vpc v_conv3_i_4_2222@uint8 v_conv3_i_4_2222@uint32;
(*   %conv4.i.4.2223 = zext i8 %conv5.i.3.2212 to i32 *)
cast v_conv4_i_4_2223@uint32 v_conv5_i_3_2212@uint8;
(*   %shr.i.4.2224 = ashr i32 %conv4.i.4.2223, 1 *)
(* You may need to modify here *)
split v_shr_i_4_2224 tmp_to_be_used v_conv4_i_4_2223 1;
(*   %conv5.i.4.2225 = trunc i32 %shr.i.4.2224 to i8 *)
split tmp_v_shr_i_4_2224 v_conv5_i_4_2225 v_shr_i_4_2224 8;
vpc v_conv5_i_4_2225@uint8 v_conv5_i_4_2225@uint32;
(*   %conv6.i.4.2226 = zext i8 %conv7.i.3.2215 to i32 *)
cast v_conv6_i_4_2226@uint32 v_conv7_i_3_2215@uint8;
(*   %shl.i.4.2227 = shl i32 %conv6.i.4.2226, 1 *)
shls discard_46 v_shl_i_4_2227 v_conv6_i_4_2226 1;
(*   %conv7.i.4.2228 = trunc i32 %shl.i.4.2227 to i8 *)
split tmp_v_shl_i_4_2227 v_conv7_i_4_2228 v_shl_i_4_2227 8;
vpc v_conv7_i_4_2228@uint8 v_conv7_i_4_2228@uint32;
(*   %conv.i.5.2229 = zext i8 %conv5.i.4.2225 to i32 *)
cast v_conv_i_5_2229@uint32 v_conv5_i_4_2225@uint8;
(*   %and.i.5.2230 = and i32 %conv.i.5.2229, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_2230 v_conv_i_5_2229 (0x1)@uint32;
(*   %conv1.i.5.2231 = zext i8 %conv7.i.4.2228 to i32 *)
cast v_conv1_i_5_2231@uint32 v_conv7_i_4_2228@uint8;
(*   %mul.i.5.2232 = mul nsw i32 %and.i.5.2230, %conv1.i.5.2231 *)
mul v_mul_i_5_2232 v_and_i_5_2230 v_conv1_i_5_2231;
(*   %conv2.i.5.2233 = zext i8 %conv3.i.4.2222 to i32 *)
cast v_conv2_i_5_2233@uint32 v_conv3_i_4_2222@uint8;
(*   %xor.i.5.2234 = xor i32 %conv2.i.5.2233, %mul.i.5.2232 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_2234 v_conv2_i_5_2233 v_mul_i_5_2232;
(*   %conv3.i.5.2235 = trunc i32 %xor.i.5.2234 to i8 *)
split tmp_v_xor_i_5_2234 v_conv3_i_5_2235 v_xor_i_5_2234 8;
vpc v_conv3_i_5_2235@uint8 v_conv3_i_5_2235@uint32;
(*   %conv4.i.5.2236 = zext i8 %conv5.i.4.2225 to i32 *)
cast v_conv4_i_5_2236@uint32 v_conv5_i_4_2225@uint8;
(*   %shr.i.5.2237 = ashr i32 %conv4.i.5.2236, 1 *)
(* You may need to modify here *)
split v_shr_i_5_2237 tmp_to_be_used v_conv4_i_5_2236 1;
(*   %conv5.i.5.2238 = trunc i32 %shr.i.5.2237 to i8 *)
split tmp_v_shr_i_5_2237 v_conv5_i_5_2238 v_shr_i_5_2237 8;
vpc v_conv5_i_5_2238@uint8 v_conv5_i_5_2238@uint32;
(*   %conv6.i.5.2239 = zext i8 %conv7.i.4.2228 to i32 *)
cast v_conv6_i_5_2239@uint32 v_conv7_i_4_2228@uint8;
(*   %shl.i.5.2240 = shl i32 %conv6.i.5.2239, 1 *)
shls discard_47 v_shl_i_5_2240 v_conv6_i_5_2239 1;
(*   %conv7.i.5.2241 = trunc i32 %shl.i.5.2240 to i8 *)
split tmp_v_shl_i_5_2240 v_conv7_i_5_2241 v_shl_i_5_2240 8;
vpc v_conv7_i_5_2241@uint8 v_conv7_i_5_2241@uint32;
(*   %conv.i.6.2242 = zext i8 %conv5.i.5.2238 to i32 *)
cast v_conv_i_6_2242@uint32 v_conv5_i_5_2238@uint8;
(*   %and.i.6.2243 = and i32 %conv.i.6.2242, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_2243 v_conv_i_6_2242 (0x1)@uint32;
(*   %conv1.i.6.2244 = zext i8 %conv7.i.5.2241 to i32 *)
cast v_conv1_i_6_2244@uint32 v_conv7_i_5_2241@uint8;
(*   %mul.i.6.2245 = mul nsw i32 %and.i.6.2243, %conv1.i.6.2244 *)
mul v_mul_i_6_2245 v_and_i_6_2243 v_conv1_i_6_2244;
(*   %conv2.i.6.2246 = zext i8 %conv3.i.5.2235 to i32 *)
cast v_conv2_i_6_2246@uint32 v_conv3_i_5_2235@uint8;
(*   %xor.i.6.2247 = xor i32 %conv2.i.6.2246, %mul.i.6.2245 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_2247 v_conv2_i_6_2246 v_mul_i_6_2245;
(*   %conv3.i.6.2248 = trunc i32 %xor.i.6.2247 to i8 *)
split tmp_v_xor_i_6_2247 v_conv3_i_6_2248 v_xor_i_6_2247 8;
vpc v_conv3_i_6_2248@uint8 v_conv3_i_6_2248@uint32;
(*   %conv4.i.6.2249 = zext i8 %conv5.i.5.2238 to i32 *)
cast v_conv4_i_6_2249@uint32 v_conv5_i_5_2238@uint8;
(*   %shr.i.6.2250 = ashr i32 %conv4.i.6.2249, 1 *)
(* You may need to modify here *)
split v_shr_i_6_2250 tmp_to_be_used v_conv4_i_6_2249 1;
(*   %conv5.i.6.2251 = trunc i32 %shr.i.6.2250 to i8 *)
split tmp_v_shr_i_6_2250 v_conv5_i_6_2251 v_shr_i_6_2250 8;
vpc v_conv5_i_6_2251@uint8 v_conv5_i_6_2251@uint32;
(*   %conv6.i.6.2252 = zext i8 %conv7.i.5.2241 to i32 *)
cast v_conv6_i_6_2252@uint32 v_conv7_i_5_2241@uint8;
(*   %shl.i.6.2253 = shl i32 %conv6.i.6.2252, 1 *)
shls discard_48 v_shl_i_6_2253 v_conv6_i_6_2252 1;
(*   %conv7.i.6.2254 = trunc i32 %shl.i.6.2253 to i8 *)
split tmp_v_shl_i_6_2253 v_conv7_i_6_2254 v_shl_i_6_2253 8;
vpc v_conv7_i_6_2254@uint8 v_conv7_i_6_2254@uint32;
(*   %conv.i.7.2255 = zext i8 %conv5.i.6.2251 to i32 *)
cast v_conv_i_7_2255@uint32 v_conv5_i_6_2251@uint8;
(*   %and.i.7.2256 = and i32 %conv.i.7.2255, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_2256 v_conv_i_7_2255 (0x1)@uint32;
(*   %conv1.i.7.2257 = zext i8 %conv7.i.6.2254 to i32 *)
cast v_conv1_i_7_2257@uint32 v_conv7_i_6_2254@uint8;
(*   %mul.i.7.2258 = mul nsw i32 %and.i.7.2256, %conv1.i.7.2257 *)
mul v_mul_i_7_2258 v_and_i_7_2256 v_conv1_i_7_2257;
(*   %conv2.i.7.2259 = zext i8 %conv3.i.6.2248 to i32 *)
cast v_conv2_i_7_2259@uint32 v_conv3_i_6_2248@uint8;
(*   %xor.i.7.2260 = xor i32 %conv2.i.7.2259, %mul.i.7.2258 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_2260 v_conv2_i_7_2259 v_mul_i_7_2258;
(*   %conv3.i.7.2261 = trunc i32 %xor.i.7.2260 to i8 *)
split tmp_v_xor_i_7_2260 v_conv3_i_7_2261 v_xor_i_7_2260 8;
vpc v_conv3_i_7_2261@uint8 v_conv3_i_7_2261@uint32;
(*   %arrayidx7.2265 = getelementptr inbounds [9 x i8], [9 x i8]* %alpha, i64 0, i64 6 *)
(*   store i8 %conv3.i.7.2261, i8* %arrayidx7.2265, align 1 *)
mov alpha_6 v_conv3_i_7_2261;
(*   %arrayidx5.1.2 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %10 = load i8, i8* %arrayidx5.1.2, align 1 *)
mov v10 b_1;
(*   %conv.i.142.2 = zext i8 %10 to i32 *)
cast v_conv_i_142_2@uint32 v10@uint8;
(*   %and.i.143.2 = and i32 %conv.i.142.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_143_2 v_conv_i_142_2 (0x1)@uint32;
(*   %conv1.i.144.2 = zext i8 %8 to i32 *)
cast v_conv1_i_144_2@uint32 v8@uint8;
(*   %mul.i.145.2 = mul nsw i32 %and.i.143.2, %conv1.i.144.2 *)
mul v_mul_i_145_2 v_and_i_143_2 v_conv1_i_144_2;
(*   %conv3.i.146.2 = trunc i32 %mul.i.145.2 to i8 *)
split tmp_v_mul_i_145_2 v_conv3_i_146_2 v_mul_i_145_2 8;
vpc v_conv3_i_146_2@uint8 v_conv3_i_146_2@uint32;
(*   %conv4.i.147.2 = zext i8 %10 to i32 *)
cast v_conv4_i_147_2@uint32 v10@uint8;
(*   %shr.i.148.2 = ashr i32 %conv4.i.147.2, 1 *)
(* You may need to modify here *)
split v_shr_i_148_2 tmp_to_be_used v_conv4_i_147_2 1;
(*   %conv5.i.149.2 = trunc i32 %shr.i.148.2 to i8 *)
split tmp_v_shr_i_148_2 v_conv5_i_149_2 v_shr_i_148_2 8;
vpc v_conv5_i_149_2@uint8 v_conv5_i_149_2@uint32;
(*   %conv6.i.150.2 = zext i8 %8 to i32 *)
cast v_conv6_i_150_2@uint32 v8@uint8;
(*   %shl.i.151.2 = shl i32 %conv6.i.150.2, 1 *)
shls discard_49 v_shl_i_151_2 v_conv6_i_150_2 1;
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
shls discard_50 v_shl_i_1_1_2 v_conv6_i_1_1_2 1;
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
shls discard_51 v_shl_i_2_1_2 v_conv6_i_2_1_2 1;
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
shls discard_52 v_shl_i_3_1_2 v_conv6_i_3_1_2 1;
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
shls discard_53 v_shl_i_4_1_2 v_conv6_i_4_1_2 1;
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
shls discard_54 v_shl_i_5_1_2 v_conv6_i_5_1_2 1;
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
shls discard_55 v_shl_i_6_1_2 v_conv6_i_6_1_2 1;
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
(*   %arrayidx7.1.2 = getelementptr inbounds [9 x i8], [9 x i8]* %alpha, i64 0, i64 7 *)
(*   store i8 %conv3.i.7.1.2, i8* %arrayidx7.1.2, align 1 *)
mov alpha_7 v_conv3_i_7_1_2;
(*   %arrayidx5.2.2 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %11 = load i8, i8* %arrayidx5.2.2, align 1 *)
mov v11 b_2;
(*   %conv.i.253.2 = zext i8 %11 to i32 *)
cast v_conv_i_253_2@uint32 v11@uint8;
(*   %and.i.254.2 = and i32 %conv.i.253.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_254_2 v_conv_i_253_2 (0x1)@uint32;
(*   %conv1.i.255.2 = zext i8 %8 to i32 *)
cast v_conv1_i_255_2@uint32 v8@uint8;
(*   %mul.i.256.2 = mul nsw i32 %and.i.254.2, %conv1.i.255.2 *)
mul v_mul_i_256_2 v_and_i_254_2 v_conv1_i_255_2;
(*   %conv3.i.257.2 = trunc i32 %mul.i.256.2 to i8 *)
split tmp_v_mul_i_256_2 v_conv3_i_257_2 v_mul_i_256_2 8;
vpc v_conv3_i_257_2@uint8 v_conv3_i_257_2@uint32;
(*   %conv4.i.258.2 = zext i8 %11 to i32 *)
cast v_conv4_i_258_2@uint32 v11@uint8;
(*   %shr.i.259.2 = ashr i32 %conv4.i.258.2, 1 *)
(* You may need to modify here *)
split v_shr_i_259_2 tmp_to_be_used v_conv4_i_258_2 1;
(*   %conv5.i.260.2 = trunc i32 %shr.i.259.2 to i8 *)
split tmp_v_shr_i_259_2 v_conv5_i_260_2 v_shr_i_259_2 8;
vpc v_conv5_i_260_2@uint8 v_conv5_i_260_2@uint32;
(*   %conv6.i.261.2 = zext i8 %8 to i32 *)
cast v_conv6_i_261_2@uint32 v8@uint8;
(*   %shl.i.262.2 = shl i32 %conv6.i.261.2, 1 *)
shls discard_56 v_shl_i_262_2 v_conv6_i_261_2 1;
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
shls discard_57 v_shl_i_1_2_2 v_conv6_i_1_2_2 1;
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
shls discard_58 v_shl_i_2_2_2 v_conv6_i_2_2_2 1;
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
shls discard_59 v_shl_i_3_2_2 v_conv6_i_3_2_2 1;
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
shls discard_60 v_shl_i_4_2_2 v_conv6_i_4_2_2 1;
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
shls discard_61 v_shl_i_5_2_2 v_conv6_i_5_2_2 1;
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
shls discard_62 v_shl_i_6_2_2 v_conv6_i_6_2_2 1;
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
(*   %arrayidx7.2.2 = getelementptr inbounds [9 x i8], [9 x i8]* %alpha, i64 0, i64 8 *)
(*   store i8 %conv3.i.7.2.2, i8* %arrayidx7.2.2, align 1 *)
mov alpha_8 v_conv3_i_7_2_2;
(*   %scevgep38 = getelementptr i8, i8* %r, i64 1 *)
(*   %arrayidx18 = getelementptr inbounds [9 x i8], [9 x i8]* %alpha, i64 0, i64 0 *)
(*   %12 = load i8, i8* %arrayidx18, align 1 *)
mov v12 alpha_0;
(*   store i8 %12, i8* %c, align 1 *)
mov c_0 v12;
(*   %arrayidx29 = getelementptr inbounds i8, i8* %r, i64 2 *)
(*   %13 = load i8, i8* %arrayidx29, align 1 *)
mov v13 r_2;
(*   %conv = zext i8 %13 to i32 *)
cast v_conv@uint32 v13@uint8;
(*   %arrayidx33 = getelementptr inbounds [9 x i8], [9 x i8]* %alpha, i64 0, i64 2 *)
(*   %14 = load i8, i8* %arrayidx33, align 1 *)
mov v14 alpha_2;
(*   %conv34 = zext i8 %14 to i32 *)
cast v_conv34@uint32 v14@uint8;
(*   %xor = xor i32 %conv, %conv34 *)
(* You may need to modify here *)
xor uint32 v_xor v_conv v_conv34;
(*   %arrayidx38 = getelementptr inbounds [9 x i8], [9 x i8]* %alpha, i64 0, i64 6 *)
(*   %15 = load i8, i8* %arrayidx38, align 1 *)
mov v15 alpha_6;
(*   %conv39 = zext i8 %15 to i32 *)
cast v_conv39@uint32 v15@uint8;
(*   %xor40 = xor i32 %xor, %conv39 *)
(* You may need to modify here *)
xor uint32 v_xor40 v_xor v_conv39;
(*   %arrayidx42 = getelementptr inbounds i8, i8* %rr, i64 1 *)
(*   %16 = load i8, i8* %arrayidx42, align 1 *)
mov v16 rr_1;
(*   %conv43 = zext i8 %16 to i32 *)
cast v_conv43@uint32 v16@uint8;
(*   %xor44 = xor i32 %xor40, %conv43 *)
(* You may need to modify here *)
xor uint32 v_xor44 v_xor40 v_conv43;
(*   %arrayidx49 = getelementptr inbounds [9 x i8], [9 x i8]* %alpha, i64 0, i64 1 *)
(*   %17 = load i8, i8* %arrayidx49, align 1 *)
mov v17 alpha_1;
(*   %conv50 = zext i8 %17 to i32 *)
cast v_conv50@uint32 v17@uint8;
(*   %xor51 = xor i32 %xor44, %conv50 *)
(* You may need to modify here *)
xor uint32 v_xor51 v_xor44 v_conv50;
(*   %arrayidx56 = getelementptr inbounds [9 x i8], [9 x i8]* %alpha, i64 0, i64 3 *)
(*   %18 = load i8, i8* %arrayidx56, align 1 *)
mov v18 alpha_3;
(*   %conv57 = zext i8 %18 to i32 *)
cast v_conv57@uint32 v18@uint8;
(*   %xor58 = xor i32 %xor51, %conv57 *)
(* You may need to modify here *)
xor uint32 v_xor58 v_xor51 v_conv57;
(*   %conv59 = trunc i32 %xor58 to i8 *)
split tmp_v_xor58 v_conv59 v_xor58 8;
vpc v_conv59@uint8 v_conv59@uint32;
(*   %arrayidx63 = getelementptr inbounds [9 x i8], [9 x i8]* %t, i64 0, i64 2 *)
(*   store i8 %conv59, i8* %arrayidx63, align 1 *)
mov t_2 v_conv59;
(*   %arrayidx67 = getelementptr inbounds [9 x i8], [9 x i8]* %t, i64 0, i64 2 *)
(*   %19 = load i8, i8* %arrayidx67, align 1 *)
mov v19 t_2;
(*   %conv68 = zext i8 %19 to i32 *)
cast v_conv68@uint32 v19@uint8;
(*   %20 = load i8, i8* %c, align 1 *)
mov v20 c_0;
(*   %conv71 = zext i8 %20 to i32 *)
cast v_conv71@uint32 v20@uint8;
(*   %xor72 = xor i32 %conv71, %conv68 *)
(* You may need to modify here *)
xor uint32 v_xor72 v_conv71 v_conv68;
(*   %conv73 = trunc i32 %xor72 to i8 *)
split tmp_v_xor72 v_conv73 v_xor72 8;
vpc v_conv73@uint8 v_conv73@uint32;
(*   store i8 %conv73, i8* %c, align 1 *)
mov c_0 v_conv73;
(*   %arrayidx18.1 = getelementptr inbounds [9 x i8], [9 x i8]* %alpha, i64 0, i64 4 *)
(*   %21 = load i8, i8* %arrayidx18.1, align 1 *)
mov v21 alpha_4;
(*   %arrayidx20.1 = getelementptr inbounds i8, i8* %c, i64 1 *)
(*   store i8 %21, i8* %arrayidx20.1, align 1 *)
mov c_1 v21;
(*   %arrayidx83.1 = getelementptr inbounds i8, i8* %r, i64 5 *)
(*   %22 = load i8, i8* %arrayidx83.1, align 1 *)
mov v22 r_5;
(*   %conv84.1 = zext i8 %22 to i32 *)
cast v_conv84_1@uint32 v22@uint8;
(*   %arrayidx89.1 = getelementptr inbounds [9 x i8], [9 x i8]* %alpha, i64 0, i64 5 *)
(*   %23 = load i8, i8* %arrayidx89.1, align 1 *)
mov v23 alpha_5;
(*   %conv90.1 = zext i8 %23 to i32 *)
cast v_conv90_1@uint32 v23@uint8;
(*   %xor91.1 = xor i32 %conv84.1, %conv90.1 *)
(* You may need to modify here *)
xor uint32 v_xor91_1 v_conv84_1 v_conv90_1;
(*   %arrayidx96.1 = getelementptr inbounds [9 x i8], [9 x i8]* %alpha, i64 0, i64 7 *)
(*   %24 = load i8, i8* %arrayidx96.1, align 1 *)
mov v24 alpha_7;
(*   %conv97.1 = zext i8 %24 to i32 *)
cast v_conv97_1@uint32 v24@uint8;
(*   %xor98.1 = xor i32 %xor91.1, %conv97.1 *)
(* You may need to modify here *)
xor uint32 v_xor98_1 v_xor91_1 v_conv97_1;
(*   %conv99.1 = trunc i32 %xor98.1 to i8 *)
split tmp_v_xor98_1 v_conv99_1 v_xor98_1 8;
vpc v_conv99_1@uint8 v_conv99_1@uint32;
(*   %arrayidx104.1 = getelementptr inbounds [9 x i8], [9 x i8]* %t, i64 0, i64 5 *)
(*   store i8 %conv99.1, i8* %arrayidx104.1, align 1 *)
mov t_5 v_conv99_1;
(*   %arrayidx109.1 = getelementptr inbounds [9 x i8], [9 x i8]* %t, i64 0, i64 5 *)
(*   %25 = load i8, i8* %arrayidx109.1, align 1 *)
mov v25 t_5;
(*   %conv110.1 = zext i8 %25 to i32 *)
cast v_conv110_1@uint32 v25@uint8;
(*   %arrayidx112.1 = getelementptr inbounds i8, i8* %c, i64 1 *)
(*   %26 = load i8, i8* %arrayidx112.1, align 1 *)
mov v26 c_1;
(*   %conv113.1 = zext i8 %26 to i32 *)
cast v_conv113_1@uint32 v26@uint8;
(*   %xor114.1 = xor i32 %conv113.1, %conv110.1 *)
(* You may need to modify here *)
xor uint32 v_xor114_1 v_conv113_1 v_conv110_1;
(*   %conv115.1 = trunc i32 %xor114.1 to i8 *)
split tmp_v_xor114_1 v_conv115_1 v_xor114_1 8;
vpc v_conv115_1@uint8 v_conv115_1@uint32;
(*   store i8 %conv115.1, i8* %arrayidx112.1, align 1 *)
mov c_1 v_conv115_1;
(*   %arrayidx121.1 = getelementptr inbounds i8, i8* %rr, i64 1 *)
(*   %27 = load i8, i8* %arrayidx121.1, align 1 *)
mov v27 rr_1;
(*   %conv122.1 = zext i8 %27 to i32 *)
cast v_conv122_1@uint32 v27@uint8;
(*   %arrayidx124.1 = getelementptr inbounds i8, i8* %c, i64 1 *)
(*   %28 = load i8, i8* %arrayidx124.1, align 1 *)
mov v28 c_1;
(*   %conv125.1 = zext i8 %28 to i32 *)
cast v_conv125_1@uint32 v28@uint8;
(*   %xor126.1 = xor i32 %conv125.1, %conv122.1 *)
(* You may need to modify here *)
xor uint32 v_xor126_1 v_conv125_1 v_conv122_1;
(*   %conv127.1 = trunc i32 %xor126.1 to i8 *)
split tmp_v_xor126_1 v_conv127_1 v_xor126_1 8;
vpc v_conv127_1@uint8 v_conv127_1@uint32;
(*   store i8 %conv127.1, i8* %arrayidx124.1, align 1 *)
mov c_1 v_conv127_1;
(*   %arrayidx18.2 = getelementptr inbounds [9 x i8], [9 x i8]* %alpha, i64 0, i64 8 *)
(*   %29 = load i8, i8* %arrayidx18.2, align 1 *)
mov v29 alpha_8;
(*   %arrayidx20.2 = getelementptr inbounds i8, i8* %c, i64 2 *)
(*   store i8 %29, i8* %arrayidx20.2, align 1 *)
mov c_2 v29;
(*   %arrayidx140.2 = getelementptr inbounds i8, i8* %c, i64 2 *)
(*   %scevgep39.2 = getelementptr i8, i8* %scevgep38, i64 4 *)
(*   %30 = load i8, i8* %scevgep39.2, align 1 *)
mov v30 r_5;
(*   %conv138.2 = zext i8 %30 to i32 *)
cast v_conv138_2@uint32 v30@uint8;
(*   %31 = load i8, i8* %arrayidx140.2, align 1 *)
mov v31 c_2;
(*   %conv141.2 = zext i8 %31 to i32 *)
cast v_conv141_2@uint32 v31@uint8;
(*   %xor142.2 = xor i32 %conv141.2, %conv138.2 *)
(* You may need to modify here *)
xor uint32 v_xor142_2 v_conv141_2 v_conv138_2;
(*   %conv143.2 = trunc i32 %xor142.2 to i8 *)
split tmp_v_xor142_2 v_conv143_2 v_xor142_2 8;
vpc v_conv143_2@uint8 v_conv143_2@uint32;
(*   store i8 %conv143.2, i8* %arrayidx140.2, align 1 *)
mov c_2 v_conv143_2;
(*   %scevgep41.2 = getelementptr i8, i8* %scevgep39.2, i64 -3 *)
(*   %32 = load i8, i8* %scevgep41.2, align 1 *)
mov v32 r_2;
(*   %conv138.1.2 = zext i8 %32 to i32 *)
cast v_conv138_1_2@uint32 v32@uint8;
(*   %33 = load i8, i8* %arrayidx140.2, align 1 *)
mov v33 c_2;
(*   %conv141.1.2 = zext i8 %33 to i32 *)
cast v_conv141_1_2@uint32 v33@uint8;
(*   %xor142.1.2 = xor i32 %conv141.1.2, %conv138.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor142_1_2 v_conv141_1_2 v_conv138_1_2;
(*   %conv143.1.2 = trunc i32 %xor142.1.2 to i8 *)
split tmp_v_xor142_1_2 v_conv143_1_2 v_xor142_1_2 8;
vpc v_conv143_1_2@uint8 v_conv143_1_2@uint32;
(*   store i8 %conv143.1.2, i8* %arrayidx140.2, align 1 *)
mov c_2 v_conv143_1_2;
(*   %34 = load i8, i8* %a, align 1 *)
mov v34 a_0;
(*   %scevgep30.1 = getelementptr i8, i8* %a, i64 1 *)
(*   %35 = load i8, i8* %scevgep30.1, align 1 *)
mov v35 a_1;
(*   %conv.i.i165.1 = zext i8 %35 to i32 *)
cast v_conv_i_i165_1@uint32 v35@uint8;
(*   %conv1.i.i166.1 = zext i8 %34 to i32 *)
cast v_conv1_i_i166_1@uint32 v34@uint8;
(*   %xor.i.i167.1 = xor i32 %conv1.i.i166.1, %conv.i.i165.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i167_1 v_conv1_i_i166_1 v_conv_i_i165_1;
(*   %conv2.i.i168.1 = trunc i32 %xor.i.i167.1 to i8 *)
split tmp_v_xor_i_i167_1 v_conv2_i_i168_1 v_xor_i_i167_1 8;
vpc v_conv2_i_i168_1@uint8 v_conv2_i_i168_1@uint32;
(*   %scevgep30.2 = getelementptr i8, i8* %a, i64 2 *)
(*   %36 = load i8, i8* %scevgep30.2, align 1 *)
mov v36 a_2;
(*   %conv.i.i165.2 = zext i8 %36 to i32 *)
cast v_conv_i_i165_2@uint32 v36@uint8;
(*   %conv1.i.i166.2 = zext i8 %conv2.i.i168.1 to i32 *)
cast v_conv1_i_i166_2@uint32 v_conv2_i_i168_1@uint8;
(*   %xor.i.i167.2 = xor i32 %conv1.i.i166.2, %conv.i.i165.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i167_2 v_conv1_i_i166_2 v_conv_i_i165_2;
(*   %conv2.i.i168.2 = trunc i32 %xor.i.i167.2 to i8 *)
split tmp_v_xor_i_i167_2 v_conv2_i_i168_2 v_xor_i_i167_2 8;
vpc v_conv2_i_i168_2@uint8 v_conv2_i_i168_2@uint32;
(*   %37 = load i8, i8* %b, align 1 *)
mov v37 b_0;
(*   %scevgep26.1 = getelementptr i8, i8* %b, i64 1 *)
(*   %38 = load i8, i8* %scevgep26.1, align 1 *)
mov v38 b_1;
(*   %conv.i.i182.1 = zext i8 %38 to i32 *)
cast v_conv_i_i182_1@uint32 v38@uint8;
(*   %conv1.i.i183.1 = zext i8 %37 to i32 *)
cast v_conv1_i_i183_1@uint32 v37@uint8;
(*   %xor.i.i184.1 = xor i32 %conv1.i.i183.1, %conv.i.i182.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i184_1 v_conv1_i_i183_1 v_conv_i_i182_1;
(*   %conv2.i.i185.1 = trunc i32 %xor.i.i184.1 to i8 *)
split tmp_v_xor_i_i184_1 v_conv2_i_i185_1 v_xor_i_i184_1 8;
vpc v_conv2_i_i185_1@uint8 v_conv2_i_i185_1@uint32;
(*   %scevgep26.2 = getelementptr i8, i8* %b, i64 2 *)
(*   %39 = load i8, i8* %scevgep26.2, align 1 *)
mov v39 b_2;
(*   %conv.i.i182.2 = zext i8 %39 to i32 *)
cast v_conv_i_i182_2@uint32 v39@uint8;
(*   %conv1.i.i183.2 = zext i8 %conv2.i.i185.1 to i32 *)
cast v_conv1_i_i183_2@uint32 v_conv2_i_i185_1@uint8;
(*   %xor.i.i184.2 = xor i32 %conv1.i.i183.2, %conv.i.i182.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i184_2 v_conv1_i_i183_2 v_conv_i_i182_2;
(*   %conv2.i.i185.2 = trunc i32 %xor.i.i184.2 to i8 *)
split tmp_v_xor_i_i184_2 v_conv2_i_i185_2 v_xor_i_i184_2 8;
vpc v_conv2_i_i185_2@uint8 v_conv2_i_i185_2@uint32;
(*   %conv.i195 = zext i8 %conv2.i.i185.2 to i32 *)
cast v_conv_i195@uint32 v_conv2_i_i185_2@uint8;
(*   %and.i196 = and i32 %conv.i195, 1 *)
(* You may need to modify here *)
and uint32 v_and_i196 v_conv_i195 (0x1)@uint32;
(*   %conv1.i197 = zext i8 %conv2.i.i168.2 to i32 *)
cast v_conv1_i197@uint32 v_conv2_i_i168_2@uint8;
(*   %mul.i198 = mul nsw i32 %and.i196, %conv1.i197 *)
mul v_mul_i198 v_and_i196 v_conv1_i197;
(*   %conv3.i201 = trunc i32 %mul.i198 to i8 *)
split tmp_v_mul_i198 v_conv3_i201 v_mul_i198 8;
vpc v_conv3_i201@uint8 v_conv3_i201@uint32;
(*   %conv4.i202 = zext i8 %conv2.i.i185.2 to i32 *)
cast v_conv4_i202@uint32 v_conv2_i_i185_2@uint8;
(*   %shr.i203 = ashr i32 %conv4.i202, 1 *)
(* You may need to modify here *)
split v_shr_i203 tmp_to_be_used v_conv4_i202 1;
(*   %conv5.i204 = trunc i32 %shr.i203 to i8 *)
split tmp_v_shr_i203 v_conv5_i204 v_shr_i203 8;
vpc v_conv5_i204@uint8 v_conv5_i204@uint32;
(*   %conv6.i205 = zext i8 %conv2.i.i168.2 to i32 *)
cast v_conv6_i205@uint32 v_conv2_i_i168_2@uint8;
(*   %shl.i206 = shl i32 %conv6.i205, 1 *)
shls discard_63 v_shl_i206 v_conv6_i205 1;
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
shls discard_64 v_shl_i206_1 v_conv6_i205_1 1;
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
shls discard_65 v_shl_i206_2 v_conv6_i205_2 1;
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
shls discard_66 v_shl_i206_3 v_conv6_i205_3 1;
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
shls discard_67 v_shl_i206_4 v_conv6_i205_4 1;
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
shls discard_68 v_shl_i206_5 v_conv6_i205_5 1;
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
shls discard_69 v_shl_i206_6 v_conv6_i205_6 1;
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
(*   %40 = load i8, i8* %c, align 1 *)
mov v40 c_0;
(*   %scevgep.1 = getelementptr i8, i8* %c, i64 1 *)
(*   %41 = load i8, i8* %scevgep.1, align 1 *)
mov v41 c_1;
(*   %conv.i.i.1 = zext i8 %41 to i32 *)
cast v_conv_i_i_1@uint32 v41@uint8;
(*   %conv1.i.i.1 = zext i8 %40 to i32 *)
cast v_conv1_i_i_1@uint32 v40@uint8;
(*   %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_1 v_conv1_i_i_1 v_conv_i_i_1;
(*   %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8 *)
split tmp_v_xor_i_i_1 v_conv2_i_i_1 v_xor_i_i_1 8;
vpc v_conv2_i_i_1@uint8 v_conv2_i_i_1@uint32;
(*   %scevgep.2 = getelementptr i8, i8* %c, i64 2 *)
(*   %42 = load i8, i8* %scevgep.2, align 1 *)
mov v42 c_2;
(*   %conv.i.i.2 = zext i8 %42 to i32 *)
cast v_conv_i_i_2@uint32 v42@uint8;
(*   %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32 *)
cast v_conv1_i_i_2@uint32 v_conv2_i_i_1@uint8;
(*   %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_2 v_conv1_i_i_2 v_conv_i_i_2;
(*   %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8 *)
split tmp_v_xor_i_i_2 v_conv2_i_i_2 v_xor_i_i_2 8;
vpc v_conv2_i_i_2@uint8 v_conv2_i_i_2@uint32;
(*   store i8 %conv2.i.i.2, i8* %C, align 1 *)
mov C_0 v_conv2_i_i_2;
(*   ret void *)


(* Outputs *)

mov _ AB_0@uint8;
mov _ C_0@uint8;


{
  true
  &&
  true
}

