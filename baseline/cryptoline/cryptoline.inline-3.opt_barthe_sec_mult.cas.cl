proc main (uint8 a_0, uint8 a_1, uint8 a_2, uint8 a_3, uint8 b_0, uint8 b_1, uint8 b_2, uint8 b_3, uint8 r_4, uint8 r_5, uint8 r_6, uint8 r_7) =
{
  true
  &&
  true
}



(*   %cc = alloca [32 x i8], align 16 *)
(*   %dd = alloca [32 x i8], align 16 *)
(*   %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %cc, i64 0, i64 0 *)
(*   %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 4 *)
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
(*   store i8 %conv3.i.i.7, i8* %add.ptr, align 1 *)
mov cc_4 v_conv3_i_i_7;
(*   %arrayidx.i.1 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %2 = load i8, i8* %arrayidx.i.1, align 1 *)
mov v2 a_1;
(*   %arrayidx4.i.1 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %3 = load i8, i8* %arrayidx4.i.1, align 1 *)
mov v3 b_1;
(*   %conv.i.i.1429 = zext i8 %3 to i32 *)
cast v_conv_i_i_1429@uint32 v3@uint8;
(*   %and.i.i.1430 = and i32 %conv.i.i.1429, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_1430 v_conv_i_i_1429 (0x1)@uint32;
(*   %conv1.i.i.1431 = zext i8 %2 to i32 *)
cast v_conv1_i_i_1431@uint32 v2@uint8;
(*   %mul.i.i.1432 = mul nsw i32 %and.i.i.1430, %conv1.i.i.1431 *)
mul v_mul_i_i_1432 v_and_i_i_1430 v_conv1_i_i_1431;
(*   %conv3.i.i.1433 = trunc i32 %mul.i.i.1432 to i8 *)
split tmp_v_mul_i_i_1432 v_conv3_i_i_1433 v_mul_i_i_1432 8;
vpc v_conv3_i_i_1433@uint8 v_conv3_i_i_1433@uint32;
(*   %conv4.i.i.1434 = zext i8 %3 to i32 *)
cast v_conv4_i_i_1434@uint32 v3@uint8;
(*   %shr.i.i.1435 = ashr i32 %conv4.i.i.1434, 1 *)
(* You may need to modify here *)
split v_shr_i_i_1435 tmp_to_be_used v_conv4_i_i_1434 1;
(*   %conv5.i.i.1436 = trunc i32 %shr.i.i.1435 to i8 *)
split tmp_v_shr_i_i_1435 v_conv5_i_i_1436 v_shr_i_i_1435 8;
vpc v_conv5_i_i_1436@uint8 v_conv5_i_i_1436@uint32;
(*   %conv6.i.i.1437 = zext i8 %2 to i32 *)
cast v_conv6_i_i_1437@uint32 v2@uint8;
(*   %shl.i.i.1438 = shl i32 %conv6.i.i.1437, 1 *)
shls discard_7 v_shl_i_i_1438 v_conv6_i_i_1437 1;
(*   %conv7.i.i.1439 = trunc i32 %shl.i.i.1438 to i8 *)
split tmp_v_shl_i_i_1438 v_conv7_i_i_1439 v_shl_i_i_1438 8;
vpc v_conv7_i_i_1439@uint8 v_conv7_i_i_1439@uint32;
(*   %conv.i.i.1.1 = zext i8 %conv5.i.i.1436 to i32 *)
cast v_conv_i_i_1_1@uint32 v_conv5_i_i_1436@uint8;
(*   %and.i.i.1.1 = and i32 %conv.i.i.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_1_1 v_conv_i_i_1_1 (0x1)@uint32;
(*   %conv1.i.i.1.1 = zext i8 %conv7.i.i.1439 to i32 *)
cast v_conv1_i_i_1_1@uint32 v_conv7_i_i_1439@uint8;
(*   %mul.i.i.1.1 = mul nsw i32 %and.i.i.1.1, %conv1.i.i.1.1 *)
mul v_mul_i_i_1_1 v_and_i_i_1_1 v_conv1_i_i_1_1;
(*   %conv2.i.i.1.1 = zext i8 %conv3.i.i.1433 to i32 *)
cast v_conv2_i_i_1_1@uint32 v_conv3_i_i_1433@uint8;
(*   %xor.i.i.1.1 = xor i32 %conv2.i.i.1.1, %mul.i.i.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_1_1 v_conv2_i_i_1_1 v_mul_i_i_1_1;
(*   %conv3.i.i.1.1 = trunc i32 %xor.i.i.1.1 to i8 *)
split tmp_v_xor_i_i_1_1 v_conv3_i_i_1_1 v_xor_i_i_1_1 8;
vpc v_conv3_i_i_1_1@uint8 v_conv3_i_i_1_1@uint32;
(*   %conv4.i.i.1.1 = zext i8 %conv5.i.i.1436 to i32 *)
cast v_conv4_i_i_1_1@uint32 v_conv5_i_i_1436@uint8;
(*   %shr.i.i.1.1 = ashr i32 %conv4.i.i.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i_1_1 tmp_to_be_used v_conv4_i_i_1_1 1;
(*   %conv5.i.i.1.1 = trunc i32 %shr.i.i.1.1 to i8 *)
split tmp_v_shr_i_i_1_1 v_conv5_i_i_1_1 v_shr_i_i_1_1 8;
vpc v_conv5_i_i_1_1@uint8 v_conv5_i_i_1_1@uint32;
(*   %conv6.i.i.1.1 = zext i8 %conv7.i.i.1439 to i32 *)
cast v_conv6_i_i_1_1@uint32 v_conv7_i_i_1439@uint8;
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
(*   %arrayidx6.i.1 = getelementptr inbounds i8, i8* %add.ptr, i64 1 *)
(*   store i8 %conv3.i.i.7.1, i8* %arrayidx6.i.1, align 1 *)
mov cc_5 v_conv3_i_i_7_1;
(*   %arrayidx.i.2 = getelementptr inbounds i8, i8* %a, i64 2 *)
(*   %4 = load i8, i8* %arrayidx.i.2, align 1 *)
mov v4 a_2;
(*   %arrayidx4.i.2 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %5 = load i8, i8* %arrayidx4.i.2, align 1 *)
mov v5 b_2;
(*   %conv.i.i.2440 = zext i8 %5 to i32 *)
cast v_conv_i_i_2440@uint32 v5@uint8;
(*   %and.i.i.2441 = and i32 %conv.i.i.2440, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_2441 v_conv_i_i_2440 (0x1)@uint32;
(*   %conv1.i.i.2442 = zext i8 %4 to i32 *)
cast v_conv1_i_i_2442@uint32 v4@uint8;
(*   %mul.i.i.2443 = mul nsw i32 %and.i.i.2441, %conv1.i.i.2442 *)
mul v_mul_i_i_2443 v_and_i_i_2441 v_conv1_i_i_2442;
(*   %conv3.i.i.2444 = trunc i32 %mul.i.i.2443 to i8 *)
split tmp_v_mul_i_i_2443 v_conv3_i_i_2444 v_mul_i_i_2443 8;
vpc v_conv3_i_i_2444@uint8 v_conv3_i_i_2444@uint32;
(*   %conv4.i.i.2445 = zext i8 %5 to i32 *)
cast v_conv4_i_i_2445@uint32 v5@uint8;
(*   %shr.i.i.2446 = ashr i32 %conv4.i.i.2445, 1 *)
(* You may need to modify here *)
split v_shr_i_i_2446 tmp_to_be_used v_conv4_i_i_2445 1;
(*   %conv5.i.i.2447 = trunc i32 %shr.i.i.2446 to i8 *)
split tmp_v_shr_i_i_2446 v_conv5_i_i_2447 v_shr_i_i_2446 8;
vpc v_conv5_i_i_2447@uint8 v_conv5_i_i_2447@uint32;
(*   %conv6.i.i.2448 = zext i8 %4 to i32 *)
cast v_conv6_i_i_2448@uint32 v4@uint8;
(*   %shl.i.i.2449 = shl i32 %conv6.i.i.2448, 1 *)
shls discard_14 v_shl_i_i_2449 v_conv6_i_i_2448 1;
(*   %conv7.i.i.2450 = trunc i32 %shl.i.i.2449 to i8 *)
split tmp_v_shl_i_i_2449 v_conv7_i_i_2450 v_shl_i_i_2449 8;
vpc v_conv7_i_i_2450@uint8 v_conv7_i_i_2450@uint32;
(*   %conv.i.i.1.2 = zext i8 %conv5.i.i.2447 to i32 *)
cast v_conv_i_i_1_2@uint32 v_conv5_i_i_2447@uint8;
(*   %and.i.i.1.2 = and i32 %conv.i.i.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_1_2 v_conv_i_i_1_2 (0x1)@uint32;
(*   %conv1.i.i.1.2 = zext i8 %conv7.i.i.2450 to i32 *)
cast v_conv1_i_i_1_2@uint32 v_conv7_i_i_2450@uint8;
(*   %mul.i.i.1.2 = mul nsw i32 %and.i.i.1.2, %conv1.i.i.1.2 *)
mul v_mul_i_i_1_2 v_and_i_i_1_2 v_conv1_i_i_1_2;
(*   %conv2.i.i.1.2 = zext i8 %conv3.i.i.2444 to i32 *)
cast v_conv2_i_i_1_2@uint32 v_conv3_i_i_2444@uint8;
(*   %xor.i.i.1.2 = xor i32 %conv2.i.i.1.2, %mul.i.i.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_1_2 v_conv2_i_i_1_2 v_mul_i_i_1_2;
(*   %conv3.i.i.1.2 = trunc i32 %xor.i.i.1.2 to i8 *)
split tmp_v_xor_i_i_1_2 v_conv3_i_i_1_2 v_xor_i_i_1_2 8;
vpc v_conv3_i_i_1_2@uint8 v_conv3_i_i_1_2@uint32;
(*   %conv4.i.i.1.2 = zext i8 %conv5.i.i.2447 to i32 *)
cast v_conv4_i_i_1_2@uint32 v_conv5_i_i_2447@uint8;
(*   %shr.i.i.1.2 = ashr i32 %conv4.i.i.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i_1_2 tmp_to_be_used v_conv4_i_i_1_2 1;
(*   %conv5.i.i.1.2 = trunc i32 %shr.i.i.1.2 to i8 *)
split tmp_v_shr_i_i_1_2 v_conv5_i_i_1_2 v_shr_i_i_1_2 8;
vpc v_conv5_i_i_1_2@uint8 v_conv5_i_i_1_2@uint32;
(*   %conv6.i.i.1.2 = zext i8 %conv7.i.i.2450 to i32 *)
cast v_conv6_i_i_1_2@uint32 v_conv7_i_i_2450@uint8;
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
(*   %arrayidx6.i.2 = getelementptr inbounds i8, i8* %add.ptr, i64 2 *)
(*   store i8 %conv3.i.i.7.2, i8* %arrayidx6.i.2, align 1 *)
mov cc_6 v_conv3_i_i_7_2;
(*   %arrayidx.i.3 = getelementptr inbounds i8, i8* %a, i64 3 *)
(*   %6 = load i8, i8* %arrayidx.i.3, align 1 *)
mov v6 a_3;
(*   %arrayidx4.i.3 = getelementptr inbounds i8, i8* %b, i64 3 *)
(*   %7 = load i8, i8* %arrayidx4.i.3, align 1 *)
mov v7 b_3;
(*   %conv.i.i.3451 = zext i8 %7 to i32 *)
cast v_conv_i_i_3451@uint32 v7@uint8;
(*   %and.i.i.3452 = and i32 %conv.i.i.3451, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_3452 v_conv_i_i_3451 (0x1)@uint32;
(*   %conv1.i.i.3453 = zext i8 %6 to i32 *)
cast v_conv1_i_i_3453@uint32 v6@uint8;
(*   %mul.i.i.3454 = mul nsw i32 %and.i.i.3452, %conv1.i.i.3453 *)
mul v_mul_i_i_3454 v_and_i_i_3452 v_conv1_i_i_3453;
(*   %conv3.i.i.3455 = trunc i32 %mul.i.i.3454 to i8 *)
split tmp_v_mul_i_i_3454 v_conv3_i_i_3455 v_mul_i_i_3454 8;
vpc v_conv3_i_i_3455@uint8 v_conv3_i_i_3455@uint32;
(*   %conv4.i.i.3456 = zext i8 %7 to i32 *)
cast v_conv4_i_i_3456@uint32 v7@uint8;
(*   %shr.i.i.3457 = ashr i32 %conv4.i.i.3456, 1 *)
(* You may need to modify here *)
split v_shr_i_i_3457 tmp_to_be_used v_conv4_i_i_3456 1;
(*   %conv5.i.i.3458 = trunc i32 %shr.i.i.3457 to i8 *)
split tmp_v_shr_i_i_3457 v_conv5_i_i_3458 v_shr_i_i_3457 8;
vpc v_conv5_i_i_3458@uint8 v_conv5_i_i_3458@uint32;
(*   %conv6.i.i.3459 = zext i8 %6 to i32 *)
cast v_conv6_i_i_3459@uint32 v6@uint8;
(*   %shl.i.i.3460 = shl i32 %conv6.i.i.3459, 1 *)
shls discard_21 v_shl_i_i_3460 v_conv6_i_i_3459 1;
(*   %conv7.i.i.3461 = trunc i32 %shl.i.i.3460 to i8 *)
split tmp_v_shl_i_i_3460 v_conv7_i_i_3461 v_shl_i_i_3460 8;
vpc v_conv7_i_i_3461@uint8 v_conv7_i_i_3461@uint32;
(*   %conv.i.i.1.3 = zext i8 %conv5.i.i.3458 to i32 *)
cast v_conv_i_i_1_3@uint32 v_conv5_i_i_3458@uint8;
(*   %and.i.i.1.3 = and i32 %conv.i.i.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_1_3 v_conv_i_i_1_3 (0x1)@uint32;
(*   %conv1.i.i.1.3 = zext i8 %conv7.i.i.3461 to i32 *)
cast v_conv1_i_i_1_3@uint32 v_conv7_i_i_3461@uint8;
(*   %mul.i.i.1.3 = mul nsw i32 %and.i.i.1.3, %conv1.i.i.1.3 *)
mul v_mul_i_i_1_3 v_and_i_i_1_3 v_conv1_i_i_1_3;
(*   %conv2.i.i.1.3 = zext i8 %conv3.i.i.3455 to i32 *)
cast v_conv2_i_i_1_3@uint32 v_conv3_i_i_3455@uint8;
(*   %xor.i.i.1.3 = xor i32 %conv2.i.i.1.3, %mul.i.i.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_1_3 v_conv2_i_i_1_3 v_mul_i_i_1_3;
(*   %conv3.i.i.1.3 = trunc i32 %xor.i.i.1.3 to i8 *)
split tmp_v_xor_i_i_1_3 v_conv3_i_i_1_3 v_xor_i_i_1_3 8;
vpc v_conv3_i_i_1_3@uint8 v_conv3_i_i_1_3@uint32;
(*   %conv4.i.i.1.3 = zext i8 %conv5.i.i.3458 to i32 *)
cast v_conv4_i_i_1_3@uint32 v_conv5_i_i_3458@uint8;
(*   %shr.i.i.1.3 = ashr i32 %conv4.i.i.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i_1_3 tmp_to_be_used v_conv4_i_i_1_3 1;
(*   %conv5.i.i.1.3 = trunc i32 %shr.i.i.1.3 to i8 *)
split tmp_v_shr_i_i_1_3 v_conv5_i_i_1_3 v_shr_i_i_1_3 8;
vpc v_conv5_i_i_1_3@uint8 v_conv5_i_i_1_3@uint32;
(*   %conv6.i.i.1.3 = zext i8 %conv7.i.i.3461 to i32 *)
cast v_conv6_i_i_1_3@uint32 v_conv7_i_i_3461@uint8;
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
(*   %arrayidx6.i.3 = getelementptr inbounds i8, i8* %add.ptr, i64 3 *)
(*   store i8 %conv3.i.i.7.3, i8* %arrayidx6.i.3, align 1 *)
mov cc_7 v_conv3_i_i_7_3;
(*   %arraydecay1 = getelementptr inbounds [32 x i8], [32 x i8]* %cc, i64 0, i64 0 *)
(*   %arraydecay4 = getelementptr inbounds [32 x i8], [32 x i8]* %cc, i64 0, i64 0 *)
(*   %add.ptr3 = getelementptr inbounds i8, i8* %arraydecay1, i64 8 *)
(*   %8 = load i8, i8* %a, align 1 *)
mov v8 a_0;
(*   %arrayidx4.i142 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %9 = load i8, i8* %arrayidx4.i142, align 1 *)
mov v9 b_1;
(*   %conv.i.i146 = zext i8 %9 to i32 *)
cast v_conv_i_i146@uint32 v9@uint8;
(*   %and.i.i147 = and i32 %conv.i.i146, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i147 v_conv_i_i146 (0x1)@uint32;
(*   %conv1.i.i148 = zext i8 %8 to i32 *)
cast v_conv1_i_i148@uint32 v8@uint8;
(*   %mul.i.i149 = mul nsw i32 %and.i.i147, %conv1.i.i148 *)
mul v_mul_i_i149 v_and_i_i147 v_conv1_i_i148;
(*   %conv3.i.i152 = trunc i32 %mul.i.i149 to i8 *)
split tmp_v_mul_i_i149 v_conv3_i_i152 v_mul_i_i149 8;
vpc v_conv3_i_i152@uint8 v_conv3_i_i152@uint32;
(*   %conv4.i.i153 = zext i8 %9 to i32 *)
cast v_conv4_i_i153@uint32 v9@uint8;
(*   %shr.i.i154 = ashr i32 %conv4.i.i153, 1 *)
(* You may need to modify here *)
split v_shr_i_i154 tmp_to_be_used v_conv4_i_i153 1;
(*   %conv5.i.i155 = trunc i32 %shr.i.i154 to i8 *)
split tmp_v_shr_i_i154 v_conv5_i_i155 v_shr_i_i154 8;
vpc v_conv5_i_i155@uint8 v_conv5_i_i155@uint32;
(*   %conv6.i.i156 = zext i8 %8 to i32 *)
cast v_conv6_i_i156@uint32 v8@uint8;
(*   %shl.i.i157 = shl i32 %conv6.i.i156, 1 *)
shls discard_28 v_shl_i_i157 v_conv6_i_i156 1;
(*   %conv7.i.i158 = trunc i32 %shl.i.i157 to i8 *)
split tmp_v_shl_i_i157 v_conv7_i_i158 v_shl_i_i157 8;
vpc v_conv7_i_i158@uint8 v_conv7_i_i158@uint32;
(*   %conv.i.i146.1 = zext i8 %conv5.i.i155 to i32 *)
cast v_conv_i_i146_1@uint32 v_conv5_i_i155@uint8;
(*   %and.i.i147.1 = and i32 %conv.i.i146.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i147_1 v_conv_i_i146_1 (0x1)@uint32;
(*   %conv1.i.i148.1 = zext i8 %conv7.i.i158 to i32 *)
cast v_conv1_i_i148_1@uint32 v_conv7_i_i158@uint8;
(*   %mul.i.i149.1 = mul nsw i32 %and.i.i147.1, %conv1.i.i148.1 *)
mul v_mul_i_i149_1 v_and_i_i147_1 v_conv1_i_i148_1;
(*   %conv2.i.i150.1 = zext i8 %conv3.i.i152 to i32 *)
cast v_conv2_i_i150_1@uint32 v_conv3_i_i152@uint8;
(*   %xor.i.i151.1 = xor i32 %conv2.i.i150.1, %mul.i.i149.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i151_1 v_conv2_i_i150_1 v_mul_i_i149_1;
(*   %conv3.i.i152.1 = trunc i32 %xor.i.i151.1 to i8 *)
split tmp_v_xor_i_i151_1 v_conv3_i_i152_1 v_xor_i_i151_1 8;
vpc v_conv3_i_i152_1@uint8 v_conv3_i_i152_1@uint32;
(*   %conv4.i.i153.1 = zext i8 %conv5.i.i155 to i32 *)
cast v_conv4_i_i153_1@uint32 v_conv5_i_i155@uint8;
(*   %shr.i.i154.1 = ashr i32 %conv4.i.i153.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i154_1 tmp_to_be_used v_conv4_i_i153_1 1;
(*   %conv5.i.i155.1 = trunc i32 %shr.i.i154.1 to i8 *)
split tmp_v_shr_i_i154_1 v_conv5_i_i155_1 v_shr_i_i154_1 8;
vpc v_conv5_i_i155_1@uint8 v_conv5_i_i155_1@uint32;
(*   %conv6.i.i156.1 = zext i8 %conv7.i.i158 to i32 *)
cast v_conv6_i_i156_1@uint32 v_conv7_i_i158@uint8;
(*   %shl.i.i157.1 = shl i32 %conv6.i.i156.1, 1 *)
shls discard_29 v_shl_i_i157_1 v_conv6_i_i156_1 1;
(*   %conv7.i.i158.1 = trunc i32 %shl.i.i157.1 to i8 *)
split tmp_v_shl_i_i157_1 v_conv7_i_i158_1 v_shl_i_i157_1 8;
vpc v_conv7_i_i158_1@uint8 v_conv7_i_i158_1@uint32;
(*   %conv.i.i146.2 = zext i8 %conv5.i.i155.1 to i32 *)
cast v_conv_i_i146_2@uint32 v_conv5_i_i155_1@uint8;
(*   %and.i.i147.2 = and i32 %conv.i.i146.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i147_2 v_conv_i_i146_2 (0x1)@uint32;
(*   %conv1.i.i148.2 = zext i8 %conv7.i.i158.1 to i32 *)
cast v_conv1_i_i148_2@uint32 v_conv7_i_i158_1@uint8;
(*   %mul.i.i149.2 = mul nsw i32 %and.i.i147.2, %conv1.i.i148.2 *)
mul v_mul_i_i149_2 v_and_i_i147_2 v_conv1_i_i148_2;
(*   %conv2.i.i150.2 = zext i8 %conv3.i.i152.1 to i32 *)
cast v_conv2_i_i150_2@uint32 v_conv3_i_i152_1@uint8;
(*   %xor.i.i151.2 = xor i32 %conv2.i.i150.2, %mul.i.i149.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i151_2 v_conv2_i_i150_2 v_mul_i_i149_2;
(*   %conv3.i.i152.2 = trunc i32 %xor.i.i151.2 to i8 *)
split tmp_v_xor_i_i151_2 v_conv3_i_i152_2 v_xor_i_i151_2 8;
vpc v_conv3_i_i152_2@uint8 v_conv3_i_i152_2@uint32;
(*   %conv4.i.i153.2 = zext i8 %conv5.i.i155.1 to i32 *)
cast v_conv4_i_i153_2@uint32 v_conv5_i_i155_1@uint8;
(*   %shr.i.i154.2 = ashr i32 %conv4.i.i153.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i154_2 tmp_to_be_used v_conv4_i_i153_2 1;
(*   %conv5.i.i155.2 = trunc i32 %shr.i.i154.2 to i8 *)
split tmp_v_shr_i_i154_2 v_conv5_i_i155_2 v_shr_i_i154_2 8;
vpc v_conv5_i_i155_2@uint8 v_conv5_i_i155_2@uint32;
(*   %conv6.i.i156.2 = zext i8 %conv7.i.i158.1 to i32 *)
cast v_conv6_i_i156_2@uint32 v_conv7_i_i158_1@uint8;
(*   %shl.i.i157.2 = shl i32 %conv6.i.i156.2, 1 *)
shls discard_30 v_shl_i_i157_2 v_conv6_i_i156_2 1;
(*   %conv7.i.i158.2 = trunc i32 %shl.i.i157.2 to i8 *)
split tmp_v_shl_i_i157_2 v_conv7_i_i158_2 v_shl_i_i157_2 8;
vpc v_conv7_i_i158_2@uint8 v_conv7_i_i158_2@uint32;
(*   %conv.i.i146.3 = zext i8 %conv5.i.i155.2 to i32 *)
cast v_conv_i_i146_3@uint32 v_conv5_i_i155_2@uint8;
(*   %and.i.i147.3 = and i32 %conv.i.i146.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i147_3 v_conv_i_i146_3 (0x1)@uint32;
(*   %conv1.i.i148.3 = zext i8 %conv7.i.i158.2 to i32 *)
cast v_conv1_i_i148_3@uint32 v_conv7_i_i158_2@uint8;
(*   %mul.i.i149.3 = mul nsw i32 %and.i.i147.3, %conv1.i.i148.3 *)
mul v_mul_i_i149_3 v_and_i_i147_3 v_conv1_i_i148_3;
(*   %conv2.i.i150.3 = zext i8 %conv3.i.i152.2 to i32 *)
cast v_conv2_i_i150_3@uint32 v_conv3_i_i152_2@uint8;
(*   %xor.i.i151.3 = xor i32 %conv2.i.i150.3, %mul.i.i149.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i151_3 v_conv2_i_i150_3 v_mul_i_i149_3;
(*   %conv3.i.i152.3 = trunc i32 %xor.i.i151.3 to i8 *)
split tmp_v_xor_i_i151_3 v_conv3_i_i152_3 v_xor_i_i151_3 8;
vpc v_conv3_i_i152_3@uint8 v_conv3_i_i152_3@uint32;
(*   %conv4.i.i153.3 = zext i8 %conv5.i.i155.2 to i32 *)
cast v_conv4_i_i153_3@uint32 v_conv5_i_i155_2@uint8;
(*   %shr.i.i154.3 = ashr i32 %conv4.i.i153.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i154_3 tmp_to_be_used v_conv4_i_i153_3 1;
(*   %conv5.i.i155.3 = trunc i32 %shr.i.i154.3 to i8 *)
split tmp_v_shr_i_i154_3 v_conv5_i_i155_3 v_shr_i_i154_3 8;
vpc v_conv5_i_i155_3@uint8 v_conv5_i_i155_3@uint32;
(*   %conv6.i.i156.3 = zext i8 %conv7.i.i158.2 to i32 *)
cast v_conv6_i_i156_3@uint32 v_conv7_i_i158_2@uint8;
(*   %shl.i.i157.3 = shl i32 %conv6.i.i156.3, 1 *)
shls discard_31 v_shl_i_i157_3 v_conv6_i_i156_3 1;
(*   %conv7.i.i158.3 = trunc i32 %shl.i.i157.3 to i8 *)
split tmp_v_shl_i_i157_3 v_conv7_i_i158_3 v_shl_i_i157_3 8;
vpc v_conv7_i_i158_3@uint8 v_conv7_i_i158_3@uint32;
(*   %conv.i.i146.4 = zext i8 %conv5.i.i155.3 to i32 *)
cast v_conv_i_i146_4@uint32 v_conv5_i_i155_3@uint8;
(*   %and.i.i147.4 = and i32 %conv.i.i146.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i147_4 v_conv_i_i146_4 (0x1)@uint32;
(*   %conv1.i.i148.4 = zext i8 %conv7.i.i158.3 to i32 *)
cast v_conv1_i_i148_4@uint32 v_conv7_i_i158_3@uint8;
(*   %mul.i.i149.4 = mul nsw i32 %and.i.i147.4, %conv1.i.i148.4 *)
mul v_mul_i_i149_4 v_and_i_i147_4 v_conv1_i_i148_4;
(*   %conv2.i.i150.4 = zext i8 %conv3.i.i152.3 to i32 *)
cast v_conv2_i_i150_4@uint32 v_conv3_i_i152_3@uint8;
(*   %xor.i.i151.4 = xor i32 %conv2.i.i150.4, %mul.i.i149.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i151_4 v_conv2_i_i150_4 v_mul_i_i149_4;
(*   %conv3.i.i152.4 = trunc i32 %xor.i.i151.4 to i8 *)
split tmp_v_xor_i_i151_4 v_conv3_i_i152_4 v_xor_i_i151_4 8;
vpc v_conv3_i_i152_4@uint8 v_conv3_i_i152_4@uint32;
(*   %conv4.i.i153.4 = zext i8 %conv5.i.i155.3 to i32 *)
cast v_conv4_i_i153_4@uint32 v_conv5_i_i155_3@uint8;
(*   %shr.i.i154.4 = ashr i32 %conv4.i.i153.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i154_4 tmp_to_be_used v_conv4_i_i153_4 1;
(*   %conv5.i.i155.4 = trunc i32 %shr.i.i154.4 to i8 *)
split tmp_v_shr_i_i154_4 v_conv5_i_i155_4 v_shr_i_i154_4 8;
vpc v_conv5_i_i155_4@uint8 v_conv5_i_i155_4@uint32;
(*   %conv6.i.i156.4 = zext i8 %conv7.i.i158.3 to i32 *)
cast v_conv6_i_i156_4@uint32 v_conv7_i_i158_3@uint8;
(*   %shl.i.i157.4 = shl i32 %conv6.i.i156.4, 1 *)
shls discard_32 v_shl_i_i157_4 v_conv6_i_i156_4 1;
(*   %conv7.i.i158.4 = trunc i32 %shl.i.i157.4 to i8 *)
split tmp_v_shl_i_i157_4 v_conv7_i_i158_4 v_shl_i_i157_4 8;
vpc v_conv7_i_i158_4@uint8 v_conv7_i_i158_4@uint32;
(*   %conv.i.i146.5 = zext i8 %conv5.i.i155.4 to i32 *)
cast v_conv_i_i146_5@uint32 v_conv5_i_i155_4@uint8;
(*   %and.i.i147.5 = and i32 %conv.i.i146.5, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i147_5 v_conv_i_i146_5 (0x1)@uint32;
(*   %conv1.i.i148.5 = zext i8 %conv7.i.i158.4 to i32 *)
cast v_conv1_i_i148_5@uint32 v_conv7_i_i158_4@uint8;
(*   %mul.i.i149.5 = mul nsw i32 %and.i.i147.5, %conv1.i.i148.5 *)
mul v_mul_i_i149_5 v_and_i_i147_5 v_conv1_i_i148_5;
(*   %conv2.i.i150.5 = zext i8 %conv3.i.i152.4 to i32 *)
cast v_conv2_i_i150_5@uint32 v_conv3_i_i152_4@uint8;
(*   %xor.i.i151.5 = xor i32 %conv2.i.i150.5, %mul.i.i149.5 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i151_5 v_conv2_i_i150_5 v_mul_i_i149_5;
(*   %conv3.i.i152.5 = trunc i32 %xor.i.i151.5 to i8 *)
split tmp_v_xor_i_i151_5 v_conv3_i_i152_5 v_xor_i_i151_5 8;
vpc v_conv3_i_i152_5@uint8 v_conv3_i_i152_5@uint32;
(*   %conv4.i.i153.5 = zext i8 %conv5.i.i155.4 to i32 *)
cast v_conv4_i_i153_5@uint32 v_conv5_i_i155_4@uint8;
(*   %shr.i.i154.5 = ashr i32 %conv4.i.i153.5, 1 *)
(* You may need to modify here *)
split v_shr_i_i154_5 tmp_to_be_used v_conv4_i_i153_5 1;
(*   %conv5.i.i155.5 = trunc i32 %shr.i.i154.5 to i8 *)
split tmp_v_shr_i_i154_5 v_conv5_i_i155_5 v_shr_i_i154_5 8;
vpc v_conv5_i_i155_5@uint8 v_conv5_i_i155_5@uint32;
(*   %conv6.i.i156.5 = zext i8 %conv7.i.i158.4 to i32 *)
cast v_conv6_i_i156_5@uint32 v_conv7_i_i158_4@uint8;
(*   %shl.i.i157.5 = shl i32 %conv6.i.i156.5, 1 *)
shls discard_33 v_shl_i_i157_5 v_conv6_i_i156_5 1;
(*   %conv7.i.i158.5 = trunc i32 %shl.i.i157.5 to i8 *)
split tmp_v_shl_i_i157_5 v_conv7_i_i158_5 v_shl_i_i157_5 8;
vpc v_conv7_i_i158_5@uint8 v_conv7_i_i158_5@uint32;
(*   %conv.i.i146.6 = zext i8 %conv5.i.i155.5 to i32 *)
cast v_conv_i_i146_6@uint32 v_conv5_i_i155_5@uint8;
(*   %and.i.i147.6 = and i32 %conv.i.i146.6, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i147_6 v_conv_i_i146_6 (0x1)@uint32;
(*   %conv1.i.i148.6 = zext i8 %conv7.i.i158.5 to i32 *)
cast v_conv1_i_i148_6@uint32 v_conv7_i_i158_5@uint8;
(*   %mul.i.i149.6 = mul nsw i32 %and.i.i147.6, %conv1.i.i148.6 *)
mul v_mul_i_i149_6 v_and_i_i147_6 v_conv1_i_i148_6;
(*   %conv2.i.i150.6 = zext i8 %conv3.i.i152.5 to i32 *)
cast v_conv2_i_i150_6@uint32 v_conv3_i_i152_5@uint8;
(*   %xor.i.i151.6 = xor i32 %conv2.i.i150.6, %mul.i.i149.6 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i151_6 v_conv2_i_i150_6 v_mul_i_i149_6;
(*   %conv3.i.i152.6 = trunc i32 %xor.i.i151.6 to i8 *)
split tmp_v_xor_i_i151_6 v_conv3_i_i152_6 v_xor_i_i151_6 8;
vpc v_conv3_i_i152_6@uint8 v_conv3_i_i152_6@uint32;
(*   %conv4.i.i153.6 = zext i8 %conv5.i.i155.5 to i32 *)
cast v_conv4_i_i153_6@uint32 v_conv5_i_i155_5@uint8;
(*   %shr.i.i154.6 = ashr i32 %conv4.i.i153.6, 1 *)
(* You may need to modify here *)
split v_shr_i_i154_6 tmp_to_be_used v_conv4_i_i153_6 1;
(*   %conv5.i.i155.6 = trunc i32 %shr.i.i154.6 to i8 *)
split tmp_v_shr_i_i154_6 v_conv5_i_i155_6 v_shr_i_i154_6 8;
vpc v_conv5_i_i155_6@uint8 v_conv5_i_i155_6@uint32;
(*   %conv6.i.i156.6 = zext i8 %conv7.i.i158.5 to i32 *)
cast v_conv6_i_i156_6@uint32 v_conv7_i_i158_5@uint8;
(*   %shl.i.i157.6 = shl i32 %conv6.i.i156.6, 1 *)
shls discard_34 v_shl_i_i157_6 v_conv6_i_i156_6 1;
(*   %conv7.i.i158.6 = trunc i32 %shl.i.i157.6 to i8 *)
split tmp_v_shl_i_i157_6 v_conv7_i_i158_6 v_shl_i_i157_6 8;
vpc v_conv7_i_i158_6@uint8 v_conv7_i_i158_6@uint32;
(*   %conv.i.i146.7 = zext i8 %conv5.i.i155.6 to i32 *)
cast v_conv_i_i146_7@uint32 v_conv5_i_i155_6@uint8;
(*   %and.i.i147.7 = and i32 %conv.i.i146.7, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i147_7 v_conv_i_i146_7 (0x1)@uint32;
(*   %conv1.i.i148.7 = zext i8 %conv7.i.i158.6 to i32 *)
cast v_conv1_i_i148_7@uint32 v_conv7_i_i158_6@uint8;
(*   %mul.i.i149.7 = mul nsw i32 %and.i.i147.7, %conv1.i.i148.7 *)
mul v_mul_i_i149_7 v_and_i_i147_7 v_conv1_i_i148_7;
(*   %conv2.i.i150.7 = zext i8 %conv3.i.i152.6 to i32 *)
cast v_conv2_i_i150_7@uint32 v_conv3_i_i152_6@uint8;
(*   %xor.i.i151.7 = xor i32 %conv2.i.i150.7, %mul.i.i149.7 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i151_7 v_conv2_i_i150_7 v_mul_i_i149_7;
(*   %conv3.i.i152.7 = trunc i32 %xor.i.i151.7 to i8 *)
split tmp_v_xor_i_i151_7 v_conv3_i_i152_7 v_xor_i_i151_7 8;
vpc v_conv3_i_i152_7@uint8 v_conv3_i_i152_7@uint32;
(*   store i8 %conv3.i.i152.7, i8* %add.ptr3, align 1 *)
mov cc_8 v_conv3_i_i152_7;
(*   %arrayidx.i138.1 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %10 = load i8, i8* %arrayidx.i138.1, align 1 *)
mov v10 a_1;
(*   %arrayidx4.i142.1 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %11 = load i8, i8* %arrayidx4.i142.1, align 1 *)
mov v11 b_2;
(*   %conv.i.i146.1159 = zext i8 %11 to i32 *)
cast v_conv_i_i146_1159@uint32 v11@uint8;
(*   %and.i.i147.1160 = and i32 %conv.i.i146.1159, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i147_1160 v_conv_i_i146_1159 (0x1)@uint32;
(*   %conv1.i.i148.1161 = zext i8 %10 to i32 *)
cast v_conv1_i_i148_1161@uint32 v10@uint8;
(*   %mul.i.i149.1162 = mul nsw i32 %and.i.i147.1160, %conv1.i.i148.1161 *)
mul v_mul_i_i149_1162 v_and_i_i147_1160 v_conv1_i_i148_1161;
(*   %conv3.i.i152.1163 = trunc i32 %mul.i.i149.1162 to i8 *)
split tmp_v_mul_i_i149_1162 v_conv3_i_i152_1163 v_mul_i_i149_1162 8;
vpc v_conv3_i_i152_1163@uint8 v_conv3_i_i152_1163@uint32;
(*   %conv4.i.i153.1164 = zext i8 %11 to i32 *)
cast v_conv4_i_i153_1164@uint32 v11@uint8;
(*   %shr.i.i154.1165 = ashr i32 %conv4.i.i153.1164, 1 *)
(* You may need to modify here *)
split v_shr_i_i154_1165 tmp_to_be_used v_conv4_i_i153_1164 1;
(*   %conv5.i.i155.1166 = trunc i32 %shr.i.i154.1165 to i8 *)
split tmp_v_shr_i_i154_1165 v_conv5_i_i155_1166 v_shr_i_i154_1165 8;
vpc v_conv5_i_i155_1166@uint8 v_conv5_i_i155_1166@uint32;
(*   %conv6.i.i156.1167 = zext i8 %10 to i32 *)
cast v_conv6_i_i156_1167@uint32 v10@uint8;
(*   %shl.i.i157.1168 = shl i32 %conv6.i.i156.1167, 1 *)
shls discard_35 v_shl_i_i157_1168 v_conv6_i_i156_1167 1;
(*   %conv7.i.i158.1169 = trunc i32 %shl.i.i157.1168 to i8 *)
split tmp_v_shl_i_i157_1168 v_conv7_i_i158_1169 v_shl_i_i157_1168 8;
vpc v_conv7_i_i158_1169@uint8 v_conv7_i_i158_1169@uint32;
(*   %conv.i.i146.1.1 = zext i8 %conv5.i.i155.1166 to i32 *)
cast v_conv_i_i146_1_1@uint32 v_conv5_i_i155_1166@uint8;
(*   %and.i.i147.1.1 = and i32 %conv.i.i146.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i147_1_1 v_conv_i_i146_1_1 (0x1)@uint32;
(*   %conv1.i.i148.1.1 = zext i8 %conv7.i.i158.1169 to i32 *)
cast v_conv1_i_i148_1_1@uint32 v_conv7_i_i158_1169@uint8;
(*   %mul.i.i149.1.1 = mul nsw i32 %and.i.i147.1.1, %conv1.i.i148.1.1 *)
mul v_mul_i_i149_1_1 v_and_i_i147_1_1 v_conv1_i_i148_1_1;
(*   %conv2.i.i150.1.1 = zext i8 %conv3.i.i152.1163 to i32 *)
cast v_conv2_i_i150_1_1@uint32 v_conv3_i_i152_1163@uint8;
(*   %xor.i.i151.1.1 = xor i32 %conv2.i.i150.1.1, %mul.i.i149.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i151_1_1 v_conv2_i_i150_1_1 v_mul_i_i149_1_1;
(*   %conv3.i.i152.1.1 = trunc i32 %xor.i.i151.1.1 to i8 *)
split tmp_v_xor_i_i151_1_1 v_conv3_i_i152_1_1 v_xor_i_i151_1_1 8;
vpc v_conv3_i_i152_1_1@uint8 v_conv3_i_i152_1_1@uint32;
(*   %conv4.i.i153.1.1 = zext i8 %conv5.i.i155.1166 to i32 *)
cast v_conv4_i_i153_1_1@uint32 v_conv5_i_i155_1166@uint8;
(*   %shr.i.i154.1.1 = ashr i32 %conv4.i.i153.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i154_1_1 tmp_to_be_used v_conv4_i_i153_1_1 1;
(*   %conv5.i.i155.1.1 = trunc i32 %shr.i.i154.1.1 to i8 *)
split tmp_v_shr_i_i154_1_1 v_conv5_i_i155_1_1 v_shr_i_i154_1_1 8;
vpc v_conv5_i_i155_1_1@uint8 v_conv5_i_i155_1_1@uint32;
(*   %conv6.i.i156.1.1 = zext i8 %conv7.i.i158.1169 to i32 *)
cast v_conv6_i_i156_1_1@uint32 v_conv7_i_i158_1169@uint8;
(*   %shl.i.i157.1.1 = shl i32 %conv6.i.i156.1.1, 1 *)
shls discard_36 v_shl_i_i157_1_1 v_conv6_i_i156_1_1 1;
(*   %conv7.i.i158.1.1 = trunc i32 %shl.i.i157.1.1 to i8 *)
split tmp_v_shl_i_i157_1_1 v_conv7_i_i158_1_1 v_shl_i_i157_1_1 8;
vpc v_conv7_i_i158_1_1@uint8 v_conv7_i_i158_1_1@uint32;
(*   %conv.i.i146.2.1 = zext i8 %conv5.i.i155.1.1 to i32 *)
cast v_conv_i_i146_2_1@uint32 v_conv5_i_i155_1_1@uint8;
(*   %and.i.i147.2.1 = and i32 %conv.i.i146.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i147_2_1 v_conv_i_i146_2_1 (0x1)@uint32;
(*   %conv1.i.i148.2.1 = zext i8 %conv7.i.i158.1.1 to i32 *)
cast v_conv1_i_i148_2_1@uint32 v_conv7_i_i158_1_1@uint8;
(*   %mul.i.i149.2.1 = mul nsw i32 %and.i.i147.2.1, %conv1.i.i148.2.1 *)
mul v_mul_i_i149_2_1 v_and_i_i147_2_1 v_conv1_i_i148_2_1;
(*   %conv2.i.i150.2.1 = zext i8 %conv3.i.i152.1.1 to i32 *)
cast v_conv2_i_i150_2_1@uint32 v_conv3_i_i152_1_1@uint8;
(*   %xor.i.i151.2.1 = xor i32 %conv2.i.i150.2.1, %mul.i.i149.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i151_2_1 v_conv2_i_i150_2_1 v_mul_i_i149_2_1;
(*   %conv3.i.i152.2.1 = trunc i32 %xor.i.i151.2.1 to i8 *)
split tmp_v_xor_i_i151_2_1 v_conv3_i_i152_2_1 v_xor_i_i151_2_1 8;
vpc v_conv3_i_i152_2_1@uint8 v_conv3_i_i152_2_1@uint32;
(*   %conv4.i.i153.2.1 = zext i8 %conv5.i.i155.1.1 to i32 *)
cast v_conv4_i_i153_2_1@uint32 v_conv5_i_i155_1_1@uint8;
(*   %shr.i.i154.2.1 = ashr i32 %conv4.i.i153.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i154_2_1 tmp_to_be_used v_conv4_i_i153_2_1 1;
(*   %conv5.i.i155.2.1 = trunc i32 %shr.i.i154.2.1 to i8 *)
split tmp_v_shr_i_i154_2_1 v_conv5_i_i155_2_1 v_shr_i_i154_2_1 8;
vpc v_conv5_i_i155_2_1@uint8 v_conv5_i_i155_2_1@uint32;
(*   %conv6.i.i156.2.1 = zext i8 %conv7.i.i158.1.1 to i32 *)
cast v_conv6_i_i156_2_1@uint32 v_conv7_i_i158_1_1@uint8;
(*   %shl.i.i157.2.1 = shl i32 %conv6.i.i156.2.1, 1 *)
shls discard_37 v_shl_i_i157_2_1 v_conv6_i_i156_2_1 1;
(*   %conv7.i.i158.2.1 = trunc i32 %shl.i.i157.2.1 to i8 *)
split tmp_v_shl_i_i157_2_1 v_conv7_i_i158_2_1 v_shl_i_i157_2_1 8;
vpc v_conv7_i_i158_2_1@uint8 v_conv7_i_i158_2_1@uint32;
(*   %conv.i.i146.3.1 = zext i8 %conv5.i.i155.2.1 to i32 *)
cast v_conv_i_i146_3_1@uint32 v_conv5_i_i155_2_1@uint8;
(*   %and.i.i147.3.1 = and i32 %conv.i.i146.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i147_3_1 v_conv_i_i146_3_1 (0x1)@uint32;
(*   %conv1.i.i148.3.1 = zext i8 %conv7.i.i158.2.1 to i32 *)
cast v_conv1_i_i148_3_1@uint32 v_conv7_i_i158_2_1@uint8;
(*   %mul.i.i149.3.1 = mul nsw i32 %and.i.i147.3.1, %conv1.i.i148.3.1 *)
mul v_mul_i_i149_3_1 v_and_i_i147_3_1 v_conv1_i_i148_3_1;
(*   %conv2.i.i150.3.1 = zext i8 %conv3.i.i152.2.1 to i32 *)
cast v_conv2_i_i150_3_1@uint32 v_conv3_i_i152_2_1@uint8;
(*   %xor.i.i151.3.1 = xor i32 %conv2.i.i150.3.1, %mul.i.i149.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i151_3_1 v_conv2_i_i150_3_1 v_mul_i_i149_3_1;
(*   %conv3.i.i152.3.1 = trunc i32 %xor.i.i151.3.1 to i8 *)
split tmp_v_xor_i_i151_3_1 v_conv3_i_i152_3_1 v_xor_i_i151_3_1 8;
vpc v_conv3_i_i152_3_1@uint8 v_conv3_i_i152_3_1@uint32;
(*   %conv4.i.i153.3.1 = zext i8 %conv5.i.i155.2.1 to i32 *)
cast v_conv4_i_i153_3_1@uint32 v_conv5_i_i155_2_1@uint8;
(*   %shr.i.i154.3.1 = ashr i32 %conv4.i.i153.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i154_3_1 tmp_to_be_used v_conv4_i_i153_3_1 1;
(*   %conv5.i.i155.3.1 = trunc i32 %shr.i.i154.3.1 to i8 *)
split tmp_v_shr_i_i154_3_1 v_conv5_i_i155_3_1 v_shr_i_i154_3_1 8;
vpc v_conv5_i_i155_3_1@uint8 v_conv5_i_i155_3_1@uint32;
(*   %conv6.i.i156.3.1 = zext i8 %conv7.i.i158.2.1 to i32 *)
cast v_conv6_i_i156_3_1@uint32 v_conv7_i_i158_2_1@uint8;
(*   %shl.i.i157.3.1 = shl i32 %conv6.i.i156.3.1, 1 *)
shls discard_38 v_shl_i_i157_3_1 v_conv6_i_i156_3_1 1;
(*   %conv7.i.i158.3.1 = trunc i32 %shl.i.i157.3.1 to i8 *)
split tmp_v_shl_i_i157_3_1 v_conv7_i_i158_3_1 v_shl_i_i157_3_1 8;
vpc v_conv7_i_i158_3_1@uint8 v_conv7_i_i158_3_1@uint32;
(*   %conv.i.i146.4.1 = zext i8 %conv5.i.i155.3.1 to i32 *)
cast v_conv_i_i146_4_1@uint32 v_conv5_i_i155_3_1@uint8;
(*   %and.i.i147.4.1 = and i32 %conv.i.i146.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i147_4_1 v_conv_i_i146_4_1 (0x1)@uint32;
(*   %conv1.i.i148.4.1 = zext i8 %conv7.i.i158.3.1 to i32 *)
cast v_conv1_i_i148_4_1@uint32 v_conv7_i_i158_3_1@uint8;
(*   %mul.i.i149.4.1 = mul nsw i32 %and.i.i147.4.1, %conv1.i.i148.4.1 *)
mul v_mul_i_i149_4_1 v_and_i_i147_4_1 v_conv1_i_i148_4_1;
(*   %conv2.i.i150.4.1 = zext i8 %conv3.i.i152.3.1 to i32 *)
cast v_conv2_i_i150_4_1@uint32 v_conv3_i_i152_3_1@uint8;
(*   %xor.i.i151.4.1 = xor i32 %conv2.i.i150.4.1, %mul.i.i149.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i151_4_1 v_conv2_i_i150_4_1 v_mul_i_i149_4_1;
(*   %conv3.i.i152.4.1 = trunc i32 %xor.i.i151.4.1 to i8 *)
split tmp_v_xor_i_i151_4_1 v_conv3_i_i152_4_1 v_xor_i_i151_4_1 8;
vpc v_conv3_i_i152_4_1@uint8 v_conv3_i_i152_4_1@uint32;
(*   %conv4.i.i153.4.1 = zext i8 %conv5.i.i155.3.1 to i32 *)
cast v_conv4_i_i153_4_1@uint32 v_conv5_i_i155_3_1@uint8;
(*   %shr.i.i154.4.1 = ashr i32 %conv4.i.i153.4.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i154_4_1 tmp_to_be_used v_conv4_i_i153_4_1 1;
(*   %conv5.i.i155.4.1 = trunc i32 %shr.i.i154.4.1 to i8 *)
split tmp_v_shr_i_i154_4_1 v_conv5_i_i155_4_1 v_shr_i_i154_4_1 8;
vpc v_conv5_i_i155_4_1@uint8 v_conv5_i_i155_4_1@uint32;
(*   %conv6.i.i156.4.1 = zext i8 %conv7.i.i158.3.1 to i32 *)
cast v_conv6_i_i156_4_1@uint32 v_conv7_i_i158_3_1@uint8;
(*   %shl.i.i157.4.1 = shl i32 %conv6.i.i156.4.1, 1 *)
shls discard_39 v_shl_i_i157_4_1 v_conv6_i_i156_4_1 1;
(*   %conv7.i.i158.4.1 = trunc i32 %shl.i.i157.4.1 to i8 *)
split tmp_v_shl_i_i157_4_1 v_conv7_i_i158_4_1 v_shl_i_i157_4_1 8;
vpc v_conv7_i_i158_4_1@uint8 v_conv7_i_i158_4_1@uint32;
(*   %conv.i.i146.5.1 = zext i8 %conv5.i.i155.4.1 to i32 *)
cast v_conv_i_i146_5_1@uint32 v_conv5_i_i155_4_1@uint8;
(*   %and.i.i147.5.1 = and i32 %conv.i.i146.5.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i147_5_1 v_conv_i_i146_5_1 (0x1)@uint32;
(*   %conv1.i.i148.5.1 = zext i8 %conv7.i.i158.4.1 to i32 *)
cast v_conv1_i_i148_5_1@uint32 v_conv7_i_i158_4_1@uint8;
(*   %mul.i.i149.5.1 = mul nsw i32 %and.i.i147.5.1, %conv1.i.i148.5.1 *)
mul v_mul_i_i149_5_1 v_and_i_i147_5_1 v_conv1_i_i148_5_1;
(*   %conv2.i.i150.5.1 = zext i8 %conv3.i.i152.4.1 to i32 *)
cast v_conv2_i_i150_5_1@uint32 v_conv3_i_i152_4_1@uint8;
(*   %xor.i.i151.5.1 = xor i32 %conv2.i.i150.5.1, %mul.i.i149.5.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i151_5_1 v_conv2_i_i150_5_1 v_mul_i_i149_5_1;
(*   %conv3.i.i152.5.1 = trunc i32 %xor.i.i151.5.1 to i8 *)
split tmp_v_xor_i_i151_5_1 v_conv3_i_i152_5_1 v_xor_i_i151_5_1 8;
vpc v_conv3_i_i152_5_1@uint8 v_conv3_i_i152_5_1@uint32;
(*   %conv4.i.i153.5.1 = zext i8 %conv5.i.i155.4.1 to i32 *)
cast v_conv4_i_i153_5_1@uint32 v_conv5_i_i155_4_1@uint8;
(*   %shr.i.i154.5.1 = ashr i32 %conv4.i.i153.5.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i154_5_1 tmp_to_be_used v_conv4_i_i153_5_1 1;
(*   %conv5.i.i155.5.1 = trunc i32 %shr.i.i154.5.1 to i8 *)
split tmp_v_shr_i_i154_5_1 v_conv5_i_i155_5_1 v_shr_i_i154_5_1 8;
vpc v_conv5_i_i155_5_1@uint8 v_conv5_i_i155_5_1@uint32;
(*   %conv6.i.i156.5.1 = zext i8 %conv7.i.i158.4.1 to i32 *)
cast v_conv6_i_i156_5_1@uint32 v_conv7_i_i158_4_1@uint8;
(*   %shl.i.i157.5.1 = shl i32 %conv6.i.i156.5.1, 1 *)
shls discard_40 v_shl_i_i157_5_1 v_conv6_i_i156_5_1 1;
(*   %conv7.i.i158.5.1 = trunc i32 %shl.i.i157.5.1 to i8 *)
split tmp_v_shl_i_i157_5_1 v_conv7_i_i158_5_1 v_shl_i_i157_5_1 8;
vpc v_conv7_i_i158_5_1@uint8 v_conv7_i_i158_5_1@uint32;
(*   %conv.i.i146.6.1 = zext i8 %conv5.i.i155.5.1 to i32 *)
cast v_conv_i_i146_6_1@uint32 v_conv5_i_i155_5_1@uint8;
(*   %and.i.i147.6.1 = and i32 %conv.i.i146.6.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i147_6_1 v_conv_i_i146_6_1 (0x1)@uint32;
(*   %conv1.i.i148.6.1 = zext i8 %conv7.i.i158.5.1 to i32 *)
cast v_conv1_i_i148_6_1@uint32 v_conv7_i_i158_5_1@uint8;
(*   %mul.i.i149.6.1 = mul nsw i32 %and.i.i147.6.1, %conv1.i.i148.6.1 *)
mul v_mul_i_i149_6_1 v_and_i_i147_6_1 v_conv1_i_i148_6_1;
(*   %conv2.i.i150.6.1 = zext i8 %conv3.i.i152.5.1 to i32 *)
cast v_conv2_i_i150_6_1@uint32 v_conv3_i_i152_5_1@uint8;
(*   %xor.i.i151.6.1 = xor i32 %conv2.i.i150.6.1, %mul.i.i149.6.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i151_6_1 v_conv2_i_i150_6_1 v_mul_i_i149_6_1;
(*   %conv3.i.i152.6.1 = trunc i32 %xor.i.i151.6.1 to i8 *)
split tmp_v_xor_i_i151_6_1 v_conv3_i_i152_6_1 v_xor_i_i151_6_1 8;
vpc v_conv3_i_i152_6_1@uint8 v_conv3_i_i152_6_1@uint32;
(*   %conv4.i.i153.6.1 = zext i8 %conv5.i.i155.5.1 to i32 *)
cast v_conv4_i_i153_6_1@uint32 v_conv5_i_i155_5_1@uint8;
(*   %shr.i.i154.6.1 = ashr i32 %conv4.i.i153.6.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i154_6_1 tmp_to_be_used v_conv4_i_i153_6_1 1;
(*   %conv5.i.i155.6.1 = trunc i32 %shr.i.i154.6.1 to i8 *)
split tmp_v_shr_i_i154_6_1 v_conv5_i_i155_6_1 v_shr_i_i154_6_1 8;
vpc v_conv5_i_i155_6_1@uint8 v_conv5_i_i155_6_1@uint32;
(*   %conv6.i.i156.6.1 = zext i8 %conv7.i.i158.5.1 to i32 *)
cast v_conv6_i_i156_6_1@uint32 v_conv7_i_i158_5_1@uint8;
(*   %shl.i.i157.6.1 = shl i32 %conv6.i.i156.6.1, 1 *)
shls discard_41 v_shl_i_i157_6_1 v_conv6_i_i156_6_1 1;
(*   %conv7.i.i158.6.1 = trunc i32 %shl.i.i157.6.1 to i8 *)
split tmp_v_shl_i_i157_6_1 v_conv7_i_i158_6_1 v_shl_i_i157_6_1 8;
vpc v_conv7_i_i158_6_1@uint8 v_conv7_i_i158_6_1@uint32;
(*   %conv.i.i146.7.1 = zext i8 %conv5.i.i155.6.1 to i32 *)
cast v_conv_i_i146_7_1@uint32 v_conv5_i_i155_6_1@uint8;
(*   %and.i.i147.7.1 = and i32 %conv.i.i146.7.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i147_7_1 v_conv_i_i146_7_1 (0x1)@uint32;
(*   %conv1.i.i148.7.1 = zext i8 %conv7.i.i158.6.1 to i32 *)
cast v_conv1_i_i148_7_1@uint32 v_conv7_i_i158_6_1@uint8;
(*   %mul.i.i149.7.1 = mul nsw i32 %and.i.i147.7.1, %conv1.i.i148.7.1 *)
mul v_mul_i_i149_7_1 v_and_i_i147_7_1 v_conv1_i_i148_7_1;
(*   %conv2.i.i150.7.1 = zext i8 %conv3.i.i152.6.1 to i32 *)
cast v_conv2_i_i150_7_1@uint32 v_conv3_i_i152_6_1@uint8;
(*   %xor.i.i151.7.1 = xor i32 %conv2.i.i150.7.1, %mul.i.i149.7.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i151_7_1 v_conv2_i_i150_7_1 v_mul_i_i149_7_1;
(*   %conv3.i.i152.7.1 = trunc i32 %xor.i.i151.7.1 to i8 *)
split tmp_v_xor_i_i151_7_1 v_conv3_i_i152_7_1 v_xor_i_i151_7_1 8;
vpc v_conv3_i_i152_7_1@uint8 v_conv3_i_i152_7_1@uint32;
(*   %arrayidx6.i162.1 = getelementptr inbounds i8, i8* %add.ptr3, i64 1 *)
(*   store i8 %conv3.i.i152.7.1, i8* %arrayidx6.i162.1, align 1 *)
mov cc_9 v_conv3_i_i152_7_1;
(*   %arrayidx.i138.2 = getelementptr inbounds i8, i8* %a, i64 2 *)
(*   %12 = load i8, i8* %arrayidx.i138.2, align 1 *)
mov v12 a_2;
(*   %arrayidx4.i142.2 = getelementptr inbounds i8, i8* %b, i64 3 *)
(*   %13 = load i8, i8* %arrayidx4.i142.2, align 1 *)
mov v13 b_3;
(*   %conv.i.i146.2170 = zext i8 %13 to i32 *)
cast v_conv_i_i146_2170@uint32 v13@uint8;
(*   %and.i.i147.2171 = and i32 %conv.i.i146.2170, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i147_2171 v_conv_i_i146_2170 (0x1)@uint32;
(*   %conv1.i.i148.2172 = zext i8 %12 to i32 *)
cast v_conv1_i_i148_2172@uint32 v12@uint8;
(*   %mul.i.i149.2173 = mul nsw i32 %and.i.i147.2171, %conv1.i.i148.2172 *)
mul v_mul_i_i149_2173 v_and_i_i147_2171 v_conv1_i_i148_2172;
(*   %conv3.i.i152.2174 = trunc i32 %mul.i.i149.2173 to i8 *)
split tmp_v_mul_i_i149_2173 v_conv3_i_i152_2174 v_mul_i_i149_2173 8;
vpc v_conv3_i_i152_2174@uint8 v_conv3_i_i152_2174@uint32;
(*   %conv4.i.i153.2175 = zext i8 %13 to i32 *)
cast v_conv4_i_i153_2175@uint32 v13@uint8;
(*   %shr.i.i154.2176 = ashr i32 %conv4.i.i153.2175, 1 *)
(* You may need to modify here *)
split v_shr_i_i154_2176 tmp_to_be_used v_conv4_i_i153_2175 1;
(*   %conv5.i.i155.2177 = trunc i32 %shr.i.i154.2176 to i8 *)
split tmp_v_shr_i_i154_2176 v_conv5_i_i155_2177 v_shr_i_i154_2176 8;
vpc v_conv5_i_i155_2177@uint8 v_conv5_i_i155_2177@uint32;
(*   %conv6.i.i156.2178 = zext i8 %12 to i32 *)
cast v_conv6_i_i156_2178@uint32 v12@uint8;
(*   %shl.i.i157.2179 = shl i32 %conv6.i.i156.2178, 1 *)
shls discard_42 v_shl_i_i157_2179 v_conv6_i_i156_2178 1;
(*   %conv7.i.i158.2180 = trunc i32 %shl.i.i157.2179 to i8 *)
split tmp_v_shl_i_i157_2179 v_conv7_i_i158_2180 v_shl_i_i157_2179 8;
vpc v_conv7_i_i158_2180@uint8 v_conv7_i_i158_2180@uint32;
(*   %conv.i.i146.1.2 = zext i8 %conv5.i.i155.2177 to i32 *)
cast v_conv_i_i146_1_2@uint32 v_conv5_i_i155_2177@uint8;
(*   %and.i.i147.1.2 = and i32 %conv.i.i146.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i147_1_2 v_conv_i_i146_1_2 (0x1)@uint32;
(*   %conv1.i.i148.1.2 = zext i8 %conv7.i.i158.2180 to i32 *)
cast v_conv1_i_i148_1_2@uint32 v_conv7_i_i158_2180@uint8;
(*   %mul.i.i149.1.2 = mul nsw i32 %and.i.i147.1.2, %conv1.i.i148.1.2 *)
mul v_mul_i_i149_1_2 v_and_i_i147_1_2 v_conv1_i_i148_1_2;
(*   %conv2.i.i150.1.2 = zext i8 %conv3.i.i152.2174 to i32 *)
cast v_conv2_i_i150_1_2@uint32 v_conv3_i_i152_2174@uint8;
(*   %xor.i.i151.1.2 = xor i32 %conv2.i.i150.1.2, %mul.i.i149.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i151_1_2 v_conv2_i_i150_1_2 v_mul_i_i149_1_2;
(*   %conv3.i.i152.1.2 = trunc i32 %xor.i.i151.1.2 to i8 *)
split tmp_v_xor_i_i151_1_2 v_conv3_i_i152_1_2 v_xor_i_i151_1_2 8;
vpc v_conv3_i_i152_1_2@uint8 v_conv3_i_i152_1_2@uint32;
(*   %conv4.i.i153.1.2 = zext i8 %conv5.i.i155.2177 to i32 *)
cast v_conv4_i_i153_1_2@uint32 v_conv5_i_i155_2177@uint8;
(*   %shr.i.i154.1.2 = ashr i32 %conv4.i.i153.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i154_1_2 tmp_to_be_used v_conv4_i_i153_1_2 1;
(*   %conv5.i.i155.1.2 = trunc i32 %shr.i.i154.1.2 to i8 *)
split tmp_v_shr_i_i154_1_2 v_conv5_i_i155_1_2 v_shr_i_i154_1_2 8;
vpc v_conv5_i_i155_1_2@uint8 v_conv5_i_i155_1_2@uint32;
(*   %conv6.i.i156.1.2 = zext i8 %conv7.i.i158.2180 to i32 *)
cast v_conv6_i_i156_1_2@uint32 v_conv7_i_i158_2180@uint8;
(*   %shl.i.i157.1.2 = shl i32 %conv6.i.i156.1.2, 1 *)
shls discard_43 v_shl_i_i157_1_2 v_conv6_i_i156_1_2 1;
(*   %conv7.i.i158.1.2 = trunc i32 %shl.i.i157.1.2 to i8 *)
split tmp_v_shl_i_i157_1_2 v_conv7_i_i158_1_2 v_shl_i_i157_1_2 8;
vpc v_conv7_i_i158_1_2@uint8 v_conv7_i_i158_1_2@uint32;
(*   %conv.i.i146.2.2 = zext i8 %conv5.i.i155.1.2 to i32 *)
cast v_conv_i_i146_2_2@uint32 v_conv5_i_i155_1_2@uint8;
(*   %and.i.i147.2.2 = and i32 %conv.i.i146.2.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i147_2_2 v_conv_i_i146_2_2 (0x1)@uint32;
(*   %conv1.i.i148.2.2 = zext i8 %conv7.i.i158.1.2 to i32 *)
cast v_conv1_i_i148_2_2@uint32 v_conv7_i_i158_1_2@uint8;
(*   %mul.i.i149.2.2 = mul nsw i32 %and.i.i147.2.2, %conv1.i.i148.2.2 *)
mul v_mul_i_i149_2_2 v_and_i_i147_2_2 v_conv1_i_i148_2_2;
(*   %conv2.i.i150.2.2 = zext i8 %conv3.i.i152.1.2 to i32 *)
cast v_conv2_i_i150_2_2@uint32 v_conv3_i_i152_1_2@uint8;
(*   %xor.i.i151.2.2 = xor i32 %conv2.i.i150.2.2, %mul.i.i149.2.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i151_2_2 v_conv2_i_i150_2_2 v_mul_i_i149_2_2;
(*   %conv3.i.i152.2.2 = trunc i32 %xor.i.i151.2.2 to i8 *)
split tmp_v_xor_i_i151_2_2 v_conv3_i_i152_2_2 v_xor_i_i151_2_2 8;
vpc v_conv3_i_i152_2_2@uint8 v_conv3_i_i152_2_2@uint32;
(*   %conv4.i.i153.2.2 = zext i8 %conv5.i.i155.1.2 to i32 *)
cast v_conv4_i_i153_2_2@uint32 v_conv5_i_i155_1_2@uint8;
(*   %shr.i.i154.2.2 = ashr i32 %conv4.i.i153.2.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i154_2_2 tmp_to_be_used v_conv4_i_i153_2_2 1;
(*   %conv5.i.i155.2.2 = trunc i32 %shr.i.i154.2.2 to i8 *)
split tmp_v_shr_i_i154_2_2 v_conv5_i_i155_2_2 v_shr_i_i154_2_2 8;
vpc v_conv5_i_i155_2_2@uint8 v_conv5_i_i155_2_2@uint32;
(*   %conv6.i.i156.2.2 = zext i8 %conv7.i.i158.1.2 to i32 *)
cast v_conv6_i_i156_2_2@uint32 v_conv7_i_i158_1_2@uint8;
(*   %shl.i.i157.2.2 = shl i32 %conv6.i.i156.2.2, 1 *)
shls discard_44 v_shl_i_i157_2_2 v_conv6_i_i156_2_2 1;
(*   %conv7.i.i158.2.2 = trunc i32 %shl.i.i157.2.2 to i8 *)
split tmp_v_shl_i_i157_2_2 v_conv7_i_i158_2_2 v_shl_i_i157_2_2 8;
vpc v_conv7_i_i158_2_2@uint8 v_conv7_i_i158_2_2@uint32;
(*   %conv.i.i146.3.2 = zext i8 %conv5.i.i155.2.2 to i32 *)
cast v_conv_i_i146_3_2@uint32 v_conv5_i_i155_2_2@uint8;
(*   %and.i.i147.3.2 = and i32 %conv.i.i146.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i147_3_2 v_conv_i_i146_3_2 (0x1)@uint32;
(*   %conv1.i.i148.3.2 = zext i8 %conv7.i.i158.2.2 to i32 *)
cast v_conv1_i_i148_3_2@uint32 v_conv7_i_i158_2_2@uint8;
(*   %mul.i.i149.3.2 = mul nsw i32 %and.i.i147.3.2, %conv1.i.i148.3.2 *)
mul v_mul_i_i149_3_2 v_and_i_i147_3_2 v_conv1_i_i148_3_2;
(*   %conv2.i.i150.3.2 = zext i8 %conv3.i.i152.2.2 to i32 *)
cast v_conv2_i_i150_3_2@uint32 v_conv3_i_i152_2_2@uint8;
(*   %xor.i.i151.3.2 = xor i32 %conv2.i.i150.3.2, %mul.i.i149.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i151_3_2 v_conv2_i_i150_3_2 v_mul_i_i149_3_2;
(*   %conv3.i.i152.3.2 = trunc i32 %xor.i.i151.3.2 to i8 *)
split tmp_v_xor_i_i151_3_2 v_conv3_i_i152_3_2 v_xor_i_i151_3_2 8;
vpc v_conv3_i_i152_3_2@uint8 v_conv3_i_i152_3_2@uint32;
(*   %conv4.i.i153.3.2 = zext i8 %conv5.i.i155.2.2 to i32 *)
cast v_conv4_i_i153_3_2@uint32 v_conv5_i_i155_2_2@uint8;
(*   %shr.i.i154.3.2 = ashr i32 %conv4.i.i153.3.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i154_3_2 tmp_to_be_used v_conv4_i_i153_3_2 1;
(*   %conv5.i.i155.3.2 = trunc i32 %shr.i.i154.3.2 to i8 *)
split tmp_v_shr_i_i154_3_2 v_conv5_i_i155_3_2 v_shr_i_i154_3_2 8;
vpc v_conv5_i_i155_3_2@uint8 v_conv5_i_i155_3_2@uint32;
(*   %conv6.i.i156.3.2 = zext i8 %conv7.i.i158.2.2 to i32 *)
cast v_conv6_i_i156_3_2@uint32 v_conv7_i_i158_2_2@uint8;
(*   %shl.i.i157.3.2 = shl i32 %conv6.i.i156.3.2, 1 *)
shls discard_45 v_shl_i_i157_3_2 v_conv6_i_i156_3_2 1;
(*   %conv7.i.i158.3.2 = trunc i32 %shl.i.i157.3.2 to i8 *)
split tmp_v_shl_i_i157_3_2 v_conv7_i_i158_3_2 v_shl_i_i157_3_2 8;
vpc v_conv7_i_i158_3_2@uint8 v_conv7_i_i158_3_2@uint32;
(*   %conv.i.i146.4.2 = zext i8 %conv5.i.i155.3.2 to i32 *)
cast v_conv_i_i146_4_2@uint32 v_conv5_i_i155_3_2@uint8;
(*   %and.i.i147.4.2 = and i32 %conv.i.i146.4.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i147_4_2 v_conv_i_i146_4_2 (0x1)@uint32;
(*   %conv1.i.i148.4.2 = zext i8 %conv7.i.i158.3.2 to i32 *)
cast v_conv1_i_i148_4_2@uint32 v_conv7_i_i158_3_2@uint8;
(*   %mul.i.i149.4.2 = mul nsw i32 %and.i.i147.4.2, %conv1.i.i148.4.2 *)
mul v_mul_i_i149_4_2 v_and_i_i147_4_2 v_conv1_i_i148_4_2;
(*   %conv2.i.i150.4.2 = zext i8 %conv3.i.i152.3.2 to i32 *)
cast v_conv2_i_i150_4_2@uint32 v_conv3_i_i152_3_2@uint8;
(*   %xor.i.i151.4.2 = xor i32 %conv2.i.i150.4.2, %mul.i.i149.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i151_4_2 v_conv2_i_i150_4_2 v_mul_i_i149_4_2;
(*   %conv3.i.i152.4.2 = trunc i32 %xor.i.i151.4.2 to i8 *)
split tmp_v_xor_i_i151_4_2 v_conv3_i_i152_4_2 v_xor_i_i151_4_2 8;
vpc v_conv3_i_i152_4_2@uint8 v_conv3_i_i152_4_2@uint32;
(*   %conv4.i.i153.4.2 = zext i8 %conv5.i.i155.3.2 to i32 *)
cast v_conv4_i_i153_4_2@uint32 v_conv5_i_i155_3_2@uint8;
(*   %shr.i.i154.4.2 = ashr i32 %conv4.i.i153.4.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i154_4_2 tmp_to_be_used v_conv4_i_i153_4_2 1;
(*   %conv5.i.i155.4.2 = trunc i32 %shr.i.i154.4.2 to i8 *)
split tmp_v_shr_i_i154_4_2 v_conv5_i_i155_4_2 v_shr_i_i154_4_2 8;
vpc v_conv5_i_i155_4_2@uint8 v_conv5_i_i155_4_2@uint32;
(*   %conv6.i.i156.4.2 = zext i8 %conv7.i.i158.3.2 to i32 *)
cast v_conv6_i_i156_4_2@uint32 v_conv7_i_i158_3_2@uint8;
(*   %shl.i.i157.4.2 = shl i32 %conv6.i.i156.4.2, 1 *)
shls discard_46 v_shl_i_i157_4_2 v_conv6_i_i156_4_2 1;
(*   %conv7.i.i158.4.2 = trunc i32 %shl.i.i157.4.2 to i8 *)
split tmp_v_shl_i_i157_4_2 v_conv7_i_i158_4_2 v_shl_i_i157_4_2 8;
vpc v_conv7_i_i158_4_2@uint8 v_conv7_i_i158_4_2@uint32;
(*   %conv.i.i146.5.2 = zext i8 %conv5.i.i155.4.2 to i32 *)
cast v_conv_i_i146_5_2@uint32 v_conv5_i_i155_4_2@uint8;
(*   %and.i.i147.5.2 = and i32 %conv.i.i146.5.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i147_5_2 v_conv_i_i146_5_2 (0x1)@uint32;
(*   %conv1.i.i148.5.2 = zext i8 %conv7.i.i158.4.2 to i32 *)
cast v_conv1_i_i148_5_2@uint32 v_conv7_i_i158_4_2@uint8;
(*   %mul.i.i149.5.2 = mul nsw i32 %and.i.i147.5.2, %conv1.i.i148.5.2 *)
mul v_mul_i_i149_5_2 v_and_i_i147_5_2 v_conv1_i_i148_5_2;
(*   %conv2.i.i150.5.2 = zext i8 %conv3.i.i152.4.2 to i32 *)
cast v_conv2_i_i150_5_2@uint32 v_conv3_i_i152_4_2@uint8;
(*   %xor.i.i151.5.2 = xor i32 %conv2.i.i150.5.2, %mul.i.i149.5.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i151_5_2 v_conv2_i_i150_5_2 v_mul_i_i149_5_2;
(*   %conv3.i.i152.5.2 = trunc i32 %xor.i.i151.5.2 to i8 *)
split tmp_v_xor_i_i151_5_2 v_conv3_i_i152_5_2 v_xor_i_i151_5_2 8;
vpc v_conv3_i_i152_5_2@uint8 v_conv3_i_i152_5_2@uint32;
(*   %conv4.i.i153.5.2 = zext i8 %conv5.i.i155.4.2 to i32 *)
cast v_conv4_i_i153_5_2@uint32 v_conv5_i_i155_4_2@uint8;
(*   %shr.i.i154.5.2 = ashr i32 %conv4.i.i153.5.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i154_5_2 tmp_to_be_used v_conv4_i_i153_5_2 1;
(*   %conv5.i.i155.5.2 = trunc i32 %shr.i.i154.5.2 to i8 *)
split tmp_v_shr_i_i154_5_2 v_conv5_i_i155_5_2 v_shr_i_i154_5_2 8;
vpc v_conv5_i_i155_5_2@uint8 v_conv5_i_i155_5_2@uint32;
(*   %conv6.i.i156.5.2 = zext i8 %conv7.i.i158.4.2 to i32 *)
cast v_conv6_i_i156_5_2@uint32 v_conv7_i_i158_4_2@uint8;
(*   %shl.i.i157.5.2 = shl i32 %conv6.i.i156.5.2, 1 *)
shls discard_47 v_shl_i_i157_5_2 v_conv6_i_i156_5_2 1;
(*   %conv7.i.i158.5.2 = trunc i32 %shl.i.i157.5.2 to i8 *)
split tmp_v_shl_i_i157_5_2 v_conv7_i_i158_5_2 v_shl_i_i157_5_2 8;
vpc v_conv7_i_i158_5_2@uint8 v_conv7_i_i158_5_2@uint32;
(*   %conv.i.i146.6.2 = zext i8 %conv5.i.i155.5.2 to i32 *)
cast v_conv_i_i146_6_2@uint32 v_conv5_i_i155_5_2@uint8;
(*   %and.i.i147.6.2 = and i32 %conv.i.i146.6.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i147_6_2 v_conv_i_i146_6_2 (0x1)@uint32;
(*   %conv1.i.i148.6.2 = zext i8 %conv7.i.i158.5.2 to i32 *)
cast v_conv1_i_i148_6_2@uint32 v_conv7_i_i158_5_2@uint8;
(*   %mul.i.i149.6.2 = mul nsw i32 %and.i.i147.6.2, %conv1.i.i148.6.2 *)
mul v_mul_i_i149_6_2 v_and_i_i147_6_2 v_conv1_i_i148_6_2;
(*   %conv2.i.i150.6.2 = zext i8 %conv3.i.i152.5.2 to i32 *)
cast v_conv2_i_i150_6_2@uint32 v_conv3_i_i152_5_2@uint8;
(*   %xor.i.i151.6.2 = xor i32 %conv2.i.i150.6.2, %mul.i.i149.6.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i151_6_2 v_conv2_i_i150_6_2 v_mul_i_i149_6_2;
(*   %conv3.i.i152.6.2 = trunc i32 %xor.i.i151.6.2 to i8 *)
split tmp_v_xor_i_i151_6_2 v_conv3_i_i152_6_2 v_xor_i_i151_6_2 8;
vpc v_conv3_i_i152_6_2@uint8 v_conv3_i_i152_6_2@uint32;
(*   %conv4.i.i153.6.2 = zext i8 %conv5.i.i155.5.2 to i32 *)
cast v_conv4_i_i153_6_2@uint32 v_conv5_i_i155_5_2@uint8;
(*   %shr.i.i154.6.2 = ashr i32 %conv4.i.i153.6.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i154_6_2 tmp_to_be_used v_conv4_i_i153_6_2 1;
(*   %conv5.i.i155.6.2 = trunc i32 %shr.i.i154.6.2 to i8 *)
split tmp_v_shr_i_i154_6_2 v_conv5_i_i155_6_2 v_shr_i_i154_6_2 8;
vpc v_conv5_i_i155_6_2@uint8 v_conv5_i_i155_6_2@uint32;
(*   %conv6.i.i156.6.2 = zext i8 %conv7.i.i158.5.2 to i32 *)
cast v_conv6_i_i156_6_2@uint32 v_conv7_i_i158_5_2@uint8;
(*   %shl.i.i157.6.2 = shl i32 %conv6.i.i156.6.2, 1 *)
shls discard_48 v_shl_i_i157_6_2 v_conv6_i_i156_6_2 1;
(*   %conv7.i.i158.6.2 = trunc i32 %shl.i.i157.6.2 to i8 *)
split tmp_v_shl_i_i157_6_2 v_conv7_i_i158_6_2 v_shl_i_i157_6_2 8;
vpc v_conv7_i_i158_6_2@uint8 v_conv7_i_i158_6_2@uint32;
(*   %conv.i.i146.7.2 = zext i8 %conv5.i.i155.6.2 to i32 *)
cast v_conv_i_i146_7_2@uint32 v_conv5_i_i155_6_2@uint8;
(*   %and.i.i147.7.2 = and i32 %conv.i.i146.7.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i147_7_2 v_conv_i_i146_7_2 (0x1)@uint32;
(*   %conv1.i.i148.7.2 = zext i8 %conv7.i.i158.6.2 to i32 *)
cast v_conv1_i_i148_7_2@uint32 v_conv7_i_i158_6_2@uint8;
(*   %mul.i.i149.7.2 = mul nsw i32 %and.i.i147.7.2, %conv1.i.i148.7.2 *)
mul v_mul_i_i149_7_2 v_and_i_i147_7_2 v_conv1_i_i148_7_2;
(*   %conv2.i.i150.7.2 = zext i8 %conv3.i.i152.6.2 to i32 *)
cast v_conv2_i_i150_7_2@uint32 v_conv3_i_i152_6_2@uint8;
(*   %xor.i.i151.7.2 = xor i32 %conv2.i.i150.7.2, %mul.i.i149.7.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i151_7_2 v_conv2_i_i150_7_2 v_mul_i_i149_7_2;
(*   %conv3.i.i152.7.2 = trunc i32 %xor.i.i151.7.2 to i8 *)
split tmp_v_xor_i_i151_7_2 v_conv3_i_i152_7_2 v_xor_i_i151_7_2 8;
vpc v_conv3_i_i152_7_2@uint8 v_conv3_i_i152_7_2@uint32;
(*   %arrayidx6.i162.2 = getelementptr inbounds i8, i8* %add.ptr3, i64 2 *)
(*   store i8 %conv3.i.i152.7.2, i8* %arrayidx6.i162.2, align 1 *)
mov cc_10 v_conv3_i_i152_7_2;
(*   %arrayidx.i138.3 = getelementptr inbounds i8, i8* %a, i64 3 *)
(*   %14 = load i8, i8* %arrayidx.i138.3, align 1 *)
mov v14 a_3;
(*   %15 = load i8, i8* %b, align 1 *)
mov v15 b_0;
(*   %conv.i.i146.3181 = zext i8 %15 to i32 *)
cast v_conv_i_i146_3181@uint32 v15@uint8;
(*   %and.i.i147.3182 = and i32 %conv.i.i146.3181, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i147_3182 v_conv_i_i146_3181 (0x1)@uint32;
(*   %conv1.i.i148.3183 = zext i8 %14 to i32 *)
cast v_conv1_i_i148_3183@uint32 v14@uint8;
(*   %mul.i.i149.3184 = mul nsw i32 %and.i.i147.3182, %conv1.i.i148.3183 *)
mul v_mul_i_i149_3184 v_and_i_i147_3182 v_conv1_i_i148_3183;
(*   %conv3.i.i152.3185 = trunc i32 %mul.i.i149.3184 to i8 *)
split tmp_v_mul_i_i149_3184 v_conv3_i_i152_3185 v_mul_i_i149_3184 8;
vpc v_conv3_i_i152_3185@uint8 v_conv3_i_i152_3185@uint32;
(*   %conv4.i.i153.3186 = zext i8 %15 to i32 *)
cast v_conv4_i_i153_3186@uint32 v15@uint8;
(*   %shr.i.i154.3187 = ashr i32 %conv4.i.i153.3186, 1 *)
(* You may need to modify here *)
split v_shr_i_i154_3187 tmp_to_be_used v_conv4_i_i153_3186 1;
(*   %conv5.i.i155.3188 = trunc i32 %shr.i.i154.3187 to i8 *)
split tmp_v_shr_i_i154_3187 v_conv5_i_i155_3188 v_shr_i_i154_3187 8;
vpc v_conv5_i_i155_3188@uint8 v_conv5_i_i155_3188@uint32;
(*   %conv6.i.i156.3189 = zext i8 %14 to i32 *)
cast v_conv6_i_i156_3189@uint32 v14@uint8;
(*   %shl.i.i157.3190 = shl i32 %conv6.i.i156.3189, 1 *)
shls discard_49 v_shl_i_i157_3190 v_conv6_i_i156_3189 1;
(*   %conv7.i.i158.3191 = trunc i32 %shl.i.i157.3190 to i8 *)
split tmp_v_shl_i_i157_3190 v_conv7_i_i158_3191 v_shl_i_i157_3190 8;
vpc v_conv7_i_i158_3191@uint8 v_conv7_i_i158_3191@uint32;
(*   %conv.i.i146.1.3 = zext i8 %conv5.i.i155.3188 to i32 *)
cast v_conv_i_i146_1_3@uint32 v_conv5_i_i155_3188@uint8;
(*   %and.i.i147.1.3 = and i32 %conv.i.i146.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i147_1_3 v_conv_i_i146_1_3 (0x1)@uint32;
(*   %conv1.i.i148.1.3 = zext i8 %conv7.i.i158.3191 to i32 *)
cast v_conv1_i_i148_1_3@uint32 v_conv7_i_i158_3191@uint8;
(*   %mul.i.i149.1.3 = mul nsw i32 %and.i.i147.1.3, %conv1.i.i148.1.3 *)
mul v_mul_i_i149_1_3 v_and_i_i147_1_3 v_conv1_i_i148_1_3;
(*   %conv2.i.i150.1.3 = zext i8 %conv3.i.i152.3185 to i32 *)
cast v_conv2_i_i150_1_3@uint32 v_conv3_i_i152_3185@uint8;
(*   %xor.i.i151.1.3 = xor i32 %conv2.i.i150.1.3, %mul.i.i149.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i151_1_3 v_conv2_i_i150_1_3 v_mul_i_i149_1_3;
(*   %conv3.i.i152.1.3 = trunc i32 %xor.i.i151.1.3 to i8 *)
split tmp_v_xor_i_i151_1_3 v_conv3_i_i152_1_3 v_xor_i_i151_1_3 8;
vpc v_conv3_i_i152_1_3@uint8 v_conv3_i_i152_1_3@uint32;
(*   %conv4.i.i153.1.3 = zext i8 %conv5.i.i155.3188 to i32 *)
cast v_conv4_i_i153_1_3@uint32 v_conv5_i_i155_3188@uint8;
(*   %shr.i.i154.1.3 = ashr i32 %conv4.i.i153.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i154_1_3 tmp_to_be_used v_conv4_i_i153_1_3 1;
(*   %conv5.i.i155.1.3 = trunc i32 %shr.i.i154.1.3 to i8 *)
split tmp_v_shr_i_i154_1_3 v_conv5_i_i155_1_3 v_shr_i_i154_1_3 8;
vpc v_conv5_i_i155_1_3@uint8 v_conv5_i_i155_1_3@uint32;
(*   %conv6.i.i156.1.3 = zext i8 %conv7.i.i158.3191 to i32 *)
cast v_conv6_i_i156_1_3@uint32 v_conv7_i_i158_3191@uint8;
(*   %shl.i.i157.1.3 = shl i32 %conv6.i.i156.1.3, 1 *)
shls discard_50 v_shl_i_i157_1_3 v_conv6_i_i156_1_3 1;
(*   %conv7.i.i158.1.3 = trunc i32 %shl.i.i157.1.3 to i8 *)
split tmp_v_shl_i_i157_1_3 v_conv7_i_i158_1_3 v_shl_i_i157_1_3 8;
vpc v_conv7_i_i158_1_3@uint8 v_conv7_i_i158_1_3@uint32;
(*   %conv.i.i146.2.3 = zext i8 %conv5.i.i155.1.3 to i32 *)
cast v_conv_i_i146_2_3@uint32 v_conv5_i_i155_1_3@uint8;
(*   %and.i.i147.2.3 = and i32 %conv.i.i146.2.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i147_2_3 v_conv_i_i146_2_3 (0x1)@uint32;
(*   %conv1.i.i148.2.3 = zext i8 %conv7.i.i158.1.3 to i32 *)
cast v_conv1_i_i148_2_3@uint32 v_conv7_i_i158_1_3@uint8;
(*   %mul.i.i149.2.3 = mul nsw i32 %and.i.i147.2.3, %conv1.i.i148.2.3 *)
mul v_mul_i_i149_2_3 v_and_i_i147_2_3 v_conv1_i_i148_2_3;
(*   %conv2.i.i150.2.3 = zext i8 %conv3.i.i152.1.3 to i32 *)
cast v_conv2_i_i150_2_3@uint32 v_conv3_i_i152_1_3@uint8;
(*   %xor.i.i151.2.3 = xor i32 %conv2.i.i150.2.3, %mul.i.i149.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i151_2_3 v_conv2_i_i150_2_3 v_mul_i_i149_2_3;
(*   %conv3.i.i152.2.3 = trunc i32 %xor.i.i151.2.3 to i8 *)
split tmp_v_xor_i_i151_2_3 v_conv3_i_i152_2_3 v_xor_i_i151_2_3 8;
vpc v_conv3_i_i152_2_3@uint8 v_conv3_i_i152_2_3@uint32;
(*   %conv4.i.i153.2.3 = zext i8 %conv5.i.i155.1.3 to i32 *)
cast v_conv4_i_i153_2_3@uint32 v_conv5_i_i155_1_3@uint8;
(*   %shr.i.i154.2.3 = ashr i32 %conv4.i.i153.2.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i154_2_3 tmp_to_be_used v_conv4_i_i153_2_3 1;
(*   %conv5.i.i155.2.3 = trunc i32 %shr.i.i154.2.3 to i8 *)
split tmp_v_shr_i_i154_2_3 v_conv5_i_i155_2_3 v_shr_i_i154_2_3 8;
vpc v_conv5_i_i155_2_3@uint8 v_conv5_i_i155_2_3@uint32;
(*   %conv6.i.i156.2.3 = zext i8 %conv7.i.i158.1.3 to i32 *)
cast v_conv6_i_i156_2_3@uint32 v_conv7_i_i158_1_3@uint8;
(*   %shl.i.i157.2.3 = shl i32 %conv6.i.i156.2.3, 1 *)
shls discard_51 v_shl_i_i157_2_3 v_conv6_i_i156_2_3 1;
(*   %conv7.i.i158.2.3 = trunc i32 %shl.i.i157.2.3 to i8 *)
split tmp_v_shl_i_i157_2_3 v_conv7_i_i158_2_3 v_shl_i_i157_2_3 8;
vpc v_conv7_i_i158_2_3@uint8 v_conv7_i_i158_2_3@uint32;
(*   %conv.i.i146.3.3 = zext i8 %conv5.i.i155.2.3 to i32 *)
cast v_conv_i_i146_3_3@uint32 v_conv5_i_i155_2_3@uint8;
(*   %and.i.i147.3.3 = and i32 %conv.i.i146.3.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i147_3_3 v_conv_i_i146_3_3 (0x1)@uint32;
(*   %conv1.i.i148.3.3 = zext i8 %conv7.i.i158.2.3 to i32 *)
cast v_conv1_i_i148_3_3@uint32 v_conv7_i_i158_2_3@uint8;
(*   %mul.i.i149.3.3 = mul nsw i32 %and.i.i147.3.3, %conv1.i.i148.3.3 *)
mul v_mul_i_i149_3_3 v_and_i_i147_3_3 v_conv1_i_i148_3_3;
(*   %conv2.i.i150.3.3 = zext i8 %conv3.i.i152.2.3 to i32 *)
cast v_conv2_i_i150_3_3@uint32 v_conv3_i_i152_2_3@uint8;
(*   %xor.i.i151.3.3 = xor i32 %conv2.i.i150.3.3, %mul.i.i149.3.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i151_3_3 v_conv2_i_i150_3_3 v_mul_i_i149_3_3;
(*   %conv3.i.i152.3.3 = trunc i32 %xor.i.i151.3.3 to i8 *)
split tmp_v_xor_i_i151_3_3 v_conv3_i_i152_3_3 v_xor_i_i151_3_3 8;
vpc v_conv3_i_i152_3_3@uint8 v_conv3_i_i152_3_3@uint32;
(*   %conv4.i.i153.3.3 = zext i8 %conv5.i.i155.2.3 to i32 *)
cast v_conv4_i_i153_3_3@uint32 v_conv5_i_i155_2_3@uint8;
(*   %shr.i.i154.3.3 = ashr i32 %conv4.i.i153.3.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i154_3_3 tmp_to_be_used v_conv4_i_i153_3_3 1;
(*   %conv5.i.i155.3.3 = trunc i32 %shr.i.i154.3.3 to i8 *)
split tmp_v_shr_i_i154_3_3 v_conv5_i_i155_3_3 v_shr_i_i154_3_3 8;
vpc v_conv5_i_i155_3_3@uint8 v_conv5_i_i155_3_3@uint32;
(*   %conv6.i.i156.3.3 = zext i8 %conv7.i.i158.2.3 to i32 *)
cast v_conv6_i_i156_3_3@uint32 v_conv7_i_i158_2_3@uint8;
(*   %shl.i.i157.3.3 = shl i32 %conv6.i.i156.3.3, 1 *)
shls discard_52 v_shl_i_i157_3_3 v_conv6_i_i156_3_3 1;
(*   %conv7.i.i158.3.3 = trunc i32 %shl.i.i157.3.3 to i8 *)
split tmp_v_shl_i_i157_3_3 v_conv7_i_i158_3_3 v_shl_i_i157_3_3 8;
vpc v_conv7_i_i158_3_3@uint8 v_conv7_i_i158_3_3@uint32;
(*   %conv.i.i146.4.3 = zext i8 %conv5.i.i155.3.3 to i32 *)
cast v_conv_i_i146_4_3@uint32 v_conv5_i_i155_3_3@uint8;
(*   %and.i.i147.4.3 = and i32 %conv.i.i146.4.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i147_4_3 v_conv_i_i146_4_3 (0x1)@uint32;
(*   %conv1.i.i148.4.3 = zext i8 %conv7.i.i158.3.3 to i32 *)
cast v_conv1_i_i148_4_3@uint32 v_conv7_i_i158_3_3@uint8;
(*   %mul.i.i149.4.3 = mul nsw i32 %and.i.i147.4.3, %conv1.i.i148.4.3 *)
mul v_mul_i_i149_4_3 v_and_i_i147_4_3 v_conv1_i_i148_4_3;
(*   %conv2.i.i150.4.3 = zext i8 %conv3.i.i152.3.3 to i32 *)
cast v_conv2_i_i150_4_3@uint32 v_conv3_i_i152_3_3@uint8;
(*   %xor.i.i151.4.3 = xor i32 %conv2.i.i150.4.3, %mul.i.i149.4.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i151_4_3 v_conv2_i_i150_4_3 v_mul_i_i149_4_3;
(*   %conv3.i.i152.4.3 = trunc i32 %xor.i.i151.4.3 to i8 *)
split tmp_v_xor_i_i151_4_3 v_conv3_i_i152_4_3 v_xor_i_i151_4_3 8;
vpc v_conv3_i_i152_4_3@uint8 v_conv3_i_i152_4_3@uint32;
(*   %conv4.i.i153.4.3 = zext i8 %conv5.i.i155.3.3 to i32 *)
cast v_conv4_i_i153_4_3@uint32 v_conv5_i_i155_3_3@uint8;
(*   %shr.i.i154.4.3 = ashr i32 %conv4.i.i153.4.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i154_4_3 tmp_to_be_used v_conv4_i_i153_4_3 1;
(*   %conv5.i.i155.4.3 = trunc i32 %shr.i.i154.4.3 to i8 *)
split tmp_v_shr_i_i154_4_3 v_conv5_i_i155_4_3 v_shr_i_i154_4_3 8;
vpc v_conv5_i_i155_4_3@uint8 v_conv5_i_i155_4_3@uint32;
(*   %conv6.i.i156.4.3 = zext i8 %conv7.i.i158.3.3 to i32 *)
cast v_conv6_i_i156_4_3@uint32 v_conv7_i_i158_3_3@uint8;
(*   %shl.i.i157.4.3 = shl i32 %conv6.i.i156.4.3, 1 *)
shls discard_53 v_shl_i_i157_4_3 v_conv6_i_i156_4_3 1;
(*   %conv7.i.i158.4.3 = trunc i32 %shl.i.i157.4.3 to i8 *)
split tmp_v_shl_i_i157_4_3 v_conv7_i_i158_4_3 v_shl_i_i157_4_3 8;
vpc v_conv7_i_i158_4_3@uint8 v_conv7_i_i158_4_3@uint32;
(*   %conv.i.i146.5.3 = zext i8 %conv5.i.i155.4.3 to i32 *)
cast v_conv_i_i146_5_3@uint32 v_conv5_i_i155_4_3@uint8;
(*   %and.i.i147.5.3 = and i32 %conv.i.i146.5.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i147_5_3 v_conv_i_i146_5_3 (0x1)@uint32;
(*   %conv1.i.i148.5.3 = zext i8 %conv7.i.i158.4.3 to i32 *)
cast v_conv1_i_i148_5_3@uint32 v_conv7_i_i158_4_3@uint8;
(*   %mul.i.i149.5.3 = mul nsw i32 %and.i.i147.5.3, %conv1.i.i148.5.3 *)
mul v_mul_i_i149_5_3 v_and_i_i147_5_3 v_conv1_i_i148_5_3;
(*   %conv2.i.i150.5.3 = zext i8 %conv3.i.i152.4.3 to i32 *)
cast v_conv2_i_i150_5_3@uint32 v_conv3_i_i152_4_3@uint8;
(*   %xor.i.i151.5.3 = xor i32 %conv2.i.i150.5.3, %mul.i.i149.5.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i151_5_3 v_conv2_i_i150_5_3 v_mul_i_i149_5_3;
(*   %conv3.i.i152.5.3 = trunc i32 %xor.i.i151.5.3 to i8 *)
split tmp_v_xor_i_i151_5_3 v_conv3_i_i152_5_3 v_xor_i_i151_5_3 8;
vpc v_conv3_i_i152_5_3@uint8 v_conv3_i_i152_5_3@uint32;
(*   %conv4.i.i153.5.3 = zext i8 %conv5.i.i155.4.3 to i32 *)
cast v_conv4_i_i153_5_3@uint32 v_conv5_i_i155_4_3@uint8;
(*   %shr.i.i154.5.3 = ashr i32 %conv4.i.i153.5.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i154_5_3 tmp_to_be_used v_conv4_i_i153_5_3 1;
(*   %conv5.i.i155.5.3 = trunc i32 %shr.i.i154.5.3 to i8 *)
split tmp_v_shr_i_i154_5_3 v_conv5_i_i155_5_3 v_shr_i_i154_5_3 8;
vpc v_conv5_i_i155_5_3@uint8 v_conv5_i_i155_5_3@uint32;
(*   %conv6.i.i156.5.3 = zext i8 %conv7.i.i158.4.3 to i32 *)
cast v_conv6_i_i156_5_3@uint32 v_conv7_i_i158_4_3@uint8;
(*   %shl.i.i157.5.3 = shl i32 %conv6.i.i156.5.3, 1 *)
shls discard_54 v_shl_i_i157_5_3 v_conv6_i_i156_5_3 1;
(*   %conv7.i.i158.5.3 = trunc i32 %shl.i.i157.5.3 to i8 *)
split tmp_v_shl_i_i157_5_3 v_conv7_i_i158_5_3 v_shl_i_i157_5_3 8;
vpc v_conv7_i_i158_5_3@uint8 v_conv7_i_i158_5_3@uint32;
(*   %conv.i.i146.6.3 = zext i8 %conv5.i.i155.5.3 to i32 *)
cast v_conv_i_i146_6_3@uint32 v_conv5_i_i155_5_3@uint8;
(*   %and.i.i147.6.3 = and i32 %conv.i.i146.6.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i147_6_3 v_conv_i_i146_6_3 (0x1)@uint32;
(*   %conv1.i.i148.6.3 = zext i8 %conv7.i.i158.5.3 to i32 *)
cast v_conv1_i_i148_6_3@uint32 v_conv7_i_i158_5_3@uint8;
(*   %mul.i.i149.6.3 = mul nsw i32 %and.i.i147.6.3, %conv1.i.i148.6.3 *)
mul v_mul_i_i149_6_3 v_and_i_i147_6_3 v_conv1_i_i148_6_3;
(*   %conv2.i.i150.6.3 = zext i8 %conv3.i.i152.5.3 to i32 *)
cast v_conv2_i_i150_6_3@uint32 v_conv3_i_i152_5_3@uint8;
(*   %xor.i.i151.6.3 = xor i32 %conv2.i.i150.6.3, %mul.i.i149.6.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i151_6_3 v_conv2_i_i150_6_3 v_mul_i_i149_6_3;
(*   %conv3.i.i152.6.3 = trunc i32 %xor.i.i151.6.3 to i8 *)
split tmp_v_xor_i_i151_6_3 v_conv3_i_i152_6_3 v_xor_i_i151_6_3 8;
vpc v_conv3_i_i152_6_3@uint8 v_conv3_i_i152_6_3@uint32;
(*   %conv4.i.i153.6.3 = zext i8 %conv5.i.i155.5.3 to i32 *)
cast v_conv4_i_i153_6_3@uint32 v_conv5_i_i155_5_3@uint8;
(*   %shr.i.i154.6.3 = ashr i32 %conv4.i.i153.6.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i154_6_3 tmp_to_be_used v_conv4_i_i153_6_3 1;
(*   %conv5.i.i155.6.3 = trunc i32 %shr.i.i154.6.3 to i8 *)
split tmp_v_shr_i_i154_6_3 v_conv5_i_i155_6_3 v_shr_i_i154_6_3 8;
vpc v_conv5_i_i155_6_3@uint8 v_conv5_i_i155_6_3@uint32;
(*   %conv6.i.i156.6.3 = zext i8 %conv7.i.i158.5.3 to i32 *)
cast v_conv6_i_i156_6_3@uint32 v_conv7_i_i158_5_3@uint8;
(*   %shl.i.i157.6.3 = shl i32 %conv6.i.i156.6.3, 1 *)
shls discard_55 v_shl_i_i157_6_3 v_conv6_i_i156_6_3 1;
(*   %conv7.i.i158.6.3 = trunc i32 %shl.i.i157.6.3 to i8 *)
split tmp_v_shl_i_i157_6_3 v_conv7_i_i158_6_3 v_shl_i_i157_6_3 8;
vpc v_conv7_i_i158_6_3@uint8 v_conv7_i_i158_6_3@uint32;
(*   %conv.i.i146.7.3 = zext i8 %conv5.i.i155.6.3 to i32 *)
cast v_conv_i_i146_7_3@uint32 v_conv5_i_i155_6_3@uint8;
(*   %and.i.i147.7.3 = and i32 %conv.i.i146.7.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i147_7_3 v_conv_i_i146_7_3 (0x1)@uint32;
(*   %conv1.i.i148.7.3 = zext i8 %conv7.i.i158.6.3 to i32 *)
cast v_conv1_i_i148_7_3@uint32 v_conv7_i_i158_6_3@uint8;
(*   %mul.i.i149.7.3 = mul nsw i32 %and.i.i147.7.3, %conv1.i.i148.7.3 *)
mul v_mul_i_i149_7_3 v_and_i_i147_7_3 v_conv1_i_i148_7_3;
(*   %conv2.i.i150.7.3 = zext i8 %conv3.i.i152.6.3 to i32 *)
cast v_conv2_i_i150_7_3@uint32 v_conv3_i_i152_6_3@uint8;
(*   %xor.i.i151.7.3 = xor i32 %conv2.i.i150.7.3, %mul.i.i149.7.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i151_7_3 v_conv2_i_i150_7_3 v_mul_i_i149_7_3;
(*   %conv3.i.i152.7.3 = trunc i32 %xor.i.i151.7.3 to i8 *)
split tmp_v_xor_i_i151_7_3 v_conv3_i_i152_7_3 v_xor_i_i151_7_3 8;
vpc v_conv3_i_i152_7_3@uint8 v_conv3_i_i152_7_3@uint32;
(*   %arrayidx6.i162.3 = getelementptr inbounds i8, i8* %add.ptr3, i64 3 *)
(*   store i8 %conv3.i.i152.7.3, i8* %arrayidx6.i162.3, align 1 *)
mov cc_11 v_conv3_i_i152_7_3;
(*   %add.ptr8 = getelementptr inbounds i8, i8* %arraydecay4, i64 12 *)
(*   %arrayidx.i198 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %16 = load i8, i8* %arrayidx.i198, align 1 *)
mov v16 a_1;
(*   %17 = load i8, i8* %b, align 1 *)
mov v17 b_0;
(*   %conv.i.i206 = zext i8 %17 to i32 *)
cast v_conv_i_i206@uint32 v17@uint8;
(*   %and.i.i207 = and i32 %conv.i.i206, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i207 v_conv_i_i206 (0x1)@uint32;
(*   %conv1.i.i208 = zext i8 %16 to i32 *)
cast v_conv1_i_i208@uint32 v16@uint8;
(*   %mul.i.i209 = mul nsw i32 %and.i.i207, %conv1.i.i208 *)
mul v_mul_i_i209 v_and_i_i207 v_conv1_i_i208;
(*   %conv3.i.i212 = trunc i32 %mul.i.i209 to i8 *)
split tmp_v_mul_i_i209 v_conv3_i_i212 v_mul_i_i209 8;
vpc v_conv3_i_i212@uint8 v_conv3_i_i212@uint32;
(*   %conv4.i.i213 = zext i8 %17 to i32 *)
cast v_conv4_i_i213@uint32 v17@uint8;
(*   %shr.i.i214 = ashr i32 %conv4.i.i213, 1 *)
(* You may need to modify here *)
split v_shr_i_i214 tmp_to_be_used v_conv4_i_i213 1;
(*   %conv5.i.i215 = trunc i32 %shr.i.i214 to i8 *)
split tmp_v_shr_i_i214 v_conv5_i_i215 v_shr_i_i214 8;
vpc v_conv5_i_i215@uint8 v_conv5_i_i215@uint32;
(*   %conv6.i.i216 = zext i8 %16 to i32 *)
cast v_conv6_i_i216@uint32 v16@uint8;
(*   %shl.i.i217 = shl i32 %conv6.i.i216, 1 *)
shls discard_56 v_shl_i_i217 v_conv6_i_i216 1;
(*   %conv7.i.i218 = trunc i32 %shl.i.i217 to i8 *)
split tmp_v_shl_i_i217 v_conv7_i_i218 v_shl_i_i217 8;
vpc v_conv7_i_i218@uint8 v_conv7_i_i218@uint32;
(*   %conv.i.i206.1 = zext i8 %conv5.i.i215 to i32 *)
cast v_conv_i_i206_1@uint32 v_conv5_i_i215@uint8;
(*   %and.i.i207.1 = and i32 %conv.i.i206.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i207_1 v_conv_i_i206_1 (0x1)@uint32;
(*   %conv1.i.i208.1 = zext i8 %conv7.i.i218 to i32 *)
cast v_conv1_i_i208_1@uint32 v_conv7_i_i218@uint8;
(*   %mul.i.i209.1 = mul nsw i32 %and.i.i207.1, %conv1.i.i208.1 *)
mul v_mul_i_i209_1 v_and_i_i207_1 v_conv1_i_i208_1;
(*   %conv2.i.i210.1 = zext i8 %conv3.i.i212 to i32 *)
cast v_conv2_i_i210_1@uint32 v_conv3_i_i212@uint8;
(*   %xor.i.i211.1 = xor i32 %conv2.i.i210.1, %mul.i.i209.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i211_1 v_conv2_i_i210_1 v_mul_i_i209_1;
(*   %conv3.i.i212.1 = trunc i32 %xor.i.i211.1 to i8 *)
split tmp_v_xor_i_i211_1 v_conv3_i_i212_1 v_xor_i_i211_1 8;
vpc v_conv3_i_i212_1@uint8 v_conv3_i_i212_1@uint32;
(*   %conv4.i.i213.1 = zext i8 %conv5.i.i215 to i32 *)
cast v_conv4_i_i213_1@uint32 v_conv5_i_i215@uint8;
(*   %shr.i.i214.1 = ashr i32 %conv4.i.i213.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i214_1 tmp_to_be_used v_conv4_i_i213_1 1;
(*   %conv5.i.i215.1 = trunc i32 %shr.i.i214.1 to i8 *)
split tmp_v_shr_i_i214_1 v_conv5_i_i215_1 v_shr_i_i214_1 8;
vpc v_conv5_i_i215_1@uint8 v_conv5_i_i215_1@uint32;
(*   %conv6.i.i216.1 = zext i8 %conv7.i.i218 to i32 *)
cast v_conv6_i_i216_1@uint32 v_conv7_i_i218@uint8;
(*   %shl.i.i217.1 = shl i32 %conv6.i.i216.1, 1 *)
shls discard_57 v_shl_i_i217_1 v_conv6_i_i216_1 1;
(*   %conv7.i.i218.1 = trunc i32 %shl.i.i217.1 to i8 *)
split tmp_v_shl_i_i217_1 v_conv7_i_i218_1 v_shl_i_i217_1 8;
vpc v_conv7_i_i218_1@uint8 v_conv7_i_i218_1@uint32;
(*   %conv.i.i206.2 = zext i8 %conv5.i.i215.1 to i32 *)
cast v_conv_i_i206_2@uint32 v_conv5_i_i215_1@uint8;
(*   %and.i.i207.2 = and i32 %conv.i.i206.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i207_2 v_conv_i_i206_2 (0x1)@uint32;
(*   %conv1.i.i208.2 = zext i8 %conv7.i.i218.1 to i32 *)
cast v_conv1_i_i208_2@uint32 v_conv7_i_i218_1@uint8;
(*   %mul.i.i209.2 = mul nsw i32 %and.i.i207.2, %conv1.i.i208.2 *)
mul v_mul_i_i209_2 v_and_i_i207_2 v_conv1_i_i208_2;
(*   %conv2.i.i210.2 = zext i8 %conv3.i.i212.1 to i32 *)
cast v_conv2_i_i210_2@uint32 v_conv3_i_i212_1@uint8;
(*   %xor.i.i211.2 = xor i32 %conv2.i.i210.2, %mul.i.i209.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i211_2 v_conv2_i_i210_2 v_mul_i_i209_2;
(*   %conv3.i.i212.2 = trunc i32 %xor.i.i211.2 to i8 *)
split tmp_v_xor_i_i211_2 v_conv3_i_i212_2 v_xor_i_i211_2 8;
vpc v_conv3_i_i212_2@uint8 v_conv3_i_i212_2@uint32;
(*   %conv4.i.i213.2 = zext i8 %conv5.i.i215.1 to i32 *)
cast v_conv4_i_i213_2@uint32 v_conv5_i_i215_1@uint8;
(*   %shr.i.i214.2 = ashr i32 %conv4.i.i213.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i214_2 tmp_to_be_used v_conv4_i_i213_2 1;
(*   %conv5.i.i215.2 = trunc i32 %shr.i.i214.2 to i8 *)
split tmp_v_shr_i_i214_2 v_conv5_i_i215_2 v_shr_i_i214_2 8;
vpc v_conv5_i_i215_2@uint8 v_conv5_i_i215_2@uint32;
(*   %conv6.i.i216.2 = zext i8 %conv7.i.i218.1 to i32 *)
cast v_conv6_i_i216_2@uint32 v_conv7_i_i218_1@uint8;
(*   %shl.i.i217.2 = shl i32 %conv6.i.i216.2, 1 *)
shls discard_58 v_shl_i_i217_2 v_conv6_i_i216_2 1;
(*   %conv7.i.i218.2 = trunc i32 %shl.i.i217.2 to i8 *)
split tmp_v_shl_i_i217_2 v_conv7_i_i218_2 v_shl_i_i217_2 8;
vpc v_conv7_i_i218_2@uint8 v_conv7_i_i218_2@uint32;
(*   %conv.i.i206.3 = zext i8 %conv5.i.i215.2 to i32 *)
cast v_conv_i_i206_3@uint32 v_conv5_i_i215_2@uint8;
(*   %and.i.i207.3 = and i32 %conv.i.i206.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i207_3 v_conv_i_i206_3 (0x1)@uint32;
(*   %conv1.i.i208.3 = zext i8 %conv7.i.i218.2 to i32 *)
cast v_conv1_i_i208_3@uint32 v_conv7_i_i218_2@uint8;
(*   %mul.i.i209.3 = mul nsw i32 %and.i.i207.3, %conv1.i.i208.3 *)
mul v_mul_i_i209_3 v_and_i_i207_3 v_conv1_i_i208_3;
(*   %conv2.i.i210.3 = zext i8 %conv3.i.i212.2 to i32 *)
cast v_conv2_i_i210_3@uint32 v_conv3_i_i212_2@uint8;
(*   %xor.i.i211.3 = xor i32 %conv2.i.i210.3, %mul.i.i209.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i211_3 v_conv2_i_i210_3 v_mul_i_i209_3;
(*   %conv3.i.i212.3 = trunc i32 %xor.i.i211.3 to i8 *)
split tmp_v_xor_i_i211_3 v_conv3_i_i212_3 v_xor_i_i211_3 8;
vpc v_conv3_i_i212_3@uint8 v_conv3_i_i212_3@uint32;
(*   %conv4.i.i213.3 = zext i8 %conv5.i.i215.2 to i32 *)
cast v_conv4_i_i213_3@uint32 v_conv5_i_i215_2@uint8;
(*   %shr.i.i214.3 = ashr i32 %conv4.i.i213.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i214_3 tmp_to_be_used v_conv4_i_i213_3 1;
(*   %conv5.i.i215.3 = trunc i32 %shr.i.i214.3 to i8 *)
split tmp_v_shr_i_i214_3 v_conv5_i_i215_3 v_shr_i_i214_3 8;
vpc v_conv5_i_i215_3@uint8 v_conv5_i_i215_3@uint32;
(*   %conv6.i.i216.3 = zext i8 %conv7.i.i218.2 to i32 *)
cast v_conv6_i_i216_3@uint32 v_conv7_i_i218_2@uint8;
(*   %shl.i.i217.3 = shl i32 %conv6.i.i216.3, 1 *)
shls discard_59 v_shl_i_i217_3 v_conv6_i_i216_3 1;
(*   %conv7.i.i218.3 = trunc i32 %shl.i.i217.3 to i8 *)
split tmp_v_shl_i_i217_3 v_conv7_i_i218_3 v_shl_i_i217_3 8;
vpc v_conv7_i_i218_3@uint8 v_conv7_i_i218_3@uint32;
(*   %conv.i.i206.4 = zext i8 %conv5.i.i215.3 to i32 *)
cast v_conv_i_i206_4@uint32 v_conv5_i_i215_3@uint8;
(*   %and.i.i207.4 = and i32 %conv.i.i206.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i207_4 v_conv_i_i206_4 (0x1)@uint32;
(*   %conv1.i.i208.4 = zext i8 %conv7.i.i218.3 to i32 *)
cast v_conv1_i_i208_4@uint32 v_conv7_i_i218_3@uint8;
(*   %mul.i.i209.4 = mul nsw i32 %and.i.i207.4, %conv1.i.i208.4 *)
mul v_mul_i_i209_4 v_and_i_i207_4 v_conv1_i_i208_4;
(*   %conv2.i.i210.4 = zext i8 %conv3.i.i212.3 to i32 *)
cast v_conv2_i_i210_4@uint32 v_conv3_i_i212_3@uint8;
(*   %xor.i.i211.4 = xor i32 %conv2.i.i210.4, %mul.i.i209.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i211_4 v_conv2_i_i210_4 v_mul_i_i209_4;
(*   %conv3.i.i212.4 = trunc i32 %xor.i.i211.4 to i8 *)
split tmp_v_xor_i_i211_4 v_conv3_i_i212_4 v_xor_i_i211_4 8;
vpc v_conv3_i_i212_4@uint8 v_conv3_i_i212_4@uint32;
(*   %conv4.i.i213.4 = zext i8 %conv5.i.i215.3 to i32 *)
cast v_conv4_i_i213_4@uint32 v_conv5_i_i215_3@uint8;
(*   %shr.i.i214.4 = ashr i32 %conv4.i.i213.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i214_4 tmp_to_be_used v_conv4_i_i213_4 1;
(*   %conv5.i.i215.4 = trunc i32 %shr.i.i214.4 to i8 *)
split tmp_v_shr_i_i214_4 v_conv5_i_i215_4 v_shr_i_i214_4 8;
vpc v_conv5_i_i215_4@uint8 v_conv5_i_i215_4@uint32;
(*   %conv6.i.i216.4 = zext i8 %conv7.i.i218.3 to i32 *)
cast v_conv6_i_i216_4@uint32 v_conv7_i_i218_3@uint8;
(*   %shl.i.i217.4 = shl i32 %conv6.i.i216.4, 1 *)
shls discard_60 v_shl_i_i217_4 v_conv6_i_i216_4 1;
(*   %conv7.i.i218.4 = trunc i32 %shl.i.i217.4 to i8 *)
split tmp_v_shl_i_i217_4 v_conv7_i_i218_4 v_shl_i_i217_4 8;
vpc v_conv7_i_i218_4@uint8 v_conv7_i_i218_4@uint32;
(*   %conv.i.i206.5 = zext i8 %conv5.i.i215.4 to i32 *)
cast v_conv_i_i206_5@uint32 v_conv5_i_i215_4@uint8;
(*   %and.i.i207.5 = and i32 %conv.i.i206.5, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i207_5 v_conv_i_i206_5 (0x1)@uint32;
(*   %conv1.i.i208.5 = zext i8 %conv7.i.i218.4 to i32 *)
cast v_conv1_i_i208_5@uint32 v_conv7_i_i218_4@uint8;
(*   %mul.i.i209.5 = mul nsw i32 %and.i.i207.5, %conv1.i.i208.5 *)
mul v_mul_i_i209_5 v_and_i_i207_5 v_conv1_i_i208_5;
(*   %conv2.i.i210.5 = zext i8 %conv3.i.i212.4 to i32 *)
cast v_conv2_i_i210_5@uint32 v_conv3_i_i212_4@uint8;
(*   %xor.i.i211.5 = xor i32 %conv2.i.i210.5, %mul.i.i209.5 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i211_5 v_conv2_i_i210_5 v_mul_i_i209_5;
(*   %conv3.i.i212.5 = trunc i32 %xor.i.i211.5 to i8 *)
split tmp_v_xor_i_i211_5 v_conv3_i_i212_5 v_xor_i_i211_5 8;
vpc v_conv3_i_i212_5@uint8 v_conv3_i_i212_5@uint32;
(*   %conv4.i.i213.5 = zext i8 %conv5.i.i215.4 to i32 *)
cast v_conv4_i_i213_5@uint32 v_conv5_i_i215_4@uint8;
(*   %shr.i.i214.5 = ashr i32 %conv4.i.i213.5, 1 *)
(* You may need to modify here *)
split v_shr_i_i214_5 tmp_to_be_used v_conv4_i_i213_5 1;
(*   %conv5.i.i215.5 = trunc i32 %shr.i.i214.5 to i8 *)
split tmp_v_shr_i_i214_5 v_conv5_i_i215_5 v_shr_i_i214_5 8;
vpc v_conv5_i_i215_5@uint8 v_conv5_i_i215_5@uint32;
(*   %conv6.i.i216.5 = zext i8 %conv7.i.i218.4 to i32 *)
cast v_conv6_i_i216_5@uint32 v_conv7_i_i218_4@uint8;
(*   %shl.i.i217.5 = shl i32 %conv6.i.i216.5, 1 *)
shls discard_61 v_shl_i_i217_5 v_conv6_i_i216_5 1;
(*   %conv7.i.i218.5 = trunc i32 %shl.i.i217.5 to i8 *)
split tmp_v_shl_i_i217_5 v_conv7_i_i218_5 v_shl_i_i217_5 8;
vpc v_conv7_i_i218_5@uint8 v_conv7_i_i218_5@uint32;
(*   %conv.i.i206.6 = zext i8 %conv5.i.i215.5 to i32 *)
cast v_conv_i_i206_6@uint32 v_conv5_i_i215_5@uint8;
(*   %and.i.i207.6 = and i32 %conv.i.i206.6, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i207_6 v_conv_i_i206_6 (0x1)@uint32;
(*   %conv1.i.i208.6 = zext i8 %conv7.i.i218.5 to i32 *)
cast v_conv1_i_i208_6@uint32 v_conv7_i_i218_5@uint8;
(*   %mul.i.i209.6 = mul nsw i32 %and.i.i207.6, %conv1.i.i208.6 *)
mul v_mul_i_i209_6 v_and_i_i207_6 v_conv1_i_i208_6;
(*   %conv2.i.i210.6 = zext i8 %conv3.i.i212.5 to i32 *)
cast v_conv2_i_i210_6@uint32 v_conv3_i_i212_5@uint8;
(*   %xor.i.i211.6 = xor i32 %conv2.i.i210.6, %mul.i.i209.6 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i211_6 v_conv2_i_i210_6 v_mul_i_i209_6;
(*   %conv3.i.i212.6 = trunc i32 %xor.i.i211.6 to i8 *)
split tmp_v_xor_i_i211_6 v_conv3_i_i212_6 v_xor_i_i211_6 8;
vpc v_conv3_i_i212_6@uint8 v_conv3_i_i212_6@uint32;
(*   %conv4.i.i213.6 = zext i8 %conv5.i.i215.5 to i32 *)
cast v_conv4_i_i213_6@uint32 v_conv5_i_i215_5@uint8;
(*   %shr.i.i214.6 = ashr i32 %conv4.i.i213.6, 1 *)
(* You may need to modify here *)
split v_shr_i_i214_6 tmp_to_be_used v_conv4_i_i213_6 1;
(*   %conv5.i.i215.6 = trunc i32 %shr.i.i214.6 to i8 *)
split tmp_v_shr_i_i214_6 v_conv5_i_i215_6 v_shr_i_i214_6 8;
vpc v_conv5_i_i215_6@uint8 v_conv5_i_i215_6@uint32;
(*   %conv6.i.i216.6 = zext i8 %conv7.i.i218.5 to i32 *)
cast v_conv6_i_i216_6@uint32 v_conv7_i_i218_5@uint8;
(*   %shl.i.i217.6 = shl i32 %conv6.i.i216.6, 1 *)
shls discard_62 v_shl_i_i217_6 v_conv6_i_i216_6 1;
(*   %conv7.i.i218.6 = trunc i32 %shl.i.i217.6 to i8 *)
split tmp_v_shl_i_i217_6 v_conv7_i_i218_6 v_shl_i_i217_6 8;
vpc v_conv7_i_i218_6@uint8 v_conv7_i_i218_6@uint32;
(*   %conv.i.i206.7 = zext i8 %conv5.i.i215.6 to i32 *)
cast v_conv_i_i206_7@uint32 v_conv5_i_i215_6@uint8;
(*   %and.i.i207.7 = and i32 %conv.i.i206.7, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i207_7 v_conv_i_i206_7 (0x1)@uint32;
(*   %conv1.i.i208.7 = zext i8 %conv7.i.i218.6 to i32 *)
cast v_conv1_i_i208_7@uint32 v_conv7_i_i218_6@uint8;
(*   %mul.i.i209.7 = mul nsw i32 %and.i.i207.7, %conv1.i.i208.7 *)
mul v_mul_i_i209_7 v_and_i_i207_7 v_conv1_i_i208_7;
(*   %conv2.i.i210.7 = zext i8 %conv3.i.i212.6 to i32 *)
cast v_conv2_i_i210_7@uint32 v_conv3_i_i212_6@uint8;
(*   %xor.i.i211.7 = xor i32 %conv2.i.i210.7, %mul.i.i209.7 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i211_7 v_conv2_i_i210_7 v_mul_i_i209_7;
(*   %conv3.i.i212.7 = trunc i32 %xor.i.i211.7 to i8 *)
split tmp_v_xor_i_i211_7 v_conv3_i_i212_7 v_xor_i_i211_7 8;
vpc v_conv3_i_i212_7@uint8 v_conv3_i_i212_7@uint32;
(*   store i8 %conv3.i.i212.7, i8* %add.ptr8, align 1 *)
mov cc_12 v_conv3_i_i212_7;
(*   %arrayidx.i198.1 = getelementptr inbounds i8, i8* %a, i64 2 *)
(*   %18 = load i8, i8* %arrayidx.i198.1, align 1 *)
mov v18 a_2;
(*   %arrayidx4.i202.1 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %19 = load i8, i8* %arrayidx4.i202.1, align 1 *)
mov v19 b_1;
(*   %conv.i.i206.1192 = zext i8 %19 to i32 *)
cast v_conv_i_i206_1192@uint32 v19@uint8;
(*   %and.i.i207.1193 = and i32 %conv.i.i206.1192, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i207_1193 v_conv_i_i206_1192 (0x1)@uint32;
(*   %conv1.i.i208.1194 = zext i8 %18 to i32 *)
cast v_conv1_i_i208_1194@uint32 v18@uint8;
(*   %mul.i.i209.1195 = mul nsw i32 %and.i.i207.1193, %conv1.i.i208.1194 *)
mul v_mul_i_i209_1195 v_and_i_i207_1193 v_conv1_i_i208_1194;
(*   %conv3.i.i212.1196 = trunc i32 %mul.i.i209.1195 to i8 *)
split tmp_v_mul_i_i209_1195 v_conv3_i_i212_1196 v_mul_i_i209_1195 8;
vpc v_conv3_i_i212_1196@uint8 v_conv3_i_i212_1196@uint32;
(*   %conv4.i.i213.1197 = zext i8 %19 to i32 *)
cast v_conv4_i_i213_1197@uint32 v19@uint8;
(*   %shr.i.i214.1198 = ashr i32 %conv4.i.i213.1197, 1 *)
(* You may need to modify here *)
split v_shr_i_i214_1198 tmp_to_be_used v_conv4_i_i213_1197 1;
(*   %conv5.i.i215.1199 = trunc i32 %shr.i.i214.1198 to i8 *)
split tmp_v_shr_i_i214_1198 v_conv5_i_i215_1199 v_shr_i_i214_1198 8;
vpc v_conv5_i_i215_1199@uint8 v_conv5_i_i215_1199@uint32;
(*   %conv6.i.i216.1200 = zext i8 %18 to i32 *)
cast v_conv6_i_i216_1200@uint32 v18@uint8;
(*   %shl.i.i217.1201 = shl i32 %conv6.i.i216.1200, 1 *)
shls discard_63 v_shl_i_i217_1201 v_conv6_i_i216_1200 1;
(*   %conv7.i.i218.1202 = trunc i32 %shl.i.i217.1201 to i8 *)
split tmp_v_shl_i_i217_1201 v_conv7_i_i218_1202 v_shl_i_i217_1201 8;
vpc v_conv7_i_i218_1202@uint8 v_conv7_i_i218_1202@uint32;
(*   %conv.i.i206.1.1 = zext i8 %conv5.i.i215.1199 to i32 *)
cast v_conv_i_i206_1_1@uint32 v_conv5_i_i215_1199@uint8;
(*   %and.i.i207.1.1 = and i32 %conv.i.i206.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i207_1_1 v_conv_i_i206_1_1 (0x1)@uint32;
(*   %conv1.i.i208.1.1 = zext i8 %conv7.i.i218.1202 to i32 *)
cast v_conv1_i_i208_1_1@uint32 v_conv7_i_i218_1202@uint8;
(*   %mul.i.i209.1.1 = mul nsw i32 %and.i.i207.1.1, %conv1.i.i208.1.1 *)
mul v_mul_i_i209_1_1 v_and_i_i207_1_1 v_conv1_i_i208_1_1;
(*   %conv2.i.i210.1.1 = zext i8 %conv3.i.i212.1196 to i32 *)
cast v_conv2_i_i210_1_1@uint32 v_conv3_i_i212_1196@uint8;
(*   %xor.i.i211.1.1 = xor i32 %conv2.i.i210.1.1, %mul.i.i209.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i211_1_1 v_conv2_i_i210_1_1 v_mul_i_i209_1_1;
(*   %conv3.i.i212.1.1 = trunc i32 %xor.i.i211.1.1 to i8 *)
split tmp_v_xor_i_i211_1_1 v_conv3_i_i212_1_1 v_xor_i_i211_1_1 8;
vpc v_conv3_i_i212_1_1@uint8 v_conv3_i_i212_1_1@uint32;
(*   %conv4.i.i213.1.1 = zext i8 %conv5.i.i215.1199 to i32 *)
cast v_conv4_i_i213_1_1@uint32 v_conv5_i_i215_1199@uint8;
(*   %shr.i.i214.1.1 = ashr i32 %conv4.i.i213.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i214_1_1 tmp_to_be_used v_conv4_i_i213_1_1 1;
(*   %conv5.i.i215.1.1 = trunc i32 %shr.i.i214.1.1 to i8 *)
split tmp_v_shr_i_i214_1_1 v_conv5_i_i215_1_1 v_shr_i_i214_1_1 8;
vpc v_conv5_i_i215_1_1@uint8 v_conv5_i_i215_1_1@uint32;
(*   %conv6.i.i216.1.1 = zext i8 %conv7.i.i218.1202 to i32 *)
cast v_conv6_i_i216_1_1@uint32 v_conv7_i_i218_1202@uint8;
(*   %shl.i.i217.1.1 = shl i32 %conv6.i.i216.1.1, 1 *)
shls discard_64 v_shl_i_i217_1_1 v_conv6_i_i216_1_1 1;
(*   %conv7.i.i218.1.1 = trunc i32 %shl.i.i217.1.1 to i8 *)
split tmp_v_shl_i_i217_1_1 v_conv7_i_i218_1_1 v_shl_i_i217_1_1 8;
vpc v_conv7_i_i218_1_1@uint8 v_conv7_i_i218_1_1@uint32;
(*   %conv.i.i206.2.1 = zext i8 %conv5.i.i215.1.1 to i32 *)
cast v_conv_i_i206_2_1@uint32 v_conv5_i_i215_1_1@uint8;
(*   %and.i.i207.2.1 = and i32 %conv.i.i206.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i207_2_1 v_conv_i_i206_2_1 (0x1)@uint32;
(*   %conv1.i.i208.2.1 = zext i8 %conv7.i.i218.1.1 to i32 *)
cast v_conv1_i_i208_2_1@uint32 v_conv7_i_i218_1_1@uint8;
(*   %mul.i.i209.2.1 = mul nsw i32 %and.i.i207.2.1, %conv1.i.i208.2.1 *)
mul v_mul_i_i209_2_1 v_and_i_i207_2_1 v_conv1_i_i208_2_1;
(*   %conv2.i.i210.2.1 = zext i8 %conv3.i.i212.1.1 to i32 *)
cast v_conv2_i_i210_2_1@uint32 v_conv3_i_i212_1_1@uint8;
(*   %xor.i.i211.2.1 = xor i32 %conv2.i.i210.2.1, %mul.i.i209.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i211_2_1 v_conv2_i_i210_2_1 v_mul_i_i209_2_1;
(*   %conv3.i.i212.2.1 = trunc i32 %xor.i.i211.2.1 to i8 *)
split tmp_v_xor_i_i211_2_1 v_conv3_i_i212_2_1 v_xor_i_i211_2_1 8;
vpc v_conv3_i_i212_2_1@uint8 v_conv3_i_i212_2_1@uint32;
(*   %conv4.i.i213.2.1 = zext i8 %conv5.i.i215.1.1 to i32 *)
cast v_conv4_i_i213_2_1@uint32 v_conv5_i_i215_1_1@uint8;
(*   %shr.i.i214.2.1 = ashr i32 %conv4.i.i213.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i214_2_1 tmp_to_be_used v_conv4_i_i213_2_1 1;
(*   %conv5.i.i215.2.1 = trunc i32 %shr.i.i214.2.1 to i8 *)
split tmp_v_shr_i_i214_2_1 v_conv5_i_i215_2_1 v_shr_i_i214_2_1 8;
vpc v_conv5_i_i215_2_1@uint8 v_conv5_i_i215_2_1@uint32;
(*   %conv6.i.i216.2.1 = zext i8 %conv7.i.i218.1.1 to i32 *)
cast v_conv6_i_i216_2_1@uint32 v_conv7_i_i218_1_1@uint8;
(*   %shl.i.i217.2.1 = shl i32 %conv6.i.i216.2.1, 1 *)
shls discard_65 v_shl_i_i217_2_1 v_conv6_i_i216_2_1 1;
(*   %conv7.i.i218.2.1 = trunc i32 %shl.i.i217.2.1 to i8 *)
split tmp_v_shl_i_i217_2_1 v_conv7_i_i218_2_1 v_shl_i_i217_2_1 8;
vpc v_conv7_i_i218_2_1@uint8 v_conv7_i_i218_2_1@uint32;
(*   %conv.i.i206.3.1 = zext i8 %conv5.i.i215.2.1 to i32 *)
cast v_conv_i_i206_3_1@uint32 v_conv5_i_i215_2_1@uint8;
(*   %and.i.i207.3.1 = and i32 %conv.i.i206.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i207_3_1 v_conv_i_i206_3_1 (0x1)@uint32;
(*   %conv1.i.i208.3.1 = zext i8 %conv7.i.i218.2.1 to i32 *)
cast v_conv1_i_i208_3_1@uint32 v_conv7_i_i218_2_1@uint8;
(*   %mul.i.i209.3.1 = mul nsw i32 %and.i.i207.3.1, %conv1.i.i208.3.1 *)
mul v_mul_i_i209_3_1 v_and_i_i207_3_1 v_conv1_i_i208_3_1;
(*   %conv2.i.i210.3.1 = zext i8 %conv3.i.i212.2.1 to i32 *)
cast v_conv2_i_i210_3_1@uint32 v_conv3_i_i212_2_1@uint8;
(*   %xor.i.i211.3.1 = xor i32 %conv2.i.i210.3.1, %mul.i.i209.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i211_3_1 v_conv2_i_i210_3_1 v_mul_i_i209_3_1;
(*   %conv3.i.i212.3.1 = trunc i32 %xor.i.i211.3.1 to i8 *)
split tmp_v_xor_i_i211_3_1 v_conv3_i_i212_3_1 v_xor_i_i211_3_1 8;
vpc v_conv3_i_i212_3_1@uint8 v_conv3_i_i212_3_1@uint32;
(*   %conv4.i.i213.3.1 = zext i8 %conv5.i.i215.2.1 to i32 *)
cast v_conv4_i_i213_3_1@uint32 v_conv5_i_i215_2_1@uint8;
(*   %shr.i.i214.3.1 = ashr i32 %conv4.i.i213.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i214_3_1 tmp_to_be_used v_conv4_i_i213_3_1 1;
(*   %conv5.i.i215.3.1 = trunc i32 %shr.i.i214.3.1 to i8 *)
split tmp_v_shr_i_i214_3_1 v_conv5_i_i215_3_1 v_shr_i_i214_3_1 8;
vpc v_conv5_i_i215_3_1@uint8 v_conv5_i_i215_3_1@uint32;
(*   %conv6.i.i216.3.1 = zext i8 %conv7.i.i218.2.1 to i32 *)
cast v_conv6_i_i216_3_1@uint32 v_conv7_i_i218_2_1@uint8;
(*   %shl.i.i217.3.1 = shl i32 %conv6.i.i216.3.1, 1 *)
shls discard_66 v_shl_i_i217_3_1 v_conv6_i_i216_3_1 1;
(*   %conv7.i.i218.3.1 = trunc i32 %shl.i.i217.3.1 to i8 *)
split tmp_v_shl_i_i217_3_1 v_conv7_i_i218_3_1 v_shl_i_i217_3_1 8;
vpc v_conv7_i_i218_3_1@uint8 v_conv7_i_i218_3_1@uint32;
(*   %conv.i.i206.4.1 = zext i8 %conv5.i.i215.3.1 to i32 *)
cast v_conv_i_i206_4_1@uint32 v_conv5_i_i215_3_1@uint8;
(*   %and.i.i207.4.1 = and i32 %conv.i.i206.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i207_4_1 v_conv_i_i206_4_1 (0x1)@uint32;
(*   %conv1.i.i208.4.1 = zext i8 %conv7.i.i218.3.1 to i32 *)
cast v_conv1_i_i208_4_1@uint32 v_conv7_i_i218_3_1@uint8;
(*   %mul.i.i209.4.1 = mul nsw i32 %and.i.i207.4.1, %conv1.i.i208.4.1 *)
mul v_mul_i_i209_4_1 v_and_i_i207_4_1 v_conv1_i_i208_4_1;
(*   %conv2.i.i210.4.1 = zext i8 %conv3.i.i212.3.1 to i32 *)
cast v_conv2_i_i210_4_1@uint32 v_conv3_i_i212_3_1@uint8;
(*   %xor.i.i211.4.1 = xor i32 %conv2.i.i210.4.1, %mul.i.i209.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i211_4_1 v_conv2_i_i210_4_1 v_mul_i_i209_4_1;
(*   %conv3.i.i212.4.1 = trunc i32 %xor.i.i211.4.1 to i8 *)
split tmp_v_xor_i_i211_4_1 v_conv3_i_i212_4_1 v_xor_i_i211_4_1 8;
vpc v_conv3_i_i212_4_1@uint8 v_conv3_i_i212_4_1@uint32;
(*   %conv4.i.i213.4.1 = zext i8 %conv5.i.i215.3.1 to i32 *)
cast v_conv4_i_i213_4_1@uint32 v_conv5_i_i215_3_1@uint8;
(*   %shr.i.i214.4.1 = ashr i32 %conv4.i.i213.4.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i214_4_1 tmp_to_be_used v_conv4_i_i213_4_1 1;
(*   %conv5.i.i215.4.1 = trunc i32 %shr.i.i214.4.1 to i8 *)
split tmp_v_shr_i_i214_4_1 v_conv5_i_i215_4_1 v_shr_i_i214_4_1 8;
vpc v_conv5_i_i215_4_1@uint8 v_conv5_i_i215_4_1@uint32;
(*   %conv6.i.i216.4.1 = zext i8 %conv7.i.i218.3.1 to i32 *)
cast v_conv6_i_i216_4_1@uint32 v_conv7_i_i218_3_1@uint8;
(*   %shl.i.i217.4.1 = shl i32 %conv6.i.i216.4.1, 1 *)
shls discard_67 v_shl_i_i217_4_1 v_conv6_i_i216_4_1 1;
(*   %conv7.i.i218.4.1 = trunc i32 %shl.i.i217.4.1 to i8 *)
split tmp_v_shl_i_i217_4_1 v_conv7_i_i218_4_1 v_shl_i_i217_4_1 8;
vpc v_conv7_i_i218_4_1@uint8 v_conv7_i_i218_4_1@uint32;
(*   %conv.i.i206.5.1 = zext i8 %conv5.i.i215.4.1 to i32 *)
cast v_conv_i_i206_5_1@uint32 v_conv5_i_i215_4_1@uint8;
(*   %and.i.i207.5.1 = and i32 %conv.i.i206.5.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i207_5_1 v_conv_i_i206_5_1 (0x1)@uint32;
(*   %conv1.i.i208.5.1 = zext i8 %conv7.i.i218.4.1 to i32 *)
cast v_conv1_i_i208_5_1@uint32 v_conv7_i_i218_4_1@uint8;
(*   %mul.i.i209.5.1 = mul nsw i32 %and.i.i207.5.1, %conv1.i.i208.5.1 *)
mul v_mul_i_i209_5_1 v_and_i_i207_5_1 v_conv1_i_i208_5_1;
(*   %conv2.i.i210.5.1 = zext i8 %conv3.i.i212.4.1 to i32 *)
cast v_conv2_i_i210_5_1@uint32 v_conv3_i_i212_4_1@uint8;
(*   %xor.i.i211.5.1 = xor i32 %conv2.i.i210.5.1, %mul.i.i209.5.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i211_5_1 v_conv2_i_i210_5_1 v_mul_i_i209_5_1;
(*   %conv3.i.i212.5.1 = trunc i32 %xor.i.i211.5.1 to i8 *)
split tmp_v_xor_i_i211_5_1 v_conv3_i_i212_5_1 v_xor_i_i211_5_1 8;
vpc v_conv3_i_i212_5_1@uint8 v_conv3_i_i212_5_1@uint32;
(*   %conv4.i.i213.5.1 = zext i8 %conv5.i.i215.4.1 to i32 *)
cast v_conv4_i_i213_5_1@uint32 v_conv5_i_i215_4_1@uint8;
(*   %shr.i.i214.5.1 = ashr i32 %conv4.i.i213.5.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i214_5_1 tmp_to_be_used v_conv4_i_i213_5_1 1;
(*   %conv5.i.i215.5.1 = trunc i32 %shr.i.i214.5.1 to i8 *)
split tmp_v_shr_i_i214_5_1 v_conv5_i_i215_5_1 v_shr_i_i214_5_1 8;
vpc v_conv5_i_i215_5_1@uint8 v_conv5_i_i215_5_1@uint32;
(*   %conv6.i.i216.5.1 = zext i8 %conv7.i.i218.4.1 to i32 *)
cast v_conv6_i_i216_5_1@uint32 v_conv7_i_i218_4_1@uint8;
(*   %shl.i.i217.5.1 = shl i32 %conv6.i.i216.5.1, 1 *)
shls discard_68 v_shl_i_i217_5_1 v_conv6_i_i216_5_1 1;
(*   %conv7.i.i218.5.1 = trunc i32 %shl.i.i217.5.1 to i8 *)
split tmp_v_shl_i_i217_5_1 v_conv7_i_i218_5_1 v_shl_i_i217_5_1 8;
vpc v_conv7_i_i218_5_1@uint8 v_conv7_i_i218_5_1@uint32;
(*   %conv.i.i206.6.1 = zext i8 %conv5.i.i215.5.1 to i32 *)
cast v_conv_i_i206_6_1@uint32 v_conv5_i_i215_5_1@uint8;
(*   %and.i.i207.6.1 = and i32 %conv.i.i206.6.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i207_6_1 v_conv_i_i206_6_1 (0x1)@uint32;
(*   %conv1.i.i208.6.1 = zext i8 %conv7.i.i218.5.1 to i32 *)
cast v_conv1_i_i208_6_1@uint32 v_conv7_i_i218_5_1@uint8;
(*   %mul.i.i209.6.1 = mul nsw i32 %and.i.i207.6.1, %conv1.i.i208.6.1 *)
mul v_mul_i_i209_6_1 v_and_i_i207_6_1 v_conv1_i_i208_6_1;
(*   %conv2.i.i210.6.1 = zext i8 %conv3.i.i212.5.1 to i32 *)
cast v_conv2_i_i210_6_1@uint32 v_conv3_i_i212_5_1@uint8;
(*   %xor.i.i211.6.1 = xor i32 %conv2.i.i210.6.1, %mul.i.i209.6.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i211_6_1 v_conv2_i_i210_6_1 v_mul_i_i209_6_1;
(*   %conv3.i.i212.6.1 = trunc i32 %xor.i.i211.6.1 to i8 *)
split tmp_v_xor_i_i211_6_1 v_conv3_i_i212_6_1 v_xor_i_i211_6_1 8;
vpc v_conv3_i_i212_6_1@uint8 v_conv3_i_i212_6_1@uint32;
(*   %conv4.i.i213.6.1 = zext i8 %conv5.i.i215.5.1 to i32 *)
cast v_conv4_i_i213_6_1@uint32 v_conv5_i_i215_5_1@uint8;
(*   %shr.i.i214.6.1 = ashr i32 %conv4.i.i213.6.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i214_6_1 tmp_to_be_used v_conv4_i_i213_6_1 1;
(*   %conv5.i.i215.6.1 = trunc i32 %shr.i.i214.6.1 to i8 *)
split tmp_v_shr_i_i214_6_1 v_conv5_i_i215_6_1 v_shr_i_i214_6_1 8;
vpc v_conv5_i_i215_6_1@uint8 v_conv5_i_i215_6_1@uint32;
(*   %conv6.i.i216.6.1 = zext i8 %conv7.i.i218.5.1 to i32 *)
cast v_conv6_i_i216_6_1@uint32 v_conv7_i_i218_5_1@uint8;
(*   %shl.i.i217.6.1 = shl i32 %conv6.i.i216.6.1, 1 *)
shls discard_69 v_shl_i_i217_6_1 v_conv6_i_i216_6_1 1;
(*   %conv7.i.i218.6.1 = trunc i32 %shl.i.i217.6.1 to i8 *)
split tmp_v_shl_i_i217_6_1 v_conv7_i_i218_6_1 v_shl_i_i217_6_1 8;
vpc v_conv7_i_i218_6_1@uint8 v_conv7_i_i218_6_1@uint32;
(*   %conv.i.i206.7.1 = zext i8 %conv5.i.i215.6.1 to i32 *)
cast v_conv_i_i206_7_1@uint32 v_conv5_i_i215_6_1@uint8;
(*   %and.i.i207.7.1 = and i32 %conv.i.i206.7.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i207_7_1 v_conv_i_i206_7_1 (0x1)@uint32;
(*   %conv1.i.i208.7.1 = zext i8 %conv7.i.i218.6.1 to i32 *)
cast v_conv1_i_i208_7_1@uint32 v_conv7_i_i218_6_1@uint8;
(*   %mul.i.i209.7.1 = mul nsw i32 %and.i.i207.7.1, %conv1.i.i208.7.1 *)
mul v_mul_i_i209_7_1 v_and_i_i207_7_1 v_conv1_i_i208_7_1;
(*   %conv2.i.i210.7.1 = zext i8 %conv3.i.i212.6.1 to i32 *)
cast v_conv2_i_i210_7_1@uint32 v_conv3_i_i212_6_1@uint8;
(*   %xor.i.i211.7.1 = xor i32 %conv2.i.i210.7.1, %mul.i.i209.7.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i211_7_1 v_conv2_i_i210_7_1 v_mul_i_i209_7_1;
(*   %conv3.i.i212.7.1 = trunc i32 %xor.i.i211.7.1 to i8 *)
split tmp_v_xor_i_i211_7_1 v_conv3_i_i212_7_1 v_xor_i_i211_7_1 8;
vpc v_conv3_i_i212_7_1@uint8 v_conv3_i_i212_7_1@uint32;
(*   %arrayidx6.i222.1 = getelementptr inbounds i8, i8* %add.ptr8, i64 1 *)
(*   store i8 %conv3.i.i212.7.1, i8* %arrayidx6.i222.1, align 1 *)
mov cc_13 v_conv3_i_i212_7_1;
(*   %arrayidx.i198.2 = getelementptr inbounds i8, i8* %a, i64 3 *)
(*   %20 = load i8, i8* %arrayidx.i198.2, align 1 *)
mov v20 a_3;
(*   %arrayidx4.i202.2 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %21 = load i8, i8* %arrayidx4.i202.2, align 1 *)
mov v21 b_2;
(*   %conv.i.i206.2203 = zext i8 %21 to i32 *)
cast v_conv_i_i206_2203@uint32 v21@uint8;
(*   %and.i.i207.2204 = and i32 %conv.i.i206.2203, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i207_2204 v_conv_i_i206_2203 (0x1)@uint32;
(*   %conv1.i.i208.2205 = zext i8 %20 to i32 *)
cast v_conv1_i_i208_2205@uint32 v20@uint8;
(*   %mul.i.i209.2206 = mul nsw i32 %and.i.i207.2204, %conv1.i.i208.2205 *)
mul v_mul_i_i209_2206 v_and_i_i207_2204 v_conv1_i_i208_2205;
(*   %conv3.i.i212.2207 = trunc i32 %mul.i.i209.2206 to i8 *)
split tmp_v_mul_i_i209_2206 v_conv3_i_i212_2207 v_mul_i_i209_2206 8;
vpc v_conv3_i_i212_2207@uint8 v_conv3_i_i212_2207@uint32;
(*   %conv4.i.i213.2208 = zext i8 %21 to i32 *)
cast v_conv4_i_i213_2208@uint32 v21@uint8;
(*   %shr.i.i214.2209 = ashr i32 %conv4.i.i213.2208, 1 *)
(* You may need to modify here *)
split v_shr_i_i214_2209 tmp_to_be_used v_conv4_i_i213_2208 1;
(*   %conv5.i.i215.2210 = trunc i32 %shr.i.i214.2209 to i8 *)
split tmp_v_shr_i_i214_2209 v_conv5_i_i215_2210 v_shr_i_i214_2209 8;
vpc v_conv5_i_i215_2210@uint8 v_conv5_i_i215_2210@uint32;
(*   %conv6.i.i216.2211 = zext i8 %20 to i32 *)
cast v_conv6_i_i216_2211@uint32 v20@uint8;
(*   %shl.i.i217.2212 = shl i32 %conv6.i.i216.2211, 1 *)
shls discard_70 v_shl_i_i217_2212 v_conv6_i_i216_2211 1;
(*   %conv7.i.i218.2213 = trunc i32 %shl.i.i217.2212 to i8 *)
split tmp_v_shl_i_i217_2212 v_conv7_i_i218_2213 v_shl_i_i217_2212 8;
vpc v_conv7_i_i218_2213@uint8 v_conv7_i_i218_2213@uint32;
(*   %conv.i.i206.1.2 = zext i8 %conv5.i.i215.2210 to i32 *)
cast v_conv_i_i206_1_2@uint32 v_conv5_i_i215_2210@uint8;
(*   %and.i.i207.1.2 = and i32 %conv.i.i206.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i207_1_2 v_conv_i_i206_1_2 (0x1)@uint32;
(*   %conv1.i.i208.1.2 = zext i8 %conv7.i.i218.2213 to i32 *)
cast v_conv1_i_i208_1_2@uint32 v_conv7_i_i218_2213@uint8;
(*   %mul.i.i209.1.2 = mul nsw i32 %and.i.i207.1.2, %conv1.i.i208.1.2 *)
mul v_mul_i_i209_1_2 v_and_i_i207_1_2 v_conv1_i_i208_1_2;
(*   %conv2.i.i210.1.2 = zext i8 %conv3.i.i212.2207 to i32 *)
cast v_conv2_i_i210_1_2@uint32 v_conv3_i_i212_2207@uint8;
(*   %xor.i.i211.1.2 = xor i32 %conv2.i.i210.1.2, %mul.i.i209.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i211_1_2 v_conv2_i_i210_1_2 v_mul_i_i209_1_2;
(*   %conv3.i.i212.1.2 = trunc i32 %xor.i.i211.1.2 to i8 *)
split tmp_v_xor_i_i211_1_2 v_conv3_i_i212_1_2 v_xor_i_i211_1_2 8;
vpc v_conv3_i_i212_1_2@uint8 v_conv3_i_i212_1_2@uint32;
(*   %conv4.i.i213.1.2 = zext i8 %conv5.i.i215.2210 to i32 *)
cast v_conv4_i_i213_1_2@uint32 v_conv5_i_i215_2210@uint8;
(*   %shr.i.i214.1.2 = ashr i32 %conv4.i.i213.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i214_1_2 tmp_to_be_used v_conv4_i_i213_1_2 1;
(*   %conv5.i.i215.1.2 = trunc i32 %shr.i.i214.1.2 to i8 *)
split tmp_v_shr_i_i214_1_2 v_conv5_i_i215_1_2 v_shr_i_i214_1_2 8;
vpc v_conv5_i_i215_1_2@uint8 v_conv5_i_i215_1_2@uint32;
(*   %conv6.i.i216.1.2 = zext i8 %conv7.i.i218.2213 to i32 *)
cast v_conv6_i_i216_1_2@uint32 v_conv7_i_i218_2213@uint8;
(*   %shl.i.i217.1.2 = shl i32 %conv6.i.i216.1.2, 1 *)
shls discard_71 v_shl_i_i217_1_2 v_conv6_i_i216_1_2 1;
(*   %conv7.i.i218.1.2 = trunc i32 %shl.i.i217.1.2 to i8 *)
split tmp_v_shl_i_i217_1_2 v_conv7_i_i218_1_2 v_shl_i_i217_1_2 8;
vpc v_conv7_i_i218_1_2@uint8 v_conv7_i_i218_1_2@uint32;
(*   %conv.i.i206.2.2 = zext i8 %conv5.i.i215.1.2 to i32 *)
cast v_conv_i_i206_2_2@uint32 v_conv5_i_i215_1_2@uint8;
(*   %and.i.i207.2.2 = and i32 %conv.i.i206.2.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i207_2_2 v_conv_i_i206_2_2 (0x1)@uint32;
(*   %conv1.i.i208.2.2 = zext i8 %conv7.i.i218.1.2 to i32 *)
cast v_conv1_i_i208_2_2@uint32 v_conv7_i_i218_1_2@uint8;
(*   %mul.i.i209.2.2 = mul nsw i32 %and.i.i207.2.2, %conv1.i.i208.2.2 *)
mul v_mul_i_i209_2_2 v_and_i_i207_2_2 v_conv1_i_i208_2_2;
(*   %conv2.i.i210.2.2 = zext i8 %conv3.i.i212.1.2 to i32 *)
cast v_conv2_i_i210_2_2@uint32 v_conv3_i_i212_1_2@uint8;
(*   %xor.i.i211.2.2 = xor i32 %conv2.i.i210.2.2, %mul.i.i209.2.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i211_2_2 v_conv2_i_i210_2_2 v_mul_i_i209_2_2;
(*   %conv3.i.i212.2.2 = trunc i32 %xor.i.i211.2.2 to i8 *)
split tmp_v_xor_i_i211_2_2 v_conv3_i_i212_2_2 v_xor_i_i211_2_2 8;
vpc v_conv3_i_i212_2_2@uint8 v_conv3_i_i212_2_2@uint32;
(*   %conv4.i.i213.2.2 = zext i8 %conv5.i.i215.1.2 to i32 *)
cast v_conv4_i_i213_2_2@uint32 v_conv5_i_i215_1_2@uint8;
(*   %shr.i.i214.2.2 = ashr i32 %conv4.i.i213.2.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i214_2_2 tmp_to_be_used v_conv4_i_i213_2_2 1;
(*   %conv5.i.i215.2.2 = trunc i32 %shr.i.i214.2.2 to i8 *)
split tmp_v_shr_i_i214_2_2 v_conv5_i_i215_2_2 v_shr_i_i214_2_2 8;
vpc v_conv5_i_i215_2_2@uint8 v_conv5_i_i215_2_2@uint32;
(*   %conv6.i.i216.2.2 = zext i8 %conv7.i.i218.1.2 to i32 *)
cast v_conv6_i_i216_2_2@uint32 v_conv7_i_i218_1_2@uint8;
(*   %shl.i.i217.2.2 = shl i32 %conv6.i.i216.2.2, 1 *)
shls discard_72 v_shl_i_i217_2_2 v_conv6_i_i216_2_2 1;
(*   %conv7.i.i218.2.2 = trunc i32 %shl.i.i217.2.2 to i8 *)
split tmp_v_shl_i_i217_2_2 v_conv7_i_i218_2_2 v_shl_i_i217_2_2 8;
vpc v_conv7_i_i218_2_2@uint8 v_conv7_i_i218_2_2@uint32;
(*   %conv.i.i206.3.2 = zext i8 %conv5.i.i215.2.2 to i32 *)
cast v_conv_i_i206_3_2@uint32 v_conv5_i_i215_2_2@uint8;
(*   %and.i.i207.3.2 = and i32 %conv.i.i206.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i207_3_2 v_conv_i_i206_3_2 (0x1)@uint32;
(*   %conv1.i.i208.3.2 = zext i8 %conv7.i.i218.2.2 to i32 *)
cast v_conv1_i_i208_3_2@uint32 v_conv7_i_i218_2_2@uint8;
(*   %mul.i.i209.3.2 = mul nsw i32 %and.i.i207.3.2, %conv1.i.i208.3.2 *)
mul v_mul_i_i209_3_2 v_and_i_i207_3_2 v_conv1_i_i208_3_2;
(*   %conv2.i.i210.3.2 = zext i8 %conv3.i.i212.2.2 to i32 *)
cast v_conv2_i_i210_3_2@uint32 v_conv3_i_i212_2_2@uint8;
(*   %xor.i.i211.3.2 = xor i32 %conv2.i.i210.3.2, %mul.i.i209.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i211_3_2 v_conv2_i_i210_3_2 v_mul_i_i209_3_2;
(*   %conv3.i.i212.3.2 = trunc i32 %xor.i.i211.3.2 to i8 *)
split tmp_v_xor_i_i211_3_2 v_conv3_i_i212_3_2 v_xor_i_i211_3_2 8;
vpc v_conv3_i_i212_3_2@uint8 v_conv3_i_i212_3_2@uint32;
(*   %conv4.i.i213.3.2 = zext i8 %conv5.i.i215.2.2 to i32 *)
cast v_conv4_i_i213_3_2@uint32 v_conv5_i_i215_2_2@uint8;
(*   %shr.i.i214.3.2 = ashr i32 %conv4.i.i213.3.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i214_3_2 tmp_to_be_used v_conv4_i_i213_3_2 1;
(*   %conv5.i.i215.3.2 = trunc i32 %shr.i.i214.3.2 to i8 *)
split tmp_v_shr_i_i214_3_2 v_conv5_i_i215_3_2 v_shr_i_i214_3_2 8;
vpc v_conv5_i_i215_3_2@uint8 v_conv5_i_i215_3_2@uint32;
(*   %conv6.i.i216.3.2 = zext i8 %conv7.i.i218.2.2 to i32 *)
cast v_conv6_i_i216_3_2@uint32 v_conv7_i_i218_2_2@uint8;
(*   %shl.i.i217.3.2 = shl i32 %conv6.i.i216.3.2, 1 *)
shls discard_73 v_shl_i_i217_3_2 v_conv6_i_i216_3_2 1;
(*   %conv7.i.i218.3.2 = trunc i32 %shl.i.i217.3.2 to i8 *)
split tmp_v_shl_i_i217_3_2 v_conv7_i_i218_3_2 v_shl_i_i217_3_2 8;
vpc v_conv7_i_i218_3_2@uint8 v_conv7_i_i218_3_2@uint32;
(*   %conv.i.i206.4.2 = zext i8 %conv5.i.i215.3.2 to i32 *)
cast v_conv_i_i206_4_2@uint32 v_conv5_i_i215_3_2@uint8;
(*   %and.i.i207.4.2 = and i32 %conv.i.i206.4.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i207_4_2 v_conv_i_i206_4_2 (0x1)@uint32;
(*   %conv1.i.i208.4.2 = zext i8 %conv7.i.i218.3.2 to i32 *)
cast v_conv1_i_i208_4_2@uint32 v_conv7_i_i218_3_2@uint8;
(*   %mul.i.i209.4.2 = mul nsw i32 %and.i.i207.4.2, %conv1.i.i208.4.2 *)
mul v_mul_i_i209_4_2 v_and_i_i207_4_2 v_conv1_i_i208_4_2;
(*   %conv2.i.i210.4.2 = zext i8 %conv3.i.i212.3.2 to i32 *)
cast v_conv2_i_i210_4_2@uint32 v_conv3_i_i212_3_2@uint8;
(*   %xor.i.i211.4.2 = xor i32 %conv2.i.i210.4.2, %mul.i.i209.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i211_4_2 v_conv2_i_i210_4_2 v_mul_i_i209_4_2;
(*   %conv3.i.i212.4.2 = trunc i32 %xor.i.i211.4.2 to i8 *)
split tmp_v_xor_i_i211_4_2 v_conv3_i_i212_4_2 v_xor_i_i211_4_2 8;
vpc v_conv3_i_i212_4_2@uint8 v_conv3_i_i212_4_2@uint32;
(*   %conv4.i.i213.4.2 = zext i8 %conv5.i.i215.3.2 to i32 *)
cast v_conv4_i_i213_4_2@uint32 v_conv5_i_i215_3_2@uint8;
(*   %shr.i.i214.4.2 = ashr i32 %conv4.i.i213.4.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i214_4_2 tmp_to_be_used v_conv4_i_i213_4_2 1;
(*   %conv5.i.i215.4.2 = trunc i32 %shr.i.i214.4.2 to i8 *)
split tmp_v_shr_i_i214_4_2 v_conv5_i_i215_4_2 v_shr_i_i214_4_2 8;
vpc v_conv5_i_i215_4_2@uint8 v_conv5_i_i215_4_2@uint32;
(*   %conv6.i.i216.4.2 = zext i8 %conv7.i.i218.3.2 to i32 *)
cast v_conv6_i_i216_4_2@uint32 v_conv7_i_i218_3_2@uint8;
(*   %shl.i.i217.4.2 = shl i32 %conv6.i.i216.4.2, 1 *)
shls discard_74 v_shl_i_i217_4_2 v_conv6_i_i216_4_2 1;
(*   %conv7.i.i218.4.2 = trunc i32 %shl.i.i217.4.2 to i8 *)
split tmp_v_shl_i_i217_4_2 v_conv7_i_i218_4_2 v_shl_i_i217_4_2 8;
vpc v_conv7_i_i218_4_2@uint8 v_conv7_i_i218_4_2@uint32;
(*   %conv.i.i206.5.2 = zext i8 %conv5.i.i215.4.2 to i32 *)
cast v_conv_i_i206_5_2@uint32 v_conv5_i_i215_4_2@uint8;
(*   %and.i.i207.5.2 = and i32 %conv.i.i206.5.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i207_5_2 v_conv_i_i206_5_2 (0x1)@uint32;
(*   %conv1.i.i208.5.2 = zext i8 %conv7.i.i218.4.2 to i32 *)
cast v_conv1_i_i208_5_2@uint32 v_conv7_i_i218_4_2@uint8;
(*   %mul.i.i209.5.2 = mul nsw i32 %and.i.i207.5.2, %conv1.i.i208.5.2 *)
mul v_mul_i_i209_5_2 v_and_i_i207_5_2 v_conv1_i_i208_5_2;
(*   %conv2.i.i210.5.2 = zext i8 %conv3.i.i212.4.2 to i32 *)
cast v_conv2_i_i210_5_2@uint32 v_conv3_i_i212_4_2@uint8;
(*   %xor.i.i211.5.2 = xor i32 %conv2.i.i210.5.2, %mul.i.i209.5.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i211_5_2 v_conv2_i_i210_5_2 v_mul_i_i209_5_2;
(*   %conv3.i.i212.5.2 = trunc i32 %xor.i.i211.5.2 to i8 *)
split tmp_v_xor_i_i211_5_2 v_conv3_i_i212_5_2 v_xor_i_i211_5_2 8;
vpc v_conv3_i_i212_5_2@uint8 v_conv3_i_i212_5_2@uint32;
(*   %conv4.i.i213.5.2 = zext i8 %conv5.i.i215.4.2 to i32 *)
cast v_conv4_i_i213_5_2@uint32 v_conv5_i_i215_4_2@uint8;
(*   %shr.i.i214.5.2 = ashr i32 %conv4.i.i213.5.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i214_5_2 tmp_to_be_used v_conv4_i_i213_5_2 1;
(*   %conv5.i.i215.5.2 = trunc i32 %shr.i.i214.5.2 to i8 *)
split tmp_v_shr_i_i214_5_2 v_conv5_i_i215_5_2 v_shr_i_i214_5_2 8;
vpc v_conv5_i_i215_5_2@uint8 v_conv5_i_i215_5_2@uint32;
(*   %conv6.i.i216.5.2 = zext i8 %conv7.i.i218.4.2 to i32 *)
cast v_conv6_i_i216_5_2@uint32 v_conv7_i_i218_4_2@uint8;
(*   %shl.i.i217.5.2 = shl i32 %conv6.i.i216.5.2, 1 *)
shls discard_75 v_shl_i_i217_5_2 v_conv6_i_i216_5_2 1;
(*   %conv7.i.i218.5.2 = trunc i32 %shl.i.i217.5.2 to i8 *)
split tmp_v_shl_i_i217_5_2 v_conv7_i_i218_5_2 v_shl_i_i217_5_2 8;
vpc v_conv7_i_i218_5_2@uint8 v_conv7_i_i218_5_2@uint32;
(*   %conv.i.i206.6.2 = zext i8 %conv5.i.i215.5.2 to i32 *)
cast v_conv_i_i206_6_2@uint32 v_conv5_i_i215_5_2@uint8;
(*   %and.i.i207.6.2 = and i32 %conv.i.i206.6.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i207_6_2 v_conv_i_i206_6_2 (0x1)@uint32;
(*   %conv1.i.i208.6.2 = zext i8 %conv7.i.i218.5.2 to i32 *)
cast v_conv1_i_i208_6_2@uint32 v_conv7_i_i218_5_2@uint8;
(*   %mul.i.i209.6.2 = mul nsw i32 %and.i.i207.6.2, %conv1.i.i208.6.2 *)
mul v_mul_i_i209_6_2 v_and_i_i207_6_2 v_conv1_i_i208_6_2;
(*   %conv2.i.i210.6.2 = zext i8 %conv3.i.i212.5.2 to i32 *)
cast v_conv2_i_i210_6_2@uint32 v_conv3_i_i212_5_2@uint8;
(*   %xor.i.i211.6.2 = xor i32 %conv2.i.i210.6.2, %mul.i.i209.6.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i211_6_2 v_conv2_i_i210_6_2 v_mul_i_i209_6_2;
(*   %conv3.i.i212.6.2 = trunc i32 %xor.i.i211.6.2 to i8 *)
split tmp_v_xor_i_i211_6_2 v_conv3_i_i212_6_2 v_xor_i_i211_6_2 8;
vpc v_conv3_i_i212_6_2@uint8 v_conv3_i_i212_6_2@uint32;
(*   %conv4.i.i213.6.2 = zext i8 %conv5.i.i215.5.2 to i32 *)
cast v_conv4_i_i213_6_2@uint32 v_conv5_i_i215_5_2@uint8;
(*   %shr.i.i214.6.2 = ashr i32 %conv4.i.i213.6.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i214_6_2 tmp_to_be_used v_conv4_i_i213_6_2 1;
(*   %conv5.i.i215.6.2 = trunc i32 %shr.i.i214.6.2 to i8 *)
split tmp_v_shr_i_i214_6_2 v_conv5_i_i215_6_2 v_shr_i_i214_6_2 8;
vpc v_conv5_i_i215_6_2@uint8 v_conv5_i_i215_6_2@uint32;
(*   %conv6.i.i216.6.2 = zext i8 %conv7.i.i218.5.2 to i32 *)
cast v_conv6_i_i216_6_2@uint32 v_conv7_i_i218_5_2@uint8;
(*   %shl.i.i217.6.2 = shl i32 %conv6.i.i216.6.2, 1 *)
shls discard_76 v_shl_i_i217_6_2 v_conv6_i_i216_6_2 1;
(*   %conv7.i.i218.6.2 = trunc i32 %shl.i.i217.6.2 to i8 *)
split tmp_v_shl_i_i217_6_2 v_conv7_i_i218_6_2 v_shl_i_i217_6_2 8;
vpc v_conv7_i_i218_6_2@uint8 v_conv7_i_i218_6_2@uint32;
(*   %conv.i.i206.7.2 = zext i8 %conv5.i.i215.6.2 to i32 *)
cast v_conv_i_i206_7_2@uint32 v_conv5_i_i215_6_2@uint8;
(*   %and.i.i207.7.2 = and i32 %conv.i.i206.7.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i207_7_2 v_conv_i_i206_7_2 (0x1)@uint32;
(*   %conv1.i.i208.7.2 = zext i8 %conv7.i.i218.6.2 to i32 *)
cast v_conv1_i_i208_7_2@uint32 v_conv7_i_i218_6_2@uint8;
(*   %mul.i.i209.7.2 = mul nsw i32 %and.i.i207.7.2, %conv1.i.i208.7.2 *)
mul v_mul_i_i209_7_2 v_and_i_i207_7_2 v_conv1_i_i208_7_2;
(*   %conv2.i.i210.7.2 = zext i8 %conv3.i.i212.6.2 to i32 *)
cast v_conv2_i_i210_7_2@uint32 v_conv3_i_i212_6_2@uint8;
(*   %xor.i.i211.7.2 = xor i32 %conv2.i.i210.7.2, %mul.i.i209.7.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i211_7_2 v_conv2_i_i210_7_2 v_mul_i_i209_7_2;
(*   %conv3.i.i212.7.2 = trunc i32 %xor.i.i211.7.2 to i8 *)
split tmp_v_xor_i_i211_7_2 v_conv3_i_i212_7_2 v_xor_i_i211_7_2 8;
vpc v_conv3_i_i212_7_2@uint8 v_conv3_i_i212_7_2@uint32;
(*   %arrayidx6.i222.2 = getelementptr inbounds i8, i8* %add.ptr8, i64 2 *)
(*   store i8 %conv3.i.i212.7.2, i8* %arrayidx6.i222.2, align 1 *)
mov cc_14 v_conv3_i_i212_7_2;
(*   %22 = load i8, i8* %a, align 1 *)
mov v22 a_0;
(*   %arrayidx4.i202.3 = getelementptr inbounds i8, i8* %b, i64 3 *)
(*   %23 = load i8, i8* %arrayidx4.i202.3, align 1 *)
mov v23 b_3;
(*   %conv.i.i206.3214 = zext i8 %23 to i32 *)
cast v_conv_i_i206_3214@uint32 v23@uint8;
(*   %and.i.i207.3215 = and i32 %conv.i.i206.3214, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i207_3215 v_conv_i_i206_3214 (0x1)@uint32;
(*   %conv1.i.i208.3216 = zext i8 %22 to i32 *)
cast v_conv1_i_i208_3216@uint32 v22@uint8;
(*   %mul.i.i209.3217 = mul nsw i32 %and.i.i207.3215, %conv1.i.i208.3216 *)
mul v_mul_i_i209_3217 v_and_i_i207_3215 v_conv1_i_i208_3216;
(*   %conv3.i.i212.3218 = trunc i32 %mul.i.i209.3217 to i8 *)
split tmp_v_mul_i_i209_3217 v_conv3_i_i212_3218 v_mul_i_i209_3217 8;
vpc v_conv3_i_i212_3218@uint8 v_conv3_i_i212_3218@uint32;
(*   %conv4.i.i213.3219 = zext i8 %23 to i32 *)
cast v_conv4_i_i213_3219@uint32 v23@uint8;
(*   %shr.i.i214.3220 = ashr i32 %conv4.i.i213.3219, 1 *)
(* You may need to modify here *)
split v_shr_i_i214_3220 tmp_to_be_used v_conv4_i_i213_3219 1;
(*   %conv5.i.i215.3221 = trunc i32 %shr.i.i214.3220 to i8 *)
split tmp_v_shr_i_i214_3220 v_conv5_i_i215_3221 v_shr_i_i214_3220 8;
vpc v_conv5_i_i215_3221@uint8 v_conv5_i_i215_3221@uint32;
(*   %conv6.i.i216.3222 = zext i8 %22 to i32 *)
cast v_conv6_i_i216_3222@uint32 v22@uint8;
(*   %shl.i.i217.3223 = shl i32 %conv6.i.i216.3222, 1 *)
shls discard_77 v_shl_i_i217_3223 v_conv6_i_i216_3222 1;
(*   %conv7.i.i218.3224 = trunc i32 %shl.i.i217.3223 to i8 *)
split tmp_v_shl_i_i217_3223 v_conv7_i_i218_3224 v_shl_i_i217_3223 8;
vpc v_conv7_i_i218_3224@uint8 v_conv7_i_i218_3224@uint32;
(*   %conv.i.i206.1.3 = zext i8 %conv5.i.i215.3221 to i32 *)
cast v_conv_i_i206_1_3@uint32 v_conv5_i_i215_3221@uint8;
(*   %and.i.i207.1.3 = and i32 %conv.i.i206.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i207_1_3 v_conv_i_i206_1_3 (0x1)@uint32;
(*   %conv1.i.i208.1.3 = zext i8 %conv7.i.i218.3224 to i32 *)
cast v_conv1_i_i208_1_3@uint32 v_conv7_i_i218_3224@uint8;
(*   %mul.i.i209.1.3 = mul nsw i32 %and.i.i207.1.3, %conv1.i.i208.1.3 *)
mul v_mul_i_i209_1_3 v_and_i_i207_1_3 v_conv1_i_i208_1_3;
(*   %conv2.i.i210.1.3 = zext i8 %conv3.i.i212.3218 to i32 *)
cast v_conv2_i_i210_1_3@uint32 v_conv3_i_i212_3218@uint8;
(*   %xor.i.i211.1.3 = xor i32 %conv2.i.i210.1.3, %mul.i.i209.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i211_1_3 v_conv2_i_i210_1_3 v_mul_i_i209_1_3;
(*   %conv3.i.i212.1.3 = trunc i32 %xor.i.i211.1.3 to i8 *)
split tmp_v_xor_i_i211_1_3 v_conv3_i_i212_1_3 v_xor_i_i211_1_3 8;
vpc v_conv3_i_i212_1_3@uint8 v_conv3_i_i212_1_3@uint32;
(*   %conv4.i.i213.1.3 = zext i8 %conv5.i.i215.3221 to i32 *)
cast v_conv4_i_i213_1_3@uint32 v_conv5_i_i215_3221@uint8;
(*   %shr.i.i214.1.3 = ashr i32 %conv4.i.i213.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i214_1_3 tmp_to_be_used v_conv4_i_i213_1_3 1;
(*   %conv5.i.i215.1.3 = trunc i32 %shr.i.i214.1.3 to i8 *)
split tmp_v_shr_i_i214_1_3 v_conv5_i_i215_1_3 v_shr_i_i214_1_3 8;
vpc v_conv5_i_i215_1_3@uint8 v_conv5_i_i215_1_3@uint32;
(*   %conv6.i.i216.1.3 = zext i8 %conv7.i.i218.3224 to i32 *)
cast v_conv6_i_i216_1_3@uint32 v_conv7_i_i218_3224@uint8;
(*   %shl.i.i217.1.3 = shl i32 %conv6.i.i216.1.3, 1 *)
shls discard_78 v_shl_i_i217_1_3 v_conv6_i_i216_1_3 1;
(*   %conv7.i.i218.1.3 = trunc i32 %shl.i.i217.1.3 to i8 *)
split tmp_v_shl_i_i217_1_3 v_conv7_i_i218_1_3 v_shl_i_i217_1_3 8;
vpc v_conv7_i_i218_1_3@uint8 v_conv7_i_i218_1_3@uint32;
(*   %conv.i.i206.2.3 = zext i8 %conv5.i.i215.1.3 to i32 *)
cast v_conv_i_i206_2_3@uint32 v_conv5_i_i215_1_3@uint8;
(*   %and.i.i207.2.3 = and i32 %conv.i.i206.2.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i207_2_3 v_conv_i_i206_2_3 (0x1)@uint32;
(*   %conv1.i.i208.2.3 = zext i8 %conv7.i.i218.1.3 to i32 *)
cast v_conv1_i_i208_2_3@uint32 v_conv7_i_i218_1_3@uint8;
(*   %mul.i.i209.2.3 = mul nsw i32 %and.i.i207.2.3, %conv1.i.i208.2.3 *)
mul v_mul_i_i209_2_3 v_and_i_i207_2_3 v_conv1_i_i208_2_3;
(*   %conv2.i.i210.2.3 = zext i8 %conv3.i.i212.1.3 to i32 *)
cast v_conv2_i_i210_2_3@uint32 v_conv3_i_i212_1_3@uint8;
(*   %xor.i.i211.2.3 = xor i32 %conv2.i.i210.2.3, %mul.i.i209.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i211_2_3 v_conv2_i_i210_2_3 v_mul_i_i209_2_3;
(*   %conv3.i.i212.2.3 = trunc i32 %xor.i.i211.2.3 to i8 *)
split tmp_v_xor_i_i211_2_3 v_conv3_i_i212_2_3 v_xor_i_i211_2_3 8;
vpc v_conv3_i_i212_2_3@uint8 v_conv3_i_i212_2_3@uint32;
(*   %conv4.i.i213.2.3 = zext i8 %conv5.i.i215.1.3 to i32 *)
cast v_conv4_i_i213_2_3@uint32 v_conv5_i_i215_1_3@uint8;
(*   %shr.i.i214.2.3 = ashr i32 %conv4.i.i213.2.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i214_2_3 tmp_to_be_used v_conv4_i_i213_2_3 1;
(*   %conv5.i.i215.2.3 = trunc i32 %shr.i.i214.2.3 to i8 *)
split tmp_v_shr_i_i214_2_3 v_conv5_i_i215_2_3 v_shr_i_i214_2_3 8;
vpc v_conv5_i_i215_2_3@uint8 v_conv5_i_i215_2_3@uint32;
(*   %conv6.i.i216.2.3 = zext i8 %conv7.i.i218.1.3 to i32 *)
cast v_conv6_i_i216_2_3@uint32 v_conv7_i_i218_1_3@uint8;
(*   %shl.i.i217.2.3 = shl i32 %conv6.i.i216.2.3, 1 *)
shls discard_79 v_shl_i_i217_2_3 v_conv6_i_i216_2_3 1;
(*   %conv7.i.i218.2.3 = trunc i32 %shl.i.i217.2.3 to i8 *)
split tmp_v_shl_i_i217_2_3 v_conv7_i_i218_2_3 v_shl_i_i217_2_3 8;
vpc v_conv7_i_i218_2_3@uint8 v_conv7_i_i218_2_3@uint32;
(*   %conv.i.i206.3.3 = zext i8 %conv5.i.i215.2.3 to i32 *)
cast v_conv_i_i206_3_3@uint32 v_conv5_i_i215_2_3@uint8;
(*   %and.i.i207.3.3 = and i32 %conv.i.i206.3.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i207_3_3 v_conv_i_i206_3_3 (0x1)@uint32;
(*   %conv1.i.i208.3.3 = zext i8 %conv7.i.i218.2.3 to i32 *)
cast v_conv1_i_i208_3_3@uint32 v_conv7_i_i218_2_3@uint8;
(*   %mul.i.i209.3.3 = mul nsw i32 %and.i.i207.3.3, %conv1.i.i208.3.3 *)
mul v_mul_i_i209_3_3 v_and_i_i207_3_3 v_conv1_i_i208_3_3;
(*   %conv2.i.i210.3.3 = zext i8 %conv3.i.i212.2.3 to i32 *)
cast v_conv2_i_i210_3_3@uint32 v_conv3_i_i212_2_3@uint8;
(*   %xor.i.i211.3.3 = xor i32 %conv2.i.i210.3.3, %mul.i.i209.3.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i211_3_3 v_conv2_i_i210_3_3 v_mul_i_i209_3_3;
(*   %conv3.i.i212.3.3 = trunc i32 %xor.i.i211.3.3 to i8 *)
split tmp_v_xor_i_i211_3_3 v_conv3_i_i212_3_3 v_xor_i_i211_3_3 8;
vpc v_conv3_i_i212_3_3@uint8 v_conv3_i_i212_3_3@uint32;
(*   %conv4.i.i213.3.3 = zext i8 %conv5.i.i215.2.3 to i32 *)
cast v_conv4_i_i213_3_3@uint32 v_conv5_i_i215_2_3@uint8;
(*   %shr.i.i214.3.3 = ashr i32 %conv4.i.i213.3.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i214_3_3 tmp_to_be_used v_conv4_i_i213_3_3 1;
(*   %conv5.i.i215.3.3 = trunc i32 %shr.i.i214.3.3 to i8 *)
split tmp_v_shr_i_i214_3_3 v_conv5_i_i215_3_3 v_shr_i_i214_3_3 8;
vpc v_conv5_i_i215_3_3@uint8 v_conv5_i_i215_3_3@uint32;
(*   %conv6.i.i216.3.3 = zext i8 %conv7.i.i218.2.3 to i32 *)
cast v_conv6_i_i216_3_3@uint32 v_conv7_i_i218_2_3@uint8;
(*   %shl.i.i217.3.3 = shl i32 %conv6.i.i216.3.3, 1 *)
shls discard_80 v_shl_i_i217_3_3 v_conv6_i_i216_3_3 1;
(*   %conv7.i.i218.3.3 = trunc i32 %shl.i.i217.3.3 to i8 *)
split tmp_v_shl_i_i217_3_3 v_conv7_i_i218_3_3 v_shl_i_i217_3_3 8;
vpc v_conv7_i_i218_3_3@uint8 v_conv7_i_i218_3_3@uint32;
(*   %conv.i.i206.4.3 = zext i8 %conv5.i.i215.3.3 to i32 *)
cast v_conv_i_i206_4_3@uint32 v_conv5_i_i215_3_3@uint8;
(*   %and.i.i207.4.3 = and i32 %conv.i.i206.4.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i207_4_3 v_conv_i_i206_4_3 (0x1)@uint32;
(*   %conv1.i.i208.4.3 = zext i8 %conv7.i.i218.3.3 to i32 *)
cast v_conv1_i_i208_4_3@uint32 v_conv7_i_i218_3_3@uint8;
(*   %mul.i.i209.4.3 = mul nsw i32 %and.i.i207.4.3, %conv1.i.i208.4.3 *)
mul v_mul_i_i209_4_3 v_and_i_i207_4_3 v_conv1_i_i208_4_3;
(*   %conv2.i.i210.4.3 = zext i8 %conv3.i.i212.3.3 to i32 *)
cast v_conv2_i_i210_4_3@uint32 v_conv3_i_i212_3_3@uint8;
(*   %xor.i.i211.4.3 = xor i32 %conv2.i.i210.4.3, %mul.i.i209.4.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i211_4_3 v_conv2_i_i210_4_3 v_mul_i_i209_4_3;
(*   %conv3.i.i212.4.3 = trunc i32 %xor.i.i211.4.3 to i8 *)
split tmp_v_xor_i_i211_4_3 v_conv3_i_i212_4_3 v_xor_i_i211_4_3 8;
vpc v_conv3_i_i212_4_3@uint8 v_conv3_i_i212_4_3@uint32;
(*   %conv4.i.i213.4.3 = zext i8 %conv5.i.i215.3.3 to i32 *)
cast v_conv4_i_i213_4_3@uint32 v_conv5_i_i215_3_3@uint8;
(*   %shr.i.i214.4.3 = ashr i32 %conv4.i.i213.4.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i214_4_3 tmp_to_be_used v_conv4_i_i213_4_3 1;
(*   %conv5.i.i215.4.3 = trunc i32 %shr.i.i214.4.3 to i8 *)
split tmp_v_shr_i_i214_4_3 v_conv5_i_i215_4_3 v_shr_i_i214_4_3 8;
vpc v_conv5_i_i215_4_3@uint8 v_conv5_i_i215_4_3@uint32;
(*   %conv6.i.i216.4.3 = zext i8 %conv7.i.i218.3.3 to i32 *)
cast v_conv6_i_i216_4_3@uint32 v_conv7_i_i218_3_3@uint8;
(*   %shl.i.i217.4.3 = shl i32 %conv6.i.i216.4.3, 1 *)
shls discard_81 v_shl_i_i217_4_3 v_conv6_i_i216_4_3 1;
(*   %conv7.i.i218.4.3 = trunc i32 %shl.i.i217.4.3 to i8 *)
split tmp_v_shl_i_i217_4_3 v_conv7_i_i218_4_3 v_shl_i_i217_4_3 8;
vpc v_conv7_i_i218_4_3@uint8 v_conv7_i_i218_4_3@uint32;
(*   %conv.i.i206.5.3 = zext i8 %conv5.i.i215.4.3 to i32 *)
cast v_conv_i_i206_5_3@uint32 v_conv5_i_i215_4_3@uint8;
(*   %and.i.i207.5.3 = and i32 %conv.i.i206.5.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i207_5_3 v_conv_i_i206_5_3 (0x1)@uint32;
(*   %conv1.i.i208.5.3 = zext i8 %conv7.i.i218.4.3 to i32 *)
cast v_conv1_i_i208_5_3@uint32 v_conv7_i_i218_4_3@uint8;
(*   %mul.i.i209.5.3 = mul nsw i32 %and.i.i207.5.3, %conv1.i.i208.5.3 *)
mul v_mul_i_i209_5_3 v_and_i_i207_5_3 v_conv1_i_i208_5_3;
(*   %conv2.i.i210.5.3 = zext i8 %conv3.i.i212.4.3 to i32 *)
cast v_conv2_i_i210_5_3@uint32 v_conv3_i_i212_4_3@uint8;
(*   %xor.i.i211.5.3 = xor i32 %conv2.i.i210.5.3, %mul.i.i209.5.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i211_5_3 v_conv2_i_i210_5_3 v_mul_i_i209_5_3;
(*   %conv3.i.i212.5.3 = trunc i32 %xor.i.i211.5.3 to i8 *)
split tmp_v_xor_i_i211_5_3 v_conv3_i_i212_5_3 v_xor_i_i211_5_3 8;
vpc v_conv3_i_i212_5_3@uint8 v_conv3_i_i212_5_3@uint32;
(*   %conv4.i.i213.5.3 = zext i8 %conv5.i.i215.4.3 to i32 *)
cast v_conv4_i_i213_5_3@uint32 v_conv5_i_i215_4_3@uint8;
(*   %shr.i.i214.5.3 = ashr i32 %conv4.i.i213.5.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i214_5_3 tmp_to_be_used v_conv4_i_i213_5_3 1;
(*   %conv5.i.i215.5.3 = trunc i32 %shr.i.i214.5.3 to i8 *)
split tmp_v_shr_i_i214_5_3 v_conv5_i_i215_5_3 v_shr_i_i214_5_3 8;
vpc v_conv5_i_i215_5_3@uint8 v_conv5_i_i215_5_3@uint32;
(*   %conv6.i.i216.5.3 = zext i8 %conv7.i.i218.4.3 to i32 *)
cast v_conv6_i_i216_5_3@uint32 v_conv7_i_i218_4_3@uint8;
(*   %shl.i.i217.5.3 = shl i32 %conv6.i.i216.5.3, 1 *)
shls discard_82 v_shl_i_i217_5_3 v_conv6_i_i216_5_3 1;
(*   %conv7.i.i218.5.3 = trunc i32 %shl.i.i217.5.3 to i8 *)
split tmp_v_shl_i_i217_5_3 v_conv7_i_i218_5_3 v_shl_i_i217_5_3 8;
vpc v_conv7_i_i218_5_3@uint8 v_conv7_i_i218_5_3@uint32;
(*   %conv.i.i206.6.3 = zext i8 %conv5.i.i215.5.3 to i32 *)
cast v_conv_i_i206_6_3@uint32 v_conv5_i_i215_5_3@uint8;
(*   %and.i.i207.6.3 = and i32 %conv.i.i206.6.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i207_6_3 v_conv_i_i206_6_3 (0x1)@uint32;
(*   %conv1.i.i208.6.3 = zext i8 %conv7.i.i218.5.3 to i32 *)
cast v_conv1_i_i208_6_3@uint32 v_conv7_i_i218_5_3@uint8;
(*   %mul.i.i209.6.3 = mul nsw i32 %and.i.i207.6.3, %conv1.i.i208.6.3 *)
mul v_mul_i_i209_6_3 v_and_i_i207_6_3 v_conv1_i_i208_6_3;
(*   %conv2.i.i210.6.3 = zext i8 %conv3.i.i212.5.3 to i32 *)
cast v_conv2_i_i210_6_3@uint32 v_conv3_i_i212_5_3@uint8;
(*   %xor.i.i211.6.3 = xor i32 %conv2.i.i210.6.3, %mul.i.i209.6.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i211_6_3 v_conv2_i_i210_6_3 v_mul_i_i209_6_3;
(*   %conv3.i.i212.6.3 = trunc i32 %xor.i.i211.6.3 to i8 *)
split tmp_v_xor_i_i211_6_3 v_conv3_i_i212_6_3 v_xor_i_i211_6_3 8;
vpc v_conv3_i_i212_6_3@uint8 v_conv3_i_i212_6_3@uint32;
(*   %conv4.i.i213.6.3 = zext i8 %conv5.i.i215.5.3 to i32 *)
cast v_conv4_i_i213_6_3@uint32 v_conv5_i_i215_5_3@uint8;
(*   %shr.i.i214.6.3 = ashr i32 %conv4.i.i213.6.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i214_6_3 tmp_to_be_used v_conv4_i_i213_6_3 1;
(*   %conv5.i.i215.6.3 = trunc i32 %shr.i.i214.6.3 to i8 *)
split tmp_v_shr_i_i214_6_3 v_conv5_i_i215_6_3 v_shr_i_i214_6_3 8;
vpc v_conv5_i_i215_6_3@uint8 v_conv5_i_i215_6_3@uint32;
(*   %conv6.i.i216.6.3 = zext i8 %conv7.i.i218.5.3 to i32 *)
cast v_conv6_i_i216_6_3@uint32 v_conv7_i_i218_5_3@uint8;
(*   %shl.i.i217.6.3 = shl i32 %conv6.i.i216.6.3, 1 *)
shls discard_83 v_shl_i_i217_6_3 v_conv6_i_i216_6_3 1;
(*   %conv7.i.i218.6.3 = trunc i32 %shl.i.i217.6.3 to i8 *)
split tmp_v_shl_i_i217_6_3 v_conv7_i_i218_6_3 v_shl_i_i217_6_3 8;
vpc v_conv7_i_i218_6_3@uint8 v_conv7_i_i218_6_3@uint32;
(*   %conv.i.i206.7.3 = zext i8 %conv5.i.i215.6.3 to i32 *)
cast v_conv_i_i206_7_3@uint32 v_conv5_i_i215_6_3@uint8;
(*   %and.i.i207.7.3 = and i32 %conv.i.i206.7.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i207_7_3 v_conv_i_i206_7_3 (0x1)@uint32;
(*   %conv1.i.i208.7.3 = zext i8 %conv7.i.i218.6.3 to i32 *)
cast v_conv1_i_i208_7_3@uint32 v_conv7_i_i218_6_3@uint8;
(*   %mul.i.i209.7.3 = mul nsw i32 %and.i.i207.7.3, %conv1.i.i208.7.3 *)
mul v_mul_i_i209_7_3 v_and_i_i207_7_3 v_conv1_i_i208_7_3;
(*   %conv2.i.i210.7.3 = zext i8 %conv3.i.i212.6.3 to i32 *)
cast v_conv2_i_i210_7_3@uint32 v_conv3_i_i212_6_3@uint8;
(*   %xor.i.i211.7.3 = xor i32 %conv2.i.i210.7.3, %mul.i.i209.7.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i211_7_3 v_conv2_i_i210_7_3 v_mul_i_i209_7_3;
(*   %conv3.i.i212.7.3 = trunc i32 %xor.i.i211.7.3 to i8 *)
split tmp_v_xor_i_i211_7_3 v_conv3_i_i212_7_3 v_xor_i_i211_7_3 8;
vpc v_conv3_i_i212_7_3@uint8 v_conv3_i_i212_7_3@uint32;
(*   %arrayidx6.i222.3 = getelementptr inbounds i8, i8* %add.ptr8, i64 3 *)
(*   store i8 %conv3.i.i212.7.3, i8* %arrayidx6.i222.3, align 1 *)
mov cc_15 v_conv3_i_i212_7_3;
(*   %arraydecay9 = getelementptr inbounds [32 x i8], [32 x i8]* %cc, i64 0, i64 0 *)
(*   %add.ptr10 = getelementptr inbounds i8, i8* %arraydecay9, i64 16 *)
(*   %24 = load i8, i8* %a, align 1 *)
mov v24 a_0;
(*   %arrayidx4.i384 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %25 = load i8, i8* %arrayidx4.i384, align 1 *)
mov v25 b_2;
(*   %conv.i.i388 = zext i8 %25 to i32 *)
cast v_conv_i_i388@uint32 v25@uint8;
(*   %and.i.i389 = and i32 %conv.i.i388, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i389 v_conv_i_i388 (0x1)@uint32;
(*   %conv1.i.i390 = zext i8 %24 to i32 *)
cast v_conv1_i_i390@uint32 v24@uint8;
(*   %mul.i.i391 = mul nsw i32 %and.i.i389, %conv1.i.i390 *)
mul v_mul_i_i391 v_and_i_i389 v_conv1_i_i390;
(*   %conv3.i.i394 = trunc i32 %mul.i.i391 to i8 *)
split tmp_v_mul_i_i391 v_conv3_i_i394 v_mul_i_i391 8;
vpc v_conv3_i_i394@uint8 v_conv3_i_i394@uint32;
(*   %conv4.i.i395 = zext i8 %25 to i32 *)
cast v_conv4_i_i395@uint32 v25@uint8;
(*   %shr.i.i396 = ashr i32 %conv4.i.i395, 1 *)
(* You may need to modify here *)
split v_shr_i_i396 tmp_to_be_used v_conv4_i_i395 1;
(*   %conv5.i.i397 = trunc i32 %shr.i.i396 to i8 *)
split tmp_v_shr_i_i396 v_conv5_i_i397 v_shr_i_i396 8;
vpc v_conv5_i_i397@uint8 v_conv5_i_i397@uint32;
(*   %conv6.i.i398 = zext i8 %24 to i32 *)
cast v_conv6_i_i398@uint32 v24@uint8;
(*   %shl.i.i399 = shl i32 %conv6.i.i398, 1 *)
shls discard_84 v_shl_i_i399 v_conv6_i_i398 1;
(*   %conv7.i.i400 = trunc i32 %shl.i.i399 to i8 *)
split tmp_v_shl_i_i399 v_conv7_i_i400 v_shl_i_i399 8;
vpc v_conv7_i_i400@uint8 v_conv7_i_i400@uint32;
(*   %conv.i.i388.1 = zext i8 %conv5.i.i397 to i32 *)
cast v_conv_i_i388_1@uint32 v_conv5_i_i397@uint8;
(*   %and.i.i389.1 = and i32 %conv.i.i388.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i389_1 v_conv_i_i388_1 (0x1)@uint32;
(*   %conv1.i.i390.1 = zext i8 %conv7.i.i400 to i32 *)
cast v_conv1_i_i390_1@uint32 v_conv7_i_i400@uint8;
(*   %mul.i.i391.1 = mul nsw i32 %and.i.i389.1, %conv1.i.i390.1 *)
mul v_mul_i_i391_1 v_and_i_i389_1 v_conv1_i_i390_1;
(*   %conv2.i.i392.1 = zext i8 %conv3.i.i394 to i32 *)
cast v_conv2_i_i392_1@uint32 v_conv3_i_i394@uint8;
(*   %xor.i.i393.1 = xor i32 %conv2.i.i392.1, %mul.i.i391.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i393_1 v_conv2_i_i392_1 v_mul_i_i391_1;
(*   %conv3.i.i394.1 = trunc i32 %xor.i.i393.1 to i8 *)
split tmp_v_xor_i_i393_1 v_conv3_i_i394_1 v_xor_i_i393_1 8;
vpc v_conv3_i_i394_1@uint8 v_conv3_i_i394_1@uint32;
(*   %conv4.i.i395.1 = zext i8 %conv5.i.i397 to i32 *)
cast v_conv4_i_i395_1@uint32 v_conv5_i_i397@uint8;
(*   %shr.i.i396.1 = ashr i32 %conv4.i.i395.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i396_1 tmp_to_be_used v_conv4_i_i395_1 1;
(*   %conv5.i.i397.1 = trunc i32 %shr.i.i396.1 to i8 *)
split tmp_v_shr_i_i396_1 v_conv5_i_i397_1 v_shr_i_i396_1 8;
vpc v_conv5_i_i397_1@uint8 v_conv5_i_i397_1@uint32;
(*   %conv6.i.i398.1 = zext i8 %conv7.i.i400 to i32 *)
cast v_conv6_i_i398_1@uint32 v_conv7_i_i400@uint8;
(*   %shl.i.i399.1 = shl i32 %conv6.i.i398.1, 1 *)
shls discard_85 v_shl_i_i399_1 v_conv6_i_i398_1 1;
(*   %conv7.i.i400.1 = trunc i32 %shl.i.i399.1 to i8 *)
split tmp_v_shl_i_i399_1 v_conv7_i_i400_1 v_shl_i_i399_1 8;
vpc v_conv7_i_i400_1@uint8 v_conv7_i_i400_1@uint32;
(*   %conv.i.i388.2 = zext i8 %conv5.i.i397.1 to i32 *)
cast v_conv_i_i388_2@uint32 v_conv5_i_i397_1@uint8;
(*   %and.i.i389.2 = and i32 %conv.i.i388.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i389_2 v_conv_i_i388_2 (0x1)@uint32;
(*   %conv1.i.i390.2 = zext i8 %conv7.i.i400.1 to i32 *)
cast v_conv1_i_i390_2@uint32 v_conv7_i_i400_1@uint8;
(*   %mul.i.i391.2 = mul nsw i32 %and.i.i389.2, %conv1.i.i390.2 *)
mul v_mul_i_i391_2 v_and_i_i389_2 v_conv1_i_i390_2;
(*   %conv2.i.i392.2 = zext i8 %conv3.i.i394.1 to i32 *)
cast v_conv2_i_i392_2@uint32 v_conv3_i_i394_1@uint8;
(*   %xor.i.i393.2 = xor i32 %conv2.i.i392.2, %mul.i.i391.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i393_2 v_conv2_i_i392_2 v_mul_i_i391_2;
(*   %conv3.i.i394.2 = trunc i32 %xor.i.i393.2 to i8 *)
split tmp_v_xor_i_i393_2 v_conv3_i_i394_2 v_xor_i_i393_2 8;
vpc v_conv3_i_i394_2@uint8 v_conv3_i_i394_2@uint32;
(*   %conv4.i.i395.2 = zext i8 %conv5.i.i397.1 to i32 *)
cast v_conv4_i_i395_2@uint32 v_conv5_i_i397_1@uint8;
(*   %shr.i.i396.2 = ashr i32 %conv4.i.i395.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i396_2 tmp_to_be_used v_conv4_i_i395_2 1;
(*   %conv5.i.i397.2 = trunc i32 %shr.i.i396.2 to i8 *)
split tmp_v_shr_i_i396_2 v_conv5_i_i397_2 v_shr_i_i396_2 8;
vpc v_conv5_i_i397_2@uint8 v_conv5_i_i397_2@uint32;
(*   %conv6.i.i398.2 = zext i8 %conv7.i.i400.1 to i32 *)
cast v_conv6_i_i398_2@uint32 v_conv7_i_i400_1@uint8;
(*   %shl.i.i399.2 = shl i32 %conv6.i.i398.2, 1 *)
shls discard_86 v_shl_i_i399_2 v_conv6_i_i398_2 1;
(*   %conv7.i.i400.2 = trunc i32 %shl.i.i399.2 to i8 *)
split tmp_v_shl_i_i399_2 v_conv7_i_i400_2 v_shl_i_i399_2 8;
vpc v_conv7_i_i400_2@uint8 v_conv7_i_i400_2@uint32;
(*   %conv.i.i388.3 = zext i8 %conv5.i.i397.2 to i32 *)
cast v_conv_i_i388_3@uint32 v_conv5_i_i397_2@uint8;
(*   %and.i.i389.3 = and i32 %conv.i.i388.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i389_3 v_conv_i_i388_3 (0x1)@uint32;
(*   %conv1.i.i390.3 = zext i8 %conv7.i.i400.2 to i32 *)
cast v_conv1_i_i390_3@uint32 v_conv7_i_i400_2@uint8;
(*   %mul.i.i391.3 = mul nsw i32 %and.i.i389.3, %conv1.i.i390.3 *)
mul v_mul_i_i391_3 v_and_i_i389_3 v_conv1_i_i390_3;
(*   %conv2.i.i392.3 = zext i8 %conv3.i.i394.2 to i32 *)
cast v_conv2_i_i392_3@uint32 v_conv3_i_i394_2@uint8;
(*   %xor.i.i393.3 = xor i32 %conv2.i.i392.3, %mul.i.i391.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i393_3 v_conv2_i_i392_3 v_mul_i_i391_3;
(*   %conv3.i.i394.3 = trunc i32 %xor.i.i393.3 to i8 *)
split tmp_v_xor_i_i393_3 v_conv3_i_i394_3 v_xor_i_i393_3 8;
vpc v_conv3_i_i394_3@uint8 v_conv3_i_i394_3@uint32;
(*   %conv4.i.i395.3 = zext i8 %conv5.i.i397.2 to i32 *)
cast v_conv4_i_i395_3@uint32 v_conv5_i_i397_2@uint8;
(*   %shr.i.i396.3 = ashr i32 %conv4.i.i395.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i396_3 tmp_to_be_used v_conv4_i_i395_3 1;
(*   %conv5.i.i397.3 = trunc i32 %shr.i.i396.3 to i8 *)
split tmp_v_shr_i_i396_3 v_conv5_i_i397_3 v_shr_i_i396_3 8;
vpc v_conv5_i_i397_3@uint8 v_conv5_i_i397_3@uint32;
(*   %conv6.i.i398.3 = zext i8 %conv7.i.i400.2 to i32 *)
cast v_conv6_i_i398_3@uint32 v_conv7_i_i400_2@uint8;
(*   %shl.i.i399.3 = shl i32 %conv6.i.i398.3, 1 *)
shls discard_87 v_shl_i_i399_3 v_conv6_i_i398_3 1;
(*   %conv7.i.i400.3 = trunc i32 %shl.i.i399.3 to i8 *)
split tmp_v_shl_i_i399_3 v_conv7_i_i400_3 v_shl_i_i399_3 8;
vpc v_conv7_i_i400_3@uint8 v_conv7_i_i400_3@uint32;
(*   %conv.i.i388.4 = zext i8 %conv5.i.i397.3 to i32 *)
cast v_conv_i_i388_4@uint32 v_conv5_i_i397_3@uint8;
(*   %and.i.i389.4 = and i32 %conv.i.i388.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i389_4 v_conv_i_i388_4 (0x1)@uint32;
(*   %conv1.i.i390.4 = zext i8 %conv7.i.i400.3 to i32 *)
cast v_conv1_i_i390_4@uint32 v_conv7_i_i400_3@uint8;
(*   %mul.i.i391.4 = mul nsw i32 %and.i.i389.4, %conv1.i.i390.4 *)
mul v_mul_i_i391_4 v_and_i_i389_4 v_conv1_i_i390_4;
(*   %conv2.i.i392.4 = zext i8 %conv3.i.i394.3 to i32 *)
cast v_conv2_i_i392_4@uint32 v_conv3_i_i394_3@uint8;
(*   %xor.i.i393.4 = xor i32 %conv2.i.i392.4, %mul.i.i391.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i393_4 v_conv2_i_i392_4 v_mul_i_i391_4;
(*   %conv3.i.i394.4 = trunc i32 %xor.i.i393.4 to i8 *)
split tmp_v_xor_i_i393_4 v_conv3_i_i394_4 v_xor_i_i393_4 8;
vpc v_conv3_i_i394_4@uint8 v_conv3_i_i394_4@uint32;
(*   %conv4.i.i395.4 = zext i8 %conv5.i.i397.3 to i32 *)
cast v_conv4_i_i395_4@uint32 v_conv5_i_i397_3@uint8;
(*   %shr.i.i396.4 = ashr i32 %conv4.i.i395.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i396_4 tmp_to_be_used v_conv4_i_i395_4 1;
(*   %conv5.i.i397.4 = trunc i32 %shr.i.i396.4 to i8 *)
split tmp_v_shr_i_i396_4 v_conv5_i_i397_4 v_shr_i_i396_4 8;
vpc v_conv5_i_i397_4@uint8 v_conv5_i_i397_4@uint32;
(*   %conv6.i.i398.4 = zext i8 %conv7.i.i400.3 to i32 *)
cast v_conv6_i_i398_4@uint32 v_conv7_i_i400_3@uint8;
(*   %shl.i.i399.4 = shl i32 %conv6.i.i398.4, 1 *)
shls discard_88 v_shl_i_i399_4 v_conv6_i_i398_4 1;
(*   %conv7.i.i400.4 = trunc i32 %shl.i.i399.4 to i8 *)
split tmp_v_shl_i_i399_4 v_conv7_i_i400_4 v_shl_i_i399_4 8;
vpc v_conv7_i_i400_4@uint8 v_conv7_i_i400_4@uint32;
(*   %conv.i.i388.5 = zext i8 %conv5.i.i397.4 to i32 *)
cast v_conv_i_i388_5@uint32 v_conv5_i_i397_4@uint8;
(*   %and.i.i389.5 = and i32 %conv.i.i388.5, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i389_5 v_conv_i_i388_5 (0x1)@uint32;
(*   %conv1.i.i390.5 = zext i8 %conv7.i.i400.4 to i32 *)
cast v_conv1_i_i390_5@uint32 v_conv7_i_i400_4@uint8;
(*   %mul.i.i391.5 = mul nsw i32 %and.i.i389.5, %conv1.i.i390.5 *)
mul v_mul_i_i391_5 v_and_i_i389_5 v_conv1_i_i390_5;
(*   %conv2.i.i392.5 = zext i8 %conv3.i.i394.4 to i32 *)
cast v_conv2_i_i392_5@uint32 v_conv3_i_i394_4@uint8;
(*   %xor.i.i393.5 = xor i32 %conv2.i.i392.5, %mul.i.i391.5 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i393_5 v_conv2_i_i392_5 v_mul_i_i391_5;
(*   %conv3.i.i394.5 = trunc i32 %xor.i.i393.5 to i8 *)
split tmp_v_xor_i_i393_5 v_conv3_i_i394_5 v_xor_i_i393_5 8;
vpc v_conv3_i_i394_5@uint8 v_conv3_i_i394_5@uint32;
(*   %conv4.i.i395.5 = zext i8 %conv5.i.i397.4 to i32 *)
cast v_conv4_i_i395_5@uint32 v_conv5_i_i397_4@uint8;
(*   %shr.i.i396.5 = ashr i32 %conv4.i.i395.5, 1 *)
(* You may need to modify here *)
split v_shr_i_i396_5 tmp_to_be_used v_conv4_i_i395_5 1;
(*   %conv5.i.i397.5 = trunc i32 %shr.i.i396.5 to i8 *)
split tmp_v_shr_i_i396_5 v_conv5_i_i397_5 v_shr_i_i396_5 8;
vpc v_conv5_i_i397_5@uint8 v_conv5_i_i397_5@uint32;
(*   %conv6.i.i398.5 = zext i8 %conv7.i.i400.4 to i32 *)
cast v_conv6_i_i398_5@uint32 v_conv7_i_i400_4@uint8;
(*   %shl.i.i399.5 = shl i32 %conv6.i.i398.5, 1 *)
shls discard_89 v_shl_i_i399_5 v_conv6_i_i398_5 1;
(*   %conv7.i.i400.5 = trunc i32 %shl.i.i399.5 to i8 *)
split tmp_v_shl_i_i399_5 v_conv7_i_i400_5 v_shl_i_i399_5 8;
vpc v_conv7_i_i400_5@uint8 v_conv7_i_i400_5@uint32;
(*   %conv.i.i388.6 = zext i8 %conv5.i.i397.5 to i32 *)
cast v_conv_i_i388_6@uint32 v_conv5_i_i397_5@uint8;
(*   %and.i.i389.6 = and i32 %conv.i.i388.6, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i389_6 v_conv_i_i388_6 (0x1)@uint32;
(*   %conv1.i.i390.6 = zext i8 %conv7.i.i400.5 to i32 *)
cast v_conv1_i_i390_6@uint32 v_conv7_i_i400_5@uint8;
(*   %mul.i.i391.6 = mul nsw i32 %and.i.i389.6, %conv1.i.i390.6 *)
mul v_mul_i_i391_6 v_and_i_i389_6 v_conv1_i_i390_6;
(*   %conv2.i.i392.6 = zext i8 %conv3.i.i394.5 to i32 *)
cast v_conv2_i_i392_6@uint32 v_conv3_i_i394_5@uint8;
(*   %xor.i.i393.6 = xor i32 %conv2.i.i392.6, %mul.i.i391.6 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i393_6 v_conv2_i_i392_6 v_mul_i_i391_6;
(*   %conv3.i.i394.6 = trunc i32 %xor.i.i393.6 to i8 *)
split tmp_v_xor_i_i393_6 v_conv3_i_i394_6 v_xor_i_i393_6 8;
vpc v_conv3_i_i394_6@uint8 v_conv3_i_i394_6@uint32;
(*   %conv4.i.i395.6 = zext i8 %conv5.i.i397.5 to i32 *)
cast v_conv4_i_i395_6@uint32 v_conv5_i_i397_5@uint8;
(*   %shr.i.i396.6 = ashr i32 %conv4.i.i395.6, 1 *)
(* You may need to modify here *)
split v_shr_i_i396_6 tmp_to_be_used v_conv4_i_i395_6 1;
(*   %conv5.i.i397.6 = trunc i32 %shr.i.i396.6 to i8 *)
split tmp_v_shr_i_i396_6 v_conv5_i_i397_6 v_shr_i_i396_6 8;
vpc v_conv5_i_i397_6@uint8 v_conv5_i_i397_6@uint32;
(*   %conv6.i.i398.6 = zext i8 %conv7.i.i400.5 to i32 *)
cast v_conv6_i_i398_6@uint32 v_conv7_i_i400_5@uint8;
(*   %shl.i.i399.6 = shl i32 %conv6.i.i398.6, 1 *)
shls discard_90 v_shl_i_i399_6 v_conv6_i_i398_6 1;
(*   %conv7.i.i400.6 = trunc i32 %shl.i.i399.6 to i8 *)
split tmp_v_shl_i_i399_6 v_conv7_i_i400_6 v_shl_i_i399_6 8;
vpc v_conv7_i_i400_6@uint8 v_conv7_i_i400_6@uint32;
(*   %conv.i.i388.7 = zext i8 %conv5.i.i397.6 to i32 *)
cast v_conv_i_i388_7@uint32 v_conv5_i_i397_6@uint8;
(*   %and.i.i389.7 = and i32 %conv.i.i388.7, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i389_7 v_conv_i_i388_7 (0x1)@uint32;
(*   %conv1.i.i390.7 = zext i8 %conv7.i.i400.6 to i32 *)
cast v_conv1_i_i390_7@uint32 v_conv7_i_i400_6@uint8;
(*   %mul.i.i391.7 = mul nsw i32 %and.i.i389.7, %conv1.i.i390.7 *)
mul v_mul_i_i391_7 v_and_i_i389_7 v_conv1_i_i390_7;
(*   %conv2.i.i392.7 = zext i8 %conv3.i.i394.6 to i32 *)
cast v_conv2_i_i392_7@uint32 v_conv3_i_i394_6@uint8;
(*   %xor.i.i393.7 = xor i32 %conv2.i.i392.7, %mul.i.i391.7 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i393_7 v_conv2_i_i392_7 v_mul_i_i391_7;
(*   %conv3.i.i394.7 = trunc i32 %xor.i.i393.7 to i8 *)
split tmp_v_xor_i_i393_7 v_conv3_i_i394_7 v_xor_i_i393_7 8;
vpc v_conv3_i_i394_7@uint8 v_conv3_i_i394_7@uint32;
(*   store i8 %conv3.i.i394.7, i8* %add.ptr10, align 1 *)
mov cc_16 v_conv3_i_i394_7;
(*   %arrayidx.i380.1 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %26 = load i8, i8* %arrayidx.i380.1, align 1 *)
mov v26 a_1;
(*   %arrayidx4.i384.1 = getelementptr inbounds i8, i8* %b, i64 3 *)
(*   %27 = load i8, i8* %arrayidx4.i384.1, align 1 *)
mov v27 b_3;
(*   %conv.i.i388.1126 = zext i8 %27 to i32 *)
cast v_conv_i_i388_1126@uint32 v27@uint8;
(*   %and.i.i389.1127 = and i32 %conv.i.i388.1126, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i389_1127 v_conv_i_i388_1126 (0x1)@uint32;
(*   %conv1.i.i390.1128 = zext i8 %26 to i32 *)
cast v_conv1_i_i390_1128@uint32 v26@uint8;
(*   %mul.i.i391.1129 = mul nsw i32 %and.i.i389.1127, %conv1.i.i390.1128 *)
mul v_mul_i_i391_1129 v_and_i_i389_1127 v_conv1_i_i390_1128;
(*   %conv3.i.i394.1130 = trunc i32 %mul.i.i391.1129 to i8 *)
split tmp_v_mul_i_i391_1129 v_conv3_i_i394_1130 v_mul_i_i391_1129 8;
vpc v_conv3_i_i394_1130@uint8 v_conv3_i_i394_1130@uint32;
(*   %conv4.i.i395.1131 = zext i8 %27 to i32 *)
cast v_conv4_i_i395_1131@uint32 v27@uint8;
(*   %shr.i.i396.1132 = ashr i32 %conv4.i.i395.1131, 1 *)
(* You may need to modify here *)
split v_shr_i_i396_1132 tmp_to_be_used v_conv4_i_i395_1131 1;
(*   %conv5.i.i397.1133 = trunc i32 %shr.i.i396.1132 to i8 *)
split tmp_v_shr_i_i396_1132 v_conv5_i_i397_1133 v_shr_i_i396_1132 8;
vpc v_conv5_i_i397_1133@uint8 v_conv5_i_i397_1133@uint32;
(*   %conv6.i.i398.1134 = zext i8 %26 to i32 *)
cast v_conv6_i_i398_1134@uint32 v26@uint8;
(*   %shl.i.i399.1135 = shl i32 %conv6.i.i398.1134, 1 *)
shls discard_91 v_shl_i_i399_1135 v_conv6_i_i398_1134 1;
(*   %conv7.i.i400.1136 = trunc i32 %shl.i.i399.1135 to i8 *)
split tmp_v_shl_i_i399_1135 v_conv7_i_i400_1136 v_shl_i_i399_1135 8;
vpc v_conv7_i_i400_1136@uint8 v_conv7_i_i400_1136@uint32;
(*   %conv.i.i388.1.1 = zext i8 %conv5.i.i397.1133 to i32 *)
cast v_conv_i_i388_1_1@uint32 v_conv5_i_i397_1133@uint8;
(*   %and.i.i389.1.1 = and i32 %conv.i.i388.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i389_1_1 v_conv_i_i388_1_1 (0x1)@uint32;
(*   %conv1.i.i390.1.1 = zext i8 %conv7.i.i400.1136 to i32 *)
cast v_conv1_i_i390_1_1@uint32 v_conv7_i_i400_1136@uint8;
(*   %mul.i.i391.1.1 = mul nsw i32 %and.i.i389.1.1, %conv1.i.i390.1.1 *)
mul v_mul_i_i391_1_1 v_and_i_i389_1_1 v_conv1_i_i390_1_1;
(*   %conv2.i.i392.1.1 = zext i8 %conv3.i.i394.1130 to i32 *)
cast v_conv2_i_i392_1_1@uint32 v_conv3_i_i394_1130@uint8;
(*   %xor.i.i393.1.1 = xor i32 %conv2.i.i392.1.1, %mul.i.i391.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i393_1_1 v_conv2_i_i392_1_1 v_mul_i_i391_1_1;
(*   %conv3.i.i394.1.1 = trunc i32 %xor.i.i393.1.1 to i8 *)
split tmp_v_xor_i_i393_1_1 v_conv3_i_i394_1_1 v_xor_i_i393_1_1 8;
vpc v_conv3_i_i394_1_1@uint8 v_conv3_i_i394_1_1@uint32;
(*   %conv4.i.i395.1.1 = zext i8 %conv5.i.i397.1133 to i32 *)
cast v_conv4_i_i395_1_1@uint32 v_conv5_i_i397_1133@uint8;
(*   %shr.i.i396.1.1 = ashr i32 %conv4.i.i395.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i396_1_1 tmp_to_be_used v_conv4_i_i395_1_1 1;
(*   %conv5.i.i397.1.1 = trunc i32 %shr.i.i396.1.1 to i8 *)
split tmp_v_shr_i_i396_1_1 v_conv5_i_i397_1_1 v_shr_i_i396_1_1 8;
vpc v_conv5_i_i397_1_1@uint8 v_conv5_i_i397_1_1@uint32;
(*   %conv6.i.i398.1.1 = zext i8 %conv7.i.i400.1136 to i32 *)
cast v_conv6_i_i398_1_1@uint32 v_conv7_i_i400_1136@uint8;
(*   %shl.i.i399.1.1 = shl i32 %conv6.i.i398.1.1, 1 *)
shls discard_92 v_shl_i_i399_1_1 v_conv6_i_i398_1_1 1;
(*   %conv7.i.i400.1.1 = trunc i32 %shl.i.i399.1.1 to i8 *)
split tmp_v_shl_i_i399_1_1 v_conv7_i_i400_1_1 v_shl_i_i399_1_1 8;
vpc v_conv7_i_i400_1_1@uint8 v_conv7_i_i400_1_1@uint32;
(*   %conv.i.i388.2.1 = zext i8 %conv5.i.i397.1.1 to i32 *)
cast v_conv_i_i388_2_1@uint32 v_conv5_i_i397_1_1@uint8;
(*   %and.i.i389.2.1 = and i32 %conv.i.i388.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i389_2_1 v_conv_i_i388_2_1 (0x1)@uint32;
(*   %conv1.i.i390.2.1 = zext i8 %conv7.i.i400.1.1 to i32 *)
cast v_conv1_i_i390_2_1@uint32 v_conv7_i_i400_1_1@uint8;
(*   %mul.i.i391.2.1 = mul nsw i32 %and.i.i389.2.1, %conv1.i.i390.2.1 *)
mul v_mul_i_i391_2_1 v_and_i_i389_2_1 v_conv1_i_i390_2_1;
(*   %conv2.i.i392.2.1 = zext i8 %conv3.i.i394.1.1 to i32 *)
cast v_conv2_i_i392_2_1@uint32 v_conv3_i_i394_1_1@uint8;
(*   %xor.i.i393.2.1 = xor i32 %conv2.i.i392.2.1, %mul.i.i391.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i393_2_1 v_conv2_i_i392_2_1 v_mul_i_i391_2_1;
(*   %conv3.i.i394.2.1 = trunc i32 %xor.i.i393.2.1 to i8 *)
split tmp_v_xor_i_i393_2_1 v_conv3_i_i394_2_1 v_xor_i_i393_2_1 8;
vpc v_conv3_i_i394_2_1@uint8 v_conv3_i_i394_2_1@uint32;
(*   %conv4.i.i395.2.1 = zext i8 %conv5.i.i397.1.1 to i32 *)
cast v_conv4_i_i395_2_1@uint32 v_conv5_i_i397_1_1@uint8;
(*   %shr.i.i396.2.1 = ashr i32 %conv4.i.i395.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i396_2_1 tmp_to_be_used v_conv4_i_i395_2_1 1;
(*   %conv5.i.i397.2.1 = trunc i32 %shr.i.i396.2.1 to i8 *)
split tmp_v_shr_i_i396_2_1 v_conv5_i_i397_2_1 v_shr_i_i396_2_1 8;
vpc v_conv5_i_i397_2_1@uint8 v_conv5_i_i397_2_1@uint32;
(*   %conv6.i.i398.2.1 = zext i8 %conv7.i.i400.1.1 to i32 *)
cast v_conv6_i_i398_2_1@uint32 v_conv7_i_i400_1_1@uint8;
(*   %shl.i.i399.2.1 = shl i32 %conv6.i.i398.2.1, 1 *)
shls discard_93 v_shl_i_i399_2_1 v_conv6_i_i398_2_1 1;
(*   %conv7.i.i400.2.1 = trunc i32 %shl.i.i399.2.1 to i8 *)
split tmp_v_shl_i_i399_2_1 v_conv7_i_i400_2_1 v_shl_i_i399_2_1 8;
vpc v_conv7_i_i400_2_1@uint8 v_conv7_i_i400_2_1@uint32;
(*   %conv.i.i388.3.1 = zext i8 %conv5.i.i397.2.1 to i32 *)
cast v_conv_i_i388_3_1@uint32 v_conv5_i_i397_2_1@uint8;
(*   %and.i.i389.3.1 = and i32 %conv.i.i388.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i389_3_1 v_conv_i_i388_3_1 (0x1)@uint32;
(*   %conv1.i.i390.3.1 = zext i8 %conv7.i.i400.2.1 to i32 *)
cast v_conv1_i_i390_3_1@uint32 v_conv7_i_i400_2_1@uint8;
(*   %mul.i.i391.3.1 = mul nsw i32 %and.i.i389.3.1, %conv1.i.i390.3.1 *)
mul v_mul_i_i391_3_1 v_and_i_i389_3_1 v_conv1_i_i390_3_1;
(*   %conv2.i.i392.3.1 = zext i8 %conv3.i.i394.2.1 to i32 *)
cast v_conv2_i_i392_3_1@uint32 v_conv3_i_i394_2_1@uint8;
(*   %xor.i.i393.3.1 = xor i32 %conv2.i.i392.3.1, %mul.i.i391.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i393_3_1 v_conv2_i_i392_3_1 v_mul_i_i391_3_1;
(*   %conv3.i.i394.3.1 = trunc i32 %xor.i.i393.3.1 to i8 *)
split tmp_v_xor_i_i393_3_1 v_conv3_i_i394_3_1 v_xor_i_i393_3_1 8;
vpc v_conv3_i_i394_3_1@uint8 v_conv3_i_i394_3_1@uint32;
(*   %conv4.i.i395.3.1 = zext i8 %conv5.i.i397.2.1 to i32 *)
cast v_conv4_i_i395_3_1@uint32 v_conv5_i_i397_2_1@uint8;
(*   %shr.i.i396.3.1 = ashr i32 %conv4.i.i395.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i396_3_1 tmp_to_be_used v_conv4_i_i395_3_1 1;
(*   %conv5.i.i397.3.1 = trunc i32 %shr.i.i396.3.1 to i8 *)
split tmp_v_shr_i_i396_3_1 v_conv5_i_i397_3_1 v_shr_i_i396_3_1 8;
vpc v_conv5_i_i397_3_1@uint8 v_conv5_i_i397_3_1@uint32;
(*   %conv6.i.i398.3.1 = zext i8 %conv7.i.i400.2.1 to i32 *)
cast v_conv6_i_i398_3_1@uint32 v_conv7_i_i400_2_1@uint8;
(*   %shl.i.i399.3.1 = shl i32 %conv6.i.i398.3.1, 1 *)
shls discard_94 v_shl_i_i399_3_1 v_conv6_i_i398_3_1 1;
(*   %conv7.i.i400.3.1 = trunc i32 %shl.i.i399.3.1 to i8 *)
split tmp_v_shl_i_i399_3_1 v_conv7_i_i400_3_1 v_shl_i_i399_3_1 8;
vpc v_conv7_i_i400_3_1@uint8 v_conv7_i_i400_3_1@uint32;
(*   %conv.i.i388.4.1 = zext i8 %conv5.i.i397.3.1 to i32 *)
cast v_conv_i_i388_4_1@uint32 v_conv5_i_i397_3_1@uint8;
(*   %and.i.i389.4.1 = and i32 %conv.i.i388.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i389_4_1 v_conv_i_i388_4_1 (0x1)@uint32;
(*   %conv1.i.i390.4.1 = zext i8 %conv7.i.i400.3.1 to i32 *)
cast v_conv1_i_i390_4_1@uint32 v_conv7_i_i400_3_1@uint8;
(*   %mul.i.i391.4.1 = mul nsw i32 %and.i.i389.4.1, %conv1.i.i390.4.1 *)
mul v_mul_i_i391_4_1 v_and_i_i389_4_1 v_conv1_i_i390_4_1;
(*   %conv2.i.i392.4.1 = zext i8 %conv3.i.i394.3.1 to i32 *)
cast v_conv2_i_i392_4_1@uint32 v_conv3_i_i394_3_1@uint8;
(*   %xor.i.i393.4.1 = xor i32 %conv2.i.i392.4.1, %mul.i.i391.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i393_4_1 v_conv2_i_i392_4_1 v_mul_i_i391_4_1;
(*   %conv3.i.i394.4.1 = trunc i32 %xor.i.i393.4.1 to i8 *)
split tmp_v_xor_i_i393_4_1 v_conv3_i_i394_4_1 v_xor_i_i393_4_1 8;
vpc v_conv3_i_i394_4_1@uint8 v_conv3_i_i394_4_1@uint32;
(*   %conv4.i.i395.4.1 = zext i8 %conv5.i.i397.3.1 to i32 *)
cast v_conv4_i_i395_4_1@uint32 v_conv5_i_i397_3_1@uint8;
(*   %shr.i.i396.4.1 = ashr i32 %conv4.i.i395.4.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i396_4_1 tmp_to_be_used v_conv4_i_i395_4_1 1;
(*   %conv5.i.i397.4.1 = trunc i32 %shr.i.i396.4.1 to i8 *)
split tmp_v_shr_i_i396_4_1 v_conv5_i_i397_4_1 v_shr_i_i396_4_1 8;
vpc v_conv5_i_i397_4_1@uint8 v_conv5_i_i397_4_1@uint32;
(*   %conv6.i.i398.4.1 = zext i8 %conv7.i.i400.3.1 to i32 *)
cast v_conv6_i_i398_4_1@uint32 v_conv7_i_i400_3_1@uint8;
(*   %shl.i.i399.4.1 = shl i32 %conv6.i.i398.4.1, 1 *)
shls discard_95 v_shl_i_i399_4_1 v_conv6_i_i398_4_1 1;
(*   %conv7.i.i400.4.1 = trunc i32 %shl.i.i399.4.1 to i8 *)
split tmp_v_shl_i_i399_4_1 v_conv7_i_i400_4_1 v_shl_i_i399_4_1 8;
vpc v_conv7_i_i400_4_1@uint8 v_conv7_i_i400_4_1@uint32;
(*   %conv.i.i388.5.1 = zext i8 %conv5.i.i397.4.1 to i32 *)
cast v_conv_i_i388_5_1@uint32 v_conv5_i_i397_4_1@uint8;
(*   %and.i.i389.5.1 = and i32 %conv.i.i388.5.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i389_5_1 v_conv_i_i388_5_1 (0x1)@uint32;
(*   %conv1.i.i390.5.1 = zext i8 %conv7.i.i400.4.1 to i32 *)
cast v_conv1_i_i390_5_1@uint32 v_conv7_i_i400_4_1@uint8;
(*   %mul.i.i391.5.1 = mul nsw i32 %and.i.i389.5.1, %conv1.i.i390.5.1 *)
mul v_mul_i_i391_5_1 v_and_i_i389_5_1 v_conv1_i_i390_5_1;
(*   %conv2.i.i392.5.1 = zext i8 %conv3.i.i394.4.1 to i32 *)
cast v_conv2_i_i392_5_1@uint32 v_conv3_i_i394_4_1@uint8;
(*   %xor.i.i393.5.1 = xor i32 %conv2.i.i392.5.1, %mul.i.i391.5.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i393_5_1 v_conv2_i_i392_5_1 v_mul_i_i391_5_1;
(*   %conv3.i.i394.5.1 = trunc i32 %xor.i.i393.5.1 to i8 *)
split tmp_v_xor_i_i393_5_1 v_conv3_i_i394_5_1 v_xor_i_i393_5_1 8;
vpc v_conv3_i_i394_5_1@uint8 v_conv3_i_i394_5_1@uint32;
(*   %conv4.i.i395.5.1 = zext i8 %conv5.i.i397.4.1 to i32 *)
cast v_conv4_i_i395_5_1@uint32 v_conv5_i_i397_4_1@uint8;
(*   %shr.i.i396.5.1 = ashr i32 %conv4.i.i395.5.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i396_5_1 tmp_to_be_used v_conv4_i_i395_5_1 1;
(*   %conv5.i.i397.5.1 = trunc i32 %shr.i.i396.5.1 to i8 *)
split tmp_v_shr_i_i396_5_1 v_conv5_i_i397_5_1 v_shr_i_i396_5_1 8;
vpc v_conv5_i_i397_5_1@uint8 v_conv5_i_i397_5_1@uint32;
(*   %conv6.i.i398.5.1 = zext i8 %conv7.i.i400.4.1 to i32 *)
cast v_conv6_i_i398_5_1@uint32 v_conv7_i_i400_4_1@uint8;
(*   %shl.i.i399.5.1 = shl i32 %conv6.i.i398.5.1, 1 *)
shls discard_96 v_shl_i_i399_5_1 v_conv6_i_i398_5_1 1;
(*   %conv7.i.i400.5.1 = trunc i32 %shl.i.i399.5.1 to i8 *)
split tmp_v_shl_i_i399_5_1 v_conv7_i_i400_5_1 v_shl_i_i399_5_1 8;
vpc v_conv7_i_i400_5_1@uint8 v_conv7_i_i400_5_1@uint32;
(*   %conv.i.i388.6.1 = zext i8 %conv5.i.i397.5.1 to i32 *)
cast v_conv_i_i388_6_1@uint32 v_conv5_i_i397_5_1@uint8;
(*   %and.i.i389.6.1 = and i32 %conv.i.i388.6.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i389_6_1 v_conv_i_i388_6_1 (0x1)@uint32;
(*   %conv1.i.i390.6.1 = zext i8 %conv7.i.i400.5.1 to i32 *)
cast v_conv1_i_i390_6_1@uint32 v_conv7_i_i400_5_1@uint8;
(*   %mul.i.i391.6.1 = mul nsw i32 %and.i.i389.6.1, %conv1.i.i390.6.1 *)
mul v_mul_i_i391_6_1 v_and_i_i389_6_1 v_conv1_i_i390_6_1;
(*   %conv2.i.i392.6.1 = zext i8 %conv3.i.i394.5.1 to i32 *)
cast v_conv2_i_i392_6_1@uint32 v_conv3_i_i394_5_1@uint8;
(*   %xor.i.i393.6.1 = xor i32 %conv2.i.i392.6.1, %mul.i.i391.6.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i393_6_1 v_conv2_i_i392_6_1 v_mul_i_i391_6_1;
(*   %conv3.i.i394.6.1 = trunc i32 %xor.i.i393.6.1 to i8 *)
split tmp_v_xor_i_i393_6_1 v_conv3_i_i394_6_1 v_xor_i_i393_6_1 8;
vpc v_conv3_i_i394_6_1@uint8 v_conv3_i_i394_6_1@uint32;
(*   %conv4.i.i395.6.1 = zext i8 %conv5.i.i397.5.1 to i32 *)
cast v_conv4_i_i395_6_1@uint32 v_conv5_i_i397_5_1@uint8;
(*   %shr.i.i396.6.1 = ashr i32 %conv4.i.i395.6.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i396_6_1 tmp_to_be_used v_conv4_i_i395_6_1 1;
(*   %conv5.i.i397.6.1 = trunc i32 %shr.i.i396.6.1 to i8 *)
split tmp_v_shr_i_i396_6_1 v_conv5_i_i397_6_1 v_shr_i_i396_6_1 8;
vpc v_conv5_i_i397_6_1@uint8 v_conv5_i_i397_6_1@uint32;
(*   %conv6.i.i398.6.1 = zext i8 %conv7.i.i400.5.1 to i32 *)
cast v_conv6_i_i398_6_1@uint32 v_conv7_i_i400_5_1@uint8;
(*   %shl.i.i399.6.1 = shl i32 %conv6.i.i398.6.1, 1 *)
shls discard_97 v_shl_i_i399_6_1 v_conv6_i_i398_6_1 1;
(*   %conv7.i.i400.6.1 = trunc i32 %shl.i.i399.6.1 to i8 *)
split tmp_v_shl_i_i399_6_1 v_conv7_i_i400_6_1 v_shl_i_i399_6_1 8;
vpc v_conv7_i_i400_6_1@uint8 v_conv7_i_i400_6_1@uint32;
(*   %conv.i.i388.7.1 = zext i8 %conv5.i.i397.6.1 to i32 *)
cast v_conv_i_i388_7_1@uint32 v_conv5_i_i397_6_1@uint8;
(*   %and.i.i389.7.1 = and i32 %conv.i.i388.7.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i389_7_1 v_conv_i_i388_7_1 (0x1)@uint32;
(*   %conv1.i.i390.7.1 = zext i8 %conv7.i.i400.6.1 to i32 *)
cast v_conv1_i_i390_7_1@uint32 v_conv7_i_i400_6_1@uint8;
(*   %mul.i.i391.7.1 = mul nsw i32 %and.i.i389.7.1, %conv1.i.i390.7.1 *)
mul v_mul_i_i391_7_1 v_and_i_i389_7_1 v_conv1_i_i390_7_1;
(*   %conv2.i.i392.7.1 = zext i8 %conv3.i.i394.6.1 to i32 *)
cast v_conv2_i_i392_7_1@uint32 v_conv3_i_i394_6_1@uint8;
(*   %xor.i.i393.7.1 = xor i32 %conv2.i.i392.7.1, %mul.i.i391.7.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i393_7_1 v_conv2_i_i392_7_1 v_mul_i_i391_7_1;
(*   %conv3.i.i394.7.1 = trunc i32 %xor.i.i393.7.1 to i8 *)
split tmp_v_xor_i_i393_7_1 v_conv3_i_i394_7_1 v_xor_i_i393_7_1 8;
vpc v_conv3_i_i394_7_1@uint8 v_conv3_i_i394_7_1@uint32;
(*   %arrayidx6.i404.1 = getelementptr inbounds i8, i8* %add.ptr10, i64 1 *)
(*   store i8 %conv3.i.i394.7.1, i8* %arrayidx6.i404.1, align 1 *)
mov cc_17 v_conv3_i_i394_7_1;
(*   %arrayidx.i380.2 = getelementptr inbounds i8, i8* %a, i64 2 *)
(*   %28 = load i8, i8* %arrayidx.i380.2, align 1 *)
mov v28 a_2;
(*   %29 = load i8, i8* %b, align 1 *)
mov v29 b_0;
(*   %conv.i.i388.2137 = zext i8 %29 to i32 *)
cast v_conv_i_i388_2137@uint32 v29@uint8;
(*   %and.i.i389.2138 = and i32 %conv.i.i388.2137, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i389_2138 v_conv_i_i388_2137 (0x1)@uint32;
(*   %conv1.i.i390.2139 = zext i8 %28 to i32 *)
cast v_conv1_i_i390_2139@uint32 v28@uint8;
(*   %mul.i.i391.2140 = mul nsw i32 %and.i.i389.2138, %conv1.i.i390.2139 *)
mul v_mul_i_i391_2140 v_and_i_i389_2138 v_conv1_i_i390_2139;
(*   %conv3.i.i394.2141 = trunc i32 %mul.i.i391.2140 to i8 *)
split tmp_v_mul_i_i391_2140 v_conv3_i_i394_2141 v_mul_i_i391_2140 8;
vpc v_conv3_i_i394_2141@uint8 v_conv3_i_i394_2141@uint32;
(*   %conv4.i.i395.2142 = zext i8 %29 to i32 *)
cast v_conv4_i_i395_2142@uint32 v29@uint8;
(*   %shr.i.i396.2143 = ashr i32 %conv4.i.i395.2142, 1 *)
(* You may need to modify here *)
split v_shr_i_i396_2143 tmp_to_be_used v_conv4_i_i395_2142 1;
(*   %conv5.i.i397.2144 = trunc i32 %shr.i.i396.2143 to i8 *)
split tmp_v_shr_i_i396_2143 v_conv5_i_i397_2144 v_shr_i_i396_2143 8;
vpc v_conv5_i_i397_2144@uint8 v_conv5_i_i397_2144@uint32;
(*   %conv6.i.i398.2145 = zext i8 %28 to i32 *)
cast v_conv6_i_i398_2145@uint32 v28@uint8;
(*   %shl.i.i399.2146 = shl i32 %conv6.i.i398.2145, 1 *)
shls discard_98 v_shl_i_i399_2146 v_conv6_i_i398_2145 1;
(*   %conv7.i.i400.2147 = trunc i32 %shl.i.i399.2146 to i8 *)
split tmp_v_shl_i_i399_2146 v_conv7_i_i400_2147 v_shl_i_i399_2146 8;
vpc v_conv7_i_i400_2147@uint8 v_conv7_i_i400_2147@uint32;
(*   %conv.i.i388.1.2 = zext i8 %conv5.i.i397.2144 to i32 *)
cast v_conv_i_i388_1_2@uint32 v_conv5_i_i397_2144@uint8;
(*   %and.i.i389.1.2 = and i32 %conv.i.i388.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i389_1_2 v_conv_i_i388_1_2 (0x1)@uint32;
(*   %conv1.i.i390.1.2 = zext i8 %conv7.i.i400.2147 to i32 *)
cast v_conv1_i_i390_1_2@uint32 v_conv7_i_i400_2147@uint8;
(*   %mul.i.i391.1.2 = mul nsw i32 %and.i.i389.1.2, %conv1.i.i390.1.2 *)
mul v_mul_i_i391_1_2 v_and_i_i389_1_2 v_conv1_i_i390_1_2;
(*   %conv2.i.i392.1.2 = zext i8 %conv3.i.i394.2141 to i32 *)
cast v_conv2_i_i392_1_2@uint32 v_conv3_i_i394_2141@uint8;
(*   %xor.i.i393.1.2 = xor i32 %conv2.i.i392.1.2, %mul.i.i391.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i393_1_2 v_conv2_i_i392_1_2 v_mul_i_i391_1_2;
(*   %conv3.i.i394.1.2 = trunc i32 %xor.i.i393.1.2 to i8 *)
split tmp_v_xor_i_i393_1_2 v_conv3_i_i394_1_2 v_xor_i_i393_1_2 8;
vpc v_conv3_i_i394_1_2@uint8 v_conv3_i_i394_1_2@uint32;
(*   %conv4.i.i395.1.2 = zext i8 %conv5.i.i397.2144 to i32 *)
cast v_conv4_i_i395_1_2@uint32 v_conv5_i_i397_2144@uint8;
(*   %shr.i.i396.1.2 = ashr i32 %conv4.i.i395.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i396_1_2 tmp_to_be_used v_conv4_i_i395_1_2 1;
(*   %conv5.i.i397.1.2 = trunc i32 %shr.i.i396.1.2 to i8 *)
split tmp_v_shr_i_i396_1_2 v_conv5_i_i397_1_2 v_shr_i_i396_1_2 8;
vpc v_conv5_i_i397_1_2@uint8 v_conv5_i_i397_1_2@uint32;
(*   %conv6.i.i398.1.2 = zext i8 %conv7.i.i400.2147 to i32 *)
cast v_conv6_i_i398_1_2@uint32 v_conv7_i_i400_2147@uint8;
(*   %shl.i.i399.1.2 = shl i32 %conv6.i.i398.1.2, 1 *)
shls discard_99 v_shl_i_i399_1_2 v_conv6_i_i398_1_2 1;
(*   %conv7.i.i400.1.2 = trunc i32 %shl.i.i399.1.2 to i8 *)
split tmp_v_shl_i_i399_1_2 v_conv7_i_i400_1_2 v_shl_i_i399_1_2 8;
vpc v_conv7_i_i400_1_2@uint8 v_conv7_i_i400_1_2@uint32;
(*   %conv.i.i388.2.2 = zext i8 %conv5.i.i397.1.2 to i32 *)
cast v_conv_i_i388_2_2@uint32 v_conv5_i_i397_1_2@uint8;
(*   %and.i.i389.2.2 = and i32 %conv.i.i388.2.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i389_2_2 v_conv_i_i388_2_2 (0x1)@uint32;
(*   %conv1.i.i390.2.2 = zext i8 %conv7.i.i400.1.2 to i32 *)
cast v_conv1_i_i390_2_2@uint32 v_conv7_i_i400_1_2@uint8;
(*   %mul.i.i391.2.2 = mul nsw i32 %and.i.i389.2.2, %conv1.i.i390.2.2 *)
mul v_mul_i_i391_2_2 v_and_i_i389_2_2 v_conv1_i_i390_2_2;
(*   %conv2.i.i392.2.2 = zext i8 %conv3.i.i394.1.2 to i32 *)
cast v_conv2_i_i392_2_2@uint32 v_conv3_i_i394_1_2@uint8;
(*   %xor.i.i393.2.2 = xor i32 %conv2.i.i392.2.2, %mul.i.i391.2.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i393_2_2 v_conv2_i_i392_2_2 v_mul_i_i391_2_2;
(*   %conv3.i.i394.2.2 = trunc i32 %xor.i.i393.2.2 to i8 *)
split tmp_v_xor_i_i393_2_2 v_conv3_i_i394_2_2 v_xor_i_i393_2_2 8;
vpc v_conv3_i_i394_2_2@uint8 v_conv3_i_i394_2_2@uint32;
(*   %conv4.i.i395.2.2 = zext i8 %conv5.i.i397.1.2 to i32 *)
cast v_conv4_i_i395_2_2@uint32 v_conv5_i_i397_1_2@uint8;
(*   %shr.i.i396.2.2 = ashr i32 %conv4.i.i395.2.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i396_2_2 tmp_to_be_used v_conv4_i_i395_2_2 1;
(*   %conv5.i.i397.2.2 = trunc i32 %shr.i.i396.2.2 to i8 *)
split tmp_v_shr_i_i396_2_2 v_conv5_i_i397_2_2 v_shr_i_i396_2_2 8;
vpc v_conv5_i_i397_2_2@uint8 v_conv5_i_i397_2_2@uint32;
(*   %conv6.i.i398.2.2 = zext i8 %conv7.i.i400.1.2 to i32 *)
cast v_conv6_i_i398_2_2@uint32 v_conv7_i_i400_1_2@uint8;
(*   %shl.i.i399.2.2 = shl i32 %conv6.i.i398.2.2, 1 *)
shls discard_100 v_shl_i_i399_2_2 v_conv6_i_i398_2_2 1;
(*   %conv7.i.i400.2.2 = trunc i32 %shl.i.i399.2.2 to i8 *)
split tmp_v_shl_i_i399_2_2 v_conv7_i_i400_2_2 v_shl_i_i399_2_2 8;
vpc v_conv7_i_i400_2_2@uint8 v_conv7_i_i400_2_2@uint32;
(*   %conv.i.i388.3.2 = zext i8 %conv5.i.i397.2.2 to i32 *)
cast v_conv_i_i388_3_2@uint32 v_conv5_i_i397_2_2@uint8;
(*   %and.i.i389.3.2 = and i32 %conv.i.i388.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i389_3_2 v_conv_i_i388_3_2 (0x1)@uint32;
(*   %conv1.i.i390.3.2 = zext i8 %conv7.i.i400.2.2 to i32 *)
cast v_conv1_i_i390_3_2@uint32 v_conv7_i_i400_2_2@uint8;
(*   %mul.i.i391.3.2 = mul nsw i32 %and.i.i389.3.2, %conv1.i.i390.3.2 *)
mul v_mul_i_i391_3_2 v_and_i_i389_3_2 v_conv1_i_i390_3_2;
(*   %conv2.i.i392.3.2 = zext i8 %conv3.i.i394.2.2 to i32 *)
cast v_conv2_i_i392_3_2@uint32 v_conv3_i_i394_2_2@uint8;
(*   %xor.i.i393.3.2 = xor i32 %conv2.i.i392.3.2, %mul.i.i391.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i393_3_2 v_conv2_i_i392_3_2 v_mul_i_i391_3_2;
(*   %conv3.i.i394.3.2 = trunc i32 %xor.i.i393.3.2 to i8 *)
split tmp_v_xor_i_i393_3_2 v_conv3_i_i394_3_2 v_xor_i_i393_3_2 8;
vpc v_conv3_i_i394_3_2@uint8 v_conv3_i_i394_3_2@uint32;
(*   %conv4.i.i395.3.2 = zext i8 %conv5.i.i397.2.2 to i32 *)
cast v_conv4_i_i395_3_2@uint32 v_conv5_i_i397_2_2@uint8;
(*   %shr.i.i396.3.2 = ashr i32 %conv4.i.i395.3.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i396_3_2 tmp_to_be_used v_conv4_i_i395_3_2 1;
(*   %conv5.i.i397.3.2 = trunc i32 %shr.i.i396.3.2 to i8 *)
split tmp_v_shr_i_i396_3_2 v_conv5_i_i397_3_2 v_shr_i_i396_3_2 8;
vpc v_conv5_i_i397_3_2@uint8 v_conv5_i_i397_3_2@uint32;
(*   %conv6.i.i398.3.2 = zext i8 %conv7.i.i400.2.2 to i32 *)
cast v_conv6_i_i398_3_2@uint32 v_conv7_i_i400_2_2@uint8;
(*   %shl.i.i399.3.2 = shl i32 %conv6.i.i398.3.2, 1 *)
shls discard_101 v_shl_i_i399_3_2 v_conv6_i_i398_3_2 1;
(*   %conv7.i.i400.3.2 = trunc i32 %shl.i.i399.3.2 to i8 *)
split tmp_v_shl_i_i399_3_2 v_conv7_i_i400_3_2 v_shl_i_i399_3_2 8;
vpc v_conv7_i_i400_3_2@uint8 v_conv7_i_i400_3_2@uint32;
(*   %conv.i.i388.4.2 = zext i8 %conv5.i.i397.3.2 to i32 *)
cast v_conv_i_i388_4_2@uint32 v_conv5_i_i397_3_2@uint8;
(*   %and.i.i389.4.2 = and i32 %conv.i.i388.4.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i389_4_2 v_conv_i_i388_4_2 (0x1)@uint32;
(*   %conv1.i.i390.4.2 = zext i8 %conv7.i.i400.3.2 to i32 *)
cast v_conv1_i_i390_4_2@uint32 v_conv7_i_i400_3_2@uint8;
(*   %mul.i.i391.4.2 = mul nsw i32 %and.i.i389.4.2, %conv1.i.i390.4.2 *)
mul v_mul_i_i391_4_2 v_and_i_i389_4_2 v_conv1_i_i390_4_2;
(*   %conv2.i.i392.4.2 = zext i8 %conv3.i.i394.3.2 to i32 *)
cast v_conv2_i_i392_4_2@uint32 v_conv3_i_i394_3_2@uint8;
(*   %xor.i.i393.4.2 = xor i32 %conv2.i.i392.4.2, %mul.i.i391.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i393_4_2 v_conv2_i_i392_4_2 v_mul_i_i391_4_2;
(*   %conv3.i.i394.4.2 = trunc i32 %xor.i.i393.4.2 to i8 *)
split tmp_v_xor_i_i393_4_2 v_conv3_i_i394_4_2 v_xor_i_i393_4_2 8;
vpc v_conv3_i_i394_4_2@uint8 v_conv3_i_i394_4_2@uint32;
(*   %conv4.i.i395.4.2 = zext i8 %conv5.i.i397.3.2 to i32 *)
cast v_conv4_i_i395_4_2@uint32 v_conv5_i_i397_3_2@uint8;
(*   %shr.i.i396.4.2 = ashr i32 %conv4.i.i395.4.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i396_4_2 tmp_to_be_used v_conv4_i_i395_4_2 1;
(*   %conv5.i.i397.4.2 = trunc i32 %shr.i.i396.4.2 to i8 *)
split tmp_v_shr_i_i396_4_2 v_conv5_i_i397_4_2 v_shr_i_i396_4_2 8;
vpc v_conv5_i_i397_4_2@uint8 v_conv5_i_i397_4_2@uint32;
(*   %conv6.i.i398.4.2 = zext i8 %conv7.i.i400.3.2 to i32 *)
cast v_conv6_i_i398_4_2@uint32 v_conv7_i_i400_3_2@uint8;
(*   %shl.i.i399.4.2 = shl i32 %conv6.i.i398.4.2, 1 *)
shls discard_102 v_shl_i_i399_4_2 v_conv6_i_i398_4_2 1;
(*   %conv7.i.i400.4.2 = trunc i32 %shl.i.i399.4.2 to i8 *)
split tmp_v_shl_i_i399_4_2 v_conv7_i_i400_4_2 v_shl_i_i399_4_2 8;
vpc v_conv7_i_i400_4_2@uint8 v_conv7_i_i400_4_2@uint32;
(*   %conv.i.i388.5.2 = zext i8 %conv5.i.i397.4.2 to i32 *)
cast v_conv_i_i388_5_2@uint32 v_conv5_i_i397_4_2@uint8;
(*   %and.i.i389.5.2 = and i32 %conv.i.i388.5.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i389_5_2 v_conv_i_i388_5_2 (0x1)@uint32;
(*   %conv1.i.i390.5.2 = zext i8 %conv7.i.i400.4.2 to i32 *)
cast v_conv1_i_i390_5_2@uint32 v_conv7_i_i400_4_2@uint8;
(*   %mul.i.i391.5.2 = mul nsw i32 %and.i.i389.5.2, %conv1.i.i390.5.2 *)
mul v_mul_i_i391_5_2 v_and_i_i389_5_2 v_conv1_i_i390_5_2;
(*   %conv2.i.i392.5.2 = zext i8 %conv3.i.i394.4.2 to i32 *)
cast v_conv2_i_i392_5_2@uint32 v_conv3_i_i394_4_2@uint8;
(*   %xor.i.i393.5.2 = xor i32 %conv2.i.i392.5.2, %mul.i.i391.5.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i393_5_2 v_conv2_i_i392_5_2 v_mul_i_i391_5_2;
(*   %conv3.i.i394.5.2 = trunc i32 %xor.i.i393.5.2 to i8 *)
split tmp_v_xor_i_i393_5_2 v_conv3_i_i394_5_2 v_xor_i_i393_5_2 8;
vpc v_conv3_i_i394_5_2@uint8 v_conv3_i_i394_5_2@uint32;
(*   %conv4.i.i395.5.2 = zext i8 %conv5.i.i397.4.2 to i32 *)
cast v_conv4_i_i395_5_2@uint32 v_conv5_i_i397_4_2@uint8;
(*   %shr.i.i396.5.2 = ashr i32 %conv4.i.i395.5.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i396_5_2 tmp_to_be_used v_conv4_i_i395_5_2 1;
(*   %conv5.i.i397.5.2 = trunc i32 %shr.i.i396.5.2 to i8 *)
split tmp_v_shr_i_i396_5_2 v_conv5_i_i397_5_2 v_shr_i_i396_5_2 8;
vpc v_conv5_i_i397_5_2@uint8 v_conv5_i_i397_5_2@uint32;
(*   %conv6.i.i398.5.2 = zext i8 %conv7.i.i400.4.2 to i32 *)
cast v_conv6_i_i398_5_2@uint32 v_conv7_i_i400_4_2@uint8;
(*   %shl.i.i399.5.2 = shl i32 %conv6.i.i398.5.2, 1 *)
shls discard_103 v_shl_i_i399_5_2 v_conv6_i_i398_5_2 1;
(*   %conv7.i.i400.5.2 = trunc i32 %shl.i.i399.5.2 to i8 *)
split tmp_v_shl_i_i399_5_2 v_conv7_i_i400_5_2 v_shl_i_i399_5_2 8;
vpc v_conv7_i_i400_5_2@uint8 v_conv7_i_i400_5_2@uint32;
(*   %conv.i.i388.6.2 = zext i8 %conv5.i.i397.5.2 to i32 *)
cast v_conv_i_i388_6_2@uint32 v_conv5_i_i397_5_2@uint8;
(*   %and.i.i389.6.2 = and i32 %conv.i.i388.6.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i389_6_2 v_conv_i_i388_6_2 (0x1)@uint32;
(*   %conv1.i.i390.6.2 = zext i8 %conv7.i.i400.5.2 to i32 *)
cast v_conv1_i_i390_6_2@uint32 v_conv7_i_i400_5_2@uint8;
(*   %mul.i.i391.6.2 = mul nsw i32 %and.i.i389.6.2, %conv1.i.i390.6.2 *)
mul v_mul_i_i391_6_2 v_and_i_i389_6_2 v_conv1_i_i390_6_2;
(*   %conv2.i.i392.6.2 = zext i8 %conv3.i.i394.5.2 to i32 *)
cast v_conv2_i_i392_6_2@uint32 v_conv3_i_i394_5_2@uint8;
(*   %xor.i.i393.6.2 = xor i32 %conv2.i.i392.6.2, %mul.i.i391.6.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i393_6_2 v_conv2_i_i392_6_2 v_mul_i_i391_6_2;
(*   %conv3.i.i394.6.2 = trunc i32 %xor.i.i393.6.2 to i8 *)
split tmp_v_xor_i_i393_6_2 v_conv3_i_i394_6_2 v_xor_i_i393_6_2 8;
vpc v_conv3_i_i394_6_2@uint8 v_conv3_i_i394_6_2@uint32;
(*   %conv4.i.i395.6.2 = zext i8 %conv5.i.i397.5.2 to i32 *)
cast v_conv4_i_i395_6_2@uint32 v_conv5_i_i397_5_2@uint8;
(*   %shr.i.i396.6.2 = ashr i32 %conv4.i.i395.6.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i396_6_2 tmp_to_be_used v_conv4_i_i395_6_2 1;
(*   %conv5.i.i397.6.2 = trunc i32 %shr.i.i396.6.2 to i8 *)
split tmp_v_shr_i_i396_6_2 v_conv5_i_i397_6_2 v_shr_i_i396_6_2 8;
vpc v_conv5_i_i397_6_2@uint8 v_conv5_i_i397_6_2@uint32;
(*   %conv6.i.i398.6.2 = zext i8 %conv7.i.i400.5.2 to i32 *)
cast v_conv6_i_i398_6_2@uint32 v_conv7_i_i400_5_2@uint8;
(*   %shl.i.i399.6.2 = shl i32 %conv6.i.i398.6.2, 1 *)
shls discard_104 v_shl_i_i399_6_2 v_conv6_i_i398_6_2 1;
(*   %conv7.i.i400.6.2 = trunc i32 %shl.i.i399.6.2 to i8 *)
split tmp_v_shl_i_i399_6_2 v_conv7_i_i400_6_2 v_shl_i_i399_6_2 8;
vpc v_conv7_i_i400_6_2@uint8 v_conv7_i_i400_6_2@uint32;
(*   %conv.i.i388.7.2 = zext i8 %conv5.i.i397.6.2 to i32 *)
cast v_conv_i_i388_7_2@uint32 v_conv5_i_i397_6_2@uint8;
(*   %and.i.i389.7.2 = and i32 %conv.i.i388.7.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i389_7_2 v_conv_i_i388_7_2 (0x1)@uint32;
(*   %conv1.i.i390.7.2 = zext i8 %conv7.i.i400.6.2 to i32 *)
cast v_conv1_i_i390_7_2@uint32 v_conv7_i_i400_6_2@uint8;
(*   %mul.i.i391.7.2 = mul nsw i32 %and.i.i389.7.2, %conv1.i.i390.7.2 *)
mul v_mul_i_i391_7_2 v_and_i_i389_7_2 v_conv1_i_i390_7_2;
(*   %conv2.i.i392.7.2 = zext i8 %conv3.i.i394.6.2 to i32 *)
cast v_conv2_i_i392_7_2@uint32 v_conv3_i_i394_6_2@uint8;
(*   %xor.i.i393.7.2 = xor i32 %conv2.i.i392.7.2, %mul.i.i391.7.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i393_7_2 v_conv2_i_i392_7_2 v_mul_i_i391_7_2;
(*   %conv3.i.i394.7.2 = trunc i32 %xor.i.i393.7.2 to i8 *)
split tmp_v_xor_i_i393_7_2 v_conv3_i_i394_7_2 v_xor_i_i393_7_2 8;
vpc v_conv3_i_i394_7_2@uint8 v_conv3_i_i394_7_2@uint32;
(*   %arrayidx6.i404.2 = getelementptr inbounds i8, i8* %add.ptr10, i64 2 *)
(*   store i8 %conv3.i.i394.7.2, i8* %arrayidx6.i404.2, align 1 *)
mov cc_18 v_conv3_i_i394_7_2;
(*   %arrayidx.i380.3 = getelementptr inbounds i8, i8* %a, i64 3 *)
(*   %30 = load i8, i8* %arrayidx.i380.3, align 1 *)
mov v30 a_3;
(*   %arrayidx4.i384.3 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %31 = load i8, i8* %arrayidx4.i384.3, align 1 *)
mov v31 b_1;
(*   %conv.i.i388.3148 = zext i8 %31 to i32 *)
cast v_conv_i_i388_3148@uint32 v31@uint8;
(*   %and.i.i389.3149 = and i32 %conv.i.i388.3148, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i389_3149 v_conv_i_i388_3148 (0x1)@uint32;
(*   %conv1.i.i390.3150 = zext i8 %30 to i32 *)
cast v_conv1_i_i390_3150@uint32 v30@uint8;
(*   %mul.i.i391.3151 = mul nsw i32 %and.i.i389.3149, %conv1.i.i390.3150 *)
mul v_mul_i_i391_3151 v_and_i_i389_3149 v_conv1_i_i390_3150;
(*   %conv3.i.i394.3152 = trunc i32 %mul.i.i391.3151 to i8 *)
split tmp_v_mul_i_i391_3151 v_conv3_i_i394_3152 v_mul_i_i391_3151 8;
vpc v_conv3_i_i394_3152@uint8 v_conv3_i_i394_3152@uint32;
(*   %conv4.i.i395.3153 = zext i8 %31 to i32 *)
cast v_conv4_i_i395_3153@uint32 v31@uint8;
(*   %shr.i.i396.3154 = ashr i32 %conv4.i.i395.3153, 1 *)
(* You may need to modify here *)
split v_shr_i_i396_3154 tmp_to_be_used v_conv4_i_i395_3153 1;
(*   %conv5.i.i397.3155 = trunc i32 %shr.i.i396.3154 to i8 *)
split tmp_v_shr_i_i396_3154 v_conv5_i_i397_3155 v_shr_i_i396_3154 8;
vpc v_conv5_i_i397_3155@uint8 v_conv5_i_i397_3155@uint32;
(*   %conv6.i.i398.3156 = zext i8 %30 to i32 *)
cast v_conv6_i_i398_3156@uint32 v30@uint8;
(*   %shl.i.i399.3157 = shl i32 %conv6.i.i398.3156, 1 *)
shls discard_105 v_shl_i_i399_3157 v_conv6_i_i398_3156 1;
(*   %conv7.i.i400.3158 = trunc i32 %shl.i.i399.3157 to i8 *)
split tmp_v_shl_i_i399_3157 v_conv7_i_i400_3158 v_shl_i_i399_3157 8;
vpc v_conv7_i_i400_3158@uint8 v_conv7_i_i400_3158@uint32;
(*   %conv.i.i388.1.3 = zext i8 %conv5.i.i397.3155 to i32 *)
cast v_conv_i_i388_1_3@uint32 v_conv5_i_i397_3155@uint8;
(*   %and.i.i389.1.3 = and i32 %conv.i.i388.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i389_1_3 v_conv_i_i388_1_3 (0x1)@uint32;
(*   %conv1.i.i390.1.3 = zext i8 %conv7.i.i400.3158 to i32 *)
cast v_conv1_i_i390_1_3@uint32 v_conv7_i_i400_3158@uint8;
(*   %mul.i.i391.1.3 = mul nsw i32 %and.i.i389.1.3, %conv1.i.i390.1.3 *)
mul v_mul_i_i391_1_3 v_and_i_i389_1_3 v_conv1_i_i390_1_3;
(*   %conv2.i.i392.1.3 = zext i8 %conv3.i.i394.3152 to i32 *)
cast v_conv2_i_i392_1_3@uint32 v_conv3_i_i394_3152@uint8;
(*   %xor.i.i393.1.3 = xor i32 %conv2.i.i392.1.3, %mul.i.i391.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i393_1_3 v_conv2_i_i392_1_3 v_mul_i_i391_1_3;
(*   %conv3.i.i394.1.3 = trunc i32 %xor.i.i393.1.3 to i8 *)
split tmp_v_xor_i_i393_1_3 v_conv3_i_i394_1_3 v_xor_i_i393_1_3 8;
vpc v_conv3_i_i394_1_3@uint8 v_conv3_i_i394_1_3@uint32;
(*   %conv4.i.i395.1.3 = zext i8 %conv5.i.i397.3155 to i32 *)
cast v_conv4_i_i395_1_3@uint32 v_conv5_i_i397_3155@uint8;
(*   %shr.i.i396.1.3 = ashr i32 %conv4.i.i395.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i396_1_3 tmp_to_be_used v_conv4_i_i395_1_3 1;
(*   %conv5.i.i397.1.3 = trunc i32 %shr.i.i396.1.3 to i8 *)
split tmp_v_shr_i_i396_1_3 v_conv5_i_i397_1_3 v_shr_i_i396_1_3 8;
vpc v_conv5_i_i397_1_3@uint8 v_conv5_i_i397_1_3@uint32;
(*   %conv6.i.i398.1.3 = zext i8 %conv7.i.i400.3158 to i32 *)
cast v_conv6_i_i398_1_3@uint32 v_conv7_i_i400_3158@uint8;
(*   %shl.i.i399.1.3 = shl i32 %conv6.i.i398.1.3, 1 *)
shls discard_106 v_shl_i_i399_1_3 v_conv6_i_i398_1_3 1;
(*   %conv7.i.i400.1.3 = trunc i32 %shl.i.i399.1.3 to i8 *)
split tmp_v_shl_i_i399_1_3 v_conv7_i_i400_1_3 v_shl_i_i399_1_3 8;
vpc v_conv7_i_i400_1_3@uint8 v_conv7_i_i400_1_3@uint32;
(*   %conv.i.i388.2.3 = zext i8 %conv5.i.i397.1.3 to i32 *)
cast v_conv_i_i388_2_3@uint32 v_conv5_i_i397_1_3@uint8;
(*   %and.i.i389.2.3 = and i32 %conv.i.i388.2.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i389_2_3 v_conv_i_i388_2_3 (0x1)@uint32;
(*   %conv1.i.i390.2.3 = zext i8 %conv7.i.i400.1.3 to i32 *)
cast v_conv1_i_i390_2_3@uint32 v_conv7_i_i400_1_3@uint8;
(*   %mul.i.i391.2.3 = mul nsw i32 %and.i.i389.2.3, %conv1.i.i390.2.3 *)
mul v_mul_i_i391_2_3 v_and_i_i389_2_3 v_conv1_i_i390_2_3;
(*   %conv2.i.i392.2.3 = zext i8 %conv3.i.i394.1.3 to i32 *)
cast v_conv2_i_i392_2_3@uint32 v_conv3_i_i394_1_3@uint8;
(*   %xor.i.i393.2.3 = xor i32 %conv2.i.i392.2.3, %mul.i.i391.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i393_2_3 v_conv2_i_i392_2_3 v_mul_i_i391_2_3;
(*   %conv3.i.i394.2.3 = trunc i32 %xor.i.i393.2.3 to i8 *)
split tmp_v_xor_i_i393_2_3 v_conv3_i_i394_2_3 v_xor_i_i393_2_3 8;
vpc v_conv3_i_i394_2_3@uint8 v_conv3_i_i394_2_3@uint32;
(*   %conv4.i.i395.2.3 = zext i8 %conv5.i.i397.1.3 to i32 *)
cast v_conv4_i_i395_2_3@uint32 v_conv5_i_i397_1_3@uint8;
(*   %shr.i.i396.2.3 = ashr i32 %conv4.i.i395.2.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i396_2_3 tmp_to_be_used v_conv4_i_i395_2_3 1;
(*   %conv5.i.i397.2.3 = trunc i32 %shr.i.i396.2.3 to i8 *)
split tmp_v_shr_i_i396_2_3 v_conv5_i_i397_2_3 v_shr_i_i396_2_3 8;
vpc v_conv5_i_i397_2_3@uint8 v_conv5_i_i397_2_3@uint32;
(*   %conv6.i.i398.2.3 = zext i8 %conv7.i.i400.1.3 to i32 *)
cast v_conv6_i_i398_2_3@uint32 v_conv7_i_i400_1_3@uint8;
(*   %shl.i.i399.2.3 = shl i32 %conv6.i.i398.2.3, 1 *)
shls discard_107 v_shl_i_i399_2_3 v_conv6_i_i398_2_3 1;
(*   %conv7.i.i400.2.3 = trunc i32 %shl.i.i399.2.3 to i8 *)
split tmp_v_shl_i_i399_2_3 v_conv7_i_i400_2_3 v_shl_i_i399_2_3 8;
vpc v_conv7_i_i400_2_3@uint8 v_conv7_i_i400_2_3@uint32;
(*   %conv.i.i388.3.3 = zext i8 %conv5.i.i397.2.3 to i32 *)
cast v_conv_i_i388_3_3@uint32 v_conv5_i_i397_2_3@uint8;
(*   %and.i.i389.3.3 = and i32 %conv.i.i388.3.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i389_3_3 v_conv_i_i388_3_3 (0x1)@uint32;
(*   %conv1.i.i390.3.3 = zext i8 %conv7.i.i400.2.3 to i32 *)
cast v_conv1_i_i390_3_3@uint32 v_conv7_i_i400_2_3@uint8;
(*   %mul.i.i391.3.3 = mul nsw i32 %and.i.i389.3.3, %conv1.i.i390.3.3 *)
mul v_mul_i_i391_3_3 v_and_i_i389_3_3 v_conv1_i_i390_3_3;
(*   %conv2.i.i392.3.3 = zext i8 %conv3.i.i394.2.3 to i32 *)
cast v_conv2_i_i392_3_3@uint32 v_conv3_i_i394_2_3@uint8;
(*   %xor.i.i393.3.3 = xor i32 %conv2.i.i392.3.3, %mul.i.i391.3.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i393_3_3 v_conv2_i_i392_3_3 v_mul_i_i391_3_3;
(*   %conv3.i.i394.3.3 = trunc i32 %xor.i.i393.3.3 to i8 *)
split tmp_v_xor_i_i393_3_3 v_conv3_i_i394_3_3 v_xor_i_i393_3_3 8;
vpc v_conv3_i_i394_3_3@uint8 v_conv3_i_i394_3_3@uint32;
(*   %conv4.i.i395.3.3 = zext i8 %conv5.i.i397.2.3 to i32 *)
cast v_conv4_i_i395_3_3@uint32 v_conv5_i_i397_2_3@uint8;
(*   %shr.i.i396.3.3 = ashr i32 %conv4.i.i395.3.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i396_3_3 tmp_to_be_used v_conv4_i_i395_3_3 1;
(*   %conv5.i.i397.3.3 = trunc i32 %shr.i.i396.3.3 to i8 *)
split tmp_v_shr_i_i396_3_3 v_conv5_i_i397_3_3 v_shr_i_i396_3_3 8;
vpc v_conv5_i_i397_3_3@uint8 v_conv5_i_i397_3_3@uint32;
(*   %conv6.i.i398.3.3 = zext i8 %conv7.i.i400.2.3 to i32 *)
cast v_conv6_i_i398_3_3@uint32 v_conv7_i_i400_2_3@uint8;
(*   %shl.i.i399.3.3 = shl i32 %conv6.i.i398.3.3, 1 *)
shls discard_108 v_shl_i_i399_3_3 v_conv6_i_i398_3_3 1;
(*   %conv7.i.i400.3.3 = trunc i32 %shl.i.i399.3.3 to i8 *)
split tmp_v_shl_i_i399_3_3 v_conv7_i_i400_3_3 v_shl_i_i399_3_3 8;
vpc v_conv7_i_i400_3_3@uint8 v_conv7_i_i400_3_3@uint32;
(*   %conv.i.i388.4.3 = zext i8 %conv5.i.i397.3.3 to i32 *)
cast v_conv_i_i388_4_3@uint32 v_conv5_i_i397_3_3@uint8;
(*   %and.i.i389.4.3 = and i32 %conv.i.i388.4.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i389_4_3 v_conv_i_i388_4_3 (0x1)@uint32;
(*   %conv1.i.i390.4.3 = zext i8 %conv7.i.i400.3.3 to i32 *)
cast v_conv1_i_i390_4_3@uint32 v_conv7_i_i400_3_3@uint8;
(*   %mul.i.i391.4.3 = mul nsw i32 %and.i.i389.4.3, %conv1.i.i390.4.3 *)
mul v_mul_i_i391_4_3 v_and_i_i389_4_3 v_conv1_i_i390_4_3;
(*   %conv2.i.i392.4.3 = zext i8 %conv3.i.i394.3.3 to i32 *)
cast v_conv2_i_i392_4_3@uint32 v_conv3_i_i394_3_3@uint8;
(*   %xor.i.i393.4.3 = xor i32 %conv2.i.i392.4.3, %mul.i.i391.4.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i393_4_3 v_conv2_i_i392_4_3 v_mul_i_i391_4_3;
(*   %conv3.i.i394.4.3 = trunc i32 %xor.i.i393.4.3 to i8 *)
split tmp_v_xor_i_i393_4_3 v_conv3_i_i394_4_3 v_xor_i_i393_4_3 8;
vpc v_conv3_i_i394_4_3@uint8 v_conv3_i_i394_4_3@uint32;
(*   %conv4.i.i395.4.3 = zext i8 %conv5.i.i397.3.3 to i32 *)
cast v_conv4_i_i395_4_3@uint32 v_conv5_i_i397_3_3@uint8;
(*   %shr.i.i396.4.3 = ashr i32 %conv4.i.i395.4.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i396_4_3 tmp_to_be_used v_conv4_i_i395_4_3 1;
(*   %conv5.i.i397.4.3 = trunc i32 %shr.i.i396.4.3 to i8 *)
split tmp_v_shr_i_i396_4_3 v_conv5_i_i397_4_3 v_shr_i_i396_4_3 8;
vpc v_conv5_i_i397_4_3@uint8 v_conv5_i_i397_4_3@uint32;
(*   %conv6.i.i398.4.3 = zext i8 %conv7.i.i400.3.3 to i32 *)
cast v_conv6_i_i398_4_3@uint32 v_conv7_i_i400_3_3@uint8;
(*   %shl.i.i399.4.3 = shl i32 %conv6.i.i398.4.3, 1 *)
shls discard_109 v_shl_i_i399_4_3 v_conv6_i_i398_4_3 1;
(*   %conv7.i.i400.4.3 = trunc i32 %shl.i.i399.4.3 to i8 *)
split tmp_v_shl_i_i399_4_3 v_conv7_i_i400_4_3 v_shl_i_i399_4_3 8;
vpc v_conv7_i_i400_4_3@uint8 v_conv7_i_i400_4_3@uint32;
(*   %conv.i.i388.5.3 = zext i8 %conv5.i.i397.4.3 to i32 *)
cast v_conv_i_i388_5_3@uint32 v_conv5_i_i397_4_3@uint8;
(*   %and.i.i389.5.3 = and i32 %conv.i.i388.5.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i389_5_3 v_conv_i_i388_5_3 (0x1)@uint32;
(*   %conv1.i.i390.5.3 = zext i8 %conv7.i.i400.4.3 to i32 *)
cast v_conv1_i_i390_5_3@uint32 v_conv7_i_i400_4_3@uint8;
(*   %mul.i.i391.5.3 = mul nsw i32 %and.i.i389.5.3, %conv1.i.i390.5.3 *)
mul v_mul_i_i391_5_3 v_and_i_i389_5_3 v_conv1_i_i390_5_3;
(*   %conv2.i.i392.5.3 = zext i8 %conv3.i.i394.4.3 to i32 *)
cast v_conv2_i_i392_5_3@uint32 v_conv3_i_i394_4_3@uint8;
(*   %xor.i.i393.5.3 = xor i32 %conv2.i.i392.5.3, %mul.i.i391.5.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i393_5_3 v_conv2_i_i392_5_3 v_mul_i_i391_5_3;
(*   %conv3.i.i394.5.3 = trunc i32 %xor.i.i393.5.3 to i8 *)
split tmp_v_xor_i_i393_5_3 v_conv3_i_i394_5_3 v_xor_i_i393_5_3 8;
vpc v_conv3_i_i394_5_3@uint8 v_conv3_i_i394_5_3@uint32;
(*   %conv4.i.i395.5.3 = zext i8 %conv5.i.i397.4.3 to i32 *)
cast v_conv4_i_i395_5_3@uint32 v_conv5_i_i397_4_3@uint8;
(*   %shr.i.i396.5.3 = ashr i32 %conv4.i.i395.5.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i396_5_3 tmp_to_be_used v_conv4_i_i395_5_3 1;
(*   %conv5.i.i397.5.3 = trunc i32 %shr.i.i396.5.3 to i8 *)
split tmp_v_shr_i_i396_5_3 v_conv5_i_i397_5_3 v_shr_i_i396_5_3 8;
vpc v_conv5_i_i397_5_3@uint8 v_conv5_i_i397_5_3@uint32;
(*   %conv6.i.i398.5.3 = zext i8 %conv7.i.i400.4.3 to i32 *)
cast v_conv6_i_i398_5_3@uint32 v_conv7_i_i400_4_3@uint8;
(*   %shl.i.i399.5.3 = shl i32 %conv6.i.i398.5.3, 1 *)
shls discard_110 v_shl_i_i399_5_3 v_conv6_i_i398_5_3 1;
(*   %conv7.i.i400.5.3 = trunc i32 %shl.i.i399.5.3 to i8 *)
split tmp_v_shl_i_i399_5_3 v_conv7_i_i400_5_3 v_shl_i_i399_5_3 8;
vpc v_conv7_i_i400_5_3@uint8 v_conv7_i_i400_5_3@uint32;
(*   %conv.i.i388.6.3 = zext i8 %conv5.i.i397.5.3 to i32 *)
cast v_conv_i_i388_6_3@uint32 v_conv5_i_i397_5_3@uint8;
(*   %and.i.i389.6.3 = and i32 %conv.i.i388.6.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i389_6_3 v_conv_i_i388_6_3 (0x1)@uint32;
(*   %conv1.i.i390.6.3 = zext i8 %conv7.i.i400.5.3 to i32 *)
cast v_conv1_i_i390_6_3@uint32 v_conv7_i_i400_5_3@uint8;
(*   %mul.i.i391.6.3 = mul nsw i32 %and.i.i389.6.3, %conv1.i.i390.6.3 *)
mul v_mul_i_i391_6_3 v_and_i_i389_6_3 v_conv1_i_i390_6_3;
(*   %conv2.i.i392.6.3 = zext i8 %conv3.i.i394.5.3 to i32 *)
cast v_conv2_i_i392_6_3@uint32 v_conv3_i_i394_5_3@uint8;
(*   %xor.i.i393.6.3 = xor i32 %conv2.i.i392.6.3, %mul.i.i391.6.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i393_6_3 v_conv2_i_i392_6_3 v_mul_i_i391_6_3;
(*   %conv3.i.i394.6.3 = trunc i32 %xor.i.i393.6.3 to i8 *)
split tmp_v_xor_i_i393_6_3 v_conv3_i_i394_6_3 v_xor_i_i393_6_3 8;
vpc v_conv3_i_i394_6_3@uint8 v_conv3_i_i394_6_3@uint32;
(*   %conv4.i.i395.6.3 = zext i8 %conv5.i.i397.5.3 to i32 *)
cast v_conv4_i_i395_6_3@uint32 v_conv5_i_i397_5_3@uint8;
(*   %shr.i.i396.6.3 = ashr i32 %conv4.i.i395.6.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i396_6_3 tmp_to_be_used v_conv4_i_i395_6_3 1;
(*   %conv5.i.i397.6.3 = trunc i32 %shr.i.i396.6.3 to i8 *)
split tmp_v_shr_i_i396_6_3 v_conv5_i_i397_6_3 v_shr_i_i396_6_3 8;
vpc v_conv5_i_i397_6_3@uint8 v_conv5_i_i397_6_3@uint32;
(*   %conv6.i.i398.6.3 = zext i8 %conv7.i.i400.5.3 to i32 *)
cast v_conv6_i_i398_6_3@uint32 v_conv7_i_i400_5_3@uint8;
(*   %shl.i.i399.6.3 = shl i32 %conv6.i.i398.6.3, 1 *)
shls discard_111 v_shl_i_i399_6_3 v_conv6_i_i398_6_3 1;
(*   %conv7.i.i400.6.3 = trunc i32 %shl.i.i399.6.3 to i8 *)
split tmp_v_shl_i_i399_6_3 v_conv7_i_i400_6_3 v_shl_i_i399_6_3 8;
vpc v_conv7_i_i400_6_3@uint8 v_conv7_i_i400_6_3@uint32;
(*   %conv.i.i388.7.3 = zext i8 %conv5.i.i397.6.3 to i32 *)
cast v_conv_i_i388_7_3@uint32 v_conv5_i_i397_6_3@uint8;
(*   %and.i.i389.7.3 = and i32 %conv.i.i388.7.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i389_7_3 v_conv_i_i388_7_3 (0x1)@uint32;
(*   %conv1.i.i390.7.3 = zext i8 %conv7.i.i400.6.3 to i32 *)
cast v_conv1_i_i390_7_3@uint32 v_conv7_i_i400_6_3@uint8;
(*   %mul.i.i391.7.3 = mul nsw i32 %and.i.i389.7.3, %conv1.i.i390.7.3 *)
mul v_mul_i_i391_7_3 v_and_i_i389_7_3 v_conv1_i_i390_7_3;
(*   %conv2.i.i392.7.3 = zext i8 %conv3.i.i394.6.3 to i32 *)
cast v_conv2_i_i392_7_3@uint32 v_conv3_i_i394_6_3@uint8;
(*   %xor.i.i393.7.3 = xor i32 %conv2.i.i392.7.3, %mul.i.i391.7.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i393_7_3 v_conv2_i_i392_7_3 v_mul_i_i391_7_3;
(*   %conv3.i.i394.7.3 = trunc i32 %xor.i.i393.7.3 to i8 *)
split tmp_v_xor_i_i393_7_3 v_conv3_i_i394_7_3 v_xor_i_i393_7_3 8;
vpc v_conv3_i_i394_7_3@uint8 v_conv3_i_i394_7_3@uint32;
(*   %arrayidx6.i404.3 = getelementptr inbounds i8, i8* %add.ptr10, i64 3 *)
(*   store i8 %conv3.i.i394.7.3, i8* %arrayidx6.i404.3, align 1 *)
mov cc_19 v_conv3_i_i394_7_3;
(*   %add.ptr13 = getelementptr inbounds i8, i8* %r, i64 4 *)
(*   %scevgep91 = getelementptr [32 x i8], [32 x i8]* %cc, i64 0, i64 4 *)
(*   %scevgep96 = getelementptr [32 x i8], [32 x i8]* %dd, i64 0, i64 4 *)
(*   %32 = load i8, i8* %scevgep91, align 1 *)
mov v32 cc_4;
(*   %conv.i352 = zext i8 %32 to i32 *)
cast v_conv_i352@uint32 v32@uint8;
(*   %33 = load i8, i8* %add.ptr13, align 1 *)
mov v33 r_4;
(*   %conv5.i357 = zext i8 %33 to i32 *)
cast v_conv5_i357@uint32 v33@uint8;
(*   %xor.i358 = xor i32 %conv.i352, %conv5.i357 *)
(* You may need to modify here *)
xor uint32 v_xor_i358 v_conv_i352 v_conv5_i357;
(*   %conv6.i359 = trunc i32 %xor.i358 to i8 *)
split tmp_v_xor_i358 v_conv6_i359 v_xor_i358 8;
vpc v_conv6_i359@uint8 v_conv6_i359@uint32;
(*   store i8 %conv6.i359, i8* %scevgep96, align 1 *)
mov dd_4 v_conv6_i359;
(*   %scevgep94.1 = getelementptr i8, i8* %scevgep91, i64 1 *)
(*   %34 = load i8, i8* %scevgep94.1, align 1 *)
mov v34 cc_5;
(*   %conv.i352.1 = zext i8 %34 to i32 *)
cast v_conv_i352_1@uint32 v34@uint8;
(*   %scevgep95.1 = getelementptr i8, i8* %add.ptr13, i64 1 *)
(*   %35 = load i8, i8* %scevgep95.1, align 1 *)
mov v35 r_5;
(*   %conv5.i357.1 = zext i8 %35 to i32 *)
cast v_conv5_i357_1@uint32 v35@uint8;
(*   %xor.i358.1 = xor i32 %conv.i352.1, %conv5.i357.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i358_1 v_conv_i352_1 v_conv5_i357_1;
(*   %conv6.i359.1 = trunc i32 %xor.i358.1 to i8 *)
split tmp_v_xor_i358_1 v_conv6_i359_1 v_xor_i358_1 8;
vpc v_conv6_i359_1@uint8 v_conv6_i359_1@uint32;
(*   %scevgep97.1 = getelementptr i8, i8* %scevgep96, i64 1 *)
(*   store i8 %conv6.i359.1, i8* %scevgep97.1, align 1 *)
mov dd_5 v_conv6_i359_1;
(*   %scevgep94.2 = getelementptr i8, i8* %scevgep91, i64 2 *)
(*   %36 = load i8, i8* %scevgep94.2, align 1 *)
mov v36 cc_6;
(*   %conv.i352.2 = zext i8 %36 to i32 *)
cast v_conv_i352_2@uint32 v36@uint8;
(*   %scevgep95.2 = getelementptr i8, i8* %add.ptr13, i64 2 *)
(*   %37 = load i8, i8* %scevgep95.2, align 1 *)
mov v37 r_6;
(*   %conv5.i357.2 = zext i8 %37 to i32 *)
cast v_conv5_i357_2@uint32 v37@uint8;
(*   %xor.i358.2 = xor i32 %conv.i352.2, %conv5.i357.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i358_2 v_conv_i352_2 v_conv5_i357_2;
(*   %conv6.i359.2 = trunc i32 %xor.i358.2 to i8 *)
split tmp_v_xor_i358_2 v_conv6_i359_2 v_xor_i358_2 8;
vpc v_conv6_i359_2@uint8 v_conv6_i359_2@uint32;
(*   %scevgep97.2 = getelementptr i8, i8* %scevgep96, i64 2 *)
(*   store i8 %conv6.i359.2, i8* %scevgep97.2, align 1 *)
mov dd_6 v_conv6_i359_2;
(*   %scevgep94.3 = getelementptr i8, i8* %scevgep91, i64 3 *)
(*   %38 = load i8, i8* %scevgep94.3, align 1 *)
mov v38 cc_7;
(*   %conv.i352.3 = zext i8 %38 to i32 *)
cast v_conv_i352_3@uint32 v38@uint8;
(*   %scevgep95.3 = getelementptr i8, i8* %add.ptr13, i64 3 *)
(*   %39 = load i8, i8* %scevgep95.3, align 1 *)
mov v39 r_7;
(*   %conv5.i357.3 = zext i8 %39 to i32 *)
cast v_conv5_i357_3@uint32 v39@uint8;
(*   %xor.i358.3 = xor i32 %conv.i352.3, %conv5.i357.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i358_3 v_conv_i352_3 v_conv5_i357_3;
(*   %conv6.i359.3 = trunc i32 %xor.i358.3 to i8 *)
split tmp_v_xor_i358_3 v_conv6_i359_3 v_xor_i358_3 8;
vpc v_conv6_i359_3@uint8 v_conv6_i359_3@uint32;
(*   %scevgep97.3 = getelementptr i8, i8* %scevgep96, i64 3 *)
(*   store i8 %conv6.i359.3, i8* %scevgep97.3, align 1 *)
mov dd_7 v_conv6_i359_3;
(*   %scevgep52 = getelementptr [32 x i8], [32 x i8]* %dd, i64 0, i64 8 *)
(*   %scevgep5253 = bitcast i8* %scevgep52 to [32 x i8]* *)
(*   %scevgep61 = getelementptr [32 x i8], [32 x i8]* %cc, i64 0, i64 8 *)
(*   %scevgep6162 = bitcast i8* %scevgep61 to [32 x i8]* *)
(*   %scevgep72 = getelementptr [32 x i8], [32 x i8]* %cc, i64 0, i64 12 *)
(*   %scevgep7273 = bitcast i8* %scevgep72 to [32 x i8]* *)
(*   %scevgep78 = getelementptr [32 x i8], [32 x i8]* %dd, i64 0, i64 16 *)
(*   %scevgep7879 = bitcast i8* %scevgep78 to [32 x i8]* *)
(*   %scevgep58 = getelementptr [32 x i8], [32 x i8]* %scevgep5253, i64 0, i64 0 *)
(*   %scevgep59 = getelementptr i8, i8* %scevgep58, i64 -4 *)
(*   %40 = load i8, i8* %scevgep59, align 1 *)
mov v40 dd_4;
(*   %conv.i317 = zext i8 %40 to i32 *)
cast v_conv_i317@uint32 v40@uint8;
(*   %scevgep65 = getelementptr [32 x i8], [32 x i8]* %scevgep6162, i64 0, i64 0 *)
(*   %41 = load i8, i8* %scevgep65, align 1 *)
mov v41 cc_8;
(*   %conv5.i322 = zext i8 %41 to i32 *)
cast v_conv5_i322@uint32 v41@uint8;
(*   %xor.i323 = xor i32 %conv.i317, %conv5.i322 *)
(* You may need to modify here *)
xor uint32 v_xor_i323 v_conv_i317 v_conv5_i322;
(*   %conv6.i324 = trunc i32 %xor.i323 to i8 *)
split tmp_v_xor_i323 v_conv6_i324 v_xor_i323 8;
vpc v_conv6_i324@uint8 v_conv6_i324@uint32;
(*   %scevgep60 = getelementptr [32 x i8], [32 x i8]* %scevgep5253, i64 0, i64 0 *)
(*   store i8 %conv6.i324, i8* %scevgep60, align 1 *)
mov dd_8 v_conv6_i324;
(*   %scevgep58.1 = getelementptr [32 x i8], [32 x i8]* %scevgep5253, i64 0, i64 1 *)
(*   %scevgep59.1 = getelementptr i8, i8* %scevgep58.1, i64 -4 *)
(*   %42 = load i8, i8* %scevgep59.1, align 1 *)
mov v42 dd_5;
(*   %conv.i317.1 = zext i8 %42 to i32 *)
cast v_conv_i317_1@uint32 v42@uint8;
(*   %scevgep65.1 = getelementptr [32 x i8], [32 x i8]* %scevgep6162, i64 0, i64 1 *)
(*   %43 = load i8, i8* %scevgep65.1, align 1 *)
mov v43 cc_9;
(*   %conv5.i322.1 = zext i8 %43 to i32 *)
cast v_conv5_i322_1@uint32 v43@uint8;
(*   %xor.i323.1 = xor i32 %conv.i317.1, %conv5.i322.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i323_1 v_conv_i317_1 v_conv5_i322_1;
(*   %conv6.i324.1 = trunc i32 %xor.i323.1 to i8 *)
split tmp_v_xor_i323_1 v_conv6_i324_1 v_xor_i323_1 8;
vpc v_conv6_i324_1@uint8 v_conv6_i324_1@uint32;
(*   %scevgep60.1 = getelementptr [32 x i8], [32 x i8]* %scevgep5253, i64 0, i64 1 *)
(*   store i8 %conv6.i324.1, i8* %scevgep60.1, align 1 *)
mov dd_9 v_conv6_i324_1;
(*   %scevgep58.2 = getelementptr [32 x i8], [32 x i8]* %scevgep5253, i64 0, i64 2 *)
(*   %scevgep59.2 = getelementptr i8, i8* %scevgep58.2, i64 -4 *)
(*   %44 = load i8, i8* %scevgep59.2, align 1 *)
mov v44 dd_6;
(*   %conv.i317.2 = zext i8 %44 to i32 *)
cast v_conv_i317_2@uint32 v44@uint8;
(*   %scevgep65.2 = getelementptr [32 x i8], [32 x i8]* %scevgep6162, i64 0, i64 2 *)
(*   %45 = load i8, i8* %scevgep65.2, align 1 *)
mov v45 cc_10;
(*   %conv5.i322.2 = zext i8 %45 to i32 *)
cast v_conv5_i322_2@uint32 v45@uint8;
(*   %xor.i323.2 = xor i32 %conv.i317.2, %conv5.i322.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i323_2 v_conv_i317_2 v_conv5_i322_2;
(*   %conv6.i324.2 = trunc i32 %xor.i323.2 to i8 *)
split tmp_v_xor_i323_2 v_conv6_i324_2 v_xor_i323_2 8;
vpc v_conv6_i324_2@uint8 v_conv6_i324_2@uint32;
(*   %scevgep60.2 = getelementptr [32 x i8], [32 x i8]* %scevgep5253, i64 0, i64 2 *)
(*   store i8 %conv6.i324.2, i8* %scevgep60.2, align 1 *)
mov dd_10 v_conv6_i324_2;
(*   %scevgep58.3 = getelementptr [32 x i8], [32 x i8]* %scevgep5253, i64 0, i64 3 *)
(*   %scevgep59.3 = getelementptr i8, i8* %scevgep58.3, i64 -4 *)
(*   %46 = load i8, i8* %scevgep59.3, align 1 *)
mov v46 dd_7;
(*   %conv.i317.3 = zext i8 %46 to i32 *)
cast v_conv_i317_3@uint32 v46@uint8;
(*   %scevgep65.3 = getelementptr [32 x i8], [32 x i8]* %scevgep6162, i64 0, i64 3 *)
(*   %47 = load i8, i8* %scevgep65.3, align 1 *)
mov v47 cc_11;
(*   %conv5.i322.3 = zext i8 %47 to i32 *)
cast v_conv5_i322_3@uint32 v47@uint8;
(*   %xor.i323.3 = xor i32 %conv.i317.3, %conv5.i322.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i323_3 v_conv_i317_3 v_conv5_i322_3;
(*   %conv6.i324.3 = trunc i32 %xor.i323.3 to i8 *)
split tmp_v_xor_i323_3 v_conv6_i324_3 v_xor_i323_3 8;
vpc v_conv6_i324_3@uint8 v_conv6_i324_3@uint32;
(*   %scevgep60.3 = getelementptr [32 x i8], [32 x i8]* %scevgep5253, i64 0, i64 3 *)
(*   store i8 %conv6.i324.3, i8* %scevgep60.3, align 1 *)
mov dd_11 v_conv6_i324_3;
(*   %scevgep69 = getelementptr [32 x i8], [32 x i8]* %scevgep5253, i64 0, i64 0 *)
(*   %48 = load i8, i8* %scevgep69, align 1 *)
mov v48 dd_8;
(*   %conv.i292 = zext i8 %48 to i32 *)
cast v_conv_i292@uint32 v48@uint8;
(*   %scevgep76 = getelementptr [32 x i8], [32 x i8]* %scevgep7273, i64 0, i64 0 *)
(*   %49 = load i8, i8* %scevgep76, align 1 *)
mov v49 cc_12;
(*   %conv5.i297 = zext i8 %49 to i32 *)
cast v_conv5_i297@uint32 v49@uint8;
(*   %xor.i298 = xor i32 %conv.i292, %conv5.i297 *)
(* You may need to modify here *)
xor uint32 v_xor_i298 v_conv_i292 v_conv5_i297;
(*   %conv6.i299 = trunc i32 %xor.i298 to i8 *)
split tmp_v_xor_i298 v_conv6_i299 v_xor_i298 8;
vpc v_conv6_i299@uint8 v_conv6_i299@uint32;
(*   %scevgep70 = getelementptr [32 x i8], [32 x i8]* %scevgep5253, i64 0, i64 0 *)
(*   %scevgep71 = getelementptr i8, i8* %scevgep70, i64 4 *)
(*   store i8 %conv6.i299, i8* %scevgep71, align 1 *)
mov dd_12 v_conv6_i299;
(*   %scevgep69.1 = getelementptr [32 x i8], [32 x i8]* %scevgep5253, i64 0, i64 1 *)
(*   %50 = load i8, i8* %scevgep69.1, align 1 *)
mov v50 dd_9;
(*   %conv.i292.1 = zext i8 %50 to i32 *)
cast v_conv_i292_1@uint32 v50@uint8;
(*   %scevgep76.1 = getelementptr [32 x i8], [32 x i8]* %scevgep7273, i64 0, i64 1 *)
(*   %51 = load i8, i8* %scevgep76.1, align 1 *)
mov v51 cc_13;
(*   %conv5.i297.1 = zext i8 %51 to i32 *)
cast v_conv5_i297_1@uint32 v51@uint8;
(*   %xor.i298.1 = xor i32 %conv.i292.1, %conv5.i297.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i298_1 v_conv_i292_1 v_conv5_i297_1;
(*   %conv6.i299.1 = trunc i32 %xor.i298.1 to i8 *)
split tmp_v_xor_i298_1 v_conv6_i299_1 v_xor_i298_1 8;
vpc v_conv6_i299_1@uint8 v_conv6_i299_1@uint32;
(*   %scevgep70.1 = getelementptr [32 x i8], [32 x i8]* %scevgep5253, i64 0, i64 1 *)
(*   %scevgep71.1 = getelementptr i8, i8* %scevgep70.1, i64 4 *)
(*   store i8 %conv6.i299.1, i8* %scevgep71.1, align 1 *)
mov dd_13 v_conv6_i299_1;
(*   %scevgep69.2 = getelementptr [32 x i8], [32 x i8]* %scevgep5253, i64 0, i64 2 *)
(*   %52 = load i8, i8* %scevgep69.2, align 1 *)
mov v52 dd_10;
(*   %conv.i292.2 = zext i8 %52 to i32 *)
cast v_conv_i292_2@uint32 v52@uint8;
(*   %scevgep76.2 = getelementptr [32 x i8], [32 x i8]* %scevgep7273, i64 0, i64 2 *)
(*   %53 = load i8, i8* %scevgep76.2, align 1 *)
mov v53 cc_14;
(*   %conv5.i297.2 = zext i8 %53 to i32 *)
cast v_conv5_i297_2@uint32 v53@uint8;
(*   %xor.i298.2 = xor i32 %conv.i292.2, %conv5.i297.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i298_2 v_conv_i292_2 v_conv5_i297_2;
(*   %conv6.i299.2 = trunc i32 %xor.i298.2 to i8 *)
split tmp_v_xor_i298_2 v_conv6_i299_2 v_xor_i298_2 8;
vpc v_conv6_i299_2@uint8 v_conv6_i299_2@uint32;
(*   %scevgep70.2 = getelementptr [32 x i8], [32 x i8]* %scevgep5253, i64 0, i64 2 *)
(*   %scevgep71.2 = getelementptr i8, i8* %scevgep70.2, i64 4 *)
(*   store i8 %conv6.i299.2, i8* %scevgep71.2, align 1 *)
mov dd_14 v_conv6_i299_2;
(*   %scevgep69.3 = getelementptr [32 x i8], [32 x i8]* %scevgep5253, i64 0, i64 3 *)
(*   %54 = load i8, i8* %scevgep69.3, align 1 *)
mov v54 dd_11;
(*   %conv.i292.3 = zext i8 %54 to i32 *)
cast v_conv_i292_3@uint32 v54@uint8;
(*   %scevgep76.3 = getelementptr [32 x i8], [32 x i8]* %scevgep7273, i64 0, i64 3 *)
(*   %55 = load i8, i8* %scevgep76.3, align 1 *)
mov v55 cc_15;
(*   %conv5.i297.3 = zext i8 %55 to i32 *)
cast v_conv5_i297_3@uint32 v55@uint8;
(*   %xor.i298.3 = xor i32 %conv.i292.3, %conv5.i297.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i298_3 v_conv_i292_3 v_conv5_i297_3;
(*   %conv6.i299.3 = trunc i32 %xor.i298.3 to i8 *)
split tmp_v_xor_i298_3 v_conv6_i299_3 v_xor_i298_3 8;
vpc v_conv6_i299_3@uint8 v_conv6_i299_3@uint32;
(*   %scevgep70.3 = getelementptr [32 x i8], [32 x i8]* %scevgep5253, i64 0, i64 3 *)
(*   %scevgep71.3 = getelementptr i8, i8* %scevgep70.3, i64 4 *)
(*   store i8 %conv6.i299.3, i8* %scevgep71.3, align 1 *)
mov dd_15 v_conv6_i299_3;
(*   %add.ptr67 = getelementptr inbounds i8, i8* %r, i64 4 *)
(*   %scevgep84 = getelementptr [32 x i8], [32 x i8]* %scevgep7879, i64 0, i64 0 *)
(*   %scevgep85 = getelementptr i8, i8* %scevgep84, i64 -4 *)
(*   %56 = load i8, i8* %scevgep85, align 1 *)
mov v56 dd_12;
(*   %conv.i260 = zext i8 %56 to i32 *)
cast v_conv_i260@uint32 v56@uint8;
(*   %arrayidx4.i264 = getelementptr inbounds i8, i8* %add.ptr67, i64 1 *)
(*   %57 = load i8, i8* %arrayidx4.i264, align 1 *)
mov v57 r_5;
(*   %conv5.i265 = zext i8 %57 to i32 *)
cast v_conv5_i265@uint32 v57@uint8;
(*   %xor.i266 = xor i32 %conv.i260, %conv5.i265 *)
(* You may need to modify here *)
xor uint32 v_xor_i266 v_conv_i260 v_conv5_i265;
(*   %conv6.i267 = trunc i32 %xor.i266 to i8 *)
split tmp_v_xor_i266 v_conv6_i267 v_xor_i266 8;
vpc v_conv6_i267@uint8 v_conv6_i267@uint32;
(*   %scevgep86 = getelementptr [32 x i8], [32 x i8]* %scevgep7879, i64 0, i64 0 *)
(*   store i8 %conv6.i267, i8* %scevgep86, align 1 *)
mov dd_16 v_conv6_i267;
(*   %scevgep84.1 = getelementptr [32 x i8], [32 x i8]* %scevgep7879, i64 0, i64 1 *)
(*   %scevgep85.1 = getelementptr i8, i8* %scevgep84.1, i64 -4 *)
(*   %58 = load i8, i8* %scevgep85.1, align 1 *)
mov v58 dd_13;
(*   %conv.i260.1 = zext i8 %58 to i32 *)
cast v_conv_i260_1@uint32 v58@uint8;
(*   %arrayidx4.i264.1 = getelementptr inbounds i8, i8* %add.ptr67, i64 2 *)
(*   %59 = load i8, i8* %arrayidx4.i264.1, align 1 *)
mov v59 r_6;
(*   %conv5.i265.1 = zext i8 %59 to i32 *)
cast v_conv5_i265_1@uint32 v59@uint8;
(*   %xor.i266.1 = xor i32 %conv.i260.1, %conv5.i265.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i266_1 v_conv_i260_1 v_conv5_i265_1;
(*   %conv6.i267.1 = trunc i32 %xor.i266.1 to i8 *)
split tmp_v_xor_i266_1 v_conv6_i267_1 v_xor_i266_1 8;
vpc v_conv6_i267_1@uint8 v_conv6_i267_1@uint32;
(*   %scevgep86.1 = getelementptr [32 x i8], [32 x i8]* %scevgep7879, i64 0, i64 1 *)
(*   store i8 %conv6.i267.1, i8* %scevgep86.1, align 1 *)
mov dd_17 v_conv6_i267_1;
(*   %scevgep84.2 = getelementptr [32 x i8], [32 x i8]* %scevgep7879, i64 0, i64 2 *)
(*   %scevgep85.2 = getelementptr i8, i8* %scevgep84.2, i64 -4 *)
(*   %60 = load i8, i8* %scevgep85.2, align 1 *)
mov v60 dd_14;
(*   %conv.i260.2 = zext i8 %60 to i32 *)
cast v_conv_i260_2@uint32 v60@uint8;
(*   %arrayidx4.i264.2 = getelementptr inbounds i8, i8* %add.ptr67, i64 3 *)
(*   %61 = load i8, i8* %arrayidx4.i264.2, align 1 *)
mov v61 r_7;
(*   %conv5.i265.2 = zext i8 %61 to i32 *)
cast v_conv5_i265_2@uint32 v61@uint8;
(*   %xor.i266.2 = xor i32 %conv.i260.2, %conv5.i265.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i266_2 v_conv_i260_2 v_conv5_i265_2;
(*   %conv6.i267.2 = trunc i32 %xor.i266.2 to i8 *)
split tmp_v_xor_i266_2 v_conv6_i267_2 v_xor_i266_2 8;
vpc v_conv6_i267_2@uint8 v_conv6_i267_2@uint32;
(*   %scevgep86.2 = getelementptr [32 x i8], [32 x i8]* %scevgep7879, i64 0, i64 2 *)
(*   store i8 %conv6.i267.2, i8* %scevgep86.2, align 1 *)
mov dd_18 v_conv6_i267_2;
(*   %scevgep84.3 = getelementptr [32 x i8], [32 x i8]* %scevgep7879, i64 0, i64 3 *)
(*   %scevgep85.3 = getelementptr i8, i8* %scevgep84.3, i64 -4 *)
(*   %62 = load i8, i8* %scevgep85.3, align 1 *)
mov v62 dd_15;
(*   %conv.i260.3 = zext i8 %62 to i32 *)
cast v_conv_i260_3@uint32 v62@uint8;
(*   %63 = load i8, i8* %add.ptr67, align 1 *)
mov v63 r_4;
(*   %conv5.i265.3 = zext i8 %63 to i32 *)
cast v_conv5_i265_3@uint32 v63@uint8;
(*   %xor.i266.3 = xor i32 %conv.i260.3, %conv5.i265.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i266_3 v_conv_i260_3 v_conv5_i265_3;
(*   %conv6.i267.3 = trunc i32 %xor.i266.3 to i8 *)
split tmp_v_xor_i266_3 v_conv6_i267_3 v_xor_i266_3 8;
vpc v_conv6_i267_3@uint8 v_conv6_i267_3@uint32;
(*   %scevgep86.3 = getelementptr [32 x i8], [32 x i8]* %scevgep7879, i64 0, i64 3 *)
(*   store i8 %conv6.i267.3, i8* %scevgep86.3, align 1 *)
mov dd_19 v_conv6_i267_3;
(*   %scevgep44 = getelementptr [32 x i8], [32 x i8]* %dd, i64 0, i64 16 *)
(*   %scevgep48 = getelementptr [32 x i8], [32 x i8]* %cc, i64 0, i64 16 *)
(*   %64 = load i8, i8* %scevgep44, align 1 *)
mov v64 dd_16;
(*   %conv.i238 = zext i8 %64 to i32 *)
cast v_conv_i238@uint32 v64@uint8;
(*   %65 = load i8, i8* %scevgep48, align 1 *)
mov v65 cc_16;
(*   %conv5.i243 = zext i8 %65 to i32 *)
cast v_conv5_i243@uint32 v65@uint8;
(*   %xor.i244 = xor i32 %conv.i238, %conv5.i243 *)
(* You may need to modify here *)
xor uint32 v_xor_i244 v_conv_i238 v_conv5_i243;
(*   %conv6.i245 = trunc i32 %xor.i244 to i8 *)
split tmp_v_xor_i244 v_conv6_i245 v_xor_i244 8;
vpc v_conv6_i245@uint8 v_conv6_i245@uint32;
(*   store i8 %conv6.i245, i8* %c, align 1 *)
mov c_0 v_conv6_i245;
(*   %scevgep47.1 = getelementptr i8, i8* %scevgep44, i64 1 *)
(*   %66 = load i8, i8* %scevgep47.1, align 1 *)
mov v66 dd_17;
(*   %conv.i238.1 = zext i8 %66 to i32 *)
cast v_conv_i238_1@uint32 v66@uint8;
(*   %scevgep49.1 = getelementptr i8, i8* %scevgep48, i64 1 *)
(*   %67 = load i8, i8* %scevgep49.1, align 1 *)
mov v67 cc_17;
(*   %conv5.i243.1 = zext i8 %67 to i32 *)
cast v_conv5_i243_1@uint32 v67@uint8;
(*   %xor.i244.1 = xor i32 %conv.i238.1, %conv5.i243.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i244_1 v_conv_i238_1 v_conv5_i243_1;
(*   %conv6.i245.1 = trunc i32 %xor.i244.1 to i8 *)
split tmp_v_xor_i244_1 v_conv6_i245_1 v_xor_i244_1 8;
vpc v_conv6_i245_1@uint8 v_conv6_i245_1@uint32;
(*   %scevgep50.1 = getelementptr i8, i8* %c, i64 1 *)
(*   store i8 %conv6.i245.1, i8* %scevgep50.1, align 1 *)
mov c_1 v_conv6_i245_1;
(*   %scevgep47.2 = getelementptr i8, i8* %scevgep44, i64 2 *)
(*   %68 = load i8, i8* %scevgep47.2, align 1 *)
mov v68 dd_18;
(*   %conv.i238.2 = zext i8 %68 to i32 *)
cast v_conv_i238_2@uint32 v68@uint8;
(*   %scevgep49.2 = getelementptr i8, i8* %scevgep48, i64 2 *)
(*   %69 = load i8, i8* %scevgep49.2, align 1 *)
mov v69 cc_18;
(*   %conv5.i243.2 = zext i8 %69 to i32 *)
cast v_conv5_i243_2@uint32 v69@uint8;
(*   %xor.i244.2 = xor i32 %conv.i238.2, %conv5.i243.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i244_2 v_conv_i238_2 v_conv5_i243_2;
(*   %conv6.i245.2 = trunc i32 %xor.i244.2 to i8 *)
split tmp_v_xor_i244_2 v_conv6_i245_2 v_xor_i244_2 8;
vpc v_conv6_i245_2@uint8 v_conv6_i245_2@uint32;
(*   %scevgep50.2 = getelementptr i8, i8* %c, i64 2 *)
(*   store i8 %conv6.i245.2, i8* %scevgep50.2, align 1 *)
mov c_2 v_conv6_i245_2;
(*   %scevgep47.3 = getelementptr i8, i8* %scevgep44, i64 3 *)
(*   %70 = load i8, i8* %scevgep47.3, align 1 *)
mov v70 dd_19;
(*   %conv.i238.3 = zext i8 %70 to i32 *)
cast v_conv_i238_3@uint32 v70@uint8;
(*   %scevgep49.3 = getelementptr i8, i8* %scevgep48, i64 3 *)
(*   %71 = load i8, i8* %scevgep49.3, align 1 *)
mov v71 cc_19;
(*   %conv5.i243.3 = zext i8 %71 to i32 *)
cast v_conv5_i243_3@uint32 v71@uint8;
(*   %xor.i244.3 = xor i32 %conv.i238.3, %conv5.i243.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i244_3 v_conv_i238_3 v_conv5_i243_3;
(*   %conv6.i245.3 = trunc i32 %xor.i244.3 to i8 *)
split tmp_v_xor_i244_3 v_conv6_i245_3 v_xor_i244_3 8;
vpc v_conv6_i245_3@uint8 v_conv6_i245_3@uint32;
(*   %scevgep50.3 = getelementptr i8, i8* %c, i64 3 *)
(*   store i8 %conv6.i245.3, i8* %scevgep50.3, align 1 *)
mov c_3 v_conv6_i245_3;
(*   %72 = load i8, i8* %a, align 1 *)
mov v72 a_0;
(*   %scevgep42.1 = getelementptr i8, i8* %a, i64 1 *)
(*   %73 = load i8, i8* %scevgep42.1, align 1 *)
mov v73 a_1;
(*   %conv.i.i176.1 = zext i8 %73 to i32 *)
cast v_conv_i_i176_1@uint32 v73@uint8;
(*   %conv1.i.i177.1 = zext i8 %72 to i32 *)
cast v_conv1_i_i177_1@uint32 v72@uint8;
(*   %xor.i.i178.1 = xor i32 %conv1.i.i177.1, %conv.i.i176.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i178_1 v_conv1_i_i177_1 v_conv_i_i176_1;
(*   %conv2.i.i179.1 = trunc i32 %xor.i.i178.1 to i8 *)
split tmp_v_xor_i_i178_1 v_conv2_i_i179_1 v_xor_i_i178_1 8;
vpc v_conv2_i_i179_1@uint8 v_conv2_i_i179_1@uint32;
(*   %scevgep42.2 = getelementptr i8, i8* %a, i64 2 *)
(*   %74 = load i8, i8* %scevgep42.2, align 1 *)
mov v74 a_2;
(*   %conv.i.i176.2 = zext i8 %74 to i32 *)
cast v_conv_i_i176_2@uint32 v74@uint8;
(*   %conv1.i.i177.2 = zext i8 %conv2.i.i179.1 to i32 *)
cast v_conv1_i_i177_2@uint32 v_conv2_i_i179_1@uint8;
(*   %xor.i.i178.2 = xor i32 %conv1.i.i177.2, %conv.i.i176.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i178_2 v_conv1_i_i177_2 v_conv_i_i176_2;
(*   %conv2.i.i179.2 = trunc i32 %xor.i.i178.2 to i8 *)
split tmp_v_xor_i_i178_2 v_conv2_i_i179_2 v_xor_i_i178_2 8;
vpc v_conv2_i_i179_2@uint8 v_conv2_i_i179_2@uint32;
(*   %scevgep42.3 = getelementptr i8, i8* %a, i64 3 *)
(*   %75 = load i8, i8* %scevgep42.3, align 1 *)
mov v75 a_3;
(*   %conv.i.i176.3 = zext i8 %75 to i32 *)
cast v_conv_i_i176_3@uint32 v75@uint8;
(*   %conv1.i.i177.3 = zext i8 %conv2.i.i179.2 to i32 *)
cast v_conv1_i_i177_3@uint32 v_conv2_i_i179_2@uint8;
(*   %xor.i.i178.3 = xor i32 %conv1.i.i177.3, %conv.i.i176.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i178_3 v_conv1_i_i177_3 v_conv_i_i176_3;
(*   %conv2.i.i179.3 = trunc i32 %xor.i.i178.3 to i8 *)
split tmp_v_xor_i_i178_3 v_conv2_i_i179_3 v_xor_i_i178_3 8;
vpc v_conv2_i_i179_3@uint8 v_conv2_i_i179_3@uint32;
(*   %76 = load i8, i8* %b, align 1 *)
mov v76 b_0;
(*   %scevgep38.1 = getelementptr i8, i8* %b, i64 1 *)
(*   %77 = load i8, i8* %scevgep38.1, align 1 *)
mov v77 b_1;
(*   %conv.i.i116.1 = zext i8 %77 to i32 *)
cast v_conv_i_i116_1@uint32 v77@uint8;
(*   %conv1.i.i117.1 = zext i8 %76 to i32 *)
cast v_conv1_i_i117_1@uint32 v76@uint8;
(*   %xor.i.i118.1 = xor i32 %conv1.i.i117.1, %conv.i.i116.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i118_1 v_conv1_i_i117_1 v_conv_i_i116_1;
(*   %conv2.i.i119.1 = trunc i32 %xor.i.i118.1 to i8 *)
split tmp_v_xor_i_i118_1 v_conv2_i_i119_1 v_xor_i_i118_1 8;
vpc v_conv2_i_i119_1@uint8 v_conv2_i_i119_1@uint32;
(*   %scevgep38.2 = getelementptr i8, i8* %b, i64 2 *)
(*   %78 = load i8, i8* %scevgep38.2, align 1 *)
mov v78 b_2;
(*   %conv.i.i116.2 = zext i8 %78 to i32 *)
cast v_conv_i_i116_2@uint32 v78@uint8;
(*   %conv1.i.i117.2 = zext i8 %conv2.i.i119.1 to i32 *)
cast v_conv1_i_i117_2@uint32 v_conv2_i_i119_1@uint8;
(*   %xor.i.i118.2 = xor i32 %conv1.i.i117.2, %conv.i.i116.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i118_2 v_conv1_i_i117_2 v_conv_i_i116_2;
(*   %conv2.i.i119.2 = trunc i32 %xor.i.i118.2 to i8 *)
split tmp_v_xor_i_i118_2 v_conv2_i_i119_2 v_xor_i_i118_2 8;
vpc v_conv2_i_i119_2@uint8 v_conv2_i_i119_2@uint32;
(*   %scevgep38.3 = getelementptr i8, i8* %b, i64 3 *)
(*   %79 = load i8, i8* %scevgep38.3, align 1 *)
mov v79 b_3;
(*   %conv.i.i116.3 = zext i8 %79 to i32 *)
cast v_conv_i_i116_3@uint32 v79@uint8;
(*   %conv1.i.i117.3 = zext i8 %conv2.i.i119.2 to i32 *)
cast v_conv1_i_i117_3@uint32 v_conv2_i_i119_2@uint8;
(*   %xor.i.i118.3 = xor i32 %conv1.i.i117.3, %conv.i.i116.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i118_3 v_conv1_i_i117_3 v_conv_i_i116_3;
(*   %conv2.i.i119.3 = trunc i32 %xor.i.i118.3 to i8 *)
split tmp_v_xor_i_i118_3 v_conv2_i_i119_3 v_xor_i_i118_3 8;
vpc v_conv2_i_i119_3@uint8 v_conv2_i_i119_3@uint32;
(*   %conv.i = zext i8 %conv2.i.i119.3 to i32 *)
cast v_conv_i@uint32 v_conv2_i_i119_3@uint8;
(*   %and.i = and i32 %conv.i, 1 *)
(* You may need to modify here *)
and uint32 v_and_i v_conv_i (0x1)@uint32;
(*   %conv1.i = zext i8 %conv2.i.i179.3 to i32 *)
cast v_conv1_i@uint32 v_conv2_i_i179_3@uint8;
(*   %mul.i = mul nsw i32 %and.i, %conv1.i *)
mul v_mul_i v_and_i v_conv1_i;
(*   %conv3.i = trunc i32 %mul.i to i8 *)
split tmp_v_mul_i v_conv3_i v_mul_i 8;
vpc v_conv3_i@uint8 v_conv3_i@uint32;
(*   %conv4.i = zext i8 %conv2.i.i119.3 to i32 *)
cast v_conv4_i@uint32 v_conv2_i_i119_3@uint8;
(*   %shr.i = ashr i32 %conv4.i, 1 *)
(* You may need to modify here *)
split v_shr_i tmp_to_be_used v_conv4_i 1;
(*   %conv5.i = trunc i32 %shr.i to i8 *)
split tmp_v_shr_i v_conv5_i v_shr_i 8;
vpc v_conv5_i@uint8 v_conv5_i@uint32;
(*   %conv6.i = zext i8 %conv2.i.i179.3 to i32 *)
cast v_conv6_i@uint32 v_conv2_i_i179_3@uint8;
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
(*   %conv.i.i90.1 = zext i8 %81 to i32 *)
cast v_conv_i_i90_1@uint32 v81@uint8;
(*   %conv1.i.i91.1 = zext i8 %80 to i32 *)
cast v_conv1_i_i91_1@uint32 v80@uint8;
(*   %xor.i.i92.1 = xor i32 %conv1.i.i91.1, %conv.i.i90.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i92_1 v_conv1_i_i91_1 v_conv_i_i90_1;
(*   %conv2.i.i93.1 = trunc i32 %xor.i.i92.1 to i8 *)
split tmp_v_xor_i_i92_1 v_conv2_i_i93_1 v_xor_i_i92_1 8;
vpc v_conv2_i_i93_1@uint8 v_conv2_i_i93_1@uint32;
(*   %scevgep.2 = getelementptr i8, i8* %c, i64 2 *)
(*   %82 = load i8, i8* %scevgep.2, align 1 *)
mov v82 c_2;
(*   %conv.i.i90.2 = zext i8 %82 to i32 *)
cast v_conv_i_i90_2@uint32 v82@uint8;
(*   %conv1.i.i91.2 = zext i8 %conv2.i.i93.1 to i32 *)
cast v_conv1_i_i91_2@uint32 v_conv2_i_i93_1@uint8;
(*   %xor.i.i92.2 = xor i32 %conv1.i.i91.2, %conv.i.i90.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i92_2 v_conv1_i_i91_2 v_conv_i_i90_2;
(*   %conv2.i.i93.2 = trunc i32 %xor.i.i92.2 to i8 *)
split tmp_v_xor_i_i92_2 v_conv2_i_i93_2 v_xor_i_i92_2 8;
vpc v_conv2_i_i93_2@uint8 v_conv2_i_i93_2@uint32;
(*   %scevgep.3 = getelementptr i8, i8* %c, i64 3 *)
(*   %83 = load i8, i8* %scevgep.3, align 1 *)
mov v83 c_3;
(*   %conv.i.i90.3 = zext i8 %83 to i32 *)
cast v_conv_i_i90_3@uint32 v83@uint8;
(*   %conv1.i.i91.3 = zext i8 %conv2.i.i93.2 to i32 *)
cast v_conv1_i_i91_3@uint32 v_conv2_i_i93_2@uint8;
(*   %xor.i.i92.3 = xor i32 %conv1.i.i91.3, %conv.i.i90.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i92_3 v_conv1_i_i91_3 v_conv_i_i90_3;
(*   %conv2.i.i93.3 = trunc i32 %xor.i.i92.3 to i8 *)
split tmp_v_xor_i_i92_3 v_conv2_i_i93_3 v_xor_i_i92_3 8;
vpc v_conv2_i_i93_3@uint8 v_conv2_i_i93_3@uint32;
(*   store i8 %conv2.i.i93.3, i8* %C, align 1 *)
mov C_0 v_conv2_i_i93_3;
(*   ret void *)


assert AB_0=C_0 && true;

mov _ AB_0@uint8;
mov _ C_0@uint8;


{
  true
  &&
  true
}

