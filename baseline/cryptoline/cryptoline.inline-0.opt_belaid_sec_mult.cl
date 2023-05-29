proc main (uint8 a_0, uint8 b_0) =
{
  true
  &&
  true
}



(*   %alpha = alloca [1 x i8], align 1 *)
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
(*   %arrayidx7 = getelementptr inbounds [1 x i8], [1 x i8]* %alpha, i64 0, i64 0 *)
(*   store i8 %conv3.i.7, i8* %arrayidx7, align 1 *)
mov alpha_0 v_conv3_i_7;
(*   %arrayidx18 = getelementptr inbounds [1 x i8], [1 x i8]* %alpha, i64 0, i64 0 *)
(*   %2 = load i8, i8* %arrayidx18, align 1 *)
mov v2 alpha_0;
(*   %arrayidx20 = getelementptr inbounds i8, i8* %c, i64 0 *)
(*   store i8 %2, i8* %arrayidx20, align 1 *)
mov c_0 v2;
(*   %3 = load i8, i8* %a, align 1 *)
mov v3 a_0;
(*   %4 = load i8, i8* %b, align 1 *)
mov v4 b_0;
(*   %conv.i195 = zext i8 %4 to i32 *)
cast v_conv_i195@uint32 v4@uint8;
(*   %and.i196 = and i32 %conv.i195, 1 *)
(* You may need to modify here *)
and uint32 v_and_i196 v_conv_i195 (0x1)@uint32;
(*   %conv1.i197 = zext i8 %3 to i32 *)
cast v_conv1_i197@uint32 v3@uint8;
(*   %mul.i198 = mul nsw i32 %and.i196, %conv1.i197 *)
mul v_mul_i198 v_and_i196 v_conv1_i197;
(*   %conv3.i201 = trunc i32 %mul.i198 to i8 *)
split tmp_v_mul_i198 v_conv3_i201 v_mul_i198 8;
vpc v_conv3_i201@uint8 v_conv3_i201@uint32;
(*   %conv4.i202 = zext i8 %4 to i32 *)
cast v_conv4_i202@uint32 v4@uint8;
(*   %shr.i203 = ashr i32 %conv4.i202, 1 *)
(* You may need to modify here *)
split v_shr_i203 tmp_to_be_used v_conv4_i202 1;
(*   %conv5.i204 = trunc i32 %shr.i203 to i8 *)
split tmp_v_shr_i203 v_conv5_i204 v_shr_i203 8;
vpc v_conv5_i204@uint8 v_conv5_i204@uint32;
(*   %conv6.i205 = zext i8 %3 to i32 *)
cast v_conv6_i205@uint32 v3@uint8;
(*   %shl.i206 = shl i32 %conv6.i205, 1 *)
shls discard_7 v_shl_i206 v_conv6_i205 1;
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
shls discard_8 v_shl_i206_1 v_conv6_i205_1 1;
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
shls discard_9 v_shl_i206_2 v_conv6_i205_2 1;
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
shls discard_10 v_shl_i206_3 v_conv6_i205_3 1;
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
shls discard_11 v_shl_i206_4 v_conv6_i205_4 1;
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
shls discard_12 v_shl_i206_5 v_conv6_i205_5 1;
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
shls discard_13 v_shl_i206_6 v_conv6_i205_6 1;
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
(*   %5 = load i8, i8* %c, align 1 *)
mov v5 c_0;
(*   store i8 %5, i8* %C, align 1 *)
mov C_0 v5;
(*   ret void *)


(* Outputs *)

mov _ AB_0@uint8;
mov _ C_0@uint8;


{
  true
  &&
  true
}

