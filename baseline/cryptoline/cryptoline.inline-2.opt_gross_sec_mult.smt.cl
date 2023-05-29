proc main (uint8 a_0, uint8 a_1, uint8 a_2, uint8 b_0, uint8 b_1, uint8 b_2, uint8 r_0, uint8 r_1) =
{
  true
  &&
  true
}



(*   %a1b = alloca [3 x i8], align 1 *)
(*   %ab1 = alloca [3 x i8], align 1 *)
(*   %z = alloca [3 x i8], align 1 *)
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
(*   %conv.i.i.1287 = zext i8 %3 to i32 *)
cast v_conv_i_i_1287@uint32 v3@uint8;
(*   %and.i.i.1288 = and i32 %conv.i.i.1287, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_1288 v_conv_i_i_1287 (0x1)@uint32;
(*   %conv1.i.i.1289 = zext i8 %2 to i32 *)
cast v_conv1_i_i_1289@uint32 v2@uint8;
(*   %mul.i.i.1290 = mul nsw i32 %and.i.i.1288, %conv1.i.i.1289 *)
mul v_mul_i_i_1290 v_and_i_i_1288 v_conv1_i_i_1289;
(*   %conv3.i.i.1291 = trunc i32 %mul.i.i.1290 to i8 *)
split tmp_v_mul_i_i_1290 v_conv3_i_i_1291 v_mul_i_i_1290 8;
vpc v_conv3_i_i_1291@uint8 v_conv3_i_i_1291@uint32;
(*   %conv4.i.i.1292 = zext i8 %3 to i32 *)
cast v_conv4_i_i_1292@uint32 v3@uint8;
(*   %shr.i.i.1293 = ashr i32 %conv4.i.i.1292, 1 *)
(* You may need to modify here *)
split v_shr_i_i_1293 tmp_to_be_used v_conv4_i_i_1292 1;
(*   %conv5.i.i.1294 = trunc i32 %shr.i.i.1293 to i8 *)
split tmp_v_shr_i_i_1293 v_conv5_i_i_1294 v_shr_i_i_1293 8;
vpc v_conv5_i_i_1294@uint8 v_conv5_i_i_1294@uint32;
(*   %conv6.i.i.1295 = zext i8 %2 to i32 *)
cast v_conv6_i_i_1295@uint32 v2@uint8;
(*   %shl.i.i.1296 = shl i32 %conv6.i.i.1295, 1 *)
shls discard_7 v_shl_i_i_1296 v_conv6_i_i_1295 1;
(*   %conv7.i.i.1297 = trunc i32 %shl.i.i.1296 to i8 *)
split tmp_v_shl_i_i_1296 v_conv7_i_i_1297 v_shl_i_i_1296 8;
vpc v_conv7_i_i_1297@uint8 v_conv7_i_i_1297@uint32;
(*   %conv.i.i.1.1 = zext i8 %conv5.i.i.1294 to i32 *)
cast v_conv_i_i_1_1@uint32 v_conv5_i_i_1294@uint8;
(*   %and.i.i.1.1 = and i32 %conv.i.i.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_1_1 v_conv_i_i_1_1 (0x1)@uint32;
(*   %conv1.i.i.1.1 = zext i8 %conv7.i.i.1297 to i32 *)
cast v_conv1_i_i_1_1@uint32 v_conv7_i_i_1297@uint8;
(*   %mul.i.i.1.1 = mul nsw i32 %and.i.i.1.1, %conv1.i.i.1.1 *)
mul v_mul_i_i_1_1 v_and_i_i_1_1 v_conv1_i_i_1_1;
(*   %conv2.i.i.1.1 = zext i8 %conv3.i.i.1291 to i32 *)
cast v_conv2_i_i_1_1@uint32 v_conv3_i_i_1291@uint8;
(*   %xor.i.i.1.1 = xor i32 %conv2.i.i.1.1, %mul.i.i.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_1_1 v_conv2_i_i_1_1 v_mul_i_i_1_1;
(*   %conv3.i.i.1.1 = trunc i32 %xor.i.i.1.1 to i8 *)
split tmp_v_xor_i_i_1_1 v_conv3_i_i_1_1 v_xor_i_i_1_1 8;
vpc v_conv3_i_i_1_1@uint8 v_conv3_i_i_1_1@uint32;
(*   %conv4.i.i.1.1 = zext i8 %conv5.i.i.1294 to i32 *)
cast v_conv4_i_i_1_1@uint32 v_conv5_i_i_1294@uint8;
(*   %shr.i.i.1.1 = ashr i32 %conv4.i.i.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i_1_1 tmp_to_be_used v_conv4_i_i_1_1 1;
(*   %conv5.i.i.1.1 = trunc i32 %shr.i.i.1.1 to i8 *)
split tmp_v_shr_i_i_1_1 v_conv5_i_i_1_1 v_shr_i_i_1_1 8;
vpc v_conv5_i_i_1_1@uint8 v_conv5_i_i_1_1@uint32;
(*   %conv6.i.i.1.1 = zext i8 %conv7.i.i.1297 to i32 *)
cast v_conv6_i_i_1_1@uint32 v_conv7_i_i_1297@uint8;
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
(*   %conv.i.i.2298 = zext i8 %5 to i32 *)
cast v_conv_i_i_2298@uint32 v5@uint8;
(*   %and.i.i.2299 = and i32 %conv.i.i.2298, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_2299 v_conv_i_i_2298 (0x1)@uint32;
(*   %conv1.i.i.2300 = zext i8 %4 to i32 *)
cast v_conv1_i_i_2300@uint32 v4@uint8;
(*   %mul.i.i.2301 = mul nsw i32 %and.i.i.2299, %conv1.i.i.2300 *)
mul v_mul_i_i_2301 v_and_i_i_2299 v_conv1_i_i_2300;
(*   %conv3.i.i.2302 = trunc i32 %mul.i.i.2301 to i8 *)
split tmp_v_mul_i_i_2301 v_conv3_i_i_2302 v_mul_i_i_2301 8;
vpc v_conv3_i_i_2302@uint8 v_conv3_i_i_2302@uint32;
(*   %conv4.i.i.2303 = zext i8 %5 to i32 *)
cast v_conv4_i_i_2303@uint32 v5@uint8;
(*   %shr.i.i.2304 = ashr i32 %conv4.i.i.2303, 1 *)
(* You may need to modify here *)
split v_shr_i_i_2304 tmp_to_be_used v_conv4_i_i_2303 1;
(*   %conv5.i.i.2305 = trunc i32 %shr.i.i.2304 to i8 *)
split tmp_v_shr_i_i_2304 v_conv5_i_i_2305 v_shr_i_i_2304 8;
vpc v_conv5_i_i_2305@uint8 v_conv5_i_i_2305@uint32;
(*   %conv6.i.i.2306 = zext i8 %4 to i32 *)
cast v_conv6_i_i_2306@uint32 v4@uint8;
(*   %shl.i.i.2307 = shl i32 %conv6.i.i.2306, 1 *)
shls discard_14 v_shl_i_i_2307 v_conv6_i_i_2306 1;
(*   %conv7.i.i.2308 = trunc i32 %shl.i.i.2307 to i8 *)
split tmp_v_shl_i_i_2307 v_conv7_i_i_2308 v_shl_i_i_2307 8;
vpc v_conv7_i_i_2308@uint8 v_conv7_i_i_2308@uint32;
(*   %conv.i.i.1.2 = zext i8 %conv5.i.i.2305 to i32 *)
cast v_conv_i_i_1_2@uint32 v_conv5_i_i_2305@uint8;
(*   %and.i.i.1.2 = and i32 %conv.i.i.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_1_2 v_conv_i_i_1_2 (0x1)@uint32;
(*   %conv1.i.i.1.2 = zext i8 %conv7.i.i.2308 to i32 *)
cast v_conv1_i_i_1_2@uint32 v_conv7_i_i_2308@uint8;
(*   %mul.i.i.1.2 = mul nsw i32 %and.i.i.1.2, %conv1.i.i.1.2 *)
mul v_mul_i_i_1_2 v_and_i_i_1_2 v_conv1_i_i_1_2;
(*   %conv2.i.i.1.2 = zext i8 %conv3.i.i.2302 to i32 *)
cast v_conv2_i_i_1_2@uint32 v_conv3_i_i_2302@uint8;
(*   %xor.i.i.1.2 = xor i32 %conv2.i.i.1.2, %mul.i.i.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_1_2 v_conv2_i_i_1_2 v_mul_i_i_1_2;
(*   %conv3.i.i.1.2 = trunc i32 %xor.i.i.1.2 to i8 *)
split tmp_v_xor_i_i_1_2 v_conv3_i_i_1_2 v_xor_i_i_1_2 8;
vpc v_conv3_i_i_1_2@uint8 v_conv3_i_i_1_2@uint32;
(*   %conv4.i.i.1.2 = zext i8 %conv5.i.i.2305 to i32 *)
cast v_conv4_i_i_1_2@uint32 v_conv5_i_i_2305@uint8;
(*   %shr.i.i.1.2 = ashr i32 %conv4.i.i.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i_1_2 tmp_to_be_used v_conv4_i_i_1_2 1;
(*   %conv5.i.i.1.2 = trunc i32 %shr.i.i.1.2 to i8 *)
split tmp_v_shr_i_i_1_2 v_conv5_i_i_1_2 v_shr_i_i_1_2 8;
vpc v_conv5_i_i_1_2@uint8 v_conv5_i_i_1_2@uint32;
(*   %conv6.i.i.1.2 = zext i8 %conv7.i.i.2308 to i32 *)
cast v_conv6_i_i_1_2@uint32 v_conv7_i_i_2308@uint8;
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
(*   %arrayidx = getelementptr inbounds i8, i8* %r, i64 0 *)
(*   %6 = load i8, i8* %arrayidx, align 1 *)
mov v6 r_0;
(*   %arrayidx18 = getelementptr inbounds [3 x i8], [3 x i8]* %z, i64 0, i64 0 *)
(*   store i8 %6, i8* %arrayidx18, align 1 *)
mov z_0 v6;
(*   %arrayidx19 = getelementptr inbounds i8, i8* %r, i64 1 *)
(*   %7 = load i8, i8* %arrayidx19, align 1 *)
mov v7 r_1;
(*   %arrayidx20 = getelementptr inbounds [3 x i8], [3 x i8]* %z, i64 0, i64 1 *)
(*   store i8 %7, i8* %arrayidx20, align 1 *)
mov z_1 v7;
(*   %arrayidx21 = getelementptr inbounds i8, i8* %r, i64 0 *)
(*   %8 = load i8, i8* %arrayidx21, align 1 *)
mov v8 r_0;
(*   %conv = zext i8 %8 to i32 *)
cast v_conv@uint32 v8@uint8;
(*   %arrayidx22 = getelementptr inbounds i8, i8* %r, i64 1 *)
(*   %9 = load i8, i8* %arrayidx22, align 1 *)
mov v9 r_1;
(*   %conv23 = zext i8 %9 to i32 *)
cast v_conv23@uint32 v9@uint8;
(*   %xor = xor i32 %conv, %conv23 *)
(* You may need to modify here *)
xor uint32 v_xor v_conv v_conv23;
(*   %conv24 = trunc i32 %xor to i8 *)
split tmp_v_xor v_conv24 v_xor 8;
vpc v_conv24@uint8 v_conv24@uint32;
(*   %arrayidx25 = getelementptr inbounds [3 x i8], [3 x i8]* %z, i64 0, i64 2 *)
(*   store i8 %conv24, i8* %arrayidx25, align 1 *)
mov z_2 v_conv24;
(*   %arraydecay26 = getelementptr inbounds [3 x i8], [3 x i8]* %ab1, i64 0, i64 0 *)
(*   %10 = load i8, i8* %a, align 1 *)
mov v10 a_0;
(*   %arrayidx4.i349 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %11 = load i8, i8* %arrayidx4.i349, align 1 *)
mov v11 b_1;
(*   %conv.i.i353 = zext i8 %11 to i32 *)
cast v_conv_i_i353@uint32 v11@uint8;
(*   %and.i.i354 = and i32 %conv.i.i353, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i354 v_conv_i_i353 (0x1)@uint32;
(*   %conv1.i.i355 = zext i8 %10 to i32 *)
cast v_conv1_i_i355@uint32 v10@uint8;
(*   %mul.i.i356 = mul nsw i32 %and.i.i354, %conv1.i.i355 *)
mul v_mul_i_i356 v_and_i_i354 v_conv1_i_i355;
(*   %conv3.i.i359 = trunc i32 %mul.i.i356 to i8 *)
split tmp_v_mul_i_i356 v_conv3_i_i359 v_mul_i_i356 8;
vpc v_conv3_i_i359@uint8 v_conv3_i_i359@uint32;
(*   %conv4.i.i360 = zext i8 %11 to i32 *)
cast v_conv4_i_i360@uint32 v11@uint8;
(*   %shr.i.i361 = ashr i32 %conv4.i.i360, 1 *)
(* You may need to modify here *)
split v_shr_i_i361 tmp_to_be_used v_conv4_i_i360 1;
(*   %conv5.i.i362 = trunc i32 %shr.i.i361 to i8 *)
split tmp_v_shr_i_i361 v_conv5_i_i362 v_shr_i_i361 8;
vpc v_conv5_i_i362@uint8 v_conv5_i_i362@uint32;
(*   %conv6.i.i363 = zext i8 %10 to i32 *)
cast v_conv6_i_i363@uint32 v10@uint8;
(*   %shl.i.i364 = shl i32 %conv6.i.i363, 1 *)
shls discard_21 v_shl_i_i364 v_conv6_i_i363 1;
(*   %conv7.i.i365 = trunc i32 %shl.i.i364 to i8 *)
split tmp_v_shl_i_i364 v_conv7_i_i365 v_shl_i_i364 8;
vpc v_conv7_i_i365@uint8 v_conv7_i_i365@uint32;
(*   %conv.i.i353.1 = zext i8 %conv5.i.i362 to i32 *)
cast v_conv_i_i353_1@uint32 v_conv5_i_i362@uint8;
(*   %and.i.i354.1 = and i32 %conv.i.i353.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i354_1 v_conv_i_i353_1 (0x1)@uint32;
(*   %conv1.i.i355.1 = zext i8 %conv7.i.i365 to i32 *)
cast v_conv1_i_i355_1@uint32 v_conv7_i_i365@uint8;
(*   %mul.i.i356.1 = mul nsw i32 %and.i.i354.1, %conv1.i.i355.1 *)
mul v_mul_i_i356_1 v_and_i_i354_1 v_conv1_i_i355_1;
(*   %conv2.i.i357.1 = zext i8 %conv3.i.i359 to i32 *)
cast v_conv2_i_i357_1@uint32 v_conv3_i_i359@uint8;
(*   %xor.i.i358.1 = xor i32 %conv2.i.i357.1, %mul.i.i356.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i358_1 v_conv2_i_i357_1 v_mul_i_i356_1;
(*   %conv3.i.i359.1 = trunc i32 %xor.i.i358.1 to i8 *)
split tmp_v_xor_i_i358_1 v_conv3_i_i359_1 v_xor_i_i358_1 8;
vpc v_conv3_i_i359_1@uint8 v_conv3_i_i359_1@uint32;
(*   %conv4.i.i360.1 = zext i8 %conv5.i.i362 to i32 *)
cast v_conv4_i_i360_1@uint32 v_conv5_i_i362@uint8;
(*   %shr.i.i361.1 = ashr i32 %conv4.i.i360.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i361_1 tmp_to_be_used v_conv4_i_i360_1 1;
(*   %conv5.i.i362.1 = trunc i32 %shr.i.i361.1 to i8 *)
split tmp_v_shr_i_i361_1 v_conv5_i_i362_1 v_shr_i_i361_1 8;
vpc v_conv5_i_i362_1@uint8 v_conv5_i_i362_1@uint32;
(*   %conv6.i.i363.1 = zext i8 %conv7.i.i365 to i32 *)
cast v_conv6_i_i363_1@uint32 v_conv7_i_i365@uint8;
(*   %shl.i.i364.1 = shl i32 %conv6.i.i363.1, 1 *)
shls discard_22 v_shl_i_i364_1 v_conv6_i_i363_1 1;
(*   %conv7.i.i365.1 = trunc i32 %shl.i.i364.1 to i8 *)
split tmp_v_shl_i_i364_1 v_conv7_i_i365_1 v_shl_i_i364_1 8;
vpc v_conv7_i_i365_1@uint8 v_conv7_i_i365_1@uint32;
(*   %conv.i.i353.2 = zext i8 %conv5.i.i362.1 to i32 *)
cast v_conv_i_i353_2@uint32 v_conv5_i_i362_1@uint8;
(*   %and.i.i354.2 = and i32 %conv.i.i353.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i354_2 v_conv_i_i353_2 (0x1)@uint32;
(*   %conv1.i.i355.2 = zext i8 %conv7.i.i365.1 to i32 *)
cast v_conv1_i_i355_2@uint32 v_conv7_i_i365_1@uint8;
(*   %mul.i.i356.2 = mul nsw i32 %and.i.i354.2, %conv1.i.i355.2 *)
mul v_mul_i_i356_2 v_and_i_i354_2 v_conv1_i_i355_2;
(*   %conv2.i.i357.2 = zext i8 %conv3.i.i359.1 to i32 *)
cast v_conv2_i_i357_2@uint32 v_conv3_i_i359_1@uint8;
(*   %xor.i.i358.2 = xor i32 %conv2.i.i357.2, %mul.i.i356.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i358_2 v_conv2_i_i357_2 v_mul_i_i356_2;
(*   %conv3.i.i359.2 = trunc i32 %xor.i.i358.2 to i8 *)
split tmp_v_xor_i_i358_2 v_conv3_i_i359_2 v_xor_i_i358_2 8;
vpc v_conv3_i_i359_2@uint8 v_conv3_i_i359_2@uint32;
(*   %conv4.i.i360.2 = zext i8 %conv5.i.i362.1 to i32 *)
cast v_conv4_i_i360_2@uint32 v_conv5_i_i362_1@uint8;
(*   %shr.i.i361.2 = ashr i32 %conv4.i.i360.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i361_2 tmp_to_be_used v_conv4_i_i360_2 1;
(*   %conv5.i.i362.2 = trunc i32 %shr.i.i361.2 to i8 *)
split tmp_v_shr_i_i361_2 v_conv5_i_i362_2 v_shr_i_i361_2 8;
vpc v_conv5_i_i362_2@uint8 v_conv5_i_i362_2@uint32;
(*   %conv6.i.i363.2 = zext i8 %conv7.i.i365.1 to i32 *)
cast v_conv6_i_i363_2@uint32 v_conv7_i_i365_1@uint8;
(*   %shl.i.i364.2 = shl i32 %conv6.i.i363.2, 1 *)
shls discard_23 v_shl_i_i364_2 v_conv6_i_i363_2 1;
(*   %conv7.i.i365.2 = trunc i32 %shl.i.i364.2 to i8 *)
split tmp_v_shl_i_i364_2 v_conv7_i_i365_2 v_shl_i_i364_2 8;
vpc v_conv7_i_i365_2@uint8 v_conv7_i_i365_2@uint32;
(*   %conv.i.i353.3 = zext i8 %conv5.i.i362.2 to i32 *)
cast v_conv_i_i353_3@uint32 v_conv5_i_i362_2@uint8;
(*   %and.i.i354.3 = and i32 %conv.i.i353.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i354_3 v_conv_i_i353_3 (0x1)@uint32;
(*   %conv1.i.i355.3 = zext i8 %conv7.i.i365.2 to i32 *)
cast v_conv1_i_i355_3@uint32 v_conv7_i_i365_2@uint8;
(*   %mul.i.i356.3 = mul nsw i32 %and.i.i354.3, %conv1.i.i355.3 *)
mul v_mul_i_i356_3 v_and_i_i354_3 v_conv1_i_i355_3;
(*   %conv2.i.i357.3 = zext i8 %conv3.i.i359.2 to i32 *)
cast v_conv2_i_i357_3@uint32 v_conv3_i_i359_2@uint8;
(*   %xor.i.i358.3 = xor i32 %conv2.i.i357.3, %mul.i.i356.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i358_3 v_conv2_i_i357_3 v_mul_i_i356_3;
(*   %conv3.i.i359.3 = trunc i32 %xor.i.i358.3 to i8 *)
split tmp_v_xor_i_i358_3 v_conv3_i_i359_3 v_xor_i_i358_3 8;
vpc v_conv3_i_i359_3@uint8 v_conv3_i_i359_3@uint32;
(*   %conv4.i.i360.3 = zext i8 %conv5.i.i362.2 to i32 *)
cast v_conv4_i_i360_3@uint32 v_conv5_i_i362_2@uint8;
(*   %shr.i.i361.3 = ashr i32 %conv4.i.i360.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i361_3 tmp_to_be_used v_conv4_i_i360_3 1;
(*   %conv5.i.i362.3 = trunc i32 %shr.i.i361.3 to i8 *)
split tmp_v_shr_i_i361_3 v_conv5_i_i362_3 v_shr_i_i361_3 8;
vpc v_conv5_i_i362_3@uint8 v_conv5_i_i362_3@uint32;
(*   %conv6.i.i363.3 = zext i8 %conv7.i.i365.2 to i32 *)
cast v_conv6_i_i363_3@uint32 v_conv7_i_i365_2@uint8;
(*   %shl.i.i364.3 = shl i32 %conv6.i.i363.3, 1 *)
shls discard_24 v_shl_i_i364_3 v_conv6_i_i363_3 1;
(*   %conv7.i.i365.3 = trunc i32 %shl.i.i364.3 to i8 *)
split tmp_v_shl_i_i364_3 v_conv7_i_i365_3 v_shl_i_i364_3 8;
vpc v_conv7_i_i365_3@uint8 v_conv7_i_i365_3@uint32;
(*   %conv.i.i353.4 = zext i8 %conv5.i.i362.3 to i32 *)
cast v_conv_i_i353_4@uint32 v_conv5_i_i362_3@uint8;
(*   %and.i.i354.4 = and i32 %conv.i.i353.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i354_4 v_conv_i_i353_4 (0x1)@uint32;
(*   %conv1.i.i355.4 = zext i8 %conv7.i.i365.3 to i32 *)
cast v_conv1_i_i355_4@uint32 v_conv7_i_i365_3@uint8;
(*   %mul.i.i356.4 = mul nsw i32 %and.i.i354.4, %conv1.i.i355.4 *)
mul v_mul_i_i356_4 v_and_i_i354_4 v_conv1_i_i355_4;
(*   %conv2.i.i357.4 = zext i8 %conv3.i.i359.3 to i32 *)
cast v_conv2_i_i357_4@uint32 v_conv3_i_i359_3@uint8;
(*   %xor.i.i358.4 = xor i32 %conv2.i.i357.4, %mul.i.i356.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i358_4 v_conv2_i_i357_4 v_mul_i_i356_4;
(*   %conv3.i.i359.4 = trunc i32 %xor.i.i358.4 to i8 *)
split tmp_v_xor_i_i358_4 v_conv3_i_i359_4 v_xor_i_i358_4 8;
vpc v_conv3_i_i359_4@uint8 v_conv3_i_i359_4@uint32;
(*   %conv4.i.i360.4 = zext i8 %conv5.i.i362.3 to i32 *)
cast v_conv4_i_i360_4@uint32 v_conv5_i_i362_3@uint8;
(*   %shr.i.i361.4 = ashr i32 %conv4.i.i360.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i361_4 tmp_to_be_used v_conv4_i_i360_4 1;
(*   %conv5.i.i362.4 = trunc i32 %shr.i.i361.4 to i8 *)
split tmp_v_shr_i_i361_4 v_conv5_i_i362_4 v_shr_i_i361_4 8;
vpc v_conv5_i_i362_4@uint8 v_conv5_i_i362_4@uint32;
(*   %conv6.i.i363.4 = zext i8 %conv7.i.i365.3 to i32 *)
cast v_conv6_i_i363_4@uint32 v_conv7_i_i365_3@uint8;
(*   %shl.i.i364.4 = shl i32 %conv6.i.i363.4, 1 *)
shls discard_25 v_shl_i_i364_4 v_conv6_i_i363_4 1;
(*   %conv7.i.i365.4 = trunc i32 %shl.i.i364.4 to i8 *)
split tmp_v_shl_i_i364_4 v_conv7_i_i365_4 v_shl_i_i364_4 8;
vpc v_conv7_i_i365_4@uint8 v_conv7_i_i365_4@uint32;
(*   %conv.i.i353.5 = zext i8 %conv5.i.i362.4 to i32 *)
cast v_conv_i_i353_5@uint32 v_conv5_i_i362_4@uint8;
(*   %and.i.i354.5 = and i32 %conv.i.i353.5, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i354_5 v_conv_i_i353_5 (0x1)@uint32;
(*   %conv1.i.i355.5 = zext i8 %conv7.i.i365.4 to i32 *)
cast v_conv1_i_i355_5@uint32 v_conv7_i_i365_4@uint8;
(*   %mul.i.i356.5 = mul nsw i32 %and.i.i354.5, %conv1.i.i355.5 *)
mul v_mul_i_i356_5 v_and_i_i354_5 v_conv1_i_i355_5;
(*   %conv2.i.i357.5 = zext i8 %conv3.i.i359.4 to i32 *)
cast v_conv2_i_i357_5@uint32 v_conv3_i_i359_4@uint8;
(*   %xor.i.i358.5 = xor i32 %conv2.i.i357.5, %mul.i.i356.5 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i358_5 v_conv2_i_i357_5 v_mul_i_i356_5;
(*   %conv3.i.i359.5 = trunc i32 %xor.i.i358.5 to i8 *)
split tmp_v_xor_i_i358_5 v_conv3_i_i359_5 v_xor_i_i358_5 8;
vpc v_conv3_i_i359_5@uint8 v_conv3_i_i359_5@uint32;
(*   %conv4.i.i360.5 = zext i8 %conv5.i.i362.4 to i32 *)
cast v_conv4_i_i360_5@uint32 v_conv5_i_i362_4@uint8;
(*   %shr.i.i361.5 = ashr i32 %conv4.i.i360.5, 1 *)
(* You may need to modify here *)
split v_shr_i_i361_5 tmp_to_be_used v_conv4_i_i360_5 1;
(*   %conv5.i.i362.5 = trunc i32 %shr.i.i361.5 to i8 *)
split tmp_v_shr_i_i361_5 v_conv5_i_i362_5 v_shr_i_i361_5 8;
vpc v_conv5_i_i362_5@uint8 v_conv5_i_i362_5@uint32;
(*   %conv6.i.i363.5 = zext i8 %conv7.i.i365.4 to i32 *)
cast v_conv6_i_i363_5@uint32 v_conv7_i_i365_4@uint8;
(*   %shl.i.i364.5 = shl i32 %conv6.i.i363.5, 1 *)
shls discard_26 v_shl_i_i364_5 v_conv6_i_i363_5 1;
(*   %conv7.i.i365.5 = trunc i32 %shl.i.i364.5 to i8 *)
split tmp_v_shl_i_i364_5 v_conv7_i_i365_5 v_shl_i_i364_5 8;
vpc v_conv7_i_i365_5@uint8 v_conv7_i_i365_5@uint32;
(*   %conv.i.i353.6 = zext i8 %conv5.i.i362.5 to i32 *)
cast v_conv_i_i353_6@uint32 v_conv5_i_i362_5@uint8;
(*   %and.i.i354.6 = and i32 %conv.i.i353.6, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i354_6 v_conv_i_i353_6 (0x1)@uint32;
(*   %conv1.i.i355.6 = zext i8 %conv7.i.i365.5 to i32 *)
cast v_conv1_i_i355_6@uint32 v_conv7_i_i365_5@uint8;
(*   %mul.i.i356.6 = mul nsw i32 %and.i.i354.6, %conv1.i.i355.6 *)
mul v_mul_i_i356_6 v_and_i_i354_6 v_conv1_i_i355_6;
(*   %conv2.i.i357.6 = zext i8 %conv3.i.i359.5 to i32 *)
cast v_conv2_i_i357_6@uint32 v_conv3_i_i359_5@uint8;
(*   %xor.i.i358.6 = xor i32 %conv2.i.i357.6, %mul.i.i356.6 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i358_6 v_conv2_i_i357_6 v_mul_i_i356_6;
(*   %conv3.i.i359.6 = trunc i32 %xor.i.i358.6 to i8 *)
split tmp_v_xor_i_i358_6 v_conv3_i_i359_6 v_xor_i_i358_6 8;
vpc v_conv3_i_i359_6@uint8 v_conv3_i_i359_6@uint32;
(*   %conv4.i.i360.6 = zext i8 %conv5.i.i362.5 to i32 *)
cast v_conv4_i_i360_6@uint32 v_conv5_i_i362_5@uint8;
(*   %shr.i.i361.6 = ashr i32 %conv4.i.i360.6, 1 *)
(* You may need to modify here *)
split v_shr_i_i361_6 tmp_to_be_used v_conv4_i_i360_6 1;
(*   %conv5.i.i362.6 = trunc i32 %shr.i.i361.6 to i8 *)
split tmp_v_shr_i_i361_6 v_conv5_i_i362_6 v_shr_i_i361_6 8;
vpc v_conv5_i_i362_6@uint8 v_conv5_i_i362_6@uint32;
(*   %conv6.i.i363.6 = zext i8 %conv7.i.i365.5 to i32 *)
cast v_conv6_i_i363_6@uint32 v_conv7_i_i365_5@uint8;
(*   %shl.i.i364.6 = shl i32 %conv6.i.i363.6, 1 *)
shls discard_27 v_shl_i_i364_6 v_conv6_i_i363_6 1;
(*   %conv7.i.i365.6 = trunc i32 %shl.i.i364.6 to i8 *)
split tmp_v_shl_i_i364_6 v_conv7_i_i365_6 v_shl_i_i364_6 8;
vpc v_conv7_i_i365_6@uint8 v_conv7_i_i365_6@uint32;
(*   %conv.i.i353.7 = zext i8 %conv5.i.i362.6 to i32 *)
cast v_conv_i_i353_7@uint32 v_conv5_i_i362_6@uint8;
(*   %and.i.i354.7 = and i32 %conv.i.i353.7, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i354_7 v_conv_i_i353_7 (0x1)@uint32;
(*   %conv1.i.i355.7 = zext i8 %conv7.i.i365.6 to i32 *)
cast v_conv1_i_i355_7@uint32 v_conv7_i_i365_6@uint8;
(*   %mul.i.i356.7 = mul nsw i32 %and.i.i354.7, %conv1.i.i355.7 *)
mul v_mul_i_i356_7 v_and_i_i354_7 v_conv1_i_i355_7;
(*   %conv2.i.i357.7 = zext i8 %conv3.i.i359.6 to i32 *)
cast v_conv2_i_i357_7@uint32 v_conv3_i_i359_6@uint8;
(*   %xor.i.i358.7 = xor i32 %conv2.i.i357.7, %mul.i.i356.7 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i358_7 v_conv2_i_i357_7 v_mul_i_i356_7;
(*   %conv3.i.i359.7 = trunc i32 %xor.i.i358.7 to i8 *)
split tmp_v_xor_i_i358_7 v_conv3_i_i359_7 v_xor_i_i358_7 8;
vpc v_conv3_i_i359_7@uint8 v_conv3_i_i359_7@uint32;
(*   store i8 %conv3.i.i359.7, i8* %arraydecay26, align 1 *)
mov ab1_0 v_conv3_i_i359_7;
(*   %arrayidx.i345.1 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %12 = load i8, i8* %arrayidx.i345.1, align 1 *)
mov v12 a_1;
(*   %arrayidx4.i349.1 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %13 = load i8, i8* %arrayidx4.i349.1, align 1 *)
mov v13 b_2;
(*   %conv.i.i353.1177 = zext i8 %13 to i32 *)
cast v_conv_i_i353_1177@uint32 v13@uint8;
(*   %and.i.i354.1178 = and i32 %conv.i.i353.1177, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i354_1178 v_conv_i_i353_1177 (0x1)@uint32;
(*   %conv1.i.i355.1179 = zext i8 %12 to i32 *)
cast v_conv1_i_i355_1179@uint32 v12@uint8;
(*   %mul.i.i356.1180 = mul nsw i32 %and.i.i354.1178, %conv1.i.i355.1179 *)
mul v_mul_i_i356_1180 v_and_i_i354_1178 v_conv1_i_i355_1179;
(*   %conv3.i.i359.1181 = trunc i32 %mul.i.i356.1180 to i8 *)
split tmp_v_mul_i_i356_1180 v_conv3_i_i359_1181 v_mul_i_i356_1180 8;
vpc v_conv3_i_i359_1181@uint8 v_conv3_i_i359_1181@uint32;
(*   %conv4.i.i360.1182 = zext i8 %13 to i32 *)
cast v_conv4_i_i360_1182@uint32 v13@uint8;
(*   %shr.i.i361.1183 = ashr i32 %conv4.i.i360.1182, 1 *)
(* You may need to modify here *)
split v_shr_i_i361_1183 tmp_to_be_used v_conv4_i_i360_1182 1;
(*   %conv5.i.i362.1184 = trunc i32 %shr.i.i361.1183 to i8 *)
split tmp_v_shr_i_i361_1183 v_conv5_i_i362_1184 v_shr_i_i361_1183 8;
vpc v_conv5_i_i362_1184@uint8 v_conv5_i_i362_1184@uint32;
(*   %conv6.i.i363.1185 = zext i8 %12 to i32 *)
cast v_conv6_i_i363_1185@uint32 v12@uint8;
(*   %shl.i.i364.1186 = shl i32 %conv6.i.i363.1185, 1 *)
shls discard_28 v_shl_i_i364_1186 v_conv6_i_i363_1185 1;
(*   %conv7.i.i365.1187 = trunc i32 %shl.i.i364.1186 to i8 *)
split tmp_v_shl_i_i364_1186 v_conv7_i_i365_1187 v_shl_i_i364_1186 8;
vpc v_conv7_i_i365_1187@uint8 v_conv7_i_i365_1187@uint32;
(*   %conv.i.i353.1.1 = zext i8 %conv5.i.i362.1184 to i32 *)
cast v_conv_i_i353_1_1@uint32 v_conv5_i_i362_1184@uint8;
(*   %and.i.i354.1.1 = and i32 %conv.i.i353.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i354_1_1 v_conv_i_i353_1_1 (0x1)@uint32;
(*   %conv1.i.i355.1.1 = zext i8 %conv7.i.i365.1187 to i32 *)
cast v_conv1_i_i355_1_1@uint32 v_conv7_i_i365_1187@uint8;
(*   %mul.i.i356.1.1 = mul nsw i32 %and.i.i354.1.1, %conv1.i.i355.1.1 *)
mul v_mul_i_i356_1_1 v_and_i_i354_1_1 v_conv1_i_i355_1_1;
(*   %conv2.i.i357.1.1 = zext i8 %conv3.i.i359.1181 to i32 *)
cast v_conv2_i_i357_1_1@uint32 v_conv3_i_i359_1181@uint8;
(*   %xor.i.i358.1.1 = xor i32 %conv2.i.i357.1.1, %mul.i.i356.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i358_1_1 v_conv2_i_i357_1_1 v_mul_i_i356_1_1;
(*   %conv3.i.i359.1.1 = trunc i32 %xor.i.i358.1.1 to i8 *)
split tmp_v_xor_i_i358_1_1 v_conv3_i_i359_1_1 v_xor_i_i358_1_1 8;
vpc v_conv3_i_i359_1_1@uint8 v_conv3_i_i359_1_1@uint32;
(*   %conv4.i.i360.1.1 = zext i8 %conv5.i.i362.1184 to i32 *)
cast v_conv4_i_i360_1_1@uint32 v_conv5_i_i362_1184@uint8;
(*   %shr.i.i361.1.1 = ashr i32 %conv4.i.i360.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i361_1_1 tmp_to_be_used v_conv4_i_i360_1_1 1;
(*   %conv5.i.i362.1.1 = trunc i32 %shr.i.i361.1.1 to i8 *)
split tmp_v_shr_i_i361_1_1 v_conv5_i_i362_1_1 v_shr_i_i361_1_1 8;
vpc v_conv5_i_i362_1_1@uint8 v_conv5_i_i362_1_1@uint32;
(*   %conv6.i.i363.1.1 = zext i8 %conv7.i.i365.1187 to i32 *)
cast v_conv6_i_i363_1_1@uint32 v_conv7_i_i365_1187@uint8;
(*   %shl.i.i364.1.1 = shl i32 %conv6.i.i363.1.1, 1 *)
shls discard_29 v_shl_i_i364_1_1 v_conv6_i_i363_1_1 1;
(*   %conv7.i.i365.1.1 = trunc i32 %shl.i.i364.1.1 to i8 *)
split tmp_v_shl_i_i364_1_1 v_conv7_i_i365_1_1 v_shl_i_i364_1_1 8;
vpc v_conv7_i_i365_1_1@uint8 v_conv7_i_i365_1_1@uint32;
(*   %conv.i.i353.2.1 = zext i8 %conv5.i.i362.1.1 to i32 *)
cast v_conv_i_i353_2_1@uint32 v_conv5_i_i362_1_1@uint8;
(*   %and.i.i354.2.1 = and i32 %conv.i.i353.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i354_2_1 v_conv_i_i353_2_1 (0x1)@uint32;
(*   %conv1.i.i355.2.1 = zext i8 %conv7.i.i365.1.1 to i32 *)
cast v_conv1_i_i355_2_1@uint32 v_conv7_i_i365_1_1@uint8;
(*   %mul.i.i356.2.1 = mul nsw i32 %and.i.i354.2.1, %conv1.i.i355.2.1 *)
mul v_mul_i_i356_2_1 v_and_i_i354_2_1 v_conv1_i_i355_2_1;
(*   %conv2.i.i357.2.1 = zext i8 %conv3.i.i359.1.1 to i32 *)
cast v_conv2_i_i357_2_1@uint32 v_conv3_i_i359_1_1@uint8;
(*   %xor.i.i358.2.1 = xor i32 %conv2.i.i357.2.1, %mul.i.i356.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i358_2_1 v_conv2_i_i357_2_1 v_mul_i_i356_2_1;
(*   %conv3.i.i359.2.1 = trunc i32 %xor.i.i358.2.1 to i8 *)
split tmp_v_xor_i_i358_2_1 v_conv3_i_i359_2_1 v_xor_i_i358_2_1 8;
vpc v_conv3_i_i359_2_1@uint8 v_conv3_i_i359_2_1@uint32;
(*   %conv4.i.i360.2.1 = zext i8 %conv5.i.i362.1.1 to i32 *)
cast v_conv4_i_i360_2_1@uint32 v_conv5_i_i362_1_1@uint8;
(*   %shr.i.i361.2.1 = ashr i32 %conv4.i.i360.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i361_2_1 tmp_to_be_used v_conv4_i_i360_2_1 1;
(*   %conv5.i.i362.2.1 = trunc i32 %shr.i.i361.2.1 to i8 *)
split tmp_v_shr_i_i361_2_1 v_conv5_i_i362_2_1 v_shr_i_i361_2_1 8;
vpc v_conv5_i_i362_2_1@uint8 v_conv5_i_i362_2_1@uint32;
(*   %conv6.i.i363.2.1 = zext i8 %conv7.i.i365.1.1 to i32 *)
cast v_conv6_i_i363_2_1@uint32 v_conv7_i_i365_1_1@uint8;
(*   %shl.i.i364.2.1 = shl i32 %conv6.i.i363.2.1, 1 *)
shls discard_30 v_shl_i_i364_2_1 v_conv6_i_i363_2_1 1;
(*   %conv7.i.i365.2.1 = trunc i32 %shl.i.i364.2.1 to i8 *)
split tmp_v_shl_i_i364_2_1 v_conv7_i_i365_2_1 v_shl_i_i364_2_1 8;
vpc v_conv7_i_i365_2_1@uint8 v_conv7_i_i365_2_1@uint32;
(*   %conv.i.i353.3.1 = zext i8 %conv5.i.i362.2.1 to i32 *)
cast v_conv_i_i353_3_1@uint32 v_conv5_i_i362_2_1@uint8;
(*   %and.i.i354.3.1 = and i32 %conv.i.i353.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i354_3_1 v_conv_i_i353_3_1 (0x1)@uint32;
(*   %conv1.i.i355.3.1 = zext i8 %conv7.i.i365.2.1 to i32 *)
cast v_conv1_i_i355_3_1@uint32 v_conv7_i_i365_2_1@uint8;
(*   %mul.i.i356.3.1 = mul nsw i32 %and.i.i354.3.1, %conv1.i.i355.3.1 *)
mul v_mul_i_i356_3_1 v_and_i_i354_3_1 v_conv1_i_i355_3_1;
(*   %conv2.i.i357.3.1 = zext i8 %conv3.i.i359.2.1 to i32 *)
cast v_conv2_i_i357_3_1@uint32 v_conv3_i_i359_2_1@uint8;
(*   %xor.i.i358.3.1 = xor i32 %conv2.i.i357.3.1, %mul.i.i356.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i358_3_1 v_conv2_i_i357_3_1 v_mul_i_i356_3_1;
(*   %conv3.i.i359.3.1 = trunc i32 %xor.i.i358.3.1 to i8 *)
split tmp_v_xor_i_i358_3_1 v_conv3_i_i359_3_1 v_xor_i_i358_3_1 8;
vpc v_conv3_i_i359_3_1@uint8 v_conv3_i_i359_3_1@uint32;
(*   %conv4.i.i360.3.1 = zext i8 %conv5.i.i362.2.1 to i32 *)
cast v_conv4_i_i360_3_1@uint32 v_conv5_i_i362_2_1@uint8;
(*   %shr.i.i361.3.1 = ashr i32 %conv4.i.i360.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i361_3_1 tmp_to_be_used v_conv4_i_i360_3_1 1;
(*   %conv5.i.i362.3.1 = trunc i32 %shr.i.i361.3.1 to i8 *)
split tmp_v_shr_i_i361_3_1 v_conv5_i_i362_3_1 v_shr_i_i361_3_1 8;
vpc v_conv5_i_i362_3_1@uint8 v_conv5_i_i362_3_1@uint32;
(*   %conv6.i.i363.3.1 = zext i8 %conv7.i.i365.2.1 to i32 *)
cast v_conv6_i_i363_3_1@uint32 v_conv7_i_i365_2_1@uint8;
(*   %shl.i.i364.3.1 = shl i32 %conv6.i.i363.3.1, 1 *)
shls discard_31 v_shl_i_i364_3_1 v_conv6_i_i363_3_1 1;
(*   %conv7.i.i365.3.1 = trunc i32 %shl.i.i364.3.1 to i8 *)
split tmp_v_shl_i_i364_3_1 v_conv7_i_i365_3_1 v_shl_i_i364_3_1 8;
vpc v_conv7_i_i365_3_1@uint8 v_conv7_i_i365_3_1@uint32;
(*   %conv.i.i353.4.1 = zext i8 %conv5.i.i362.3.1 to i32 *)
cast v_conv_i_i353_4_1@uint32 v_conv5_i_i362_3_1@uint8;
(*   %and.i.i354.4.1 = and i32 %conv.i.i353.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i354_4_1 v_conv_i_i353_4_1 (0x1)@uint32;
(*   %conv1.i.i355.4.1 = zext i8 %conv7.i.i365.3.1 to i32 *)
cast v_conv1_i_i355_4_1@uint32 v_conv7_i_i365_3_1@uint8;
(*   %mul.i.i356.4.1 = mul nsw i32 %and.i.i354.4.1, %conv1.i.i355.4.1 *)
mul v_mul_i_i356_4_1 v_and_i_i354_4_1 v_conv1_i_i355_4_1;
(*   %conv2.i.i357.4.1 = zext i8 %conv3.i.i359.3.1 to i32 *)
cast v_conv2_i_i357_4_1@uint32 v_conv3_i_i359_3_1@uint8;
(*   %xor.i.i358.4.1 = xor i32 %conv2.i.i357.4.1, %mul.i.i356.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i358_4_1 v_conv2_i_i357_4_1 v_mul_i_i356_4_1;
(*   %conv3.i.i359.4.1 = trunc i32 %xor.i.i358.4.1 to i8 *)
split tmp_v_xor_i_i358_4_1 v_conv3_i_i359_4_1 v_xor_i_i358_4_1 8;
vpc v_conv3_i_i359_4_1@uint8 v_conv3_i_i359_4_1@uint32;
(*   %conv4.i.i360.4.1 = zext i8 %conv5.i.i362.3.1 to i32 *)
cast v_conv4_i_i360_4_1@uint32 v_conv5_i_i362_3_1@uint8;
(*   %shr.i.i361.4.1 = ashr i32 %conv4.i.i360.4.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i361_4_1 tmp_to_be_used v_conv4_i_i360_4_1 1;
(*   %conv5.i.i362.4.1 = trunc i32 %shr.i.i361.4.1 to i8 *)
split tmp_v_shr_i_i361_4_1 v_conv5_i_i362_4_1 v_shr_i_i361_4_1 8;
vpc v_conv5_i_i362_4_1@uint8 v_conv5_i_i362_4_1@uint32;
(*   %conv6.i.i363.4.1 = zext i8 %conv7.i.i365.3.1 to i32 *)
cast v_conv6_i_i363_4_1@uint32 v_conv7_i_i365_3_1@uint8;
(*   %shl.i.i364.4.1 = shl i32 %conv6.i.i363.4.1, 1 *)
shls discard_32 v_shl_i_i364_4_1 v_conv6_i_i363_4_1 1;
(*   %conv7.i.i365.4.1 = trunc i32 %shl.i.i364.4.1 to i8 *)
split tmp_v_shl_i_i364_4_1 v_conv7_i_i365_4_1 v_shl_i_i364_4_1 8;
vpc v_conv7_i_i365_4_1@uint8 v_conv7_i_i365_4_1@uint32;
(*   %conv.i.i353.5.1 = zext i8 %conv5.i.i362.4.1 to i32 *)
cast v_conv_i_i353_5_1@uint32 v_conv5_i_i362_4_1@uint8;
(*   %and.i.i354.5.1 = and i32 %conv.i.i353.5.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i354_5_1 v_conv_i_i353_5_1 (0x1)@uint32;
(*   %conv1.i.i355.5.1 = zext i8 %conv7.i.i365.4.1 to i32 *)
cast v_conv1_i_i355_5_1@uint32 v_conv7_i_i365_4_1@uint8;
(*   %mul.i.i356.5.1 = mul nsw i32 %and.i.i354.5.1, %conv1.i.i355.5.1 *)
mul v_mul_i_i356_5_1 v_and_i_i354_5_1 v_conv1_i_i355_5_1;
(*   %conv2.i.i357.5.1 = zext i8 %conv3.i.i359.4.1 to i32 *)
cast v_conv2_i_i357_5_1@uint32 v_conv3_i_i359_4_1@uint8;
(*   %xor.i.i358.5.1 = xor i32 %conv2.i.i357.5.1, %mul.i.i356.5.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i358_5_1 v_conv2_i_i357_5_1 v_mul_i_i356_5_1;
(*   %conv3.i.i359.5.1 = trunc i32 %xor.i.i358.5.1 to i8 *)
split tmp_v_xor_i_i358_5_1 v_conv3_i_i359_5_1 v_xor_i_i358_5_1 8;
vpc v_conv3_i_i359_5_1@uint8 v_conv3_i_i359_5_1@uint32;
(*   %conv4.i.i360.5.1 = zext i8 %conv5.i.i362.4.1 to i32 *)
cast v_conv4_i_i360_5_1@uint32 v_conv5_i_i362_4_1@uint8;
(*   %shr.i.i361.5.1 = ashr i32 %conv4.i.i360.5.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i361_5_1 tmp_to_be_used v_conv4_i_i360_5_1 1;
(*   %conv5.i.i362.5.1 = trunc i32 %shr.i.i361.5.1 to i8 *)
split tmp_v_shr_i_i361_5_1 v_conv5_i_i362_5_1 v_shr_i_i361_5_1 8;
vpc v_conv5_i_i362_5_1@uint8 v_conv5_i_i362_5_1@uint32;
(*   %conv6.i.i363.5.1 = zext i8 %conv7.i.i365.4.1 to i32 *)
cast v_conv6_i_i363_5_1@uint32 v_conv7_i_i365_4_1@uint8;
(*   %shl.i.i364.5.1 = shl i32 %conv6.i.i363.5.1, 1 *)
shls discard_33 v_shl_i_i364_5_1 v_conv6_i_i363_5_1 1;
(*   %conv7.i.i365.5.1 = trunc i32 %shl.i.i364.5.1 to i8 *)
split tmp_v_shl_i_i364_5_1 v_conv7_i_i365_5_1 v_shl_i_i364_5_1 8;
vpc v_conv7_i_i365_5_1@uint8 v_conv7_i_i365_5_1@uint32;
(*   %conv.i.i353.6.1 = zext i8 %conv5.i.i362.5.1 to i32 *)
cast v_conv_i_i353_6_1@uint32 v_conv5_i_i362_5_1@uint8;
(*   %and.i.i354.6.1 = and i32 %conv.i.i353.6.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i354_6_1 v_conv_i_i353_6_1 (0x1)@uint32;
(*   %conv1.i.i355.6.1 = zext i8 %conv7.i.i365.5.1 to i32 *)
cast v_conv1_i_i355_6_1@uint32 v_conv7_i_i365_5_1@uint8;
(*   %mul.i.i356.6.1 = mul nsw i32 %and.i.i354.6.1, %conv1.i.i355.6.1 *)
mul v_mul_i_i356_6_1 v_and_i_i354_6_1 v_conv1_i_i355_6_1;
(*   %conv2.i.i357.6.1 = zext i8 %conv3.i.i359.5.1 to i32 *)
cast v_conv2_i_i357_6_1@uint32 v_conv3_i_i359_5_1@uint8;
(*   %xor.i.i358.6.1 = xor i32 %conv2.i.i357.6.1, %mul.i.i356.6.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i358_6_1 v_conv2_i_i357_6_1 v_mul_i_i356_6_1;
(*   %conv3.i.i359.6.1 = trunc i32 %xor.i.i358.6.1 to i8 *)
split tmp_v_xor_i_i358_6_1 v_conv3_i_i359_6_1 v_xor_i_i358_6_1 8;
vpc v_conv3_i_i359_6_1@uint8 v_conv3_i_i359_6_1@uint32;
(*   %conv4.i.i360.6.1 = zext i8 %conv5.i.i362.5.1 to i32 *)
cast v_conv4_i_i360_6_1@uint32 v_conv5_i_i362_5_1@uint8;
(*   %shr.i.i361.6.1 = ashr i32 %conv4.i.i360.6.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i361_6_1 tmp_to_be_used v_conv4_i_i360_6_1 1;
(*   %conv5.i.i362.6.1 = trunc i32 %shr.i.i361.6.1 to i8 *)
split tmp_v_shr_i_i361_6_1 v_conv5_i_i362_6_1 v_shr_i_i361_6_1 8;
vpc v_conv5_i_i362_6_1@uint8 v_conv5_i_i362_6_1@uint32;
(*   %conv6.i.i363.6.1 = zext i8 %conv7.i.i365.5.1 to i32 *)
cast v_conv6_i_i363_6_1@uint32 v_conv7_i_i365_5_1@uint8;
(*   %shl.i.i364.6.1 = shl i32 %conv6.i.i363.6.1, 1 *)
shls discard_34 v_shl_i_i364_6_1 v_conv6_i_i363_6_1 1;
(*   %conv7.i.i365.6.1 = trunc i32 %shl.i.i364.6.1 to i8 *)
split tmp_v_shl_i_i364_6_1 v_conv7_i_i365_6_1 v_shl_i_i364_6_1 8;
vpc v_conv7_i_i365_6_1@uint8 v_conv7_i_i365_6_1@uint32;
(*   %conv.i.i353.7.1 = zext i8 %conv5.i.i362.6.1 to i32 *)
cast v_conv_i_i353_7_1@uint32 v_conv5_i_i362_6_1@uint8;
(*   %and.i.i354.7.1 = and i32 %conv.i.i353.7.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i354_7_1 v_conv_i_i353_7_1 (0x1)@uint32;
(*   %conv1.i.i355.7.1 = zext i8 %conv7.i.i365.6.1 to i32 *)
cast v_conv1_i_i355_7_1@uint32 v_conv7_i_i365_6_1@uint8;
(*   %mul.i.i356.7.1 = mul nsw i32 %and.i.i354.7.1, %conv1.i.i355.7.1 *)
mul v_mul_i_i356_7_1 v_and_i_i354_7_1 v_conv1_i_i355_7_1;
(*   %conv2.i.i357.7.1 = zext i8 %conv3.i.i359.6.1 to i32 *)
cast v_conv2_i_i357_7_1@uint32 v_conv3_i_i359_6_1@uint8;
(*   %xor.i.i358.7.1 = xor i32 %conv2.i.i357.7.1, %mul.i.i356.7.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i358_7_1 v_conv2_i_i357_7_1 v_mul_i_i356_7_1;
(*   %conv3.i.i359.7.1 = trunc i32 %xor.i.i358.7.1 to i8 *)
split tmp_v_xor_i_i358_7_1 v_conv3_i_i359_7_1 v_xor_i_i358_7_1 8;
vpc v_conv3_i_i359_7_1@uint8 v_conv3_i_i359_7_1@uint32;
(*   %arrayidx6.i369.1 = getelementptr inbounds i8, i8* %arraydecay26, i64 1 *)
(*   store i8 %conv3.i.i359.7.1, i8* %arrayidx6.i369.1, align 1 *)
mov ab1_1 v_conv3_i_i359_7_1;
(*   %arrayidx.i345.2 = getelementptr inbounds i8, i8* %a, i64 2 *)
(*   %14 = load i8, i8* %arrayidx.i345.2, align 1 *)
mov v14 a_2;
(*   %15 = load i8, i8* %b, align 1 *)
mov v15 b_0;
(*   %conv.i.i353.2188 = zext i8 %15 to i32 *)
cast v_conv_i_i353_2188@uint32 v15@uint8;
(*   %and.i.i354.2189 = and i32 %conv.i.i353.2188, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i354_2189 v_conv_i_i353_2188 (0x1)@uint32;
(*   %conv1.i.i355.2190 = zext i8 %14 to i32 *)
cast v_conv1_i_i355_2190@uint32 v14@uint8;
(*   %mul.i.i356.2191 = mul nsw i32 %and.i.i354.2189, %conv1.i.i355.2190 *)
mul v_mul_i_i356_2191 v_and_i_i354_2189 v_conv1_i_i355_2190;
(*   %conv3.i.i359.2192 = trunc i32 %mul.i.i356.2191 to i8 *)
split tmp_v_mul_i_i356_2191 v_conv3_i_i359_2192 v_mul_i_i356_2191 8;
vpc v_conv3_i_i359_2192@uint8 v_conv3_i_i359_2192@uint32;
(*   %conv4.i.i360.2193 = zext i8 %15 to i32 *)
cast v_conv4_i_i360_2193@uint32 v15@uint8;
(*   %shr.i.i361.2194 = ashr i32 %conv4.i.i360.2193, 1 *)
(* You may need to modify here *)
split v_shr_i_i361_2194 tmp_to_be_used v_conv4_i_i360_2193 1;
(*   %conv5.i.i362.2195 = trunc i32 %shr.i.i361.2194 to i8 *)
split tmp_v_shr_i_i361_2194 v_conv5_i_i362_2195 v_shr_i_i361_2194 8;
vpc v_conv5_i_i362_2195@uint8 v_conv5_i_i362_2195@uint32;
(*   %conv6.i.i363.2196 = zext i8 %14 to i32 *)
cast v_conv6_i_i363_2196@uint32 v14@uint8;
(*   %shl.i.i364.2197 = shl i32 %conv6.i.i363.2196, 1 *)
shls discard_35 v_shl_i_i364_2197 v_conv6_i_i363_2196 1;
(*   %conv7.i.i365.2198 = trunc i32 %shl.i.i364.2197 to i8 *)
split tmp_v_shl_i_i364_2197 v_conv7_i_i365_2198 v_shl_i_i364_2197 8;
vpc v_conv7_i_i365_2198@uint8 v_conv7_i_i365_2198@uint32;
(*   %conv.i.i353.1.2 = zext i8 %conv5.i.i362.2195 to i32 *)
cast v_conv_i_i353_1_2@uint32 v_conv5_i_i362_2195@uint8;
(*   %and.i.i354.1.2 = and i32 %conv.i.i353.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i354_1_2 v_conv_i_i353_1_2 (0x1)@uint32;
(*   %conv1.i.i355.1.2 = zext i8 %conv7.i.i365.2198 to i32 *)
cast v_conv1_i_i355_1_2@uint32 v_conv7_i_i365_2198@uint8;
(*   %mul.i.i356.1.2 = mul nsw i32 %and.i.i354.1.2, %conv1.i.i355.1.2 *)
mul v_mul_i_i356_1_2 v_and_i_i354_1_2 v_conv1_i_i355_1_2;
(*   %conv2.i.i357.1.2 = zext i8 %conv3.i.i359.2192 to i32 *)
cast v_conv2_i_i357_1_2@uint32 v_conv3_i_i359_2192@uint8;
(*   %xor.i.i358.1.2 = xor i32 %conv2.i.i357.1.2, %mul.i.i356.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i358_1_2 v_conv2_i_i357_1_2 v_mul_i_i356_1_2;
(*   %conv3.i.i359.1.2 = trunc i32 %xor.i.i358.1.2 to i8 *)
split tmp_v_xor_i_i358_1_2 v_conv3_i_i359_1_2 v_xor_i_i358_1_2 8;
vpc v_conv3_i_i359_1_2@uint8 v_conv3_i_i359_1_2@uint32;
(*   %conv4.i.i360.1.2 = zext i8 %conv5.i.i362.2195 to i32 *)
cast v_conv4_i_i360_1_2@uint32 v_conv5_i_i362_2195@uint8;
(*   %shr.i.i361.1.2 = ashr i32 %conv4.i.i360.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i361_1_2 tmp_to_be_used v_conv4_i_i360_1_2 1;
(*   %conv5.i.i362.1.2 = trunc i32 %shr.i.i361.1.2 to i8 *)
split tmp_v_shr_i_i361_1_2 v_conv5_i_i362_1_2 v_shr_i_i361_1_2 8;
vpc v_conv5_i_i362_1_2@uint8 v_conv5_i_i362_1_2@uint32;
(*   %conv6.i.i363.1.2 = zext i8 %conv7.i.i365.2198 to i32 *)
cast v_conv6_i_i363_1_2@uint32 v_conv7_i_i365_2198@uint8;
(*   %shl.i.i364.1.2 = shl i32 %conv6.i.i363.1.2, 1 *)
shls discard_36 v_shl_i_i364_1_2 v_conv6_i_i363_1_2 1;
(*   %conv7.i.i365.1.2 = trunc i32 %shl.i.i364.1.2 to i8 *)
split tmp_v_shl_i_i364_1_2 v_conv7_i_i365_1_2 v_shl_i_i364_1_2 8;
vpc v_conv7_i_i365_1_2@uint8 v_conv7_i_i365_1_2@uint32;
(*   %conv.i.i353.2.2 = zext i8 %conv5.i.i362.1.2 to i32 *)
cast v_conv_i_i353_2_2@uint32 v_conv5_i_i362_1_2@uint8;
(*   %and.i.i354.2.2 = and i32 %conv.i.i353.2.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i354_2_2 v_conv_i_i353_2_2 (0x1)@uint32;
(*   %conv1.i.i355.2.2 = zext i8 %conv7.i.i365.1.2 to i32 *)
cast v_conv1_i_i355_2_2@uint32 v_conv7_i_i365_1_2@uint8;
(*   %mul.i.i356.2.2 = mul nsw i32 %and.i.i354.2.2, %conv1.i.i355.2.2 *)
mul v_mul_i_i356_2_2 v_and_i_i354_2_2 v_conv1_i_i355_2_2;
(*   %conv2.i.i357.2.2 = zext i8 %conv3.i.i359.1.2 to i32 *)
cast v_conv2_i_i357_2_2@uint32 v_conv3_i_i359_1_2@uint8;
(*   %xor.i.i358.2.2 = xor i32 %conv2.i.i357.2.2, %mul.i.i356.2.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i358_2_2 v_conv2_i_i357_2_2 v_mul_i_i356_2_2;
(*   %conv3.i.i359.2.2 = trunc i32 %xor.i.i358.2.2 to i8 *)
split tmp_v_xor_i_i358_2_2 v_conv3_i_i359_2_2 v_xor_i_i358_2_2 8;
vpc v_conv3_i_i359_2_2@uint8 v_conv3_i_i359_2_2@uint32;
(*   %conv4.i.i360.2.2 = zext i8 %conv5.i.i362.1.2 to i32 *)
cast v_conv4_i_i360_2_2@uint32 v_conv5_i_i362_1_2@uint8;
(*   %shr.i.i361.2.2 = ashr i32 %conv4.i.i360.2.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i361_2_2 tmp_to_be_used v_conv4_i_i360_2_2 1;
(*   %conv5.i.i362.2.2 = trunc i32 %shr.i.i361.2.2 to i8 *)
split tmp_v_shr_i_i361_2_2 v_conv5_i_i362_2_2 v_shr_i_i361_2_2 8;
vpc v_conv5_i_i362_2_2@uint8 v_conv5_i_i362_2_2@uint32;
(*   %conv6.i.i363.2.2 = zext i8 %conv7.i.i365.1.2 to i32 *)
cast v_conv6_i_i363_2_2@uint32 v_conv7_i_i365_1_2@uint8;
(*   %shl.i.i364.2.2 = shl i32 %conv6.i.i363.2.2, 1 *)
shls discard_37 v_shl_i_i364_2_2 v_conv6_i_i363_2_2 1;
(*   %conv7.i.i365.2.2 = trunc i32 %shl.i.i364.2.2 to i8 *)
split tmp_v_shl_i_i364_2_2 v_conv7_i_i365_2_2 v_shl_i_i364_2_2 8;
vpc v_conv7_i_i365_2_2@uint8 v_conv7_i_i365_2_2@uint32;
(*   %conv.i.i353.3.2 = zext i8 %conv5.i.i362.2.2 to i32 *)
cast v_conv_i_i353_3_2@uint32 v_conv5_i_i362_2_2@uint8;
(*   %and.i.i354.3.2 = and i32 %conv.i.i353.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i354_3_2 v_conv_i_i353_3_2 (0x1)@uint32;
(*   %conv1.i.i355.3.2 = zext i8 %conv7.i.i365.2.2 to i32 *)
cast v_conv1_i_i355_3_2@uint32 v_conv7_i_i365_2_2@uint8;
(*   %mul.i.i356.3.2 = mul nsw i32 %and.i.i354.3.2, %conv1.i.i355.3.2 *)
mul v_mul_i_i356_3_2 v_and_i_i354_3_2 v_conv1_i_i355_3_2;
(*   %conv2.i.i357.3.2 = zext i8 %conv3.i.i359.2.2 to i32 *)
cast v_conv2_i_i357_3_2@uint32 v_conv3_i_i359_2_2@uint8;
(*   %xor.i.i358.3.2 = xor i32 %conv2.i.i357.3.2, %mul.i.i356.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i358_3_2 v_conv2_i_i357_3_2 v_mul_i_i356_3_2;
(*   %conv3.i.i359.3.2 = trunc i32 %xor.i.i358.3.2 to i8 *)
split tmp_v_xor_i_i358_3_2 v_conv3_i_i359_3_2 v_xor_i_i358_3_2 8;
vpc v_conv3_i_i359_3_2@uint8 v_conv3_i_i359_3_2@uint32;
(*   %conv4.i.i360.3.2 = zext i8 %conv5.i.i362.2.2 to i32 *)
cast v_conv4_i_i360_3_2@uint32 v_conv5_i_i362_2_2@uint8;
(*   %shr.i.i361.3.2 = ashr i32 %conv4.i.i360.3.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i361_3_2 tmp_to_be_used v_conv4_i_i360_3_2 1;
(*   %conv5.i.i362.3.2 = trunc i32 %shr.i.i361.3.2 to i8 *)
split tmp_v_shr_i_i361_3_2 v_conv5_i_i362_3_2 v_shr_i_i361_3_2 8;
vpc v_conv5_i_i362_3_2@uint8 v_conv5_i_i362_3_2@uint32;
(*   %conv6.i.i363.3.2 = zext i8 %conv7.i.i365.2.2 to i32 *)
cast v_conv6_i_i363_3_2@uint32 v_conv7_i_i365_2_2@uint8;
(*   %shl.i.i364.3.2 = shl i32 %conv6.i.i363.3.2, 1 *)
shls discard_38 v_shl_i_i364_3_2 v_conv6_i_i363_3_2 1;
(*   %conv7.i.i365.3.2 = trunc i32 %shl.i.i364.3.2 to i8 *)
split tmp_v_shl_i_i364_3_2 v_conv7_i_i365_3_2 v_shl_i_i364_3_2 8;
vpc v_conv7_i_i365_3_2@uint8 v_conv7_i_i365_3_2@uint32;
(*   %conv.i.i353.4.2 = zext i8 %conv5.i.i362.3.2 to i32 *)
cast v_conv_i_i353_4_2@uint32 v_conv5_i_i362_3_2@uint8;
(*   %and.i.i354.4.2 = and i32 %conv.i.i353.4.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i354_4_2 v_conv_i_i353_4_2 (0x1)@uint32;
(*   %conv1.i.i355.4.2 = zext i8 %conv7.i.i365.3.2 to i32 *)
cast v_conv1_i_i355_4_2@uint32 v_conv7_i_i365_3_2@uint8;
(*   %mul.i.i356.4.2 = mul nsw i32 %and.i.i354.4.2, %conv1.i.i355.4.2 *)
mul v_mul_i_i356_4_2 v_and_i_i354_4_2 v_conv1_i_i355_4_2;
(*   %conv2.i.i357.4.2 = zext i8 %conv3.i.i359.3.2 to i32 *)
cast v_conv2_i_i357_4_2@uint32 v_conv3_i_i359_3_2@uint8;
(*   %xor.i.i358.4.2 = xor i32 %conv2.i.i357.4.2, %mul.i.i356.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i358_4_2 v_conv2_i_i357_4_2 v_mul_i_i356_4_2;
(*   %conv3.i.i359.4.2 = trunc i32 %xor.i.i358.4.2 to i8 *)
split tmp_v_xor_i_i358_4_2 v_conv3_i_i359_4_2 v_xor_i_i358_4_2 8;
vpc v_conv3_i_i359_4_2@uint8 v_conv3_i_i359_4_2@uint32;
(*   %conv4.i.i360.4.2 = zext i8 %conv5.i.i362.3.2 to i32 *)
cast v_conv4_i_i360_4_2@uint32 v_conv5_i_i362_3_2@uint8;
(*   %shr.i.i361.4.2 = ashr i32 %conv4.i.i360.4.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i361_4_2 tmp_to_be_used v_conv4_i_i360_4_2 1;
(*   %conv5.i.i362.4.2 = trunc i32 %shr.i.i361.4.2 to i8 *)
split tmp_v_shr_i_i361_4_2 v_conv5_i_i362_4_2 v_shr_i_i361_4_2 8;
vpc v_conv5_i_i362_4_2@uint8 v_conv5_i_i362_4_2@uint32;
(*   %conv6.i.i363.4.2 = zext i8 %conv7.i.i365.3.2 to i32 *)
cast v_conv6_i_i363_4_2@uint32 v_conv7_i_i365_3_2@uint8;
(*   %shl.i.i364.4.2 = shl i32 %conv6.i.i363.4.2, 1 *)
shls discard_39 v_shl_i_i364_4_2 v_conv6_i_i363_4_2 1;
(*   %conv7.i.i365.4.2 = trunc i32 %shl.i.i364.4.2 to i8 *)
split tmp_v_shl_i_i364_4_2 v_conv7_i_i365_4_2 v_shl_i_i364_4_2 8;
vpc v_conv7_i_i365_4_2@uint8 v_conv7_i_i365_4_2@uint32;
(*   %conv.i.i353.5.2 = zext i8 %conv5.i.i362.4.2 to i32 *)
cast v_conv_i_i353_5_2@uint32 v_conv5_i_i362_4_2@uint8;
(*   %and.i.i354.5.2 = and i32 %conv.i.i353.5.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i354_5_2 v_conv_i_i353_5_2 (0x1)@uint32;
(*   %conv1.i.i355.5.2 = zext i8 %conv7.i.i365.4.2 to i32 *)
cast v_conv1_i_i355_5_2@uint32 v_conv7_i_i365_4_2@uint8;
(*   %mul.i.i356.5.2 = mul nsw i32 %and.i.i354.5.2, %conv1.i.i355.5.2 *)
mul v_mul_i_i356_5_2 v_and_i_i354_5_2 v_conv1_i_i355_5_2;
(*   %conv2.i.i357.5.2 = zext i8 %conv3.i.i359.4.2 to i32 *)
cast v_conv2_i_i357_5_2@uint32 v_conv3_i_i359_4_2@uint8;
(*   %xor.i.i358.5.2 = xor i32 %conv2.i.i357.5.2, %mul.i.i356.5.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i358_5_2 v_conv2_i_i357_5_2 v_mul_i_i356_5_2;
(*   %conv3.i.i359.5.2 = trunc i32 %xor.i.i358.5.2 to i8 *)
split tmp_v_xor_i_i358_5_2 v_conv3_i_i359_5_2 v_xor_i_i358_5_2 8;
vpc v_conv3_i_i359_5_2@uint8 v_conv3_i_i359_5_2@uint32;
(*   %conv4.i.i360.5.2 = zext i8 %conv5.i.i362.4.2 to i32 *)
cast v_conv4_i_i360_5_2@uint32 v_conv5_i_i362_4_2@uint8;
(*   %shr.i.i361.5.2 = ashr i32 %conv4.i.i360.5.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i361_5_2 tmp_to_be_used v_conv4_i_i360_5_2 1;
(*   %conv5.i.i362.5.2 = trunc i32 %shr.i.i361.5.2 to i8 *)
split tmp_v_shr_i_i361_5_2 v_conv5_i_i362_5_2 v_shr_i_i361_5_2 8;
vpc v_conv5_i_i362_5_2@uint8 v_conv5_i_i362_5_2@uint32;
(*   %conv6.i.i363.5.2 = zext i8 %conv7.i.i365.4.2 to i32 *)
cast v_conv6_i_i363_5_2@uint32 v_conv7_i_i365_4_2@uint8;
(*   %shl.i.i364.5.2 = shl i32 %conv6.i.i363.5.2, 1 *)
shls discard_40 v_shl_i_i364_5_2 v_conv6_i_i363_5_2 1;
(*   %conv7.i.i365.5.2 = trunc i32 %shl.i.i364.5.2 to i8 *)
split tmp_v_shl_i_i364_5_2 v_conv7_i_i365_5_2 v_shl_i_i364_5_2 8;
vpc v_conv7_i_i365_5_2@uint8 v_conv7_i_i365_5_2@uint32;
(*   %conv.i.i353.6.2 = zext i8 %conv5.i.i362.5.2 to i32 *)
cast v_conv_i_i353_6_2@uint32 v_conv5_i_i362_5_2@uint8;
(*   %and.i.i354.6.2 = and i32 %conv.i.i353.6.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i354_6_2 v_conv_i_i353_6_2 (0x1)@uint32;
(*   %conv1.i.i355.6.2 = zext i8 %conv7.i.i365.5.2 to i32 *)
cast v_conv1_i_i355_6_2@uint32 v_conv7_i_i365_5_2@uint8;
(*   %mul.i.i356.6.2 = mul nsw i32 %and.i.i354.6.2, %conv1.i.i355.6.2 *)
mul v_mul_i_i356_6_2 v_and_i_i354_6_2 v_conv1_i_i355_6_2;
(*   %conv2.i.i357.6.2 = zext i8 %conv3.i.i359.5.2 to i32 *)
cast v_conv2_i_i357_6_2@uint32 v_conv3_i_i359_5_2@uint8;
(*   %xor.i.i358.6.2 = xor i32 %conv2.i.i357.6.2, %mul.i.i356.6.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i358_6_2 v_conv2_i_i357_6_2 v_mul_i_i356_6_2;
(*   %conv3.i.i359.6.2 = trunc i32 %xor.i.i358.6.2 to i8 *)
split tmp_v_xor_i_i358_6_2 v_conv3_i_i359_6_2 v_xor_i_i358_6_2 8;
vpc v_conv3_i_i359_6_2@uint8 v_conv3_i_i359_6_2@uint32;
(*   %conv4.i.i360.6.2 = zext i8 %conv5.i.i362.5.2 to i32 *)
cast v_conv4_i_i360_6_2@uint32 v_conv5_i_i362_5_2@uint8;
(*   %shr.i.i361.6.2 = ashr i32 %conv4.i.i360.6.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i361_6_2 tmp_to_be_used v_conv4_i_i360_6_2 1;
(*   %conv5.i.i362.6.2 = trunc i32 %shr.i.i361.6.2 to i8 *)
split tmp_v_shr_i_i361_6_2 v_conv5_i_i362_6_2 v_shr_i_i361_6_2 8;
vpc v_conv5_i_i362_6_2@uint8 v_conv5_i_i362_6_2@uint32;
(*   %conv6.i.i363.6.2 = zext i8 %conv7.i.i365.5.2 to i32 *)
cast v_conv6_i_i363_6_2@uint32 v_conv7_i_i365_5_2@uint8;
(*   %shl.i.i364.6.2 = shl i32 %conv6.i.i363.6.2, 1 *)
shls discard_41 v_shl_i_i364_6_2 v_conv6_i_i363_6_2 1;
(*   %conv7.i.i365.6.2 = trunc i32 %shl.i.i364.6.2 to i8 *)
split tmp_v_shl_i_i364_6_2 v_conv7_i_i365_6_2 v_shl_i_i364_6_2 8;
vpc v_conv7_i_i365_6_2@uint8 v_conv7_i_i365_6_2@uint32;
(*   %conv.i.i353.7.2 = zext i8 %conv5.i.i362.6.2 to i32 *)
cast v_conv_i_i353_7_2@uint32 v_conv5_i_i362_6_2@uint8;
(*   %and.i.i354.7.2 = and i32 %conv.i.i353.7.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i354_7_2 v_conv_i_i353_7_2 (0x1)@uint32;
(*   %conv1.i.i355.7.2 = zext i8 %conv7.i.i365.6.2 to i32 *)
cast v_conv1_i_i355_7_2@uint32 v_conv7_i_i365_6_2@uint8;
(*   %mul.i.i356.7.2 = mul nsw i32 %and.i.i354.7.2, %conv1.i.i355.7.2 *)
mul v_mul_i_i356_7_2 v_and_i_i354_7_2 v_conv1_i_i355_7_2;
(*   %conv2.i.i357.7.2 = zext i8 %conv3.i.i359.6.2 to i32 *)
cast v_conv2_i_i357_7_2@uint32 v_conv3_i_i359_6_2@uint8;
(*   %xor.i.i358.7.2 = xor i32 %conv2.i.i357.7.2, %mul.i.i356.7.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i358_7_2 v_conv2_i_i357_7_2 v_mul_i_i356_7_2;
(*   %conv3.i.i359.7.2 = trunc i32 %xor.i.i358.7.2 to i8 *)
split tmp_v_xor_i_i358_7_2 v_conv3_i_i359_7_2 v_xor_i_i358_7_2 8;
vpc v_conv3_i_i359_7_2@uint8 v_conv3_i_i359_7_2@uint32;
(*   %arrayidx6.i369.2 = getelementptr inbounds i8, i8* %arraydecay26, i64 2 *)
(*   store i8 %conv3.i.i359.7.2, i8* %arrayidx6.i369.2, align 1 *)
mov ab1_2 v_conv3_i_i359_7_2;
(*   %arraydecay27 = getelementptr inbounds [3 x i8], [3 x i8]* %a1b, i64 0, i64 0 *)
(*   %arrayidx.i302 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %16 = load i8, i8* %arrayidx.i302, align 1 *)
mov v16 a_1;
(*   %17 = load i8, i8* %b, align 1 *)
mov v17 b_0;
(*   %conv.i.i310 = zext i8 %17 to i32 *)
cast v_conv_i_i310@uint32 v17@uint8;
(*   %and.i.i311 = and i32 %conv.i.i310, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i311 v_conv_i_i310 (0x1)@uint32;
(*   %conv1.i.i312 = zext i8 %16 to i32 *)
cast v_conv1_i_i312@uint32 v16@uint8;
(*   %mul.i.i313 = mul nsw i32 %and.i.i311, %conv1.i.i312 *)
mul v_mul_i_i313 v_and_i_i311 v_conv1_i_i312;
(*   %conv3.i.i316 = trunc i32 %mul.i.i313 to i8 *)
split tmp_v_mul_i_i313 v_conv3_i_i316 v_mul_i_i313 8;
vpc v_conv3_i_i316@uint8 v_conv3_i_i316@uint32;
(*   %conv4.i.i317 = zext i8 %17 to i32 *)
cast v_conv4_i_i317@uint32 v17@uint8;
(*   %shr.i.i318 = ashr i32 %conv4.i.i317, 1 *)
(* You may need to modify here *)
split v_shr_i_i318 tmp_to_be_used v_conv4_i_i317 1;
(*   %conv5.i.i319 = trunc i32 %shr.i.i318 to i8 *)
split tmp_v_shr_i_i318 v_conv5_i_i319 v_shr_i_i318 8;
vpc v_conv5_i_i319@uint8 v_conv5_i_i319@uint32;
(*   %conv6.i.i320 = zext i8 %16 to i32 *)
cast v_conv6_i_i320@uint32 v16@uint8;
(*   %shl.i.i321 = shl i32 %conv6.i.i320, 1 *)
shls discard_42 v_shl_i_i321 v_conv6_i_i320 1;
(*   %conv7.i.i322 = trunc i32 %shl.i.i321 to i8 *)
split tmp_v_shl_i_i321 v_conv7_i_i322 v_shl_i_i321 8;
vpc v_conv7_i_i322@uint8 v_conv7_i_i322@uint32;
(*   %conv.i.i310.1 = zext i8 %conv5.i.i319 to i32 *)
cast v_conv_i_i310_1@uint32 v_conv5_i_i319@uint8;
(*   %and.i.i311.1 = and i32 %conv.i.i310.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i311_1 v_conv_i_i310_1 (0x1)@uint32;
(*   %conv1.i.i312.1 = zext i8 %conv7.i.i322 to i32 *)
cast v_conv1_i_i312_1@uint32 v_conv7_i_i322@uint8;
(*   %mul.i.i313.1 = mul nsw i32 %and.i.i311.1, %conv1.i.i312.1 *)
mul v_mul_i_i313_1 v_and_i_i311_1 v_conv1_i_i312_1;
(*   %conv2.i.i314.1 = zext i8 %conv3.i.i316 to i32 *)
cast v_conv2_i_i314_1@uint32 v_conv3_i_i316@uint8;
(*   %xor.i.i315.1 = xor i32 %conv2.i.i314.1, %mul.i.i313.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i315_1 v_conv2_i_i314_1 v_mul_i_i313_1;
(*   %conv3.i.i316.1 = trunc i32 %xor.i.i315.1 to i8 *)
split tmp_v_xor_i_i315_1 v_conv3_i_i316_1 v_xor_i_i315_1 8;
vpc v_conv3_i_i316_1@uint8 v_conv3_i_i316_1@uint32;
(*   %conv4.i.i317.1 = zext i8 %conv5.i.i319 to i32 *)
cast v_conv4_i_i317_1@uint32 v_conv5_i_i319@uint8;
(*   %shr.i.i318.1 = ashr i32 %conv4.i.i317.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i318_1 tmp_to_be_used v_conv4_i_i317_1 1;
(*   %conv5.i.i319.1 = trunc i32 %shr.i.i318.1 to i8 *)
split tmp_v_shr_i_i318_1 v_conv5_i_i319_1 v_shr_i_i318_1 8;
vpc v_conv5_i_i319_1@uint8 v_conv5_i_i319_1@uint32;
(*   %conv6.i.i320.1 = zext i8 %conv7.i.i322 to i32 *)
cast v_conv6_i_i320_1@uint32 v_conv7_i_i322@uint8;
(*   %shl.i.i321.1 = shl i32 %conv6.i.i320.1, 1 *)
shls discard_43 v_shl_i_i321_1 v_conv6_i_i320_1 1;
(*   %conv7.i.i322.1 = trunc i32 %shl.i.i321.1 to i8 *)
split tmp_v_shl_i_i321_1 v_conv7_i_i322_1 v_shl_i_i321_1 8;
vpc v_conv7_i_i322_1@uint8 v_conv7_i_i322_1@uint32;
(*   %conv.i.i310.2 = zext i8 %conv5.i.i319.1 to i32 *)
cast v_conv_i_i310_2@uint32 v_conv5_i_i319_1@uint8;
(*   %and.i.i311.2 = and i32 %conv.i.i310.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i311_2 v_conv_i_i310_2 (0x1)@uint32;
(*   %conv1.i.i312.2 = zext i8 %conv7.i.i322.1 to i32 *)
cast v_conv1_i_i312_2@uint32 v_conv7_i_i322_1@uint8;
(*   %mul.i.i313.2 = mul nsw i32 %and.i.i311.2, %conv1.i.i312.2 *)
mul v_mul_i_i313_2 v_and_i_i311_2 v_conv1_i_i312_2;
(*   %conv2.i.i314.2 = zext i8 %conv3.i.i316.1 to i32 *)
cast v_conv2_i_i314_2@uint32 v_conv3_i_i316_1@uint8;
(*   %xor.i.i315.2 = xor i32 %conv2.i.i314.2, %mul.i.i313.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i315_2 v_conv2_i_i314_2 v_mul_i_i313_2;
(*   %conv3.i.i316.2 = trunc i32 %xor.i.i315.2 to i8 *)
split tmp_v_xor_i_i315_2 v_conv3_i_i316_2 v_xor_i_i315_2 8;
vpc v_conv3_i_i316_2@uint8 v_conv3_i_i316_2@uint32;
(*   %conv4.i.i317.2 = zext i8 %conv5.i.i319.1 to i32 *)
cast v_conv4_i_i317_2@uint32 v_conv5_i_i319_1@uint8;
(*   %shr.i.i318.2 = ashr i32 %conv4.i.i317.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i318_2 tmp_to_be_used v_conv4_i_i317_2 1;
(*   %conv5.i.i319.2 = trunc i32 %shr.i.i318.2 to i8 *)
split tmp_v_shr_i_i318_2 v_conv5_i_i319_2 v_shr_i_i318_2 8;
vpc v_conv5_i_i319_2@uint8 v_conv5_i_i319_2@uint32;
(*   %conv6.i.i320.2 = zext i8 %conv7.i.i322.1 to i32 *)
cast v_conv6_i_i320_2@uint32 v_conv7_i_i322_1@uint8;
(*   %shl.i.i321.2 = shl i32 %conv6.i.i320.2, 1 *)
shls discard_44 v_shl_i_i321_2 v_conv6_i_i320_2 1;
(*   %conv7.i.i322.2 = trunc i32 %shl.i.i321.2 to i8 *)
split tmp_v_shl_i_i321_2 v_conv7_i_i322_2 v_shl_i_i321_2 8;
vpc v_conv7_i_i322_2@uint8 v_conv7_i_i322_2@uint32;
(*   %conv.i.i310.3 = zext i8 %conv5.i.i319.2 to i32 *)
cast v_conv_i_i310_3@uint32 v_conv5_i_i319_2@uint8;
(*   %and.i.i311.3 = and i32 %conv.i.i310.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i311_3 v_conv_i_i310_3 (0x1)@uint32;
(*   %conv1.i.i312.3 = zext i8 %conv7.i.i322.2 to i32 *)
cast v_conv1_i_i312_3@uint32 v_conv7_i_i322_2@uint8;
(*   %mul.i.i313.3 = mul nsw i32 %and.i.i311.3, %conv1.i.i312.3 *)
mul v_mul_i_i313_3 v_and_i_i311_3 v_conv1_i_i312_3;
(*   %conv2.i.i314.3 = zext i8 %conv3.i.i316.2 to i32 *)
cast v_conv2_i_i314_3@uint32 v_conv3_i_i316_2@uint8;
(*   %xor.i.i315.3 = xor i32 %conv2.i.i314.3, %mul.i.i313.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i315_3 v_conv2_i_i314_3 v_mul_i_i313_3;
(*   %conv3.i.i316.3 = trunc i32 %xor.i.i315.3 to i8 *)
split tmp_v_xor_i_i315_3 v_conv3_i_i316_3 v_xor_i_i315_3 8;
vpc v_conv3_i_i316_3@uint8 v_conv3_i_i316_3@uint32;
(*   %conv4.i.i317.3 = zext i8 %conv5.i.i319.2 to i32 *)
cast v_conv4_i_i317_3@uint32 v_conv5_i_i319_2@uint8;
(*   %shr.i.i318.3 = ashr i32 %conv4.i.i317.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i318_3 tmp_to_be_used v_conv4_i_i317_3 1;
(*   %conv5.i.i319.3 = trunc i32 %shr.i.i318.3 to i8 *)
split tmp_v_shr_i_i318_3 v_conv5_i_i319_3 v_shr_i_i318_3 8;
vpc v_conv5_i_i319_3@uint8 v_conv5_i_i319_3@uint32;
(*   %conv6.i.i320.3 = zext i8 %conv7.i.i322.2 to i32 *)
cast v_conv6_i_i320_3@uint32 v_conv7_i_i322_2@uint8;
(*   %shl.i.i321.3 = shl i32 %conv6.i.i320.3, 1 *)
shls discard_45 v_shl_i_i321_3 v_conv6_i_i320_3 1;
(*   %conv7.i.i322.3 = trunc i32 %shl.i.i321.3 to i8 *)
split tmp_v_shl_i_i321_3 v_conv7_i_i322_3 v_shl_i_i321_3 8;
vpc v_conv7_i_i322_3@uint8 v_conv7_i_i322_3@uint32;
(*   %conv.i.i310.4 = zext i8 %conv5.i.i319.3 to i32 *)
cast v_conv_i_i310_4@uint32 v_conv5_i_i319_3@uint8;
(*   %and.i.i311.4 = and i32 %conv.i.i310.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i311_4 v_conv_i_i310_4 (0x1)@uint32;
(*   %conv1.i.i312.4 = zext i8 %conv7.i.i322.3 to i32 *)
cast v_conv1_i_i312_4@uint32 v_conv7_i_i322_3@uint8;
(*   %mul.i.i313.4 = mul nsw i32 %and.i.i311.4, %conv1.i.i312.4 *)
mul v_mul_i_i313_4 v_and_i_i311_4 v_conv1_i_i312_4;
(*   %conv2.i.i314.4 = zext i8 %conv3.i.i316.3 to i32 *)
cast v_conv2_i_i314_4@uint32 v_conv3_i_i316_3@uint8;
(*   %xor.i.i315.4 = xor i32 %conv2.i.i314.4, %mul.i.i313.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i315_4 v_conv2_i_i314_4 v_mul_i_i313_4;
(*   %conv3.i.i316.4 = trunc i32 %xor.i.i315.4 to i8 *)
split tmp_v_xor_i_i315_4 v_conv3_i_i316_4 v_xor_i_i315_4 8;
vpc v_conv3_i_i316_4@uint8 v_conv3_i_i316_4@uint32;
(*   %conv4.i.i317.4 = zext i8 %conv5.i.i319.3 to i32 *)
cast v_conv4_i_i317_4@uint32 v_conv5_i_i319_3@uint8;
(*   %shr.i.i318.4 = ashr i32 %conv4.i.i317.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i318_4 tmp_to_be_used v_conv4_i_i317_4 1;
(*   %conv5.i.i319.4 = trunc i32 %shr.i.i318.4 to i8 *)
split tmp_v_shr_i_i318_4 v_conv5_i_i319_4 v_shr_i_i318_4 8;
vpc v_conv5_i_i319_4@uint8 v_conv5_i_i319_4@uint32;
(*   %conv6.i.i320.4 = zext i8 %conv7.i.i322.3 to i32 *)
cast v_conv6_i_i320_4@uint32 v_conv7_i_i322_3@uint8;
(*   %shl.i.i321.4 = shl i32 %conv6.i.i320.4, 1 *)
shls discard_46 v_shl_i_i321_4 v_conv6_i_i320_4 1;
(*   %conv7.i.i322.4 = trunc i32 %shl.i.i321.4 to i8 *)
split tmp_v_shl_i_i321_4 v_conv7_i_i322_4 v_shl_i_i321_4 8;
vpc v_conv7_i_i322_4@uint8 v_conv7_i_i322_4@uint32;
(*   %conv.i.i310.5 = zext i8 %conv5.i.i319.4 to i32 *)
cast v_conv_i_i310_5@uint32 v_conv5_i_i319_4@uint8;
(*   %and.i.i311.5 = and i32 %conv.i.i310.5, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i311_5 v_conv_i_i310_5 (0x1)@uint32;
(*   %conv1.i.i312.5 = zext i8 %conv7.i.i322.4 to i32 *)
cast v_conv1_i_i312_5@uint32 v_conv7_i_i322_4@uint8;
(*   %mul.i.i313.5 = mul nsw i32 %and.i.i311.5, %conv1.i.i312.5 *)
mul v_mul_i_i313_5 v_and_i_i311_5 v_conv1_i_i312_5;
(*   %conv2.i.i314.5 = zext i8 %conv3.i.i316.4 to i32 *)
cast v_conv2_i_i314_5@uint32 v_conv3_i_i316_4@uint8;
(*   %xor.i.i315.5 = xor i32 %conv2.i.i314.5, %mul.i.i313.5 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i315_5 v_conv2_i_i314_5 v_mul_i_i313_5;
(*   %conv3.i.i316.5 = trunc i32 %xor.i.i315.5 to i8 *)
split tmp_v_xor_i_i315_5 v_conv3_i_i316_5 v_xor_i_i315_5 8;
vpc v_conv3_i_i316_5@uint8 v_conv3_i_i316_5@uint32;
(*   %conv4.i.i317.5 = zext i8 %conv5.i.i319.4 to i32 *)
cast v_conv4_i_i317_5@uint32 v_conv5_i_i319_4@uint8;
(*   %shr.i.i318.5 = ashr i32 %conv4.i.i317.5, 1 *)
(* You may need to modify here *)
split v_shr_i_i318_5 tmp_to_be_used v_conv4_i_i317_5 1;
(*   %conv5.i.i319.5 = trunc i32 %shr.i.i318.5 to i8 *)
split tmp_v_shr_i_i318_5 v_conv5_i_i319_5 v_shr_i_i318_5 8;
vpc v_conv5_i_i319_5@uint8 v_conv5_i_i319_5@uint32;
(*   %conv6.i.i320.5 = zext i8 %conv7.i.i322.4 to i32 *)
cast v_conv6_i_i320_5@uint32 v_conv7_i_i322_4@uint8;
(*   %shl.i.i321.5 = shl i32 %conv6.i.i320.5, 1 *)
shls discard_47 v_shl_i_i321_5 v_conv6_i_i320_5 1;
(*   %conv7.i.i322.5 = trunc i32 %shl.i.i321.5 to i8 *)
split tmp_v_shl_i_i321_5 v_conv7_i_i322_5 v_shl_i_i321_5 8;
vpc v_conv7_i_i322_5@uint8 v_conv7_i_i322_5@uint32;
(*   %conv.i.i310.6 = zext i8 %conv5.i.i319.5 to i32 *)
cast v_conv_i_i310_6@uint32 v_conv5_i_i319_5@uint8;
(*   %and.i.i311.6 = and i32 %conv.i.i310.6, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i311_6 v_conv_i_i310_6 (0x1)@uint32;
(*   %conv1.i.i312.6 = zext i8 %conv7.i.i322.5 to i32 *)
cast v_conv1_i_i312_6@uint32 v_conv7_i_i322_5@uint8;
(*   %mul.i.i313.6 = mul nsw i32 %and.i.i311.6, %conv1.i.i312.6 *)
mul v_mul_i_i313_6 v_and_i_i311_6 v_conv1_i_i312_6;
(*   %conv2.i.i314.6 = zext i8 %conv3.i.i316.5 to i32 *)
cast v_conv2_i_i314_6@uint32 v_conv3_i_i316_5@uint8;
(*   %xor.i.i315.6 = xor i32 %conv2.i.i314.6, %mul.i.i313.6 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i315_6 v_conv2_i_i314_6 v_mul_i_i313_6;
(*   %conv3.i.i316.6 = trunc i32 %xor.i.i315.6 to i8 *)
split tmp_v_xor_i_i315_6 v_conv3_i_i316_6 v_xor_i_i315_6 8;
vpc v_conv3_i_i316_6@uint8 v_conv3_i_i316_6@uint32;
(*   %conv4.i.i317.6 = zext i8 %conv5.i.i319.5 to i32 *)
cast v_conv4_i_i317_6@uint32 v_conv5_i_i319_5@uint8;
(*   %shr.i.i318.6 = ashr i32 %conv4.i.i317.6, 1 *)
(* You may need to modify here *)
split v_shr_i_i318_6 tmp_to_be_used v_conv4_i_i317_6 1;
(*   %conv5.i.i319.6 = trunc i32 %shr.i.i318.6 to i8 *)
split tmp_v_shr_i_i318_6 v_conv5_i_i319_6 v_shr_i_i318_6 8;
vpc v_conv5_i_i319_6@uint8 v_conv5_i_i319_6@uint32;
(*   %conv6.i.i320.6 = zext i8 %conv7.i.i322.5 to i32 *)
cast v_conv6_i_i320_6@uint32 v_conv7_i_i322_5@uint8;
(*   %shl.i.i321.6 = shl i32 %conv6.i.i320.6, 1 *)
shls discard_48 v_shl_i_i321_6 v_conv6_i_i320_6 1;
(*   %conv7.i.i322.6 = trunc i32 %shl.i.i321.6 to i8 *)
split tmp_v_shl_i_i321_6 v_conv7_i_i322_6 v_shl_i_i321_6 8;
vpc v_conv7_i_i322_6@uint8 v_conv7_i_i322_6@uint32;
(*   %conv.i.i310.7 = zext i8 %conv5.i.i319.6 to i32 *)
cast v_conv_i_i310_7@uint32 v_conv5_i_i319_6@uint8;
(*   %and.i.i311.7 = and i32 %conv.i.i310.7, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i311_7 v_conv_i_i310_7 (0x1)@uint32;
(*   %conv1.i.i312.7 = zext i8 %conv7.i.i322.6 to i32 *)
cast v_conv1_i_i312_7@uint32 v_conv7_i_i322_6@uint8;
(*   %mul.i.i313.7 = mul nsw i32 %and.i.i311.7, %conv1.i.i312.7 *)
mul v_mul_i_i313_7 v_and_i_i311_7 v_conv1_i_i312_7;
(*   %conv2.i.i314.7 = zext i8 %conv3.i.i316.6 to i32 *)
cast v_conv2_i_i314_7@uint32 v_conv3_i_i316_6@uint8;
(*   %xor.i.i315.7 = xor i32 %conv2.i.i314.7, %mul.i.i313.7 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i315_7 v_conv2_i_i314_7 v_mul_i_i313_7;
(*   %conv3.i.i316.7 = trunc i32 %xor.i.i315.7 to i8 *)
split tmp_v_xor_i_i315_7 v_conv3_i_i316_7 v_xor_i_i315_7 8;
vpc v_conv3_i_i316_7@uint8 v_conv3_i_i316_7@uint32;
(*   store i8 %conv3.i.i316.7, i8* %arraydecay27, align 1 *)
mov a1b_0 v_conv3_i_i316_7;
(*   %arrayidx.i302.1 = getelementptr inbounds i8, i8* %a, i64 2 *)
(*   %18 = load i8, i8* %arrayidx.i302.1, align 1 *)
mov v18 a_2;
(*   %arrayidx4.i306.1 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %19 = load i8, i8* %arrayidx4.i306.1, align 1 *)
mov v19 b_1;
(*   %conv.i.i310.1155 = zext i8 %19 to i32 *)
cast v_conv_i_i310_1155@uint32 v19@uint8;
(*   %and.i.i311.1156 = and i32 %conv.i.i310.1155, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i311_1156 v_conv_i_i310_1155 (0x1)@uint32;
(*   %conv1.i.i312.1157 = zext i8 %18 to i32 *)
cast v_conv1_i_i312_1157@uint32 v18@uint8;
(*   %mul.i.i313.1158 = mul nsw i32 %and.i.i311.1156, %conv1.i.i312.1157 *)
mul v_mul_i_i313_1158 v_and_i_i311_1156 v_conv1_i_i312_1157;
(*   %conv3.i.i316.1159 = trunc i32 %mul.i.i313.1158 to i8 *)
split tmp_v_mul_i_i313_1158 v_conv3_i_i316_1159 v_mul_i_i313_1158 8;
vpc v_conv3_i_i316_1159@uint8 v_conv3_i_i316_1159@uint32;
(*   %conv4.i.i317.1160 = zext i8 %19 to i32 *)
cast v_conv4_i_i317_1160@uint32 v19@uint8;
(*   %shr.i.i318.1161 = ashr i32 %conv4.i.i317.1160, 1 *)
(* You may need to modify here *)
split v_shr_i_i318_1161 tmp_to_be_used v_conv4_i_i317_1160 1;
(*   %conv5.i.i319.1162 = trunc i32 %shr.i.i318.1161 to i8 *)
split tmp_v_shr_i_i318_1161 v_conv5_i_i319_1162 v_shr_i_i318_1161 8;
vpc v_conv5_i_i319_1162@uint8 v_conv5_i_i319_1162@uint32;
(*   %conv6.i.i320.1163 = zext i8 %18 to i32 *)
cast v_conv6_i_i320_1163@uint32 v18@uint8;
(*   %shl.i.i321.1164 = shl i32 %conv6.i.i320.1163, 1 *)
shls discard_49 v_shl_i_i321_1164 v_conv6_i_i320_1163 1;
(*   %conv7.i.i322.1165 = trunc i32 %shl.i.i321.1164 to i8 *)
split tmp_v_shl_i_i321_1164 v_conv7_i_i322_1165 v_shl_i_i321_1164 8;
vpc v_conv7_i_i322_1165@uint8 v_conv7_i_i322_1165@uint32;
(*   %conv.i.i310.1.1 = zext i8 %conv5.i.i319.1162 to i32 *)
cast v_conv_i_i310_1_1@uint32 v_conv5_i_i319_1162@uint8;
(*   %and.i.i311.1.1 = and i32 %conv.i.i310.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i311_1_1 v_conv_i_i310_1_1 (0x1)@uint32;
(*   %conv1.i.i312.1.1 = zext i8 %conv7.i.i322.1165 to i32 *)
cast v_conv1_i_i312_1_1@uint32 v_conv7_i_i322_1165@uint8;
(*   %mul.i.i313.1.1 = mul nsw i32 %and.i.i311.1.1, %conv1.i.i312.1.1 *)
mul v_mul_i_i313_1_1 v_and_i_i311_1_1 v_conv1_i_i312_1_1;
(*   %conv2.i.i314.1.1 = zext i8 %conv3.i.i316.1159 to i32 *)
cast v_conv2_i_i314_1_1@uint32 v_conv3_i_i316_1159@uint8;
(*   %xor.i.i315.1.1 = xor i32 %conv2.i.i314.1.1, %mul.i.i313.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i315_1_1 v_conv2_i_i314_1_1 v_mul_i_i313_1_1;
(*   %conv3.i.i316.1.1 = trunc i32 %xor.i.i315.1.1 to i8 *)
split tmp_v_xor_i_i315_1_1 v_conv3_i_i316_1_1 v_xor_i_i315_1_1 8;
vpc v_conv3_i_i316_1_1@uint8 v_conv3_i_i316_1_1@uint32;
(*   %conv4.i.i317.1.1 = zext i8 %conv5.i.i319.1162 to i32 *)
cast v_conv4_i_i317_1_1@uint32 v_conv5_i_i319_1162@uint8;
(*   %shr.i.i318.1.1 = ashr i32 %conv4.i.i317.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i318_1_1 tmp_to_be_used v_conv4_i_i317_1_1 1;
(*   %conv5.i.i319.1.1 = trunc i32 %shr.i.i318.1.1 to i8 *)
split tmp_v_shr_i_i318_1_1 v_conv5_i_i319_1_1 v_shr_i_i318_1_1 8;
vpc v_conv5_i_i319_1_1@uint8 v_conv5_i_i319_1_1@uint32;
(*   %conv6.i.i320.1.1 = zext i8 %conv7.i.i322.1165 to i32 *)
cast v_conv6_i_i320_1_1@uint32 v_conv7_i_i322_1165@uint8;
(*   %shl.i.i321.1.1 = shl i32 %conv6.i.i320.1.1, 1 *)
shls discard_50 v_shl_i_i321_1_1 v_conv6_i_i320_1_1 1;
(*   %conv7.i.i322.1.1 = trunc i32 %shl.i.i321.1.1 to i8 *)
split tmp_v_shl_i_i321_1_1 v_conv7_i_i322_1_1 v_shl_i_i321_1_1 8;
vpc v_conv7_i_i322_1_1@uint8 v_conv7_i_i322_1_1@uint32;
(*   %conv.i.i310.2.1 = zext i8 %conv5.i.i319.1.1 to i32 *)
cast v_conv_i_i310_2_1@uint32 v_conv5_i_i319_1_1@uint8;
(*   %and.i.i311.2.1 = and i32 %conv.i.i310.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i311_2_1 v_conv_i_i310_2_1 (0x1)@uint32;
(*   %conv1.i.i312.2.1 = zext i8 %conv7.i.i322.1.1 to i32 *)
cast v_conv1_i_i312_2_1@uint32 v_conv7_i_i322_1_1@uint8;
(*   %mul.i.i313.2.1 = mul nsw i32 %and.i.i311.2.1, %conv1.i.i312.2.1 *)
mul v_mul_i_i313_2_1 v_and_i_i311_2_1 v_conv1_i_i312_2_1;
(*   %conv2.i.i314.2.1 = zext i8 %conv3.i.i316.1.1 to i32 *)
cast v_conv2_i_i314_2_1@uint32 v_conv3_i_i316_1_1@uint8;
(*   %xor.i.i315.2.1 = xor i32 %conv2.i.i314.2.1, %mul.i.i313.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i315_2_1 v_conv2_i_i314_2_1 v_mul_i_i313_2_1;
(*   %conv3.i.i316.2.1 = trunc i32 %xor.i.i315.2.1 to i8 *)
split tmp_v_xor_i_i315_2_1 v_conv3_i_i316_2_1 v_xor_i_i315_2_1 8;
vpc v_conv3_i_i316_2_1@uint8 v_conv3_i_i316_2_1@uint32;
(*   %conv4.i.i317.2.1 = zext i8 %conv5.i.i319.1.1 to i32 *)
cast v_conv4_i_i317_2_1@uint32 v_conv5_i_i319_1_1@uint8;
(*   %shr.i.i318.2.1 = ashr i32 %conv4.i.i317.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i318_2_1 tmp_to_be_used v_conv4_i_i317_2_1 1;
(*   %conv5.i.i319.2.1 = trunc i32 %shr.i.i318.2.1 to i8 *)
split tmp_v_shr_i_i318_2_1 v_conv5_i_i319_2_1 v_shr_i_i318_2_1 8;
vpc v_conv5_i_i319_2_1@uint8 v_conv5_i_i319_2_1@uint32;
(*   %conv6.i.i320.2.1 = zext i8 %conv7.i.i322.1.1 to i32 *)
cast v_conv6_i_i320_2_1@uint32 v_conv7_i_i322_1_1@uint8;
(*   %shl.i.i321.2.1 = shl i32 %conv6.i.i320.2.1, 1 *)
shls discard_51 v_shl_i_i321_2_1 v_conv6_i_i320_2_1 1;
(*   %conv7.i.i322.2.1 = trunc i32 %shl.i.i321.2.1 to i8 *)
split tmp_v_shl_i_i321_2_1 v_conv7_i_i322_2_1 v_shl_i_i321_2_1 8;
vpc v_conv7_i_i322_2_1@uint8 v_conv7_i_i322_2_1@uint32;
(*   %conv.i.i310.3.1 = zext i8 %conv5.i.i319.2.1 to i32 *)
cast v_conv_i_i310_3_1@uint32 v_conv5_i_i319_2_1@uint8;
(*   %and.i.i311.3.1 = and i32 %conv.i.i310.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i311_3_1 v_conv_i_i310_3_1 (0x1)@uint32;
(*   %conv1.i.i312.3.1 = zext i8 %conv7.i.i322.2.1 to i32 *)
cast v_conv1_i_i312_3_1@uint32 v_conv7_i_i322_2_1@uint8;
(*   %mul.i.i313.3.1 = mul nsw i32 %and.i.i311.3.1, %conv1.i.i312.3.1 *)
mul v_mul_i_i313_3_1 v_and_i_i311_3_1 v_conv1_i_i312_3_1;
(*   %conv2.i.i314.3.1 = zext i8 %conv3.i.i316.2.1 to i32 *)
cast v_conv2_i_i314_3_1@uint32 v_conv3_i_i316_2_1@uint8;
(*   %xor.i.i315.3.1 = xor i32 %conv2.i.i314.3.1, %mul.i.i313.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i315_3_1 v_conv2_i_i314_3_1 v_mul_i_i313_3_1;
(*   %conv3.i.i316.3.1 = trunc i32 %xor.i.i315.3.1 to i8 *)
split tmp_v_xor_i_i315_3_1 v_conv3_i_i316_3_1 v_xor_i_i315_3_1 8;
vpc v_conv3_i_i316_3_1@uint8 v_conv3_i_i316_3_1@uint32;
(*   %conv4.i.i317.3.1 = zext i8 %conv5.i.i319.2.1 to i32 *)
cast v_conv4_i_i317_3_1@uint32 v_conv5_i_i319_2_1@uint8;
(*   %shr.i.i318.3.1 = ashr i32 %conv4.i.i317.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i318_3_1 tmp_to_be_used v_conv4_i_i317_3_1 1;
(*   %conv5.i.i319.3.1 = trunc i32 %shr.i.i318.3.1 to i8 *)
split tmp_v_shr_i_i318_3_1 v_conv5_i_i319_3_1 v_shr_i_i318_3_1 8;
vpc v_conv5_i_i319_3_1@uint8 v_conv5_i_i319_3_1@uint32;
(*   %conv6.i.i320.3.1 = zext i8 %conv7.i.i322.2.1 to i32 *)
cast v_conv6_i_i320_3_1@uint32 v_conv7_i_i322_2_1@uint8;
(*   %shl.i.i321.3.1 = shl i32 %conv6.i.i320.3.1, 1 *)
shls discard_52 v_shl_i_i321_3_1 v_conv6_i_i320_3_1 1;
(*   %conv7.i.i322.3.1 = trunc i32 %shl.i.i321.3.1 to i8 *)
split tmp_v_shl_i_i321_3_1 v_conv7_i_i322_3_1 v_shl_i_i321_3_1 8;
vpc v_conv7_i_i322_3_1@uint8 v_conv7_i_i322_3_1@uint32;
(*   %conv.i.i310.4.1 = zext i8 %conv5.i.i319.3.1 to i32 *)
cast v_conv_i_i310_4_1@uint32 v_conv5_i_i319_3_1@uint8;
(*   %and.i.i311.4.1 = and i32 %conv.i.i310.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i311_4_1 v_conv_i_i310_4_1 (0x1)@uint32;
(*   %conv1.i.i312.4.1 = zext i8 %conv7.i.i322.3.1 to i32 *)
cast v_conv1_i_i312_4_1@uint32 v_conv7_i_i322_3_1@uint8;
(*   %mul.i.i313.4.1 = mul nsw i32 %and.i.i311.4.1, %conv1.i.i312.4.1 *)
mul v_mul_i_i313_4_1 v_and_i_i311_4_1 v_conv1_i_i312_4_1;
(*   %conv2.i.i314.4.1 = zext i8 %conv3.i.i316.3.1 to i32 *)
cast v_conv2_i_i314_4_1@uint32 v_conv3_i_i316_3_1@uint8;
(*   %xor.i.i315.4.1 = xor i32 %conv2.i.i314.4.1, %mul.i.i313.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i315_4_1 v_conv2_i_i314_4_1 v_mul_i_i313_4_1;
(*   %conv3.i.i316.4.1 = trunc i32 %xor.i.i315.4.1 to i8 *)
split tmp_v_xor_i_i315_4_1 v_conv3_i_i316_4_1 v_xor_i_i315_4_1 8;
vpc v_conv3_i_i316_4_1@uint8 v_conv3_i_i316_4_1@uint32;
(*   %conv4.i.i317.4.1 = zext i8 %conv5.i.i319.3.1 to i32 *)
cast v_conv4_i_i317_4_1@uint32 v_conv5_i_i319_3_1@uint8;
(*   %shr.i.i318.4.1 = ashr i32 %conv4.i.i317.4.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i318_4_1 tmp_to_be_used v_conv4_i_i317_4_1 1;
(*   %conv5.i.i319.4.1 = trunc i32 %shr.i.i318.4.1 to i8 *)
split tmp_v_shr_i_i318_4_1 v_conv5_i_i319_4_1 v_shr_i_i318_4_1 8;
vpc v_conv5_i_i319_4_1@uint8 v_conv5_i_i319_4_1@uint32;
(*   %conv6.i.i320.4.1 = zext i8 %conv7.i.i322.3.1 to i32 *)
cast v_conv6_i_i320_4_1@uint32 v_conv7_i_i322_3_1@uint8;
(*   %shl.i.i321.4.1 = shl i32 %conv6.i.i320.4.1, 1 *)
shls discard_53 v_shl_i_i321_4_1 v_conv6_i_i320_4_1 1;
(*   %conv7.i.i322.4.1 = trunc i32 %shl.i.i321.4.1 to i8 *)
split tmp_v_shl_i_i321_4_1 v_conv7_i_i322_4_1 v_shl_i_i321_4_1 8;
vpc v_conv7_i_i322_4_1@uint8 v_conv7_i_i322_4_1@uint32;
(*   %conv.i.i310.5.1 = zext i8 %conv5.i.i319.4.1 to i32 *)
cast v_conv_i_i310_5_1@uint32 v_conv5_i_i319_4_1@uint8;
(*   %and.i.i311.5.1 = and i32 %conv.i.i310.5.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i311_5_1 v_conv_i_i310_5_1 (0x1)@uint32;
(*   %conv1.i.i312.5.1 = zext i8 %conv7.i.i322.4.1 to i32 *)
cast v_conv1_i_i312_5_1@uint32 v_conv7_i_i322_4_1@uint8;
(*   %mul.i.i313.5.1 = mul nsw i32 %and.i.i311.5.1, %conv1.i.i312.5.1 *)
mul v_mul_i_i313_5_1 v_and_i_i311_5_1 v_conv1_i_i312_5_1;
(*   %conv2.i.i314.5.1 = zext i8 %conv3.i.i316.4.1 to i32 *)
cast v_conv2_i_i314_5_1@uint32 v_conv3_i_i316_4_1@uint8;
(*   %xor.i.i315.5.1 = xor i32 %conv2.i.i314.5.1, %mul.i.i313.5.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i315_5_1 v_conv2_i_i314_5_1 v_mul_i_i313_5_1;
(*   %conv3.i.i316.5.1 = trunc i32 %xor.i.i315.5.1 to i8 *)
split tmp_v_xor_i_i315_5_1 v_conv3_i_i316_5_1 v_xor_i_i315_5_1 8;
vpc v_conv3_i_i316_5_1@uint8 v_conv3_i_i316_5_1@uint32;
(*   %conv4.i.i317.5.1 = zext i8 %conv5.i.i319.4.1 to i32 *)
cast v_conv4_i_i317_5_1@uint32 v_conv5_i_i319_4_1@uint8;
(*   %shr.i.i318.5.1 = ashr i32 %conv4.i.i317.5.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i318_5_1 tmp_to_be_used v_conv4_i_i317_5_1 1;
(*   %conv5.i.i319.5.1 = trunc i32 %shr.i.i318.5.1 to i8 *)
split tmp_v_shr_i_i318_5_1 v_conv5_i_i319_5_1 v_shr_i_i318_5_1 8;
vpc v_conv5_i_i319_5_1@uint8 v_conv5_i_i319_5_1@uint32;
(*   %conv6.i.i320.5.1 = zext i8 %conv7.i.i322.4.1 to i32 *)
cast v_conv6_i_i320_5_1@uint32 v_conv7_i_i322_4_1@uint8;
(*   %shl.i.i321.5.1 = shl i32 %conv6.i.i320.5.1, 1 *)
shls discard_54 v_shl_i_i321_5_1 v_conv6_i_i320_5_1 1;
(*   %conv7.i.i322.5.1 = trunc i32 %shl.i.i321.5.1 to i8 *)
split tmp_v_shl_i_i321_5_1 v_conv7_i_i322_5_1 v_shl_i_i321_5_1 8;
vpc v_conv7_i_i322_5_1@uint8 v_conv7_i_i322_5_1@uint32;
(*   %conv.i.i310.6.1 = zext i8 %conv5.i.i319.5.1 to i32 *)
cast v_conv_i_i310_6_1@uint32 v_conv5_i_i319_5_1@uint8;
(*   %and.i.i311.6.1 = and i32 %conv.i.i310.6.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i311_6_1 v_conv_i_i310_6_1 (0x1)@uint32;
(*   %conv1.i.i312.6.1 = zext i8 %conv7.i.i322.5.1 to i32 *)
cast v_conv1_i_i312_6_1@uint32 v_conv7_i_i322_5_1@uint8;
(*   %mul.i.i313.6.1 = mul nsw i32 %and.i.i311.6.1, %conv1.i.i312.6.1 *)
mul v_mul_i_i313_6_1 v_and_i_i311_6_1 v_conv1_i_i312_6_1;
(*   %conv2.i.i314.6.1 = zext i8 %conv3.i.i316.5.1 to i32 *)
cast v_conv2_i_i314_6_1@uint32 v_conv3_i_i316_5_1@uint8;
(*   %xor.i.i315.6.1 = xor i32 %conv2.i.i314.6.1, %mul.i.i313.6.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i315_6_1 v_conv2_i_i314_6_1 v_mul_i_i313_6_1;
(*   %conv3.i.i316.6.1 = trunc i32 %xor.i.i315.6.1 to i8 *)
split tmp_v_xor_i_i315_6_1 v_conv3_i_i316_6_1 v_xor_i_i315_6_1 8;
vpc v_conv3_i_i316_6_1@uint8 v_conv3_i_i316_6_1@uint32;
(*   %conv4.i.i317.6.1 = zext i8 %conv5.i.i319.5.1 to i32 *)
cast v_conv4_i_i317_6_1@uint32 v_conv5_i_i319_5_1@uint8;
(*   %shr.i.i318.6.1 = ashr i32 %conv4.i.i317.6.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i318_6_1 tmp_to_be_used v_conv4_i_i317_6_1 1;
(*   %conv5.i.i319.6.1 = trunc i32 %shr.i.i318.6.1 to i8 *)
split tmp_v_shr_i_i318_6_1 v_conv5_i_i319_6_1 v_shr_i_i318_6_1 8;
vpc v_conv5_i_i319_6_1@uint8 v_conv5_i_i319_6_1@uint32;
(*   %conv6.i.i320.6.1 = zext i8 %conv7.i.i322.5.1 to i32 *)
cast v_conv6_i_i320_6_1@uint32 v_conv7_i_i322_5_1@uint8;
(*   %shl.i.i321.6.1 = shl i32 %conv6.i.i320.6.1, 1 *)
shls discard_55 v_shl_i_i321_6_1 v_conv6_i_i320_6_1 1;
(*   %conv7.i.i322.6.1 = trunc i32 %shl.i.i321.6.1 to i8 *)
split tmp_v_shl_i_i321_6_1 v_conv7_i_i322_6_1 v_shl_i_i321_6_1 8;
vpc v_conv7_i_i322_6_1@uint8 v_conv7_i_i322_6_1@uint32;
(*   %conv.i.i310.7.1 = zext i8 %conv5.i.i319.6.1 to i32 *)
cast v_conv_i_i310_7_1@uint32 v_conv5_i_i319_6_1@uint8;
(*   %and.i.i311.7.1 = and i32 %conv.i.i310.7.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i311_7_1 v_conv_i_i310_7_1 (0x1)@uint32;
(*   %conv1.i.i312.7.1 = zext i8 %conv7.i.i322.6.1 to i32 *)
cast v_conv1_i_i312_7_1@uint32 v_conv7_i_i322_6_1@uint8;
(*   %mul.i.i313.7.1 = mul nsw i32 %and.i.i311.7.1, %conv1.i.i312.7.1 *)
mul v_mul_i_i313_7_1 v_and_i_i311_7_1 v_conv1_i_i312_7_1;
(*   %conv2.i.i314.7.1 = zext i8 %conv3.i.i316.6.1 to i32 *)
cast v_conv2_i_i314_7_1@uint32 v_conv3_i_i316_6_1@uint8;
(*   %xor.i.i315.7.1 = xor i32 %conv2.i.i314.7.1, %mul.i.i313.7.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i315_7_1 v_conv2_i_i314_7_1 v_mul_i_i313_7_1;
(*   %conv3.i.i316.7.1 = trunc i32 %xor.i.i315.7.1 to i8 *)
split tmp_v_xor_i_i315_7_1 v_conv3_i_i316_7_1 v_xor_i_i315_7_1 8;
vpc v_conv3_i_i316_7_1@uint8 v_conv3_i_i316_7_1@uint32;
(*   %arrayidx6.i326.1 = getelementptr inbounds i8, i8* %arraydecay27, i64 1 *)
(*   store i8 %conv3.i.i316.7.1, i8* %arrayidx6.i326.1, align 1 *)
mov a1b_1 v_conv3_i_i316_7_1;
(*   %20 = load i8, i8* %a, align 1 *)
mov v20 a_0;
(*   %arrayidx4.i306.2 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %21 = load i8, i8* %arrayidx4.i306.2, align 1 *)
mov v21 b_2;
(*   %conv.i.i310.2166 = zext i8 %21 to i32 *)
cast v_conv_i_i310_2166@uint32 v21@uint8;
(*   %and.i.i311.2167 = and i32 %conv.i.i310.2166, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i311_2167 v_conv_i_i310_2166 (0x1)@uint32;
(*   %conv1.i.i312.2168 = zext i8 %20 to i32 *)
cast v_conv1_i_i312_2168@uint32 v20@uint8;
(*   %mul.i.i313.2169 = mul nsw i32 %and.i.i311.2167, %conv1.i.i312.2168 *)
mul v_mul_i_i313_2169 v_and_i_i311_2167 v_conv1_i_i312_2168;
(*   %conv3.i.i316.2170 = trunc i32 %mul.i.i313.2169 to i8 *)
split tmp_v_mul_i_i313_2169 v_conv3_i_i316_2170 v_mul_i_i313_2169 8;
vpc v_conv3_i_i316_2170@uint8 v_conv3_i_i316_2170@uint32;
(*   %conv4.i.i317.2171 = zext i8 %21 to i32 *)
cast v_conv4_i_i317_2171@uint32 v21@uint8;
(*   %shr.i.i318.2172 = ashr i32 %conv4.i.i317.2171, 1 *)
(* You may need to modify here *)
split v_shr_i_i318_2172 tmp_to_be_used v_conv4_i_i317_2171 1;
(*   %conv5.i.i319.2173 = trunc i32 %shr.i.i318.2172 to i8 *)
split tmp_v_shr_i_i318_2172 v_conv5_i_i319_2173 v_shr_i_i318_2172 8;
vpc v_conv5_i_i319_2173@uint8 v_conv5_i_i319_2173@uint32;
(*   %conv6.i.i320.2174 = zext i8 %20 to i32 *)
cast v_conv6_i_i320_2174@uint32 v20@uint8;
(*   %shl.i.i321.2175 = shl i32 %conv6.i.i320.2174, 1 *)
shls discard_56 v_shl_i_i321_2175 v_conv6_i_i320_2174 1;
(*   %conv7.i.i322.2176 = trunc i32 %shl.i.i321.2175 to i8 *)
split tmp_v_shl_i_i321_2175 v_conv7_i_i322_2176 v_shl_i_i321_2175 8;
vpc v_conv7_i_i322_2176@uint8 v_conv7_i_i322_2176@uint32;
(*   %conv.i.i310.1.2 = zext i8 %conv5.i.i319.2173 to i32 *)
cast v_conv_i_i310_1_2@uint32 v_conv5_i_i319_2173@uint8;
(*   %and.i.i311.1.2 = and i32 %conv.i.i310.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i311_1_2 v_conv_i_i310_1_2 (0x1)@uint32;
(*   %conv1.i.i312.1.2 = zext i8 %conv7.i.i322.2176 to i32 *)
cast v_conv1_i_i312_1_2@uint32 v_conv7_i_i322_2176@uint8;
(*   %mul.i.i313.1.2 = mul nsw i32 %and.i.i311.1.2, %conv1.i.i312.1.2 *)
mul v_mul_i_i313_1_2 v_and_i_i311_1_2 v_conv1_i_i312_1_2;
(*   %conv2.i.i314.1.2 = zext i8 %conv3.i.i316.2170 to i32 *)
cast v_conv2_i_i314_1_2@uint32 v_conv3_i_i316_2170@uint8;
(*   %xor.i.i315.1.2 = xor i32 %conv2.i.i314.1.2, %mul.i.i313.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i315_1_2 v_conv2_i_i314_1_2 v_mul_i_i313_1_2;
(*   %conv3.i.i316.1.2 = trunc i32 %xor.i.i315.1.2 to i8 *)
split tmp_v_xor_i_i315_1_2 v_conv3_i_i316_1_2 v_xor_i_i315_1_2 8;
vpc v_conv3_i_i316_1_2@uint8 v_conv3_i_i316_1_2@uint32;
(*   %conv4.i.i317.1.2 = zext i8 %conv5.i.i319.2173 to i32 *)
cast v_conv4_i_i317_1_2@uint32 v_conv5_i_i319_2173@uint8;
(*   %shr.i.i318.1.2 = ashr i32 %conv4.i.i317.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i318_1_2 tmp_to_be_used v_conv4_i_i317_1_2 1;
(*   %conv5.i.i319.1.2 = trunc i32 %shr.i.i318.1.2 to i8 *)
split tmp_v_shr_i_i318_1_2 v_conv5_i_i319_1_2 v_shr_i_i318_1_2 8;
vpc v_conv5_i_i319_1_2@uint8 v_conv5_i_i319_1_2@uint32;
(*   %conv6.i.i320.1.2 = zext i8 %conv7.i.i322.2176 to i32 *)
cast v_conv6_i_i320_1_2@uint32 v_conv7_i_i322_2176@uint8;
(*   %shl.i.i321.1.2 = shl i32 %conv6.i.i320.1.2, 1 *)
shls discard_57 v_shl_i_i321_1_2 v_conv6_i_i320_1_2 1;
(*   %conv7.i.i322.1.2 = trunc i32 %shl.i.i321.1.2 to i8 *)
split tmp_v_shl_i_i321_1_2 v_conv7_i_i322_1_2 v_shl_i_i321_1_2 8;
vpc v_conv7_i_i322_1_2@uint8 v_conv7_i_i322_1_2@uint32;
(*   %conv.i.i310.2.2 = zext i8 %conv5.i.i319.1.2 to i32 *)
cast v_conv_i_i310_2_2@uint32 v_conv5_i_i319_1_2@uint8;
(*   %and.i.i311.2.2 = and i32 %conv.i.i310.2.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i311_2_2 v_conv_i_i310_2_2 (0x1)@uint32;
(*   %conv1.i.i312.2.2 = zext i8 %conv7.i.i322.1.2 to i32 *)
cast v_conv1_i_i312_2_2@uint32 v_conv7_i_i322_1_2@uint8;
(*   %mul.i.i313.2.2 = mul nsw i32 %and.i.i311.2.2, %conv1.i.i312.2.2 *)
mul v_mul_i_i313_2_2 v_and_i_i311_2_2 v_conv1_i_i312_2_2;
(*   %conv2.i.i314.2.2 = zext i8 %conv3.i.i316.1.2 to i32 *)
cast v_conv2_i_i314_2_2@uint32 v_conv3_i_i316_1_2@uint8;
(*   %xor.i.i315.2.2 = xor i32 %conv2.i.i314.2.2, %mul.i.i313.2.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i315_2_2 v_conv2_i_i314_2_2 v_mul_i_i313_2_2;
(*   %conv3.i.i316.2.2 = trunc i32 %xor.i.i315.2.2 to i8 *)
split tmp_v_xor_i_i315_2_2 v_conv3_i_i316_2_2 v_xor_i_i315_2_2 8;
vpc v_conv3_i_i316_2_2@uint8 v_conv3_i_i316_2_2@uint32;
(*   %conv4.i.i317.2.2 = zext i8 %conv5.i.i319.1.2 to i32 *)
cast v_conv4_i_i317_2_2@uint32 v_conv5_i_i319_1_2@uint8;
(*   %shr.i.i318.2.2 = ashr i32 %conv4.i.i317.2.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i318_2_2 tmp_to_be_used v_conv4_i_i317_2_2 1;
(*   %conv5.i.i319.2.2 = trunc i32 %shr.i.i318.2.2 to i8 *)
split tmp_v_shr_i_i318_2_2 v_conv5_i_i319_2_2 v_shr_i_i318_2_2 8;
vpc v_conv5_i_i319_2_2@uint8 v_conv5_i_i319_2_2@uint32;
(*   %conv6.i.i320.2.2 = zext i8 %conv7.i.i322.1.2 to i32 *)
cast v_conv6_i_i320_2_2@uint32 v_conv7_i_i322_1_2@uint8;
(*   %shl.i.i321.2.2 = shl i32 %conv6.i.i320.2.2, 1 *)
shls discard_58 v_shl_i_i321_2_2 v_conv6_i_i320_2_2 1;
(*   %conv7.i.i322.2.2 = trunc i32 %shl.i.i321.2.2 to i8 *)
split tmp_v_shl_i_i321_2_2 v_conv7_i_i322_2_2 v_shl_i_i321_2_2 8;
vpc v_conv7_i_i322_2_2@uint8 v_conv7_i_i322_2_2@uint32;
(*   %conv.i.i310.3.2 = zext i8 %conv5.i.i319.2.2 to i32 *)
cast v_conv_i_i310_3_2@uint32 v_conv5_i_i319_2_2@uint8;
(*   %and.i.i311.3.2 = and i32 %conv.i.i310.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i311_3_2 v_conv_i_i310_3_2 (0x1)@uint32;
(*   %conv1.i.i312.3.2 = zext i8 %conv7.i.i322.2.2 to i32 *)
cast v_conv1_i_i312_3_2@uint32 v_conv7_i_i322_2_2@uint8;
(*   %mul.i.i313.3.2 = mul nsw i32 %and.i.i311.3.2, %conv1.i.i312.3.2 *)
mul v_mul_i_i313_3_2 v_and_i_i311_3_2 v_conv1_i_i312_3_2;
(*   %conv2.i.i314.3.2 = zext i8 %conv3.i.i316.2.2 to i32 *)
cast v_conv2_i_i314_3_2@uint32 v_conv3_i_i316_2_2@uint8;
(*   %xor.i.i315.3.2 = xor i32 %conv2.i.i314.3.2, %mul.i.i313.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i315_3_2 v_conv2_i_i314_3_2 v_mul_i_i313_3_2;
(*   %conv3.i.i316.3.2 = trunc i32 %xor.i.i315.3.2 to i8 *)
split tmp_v_xor_i_i315_3_2 v_conv3_i_i316_3_2 v_xor_i_i315_3_2 8;
vpc v_conv3_i_i316_3_2@uint8 v_conv3_i_i316_3_2@uint32;
(*   %conv4.i.i317.3.2 = zext i8 %conv5.i.i319.2.2 to i32 *)
cast v_conv4_i_i317_3_2@uint32 v_conv5_i_i319_2_2@uint8;
(*   %shr.i.i318.3.2 = ashr i32 %conv4.i.i317.3.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i318_3_2 tmp_to_be_used v_conv4_i_i317_3_2 1;
(*   %conv5.i.i319.3.2 = trunc i32 %shr.i.i318.3.2 to i8 *)
split tmp_v_shr_i_i318_3_2 v_conv5_i_i319_3_2 v_shr_i_i318_3_2 8;
vpc v_conv5_i_i319_3_2@uint8 v_conv5_i_i319_3_2@uint32;
(*   %conv6.i.i320.3.2 = zext i8 %conv7.i.i322.2.2 to i32 *)
cast v_conv6_i_i320_3_2@uint32 v_conv7_i_i322_2_2@uint8;
(*   %shl.i.i321.3.2 = shl i32 %conv6.i.i320.3.2, 1 *)
shls discard_59 v_shl_i_i321_3_2 v_conv6_i_i320_3_2 1;
(*   %conv7.i.i322.3.2 = trunc i32 %shl.i.i321.3.2 to i8 *)
split tmp_v_shl_i_i321_3_2 v_conv7_i_i322_3_2 v_shl_i_i321_3_2 8;
vpc v_conv7_i_i322_3_2@uint8 v_conv7_i_i322_3_2@uint32;
(*   %conv.i.i310.4.2 = zext i8 %conv5.i.i319.3.2 to i32 *)
cast v_conv_i_i310_4_2@uint32 v_conv5_i_i319_3_2@uint8;
(*   %and.i.i311.4.2 = and i32 %conv.i.i310.4.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i311_4_2 v_conv_i_i310_4_2 (0x1)@uint32;
(*   %conv1.i.i312.4.2 = zext i8 %conv7.i.i322.3.2 to i32 *)
cast v_conv1_i_i312_4_2@uint32 v_conv7_i_i322_3_2@uint8;
(*   %mul.i.i313.4.2 = mul nsw i32 %and.i.i311.4.2, %conv1.i.i312.4.2 *)
mul v_mul_i_i313_4_2 v_and_i_i311_4_2 v_conv1_i_i312_4_2;
(*   %conv2.i.i314.4.2 = zext i8 %conv3.i.i316.3.2 to i32 *)
cast v_conv2_i_i314_4_2@uint32 v_conv3_i_i316_3_2@uint8;
(*   %xor.i.i315.4.2 = xor i32 %conv2.i.i314.4.2, %mul.i.i313.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i315_4_2 v_conv2_i_i314_4_2 v_mul_i_i313_4_2;
(*   %conv3.i.i316.4.2 = trunc i32 %xor.i.i315.4.2 to i8 *)
split tmp_v_xor_i_i315_4_2 v_conv3_i_i316_4_2 v_xor_i_i315_4_2 8;
vpc v_conv3_i_i316_4_2@uint8 v_conv3_i_i316_4_2@uint32;
(*   %conv4.i.i317.4.2 = zext i8 %conv5.i.i319.3.2 to i32 *)
cast v_conv4_i_i317_4_2@uint32 v_conv5_i_i319_3_2@uint8;
(*   %shr.i.i318.4.2 = ashr i32 %conv4.i.i317.4.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i318_4_2 tmp_to_be_used v_conv4_i_i317_4_2 1;
(*   %conv5.i.i319.4.2 = trunc i32 %shr.i.i318.4.2 to i8 *)
split tmp_v_shr_i_i318_4_2 v_conv5_i_i319_4_2 v_shr_i_i318_4_2 8;
vpc v_conv5_i_i319_4_2@uint8 v_conv5_i_i319_4_2@uint32;
(*   %conv6.i.i320.4.2 = zext i8 %conv7.i.i322.3.2 to i32 *)
cast v_conv6_i_i320_4_2@uint32 v_conv7_i_i322_3_2@uint8;
(*   %shl.i.i321.4.2 = shl i32 %conv6.i.i320.4.2, 1 *)
shls discard_60 v_shl_i_i321_4_2 v_conv6_i_i320_4_2 1;
(*   %conv7.i.i322.4.2 = trunc i32 %shl.i.i321.4.2 to i8 *)
split tmp_v_shl_i_i321_4_2 v_conv7_i_i322_4_2 v_shl_i_i321_4_2 8;
vpc v_conv7_i_i322_4_2@uint8 v_conv7_i_i322_4_2@uint32;
(*   %conv.i.i310.5.2 = zext i8 %conv5.i.i319.4.2 to i32 *)
cast v_conv_i_i310_5_2@uint32 v_conv5_i_i319_4_2@uint8;
(*   %and.i.i311.5.2 = and i32 %conv.i.i310.5.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i311_5_2 v_conv_i_i310_5_2 (0x1)@uint32;
(*   %conv1.i.i312.5.2 = zext i8 %conv7.i.i322.4.2 to i32 *)
cast v_conv1_i_i312_5_2@uint32 v_conv7_i_i322_4_2@uint8;
(*   %mul.i.i313.5.2 = mul nsw i32 %and.i.i311.5.2, %conv1.i.i312.5.2 *)
mul v_mul_i_i313_5_2 v_and_i_i311_5_2 v_conv1_i_i312_5_2;
(*   %conv2.i.i314.5.2 = zext i8 %conv3.i.i316.4.2 to i32 *)
cast v_conv2_i_i314_5_2@uint32 v_conv3_i_i316_4_2@uint8;
(*   %xor.i.i315.5.2 = xor i32 %conv2.i.i314.5.2, %mul.i.i313.5.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i315_5_2 v_conv2_i_i314_5_2 v_mul_i_i313_5_2;
(*   %conv3.i.i316.5.2 = trunc i32 %xor.i.i315.5.2 to i8 *)
split tmp_v_xor_i_i315_5_2 v_conv3_i_i316_5_2 v_xor_i_i315_5_2 8;
vpc v_conv3_i_i316_5_2@uint8 v_conv3_i_i316_5_2@uint32;
(*   %conv4.i.i317.5.2 = zext i8 %conv5.i.i319.4.2 to i32 *)
cast v_conv4_i_i317_5_2@uint32 v_conv5_i_i319_4_2@uint8;
(*   %shr.i.i318.5.2 = ashr i32 %conv4.i.i317.5.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i318_5_2 tmp_to_be_used v_conv4_i_i317_5_2 1;
(*   %conv5.i.i319.5.2 = trunc i32 %shr.i.i318.5.2 to i8 *)
split tmp_v_shr_i_i318_5_2 v_conv5_i_i319_5_2 v_shr_i_i318_5_2 8;
vpc v_conv5_i_i319_5_2@uint8 v_conv5_i_i319_5_2@uint32;
(*   %conv6.i.i320.5.2 = zext i8 %conv7.i.i322.4.2 to i32 *)
cast v_conv6_i_i320_5_2@uint32 v_conv7_i_i322_4_2@uint8;
(*   %shl.i.i321.5.2 = shl i32 %conv6.i.i320.5.2, 1 *)
shls discard_61 v_shl_i_i321_5_2 v_conv6_i_i320_5_2 1;
(*   %conv7.i.i322.5.2 = trunc i32 %shl.i.i321.5.2 to i8 *)
split tmp_v_shl_i_i321_5_2 v_conv7_i_i322_5_2 v_shl_i_i321_5_2 8;
vpc v_conv7_i_i322_5_2@uint8 v_conv7_i_i322_5_2@uint32;
(*   %conv.i.i310.6.2 = zext i8 %conv5.i.i319.5.2 to i32 *)
cast v_conv_i_i310_6_2@uint32 v_conv5_i_i319_5_2@uint8;
(*   %and.i.i311.6.2 = and i32 %conv.i.i310.6.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i311_6_2 v_conv_i_i310_6_2 (0x1)@uint32;
(*   %conv1.i.i312.6.2 = zext i8 %conv7.i.i322.5.2 to i32 *)
cast v_conv1_i_i312_6_2@uint32 v_conv7_i_i322_5_2@uint8;
(*   %mul.i.i313.6.2 = mul nsw i32 %and.i.i311.6.2, %conv1.i.i312.6.2 *)
mul v_mul_i_i313_6_2 v_and_i_i311_6_2 v_conv1_i_i312_6_2;
(*   %conv2.i.i314.6.2 = zext i8 %conv3.i.i316.5.2 to i32 *)
cast v_conv2_i_i314_6_2@uint32 v_conv3_i_i316_5_2@uint8;
(*   %xor.i.i315.6.2 = xor i32 %conv2.i.i314.6.2, %mul.i.i313.6.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i315_6_2 v_conv2_i_i314_6_2 v_mul_i_i313_6_2;
(*   %conv3.i.i316.6.2 = trunc i32 %xor.i.i315.6.2 to i8 *)
split tmp_v_xor_i_i315_6_2 v_conv3_i_i316_6_2 v_xor_i_i315_6_2 8;
vpc v_conv3_i_i316_6_2@uint8 v_conv3_i_i316_6_2@uint32;
(*   %conv4.i.i317.6.2 = zext i8 %conv5.i.i319.5.2 to i32 *)
cast v_conv4_i_i317_6_2@uint32 v_conv5_i_i319_5_2@uint8;
(*   %shr.i.i318.6.2 = ashr i32 %conv4.i.i317.6.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i318_6_2 tmp_to_be_used v_conv4_i_i317_6_2 1;
(*   %conv5.i.i319.6.2 = trunc i32 %shr.i.i318.6.2 to i8 *)
split tmp_v_shr_i_i318_6_2 v_conv5_i_i319_6_2 v_shr_i_i318_6_2 8;
vpc v_conv5_i_i319_6_2@uint8 v_conv5_i_i319_6_2@uint32;
(*   %conv6.i.i320.6.2 = zext i8 %conv7.i.i322.5.2 to i32 *)
cast v_conv6_i_i320_6_2@uint32 v_conv7_i_i322_5_2@uint8;
(*   %shl.i.i321.6.2 = shl i32 %conv6.i.i320.6.2, 1 *)
shls discard_62 v_shl_i_i321_6_2 v_conv6_i_i320_6_2 1;
(*   %conv7.i.i322.6.2 = trunc i32 %shl.i.i321.6.2 to i8 *)
split tmp_v_shl_i_i321_6_2 v_conv7_i_i322_6_2 v_shl_i_i321_6_2 8;
vpc v_conv7_i_i322_6_2@uint8 v_conv7_i_i322_6_2@uint32;
(*   %conv.i.i310.7.2 = zext i8 %conv5.i.i319.6.2 to i32 *)
cast v_conv_i_i310_7_2@uint32 v_conv5_i_i319_6_2@uint8;
(*   %and.i.i311.7.2 = and i32 %conv.i.i310.7.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i311_7_2 v_conv_i_i310_7_2 (0x1)@uint32;
(*   %conv1.i.i312.7.2 = zext i8 %conv7.i.i322.6.2 to i32 *)
cast v_conv1_i_i312_7_2@uint32 v_conv7_i_i322_6_2@uint8;
(*   %mul.i.i313.7.2 = mul nsw i32 %and.i.i311.7.2, %conv1.i.i312.7.2 *)
mul v_mul_i_i313_7_2 v_and_i_i311_7_2 v_conv1_i_i312_7_2;
(*   %conv2.i.i314.7.2 = zext i8 %conv3.i.i316.6.2 to i32 *)
cast v_conv2_i_i314_7_2@uint32 v_conv3_i_i316_6_2@uint8;
(*   %xor.i.i315.7.2 = xor i32 %conv2.i.i314.7.2, %mul.i.i313.7.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i315_7_2 v_conv2_i_i314_7_2 v_mul_i_i313_7_2;
(*   %conv3.i.i316.7.2 = trunc i32 %xor.i.i315.7.2 to i8 *)
split tmp_v_xor_i_i315_7_2 v_conv3_i_i316_7_2 v_xor_i_i315_7_2 8;
vpc v_conv3_i_i316_7_2@uint8 v_conv3_i_i316_7_2@uint32;
(*   %arrayidx6.i326.2 = getelementptr inbounds i8, i8* %arraydecay27, i64 2 *)
(*   store i8 %conv3.i.i316.7.2, i8* %arrayidx6.i326.2, align 1 *)
mov a1b_2 v_conv3_i_i316_7_2;
(*   %scevgep91 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 0 *)
(*   %22 = load i8, i8* %c, align 1 *)
mov v22 c_0;
(*   %conv.i274 = zext i8 %22 to i32 *)
cast v_conv_i274@uint32 v22@uint8;
(*   %23 = load i8, i8* %scevgep91, align 1 *)
mov v23 z_0;
(*   %conv5.i279 = zext i8 %23 to i32 *)
cast v_conv5_i279@uint32 v23@uint8;
(*   %xor.i280 = xor i32 %conv.i274, %conv5.i279 *)
(* You may need to modify here *)
xor uint32 v_xor_i280 v_conv_i274 v_conv5_i279;
(*   %conv6.i281 = trunc i32 %xor.i280 to i8 *)
split tmp_v_xor_i280 v_conv6_i281 v_xor_i280 8;
vpc v_conv6_i281@uint8 v_conv6_i281@uint32;
(*   store i8 %conv6.i281, i8* %c, align 1 *)
mov c_0 v_conv6_i281;
(*   %scevgep85 = getelementptr i8, i8* %c, i64 1 *)
(*   %scevgep90 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 1 *)
(*   %24 = bitcast i8* %scevgep90 to [3 x i8]* *)
(*   %scevgep91.1 = getelementptr [3 x i8], [3 x i8]* %24, i64 0, i64 0 *)
(*   %25 = load i8, i8* %scevgep85, align 1 *)
mov v25 c_1;
(*   %conv.i274.1 = zext i8 %25 to i32 *)
cast v_conv_i274_1@uint32 v25@uint8;
(*   %26 = load i8, i8* %scevgep91.1, align 1 *)
mov v26 z_1;
(*   %conv5.i279.1 = zext i8 %26 to i32 *)
cast v_conv5_i279_1@uint32 v26@uint8;
(*   %xor.i280.1 = xor i32 %conv.i274.1, %conv5.i279.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i280_1 v_conv_i274_1 v_conv5_i279_1;
(*   %conv6.i281.1 = trunc i32 %xor.i280.1 to i8 *)
split tmp_v_xor_i280_1 v_conv6_i281_1 v_xor_i280_1 8;
vpc v_conv6_i281_1@uint8 v_conv6_i281_1@uint32;
(*   %scevgep92.1 = getelementptr i8, i8* %c, i64 1 *)
(*   store i8 %conv6.i281.1, i8* %scevgep92.1, align 1 *)
mov c_1 v_conv6_i281_1;
(*   %scevgep85.1 = getelementptr i8, i8* %scevgep85, i64 1 *)
(*   %scevgep90.1 = getelementptr [3 x i8], [3 x i8]* %24, i64 0, i64 1 *)
(*   %27 = bitcast i8* %scevgep90.1 to [3 x i8]* *)
(*   %scevgep91.2 = getelementptr [3 x i8], [3 x i8]* %27, i64 0, i64 0 *)
(*   %28 = load i8, i8* %scevgep85.1, align 1 *)
mov v28 c_2;
(*   %conv.i274.2 = zext i8 %28 to i32 *)
cast v_conv_i274_2@uint32 v28@uint8;
(*   %29 = load i8, i8* %scevgep91.2, align 1 *)
mov v29 z_2;
(*   %conv5.i279.2 = zext i8 %29 to i32 *)
cast v_conv5_i279_2@uint32 v29@uint8;
(*   %xor.i280.2 = xor i32 %conv.i274.2, %conv5.i279.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i280_2 v_conv_i274_2 v_conv5_i279_2;
(*   %conv6.i281.2 = trunc i32 %xor.i280.2 to i8 *)
split tmp_v_xor_i280_2 v_conv6_i281_2 v_xor_i280_2 8;
vpc v_conv6_i281_2@uint8 v_conv6_i281_2@uint32;
(*   %scevgep92.2 = getelementptr i8, i8* %c, i64 2 *)
(*   store i8 %conv6.i281.2, i8* %scevgep92.2, align 1 *)
mov c_2 v_conv6_i281_2;
(*   %scevgep81 = getelementptr [3 x i8], [3 x i8]* %ab1, i64 0, i64 0 *)
(*   %30 = load i8, i8* %c, align 1 *)
mov v30 c_0;
(*   %conv.i249 = zext i8 %30 to i32 *)
cast v_conv_i249@uint32 v30@uint8;
(*   %31 = load i8, i8* %scevgep81, align 1 *)
mov v31 ab1_0;
(*   %conv5.i254 = zext i8 %31 to i32 *)
cast v_conv5_i254@uint32 v31@uint8;
(*   %xor.i255 = xor i32 %conv.i249, %conv5.i254 *)
(* You may need to modify here *)
xor uint32 v_xor_i255 v_conv_i249 v_conv5_i254;
(*   %conv6.i256 = trunc i32 %xor.i255 to i8 *)
split tmp_v_xor_i255 v_conv6_i256 v_xor_i255 8;
vpc v_conv6_i256@uint8 v_conv6_i256@uint32;
(*   store i8 %conv6.i256, i8* %c, align 1 *)
mov c_0 v_conv6_i256;
(*   %scevgep75 = getelementptr i8, i8* %c, i64 1 *)
(*   %scevgep80 = getelementptr [3 x i8], [3 x i8]* %ab1, i64 0, i64 1 *)
(*   %32 = bitcast i8* %scevgep80 to [3 x i8]* *)
(*   %scevgep81.1 = getelementptr [3 x i8], [3 x i8]* %32, i64 0, i64 0 *)
(*   %33 = load i8, i8* %scevgep75, align 1 *)
mov v33 c_1;
(*   %conv.i249.1 = zext i8 %33 to i32 *)
cast v_conv_i249_1@uint32 v33@uint8;
(*   %34 = load i8, i8* %scevgep81.1, align 1 *)
mov v34 ab1_1;
(*   %conv5.i254.1 = zext i8 %34 to i32 *)
cast v_conv5_i254_1@uint32 v34@uint8;
(*   %xor.i255.1 = xor i32 %conv.i249.1, %conv5.i254.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i255_1 v_conv_i249_1 v_conv5_i254_1;
(*   %conv6.i256.1 = trunc i32 %xor.i255.1 to i8 *)
split tmp_v_xor_i255_1 v_conv6_i256_1 v_xor_i255_1 8;
vpc v_conv6_i256_1@uint8 v_conv6_i256_1@uint32;
(*   %scevgep82.1 = getelementptr i8, i8* %c, i64 1 *)
(*   store i8 %conv6.i256.1, i8* %scevgep82.1, align 1 *)
mov c_1 v_conv6_i256_1;
(*   %scevgep75.1 = getelementptr i8, i8* %scevgep75, i64 1 *)
(*   %scevgep80.1 = getelementptr [3 x i8], [3 x i8]* %32, i64 0, i64 1 *)
(*   %35 = bitcast i8* %scevgep80.1 to [3 x i8]* *)
(*   %scevgep81.2 = getelementptr [3 x i8], [3 x i8]* %35, i64 0, i64 0 *)
(*   %36 = load i8, i8* %scevgep75.1, align 1 *)
mov v36 c_2;
(*   %conv.i249.2 = zext i8 %36 to i32 *)
cast v_conv_i249_2@uint32 v36@uint8;
(*   %37 = load i8, i8* %scevgep81.2, align 1 *)
mov v37 ab1_2;
(*   %conv5.i254.2 = zext i8 %37 to i32 *)
cast v_conv5_i254_2@uint32 v37@uint8;
(*   %xor.i255.2 = xor i32 %conv.i249.2, %conv5.i254.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i255_2 v_conv_i249_2 v_conv5_i254_2;
(*   %conv6.i256.2 = trunc i32 %xor.i255.2 to i8 *)
split tmp_v_xor_i255_2 v_conv6_i256_2 v_xor_i255_2 8;
vpc v_conv6_i256_2@uint8 v_conv6_i256_2@uint32;
(*   %scevgep82.2 = getelementptr i8, i8* %c, i64 2 *)
(*   store i8 %conv6.i256.2, i8* %scevgep82.2, align 1 *)
mov c_2 v_conv6_i256_2;
(*   %scevgep71 = getelementptr [3 x i8], [3 x i8]* %a1b, i64 0, i64 0 *)
(*   %38 = load i8, i8* %c, align 1 *)
mov v38 c_0;
(*   %conv.i227 = zext i8 %38 to i32 *)
cast v_conv_i227@uint32 v38@uint8;
(*   %39 = load i8, i8* %scevgep71, align 1 *)
mov v39 a1b_0;
(*   %conv5.i232 = zext i8 %39 to i32 *)
cast v_conv5_i232@uint32 v39@uint8;
(*   %xor.i233 = xor i32 %conv.i227, %conv5.i232 *)
(* You may need to modify here *)
xor uint32 v_xor_i233 v_conv_i227 v_conv5_i232;
(*   %conv6.i234 = trunc i32 %xor.i233 to i8 *)
split tmp_v_xor_i233 v_conv6_i234 v_xor_i233 8;
vpc v_conv6_i234@uint8 v_conv6_i234@uint32;
(*   store i8 %conv6.i234, i8* %c, align 1 *)
mov c_0 v_conv6_i234;
(*   %scevgep65 = getelementptr i8, i8* %c, i64 1 *)
(*   %scevgep70 = getelementptr [3 x i8], [3 x i8]* %a1b, i64 0, i64 1 *)
(*   %40 = bitcast i8* %scevgep70 to [3 x i8]* *)
(*   %scevgep71.1 = getelementptr [3 x i8], [3 x i8]* %40, i64 0, i64 0 *)
(*   %41 = load i8, i8* %scevgep65, align 1 *)
mov v41 c_1;
(*   %conv.i227.1 = zext i8 %41 to i32 *)
cast v_conv_i227_1@uint32 v41@uint8;
(*   %42 = load i8, i8* %scevgep71.1, align 1 *)
mov v42 a1b_1;
(*   %conv5.i232.1 = zext i8 %42 to i32 *)
cast v_conv5_i232_1@uint32 v42@uint8;
(*   %xor.i233.1 = xor i32 %conv.i227.1, %conv5.i232.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i233_1 v_conv_i227_1 v_conv5_i232_1;
(*   %conv6.i234.1 = trunc i32 %xor.i233.1 to i8 *)
split tmp_v_xor_i233_1 v_conv6_i234_1 v_xor_i233_1 8;
vpc v_conv6_i234_1@uint8 v_conv6_i234_1@uint32;
(*   %scevgep72.1 = getelementptr i8, i8* %c, i64 1 *)
(*   store i8 %conv6.i234.1, i8* %scevgep72.1, align 1 *)
mov c_1 v_conv6_i234_1;
(*   %scevgep65.1 = getelementptr i8, i8* %scevgep65, i64 1 *)
(*   %scevgep70.1 = getelementptr [3 x i8], [3 x i8]* %40, i64 0, i64 1 *)
(*   %43 = bitcast i8* %scevgep70.1 to [3 x i8]* *)
(*   %scevgep71.2 = getelementptr [3 x i8], [3 x i8]* %43, i64 0, i64 0 *)
(*   %44 = load i8, i8* %scevgep65.1, align 1 *)
mov v44 c_2;
(*   %conv.i227.2 = zext i8 %44 to i32 *)
cast v_conv_i227_2@uint32 v44@uint8;
(*   %45 = load i8, i8* %scevgep71.2, align 1 *)
mov v45 a1b_2;
(*   %conv5.i232.2 = zext i8 %45 to i32 *)
cast v_conv5_i232_2@uint32 v45@uint8;
(*   %xor.i233.2 = xor i32 %conv.i227.2, %conv5.i232.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i233_2 v_conv_i227_2 v_conv5_i232_2;
(*   %conv6.i234.2 = trunc i32 %xor.i233.2 to i8 *)
split tmp_v_xor_i233_2 v_conv6_i234_2 v_xor_i233_2 8;
vpc v_conv6_i234_2@uint8 v_conv6_i234_2@uint32;
(*   %scevgep72.2 = getelementptr i8, i8* %c, i64 2 *)
(*   store i8 %conv6.i234.2, i8* %scevgep72.2, align 1 *)
mov c_2 v_conv6_i234_2;
(*   %46 = load i8, i8* %a, align 1 *)
mov v46 a_0;
(*   %scevgep62.1 = getelementptr i8, i8* %a, i64 1 *)
(*   %47 = load i8, i8* %scevgep62.1, align 1 *)
mov v47 a_1;
(*   %conv.i.i165.1 = zext i8 %47 to i32 *)
cast v_conv_i_i165_1@uint32 v47@uint8;
(*   %conv1.i.i166.1 = zext i8 %46 to i32 *)
cast v_conv1_i_i166_1@uint32 v46@uint8;
(*   %xor.i.i167.1 = xor i32 %conv1.i.i166.1, %conv.i.i165.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i167_1 v_conv1_i_i166_1 v_conv_i_i165_1;
(*   %conv2.i.i168.1 = trunc i32 %xor.i.i167.1 to i8 *)
split tmp_v_xor_i_i167_1 v_conv2_i_i168_1 v_xor_i_i167_1 8;
vpc v_conv2_i_i168_1@uint8 v_conv2_i_i168_1@uint32;
(*   %scevgep62.2 = getelementptr i8, i8* %a, i64 2 *)
(*   %48 = load i8, i8* %scevgep62.2, align 1 *)
mov v48 a_2;
(*   %conv.i.i165.2 = zext i8 %48 to i32 *)
cast v_conv_i_i165_2@uint32 v48@uint8;
(*   %conv1.i.i166.2 = zext i8 %conv2.i.i168.1 to i32 *)
cast v_conv1_i_i166_2@uint32 v_conv2_i_i168_1@uint8;
(*   %xor.i.i167.2 = xor i32 %conv1.i.i166.2, %conv.i.i165.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i167_2 v_conv1_i_i166_2 v_conv_i_i165_2;
(*   %conv2.i.i168.2 = trunc i32 %xor.i.i167.2 to i8 *)
split tmp_v_xor_i_i167_2 v_conv2_i_i168_2 v_xor_i_i167_2 8;
vpc v_conv2_i_i168_2@uint8 v_conv2_i_i168_2@uint32;
(*   %49 = load i8, i8* %b, align 1 *)
mov v49 b_0;
(*   %scevgep58.1 = getelementptr i8, i8* %b, i64 1 *)
(*   %50 = load i8, i8* %scevgep58.1, align 1 *)
mov v50 b_1;
(*   %conv.i.i105.1 = zext i8 %50 to i32 *)
cast v_conv_i_i105_1@uint32 v50@uint8;
(*   %conv1.i.i106.1 = zext i8 %49 to i32 *)
cast v_conv1_i_i106_1@uint32 v49@uint8;
(*   %xor.i.i107.1 = xor i32 %conv1.i.i106.1, %conv.i.i105.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i107_1 v_conv1_i_i106_1 v_conv_i_i105_1;
(*   %conv2.i.i108.1 = trunc i32 %xor.i.i107.1 to i8 *)
split tmp_v_xor_i_i107_1 v_conv2_i_i108_1 v_xor_i_i107_1 8;
vpc v_conv2_i_i108_1@uint8 v_conv2_i_i108_1@uint32;
(*   %scevgep58.2 = getelementptr i8, i8* %b, i64 2 *)
(*   %51 = load i8, i8* %scevgep58.2, align 1 *)
mov v51 b_2;
(*   %conv.i.i105.2 = zext i8 %51 to i32 *)
cast v_conv_i_i105_2@uint32 v51@uint8;
(*   %conv1.i.i106.2 = zext i8 %conv2.i.i108.1 to i32 *)
cast v_conv1_i_i106_2@uint32 v_conv2_i_i108_1@uint8;
(*   %xor.i.i107.2 = xor i32 %conv1.i.i106.2, %conv.i.i105.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i107_2 v_conv1_i_i106_2 v_conv_i_i105_2;
(*   %conv2.i.i108.2 = trunc i32 %xor.i.i107.2 to i8 *)
split tmp_v_xor_i_i107_2 v_conv2_i_i108_2 v_xor_i_i107_2 8;
vpc v_conv2_i_i108_2@uint8 v_conv2_i_i108_2@uint32;
(*   %conv.i = zext i8 %conv2.i.i108.2 to i32 *)
cast v_conv_i@uint32 v_conv2_i_i108_2@uint8;
(*   %and.i = and i32 %conv.i, 1 *)
(* You may need to modify here *)
and uint32 v_and_i v_conv_i (0x1)@uint32;
(*   %conv1.i = zext i8 %conv2.i.i168.2 to i32 *)
cast v_conv1_i@uint32 v_conv2_i_i168_2@uint8;
(*   %mul.i = mul nsw i32 %and.i, %conv1.i *)
mul v_mul_i v_and_i v_conv1_i;
(*   %conv3.i = trunc i32 %mul.i to i8 *)
split tmp_v_mul_i v_conv3_i v_mul_i 8;
vpc v_conv3_i@uint8 v_conv3_i@uint32;
(*   %conv4.i = zext i8 %conv2.i.i108.2 to i32 *)
cast v_conv4_i@uint32 v_conv2_i_i108_2@uint8;
(*   %shr.i = ashr i32 %conv4.i, 1 *)
(* You may need to modify here *)
split v_shr_i tmp_to_be_used v_conv4_i 1;
(*   %conv5.i = trunc i32 %shr.i to i8 *)
split tmp_v_shr_i v_conv5_i v_shr_i 8;
vpc v_conv5_i@uint8 v_conv5_i@uint32;
(*   %conv6.i = zext i8 %conv2.i.i168.2 to i32 *)
cast v_conv6_i@uint32 v_conv2_i_i168_2@uint8;
(*   %shl.i = shl i32 %conv6.i, 1 *)
shls discard_63 v_shl_i v_conv6_i 1;
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
shls discard_64 v_shl_i_1 v_conv6_i_1 1;
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
shls discard_65 v_shl_i_2 v_conv6_i_2 1;
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
shls discard_66 v_shl_i_3 v_conv6_i_3 1;
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
shls discard_67 v_shl_i_4 v_conv6_i_4 1;
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
shls discard_68 v_shl_i_5 v_conv6_i_5 1;
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
shls discard_69 v_shl_i_6 v_conv6_i_6 1;
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
(*   %52 = load i8, i8* %c, align 1 *)
mov v52 c_0;
(*   %scevgep.1 = getelementptr i8, i8* %c, i64 1 *)
(*   %53 = load i8, i8* %scevgep.1, align 1 *)
mov v53 c_1;
(*   %conv.i.i39.1 = zext i8 %53 to i32 *)
cast v_conv_i_i39_1@uint32 v53@uint8;
(*   %conv1.i.i40.1 = zext i8 %52 to i32 *)
cast v_conv1_i_i40_1@uint32 v52@uint8;
(*   %xor.i.i41.1 = xor i32 %conv1.i.i40.1, %conv.i.i39.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i41_1 v_conv1_i_i40_1 v_conv_i_i39_1;
(*   %conv2.i.i42.1 = trunc i32 %xor.i.i41.1 to i8 *)
split tmp_v_xor_i_i41_1 v_conv2_i_i42_1 v_xor_i_i41_1 8;
vpc v_conv2_i_i42_1@uint8 v_conv2_i_i42_1@uint32;
(*   %scevgep.2 = getelementptr i8, i8* %c, i64 2 *)
(*   %54 = load i8, i8* %scevgep.2, align 1 *)
mov v54 c_2;
(*   %conv.i.i39.2 = zext i8 %54 to i32 *)
cast v_conv_i_i39_2@uint32 v54@uint8;
(*   %conv1.i.i40.2 = zext i8 %conv2.i.i42.1 to i32 *)
cast v_conv1_i_i40_2@uint32 v_conv2_i_i42_1@uint8;
(*   %xor.i.i41.2 = xor i32 %conv1.i.i40.2, %conv.i.i39.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i41_2 v_conv1_i_i40_2 v_conv_i_i39_2;
(*   %conv2.i.i42.2 = trunc i32 %xor.i.i41.2 to i8 *)
split tmp_v_xor_i_i41_2 v_conv2_i_i42_2 v_xor_i_i41_2 8;
vpc v_conv2_i_i42_2@uint8 v_conv2_i_i42_2@uint32;
(*   store i8 %conv2.i.i42.2, i8* %C, align 1 *)
mov C_0 v_conv2_i_i42_2;
(*   ret void *)


assert true && AB_0=C_0;

mov _ AB_0@uint8;
mov _ C_0@uint8;


{
  true
  &&
  true
}

