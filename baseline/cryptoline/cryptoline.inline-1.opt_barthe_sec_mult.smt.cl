proc main (uint8 a_0, uint8 a_1, uint8 b_0, uint8 b_1, uint8 r_2, uint8 r_3) =
{
  true
  &&
  true
}



(*   %cc = alloca [8 x i8], align 1 *)
(*   %dd = alloca [8 x i8], align 1 *)
(*   %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %cc, i64 0, i64 0 *)
(*   %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 2 *)
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
mov cc_2 v_conv3_i_i_7;
(*   %arrayidx.i.1 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %2 = load i8, i8* %arrayidx.i.1, align 1 *)
mov v2 a_1;
(*   %arrayidx4.i.1 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %3 = load i8, i8* %arrayidx4.i.1, align 1 *)
mov v3 b_1;
(*   %conv.i.i.1464 = zext i8 %3 to i32 *)
cast v_conv_i_i_1464@uint32 v3@uint8;
(*   %and.i.i.1465 = and i32 %conv.i.i.1464, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_1465 v_conv_i_i_1464 (0x1)@uint32;
(*   %conv1.i.i.1466 = zext i8 %2 to i32 *)
cast v_conv1_i_i_1466@uint32 v2@uint8;
(*   %mul.i.i.1467 = mul nsw i32 %and.i.i.1465, %conv1.i.i.1466 *)
mul v_mul_i_i_1467 v_and_i_i_1465 v_conv1_i_i_1466;
(*   %conv3.i.i.1468 = trunc i32 %mul.i.i.1467 to i8 *)
split tmp_v_mul_i_i_1467 v_conv3_i_i_1468 v_mul_i_i_1467 8;
vpc v_conv3_i_i_1468@uint8 v_conv3_i_i_1468@uint32;
(*   %conv4.i.i.1469 = zext i8 %3 to i32 *)
cast v_conv4_i_i_1469@uint32 v3@uint8;
(*   %shr.i.i.1470 = ashr i32 %conv4.i.i.1469, 1 *)
(* You may need to modify here *)
split v_shr_i_i_1470 tmp_to_be_used v_conv4_i_i_1469 1;
(*   %conv5.i.i.1471 = trunc i32 %shr.i.i.1470 to i8 *)
split tmp_v_shr_i_i_1470 v_conv5_i_i_1471 v_shr_i_i_1470 8;
vpc v_conv5_i_i_1471@uint8 v_conv5_i_i_1471@uint32;
(*   %conv6.i.i.1472 = zext i8 %2 to i32 *)
cast v_conv6_i_i_1472@uint32 v2@uint8;
(*   %shl.i.i.1473 = shl i32 %conv6.i.i.1472, 1 *)
shls discard_7 v_shl_i_i_1473 v_conv6_i_i_1472 1;
(*   %conv7.i.i.1474 = trunc i32 %shl.i.i.1473 to i8 *)
split tmp_v_shl_i_i_1473 v_conv7_i_i_1474 v_shl_i_i_1473 8;
vpc v_conv7_i_i_1474@uint8 v_conv7_i_i_1474@uint32;
(*   %conv.i.i.1.1 = zext i8 %conv5.i.i.1471 to i32 *)
cast v_conv_i_i_1_1@uint32 v_conv5_i_i_1471@uint8;
(*   %and.i.i.1.1 = and i32 %conv.i.i.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_1_1 v_conv_i_i_1_1 (0x1)@uint32;
(*   %conv1.i.i.1.1 = zext i8 %conv7.i.i.1474 to i32 *)
cast v_conv1_i_i_1_1@uint32 v_conv7_i_i_1474@uint8;
(*   %mul.i.i.1.1 = mul nsw i32 %and.i.i.1.1, %conv1.i.i.1.1 *)
mul v_mul_i_i_1_1 v_and_i_i_1_1 v_conv1_i_i_1_1;
(*   %conv2.i.i.1.1 = zext i8 %conv3.i.i.1468 to i32 *)
cast v_conv2_i_i_1_1@uint32 v_conv3_i_i_1468@uint8;
(*   %xor.i.i.1.1 = xor i32 %conv2.i.i.1.1, %mul.i.i.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_1_1 v_conv2_i_i_1_1 v_mul_i_i_1_1;
(*   %conv3.i.i.1.1 = trunc i32 %xor.i.i.1.1 to i8 *)
split tmp_v_xor_i_i_1_1 v_conv3_i_i_1_1 v_xor_i_i_1_1 8;
vpc v_conv3_i_i_1_1@uint8 v_conv3_i_i_1_1@uint32;
(*   %conv4.i.i.1.1 = zext i8 %conv5.i.i.1471 to i32 *)
cast v_conv4_i_i_1_1@uint32 v_conv5_i_i_1471@uint8;
(*   %shr.i.i.1.1 = ashr i32 %conv4.i.i.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i_1_1 tmp_to_be_used v_conv4_i_i_1_1 1;
(*   %conv5.i.i.1.1 = trunc i32 %shr.i.i.1.1 to i8 *)
split tmp_v_shr_i_i_1_1 v_conv5_i_i_1_1 v_shr_i_i_1_1 8;
vpc v_conv5_i_i_1_1@uint8 v_conv5_i_i_1_1@uint32;
(*   %conv6.i.i.1.1 = zext i8 %conv7.i.i.1474 to i32 *)
cast v_conv6_i_i_1_1@uint32 v_conv7_i_i_1474@uint8;
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
mov cc_3 v_conv3_i_i_7_1;
(*   %arraydecay9 = getelementptr inbounds [8 x i8], [8 x i8]* %cc, i64 0, i64 0 *)
(*   %add.ptr10 = getelementptr inbounds i8, i8* %arraydecay9, i64 0 *)
(*   %4 = load i8, i8* %a, align 1 *)
mov v4 a_0;
(*   %arrayidx4.i567 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %5 = load i8, i8* %arrayidx4.i567, align 1 *)
mov v5 b_1;
(*   %conv.i.i571 = zext i8 %5 to i32 *)
cast v_conv_i_i571@uint32 v5@uint8;
(*   %and.i.i572 = and i32 %conv.i.i571, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i572 v_conv_i_i571 (0x1)@uint32;
(*   %conv1.i.i573 = zext i8 %4 to i32 *)
cast v_conv1_i_i573@uint32 v4@uint8;
(*   %mul.i.i574 = mul nsw i32 %and.i.i572, %conv1.i.i573 *)
mul v_mul_i_i574 v_and_i_i572 v_conv1_i_i573;
(*   %conv3.i.i577 = trunc i32 %mul.i.i574 to i8 *)
split tmp_v_mul_i_i574 v_conv3_i_i577 v_mul_i_i574 8;
vpc v_conv3_i_i577@uint8 v_conv3_i_i577@uint32;
(*   %conv4.i.i578 = zext i8 %5 to i32 *)
cast v_conv4_i_i578@uint32 v5@uint8;
(*   %shr.i.i579 = ashr i32 %conv4.i.i578, 1 *)
(* You may need to modify here *)
split v_shr_i_i579 tmp_to_be_used v_conv4_i_i578 1;
(*   %conv5.i.i580 = trunc i32 %shr.i.i579 to i8 *)
split tmp_v_shr_i_i579 v_conv5_i_i580 v_shr_i_i579 8;
vpc v_conv5_i_i580@uint8 v_conv5_i_i580@uint32;
(*   %conv6.i.i581 = zext i8 %4 to i32 *)
cast v_conv6_i_i581@uint32 v4@uint8;
(*   %shl.i.i582 = shl i32 %conv6.i.i581, 1 *)
shls discard_14 v_shl_i_i582 v_conv6_i_i581 1;
(*   %conv7.i.i583 = trunc i32 %shl.i.i582 to i8 *)
split tmp_v_shl_i_i582 v_conv7_i_i583 v_shl_i_i582 8;
vpc v_conv7_i_i583@uint8 v_conv7_i_i583@uint32;
(*   %conv.i.i571.1 = zext i8 %conv5.i.i580 to i32 *)
cast v_conv_i_i571_1@uint32 v_conv5_i_i580@uint8;
(*   %and.i.i572.1 = and i32 %conv.i.i571.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i572_1 v_conv_i_i571_1 (0x1)@uint32;
(*   %conv1.i.i573.1 = zext i8 %conv7.i.i583 to i32 *)
cast v_conv1_i_i573_1@uint32 v_conv7_i_i583@uint8;
(*   %mul.i.i574.1 = mul nsw i32 %and.i.i572.1, %conv1.i.i573.1 *)
mul v_mul_i_i574_1 v_and_i_i572_1 v_conv1_i_i573_1;
(*   %conv2.i.i575.1 = zext i8 %conv3.i.i577 to i32 *)
cast v_conv2_i_i575_1@uint32 v_conv3_i_i577@uint8;
(*   %xor.i.i576.1 = xor i32 %conv2.i.i575.1, %mul.i.i574.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i576_1 v_conv2_i_i575_1 v_mul_i_i574_1;
(*   %conv3.i.i577.1 = trunc i32 %xor.i.i576.1 to i8 *)
split tmp_v_xor_i_i576_1 v_conv3_i_i577_1 v_xor_i_i576_1 8;
vpc v_conv3_i_i577_1@uint8 v_conv3_i_i577_1@uint32;
(*   %conv4.i.i578.1 = zext i8 %conv5.i.i580 to i32 *)
cast v_conv4_i_i578_1@uint32 v_conv5_i_i580@uint8;
(*   %shr.i.i579.1 = ashr i32 %conv4.i.i578.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i579_1 tmp_to_be_used v_conv4_i_i578_1 1;
(*   %conv5.i.i580.1 = trunc i32 %shr.i.i579.1 to i8 *)
split tmp_v_shr_i_i579_1 v_conv5_i_i580_1 v_shr_i_i579_1 8;
vpc v_conv5_i_i580_1@uint8 v_conv5_i_i580_1@uint32;
(*   %conv6.i.i581.1 = zext i8 %conv7.i.i583 to i32 *)
cast v_conv6_i_i581_1@uint32 v_conv7_i_i583@uint8;
(*   %shl.i.i582.1 = shl i32 %conv6.i.i581.1, 1 *)
shls discard_15 v_shl_i_i582_1 v_conv6_i_i581_1 1;
(*   %conv7.i.i583.1 = trunc i32 %shl.i.i582.1 to i8 *)
split tmp_v_shl_i_i582_1 v_conv7_i_i583_1 v_shl_i_i582_1 8;
vpc v_conv7_i_i583_1@uint8 v_conv7_i_i583_1@uint32;
(*   %conv.i.i571.2 = zext i8 %conv5.i.i580.1 to i32 *)
cast v_conv_i_i571_2@uint32 v_conv5_i_i580_1@uint8;
(*   %and.i.i572.2 = and i32 %conv.i.i571.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i572_2 v_conv_i_i571_2 (0x1)@uint32;
(*   %conv1.i.i573.2 = zext i8 %conv7.i.i583.1 to i32 *)
cast v_conv1_i_i573_2@uint32 v_conv7_i_i583_1@uint8;
(*   %mul.i.i574.2 = mul nsw i32 %and.i.i572.2, %conv1.i.i573.2 *)
mul v_mul_i_i574_2 v_and_i_i572_2 v_conv1_i_i573_2;
(*   %conv2.i.i575.2 = zext i8 %conv3.i.i577.1 to i32 *)
cast v_conv2_i_i575_2@uint32 v_conv3_i_i577_1@uint8;
(*   %xor.i.i576.2 = xor i32 %conv2.i.i575.2, %mul.i.i574.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i576_2 v_conv2_i_i575_2 v_mul_i_i574_2;
(*   %conv3.i.i577.2 = trunc i32 %xor.i.i576.2 to i8 *)
split tmp_v_xor_i_i576_2 v_conv3_i_i577_2 v_xor_i_i576_2 8;
vpc v_conv3_i_i577_2@uint8 v_conv3_i_i577_2@uint32;
(*   %conv4.i.i578.2 = zext i8 %conv5.i.i580.1 to i32 *)
cast v_conv4_i_i578_2@uint32 v_conv5_i_i580_1@uint8;
(*   %shr.i.i579.2 = ashr i32 %conv4.i.i578.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i579_2 tmp_to_be_used v_conv4_i_i578_2 1;
(*   %conv5.i.i580.2 = trunc i32 %shr.i.i579.2 to i8 *)
split tmp_v_shr_i_i579_2 v_conv5_i_i580_2 v_shr_i_i579_2 8;
vpc v_conv5_i_i580_2@uint8 v_conv5_i_i580_2@uint32;
(*   %conv6.i.i581.2 = zext i8 %conv7.i.i583.1 to i32 *)
cast v_conv6_i_i581_2@uint32 v_conv7_i_i583_1@uint8;
(*   %shl.i.i582.2 = shl i32 %conv6.i.i581.2, 1 *)
shls discard_16 v_shl_i_i582_2 v_conv6_i_i581_2 1;
(*   %conv7.i.i583.2 = trunc i32 %shl.i.i582.2 to i8 *)
split tmp_v_shl_i_i582_2 v_conv7_i_i583_2 v_shl_i_i582_2 8;
vpc v_conv7_i_i583_2@uint8 v_conv7_i_i583_2@uint32;
(*   %conv.i.i571.3 = zext i8 %conv5.i.i580.2 to i32 *)
cast v_conv_i_i571_3@uint32 v_conv5_i_i580_2@uint8;
(*   %and.i.i572.3 = and i32 %conv.i.i571.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i572_3 v_conv_i_i571_3 (0x1)@uint32;
(*   %conv1.i.i573.3 = zext i8 %conv7.i.i583.2 to i32 *)
cast v_conv1_i_i573_3@uint32 v_conv7_i_i583_2@uint8;
(*   %mul.i.i574.3 = mul nsw i32 %and.i.i572.3, %conv1.i.i573.3 *)
mul v_mul_i_i574_3 v_and_i_i572_3 v_conv1_i_i573_3;
(*   %conv2.i.i575.3 = zext i8 %conv3.i.i577.2 to i32 *)
cast v_conv2_i_i575_3@uint32 v_conv3_i_i577_2@uint8;
(*   %xor.i.i576.3 = xor i32 %conv2.i.i575.3, %mul.i.i574.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i576_3 v_conv2_i_i575_3 v_mul_i_i574_3;
(*   %conv3.i.i577.3 = trunc i32 %xor.i.i576.3 to i8 *)
split tmp_v_xor_i_i576_3 v_conv3_i_i577_3 v_xor_i_i576_3 8;
vpc v_conv3_i_i577_3@uint8 v_conv3_i_i577_3@uint32;
(*   %conv4.i.i578.3 = zext i8 %conv5.i.i580.2 to i32 *)
cast v_conv4_i_i578_3@uint32 v_conv5_i_i580_2@uint8;
(*   %shr.i.i579.3 = ashr i32 %conv4.i.i578.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i579_3 tmp_to_be_used v_conv4_i_i578_3 1;
(*   %conv5.i.i580.3 = trunc i32 %shr.i.i579.3 to i8 *)
split tmp_v_shr_i_i579_3 v_conv5_i_i580_3 v_shr_i_i579_3 8;
vpc v_conv5_i_i580_3@uint8 v_conv5_i_i580_3@uint32;
(*   %conv6.i.i581.3 = zext i8 %conv7.i.i583.2 to i32 *)
cast v_conv6_i_i581_3@uint32 v_conv7_i_i583_2@uint8;
(*   %shl.i.i582.3 = shl i32 %conv6.i.i581.3, 1 *)
shls discard_17 v_shl_i_i582_3 v_conv6_i_i581_3 1;
(*   %conv7.i.i583.3 = trunc i32 %shl.i.i582.3 to i8 *)
split tmp_v_shl_i_i582_3 v_conv7_i_i583_3 v_shl_i_i582_3 8;
vpc v_conv7_i_i583_3@uint8 v_conv7_i_i583_3@uint32;
(*   %conv.i.i571.4 = zext i8 %conv5.i.i580.3 to i32 *)
cast v_conv_i_i571_4@uint32 v_conv5_i_i580_3@uint8;
(*   %and.i.i572.4 = and i32 %conv.i.i571.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i572_4 v_conv_i_i571_4 (0x1)@uint32;
(*   %conv1.i.i573.4 = zext i8 %conv7.i.i583.3 to i32 *)
cast v_conv1_i_i573_4@uint32 v_conv7_i_i583_3@uint8;
(*   %mul.i.i574.4 = mul nsw i32 %and.i.i572.4, %conv1.i.i573.4 *)
mul v_mul_i_i574_4 v_and_i_i572_4 v_conv1_i_i573_4;
(*   %conv2.i.i575.4 = zext i8 %conv3.i.i577.3 to i32 *)
cast v_conv2_i_i575_4@uint32 v_conv3_i_i577_3@uint8;
(*   %xor.i.i576.4 = xor i32 %conv2.i.i575.4, %mul.i.i574.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i576_4 v_conv2_i_i575_4 v_mul_i_i574_4;
(*   %conv3.i.i577.4 = trunc i32 %xor.i.i576.4 to i8 *)
split tmp_v_xor_i_i576_4 v_conv3_i_i577_4 v_xor_i_i576_4 8;
vpc v_conv3_i_i577_4@uint8 v_conv3_i_i577_4@uint32;
(*   %conv4.i.i578.4 = zext i8 %conv5.i.i580.3 to i32 *)
cast v_conv4_i_i578_4@uint32 v_conv5_i_i580_3@uint8;
(*   %shr.i.i579.4 = ashr i32 %conv4.i.i578.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i579_4 tmp_to_be_used v_conv4_i_i578_4 1;
(*   %conv5.i.i580.4 = trunc i32 %shr.i.i579.4 to i8 *)
split tmp_v_shr_i_i579_4 v_conv5_i_i580_4 v_shr_i_i579_4 8;
vpc v_conv5_i_i580_4@uint8 v_conv5_i_i580_4@uint32;
(*   %conv6.i.i581.4 = zext i8 %conv7.i.i583.3 to i32 *)
cast v_conv6_i_i581_4@uint32 v_conv7_i_i583_3@uint8;
(*   %shl.i.i582.4 = shl i32 %conv6.i.i581.4, 1 *)
shls discard_18 v_shl_i_i582_4 v_conv6_i_i581_4 1;
(*   %conv7.i.i583.4 = trunc i32 %shl.i.i582.4 to i8 *)
split tmp_v_shl_i_i582_4 v_conv7_i_i583_4 v_shl_i_i582_4 8;
vpc v_conv7_i_i583_4@uint8 v_conv7_i_i583_4@uint32;
(*   %conv.i.i571.5 = zext i8 %conv5.i.i580.4 to i32 *)
cast v_conv_i_i571_5@uint32 v_conv5_i_i580_4@uint8;
(*   %and.i.i572.5 = and i32 %conv.i.i571.5, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i572_5 v_conv_i_i571_5 (0x1)@uint32;
(*   %conv1.i.i573.5 = zext i8 %conv7.i.i583.4 to i32 *)
cast v_conv1_i_i573_5@uint32 v_conv7_i_i583_4@uint8;
(*   %mul.i.i574.5 = mul nsw i32 %and.i.i572.5, %conv1.i.i573.5 *)
mul v_mul_i_i574_5 v_and_i_i572_5 v_conv1_i_i573_5;
(*   %conv2.i.i575.5 = zext i8 %conv3.i.i577.4 to i32 *)
cast v_conv2_i_i575_5@uint32 v_conv3_i_i577_4@uint8;
(*   %xor.i.i576.5 = xor i32 %conv2.i.i575.5, %mul.i.i574.5 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i576_5 v_conv2_i_i575_5 v_mul_i_i574_5;
(*   %conv3.i.i577.5 = trunc i32 %xor.i.i576.5 to i8 *)
split tmp_v_xor_i_i576_5 v_conv3_i_i577_5 v_xor_i_i576_5 8;
vpc v_conv3_i_i577_5@uint8 v_conv3_i_i577_5@uint32;
(*   %conv4.i.i578.5 = zext i8 %conv5.i.i580.4 to i32 *)
cast v_conv4_i_i578_5@uint32 v_conv5_i_i580_4@uint8;
(*   %shr.i.i579.5 = ashr i32 %conv4.i.i578.5, 1 *)
(* You may need to modify here *)
split v_shr_i_i579_5 tmp_to_be_used v_conv4_i_i578_5 1;
(*   %conv5.i.i580.5 = trunc i32 %shr.i.i579.5 to i8 *)
split tmp_v_shr_i_i579_5 v_conv5_i_i580_5 v_shr_i_i579_5 8;
vpc v_conv5_i_i580_5@uint8 v_conv5_i_i580_5@uint32;
(*   %conv6.i.i581.5 = zext i8 %conv7.i.i583.4 to i32 *)
cast v_conv6_i_i581_5@uint32 v_conv7_i_i583_4@uint8;
(*   %shl.i.i582.5 = shl i32 %conv6.i.i581.5, 1 *)
shls discard_19 v_shl_i_i582_5 v_conv6_i_i581_5 1;
(*   %conv7.i.i583.5 = trunc i32 %shl.i.i582.5 to i8 *)
split tmp_v_shl_i_i582_5 v_conv7_i_i583_5 v_shl_i_i582_5 8;
vpc v_conv7_i_i583_5@uint8 v_conv7_i_i583_5@uint32;
(*   %conv.i.i571.6 = zext i8 %conv5.i.i580.5 to i32 *)
cast v_conv_i_i571_6@uint32 v_conv5_i_i580_5@uint8;
(*   %and.i.i572.6 = and i32 %conv.i.i571.6, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i572_6 v_conv_i_i571_6 (0x1)@uint32;
(*   %conv1.i.i573.6 = zext i8 %conv7.i.i583.5 to i32 *)
cast v_conv1_i_i573_6@uint32 v_conv7_i_i583_5@uint8;
(*   %mul.i.i574.6 = mul nsw i32 %and.i.i572.6, %conv1.i.i573.6 *)
mul v_mul_i_i574_6 v_and_i_i572_6 v_conv1_i_i573_6;
(*   %conv2.i.i575.6 = zext i8 %conv3.i.i577.5 to i32 *)
cast v_conv2_i_i575_6@uint32 v_conv3_i_i577_5@uint8;
(*   %xor.i.i576.6 = xor i32 %conv2.i.i575.6, %mul.i.i574.6 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i576_6 v_conv2_i_i575_6 v_mul_i_i574_6;
(*   %conv3.i.i577.6 = trunc i32 %xor.i.i576.6 to i8 *)
split tmp_v_xor_i_i576_6 v_conv3_i_i577_6 v_xor_i_i576_6 8;
vpc v_conv3_i_i577_6@uint8 v_conv3_i_i577_6@uint32;
(*   %conv4.i.i578.6 = zext i8 %conv5.i.i580.5 to i32 *)
cast v_conv4_i_i578_6@uint32 v_conv5_i_i580_5@uint8;
(*   %shr.i.i579.6 = ashr i32 %conv4.i.i578.6, 1 *)
(* You may need to modify here *)
split v_shr_i_i579_6 tmp_to_be_used v_conv4_i_i578_6 1;
(*   %conv5.i.i580.6 = trunc i32 %shr.i.i579.6 to i8 *)
split tmp_v_shr_i_i579_6 v_conv5_i_i580_6 v_shr_i_i579_6 8;
vpc v_conv5_i_i580_6@uint8 v_conv5_i_i580_6@uint32;
(*   %conv6.i.i581.6 = zext i8 %conv7.i.i583.5 to i32 *)
cast v_conv6_i_i581_6@uint32 v_conv7_i_i583_5@uint8;
(*   %shl.i.i582.6 = shl i32 %conv6.i.i581.6, 1 *)
shls discard_20 v_shl_i_i582_6 v_conv6_i_i581_6 1;
(*   %conv7.i.i583.6 = trunc i32 %shl.i.i582.6 to i8 *)
split tmp_v_shl_i_i582_6 v_conv7_i_i583_6 v_shl_i_i582_6 8;
vpc v_conv7_i_i583_6@uint8 v_conv7_i_i583_6@uint32;
(*   %conv.i.i571.7 = zext i8 %conv5.i.i580.6 to i32 *)
cast v_conv_i_i571_7@uint32 v_conv5_i_i580_6@uint8;
(*   %and.i.i572.7 = and i32 %conv.i.i571.7, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i572_7 v_conv_i_i571_7 (0x1)@uint32;
(*   %conv1.i.i573.7 = zext i8 %conv7.i.i583.6 to i32 *)
cast v_conv1_i_i573_7@uint32 v_conv7_i_i583_6@uint8;
(*   %mul.i.i574.7 = mul nsw i32 %and.i.i572.7, %conv1.i.i573.7 *)
mul v_mul_i_i574_7 v_and_i_i572_7 v_conv1_i_i573_7;
(*   %conv2.i.i575.7 = zext i8 %conv3.i.i577.6 to i32 *)
cast v_conv2_i_i575_7@uint32 v_conv3_i_i577_6@uint8;
(*   %xor.i.i576.7 = xor i32 %conv2.i.i575.7, %mul.i.i574.7 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i576_7 v_conv2_i_i575_7 v_mul_i_i574_7;
(*   %conv3.i.i577.7 = trunc i32 %xor.i.i576.7 to i8 *)
split tmp_v_xor_i_i576_7 v_conv3_i_i577_7 v_xor_i_i576_7 8;
vpc v_conv3_i_i577_7@uint8 v_conv3_i_i577_7@uint32;
(*   store i8 %conv3.i.i577.7, i8* %add.ptr10, align 1 *)
mov cc_0 v_conv3_i_i577_7;
(*   %arrayidx.i563.1 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %6 = load i8, i8* %arrayidx.i563.1, align 1 *)
mov v6 a_1;
(*   %7 = load i8, i8* %b, align 1 *)
mov v7 b_0;
(*   %conv.i.i571.1183 = zext i8 %7 to i32 *)
cast v_conv_i_i571_1183@uint32 v7@uint8;
(*   %and.i.i572.1184 = and i32 %conv.i.i571.1183, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i572_1184 v_conv_i_i571_1183 (0x1)@uint32;
(*   %conv1.i.i573.1185 = zext i8 %6 to i32 *)
cast v_conv1_i_i573_1185@uint32 v6@uint8;
(*   %mul.i.i574.1186 = mul nsw i32 %and.i.i572.1184, %conv1.i.i573.1185 *)
mul v_mul_i_i574_1186 v_and_i_i572_1184 v_conv1_i_i573_1185;
(*   %conv3.i.i577.1187 = trunc i32 %mul.i.i574.1186 to i8 *)
split tmp_v_mul_i_i574_1186 v_conv3_i_i577_1187 v_mul_i_i574_1186 8;
vpc v_conv3_i_i577_1187@uint8 v_conv3_i_i577_1187@uint32;
(*   %conv4.i.i578.1188 = zext i8 %7 to i32 *)
cast v_conv4_i_i578_1188@uint32 v7@uint8;
(*   %shr.i.i579.1189 = ashr i32 %conv4.i.i578.1188, 1 *)
(* You may need to modify here *)
split v_shr_i_i579_1189 tmp_to_be_used v_conv4_i_i578_1188 1;
(*   %conv5.i.i580.1190 = trunc i32 %shr.i.i579.1189 to i8 *)
split tmp_v_shr_i_i579_1189 v_conv5_i_i580_1190 v_shr_i_i579_1189 8;
vpc v_conv5_i_i580_1190@uint8 v_conv5_i_i580_1190@uint32;
(*   %conv6.i.i581.1191 = zext i8 %6 to i32 *)
cast v_conv6_i_i581_1191@uint32 v6@uint8;
(*   %shl.i.i582.1192 = shl i32 %conv6.i.i581.1191, 1 *)
shls discard_21 v_shl_i_i582_1192 v_conv6_i_i581_1191 1;
(*   %conv7.i.i583.1193 = trunc i32 %shl.i.i582.1192 to i8 *)
split tmp_v_shl_i_i582_1192 v_conv7_i_i583_1193 v_shl_i_i582_1192 8;
vpc v_conv7_i_i583_1193@uint8 v_conv7_i_i583_1193@uint32;
(*   %conv.i.i571.1.1 = zext i8 %conv5.i.i580.1190 to i32 *)
cast v_conv_i_i571_1_1@uint32 v_conv5_i_i580_1190@uint8;
(*   %and.i.i572.1.1 = and i32 %conv.i.i571.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i572_1_1 v_conv_i_i571_1_1 (0x1)@uint32;
(*   %conv1.i.i573.1.1 = zext i8 %conv7.i.i583.1193 to i32 *)
cast v_conv1_i_i573_1_1@uint32 v_conv7_i_i583_1193@uint8;
(*   %mul.i.i574.1.1 = mul nsw i32 %and.i.i572.1.1, %conv1.i.i573.1.1 *)
mul v_mul_i_i574_1_1 v_and_i_i572_1_1 v_conv1_i_i573_1_1;
(*   %conv2.i.i575.1.1 = zext i8 %conv3.i.i577.1187 to i32 *)
cast v_conv2_i_i575_1_1@uint32 v_conv3_i_i577_1187@uint8;
(*   %xor.i.i576.1.1 = xor i32 %conv2.i.i575.1.1, %mul.i.i574.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i576_1_1 v_conv2_i_i575_1_1 v_mul_i_i574_1_1;
(*   %conv3.i.i577.1.1 = trunc i32 %xor.i.i576.1.1 to i8 *)
split tmp_v_xor_i_i576_1_1 v_conv3_i_i577_1_1 v_xor_i_i576_1_1 8;
vpc v_conv3_i_i577_1_1@uint8 v_conv3_i_i577_1_1@uint32;
(*   %conv4.i.i578.1.1 = zext i8 %conv5.i.i580.1190 to i32 *)
cast v_conv4_i_i578_1_1@uint32 v_conv5_i_i580_1190@uint8;
(*   %shr.i.i579.1.1 = ashr i32 %conv4.i.i578.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i579_1_1 tmp_to_be_used v_conv4_i_i578_1_1 1;
(*   %conv5.i.i580.1.1 = trunc i32 %shr.i.i579.1.1 to i8 *)
split tmp_v_shr_i_i579_1_1 v_conv5_i_i580_1_1 v_shr_i_i579_1_1 8;
vpc v_conv5_i_i580_1_1@uint8 v_conv5_i_i580_1_1@uint32;
(*   %conv6.i.i581.1.1 = zext i8 %conv7.i.i583.1193 to i32 *)
cast v_conv6_i_i581_1_1@uint32 v_conv7_i_i583_1193@uint8;
(*   %shl.i.i582.1.1 = shl i32 %conv6.i.i581.1.1, 1 *)
shls discard_22 v_shl_i_i582_1_1 v_conv6_i_i581_1_1 1;
(*   %conv7.i.i583.1.1 = trunc i32 %shl.i.i582.1.1 to i8 *)
split tmp_v_shl_i_i582_1_1 v_conv7_i_i583_1_1 v_shl_i_i582_1_1 8;
vpc v_conv7_i_i583_1_1@uint8 v_conv7_i_i583_1_1@uint32;
(*   %conv.i.i571.2.1 = zext i8 %conv5.i.i580.1.1 to i32 *)
cast v_conv_i_i571_2_1@uint32 v_conv5_i_i580_1_1@uint8;
(*   %and.i.i572.2.1 = and i32 %conv.i.i571.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i572_2_1 v_conv_i_i571_2_1 (0x1)@uint32;
(*   %conv1.i.i573.2.1 = zext i8 %conv7.i.i583.1.1 to i32 *)
cast v_conv1_i_i573_2_1@uint32 v_conv7_i_i583_1_1@uint8;
(*   %mul.i.i574.2.1 = mul nsw i32 %and.i.i572.2.1, %conv1.i.i573.2.1 *)
mul v_mul_i_i574_2_1 v_and_i_i572_2_1 v_conv1_i_i573_2_1;
(*   %conv2.i.i575.2.1 = zext i8 %conv3.i.i577.1.1 to i32 *)
cast v_conv2_i_i575_2_1@uint32 v_conv3_i_i577_1_1@uint8;
(*   %xor.i.i576.2.1 = xor i32 %conv2.i.i575.2.1, %mul.i.i574.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i576_2_1 v_conv2_i_i575_2_1 v_mul_i_i574_2_1;
(*   %conv3.i.i577.2.1 = trunc i32 %xor.i.i576.2.1 to i8 *)
split tmp_v_xor_i_i576_2_1 v_conv3_i_i577_2_1 v_xor_i_i576_2_1 8;
vpc v_conv3_i_i577_2_1@uint8 v_conv3_i_i577_2_1@uint32;
(*   %conv4.i.i578.2.1 = zext i8 %conv5.i.i580.1.1 to i32 *)
cast v_conv4_i_i578_2_1@uint32 v_conv5_i_i580_1_1@uint8;
(*   %shr.i.i579.2.1 = ashr i32 %conv4.i.i578.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i579_2_1 tmp_to_be_used v_conv4_i_i578_2_1 1;
(*   %conv5.i.i580.2.1 = trunc i32 %shr.i.i579.2.1 to i8 *)
split tmp_v_shr_i_i579_2_1 v_conv5_i_i580_2_1 v_shr_i_i579_2_1 8;
vpc v_conv5_i_i580_2_1@uint8 v_conv5_i_i580_2_1@uint32;
(*   %conv6.i.i581.2.1 = zext i8 %conv7.i.i583.1.1 to i32 *)
cast v_conv6_i_i581_2_1@uint32 v_conv7_i_i583_1_1@uint8;
(*   %shl.i.i582.2.1 = shl i32 %conv6.i.i581.2.1, 1 *)
shls discard_23 v_shl_i_i582_2_1 v_conv6_i_i581_2_1 1;
(*   %conv7.i.i583.2.1 = trunc i32 %shl.i.i582.2.1 to i8 *)
split tmp_v_shl_i_i582_2_1 v_conv7_i_i583_2_1 v_shl_i_i582_2_1 8;
vpc v_conv7_i_i583_2_1@uint8 v_conv7_i_i583_2_1@uint32;
(*   %conv.i.i571.3.1 = zext i8 %conv5.i.i580.2.1 to i32 *)
cast v_conv_i_i571_3_1@uint32 v_conv5_i_i580_2_1@uint8;
(*   %and.i.i572.3.1 = and i32 %conv.i.i571.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i572_3_1 v_conv_i_i571_3_1 (0x1)@uint32;
(*   %conv1.i.i573.3.1 = zext i8 %conv7.i.i583.2.1 to i32 *)
cast v_conv1_i_i573_3_1@uint32 v_conv7_i_i583_2_1@uint8;
(*   %mul.i.i574.3.1 = mul nsw i32 %and.i.i572.3.1, %conv1.i.i573.3.1 *)
mul v_mul_i_i574_3_1 v_and_i_i572_3_1 v_conv1_i_i573_3_1;
(*   %conv2.i.i575.3.1 = zext i8 %conv3.i.i577.2.1 to i32 *)
cast v_conv2_i_i575_3_1@uint32 v_conv3_i_i577_2_1@uint8;
(*   %xor.i.i576.3.1 = xor i32 %conv2.i.i575.3.1, %mul.i.i574.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i576_3_1 v_conv2_i_i575_3_1 v_mul_i_i574_3_1;
(*   %conv3.i.i577.3.1 = trunc i32 %xor.i.i576.3.1 to i8 *)
split tmp_v_xor_i_i576_3_1 v_conv3_i_i577_3_1 v_xor_i_i576_3_1 8;
vpc v_conv3_i_i577_3_1@uint8 v_conv3_i_i577_3_1@uint32;
(*   %conv4.i.i578.3.1 = zext i8 %conv5.i.i580.2.1 to i32 *)
cast v_conv4_i_i578_3_1@uint32 v_conv5_i_i580_2_1@uint8;
(*   %shr.i.i579.3.1 = ashr i32 %conv4.i.i578.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i579_3_1 tmp_to_be_used v_conv4_i_i578_3_1 1;
(*   %conv5.i.i580.3.1 = trunc i32 %shr.i.i579.3.1 to i8 *)
split tmp_v_shr_i_i579_3_1 v_conv5_i_i580_3_1 v_shr_i_i579_3_1 8;
vpc v_conv5_i_i580_3_1@uint8 v_conv5_i_i580_3_1@uint32;
(*   %conv6.i.i581.3.1 = zext i8 %conv7.i.i583.2.1 to i32 *)
cast v_conv6_i_i581_3_1@uint32 v_conv7_i_i583_2_1@uint8;
(*   %shl.i.i582.3.1 = shl i32 %conv6.i.i581.3.1, 1 *)
shls discard_24 v_shl_i_i582_3_1 v_conv6_i_i581_3_1 1;
(*   %conv7.i.i583.3.1 = trunc i32 %shl.i.i582.3.1 to i8 *)
split tmp_v_shl_i_i582_3_1 v_conv7_i_i583_3_1 v_shl_i_i582_3_1 8;
vpc v_conv7_i_i583_3_1@uint8 v_conv7_i_i583_3_1@uint32;
(*   %conv.i.i571.4.1 = zext i8 %conv5.i.i580.3.1 to i32 *)
cast v_conv_i_i571_4_1@uint32 v_conv5_i_i580_3_1@uint8;
(*   %and.i.i572.4.1 = and i32 %conv.i.i571.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i572_4_1 v_conv_i_i571_4_1 (0x1)@uint32;
(*   %conv1.i.i573.4.1 = zext i8 %conv7.i.i583.3.1 to i32 *)
cast v_conv1_i_i573_4_1@uint32 v_conv7_i_i583_3_1@uint8;
(*   %mul.i.i574.4.1 = mul nsw i32 %and.i.i572.4.1, %conv1.i.i573.4.1 *)
mul v_mul_i_i574_4_1 v_and_i_i572_4_1 v_conv1_i_i573_4_1;
(*   %conv2.i.i575.4.1 = zext i8 %conv3.i.i577.3.1 to i32 *)
cast v_conv2_i_i575_4_1@uint32 v_conv3_i_i577_3_1@uint8;
(*   %xor.i.i576.4.1 = xor i32 %conv2.i.i575.4.1, %mul.i.i574.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i576_4_1 v_conv2_i_i575_4_1 v_mul_i_i574_4_1;
(*   %conv3.i.i577.4.1 = trunc i32 %xor.i.i576.4.1 to i8 *)
split tmp_v_xor_i_i576_4_1 v_conv3_i_i577_4_1 v_xor_i_i576_4_1 8;
vpc v_conv3_i_i577_4_1@uint8 v_conv3_i_i577_4_1@uint32;
(*   %conv4.i.i578.4.1 = zext i8 %conv5.i.i580.3.1 to i32 *)
cast v_conv4_i_i578_4_1@uint32 v_conv5_i_i580_3_1@uint8;
(*   %shr.i.i579.4.1 = ashr i32 %conv4.i.i578.4.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i579_4_1 tmp_to_be_used v_conv4_i_i578_4_1 1;
(*   %conv5.i.i580.4.1 = trunc i32 %shr.i.i579.4.1 to i8 *)
split tmp_v_shr_i_i579_4_1 v_conv5_i_i580_4_1 v_shr_i_i579_4_1 8;
vpc v_conv5_i_i580_4_1@uint8 v_conv5_i_i580_4_1@uint32;
(*   %conv6.i.i581.4.1 = zext i8 %conv7.i.i583.3.1 to i32 *)
cast v_conv6_i_i581_4_1@uint32 v_conv7_i_i583_3_1@uint8;
(*   %shl.i.i582.4.1 = shl i32 %conv6.i.i581.4.1, 1 *)
shls discard_25 v_shl_i_i582_4_1 v_conv6_i_i581_4_1 1;
(*   %conv7.i.i583.4.1 = trunc i32 %shl.i.i582.4.1 to i8 *)
split tmp_v_shl_i_i582_4_1 v_conv7_i_i583_4_1 v_shl_i_i582_4_1 8;
vpc v_conv7_i_i583_4_1@uint8 v_conv7_i_i583_4_1@uint32;
(*   %conv.i.i571.5.1 = zext i8 %conv5.i.i580.4.1 to i32 *)
cast v_conv_i_i571_5_1@uint32 v_conv5_i_i580_4_1@uint8;
(*   %and.i.i572.5.1 = and i32 %conv.i.i571.5.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i572_5_1 v_conv_i_i571_5_1 (0x1)@uint32;
(*   %conv1.i.i573.5.1 = zext i8 %conv7.i.i583.4.1 to i32 *)
cast v_conv1_i_i573_5_1@uint32 v_conv7_i_i583_4_1@uint8;
(*   %mul.i.i574.5.1 = mul nsw i32 %and.i.i572.5.1, %conv1.i.i573.5.1 *)
mul v_mul_i_i574_5_1 v_and_i_i572_5_1 v_conv1_i_i573_5_1;
(*   %conv2.i.i575.5.1 = zext i8 %conv3.i.i577.4.1 to i32 *)
cast v_conv2_i_i575_5_1@uint32 v_conv3_i_i577_4_1@uint8;
(*   %xor.i.i576.5.1 = xor i32 %conv2.i.i575.5.1, %mul.i.i574.5.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i576_5_1 v_conv2_i_i575_5_1 v_mul_i_i574_5_1;
(*   %conv3.i.i577.5.1 = trunc i32 %xor.i.i576.5.1 to i8 *)
split tmp_v_xor_i_i576_5_1 v_conv3_i_i577_5_1 v_xor_i_i576_5_1 8;
vpc v_conv3_i_i577_5_1@uint8 v_conv3_i_i577_5_1@uint32;
(*   %conv4.i.i578.5.1 = zext i8 %conv5.i.i580.4.1 to i32 *)
cast v_conv4_i_i578_5_1@uint32 v_conv5_i_i580_4_1@uint8;
(*   %shr.i.i579.5.1 = ashr i32 %conv4.i.i578.5.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i579_5_1 tmp_to_be_used v_conv4_i_i578_5_1 1;
(*   %conv5.i.i580.5.1 = trunc i32 %shr.i.i579.5.1 to i8 *)
split tmp_v_shr_i_i579_5_1 v_conv5_i_i580_5_1 v_shr_i_i579_5_1 8;
vpc v_conv5_i_i580_5_1@uint8 v_conv5_i_i580_5_1@uint32;
(*   %conv6.i.i581.5.1 = zext i8 %conv7.i.i583.4.1 to i32 *)
cast v_conv6_i_i581_5_1@uint32 v_conv7_i_i583_4_1@uint8;
(*   %shl.i.i582.5.1 = shl i32 %conv6.i.i581.5.1, 1 *)
shls discard_26 v_shl_i_i582_5_1 v_conv6_i_i581_5_1 1;
(*   %conv7.i.i583.5.1 = trunc i32 %shl.i.i582.5.1 to i8 *)
split tmp_v_shl_i_i582_5_1 v_conv7_i_i583_5_1 v_shl_i_i582_5_1 8;
vpc v_conv7_i_i583_5_1@uint8 v_conv7_i_i583_5_1@uint32;
(*   %conv.i.i571.6.1 = zext i8 %conv5.i.i580.5.1 to i32 *)
cast v_conv_i_i571_6_1@uint32 v_conv5_i_i580_5_1@uint8;
(*   %and.i.i572.6.1 = and i32 %conv.i.i571.6.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i572_6_1 v_conv_i_i571_6_1 (0x1)@uint32;
(*   %conv1.i.i573.6.1 = zext i8 %conv7.i.i583.5.1 to i32 *)
cast v_conv1_i_i573_6_1@uint32 v_conv7_i_i583_5_1@uint8;
(*   %mul.i.i574.6.1 = mul nsw i32 %and.i.i572.6.1, %conv1.i.i573.6.1 *)
mul v_mul_i_i574_6_1 v_and_i_i572_6_1 v_conv1_i_i573_6_1;
(*   %conv2.i.i575.6.1 = zext i8 %conv3.i.i577.5.1 to i32 *)
cast v_conv2_i_i575_6_1@uint32 v_conv3_i_i577_5_1@uint8;
(*   %xor.i.i576.6.1 = xor i32 %conv2.i.i575.6.1, %mul.i.i574.6.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i576_6_1 v_conv2_i_i575_6_1 v_mul_i_i574_6_1;
(*   %conv3.i.i577.6.1 = trunc i32 %xor.i.i576.6.1 to i8 *)
split tmp_v_xor_i_i576_6_1 v_conv3_i_i577_6_1 v_xor_i_i576_6_1 8;
vpc v_conv3_i_i577_6_1@uint8 v_conv3_i_i577_6_1@uint32;
(*   %conv4.i.i578.6.1 = zext i8 %conv5.i.i580.5.1 to i32 *)
cast v_conv4_i_i578_6_1@uint32 v_conv5_i_i580_5_1@uint8;
(*   %shr.i.i579.6.1 = ashr i32 %conv4.i.i578.6.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i579_6_1 tmp_to_be_used v_conv4_i_i578_6_1 1;
(*   %conv5.i.i580.6.1 = trunc i32 %shr.i.i579.6.1 to i8 *)
split tmp_v_shr_i_i579_6_1 v_conv5_i_i580_6_1 v_shr_i_i579_6_1 8;
vpc v_conv5_i_i580_6_1@uint8 v_conv5_i_i580_6_1@uint32;
(*   %conv6.i.i581.6.1 = zext i8 %conv7.i.i583.5.1 to i32 *)
cast v_conv6_i_i581_6_1@uint32 v_conv7_i_i583_5_1@uint8;
(*   %shl.i.i582.6.1 = shl i32 %conv6.i.i581.6.1, 1 *)
shls discard_27 v_shl_i_i582_6_1 v_conv6_i_i581_6_1 1;
(*   %conv7.i.i583.6.1 = trunc i32 %shl.i.i582.6.1 to i8 *)
split tmp_v_shl_i_i582_6_1 v_conv7_i_i583_6_1 v_shl_i_i582_6_1 8;
vpc v_conv7_i_i583_6_1@uint8 v_conv7_i_i583_6_1@uint32;
(*   %conv.i.i571.7.1 = zext i8 %conv5.i.i580.6.1 to i32 *)
cast v_conv_i_i571_7_1@uint32 v_conv5_i_i580_6_1@uint8;
(*   %and.i.i572.7.1 = and i32 %conv.i.i571.7.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i572_7_1 v_conv_i_i571_7_1 (0x1)@uint32;
(*   %conv1.i.i573.7.1 = zext i8 %conv7.i.i583.6.1 to i32 *)
cast v_conv1_i_i573_7_1@uint32 v_conv7_i_i583_6_1@uint8;
(*   %mul.i.i574.7.1 = mul nsw i32 %and.i.i572.7.1, %conv1.i.i573.7.1 *)
mul v_mul_i_i574_7_1 v_and_i_i572_7_1 v_conv1_i_i573_7_1;
(*   %conv2.i.i575.7.1 = zext i8 %conv3.i.i577.6.1 to i32 *)
cast v_conv2_i_i575_7_1@uint32 v_conv3_i_i577_6_1@uint8;
(*   %xor.i.i576.7.1 = xor i32 %conv2.i.i575.7.1, %mul.i.i574.7.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i576_7_1 v_conv2_i_i575_7_1 v_mul_i_i574_7_1;
(*   %conv3.i.i577.7.1 = trunc i32 %xor.i.i576.7.1 to i8 *)
split tmp_v_xor_i_i576_7_1 v_conv3_i_i577_7_1 v_xor_i_i576_7_1 8;
vpc v_conv3_i_i577_7_1@uint8 v_conv3_i_i577_7_1@uint32;
(*   %arrayidx6.i587.1 = getelementptr inbounds i8, i8* %add.ptr10, i64 1 *)
(*   store i8 %conv3.i.i577.7.1, i8* %arrayidx6.i587.1, align 1 *)
mov cc_1 v_conv3_i_i577_7_1;
(*   %arraydecay11 = getelementptr inbounds [8 x i8], [8 x i8]* %cc, i64 0, i64 0 *)
(*   %add.ptr12 = getelementptr inbounds i8, i8* %arraydecay11, i64 2 *)
(*   %arrayidx.i520 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %8 = load i8, i8* %arrayidx.i520, align 1 *)
mov v8 a_1;
(*   %9 = load i8, i8* %b, align 1 *)
mov v9 b_0;
(*   %conv.i.i528 = zext i8 %9 to i32 *)
cast v_conv_i_i528@uint32 v9@uint8;
(*   %and.i.i529 = and i32 %conv.i.i528, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i529 v_conv_i_i528 (0x1)@uint32;
(*   %conv1.i.i530 = zext i8 %8 to i32 *)
cast v_conv1_i_i530@uint32 v8@uint8;
(*   %mul.i.i531 = mul nsw i32 %and.i.i529, %conv1.i.i530 *)
mul v_mul_i_i531 v_and_i_i529 v_conv1_i_i530;
(*   %conv3.i.i534 = trunc i32 %mul.i.i531 to i8 *)
split tmp_v_mul_i_i531 v_conv3_i_i534 v_mul_i_i531 8;
vpc v_conv3_i_i534@uint8 v_conv3_i_i534@uint32;
(*   %conv4.i.i535 = zext i8 %9 to i32 *)
cast v_conv4_i_i535@uint32 v9@uint8;
(*   %shr.i.i536 = ashr i32 %conv4.i.i535, 1 *)
(* You may need to modify here *)
split v_shr_i_i536 tmp_to_be_used v_conv4_i_i535 1;
(*   %conv5.i.i537 = trunc i32 %shr.i.i536 to i8 *)
split tmp_v_shr_i_i536 v_conv5_i_i537 v_shr_i_i536 8;
vpc v_conv5_i_i537@uint8 v_conv5_i_i537@uint32;
(*   %conv6.i.i538 = zext i8 %8 to i32 *)
cast v_conv6_i_i538@uint32 v8@uint8;
(*   %shl.i.i539 = shl i32 %conv6.i.i538, 1 *)
shls discard_28 v_shl_i_i539 v_conv6_i_i538 1;
(*   %conv7.i.i540 = trunc i32 %shl.i.i539 to i8 *)
split tmp_v_shl_i_i539 v_conv7_i_i540 v_shl_i_i539 8;
vpc v_conv7_i_i540@uint8 v_conv7_i_i540@uint32;
(*   %conv.i.i528.1 = zext i8 %conv5.i.i537 to i32 *)
cast v_conv_i_i528_1@uint32 v_conv5_i_i537@uint8;
(*   %and.i.i529.1 = and i32 %conv.i.i528.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i529_1 v_conv_i_i528_1 (0x1)@uint32;
(*   %conv1.i.i530.1 = zext i8 %conv7.i.i540 to i32 *)
cast v_conv1_i_i530_1@uint32 v_conv7_i_i540@uint8;
(*   %mul.i.i531.1 = mul nsw i32 %and.i.i529.1, %conv1.i.i530.1 *)
mul v_mul_i_i531_1 v_and_i_i529_1 v_conv1_i_i530_1;
(*   %conv2.i.i532.1 = zext i8 %conv3.i.i534 to i32 *)
cast v_conv2_i_i532_1@uint32 v_conv3_i_i534@uint8;
(*   %xor.i.i533.1 = xor i32 %conv2.i.i532.1, %mul.i.i531.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i533_1 v_conv2_i_i532_1 v_mul_i_i531_1;
(*   %conv3.i.i534.1 = trunc i32 %xor.i.i533.1 to i8 *)
split tmp_v_xor_i_i533_1 v_conv3_i_i534_1 v_xor_i_i533_1 8;
vpc v_conv3_i_i534_1@uint8 v_conv3_i_i534_1@uint32;
(*   %conv4.i.i535.1 = zext i8 %conv5.i.i537 to i32 *)
cast v_conv4_i_i535_1@uint32 v_conv5_i_i537@uint8;
(*   %shr.i.i536.1 = ashr i32 %conv4.i.i535.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i536_1 tmp_to_be_used v_conv4_i_i535_1 1;
(*   %conv5.i.i537.1 = trunc i32 %shr.i.i536.1 to i8 *)
split tmp_v_shr_i_i536_1 v_conv5_i_i537_1 v_shr_i_i536_1 8;
vpc v_conv5_i_i537_1@uint8 v_conv5_i_i537_1@uint32;
(*   %conv6.i.i538.1 = zext i8 %conv7.i.i540 to i32 *)
cast v_conv6_i_i538_1@uint32 v_conv7_i_i540@uint8;
(*   %shl.i.i539.1 = shl i32 %conv6.i.i538.1, 1 *)
shls discard_29 v_shl_i_i539_1 v_conv6_i_i538_1 1;
(*   %conv7.i.i540.1 = trunc i32 %shl.i.i539.1 to i8 *)
split tmp_v_shl_i_i539_1 v_conv7_i_i540_1 v_shl_i_i539_1 8;
vpc v_conv7_i_i540_1@uint8 v_conv7_i_i540_1@uint32;
(*   %conv.i.i528.2 = zext i8 %conv5.i.i537.1 to i32 *)
cast v_conv_i_i528_2@uint32 v_conv5_i_i537_1@uint8;
(*   %and.i.i529.2 = and i32 %conv.i.i528.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i529_2 v_conv_i_i528_2 (0x1)@uint32;
(*   %conv1.i.i530.2 = zext i8 %conv7.i.i540.1 to i32 *)
cast v_conv1_i_i530_2@uint32 v_conv7_i_i540_1@uint8;
(*   %mul.i.i531.2 = mul nsw i32 %and.i.i529.2, %conv1.i.i530.2 *)
mul v_mul_i_i531_2 v_and_i_i529_2 v_conv1_i_i530_2;
(*   %conv2.i.i532.2 = zext i8 %conv3.i.i534.1 to i32 *)
cast v_conv2_i_i532_2@uint32 v_conv3_i_i534_1@uint8;
(*   %xor.i.i533.2 = xor i32 %conv2.i.i532.2, %mul.i.i531.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i533_2 v_conv2_i_i532_2 v_mul_i_i531_2;
(*   %conv3.i.i534.2 = trunc i32 %xor.i.i533.2 to i8 *)
split tmp_v_xor_i_i533_2 v_conv3_i_i534_2 v_xor_i_i533_2 8;
vpc v_conv3_i_i534_2@uint8 v_conv3_i_i534_2@uint32;
(*   %conv4.i.i535.2 = zext i8 %conv5.i.i537.1 to i32 *)
cast v_conv4_i_i535_2@uint32 v_conv5_i_i537_1@uint8;
(*   %shr.i.i536.2 = ashr i32 %conv4.i.i535.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i536_2 tmp_to_be_used v_conv4_i_i535_2 1;
(*   %conv5.i.i537.2 = trunc i32 %shr.i.i536.2 to i8 *)
split tmp_v_shr_i_i536_2 v_conv5_i_i537_2 v_shr_i_i536_2 8;
vpc v_conv5_i_i537_2@uint8 v_conv5_i_i537_2@uint32;
(*   %conv6.i.i538.2 = zext i8 %conv7.i.i540.1 to i32 *)
cast v_conv6_i_i538_2@uint32 v_conv7_i_i540_1@uint8;
(*   %shl.i.i539.2 = shl i32 %conv6.i.i538.2, 1 *)
shls discard_30 v_shl_i_i539_2 v_conv6_i_i538_2 1;
(*   %conv7.i.i540.2 = trunc i32 %shl.i.i539.2 to i8 *)
split tmp_v_shl_i_i539_2 v_conv7_i_i540_2 v_shl_i_i539_2 8;
vpc v_conv7_i_i540_2@uint8 v_conv7_i_i540_2@uint32;
(*   %conv.i.i528.3 = zext i8 %conv5.i.i537.2 to i32 *)
cast v_conv_i_i528_3@uint32 v_conv5_i_i537_2@uint8;
(*   %and.i.i529.3 = and i32 %conv.i.i528.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i529_3 v_conv_i_i528_3 (0x1)@uint32;
(*   %conv1.i.i530.3 = zext i8 %conv7.i.i540.2 to i32 *)
cast v_conv1_i_i530_3@uint32 v_conv7_i_i540_2@uint8;
(*   %mul.i.i531.3 = mul nsw i32 %and.i.i529.3, %conv1.i.i530.3 *)
mul v_mul_i_i531_3 v_and_i_i529_3 v_conv1_i_i530_3;
(*   %conv2.i.i532.3 = zext i8 %conv3.i.i534.2 to i32 *)
cast v_conv2_i_i532_3@uint32 v_conv3_i_i534_2@uint8;
(*   %xor.i.i533.3 = xor i32 %conv2.i.i532.3, %mul.i.i531.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i533_3 v_conv2_i_i532_3 v_mul_i_i531_3;
(*   %conv3.i.i534.3 = trunc i32 %xor.i.i533.3 to i8 *)
split tmp_v_xor_i_i533_3 v_conv3_i_i534_3 v_xor_i_i533_3 8;
vpc v_conv3_i_i534_3@uint8 v_conv3_i_i534_3@uint32;
(*   %conv4.i.i535.3 = zext i8 %conv5.i.i537.2 to i32 *)
cast v_conv4_i_i535_3@uint32 v_conv5_i_i537_2@uint8;
(*   %shr.i.i536.3 = ashr i32 %conv4.i.i535.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i536_3 tmp_to_be_used v_conv4_i_i535_3 1;
(*   %conv5.i.i537.3 = trunc i32 %shr.i.i536.3 to i8 *)
split tmp_v_shr_i_i536_3 v_conv5_i_i537_3 v_shr_i_i536_3 8;
vpc v_conv5_i_i537_3@uint8 v_conv5_i_i537_3@uint32;
(*   %conv6.i.i538.3 = zext i8 %conv7.i.i540.2 to i32 *)
cast v_conv6_i_i538_3@uint32 v_conv7_i_i540_2@uint8;
(*   %shl.i.i539.3 = shl i32 %conv6.i.i538.3, 1 *)
shls discard_31 v_shl_i_i539_3 v_conv6_i_i538_3 1;
(*   %conv7.i.i540.3 = trunc i32 %shl.i.i539.3 to i8 *)
split tmp_v_shl_i_i539_3 v_conv7_i_i540_3 v_shl_i_i539_3 8;
vpc v_conv7_i_i540_3@uint8 v_conv7_i_i540_3@uint32;
(*   %conv.i.i528.4 = zext i8 %conv5.i.i537.3 to i32 *)
cast v_conv_i_i528_4@uint32 v_conv5_i_i537_3@uint8;
(*   %and.i.i529.4 = and i32 %conv.i.i528.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i529_4 v_conv_i_i528_4 (0x1)@uint32;
(*   %conv1.i.i530.4 = zext i8 %conv7.i.i540.3 to i32 *)
cast v_conv1_i_i530_4@uint32 v_conv7_i_i540_3@uint8;
(*   %mul.i.i531.4 = mul nsw i32 %and.i.i529.4, %conv1.i.i530.4 *)
mul v_mul_i_i531_4 v_and_i_i529_4 v_conv1_i_i530_4;
(*   %conv2.i.i532.4 = zext i8 %conv3.i.i534.3 to i32 *)
cast v_conv2_i_i532_4@uint32 v_conv3_i_i534_3@uint8;
(*   %xor.i.i533.4 = xor i32 %conv2.i.i532.4, %mul.i.i531.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i533_4 v_conv2_i_i532_4 v_mul_i_i531_4;
(*   %conv3.i.i534.4 = trunc i32 %xor.i.i533.4 to i8 *)
split tmp_v_xor_i_i533_4 v_conv3_i_i534_4 v_xor_i_i533_4 8;
vpc v_conv3_i_i534_4@uint8 v_conv3_i_i534_4@uint32;
(*   %conv4.i.i535.4 = zext i8 %conv5.i.i537.3 to i32 *)
cast v_conv4_i_i535_4@uint32 v_conv5_i_i537_3@uint8;
(*   %shr.i.i536.4 = ashr i32 %conv4.i.i535.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i536_4 tmp_to_be_used v_conv4_i_i535_4 1;
(*   %conv5.i.i537.4 = trunc i32 %shr.i.i536.4 to i8 *)
split tmp_v_shr_i_i536_4 v_conv5_i_i537_4 v_shr_i_i536_4 8;
vpc v_conv5_i_i537_4@uint8 v_conv5_i_i537_4@uint32;
(*   %conv6.i.i538.4 = zext i8 %conv7.i.i540.3 to i32 *)
cast v_conv6_i_i538_4@uint32 v_conv7_i_i540_3@uint8;
(*   %shl.i.i539.4 = shl i32 %conv6.i.i538.4, 1 *)
shls discard_32 v_shl_i_i539_4 v_conv6_i_i538_4 1;
(*   %conv7.i.i540.4 = trunc i32 %shl.i.i539.4 to i8 *)
split tmp_v_shl_i_i539_4 v_conv7_i_i540_4 v_shl_i_i539_4 8;
vpc v_conv7_i_i540_4@uint8 v_conv7_i_i540_4@uint32;
(*   %conv.i.i528.5 = zext i8 %conv5.i.i537.4 to i32 *)
cast v_conv_i_i528_5@uint32 v_conv5_i_i537_4@uint8;
(*   %and.i.i529.5 = and i32 %conv.i.i528.5, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i529_5 v_conv_i_i528_5 (0x1)@uint32;
(*   %conv1.i.i530.5 = zext i8 %conv7.i.i540.4 to i32 *)
cast v_conv1_i_i530_5@uint32 v_conv7_i_i540_4@uint8;
(*   %mul.i.i531.5 = mul nsw i32 %and.i.i529.5, %conv1.i.i530.5 *)
mul v_mul_i_i531_5 v_and_i_i529_5 v_conv1_i_i530_5;
(*   %conv2.i.i532.5 = zext i8 %conv3.i.i534.4 to i32 *)
cast v_conv2_i_i532_5@uint32 v_conv3_i_i534_4@uint8;
(*   %xor.i.i533.5 = xor i32 %conv2.i.i532.5, %mul.i.i531.5 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i533_5 v_conv2_i_i532_5 v_mul_i_i531_5;
(*   %conv3.i.i534.5 = trunc i32 %xor.i.i533.5 to i8 *)
split tmp_v_xor_i_i533_5 v_conv3_i_i534_5 v_xor_i_i533_5 8;
vpc v_conv3_i_i534_5@uint8 v_conv3_i_i534_5@uint32;
(*   %conv4.i.i535.5 = zext i8 %conv5.i.i537.4 to i32 *)
cast v_conv4_i_i535_5@uint32 v_conv5_i_i537_4@uint8;
(*   %shr.i.i536.5 = ashr i32 %conv4.i.i535.5, 1 *)
(* You may need to modify here *)
split v_shr_i_i536_5 tmp_to_be_used v_conv4_i_i535_5 1;
(*   %conv5.i.i537.5 = trunc i32 %shr.i.i536.5 to i8 *)
split tmp_v_shr_i_i536_5 v_conv5_i_i537_5 v_shr_i_i536_5 8;
vpc v_conv5_i_i537_5@uint8 v_conv5_i_i537_5@uint32;
(*   %conv6.i.i538.5 = zext i8 %conv7.i.i540.4 to i32 *)
cast v_conv6_i_i538_5@uint32 v_conv7_i_i540_4@uint8;
(*   %shl.i.i539.5 = shl i32 %conv6.i.i538.5, 1 *)
shls discard_33 v_shl_i_i539_5 v_conv6_i_i538_5 1;
(*   %conv7.i.i540.5 = trunc i32 %shl.i.i539.5 to i8 *)
split tmp_v_shl_i_i539_5 v_conv7_i_i540_5 v_shl_i_i539_5 8;
vpc v_conv7_i_i540_5@uint8 v_conv7_i_i540_5@uint32;
(*   %conv.i.i528.6 = zext i8 %conv5.i.i537.5 to i32 *)
cast v_conv_i_i528_6@uint32 v_conv5_i_i537_5@uint8;
(*   %and.i.i529.6 = and i32 %conv.i.i528.6, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i529_6 v_conv_i_i528_6 (0x1)@uint32;
(*   %conv1.i.i530.6 = zext i8 %conv7.i.i540.5 to i32 *)
cast v_conv1_i_i530_6@uint32 v_conv7_i_i540_5@uint8;
(*   %mul.i.i531.6 = mul nsw i32 %and.i.i529.6, %conv1.i.i530.6 *)
mul v_mul_i_i531_6 v_and_i_i529_6 v_conv1_i_i530_6;
(*   %conv2.i.i532.6 = zext i8 %conv3.i.i534.5 to i32 *)
cast v_conv2_i_i532_6@uint32 v_conv3_i_i534_5@uint8;
(*   %xor.i.i533.6 = xor i32 %conv2.i.i532.6, %mul.i.i531.6 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i533_6 v_conv2_i_i532_6 v_mul_i_i531_6;
(*   %conv3.i.i534.6 = trunc i32 %xor.i.i533.6 to i8 *)
split tmp_v_xor_i_i533_6 v_conv3_i_i534_6 v_xor_i_i533_6 8;
vpc v_conv3_i_i534_6@uint8 v_conv3_i_i534_6@uint32;
(*   %conv4.i.i535.6 = zext i8 %conv5.i.i537.5 to i32 *)
cast v_conv4_i_i535_6@uint32 v_conv5_i_i537_5@uint8;
(*   %shr.i.i536.6 = ashr i32 %conv4.i.i535.6, 1 *)
(* You may need to modify here *)
split v_shr_i_i536_6 tmp_to_be_used v_conv4_i_i535_6 1;
(*   %conv5.i.i537.6 = trunc i32 %shr.i.i536.6 to i8 *)
split tmp_v_shr_i_i536_6 v_conv5_i_i537_6 v_shr_i_i536_6 8;
vpc v_conv5_i_i537_6@uint8 v_conv5_i_i537_6@uint32;
(*   %conv6.i.i538.6 = zext i8 %conv7.i.i540.5 to i32 *)
cast v_conv6_i_i538_6@uint32 v_conv7_i_i540_5@uint8;
(*   %shl.i.i539.6 = shl i32 %conv6.i.i538.6, 1 *)
shls discard_34 v_shl_i_i539_6 v_conv6_i_i538_6 1;
(*   %conv7.i.i540.6 = trunc i32 %shl.i.i539.6 to i8 *)
split tmp_v_shl_i_i539_6 v_conv7_i_i540_6 v_shl_i_i539_6 8;
vpc v_conv7_i_i540_6@uint8 v_conv7_i_i540_6@uint32;
(*   %conv.i.i528.7 = zext i8 %conv5.i.i537.6 to i32 *)
cast v_conv_i_i528_7@uint32 v_conv5_i_i537_6@uint8;
(*   %and.i.i529.7 = and i32 %conv.i.i528.7, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i529_7 v_conv_i_i528_7 (0x1)@uint32;
(*   %conv1.i.i530.7 = zext i8 %conv7.i.i540.6 to i32 *)
cast v_conv1_i_i530_7@uint32 v_conv7_i_i540_6@uint8;
(*   %mul.i.i531.7 = mul nsw i32 %and.i.i529.7, %conv1.i.i530.7 *)
mul v_mul_i_i531_7 v_and_i_i529_7 v_conv1_i_i530_7;
(*   %conv2.i.i532.7 = zext i8 %conv3.i.i534.6 to i32 *)
cast v_conv2_i_i532_7@uint32 v_conv3_i_i534_6@uint8;
(*   %xor.i.i533.7 = xor i32 %conv2.i.i532.7, %mul.i.i531.7 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i533_7 v_conv2_i_i532_7 v_mul_i_i531_7;
(*   %conv3.i.i534.7 = trunc i32 %xor.i.i533.7 to i8 *)
split tmp_v_xor_i_i533_7 v_conv3_i_i534_7 v_xor_i_i533_7 8;
vpc v_conv3_i_i534_7@uint8 v_conv3_i_i534_7@uint32;
(*   store i8 %conv3.i.i534.7, i8* %add.ptr12, align 1 *)
mov cc_2 v_conv3_i_i534_7;
(*   %10 = load i8, i8* %a, align 1 *)
mov v10 a_0;
(*   %arrayidx4.i524.1 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %11 = load i8, i8* %arrayidx4.i524.1, align 1 *)
mov v11 b_1;
(*   %conv.i.i528.1172 = zext i8 %11 to i32 *)
cast v_conv_i_i528_1172@uint32 v11@uint8;
(*   %and.i.i529.1173 = and i32 %conv.i.i528.1172, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i529_1173 v_conv_i_i528_1172 (0x1)@uint32;
(*   %conv1.i.i530.1174 = zext i8 %10 to i32 *)
cast v_conv1_i_i530_1174@uint32 v10@uint8;
(*   %mul.i.i531.1175 = mul nsw i32 %and.i.i529.1173, %conv1.i.i530.1174 *)
mul v_mul_i_i531_1175 v_and_i_i529_1173 v_conv1_i_i530_1174;
(*   %conv3.i.i534.1176 = trunc i32 %mul.i.i531.1175 to i8 *)
split tmp_v_mul_i_i531_1175 v_conv3_i_i534_1176 v_mul_i_i531_1175 8;
vpc v_conv3_i_i534_1176@uint8 v_conv3_i_i534_1176@uint32;
(*   %conv4.i.i535.1177 = zext i8 %11 to i32 *)
cast v_conv4_i_i535_1177@uint32 v11@uint8;
(*   %shr.i.i536.1178 = ashr i32 %conv4.i.i535.1177, 1 *)
(* You may need to modify here *)
split v_shr_i_i536_1178 tmp_to_be_used v_conv4_i_i535_1177 1;
(*   %conv5.i.i537.1179 = trunc i32 %shr.i.i536.1178 to i8 *)
split tmp_v_shr_i_i536_1178 v_conv5_i_i537_1179 v_shr_i_i536_1178 8;
vpc v_conv5_i_i537_1179@uint8 v_conv5_i_i537_1179@uint32;
(*   %conv6.i.i538.1180 = zext i8 %10 to i32 *)
cast v_conv6_i_i538_1180@uint32 v10@uint8;
(*   %shl.i.i539.1181 = shl i32 %conv6.i.i538.1180, 1 *)
shls discard_35 v_shl_i_i539_1181 v_conv6_i_i538_1180 1;
(*   %conv7.i.i540.1182 = trunc i32 %shl.i.i539.1181 to i8 *)
split tmp_v_shl_i_i539_1181 v_conv7_i_i540_1182 v_shl_i_i539_1181 8;
vpc v_conv7_i_i540_1182@uint8 v_conv7_i_i540_1182@uint32;
(*   %conv.i.i528.1.1 = zext i8 %conv5.i.i537.1179 to i32 *)
cast v_conv_i_i528_1_1@uint32 v_conv5_i_i537_1179@uint8;
(*   %and.i.i529.1.1 = and i32 %conv.i.i528.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i529_1_1 v_conv_i_i528_1_1 (0x1)@uint32;
(*   %conv1.i.i530.1.1 = zext i8 %conv7.i.i540.1182 to i32 *)
cast v_conv1_i_i530_1_1@uint32 v_conv7_i_i540_1182@uint8;
(*   %mul.i.i531.1.1 = mul nsw i32 %and.i.i529.1.1, %conv1.i.i530.1.1 *)
mul v_mul_i_i531_1_1 v_and_i_i529_1_1 v_conv1_i_i530_1_1;
(*   %conv2.i.i532.1.1 = zext i8 %conv3.i.i534.1176 to i32 *)
cast v_conv2_i_i532_1_1@uint32 v_conv3_i_i534_1176@uint8;
(*   %xor.i.i533.1.1 = xor i32 %conv2.i.i532.1.1, %mul.i.i531.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i533_1_1 v_conv2_i_i532_1_1 v_mul_i_i531_1_1;
(*   %conv3.i.i534.1.1 = trunc i32 %xor.i.i533.1.1 to i8 *)
split tmp_v_xor_i_i533_1_1 v_conv3_i_i534_1_1 v_xor_i_i533_1_1 8;
vpc v_conv3_i_i534_1_1@uint8 v_conv3_i_i534_1_1@uint32;
(*   %conv4.i.i535.1.1 = zext i8 %conv5.i.i537.1179 to i32 *)
cast v_conv4_i_i535_1_1@uint32 v_conv5_i_i537_1179@uint8;
(*   %shr.i.i536.1.1 = ashr i32 %conv4.i.i535.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i536_1_1 tmp_to_be_used v_conv4_i_i535_1_1 1;
(*   %conv5.i.i537.1.1 = trunc i32 %shr.i.i536.1.1 to i8 *)
split tmp_v_shr_i_i536_1_1 v_conv5_i_i537_1_1 v_shr_i_i536_1_1 8;
vpc v_conv5_i_i537_1_1@uint8 v_conv5_i_i537_1_1@uint32;
(*   %conv6.i.i538.1.1 = zext i8 %conv7.i.i540.1182 to i32 *)
cast v_conv6_i_i538_1_1@uint32 v_conv7_i_i540_1182@uint8;
(*   %shl.i.i539.1.1 = shl i32 %conv6.i.i538.1.1, 1 *)
shls discard_36 v_shl_i_i539_1_1 v_conv6_i_i538_1_1 1;
(*   %conv7.i.i540.1.1 = trunc i32 %shl.i.i539.1.1 to i8 *)
split tmp_v_shl_i_i539_1_1 v_conv7_i_i540_1_1 v_shl_i_i539_1_1 8;
vpc v_conv7_i_i540_1_1@uint8 v_conv7_i_i540_1_1@uint32;
(*   %conv.i.i528.2.1 = zext i8 %conv5.i.i537.1.1 to i32 *)
cast v_conv_i_i528_2_1@uint32 v_conv5_i_i537_1_1@uint8;
(*   %and.i.i529.2.1 = and i32 %conv.i.i528.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i529_2_1 v_conv_i_i528_2_1 (0x1)@uint32;
(*   %conv1.i.i530.2.1 = zext i8 %conv7.i.i540.1.1 to i32 *)
cast v_conv1_i_i530_2_1@uint32 v_conv7_i_i540_1_1@uint8;
(*   %mul.i.i531.2.1 = mul nsw i32 %and.i.i529.2.1, %conv1.i.i530.2.1 *)
mul v_mul_i_i531_2_1 v_and_i_i529_2_1 v_conv1_i_i530_2_1;
(*   %conv2.i.i532.2.1 = zext i8 %conv3.i.i534.1.1 to i32 *)
cast v_conv2_i_i532_2_1@uint32 v_conv3_i_i534_1_1@uint8;
(*   %xor.i.i533.2.1 = xor i32 %conv2.i.i532.2.1, %mul.i.i531.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i533_2_1 v_conv2_i_i532_2_1 v_mul_i_i531_2_1;
(*   %conv3.i.i534.2.1 = trunc i32 %xor.i.i533.2.1 to i8 *)
split tmp_v_xor_i_i533_2_1 v_conv3_i_i534_2_1 v_xor_i_i533_2_1 8;
vpc v_conv3_i_i534_2_1@uint8 v_conv3_i_i534_2_1@uint32;
(*   %conv4.i.i535.2.1 = zext i8 %conv5.i.i537.1.1 to i32 *)
cast v_conv4_i_i535_2_1@uint32 v_conv5_i_i537_1_1@uint8;
(*   %shr.i.i536.2.1 = ashr i32 %conv4.i.i535.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i536_2_1 tmp_to_be_used v_conv4_i_i535_2_1 1;
(*   %conv5.i.i537.2.1 = trunc i32 %shr.i.i536.2.1 to i8 *)
split tmp_v_shr_i_i536_2_1 v_conv5_i_i537_2_1 v_shr_i_i536_2_1 8;
vpc v_conv5_i_i537_2_1@uint8 v_conv5_i_i537_2_1@uint32;
(*   %conv6.i.i538.2.1 = zext i8 %conv7.i.i540.1.1 to i32 *)
cast v_conv6_i_i538_2_1@uint32 v_conv7_i_i540_1_1@uint8;
(*   %shl.i.i539.2.1 = shl i32 %conv6.i.i538.2.1, 1 *)
shls discard_37 v_shl_i_i539_2_1 v_conv6_i_i538_2_1 1;
(*   %conv7.i.i540.2.1 = trunc i32 %shl.i.i539.2.1 to i8 *)
split tmp_v_shl_i_i539_2_1 v_conv7_i_i540_2_1 v_shl_i_i539_2_1 8;
vpc v_conv7_i_i540_2_1@uint8 v_conv7_i_i540_2_1@uint32;
(*   %conv.i.i528.3.1 = zext i8 %conv5.i.i537.2.1 to i32 *)
cast v_conv_i_i528_3_1@uint32 v_conv5_i_i537_2_1@uint8;
(*   %and.i.i529.3.1 = and i32 %conv.i.i528.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i529_3_1 v_conv_i_i528_3_1 (0x1)@uint32;
(*   %conv1.i.i530.3.1 = zext i8 %conv7.i.i540.2.1 to i32 *)
cast v_conv1_i_i530_3_1@uint32 v_conv7_i_i540_2_1@uint8;
(*   %mul.i.i531.3.1 = mul nsw i32 %and.i.i529.3.1, %conv1.i.i530.3.1 *)
mul v_mul_i_i531_3_1 v_and_i_i529_3_1 v_conv1_i_i530_3_1;
(*   %conv2.i.i532.3.1 = zext i8 %conv3.i.i534.2.1 to i32 *)
cast v_conv2_i_i532_3_1@uint32 v_conv3_i_i534_2_1@uint8;
(*   %xor.i.i533.3.1 = xor i32 %conv2.i.i532.3.1, %mul.i.i531.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i533_3_1 v_conv2_i_i532_3_1 v_mul_i_i531_3_1;
(*   %conv3.i.i534.3.1 = trunc i32 %xor.i.i533.3.1 to i8 *)
split tmp_v_xor_i_i533_3_1 v_conv3_i_i534_3_1 v_xor_i_i533_3_1 8;
vpc v_conv3_i_i534_3_1@uint8 v_conv3_i_i534_3_1@uint32;
(*   %conv4.i.i535.3.1 = zext i8 %conv5.i.i537.2.1 to i32 *)
cast v_conv4_i_i535_3_1@uint32 v_conv5_i_i537_2_1@uint8;
(*   %shr.i.i536.3.1 = ashr i32 %conv4.i.i535.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i536_3_1 tmp_to_be_used v_conv4_i_i535_3_1 1;
(*   %conv5.i.i537.3.1 = trunc i32 %shr.i.i536.3.1 to i8 *)
split tmp_v_shr_i_i536_3_1 v_conv5_i_i537_3_1 v_shr_i_i536_3_1 8;
vpc v_conv5_i_i537_3_1@uint8 v_conv5_i_i537_3_1@uint32;
(*   %conv6.i.i538.3.1 = zext i8 %conv7.i.i540.2.1 to i32 *)
cast v_conv6_i_i538_3_1@uint32 v_conv7_i_i540_2_1@uint8;
(*   %shl.i.i539.3.1 = shl i32 %conv6.i.i538.3.1, 1 *)
shls discard_38 v_shl_i_i539_3_1 v_conv6_i_i538_3_1 1;
(*   %conv7.i.i540.3.1 = trunc i32 %shl.i.i539.3.1 to i8 *)
split tmp_v_shl_i_i539_3_1 v_conv7_i_i540_3_1 v_shl_i_i539_3_1 8;
vpc v_conv7_i_i540_3_1@uint8 v_conv7_i_i540_3_1@uint32;
(*   %conv.i.i528.4.1 = zext i8 %conv5.i.i537.3.1 to i32 *)
cast v_conv_i_i528_4_1@uint32 v_conv5_i_i537_3_1@uint8;
(*   %and.i.i529.4.1 = and i32 %conv.i.i528.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i529_4_1 v_conv_i_i528_4_1 (0x1)@uint32;
(*   %conv1.i.i530.4.1 = zext i8 %conv7.i.i540.3.1 to i32 *)
cast v_conv1_i_i530_4_1@uint32 v_conv7_i_i540_3_1@uint8;
(*   %mul.i.i531.4.1 = mul nsw i32 %and.i.i529.4.1, %conv1.i.i530.4.1 *)
mul v_mul_i_i531_4_1 v_and_i_i529_4_1 v_conv1_i_i530_4_1;
(*   %conv2.i.i532.4.1 = zext i8 %conv3.i.i534.3.1 to i32 *)
cast v_conv2_i_i532_4_1@uint32 v_conv3_i_i534_3_1@uint8;
(*   %xor.i.i533.4.1 = xor i32 %conv2.i.i532.4.1, %mul.i.i531.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i533_4_1 v_conv2_i_i532_4_1 v_mul_i_i531_4_1;
(*   %conv3.i.i534.4.1 = trunc i32 %xor.i.i533.4.1 to i8 *)
split tmp_v_xor_i_i533_4_1 v_conv3_i_i534_4_1 v_xor_i_i533_4_1 8;
vpc v_conv3_i_i534_4_1@uint8 v_conv3_i_i534_4_1@uint32;
(*   %conv4.i.i535.4.1 = zext i8 %conv5.i.i537.3.1 to i32 *)
cast v_conv4_i_i535_4_1@uint32 v_conv5_i_i537_3_1@uint8;
(*   %shr.i.i536.4.1 = ashr i32 %conv4.i.i535.4.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i536_4_1 tmp_to_be_used v_conv4_i_i535_4_1 1;
(*   %conv5.i.i537.4.1 = trunc i32 %shr.i.i536.4.1 to i8 *)
split tmp_v_shr_i_i536_4_1 v_conv5_i_i537_4_1 v_shr_i_i536_4_1 8;
vpc v_conv5_i_i537_4_1@uint8 v_conv5_i_i537_4_1@uint32;
(*   %conv6.i.i538.4.1 = zext i8 %conv7.i.i540.3.1 to i32 *)
cast v_conv6_i_i538_4_1@uint32 v_conv7_i_i540_3_1@uint8;
(*   %shl.i.i539.4.1 = shl i32 %conv6.i.i538.4.1, 1 *)
shls discard_39 v_shl_i_i539_4_1 v_conv6_i_i538_4_1 1;
(*   %conv7.i.i540.4.1 = trunc i32 %shl.i.i539.4.1 to i8 *)
split tmp_v_shl_i_i539_4_1 v_conv7_i_i540_4_1 v_shl_i_i539_4_1 8;
vpc v_conv7_i_i540_4_1@uint8 v_conv7_i_i540_4_1@uint32;
(*   %conv.i.i528.5.1 = zext i8 %conv5.i.i537.4.1 to i32 *)
cast v_conv_i_i528_5_1@uint32 v_conv5_i_i537_4_1@uint8;
(*   %and.i.i529.5.1 = and i32 %conv.i.i528.5.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i529_5_1 v_conv_i_i528_5_1 (0x1)@uint32;
(*   %conv1.i.i530.5.1 = zext i8 %conv7.i.i540.4.1 to i32 *)
cast v_conv1_i_i530_5_1@uint32 v_conv7_i_i540_4_1@uint8;
(*   %mul.i.i531.5.1 = mul nsw i32 %and.i.i529.5.1, %conv1.i.i530.5.1 *)
mul v_mul_i_i531_5_1 v_and_i_i529_5_1 v_conv1_i_i530_5_1;
(*   %conv2.i.i532.5.1 = zext i8 %conv3.i.i534.4.1 to i32 *)
cast v_conv2_i_i532_5_1@uint32 v_conv3_i_i534_4_1@uint8;
(*   %xor.i.i533.5.1 = xor i32 %conv2.i.i532.5.1, %mul.i.i531.5.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i533_5_1 v_conv2_i_i532_5_1 v_mul_i_i531_5_1;
(*   %conv3.i.i534.5.1 = trunc i32 %xor.i.i533.5.1 to i8 *)
split tmp_v_xor_i_i533_5_1 v_conv3_i_i534_5_1 v_xor_i_i533_5_1 8;
vpc v_conv3_i_i534_5_1@uint8 v_conv3_i_i534_5_1@uint32;
(*   %conv4.i.i535.5.1 = zext i8 %conv5.i.i537.4.1 to i32 *)
cast v_conv4_i_i535_5_1@uint32 v_conv5_i_i537_4_1@uint8;
(*   %shr.i.i536.5.1 = ashr i32 %conv4.i.i535.5.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i536_5_1 tmp_to_be_used v_conv4_i_i535_5_1 1;
(*   %conv5.i.i537.5.1 = trunc i32 %shr.i.i536.5.1 to i8 *)
split tmp_v_shr_i_i536_5_1 v_conv5_i_i537_5_1 v_shr_i_i536_5_1 8;
vpc v_conv5_i_i537_5_1@uint8 v_conv5_i_i537_5_1@uint32;
(*   %conv6.i.i538.5.1 = zext i8 %conv7.i.i540.4.1 to i32 *)
cast v_conv6_i_i538_5_1@uint32 v_conv7_i_i540_4_1@uint8;
(*   %shl.i.i539.5.1 = shl i32 %conv6.i.i538.5.1, 1 *)
shls discard_40 v_shl_i_i539_5_1 v_conv6_i_i538_5_1 1;
(*   %conv7.i.i540.5.1 = trunc i32 %shl.i.i539.5.1 to i8 *)
split tmp_v_shl_i_i539_5_1 v_conv7_i_i540_5_1 v_shl_i_i539_5_1 8;
vpc v_conv7_i_i540_5_1@uint8 v_conv7_i_i540_5_1@uint32;
(*   %conv.i.i528.6.1 = zext i8 %conv5.i.i537.5.1 to i32 *)
cast v_conv_i_i528_6_1@uint32 v_conv5_i_i537_5_1@uint8;
(*   %and.i.i529.6.1 = and i32 %conv.i.i528.6.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i529_6_1 v_conv_i_i528_6_1 (0x1)@uint32;
(*   %conv1.i.i530.6.1 = zext i8 %conv7.i.i540.5.1 to i32 *)
cast v_conv1_i_i530_6_1@uint32 v_conv7_i_i540_5_1@uint8;
(*   %mul.i.i531.6.1 = mul nsw i32 %and.i.i529.6.1, %conv1.i.i530.6.1 *)
mul v_mul_i_i531_6_1 v_and_i_i529_6_1 v_conv1_i_i530_6_1;
(*   %conv2.i.i532.6.1 = zext i8 %conv3.i.i534.5.1 to i32 *)
cast v_conv2_i_i532_6_1@uint32 v_conv3_i_i534_5_1@uint8;
(*   %xor.i.i533.6.1 = xor i32 %conv2.i.i532.6.1, %mul.i.i531.6.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i533_6_1 v_conv2_i_i532_6_1 v_mul_i_i531_6_1;
(*   %conv3.i.i534.6.1 = trunc i32 %xor.i.i533.6.1 to i8 *)
split tmp_v_xor_i_i533_6_1 v_conv3_i_i534_6_1 v_xor_i_i533_6_1 8;
vpc v_conv3_i_i534_6_1@uint8 v_conv3_i_i534_6_1@uint32;
(*   %conv4.i.i535.6.1 = zext i8 %conv5.i.i537.5.1 to i32 *)
cast v_conv4_i_i535_6_1@uint32 v_conv5_i_i537_5_1@uint8;
(*   %shr.i.i536.6.1 = ashr i32 %conv4.i.i535.6.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i536_6_1 tmp_to_be_used v_conv4_i_i535_6_1 1;
(*   %conv5.i.i537.6.1 = trunc i32 %shr.i.i536.6.1 to i8 *)
split tmp_v_shr_i_i536_6_1 v_conv5_i_i537_6_1 v_shr_i_i536_6_1 8;
vpc v_conv5_i_i537_6_1@uint8 v_conv5_i_i537_6_1@uint32;
(*   %conv6.i.i538.6.1 = zext i8 %conv7.i.i540.5.1 to i32 *)
cast v_conv6_i_i538_6_1@uint32 v_conv7_i_i540_5_1@uint8;
(*   %shl.i.i539.6.1 = shl i32 %conv6.i.i538.6.1, 1 *)
shls discard_41 v_shl_i_i539_6_1 v_conv6_i_i538_6_1 1;
(*   %conv7.i.i540.6.1 = trunc i32 %shl.i.i539.6.1 to i8 *)
split tmp_v_shl_i_i539_6_1 v_conv7_i_i540_6_1 v_shl_i_i539_6_1 8;
vpc v_conv7_i_i540_6_1@uint8 v_conv7_i_i540_6_1@uint32;
(*   %conv.i.i528.7.1 = zext i8 %conv5.i.i537.6.1 to i32 *)
cast v_conv_i_i528_7_1@uint32 v_conv5_i_i537_6_1@uint8;
(*   %and.i.i529.7.1 = and i32 %conv.i.i528.7.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i529_7_1 v_conv_i_i528_7_1 (0x1)@uint32;
(*   %conv1.i.i530.7.1 = zext i8 %conv7.i.i540.6.1 to i32 *)
cast v_conv1_i_i530_7_1@uint32 v_conv7_i_i540_6_1@uint8;
(*   %mul.i.i531.7.1 = mul nsw i32 %and.i.i529.7.1, %conv1.i.i530.7.1 *)
mul v_mul_i_i531_7_1 v_and_i_i529_7_1 v_conv1_i_i530_7_1;
(*   %conv2.i.i532.7.1 = zext i8 %conv3.i.i534.6.1 to i32 *)
cast v_conv2_i_i532_7_1@uint32 v_conv3_i_i534_6_1@uint8;
(*   %xor.i.i533.7.1 = xor i32 %conv2.i.i532.7.1, %mul.i.i531.7.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i533_7_1 v_conv2_i_i532_7_1 v_mul_i_i531_7_1;
(*   %conv3.i.i534.7.1 = trunc i32 %xor.i.i533.7.1 to i8 *)
split tmp_v_xor_i_i533_7_1 v_conv3_i_i534_7_1 v_xor_i_i533_7_1 8;
vpc v_conv3_i_i534_7_1@uint8 v_conv3_i_i534_7_1@uint32;
(*   %arrayidx6.i544.1 = getelementptr inbounds i8, i8* %add.ptr12, i64 1 *)
(*   store i8 %conv3.i.i534.7.1, i8* %arrayidx6.i544.1, align 1 *)
mov cc_3 v_conv3_i_i534_7_1;
(*   %arraydecay13 = getelementptr inbounds [8 x i8], [8 x i8]* %cc, i64 0, i64 0 *)
(*   %add.ptr14 = getelementptr inbounds i8, i8* %arraydecay13, i64 4 *)
(*   %12 = load i8, i8* %a, align 1 *)
mov v12 a_0;
(*   %13 = load i8, i8* %b, align 1 *)
mov v13 b_0;
(*   %conv.i.i485 = zext i8 %13 to i32 *)
cast v_conv_i_i485@uint32 v13@uint8;
(*   %and.i.i486 = and i32 %conv.i.i485, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i486 v_conv_i_i485 (0x1)@uint32;
(*   %conv1.i.i487 = zext i8 %12 to i32 *)
cast v_conv1_i_i487@uint32 v12@uint8;
(*   %mul.i.i488 = mul nsw i32 %and.i.i486, %conv1.i.i487 *)
mul v_mul_i_i488 v_and_i_i486 v_conv1_i_i487;
(*   %conv3.i.i491 = trunc i32 %mul.i.i488 to i8 *)
split tmp_v_mul_i_i488 v_conv3_i_i491 v_mul_i_i488 8;
vpc v_conv3_i_i491@uint8 v_conv3_i_i491@uint32;
(*   %conv4.i.i492 = zext i8 %13 to i32 *)
cast v_conv4_i_i492@uint32 v13@uint8;
(*   %shr.i.i493 = ashr i32 %conv4.i.i492, 1 *)
(* You may need to modify here *)
split v_shr_i_i493 tmp_to_be_used v_conv4_i_i492 1;
(*   %conv5.i.i494 = trunc i32 %shr.i.i493 to i8 *)
split tmp_v_shr_i_i493 v_conv5_i_i494 v_shr_i_i493 8;
vpc v_conv5_i_i494@uint8 v_conv5_i_i494@uint32;
(*   %conv6.i.i495 = zext i8 %12 to i32 *)
cast v_conv6_i_i495@uint32 v12@uint8;
(*   %shl.i.i496 = shl i32 %conv6.i.i495, 1 *)
shls discard_42 v_shl_i_i496 v_conv6_i_i495 1;
(*   %conv7.i.i497 = trunc i32 %shl.i.i496 to i8 *)
split tmp_v_shl_i_i496 v_conv7_i_i497 v_shl_i_i496 8;
vpc v_conv7_i_i497@uint8 v_conv7_i_i497@uint32;
(*   %conv.i.i485.1 = zext i8 %conv5.i.i494 to i32 *)
cast v_conv_i_i485_1@uint32 v_conv5_i_i494@uint8;
(*   %and.i.i486.1 = and i32 %conv.i.i485.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i486_1 v_conv_i_i485_1 (0x1)@uint32;
(*   %conv1.i.i487.1 = zext i8 %conv7.i.i497 to i32 *)
cast v_conv1_i_i487_1@uint32 v_conv7_i_i497@uint8;
(*   %mul.i.i488.1 = mul nsw i32 %and.i.i486.1, %conv1.i.i487.1 *)
mul v_mul_i_i488_1 v_and_i_i486_1 v_conv1_i_i487_1;
(*   %conv2.i.i489.1 = zext i8 %conv3.i.i491 to i32 *)
cast v_conv2_i_i489_1@uint32 v_conv3_i_i491@uint8;
(*   %xor.i.i490.1 = xor i32 %conv2.i.i489.1, %mul.i.i488.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i490_1 v_conv2_i_i489_1 v_mul_i_i488_1;
(*   %conv3.i.i491.1 = trunc i32 %xor.i.i490.1 to i8 *)
split tmp_v_xor_i_i490_1 v_conv3_i_i491_1 v_xor_i_i490_1 8;
vpc v_conv3_i_i491_1@uint8 v_conv3_i_i491_1@uint32;
(*   %conv4.i.i492.1 = zext i8 %conv5.i.i494 to i32 *)
cast v_conv4_i_i492_1@uint32 v_conv5_i_i494@uint8;
(*   %shr.i.i493.1 = ashr i32 %conv4.i.i492.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i493_1 tmp_to_be_used v_conv4_i_i492_1 1;
(*   %conv5.i.i494.1 = trunc i32 %shr.i.i493.1 to i8 *)
split tmp_v_shr_i_i493_1 v_conv5_i_i494_1 v_shr_i_i493_1 8;
vpc v_conv5_i_i494_1@uint8 v_conv5_i_i494_1@uint32;
(*   %conv6.i.i495.1 = zext i8 %conv7.i.i497 to i32 *)
cast v_conv6_i_i495_1@uint32 v_conv7_i_i497@uint8;
(*   %shl.i.i496.1 = shl i32 %conv6.i.i495.1, 1 *)
shls discard_43 v_shl_i_i496_1 v_conv6_i_i495_1 1;
(*   %conv7.i.i497.1 = trunc i32 %shl.i.i496.1 to i8 *)
split tmp_v_shl_i_i496_1 v_conv7_i_i497_1 v_shl_i_i496_1 8;
vpc v_conv7_i_i497_1@uint8 v_conv7_i_i497_1@uint32;
(*   %conv.i.i485.2 = zext i8 %conv5.i.i494.1 to i32 *)
cast v_conv_i_i485_2@uint32 v_conv5_i_i494_1@uint8;
(*   %and.i.i486.2 = and i32 %conv.i.i485.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i486_2 v_conv_i_i485_2 (0x1)@uint32;
(*   %conv1.i.i487.2 = zext i8 %conv7.i.i497.1 to i32 *)
cast v_conv1_i_i487_2@uint32 v_conv7_i_i497_1@uint8;
(*   %mul.i.i488.2 = mul nsw i32 %and.i.i486.2, %conv1.i.i487.2 *)
mul v_mul_i_i488_2 v_and_i_i486_2 v_conv1_i_i487_2;
(*   %conv2.i.i489.2 = zext i8 %conv3.i.i491.1 to i32 *)
cast v_conv2_i_i489_2@uint32 v_conv3_i_i491_1@uint8;
(*   %xor.i.i490.2 = xor i32 %conv2.i.i489.2, %mul.i.i488.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i490_2 v_conv2_i_i489_2 v_mul_i_i488_2;
(*   %conv3.i.i491.2 = trunc i32 %xor.i.i490.2 to i8 *)
split tmp_v_xor_i_i490_2 v_conv3_i_i491_2 v_xor_i_i490_2 8;
vpc v_conv3_i_i491_2@uint8 v_conv3_i_i491_2@uint32;
(*   %conv4.i.i492.2 = zext i8 %conv5.i.i494.1 to i32 *)
cast v_conv4_i_i492_2@uint32 v_conv5_i_i494_1@uint8;
(*   %shr.i.i493.2 = ashr i32 %conv4.i.i492.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i493_2 tmp_to_be_used v_conv4_i_i492_2 1;
(*   %conv5.i.i494.2 = trunc i32 %shr.i.i493.2 to i8 *)
split tmp_v_shr_i_i493_2 v_conv5_i_i494_2 v_shr_i_i493_2 8;
vpc v_conv5_i_i494_2@uint8 v_conv5_i_i494_2@uint32;
(*   %conv6.i.i495.2 = zext i8 %conv7.i.i497.1 to i32 *)
cast v_conv6_i_i495_2@uint32 v_conv7_i_i497_1@uint8;
(*   %shl.i.i496.2 = shl i32 %conv6.i.i495.2, 1 *)
shls discard_44 v_shl_i_i496_2 v_conv6_i_i495_2 1;
(*   %conv7.i.i497.2 = trunc i32 %shl.i.i496.2 to i8 *)
split tmp_v_shl_i_i496_2 v_conv7_i_i497_2 v_shl_i_i496_2 8;
vpc v_conv7_i_i497_2@uint8 v_conv7_i_i497_2@uint32;
(*   %conv.i.i485.3 = zext i8 %conv5.i.i494.2 to i32 *)
cast v_conv_i_i485_3@uint32 v_conv5_i_i494_2@uint8;
(*   %and.i.i486.3 = and i32 %conv.i.i485.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i486_3 v_conv_i_i485_3 (0x1)@uint32;
(*   %conv1.i.i487.3 = zext i8 %conv7.i.i497.2 to i32 *)
cast v_conv1_i_i487_3@uint32 v_conv7_i_i497_2@uint8;
(*   %mul.i.i488.3 = mul nsw i32 %and.i.i486.3, %conv1.i.i487.3 *)
mul v_mul_i_i488_3 v_and_i_i486_3 v_conv1_i_i487_3;
(*   %conv2.i.i489.3 = zext i8 %conv3.i.i491.2 to i32 *)
cast v_conv2_i_i489_3@uint32 v_conv3_i_i491_2@uint8;
(*   %xor.i.i490.3 = xor i32 %conv2.i.i489.3, %mul.i.i488.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i490_3 v_conv2_i_i489_3 v_mul_i_i488_3;
(*   %conv3.i.i491.3 = trunc i32 %xor.i.i490.3 to i8 *)
split tmp_v_xor_i_i490_3 v_conv3_i_i491_3 v_xor_i_i490_3 8;
vpc v_conv3_i_i491_3@uint8 v_conv3_i_i491_3@uint32;
(*   %conv4.i.i492.3 = zext i8 %conv5.i.i494.2 to i32 *)
cast v_conv4_i_i492_3@uint32 v_conv5_i_i494_2@uint8;
(*   %shr.i.i493.3 = ashr i32 %conv4.i.i492.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i493_3 tmp_to_be_used v_conv4_i_i492_3 1;
(*   %conv5.i.i494.3 = trunc i32 %shr.i.i493.3 to i8 *)
split tmp_v_shr_i_i493_3 v_conv5_i_i494_3 v_shr_i_i493_3 8;
vpc v_conv5_i_i494_3@uint8 v_conv5_i_i494_3@uint32;
(*   %conv6.i.i495.3 = zext i8 %conv7.i.i497.2 to i32 *)
cast v_conv6_i_i495_3@uint32 v_conv7_i_i497_2@uint8;
(*   %shl.i.i496.3 = shl i32 %conv6.i.i495.3, 1 *)
shls discard_45 v_shl_i_i496_3 v_conv6_i_i495_3 1;
(*   %conv7.i.i497.3 = trunc i32 %shl.i.i496.3 to i8 *)
split tmp_v_shl_i_i496_3 v_conv7_i_i497_3 v_shl_i_i496_3 8;
vpc v_conv7_i_i497_3@uint8 v_conv7_i_i497_3@uint32;
(*   %conv.i.i485.4 = zext i8 %conv5.i.i494.3 to i32 *)
cast v_conv_i_i485_4@uint32 v_conv5_i_i494_3@uint8;
(*   %and.i.i486.4 = and i32 %conv.i.i485.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i486_4 v_conv_i_i485_4 (0x1)@uint32;
(*   %conv1.i.i487.4 = zext i8 %conv7.i.i497.3 to i32 *)
cast v_conv1_i_i487_4@uint32 v_conv7_i_i497_3@uint8;
(*   %mul.i.i488.4 = mul nsw i32 %and.i.i486.4, %conv1.i.i487.4 *)
mul v_mul_i_i488_4 v_and_i_i486_4 v_conv1_i_i487_4;
(*   %conv2.i.i489.4 = zext i8 %conv3.i.i491.3 to i32 *)
cast v_conv2_i_i489_4@uint32 v_conv3_i_i491_3@uint8;
(*   %xor.i.i490.4 = xor i32 %conv2.i.i489.4, %mul.i.i488.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i490_4 v_conv2_i_i489_4 v_mul_i_i488_4;
(*   %conv3.i.i491.4 = trunc i32 %xor.i.i490.4 to i8 *)
split tmp_v_xor_i_i490_4 v_conv3_i_i491_4 v_xor_i_i490_4 8;
vpc v_conv3_i_i491_4@uint8 v_conv3_i_i491_4@uint32;
(*   %conv4.i.i492.4 = zext i8 %conv5.i.i494.3 to i32 *)
cast v_conv4_i_i492_4@uint32 v_conv5_i_i494_3@uint8;
(*   %shr.i.i493.4 = ashr i32 %conv4.i.i492.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i493_4 tmp_to_be_used v_conv4_i_i492_4 1;
(*   %conv5.i.i494.4 = trunc i32 %shr.i.i493.4 to i8 *)
split tmp_v_shr_i_i493_4 v_conv5_i_i494_4 v_shr_i_i493_4 8;
vpc v_conv5_i_i494_4@uint8 v_conv5_i_i494_4@uint32;
(*   %conv6.i.i495.4 = zext i8 %conv7.i.i497.3 to i32 *)
cast v_conv6_i_i495_4@uint32 v_conv7_i_i497_3@uint8;
(*   %shl.i.i496.4 = shl i32 %conv6.i.i495.4, 1 *)
shls discard_46 v_shl_i_i496_4 v_conv6_i_i495_4 1;
(*   %conv7.i.i497.4 = trunc i32 %shl.i.i496.4 to i8 *)
split tmp_v_shl_i_i496_4 v_conv7_i_i497_4 v_shl_i_i496_4 8;
vpc v_conv7_i_i497_4@uint8 v_conv7_i_i497_4@uint32;
(*   %conv.i.i485.5 = zext i8 %conv5.i.i494.4 to i32 *)
cast v_conv_i_i485_5@uint32 v_conv5_i_i494_4@uint8;
(*   %and.i.i486.5 = and i32 %conv.i.i485.5, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i486_5 v_conv_i_i485_5 (0x1)@uint32;
(*   %conv1.i.i487.5 = zext i8 %conv7.i.i497.4 to i32 *)
cast v_conv1_i_i487_5@uint32 v_conv7_i_i497_4@uint8;
(*   %mul.i.i488.5 = mul nsw i32 %and.i.i486.5, %conv1.i.i487.5 *)
mul v_mul_i_i488_5 v_and_i_i486_5 v_conv1_i_i487_5;
(*   %conv2.i.i489.5 = zext i8 %conv3.i.i491.4 to i32 *)
cast v_conv2_i_i489_5@uint32 v_conv3_i_i491_4@uint8;
(*   %xor.i.i490.5 = xor i32 %conv2.i.i489.5, %mul.i.i488.5 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i490_5 v_conv2_i_i489_5 v_mul_i_i488_5;
(*   %conv3.i.i491.5 = trunc i32 %xor.i.i490.5 to i8 *)
split tmp_v_xor_i_i490_5 v_conv3_i_i491_5 v_xor_i_i490_5 8;
vpc v_conv3_i_i491_5@uint8 v_conv3_i_i491_5@uint32;
(*   %conv4.i.i492.5 = zext i8 %conv5.i.i494.4 to i32 *)
cast v_conv4_i_i492_5@uint32 v_conv5_i_i494_4@uint8;
(*   %shr.i.i493.5 = ashr i32 %conv4.i.i492.5, 1 *)
(* You may need to modify here *)
split v_shr_i_i493_5 tmp_to_be_used v_conv4_i_i492_5 1;
(*   %conv5.i.i494.5 = trunc i32 %shr.i.i493.5 to i8 *)
split tmp_v_shr_i_i493_5 v_conv5_i_i494_5 v_shr_i_i493_5 8;
vpc v_conv5_i_i494_5@uint8 v_conv5_i_i494_5@uint32;
(*   %conv6.i.i495.5 = zext i8 %conv7.i.i497.4 to i32 *)
cast v_conv6_i_i495_5@uint32 v_conv7_i_i497_4@uint8;
(*   %shl.i.i496.5 = shl i32 %conv6.i.i495.5, 1 *)
shls discard_47 v_shl_i_i496_5 v_conv6_i_i495_5 1;
(*   %conv7.i.i497.5 = trunc i32 %shl.i.i496.5 to i8 *)
split tmp_v_shl_i_i496_5 v_conv7_i_i497_5 v_shl_i_i496_5 8;
vpc v_conv7_i_i497_5@uint8 v_conv7_i_i497_5@uint32;
(*   %conv.i.i485.6 = zext i8 %conv5.i.i494.5 to i32 *)
cast v_conv_i_i485_6@uint32 v_conv5_i_i494_5@uint8;
(*   %and.i.i486.6 = and i32 %conv.i.i485.6, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i486_6 v_conv_i_i485_6 (0x1)@uint32;
(*   %conv1.i.i487.6 = zext i8 %conv7.i.i497.5 to i32 *)
cast v_conv1_i_i487_6@uint32 v_conv7_i_i497_5@uint8;
(*   %mul.i.i488.6 = mul nsw i32 %and.i.i486.6, %conv1.i.i487.6 *)
mul v_mul_i_i488_6 v_and_i_i486_6 v_conv1_i_i487_6;
(*   %conv2.i.i489.6 = zext i8 %conv3.i.i491.5 to i32 *)
cast v_conv2_i_i489_6@uint32 v_conv3_i_i491_5@uint8;
(*   %xor.i.i490.6 = xor i32 %conv2.i.i489.6, %mul.i.i488.6 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i490_6 v_conv2_i_i489_6 v_mul_i_i488_6;
(*   %conv3.i.i491.6 = trunc i32 %xor.i.i490.6 to i8 *)
split tmp_v_xor_i_i490_6 v_conv3_i_i491_6 v_xor_i_i490_6 8;
vpc v_conv3_i_i491_6@uint8 v_conv3_i_i491_6@uint32;
(*   %conv4.i.i492.6 = zext i8 %conv5.i.i494.5 to i32 *)
cast v_conv4_i_i492_6@uint32 v_conv5_i_i494_5@uint8;
(*   %shr.i.i493.6 = ashr i32 %conv4.i.i492.6, 1 *)
(* You may need to modify here *)
split v_shr_i_i493_6 tmp_to_be_used v_conv4_i_i492_6 1;
(*   %conv5.i.i494.6 = trunc i32 %shr.i.i493.6 to i8 *)
split tmp_v_shr_i_i493_6 v_conv5_i_i494_6 v_shr_i_i493_6 8;
vpc v_conv5_i_i494_6@uint8 v_conv5_i_i494_6@uint32;
(*   %conv6.i.i495.6 = zext i8 %conv7.i.i497.5 to i32 *)
cast v_conv6_i_i495_6@uint32 v_conv7_i_i497_5@uint8;
(*   %shl.i.i496.6 = shl i32 %conv6.i.i495.6, 1 *)
shls discard_48 v_shl_i_i496_6 v_conv6_i_i495_6 1;
(*   %conv7.i.i497.6 = trunc i32 %shl.i.i496.6 to i8 *)
split tmp_v_shl_i_i496_6 v_conv7_i_i497_6 v_shl_i_i496_6 8;
vpc v_conv7_i_i497_6@uint8 v_conv7_i_i497_6@uint32;
(*   %conv.i.i485.7 = zext i8 %conv5.i.i494.6 to i32 *)
cast v_conv_i_i485_7@uint32 v_conv5_i_i494_6@uint8;
(*   %and.i.i486.7 = and i32 %conv.i.i485.7, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i486_7 v_conv_i_i485_7 (0x1)@uint32;
(*   %conv1.i.i487.7 = zext i8 %conv7.i.i497.6 to i32 *)
cast v_conv1_i_i487_7@uint32 v_conv7_i_i497_6@uint8;
(*   %mul.i.i488.7 = mul nsw i32 %and.i.i486.7, %conv1.i.i487.7 *)
mul v_mul_i_i488_7 v_and_i_i486_7 v_conv1_i_i487_7;
(*   %conv2.i.i489.7 = zext i8 %conv3.i.i491.6 to i32 *)
cast v_conv2_i_i489_7@uint32 v_conv3_i_i491_6@uint8;
(*   %xor.i.i490.7 = xor i32 %conv2.i.i489.7, %mul.i.i488.7 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i490_7 v_conv2_i_i489_7 v_mul_i_i488_7;
(*   %conv3.i.i491.7 = trunc i32 %xor.i.i490.7 to i8 *)
split tmp_v_xor_i_i490_7 v_conv3_i_i491_7 v_xor_i_i490_7 8;
vpc v_conv3_i_i491_7@uint8 v_conv3_i_i491_7@uint32;
(*   store i8 %conv3.i.i491.7, i8* %add.ptr14, align 1 *)
mov cc_4 v_conv3_i_i491_7;
(*   %arrayidx.i477.1 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %14 = load i8, i8* %arrayidx.i477.1, align 1 *)
mov v14 a_1;
(*   %arrayidx4.i481.1 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %15 = load i8, i8* %arrayidx4.i481.1, align 1 *)
mov v15 b_1;
(*   %conv.i.i485.1161 = zext i8 %15 to i32 *)
cast v_conv_i_i485_1161@uint32 v15@uint8;
(*   %and.i.i486.1162 = and i32 %conv.i.i485.1161, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i486_1162 v_conv_i_i485_1161 (0x1)@uint32;
(*   %conv1.i.i487.1163 = zext i8 %14 to i32 *)
cast v_conv1_i_i487_1163@uint32 v14@uint8;
(*   %mul.i.i488.1164 = mul nsw i32 %and.i.i486.1162, %conv1.i.i487.1163 *)
mul v_mul_i_i488_1164 v_and_i_i486_1162 v_conv1_i_i487_1163;
(*   %conv3.i.i491.1165 = trunc i32 %mul.i.i488.1164 to i8 *)
split tmp_v_mul_i_i488_1164 v_conv3_i_i491_1165 v_mul_i_i488_1164 8;
vpc v_conv3_i_i491_1165@uint8 v_conv3_i_i491_1165@uint32;
(*   %conv4.i.i492.1166 = zext i8 %15 to i32 *)
cast v_conv4_i_i492_1166@uint32 v15@uint8;
(*   %shr.i.i493.1167 = ashr i32 %conv4.i.i492.1166, 1 *)
(* You may need to modify here *)
split v_shr_i_i493_1167 tmp_to_be_used v_conv4_i_i492_1166 1;
(*   %conv5.i.i494.1168 = trunc i32 %shr.i.i493.1167 to i8 *)
split tmp_v_shr_i_i493_1167 v_conv5_i_i494_1168 v_shr_i_i493_1167 8;
vpc v_conv5_i_i494_1168@uint8 v_conv5_i_i494_1168@uint32;
(*   %conv6.i.i495.1169 = zext i8 %14 to i32 *)
cast v_conv6_i_i495_1169@uint32 v14@uint8;
(*   %shl.i.i496.1170 = shl i32 %conv6.i.i495.1169, 1 *)
shls discard_49 v_shl_i_i496_1170 v_conv6_i_i495_1169 1;
(*   %conv7.i.i497.1171 = trunc i32 %shl.i.i496.1170 to i8 *)
split tmp_v_shl_i_i496_1170 v_conv7_i_i497_1171 v_shl_i_i496_1170 8;
vpc v_conv7_i_i497_1171@uint8 v_conv7_i_i497_1171@uint32;
(*   %conv.i.i485.1.1 = zext i8 %conv5.i.i494.1168 to i32 *)
cast v_conv_i_i485_1_1@uint32 v_conv5_i_i494_1168@uint8;
(*   %and.i.i486.1.1 = and i32 %conv.i.i485.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i486_1_1 v_conv_i_i485_1_1 (0x1)@uint32;
(*   %conv1.i.i487.1.1 = zext i8 %conv7.i.i497.1171 to i32 *)
cast v_conv1_i_i487_1_1@uint32 v_conv7_i_i497_1171@uint8;
(*   %mul.i.i488.1.1 = mul nsw i32 %and.i.i486.1.1, %conv1.i.i487.1.1 *)
mul v_mul_i_i488_1_1 v_and_i_i486_1_1 v_conv1_i_i487_1_1;
(*   %conv2.i.i489.1.1 = zext i8 %conv3.i.i491.1165 to i32 *)
cast v_conv2_i_i489_1_1@uint32 v_conv3_i_i491_1165@uint8;
(*   %xor.i.i490.1.1 = xor i32 %conv2.i.i489.1.1, %mul.i.i488.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i490_1_1 v_conv2_i_i489_1_1 v_mul_i_i488_1_1;
(*   %conv3.i.i491.1.1 = trunc i32 %xor.i.i490.1.1 to i8 *)
split tmp_v_xor_i_i490_1_1 v_conv3_i_i491_1_1 v_xor_i_i490_1_1 8;
vpc v_conv3_i_i491_1_1@uint8 v_conv3_i_i491_1_1@uint32;
(*   %conv4.i.i492.1.1 = zext i8 %conv5.i.i494.1168 to i32 *)
cast v_conv4_i_i492_1_1@uint32 v_conv5_i_i494_1168@uint8;
(*   %shr.i.i493.1.1 = ashr i32 %conv4.i.i492.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i493_1_1 tmp_to_be_used v_conv4_i_i492_1_1 1;
(*   %conv5.i.i494.1.1 = trunc i32 %shr.i.i493.1.1 to i8 *)
split tmp_v_shr_i_i493_1_1 v_conv5_i_i494_1_1 v_shr_i_i493_1_1 8;
vpc v_conv5_i_i494_1_1@uint8 v_conv5_i_i494_1_1@uint32;
(*   %conv6.i.i495.1.1 = zext i8 %conv7.i.i497.1171 to i32 *)
cast v_conv6_i_i495_1_1@uint32 v_conv7_i_i497_1171@uint8;
(*   %shl.i.i496.1.1 = shl i32 %conv6.i.i495.1.1, 1 *)
shls discard_50 v_shl_i_i496_1_1 v_conv6_i_i495_1_1 1;
(*   %conv7.i.i497.1.1 = trunc i32 %shl.i.i496.1.1 to i8 *)
split tmp_v_shl_i_i496_1_1 v_conv7_i_i497_1_1 v_shl_i_i496_1_1 8;
vpc v_conv7_i_i497_1_1@uint8 v_conv7_i_i497_1_1@uint32;
(*   %conv.i.i485.2.1 = zext i8 %conv5.i.i494.1.1 to i32 *)
cast v_conv_i_i485_2_1@uint32 v_conv5_i_i494_1_1@uint8;
(*   %and.i.i486.2.1 = and i32 %conv.i.i485.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i486_2_1 v_conv_i_i485_2_1 (0x1)@uint32;
(*   %conv1.i.i487.2.1 = zext i8 %conv7.i.i497.1.1 to i32 *)
cast v_conv1_i_i487_2_1@uint32 v_conv7_i_i497_1_1@uint8;
(*   %mul.i.i488.2.1 = mul nsw i32 %and.i.i486.2.1, %conv1.i.i487.2.1 *)
mul v_mul_i_i488_2_1 v_and_i_i486_2_1 v_conv1_i_i487_2_1;
(*   %conv2.i.i489.2.1 = zext i8 %conv3.i.i491.1.1 to i32 *)
cast v_conv2_i_i489_2_1@uint32 v_conv3_i_i491_1_1@uint8;
(*   %xor.i.i490.2.1 = xor i32 %conv2.i.i489.2.1, %mul.i.i488.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i490_2_1 v_conv2_i_i489_2_1 v_mul_i_i488_2_1;
(*   %conv3.i.i491.2.1 = trunc i32 %xor.i.i490.2.1 to i8 *)
split tmp_v_xor_i_i490_2_1 v_conv3_i_i491_2_1 v_xor_i_i490_2_1 8;
vpc v_conv3_i_i491_2_1@uint8 v_conv3_i_i491_2_1@uint32;
(*   %conv4.i.i492.2.1 = zext i8 %conv5.i.i494.1.1 to i32 *)
cast v_conv4_i_i492_2_1@uint32 v_conv5_i_i494_1_1@uint8;
(*   %shr.i.i493.2.1 = ashr i32 %conv4.i.i492.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i493_2_1 tmp_to_be_used v_conv4_i_i492_2_1 1;
(*   %conv5.i.i494.2.1 = trunc i32 %shr.i.i493.2.1 to i8 *)
split tmp_v_shr_i_i493_2_1 v_conv5_i_i494_2_1 v_shr_i_i493_2_1 8;
vpc v_conv5_i_i494_2_1@uint8 v_conv5_i_i494_2_1@uint32;
(*   %conv6.i.i495.2.1 = zext i8 %conv7.i.i497.1.1 to i32 *)
cast v_conv6_i_i495_2_1@uint32 v_conv7_i_i497_1_1@uint8;
(*   %shl.i.i496.2.1 = shl i32 %conv6.i.i495.2.1, 1 *)
shls discard_51 v_shl_i_i496_2_1 v_conv6_i_i495_2_1 1;
(*   %conv7.i.i497.2.1 = trunc i32 %shl.i.i496.2.1 to i8 *)
split tmp_v_shl_i_i496_2_1 v_conv7_i_i497_2_1 v_shl_i_i496_2_1 8;
vpc v_conv7_i_i497_2_1@uint8 v_conv7_i_i497_2_1@uint32;
(*   %conv.i.i485.3.1 = zext i8 %conv5.i.i494.2.1 to i32 *)
cast v_conv_i_i485_3_1@uint32 v_conv5_i_i494_2_1@uint8;
(*   %and.i.i486.3.1 = and i32 %conv.i.i485.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i486_3_1 v_conv_i_i485_3_1 (0x1)@uint32;
(*   %conv1.i.i487.3.1 = zext i8 %conv7.i.i497.2.1 to i32 *)
cast v_conv1_i_i487_3_1@uint32 v_conv7_i_i497_2_1@uint8;
(*   %mul.i.i488.3.1 = mul nsw i32 %and.i.i486.3.1, %conv1.i.i487.3.1 *)
mul v_mul_i_i488_3_1 v_and_i_i486_3_1 v_conv1_i_i487_3_1;
(*   %conv2.i.i489.3.1 = zext i8 %conv3.i.i491.2.1 to i32 *)
cast v_conv2_i_i489_3_1@uint32 v_conv3_i_i491_2_1@uint8;
(*   %xor.i.i490.3.1 = xor i32 %conv2.i.i489.3.1, %mul.i.i488.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i490_3_1 v_conv2_i_i489_3_1 v_mul_i_i488_3_1;
(*   %conv3.i.i491.3.1 = trunc i32 %xor.i.i490.3.1 to i8 *)
split tmp_v_xor_i_i490_3_1 v_conv3_i_i491_3_1 v_xor_i_i490_3_1 8;
vpc v_conv3_i_i491_3_1@uint8 v_conv3_i_i491_3_1@uint32;
(*   %conv4.i.i492.3.1 = zext i8 %conv5.i.i494.2.1 to i32 *)
cast v_conv4_i_i492_3_1@uint32 v_conv5_i_i494_2_1@uint8;
(*   %shr.i.i493.3.1 = ashr i32 %conv4.i.i492.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i493_3_1 tmp_to_be_used v_conv4_i_i492_3_1 1;
(*   %conv5.i.i494.3.1 = trunc i32 %shr.i.i493.3.1 to i8 *)
split tmp_v_shr_i_i493_3_1 v_conv5_i_i494_3_1 v_shr_i_i493_3_1 8;
vpc v_conv5_i_i494_3_1@uint8 v_conv5_i_i494_3_1@uint32;
(*   %conv6.i.i495.3.1 = zext i8 %conv7.i.i497.2.1 to i32 *)
cast v_conv6_i_i495_3_1@uint32 v_conv7_i_i497_2_1@uint8;
(*   %shl.i.i496.3.1 = shl i32 %conv6.i.i495.3.1, 1 *)
shls discard_52 v_shl_i_i496_3_1 v_conv6_i_i495_3_1 1;
(*   %conv7.i.i497.3.1 = trunc i32 %shl.i.i496.3.1 to i8 *)
split tmp_v_shl_i_i496_3_1 v_conv7_i_i497_3_1 v_shl_i_i496_3_1 8;
vpc v_conv7_i_i497_3_1@uint8 v_conv7_i_i497_3_1@uint32;
(*   %conv.i.i485.4.1 = zext i8 %conv5.i.i494.3.1 to i32 *)
cast v_conv_i_i485_4_1@uint32 v_conv5_i_i494_3_1@uint8;
(*   %and.i.i486.4.1 = and i32 %conv.i.i485.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i486_4_1 v_conv_i_i485_4_1 (0x1)@uint32;
(*   %conv1.i.i487.4.1 = zext i8 %conv7.i.i497.3.1 to i32 *)
cast v_conv1_i_i487_4_1@uint32 v_conv7_i_i497_3_1@uint8;
(*   %mul.i.i488.4.1 = mul nsw i32 %and.i.i486.4.1, %conv1.i.i487.4.1 *)
mul v_mul_i_i488_4_1 v_and_i_i486_4_1 v_conv1_i_i487_4_1;
(*   %conv2.i.i489.4.1 = zext i8 %conv3.i.i491.3.1 to i32 *)
cast v_conv2_i_i489_4_1@uint32 v_conv3_i_i491_3_1@uint8;
(*   %xor.i.i490.4.1 = xor i32 %conv2.i.i489.4.1, %mul.i.i488.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i490_4_1 v_conv2_i_i489_4_1 v_mul_i_i488_4_1;
(*   %conv3.i.i491.4.1 = trunc i32 %xor.i.i490.4.1 to i8 *)
split tmp_v_xor_i_i490_4_1 v_conv3_i_i491_4_1 v_xor_i_i490_4_1 8;
vpc v_conv3_i_i491_4_1@uint8 v_conv3_i_i491_4_1@uint32;
(*   %conv4.i.i492.4.1 = zext i8 %conv5.i.i494.3.1 to i32 *)
cast v_conv4_i_i492_4_1@uint32 v_conv5_i_i494_3_1@uint8;
(*   %shr.i.i493.4.1 = ashr i32 %conv4.i.i492.4.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i493_4_1 tmp_to_be_used v_conv4_i_i492_4_1 1;
(*   %conv5.i.i494.4.1 = trunc i32 %shr.i.i493.4.1 to i8 *)
split tmp_v_shr_i_i493_4_1 v_conv5_i_i494_4_1 v_shr_i_i493_4_1 8;
vpc v_conv5_i_i494_4_1@uint8 v_conv5_i_i494_4_1@uint32;
(*   %conv6.i.i495.4.1 = zext i8 %conv7.i.i497.3.1 to i32 *)
cast v_conv6_i_i495_4_1@uint32 v_conv7_i_i497_3_1@uint8;
(*   %shl.i.i496.4.1 = shl i32 %conv6.i.i495.4.1, 1 *)
shls discard_53 v_shl_i_i496_4_1 v_conv6_i_i495_4_1 1;
(*   %conv7.i.i497.4.1 = trunc i32 %shl.i.i496.4.1 to i8 *)
split tmp_v_shl_i_i496_4_1 v_conv7_i_i497_4_1 v_shl_i_i496_4_1 8;
vpc v_conv7_i_i497_4_1@uint8 v_conv7_i_i497_4_1@uint32;
(*   %conv.i.i485.5.1 = zext i8 %conv5.i.i494.4.1 to i32 *)
cast v_conv_i_i485_5_1@uint32 v_conv5_i_i494_4_1@uint8;
(*   %and.i.i486.5.1 = and i32 %conv.i.i485.5.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i486_5_1 v_conv_i_i485_5_1 (0x1)@uint32;
(*   %conv1.i.i487.5.1 = zext i8 %conv7.i.i497.4.1 to i32 *)
cast v_conv1_i_i487_5_1@uint32 v_conv7_i_i497_4_1@uint8;
(*   %mul.i.i488.5.1 = mul nsw i32 %and.i.i486.5.1, %conv1.i.i487.5.1 *)
mul v_mul_i_i488_5_1 v_and_i_i486_5_1 v_conv1_i_i487_5_1;
(*   %conv2.i.i489.5.1 = zext i8 %conv3.i.i491.4.1 to i32 *)
cast v_conv2_i_i489_5_1@uint32 v_conv3_i_i491_4_1@uint8;
(*   %xor.i.i490.5.1 = xor i32 %conv2.i.i489.5.1, %mul.i.i488.5.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i490_5_1 v_conv2_i_i489_5_1 v_mul_i_i488_5_1;
(*   %conv3.i.i491.5.1 = trunc i32 %xor.i.i490.5.1 to i8 *)
split tmp_v_xor_i_i490_5_1 v_conv3_i_i491_5_1 v_xor_i_i490_5_1 8;
vpc v_conv3_i_i491_5_1@uint8 v_conv3_i_i491_5_1@uint32;
(*   %conv4.i.i492.5.1 = zext i8 %conv5.i.i494.4.1 to i32 *)
cast v_conv4_i_i492_5_1@uint32 v_conv5_i_i494_4_1@uint8;
(*   %shr.i.i493.5.1 = ashr i32 %conv4.i.i492.5.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i493_5_1 tmp_to_be_used v_conv4_i_i492_5_1 1;
(*   %conv5.i.i494.5.1 = trunc i32 %shr.i.i493.5.1 to i8 *)
split tmp_v_shr_i_i493_5_1 v_conv5_i_i494_5_1 v_shr_i_i493_5_1 8;
vpc v_conv5_i_i494_5_1@uint8 v_conv5_i_i494_5_1@uint32;
(*   %conv6.i.i495.5.1 = zext i8 %conv7.i.i497.4.1 to i32 *)
cast v_conv6_i_i495_5_1@uint32 v_conv7_i_i497_4_1@uint8;
(*   %shl.i.i496.5.1 = shl i32 %conv6.i.i495.5.1, 1 *)
shls discard_54 v_shl_i_i496_5_1 v_conv6_i_i495_5_1 1;
(*   %conv7.i.i497.5.1 = trunc i32 %shl.i.i496.5.1 to i8 *)
split tmp_v_shl_i_i496_5_1 v_conv7_i_i497_5_1 v_shl_i_i496_5_1 8;
vpc v_conv7_i_i497_5_1@uint8 v_conv7_i_i497_5_1@uint32;
(*   %conv.i.i485.6.1 = zext i8 %conv5.i.i494.5.1 to i32 *)
cast v_conv_i_i485_6_1@uint32 v_conv5_i_i494_5_1@uint8;
(*   %and.i.i486.6.1 = and i32 %conv.i.i485.6.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i486_6_1 v_conv_i_i485_6_1 (0x1)@uint32;
(*   %conv1.i.i487.6.1 = zext i8 %conv7.i.i497.5.1 to i32 *)
cast v_conv1_i_i487_6_1@uint32 v_conv7_i_i497_5_1@uint8;
(*   %mul.i.i488.6.1 = mul nsw i32 %and.i.i486.6.1, %conv1.i.i487.6.1 *)
mul v_mul_i_i488_6_1 v_and_i_i486_6_1 v_conv1_i_i487_6_1;
(*   %conv2.i.i489.6.1 = zext i8 %conv3.i.i491.5.1 to i32 *)
cast v_conv2_i_i489_6_1@uint32 v_conv3_i_i491_5_1@uint8;
(*   %xor.i.i490.6.1 = xor i32 %conv2.i.i489.6.1, %mul.i.i488.6.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i490_6_1 v_conv2_i_i489_6_1 v_mul_i_i488_6_1;
(*   %conv3.i.i491.6.1 = trunc i32 %xor.i.i490.6.1 to i8 *)
split tmp_v_xor_i_i490_6_1 v_conv3_i_i491_6_1 v_xor_i_i490_6_1 8;
vpc v_conv3_i_i491_6_1@uint8 v_conv3_i_i491_6_1@uint32;
(*   %conv4.i.i492.6.1 = zext i8 %conv5.i.i494.5.1 to i32 *)
cast v_conv4_i_i492_6_1@uint32 v_conv5_i_i494_5_1@uint8;
(*   %shr.i.i493.6.1 = ashr i32 %conv4.i.i492.6.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i493_6_1 tmp_to_be_used v_conv4_i_i492_6_1 1;
(*   %conv5.i.i494.6.1 = trunc i32 %shr.i.i493.6.1 to i8 *)
split tmp_v_shr_i_i493_6_1 v_conv5_i_i494_6_1 v_shr_i_i493_6_1 8;
vpc v_conv5_i_i494_6_1@uint8 v_conv5_i_i494_6_1@uint32;
(*   %conv6.i.i495.6.1 = zext i8 %conv7.i.i497.5.1 to i32 *)
cast v_conv6_i_i495_6_1@uint32 v_conv7_i_i497_5_1@uint8;
(*   %shl.i.i496.6.1 = shl i32 %conv6.i.i495.6.1, 1 *)
shls discard_55 v_shl_i_i496_6_1 v_conv6_i_i495_6_1 1;
(*   %conv7.i.i497.6.1 = trunc i32 %shl.i.i496.6.1 to i8 *)
split tmp_v_shl_i_i496_6_1 v_conv7_i_i497_6_1 v_shl_i_i496_6_1 8;
vpc v_conv7_i_i497_6_1@uint8 v_conv7_i_i497_6_1@uint32;
(*   %conv.i.i485.7.1 = zext i8 %conv5.i.i494.6.1 to i32 *)
cast v_conv_i_i485_7_1@uint32 v_conv5_i_i494_6_1@uint8;
(*   %and.i.i486.7.1 = and i32 %conv.i.i485.7.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i486_7_1 v_conv_i_i485_7_1 (0x1)@uint32;
(*   %conv1.i.i487.7.1 = zext i8 %conv7.i.i497.6.1 to i32 *)
cast v_conv1_i_i487_7_1@uint32 v_conv7_i_i497_6_1@uint8;
(*   %mul.i.i488.7.1 = mul nsw i32 %and.i.i486.7.1, %conv1.i.i487.7.1 *)
mul v_mul_i_i488_7_1 v_and_i_i486_7_1 v_conv1_i_i487_7_1;
(*   %conv2.i.i489.7.1 = zext i8 %conv3.i.i491.6.1 to i32 *)
cast v_conv2_i_i489_7_1@uint32 v_conv3_i_i491_6_1@uint8;
(*   %xor.i.i490.7.1 = xor i32 %conv2.i.i489.7.1, %mul.i.i488.7.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i490_7_1 v_conv2_i_i489_7_1 v_mul_i_i488_7_1;
(*   %conv3.i.i491.7.1 = trunc i32 %xor.i.i490.7.1 to i8 *)
split tmp_v_xor_i_i490_7_1 v_conv3_i_i491_7_1 v_xor_i_i490_7_1 8;
vpc v_conv3_i_i491_7_1@uint8 v_conv3_i_i491_7_1@uint32;
(*   %arrayidx6.i501.1 = getelementptr inbounds i8, i8* %add.ptr14, i64 1 *)
(*   store i8 %conv3.i.i491.7.1, i8* %arrayidx6.i501.1, align 1 *)
mov cc_5 v_conv3_i_i491_7_1;
(*   %add.ptr17 = getelementptr inbounds i8, i8* %r, i64 2 *)
(*   %scevgep126 = getelementptr [8 x i8], [8 x i8]* %cc, i64 0, i64 2 *)
(*   %scevgep131 = getelementptr [8 x i8], [8 x i8]* %dd, i64 0, i64 2 *)
(*   %16 = load i8, i8* %scevgep126, align 1 *)
mov v16 cc_2;
(*   %conv.i449 = zext i8 %16 to i32 *)
cast v_conv_i449@uint32 v16@uint8;
(*   %17 = load i8, i8* %add.ptr17, align 1 *)
mov v17 r_2;
(*   %conv5.i454 = zext i8 %17 to i32 *)
cast v_conv5_i454@uint32 v17@uint8;
(*   %xor.i455 = xor i32 %conv.i449, %conv5.i454 *)
(* You may need to modify here *)
xor uint32 v_xor_i455 v_conv_i449 v_conv5_i454;
(*   %conv6.i456 = trunc i32 %xor.i455 to i8 *)
split tmp_v_xor_i455 v_conv6_i456 v_xor_i455 8;
vpc v_conv6_i456@uint8 v_conv6_i456@uint32;
(*   store i8 %conv6.i456, i8* %scevgep131, align 1 *)
mov dd_2 v_conv6_i456;
(*   %scevgep129.1 = getelementptr i8, i8* %scevgep126, i64 1 *)
(*   %18 = load i8, i8* %scevgep129.1, align 1 *)
mov v18 cc_3;
(*   %conv.i449.1 = zext i8 %18 to i32 *)
cast v_conv_i449_1@uint32 v18@uint8;
(*   %scevgep130.1 = getelementptr i8, i8* %add.ptr17, i64 1 *)
(*   %19 = load i8, i8* %scevgep130.1, align 1 *)
mov v19 r_3;
(*   %conv5.i454.1 = zext i8 %19 to i32 *)
cast v_conv5_i454_1@uint32 v19@uint8;
(*   %xor.i455.1 = xor i32 %conv.i449.1, %conv5.i454.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i455_1 v_conv_i449_1 v_conv5_i454_1;
(*   %conv6.i456.1 = trunc i32 %xor.i455.1 to i8 *)
split tmp_v_xor_i455_1 v_conv6_i456_1 v_xor_i455_1 8;
vpc v_conv6_i456_1@uint8 v_conv6_i456_1@uint32;
(*   %scevgep132.1 = getelementptr i8, i8* %scevgep131, i64 1 *)
(*   store i8 %conv6.i456.1, i8* %scevgep132.1, align 1 *)
mov dd_3 v_conv6_i456_1;
(*   %scevgep79 = getelementptr [8 x i8], [8 x i8]* %dd, i64 0, i64 2 *)
(*   %20 = load i8, i8* %scevgep79, align 1 *)
mov v20 dd_2;
(*   %conv.i329 = zext i8 %20 to i32 *)
cast v_conv_i329@uint32 v20@uint8;
(*   %scevgep83 = getelementptr [8 x i8], [8 x i8]* %cc, i64 0, i64 0 *)
(*   %21 = load i8, i8* %scevgep83, align 1 *)
mov v21 cc_0;
(*   %conv5.i334 = zext i8 %21 to i32 *)
cast v_conv5_i334@uint32 v21@uint8;
(*   %xor.i335 = xor i32 %conv.i329, %conv5.i334 *)
(* You may need to modify here *)
xor uint32 v_xor_i335 v_conv_i329 v_conv5_i334;
(*   %conv6.i336 = trunc i32 %xor.i335 to i8 *)
split tmp_v_xor_i335 v_conv6_i336 v_xor_i335 8;
vpc v_conv6_i336@uint8 v_conv6_i336@uint32;
(*   store i8 %conv6.i336, i8* %c, align 1 *)
mov c_0 v_conv6_i336;
(*   %scevgep82.1 = getelementptr i8, i8* %scevgep79, i64 1 *)
(*   %22 = load i8, i8* %scevgep82.1, align 1 *)
mov v22 dd_3;
(*   %conv.i329.1 = zext i8 %22 to i32 *)
cast v_conv_i329_1@uint32 v22@uint8;
(*   %scevgep83.1 = getelementptr [8 x i8], [8 x i8]* %cc, i64 0, i64 1 *)
(*   %23 = load i8, i8* %scevgep83.1, align 1 *)
mov v23 cc_1;
(*   %conv5.i334.1 = zext i8 %23 to i32 *)
cast v_conv5_i334_1@uint32 v23@uint8;
(*   %xor.i335.1 = xor i32 %conv.i329.1, %conv5.i334.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i335_1 v_conv_i329_1 v_conv5_i334_1;
(*   %conv6.i336.1 = trunc i32 %xor.i335.1 to i8 *)
split tmp_v_xor_i335_1 v_conv6_i336_1 v_xor_i335_1 8;
vpc v_conv6_i336_1@uint8 v_conv6_i336_1@uint32;
(*   %scevgep84.1 = getelementptr i8, i8* %c, i64 1 *)
(*   store i8 %conv6.i336.1, i8* %scevgep84.1, align 1 *)
mov c_1 v_conv6_i336_1;
(*   %scevgep72 = getelementptr [8 x i8], [8 x i8]* %cc, i64 0, i64 2 *)
(*   %24 = load i8, i8* %scevgep72, align 1 *)
mov v24 cc_2;
(*   %conv.i304 = zext i8 %24 to i32 *)
cast v_conv_i304@uint32 v24@uint8;
(*   %25 = load i8, i8* %c, align 1 *)
mov v25 c_0;
(*   %conv5.i309 = zext i8 %25 to i32 *)
cast v_conv5_i309@uint32 v25@uint8;
(*   %xor.i310 = xor i32 %conv.i304, %conv5.i309 *)
(* You may need to modify here *)
xor uint32 v_xor_i310 v_conv_i304 v_conv5_i309;
(*   %conv6.i311 = trunc i32 %xor.i310 to i8 *)
split tmp_v_xor_i310 v_conv6_i311 v_xor_i310 8;
vpc v_conv6_i311@uint8 v_conv6_i311@uint32;
(*   store i8 %conv6.i311, i8* %c, align 1 *)
mov c_0 v_conv6_i311;
(*   %scevgep75.1 = getelementptr i8, i8* %scevgep72, i64 1 *)
(*   %26 = load i8, i8* %scevgep75.1, align 1 *)
mov v26 cc_3;
(*   %conv.i304.1 = zext i8 %26 to i32 *)
cast v_conv_i304_1@uint32 v26@uint8;
(*   %scevgep76.1 = getelementptr i8, i8* %c, i64 1 *)
(*   %27 = load i8, i8* %scevgep76.1, align 1 *)
mov v27 c_1;
(*   %conv5.i309.1 = zext i8 %27 to i32 *)
cast v_conv5_i309_1@uint32 v27@uint8;
(*   %xor.i310.1 = xor i32 %conv.i304.1, %conv5.i309.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i310_1 v_conv_i304_1 v_conv5_i309_1;
(*   %conv6.i311.1 = trunc i32 %xor.i310.1 to i8 *)
split tmp_v_xor_i310_1 v_conv6_i311_1 v_xor_i310_1 8;
vpc v_conv6_i311_1@uint8 v_conv6_i311_1@uint32;
(*   %scevgep77.1 = getelementptr i8, i8* %c, i64 1 *)
(*   store i8 %conv6.i311.1, i8* %scevgep77.1, align 1 *)
mov c_1 v_conv6_i311_1;
(*   %scevgep64 = getelementptr i8, i8* %r, i64 3 *)
(*   %28 = load i8, i8* %scevgep64, align 1 *)
mov v28 r_3;
(*   %conv.i272 = zext i8 %28 to i32 *)
cast v_conv_i272@uint32 v28@uint8;
(*   %29 = load i8, i8* %c, align 1 *)
mov v29 c_0;
(*   %conv5.i277 = zext i8 %29 to i32 *)
cast v_conv5_i277@uint32 v29@uint8;
(*   %xor.i278 = xor i32 %conv.i272, %conv5.i277 *)
(* You may need to modify here *)
xor uint32 v_xor_i278 v_conv_i272 v_conv5_i277;
(*   %conv6.i279 = trunc i32 %xor.i278 to i8 *)
split tmp_v_xor_i278 v_conv6_i279 v_xor_i278 8;
vpc v_conv6_i279@uint8 v_conv6_i279@uint32;
(*   store i8 %conv6.i279, i8* %c, align 1 *)
mov c_0 v_conv6_i279;
(*   %scevgep66 = getelementptr i8, i8* %scevgep64, i64 -1 *)
(*   %30 = load i8, i8* %scevgep66, align 1 *)
mov v30 r_2;
(*   %conv.i272.1 = zext i8 %30 to i32 *)
cast v_conv_i272_1@uint32 v30@uint8;
(*   %scevgep69.1 = getelementptr i8, i8* %c, i64 1 *)
(*   %31 = load i8, i8* %scevgep69.1, align 1 *)
mov v31 c_1;
(*   %conv5.i277.1 = zext i8 %31 to i32 *)
cast v_conv5_i277_1@uint32 v31@uint8;
(*   %xor.i278.1 = xor i32 %conv.i272.1, %conv5.i277.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i278_1 v_conv_i272_1 v_conv5_i277_1;
(*   %conv6.i279.1 = trunc i32 %xor.i278.1 to i8 *)
split tmp_v_xor_i278_1 v_conv6_i279_1 v_xor_i278_1 8;
vpc v_conv6_i279_1@uint8 v_conv6_i279_1@uint32;
(*   %scevgep70.1 = getelementptr i8, i8* %c, i64 1 *)
(*   store i8 %conv6.i279.1, i8* %scevgep70.1, align 1 *)
mov c_1 v_conv6_i279_1;
(*   %scevgep57 = getelementptr [8 x i8], [8 x i8]* %cc, i64 0, i64 4 *)
(*   %32 = load i8, i8* %scevgep57, align 1 *)
mov v32 cc_4;
(*   %conv.i250 = zext i8 %32 to i32 *)
cast v_conv_i250@uint32 v32@uint8;
(*   %33 = load i8, i8* %c, align 1 *)
mov v33 c_0;
(*   %conv5.i255 = zext i8 %33 to i32 *)
cast v_conv5_i255@uint32 v33@uint8;
(*   %xor.i256 = xor i32 %conv.i250, %conv5.i255 *)
(* You may need to modify here *)
xor uint32 v_xor_i256 v_conv_i250 v_conv5_i255;
(*   %conv6.i257 = trunc i32 %xor.i256 to i8 *)
split tmp_v_xor_i256 v_conv6_i257 v_xor_i256 8;
vpc v_conv6_i257@uint8 v_conv6_i257@uint32;
(*   store i8 %conv6.i257, i8* %c, align 1 *)
mov c_0 v_conv6_i257;
(*   %scevgep60.1 = getelementptr i8, i8* %scevgep57, i64 1 *)
(*   %34 = load i8, i8* %scevgep60.1, align 1 *)
mov v34 cc_5;
(*   %conv.i250.1 = zext i8 %34 to i32 *)
cast v_conv_i250_1@uint32 v34@uint8;
(*   %scevgep61.1 = getelementptr i8, i8* %c, i64 1 *)
(*   %35 = load i8, i8* %scevgep61.1, align 1 *)
mov v35 c_1;
(*   %conv5.i255.1 = zext i8 %35 to i32 *)
cast v_conv5_i255_1@uint32 v35@uint8;
(*   %xor.i256.1 = xor i32 %conv.i250.1, %conv5.i255.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i256_1 v_conv_i250_1 v_conv5_i255_1;
(*   %conv6.i257.1 = trunc i32 %xor.i256.1 to i8 *)
split tmp_v_xor_i256_1 v_conv6_i257_1 v_xor_i256_1 8;
vpc v_conv6_i257_1@uint8 v_conv6_i257_1@uint32;
(*   %scevgep62.1 = getelementptr i8, i8* %c, i64 1 *)
(*   store i8 %conv6.i257.1, i8* %scevgep62.1, align 1 *)
mov c_1 v_conv6_i257_1;
(*   %36 = load i8, i8* %a, align 1 *)
mov v36 a_0;
(*   %scevgep55.1 = getelementptr i8, i8* %a, i64 1 *)
(*   %37 = load i8, i8* %scevgep55.1, align 1 *)
mov v37 a_1;
(*   %conv.i.i188.1 = zext i8 %37 to i32 *)
cast v_conv_i_i188_1@uint32 v37@uint8;
(*   %conv1.i.i189.1 = zext i8 %36 to i32 *)
cast v_conv1_i_i189_1@uint32 v36@uint8;
(*   %xor.i.i190.1 = xor i32 %conv1.i.i189.1, %conv.i.i188.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i190_1 v_conv1_i_i189_1 v_conv_i_i188_1;
(*   %conv2.i.i191.1 = trunc i32 %xor.i.i190.1 to i8 *)
split tmp_v_xor_i_i190_1 v_conv2_i_i191_1 v_xor_i_i190_1 8;
vpc v_conv2_i_i191_1@uint8 v_conv2_i_i191_1@uint32;
(*   %38 = load i8, i8* %b, align 1 *)
mov v38 b_0;
(*   %scevgep51.1 = getelementptr i8, i8* %b, i64 1 *)
(*   %39 = load i8, i8* %scevgep51.1, align 1 *)
mov v39 b_1;
(*   %conv.i.i128.1 = zext i8 %39 to i32 *)
cast v_conv_i_i128_1@uint32 v39@uint8;
(*   %conv1.i.i129.1 = zext i8 %38 to i32 *)
cast v_conv1_i_i129_1@uint32 v38@uint8;
(*   %xor.i.i130.1 = xor i32 %conv1.i.i129.1, %conv.i.i128.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i130_1 v_conv1_i_i129_1 v_conv_i_i128_1;
(*   %conv2.i.i131.1 = trunc i32 %xor.i.i130.1 to i8 *)
split tmp_v_xor_i_i130_1 v_conv2_i_i131_1 v_xor_i_i130_1 8;
vpc v_conv2_i_i131_1@uint8 v_conv2_i_i131_1@uint32;
(*   %conv.i = zext i8 %conv2.i.i131.1 to i32 *)
cast v_conv_i@uint32 v_conv2_i_i131_1@uint8;
(*   %and.i = and i32 %conv.i, 1 *)
(* You may need to modify here *)
and uint32 v_and_i v_conv_i (0x1)@uint32;
(*   %conv1.i = zext i8 %conv2.i.i191.1 to i32 *)
cast v_conv1_i@uint32 v_conv2_i_i191_1@uint8;
(*   %mul.i = mul nsw i32 %and.i, %conv1.i *)
mul v_mul_i v_and_i v_conv1_i;
(*   %conv3.i = trunc i32 %mul.i to i8 *)
split tmp_v_mul_i v_conv3_i v_mul_i 8;
vpc v_conv3_i@uint8 v_conv3_i@uint32;
(*   %conv4.i = zext i8 %conv2.i.i131.1 to i32 *)
cast v_conv4_i@uint32 v_conv2_i_i131_1@uint8;
(*   %shr.i = ashr i32 %conv4.i, 1 *)
(* You may need to modify here *)
split v_shr_i tmp_to_be_used v_conv4_i 1;
(*   %conv5.i = trunc i32 %shr.i to i8 *)
split tmp_v_shr_i v_conv5_i v_shr_i 8;
vpc v_conv5_i@uint8 v_conv5_i@uint32;
(*   %conv6.i = zext i8 %conv2.i.i191.1 to i32 *)
cast v_conv6_i@uint32 v_conv2_i_i191_1@uint8;
(*   %shl.i = shl i32 %conv6.i, 1 *)
shls discard_56 v_shl_i v_conv6_i 1;
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
shls discard_57 v_shl_i_1 v_conv6_i_1 1;
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
shls discard_58 v_shl_i_2 v_conv6_i_2 1;
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
shls discard_59 v_shl_i_3 v_conv6_i_3 1;
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
shls discard_60 v_shl_i_4 v_conv6_i_4 1;
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
shls discard_61 v_shl_i_5 v_conv6_i_5 1;
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
shls discard_62 v_shl_i_6 v_conv6_i_6 1;
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
(*   %40 = load i8, i8* %c, align 1 *)
mov v40 c_0;
(*   %scevgep.1 = getelementptr i8, i8* %c, i64 1 *)
(*   %41 = load i8, i8* %scevgep.1, align 1 *)
mov v41 c_1;
(*   %conv.i.i102.1 = zext i8 %41 to i32 *)
cast v_conv_i_i102_1@uint32 v41@uint8;
(*   %conv1.i.i103.1 = zext i8 %40 to i32 *)
cast v_conv1_i_i103_1@uint32 v40@uint8;
(*   %xor.i.i104.1 = xor i32 %conv1.i.i103.1, %conv.i.i102.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i104_1 v_conv1_i_i103_1 v_conv_i_i102_1;
(*   %conv2.i.i105.1 = trunc i32 %xor.i.i104.1 to i8 *)
split tmp_v_xor_i_i104_1 v_conv2_i_i105_1 v_xor_i_i104_1 8;
vpc v_conv2_i_i105_1@uint8 v_conv2_i_i105_1@uint32;
(*   store i8 %conv2.i.i105.1, i8* %C, align 1 *)
mov C_0 v_conv2_i_i105_1;
(*   ret void *)


assert true && AB_0=C_0;

mov _ AB_0@uint8;
mov _ C_0@uint8;


{
  true
  &&
  true
}

