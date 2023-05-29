proc main (uint8 a_0, uint8 a_1, uint8 a_2, uint8 a_3, uint8 a_4, uint8 b_0, uint8 b_1, uint8 b_2, uint8 b_3, uint8 b_4, uint8 r_0, uint8 r_1, uint8 r_2, uint8 r_3, uint8 r_4) =
{
  true
  &&
  true
}



(*   %a1b = alloca [5 x i8], align 1 *)
(*   %ab1 = alloca [5 x i8], align 1 *)
(*   %a2b = alloca [5 x i8], align 1 *)
(*   %ab2 = alloca [5 x i8], align 1 *)
(*   %0 = load i8, i8* %a, align 1 *)
mov v0 a_0;
(*   %1 = load i8, i8* %b, align 1 *)
mov v1 b_0;
(*   %conv.i.i = zext i8 %1 to i32 *)
cast v_conv_i_i@uint32 v1@uint8;
(*   %and.i.i = and i32 %conv.i.i, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i v_conv_i_i (0x1)@uint32;
(*   %conv1.i.i = zext i8 %0 to i32 *)
cast v_conv1_i_i@uint32 v0@uint8;
(*   %mul.i.i = mul nsw i32 %and.i.i, %conv1.i.i *)
mul v_mul_i_i v_and_i_i v_conv1_i_i;
(*   %conv3.i.i = trunc i32 %mul.i.i to i8 *)
split tmp_v_mul_i_i v_conv3_i_i v_mul_i_i 8;
vpc v_conv3_i_i@uint8 v_conv3_i_i@uint32;
(*   %conv4.i.i = zext i8 %1 to i32 *)
cast v_conv4_i_i@uint32 v1@uint8;
(*   %shr.i.i = ashr i32 %conv4.i.i, 1 *)
(* You may need to modify here *)
split v_shr_i_i tmp_to_be_used v_conv4_i_i 1;
(*   %conv5.i.i = trunc i32 %shr.i.i to i8 *)
split tmp_v_shr_i_i v_conv5_i_i v_shr_i_i 8;
vpc v_conv5_i_i@uint8 v_conv5_i_i@uint32;
(*   %conv6.i.i = zext i8 %0 to i32 *)
cast v_conv6_i_i@uint32 v0@uint8;
(*   %shl.i.i = shl i32 %conv6.i.i, 1 *)
shls discard_0 v_shl_i_i v_conv6_i_i 1;
(*   %conv7.i.i = trunc i32 %shl.i.i to i8 *)
split tmp_v_shl_i_i v_conv7_i_i v_shl_i_i 8;
vpc v_conv7_i_i@uint8 v_conv7_i_i@uint32;
(*   %conv.i.i.1 = zext i8 %conv5.i.i to i32 *)
cast v_conv_i_i_1@uint32 v_conv5_i_i@uint8;
(*   %and.i.i.1 = and i32 %conv.i.i.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_1 v_conv_i_i_1 (0x1)@uint32;
(*   %conv1.i.i.1 = zext i8 %conv7.i.i to i32 *)
cast v_conv1_i_i_1@uint32 v_conv7_i_i@uint8;
(*   %mul.i.i.1 = mul nsw i32 %and.i.i.1, %conv1.i.i.1 *)
mul v_mul_i_i_1 v_and_i_i_1 v_conv1_i_i_1;
(*   %conv2.i.i.1 = zext i8 %conv3.i.i to i32 *)
cast v_conv2_i_i_1@uint32 v_conv3_i_i@uint8;
(*   %xor.i.i.1 = xor i32 %conv2.i.i.1, %mul.i.i.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_1 v_conv2_i_i_1 v_mul_i_i_1;
(*   %conv3.i.i.1 = trunc i32 %xor.i.i.1 to i8 *)
split tmp_v_xor_i_i_1 v_conv3_i_i_1 v_xor_i_i_1 8;
vpc v_conv3_i_i_1@uint8 v_conv3_i_i_1@uint32;
(*   %conv4.i.i.1 = zext i8 %conv5.i.i to i32 *)
cast v_conv4_i_i_1@uint32 v_conv5_i_i@uint8;
(*   %shr.i.i.1 = ashr i32 %conv4.i.i.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i_1 tmp_to_be_used v_conv4_i_i_1 1;
(*   %conv5.i.i.1 = trunc i32 %shr.i.i.1 to i8 *)
split tmp_v_shr_i_i_1 v_conv5_i_i_1 v_shr_i_i_1 8;
vpc v_conv5_i_i_1@uint8 v_conv5_i_i_1@uint32;
(*   %conv6.i.i.1 = zext i8 %conv7.i.i to i32 *)
cast v_conv6_i_i_1@uint32 v_conv7_i_i@uint8;
(*   %shl.i.i.1 = shl i32 %conv6.i.i.1, 1 *)
shls discard_1 v_shl_i_i_1 v_conv6_i_i_1 1;
(*   %conv7.i.i.1 = trunc i32 %shl.i.i.1 to i8 *)
split tmp_v_shl_i_i_1 v_conv7_i_i_1 v_shl_i_i_1 8;
vpc v_conv7_i_i_1@uint8 v_conv7_i_i_1@uint32;
(*   %conv.i.i.2 = zext i8 %conv5.i.i.1 to i32 *)
cast v_conv_i_i_2@uint32 v_conv5_i_i_1@uint8;
(*   %and.i.i.2 = and i32 %conv.i.i.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_2 v_conv_i_i_2 (0x1)@uint32;
(*   %conv1.i.i.2 = zext i8 %conv7.i.i.1 to i32 *)
cast v_conv1_i_i_2@uint32 v_conv7_i_i_1@uint8;
(*   %mul.i.i.2 = mul nsw i32 %and.i.i.2, %conv1.i.i.2 *)
mul v_mul_i_i_2 v_and_i_i_2 v_conv1_i_i_2;
(*   %conv2.i.i.2 = zext i8 %conv3.i.i.1 to i32 *)
cast v_conv2_i_i_2@uint32 v_conv3_i_i_1@uint8;
(*   %xor.i.i.2 = xor i32 %conv2.i.i.2, %mul.i.i.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_2 v_conv2_i_i_2 v_mul_i_i_2;
(*   %conv3.i.i.2 = trunc i32 %xor.i.i.2 to i8 *)
split tmp_v_xor_i_i_2 v_conv3_i_i_2 v_xor_i_i_2 8;
vpc v_conv3_i_i_2@uint8 v_conv3_i_i_2@uint32;
(*   %conv4.i.i.2 = zext i8 %conv5.i.i.1 to i32 *)
cast v_conv4_i_i_2@uint32 v_conv5_i_i_1@uint8;
(*   %shr.i.i.2 = ashr i32 %conv4.i.i.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i_2 tmp_to_be_used v_conv4_i_i_2 1;
(*   %conv5.i.i.2 = trunc i32 %shr.i.i.2 to i8 *)
split tmp_v_shr_i_i_2 v_conv5_i_i_2 v_shr_i_i_2 8;
vpc v_conv5_i_i_2@uint8 v_conv5_i_i_2@uint32;
(*   %conv6.i.i.2 = zext i8 %conv7.i.i.1 to i32 *)
cast v_conv6_i_i_2@uint32 v_conv7_i_i_1@uint8;
(*   %shl.i.i.2 = shl i32 %conv6.i.i.2, 1 *)
shls discard_2 v_shl_i_i_2 v_conv6_i_i_2 1;
(*   %conv7.i.i.2 = trunc i32 %shl.i.i.2 to i8 *)
split tmp_v_shl_i_i_2 v_conv7_i_i_2 v_shl_i_i_2 8;
vpc v_conv7_i_i_2@uint8 v_conv7_i_i_2@uint32;
(*   %conv.i.i.3 = zext i8 %conv5.i.i.2 to i32 *)
cast v_conv_i_i_3@uint32 v_conv5_i_i_2@uint8;
(*   %and.i.i.3 = and i32 %conv.i.i.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_3 v_conv_i_i_3 (0x1)@uint32;
(*   %conv1.i.i.3 = zext i8 %conv7.i.i.2 to i32 *)
cast v_conv1_i_i_3@uint32 v_conv7_i_i_2@uint8;
(*   %mul.i.i.3 = mul nsw i32 %and.i.i.3, %conv1.i.i.3 *)
mul v_mul_i_i_3 v_and_i_i_3 v_conv1_i_i_3;
(*   %conv2.i.i.3 = zext i8 %conv3.i.i.2 to i32 *)
cast v_conv2_i_i_3@uint32 v_conv3_i_i_2@uint8;
(*   %xor.i.i.3 = xor i32 %conv2.i.i.3, %mul.i.i.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_3 v_conv2_i_i_3 v_mul_i_i_3;
(*   %conv3.i.i.3 = trunc i32 %xor.i.i.3 to i8 *)
split tmp_v_xor_i_i_3 v_conv3_i_i_3 v_xor_i_i_3 8;
vpc v_conv3_i_i_3@uint8 v_conv3_i_i_3@uint32;
(*   %conv4.i.i.3 = zext i8 %conv5.i.i.2 to i32 *)
cast v_conv4_i_i_3@uint32 v_conv5_i_i_2@uint8;
(*   %shr.i.i.3 = ashr i32 %conv4.i.i.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i_3 tmp_to_be_used v_conv4_i_i_3 1;
(*   %conv5.i.i.3 = trunc i32 %shr.i.i.3 to i8 *)
split tmp_v_shr_i_i_3 v_conv5_i_i_3 v_shr_i_i_3 8;
vpc v_conv5_i_i_3@uint8 v_conv5_i_i_3@uint32;
(*   %conv6.i.i.3 = zext i8 %conv7.i.i.2 to i32 *)
cast v_conv6_i_i_3@uint32 v_conv7_i_i_2@uint8;
(*   %shl.i.i.3 = shl i32 %conv6.i.i.3, 1 *)
shls discard_3 v_shl_i_i_3 v_conv6_i_i_3 1;
(*   %conv7.i.i.3 = trunc i32 %shl.i.i.3 to i8 *)
split tmp_v_shl_i_i_3 v_conv7_i_i_3 v_shl_i_i_3 8;
vpc v_conv7_i_i_3@uint8 v_conv7_i_i_3@uint32;
(*   %conv.i.i.4 = zext i8 %conv5.i.i.3 to i32 *)
cast v_conv_i_i_4@uint32 v_conv5_i_i_3@uint8;
(*   %and.i.i.4 = and i32 %conv.i.i.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_4 v_conv_i_i_4 (0x1)@uint32;
(*   %conv1.i.i.4 = zext i8 %conv7.i.i.3 to i32 *)
cast v_conv1_i_i_4@uint32 v_conv7_i_i_3@uint8;
(*   %mul.i.i.4 = mul nsw i32 %and.i.i.4, %conv1.i.i.4 *)
mul v_mul_i_i_4 v_and_i_i_4 v_conv1_i_i_4;
(*   %conv2.i.i.4 = zext i8 %conv3.i.i.3 to i32 *)
cast v_conv2_i_i_4@uint32 v_conv3_i_i_3@uint8;
(*   %xor.i.i.4 = xor i32 %conv2.i.i.4, %mul.i.i.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_4 v_conv2_i_i_4 v_mul_i_i_4;
(*   %conv3.i.i.4 = trunc i32 %xor.i.i.4 to i8 *)
split tmp_v_xor_i_i_4 v_conv3_i_i_4 v_xor_i_i_4 8;
vpc v_conv3_i_i_4@uint8 v_conv3_i_i_4@uint32;
(*   %conv4.i.i.4 = zext i8 %conv5.i.i.3 to i32 *)
cast v_conv4_i_i_4@uint32 v_conv5_i_i_3@uint8;
(*   %shr.i.i.4 = ashr i32 %conv4.i.i.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i_4 tmp_to_be_used v_conv4_i_i_4 1;
(*   %conv5.i.i.4 = trunc i32 %shr.i.i.4 to i8 *)
split tmp_v_shr_i_i_4 v_conv5_i_i_4 v_shr_i_i_4 8;
vpc v_conv5_i_i_4@uint8 v_conv5_i_i_4@uint32;
(*   %conv6.i.i.4 = zext i8 %conv7.i.i.3 to i32 *)
cast v_conv6_i_i_4@uint32 v_conv7_i_i_3@uint8;
(*   %shl.i.i.4 = shl i32 %conv6.i.i.4, 1 *)
shls discard_4 v_shl_i_i_4 v_conv6_i_i_4 1;
(*   %conv7.i.i.4 = trunc i32 %shl.i.i.4 to i8 *)
split tmp_v_shl_i_i_4 v_conv7_i_i_4 v_shl_i_i_4 8;
vpc v_conv7_i_i_4@uint8 v_conv7_i_i_4@uint32;
(*   %conv.i.i.5 = zext i8 %conv5.i.i.4 to i32 *)
cast v_conv_i_i_5@uint32 v_conv5_i_i_4@uint8;
(*   %and.i.i.5 = and i32 %conv.i.i.5, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_5 v_conv_i_i_5 (0x1)@uint32;
(*   %conv1.i.i.5 = zext i8 %conv7.i.i.4 to i32 *)
cast v_conv1_i_i_5@uint32 v_conv7_i_i_4@uint8;
(*   %mul.i.i.5 = mul nsw i32 %and.i.i.5, %conv1.i.i.5 *)
mul v_mul_i_i_5 v_and_i_i_5 v_conv1_i_i_5;
(*   %conv2.i.i.5 = zext i8 %conv3.i.i.4 to i32 *)
cast v_conv2_i_i_5@uint32 v_conv3_i_i_4@uint8;
(*   %xor.i.i.5 = xor i32 %conv2.i.i.5, %mul.i.i.5 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_5 v_conv2_i_i_5 v_mul_i_i_5;
(*   %conv3.i.i.5 = trunc i32 %xor.i.i.5 to i8 *)
split tmp_v_xor_i_i_5 v_conv3_i_i_5 v_xor_i_i_5 8;
vpc v_conv3_i_i_5@uint8 v_conv3_i_i_5@uint32;
(*   %conv4.i.i.5 = zext i8 %conv5.i.i.4 to i32 *)
cast v_conv4_i_i_5@uint32 v_conv5_i_i_4@uint8;
(*   %shr.i.i.5 = ashr i32 %conv4.i.i.5, 1 *)
(* You may need to modify here *)
split v_shr_i_i_5 tmp_to_be_used v_conv4_i_i_5 1;
(*   %conv5.i.i.5 = trunc i32 %shr.i.i.5 to i8 *)
split tmp_v_shr_i_i_5 v_conv5_i_i_5 v_shr_i_i_5 8;
vpc v_conv5_i_i_5@uint8 v_conv5_i_i_5@uint32;
(*   %conv6.i.i.5 = zext i8 %conv7.i.i.4 to i32 *)
cast v_conv6_i_i_5@uint32 v_conv7_i_i_4@uint8;
(*   %shl.i.i.5 = shl i32 %conv6.i.i.5, 1 *)
shls discard_5 v_shl_i_i_5 v_conv6_i_i_5 1;
(*   %conv7.i.i.5 = trunc i32 %shl.i.i.5 to i8 *)
split tmp_v_shl_i_i_5 v_conv7_i_i_5 v_shl_i_i_5 8;
vpc v_conv7_i_i_5@uint8 v_conv7_i_i_5@uint32;
(*   %conv.i.i.6 = zext i8 %conv5.i.i.5 to i32 *)
cast v_conv_i_i_6@uint32 v_conv5_i_i_5@uint8;
(*   %and.i.i.6 = and i32 %conv.i.i.6, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_6 v_conv_i_i_6 (0x1)@uint32;
(*   %conv1.i.i.6 = zext i8 %conv7.i.i.5 to i32 *)
cast v_conv1_i_i_6@uint32 v_conv7_i_i_5@uint8;
(*   %mul.i.i.6 = mul nsw i32 %and.i.i.6, %conv1.i.i.6 *)
mul v_mul_i_i_6 v_and_i_i_6 v_conv1_i_i_6;
(*   %conv2.i.i.6 = zext i8 %conv3.i.i.5 to i32 *)
cast v_conv2_i_i_6@uint32 v_conv3_i_i_5@uint8;
(*   %xor.i.i.6 = xor i32 %conv2.i.i.6, %mul.i.i.6 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_6 v_conv2_i_i_6 v_mul_i_i_6;
(*   %conv3.i.i.6 = trunc i32 %xor.i.i.6 to i8 *)
split tmp_v_xor_i_i_6 v_conv3_i_i_6 v_xor_i_i_6 8;
vpc v_conv3_i_i_6@uint8 v_conv3_i_i_6@uint32;
(*   %conv4.i.i.6 = zext i8 %conv5.i.i.5 to i32 *)
cast v_conv4_i_i_6@uint32 v_conv5_i_i_5@uint8;
(*   %shr.i.i.6 = ashr i32 %conv4.i.i.6, 1 *)
(* You may need to modify here *)
split v_shr_i_i_6 tmp_to_be_used v_conv4_i_i_6 1;
(*   %conv5.i.i.6 = trunc i32 %shr.i.i.6 to i8 *)
split tmp_v_shr_i_i_6 v_conv5_i_i_6 v_shr_i_i_6 8;
vpc v_conv5_i_i_6@uint8 v_conv5_i_i_6@uint32;
(*   %conv6.i.i.6 = zext i8 %conv7.i.i.5 to i32 *)
cast v_conv6_i_i_6@uint32 v_conv7_i_i_5@uint8;
(*   %shl.i.i.6 = shl i32 %conv6.i.i.6, 1 *)
shls discard_6 v_shl_i_i_6 v_conv6_i_i_6 1;
(*   %conv7.i.i.6 = trunc i32 %shl.i.i.6 to i8 *)
split tmp_v_shl_i_i_6 v_conv7_i_i_6 v_shl_i_i_6 8;
vpc v_conv7_i_i_6@uint8 v_conv7_i_i_6@uint32;
(*   %conv.i.i.7 = zext i8 %conv5.i.i.6 to i32 *)
cast v_conv_i_i_7@uint32 v_conv5_i_i_6@uint8;
(*   %and.i.i.7 = and i32 %conv.i.i.7, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_7 v_conv_i_i_7 (0x1)@uint32;
(*   %conv1.i.i.7 = zext i8 %conv7.i.i.6 to i32 *)
cast v_conv1_i_i_7@uint32 v_conv7_i_i_6@uint8;
(*   %mul.i.i.7 = mul nsw i32 %and.i.i.7, %conv1.i.i.7 *)
mul v_mul_i_i_7 v_and_i_i_7 v_conv1_i_i_7;
(*   %conv2.i.i.7 = zext i8 %conv3.i.i.6 to i32 *)
cast v_conv2_i_i_7@uint32 v_conv3_i_i_6@uint8;
(*   %xor.i.i.7 = xor i32 %conv2.i.i.7, %mul.i.i.7 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_7 v_conv2_i_i_7 v_mul_i_i_7;
(*   %conv3.i.i.7 = trunc i32 %xor.i.i.7 to i8 *)
split tmp_v_xor_i_i_7 v_conv3_i_i_7 v_xor_i_i_7 8;
vpc v_conv3_i_i_7@uint8 v_conv3_i_i_7@uint32;
(*   store i8 %conv3.i.i.7, i8* %c, align 1 *)
mov c_0 v_conv3_i_i_7;
(*   %arrayidx.i.1 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %2 = load i8, i8* %arrayidx.i.1, align 1 *)
mov v2 a_1;
(*   %arrayidx4.i.1 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %3 = load i8, i8* %arrayidx4.i.1, align 1 *)
mov v3 b_1;
(*   %conv.i.i.1288 = zext i8 %3 to i32 *)
cast v_conv_i_i_1288@uint32 v3@uint8;
(*   %and.i.i.1289 = and i32 %conv.i.i.1288, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_1289 v_conv_i_i_1288 (0x1)@uint32;
(*   %conv1.i.i.1290 = zext i8 %2 to i32 *)
cast v_conv1_i_i_1290@uint32 v2@uint8;
(*   %mul.i.i.1291 = mul nsw i32 %and.i.i.1289, %conv1.i.i.1290 *)
mul v_mul_i_i_1291 v_and_i_i_1289 v_conv1_i_i_1290;
(*   %conv3.i.i.1292 = trunc i32 %mul.i.i.1291 to i8 *)
split tmp_v_mul_i_i_1291 v_conv3_i_i_1292 v_mul_i_i_1291 8;
vpc v_conv3_i_i_1292@uint8 v_conv3_i_i_1292@uint32;
(*   %conv4.i.i.1293 = zext i8 %3 to i32 *)
cast v_conv4_i_i_1293@uint32 v3@uint8;
(*   %shr.i.i.1294 = ashr i32 %conv4.i.i.1293, 1 *)
(* You may need to modify here *)
split v_shr_i_i_1294 tmp_to_be_used v_conv4_i_i_1293 1;
(*   %conv5.i.i.1295 = trunc i32 %shr.i.i.1294 to i8 *)
split tmp_v_shr_i_i_1294 v_conv5_i_i_1295 v_shr_i_i_1294 8;
vpc v_conv5_i_i_1295@uint8 v_conv5_i_i_1295@uint32;
(*   %conv6.i.i.1296 = zext i8 %2 to i32 *)
cast v_conv6_i_i_1296@uint32 v2@uint8;
(*   %shl.i.i.1297 = shl i32 %conv6.i.i.1296, 1 *)
shls discard_7 v_shl_i_i_1297 v_conv6_i_i_1296 1;
(*   %conv7.i.i.1298 = trunc i32 %shl.i.i.1297 to i8 *)
split tmp_v_shl_i_i_1297 v_conv7_i_i_1298 v_shl_i_i_1297 8;
vpc v_conv7_i_i_1298@uint8 v_conv7_i_i_1298@uint32;
(*   %conv.i.i.1.1 = zext i8 %conv5.i.i.1295 to i32 *)
cast v_conv_i_i_1_1@uint32 v_conv5_i_i_1295@uint8;
(*   %and.i.i.1.1 = and i32 %conv.i.i.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_1_1 v_conv_i_i_1_1 (0x1)@uint32;
(*   %conv1.i.i.1.1 = zext i8 %conv7.i.i.1298 to i32 *)
cast v_conv1_i_i_1_1@uint32 v_conv7_i_i_1298@uint8;
(*   %mul.i.i.1.1 = mul nsw i32 %and.i.i.1.1, %conv1.i.i.1.1 *)
mul v_mul_i_i_1_1 v_and_i_i_1_1 v_conv1_i_i_1_1;
(*   %conv2.i.i.1.1 = zext i8 %conv3.i.i.1292 to i32 *)
cast v_conv2_i_i_1_1@uint32 v_conv3_i_i_1292@uint8;
(*   %xor.i.i.1.1 = xor i32 %conv2.i.i.1.1, %mul.i.i.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_1_1 v_conv2_i_i_1_1 v_mul_i_i_1_1;
(*   %conv3.i.i.1.1 = trunc i32 %xor.i.i.1.1 to i8 *)
split tmp_v_xor_i_i_1_1 v_conv3_i_i_1_1 v_xor_i_i_1_1 8;
vpc v_conv3_i_i_1_1@uint8 v_conv3_i_i_1_1@uint32;
(*   %conv4.i.i.1.1 = zext i8 %conv5.i.i.1295 to i32 *)
cast v_conv4_i_i_1_1@uint32 v_conv5_i_i_1295@uint8;
(*   %shr.i.i.1.1 = ashr i32 %conv4.i.i.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i_1_1 tmp_to_be_used v_conv4_i_i_1_1 1;
(*   %conv5.i.i.1.1 = trunc i32 %shr.i.i.1.1 to i8 *)
split tmp_v_shr_i_i_1_1 v_conv5_i_i_1_1 v_shr_i_i_1_1 8;
vpc v_conv5_i_i_1_1@uint8 v_conv5_i_i_1_1@uint32;
(*   %conv6.i.i.1.1 = zext i8 %conv7.i.i.1298 to i32 *)
cast v_conv6_i_i_1_1@uint32 v_conv7_i_i_1298@uint8;
(*   %shl.i.i.1.1 = shl i32 %conv6.i.i.1.1, 1 *)
shls discard_8 v_shl_i_i_1_1 v_conv6_i_i_1_1 1;
(*   %conv7.i.i.1.1 = trunc i32 %shl.i.i.1.1 to i8 *)
split tmp_v_shl_i_i_1_1 v_conv7_i_i_1_1 v_shl_i_i_1_1 8;
vpc v_conv7_i_i_1_1@uint8 v_conv7_i_i_1_1@uint32;
(*   %conv.i.i.2.1 = zext i8 %conv5.i.i.1.1 to i32 *)
cast v_conv_i_i_2_1@uint32 v_conv5_i_i_1_1@uint8;
(*   %and.i.i.2.1 = and i32 %conv.i.i.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_2_1 v_conv_i_i_2_1 (0x1)@uint32;
(*   %conv1.i.i.2.1 = zext i8 %conv7.i.i.1.1 to i32 *)
cast v_conv1_i_i_2_1@uint32 v_conv7_i_i_1_1@uint8;
(*   %mul.i.i.2.1 = mul nsw i32 %and.i.i.2.1, %conv1.i.i.2.1 *)
mul v_mul_i_i_2_1 v_and_i_i_2_1 v_conv1_i_i_2_1;
(*   %conv2.i.i.2.1 = zext i8 %conv3.i.i.1.1 to i32 *)
cast v_conv2_i_i_2_1@uint32 v_conv3_i_i_1_1@uint8;
(*   %xor.i.i.2.1 = xor i32 %conv2.i.i.2.1, %mul.i.i.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_2_1 v_conv2_i_i_2_1 v_mul_i_i_2_1;
(*   %conv3.i.i.2.1 = trunc i32 %xor.i.i.2.1 to i8 *)
split tmp_v_xor_i_i_2_1 v_conv3_i_i_2_1 v_xor_i_i_2_1 8;
vpc v_conv3_i_i_2_1@uint8 v_conv3_i_i_2_1@uint32;
(*   %conv4.i.i.2.1 = zext i8 %conv5.i.i.1.1 to i32 *)
cast v_conv4_i_i_2_1@uint32 v_conv5_i_i_1_1@uint8;
(*   %shr.i.i.2.1 = ashr i32 %conv4.i.i.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i_2_1 tmp_to_be_used v_conv4_i_i_2_1 1;
(*   %conv5.i.i.2.1 = trunc i32 %shr.i.i.2.1 to i8 *)
split tmp_v_shr_i_i_2_1 v_conv5_i_i_2_1 v_shr_i_i_2_1 8;
vpc v_conv5_i_i_2_1@uint8 v_conv5_i_i_2_1@uint32;
(*   %conv6.i.i.2.1 = zext i8 %conv7.i.i.1.1 to i32 *)
cast v_conv6_i_i_2_1@uint32 v_conv7_i_i_1_1@uint8;
(*   %shl.i.i.2.1 = shl i32 %conv6.i.i.2.1, 1 *)
shls discard_9 v_shl_i_i_2_1 v_conv6_i_i_2_1 1;
(*   %conv7.i.i.2.1 = trunc i32 %shl.i.i.2.1 to i8 *)
split tmp_v_shl_i_i_2_1 v_conv7_i_i_2_1 v_shl_i_i_2_1 8;
vpc v_conv7_i_i_2_1@uint8 v_conv7_i_i_2_1@uint32;
(*   %conv.i.i.3.1 = zext i8 %conv5.i.i.2.1 to i32 *)
cast v_conv_i_i_3_1@uint32 v_conv5_i_i_2_1@uint8;
(*   %and.i.i.3.1 = and i32 %conv.i.i.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_3_1 v_conv_i_i_3_1 (0x1)@uint32;
(*   %conv1.i.i.3.1 = zext i8 %conv7.i.i.2.1 to i32 *)
cast v_conv1_i_i_3_1@uint32 v_conv7_i_i_2_1@uint8;
(*   %mul.i.i.3.1 = mul nsw i32 %and.i.i.3.1, %conv1.i.i.3.1 *)
mul v_mul_i_i_3_1 v_and_i_i_3_1 v_conv1_i_i_3_1;
(*   %conv2.i.i.3.1 = zext i8 %conv3.i.i.2.1 to i32 *)
cast v_conv2_i_i_3_1@uint32 v_conv3_i_i_2_1@uint8;
(*   %xor.i.i.3.1 = xor i32 %conv2.i.i.3.1, %mul.i.i.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_3_1 v_conv2_i_i_3_1 v_mul_i_i_3_1;
(*   %conv3.i.i.3.1 = trunc i32 %xor.i.i.3.1 to i8 *)
split tmp_v_xor_i_i_3_1 v_conv3_i_i_3_1 v_xor_i_i_3_1 8;
vpc v_conv3_i_i_3_1@uint8 v_conv3_i_i_3_1@uint32;
(*   %conv4.i.i.3.1 = zext i8 %conv5.i.i.2.1 to i32 *)
cast v_conv4_i_i_3_1@uint32 v_conv5_i_i_2_1@uint8;
(*   %shr.i.i.3.1 = ashr i32 %conv4.i.i.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i_3_1 tmp_to_be_used v_conv4_i_i_3_1 1;
(*   %conv5.i.i.3.1 = trunc i32 %shr.i.i.3.1 to i8 *)
split tmp_v_shr_i_i_3_1 v_conv5_i_i_3_1 v_shr_i_i_3_1 8;
vpc v_conv5_i_i_3_1@uint8 v_conv5_i_i_3_1@uint32;
(*   %conv6.i.i.3.1 = zext i8 %conv7.i.i.2.1 to i32 *)
cast v_conv6_i_i_3_1@uint32 v_conv7_i_i_2_1@uint8;
(*   %shl.i.i.3.1 = shl i32 %conv6.i.i.3.1, 1 *)
shls discard_10 v_shl_i_i_3_1 v_conv6_i_i_3_1 1;
(*   %conv7.i.i.3.1 = trunc i32 %shl.i.i.3.1 to i8 *)
split tmp_v_shl_i_i_3_1 v_conv7_i_i_3_1 v_shl_i_i_3_1 8;
vpc v_conv7_i_i_3_1@uint8 v_conv7_i_i_3_1@uint32;
(*   %conv.i.i.4.1 = zext i8 %conv5.i.i.3.1 to i32 *)
cast v_conv_i_i_4_1@uint32 v_conv5_i_i_3_1@uint8;
(*   %and.i.i.4.1 = and i32 %conv.i.i.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_4_1 v_conv_i_i_4_1 (0x1)@uint32;
(*   %conv1.i.i.4.1 = zext i8 %conv7.i.i.3.1 to i32 *)
cast v_conv1_i_i_4_1@uint32 v_conv7_i_i_3_1@uint8;
(*   %mul.i.i.4.1 = mul nsw i32 %and.i.i.4.1, %conv1.i.i.4.1 *)
mul v_mul_i_i_4_1 v_and_i_i_4_1 v_conv1_i_i_4_1;
(*   %conv2.i.i.4.1 = zext i8 %conv3.i.i.3.1 to i32 *)
cast v_conv2_i_i_4_1@uint32 v_conv3_i_i_3_1@uint8;
(*   %xor.i.i.4.1 = xor i32 %conv2.i.i.4.1, %mul.i.i.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_4_1 v_conv2_i_i_4_1 v_mul_i_i_4_1;
(*   %conv3.i.i.4.1 = trunc i32 %xor.i.i.4.1 to i8 *)
split tmp_v_xor_i_i_4_1 v_conv3_i_i_4_1 v_xor_i_i_4_1 8;
vpc v_conv3_i_i_4_1@uint8 v_conv3_i_i_4_1@uint32;
(*   %conv4.i.i.4.1 = zext i8 %conv5.i.i.3.1 to i32 *)
cast v_conv4_i_i_4_1@uint32 v_conv5_i_i_3_1@uint8;
(*   %shr.i.i.4.1 = ashr i32 %conv4.i.i.4.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i_4_1 tmp_to_be_used v_conv4_i_i_4_1 1;
(*   %conv5.i.i.4.1 = trunc i32 %shr.i.i.4.1 to i8 *)
split tmp_v_shr_i_i_4_1 v_conv5_i_i_4_1 v_shr_i_i_4_1 8;
vpc v_conv5_i_i_4_1@uint8 v_conv5_i_i_4_1@uint32;
(*   %conv6.i.i.4.1 = zext i8 %conv7.i.i.3.1 to i32 *)
cast v_conv6_i_i_4_1@uint32 v_conv7_i_i_3_1@uint8;
(*   %shl.i.i.4.1 = shl i32 %conv6.i.i.4.1, 1 *)
shls discard_11 v_shl_i_i_4_1 v_conv6_i_i_4_1 1;
(*   %conv7.i.i.4.1 = trunc i32 %shl.i.i.4.1 to i8 *)
split tmp_v_shl_i_i_4_1 v_conv7_i_i_4_1 v_shl_i_i_4_1 8;
vpc v_conv7_i_i_4_1@uint8 v_conv7_i_i_4_1@uint32;
(*   %conv.i.i.5.1 = zext i8 %conv5.i.i.4.1 to i32 *)
cast v_conv_i_i_5_1@uint32 v_conv5_i_i_4_1@uint8;
(*   %and.i.i.5.1 = and i32 %conv.i.i.5.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_5_1 v_conv_i_i_5_1 (0x1)@uint32;
(*   %conv1.i.i.5.1 = zext i8 %conv7.i.i.4.1 to i32 *)
cast v_conv1_i_i_5_1@uint32 v_conv7_i_i_4_1@uint8;
(*   %mul.i.i.5.1 = mul nsw i32 %and.i.i.5.1, %conv1.i.i.5.1 *)
mul v_mul_i_i_5_1 v_and_i_i_5_1 v_conv1_i_i_5_1;
(*   %conv2.i.i.5.1 = zext i8 %conv3.i.i.4.1 to i32 *)
cast v_conv2_i_i_5_1@uint32 v_conv3_i_i_4_1@uint8;
(*   %xor.i.i.5.1 = xor i32 %conv2.i.i.5.1, %mul.i.i.5.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_5_1 v_conv2_i_i_5_1 v_mul_i_i_5_1;
(*   %conv3.i.i.5.1 = trunc i32 %xor.i.i.5.1 to i8 *)
split tmp_v_xor_i_i_5_1 v_conv3_i_i_5_1 v_xor_i_i_5_1 8;
vpc v_conv3_i_i_5_1@uint8 v_conv3_i_i_5_1@uint32;
(*   %conv4.i.i.5.1 = zext i8 %conv5.i.i.4.1 to i32 *)
cast v_conv4_i_i_5_1@uint32 v_conv5_i_i_4_1@uint8;
(*   %shr.i.i.5.1 = ashr i32 %conv4.i.i.5.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i_5_1 tmp_to_be_used v_conv4_i_i_5_1 1;
(*   %conv5.i.i.5.1 = trunc i32 %shr.i.i.5.1 to i8 *)
split tmp_v_shr_i_i_5_1 v_conv5_i_i_5_1 v_shr_i_i_5_1 8;
vpc v_conv5_i_i_5_1@uint8 v_conv5_i_i_5_1@uint32;
(*   %conv6.i.i.5.1 = zext i8 %conv7.i.i.4.1 to i32 *)
cast v_conv6_i_i_5_1@uint32 v_conv7_i_i_4_1@uint8;
(*   %shl.i.i.5.1 = shl i32 %conv6.i.i.5.1, 1 *)
shls discard_12 v_shl_i_i_5_1 v_conv6_i_i_5_1 1;
(*   %conv7.i.i.5.1 = trunc i32 %shl.i.i.5.1 to i8 *)
split tmp_v_shl_i_i_5_1 v_conv7_i_i_5_1 v_shl_i_i_5_1 8;
vpc v_conv7_i_i_5_1@uint8 v_conv7_i_i_5_1@uint32;
(*   %conv.i.i.6.1 = zext i8 %conv5.i.i.5.1 to i32 *)
cast v_conv_i_i_6_1@uint32 v_conv5_i_i_5_1@uint8;
(*   %and.i.i.6.1 = and i32 %conv.i.i.6.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_6_1 v_conv_i_i_6_1 (0x1)@uint32;
(*   %conv1.i.i.6.1 = zext i8 %conv7.i.i.5.1 to i32 *)
cast v_conv1_i_i_6_1@uint32 v_conv7_i_i_5_1@uint8;
(*   %mul.i.i.6.1 = mul nsw i32 %and.i.i.6.1, %conv1.i.i.6.1 *)
mul v_mul_i_i_6_1 v_and_i_i_6_1 v_conv1_i_i_6_1;
(*   %conv2.i.i.6.1 = zext i8 %conv3.i.i.5.1 to i32 *)
cast v_conv2_i_i_6_1@uint32 v_conv3_i_i_5_1@uint8;
(*   %xor.i.i.6.1 = xor i32 %conv2.i.i.6.1, %mul.i.i.6.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_6_1 v_conv2_i_i_6_1 v_mul_i_i_6_1;
(*   %conv3.i.i.6.1 = trunc i32 %xor.i.i.6.1 to i8 *)
split tmp_v_xor_i_i_6_1 v_conv3_i_i_6_1 v_xor_i_i_6_1 8;
vpc v_conv3_i_i_6_1@uint8 v_conv3_i_i_6_1@uint32;
(*   %conv4.i.i.6.1 = zext i8 %conv5.i.i.5.1 to i32 *)
cast v_conv4_i_i_6_1@uint32 v_conv5_i_i_5_1@uint8;
(*   %shr.i.i.6.1 = ashr i32 %conv4.i.i.6.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i_6_1 tmp_to_be_used v_conv4_i_i_6_1 1;
(*   %conv5.i.i.6.1 = trunc i32 %shr.i.i.6.1 to i8 *)
split tmp_v_shr_i_i_6_1 v_conv5_i_i_6_1 v_shr_i_i_6_1 8;
vpc v_conv5_i_i_6_1@uint8 v_conv5_i_i_6_1@uint32;
(*   %conv6.i.i.6.1 = zext i8 %conv7.i.i.5.1 to i32 *)
cast v_conv6_i_i_6_1@uint32 v_conv7_i_i_5_1@uint8;
(*   %shl.i.i.6.1 = shl i32 %conv6.i.i.6.1, 1 *)
shls discard_13 v_shl_i_i_6_1 v_conv6_i_i_6_1 1;
(*   %conv7.i.i.6.1 = trunc i32 %shl.i.i.6.1 to i8 *)
split tmp_v_shl_i_i_6_1 v_conv7_i_i_6_1 v_shl_i_i_6_1 8;
vpc v_conv7_i_i_6_1@uint8 v_conv7_i_i_6_1@uint32;
(*   %conv.i.i.7.1 = zext i8 %conv5.i.i.6.1 to i32 *)
cast v_conv_i_i_7_1@uint32 v_conv5_i_i_6_1@uint8;
(*   %and.i.i.7.1 = and i32 %conv.i.i.7.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_7_1 v_conv_i_i_7_1 (0x1)@uint32;
(*   %conv1.i.i.7.1 = zext i8 %conv7.i.i.6.1 to i32 *)
cast v_conv1_i_i_7_1@uint32 v_conv7_i_i_6_1@uint8;
(*   %mul.i.i.7.1 = mul nsw i32 %and.i.i.7.1, %conv1.i.i.7.1 *)
mul v_mul_i_i_7_1 v_and_i_i_7_1 v_conv1_i_i_7_1;
(*   %conv2.i.i.7.1 = zext i8 %conv3.i.i.6.1 to i32 *)
cast v_conv2_i_i_7_1@uint32 v_conv3_i_i_6_1@uint8;
(*   %xor.i.i.7.1 = xor i32 %conv2.i.i.7.1, %mul.i.i.7.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_7_1 v_conv2_i_i_7_1 v_mul_i_i_7_1;
(*   %conv3.i.i.7.1 = trunc i32 %xor.i.i.7.1 to i8 *)
split tmp_v_xor_i_i_7_1 v_conv3_i_i_7_1 v_xor_i_i_7_1 8;
vpc v_conv3_i_i_7_1@uint8 v_conv3_i_i_7_1@uint32;
(*   %arrayidx6.i.1 = getelementptr inbounds i8, i8* %c, i64 1 *)
(*   store i8 %conv3.i.i.7.1, i8* %arrayidx6.i.1, align 1 *)
mov c_1 v_conv3_i_i_7_1;
(*   %arrayidx.i.2 = getelementptr inbounds i8, i8* %a, i64 2 *)
(*   %4 = load i8, i8* %arrayidx.i.2, align 1 *)
mov v4 a_2;
(*   %arrayidx4.i.2 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %5 = load i8, i8* %arrayidx4.i.2, align 1 *)
mov v5 b_2;
(*   %conv.i.i.2299 = zext i8 %5 to i32 *)
cast v_conv_i_i_2299@uint32 v5@uint8;
(*   %and.i.i.2300 = and i32 %conv.i.i.2299, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_2300 v_conv_i_i_2299 (0x1)@uint32;
(*   %conv1.i.i.2301 = zext i8 %4 to i32 *)
cast v_conv1_i_i_2301@uint32 v4@uint8;
(*   %mul.i.i.2302 = mul nsw i32 %and.i.i.2300, %conv1.i.i.2301 *)
mul v_mul_i_i_2302 v_and_i_i_2300 v_conv1_i_i_2301;
(*   %conv3.i.i.2303 = trunc i32 %mul.i.i.2302 to i8 *)
split tmp_v_mul_i_i_2302 v_conv3_i_i_2303 v_mul_i_i_2302 8;
vpc v_conv3_i_i_2303@uint8 v_conv3_i_i_2303@uint32;
(*   %conv4.i.i.2304 = zext i8 %5 to i32 *)
cast v_conv4_i_i_2304@uint32 v5@uint8;
(*   %shr.i.i.2305 = ashr i32 %conv4.i.i.2304, 1 *)
(* You may need to modify here *)
split v_shr_i_i_2305 tmp_to_be_used v_conv4_i_i_2304 1;
(*   %conv5.i.i.2306 = trunc i32 %shr.i.i.2305 to i8 *)
split tmp_v_shr_i_i_2305 v_conv5_i_i_2306 v_shr_i_i_2305 8;
vpc v_conv5_i_i_2306@uint8 v_conv5_i_i_2306@uint32;
(*   %conv6.i.i.2307 = zext i8 %4 to i32 *)
cast v_conv6_i_i_2307@uint32 v4@uint8;
(*   %shl.i.i.2308 = shl i32 %conv6.i.i.2307, 1 *)
shls discard_14 v_shl_i_i_2308 v_conv6_i_i_2307 1;
(*   %conv7.i.i.2309 = trunc i32 %shl.i.i.2308 to i8 *)
split tmp_v_shl_i_i_2308 v_conv7_i_i_2309 v_shl_i_i_2308 8;
vpc v_conv7_i_i_2309@uint8 v_conv7_i_i_2309@uint32;
(*   %conv.i.i.1.2 = zext i8 %conv5.i.i.2306 to i32 *)
cast v_conv_i_i_1_2@uint32 v_conv5_i_i_2306@uint8;
(*   %and.i.i.1.2 = and i32 %conv.i.i.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_1_2 v_conv_i_i_1_2 (0x1)@uint32;
(*   %conv1.i.i.1.2 = zext i8 %conv7.i.i.2309 to i32 *)
cast v_conv1_i_i_1_2@uint32 v_conv7_i_i_2309@uint8;
(*   %mul.i.i.1.2 = mul nsw i32 %and.i.i.1.2, %conv1.i.i.1.2 *)
mul v_mul_i_i_1_2 v_and_i_i_1_2 v_conv1_i_i_1_2;
(*   %conv2.i.i.1.2 = zext i8 %conv3.i.i.2303 to i32 *)
cast v_conv2_i_i_1_2@uint32 v_conv3_i_i_2303@uint8;
(*   %xor.i.i.1.2 = xor i32 %conv2.i.i.1.2, %mul.i.i.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_1_2 v_conv2_i_i_1_2 v_mul_i_i_1_2;
(*   %conv3.i.i.1.2 = trunc i32 %xor.i.i.1.2 to i8 *)
split tmp_v_xor_i_i_1_2 v_conv3_i_i_1_2 v_xor_i_i_1_2 8;
vpc v_conv3_i_i_1_2@uint8 v_conv3_i_i_1_2@uint32;
(*   %conv4.i.i.1.2 = zext i8 %conv5.i.i.2306 to i32 *)
cast v_conv4_i_i_1_2@uint32 v_conv5_i_i_2306@uint8;
(*   %shr.i.i.1.2 = ashr i32 %conv4.i.i.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i_1_2 tmp_to_be_used v_conv4_i_i_1_2 1;
(*   %conv5.i.i.1.2 = trunc i32 %shr.i.i.1.2 to i8 *)
split tmp_v_shr_i_i_1_2 v_conv5_i_i_1_2 v_shr_i_i_1_2 8;
vpc v_conv5_i_i_1_2@uint8 v_conv5_i_i_1_2@uint32;
(*   %conv6.i.i.1.2 = zext i8 %conv7.i.i.2309 to i32 *)
cast v_conv6_i_i_1_2@uint32 v_conv7_i_i_2309@uint8;
(*   %shl.i.i.1.2 = shl i32 %conv6.i.i.1.2, 1 *)
shls discard_15 v_shl_i_i_1_2 v_conv6_i_i_1_2 1;
(*   %conv7.i.i.1.2 = trunc i32 %shl.i.i.1.2 to i8 *)
split tmp_v_shl_i_i_1_2 v_conv7_i_i_1_2 v_shl_i_i_1_2 8;
vpc v_conv7_i_i_1_2@uint8 v_conv7_i_i_1_2@uint32;
(*   %conv.i.i.2.2 = zext i8 %conv5.i.i.1.2 to i32 *)
cast v_conv_i_i_2_2@uint32 v_conv5_i_i_1_2@uint8;
(*   %and.i.i.2.2 = and i32 %conv.i.i.2.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_2_2 v_conv_i_i_2_2 (0x1)@uint32;
(*   %conv1.i.i.2.2 = zext i8 %conv7.i.i.1.2 to i32 *)
cast v_conv1_i_i_2_2@uint32 v_conv7_i_i_1_2@uint8;
(*   %mul.i.i.2.2 = mul nsw i32 %and.i.i.2.2, %conv1.i.i.2.2 *)
mul v_mul_i_i_2_2 v_and_i_i_2_2 v_conv1_i_i_2_2;
(*   %conv2.i.i.2.2 = zext i8 %conv3.i.i.1.2 to i32 *)
cast v_conv2_i_i_2_2@uint32 v_conv3_i_i_1_2@uint8;
(*   %xor.i.i.2.2 = xor i32 %conv2.i.i.2.2, %mul.i.i.2.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_2_2 v_conv2_i_i_2_2 v_mul_i_i_2_2;
(*   %conv3.i.i.2.2 = trunc i32 %xor.i.i.2.2 to i8 *)
split tmp_v_xor_i_i_2_2 v_conv3_i_i_2_2 v_xor_i_i_2_2 8;
vpc v_conv3_i_i_2_2@uint8 v_conv3_i_i_2_2@uint32;
(*   %conv4.i.i.2.2 = zext i8 %conv5.i.i.1.2 to i32 *)
cast v_conv4_i_i_2_2@uint32 v_conv5_i_i_1_2@uint8;
(*   %shr.i.i.2.2 = ashr i32 %conv4.i.i.2.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i_2_2 tmp_to_be_used v_conv4_i_i_2_2 1;
(*   %conv5.i.i.2.2 = trunc i32 %shr.i.i.2.2 to i8 *)
split tmp_v_shr_i_i_2_2 v_conv5_i_i_2_2 v_shr_i_i_2_2 8;
vpc v_conv5_i_i_2_2@uint8 v_conv5_i_i_2_2@uint32;
(*   %conv6.i.i.2.2 = zext i8 %conv7.i.i.1.2 to i32 *)
cast v_conv6_i_i_2_2@uint32 v_conv7_i_i_1_2@uint8;
(*   %shl.i.i.2.2 = shl i32 %conv6.i.i.2.2, 1 *)
shls discard_16 v_shl_i_i_2_2 v_conv6_i_i_2_2 1;
(*   %conv7.i.i.2.2 = trunc i32 %shl.i.i.2.2 to i8 *)
split tmp_v_shl_i_i_2_2 v_conv7_i_i_2_2 v_shl_i_i_2_2 8;
vpc v_conv7_i_i_2_2@uint8 v_conv7_i_i_2_2@uint32;
(*   %conv.i.i.3.2 = zext i8 %conv5.i.i.2.2 to i32 *)
cast v_conv_i_i_3_2@uint32 v_conv5_i_i_2_2@uint8;
(*   %and.i.i.3.2 = and i32 %conv.i.i.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_3_2 v_conv_i_i_3_2 (0x1)@uint32;
(*   %conv1.i.i.3.2 = zext i8 %conv7.i.i.2.2 to i32 *)
cast v_conv1_i_i_3_2@uint32 v_conv7_i_i_2_2@uint8;
(*   %mul.i.i.3.2 = mul nsw i32 %and.i.i.3.2, %conv1.i.i.3.2 *)
mul v_mul_i_i_3_2 v_and_i_i_3_2 v_conv1_i_i_3_2;
(*   %conv2.i.i.3.2 = zext i8 %conv3.i.i.2.2 to i32 *)
cast v_conv2_i_i_3_2@uint32 v_conv3_i_i_2_2@uint8;
(*   %xor.i.i.3.2 = xor i32 %conv2.i.i.3.2, %mul.i.i.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_3_2 v_conv2_i_i_3_2 v_mul_i_i_3_2;
(*   %conv3.i.i.3.2 = trunc i32 %xor.i.i.3.2 to i8 *)
split tmp_v_xor_i_i_3_2 v_conv3_i_i_3_2 v_xor_i_i_3_2 8;
vpc v_conv3_i_i_3_2@uint8 v_conv3_i_i_3_2@uint32;
(*   %conv4.i.i.3.2 = zext i8 %conv5.i.i.2.2 to i32 *)
cast v_conv4_i_i_3_2@uint32 v_conv5_i_i_2_2@uint8;
(*   %shr.i.i.3.2 = ashr i32 %conv4.i.i.3.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i_3_2 tmp_to_be_used v_conv4_i_i_3_2 1;
(*   %conv5.i.i.3.2 = trunc i32 %shr.i.i.3.2 to i8 *)
split tmp_v_shr_i_i_3_2 v_conv5_i_i_3_2 v_shr_i_i_3_2 8;
vpc v_conv5_i_i_3_2@uint8 v_conv5_i_i_3_2@uint32;
(*   %conv6.i.i.3.2 = zext i8 %conv7.i.i.2.2 to i32 *)
cast v_conv6_i_i_3_2@uint32 v_conv7_i_i_2_2@uint8;
(*   %shl.i.i.3.2 = shl i32 %conv6.i.i.3.2, 1 *)
shls discard_17 v_shl_i_i_3_2 v_conv6_i_i_3_2 1;
(*   %conv7.i.i.3.2 = trunc i32 %shl.i.i.3.2 to i8 *)
split tmp_v_shl_i_i_3_2 v_conv7_i_i_3_2 v_shl_i_i_3_2 8;
vpc v_conv7_i_i_3_2@uint8 v_conv7_i_i_3_2@uint32;
(*   %conv.i.i.4.2 = zext i8 %conv5.i.i.3.2 to i32 *)
cast v_conv_i_i_4_2@uint32 v_conv5_i_i_3_2@uint8;
(*   %and.i.i.4.2 = and i32 %conv.i.i.4.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_4_2 v_conv_i_i_4_2 (0x1)@uint32;
(*   %conv1.i.i.4.2 = zext i8 %conv7.i.i.3.2 to i32 *)
cast v_conv1_i_i_4_2@uint32 v_conv7_i_i_3_2@uint8;
(*   %mul.i.i.4.2 = mul nsw i32 %and.i.i.4.2, %conv1.i.i.4.2 *)
mul v_mul_i_i_4_2 v_and_i_i_4_2 v_conv1_i_i_4_2;
(*   %conv2.i.i.4.2 = zext i8 %conv3.i.i.3.2 to i32 *)
cast v_conv2_i_i_4_2@uint32 v_conv3_i_i_3_2@uint8;
(*   %xor.i.i.4.2 = xor i32 %conv2.i.i.4.2, %mul.i.i.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_4_2 v_conv2_i_i_4_2 v_mul_i_i_4_2;
(*   %conv3.i.i.4.2 = trunc i32 %xor.i.i.4.2 to i8 *)
split tmp_v_xor_i_i_4_2 v_conv3_i_i_4_2 v_xor_i_i_4_2 8;
vpc v_conv3_i_i_4_2@uint8 v_conv3_i_i_4_2@uint32;
(*   %conv4.i.i.4.2 = zext i8 %conv5.i.i.3.2 to i32 *)
cast v_conv4_i_i_4_2@uint32 v_conv5_i_i_3_2@uint8;
(*   %shr.i.i.4.2 = ashr i32 %conv4.i.i.4.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i_4_2 tmp_to_be_used v_conv4_i_i_4_2 1;
(*   %conv5.i.i.4.2 = trunc i32 %shr.i.i.4.2 to i8 *)
split tmp_v_shr_i_i_4_2 v_conv5_i_i_4_2 v_shr_i_i_4_2 8;
vpc v_conv5_i_i_4_2@uint8 v_conv5_i_i_4_2@uint32;
(*   %conv6.i.i.4.2 = zext i8 %conv7.i.i.3.2 to i32 *)
cast v_conv6_i_i_4_2@uint32 v_conv7_i_i_3_2@uint8;
(*   %shl.i.i.4.2 = shl i32 %conv6.i.i.4.2, 1 *)
shls discard_18 v_shl_i_i_4_2 v_conv6_i_i_4_2 1;
(*   %conv7.i.i.4.2 = trunc i32 %shl.i.i.4.2 to i8 *)
split tmp_v_shl_i_i_4_2 v_conv7_i_i_4_2 v_shl_i_i_4_2 8;
vpc v_conv7_i_i_4_2@uint8 v_conv7_i_i_4_2@uint32;
(*   %conv.i.i.5.2 = zext i8 %conv5.i.i.4.2 to i32 *)
cast v_conv_i_i_5_2@uint32 v_conv5_i_i_4_2@uint8;
(*   %and.i.i.5.2 = and i32 %conv.i.i.5.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_5_2 v_conv_i_i_5_2 (0x1)@uint32;
(*   %conv1.i.i.5.2 = zext i8 %conv7.i.i.4.2 to i32 *)
cast v_conv1_i_i_5_2@uint32 v_conv7_i_i_4_2@uint8;
(*   %mul.i.i.5.2 = mul nsw i32 %and.i.i.5.2, %conv1.i.i.5.2 *)
mul v_mul_i_i_5_2 v_and_i_i_5_2 v_conv1_i_i_5_2;
(*   %conv2.i.i.5.2 = zext i8 %conv3.i.i.4.2 to i32 *)
cast v_conv2_i_i_5_2@uint32 v_conv3_i_i_4_2@uint8;
(*   %xor.i.i.5.2 = xor i32 %conv2.i.i.5.2, %mul.i.i.5.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_5_2 v_conv2_i_i_5_2 v_mul_i_i_5_2;
(*   %conv3.i.i.5.2 = trunc i32 %xor.i.i.5.2 to i8 *)
split tmp_v_xor_i_i_5_2 v_conv3_i_i_5_2 v_xor_i_i_5_2 8;
vpc v_conv3_i_i_5_2@uint8 v_conv3_i_i_5_2@uint32;
(*   %conv4.i.i.5.2 = zext i8 %conv5.i.i.4.2 to i32 *)
cast v_conv4_i_i_5_2@uint32 v_conv5_i_i_4_2@uint8;
(*   %shr.i.i.5.2 = ashr i32 %conv4.i.i.5.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i_5_2 tmp_to_be_used v_conv4_i_i_5_2 1;
(*   %conv5.i.i.5.2 = trunc i32 %shr.i.i.5.2 to i8 *)
split tmp_v_shr_i_i_5_2 v_conv5_i_i_5_2 v_shr_i_i_5_2 8;
vpc v_conv5_i_i_5_2@uint8 v_conv5_i_i_5_2@uint32;
(*   %conv6.i.i.5.2 = zext i8 %conv7.i.i.4.2 to i32 *)
cast v_conv6_i_i_5_2@uint32 v_conv7_i_i_4_2@uint8;
(*   %shl.i.i.5.2 = shl i32 %conv6.i.i.5.2, 1 *)
shls discard_19 v_shl_i_i_5_2 v_conv6_i_i_5_2 1;
(*   %conv7.i.i.5.2 = trunc i32 %shl.i.i.5.2 to i8 *)
split tmp_v_shl_i_i_5_2 v_conv7_i_i_5_2 v_shl_i_i_5_2 8;
vpc v_conv7_i_i_5_2@uint8 v_conv7_i_i_5_2@uint32;
(*   %conv.i.i.6.2 = zext i8 %conv5.i.i.5.2 to i32 *)
cast v_conv_i_i_6_2@uint32 v_conv5_i_i_5_2@uint8;
(*   %and.i.i.6.2 = and i32 %conv.i.i.6.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_6_2 v_conv_i_i_6_2 (0x1)@uint32;
(*   %conv1.i.i.6.2 = zext i8 %conv7.i.i.5.2 to i32 *)
cast v_conv1_i_i_6_2@uint32 v_conv7_i_i_5_2@uint8;
(*   %mul.i.i.6.2 = mul nsw i32 %and.i.i.6.2, %conv1.i.i.6.2 *)
mul v_mul_i_i_6_2 v_and_i_i_6_2 v_conv1_i_i_6_2;
(*   %conv2.i.i.6.2 = zext i8 %conv3.i.i.5.2 to i32 *)
cast v_conv2_i_i_6_2@uint32 v_conv3_i_i_5_2@uint8;
(*   %xor.i.i.6.2 = xor i32 %conv2.i.i.6.2, %mul.i.i.6.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_6_2 v_conv2_i_i_6_2 v_mul_i_i_6_2;
(*   %conv3.i.i.6.2 = trunc i32 %xor.i.i.6.2 to i8 *)
split tmp_v_xor_i_i_6_2 v_conv3_i_i_6_2 v_xor_i_i_6_2 8;
vpc v_conv3_i_i_6_2@uint8 v_conv3_i_i_6_2@uint32;
(*   %conv4.i.i.6.2 = zext i8 %conv5.i.i.5.2 to i32 *)
cast v_conv4_i_i_6_2@uint32 v_conv5_i_i_5_2@uint8;
(*   %shr.i.i.6.2 = ashr i32 %conv4.i.i.6.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i_6_2 tmp_to_be_used v_conv4_i_i_6_2 1;
(*   %conv5.i.i.6.2 = trunc i32 %shr.i.i.6.2 to i8 *)
split tmp_v_shr_i_i_6_2 v_conv5_i_i_6_2 v_shr_i_i_6_2 8;
vpc v_conv5_i_i_6_2@uint8 v_conv5_i_i_6_2@uint32;
(*   %conv6.i.i.6.2 = zext i8 %conv7.i.i.5.2 to i32 *)
cast v_conv6_i_i_6_2@uint32 v_conv7_i_i_5_2@uint8;
(*   %shl.i.i.6.2 = shl i32 %conv6.i.i.6.2, 1 *)
shls discard_20 v_shl_i_i_6_2 v_conv6_i_i_6_2 1;
(*   %conv7.i.i.6.2 = trunc i32 %shl.i.i.6.2 to i8 *)
split tmp_v_shl_i_i_6_2 v_conv7_i_i_6_2 v_shl_i_i_6_2 8;
vpc v_conv7_i_i_6_2@uint8 v_conv7_i_i_6_2@uint32;
(*   %conv.i.i.7.2 = zext i8 %conv5.i.i.6.2 to i32 *)
cast v_conv_i_i_7_2@uint32 v_conv5_i_i_6_2@uint8;
(*   %and.i.i.7.2 = and i32 %conv.i.i.7.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_7_2 v_conv_i_i_7_2 (0x1)@uint32;
(*   %conv1.i.i.7.2 = zext i8 %conv7.i.i.6.2 to i32 *)
cast v_conv1_i_i_7_2@uint32 v_conv7_i_i_6_2@uint8;
(*   %mul.i.i.7.2 = mul nsw i32 %and.i.i.7.2, %conv1.i.i.7.2 *)
mul v_mul_i_i_7_2 v_and_i_i_7_2 v_conv1_i_i_7_2;
(*   %conv2.i.i.7.2 = zext i8 %conv3.i.i.6.2 to i32 *)
cast v_conv2_i_i_7_2@uint32 v_conv3_i_i_6_2@uint8;
(*   %xor.i.i.7.2 = xor i32 %conv2.i.i.7.2, %mul.i.i.7.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_7_2 v_conv2_i_i_7_2 v_mul_i_i_7_2;
(*   %conv3.i.i.7.2 = trunc i32 %xor.i.i.7.2 to i8 *)
split tmp_v_xor_i_i_7_2 v_conv3_i_i_7_2 v_xor_i_i_7_2 8;
vpc v_conv3_i_i_7_2@uint8 v_conv3_i_i_7_2@uint32;
(*   %arrayidx6.i.2 = getelementptr inbounds i8, i8* %c, i64 2 *)
(*   store i8 %conv3.i.i.7.2, i8* %arrayidx6.i.2, align 1 *)
mov c_2 v_conv3_i_i_7_2;
(*   %arrayidx.i.3 = getelementptr inbounds i8, i8* %a, i64 3 *)
(*   %6 = load i8, i8* %arrayidx.i.3, align 1 *)
mov v6 a_3;
(*   %arrayidx4.i.3 = getelementptr inbounds i8, i8* %b, i64 3 *)
(*   %7 = load i8, i8* %arrayidx4.i.3, align 1 *)
mov v7 b_3;
(*   %conv.i.i.3310 = zext i8 %7 to i32 *)
cast v_conv_i_i_3310@uint32 v7@uint8;
(*   %and.i.i.3311 = and i32 %conv.i.i.3310, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_3311 v_conv_i_i_3310 (0x1)@uint32;
(*   %conv1.i.i.3312 = zext i8 %6 to i32 *)
cast v_conv1_i_i_3312@uint32 v6@uint8;
(*   %mul.i.i.3313 = mul nsw i32 %and.i.i.3311, %conv1.i.i.3312 *)
mul v_mul_i_i_3313 v_and_i_i_3311 v_conv1_i_i_3312;
(*   %conv3.i.i.3314 = trunc i32 %mul.i.i.3313 to i8 *)
split tmp_v_mul_i_i_3313 v_conv3_i_i_3314 v_mul_i_i_3313 8;
vpc v_conv3_i_i_3314@uint8 v_conv3_i_i_3314@uint32;
(*   %conv4.i.i.3315 = zext i8 %7 to i32 *)
cast v_conv4_i_i_3315@uint32 v7@uint8;
(*   %shr.i.i.3316 = ashr i32 %conv4.i.i.3315, 1 *)
(* You may need to modify here *)
split v_shr_i_i_3316 tmp_to_be_used v_conv4_i_i_3315 1;
(*   %conv5.i.i.3317 = trunc i32 %shr.i.i.3316 to i8 *)
split tmp_v_shr_i_i_3316 v_conv5_i_i_3317 v_shr_i_i_3316 8;
vpc v_conv5_i_i_3317@uint8 v_conv5_i_i_3317@uint32;
(*   %conv6.i.i.3318 = zext i8 %6 to i32 *)
cast v_conv6_i_i_3318@uint32 v6@uint8;
(*   %shl.i.i.3319 = shl i32 %conv6.i.i.3318, 1 *)
shls discard_21 v_shl_i_i_3319 v_conv6_i_i_3318 1;
(*   %conv7.i.i.3320 = trunc i32 %shl.i.i.3319 to i8 *)
split tmp_v_shl_i_i_3319 v_conv7_i_i_3320 v_shl_i_i_3319 8;
vpc v_conv7_i_i_3320@uint8 v_conv7_i_i_3320@uint32;
(*   %conv.i.i.1.3 = zext i8 %conv5.i.i.3317 to i32 *)
cast v_conv_i_i_1_3@uint32 v_conv5_i_i_3317@uint8;
(*   %and.i.i.1.3 = and i32 %conv.i.i.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_1_3 v_conv_i_i_1_3 (0x1)@uint32;
(*   %conv1.i.i.1.3 = zext i8 %conv7.i.i.3320 to i32 *)
cast v_conv1_i_i_1_3@uint32 v_conv7_i_i_3320@uint8;
(*   %mul.i.i.1.3 = mul nsw i32 %and.i.i.1.3, %conv1.i.i.1.3 *)
mul v_mul_i_i_1_3 v_and_i_i_1_3 v_conv1_i_i_1_3;
(*   %conv2.i.i.1.3 = zext i8 %conv3.i.i.3314 to i32 *)
cast v_conv2_i_i_1_3@uint32 v_conv3_i_i_3314@uint8;
(*   %xor.i.i.1.3 = xor i32 %conv2.i.i.1.3, %mul.i.i.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_1_3 v_conv2_i_i_1_3 v_mul_i_i_1_3;
(*   %conv3.i.i.1.3 = trunc i32 %xor.i.i.1.3 to i8 *)
split tmp_v_xor_i_i_1_3 v_conv3_i_i_1_3 v_xor_i_i_1_3 8;
vpc v_conv3_i_i_1_3@uint8 v_conv3_i_i_1_3@uint32;
(*   %conv4.i.i.1.3 = zext i8 %conv5.i.i.3317 to i32 *)
cast v_conv4_i_i_1_3@uint32 v_conv5_i_i_3317@uint8;
(*   %shr.i.i.1.3 = ashr i32 %conv4.i.i.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i_1_3 tmp_to_be_used v_conv4_i_i_1_3 1;
(*   %conv5.i.i.1.3 = trunc i32 %shr.i.i.1.3 to i8 *)
split tmp_v_shr_i_i_1_3 v_conv5_i_i_1_3 v_shr_i_i_1_3 8;
vpc v_conv5_i_i_1_3@uint8 v_conv5_i_i_1_3@uint32;
(*   %conv6.i.i.1.3 = zext i8 %conv7.i.i.3320 to i32 *)
cast v_conv6_i_i_1_3@uint32 v_conv7_i_i_3320@uint8;
(*   %shl.i.i.1.3 = shl i32 %conv6.i.i.1.3, 1 *)
shls discard_22 v_shl_i_i_1_3 v_conv6_i_i_1_3 1;
(*   %conv7.i.i.1.3 = trunc i32 %shl.i.i.1.3 to i8 *)
split tmp_v_shl_i_i_1_3 v_conv7_i_i_1_3 v_shl_i_i_1_3 8;
vpc v_conv7_i_i_1_3@uint8 v_conv7_i_i_1_3@uint32;
(*   %conv.i.i.2.3 = zext i8 %conv5.i.i.1.3 to i32 *)
cast v_conv_i_i_2_3@uint32 v_conv5_i_i_1_3@uint8;
(*   %and.i.i.2.3 = and i32 %conv.i.i.2.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_2_3 v_conv_i_i_2_3 (0x1)@uint32;
(*   %conv1.i.i.2.3 = zext i8 %conv7.i.i.1.3 to i32 *)
cast v_conv1_i_i_2_3@uint32 v_conv7_i_i_1_3@uint8;
(*   %mul.i.i.2.3 = mul nsw i32 %and.i.i.2.3, %conv1.i.i.2.3 *)
mul v_mul_i_i_2_3 v_and_i_i_2_3 v_conv1_i_i_2_3;
(*   %conv2.i.i.2.3 = zext i8 %conv3.i.i.1.3 to i32 *)
cast v_conv2_i_i_2_3@uint32 v_conv3_i_i_1_3@uint8;
(*   %xor.i.i.2.3 = xor i32 %conv2.i.i.2.3, %mul.i.i.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_2_3 v_conv2_i_i_2_3 v_mul_i_i_2_3;
(*   %conv3.i.i.2.3 = trunc i32 %xor.i.i.2.3 to i8 *)
split tmp_v_xor_i_i_2_3 v_conv3_i_i_2_3 v_xor_i_i_2_3 8;
vpc v_conv3_i_i_2_3@uint8 v_conv3_i_i_2_3@uint32;
(*   %conv4.i.i.2.3 = zext i8 %conv5.i.i.1.3 to i32 *)
cast v_conv4_i_i_2_3@uint32 v_conv5_i_i_1_3@uint8;
(*   %shr.i.i.2.3 = ashr i32 %conv4.i.i.2.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i_2_3 tmp_to_be_used v_conv4_i_i_2_3 1;
(*   %conv5.i.i.2.3 = trunc i32 %shr.i.i.2.3 to i8 *)
split tmp_v_shr_i_i_2_3 v_conv5_i_i_2_3 v_shr_i_i_2_3 8;
vpc v_conv5_i_i_2_3@uint8 v_conv5_i_i_2_3@uint32;
(*   %conv6.i.i.2.3 = zext i8 %conv7.i.i.1.3 to i32 *)
cast v_conv6_i_i_2_3@uint32 v_conv7_i_i_1_3@uint8;
(*   %shl.i.i.2.3 = shl i32 %conv6.i.i.2.3, 1 *)
shls discard_23 v_shl_i_i_2_3 v_conv6_i_i_2_3 1;
(*   %conv7.i.i.2.3 = trunc i32 %shl.i.i.2.3 to i8 *)
split tmp_v_shl_i_i_2_3 v_conv7_i_i_2_3 v_shl_i_i_2_3 8;
vpc v_conv7_i_i_2_3@uint8 v_conv7_i_i_2_3@uint32;
(*   %conv.i.i.3.3 = zext i8 %conv5.i.i.2.3 to i32 *)
cast v_conv_i_i_3_3@uint32 v_conv5_i_i_2_3@uint8;
(*   %and.i.i.3.3 = and i32 %conv.i.i.3.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_3_3 v_conv_i_i_3_3 (0x1)@uint32;
(*   %conv1.i.i.3.3 = zext i8 %conv7.i.i.2.3 to i32 *)
cast v_conv1_i_i_3_3@uint32 v_conv7_i_i_2_3@uint8;
(*   %mul.i.i.3.3 = mul nsw i32 %and.i.i.3.3, %conv1.i.i.3.3 *)
mul v_mul_i_i_3_3 v_and_i_i_3_3 v_conv1_i_i_3_3;
(*   %conv2.i.i.3.3 = zext i8 %conv3.i.i.2.3 to i32 *)
cast v_conv2_i_i_3_3@uint32 v_conv3_i_i_2_3@uint8;
(*   %xor.i.i.3.3 = xor i32 %conv2.i.i.3.3, %mul.i.i.3.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_3_3 v_conv2_i_i_3_3 v_mul_i_i_3_3;
(*   %conv3.i.i.3.3 = trunc i32 %xor.i.i.3.3 to i8 *)
split tmp_v_xor_i_i_3_3 v_conv3_i_i_3_3 v_xor_i_i_3_3 8;
vpc v_conv3_i_i_3_3@uint8 v_conv3_i_i_3_3@uint32;
(*   %conv4.i.i.3.3 = zext i8 %conv5.i.i.2.3 to i32 *)
cast v_conv4_i_i_3_3@uint32 v_conv5_i_i_2_3@uint8;
(*   %shr.i.i.3.3 = ashr i32 %conv4.i.i.3.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i_3_3 tmp_to_be_used v_conv4_i_i_3_3 1;
(*   %conv5.i.i.3.3 = trunc i32 %shr.i.i.3.3 to i8 *)
split tmp_v_shr_i_i_3_3 v_conv5_i_i_3_3 v_shr_i_i_3_3 8;
vpc v_conv5_i_i_3_3@uint8 v_conv5_i_i_3_3@uint32;
(*   %conv6.i.i.3.3 = zext i8 %conv7.i.i.2.3 to i32 *)
cast v_conv6_i_i_3_3@uint32 v_conv7_i_i_2_3@uint8;
(*   %shl.i.i.3.3 = shl i32 %conv6.i.i.3.3, 1 *)
shls discard_24 v_shl_i_i_3_3 v_conv6_i_i_3_3 1;
(*   %conv7.i.i.3.3 = trunc i32 %shl.i.i.3.3 to i8 *)
split tmp_v_shl_i_i_3_3 v_conv7_i_i_3_3 v_shl_i_i_3_3 8;
vpc v_conv7_i_i_3_3@uint8 v_conv7_i_i_3_3@uint32;
(*   %conv.i.i.4.3 = zext i8 %conv5.i.i.3.3 to i32 *)
cast v_conv_i_i_4_3@uint32 v_conv5_i_i_3_3@uint8;
(*   %and.i.i.4.3 = and i32 %conv.i.i.4.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_4_3 v_conv_i_i_4_3 (0x1)@uint32;
(*   %conv1.i.i.4.3 = zext i8 %conv7.i.i.3.3 to i32 *)
cast v_conv1_i_i_4_3@uint32 v_conv7_i_i_3_3@uint8;
(*   %mul.i.i.4.3 = mul nsw i32 %and.i.i.4.3, %conv1.i.i.4.3 *)
mul v_mul_i_i_4_3 v_and_i_i_4_3 v_conv1_i_i_4_3;
(*   %conv2.i.i.4.3 = zext i8 %conv3.i.i.3.3 to i32 *)
cast v_conv2_i_i_4_3@uint32 v_conv3_i_i_3_3@uint8;
(*   %xor.i.i.4.3 = xor i32 %conv2.i.i.4.3, %mul.i.i.4.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_4_3 v_conv2_i_i_4_3 v_mul_i_i_4_3;
(*   %conv3.i.i.4.3 = trunc i32 %xor.i.i.4.3 to i8 *)
split tmp_v_xor_i_i_4_3 v_conv3_i_i_4_3 v_xor_i_i_4_3 8;
vpc v_conv3_i_i_4_3@uint8 v_conv3_i_i_4_3@uint32;
(*   %conv4.i.i.4.3 = zext i8 %conv5.i.i.3.3 to i32 *)
cast v_conv4_i_i_4_3@uint32 v_conv5_i_i_3_3@uint8;
(*   %shr.i.i.4.3 = ashr i32 %conv4.i.i.4.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i_4_3 tmp_to_be_used v_conv4_i_i_4_3 1;
(*   %conv5.i.i.4.3 = trunc i32 %shr.i.i.4.3 to i8 *)
split tmp_v_shr_i_i_4_3 v_conv5_i_i_4_3 v_shr_i_i_4_3 8;
vpc v_conv5_i_i_4_3@uint8 v_conv5_i_i_4_3@uint32;
(*   %conv6.i.i.4.3 = zext i8 %conv7.i.i.3.3 to i32 *)
cast v_conv6_i_i_4_3@uint32 v_conv7_i_i_3_3@uint8;
(*   %shl.i.i.4.3 = shl i32 %conv6.i.i.4.3, 1 *)
shls discard_25 v_shl_i_i_4_3 v_conv6_i_i_4_3 1;
(*   %conv7.i.i.4.3 = trunc i32 %shl.i.i.4.3 to i8 *)
split tmp_v_shl_i_i_4_3 v_conv7_i_i_4_3 v_shl_i_i_4_3 8;
vpc v_conv7_i_i_4_3@uint8 v_conv7_i_i_4_3@uint32;
(*   %conv.i.i.5.3 = zext i8 %conv5.i.i.4.3 to i32 *)
cast v_conv_i_i_5_3@uint32 v_conv5_i_i_4_3@uint8;
(*   %and.i.i.5.3 = and i32 %conv.i.i.5.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_5_3 v_conv_i_i_5_3 (0x1)@uint32;
(*   %conv1.i.i.5.3 = zext i8 %conv7.i.i.4.3 to i32 *)
cast v_conv1_i_i_5_3@uint32 v_conv7_i_i_4_3@uint8;
(*   %mul.i.i.5.3 = mul nsw i32 %and.i.i.5.3, %conv1.i.i.5.3 *)
mul v_mul_i_i_5_3 v_and_i_i_5_3 v_conv1_i_i_5_3;
(*   %conv2.i.i.5.3 = zext i8 %conv3.i.i.4.3 to i32 *)
cast v_conv2_i_i_5_3@uint32 v_conv3_i_i_4_3@uint8;
(*   %xor.i.i.5.3 = xor i32 %conv2.i.i.5.3, %mul.i.i.5.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_5_3 v_conv2_i_i_5_3 v_mul_i_i_5_3;
(*   %conv3.i.i.5.3 = trunc i32 %xor.i.i.5.3 to i8 *)
split tmp_v_xor_i_i_5_3 v_conv3_i_i_5_3 v_xor_i_i_5_3 8;
vpc v_conv3_i_i_5_3@uint8 v_conv3_i_i_5_3@uint32;
(*   %conv4.i.i.5.3 = zext i8 %conv5.i.i.4.3 to i32 *)
cast v_conv4_i_i_5_3@uint32 v_conv5_i_i_4_3@uint8;
(*   %shr.i.i.5.3 = ashr i32 %conv4.i.i.5.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i_5_3 tmp_to_be_used v_conv4_i_i_5_3 1;
(*   %conv5.i.i.5.3 = trunc i32 %shr.i.i.5.3 to i8 *)
split tmp_v_shr_i_i_5_3 v_conv5_i_i_5_3 v_shr_i_i_5_3 8;
vpc v_conv5_i_i_5_3@uint8 v_conv5_i_i_5_3@uint32;
(*   %conv6.i.i.5.3 = zext i8 %conv7.i.i.4.3 to i32 *)
cast v_conv6_i_i_5_3@uint32 v_conv7_i_i_4_3@uint8;
(*   %shl.i.i.5.3 = shl i32 %conv6.i.i.5.3, 1 *)
shls discard_26 v_shl_i_i_5_3 v_conv6_i_i_5_3 1;
(*   %conv7.i.i.5.3 = trunc i32 %shl.i.i.5.3 to i8 *)
split tmp_v_shl_i_i_5_3 v_conv7_i_i_5_3 v_shl_i_i_5_3 8;
vpc v_conv7_i_i_5_3@uint8 v_conv7_i_i_5_3@uint32;
(*   %conv.i.i.6.3 = zext i8 %conv5.i.i.5.3 to i32 *)
cast v_conv_i_i_6_3@uint32 v_conv5_i_i_5_3@uint8;
(*   %and.i.i.6.3 = and i32 %conv.i.i.6.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_6_3 v_conv_i_i_6_3 (0x1)@uint32;
(*   %conv1.i.i.6.3 = zext i8 %conv7.i.i.5.3 to i32 *)
cast v_conv1_i_i_6_3@uint32 v_conv7_i_i_5_3@uint8;
(*   %mul.i.i.6.3 = mul nsw i32 %and.i.i.6.3, %conv1.i.i.6.3 *)
mul v_mul_i_i_6_3 v_and_i_i_6_3 v_conv1_i_i_6_3;
(*   %conv2.i.i.6.3 = zext i8 %conv3.i.i.5.3 to i32 *)
cast v_conv2_i_i_6_3@uint32 v_conv3_i_i_5_3@uint8;
(*   %xor.i.i.6.3 = xor i32 %conv2.i.i.6.3, %mul.i.i.6.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_6_3 v_conv2_i_i_6_3 v_mul_i_i_6_3;
(*   %conv3.i.i.6.3 = trunc i32 %xor.i.i.6.3 to i8 *)
split tmp_v_xor_i_i_6_3 v_conv3_i_i_6_3 v_xor_i_i_6_3 8;
vpc v_conv3_i_i_6_3@uint8 v_conv3_i_i_6_3@uint32;
(*   %conv4.i.i.6.3 = zext i8 %conv5.i.i.5.3 to i32 *)
cast v_conv4_i_i_6_3@uint32 v_conv5_i_i_5_3@uint8;
(*   %shr.i.i.6.3 = ashr i32 %conv4.i.i.6.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i_6_3 tmp_to_be_used v_conv4_i_i_6_3 1;
(*   %conv5.i.i.6.3 = trunc i32 %shr.i.i.6.3 to i8 *)
split tmp_v_shr_i_i_6_3 v_conv5_i_i_6_3 v_shr_i_i_6_3 8;
vpc v_conv5_i_i_6_3@uint8 v_conv5_i_i_6_3@uint32;
(*   %conv6.i.i.6.3 = zext i8 %conv7.i.i.5.3 to i32 *)
cast v_conv6_i_i_6_3@uint32 v_conv7_i_i_5_3@uint8;
(*   %shl.i.i.6.3 = shl i32 %conv6.i.i.6.3, 1 *)
shls discard_27 v_shl_i_i_6_3 v_conv6_i_i_6_3 1;
(*   %conv7.i.i.6.3 = trunc i32 %shl.i.i.6.3 to i8 *)
split tmp_v_shl_i_i_6_3 v_conv7_i_i_6_3 v_shl_i_i_6_3 8;
vpc v_conv7_i_i_6_3@uint8 v_conv7_i_i_6_3@uint32;
(*   %conv.i.i.7.3 = zext i8 %conv5.i.i.6.3 to i32 *)
cast v_conv_i_i_7_3@uint32 v_conv5_i_i_6_3@uint8;
(*   %and.i.i.7.3 = and i32 %conv.i.i.7.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_7_3 v_conv_i_i_7_3 (0x1)@uint32;
(*   %conv1.i.i.7.3 = zext i8 %conv7.i.i.6.3 to i32 *)
cast v_conv1_i_i_7_3@uint32 v_conv7_i_i_6_3@uint8;
(*   %mul.i.i.7.3 = mul nsw i32 %and.i.i.7.3, %conv1.i.i.7.3 *)
mul v_mul_i_i_7_3 v_and_i_i_7_3 v_conv1_i_i_7_3;
(*   %conv2.i.i.7.3 = zext i8 %conv3.i.i.6.3 to i32 *)
cast v_conv2_i_i_7_3@uint32 v_conv3_i_i_6_3@uint8;
(*   %xor.i.i.7.3 = xor i32 %conv2.i.i.7.3, %mul.i.i.7.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_7_3 v_conv2_i_i_7_3 v_mul_i_i_7_3;
(*   %conv3.i.i.7.3 = trunc i32 %xor.i.i.7.3 to i8 *)
split tmp_v_xor_i_i_7_3 v_conv3_i_i_7_3 v_xor_i_i_7_3 8;
vpc v_conv3_i_i_7_3@uint8 v_conv3_i_i_7_3@uint32;
(*   %arrayidx6.i.3 = getelementptr inbounds i8, i8* %c, i64 3 *)
(*   store i8 %conv3.i.i.7.3, i8* %arrayidx6.i.3, align 1 *)
mov c_3 v_conv3_i_i_7_3;
(*   %arrayidx.i.4 = getelementptr inbounds i8, i8* %a, i64 4 *)
(*   %8 = load i8, i8* %arrayidx.i.4, align 1 *)
mov v8 a_4;
(*   %arrayidx4.i.4 = getelementptr inbounds i8, i8* %b, i64 4 *)
(*   %9 = load i8, i8* %arrayidx4.i.4, align 1 *)
mov v9 b_4;
(*   %conv.i.i.4321 = zext i8 %9 to i32 *)
cast v_conv_i_i_4321@uint32 v9@uint8;
(*   %and.i.i.4322 = and i32 %conv.i.i.4321, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_4322 v_conv_i_i_4321 (0x1)@uint32;
(*   %conv1.i.i.4323 = zext i8 %8 to i32 *)
cast v_conv1_i_i_4323@uint32 v8@uint8;
(*   %mul.i.i.4324 = mul nsw i32 %and.i.i.4322, %conv1.i.i.4323 *)
mul v_mul_i_i_4324 v_and_i_i_4322 v_conv1_i_i_4323;
(*   %conv3.i.i.4325 = trunc i32 %mul.i.i.4324 to i8 *)
split tmp_v_mul_i_i_4324 v_conv3_i_i_4325 v_mul_i_i_4324 8;
vpc v_conv3_i_i_4325@uint8 v_conv3_i_i_4325@uint32;
(*   %conv4.i.i.4326 = zext i8 %9 to i32 *)
cast v_conv4_i_i_4326@uint32 v9@uint8;
(*   %shr.i.i.4327 = ashr i32 %conv4.i.i.4326, 1 *)
(* You may need to modify here *)
split v_shr_i_i_4327 tmp_to_be_used v_conv4_i_i_4326 1;
(*   %conv5.i.i.4328 = trunc i32 %shr.i.i.4327 to i8 *)
split tmp_v_shr_i_i_4327 v_conv5_i_i_4328 v_shr_i_i_4327 8;
vpc v_conv5_i_i_4328@uint8 v_conv5_i_i_4328@uint32;
(*   %conv6.i.i.4329 = zext i8 %8 to i32 *)
cast v_conv6_i_i_4329@uint32 v8@uint8;
(*   %shl.i.i.4330 = shl i32 %conv6.i.i.4329, 1 *)
shls discard_28 v_shl_i_i_4330 v_conv6_i_i_4329 1;
(*   %conv7.i.i.4331 = trunc i32 %shl.i.i.4330 to i8 *)
split tmp_v_shl_i_i_4330 v_conv7_i_i_4331 v_shl_i_i_4330 8;
vpc v_conv7_i_i_4331@uint8 v_conv7_i_i_4331@uint32;
(*   %conv.i.i.1.4 = zext i8 %conv5.i.i.4328 to i32 *)
cast v_conv_i_i_1_4@uint32 v_conv5_i_i_4328@uint8;
(*   %and.i.i.1.4 = and i32 %conv.i.i.1.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_1_4 v_conv_i_i_1_4 (0x1)@uint32;
(*   %conv1.i.i.1.4 = zext i8 %conv7.i.i.4331 to i32 *)
cast v_conv1_i_i_1_4@uint32 v_conv7_i_i_4331@uint8;
(*   %mul.i.i.1.4 = mul nsw i32 %and.i.i.1.4, %conv1.i.i.1.4 *)
mul v_mul_i_i_1_4 v_and_i_i_1_4 v_conv1_i_i_1_4;
(*   %conv2.i.i.1.4 = zext i8 %conv3.i.i.4325 to i32 *)
cast v_conv2_i_i_1_4@uint32 v_conv3_i_i_4325@uint8;
(*   %xor.i.i.1.4 = xor i32 %conv2.i.i.1.4, %mul.i.i.1.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_1_4 v_conv2_i_i_1_4 v_mul_i_i_1_4;
(*   %conv3.i.i.1.4 = trunc i32 %xor.i.i.1.4 to i8 *)
split tmp_v_xor_i_i_1_4 v_conv3_i_i_1_4 v_xor_i_i_1_4 8;
vpc v_conv3_i_i_1_4@uint8 v_conv3_i_i_1_4@uint32;
(*   %conv4.i.i.1.4 = zext i8 %conv5.i.i.4328 to i32 *)
cast v_conv4_i_i_1_4@uint32 v_conv5_i_i_4328@uint8;
(*   %shr.i.i.1.4 = ashr i32 %conv4.i.i.1.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i_1_4 tmp_to_be_used v_conv4_i_i_1_4 1;
(*   %conv5.i.i.1.4 = trunc i32 %shr.i.i.1.4 to i8 *)
split tmp_v_shr_i_i_1_4 v_conv5_i_i_1_4 v_shr_i_i_1_4 8;
vpc v_conv5_i_i_1_4@uint8 v_conv5_i_i_1_4@uint32;
(*   %conv6.i.i.1.4 = zext i8 %conv7.i.i.4331 to i32 *)
cast v_conv6_i_i_1_4@uint32 v_conv7_i_i_4331@uint8;
(*   %shl.i.i.1.4 = shl i32 %conv6.i.i.1.4, 1 *)
shls discard_29 v_shl_i_i_1_4 v_conv6_i_i_1_4 1;
(*   %conv7.i.i.1.4 = trunc i32 %shl.i.i.1.4 to i8 *)
split tmp_v_shl_i_i_1_4 v_conv7_i_i_1_4 v_shl_i_i_1_4 8;
vpc v_conv7_i_i_1_4@uint8 v_conv7_i_i_1_4@uint32;
(*   %conv.i.i.2.4 = zext i8 %conv5.i.i.1.4 to i32 *)
cast v_conv_i_i_2_4@uint32 v_conv5_i_i_1_4@uint8;
(*   %and.i.i.2.4 = and i32 %conv.i.i.2.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_2_4 v_conv_i_i_2_4 (0x1)@uint32;
(*   %conv1.i.i.2.4 = zext i8 %conv7.i.i.1.4 to i32 *)
cast v_conv1_i_i_2_4@uint32 v_conv7_i_i_1_4@uint8;
(*   %mul.i.i.2.4 = mul nsw i32 %and.i.i.2.4, %conv1.i.i.2.4 *)
mul v_mul_i_i_2_4 v_and_i_i_2_4 v_conv1_i_i_2_4;
(*   %conv2.i.i.2.4 = zext i8 %conv3.i.i.1.4 to i32 *)
cast v_conv2_i_i_2_4@uint32 v_conv3_i_i_1_4@uint8;
(*   %xor.i.i.2.4 = xor i32 %conv2.i.i.2.4, %mul.i.i.2.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_2_4 v_conv2_i_i_2_4 v_mul_i_i_2_4;
(*   %conv3.i.i.2.4 = trunc i32 %xor.i.i.2.4 to i8 *)
split tmp_v_xor_i_i_2_4 v_conv3_i_i_2_4 v_xor_i_i_2_4 8;
vpc v_conv3_i_i_2_4@uint8 v_conv3_i_i_2_4@uint32;
(*   %conv4.i.i.2.4 = zext i8 %conv5.i.i.1.4 to i32 *)
cast v_conv4_i_i_2_4@uint32 v_conv5_i_i_1_4@uint8;
(*   %shr.i.i.2.4 = ashr i32 %conv4.i.i.2.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i_2_4 tmp_to_be_used v_conv4_i_i_2_4 1;
(*   %conv5.i.i.2.4 = trunc i32 %shr.i.i.2.4 to i8 *)
split tmp_v_shr_i_i_2_4 v_conv5_i_i_2_4 v_shr_i_i_2_4 8;
vpc v_conv5_i_i_2_4@uint8 v_conv5_i_i_2_4@uint32;
(*   %conv6.i.i.2.4 = zext i8 %conv7.i.i.1.4 to i32 *)
cast v_conv6_i_i_2_4@uint32 v_conv7_i_i_1_4@uint8;
(*   %shl.i.i.2.4 = shl i32 %conv6.i.i.2.4, 1 *)
shls discard_30 v_shl_i_i_2_4 v_conv6_i_i_2_4 1;
(*   %conv7.i.i.2.4 = trunc i32 %shl.i.i.2.4 to i8 *)
split tmp_v_shl_i_i_2_4 v_conv7_i_i_2_4 v_shl_i_i_2_4 8;
vpc v_conv7_i_i_2_4@uint8 v_conv7_i_i_2_4@uint32;
(*   %conv.i.i.3.4 = zext i8 %conv5.i.i.2.4 to i32 *)
cast v_conv_i_i_3_4@uint32 v_conv5_i_i_2_4@uint8;
(*   %and.i.i.3.4 = and i32 %conv.i.i.3.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_3_4 v_conv_i_i_3_4 (0x1)@uint32;
(*   %conv1.i.i.3.4 = zext i8 %conv7.i.i.2.4 to i32 *)
cast v_conv1_i_i_3_4@uint32 v_conv7_i_i_2_4@uint8;
(*   %mul.i.i.3.4 = mul nsw i32 %and.i.i.3.4, %conv1.i.i.3.4 *)
mul v_mul_i_i_3_4 v_and_i_i_3_4 v_conv1_i_i_3_4;
(*   %conv2.i.i.3.4 = zext i8 %conv3.i.i.2.4 to i32 *)
cast v_conv2_i_i_3_4@uint32 v_conv3_i_i_2_4@uint8;
(*   %xor.i.i.3.4 = xor i32 %conv2.i.i.3.4, %mul.i.i.3.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_3_4 v_conv2_i_i_3_4 v_mul_i_i_3_4;
(*   %conv3.i.i.3.4 = trunc i32 %xor.i.i.3.4 to i8 *)
split tmp_v_xor_i_i_3_4 v_conv3_i_i_3_4 v_xor_i_i_3_4 8;
vpc v_conv3_i_i_3_4@uint8 v_conv3_i_i_3_4@uint32;
(*   %conv4.i.i.3.4 = zext i8 %conv5.i.i.2.4 to i32 *)
cast v_conv4_i_i_3_4@uint32 v_conv5_i_i_2_4@uint8;
(*   %shr.i.i.3.4 = ashr i32 %conv4.i.i.3.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i_3_4 tmp_to_be_used v_conv4_i_i_3_4 1;
(*   %conv5.i.i.3.4 = trunc i32 %shr.i.i.3.4 to i8 *)
split tmp_v_shr_i_i_3_4 v_conv5_i_i_3_4 v_shr_i_i_3_4 8;
vpc v_conv5_i_i_3_4@uint8 v_conv5_i_i_3_4@uint32;
(*   %conv6.i.i.3.4 = zext i8 %conv7.i.i.2.4 to i32 *)
cast v_conv6_i_i_3_4@uint32 v_conv7_i_i_2_4@uint8;
(*   %shl.i.i.3.4 = shl i32 %conv6.i.i.3.4, 1 *)
shls discard_31 v_shl_i_i_3_4 v_conv6_i_i_3_4 1;
(*   %conv7.i.i.3.4 = trunc i32 %shl.i.i.3.4 to i8 *)
split tmp_v_shl_i_i_3_4 v_conv7_i_i_3_4 v_shl_i_i_3_4 8;
vpc v_conv7_i_i_3_4@uint8 v_conv7_i_i_3_4@uint32;
(*   %conv.i.i.4.4 = zext i8 %conv5.i.i.3.4 to i32 *)
cast v_conv_i_i_4_4@uint32 v_conv5_i_i_3_4@uint8;
(*   %and.i.i.4.4 = and i32 %conv.i.i.4.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_4_4 v_conv_i_i_4_4 (0x1)@uint32;
(*   %conv1.i.i.4.4 = zext i8 %conv7.i.i.3.4 to i32 *)
cast v_conv1_i_i_4_4@uint32 v_conv7_i_i_3_4@uint8;
(*   %mul.i.i.4.4 = mul nsw i32 %and.i.i.4.4, %conv1.i.i.4.4 *)
mul v_mul_i_i_4_4 v_and_i_i_4_4 v_conv1_i_i_4_4;
(*   %conv2.i.i.4.4 = zext i8 %conv3.i.i.3.4 to i32 *)
cast v_conv2_i_i_4_4@uint32 v_conv3_i_i_3_4@uint8;
(*   %xor.i.i.4.4 = xor i32 %conv2.i.i.4.4, %mul.i.i.4.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_4_4 v_conv2_i_i_4_4 v_mul_i_i_4_4;
(*   %conv3.i.i.4.4 = trunc i32 %xor.i.i.4.4 to i8 *)
split tmp_v_xor_i_i_4_4 v_conv3_i_i_4_4 v_xor_i_i_4_4 8;
vpc v_conv3_i_i_4_4@uint8 v_conv3_i_i_4_4@uint32;
(*   %conv4.i.i.4.4 = zext i8 %conv5.i.i.3.4 to i32 *)
cast v_conv4_i_i_4_4@uint32 v_conv5_i_i_3_4@uint8;
(*   %shr.i.i.4.4 = ashr i32 %conv4.i.i.4.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i_4_4 tmp_to_be_used v_conv4_i_i_4_4 1;
(*   %conv5.i.i.4.4 = trunc i32 %shr.i.i.4.4 to i8 *)
split tmp_v_shr_i_i_4_4 v_conv5_i_i_4_4 v_shr_i_i_4_4 8;
vpc v_conv5_i_i_4_4@uint8 v_conv5_i_i_4_4@uint32;
(*   %conv6.i.i.4.4 = zext i8 %conv7.i.i.3.4 to i32 *)
cast v_conv6_i_i_4_4@uint32 v_conv7_i_i_3_4@uint8;
(*   %shl.i.i.4.4 = shl i32 %conv6.i.i.4.4, 1 *)
shls discard_32 v_shl_i_i_4_4 v_conv6_i_i_4_4 1;
(*   %conv7.i.i.4.4 = trunc i32 %shl.i.i.4.4 to i8 *)
split tmp_v_shl_i_i_4_4 v_conv7_i_i_4_4 v_shl_i_i_4_4 8;
vpc v_conv7_i_i_4_4@uint8 v_conv7_i_i_4_4@uint32;
(*   %conv.i.i.5.4 = zext i8 %conv5.i.i.4.4 to i32 *)
cast v_conv_i_i_5_4@uint32 v_conv5_i_i_4_4@uint8;
(*   %and.i.i.5.4 = and i32 %conv.i.i.5.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_5_4 v_conv_i_i_5_4 (0x1)@uint32;
(*   %conv1.i.i.5.4 = zext i8 %conv7.i.i.4.4 to i32 *)
cast v_conv1_i_i_5_4@uint32 v_conv7_i_i_4_4@uint8;
(*   %mul.i.i.5.4 = mul nsw i32 %and.i.i.5.4, %conv1.i.i.5.4 *)
mul v_mul_i_i_5_4 v_and_i_i_5_4 v_conv1_i_i_5_4;
(*   %conv2.i.i.5.4 = zext i8 %conv3.i.i.4.4 to i32 *)
cast v_conv2_i_i_5_4@uint32 v_conv3_i_i_4_4@uint8;
(*   %xor.i.i.5.4 = xor i32 %conv2.i.i.5.4, %mul.i.i.5.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_5_4 v_conv2_i_i_5_4 v_mul_i_i_5_4;
(*   %conv3.i.i.5.4 = trunc i32 %xor.i.i.5.4 to i8 *)
split tmp_v_xor_i_i_5_4 v_conv3_i_i_5_4 v_xor_i_i_5_4 8;
vpc v_conv3_i_i_5_4@uint8 v_conv3_i_i_5_4@uint32;
(*   %conv4.i.i.5.4 = zext i8 %conv5.i.i.4.4 to i32 *)
cast v_conv4_i_i_5_4@uint32 v_conv5_i_i_4_4@uint8;
(*   %shr.i.i.5.4 = ashr i32 %conv4.i.i.5.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i_5_4 tmp_to_be_used v_conv4_i_i_5_4 1;
(*   %conv5.i.i.5.4 = trunc i32 %shr.i.i.5.4 to i8 *)
split tmp_v_shr_i_i_5_4 v_conv5_i_i_5_4 v_shr_i_i_5_4 8;
vpc v_conv5_i_i_5_4@uint8 v_conv5_i_i_5_4@uint32;
(*   %conv6.i.i.5.4 = zext i8 %conv7.i.i.4.4 to i32 *)
cast v_conv6_i_i_5_4@uint32 v_conv7_i_i_4_4@uint8;
(*   %shl.i.i.5.4 = shl i32 %conv6.i.i.5.4, 1 *)
shls discard_33 v_shl_i_i_5_4 v_conv6_i_i_5_4 1;
(*   %conv7.i.i.5.4 = trunc i32 %shl.i.i.5.4 to i8 *)
split tmp_v_shl_i_i_5_4 v_conv7_i_i_5_4 v_shl_i_i_5_4 8;
vpc v_conv7_i_i_5_4@uint8 v_conv7_i_i_5_4@uint32;
(*   %conv.i.i.6.4 = zext i8 %conv5.i.i.5.4 to i32 *)
cast v_conv_i_i_6_4@uint32 v_conv5_i_i_5_4@uint8;
(*   %and.i.i.6.4 = and i32 %conv.i.i.6.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_6_4 v_conv_i_i_6_4 (0x1)@uint32;
(*   %conv1.i.i.6.4 = zext i8 %conv7.i.i.5.4 to i32 *)
cast v_conv1_i_i_6_4@uint32 v_conv7_i_i_5_4@uint8;
(*   %mul.i.i.6.4 = mul nsw i32 %and.i.i.6.4, %conv1.i.i.6.4 *)
mul v_mul_i_i_6_4 v_and_i_i_6_4 v_conv1_i_i_6_4;
(*   %conv2.i.i.6.4 = zext i8 %conv3.i.i.5.4 to i32 *)
cast v_conv2_i_i_6_4@uint32 v_conv3_i_i_5_4@uint8;
(*   %xor.i.i.6.4 = xor i32 %conv2.i.i.6.4, %mul.i.i.6.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_6_4 v_conv2_i_i_6_4 v_mul_i_i_6_4;
(*   %conv3.i.i.6.4 = trunc i32 %xor.i.i.6.4 to i8 *)
split tmp_v_xor_i_i_6_4 v_conv3_i_i_6_4 v_xor_i_i_6_4 8;
vpc v_conv3_i_i_6_4@uint8 v_conv3_i_i_6_4@uint32;
(*   %conv4.i.i.6.4 = zext i8 %conv5.i.i.5.4 to i32 *)
cast v_conv4_i_i_6_4@uint32 v_conv5_i_i_5_4@uint8;
(*   %shr.i.i.6.4 = ashr i32 %conv4.i.i.6.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i_6_4 tmp_to_be_used v_conv4_i_i_6_4 1;
(*   %conv5.i.i.6.4 = trunc i32 %shr.i.i.6.4 to i8 *)
split tmp_v_shr_i_i_6_4 v_conv5_i_i_6_4 v_shr_i_i_6_4 8;
vpc v_conv5_i_i_6_4@uint8 v_conv5_i_i_6_4@uint32;
(*   %conv6.i.i.6.4 = zext i8 %conv7.i.i.5.4 to i32 *)
cast v_conv6_i_i_6_4@uint32 v_conv7_i_i_5_4@uint8;
(*   %shl.i.i.6.4 = shl i32 %conv6.i.i.6.4, 1 *)
shls discard_34 v_shl_i_i_6_4 v_conv6_i_i_6_4 1;
(*   %conv7.i.i.6.4 = trunc i32 %shl.i.i.6.4 to i8 *)
split tmp_v_shl_i_i_6_4 v_conv7_i_i_6_4 v_shl_i_i_6_4 8;
vpc v_conv7_i_i_6_4@uint8 v_conv7_i_i_6_4@uint32;
(*   %conv.i.i.7.4 = zext i8 %conv5.i.i.6.4 to i32 *)
cast v_conv_i_i_7_4@uint32 v_conv5_i_i_6_4@uint8;
(*   %and.i.i.7.4 = and i32 %conv.i.i.7.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_7_4 v_conv_i_i_7_4 (0x1)@uint32;
(*   %conv1.i.i.7.4 = zext i8 %conv7.i.i.6.4 to i32 *)
cast v_conv1_i_i_7_4@uint32 v_conv7_i_i_6_4@uint8;
(*   %mul.i.i.7.4 = mul nsw i32 %and.i.i.7.4, %conv1.i.i.7.4 *)
mul v_mul_i_i_7_4 v_and_i_i_7_4 v_conv1_i_i_7_4;
(*   %conv2.i.i.7.4 = zext i8 %conv3.i.i.6.4 to i32 *)
cast v_conv2_i_i_7_4@uint32 v_conv3_i_i_6_4@uint8;
(*   %xor.i.i.7.4 = xor i32 %conv2.i.i.7.4, %mul.i.i.7.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_7_4 v_conv2_i_i_7_4 v_mul_i_i_7_4;
(*   %conv3.i.i.7.4 = trunc i32 %xor.i.i.7.4 to i8 *)
split tmp_v_xor_i_i_7_4 v_conv3_i_i_7_4 v_xor_i_i_7_4 8;
vpc v_conv3_i_i_7_4@uint8 v_conv3_i_i_7_4@uint32;
(*   %arrayidx6.i.4 = getelementptr inbounds i8, i8* %c, i64 4 *)
(*   store i8 %conv3.i.i.7.4, i8* %arrayidx6.i.4, align 1 *)
mov c_4 v_conv3_i_i_7_4;
(*   %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %ab1, i64 0, i64 0 *)
(*   %arraydecay3 = getelementptr inbounds [5 x i8], [5 x i8]* %a1b, i64 0, i64 0 *)
(*   %arraydecay6 = getelementptr inbounds [5 x i8], [5 x i8]* %ab2, i64 0, i64 0 *)
(*   %arraydecay9 = getelementptr inbounds [5 x i8], [5 x i8]* %a2b, i64 0, i64 0 *)
(*   %10 = load i8, i8* %a, align 1 *)
mov v10 a_0;
(*   %arrayidx4.i51 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %11 = load i8, i8* %arrayidx4.i51, align 1 *)
mov v11 b_1;
(*   %conv.i.i55 = zext i8 %11 to i32 *)
cast v_conv_i_i55@uint32 v11@uint8;
(*   %and.i.i56 = and i32 %conv.i.i55, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i56 v_conv_i_i55 (0x1)@uint32;
(*   %conv1.i.i57 = zext i8 %10 to i32 *)
cast v_conv1_i_i57@uint32 v10@uint8;
(*   %mul.i.i58 = mul nsw i32 %and.i.i56, %conv1.i.i57 *)
mul v_mul_i_i58 v_and_i_i56 v_conv1_i_i57;
(*   %conv3.i.i61 = trunc i32 %mul.i.i58 to i8 *)
split tmp_v_mul_i_i58 v_conv3_i_i61 v_mul_i_i58 8;
vpc v_conv3_i_i61@uint8 v_conv3_i_i61@uint32;
(*   %conv4.i.i62 = zext i8 %11 to i32 *)
cast v_conv4_i_i62@uint32 v11@uint8;
(*   %shr.i.i63 = ashr i32 %conv4.i.i62, 1 *)
(* You may need to modify here *)
split v_shr_i_i63 tmp_to_be_used v_conv4_i_i62 1;
(*   %conv5.i.i64 = trunc i32 %shr.i.i63 to i8 *)
split tmp_v_shr_i_i63 v_conv5_i_i64 v_shr_i_i63 8;
vpc v_conv5_i_i64@uint8 v_conv5_i_i64@uint32;
(*   %conv6.i.i65 = zext i8 %10 to i32 *)
cast v_conv6_i_i65@uint32 v10@uint8;
(*   %shl.i.i66 = shl i32 %conv6.i.i65, 1 *)
shls discard_35 v_shl_i_i66 v_conv6_i_i65 1;
(*   %conv7.i.i67 = trunc i32 %shl.i.i66 to i8 *)
split tmp_v_shl_i_i66 v_conv7_i_i67 v_shl_i_i66 8;
vpc v_conv7_i_i67@uint8 v_conv7_i_i67@uint32;
(*   %conv.i.i55.1 = zext i8 %conv5.i.i64 to i32 *)
cast v_conv_i_i55_1@uint32 v_conv5_i_i64@uint8;
(*   %and.i.i56.1 = and i32 %conv.i.i55.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i56_1 v_conv_i_i55_1 (0x1)@uint32;
(*   %conv1.i.i57.1 = zext i8 %conv7.i.i67 to i32 *)
cast v_conv1_i_i57_1@uint32 v_conv7_i_i67@uint8;
(*   %mul.i.i58.1 = mul nsw i32 %and.i.i56.1, %conv1.i.i57.1 *)
mul v_mul_i_i58_1 v_and_i_i56_1 v_conv1_i_i57_1;
(*   %conv2.i.i59.1 = zext i8 %conv3.i.i61 to i32 *)
cast v_conv2_i_i59_1@uint32 v_conv3_i_i61@uint8;
(*   %xor.i.i60.1 = xor i32 %conv2.i.i59.1, %mul.i.i58.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i60_1 v_conv2_i_i59_1 v_mul_i_i58_1;
(*   %conv3.i.i61.1 = trunc i32 %xor.i.i60.1 to i8 *)
split tmp_v_xor_i_i60_1 v_conv3_i_i61_1 v_xor_i_i60_1 8;
vpc v_conv3_i_i61_1@uint8 v_conv3_i_i61_1@uint32;
(*   %conv4.i.i62.1 = zext i8 %conv5.i.i64 to i32 *)
cast v_conv4_i_i62_1@uint32 v_conv5_i_i64@uint8;
(*   %shr.i.i63.1 = ashr i32 %conv4.i.i62.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i63_1 tmp_to_be_used v_conv4_i_i62_1 1;
(*   %conv5.i.i64.1 = trunc i32 %shr.i.i63.1 to i8 *)
split tmp_v_shr_i_i63_1 v_conv5_i_i64_1 v_shr_i_i63_1 8;
vpc v_conv5_i_i64_1@uint8 v_conv5_i_i64_1@uint32;
(*   %conv6.i.i65.1 = zext i8 %conv7.i.i67 to i32 *)
cast v_conv6_i_i65_1@uint32 v_conv7_i_i67@uint8;
(*   %shl.i.i66.1 = shl i32 %conv6.i.i65.1, 1 *)
shls discard_36 v_shl_i_i66_1 v_conv6_i_i65_1 1;
(*   %conv7.i.i67.1 = trunc i32 %shl.i.i66.1 to i8 *)
split tmp_v_shl_i_i66_1 v_conv7_i_i67_1 v_shl_i_i66_1 8;
vpc v_conv7_i_i67_1@uint8 v_conv7_i_i67_1@uint32;
(*   %conv.i.i55.2 = zext i8 %conv5.i.i64.1 to i32 *)
cast v_conv_i_i55_2@uint32 v_conv5_i_i64_1@uint8;
(*   %and.i.i56.2 = and i32 %conv.i.i55.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i56_2 v_conv_i_i55_2 (0x1)@uint32;
(*   %conv1.i.i57.2 = zext i8 %conv7.i.i67.1 to i32 *)
cast v_conv1_i_i57_2@uint32 v_conv7_i_i67_1@uint8;
(*   %mul.i.i58.2 = mul nsw i32 %and.i.i56.2, %conv1.i.i57.2 *)
mul v_mul_i_i58_2 v_and_i_i56_2 v_conv1_i_i57_2;
(*   %conv2.i.i59.2 = zext i8 %conv3.i.i61.1 to i32 *)
cast v_conv2_i_i59_2@uint32 v_conv3_i_i61_1@uint8;
(*   %xor.i.i60.2 = xor i32 %conv2.i.i59.2, %mul.i.i58.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i60_2 v_conv2_i_i59_2 v_mul_i_i58_2;
(*   %conv3.i.i61.2 = trunc i32 %xor.i.i60.2 to i8 *)
split tmp_v_xor_i_i60_2 v_conv3_i_i61_2 v_xor_i_i60_2 8;
vpc v_conv3_i_i61_2@uint8 v_conv3_i_i61_2@uint32;
(*   %conv4.i.i62.2 = zext i8 %conv5.i.i64.1 to i32 *)
cast v_conv4_i_i62_2@uint32 v_conv5_i_i64_1@uint8;
(*   %shr.i.i63.2 = ashr i32 %conv4.i.i62.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i63_2 tmp_to_be_used v_conv4_i_i62_2 1;
(*   %conv5.i.i64.2 = trunc i32 %shr.i.i63.2 to i8 *)
split tmp_v_shr_i_i63_2 v_conv5_i_i64_2 v_shr_i_i63_2 8;
vpc v_conv5_i_i64_2@uint8 v_conv5_i_i64_2@uint32;
(*   %conv6.i.i65.2 = zext i8 %conv7.i.i67.1 to i32 *)
cast v_conv6_i_i65_2@uint32 v_conv7_i_i67_1@uint8;
(*   %shl.i.i66.2 = shl i32 %conv6.i.i65.2, 1 *)
shls discard_37 v_shl_i_i66_2 v_conv6_i_i65_2 1;
(*   %conv7.i.i67.2 = trunc i32 %shl.i.i66.2 to i8 *)
split tmp_v_shl_i_i66_2 v_conv7_i_i67_2 v_shl_i_i66_2 8;
vpc v_conv7_i_i67_2@uint8 v_conv7_i_i67_2@uint32;
(*   %conv.i.i55.3 = zext i8 %conv5.i.i64.2 to i32 *)
cast v_conv_i_i55_3@uint32 v_conv5_i_i64_2@uint8;
(*   %and.i.i56.3 = and i32 %conv.i.i55.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i56_3 v_conv_i_i55_3 (0x1)@uint32;
(*   %conv1.i.i57.3 = zext i8 %conv7.i.i67.2 to i32 *)
cast v_conv1_i_i57_3@uint32 v_conv7_i_i67_2@uint8;
(*   %mul.i.i58.3 = mul nsw i32 %and.i.i56.3, %conv1.i.i57.3 *)
mul v_mul_i_i58_3 v_and_i_i56_3 v_conv1_i_i57_3;
(*   %conv2.i.i59.3 = zext i8 %conv3.i.i61.2 to i32 *)
cast v_conv2_i_i59_3@uint32 v_conv3_i_i61_2@uint8;
(*   %xor.i.i60.3 = xor i32 %conv2.i.i59.3, %mul.i.i58.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i60_3 v_conv2_i_i59_3 v_mul_i_i58_3;
(*   %conv3.i.i61.3 = trunc i32 %xor.i.i60.3 to i8 *)
split tmp_v_xor_i_i60_3 v_conv3_i_i61_3 v_xor_i_i60_3 8;
vpc v_conv3_i_i61_3@uint8 v_conv3_i_i61_3@uint32;
(*   %conv4.i.i62.3 = zext i8 %conv5.i.i64.2 to i32 *)
cast v_conv4_i_i62_3@uint32 v_conv5_i_i64_2@uint8;
(*   %shr.i.i63.3 = ashr i32 %conv4.i.i62.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i63_3 tmp_to_be_used v_conv4_i_i62_3 1;
(*   %conv5.i.i64.3 = trunc i32 %shr.i.i63.3 to i8 *)
split tmp_v_shr_i_i63_3 v_conv5_i_i64_3 v_shr_i_i63_3 8;
vpc v_conv5_i_i64_3@uint8 v_conv5_i_i64_3@uint32;
(*   %conv6.i.i65.3 = zext i8 %conv7.i.i67.2 to i32 *)
cast v_conv6_i_i65_3@uint32 v_conv7_i_i67_2@uint8;
(*   %shl.i.i66.3 = shl i32 %conv6.i.i65.3, 1 *)
shls discard_38 v_shl_i_i66_3 v_conv6_i_i65_3 1;
(*   %conv7.i.i67.3 = trunc i32 %shl.i.i66.3 to i8 *)
split tmp_v_shl_i_i66_3 v_conv7_i_i67_3 v_shl_i_i66_3 8;
vpc v_conv7_i_i67_3@uint8 v_conv7_i_i67_3@uint32;
(*   %conv.i.i55.4 = zext i8 %conv5.i.i64.3 to i32 *)
cast v_conv_i_i55_4@uint32 v_conv5_i_i64_3@uint8;
(*   %and.i.i56.4 = and i32 %conv.i.i55.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i56_4 v_conv_i_i55_4 (0x1)@uint32;
(*   %conv1.i.i57.4 = zext i8 %conv7.i.i67.3 to i32 *)
cast v_conv1_i_i57_4@uint32 v_conv7_i_i67_3@uint8;
(*   %mul.i.i58.4 = mul nsw i32 %and.i.i56.4, %conv1.i.i57.4 *)
mul v_mul_i_i58_4 v_and_i_i56_4 v_conv1_i_i57_4;
(*   %conv2.i.i59.4 = zext i8 %conv3.i.i61.3 to i32 *)
cast v_conv2_i_i59_4@uint32 v_conv3_i_i61_3@uint8;
(*   %xor.i.i60.4 = xor i32 %conv2.i.i59.4, %mul.i.i58.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i60_4 v_conv2_i_i59_4 v_mul_i_i58_4;
(*   %conv3.i.i61.4 = trunc i32 %xor.i.i60.4 to i8 *)
split tmp_v_xor_i_i60_4 v_conv3_i_i61_4 v_xor_i_i60_4 8;
vpc v_conv3_i_i61_4@uint8 v_conv3_i_i61_4@uint32;
(*   %conv4.i.i62.4 = zext i8 %conv5.i.i64.3 to i32 *)
cast v_conv4_i_i62_4@uint32 v_conv5_i_i64_3@uint8;
(*   %shr.i.i63.4 = ashr i32 %conv4.i.i62.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i63_4 tmp_to_be_used v_conv4_i_i62_4 1;
(*   %conv5.i.i64.4 = trunc i32 %shr.i.i63.4 to i8 *)
split tmp_v_shr_i_i63_4 v_conv5_i_i64_4 v_shr_i_i63_4 8;
vpc v_conv5_i_i64_4@uint8 v_conv5_i_i64_4@uint32;
(*   %conv6.i.i65.4 = zext i8 %conv7.i.i67.3 to i32 *)
cast v_conv6_i_i65_4@uint32 v_conv7_i_i67_3@uint8;
(*   %shl.i.i66.4 = shl i32 %conv6.i.i65.4, 1 *)
shls discard_39 v_shl_i_i66_4 v_conv6_i_i65_4 1;
(*   %conv7.i.i67.4 = trunc i32 %shl.i.i66.4 to i8 *)
split tmp_v_shl_i_i66_4 v_conv7_i_i67_4 v_shl_i_i66_4 8;
vpc v_conv7_i_i67_4@uint8 v_conv7_i_i67_4@uint32;
(*   %conv.i.i55.5 = zext i8 %conv5.i.i64.4 to i32 *)
cast v_conv_i_i55_5@uint32 v_conv5_i_i64_4@uint8;
(*   %and.i.i56.5 = and i32 %conv.i.i55.5, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i56_5 v_conv_i_i55_5 (0x1)@uint32;
(*   %conv1.i.i57.5 = zext i8 %conv7.i.i67.4 to i32 *)
cast v_conv1_i_i57_5@uint32 v_conv7_i_i67_4@uint8;
(*   %mul.i.i58.5 = mul nsw i32 %and.i.i56.5, %conv1.i.i57.5 *)
mul v_mul_i_i58_5 v_and_i_i56_5 v_conv1_i_i57_5;
(*   %conv2.i.i59.5 = zext i8 %conv3.i.i61.4 to i32 *)
cast v_conv2_i_i59_5@uint32 v_conv3_i_i61_4@uint8;
(*   %xor.i.i60.5 = xor i32 %conv2.i.i59.5, %mul.i.i58.5 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i60_5 v_conv2_i_i59_5 v_mul_i_i58_5;
(*   %conv3.i.i61.5 = trunc i32 %xor.i.i60.5 to i8 *)
split tmp_v_xor_i_i60_5 v_conv3_i_i61_5 v_xor_i_i60_5 8;
vpc v_conv3_i_i61_5@uint8 v_conv3_i_i61_5@uint32;
(*   %conv4.i.i62.5 = zext i8 %conv5.i.i64.4 to i32 *)
cast v_conv4_i_i62_5@uint32 v_conv5_i_i64_4@uint8;
(*   %shr.i.i63.5 = ashr i32 %conv4.i.i62.5, 1 *)
(* You may need to modify here *)
split v_shr_i_i63_5 tmp_to_be_used v_conv4_i_i62_5 1;
(*   %conv5.i.i64.5 = trunc i32 %shr.i.i63.5 to i8 *)
split tmp_v_shr_i_i63_5 v_conv5_i_i64_5 v_shr_i_i63_5 8;
vpc v_conv5_i_i64_5@uint8 v_conv5_i_i64_5@uint32;
(*   %conv6.i.i65.5 = zext i8 %conv7.i.i67.4 to i32 *)
cast v_conv6_i_i65_5@uint32 v_conv7_i_i67_4@uint8;
(*   %shl.i.i66.5 = shl i32 %conv6.i.i65.5, 1 *)
shls discard_40 v_shl_i_i66_5 v_conv6_i_i65_5 1;
(*   %conv7.i.i67.5 = trunc i32 %shl.i.i66.5 to i8 *)
split tmp_v_shl_i_i66_5 v_conv7_i_i67_5 v_shl_i_i66_5 8;
vpc v_conv7_i_i67_5@uint8 v_conv7_i_i67_5@uint32;
(*   %conv.i.i55.6 = zext i8 %conv5.i.i64.5 to i32 *)
cast v_conv_i_i55_6@uint32 v_conv5_i_i64_5@uint8;
(*   %and.i.i56.6 = and i32 %conv.i.i55.6, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i56_6 v_conv_i_i55_6 (0x1)@uint32;
(*   %conv1.i.i57.6 = zext i8 %conv7.i.i67.5 to i32 *)
cast v_conv1_i_i57_6@uint32 v_conv7_i_i67_5@uint8;
(*   %mul.i.i58.6 = mul nsw i32 %and.i.i56.6, %conv1.i.i57.6 *)
mul v_mul_i_i58_6 v_and_i_i56_6 v_conv1_i_i57_6;
(*   %conv2.i.i59.6 = zext i8 %conv3.i.i61.5 to i32 *)
cast v_conv2_i_i59_6@uint32 v_conv3_i_i61_5@uint8;
(*   %xor.i.i60.6 = xor i32 %conv2.i.i59.6, %mul.i.i58.6 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i60_6 v_conv2_i_i59_6 v_mul_i_i58_6;
(*   %conv3.i.i61.6 = trunc i32 %xor.i.i60.6 to i8 *)
split tmp_v_xor_i_i60_6 v_conv3_i_i61_6 v_xor_i_i60_6 8;
vpc v_conv3_i_i61_6@uint8 v_conv3_i_i61_6@uint32;
(*   %conv4.i.i62.6 = zext i8 %conv5.i.i64.5 to i32 *)
cast v_conv4_i_i62_6@uint32 v_conv5_i_i64_5@uint8;
(*   %shr.i.i63.6 = ashr i32 %conv4.i.i62.6, 1 *)
(* You may need to modify here *)
split v_shr_i_i63_6 tmp_to_be_used v_conv4_i_i62_6 1;
(*   %conv5.i.i64.6 = trunc i32 %shr.i.i63.6 to i8 *)
split tmp_v_shr_i_i63_6 v_conv5_i_i64_6 v_shr_i_i63_6 8;
vpc v_conv5_i_i64_6@uint8 v_conv5_i_i64_6@uint32;
(*   %conv6.i.i65.6 = zext i8 %conv7.i.i67.5 to i32 *)
cast v_conv6_i_i65_6@uint32 v_conv7_i_i67_5@uint8;
(*   %shl.i.i66.6 = shl i32 %conv6.i.i65.6, 1 *)
shls discard_41 v_shl_i_i66_6 v_conv6_i_i65_6 1;
(*   %conv7.i.i67.6 = trunc i32 %shl.i.i66.6 to i8 *)
split tmp_v_shl_i_i66_6 v_conv7_i_i67_6 v_shl_i_i66_6 8;
vpc v_conv7_i_i67_6@uint8 v_conv7_i_i67_6@uint32;
(*   %conv.i.i55.7 = zext i8 %conv5.i.i64.6 to i32 *)
cast v_conv_i_i55_7@uint32 v_conv5_i_i64_6@uint8;
(*   %and.i.i56.7 = and i32 %conv.i.i55.7, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i56_7 v_conv_i_i55_7 (0x1)@uint32;
(*   %conv1.i.i57.7 = zext i8 %conv7.i.i67.6 to i32 *)
cast v_conv1_i_i57_7@uint32 v_conv7_i_i67_6@uint8;
(*   %mul.i.i58.7 = mul nsw i32 %and.i.i56.7, %conv1.i.i57.7 *)
mul v_mul_i_i58_7 v_and_i_i56_7 v_conv1_i_i57_7;
(*   %conv2.i.i59.7 = zext i8 %conv3.i.i61.6 to i32 *)
cast v_conv2_i_i59_7@uint32 v_conv3_i_i61_6@uint8;
(*   %xor.i.i60.7 = xor i32 %conv2.i.i59.7, %mul.i.i58.7 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i60_7 v_conv2_i_i59_7 v_mul_i_i58_7;
(*   %conv3.i.i61.7 = trunc i32 %xor.i.i60.7 to i8 *)
split tmp_v_xor_i_i60_7 v_conv3_i_i61_7 v_xor_i_i60_7 8;
vpc v_conv3_i_i61_7@uint8 v_conv3_i_i61_7@uint32;
(*   store i8 %conv3.i.i61.7, i8* %arraydecay, align 1 *)
mov ab1_0 v_conv3_i_i61_7;
(*   %arrayidx.i47.1 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %12 = load i8, i8* %arrayidx.i47.1, align 1 *)
mov v12 a_1;
(*   %arrayidx4.i51.1 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %13 = load i8, i8* %arrayidx4.i51.1, align 1 *)
mov v13 b_2;
(*   %conv.i.i55.1112 = zext i8 %13 to i32 *)
cast v_conv_i_i55_1112@uint32 v13@uint8;
(*   %and.i.i56.1113 = and i32 %conv.i.i55.1112, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i56_1113 v_conv_i_i55_1112 (0x1)@uint32;
(*   %conv1.i.i57.1114 = zext i8 %12 to i32 *)
cast v_conv1_i_i57_1114@uint32 v12@uint8;
(*   %mul.i.i58.1115 = mul nsw i32 %and.i.i56.1113, %conv1.i.i57.1114 *)
mul v_mul_i_i58_1115 v_and_i_i56_1113 v_conv1_i_i57_1114;
(*   %conv3.i.i61.1116 = trunc i32 %mul.i.i58.1115 to i8 *)
split tmp_v_mul_i_i58_1115 v_conv3_i_i61_1116 v_mul_i_i58_1115 8;
vpc v_conv3_i_i61_1116@uint8 v_conv3_i_i61_1116@uint32;
(*   %conv4.i.i62.1117 = zext i8 %13 to i32 *)
cast v_conv4_i_i62_1117@uint32 v13@uint8;
(*   %shr.i.i63.1118 = ashr i32 %conv4.i.i62.1117, 1 *)
(* You may need to modify here *)
split v_shr_i_i63_1118 tmp_to_be_used v_conv4_i_i62_1117 1;
(*   %conv5.i.i64.1119 = trunc i32 %shr.i.i63.1118 to i8 *)
split tmp_v_shr_i_i63_1118 v_conv5_i_i64_1119 v_shr_i_i63_1118 8;
vpc v_conv5_i_i64_1119@uint8 v_conv5_i_i64_1119@uint32;
(*   %conv6.i.i65.1120 = zext i8 %12 to i32 *)
cast v_conv6_i_i65_1120@uint32 v12@uint8;
(*   %shl.i.i66.1121 = shl i32 %conv6.i.i65.1120, 1 *)
shls discard_42 v_shl_i_i66_1121 v_conv6_i_i65_1120 1;
(*   %conv7.i.i67.1122 = trunc i32 %shl.i.i66.1121 to i8 *)
split tmp_v_shl_i_i66_1121 v_conv7_i_i67_1122 v_shl_i_i66_1121 8;
vpc v_conv7_i_i67_1122@uint8 v_conv7_i_i67_1122@uint32;
(*   %conv.i.i55.1.1 = zext i8 %conv5.i.i64.1119 to i32 *)
cast v_conv_i_i55_1_1@uint32 v_conv5_i_i64_1119@uint8;
(*   %and.i.i56.1.1 = and i32 %conv.i.i55.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i56_1_1 v_conv_i_i55_1_1 (0x1)@uint32;
(*   %conv1.i.i57.1.1 = zext i8 %conv7.i.i67.1122 to i32 *)
cast v_conv1_i_i57_1_1@uint32 v_conv7_i_i67_1122@uint8;
(*   %mul.i.i58.1.1 = mul nsw i32 %and.i.i56.1.1, %conv1.i.i57.1.1 *)
mul v_mul_i_i58_1_1 v_and_i_i56_1_1 v_conv1_i_i57_1_1;
(*   %conv2.i.i59.1.1 = zext i8 %conv3.i.i61.1116 to i32 *)
cast v_conv2_i_i59_1_1@uint32 v_conv3_i_i61_1116@uint8;
(*   %xor.i.i60.1.1 = xor i32 %conv2.i.i59.1.1, %mul.i.i58.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i60_1_1 v_conv2_i_i59_1_1 v_mul_i_i58_1_1;
(*   %conv3.i.i61.1.1 = trunc i32 %xor.i.i60.1.1 to i8 *)
split tmp_v_xor_i_i60_1_1 v_conv3_i_i61_1_1 v_xor_i_i60_1_1 8;
vpc v_conv3_i_i61_1_1@uint8 v_conv3_i_i61_1_1@uint32;
(*   %conv4.i.i62.1.1 = zext i8 %conv5.i.i64.1119 to i32 *)
cast v_conv4_i_i62_1_1@uint32 v_conv5_i_i64_1119@uint8;
(*   %shr.i.i63.1.1 = ashr i32 %conv4.i.i62.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i63_1_1 tmp_to_be_used v_conv4_i_i62_1_1 1;
(*   %conv5.i.i64.1.1 = trunc i32 %shr.i.i63.1.1 to i8 *)
split tmp_v_shr_i_i63_1_1 v_conv5_i_i64_1_1 v_shr_i_i63_1_1 8;
vpc v_conv5_i_i64_1_1@uint8 v_conv5_i_i64_1_1@uint32;
(*   %conv6.i.i65.1.1 = zext i8 %conv7.i.i67.1122 to i32 *)
cast v_conv6_i_i65_1_1@uint32 v_conv7_i_i67_1122@uint8;
(*   %shl.i.i66.1.1 = shl i32 %conv6.i.i65.1.1, 1 *)
shls discard_43 v_shl_i_i66_1_1 v_conv6_i_i65_1_1 1;
(*   %conv7.i.i67.1.1 = trunc i32 %shl.i.i66.1.1 to i8 *)
split tmp_v_shl_i_i66_1_1 v_conv7_i_i67_1_1 v_shl_i_i66_1_1 8;
vpc v_conv7_i_i67_1_1@uint8 v_conv7_i_i67_1_1@uint32;
(*   %conv.i.i55.2.1 = zext i8 %conv5.i.i64.1.1 to i32 *)
cast v_conv_i_i55_2_1@uint32 v_conv5_i_i64_1_1@uint8;
(*   %and.i.i56.2.1 = and i32 %conv.i.i55.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i56_2_1 v_conv_i_i55_2_1 (0x1)@uint32;
(*   %conv1.i.i57.2.1 = zext i8 %conv7.i.i67.1.1 to i32 *)
cast v_conv1_i_i57_2_1@uint32 v_conv7_i_i67_1_1@uint8;
(*   %mul.i.i58.2.1 = mul nsw i32 %and.i.i56.2.1, %conv1.i.i57.2.1 *)
mul v_mul_i_i58_2_1 v_and_i_i56_2_1 v_conv1_i_i57_2_1;
(*   %conv2.i.i59.2.1 = zext i8 %conv3.i.i61.1.1 to i32 *)
cast v_conv2_i_i59_2_1@uint32 v_conv3_i_i61_1_1@uint8;
(*   %xor.i.i60.2.1 = xor i32 %conv2.i.i59.2.1, %mul.i.i58.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i60_2_1 v_conv2_i_i59_2_1 v_mul_i_i58_2_1;
(*   %conv3.i.i61.2.1 = trunc i32 %xor.i.i60.2.1 to i8 *)
split tmp_v_xor_i_i60_2_1 v_conv3_i_i61_2_1 v_xor_i_i60_2_1 8;
vpc v_conv3_i_i61_2_1@uint8 v_conv3_i_i61_2_1@uint32;
(*   %conv4.i.i62.2.1 = zext i8 %conv5.i.i64.1.1 to i32 *)
cast v_conv4_i_i62_2_1@uint32 v_conv5_i_i64_1_1@uint8;
(*   %shr.i.i63.2.1 = ashr i32 %conv4.i.i62.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i63_2_1 tmp_to_be_used v_conv4_i_i62_2_1 1;
(*   %conv5.i.i64.2.1 = trunc i32 %shr.i.i63.2.1 to i8 *)
split tmp_v_shr_i_i63_2_1 v_conv5_i_i64_2_1 v_shr_i_i63_2_1 8;
vpc v_conv5_i_i64_2_1@uint8 v_conv5_i_i64_2_1@uint32;
(*   %conv6.i.i65.2.1 = zext i8 %conv7.i.i67.1.1 to i32 *)
cast v_conv6_i_i65_2_1@uint32 v_conv7_i_i67_1_1@uint8;
(*   %shl.i.i66.2.1 = shl i32 %conv6.i.i65.2.1, 1 *)
shls discard_44 v_shl_i_i66_2_1 v_conv6_i_i65_2_1 1;
(*   %conv7.i.i67.2.1 = trunc i32 %shl.i.i66.2.1 to i8 *)
split tmp_v_shl_i_i66_2_1 v_conv7_i_i67_2_1 v_shl_i_i66_2_1 8;
vpc v_conv7_i_i67_2_1@uint8 v_conv7_i_i67_2_1@uint32;
(*   %conv.i.i55.3.1 = zext i8 %conv5.i.i64.2.1 to i32 *)
cast v_conv_i_i55_3_1@uint32 v_conv5_i_i64_2_1@uint8;
(*   %and.i.i56.3.1 = and i32 %conv.i.i55.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i56_3_1 v_conv_i_i55_3_1 (0x1)@uint32;
(*   %conv1.i.i57.3.1 = zext i8 %conv7.i.i67.2.1 to i32 *)
cast v_conv1_i_i57_3_1@uint32 v_conv7_i_i67_2_1@uint8;
(*   %mul.i.i58.3.1 = mul nsw i32 %and.i.i56.3.1, %conv1.i.i57.3.1 *)
mul v_mul_i_i58_3_1 v_and_i_i56_3_1 v_conv1_i_i57_3_1;
(*   %conv2.i.i59.3.1 = zext i8 %conv3.i.i61.2.1 to i32 *)
cast v_conv2_i_i59_3_1@uint32 v_conv3_i_i61_2_1@uint8;
(*   %xor.i.i60.3.1 = xor i32 %conv2.i.i59.3.1, %mul.i.i58.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i60_3_1 v_conv2_i_i59_3_1 v_mul_i_i58_3_1;
(*   %conv3.i.i61.3.1 = trunc i32 %xor.i.i60.3.1 to i8 *)
split tmp_v_xor_i_i60_3_1 v_conv3_i_i61_3_1 v_xor_i_i60_3_1 8;
vpc v_conv3_i_i61_3_1@uint8 v_conv3_i_i61_3_1@uint32;
(*   %conv4.i.i62.3.1 = zext i8 %conv5.i.i64.2.1 to i32 *)
cast v_conv4_i_i62_3_1@uint32 v_conv5_i_i64_2_1@uint8;
(*   %shr.i.i63.3.1 = ashr i32 %conv4.i.i62.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i63_3_1 tmp_to_be_used v_conv4_i_i62_3_1 1;
(*   %conv5.i.i64.3.1 = trunc i32 %shr.i.i63.3.1 to i8 *)
split tmp_v_shr_i_i63_3_1 v_conv5_i_i64_3_1 v_shr_i_i63_3_1 8;
vpc v_conv5_i_i64_3_1@uint8 v_conv5_i_i64_3_1@uint32;
(*   %conv6.i.i65.3.1 = zext i8 %conv7.i.i67.2.1 to i32 *)
cast v_conv6_i_i65_3_1@uint32 v_conv7_i_i67_2_1@uint8;
(*   %shl.i.i66.3.1 = shl i32 %conv6.i.i65.3.1, 1 *)
shls discard_45 v_shl_i_i66_3_1 v_conv6_i_i65_3_1 1;
(*   %conv7.i.i67.3.1 = trunc i32 %shl.i.i66.3.1 to i8 *)
split tmp_v_shl_i_i66_3_1 v_conv7_i_i67_3_1 v_shl_i_i66_3_1 8;
vpc v_conv7_i_i67_3_1@uint8 v_conv7_i_i67_3_1@uint32;
(*   %conv.i.i55.4.1 = zext i8 %conv5.i.i64.3.1 to i32 *)
cast v_conv_i_i55_4_1@uint32 v_conv5_i_i64_3_1@uint8;
(*   %and.i.i56.4.1 = and i32 %conv.i.i55.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i56_4_1 v_conv_i_i55_4_1 (0x1)@uint32;
(*   %conv1.i.i57.4.1 = zext i8 %conv7.i.i67.3.1 to i32 *)
cast v_conv1_i_i57_4_1@uint32 v_conv7_i_i67_3_1@uint8;
(*   %mul.i.i58.4.1 = mul nsw i32 %and.i.i56.4.1, %conv1.i.i57.4.1 *)
mul v_mul_i_i58_4_1 v_and_i_i56_4_1 v_conv1_i_i57_4_1;
(*   %conv2.i.i59.4.1 = zext i8 %conv3.i.i61.3.1 to i32 *)
cast v_conv2_i_i59_4_1@uint32 v_conv3_i_i61_3_1@uint8;
(*   %xor.i.i60.4.1 = xor i32 %conv2.i.i59.4.1, %mul.i.i58.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i60_4_1 v_conv2_i_i59_4_1 v_mul_i_i58_4_1;
(*   %conv3.i.i61.4.1 = trunc i32 %xor.i.i60.4.1 to i8 *)
split tmp_v_xor_i_i60_4_1 v_conv3_i_i61_4_1 v_xor_i_i60_4_1 8;
vpc v_conv3_i_i61_4_1@uint8 v_conv3_i_i61_4_1@uint32;
(*   %conv4.i.i62.4.1 = zext i8 %conv5.i.i64.3.1 to i32 *)
cast v_conv4_i_i62_4_1@uint32 v_conv5_i_i64_3_1@uint8;
(*   %shr.i.i63.4.1 = ashr i32 %conv4.i.i62.4.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i63_4_1 tmp_to_be_used v_conv4_i_i62_4_1 1;
(*   %conv5.i.i64.4.1 = trunc i32 %shr.i.i63.4.1 to i8 *)
split tmp_v_shr_i_i63_4_1 v_conv5_i_i64_4_1 v_shr_i_i63_4_1 8;
vpc v_conv5_i_i64_4_1@uint8 v_conv5_i_i64_4_1@uint32;
(*   %conv6.i.i65.4.1 = zext i8 %conv7.i.i67.3.1 to i32 *)
cast v_conv6_i_i65_4_1@uint32 v_conv7_i_i67_3_1@uint8;
(*   %shl.i.i66.4.1 = shl i32 %conv6.i.i65.4.1, 1 *)
shls discard_46 v_shl_i_i66_4_1 v_conv6_i_i65_4_1 1;
(*   %conv7.i.i67.4.1 = trunc i32 %shl.i.i66.4.1 to i8 *)
split tmp_v_shl_i_i66_4_1 v_conv7_i_i67_4_1 v_shl_i_i66_4_1 8;
vpc v_conv7_i_i67_4_1@uint8 v_conv7_i_i67_4_1@uint32;
(*   %conv.i.i55.5.1 = zext i8 %conv5.i.i64.4.1 to i32 *)
cast v_conv_i_i55_5_1@uint32 v_conv5_i_i64_4_1@uint8;
(*   %and.i.i56.5.1 = and i32 %conv.i.i55.5.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i56_5_1 v_conv_i_i55_5_1 (0x1)@uint32;
(*   %conv1.i.i57.5.1 = zext i8 %conv7.i.i67.4.1 to i32 *)
cast v_conv1_i_i57_5_1@uint32 v_conv7_i_i67_4_1@uint8;
(*   %mul.i.i58.5.1 = mul nsw i32 %and.i.i56.5.1, %conv1.i.i57.5.1 *)
mul v_mul_i_i58_5_1 v_and_i_i56_5_1 v_conv1_i_i57_5_1;
(*   %conv2.i.i59.5.1 = zext i8 %conv3.i.i61.4.1 to i32 *)
cast v_conv2_i_i59_5_1@uint32 v_conv3_i_i61_4_1@uint8;
(*   %xor.i.i60.5.1 = xor i32 %conv2.i.i59.5.1, %mul.i.i58.5.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i60_5_1 v_conv2_i_i59_5_1 v_mul_i_i58_5_1;
(*   %conv3.i.i61.5.1 = trunc i32 %xor.i.i60.5.1 to i8 *)
split tmp_v_xor_i_i60_5_1 v_conv3_i_i61_5_1 v_xor_i_i60_5_1 8;
vpc v_conv3_i_i61_5_1@uint8 v_conv3_i_i61_5_1@uint32;
(*   %conv4.i.i62.5.1 = zext i8 %conv5.i.i64.4.1 to i32 *)
cast v_conv4_i_i62_5_1@uint32 v_conv5_i_i64_4_1@uint8;
(*   %shr.i.i63.5.1 = ashr i32 %conv4.i.i62.5.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i63_5_1 tmp_to_be_used v_conv4_i_i62_5_1 1;
(*   %conv5.i.i64.5.1 = trunc i32 %shr.i.i63.5.1 to i8 *)
split tmp_v_shr_i_i63_5_1 v_conv5_i_i64_5_1 v_shr_i_i63_5_1 8;
vpc v_conv5_i_i64_5_1@uint8 v_conv5_i_i64_5_1@uint32;
(*   %conv6.i.i65.5.1 = zext i8 %conv7.i.i67.4.1 to i32 *)
cast v_conv6_i_i65_5_1@uint32 v_conv7_i_i67_4_1@uint8;
(*   %shl.i.i66.5.1 = shl i32 %conv6.i.i65.5.1, 1 *)
shls discard_47 v_shl_i_i66_5_1 v_conv6_i_i65_5_1 1;
(*   %conv7.i.i67.5.1 = trunc i32 %shl.i.i66.5.1 to i8 *)
split tmp_v_shl_i_i66_5_1 v_conv7_i_i67_5_1 v_shl_i_i66_5_1 8;
vpc v_conv7_i_i67_5_1@uint8 v_conv7_i_i67_5_1@uint32;
(*   %conv.i.i55.6.1 = zext i8 %conv5.i.i64.5.1 to i32 *)
cast v_conv_i_i55_6_1@uint32 v_conv5_i_i64_5_1@uint8;
(*   %and.i.i56.6.1 = and i32 %conv.i.i55.6.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i56_6_1 v_conv_i_i55_6_1 (0x1)@uint32;
(*   %conv1.i.i57.6.1 = zext i8 %conv7.i.i67.5.1 to i32 *)
cast v_conv1_i_i57_6_1@uint32 v_conv7_i_i67_5_1@uint8;
(*   %mul.i.i58.6.1 = mul nsw i32 %and.i.i56.6.1, %conv1.i.i57.6.1 *)
mul v_mul_i_i58_6_1 v_and_i_i56_6_1 v_conv1_i_i57_6_1;
(*   %conv2.i.i59.6.1 = zext i8 %conv3.i.i61.5.1 to i32 *)
cast v_conv2_i_i59_6_1@uint32 v_conv3_i_i61_5_1@uint8;
(*   %xor.i.i60.6.1 = xor i32 %conv2.i.i59.6.1, %mul.i.i58.6.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i60_6_1 v_conv2_i_i59_6_1 v_mul_i_i58_6_1;
(*   %conv3.i.i61.6.1 = trunc i32 %xor.i.i60.6.1 to i8 *)
split tmp_v_xor_i_i60_6_1 v_conv3_i_i61_6_1 v_xor_i_i60_6_1 8;
vpc v_conv3_i_i61_6_1@uint8 v_conv3_i_i61_6_1@uint32;
(*   %conv4.i.i62.6.1 = zext i8 %conv5.i.i64.5.1 to i32 *)
cast v_conv4_i_i62_6_1@uint32 v_conv5_i_i64_5_1@uint8;
(*   %shr.i.i63.6.1 = ashr i32 %conv4.i.i62.6.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i63_6_1 tmp_to_be_used v_conv4_i_i62_6_1 1;
(*   %conv5.i.i64.6.1 = trunc i32 %shr.i.i63.6.1 to i8 *)
split tmp_v_shr_i_i63_6_1 v_conv5_i_i64_6_1 v_shr_i_i63_6_1 8;
vpc v_conv5_i_i64_6_1@uint8 v_conv5_i_i64_6_1@uint32;
(*   %conv6.i.i65.6.1 = zext i8 %conv7.i.i67.5.1 to i32 *)
cast v_conv6_i_i65_6_1@uint32 v_conv7_i_i67_5_1@uint8;
(*   %shl.i.i66.6.1 = shl i32 %conv6.i.i65.6.1, 1 *)
shls discard_48 v_shl_i_i66_6_1 v_conv6_i_i65_6_1 1;
(*   %conv7.i.i67.6.1 = trunc i32 %shl.i.i66.6.1 to i8 *)
split tmp_v_shl_i_i66_6_1 v_conv7_i_i67_6_1 v_shl_i_i66_6_1 8;
vpc v_conv7_i_i67_6_1@uint8 v_conv7_i_i67_6_1@uint32;
(*   %conv.i.i55.7.1 = zext i8 %conv5.i.i64.6.1 to i32 *)
cast v_conv_i_i55_7_1@uint32 v_conv5_i_i64_6_1@uint8;
(*   %and.i.i56.7.1 = and i32 %conv.i.i55.7.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i56_7_1 v_conv_i_i55_7_1 (0x1)@uint32;
(*   %conv1.i.i57.7.1 = zext i8 %conv7.i.i67.6.1 to i32 *)
cast v_conv1_i_i57_7_1@uint32 v_conv7_i_i67_6_1@uint8;
(*   %mul.i.i58.7.1 = mul nsw i32 %and.i.i56.7.1, %conv1.i.i57.7.1 *)
mul v_mul_i_i58_7_1 v_and_i_i56_7_1 v_conv1_i_i57_7_1;
(*   %conv2.i.i59.7.1 = zext i8 %conv3.i.i61.6.1 to i32 *)
cast v_conv2_i_i59_7_1@uint32 v_conv3_i_i61_6_1@uint8;
(*   %xor.i.i60.7.1 = xor i32 %conv2.i.i59.7.1, %mul.i.i58.7.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i60_7_1 v_conv2_i_i59_7_1 v_mul_i_i58_7_1;
(*   %conv3.i.i61.7.1 = trunc i32 %xor.i.i60.7.1 to i8 *)
split tmp_v_xor_i_i60_7_1 v_conv3_i_i61_7_1 v_xor_i_i60_7_1 8;
vpc v_conv3_i_i61_7_1@uint8 v_conv3_i_i61_7_1@uint32;
(*   %arrayidx6.i71.1 = getelementptr inbounds i8, i8* %arraydecay, i64 1 *)
(*   store i8 %conv3.i.i61.7.1, i8* %arrayidx6.i71.1, align 1 *)
mov ab1_1 v_conv3_i_i61_7_1;
(*   %arrayidx.i47.2 = getelementptr inbounds i8, i8* %a, i64 2 *)
(*   %14 = load i8, i8* %arrayidx.i47.2, align 1 *)
mov v14 a_2;
(*   %arrayidx4.i51.2 = getelementptr inbounds i8, i8* %b, i64 3 *)
(*   %15 = load i8, i8* %arrayidx4.i51.2, align 1 *)
mov v15 b_3;
(*   %conv.i.i55.2123 = zext i8 %15 to i32 *)
cast v_conv_i_i55_2123@uint32 v15@uint8;
(*   %and.i.i56.2124 = and i32 %conv.i.i55.2123, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i56_2124 v_conv_i_i55_2123 (0x1)@uint32;
(*   %conv1.i.i57.2125 = zext i8 %14 to i32 *)
cast v_conv1_i_i57_2125@uint32 v14@uint8;
(*   %mul.i.i58.2126 = mul nsw i32 %and.i.i56.2124, %conv1.i.i57.2125 *)
mul v_mul_i_i58_2126 v_and_i_i56_2124 v_conv1_i_i57_2125;
(*   %conv3.i.i61.2127 = trunc i32 %mul.i.i58.2126 to i8 *)
split tmp_v_mul_i_i58_2126 v_conv3_i_i61_2127 v_mul_i_i58_2126 8;
vpc v_conv3_i_i61_2127@uint8 v_conv3_i_i61_2127@uint32;
(*   %conv4.i.i62.2128 = zext i8 %15 to i32 *)
cast v_conv4_i_i62_2128@uint32 v15@uint8;
(*   %shr.i.i63.2129 = ashr i32 %conv4.i.i62.2128, 1 *)
(* You may need to modify here *)
split v_shr_i_i63_2129 tmp_to_be_used v_conv4_i_i62_2128 1;
(*   %conv5.i.i64.2130 = trunc i32 %shr.i.i63.2129 to i8 *)
split tmp_v_shr_i_i63_2129 v_conv5_i_i64_2130 v_shr_i_i63_2129 8;
vpc v_conv5_i_i64_2130@uint8 v_conv5_i_i64_2130@uint32;
(*   %conv6.i.i65.2131 = zext i8 %14 to i32 *)
cast v_conv6_i_i65_2131@uint32 v14@uint8;
(*   %shl.i.i66.2132 = shl i32 %conv6.i.i65.2131, 1 *)
shls discard_49 v_shl_i_i66_2132 v_conv6_i_i65_2131 1;
(*   %conv7.i.i67.2133 = trunc i32 %shl.i.i66.2132 to i8 *)
split tmp_v_shl_i_i66_2132 v_conv7_i_i67_2133 v_shl_i_i66_2132 8;
vpc v_conv7_i_i67_2133@uint8 v_conv7_i_i67_2133@uint32;
(*   %conv.i.i55.1.2 = zext i8 %conv5.i.i64.2130 to i32 *)
cast v_conv_i_i55_1_2@uint32 v_conv5_i_i64_2130@uint8;
(*   %and.i.i56.1.2 = and i32 %conv.i.i55.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i56_1_2 v_conv_i_i55_1_2 (0x1)@uint32;
(*   %conv1.i.i57.1.2 = zext i8 %conv7.i.i67.2133 to i32 *)
cast v_conv1_i_i57_1_2@uint32 v_conv7_i_i67_2133@uint8;
(*   %mul.i.i58.1.2 = mul nsw i32 %and.i.i56.1.2, %conv1.i.i57.1.2 *)
mul v_mul_i_i58_1_2 v_and_i_i56_1_2 v_conv1_i_i57_1_2;
(*   %conv2.i.i59.1.2 = zext i8 %conv3.i.i61.2127 to i32 *)
cast v_conv2_i_i59_1_2@uint32 v_conv3_i_i61_2127@uint8;
(*   %xor.i.i60.1.2 = xor i32 %conv2.i.i59.1.2, %mul.i.i58.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i60_1_2 v_conv2_i_i59_1_2 v_mul_i_i58_1_2;
(*   %conv3.i.i61.1.2 = trunc i32 %xor.i.i60.1.2 to i8 *)
split tmp_v_xor_i_i60_1_2 v_conv3_i_i61_1_2 v_xor_i_i60_1_2 8;
vpc v_conv3_i_i61_1_2@uint8 v_conv3_i_i61_1_2@uint32;
(*   %conv4.i.i62.1.2 = zext i8 %conv5.i.i64.2130 to i32 *)
cast v_conv4_i_i62_1_2@uint32 v_conv5_i_i64_2130@uint8;
(*   %shr.i.i63.1.2 = ashr i32 %conv4.i.i62.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i63_1_2 tmp_to_be_used v_conv4_i_i62_1_2 1;
(*   %conv5.i.i64.1.2 = trunc i32 %shr.i.i63.1.2 to i8 *)
split tmp_v_shr_i_i63_1_2 v_conv5_i_i64_1_2 v_shr_i_i63_1_2 8;
vpc v_conv5_i_i64_1_2@uint8 v_conv5_i_i64_1_2@uint32;
(*   %conv6.i.i65.1.2 = zext i8 %conv7.i.i67.2133 to i32 *)
cast v_conv6_i_i65_1_2@uint32 v_conv7_i_i67_2133@uint8;
(*   %shl.i.i66.1.2 = shl i32 %conv6.i.i65.1.2, 1 *)
shls discard_50 v_shl_i_i66_1_2 v_conv6_i_i65_1_2 1;
(*   %conv7.i.i67.1.2 = trunc i32 %shl.i.i66.1.2 to i8 *)
split tmp_v_shl_i_i66_1_2 v_conv7_i_i67_1_2 v_shl_i_i66_1_2 8;
vpc v_conv7_i_i67_1_2@uint8 v_conv7_i_i67_1_2@uint32;
(*   %conv.i.i55.2.2 = zext i8 %conv5.i.i64.1.2 to i32 *)
cast v_conv_i_i55_2_2@uint32 v_conv5_i_i64_1_2@uint8;
(*   %and.i.i56.2.2 = and i32 %conv.i.i55.2.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i56_2_2 v_conv_i_i55_2_2 (0x1)@uint32;
(*   %conv1.i.i57.2.2 = zext i8 %conv7.i.i67.1.2 to i32 *)
cast v_conv1_i_i57_2_2@uint32 v_conv7_i_i67_1_2@uint8;
(*   %mul.i.i58.2.2 = mul nsw i32 %and.i.i56.2.2, %conv1.i.i57.2.2 *)
mul v_mul_i_i58_2_2 v_and_i_i56_2_2 v_conv1_i_i57_2_2;
(*   %conv2.i.i59.2.2 = zext i8 %conv3.i.i61.1.2 to i32 *)
cast v_conv2_i_i59_2_2@uint32 v_conv3_i_i61_1_2@uint8;
(*   %xor.i.i60.2.2 = xor i32 %conv2.i.i59.2.2, %mul.i.i58.2.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i60_2_2 v_conv2_i_i59_2_2 v_mul_i_i58_2_2;
(*   %conv3.i.i61.2.2 = trunc i32 %xor.i.i60.2.2 to i8 *)
split tmp_v_xor_i_i60_2_2 v_conv3_i_i61_2_2 v_xor_i_i60_2_2 8;
vpc v_conv3_i_i61_2_2@uint8 v_conv3_i_i61_2_2@uint32;
(*   %conv4.i.i62.2.2 = zext i8 %conv5.i.i64.1.2 to i32 *)
cast v_conv4_i_i62_2_2@uint32 v_conv5_i_i64_1_2@uint8;
(*   %shr.i.i63.2.2 = ashr i32 %conv4.i.i62.2.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i63_2_2 tmp_to_be_used v_conv4_i_i62_2_2 1;
(*   %conv5.i.i64.2.2 = trunc i32 %shr.i.i63.2.2 to i8 *)
split tmp_v_shr_i_i63_2_2 v_conv5_i_i64_2_2 v_shr_i_i63_2_2 8;
vpc v_conv5_i_i64_2_2@uint8 v_conv5_i_i64_2_2@uint32;
(*   %conv6.i.i65.2.2 = zext i8 %conv7.i.i67.1.2 to i32 *)
cast v_conv6_i_i65_2_2@uint32 v_conv7_i_i67_1_2@uint8;
(*   %shl.i.i66.2.2 = shl i32 %conv6.i.i65.2.2, 1 *)
shls discard_51 v_shl_i_i66_2_2 v_conv6_i_i65_2_2 1;
(*   %conv7.i.i67.2.2 = trunc i32 %shl.i.i66.2.2 to i8 *)
split tmp_v_shl_i_i66_2_2 v_conv7_i_i67_2_2 v_shl_i_i66_2_2 8;
vpc v_conv7_i_i67_2_2@uint8 v_conv7_i_i67_2_2@uint32;
(*   %conv.i.i55.3.2 = zext i8 %conv5.i.i64.2.2 to i32 *)
cast v_conv_i_i55_3_2@uint32 v_conv5_i_i64_2_2@uint8;
(*   %and.i.i56.3.2 = and i32 %conv.i.i55.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i56_3_2 v_conv_i_i55_3_2 (0x1)@uint32;
(*   %conv1.i.i57.3.2 = zext i8 %conv7.i.i67.2.2 to i32 *)
cast v_conv1_i_i57_3_2@uint32 v_conv7_i_i67_2_2@uint8;
(*   %mul.i.i58.3.2 = mul nsw i32 %and.i.i56.3.2, %conv1.i.i57.3.2 *)
mul v_mul_i_i58_3_2 v_and_i_i56_3_2 v_conv1_i_i57_3_2;
(*   %conv2.i.i59.3.2 = zext i8 %conv3.i.i61.2.2 to i32 *)
cast v_conv2_i_i59_3_2@uint32 v_conv3_i_i61_2_2@uint8;
(*   %xor.i.i60.3.2 = xor i32 %conv2.i.i59.3.2, %mul.i.i58.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i60_3_2 v_conv2_i_i59_3_2 v_mul_i_i58_3_2;
(*   %conv3.i.i61.3.2 = trunc i32 %xor.i.i60.3.2 to i8 *)
split tmp_v_xor_i_i60_3_2 v_conv3_i_i61_3_2 v_xor_i_i60_3_2 8;
vpc v_conv3_i_i61_3_2@uint8 v_conv3_i_i61_3_2@uint32;
(*   %conv4.i.i62.3.2 = zext i8 %conv5.i.i64.2.2 to i32 *)
cast v_conv4_i_i62_3_2@uint32 v_conv5_i_i64_2_2@uint8;
(*   %shr.i.i63.3.2 = ashr i32 %conv4.i.i62.3.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i63_3_2 tmp_to_be_used v_conv4_i_i62_3_2 1;
(*   %conv5.i.i64.3.2 = trunc i32 %shr.i.i63.3.2 to i8 *)
split tmp_v_shr_i_i63_3_2 v_conv5_i_i64_3_2 v_shr_i_i63_3_2 8;
vpc v_conv5_i_i64_3_2@uint8 v_conv5_i_i64_3_2@uint32;
(*   %conv6.i.i65.3.2 = zext i8 %conv7.i.i67.2.2 to i32 *)
cast v_conv6_i_i65_3_2@uint32 v_conv7_i_i67_2_2@uint8;
(*   %shl.i.i66.3.2 = shl i32 %conv6.i.i65.3.2, 1 *)
shls discard_52 v_shl_i_i66_3_2 v_conv6_i_i65_3_2 1;
(*   %conv7.i.i67.3.2 = trunc i32 %shl.i.i66.3.2 to i8 *)
split tmp_v_shl_i_i66_3_2 v_conv7_i_i67_3_2 v_shl_i_i66_3_2 8;
vpc v_conv7_i_i67_3_2@uint8 v_conv7_i_i67_3_2@uint32;
(*   %conv.i.i55.4.2 = zext i8 %conv5.i.i64.3.2 to i32 *)
cast v_conv_i_i55_4_2@uint32 v_conv5_i_i64_3_2@uint8;
(*   %and.i.i56.4.2 = and i32 %conv.i.i55.4.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i56_4_2 v_conv_i_i55_4_2 (0x1)@uint32;
(*   %conv1.i.i57.4.2 = zext i8 %conv7.i.i67.3.2 to i32 *)
cast v_conv1_i_i57_4_2@uint32 v_conv7_i_i67_3_2@uint8;
(*   %mul.i.i58.4.2 = mul nsw i32 %and.i.i56.4.2, %conv1.i.i57.4.2 *)
mul v_mul_i_i58_4_2 v_and_i_i56_4_2 v_conv1_i_i57_4_2;
(*   %conv2.i.i59.4.2 = zext i8 %conv3.i.i61.3.2 to i32 *)
cast v_conv2_i_i59_4_2@uint32 v_conv3_i_i61_3_2@uint8;
(*   %xor.i.i60.4.2 = xor i32 %conv2.i.i59.4.2, %mul.i.i58.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i60_4_2 v_conv2_i_i59_4_2 v_mul_i_i58_4_2;
(*   %conv3.i.i61.4.2 = trunc i32 %xor.i.i60.4.2 to i8 *)
split tmp_v_xor_i_i60_4_2 v_conv3_i_i61_4_2 v_xor_i_i60_4_2 8;
vpc v_conv3_i_i61_4_2@uint8 v_conv3_i_i61_4_2@uint32;
(*   %conv4.i.i62.4.2 = zext i8 %conv5.i.i64.3.2 to i32 *)
cast v_conv4_i_i62_4_2@uint32 v_conv5_i_i64_3_2@uint8;
(*   %shr.i.i63.4.2 = ashr i32 %conv4.i.i62.4.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i63_4_2 tmp_to_be_used v_conv4_i_i62_4_2 1;
(*   %conv5.i.i64.4.2 = trunc i32 %shr.i.i63.4.2 to i8 *)
split tmp_v_shr_i_i63_4_2 v_conv5_i_i64_4_2 v_shr_i_i63_4_2 8;
vpc v_conv5_i_i64_4_2@uint8 v_conv5_i_i64_4_2@uint32;
(*   %conv6.i.i65.4.2 = zext i8 %conv7.i.i67.3.2 to i32 *)
cast v_conv6_i_i65_4_2@uint32 v_conv7_i_i67_3_2@uint8;
(*   %shl.i.i66.4.2 = shl i32 %conv6.i.i65.4.2, 1 *)
shls discard_53 v_shl_i_i66_4_2 v_conv6_i_i65_4_2 1;
(*   %conv7.i.i67.4.2 = trunc i32 %shl.i.i66.4.2 to i8 *)
split tmp_v_shl_i_i66_4_2 v_conv7_i_i67_4_2 v_shl_i_i66_4_2 8;
vpc v_conv7_i_i67_4_2@uint8 v_conv7_i_i67_4_2@uint32;
(*   %conv.i.i55.5.2 = zext i8 %conv5.i.i64.4.2 to i32 *)
cast v_conv_i_i55_5_2@uint32 v_conv5_i_i64_4_2@uint8;
(*   %and.i.i56.5.2 = and i32 %conv.i.i55.5.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i56_5_2 v_conv_i_i55_5_2 (0x1)@uint32;
(*   %conv1.i.i57.5.2 = zext i8 %conv7.i.i67.4.2 to i32 *)
cast v_conv1_i_i57_5_2@uint32 v_conv7_i_i67_4_2@uint8;
(*   %mul.i.i58.5.2 = mul nsw i32 %and.i.i56.5.2, %conv1.i.i57.5.2 *)
mul v_mul_i_i58_5_2 v_and_i_i56_5_2 v_conv1_i_i57_5_2;
(*   %conv2.i.i59.5.2 = zext i8 %conv3.i.i61.4.2 to i32 *)
cast v_conv2_i_i59_5_2@uint32 v_conv3_i_i61_4_2@uint8;
(*   %xor.i.i60.5.2 = xor i32 %conv2.i.i59.5.2, %mul.i.i58.5.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i60_5_2 v_conv2_i_i59_5_2 v_mul_i_i58_5_2;
(*   %conv3.i.i61.5.2 = trunc i32 %xor.i.i60.5.2 to i8 *)
split tmp_v_xor_i_i60_5_2 v_conv3_i_i61_5_2 v_xor_i_i60_5_2 8;
vpc v_conv3_i_i61_5_2@uint8 v_conv3_i_i61_5_2@uint32;
(*   %conv4.i.i62.5.2 = zext i8 %conv5.i.i64.4.2 to i32 *)
cast v_conv4_i_i62_5_2@uint32 v_conv5_i_i64_4_2@uint8;
(*   %shr.i.i63.5.2 = ashr i32 %conv4.i.i62.5.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i63_5_2 tmp_to_be_used v_conv4_i_i62_5_2 1;
(*   %conv5.i.i64.5.2 = trunc i32 %shr.i.i63.5.2 to i8 *)
split tmp_v_shr_i_i63_5_2 v_conv5_i_i64_5_2 v_shr_i_i63_5_2 8;
vpc v_conv5_i_i64_5_2@uint8 v_conv5_i_i64_5_2@uint32;
(*   %conv6.i.i65.5.2 = zext i8 %conv7.i.i67.4.2 to i32 *)
cast v_conv6_i_i65_5_2@uint32 v_conv7_i_i67_4_2@uint8;
(*   %shl.i.i66.5.2 = shl i32 %conv6.i.i65.5.2, 1 *)
shls discard_54 v_shl_i_i66_5_2 v_conv6_i_i65_5_2 1;
(*   %conv7.i.i67.5.2 = trunc i32 %shl.i.i66.5.2 to i8 *)
split tmp_v_shl_i_i66_5_2 v_conv7_i_i67_5_2 v_shl_i_i66_5_2 8;
vpc v_conv7_i_i67_5_2@uint8 v_conv7_i_i67_5_2@uint32;
(*   %conv.i.i55.6.2 = zext i8 %conv5.i.i64.5.2 to i32 *)
cast v_conv_i_i55_6_2@uint32 v_conv5_i_i64_5_2@uint8;
(*   %and.i.i56.6.2 = and i32 %conv.i.i55.6.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i56_6_2 v_conv_i_i55_6_2 (0x1)@uint32;
(*   %conv1.i.i57.6.2 = zext i8 %conv7.i.i67.5.2 to i32 *)
cast v_conv1_i_i57_6_2@uint32 v_conv7_i_i67_5_2@uint8;
(*   %mul.i.i58.6.2 = mul nsw i32 %and.i.i56.6.2, %conv1.i.i57.6.2 *)
mul v_mul_i_i58_6_2 v_and_i_i56_6_2 v_conv1_i_i57_6_2;
(*   %conv2.i.i59.6.2 = zext i8 %conv3.i.i61.5.2 to i32 *)
cast v_conv2_i_i59_6_2@uint32 v_conv3_i_i61_5_2@uint8;
(*   %xor.i.i60.6.2 = xor i32 %conv2.i.i59.6.2, %mul.i.i58.6.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i60_6_2 v_conv2_i_i59_6_2 v_mul_i_i58_6_2;
(*   %conv3.i.i61.6.2 = trunc i32 %xor.i.i60.6.2 to i8 *)
split tmp_v_xor_i_i60_6_2 v_conv3_i_i61_6_2 v_xor_i_i60_6_2 8;
vpc v_conv3_i_i61_6_2@uint8 v_conv3_i_i61_6_2@uint32;
(*   %conv4.i.i62.6.2 = zext i8 %conv5.i.i64.5.2 to i32 *)
cast v_conv4_i_i62_6_2@uint32 v_conv5_i_i64_5_2@uint8;
(*   %shr.i.i63.6.2 = ashr i32 %conv4.i.i62.6.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i63_6_2 tmp_to_be_used v_conv4_i_i62_6_2 1;
(*   %conv5.i.i64.6.2 = trunc i32 %shr.i.i63.6.2 to i8 *)
split tmp_v_shr_i_i63_6_2 v_conv5_i_i64_6_2 v_shr_i_i63_6_2 8;
vpc v_conv5_i_i64_6_2@uint8 v_conv5_i_i64_6_2@uint32;
(*   %conv6.i.i65.6.2 = zext i8 %conv7.i.i67.5.2 to i32 *)
cast v_conv6_i_i65_6_2@uint32 v_conv7_i_i67_5_2@uint8;
(*   %shl.i.i66.6.2 = shl i32 %conv6.i.i65.6.2, 1 *)
shls discard_55 v_shl_i_i66_6_2 v_conv6_i_i65_6_2 1;
(*   %conv7.i.i67.6.2 = trunc i32 %shl.i.i66.6.2 to i8 *)
split tmp_v_shl_i_i66_6_2 v_conv7_i_i67_6_2 v_shl_i_i66_6_2 8;
vpc v_conv7_i_i67_6_2@uint8 v_conv7_i_i67_6_2@uint32;
(*   %conv.i.i55.7.2 = zext i8 %conv5.i.i64.6.2 to i32 *)
cast v_conv_i_i55_7_2@uint32 v_conv5_i_i64_6_2@uint8;
(*   %and.i.i56.7.2 = and i32 %conv.i.i55.7.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i56_7_2 v_conv_i_i55_7_2 (0x1)@uint32;
(*   %conv1.i.i57.7.2 = zext i8 %conv7.i.i67.6.2 to i32 *)
cast v_conv1_i_i57_7_2@uint32 v_conv7_i_i67_6_2@uint8;
(*   %mul.i.i58.7.2 = mul nsw i32 %and.i.i56.7.2, %conv1.i.i57.7.2 *)
mul v_mul_i_i58_7_2 v_and_i_i56_7_2 v_conv1_i_i57_7_2;
(*   %conv2.i.i59.7.2 = zext i8 %conv3.i.i61.6.2 to i32 *)
cast v_conv2_i_i59_7_2@uint32 v_conv3_i_i61_6_2@uint8;
(*   %xor.i.i60.7.2 = xor i32 %conv2.i.i59.7.2, %mul.i.i58.7.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i60_7_2 v_conv2_i_i59_7_2 v_mul_i_i58_7_2;
(*   %conv3.i.i61.7.2 = trunc i32 %xor.i.i60.7.2 to i8 *)
split tmp_v_xor_i_i60_7_2 v_conv3_i_i61_7_2 v_xor_i_i60_7_2 8;
vpc v_conv3_i_i61_7_2@uint8 v_conv3_i_i61_7_2@uint32;
(*   %arrayidx6.i71.2 = getelementptr inbounds i8, i8* %arraydecay, i64 2 *)
(*   store i8 %conv3.i.i61.7.2, i8* %arrayidx6.i71.2, align 1 *)
mov ab1_2 v_conv3_i_i61_7_2;
(*   %arrayidx.i47.3 = getelementptr inbounds i8, i8* %a, i64 3 *)
(*   %16 = load i8, i8* %arrayidx.i47.3, align 1 *)
mov v16 a_3;
(*   %arrayidx4.i51.3 = getelementptr inbounds i8, i8* %b, i64 4 *)
(*   %17 = load i8, i8* %arrayidx4.i51.3, align 1 *)
mov v17 b_4;
(*   %conv.i.i55.3134 = zext i8 %17 to i32 *)
cast v_conv_i_i55_3134@uint32 v17@uint8;
(*   %and.i.i56.3135 = and i32 %conv.i.i55.3134, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i56_3135 v_conv_i_i55_3134 (0x1)@uint32;
(*   %conv1.i.i57.3136 = zext i8 %16 to i32 *)
cast v_conv1_i_i57_3136@uint32 v16@uint8;
(*   %mul.i.i58.3137 = mul nsw i32 %and.i.i56.3135, %conv1.i.i57.3136 *)
mul v_mul_i_i58_3137 v_and_i_i56_3135 v_conv1_i_i57_3136;
(*   %conv3.i.i61.3138 = trunc i32 %mul.i.i58.3137 to i8 *)
split tmp_v_mul_i_i58_3137 v_conv3_i_i61_3138 v_mul_i_i58_3137 8;
vpc v_conv3_i_i61_3138@uint8 v_conv3_i_i61_3138@uint32;
(*   %conv4.i.i62.3139 = zext i8 %17 to i32 *)
cast v_conv4_i_i62_3139@uint32 v17@uint8;
(*   %shr.i.i63.3140 = ashr i32 %conv4.i.i62.3139, 1 *)
(* You may need to modify here *)
split v_shr_i_i63_3140 tmp_to_be_used v_conv4_i_i62_3139 1;
(*   %conv5.i.i64.3141 = trunc i32 %shr.i.i63.3140 to i8 *)
split tmp_v_shr_i_i63_3140 v_conv5_i_i64_3141 v_shr_i_i63_3140 8;
vpc v_conv5_i_i64_3141@uint8 v_conv5_i_i64_3141@uint32;
(*   %conv6.i.i65.3142 = zext i8 %16 to i32 *)
cast v_conv6_i_i65_3142@uint32 v16@uint8;
(*   %shl.i.i66.3143 = shl i32 %conv6.i.i65.3142, 1 *)
shls discard_56 v_shl_i_i66_3143 v_conv6_i_i65_3142 1;
(*   %conv7.i.i67.3144 = trunc i32 %shl.i.i66.3143 to i8 *)
split tmp_v_shl_i_i66_3143 v_conv7_i_i67_3144 v_shl_i_i66_3143 8;
vpc v_conv7_i_i67_3144@uint8 v_conv7_i_i67_3144@uint32;
(*   %conv.i.i55.1.3 = zext i8 %conv5.i.i64.3141 to i32 *)
cast v_conv_i_i55_1_3@uint32 v_conv5_i_i64_3141@uint8;
(*   %and.i.i56.1.3 = and i32 %conv.i.i55.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i56_1_3 v_conv_i_i55_1_3 (0x1)@uint32;
(*   %conv1.i.i57.1.3 = zext i8 %conv7.i.i67.3144 to i32 *)
cast v_conv1_i_i57_1_3@uint32 v_conv7_i_i67_3144@uint8;
(*   %mul.i.i58.1.3 = mul nsw i32 %and.i.i56.1.3, %conv1.i.i57.1.3 *)
mul v_mul_i_i58_1_3 v_and_i_i56_1_3 v_conv1_i_i57_1_3;
(*   %conv2.i.i59.1.3 = zext i8 %conv3.i.i61.3138 to i32 *)
cast v_conv2_i_i59_1_3@uint32 v_conv3_i_i61_3138@uint8;
(*   %xor.i.i60.1.3 = xor i32 %conv2.i.i59.1.3, %mul.i.i58.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i60_1_3 v_conv2_i_i59_1_3 v_mul_i_i58_1_3;
(*   %conv3.i.i61.1.3 = trunc i32 %xor.i.i60.1.3 to i8 *)
split tmp_v_xor_i_i60_1_3 v_conv3_i_i61_1_3 v_xor_i_i60_1_3 8;
vpc v_conv3_i_i61_1_3@uint8 v_conv3_i_i61_1_3@uint32;
(*   %conv4.i.i62.1.3 = zext i8 %conv5.i.i64.3141 to i32 *)
cast v_conv4_i_i62_1_3@uint32 v_conv5_i_i64_3141@uint8;
(*   %shr.i.i63.1.3 = ashr i32 %conv4.i.i62.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i63_1_3 tmp_to_be_used v_conv4_i_i62_1_3 1;
(*   %conv5.i.i64.1.3 = trunc i32 %shr.i.i63.1.3 to i8 *)
split tmp_v_shr_i_i63_1_3 v_conv5_i_i64_1_3 v_shr_i_i63_1_3 8;
vpc v_conv5_i_i64_1_3@uint8 v_conv5_i_i64_1_3@uint32;
(*   %conv6.i.i65.1.3 = zext i8 %conv7.i.i67.3144 to i32 *)
cast v_conv6_i_i65_1_3@uint32 v_conv7_i_i67_3144@uint8;
(*   %shl.i.i66.1.3 = shl i32 %conv6.i.i65.1.3, 1 *)
shls discard_57 v_shl_i_i66_1_3 v_conv6_i_i65_1_3 1;
(*   %conv7.i.i67.1.3 = trunc i32 %shl.i.i66.1.3 to i8 *)
split tmp_v_shl_i_i66_1_3 v_conv7_i_i67_1_3 v_shl_i_i66_1_3 8;
vpc v_conv7_i_i67_1_3@uint8 v_conv7_i_i67_1_3@uint32;
(*   %conv.i.i55.2.3 = zext i8 %conv5.i.i64.1.3 to i32 *)
cast v_conv_i_i55_2_3@uint32 v_conv5_i_i64_1_3@uint8;
(*   %and.i.i56.2.3 = and i32 %conv.i.i55.2.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i56_2_3 v_conv_i_i55_2_3 (0x1)@uint32;
(*   %conv1.i.i57.2.3 = zext i8 %conv7.i.i67.1.3 to i32 *)
cast v_conv1_i_i57_2_3@uint32 v_conv7_i_i67_1_3@uint8;
(*   %mul.i.i58.2.3 = mul nsw i32 %and.i.i56.2.3, %conv1.i.i57.2.3 *)
mul v_mul_i_i58_2_3 v_and_i_i56_2_3 v_conv1_i_i57_2_3;
(*   %conv2.i.i59.2.3 = zext i8 %conv3.i.i61.1.3 to i32 *)
cast v_conv2_i_i59_2_3@uint32 v_conv3_i_i61_1_3@uint8;
(*   %xor.i.i60.2.3 = xor i32 %conv2.i.i59.2.3, %mul.i.i58.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i60_2_3 v_conv2_i_i59_2_3 v_mul_i_i58_2_3;
(*   %conv3.i.i61.2.3 = trunc i32 %xor.i.i60.2.3 to i8 *)
split tmp_v_xor_i_i60_2_3 v_conv3_i_i61_2_3 v_xor_i_i60_2_3 8;
vpc v_conv3_i_i61_2_3@uint8 v_conv3_i_i61_2_3@uint32;
(*   %conv4.i.i62.2.3 = zext i8 %conv5.i.i64.1.3 to i32 *)
cast v_conv4_i_i62_2_3@uint32 v_conv5_i_i64_1_3@uint8;
(*   %shr.i.i63.2.3 = ashr i32 %conv4.i.i62.2.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i63_2_3 tmp_to_be_used v_conv4_i_i62_2_3 1;
(*   %conv5.i.i64.2.3 = trunc i32 %shr.i.i63.2.3 to i8 *)
split tmp_v_shr_i_i63_2_3 v_conv5_i_i64_2_3 v_shr_i_i63_2_3 8;
vpc v_conv5_i_i64_2_3@uint8 v_conv5_i_i64_2_3@uint32;
(*   %conv6.i.i65.2.3 = zext i8 %conv7.i.i67.1.3 to i32 *)
cast v_conv6_i_i65_2_3@uint32 v_conv7_i_i67_1_3@uint8;
(*   %shl.i.i66.2.3 = shl i32 %conv6.i.i65.2.3, 1 *)
shls discard_58 v_shl_i_i66_2_3 v_conv6_i_i65_2_3 1;
(*   %conv7.i.i67.2.3 = trunc i32 %shl.i.i66.2.3 to i8 *)
split tmp_v_shl_i_i66_2_3 v_conv7_i_i67_2_3 v_shl_i_i66_2_3 8;
vpc v_conv7_i_i67_2_3@uint8 v_conv7_i_i67_2_3@uint32;
(*   %conv.i.i55.3.3 = zext i8 %conv5.i.i64.2.3 to i32 *)
cast v_conv_i_i55_3_3@uint32 v_conv5_i_i64_2_3@uint8;
(*   %and.i.i56.3.3 = and i32 %conv.i.i55.3.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i56_3_3 v_conv_i_i55_3_3 (0x1)@uint32;
(*   %conv1.i.i57.3.3 = zext i8 %conv7.i.i67.2.3 to i32 *)
cast v_conv1_i_i57_3_3@uint32 v_conv7_i_i67_2_3@uint8;
(*   %mul.i.i58.3.3 = mul nsw i32 %and.i.i56.3.3, %conv1.i.i57.3.3 *)
mul v_mul_i_i58_3_3 v_and_i_i56_3_3 v_conv1_i_i57_3_3;
(*   %conv2.i.i59.3.3 = zext i8 %conv3.i.i61.2.3 to i32 *)
cast v_conv2_i_i59_3_3@uint32 v_conv3_i_i61_2_3@uint8;
(*   %xor.i.i60.3.3 = xor i32 %conv2.i.i59.3.3, %mul.i.i58.3.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i60_3_3 v_conv2_i_i59_3_3 v_mul_i_i58_3_3;
(*   %conv3.i.i61.3.3 = trunc i32 %xor.i.i60.3.3 to i8 *)
split tmp_v_xor_i_i60_3_3 v_conv3_i_i61_3_3 v_xor_i_i60_3_3 8;
vpc v_conv3_i_i61_3_3@uint8 v_conv3_i_i61_3_3@uint32;
(*   %conv4.i.i62.3.3 = zext i8 %conv5.i.i64.2.3 to i32 *)
cast v_conv4_i_i62_3_3@uint32 v_conv5_i_i64_2_3@uint8;
(*   %shr.i.i63.3.3 = ashr i32 %conv4.i.i62.3.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i63_3_3 tmp_to_be_used v_conv4_i_i62_3_3 1;
(*   %conv5.i.i64.3.3 = trunc i32 %shr.i.i63.3.3 to i8 *)
split tmp_v_shr_i_i63_3_3 v_conv5_i_i64_3_3 v_shr_i_i63_3_3 8;
vpc v_conv5_i_i64_3_3@uint8 v_conv5_i_i64_3_3@uint32;
(*   %conv6.i.i65.3.3 = zext i8 %conv7.i.i67.2.3 to i32 *)
cast v_conv6_i_i65_3_3@uint32 v_conv7_i_i67_2_3@uint8;
(*   %shl.i.i66.3.3 = shl i32 %conv6.i.i65.3.3, 1 *)
shls discard_59 v_shl_i_i66_3_3 v_conv6_i_i65_3_3 1;
(*   %conv7.i.i67.3.3 = trunc i32 %shl.i.i66.3.3 to i8 *)
split tmp_v_shl_i_i66_3_3 v_conv7_i_i67_3_3 v_shl_i_i66_3_3 8;
vpc v_conv7_i_i67_3_3@uint8 v_conv7_i_i67_3_3@uint32;
(*   %conv.i.i55.4.3 = zext i8 %conv5.i.i64.3.3 to i32 *)
cast v_conv_i_i55_4_3@uint32 v_conv5_i_i64_3_3@uint8;
(*   %and.i.i56.4.3 = and i32 %conv.i.i55.4.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i56_4_3 v_conv_i_i55_4_3 (0x1)@uint32;
(*   %conv1.i.i57.4.3 = zext i8 %conv7.i.i67.3.3 to i32 *)
cast v_conv1_i_i57_4_3@uint32 v_conv7_i_i67_3_3@uint8;
(*   %mul.i.i58.4.3 = mul nsw i32 %and.i.i56.4.3, %conv1.i.i57.4.3 *)
mul v_mul_i_i58_4_3 v_and_i_i56_4_3 v_conv1_i_i57_4_3;
(*   %conv2.i.i59.4.3 = zext i8 %conv3.i.i61.3.3 to i32 *)
cast v_conv2_i_i59_4_3@uint32 v_conv3_i_i61_3_3@uint8;
(*   %xor.i.i60.4.3 = xor i32 %conv2.i.i59.4.3, %mul.i.i58.4.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i60_4_3 v_conv2_i_i59_4_3 v_mul_i_i58_4_3;
(*   %conv3.i.i61.4.3 = trunc i32 %xor.i.i60.4.3 to i8 *)
split tmp_v_xor_i_i60_4_3 v_conv3_i_i61_4_3 v_xor_i_i60_4_3 8;
vpc v_conv3_i_i61_4_3@uint8 v_conv3_i_i61_4_3@uint32;
(*   %conv4.i.i62.4.3 = zext i8 %conv5.i.i64.3.3 to i32 *)
cast v_conv4_i_i62_4_3@uint32 v_conv5_i_i64_3_3@uint8;
(*   %shr.i.i63.4.3 = ashr i32 %conv4.i.i62.4.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i63_4_3 tmp_to_be_used v_conv4_i_i62_4_3 1;
(*   %conv5.i.i64.4.3 = trunc i32 %shr.i.i63.4.3 to i8 *)
split tmp_v_shr_i_i63_4_3 v_conv5_i_i64_4_3 v_shr_i_i63_4_3 8;
vpc v_conv5_i_i64_4_3@uint8 v_conv5_i_i64_4_3@uint32;
(*   %conv6.i.i65.4.3 = zext i8 %conv7.i.i67.3.3 to i32 *)
cast v_conv6_i_i65_4_3@uint32 v_conv7_i_i67_3_3@uint8;
(*   %shl.i.i66.4.3 = shl i32 %conv6.i.i65.4.3, 1 *)
shls discard_60 v_shl_i_i66_4_3 v_conv6_i_i65_4_3 1;
(*   %conv7.i.i67.4.3 = trunc i32 %shl.i.i66.4.3 to i8 *)
split tmp_v_shl_i_i66_4_3 v_conv7_i_i67_4_3 v_shl_i_i66_4_3 8;
vpc v_conv7_i_i67_4_3@uint8 v_conv7_i_i67_4_3@uint32;
(*   %conv.i.i55.5.3 = zext i8 %conv5.i.i64.4.3 to i32 *)
cast v_conv_i_i55_5_3@uint32 v_conv5_i_i64_4_3@uint8;
(*   %and.i.i56.5.3 = and i32 %conv.i.i55.5.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i56_5_3 v_conv_i_i55_5_3 (0x1)@uint32;
(*   %conv1.i.i57.5.3 = zext i8 %conv7.i.i67.4.3 to i32 *)
cast v_conv1_i_i57_5_3@uint32 v_conv7_i_i67_4_3@uint8;
(*   %mul.i.i58.5.3 = mul nsw i32 %and.i.i56.5.3, %conv1.i.i57.5.3 *)
mul v_mul_i_i58_5_3 v_and_i_i56_5_3 v_conv1_i_i57_5_3;
(*   %conv2.i.i59.5.3 = zext i8 %conv3.i.i61.4.3 to i32 *)
cast v_conv2_i_i59_5_3@uint32 v_conv3_i_i61_4_3@uint8;
(*   %xor.i.i60.5.3 = xor i32 %conv2.i.i59.5.3, %mul.i.i58.5.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i60_5_3 v_conv2_i_i59_5_3 v_mul_i_i58_5_3;
(*   %conv3.i.i61.5.3 = trunc i32 %xor.i.i60.5.3 to i8 *)
split tmp_v_xor_i_i60_5_3 v_conv3_i_i61_5_3 v_xor_i_i60_5_3 8;
vpc v_conv3_i_i61_5_3@uint8 v_conv3_i_i61_5_3@uint32;
(*   %conv4.i.i62.5.3 = zext i8 %conv5.i.i64.4.3 to i32 *)
cast v_conv4_i_i62_5_3@uint32 v_conv5_i_i64_4_3@uint8;
(*   %shr.i.i63.5.3 = ashr i32 %conv4.i.i62.5.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i63_5_3 tmp_to_be_used v_conv4_i_i62_5_3 1;
(*   %conv5.i.i64.5.3 = trunc i32 %shr.i.i63.5.3 to i8 *)
split tmp_v_shr_i_i63_5_3 v_conv5_i_i64_5_3 v_shr_i_i63_5_3 8;
vpc v_conv5_i_i64_5_3@uint8 v_conv5_i_i64_5_3@uint32;
(*   %conv6.i.i65.5.3 = zext i8 %conv7.i.i67.4.3 to i32 *)
cast v_conv6_i_i65_5_3@uint32 v_conv7_i_i67_4_3@uint8;
(*   %shl.i.i66.5.3 = shl i32 %conv6.i.i65.5.3, 1 *)
shls discard_61 v_shl_i_i66_5_3 v_conv6_i_i65_5_3 1;
(*   %conv7.i.i67.5.3 = trunc i32 %shl.i.i66.5.3 to i8 *)
split tmp_v_shl_i_i66_5_3 v_conv7_i_i67_5_3 v_shl_i_i66_5_3 8;
vpc v_conv7_i_i67_5_3@uint8 v_conv7_i_i67_5_3@uint32;
(*   %conv.i.i55.6.3 = zext i8 %conv5.i.i64.5.3 to i32 *)
cast v_conv_i_i55_6_3@uint32 v_conv5_i_i64_5_3@uint8;
(*   %and.i.i56.6.3 = and i32 %conv.i.i55.6.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i56_6_3 v_conv_i_i55_6_3 (0x1)@uint32;
(*   %conv1.i.i57.6.3 = zext i8 %conv7.i.i67.5.3 to i32 *)
cast v_conv1_i_i57_6_3@uint32 v_conv7_i_i67_5_3@uint8;
(*   %mul.i.i58.6.3 = mul nsw i32 %and.i.i56.6.3, %conv1.i.i57.6.3 *)
mul v_mul_i_i58_6_3 v_and_i_i56_6_3 v_conv1_i_i57_6_3;
(*   %conv2.i.i59.6.3 = zext i8 %conv3.i.i61.5.3 to i32 *)
cast v_conv2_i_i59_6_3@uint32 v_conv3_i_i61_5_3@uint8;
(*   %xor.i.i60.6.3 = xor i32 %conv2.i.i59.6.3, %mul.i.i58.6.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i60_6_3 v_conv2_i_i59_6_3 v_mul_i_i58_6_3;
(*   %conv3.i.i61.6.3 = trunc i32 %xor.i.i60.6.3 to i8 *)
split tmp_v_xor_i_i60_6_3 v_conv3_i_i61_6_3 v_xor_i_i60_6_3 8;
vpc v_conv3_i_i61_6_3@uint8 v_conv3_i_i61_6_3@uint32;
(*   %conv4.i.i62.6.3 = zext i8 %conv5.i.i64.5.3 to i32 *)
cast v_conv4_i_i62_6_3@uint32 v_conv5_i_i64_5_3@uint8;
(*   %shr.i.i63.6.3 = ashr i32 %conv4.i.i62.6.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i63_6_3 tmp_to_be_used v_conv4_i_i62_6_3 1;
(*   %conv5.i.i64.6.3 = trunc i32 %shr.i.i63.6.3 to i8 *)
split tmp_v_shr_i_i63_6_3 v_conv5_i_i64_6_3 v_shr_i_i63_6_3 8;
vpc v_conv5_i_i64_6_3@uint8 v_conv5_i_i64_6_3@uint32;
(*   %conv6.i.i65.6.3 = zext i8 %conv7.i.i67.5.3 to i32 *)
cast v_conv6_i_i65_6_3@uint32 v_conv7_i_i67_5_3@uint8;
(*   %shl.i.i66.6.3 = shl i32 %conv6.i.i65.6.3, 1 *)
shls discard_62 v_shl_i_i66_6_3 v_conv6_i_i65_6_3 1;
(*   %conv7.i.i67.6.3 = trunc i32 %shl.i.i66.6.3 to i8 *)
split tmp_v_shl_i_i66_6_3 v_conv7_i_i67_6_3 v_shl_i_i66_6_3 8;
vpc v_conv7_i_i67_6_3@uint8 v_conv7_i_i67_6_3@uint32;
(*   %conv.i.i55.7.3 = zext i8 %conv5.i.i64.6.3 to i32 *)
cast v_conv_i_i55_7_3@uint32 v_conv5_i_i64_6_3@uint8;
(*   %and.i.i56.7.3 = and i32 %conv.i.i55.7.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i56_7_3 v_conv_i_i55_7_3 (0x1)@uint32;
(*   %conv1.i.i57.7.3 = zext i8 %conv7.i.i67.6.3 to i32 *)
cast v_conv1_i_i57_7_3@uint32 v_conv7_i_i67_6_3@uint8;
(*   %mul.i.i58.7.3 = mul nsw i32 %and.i.i56.7.3, %conv1.i.i57.7.3 *)
mul v_mul_i_i58_7_3 v_and_i_i56_7_3 v_conv1_i_i57_7_3;
(*   %conv2.i.i59.7.3 = zext i8 %conv3.i.i61.6.3 to i32 *)
cast v_conv2_i_i59_7_3@uint32 v_conv3_i_i61_6_3@uint8;
(*   %xor.i.i60.7.3 = xor i32 %conv2.i.i59.7.3, %mul.i.i58.7.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i60_7_3 v_conv2_i_i59_7_3 v_mul_i_i58_7_3;
(*   %conv3.i.i61.7.3 = trunc i32 %xor.i.i60.7.3 to i8 *)
split tmp_v_xor_i_i60_7_3 v_conv3_i_i61_7_3 v_xor_i_i60_7_3 8;
vpc v_conv3_i_i61_7_3@uint8 v_conv3_i_i61_7_3@uint32;
(*   %arrayidx6.i71.3 = getelementptr inbounds i8, i8* %arraydecay, i64 3 *)
(*   store i8 %conv3.i.i61.7.3, i8* %arrayidx6.i71.3, align 1 *)
mov ab1_3 v_conv3_i_i61_7_3;
(*   %arrayidx.i47.4 = getelementptr inbounds i8, i8* %a, i64 4 *)
(*   %18 = load i8, i8* %arrayidx.i47.4, align 1 *)
mov v18 a_4;
(*   %19 = load i8, i8* %b, align 1 *)
mov v19 b_0;
(*   %conv.i.i55.4145 = zext i8 %19 to i32 *)
cast v_conv_i_i55_4145@uint32 v19@uint8;
(*   %and.i.i56.4146 = and i32 %conv.i.i55.4145, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i56_4146 v_conv_i_i55_4145 (0x1)@uint32;
(*   %conv1.i.i57.4147 = zext i8 %18 to i32 *)
cast v_conv1_i_i57_4147@uint32 v18@uint8;
(*   %mul.i.i58.4148 = mul nsw i32 %and.i.i56.4146, %conv1.i.i57.4147 *)
mul v_mul_i_i58_4148 v_and_i_i56_4146 v_conv1_i_i57_4147;
(*   %conv3.i.i61.4149 = trunc i32 %mul.i.i58.4148 to i8 *)
split tmp_v_mul_i_i58_4148 v_conv3_i_i61_4149 v_mul_i_i58_4148 8;
vpc v_conv3_i_i61_4149@uint8 v_conv3_i_i61_4149@uint32;
(*   %conv4.i.i62.4150 = zext i8 %19 to i32 *)
cast v_conv4_i_i62_4150@uint32 v19@uint8;
(*   %shr.i.i63.4151 = ashr i32 %conv4.i.i62.4150, 1 *)
(* You may need to modify here *)
split v_shr_i_i63_4151 tmp_to_be_used v_conv4_i_i62_4150 1;
(*   %conv5.i.i64.4152 = trunc i32 %shr.i.i63.4151 to i8 *)
split tmp_v_shr_i_i63_4151 v_conv5_i_i64_4152 v_shr_i_i63_4151 8;
vpc v_conv5_i_i64_4152@uint8 v_conv5_i_i64_4152@uint32;
(*   %conv6.i.i65.4153 = zext i8 %18 to i32 *)
cast v_conv6_i_i65_4153@uint32 v18@uint8;
(*   %shl.i.i66.4154 = shl i32 %conv6.i.i65.4153, 1 *)
shls discard_63 v_shl_i_i66_4154 v_conv6_i_i65_4153 1;
(*   %conv7.i.i67.4155 = trunc i32 %shl.i.i66.4154 to i8 *)
split tmp_v_shl_i_i66_4154 v_conv7_i_i67_4155 v_shl_i_i66_4154 8;
vpc v_conv7_i_i67_4155@uint8 v_conv7_i_i67_4155@uint32;
(*   %conv.i.i55.1.4 = zext i8 %conv5.i.i64.4152 to i32 *)
cast v_conv_i_i55_1_4@uint32 v_conv5_i_i64_4152@uint8;
(*   %and.i.i56.1.4 = and i32 %conv.i.i55.1.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i56_1_4 v_conv_i_i55_1_4 (0x1)@uint32;
(*   %conv1.i.i57.1.4 = zext i8 %conv7.i.i67.4155 to i32 *)
cast v_conv1_i_i57_1_4@uint32 v_conv7_i_i67_4155@uint8;
(*   %mul.i.i58.1.4 = mul nsw i32 %and.i.i56.1.4, %conv1.i.i57.1.4 *)
mul v_mul_i_i58_1_4 v_and_i_i56_1_4 v_conv1_i_i57_1_4;
(*   %conv2.i.i59.1.4 = zext i8 %conv3.i.i61.4149 to i32 *)
cast v_conv2_i_i59_1_4@uint32 v_conv3_i_i61_4149@uint8;
(*   %xor.i.i60.1.4 = xor i32 %conv2.i.i59.1.4, %mul.i.i58.1.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i60_1_4 v_conv2_i_i59_1_4 v_mul_i_i58_1_4;
(*   %conv3.i.i61.1.4 = trunc i32 %xor.i.i60.1.4 to i8 *)
split tmp_v_xor_i_i60_1_4 v_conv3_i_i61_1_4 v_xor_i_i60_1_4 8;
vpc v_conv3_i_i61_1_4@uint8 v_conv3_i_i61_1_4@uint32;
(*   %conv4.i.i62.1.4 = zext i8 %conv5.i.i64.4152 to i32 *)
cast v_conv4_i_i62_1_4@uint32 v_conv5_i_i64_4152@uint8;
(*   %shr.i.i63.1.4 = ashr i32 %conv4.i.i62.1.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i63_1_4 tmp_to_be_used v_conv4_i_i62_1_4 1;
(*   %conv5.i.i64.1.4 = trunc i32 %shr.i.i63.1.4 to i8 *)
split tmp_v_shr_i_i63_1_4 v_conv5_i_i64_1_4 v_shr_i_i63_1_4 8;
vpc v_conv5_i_i64_1_4@uint8 v_conv5_i_i64_1_4@uint32;
(*   %conv6.i.i65.1.4 = zext i8 %conv7.i.i67.4155 to i32 *)
cast v_conv6_i_i65_1_4@uint32 v_conv7_i_i67_4155@uint8;
(*   %shl.i.i66.1.4 = shl i32 %conv6.i.i65.1.4, 1 *)
shls discard_64 v_shl_i_i66_1_4 v_conv6_i_i65_1_4 1;
(*   %conv7.i.i67.1.4 = trunc i32 %shl.i.i66.1.4 to i8 *)
split tmp_v_shl_i_i66_1_4 v_conv7_i_i67_1_4 v_shl_i_i66_1_4 8;
vpc v_conv7_i_i67_1_4@uint8 v_conv7_i_i67_1_4@uint32;
(*   %conv.i.i55.2.4 = zext i8 %conv5.i.i64.1.4 to i32 *)
cast v_conv_i_i55_2_4@uint32 v_conv5_i_i64_1_4@uint8;
(*   %and.i.i56.2.4 = and i32 %conv.i.i55.2.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i56_2_4 v_conv_i_i55_2_4 (0x1)@uint32;
(*   %conv1.i.i57.2.4 = zext i8 %conv7.i.i67.1.4 to i32 *)
cast v_conv1_i_i57_2_4@uint32 v_conv7_i_i67_1_4@uint8;
(*   %mul.i.i58.2.4 = mul nsw i32 %and.i.i56.2.4, %conv1.i.i57.2.4 *)
mul v_mul_i_i58_2_4 v_and_i_i56_2_4 v_conv1_i_i57_2_4;
(*   %conv2.i.i59.2.4 = zext i8 %conv3.i.i61.1.4 to i32 *)
cast v_conv2_i_i59_2_4@uint32 v_conv3_i_i61_1_4@uint8;
(*   %xor.i.i60.2.4 = xor i32 %conv2.i.i59.2.4, %mul.i.i58.2.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i60_2_4 v_conv2_i_i59_2_4 v_mul_i_i58_2_4;
(*   %conv3.i.i61.2.4 = trunc i32 %xor.i.i60.2.4 to i8 *)
split tmp_v_xor_i_i60_2_4 v_conv3_i_i61_2_4 v_xor_i_i60_2_4 8;
vpc v_conv3_i_i61_2_4@uint8 v_conv3_i_i61_2_4@uint32;
(*   %conv4.i.i62.2.4 = zext i8 %conv5.i.i64.1.4 to i32 *)
cast v_conv4_i_i62_2_4@uint32 v_conv5_i_i64_1_4@uint8;
(*   %shr.i.i63.2.4 = ashr i32 %conv4.i.i62.2.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i63_2_4 tmp_to_be_used v_conv4_i_i62_2_4 1;
(*   %conv5.i.i64.2.4 = trunc i32 %shr.i.i63.2.4 to i8 *)
split tmp_v_shr_i_i63_2_4 v_conv5_i_i64_2_4 v_shr_i_i63_2_4 8;
vpc v_conv5_i_i64_2_4@uint8 v_conv5_i_i64_2_4@uint32;
(*   %conv6.i.i65.2.4 = zext i8 %conv7.i.i67.1.4 to i32 *)
cast v_conv6_i_i65_2_4@uint32 v_conv7_i_i67_1_4@uint8;
(*   %shl.i.i66.2.4 = shl i32 %conv6.i.i65.2.4, 1 *)
shls discard_65 v_shl_i_i66_2_4 v_conv6_i_i65_2_4 1;
(*   %conv7.i.i67.2.4 = trunc i32 %shl.i.i66.2.4 to i8 *)
split tmp_v_shl_i_i66_2_4 v_conv7_i_i67_2_4 v_shl_i_i66_2_4 8;
vpc v_conv7_i_i67_2_4@uint8 v_conv7_i_i67_2_4@uint32;
(*   %conv.i.i55.3.4 = zext i8 %conv5.i.i64.2.4 to i32 *)
cast v_conv_i_i55_3_4@uint32 v_conv5_i_i64_2_4@uint8;
(*   %and.i.i56.3.4 = and i32 %conv.i.i55.3.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i56_3_4 v_conv_i_i55_3_4 (0x1)@uint32;
(*   %conv1.i.i57.3.4 = zext i8 %conv7.i.i67.2.4 to i32 *)
cast v_conv1_i_i57_3_4@uint32 v_conv7_i_i67_2_4@uint8;
(*   %mul.i.i58.3.4 = mul nsw i32 %and.i.i56.3.4, %conv1.i.i57.3.4 *)
mul v_mul_i_i58_3_4 v_and_i_i56_3_4 v_conv1_i_i57_3_4;
(*   %conv2.i.i59.3.4 = zext i8 %conv3.i.i61.2.4 to i32 *)
cast v_conv2_i_i59_3_4@uint32 v_conv3_i_i61_2_4@uint8;
(*   %xor.i.i60.3.4 = xor i32 %conv2.i.i59.3.4, %mul.i.i58.3.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i60_3_4 v_conv2_i_i59_3_4 v_mul_i_i58_3_4;
(*   %conv3.i.i61.3.4 = trunc i32 %xor.i.i60.3.4 to i8 *)
split tmp_v_xor_i_i60_3_4 v_conv3_i_i61_3_4 v_xor_i_i60_3_4 8;
vpc v_conv3_i_i61_3_4@uint8 v_conv3_i_i61_3_4@uint32;
(*   %conv4.i.i62.3.4 = zext i8 %conv5.i.i64.2.4 to i32 *)
cast v_conv4_i_i62_3_4@uint32 v_conv5_i_i64_2_4@uint8;
(*   %shr.i.i63.3.4 = ashr i32 %conv4.i.i62.3.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i63_3_4 tmp_to_be_used v_conv4_i_i62_3_4 1;
(*   %conv5.i.i64.3.4 = trunc i32 %shr.i.i63.3.4 to i8 *)
split tmp_v_shr_i_i63_3_4 v_conv5_i_i64_3_4 v_shr_i_i63_3_4 8;
vpc v_conv5_i_i64_3_4@uint8 v_conv5_i_i64_3_4@uint32;
(*   %conv6.i.i65.3.4 = zext i8 %conv7.i.i67.2.4 to i32 *)
cast v_conv6_i_i65_3_4@uint32 v_conv7_i_i67_2_4@uint8;
(*   %shl.i.i66.3.4 = shl i32 %conv6.i.i65.3.4, 1 *)
shls discard_66 v_shl_i_i66_3_4 v_conv6_i_i65_3_4 1;
(*   %conv7.i.i67.3.4 = trunc i32 %shl.i.i66.3.4 to i8 *)
split tmp_v_shl_i_i66_3_4 v_conv7_i_i67_3_4 v_shl_i_i66_3_4 8;
vpc v_conv7_i_i67_3_4@uint8 v_conv7_i_i67_3_4@uint32;
(*   %conv.i.i55.4.4 = zext i8 %conv5.i.i64.3.4 to i32 *)
cast v_conv_i_i55_4_4@uint32 v_conv5_i_i64_3_4@uint8;
(*   %and.i.i56.4.4 = and i32 %conv.i.i55.4.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i56_4_4 v_conv_i_i55_4_4 (0x1)@uint32;
(*   %conv1.i.i57.4.4 = zext i8 %conv7.i.i67.3.4 to i32 *)
cast v_conv1_i_i57_4_4@uint32 v_conv7_i_i67_3_4@uint8;
(*   %mul.i.i58.4.4 = mul nsw i32 %and.i.i56.4.4, %conv1.i.i57.4.4 *)
mul v_mul_i_i58_4_4 v_and_i_i56_4_4 v_conv1_i_i57_4_4;
(*   %conv2.i.i59.4.4 = zext i8 %conv3.i.i61.3.4 to i32 *)
cast v_conv2_i_i59_4_4@uint32 v_conv3_i_i61_3_4@uint8;
(*   %xor.i.i60.4.4 = xor i32 %conv2.i.i59.4.4, %mul.i.i58.4.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i60_4_4 v_conv2_i_i59_4_4 v_mul_i_i58_4_4;
(*   %conv3.i.i61.4.4 = trunc i32 %xor.i.i60.4.4 to i8 *)
split tmp_v_xor_i_i60_4_4 v_conv3_i_i61_4_4 v_xor_i_i60_4_4 8;
vpc v_conv3_i_i61_4_4@uint8 v_conv3_i_i61_4_4@uint32;
(*   %conv4.i.i62.4.4 = zext i8 %conv5.i.i64.3.4 to i32 *)
cast v_conv4_i_i62_4_4@uint32 v_conv5_i_i64_3_4@uint8;
(*   %shr.i.i63.4.4 = ashr i32 %conv4.i.i62.4.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i63_4_4 tmp_to_be_used v_conv4_i_i62_4_4 1;
(*   %conv5.i.i64.4.4 = trunc i32 %shr.i.i63.4.4 to i8 *)
split tmp_v_shr_i_i63_4_4 v_conv5_i_i64_4_4 v_shr_i_i63_4_4 8;
vpc v_conv5_i_i64_4_4@uint8 v_conv5_i_i64_4_4@uint32;
(*   %conv6.i.i65.4.4 = zext i8 %conv7.i.i67.3.4 to i32 *)
cast v_conv6_i_i65_4_4@uint32 v_conv7_i_i67_3_4@uint8;
(*   %shl.i.i66.4.4 = shl i32 %conv6.i.i65.4.4, 1 *)
shls discard_67 v_shl_i_i66_4_4 v_conv6_i_i65_4_4 1;
(*   %conv7.i.i67.4.4 = trunc i32 %shl.i.i66.4.4 to i8 *)
split tmp_v_shl_i_i66_4_4 v_conv7_i_i67_4_4 v_shl_i_i66_4_4 8;
vpc v_conv7_i_i67_4_4@uint8 v_conv7_i_i67_4_4@uint32;
(*   %conv.i.i55.5.4 = zext i8 %conv5.i.i64.4.4 to i32 *)
cast v_conv_i_i55_5_4@uint32 v_conv5_i_i64_4_4@uint8;
(*   %and.i.i56.5.4 = and i32 %conv.i.i55.5.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i56_5_4 v_conv_i_i55_5_4 (0x1)@uint32;
(*   %conv1.i.i57.5.4 = zext i8 %conv7.i.i67.4.4 to i32 *)
cast v_conv1_i_i57_5_4@uint32 v_conv7_i_i67_4_4@uint8;
(*   %mul.i.i58.5.4 = mul nsw i32 %and.i.i56.5.4, %conv1.i.i57.5.4 *)
mul v_mul_i_i58_5_4 v_and_i_i56_5_4 v_conv1_i_i57_5_4;
(*   %conv2.i.i59.5.4 = zext i8 %conv3.i.i61.4.4 to i32 *)
cast v_conv2_i_i59_5_4@uint32 v_conv3_i_i61_4_4@uint8;
(*   %xor.i.i60.5.4 = xor i32 %conv2.i.i59.5.4, %mul.i.i58.5.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i60_5_4 v_conv2_i_i59_5_4 v_mul_i_i58_5_4;
(*   %conv3.i.i61.5.4 = trunc i32 %xor.i.i60.5.4 to i8 *)
split tmp_v_xor_i_i60_5_4 v_conv3_i_i61_5_4 v_xor_i_i60_5_4 8;
vpc v_conv3_i_i61_5_4@uint8 v_conv3_i_i61_5_4@uint32;
(*   %conv4.i.i62.5.4 = zext i8 %conv5.i.i64.4.4 to i32 *)
cast v_conv4_i_i62_5_4@uint32 v_conv5_i_i64_4_4@uint8;
(*   %shr.i.i63.5.4 = ashr i32 %conv4.i.i62.5.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i63_5_4 tmp_to_be_used v_conv4_i_i62_5_4 1;
(*   %conv5.i.i64.5.4 = trunc i32 %shr.i.i63.5.4 to i8 *)
split tmp_v_shr_i_i63_5_4 v_conv5_i_i64_5_4 v_shr_i_i63_5_4 8;
vpc v_conv5_i_i64_5_4@uint8 v_conv5_i_i64_5_4@uint32;
(*   %conv6.i.i65.5.4 = zext i8 %conv7.i.i67.4.4 to i32 *)
cast v_conv6_i_i65_5_4@uint32 v_conv7_i_i67_4_4@uint8;
(*   %shl.i.i66.5.4 = shl i32 %conv6.i.i65.5.4, 1 *)
shls discard_68 v_shl_i_i66_5_4 v_conv6_i_i65_5_4 1;
(*   %conv7.i.i67.5.4 = trunc i32 %shl.i.i66.5.4 to i8 *)
split tmp_v_shl_i_i66_5_4 v_conv7_i_i67_5_4 v_shl_i_i66_5_4 8;
vpc v_conv7_i_i67_5_4@uint8 v_conv7_i_i67_5_4@uint32;
(*   %conv.i.i55.6.4 = zext i8 %conv5.i.i64.5.4 to i32 *)
cast v_conv_i_i55_6_4@uint32 v_conv5_i_i64_5_4@uint8;
(*   %and.i.i56.6.4 = and i32 %conv.i.i55.6.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i56_6_4 v_conv_i_i55_6_4 (0x1)@uint32;
(*   %conv1.i.i57.6.4 = zext i8 %conv7.i.i67.5.4 to i32 *)
cast v_conv1_i_i57_6_4@uint32 v_conv7_i_i67_5_4@uint8;
(*   %mul.i.i58.6.4 = mul nsw i32 %and.i.i56.6.4, %conv1.i.i57.6.4 *)
mul v_mul_i_i58_6_4 v_and_i_i56_6_4 v_conv1_i_i57_6_4;
(*   %conv2.i.i59.6.4 = zext i8 %conv3.i.i61.5.4 to i32 *)
cast v_conv2_i_i59_6_4@uint32 v_conv3_i_i61_5_4@uint8;
(*   %xor.i.i60.6.4 = xor i32 %conv2.i.i59.6.4, %mul.i.i58.6.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i60_6_4 v_conv2_i_i59_6_4 v_mul_i_i58_6_4;
(*   %conv3.i.i61.6.4 = trunc i32 %xor.i.i60.6.4 to i8 *)
split tmp_v_xor_i_i60_6_4 v_conv3_i_i61_6_4 v_xor_i_i60_6_4 8;
vpc v_conv3_i_i61_6_4@uint8 v_conv3_i_i61_6_4@uint32;
(*   %conv4.i.i62.6.4 = zext i8 %conv5.i.i64.5.4 to i32 *)
cast v_conv4_i_i62_6_4@uint32 v_conv5_i_i64_5_4@uint8;
(*   %shr.i.i63.6.4 = ashr i32 %conv4.i.i62.6.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i63_6_4 tmp_to_be_used v_conv4_i_i62_6_4 1;
(*   %conv5.i.i64.6.4 = trunc i32 %shr.i.i63.6.4 to i8 *)
split tmp_v_shr_i_i63_6_4 v_conv5_i_i64_6_4 v_shr_i_i63_6_4 8;
vpc v_conv5_i_i64_6_4@uint8 v_conv5_i_i64_6_4@uint32;
(*   %conv6.i.i65.6.4 = zext i8 %conv7.i.i67.5.4 to i32 *)
cast v_conv6_i_i65_6_4@uint32 v_conv7_i_i67_5_4@uint8;
(*   %shl.i.i66.6.4 = shl i32 %conv6.i.i65.6.4, 1 *)
shls discard_69 v_shl_i_i66_6_4 v_conv6_i_i65_6_4 1;
(*   %conv7.i.i67.6.4 = trunc i32 %shl.i.i66.6.4 to i8 *)
split tmp_v_shl_i_i66_6_4 v_conv7_i_i67_6_4 v_shl_i_i66_6_4 8;
vpc v_conv7_i_i67_6_4@uint8 v_conv7_i_i67_6_4@uint32;
(*   %conv.i.i55.7.4 = zext i8 %conv5.i.i64.6.4 to i32 *)
cast v_conv_i_i55_7_4@uint32 v_conv5_i_i64_6_4@uint8;
(*   %and.i.i56.7.4 = and i32 %conv.i.i55.7.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i56_7_4 v_conv_i_i55_7_4 (0x1)@uint32;
(*   %conv1.i.i57.7.4 = zext i8 %conv7.i.i67.6.4 to i32 *)
cast v_conv1_i_i57_7_4@uint32 v_conv7_i_i67_6_4@uint8;
(*   %mul.i.i58.7.4 = mul nsw i32 %and.i.i56.7.4, %conv1.i.i57.7.4 *)
mul v_mul_i_i58_7_4 v_and_i_i56_7_4 v_conv1_i_i57_7_4;
(*   %conv2.i.i59.7.4 = zext i8 %conv3.i.i61.6.4 to i32 *)
cast v_conv2_i_i59_7_4@uint32 v_conv3_i_i61_6_4@uint8;
(*   %xor.i.i60.7.4 = xor i32 %conv2.i.i59.7.4, %mul.i.i58.7.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i60_7_4 v_conv2_i_i59_7_4 v_mul_i_i58_7_4;
(*   %conv3.i.i61.7.4 = trunc i32 %xor.i.i60.7.4 to i8 *)
split tmp_v_xor_i_i60_7_4 v_conv3_i_i61_7_4 v_xor_i_i60_7_4 8;
vpc v_conv3_i_i61_7_4@uint8 v_conv3_i_i61_7_4@uint32;
(*   %arrayidx6.i71.4 = getelementptr inbounds i8, i8* %arraydecay, i64 4 *)
(*   store i8 %conv3.i.i61.7.4, i8* %arrayidx6.i71.4, align 1 *)
mov ab1_4 v_conv3_i_i61_7_4;
(*   %arrayidx.i114 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %20 = load i8, i8* %arrayidx.i114, align 1 *)
mov v20 a_1;
(*   %21 = load i8, i8* %b, align 1 *)
mov v21 b_0;
(*   %conv.i.i122 = zext i8 %21 to i32 *)
cast v_conv_i_i122@uint32 v21@uint8;
(*   %and.i.i123 = and i32 %conv.i.i122, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i123 v_conv_i_i122 (0x1)@uint32;
(*   %conv1.i.i124 = zext i8 %20 to i32 *)
cast v_conv1_i_i124@uint32 v20@uint8;
(*   %mul.i.i125 = mul nsw i32 %and.i.i123, %conv1.i.i124 *)
mul v_mul_i_i125 v_and_i_i123 v_conv1_i_i124;
(*   %conv3.i.i128 = trunc i32 %mul.i.i125 to i8 *)
split tmp_v_mul_i_i125 v_conv3_i_i128 v_mul_i_i125 8;
vpc v_conv3_i_i128@uint8 v_conv3_i_i128@uint32;
(*   %conv4.i.i129 = zext i8 %21 to i32 *)
cast v_conv4_i_i129@uint32 v21@uint8;
(*   %shr.i.i130 = ashr i32 %conv4.i.i129, 1 *)
(* You may need to modify here *)
split v_shr_i_i130 tmp_to_be_used v_conv4_i_i129 1;
(*   %conv5.i.i131 = trunc i32 %shr.i.i130 to i8 *)
split tmp_v_shr_i_i130 v_conv5_i_i131 v_shr_i_i130 8;
vpc v_conv5_i_i131@uint8 v_conv5_i_i131@uint32;
(*   %conv6.i.i132 = zext i8 %20 to i32 *)
cast v_conv6_i_i132@uint32 v20@uint8;
(*   %shl.i.i133 = shl i32 %conv6.i.i132, 1 *)
shls discard_70 v_shl_i_i133 v_conv6_i_i132 1;
(*   %conv7.i.i134 = trunc i32 %shl.i.i133 to i8 *)
split tmp_v_shl_i_i133 v_conv7_i_i134 v_shl_i_i133 8;
vpc v_conv7_i_i134@uint8 v_conv7_i_i134@uint32;
(*   %conv.i.i122.1 = zext i8 %conv5.i.i131 to i32 *)
cast v_conv_i_i122_1@uint32 v_conv5_i_i131@uint8;
(*   %and.i.i123.1 = and i32 %conv.i.i122.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i123_1 v_conv_i_i122_1 (0x1)@uint32;
(*   %conv1.i.i124.1 = zext i8 %conv7.i.i134 to i32 *)
cast v_conv1_i_i124_1@uint32 v_conv7_i_i134@uint8;
(*   %mul.i.i125.1 = mul nsw i32 %and.i.i123.1, %conv1.i.i124.1 *)
mul v_mul_i_i125_1 v_and_i_i123_1 v_conv1_i_i124_1;
(*   %conv2.i.i126.1 = zext i8 %conv3.i.i128 to i32 *)
cast v_conv2_i_i126_1@uint32 v_conv3_i_i128@uint8;
(*   %xor.i.i127.1 = xor i32 %conv2.i.i126.1, %mul.i.i125.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i127_1 v_conv2_i_i126_1 v_mul_i_i125_1;
(*   %conv3.i.i128.1 = trunc i32 %xor.i.i127.1 to i8 *)
split tmp_v_xor_i_i127_1 v_conv3_i_i128_1 v_xor_i_i127_1 8;
vpc v_conv3_i_i128_1@uint8 v_conv3_i_i128_1@uint32;
(*   %conv4.i.i129.1 = zext i8 %conv5.i.i131 to i32 *)
cast v_conv4_i_i129_1@uint32 v_conv5_i_i131@uint8;
(*   %shr.i.i130.1 = ashr i32 %conv4.i.i129.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i130_1 tmp_to_be_used v_conv4_i_i129_1 1;
(*   %conv5.i.i131.1 = trunc i32 %shr.i.i130.1 to i8 *)
split tmp_v_shr_i_i130_1 v_conv5_i_i131_1 v_shr_i_i130_1 8;
vpc v_conv5_i_i131_1@uint8 v_conv5_i_i131_1@uint32;
(*   %conv6.i.i132.1 = zext i8 %conv7.i.i134 to i32 *)
cast v_conv6_i_i132_1@uint32 v_conv7_i_i134@uint8;
(*   %shl.i.i133.1 = shl i32 %conv6.i.i132.1, 1 *)
shls discard_71 v_shl_i_i133_1 v_conv6_i_i132_1 1;
(*   %conv7.i.i134.1 = trunc i32 %shl.i.i133.1 to i8 *)
split tmp_v_shl_i_i133_1 v_conv7_i_i134_1 v_shl_i_i133_1 8;
vpc v_conv7_i_i134_1@uint8 v_conv7_i_i134_1@uint32;
(*   %conv.i.i122.2 = zext i8 %conv5.i.i131.1 to i32 *)
cast v_conv_i_i122_2@uint32 v_conv5_i_i131_1@uint8;
(*   %and.i.i123.2 = and i32 %conv.i.i122.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i123_2 v_conv_i_i122_2 (0x1)@uint32;
(*   %conv1.i.i124.2 = zext i8 %conv7.i.i134.1 to i32 *)
cast v_conv1_i_i124_2@uint32 v_conv7_i_i134_1@uint8;
(*   %mul.i.i125.2 = mul nsw i32 %and.i.i123.2, %conv1.i.i124.2 *)
mul v_mul_i_i125_2 v_and_i_i123_2 v_conv1_i_i124_2;
(*   %conv2.i.i126.2 = zext i8 %conv3.i.i128.1 to i32 *)
cast v_conv2_i_i126_2@uint32 v_conv3_i_i128_1@uint8;
(*   %xor.i.i127.2 = xor i32 %conv2.i.i126.2, %mul.i.i125.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i127_2 v_conv2_i_i126_2 v_mul_i_i125_2;
(*   %conv3.i.i128.2 = trunc i32 %xor.i.i127.2 to i8 *)
split tmp_v_xor_i_i127_2 v_conv3_i_i128_2 v_xor_i_i127_2 8;
vpc v_conv3_i_i128_2@uint8 v_conv3_i_i128_2@uint32;
(*   %conv4.i.i129.2 = zext i8 %conv5.i.i131.1 to i32 *)
cast v_conv4_i_i129_2@uint32 v_conv5_i_i131_1@uint8;
(*   %shr.i.i130.2 = ashr i32 %conv4.i.i129.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i130_2 tmp_to_be_used v_conv4_i_i129_2 1;
(*   %conv5.i.i131.2 = trunc i32 %shr.i.i130.2 to i8 *)
split tmp_v_shr_i_i130_2 v_conv5_i_i131_2 v_shr_i_i130_2 8;
vpc v_conv5_i_i131_2@uint8 v_conv5_i_i131_2@uint32;
(*   %conv6.i.i132.2 = zext i8 %conv7.i.i134.1 to i32 *)
cast v_conv6_i_i132_2@uint32 v_conv7_i_i134_1@uint8;
(*   %shl.i.i133.2 = shl i32 %conv6.i.i132.2, 1 *)
shls discard_72 v_shl_i_i133_2 v_conv6_i_i132_2 1;
(*   %conv7.i.i134.2 = trunc i32 %shl.i.i133.2 to i8 *)
split tmp_v_shl_i_i133_2 v_conv7_i_i134_2 v_shl_i_i133_2 8;
vpc v_conv7_i_i134_2@uint8 v_conv7_i_i134_2@uint32;
(*   %conv.i.i122.3 = zext i8 %conv5.i.i131.2 to i32 *)
cast v_conv_i_i122_3@uint32 v_conv5_i_i131_2@uint8;
(*   %and.i.i123.3 = and i32 %conv.i.i122.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i123_3 v_conv_i_i122_3 (0x1)@uint32;
(*   %conv1.i.i124.3 = zext i8 %conv7.i.i134.2 to i32 *)
cast v_conv1_i_i124_3@uint32 v_conv7_i_i134_2@uint8;
(*   %mul.i.i125.3 = mul nsw i32 %and.i.i123.3, %conv1.i.i124.3 *)
mul v_mul_i_i125_3 v_and_i_i123_3 v_conv1_i_i124_3;
(*   %conv2.i.i126.3 = zext i8 %conv3.i.i128.2 to i32 *)
cast v_conv2_i_i126_3@uint32 v_conv3_i_i128_2@uint8;
(*   %xor.i.i127.3 = xor i32 %conv2.i.i126.3, %mul.i.i125.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i127_3 v_conv2_i_i126_3 v_mul_i_i125_3;
(*   %conv3.i.i128.3 = trunc i32 %xor.i.i127.3 to i8 *)
split tmp_v_xor_i_i127_3 v_conv3_i_i128_3 v_xor_i_i127_3 8;
vpc v_conv3_i_i128_3@uint8 v_conv3_i_i128_3@uint32;
(*   %conv4.i.i129.3 = zext i8 %conv5.i.i131.2 to i32 *)
cast v_conv4_i_i129_3@uint32 v_conv5_i_i131_2@uint8;
(*   %shr.i.i130.3 = ashr i32 %conv4.i.i129.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i130_3 tmp_to_be_used v_conv4_i_i129_3 1;
(*   %conv5.i.i131.3 = trunc i32 %shr.i.i130.3 to i8 *)
split tmp_v_shr_i_i130_3 v_conv5_i_i131_3 v_shr_i_i130_3 8;
vpc v_conv5_i_i131_3@uint8 v_conv5_i_i131_3@uint32;
(*   %conv6.i.i132.3 = zext i8 %conv7.i.i134.2 to i32 *)
cast v_conv6_i_i132_3@uint32 v_conv7_i_i134_2@uint8;
(*   %shl.i.i133.3 = shl i32 %conv6.i.i132.3, 1 *)
shls discard_73 v_shl_i_i133_3 v_conv6_i_i132_3 1;
(*   %conv7.i.i134.3 = trunc i32 %shl.i.i133.3 to i8 *)
split tmp_v_shl_i_i133_3 v_conv7_i_i134_3 v_shl_i_i133_3 8;
vpc v_conv7_i_i134_3@uint8 v_conv7_i_i134_3@uint32;
(*   %conv.i.i122.4 = zext i8 %conv5.i.i131.3 to i32 *)
cast v_conv_i_i122_4@uint32 v_conv5_i_i131_3@uint8;
(*   %and.i.i123.4 = and i32 %conv.i.i122.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i123_4 v_conv_i_i122_4 (0x1)@uint32;
(*   %conv1.i.i124.4 = zext i8 %conv7.i.i134.3 to i32 *)
cast v_conv1_i_i124_4@uint32 v_conv7_i_i134_3@uint8;
(*   %mul.i.i125.4 = mul nsw i32 %and.i.i123.4, %conv1.i.i124.4 *)
mul v_mul_i_i125_4 v_and_i_i123_4 v_conv1_i_i124_4;
(*   %conv2.i.i126.4 = zext i8 %conv3.i.i128.3 to i32 *)
cast v_conv2_i_i126_4@uint32 v_conv3_i_i128_3@uint8;
(*   %xor.i.i127.4 = xor i32 %conv2.i.i126.4, %mul.i.i125.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i127_4 v_conv2_i_i126_4 v_mul_i_i125_4;
(*   %conv3.i.i128.4 = trunc i32 %xor.i.i127.4 to i8 *)
split tmp_v_xor_i_i127_4 v_conv3_i_i128_4 v_xor_i_i127_4 8;
vpc v_conv3_i_i128_4@uint8 v_conv3_i_i128_4@uint32;
(*   %conv4.i.i129.4 = zext i8 %conv5.i.i131.3 to i32 *)
cast v_conv4_i_i129_4@uint32 v_conv5_i_i131_3@uint8;
(*   %shr.i.i130.4 = ashr i32 %conv4.i.i129.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i130_4 tmp_to_be_used v_conv4_i_i129_4 1;
(*   %conv5.i.i131.4 = trunc i32 %shr.i.i130.4 to i8 *)
split tmp_v_shr_i_i130_4 v_conv5_i_i131_4 v_shr_i_i130_4 8;
vpc v_conv5_i_i131_4@uint8 v_conv5_i_i131_4@uint32;
(*   %conv6.i.i132.4 = zext i8 %conv7.i.i134.3 to i32 *)
cast v_conv6_i_i132_4@uint32 v_conv7_i_i134_3@uint8;
(*   %shl.i.i133.4 = shl i32 %conv6.i.i132.4, 1 *)
shls discard_74 v_shl_i_i133_4 v_conv6_i_i132_4 1;
(*   %conv7.i.i134.4 = trunc i32 %shl.i.i133.4 to i8 *)
split tmp_v_shl_i_i133_4 v_conv7_i_i134_4 v_shl_i_i133_4 8;
vpc v_conv7_i_i134_4@uint8 v_conv7_i_i134_4@uint32;
(*   %conv.i.i122.5 = zext i8 %conv5.i.i131.4 to i32 *)
cast v_conv_i_i122_5@uint32 v_conv5_i_i131_4@uint8;
(*   %and.i.i123.5 = and i32 %conv.i.i122.5, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i123_5 v_conv_i_i122_5 (0x1)@uint32;
(*   %conv1.i.i124.5 = zext i8 %conv7.i.i134.4 to i32 *)
cast v_conv1_i_i124_5@uint32 v_conv7_i_i134_4@uint8;
(*   %mul.i.i125.5 = mul nsw i32 %and.i.i123.5, %conv1.i.i124.5 *)
mul v_mul_i_i125_5 v_and_i_i123_5 v_conv1_i_i124_5;
(*   %conv2.i.i126.5 = zext i8 %conv3.i.i128.4 to i32 *)
cast v_conv2_i_i126_5@uint32 v_conv3_i_i128_4@uint8;
(*   %xor.i.i127.5 = xor i32 %conv2.i.i126.5, %mul.i.i125.5 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i127_5 v_conv2_i_i126_5 v_mul_i_i125_5;
(*   %conv3.i.i128.5 = trunc i32 %xor.i.i127.5 to i8 *)
split tmp_v_xor_i_i127_5 v_conv3_i_i128_5 v_xor_i_i127_5 8;
vpc v_conv3_i_i128_5@uint8 v_conv3_i_i128_5@uint32;
(*   %conv4.i.i129.5 = zext i8 %conv5.i.i131.4 to i32 *)
cast v_conv4_i_i129_5@uint32 v_conv5_i_i131_4@uint8;
(*   %shr.i.i130.5 = ashr i32 %conv4.i.i129.5, 1 *)
(* You may need to modify here *)
split v_shr_i_i130_5 tmp_to_be_used v_conv4_i_i129_5 1;
(*   %conv5.i.i131.5 = trunc i32 %shr.i.i130.5 to i8 *)
split tmp_v_shr_i_i130_5 v_conv5_i_i131_5 v_shr_i_i130_5 8;
vpc v_conv5_i_i131_5@uint8 v_conv5_i_i131_5@uint32;
(*   %conv6.i.i132.5 = zext i8 %conv7.i.i134.4 to i32 *)
cast v_conv6_i_i132_5@uint32 v_conv7_i_i134_4@uint8;
(*   %shl.i.i133.5 = shl i32 %conv6.i.i132.5, 1 *)
shls discard_75 v_shl_i_i133_5 v_conv6_i_i132_5 1;
(*   %conv7.i.i134.5 = trunc i32 %shl.i.i133.5 to i8 *)
split tmp_v_shl_i_i133_5 v_conv7_i_i134_5 v_shl_i_i133_5 8;
vpc v_conv7_i_i134_5@uint8 v_conv7_i_i134_5@uint32;
(*   %conv.i.i122.6 = zext i8 %conv5.i.i131.5 to i32 *)
cast v_conv_i_i122_6@uint32 v_conv5_i_i131_5@uint8;
(*   %and.i.i123.6 = and i32 %conv.i.i122.6, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i123_6 v_conv_i_i122_6 (0x1)@uint32;
(*   %conv1.i.i124.6 = zext i8 %conv7.i.i134.5 to i32 *)
cast v_conv1_i_i124_6@uint32 v_conv7_i_i134_5@uint8;
(*   %mul.i.i125.6 = mul nsw i32 %and.i.i123.6, %conv1.i.i124.6 *)
mul v_mul_i_i125_6 v_and_i_i123_6 v_conv1_i_i124_6;
(*   %conv2.i.i126.6 = zext i8 %conv3.i.i128.5 to i32 *)
cast v_conv2_i_i126_6@uint32 v_conv3_i_i128_5@uint8;
(*   %xor.i.i127.6 = xor i32 %conv2.i.i126.6, %mul.i.i125.6 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i127_6 v_conv2_i_i126_6 v_mul_i_i125_6;
(*   %conv3.i.i128.6 = trunc i32 %xor.i.i127.6 to i8 *)
split tmp_v_xor_i_i127_6 v_conv3_i_i128_6 v_xor_i_i127_6 8;
vpc v_conv3_i_i128_6@uint8 v_conv3_i_i128_6@uint32;
(*   %conv4.i.i129.6 = zext i8 %conv5.i.i131.5 to i32 *)
cast v_conv4_i_i129_6@uint32 v_conv5_i_i131_5@uint8;
(*   %shr.i.i130.6 = ashr i32 %conv4.i.i129.6, 1 *)
(* You may need to modify here *)
split v_shr_i_i130_6 tmp_to_be_used v_conv4_i_i129_6 1;
(*   %conv5.i.i131.6 = trunc i32 %shr.i.i130.6 to i8 *)
split tmp_v_shr_i_i130_6 v_conv5_i_i131_6 v_shr_i_i130_6 8;
vpc v_conv5_i_i131_6@uint8 v_conv5_i_i131_6@uint32;
(*   %conv6.i.i132.6 = zext i8 %conv7.i.i134.5 to i32 *)
cast v_conv6_i_i132_6@uint32 v_conv7_i_i134_5@uint8;
(*   %shl.i.i133.6 = shl i32 %conv6.i.i132.6, 1 *)
shls discard_76 v_shl_i_i133_6 v_conv6_i_i132_6 1;
(*   %conv7.i.i134.6 = trunc i32 %shl.i.i133.6 to i8 *)
split tmp_v_shl_i_i133_6 v_conv7_i_i134_6 v_shl_i_i133_6 8;
vpc v_conv7_i_i134_6@uint8 v_conv7_i_i134_6@uint32;
(*   %conv.i.i122.7 = zext i8 %conv5.i.i131.6 to i32 *)
cast v_conv_i_i122_7@uint32 v_conv5_i_i131_6@uint8;
(*   %and.i.i123.7 = and i32 %conv.i.i122.7, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i123_7 v_conv_i_i122_7 (0x1)@uint32;
(*   %conv1.i.i124.7 = zext i8 %conv7.i.i134.6 to i32 *)
cast v_conv1_i_i124_7@uint32 v_conv7_i_i134_6@uint8;
(*   %mul.i.i125.7 = mul nsw i32 %and.i.i123.7, %conv1.i.i124.7 *)
mul v_mul_i_i125_7 v_and_i_i123_7 v_conv1_i_i124_7;
(*   %conv2.i.i126.7 = zext i8 %conv3.i.i128.6 to i32 *)
cast v_conv2_i_i126_7@uint32 v_conv3_i_i128_6@uint8;
(*   %xor.i.i127.7 = xor i32 %conv2.i.i126.7, %mul.i.i125.7 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i127_7 v_conv2_i_i126_7 v_mul_i_i125_7;
(*   %conv3.i.i128.7 = trunc i32 %xor.i.i127.7 to i8 *)
split tmp_v_xor_i_i127_7 v_conv3_i_i128_7 v_xor_i_i127_7 8;
vpc v_conv3_i_i128_7@uint8 v_conv3_i_i128_7@uint32;
(*   store i8 %conv3.i.i128.7, i8* %arraydecay3, align 1 *)
mov a1b_0 v_conv3_i_i128_7;
(*   %arrayidx.i114.1 = getelementptr inbounds i8, i8* %a, i64 2 *)
(*   %22 = load i8, i8* %arrayidx.i114.1, align 1 *)
mov v22 a_2;
(*   %arrayidx4.i118.1 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %23 = load i8, i8* %arrayidx4.i118.1, align 1 *)
mov v23 b_1;
(*   %conv.i.i122.1156 = zext i8 %23 to i32 *)
cast v_conv_i_i122_1156@uint32 v23@uint8;
(*   %and.i.i123.1157 = and i32 %conv.i.i122.1156, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i123_1157 v_conv_i_i122_1156 (0x1)@uint32;
(*   %conv1.i.i124.1158 = zext i8 %22 to i32 *)
cast v_conv1_i_i124_1158@uint32 v22@uint8;
(*   %mul.i.i125.1159 = mul nsw i32 %and.i.i123.1157, %conv1.i.i124.1158 *)
mul v_mul_i_i125_1159 v_and_i_i123_1157 v_conv1_i_i124_1158;
(*   %conv3.i.i128.1160 = trunc i32 %mul.i.i125.1159 to i8 *)
split tmp_v_mul_i_i125_1159 v_conv3_i_i128_1160 v_mul_i_i125_1159 8;
vpc v_conv3_i_i128_1160@uint8 v_conv3_i_i128_1160@uint32;
(*   %conv4.i.i129.1161 = zext i8 %23 to i32 *)
cast v_conv4_i_i129_1161@uint32 v23@uint8;
(*   %shr.i.i130.1162 = ashr i32 %conv4.i.i129.1161, 1 *)
(* You may need to modify here *)
split v_shr_i_i130_1162 tmp_to_be_used v_conv4_i_i129_1161 1;
(*   %conv5.i.i131.1163 = trunc i32 %shr.i.i130.1162 to i8 *)
split tmp_v_shr_i_i130_1162 v_conv5_i_i131_1163 v_shr_i_i130_1162 8;
vpc v_conv5_i_i131_1163@uint8 v_conv5_i_i131_1163@uint32;
(*   %conv6.i.i132.1164 = zext i8 %22 to i32 *)
cast v_conv6_i_i132_1164@uint32 v22@uint8;
(*   %shl.i.i133.1165 = shl i32 %conv6.i.i132.1164, 1 *)
shls discard_77 v_shl_i_i133_1165 v_conv6_i_i132_1164 1;
(*   %conv7.i.i134.1166 = trunc i32 %shl.i.i133.1165 to i8 *)
split tmp_v_shl_i_i133_1165 v_conv7_i_i134_1166 v_shl_i_i133_1165 8;
vpc v_conv7_i_i134_1166@uint8 v_conv7_i_i134_1166@uint32;
(*   %conv.i.i122.1.1 = zext i8 %conv5.i.i131.1163 to i32 *)
cast v_conv_i_i122_1_1@uint32 v_conv5_i_i131_1163@uint8;
(*   %and.i.i123.1.1 = and i32 %conv.i.i122.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i123_1_1 v_conv_i_i122_1_1 (0x1)@uint32;
(*   %conv1.i.i124.1.1 = zext i8 %conv7.i.i134.1166 to i32 *)
cast v_conv1_i_i124_1_1@uint32 v_conv7_i_i134_1166@uint8;
(*   %mul.i.i125.1.1 = mul nsw i32 %and.i.i123.1.1, %conv1.i.i124.1.1 *)
mul v_mul_i_i125_1_1 v_and_i_i123_1_1 v_conv1_i_i124_1_1;
(*   %conv2.i.i126.1.1 = zext i8 %conv3.i.i128.1160 to i32 *)
cast v_conv2_i_i126_1_1@uint32 v_conv3_i_i128_1160@uint8;
(*   %xor.i.i127.1.1 = xor i32 %conv2.i.i126.1.1, %mul.i.i125.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i127_1_1 v_conv2_i_i126_1_1 v_mul_i_i125_1_1;
(*   %conv3.i.i128.1.1 = trunc i32 %xor.i.i127.1.1 to i8 *)
split tmp_v_xor_i_i127_1_1 v_conv3_i_i128_1_1 v_xor_i_i127_1_1 8;
vpc v_conv3_i_i128_1_1@uint8 v_conv3_i_i128_1_1@uint32;
(*   %conv4.i.i129.1.1 = zext i8 %conv5.i.i131.1163 to i32 *)
cast v_conv4_i_i129_1_1@uint32 v_conv5_i_i131_1163@uint8;
(*   %shr.i.i130.1.1 = ashr i32 %conv4.i.i129.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i130_1_1 tmp_to_be_used v_conv4_i_i129_1_1 1;
(*   %conv5.i.i131.1.1 = trunc i32 %shr.i.i130.1.1 to i8 *)
split tmp_v_shr_i_i130_1_1 v_conv5_i_i131_1_1 v_shr_i_i130_1_1 8;
vpc v_conv5_i_i131_1_1@uint8 v_conv5_i_i131_1_1@uint32;
(*   %conv6.i.i132.1.1 = zext i8 %conv7.i.i134.1166 to i32 *)
cast v_conv6_i_i132_1_1@uint32 v_conv7_i_i134_1166@uint8;
(*   %shl.i.i133.1.1 = shl i32 %conv6.i.i132.1.1, 1 *)
shls discard_78 v_shl_i_i133_1_1 v_conv6_i_i132_1_1 1;
(*   %conv7.i.i134.1.1 = trunc i32 %shl.i.i133.1.1 to i8 *)
split tmp_v_shl_i_i133_1_1 v_conv7_i_i134_1_1 v_shl_i_i133_1_1 8;
vpc v_conv7_i_i134_1_1@uint8 v_conv7_i_i134_1_1@uint32;
(*   %conv.i.i122.2.1 = zext i8 %conv5.i.i131.1.1 to i32 *)
cast v_conv_i_i122_2_1@uint32 v_conv5_i_i131_1_1@uint8;
(*   %and.i.i123.2.1 = and i32 %conv.i.i122.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i123_2_1 v_conv_i_i122_2_1 (0x1)@uint32;
(*   %conv1.i.i124.2.1 = zext i8 %conv7.i.i134.1.1 to i32 *)
cast v_conv1_i_i124_2_1@uint32 v_conv7_i_i134_1_1@uint8;
(*   %mul.i.i125.2.1 = mul nsw i32 %and.i.i123.2.1, %conv1.i.i124.2.1 *)
mul v_mul_i_i125_2_1 v_and_i_i123_2_1 v_conv1_i_i124_2_1;
(*   %conv2.i.i126.2.1 = zext i8 %conv3.i.i128.1.1 to i32 *)
cast v_conv2_i_i126_2_1@uint32 v_conv3_i_i128_1_1@uint8;
(*   %xor.i.i127.2.1 = xor i32 %conv2.i.i126.2.1, %mul.i.i125.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i127_2_1 v_conv2_i_i126_2_1 v_mul_i_i125_2_1;
(*   %conv3.i.i128.2.1 = trunc i32 %xor.i.i127.2.1 to i8 *)
split tmp_v_xor_i_i127_2_1 v_conv3_i_i128_2_1 v_xor_i_i127_2_1 8;
vpc v_conv3_i_i128_2_1@uint8 v_conv3_i_i128_2_1@uint32;
(*   %conv4.i.i129.2.1 = zext i8 %conv5.i.i131.1.1 to i32 *)
cast v_conv4_i_i129_2_1@uint32 v_conv5_i_i131_1_1@uint8;
(*   %shr.i.i130.2.1 = ashr i32 %conv4.i.i129.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i130_2_1 tmp_to_be_used v_conv4_i_i129_2_1 1;
(*   %conv5.i.i131.2.1 = trunc i32 %shr.i.i130.2.1 to i8 *)
split tmp_v_shr_i_i130_2_1 v_conv5_i_i131_2_1 v_shr_i_i130_2_1 8;
vpc v_conv5_i_i131_2_1@uint8 v_conv5_i_i131_2_1@uint32;
(*   %conv6.i.i132.2.1 = zext i8 %conv7.i.i134.1.1 to i32 *)
cast v_conv6_i_i132_2_1@uint32 v_conv7_i_i134_1_1@uint8;
(*   %shl.i.i133.2.1 = shl i32 %conv6.i.i132.2.1, 1 *)
shls discard_79 v_shl_i_i133_2_1 v_conv6_i_i132_2_1 1;
(*   %conv7.i.i134.2.1 = trunc i32 %shl.i.i133.2.1 to i8 *)
split tmp_v_shl_i_i133_2_1 v_conv7_i_i134_2_1 v_shl_i_i133_2_1 8;
vpc v_conv7_i_i134_2_1@uint8 v_conv7_i_i134_2_1@uint32;
(*   %conv.i.i122.3.1 = zext i8 %conv5.i.i131.2.1 to i32 *)
cast v_conv_i_i122_3_1@uint32 v_conv5_i_i131_2_1@uint8;
(*   %and.i.i123.3.1 = and i32 %conv.i.i122.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i123_3_1 v_conv_i_i122_3_1 (0x1)@uint32;
(*   %conv1.i.i124.3.1 = zext i8 %conv7.i.i134.2.1 to i32 *)
cast v_conv1_i_i124_3_1@uint32 v_conv7_i_i134_2_1@uint8;
(*   %mul.i.i125.3.1 = mul nsw i32 %and.i.i123.3.1, %conv1.i.i124.3.1 *)
mul v_mul_i_i125_3_1 v_and_i_i123_3_1 v_conv1_i_i124_3_1;
(*   %conv2.i.i126.3.1 = zext i8 %conv3.i.i128.2.1 to i32 *)
cast v_conv2_i_i126_3_1@uint32 v_conv3_i_i128_2_1@uint8;
(*   %xor.i.i127.3.1 = xor i32 %conv2.i.i126.3.1, %mul.i.i125.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i127_3_1 v_conv2_i_i126_3_1 v_mul_i_i125_3_1;
(*   %conv3.i.i128.3.1 = trunc i32 %xor.i.i127.3.1 to i8 *)
split tmp_v_xor_i_i127_3_1 v_conv3_i_i128_3_1 v_xor_i_i127_3_1 8;
vpc v_conv3_i_i128_3_1@uint8 v_conv3_i_i128_3_1@uint32;
(*   %conv4.i.i129.3.1 = zext i8 %conv5.i.i131.2.1 to i32 *)
cast v_conv4_i_i129_3_1@uint32 v_conv5_i_i131_2_1@uint8;
(*   %shr.i.i130.3.1 = ashr i32 %conv4.i.i129.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i130_3_1 tmp_to_be_used v_conv4_i_i129_3_1 1;
(*   %conv5.i.i131.3.1 = trunc i32 %shr.i.i130.3.1 to i8 *)
split tmp_v_shr_i_i130_3_1 v_conv5_i_i131_3_1 v_shr_i_i130_3_1 8;
vpc v_conv5_i_i131_3_1@uint8 v_conv5_i_i131_3_1@uint32;
(*   %conv6.i.i132.3.1 = zext i8 %conv7.i.i134.2.1 to i32 *)
cast v_conv6_i_i132_3_1@uint32 v_conv7_i_i134_2_1@uint8;
(*   %shl.i.i133.3.1 = shl i32 %conv6.i.i132.3.1, 1 *)
shls discard_80 v_shl_i_i133_3_1 v_conv6_i_i132_3_1 1;
(*   %conv7.i.i134.3.1 = trunc i32 %shl.i.i133.3.1 to i8 *)
split tmp_v_shl_i_i133_3_1 v_conv7_i_i134_3_1 v_shl_i_i133_3_1 8;
vpc v_conv7_i_i134_3_1@uint8 v_conv7_i_i134_3_1@uint32;
(*   %conv.i.i122.4.1 = zext i8 %conv5.i.i131.3.1 to i32 *)
cast v_conv_i_i122_4_1@uint32 v_conv5_i_i131_3_1@uint8;
(*   %and.i.i123.4.1 = and i32 %conv.i.i122.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i123_4_1 v_conv_i_i122_4_1 (0x1)@uint32;
(*   %conv1.i.i124.4.1 = zext i8 %conv7.i.i134.3.1 to i32 *)
cast v_conv1_i_i124_4_1@uint32 v_conv7_i_i134_3_1@uint8;
(*   %mul.i.i125.4.1 = mul nsw i32 %and.i.i123.4.1, %conv1.i.i124.4.1 *)
mul v_mul_i_i125_4_1 v_and_i_i123_4_1 v_conv1_i_i124_4_1;
(*   %conv2.i.i126.4.1 = zext i8 %conv3.i.i128.3.1 to i32 *)
cast v_conv2_i_i126_4_1@uint32 v_conv3_i_i128_3_1@uint8;
(*   %xor.i.i127.4.1 = xor i32 %conv2.i.i126.4.1, %mul.i.i125.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i127_4_1 v_conv2_i_i126_4_1 v_mul_i_i125_4_1;
(*   %conv3.i.i128.4.1 = trunc i32 %xor.i.i127.4.1 to i8 *)
split tmp_v_xor_i_i127_4_1 v_conv3_i_i128_4_1 v_xor_i_i127_4_1 8;
vpc v_conv3_i_i128_4_1@uint8 v_conv3_i_i128_4_1@uint32;
(*   %conv4.i.i129.4.1 = zext i8 %conv5.i.i131.3.1 to i32 *)
cast v_conv4_i_i129_4_1@uint32 v_conv5_i_i131_3_1@uint8;
(*   %shr.i.i130.4.1 = ashr i32 %conv4.i.i129.4.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i130_4_1 tmp_to_be_used v_conv4_i_i129_4_1 1;
(*   %conv5.i.i131.4.1 = trunc i32 %shr.i.i130.4.1 to i8 *)
split tmp_v_shr_i_i130_4_1 v_conv5_i_i131_4_1 v_shr_i_i130_4_1 8;
vpc v_conv5_i_i131_4_1@uint8 v_conv5_i_i131_4_1@uint32;
(*   %conv6.i.i132.4.1 = zext i8 %conv7.i.i134.3.1 to i32 *)
cast v_conv6_i_i132_4_1@uint32 v_conv7_i_i134_3_1@uint8;
(*   %shl.i.i133.4.1 = shl i32 %conv6.i.i132.4.1, 1 *)
shls discard_81 v_shl_i_i133_4_1 v_conv6_i_i132_4_1 1;
(*   %conv7.i.i134.4.1 = trunc i32 %shl.i.i133.4.1 to i8 *)
split tmp_v_shl_i_i133_4_1 v_conv7_i_i134_4_1 v_shl_i_i133_4_1 8;
vpc v_conv7_i_i134_4_1@uint8 v_conv7_i_i134_4_1@uint32;
(*   %conv.i.i122.5.1 = zext i8 %conv5.i.i131.4.1 to i32 *)
cast v_conv_i_i122_5_1@uint32 v_conv5_i_i131_4_1@uint8;
(*   %and.i.i123.5.1 = and i32 %conv.i.i122.5.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i123_5_1 v_conv_i_i122_5_1 (0x1)@uint32;
(*   %conv1.i.i124.5.1 = zext i8 %conv7.i.i134.4.1 to i32 *)
cast v_conv1_i_i124_5_1@uint32 v_conv7_i_i134_4_1@uint8;
(*   %mul.i.i125.5.1 = mul nsw i32 %and.i.i123.5.1, %conv1.i.i124.5.1 *)
mul v_mul_i_i125_5_1 v_and_i_i123_5_1 v_conv1_i_i124_5_1;
(*   %conv2.i.i126.5.1 = zext i8 %conv3.i.i128.4.1 to i32 *)
cast v_conv2_i_i126_5_1@uint32 v_conv3_i_i128_4_1@uint8;
(*   %xor.i.i127.5.1 = xor i32 %conv2.i.i126.5.1, %mul.i.i125.5.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i127_5_1 v_conv2_i_i126_5_1 v_mul_i_i125_5_1;
(*   %conv3.i.i128.5.1 = trunc i32 %xor.i.i127.5.1 to i8 *)
split tmp_v_xor_i_i127_5_1 v_conv3_i_i128_5_1 v_xor_i_i127_5_1 8;
vpc v_conv3_i_i128_5_1@uint8 v_conv3_i_i128_5_1@uint32;
(*   %conv4.i.i129.5.1 = zext i8 %conv5.i.i131.4.1 to i32 *)
cast v_conv4_i_i129_5_1@uint32 v_conv5_i_i131_4_1@uint8;
(*   %shr.i.i130.5.1 = ashr i32 %conv4.i.i129.5.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i130_5_1 tmp_to_be_used v_conv4_i_i129_5_1 1;
(*   %conv5.i.i131.5.1 = trunc i32 %shr.i.i130.5.1 to i8 *)
split tmp_v_shr_i_i130_5_1 v_conv5_i_i131_5_1 v_shr_i_i130_5_1 8;
vpc v_conv5_i_i131_5_1@uint8 v_conv5_i_i131_5_1@uint32;
(*   %conv6.i.i132.5.1 = zext i8 %conv7.i.i134.4.1 to i32 *)
cast v_conv6_i_i132_5_1@uint32 v_conv7_i_i134_4_1@uint8;
(*   %shl.i.i133.5.1 = shl i32 %conv6.i.i132.5.1, 1 *)
shls discard_82 v_shl_i_i133_5_1 v_conv6_i_i132_5_1 1;
(*   %conv7.i.i134.5.1 = trunc i32 %shl.i.i133.5.1 to i8 *)
split tmp_v_shl_i_i133_5_1 v_conv7_i_i134_5_1 v_shl_i_i133_5_1 8;
vpc v_conv7_i_i134_5_1@uint8 v_conv7_i_i134_5_1@uint32;
(*   %conv.i.i122.6.1 = zext i8 %conv5.i.i131.5.1 to i32 *)
cast v_conv_i_i122_6_1@uint32 v_conv5_i_i131_5_1@uint8;
(*   %and.i.i123.6.1 = and i32 %conv.i.i122.6.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i123_6_1 v_conv_i_i122_6_1 (0x1)@uint32;
(*   %conv1.i.i124.6.1 = zext i8 %conv7.i.i134.5.1 to i32 *)
cast v_conv1_i_i124_6_1@uint32 v_conv7_i_i134_5_1@uint8;
(*   %mul.i.i125.6.1 = mul nsw i32 %and.i.i123.6.1, %conv1.i.i124.6.1 *)
mul v_mul_i_i125_6_1 v_and_i_i123_6_1 v_conv1_i_i124_6_1;
(*   %conv2.i.i126.6.1 = zext i8 %conv3.i.i128.5.1 to i32 *)
cast v_conv2_i_i126_6_1@uint32 v_conv3_i_i128_5_1@uint8;
(*   %xor.i.i127.6.1 = xor i32 %conv2.i.i126.6.1, %mul.i.i125.6.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i127_6_1 v_conv2_i_i126_6_1 v_mul_i_i125_6_1;
(*   %conv3.i.i128.6.1 = trunc i32 %xor.i.i127.6.1 to i8 *)
split tmp_v_xor_i_i127_6_1 v_conv3_i_i128_6_1 v_xor_i_i127_6_1 8;
vpc v_conv3_i_i128_6_1@uint8 v_conv3_i_i128_6_1@uint32;
(*   %conv4.i.i129.6.1 = zext i8 %conv5.i.i131.5.1 to i32 *)
cast v_conv4_i_i129_6_1@uint32 v_conv5_i_i131_5_1@uint8;
(*   %shr.i.i130.6.1 = ashr i32 %conv4.i.i129.6.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i130_6_1 tmp_to_be_used v_conv4_i_i129_6_1 1;
(*   %conv5.i.i131.6.1 = trunc i32 %shr.i.i130.6.1 to i8 *)
split tmp_v_shr_i_i130_6_1 v_conv5_i_i131_6_1 v_shr_i_i130_6_1 8;
vpc v_conv5_i_i131_6_1@uint8 v_conv5_i_i131_6_1@uint32;
(*   %conv6.i.i132.6.1 = zext i8 %conv7.i.i134.5.1 to i32 *)
cast v_conv6_i_i132_6_1@uint32 v_conv7_i_i134_5_1@uint8;
(*   %shl.i.i133.6.1 = shl i32 %conv6.i.i132.6.1, 1 *)
shls discard_83 v_shl_i_i133_6_1 v_conv6_i_i132_6_1 1;
(*   %conv7.i.i134.6.1 = trunc i32 %shl.i.i133.6.1 to i8 *)
split tmp_v_shl_i_i133_6_1 v_conv7_i_i134_6_1 v_shl_i_i133_6_1 8;
vpc v_conv7_i_i134_6_1@uint8 v_conv7_i_i134_6_1@uint32;
(*   %conv.i.i122.7.1 = zext i8 %conv5.i.i131.6.1 to i32 *)
cast v_conv_i_i122_7_1@uint32 v_conv5_i_i131_6_1@uint8;
(*   %and.i.i123.7.1 = and i32 %conv.i.i122.7.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i123_7_1 v_conv_i_i122_7_1 (0x1)@uint32;
(*   %conv1.i.i124.7.1 = zext i8 %conv7.i.i134.6.1 to i32 *)
cast v_conv1_i_i124_7_1@uint32 v_conv7_i_i134_6_1@uint8;
(*   %mul.i.i125.7.1 = mul nsw i32 %and.i.i123.7.1, %conv1.i.i124.7.1 *)
mul v_mul_i_i125_7_1 v_and_i_i123_7_1 v_conv1_i_i124_7_1;
(*   %conv2.i.i126.7.1 = zext i8 %conv3.i.i128.6.1 to i32 *)
cast v_conv2_i_i126_7_1@uint32 v_conv3_i_i128_6_1@uint8;
(*   %xor.i.i127.7.1 = xor i32 %conv2.i.i126.7.1, %mul.i.i125.7.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i127_7_1 v_conv2_i_i126_7_1 v_mul_i_i125_7_1;
(*   %conv3.i.i128.7.1 = trunc i32 %xor.i.i127.7.1 to i8 *)
split tmp_v_xor_i_i127_7_1 v_conv3_i_i128_7_1 v_xor_i_i127_7_1 8;
vpc v_conv3_i_i128_7_1@uint8 v_conv3_i_i128_7_1@uint32;
(*   %arrayidx6.i138.1 = getelementptr inbounds i8, i8* %arraydecay3, i64 1 *)
(*   store i8 %conv3.i.i128.7.1, i8* %arrayidx6.i138.1, align 1 *)
mov a1b_1 v_conv3_i_i128_7_1;
(*   %arrayidx.i114.2 = getelementptr inbounds i8, i8* %a, i64 3 *)
(*   %24 = load i8, i8* %arrayidx.i114.2, align 1 *)
mov v24 a_3;
(*   %arrayidx4.i118.2 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %25 = load i8, i8* %arrayidx4.i118.2, align 1 *)
mov v25 b_2;
(*   %conv.i.i122.2167 = zext i8 %25 to i32 *)
cast v_conv_i_i122_2167@uint32 v25@uint8;
(*   %and.i.i123.2168 = and i32 %conv.i.i122.2167, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i123_2168 v_conv_i_i122_2167 (0x1)@uint32;
(*   %conv1.i.i124.2169 = zext i8 %24 to i32 *)
cast v_conv1_i_i124_2169@uint32 v24@uint8;
(*   %mul.i.i125.2170 = mul nsw i32 %and.i.i123.2168, %conv1.i.i124.2169 *)
mul v_mul_i_i125_2170 v_and_i_i123_2168 v_conv1_i_i124_2169;
(*   %conv3.i.i128.2171 = trunc i32 %mul.i.i125.2170 to i8 *)
split tmp_v_mul_i_i125_2170 v_conv3_i_i128_2171 v_mul_i_i125_2170 8;
vpc v_conv3_i_i128_2171@uint8 v_conv3_i_i128_2171@uint32;
(*   %conv4.i.i129.2172 = zext i8 %25 to i32 *)
cast v_conv4_i_i129_2172@uint32 v25@uint8;
(*   %shr.i.i130.2173 = ashr i32 %conv4.i.i129.2172, 1 *)
(* You may need to modify here *)
split v_shr_i_i130_2173 tmp_to_be_used v_conv4_i_i129_2172 1;
(*   %conv5.i.i131.2174 = trunc i32 %shr.i.i130.2173 to i8 *)
split tmp_v_shr_i_i130_2173 v_conv5_i_i131_2174 v_shr_i_i130_2173 8;
vpc v_conv5_i_i131_2174@uint8 v_conv5_i_i131_2174@uint32;
(*   %conv6.i.i132.2175 = zext i8 %24 to i32 *)
cast v_conv6_i_i132_2175@uint32 v24@uint8;
(*   %shl.i.i133.2176 = shl i32 %conv6.i.i132.2175, 1 *)
shls discard_84 v_shl_i_i133_2176 v_conv6_i_i132_2175 1;
(*   %conv7.i.i134.2177 = trunc i32 %shl.i.i133.2176 to i8 *)
split tmp_v_shl_i_i133_2176 v_conv7_i_i134_2177 v_shl_i_i133_2176 8;
vpc v_conv7_i_i134_2177@uint8 v_conv7_i_i134_2177@uint32;
(*   %conv.i.i122.1.2 = zext i8 %conv5.i.i131.2174 to i32 *)
cast v_conv_i_i122_1_2@uint32 v_conv5_i_i131_2174@uint8;
(*   %and.i.i123.1.2 = and i32 %conv.i.i122.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i123_1_2 v_conv_i_i122_1_2 (0x1)@uint32;
(*   %conv1.i.i124.1.2 = zext i8 %conv7.i.i134.2177 to i32 *)
cast v_conv1_i_i124_1_2@uint32 v_conv7_i_i134_2177@uint8;
(*   %mul.i.i125.1.2 = mul nsw i32 %and.i.i123.1.2, %conv1.i.i124.1.2 *)
mul v_mul_i_i125_1_2 v_and_i_i123_1_2 v_conv1_i_i124_1_2;
(*   %conv2.i.i126.1.2 = zext i8 %conv3.i.i128.2171 to i32 *)
cast v_conv2_i_i126_1_2@uint32 v_conv3_i_i128_2171@uint8;
(*   %xor.i.i127.1.2 = xor i32 %conv2.i.i126.1.2, %mul.i.i125.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i127_1_2 v_conv2_i_i126_1_2 v_mul_i_i125_1_2;
(*   %conv3.i.i128.1.2 = trunc i32 %xor.i.i127.1.2 to i8 *)
split tmp_v_xor_i_i127_1_2 v_conv3_i_i128_1_2 v_xor_i_i127_1_2 8;
vpc v_conv3_i_i128_1_2@uint8 v_conv3_i_i128_1_2@uint32;
(*   %conv4.i.i129.1.2 = zext i8 %conv5.i.i131.2174 to i32 *)
cast v_conv4_i_i129_1_2@uint32 v_conv5_i_i131_2174@uint8;
(*   %shr.i.i130.1.2 = ashr i32 %conv4.i.i129.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i130_1_2 tmp_to_be_used v_conv4_i_i129_1_2 1;
(*   %conv5.i.i131.1.2 = trunc i32 %shr.i.i130.1.2 to i8 *)
split tmp_v_shr_i_i130_1_2 v_conv5_i_i131_1_2 v_shr_i_i130_1_2 8;
vpc v_conv5_i_i131_1_2@uint8 v_conv5_i_i131_1_2@uint32;
(*   %conv6.i.i132.1.2 = zext i8 %conv7.i.i134.2177 to i32 *)
cast v_conv6_i_i132_1_2@uint32 v_conv7_i_i134_2177@uint8;
(*   %shl.i.i133.1.2 = shl i32 %conv6.i.i132.1.2, 1 *)
shls discard_85 v_shl_i_i133_1_2 v_conv6_i_i132_1_2 1;
(*   %conv7.i.i134.1.2 = trunc i32 %shl.i.i133.1.2 to i8 *)
split tmp_v_shl_i_i133_1_2 v_conv7_i_i134_1_2 v_shl_i_i133_1_2 8;
vpc v_conv7_i_i134_1_2@uint8 v_conv7_i_i134_1_2@uint32;
(*   %conv.i.i122.2.2 = zext i8 %conv5.i.i131.1.2 to i32 *)
cast v_conv_i_i122_2_2@uint32 v_conv5_i_i131_1_2@uint8;
(*   %and.i.i123.2.2 = and i32 %conv.i.i122.2.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i123_2_2 v_conv_i_i122_2_2 (0x1)@uint32;
(*   %conv1.i.i124.2.2 = zext i8 %conv7.i.i134.1.2 to i32 *)
cast v_conv1_i_i124_2_2@uint32 v_conv7_i_i134_1_2@uint8;
(*   %mul.i.i125.2.2 = mul nsw i32 %and.i.i123.2.2, %conv1.i.i124.2.2 *)
mul v_mul_i_i125_2_2 v_and_i_i123_2_2 v_conv1_i_i124_2_2;
(*   %conv2.i.i126.2.2 = zext i8 %conv3.i.i128.1.2 to i32 *)
cast v_conv2_i_i126_2_2@uint32 v_conv3_i_i128_1_2@uint8;
(*   %xor.i.i127.2.2 = xor i32 %conv2.i.i126.2.2, %mul.i.i125.2.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i127_2_2 v_conv2_i_i126_2_2 v_mul_i_i125_2_2;
(*   %conv3.i.i128.2.2 = trunc i32 %xor.i.i127.2.2 to i8 *)
split tmp_v_xor_i_i127_2_2 v_conv3_i_i128_2_2 v_xor_i_i127_2_2 8;
vpc v_conv3_i_i128_2_2@uint8 v_conv3_i_i128_2_2@uint32;
(*   %conv4.i.i129.2.2 = zext i8 %conv5.i.i131.1.2 to i32 *)
cast v_conv4_i_i129_2_2@uint32 v_conv5_i_i131_1_2@uint8;
(*   %shr.i.i130.2.2 = ashr i32 %conv4.i.i129.2.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i130_2_2 tmp_to_be_used v_conv4_i_i129_2_2 1;
(*   %conv5.i.i131.2.2 = trunc i32 %shr.i.i130.2.2 to i8 *)
split tmp_v_shr_i_i130_2_2 v_conv5_i_i131_2_2 v_shr_i_i130_2_2 8;
vpc v_conv5_i_i131_2_2@uint8 v_conv5_i_i131_2_2@uint32;
(*   %conv6.i.i132.2.2 = zext i8 %conv7.i.i134.1.2 to i32 *)
cast v_conv6_i_i132_2_2@uint32 v_conv7_i_i134_1_2@uint8;
(*   %shl.i.i133.2.2 = shl i32 %conv6.i.i132.2.2, 1 *)
shls discard_86 v_shl_i_i133_2_2 v_conv6_i_i132_2_2 1;
(*   %conv7.i.i134.2.2 = trunc i32 %shl.i.i133.2.2 to i8 *)
split tmp_v_shl_i_i133_2_2 v_conv7_i_i134_2_2 v_shl_i_i133_2_2 8;
vpc v_conv7_i_i134_2_2@uint8 v_conv7_i_i134_2_2@uint32;
(*   %conv.i.i122.3.2 = zext i8 %conv5.i.i131.2.2 to i32 *)
cast v_conv_i_i122_3_2@uint32 v_conv5_i_i131_2_2@uint8;
(*   %and.i.i123.3.2 = and i32 %conv.i.i122.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i123_3_2 v_conv_i_i122_3_2 (0x1)@uint32;
(*   %conv1.i.i124.3.2 = zext i8 %conv7.i.i134.2.2 to i32 *)
cast v_conv1_i_i124_3_2@uint32 v_conv7_i_i134_2_2@uint8;
(*   %mul.i.i125.3.2 = mul nsw i32 %and.i.i123.3.2, %conv1.i.i124.3.2 *)
mul v_mul_i_i125_3_2 v_and_i_i123_3_2 v_conv1_i_i124_3_2;
(*   %conv2.i.i126.3.2 = zext i8 %conv3.i.i128.2.2 to i32 *)
cast v_conv2_i_i126_3_2@uint32 v_conv3_i_i128_2_2@uint8;
(*   %xor.i.i127.3.2 = xor i32 %conv2.i.i126.3.2, %mul.i.i125.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i127_3_2 v_conv2_i_i126_3_2 v_mul_i_i125_3_2;
(*   %conv3.i.i128.3.2 = trunc i32 %xor.i.i127.3.2 to i8 *)
split tmp_v_xor_i_i127_3_2 v_conv3_i_i128_3_2 v_xor_i_i127_3_2 8;
vpc v_conv3_i_i128_3_2@uint8 v_conv3_i_i128_3_2@uint32;
(*   %conv4.i.i129.3.2 = zext i8 %conv5.i.i131.2.2 to i32 *)
cast v_conv4_i_i129_3_2@uint32 v_conv5_i_i131_2_2@uint8;
(*   %shr.i.i130.3.2 = ashr i32 %conv4.i.i129.3.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i130_3_2 tmp_to_be_used v_conv4_i_i129_3_2 1;
(*   %conv5.i.i131.3.2 = trunc i32 %shr.i.i130.3.2 to i8 *)
split tmp_v_shr_i_i130_3_2 v_conv5_i_i131_3_2 v_shr_i_i130_3_2 8;
vpc v_conv5_i_i131_3_2@uint8 v_conv5_i_i131_3_2@uint32;
(*   %conv6.i.i132.3.2 = zext i8 %conv7.i.i134.2.2 to i32 *)
cast v_conv6_i_i132_3_2@uint32 v_conv7_i_i134_2_2@uint8;
(*   %shl.i.i133.3.2 = shl i32 %conv6.i.i132.3.2, 1 *)
shls discard_87 v_shl_i_i133_3_2 v_conv6_i_i132_3_2 1;
(*   %conv7.i.i134.3.2 = trunc i32 %shl.i.i133.3.2 to i8 *)
split tmp_v_shl_i_i133_3_2 v_conv7_i_i134_3_2 v_shl_i_i133_3_2 8;
vpc v_conv7_i_i134_3_2@uint8 v_conv7_i_i134_3_2@uint32;
(*   %conv.i.i122.4.2 = zext i8 %conv5.i.i131.3.2 to i32 *)
cast v_conv_i_i122_4_2@uint32 v_conv5_i_i131_3_2@uint8;
(*   %and.i.i123.4.2 = and i32 %conv.i.i122.4.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i123_4_2 v_conv_i_i122_4_2 (0x1)@uint32;
(*   %conv1.i.i124.4.2 = zext i8 %conv7.i.i134.3.2 to i32 *)
cast v_conv1_i_i124_4_2@uint32 v_conv7_i_i134_3_2@uint8;
(*   %mul.i.i125.4.2 = mul nsw i32 %and.i.i123.4.2, %conv1.i.i124.4.2 *)
mul v_mul_i_i125_4_2 v_and_i_i123_4_2 v_conv1_i_i124_4_2;
(*   %conv2.i.i126.4.2 = zext i8 %conv3.i.i128.3.2 to i32 *)
cast v_conv2_i_i126_4_2@uint32 v_conv3_i_i128_3_2@uint8;
(*   %xor.i.i127.4.2 = xor i32 %conv2.i.i126.4.2, %mul.i.i125.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i127_4_2 v_conv2_i_i126_4_2 v_mul_i_i125_4_2;
(*   %conv3.i.i128.4.2 = trunc i32 %xor.i.i127.4.2 to i8 *)
split tmp_v_xor_i_i127_4_2 v_conv3_i_i128_4_2 v_xor_i_i127_4_2 8;
vpc v_conv3_i_i128_4_2@uint8 v_conv3_i_i128_4_2@uint32;
(*   %conv4.i.i129.4.2 = zext i8 %conv5.i.i131.3.2 to i32 *)
cast v_conv4_i_i129_4_2@uint32 v_conv5_i_i131_3_2@uint8;
(*   %shr.i.i130.4.2 = ashr i32 %conv4.i.i129.4.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i130_4_2 tmp_to_be_used v_conv4_i_i129_4_2 1;
(*   %conv5.i.i131.4.2 = trunc i32 %shr.i.i130.4.2 to i8 *)
split tmp_v_shr_i_i130_4_2 v_conv5_i_i131_4_2 v_shr_i_i130_4_2 8;
vpc v_conv5_i_i131_4_2@uint8 v_conv5_i_i131_4_2@uint32;
(*   %conv6.i.i132.4.2 = zext i8 %conv7.i.i134.3.2 to i32 *)
cast v_conv6_i_i132_4_2@uint32 v_conv7_i_i134_3_2@uint8;
(*   %shl.i.i133.4.2 = shl i32 %conv6.i.i132.4.2, 1 *)
shls discard_88 v_shl_i_i133_4_2 v_conv6_i_i132_4_2 1;
(*   %conv7.i.i134.4.2 = trunc i32 %shl.i.i133.4.2 to i8 *)
split tmp_v_shl_i_i133_4_2 v_conv7_i_i134_4_2 v_shl_i_i133_4_2 8;
vpc v_conv7_i_i134_4_2@uint8 v_conv7_i_i134_4_2@uint32;
(*   %conv.i.i122.5.2 = zext i8 %conv5.i.i131.4.2 to i32 *)
cast v_conv_i_i122_5_2@uint32 v_conv5_i_i131_4_2@uint8;
(*   %and.i.i123.5.2 = and i32 %conv.i.i122.5.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i123_5_2 v_conv_i_i122_5_2 (0x1)@uint32;
(*   %conv1.i.i124.5.2 = zext i8 %conv7.i.i134.4.2 to i32 *)
cast v_conv1_i_i124_5_2@uint32 v_conv7_i_i134_4_2@uint8;
(*   %mul.i.i125.5.2 = mul nsw i32 %and.i.i123.5.2, %conv1.i.i124.5.2 *)
mul v_mul_i_i125_5_2 v_and_i_i123_5_2 v_conv1_i_i124_5_2;
(*   %conv2.i.i126.5.2 = zext i8 %conv3.i.i128.4.2 to i32 *)
cast v_conv2_i_i126_5_2@uint32 v_conv3_i_i128_4_2@uint8;
(*   %xor.i.i127.5.2 = xor i32 %conv2.i.i126.5.2, %mul.i.i125.5.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i127_5_2 v_conv2_i_i126_5_2 v_mul_i_i125_5_2;
(*   %conv3.i.i128.5.2 = trunc i32 %xor.i.i127.5.2 to i8 *)
split tmp_v_xor_i_i127_5_2 v_conv3_i_i128_5_2 v_xor_i_i127_5_2 8;
vpc v_conv3_i_i128_5_2@uint8 v_conv3_i_i128_5_2@uint32;
(*   %conv4.i.i129.5.2 = zext i8 %conv5.i.i131.4.2 to i32 *)
cast v_conv4_i_i129_5_2@uint32 v_conv5_i_i131_4_2@uint8;
(*   %shr.i.i130.5.2 = ashr i32 %conv4.i.i129.5.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i130_5_2 tmp_to_be_used v_conv4_i_i129_5_2 1;
(*   %conv5.i.i131.5.2 = trunc i32 %shr.i.i130.5.2 to i8 *)
split tmp_v_shr_i_i130_5_2 v_conv5_i_i131_5_2 v_shr_i_i130_5_2 8;
vpc v_conv5_i_i131_5_2@uint8 v_conv5_i_i131_5_2@uint32;
(*   %conv6.i.i132.5.2 = zext i8 %conv7.i.i134.4.2 to i32 *)
cast v_conv6_i_i132_5_2@uint32 v_conv7_i_i134_4_2@uint8;
(*   %shl.i.i133.5.2 = shl i32 %conv6.i.i132.5.2, 1 *)
shls discard_89 v_shl_i_i133_5_2 v_conv6_i_i132_5_2 1;
(*   %conv7.i.i134.5.2 = trunc i32 %shl.i.i133.5.2 to i8 *)
split tmp_v_shl_i_i133_5_2 v_conv7_i_i134_5_2 v_shl_i_i133_5_2 8;
vpc v_conv7_i_i134_5_2@uint8 v_conv7_i_i134_5_2@uint32;
(*   %conv.i.i122.6.2 = zext i8 %conv5.i.i131.5.2 to i32 *)
cast v_conv_i_i122_6_2@uint32 v_conv5_i_i131_5_2@uint8;
(*   %and.i.i123.6.2 = and i32 %conv.i.i122.6.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i123_6_2 v_conv_i_i122_6_2 (0x1)@uint32;
(*   %conv1.i.i124.6.2 = zext i8 %conv7.i.i134.5.2 to i32 *)
cast v_conv1_i_i124_6_2@uint32 v_conv7_i_i134_5_2@uint8;
(*   %mul.i.i125.6.2 = mul nsw i32 %and.i.i123.6.2, %conv1.i.i124.6.2 *)
mul v_mul_i_i125_6_2 v_and_i_i123_6_2 v_conv1_i_i124_6_2;
(*   %conv2.i.i126.6.2 = zext i8 %conv3.i.i128.5.2 to i32 *)
cast v_conv2_i_i126_6_2@uint32 v_conv3_i_i128_5_2@uint8;
(*   %xor.i.i127.6.2 = xor i32 %conv2.i.i126.6.2, %mul.i.i125.6.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i127_6_2 v_conv2_i_i126_6_2 v_mul_i_i125_6_2;
(*   %conv3.i.i128.6.2 = trunc i32 %xor.i.i127.6.2 to i8 *)
split tmp_v_xor_i_i127_6_2 v_conv3_i_i128_6_2 v_xor_i_i127_6_2 8;
vpc v_conv3_i_i128_6_2@uint8 v_conv3_i_i128_6_2@uint32;
(*   %conv4.i.i129.6.2 = zext i8 %conv5.i.i131.5.2 to i32 *)
cast v_conv4_i_i129_6_2@uint32 v_conv5_i_i131_5_2@uint8;
(*   %shr.i.i130.6.2 = ashr i32 %conv4.i.i129.6.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i130_6_2 tmp_to_be_used v_conv4_i_i129_6_2 1;
(*   %conv5.i.i131.6.2 = trunc i32 %shr.i.i130.6.2 to i8 *)
split tmp_v_shr_i_i130_6_2 v_conv5_i_i131_6_2 v_shr_i_i130_6_2 8;
vpc v_conv5_i_i131_6_2@uint8 v_conv5_i_i131_6_2@uint32;
(*   %conv6.i.i132.6.2 = zext i8 %conv7.i.i134.5.2 to i32 *)
cast v_conv6_i_i132_6_2@uint32 v_conv7_i_i134_5_2@uint8;
(*   %shl.i.i133.6.2 = shl i32 %conv6.i.i132.6.2, 1 *)
shls discard_90 v_shl_i_i133_6_2 v_conv6_i_i132_6_2 1;
(*   %conv7.i.i134.6.2 = trunc i32 %shl.i.i133.6.2 to i8 *)
split tmp_v_shl_i_i133_6_2 v_conv7_i_i134_6_2 v_shl_i_i133_6_2 8;
vpc v_conv7_i_i134_6_2@uint8 v_conv7_i_i134_6_2@uint32;
(*   %conv.i.i122.7.2 = zext i8 %conv5.i.i131.6.2 to i32 *)
cast v_conv_i_i122_7_2@uint32 v_conv5_i_i131_6_2@uint8;
(*   %and.i.i123.7.2 = and i32 %conv.i.i122.7.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i123_7_2 v_conv_i_i122_7_2 (0x1)@uint32;
(*   %conv1.i.i124.7.2 = zext i8 %conv7.i.i134.6.2 to i32 *)
cast v_conv1_i_i124_7_2@uint32 v_conv7_i_i134_6_2@uint8;
(*   %mul.i.i125.7.2 = mul nsw i32 %and.i.i123.7.2, %conv1.i.i124.7.2 *)
mul v_mul_i_i125_7_2 v_and_i_i123_7_2 v_conv1_i_i124_7_2;
(*   %conv2.i.i126.7.2 = zext i8 %conv3.i.i128.6.2 to i32 *)
cast v_conv2_i_i126_7_2@uint32 v_conv3_i_i128_6_2@uint8;
(*   %xor.i.i127.7.2 = xor i32 %conv2.i.i126.7.2, %mul.i.i125.7.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i127_7_2 v_conv2_i_i126_7_2 v_mul_i_i125_7_2;
(*   %conv3.i.i128.7.2 = trunc i32 %xor.i.i127.7.2 to i8 *)
split tmp_v_xor_i_i127_7_2 v_conv3_i_i128_7_2 v_xor_i_i127_7_2 8;
vpc v_conv3_i_i128_7_2@uint8 v_conv3_i_i128_7_2@uint32;
(*   %arrayidx6.i138.2 = getelementptr inbounds i8, i8* %arraydecay3, i64 2 *)
(*   store i8 %conv3.i.i128.7.2, i8* %arrayidx6.i138.2, align 1 *)
mov a1b_2 v_conv3_i_i128_7_2;
(*   %arrayidx.i114.3 = getelementptr inbounds i8, i8* %a, i64 4 *)
(*   %26 = load i8, i8* %arrayidx.i114.3, align 1 *)
mov v26 a_4;
(*   %arrayidx4.i118.3 = getelementptr inbounds i8, i8* %b, i64 3 *)
(*   %27 = load i8, i8* %arrayidx4.i118.3, align 1 *)
mov v27 b_3;
(*   %conv.i.i122.3178 = zext i8 %27 to i32 *)
cast v_conv_i_i122_3178@uint32 v27@uint8;
(*   %and.i.i123.3179 = and i32 %conv.i.i122.3178, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i123_3179 v_conv_i_i122_3178 (0x1)@uint32;
(*   %conv1.i.i124.3180 = zext i8 %26 to i32 *)
cast v_conv1_i_i124_3180@uint32 v26@uint8;
(*   %mul.i.i125.3181 = mul nsw i32 %and.i.i123.3179, %conv1.i.i124.3180 *)
mul v_mul_i_i125_3181 v_and_i_i123_3179 v_conv1_i_i124_3180;
(*   %conv3.i.i128.3182 = trunc i32 %mul.i.i125.3181 to i8 *)
split tmp_v_mul_i_i125_3181 v_conv3_i_i128_3182 v_mul_i_i125_3181 8;
vpc v_conv3_i_i128_3182@uint8 v_conv3_i_i128_3182@uint32;
(*   %conv4.i.i129.3183 = zext i8 %27 to i32 *)
cast v_conv4_i_i129_3183@uint32 v27@uint8;
(*   %shr.i.i130.3184 = ashr i32 %conv4.i.i129.3183, 1 *)
(* You may need to modify here *)
split v_shr_i_i130_3184 tmp_to_be_used v_conv4_i_i129_3183 1;
(*   %conv5.i.i131.3185 = trunc i32 %shr.i.i130.3184 to i8 *)
split tmp_v_shr_i_i130_3184 v_conv5_i_i131_3185 v_shr_i_i130_3184 8;
vpc v_conv5_i_i131_3185@uint8 v_conv5_i_i131_3185@uint32;
(*   %conv6.i.i132.3186 = zext i8 %26 to i32 *)
cast v_conv6_i_i132_3186@uint32 v26@uint8;
(*   %shl.i.i133.3187 = shl i32 %conv6.i.i132.3186, 1 *)
shls discard_91 v_shl_i_i133_3187 v_conv6_i_i132_3186 1;
(*   %conv7.i.i134.3188 = trunc i32 %shl.i.i133.3187 to i8 *)
split tmp_v_shl_i_i133_3187 v_conv7_i_i134_3188 v_shl_i_i133_3187 8;
vpc v_conv7_i_i134_3188@uint8 v_conv7_i_i134_3188@uint32;
(*   %conv.i.i122.1.3 = zext i8 %conv5.i.i131.3185 to i32 *)
cast v_conv_i_i122_1_3@uint32 v_conv5_i_i131_3185@uint8;
(*   %and.i.i123.1.3 = and i32 %conv.i.i122.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i123_1_3 v_conv_i_i122_1_3 (0x1)@uint32;
(*   %conv1.i.i124.1.3 = zext i8 %conv7.i.i134.3188 to i32 *)
cast v_conv1_i_i124_1_3@uint32 v_conv7_i_i134_3188@uint8;
(*   %mul.i.i125.1.3 = mul nsw i32 %and.i.i123.1.3, %conv1.i.i124.1.3 *)
mul v_mul_i_i125_1_3 v_and_i_i123_1_3 v_conv1_i_i124_1_3;
(*   %conv2.i.i126.1.3 = zext i8 %conv3.i.i128.3182 to i32 *)
cast v_conv2_i_i126_1_3@uint32 v_conv3_i_i128_3182@uint8;
(*   %xor.i.i127.1.3 = xor i32 %conv2.i.i126.1.3, %mul.i.i125.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i127_1_3 v_conv2_i_i126_1_3 v_mul_i_i125_1_3;
(*   %conv3.i.i128.1.3 = trunc i32 %xor.i.i127.1.3 to i8 *)
split tmp_v_xor_i_i127_1_3 v_conv3_i_i128_1_3 v_xor_i_i127_1_3 8;
vpc v_conv3_i_i128_1_3@uint8 v_conv3_i_i128_1_3@uint32;
(*   %conv4.i.i129.1.3 = zext i8 %conv5.i.i131.3185 to i32 *)
cast v_conv4_i_i129_1_3@uint32 v_conv5_i_i131_3185@uint8;
(*   %shr.i.i130.1.3 = ashr i32 %conv4.i.i129.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i130_1_3 tmp_to_be_used v_conv4_i_i129_1_3 1;
(*   %conv5.i.i131.1.3 = trunc i32 %shr.i.i130.1.3 to i8 *)
split tmp_v_shr_i_i130_1_3 v_conv5_i_i131_1_3 v_shr_i_i130_1_3 8;
vpc v_conv5_i_i131_1_3@uint8 v_conv5_i_i131_1_3@uint32;
(*   %conv6.i.i132.1.3 = zext i8 %conv7.i.i134.3188 to i32 *)
cast v_conv6_i_i132_1_3@uint32 v_conv7_i_i134_3188@uint8;
(*   %shl.i.i133.1.3 = shl i32 %conv6.i.i132.1.3, 1 *)
shls discard_92 v_shl_i_i133_1_3 v_conv6_i_i132_1_3 1;
(*   %conv7.i.i134.1.3 = trunc i32 %shl.i.i133.1.3 to i8 *)
split tmp_v_shl_i_i133_1_3 v_conv7_i_i134_1_3 v_shl_i_i133_1_3 8;
vpc v_conv7_i_i134_1_3@uint8 v_conv7_i_i134_1_3@uint32;
(*   %conv.i.i122.2.3 = zext i8 %conv5.i.i131.1.3 to i32 *)
cast v_conv_i_i122_2_3@uint32 v_conv5_i_i131_1_3@uint8;
(*   %and.i.i123.2.3 = and i32 %conv.i.i122.2.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i123_2_3 v_conv_i_i122_2_3 (0x1)@uint32;
(*   %conv1.i.i124.2.3 = zext i8 %conv7.i.i134.1.3 to i32 *)
cast v_conv1_i_i124_2_3@uint32 v_conv7_i_i134_1_3@uint8;
(*   %mul.i.i125.2.3 = mul nsw i32 %and.i.i123.2.3, %conv1.i.i124.2.3 *)
mul v_mul_i_i125_2_3 v_and_i_i123_2_3 v_conv1_i_i124_2_3;
(*   %conv2.i.i126.2.3 = zext i8 %conv3.i.i128.1.3 to i32 *)
cast v_conv2_i_i126_2_3@uint32 v_conv3_i_i128_1_3@uint8;
(*   %xor.i.i127.2.3 = xor i32 %conv2.i.i126.2.3, %mul.i.i125.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i127_2_3 v_conv2_i_i126_2_3 v_mul_i_i125_2_3;
(*   %conv3.i.i128.2.3 = trunc i32 %xor.i.i127.2.3 to i8 *)
split tmp_v_xor_i_i127_2_3 v_conv3_i_i128_2_3 v_xor_i_i127_2_3 8;
vpc v_conv3_i_i128_2_3@uint8 v_conv3_i_i128_2_3@uint32;
(*   %conv4.i.i129.2.3 = zext i8 %conv5.i.i131.1.3 to i32 *)
cast v_conv4_i_i129_2_3@uint32 v_conv5_i_i131_1_3@uint8;
(*   %shr.i.i130.2.3 = ashr i32 %conv4.i.i129.2.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i130_2_3 tmp_to_be_used v_conv4_i_i129_2_3 1;
(*   %conv5.i.i131.2.3 = trunc i32 %shr.i.i130.2.3 to i8 *)
split tmp_v_shr_i_i130_2_3 v_conv5_i_i131_2_3 v_shr_i_i130_2_3 8;
vpc v_conv5_i_i131_2_3@uint8 v_conv5_i_i131_2_3@uint32;
(*   %conv6.i.i132.2.3 = zext i8 %conv7.i.i134.1.3 to i32 *)
cast v_conv6_i_i132_2_3@uint32 v_conv7_i_i134_1_3@uint8;
(*   %shl.i.i133.2.3 = shl i32 %conv6.i.i132.2.3, 1 *)
shls discard_93 v_shl_i_i133_2_3 v_conv6_i_i132_2_3 1;
(*   %conv7.i.i134.2.3 = trunc i32 %shl.i.i133.2.3 to i8 *)
split tmp_v_shl_i_i133_2_3 v_conv7_i_i134_2_3 v_shl_i_i133_2_3 8;
vpc v_conv7_i_i134_2_3@uint8 v_conv7_i_i134_2_3@uint32;
(*   %conv.i.i122.3.3 = zext i8 %conv5.i.i131.2.3 to i32 *)
cast v_conv_i_i122_3_3@uint32 v_conv5_i_i131_2_3@uint8;
(*   %and.i.i123.3.3 = and i32 %conv.i.i122.3.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i123_3_3 v_conv_i_i122_3_3 (0x1)@uint32;
(*   %conv1.i.i124.3.3 = zext i8 %conv7.i.i134.2.3 to i32 *)
cast v_conv1_i_i124_3_3@uint32 v_conv7_i_i134_2_3@uint8;
(*   %mul.i.i125.3.3 = mul nsw i32 %and.i.i123.3.3, %conv1.i.i124.3.3 *)
mul v_mul_i_i125_3_3 v_and_i_i123_3_3 v_conv1_i_i124_3_3;
(*   %conv2.i.i126.3.3 = zext i8 %conv3.i.i128.2.3 to i32 *)
cast v_conv2_i_i126_3_3@uint32 v_conv3_i_i128_2_3@uint8;
(*   %xor.i.i127.3.3 = xor i32 %conv2.i.i126.3.3, %mul.i.i125.3.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i127_3_3 v_conv2_i_i126_3_3 v_mul_i_i125_3_3;
(*   %conv3.i.i128.3.3 = trunc i32 %xor.i.i127.3.3 to i8 *)
split tmp_v_xor_i_i127_3_3 v_conv3_i_i128_3_3 v_xor_i_i127_3_3 8;
vpc v_conv3_i_i128_3_3@uint8 v_conv3_i_i128_3_3@uint32;
(*   %conv4.i.i129.3.3 = zext i8 %conv5.i.i131.2.3 to i32 *)
cast v_conv4_i_i129_3_3@uint32 v_conv5_i_i131_2_3@uint8;
(*   %shr.i.i130.3.3 = ashr i32 %conv4.i.i129.3.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i130_3_3 tmp_to_be_used v_conv4_i_i129_3_3 1;
(*   %conv5.i.i131.3.3 = trunc i32 %shr.i.i130.3.3 to i8 *)
split tmp_v_shr_i_i130_3_3 v_conv5_i_i131_3_3 v_shr_i_i130_3_3 8;
vpc v_conv5_i_i131_3_3@uint8 v_conv5_i_i131_3_3@uint32;
(*   %conv6.i.i132.3.3 = zext i8 %conv7.i.i134.2.3 to i32 *)
cast v_conv6_i_i132_3_3@uint32 v_conv7_i_i134_2_3@uint8;
(*   %shl.i.i133.3.3 = shl i32 %conv6.i.i132.3.3, 1 *)
shls discard_94 v_shl_i_i133_3_3 v_conv6_i_i132_3_3 1;
(*   %conv7.i.i134.3.3 = trunc i32 %shl.i.i133.3.3 to i8 *)
split tmp_v_shl_i_i133_3_3 v_conv7_i_i134_3_3 v_shl_i_i133_3_3 8;
vpc v_conv7_i_i134_3_3@uint8 v_conv7_i_i134_3_3@uint32;
(*   %conv.i.i122.4.3 = zext i8 %conv5.i.i131.3.3 to i32 *)
cast v_conv_i_i122_4_3@uint32 v_conv5_i_i131_3_3@uint8;
(*   %and.i.i123.4.3 = and i32 %conv.i.i122.4.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i123_4_3 v_conv_i_i122_4_3 (0x1)@uint32;
(*   %conv1.i.i124.4.3 = zext i8 %conv7.i.i134.3.3 to i32 *)
cast v_conv1_i_i124_4_3@uint32 v_conv7_i_i134_3_3@uint8;
(*   %mul.i.i125.4.3 = mul nsw i32 %and.i.i123.4.3, %conv1.i.i124.4.3 *)
mul v_mul_i_i125_4_3 v_and_i_i123_4_3 v_conv1_i_i124_4_3;
(*   %conv2.i.i126.4.3 = zext i8 %conv3.i.i128.3.3 to i32 *)
cast v_conv2_i_i126_4_3@uint32 v_conv3_i_i128_3_3@uint8;
(*   %xor.i.i127.4.3 = xor i32 %conv2.i.i126.4.3, %mul.i.i125.4.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i127_4_3 v_conv2_i_i126_4_3 v_mul_i_i125_4_3;
(*   %conv3.i.i128.4.3 = trunc i32 %xor.i.i127.4.3 to i8 *)
split tmp_v_xor_i_i127_4_3 v_conv3_i_i128_4_3 v_xor_i_i127_4_3 8;
vpc v_conv3_i_i128_4_3@uint8 v_conv3_i_i128_4_3@uint32;
(*   %conv4.i.i129.4.3 = zext i8 %conv5.i.i131.3.3 to i32 *)
cast v_conv4_i_i129_4_3@uint32 v_conv5_i_i131_3_3@uint8;
(*   %shr.i.i130.4.3 = ashr i32 %conv4.i.i129.4.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i130_4_3 tmp_to_be_used v_conv4_i_i129_4_3 1;
(*   %conv5.i.i131.4.3 = trunc i32 %shr.i.i130.4.3 to i8 *)
split tmp_v_shr_i_i130_4_3 v_conv5_i_i131_4_3 v_shr_i_i130_4_3 8;
vpc v_conv5_i_i131_4_3@uint8 v_conv5_i_i131_4_3@uint32;
(*   %conv6.i.i132.4.3 = zext i8 %conv7.i.i134.3.3 to i32 *)
cast v_conv6_i_i132_4_3@uint32 v_conv7_i_i134_3_3@uint8;
(*   %shl.i.i133.4.3 = shl i32 %conv6.i.i132.4.3, 1 *)
shls discard_95 v_shl_i_i133_4_3 v_conv6_i_i132_4_3 1;
(*   %conv7.i.i134.4.3 = trunc i32 %shl.i.i133.4.3 to i8 *)
split tmp_v_shl_i_i133_4_3 v_conv7_i_i134_4_3 v_shl_i_i133_4_3 8;
vpc v_conv7_i_i134_4_3@uint8 v_conv7_i_i134_4_3@uint32;
(*   %conv.i.i122.5.3 = zext i8 %conv5.i.i131.4.3 to i32 *)
cast v_conv_i_i122_5_3@uint32 v_conv5_i_i131_4_3@uint8;
(*   %and.i.i123.5.3 = and i32 %conv.i.i122.5.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i123_5_3 v_conv_i_i122_5_3 (0x1)@uint32;
(*   %conv1.i.i124.5.3 = zext i8 %conv7.i.i134.4.3 to i32 *)
cast v_conv1_i_i124_5_3@uint32 v_conv7_i_i134_4_3@uint8;
(*   %mul.i.i125.5.3 = mul nsw i32 %and.i.i123.5.3, %conv1.i.i124.5.3 *)
mul v_mul_i_i125_5_3 v_and_i_i123_5_3 v_conv1_i_i124_5_3;
(*   %conv2.i.i126.5.3 = zext i8 %conv3.i.i128.4.3 to i32 *)
cast v_conv2_i_i126_5_3@uint32 v_conv3_i_i128_4_3@uint8;
(*   %xor.i.i127.5.3 = xor i32 %conv2.i.i126.5.3, %mul.i.i125.5.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i127_5_3 v_conv2_i_i126_5_3 v_mul_i_i125_5_3;
(*   %conv3.i.i128.5.3 = trunc i32 %xor.i.i127.5.3 to i8 *)
split tmp_v_xor_i_i127_5_3 v_conv3_i_i128_5_3 v_xor_i_i127_5_3 8;
vpc v_conv3_i_i128_5_3@uint8 v_conv3_i_i128_5_3@uint32;
(*   %conv4.i.i129.5.3 = zext i8 %conv5.i.i131.4.3 to i32 *)
cast v_conv4_i_i129_5_3@uint32 v_conv5_i_i131_4_3@uint8;
(*   %shr.i.i130.5.3 = ashr i32 %conv4.i.i129.5.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i130_5_3 tmp_to_be_used v_conv4_i_i129_5_3 1;
(*   %conv5.i.i131.5.3 = trunc i32 %shr.i.i130.5.3 to i8 *)
split tmp_v_shr_i_i130_5_3 v_conv5_i_i131_5_3 v_shr_i_i130_5_3 8;
vpc v_conv5_i_i131_5_3@uint8 v_conv5_i_i131_5_3@uint32;
(*   %conv6.i.i132.5.3 = zext i8 %conv7.i.i134.4.3 to i32 *)
cast v_conv6_i_i132_5_3@uint32 v_conv7_i_i134_4_3@uint8;
(*   %shl.i.i133.5.3 = shl i32 %conv6.i.i132.5.3, 1 *)
shls discard_96 v_shl_i_i133_5_3 v_conv6_i_i132_5_3 1;
(*   %conv7.i.i134.5.3 = trunc i32 %shl.i.i133.5.3 to i8 *)
split tmp_v_shl_i_i133_5_3 v_conv7_i_i134_5_3 v_shl_i_i133_5_3 8;
vpc v_conv7_i_i134_5_3@uint8 v_conv7_i_i134_5_3@uint32;
(*   %conv.i.i122.6.3 = zext i8 %conv5.i.i131.5.3 to i32 *)
cast v_conv_i_i122_6_3@uint32 v_conv5_i_i131_5_3@uint8;
(*   %and.i.i123.6.3 = and i32 %conv.i.i122.6.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i123_6_3 v_conv_i_i122_6_3 (0x1)@uint32;
(*   %conv1.i.i124.6.3 = zext i8 %conv7.i.i134.5.3 to i32 *)
cast v_conv1_i_i124_6_3@uint32 v_conv7_i_i134_5_3@uint8;
(*   %mul.i.i125.6.3 = mul nsw i32 %and.i.i123.6.3, %conv1.i.i124.6.3 *)
mul v_mul_i_i125_6_3 v_and_i_i123_6_3 v_conv1_i_i124_6_3;
(*   %conv2.i.i126.6.3 = zext i8 %conv3.i.i128.5.3 to i32 *)
cast v_conv2_i_i126_6_3@uint32 v_conv3_i_i128_5_3@uint8;
(*   %xor.i.i127.6.3 = xor i32 %conv2.i.i126.6.3, %mul.i.i125.6.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i127_6_3 v_conv2_i_i126_6_3 v_mul_i_i125_6_3;
(*   %conv3.i.i128.6.3 = trunc i32 %xor.i.i127.6.3 to i8 *)
split tmp_v_xor_i_i127_6_3 v_conv3_i_i128_6_3 v_xor_i_i127_6_3 8;
vpc v_conv3_i_i128_6_3@uint8 v_conv3_i_i128_6_3@uint32;
(*   %conv4.i.i129.6.3 = zext i8 %conv5.i.i131.5.3 to i32 *)
cast v_conv4_i_i129_6_3@uint32 v_conv5_i_i131_5_3@uint8;
(*   %shr.i.i130.6.3 = ashr i32 %conv4.i.i129.6.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i130_6_3 tmp_to_be_used v_conv4_i_i129_6_3 1;
(*   %conv5.i.i131.6.3 = trunc i32 %shr.i.i130.6.3 to i8 *)
split tmp_v_shr_i_i130_6_3 v_conv5_i_i131_6_3 v_shr_i_i130_6_3 8;
vpc v_conv5_i_i131_6_3@uint8 v_conv5_i_i131_6_3@uint32;
(*   %conv6.i.i132.6.3 = zext i8 %conv7.i.i134.5.3 to i32 *)
cast v_conv6_i_i132_6_3@uint32 v_conv7_i_i134_5_3@uint8;
(*   %shl.i.i133.6.3 = shl i32 %conv6.i.i132.6.3, 1 *)
shls discard_97 v_shl_i_i133_6_3 v_conv6_i_i132_6_3 1;
(*   %conv7.i.i134.6.3 = trunc i32 %shl.i.i133.6.3 to i8 *)
split tmp_v_shl_i_i133_6_3 v_conv7_i_i134_6_3 v_shl_i_i133_6_3 8;
vpc v_conv7_i_i134_6_3@uint8 v_conv7_i_i134_6_3@uint32;
(*   %conv.i.i122.7.3 = zext i8 %conv5.i.i131.6.3 to i32 *)
cast v_conv_i_i122_7_3@uint32 v_conv5_i_i131_6_3@uint8;
(*   %and.i.i123.7.3 = and i32 %conv.i.i122.7.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i123_7_3 v_conv_i_i122_7_3 (0x1)@uint32;
(*   %conv1.i.i124.7.3 = zext i8 %conv7.i.i134.6.3 to i32 *)
cast v_conv1_i_i124_7_3@uint32 v_conv7_i_i134_6_3@uint8;
(*   %mul.i.i125.7.3 = mul nsw i32 %and.i.i123.7.3, %conv1.i.i124.7.3 *)
mul v_mul_i_i125_7_3 v_and_i_i123_7_3 v_conv1_i_i124_7_3;
(*   %conv2.i.i126.7.3 = zext i8 %conv3.i.i128.6.3 to i32 *)
cast v_conv2_i_i126_7_3@uint32 v_conv3_i_i128_6_3@uint8;
(*   %xor.i.i127.7.3 = xor i32 %conv2.i.i126.7.3, %mul.i.i125.7.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i127_7_3 v_conv2_i_i126_7_3 v_mul_i_i125_7_3;
(*   %conv3.i.i128.7.3 = trunc i32 %xor.i.i127.7.3 to i8 *)
split tmp_v_xor_i_i127_7_3 v_conv3_i_i128_7_3 v_xor_i_i127_7_3 8;
vpc v_conv3_i_i128_7_3@uint8 v_conv3_i_i128_7_3@uint32;
(*   %arrayidx6.i138.3 = getelementptr inbounds i8, i8* %arraydecay3, i64 3 *)
(*   store i8 %conv3.i.i128.7.3, i8* %arrayidx6.i138.3, align 1 *)
mov a1b_3 v_conv3_i_i128_7_3;
(*   %28 = load i8, i8* %a, align 1 *)
mov v28 a_0;
(*   %arrayidx4.i118.4 = getelementptr inbounds i8, i8* %b, i64 4 *)
(*   %29 = load i8, i8* %arrayidx4.i118.4, align 1 *)
mov v29 b_4;
(*   %conv.i.i122.4189 = zext i8 %29 to i32 *)
cast v_conv_i_i122_4189@uint32 v29@uint8;
(*   %and.i.i123.4190 = and i32 %conv.i.i122.4189, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i123_4190 v_conv_i_i122_4189 (0x1)@uint32;
(*   %conv1.i.i124.4191 = zext i8 %28 to i32 *)
cast v_conv1_i_i124_4191@uint32 v28@uint8;
(*   %mul.i.i125.4192 = mul nsw i32 %and.i.i123.4190, %conv1.i.i124.4191 *)
mul v_mul_i_i125_4192 v_and_i_i123_4190 v_conv1_i_i124_4191;
(*   %conv3.i.i128.4193 = trunc i32 %mul.i.i125.4192 to i8 *)
split tmp_v_mul_i_i125_4192 v_conv3_i_i128_4193 v_mul_i_i125_4192 8;
vpc v_conv3_i_i128_4193@uint8 v_conv3_i_i128_4193@uint32;
(*   %conv4.i.i129.4194 = zext i8 %29 to i32 *)
cast v_conv4_i_i129_4194@uint32 v29@uint8;
(*   %shr.i.i130.4195 = ashr i32 %conv4.i.i129.4194, 1 *)
(* You may need to modify here *)
split v_shr_i_i130_4195 tmp_to_be_used v_conv4_i_i129_4194 1;
(*   %conv5.i.i131.4196 = trunc i32 %shr.i.i130.4195 to i8 *)
split tmp_v_shr_i_i130_4195 v_conv5_i_i131_4196 v_shr_i_i130_4195 8;
vpc v_conv5_i_i131_4196@uint8 v_conv5_i_i131_4196@uint32;
(*   %conv6.i.i132.4197 = zext i8 %28 to i32 *)
cast v_conv6_i_i132_4197@uint32 v28@uint8;
(*   %shl.i.i133.4198 = shl i32 %conv6.i.i132.4197, 1 *)
shls discard_98 v_shl_i_i133_4198 v_conv6_i_i132_4197 1;
(*   %conv7.i.i134.4199 = trunc i32 %shl.i.i133.4198 to i8 *)
split tmp_v_shl_i_i133_4198 v_conv7_i_i134_4199 v_shl_i_i133_4198 8;
vpc v_conv7_i_i134_4199@uint8 v_conv7_i_i134_4199@uint32;
(*   %conv.i.i122.1.4 = zext i8 %conv5.i.i131.4196 to i32 *)
cast v_conv_i_i122_1_4@uint32 v_conv5_i_i131_4196@uint8;
(*   %and.i.i123.1.4 = and i32 %conv.i.i122.1.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i123_1_4 v_conv_i_i122_1_4 (0x1)@uint32;
(*   %conv1.i.i124.1.4 = zext i8 %conv7.i.i134.4199 to i32 *)
cast v_conv1_i_i124_1_4@uint32 v_conv7_i_i134_4199@uint8;
(*   %mul.i.i125.1.4 = mul nsw i32 %and.i.i123.1.4, %conv1.i.i124.1.4 *)
mul v_mul_i_i125_1_4 v_and_i_i123_1_4 v_conv1_i_i124_1_4;
(*   %conv2.i.i126.1.4 = zext i8 %conv3.i.i128.4193 to i32 *)
cast v_conv2_i_i126_1_4@uint32 v_conv3_i_i128_4193@uint8;
(*   %xor.i.i127.1.4 = xor i32 %conv2.i.i126.1.4, %mul.i.i125.1.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i127_1_4 v_conv2_i_i126_1_4 v_mul_i_i125_1_4;
(*   %conv3.i.i128.1.4 = trunc i32 %xor.i.i127.1.4 to i8 *)
split tmp_v_xor_i_i127_1_4 v_conv3_i_i128_1_4 v_xor_i_i127_1_4 8;
vpc v_conv3_i_i128_1_4@uint8 v_conv3_i_i128_1_4@uint32;
(*   %conv4.i.i129.1.4 = zext i8 %conv5.i.i131.4196 to i32 *)
cast v_conv4_i_i129_1_4@uint32 v_conv5_i_i131_4196@uint8;
(*   %shr.i.i130.1.4 = ashr i32 %conv4.i.i129.1.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i130_1_4 tmp_to_be_used v_conv4_i_i129_1_4 1;
(*   %conv5.i.i131.1.4 = trunc i32 %shr.i.i130.1.4 to i8 *)
split tmp_v_shr_i_i130_1_4 v_conv5_i_i131_1_4 v_shr_i_i130_1_4 8;
vpc v_conv5_i_i131_1_4@uint8 v_conv5_i_i131_1_4@uint32;
(*   %conv6.i.i132.1.4 = zext i8 %conv7.i.i134.4199 to i32 *)
cast v_conv6_i_i132_1_4@uint32 v_conv7_i_i134_4199@uint8;
(*   %shl.i.i133.1.4 = shl i32 %conv6.i.i132.1.4, 1 *)
shls discard_99 v_shl_i_i133_1_4 v_conv6_i_i132_1_4 1;
(*   %conv7.i.i134.1.4 = trunc i32 %shl.i.i133.1.4 to i8 *)
split tmp_v_shl_i_i133_1_4 v_conv7_i_i134_1_4 v_shl_i_i133_1_4 8;
vpc v_conv7_i_i134_1_4@uint8 v_conv7_i_i134_1_4@uint32;
(*   %conv.i.i122.2.4 = zext i8 %conv5.i.i131.1.4 to i32 *)
cast v_conv_i_i122_2_4@uint32 v_conv5_i_i131_1_4@uint8;
(*   %and.i.i123.2.4 = and i32 %conv.i.i122.2.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i123_2_4 v_conv_i_i122_2_4 (0x1)@uint32;
(*   %conv1.i.i124.2.4 = zext i8 %conv7.i.i134.1.4 to i32 *)
cast v_conv1_i_i124_2_4@uint32 v_conv7_i_i134_1_4@uint8;
(*   %mul.i.i125.2.4 = mul nsw i32 %and.i.i123.2.4, %conv1.i.i124.2.4 *)
mul v_mul_i_i125_2_4 v_and_i_i123_2_4 v_conv1_i_i124_2_4;
(*   %conv2.i.i126.2.4 = zext i8 %conv3.i.i128.1.4 to i32 *)
cast v_conv2_i_i126_2_4@uint32 v_conv3_i_i128_1_4@uint8;
(*   %xor.i.i127.2.4 = xor i32 %conv2.i.i126.2.4, %mul.i.i125.2.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i127_2_4 v_conv2_i_i126_2_4 v_mul_i_i125_2_4;
(*   %conv3.i.i128.2.4 = trunc i32 %xor.i.i127.2.4 to i8 *)
split tmp_v_xor_i_i127_2_4 v_conv3_i_i128_2_4 v_xor_i_i127_2_4 8;
vpc v_conv3_i_i128_2_4@uint8 v_conv3_i_i128_2_4@uint32;
(*   %conv4.i.i129.2.4 = zext i8 %conv5.i.i131.1.4 to i32 *)
cast v_conv4_i_i129_2_4@uint32 v_conv5_i_i131_1_4@uint8;
(*   %shr.i.i130.2.4 = ashr i32 %conv4.i.i129.2.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i130_2_4 tmp_to_be_used v_conv4_i_i129_2_4 1;
(*   %conv5.i.i131.2.4 = trunc i32 %shr.i.i130.2.4 to i8 *)
split tmp_v_shr_i_i130_2_4 v_conv5_i_i131_2_4 v_shr_i_i130_2_4 8;
vpc v_conv5_i_i131_2_4@uint8 v_conv5_i_i131_2_4@uint32;
(*   %conv6.i.i132.2.4 = zext i8 %conv7.i.i134.1.4 to i32 *)
cast v_conv6_i_i132_2_4@uint32 v_conv7_i_i134_1_4@uint8;
(*   %shl.i.i133.2.4 = shl i32 %conv6.i.i132.2.4, 1 *)
shls discard_100 v_shl_i_i133_2_4 v_conv6_i_i132_2_4 1;
(*   %conv7.i.i134.2.4 = trunc i32 %shl.i.i133.2.4 to i8 *)
split tmp_v_shl_i_i133_2_4 v_conv7_i_i134_2_4 v_shl_i_i133_2_4 8;
vpc v_conv7_i_i134_2_4@uint8 v_conv7_i_i134_2_4@uint32;
(*   %conv.i.i122.3.4 = zext i8 %conv5.i.i131.2.4 to i32 *)
cast v_conv_i_i122_3_4@uint32 v_conv5_i_i131_2_4@uint8;
(*   %and.i.i123.3.4 = and i32 %conv.i.i122.3.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i123_3_4 v_conv_i_i122_3_4 (0x1)@uint32;
(*   %conv1.i.i124.3.4 = zext i8 %conv7.i.i134.2.4 to i32 *)
cast v_conv1_i_i124_3_4@uint32 v_conv7_i_i134_2_4@uint8;
(*   %mul.i.i125.3.4 = mul nsw i32 %and.i.i123.3.4, %conv1.i.i124.3.4 *)
mul v_mul_i_i125_3_4 v_and_i_i123_3_4 v_conv1_i_i124_3_4;
(*   %conv2.i.i126.3.4 = zext i8 %conv3.i.i128.2.4 to i32 *)
cast v_conv2_i_i126_3_4@uint32 v_conv3_i_i128_2_4@uint8;
(*   %xor.i.i127.3.4 = xor i32 %conv2.i.i126.3.4, %mul.i.i125.3.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i127_3_4 v_conv2_i_i126_3_4 v_mul_i_i125_3_4;
(*   %conv3.i.i128.3.4 = trunc i32 %xor.i.i127.3.4 to i8 *)
split tmp_v_xor_i_i127_3_4 v_conv3_i_i128_3_4 v_xor_i_i127_3_4 8;
vpc v_conv3_i_i128_3_4@uint8 v_conv3_i_i128_3_4@uint32;
(*   %conv4.i.i129.3.4 = zext i8 %conv5.i.i131.2.4 to i32 *)
cast v_conv4_i_i129_3_4@uint32 v_conv5_i_i131_2_4@uint8;
(*   %shr.i.i130.3.4 = ashr i32 %conv4.i.i129.3.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i130_3_4 tmp_to_be_used v_conv4_i_i129_3_4 1;
(*   %conv5.i.i131.3.4 = trunc i32 %shr.i.i130.3.4 to i8 *)
split tmp_v_shr_i_i130_3_4 v_conv5_i_i131_3_4 v_shr_i_i130_3_4 8;
vpc v_conv5_i_i131_3_4@uint8 v_conv5_i_i131_3_4@uint32;
(*   %conv6.i.i132.3.4 = zext i8 %conv7.i.i134.2.4 to i32 *)
cast v_conv6_i_i132_3_4@uint32 v_conv7_i_i134_2_4@uint8;
(*   %shl.i.i133.3.4 = shl i32 %conv6.i.i132.3.4, 1 *)
shls discard_101 v_shl_i_i133_3_4 v_conv6_i_i132_3_4 1;
(*   %conv7.i.i134.3.4 = trunc i32 %shl.i.i133.3.4 to i8 *)
split tmp_v_shl_i_i133_3_4 v_conv7_i_i134_3_4 v_shl_i_i133_3_4 8;
vpc v_conv7_i_i134_3_4@uint8 v_conv7_i_i134_3_4@uint32;
(*   %conv.i.i122.4.4 = zext i8 %conv5.i.i131.3.4 to i32 *)
cast v_conv_i_i122_4_4@uint32 v_conv5_i_i131_3_4@uint8;
(*   %and.i.i123.4.4 = and i32 %conv.i.i122.4.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i123_4_4 v_conv_i_i122_4_4 (0x1)@uint32;
(*   %conv1.i.i124.4.4 = zext i8 %conv7.i.i134.3.4 to i32 *)
cast v_conv1_i_i124_4_4@uint32 v_conv7_i_i134_3_4@uint8;
(*   %mul.i.i125.4.4 = mul nsw i32 %and.i.i123.4.4, %conv1.i.i124.4.4 *)
mul v_mul_i_i125_4_4 v_and_i_i123_4_4 v_conv1_i_i124_4_4;
(*   %conv2.i.i126.4.4 = zext i8 %conv3.i.i128.3.4 to i32 *)
cast v_conv2_i_i126_4_4@uint32 v_conv3_i_i128_3_4@uint8;
(*   %xor.i.i127.4.4 = xor i32 %conv2.i.i126.4.4, %mul.i.i125.4.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i127_4_4 v_conv2_i_i126_4_4 v_mul_i_i125_4_4;
(*   %conv3.i.i128.4.4 = trunc i32 %xor.i.i127.4.4 to i8 *)
split tmp_v_xor_i_i127_4_4 v_conv3_i_i128_4_4 v_xor_i_i127_4_4 8;
vpc v_conv3_i_i128_4_4@uint8 v_conv3_i_i128_4_4@uint32;
(*   %conv4.i.i129.4.4 = zext i8 %conv5.i.i131.3.4 to i32 *)
cast v_conv4_i_i129_4_4@uint32 v_conv5_i_i131_3_4@uint8;
(*   %shr.i.i130.4.4 = ashr i32 %conv4.i.i129.4.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i130_4_4 tmp_to_be_used v_conv4_i_i129_4_4 1;
(*   %conv5.i.i131.4.4 = trunc i32 %shr.i.i130.4.4 to i8 *)
split tmp_v_shr_i_i130_4_4 v_conv5_i_i131_4_4 v_shr_i_i130_4_4 8;
vpc v_conv5_i_i131_4_4@uint8 v_conv5_i_i131_4_4@uint32;
(*   %conv6.i.i132.4.4 = zext i8 %conv7.i.i134.3.4 to i32 *)
cast v_conv6_i_i132_4_4@uint32 v_conv7_i_i134_3_4@uint8;
(*   %shl.i.i133.4.4 = shl i32 %conv6.i.i132.4.4, 1 *)
shls discard_102 v_shl_i_i133_4_4 v_conv6_i_i132_4_4 1;
(*   %conv7.i.i134.4.4 = trunc i32 %shl.i.i133.4.4 to i8 *)
split tmp_v_shl_i_i133_4_4 v_conv7_i_i134_4_4 v_shl_i_i133_4_4 8;
vpc v_conv7_i_i134_4_4@uint8 v_conv7_i_i134_4_4@uint32;
(*   %conv.i.i122.5.4 = zext i8 %conv5.i.i131.4.4 to i32 *)
cast v_conv_i_i122_5_4@uint32 v_conv5_i_i131_4_4@uint8;
(*   %and.i.i123.5.4 = and i32 %conv.i.i122.5.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i123_5_4 v_conv_i_i122_5_4 (0x1)@uint32;
(*   %conv1.i.i124.5.4 = zext i8 %conv7.i.i134.4.4 to i32 *)
cast v_conv1_i_i124_5_4@uint32 v_conv7_i_i134_4_4@uint8;
(*   %mul.i.i125.5.4 = mul nsw i32 %and.i.i123.5.4, %conv1.i.i124.5.4 *)
mul v_mul_i_i125_5_4 v_and_i_i123_5_4 v_conv1_i_i124_5_4;
(*   %conv2.i.i126.5.4 = zext i8 %conv3.i.i128.4.4 to i32 *)
cast v_conv2_i_i126_5_4@uint32 v_conv3_i_i128_4_4@uint8;
(*   %xor.i.i127.5.4 = xor i32 %conv2.i.i126.5.4, %mul.i.i125.5.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i127_5_4 v_conv2_i_i126_5_4 v_mul_i_i125_5_4;
(*   %conv3.i.i128.5.4 = trunc i32 %xor.i.i127.5.4 to i8 *)
split tmp_v_xor_i_i127_5_4 v_conv3_i_i128_5_4 v_xor_i_i127_5_4 8;
vpc v_conv3_i_i128_5_4@uint8 v_conv3_i_i128_5_4@uint32;
(*   %conv4.i.i129.5.4 = zext i8 %conv5.i.i131.4.4 to i32 *)
cast v_conv4_i_i129_5_4@uint32 v_conv5_i_i131_4_4@uint8;
(*   %shr.i.i130.5.4 = ashr i32 %conv4.i.i129.5.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i130_5_4 tmp_to_be_used v_conv4_i_i129_5_4 1;
(*   %conv5.i.i131.5.4 = trunc i32 %shr.i.i130.5.4 to i8 *)
split tmp_v_shr_i_i130_5_4 v_conv5_i_i131_5_4 v_shr_i_i130_5_4 8;
vpc v_conv5_i_i131_5_4@uint8 v_conv5_i_i131_5_4@uint32;
(*   %conv6.i.i132.5.4 = zext i8 %conv7.i.i134.4.4 to i32 *)
cast v_conv6_i_i132_5_4@uint32 v_conv7_i_i134_4_4@uint8;
(*   %shl.i.i133.5.4 = shl i32 %conv6.i.i132.5.4, 1 *)
shls discard_103 v_shl_i_i133_5_4 v_conv6_i_i132_5_4 1;
(*   %conv7.i.i134.5.4 = trunc i32 %shl.i.i133.5.4 to i8 *)
split tmp_v_shl_i_i133_5_4 v_conv7_i_i134_5_4 v_shl_i_i133_5_4 8;
vpc v_conv7_i_i134_5_4@uint8 v_conv7_i_i134_5_4@uint32;
(*   %conv.i.i122.6.4 = zext i8 %conv5.i.i131.5.4 to i32 *)
cast v_conv_i_i122_6_4@uint32 v_conv5_i_i131_5_4@uint8;
(*   %and.i.i123.6.4 = and i32 %conv.i.i122.6.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i123_6_4 v_conv_i_i122_6_4 (0x1)@uint32;
(*   %conv1.i.i124.6.4 = zext i8 %conv7.i.i134.5.4 to i32 *)
cast v_conv1_i_i124_6_4@uint32 v_conv7_i_i134_5_4@uint8;
(*   %mul.i.i125.6.4 = mul nsw i32 %and.i.i123.6.4, %conv1.i.i124.6.4 *)
mul v_mul_i_i125_6_4 v_and_i_i123_6_4 v_conv1_i_i124_6_4;
(*   %conv2.i.i126.6.4 = zext i8 %conv3.i.i128.5.4 to i32 *)
cast v_conv2_i_i126_6_4@uint32 v_conv3_i_i128_5_4@uint8;
(*   %xor.i.i127.6.4 = xor i32 %conv2.i.i126.6.4, %mul.i.i125.6.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i127_6_4 v_conv2_i_i126_6_4 v_mul_i_i125_6_4;
(*   %conv3.i.i128.6.4 = trunc i32 %xor.i.i127.6.4 to i8 *)
split tmp_v_xor_i_i127_6_4 v_conv3_i_i128_6_4 v_xor_i_i127_6_4 8;
vpc v_conv3_i_i128_6_4@uint8 v_conv3_i_i128_6_4@uint32;
(*   %conv4.i.i129.6.4 = zext i8 %conv5.i.i131.5.4 to i32 *)
cast v_conv4_i_i129_6_4@uint32 v_conv5_i_i131_5_4@uint8;
(*   %shr.i.i130.6.4 = ashr i32 %conv4.i.i129.6.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i130_6_4 tmp_to_be_used v_conv4_i_i129_6_4 1;
(*   %conv5.i.i131.6.4 = trunc i32 %shr.i.i130.6.4 to i8 *)
split tmp_v_shr_i_i130_6_4 v_conv5_i_i131_6_4 v_shr_i_i130_6_4 8;
vpc v_conv5_i_i131_6_4@uint8 v_conv5_i_i131_6_4@uint32;
(*   %conv6.i.i132.6.4 = zext i8 %conv7.i.i134.5.4 to i32 *)
cast v_conv6_i_i132_6_4@uint32 v_conv7_i_i134_5_4@uint8;
(*   %shl.i.i133.6.4 = shl i32 %conv6.i.i132.6.4, 1 *)
shls discard_104 v_shl_i_i133_6_4 v_conv6_i_i132_6_4 1;
(*   %conv7.i.i134.6.4 = trunc i32 %shl.i.i133.6.4 to i8 *)
split tmp_v_shl_i_i133_6_4 v_conv7_i_i134_6_4 v_shl_i_i133_6_4 8;
vpc v_conv7_i_i134_6_4@uint8 v_conv7_i_i134_6_4@uint32;
(*   %conv.i.i122.7.4 = zext i8 %conv5.i.i131.6.4 to i32 *)
cast v_conv_i_i122_7_4@uint32 v_conv5_i_i131_6_4@uint8;
(*   %and.i.i123.7.4 = and i32 %conv.i.i122.7.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i123_7_4 v_conv_i_i122_7_4 (0x1)@uint32;
(*   %conv1.i.i124.7.4 = zext i8 %conv7.i.i134.6.4 to i32 *)
cast v_conv1_i_i124_7_4@uint32 v_conv7_i_i134_6_4@uint8;
(*   %mul.i.i125.7.4 = mul nsw i32 %and.i.i123.7.4, %conv1.i.i124.7.4 *)
mul v_mul_i_i125_7_4 v_and_i_i123_7_4 v_conv1_i_i124_7_4;
(*   %conv2.i.i126.7.4 = zext i8 %conv3.i.i128.6.4 to i32 *)
cast v_conv2_i_i126_7_4@uint32 v_conv3_i_i128_6_4@uint8;
(*   %xor.i.i127.7.4 = xor i32 %conv2.i.i126.7.4, %mul.i.i125.7.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i127_7_4 v_conv2_i_i126_7_4 v_mul_i_i125_7_4;
(*   %conv3.i.i128.7.4 = trunc i32 %xor.i.i127.7.4 to i8 *)
split tmp_v_xor_i_i127_7_4 v_conv3_i_i128_7_4 v_xor_i_i127_7_4 8;
vpc v_conv3_i_i128_7_4@uint8 v_conv3_i_i128_7_4@uint32;
(*   %arrayidx6.i138.4 = getelementptr inbounds i8, i8* %arraydecay3, i64 4 *)
(*   store i8 %conv3.i.i128.7.4, i8* %arrayidx6.i138.4, align 1 *)
mov a1b_4 v_conv3_i_i128_7_4;
(*   %30 = load i8, i8* %a, align 1 *)
mov v30 a_0;
(*   %arrayidx4.i178 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %31 = load i8, i8* %arrayidx4.i178, align 1 *)
mov v31 b_2;
(*   %conv.i.i182 = zext i8 %31 to i32 *)
cast v_conv_i_i182@uint32 v31@uint8;
(*   %and.i.i183 = and i32 %conv.i.i182, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i183 v_conv_i_i182 (0x1)@uint32;
(*   %conv1.i.i184 = zext i8 %30 to i32 *)
cast v_conv1_i_i184@uint32 v30@uint8;
(*   %mul.i.i185 = mul nsw i32 %and.i.i183, %conv1.i.i184 *)
mul v_mul_i_i185 v_and_i_i183 v_conv1_i_i184;
(*   %conv3.i.i188 = trunc i32 %mul.i.i185 to i8 *)
split tmp_v_mul_i_i185 v_conv3_i_i188 v_mul_i_i185 8;
vpc v_conv3_i_i188@uint8 v_conv3_i_i188@uint32;
(*   %conv4.i.i189 = zext i8 %31 to i32 *)
cast v_conv4_i_i189@uint32 v31@uint8;
(*   %shr.i.i190 = ashr i32 %conv4.i.i189, 1 *)
(* You may need to modify here *)
split v_shr_i_i190 tmp_to_be_used v_conv4_i_i189 1;
(*   %conv5.i.i191 = trunc i32 %shr.i.i190 to i8 *)
split tmp_v_shr_i_i190 v_conv5_i_i191 v_shr_i_i190 8;
vpc v_conv5_i_i191@uint8 v_conv5_i_i191@uint32;
(*   %conv6.i.i192 = zext i8 %30 to i32 *)
cast v_conv6_i_i192@uint32 v30@uint8;
(*   %shl.i.i193 = shl i32 %conv6.i.i192, 1 *)
shls discard_105 v_shl_i_i193 v_conv6_i_i192 1;
(*   %conv7.i.i194 = trunc i32 %shl.i.i193 to i8 *)
split tmp_v_shl_i_i193 v_conv7_i_i194 v_shl_i_i193 8;
vpc v_conv7_i_i194@uint8 v_conv7_i_i194@uint32;
(*   %conv.i.i182.1 = zext i8 %conv5.i.i191 to i32 *)
cast v_conv_i_i182_1@uint32 v_conv5_i_i191@uint8;
(*   %and.i.i183.1 = and i32 %conv.i.i182.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i183_1 v_conv_i_i182_1 (0x1)@uint32;
(*   %conv1.i.i184.1 = zext i8 %conv7.i.i194 to i32 *)
cast v_conv1_i_i184_1@uint32 v_conv7_i_i194@uint8;
(*   %mul.i.i185.1 = mul nsw i32 %and.i.i183.1, %conv1.i.i184.1 *)
mul v_mul_i_i185_1 v_and_i_i183_1 v_conv1_i_i184_1;
(*   %conv2.i.i186.1 = zext i8 %conv3.i.i188 to i32 *)
cast v_conv2_i_i186_1@uint32 v_conv3_i_i188@uint8;
(*   %xor.i.i187.1 = xor i32 %conv2.i.i186.1, %mul.i.i185.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i187_1 v_conv2_i_i186_1 v_mul_i_i185_1;
(*   %conv3.i.i188.1 = trunc i32 %xor.i.i187.1 to i8 *)
split tmp_v_xor_i_i187_1 v_conv3_i_i188_1 v_xor_i_i187_1 8;
vpc v_conv3_i_i188_1@uint8 v_conv3_i_i188_1@uint32;
(*   %conv4.i.i189.1 = zext i8 %conv5.i.i191 to i32 *)
cast v_conv4_i_i189_1@uint32 v_conv5_i_i191@uint8;
(*   %shr.i.i190.1 = ashr i32 %conv4.i.i189.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i190_1 tmp_to_be_used v_conv4_i_i189_1 1;
(*   %conv5.i.i191.1 = trunc i32 %shr.i.i190.1 to i8 *)
split tmp_v_shr_i_i190_1 v_conv5_i_i191_1 v_shr_i_i190_1 8;
vpc v_conv5_i_i191_1@uint8 v_conv5_i_i191_1@uint32;
(*   %conv6.i.i192.1 = zext i8 %conv7.i.i194 to i32 *)
cast v_conv6_i_i192_1@uint32 v_conv7_i_i194@uint8;
(*   %shl.i.i193.1 = shl i32 %conv6.i.i192.1, 1 *)
shls discard_106 v_shl_i_i193_1 v_conv6_i_i192_1 1;
(*   %conv7.i.i194.1 = trunc i32 %shl.i.i193.1 to i8 *)
split tmp_v_shl_i_i193_1 v_conv7_i_i194_1 v_shl_i_i193_1 8;
vpc v_conv7_i_i194_1@uint8 v_conv7_i_i194_1@uint32;
(*   %conv.i.i182.2 = zext i8 %conv5.i.i191.1 to i32 *)
cast v_conv_i_i182_2@uint32 v_conv5_i_i191_1@uint8;
(*   %and.i.i183.2 = and i32 %conv.i.i182.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i183_2 v_conv_i_i182_2 (0x1)@uint32;
(*   %conv1.i.i184.2 = zext i8 %conv7.i.i194.1 to i32 *)
cast v_conv1_i_i184_2@uint32 v_conv7_i_i194_1@uint8;
(*   %mul.i.i185.2 = mul nsw i32 %and.i.i183.2, %conv1.i.i184.2 *)
mul v_mul_i_i185_2 v_and_i_i183_2 v_conv1_i_i184_2;
(*   %conv2.i.i186.2 = zext i8 %conv3.i.i188.1 to i32 *)
cast v_conv2_i_i186_2@uint32 v_conv3_i_i188_1@uint8;
(*   %xor.i.i187.2 = xor i32 %conv2.i.i186.2, %mul.i.i185.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i187_2 v_conv2_i_i186_2 v_mul_i_i185_2;
(*   %conv3.i.i188.2 = trunc i32 %xor.i.i187.2 to i8 *)
split tmp_v_xor_i_i187_2 v_conv3_i_i188_2 v_xor_i_i187_2 8;
vpc v_conv3_i_i188_2@uint8 v_conv3_i_i188_2@uint32;
(*   %conv4.i.i189.2 = zext i8 %conv5.i.i191.1 to i32 *)
cast v_conv4_i_i189_2@uint32 v_conv5_i_i191_1@uint8;
(*   %shr.i.i190.2 = ashr i32 %conv4.i.i189.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i190_2 tmp_to_be_used v_conv4_i_i189_2 1;
(*   %conv5.i.i191.2 = trunc i32 %shr.i.i190.2 to i8 *)
split tmp_v_shr_i_i190_2 v_conv5_i_i191_2 v_shr_i_i190_2 8;
vpc v_conv5_i_i191_2@uint8 v_conv5_i_i191_2@uint32;
(*   %conv6.i.i192.2 = zext i8 %conv7.i.i194.1 to i32 *)
cast v_conv6_i_i192_2@uint32 v_conv7_i_i194_1@uint8;
(*   %shl.i.i193.2 = shl i32 %conv6.i.i192.2, 1 *)
shls discard_107 v_shl_i_i193_2 v_conv6_i_i192_2 1;
(*   %conv7.i.i194.2 = trunc i32 %shl.i.i193.2 to i8 *)
split tmp_v_shl_i_i193_2 v_conv7_i_i194_2 v_shl_i_i193_2 8;
vpc v_conv7_i_i194_2@uint8 v_conv7_i_i194_2@uint32;
(*   %conv.i.i182.3 = zext i8 %conv5.i.i191.2 to i32 *)
cast v_conv_i_i182_3@uint32 v_conv5_i_i191_2@uint8;
(*   %and.i.i183.3 = and i32 %conv.i.i182.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i183_3 v_conv_i_i182_3 (0x1)@uint32;
(*   %conv1.i.i184.3 = zext i8 %conv7.i.i194.2 to i32 *)
cast v_conv1_i_i184_3@uint32 v_conv7_i_i194_2@uint8;
(*   %mul.i.i185.3 = mul nsw i32 %and.i.i183.3, %conv1.i.i184.3 *)
mul v_mul_i_i185_3 v_and_i_i183_3 v_conv1_i_i184_3;
(*   %conv2.i.i186.3 = zext i8 %conv3.i.i188.2 to i32 *)
cast v_conv2_i_i186_3@uint32 v_conv3_i_i188_2@uint8;
(*   %xor.i.i187.3 = xor i32 %conv2.i.i186.3, %mul.i.i185.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i187_3 v_conv2_i_i186_3 v_mul_i_i185_3;
(*   %conv3.i.i188.3 = trunc i32 %xor.i.i187.3 to i8 *)
split tmp_v_xor_i_i187_3 v_conv3_i_i188_3 v_xor_i_i187_3 8;
vpc v_conv3_i_i188_3@uint8 v_conv3_i_i188_3@uint32;
(*   %conv4.i.i189.3 = zext i8 %conv5.i.i191.2 to i32 *)
cast v_conv4_i_i189_3@uint32 v_conv5_i_i191_2@uint8;
(*   %shr.i.i190.3 = ashr i32 %conv4.i.i189.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i190_3 tmp_to_be_used v_conv4_i_i189_3 1;
(*   %conv5.i.i191.3 = trunc i32 %shr.i.i190.3 to i8 *)
split tmp_v_shr_i_i190_3 v_conv5_i_i191_3 v_shr_i_i190_3 8;
vpc v_conv5_i_i191_3@uint8 v_conv5_i_i191_3@uint32;
(*   %conv6.i.i192.3 = zext i8 %conv7.i.i194.2 to i32 *)
cast v_conv6_i_i192_3@uint32 v_conv7_i_i194_2@uint8;
(*   %shl.i.i193.3 = shl i32 %conv6.i.i192.3, 1 *)
shls discard_108 v_shl_i_i193_3 v_conv6_i_i192_3 1;
(*   %conv7.i.i194.3 = trunc i32 %shl.i.i193.3 to i8 *)
split tmp_v_shl_i_i193_3 v_conv7_i_i194_3 v_shl_i_i193_3 8;
vpc v_conv7_i_i194_3@uint8 v_conv7_i_i194_3@uint32;
(*   %conv.i.i182.4 = zext i8 %conv5.i.i191.3 to i32 *)
cast v_conv_i_i182_4@uint32 v_conv5_i_i191_3@uint8;
(*   %and.i.i183.4 = and i32 %conv.i.i182.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i183_4 v_conv_i_i182_4 (0x1)@uint32;
(*   %conv1.i.i184.4 = zext i8 %conv7.i.i194.3 to i32 *)
cast v_conv1_i_i184_4@uint32 v_conv7_i_i194_3@uint8;
(*   %mul.i.i185.4 = mul nsw i32 %and.i.i183.4, %conv1.i.i184.4 *)
mul v_mul_i_i185_4 v_and_i_i183_4 v_conv1_i_i184_4;
(*   %conv2.i.i186.4 = zext i8 %conv3.i.i188.3 to i32 *)
cast v_conv2_i_i186_4@uint32 v_conv3_i_i188_3@uint8;
(*   %xor.i.i187.4 = xor i32 %conv2.i.i186.4, %mul.i.i185.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i187_4 v_conv2_i_i186_4 v_mul_i_i185_4;
(*   %conv3.i.i188.4 = trunc i32 %xor.i.i187.4 to i8 *)
split tmp_v_xor_i_i187_4 v_conv3_i_i188_4 v_xor_i_i187_4 8;
vpc v_conv3_i_i188_4@uint8 v_conv3_i_i188_4@uint32;
(*   %conv4.i.i189.4 = zext i8 %conv5.i.i191.3 to i32 *)
cast v_conv4_i_i189_4@uint32 v_conv5_i_i191_3@uint8;
(*   %shr.i.i190.4 = ashr i32 %conv4.i.i189.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i190_4 tmp_to_be_used v_conv4_i_i189_4 1;
(*   %conv5.i.i191.4 = trunc i32 %shr.i.i190.4 to i8 *)
split tmp_v_shr_i_i190_4 v_conv5_i_i191_4 v_shr_i_i190_4 8;
vpc v_conv5_i_i191_4@uint8 v_conv5_i_i191_4@uint32;
(*   %conv6.i.i192.4 = zext i8 %conv7.i.i194.3 to i32 *)
cast v_conv6_i_i192_4@uint32 v_conv7_i_i194_3@uint8;
(*   %shl.i.i193.4 = shl i32 %conv6.i.i192.4, 1 *)
shls discard_109 v_shl_i_i193_4 v_conv6_i_i192_4 1;
(*   %conv7.i.i194.4 = trunc i32 %shl.i.i193.4 to i8 *)
split tmp_v_shl_i_i193_4 v_conv7_i_i194_4 v_shl_i_i193_4 8;
vpc v_conv7_i_i194_4@uint8 v_conv7_i_i194_4@uint32;
(*   %conv.i.i182.5 = zext i8 %conv5.i.i191.4 to i32 *)
cast v_conv_i_i182_5@uint32 v_conv5_i_i191_4@uint8;
(*   %and.i.i183.5 = and i32 %conv.i.i182.5, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i183_5 v_conv_i_i182_5 (0x1)@uint32;
(*   %conv1.i.i184.5 = zext i8 %conv7.i.i194.4 to i32 *)
cast v_conv1_i_i184_5@uint32 v_conv7_i_i194_4@uint8;
(*   %mul.i.i185.5 = mul nsw i32 %and.i.i183.5, %conv1.i.i184.5 *)
mul v_mul_i_i185_5 v_and_i_i183_5 v_conv1_i_i184_5;
(*   %conv2.i.i186.5 = zext i8 %conv3.i.i188.4 to i32 *)
cast v_conv2_i_i186_5@uint32 v_conv3_i_i188_4@uint8;
(*   %xor.i.i187.5 = xor i32 %conv2.i.i186.5, %mul.i.i185.5 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i187_5 v_conv2_i_i186_5 v_mul_i_i185_5;
(*   %conv3.i.i188.5 = trunc i32 %xor.i.i187.5 to i8 *)
split tmp_v_xor_i_i187_5 v_conv3_i_i188_5 v_xor_i_i187_5 8;
vpc v_conv3_i_i188_5@uint8 v_conv3_i_i188_5@uint32;
(*   %conv4.i.i189.5 = zext i8 %conv5.i.i191.4 to i32 *)
cast v_conv4_i_i189_5@uint32 v_conv5_i_i191_4@uint8;
(*   %shr.i.i190.5 = ashr i32 %conv4.i.i189.5, 1 *)
(* You may need to modify here *)
split v_shr_i_i190_5 tmp_to_be_used v_conv4_i_i189_5 1;
(*   %conv5.i.i191.5 = trunc i32 %shr.i.i190.5 to i8 *)
split tmp_v_shr_i_i190_5 v_conv5_i_i191_5 v_shr_i_i190_5 8;
vpc v_conv5_i_i191_5@uint8 v_conv5_i_i191_5@uint32;
(*   %conv6.i.i192.5 = zext i8 %conv7.i.i194.4 to i32 *)
cast v_conv6_i_i192_5@uint32 v_conv7_i_i194_4@uint8;
(*   %shl.i.i193.5 = shl i32 %conv6.i.i192.5, 1 *)
shls discard_110 v_shl_i_i193_5 v_conv6_i_i192_5 1;
(*   %conv7.i.i194.5 = trunc i32 %shl.i.i193.5 to i8 *)
split tmp_v_shl_i_i193_5 v_conv7_i_i194_5 v_shl_i_i193_5 8;
vpc v_conv7_i_i194_5@uint8 v_conv7_i_i194_5@uint32;
(*   %conv.i.i182.6 = zext i8 %conv5.i.i191.5 to i32 *)
cast v_conv_i_i182_6@uint32 v_conv5_i_i191_5@uint8;
(*   %and.i.i183.6 = and i32 %conv.i.i182.6, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i183_6 v_conv_i_i182_6 (0x1)@uint32;
(*   %conv1.i.i184.6 = zext i8 %conv7.i.i194.5 to i32 *)
cast v_conv1_i_i184_6@uint32 v_conv7_i_i194_5@uint8;
(*   %mul.i.i185.6 = mul nsw i32 %and.i.i183.6, %conv1.i.i184.6 *)
mul v_mul_i_i185_6 v_and_i_i183_6 v_conv1_i_i184_6;
(*   %conv2.i.i186.6 = zext i8 %conv3.i.i188.5 to i32 *)
cast v_conv2_i_i186_6@uint32 v_conv3_i_i188_5@uint8;
(*   %xor.i.i187.6 = xor i32 %conv2.i.i186.6, %mul.i.i185.6 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i187_6 v_conv2_i_i186_6 v_mul_i_i185_6;
(*   %conv3.i.i188.6 = trunc i32 %xor.i.i187.6 to i8 *)
split tmp_v_xor_i_i187_6 v_conv3_i_i188_6 v_xor_i_i187_6 8;
vpc v_conv3_i_i188_6@uint8 v_conv3_i_i188_6@uint32;
(*   %conv4.i.i189.6 = zext i8 %conv5.i.i191.5 to i32 *)
cast v_conv4_i_i189_6@uint32 v_conv5_i_i191_5@uint8;
(*   %shr.i.i190.6 = ashr i32 %conv4.i.i189.6, 1 *)
(* You may need to modify here *)
split v_shr_i_i190_6 tmp_to_be_used v_conv4_i_i189_6 1;
(*   %conv5.i.i191.6 = trunc i32 %shr.i.i190.6 to i8 *)
split tmp_v_shr_i_i190_6 v_conv5_i_i191_6 v_shr_i_i190_6 8;
vpc v_conv5_i_i191_6@uint8 v_conv5_i_i191_6@uint32;
(*   %conv6.i.i192.6 = zext i8 %conv7.i.i194.5 to i32 *)
cast v_conv6_i_i192_6@uint32 v_conv7_i_i194_5@uint8;
(*   %shl.i.i193.6 = shl i32 %conv6.i.i192.6, 1 *)
shls discard_111 v_shl_i_i193_6 v_conv6_i_i192_6 1;
(*   %conv7.i.i194.6 = trunc i32 %shl.i.i193.6 to i8 *)
split tmp_v_shl_i_i193_6 v_conv7_i_i194_6 v_shl_i_i193_6 8;
vpc v_conv7_i_i194_6@uint8 v_conv7_i_i194_6@uint32;
(*   %conv.i.i182.7 = zext i8 %conv5.i.i191.6 to i32 *)
cast v_conv_i_i182_7@uint32 v_conv5_i_i191_6@uint8;
(*   %and.i.i183.7 = and i32 %conv.i.i182.7, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i183_7 v_conv_i_i182_7 (0x1)@uint32;
(*   %conv1.i.i184.7 = zext i8 %conv7.i.i194.6 to i32 *)
cast v_conv1_i_i184_7@uint32 v_conv7_i_i194_6@uint8;
(*   %mul.i.i185.7 = mul nsw i32 %and.i.i183.7, %conv1.i.i184.7 *)
mul v_mul_i_i185_7 v_and_i_i183_7 v_conv1_i_i184_7;
(*   %conv2.i.i186.7 = zext i8 %conv3.i.i188.6 to i32 *)
cast v_conv2_i_i186_7@uint32 v_conv3_i_i188_6@uint8;
(*   %xor.i.i187.7 = xor i32 %conv2.i.i186.7, %mul.i.i185.7 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i187_7 v_conv2_i_i186_7 v_mul_i_i185_7;
(*   %conv3.i.i188.7 = trunc i32 %xor.i.i187.7 to i8 *)
split tmp_v_xor_i_i187_7 v_conv3_i_i188_7 v_xor_i_i187_7 8;
vpc v_conv3_i_i188_7@uint8 v_conv3_i_i188_7@uint32;
(*   store i8 %conv3.i.i188.7, i8* %arraydecay6, align 1 *)
mov ab2_0 v_conv3_i_i188_7;
(*   %arrayidx.i174.1 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %32 = load i8, i8* %arrayidx.i174.1, align 1 *)
mov v32 a_1;
(*   %arrayidx4.i178.1 = getelementptr inbounds i8, i8* %b, i64 3 *)
(*   %33 = load i8, i8* %arrayidx4.i178.1, align 1 *)
mov v33 b_3;
(*   %conv.i.i182.1200 = zext i8 %33 to i32 *)
cast v_conv_i_i182_1200@uint32 v33@uint8;
(*   %and.i.i183.1201 = and i32 %conv.i.i182.1200, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i183_1201 v_conv_i_i182_1200 (0x1)@uint32;
(*   %conv1.i.i184.1202 = zext i8 %32 to i32 *)
cast v_conv1_i_i184_1202@uint32 v32@uint8;
(*   %mul.i.i185.1203 = mul nsw i32 %and.i.i183.1201, %conv1.i.i184.1202 *)
mul v_mul_i_i185_1203 v_and_i_i183_1201 v_conv1_i_i184_1202;
(*   %conv3.i.i188.1204 = trunc i32 %mul.i.i185.1203 to i8 *)
split tmp_v_mul_i_i185_1203 v_conv3_i_i188_1204 v_mul_i_i185_1203 8;
vpc v_conv3_i_i188_1204@uint8 v_conv3_i_i188_1204@uint32;
(*   %conv4.i.i189.1205 = zext i8 %33 to i32 *)
cast v_conv4_i_i189_1205@uint32 v33@uint8;
(*   %shr.i.i190.1206 = ashr i32 %conv4.i.i189.1205, 1 *)
(* You may need to modify here *)
split v_shr_i_i190_1206 tmp_to_be_used v_conv4_i_i189_1205 1;
(*   %conv5.i.i191.1207 = trunc i32 %shr.i.i190.1206 to i8 *)
split tmp_v_shr_i_i190_1206 v_conv5_i_i191_1207 v_shr_i_i190_1206 8;
vpc v_conv5_i_i191_1207@uint8 v_conv5_i_i191_1207@uint32;
(*   %conv6.i.i192.1208 = zext i8 %32 to i32 *)
cast v_conv6_i_i192_1208@uint32 v32@uint8;
(*   %shl.i.i193.1209 = shl i32 %conv6.i.i192.1208, 1 *)
shls discard_112 v_shl_i_i193_1209 v_conv6_i_i192_1208 1;
(*   %conv7.i.i194.1210 = trunc i32 %shl.i.i193.1209 to i8 *)
split tmp_v_shl_i_i193_1209 v_conv7_i_i194_1210 v_shl_i_i193_1209 8;
vpc v_conv7_i_i194_1210@uint8 v_conv7_i_i194_1210@uint32;
(*   %conv.i.i182.1.1 = zext i8 %conv5.i.i191.1207 to i32 *)
cast v_conv_i_i182_1_1@uint32 v_conv5_i_i191_1207@uint8;
(*   %and.i.i183.1.1 = and i32 %conv.i.i182.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i183_1_1 v_conv_i_i182_1_1 (0x1)@uint32;
(*   %conv1.i.i184.1.1 = zext i8 %conv7.i.i194.1210 to i32 *)
cast v_conv1_i_i184_1_1@uint32 v_conv7_i_i194_1210@uint8;
(*   %mul.i.i185.1.1 = mul nsw i32 %and.i.i183.1.1, %conv1.i.i184.1.1 *)
mul v_mul_i_i185_1_1 v_and_i_i183_1_1 v_conv1_i_i184_1_1;
(*   %conv2.i.i186.1.1 = zext i8 %conv3.i.i188.1204 to i32 *)
cast v_conv2_i_i186_1_1@uint32 v_conv3_i_i188_1204@uint8;
(*   %xor.i.i187.1.1 = xor i32 %conv2.i.i186.1.1, %mul.i.i185.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i187_1_1 v_conv2_i_i186_1_1 v_mul_i_i185_1_1;
(*   %conv3.i.i188.1.1 = trunc i32 %xor.i.i187.1.1 to i8 *)
split tmp_v_xor_i_i187_1_1 v_conv3_i_i188_1_1 v_xor_i_i187_1_1 8;
vpc v_conv3_i_i188_1_1@uint8 v_conv3_i_i188_1_1@uint32;
(*   %conv4.i.i189.1.1 = zext i8 %conv5.i.i191.1207 to i32 *)
cast v_conv4_i_i189_1_1@uint32 v_conv5_i_i191_1207@uint8;
(*   %shr.i.i190.1.1 = ashr i32 %conv4.i.i189.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i190_1_1 tmp_to_be_used v_conv4_i_i189_1_1 1;
(*   %conv5.i.i191.1.1 = trunc i32 %shr.i.i190.1.1 to i8 *)
split tmp_v_shr_i_i190_1_1 v_conv5_i_i191_1_1 v_shr_i_i190_1_1 8;
vpc v_conv5_i_i191_1_1@uint8 v_conv5_i_i191_1_1@uint32;
(*   %conv6.i.i192.1.1 = zext i8 %conv7.i.i194.1210 to i32 *)
cast v_conv6_i_i192_1_1@uint32 v_conv7_i_i194_1210@uint8;
(*   %shl.i.i193.1.1 = shl i32 %conv6.i.i192.1.1, 1 *)
shls discard_113 v_shl_i_i193_1_1 v_conv6_i_i192_1_1 1;
(*   %conv7.i.i194.1.1 = trunc i32 %shl.i.i193.1.1 to i8 *)
split tmp_v_shl_i_i193_1_1 v_conv7_i_i194_1_1 v_shl_i_i193_1_1 8;
vpc v_conv7_i_i194_1_1@uint8 v_conv7_i_i194_1_1@uint32;
(*   %conv.i.i182.2.1 = zext i8 %conv5.i.i191.1.1 to i32 *)
cast v_conv_i_i182_2_1@uint32 v_conv5_i_i191_1_1@uint8;
(*   %and.i.i183.2.1 = and i32 %conv.i.i182.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i183_2_1 v_conv_i_i182_2_1 (0x1)@uint32;
(*   %conv1.i.i184.2.1 = zext i8 %conv7.i.i194.1.1 to i32 *)
cast v_conv1_i_i184_2_1@uint32 v_conv7_i_i194_1_1@uint8;
(*   %mul.i.i185.2.1 = mul nsw i32 %and.i.i183.2.1, %conv1.i.i184.2.1 *)
mul v_mul_i_i185_2_1 v_and_i_i183_2_1 v_conv1_i_i184_2_1;
(*   %conv2.i.i186.2.1 = zext i8 %conv3.i.i188.1.1 to i32 *)
cast v_conv2_i_i186_2_1@uint32 v_conv3_i_i188_1_1@uint8;
(*   %xor.i.i187.2.1 = xor i32 %conv2.i.i186.2.1, %mul.i.i185.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i187_2_1 v_conv2_i_i186_2_1 v_mul_i_i185_2_1;
(*   %conv3.i.i188.2.1 = trunc i32 %xor.i.i187.2.1 to i8 *)
split tmp_v_xor_i_i187_2_1 v_conv3_i_i188_2_1 v_xor_i_i187_2_1 8;
vpc v_conv3_i_i188_2_1@uint8 v_conv3_i_i188_2_1@uint32;
(*   %conv4.i.i189.2.1 = zext i8 %conv5.i.i191.1.1 to i32 *)
cast v_conv4_i_i189_2_1@uint32 v_conv5_i_i191_1_1@uint8;
(*   %shr.i.i190.2.1 = ashr i32 %conv4.i.i189.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i190_2_1 tmp_to_be_used v_conv4_i_i189_2_1 1;
(*   %conv5.i.i191.2.1 = trunc i32 %shr.i.i190.2.1 to i8 *)
split tmp_v_shr_i_i190_2_1 v_conv5_i_i191_2_1 v_shr_i_i190_2_1 8;
vpc v_conv5_i_i191_2_1@uint8 v_conv5_i_i191_2_1@uint32;
(*   %conv6.i.i192.2.1 = zext i8 %conv7.i.i194.1.1 to i32 *)
cast v_conv6_i_i192_2_1@uint32 v_conv7_i_i194_1_1@uint8;
(*   %shl.i.i193.2.1 = shl i32 %conv6.i.i192.2.1, 1 *)
shls discard_114 v_shl_i_i193_2_1 v_conv6_i_i192_2_1 1;
(*   %conv7.i.i194.2.1 = trunc i32 %shl.i.i193.2.1 to i8 *)
split tmp_v_shl_i_i193_2_1 v_conv7_i_i194_2_1 v_shl_i_i193_2_1 8;
vpc v_conv7_i_i194_2_1@uint8 v_conv7_i_i194_2_1@uint32;
(*   %conv.i.i182.3.1 = zext i8 %conv5.i.i191.2.1 to i32 *)
cast v_conv_i_i182_3_1@uint32 v_conv5_i_i191_2_1@uint8;
(*   %and.i.i183.3.1 = and i32 %conv.i.i182.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i183_3_1 v_conv_i_i182_3_1 (0x1)@uint32;
(*   %conv1.i.i184.3.1 = zext i8 %conv7.i.i194.2.1 to i32 *)
cast v_conv1_i_i184_3_1@uint32 v_conv7_i_i194_2_1@uint8;
(*   %mul.i.i185.3.1 = mul nsw i32 %and.i.i183.3.1, %conv1.i.i184.3.1 *)
mul v_mul_i_i185_3_1 v_and_i_i183_3_1 v_conv1_i_i184_3_1;
(*   %conv2.i.i186.3.1 = zext i8 %conv3.i.i188.2.1 to i32 *)
cast v_conv2_i_i186_3_1@uint32 v_conv3_i_i188_2_1@uint8;
(*   %xor.i.i187.3.1 = xor i32 %conv2.i.i186.3.1, %mul.i.i185.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i187_3_1 v_conv2_i_i186_3_1 v_mul_i_i185_3_1;
(*   %conv3.i.i188.3.1 = trunc i32 %xor.i.i187.3.1 to i8 *)
split tmp_v_xor_i_i187_3_1 v_conv3_i_i188_3_1 v_xor_i_i187_3_1 8;
vpc v_conv3_i_i188_3_1@uint8 v_conv3_i_i188_3_1@uint32;
(*   %conv4.i.i189.3.1 = zext i8 %conv5.i.i191.2.1 to i32 *)
cast v_conv4_i_i189_3_1@uint32 v_conv5_i_i191_2_1@uint8;
(*   %shr.i.i190.3.1 = ashr i32 %conv4.i.i189.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i190_3_1 tmp_to_be_used v_conv4_i_i189_3_1 1;
(*   %conv5.i.i191.3.1 = trunc i32 %shr.i.i190.3.1 to i8 *)
split tmp_v_shr_i_i190_3_1 v_conv5_i_i191_3_1 v_shr_i_i190_3_1 8;
vpc v_conv5_i_i191_3_1@uint8 v_conv5_i_i191_3_1@uint32;
(*   %conv6.i.i192.3.1 = zext i8 %conv7.i.i194.2.1 to i32 *)
cast v_conv6_i_i192_3_1@uint32 v_conv7_i_i194_2_1@uint8;
(*   %shl.i.i193.3.1 = shl i32 %conv6.i.i192.3.1, 1 *)
shls discard_115 v_shl_i_i193_3_1 v_conv6_i_i192_3_1 1;
(*   %conv7.i.i194.3.1 = trunc i32 %shl.i.i193.3.1 to i8 *)
split tmp_v_shl_i_i193_3_1 v_conv7_i_i194_3_1 v_shl_i_i193_3_1 8;
vpc v_conv7_i_i194_3_1@uint8 v_conv7_i_i194_3_1@uint32;
(*   %conv.i.i182.4.1 = zext i8 %conv5.i.i191.3.1 to i32 *)
cast v_conv_i_i182_4_1@uint32 v_conv5_i_i191_3_1@uint8;
(*   %and.i.i183.4.1 = and i32 %conv.i.i182.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i183_4_1 v_conv_i_i182_4_1 (0x1)@uint32;
(*   %conv1.i.i184.4.1 = zext i8 %conv7.i.i194.3.1 to i32 *)
cast v_conv1_i_i184_4_1@uint32 v_conv7_i_i194_3_1@uint8;
(*   %mul.i.i185.4.1 = mul nsw i32 %and.i.i183.4.1, %conv1.i.i184.4.1 *)
mul v_mul_i_i185_4_1 v_and_i_i183_4_1 v_conv1_i_i184_4_1;
(*   %conv2.i.i186.4.1 = zext i8 %conv3.i.i188.3.1 to i32 *)
cast v_conv2_i_i186_4_1@uint32 v_conv3_i_i188_3_1@uint8;
(*   %xor.i.i187.4.1 = xor i32 %conv2.i.i186.4.1, %mul.i.i185.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i187_4_1 v_conv2_i_i186_4_1 v_mul_i_i185_4_1;
(*   %conv3.i.i188.4.1 = trunc i32 %xor.i.i187.4.1 to i8 *)
split tmp_v_xor_i_i187_4_1 v_conv3_i_i188_4_1 v_xor_i_i187_4_1 8;
vpc v_conv3_i_i188_4_1@uint8 v_conv3_i_i188_4_1@uint32;
(*   %conv4.i.i189.4.1 = zext i8 %conv5.i.i191.3.1 to i32 *)
cast v_conv4_i_i189_4_1@uint32 v_conv5_i_i191_3_1@uint8;
(*   %shr.i.i190.4.1 = ashr i32 %conv4.i.i189.4.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i190_4_1 tmp_to_be_used v_conv4_i_i189_4_1 1;
(*   %conv5.i.i191.4.1 = trunc i32 %shr.i.i190.4.1 to i8 *)
split tmp_v_shr_i_i190_4_1 v_conv5_i_i191_4_1 v_shr_i_i190_4_1 8;
vpc v_conv5_i_i191_4_1@uint8 v_conv5_i_i191_4_1@uint32;
(*   %conv6.i.i192.4.1 = zext i8 %conv7.i.i194.3.1 to i32 *)
cast v_conv6_i_i192_4_1@uint32 v_conv7_i_i194_3_1@uint8;
(*   %shl.i.i193.4.1 = shl i32 %conv6.i.i192.4.1, 1 *)
shls discard_116 v_shl_i_i193_4_1 v_conv6_i_i192_4_1 1;
(*   %conv7.i.i194.4.1 = trunc i32 %shl.i.i193.4.1 to i8 *)
split tmp_v_shl_i_i193_4_1 v_conv7_i_i194_4_1 v_shl_i_i193_4_1 8;
vpc v_conv7_i_i194_4_1@uint8 v_conv7_i_i194_4_1@uint32;
(*   %conv.i.i182.5.1 = zext i8 %conv5.i.i191.4.1 to i32 *)
cast v_conv_i_i182_5_1@uint32 v_conv5_i_i191_4_1@uint8;
(*   %and.i.i183.5.1 = and i32 %conv.i.i182.5.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i183_5_1 v_conv_i_i182_5_1 (0x1)@uint32;
(*   %conv1.i.i184.5.1 = zext i8 %conv7.i.i194.4.1 to i32 *)
cast v_conv1_i_i184_5_1@uint32 v_conv7_i_i194_4_1@uint8;
(*   %mul.i.i185.5.1 = mul nsw i32 %and.i.i183.5.1, %conv1.i.i184.5.1 *)
mul v_mul_i_i185_5_1 v_and_i_i183_5_1 v_conv1_i_i184_5_1;
(*   %conv2.i.i186.5.1 = zext i8 %conv3.i.i188.4.1 to i32 *)
cast v_conv2_i_i186_5_1@uint32 v_conv3_i_i188_4_1@uint8;
(*   %xor.i.i187.5.1 = xor i32 %conv2.i.i186.5.1, %mul.i.i185.5.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i187_5_1 v_conv2_i_i186_5_1 v_mul_i_i185_5_1;
(*   %conv3.i.i188.5.1 = trunc i32 %xor.i.i187.5.1 to i8 *)
split tmp_v_xor_i_i187_5_1 v_conv3_i_i188_5_1 v_xor_i_i187_5_1 8;
vpc v_conv3_i_i188_5_1@uint8 v_conv3_i_i188_5_1@uint32;
(*   %conv4.i.i189.5.1 = zext i8 %conv5.i.i191.4.1 to i32 *)
cast v_conv4_i_i189_5_1@uint32 v_conv5_i_i191_4_1@uint8;
(*   %shr.i.i190.5.1 = ashr i32 %conv4.i.i189.5.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i190_5_1 tmp_to_be_used v_conv4_i_i189_5_1 1;
(*   %conv5.i.i191.5.1 = trunc i32 %shr.i.i190.5.1 to i8 *)
split tmp_v_shr_i_i190_5_1 v_conv5_i_i191_5_1 v_shr_i_i190_5_1 8;
vpc v_conv5_i_i191_5_1@uint8 v_conv5_i_i191_5_1@uint32;
(*   %conv6.i.i192.5.1 = zext i8 %conv7.i.i194.4.1 to i32 *)
cast v_conv6_i_i192_5_1@uint32 v_conv7_i_i194_4_1@uint8;
(*   %shl.i.i193.5.1 = shl i32 %conv6.i.i192.5.1, 1 *)
shls discard_117 v_shl_i_i193_5_1 v_conv6_i_i192_5_1 1;
(*   %conv7.i.i194.5.1 = trunc i32 %shl.i.i193.5.1 to i8 *)
split tmp_v_shl_i_i193_5_1 v_conv7_i_i194_5_1 v_shl_i_i193_5_1 8;
vpc v_conv7_i_i194_5_1@uint8 v_conv7_i_i194_5_1@uint32;
(*   %conv.i.i182.6.1 = zext i8 %conv5.i.i191.5.1 to i32 *)
cast v_conv_i_i182_6_1@uint32 v_conv5_i_i191_5_1@uint8;
(*   %and.i.i183.6.1 = and i32 %conv.i.i182.6.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i183_6_1 v_conv_i_i182_6_1 (0x1)@uint32;
(*   %conv1.i.i184.6.1 = zext i8 %conv7.i.i194.5.1 to i32 *)
cast v_conv1_i_i184_6_1@uint32 v_conv7_i_i194_5_1@uint8;
(*   %mul.i.i185.6.1 = mul nsw i32 %and.i.i183.6.1, %conv1.i.i184.6.1 *)
mul v_mul_i_i185_6_1 v_and_i_i183_6_1 v_conv1_i_i184_6_1;
(*   %conv2.i.i186.6.1 = zext i8 %conv3.i.i188.5.1 to i32 *)
cast v_conv2_i_i186_6_1@uint32 v_conv3_i_i188_5_1@uint8;
(*   %xor.i.i187.6.1 = xor i32 %conv2.i.i186.6.1, %mul.i.i185.6.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i187_6_1 v_conv2_i_i186_6_1 v_mul_i_i185_6_1;
(*   %conv3.i.i188.6.1 = trunc i32 %xor.i.i187.6.1 to i8 *)
split tmp_v_xor_i_i187_6_1 v_conv3_i_i188_6_1 v_xor_i_i187_6_1 8;
vpc v_conv3_i_i188_6_1@uint8 v_conv3_i_i188_6_1@uint32;
(*   %conv4.i.i189.6.1 = zext i8 %conv5.i.i191.5.1 to i32 *)
cast v_conv4_i_i189_6_1@uint32 v_conv5_i_i191_5_1@uint8;
(*   %shr.i.i190.6.1 = ashr i32 %conv4.i.i189.6.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i190_6_1 tmp_to_be_used v_conv4_i_i189_6_1 1;
(*   %conv5.i.i191.6.1 = trunc i32 %shr.i.i190.6.1 to i8 *)
split tmp_v_shr_i_i190_6_1 v_conv5_i_i191_6_1 v_shr_i_i190_6_1 8;
vpc v_conv5_i_i191_6_1@uint8 v_conv5_i_i191_6_1@uint32;
(*   %conv6.i.i192.6.1 = zext i8 %conv7.i.i194.5.1 to i32 *)
cast v_conv6_i_i192_6_1@uint32 v_conv7_i_i194_5_1@uint8;
(*   %shl.i.i193.6.1 = shl i32 %conv6.i.i192.6.1, 1 *)
shls discard_118 v_shl_i_i193_6_1 v_conv6_i_i192_6_1 1;
(*   %conv7.i.i194.6.1 = trunc i32 %shl.i.i193.6.1 to i8 *)
split tmp_v_shl_i_i193_6_1 v_conv7_i_i194_6_1 v_shl_i_i193_6_1 8;
vpc v_conv7_i_i194_6_1@uint8 v_conv7_i_i194_6_1@uint32;
(*   %conv.i.i182.7.1 = zext i8 %conv5.i.i191.6.1 to i32 *)
cast v_conv_i_i182_7_1@uint32 v_conv5_i_i191_6_1@uint8;
(*   %and.i.i183.7.1 = and i32 %conv.i.i182.7.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i183_7_1 v_conv_i_i182_7_1 (0x1)@uint32;
(*   %conv1.i.i184.7.1 = zext i8 %conv7.i.i194.6.1 to i32 *)
cast v_conv1_i_i184_7_1@uint32 v_conv7_i_i194_6_1@uint8;
(*   %mul.i.i185.7.1 = mul nsw i32 %and.i.i183.7.1, %conv1.i.i184.7.1 *)
mul v_mul_i_i185_7_1 v_and_i_i183_7_1 v_conv1_i_i184_7_1;
(*   %conv2.i.i186.7.1 = zext i8 %conv3.i.i188.6.1 to i32 *)
cast v_conv2_i_i186_7_1@uint32 v_conv3_i_i188_6_1@uint8;
(*   %xor.i.i187.7.1 = xor i32 %conv2.i.i186.7.1, %mul.i.i185.7.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i187_7_1 v_conv2_i_i186_7_1 v_mul_i_i185_7_1;
(*   %conv3.i.i188.7.1 = trunc i32 %xor.i.i187.7.1 to i8 *)
split tmp_v_xor_i_i187_7_1 v_conv3_i_i188_7_1 v_xor_i_i187_7_1 8;
vpc v_conv3_i_i188_7_1@uint8 v_conv3_i_i188_7_1@uint32;
(*   %arrayidx6.i198.1 = getelementptr inbounds i8, i8* %arraydecay6, i64 1 *)
(*   store i8 %conv3.i.i188.7.1, i8* %arrayidx6.i198.1, align 1 *)
mov ab2_1 v_conv3_i_i188_7_1;
(*   %arrayidx.i174.2 = getelementptr inbounds i8, i8* %a, i64 2 *)
(*   %34 = load i8, i8* %arrayidx.i174.2, align 1 *)
mov v34 a_2;
(*   %arrayidx4.i178.2 = getelementptr inbounds i8, i8* %b, i64 4 *)
(*   %35 = load i8, i8* %arrayidx4.i178.2, align 1 *)
mov v35 b_4;
(*   %conv.i.i182.2211 = zext i8 %35 to i32 *)
cast v_conv_i_i182_2211@uint32 v35@uint8;
(*   %and.i.i183.2212 = and i32 %conv.i.i182.2211, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i183_2212 v_conv_i_i182_2211 (0x1)@uint32;
(*   %conv1.i.i184.2213 = zext i8 %34 to i32 *)
cast v_conv1_i_i184_2213@uint32 v34@uint8;
(*   %mul.i.i185.2214 = mul nsw i32 %and.i.i183.2212, %conv1.i.i184.2213 *)
mul v_mul_i_i185_2214 v_and_i_i183_2212 v_conv1_i_i184_2213;
(*   %conv3.i.i188.2215 = trunc i32 %mul.i.i185.2214 to i8 *)
split tmp_v_mul_i_i185_2214 v_conv3_i_i188_2215 v_mul_i_i185_2214 8;
vpc v_conv3_i_i188_2215@uint8 v_conv3_i_i188_2215@uint32;
(*   %conv4.i.i189.2216 = zext i8 %35 to i32 *)
cast v_conv4_i_i189_2216@uint32 v35@uint8;
(*   %shr.i.i190.2217 = ashr i32 %conv4.i.i189.2216, 1 *)
(* You may need to modify here *)
split v_shr_i_i190_2217 tmp_to_be_used v_conv4_i_i189_2216 1;
(*   %conv5.i.i191.2218 = trunc i32 %shr.i.i190.2217 to i8 *)
split tmp_v_shr_i_i190_2217 v_conv5_i_i191_2218 v_shr_i_i190_2217 8;
vpc v_conv5_i_i191_2218@uint8 v_conv5_i_i191_2218@uint32;
(*   %conv6.i.i192.2219 = zext i8 %34 to i32 *)
cast v_conv6_i_i192_2219@uint32 v34@uint8;
(*   %shl.i.i193.2220 = shl i32 %conv6.i.i192.2219, 1 *)
shls discard_119 v_shl_i_i193_2220 v_conv6_i_i192_2219 1;
(*   %conv7.i.i194.2221 = trunc i32 %shl.i.i193.2220 to i8 *)
split tmp_v_shl_i_i193_2220 v_conv7_i_i194_2221 v_shl_i_i193_2220 8;
vpc v_conv7_i_i194_2221@uint8 v_conv7_i_i194_2221@uint32;
(*   %conv.i.i182.1.2 = zext i8 %conv5.i.i191.2218 to i32 *)
cast v_conv_i_i182_1_2@uint32 v_conv5_i_i191_2218@uint8;
(*   %and.i.i183.1.2 = and i32 %conv.i.i182.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i183_1_2 v_conv_i_i182_1_2 (0x1)@uint32;
(*   %conv1.i.i184.1.2 = zext i8 %conv7.i.i194.2221 to i32 *)
cast v_conv1_i_i184_1_2@uint32 v_conv7_i_i194_2221@uint8;
(*   %mul.i.i185.1.2 = mul nsw i32 %and.i.i183.1.2, %conv1.i.i184.1.2 *)
mul v_mul_i_i185_1_2 v_and_i_i183_1_2 v_conv1_i_i184_1_2;
(*   %conv2.i.i186.1.2 = zext i8 %conv3.i.i188.2215 to i32 *)
cast v_conv2_i_i186_1_2@uint32 v_conv3_i_i188_2215@uint8;
(*   %xor.i.i187.1.2 = xor i32 %conv2.i.i186.1.2, %mul.i.i185.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i187_1_2 v_conv2_i_i186_1_2 v_mul_i_i185_1_2;
(*   %conv3.i.i188.1.2 = trunc i32 %xor.i.i187.1.2 to i8 *)
split tmp_v_xor_i_i187_1_2 v_conv3_i_i188_1_2 v_xor_i_i187_1_2 8;
vpc v_conv3_i_i188_1_2@uint8 v_conv3_i_i188_1_2@uint32;
(*   %conv4.i.i189.1.2 = zext i8 %conv5.i.i191.2218 to i32 *)
cast v_conv4_i_i189_1_2@uint32 v_conv5_i_i191_2218@uint8;
(*   %shr.i.i190.1.2 = ashr i32 %conv4.i.i189.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i190_1_2 tmp_to_be_used v_conv4_i_i189_1_2 1;
(*   %conv5.i.i191.1.2 = trunc i32 %shr.i.i190.1.2 to i8 *)
split tmp_v_shr_i_i190_1_2 v_conv5_i_i191_1_2 v_shr_i_i190_1_2 8;
vpc v_conv5_i_i191_1_2@uint8 v_conv5_i_i191_1_2@uint32;
(*   %conv6.i.i192.1.2 = zext i8 %conv7.i.i194.2221 to i32 *)
cast v_conv6_i_i192_1_2@uint32 v_conv7_i_i194_2221@uint8;
(*   %shl.i.i193.1.2 = shl i32 %conv6.i.i192.1.2, 1 *)
shls discard_120 v_shl_i_i193_1_2 v_conv6_i_i192_1_2 1;
(*   %conv7.i.i194.1.2 = trunc i32 %shl.i.i193.1.2 to i8 *)
split tmp_v_shl_i_i193_1_2 v_conv7_i_i194_1_2 v_shl_i_i193_1_2 8;
vpc v_conv7_i_i194_1_2@uint8 v_conv7_i_i194_1_2@uint32;
(*   %conv.i.i182.2.2 = zext i8 %conv5.i.i191.1.2 to i32 *)
cast v_conv_i_i182_2_2@uint32 v_conv5_i_i191_1_2@uint8;
(*   %and.i.i183.2.2 = and i32 %conv.i.i182.2.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i183_2_2 v_conv_i_i182_2_2 (0x1)@uint32;
(*   %conv1.i.i184.2.2 = zext i8 %conv7.i.i194.1.2 to i32 *)
cast v_conv1_i_i184_2_2@uint32 v_conv7_i_i194_1_2@uint8;
(*   %mul.i.i185.2.2 = mul nsw i32 %and.i.i183.2.2, %conv1.i.i184.2.2 *)
mul v_mul_i_i185_2_2 v_and_i_i183_2_2 v_conv1_i_i184_2_2;
(*   %conv2.i.i186.2.2 = zext i8 %conv3.i.i188.1.2 to i32 *)
cast v_conv2_i_i186_2_2@uint32 v_conv3_i_i188_1_2@uint8;
(*   %xor.i.i187.2.2 = xor i32 %conv2.i.i186.2.2, %mul.i.i185.2.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i187_2_2 v_conv2_i_i186_2_2 v_mul_i_i185_2_2;
(*   %conv3.i.i188.2.2 = trunc i32 %xor.i.i187.2.2 to i8 *)
split tmp_v_xor_i_i187_2_2 v_conv3_i_i188_2_2 v_xor_i_i187_2_2 8;
vpc v_conv3_i_i188_2_2@uint8 v_conv3_i_i188_2_2@uint32;
(*   %conv4.i.i189.2.2 = zext i8 %conv5.i.i191.1.2 to i32 *)
cast v_conv4_i_i189_2_2@uint32 v_conv5_i_i191_1_2@uint8;
(*   %shr.i.i190.2.2 = ashr i32 %conv4.i.i189.2.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i190_2_2 tmp_to_be_used v_conv4_i_i189_2_2 1;
(*   %conv5.i.i191.2.2 = trunc i32 %shr.i.i190.2.2 to i8 *)
split tmp_v_shr_i_i190_2_2 v_conv5_i_i191_2_2 v_shr_i_i190_2_2 8;
vpc v_conv5_i_i191_2_2@uint8 v_conv5_i_i191_2_2@uint32;
(*   %conv6.i.i192.2.2 = zext i8 %conv7.i.i194.1.2 to i32 *)
cast v_conv6_i_i192_2_2@uint32 v_conv7_i_i194_1_2@uint8;
(*   %shl.i.i193.2.2 = shl i32 %conv6.i.i192.2.2, 1 *)
shls discard_121 v_shl_i_i193_2_2 v_conv6_i_i192_2_2 1;
(*   %conv7.i.i194.2.2 = trunc i32 %shl.i.i193.2.2 to i8 *)
split tmp_v_shl_i_i193_2_2 v_conv7_i_i194_2_2 v_shl_i_i193_2_2 8;
vpc v_conv7_i_i194_2_2@uint8 v_conv7_i_i194_2_2@uint32;
(*   %conv.i.i182.3.2 = zext i8 %conv5.i.i191.2.2 to i32 *)
cast v_conv_i_i182_3_2@uint32 v_conv5_i_i191_2_2@uint8;
(*   %and.i.i183.3.2 = and i32 %conv.i.i182.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i183_3_2 v_conv_i_i182_3_2 (0x1)@uint32;
(*   %conv1.i.i184.3.2 = zext i8 %conv7.i.i194.2.2 to i32 *)
cast v_conv1_i_i184_3_2@uint32 v_conv7_i_i194_2_2@uint8;
(*   %mul.i.i185.3.2 = mul nsw i32 %and.i.i183.3.2, %conv1.i.i184.3.2 *)
mul v_mul_i_i185_3_2 v_and_i_i183_3_2 v_conv1_i_i184_3_2;
(*   %conv2.i.i186.3.2 = zext i8 %conv3.i.i188.2.2 to i32 *)
cast v_conv2_i_i186_3_2@uint32 v_conv3_i_i188_2_2@uint8;
(*   %xor.i.i187.3.2 = xor i32 %conv2.i.i186.3.2, %mul.i.i185.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i187_3_2 v_conv2_i_i186_3_2 v_mul_i_i185_3_2;
(*   %conv3.i.i188.3.2 = trunc i32 %xor.i.i187.3.2 to i8 *)
split tmp_v_xor_i_i187_3_2 v_conv3_i_i188_3_2 v_xor_i_i187_3_2 8;
vpc v_conv3_i_i188_3_2@uint8 v_conv3_i_i188_3_2@uint32;
(*   %conv4.i.i189.3.2 = zext i8 %conv5.i.i191.2.2 to i32 *)
cast v_conv4_i_i189_3_2@uint32 v_conv5_i_i191_2_2@uint8;
(*   %shr.i.i190.3.2 = ashr i32 %conv4.i.i189.3.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i190_3_2 tmp_to_be_used v_conv4_i_i189_3_2 1;
(*   %conv5.i.i191.3.2 = trunc i32 %shr.i.i190.3.2 to i8 *)
split tmp_v_shr_i_i190_3_2 v_conv5_i_i191_3_2 v_shr_i_i190_3_2 8;
vpc v_conv5_i_i191_3_2@uint8 v_conv5_i_i191_3_2@uint32;
(*   %conv6.i.i192.3.2 = zext i8 %conv7.i.i194.2.2 to i32 *)
cast v_conv6_i_i192_3_2@uint32 v_conv7_i_i194_2_2@uint8;
(*   %shl.i.i193.3.2 = shl i32 %conv6.i.i192.3.2, 1 *)
shls discard_122 v_shl_i_i193_3_2 v_conv6_i_i192_3_2 1;
(*   %conv7.i.i194.3.2 = trunc i32 %shl.i.i193.3.2 to i8 *)
split tmp_v_shl_i_i193_3_2 v_conv7_i_i194_3_2 v_shl_i_i193_3_2 8;
vpc v_conv7_i_i194_3_2@uint8 v_conv7_i_i194_3_2@uint32;
(*   %conv.i.i182.4.2 = zext i8 %conv5.i.i191.3.2 to i32 *)
cast v_conv_i_i182_4_2@uint32 v_conv5_i_i191_3_2@uint8;
(*   %and.i.i183.4.2 = and i32 %conv.i.i182.4.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i183_4_2 v_conv_i_i182_4_2 (0x1)@uint32;
(*   %conv1.i.i184.4.2 = zext i8 %conv7.i.i194.3.2 to i32 *)
cast v_conv1_i_i184_4_2@uint32 v_conv7_i_i194_3_2@uint8;
(*   %mul.i.i185.4.2 = mul nsw i32 %and.i.i183.4.2, %conv1.i.i184.4.2 *)
mul v_mul_i_i185_4_2 v_and_i_i183_4_2 v_conv1_i_i184_4_2;
(*   %conv2.i.i186.4.2 = zext i8 %conv3.i.i188.3.2 to i32 *)
cast v_conv2_i_i186_4_2@uint32 v_conv3_i_i188_3_2@uint8;
(*   %xor.i.i187.4.2 = xor i32 %conv2.i.i186.4.2, %mul.i.i185.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i187_4_2 v_conv2_i_i186_4_2 v_mul_i_i185_4_2;
(*   %conv3.i.i188.4.2 = trunc i32 %xor.i.i187.4.2 to i8 *)
split tmp_v_xor_i_i187_4_2 v_conv3_i_i188_4_2 v_xor_i_i187_4_2 8;
vpc v_conv3_i_i188_4_2@uint8 v_conv3_i_i188_4_2@uint32;
(*   %conv4.i.i189.4.2 = zext i8 %conv5.i.i191.3.2 to i32 *)
cast v_conv4_i_i189_4_2@uint32 v_conv5_i_i191_3_2@uint8;
(*   %shr.i.i190.4.2 = ashr i32 %conv4.i.i189.4.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i190_4_2 tmp_to_be_used v_conv4_i_i189_4_2 1;
(*   %conv5.i.i191.4.2 = trunc i32 %shr.i.i190.4.2 to i8 *)
split tmp_v_shr_i_i190_4_2 v_conv5_i_i191_4_2 v_shr_i_i190_4_2 8;
vpc v_conv5_i_i191_4_2@uint8 v_conv5_i_i191_4_2@uint32;
(*   %conv6.i.i192.4.2 = zext i8 %conv7.i.i194.3.2 to i32 *)
cast v_conv6_i_i192_4_2@uint32 v_conv7_i_i194_3_2@uint8;
(*   %shl.i.i193.4.2 = shl i32 %conv6.i.i192.4.2, 1 *)
shls discard_123 v_shl_i_i193_4_2 v_conv6_i_i192_4_2 1;
(*   %conv7.i.i194.4.2 = trunc i32 %shl.i.i193.4.2 to i8 *)
split tmp_v_shl_i_i193_4_2 v_conv7_i_i194_4_2 v_shl_i_i193_4_2 8;
vpc v_conv7_i_i194_4_2@uint8 v_conv7_i_i194_4_2@uint32;
(*   %conv.i.i182.5.2 = zext i8 %conv5.i.i191.4.2 to i32 *)
cast v_conv_i_i182_5_2@uint32 v_conv5_i_i191_4_2@uint8;
(*   %and.i.i183.5.2 = and i32 %conv.i.i182.5.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i183_5_2 v_conv_i_i182_5_2 (0x1)@uint32;
(*   %conv1.i.i184.5.2 = zext i8 %conv7.i.i194.4.2 to i32 *)
cast v_conv1_i_i184_5_2@uint32 v_conv7_i_i194_4_2@uint8;
(*   %mul.i.i185.5.2 = mul nsw i32 %and.i.i183.5.2, %conv1.i.i184.5.2 *)
mul v_mul_i_i185_5_2 v_and_i_i183_5_2 v_conv1_i_i184_5_2;
(*   %conv2.i.i186.5.2 = zext i8 %conv3.i.i188.4.2 to i32 *)
cast v_conv2_i_i186_5_2@uint32 v_conv3_i_i188_4_2@uint8;
(*   %xor.i.i187.5.2 = xor i32 %conv2.i.i186.5.2, %mul.i.i185.5.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i187_5_2 v_conv2_i_i186_5_2 v_mul_i_i185_5_2;
(*   %conv3.i.i188.5.2 = trunc i32 %xor.i.i187.5.2 to i8 *)
split tmp_v_xor_i_i187_5_2 v_conv3_i_i188_5_2 v_xor_i_i187_5_2 8;
vpc v_conv3_i_i188_5_2@uint8 v_conv3_i_i188_5_2@uint32;
(*   %conv4.i.i189.5.2 = zext i8 %conv5.i.i191.4.2 to i32 *)
cast v_conv4_i_i189_5_2@uint32 v_conv5_i_i191_4_2@uint8;
(*   %shr.i.i190.5.2 = ashr i32 %conv4.i.i189.5.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i190_5_2 tmp_to_be_used v_conv4_i_i189_5_2 1;
(*   %conv5.i.i191.5.2 = trunc i32 %shr.i.i190.5.2 to i8 *)
split tmp_v_shr_i_i190_5_2 v_conv5_i_i191_5_2 v_shr_i_i190_5_2 8;
vpc v_conv5_i_i191_5_2@uint8 v_conv5_i_i191_5_2@uint32;
(*   %conv6.i.i192.5.2 = zext i8 %conv7.i.i194.4.2 to i32 *)
cast v_conv6_i_i192_5_2@uint32 v_conv7_i_i194_4_2@uint8;
(*   %shl.i.i193.5.2 = shl i32 %conv6.i.i192.5.2, 1 *)
shls discard_124 v_shl_i_i193_5_2 v_conv6_i_i192_5_2 1;
(*   %conv7.i.i194.5.2 = trunc i32 %shl.i.i193.5.2 to i8 *)
split tmp_v_shl_i_i193_5_2 v_conv7_i_i194_5_2 v_shl_i_i193_5_2 8;
vpc v_conv7_i_i194_5_2@uint8 v_conv7_i_i194_5_2@uint32;
(*   %conv.i.i182.6.2 = zext i8 %conv5.i.i191.5.2 to i32 *)
cast v_conv_i_i182_6_2@uint32 v_conv5_i_i191_5_2@uint8;
(*   %and.i.i183.6.2 = and i32 %conv.i.i182.6.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i183_6_2 v_conv_i_i182_6_2 (0x1)@uint32;
(*   %conv1.i.i184.6.2 = zext i8 %conv7.i.i194.5.2 to i32 *)
cast v_conv1_i_i184_6_2@uint32 v_conv7_i_i194_5_2@uint8;
(*   %mul.i.i185.6.2 = mul nsw i32 %and.i.i183.6.2, %conv1.i.i184.6.2 *)
mul v_mul_i_i185_6_2 v_and_i_i183_6_2 v_conv1_i_i184_6_2;
(*   %conv2.i.i186.6.2 = zext i8 %conv3.i.i188.5.2 to i32 *)
cast v_conv2_i_i186_6_2@uint32 v_conv3_i_i188_5_2@uint8;
(*   %xor.i.i187.6.2 = xor i32 %conv2.i.i186.6.2, %mul.i.i185.6.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i187_6_2 v_conv2_i_i186_6_2 v_mul_i_i185_6_2;
(*   %conv3.i.i188.6.2 = trunc i32 %xor.i.i187.6.2 to i8 *)
split tmp_v_xor_i_i187_6_2 v_conv3_i_i188_6_2 v_xor_i_i187_6_2 8;
vpc v_conv3_i_i188_6_2@uint8 v_conv3_i_i188_6_2@uint32;
(*   %conv4.i.i189.6.2 = zext i8 %conv5.i.i191.5.2 to i32 *)
cast v_conv4_i_i189_6_2@uint32 v_conv5_i_i191_5_2@uint8;
(*   %shr.i.i190.6.2 = ashr i32 %conv4.i.i189.6.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i190_6_2 tmp_to_be_used v_conv4_i_i189_6_2 1;
(*   %conv5.i.i191.6.2 = trunc i32 %shr.i.i190.6.2 to i8 *)
split tmp_v_shr_i_i190_6_2 v_conv5_i_i191_6_2 v_shr_i_i190_6_2 8;
vpc v_conv5_i_i191_6_2@uint8 v_conv5_i_i191_6_2@uint32;
(*   %conv6.i.i192.6.2 = zext i8 %conv7.i.i194.5.2 to i32 *)
cast v_conv6_i_i192_6_2@uint32 v_conv7_i_i194_5_2@uint8;
(*   %shl.i.i193.6.2 = shl i32 %conv6.i.i192.6.2, 1 *)
shls discard_125 v_shl_i_i193_6_2 v_conv6_i_i192_6_2 1;
(*   %conv7.i.i194.6.2 = trunc i32 %shl.i.i193.6.2 to i8 *)
split tmp_v_shl_i_i193_6_2 v_conv7_i_i194_6_2 v_shl_i_i193_6_2 8;
vpc v_conv7_i_i194_6_2@uint8 v_conv7_i_i194_6_2@uint32;
(*   %conv.i.i182.7.2 = zext i8 %conv5.i.i191.6.2 to i32 *)
cast v_conv_i_i182_7_2@uint32 v_conv5_i_i191_6_2@uint8;
(*   %and.i.i183.7.2 = and i32 %conv.i.i182.7.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i183_7_2 v_conv_i_i182_7_2 (0x1)@uint32;
(*   %conv1.i.i184.7.2 = zext i8 %conv7.i.i194.6.2 to i32 *)
cast v_conv1_i_i184_7_2@uint32 v_conv7_i_i194_6_2@uint8;
(*   %mul.i.i185.7.2 = mul nsw i32 %and.i.i183.7.2, %conv1.i.i184.7.2 *)
mul v_mul_i_i185_7_2 v_and_i_i183_7_2 v_conv1_i_i184_7_2;
(*   %conv2.i.i186.7.2 = zext i8 %conv3.i.i188.6.2 to i32 *)
cast v_conv2_i_i186_7_2@uint32 v_conv3_i_i188_6_2@uint8;
(*   %xor.i.i187.7.2 = xor i32 %conv2.i.i186.7.2, %mul.i.i185.7.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i187_7_2 v_conv2_i_i186_7_2 v_mul_i_i185_7_2;
(*   %conv3.i.i188.7.2 = trunc i32 %xor.i.i187.7.2 to i8 *)
split tmp_v_xor_i_i187_7_2 v_conv3_i_i188_7_2 v_xor_i_i187_7_2 8;
vpc v_conv3_i_i188_7_2@uint8 v_conv3_i_i188_7_2@uint32;
(*   %arrayidx6.i198.2 = getelementptr inbounds i8, i8* %arraydecay6, i64 2 *)
(*   store i8 %conv3.i.i188.7.2, i8* %arrayidx6.i198.2, align 1 *)
mov ab2_2 v_conv3_i_i188_7_2;
(*   %arrayidx.i174.3 = getelementptr inbounds i8, i8* %a, i64 3 *)
(*   %36 = load i8, i8* %arrayidx.i174.3, align 1 *)
mov v36 a_3;
(*   %37 = load i8, i8* %b, align 1 *)
mov v37 b_0;
(*   %conv.i.i182.3222 = zext i8 %37 to i32 *)
cast v_conv_i_i182_3222@uint32 v37@uint8;
(*   %and.i.i183.3223 = and i32 %conv.i.i182.3222, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i183_3223 v_conv_i_i182_3222 (0x1)@uint32;
(*   %conv1.i.i184.3224 = zext i8 %36 to i32 *)
cast v_conv1_i_i184_3224@uint32 v36@uint8;
(*   %mul.i.i185.3225 = mul nsw i32 %and.i.i183.3223, %conv1.i.i184.3224 *)
mul v_mul_i_i185_3225 v_and_i_i183_3223 v_conv1_i_i184_3224;
(*   %conv3.i.i188.3226 = trunc i32 %mul.i.i185.3225 to i8 *)
split tmp_v_mul_i_i185_3225 v_conv3_i_i188_3226 v_mul_i_i185_3225 8;
vpc v_conv3_i_i188_3226@uint8 v_conv3_i_i188_3226@uint32;
(*   %conv4.i.i189.3227 = zext i8 %37 to i32 *)
cast v_conv4_i_i189_3227@uint32 v37@uint8;
(*   %shr.i.i190.3228 = ashr i32 %conv4.i.i189.3227, 1 *)
(* You may need to modify here *)
split v_shr_i_i190_3228 tmp_to_be_used v_conv4_i_i189_3227 1;
(*   %conv5.i.i191.3229 = trunc i32 %shr.i.i190.3228 to i8 *)
split tmp_v_shr_i_i190_3228 v_conv5_i_i191_3229 v_shr_i_i190_3228 8;
vpc v_conv5_i_i191_3229@uint8 v_conv5_i_i191_3229@uint32;
(*   %conv6.i.i192.3230 = zext i8 %36 to i32 *)
cast v_conv6_i_i192_3230@uint32 v36@uint8;
(*   %shl.i.i193.3231 = shl i32 %conv6.i.i192.3230, 1 *)
shls discard_126 v_shl_i_i193_3231 v_conv6_i_i192_3230 1;
(*   %conv7.i.i194.3232 = trunc i32 %shl.i.i193.3231 to i8 *)
split tmp_v_shl_i_i193_3231 v_conv7_i_i194_3232 v_shl_i_i193_3231 8;
vpc v_conv7_i_i194_3232@uint8 v_conv7_i_i194_3232@uint32;
(*   %conv.i.i182.1.3 = zext i8 %conv5.i.i191.3229 to i32 *)
cast v_conv_i_i182_1_3@uint32 v_conv5_i_i191_3229@uint8;
(*   %and.i.i183.1.3 = and i32 %conv.i.i182.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i183_1_3 v_conv_i_i182_1_3 (0x1)@uint32;
(*   %conv1.i.i184.1.3 = zext i8 %conv7.i.i194.3232 to i32 *)
cast v_conv1_i_i184_1_3@uint32 v_conv7_i_i194_3232@uint8;
(*   %mul.i.i185.1.3 = mul nsw i32 %and.i.i183.1.3, %conv1.i.i184.1.3 *)
mul v_mul_i_i185_1_3 v_and_i_i183_1_3 v_conv1_i_i184_1_3;
(*   %conv2.i.i186.1.3 = zext i8 %conv3.i.i188.3226 to i32 *)
cast v_conv2_i_i186_1_3@uint32 v_conv3_i_i188_3226@uint8;
(*   %xor.i.i187.1.3 = xor i32 %conv2.i.i186.1.3, %mul.i.i185.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i187_1_3 v_conv2_i_i186_1_3 v_mul_i_i185_1_3;
(*   %conv3.i.i188.1.3 = trunc i32 %xor.i.i187.1.3 to i8 *)
split tmp_v_xor_i_i187_1_3 v_conv3_i_i188_1_3 v_xor_i_i187_1_3 8;
vpc v_conv3_i_i188_1_3@uint8 v_conv3_i_i188_1_3@uint32;
(*   %conv4.i.i189.1.3 = zext i8 %conv5.i.i191.3229 to i32 *)
cast v_conv4_i_i189_1_3@uint32 v_conv5_i_i191_3229@uint8;
(*   %shr.i.i190.1.3 = ashr i32 %conv4.i.i189.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i190_1_3 tmp_to_be_used v_conv4_i_i189_1_3 1;
(*   %conv5.i.i191.1.3 = trunc i32 %shr.i.i190.1.3 to i8 *)
split tmp_v_shr_i_i190_1_3 v_conv5_i_i191_1_3 v_shr_i_i190_1_3 8;
vpc v_conv5_i_i191_1_3@uint8 v_conv5_i_i191_1_3@uint32;
(*   %conv6.i.i192.1.3 = zext i8 %conv7.i.i194.3232 to i32 *)
cast v_conv6_i_i192_1_3@uint32 v_conv7_i_i194_3232@uint8;
(*   %shl.i.i193.1.3 = shl i32 %conv6.i.i192.1.3, 1 *)
shls discard_127 v_shl_i_i193_1_3 v_conv6_i_i192_1_3 1;
(*   %conv7.i.i194.1.3 = trunc i32 %shl.i.i193.1.3 to i8 *)
split tmp_v_shl_i_i193_1_3 v_conv7_i_i194_1_3 v_shl_i_i193_1_3 8;
vpc v_conv7_i_i194_1_3@uint8 v_conv7_i_i194_1_3@uint32;
(*   %conv.i.i182.2.3 = zext i8 %conv5.i.i191.1.3 to i32 *)
cast v_conv_i_i182_2_3@uint32 v_conv5_i_i191_1_3@uint8;
(*   %and.i.i183.2.3 = and i32 %conv.i.i182.2.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i183_2_3 v_conv_i_i182_2_3 (0x1)@uint32;
(*   %conv1.i.i184.2.3 = zext i8 %conv7.i.i194.1.3 to i32 *)
cast v_conv1_i_i184_2_3@uint32 v_conv7_i_i194_1_3@uint8;
(*   %mul.i.i185.2.3 = mul nsw i32 %and.i.i183.2.3, %conv1.i.i184.2.3 *)
mul v_mul_i_i185_2_3 v_and_i_i183_2_3 v_conv1_i_i184_2_3;
(*   %conv2.i.i186.2.3 = zext i8 %conv3.i.i188.1.3 to i32 *)
cast v_conv2_i_i186_2_3@uint32 v_conv3_i_i188_1_3@uint8;
(*   %xor.i.i187.2.3 = xor i32 %conv2.i.i186.2.3, %mul.i.i185.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i187_2_3 v_conv2_i_i186_2_3 v_mul_i_i185_2_3;
(*   %conv3.i.i188.2.3 = trunc i32 %xor.i.i187.2.3 to i8 *)
split tmp_v_xor_i_i187_2_3 v_conv3_i_i188_2_3 v_xor_i_i187_2_3 8;
vpc v_conv3_i_i188_2_3@uint8 v_conv3_i_i188_2_3@uint32;
(*   %conv4.i.i189.2.3 = zext i8 %conv5.i.i191.1.3 to i32 *)
cast v_conv4_i_i189_2_3@uint32 v_conv5_i_i191_1_3@uint8;
(*   %shr.i.i190.2.3 = ashr i32 %conv4.i.i189.2.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i190_2_3 tmp_to_be_used v_conv4_i_i189_2_3 1;
(*   %conv5.i.i191.2.3 = trunc i32 %shr.i.i190.2.3 to i8 *)
split tmp_v_shr_i_i190_2_3 v_conv5_i_i191_2_3 v_shr_i_i190_2_3 8;
vpc v_conv5_i_i191_2_3@uint8 v_conv5_i_i191_2_3@uint32;
(*   %conv6.i.i192.2.3 = zext i8 %conv7.i.i194.1.3 to i32 *)
cast v_conv6_i_i192_2_3@uint32 v_conv7_i_i194_1_3@uint8;
(*   %shl.i.i193.2.3 = shl i32 %conv6.i.i192.2.3, 1 *)
shls discard_128 v_shl_i_i193_2_3 v_conv6_i_i192_2_3 1;
(*   %conv7.i.i194.2.3 = trunc i32 %shl.i.i193.2.3 to i8 *)
split tmp_v_shl_i_i193_2_3 v_conv7_i_i194_2_3 v_shl_i_i193_2_3 8;
vpc v_conv7_i_i194_2_3@uint8 v_conv7_i_i194_2_3@uint32;
(*   %conv.i.i182.3.3 = zext i8 %conv5.i.i191.2.3 to i32 *)
cast v_conv_i_i182_3_3@uint32 v_conv5_i_i191_2_3@uint8;
(*   %and.i.i183.3.3 = and i32 %conv.i.i182.3.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i183_3_3 v_conv_i_i182_3_3 (0x1)@uint32;
(*   %conv1.i.i184.3.3 = zext i8 %conv7.i.i194.2.3 to i32 *)
cast v_conv1_i_i184_3_3@uint32 v_conv7_i_i194_2_3@uint8;
(*   %mul.i.i185.3.3 = mul nsw i32 %and.i.i183.3.3, %conv1.i.i184.3.3 *)
mul v_mul_i_i185_3_3 v_and_i_i183_3_3 v_conv1_i_i184_3_3;
(*   %conv2.i.i186.3.3 = zext i8 %conv3.i.i188.2.3 to i32 *)
cast v_conv2_i_i186_3_3@uint32 v_conv3_i_i188_2_3@uint8;
(*   %xor.i.i187.3.3 = xor i32 %conv2.i.i186.3.3, %mul.i.i185.3.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i187_3_3 v_conv2_i_i186_3_3 v_mul_i_i185_3_3;
(*   %conv3.i.i188.3.3 = trunc i32 %xor.i.i187.3.3 to i8 *)
split tmp_v_xor_i_i187_3_3 v_conv3_i_i188_3_3 v_xor_i_i187_3_3 8;
vpc v_conv3_i_i188_3_3@uint8 v_conv3_i_i188_3_3@uint32;
(*   %conv4.i.i189.3.3 = zext i8 %conv5.i.i191.2.3 to i32 *)
cast v_conv4_i_i189_3_3@uint32 v_conv5_i_i191_2_3@uint8;
(*   %shr.i.i190.3.3 = ashr i32 %conv4.i.i189.3.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i190_3_3 tmp_to_be_used v_conv4_i_i189_3_3 1;
(*   %conv5.i.i191.3.3 = trunc i32 %shr.i.i190.3.3 to i8 *)
split tmp_v_shr_i_i190_3_3 v_conv5_i_i191_3_3 v_shr_i_i190_3_3 8;
vpc v_conv5_i_i191_3_3@uint8 v_conv5_i_i191_3_3@uint32;
(*   %conv6.i.i192.3.3 = zext i8 %conv7.i.i194.2.3 to i32 *)
cast v_conv6_i_i192_3_3@uint32 v_conv7_i_i194_2_3@uint8;
(*   %shl.i.i193.3.3 = shl i32 %conv6.i.i192.3.3, 1 *)
shls discard_129 v_shl_i_i193_3_3 v_conv6_i_i192_3_3 1;
(*   %conv7.i.i194.3.3 = trunc i32 %shl.i.i193.3.3 to i8 *)
split tmp_v_shl_i_i193_3_3 v_conv7_i_i194_3_3 v_shl_i_i193_3_3 8;
vpc v_conv7_i_i194_3_3@uint8 v_conv7_i_i194_3_3@uint32;
(*   %conv.i.i182.4.3 = zext i8 %conv5.i.i191.3.3 to i32 *)
cast v_conv_i_i182_4_3@uint32 v_conv5_i_i191_3_3@uint8;
(*   %and.i.i183.4.3 = and i32 %conv.i.i182.4.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i183_4_3 v_conv_i_i182_4_3 (0x1)@uint32;
(*   %conv1.i.i184.4.3 = zext i8 %conv7.i.i194.3.3 to i32 *)
cast v_conv1_i_i184_4_3@uint32 v_conv7_i_i194_3_3@uint8;
(*   %mul.i.i185.4.3 = mul nsw i32 %and.i.i183.4.3, %conv1.i.i184.4.3 *)
mul v_mul_i_i185_4_3 v_and_i_i183_4_3 v_conv1_i_i184_4_3;
(*   %conv2.i.i186.4.3 = zext i8 %conv3.i.i188.3.3 to i32 *)
cast v_conv2_i_i186_4_3@uint32 v_conv3_i_i188_3_3@uint8;
(*   %xor.i.i187.4.3 = xor i32 %conv2.i.i186.4.3, %mul.i.i185.4.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i187_4_3 v_conv2_i_i186_4_3 v_mul_i_i185_4_3;
(*   %conv3.i.i188.4.3 = trunc i32 %xor.i.i187.4.3 to i8 *)
split tmp_v_xor_i_i187_4_3 v_conv3_i_i188_4_3 v_xor_i_i187_4_3 8;
vpc v_conv3_i_i188_4_3@uint8 v_conv3_i_i188_4_3@uint32;
(*   %conv4.i.i189.4.3 = zext i8 %conv5.i.i191.3.3 to i32 *)
cast v_conv4_i_i189_4_3@uint32 v_conv5_i_i191_3_3@uint8;
(*   %shr.i.i190.4.3 = ashr i32 %conv4.i.i189.4.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i190_4_3 tmp_to_be_used v_conv4_i_i189_4_3 1;
(*   %conv5.i.i191.4.3 = trunc i32 %shr.i.i190.4.3 to i8 *)
split tmp_v_shr_i_i190_4_3 v_conv5_i_i191_4_3 v_shr_i_i190_4_3 8;
vpc v_conv5_i_i191_4_3@uint8 v_conv5_i_i191_4_3@uint32;
(*   %conv6.i.i192.4.3 = zext i8 %conv7.i.i194.3.3 to i32 *)
cast v_conv6_i_i192_4_3@uint32 v_conv7_i_i194_3_3@uint8;
(*   %shl.i.i193.4.3 = shl i32 %conv6.i.i192.4.3, 1 *)
shls discard_130 v_shl_i_i193_4_3 v_conv6_i_i192_4_3 1;
(*   %conv7.i.i194.4.3 = trunc i32 %shl.i.i193.4.3 to i8 *)
split tmp_v_shl_i_i193_4_3 v_conv7_i_i194_4_3 v_shl_i_i193_4_3 8;
vpc v_conv7_i_i194_4_3@uint8 v_conv7_i_i194_4_3@uint32;
(*   %conv.i.i182.5.3 = zext i8 %conv5.i.i191.4.3 to i32 *)
cast v_conv_i_i182_5_3@uint32 v_conv5_i_i191_4_3@uint8;
(*   %and.i.i183.5.3 = and i32 %conv.i.i182.5.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i183_5_3 v_conv_i_i182_5_3 (0x1)@uint32;
(*   %conv1.i.i184.5.3 = zext i8 %conv7.i.i194.4.3 to i32 *)
cast v_conv1_i_i184_5_3@uint32 v_conv7_i_i194_4_3@uint8;
(*   %mul.i.i185.5.3 = mul nsw i32 %and.i.i183.5.3, %conv1.i.i184.5.3 *)
mul v_mul_i_i185_5_3 v_and_i_i183_5_3 v_conv1_i_i184_5_3;
(*   %conv2.i.i186.5.3 = zext i8 %conv3.i.i188.4.3 to i32 *)
cast v_conv2_i_i186_5_3@uint32 v_conv3_i_i188_4_3@uint8;
(*   %xor.i.i187.5.3 = xor i32 %conv2.i.i186.5.3, %mul.i.i185.5.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i187_5_3 v_conv2_i_i186_5_3 v_mul_i_i185_5_3;
(*   %conv3.i.i188.5.3 = trunc i32 %xor.i.i187.5.3 to i8 *)
split tmp_v_xor_i_i187_5_3 v_conv3_i_i188_5_3 v_xor_i_i187_5_3 8;
vpc v_conv3_i_i188_5_3@uint8 v_conv3_i_i188_5_3@uint32;
(*   %conv4.i.i189.5.3 = zext i8 %conv5.i.i191.4.3 to i32 *)
cast v_conv4_i_i189_5_3@uint32 v_conv5_i_i191_4_3@uint8;
(*   %shr.i.i190.5.3 = ashr i32 %conv4.i.i189.5.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i190_5_3 tmp_to_be_used v_conv4_i_i189_5_3 1;
(*   %conv5.i.i191.5.3 = trunc i32 %shr.i.i190.5.3 to i8 *)
split tmp_v_shr_i_i190_5_3 v_conv5_i_i191_5_3 v_shr_i_i190_5_3 8;
vpc v_conv5_i_i191_5_3@uint8 v_conv5_i_i191_5_3@uint32;
(*   %conv6.i.i192.5.3 = zext i8 %conv7.i.i194.4.3 to i32 *)
cast v_conv6_i_i192_5_3@uint32 v_conv7_i_i194_4_3@uint8;
(*   %shl.i.i193.5.3 = shl i32 %conv6.i.i192.5.3, 1 *)
shls discard_131 v_shl_i_i193_5_3 v_conv6_i_i192_5_3 1;
(*   %conv7.i.i194.5.3 = trunc i32 %shl.i.i193.5.3 to i8 *)
split tmp_v_shl_i_i193_5_3 v_conv7_i_i194_5_3 v_shl_i_i193_5_3 8;
vpc v_conv7_i_i194_5_3@uint8 v_conv7_i_i194_5_3@uint32;
(*   %conv.i.i182.6.3 = zext i8 %conv5.i.i191.5.3 to i32 *)
cast v_conv_i_i182_6_3@uint32 v_conv5_i_i191_5_3@uint8;
(*   %and.i.i183.6.3 = and i32 %conv.i.i182.6.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i183_6_3 v_conv_i_i182_6_3 (0x1)@uint32;
(*   %conv1.i.i184.6.3 = zext i8 %conv7.i.i194.5.3 to i32 *)
cast v_conv1_i_i184_6_3@uint32 v_conv7_i_i194_5_3@uint8;
(*   %mul.i.i185.6.3 = mul nsw i32 %and.i.i183.6.3, %conv1.i.i184.6.3 *)
mul v_mul_i_i185_6_3 v_and_i_i183_6_3 v_conv1_i_i184_6_3;
(*   %conv2.i.i186.6.3 = zext i8 %conv3.i.i188.5.3 to i32 *)
cast v_conv2_i_i186_6_3@uint32 v_conv3_i_i188_5_3@uint8;
(*   %xor.i.i187.6.3 = xor i32 %conv2.i.i186.6.3, %mul.i.i185.6.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i187_6_3 v_conv2_i_i186_6_3 v_mul_i_i185_6_3;
(*   %conv3.i.i188.6.3 = trunc i32 %xor.i.i187.6.3 to i8 *)
split tmp_v_xor_i_i187_6_3 v_conv3_i_i188_6_3 v_xor_i_i187_6_3 8;
vpc v_conv3_i_i188_6_3@uint8 v_conv3_i_i188_6_3@uint32;
(*   %conv4.i.i189.6.3 = zext i8 %conv5.i.i191.5.3 to i32 *)
cast v_conv4_i_i189_6_3@uint32 v_conv5_i_i191_5_3@uint8;
(*   %shr.i.i190.6.3 = ashr i32 %conv4.i.i189.6.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i190_6_3 tmp_to_be_used v_conv4_i_i189_6_3 1;
(*   %conv5.i.i191.6.3 = trunc i32 %shr.i.i190.6.3 to i8 *)
split tmp_v_shr_i_i190_6_3 v_conv5_i_i191_6_3 v_shr_i_i190_6_3 8;
vpc v_conv5_i_i191_6_3@uint8 v_conv5_i_i191_6_3@uint32;
(*   %conv6.i.i192.6.3 = zext i8 %conv7.i.i194.5.3 to i32 *)
cast v_conv6_i_i192_6_3@uint32 v_conv7_i_i194_5_3@uint8;
(*   %shl.i.i193.6.3 = shl i32 %conv6.i.i192.6.3, 1 *)
shls discard_132 v_shl_i_i193_6_3 v_conv6_i_i192_6_3 1;
(*   %conv7.i.i194.6.3 = trunc i32 %shl.i.i193.6.3 to i8 *)
split tmp_v_shl_i_i193_6_3 v_conv7_i_i194_6_3 v_shl_i_i193_6_3 8;
vpc v_conv7_i_i194_6_3@uint8 v_conv7_i_i194_6_3@uint32;
(*   %conv.i.i182.7.3 = zext i8 %conv5.i.i191.6.3 to i32 *)
cast v_conv_i_i182_7_3@uint32 v_conv5_i_i191_6_3@uint8;
(*   %and.i.i183.7.3 = and i32 %conv.i.i182.7.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i183_7_3 v_conv_i_i182_7_3 (0x1)@uint32;
(*   %conv1.i.i184.7.3 = zext i8 %conv7.i.i194.6.3 to i32 *)
cast v_conv1_i_i184_7_3@uint32 v_conv7_i_i194_6_3@uint8;
(*   %mul.i.i185.7.3 = mul nsw i32 %and.i.i183.7.3, %conv1.i.i184.7.3 *)
mul v_mul_i_i185_7_3 v_and_i_i183_7_3 v_conv1_i_i184_7_3;
(*   %conv2.i.i186.7.3 = zext i8 %conv3.i.i188.6.3 to i32 *)
cast v_conv2_i_i186_7_3@uint32 v_conv3_i_i188_6_3@uint8;
(*   %xor.i.i187.7.3 = xor i32 %conv2.i.i186.7.3, %mul.i.i185.7.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i187_7_3 v_conv2_i_i186_7_3 v_mul_i_i185_7_3;
(*   %conv3.i.i188.7.3 = trunc i32 %xor.i.i187.7.3 to i8 *)
split tmp_v_xor_i_i187_7_3 v_conv3_i_i188_7_3 v_xor_i_i187_7_3 8;
vpc v_conv3_i_i188_7_3@uint8 v_conv3_i_i188_7_3@uint32;
(*   %arrayidx6.i198.3 = getelementptr inbounds i8, i8* %arraydecay6, i64 3 *)
(*   store i8 %conv3.i.i188.7.3, i8* %arrayidx6.i198.3, align 1 *)
mov ab2_3 v_conv3_i_i188_7_3;
(*   %arrayidx.i174.4 = getelementptr inbounds i8, i8* %a, i64 4 *)
(*   %38 = load i8, i8* %arrayidx.i174.4, align 1 *)
mov v38 a_4;
(*   %arrayidx4.i178.4 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %39 = load i8, i8* %arrayidx4.i178.4, align 1 *)
mov v39 b_1;
(*   %conv.i.i182.4233 = zext i8 %39 to i32 *)
cast v_conv_i_i182_4233@uint32 v39@uint8;
(*   %and.i.i183.4234 = and i32 %conv.i.i182.4233, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i183_4234 v_conv_i_i182_4233 (0x1)@uint32;
(*   %conv1.i.i184.4235 = zext i8 %38 to i32 *)
cast v_conv1_i_i184_4235@uint32 v38@uint8;
(*   %mul.i.i185.4236 = mul nsw i32 %and.i.i183.4234, %conv1.i.i184.4235 *)
mul v_mul_i_i185_4236 v_and_i_i183_4234 v_conv1_i_i184_4235;
(*   %conv3.i.i188.4237 = trunc i32 %mul.i.i185.4236 to i8 *)
split tmp_v_mul_i_i185_4236 v_conv3_i_i188_4237 v_mul_i_i185_4236 8;
vpc v_conv3_i_i188_4237@uint8 v_conv3_i_i188_4237@uint32;
(*   %conv4.i.i189.4238 = zext i8 %39 to i32 *)
cast v_conv4_i_i189_4238@uint32 v39@uint8;
(*   %shr.i.i190.4239 = ashr i32 %conv4.i.i189.4238, 1 *)
(* You may need to modify here *)
split v_shr_i_i190_4239 tmp_to_be_used v_conv4_i_i189_4238 1;
(*   %conv5.i.i191.4240 = trunc i32 %shr.i.i190.4239 to i8 *)
split tmp_v_shr_i_i190_4239 v_conv5_i_i191_4240 v_shr_i_i190_4239 8;
vpc v_conv5_i_i191_4240@uint8 v_conv5_i_i191_4240@uint32;
(*   %conv6.i.i192.4241 = zext i8 %38 to i32 *)
cast v_conv6_i_i192_4241@uint32 v38@uint8;
(*   %shl.i.i193.4242 = shl i32 %conv6.i.i192.4241, 1 *)
shls discard_133 v_shl_i_i193_4242 v_conv6_i_i192_4241 1;
(*   %conv7.i.i194.4243 = trunc i32 %shl.i.i193.4242 to i8 *)
split tmp_v_shl_i_i193_4242 v_conv7_i_i194_4243 v_shl_i_i193_4242 8;
vpc v_conv7_i_i194_4243@uint8 v_conv7_i_i194_4243@uint32;
(*   %conv.i.i182.1.4 = zext i8 %conv5.i.i191.4240 to i32 *)
cast v_conv_i_i182_1_4@uint32 v_conv5_i_i191_4240@uint8;
(*   %and.i.i183.1.4 = and i32 %conv.i.i182.1.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i183_1_4 v_conv_i_i182_1_4 (0x1)@uint32;
(*   %conv1.i.i184.1.4 = zext i8 %conv7.i.i194.4243 to i32 *)
cast v_conv1_i_i184_1_4@uint32 v_conv7_i_i194_4243@uint8;
(*   %mul.i.i185.1.4 = mul nsw i32 %and.i.i183.1.4, %conv1.i.i184.1.4 *)
mul v_mul_i_i185_1_4 v_and_i_i183_1_4 v_conv1_i_i184_1_4;
(*   %conv2.i.i186.1.4 = zext i8 %conv3.i.i188.4237 to i32 *)
cast v_conv2_i_i186_1_4@uint32 v_conv3_i_i188_4237@uint8;
(*   %xor.i.i187.1.4 = xor i32 %conv2.i.i186.1.4, %mul.i.i185.1.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i187_1_4 v_conv2_i_i186_1_4 v_mul_i_i185_1_4;
(*   %conv3.i.i188.1.4 = trunc i32 %xor.i.i187.1.4 to i8 *)
split tmp_v_xor_i_i187_1_4 v_conv3_i_i188_1_4 v_xor_i_i187_1_4 8;
vpc v_conv3_i_i188_1_4@uint8 v_conv3_i_i188_1_4@uint32;
(*   %conv4.i.i189.1.4 = zext i8 %conv5.i.i191.4240 to i32 *)
cast v_conv4_i_i189_1_4@uint32 v_conv5_i_i191_4240@uint8;
(*   %shr.i.i190.1.4 = ashr i32 %conv4.i.i189.1.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i190_1_4 tmp_to_be_used v_conv4_i_i189_1_4 1;
(*   %conv5.i.i191.1.4 = trunc i32 %shr.i.i190.1.4 to i8 *)
split tmp_v_shr_i_i190_1_4 v_conv5_i_i191_1_4 v_shr_i_i190_1_4 8;
vpc v_conv5_i_i191_1_4@uint8 v_conv5_i_i191_1_4@uint32;
(*   %conv6.i.i192.1.4 = zext i8 %conv7.i.i194.4243 to i32 *)
cast v_conv6_i_i192_1_4@uint32 v_conv7_i_i194_4243@uint8;
(*   %shl.i.i193.1.4 = shl i32 %conv6.i.i192.1.4, 1 *)
shls discard_134 v_shl_i_i193_1_4 v_conv6_i_i192_1_4 1;
(*   %conv7.i.i194.1.4 = trunc i32 %shl.i.i193.1.4 to i8 *)
split tmp_v_shl_i_i193_1_4 v_conv7_i_i194_1_4 v_shl_i_i193_1_4 8;
vpc v_conv7_i_i194_1_4@uint8 v_conv7_i_i194_1_4@uint32;
(*   %conv.i.i182.2.4 = zext i8 %conv5.i.i191.1.4 to i32 *)
cast v_conv_i_i182_2_4@uint32 v_conv5_i_i191_1_4@uint8;
(*   %and.i.i183.2.4 = and i32 %conv.i.i182.2.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i183_2_4 v_conv_i_i182_2_4 (0x1)@uint32;
(*   %conv1.i.i184.2.4 = zext i8 %conv7.i.i194.1.4 to i32 *)
cast v_conv1_i_i184_2_4@uint32 v_conv7_i_i194_1_4@uint8;
(*   %mul.i.i185.2.4 = mul nsw i32 %and.i.i183.2.4, %conv1.i.i184.2.4 *)
mul v_mul_i_i185_2_4 v_and_i_i183_2_4 v_conv1_i_i184_2_4;
(*   %conv2.i.i186.2.4 = zext i8 %conv3.i.i188.1.4 to i32 *)
cast v_conv2_i_i186_2_4@uint32 v_conv3_i_i188_1_4@uint8;
(*   %xor.i.i187.2.4 = xor i32 %conv2.i.i186.2.4, %mul.i.i185.2.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i187_2_4 v_conv2_i_i186_2_4 v_mul_i_i185_2_4;
(*   %conv3.i.i188.2.4 = trunc i32 %xor.i.i187.2.4 to i8 *)
split tmp_v_xor_i_i187_2_4 v_conv3_i_i188_2_4 v_xor_i_i187_2_4 8;
vpc v_conv3_i_i188_2_4@uint8 v_conv3_i_i188_2_4@uint32;
(*   %conv4.i.i189.2.4 = zext i8 %conv5.i.i191.1.4 to i32 *)
cast v_conv4_i_i189_2_4@uint32 v_conv5_i_i191_1_4@uint8;
(*   %shr.i.i190.2.4 = ashr i32 %conv4.i.i189.2.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i190_2_4 tmp_to_be_used v_conv4_i_i189_2_4 1;
(*   %conv5.i.i191.2.4 = trunc i32 %shr.i.i190.2.4 to i8 *)
split tmp_v_shr_i_i190_2_4 v_conv5_i_i191_2_4 v_shr_i_i190_2_4 8;
vpc v_conv5_i_i191_2_4@uint8 v_conv5_i_i191_2_4@uint32;
(*   %conv6.i.i192.2.4 = zext i8 %conv7.i.i194.1.4 to i32 *)
cast v_conv6_i_i192_2_4@uint32 v_conv7_i_i194_1_4@uint8;
(*   %shl.i.i193.2.4 = shl i32 %conv6.i.i192.2.4, 1 *)
shls discard_135 v_shl_i_i193_2_4 v_conv6_i_i192_2_4 1;
(*   %conv7.i.i194.2.4 = trunc i32 %shl.i.i193.2.4 to i8 *)
split tmp_v_shl_i_i193_2_4 v_conv7_i_i194_2_4 v_shl_i_i193_2_4 8;
vpc v_conv7_i_i194_2_4@uint8 v_conv7_i_i194_2_4@uint32;
(*   %conv.i.i182.3.4 = zext i8 %conv5.i.i191.2.4 to i32 *)
cast v_conv_i_i182_3_4@uint32 v_conv5_i_i191_2_4@uint8;
(*   %and.i.i183.3.4 = and i32 %conv.i.i182.3.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i183_3_4 v_conv_i_i182_3_4 (0x1)@uint32;
(*   %conv1.i.i184.3.4 = zext i8 %conv7.i.i194.2.4 to i32 *)
cast v_conv1_i_i184_3_4@uint32 v_conv7_i_i194_2_4@uint8;
(*   %mul.i.i185.3.4 = mul nsw i32 %and.i.i183.3.4, %conv1.i.i184.3.4 *)
mul v_mul_i_i185_3_4 v_and_i_i183_3_4 v_conv1_i_i184_3_4;
(*   %conv2.i.i186.3.4 = zext i8 %conv3.i.i188.2.4 to i32 *)
cast v_conv2_i_i186_3_4@uint32 v_conv3_i_i188_2_4@uint8;
(*   %xor.i.i187.3.4 = xor i32 %conv2.i.i186.3.4, %mul.i.i185.3.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i187_3_4 v_conv2_i_i186_3_4 v_mul_i_i185_3_4;
(*   %conv3.i.i188.3.4 = trunc i32 %xor.i.i187.3.4 to i8 *)
split tmp_v_xor_i_i187_3_4 v_conv3_i_i188_3_4 v_xor_i_i187_3_4 8;
vpc v_conv3_i_i188_3_4@uint8 v_conv3_i_i188_3_4@uint32;
(*   %conv4.i.i189.3.4 = zext i8 %conv5.i.i191.2.4 to i32 *)
cast v_conv4_i_i189_3_4@uint32 v_conv5_i_i191_2_4@uint8;
(*   %shr.i.i190.3.4 = ashr i32 %conv4.i.i189.3.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i190_3_4 tmp_to_be_used v_conv4_i_i189_3_4 1;
(*   %conv5.i.i191.3.4 = trunc i32 %shr.i.i190.3.4 to i8 *)
split tmp_v_shr_i_i190_3_4 v_conv5_i_i191_3_4 v_shr_i_i190_3_4 8;
vpc v_conv5_i_i191_3_4@uint8 v_conv5_i_i191_3_4@uint32;
(*   %conv6.i.i192.3.4 = zext i8 %conv7.i.i194.2.4 to i32 *)
cast v_conv6_i_i192_3_4@uint32 v_conv7_i_i194_2_4@uint8;
(*   %shl.i.i193.3.4 = shl i32 %conv6.i.i192.3.4, 1 *)
shls discard_136 v_shl_i_i193_3_4 v_conv6_i_i192_3_4 1;
(*   %conv7.i.i194.3.4 = trunc i32 %shl.i.i193.3.4 to i8 *)
split tmp_v_shl_i_i193_3_4 v_conv7_i_i194_3_4 v_shl_i_i193_3_4 8;
vpc v_conv7_i_i194_3_4@uint8 v_conv7_i_i194_3_4@uint32;
(*   %conv.i.i182.4.4 = zext i8 %conv5.i.i191.3.4 to i32 *)
cast v_conv_i_i182_4_4@uint32 v_conv5_i_i191_3_4@uint8;
(*   %and.i.i183.4.4 = and i32 %conv.i.i182.4.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i183_4_4 v_conv_i_i182_4_4 (0x1)@uint32;
(*   %conv1.i.i184.4.4 = zext i8 %conv7.i.i194.3.4 to i32 *)
cast v_conv1_i_i184_4_4@uint32 v_conv7_i_i194_3_4@uint8;
(*   %mul.i.i185.4.4 = mul nsw i32 %and.i.i183.4.4, %conv1.i.i184.4.4 *)
mul v_mul_i_i185_4_4 v_and_i_i183_4_4 v_conv1_i_i184_4_4;
(*   %conv2.i.i186.4.4 = zext i8 %conv3.i.i188.3.4 to i32 *)
cast v_conv2_i_i186_4_4@uint32 v_conv3_i_i188_3_4@uint8;
(*   %xor.i.i187.4.4 = xor i32 %conv2.i.i186.4.4, %mul.i.i185.4.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i187_4_4 v_conv2_i_i186_4_4 v_mul_i_i185_4_4;
(*   %conv3.i.i188.4.4 = trunc i32 %xor.i.i187.4.4 to i8 *)
split tmp_v_xor_i_i187_4_4 v_conv3_i_i188_4_4 v_xor_i_i187_4_4 8;
vpc v_conv3_i_i188_4_4@uint8 v_conv3_i_i188_4_4@uint32;
(*   %conv4.i.i189.4.4 = zext i8 %conv5.i.i191.3.4 to i32 *)
cast v_conv4_i_i189_4_4@uint32 v_conv5_i_i191_3_4@uint8;
(*   %shr.i.i190.4.4 = ashr i32 %conv4.i.i189.4.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i190_4_4 tmp_to_be_used v_conv4_i_i189_4_4 1;
(*   %conv5.i.i191.4.4 = trunc i32 %shr.i.i190.4.4 to i8 *)
split tmp_v_shr_i_i190_4_4 v_conv5_i_i191_4_4 v_shr_i_i190_4_4 8;
vpc v_conv5_i_i191_4_4@uint8 v_conv5_i_i191_4_4@uint32;
(*   %conv6.i.i192.4.4 = zext i8 %conv7.i.i194.3.4 to i32 *)
cast v_conv6_i_i192_4_4@uint32 v_conv7_i_i194_3_4@uint8;
(*   %shl.i.i193.4.4 = shl i32 %conv6.i.i192.4.4, 1 *)
shls discard_137 v_shl_i_i193_4_4 v_conv6_i_i192_4_4 1;
(*   %conv7.i.i194.4.4 = trunc i32 %shl.i.i193.4.4 to i8 *)
split tmp_v_shl_i_i193_4_4 v_conv7_i_i194_4_4 v_shl_i_i193_4_4 8;
vpc v_conv7_i_i194_4_4@uint8 v_conv7_i_i194_4_4@uint32;
(*   %conv.i.i182.5.4 = zext i8 %conv5.i.i191.4.4 to i32 *)
cast v_conv_i_i182_5_4@uint32 v_conv5_i_i191_4_4@uint8;
(*   %and.i.i183.5.4 = and i32 %conv.i.i182.5.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i183_5_4 v_conv_i_i182_5_4 (0x1)@uint32;
(*   %conv1.i.i184.5.4 = zext i8 %conv7.i.i194.4.4 to i32 *)
cast v_conv1_i_i184_5_4@uint32 v_conv7_i_i194_4_4@uint8;
(*   %mul.i.i185.5.4 = mul nsw i32 %and.i.i183.5.4, %conv1.i.i184.5.4 *)
mul v_mul_i_i185_5_4 v_and_i_i183_5_4 v_conv1_i_i184_5_4;
(*   %conv2.i.i186.5.4 = zext i8 %conv3.i.i188.4.4 to i32 *)
cast v_conv2_i_i186_5_4@uint32 v_conv3_i_i188_4_4@uint8;
(*   %xor.i.i187.5.4 = xor i32 %conv2.i.i186.5.4, %mul.i.i185.5.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i187_5_4 v_conv2_i_i186_5_4 v_mul_i_i185_5_4;
(*   %conv3.i.i188.5.4 = trunc i32 %xor.i.i187.5.4 to i8 *)
split tmp_v_xor_i_i187_5_4 v_conv3_i_i188_5_4 v_xor_i_i187_5_4 8;
vpc v_conv3_i_i188_5_4@uint8 v_conv3_i_i188_5_4@uint32;
(*   %conv4.i.i189.5.4 = zext i8 %conv5.i.i191.4.4 to i32 *)
cast v_conv4_i_i189_5_4@uint32 v_conv5_i_i191_4_4@uint8;
(*   %shr.i.i190.5.4 = ashr i32 %conv4.i.i189.5.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i190_5_4 tmp_to_be_used v_conv4_i_i189_5_4 1;
(*   %conv5.i.i191.5.4 = trunc i32 %shr.i.i190.5.4 to i8 *)
split tmp_v_shr_i_i190_5_4 v_conv5_i_i191_5_4 v_shr_i_i190_5_4 8;
vpc v_conv5_i_i191_5_4@uint8 v_conv5_i_i191_5_4@uint32;
(*   %conv6.i.i192.5.4 = zext i8 %conv7.i.i194.4.4 to i32 *)
cast v_conv6_i_i192_5_4@uint32 v_conv7_i_i194_4_4@uint8;
(*   %shl.i.i193.5.4 = shl i32 %conv6.i.i192.5.4, 1 *)
shls discard_138 v_shl_i_i193_5_4 v_conv6_i_i192_5_4 1;
(*   %conv7.i.i194.5.4 = trunc i32 %shl.i.i193.5.4 to i8 *)
split tmp_v_shl_i_i193_5_4 v_conv7_i_i194_5_4 v_shl_i_i193_5_4 8;
vpc v_conv7_i_i194_5_4@uint8 v_conv7_i_i194_5_4@uint32;
(*   %conv.i.i182.6.4 = zext i8 %conv5.i.i191.5.4 to i32 *)
cast v_conv_i_i182_6_4@uint32 v_conv5_i_i191_5_4@uint8;
(*   %and.i.i183.6.4 = and i32 %conv.i.i182.6.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i183_6_4 v_conv_i_i182_6_4 (0x1)@uint32;
(*   %conv1.i.i184.6.4 = zext i8 %conv7.i.i194.5.4 to i32 *)
cast v_conv1_i_i184_6_4@uint32 v_conv7_i_i194_5_4@uint8;
(*   %mul.i.i185.6.4 = mul nsw i32 %and.i.i183.6.4, %conv1.i.i184.6.4 *)
mul v_mul_i_i185_6_4 v_and_i_i183_6_4 v_conv1_i_i184_6_4;
(*   %conv2.i.i186.6.4 = zext i8 %conv3.i.i188.5.4 to i32 *)
cast v_conv2_i_i186_6_4@uint32 v_conv3_i_i188_5_4@uint8;
(*   %xor.i.i187.6.4 = xor i32 %conv2.i.i186.6.4, %mul.i.i185.6.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i187_6_4 v_conv2_i_i186_6_4 v_mul_i_i185_6_4;
(*   %conv3.i.i188.6.4 = trunc i32 %xor.i.i187.6.4 to i8 *)
split tmp_v_xor_i_i187_6_4 v_conv3_i_i188_6_4 v_xor_i_i187_6_4 8;
vpc v_conv3_i_i188_6_4@uint8 v_conv3_i_i188_6_4@uint32;
(*   %conv4.i.i189.6.4 = zext i8 %conv5.i.i191.5.4 to i32 *)
cast v_conv4_i_i189_6_4@uint32 v_conv5_i_i191_5_4@uint8;
(*   %shr.i.i190.6.4 = ashr i32 %conv4.i.i189.6.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i190_6_4 tmp_to_be_used v_conv4_i_i189_6_4 1;
(*   %conv5.i.i191.6.4 = trunc i32 %shr.i.i190.6.4 to i8 *)
split tmp_v_shr_i_i190_6_4 v_conv5_i_i191_6_4 v_shr_i_i190_6_4 8;
vpc v_conv5_i_i191_6_4@uint8 v_conv5_i_i191_6_4@uint32;
(*   %conv6.i.i192.6.4 = zext i8 %conv7.i.i194.5.4 to i32 *)
cast v_conv6_i_i192_6_4@uint32 v_conv7_i_i194_5_4@uint8;
(*   %shl.i.i193.6.4 = shl i32 %conv6.i.i192.6.4, 1 *)
shls discard_139 v_shl_i_i193_6_4 v_conv6_i_i192_6_4 1;
(*   %conv7.i.i194.6.4 = trunc i32 %shl.i.i193.6.4 to i8 *)
split tmp_v_shl_i_i193_6_4 v_conv7_i_i194_6_4 v_shl_i_i193_6_4 8;
vpc v_conv7_i_i194_6_4@uint8 v_conv7_i_i194_6_4@uint32;
(*   %conv.i.i182.7.4 = zext i8 %conv5.i.i191.6.4 to i32 *)
cast v_conv_i_i182_7_4@uint32 v_conv5_i_i191_6_4@uint8;
(*   %and.i.i183.7.4 = and i32 %conv.i.i182.7.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i183_7_4 v_conv_i_i182_7_4 (0x1)@uint32;
(*   %conv1.i.i184.7.4 = zext i8 %conv7.i.i194.6.4 to i32 *)
cast v_conv1_i_i184_7_4@uint32 v_conv7_i_i194_6_4@uint8;
(*   %mul.i.i185.7.4 = mul nsw i32 %and.i.i183.7.4, %conv1.i.i184.7.4 *)
mul v_mul_i_i185_7_4 v_and_i_i183_7_4 v_conv1_i_i184_7_4;
(*   %conv2.i.i186.7.4 = zext i8 %conv3.i.i188.6.4 to i32 *)
cast v_conv2_i_i186_7_4@uint32 v_conv3_i_i188_6_4@uint8;
(*   %xor.i.i187.7.4 = xor i32 %conv2.i.i186.7.4, %mul.i.i185.7.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i187_7_4 v_conv2_i_i186_7_4 v_mul_i_i185_7_4;
(*   %conv3.i.i188.7.4 = trunc i32 %xor.i.i187.7.4 to i8 *)
split tmp_v_xor_i_i187_7_4 v_conv3_i_i188_7_4 v_xor_i_i187_7_4 8;
vpc v_conv3_i_i188_7_4@uint8 v_conv3_i_i188_7_4@uint32;
(*   %arrayidx6.i198.4 = getelementptr inbounds i8, i8* %arraydecay6, i64 4 *)
(*   store i8 %conv3.i.i188.7.4, i8* %arrayidx6.i198.4, align 1 *)
mov ab2_4 v_conv3_i_i188_7_4;
(*   %arrayidx.i364 = getelementptr inbounds i8, i8* %a, i64 2 *)
(*   %40 = load i8, i8* %arrayidx.i364, align 1 *)
mov v40 a_2;
(*   %41 = load i8, i8* %b, align 1 *)
mov v41 b_0;
(*   %conv.i.i372 = zext i8 %41 to i32 *)
cast v_conv_i_i372@uint32 v41@uint8;
(*   %and.i.i373 = and i32 %conv.i.i372, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i373 v_conv_i_i372 (0x1)@uint32;
(*   %conv1.i.i374 = zext i8 %40 to i32 *)
cast v_conv1_i_i374@uint32 v40@uint8;
(*   %mul.i.i375 = mul nsw i32 %and.i.i373, %conv1.i.i374 *)
mul v_mul_i_i375 v_and_i_i373 v_conv1_i_i374;
(*   %conv3.i.i378 = trunc i32 %mul.i.i375 to i8 *)
split tmp_v_mul_i_i375 v_conv3_i_i378 v_mul_i_i375 8;
vpc v_conv3_i_i378@uint8 v_conv3_i_i378@uint32;
(*   %conv4.i.i379 = zext i8 %41 to i32 *)
cast v_conv4_i_i379@uint32 v41@uint8;
(*   %shr.i.i380 = ashr i32 %conv4.i.i379, 1 *)
(* You may need to modify here *)
split v_shr_i_i380 tmp_to_be_used v_conv4_i_i379 1;
(*   %conv5.i.i381 = trunc i32 %shr.i.i380 to i8 *)
split tmp_v_shr_i_i380 v_conv5_i_i381 v_shr_i_i380 8;
vpc v_conv5_i_i381@uint8 v_conv5_i_i381@uint32;
(*   %conv6.i.i382 = zext i8 %40 to i32 *)
cast v_conv6_i_i382@uint32 v40@uint8;
(*   %shl.i.i383 = shl i32 %conv6.i.i382, 1 *)
shls discard_140 v_shl_i_i383 v_conv6_i_i382 1;
(*   %conv7.i.i384 = trunc i32 %shl.i.i383 to i8 *)
split tmp_v_shl_i_i383 v_conv7_i_i384 v_shl_i_i383 8;
vpc v_conv7_i_i384@uint8 v_conv7_i_i384@uint32;
(*   %conv.i.i372.1 = zext i8 %conv5.i.i381 to i32 *)
cast v_conv_i_i372_1@uint32 v_conv5_i_i381@uint8;
(*   %and.i.i373.1 = and i32 %conv.i.i372.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i373_1 v_conv_i_i372_1 (0x1)@uint32;
(*   %conv1.i.i374.1 = zext i8 %conv7.i.i384 to i32 *)
cast v_conv1_i_i374_1@uint32 v_conv7_i_i384@uint8;
(*   %mul.i.i375.1 = mul nsw i32 %and.i.i373.1, %conv1.i.i374.1 *)
mul v_mul_i_i375_1 v_and_i_i373_1 v_conv1_i_i374_1;
(*   %conv2.i.i376.1 = zext i8 %conv3.i.i378 to i32 *)
cast v_conv2_i_i376_1@uint32 v_conv3_i_i378@uint8;
(*   %xor.i.i377.1 = xor i32 %conv2.i.i376.1, %mul.i.i375.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i377_1 v_conv2_i_i376_1 v_mul_i_i375_1;
(*   %conv3.i.i378.1 = trunc i32 %xor.i.i377.1 to i8 *)
split tmp_v_xor_i_i377_1 v_conv3_i_i378_1 v_xor_i_i377_1 8;
vpc v_conv3_i_i378_1@uint8 v_conv3_i_i378_1@uint32;
(*   %conv4.i.i379.1 = zext i8 %conv5.i.i381 to i32 *)
cast v_conv4_i_i379_1@uint32 v_conv5_i_i381@uint8;
(*   %shr.i.i380.1 = ashr i32 %conv4.i.i379.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i380_1 tmp_to_be_used v_conv4_i_i379_1 1;
(*   %conv5.i.i381.1 = trunc i32 %shr.i.i380.1 to i8 *)
split tmp_v_shr_i_i380_1 v_conv5_i_i381_1 v_shr_i_i380_1 8;
vpc v_conv5_i_i381_1@uint8 v_conv5_i_i381_1@uint32;
(*   %conv6.i.i382.1 = zext i8 %conv7.i.i384 to i32 *)
cast v_conv6_i_i382_1@uint32 v_conv7_i_i384@uint8;
(*   %shl.i.i383.1 = shl i32 %conv6.i.i382.1, 1 *)
shls discard_141 v_shl_i_i383_1 v_conv6_i_i382_1 1;
(*   %conv7.i.i384.1 = trunc i32 %shl.i.i383.1 to i8 *)
split tmp_v_shl_i_i383_1 v_conv7_i_i384_1 v_shl_i_i383_1 8;
vpc v_conv7_i_i384_1@uint8 v_conv7_i_i384_1@uint32;
(*   %conv.i.i372.2 = zext i8 %conv5.i.i381.1 to i32 *)
cast v_conv_i_i372_2@uint32 v_conv5_i_i381_1@uint8;
(*   %and.i.i373.2 = and i32 %conv.i.i372.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i373_2 v_conv_i_i372_2 (0x1)@uint32;
(*   %conv1.i.i374.2 = zext i8 %conv7.i.i384.1 to i32 *)
cast v_conv1_i_i374_2@uint32 v_conv7_i_i384_1@uint8;
(*   %mul.i.i375.2 = mul nsw i32 %and.i.i373.2, %conv1.i.i374.2 *)
mul v_mul_i_i375_2 v_and_i_i373_2 v_conv1_i_i374_2;
(*   %conv2.i.i376.2 = zext i8 %conv3.i.i378.1 to i32 *)
cast v_conv2_i_i376_2@uint32 v_conv3_i_i378_1@uint8;
(*   %xor.i.i377.2 = xor i32 %conv2.i.i376.2, %mul.i.i375.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i377_2 v_conv2_i_i376_2 v_mul_i_i375_2;
(*   %conv3.i.i378.2 = trunc i32 %xor.i.i377.2 to i8 *)
split tmp_v_xor_i_i377_2 v_conv3_i_i378_2 v_xor_i_i377_2 8;
vpc v_conv3_i_i378_2@uint8 v_conv3_i_i378_2@uint32;
(*   %conv4.i.i379.2 = zext i8 %conv5.i.i381.1 to i32 *)
cast v_conv4_i_i379_2@uint32 v_conv5_i_i381_1@uint8;
(*   %shr.i.i380.2 = ashr i32 %conv4.i.i379.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i380_2 tmp_to_be_used v_conv4_i_i379_2 1;
(*   %conv5.i.i381.2 = trunc i32 %shr.i.i380.2 to i8 *)
split tmp_v_shr_i_i380_2 v_conv5_i_i381_2 v_shr_i_i380_2 8;
vpc v_conv5_i_i381_2@uint8 v_conv5_i_i381_2@uint32;
(*   %conv6.i.i382.2 = zext i8 %conv7.i.i384.1 to i32 *)
cast v_conv6_i_i382_2@uint32 v_conv7_i_i384_1@uint8;
(*   %shl.i.i383.2 = shl i32 %conv6.i.i382.2, 1 *)
shls discard_142 v_shl_i_i383_2 v_conv6_i_i382_2 1;
(*   %conv7.i.i384.2 = trunc i32 %shl.i.i383.2 to i8 *)
split tmp_v_shl_i_i383_2 v_conv7_i_i384_2 v_shl_i_i383_2 8;
vpc v_conv7_i_i384_2@uint8 v_conv7_i_i384_2@uint32;
(*   %conv.i.i372.3 = zext i8 %conv5.i.i381.2 to i32 *)
cast v_conv_i_i372_3@uint32 v_conv5_i_i381_2@uint8;
(*   %and.i.i373.3 = and i32 %conv.i.i372.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i373_3 v_conv_i_i372_3 (0x1)@uint32;
(*   %conv1.i.i374.3 = zext i8 %conv7.i.i384.2 to i32 *)
cast v_conv1_i_i374_3@uint32 v_conv7_i_i384_2@uint8;
(*   %mul.i.i375.3 = mul nsw i32 %and.i.i373.3, %conv1.i.i374.3 *)
mul v_mul_i_i375_3 v_and_i_i373_3 v_conv1_i_i374_3;
(*   %conv2.i.i376.3 = zext i8 %conv3.i.i378.2 to i32 *)
cast v_conv2_i_i376_3@uint32 v_conv3_i_i378_2@uint8;
(*   %xor.i.i377.3 = xor i32 %conv2.i.i376.3, %mul.i.i375.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i377_3 v_conv2_i_i376_3 v_mul_i_i375_3;
(*   %conv3.i.i378.3 = trunc i32 %xor.i.i377.3 to i8 *)
split tmp_v_xor_i_i377_3 v_conv3_i_i378_3 v_xor_i_i377_3 8;
vpc v_conv3_i_i378_3@uint8 v_conv3_i_i378_3@uint32;
(*   %conv4.i.i379.3 = zext i8 %conv5.i.i381.2 to i32 *)
cast v_conv4_i_i379_3@uint32 v_conv5_i_i381_2@uint8;
(*   %shr.i.i380.3 = ashr i32 %conv4.i.i379.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i380_3 tmp_to_be_used v_conv4_i_i379_3 1;
(*   %conv5.i.i381.3 = trunc i32 %shr.i.i380.3 to i8 *)
split tmp_v_shr_i_i380_3 v_conv5_i_i381_3 v_shr_i_i380_3 8;
vpc v_conv5_i_i381_3@uint8 v_conv5_i_i381_3@uint32;
(*   %conv6.i.i382.3 = zext i8 %conv7.i.i384.2 to i32 *)
cast v_conv6_i_i382_3@uint32 v_conv7_i_i384_2@uint8;
(*   %shl.i.i383.3 = shl i32 %conv6.i.i382.3, 1 *)
shls discard_143 v_shl_i_i383_3 v_conv6_i_i382_3 1;
(*   %conv7.i.i384.3 = trunc i32 %shl.i.i383.3 to i8 *)
split tmp_v_shl_i_i383_3 v_conv7_i_i384_3 v_shl_i_i383_3 8;
vpc v_conv7_i_i384_3@uint8 v_conv7_i_i384_3@uint32;
(*   %conv.i.i372.4 = zext i8 %conv5.i.i381.3 to i32 *)
cast v_conv_i_i372_4@uint32 v_conv5_i_i381_3@uint8;
(*   %and.i.i373.4 = and i32 %conv.i.i372.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i373_4 v_conv_i_i372_4 (0x1)@uint32;
(*   %conv1.i.i374.4 = zext i8 %conv7.i.i384.3 to i32 *)
cast v_conv1_i_i374_4@uint32 v_conv7_i_i384_3@uint8;
(*   %mul.i.i375.4 = mul nsw i32 %and.i.i373.4, %conv1.i.i374.4 *)
mul v_mul_i_i375_4 v_and_i_i373_4 v_conv1_i_i374_4;
(*   %conv2.i.i376.4 = zext i8 %conv3.i.i378.3 to i32 *)
cast v_conv2_i_i376_4@uint32 v_conv3_i_i378_3@uint8;
(*   %xor.i.i377.4 = xor i32 %conv2.i.i376.4, %mul.i.i375.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i377_4 v_conv2_i_i376_4 v_mul_i_i375_4;
(*   %conv3.i.i378.4 = trunc i32 %xor.i.i377.4 to i8 *)
split tmp_v_xor_i_i377_4 v_conv3_i_i378_4 v_xor_i_i377_4 8;
vpc v_conv3_i_i378_4@uint8 v_conv3_i_i378_4@uint32;
(*   %conv4.i.i379.4 = zext i8 %conv5.i.i381.3 to i32 *)
cast v_conv4_i_i379_4@uint32 v_conv5_i_i381_3@uint8;
(*   %shr.i.i380.4 = ashr i32 %conv4.i.i379.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i380_4 tmp_to_be_used v_conv4_i_i379_4 1;
(*   %conv5.i.i381.4 = trunc i32 %shr.i.i380.4 to i8 *)
split tmp_v_shr_i_i380_4 v_conv5_i_i381_4 v_shr_i_i380_4 8;
vpc v_conv5_i_i381_4@uint8 v_conv5_i_i381_4@uint32;
(*   %conv6.i.i382.4 = zext i8 %conv7.i.i384.3 to i32 *)
cast v_conv6_i_i382_4@uint32 v_conv7_i_i384_3@uint8;
(*   %shl.i.i383.4 = shl i32 %conv6.i.i382.4, 1 *)
shls discard_144 v_shl_i_i383_4 v_conv6_i_i382_4 1;
(*   %conv7.i.i384.4 = trunc i32 %shl.i.i383.4 to i8 *)
split tmp_v_shl_i_i383_4 v_conv7_i_i384_4 v_shl_i_i383_4 8;
vpc v_conv7_i_i384_4@uint8 v_conv7_i_i384_4@uint32;
(*   %conv.i.i372.5 = zext i8 %conv5.i.i381.4 to i32 *)
cast v_conv_i_i372_5@uint32 v_conv5_i_i381_4@uint8;
(*   %and.i.i373.5 = and i32 %conv.i.i372.5, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i373_5 v_conv_i_i372_5 (0x1)@uint32;
(*   %conv1.i.i374.5 = zext i8 %conv7.i.i384.4 to i32 *)
cast v_conv1_i_i374_5@uint32 v_conv7_i_i384_4@uint8;
(*   %mul.i.i375.5 = mul nsw i32 %and.i.i373.5, %conv1.i.i374.5 *)
mul v_mul_i_i375_5 v_and_i_i373_5 v_conv1_i_i374_5;
(*   %conv2.i.i376.5 = zext i8 %conv3.i.i378.4 to i32 *)
cast v_conv2_i_i376_5@uint32 v_conv3_i_i378_4@uint8;
(*   %xor.i.i377.5 = xor i32 %conv2.i.i376.5, %mul.i.i375.5 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i377_5 v_conv2_i_i376_5 v_mul_i_i375_5;
(*   %conv3.i.i378.5 = trunc i32 %xor.i.i377.5 to i8 *)
split tmp_v_xor_i_i377_5 v_conv3_i_i378_5 v_xor_i_i377_5 8;
vpc v_conv3_i_i378_5@uint8 v_conv3_i_i378_5@uint32;
(*   %conv4.i.i379.5 = zext i8 %conv5.i.i381.4 to i32 *)
cast v_conv4_i_i379_5@uint32 v_conv5_i_i381_4@uint8;
(*   %shr.i.i380.5 = ashr i32 %conv4.i.i379.5, 1 *)
(* You may need to modify here *)
split v_shr_i_i380_5 tmp_to_be_used v_conv4_i_i379_5 1;
(*   %conv5.i.i381.5 = trunc i32 %shr.i.i380.5 to i8 *)
split tmp_v_shr_i_i380_5 v_conv5_i_i381_5 v_shr_i_i380_5 8;
vpc v_conv5_i_i381_5@uint8 v_conv5_i_i381_5@uint32;
(*   %conv6.i.i382.5 = zext i8 %conv7.i.i384.4 to i32 *)
cast v_conv6_i_i382_5@uint32 v_conv7_i_i384_4@uint8;
(*   %shl.i.i383.5 = shl i32 %conv6.i.i382.5, 1 *)
shls discard_145 v_shl_i_i383_5 v_conv6_i_i382_5 1;
(*   %conv7.i.i384.5 = trunc i32 %shl.i.i383.5 to i8 *)
split tmp_v_shl_i_i383_5 v_conv7_i_i384_5 v_shl_i_i383_5 8;
vpc v_conv7_i_i384_5@uint8 v_conv7_i_i384_5@uint32;
(*   %conv.i.i372.6 = zext i8 %conv5.i.i381.5 to i32 *)
cast v_conv_i_i372_6@uint32 v_conv5_i_i381_5@uint8;
(*   %and.i.i373.6 = and i32 %conv.i.i372.6, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i373_6 v_conv_i_i372_6 (0x1)@uint32;
(*   %conv1.i.i374.6 = zext i8 %conv7.i.i384.5 to i32 *)
cast v_conv1_i_i374_6@uint32 v_conv7_i_i384_5@uint8;
(*   %mul.i.i375.6 = mul nsw i32 %and.i.i373.6, %conv1.i.i374.6 *)
mul v_mul_i_i375_6 v_and_i_i373_6 v_conv1_i_i374_6;
(*   %conv2.i.i376.6 = zext i8 %conv3.i.i378.5 to i32 *)
cast v_conv2_i_i376_6@uint32 v_conv3_i_i378_5@uint8;
(*   %xor.i.i377.6 = xor i32 %conv2.i.i376.6, %mul.i.i375.6 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i377_6 v_conv2_i_i376_6 v_mul_i_i375_6;
(*   %conv3.i.i378.6 = trunc i32 %xor.i.i377.6 to i8 *)
split tmp_v_xor_i_i377_6 v_conv3_i_i378_6 v_xor_i_i377_6 8;
vpc v_conv3_i_i378_6@uint8 v_conv3_i_i378_6@uint32;
(*   %conv4.i.i379.6 = zext i8 %conv5.i.i381.5 to i32 *)
cast v_conv4_i_i379_6@uint32 v_conv5_i_i381_5@uint8;
(*   %shr.i.i380.6 = ashr i32 %conv4.i.i379.6, 1 *)
(* You may need to modify here *)
split v_shr_i_i380_6 tmp_to_be_used v_conv4_i_i379_6 1;
(*   %conv5.i.i381.6 = trunc i32 %shr.i.i380.6 to i8 *)
split tmp_v_shr_i_i380_6 v_conv5_i_i381_6 v_shr_i_i380_6 8;
vpc v_conv5_i_i381_6@uint8 v_conv5_i_i381_6@uint32;
(*   %conv6.i.i382.6 = zext i8 %conv7.i.i384.5 to i32 *)
cast v_conv6_i_i382_6@uint32 v_conv7_i_i384_5@uint8;
(*   %shl.i.i383.6 = shl i32 %conv6.i.i382.6, 1 *)
shls discard_146 v_shl_i_i383_6 v_conv6_i_i382_6 1;
(*   %conv7.i.i384.6 = trunc i32 %shl.i.i383.6 to i8 *)
split tmp_v_shl_i_i383_6 v_conv7_i_i384_6 v_shl_i_i383_6 8;
vpc v_conv7_i_i384_6@uint8 v_conv7_i_i384_6@uint32;
(*   %conv.i.i372.7 = zext i8 %conv5.i.i381.6 to i32 *)
cast v_conv_i_i372_7@uint32 v_conv5_i_i381_6@uint8;
(*   %and.i.i373.7 = and i32 %conv.i.i372.7, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i373_7 v_conv_i_i372_7 (0x1)@uint32;
(*   %conv1.i.i374.7 = zext i8 %conv7.i.i384.6 to i32 *)
cast v_conv1_i_i374_7@uint32 v_conv7_i_i384_6@uint8;
(*   %mul.i.i375.7 = mul nsw i32 %and.i.i373.7, %conv1.i.i374.7 *)
mul v_mul_i_i375_7 v_and_i_i373_7 v_conv1_i_i374_7;
(*   %conv2.i.i376.7 = zext i8 %conv3.i.i378.6 to i32 *)
cast v_conv2_i_i376_7@uint32 v_conv3_i_i378_6@uint8;
(*   %xor.i.i377.7 = xor i32 %conv2.i.i376.7, %mul.i.i375.7 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i377_7 v_conv2_i_i376_7 v_mul_i_i375_7;
(*   %conv3.i.i378.7 = trunc i32 %xor.i.i377.7 to i8 *)
split tmp_v_xor_i_i377_7 v_conv3_i_i378_7 v_xor_i_i377_7 8;
vpc v_conv3_i_i378_7@uint8 v_conv3_i_i378_7@uint32;
(*   store i8 %conv3.i.i378.7, i8* %arraydecay9, align 1 *)
mov a2b_0 v_conv3_i_i378_7;
(*   %arrayidx.i364.1 = getelementptr inbounds i8, i8* %a, i64 3 *)
(*   %42 = load i8, i8* %arrayidx.i364.1, align 1 *)
mov v42 a_3;
(*   %arrayidx4.i368.1 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %43 = load i8, i8* %arrayidx4.i368.1, align 1 *)
mov v43 b_1;
(*   %conv.i.i372.1244 = zext i8 %43 to i32 *)
cast v_conv_i_i372_1244@uint32 v43@uint8;
(*   %and.i.i373.1245 = and i32 %conv.i.i372.1244, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i373_1245 v_conv_i_i372_1244 (0x1)@uint32;
(*   %conv1.i.i374.1246 = zext i8 %42 to i32 *)
cast v_conv1_i_i374_1246@uint32 v42@uint8;
(*   %mul.i.i375.1247 = mul nsw i32 %and.i.i373.1245, %conv1.i.i374.1246 *)
mul v_mul_i_i375_1247 v_and_i_i373_1245 v_conv1_i_i374_1246;
(*   %conv3.i.i378.1248 = trunc i32 %mul.i.i375.1247 to i8 *)
split tmp_v_mul_i_i375_1247 v_conv3_i_i378_1248 v_mul_i_i375_1247 8;
vpc v_conv3_i_i378_1248@uint8 v_conv3_i_i378_1248@uint32;
(*   %conv4.i.i379.1249 = zext i8 %43 to i32 *)
cast v_conv4_i_i379_1249@uint32 v43@uint8;
(*   %shr.i.i380.1250 = ashr i32 %conv4.i.i379.1249, 1 *)
(* You may need to modify here *)
split v_shr_i_i380_1250 tmp_to_be_used v_conv4_i_i379_1249 1;
(*   %conv5.i.i381.1251 = trunc i32 %shr.i.i380.1250 to i8 *)
split tmp_v_shr_i_i380_1250 v_conv5_i_i381_1251 v_shr_i_i380_1250 8;
vpc v_conv5_i_i381_1251@uint8 v_conv5_i_i381_1251@uint32;
(*   %conv6.i.i382.1252 = zext i8 %42 to i32 *)
cast v_conv6_i_i382_1252@uint32 v42@uint8;
(*   %shl.i.i383.1253 = shl i32 %conv6.i.i382.1252, 1 *)
shls discard_147 v_shl_i_i383_1253 v_conv6_i_i382_1252 1;
(*   %conv7.i.i384.1254 = trunc i32 %shl.i.i383.1253 to i8 *)
split tmp_v_shl_i_i383_1253 v_conv7_i_i384_1254 v_shl_i_i383_1253 8;
vpc v_conv7_i_i384_1254@uint8 v_conv7_i_i384_1254@uint32;
(*   %conv.i.i372.1.1 = zext i8 %conv5.i.i381.1251 to i32 *)
cast v_conv_i_i372_1_1@uint32 v_conv5_i_i381_1251@uint8;
(*   %and.i.i373.1.1 = and i32 %conv.i.i372.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i373_1_1 v_conv_i_i372_1_1 (0x1)@uint32;
(*   %conv1.i.i374.1.1 = zext i8 %conv7.i.i384.1254 to i32 *)
cast v_conv1_i_i374_1_1@uint32 v_conv7_i_i384_1254@uint8;
(*   %mul.i.i375.1.1 = mul nsw i32 %and.i.i373.1.1, %conv1.i.i374.1.1 *)
mul v_mul_i_i375_1_1 v_and_i_i373_1_1 v_conv1_i_i374_1_1;
(*   %conv2.i.i376.1.1 = zext i8 %conv3.i.i378.1248 to i32 *)
cast v_conv2_i_i376_1_1@uint32 v_conv3_i_i378_1248@uint8;
(*   %xor.i.i377.1.1 = xor i32 %conv2.i.i376.1.1, %mul.i.i375.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i377_1_1 v_conv2_i_i376_1_1 v_mul_i_i375_1_1;
(*   %conv3.i.i378.1.1 = trunc i32 %xor.i.i377.1.1 to i8 *)
split tmp_v_xor_i_i377_1_1 v_conv3_i_i378_1_1 v_xor_i_i377_1_1 8;
vpc v_conv3_i_i378_1_1@uint8 v_conv3_i_i378_1_1@uint32;
(*   %conv4.i.i379.1.1 = zext i8 %conv5.i.i381.1251 to i32 *)
cast v_conv4_i_i379_1_1@uint32 v_conv5_i_i381_1251@uint8;
(*   %shr.i.i380.1.1 = ashr i32 %conv4.i.i379.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i380_1_1 tmp_to_be_used v_conv4_i_i379_1_1 1;
(*   %conv5.i.i381.1.1 = trunc i32 %shr.i.i380.1.1 to i8 *)
split tmp_v_shr_i_i380_1_1 v_conv5_i_i381_1_1 v_shr_i_i380_1_1 8;
vpc v_conv5_i_i381_1_1@uint8 v_conv5_i_i381_1_1@uint32;
(*   %conv6.i.i382.1.1 = zext i8 %conv7.i.i384.1254 to i32 *)
cast v_conv6_i_i382_1_1@uint32 v_conv7_i_i384_1254@uint8;
(*   %shl.i.i383.1.1 = shl i32 %conv6.i.i382.1.1, 1 *)
shls discard_148 v_shl_i_i383_1_1 v_conv6_i_i382_1_1 1;
(*   %conv7.i.i384.1.1 = trunc i32 %shl.i.i383.1.1 to i8 *)
split tmp_v_shl_i_i383_1_1 v_conv7_i_i384_1_1 v_shl_i_i383_1_1 8;
vpc v_conv7_i_i384_1_1@uint8 v_conv7_i_i384_1_1@uint32;
(*   %conv.i.i372.2.1 = zext i8 %conv5.i.i381.1.1 to i32 *)
cast v_conv_i_i372_2_1@uint32 v_conv5_i_i381_1_1@uint8;
(*   %and.i.i373.2.1 = and i32 %conv.i.i372.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i373_2_1 v_conv_i_i372_2_1 (0x1)@uint32;
(*   %conv1.i.i374.2.1 = zext i8 %conv7.i.i384.1.1 to i32 *)
cast v_conv1_i_i374_2_1@uint32 v_conv7_i_i384_1_1@uint8;
(*   %mul.i.i375.2.1 = mul nsw i32 %and.i.i373.2.1, %conv1.i.i374.2.1 *)
mul v_mul_i_i375_2_1 v_and_i_i373_2_1 v_conv1_i_i374_2_1;
(*   %conv2.i.i376.2.1 = zext i8 %conv3.i.i378.1.1 to i32 *)
cast v_conv2_i_i376_2_1@uint32 v_conv3_i_i378_1_1@uint8;
(*   %xor.i.i377.2.1 = xor i32 %conv2.i.i376.2.1, %mul.i.i375.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i377_2_1 v_conv2_i_i376_2_1 v_mul_i_i375_2_1;
(*   %conv3.i.i378.2.1 = trunc i32 %xor.i.i377.2.1 to i8 *)
split tmp_v_xor_i_i377_2_1 v_conv3_i_i378_2_1 v_xor_i_i377_2_1 8;
vpc v_conv3_i_i378_2_1@uint8 v_conv3_i_i378_2_1@uint32;
(*   %conv4.i.i379.2.1 = zext i8 %conv5.i.i381.1.1 to i32 *)
cast v_conv4_i_i379_2_1@uint32 v_conv5_i_i381_1_1@uint8;
(*   %shr.i.i380.2.1 = ashr i32 %conv4.i.i379.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i380_2_1 tmp_to_be_used v_conv4_i_i379_2_1 1;
(*   %conv5.i.i381.2.1 = trunc i32 %shr.i.i380.2.1 to i8 *)
split tmp_v_shr_i_i380_2_1 v_conv5_i_i381_2_1 v_shr_i_i380_2_1 8;
vpc v_conv5_i_i381_2_1@uint8 v_conv5_i_i381_2_1@uint32;
(*   %conv6.i.i382.2.1 = zext i8 %conv7.i.i384.1.1 to i32 *)
cast v_conv6_i_i382_2_1@uint32 v_conv7_i_i384_1_1@uint8;
(*   %shl.i.i383.2.1 = shl i32 %conv6.i.i382.2.1, 1 *)
shls discard_149 v_shl_i_i383_2_1 v_conv6_i_i382_2_1 1;
(*   %conv7.i.i384.2.1 = trunc i32 %shl.i.i383.2.1 to i8 *)
split tmp_v_shl_i_i383_2_1 v_conv7_i_i384_2_1 v_shl_i_i383_2_1 8;
vpc v_conv7_i_i384_2_1@uint8 v_conv7_i_i384_2_1@uint32;
(*   %conv.i.i372.3.1 = zext i8 %conv5.i.i381.2.1 to i32 *)
cast v_conv_i_i372_3_1@uint32 v_conv5_i_i381_2_1@uint8;
(*   %and.i.i373.3.1 = and i32 %conv.i.i372.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i373_3_1 v_conv_i_i372_3_1 (0x1)@uint32;
(*   %conv1.i.i374.3.1 = zext i8 %conv7.i.i384.2.1 to i32 *)
cast v_conv1_i_i374_3_1@uint32 v_conv7_i_i384_2_1@uint8;
(*   %mul.i.i375.3.1 = mul nsw i32 %and.i.i373.3.1, %conv1.i.i374.3.1 *)
mul v_mul_i_i375_3_1 v_and_i_i373_3_1 v_conv1_i_i374_3_1;
(*   %conv2.i.i376.3.1 = zext i8 %conv3.i.i378.2.1 to i32 *)
cast v_conv2_i_i376_3_1@uint32 v_conv3_i_i378_2_1@uint8;
(*   %xor.i.i377.3.1 = xor i32 %conv2.i.i376.3.1, %mul.i.i375.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i377_3_1 v_conv2_i_i376_3_1 v_mul_i_i375_3_1;
(*   %conv3.i.i378.3.1 = trunc i32 %xor.i.i377.3.1 to i8 *)
split tmp_v_xor_i_i377_3_1 v_conv3_i_i378_3_1 v_xor_i_i377_3_1 8;
vpc v_conv3_i_i378_3_1@uint8 v_conv3_i_i378_3_1@uint32;
(*   %conv4.i.i379.3.1 = zext i8 %conv5.i.i381.2.1 to i32 *)
cast v_conv4_i_i379_3_1@uint32 v_conv5_i_i381_2_1@uint8;
(*   %shr.i.i380.3.1 = ashr i32 %conv4.i.i379.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i380_3_1 tmp_to_be_used v_conv4_i_i379_3_1 1;
(*   %conv5.i.i381.3.1 = trunc i32 %shr.i.i380.3.1 to i8 *)
split tmp_v_shr_i_i380_3_1 v_conv5_i_i381_3_1 v_shr_i_i380_3_1 8;
vpc v_conv5_i_i381_3_1@uint8 v_conv5_i_i381_3_1@uint32;
(*   %conv6.i.i382.3.1 = zext i8 %conv7.i.i384.2.1 to i32 *)
cast v_conv6_i_i382_3_1@uint32 v_conv7_i_i384_2_1@uint8;
(*   %shl.i.i383.3.1 = shl i32 %conv6.i.i382.3.1, 1 *)
shls discard_150 v_shl_i_i383_3_1 v_conv6_i_i382_3_1 1;
(*   %conv7.i.i384.3.1 = trunc i32 %shl.i.i383.3.1 to i8 *)
split tmp_v_shl_i_i383_3_1 v_conv7_i_i384_3_1 v_shl_i_i383_3_1 8;
vpc v_conv7_i_i384_3_1@uint8 v_conv7_i_i384_3_1@uint32;
(*   %conv.i.i372.4.1 = zext i8 %conv5.i.i381.3.1 to i32 *)
cast v_conv_i_i372_4_1@uint32 v_conv5_i_i381_3_1@uint8;
(*   %and.i.i373.4.1 = and i32 %conv.i.i372.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i373_4_1 v_conv_i_i372_4_1 (0x1)@uint32;
(*   %conv1.i.i374.4.1 = zext i8 %conv7.i.i384.3.1 to i32 *)
cast v_conv1_i_i374_4_1@uint32 v_conv7_i_i384_3_1@uint8;
(*   %mul.i.i375.4.1 = mul nsw i32 %and.i.i373.4.1, %conv1.i.i374.4.1 *)
mul v_mul_i_i375_4_1 v_and_i_i373_4_1 v_conv1_i_i374_4_1;
(*   %conv2.i.i376.4.1 = zext i8 %conv3.i.i378.3.1 to i32 *)
cast v_conv2_i_i376_4_1@uint32 v_conv3_i_i378_3_1@uint8;
(*   %xor.i.i377.4.1 = xor i32 %conv2.i.i376.4.1, %mul.i.i375.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i377_4_1 v_conv2_i_i376_4_1 v_mul_i_i375_4_1;
(*   %conv3.i.i378.4.1 = trunc i32 %xor.i.i377.4.1 to i8 *)
split tmp_v_xor_i_i377_4_1 v_conv3_i_i378_4_1 v_xor_i_i377_4_1 8;
vpc v_conv3_i_i378_4_1@uint8 v_conv3_i_i378_4_1@uint32;
(*   %conv4.i.i379.4.1 = zext i8 %conv5.i.i381.3.1 to i32 *)
cast v_conv4_i_i379_4_1@uint32 v_conv5_i_i381_3_1@uint8;
(*   %shr.i.i380.4.1 = ashr i32 %conv4.i.i379.4.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i380_4_1 tmp_to_be_used v_conv4_i_i379_4_1 1;
(*   %conv5.i.i381.4.1 = trunc i32 %shr.i.i380.4.1 to i8 *)
split tmp_v_shr_i_i380_4_1 v_conv5_i_i381_4_1 v_shr_i_i380_4_1 8;
vpc v_conv5_i_i381_4_1@uint8 v_conv5_i_i381_4_1@uint32;
(*   %conv6.i.i382.4.1 = zext i8 %conv7.i.i384.3.1 to i32 *)
cast v_conv6_i_i382_4_1@uint32 v_conv7_i_i384_3_1@uint8;
(*   %shl.i.i383.4.1 = shl i32 %conv6.i.i382.4.1, 1 *)
shls discard_151 v_shl_i_i383_4_1 v_conv6_i_i382_4_1 1;
(*   %conv7.i.i384.4.1 = trunc i32 %shl.i.i383.4.1 to i8 *)
split tmp_v_shl_i_i383_4_1 v_conv7_i_i384_4_1 v_shl_i_i383_4_1 8;
vpc v_conv7_i_i384_4_1@uint8 v_conv7_i_i384_4_1@uint32;
(*   %conv.i.i372.5.1 = zext i8 %conv5.i.i381.4.1 to i32 *)
cast v_conv_i_i372_5_1@uint32 v_conv5_i_i381_4_1@uint8;
(*   %and.i.i373.5.1 = and i32 %conv.i.i372.5.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i373_5_1 v_conv_i_i372_5_1 (0x1)@uint32;
(*   %conv1.i.i374.5.1 = zext i8 %conv7.i.i384.4.1 to i32 *)
cast v_conv1_i_i374_5_1@uint32 v_conv7_i_i384_4_1@uint8;
(*   %mul.i.i375.5.1 = mul nsw i32 %and.i.i373.5.1, %conv1.i.i374.5.1 *)
mul v_mul_i_i375_5_1 v_and_i_i373_5_1 v_conv1_i_i374_5_1;
(*   %conv2.i.i376.5.1 = zext i8 %conv3.i.i378.4.1 to i32 *)
cast v_conv2_i_i376_5_1@uint32 v_conv3_i_i378_4_1@uint8;
(*   %xor.i.i377.5.1 = xor i32 %conv2.i.i376.5.1, %mul.i.i375.5.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i377_5_1 v_conv2_i_i376_5_1 v_mul_i_i375_5_1;
(*   %conv3.i.i378.5.1 = trunc i32 %xor.i.i377.5.1 to i8 *)
split tmp_v_xor_i_i377_5_1 v_conv3_i_i378_5_1 v_xor_i_i377_5_1 8;
vpc v_conv3_i_i378_5_1@uint8 v_conv3_i_i378_5_1@uint32;
(*   %conv4.i.i379.5.1 = zext i8 %conv5.i.i381.4.1 to i32 *)
cast v_conv4_i_i379_5_1@uint32 v_conv5_i_i381_4_1@uint8;
(*   %shr.i.i380.5.1 = ashr i32 %conv4.i.i379.5.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i380_5_1 tmp_to_be_used v_conv4_i_i379_5_1 1;
(*   %conv5.i.i381.5.1 = trunc i32 %shr.i.i380.5.1 to i8 *)
split tmp_v_shr_i_i380_5_1 v_conv5_i_i381_5_1 v_shr_i_i380_5_1 8;
vpc v_conv5_i_i381_5_1@uint8 v_conv5_i_i381_5_1@uint32;
(*   %conv6.i.i382.5.1 = zext i8 %conv7.i.i384.4.1 to i32 *)
cast v_conv6_i_i382_5_1@uint32 v_conv7_i_i384_4_1@uint8;
(*   %shl.i.i383.5.1 = shl i32 %conv6.i.i382.5.1, 1 *)
shls discard_152 v_shl_i_i383_5_1 v_conv6_i_i382_5_1 1;
(*   %conv7.i.i384.5.1 = trunc i32 %shl.i.i383.5.1 to i8 *)
split tmp_v_shl_i_i383_5_1 v_conv7_i_i384_5_1 v_shl_i_i383_5_1 8;
vpc v_conv7_i_i384_5_1@uint8 v_conv7_i_i384_5_1@uint32;
(*   %conv.i.i372.6.1 = zext i8 %conv5.i.i381.5.1 to i32 *)
cast v_conv_i_i372_6_1@uint32 v_conv5_i_i381_5_1@uint8;
(*   %and.i.i373.6.1 = and i32 %conv.i.i372.6.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i373_6_1 v_conv_i_i372_6_1 (0x1)@uint32;
(*   %conv1.i.i374.6.1 = zext i8 %conv7.i.i384.5.1 to i32 *)
cast v_conv1_i_i374_6_1@uint32 v_conv7_i_i384_5_1@uint8;
(*   %mul.i.i375.6.1 = mul nsw i32 %and.i.i373.6.1, %conv1.i.i374.6.1 *)
mul v_mul_i_i375_6_1 v_and_i_i373_6_1 v_conv1_i_i374_6_1;
(*   %conv2.i.i376.6.1 = zext i8 %conv3.i.i378.5.1 to i32 *)
cast v_conv2_i_i376_6_1@uint32 v_conv3_i_i378_5_1@uint8;
(*   %xor.i.i377.6.1 = xor i32 %conv2.i.i376.6.1, %mul.i.i375.6.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i377_6_1 v_conv2_i_i376_6_1 v_mul_i_i375_6_1;
(*   %conv3.i.i378.6.1 = trunc i32 %xor.i.i377.6.1 to i8 *)
split tmp_v_xor_i_i377_6_1 v_conv3_i_i378_6_1 v_xor_i_i377_6_1 8;
vpc v_conv3_i_i378_6_1@uint8 v_conv3_i_i378_6_1@uint32;
(*   %conv4.i.i379.6.1 = zext i8 %conv5.i.i381.5.1 to i32 *)
cast v_conv4_i_i379_6_1@uint32 v_conv5_i_i381_5_1@uint8;
(*   %shr.i.i380.6.1 = ashr i32 %conv4.i.i379.6.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i380_6_1 tmp_to_be_used v_conv4_i_i379_6_1 1;
(*   %conv5.i.i381.6.1 = trunc i32 %shr.i.i380.6.1 to i8 *)
split tmp_v_shr_i_i380_6_1 v_conv5_i_i381_6_1 v_shr_i_i380_6_1 8;
vpc v_conv5_i_i381_6_1@uint8 v_conv5_i_i381_6_1@uint32;
(*   %conv6.i.i382.6.1 = zext i8 %conv7.i.i384.5.1 to i32 *)
cast v_conv6_i_i382_6_1@uint32 v_conv7_i_i384_5_1@uint8;
(*   %shl.i.i383.6.1 = shl i32 %conv6.i.i382.6.1, 1 *)
shls discard_153 v_shl_i_i383_6_1 v_conv6_i_i382_6_1 1;
(*   %conv7.i.i384.6.1 = trunc i32 %shl.i.i383.6.1 to i8 *)
split tmp_v_shl_i_i383_6_1 v_conv7_i_i384_6_1 v_shl_i_i383_6_1 8;
vpc v_conv7_i_i384_6_1@uint8 v_conv7_i_i384_6_1@uint32;
(*   %conv.i.i372.7.1 = zext i8 %conv5.i.i381.6.1 to i32 *)
cast v_conv_i_i372_7_1@uint32 v_conv5_i_i381_6_1@uint8;
(*   %and.i.i373.7.1 = and i32 %conv.i.i372.7.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i373_7_1 v_conv_i_i372_7_1 (0x1)@uint32;
(*   %conv1.i.i374.7.1 = zext i8 %conv7.i.i384.6.1 to i32 *)
cast v_conv1_i_i374_7_1@uint32 v_conv7_i_i384_6_1@uint8;
(*   %mul.i.i375.7.1 = mul nsw i32 %and.i.i373.7.1, %conv1.i.i374.7.1 *)
mul v_mul_i_i375_7_1 v_and_i_i373_7_1 v_conv1_i_i374_7_1;
(*   %conv2.i.i376.7.1 = zext i8 %conv3.i.i378.6.1 to i32 *)
cast v_conv2_i_i376_7_1@uint32 v_conv3_i_i378_6_1@uint8;
(*   %xor.i.i377.7.1 = xor i32 %conv2.i.i376.7.1, %mul.i.i375.7.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i377_7_1 v_conv2_i_i376_7_1 v_mul_i_i375_7_1;
(*   %conv3.i.i378.7.1 = trunc i32 %xor.i.i377.7.1 to i8 *)
split tmp_v_xor_i_i377_7_1 v_conv3_i_i378_7_1 v_xor_i_i377_7_1 8;
vpc v_conv3_i_i378_7_1@uint8 v_conv3_i_i378_7_1@uint32;
(*   %arrayidx6.i388.1 = getelementptr inbounds i8, i8* %arraydecay9, i64 1 *)
(*   store i8 %conv3.i.i378.7.1, i8* %arrayidx6.i388.1, align 1 *)
mov a2b_1 v_conv3_i_i378_7_1;
(*   %arrayidx.i364.2 = getelementptr inbounds i8, i8* %a, i64 4 *)
(*   %44 = load i8, i8* %arrayidx.i364.2, align 1 *)
mov v44 a_4;
(*   %arrayidx4.i368.2 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %45 = load i8, i8* %arrayidx4.i368.2, align 1 *)
mov v45 b_2;
(*   %conv.i.i372.2255 = zext i8 %45 to i32 *)
cast v_conv_i_i372_2255@uint32 v45@uint8;
(*   %and.i.i373.2256 = and i32 %conv.i.i372.2255, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i373_2256 v_conv_i_i372_2255 (0x1)@uint32;
(*   %conv1.i.i374.2257 = zext i8 %44 to i32 *)
cast v_conv1_i_i374_2257@uint32 v44@uint8;
(*   %mul.i.i375.2258 = mul nsw i32 %and.i.i373.2256, %conv1.i.i374.2257 *)
mul v_mul_i_i375_2258 v_and_i_i373_2256 v_conv1_i_i374_2257;
(*   %conv3.i.i378.2259 = trunc i32 %mul.i.i375.2258 to i8 *)
split tmp_v_mul_i_i375_2258 v_conv3_i_i378_2259 v_mul_i_i375_2258 8;
vpc v_conv3_i_i378_2259@uint8 v_conv3_i_i378_2259@uint32;
(*   %conv4.i.i379.2260 = zext i8 %45 to i32 *)
cast v_conv4_i_i379_2260@uint32 v45@uint8;
(*   %shr.i.i380.2261 = ashr i32 %conv4.i.i379.2260, 1 *)
(* You may need to modify here *)
split v_shr_i_i380_2261 tmp_to_be_used v_conv4_i_i379_2260 1;
(*   %conv5.i.i381.2262 = trunc i32 %shr.i.i380.2261 to i8 *)
split tmp_v_shr_i_i380_2261 v_conv5_i_i381_2262 v_shr_i_i380_2261 8;
vpc v_conv5_i_i381_2262@uint8 v_conv5_i_i381_2262@uint32;
(*   %conv6.i.i382.2263 = zext i8 %44 to i32 *)
cast v_conv6_i_i382_2263@uint32 v44@uint8;
(*   %shl.i.i383.2264 = shl i32 %conv6.i.i382.2263, 1 *)
shls discard_154 v_shl_i_i383_2264 v_conv6_i_i382_2263 1;
(*   %conv7.i.i384.2265 = trunc i32 %shl.i.i383.2264 to i8 *)
split tmp_v_shl_i_i383_2264 v_conv7_i_i384_2265 v_shl_i_i383_2264 8;
vpc v_conv7_i_i384_2265@uint8 v_conv7_i_i384_2265@uint32;
(*   %conv.i.i372.1.2 = zext i8 %conv5.i.i381.2262 to i32 *)
cast v_conv_i_i372_1_2@uint32 v_conv5_i_i381_2262@uint8;
(*   %and.i.i373.1.2 = and i32 %conv.i.i372.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i373_1_2 v_conv_i_i372_1_2 (0x1)@uint32;
(*   %conv1.i.i374.1.2 = zext i8 %conv7.i.i384.2265 to i32 *)
cast v_conv1_i_i374_1_2@uint32 v_conv7_i_i384_2265@uint8;
(*   %mul.i.i375.1.2 = mul nsw i32 %and.i.i373.1.2, %conv1.i.i374.1.2 *)
mul v_mul_i_i375_1_2 v_and_i_i373_1_2 v_conv1_i_i374_1_2;
(*   %conv2.i.i376.1.2 = zext i8 %conv3.i.i378.2259 to i32 *)
cast v_conv2_i_i376_1_2@uint32 v_conv3_i_i378_2259@uint8;
(*   %xor.i.i377.1.2 = xor i32 %conv2.i.i376.1.2, %mul.i.i375.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i377_1_2 v_conv2_i_i376_1_2 v_mul_i_i375_1_2;
(*   %conv3.i.i378.1.2 = trunc i32 %xor.i.i377.1.2 to i8 *)
split tmp_v_xor_i_i377_1_2 v_conv3_i_i378_1_2 v_xor_i_i377_1_2 8;
vpc v_conv3_i_i378_1_2@uint8 v_conv3_i_i378_1_2@uint32;
(*   %conv4.i.i379.1.2 = zext i8 %conv5.i.i381.2262 to i32 *)
cast v_conv4_i_i379_1_2@uint32 v_conv5_i_i381_2262@uint8;
(*   %shr.i.i380.1.2 = ashr i32 %conv4.i.i379.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i380_1_2 tmp_to_be_used v_conv4_i_i379_1_2 1;
(*   %conv5.i.i381.1.2 = trunc i32 %shr.i.i380.1.2 to i8 *)
split tmp_v_shr_i_i380_1_2 v_conv5_i_i381_1_2 v_shr_i_i380_1_2 8;
vpc v_conv5_i_i381_1_2@uint8 v_conv5_i_i381_1_2@uint32;
(*   %conv6.i.i382.1.2 = zext i8 %conv7.i.i384.2265 to i32 *)
cast v_conv6_i_i382_1_2@uint32 v_conv7_i_i384_2265@uint8;
(*   %shl.i.i383.1.2 = shl i32 %conv6.i.i382.1.2, 1 *)
shls discard_155 v_shl_i_i383_1_2 v_conv6_i_i382_1_2 1;
(*   %conv7.i.i384.1.2 = trunc i32 %shl.i.i383.1.2 to i8 *)
split tmp_v_shl_i_i383_1_2 v_conv7_i_i384_1_2 v_shl_i_i383_1_2 8;
vpc v_conv7_i_i384_1_2@uint8 v_conv7_i_i384_1_2@uint32;
(*   %conv.i.i372.2.2 = zext i8 %conv5.i.i381.1.2 to i32 *)
cast v_conv_i_i372_2_2@uint32 v_conv5_i_i381_1_2@uint8;
(*   %and.i.i373.2.2 = and i32 %conv.i.i372.2.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i373_2_2 v_conv_i_i372_2_2 (0x1)@uint32;
(*   %conv1.i.i374.2.2 = zext i8 %conv7.i.i384.1.2 to i32 *)
cast v_conv1_i_i374_2_2@uint32 v_conv7_i_i384_1_2@uint8;
(*   %mul.i.i375.2.2 = mul nsw i32 %and.i.i373.2.2, %conv1.i.i374.2.2 *)
mul v_mul_i_i375_2_2 v_and_i_i373_2_2 v_conv1_i_i374_2_2;
(*   %conv2.i.i376.2.2 = zext i8 %conv3.i.i378.1.2 to i32 *)
cast v_conv2_i_i376_2_2@uint32 v_conv3_i_i378_1_2@uint8;
(*   %xor.i.i377.2.2 = xor i32 %conv2.i.i376.2.2, %mul.i.i375.2.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i377_2_2 v_conv2_i_i376_2_2 v_mul_i_i375_2_2;
(*   %conv3.i.i378.2.2 = trunc i32 %xor.i.i377.2.2 to i8 *)
split tmp_v_xor_i_i377_2_2 v_conv3_i_i378_2_2 v_xor_i_i377_2_2 8;
vpc v_conv3_i_i378_2_2@uint8 v_conv3_i_i378_2_2@uint32;
(*   %conv4.i.i379.2.2 = zext i8 %conv5.i.i381.1.2 to i32 *)
cast v_conv4_i_i379_2_2@uint32 v_conv5_i_i381_1_2@uint8;
(*   %shr.i.i380.2.2 = ashr i32 %conv4.i.i379.2.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i380_2_2 tmp_to_be_used v_conv4_i_i379_2_2 1;
(*   %conv5.i.i381.2.2 = trunc i32 %shr.i.i380.2.2 to i8 *)
split tmp_v_shr_i_i380_2_2 v_conv5_i_i381_2_2 v_shr_i_i380_2_2 8;
vpc v_conv5_i_i381_2_2@uint8 v_conv5_i_i381_2_2@uint32;
(*   %conv6.i.i382.2.2 = zext i8 %conv7.i.i384.1.2 to i32 *)
cast v_conv6_i_i382_2_2@uint32 v_conv7_i_i384_1_2@uint8;
(*   %shl.i.i383.2.2 = shl i32 %conv6.i.i382.2.2, 1 *)
shls discard_156 v_shl_i_i383_2_2 v_conv6_i_i382_2_2 1;
(*   %conv7.i.i384.2.2 = trunc i32 %shl.i.i383.2.2 to i8 *)
split tmp_v_shl_i_i383_2_2 v_conv7_i_i384_2_2 v_shl_i_i383_2_2 8;
vpc v_conv7_i_i384_2_2@uint8 v_conv7_i_i384_2_2@uint32;
(*   %conv.i.i372.3.2 = zext i8 %conv5.i.i381.2.2 to i32 *)
cast v_conv_i_i372_3_2@uint32 v_conv5_i_i381_2_2@uint8;
(*   %and.i.i373.3.2 = and i32 %conv.i.i372.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i373_3_2 v_conv_i_i372_3_2 (0x1)@uint32;
(*   %conv1.i.i374.3.2 = zext i8 %conv7.i.i384.2.2 to i32 *)
cast v_conv1_i_i374_3_2@uint32 v_conv7_i_i384_2_2@uint8;
(*   %mul.i.i375.3.2 = mul nsw i32 %and.i.i373.3.2, %conv1.i.i374.3.2 *)
mul v_mul_i_i375_3_2 v_and_i_i373_3_2 v_conv1_i_i374_3_2;
(*   %conv2.i.i376.3.2 = zext i8 %conv3.i.i378.2.2 to i32 *)
cast v_conv2_i_i376_3_2@uint32 v_conv3_i_i378_2_2@uint8;
(*   %xor.i.i377.3.2 = xor i32 %conv2.i.i376.3.2, %mul.i.i375.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i377_3_2 v_conv2_i_i376_3_2 v_mul_i_i375_3_2;
(*   %conv3.i.i378.3.2 = trunc i32 %xor.i.i377.3.2 to i8 *)
split tmp_v_xor_i_i377_3_2 v_conv3_i_i378_3_2 v_xor_i_i377_3_2 8;
vpc v_conv3_i_i378_3_2@uint8 v_conv3_i_i378_3_2@uint32;
(*   %conv4.i.i379.3.2 = zext i8 %conv5.i.i381.2.2 to i32 *)
cast v_conv4_i_i379_3_2@uint32 v_conv5_i_i381_2_2@uint8;
(*   %shr.i.i380.3.2 = ashr i32 %conv4.i.i379.3.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i380_3_2 tmp_to_be_used v_conv4_i_i379_3_2 1;
(*   %conv5.i.i381.3.2 = trunc i32 %shr.i.i380.3.2 to i8 *)
split tmp_v_shr_i_i380_3_2 v_conv5_i_i381_3_2 v_shr_i_i380_3_2 8;
vpc v_conv5_i_i381_3_2@uint8 v_conv5_i_i381_3_2@uint32;
(*   %conv6.i.i382.3.2 = zext i8 %conv7.i.i384.2.2 to i32 *)
cast v_conv6_i_i382_3_2@uint32 v_conv7_i_i384_2_2@uint8;
(*   %shl.i.i383.3.2 = shl i32 %conv6.i.i382.3.2, 1 *)
shls discard_157 v_shl_i_i383_3_2 v_conv6_i_i382_3_2 1;
(*   %conv7.i.i384.3.2 = trunc i32 %shl.i.i383.3.2 to i8 *)
split tmp_v_shl_i_i383_3_2 v_conv7_i_i384_3_2 v_shl_i_i383_3_2 8;
vpc v_conv7_i_i384_3_2@uint8 v_conv7_i_i384_3_2@uint32;
(*   %conv.i.i372.4.2 = zext i8 %conv5.i.i381.3.2 to i32 *)
cast v_conv_i_i372_4_2@uint32 v_conv5_i_i381_3_2@uint8;
(*   %and.i.i373.4.2 = and i32 %conv.i.i372.4.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i373_4_2 v_conv_i_i372_4_2 (0x1)@uint32;
(*   %conv1.i.i374.4.2 = zext i8 %conv7.i.i384.3.2 to i32 *)
cast v_conv1_i_i374_4_2@uint32 v_conv7_i_i384_3_2@uint8;
(*   %mul.i.i375.4.2 = mul nsw i32 %and.i.i373.4.2, %conv1.i.i374.4.2 *)
mul v_mul_i_i375_4_2 v_and_i_i373_4_2 v_conv1_i_i374_4_2;
(*   %conv2.i.i376.4.2 = zext i8 %conv3.i.i378.3.2 to i32 *)
cast v_conv2_i_i376_4_2@uint32 v_conv3_i_i378_3_2@uint8;
(*   %xor.i.i377.4.2 = xor i32 %conv2.i.i376.4.2, %mul.i.i375.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i377_4_2 v_conv2_i_i376_4_2 v_mul_i_i375_4_2;
(*   %conv3.i.i378.4.2 = trunc i32 %xor.i.i377.4.2 to i8 *)
split tmp_v_xor_i_i377_4_2 v_conv3_i_i378_4_2 v_xor_i_i377_4_2 8;
vpc v_conv3_i_i378_4_2@uint8 v_conv3_i_i378_4_2@uint32;
(*   %conv4.i.i379.4.2 = zext i8 %conv5.i.i381.3.2 to i32 *)
cast v_conv4_i_i379_4_2@uint32 v_conv5_i_i381_3_2@uint8;
(*   %shr.i.i380.4.2 = ashr i32 %conv4.i.i379.4.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i380_4_2 tmp_to_be_used v_conv4_i_i379_4_2 1;
(*   %conv5.i.i381.4.2 = trunc i32 %shr.i.i380.4.2 to i8 *)
split tmp_v_shr_i_i380_4_2 v_conv5_i_i381_4_2 v_shr_i_i380_4_2 8;
vpc v_conv5_i_i381_4_2@uint8 v_conv5_i_i381_4_2@uint32;
(*   %conv6.i.i382.4.2 = zext i8 %conv7.i.i384.3.2 to i32 *)
cast v_conv6_i_i382_4_2@uint32 v_conv7_i_i384_3_2@uint8;
(*   %shl.i.i383.4.2 = shl i32 %conv6.i.i382.4.2, 1 *)
shls discard_158 v_shl_i_i383_4_2 v_conv6_i_i382_4_2 1;
(*   %conv7.i.i384.4.2 = trunc i32 %shl.i.i383.4.2 to i8 *)
split tmp_v_shl_i_i383_4_2 v_conv7_i_i384_4_2 v_shl_i_i383_4_2 8;
vpc v_conv7_i_i384_4_2@uint8 v_conv7_i_i384_4_2@uint32;
(*   %conv.i.i372.5.2 = zext i8 %conv5.i.i381.4.2 to i32 *)
cast v_conv_i_i372_5_2@uint32 v_conv5_i_i381_4_2@uint8;
(*   %and.i.i373.5.2 = and i32 %conv.i.i372.5.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i373_5_2 v_conv_i_i372_5_2 (0x1)@uint32;
(*   %conv1.i.i374.5.2 = zext i8 %conv7.i.i384.4.2 to i32 *)
cast v_conv1_i_i374_5_2@uint32 v_conv7_i_i384_4_2@uint8;
(*   %mul.i.i375.5.2 = mul nsw i32 %and.i.i373.5.2, %conv1.i.i374.5.2 *)
mul v_mul_i_i375_5_2 v_and_i_i373_5_2 v_conv1_i_i374_5_2;
(*   %conv2.i.i376.5.2 = zext i8 %conv3.i.i378.4.2 to i32 *)
cast v_conv2_i_i376_5_2@uint32 v_conv3_i_i378_4_2@uint8;
(*   %xor.i.i377.5.2 = xor i32 %conv2.i.i376.5.2, %mul.i.i375.5.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i377_5_2 v_conv2_i_i376_5_2 v_mul_i_i375_5_2;
(*   %conv3.i.i378.5.2 = trunc i32 %xor.i.i377.5.2 to i8 *)
split tmp_v_xor_i_i377_5_2 v_conv3_i_i378_5_2 v_xor_i_i377_5_2 8;
vpc v_conv3_i_i378_5_2@uint8 v_conv3_i_i378_5_2@uint32;
(*   %conv4.i.i379.5.2 = zext i8 %conv5.i.i381.4.2 to i32 *)
cast v_conv4_i_i379_5_2@uint32 v_conv5_i_i381_4_2@uint8;
(*   %shr.i.i380.5.2 = ashr i32 %conv4.i.i379.5.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i380_5_2 tmp_to_be_used v_conv4_i_i379_5_2 1;
(*   %conv5.i.i381.5.2 = trunc i32 %shr.i.i380.5.2 to i8 *)
split tmp_v_shr_i_i380_5_2 v_conv5_i_i381_5_2 v_shr_i_i380_5_2 8;
vpc v_conv5_i_i381_5_2@uint8 v_conv5_i_i381_5_2@uint32;
(*   %conv6.i.i382.5.2 = zext i8 %conv7.i.i384.4.2 to i32 *)
cast v_conv6_i_i382_5_2@uint32 v_conv7_i_i384_4_2@uint8;
(*   %shl.i.i383.5.2 = shl i32 %conv6.i.i382.5.2, 1 *)
shls discard_159 v_shl_i_i383_5_2 v_conv6_i_i382_5_2 1;
(*   %conv7.i.i384.5.2 = trunc i32 %shl.i.i383.5.2 to i8 *)
split tmp_v_shl_i_i383_5_2 v_conv7_i_i384_5_2 v_shl_i_i383_5_2 8;
vpc v_conv7_i_i384_5_2@uint8 v_conv7_i_i384_5_2@uint32;
(*   %conv.i.i372.6.2 = zext i8 %conv5.i.i381.5.2 to i32 *)
cast v_conv_i_i372_6_2@uint32 v_conv5_i_i381_5_2@uint8;
(*   %and.i.i373.6.2 = and i32 %conv.i.i372.6.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i373_6_2 v_conv_i_i372_6_2 (0x1)@uint32;
(*   %conv1.i.i374.6.2 = zext i8 %conv7.i.i384.5.2 to i32 *)
cast v_conv1_i_i374_6_2@uint32 v_conv7_i_i384_5_2@uint8;
(*   %mul.i.i375.6.2 = mul nsw i32 %and.i.i373.6.2, %conv1.i.i374.6.2 *)
mul v_mul_i_i375_6_2 v_and_i_i373_6_2 v_conv1_i_i374_6_2;
(*   %conv2.i.i376.6.2 = zext i8 %conv3.i.i378.5.2 to i32 *)
cast v_conv2_i_i376_6_2@uint32 v_conv3_i_i378_5_2@uint8;
(*   %xor.i.i377.6.2 = xor i32 %conv2.i.i376.6.2, %mul.i.i375.6.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i377_6_2 v_conv2_i_i376_6_2 v_mul_i_i375_6_2;
(*   %conv3.i.i378.6.2 = trunc i32 %xor.i.i377.6.2 to i8 *)
split tmp_v_xor_i_i377_6_2 v_conv3_i_i378_6_2 v_xor_i_i377_6_2 8;
vpc v_conv3_i_i378_6_2@uint8 v_conv3_i_i378_6_2@uint32;
(*   %conv4.i.i379.6.2 = zext i8 %conv5.i.i381.5.2 to i32 *)
cast v_conv4_i_i379_6_2@uint32 v_conv5_i_i381_5_2@uint8;
(*   %shr.i.i380.6.2 = ashr i32 %conv4.i.i379.6.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i380_6_2 tmp_to_be_used v_conv4_i_i379_6_2 1;
(*   %conv5.i.i381.6.2 = trunc i32 %shr.i.i380.6.2 to i8 *)
split tmp_v_shr_i_i380_6_2 v_conv5_i_i381_6_2 v_shr_i_i380_6_2 8;
vpc v_conv5_i_i381_6_2@uint8 v_conv5_i_i381_6_2@uint32;
(*   %conv6.i.i382.6.2 = zext i8 %conv7.i.i384.5.2 to i32 *)
cast v_conv6_i_i382_6_2@uint32 v_conv7_i_i384_5_2@uint8;
(*   %shl.i.i383.6.2 = shl i32 %conv6.i.i382.6.2, 1 *)
shls discard_160 v_shl_i_i383_6_2 v_conv6_i_i382_6_2 1;
(*   %conv7.i.i384.6.2 = trunc i32 %shl.i.i383.6.2 to i8 *)
split tmp_v_shl_i_i383_6_2 v_conv7_i_i384_6_2 v_shl_i_i383_6_2 8;
vpc v_conv7_i_i384_6_2@uint8 v_conv7_i_i384_6_2@uint32;
(*   %conv.i.i372.7.2 = zext i8 %conv5.i.i381.6.2 to i32 *)
cast v_conv_i_i372_7_2@uint32 v_conv5_i_i381_6_2@uint8;
(*   %and.i.i373.7.2 = and i32 %conv.i.i372.7.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i373_7_2 v_conv_i_i372_7_2 (0x1)@uint32;
(*   %conv1.i.i374.7.2 = zext i8 %conv7.i.i384.6.2 to i32 *)
cast v_conv1_i_i374_7_2@uint32 v_conv7_i_i384_6_2@uint8;
(*   %mul.i.i375.7.2 = mul nsw i32 %and.i.i373.7.2, %conv1.i.i374.7.2 *)
mul v_mul_i_i375_7_2 v_and_i_i373_7_2 v_conv1_i_i374_7_2;
(*   %conv2.i.i376.7.2 = zext i8 %conv3.i.i378.6.2 to i32 *)
cast v_conv2_i_i376_7_2@uint32 v_conv3_i_i378_6_2@uint8;
(*   %xor.i.i377.7.2 = xor i32 %conv2.i.i376.7.2, %mul.i.i375.7.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i377_7_2 v_conv2_i_i376_7_2 v_mul_i_i375_7_2;
(*   %conv3.i.i378.7.2 = trunc i32 %xor.i.i377.7.2 to i8 *)
split tmp_v_xor_i_i377_7_2 v_conv3_i_i378_7_2 v_xor_i_i377_7_2 8;
vpc v_conv3_i_i378_7_2@uint8 v_conv3_i_i378_7_2@uint32;
(*   %arrayidx6.i388.2 = getelementptr inbounds i8, i8* %arraydecay9, i64 2 *)
(*   store i8 %conv3.i.i378.7.2, i8* %arrayidx6.i388.2, align 1 *)
mov a2b_2 v_conv3_i_i378_7_2;
(*   %46 = load i8, i8* %a, align 1 *)
mov v46 a_0;
(*   %arrayidx4.i368.3 = getelementptr inbounds i8, i8* %b, i64 3 *)
(*   %47 = load i8, i8* %arrayidx4.i368.3, align 1 *)
mov v47 b_3;
(*   %conv.i.i372.3266 = zext i8 %47 to i32 *)
cast v_conv_i_i372_3266@uint32 v47@uint8;
(*   %and.i.i373.3267 = and i32 %conv.i.i372.3266, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i373_3267 v_conv_i_i372_3266 (0x1)@uint32;
(*   %conv1.i.i374.3268 = zext i8 %46 to i32 *)
cast v_conv1_i_i374_3268@uint32 v46@uint8;
(*   %mul.i.i375.3269 = mul nsw i32 %and.i.i373.3267, %conv1.i.i374.3268 *)
mul v_mul_i_i375_3269 v_and_i_i373_3267 v_conv1_i_i374_3268;
(*   %conv3.i.i378.3270 = trunc i32 %mul.i.i375.3269 to i8 *)
split tmp_v_mul_i_i375_3269 v_conv3_i_i378_3270 v_mul_i_i375_3269 8;
vpc v_conv3_i_i378_3270@uint8 v_conv3_i_i378_3270@uint32;
(*   %conv4.i.i379.3271 = zext i8 %47 to i32 *)
cast v_conv4_i_i379_3271@uint32 v47@uint8;
(*   %shr.i.i380.3272 = ashr i32 %conv4.i.i379.3271, 1 *)
(* You may need to modify here *)
split v_shr_i_i380_3272 tmp_to_be_used v_conv4_i_i379_3271 1;
(*   %conv5.i.i381.3273 = trunc i32 %shr.i.i380.3272 to i8 *)
split tmp_v_shr_i_i380_3272 v_conv5_i_i381_3273 v_shr_i_i380_3272 8;
vpc v_conv5_i_i381_3273@uint8 v_conv5_i_i381_3273@uint32;
(*   %conv6.i.i382.3274 = zext i8 %46 to i32 *)
cast v_conv6_i_i382_3274@uint32 v46@uint8;
(*   %shl.i.i383.3275 = shl i32 %conv6.i.i382.3274, 1 *)
shls discard_161 v_shl_i_i383_3275 v_conv6_i_i382_3274 1;
(*   %conv7.i.i384.3276 = trunc i32 %shl.i.i383.3275 to i8 *)
split tmp_v_shl_i_i383_3275 v_conv7_i_i384_3276 v_shl_i_i383_3275 8;
vpc v_conv7_i_i384_3276@uint8 v_conv7_i_i384_3276@uint32;
(*   %conv.i.i372.1.3 = zext i8 %conv5.i.i381.3273 to i32 *)
cast v_conv_i_i372_1_3@uint32 v_conv5_i_i381_3273@uint8;
(*   %and.i.i373.1.3 = and i32 %conv.i.i372.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i373_1_3 v_conv_i_i372_1_3 (0x1)@uint32;
(*   %conv1.i.i374.1.3 = zext i8 %conv7.i.i384.3276 to i32 *)
cast v_conv1_i_i374_1_3@uint32 v_conv7_i_i384_3276@uint8;
(*   %mul.i.i375.1.3 = mul nsw i32 %and.i.i373.1.3, %conv1.i.i374.1.3 *)
mul v_mul_i_i375_1_3 v_and_i_i373_1_3 v_conv1_i_i374_1_3;
(*   %conv2.i.i376.1.3 = zext i8 %conv3.i.i378.3270 to i32 *)
cast v_conv2_i_i376_1_3@uint32 v_conv3_i_i378_3270@uint8;
(*   %xor.i.i377.1.3 = xor i32 %conv2.i.i376.1.3, %mul.i.i375.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i377_1_3 v_conv2_i_i376_1_3 v_mul_i_i375_1_3;
(*   %conv3.i.i378.1.3 = trunc i32 %xor.i.i377.1.3 to i8 *)
split tmp_v_xor_i_i377_1_3 v_conv3_i_i378_1_3 v_xor_i_i377_1_3 8;
vpc v_conv3_i_i378_1_3@uint8 v_conv3_i_i378_1_3@uint32;
(*   %conv4.i.i379.1.3 = zext i8 %conv5.i.i381.3273 to i32 *)
cast v_conv4_i_i379_1_3@uint32 v_conv5_i_i381_3273@uint8;
(*   %shr.i.i380.1.3 = ashr i32 %conv4.i.i379.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i380_1_3 tmp_to_be_used v_conv4_i_i379_1_3 1;
(*   %conv5.i.i381.1.3 = trunc i32 %shr.i.i380.1.3 to i8 *)
split tmp_v_shr_i_i380_1_3 v_conv5_i_i381_1_3 v_shr_i_i380_1_3 8;
vpc v_conv5_i_i381_1_3@uint8 v_conv5_i_i381_1_3@uint32;
(*   %conv6.i.i382.1.3 = zext i8 %conv7.i.i384.3276 to i32 *)
cast v_conv6_i_i382_1_3@uint32 v_conv7_i_i384_3276@uint8;
(*   %shl.i.i383.1.3 = shl i32 %conv6.i.i382.1.3, 1 *)
shls discard_162 v_shl_i_i383_1_3 v_conv6_i_i382_1_3 1;
(*   %conv7.i.i384.1.3 = trunc i32 %shl.i.i383.1.3 to i8 *)
split tmp_v_shl_i_i383_1_3 v_conv7_i_i384_1_3 v_shl_i_i383_1_3 8;
vpc v_conv7_i_i384_1_3@uint8 v_conv7_i_i384_1_3@uint32;
(*   %conv.i.i372.2.3 = zext i8 %conv5.i.i381.1.3 to i32 *)
cast v_conv_i_i372_2_3@uint32 v_conv5_i_i381_1_3@uint8;
(*   %and.i.i373.2.3 = and i32 %conv.i.i372.2.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i373_2_3 v_conv_i_i372_2_3 (0x1)@uint32;
(*   %conv1.i.i374.2.3 = zext i8 %conv7.i.i384.1.3 to i32 *)
cast v_conv1_i_i374_2_3@uint32 v_conv7_i_i384_1_3@uint8;
(*   %mul.i.i375.2.3 = mul nsw i32 %and.i.i373.2.3, %conv1.i.i374.2.3 *)
mul v_mul_i_i375_2_3 v_and_i_i373_2_3 v_conv1_i_i374_2_3;
(*   %conv2.i.i376.2.3 = zext i8 %conv3.i.i378.1.3 to i32 *)
cast v_conv2_i_i376_2_3@uint32 v_conv3_i_i378_1_3@uint8;
(*   %xor.i.i377.2.3 = xor i32 %conv2.i.i376.2.3, %mul.i.i375.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i377_2_3 v_conv2_i_i376_2_3 v_mul_i_i375_2_3;
(*   %conv3.i.i378.2.3 = trunc i32 %xor.i.i377.2.3 to i8 *)
split tmp_v_xor_i_i377_2_3 v_conv3_i_i378_2_3 v_xor_i_i377_2_3 8;
vpc v_conv3_i_i378_2_3@uint8 v_conv3_i_i378_2_3@uint32;
(*   %conv4.i.i379.2.3 = zext i8 %conv5.i.i381.1.3 to i32 *)
cast v_conv4_i_i379_2_3@uint32 v_conv5_i_i381_1_3@uint8;
(*   %shr.i.i380.2.3 = ashr i32 %conv4.i.i379.2.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i380_2_3 tmp_to_be_used v_conv4_i_i379_2_3 1;
(*   %conv5.i.i381.2.3 = trunc i32 %shr.i.i380.2.3 to i8 *)
split tmp_v_shr_i_i380_2_3 v_conv5_i_i381_2_3 v_shr_i_i380_2_3 8;
vpc v_conv5_i_i381_2_3@uint8 v_conv5_i_i381_2_3@uint32;
(*   %conv6.i.i382.2.3 = zext i8 %conv7.i.i384.1.3 to i32 *)
cast v_conv6_i_i382_2_3@uint32 v_conv7_i_i384_1_3@uint8;
(*   %shl.i.i383.2.3 = shl i32 %conv6.i.i382.2.3, 1 *)
shls discard_163 v_shl_i_i383_2_3 v_conv6_i_i382_2_3 1;
(*   %conv7.i.i384.2.3 = trunc i32 %shl.i.i383.2.3 to i8 *)
split tmp_v_shl_i_i383_2_3 v_conv7_i_i384_2_3 v_shl_i_i383_2_3 8;
vpc v_conv7_i_i384_2_3@uint8 v_conv7_i_i384_2_3@uint32;
(*   %conv.i.i372.3.3 = zext i8 %conv5.i.i381.2.3 to i32 *)
cast v_conv_i_i372_3_3@uint32 v_conv5_i_i381_2_3@uint8;
(*   %and.i.i373.3.3 = and i32 %conv.i.i372.3.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i373_3_3 v_conv_i_i372_3_3 (0x1)@uint32;
(*   %conv1.i.i374.3.3 = zext i8 %conv7.i.i384.2.3 to i32 *)
cast v_conv1_i_i374_3_3@uint32 v_conv7_i_i384_2_3@uint8;
(*   %mul.i.i375.3.3 = mul nsw i32 %and.i.i373.3.3, %conv1.i.i374.3.3 *)
mul v_mul_i_i375_3_3 v_and_i_i373_3_3 v_conv1_i_i374_3_3;
(*   %conv2.i.i376.3.3 = zext i8 %conv3.i.i378.2.3 to i32 *)
cast v_conv2_i_i376_3_3@uint32 v_conv3_i_i378_2_3@uint8;
(*   %xor.i.i377.3.3 = xor i32 %conv2.i.i376.3.3, %mul.i.i375.3.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i377_3_3 v_conv2_i_i376_3_3 v_mul_i_i375_3_3;
(*   %conv3.i.i378.3.3 = trunc i32 %xor.i.i377.3.3 to i8 *)
split tmp_v_xor_i_i377_3_3 v_conv3_i_i378_3_3 v_xor_i_i377_3_3 8;
vpc v_conv3_i_i378_3_3@uint8 v_conv3_i_i378_3_3@uint32;
(*   %conv4.i.i379.3.3 = zext i8 %conv5.i.i381.2.3 to i32 *)
cast v_conv4_i_i379_3_3@uint32 v_conv5_i_i381_2_3@uint8;
(*   %shr.i.i380.3.3 = ashr i32 %conv4.i.i379.3.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i380_3_3 tmp_to_be_used v_conv4_i_i379_3_3 1;
(*   %conv5.i.i381.3.3 = trunc i32 %shr.i.i380.3.3 to i8 *)
split tmp_v_shr_i_i380_3_3 v_conv5_i_i381_3_3 v_shr_i_i380_3_3 8;
vpc v_conv5_i_i381_3_3@uint8 v_conv5_i_i381_3_3@uint32;
(*   %conv6.i.i382.3.3 = zext i8 %conv7.i.i384.2.3 to i32 *)
cast v_conv6_i_i382_3_3@uint32 v_conv7_i_i384_2_3@uint8;
(*   %shl.i.i383.3.3 = shl i32 %conv6.i.i382.3.3, 1 *)
shls discard_164 v_shl_i_i383_3_3 v_conv6_i_i382_3_3 1;
(*   %conv7.i.i384.3.3 = trunc i32 %shl.i.i383.3.3 to i8 *)
split tmp_v_shl_i_i383_3_3 v_conv7_i_i384_3_3 v_shl_i_i383_3_3 8;
vpc v_conv7_i_i384_3_3@uint8 v_conv7_i_i384_3_3@uint32;
(*   %conv.i.i372.4.3 = zext i8 %conv5.i.i381.3.3 to i32 *)
cast v_conv_i_i372_4_3@uint32 v_conv5_i_i381_3_3@uint8;
(*   %and.i.i373.4.3 = and i32 %conv.i.i372.4.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i373_4_3 v_conv_i_i372_4_3 (0x1)@uint32;
(*   %conv1.i.i374.4.3 = zext i8 %conv7.i.i384.3.3 to i32 *)
cast v_conv1_i_i374_4_3@uint32 v_conv7_i_i384_3_3@uint8;
(*   %mul.i.i375.4.3 = mul nsw i32 %and.i.i373.4.3, %conv1.i.i374.4.3 *)
mul v_mul_i_i375_4_3 v_and_i_i373_4_3 v_conv1_i_i374_4_3;
(*   %conv2.i.i376.4.3 = zext i8 %conv3.i.i378.3.3 to i32 *)
cast v_conv2_i_i376_4_3@uint32 v_conv3_i_i378_3_3@uint8;
(*   %xor.i.i377.4.3 = xor i32 %conv2.i.i376.4.3, %mul.i.i375.4.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i377_4_3 v_conv2_i_i376_4_3 v_mul_i_i375_4_3;
(*   %conv3.i.i378.4.3 = trunc i32 %xor.i.i377.4.3 to i8 *)
split tmp_v_xor_i_i377_4_3 v_conv3_i_i378_4_3 v_xor_i_i377_4_3 8;
vpc v_conv3_i_i378_4_3@uint8 v_conv3_i_i378_4_3@uint32;
(*   %conv4.i.i379.4.3 = zext i8 %conv5.i.i381.3.3 to i32 *)
cast v_conv4_i_i379_4_3@uint32 v_conv5_i_i381_3_3@uint8;
(*   %shr.i.i380.4.3 = ashr i32 %conv4.i.i379.4.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i380_4_3 tmp_to_be_used v_conv4_i_i379_4_3 1;
(*   %conv5.i.i381.4.3 = trunc i32 %shr.i.i380.4.3 to i8 *)
split tmp_v_shr_i_i380_4_3 v_conv5_i_i381_4_3 v_shr_i_i380_4_3 8;
vpc v_conv5_i_i381_4_3@uint8 v_conv5_i_i381_4_3@uint32;
(*   %conv6.i.i382.4.3 = zext i8 %conv7.i.i384.3.3 to i32 *)
cast v_conv6_i_i382_4_3@uint32 v_conv7_i_i384_3_3@uint8;
(*   %shl.i.i383.4.3 = shl i32 %conv6.i.i382.4.3, 1 *)
shls discard_165 v_shl_i_i383_4_3 v_conv6_i_i382_4_3 1;
(*   %conv7.i.i384.4.3 = trunc i32 %shl.i.i383.4.3 to i8 *)
split tmp_v_shl_i_i383_4_3 v_conv7_i_i384_4_3 v_shl_i_i383_4_3 8;
vpc v_conv7_i_i384_4_3@uint8 v_conv7_i_i384_4_3@uint32;
(*   %conv.i.i372.5.3 = zext i8 %conv5.i.i381.4.3 to i32 *)
cast v_conv_i_i372_5_3@uint32 v_conv5_i_i381_4_3@uint8;
(*   %and.i.i373.5.3 = and i32 %conv.i.i372.5.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i373_5_3 v_conv_i_i372_5_3 (0x1)@uint32;
(*   %conv1.i.i374.5.3 = zext i8 %conv7.i.i384.4.3 to i32 *)
cast v_conv1_i_i374_5_3@uint32 v_conv7_i_i384_4_3@uint8;
(*   %mul.i.i375.5.3 = mul nsw i32 %and.i.i373.5.3, %conv1.i.i374.5.3 *)
mul v_mul_i_i375_5_3 v_and_i_i373_5_3 v_conv1_i_i374_5_3;
(*   %conv2.i.i376.5.3 = zext i8 %conv3.i.i378.4.3 to i32 *)
cast v_conv2_i_i376_5_3@uint32 v_conv3_i_i378_4_3@uint8;
(*   %xor.i.i377.5.3 = xor i32 %conv2.i.i376.5.3, %mul.i.i375.5.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i377_5_3 v_conv2_i_i376_5_3 v_mul_i_i375_5_3;
(*   %conv3.i.i378.5.3 = trunc i32 %xor.i.i377.5.3 to i8 *)
split tmp_v_xor_i_i377_5_3 v_conv3_i_i378_5_3 v_xor_i_i377_5_3 8;
vpc v_conv3_i_i378_5_3@uint8 v_conv3_i_i378_5_3@uint32;
(*   %conv4.i.i379.5.3 = zext i8 %conv5.i.i381.4.3 to i32 *)
cast v_conv4_i_i379_5_3@uint32 v_conv5_i_i381_4_3@uint8;
(*   %shr.i.i380.5.3 = ashr i32 %conv4.i.i379.5.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i380_5_3 tmp_to_be_used v_conv4_i_i379_5_3 1;
(*   %conv5.i.i381.5.3 = trunc i32 %shr.i.i380.5.3 to i8 *)
split tmp_v_shr_i_i380_5_3 v_conv5_i_i381_5_3 v_shr_i_i380_5_3 8;
vpc v_conv5_i_i381_5_3@uint8 v_conv5_i_i381_5_3@uint32;
(*   %conv6.i.i382.5.3 = zext i8 %conv7.i.i384.4.3 to i32 *)
cast v_conv6_i_i382_5_3@uint32 v_conv7_i_i384_4_3@uint8;
(*   %shl.i.i383.5.3 = shl i32 %conv6.i.i382.5.3, 1 *)
shls discard_166 v_shl_i_i383_5_3 v_conv6_i_i382_5_3 1;
(*   %conv7.i.i384.5.3 = trunc i32 %shl.i.i383.5.3 to i8 *)
split tmp_v_shl_i_i383_5_3 v_conv7_i_i384_5_3 v_shl_i_i383_5_3 8;
vpc v_conv7_i_i384_5_3@uint8 v_conv7_i_i384_5_3@uint32;
(*   %conv.i.i372.6.3 = zext i8 %conv5.i.i381.5.3 to i32 *)
cast v_conv_i_i372_6_3@uint32 v_conv5_i_i381_5_3@uint8;
(*   %and.i.i373.6.3 = and i32 %conv.i.i372.6.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i373_6_3 v_conv_i_i372_6_3 (0x1)@uint32;
(*   %conv1.i.i374.6.3 = zext i8 %conv7.i.i384.5.3 to i32 *)
cast v_conv1_i_i374_6_3@uint32 v_conv7_i_i384_5_3@uint8;
(*   %mul.i.i375.6.3 = mul nsw i32 %and.i.i373.6.3, %conv1.i.i374.6.3 *)
mul v_mul_i_i375_6_3 v_and_i_i373_6_3 v_conv1_i_i374_6_3;
(*   %conv2.i.i376.6.3 = zext i8 %conv3.i.i378.5.3 to i32 *)
cast v_conv2_i_i376_6_3@uint32 v_conv3_i_i378_5_3@uint8;
(*   %xor.i.i377.6.3 = xor i32 %conv2.i.i376.6.3, %mul.i.i375.6.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i377_6_3 v_conv2_i_i376_6_3 v_mul_i_i375_6_3;
(*   %conv3.i.i378.6.3 = trunc i32 %xor.i.i377.6.3 to i8 *)
split tmp_v_xor_i_i377_6_3 v_conv3_i_i378_6_3 v_xor_i_i377_6_3 8;
vpc v_conv3_i_i378_6_3@uint8 v_conv3_i_i378_6_3@uint32;
(*   %conv4.i.i379.6.3 = zext i8 %conv5.i.i381.5.3 to i32 *)
cast v_conv4_i_i379_6_3@uint32 v_conv5_i_i381_5_3@uint8;
(*   %shr.i.i380.6.3 = ashr i32 %conv4.i.i379.6.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i380_6_3 tmp_to_be_used v_conv4_i_i379_6_3 1;
(*   %conv5.i.i381.6.3 = trunc i32 %shr.i.i380.6.3 to i8 *)
split tmp_v_shr_i_i380_6_3 v_conv5_i_i381_6_3 v_shr_i_i380_6_3 8;
vpc v_conv5_i_i381_6_3@uint8 v_conv5_i_i381_6_3@uint32;
(*   %conv6.i.i382.6.3 = zext i8 %conv7.i.i384.5.3 to i32 *)
cast v_conv6_i_i382_6_3@uint32 v_conv7_i_i384_5_3@uint8;
(*   %shl.i.i383.6.3 = shl i32 %conv6.i.i382.6.3, 1 *)
shls discard_167 v_shl_i_i383_6_3 v_conv6_i_i382_6_3 1;
(*   %conv7.i.i384.6.3 = trunc i32 %shl.i.i383.6.3 to i8 *)
split tmp_v_shl_i_i383_6_3 v_conv7_i_i384_6_3 v_shl_i_i383_6_3 8;
vpc v_conv7_i_i384_6_3@uint8 v_conv7_i_i384_6_3@uint32;
(*   %conv.i.i372.7.3 = zext i8 %conv5.i.i381.6.3 to i32 *)
cast v_conv_i_i372_7_3@uint32 v_conv5_i_i381_6_3@uint8;
(*   %and.i.i373.7.3 = and i32 %conv.i.i372.7.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i373_7_3 v_conv_i_i372_7_3 (0x1)@uint32;
(*   %conv1.i.i374.7.3 = zext i8 %conv7.i.i384.6.3 to i32 *)
cast v_conv1_i_i374_7_3@uint32 v_conv7_i_i384_6_3@uint8;
(*   %mul.i.i375.7.3 = mul nsw i32 %and.i.i373.7.3, %conv1.i.i374.7.3 *)
mul v_mul_i_i375_7_3 v_and_i_i373_7_3 v_conv1_i_i374_7_3;
(*   %conv2.i.i376.7.3 = zext i8 %conv3.i.i378.6.3 to i32 *)
cast v_conv2_i_i376_7_3@uint32 v_conv3_i_i378_6_3@uint8;
(*   %xor.i.i377.7.3 = xor i32 %conv2.i.i376.7.3, %mul.i.i375.7.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i377_7_3 v_conv2_i_i376_7_3 v_mul_i_i375_7_3;
(*   %conv3.i.i378.7.3 = trunc i32 %xor.i.i377.7.3 to i8 *)
split tmp_v_xor_i_i377_7_3 v_conv3_i_i378_7_3 v_xor_i_i377_7_3 8;
vpc v_conv3_i_i378_7_3@uint8 v_conv3_i_i378_7_3@uint32;
(*   %arrayidx6.i388.3 = getelementptr inbounds i8, i8* %arraydecay9, i64 3 *)
(*   store i8 %conv3.i.i378.7.3, i8* %arrayidx6.i388.3, align 1 *)
mov a2b_3 v_conv3_i_i378_7_3;
(*   %arrayidx.i364.4 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %48 = load i8, i8* %arrayidx.i364.4, align 1 *)
mov v48 a_1;
(*   %arrayidx4.i368.4 = getelementptr inbounds i8, i8* %b, i64 4 *)
(*   %49 = load i8, i8* %arrayidx4.i368.4, align 1 *)
mov v49 b_4;
(*   %conv.i.i372.4277 = zext i8 %49 to i32 *)
cast v_conv_i_i372_4277@uint32 v49@uint8;
(*   %and.i.i373.4278 = and i32 %conv.i.i372.4277, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i373_4278 v_conv_i_i372_4277 (0x1)@uint32;
(*   %conv1.i.i374.4279 = zext i8 %48 to i32 *)
cast v_conv1_i_i374_4279@uint32 v48@uint8;
(*   %mul.i.i375.4280 = mul nsw i32 %and.i.i373.4278, %conv1.i.i374.4279 *)
mul v_mul_i_i375_4280 v_and_i_i373_4278 v_conv1_i_i374_4279;
(*   %conv3.i.i378.4281 = trunc i32 %mul.i.i375.4280 to i8 *)
split tmp_v_mul_i_i375_4280 v_conv3_i_i378_4281 v_mul_i_i375_4280 8;
vpc v_conv3_i_i378_4281@uint8 v_conv3_i_i378_4281@uint32;
(*   %conv4.i.i379.4282 = zext i8 %49 to i32 *)
cast v_conv4_i_i379_4282@uint32 v49@uint8;
(*   %shr.i.i380.4283 = ashr i32 %conv4.i.i379.4282, 1 *)
(* You may need to modify here *)
split v_shr_i_i380_4283 tmp_to_be_used v_conv4_i_i379_4282 1;
(*   %conv5.i.i381.4284 = trunc i32 %shr.i.i380.4283 to i8 *)
split tmp_v_shr_i_i380_4283 v_conv5_i_i381_4284 v_shr_i_i380_4283 8;
vpc v_conv5_i_i381_4284@uint8 v_conv5_i_i381_4284@uint32;
(*   %conv6.i.i382.4285 = zext i8 %48 to i32 *)
cast v_conv6_i_i382_4285@uint32 v48@uint8;
(*   %shl.i.i383.4286 = shl i32 %conv6.i.i382.4285, 1 *)
shls discard_168 v_shl_i_i383_4286 v_conv6_i_i382_4285 1;
(*   %conv7.i.i384.4287 = trunc i32 %shl.i.i383.4286 to i8 *)
split tmp_v_shl_i_i383_4286 v_conv7_i_i384_4287 v_shl_i_i383_4286 8;
vpc v_conv7_i_i384_4287@uint8 v_conv7_i_i384_4287@uint32;
(*   %conv.i.i372.1.4 = zext i8 %conv5.i.i381.4284 to i32 *)
cast v_conv_i_i372_1_4@uint32 v_conv5_i_i381_4284@uint8;
(*   %and.i.i373.1.4 = and i32 %conv.i.i372.1.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i373_1_4 v_conv_i_i372_1_4 (0x1)@uint32;
(*   %conv1.i.i374.1.4 = zext i8 %conv7.i.i384.4287 to i32 *)
cast v_conv1_i_i374_1_4@uint32 v_conv7_i_i384_4287@uint8;
(*   %mul.i.i375.1.4 = mul nsw i32 %and.i.i373.1.4, %conv1.i.i374.1.4 *)
mul v_mul_i_i375_1_4 v_and_i_i373_1_4 v_conv1_i_i374_1_4;
(*   %conv2.i.i376.1.4 = zext i8 %conv3.i.i378.4281 to i32 *)
cast v_conv2_i_i376_1_4@uint32 v_conv3_i_i378_4281@uint8;
(*   %xor.i.i377.1.4 = xor i32 %conv2.i.i376.1.4, %mul.i.i375.1.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i377_1_4 v_conv2_i_i376_1_4 v_mul_i_i375_1_4;
(*   %conv3.i.i378.1.4 = trunc i32 %xor.i.i377.1.4 to i8 *)
split tmp_v_xor_i_i377_1_4 v_conv3_i_i378_1_4 v_xor_i_i377_1_4 8;
vpc v_conv3_i_i378_1_4@uint8 v_conv3_i_i378_1_4@uint32;
(*   %conv4.i.i379.1.4 = zext i8 %conv5.i.i381.4284 to i32 *)
cast v_conv4_i_i379_1_4@uint32 v_conv5_i_i381_4284@uint8;
(*   %shr.i.i380.1.4 = ashr i32 %conv4.i.i379.1.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i380_1_4 tmp_to_be_used v_conv4_i_i379_1_4 1;
(*   %conv5.i.i381.1.4 = trunc i32 %shr.i.i380.1.4 to i8 *)
split tmp_v_shr_i_i380_1_4 v_conv5_i_i381_1_4 v_shr_i_i380_1_4 8;
vpc v_conv5_i_i381_1_4@uint8 v_conv5_i_i381_1_4@uint32;
(*   %conv6.i.i382.1.4 = zext i8 %conv7.i.i384.4287 to i32 *)
cast v_conv6_i_i382_1_4@uint32 v_conv7_i_i384_4287@uint8;
(*   %shl.i.i383.1.4 = shl i32 %conv6.i.i382.1.4, 1 *)
shls discard_169 v_shl_i_i383_1_4 v_conv6_i_i382_1_4 1;
(*   %conv7.i.i384.1.4 = trunc i32 %shl.i.i383.1.4 to i8 *)
split tmp_v_shl_i_i383_1_4 v_conv7_i_i384_1_4 v_shl_i_i383_1_4 8;
vpc v_conv7_i_i384_1_4@uint8 v_conv7_i_i384_1_4@uint32;
(*   %conv.i.i372.2.4 = zext i8 %conv5.i.i381.1.4 to i32 *)
cast v_conv_i_i372_2_4@uint32 v_conv5_i_i381_1_4@uint8;
(*   %and.i.i373.2.4 = and i32 %conv.i.i372.2.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i373_2_4 v_conv_i_i372_2_4 (0x1)@uint32;
(*   %conv1.i.i374.2.4 = zext i8 %conv7.i.i384.1.4 to i32 *)
cast v_conv1_i_i374_2_4@uint32 v_conv7_i_i384_1_4@uint8;
(*   %mul.i.i375.2.4 = mul nsw i32 %and.i.i373.2.4, %conv1.i.i374.2.4 *)
mul v_mul_i_i375_2_4 v_and_i_i373_2_4 v_conv1_i_i374_2_4;
(*   %conv2.i.i376.2.4 = zext i8 %conv3.i.i378.1.4 to i32 *)
cast v_conv2_i_i376_2_4@uint32 v_conv3_i_i378_1_4@uint8;
(*   %xor.i.i377.2.4 = xor i32 %conv2.i.i376.2.4, %mul.i.i375.2.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i377_2_4 v_conv2_i_i376_2_4 v_mul_i_i375_2_4;
(*   %conv3.i.i378.2.4 = trunc i32 %xor.i.i377.2.4 to i8 *)
split tmp_v_xor_i_i377_2_4 v_conv3_i_i378_2_4 v_xor_i_i377_2_4 8;
vpc v_conv3_i_i378_2_4@uint8 v_conv3_i_i378_2_4@uint32;
(*   %conv4.i.i379.2.4 = zext i8 %conv5.i.i381.1.4 to i32 *)
cast v_conv4_i_i379_2_4@uint32 v_conv5_i_i381_1_4@uint8;
(*   %shr.i.i380.2.4 = ashr i32 %conv4.i.i379.2.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i380_2_4 tmp_to_be_used v_conv4_i_i379_2_4 1;
(*   %conv5.i.i381.2.4 = trunc i32 %shr.i.i380.2.4 to i8 *)
split tmp_v_shr_i_i380_2_4 v_conv5_i_i381_2_4 v_shr_i_i380_2_4 8;
vpc v_conv5_i_i381_2_4@uint8 v_conv5_i_i381_2_4@uint32;
(*   %conv6.i.i382.2.4 = zext i8 %conv7.i.i384.1.4 to i32 *)
cast v_conv6_i_i382_2_4@uint32 v_conv7_i_i384_1_4@uint8;
(*   %shl.i.i383.2.4 = shl i32 %conv6.i.i382.2.4, 1 *)
shls discard_170 v_shl_i_i383_2_4 v_conv6_i_i382_2_4 1;
(*   %conv7.i.i384.2.4 = trunc i32 %shl.i.i383.2.4 to i8 *)
split tmp_v_shl_i_i383_2_4 v_conv7_i_i384_2_4 v_shl_i_i383_2_4 8;
vpc v_conv7_i_i384_2_4@uint8 v_conv7_i_i384_2_4@uint32;
(*   %conv.i.i372.3.4 = zext i8 %conv5.i.i381.2.4 to i32 *)
cast v_conv_i_i372_3_4@uint32 v_conv5_i_i381_2_4@uint8;
(*   %and.i.i373.3.4 = and i32 %conv.i.i372.3.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i373_3_4 v_conv_i_i372_3_4 (0x1)@uint32;
(*   %conv1.i.i374.3.4 = zext i8 %conv7.i.i384.2.4 to i32 *)
cast v_conv1_i_i374_3_4@uint32 v_conv7_i_i384_2_4@uint8;
(*   %mul.i.i375.3.4 = mul nsw i32 %and.i.i373.3.4, %conv1.i.i374.3.4 *)
mul v_mul_i_i375_3_4 v_and_i_i373_3_4 v_conv1_i_i374_3_4;
(*   %conv2.i.i376.3.4 = zext i8 %conv3.i.i378.2.4 to i32 *)
cast v_conv2_i_i376_3_4@uint32 v_conv3_i_i378_2_4@uint8;
(*   %xor.i.i377.3.4 = xor i32 %conv2.i.i376.3.4, %mul.i.i375.3.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i377_3_4 v_conv2_i_i376_3_4 v_mul_i_i375_3_4;
(*   %conv3.i.i378.3.4 = trunc i32 %xor.i.i377.3.4 to i8 *)
split tmp_v_xor_i_i377_3_4 v_conv3_i_i378_3_4 v_xor_i_i377_3_4 8;
vpc v_conv3_i_i378_3_4@uint8 v_conv3_i_i378_3_4@uint32;
(*   %conv4.i.i379.3.4 = zext i8 %conv5.i.i381.2.4 to i32 *)
cast v_conv4_i_i379_3_4@uint32 v_conv5_i_i381_2_4@uint8;
(*   %shr.i.i380.3.4 = ashr i32 %conv4.i.i379.3.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i380_3_4 tmp_to_be_used v_conv4_i_i379_3_4 1;
(*   %conv5.i.i381.3.4 = trunc i32 %shr.i.i380.3.4 to i8 *)
split tmp_v_shr_i_i380_3_4 v_conv5_i_i381_3_4 v_shr_i_i380_3_4 8;
vpc v_conv5_i_i381_3_4@uint8 v_conv5_i_i381_3_4@uint32;
(*   %conv6.i.i382.3.4 = zext i8 %conv7.i.i384.2.4 to i32 *)
cast v_conv6_i_i382_3_4@uint32 v_conv7_i_i384_2_4@uint8;
(*   %shl.i.i383.3.4 = shl i32 %conv6.i.i382.3.4, 1 *)
shls discard_171 v_shl_i_i383_3_4 v_conv6_i_i382_3_4 1;
(*   %conv7.i.i384.3.4 = trunc i32 %shl.i.i383.3.4 to i8 *)
split tmp_v_shl_i_i383_3_4 v_conv7_i_i384_3_4 v_shl_i_i383_3_4 8;
vpc v_conv7_i_i384_3_4@uint8 v_conv7_i_i384_3_4@uint32;
(*   %conv.i.i372.4.4 = zext i8 %conv5.i.i381.3.4 to i32 *)
cast v_conv_i_i372_4_4@uint32 v_conv5_i_i381_3_4@uint8;
(*   %and.i.i373.4.4 = and i32 %conv.i.i372.4.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i373_4_4 v_conv_i_i372_4_4 (0x1)@uint32;
(*   %conv1.i.i374.4.4 = zext i8 %conv7.i.i384.3.4 to i32 *)
cast v_conv1_i_i374_4_4@uint32 v_conv7_i_i384_3_4@uint8;
(*   %mul.i.i375.4.4 = mul nsw i32 %and.i.i373.4.4, %conv1.i.i374.4.4 *)
mul v_mul_i_i375_4_4 v_and_i_i373_4_4 v_conv1_i_i374_4_4;
(*   %conv2.i.i376.4.4 = zext i8 %conv3.i.i378.3.4 to i32 *)
cast v_conv2_i_i376_4_4@uint32 v_conv3_i_i378_3_4@uint8;
(*   %xor.i.i377.4.4 = xor i32 %conv2.i.i376.4.4, %mul.i.i375.4.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i377_4_4 v_conv2_i_i376_4_4 v_mul_i_i375_4_4;
(*   %conv3.i.i378.4.4 = trunc i32 %xor.i.i377.4.4 to i8 *)
split tmp_v_xor_i_i377_4_4 v_conv3_i_i378_4_4 v_xor_i_i377_4_4 8;
vpc v_conv3_i_i378_4_4@uint8 v_conv3_i_i378_4_4@uint32;
(*   %conv4.i.i379.4.4 = zext i8 %conv5.i.i381.3.4 to i32 *)
cast v_conv4_i_i379_4_4@uint32 v_conv5_i_i381_3_4@uint8;
(*   %shr.i.i380.4.4 = ashr i32 %conv4.i.i379.4.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i380_4_4 tmp_to_be_used v_conv4_i_i379_4_4 1;
(*   %conv5.i.i381.4.4 = trunc i32 %shr.i.i380.4.4 to i8 *)
split tmp_v_shr_i_i380_4_4 v_conv5_i_i381_4_4 v_shr_i_i380_4_4 8;
vpc v_conv5_i_i381_4_4@uint8 v_conv5_i_i381_4_4@uint32;
(*   %conv6.i.i382.4.4 = zext i8 %conv7.i.i384.3.4 to i32 *)
cast v_conv6_i_i382_4_4@uint32 v_conv7_i_i384_3_4@uint8;
(*   %shl.i.i383.4.4 = shl i32 %conv6.i.i382.4.4, 1 *)
shls discard_172 v_shl_i_i383_4_4 v_conv6_i_i382_4_4 1;
(*   %conv7.i.i384.4.4 = trunc i32 %shl.i.i383.4.4 to i8 *)
split tmp_v_shl_i_i383_4_4 v_conv7_i_i384_4_4 v_shl_i_i383_4_4 8;
vpc v_conv7_i_i384_4_4@uint8 v_conv7_i_i384_4_4@uint32;
(*   %conv.i.i372.5.4 = zext i8 %conv5.i.i381.4.4 to i32 *)
cast v_conv_i_i372_5_4@uint32 v_conv5_i_i381_4_4@uint8;
(*   %and.i.i373.5.4 = and i32 %conv.i.i372.5.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i373_5_4 v_conv_i_i372_5_4 (0x1)@uint32;
(*   %conv1.i.i374.5.4 = zext i8 %conv7.i.i384.4.4 to i32 *)
cast v_conv1_i_i374_5_4@uint32 v_conv7_i_i384_4_4@uint8;
(*   %mul.i.i375.5.4 = mul nsw i32 %and.i.i373.5.4, %conv1.i.i374.5.4 *)
mul v_mul_i_i375_5_4 v_and_i_i373_5_4 v_conv1_i_i374_5_4;
(*   %conv2.i.i376.5.4 = zext i8 %conv3.i.i378.4.4 to i32 *)
cast v_conv2_i_i376_5_4@uint32 v_conv3_i_i378_4_4@uint8;
(*   %xor.i.i377.5.4 = xor i32 %conv2.i.i376.5.4, %mul.i.i375.5.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i377_5_4 v_conv2_i_i376_5_4 v_mul_i_i375_5_4;
(*   %conv3.i.i378.5.4 = trunc i32 %xor.i.i377.5.4 to i8 *)
split tmp_v_xor_i_i377_5_4 v_conv3_i_i378_5_4 v_xor_i_i377_5_4 8;
vpc v_conv3_i_i378_5_4@uint8 v_conv3_i_i378_5_4@uint32;
(*   %conv4.i.i379.5.4 = zext i8 %conv5.i.i381.4.4 to i32 *)
cast v_conv4_i_i379_5_4@uint32 v_conv5_i_i381_4_4@uint8;
(*   %shr.i.i380.5.4 = ashr i32 %conv4.i.i379.5.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i380_5_4 tmp_to_be_used v_conv4_i_i379_5_4 1;
(*   %conv5.i.i381.5.4 = trunc i32 %shr.i.i380.5.4 to i8 *)
split tmp_v_shr_i_i380_5_4 v_conv5_i_i381_5_4 v_shr_i_i380_5_4 8;
vpc v_conv5_i_i381_5_4@uint8 v_conv5_i_i381_5_4@uint32;
(*   %conv6.i.i382.5.4 = zext i8 %conv7.i.i384.4.4 to i32 *)
cast v_conv6_i_i382_5_4@uint32 v_conv7_i_i384_4_4@uint8;
(*   %shl.i.i383.5.4 = shl i32 %conv6.i.i382.5.4, 1 *)
shls discard_173 v_shl_i_i383_5_4 v_conv6_i_i382_5_4 1;
(*   %conv7.i.i384.5.4 = trunc i32 %shl.i.i383.5.4 to i8 *)
split tmp_v_shl_i_i383_5_4 v_conv7_i_i384_5_4 v_shl_i_i383_5_4 8;
vpc v_conv7_i_i384_5_4@uint8 v_conv7_i_i384_5_4@uint32;
(*   %conv.i.i372.6.4 = zext i8 %conv5.i.i381.5.4 to i32 *)
cast v_conv_i_i372_6_4@uint32 v_conv5_i_i381_5_4@uint8;
(*   %and.i.i373.6.4 = and i32 %conv.i.i372.6.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i373_6_4 v_conv_i_i372_6_4 (0x1)@uint32;
(*   %conv1.i.i374.6.4 = zext i8 %conv7.i.i384.5.4 to i32 *)
cast v_conv1_i_i374_6_4@uint32 v_conv7_i_i384_5_4@uint8;
(*   %mul.i.i375.6.4 = mul nsw i32 %and.i.i373.6.4, %conv1.i.i374.6.4 *)
mul v_mul_i_i375_6_4 v_and_i_i373_6_4 v_conv1_i_i374_6_4;
(*   %conv2.i.i376.6.4 = zext i8 %conv3.i.i378.5.4 to i32 *)
cast v_conv2_i_i376_6_4@uint32 v_conv3_i_i378_5_4@uint8;
(*   %xor.i.i377.6.4 = xor i32 %conv2.i.i376.6.4, %mul.i.i375.6.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i377_6_4 v_conv2_i_i376_6_4 v_mul_i_i375_6_4;
(*   %conv3.i.i378.6.4 = trunc i32 %xor.i.i377.6.4 to i8 *)
split tmp_v_xor_i_i377_6_4 v_conv3_i_i378_6_4 v_xor_i_i377_6_4 8;
vpc v_conv3_i_i378_6_4@uint8 v_conv3_i_i378_6_4@uint32;
(*   %conv4.i.i379.6.4 = zext i8 %conv5.i.i381.5.4 to i32 *)
cast v_conv4_i_i379_6_4@uint32 v_conv5_i_i381_5_4@uint8;
(*   %shr.i.i380.6.4 = ashr i32 %conv4.i.i379.6.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i380_6_4 tmp_to_be_used v_conv4_i_i379_6_4 1;
(*   %conv5.i.i381.6.4 = trunc i32 %shr.i.i380.6.4 to i8 *)
split tmp_v_shr_i_i380_6_4 v_conv5_i_i381_6_4 v_shr_i_i380_6_4 8;
vpc v_conv5_i_i381_6_4@uint8 v_conv5_i_i381_6_4@uint32;
(*   %conv6.i.i382.6.4 = zext i8 %conv7.i.i384.5.4 to i32 *)
cast v_conv6_i_i382_6_4@uint32 v_conv7_i_i384_5_4@uint8;
(*   %shl.i.i383.6.4 = shl i32 %conv6.i.i382.6.4, 1 *)
shls discard_174 v_shl_i_i383_6_4 v_conv6_i_i382_6_4 1;
(*   %conv7.i.i384.6.4 = trunc i32 %shl.i.i383.6.4 to i8 *)
split tmp_v_shl_i_i383_6_4 v_conv7_i_i384_6_4 v_shl_i_i383_6_4 8;
vpc v_conv7_i_i384_6_4@uint8 v_conv7_i_i384_6_4@uint32;
(*   %conv.i.i372.7.4 = zext i8 %conv5.i.i381.6.4 to i32 *)
cast v_conv_i_i372_7_4@uint32 v_conv5_i_i381_6_4@uint8;
(*   %and.i.i373.7.4 = and i32 %conv.i.i372.7.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i373_7_4 v_conv_i_i372_7_4 (0x1)@uint32;
(*   %conv1.i.i374.7.4 = zext i8 %conv7.i.i384.6.4 to i32 *)
cast v_conv1_i_i374_7_4@uint32 v_conv7_i_i384_6_4@uint8;
(*   %mul.i.i375.7.4 = mul nsw i32 %and.i.i373.7.4, %conv1.i.i374.7.4 *)
mul v_mul_i_i375_7_4 v_and_i_i373_7_4 v_conv1_i_i374_7_4;
(*   %conv2.i.i376.7.4 = zext i8 %conv3.i.i378.6.4 to i32 *)
cast v_conv2_i_i376_7_4@uint32 v_conv3_i_i378_6_4@uint8;
(*   %xor.i.i377.7.4 = xor i32 %conv2.i.i376.7.4, %mul.i.i375.7.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i377_7_4 v_conv2_i_i376_7_4 v_mul_i_i375_7_4;
(*   %conv3.i.i378.7.4 = trunc i32 %xor.i.i377.7.4 to i8 *)
split tmp_v_xor_i_i377_7_4 v_conv3_i_i378_7_4 v_xor_i_i377_7_4 8;
vpc v_conv3_i_i378_7_4@uint8 v_conv3_i_i378_7_4@uint32;
(*   %arrayidx6.i388.4 = getelementptr inbounds i8, i8* %arraydecay9, i64 4 *)
(*   store i8 %conv3.i.i378.7.4, i8* %arrayidx6.i388.4, align 1 *)
mov a2b_4 v_conv3_i_i378_7_4;
(*   %50 = load i8, i8* %c, align 1 *)
mov v50 c_0;
(*   %conv.i336 = zext i8 %50 to i32 *)
cast v_conv_i336@uint32 v50@uint8;
(*   %51 = load i8, i8* %r, align 1 *)
mov v51 r_0;
(*   %conv5.i341 = zext i8 %51 to i32 *)
cast v_conv5_i341@uint32 v51@uint8;
(*   %xor.i342 = xor i32 %conv.i336, %conv5.i341 *)
(* You may need to modify here *)
xor uint32 v_xor_i342 v_conv_i336 v_conv5_i341;
(*   %conv6.i343 = trunc i32 %xor.i342 to i8 *)
split tmp_v_xor_i342 v_conv6_i343 v_xor_i342 8;
vpc v_conv6_i343@uint8 v_conv6_i343@uint32;
(*   store i8 %conv6.i343, i8* %c, align 1 *)
mov c_0 v_conv6_i343;
(*   %scevgep52 = getelementptr i8, i8* %c, i64 1 *)
(*   %scevgep59 = getelementptr i8, i8* %r, i64 1 *)
(*   %52 = load i8, i8* %scevgep52, align 1 *)
mov v52 c_1;
(*   %conv.i336.1 = zext i8 %52 to i32 *)
cast v_conv_i336_1@uint32 v52@uint8;
(*   %53 = load i8, i8* %scevgep59, align 1 *)
mov v53 r_1;
(*   %conv5.i341.1 = zext i8 %53 to i32 *)
cast v_conv5_i341_1@uint32 v53@uint8;
(*   %xor.i342.1 = xor i32 %conv.i336.1, %conv5.i341.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i342_1 v_conv_i336_1 v_conv5_i341_1;
(*   %conv6.i343.1 = trunc i32 %xor.i342.1 to i8 *)
split tmp_v_xor_i342_1 v_conv6_i343_1 v_xor_i342_1 8;
vpc v_conv6_i343_1@uint8 v_conv6_i343_1@uint32;
(*   %scevgep61.1 = getelementptr i8, i8* %c, i64 1 *)
(*   store i8 %conv6.i343.1, i8* %scevgep61.1, align 1 *)
mov c_1 v_conv6_i343_1;
(*   %scevgep52.1 = getelementptr i8, i8* %scevgep52, i64 1 *)
(*   %scevgep59.1 = getelementptr i8, i8* %scevgep59, i64 1 *)
(*   %54 = load i8, i8* %scevgep52.1, align 1 *)
mov v54 c_2;
(*   %conv.i336.2 = zext i8 %54 to i32 *)
cast v_conv_i336_2@uint32 v54@uint8;
(*   %55 = load i8, i8* %scevgep59.1, align 1 *)
mov v55 r_2;
(*   %conv5.i341.2 = zext i8 %55 to i32 *)
cast v_conv5_i341_2@uint32 v55@uint8;
(*   %xor.i342.2 = xor i32 %conv.i336.2, %conv5.i341.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i342_2 v_conv_i336_2 v_conv5_i341_2;
(*   %conv6.i343.2 = trunc i32 %xor.i342.2 to i8 *)
split tmp_v_xor_i342_2 v_conv6_i343_2 v_xor_i342_2 8;
vpc v_conv6_i343_2@uint8 v_conv6_i343_2@uint32;
(*   %scevgep61.2 = getelementptr i8, i8* %c, i64 2 *)
(*   store i8 %conv6.i343.2, i8* %scevgep61.2, align 1 *)
mov c_2 v_conv6_i343_2;
(*   %scevgep52.2 = getelementptr i8, i8* %scevgep52.1, i64 1 *)
(*   %scevgep59.2 = getelementptr i8, i8* %scevgep59.1, i64 1 *)
(*   %56 = load i8, i8* %scevgep52.2, align 1 *)
mov v56 c_3;
(*   %conv.i336.3 = zext i8 %56 to i32 *)
cast v_conv_i336_3@uint32 v56@uint8;
(*   %57 = load i8, i8* %scevgep59.2, align 1 *)
mov v57 r_3;
(*   %conv5.i341.3 = zext i8 %57 to i32 *)
cast v_conv5_i341_3@uint32 v57@uint8;
(*   %xor.i342.3 = xor i32 %conv.i336.3, %conv5.i341.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i342_3 v_conv_i336_3 v_conv5_i341_3;
(*   %conv6.i343.3 = trunc i32 %xor.i342.3 to i8 *)
split tmp_v_xor_i342_3 v_conv6_i343_3 v_xor_i342_3 8;
vpc v_conv6_i343_3@uint8 v_conv6_i343_3@uint32;
(*   %scevgep61.3 = getelementptr i8, i8* %c, i64 3 *)
(*   store i8 %conv6.i343.3, i8* %scevgep61.3, align 1 *)
mov c_3 v_conv6_i343_3;
(*   %scevgep52.3 = getelementptr i8, i8* %scevgep52.2, i64 1 *)
(*   %scevgep59.3 = getelementptr i8, i8* %scevgep59.2, i64 1 *)
(*   %58 = load i8, i8* %scevgep52.3, align 1 *)
mov v58 c_4;
(*   %conv.i336.4 = zext i8 %58 to i32 *)
cast v_conv_i336_4@uint32 v58@uint8;
(*   %59 = load i8, i8* %scevgep59.3, align 1 *)
mov v59 r_4;
(*   %conv5.i341.4 = zext i8 %59 to i32 *)
cast v_conv5_i341_4@uint32 v59@uint8;
(*   %xor.i342.4 = xor i32 %conv.i336.4, %conv5.i341.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i342_4 v_conv_i336_4 v_conv5_i341_4;
(*   %conv6.i343.4 = trunc i32 %xor.i342.4 to i8 *)
split tmp_v_xor_i342_4 v_conv6_i343_4 v_xor_i342_4 8;
vpc v_conv6_i343_4@uint8 v_conv6_i343_4@uint32;
(*   %scevgep61.4 = getelementptr i8, i8* %c, i64 4 *)
(*   store i8 %conv6.i343.4, i8* %scevgep61.4, align 1 *)
mov c_4 v_conv6_i343_4;
(*   %scevgep70 = getelementptr [5 x i8], [5 x i8]* %ab1, i64 0, i64 0 *)
(*   %60 = load i8, i8* %c, align 1 *)
mov v60 c_0;
(*   %conv.i311 = zext i8 %60 to i32 *)
cast v_conv_i311@uint32 v60@uint8;
(*   %61 = load i8, i8* %scevgep70, align 1 *)
mov v61 ab1_0;
(*   %conv5.i316 = zext i8 %61 to i32 *)
cast v_conv5_i316@uint32 v61@uint8;
(*   %xor.i317 = xor i32 %conv.i311, %conv5.i316 *)
(* You may need to modify here *)
xor uint32 v_xor_i317 v_conv_i311 v_conv5_i316;
(*   %conv6.i318 = trunc i32 %xor.i317 to i8 *)
split tmp_v_xor_i317 v_conv6_i318 v_xor_i317 8;
vpc v_conv6_i318@uint8 v_conv6_i318@uint32;
(*   store i8 %conv6.i318, i8* %c, align 1 *)
mov c_0 v_conv6_i318;
(*   %scevgep64 = getelementptr i8, i8* %c, i64 1 *)
(*   %scevgep69 = getelementptr [5 x i8], [5 x i8]* %ab1, i64 0, i64 1 *)
(*   %62 = bitcast i8* %scevgep69 to [5 x i8]* *)
(*   %scevgep70.1 = getelementptr [5 x i8], [5 x i8]* %62, i64 0, i64 0 *)
(*   %63 = load i8, i8* %scevgep64, align 1 *)
mov v63 c_1;
(*   %conv.i311.1 = zext i8 %63 to i32 *)
cast v_conv_i311_1@uint32 v63@uint8;
(*   %64 = load i8, i8* %scevgep70.1, align 1 *)
mov v64 ab1_1;
(*   %conv5.i316.1 = zext i8 %64 to i32 *)
cast v_conv5_i316_1@uint32 v64@uint8;
(*   %xor.i317.1 = xor i32 %conv.i311.1, %conv5.i316.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i317_1 v_conv_i311_1 v_conv5_i316_1;
(*   %conv6.i318.1 = trunc i32 %xor.i317.1 to i8 *)
split tmp_v_xor_i317_1 v_conv6_i318_1 v_xor_i317_1 8;
vpc v_conv6_i318_1@uint8 v_conv6_i318_1@uint32;
(*   %scevgep71.1 = getelementptr i8, i8* %c, i64 1 *)
(*   store i8 %conv6.i318.1, i8* %scevgep71.1, align 1 *)
mov c_1 v_conv6_i318_1;
(*   %scevgep64.1 = getelementptr i8, i8* %scevgep64, i64 1 *)
(*   %scevgep69.1 = getelementptr [5 x i8], [5 x i8]* %62, i64 0, i64 1 *)
(*   %65 = bitcast i8* %scevgep69.1 to [5 x i8]* *)
(*   %scevgep70.2 = getelementptr [5 x i8], [5 x i8]* %65, i64 0, i64 0 *)
(*   %66 = load i8, i8* %scevgep64.1, align 1 *)
mov v66 c_2;
(*   %conv.i311.2 = zext i8 %66 to i32 *)
cast v_conv_i311_2@uint32 v66@uint8;
(*   %67 = load i8, i8* %scevgep70.2, align 1 *)
mov v67 ab1_2;
(*   %conv5.i316.2 = zext i8 %67 to i32 *)
cast v_conv5_i316_2@uint32 v67@uint8;
(*   %xor.i317.2 = xor i32 %conv.i311.2, %conv5.i316.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i317_2 v_conv_i311_2 v_conv5_i316_2;
(*   %conv6.i318.2 = trunc i32 %xor.i317.2 to i8 *)
split tmp_v_xor_i317_2 v_conv6_i318_2 v_xor_i317_2 8;
vpc v_conv6_i318_2@uint8 v_conv6_i318_2@uint32;
(*   %scevgep71.2 = getelementptr i8, i8* %c, i64 2 *)
(*   store i8 %conv6.i318.2, i8* %scevgep71.2, align 1 *)
mov c_2 v_conv6_i318_2;
(*   %scevgep64.2 = getelementptr i8, i8* %scevgep64.1, i64 1 *)
(*   %scevgep69.2 = getelementptr [5 x i8], [5 x i8]* %65, i64 0, i64 1 *)
(*   %68 = bitcast i8* %scevgep69.2 to [5 x i8]* *)
(*   %scevgep70.3 = getelementptr [5 x i8], [5 x i8]* %68, i64 0, i64 0 *)
(*   %69 = load i8, i8* %scevgep64.2, align 1 *)
mov v69 c_3;
(*   %conv.i311.3 = zext i8 %69 to i32 *)
cast v_conv_i311_3@uint32 v69@uint8;
(*   %70 = load i8, i8* %scevgep70.3, align 1 *)
mov v70 ab1_3;
(*   %conv5.i316.3 = zext i8 %70 to i32 *)
cast v_conv5_i316_3@uint32 v70@uint8;
(*   %xor.i317.3 = xor i32 %conv.i311.3, %conv5.i316.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i317_3 v_conv_i311_3 v_conv5_i316_3;
(*   %conv6.i318.3 = trunc i32 %xor.i317.3 to i8 *)
split tmp_v_xor_i317_3 v_conv6_i318_3 v_xor_i317_3 8;
vpc v_conv6_i318_3@uint8 v_conv6_i318_3@uint32;
(*   %scevgep71.3 = getelementptr i8, i8* %c, i64 3 *)
(*   store i8 %conv6.i318.3, i8* %scevgep71.3, align 1 *)
mov c_3 v_conv6_i318_3;
(*   %scevgep64.3 = getelementptr i8, i8* %scevgep64.2, i64 1 *)
(*   %scevgep69.3 = getelementptr [5 x i8], [5 x i8]* %68, i64 0, i64 1 *)
(*   %71 = bitcast i8* %scevgep69.3 to [5 x i8]* *)
(*   %scevgep70.4 = getelementptr [5 x i8], [5 x i8]* %71, i64 0, i64 0 *)
(*   %72 = load i8, i8* %scevgep64.3, align 1 *)
mov v72 c_4;
(*   %conv.i311.4 = zext i8 %72 to i32 *)
cast v_conv_i311_4@uint32 v72@uint8;
(*   %73 = load i8, i8* %scevgep70.4, align 1 *)
mov v73 ab1_4;
(*   %conv5.i316.4 = zext i8 %73 to i32 *)
cast v_conv5_i316_4@uint32 v73@uint8;
(*   %xor.i317.4 = xor i32 %conv.i311.4, %conv5.i316.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i317_4 v_conv_i311_4 v_conv5_i316_4;
(*   %conv6.i318.4 = trunc i32 %xor.i317.4 to i8 *)
split tmp_v_xor_i317_4 v_conv6_i318_4 v_xor_i317_4 8;
vpc v_conv6_i318_4@uint8 v_conv6_i318_4@uint32;
(*   %scevgep71.4 = getelementptr i8, i8* %c, i64 4 *)
(*   store i8 %conv6.i318.4, i8* %scevgep71.4, align 1 *)
mov c_4 v_conv6_i318_4;
(*   %scevgep80 = getelementptr [5 x i8], [5 x i8]* %a1b, i64 0, i64 0 *)
(*   %74 = load i8, i8* %c, align 1 *)
mov v74 c_0;
(*   %conv.i286 = zext i8 %74 to i32 *)
cast v_conv_i286@uint32 v74@uint8;
(*   %75 = load i8, i8* %scevgep80, align 1 *)
mov v75 a1b_0;
(*   %conv5.i291 = zext i8 %75 to i32 *)
cast v_conv5_i291@uint32 v75@uint8;
(*   %xor.i292 = xor i32 %conv.i286, %conv5.i291 *)
(* You may need to modify here *)
xor uint32 v_xor_i292 v_conv_i286 v_conv5_i291;
(*   %conv6.i293 = trunc i32 %xor.i292 to i8 *)
split tmp_v_xor_i292 v_conv6_i293 v_xor_i292 8;
vpc v_conv6_i293@uint8 v_conv6_i293@uint32;
(*   store i8 %conv6.i293, i8* %c, align 1 *)
mov c_0 v_conv6_i293;
(*   %scevgep74 = getelementptr i8, i8* %c, i64 1 *)
(*   %scevgep79 = getelementptr [5 x i8], [5 x i8]* %a1b, i64 0, i64 1 *)
(*   %76 = bitcast i8* %scevgep79 to [5 x i8]* *)
(*   %scevgep80.1 = getelementptr [5 x i8], [5 x i8]* %76, i64 0, i64 0 *)
(*   %77 = load i8, i8* %scevgep74, align 1 *)
mov v77 c_1;
(*   %conv.i286.1 = zext i8 %77 to i32 *)
cast v_conv_i286_1@uint32 v77@uint8;
(*   %78 = load i8, i8* %scevgep80.1, align 1 *)
mov v78 a1b_1;
(*   %conv5.i291.1 = zext i8 %78 to i32 *)
cast v_conv5_i291_1@uint32 v78@uint8;
(*   %xor.i292.1 = xor i32 %conv.i286.1, %conv5.i291.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i292_1 v_conv_i286_1 v_conv5_i291_1;
(*   %conv6.i293.1 = trunc i32 %xor.i292.1 to i8 *)
split tmp_v_xor_i292_1 v_conv6_i293_1 v_xor_i292_1 8;
vpc v_conv6_i293_1@uint8 v_conv6_i293_1@uint32;
(*   %scevgep81.1 = getelementptr i8, i8* %c, i64 1 *)
(*   store i8 %conv6.i293.1, i8* %scevgep81.1, align 1 *)
mov c_1 v_conv6_i293_1;
(*   %scevgep74.1 = getelementptr i8, i8* %scevgep74, i64 1 *)
(*   %scevgep79.1 = getelementptr [5 x i8], [5 x i8]* %76, i64 0, i64 1 *)
(*   %79 = bitcast i8* %scevgep79.1 to [5 x i8]* *)
(*   %scevgep80.2 = getelementptr [5 x i8], [5 x i8]* %79, i64 0, i64 0 *)
(*   %80 = load i8, i8* %scevgep74.1, align 1 *)
mov v80 c_2;
(*   %conv.i286.2 = zext i8 %80 to i32 *)
cast v_conv_i286_2@uint32 v80@uint8;
(*   %81 = load i8, i8* %scevgep80.2, align 1 *)
mov v81 a1b_2;
(*   %conv5.i291.2 = zext i8 %81 to i32 *)
cast v_conv5_i291_2@uint32 v81@uint8;
(*   %xor.i292.2 = xor i32 %conv.i286.2, %conv5.i291.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i292_2 v_conv_i286_2 v_conv5_i291_2;
(*   %conv6.i293.2 = trunc i32 %xor.i292.2 to i8 *)
split tmp_v_xor_i292_2 v_conv6_i293_2 v_xor_i292_2 8;
vpc v_conv6_i293_2@uint8 v_conv6_i293_2@uint32;
(*   %scevgep81.2 = getelementptr i8, i8* %c, i64 2 *)
(*   store i8 %conv6.i293.2, i8* %scevgep81.2, align 1 *)
mov c_2 v_conv6_i293_2;
(*   %scevgep74.2 = getelementptr i8, i8* %scevgep74.1, i64 1 *)
(*   %scevgep79.2 = getelementptr [5 x i8], [5 x i8]* %79, i64 0, i64 1 *)
(*   %82 = bitcast i8* %scevgep79.2 to [5 x i8]* *)
(*   %scevgep80.3 = getelementptr [5 x i8], [5 x i8]* %82, i64 0, i64 0 *)
(*   %83 = load i8, i8* %scevgep74.2, align 1 *)
mov v83 c_3;
(*   %conv.i286.3 = zext i8 %83 to i32 *)
cast v_conv_i286_3@uint32 v83@uint8;
(*   %84 = load i8, i8* %scevgep80.3, align 1 *)
mov v84 a1b_3;
(*   %conv5.i291.3 = zext i8 %84 to i32 *)
cast v_conv5_i291_3@uint32 v84@uint8;
(*   %xor.i292.3 = xor i32 %conv.i286.3, %conv5.i291.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i292_3 v_conv_i286_3 v_conv5_i291_3;
(*   %conv6.i293.3 = trunc i32 %xor.i292.3 to i8 *)
split tmp_v_xor_i292_3 v_conv6_i293_3 v_xor_i292_3 8;
vpc v_conv6_i293_3@uint8 v_conv6_i293_3@uint32;
(*   %scevgep81.3 = getelementptr i8, i8* %c, i64 3 *)
(*   store i8 %conv6.i293.3, i8* %scevgep81.3, align 1 *)
mov c_3 v_conv6_i293_3;
(*   %scevgep74.3 = getelementptr i8, i8* %scevgep74.2, i64 1 *)
(*   %scevgep79.3 = getelementptr [5 x i8], [5 x i8]* %82, i64 0, i64 1 *)
(*   %85 = bitcast i8* %scevgep79.3 to [5 x i8]* *)
(*   %scevgep80.4 = getelementptr [5 x i8], [5 x i8]* %85, i64 0, i64 0 *)
(*   %86 = load i8, i8* %scevgep74.3, align 1 *)
mov v86 c_4;
(*   %conv.i286.4 = zext i8 %86 to i32 *)
cast v_conv_i286_4@uint32 v86@uint8;
(*   %87 = load i8, i8* %scevgep80.4, align 1 *)
mov v87 a1b_4;
(*   %conv5.i291.4 = zext i8 %87 to i32 *)
cast v_conv5_i291_4@uint32 v87@uint8;
(*   %xor.i292.4 = xor i32 %conv.i286.4, %conv5.i291.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i292_4 v_conv_i286_4 v_conv5_i291_4;
(*   %conv6.i293.4 = trunc i32 %xor.i292.4 to i8 *)
split tmp_v_xor_i292_4 v_conv6_i293_4 v_xor_i292_4 8;
vpc v_conv6_i293_4@uint8 v_conv6_i293_4@uint32;
(*   %scevgep81.4 = getelementptr i8, i8* %c, i64 4 *)
(*   store i8 %conv6.i293.4, i8* %scevgep81.4, align 1 *)
mov c_4 v_conv6_i293_4;
(*   %88 = load i8, i8* %c, align 1 *)
mov v88 c_0;
(*   %conv.i261 = zext i8 %88 to i32 *)
cast v_conv_i261@uint32 v88@uint8;
(*   %arrayidx4.i265 = getelementptr inbounds i8, i8* %r, i64 1 *)
(*   %89 = load i8, i8* %arrayidx4.i265, align 1 *)
mov v89 r_1;
(*   %conv5.i266 = zext i8 %89 to i32 *)
cast v_conv5_i266@uint32 v89@uint8;
(*   %xor.i267 = xor i32 %conv.i261, %conv5.i266 *)
(* You may need to modify here *)
xor uint32 v_xor_i267 v_conv_i261 v_conv5_i266;
(*   %conv6.i268 = trunc i32 %xor.i267 to i8 *)
split tmp_v_xor_i267 v_conv6_i268 v_xor_i267 8;
vpc v_conv6_i268@uint8 v_conv6_i268@uint32;
(*   store i8 %conv6.i268, i8* %c, align 1 *)
mov c_0 v_conv6_i268;
(*   %scevgep84 = getelementptr i8, i8* %c, i64 1 *)
(*   %90 = load i8, i8* %scevgep84, align 1 *)
mov v90 c_1;
(*   %conv.i261.1 = zext i8 %90 to i32 *)
cast v_conv_i261_1@uint32 v90@uint8;
(*   %arrayidx4.i265.1 = getelementptr inbounds i8, i8* %r, i64 2 *)
(*   %91 = load i8, i8* %arrayidx4.i265.1, align 1 *)
mov v91 r_2;
(*   %conv5.i266.1 = zext i8 %91 to i32 *)
cast v_conv5_i266_1@uint32 v91@uint8;
(*   %xor.i267.1 = xor i32 %conv.i261.1, %conv5.i266.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i267_1 v_conv_i261_1 v_conv5_i266_1;
(*   %conv6.i268.1 = trunc i32 %xor.i267.1 to i8 *)
split tmp_v_xor_i267_1 v_conv6_i268_1 v_xor_i267_1 8;
vpc v_conv6_i268_1@uint8 v_conv6_i268_1@uint32;
(*   %scevgep90.1 = getelementptr i8, i8* %c, i64 1 *)
(*   store i8 %conv6.i268.1, i8* %scevgep90.1, align 1 *)
mov c_1 v_conv6_i268_1;
(*   %scevgep84.1 = getelementptr i8, i8* %scevgep84, i64 1 *)
(*   %92 = load i8, i8* %scevgep84.1, align 1 *)
mov v92 c_2;
(*   %conv.i261.2 = zext i8 %92 to i32 *)
cast v_conv_i261_2@uint32 v92@uint8;
(*   %arrayidx4.i265.2 = getelementptr inbounds i8, i8* %r, i64 3 *)
(*   %93 = load i8, i8* %arrayidx4.i265.2, align 1 *)
mov v93 r_3;
(*   %conv5.i266.2 = zext i8 %93 to i32 *)
cast v_conv5_i266_2@uint32 v93@uint8;
(*   %xor.i267.2 = xor i32 %conv.i261.2, %conv5.i266.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i267_2 v_conv_i261_2 v_conv5_i266_2;
(*   %conv6.i268.2 = trunc i32 %xor.i267.2 to i8 *)
split tmp_v_xor_i267_2 v_conv6_i268_2 v_xor_i267_2 8;
vpc v_conv6_i268_2@uint8 v_conv6_i268_2@uint32;
(*   %scevgep90.2 = getelementptr i8, i8* %c, i64 2 *)
(*   store i8 %conv6.i268.2, i8* %scevgep90.2, align 1 *)
mov c_2 v_conv6_i268_2;
(*   %scevgep84.2 = getelementptr i8, i8* %scevgep84.1, i64 1 *)
(*   %94 = load i8, i8* %scevgep84.2, align 1 *)
mov v94 c_3;
(*   %conv.i261.3 = zext i8 %94 to i32 *)
cast v_conv_i261_3@uint32 v94@uint8;
(*   %arrayidx4.i265.3 = getelementptr inbounds i8, i8* %r, i64 4 *)
(*   %95 = load i8, i8* %arrayidx4.i265.3, align 1 *)
mov v95 r_4;
(*   %conv5.i266.3 = zext i8 %95 to i32 *)
cast v_conv5_i266_3@uint32 v95@uint8;
(*   %xor.i267.3 = xor i32 %conv.i261.3, %conv5.i266.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i267_3 v_conv_i261_3 v_conv5_i266_3;
(*   %conv6.i268.3 = trunc i32 %xor.i267.3 to i8 *)
split tmp_v_xor_i267_3 v_conv6_i268_3 v_xor_i267_3 8;
vpc v_conv6_i268_3@uint8 v_conv6_i268_3@uint32;
(*   %scevgep90.3 = getelementptr i8, i8* %c, i64 3 *)
(*   store i8 %conv6.i268.3, i8* %scevgep90.3, align 1 *)
mov c_3 v_conv6_i268_3;
(*   %scevgep84.3 = getelementptr i8, i8* %scevgep84.2, i64 1 *)
(*   %96 = load i8, i8* %scevgep84.3, align 1 *)
mov v96 c_4;
(*   %conv.i261.4 = zext i8 %96 to i32 *)
cast v_conv_i261_4@uint32 v96@uint8;
(*   %97 = load i8, i8* %r, align 1 *)
mov v97 r_0;
(*   %conv5.i266.4 = zext i8 %97 to i32 *)
cast v_conv5_i266_4@uint32 v97@uint8;
(*   %xor.i267.4 = xor i32 %conv.i261.4, %conv5.i266.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i267_4 v_conv_i261_4 v_conv5_i266_4;
(*   %conv6.i268.4 = trunc i32 %xor.i267.4 to i8 *)
split tmp_v_xor_i267_4 v_conv6_i268_4 v_xor_i267_4 8;
vpc v_conv6_i268_4@uint8 v_conv6_i268_4@uint32;
(*   %scevgep90.4 = getelementptr i8, i8* %c, i64 4 *)
(*   store i8 %conv6.i268.4, i8* %scevgep90.4, align 1 *)
mov c_4 v_conv6_i268_4;
(*   %scevgep99 = getelementptr [5 x i8], [5 x i8]* %ab2, i64 0, i64 0 *)
(*   %98 = load i8, i8* %c, align 1 *)
mov v98 c_0;
(*   %conv.i236 = zext i8 %98 to i32 *)
cast v_conv_i236@uint32 v98@uint8;
(*   %99 = load i8, i8* %scevgep99, align 1 *)
mov v99 ab2_0;
(*   %conv5.i241 = zext i8 %99 to i32 *)
cast v_conv5_i241@uint32 v99@uint8;
(*   %xor.i242 = xor i32 %conv.i236, %conv5.i241 *)
(* You may need to modify here *)
xor uint32 v_xor_i242 v_conv_i236 v_conv5_i241;
(*   %conv6.i243 = trunc i32 %xor.i242 to i8 *)
split tmp_v_xor_i242 v_conv6_i243 v_xor_i242 8;
vpc v_conv6_i243@uint8 v_conv6_i243@uint32;
(*   store i8 %conv6.i243, i8* %c, align 1 *)
mov c_0 v_conv6_i243;
(*   %scevgep93 = getelementptr i8, i8* %c, i64 1 *)
(*   %scevgep98 = getelementptr [5 x i8], [5 x i8]* %ab2, i64 0, i64 1 *)
(*   %100 = bitcast i8* %scevgep98 to [5 x i8]* *)
(*   %scevgep99.1 = getelementptr [5 x i8], [5 x i8]* %100, i64 0, i64 0 *)
(*   %101 = load i8, i8* %scevgep93, align 1 *)
mov v101 c_1;
(*   %conv.i236.1 = zext i8 %101 to i32 *)
cast v_conv_i236_1@uint32 v101@uint8;
(*   %102 = load i8, i8* %scevgep99.1, align 1 *)
mov v102 ab2_1;
(*   %conv5.i241.1 = zext i8 %102 to i32 *)
cast v_conv5_i241_1@uint32 v102@uint8;
(*   %xor.i242.1 = xor i32 %conv.i236.1, %conv5.i241.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i242_1 v_conv_i236_1 v_conv5_i241_1;
(*   %conv6.i243.1 = trunc i32 %xor.i242.1 to i8 *)
split tmp_v_xor_i242_1 v_conv6_i243_1 v_xor_i242_1 8;
vpc v_conv6_i243_1@uint8 v_conv6_i243_1@uint32;
(*   %scevgep100.1 = getelementptr i8, i8* %c, i64 1 *)
(*   store i8 %conv6.i243.1, i8* %scevgep100.1, align 1 *)
mov c_1 v_conv6_i243_1;
(*   %scevgep93.1 = getelementptr i8, i8* %scevgep93, i64 1 *)
(*   %scevgep98.1 = getelementptr [5 x i8], [5 x i8]* %100, i64 0, i64 1 *)
(*   %103 = bitcast i8* %scevgep98.1 to [5 x i8]* *)
(*   %scevgep99.2 = getelementptr [5 x i8], [5 x i8]* %103, i64 0, i64 0 *)
(*   %104 = load i8, i8* %scevgep93.1, align 1 *)
mov v104 c_2;
(*   %conv.i236.2 = zext i8 %104 to i32 *)
cast v_conv_i236_2@uint32 v104@uint8;
(*   %105 = load i8, i8* %scevgep99.2, align 1 *)
mov v105 ab2_2;
(*   %conv5.i241.2 = zext i8 %105 to i32 *)
cast v_conv5_i241_2@uint32 v105@uint8;
(*   %xor.i242.2 = xor i32 %conv.i236.2, %conv5.i241.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i242_2 v_conv_i236_2 v_conv5_i241_2;
(*   %conv6.i243.2 = trunc i32 %xor.i242.2 to i8 *)
split tmp_v_xor_i242_2 v_conv6_i243_2 v_xor_i242_2 8;
vpc v_conv6_i243_2@uint8 v_conv6_i243_2@uint32;
(*   %scevgep100.2 = getelementptr i8, i8* %c, i64 2 *)
(*   store i8 %conv6.i243.2, i8* %scevgep100.2, align 1 *)
mov c_2 v_conv6_i243_2;
(*   %scevgep93.2 = getelementptr i8, i8* %scevgep93.1, i64 1 *)
(*   %scevgep98.2 = getelementptr [5 x i8], [5 x i8]* %103, i64 0, i64 1 *)
(*   %106 = bitcast i8* %scevgep98.2 to [5 x i8]* *)
(*   %scevgep99.3 = getelementptr [5 x i8], [5 x i8]* %106, i64 0, i64 0 *)
(*   %107 = load i8, i8* %scevgep93.2, align 1 *)
mov v107 c_3;
(*   %conv.i236.3 = zext i8 %107 to i32 *)
cast v_conv_i236_3@uint32 v107@uint8;
(*   %108 = load i8, i8* %scevgep99.3, align 1 *)
mov v108 ab2_3;
(*   %conv5.i241.3 = zext i8 %108 to i32 *)
cast v_conv5_i241_3@uint32 v108@uint8;
(*   %xor.i242.3 = xor i32 %conv.i236.3, %conv5.i241.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i242_3 v_conv_i236_3 v_conv5_i241_3;
(*   %conv6.i243.3 = trunc i32 %xor.i242.3 to i8 *)
split tmp_v_xor_i242_3 v_conv6_i243_3 v_xor_i242_3 8;
vpc v_conv6_i243_3@uint8 v_conv6_i243_3@uint32;
(*   %scevgep100.3 = getelementptr i8, i8* %c, i64 3 *)
(*   store i8 %conv6.i243.3, i8* %scevgep100.3, align 1 *)
mov c_3 v_conv6_i243_3;
(*   %scevgep93.3 = getelementptr i8, i8* %scevgep93.2, i64 1 *)
(*   %scevgep98.3 = getelementptr [5 x i8], [5 x i8]* %106, i64 0, i64 1 *)
(*   %109 = bitcast i8* %scevgep98.3 to [5 x i8]* *)
(*   %scevgep99.4 = getelementptr [5 x i8], [5 x i8]* %109, i64 0, i64 0 *)
(*   %110 = load i8, i8* %scevgep93.3, align 1 *)
mov v110 c_4;
(*   %conv.i236.4 = zext i8 %110 to i32 *)
cast v_conv_i236_4@uint32 v110@uint8;
(*   %111 = load i8, i8* %scevgep99.4, align 1 *)
mov v111 ab2_4;
(*   %conv5.i241.4 = zext i8 %111 to i32 *)
cast v_conv5_i241_4@uint32 v111@uint8;
(*   %xor.i242.4 = xor i32 %conv.i236.4, %conv5.i241.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i242_4 v_conv_i236_4 v_conv5_i241_4;
(*   %conv6.i243.4 = trunc i32 %xor.i242.4 to i8 *)
split tmp_v_xor_i242_4 v_conv6_i243_4 v_xor_i242_4 8;
vpc v_conv6_i243_4@uint8 v_conv6_i243_4@uint32;
(*   %scevgep100.4 = getelementptr i8, i8* %c, i64 4 *)
(*   store i8 %conv6.i243.4, i8* %scevgep100.4, align 1 *)
mov c_4 v_conv6_i243_4;
(*   %scevgep109 = getelementptr [5 x i8], [5 x i8]* %a2b, i64 0, i64 0 *)
(*   %112 = load i8, i8* %c, align 1 *)
mov v112 c_0;
(*   %conv.i214 = zext i8 %112 to i32 *)
cast v_conv_i214@uint32 v112@uint8;
(*   %113 = load i8, i8* %scevgep109, align 1 *)
mov v113 a2b_0;
(*   %conv5.i219 = zext i8 %113 to i32 *)
cast v_conv5_i219@uint32 v113@uint8;
(*   %xor.i220 = xor i32 %conv.i214, %conv5.i219 *)
(* You may need to modify here *)
xor uint32 v_xor_i220 v_conv_i214 v_conv5_i219;
(*   %conv6.i221 = trunc i32 %xor.i220 to i8 *)
split tmp_v_xor_i220 v_conv6_i221 v_xor_i220 8;
vpc v_conv6_i221@uint8 v_conv6_i221@uint32;
(*   store i8 %conv6.i221, i8* %c, align 1 *)
mov c_0 v_conv6_i221;
(*   %scevgep103 = getelementptr i8, i8* %c, i64 1 *)
(*   %scevgep108 = getelementptr [5 x i8], [5 x i8]* %a2b, i64 0, i64 1 *)
(*   %114 = bitcast i8* %scevgep108 to [5 x i8]* *)
(*   %scevgep109.1 = getelementptr [5 x i8], [5 x i8]* %114, i64 0, i64 0 *)
(*   %115 = load i8, i8* %scevgep103, align 1 *)
mov v115 c_1;
(*   %conv.i214.1 = zext i8 %115 to i32 *)
cast v_conv_i214_1@uint32 v115@uint8;
(*   %116 = load i8, i8* %scevgep109.1, align 1 *)
mov v116 a2b_1;
(*   %conv5.i219.1 = zext i8 %116 to i32 *)
cast v_conv5_i219_1@uint32 v116@uint8;
(*   %xor.i220.1 = xor i32 %conv.i214.1, %conv5.i219.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i220_1 v_conv_i214_1 v_conv5_i219_1;
(*   %conv6.i221.1 = trunc i32 %xor.i220.1 to i8 *)
split tmp_v_xor_i220_1 v_conv6_i221_1 v_xor_i220_1 8;
vpc v_conv6_i221_1@uint8 v_conv6_i221_1@uint32;
(*   %scevgep110.1 = getelementptr i8, i8* %c, i64 1 *)
(*   store i8 %conv6.i221.1, i8* %scevgep110.1, align 1 *)
mov c_1 v_conv6_i221_1;
(*   %scevgep103.1 = getelementptr i8, i8* %scevgep103, i64 1 *)
(*   %scevgep108.1 = getelementptr [5 x i8], [5 x i8]* %114, i64 0, i64 1 *)
(*   %117 = bitcast i8* %scevgep108.1 to [5 x i8]* *)
(*   %scevgep109.2 = getelementptr [5 x i8], [5 x i8]* %117, i64 0, i64 0 *)
(*   %118 = load i8, i8* %scevgep103.1, align 1 *)
mov v118 c_2;
(*   %conv.i214.2 = zext i8 %118 to i32 *)
cast v_conv_i214_2@uint32 v118@uint8;
(*   %119 = load i8, i8* %scevgep109.2, align 1 *)
mov v119 a2b_2;
(*   %conv5.i219.2 = zext i8 %119 to i32 *)
cast v_conv5_i219_2@uint32 v119@uint8;
(*   %xor.i220.2 = xor i32 %conv.i214.2, %conv5.i219.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i220_2 v_conv_i214_2 v_conv5_i219_2;
(*   %conv6.i221.2 = trunc i32 %xor.i220.2 to i8 *)
split tmp_v_xor_i220_2 v_conv6_i221_2 v_xor_i220_2 8;
vpc v_conv6_i221_2@uint8 v_conv6_i221_2@uint32;
(*   %scevgep110.2 = getelementptr i8, i8* %c, i64 2 *)
(*   store i8 %conv6.i221.2, i8* %scevgep110.2, align 1 *)
mov c_2 v_conv6_i221_2;
(*   %scevgep103.2 = getelementptr i8, i8* %scevgep103.1, i64 1 *)
(*   %scevgep108.2 = getelementptr [5 x i8], [5 x i8]* %117, i64 0, i64 1 *)
(*   %120 = bitcast i8* %scevgep108.2 to [5 x i8]* *)
(*   %scevgep109.3 = getelementptr [5 x i8], [5 x i8]* %120, i64 0, i64 0 *)
(*   %121 = load i8, i8* %scevgep103.2, align 1 *)
mov v121 c_3;
(*   %conv.i214.3 = zext i8 %121 to i32 *)
cast v_conv_i214_3@uint32 v121@uint8;
(*   %122 = load i8, i8* %scevgep109.3, align 1 *)
mov v122 a2b_3;
(*   %conv5.i219.3 = zext i8 %122 to i32 *)
cast v_conv5_i219_3@uint32 v122@uint8;
(*   %xor.i220.3 = xor i32 %conv.i214.3, %conv5.i219.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i220_3 v_conv_i214_3 v_conv5_i219_3;
(*   %conv6.i221.3 = trunc i32 %xor.i220.3 to i8 *)
split tmp_v_xor_i220_3 v_conv6_i221_3 v_xor_i220_3 8;
vpc v_conv6_i221_3@uint8 v_conv6_i221_3@uint32;
(*   %scevgep110.3 = getelementptr i8, i8* %c, i64 3 *)
(*   store i8 %conv6.i221.3, i8* %scevgep110.3, align 1 *)
mov c_3 v_conv6_i221_3;
(*   %scevgep103.3 = getelementptr i8, i8* %scevgep103.2, i64 1 *)
(*   %scevgep108.3 = getelementptr [5 x i8], [5 x i8]* %120, i64 0, i64 1 *)
(*   %123 = bitcast i8* %scevgep108.3 to [5 x i8]* *)
(*   %scevgep109.4 = getelementptr [5 x i8], [5 x i8]* %123, i64 0, i64 0 *)
(*   %124 = load i8, i8* %scevgep103.3, align 1 *)
mov v124 c_4;
(*   %conv.i214.4 = zext i8 %124 to i32 *)
cast v_conv_i214_4@uint32 v124@uint8;
(*   %125 = load i8, i8* %scevgep109.4, align 1 *)
mov v125 a2b_4;
(*   %conv5.i219.4 = zext i8 %125 to i32 *)
cast v_conv5_i219_4@uint32 v125@uint8;
(*   %xor.i220.4 = xor i32 %conv.i214.4, %conv5.i219.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i220_4 v_conv_i214_4 v_conv5_i219_4;
(*   %conv6.i221.4 = trunc i32 %xor.i220.4 to i8 *)
split tmp_v_xor_i220_4 v_conv6_i221_4 v_xor_i220_4 8;
vpc v_conv6_i221_4@uint8 v_conv6_i221_4@uint32;
(*   %scevgep110.4 = getelementptr i8, i8* %c, i64 4 *)
(*   store i8 %conv6.i221.4, i8* %scevgep110.4, align 1 *)
mov c_4 v_conv6_i221_4;
(*   %126 = load i8, i8* %a, align 1 *)
mov v126 a_0;
(*   %scevgep49.1 = getelementptr i8, i8* %a, i64 1 *)
(*   %127 = load i8, i8* %scevgep49.1, align 1 *)
mov v127 a_1;
(*   %conv.i.i152.1 = zext i8 %127 to i32 *)
cast v_conv_i_i152_1@uint32 v127@uint8;
(*   %conv1.i.i153.1 = zext i8 %126 to i32 *)
cast v_conv1_i_i153_1@uint32 v126@uint8;
(*   %xor.i.i154.1 = xor i32 %conv1.i.i153.1, %conv.i.i152.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i154_1 v_conv1_i_i153_1 v_conv_i_i152_1;
(*   %conv2.i.i155.1 = trunc i32 %xor.i.i154.1 to i8 *)
split tmp_v_xor_i_i154_1 v_conv2_i_i155_1 v_xor_i_i154_1 8;
vpc v_conv2_i_i155_1@uint8 v_conv2_i_i155_1@uint32;
(*   %scevgep49.2 = getelementptr i8, i8* %a, i64 2 *)
(*   %128 = load i8, i8* %scevgep49.2, align 1 *)
mov v128 a_2;
(*   %conv.i.i152.2 = zext i8 %128 to i32 *)
cast v_conv_i_i152_2@uint32 v128@uint8;
(*   %conv1.i.i153.2 = zext i8 %conv2.i.i155.1 to i32 *)
cast v_conv1_i_i153_2@uint32 v_conv2_i_i155_1@uint8;
(*   %xor.i.i154.2 = xor i32 %conv1.i.i153.2, %conv.i.i152.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i154_2 v_conv1_i_i153_2 v_conv_i_i152_2;
(*   %conv2.i.i155.2 = trunc i32 %xor.i.i154.2 to i8 *)
split tmp_v_xor_i_i154_2 v_conv2_i_i155_2 v_xor_i_i154_2 8;
vpc v_conv2_i_i155_2@uint8 v_conv2_i_i155_2@uint32;
(*   %scevgep49.3 = getelementptr i8, i8* %a, i64 3 *)
(*   %129 = load i8, i8* %scevgep49.3, align 1 *)
mov v129 a_3;
(*   %conv.i.i152.3 = zext i8 %129 to i32 *)
cast v_conv_i_i152_3@uint32 v129@uint8;
(*   %conv1.i.i153.3 = zext i8 %conv2.i.i155.2 to i32 *)
cast v_conv1_i_i153_3@uint32 v_conv2_i_i155_2@uint8;
(*   %xor.i.i154.3 = xor i32 %conv1.i.i153.3, %conv.i.i152.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i154_3 v_conv1_i_i153_3 v_conv_i_i152_3;
(*   %conv2.i.i155.3 = trunc i32 %xor.i.i154.3 to i8 *)
split tmp_v_xor_i_i154_3 v_conv2_i_i155_3 v_xor_i_i154_3 8;
vpc v_conv2_i_i155_3@uint8 v_conv2_i_i155_3@uint32;
(*   %scevgep49.4 = getelementptr i8, i8* %a, i64 4 *)
(*   %130 = load i8, i8* %scevgep49.4, align 1 *)
mov v130 a_4;
(*   %conv.i.i152.4 = zext i8 %130 to i32 *)
cast v_conv_i_i152_4@uint32 v130@uint8;
(*   %conv1.i.i153.4 = zext i8 %conv2.i.i155.3 to i32 *)
cast v_conv1_i_i153_4@uint32 v_conv2_i_i155_3@uint8;
(*   %xor.i.i154.4 = xor i32 %conv1.i.i153.4, %conv.i.i152.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i154_4 v_conv1_i_i153_4 v_conv_i_i152_4;
(*   %conv2.i.i155.4 = trunc i32 %xor.i.i154.4 to i8 *)
split tmp_v_xor_i_i154_4 v_conv2_i_i155_4 v_xor_i_i154_4 8;
vpc v_conv2_i_i155_4@uint8 v_conv2_i_i155_4@uint32;
(*   %131 = load i8, i8* %b, align 1 *)
mov v131 b_0;
(*   %scevgep45.1 = getelementptr i8, i8* %b, i64 1 *)
(*   %132 = load i8, i8* %scevgep45.1, align 1 *)
mov v132 b_1;
(*   %conv.i.i92.1 = zext i8 %132 to i32 *)
cast v_conv_i_i92_1@uint32 v132@uint8;
(*   %conv1.i.i93.1 = zext i8 %131 to i32 *)
cast v_conv1_i_i93_1@uint32 v131@uint8;
(*   %xor.i.i94.1 = xor i32 %conv1.i.i93.1, %conv.i.i92.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i94_1 v_conv1_i_i93_1 v_conv_i_i92_1;
(*   %conv2.i.i95.1 = trunc i32 %xor.i.i94.1 to i8 *)
split tmp_v_xor_i_i94_1 v_conv2_i_i95_1 v_xor_i_i94_1 8;
vpc v_conv2_i_i95_1@uint8 v_conv2_i_i95_1@uint32;
(*   %scevgep45.2 = getelementptr i8, i8* %b, i64 2 *)
(*   %133 = load i8, i8* %scevgep45.2, align 1 *)
mov v133 b_2;
(*   %conv.i.i92.2 = zext i8 %133 to i32 *)
cast v_conv_i_i92_2@uint32 v133@uint8;
(*   %conv1.i.i93.2 = zext i8 %conv2.i.i95.1 to i32 *)
cast v_conv1_i_i93_2@uint32 v_conv2_i_i95_1@uint8;
(*   %xor.i.i94.2 = xor i32 %conv1.i.i93.2, %conv.i.i92.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i94_2 v_conv1_i_i93_2 v_conv_i_i92_2;
(*   %conv2.i.i95.2 = trunc i32 %xor.i.i94.2 to i8 *)
split tmp_v_xor_i_i94_2 v_conv2_i_i95_2 v_xor_i_i94_2 8;
vpc v_conv2_i_i95_2@uint8 v_conv2_i_i95_2@uint32;
(*   %scevgep45.3 = getelementptr i8, i8* %b, i64 3 *)
(*   %134 = load i8, i8* %scevgep45.3, align 1 *)
mov v134 b_3;
(*   %conv.i.i92.3 = zext i8 %134 to i32 *)
cast v_conv_i_i92_3@uint32 v134@uint8;
(*   %conv1.i.i93.3 = zext i8 %conv2.i.i95.2 to i32 *)
cast v_conv1_i_i93_3@uint32 v_conv2_i_i95_2@uint8;
(*   %xor.i.i94.3 = xor i32 %conv1.i.i93.3, %conv.i.i92.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i94_3 v_conv1_i_i93_3 v_conv_i_i92_3;
(*   %conv2.i.i95.3 = trunc i32 %xor.i.i94.3 to i8 *)
split tmp_v_xor_i_i94_3 v_conv2_i_i95_3 v_xor_i_i94_3 8;
vpc v_conv2_i_i95_3@uint8 v_conv2_i_i95_3@uint32;
(*   %scevgep45.4 = getelementptr i8, i8* %b, i64 4 *)
(*   %135 = load i8, i8* %scevgep45.4, align 1 *)
mov v135 b_4;
(*   %conv.i.i92.4 = zext i8 %135 to i32 *)
cast v_conv_i_i92_4@uint32 v135@uint8;
(*   %conv1.i.i93.4 = zext i8 %conv2.i.i95.3 to i32 *)
cast v_conv1_i_i93_4@uint32 v_conv2_i_i95_3@uint8;
(*   %xor.i.i94.4 = xor i32 %conv1.i.i93.4, %conv.i.i92.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i94_4 v_conv1_i_i93_4 v_conv_i_i92_4;
(*   %conv2.i.i95.4 = trunc i32 %xor.i.i94.4 to i8 *)
split tmp_v_xor_i_i94_4 v_conv2_i_i95_4 v_xor_i_i94_4 8;
vpc v_conv2_i_i95_4@uint8 v_conv2_i_i95_4@uint32;
(*   %conv.i = zext i8 %conv2.i.i95.4 to i32 *)
cast v_conv_i@uint32 v_conv2_i_i95_4@uint8;
(*   %and.i = and i32 %conv.i, 1 *)
(* You may need to modify here *)
and uint32 v_and_i v_conv_i (0x1)@uint32;
(*   %conv1.i = zext i8 %conv2.i.i155.4 to i32 *)
cast v_conv1_i@uint32 v_conv2_i_i155_4@uint8;
(*   %mul.i = mul nsw i32 %and.i, %conv1.i *)
mul v_mul_i v_and_i v_conv1_i;
(*   %conv3.i = trunc i32 %mul.i to i8 *)
split tmp_v_mul_i v_conv3_i v_mul_i 8;
vpc v_conv3_i@uint8 v_conv3_i@uint32;
(*   %conv4.i = zext i8 %conv2.i.i95.4 to i32 *)
cast v_conv4_i@uint32 v_conv2_i_i95_4@uint8;
(*   %shr.i = ashr i32 %conv4.i, 1 *)
(* You may need to modify here *)
split v_shr_i tmp_to_be_used v_conv4_i 1;
(*   %conv5.i = trunc i32 %shr.i to i8 *)
split tmp_v_shr_i v_conv5_i v_shr_i 8;
vpc v_conv5_i@uint8 v_conv5_i@uint32;
(*   %conv6.i = zext i8 %conv2.i.i155.4 to i32 *)
cast v_conv6_i@uint32 v_conv2_i_i155_4@uint8;
(*   %shl.i = shl i32 %conv6.i, 1 *)
shls discard_175 v_shl_i v_conv6_i 1;
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
shls discard_176 v_shl_i_1 v_conv6_i_1 1;
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
shls discard_177 v_shl_i_2 v_conv6_i_2 1;
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
shls discard_178 v_shl_i_3 v_conv6_i_3 1;
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
shls discard_179 v_shl_i_4 v_conv6_i_4 1;
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
shls discard_180 v_shl_i_5 v_conv6_i_5 1;
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
shls discard_181 v_shl_i_6 v_conv6_i_6 1;
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
(*   store i8 %conv3.i.7, i8* %AB, align 1 *)
mov AB_0 v_conv3_i_7;
(*   %136 = load i8, i8* %c, align 1 *)
mov v136 c_0;
(*   %scevgep.1 = getelementptr i8, i8* %c, i64 1 *)
(*   %137 = load i8, i8* %scevgep.1, align 1 *)
mov v137 c_1;
(*   %conv.i.i26.1 = zext i8 %137 to i32 *)
cast v_conv_i_i26_1@uint32 v137@uint8;
(*   %conv1.i.i27.1 = zext i8 %136 to i32 *)
cast v_conv1_i_i27_1@uint32 v136@uint8;
(*   %xor.i.i28.1 = xor i32 %conv1.i.i27.1, %conv.i.i26.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i28_1 v_conv1_i_i27_1 v_conv_i_i26_1;
(*   %conv2.i.i29.1 = trunc i32 %xor.i.i28.1 to i8 *)
split tmp_v_xor_i_i28_1 v_conv2_i_i29_1 v_xor_i_i28_1 8;
vpc v_conv2_i_i29_1@uint8 v_conv2_i_i29_1@uint32;
(*   %scevgep.2 = getelementptr i8, i8* %c, i64 2 *)
(*   %138 = load i8, i8* %scevgep.2, align 1 *)
mov v138 c_2;
(*   %conv.i.i26.2 = zext i8 %138 to i32 *)
cast v_conv_i_i26_2@uint32 v138@uint8;
(*   %conv1.i.i27.2 = zext i8 %conv2.i.i29.1 to i32 *)
cast v_conv1_i_i27_2@uint32 v_conv2_i_i29_1@uint8;
(*   %xor.i.i28.2 = xor i32 %conv1.i.i27.2, %conv.i.i26.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i28_2 v_conv1_i_i27_2 v_conv_i_i26_2;
(*   %conv2.i.i29.2 = trunc i32 %xor.i.i28.2 to i8 *)
split tmp_v_xor_i_i28_2 v_conv2_i_i29_2 v_xor_i_i28_2 8;
vpc v_conv2_i_i29_2@uint8 v_conv2_i_i29_2@uint32;
(*   %scevgep.3 = getelementptr i8, i8* %c, i64 3 *)
(*   %139 = load i8, i8* %scevgep.3, align 1 *)
mov v139 c_3;
(*   %conv.i.i26.3 = zext i8 %139 to i32 *)
cast v_conv_i_i26_3@uint32 v139@uint8;
(*   %conv1.i.i27.3 = zext i8 %conv2.i.i29.2 to i32 *)
cast v_conv1_i_i27_3@uint32 v_conv2_i_i29_2@uint8;
(*   %xor.i.i28.3 = xor i32 %conv1.i.i27.3, %conv.i.i26.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i28_3 v_conv1_i_i27_3 v_conv_i_i26_3;
(*   %conv2.i.i29.3 = trunc i32 %xor.i.i28.3 to i8 *)
split tmp_v_xor_i_i28_3 v_conv2_i_i29_3 v_xor_i_i28_3 8;
vpc v_conv2_i_i29_3@uint8 v_conv2_i_i29_3@uint32;
(*   %scevgep.4 = getelementptr i8, i8* %c, i64 4 *)
(*   %140 = load i8, i8* %scevgep.4, align 1 *)
mov v140 c_4;
(*   %conv.i.i26.4 = zext i8 %140 to i32 *)
cast v_conv_i_i26_4@uint32 v140@uint8;
(*   %conv1.i.i27.4 = zext i8 %conv2.i.i29.3 to i32 *)
cast v_conv1_i_i27_4@uint32 v_conv2_i_i29_3@uint8;
(*   %xor.i.i28.4 = xor i32 %conv1.i.i27.4, %conv.i.i26.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i28_4 v_conv1_i_i27_4 v_conv_i_i26_4;
(*   %conv2.i.i29.4 = trunc i32 %xor.i.i28.4 to i8 *)
split tmp_v_xor_i_i28_4 v_conv2_i_i29_4 v_xor_i_i28_4 8;
vpc v_conv2_i_i29_4@uint8 v_conv2_i_i29_4@uint32;
(*   store i8 %conv2.i.i29.4, i8* %C, align 1 *)
mov C_0 v_conv2_i_i29_4;
(*   ret void *)


assert AB_0=C_0 && true;

mov _ AB_0@uint8;
mov _ C_0@uint8;


{
  true
  &&
  true
}

