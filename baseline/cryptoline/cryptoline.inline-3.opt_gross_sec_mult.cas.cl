proc main (uint8 a_0, uint8 a_1, uint8 a_2, uint8 a_3, uint8 b_0, uint8 b_1, uint8 b_2, uint8 b_3, uint8 r_0, uint8 r_1, uint8 r_2, uint8 r_3) =
{
  true
  &&
  true
}



(*   %a1b = alloca [4 x i8], align 1 *)
(*   %ab1 = alloca [4 x i8], align 1 *)
(*   %ab2 = alloca [4 x i8], align 1 *)
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
(*   %conv.i.i.1370 = zext i8 %3 to i32 *)
cast v_conv_i_i_1370@uint32 v3@uint8;
(*   %and.i.i.1371 = and i32 %conv.i.i.1370, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_1371 v_conv_i_i_1370 (0x1)@uint32;
(*   %conv1.i.i.1372 = zext i8 %2 to i32 *)
cast v_conv1_i_i_1372@uint32 v2@uint8;
(*   %mul.i.i.1373 = mul nsw i32 %and.i.i.1371, %conv1.i.i.1372 *)
mul v_mul_i_i_1373 v_and_i_i_1371 v_conv1_i_i_1372;
(*   %conv3.i.i.1374 = trunc i32 %mul.i.i.1373 to i8 *)
split tmp_v_mul_i_i_1373 v_conv3_i_i_1374 v_mul_i_i_1373 8;
vpc v_conv3_i_i_1374@uint8 v_conv3_i_i_1374@uint32;
(*   %conv4.i.i.1375 = zext i8 %3 to i32 *)
cast v_conv4_i_i_1375@uint32 v3@uint8;
(*   %shr.i.i.1376 = ashr i32 %conv4.i.i.1375, 1 *)
(* You may need to modify here *)
split v_shr_i_i_1376 tmp_to_be_used v_conv4_i_i_1375 1;
(*   %conv5.i.i.1377 = trunc i32 %shr.i.i.1376 to i8 *)
split tmp_v_shr_i_i_1376 v_conv5_i_i_1377 v_shr_i_i_1376 8;
vpc v_conv5_i_i_1377@uint8 v_conv5_i_i_1377@uint32;
(*   %conv6.i.i.1378 = zext i8 %2 to i32 *)
cast v_conv6_i_i_1378@uint32 v2@uint8;
(*   %shl.i.i.1379 = shl i32 %conv6.i.i.1378, 1 *)
shls discard_7 v_shl_i_i_1379 v_conv6_i_i_1378 1;
(*   %conv7.i.i.1380 = trunc i32 %shl.i.i.1379 to i8 *)
split tmp_v_shl_i_i_1379 v_conv7_i_i_1380 v_shl_i_i_1379 8;
vpc v_conv7_i_i_1380@uint8 v_conv7_i_i_1380@uint32;
(*   %conv.i.i.1.1 = zext i8 %conv5.i.i.1377 to i32 *)
cast v_conv_i_i_1_1@uint32 v_conv5_i_i_1377@uint8;
(*   %and.i.i.1.1 = and i32 %conv.i.i.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_1_1 v_conv_i_i_1_1 (0x1)@uint32;
(*   %conv1.i.i.1.1 = zext i8 %conv7.i.i.1380 to i32 *)
cast v_conv1_i_i_1_1@uint32 v_conv7_i_i_1380@uint8;
(*   %mul.i.i.1.1 = mul nsw i32 %and.i.i.1.1, %conv1.i.i.1.1 *)
mul v_mul_i_i_1_1 v_and_i_i_1_1 v_conv1_i_i_1_1;
(*   %conv2.i.i.1.1 = zext i8 %conv3.i.i.1374 to i32 *)
cast v_conv2_i_i_1_1@uint32 v_conv3_i_i_1374@uint8;
(*   %xor.i.i.1.1 = xor i32 %conv2.i.i.1.1, %mul.i.i.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_1_1 v_conv2_i_i_1_1 v_mul_i_i_1_1;
(*   %conv3.i.i.1.1 = trunc i32 %xor.i.i.1.1 to i8 *)
split tmp_v_xor_i_i_1_1 v_conv3_i_i_1_1 v_xor_i_i_1_1 8;
vpc v_conv3_i_i_1_1@uint8 v_conv3_i_i_1_1@uint32;
(*   %conv4.i.i.1.1 = zext i8 %conv5.i.i.1377 to i32 *)
cast v_conv4_i_i_1_1@uint32 v_conv5_i_i_1377@uint8;
(*   %shr.i.i.1.1 = ashr i32 %conv4.i.i.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i_1_1 tmp_to_be_used v_conv4_i_i_1_1 1;
(*   %conv5.i.i.1.1 = trunc i32 %shr.i.i.1.1 to i8 *)
split tmp_v_shr_i_i_1_1 v_conv5_i_i_1_1 v_shr_i_i_1_1 8;
vpc v_conv5_i_i_1_1@uint8 v_conv5_i_i_1_1@uint32;
(*   %conv6.i.i.1.1 = zext i8 %conv7.i.i.1380 to i32 *)
cast v_conv6_i_i_1_1@uint32 v_conv7_i_i_1380@uint8;
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
(*   %conv.i.i.2381 = zext i8 %5 to i32 *)
cast v_conv_i_i_2381@uint32 v5@uint8;
(*   %and.i.i.2382 = and i32 %conv.i.i.2381, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_2382 v_conv_i_i_2381 (0x1)@uint32;
(*   %conv1.i.i.2383 = zext i8 %4 to i32 *)
cast v_conv1_i_i_2383@uint32 v4@uint8;
(*   %mul.i.i.2384 = mul nsw i32 %and.i.i.2382, %conv1.i.i.2383 *)
mul v_mul_i_i_2384 v_and_i_i_2382 v_conv1_i_i_2383;
(*   %conv3.i.i.2385 = trunc i32 %mul.i.i.2384 to i8 *)
split tmp_v_mul_i_i_2384 v_conv3_i_i_2385 v_mul_i_i_2384 8;
vpc v_conv3_i_i_2385@uint8 v_conv3_i_i_2385@uint32;
(*   %conv4.i.i.2386 = zext i8 %5 to i32 *)
cast v_conv4_i_i_2386@uint32 v5@uint8;
(*   %shr.i.i.2387 = ashr i32 %conv4.i.i.2386, 1 *)
(* You may need to modify here *)
split v_shr_i_i_2387 tmp_to_be_used v_conv4_i_i_2386 1;
(*   %conv5.i.i.2388 = trunc i32 %shr.i.i.2387 to i8 *)
split tmp_v_shr_i_i_2387 v_conv5_i_i_2388 v_shr_i_i_2387 8;
vpc v_conv5_i_i_2388@uint8 v_conv5_i_i_2388@uint32;
(*   %conv6.i.i.2389 = zext i8 %4 to i32 *)
cast v_conv6_i_i_2389@uint32 v4@uint8;
(*   %shl.i.i.2390 = shl i32 %conv6.i.i.2389, 1 *)
shls discard_14 v_shl_i_i_2390 v_conv6_i_i_2389 1;
(*   %conv7.i.i.2391 = trunc i32 %shl.i.i.2390 to i8 *)
split tmp_v_shl_i_i_2390 v_conv7_i_i_2391 v_shl_i_i_2390 8;
vpc v_conv7_i_i_2391@uint8 v_conv7_i_i_2391@uint32;
(*   %conv.i.i.1.2 = zext i8 %conv5.i.i.2388 to i32 *)
cast v_conv_i_i_1_2@uint32 v_conv5_i_i_2388@uint8;
(*   %and.i.i.1.2 = and i32 %conv.i.i.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_1_2 v_conv_i_i_1_2 (0x1)@uint32;
(*   %conv1.i.i.1.2 = zext i8 %conv7.i.i.2391 to i32 *)
cast v_conv1_i_i_1_2@uint32 v_conv7_i_i_2391@uint8;
(*   %mul.i.i.1.2 = mul nsw i32 %and.i.i.1.2, %conv1.i.i.1.2 *)
mul v_mul_i_i_1_2 v_and_i_i_1_2 v_conv1_i_i_1_2;
(*   %conv2.i.i.1.2 = zext i8 %conv3.i.i.2385 to i32 *)
cast v_conv2_i_i_1_2@uint32 v_conv3_i_i_2385@uint8;
(*   %xor.i.i.1.2 = xor i32 %conv2.i.i.1.2, %mul.i.i.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_1_2 v_conv2_i_i_1_2 v_mul_i_i_1_2;
(*   %conv3.i.i.1.2 = trunc i32 %xor.i.i.1.2 to i8 *)
split tmp_v_xor_i_i_1_2 v_conv3_i_i_1_2 v_xor_i_i_1_2 8;
vpc v_conv3_i_i_1_2@uint8 v_conv3_i_i_1_2@uint32;
(*   %conv4.i.i.1.2 = zext i8 %conv5.i.i.2388 to i32 *)
cast v_conv4_i_i_1_2@uint32 v_conv5_i_i_2388@uint8;
(*   %shr.i.i.1.2 = ashr i32 %conv4.i.i.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i_1_2 tmp_to_be_used v_conv4_i_i_1_2 1;
(*   %conv5.i.i.1.2 = trunc i32 %shr.i.i.1.2 to i8 *)
split tmp_v_shr_i_i_1_2 v_conv5_i_i_1_2 v_shr_i_i_1_2 8;
vpc v_conv5_i_i_1_2@uint8 v_conv5_i_i_1_2@uint32;
(*   %conv6.i.i.1.2 = zext i8 %conv7.i.i.2391 to i32 *)
cast v_conv6_i_i_1_2@uint32 v_conv7_i_i_2391@uint8;
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
(*   %conv.i.i.3392 = zext i8 %7 to i32 *)
cast v_conv_i_i_3392@uint32 v7@uint8;
(*   %and.i.i.3393 = and i32 %conv.i.i.3392, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_3393 v_conv_i_i_3392 (0x1)@uint32;
(*   %conv1.i.i.3394 = zext i8 %6 to i32 *)
cast v_conv1_i_i_3394@uint32 v6@uint8;
(*   %mul.i.i.3395 = mul nsw i32 %and.i.i.3393, %conv1.i.i.3394 *)
mul v_mul_i_i_3395 v_and_i_i_3393 v_conv1_i_i_3394;
(*   %conv3.i.i.3396 = trunc i32 %mul.i.i.3395 to i8 *)
split tmp_v_mul_i_i_3395 v_conv3_i_i_3396 v_mul_i_i_3395 8;
vpc v_conv3_i_i_3396@uint8 v_conv3_i_i_3396@uint32;
(*   %conv4.i.i.3397 = zext i8 %7 to i32 *)
cast v_conv4_i_i_3397@uint32 v7@uint8;
(*   %shr.i.i.3398 = ashr i32 %conv4.i.i.3397, 1 *)
(* You may need to modify here *)
split v_shr_i_i_3398 tmp_to_be_used v_conv4_i_i_3397 1;
(*   %conv5.i.i.3399 = trunc i32 %shr.i.i.3398 to i8 *)
split tmp_v_shr_i_i_3398 v_conv5_i_i_3399 v_shr_i_i_3398 8;
vpc v_conv5_i_i_3399@uint8 v_conv5_i_i_3399@uint32;
(*   %conv6.i.i.3400 = zext i8 %6 to i32 *)
cast v_conv6_i_i_3400@uint32 v6@uint8;
(*   %shl.i.i.3401 = shl i32 %conv6.i.i.3400, 1 *)
shls discard_21 v_shl_i_i_3401 v_conv6_i_i_3400 1;
(*   %conv7.i.i.3402 = trunc i32 %shl.i.i.3401 to i8 *)
split tmp_v_shl_i_i_3401 v_conv7_i_i_3402 v_shl_i_i_3401 8;
vpc v_conv7_i_i_3402@uint8 v_conv7_i_i_3402@uint32;
(*   %conv.i.i.1.3 = zext i8 %conv5.i.i.3399 to i32 *)
cast v_conv_i_i_1_3@uint32 v_conv5_i_i_3399@uint8;
(*   %and.i.i.1.3 = and i32 %conv.i.i.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_1_3 v_conv_i_i_1_3 (0x1)@uint32;
(*   %conv1.i.i.1.3 = zext i8 %conv7.i.i.3402 to i32 *)
cast v_conv1_i_i_1_3@uint32 v_conv7_i_i_3402@uint8;
(*   %mul.i.i.1.3 = mul nsw i32 %and.i.i.1.3, %conv1.i.i.1.3 *)
mul v_mul_i_i_1_3 v_and_i_i_1_3 v_conv1_i_i_1_3;
(*   %conv2.i.i.1.3 = zext i8 %conv3.i.i.3396 to i32 *)
cast v_conv2_i_i_1_3@uint32 v_conv3_i_i_3396@uint8;
(*   %xor.i.i.1.3 = xor i32 %conv2.i.i.1.3, %mul.i.i.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_1_3 v_conv2_i_i_1_3 v_mul_i_i_1_3;
(*   %conv3.i.i.1.3 = trunc i32 %xor.i.i.1.3 to i8 *)
split tmp_v_xor_i_i_1_3 v_conv3_i_i_1_3 v_xor_i_i_1_3 8;
vpc v_conv3_i_i_1_3@uint8 v_conv3_i_i_1_3@uint32;
(*   %conv4.i.i.1.3 = zext i8 %conv5.i.i.3399 to i32 *)
cast v_conv4_i_i_1_3@uint32 v_conv5_i_i_3399@uint8;
(*   %shr.i.i.1.3 = ashr i32 %conv4.i.i.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i_1_3 tmp_to_be_used v_conv4_i_i_1_3 1;
(*   %conv5.i.i.1.3 = trunc i32 %shr.i.i.1.3 to i8 *)
split tmp_v_shr_i_i_1_3 v_conv5_i_i_1_3 v_shr_i_i_1_3 8;
vpc v_conv5_i_i_1_3@uint8 v_conv5_i_i_1_3@uint32;
(*   %conv6.i.i.1.3 = zext i8 %conv7.i.i.3402 to i32 *)
cast v_conv6_i_i_1_3@uint32 v_conv7_i_i_3402@uint8;
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
(*   %arraydecay18 = getelementptr inbounds [4 x i8], [4 x i8]* %ab1, i64 0, i64 0 *)
(*   %8 = load i8, i8* %a, align 1 *)
mov v8 a_0;
(*   %arrayidx4.i437 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %9 = load i8, i8* %arrayidx4.i437, align 1 *)
mov v9 b_1;
(*   %conv.i.i441 = zext i8 %9 to i32 *)
cast v_conv_i_i441@uint32 v9@uint8;
(*   %and.i.i442 = and i32 %conv.i.i441, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i442 v_conv_i_i441 (0x1)@uint32;
(*   %conv1.i.i443 = zext i8 %8 to i32 *)
cast v_conv1_i_i443@uint32 v8@uint8;
(*   %mul.i.i444 = mul nsw i32 %and.i.i442, %conv1.i.i443 *)
mul v_mul_i_i444 v_and_i_i442 v_conv1_i_i443;
(*   %conv3.i.i447 = trunc i32 %mul.i.i444 to i8 *)
split tmp_v_mul_i_i444 v_conv3_i_i447 v_mul_i_i444 8;
vpc v_conv3_i_i447@uint8 v_conv3_i_i447@uint32;
(*   %conv4.i.i448 = zext i8 %9 to i32 *)
cast v_conv4_i_i448@uint32 v9@uint8;
(*   %shr.i.i449 = ashr i32 %conv4.i.i448, 1 *)
(* You may need to modify here *)
split v_shr_i_i449 tmp_to_be_used v_conv4_i_i448 1;
(*   %conv5.i.i450 = trunc i32 %shr.i.i449 to i8 *)
split tmp_v_shr_i_i449 v_conv5_i_i450 v_shr_i_i449 8;
vpc v_conv5_i_i450@uint8 v_conv5_i_i450@uint32;
(*   %conv6.i.i451 = zext i8 %8 to i32 *)
cast v_conv6_i_i451@uint32 v8@uint8;
(*   %shl.i.i452 = shl i32 %conv6.i.i451, 1 *)
shls discard_28 v_shl_i_i452 v_conv6_i_i451 1;
(*   %conv7.i.i453 = trunc i32 %shl.i.i452 to i8 *)
split tmp_v_shl_i_i452 v_conv7_i_i453 v_shl_i_i452 8;
vpc v_conv7_i_i453@uint8 v_conv7_i_i453@uint32;
(*   %conv.i.i441.1 = zext i8 %conv5.i.i450 to i32 *)
cast v_conv_i_i441_1@uint32 v_conv5_i_i450@uint8;
(*   %and.i.i442.1 = and i32 %conv.i.i441.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i442_1 v_conv_i_i441_1 (0x1)@uint32;
(*   %conv1.i.i443.1 = zext i8 %conv7.i.i453 to i32 *)
cast v_conv1_i_i443_1@uint32 v_conv7_i_i453@uint8;
(*   %mul.i.i444.1 = mul nsw i32 %and.i.i442.1, %conv1.i.i443.1 *)
mul v_mul_i_i444_1 v_and_i_i442_1 v_conv1_i_i443_1;
(*   %conv2.i.i445.1 = zext i8 %conv3.i.i447 to i32 *)
cast v_conv2_i_i445_1@uint32 v_conv3_i_i447@uint8;
(*   %xor.i.i446.1 = xor i32 %conv2.i.i445.1, %mul.i.i444.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i446_1 v_conv2_i_i445_1 v_mul_i_i444_1;
(*   %conv3.i.i447.1 = trunc i32 %xor.i.i446.1 to i8 *)
split tmp_v_xor_i_i446_1 v_conv3_i_i447_1 v_xor_i_i446_1 8;
vpc v_conv3_i_i447_1@uint8 v_conv3_i_i447_1@uint32;
(*   %conv4.i.i448.1 = zext i8 %conv5.i.i450 to i32 *)
cast v_conv4_i_i448_1@uint32 v_conv5_i_i450@uint8;
(*   %shr.i.i449.1 = ashr i32 %conv4.i.i448.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i449_1 tmp_to_be_used v_conv4_i_i448_1 1;
(*   %conv5.i.i450.1 = trunc i32 %shr.i.i449.1 to i8 *)
split tmp_v_shr_i_i449_1 v_conv5_i_i450_1 v_shr_i_i449_1 8;
vpc v_conv5_i_i450_1@uint8 v_conv5_i_i450_1@uint32;
(*   %conv6.i.i451.1 = zext i8 %conv7.i.i453 to i32 *)
cast v_conv6_i_i451_1@uint32 v_conv7_i_i453@uint8;
(*   %shl.i.i452.1 = shl i32 %conv6.i.i451.1, 1 *)
shls discard_29 v_shl_i_i452_1 v_conv6_i_i451_1 1;
(*   %conv7.i.i453.1 = trunc i32 %shl.i.i452.1 to i8 *)
split tmp_v_shl_i_i452_1 v_conv7_i_i453_1 v_shl_i_i452_1 8;
vpc v_conv7_i_i453_1@uint8 v_conv7_i_i453_1@uint32;
(*   %conv.i.i441.2 = zext i8 %conv5.i.i450.1 to i32 *)
cast v_conv_i_i441_2@uint32 v_conv5_i_i450_1@uint8;
(*   %and.i.i442.2 = and i32 %conv.i.i441.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i442_2 v_conv_i_i441_2 (0x1)@uint32;
(*   %conv1.i.i443.2 = zext i8 %conv7.i.i453.1 to i32 *)
cast v_conv1_i_i443_2@uint32 v_conv7_i_i453_1@uint8;
(*   %mul.i.i444.2 = mul nsw i32 %and.i.i442.2, %conv1.i.i443.2 *)
mul v_mul_i_i444_2 v_and_i_i442_2 v_conv1_i_i443_2;
(*   %conv2.i.i445.2 = zext i8 %conv3.i.i447.1 to i32 *)
cast v_conv2_i_i445_2@uint32 v_conv3_i_i447_1@uint8;
(*   %xor.i.i446.2 = xor i32 %conv2.i.i445.2, %mul.i.i444.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i446_2 v_conv2_i_i445_2 v_mul_i_i444_2;
(*   %conv3.i.i447.2 = trunc i32 %xor.i.i446.2 to i8 *)
split tmp_v_xor_i_i446_2 v_conv3_i_i447_2 v_xor_i_i446_2 8;
vpc v_conv3_i_i447_2@uint8 v_conv3_i_i447_2@uint32;
(*   %conv4.i.i448.2 = zext i8 %conv5.i.i450.1 to i32 *)
cast v_conv4_i_i448_2@uint32 v_conv5_i_i450_1@uint8;
(*   %shr.i.i449.2 = ashr i32 %conv4.i.i448.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i449_2 tmp_to_be_used v_conv4_i_i448_2 1;
(*   %conv5.i.i450.2 = trunc i32 %shr.i.i449.2 to i8 *)
split tmp_v_shr_i_i449_2 v_conv5_i_i450_2 v_shr_i_i449_2 8;
vpc v_conv5_i_i450_2@uint8 v_conv5_i_i450_2@uint32;
(*   %conv6.i.i451.2 = zext i8 %conv7.i.i453.1 to i32 *)
cast v_conv6_i_i451_2@uint32 v_conv7_i_i453_1@uint8;
(*   %shl.i.i452.2 = shl i32 %conv6.i.i451.2, 1 *)
shls discard_30 v_shl_i_i452_2 v_conv6_i_i451_2 1;
(*   %conv7.i.i453.2 = trunc i32 %shl.i.i452.2 to i8 *)
split tmp_v_shl_i_i452_2 v_conv7_i_i453_2 v_shl_i_i452_2 8;
vpc v_conv7_i_i453_2@uint8 v_conv7_i_i453_2@uint32;
(*   %conv.i.i441.3 = zext i8 %conv5.i.i450.2 to i32 *)
cast v_conv_i_i441_3@uint32 v_conv5_i_i450_2@uint8;
(*   %and.i.i442.3 = and i32 %conv.i.i441.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i442_3 v_conv_i_i441_3 (0x1)@uint32;
(*   %conv1.i.i443.3 = zext i8 %conv7.i.i453.2 to i32 *)
cast v_conv1_i_i443_3@uint32 v_conv7_i_i453_2@uint8;
(*   %mul.i.i444.3 = mul nsw i32 %and.i.i442.3, %conv1.i.i443.3 *)
mul v_mul_i_i444_3 v_and_i_i442_3 v_conv1_i_i443_3;
(*   %conv2.i.i445.3 = zext i8 %conv3.i.i447.2 to i32 *)
cast v_conv2_i_i445_3@uint32 v_conv3_i_i447_2@uint8;
(*   %xor.i.i446.3 = xor i32 %conv2.i.i445.3, %mul.i.i444.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i446_3 v_conv2_i_i445_3 v_mul_i_i444_3;
(*   %conv3.i.i447.3 = trunc i32 %xor.i.i446.3 to i8 *)
split tmp_v_xor_i_i446_3 v_conv3_i_i447_3 v_xor_i_i446_3 8;
vpc v_conv3_i_i447_3@uint8 v_conv3_i_i447_3@uint32;
(*   %conv4.i.i448.3 = zext i8 %conv5.i.i450.2 to i32 *)
cast v_conv4_i_i448_3@uint32 v_conv5_i_i450_2@uint8;
(*   %shr.i.i449.3 = ashr i32 %conv4.i.i448.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i449_3 tmp_to_be_used v_conv4_i_i448_3 1;
(*   %conv5.i.i450.3 = trunc i32 %shr.i.i449.3 to i8 *)
split tmp_v_shr_i_i449_3 v_conv5_i_i450_3 v_shr_i_i449_3 8;
vpc v_conv5_i_i450_3@uint8 v_conv5_i_i450_3@uint32;
(*   %conv6.i.i451.3 = zext i8 %conv7.i.i453.2 to i32 *)
cast v_conv6_i_i451_3@uint32 v_conv7_i_i453_2@uint8;
(*   %shl.i.i452.3 = shl i32 %conv6.i.i451.3, 1 *)
shls discard_31 v_shl_i_i452_3 v_conv6_i_i451_3 1;
(*   %conv7.i.i453.3 = trunc i32 %shl.i.i452.3 to i8 *)
split tmp_v_shl_i_i452_3 v_conv7_i_i453_3 v_shl_i_i452_3 8;
vpc v_conv7_i_i453_3@uint8 v_conv7_i_i453_3@uint32;
(*   %conv.i.i441.4 = zext i8 %conv5.i.i450.3 to i32 *)
cast v_conv_i_i441_4@uint32 v_conv5_i_i450_3@uint8;
(*   %and.i.i442.4 = and i32 %conv.i.i441.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i442_4 v_conv_i_i441_4 (0x1)@uint32;
(*   %conv1.i.i443.4 = zext i8 %conv7.i.i453.3 to i32 *)
cast v_conv1_i_i443_4@uint32 v_conv7_i_i453_3@uint8;
(*   %mul.i.i444.4 = mul nsw i32 %and.i.i442.4, %conv1.i.i443.4 *)
mul v_mul_i_i444_4 v_and_i_i442_4 v_conv1_i_i443_4;
(*   %conv2.i.i445.4 = zext i8 %conv3.i.i447.3 to i32 *)
cast v_conv2_i_i445_4@uint32 v_conv3_i_i447_3@uint8;
(*   %xor.i.i446.4 = xor i32 %conv2.i.i445.4, %mul.i.i444.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i446_4 v_conv2_i_i445_4 v_mul_i_i444_4;
(*   %conv3.i.i447.4 = trunc i32 %xor.i.i446.4 to i8 *)
split tmp_v_xor_i_i446_4 v_conv3_i_i447_4 v_xor_i_i446_4 8;
vpc v_conv3_i_i447_4@uint8 v_conv3_i_i447_4@uint32;
(*   %conv4.i.i448.4 = zext i8 %conv5.i.i450.3 to i32 *)
cast v_conv4_i_i448_4@uint32 v_conv5_i_i450_3@uint8;
(*   %shr.i.i449.4 = ashr i32 %conv4.i.i448.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i449_4 tmp_to_be_used v_conv4_i_i448_4 1;
(*   %conv5.i.i450.4 = trunc i32 %shr.i.i449.4 to i8 *)
split tmp_v_shr_i_i449_4 v_conv5_i_i450_4 v_shr_i_i449_4 8;
vpc v_conv5_i_i450_4@uint8 v_conv5_i_i450_4@uint32;
(*   %conv6.i.i451.4 = zext i8 %conv7.i.i453.3 to i32 *)
cast v_conv6_i_i451_4@uint32 v_conv7_i_i453_3@uint8;
(*   %shl.i.i452.4 = shl i32 %conv6.i.i451.4, 1 *)
shls discard_32 v_shl_i_i452_4 v_conv6_i_i451_4 1;
(*   %conv7.i.i453.4 = trunc i32 %shl.i.i452.4 to i8 *)
split tmp_v_shl_i_i452_4 v_conv7_i_i453_4 v_shl_i_i452_4 8;
vpc v_conv7_i_i453_4@uint8 v_conv7_i_i453_4@uint32;
(*   %conv.i.i441.5 = zext i8 %conv5.i.i450.4 to i32 *)
cast v_conv_i_i441_5@uint32 v_conv5_i_i450_4@uint8;
(*   %and.i.i442.5 = and i32 %conv.i.i441.5, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i442_5 v_conv_i_i441_5 (0x1)@uint32;
(*   %conv1.i.i443.5 = zext i8 %conv7.i.i453.4 to i32 *)
cast v_conv1_i_i443_5@uint32 v_conv7_i_i453_4@uint8;
(*   %mul.i.i444.5 = mul nsw i32 %and.i.i442.5, %conv1.i.i443.5 *)
mul v_mul_i_i444_5 v_and_i_i442_5 v_conv1_i_i443_5;
(*   %conv2.i.i445.5 = zext i8 %conv3.i.i447.4 to i32 *)
cast v_conv2_i_i445_5@uint32 v_conv3_i_i447_4@uint8;
(*   %xor.i.i446.5 = xor i32 %conv2.i.i445.5, %mul.i.i444.5 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i446_5 v_conv2_i_i445_5 v_mul_i_i444_5;
(*   %conv3.i.i447.5 = trunc i32 %xor.i.i446.5 to i8 *)
split tmp_v_xor_i_i446_5 v_conv3_i_i447_5 v_xor_i_i446_5 8;
vpc v_conv3_i_i447_5@uint8 v_conv3_i_i447_5@uint32;
(*   %conv4.i.i448.5 = zext i8 %conv5.i.i450.4 to i32 *)
cast v_conv4_i_i448_5@uint32 v_conv5_i_i450_4@uint8;
(*   %shr.i.i449.5 = ashr i32 %conv4.i.i448.5, 1 *)
(* You may need to modify here *)
split v_shr_i_i449_5 tmp_to_be_used v_conv4_i_i448_5 1;
(*   %conv5.i.i450.5 = trunc i32 %shr.i.i449.5 to i8 *)
split tmp_v_shr_i_i449_5 v_conv5_i_i450_5 v_shr_i_i449_5 8;
vpc v_conv5_i_i450_5@uint8 v_conv5_i_i450_5@uint32;
(*   %conv6.i.i451.5 = zext i8 %conv7.i.i453.4 to i32 *)
cast v_conv6_i_i451_5@uint32 v_conv7_i_i453_4@uint8;
(*   %shl.i.i452.5 = shl i32 %conv6.i.i451.5, 1 *)
shls discard_33 v_shl_i_i452_5 v_conv6_i_i451_5 1;
(*   %conv7.i.i453.5 = trunc i32 %shl.i.i452.5 to i8 *)
split tmp_v_shl_i_i452_5 v_conv7_i_i453_5 v_shl_i_i452_5 8;
vpc v_conv7_i_i453_5@uint8 v_conv7_i_i453_5@uint32;
(*   %conv.i.i441.6 = zext i8 %conv5.i.i450.5 to i32 *)
cast v_conv_i_i441_6@uint32 v_conv5_i_i450_5@uint8;
(*   %and.i.i442.6 = and i32 %conv.i.i441.6, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i442_6 v_conv_i_i441_6 (0x1)@uint32;
(*   %conv1.i.i443.6 = zext i8 %conv7.i.i453.5 to i32 *)
cast v_conv1_i_i443_6@uint32 v_conv7_i_i453_5@uint8;
(*   %mul.i.i444.6 = mul nsw i32 %and.i.i442.6, %conv1.i.i443.6 *)
mul v_mul_i_i444_6 v_and_i_i442_6 v_conv1_i_i443_6;
(*   %conv2.i.i445.6 = zext i8 %conv3.i.i447.5 to i32 *)
cast v_conv2_i_i445_6@uint32 v_conv3_i_i447_5@uint8;
(*   %xor.i.i446.6 = xor i32 %conv2.i.i445.6, %mul.i.i444.6 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i446_6 v_conv2_i_i445_6 v_mul_i_i444_6;
(*   %conv3.i.i447.6 = trunc i32 %xor.i.i446.6 to i8 *)
split tmp_v_xor_i_i446_6 v_conv3_i_i447_6 v_xor_i_i446_6 8;
vpc v_conv3_i_i447_6@uint8 v_conv3_i_i447_6@uint32;
(*   %conv4.i.i448.6 = zext i8 %conv5.i.i450.5 to i32 *)
cast v_conv4_i_i448_6@uint32 v_conv5_i_i450_5@uint8;
(*   %shr.i.i449.6 = ashr i32 %conv4.i.i448.6, 1 *)
(* You may need to modify here *)
split v_shr_i_i449_6 tmp_to_be_used v_conv4_i_i448_6 1;
(*   %conv5.i.i450.6 = trunc i32 %shr.i.i449.6 to i8 *)
split tmp_v_shr_i_i449_6 v_conv5_i_i450_6 v_shr_i_i449_6 8;
vpc v_conv5_i_i450_6@uint8 v_conv5_i_i450_6@uint32;
(*   %conv6.i.i451.6 = zext i8 %conv7.i.i453.5 to i32 *)
cast v_conv6_i_i451_6@uint32 v_conv7_i_i453_5@uint8;
(*   %shl.i.i452.6 = shl i32 %conv6.i.i451.6, 1 *)
shls discard_34 v_shl_i_i452_6 v_conv6_i_i451_6 1;
(*   %conv7.i.i453.6 = trunc i32 %shl.i.i452.6 to i8 *)
split tmp_v_shl_i_i452_6 v_conv7_i_i453_6 v_shl_i_i452_6 8;
vpc v_conv7_i_i453_6@uint8 v_conv7_i_i453_6@uint32;
(*   %conv.i.i441.7 = zext i8 %conv5.i.i450.6 to i32 *)
cast v_conv_i_i441_7@uint32 v_conv5_i_i450_6@uint8;
(*   %and.i.i442.7 = and i32 %conv.i.i441.7, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i442_7 v_conv_i_i441_7 (0x1)@uint32;
(*   %conv1.i.i443.7 = zext i8 %conv7.i.i453.6 to i32 *)
cast v_conv1_i_i443_7@uint32 v_conv7_i_i453_6@uint8;
(*   %mul.i.i444.7 = mul nsw i32 %and.i.i442.7, %conv1.i.i443.7 *)
mul v_mul_i_i444_7 v_and_i_i442_7 v_conv1_i_i443_7;
(*   %conv2.i.i445.7 = zext i8 %conv3.i.i447.6 to i32 *)
cast v_conv2_i_i445_7@uint32 v_conv3_i_i447_6@uint8;
(*   %xor.i.i446.7 = xor i32 %conv2.i.i445.7, %mul.i.i444.7 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i446_7 v_conv2_i_i445_7 v_mul_i_i444_7;
(*   %conv3.i.i447.7 = trunc i32 %xor.i.i446.7 to i8 *)
split tmp_v_xor_i_i446_7 v_conv3_i_i447_7 v_xor_i_i446_7 8;
vpc v_conv3_i_i447_7@uint8 v_conv3_i_i447_7@uint32;
(*   store i8 %conv3.i.i447.7, i8* %arraydecay18, align 1 *)
mov ab1_0 v_conv3_i_i447_7;
(*   %arrayidx.i433.1 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %10 = load i8, i8* %arrayidx.i433.1, align 1 *)
mov v10 a_1;
(*   %arrayidx4.i437.1 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %11 = load i8, i8* %arrayidx4.i437.1, align 1 *)
mov v11 b_2;
(*   %conv.i.i441.1205 = zext i8 %11 to i32 *)
cast v_conv_i_i441_1205@uint32 v11@uint8;
(*   %and.i.i442.1206 = and i32 %conv.i.i441.1205, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i442_1206 v_conv_i_i441_1205 (0x1)@uint32;
(*   %conv1.i.i443.1207 = zext i8 %10 to i32 *)
cast v_conv1_i_i443_1207@uint32 v10@uint8;
(*   %mul.i.i444.1208 = mul nsw i32 %and.i.i442.1206, %conv1.i.i443.1207 *)
mul v_mul_i_i444_1208 v_and_i_i442_1206 v_conv1_i_i443_1207;
(*   %conv3.i.i447.1209 = trunc i32 %mul.i.i444.1208 to i8 *)
split tmp_v_mul_i_i444_1208 v_conv3_i_i447_1209 v_mul_i_i444_1208 8;
vpc v_conv3_i_i447_1209@uint8 v_conv3_i_i447_1209@uint32;
(*   %conv4.i.i448.1210 = zext i8 %11 to i32 *)
cast v_conv4_i_i448_1210@uint32 v11@uint8;
(*   %shr.i.i449.1211 = ashr i32 %conv4.i.i448.1210, 1 *)
(* You may need to modify here *)
split v_shr_i_i449_1211 tmp_to_be_used v_conv4_i_i448_1210 1;
(*   %conv5.i.i450.1212 = trunc i32 %shr.i.i449.1211 to i8 *)
split tmp_v_shr_i_i449_1211 v_conv5_i_i450_1212 v_shr_i_i449_1211 8;
vpc v_conv5_i_i450_1212@uint8 v_conv5_i_i450_1212@uint32;
(*   %conv6.i.i451.1213 = zext i8 %10 to i32 *)
cast v_conv6_i_i451_1213@uint32 v10@uint8;
(*   %shl.i.i452.1214 = shl i32 %conv6.i.i451.1213, 1 *)
shls discard_35 v_shl_i_i452_1214 v_conv6_i_i451_1213 1;
(*   %conv7.i.i453.1215 = trunc i32 %shl.i.i452.1214 to i8 *)
split tmp_v_shl_i_i452_1214 v_conv7_i_i453_1215 v_shl_i_i452_1214 8;
vpc v_conv7_i_i453_1215@uint8 v_conv7_i_i453_1215@uint32;
(*   %conv.i.i441.1.1 = zext i8 %conv5.i.i450.1212 to i32 *)
cast v_conv_i_i441_1_1@uint32 v_conv5_i_i450_1212@uint8;
(*   %and.i.i442.1.1 = and i32 %conv.i.i441.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i442_1_1 v_conv_i_i441_1_1 (0x1)@uint32;
(*   %conv1.i.i443.1.1 = zext i8 %conv7.i.i453.1215 to i32 *)
cast v_conv1_i_i443_1_1@uint32 v_conv7_i_i453_1215@uint8;
(*   %mul.i.i444.1.1 = mul nsw i32 %and.i.i442.1.1, %conv1.i.i443.1.1 *)
mul v_mul_i_i444_1_1 v_and_i_i442_1_1 v_conv1_i_i443_1_1;
(*   %conv2.i.i445.1.1 = zext i8 %conv3.i.i447.1209 to i32 *)
cast v_conv2_i_i445_1_1@uint32 v_conv3_i_i447_1209@uint8;
(*   %xor.i.i446.1.1 = xor i32 %conv2.i.i445.1.1, %mul.i.i444.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i446_1_1 v_conv2_i_i445_1_1 v_mul_i_i444_1_1;
(*   %conv3.i.i447.1.1 = trunc i32 %xor.i.i446.1.1 to i8 *)
split tmp_v_xor_i_i446_1_1 v_conv3_i_i447_1_1 v_xor_i_i446_1_1 8;
vpc v_conv3_i_i447_1_1@uint8 v_conv3_i_i447_1_1@uint32;
(*   %conv4.i.i448.1.1 = zext i8 %conv5.i.i450.1212 to i32 *)
cast v_conv4_i_i448_1_1@uint32 v_conv5_i_i450_1212@uint8;
(*   %shr.i.i449.1.1 = ashr i32 %conv4.i.i448.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i449_1_1 tmp_to_be_used v_conv4_i_i448_1_1 1;
(*   %conv5.i.i450.1.1 = trunc i32 %shr.i.i449.1.1 to i8 *)
split tmp_v_shr_i_i449_1_1 v_conv5_i_i450_1_1 v_shr_i_i449_1_1 8;
vpc v_conv5_i_i450_1_1@uint8 v_conv5_i_i450_1_1@uint32;
(*   %conv6.i.i451.1.1 = zext i8 %conv7.i.i453.1215 to i32 *)
cast v_conv6_i_i451_1_1@uint32 v_conv7_i_i453_1215@uint8;
(*   %shl.i.i452.1.1 = shl i32 %conv6.i.i451.1.1, 1 *)
shls discard_36 v_shl_i_i452_1_1 v_conv6_i_i451_1_1 1;
(*   %conv7.i.i453.1.1 = trunc i32 %shl.i.i452.1.1 to i8 *)
split tmp_v_shl_i_i452_1_1 v_conv7_i_i453_1_1 v_shl_i_i452_1_1 8;
vpc v_conv7_i_i453_1_1@uint8 v_conv7_i_i453_1_1@uint32;
(*   %conv.i.i441.2.1 = zext i8 %conv5.i.i450.1.1 to i32 *)
cast v_conv_i_i441_2_1@uint32 v_conv5_i_i450_1_1@uint8;
(*   %and.i.i442.2.1 = and i32 %conv.i.i441.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i442_2_1 v_conv_i_i441_2_1 (0x1)@uint32;
(*   %conv1.i.i443.2.1 = zext i8 %conv7.i.i453.1.1 to i32 *)
cast v_conv1_i_i443_2_1@uint32 v_conv7_i_i453_1_1@uint8;
(*   %mul.i.i444.2.1 = mul nsw i32 %and.i.i442.2.1, %conv1.i.i443.2.1 *)
mul v_mul_i_i444_2_1 v_and_i_i442_2_1 v_conv1_i_i443_2_1;
(*   %conv2.i.i445.2.1 = zext i8 %conv3.i.i447.1.1 to i32 *)
cast v_conv2_i_i445_2_1@uint32 v_conv3_i_i447_1_1@uint8;
(*   %xor.i.i446.2.1 = xor i32 %conv2.i.i445.2.1, %mul.i.i444.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i446_2_1 v_conv2_i_i445_2_1 v_mul_i_i444_2_1;
(*   %conv3.i.i447.2.1 = trunc i32 %xor.i.i446.2.1 to i8 *)
split tmp_v_xor_i_i446_2_1 v_conv3_i_i447_2_1 v_xor_i_i446_2_1 8;
vpc v_conv3_i_i447_2_1@uint8 v_conv3_i_i447_2_1@uint32;
(*   %conv4.i.i448.2.1 = zext i8 %conv5.i.i450.1.1 to i32 *)
cast v_conv4_i_i448_2_1@uint32 v_conv5_i_i450_1_1@uint8;
(*   %shr.i.i449.2.1 = ashr i32 %conv4.i.i448.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i449_2_1 tmp_to_be_used v_conv4_i_i448_2_1 1;
(*   %conv5.i.i450.2.1 = trunc i32 %shr.i.i449.2.1 to i8 *)
split tmp_v_shr_i_i449_2_1 v_conv5_i_i450_2_1 v_shr_i_i449_2_1 8;
vpc v_conv5_i_i450_2_1@uint8 v_conv5_i_i450_2_1@uint32;
(*   %conv6.i.i451.2.1 = zext i8 %conv7.i.i453.1.1 to i32 *)
cast v_conv6_i_i451_2_1@uint32 v_conv7_i_i453_1_1@uint8;
(*   %shl.i.i452.2.1 = shl i32 %conv6.i.i451.2.1, 1 *)
shls discard_37 v_shl_i_i452_2_1 v_conv6_i_i451_2_1 1;
(*   %conv7.i.i453.2.1 = trunc i32 %shl.i.i452.2.1 to i8 *)
split tmp_v_shl_i_i452_2_1 v_conv7_i_i453_2_1 v_shl_i_i452_2_1 8;
vpc v_conv7_i_i453_2_1@uint8 v_conv7_i_i453_2_1@uint32;
(*   %conv.i.i441.3.1 = zext i8 %conv5.i.i450.2.1 to i32 *)
cast v_conv_i_i441_3_1@uint32 v_conv5_i_i450_2_1@uint8;
(*   %and.i.i442.3.1 = and i32 %conv.i.i441.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i442_3_1 v_conv_i_i441_3_1 (0x1)@uint32;
(*   %conv1.i.i443.3.1 = zext i8 %conv7.i.i453.2.1 to i32 *)
cast v_conv1_i_i443_3_1@uint32 v_conv7_i_i453_2_1@uint8;
(*   %mul.i.i444.3.1 = mul nsw i32 %and.i.i442.3.1, %conv1.i.i443.3.1 *)
mul v_mul_i_i444_3_1 v_and_i_i442_3_1 v_conv1_i_i443_3_1;
(*   %conv2.i.i445.3.1 = zext i8 %conv3.i.i447.2.1 to i32 *)
cast v_conv2_i_i445_3_1@uint32 v_conv3_i_i447_2_1@uint8;
(*   %xor.i.i446.3.1 = xor i32 %conv2.i.i445.3.1, %mul.i.i444.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i446_3_1 v_conv2_i_i445_3_1 v_mul_i_i444_3_1;
(*   %conv3.i.i447.3.1 = trunc i32 %xor.i.i446.3.1 to i8 *)
split tmp_v_xor_i_i446_3_1 v_conv3_i_i447_3_1 v_xor_i_i446_3_1 8;
vpc v_conv3_i_i447_3_1@uint8 v_conv3_i_i447_3_1@uint32;
(*   %conv4.i.i448.3.1 = zext i8 %conv5.i.i450.2.1 to i32 *)
cast v_conv4_i_i448_3_1@uint32 v_conv5_i_i450_2_1@uint8;
(*   %shr.i.i449.3.1 = ashr i32 %conv4.i.i448.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i449_3_1 tmp_to_be_used v_conv4_i_i448_3_1 1;
(*   %conv5.i.i450.3.1 = trunc i32 %shr.i.i449.3.1 to i8 *)
split tmp_v_shr_i_i449_3_1 v_conv5_i_i450_3_1 v_shr_i_i449_3_1 8;
vpc v_conv5_i_i450_3_1@uint8 v_conv5_i_i450_3_1@uint32;
(*   %conv6.i.i451.3.1 = zext i8 %conv7.i.i453.2.1 to i32 *)
cast v_conv6_i_i451_3_1@uint32 v_conv7_i_i453_2_1@uint8;
(*   %shl.i.i452.3.1 = shl i32 %conv6.i.i451.3.1, 1 *)
shls discard_38 v_shl_i_i452_3_1 v_conv6_i_i451_3_1 1;
(*   %conv7.i.i453.3.1 = trunc i32 %shl.i.i452.3.1 to i8 *)
split tmp_v_shl_i_i452_3_1 v_conv7_i_i453_3_1 v_shl_i_i452_3_1 8;
vpc v_conv7_i_i453_3_1@uint8 v_conv7_i_i453_3_1@uint32;
(*   %conv.i.i441.4.1 = zext i8 %conv5.i.i450.3.1 to i32 *)
cast v_conv_i_i441_4_1@uint32 v_conv5_i_i450_3_1@uint8;
(*   %and.i.i442.4.1 = and i32 %conv.i.i441.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i442_4_1 v_conv_i_i441_4_1 (0x1)@uint32;
(*   %conv1.i.i443.4.1 = zext i8 %conv7.i.i453.3.1 to i32 *)
cast v_conv1_i_i443_4_1@uint32 v_conv7_i_i453_3_1@uint8;
(*   %mul.i.i444.4.1 = mul nsw i32 %and.i.i442.4.1, %conv1.i.i443.4.1 *)
mul v_mul_i_i444_4_1 v_and_i_i442_4_1 v_conv1_i_i443_4_1;
(*   %conv2.i.i445.4.1 = zext i8 %conv3.i.i447.3.1 to i32 *)
cast v_conv2_i_i445_4_1@uint32 v_conv3_i_i447_3_1@uint8;
(*   %xor.i.i446.4.1 = xor i32 %conv2.i.i445.4.1, %mul.i.i444.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i446_4_1 v_conv2_i_i445_4_1 v_mul_i_i444_4_1;
(*   %conv3.i.i447.4.1 = trunc i32 %xor.i.i446.4.1 to i8 *)
split tmp_v_xor_i_i446_4_1 v_conv3_i_i447_4_1 v_xor_i_i446_4_1 8;
vpc v_conv3_i_i447_4_1@uint8 v_conv3_i_i447_4_1@uint32;
(*   %conv4.i.i448.4.1 = zext i8 %conv5.i.i450.3.1 to i32 *)
cast v_conv4_i_i448_4_1@uint32 v_conv5_i_i450_3_1@uint8;
(*   %shr.i.i449.4.1 = ashr i32 %conv4.i.i448.4.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i449_4_1 tmp_to_be_used v_conv4_i_i448_4_1 1;
(*   %conv5.i.i450.4.1 = trunc i32 %shr.i.i449.4.1 to i8 *)
split tmp_v_shr_i_i449_4_1 v_conv5_i_i450_4_1 v_shr_i_i449_4_1 8;
vpc v_conv5_i_i450_4_1@uint8 v_conv5_i_i450_4_1@uint32;
(*   %conv6.i.i451.4.1 = zext i8 %conv7.i.i453.3.1 to i32 *)
cast v_conv6_i_i451_4_1@uint32 v_conv7_i_i453_3_1@uint8;
(*   %shl.i.i452.4.1 = shl i32 %conv6.i.i451.4.1, 1 *)
shls discard_39 v_shl_i_i452_4_1 v_conv6_i_i451_4_1 1;
(*   %conv7.i.i453.4.1 = trunc i32 %shl.i.i452.4.1 to i8 *)
split tmp_v_shl_i_i452_4_1 v_conv7_i_i453_4_1 v_shl_i_i452_4_1 8;
vpc v_conv7_i_i453_4_1@uint8 v_conv7_i_i453_4_1@uint32;
(*   %conv.i.i441.5.1 = zext i8 %conv5.i.i450.4.1 to i32 *)
cast v_conv_i_i441_5_1@uint32 v_conv5_i_i450_4_1@uint8;
(*   %and.i.i442.5.1 = and i32 %conv.i.i441.5.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i442_5_1 v_conv_i_i441_5_1 (0x1)@uint32;
(*   %conv1.i.i443.5.1 = zext i8 %conv7.i.i453.4.1 to i32 *)
cast v_conv1_i_i443_5_1@uint32 v_conv7_i_i453_4_1@uint8;
(*   %mul.i.i444.5.1 = mul nsw i32 %and.i.i442.5.1, %conv1.i.i443.5.1 *)
mul v_mul_i_i444_5_1 v_and_i_i442_5_1 v_conv1_i_i443_5_1;
(*   %conv2.i.i445.5.1 = zext i8 %conv3.i.i447.4.1 to i32 *)
cast v_conv2_i_i445_5_1@uint32 v_conv3_i_i447_4_1@uint8;
(*   %xor.i.i446.5.1 = xor i32 %conv2.i.i445.5.1, %mul.i.i444.5.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i446_5_1 v_conv2_i_i445_5_1 v_mul_i_i444_5_1;
(*   %conv3.i.i447.5.1 = trunc i32 %xor.i.i446.5.1 to i8 *)
split tmp_v_xor_i_i446_5_1 v_conv3_i_i447_5_1 v_xor_i_i446_5_1 8;
vpc v_conv3_i_i447_5_1@uint8 v_conv3_i_i447_5_1@uint32;
(*   %conv4.i.i448.5.1 = zext i8 %conv5.i.i450.4.1 to i32 *)
cast v_conv4_i_i448_5_1@uint32 v_conv5_i_i450_4_1@uint8;
(*   %shr.i.i449.5.1 = ashr i32 %conv4.i.i448.5.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i449_5_1 tmp_to_be_used v_conv4_i_i448_5_1 1;
(*   %conv5.i.i450.5.1 = trunc i32 %shr.i.i449.5.1 to i8 *)
split tmp_v_shr_i_i449_5_1 v_conv5_i_i450_5_1 v_shr_i_i449_5_1 8;
vpc v_conv5_i_i450_5_1@uint8 v_conv5_i_i450_5_1@uint32;
(*   %conv6.i.i451.5.1 = zext i8 %conv7.i.i453.4.1 to i32 *)
cast v_conv6_i_i451_5_1@uint32 v_conv7_i_i453_4_1@uint8;
(*   %shl.i.i452.5.1 = shl i32 %conv6.i.i451.5.1, 1 *)
shls discard_40 v_shl_i_i452_5_1 v_conv6_i_i451_5_1 1;
(*   %conv7.i.i453.5.1 = trunc i32 %shl.i.i452.5.1 to i8 *)
split tmp_v_shl_i_i452_5_1 v_conv7_i_i453_5_1 v_shl_i_i452_5_1 8;
vpc v_conv7_i_i453_5_1@uint8 v_conv7_i_i453_5_1@uint32;
(*   %conv.i.i441.6.1 = zext i8 %conv5.i.i450.5.1 to i32 *)
cast v_conv_i_i441_6_1@uint32 v_conv5_i_i450_5_1@uint8;
(*   %and.i.i442.6.1 = and i32 %conv.i.i441.6.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i442_6_1 v_conv_i_i441_6_1 (0x1)@uint32;
(*   %conv1.i.i443.6.1 = zext i8 %conv7.i.i453.5.1 to i32 *)
cast v_conv1_i_i443_6_1@uint32 v_conv7_i_i453_5_1@uint8;
(*   %mul.i.i444.6.1 = mul nsw i32 %and.i.i442.6.1, %conv1.i.i443.6.1 *)
mul v_mul_i_i444_6_1 v_and_i_i442_6_1 v_conv1_i_i443_6_1;
(*   %conv2.i.i445.6.1 = zext i8 %conv3.i.i447.5.1 to i32 *)
cast v_conv2_i_i445_6_1@uint32 v_conv3_i_i447_5_1@uint8;
(*   %xor.i.i446.6.1 = xor i32 %conv2.i.i445.6.1, %mul.i.i444.6.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i446_6_1 v_conv2_i_i445_6_1 v_mul_i_i444_6_1;
(*   %conv3.i.i447.6.1 = trunc i32 %xor.i.i446.6.1 to i8 *)
split tmp_v_xor_i_i446_6_1 v_conv3_i_i447_6_1 v_xor_i_i446_6_1 8;
vpc v_conv3_i_i447_6_1@uint8 v_conv3_i_i447_6_1@uint32;
(*   %conv4.i.i448.6.1 = zext i8 %conv5.i.i450.5.1 to i32 *)
cast v_conv4_i_i448_6_1@uint32 v_conv5_i_i450_5_1@uint8;
(*   %shr.i.i449.6.1 = ashr i32 %conv4.i.i448.6.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i449_6_1 tmp_to_be_used v_conv4_i_i448_6_1 1;
(*   %conv5.i.i450.6.1 = trunc i32 %shr.i.i449.6.1 to i8 *)
split tmp_v_shr_i_i449_6_1 v_conv5_i_i450_6_1 v_shr_i_i449_6_1 8;
vpc v_conv5_i_i450_6_1@uint8 v_conv5_i_i450_6_1@uint32;
(*   %conv6.i.i451.6.1 = zext i8 %conv7.i.i453.5.1 to i32 *)
cast v_conv6_i_i451_6_1@uint32 v_conv7_i_i453_5_1@uint8;
(*   %shl.i.i452.6.1 = shl i32 %conv6.i.i451.6.1, 1 *)
shls discard_41 v_shl_i_i452_6_1 v_conv6_i_i451_6_1 1;
(*   %conv7.i.i453.6.1 = trunc i32 %shl.i.i452.6.1 to i8 *)
split tmp_v_shl_i_i452_6_1 v_conv7_i_i453_6_1 v_shl_i_i452_6_1 8;
vpc v_conv7_i_i453_6_1@uint8 v_conv7_i_i453_6_1@uint32;
(*   %conv.i.i441.7.1 = zext i8 %conv5.i.i450.6.1 to i32 *)
cast v_conv_i_i441_7_1@uint32 v_conv5_i_i450_6_1@uint8;
(*   %and.i.i442.7.1 = and i32 %conv.i.i441.7.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i442_7_1 v_conv_i_i441_7_1 (0x1)@uint32;
(*   %conv1.i.i443.7.1 = zext i8 %conv7.i.i453.6.1 to i32 *)
cast v_conv1_i_i443_7_1@uint32 v_conv7_i_i453_6_1@uint8;
(*   %mul.i.i444.7.1 = mul nsw i32 %and.i.i442.7.1, %conv1.i.i443.7.1 *)
mul v_mul_i_i444_7_1 v_and_i_i442_7_1 v_conv1_i_i443_7_1;
(*   %conv2.i.i445.7.1 = zext i8 %conv3.i.i447.6.1 to i32 *)
cast v_conv2_i_i445_7_1@uint32 v_conv3_i_i447_6_1@uint8;
(*   %xor.i.i446.7.1 = xor i32 %conv2.i.i445.7.1, %mul.i.i444.7.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i446_7_1 v_conv2_i_i445_7_1 v_mul_i_i444_7_1;
(*   %conv3.i.i447.7.1 = trunc i32 %xor.i.i446.7.1 to i8 *)
split tmp_v_xor_i_i446_7_1 v_conv3_i_i447_7_1 v_xor_i_i446_7_1 8;
vpc v_conv3_i_i447_7_1@uint8 v_conv3_i_i447_7_1@uint32;
(*   %arrayidx6.i457.1 = getelementptr inbounds i8, i8* %arraydecay18, i64 1 *)
(*   store i8 %conv3.i.i447.7.1, i8* %arrayidx6.i457.1, align 1 *)
mov ab1_1 v_conv3_i_i447_7_1;
(*   %arrayidx.i433.2 = getelementptr inbounds i8, i8* %a, i64 2 *)
(*   %12 = load i8, i8* %arrayidx.i433.2, align 1 *)
mov v12 a_2;
(*   %arrayidx4.i437.2 = getelementptr inbounds i8, i8* %b, i64 3 *)
(*   %13 = load i8, i8* %arrayidx4.i437.2, align 1 *)
mov v13 b_3;
(*   %conv.i.i441.2216 = zext i8 %13 to i32 *)
cast v_conv_i_i441_2216@uint32 v13@uint8;
(*   %and.i.i442.2217 = and i32 %conv.i.i441.2216, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i442_2217 v_conv_i_i441_2216 (0x1)@uint32;
(*   %conv1.i.i443.2218 = zext i8 %12 to i32 *)
cast v_conv1_i_i443_2218@uint32 v12@uint8;
(*   %mul.i.i444.2219 = mul nsw i32 %and.i.i442.2217, %conv1.i.i443.2218 *)
mul v_mul_i_i444_2219 v_and_i_i442_2217 v_conv1_i_i443_2218;
(*   %conv3.i.i447.2220 = trunc i32 %mul.i.i444.2219 to i8 *)
split tmp_v_mul_i_i444_2219 v_conv3_i_i447_2220 v_mul_i_i444_2219 8;
vpc v_conv3_i_i447_2220@uint8 v_conv3_i_i447_2220@uint32;
(*   %conv4.i.i448.2221 = zext i8 %13 to i32 *)
cast v_conv4_i_i448_2221@uint32 v13@uint8;
(*   %shr.i.i449.2222 = ashr i32 %conv4.i.i448.2221, 1 *)
(* You may need to modify here *)
split v_shr_i_i449_2222 tmp_to_be_used v_conv4_i_i448_2221 1;
(*   %conv5.i.i450.2223 = trunc i32 %shr.i.i449.2222 to i8 *)
split tmp_v_shr_i_i449_2222 v_conv5_i_i450_2223 v_shr_i_i449_2222 8;
vpc v_conv5_i_i450_2223@uint8 v_conv5_i_i450_2223@uint32;
(*   %conv6.i.i451.2224 = zext i8 %12 to i32 *)
cast v_conv6_i_i451_2224@uint32 v12@uint8;
(*   %shl.i.i452.2225 = shl i32 %conv6.i.i451.2224, 1 *)
shls discard_42 v_shl_i_i452_2225 v_conv6_i_i451_2224 1;
(*   %conv7.i.i453.2226 = trunc i32 %shl.i.i452.2225 to i8 *)
split tmp_v_shl_i_i452_2225 v_conv7_i_i453_2226 v_shl_i_i452_2225 8;
vpc v_conv7_i_i453_2226@uint8 v_conv7_i_i453_2226@uint32;
(*   %conv.i.i441.1.2 = zext i8 %conv5.i.i450.2223 to i32 *)
cast v_conv_i_i441_1_2@uint32 v_conv5_i_i450_2223@uint8;
(*   %and.i.i442.1.2 = and i32 %conv.i.i441.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i442_1_2 v_conv_i_i441_1_2 (0x1)@uint32;
(*   %conv1.i.i443.1.2 = zext i8 %conv7.i.i453.2226 to i32 *)
cast v_conv1_i_i443_1_2@uint32 v_conv7_i_i453_2226@uint8;
(*   %mul.i.i444.1.2 = mul nsw i32 %and.i.i442.1.2, %conv1.i.i443.1.2 *)
mul v_mul_i_i444_1_2 v_and_i_i442_1_2 v_conv1_i_i443_1_2;
(*   %conv2.i.i445.1.2 = zext i8 %conv3.i.i447.2220 to i32 *)
cast v_conv2_i_i445_1_2@uint32 v_conv3_i_i447_2220@uint8;
(*   %xor.i.i446.1.2 = xor i32 %conv2.i.i445.1.2, %mul.i.i444.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i446_1_2 v_conv2_i_i445_1_2 v_mul_i_i444_1_2;
(*   %conv3.i.i447.1.2 = trunc i32 %xor.i.i446.1.2 to i8 *)
split tmp_v_xor_i_i446_1_2 v_conv3_i_i447_1_2 v_xor_i_i446_1_2 8;
vpc v_conv3_i_i447_1_2@uint8 v_conv3_i_i447_1_2@uint32;
(*   %conv4.i.i448.1.2 = zext i8 %conv5.i.i450.2223 to i32 *)
cast v_conv4_i_i448_1_2@uint32 v_conv5_i_i450_2223@uint8;
(*   %shr.i.i449.1.2 = ashr i32 %conv4.i.i448.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i449_1_2 tmp_to_be_used v_conv4_i_i448_1_2 1;
(*   %conv5.i.i450.1.2 = trunc i32 %shr.i.i449.1.2 to i8 *)
split tmp_v_shr_i_i449_1_2 v_conv5_i_i450_1_2 v_shr_i_i449_1_2 8;
vpc v_conv5_i_i450_1_2@uint8 v_conv5_i_i450_1_2@uint32;
(*   %conv6.i.i451.1.2 = zext i8 %conv7.i.i453.2226 to i32 *)
cast v_conv6_i_i451_1_2@uint32 v_conv7_i_i453_2226@uint8;
(*   %shl.i.i452.1.2 = shl i32 %conv6.i.i451.1.2, 1 *)
shls discard_43 v_shl_i_i452_1_2 v_conv6_i_i451_1_2 1;
(*   %conv7.i.i453.1.2 = trunc i32 %shl.i.i452.1.2 to i8 *)
split tmp_v_shl_i_i452_1_2 v_conv7_i_i453_1_2 v_shl_i_i452_1_2 8;
vpc v_conv7_i_i453_1_2@uint8 v_conv7_i_i453_1_2@uint32;
(*   %conv.i.i441.2.2 = zext i8 %conv5.i.i450.1.2 to i32 *)
cast v_conv_i_i441_2_2@uint32 v_conv5_i_i450_1_2@uint8;
(*   %and.i.i442.2.2 = and i32 %conv.i.i441.2.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i442_2_2 v_conv_i_i441_2_2 (0x1)@uint32;
(*   %conv1.i.i443.2.2 = zext i8 %conv7.i.i453.1.2 to i32 *)
cast v_conv1_i_i443_2_2@uint32 v_conv7_i_i453_1_2@uint8;
(*   %mul.i.i444.2.2 = mul nsw i32 %and.i.i442.2.2, %conv1.i.i443.2.2 *)
mul v_mul_i_i444_2_2 v_and_i_i442_2_2 v_conv1_i_i443_2_2;
(*   %conv2.i.i445.2.2 = zext i8 %conv3.i.i447.1.2 to i32 *)
cast v_conv2_i_i445_2_2@uint32 v_conv3_i_i447_1_2@uint8;
(*   %xor.i.i446.2.2 = xor i32 %conv2.i.i445.2.2, %mul.i.i444.2.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i446_2_2 v_conv2_i_i445_2_2 v_mul_i_i444_2_2;
(*   %conv3.i.i447.2.2 = trunc i32 %xor.i.i446.2.2 to i8 *)
split tmp_v_xor_i_i446_2_2 v_conv3_i_i447_2_2 v_xor_i_i446_2_2 8;
vpc v_conv3_i_i447_2_2@uint8 v_conv3_i_i447_2_2@uint32;
(*   %conv4.i.i448.2.2 = zext i8 %conv5.i.i450.1.2 to i32 *)
cast v_conv4_i_i448_2_2@uint32 v_conv5_i_i450_1_2@uint8;
(*   %shr.i.i449.2.2 = ashr i32 %conv4.i.i448.2.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i449_2_2 tmp_to_be_used v_conv4_i_i448_2_2 1;
(*   %conv5.i.i450.2.2 = trunc i32 %shr.i.i449.2.2 to i8 *)
split tmp_v_shr_i_i449_2_2 v_conv5_i_i450_2_2 v_shr_i_i449_2_2 8;
vpc v_conv5_i_i450_2_2@uint8 v_conv5_i_i450_2_2@uint32;
(*   %conv6.i.i451.2.2 = zext i8 %conv7.i.i453.1.2 to i32 *)
cast v_conv6_i_i451_2_2@uint32 v_conv7_i_i453_1_2@uint8;
(*   %shl.i.i452.2.2 = shl i32 %conv6.i.i451.2.2, 1 *)
shls discard_44 v_shl_i_i452_2_2 v_conv6_i_i451_2_2 1;
(*   %conv7.i.i453.2.2 = trunc i32 %shl.i.i452.2.2 to i8 *)
split tmp_v_shl_i_i452_2_2 v_conv7_i_i453_2_2 v_shl_i_i452_2_2 8;
vpc v_conv7_i_i453_2_2@uint8 v_conv7_i_i453_2_2@uint32;
(*   %conv.i.i441.3.2 = zext i8 %conv5.i.i450.2.2 to i32 *)
cast v_conv_i_i441_3_2@uint32 v_conv5_i_i450_2_2@uint8;
(*   %and.i.i442.3.2 = and i32 %conv.i.i441.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i442_3_2 v_conv_i_i441_3_2 (0x1)@uint32;
(*   %conv1.i.i443.3.2 = zext i8 %conv7.i.i453.2.2 to i32 *)
cast v_conv1_i_i443_3_2@uint32 v_conv7_i_i453_2_2@uint8;
(*   %mul.i.i444.3.2 = mul nsw i32 %and.i.i442.3.2, %conv1.i.i443.3.2 *)
mul v_mul_i_i444_3_2 v_and_i_i442_3_2 v_conv1_i_i443_3_2;
(*   %conv2.i.i445.3.2 = zext i8 %conv3.i.i447.2.2 to i32 *)
cast v_conv2_i_i445_3_2@uint32 v_conv3_i_i447_2_2@uint8;
(*   %xor.i.i446.3.2 = xor i32 %conv2.i.i445.3.2, %mul.i.i444.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i446_3_2 v_conv2_i_i445_3_2 v_mul_i_i444_3_2;
(*   %conv3.i.i447.3.2 = trunc i32 %xor.i.i446.3.2 to i8 *)
split tmp_v_xor_i_i446_3_2 v_conv3_i_i447_3_2 v_xor_i_i446_3_2 8;
vpc v_conv3_i_i447_3_2@uint8 v_conv3_i_i447_3_2@uint32;
(*   %conv4.i.i448.3.2 = zext i8 %conv5.i.i450.2.2 to i32 *)
cast v_conv4_i_i448_3_2@uint32 v_conv5_i_i450_2_2@uint8;
(*   %shr.i.i449.3.2 = ashr i32 %conv4.i.i448.3.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i449_3_2 tmp_to_be_used v_conv4_i_i448_3_2 1;
(*   %conv5.i.i450.3.2 = trunc i32 %shr.i.i449.3.2 to i8 *)
split tmp_v_shr_i_i449_3_2 v_conv5_i_i450_3_2 v_shr_i_i449_3_2 8;
vpc v_conv5_i_i450_3_2@uint8 v_conv5_i_i450_3_2@uint32;
(*   %conv6.i.i451.3.2 = zext i8 %conv7.i.i453.2.2 to i32 *)
cast v_conv6_i_i451_3_2@uint32 v_conv7_i_i453_2_2@uint8;
(*   %shl.i.i452.3.2 = shl i32 %conv6.i.i451.3.2, 1 *)
shls discard_45 v_shl_i_i452_3_2 v_conv6_i_i451_3_2 1;
(*   %conv7.i.i453.3.2 = trunc i32 %shl.i.i452.3.2 to i8 *)
split tmp_v_shl_i_i452_3_2 v_conv7_i_i453_3_2 v_shl_i_i452_3_2 8;
vpc v_conv7_i_i453_3_2@uint8 v_conv7_i_i453_3_2@uint32;
(*   %conv.i.i441.4.2 = zext i8 %conv5.i.i450.3.2 to i32 *)
cast v_conv_i_i441_4_2@uint32 v_conv5_i_i450_3_2@uint8;
(*   %and.i.i442.4.2 = and i32 %conv.i.i441.4.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i442_4_2 v_conv_i_i441_4_2 (0x1)@uint32;
(*   %conv1.i.i443.4.2 = zext i8 %conv7.i.i453.3.2 to i32 *)
cast v_conv1_i_i443_4_2@uint32 v_conv7_i_i453_3_2@uint8;
(*   %mul.i.i444.4.2 = mul nsw i32 %and.i.i442.4.2, %conv1.i.i443.4.2 *)
mul v_mul_i_i444_4_2 v_and_i_i442_4_2 v_conv1_i_i443_4_2;
(*   %conv2.i.i445.4.2 = zext i8 %conv3.i.i447.3.2 to i32 *)
cast v_conv2_i_i445_4_2@uint32 v_conv3_i_i447_3_2@uint8;
(*   %xor.i.i446.4.2 = xor i32 %conv2.i.i445.4.2, %mul.i.i444.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i446_4_2 v_conv2_i_i445_4_2 v_mul_i_i444_4_2;
(*   %conv3.i.i447.4.2 = trunc i32 %xor.i.i446.4.2 to i8 *)
split tmp_v_xor_i_i446_4_2 v_conv3_i_i447_4_2 v_xor_i_i446_4_2 8;
vpc v_conv3_i_i447_4_2@uint8 v_conv3_i_i447_4_2@uint32;
(*   %conv4.i.i448.4.2 = zext i8 %conv5.i.i450.3.2 to i32 *)
cast v_conv4_i_i448_4_2@uint32 v_conv5_i_i450_3_2@uint8;
(*   %shr.i.i449.4.2 = ashr i32 %conv4.i.i448.4.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i449_4_2 tmp_to_be_used v_conv4_i_i448_4_2 1;
(*   %conv5.i.i450.4.2 = trunc i32 %shr.i.i449.4.2 to i8 *)
split tmp_v_shr_i_i449_4_2 v_conv5_i_i450_4_2 v_shr_i_i449_4_2 8;
vpc v_conv5_i_i450_4_2@uint8 v_conv5_i_i450_4_2@uint32;
(*   %conv6.i.i451.4.2 = zext i8 %conv7.i.i453.3.2 to i32 *)
cast v_conv6_i_i451_4_2@uint32 v_conv7_i_i453_3_2@uint8;
(*   %shl.i.i452.4.2 = shl i32 %conv6.i.i451.4.2, 1 *)
shls discard_46 v_shl_i_i452_4_2 v_conv6_i_i451_4_2 1;
(*   %conv7.i.i453.4.2 = trunc i32 %shl.i.i452.4.2 to i8 *)
split tmp_v_shl_i_i452_4_2 v_conv7_i_i453_4_2 v_shl_i_i452_4_2 8;
vpc v_conv7_i_i453_4_2@uint8 v_conv7_i_i453_4_2@uint32;
(*   %conv.i.i441.5.2 = zext i8 %conv5.i.i450.4.2 to i32 *)
cast v_conv_i_i441_5_2@uint32 v_conv5_i_i450_4_2@uint8;
(*   %and.i.i442.5.2 = and i32 %conv.i.i441.5.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i442_5_2 v_conv_i_i441_5_2 (0x1)@uint32;
(*   %conv1.i.i443.5.2 = zext i8 %conv7.i.i453.4.2 to i32 *)
cast v_conv1_i_i443_5_2@uint32 v_conv7_i_i453_4_2@uint8;
(*   %mul.i.i444.5.2 = mul nsw i32 %and.i.i442.5.2, %conv1.i.i443.5.2 *)
mul v_mul_i_i444_5_2 v_and_i_i442_5_2 v_conv1_i_i443_5_2;
(*   %conv2.i.i445.5.2 = zext i8 %conv3.i.i447.4.2 to i32 *)
cast v_conv2_i_i445_5_2@uint32 v_conv3_i_i447_4_2@uint8;
(*   %xor.i.i446.5.2 = xor i32 %conv2.i.i445.5.2, %mul.i.i444.5.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i446_5_2 v_conv2_i_i445_5_2 v_mul_i_i444_5_2;
(*   %conv3.i.i447.5.2 = trunc i32 %xor.i.i446.5.2 to i8 *)
split tmp_v_xor_i_i446_5_2 v_conv3_i_i447_5_2 v_xor_i_i446_5_2 8;
vpc v_conv3_i_i447_5_2@uint8 v_conv3_i_i447_5_2@uint32;
(*   %conv4.i.i448.5.2 = zext i8 %conv5.i.i450.4.2 to i32 *)
cast v_conv4_i_i448_5_2@uint32 v_conv5_i_i450_4_2@uint8;
(*   %shr.i.i449.5.2 = ashr i32 %conv4.i.i448.5.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i449_5_2 tmp_to_be_used v_conv4_i_i448_5_2 1;
(*   %conv5.i.i450.5.2 = trunc i32 %shr.i.i449.5.2 to i8 *)
split tmp_v_shr_i_i449_5_2 v_conv5_i_i450_5_2 v_shr_i_i449_5_2 8;
vpc v_conv5_i_i450_5_2@uint8 v_conv5_i_i450_5_2@uint32;
(*   %conv6.i.i451.5.2 = zext i8 %conv7.i.i453.4.2 to i32 *)
cast v_conv6_i_i451_5_2@uint32 v_conv7_i_i453_4_2@uint8;
(*   %shl.i.i452.5.2 = shl i32 %conv6.i.i451.5.2, 1 *)
shls discard_47 v_shl_i_i452_5_2 v_conv6_i_i451_5_2 1;
(*   %conv7.i.i453.5.2 = trunc i32 %shl.i.i452.5.2 to i8 *)
split tmp_v_shl_i_i452_5_2 v_conv7_i_i453_5_2 v_shl_i_i452_5_2 8;
vpc v_conv7_i_i453_5_2@uint8 v_conv7_i_i453_5_2@uint32;
(*   %conv.i.i441.6.2 = zext i8 %conv5.i.i450.5.2 to i32 *)
cast v_conv_i_i441_6_2@uint32 v_conv5_i_i450_5_2@uint8;
(*   %and.i.i442.6.2 = and i32 %conv.i.i441.6.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i442_6_2 v_conv_i_i441_6_2 (0x1)@uint32;
(*   %conv1.i.i443.6.2 = zext i8 %conv7.i.i453.5.2 to i32 *)
cast v_conv1_i_i443_6_2@uint32 v_conv7_i_i453_5_2@uint8;
(*   %mul.i.i444.6.2 = mul nsw i32 %and.i.i442.6.2, %conv1.i.i443.6.2 *)
mul v_mul_i_i444_6_2 v_and_i_i442_6_2 v_conv1_i_i443_6_2;
(*   %conv2.i.i445.6.2 = zext i8 %conv3.i.i447.5.2 to i32 *)
cast v_conv2_i_i445_6_2@uint32 v_conv3_i_i447_5_2@uint8;
(*   %xor.i.i446.6.2 = xor i32 %conv2.i.i445.6.2, %mul.i.i444.6.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i446_6_2 v_conv2_i_i445_6_2 v_mul_i_i444_6_2;
(*   %conv3.i.i447.6.2 = trunc i32 %xor.i.i446.6.2 to i8 *)
split tmp_v_xor_i_i446_6_2 v_conv3_i_i447_6_2 v_xor_i_i446_6_2 8;
vpc v_conv3_i_i447_6_2@uint8 v_conv3_i_i447_6_2@uint32;
(*   %conv4.i.i448.6.2 = zext i8 %conv5.i.i450.5.2 to i32 *)
cast v_conv4_i_i448_6_2@uint32 v_conv5_i_i450_5_2@uint8;
(*   %shr.i.i449.6.2 = ashr i32 %conv4.i.i448.6.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i449_6_2 tmp_to_be_used v_conv4_i_i448_6_2 1;
(*   %conv5.i.i450.6.2 = trunc i32 %shr.i.i449.6.2 to i8 *)
split tmp_v_shr_i_i449_6_2 v_conv5_i_i450_6_2 v_shr_i_i449_6_2 8;
vpc v_conv5_i_i450_6_2@uint8 v_conv5_i_i450_6_2@uint32;
(*   %conv6.i.i451.6.2 = zext i8 %conv7.i.i453.5.2 to i32 *)
cast v_conv6_i_i451_6_2@uint32 v_conv7_i_i453_5_2@uint8;
(*   %shl.i.i452.6.2 = shl i32 %conv6.i.i451.6.2, 1 *)
shls discard_48 v_shl_i_i452_6_2 v_conv6_i_i451_6_2 1;
(*   %conv7.i.i453.6.2 = trunc i32 %shl.i.i452.6.2 to i8 *)
split tmp_v_shl_i_i452_6_2 v_conv7_i_i453_6_2 v_shl_i_i452_6_2 8;
vpc v_conv7_i_i453_6_2@uint8 v_conv7_i_i453_6_2@uint32;
(*   %conv.i.i441.7.2 = zext i8 %conv5.i.i450.6.2 to i32 *)
cast v_conv_i_i441_7_2@uint32 v_conv5_i_i450_6_2@uint8;
(*   %and.i.i442.7.2 = and i32 %conv.i.i441.7.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i442_7_2 v_conv_i_i441_7_2 (0x1)@uint32;
(*   %conv1.i.i443.7.2 = zext i8 %conv7.i.i453.6.2 to i32 *)
cast v_conv1_i_i443_7_2@uint32 v_conv7_i_i453_6_2@uint8;
(*   %mul.i.i444.7.2 = mul nsw i32 %and.i.i442.7.2, %conv1.i.i443.7.2 *)
mul v_mul_i_i444_7_2 v_and_i_i442_7_2 v_conv1_i_i443_7_2;
(*   %conv2.i.i445.7.2 = zext i8 %conv3.i.i447.6.2 to i32 *)
cast v_conv2_i_i445_7_2@uint32 v_conv3_i_i447_6_2@uint8;
(*   %xor.i.i446.7.2 = xor i32 %conv2.i.i445.7.2, %mul.i.i444.7.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i446_7_2 v_conv2_i_i445_7_2 v_mul_i_i444_7_2;
(*   %conv3.i.i447.7.2 = trunc i32 %xor.i.i446.7.2 to i8 *)
split tmp_v_xor_i_i446_7_2 v_conv3_i_i447_7_2 v_xor_i_i446_7_2 8;
vpc v_conv3_i_i447_7_2@uint8 v_conv3_i_i447_7_2@uint32;
(*   %arrayidx6.i457.2 = getelementptr inbounds i8, i8* %arraydecay18, i64 2 *)
(*   store i8 %conv3.i.i447.7.2, i8* %arrayidx6.i457.2, align 1 *)
mov ab1_2 v_conv3_i_i447_7_2;
(*   %arrayidx.i433.3 = getelementptr inbounds i8, i8* %a, i64 3 *)
(*   %14 = load i8, i8* %arrayidx.i433.3, align 1 *)
mov v14 a_3;
(*   %15 = load i8, i8* %b, align 1 *)
mov v15 b_0;
(*   %conv.i.i441.3227 = zext i8 %15 to i32 *)
cast v_conv_i_i441_3227@uint32 v15@uint8;
(*   %and.i.i442.3228 = and i32 %conv.i.i441.3227, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i442_3228 v_conv_i_i441_3227 (0x1)@uint32;
(*   %conv1.i.i443.3229 = zext i8 %14 to i32 *)
cast v_conv1_i_i443_3229@uint32 v14@uint8;
(*   %mul.i.i444.3230 = mul nsw i32 %and.i.i442.3228, %conv1.i.i443.3229 *)
mul v_mul_i_i444_3230 v_and_i_i442_3228 v_conv1_i_i443_3229;
(*   %conv3.i.i447.3231 = trunc i32 %mul.i.i444.3230 to i8 *)
split tmp_v_mul_i_i444_3230 v_conv3_i_i447_3231 v_mul_i_i444_3230 8;
vpc v_conv3_i_i447_3231@uint8 v_conv3_i_i447_3231@uint32;
(*   %conv4.i.i448.3232 = zext i8 %15 to i32 *)
cast v_conv4_i_i448_3232@uint32 v15@uint8;
(*   %shr.i.i449.3233 = ashr i32 %conv4.i.i448.3232, 1 *)
(* You may need to modify here *)
split v_shr_i_i449_3233 tmp_to_be_used v_conv4_i_i448_3232 1;
(*   %conv5.i.i450.3234 = trunc i32 %shr.i.i449.3233 to i8 *)
split tmp_v_shr_i_i449_3233 v_conv5_i_i450_3234 v_shr_i_i449_3233 8;
vpc v_conv5_i_i450_3234@uint8 v_conv5_i_i450_3234@uint32;
(*   %conv6.i.i451.3235 = zext i8 %14 to i32 *)
cast v_conv6_i_i451_3235@uint32 v14@uint8;
(*   %shl.i.i452.3236 = shl i32 %conv6.i.i451.3235, 1 *)
shls discard_49 v_shl_i_i452_3236 v_conv6_i_i451_3235 1;
(*   %conv7.i.i453.3237 = trunc i32 %shl.i.i452.3236 to i8 *)
split tmp_v_shl_i_i452_3236 v_conv7_i_i453_3237 v_shl_i_i452_3236 8;
vpc v_conv7_i_i453_3237@uint8 v_conv7_i_i453_3237@uint32;
(*   %conv.i.i441.1.3 = zext i8 %conv5.i.i450.3234 to i32 *)
cast v_conv_i_i441_1_3@uint32 v_conv5_i_i450_3234@uint8;
(*   %and.i.i442.1.3 = and i32 %conv.i.i441.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i442_1_3 v_conv_i_i441_1_3 (0x1)@uint32;
(*   %conv1.i.i443.1.3 = zext i8 %conv7.i.i453.3237 to i32 *)
cast v_conv1_i_i443_1_3@uint32 v_conv7_i_i453_3237@uint8;
(*   %mul.i.i444.1.3 = mul nsw i32 %and.i.i442.1.3, %conv1.i.i443.1.3 *)
mul v_mul_i_i444_1_3 v_and_i_i442_1_3 v_conv1_i_i443_1_3;
(*   %conv2.i.i445.1.3 = zext i8 %conv3.i.i447.3231 to i32 *)
cast v_conv2_i_i445_1_3@uint32 v_conv3_i_i447_3231@uint8;
(*   %xor.i.i446.1.3 = xor i32 %conv2.i.i445.1.3, %mul.i.i444.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i446_1_3 v_conv2_i_i445_1_3 v_mul_i_i444_1_3;
(*   %conv3.i.i447.1.3 = trunc i32 %xor.i.i446.1.3 to i8 *)
split tmp_v_xor_i_i446_1_3 v_conv3_i_i447_1_3 v_xor_i_i446_1_3 8;
vpc v_conv3_i_i447_1_3@uint8 v_conv3_i_i447_1_3@uint32;
(*   %conv4.i.i448.1.3 = zext i8 %conv5.i.i450.3234 to i32 *)
cast v_conv4_i_i448_1_3@uint32 v_conv5_i_i450_3234@uint8;
(*   %shr.i.i449.1.3 = ashr i32 %conv4.i.i448.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i449_1_3 tmp_to_be_used v_conv4_i_i448_1_3 1;
(*   %conv5.i.i450.1.3 = trunc i32 %shr.i.i449.1.3 to i8 *)
split tmp_v_shr_i_i449_1_3 v_conv5_i_i450_1_3 v_shr_i_i449_1_3 8;
vpc v_conv5_i_i450_1_3@uint8 v_conv5_i_i450_1_3@uint32;
(*   %conv6.i.i451.1.3 = zext i8 %conv7.i.i453.3237 to i32 *)
cast v_conv6_i_i451_1_3@uint32 v_conv7_i_i453_3237@uint8;
(*   %shl.i.i452.1.3 = shl i32 %conv6.i.i451.1.3, 1 *)
shls discard_50 v_shl_i_i452_1_3 v_conv6_i_i451_1_3 1;
(*   %conv7.i.i453.1.3 = trunc i32 %shl.i.i452.1.3 to i8 *)
split tmp_v_shl_i_i452_1_3 v_conv7_i_i453_1_3 v_shl_i_i452_1_3 8;
vpc v_conv7_i_i453_1_3@uint8 v_conv7_i_i453_1_3@uint32;
(*   %conv.i.i441.2.3 = zext i8 %conv5.i.i450.1.3 to i32 *)
cast v_conv_i_i441_2_3@uint32 v_conv5_i_i450_1_3@uint8;
(*   %and.i.i442.2.3 = and i32 %conv.i.i441.2.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i442_2_3 v_conv_i_i441_2_3 (0x1)@uint32;
(*   %conv1.i.i443.2.3 = zext i8 %conv7.i.i453.1.3 to i32 *)
cast v_conv1_i_i443_2_3@uint32 v_conv7_i_i453_1_3@uint8;
(*   %mul.i.i444.2.3 = mul nsw i32 %and.i.i442.2.3, %conv1.i.i443.2.3 *)
mul v_mul_i_i444_2_3 v_and_i_i442_2_3 v_conv1_i_i443_2_3;
(*   %conv2.i.i445.2.3 = zext i8 %conv3.i.i447.1.3 to i32 *)
cast v_conv2_i_i445_2_3@uint32 v_conv3_i_i447_1_3@uint8;
(*   %xor.i.i446.2.3 = xor i32 %conv2.i.i445.2.3, %mul.i.i444.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i446_2_3 v_conv2_i_i445_2_3 v_mul_i_i444_2_3;
(*   %conv3.i.i447.2.3 = trunc i32 %xor.i.i446.2.3 to i8 *)
split tmp_v_xor_i_i446_2_3 v_conv3_i_i447_2_3 v_xor_i_i446_2_3 8;
vpc v_conv3_i_i447_2_3@uint8 v_conv3_i_i447_2_3@uint32;
(*   %conv4.i.i448.2.3 = zext i8 %conv5.i.i450.1.3 to i32 *)
cast v_conv4_i_i448_2_3@uint32 v_conv5_i_i450_1_3@uint8;
(*   %shr.i.i449.2.3 = ashr i32 %conv4.i.i448.2.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i449_2_3 tmp_to_be_used v_conv4_i_i448_2_3 1;
(*   %conv5.i.i450.2.3 = trunc i32 %shr.i.i449.2.3 to i8 *)
split tmp_v_shr_i_i449_2_3 v_conv5_i_i450_2_3 v_shr_i_i449_2_3 8;
vpc v_conv5_i_i450_2_3@uint8 v_conv5_i_i450_2_3@uint32;
(*   %conv6.i.i451.2.3 = zext i8 %conv7.i.i453.1.3 to i32 *)
cast v_conv6_i_i451_2_3@uint32 v_conv7_i_i453_1_3@uint8;
(*   %shl.i.i452.2.3 = shl i32 %conv6.i.i451.2.3, 1 *)
shls discard_51 v_shl_i_i452_2_3 v_conv6_i_i451_2_3 1;
(*   %conv7.i.i453.2.3 = trunc i32 %shl.i.i452.2.3 to i8 *)
split tmp_v_shl_i_i452_2_3 v_conv7_i_i453_2_3 v_shl_i_i452_2_3 8;
vpc v_conv7_i_i453_2_3@uint8 v_conv7_i_i453_2_3@uint32;
(*   %conv.i.i441.3.3 = zext i8 %conv5.i.i450.2.3 to i32 *)
cast v_conv_i_i441_3_3@uint32 v_conv5_i_i450_2_3@uint8;
(*   %and.i.i442.3.3 = and i32 %conv.i.i441.3.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i442_3_3 v_conv_i_i441_3_3 (0x1)@uint32;
(*   %conv1.i.i443.3.3 = zext i8 %conv7.i.i453.2.3 to i32 *)
cast v_conv1_i_i443_3_3@uint32 v_conv7_i_i453_2_3@uint8;
(*   %mul.i.i444.3.3 = mul nsw i32 %and.i.i442.3.3, %conv1.i.i443.3.3 *)
mul v_mul_i_i444_3_3 v_and_i_i442_3_3 v_conv1_i_i443_3_3;
(*   %conv2.i.i445.3.3 = zext i8 %conv3.i.i447.2.3 to i32 *)
cast v_conv2_i_i445_3_3@uint32 v_conv3_i_i447_2_3@uint8;
(*   %xor.i.i446.3.3 = xor i32 %conv2.i.i445.3.3, %mul.i.i444.3.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i446_3_3 v_conv2_i_i445_3_3 v_mul_i_i444_3_3;
(*   %conv3.i.i447.3.3 = trunc i32 %xor.i.i446.3.3 to i8 *)
split tmp_v_xor_i_i446_3_3 v_conv3_i_i447_3_3 v_xor_i_i446_3_3 8;
vpc v_conv3_i_i447_3_3@uint8 v_conv3_i_i447_3_3@uint32;
(*   %conv4.i.i448.3.3 = zext i8 %conv5.i.i450.2.3 to i32 *)
cast v_conv4_i_i448_3_3@uint32 v_conv5_i_i450_2_3@uint8;
(*   %shr.i.i449.3.3 = ashr i32 %conv4.i.i448.3.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i449_3_3 tmp_to_be_used v_conv4_i_i448_3_3 1;
(*   %conv5.i.i450.3.3 = trunc i32 %shr.i.i449.3.3 to i8 *)
split tmp_v_shr_i_i449_3_3 v_conv5_i_i450_3_3 v_shr_i_i449_3_3 8;
vpc v_conv5_i_i450_3_3@uint8 v_conv5_i_i450_3_3@uint32;
(*   %conv6.i.i451.3.3 = zext i8 %conv7.i.i453.2.3 to i32 *)
cast v_conv6_i_i451_3_3@uint32 v_conv7_i_i453_2_3@uint8;
(*   %shl.i.i452.3.3 = shl i32 %conv6.i.i451.3.3, 1 *)
shls discard_52 v_shl_i_i452_3_3 v_conv6_i_i451_3_3 1;
(*   %conv7.i.i453.3.3 = trunc i32 %shl.i.i452.3.3 to i8 *)
split tmp_v_shl_i_i452_3_3 v_conv7_i_i453_3_3 v_shl_i_i452_3_3 8;
vpc v_conv7_i_i453_3_3@uint8 v_conv7_i_i453_3_3@uint32;
(*   %conv.i.i441.4.3 = zext i8 %conv5.i.i450.3.3 to i32 *)
cast v_conv_i_i441_4_3@uint32 v_conv5_i_i450_3_3@uint8;
(*   %and.i.i442.4.3 = and i32 %conv.i.i441.4.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i442_4_3 v_conv_i_i441_4_3 (0x1)@uint32;
(*   %conv1.i.i443.4.3 = zext i8 %conv7.i.i453.3.3 to i32 *)
cast v_conv1_i_i443_4_3@uint32 v_conv7_i_i453_3_3@uint8;
(*   %mul.i.i444.4.3 = mul nsw i32 %and.i.i442.4.3, %conv1.i.i443.4.3 *)
mul v_mul_i_i444_4_3 v_and_i_i442_4_3 v_conv1_i_i443_4_3;
(*   %conv2.i.i445.4.3 = zext i8 %conv3.i.i447.3.3 to i32 *)
cast v_conv2_i_i445_4_3@uint32 v_conv3_i_i447_3_3@uint8;
(*   %xor.i.i446.4.3 = xor i32 %conv2.i.i445.4.3, %mul.i.i444.4.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i446_4_3 v_conv2_i_i445_4_3 v_mul_i_i444_4_3;
(*   %conv3.i.i447.4.3 = trunc i32 %xor.i.i446.4.3 to i8 *)
split tmp_v_xor_i_i446_4_3 v_conv3_i_i447_4_3 v_xor_i_i446_4_3 8;
vpc v_conv3_i_i447_4_3@uint8 v_conv3_i_i447_4_3@uint32;
(*   %conv4.i.i448.4.3 = zext i8 %conv5.i.i450.3.3 to i32 *)
cast v_conv4_i_i448_4_3@uint32 v_conv5_i_i450_3_3@uint8;
(*   %shr.i.i449.4.3 = ashr i32 %conv4.i.i448.4.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i449_4_3 tmp_to_be_used v_conv4_i_i448_4_3 1;
(*   %conv5.i.i450.4.3 = trunc i32 %shr.i.i449.4.3 to i8 *)
split tmp_v_shr_i_i449_4_3 v_conv5_i_i450_4_3 v_shr_i_i449_4_3 8;
vpc v_conv5_i_i450_4_3@uint8 v_conv5_i_i450_4_3@uint32;
(*   %conv6.i.i451.4.3 = zext i8 %conv7.i.i453.3.3 to i32 *)
cast v_conv6_i_i451_4_3@uint32 v_conv7_i_i453_3_3@uint8;
(*   %shl.i.i452.4.3 = shl i32 %conv6.i.i451.4.3, 1 *)
shls discard_53 v_shl_i_i452_4_3 v_conv6_i_i451_4_3 1;
(*   %conv7.i.i453.4.3 = trunc i32 %shl.i.i452.4.3 to i8 *)
split tmp_v_shl_i_i452_4_3 v_conv7_i_i453_4_3 v_shl_i_i452_4_3 8;
vpc v_conv7_i_i453_4_3@uint8 v_conv7_i_i453_4_3@uint32;
(*   %conv.i.i441.5.3 = zext i8 %conv5.i.i450.4.3 to i32 *)
cast v_conv_i_i441_5_3@uint32 v_conv5_i_i450_4_3@uint8;
(*   %and.i.i442.5.3 = and i32 %conv.i.i441.5.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i442_5_3 v_conv_i_i441_5_3 (0x1)@uint32;
(*   %conv1.i.i443.5.3 = zext i8 %conv7.i.i453.4.3 to i32 *)
cast v_conv1_i_i443_5_3@uint32 v_conv7_i_i453_4_3@uint8;
(*   %mul.i.i444.5.3 = mul nsw i32 %and.i.i442.5.3, %conv1.i.i443.5.3 *)
mul v_mul_i_i444_5_3 v_and_i_i442_5_3 v_conv1_i_i443_5_3;
(*   %conv2.i.i445.5.3 = zext i8 %conv3.i.i447.4.3 to i32 *)
cast v_conv2_i_i445_5_3@uint32 v_conv3_i_i447_4_3@uint8;
(*   %xor.i.i446.5.3 = xor i32 %conv2.i.i445.5.3, %mul.i.i444.5.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i446_5_3 v_conv2_i_i445_5_3 v_mul_i_i444_5_3;
(*   %conv3.i.i447.5.3 = trunc i32 %xor.i.i446.5.3 to i8 *)
split tmp_v_xor_i_i446_5_3 v_conv3_i_i447_5_3 v_xor_i_i446_5_3 8;
vpc v_conv3_i_i447_5_3@uint8 v_conv3_i_i447_5_3@uint32;
(*   %conv4.i.i448.5.3 = zext i8 %conv5.i.i450.4.3 to i32 *)
cast v_conv4_i_i448_5_3@uint32 v_conv5_i_i450_4_3@uint8;
(*   %shr.i.i449.5.3 = ashr i32 %conv4.i.i448.5.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i449_5_3 tmp_to_be_used v_conv4_i_i448_5_3 1;
(*   %conv5.i.i450.5.3 = trunc i32 %shr.i.i449.5.3 to i8 *)
split tmp_v_shr_i_i449_5_3 v_conv5_i_i450_5_3 v_shr_i_i449_5_3 8;
vpc v_conv5_i_i450_5_3@uint8 v_conv5_i_i450_5_3@uint32;
(*   %conv6.i.i451.5.3 = zext i8 %conv7.i.i453.4.3 to i32 *)
cast v_conv6_i_i451_5_3@uint32 v_conv7_i_i453_4_3@uint8;
(*   %shl.i.i452.5.3 = shl i32 %conv6.i.i451.5.3, 1 *)
shls discard_54 v_shl_i_i452_5_3 v_conv6_i_i451_5_3 1;
(*   %conv7.i.i453.5.3 = trunc i32 %shl.i.i452.5.3 to i8 *)
split tmp_v_shl_i_i452_5_3 v_conv7_i_i453_5_3 v_shl_i_i452_5_3 8;
vpc v_conv7_i_i453_5_3@uint8 v_conv7_i_i453_5_3@uint32;
(*   %conv.i.i441.6.3 = zext i8 %conv5.i.i450.5.3 to i32 *)
cast v_conv_i_i441_6_3@uint32 v_conv5_i_i450_5_3@uint8;
(*   %and.i.i442.6.3 = and i32 %conv.i.i441.6.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i442_6_3 v_conv_i_i441_6_3 (0x1)@uint32;
(*   %conv1.i.i443.6.3 = zext i8 %conv7.i.i453.5.3 to i32 *)
cast v_conv1_i_i443_6_3@uint32 v_conv7_i_i453_5_3@uint8;
(*   %mul.i.i444.6.3 = mul nsw i32 %and.i.i442.6.3, %conv1.i.i443.6.3 *)
mul v_mul_i_i444_6_3 v_and_i_i442_6_3 v_conv1_i_i443_6_3;
(*   %conv2.i.i445.6.3 = zext i8 %conv3.i.i447.5.3 to i32 *)
cast v_conv2_i_i445_6_3@uint32 v_conv3_i_i447_5_3@uint8;
(*   %xor.i.i446.6.3 = xor i32 %conv2.i.i445.6.3, %mul.i.i444.6.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i446_6_3 v_conv2_i_i445_6_3 v_mul_i_i444_6_3;
(*   %conv3.i.i447.6.3 = trunc i32 %xor.i.i446.6.3 to i8 *)
split tmp_v_xor_i_i446_6_3 v_conv3_i_i447_6_3 v_xor_i_i446_6_3 8;
vpc v_conv3_i_i447_6_3@uint8 v_conv3_i_i447_6_3@uint32;
(*   %conv4.i.i448.6.3 = zext i8 %conv5.i.i450.5.3 to i32 *)
cast v_conv4_i_i448_6_3@uint32 v_conv5_i_i450_5_3@uint8;
(*   %shr.i.i449.6.3 = ashr i32 %conv4.i.i448.6.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i449_6_3 tmp_to_be_used v_conv4_i_i448_6_3 1;
(*   %conv5.i.i450.6.3 = trunc i32 %shr.i.i449.6.3 to i8 *)
split tmp_v_shr_i_i449_6_3 v_conv5_i_i450_6_3 v_shr_i_i449_6_3 8;
vpc v_conv5_i_i450_6_3@uint8 v_conv5_i_i450_6_3@uint32;
(*   %conv6.i.i451.6.3 = zext i8 %conv7.i.i453.5.3 to i32 *)
cast v_conv6_i_i451_6_3@uint32 v_conv7_i_i453_5_3@uint8;
(*   %shl.i.i452.6.3 = shl i32 %conv6.i.i451.6.3, 1 *)
shls discard_55 v_shl_i_i452_6_3 v_conv6_i_i451_6_3 1;
(*   %conv7.i.i453.6.3 = trunc i32 %shl.i.i452.6.3 to i8 *)
split tmp_v_shl_i_i452_6_3 v_conv7_i_i453_6_3 v_shl_i_i452_6_3 8;
vpc v_conv7_i_i453_6_3@uint8 v_conv7_i_i453_6_3@uint32;
(*   %conv.i.i441.7.3 = zext i8 %conv5.i.i450.6.3 to i32 *)
cast v_conv_i_i441_7_3@uint32 v_conv5_i_i450_6_3@uint8;
(*   %and.i.i442.7.3 = and i32 %conv.i.i441.7.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i442_7_3 v_conv_i_i441_7_3 (0x1)@uint32;
(*   %conv1.i.i443.7.3 = zext i8 %conv7.i.i453.6.3 to i32 *)
cast v_conv1_i_i443_7_3@uint32 v_conv7_i_i453_6_3@uint8;
(*   %mul.i.i444.7.3 = mul nsw i32 %and.i.i442.7.3, %conv1.i.i443.7.3 *)
mul v_mul_i_i444_7_3 v_and_i_i442_7_3 v_conv1_i_i443_7_3;
(*   %conv2.i.i445.7.3 = zext i8 %conv3.i.i447.6.3 to i32 *)
cast v_conv2_i_i445_7_3@uint32 v_conv3_i_i447_6_3@uint8;
(*   %xor.i.i446.7.3 = xor i32 %conv2.i.i445.7.3, %mul.i.i444.7.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i446_7_3 v_conv2_i_i445_7_3 v_mul_i_i444_7_3;
(*   %conv3.i.i447.7.3 = trunc i32 %xor.i.i446.7.3 to i8 *)
split tmp_v_xor_i_i446_7_3 v_conv3_i_i447_7_3 v_xor_i_i446_7_3 8;
vpc v_conv3_i_i447_7_3@uint8 v_conv3_i_i447_7_3@uint32;
(*   %arrayidx6.i457.3 = getelementptr inbounds i8, i8* %arraydecay18, i64 3 *)
(*   store i8 %conv3.i.i447.7.3, i8* %arrayidx6.i457.3, align 1 *)
mov ab1_3 v_conv3_i_i447_7_3;
(*   %arraydecay19 = getelementptr inbounds [4 x i8], [4 x i8]* %a1b, i64 0, i64 0 *)
(*   %arrayidx.i390 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %16 = load i8, i8* %arrayidx.i390, align 1 *)
mov v16 a_1;
(*   %17 = load i8, i8* %b, align 1 *)
mov v17 b_0;
(*   %conv.i.i398 = zext i8 %17 to i32 *)
cast v_conv_i_i398@uint32 v17@uint8;
(*   %and.i.i399 = and i32 %conv.i.i398, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i399 v_conv_i_i398 (0x1)@uint32;
(*   %conv1.i.i400 = zext i8 %16 to i32 *)
cast v_conv1_i_i400@uint32 v16@uint8;
(*   %mul.i.i401 = mul nsw i32 %and.i.i399, %conv1.i.i400 *)
mul v_mul_i_i401 v_and_i_i399 v_conv1_i_i400;
(*   %conv3.i.i404 = trunc i32 %mul.i.i401 to i8 *)
split tmp_v_mul_i_i401 v_conv3_i_i404 v_mul_i_i401 8;
vpc v_conv3_i_i404@uint8 v_conv3_i_i404@uint32;
(*   %conv4.i.i405 = zext i8 %17 to i32 *)
cast v_conv4_i_i405@uint32 v17@uint8;
(*   %shr.i.i406 = ashr i32 %conv4.i.i405, 1 *)
(* You may need to modify here *)
split v_shr_i_i406 tmp_to_be_used v_conv4_i_i405 1;
(*   %conv5.i.i407 = trunc i32 %shr.i.i406 to i8 *)
split tmp_v_shr_i_i406 v_conv5_i_i407 v_shr_i_i406 8;
vpc v_conv5_i_i407@uint8 v_conv5_i_i407@uint32;
(*   %conv6.i.i408 = zext i8 %16 to i32 *)
cast v_conv6_i_i408@uint32 v16@uint8;
(*   %shl.i.i409 = shl i32 %conv6.i.i408, 1 *)
shls discard_56 v_shl_i_i409 v_conv6_i_i408 1;
(*   %conv7.i.i410 = trunc i32 %shl.i.i409 to i8 *)
split tmp_v_shl_i_i409 v_conv7_i_i410 v_shl_i_i409 8;
vpc v_conv7_i_i410@uint8 v_conv7_i_i410@uint32;
(*   %conv.i.i398.1 = zext i8 %conv5.i.i407 to i32 *)
cast v_conv_i_i398_1@uint32 v_conv5_i_i407@uint8;
(*   %and.i.i399.1 = and i32 %conv.i.i398.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i399_1 v_conv_i_i398_1 (0x1)@uint32;
(*   %conv1.i.i400.1 = zext i8 %conv7.i.i410 to i32 *)
cast v_conv1_i_i400_1@uint32 v_conv7_i_i410@uint8;
(*   %mul.i.i401.1 = mul nsw i32 %and.i.i399.1, %conv1.i.i400.1 *)
mul v_mul_i_i401_1 v_and_i_i399_1 v_conv1_i_i400_1;
(*   %conv2.i.i402.1 = zext i8 %conv3.i.i404 to i32 *)
cast v_conv2_i_i402_1@uint32 v_conv3_i_i404@uint8;
(*   %xor.i.i403.1 = xor i32 %conv2.i.i402.1, %mul.i.i401.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i403_1 v_conv2_i_i402_1 v_mul_i_i401_1;
(*   %conv3.i.i404.1 = trunc i32 %xor.i.i403.1 to i8 *)
split tmp_v_xor_i_i403_1 v_conv3_i_i404_1 v_xor_i_i403_1 8;
vpc v_conv3_i_i404_1@uint8 v_conv3_i_i404_1@uint32;
(*   %conv4.i.i405.1 = zext i8 %conv5.i.i407 to i32 *)
cast v_conv4_i_i405_1@uint32 v_conv5_i_i407@uint8;
(*   %shr.i.i406.1 = ashr i32 %conv4.i.i405.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i406_1 tmp_to_be_used v_conv4_i_i405_1 1;
(*   %conv5.i.i407.1 = trunc i32 %shr.i.i406.1 to i8 *)
split tmp_v_shr_i_i406_1 v_conv5_i_i407_1 v_shr_i_i406_1 8;
vpc v_conv5_i_i407_1@uint8 v_conv5_i_i407_1@uint32;
(*   %conv6.i.i408.1 = zext i8 %conv7.i.i410 to i32 *)
cast v_conv6_i_i408_1@uint32 v_conv7_i_i410@uint8;
(*   %shl.i.i409.1 = shl i32 %conv6.i.i408.1, 1 *)
shls discard_57 v_shl_i_i409_1 v_conv6_i_i408_1 1;
(*   %conv7.i.i410.1 = trunc i32 %shl.i.i409.1 to i8 *)
split tmp_v_shl_i_i409_1 v_conv7_i_i410_1 v_shl_i_i409_1 8;
vpc v_conv7_i_i410_1@uint8 v_conv7_i_i410_1@uint32;
(*   %conv.i.i398.2 = zext i8 %conv5.i.i407.1 to i32 *)
cast v_conv_i_i398_2@uint32 v_conv5_i_i407_1@uint8;
(*   %and.i.i399.2 = and i32 %conv.i.i398.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i399_2 v_conv_i_i398_2 (0x1)@uint32;
(*   %conv1.i.i400.2 = zext i8 %conv7.i.i410.1 to i32 *)
cast v_conv1_i_i400_2@uint32 v_conv7_i_i410_1@uint8;
(*   %mul.i.i401.2 = mul nsw i32 %and.i.i399.2, %conv1.i.i400.2 *)
mul v_mul_i_i401_2 v_and_i_i399_2 v_conv1_i_i400_2;
(*   %conv2.i.i402.2 = zext i8 %conv3.i.i404.1 to i32 *)
cast v_conv2_i_i402_2@uint32 v_conv3_i_i404_1@uint8;
(*   %xor.i.i403.2 = xor i32 %conv2.i.i402.2, %mul.i.i401.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i403_2 v_conv2_i_i402_2 v_mul_i_i401_2;
(*   %conv3.i.i404.2 = trunc i32 %xor.i.i403.2 to i8 *)
split tmp_v_xor_i_i403_2 v_conv3_i_i404_2 v_xor_i_i403_2 8;
vpc v_conv3_i_i404_2@uint8 v_conv3_i_i404_2@uint32;
(*   %conv4.i.i405.2 = zext i8 %conv5.i.i407.1 to i32 *)
cast v_conv4_i_i405_2@uint32 v_conv5_i_i407_1@uint8;
(*   %shr.i.i406.2 = ashr i32 %conv4.i.i405.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i406_2 tmp_to_be_used v_conv4_i_i405_2 1;
(*   %conv5.i.i407.2 = trunc i32 %shr.i.i406.2 to i8 *)
split tmp_v_shr_i_i406_2 v_conv5_i_i407_2 v_shr_i_i406_2 8;
vpc v_conv5_i_i407_2@uint8 v_conv5_i_i407_2@uint32;
(*   %conv6.i.i408.2 = zext i8 %conv7.i.i410.1 to i32 *)
cast v_conv6_i_i408_2@uint32 v_conv7_i_i410_1@uint8;
(*   %shl.i.i409.2 = shl i32 %conv6.i.i408.2, 1 *)
shls discard_58 v_shl_i_i409_2 v_conv6_i_i408_2 1;
(*   %conv7.i.i410.2 = trunc i32 %shl.i.i409.2 to i8 *)
split tmp_v_shl_i_i409_2 v_conv7_i_i410_2 v_shl_i_i409_2 8;
vpc v_conv7_i_i410_2@uint8 v_conv7_i_i410_2@uint32;
(*   %conv.i.i398.3 = zext i8 %conv5.i.i407.2 to i32 *)
cast v_conv_i_i398_3@uint32 v_conv5_i_i407_2@uint8;
(*   %and.i.i399.3 = and i32 %conv.i.i398.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i399_3 v_conv_i_i398_3 (0x1)@uint32;
(*   %conv1.i.i400.3 = zext i8 %conv7.i.i410.2 to i32 *)
cast v_conv1_i_i400_3@uint32 v_conv7_i_i410_2@uint8;
(*   %mul.i.i401.3 = mul nsw i32 %and.i.i399.3, %conv1.i.i400.3 *)
mul v_mul_i_i401_3 v_and_i_i399_3 v_conv1_i_i400_3;
(*   %conv2.i.i402.3 = zext i8 %conv3.i.i404.2 to i32 *)
cast v_conv2_i_i402_3@uint32 v_conv3_i_i404_2@uint8;
(*   %xor.i.i403.3 = xor i32 %conv2.i.i402.3, %mul.i.i401.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i403_3 v_conv2_i_i402_3 v_mul_i_i401_3;
(*   %conv3.i.i404.3 = trunc i32 %xor.i.i403.3 to i8 *)
split tmp_v_xor_i_i403_3 v_conv3_i_i404_3 v_xor_i_i403_3 8;
vpc v_conv3_i_i404_3@uint8 v_conv3_i_i404_3@uint32;
(*   %conv4.i.i405.3 = zext i8 %conv5.i.i407.2 to i32 *)
cast v_conv4_i_i405_3@uint32 v_conv5_i_i407_2@uint8;
(*   %shr.i.i406.3 = ashr i32 %conv4.i.i405.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i406_3 tmp_to_be_used v_conv4_i_i405_3 1;
(*   %conv5.i.i407.3 = trunc i32 %shr.i.i406.3 to i8 *)
split tmp_v_shr_i_i406_3 v_conv5_i_i407_3 v_shr_i_i406_3 8;
vpc v_conv5_i_i407_3@uint8 v_conv5_i_i407_3@uint32;
(*   %conv6.i.i408.3 = zext i8 %conv7.i.i410.2 to i32 *)
cast v_conv6_i_i408_3@uint32 v_conv7_i_i410_2@uint8;
(*   %shl.i.i409.3 = shl i32 %conv6.i.i408.3, 1 *)
shls discard_59 v_shl_i_i409_3 v_conv6_i_i408_3 1;
(*   %conv7.i.i410.3 = trunc i32 %shl.i.i409.3 to i8 *)
split tmp_v_shl_i_i409_3 v_conv7_i_i410_3 v_shl_i_i409_3 8;
vpc v_conv7_i_i410_3@uint8 v_conv7_i_i410_3@uint32;
(*   %conv.i.i398.4 = zext i8 %conv5.i.i407.3 to i32 *)
cast v_conv_i_i398_4@uint32 v_conv5_i_i407_3@uint8;
(*   %and.i.i399.4 = and i32 %conv.i.i398.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i399_4 v_conv_i_i398_4 (0x1)@uint32;
(*   %conv1.i.i400.4 = zext i8 %conv7.i.i410.3 to i32 *)
cast v_conv1_i_i400_4@uint32 v_conv7_i_i410_3@uint8;
(*   %mul.i.i401.4 = mul nsw i32 %and.i.i399.4, %conv1.i.i400.4 *)
mul v_mul_i_i401_4 v_and_i_i399_4 v_conv1_i_i400_4;
(*   %conv2.i.i402.4 = zext i8 %conv3.i.i404.3 to i32 *)
cast v_conv2_i_i402_4@uint32 v_conv3_i_i404_3@uint8;
(*   %xor.i.i403.4 = xor i32 %conv2.i.i402.4, %mul.i.i401.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i403_4 v_conv2_i_i402_4 v_mul_i_i401_4;
(*   %conv3.i.i404.4 = trunc i32 %xor.i.i403.4 to i8 *)
split tmp_v_xor_i_i403_4 v_conv3_i_i404_4 v_xor_i_i403_4 8;
vpc v_conv3_i_i404_4@uint8 v_conv3_i_i404_4@uint32;
(*   %conv4.i.i405.4 = zext i8 %conv5.i.i407.3 to i32 *)
cast v_conv4_i_i405_4@uint32 v_conv5_i_i407_3@uint8;
(*   %shr.i.i406.4 = ashr i32 %conv4.i.i405.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i406_4 tmp_to_be_used v_conv4_i_i405_4 1;
(*   %conv5.i.i407.4 = trunc i32 %shr.i.i406.4 to i8 *)
split tmp_v_shr_i_i406_4 v_conv5_i_i407_4 v_shr_i_i406_4 8;
vpc v_conv5_i_i407_4@uint8 v_conv5_i_i407_4@uint32;
(*   %conv6.i.i408.4 = zext i8 %conv7.i.i410.3 to i32 *)
cast v_conv6_i_i408_4@uint32 v_conv7_i_i410_3@uint8;
(*   %shl.i.i409.4 = shl i32 %conv6.i.i408.4, 1 *)
shls discard_60 v_shl_i_i409_4 v_conv6_i_i408_4 1;
(*   %conv7.i.i410.4 = trunc i32 %shl.i.i409.4 to i8 *)
split tmp_v_shl_i_i409_4 v_conv7_i_i410_4 v_shl_i_i409_4 8;
vpc v_conv7_i_i410_4@uint8 v_conv7_i_i410_4@uint32;
(*   %conv.i.i398.5 = zext i8 %conv5.i.i407.4 to i32 *)
cast v_conv_i_i398_5@uint32 v_conv5_i_i407_4@uint8;
(*   %and.i.i399.5 = and i32 %conv.i.i398.5, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i399_5 v_conv_i_i398_5 (0x1)@uint32;
(*   %conv1.i.i400.5 = zext i8 %conv7.i.i410.4 to i32 *)
cast v_conv1_i_i400_5@uint32 v_conv7_i_i410_4@uint8;
(*   %mul.i.i401.5 = mul nsw i32 %and.i.i399.5, %conv1.i.i400.5 *)
mul v_mul_i_i401_5 v_and_i_i399_5 v_conv1_i_i400_5;
(*   %conv2.i.i402.5 = zext i8 %conv3.i.i404.4 to i32 *)
cast v_conv2_i_i402_5@uint32 v_conv3_i_i404_4@uint8;
(*   %xor.i.i403.5 = xor i32 %conv2.i.i402.5, %mul.i.i401.5 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i403_5 v_conv2_i_i402_5 v_mul_i_i401_5;
(*   %conv3.i.i404.5 = trunc i32 %xor.i.i403.5 to i8 *)
split tmp_v_xor_i_i403_5 v_conv3_i_i404_5 v_xor_i_i403_5 8;
vpc v_conv3_i_i404_5@uint8 v_conv3_i_i404_5@uint32;
(*   %conv4.i.i405.5 = zext i8 %conv5.i.i407.4 to i32 *)
cast v_conv4_i_i405_5@uint32 v_conv5_i_i407_4@uint8;
(*   %shr.i.i406.5 = ashr i32 %conv4.i.i405.5, 1 *)
(* You may need to modify here *)
split v_shr_i_i406_5 tmp_to_be_used v_conv4_i_i405_5 1;
(*   %conv5.i.i407.5 = trunc i32 %shr.i.i406.5 to i8 *)
split tmp_v_shr_i_i406_5 v_conv5_i_i407_5 v_shr_i_i406_5 8;
vpc v_conv5_i_i407_5@uint8 v_conv5_i_i407_5@uint32;
(*   %conv6.i.i408.5 = zext i8 %conv7.i.i410.4 to i32 *)
cast v_conv6_i_i408_5@uint32 v_conv7_i_i410_4@uint8;
(*   %shl.i.i409.5 = shl i32 %conv6.i.i408.5, 1 *)
shls discard_61 v_shl_i_i409_5 v_conv6_i_i408_5 1;
(*   %conv7.i.i410.5 = trunc i32 %shl.i.i409.5 to i8 *)
split tmp_v_shl_i_i409_5 v_conv7_i_i410_5 v_shl_i_i409_5 8;
vpc v_conv7_i_i410_5@uint8 v_conv7_i_i410_5@uint32;
(*   %conv.i.i398.6 = zext i8 %conv5.i.i407.5 to i32 *)
cast v_conv_i_i398_6@uint32 v_conv5_i_i407_5@uint8;
(*   %and.i.i399.6 = and i32 %conv.i.i398.6, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i399_6 v_conv_i_i398_6 (0x1)@uint32;
(*   %conv1.i.i400.6 = zext i8 %conv7.i.i410.5 to i32 *)
cast v_conv1_i_i400_6@uint32 v_conv7_i_i410_5@uint8;
(*   %mul.i.i401.6 = mul nsw i32 %and.i.i399.6, %conv1.i.i400.6 *)
mul v_mul_i_i401_6 v_and_i_i399_6 v_conv1_i_i400_6;
(*   %conv2.i.i402.6 = zext i8 %conv3.i.i404.5 to i32 *)
cast v_conv2_i_i402_6@uint32 v_conv3_i_i404_5@uint8;
(*   %xor.i.i403.6 = xor i32 %conv2.i.i402.6, %mul.i.i401.6 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i403_6 v_conv2_i_i402_6 v_mul_i_i401_6;
(*   %conv3.i.i404.6 = trunc i32 %xor.i.i403.6 to i8 *)
split tmp_v_xor_i_i403_6 v_conv3_i_i404_6 v_xor_i_i403_6 8;
vpc v_conv3_i_i404_6@uint8 v_conv3_i_i404_6@uint32;
(*   %conv4.i.i405.6 = zext i8 %conv5.i.i407.5 to i32 *)
cast v_conv4_i_i405_6@uint32 v_conv5_i_i407_5@uint8;
(*   %shr.i.i406.6 = ashr i32 %conv4.i.i405.6, 1 *)
(* You may need to modify here *)
split v_shr_i_i406_6 tmp_to_be_used v_conv4_i_i405_6 1;
(*   %conv5.i.i407.6 = trunc i32 %shr.i.i406.6 to i8 *)
split tmp_v_shr_i_i406_6 v_conv5_i_i407_6 v_shr_i_i406_6 8;
vpc v_conv5_i_i407_6@uint8 v_conv5_i_i407_6@uint32;
(*   %conv6.i.i408.6 = zext i8 %conv7.i.i410.5 to i32 *)
cast v_conv6_i_i408_6@uint32 v_conv7_i_i410_5@uint8;
(*   %shl.i.i409.6 = shl i32 %conv6.i.i408.6, 1 *)
shls discard_62 v_shl_i_i409_6 v_conv6_i_i408_6 1;
(*   %conv7.i.i410.6 = trunc i32 %shl.i.i409.6 to i8 *)
split tmp_v_shl_i_i409_6 v_conv7_i_i410_6 v_shl_i_i409_6 8;
vpc v_conv7_i_i410_6@uint8 v_conv7_i_i410_6@uint32;
(*   %conv.i.i398.7 = zext i8 %conv5.i.i407.6 to i32 *)
cast v_conv_i_i398_7@uint32 v_conv5_i_i407_6@uint8;
(*   %and.i.i399.7 = and i32 %conv.i.i398.7, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i399_7 v_conv_i_i398_7 (0x1)@uint32;
(*   %conv1.i.i400.7 = zext i8 %conv7.i.i410.6 to i32 *)
cast v_conv1_i_i400_7@uint32 v_conv7_i_i410_6@uint8;
(*   %mul.i.i401.7 = mul nsw i32 %and.i.i399.7, %conv1.i.i400.7 *)
mul v_mul_i_i401_7 v_and_i_i399_7 v_conv1_i_i400_7;
(*   %conv2.i.i402.7 = zext i8 %conv3.i.i404.6 to i32 *)
cast v_conv2_i_i402_7@uint32 v_conv3_i_i404_6@uint8;
(*   %xor.i.i403.7 = xor i32 %conv2.i.i402.7, %mul.i.i401.7 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i403_7 v_conv2_i_i402_7 v_mul_i_i401_7;
(*   %conv3.i.i404.7 = trunc i32 %xor.i.i403.7 to i8 *)
split tmp_v_xor_i_i403_7 v_conv3_i_i404_7 v_xor_i_i403_7 8;
vpc v_conv3_i_i404_7@uint8 v_conv3_i_i404_7@uint32;
(*   store i8 %conv3.i.i404.7, i8* %arraydecay19, align 1 *)
mov a1b_0 v_conv3_i_i404_7;
(*   %arrayidx.i390.1 = getelementptr inbounds i8, i8* %a, i64 2 *)
(*   %18 = load i8, i8* %arrayidx.i390.1, align 1 *)
mov v18 a_2;
(*   %arrayidx4.i394.1 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %19 = load i8, i8* %arrayidx4.i394.1, align 1 *)
mov v19 b_1;
(*   %conv.i.i398.1172 = zext i8 %19 to i32 *)
cast v_conv_i_i398_1172@uint32 v19@uint8;
(*   %and.i.i399.1173 = and i32 %conv.i.i398.1172, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i399_1173 v_conv_i_i398_1172 (0x1)@uint32;
(*   %conv1.i.i400.1174 = zext i8 %18 to i32 *)
cast v_conv1_i_i400_1174@uint32 v18@uint8;
(*   %mul.i.i401.1175 = mul nsw i32 %and.i.i399.1173, %conv1.i.i400.1174 *)
mul v_mul_i_i401_1175 v_and_i_i399_1173 v_conv1_i_i400_1174;
(*   %conv3.i.i404.1176 = trunc i32 %mul.i.i401.1175 to i8 *)
split tmp_v_mul_i_i401_1175 v_conv3_i_i404_1176 v_mul_i_i401_1175 8;
vpc v_conv3_i_i404_1176@uint8 v_conv3_i_i404_1176@uint32;
(*   %conv4.i.i405.1177 = zext i8 %19 to i32 *)
cast v_conv4_i_i405_1177@uint32 v19@uint8;
(*   %shr.i.i406.1178 = ashr i32 %conv4.i.i405.1177, 1 *)
(* You may need to modify here *)
split v_shr_i_i406_1178 tmp_to_be_used v_conv4_i_i405_1177 1;
(*   %conv5.i.i407.1179 = trunc i32 %shr.i.i406.1178 to i8 *)
split tmp_v_shr_i_i406_1178 v_conv5_i_i407_1179 v_shr_i_i406_1178 8;
vpc v_conv5_i_i407_1179@uint8 v_conv5_i_i407_1179@uint32;
(*   %conv6.i.i408.1180 = zext i8 %18 to i32 *)
cast v_conv6_i_i408_1180@uint32 v18@uint8;
(*   %shl.i.i409.1181 = shl i32 %conv6.i.i408.1180, 1 *)
shls discard_63 v_shl_i_i409_1181 v_conv6_i_i408_1180 1;
(*   %conv7.i.i410.1182 = trunc i32 %shl.i.i409.1181 to i8 *)
split tmp_v_shl_i_i409_1181 v_conv7_i_i410_1182 v_shl_i_i409_1181 8;
vpc v_conv7_i_i410_1182@uint8 v_conv7_i_i410_1182@uint32;
(*   %conv.i.i398.1.1 = zext i8 %conv5.i.i407.1179 to i32 *)
cast v_conv_i_i398_1_1@uint32 v_conv5_i_i407_1179@uint8;
(*   %and.i.i399.1.1 = and i32 %conv.i.i398.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i399_1_1 v_conv_i_i398_1_1 (0x1)@uint32;
(*   %conv1.i.i400.1.1 = zext i8 %conv7.i.i410.1182 to i32 *)
cast v_conv1_i_i400_1_1@uint32 v_conv7_i_i410_1182@uint8;
(*   %mul.i.i401.1.1 = mul nsw i32 %and.i.i399.1.1, %conv1.i.i400.1.1 *)
mul v_mul_i_i401_1_1 v_and_i_i399_1_1 v_conv1_i_i400_1_1;
(*   %conv2.i.i402.1.1 = zext i8 %conv3.i.i404.1176 to i32 *)
cast v_conv2_i_i402_1_1@uint32 v_conv3_i_i404_1176@uint8;
(*   %xor.i.i403.1.1 = xor i32 %conv2.i.i402.1.1, %mul.i.i401.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i403_1_1 v_conv2_i_i402_1_1 v_mul_i_i401_1_1;
(*   %conv3.i.i404.1.1 = trunc i32 %xor.i.i403.1.1 to i8 *)
split tmp_v_xor_i_i403_1_1 v_conv3_i_i404_1_1 v_xor_i_i403_1_1 8;
vpc v_conv3_i_i404_1_1@uint8 v_conv3_i_i404_1_1@uint32;
(*   %conv4.i.i405.1.1 = zext i8 %conv5.i.i407.1179 to i32 *)
cast v_conv4_i_i405_1_1@uint32 v_conv5_i_i407_1179@uint8;
(*   %shr.i.i406.1.1 = ashr i32 %conv4.i.i405.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i406_1_1 tmp_to_be_used v_conv4_i_i405_1_1 1;
(*   %conv5.i.i407.1.1 = trunc i32 %shr.i.i406.1.1 to i8 *)
split tmp_v_shr_i_i406_1_1 v_conv5_i_i407_1_1 v_shr_i_i406_1_1 8;
vpc v_conv5_i_i407_1_1@uint8 v_conv5_i_i407_1_1@uint32;
(*   %conv6.i.i408.1.1 = zext i8 %conv7.i.i410.1182 to i32 *)
cast v_conv6_i_i408_1_1@uint32 v_conv7_i_i410_1182@uint8;
(*   %shl.i.i409.1.1 = shl i32 %conv6.i.i408.1.1, 1 *)
shls discard_64 v_shl_i_i409_1_1 v_conv6_i_i408_1_1 1;
(*   %conv7.i.i410.1.1 = trunc i32 %shl.i.i409.1.1 to i8 *)
split tmp_v_shl_i_i409_1_1 v_conv7_i_i410_1_1 v_shl_i_i409_1_1 8;
vpc v_conv7_i_i410_1_1@uint8 v_conv7_i_i410_1_1@uint32;
(*   %conv.i.i398.2.1 = zext i8 %conv5.i.i407.1.1 to i32 *)
cast v_conv_i_i398_2_1@uint32 v_conv5_i_i407_1_1@uint8;
(*   %and.i.i399.2.1 = and i32 %conv.i.i398.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i399_2_1 v_conv_i_i398_2_1 (0x1)@uint32;
(*   %conv1.i.i400.2.1 = zext i8 %conv7.i.i410.1.1 to i32 *)
cast v_conv1_i_i400_2_1@uint32 v_conv7_i_i410_1_1@uint8;
(*   %mul.i.i401.2.1 = mul nsw i32 %and.i.i399.2.1, %conv1.i.i400.2.1 *)
mul v_mul_i_i401_2_1 v_and_i_i399_2_1 v_conv1_i_i400_2_1;
(*   %conv2.i.i402.2.1 = zext i8 %conv3.i.i404.1.1 to i32 *)
cast v_conv2_i_i402_2_1@uint32 v_conv3_i_i404_1_1@uint8;
(*   %xor.i.i403.2.1 = xor i32 %conv2.i.i402.2.1, %mul.i.i401.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i403_2_1 v_conv2_i_i402_2_1 v_mul_i_i401_2_1;
(*   %conv3.i.i404.2.1 = trunc i32 %xor.i.i403.2.1 to i8 *)
split tmp_v_xor_i_i403_2_1 v_conv3_i_i404_2_1 v_xor_i_i403_2_1 8;
vpc v_conv3_i_i404_2_1@uint8 v_conv3_i_i404_2_1@uint32;
(*   %conv4.i.i405.2.1 = zext i8 %conv5.i.i407.1.1 to i32 *)
cast v_conv4_i_i405_2_1@uint32 v_conv5_i_i407_1_1@uint8;
(*   %shr.i.i406.2.1 = ashr i32 %conv4.i.i405.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i406_2_1 tmp_to_be_used v_conv4_i_i405_2_1 1;
(*   %conv5.i.i407.2.1 = trunc i32 %shr.i.i406.2.1 to i8 *)
split tmp_v_shr_i_i406_2_1 v_conv5_i_i407_2_1 v_shr_i_i406_2_1 8;
vpc v_conv5_i_i407_2_1@uint8 v_conv5_i_i407_2_1@uint32;
(*   %conv6.i.i408.2.1 = zext i8 %conv7.i.i410.1.1 to i32 *)
cast v_conv6_i_i408_2_1@uint32 v_conv7_i_i410_1_1@uint8;
(*   %shl.i.i409.2.1 = shl i32 %conv6.i.i408.2.1, 1 *)
shls discard_65 v_shl_i_i409_2_1 v_conv6_i_i408_2_1 1;
(*   %conv7.i.i410.2.1 = trunc i32 %shl.i.i409.2.1 to i8 *)
split tmp_v_shl_i_i409_2_1 v_conv7_i_i410_2_1 v_shl_i_i409_2_1 8;
vpc v_conv7_i_i410_2_1@uint8 v_conv7_i_i410_2_1@uint32;
(*   %conv.i.i398.3.1 = zext i8 %conv5.i.i407.2.1 to i32 *)
cast v_conv_i_i398_3_1@uint32 v_conv5_i_i407_2_1@uint8;
(*   %and.i.i399.3.1 = and i32 %conv.i.i398.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i399_3_1 v_conv_i_i398_3_1 (0x1)@uint32;
(*   %conv1.i.i400.3.1 = zext i8 %conv7.i.i410.2.1 to i32 *)
cast v_conv1_i_i400_3_1@uint32 v_conv7_i_i410_2_1@uint8;
(*   %mul.i.i401.3.1 = mul nsw i32 %and.i.i399.3.1, %conv1.i.i400.3.1 *)
mul v_mul_i_i401_3_1 v_and_i_i399_3_1 v_conv1_i_i400_3_1;
(*   %conv2.i.i402.3.1 = zext i8 %conv3.i.i404.2.1 to i32 *)
cast v_conv2_i_i402_3_1@uint32 v_conv3_i_i404_2_1@uint8;
(*   %xor.i.i403.3.1 = xor i32 %conv2.i.i402.3.1, %mul.i.i401.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i403_3_1 v_conv2_i_i402_3_1 v_mul_i_i401_3_1;
(*   %conv3.i.i404.3.1 = trunc i32 %xor.i.i403.3.1 to i8 *)
split tmp_v_xor_i_i403_3_1 v_conv3_i_i404_3_1 v_xor_i_i403_3_1 8;
vpc v_conv3_i_i404_3_1@uint8 v_conv3_i_i404_3_1@uint32;
(*   %conv4.i.i405.3.1 = zext i8 %conv5.i.i407.2.1 to i32 *)
cast v_conv4_i_i405_3_1@uint32 v_conv5_i_i407_2_1@uint8;
(*   %shr.i.i406.3.1 = ashr i32 %conv4.i.i405.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i406_3_1 tmp_to_be_used v_conv4_i_i405_3_1 1;
(*   %conv5.i.i407.3.1 = trunc i32 %shr.i.i406.3.1 to i8 *)
split tmp_v_shr_i_i406_3_1 v_conv5_i_i407_3_1 v_shr_i_i406_3_1 8;
vpc v_conv5_i_i407_3_1@uint8 v_conv5_i_i407_3_1@uint32;
(*   %conv6.i.i408.3.1 = zext i8 %conv7.i.i410.2.1 to i32 *)
cast v_conv6_i_i408_3_1@uint32 v_conv7_i_i410_2_1@uint8;
(*   %shl.i.i409.3.1 = shl i32 %conv6.i.i408.3.1, 1 *)
shls discard_66 v_shl_i_i409_3_1 v_conv6_i_i408_3_1 1;
(*   %conv7.i.i410.3.1 = trunc i32 %shl.i.i409.3.1 to i8 *)
split tmp_v_shl_i_i409_3_1 v_conv7_i_i410_3_1 v_shl_i_i409_3_1 8;
vpc v_conv7_i_i410_3_1@uint8 v_conv7_i_i410_3_1@uint32;
(*   %conv.i.i398.4.1 = zext i8 %conv5.i.i407.3.1 to i32 *)
cast v_conv_i_i398_4_1@uint32 v_conv5_i_i407_3_1@uint8;
(*   %and.i.i399.4.1 = and i32 %conv.i.i398.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i399_4_1 v_conv_i_i398_4_1 (0x1)@uint32;
(*   %conv1.i.i400.4.1 = zext i8 %conv7.i.i410.3.1 to i32 *)
cast v_conv1_i_i400_4_1@uint32 v_conv7_i_i410_3_1@uint8;
(*   %mul.i.i401.4.1 = mul nsw i32 %and.i.i399.4.1, %conv1.i.i400.4.1 *)
mul v_mul_i_i401_4_1 v_and_i_i399_4_1 v_conv1_i_i400_4_1;
(*   %conv2.i.i402.4.1 = zext i8 %conv3.i.i404.3.1 to i32 *)
cast v_conv2_i_i402_4_1@uint32 v_conv3_i_i404_3_1@uint8;
(*   %xor.i.i403.4.1 = xor i32 %conv2.i.i402.4.1, %mul.i.i401.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i403_4_1 v_conv2_i_i402_4_1 v_mul_i_i401_4_1;
(*   %conv3.i.i404.4.1 = trunc i32 %xor.i.i403.4.1 to i8 *)
split tmp_v_xor_i_i403_4_1 v_conv3_i_i404_4_1 v_xor_i_i403_4_1 8;
vpc v_conv3_i_i404_4_1@uint8 v_conv3_i_i404_4_1@uint32;
(*   %conv4.i.i405.4.1 = zext i8 %conv5.i.i407.3.1 to i32 *)
cast v_conv4_i_i405_4_1@uint32 v_conv5_i_i407_3_1@uint8;
(*   %shr.i.i406.4.1 = ashr i32 %conv4.i.i405.4.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i406_4_1 tmp_to_be_used v_conv4_i_i405_4_1 1;
(*   %conv5.i.i407.4.1 = trunc i32 %shr.i.i406.4.1 to i8 *)
split tmp_v_shr_i_i406_4_1 v_conv5_i_i407_4_1 v_shr_i_i406_4_1 8;
vpc v_conv5_i_i407_4_1@uint8 v_conv5_i_i407_4_1@uint32;
(*   %conv6.i.i408.4.1 = zext i8 %conv7.i.i410.3.1 to i32 *)
cast v_conv6_i_i408_4_1@uint32 v_conv7_i_i410_3_1@uint8;
(*   %shl.i.i409.4.1 = shl i32 %conv6.i.i408.4.1, 1 *)
shls discard_67 v_shl_i_i409_4_1 v_conv6_i_i408_4_1 1;
(*   %conv7.i.i410.4.1 = trunc i32 %shl.i.i409.4.1 to i8 *)
split tmp_v_shl_i_i409_4_1 v_conv7_i_i410_4_1 v_shl_i_i409_4_1 8;
vpc v_conv7_i_i410_4_1@uint8 v_conv7_i_i410_4_1@uint32;
(*   %conv.i.i398.5.1 = zext i8 %conv5.i.i407.4.1 to i32 *)
cast v_conv_i_i398_5_1@uint32 v_conv5_i_i407_4_1@uint8;
(*   %and.i.i399.5.1 = and i32 %conv.i.i398.5.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i399_5_1 v_conv_i_i398_5_1 (0x1)@uint32;
(*   %conv1.i.i400.5.1 = zext i8 %conv7.i.i410.4.1 to i32 *)
cast v_conv1_i_i400_5_1@uint32 v_conv7_i_i410_4_1@uint8;
(*   %mul.i.i401.5.1 = mul nsw i32 %and.i.i399.5.1, %conv1.i.i400.5.1 *)
mul v_mul_i_i401_5_1 v_and_i_i399_5_1 v_conv1_i_i400_5_1;
(*   %conv2.i.i402.5.1 = zext i8 %conv3.i.i404.4.1 to i32 *)
cast v_conv2_i_i402_5_1@uint32 v_conv3_i_i404_4_1@uint8;
(*   %xor.i.i403.5.1 = xor i32 %conv2.i.i402.5.1, %mul.i.i401.5.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i403_5_1 v_conv2_i_i402_5_1 v_mul_i_i401_5_1;
(*   %conv3.i.i404.5.1 = trunc i32 %xor.i.i403.5.1 to i8 *)
split tmp_v_xor_i_i403_5_1 v_conv3_i_i404_5_1 v_xor_i_i403_5_1 8;
vpc v_conv3_i_i404_5_1@uint8 v_conv3_i_i404_5_1@uint32;
(*   %conv4.i.i405.5.1 = zext i8 %conv5.i.i407.4.1 to i32 *)
cast v_conv4_i_i405_5_1@uint32 v_conv5_i_i407_4_1@uint8;
(*   %shr.i.i406.5.1 = ashr i32 %conv4.i.i405.5.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i406_5_1 tmp_to_be_used v_conv4_i_i405_5_1 1;
(*   %conv5.i.i407.5.1 = trunc i32 %shr.i.i406.5.1 to i8 *)
split tmp_v_shr_i_i406_5_1 v_conv5_i_i407_5_1 v_shr_i_i406_5_1 8;
vpc v_conv5_i_i407_5_1@uint8 v_conv5_i_i407_5_1@uint32;
(*   %conv6.i.i408.5.1 = zext i8 %conv7.i.i410.4.1 to i32 *)
cast v_conv6_i_i408_5_1@uint32 v_conv7_i_i410_4_1@uint8;
(*   %shl.i.i409.5.1 = shl i32 %conv6.i.i408.5.1, 1 *)
shls discard_68 v_shl_i_i409_5_1 v_conv6_i_i408_5_1 1;
(*   %conv7.i.i410.5.1 = trunc i32 %shl.i.i409.5.1 to i8 *)
split tmp_v_shl_i_i409_5_1 v_conv7_i_i410_5_1 v_shl_i_i409_5_1 8;
vpc v_conv7_i_i410_5_1@uint8 v_conv7_i_i410_5_1@uint32;
(*   %conv.i.i398.6.1 = zext i8 %conv5.i.i407.5.1 to i32 *)
cast v_conv_i_i398_6_1@uint32 v_conv5_i_i407_5_1@uint8;
(*   %and.i.i399.6.1 = and i32 %conv.i.i398.6.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i399_6_1 v_conv_i_i398_6_1 (0x1)@uint32;
(*   %conv1.i.i400.6.1 = zext i8 %conv7.i.i410.5.1 to i32 *)
cast v_conv1_i_i400_6_1@uint32 v_conv7_i_i410_5_1@uint8;
(*   %mul.i.i401.6.1 = mul nsw i32 %and.i.i399.6.1, %conv1.i.i400.6.1 *)
mul v_mul_i_i401_6_1 v_and_i_i399_6_1 v_conv1_i_i400_6_1;
(*   %conv2.i.i402.6.1 = zext i8 %conv3.i.i404.5.1 to i32 *)
cast v_conv2_i_i402_6_1@uint32 v_conv3_i_i404_5_1@uint8;
(*   %xor.i.i403.6.1 = xor i32 %conv2.i.i402.6.1, %mul.i.i401.6.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i403_6_1 v_conv2_i_i402_6_1 v_mul_i_i401_6_1;
(*   %conv3.i.i404.6.1 = trunc i32 %xor.i.i403.6.1 to i8 *)
split tmp_v_xor_i_i403_6_1 v_conv3_i_i404_6_1 v_xor_i_i403_6_1 8;
vpc v_conv3_i_i404_6_1@uint8 v_conv3_i_i404_6_1@uint32;
(*   %conv4.i.i405.6.1 = zext i8 %conv5.i.i407.5.1 to i32 *)
cast v_conv4_i_i405_6_1@uint32 v_conv5_i_i407_5_1@uint8;
(*   %shr.i.i406.6.1 = ashr i32 %conv4.i.i405.6.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i406_6_1 tmp_to_be_used v_conv4_i_i405_6_1 1;
(*   %conv5.i.i407.6.1 = trunc i32 %shr.i.i406.6.1 to i8 *)
split tmp_v_shr_i_i406_6_1 v_conv5_i_i407_6_1 v_shr_i_i406_6_1 8;
vpc v_conv5_i_i407_6_1@uint8 v_conv5_i_i407_6_1@uint32;
(*   %conv6.i.i408.6.1 = zext i8 %conv7.i.i410.5.1 to i32 *)
cast v_conv6_i_i408_6_1@uint32 v_conv7_i_i410_5_1@uint8;
(*   %shl.i.i409.6.1 = shl i32 %conv6.i.i408.6.1, 1 *)
shls discard_69 v_shl_i_i409_6_1 v_conv6_i_i408_6_1 1;
(*   %conv7.i.i410.6.1 = trunc i32 %shl.i.i409.6.1 to i8 *)
split tmp_v_shl_i_i409_6_1 v_conv7_i_i410_6_1 v_shl_i_i409_6_1 8;
vpc v_conv7_i_i410_6_1@uint8 v_conv7_i_i410_6_1@uint32;
(*   %conv.i.i398.7.1 = zext i8 %conv5.i.i407.6.1 to i32 *)
cast v_conv_i_i398_7_1@uint32 v_conv5_i_i407_6_1@uint8;
(*   %and.i.i399.7.1 = and i32 %conv.i.i398.7.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i399_7_1 v_conv_i_i398_7_1 (0x1)@uint32;
(*   %conv1.i.i400.7.1 = zext i8 %conv7.i.i410.6.1 to i32 *)
cast v_conv1_i_i400_7_1@uint32 v_conv7_i_i410_6_1@uint8;
(*   %mul.i.i401.7.1 = mul nsw i32 %and.i.i399.7.1, %conv1.i.i400.7.1 *)
mul v_mul_i_i401_7_1 v_and_i_i399_7_1 v_conv1_i_i400_7_1;
(*   %conv2.i.i402.7.1 = zext i8 %conv3.i.i404.6.1 to i32 *)
cast v_conv2_i_i402_7_1@uint32 v_conv3_i_i404_6_1@uint8;
(*   %xor.i.i403.7.1 = xor i32 %conv2.i.i402.7.1, %mul.i.i401.7.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i403_7_1 v_conv2_i_i402_7_1 v_mul_i_i401_7_1;
(*   %conv3.i.i404.7.1 = trunc i32 %xor.i.i403.7.1 to i8 *)
split tmp_v_xor_i_i403_7_1 v_conv3_i_i404_7_1 v_xor_i_i403_7_1 8;
vpc v_conv3_i_i404_7_1@uint8 v_conv3_i_i404_7_1@uint32;
(*   %arrayidx6.i414.1 = getelementptr inbounds i8, i8* %arraydecay19, i64 1 *)
(*   store i8 %conv3.i.i404.7.1, i8* %arrayidx6.i414.1, align 1 *)
mov a1b_1 v_conv3_i_i404_7_1;
(*   %arrayidx.i390.2 = getelementptr inbounds i8, i8* %a, i64 3 *)
(*   %20 = load i8, i8* %arrayidx.i390.2, align 1 *)
mov v20 a_3;
(*   %arrayidx4.i394.2 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %21 = load i8, i8* %arrayidx4.i394.2, align 1 *)
mov v21 b_2;
(*   %conv.i.i398.2183 = zext i8 %21 to i32 *)
cast v_conv_i_i398_2183@uint32 v21@uint8;
(*   %and.i.i399.2184 = and i32 %conv.i.i398.2183, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i399_2184 v_conv_i_i398_2183 (0x1)@uint32;
(*   %conv1.i.i400.2185 = zext i8 %20 to i32 *)
cast v_conv1_i_i400_2185@uint32 v20@uint8;
(*   %mul.i.i401.2186 = mul nsw i32 %and.i.i399.2184, %conv1.i.i400.2185 *)
mul v_mul_i_i401_2186 v_and_i_i399_2184 v_conv1_i_i400_2185;
(*   %conv3.i.i404.2187 = trunc i32 %mul.i.i401.2186 to i8 *)
split tmp_v_mul_i_i401_2186 v_conv3_i_i404_2187 v_mul_i_i401_2186 8;
vpc v_conv3_i_i404_2187@uint8 v_conv3_i_i404_2187@uint32;
(*   %conv4.i.i405.2188 = zext i8 %21 to i32 *)
cast v_conv4_i_i405_2188@uint32 v21@uint8;
(*   %shr.i.i406.2189 = ashr i32 %conv4.i.i405.2188, 1 *)
(* You may need to modify here *)
split v_shr_i_i406_2189 tmp_to_be_used v_conv4_i_i405_2188 1;
(*   %conv5.i.i407.2190 = trunc i32 %shr.i.i406.2189 to i8 *)
split tmp_v_shr_i_i406_2189 v_conv5_i_i407_2190 v_shr_i_i406_2189 8;
vpc v_conv5_i_i407_2190@uint8 v_conv5_i_i407_2190@uint32;
(*   %conv6.i.i408.2191 = zext i8 %20 to i32 *)
cast v_conv6_i_i408_2191@uint32 v20@uint8;
(*   %shl.i.i409.2192 = shl i32 %conv6.i.i408.2191, 1 *)
shls discard_70 v_shl_i_i409_2192 v_conv6_i_i408_2191 1;
(*   %conv7.i.i410.2193 = trunc i32 %shl.i.i409.2192 to i8 *)
split tmp_v_shl_i_i409_2192 v_conv7_i_i410_2193 v_shl_i_i409_2192 8;
vpc v_conv7_i_i410_2193@uint8 v_conv7_i_i410_2193@uint32;
(*   %conv.i.i398.1.2 = zext i8 %conv5.i.i407.2190 to i32 *)
cast v_conv_i_i398_1_2@uint32 v_conv5_i_i407_2190@uint8;
(*   %and.i.i399.1.2 = and i32 %conv.i.i398.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i399_1_2 v_conv_i_i398_1_2 (0x1)@uint32;
(*   %conv1.i.i400.1.2 = zext i8 %conv7.i.i410.2193 to i32 *)
cast v_conv1_i_i400_1_2@uint32 v_conv7_i_i410_2193@uint8;
(*   %mul.i.i401.1.2 = mul nsw i32 %and.i.i399.1.2, %conv1.i.i400.1.2 *)
mul v_mul_i_i401_1_2 v_and_i_i399_1_2 v_conv1_i_i400_1_2;
(*   %conv2.i.i402.1.2 = zext i8 %conv3.i.i404.2187 to i32 *)
cast v_conv2_i_i402_1_2@uint32 v_conv3_i_i404_2187@uint8;
(*   %xor.i.i403.1.2 = xor i32 %conv2.i.i402.1.2, %mul.i.i401.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i403_1_2 v_conv2_i_i402_1_2 v_mul_i_i401_1_2;
(*   %conv3.i.i404.1.2 = trunc i32 %xor.i.i403.1.2 to i8 *)
split tmp_v_xor_i_i403_1_2 v_conv3_i_i404_1_2 v_xor_i_i403_1_2 8;
vpc v_conv3_i_i404_1_2@uint8 v_conv3_i_i404_1_2@uint32;
(*   %conv4.i.i405.1.2 = zext i8 %conv5.i.i407.2190 to i32 *)
cast v_conv4_i_i405_1_2@uint32 v_conv5_i_i407_2190@uint8;
(*   %shr.i.i406.1.2 = ashr i32 %conv4.i.i405.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i406_1_2 tmp_to_be_used v_conv4_i_i405_1_2 1;
(*   %conv5.i.i407.1.2 = trunc i32 %shr.i.i406.1.2 to i8 *)
split tmp_v_shr_i_i406_1_2 v_conv5_i_i407_1_2 v_shr_i_i406_1_2 8;
vpc v_conv5_i_i407_1_2@uint8 v_conv5_i_i407_1_2@uint32;
(*   %conv6.i.i408.1.2 = zext i8 %conv7.i.i410.2193 to i32 *)
cast v_conv6_i_i408_1_2@uint32 v_conv7_i_i410_2193@uint8;
(*   %shl.i.i409.1.2 = shl i32 %conv6.i.i408.1.2, 1 *)
shls discard_71 v_shl_i_i409_1_2 v_conv6_i_i408_1_2 1;
(*   %conv7.i.i410.1.2 = trunc i32 %shl.i.i409.1.2 to i8 *)
split tmp_v_shl_i_i409_1_2 v_conv7_i_i410_1_2 v_shl_i_i409_1_2 8;
vpc v_conv7_i_i410_1_2@uint8 v_conv7_i_i410_1_2@uint32;
(*   %conv.i.i398.2.2 = zext i8 %conv5.i.i407.1.2 to i32 *)
cast v_conv_i_i398_2_2@uint32 v_conv5_i_i407_1_2@uint8;
(*   %and.i.i399.2.2 = and i32 %conv.i.i398.2.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i399_2_2 v_conv_i_i398_2_2 (0x1)@uint32;
(*   %conv1.i.i400.2.2 = zext i8 %conv7.i.i410.1.2 to i32 *)
cast v_conv1_i_i400_2_2@uint32 v_conv7_i_i410_1_2@uint8;
(*   %mul.i.i401.2.2 = mul nsw i32 %and.i.i399.2.2, %conv1.i.i400.2.2 *)
mul v_mul_i_i401_2_2 v_and_i_i399_2_2 v_conv1_i_i400_2_2;
(*   %conv2.i.i402.2.2 = zext i8 %conv3.i.i404.1.2 to i32 *)
cast v_conv2_i_i402_2_2@uint32 v_conv3_i_i404_1_2@uint8;
(*   %xor.i.i403.2.2 = xor i32 %conv2.i.i402.2.2, %mul.i.i401.2.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i403_2_2 v_conv2_i_i402_2_2 v_mul_i_i401_2_2;
(*   %conv3.i.i404.2.2 = trunc i32 %xor.i.i403.2.2 to i8 *)
split tmp_v_xor_i_i403_2_2 v_conv3_i_i404_2_2 v_xor_i_i403_2_2 8;
vpc v_conv3_i_i404_2_2@uint8 v_conv3_i_i404_2_2@uint32;
(*   %conv4.i.i405.2.2 = zext i8 %conv5.i.i407.1.2 to i32 *)
cast v_conv4_i_i405_2_2@uint32 v_conv5_i_i407_1_2@uint8;
(*   %shr.i.i406.2.2 = ashr i32 %conv4.i.i405.2.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i406_2_2 tmp_to_be_used v_conv4_i_i405_2_2 1;
(*   %conv5.i.i407.2.2 = trunc i32 %shr.i.i406.2.2 to i8 *)
split tmp_v_shr_i_i406_2_2 v_conv5_i_i407_2_2 v_shr_i_i406_2_2 8;
vpc v_conv5_i_i407_2_2@uint8 v_conv5_i_i407_2_2@uint32;
(*   %conv6.i.i408.2.2 = zext i8 %conv7.i.i410.1.2 to i32 *)
cast v_conv6_i_i408_2_2@uint32 v_conv7_i_i410_1_2@uint8;
(*   %shl.i.i409.2.2 = shl i32 %conv6.i.i408.2.2, 1 *)
shls discard_72 v_shl_i_i409_2_2 v_conv6_i_i408_2_2 1;
(*   %conv7.i.i410.2.2 = trunc i32 %shl.i.i409.2.2 to i8 *)
split tmp_v_shl_i_i409_2_2 v_conv7_i_i410_2_2 v_shl_i_i409_2_2 8;
vpc v_conv7_i_i410_2_2@uint8 v_conv7_i_i410_2_2@uint32;
(*   %conv.i.i398.3.2 = zext i8 %conv5.i.i407.2.2 to i32 *)
cast v_conv_i_i398_3_2@uint32 v_conv5_i_i407_2_2@uint8;
(*   %and.i.i399.3.2 = and i32 %conv.i.i398.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i399_3_2 v_conv_i_i398_3_2 (0x1)@uint32;
(*   %conv1.i.i400.3.2 = zext i8 %conv7.i.i410.2.2 to i32 *)
cast v_conv1_i_i400_3_2@uint32 v_conv7_i_i410_2_2@uint8;
(*   %mul.i.i401.3.2 = mul nsw i32 %and.i.i399.3.2, %conv1.i.i400.3.2 *)
mul v_mul_i_i401_3_2 v_and_i_i399_3_2 v_conv1_i_i400_3_2;
(*   %conv2.i.i402.3.2 = zext i8 %conv3.i.i404.2.2 to i32 *)
cast v_conv2_i_i402_3_2@uint32 v_conv3_i_i404_2_2@uint8;
(*   %xor.i.i403.3.2 = xor i32 %conv2.i.i402.3.2, %mul.i.i401.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i403_3_2 v_conv2_i_i402_3_2 v_mul_i_i401_3_2;
(*   %conv3.i.i404.3.2 = trunc i32 %xor.i.i403.3.2 to i8 *)
split tmp_v_xor_i_i403_3_2 v_conv3_i_i404_3_2 v_xor_i_i403_3_2 8;
vpc v_conv3_i_i404_3_2@uint8 v_conv3_i_i404_3_2@uint32;
(*   %conv4.i.i405.3.2 = zext i8 %conv5.i.i407.2.2 to i32 *)
cast v_conv4_i_i405_3_2@uint32 v_conv5_i_i407_2_2@uint8;
(*   %shr.i.i406.3.2 = ashr i32 %conv4.i.i405.3.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i406_3_2 tmp_to_be_used v_conv4_i_i405_3_2 1;
(*   %conv5.i.i407.3.2 = trunc i32 %shr.i.i406.3.2 to i8 *)
split tmp_v_shr_i_i406_3_2 v_conv5_i_i407_3_2 v_shr_i_i406_3_2 8;
vpc v_conv5_i_i407_3_2@uint8 v_conv5_i_i407_3_2@uint32;
(*   %conv6.i.i408.3.2 = zext i8 %conv7.i.i410.2.2 to i32 *)
cast v_conv6_i_i408_3_2@uint32 v_conv7_i_i410_2_2@uint8;
(*   %shl.i.i409.3.2 = shl i32 %conv6.i.i408.3.2, 1 *)
shls discard_73 v_shl_i_i409_3_2 v_conv6_i_i408_3_2 1;
(*   %conv7.i.i410.3.2 = trunc i32 %shl.i.i409.3.2 to i8 *)
split tmp_v_shl_i_i409_3_2 v_conv7_i_i410_3_2 v_shl_i_i409_3_2 8;
vpc v_conv7_i_i410_3_2@uint8 v_conv7_i_i410_3_2@uint32;
(*   %conv.i.i398.4.2 = zext i8 %conv5.i.i407.3.2 to i32 *)
cast v_conv_i_i398_4_2@uint32 v_conv5_i_i407_3_2@uint8;
(*   %and.i.i399.4.2 = and i32 %conv.i.i398.4.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i399_4_2 v_conv_i_i398_4_2 (0x1)@uint32;
(*   %conv1.i.i400.4.2 = zext i8 %conv7.i.i410.3.2 to i32 *)
cast v_conv1_i_i400_4_2@uint32 v_conv7_i_i410_3_2@uint8;
(*   %mul.i.i401.4.2 = mul nsw i32 %and.i.i399.4.2, %conv1.i.i400.4.2 *)
mul v_mul_i_i401_4_2 v_and_i_i399_4_2 v_conv1_i_i400_4_2;
(*   %conv2.i.i402.4.2 = zext i8 %conv3.i.i404.3.2 to i32 *)
cast v_conv2_i_i402_4_2@uint32 v_conv3_i_i404_3_2@uint8;
(*   %xor.i.i403.4.2 = xor i32 %conv2.i.i402.4.2, %mul.i.i401.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i403_4_2 v_conv2_i_i402_4_2 v_mul_i_i401_4_2;
(*   %conv3.i.i404.4.2 = trunc i32 %xor.i.i403.4.2 to i8 *)
split tmp_v_xor_i_i403_4_2 v_conv3_i_i404_4_2 v_xor_i_i403_4_2 8;
vpc v_conv3_i_i404_4_2@uint8 v_conv3_i_i404_4_2@uint32;
(*   %conv4.i.i405.4.2 = zext i8 %conv5.i.i407.3.2 to i32 *)
cast v_conv4_i_i405_4_2@uint32 v_conv5_i_i407_3_2@uint8;
(*   %shr.i.i406.4.2 = ashr i32 %conv4.i.i405.4.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i406_4_2 tmp_to_be_used v_conv4_i_i405_4_2 1;
(*   %conv5.i.i407.4.2 = trunc i32 %shr.i.i406.4.2 to i8 *)
split tmp_v_shr_i_i406_4_2 v_conv5_i_i407_4_2 v_shr_i_i406_4_2 8;
vpc v_conv5_i_i407_4_2@uint8 v_conv5_i_i407_4_2@uint32;
(*   %conv6.i.i408.4.2 = zext i8 %conv7.i.i410.3.2 to i32 *)
cast v_conv6_i_i408_4_2@uint32 v_conv7_i_i410_3_2@uint8;
(*   %shl.i.i409.4.2 = shl i32 %conv6.i.i408.4.2, 1 *)
shls discard_74 v_shl_i_i409_4_2 v_conv6_i_i408_4_2 1;
(*   %conv7.i.i410.4.2 = trunc i32 %shl.i.i409.4.2 to i8 *)
split tmp_v_shl_i_i409_4_2 v_conv7_i_i410_4_2 v_shl_i_i409_4_2 8;
vpc v_conv7_i_i410_4_2@uint8 v_conv7_i_i410_4_2@uint32;
(*   %conv.i.i398.5.2 = zext i8 %conv5.i.i407.4.2 to i32 *)
cast v_conv_i_i398_5_2@uint32 v_conv5_i_i407_4_2@uint8;
(*   %and.i.i399.5.2 = and i32 %conv.i.i398.5.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i399_5_2 v_conv_i_i398_5_2 (0x1)@uint32;
(*   %conv1.i.i400.5.2 = zext i8 %conv7.i.i410.4.2 to i32 *)
cast v_conv1_i_i400_5_2@uint32 v_conv7_i_i410_4_2@uint8;
(*   %mul.i.i401.5.2 = mul nsw i32 %and.i.i399.5.2, %conv1.i.i400.5.2 *)
mul v_mul_i_i401_5_2 v_and_i_i399_5_2 v_conv1_i_i400_5_2;
(*   %conv2.i.i402.5.2 = zext i8 %conv3.i.i404.4.2 to i32 *)
cast v_conv2_i_i402_5_2@uint32 v_conv3_i_i404_4_2@uint8;
(*   %xor.i.i403.5.2 = xor i32 %conv2.i.i402.5.2, %mul.i.i401.5.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i403_5_2 v_conv2_i_i402_5_2 v_mul_i_i401_5_2;
(*   %conv3.i.i404.5.2 = trunc i32 %xor.i.i403.5.2 to i8 *)
split tmp_v_xor_i_i403_5_2 v_conv3_i_i404_5_2 v_xor_i_i403_5_2 8;
vpc v_conv3_i_i404_5_2@uint8 v_conv3_i_i404_5_2@uint32;
(*   %conv4.i.i405.5.2 = zext i8 %conv5.i.i407.4.2 to i32 *)
cast v_conv4_i_i405_5_2@uint32 v_conv5_i_i407_4_2@uint8;
(*   %shr.i.i406.5.2 = ashr i32 %conv4.i.i405.5.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i406_5_2 tmp_to_be_used v_conv4_i_i405_5_2 1;
(*   %conv5.i.i407.5.2 = trunc i32 %shr.i.i406.5.2 to i8 *)
split tmp_v_shr_i_i406_5_2 v_conv5_i_i407_5_2 v_shr_i_i406_5_2 8;
vpc v_conv5_i_i407_5_2@uint8 v_conv5_i_i407_5_2@uint32;
(*   %conv6.i.i408.5.2 = zext i8 %conv7.i.i410.4.2 to i32 *)
cast v_conv6_i_i408_5_2@uint32 v_conv7_i_i410_4_2@uint8;
(*   %shl.i.i409.5.2 = shl i32 %conv6.i.i408.5.2, 1 *)
shls discard_75 v_shl_i_i409_5_2 v_conv6_i_i408_5_2 1;
(*   %conv7.i.i410.5.2 = trunc i32 %shl.i.i409.5.2 to i8 *)
split tmp_v_shl_i_i409_5_2 v_conv7_i_i410_5_2 v_shl_i_i409_5_2 8;
vpc v_conv7_i_i410_5_2@uint8 v_conv7_i_i410_5_2@uint32;
(*   %conv.i.i398.6.2 = zext i8 %conv5.i.i407.5.2 to i32 *)
cast v_conv_i_i398_6_2@uint32 v_conv5_i_i407_5_2@uint8;
(*   %and.i.i399.6.2 = and i32 %conv.i.i398.6.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i399_6_2 v_conv_i_i398_6_2 (0x1)@uint32;
(*   %conv1.i.i400.6.2 = zext i8 %conv7.i.i410.5.2 to i32 *)
cast v_conv1_i_i400_6_2@uint32 v_conv7_i_i410_5_2@uint8;
(*   %mul.i.i401.6.2 = mul nsw i32 %and.i.i399.6.2, %conv1.i.i400.6.2 *)
mul v_mul_i_i401_6_2 v_and_i_i399_6_2 v_conv1_i_i400_6_2;
(*   %conv2.i.i402.6.2 = zext i8 %conv3.i.i404.5.2 to i32 *)
cast v_conv2_i_i402_6_2@uint32 v_conv3_i_i404_5_2@uint8;
(*   %xor.i.i403.6.2 = xor i32 %conv2.i.i402.6.2, %mul.i.i401.6.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i403_6_2 v_conv2_i_i402_6_2 v_mul_i_i401_6_2;
(*   %conv3.i.i404.6.2 = trunc i32 %xor.i.i403.6.2 to i8 *)
split tmp_v_xor_i_i403_6_2 v_conv3_i_i404_6_2 v_xor_i_i403_6_2 8;
vpc v_conv3_i_i404_6_2@uint8 v_conv3_i_i404_6_2@uint32;
(*   %conv4.i.i405.6.2 = zext i8 %conv5.i.i407.5.2 to i32 *)
cast v_conv4_i_i405_6_2@uint32 v_conv5_i_i407_5_2@uint8;
(*   %shr.i.i406.6.2 = ashr i32 %conv4.i.i405.6.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i406_6_2 tmp_to_be_used v_conv4_i_i405_6_2 1;
(*   %conv5.i.i407.6.2 = trunc i32 %shr.i.i406.6.2 to i8 *)
split tmp_v_shr_i_i406_6_2 v_conv5_i_i407_6_2 v_shr_i_i406_6_2 8;
vpc v_conv5_i_i407_6_2@uint8 v_conv5_i_i407_6_2@uint32;
(*   %conv6.i.i408.6.2 = zext i8 %conv7.i.i410.5.2 to i32 *)
cast v_conv6_i_i408_6_2@uint32 v_conv7_i_i410_5_2@uint8;
(*   %shl.i.i409.6.2 = shl i32 %conv6.i.i408.6.2, 1 *)
shls discard_76 v_shl_i_i409_6_2 v_conv6_i_i408_6_2 1;
(*   %conv7.i.i410.6.2 = trunc i32 %shl.i.i409.6.2 to i8 *)
split tmp_v_shl_i_i409_6_2 v_conv7_i_i410_6_2 v_shl_i_i409_6_2 8;
vpc v_conv7_i_i410_6_2@uint8 v_conv7_i_i410_6_2@uint32;
(*   %conv.i.i398.7.2 = zext i8 %conv5.i.i407.6.2 to i32 *)
cast v_conv_i_i398_7_2@uint32 v_conv5_i_i407_6_2@uint8;
(*   %and.i.i399.7.2 = and i32 %conv.i.i398.7.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i399_7_2 v_conv_i_i398_7_2 (0x1)@uint32;
(*   %conv1.i.i400.7.2 = zext i8 %conv7.i.i410.6.2 to i32 *)
cast v_conv1_i_i400_7_2@uint32 v_conv7_i_i410_6_2@uint8;
(*   %mul.i.i401.7.2 = mul nsw i32 %and.i.i399.7.2, %conv1.i.i400.7.2 *)
mul v_mul_i_i401_7_2 v_and_i_i399_7_2 v_conv1_i_i400_7_2;
(*   %conv2.i.i402.7.2 = zext i8 %conv3.i.i404.6.2 to i32 *)
cast v_conv2_i_i402_7_2@uint32 v_conv3_i_i404_6_2@uint8;
(*   %xor.i.i403.7.2 = xor i32 %conv2.i.i402.7.2, %mul.i.i401.7.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i403_7_2 v_conv2_i_i402_7_2 v_mul_i_i401_7_2;
(*   %conv3.i.i404.7.2 = trunc i32 %xor.i.i403.7.2 to i8 *)
split tmp_v_xor_i_i403_7_2 v_conv3_i_i404_7_2 v_xor_i_i403_7_2 8;
vpc v_conv3_i_i404_7_2@uint8 v_conv3_i_i404_7_2@uint32;
(*   %arrayidx6.i414.2 = getelementptr inbounds i8, i8* %arraydecay19, i64 2 *)
(*   store i8 %conv3.i.i404.7.2, i8* %arrayidx6.i414.2, align 1 *)
mov a1b_2 v_conv3_i_i404_7_2;
(*   %22 = load i8, i8* %a, align 1 *)
mov v22 a_0;
(*   %arrayidx4.i394.3 = getelementptr inbounds i8, i8* %b, i64 3 *)
(*   %23 = load i8, i8* %arrayidx4.i394.3, align 1 *)
mov v23 b_3;
(*   %conv.i.i398.3194 = zext i8 %23 to i32 *)
cast v_conv_i_i398_3194@uint32 v23@uint8;
(*   %and.i.i399.3195 = and i32 %conv.i.i398.3194, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i399_3195 v_conv_i_i398_3194 (0x1)@uint32;
(*   %conv1.i.i400.3196 = zext i8 %22 to i32 *)
cast v_conv1_i_i400_3196@uint32 v22@uint8;
(*   %mul.i.i401.3197 = mul nsw i32 %and.i.i399.3195, %conv1.i.i400.3196 *)
mul v_mul_i_i401_3197 v_and_i_i399_3195 v_conv1_i_i400_3196;
(*   %conv3.i.i404.3198 = trunc i32 %mul.i.i401.3197 to i8 *)
split tmp_v_mul_i_i401_3197 v_conv3_i_i404_3198 v_mul_i_i401_3197 8;
vpc v_conv3_i_i404_3198@uint8 v_conv3_i_i404_3198@uint32;
(*   %conv4.i.i405.3199 = zext i8 %23 to i32 *)
cast v_conv4_i_i405_3199@uint32 v23@uint8;
(*   %shr.i.i406.3200 = ashr i32 %conv4.i.i405.3199, 1 *)
(* You may need to modify here *)
split v_shr_i_i406_3200 tmp_to_be_used v_conv4_i_i405_3199 1;
(*   %conv5.i.i407.3201 = trunc i32 %shr.i.i406.3200 to i8 *)
split tmp_v_shr_i_i406_3200 v_conv5_i_i407_3201 v_shr_i_i406_3200 8;
vpc v_conv5_i_i407_3201@uint8 v_conv5_i_i407_3201@uint32;
(*   %conv6.i.i408.3202 = zext i8 %22 to i32 *)
cast v_conv6_i_i408_3202@uint32 v22@uint8;
(*   %shl.i.i409.3203 = shl i32 %conv6.i.i408.3202, 1 *)
shls discard_77 v_shl_i_i409_3203 v_conv6_i_i408_3202 1;
(*   %conv7.i.i410.3204 = trunc i32 %shl.i.i409.3203 to i8 *)
split tmp_v_shl_i_i409_3203 v_conv7_i_i410_3204 v_shl_i_i409_3203 8;
vpc v_conv7_i_i410_3204@uint8 v_conv7_i_i410_3204@uint32;
(*   %conv.i.i398.1.3 = zext i8 %conv5.i.i407.3201 to i32 *)
cast v_conv_i_i398_1_3@uint32 v_conv5_i_i407_3201@uint8;
(*   %and.i.i399.1.3 = and i32 %conv.i.i398.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i399_1_3 v_conv_i_i398_1_3 (0x1)@uint32;
(*   %conv1.i.i400.1.3 = zext i8 %conv7.i.i410.3204 to i32 *)
cast v_conv1_i_i400_1_3@uint32 v_conv7_i_i410_3204@uint8;
(*   %mul.i.i401.1.3 = mul nsw i32 %and.i.i399.1.3, %conv1.i.i400.1.3 *)
mul v_mul_i_i401_1_3 v_and_i_i399_1_3 v_conv1_i_i400_1_3;
(*   %conv2.i.i402.1.3 = zext i8 %conv3.i.i404.3198 to i32 *)
cast v_conv2_i_i402_1_3@uint32 v_conv3_i_i404_3198@uint8;
(*   %xor.i.i403.1.3 = xor i32 %conv2.i.i402.1.3, %mul.i.i401.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i403_1_3 v_conv2_i_i402_1_3 v_mul_i_i401_1_3;
(*   %conv3.i.i404.1.3 = trunc i32 %xor.i.i403.1.3 to i8 *)
split tmp_v_xor_i_i403_1_3 v_conv3_i_i404_1_3 v_xor_i_i403_1_3 8;
vpc v_conv3_i_i404_1_3@uint8 v_conv3_i_i404_1_3@uint32;
(*   %conv4.i.i405.1.3 = zext i8 %conv5.i.i407.3201 to i32 *)
cast v_conv4_i_i405_1_3@uint32 v_conv5_i_i407_3201@uint8;
(*   %shr.i.i406.1.3 = ashr i32 %conv4.i.i405.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i406_1_3 tmp_to_be_used v_conv4_i_i405_1_3 1;
(*   %conv5.i.i407.1.3 = trunc i32 %shr.i.i406.1.3 to i8 *)
split tmp_v_shr_i_i406_1_3 v_conv5_i_i407_1_3 v_shr_i_i406_1_3 8;
vpc v_conv5_i_i407_1_3@uint8 v_conv5_i_i407_1_3@uint32;
(*   %conv6.i.i408.1.3 = zext i8 %conv7.i.i410.3204 to i32 *)
cast v_conv6_i_i408_1_3@uint32 v_conv7_i_i410_3204@uint8;
(*   %shl.i.i409.1.3 = shl i32 %conv6.i.i408.1.3, 1 *)
shls discard_78 v_shl_i_i409_1_3 v_conv6_i_i408_1_3 1;
(*   %conv7.i.i410.1.3 = trunc i32 %shl.i.i409.1.3 to i8 *)
split tmp_v_shl_i_i409_1_3 v_conv7_i_i410_1_3 v_shl_i_i409_1_3 8;
vpc v_conv7_i_i410_1_3@uint8 v_conv7_i_i410_1_3@uint32;
(*   %conv.i.i398.2.3 = zext i8 %conv5.i.i407.1.3 to i32 *)
cast v_conv_i_i398_2_3@uint32 v_conv5_i_i407_1_3@uint8;
(*   %and.i.i399.2.3 = and i32 %conv.i.i398.2.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i399_2_3 v_conv_i_i398_2_3 (0x1)@uint32;
(*   %conv1.i.i400.2.3 = zext i8 %conv7.i.i410.1.3 to i32 *)
cast v_conv1_i_i400_2_3@uint32 v_conv7_i_i410_1_3@uint8;
(*   %mul.i.i401.2.3 = mul nsw i32 %and.i.i399.2.3, %conv1.i.i400.2.3 *)
mul v_mul_i_i401_2_3 v_and_i_i399_2_3 v_conv1_i_i400_2_3;
(*   %conv2.i.i402.2.3 = zext i8 %conv3.i.i404.1.3 to i32 *)
cast v_conv2_i_i402_2_3@uint32 v_conv3_i_i404_1_3@uint8;
(*   %xor.i.i403.2.3 = xor i32 %conv2.i.i402.2.3, %mul.i.i401.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i403_2_3 v_conv2_i_i402_2_3 v_mul_i_i401_2_3;
(*   %conv3.i.i404.2.3 = trunc i32 %xor.i.i403.2.3 to i8 *)
split tmp_v_xor_i_i403_2_3 v_conv3_i_i404_2_3 v_xor_i_i403_2_3 8;
vpc v_conv3_i_i404_2_3@uint8 v_conv3_i_i404_2_3@uint32;
(*   %conv4.i.i405.2.3 = zext i8 %conv5.i.i407.1.3 to i32 *)
cast v_conv4_i_i405_2_3@uint32 v_conv5_i_i407_1_3@uint8;
(*   %shr.i.i406.2.3 = ashr i32 %conv4.i.i405.2.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i406_2_3 tmp_to_be_used v_conv4_i_i405_2_3 1;
(*   %conv5.i.i407.2.3 = trunc i32 %shr.i.i406.2.3 to i8 *)
split tmp_v_shr_i_i406_2_3 v_conv5_i_i407_2_3 v_shr_i_i406_2_3 8;
vpc v_conv5_i_i407_2_3@uint8 v_conv5_i_i407_2_3@uint32;
(*   %conv6.i.i408.2.3 = zext i8 %conv7.i.i410.1.3 to i32 *)
cast v_conv6_i_i408_2_3@uint32 v_conv7_i_i410_1_3@uint8;
(*   %shl.i.i409.2.3 = shl i32 %conv6.i.i408.2.3, 1 *)
shls discard_79 v_shl_i_i409_2_3 v_conv6_i_i408_2_3 1;
(*   %conv7.i.i410.2.3 = trunc i32 %shl.i.i409.2.3 to i8 *)
split tmp_v_shl_i_i409_2_3 v_conv7_i_i410_2_3 v_shl_i_i409_2_3 8;
vpc v_conv7_i_i410_2_3@uint8 v_conv7_i_i410_2_3@uint32;
(*   %conv.i.i398.3.3 = zext i8 %conv5.i.i407.2.3 to i32 *)
cast v_conv_i_i398_3_3@uint32 v_conv5_i_i407_2_3@uint8;
(*   %and.i.i399.3.3 = and i32 %conv.i.i398.3.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i399_3_3 v_conv_i_i398_3_3 (0x1)@uint32;
(*   %conv1.i.i400.3.3 = zext i8 %conv7.i.i410.2.3 to i32 *)
cast v_conv1_i_i400_3_3@uint32 v_conv7_i_i410_2_3@uint8;
(*   %mul.i.i401.3.3 = mul nsw i32 %and.i.i399.3.3, %conv1.i.i400.3.3 *)
mul v_mul_i_i401_3_3 v_and_i_i399_3_3 v_conv1_i_i400_3_3;
(*   %conv2.i.i402.3.3 = zext i8 %conv3.i.i404.2.3 to i32 *)
cast v_conv2_i_i402_3_3@uint32 v_conv3_i_i404_2_3@uint8;
(*   %xor.i.i403.3.3 = xor i32 %conv2.i.i402.3.3, %mul.i.i401.3.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i403_3_3 v_conv2_i_i402_3_3 v_mul_i_i401_3_3;
(*   %conv3.i.i404.3.3 = trunc i32 %xor.i.i403.3.3 to i8 *)
split tmp_v_xor_i_i403_3_3 v_conv3_i_i404_3_3 v_xor_i_i403_3_3 8;
vpc v_conv3_i_i404_3_3@uint8 v_conv3_i_i404_3_3@uint32;
(*   %conv4.i.i405.3.3 = zext i8 %conv5.i.i407.2.3 to i32 *)
cast v_conv4_i_i405_3_3@uint32 v_conv5_i_i407_2_3@uint8;
(*   %shr.i.i406.3.3 = ashr i32 %conv4.i.i405.3.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i406_3_3 tmp_to_be_used v_conv4_i_i405_3_3 1;
(*   %conv5.i.i407.3.3 = trunc i32 %shr.i.i406.3.3 to i8 *)
split tmp_v_shr_i_i406_3_3 v_conv5_i_i407_3_3 v_shr_i_i406_3_3 8;
vpc v_conv5_i_i407_3_3@uint8 v_conv5_i_i407_3_3@uint32;
(*   %conv6.i.i408.3.3 = zext i8 %conv7.i.i410.2.3 to i32 *)
cast v_conv6_i_i408_3_3@uint32 v_conv7_i_i410_2_3@uint8;
(*   %shl.i.i409.3.3 = shl i32 %conv6.i.i408.3.3, 1 *)
shls discard_80 v_shl_i_i409_3_3 v_conv6_i_i408_3_3 1;
(*   %conv7.i.i410.3.3 = trunc i32 %shl.i.i409.3.3 to i8 *)
split tmp_v_shl_i_i409_3_3 v_conv7_i_i410_3_3 v_shl_i_i409_3_3 8;
vpc v_conv7_i_i410_3_3@uint8 v_conv7_i_i410_3_3@uint32;
(*   %conv.i.i398.4.3 = zext i8 %conv5.i.i407.3.3 to i32 *)
cast v_conv_i_i398_4_3@uint32 v_conv5_i_i407_3_3@uint8;
(*   %and.i.i399.4.3 = and i32 %conv.i.i398.4.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i399_4_3 v_conv_i_i398_4_3 (0x1)@uint32;
(*   %conv1.i.i400.4.3 = zext i8 %conv7.i.i410.3.3 to i32 *)
cast v_conv1_i_i400_4_3@uint32 v_conv7_i_i410_3_3@uint8;
(*   %mul.i.i401.4.3 = mul nsw i32 %and.i.i399.4.3, %conv1.i.i400.4.3 *)
mul v_mul_i_i401_4_3 v_and_i_i399_4_3 v_conv1_i_i400_4_3;
(*   %conv2.i.i402.4.3 = zext i8 %conv3.i.i404.3.3 to i32 *)
cast v_conv2_i_i402_4_3@uint32 v_conv3_i_i404_3_3@uint8;
(*   %xor.i.i403.4.3 = xor i32 %conv2.i.i402.4.3, %mul.i.i401.4.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i403_4_3 v_conv2_i_i402_4_3 v_mul_i_i401_4_3;
(*   %conv3.i.i404.4.3 = trunc i32 %xor.i.i403.4.3 to i8 *)
split tmp_v_xor_i_i403_4_3 v_conv3_i_i404_4_3 v_xor_i_i403_4_3 8;
vpc v_conv3_i_i404_4_3@uint8 v_conv3_i_i404_4_3@uint32;
(*   %conv4.i.i405.4.3 = zext i8 %conv5.i.i407.3.3 to i32 *)
cast v_conv4_i_i405_4_3@uint32 v_conv5_i_i407_3_3@uint8;
(*   %shr.i.i406.4.3 = ashr i32 %conv4.i.i405.4.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i406_4_3 tmp_to_be_used v_conv4_i_i405_4_3 1;
(*   %conv5.i.i407.4.3 = trunc i32 %shr.i.i406.4.3 to i8 *)
split tmp_v_shr_i_i406_4_3 v_conv5_i_i407_4_3 v_shr_i_i406_4_3 8;
vpc v_conv5_i_i407_4_3@uint8 v_conv5_i_i407_4_3@uint32;
(*   %conv6.i.i408.4.3 = zext i8 %conv7.i.i410.3.3 to i32 *)
cast v_conv6_i_i408_4_3@uint32 v_conv7_i_i410_3_3@uint8;
(*   %shl.i.i409.4.3 = shl i32 %conv6.i.i408.4.3, 1 *)
shls discard_81 v_shl_i_i409_4_3 v_conv6_i_i408_4_3 1;
(*   %conv7.i.i410.4.3 = trunc i32 %shl.i.i409.4.3 to i8 *)
split tmp_v_shl_i_i409_4_3 v_conv7_i_i410_4_3 v_shl_i_i409_4_3 8;
vpc v_conv7_i_i410_4_3@uint8 v_conv7_i_i410_4_3@uint32;
(*   %conv.i.i398.5.3 = zext i8 %conv5.i.i407.4.3 to i32 *)
cast v_conv_i_i398_5_3@uint32 v_conv5_i_i407_4_3@uint8;
(*   %and.i.i399.5.3 = and i32 %conv.i.i398.5.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i399_5_3 v_conv_i_i398_5_3 (0x1)@uint32;
(*   %conv1.i.i400.5.3 = zext i8 %conv7.i.i410.4.3 to i32 *)
cast v_conv1_i_i400_5_3@uint32 v_conv7_i_i410_4_3@uint8;
(*   %mul.i.i401.5.3 = mul nsw i32 %and.i.i399.5.3, %conv1.i.i400.5.3 *)
mul v_mul_i_i401_5_3 v_and_i_i399_5_3 v_conv1_i_i400_5_3;
(*   %conv2.i.i402.5.3 = zext i8 %conv3.i.i404.4.3 to i32 *)
cast v_conv2_i_i402_5_3@uint32 v_conv3_i_i404_4_3@uint8;
(*   %xor.i.i403.5.3 = xor i32 %conv2.i.i402.5.3, %mul.i.i401.5.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i403_5_3 v_conv2_i_i402_5_3 v_mul_i_i401_5_3;
(*   %conv3.i.i404.5.3 = trunc i32 %xor.i.i403.5.3 to i8 *)
split tmp_v_xor_i_i403_5_3 v_conv3_i_i404_5_3 v_xor_i_i403_5_3 8;
vpc v_conv3_i_i404_5_3@uint8 v_conv3_i_i404_5_3@uint32;
(*   %conv4.i.i405.5.3 = zext i8 %conv5.i.i407.4.3 to i32 *)
cast v_conv4_i_i405_5_3@uint32 v_conv5_i_i407_4_3@uint8;
(*   %shr.i.i406.5.3 = ashr i32 %conv4.i.i405.5.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i406_5_3 tmp_to_be_used v_conv4_i_i405_5_3 1;
(*   %conv5.i.i407.5.3 = trunc i32 %shr.i.i406.5.3 to i8 *)
split tmp_v_shr_i_i406_5_3 v_conv5_i_i407_5_3 v_shr_i_i406_5_3 8;
vpc v_conv5_i_i407_5_3@uint8 v_conv5_i_i407_5_3@uint32;
(*   %conv6.i.i408.5.3 = zext i8 %conv7.i.i410.4.3 to i32 *)
cast v_conv6_i_i408_5_3@uint32 v_conv7_i_i410_4_3@uint8;
(*   %shl.i.i409.5.3 = shl i32 %conv6.i.i408.5.3, 1 *)
shls discard_82 v_shl_i_i409_5_3 v_conv6_i_i408_5_3 1;
(*   %conv7.i.i410.5.3 = trunc i32 %shl.i.i409.5.3 to i8 *)
split tmp_v_shl_i_i409_5_3 v_conv7_i_i410_5_3 v_shl_i_i409_5_3 8;
vpc v_conv7_i_i410_5_3@uint8 v_conv7_i_i410_5_3@uint32;
(*   %conv.i.i398.6.3 = zext i8 %conv5.i.i407.5.3 to i32 *)
cast v_conv_i_i398_6_3@uint32 v_conv5_i_i407_5_3@uint8;
(*   %and.i.i399.6.3 = and i32 %conv.i.i398.6.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i399_6_3 v_conv_i_i398_6_3 (0x1)@uint32;
(*   %conv1.i.i400.6.3 = zext i8 %conv7.i.i410.5.3 to i32 *)
cast v_conv1_i_i400_6_3@uint32 v_conv7_i_i410_5_3@uint8;
(*   %mul.i.i401.6.3 = mul nsw i32 %and.i.i399.6.3, %conv1.i.i400.6.3 *)
mul v_mul_i_i401_6_3 v_and_i_i399_6_3 v_conv1_i_i400_6_3;
(*   %conv2.i.i402.6.3 = zext i8 %conv3.i.i404.5.3 to i32 *)
cast v_conv2_i_i402_6_3@uint32 v_conv3_i_i404_5_3@uint8;
(*   %xor.i.i403.6.3 = xor i32 %conv2.i.i402.6.3, %mul.i.i401.6.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i403_6_3 v_conv2_i_i402_6_3 v_mul_i_i401_6_3;
(*   %conv3.i.i404.6.3 = trunc i32 %xor.i.i403.6.3 to i8 *)
split tmp_v_xor_i_i403_6_3 v_conv3_i_i404_6_3 v_xor_i_i403_6_3 8;
vpc v_conv3_i_i404_6_3@uint8 v_conv3_i_i404_6_3@uint32;
(*   %conv4.i.i405.6.3 = zext i8 %conv5.i.i407.5.3 to i32 *)
cast v_conv4_i_i405_6_3@uint32 v_conv5_i_i407_5_3@uint8;
(*   %shr.i.i406.6.3 = ashr i32 %conv4.i.i405.6.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i406_6_3 tmp_to_be_used v_conv4_i_i405_6_3 1;
(*   %conv5.i.i407.6.3 = trunc i32 %shr.i.i406.6.3 to i8 *)
split tmp_v_shr_i_i406_6_3 v_conv5_i_i407_6_3 v_shr_i_i406_6_3 8;
vpc v_conv5_i_i407_6_3@uint8 v_conv5_i_i407_6_3@uint32;
(*   %conv6.i.i408.6.3 = zext i8 %conv7.i.i410.5.3 to i32 *)
cast v_conv6_i_i408_6_3@uint32 v_conv7_i_i410_5_3@uint8;
(*   %shl.i.i409.6.3 = shl i32 %conv6.i.i408.6.3, 1 *)
shls discard_83 v_shl_i_i409_6_3 v_conv6_i_i408_6_3 1;
(*   %conv7.i.i410.6.3 = trunc i32 %shl.i.i409.6.3 to i8 *)
split tmp_v_shl_i_i409_6_3 v_conv7_i_i410_6_3 v_shl_i_i409_6_3 8;
vpc v_conv7_i_i410_6_3@uint8 v_conv7_i_i410_6_3@uint32;
(*   %conv.i.i398.7.3 = zext i8 %conv5.i.i407.6.3 to i32 *)
cast v_conv_i_i398_7_3@uint32 v_conv5_i_i407_6_3@uint8;
(*   %and.i.i399.7.3 = and i32 %conv.i.i398.7.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i399_7_3 v_conv_i_i398_7_3 (0x1)@uint32;
(*   %conv1.i.i400.7.3 = zext i8 %conv7.i.i410.6.3 to i32 *)
cast v_conv1_i_i400_7_3@uint32 v_conv7_i_i410_6_3@uint8;
(*   %mul.i.i401.7.3 = mul nsw i32 %and.i.i399.7.3, %conv1.i.i400.7.3 *)
mul v_mul_i_i401_7_3 v_and_i_i399_7_3 v_conv1_i_i400_7_3;
(*   %conv2.i.i402.7.3 = zext i8 %conv3.i.i404.6.3 to i32 *)
cast v_conv2_i_i402_7_3@uint32 v_conv3_i_i404_6_3@uint8;
(*   %xor.i.i403.7.3 = xor i32 %conv2.i.i402.7.3, %mul.i.i401.7.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i403_7_3 v_conv2_i_i402_7_3 v_mul_i_i401_7_3;
(*   %conv3.i.i404.7.3 = trunc i32 %xor.i.i403.7.3 to i8 *)
split tmp_v_xor_i_i403_7_3 v_conv3_i_i404_7_3 v_xor_i_i403_7_3 8;
vpc v_conv3_i_i404_7_3@uint8 v_conv3_i_i404_7_3@uint32;
(*   %arrayidx6.i414.3 = getelementptr inbounds i8, i8* %arraydecay19, i64 3 *)
(*   store i8 %conv3.i.i404.7.3, i8* %arrayidx6.i414.3, align 1 *)
mov a1b_3 v_conv3_i_i404_7_3;
(*   %arraydecay20 = getelementptr inbounds [4 x i8], [4 x i8]* %ab2, i64 0, i64 0 *)
(*   %24 = load i8, i8* %a, align 1 *)
mov v24 a_0;
(*   %arrayidx4.i351 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %25 = load i8, i8* %arrayidx4.i351, align 1 *)
mov v25 b_2;
(*   %conv.i.i355 = zext i8 %25 to i32 *)
cast v_conv_i_i355@uint32 v25@uint8;
(*   %and.i.i356 = and i32 %conv.i.i355, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i356 v_conv_i_i355 (0x1)@uint32;
(*   %conv1.i.i357 = zext i8 %24 to i32 *)
cast v_conv1_i_i357@uint32 v24@uint8;
(*   %mul.i.i358 = mul nsw i32 %and.i.i356, %conv1.i.i357 *)
mul v_mul_i_i358 v_and_i_i356 v_conv1_i_i357;
(*   %conv3.i.i361 = trunc i32 %mul.i.i358 to i8 *)
split tmp_v_mul_i_i358 v_conv3_i_i361 v_mul_i_i358 8;
vpc v_conv3_i_i361@uint8 v_conv3_i_i361@uint32;
(*   %conv4.i.i362 = zext i8 %25 to i32 *)
cast v_conv4_i_i362@uint32 v25@uint8;
(*   %shr.i.i363 = ashr i32 %conv4.i.i362, 1 *)
(* You may need to modify here *)
split v_shr_i_i363 tmp_to_be_used v_conv4_i_i362 1;
(*   %conv5.i.i364 = trunc i32 %shr.i.i363 to i8 *)
split tmp_v_shr_i_i363 v_conv5_i_i364 v_shr_i_i363 8;
vpc v_conv5_i_i364@uint8 v_conv5_i_i364@uint32;
(*   %conv6.i.i365 = zext i8 %24 to i32 *)
cast v_conv6_i_i365@uint32 v24@uint8;
(*   %shl.i.i366 = shl i32 %conv6.i.i365, 1 *)
shls discard_84 v_shl_i_i366 v_conv6_i_i365 1;
(*   %conv7.i.i367 = trunc i32 %shl.i.i366 to i8 *)
split tmp_v_shl_i_i366 v_conv7_i_i367 v_shl_i_i366 8;
vpc v_conv7_i_i367@uint8 v_conv7_i_i367@uint32;
(*   %conv.i.i355.1 = zext i8 %conv5.i.i364 to i32 *)
cast v_conv_i_i355_1@uint32 v_conv5_i_i364@uint8;
(*   %and.i.i356.1 = and i32 %conv.i.i355.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i356_1 v_conv_i_i355_1 (0x1)@uint32;
(*   %conv1.i.i357.1 = zext i8 %conv7.i.i367 to i32 *)
cast v_conv1_i_i357_1@uint32 v_conv7_i_i367@uint8;
(*   %mul.i.i358.1 = mul nsw i32 %and.i.i356.1, %conv1.i.i357.1 *)
mul v_mul_i_i358_1 v_and_i_i356_1 v_conv1_i_i357_1;
(*   %conv2.i.i359.1 = zext i8 %conv3.i.i361 to i32 *)
cast v_conv2_i_i359_1@uint32 v_conv3_i_i361@uint8;
(*   %xor.i.i360.1 = xor i32 %conv2.i.i359.1, %mul.i.i358.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i360_1 v_conv2_i_i359_1 v_mul_i_i358_1;
(*   %conv3.i.i361.1 = trunc i32 %xor.i.i360.1 to i8 *)
split tmp_v_xor_i_i360_1 v_conv3_i_i361_1 v_xor_i_i360_1 8;
vpc v_conv3_i_i361_1@uint8 v_conv3_i_i361_1@uint32;
(*   %conv4.i.i362.1 = zext i8 %conv5.i.i364 to i32 *)
cast v_conv4_i_i362_1@uint32 v_conv5_i_i364@uint8;
(*   %shr.i.i363.1 = ashr i32 %conv4.i.i362.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i363_1 tmp_to_be_used v_conv4_i_i362_1 1;
(*   %conv5.i.i364.1 = trunc i32 %shr.i.i363.1 to i8 *)
split tmp_v_shr_i_i363_1 v_conv5_i_i364_1 v_shr_i_i363_1 8;
vpc v_conv5_i_i364_1@uint8 v_conv5_i_i364_1@uint32;
(*   %conv6.i.i365.1 = zext i8 %conv7.i.i367 to i32 *)
cast v_conv6_i_i365_1@uint32 v_conv7_i_i367@uint8;
(*   %shl.i.i366.1 = shl i32 %conv6.i.i365.1, 1 *)
shls discard_85 v_shl_i_i366_1 v_conv6_i_i365_1 1;
(*   %conv7.i.i367.1 = trunc i32 %shl.i.i366.1 to i8 *)
split tmp_v_shl_i_i366_1 v_conv7_i_i367_1 v_shl_i_i366_1 8;
vpc v_conv7_i_i367_1@uint8 v_conv7_i_i367_1@uint32;
(*   %conv.i.i355.2 = zext i8 %conv5.i.i364.1 to i32 *)
cast v_conv_i_i355_2@uint32 v_conv5_i_i364_1@uint8;
(*   %and.i.i356.2 = and i32 %conv.i.i355.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i356_2 v_conv_i_i355_2 (0x1)@uint32;
(*   %conv1.i.i357.2 = zext i8 %conv7.i.i367.1 to i32 *)
cast v_conv1_i_i357_2@uint32 v_conv7_i_i367_1@uint8;
(*   %mul.i.i358.2 = mul nsw i32 %and.i.i356.2, %conv1.i.i357.2 *)
mul v_mul_i_i358_2 v_and_i_i356_2 v_conv1_i_i357_2;
(*   %conv2.i.i359.2 = zext i8 %conv3.i.i361.1 to i32 *)
cast v_conv2_i_i359_2@uint32 v_conv3_i_i361_1@uint8;
(*   %xor.i.i360.2 = xor i32 %conv2.i.i359.2, %mul.i.i358.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i360_2 v_conv2_i_i359_2 v_mul_i_i358_2;
(*   %conv3.i.i361.2 = trunc i32 %xor.i.i360.2 to i8 *)
split tmp_v_xor_i_i360_2 v_conv3_i_i361_2 v_xor_i_i360_2 8;
vpc v_conv3_i_i361_2@uint8 v_conv3_i_i361_2@uint32;
(*   %conv4.i.i362.2 = zext i8 %conv5.i.i364.1 to i32 *)
cast v_conv4_i_i362_2@uint32 v_conv5_i_i364_1@uint8;
(*   %shr.i.i363.2 = ashr i32 %conv4.i.i362.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i363_2 tmp_to_be_used v_conv4_i_i362_2 1;
(*   %conv5.i.i364.2 = trunc i32 %shr.i.i363.2 to i8 *)
split tmp_v_shr_i_i363_2 v_conv5_i_i364_2 v_shr_i_i363_2 8;
vpc v_conv5_i_i364_2@uint8 v_conv5_i_i364_2@uint32;
(*   %conv6.i.i365.2 = zext i8 %conv7.i.i367.1 to i32 *)
cast v_conv6_i_i365_2@uint32 v_conv7_i_i367_1@uint8;
(*   %shl.i.i366.2 = shl i32 %conv6.i.i365.2, 1 *)
shls discard_86 v_shl_i_i366_2 v_conv6_i_i365_2 1;
(*   %conv7.i.i367.2 = trunc i32 %shl.i.i366.2 to i8 *)
split tmp_v_shl_i_i366_2 v_conv7_i_i367_2 v_shl_i_i366_2 8;
vpc v_conv7_i_i367_2@uint8 v_conv7_i_i367_2@uint32;
(*   %conv.i.i355.3 = zext i8 %conv5.i.i364.2 to i32 *)
cast v_conv_i_i355_3@uint32 v_conv5_i_i364_2@uint8;
(*   %and.i.i356.3 = and i32 %conv.i.i355.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i356_3 v_conv_i_i355_3 (0x1)@uint32;
(*   %conv1.i.i357.3 = zext i8 %conv7.i.i367.2 to i32 *)
cast v_conv1_i_i357_3@uint32 v_conv7_i_i367_2@uint8;
(*   %mul.i.i358.3 = mul nsw i32 %and.i.i356.3, %conv1.i.i357.3 *)
mul v_mul_i_i358_3 v_and_i_i356_3 v_conv1_i_i357_3;
(*   %conv2.i.i359.3 = zext i8 %conv3.i.i361.2 to i32 *)
cast v_conv2_i_i359_3@uint32 v_conv3_i_i361_2@uint8;
(*   %xor.i.i360.3 = xor i32 %conv2.i.i359.3, %mul.i.i358.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i360_3 v_conv2_i_i359_3 v_mul_i_i358_3;
(*   %conv3.i.i361.3 = trunc i32 %xor.i.i360.3 to i8 *)
split tmp_v_xor_i_i360_3 v_conv3_i_i361_3 v_xor_i_i360_3 8;
vpc v_conv3_i_i361_3@uint8 v_conv3_i_i361_3@uint32;
(*   %conv4.i.i362.3 = zext i8 %conv5.i.i364.2 to i32 *)
cast v_conv4_i_i362_3@uint32 v_conv5_i_i364_2@uint8;
(*   %shr.i.i363.3 = ashr i32 %conv4.i.i362.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i363_3 tmp_to_be_used v_conv4_i_i362_3 1;
(*   %conv5.i.i364.3 = trunc i32 %shr.i.i363.3 to i8 *)
split tmp_v_shr_i_i363_3 v_conv5_i_i364_3 v_shr_i_i363_3 8;
vpc v_conv5_i_i364_3@uint8 v_conv5_i_i364_3@uint32;
(*   %conv6.i.i365.3 = zext i8 %conv7.i.i367.2 to i32 *)
cast v_conv6_i_i365_3@uint32 v_conv7_i_i367_2@uint8;
(*   %shl.i.i366.3 = shl i32 %conv6.i.i365.3, 1 *)
shls discard_87 v_shl_i_i366_3 v_conv6_i_i365_3 1;
(*   %conv7.i.i367.3 = trunc i32 %shl.i.i366.3 to i8 *)
split tmp_v_shl_i_i366_3 v_conv7_i_i367_3 v_shl_i_i366_3 8;
vpc v_conv7_i_i367_3@uint8 v_conv7_i_i367_3@uint32;
(*   %conv.i.i355.4 = zext i8 %conv5.i.i364.3 to i32 *)
cast v_conv_i_i355_4@uint32 v_conv5_i_i364_3@uint8;
(*   %and.i.i356.4 = and i32 %conv.i.i355.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i356_4 v_conv_i_i355_4 (0x1)@uint32;
(*   %conv1.i.i357.4 = zext i8 %conv7.i.i367.3 to i32 *)
cast v_conv1_i_i357_4@uint32 v_conv7_i_i367_3@uint8;
(*   %mul.i.i358.4 = mul nsw i32 %and.i.i356.4, %conv1.i.i357.4 *)
mul v_mul_i_i358_4 v_and_i_i356_4 v_conv1_i_i357_4;
(*   %conv2.i.i359.4 = zext i8 %conv3.i.i361.3 to i32 *)
cast v_conv2_i_i359_4@uint32 v_conv3_i_i361_3@uint8;
(*   %xor.i.i360.4 = xor i32 %conv2.i.i359.4, %mul.i.i358.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i360_4 v_conv2_i_i359_4 v_mul_i_i358_4;
(*   %conv3.i.i361.4 = trunc i32 %xor.i.i360.4 to i8 *)
split tmp_v_xor_i_i360_4 v_conv3_i_i361_4 v_xor_i_i360_4 8;
vpc v_conv3_i_i361_4@uint8 v_conv3_i_i361_4@uint32;
(*   %conv4.i.i362.4 = zext i8 %conv5.i.i364.3 to i32 *)
cast v_conv4_i_i362_4@uint32 v_conv5_i_i364_3@uint8;
(*   %shr.i.i363.4 = ashr i32 %conv4.i.i362.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i363_4 tmp_to_be_used v_conv4_i_i362_4 1;
(*   %conv5.i.i364.4 = trunc i32 %shr.i.i363.4 to i8 *)
split tmp_v_shr_i_i363_4 v_conv5_i_i364_4 v_shr_i_i363_4 8;
vpc v_conv5_i_i364_4@uint8 v_conv5_i_i364_4@uint32;
(*   %conv6.i.i365.4 = zext i8 %conv7.i.i367.3 to i32 *)
cast v_conv6_i_i365_4@uint32 v_conv7_i_i367_3@uint8;
(*   %shl.i.i366.4 = shl i32 %conv6.i.i365.4, 1 *)
shls discard_88 v_shl_i_i366_4 v_conv6_i_i365_4 1;
(*   %conv7.i.i367.4 = trunc i32 %shl.i.i366.4 to i8 *)
split tmp_v_shl_i_i366_4 v_conv7_i_i367_4 v_shl_i_i366_4 8;
vpc v_conv7_i_i367_4@uint8 v_conv7_i_i367_4@uint32;
(*   %conv.i.i355.5 = zext i8 %conv5.i.i364.4 to i32 *)
cast v_conv_i_i355_5@uint32 v_conv5_i_i364_4@uint8;
(*   %and.i.i356.5 = and i32 %conv.i.i355.5, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i356_5 v_conv_i_i355_5 (0x1)@uint32;
(*   %conv1.i.i357.5 = zext i8 %conv7.i.i367.4 to i32 *)
cast v_conv1_i_i357_5@uint32 v_conv7_i_i367_4@uint8;
(*   %mul.i.i358.5 = mul nsw i32 %and.i.i356.5, %conv1.i.i357.5 *)
mul v_mul_i_i358_5 v_and_i_i356_5 v_conv1_i_i357_5;
(*   %conv2.i.i359.5 = zext i8 %conv3.i.i361.4 to i32 *)
cast v_conv2_i_i359_5@uint32 v_conv3_i_i361_4@uint8;
(*   %xor.i.i360.5 = xor i32 %conv2.i.i359.5, %mul.i.i358.5 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i360_5 v_conv2_i_i359_5 v_mul_i_i358_5;
(*   %conv3.i.i361.5 = trunc i32 %xor.i.i360.5 to i8 *)
split tmp_v_xor_i_i360_5 v_conv3_i_i361_5 v_xor_i_i360_5 8;
vpc v_conv3_i_i361_5@uint8 v_conv3_i_i361_5@uint32;
(*   %conv4.i.i362.5 = zext i8 %conv5.i.i364.4 to i32 *)
cast v_conv4_i_i362_5@uint32 v_conv5_i_i364_4@uint8;
(*   %shr.i.i363.5 = ashr i32 %conv4.i.i362.5, 1 *)
(* You may need to modify here *)
split v_shr_i_i363_5 tmp_to_be_used v_conv4_i_i362_5 1;
(*   %conv5.i.i364.5 = trunc i32 %shr.i.i363.5 to i8 *)
split tmp_v_shr_i_i363_5 v_conv5_i_i364_5 v_shr_i_i363_5 8;
vpc v_conv5_i_i364_5@uint8 v_conv5_i_i364_5@uint32;
(*   %conv6.i.i365.5 = zext i8 %conv7.i.i367.4 to i32 *)
cast v_conv6_i_i365_5@uint32 v_conv7_i_i367_4@uint8;
(*   %shl.i.i366.5 = shl i32 %conv6.i.i365.5, 1 *)
shls discard_89 v_shl_i_i366_5 v_conv6_i_i365_5 1;
(*   %conv7.i.i367.5 = trunc i32 %shl.i.i366.5 to i8 *)
split tmp_v_shl_i_i366_5 v_conv7_i_i367_5 v_shl_i_i366_5 8;
vpc v_conv7_i_i367_5@uint8 v_conv7_i_i367_5@uint32;
(*   %conv.i.i355.6 = zext i8 %conv5.i.i364.5 to i32 *)
cast v_conv_i_i355_6@uint32 v_conv5_i_i364_5@uint8;
(*   %and.i.i356.6 = and i32 %conv.i.i355.6, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i356_6 v_conv_i_i355_6 (0x1)@uint32;
(*   %conv1.i.i357.6 = zext i8 %conv7.i.i367.5 to i32 *)
cast v_conv1_i_i357_6@uint32 v_conv7_i_i367_5@uint8;
(*   %mul.i.i358.6 = mul nsw i32 %and.i.i356.6, %conv1.i.i357.6 *)
mul v_mul_i_i358_6 v_and_i_i356_6 v_conv1_i_i357_6;
(*   %conv2.i.i359.6 = zext i8 %conv3.i.i361.5 to i32 *)
cast v_conv2_i_i359_6@uint32 v_conv3_i_i361_5@uint8;
(*   %xor.i.i360.6 = xor i32 %conv2.i.i359.6, %mul.i.i358.6 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i360_6 v_conv2_i_i359_6 v_mul_i_i358_6;
(*   %conv3.i.i361.6 = trunc i32 %xor.i.i360.6 to i8 *)
split tmp_v_xor_i_i360_6 v_conv3_i_i361_6 v_xor_i_i360_6 8;
vpc v_conv3_i_i361_6@uint8 v_conv3_i_i361_6@uint32;
(*   %conv4.i.i362.6 = zext i8 %conv5.i.i364.5 to i32 *)
cast v_conv4_i_i362_6@uint32 v_conv5_i_i364_5@uint8;
(*   %shr.i.i363.6 = ashr i32 %conv4.i.i362.6, 1 *)
(* You may need to modify here *)
split v_shr_i_i363_6 tmp_to_be_used v_conv4_i_i362_6 1;
(*   %conv5.i.i364.6 = trunc i32 %shr.i.i363.6 to i8 *)
split tmp_v_shr_i_i363_6 v_conv5_i_i364_6 v_shr_i_i363_6 8;
vpc v_conv5_i_i364_6@uint8 v_conv5_i_i364_6@uint32;
(*   %conv6.i.i365.6 = zext i8 %conv7.i.i367.5 to i32 *)
cast v_conv6_i_i365_6@uint32 v_conv7_i_i367_5@uint8;
(*   %shl.i.i366.6 = shl i32 %conv6.i.i365.6, 1 *)
shls discard_90 v_shl_i_i366_6 v_conv6_i_i365_6 1;
(*   %conv7.i.i367.6 = trunc i32 %shl.i.i366.6 to i8 *)
split tmp_v_shl_i_i366_6 v_conv7_i_i367_6 v_shl_i_i366_6 8;
vpc v_conv7_i_i367_6@uint8 v_conv7_i_i367_6@uint32;
(*   %conv.i.i355.7 = zext i8 %conv5.i.i364.6 to i32 *)
cast v_conv_i_i355_7@uint32 v_conv5_i_i364_6@uint8;
(*   %and.i.i356.7 = and i32 %conv.i.i355.7, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i356_7 v_conv_i_i355_7 (0x1)@uint32;
(*   %conv1.i.i357.7 = zext i8 %conv7.i.i367.6 to i32 *)
cast v_conv1_i_i357_7@uint32 v_conv7_i_i367_6@uint8;
(*   %mul.i.i358.7 = mul nsw i32 %and.i.i356.7, %conv1.i.i357.7 *)
mul v_mul_i_i358_7 v_and_i_i356_7 v_conv1_i_i357_7;
(*   %conv2.i.i359.7 = zext i8 %conv3.i.i361.6 to i32 *)
cast v_conv2_i_i359_7@uint32 v_conv3_i_i361_6@uint8;
(*   %xor.i.i360.7 = xor i32 %conv2.i.i359.7, %mul.i.i358.7 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i360_7 v_conv2_i_i359_7 v_mul_i_i358_7;
(*   %conv3.i.i361.7 = trunc i32 %xor.i.i360.7 to i8 *)
split tmp_v_xor_i_i360_7 v_conv3_i_i361_7 v_xor_i_i360_7 8;
vpc v_conv3_i_i361_7@uint8 v_conv3_i_i361_7@uint32;
(*   store i8 %conv3.i.i361.7, i8* %arraydecay20, align 1 *)
mov ab2_0 v_conv3_i_i361_7;
(*   %arrayidx.i347.1 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %26 = load i8, i8* %arrayidx.i347.1, align 1 *)
mov v26 a_1;
(*   %arrayidx4.i351.1 = getelementptr inbounds i8, i8* %b, i64 3 *)
(*   %27 = load i8, i8* %arrayidx4.i351.1, align 1 *)
mov v27 b_3;
(*   %conv.i.i355.1139 = zext i8 %27 to i32 *)
cast v_conv_i_i355_1139@uint32 v27@uint8;
(*   %and.i.i356.1140 = and i32 %conv.i.i355.1139, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i356_1140 v_conv_i_i355_1139 (0x1)@uint32;
(*   %conv1.i.i357.1141 = zext i8 %26 to i32 *)
cast v_conv1_i_i357_1141@uint32 v26@uint8;
(*   %mul.i.i358.1142 = mul nsw i32 %and.i.i356.1140, %conv1.i.i357.1141 *)
mul v_mul_i_i358_1142 v_and_i_i356_1140 v_conv1_i_i357_1141;
(*   %conv3.i.i361.1143 = trunc i32 %mul.i.i358.1142 to i8 *)
split tmp_v_mul_i_i358_1142 v_conv3_i_i361_1143 v_mul_i_i358_1142 8;
vpc v_conv3_i_i361_1143@uint8 v_conv3_i_i361_1143@uint32;
(*   %conv4.i.i362.1144 = zext i8 %27 to i32 *)
cast v_conv4_i_i362_1144@uint32 v27@uint8;
(*   %shr.i.i363.1145 = ashr i32 %conv4.i.i362.1144, 1 *)
(* You may need to modify here *)
split v_shr_i_i363_1145 tmp_to_be_used v_conv4_i_i362_1144 1;
(*   %conv5.i.i364.1146 = trunc i32 %shr.i.i363.1145 to i8 *)
split tmp_v_shr_i_i363_1145 v_conv5_i_i364_1146 v_shr_i_i363_1145 8;
vpc v_conv5_i_i364_1146@uint8 v_conv5_i_i364_1146@uint32;
(*   %conv6.i.i365.1147 = zext i8 %26 to i32 *)
cast v_conv6_i_i365_1147@uint32 v26@uint8;
(*   %shl.i.i366.1148 = shl i32 %conv6.i.i365.1147, 1 *)
shls discard_91 v_shl_i_i366_1148 v_conv6_i_i365_1147 1;
(*   %conv7.i.i367.1149 = trunc i32 %shl.i.i366.1148 to i8 *)
split tmp_v_shl_i_i366_1148 v_conv7_i_i367_1149 v_shl_i_i366_1148 8;
vpc v_conv7_i_i367_1149@uint8 v_conv7_i_i367_1149@uint32;
(*   %conv.i.i355.1.1 = zext i8 %conv5.i.i364.1146 to i32 *)
cast v_conv_i_i355_1_1@uint32 v_conv5_i_i364_1146@uint8;
(*   %and.i.i356.1.1 = and i32 %conv.i.i355.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i356_1_1 v_conv_i_i355_1_1 (0x1)@uint32;
(*   %conv1.i.i357.1.1 = zext i8 %conv7.i.i367.1149 to i32 *)
cast v_conv1_i_i357_1_1@uint32 v_conv7_i_i367_1149@uint8;
(*   %mul.i.i358.1.1 = mul nsw i32 %and.i.i356.1.1, %conv1.i.i357.1.1 *)
mul v_mul_i_i358_1_1 v_and_i_i356_1_1 v_conv1_i_i357_1_1;
(*   %conv2.i.i359.1.1 = zext i8 %conv3.i.i361.1143 to i32 *)
cast v_conv2_i_i359_1_1@uint32 v_conv3_i_i361_1143@uint8;
(*   %xor.i.i360.1.1 = xor i32 %conv2.i.i359.1.1, %mul.i.i358.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i360_1_1 v_conv2_i_i359_1_1 v_mul_i_i358_1_1;
(*   %conv3.i.i361.1.1 = trunc i32 %xor.i.i360.1.1 to i8 *)
split tmp_v_xor_i_i360_1_1 v_conv3_i_i361_1_1 v_xor_i_i360_1_1 8;
vpc v_conv3_i_i361_1_1@uint8 v_conv3_i_i361_1_1@uint32;
(*   %conv4.i.i362.1.1 = zext i8 %conv5.i.i364.1146 to i32 *)
cast v_conv4_i_i362_1_1@uint32 v_conv5_i_i364_1146@uint8;
(*   %shr.i.i363.1.1 = ashr i32 %conv4.i.i362.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i363_1_1 tmp_to_be_used v_conv4_i_i362_1_1 1;
(*   %conv5.i.i364.1.1 = trunc i32 %shr.i.i363.1.1 to i8 *)
split tmp_v_shr_i_i363_1_1 v_conv5_i_i364_1_1 v_shr_i_i363_1_1 8;
vpc v_conv5_i_i364_1_1@uint8 v_conv5_i_i364_1_1@uint32;
(*   %conv6.i.i365.1.1 = zext i8 %conv7.i.i367.1149 to i32 *)
cast v_conv6_i_i365_1_1@uint32 v_conv7_i_i367_1149@uint8;
(*   %shl.i.i366.1.1 = shl i32 %conv6.i.i365.1.1, 1 *)
shls discard_92 v_shl_i_i366_1_1 v_conv6_i_i365_1_1 1;
(*   %conv7.i.i367.1.1 = trunc i32 %shl.i.i366.1.1 to i8 *)
split tmp_v_shl_i_i366_1_1 v_conv7_i_i367_1_1 v_shl_i_i366_1_1 8;
vpc v_conv7_i_i367_1_1@uint8 v_conv7_i_i367_1_1@uint32;
(*   %conv.i.i355.2.1 = zext i8 %conv5.i.i364.1.1 to i32 *)
cast v_conv_i_i355_2_1@uint32 v_conv5_i_i364_1_1@uint8;
(*   %and.i.i356.2.1 = and i32 %conv.i.i355.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i356_2_1 v_conv_i_i355_2_1 (0x1)@uint32;
(*   %conv1.i.i357.2.1 = zext i8 %conv7.i.i367.1.1 to i32 *)
cast v_conv1_i_i357_2_1@uint32 v_conv7_i_i367_1_1@uint8;
(*   %mul.i.i358.2.1 = mul nsw i32 %and.i.i356.2.1, %conv1.i.i357.2.1 *)
mul v_mul_i_i358_2_1 v_and_i_i356_2_1 v_conv1_i_i357_2_1;
(*   %conv2.i.i359.2.1 = zext i8 %conv3.i.i361.1.1 to i32 *)
cast v_conv2_i_i359_2_1@uint32 v_conv3_i_i361_1_1@uint8;
(*   %xor.i.i360.2.1 = xor i32 %conv2.i.i359.2.1, %mul.i.i358.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i360_2_1 v_conv2_i_i359_2_1 v_mul_i_i358_2_1;
(*   %conv3.i.i361.2.1 = trunc i32 %xor.i.i360.2.1 to i8 *)
split tmp_v_xor_i_i360_2_1 v_conv3_i_i361_2_1 v_xor_i_i360_2_1 8;
vpc v_conv3_i_i361_2_1@uint8 v_conv3_i_i361_2_1@uint32;
(*   %conv4.i.i362.2.1 = zext i8 %conv5.i.i364.1.1 to i32 *)
cast v_conv4_i_i362_2_1@uint32 v_conv5_i_i364_1_1@uint8;
(*   %shr.i.i363.2.1 = ashr i32 %conv4.i.i362.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i363_2_1 tmp_to_be_used v_conv4_i_i362_2_1 1;
(*   %conv5.i.i364.2.1 = trunc i32 %shr.i.i363.2.1 to i8 *)
split tmp_v_shr_i_i363_2_1 v_conv5_i_i364_2_1 v_shr_i_i363_2_1 8;
vpc v_conv5_i_i364_2_1@uint8 v_conv5_i_i364_2_1@uint32;
(*   %conv6.i.i365.2.1 = zext i8 %conv7.i.i367.1.1 to i32 *)
cast v_conv6_i_i365_2_1@uint32 v_conv7_i_i367_1_1@uint8;
(*   %shl.i.i366.2.1 = shl i32 %conv6.i.i365.2.1, 1 *)
shls discard_93 v_shl_i_i366_2_1 v_conv6_i_i365_2_1 1;
(*   %conv7.i.i367.2.1 = trunc i32 %shl.i.i366.2.1 to i8 *)
split tmp_v_shl_i_i366_2_1 v_conv7_i_i367_2_1 v_shl_i_i366_2_1 8;
vpc v_conv7_i_i367_2_1@uint8 v_conv7_i_i367_2_1@uint32;
(*   %conv.i.i355.3.1 = zext i8 %conv5.i.i364.2.1 to i32 *)
cast v_conv_i_i355_3_1@uint32 v_conv5_i_i364_2_1@uint8;
(*   %and.i.i356.3.1 = and i32 %conv.i.i355.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i356_3_1 v_conv_i_i355_3_1 (0x1)@uint32;
(*   %conv1.i.i357.3.1 = zext i8 %conv7.i.i367.2.1 to i32 *)
cast v_conv1_i_i357_3_1@uint32 v_conv7_i_i367_2_1@uint8;
(*   %mul.i.i358.3.1 = mul nsw i32 %and.i.i356.3.1, %conv1.i.i357.3.1 *)
mul v_mul_i_i358_3_1 v_and_i_i356_3_1 v_conv1_i_i357_3_1;
(*   %conv2.i.i359.3.1 = zext i8 %conv3.i.i361.2.1 to i32 *)
cast v_conv2_i_i359_3_1@uint32 v_conv3_i_i361_2_1@uint8;
(*   %xor.i.i360.3.1 = xor i32 %conv2.i.i359.3.1, %mul.i.i358.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i360_3_1 v_conv2_i_i359_3_1 v_mul_i_i358_3_1;
(*   %conv3.i.i361.3.1 = trunc i32 %xor.i.i360.3.1 to i8 *)
split tmp_v_xor_i_i360_3_1 v_conv3_i_i361_3_1 v_xor_i_i360_3_1 8;
vpc v_conv3_i_i361_3_1@uint8 v_conv3_i_i361_3_1@uint32;
(*   %conv4.i.i362.3.1 = zext i8 %conv5.i.i364.2.1 to i32 *)
cast v_conv4_i_i362_3_1@uint32 v_conv5_i_i364_2_1@uint8;
(*   %shr.i.i363.3.1 = ashr i32 %conv4.i.i362.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i363_3_1 tmp_to_be_used v_conv4_i_i362_3_1 1;
(*   %conv5.i.i364.3.1 = trunc i32 %shr.i.i363.3.1 to i8 *)
split tmp_v_shr_i_i363_3_1 v_conv5_i_i364_3_1 v_shr_i_i363_3_1 8;
vpc v_conv5_i_i364_3_1@uint8 v_conv5_i_i364_3_1@uint32;
(*   %conv6.i.i365.3.1 = zext i8 %conv7.i.i367.2.1 to i32 *)
cast v_conv6_i_i365_3_1@uint32 v_conv7_i_i367_2_1@uint8;
(*   %shl.i.i366.3.1 = shl i32 %conv6.i.i365.3.1, 1 *)
shls discard_94 v_shl_i_i366_3_1 v_conv6_i_i365_3_1 1;
(*   %conv7.i.i367.3.1 = trunc i32 %shl.i.i366.3.1 to i8 *)
split tmp_v_shl_i_i366_3_1 v_conv7_i_i367_3_1 v_shl_i_i366_3_1 8;
vpc v_conv7_i_i367_3_1@uint8 v_conv7_i_i367_3_1@uint32;
(*   %conv.i.i355.4.1 = zext i8 %conv5.i.i364.3.1 to i32 *)
cast v_conv_i_i355_4_1@uint32 v_conv5_i_i364_3_1@uint8;
(*   %and.i.i356.4.1 = and i32 %conv.i.i355.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i356_4_1 v_conv_i_i355_4_1 (0x1)@uint32;
(*   %conv1.i.i357.4.1 = zext i8 %conv7.i.i367.3.1 to i32 *)
cast v_conv1_i_i357_4_1@uint32 v_conv7_i_i367_3_1@uint8;
(*   %mul.i.i358.4.1 = mul nsw i32 %and.i.i356.4.1, %conv1.i.i357.4.1 *)
mul v_mul_i_i358_4_1 v_and_i_i356_4_1 v_conv1_i_i357_4_1;
(*   %conv2.i.i359.4.1 = zext i8 %conv3.i.i361.3.1 to i32 *)
cast v_conv2_i_i359_4_1@uint32 v_conv3_i_i361_3_1@uint8;
(*   %xor.i.i360.4.1 = xor i32 %conv2.i.i359.4.1, %mul.i.i358.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i360_4_1 v_conv2_i_i359_4_1 v_mul_i_i358_4_1;
(*   %conv3.i.i361.4.1 = trunc i32 %xor.i.i360.4.1 to i8 *)
split tmp_v_xor_i_i360_4_1 v_conv3_i_i361_4_1 v_xor_i_i360_4_1 8;
vpc v_conv3_i_i361_4_1@uint8 v_conv3_i_i361_4_1@uint32;
(*   %conv4.i.i362.4.1 = zext i8 %conv5.i.i364.3.1 to i32 *)
cast v_conv4_i_i362_4_1@uint32 v_conv5_i_i364_3_1@uint8;
(*   %shr.i.i363.4.1 = ashr i32 %conv4.i.i362.4.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i363_4_1 tmp_to_be_used v_conv4_i_i362_4_1 1;
(*   %conv5.i.i364.4.1 = trunc i32 %shr.i.i363.4.1 to i8 *)
split tmp_v_shr_i_i363_4_1 v_conv5_i_i364_4_1 v_shr_i_i363_4_1 8;
vpc v_conv5_i_i364_4_1@uint8 v_conv5_i_i364_4_1@uint32;
(*   %conv6.i.i365.4.1 = zext i8 %conv7.i.i367.3.1 to i32 *)
cast v_conv6_i_i365_4_1@uint32 v_conv7_i_i367_3_1@uint8;
(*   %shl.i.i366.4.1 = shl i32 %conv6.i.i365.4.1, 1 *)
shls discard_95 v_shl_i_i366_4_1 v_conv6_i_i365_4_1 1;
(*   %conv7.i.i367.4.1 = trunc i32 %shl.i.i366.4.1 to i8 *)
split tmp_v_shl_i_i366_4_1 v_conv7_i_i367_4_1 v_shl_i_i366_4_1 8;
vpc v_conv7_i_i367_4_1@uint8 v_conv7_i_i367_4_1@uint32;
(*   %conv.i.i355.5.1 = zext i8 %conv5.i.i364.4.1 to i32 *)
cast v_conv_i_i355_5_1@uint32 v_conv5_i_i364_4_1@uint8;
(*   %and.i.i356.5.1 = and i32 %conv.i.i355.5.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i356_5_1 v_conv_i_i355_5_1 (0x1)@uint32;
(*   %conv1.i.i357.5.1 = zext i8 %conv7.i.i367.4.1 to i32 *)
cast v_conv1_i_i357_5_1@uint32 v_conv7_i_i367_4_1@uint8;
(*   %mul.i.i358.5.1 = mul nsw i32 %and.i.i356.5.1, %conv1.i.i357.5.1 *)
mul v_mul_i_i358_5_1 v_and_i_i356_5_1 v_conv1_i_i357_5_1;
(*   %conv2.i.i359.5.1 = zext i8 %conv3.i.i361.4.1 to i32 *)
cast v_conv2_i_i359_5_1@uint32 v_conv3_i_i361_4_1@uint8;
(*   %xor.i.i360.5.1 = xor i32 %conv2.i.i359.5.1, %mul.i.i358.5.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i360_5_1 v_conv2_i_i359_5_1 v_mul_i_i358_5_1;
(*   %conv3.i.i361.5.1 = trunc i32 %xor.i.i360.5.1 to i8 *)
split tmp_v_xor_i_i360_5_1 v_conv3_i_i361_5_1 v_xor_i_i360_5_1 8;
vpc v_conv3_i_i361_5_1@uint8 v_conv3_i_i361_5_1@uint32;
(*   %conv4.i.i362.5.1 = zext i8 %conv5.i.i364.4.1 to i32 *)
cast v_conv4_i_i362_5_1@uint32 v_conv5_i_i364_4_1@uint8;
(*   %shr.i.i363.5.1 = ashr i32 %conv4.i.i362.5.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i363_5_1 tmp_to_be_used v_conv4_i_i362_5_1 1;
(*   %conv5.i.i364.5.1 = trunc i32 %shr.i.i363.5.1 to i8 *)
split tmp_v_shr_i_i363_5_1 v_conv5_i_i364_5_1 v_shr_i_i363_5_1 8;
vpc v_conv5_i_i364_5_1@uint8 v_conv5_i_i364_5_1@uint32;
(*   %conv6.i.i365.5.1 = zext i8 %conv7.i.i367.4.1 to i32 *)
cast v_conv6_i_i365_5_1@uint32 v_conv7_i_i367_4_1@uint8;
(*   %shl.i.i366.5.1 = shl i32 %conv6.i.i365.5.1, 1 *)
shls discard_96 v_shl_i_i366_5_1 v_conv6_i_i365_5_1 1;
(*   %conv7.i.i367.5.1 = trunc i32 %shl.i.i366.5.1 to i8 *)
split tmp_v_shl_i_i366_5_1 v_conv7_i_i367_5_1 v_shl_i_i366_5_1 8;
vpc v_conv7_i_i367_5_1@uint8 v_conv7_i_i367_5_1@uint32;
(*   %conv.i.i355.6.1 = zext i8 %conv5.i.i364.5.1 to i32 *)
cast v_conv_i_i355_6_1@uint32 v_conv5_i_i364_5_1@uint8;
(*   %and.i.i356.6.1 = and i32 %conv.i.i355.6.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i356_6_1 v_conv_i_i355_6_1 (0x1)@uint32;
(*   %conv1.i.i357.6.1 = zext i8 %conv7.i.i367.5.1 to i32 *)
cast v_conv1_i_i357_6_1@uint32 v_conv7_i_i367_5_1@uint8;
(*   %mul.i.i358.6.1 = mul nsw i32 %and.i.i356.6.1, %conv1.i.i357.6.1 *)
mul v_mul_i_i358_6_1 v_and_i_i356_6_1 v_conv1_i_i357_6_1;
(*   %conv2.i.i359.6.1 = zext i8 %conv3.i.i361.5.1 to i32 *)
cast v_conv2_i_i359_6_1@uint32 v_conv3_i_i361_5_1@uint8;
(*   %xor.i.i360.6.1 = xor i32 %conv2.i.i359.6.1, %mul.i.i358.6.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i360_6_1 v_conv2_i_i359_6_1 v_mul_i_i358_6_1;
(*   %conv3.i.i361.6.1 = trunc i32 %xor.i.i360.6.1 to i8 *)
split tmp_v_xor_i_i360_6_1 v_conv3_i_i361_6_1 v_xor_i_i360_6_1 8;
vpc v_conv3_i_i361_6_1@uint8 v_conv3_i_i361_6_1@uint32;
(*   %conv4.i.i362.6.1 = zext i8 %conv5.i.i364.5.1 to i32 *)
cast v_conv4_i_i362_6_1@uint32 v_conv5_i_i364_5_1@uint8;
(*   %shr.i.i363.6.1 = ashr i32 %conv4.i.i362.6.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i363_6_1 tmp_to_be_used v_conv4_i_i362_6_1 1;
(*   %conv5.i.i364.6.1 = trunc i32 %shr.i.i363.6.1 to i8 *)
split tmp_v_shr_i_i363_6_1 v_conv5_i_i364_6_1 v_shr_i_i363_6_1 8;
vpc v_conv5_i_i364_6_1@uint8 v_conv5_i_i364_6_1@uint32;
(*   %conv6.i.i365.6.1 = zext i8 %conv7.i.i367.5.1 to i32 *)
cast v_conv6_i_i365_6_1@uint32 v_conv7_i_i367_5_1@uint8;
(*   %shl.i.i366.6.1 = shl i32 %conv6.i.i365.6.1, 1 *)
shls discard_97 v_shl_i_i366_6_1 v_conv6_i_i365_6_1 1;
(*   %conv7.i.i367.6.1 = trunc i32 %shl.i.i366.6.1 to i8 *)
split tmp_v_shl_i_i366_6_1 v_conv7_i_i367_6_1 v_shl_i_i366_6_1 8;
vpc v_conv7_i_i367_6_1@uint8 v_conv7_i_i367_6_1@uint32;
(*   %conv.i.i355.7.1 = zext i8 %conv5.i.i364.6.1 to i32 *)
cast v_conv_i_i355_7_1@uint32 v_conv5_i_i364_6_1@uint8;
(*   %and.i.i356.7.1 = and i32 %conv.i.i355.7.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i356_7_1 v_conv_i_i355_7_1 (0x1)@uint32;
(*   %conv1.i.i357.7.1 = zext i8 %conv7.i.i367.6.1 to i32 *)
cast v_conv1_i_i357_7_1@uint32 v_conv7_i_i367_6_1@uint8;
(*   %mul.i.i358.7.1 = mul nsw i32 %and.i.i356.7.1, %conv1.i.i357.7.1 *)
mul v_mul_i_i358_7_1 v_and_i_i356_7_1 v_conv1_i_i357_7_1;
(*   %conv2.i.i359.7.1 = zext i8 %conv3.i.i361.6.1 to i32 *)
cast v_conv2_i_i359_7_1@uint32 v_conv3_i_i361_6_1@uint8;
(*   %xor.i.i360.7.1 = xor i32 %conv2.i.i359.7.1, %mul.i.i358.7.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i360_7_1 v_conv2_i_i359_7_1 v_mul_i_i358_7_1;
(*   %conv3.i.i361.7.1 = trunc i32 %xor.i.i360.7.1 to i8 *)
split tmp_v_xor_i_i360_7_1 v_conv3_i_i361_7_1 v_xor_i_i360_7_1 8;
vpc v_conv3_i_i361_7_1@uint8 v_conv3_i_i361_7_1@uint32;
(*   %arrayidx6.i371.1 = getelementptr inbounds i8, i8* %arraydecay20, i64 1 *)
(*   store i8 %conv3.i.i361.7.1, i8* %arrayidx6.i371.1, align 1 *)
mov ab2_1 v_conv3_i_i361_7_1;
(*   %arrayidx.i347.2 = getelementptr inbounds i8, i8* %a, i64 2 *)
(*   %28 = load i8, i8* %arrayidx.i347.2, align 1 *)
mov v28 a_2;
(*   %29 = load i8, i8* %b, align 1 *)
mov v29 b_0;
(*   %conv.i.i355.2150 = zext i8 %29 to i32 *)
cast v_conv_i_i355_2150@uint32 v29@uint8;
(*   %and.i.i356.2151 = and i32 %conv.i.i355.2150, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i356_2151 v_conv_i_i355_2150 (0x1)@uint32;
(*   %conv1.i.i357.2152 = zext i8 %28 to i32 *)
cast v_conv1_i_i357_2152@uint32 v28@uint8;
(*   %mul.i.i358.2153 = mul nsw i32 %and.i.i356.2151, %conv1.i.i357.2152 *)
mul v_mul_i_i358_2153 v_and_i_i356_2151 v_conv1_i_i357_2152;
(*   %conv3.i.i361.2154 = trunc i32 %mul.i.i358.2153 to i8 *)
split tmp_v_mul_i_i358_2153 v_conv3_i_i361_2154 v_mul_i_i358_2153 8;
vpc v_conv3_i_i361_2154@uint8 v_conv3_i_i361_2154@uint32;
(*   %conv4.i.i362.2155 = zext i8 %29 to i32 *)
cast v_conv4_i_i362_2155@uint32 v29@uint8;
(*   %shr.i.i363.2156 = ashr i32 %conv4.i.i362.2155, 1 *)
(* You may need to modify here *)
split v_shr_i_i363_2156 tmp_to_be_used v_conv4_i_i362_2155 1;
(*   %conv5.i.i364.2157 = trunc i32 %shr.i.i363.2156 to i8 *)
split tmp_v_shr_i_i363_2156 v_conv5_i_i364_2157 v_shr_i_i363_2156 8;
vpc v_conv5_i_i364_2157@uint8 v_conv5_i_i364_2157@uint32;
(*   %conv6.i.i365.2158 = zext i8 %28 to i32 *)
cast v_conv6_i_i365_2158@uint32 v28@uint8;
(*   %shl.i.i366.2159 = shl i32 %conv6.i.i365.2158, 1 *)
shls discard_98 v_shl_i_i366_2159 v_conv6_i_i365_2158 1;
(*   %conv7.i.i367.2160 = trunc i32 %shl.i.i366.2159 to i8 *)
split tmp_v_shl_i_i366_2159 v_conv7_i_i367_2160 v_shl_i_i366_2159 8;
vpc v_conv7_i_i367_2160@uint8 v_conv7_i_i367_2160@uint32;
(*   %conv.i.i355.1.2 = zext i8 %conv5.i.i364.2157 to i32 *)
cast v_conv_i_i355_1_2@uint32 v_conv5_i_i364_2157@uint8;
(*   %and.i.i356.1.2 = and i32 %conv.i.i355.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i356_1_2 v_conv_i_i355_1_2 (0x1)@uint32;
(*   %conv1.i.i357.1.2 = zext i8 %conv7.i.i367.2160 to i32 *)
cast v_conv1_i_i357_1_2@uint32 v_conv7_i_i367_2160@uint8;
(*   %mul.i.i358.1.2 = mul nsw i32 %and.i.i356.1.2, %conv1.i.i357.1.2 *)
mul v_mul_i_i358_1_2 v_and_i_i356_1_2 v_conv1_i_i357_1_2;
(*   %conv2.i.i359.1.2 = zext i8 %conv3.i.i361.2154 to i32 *)
cast v_conv2_i_i359_1_2@uint32 v_conv3_i_i361_2154@uint8;
(*   %xor.i.i360.1.2 = xor i32 %conv2.i.i359.1.2, %mul.i.i358.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i360_1_2 v_conv2_i_i359_1_2 v_mul_i_i358_1_2;
(*   %conv3.i.i361.1.2 = trunc i32 %xor.i.i360.1.2 to i8 *)
split tmp_v_xor_i_i360_1_2 v_conv3_i_i361_1_2 v_xor_i_i360_1_2 8;
vpc v_conv3_i_i361_1_2@uint8 v_conv3_i_i361_1_2@uint32;
(*   %conv4.i.i362.1.2 = zext i8 %conv5.i.i364.2157 to i32 *)
cast v_conv4_i_i362_1_2@uint32 v_conv5_i_i364_2157@uint8;
(*   %shr.i.i363.1.2 = ashr i32 %conv4.i.i362.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i363_1_2 tmp_to_be_used v_conv4_i_i362_1_2 1;
(*   %conv5.i.i364.1.2 = trunc i32 %shr.i.i363.1.2 to i8 *)
split tmp_v_shr_i_i363_1_2 v_conv5_i_i364_1_2 v_shr_i_i363_1_2 8;
vpc v_conv5_i_i364_1_2@uint8 v_conv5_i_i364_1_2@uint32;
(*   %conv6.i.i365.1.2 = zext i8 %conv7.i.i367.2160 to i32 *)
cast v_conv6_i_i365_1_2@uint32 v_conv7_i_i367_2160@uint8;
(*   %shl.i.i366.1.2 = shl i32 %conv6.i.i365.1.2, 1 *)
shls discard_99 v_shl_i_i366_1_2 v_conv6_i_i365_1_2 1;
(*   %conv7.i.i367.1.2 = trunc i32 %shl.i.i366.1.2 to i8 *)
split tmp_v_shl_i_i366_1_2 v_conv7_i_i367_1_2 v_shl_i_i366_1_2 8;
vpc v_conv7_i_i367_1_2@uint8 v_conv7_i_i367_1_2@uint32;
(*   %conv.i.i355.2.2 = zext i8 %conv5.i.i364.1.2 to i32 *)
cast v_conv_i_i355_2_2@uint32 v_conv5_i_i364_1_2@uint8;
(*   %and.i.i356.2.2 = and i32 %conv.i.i355.2.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i356_2_2 v_conv_i_i355_2_2 (0x1)@uint32;
(*   %conv1.i.i357.2.2 = zext i8 %conv7.i.i367.1.2 to i32 *)
cast v_conv1_i_i357_2_2@uint32 v_conv7_i_i367_1_2@uint8;
(*   %mul.i.i358.2.2 = mul nsw i32 %and.i.i356.2.2, %conv1.i.i357.2.2 *)
mul v_mul_i_i358_2_2 v_and_i_i356_2_2 v_conv1_i_i357_2_2;
(*   %conv2.i.i359.2.2 = zext i8 %conv3.i.i361.1.2 to i32 *)
cast v_conv2_i_i359_2_2@uint32 v_conv3_i_i361_1_2@uint8;
(*   %xor.i.i360.2.2 = xor i32 %conv2.i.i359.2.2, %mul.i.i358.2.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i360_2_2 v_conv2_i_i359_2_2 v_mul_i_i358_2_2;
(*   %conv3.i.i361.2.2 = trunc i32 %xor.i.i360.2.2 to i8 *)
split tmp_v_xor_i_i360_2_2 v_conv3_i_i361_2_2 v_xor_i_i360_2_2 8;
vpc v_conv3_i_i361_2_2@uint8 v_conv3_i_i361_2_2@uint32;
(*   %conv4.i.i362.2.2 = zext i8 %conv5.i.i364.1.2 to i32 *)
cast v_conv4_i_i362_2_2@uint32 v_conv5_i_i364_1_2@uint8;
(*   %shr.i.i363.2.2 = ashr i32 %conv4.i.i362.2.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i363_2_2 tmp_to_be_used v_conv4_i_i362_2_2 1;
(*   %conv5.i.i364.2.2 = trunc i32 %shr.i.i363.2.2 to i8 *)
split tmp_v_shr_i_i363_2_2 v_conv5_i_i364_2_2 v_shr_i_i363_2_2 8;
vpc v_conv5_i_i364_2_2@uint8 v_conv5_i_i364_2_2@uint32;
(*   %conv6.i.i365.2.2 = zext i8 %conv7.i.i367.1.2 to i32 *)
cast v_conv6_i_i365_2_2@uint32 v_conv7_i_i367_1_2@uint8;
(*   %shl.i.i366.2.2 = shl i32 %conv6.i.i365.2.2, 1 *)
shls discard_100 v_shl_i_i366_2_2 v_conv6_i_i365_2_2 1;
(*   %conv7.i.i367.2.2 = trunc i32 %shl.i.i366.2.2 to i8 *)
split tmp_v_shl_i_i366_2_2 v_conv7_i_i367_2_2 v_shl_i_i366_2_2 8;
vpc v_conv7_i_i367_2_2@uint8 v_conv7_i_i367_2_2@uint32;
(*   %conv.i.i355.3.2 = zext i8 %conv5.i.i364.2.2 to i32 *)
cast v_conv_i_i355_3_2@uint32 v_conv5_i_i364_2_2@uint8;
(*   %and.i.i356.3.2 = and i32 %conv.i.i355.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i356_3_2 v_conv_i_i355_3_2 (0x1)@uint32;
(*   %conv1.i.i357.3.2 = zext i8 %conv7.i.i367.2.2 to i32 *)
cast v_conv1_i_i357_3_2@uint32 v_conv7_i_i367_2_2@uint8;
(*   %mul.i.i358.3.2 = mul nsw i32 %and.i.i356.3.2, %conv1.i.i357.3.2 *)
mul v_mul_i_i358_3_2 v_and_i_i356_3_2 v_conv1_i_i357_3_2;
(*   %conv2.i.i359.3.2 = zext i8 %conv3.i.i361.2.2 to i32 *)
cast v_conv2_i_i359_3_2@uint32 v_conv3_i_i361_2_2@uint8;
(*   %xor.i.i360.3.2 = xor i32 %conv2.i.i359.3.2, %mul.i.i358.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i360_3_2 v_conv2_i_i359_3_2 v_mul_i_i358_3_2;
(*   %conv3.i.i361.3.2 = trunc i32 %xor.i.i360.3.2 to i8 *)
split tmp_v_xor_i_i360_3_2 v_conv3_i_i361_3_2 v_xor_i_i360_3_2 8;
vpc v_conv3_i_i361_3_2@uint8 v_conv3_i_i361_3_2@uint32;
(*   %conv4.i.i362.3.2 = zext i8 %conv5.i.i364.2.2 to i32 *)
cast v_conv4_i_i362_3_2@uint32 v_conv5_i_i364_2_2@uint8;
(*   %shr.i.i363.3.2 = ashr i32 %conv4.i.i362.3.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i363_3_2 tmp_to_be_used v_conv4_i_i362_3_2 1;
(*   %conv5.i.i364.3.2 = trunc i32 %shr.i.i363.3.2 to i8 *)
split tmp_v_shr_i_i363_3_2 v_conv5_i_i364_3_2 v_shr_i_i363_3_2 8;
vpc v_conv5_i_i364_3_2@uint8 v_conv5_i_i364_3_2@uint32;
(*   %conv6.i.i365.3.2 = zext i8 %conv7.i.i367.2.2 to i32 *)
cast v_conv6_i_i365_3_2@uint32 v_conv7_i_i367_2_2@uint8;
(*   %shl.i.i366.3.2 = shl i32 %conv6.i.i365.3.2, 1 *)
shls discard_101 v_shl_i_i366_3_2 v_conv6_i_i365_3_2 1;
(*   %conv7.i.i367.3.2 = trunc i32 %shl.i.i366.3.2 to i8 *)
split tmp_v_shl_i_i366_3_2 v_conv7_i_i367_3_2 v_shl_i_i366_3_2 8;
vpc v_conv7_i_i367_3_2@uint8 v_conv7_i_i367_3_2@uint32;
(*   %conv.i.i355.4.2 = zext i8 %conv5.i.i364.3.2 to i32 *)
cast v_conv_i_i355_4_2@uint32 v_conv5_i_i364_3_2@uint8;
(*   %and.i.i356.4.2 = and i32 %conv.i.i355.4.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i356_4_2 v_conv_i_i355_4_2 (0x1)@uint32;
(*   %conv1.i.i357.4.2 = zext i8 %conv7.i.i367.3.2 to i32 *)
cast v_conv1_i_i357_4_2@uint32 v_conv7_i_i367_3_2@uint8;
(*   %mul.i.i358.4.2 = mul nsw i32 %and.i.i356.4.2, %conv1.i.i357.4.2 *)
mul v_mul_i_i358_4_2 v_and_i_i356_4_2 v_conv1_i_i357_4_2;
(*   %conv2.i.i359.4.2 = zext i8 %conv3.i.i361.3.2 to i32 *)
cast v_conv2_i_i359_4_2@uint32 v_conv3_i_i361_3_2@uint8;
(*   %xor.i.i360.4.2 = xor i32 %conv2.i.i359.4.2, %mul.i.i358.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i360_4_2 v_conv2_i_i359_4_2 v_mul_i_i358_4_2;
(*   %conv3.i.i361.4.2 = trunc i32 %xor.i.i360.4.2 to i8 *)
split tmp_v_xor_i_i360_4_2 v_conv3_i_i361_4_2 v_xor_i_i360_4_2 8;
vpc v_conv3_i_i361_4_2@uint8 v_conv3_i_i361_4_2@uint32;
(*   %conv4.i.i362.4.2 = zext i8 %conv5.i.i364.3.2 to i32 *)
cast v_conv4_i_i362_4_2@uint32 v_conv5_i_i364_3_2@uint8;
(*   %shr.i.i363.4.2 = ashr i32 %conv4.i.i362.4.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i363_4_2 tmp_to_be_used v_conv4_i_i362_4_2 1;
(*   %conv5.i.i364.4.2 = trunc i32 %shr.i.i363.4.2 to i8 *)
split tmp_v_shr_i_i363_4_2 v_conv5_i_i364_4_2 v_shr_i_i363_4_2 8;
vpc v_conv5_i_i364_4_2@uint8 v_conv5_i_i364_4_2@uint32;
(*   %conv6.i.i365.4.2 = zext i8 %conv7.i.i367.3.2 to i32 *)
cast v_conv6_i_i365_4_2@uint32 v_conv7_i_i367_3_2@uint8;
(*   %shl.i.i366.4.2 = shl i32 %conv6.i.i365.4.2, 1 *)
shls discard_102 v_shl_i_i366_4_2 v_conv6_i_i365_4_2 1;
(*   %conv7.i.i367.4.2 = trunc i32 %shl.i.i366.4.2 to i8 *)
split tmp_v_shl_i_i366_4_2 v_conv7_i_i367_4_2 v_shl_i_i366_4_2 8;
vpc v_conv7_i_i367_4_2@uint8 v_conv7_i_i367_4_2@uint32;
(*   %conv.i.i355.5.2 = zext i8 %conv5.i.i364.4.2 to i32 *)
cast v_conv_i_i355_5_2@uint32 v_conv5_i_i364_4_2@uint8;
(*   %and.i.i356.5.2 = and i32 %conv.i.i355.5.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i356_5_2 v_conv_i_i355_5_2 (0x1)@uint32;
(*   %conv1.i.i357.5.2 = zext i8 %conv7.i.i367.4.2 to i32 *)
cast v_conv1_i_i357_5_2@uint32 v_conv7_i_i367_4_2@uint8;
(*   %mul.i.i358.5.2 = mul nsw i32 %and.i.i356.5.2, %conv1.i.i357.5.2 *)
mul v_mul_i_i358_5_2 v_and_i_i356_5_2 v_conv1_i_i357_5_2;
(*   %conv2.i.i359.5.2 = zext i8 %conv3.i.i361.4.2 to i32 *)
cast v_conv2_i_i359_5_2@uint32 v_conv3_i_i361_4_2@uint8;
(*   %xor.i.i360.5.2 = xor i32 %conv2.i.i359.5.2, %mul.i.i358.5.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i360_5_2 v_conv2_i_i359_5_2 v_mul_i_i358_5_2;
(*   %conv3.i.i361.5.2 = trunc i32 %xor.i.i360.5.2 to i8 *)
split tmp_v_xor_i_i360_5_2 v_conv3_i_i361_5_2 v_xor_i_i360_5_2 8;
vpc v_conv3_i_i361_5_2@uint8 v_conv3_i_i361_5_2@uint32;
(*   %conv4.i.i362.5.2 = zext i8 %conv5.i.i364.4.2 to i32 *)
cast v_conv4_i_i362_5_2@uint32 v_conv5_i_i364_4_2@uint8;
(*   %shr.i.i363.5.2 = ashr i32 %conv4.i.i362.5.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i363_5_2 tmp_to_be_used v_conv4_i_i362_5_2 1;
(*   %conv5.i.i364.5.2 = trunc i32 %shr.i.i363.5.2 to i8 *)
split tmp_v_shr_i_i363_5_2 v_conv5_i_i364_5_2 v_shr_i_i363_5_2 8;
vpc v_conv5_i_i364_5_2@uint8 v_conv5_i_i364_5_2@uint32;
(*   %conv6.i.i365.5.2 = zext i8 %conv7.i.i367.4.2 to i32 *)
cast v_conv6_i_i365_5_2@uint32 v_conv7_i_i367_4_2@uint8;
(*   %shl.i.i366.5.2 = shl i32 %conv6.i.i365.5.2, 1 *)
shls discard_103 v_shl_i_i366_5_2 v_conv6_i_i365_5_2 1;
(*   %conv7.i.i367.5.2 = trunc i32 %shl.i.i366.5.2 to i8 *)
split tmp_v_shl_i_i366_5_2 v_conv7_i_i367_5_2 v_shl_i_i366_5_2 8;
vpc v_conv7_i_i367_5_2@uint8 v_conv7_i_i367_5_2@uint32;
(*   %conv.i.i355.6.2 = zext i8 %conv5.i.i364.5.2 to i32 *)
cast v_conv_i_i355_6_2@uint32 v_conv5_i_i364_5_2@uint8;
(*   %and.i.i356.6.2 = and i32 %conv.i.i355.6.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i356_6_2 v_conv_i_i355_6_2 (0x1)@uint32;
(*   %conv1.i.i357.6.2 = zext i8 %conv7.i.i367.5.2 to i32 *)
cast v_conv1_i_i357_6_2@uint32 v_conv7_i_i367_5_2@uint8;
(*   %mul.i.i358.6.2 = mul nsw i32 %and.i.i356.6.2, %conv1.i.i357.6.2 *)
mul v_mul_i_i358_6_2 v_and_i_i356_6_2 v_conv1_i_i357_6_2;
(*   %conv2.i.i359.6.2 = zext i8 %conv3.i.i361.5.2 to i32 *)
cast v_conv2_i_i359_6_2@uint32 v_conv3_i_i361_5_2@uint8;
(*   %xor.i.i360.6.2 = xor i32 %conv2.i.i359.6.2, %mul.i.i358.6.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i360_6_2 v_conv2_i_i359_6_2 v_mul_i_i358_6_2;
(*   %conv3.i.i361.6.2 = trunc i32 %xor.i.i360.6.2 to i8 *)
split tmp_v_xor_i_i360_6_2 v_conv3_i_i361_6_2 v_xor_i_i360_6_2 8;
vpc v_conv3_i_i361_6_2@uint8 v_conv3_i_i361_6_2@uint32;
(*   %conv4.i.i362.6.2 = zext i8 %conv5.i.i364.5.2 to i32 *)
cast v_conv4_i_i362_6_2@uint32 v_conv5_i_i364_5_2@uint8;
(*   %shr.i.i363.6.2 = ashr i32 %conv4.i.i362.6.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i363_6_2 tmp_to_be_used v_conv4_i_i362_6_2 1;
(*   %conv5.i.i364.6.2 = trunc i32 %shr.i.i363.6.2 to i8 *)
split tmp_v_shr_i_i363_6_2 v_conv5_i_i364_6_2 v_shr_i_i363_6_2 8;
vpc v_conv5_i_i364_6_2@uint8 v_conv5_i_i364_6_2@uint32;
(*   %conv6.i.i365.6.2 = zext i8 %conv7.i.i367.5.2 to i32 *)
cast v_conv6_i_i365_6_2@uint32 v_conv7_i_i367_5_2@uint8;
(*   %shl.i.i366.6.2 = shl i32 %conv6.i.i365.6.2, 1 *)
shls discard_104 v_shl_i_i366_6_2 v_conv6_i_i365_6_2 1;
(*   %conv7.i.i367.6.2 = trunc i32 %shl.i.i366.6.2 to i8 *)
split tmp_v_shl_i_i366_6_2 v_conv7_i_i367_6_2 v_shl_i_i366_6_2 8;
vpc v_conv7_i_i367_6_2@uint8 v_conv7_i_i367_6_2@uint32;
(*   %conv.i.i355.7.2 = zext i8 %conv5.i.i364.6.2 to i32 *)
cast v_conv_i_i355_7_2@uint32 v_conv5_i_i364_6_2@uint8;
(*   %and.i.i356.7.2 = and i32 %conv.i.i355.7.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i356_7_2 v_conv_i_i355_7_2 (0x1)@uint32;
(*   %conv1.i.i357.7.2 = zext i8 %conv7.i.i367.6.2 to i32 *)
cast v_conv1_i_i357_7_2@uint32 v_conv7_i_i367_6_2@uint8;
(*   %mul.i.i358.7.2 = mul nsw i32 %and.i.i356.7.2, %conv1.i.i357.7.2 *)
mul v_mul_i_i358_7_2 v_and_i_i356_7_2 v_conv1_i_i357_7_2;
(*   %conv2.i.i359.7.2 = zext i8 %conv3.i.i361.6.2 to i32 *)
cast v_conv2_i_i359_7_2@uint32 v_conv3_i_i361_6_2@uint8;
(*   %xor.i.i360.7.2 = xor i32 %conv2.i.i359.7.2, %mul.i.i358.7.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i360_7_2 v_conv2_i_i359_7_2 v_mul_i_i358_7_2;
(*   %conv3.i.i361.7.2 = trunc i32 %xor.i.i360.7.2 to i8 *)
split tmp_v_xor_i_i360_7_2 v_conv3_i_i361_7_2 v_xor_i_i360_7_2 8;
vpc v_conv3_i_i361_7_2@uint8 v_conv3_i_i361_7_2@uint32;
(*   %arrayidx6.i371.2 = getelementptr inbounds i8, i8* %arraydecay20, i64 2 *)
(*   store i8 %conv3.i.i361.7.2, i8* %arrayidx6.i371.2, align 1 *)
mov ab2_2 v_conv3_i_i361_7_2;
(*   %arrayidx.i347.3 = getelementptr inbounds i8, i8* %a, i64 3 *)
(*   %30 = load i8, i8* %arrayidx.i347.3, align 1 *)
mov v30 a_3;
(*   %arrayidx4.i351.3 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %31 = load i8, i8* %arrayidx4.i351.3, align 1 *)
mov v31 b_1;
(*   %conv.i.i355.3161 = zext i8 %31 to i32 *)
cast v_conv_i_i355_3161@uint32 v31@uint8;
(*   %and.i.i356.3162 = and i32 %conv.i.i355.3161, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i356_3162 v_conv_i_i355_3161 (0x1)@uint32;
(*   %conv1.i.i357.3163 = zext i8 %30 to i32 *)
cast v_conv1_i_i357_3163@uint32 v30@uint8;
(*   %mul.i.i358.3164 = mul nsw i32 %and.i.i356.3162, %conv1.i.i357.3163 *)
mul v_mul_i_i358_3164 v_and_i_i356_3162 v_conv1_i_i357_3163;
(*   %conv3.i.i361.3165 = trunc i32 %mul.i.i358.3164 to i8 *)
split tmp_v_mul_i_i358_3164 v_conv3_i_i361_3165 v_mul_i_i358_3164 8;
vpc v_conv3_i_i361_3165@uint8 v_conv3_i_i361_3165@uint32;
(*   %conv4.i.i362.3166 = zext i8 %31 to i32 *)
cast v_conv4_i_i362_3166@uint32 v31@uint8;
(*   %shr.i.i363.3167 = ashr i32 %conv4.i.i362.3166, 1 *)
(* You may need to modify here *)
split v_shr_i_i363_3167 tmp_to_be_used v_conv4_i_i362_3166 1;
(*   %conv5.i.i364.3168 = trunc i32 %shr.i.i363.3167 to i8 *)
split tmp_v_shr_i_i363_3167 v_conv5_i_i364_3168 v_shr_i_i363_3167 8;
vpc v_conv5_i_i364_3168@uint8 v_conv5_i_i364_3168@uint32;
(*   %conv6.i.i365.3169 = zext i8 %30 to i32 *)
cast v_conv6_i_i365_3169@uint32 v30@uint8;
(*   %shl.i.i366.3170 = shl i32 %conv6.i.i365.3169, 1 *)
shls discard_105 v_shl_i_i366_3170 v_conv6_i_i365_3169 1;
(*   %conv7.i.i367.3171 = trunc i32 %shl.i.i366.3170 to i8 *)
split tmp_v_shl_i_i366_3170 v_conv7_i_i367_3171 v_shl_i_i366_3170 8;
vpc v_conv7_i_i367_3171@uint8 v_conv7_i_i367_3171@uint32;
(*   %conv.i.i355.1.3 = zext i8 %conv5.i.i364.3168 to i32 *)
cast v_conv_i_i355_1_3@uint32 v_conv5_i_i364_3168@uint8;
(*   %and.i.i356.1.3 = and i32 %conv.i.i355.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i356_1_3 v_conv_i_i355_1_3 (0x1)@uint32;
(*   %conv1.i.i357.1.3 = zext i8 %conv7.i.i367.3171 to i32 *)
cast v_conv1_i_i357_1_3@uint32 v_conv7_i_i367_3171@uint8;
(*   %mul.i.i358.1.3 = mul nsw i32 %and.i.i356.1.3, %conv1.i.i357.1.3 *)
mul v_mul_i_i358_1_3 v_and_i_i356_1_3 v_conv1_i_i357_1_3;
(*   %conv2.i.i359.1.3 = zext i8 %conv3.i.i361.3165 to i32 *)
cast v_conv2_i_i359_1_3@uint32 v_conv3_i_i361_3165@uint8;
(*   %xor.i.i360.1.3 = xor i32 %conv2.i.i359.1.3, %mul.i.i358.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i360_1_3 v_conv2_i_i359_1_3 v_mul_i_i358_1_3;
(*   %conv3.i.i361.1.3 = trunc i32 %xor.i.i360.1.3 to i8 *)
split tmp_v_xor_i_i360_1_3 v_conv3_i_i361_1_3 v_xor_i_i360_1_3 8;
vpc v_conv3_i_i361_1_3@uint8 v_conv3_i_i361_1_3@uint32;
(*   %conv4.i.i362.1.3 = zext i8 %conv5.i.i364.3168 to i32 *)
cast v_conv4_i_i362_1_3@uint32 v_conv5_i_i364_3168@uint8;
(*   %shr.i.i363.1.3 = ashr i32 %conv4.i.i362.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i363_1_3 tmp_to_be_used v_conv4_i_i362_1_3 1;
(*   %conv5.i.i364.1.3 = trunc i32 %shr.i.i363.1.3 to i8 *)
split tmp_v_shr_i_i363_1_3 v_conv5_i_i364_1_3 v_shr_i_i363_1_3 8;
vpc v_conv5_i_i364_1_3@uint8 v_conv5_i_i364_1_3@uint32;
(*   %conv6.i.i365.1.3 = zext i8 %conv7.i.i367.3171 to i32 *)
cast v_conv6_i_i365_1_3@uint32 v_conv7_i_i367_3171@uint8;
(*   %shl.i.i366.1.3 = shl i32 %conv6.i.i365.1.3, 1 *)
shls discard_106 v_shl_i_i366_1_3 v_conv6_i_i365_1_3 1;
(*   %conv7.i.i367.1.3 = trunc i32 %shl.i.i366.1.3 to i8 *)
split tmp_v_shl_i_i366_1_3 v_conv7_i_i367_1_3 v_shl_i_i366_1_3 8;
vpc v_conv7_i_i367_1_3@uint8 v_conv7_i_i367_1_3@uint32;
(*   %conv.i.i355.2.3 = zext i8 %conv5.i.i364.1.3 to i32 *)
cast v_conv_i_i355_2_3@uint32 v_conv5_i_i364_1_3@uint8;
(*   %and.i.i356.2.3 = and i32 %conv.i.i355.2.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i356_2_3 v_conv_i_i355_2_3 (0x1)@uint32;
(*   %conv1.i.i357.2.3 = zext i8 %conv7.i.i367.1.3 to i32 *)
cast v_conv1_i_i357_2_3@uint32 v_conv7_i_i367_1_3@uint8;
(*   %mul.i.i358.2.3 = mul nsw i32 %and.i.i356.2.3, %conv1.i.i357.2.3 *)
mul v_mul_i_i358_2_3 v_and_i_i356_2_3 v_conv1_i_i357_2_3;
(*   %conv2.i.i359.2.3 = zext i8 %conv3.i.i361.1.3 to i32 *)
cast v_conv2_i_i359_2_3@uint32 v_conv3_i_i361_1_3@uint8;
(*   %xor.i.i360.2.3 = xor i32 %conv2.i.i359.2.3, %mul.i.i358.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i360_2_3 v_conv2_i_i359_2_3 v_mul_i_i358_2_3;
(*   %conv3.i.i361.2.3 = trunc i32 %xor.i.i360.2.3 to i8 *)
split tmp_v_xor_i_i360_2_3 v_conv3_i_i361_2_3 v_xor_i_i360_2_3 8;
vpc v_conv3_i_i361_2_3@uint8 v_conv3_i_i361_2_3@uint32;
(*   %conv4.i.i362.2.3 = zext i8 %conv5.i.i364.1.3 to i32 *)
cast v_conv4_i_i362_2_3@uint32 v_conv5_i_i364_1_3@uint8;
(*   %shr.i.i363.2.3 = ashr i32 %conv4.i.i362.2.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i363_2_3 tmp_to_be_used v_conv4_i_i362_2_3 1;
(*   %conv5.i.i364.2.3 = trunc i32 %shr.i.i363.2.3 to i8 *)
split tmp_v_shr_i_i363_2_3 v_conv5_i_i364_2_3 v_shr_i_i363_2_3 8;
vpc v_conv5_i_i364_2_3@uint8 v_conv5_i_i364_2_3@uint32;
(*   %conv6.i.i365.2.3 = zext i8 %conv7.i.i367.1.3 to i32 *)
cast v_conv6_i_i365_2_3@uint32 v_conv7_i_i367_1_3@uint8;
(*   %shl.i.i366.2.3 = shl i32 %conv6.i.i365.2.3, 1 *)
shls discard_107 v_shl_i_i366_2_3 v_conv6_i_i365_2_3 1;
(*   %conv7.i.i367.2.3 = trunc i32 %shl.i.i366.2.3 to i8 *)
split tmp_v_shl_i_i366_2_3 v_conv7_i_i367_2_3 v_shl_i_i366_2_3 8;
vpc v_conv7_i_i367_2_3@uint8 v_conv7_i_i367_2_3@uint32;
(*   %conv.i.i355.3.3 = zext i8 %conv5.i.i364.2.3 to i32 *)
cast v_conv_i_i355_3_3@uint32 v_conv5_i_i364_2_3@uint8;
(*   %and.i.i356.3.3 = and i32 %conv.i.i355.3.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i356_3_3 v_conv_i_i355_3_3 (0x1)@uint32;
(*   %conv1.i.i357.3.3 = zext i8 %conv7.i.i367.2.3 to i32 *)
cast v_conv1_i_i357_3_3@uint32 v_conv7_i_i367_2_3@uint8;
(*   %mul.i.i358.3.3 = mul nsw i32 %and.i.i356.3.3, %conv1.i.i357.3.3 *)
mul v_mul_i_i358_3_3 v_and_i_i356_3_3 v_conv1_i_i357_3_3;
(*   %conv2.i.i359.3.3 = zext i8 %conv3.i.i361.2.3 to i32 *)
cast v_conv2_i_i359_3_3@uint32 v_conv3_i_i361_2_3@uint8;
(*   %xor.i.i360.3.3 = xor i32 %conv2.i.i359.3.3, %mul.i.i358.3.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i360_3_3 v_conv2_i_i359_3_3 v_mul_i_i358_3_3;
(*   %conv3.i.i361.3.3 = trunc i32 %xor.i.i360.3.3 to i8 *)
split tmp_v_xor_i_i360_3_3 v_conv3_i_i361_3_3 v_xor_i_i360_3_3 8;
vpc v_conv3_i_i361_3_3@uint8 v_conv3_i_i361_3_3@uint32;
(*   %conv4.i.i362.3.3 = zext i8 %conv5.i.i364.2.3 to i32 *)
cast v_conv4_i_i362_3_3@uint32 v_conv5_i_i364_2_3@uint8;
(*   %shr.i.i363.3.3 = ashr i32 %conv4.i.i362.3.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i363_3_3 tmp_to_be_used v_conv4_i_i362_3_3 1;
(*   %conv5.i.i364.3.3 = trunc i32 %shr.i.i363.3.3 to i8 *)
split tmp_v_shr_i_i363_3_3 v_conv5_i_i364_3_3 v_shr_i_i363_3_3 8;
vpc v_conv5_i_i364_3_3@uint8 v_conv5_i_i364_3_3@uint32;
(*   %conv6.i.i365.3.3 = zext i8 %conv7.i.i367.2.3 to i32 *)
cast v_conv6_i_i365_3_3@uint32 v_conv7_i_i367_2_3@uint8;
(*   %shl.i.i366.3.3 = shl i32 %conv6.i.i365.3.3, 1 *)
shls discard_108 v_shl_i_i366_3_3 v_conv6_i_i365_3_3 1;
(*   %conv7.i.i367.3.3 = trunc i32 %shl.i.i366.3.3 to i8 *)
split tmp_v_shl_i_i366_3_3 v_conv7_i_i367_3_3 v_shl_i_i366_3_3 8;
vpc v_conv7_i_i367_3_3@uint8 v_conv7_i_i367_3_3@uint32;
(*   %conv.i.i355.4.3 = zext i8 %conv5.i.i364.3.3 to i32 *)
cast v_conv_i_i355_4_3@uint32 v_conv5_i_i364_3_3@uint8;
(*   %and.i.i356.4.3 = and i32 %conv.i.i355.4.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i356_4_3 v_conv_i_i355_4_3 (0x1)@uint32;
(*   %conv1.i.i357.4.3 = zext i8 %conv7.i.i367.3.3 to i32 *)
cast v_conv1_i_i357_4_3@uint32 v_conv7_i_i367_3_3@uint8;
(*   %mul.i.i358.4.3 = mul nsw i32 %and.i.i356.4.3, %conv1.i.i357.4.3 *)
mul v_mul_i_i358_4_3 v_and_i_i356_4_3 v_conv1_i_i357_4_3;
(*   %conv2.i.i359.4.3 = zext i8 %conv3.i.i361.3.3 to i32 *)
cast v_conv2_i_i359_4_3@uint32 v_conv3_i_i361_3_3@uint8;
(*   %xor.i.i360.4.3 = xor i32 %conv2.i.i359.4.3, %mul.i.i358.4.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i360_4_3 v_conv2_i_i359_4_3 v_mul_i_i358_4_3;
(*   %conv3.i.i361.4.3 = trunc i32 %xor.i.i360.4.3 to i8 *)
split tmp_v_xor_i_i360_4_3 v_conv3_i_i361_4_3 v_xor_i_i360_4_3 8;
vpc v_conv3_i_i361_4_3@uint8 v_conv3_i_i361_4_3@uint32;
(*   %conv4.i.i362.4.3 = zext i8 %conv5.i.i364.3.3 to i32 *)
cast v_conv4_i_i362_4_3@uint32 v_conv5_i_i364_3_3@uint8;
(*   %shr.i.i363.4.3 = ashr i32 %conv4.i.i362.4.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i363_4_3 tmp_to_be_used v_conv4_i_i362_4_3 1;
(*   %conv5.i.i364.4.3 = trunc i32 %shr.i.i363.4.3 to i8 *)
split tmp_v_shr_i_i363_4_3 v_conv5_i_i364_4_3 v_shr_i_i363_4_3 8;
vpc v_conv5_i_i364_4_3@uint8 v_conv5_i_i364_4_3@uint32;
(*   %conv6.i.i365.4.3 = zext i8 %conv7.i.i367.3.3 to i32 *)
cast v_conv6_i_i365_4_3@uint32 v_conv7_i_i367_3_3@uint8;
(*   %shl.i.i366.4.3 = shl i32 %conv6.i.i365.4.3, 1 *)
shls discard_109 v_shl_i_i366_4_3 v_conv6_i_i365_4_3 1;
(*   %conv7.i.i367.4.3 = trunc i32 %shl.i.i366.4.3 to i8 *)
split tmp_v_shl_i_i366_4_3 v_conv7_i_i367_4_3 v_shl_i_i366_4_3 8;
vpc v_conv7_i_i367_4_3@uint8 v_conv7_i_i367_4_3@uint32;
(*   %conv.i.i355.5.3 = zext i8 %conv5.i.i364.4.3 to i32 *)
cast v_conv_i_i355_5_3@uint32 v_conv5_i_i364_4_3@uint8;
(*   %and.i.i356.5.3 = and i32 %conv.i.i355.5.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i356_5_3 v_conv_i_i355_5_3 (0x1)@uint32;
(*   %conv1.i.i357.5.3 = zext i8 %conv7.i.i367.4.3 to i32 *)
cast v_conv1_i_i357_5_3@uint32 v_conv7_i_i367_4_3@uint8;
(*   %mul.i.i358.5.3 = mul nsw i32 %and.i.i356.5.3, %conv1.i.i357.5.3 *)
mul v_mul_i_i358_5_3 v_and_i_i356_5_3 v_conv1_i_i357_5_3;
(*   %conv2.i.i359.5.3 = zext i8 %conv3.i.i361.4.3 to i32 *)
cast v_conv2_i_i359_5_3@uint32 v_conv3_i_i361_4_3@uint8;
(*   %xor.i.i360.5.3 = xor i32 %conv2.i.i359.5.3, %mul.i.i358.5.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i360_5_3 v_conv2_i_i359_5_3 v_mul_i_i358_5_3;
(*   %conv3.i.i361.5.3 = trunc i32 %xor.i.i360.5.3 to i8 *)
split tmp_v_xor_i_i360_5_3 v_conv3_i_i361_5_3 v_xor_i_i360_5_3 8;
vpc v_conv3_i_i361_5_3@uint8 v_conv3_i_i361_5_3@uint32;
(*   %conv4.i.i362.5.3 = zext i8 %conv5.i.i364.4.3 to i32 *)
cast v_conv4_i_i362_5_3@uint32 v_conv5_i_i364_4_3@uint8;
(*   %shr.i.i363.5.3 = ashr i32 %conv4.i.i362.5.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i363_5_3 tmp_to_be_used v_conv4_i_i362_5_3 1;
(*   %conv5.i.i364.5.3 = trunc i32 %shr.i.i363.5.3 to i8 *)
split tmp_v_shr_i_i363_5_3 v_conv5_i_i364_5_3 v_shr_i_i363_5_3 8;
vpc v_conv5_i_i364_5_3@uint8 v_conv5_i_i364_5_3@uint32;
(*   %conv6.i.i365.5.3 = zext i8 %conv7.i.i367.4.3 to i32 *)
cast v_conv6_i_i365_5_3@uint32 v_conv7_i_i367_4_3@uint8;
(*   %shl.i.i366.5.3 = shl i32 %conv6.i.i365.5.3, 1 *)
shls discard_110 v_shl_i_i366_5_3 v_conv6_i_i365_5_3 1;
(*   %conv7.i.i367.5.3 = trunc i32 %shl.i.i366.5.3 to i8 *)
split tmp_v_shl_i_i366_5_3 v_conv7_i_i367_5_3 v_shl_i_i366_5_3 8;
vpc v_conv7_i_i367_5_3@uint8 v_conv7_i_i367_5_3@uint32;
(*   %conv.i.i355.6.3 = zext i8 %conv5.i.i364.5.3 to i32 *)
cast v_conv_i_i355_6_3@uint32 v_conv5_i_i364_5_3@uint8;
(*   %and.i.i356.6.3 = and i32 %conv.i.i355.6.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i356_6_3 v_conv_i_i355_6_3 (0x1)@uint32;
(*   %conv1.i.i357.6.3 = zext i8 %conv7.i.i367.5.3 to i32 *)
cast v_conv1_i_i357_6_3@uint32 v_conv7_i_i367_5_3@uint8;
(*   %mul.i.i358.6.3 = mul nsw i32 %and.i.i356.6.3, %conv1.i.i357.6.3 *)
mul v_mul_i_i358_6_3 v_and_i_i356_6_3 v_conv1_i_i357_6_3;
(*   %conv2.i.i359.6.3 = zext i8 %conv3.i.i361.5.3 to i32 *)
cast v_conv2_i_i359_6_3@uint32 v_conv3_i_i361_5_3@uint8;
(*   %xor.i.i360.6.3 = xor i32 %conv2.i.i359.6.3, %mul.i.i358.6.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i360_6_3 v_conv2_i_i359_6_3 v_mul_i_i358_6_3;
(*   %conv3.i.i361.6.3 = trunc i32 %xor.i.i360.6.3 to i8 *)
split tmp_v_xor_i_i360_6_3 v_conv3_i_i361_6_3 v_xor_i_i360_6_3 8;
vpc v_conv3_i_i361_6_3@uint8 v_conv3_i_i361_6_3@uint32;
(*   %conv4.i.i362.6.3 = zext i8 %conv5.i.i364.5.3 to i32 *)
cast v_conv4_i_i362_6_3@uint32 v_conv5_i_i364_5_3@uint8;
(*   %shr.i.i363.6.3 = ashr i32 %conv4.i.i362.6.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i363_6_3 tmp_to_be_used v_conv4_i_i362_6_3 1;
(*   %conv5.i.i364.6.3 = trunc i32 %shr.i.i363.6.3 to i8 *)
split tmp_v_shr_i_i363_6_3 v_conv5_i_i364_6_3 v_shr_i_i363_6_3 8;
vpc v_conv5_i_i364_6_3@uint8 v_conv5_i_i364_6_3@uint32;
(*   %conv6.i.i365.6.3 = zext i8 %conv7.i.i367.5.3 to i32 *)
cast v_conv6_i_i365_6_3@uint32 v_conv7_i_i367_5_3@uint8;
(*   %shl.i.i366.6.3 = shl i32 %conv6.i.i365.6.3, 1 *)
shls discard_111 v_shl_i_i366_6_3 v_conv6_i_i365_6_3 1;
(*   %conv7.i.i367.6.3 = trunc i32 %shl.i.i366.6.3 to i8 *)
split tmp_v_shl_i_i366_6_3 v_conv7_i_i367_6_3 v_shl_i_i366_6_3 8;
vpc v_conv7_i_i367_6_3@uint8 v_conv7_i_i367_6_3@uint32;
(*   %conv.i.i355.7.3 = zext i8 %conv5.i.i364.6.3 to i32 *)
cast v_conv_i_i355_7_3@uint32 v_conv5_i_i364_6_3@uint8;
(*   %and.i.i356.7.3 = and i32 %conv.i.i355.7.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i356_7_3 v_conv_i_i355_7_3 (0x1)@uint32;
(*   %conv1.i.i357.7.3 = zext i8 %conv7.i.i367.6.3 to i32 *)
cast v_conv1_i_i357_7_3@uint32 v_conv7_i_i367_6_3@uint8;
(*   %mul.i.i358.7.3 = mul nsw i32 %and.i.i356.7.3, %conv1.i.i357.7.3 *)
mul v_mul_i_i358_7_3 v_and_i_i356_7_3 v_conv1_i_i357_7_3;
(*   %conv2.i.i359.7.3 = zext i8 %conv3.i.i361.6.3 to i32 *)
cast v_conv2_i_i359_7_3@uint32 v_conv3_i_i361_6_3@uint8;
(*   %xor.i.i360.7.3 = xor i32 %conv2.i.i359.7.3, %mul.i.i358.7.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i360_7_3 v_conv2_i_i359_7_3 v_mul_i_i358_7_3;
(*   %conv3.i.i361.7.3 = trunc i32 %xor.i.i360.7.3 to i8 *)
split tmp_v_xor_i_i360_7_3 v_conv3_i_i361_7_3 v_xor_i_i360_7_3 8;
vpc v_conv3_i_i361_7_3@uint8 v_conv3_i_i361_7_3@uint32;
(*   %arrayidx6.i371.3 = getelementptr inbounds i8, i8* %arraydecay20, i64 3 *)
(*   store i8 %conv3.i.i361.7.3, i8* %arrayidx6.i371.3, align 1 *)
mov ab2_3 v_conv3_i_i361_7_3;
(*   %32 = load i8, i8* %c, align 1 *)
mov v32 c_0;
(*   %conv.i319 = zext i8 %32 to i32 *)
cast v_conv_i319@uint32 v32@uint8;
(*   %33 = load i8, i8* %r, align 1 *)
mov v33 r_0;
(*   %conv5.i324 = zext i8 %33 to i32 *)
cast v_conv5_i324@uint32 v33@uint8;
(*   %xor.i325 = xor i32 %conv.i319, %conv5.i324 *)
(* You may need to modify here *)
xor uint32 v_xor_i325 v_conv_i319 v_conv5_i324;
(*   %conv6.i326 = trunc i32 %xor.i325 to i8 *)
split tmp_v_xor_i325 v_conv6_i326 v_xor_i325 8;
vpc v_conv6_i326@uint8 v_conv6_i326@uint32;
(*   store i8 %conv6.i326, i8* %c, align 1 *)
mov c_0 v_conv6_i326;
(*   %scevgep97.1 = getelementptr i8, i8* %c, i64 1 *)
(*   %34 = load i8, i8* %scevgep97.1, align 1 *)
mov v34 c_1;
(*   %conv.i319.1 = zext i8 %34 to i32 *)
cast v_conv_i319_1@uint32 v34@uint8;
(*   %scevgep99.1 = getelementptr i8, i8* %r, i64 1 *)
(*   %35 = load i8, i8* %scevgep99.1, align 1 *)
mov v35 r_1;
(*   %conv5.i324.1 = zext i8 %35 to i32 *)
cast v_conv5_i324_1@uint32 v35@uint8;
(*   %xor.i325.1 = xor i32 %conv.i319.1, %conv5.i324.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i325_1 v_conv_i319_1 v_conv5_i324_1;
(*   %conv6.i326.1 = trunc i32 %xor.i325.1 to i8 *)
split tmp_v_xor_i325_1 v_conv6_i326_1 v_xor_i325_1 8;
vpc v_conv6_i326_1@uint8 v_conv6_i326_1@uint32;
(*   %scevgep98.1 = getelementptr i8, i8* %c, i64 1 *)
(*   store i8 %conv6.i326.1, i8* %scevgep98.1, align 1 *)
mov c_1 v_conv6_i326_1;
(*   %scevgep97.2 = getelementptr i8, i8* %c, i64 2 *)
(*   %36 = load i8, i8* %scevgep97.2, align 1 *)
mov v36 c_2;
(*   %conv.i319.2 = zext i8 %36 to i32 *)
cast v_conv_i319_2@uint32 v36@uint8;
(*   %scevgep99.2 = getelementptr i8, i8* %r, i64 2 *)
(*   %37 = load i8, i8* %scevgep99.2, align 1 *)
mov v37 r_2;
(*   %conv5.i324.2 = zext i8 %37 to i32 *)
cast v_conv5_i324_2@uint32 v37@uint8;
(*   %xor.i325.2 = xor i32 %conv.i319.2, %conv5.i324.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i325_2 v_conv_i319_2 v_conv5_i324_2;
(*   %conv6.i326.2 = trunc i32 %xor.i325.2 to i8 *)
split tmp_v_xor_i325_2 v_conv6_i326_2 v_xor_i325_2 8;
vpc v_conv6_i326_2@uint8 v_conv6_i326_2@uint32;
(*   %scevgep98.2 = getelementptr i8, i8* %c, i64 2 *)
(*   store i8 %conv6.i326.2, i8* %scevgep98.2, align 1 *)
mov c_2 v_conv6_i326_2;
(*   %scevgep97.3 = getelementptr i8, i8* %c, i64 3 *)
(*   %38 = load i8, i8* %scevgep97.3, align 1 *)
mov v38 c_3;
(*   %conv.i319.3 = zext i8 %38 to i32 *)
cast v_conv_i319_3@uint32 v38@uint8;
(*   %scevgep99.3 = getelementptr i8, i8* %r, i64 3 *)
(*   %39 = load i8, i8* %scevgep99.3, align 1 *)
mov v39 r_3;
(*   %conv5.i324.3 = zext i8 %39 to i32 *)
cast v_conv5_i324_3@uint32 v39@uint8;
(*   %xor.i325.3 = xor i32 %conv.i319.3, %conv5.i324.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i325_3 v_conv_i319_3 v_conv5_i324_3;
(*   %conv6.i326.3 = trunc i32 %xor.i325.3 to i8 *)
split tmp_v_xor_i325_3 v_conv6_i326_3 v_xor_i325_3 8;
vpc v_conv6_i326_3@uint8 v_conv6_i326_3@uint32;
(*   %scevgep98.3 = getelementptr i8, i8* %c, i64 3 *)
(*   store i8 %conv6.i326.3, i8* %scevgep98.3, align 1 *)
mov c_3 v_conv6_i326_3;
(*   %40 = load i8, i8* %c, align 1 *)
mov v40 c_0;
(*   %conv.i294 = zext i8 %40 to i32 *)
cast v_conv_i294@uint32 v40@uint8;
(*   %scevgep93 = getelementptr [4 x i8], [4 x i8]* %ab1, i64 0, i64 0 *)
(*   %41 = load i8, i8* %scevgep93, align 1 *)
mov v41 ab1_0;
(*   %conv5.i299 = zext i8 %41 to i32 *)
cast v_conv5_i299@uint32 v41@uint8;
(*   %xor.i300 = xor i32 %conv.i294, %conv5.i299 *)
(* You may need to modify here *)
xor uint32 v_xor_i300 v_conv_i294 v_conv5_i299;
(*   %conv6.i301 = trunc i32 %xor.i300 to i8 *)
split tmp_v_xor_i300 v_conv6_i301 v_xor_i300 8;
vpc v_conv6_i301@uint8 v_conv6_i301@uint32;
(*   store i8 %conv6.i301, i8* %c, align 1 *)
mov c_0 v_conv6_i301;
(*   %scevgep91.1 = getelementptr i8, i8* %c, i64 1 *)
(*   %42 = load i8, i8* %scevgep91.1, align 1 *)
mov v42 c_1;
(*   %conv.i294.1 = zext i8 %42 to i32 *)
cast v_conv_i294_1@uint32 v42@uint8;
(*   %scevgep93.1 = getelementptr [4 x i8], [4 x i8]* %ab1, i64 0, i64 1 *)
(*   %43 = load i8, i8* %scevgep93.1, align 1 *)
mov v43 ab1_1;
(*   %conv5.i299.1 = zext i8 %43 to i32 *)
cast v_conv5_i299_1@uint32 v43@uint8;
(*   %xor.i300.1 = xor i32 %conv.i294.1, %conv5.i299.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i300_1 v_conv_i294_1 v_conv5_i299_1;
(*   %conv6.i301.1 = trunc i32 %xor.i300.1 to i8 *)
split tmp_v_xor_i300_1 v_conv6_i301_1 v_xor_i300_1 8;
vpc v_conv6_i301_1@uint8 v_conv6_i301_1@uint32;
(*   %scevgep92.1 = getelementptr i8, i8* %c, i64 1 *)
(*   store i8 %conv6.i301.1, i8* %scevgep92.1, align 1 *)
mov c_1 v_conv6_i301_1;
(*   %scevgep91.2 = getelementptr i8, i8* %c, i64 2 *)
(*   %44 = load i8, i8* %scevgep91.2, align 1 *)
mov v44 c_2;
(*   %conv.i294.2 = zext i8 %44 to i32 *)
cast v_conv_i294_2@uint32 v44@uint8;
(*   %scevgep93.2 = getelementptr [4 x i8], [4 x i8]* %ab1, i64 0, i64 2 *)
(*   %45 = load i8, i8* %scevgep93.2, align 1 *)
mov v45 ab1_2;
(*   %conv5.i299.2 = zext i8 %45 to i32 *)
cast v_conv5_i299_2@uint32 v45@uint8;
(*   %xor.i300.2 = xor i32 %conv.i294.2, %conv5.i299.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i300_2 v_conv_i294_2 v_conv5_i299_2;
(*   %conv6.i301.2 = trunc i32 %xor.i300.2 to i8 *)
split tmp_v_xor_i300_2 v_conv6_i301_2 v_xor_i300_2 8;
vpc v_conv6_i301_2@uint8 v_conv6_i301_2@uint32;
(*   %scevgep92.2 = getelementptr i8, i8* %c, i64 2 *)
(*   store i8 %conv6.i301.2, i8* %scevgep92.2, align 1 *)
mov c_2 v_conv6_i301_2;
(*   %scevgep91.3 = getelementptr i8, i8* %c, i64 3 *)
(*   %46 = load i8, i8* %scevgep91.3, align 1 *)
mov v46 c_3;
(*   %conv.i294.3 = zext i8 %46 to i32 *)
cast v_conv_i294_3@uint32 v46@uint8;
(*   %scevgep93.3 = getelementptr [4 x i8], [4 x i8]* %ab1, i64 0, i64 3 *)
(*   %47 = load i8, i8* %scevgep93.3, align 1 *)
mov v47 ab1_3;
(*   %conv5.i299.3 = zext i8 %47 to i32 *)
cast v_conv5_i299_3@uint32 v47@uint8;
(*   %xor.i300.3 = xor i32 %conv.i294.3, %conv5.i299.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i300_3 v_conv_i294_3 v_conv5_i299_3;
(*   %conv6.i301.3 = trunc i32 %xor.i300.3 to i8 *)
split tmp_v_xor_i300_3 v_conv6_i301_3 v_xor_i300_3 8;
vpc v_conv6_i301_3@uint8 v_conv6_i301_3@uint32;
(*   %scevgep92.3 = getelementptr i8, i8* %c, i64 3 *)
(*   store i8 %conv6.i301.3, i8* %scevgep92.3, align 1 *)
mov c_3 v_conv6_i301_3;
(*   %48 = load i8, i8* %c, align 1 *)
mov v48 c_0;
(*   %conv.i269 = zext i8 %48 to i32 *)
cast v_conv_i269@uint32 v48@uint8;
(*   %scevgep87 = getelementptr [4 x i8], [4 x i8]* %a1b, i64 0, i64 0 *)
(*   %49 = load i8, i8* %scevgep87, align 1 *)
mov v49 a1b_0;
(*   %conv5.i274 = zext i8 %49 to i32 *)
cast v_conv5_i274@uint32 v49@uint8;
(*   %xor.i275 = xor i32 %conv.i269, %conv5.i274 *)
(* You may need to modify here *)
xor uint32 v_xor_i275 v_conv_i269 v_conv5_i274;
(*   %conv6.i276 = trunc i32 %xor.i275 to i8 *)
split tmp_v_xor_i275 v_conv6_i276 v_xor_i275 8;
vpc v_conv6_i276@uint8 v_conv6_i276@uint32;
(*   store i8 %conv6.i276, i8* %c, align 1 *)
mov c_0 v_conv6_i276;
(*   %scevgep85.1 = getelementptr i8, i8* %c, i64 1 *)
(*   %50 = load i8, i8* %scevgep85.1, align 1 *)
mov v50 c_1;
(*   %conv.i269.1 = zext i8 %50 to i32 *)
cast v_conv_i269_1@uint32 v50@uint8;
(*   %scevgep87.1 = getelementptr [4 x i8], [4 x i8]* %a1b, i64 0, i64 1 *)
(*   %51 = load i8, i8* %scevgep87.1, align 1 *)
mov v51 a1b_1;
(*   %conv5.i274.1 = zext i8 %51 to i32 *)
cast v_conv5_i274_1@uint32 v51@uint8;
(*   %xor.i275.1 = xor i32 %conv.i269.1, %conv5.i274.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i275_1 v_conv_i269_1 v_conv5_i274_1;
(*   %conv6.i276.1 = trunc i32 %xor.i275.1 to i8 *)
split tmp_v_xor_i275_1 v_conv6_i276_1 v_xor_i275_1 8;
vpc v_conv6_i276_1@uint8 v_conv6_i276_1@uint32;
(*   %scevgep86.1 = getelementptr i8, i8* %c, i64 1 *)
(*   store i8 %conv6.i276.1, i8* %scevgep86.1, align 1 *)
mov c_1 v_conv6_i276_1;
(*   %scevgep85.2 = getelementptr i8, i8* %c, i64 2 *)
(*   %52 = load i8, i8* %scevgep85.2, align 1 *)
mov v52 c_2;
(*   %conv.i269.2 = zext i8 %52 to i32 *)
cast v_conv_i269_2@uint32 v52@uint8;
(*   %scevgep87.2 = getelementptr [4 x i8], [4 x i8]* %a1b, i64 0, i64 2 *)
(*   %53 = load i8, i8* %scevgep87.2, align 1 *)
mov v53 a1b_2;
(*   %conv5.i274.2 = zext i8 %53 to i32 *)
cast v_conv5_i274_2@uint32 v53@uint8;
(*   %xor.i275.2 = xor i32 %conv.i269.2, %conv5.i274.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i275_2 v_conv_i269_2 v_conv5_i274_2;
(*   %conv6.i276.2 = trunc i32 %xor.i275.2 to i8 *)
split tmp_v_xor_i275_2 v_conv6_i276_2 v_xor_i275_2 8;
vpc v_conv6_i276_2@uint8 v_conv6_i276_2@uint32;
(*   %scevgep86.2 = getelementptr i8, i8* %c, i64 2 *)
(*   store i8 %conv6.i276.2, i8* %scevgep86.2, align 1 *)
mov c_2 v_conv6_i276_2;
(*   %scevgep85.3 = getelementptr i8, i8* %c, i64 3 *)
(*   %54 = load i8, i8* %scevgep85.3, align 1 *)
mov v54 c_3;
(*   %conv.i269.3 = zext i8 %54 to i32 *)
cast v_conv_i269_3@uint32 v54@uint8;
(*   %scevgep87.3 = getelementptr [4 x i8], [4 x i8]* %a1b, i64 0, i64 3 *)
(*   %55 = load i8, i8* %scevgep87.3, align 1 *)
mov v55 a1b_3;
(*   %conv5.i274.3 = zext i8 %55 to i32 *)
cast v_conv5_i274_3@uint32 v55@uint8;
(*   %xor.i275.3 = xor i32 %conv.i269.3, %conv5.i274.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i275_3 v_conv_i269_3 v_conv5_i274_3;
(*   %conv6.i276.3 = trunc i32 %xor.i275.3 to i8 *)
split tmp_v_xor_i275_3 v_conv6_i276_3 v_xor_i275_3 8;
vpc v_conv6_i276_3@uint8 v_conv6_i276_3@uint32;
(*   %scevgep86.3 = getelementptr i8, i8* %c, i64 3 *)
(*   store i8 %conv6.i276.3, i8* %scevgep86.3, align 1 *)
mov c_3 v_conv6_i276_3;
(*   %56 = load i8, i8* %c, align 1 *)
mov v56 c_0;
(*   %conv.i244 = zext i8 %56 to i32 *)
cast v_conv_i244@uint32 v56@uint8;
(*   %arrayidx4.i248 = getelementptr inbounds i8, i8* %r, i64 1 *)
(*   %57 = load i8, i8* %arrayidx4.i248, align 1 *)
mov v57 r_1;
(*   %conv5.i249 = zext i8 %57 to i32 *)
cast v_conv5_i249@uint32 v57@uint8;
(*   %xor.i250 = xor i32 %conv.i244, %conv5.i249 *)
(* You may need to modify here *)
xor uint32 v_xor_i250 v_conv_i244 v_conv5_i249;
(*   %conv6.i251 = trunc i32 %xor.i250 to i8 *)
split tmp_v_xor_i250 v_conv6_i251 v_xor_i250 8;
vpc v_conv6_i251@uint8 v_conv6_i251@uint32;
(*   store i8 %conv6.i251, i8* %c, align 1 *)
mov c_0 v_conv6_i251;
(*   %scevgep79.1 = getelementptr i8, i8* %c, i64 1 *)
(*   %58 = load i8, i8* %scevgep79.1, align 1 *)
mov v58 c_1;
(*   %conv.i244.1 = zext i8 %58 to i32 *)
cast v_conv_i244_1@uint32 v58@uint8;
(*   %arrayidx4.i248.1 = getelementptr inbounds i8, i8* %r, i64 2 *)
(*   %59 = load i8, i8* %arrayidx4.i248.1, align 1 *)
mov v59 r_2;
(*   %conv5.i249.1 = zext i8 %59 to i32 *)
cast v_conv5_i249_1@uint32 v59@uint8;
(*   %xor.i250.1 = xor i32 %conv.i244.1, %conv5.i249.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i250_1 v_conv_i244_1 v_conv5_i249_1;
(*   %conv6.i251.1 = trunc i32 %xor.i250.1 to i8 *)
split tmp_v_xor_i250_1 v_conv6_i251_1 v_xor_i250_1 8;
vpc v_conv6_i251_1@uint8 v_conv6_i251_1@uint32;
(*   %scevgep80.1 = getelementptr i8, i8* %c, i64 1 *)
(*   store i8 %conv6.i251.1, i8* %scevgep80.1, align 1 *)
mov c_1 v_conv6_i251_1;
(*   %scevgep79.2 = getelementptr i8, i8* %c, i64 2 *)
(*   %60 = load i8, i8* %scevgep79.2, align 1 *)
mov v60 c_2;
(*   %conv.i244.2 = zext i8 %60 to i32 *)
cast v_conv_i244_2@uint32 v60@uint8;
(*   %arrayidx4.i248.2 = getelementptr inbounds i8, i8* %r, i64 3 *)
(*   %61 = load i8, i8* %arrayidx4.i248.2, align 1 *)
mov v61 r_3;
(*   %conv5.i249.2 = zext i8 %61 to i32 *)
cast v_conv5_i249_2@uint32 v61@uint8;
(*   %xor.i250.2 = xor i32 %conv.i244.2, %conv5.i249.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i250_2 v_conv_i244_2 v_conv5_i249_2;
(*   %conv6.i251.2 = trunc i32 %xor.i250.2 to i8 *)
split tmp_v_xor_i250_2 v_conv6_i251_2 v_xor_i250_2 8;
vpc v_conv6_i251_2@uint8 v_conv6_i251_2@uint32;
(*   %scevgep80.2 = getelementptr i8, i8* %c, i64 2 *)
(*   store i8 %conv6.i251.2, i8* %scevgep80.2, align 1 *)
mov c_2 v_conv6_i251_2;
(*   %scevgep79.3 = getelementptr i8, i8* %c, i64 3 *)
(*   %62 = load i8, i8* %scevgep79.3, align 1 *)
mov v62 c_3;
(*   %conv.i244.3 = zext i8 %62 to i32 *)
cast v_conv_i244_3@uint32 v62@uint8;
(*   %63 = load i8, i8* %r, align 1 *)
mov v63 r_0;
(*   %conv5.i249.3 = zext i8 %63 to i32 *)
cast v_conv5_i249_3@uint32 v63@uint8;
(*   %xor.i250.3 = xor i32 %conv.i244.3, %conv5.i249.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i250_3 v_conv_i244_3 v_conv5_i249_3;
(*   %conv6.i251.3 = trunc i32 %xor.i250.3 to i8 *)
split tmp_v_xor_i250_3 v_conv6_i251_3 v_xor_i250_3 8;
vpc v_conv6_i251_3@uint8 v_conv6_i251_3@uint32;
(*   %scevgep80.3 = getelementptr i8, i8* %c, i64 3 *)
(*   store i8 %conv6.i251.3, i8* %scevgep80.3, align 1 *)
mov c_3 v_conv6_i251_3;
(*   %64 = load i8, i8* %c, align 1 *)
mov v64 c_0;
(*   %conv.i222 = zext i8 %64 to i32 *)
cast v_conv_i222@uint32 v64@uint8;
(*   %scevgep75 = getelementptr [4 x i8], [4 x i8]* %ab2, i64 0, i64 0 *)
(*   %65 = load i8, i8* %scevgep75, align 1 *)
mov v65 ab2_0;
(*   %conv5.i227 = zext i8 %65 to i32 *)
cast v_conv5_i227@uint32 v65@uint8;
(*   %xor.i228 = xor i32 %conv.i222, %conv5.i227 *)
(* You may need to modify here *)
xor uint32 v_xor_i228 v_conv_i222 v_conv5_i227;
(*   %conv6.i229 = trunc i32 %xor.i228 to i8 *)
split tmp_v_xor_i228 v_conv6_i229 v_xor_i228 8;
vpc v_conv6_i229@uint8 v_conv6_i229@uint32;
(*   store i8 %conv6.i229, i8* %c, align 1 *)
mov c_0 v_conv6_i229;
(*   %scevgep73.1 = getelementptr i8, i8* %c, i64 1 *)
(*   %66 = load i8, i8* %scevgep73.1, align 1 *)
mov v66 c_1;
(*   %conv.i222.1 = zext i8 %66 to i32 *)
cast v_conv_i222_1@uint32 v66@uint8;
(*   %scevgep75.1 = getelementptr [4 x i8], [4 x i8]* %ab2, i64 0, i64 1 *)
(*   %67 = load i8, i8* %scevgep75.1, align 1 *)
mov v67 ab2_1;
(*   %conv5.i227.1 = zext i8 %67 to i32 *)
cast v_conv5_i227_1@uint32 v67@uint8;
(*   %xor.i228.1 = xor i32 %conv.i222.1, %conv5.i227.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i228_1 v_conv_i222_1 v_conv5_i227_1;
(*   %conv6.i229.1 = trunc i32 %xor.i228.1 to i8 *)
split tmp_v_xor_i228_1 v_conv6_i229_1 v_xor_i228_1 8;
vpc v_conv6_i229_1@uint8 v_conv6_i229_1@uint32;
(*   %scevgep74.1 = getelementptr i8, i8* %c, i64 1 *)
(*   store i8 %conv6.i229.1, i8* %scevgep74.1, align 1 *)
mov c_1 v_conv6_i229_1;
(*   %scevgep73.2 = getelementptr i8, i8* %c, i64 2 *)
(*   %68 = load i8, i8* %scevgep73.2, align 1 *)
mov v68 c_2;
(*   %conv.i222.2 = zext i8 %68 to i32 *)
cast v_conv_i222_2@uint32 v68@uint8;
(*   %scevgep75.2 = getelementptr [4 x i8], [4 x i8]* %ab2, i64 0, i64 2 *)
(*   %69 = load i8, i8* %scevgep75.2, align 1 *)
mov v69 ab2_2;
(*   %conv5.i227.2 = zext i8 %69 to i32 *)
cast v_conv5_i227_2@uint32 v69@uint8;
(*   %xor.i228.2 = xor i32 %conv.i222.2, %conv5.i227.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i228_2 v_conv_i222_2 v_conv5_i227_2;
(*   %conv6.i229.2 = trunc i32 %xor.i228.2 to i8 *)
split tmp_v_xor_i228_2 v_conv6_i229_2 v_xor_i228_2 8;
vpc v_conv6_i229_2@uint8 v_conv6_i229_2@uint32;
(*   %scevgep74.2 = getelementptr i8, i8* %c, i64 2 *)
(*   store i8 %conv6.i229.2, i8* %scevgep74.2, align 1 *)
mov c_2 v_conv6_i229_2;
(*   %scevgep73.3 = getelementptr i8, i8* %c, i64 3 *)
(*   %70 = load i8, i8* %scevgep73.3, align 1 *)
mov v70 c_3;
(*   %conv.i222.3 = zext i8 %70 to i32 *)
cast v_conv_i222_3@uint32 v70@uint8;
(*   %scevgep75.3 = getelementptr [4 x i8], [4 x i8]* %ab2, i64 0, i64 3 *)
(*   %71 = load i8, i8* %scevgep75.3, align 1 *)
mov v71 ab2_3;
(*   %conv5.i227.3 = zext i8 %71 to i32 *)
cast v_conv5_i227_3@uint32 v71@uint8;
(*   %xor.i228.3 = xor i32 %conv.i222.3, %conv5.i227.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i228_3 v_conv_i222_3 v_conv5_i227_3;
(*   %conv6.i229.3 = trunc i32 %xor.i228.3 to i8 *)
split tmp_v_xor_i228_3 v_conv6_i229_3 v_xor_i228_3 8;
vpc v_conv6_i229_3@uint8 v_conv6_i229_3@uint32;
(*   %scevgep74.3 = getelementptr i8, i8* %c, i64 3 *)
(*   store i8 %conv6.i229.3, i8* %scevgep74.3, align 1 *)
mov c_3 v_conv6_i229_3;
(*   %72 = load i8, i8* %a, align 1 *)
mov v72 a_0;
(*   %scevgep69.1 = getelementptr i8, i8* %a, i64 1 *)
(*   %73 = load i8, i8* %scevgep69.1, align 1 *)
mov v73 a_1;
(*   %conv.i.i160.1 = zext i8 %73 to i32 *)
cast v_conv_i_i160_1@uint32 v73@uint8;
(*   %conv1.i.i161.1 = zext i8 %72 to i32 *)
cast v_conv1_i_i161_1@uint32 v72@uint8;
(*   %xor.i.i162.1 = xor i32 %conv1.i.i161.1, %conv.i.i160.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i162_1 v_conv1_i_i161_1 v_conv_i_i160_1;
(*   %conv2.i.i163.1 = trunc i32 %xor.i.i162.1 to i8 *)
split tmp_v_xor_i_i162_1 v_conv2_i_i163_1 v_xor_i_i162_1 8;
vpc v_conv2_i_i163_1@uint8 v_conv2_i_i163_1@uint32;
(*   %scevgep69.2 = getelementptr i8, i8* %a, i64 2 *)
(*   %74 = load i8, i8* %scevgep69.2, align 1 *)
mov v74 a_2;
(*   %conv.i.i160.2 = zext i8 %74 to i32 *)
cast v_conv_i_i160_2@uint32 v74@uint8;
(*   %conv1.i.i161.2 = zext i8 %conv2.i.i163.1 to i32 *)
cast v_conv1_i_i161_2@uint32 v_conv2_i_i163_1@uint8;
(*   %xor.i.i162.2 = xor i32 %conv1.i.i161.2, %conv.i.i160.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i162_2 v_conv1_i_i161_2 v_conv_i_i160_2;
(*   %conv2.i.i163.2 = trunc i32 %xor.i.i162.2 to i8 *)
split tmp_v_xor_i_i162_2 v_conv2_i_i163_2 v_xor_i_i162_2 8;
vpc v_conv2_i_i163_2@uint8 v_conv2_i_i163_2@uint32;
(*   %scevgep69.3 = getelementptr i8, i8* %a, i64 3 *)
(*   %75 = load i8, i8* %scevgep69.3, align 1 *)
mov v75 a_3;
(*   %conv.i.i160.3 = zext i8 %75 to i32 *)
cast v_conv_i_i160_3@uint32 v75@uint8;
(*   %conv1.i.i161.3 = zext i8 %conv2.i.i163.2 to i32 *)
cast v_conv1_i_i161_3@uint32 v_conv2_i_i163_2@uint8;
(*   %xor.i.i162.3 = xor i32 %conv1.i.i161.3, %conv.i.i160.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i162_3 v_conv1_i_i161_3 v_conv_i_i160_3;
(*   %conv2.i.i163.3 = trunc i32 %xor.i.i162.3 to i8 *)
split tmp_v_xor_i_i162_3 v_conv2_i_i163_3 v_xor_i_i162_3 8;
vpc v_conv2_i_i163_3@uint8 v_conv2_i_i163_3@uint32;
(*   %76 = load i8, i8* %b, align 1 *)
mov v76 b_0;
(*   %scevgep65.1 = getelementptr i8, i8* %b, i64 1 *)
(*   %77 = load i8, i8* %scevgep65.1, align 1 *)
mov v77 b_1;
(*   %conv.i.i100.1 = zext i8 %77 to i32 *)
cast v_conv_i_i100_1@uint32 v77@uint8;
(*   %conv1.i.i101.1 = zext i8 %76 to i32 *)
cast v_conv1_i_i101_1@uint32 v76@uint8;
(*   %xor.i.i102.1 = xor i32 %conv1.i.i101.1, %conv.i.i100.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i102_1 v_conv1_i_i101_1 v_conv_i_i100_1;
(*   %conv2.i.i103.1 = trunc i32 %xor.i.i102.1 to i8 *)
split tmp_v_xor_i_i102_1 v_conv2_i_i103_1 v_xor_i_i102_1 8;
vpc v_conv2_i_i103_1@uint8 v_conv2_i_i103_1@uint32;
(*   %scevgep65.2 = getelementptr i8, i8* %b, i64 2 *)
(*   %78 = load i8, i8* %scevgep65.2, align 1 *)
mov v78 b_2;
(*   %conv.i.i100.2 = zext i8 %78 to i32 *)
cast v_conv_i_i100_2@uint32 v78@uint8;
(*   %conv1.i.i101.2 = zext i8 %conv2.i.i103.1 to i32 *)
cast v_conv1_i_i101_2@uint32 v_conv2_i_i103_1@uint8;
(*   %xor.i.i102.2 = xor i32 %conv1.i.i101.2, %conv.i.i100.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i102_2 v_conv1_i_i101_2 v_conv_i_i100_2;
(*   %conv2.i.i103.2 = trunc i32 %xor.i.i102.2 to i8 *)
split tmp_v_xor_i_i102_2 v_conv2_i_i103_2 v_xor_i_i102_2 8;
vpc v_conv2_i_i103_2@uint8 v_conv2_i_i103_2@uint32;
(*   %scevgep65.3 = getelementptr i8, i8* %b, i64 3 *)
(*   %79 = load i8, i8* %scevgep65.3, align 1 *)
mov v79 b_3;
(*   %conv.i.i100.3 = zext i8 %79 to i32 *)
cast v_conv_i_i100_3@uint32 v79@uint8;
(*   %conv1.i.i101.3 = zext i8 %conv2.i.i103.2 to i32 *)
cast v_conv1_i_i101_3@uint32 v_conv2_i_i103_2@uint8;
(*   %xor.i.i102.3 = xor i32 %conv1.i.i101.3, %conv.i.i100.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i102_3 v_conv1_i_i101_3 v_conv_i_i100_3;
(*   %conv2.i.i103.3 = trunc i32 %xor.i.i102.3 to i8 *)
split tmp_v_xor_i_i102_3 v_conv2_i_i103_3 v_xor_i_i102_3 8;
vpc v_conv2_i_i103_3@uint8 v_conv2_i_i103_3@uint32;
(*   %conv.i = zext i8 %conv2.i.i103.3 to i32 *)
cast v_conv_i@uint32 v_conv2_i_i103_3@uint8;
(*   %and.i = and i32 %conv.i, 1 *)
(* You may need to modify here *)
and uint32 v_and_i v_conv_i (0x1)@uint32;
(*   %conv1.i = zext i8 %conv2.i.i163.3 to i32 *)
cast v_conv1_i@uint32 v_conv2_i_i163_3@uint8;
(*   %mul.i = mul nsw i32 %and.i, %conv1.i *)
mul v_mul_i v_and_i v_conv1_i;
(*   %conv3.i = trunc i32 %mul.i to i8 *)
split tmp_v_mul_i v_conv3_i v_mul_i 8;
vpc v_conv3_i@uint8 v_conv3_i@uint32;
(*   %conv4.i = zext i8 %conv2.i.i103.3 to i32 *)
cast v_conv4_i@uint32 v_conv2_i_i103_3@uint8;
(*   %shr.i = ashr i32 %conv4.i, 1 *)
(* You may need to modify here *)
split v_shr_i tmp_to_be_used v_conv4_i 1;
(*   %conv5.i = trunc i32 %shr.i to i8 *)
split tmp_v_shr_i v_conv5_i v_shr_i 8;
vpc v_conv5_i@uint8 v_conv5_i@uint32;
(*   %conv6.i = zext i8 %conv2.i.i163.3 to i32 *)
cast v_conv6_i@uint32 v_conv2_i_i163_3@uint8;
(*   %shl.i = shl i32 %conv6.i, 1 *)
shls discard_112 v_shl_i v_conv6_i 1;
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
shls discard_113 v_shl_i_1 v_conv6_i_1 1;
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
shls discard_114 v_shl_i_2 v_conv6_i_2 1;
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
shls discard_115 v_shl_i_3 v_conv6_i_3 1;
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
shls discard_116 v_shl_i_4 v_conv6_i_4 1;
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
shls discard_117 v_shl_i_5 v_conv6_i_5 1;
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
shls discard_118 v_shl_i_6 v_conv6_i_6 1;
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
(*   %80 = load i8, i8* %c, align 1 *)
mov v80 c_0;
(*   %scevgep.1 = getelementptr i8, i8* %c, i64 1 *)
(*   %81 = load i8, i8* %scevgep.1, align 1 *)
mov v81 c_1;
(*   %conv.i.i34.1 = zext i8 %81 to i32 *)
cast v_conv_i_i34_1@uint32 v81@uint8;
(*   %conv1.i.i35.1 = zext i8 %80 to i32 *)
cast v_conv1_i_i35_1@uint32 v80@uint8;
(*   %xor.i.i36.1 = xor i32 %conv1.i.i35.1, %conv.i.i34.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i36_1 v_conv1_i_i35_1 v_conv_i_i34_1;
(*   %conv2.i.i37.1 = trunc i32 %xor.i.i36.1 to i8 *)
split tmp_v_xor_i_i36_1 v_conv2_i_i37_1 v_xor_i_i36_1 8;
vpc v_conv2_i_i37_1@uint8 v_conv2_i_i37_1@uint32;
(*   %scevgep.2 = getelementptr i8, i8* %c, i64 2 *)
(*   %82 = load i8, i8* %scevgep.2, align 1 *)
mov v82 c_2;
(*   %conv.i.i34.2 = zext i8 %82 to i32 *)
cast v_conv_i_i34_2@uint32 v82@uint8;
(*   %conv1.i.i35.2 = zext i8 %conv2.i.i37.1 to i32 *)
cast v_conv1_i_i35_2@uint32 v_conv2_i_i37_1@uint8;
(*   %xor.i.i36.2 = xor i32 %conv1.i.i35.2, %conv.i.i34.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i36_2 v_conv1_i_i35_2 v_conv_i_i34_2;
(*   %conv2.i.i37.2 = trunc i32 %xor.i.i36.2 to i8 *)
split tmp_v_xor_i_i36_2 v_conv2_i_i37_2 v_xor_i_i36_2 8;
vpc v_conv2_i_i37_2@uint8 v_conv2_i_i37_2@uint32;
(*   %scevgep.3 = getelementptr i8, i8* %c, i64 3 *)
(*   %83 = load i8, i8* %scevgep.3, align 1 *)
mov v83 c_3;
(*   %conv.i.i34.3 = zext i8 %83 to i32 *)
cast v_conv_i_i34_3@uint32 v83@uint8;
(*   %conv1.i.i35.3 = zext i8 %conv2.i.i37.2 to i32 *)
cast v_conv1_i_i35_3@uint32 v_conv2_i_i37_2@uint8;
(*   %xor.i.i36.3 = xor i32 %conv1.i.i35.3, %conv.i.i34.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i36_3 v_conv1_i_i35_3 v_conv_i_i34_3;
(*   %conv2.i.i37.3 = trunc i32 %xor.i.i36.3 to i8 *)
split tmp_v_xor_i_i36_3 v_conv2_i_i37_3 v_xor_i_i36_3 8;
vpc v_conv2_i_i37_3@uint8 v_conv2_i_i37_3@uint32;
(*   store i8 %conv2.i.i37.3, i8* %C, align 1 *)
mov C_0 v_conv2_i_i37_3;
(*   ret void *)


assert AB_0=C_0 && true;

mov _ AB_0@uint8;
mov _ C_0@uint8;


{
  true
  &&
  true
}

