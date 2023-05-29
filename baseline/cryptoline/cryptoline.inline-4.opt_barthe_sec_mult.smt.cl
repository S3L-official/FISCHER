proc main (uint8 a_0, uint8 a_1, uint8 a_2, uint8 a_3, uint8 a_4, uint8 b_0, uint8 b_1, uint8 b_2, uint8 b_3, uint8 b_4, uint8 r_5, uint8 r_6, uint8 r_7, uint8 r_8, uint8 r_9) =
{
  true
  &&
  true
}



(*   %cc = alloca [50 x i8], align 16 *)
(*   %dd = alloca [50 x i8], align 16 *)
(*   %arraydecay = getelementptr inbounds [50 x i8], [50 x i8]* %cc, i64 0, i64 0 *)
(*   %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 5 *)
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
mov cc_5 v_conv3_i_i_7;
(*   %arrayidx.i.1 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %2 = load i8, i8* %arrayidx.i.1, align 1 *)
mov v2 a_1;
(*   %arrayidx4.i.1 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %3 = load i8, i8* %arrayidx4.i.1, align 1 *)
mov v3 b_1;
(*   %conv.i.i.1552 = zext i8 %3 to i32 *)
cast v_conv_i_i_1552@uint32 v3@uint8;
(*   %and.i.i.1553 = and i32 %conv.i.i.1552, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_1553 v_conv_i_i_1552 (0x1)@uint32;
(*   %conv1.i.i.1554 = zext i8 %2 to i32 *)
cast v_conv1_i_i_1554@uint32 v2@uint8;
(*   %mul.i.i.1555 = mul nsw i32 %and.i.i.1553, %conv1.i.i.1554 *)
mul v_mul_i_i_1555 v_and_i_i_1553 v_conv1_i_i_1554;
(*   %conv3.i.i.1556 = trunc i32 %mul.i.i.1555 to i8 *)
split tmp_v_mul_i_i_1555 v_conv3_i_i_1556 v_mul_i_i_1555 8;
vpc v_conv3_i_i_1556@uint8 v_conv3_i_i_1556@uint32;
(*   %conv4.i.i.1557 = zext i8 %3 to i32 *)
cast v_conv4_i_i_1557@uint32 v3@uint8;
(*   %shr.i.i.1558 = ashr i32 %conv4.i.i.1557, 1 *)
(* You may need to modify here *)
split v_shr_i_i_1558 tmp_to_be_used v_conv4_i_i_1557 1;
(*   %conv5.i.i.1559 = trunc i32 %shr.i.i.1558 to i8 *)
split tmp_v_shr_i_i_1558 v_conv5_i_i_1559 v_shr_i_i_1558 8;
vpc v_conv5_i_i_1559@uint8 v_conv5_i_i_1559@uint32;
(*   %conv6.i.i.1560 = zext i8 %2 to i32 *)
cast v_conv6_i_i_1560@uint32 v2@uint8;
(*   %shl.i.i.1561 = shl i32 %conv6.i.i.1560, 1 *)
shls discard_7 v_shl_i_i_1561 v_conv6_i_i_1560 1;
(*   %conv7.i.i.1562 = trunc i32 %shl.i.i.1561 to i8 *)
split tmp_v_shl_i_i_1561 v_conv7_i_i_1562 v_shl_i_i_1561 8;
vpc v_conv7_i_i_1562@uint8 v_conv7_i_i_1562@uint32;
(*   %conv.i.i.1.1 = zext i8 %conv5.i.i.1559 to i32 *)
cast v_conv_i_i_1_1@uint32 v_conv5_i_i_1559@uint8;
(*   %and.i.i.1.1 = and i32 %conv.i.i.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_1_1 v_conv_i_i_1_1 (0x1)@uint32;
(*   %conv1.i.i.1.1 = zext i8 %conv7.i.i.1562 to i32 *)
cast v_conv1_i_i_1_1@uint32 v_conv7_i_i_1562@uint8;
(*   %mul.i.i.1.1 = mul nsw i32 %and.i.i.1.1, %conv1.i.i.1.1 *)
mul v_mul_i_i_1_1 v_and_i_i_1_1 v_conv1_i_i_1_1;
(*   %conv2.i.i.1.1 = zext i8 %conv3.i.i.1556 to i32 *)
cast v_conv2_i_i_1_1@uint32 v_conv3_i_i_1556@uint8;
(*   %xor.i.i.1.1 = xor i32 %conv2.i.i.1.1, %mul.i.i.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_1_1 v_conv2_i_i_1_1 v_mul_i_i_1_1;
(*   %conv3.i.i.1.1 = trunc i32 %xor.i.i.1.1 to i8 *)
split tmp_v_xor_i_i_1_1 v_conv3_i_i_1_1 v_xor_i_i_1_1 8;
vpc v_conv3_i_i_1_1@uint8 v_conv3_i_i_1_1@uint32;
(*   %conv4.i.i.1.1 = zext i8 %conv5.i.i.1559 to i32 *)
cast v_conv4_i_i_1_1@uint32 v_conv5_i_i_1559@uint8;
(*   %shr.i.i.1.1 = ashr i32 %conv4.i.i.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i_1_1 tmp_to_be_used v_conv4_i_i_1_1 1;
(*   %conv5.i.i.1.1 = trunc i32 %shr.i.i.1.1 to i8 *)
split tmp_v_shr_i_i_1_1 v_conv5_i_i_1_1 v_shr_i_i_1_1 8;
vpc v_conv5_i_i_1_1@uint8 v_conv5_i_i_1_1@uint32;
(*   %conv6.i.i.1.1 = zext i8 %conv7.i.i.1562 to i32 *)
cast v_conv6_i_i_1_1@uint32 v_conv7_i_i_1562@uint8;
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
mov cc_6 v_conv3_i_i_7_1;
(*   %arrayidx.i.2 = getelementptr inbounds i8, i8* %a, i64 2 *)
(*   %4 = load i8, i8* %arrayidx.i.2, align 1 *)
mov v4 a_2;
(*   %arrayidx4.i.2 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %5 = load i8, i8* %arrayidx4.i.2, align 1 *)
mov v5 b_2;
(*   %conv.i.i.2563 = zext i8 %5 to i32 *)
cast v_conv_i_i_2563@uint32 v5@uint8;
(*   %and.i.i.2564 = and i32 %conv.i.i.2563, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_2564 v_conv_i_i_2563 (0x1)@uint32;
(*   %conv1.i.i.2565 = zext i8 %4 to i32 *)
cast v_conv1_i_i_2565@uint32 v4@uint8;
(*   %mul.i.i.2566 = mul nsw i32 %and.i.i.2564, %conv1.i.i.2565 *)
mul v_mul_i_i_2566 v_and_i_i_2564 v_conv1_i_i_2565;
(*   %conv3.i.i.2567 = trunc i32 %mul.i.i.2566 to i8 *)
split tmp_v_mul_i_i_2566 v_conv3_i_i_2567 v_mul_i_i_2566 8;
vpc v_conv3_i_i_2567@uint8 v_conv3_i_i_2567@uint32;
(*   %conv4.i.i.2568 = zext i8 %5 to i32 *)
cast v_conv4_i_i_2568@uint32 v5@uint8;
(*   %shr.i.i.2569 = ashr i32 %conv4.i.i.2568, 1 *)
(* You may need to modify here *)
split v_shr_i_i_2569 tmp_to_be_used v_conv4_i_i_2568 1;
(*   %conv5.i.i.2570 = trunc i32 %shr.i.i.2569 to i8 *)
split tmp_v_shr_i_i_2569 v_conv5_i_i_2570 v_shr_i_i_2569 8;
vpc v_conv5_i_i_2570@uint8 v_conv5_i_i_2570@uint32;
(*   %conv6.i.i.2571 = zext i8 %4 to i32 *)
cast v_conv6_i_i_2571@uint32 v4@uint8;
(*   %shl.i.i.2572 = shl i32 %conv6.i.i.2571, 1 *)
shls discard_14 v_shl_i_i_2572 v_conv6_i_i_2571 1;
(*   %conv7.i.i.2573 = trunc i32 %shl.i.i.2572 to i8 *)
split tmp_v_shl_i_i_2572 v_conv7_i_i_2573 v_shl_i_i_2572 8;
vpc v_conv7_i_i_2573@uint8 v_conv7_i_i_2573@uint32;
(*   %conv.i.i.1.2 = zext i8 %conv5.i.i.2570 to i32 *)
cast v_conv_i_i_1_2@uint32 v_conv5_i_i_2570@uint8;
(*   %and.i.i.1.2 = and i32 %conv.i.i.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_1_2 v_conv_i_i_1_2 (0x1)@uint32;
(*   %conv1.i.i.1.2 = zext i8 %conv7.i.i.2573 to i32 *)
cast v_conv1_i_i_1_2@uint32 v_conv7_i_i_2573@uint8;
(*   %mul.i.i.1.2 = mul nsw i32 %and.i.i.1.2, %conv1.i.i.1.2 *)
mul v_mul_i_i_1_2 v_and_i_i_1_2 v_conv1_i_i_1_2;
(*   %conv2.i.i.1.2 = zext i8 %conv3.i.i.2567 to i32 *)
cast v_conv2_i_i_1_2@uint32 v_conv3_i_i_2567@uint8;
(*   %xor.i.i.1.2 = xor i32 %conv2.i.i.1.2, %mul.i.i.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_1_2 v_conv2_i_i_1_2 v_mul_i_i_1_2;
(*   %conv3.i.i.1.2 = trunc i32 %xor.i.i.1.2 to i8 *)
split tmp_v_xor_i_i_1_2 v_conv3_i_i_1_2 v_xor_i_i_1_2 8;
vpc v_conv3_i_i_1_2@uint8 v_conv3_i_i_1_2@uint32;
(*   %conv4.i.i.1.2 = zext i8 %conv5.i.i.2570 to i32 *)
cast v_conv4_i_i_1_2@uint32 v_conv5_i_i_2570@uint8;
(*   %shr.i.i.1.2 = ashr i32 %conv4.i.i.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i_1_2 tmp_to_be_used v_conv4_i_i_1_2 1;
(*   %conv5.i.i.1.2 = trunc i32 %shr.i.i.1.2 to i8 *)
split tmp_v_shr_i_i_1_2 v_conv5_i_i_1_2 v_shr_i_i_1_2 8;
vpc v_conv5_i_i_1_2@uint8 v_conv5_i_i_1_2@uint32;
(*   %conv6.i.i.1.2 = zext i8 %conv7.i.i.2573 to i32 *)
cast v_conv6_i_i_1_2@uint32 v_conv7_i_i_2573@uint8;
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
mov cc_7 v_conv3_i_i_7_2;
(*   %arrayidx.i.3 = getelementptr inbounds i8, i8* %a, i64 3 *)
(*   %6 = load i8, i8* %arrayidx.i.3, align 1 *)
mov v6 a_3;
(*   %arrayidx4.i.3 = getelementptr inbounds i8, i8* %b, i64 3 *)
(*   %7 = load i8, i8* %arrayidx4.i.3, align 1 *)
mov v7 b_3;
(*   %conv.i.i.3574 = zext i8 %7 to i32 *)
cast v_conv_i_i_3574@uint32 v7@uint8;
(*   %and.i.i.3575 = and i32 %conv.i.i.3574, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_3575 v_conv_i_i_3574 (0x1)@uint32;
(*   %conv1.i.i.3576 = zext i8 %6 to i32 *)
cast v_conv1_i_i_3576@uint32 v6@uint8;
(*   %mul.i.i.3577 = mul nsw i32 %and.i.i.3575, %conv1.i.i.3576 *)
mul v_mul_i_i_3577 v_and_i_i_3575 v_conv1_i_i_3576;
(*   %conv3.i.i.3578 = trunc i32 %mul.i.i.3577 to i8 *)
split tmp_v_mul_i_i_3577 v_conv3_i_i_3578 v_mul_i_i_3577 8;
vpc v_conv3_i_i_3578@uint8 v_conv3_i_i_3578@uint32;
(*   %conv4.i.i.3579 = zext i8 %7 to i32 *)
cast v_conv4_i_i_3579@uint32 v7@uint8;
(*   %shr.i.i.3580 = ashr i32 %conv4.i.i.3579, 1 *)
(* You may need to modify here *)
split v_shr_i_i_3580 tmp_to_be_used v_conv4_i_i_3579 1;
(*   %conv5.i.i.3581 = trunc i32 %shr.i.i.3580 to i8 *)
split tmp_v_shr_i_i_3580 v_conv5_i_i_3581 v_shr_i_i_3580 8;
vpc v_conv5_i_i_3581@uint8 v_conv5_i_i_3581@uint32;
(*   %conv6.i.i.3582 = zext i8 %6 to i32 *)
cast v_conv6_i_i_3582@uint32 v6@uint8;
(*   %shl.i.i.3583 = shl i32 %conv6.i.i.3582, 1 *)
shls discard_21 v_shl_i_i_3583 v_conv6_i_i_3582 1;
(*   %conv7.i.i.3584 = trunc i32 %shl.i.i.3583 to i8 *)
split tmp_v_shl_i_i_3583 v_conv7_i_i_3584 v_shl_i_i_3583 8;
vpc v_conv7_i_i_3584@uint8 v_conv7_i_i_3584@uint32;
(*   %conv.i.i.1.3 = zext i8 %conv5.i.i.3581 to i32 *)
cast v_conv_i_i_1_3@uint32 v_conv5_i_i_3581@uint8;
(*   %and.i.i.1.3 = and i32 %conv.i.i.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_1_3 v_conv_i_i_1_3 (0x1)@uint32;
(*   %conv1.i.i.1.3 = zext i8 %conv7.i.i.3584 to i32 *)
cast v_conv1_i_i_1_3@uint32 v_conv7_i_i_3584@uint8;
(*   %mul.i.i.1.3 = mul nsw i32 %and.i.i.1.3, %conv1.i.i.1.3 *)
mul v_mul_i_i_1_3 v_and_i_i_1_3 v_conv1_i_i_1_3;
(*   %conv2.i.i.1.3 = zext i8 %conv3.i.i.3578 to i32 *)
cast v_conv2_i_i_1_3@uint32 v_conv3_i_i_3578@uint8;
(*   %xor.i.i.1.3 = xor i32 %conv2.i.i.1.3, %mul.i.i.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_1_3 v_conv2_i_i_1_3 v_mul_i_i_1_3;
(*   %conv3.i.i.1.3 = trunc i32 %xor.i.i.1.3 to i8 *)
split tmp_v_xor_i_i_1_3 v_conv3_i_i_1_3 v_xor_i_i_1_3 8;
vpc v_conv3_i_i_1_3@uint8 v_conv3_i_i_1_3@uint32;
(*   %conv4.i.i.1.3 = zext i8 %conv5.i.i.3581 to i32 *)
cast v_conv4_i_i_1_3@uint32 v_conv5_i_i_3581@uint8;
(*   %shr.i.i.1.3 = ashr i32 %conv4.i.i.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i_1_3 tmp_to_be_used v_conv4_i_i_1_3 1;
(*   %conv5.i.i.1.3 = trunc i32 %shr.i.i.1.3 to i8 *)
split tmp_v_shr_i_i_1_3 v_conv5_i_i_1_3 v_shr_i_i_1_3 8;
vpc v_conv5_i_i_1_3@uint8 v_conv5_i_i_1_3@uint32;
(*   %conv6.i.i.1.3 = zext i8 %conv7.i.i.3584 to i32 *)
cast v_conv6_i_i_1_3@uint32 v_conv7_i_i_3584@uint8;
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
mov cc_8 v_conv3_i_i_7_3;
(*   %arrayidx.i.4 = getelementptr inbounds i8, i8* %a, i64 4 *)
(*   %8 = load i8, i8* %arrayidx.i.4, align 1 *)
mov v8 a_4;
(*   %arrayidx4.i.4 = getelementptr inbounds i8, i8* %b, i64 4 *)
(*   %9 = load i8, i8* %arrayidx4.i.4, align 1 *)
mov v9 b_4;
(*   %conv.i.i.4585 = zext i8 %9 to i32 *)
cast v_conv_i_i_4585@uint32 v9@uint8;
(*   %and.i.i.4586 = and i32 %conv.i.i.4585, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_4586 v_conv_i_i_4585 (0x1)@uint32;
(*   %conv1.i.i.4587 = zext i8 %8 to i32 *)
cast v_conv1_i_i_4587@uint32 v8@uint8;
(*   %mul.i.i.4588 = mul nsw i32 %and.i.i.4586, %conv1.i.i.4587 *)
mul v_mul_i_i_4588 v_and_i_i_4586 v_conv1_i_i_4587;
(*   %conv3.i.i.4589 = trunc i32 %mul.i.i.4588 to i8 *)
split tmp_v_mul_i_i_4588 v_conv3_i_i_4589 v_mul_i_i_4588 8;
vpc v_conv3_i_i_4589@uint8 v_conv3_i_i_4589@uint32;
(*   %conv4.i.i.4590 = zext i8 %9 to i32 *)
cast v_conv4_i_i_4590@uint32 v9@uint8;
(*   %shr.i.i.4591 = ashr i32 %conv4.i.i.4590, 1 *)
(* You may need to modify here *)
split v_shr_i_i_4591 tmp_to_be_used v_conv4_i_i_4590 1;
(*   %conv5.i.i.4592 = trunc i32 %shr.i.i.4591 to i8 *)
split tmp_v_shr_i_i_4591 v_conv5_i_i_4592 v_shr_i_i_4591 8;
vpc v_conv5_i_i_4592@uint8 v_conv5_i_i_4592@uint32;
(*   %conv6.i.i.4593 = zext i8 %8 to i32 *)
cast v_conv6_i_i_4593@uint32 v8@uint8;
(*   %shl.i.i.4594 = shl i32 %conv6.i.i.4593, 1 *)
shls discard_28 v_shl_i_i_4594 v_conv6_i_i_4593 1;
(*   %conv7.i.i.4595 = trunc i32 %shl.i.i.4594 to i8 *)
split tmp_v_shl_i_i_4594 v_conv7_i_i_4595 v_shl_i_i_4594 8;
vpc v_conv7_i_i_4595@uint8 v_conv7_i_i_4595@uint32;
(*   %conv.i.i.1.4 = zext i8 %conv5.i.i.4592 to i32 *)
cast v_conv_i_i_1_4@uint32 v_conv5_i_i_4592@uint8;
(*   %and.i.i.1.4 = and i32 %conv.i.i.1.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_1_4 v_conv_i_i_1_4 (0x1)@uint32;
(*   %conv1.i.i.1.4 = zext i8 %conv7.i.i.4595 to i32 *)
cast v_conv1_i_i_1_4@uint32 v_conv7_i_i_4595@uint8;
(*   %mul.i.i.1.4 = mul nsw i32 %and.i.i.1.4, %conv1.i.i.1.4 *)
mul v_mul_i_i_1_4 v_and_i_i_1_4 v_conv1_i_i_1_4;
(*   %conv2.i.i.1.4 = zext i8 %conv3.i.i.4589 to i32 *)
cast v_conv2_i_i_1_4@uint32 v_conv3_i_i_4589@uint8;
(*   %xor.i.i.1.4 = xor i32 %conv2.i.i.1.4, %mul.i.i.1.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_1_4 v_conv2_i_i_1_4 v_mul_i_i_1_4;
(*   %conv3.i.i.1.4 = trunc i32 %xor.i.i.1.4 to i8 *)
split tmp_v_xor_i_i_1_4 v_conv3_i_i_1_4 v_xor_i_i_1_4 8;
vpc v_conv3_i_i_1_4@uint8 v_conv3_i_i_1_4@uint32;
(*   %conv4.i.i.1.4 = zext i8 %conv5.i.i.4592 to i32 *)
cast v_conv4_i_i_1_4@uint32 v_conv5_i_i_4592@uint8;
(*   %shr.i.i.1.4 = ashr i32 %conv4.i.i.1.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i_1_4 tmp_to_be_used v_conv4_i_i_1_4 1;
(*   %conv5.i.i.1.4 = trunc i32 %shr.i.i.1.4 to i8 *)
split tmp_v_shr_i_i_1_4 v_conv5_i_i_1_4 v_shr_i_i_1_4 8;
vpc v_conv5_i_i_1_4@uint8 v_conv5_i_i_1_4@uint32;
(*   %conv6.i.i.1.4 = zext i8 %conv7.i.i.4595 to i32 *)
cast v_conv6_i_i_1_4@uint32 v_conv7_i_i_4595@uint8;
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
(*   %arrayidx6.i.4 = getelementptr inbounds i8, i8* %add.ptr, i64 4 *)
(*   store i8 %conv3.i.i.7.4, i8* %arrayidx6.i.4, align 1 *)
mov cc_9 v_conv3_i_i_7_4;
(*   %arraydecay1 = getelementptr inbounds [50 x i8], [50 x i8]* %cc, i64 0, i64 0 *)
(*   %arraydecay4 = getelementptr inbounds [50 x i8], [50 x i8]* %cc, i64 0, i64 0 *)
(*   %add.ptr3 = getelementptr inbounds i8, i8* %arraydecay1, i64 10 *)
(*   %10 = load i8, i8* %a, align 1 *)
mov v10 a_0;
(*   %arrayidx4.i146 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %11 = load i8, i8* %arrayidx4.i146, align 1 *)
mov v11 b_1;
(*   %conv.i.i150 = zext i8 %11 to i32 *)
cast v_conv_i_i150@uint32 v11@uint8;
(*   %and.i.i151 = and i32 %conv.i.i150, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i151 v_conv_i_i150 (0x1)@uint32;
(*   %conv1.i.i152 = zext i8 %10 to i32 *)
cast v_conv1_i_i152@uint32 v10@uint8;
(*   %mul.i.i153 = mul nsw i32 %and.i.i151, %conv1.i.i152 *)
mul v_mul_i_i153 v_and_i_i151 v_conv1_i_i152;
(*   %conv3.i.i156 = trunc i32 %mul.i.i153 to i8 *)
split tmp_v_mul_i_i153 v_conv3_i_i156 v_mul_i_i153 8;
vpc v_conv3_i_i156@uint8 v_conv3_i_i156@uint32;
(*   %conv4.i.i157 = zext i8 %11 to i32 *)
cast v_conv4_i_i157@uint32 v11@uint8;
(*   %shr.i.i158 = ashr i32 %conv4.i.i157, 1 *)
(* You may need to modify here *)
split v_shr_i_i158 tmp_to_be_used v_conv4_i_i157 1;
(*   %conv5.i.i159 = trunc i32 %shr.i.i158 to i8 *)
split tmp_v_shr_i_i158 v_conv5_i_i159 v_shr_i_i158 8;
vpc v_conv5_i_i159@uint8 v_conv5_i_i159@uint32;
(*   %conv6.i.i160 = zext i8 %10 to i32 *)
cast v_conv6_i_i160@uint32 v10@uint8;
(*   %shl.i.i161 = shl i32 %conv6.i.i160, 1 *)
shls discard_35 v_shl_i_i161 v_conv6_i_i160 1;
(*   %conv7.i.i162 = trunc i32 %shl.i.i161 to i8 *)
split tmp_v_shl_i_i161 v_conv7_i_i162 v_shl_i_i161 8;
vpc v_conv7_i_i162@uint8 v_conv7_i_i162@uint32;
(*   %conv.i.i150.1 = zext i8 %conv5.i.i159 to i32 *)
cast v_conv_i_i150_1@uint32 v_conv5_i_i159@uint8;
(*   %and.i.i151.1 = and i32 %conv.i.i150.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i151_1 v_conv_i_i150_1 (0x1)@uint32;
(*   %conv1.i.i152.1 = zext i8 %conv7.i.i162 to i32 *)
cast v_conv1_i_i152_1@uint32 v_conv7_i_i162@uint8;
(*   %mul.i.i153.1 = mul nsw i32 %and.i.i151.1, %conv1.i.i152.1 *)
mul v_mul_i_i153_1 v_and_i_i151_1 v_conv1_i_i152_1;
(*   %conv2.i.i154.1 = zext i8 %conv3.i.i156 to i32 *)
cast v_conv2_i_i154_1@uint32 v_conv3_i_i156@uint8;
(*   %xor.i.i155.1 = xor i32 %conv2.i.i154.1, %mul.i.i153.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i155_1 v_conv2_i_i154_1 v_mul_i_i153_1;
(*   %conv3.i.i156.1 = trunc i32 %xor.i.i155.1 to i8 *)
split tmp_v_xor_i_i155_1 v_conv3_i_i156_1 v_xor_i_i155_1 8;
vpc v_conv3_i_i156_1@uint8 v_conv3_i_i156_1@uint32;
(*   %conv4.i.i157.1 = zext i8 %conv5.i.i159 to i32 *)
cast v_conv4_i_i157_1@uint32 v_conv5_i_i159@uint8;
(*   %shr.i.i158.1 = ashr i32 %conv4.i.i157.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i158_1 tmp_to_be_used v_conv4_i_i157_1 1;
(*   %conv5.i.i159.1 = trunc i32 %shr.i.i158.1 to i8 *)
split tmp_v_shr_i_i158_1 v_conv5_i_i159_1 v_shr_i_i158_1 8;
vpc v_conv5_i_i159_1@uint8 v_conv5_i_i159_1@uint32;
(*   %conv6.i.i160.1 = zext i8 %conv7.i.i162 to i32 *)
cast v_conv6_i_i160_1@uint32 v_conv7_i_i162@uint8;
(*   %shl.i.i161.1 = shl i32 %conv6.i.i160.1, 1 *)
shls discard_36 v_shl_i_i161_1 v_conv6_i_i160_1 1;
(*   %conv7.i.i162.1 = trunc i32 %shl.i.i161.1 to i8 *)
split tmp_v_shl_i_i161_1 v_conv7_i_i162_1 v_shl_i_i161_1 8;
vpc v_conv7_i_i162_1@uint8 v_conv7_i_i162_1@uint32;
(*   %conv.i.i150.2 = zext i8 %conv5.i.i159.1 to i32 *)
cast v_conv_i_i150_2@uint32 v_conv5_i_i159_1@uint8;
(*   %and.i.i151.2 = and i32 %conv.i.i150.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i151_2 v_conv_i_i150_2 (0x1)@uint32;
(*   %conv1.i.i152.2 = zext i8 %conv7.i.i162.1 to i32 *)
cast v_conv1_i_i152_2@uint32 v_conv7_i_i162_1@uint8;
(*   %mul.i.i153.2 = mul nsw i32 %and.i.i151.2, %conv1.i.i152.2 *)
mul v_mul_i_i153_2 v_and_i_i151_2 v_conv1_i_i152_2;
(*   %conv2.i.i154.2 = zext i8 %conv3.i.i156.1 to i32 *)
cast v_conv2_i_i154_2@uint32 v_conv3_i_i156_1@uint8;
(*   %xor.i.i155.2 = xor i32 %conv2.i.i154.2, %mul.i.i153.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i155_2 v_conv2_i_i154_2 v_mul_i_i153_2;
(*   %conv3.i.i156.2 = trunc i32 %xor.i.i155.2 to i8 *)
split tmp_v_xor_i_i155_2 v_conv3_i_i156_2 v_xor_i_i155_2 8;
vpc v_conv3_i_i156_2@uint8 v_conv3_i_i156_2@uint32;
(*   %conv4.i.i157.2 = zext i8 %conv5.i.i159.1 to i32 *)
cast v_conv4_i_i157_2@uint32 v_conv5_i_i159_1@uint8;
(*   %shr.i.i158.2 = ashr i32 %conv4.i.i157.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i158_2 tmp_to_be_used v_conv4_i_i157_2 1;
(*   %conv5.i.i159.2 = trunc i32 %shr.i.i158.2 to i8 *)
split tmp_v_shr_i_i158_2 v_conv5_i_i159_2 v_shr_i_i158_2 8;
vpc v_conv5_i_i159_2@uint8 v_conv5_i_i159_2@uint32;
(*   %conv6.i.i160.2 = zext i8 %conv7.i.i162.1 to i32 *)
cast v_conv6_i_i160_2@uint32 v_conv7_i_i162_1@uint8;
(*   %shl.i.i161.2 = shl i32 %conv6.i.i160.2, 1 *)
shls discard_37 v_shl_i_i161_2 v_conv6_i_i160_2 1;
(*   %conv7.i.i162.2 = trunc i32 %shl.i.i161.2 to i8 *)
split tmp_v_shl_i_i161_2 v_conv7_i_i162_2 v_shl_i_i161_2 8;
vpc v_conv7_i_i162_2@uint8 v_conv7_i_i162_2@uint32;
(*   %conv.i.i150.3 = zext i8 %conv5.i.i159.2 to i32 *)
cast v_conv_i_i150_3@uint32 v_conv5_i_i159_2@uint8;
(*   %and.i.i151.3 = and i32 %conv.i.i150.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i151_3 v_conv_i_i150_3 (0x1)@uint32;
(*   %conv1.i.i152.3 = zext i8 %conv7.i.i162.2 to i32 *)
cast v_conv1_i_i152_3@uint32 v_conv7_i_i162_2@uint8;
(*   %mul.i.i153.3 = mul nsw i32 %and.i.i151.3, %conv1.i.i152.3 *)
mul v_mul_i_i153_3 v_and_i_i151_3 v_conv1_i_i152_3;
(*   %conv2.i.i154.3 = zext i8 %conv3.i.i156.2 to i32 *)
cast v_conv2_i_i154_3@uint32 v_conv3_i_i156_2@uint8;
(*   %xor.i.i155.3 = xor i32 %conv2.i.i154.3, %mul.i.i153.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i155_3 v_conv2_i_i154_3 v_mul_i_i153_3;
(*   %conv3.i.i156.3 = trunc i32 %xor.i.i155.3 to i8 *)
split tmp_v_xor_i_i155_3 v_conv3_i_i156_3 v_xor_i_i155_3 8;
vpc v_conv3_i_i156_3@uint8 v_conv3_i_i156_3@uint32;
(*   %conv4.i.i157.3 = zext i8 %conv5.i.i159.2 to i32 *)
cast v_conv4_i_i157_3@uint32 v_conv5_i_i159_2@uint8;
(*   %shr.i.i158.3 = ashr i32 %conv4.i.i157.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i158_3 tmp_to_be_used v_conv4_i_i157_3 1;
(*   %conv5.i.i159.3 = trunc i32 %shr.i.i158.3 to i8 *)
split tmp_v_shr_i_i158_3 v_conv5_i_i159_3 v_shr_i_i158_3 8;
vpc v_conv5_i_i159_3@uint8 v_conv5_i_i159_3@uint32;
(*   %conv6.i.i160.3 = zext i8 %conv7.i.i162.2 to i32 *)
cast v_conv6_i_i160_3@uint32 v_conv7_i_i162_2@uint8;
(*   %shl.i.i161.3 = shl i32 %conv6.i.i160.3, 1 *)
shls discard_38 v_shl_i_i161_3 v_conv6_i_i160_3 1;
(*   %conv7.i.i162.3 = trunc i32 %shl.i.i161.3 to i8 *)
split tmp_v_shl_i_i161_3 v_conv7_i_i162_3 v_shl_i_i161_3 8;
vpc v_conv7_i_i162_3@uint8 v_conv7_i_i162_3@uint32;
(*   %conv.i.i150.4 = zext i8 %conv5.i.i159.3 to i32 *)
cast v_conv_i_i150_4@uint32 v_conv5_i_i159_3@uint8;
(*   %and.i.i151.4 = and i32 %conv.i.i150.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i151_4 v_conv_i_i150_4 (0x1)@uint32;
(*   %conv1.i.i152.4 = zext i8 %conv7.i.i162.3 to i32 *)
cast v_conv1_i_i152_4@uint32 v_conv7_i_i162_3@uint8;
(*   %mul.i.i153.4 = mul nsw i32 %and.i.i151.4, %conv1.i.i152.4 *)
mul v_mul_i_i153_4 v_and_i_i151_4 v_conv1_i_i152_4;
(*   %conv2.i.i154.4 = zext i8 %conv3.i.i156.3 to i32 *)
cast v_conv2_i_i154_4@uint32 v_conv3_i_i156_3@uint8;
(*   %xor.i.i155.4 = xor i32 %conv2.i.i154.4, %mul.i.i153.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i155_4 v_conv2_i_i154_4 v_mul_i_i153_4;
(*   %conv3.i.i156.4 = trunc i32 %xor.i.i155.4 to i8 *)
split tmp_v_xor_i_i155_4 v_conv3_i_i156_4 v_xor_i_i155_4 8;
vpc v_conv3_i_i156_4@uint8 v_conv3_i_i156_4@uint32;
(*   %conv4.i.i157.4 = zext i8 %conv5.i.i159.3 to i32 *)
cast v_conv4_i_i157_4@uint32 v_conv5_i_i159_3@uint8;
(*   %shr.i.i158.4 = ashr i32 %conv4.i.i157.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i158_4 tmp_to_be_used v_conv4_i_i157_4 1;
(*   %conv5.i.i159.4 = trunc i32 %shr.i.i158.4 to i8 *)
split tmp_v_shr_i_i158_4 v_conv5_i_i159_4 v_shr_i_i158_4 8;
vpc v_conv5_i_i159_4@uint8 v_conv5_i_i159_4@uint32;
(*   %conv6.i.i160.4 = zext i8 %conv7.i.i162.3 to i32 *)
cast v_conv6_i_i160_4@uint32 v_conv7_i_i162_3@uint8;
(*   %shl.i.i161.4 = shl i32 %conv6.i.i160.4, 1 *)
shls discard_39 v_shl_i_i161_4 v_conv6_i_i160_4 1;
(*   %conv7.i.i162.4 = trunc i32 %shl.i.i161.4 to i8 *)
split tmp_v_shl_i_i161_4 v_conv7_i_i162_4 v_shl_i_i161_4 8;
vpc v_conv7_i_i162_4@uint8 v_conv7_i_i162_4@uint32;
(*   %conv.i.i150.5 = zext i8 %conv5.i.i159.4 to i32 *)
cast v_conv_i_i150_5@uint32 v_conv5_i_i159_4@uint8;
(*   %and.i.i151.5 = and i32 %conv.i.i150.5, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i151_5 v_conv_i_i150_5 (0x1)@uint32;
(*   %conv1.i.i152.5 = zext i8 %conv7.i.i162.4 to i32 *)
cast v_conv1_i_i152_5@uint32 v_conv7_i_i162_4@uint8;
(*   %mul.i.i153.5 = mul nsw i32 %and.i.i151.5, %conv1.i.i152.5 *)
mul v_mul_i_i153_5 v_and_i_i151_5 v_conv1_i_i152_5;
(*   %conv2.i.i154.5 = zext i8 %conv3.i.i156.4 to i32 *)
cast v_conv2_i_i154_5@uint32 v_conv3_i_i156_4@uint8;
(*   %xor.i.i155.5 = xor i32 %conv2.i.i154.5, %mul.i.i153.5 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i155_5 v_conv2_i_i154_5 v_mul_i_i153_5;
(*   %conv3.i.i156.5 = trunc i32 %xor.i.i155.5 to i8 *)
split tmp_v_xor_i_i155_5 v_conv3_i_i156_5 v_xor_i_i155_5 8;
vpc v_conv3_i_i156_5@uint8 v_conv3_i_i156_5@uint32;
(*   %conv4.i.i157.5 = zext i8 %conv5.i.i159.4 to i32 *)
cast v_conv4_i_i157_5@uint32 v_conv5_i_i159_4@uint8;
(*   %shr.i.i158.5 = ashr i32 %conv4.i.i157.5, 1 *)
(* You may need to modify here *)
split v_shr_i_i158_5 tmp_to_be_used v_conv4_i_i157_5 1;
(*   %conv5.i.i159.5 = trunc i32 %shr.i.i158.5 to i8 *)
split tmp_v_shr_i_i158_5 v_conv5_i_i159_5 v_shr_i_i158_5 8;
vpc v_conv5_i_i159_5@uint8 v_conv5_i_i159_5@uint32;
(*   %conv6.i.i160.5 = zext i8 %conv7.i.i162.4 to i32 *)
cast v_conv6_i_i160_5@uint32 v_conv7_i_i162_4@uint8;
(*   %shl.i.i161.5 = shl i32 %conv6.i.i160.5, 1 *)
shls discard_40 v_shl_i_i161_5 v_conv6_i_i160_5 1;
(*   %conv7.i.i162.5 = trunc i32 %shl.i.i161.5 to i8 *)
split tmp_v_shl_i_i161_5 v_conv7_i_i162_5 v_shl_i_i161_5 8;
vpc v_conv7_i_i162_5@uint8 v_conv7_i_i162_5@uint32;
(*   %conv.i.i150.6 = zext i8 %conv5.i.i159.5 to i32 *)
cast v_conv_i_i150_6@uint32 v_conv5_i_i159_5@uint8;
(*   %and.i.i151.6 = and i32 %conv.i.i150.6, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i151_6 v_conv_i_i150_6 (0x1)@uint32;
(*   %conv1.i.i152.6 = zext i8 %conv7.i.i162.5 to i32 *)
cast v_conv1_i_i152_6@uint32 v_conv7_i_i162_5@uint8;
(*   %mul.i.i153.6 = mul nsw i32 %and.i.i151.6, %conv1.i.i152.6 *)
mul v_mul_i_i153_6 v_and_i_i151_6 v_conv1_i_i152_6;
(*   %conv2.i.i154.6 = zext i8 %conv3.i.i156.5 to i32 *)
cast v_conv2_i_i154_6@uint32 v_conv3_i_i156_5@uint8;
(*   %xor.i.i155.6 = xor i32 %conv2.i.i154.6, %mul.i.i153.6 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i155_6 v_conv2_i_i154_6 v_mul_i_i153_6;
(*   %conv3.i.i156.6 = trunc i32 %xor.i.i155.6 to i8 *)
split tmp_v_xor_i_i155_6 v_conv3_i_i156_6 v_xor_i_i155_6 8;
vpc v_conv3_i_i156_6@uint8 v_conv3_i_i156_6@uint32;
(*   %conv4.i.i157.6 = zext i8 %conv5.i.i159.5 to i32 *)
cast v_conv4_i_i157_6@uint32 v_conv5_i_i159_5@uint8;
(*   %shr.i.i158.6 = ashr i32 %conv4.i.i157.6, 1 *)
(* You may need to modify here *)
split v_shr_i_i158_6 tmp_to_be_used v_conv4_i_i157_6 1;
(*   %conv5.i.i159.6 = trunc i32 %shr.i.i158.6 to i8 *)
split tmp_v_shr_i_i158_6 v_conv5_i_i159_6 v_shr_i_i158_6 8;
vpc v_conv5_i_i159_6@uint8 v_conv5_i_i159_6@uint32;
(*   %conv6.i.i160.6 = zext i8 %conv7.i.i162.5 to i32 *)
cast v_conv6_i_i160_6@uint32 v_conv7_i_i162_5@uint8;
(*   %shl.i.i161.6 = shl i32 %conv6.i.i160.6, 1 *)
shls discard_41 v_shl_i_i161_6 v_conv6_i_i160_6 1;
(*   %conv7.i.i162.6 = trunc i32 %shl.i.i161.6 to i8 *)
split tmp_v_shl_i_i161_6 v_conv7_i_i162_6 v_shl_i_i161_6 8;
vpc v_conv7_i_i162_6@uint8 v_conv7_i_i162_6@uint32;
(*   %conv.i.i150.7 = zext i8 %conv5.i.i159.6 to i32 *)
cast v_conv_i_i150_7@uint32 v_conv5_i_i159_6@uint8;
(*   %and.i.i151.7 = and i32 %conv.i.i150.7, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i151_7 v_conv_i_i150_7 (0x1)@uint32;
(*   %conv1.i.i152.7 = zext i8 %conv7.i.i162.6 to i32 *)
cast v_conv1_i_i152_7@uint32 v_conv7_i_i162_6@uint8;
(*   %mul.i.i153.7 = mul nsw i32 %and.i.i151.7, %conv1.i.i152.7 *)
mul v_mul_i_i153_7 v_and_i_i151_7 v_conv1_i_i152_7;
(*   %conv2.i.i154.7 = zext i8 %conv3.i.i156.6 to i32 *)
cast v_conv2_i_i154_7@uint32 v_conv3_i_i156_6@uint8;
(*   %xor.i.i155.7 = xor i32 %conv2.i.i154.7, %mul.i.i153.7 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i155_7 v_conv2_i_i154_7 v_mul_i_i153_7;
(*   %conv3.i.i156.7 = trunc i32 %xor.i.i155.7 to i8 *)
split tmp_v_xor_i_i155_7 v_conv3_i_i156_7 v_xor_i_i155_7 8;
vpc v_conv3_i_i156_7@uint8 v_conv3_i_i156_7@uint32;
(*   store i8 %conv3.i.i156.7, i8* %add.ptr3, align 1 *)
mov cc_10 v_conv3_i_i156_7;
(*   %arrayidx.i142.1 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %12 = load i8, i8* %arrayidx.i142.1, align 1 *)
mov v12 a_1;
(*   %arrayidx4.i146.1 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %13 = load i8, i8* %arrayidx4.i146.1, align 1 *)
mov v13 b_2;
(*   %conv.i.i150.1260 = zext i8 %13 to i32 *)
cast v_conv_i_i150_1260@uint32 v13@uint8;
(*   %and.i.i151.1261 = and i32 %conv.i.i150.1260, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i151_1261 v_conv_i_i150_1260 (0x1)@uint32;
(*   %conv1.i.i152.1262 = zext i8 %12 to i32 *)
cast v_conv1_i_i152_1262@uint32 v12@uint8;
(*   %mul.i.i153.1263 = mul nsw i32 %and.i.i151.1261, %conv1.i.i152.1262 *)
mul v_mul_i_i153_1263 v_and_i_i151_1261 v_conv1_i_i152_1262;
(*   %conv3.i.i156.1264 = trunc i32 %mul.i.i153.1263 to i8 *)
split tmp_v_mul_i_i153_1263 v_conv3_i_i156_1264 v_mul_i_i153_1263 8;
vpc v_conv3_i_i156_1264@uint8 v_conv3_i_i156_1264@uint32;
(*   %conv4.i.i157.1265 = zext i8 %13 to i32 *)
cast v_conv4_i_i157_1265@uint32 v13@uint8;
(*   %shr.i.i158.1266 = ashr i32 %conv4.i.i157.1265, 1 *)
(* You may need to modify here *)
split v_shr_i_i158_1266 tmp_to_be_used v_conv4_i_i157_1265 1;
(*   %conv5.i.i159.1267 = trunc i32 %shr.i.i158.1266 to i8 *)
split tmp_v_shr_i_i158_1266 v_conv5_i_i159_1267 v_shr_i_i158_1266 8;
vpc v_conv5_i_i159_1267@uint8 v_conv5_i_i159_1267@uint32;
(*   %conv6.i.i160.1268 = zext i8 %12 to i32 *)
cast v_conv6_i_i160_1268@uint32 v12@uint8;
(*   %shl.i.i161.1269 = shl i32 %conv6.i.i160.1268, 1 *)
shls discard_42 v_shl_i_i161_1269 v_conv6_i_i160_1268 1;
(*   %conv7.i.i162.1270 = trunc i32 %shl.i.i161.1269 to i8 *)
split tmp_v_shl_i_i161_1269 v_conv7_i_i162_1270 v_shl_i_i161_1269 8;
vpc v_conv7_i_i162_1270@uint8 v_conv7_i_i162_1270@uint32;
(*   %conv.i.i150.1.1 = zext i8 %conv5.i.i159.1267 to i32 *)
cast v_conv_i_i150_1_1@uint32 v_conv5_i_i159_1267@uint8;
(*   %and.i.i151.1.1 = and i32 %conv.i.i150.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i151_1_1 v_conv_i_i150_1_1 (0x1)@uint32;
(*   %conv1.i.i152.1.1 = zext i8 %conv7.i.i162.1270 to i32 *)
cast v_conv1_i_i152_1_1@uint32 v_conv7_i_i162_1270@uint8;
(*   %mul.i.i153.1.1 = mul nsw i32 %and.i.i151.1.1, %conv1.i.i152.1.1 *)
mul v_mul_i_i153_1_1 v_and_i_i151_1_1 v_conv1_i_i152_1_1;
(*   %conv2.i.i154.1.1 = zext i8 %conv3.i.i156.1264 to i32 *)
cast v_conv2_i_i154_1_1@uint32 v_conv3_i_i156_1264@uint8;
(*   %xor.i.i155.1.1 = xor i32 %conv2.i.i154.1.1, %mul.i.i153.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i155_1_1 v_conv2_i_i154_1_1 v_mul_i_i153_1_1;
(*   %conv3.i.i156.1.1 = trunc i32 %xor.i.i155.1.1 to i8 *)
split tmp_v_xor_i_i155_1_1 v_conv3_i_i156_1_1 v_xor_i_i155_1_1 8;
vpc v_conv3_i_i156_1_1@uint8 v_conv3_i_i156_1_1@uint32;
(*   %conv4.i.i157.1.1 = zext i8 %conv5.i.i159.1267 to i32 *)
cast v_conv4_i_i157_1_1@uint32 v_conv5_i_i159_1267@uint8;
(*   %shr.i.i158.1.1 = ashr i32 %conv4.i.i157.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i158_1_1 tmp_to_be_used v_conv4_i_i157_1_1 1;
(*   %conv5.i.i159.1.1 = trunc i32 %shr.i.i158.1.1 to i8 *)
split tmp_v_shr_i_i158_1_1 v_conv5_i_i159_1_1 v_shr_i_i158_1_1 8;
vpc v_conv5_i_i159_1_1@uint8 v_conv5_i_i159_1_1@uint32;
(*   %conv6.i.i160.1.1 = zext i8 %conv7.i.i162.1270 to i32 *)
cast v_conv6_i_i160_1_1@uint32 v_conv7_i_i162_1270@uint8;
(*   %shl.i.i161.1.1 = shl i32 %conv6.i.i160.1.1, 1 *)
shls discard_43 v_shl_i_i161_1_1 v_conv6_i_i160_1_1 1;
(*   %conv7.i.i162.1.1 = trunc i32 %shl.i.i161.1.1 to i8 *)
split tmp_v_shl_i_i161_1_1 v_conv7_i_i162_1_1 v_shl_i_i161_1_1 8;
vpc v_conv7_i_i162_1_1@uint8 v_conv7_i_i162_1_1@uint32;
(*   %conv.i.i150.2.1 = zext i8 %conv5.i.i159.1.1 to i32 *)
cast v_conv_i_i150_2_1@uint32 v_conv5_i_i159_1_1@uint8;
(*   %and.i.i151.2.1 = and i32 %conv.i.i150.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i151_2_1 v_conv_i_i150_2_1 (0x1)@uint32;
(*   %conv1.i.i152.2.1 = zext i8 %conv7.i.i162.1.1 to i32 *)
cast v_conv1_i_i152_2_1@uint32 v_conv7_i_i162_1_1@uint8;
(*   %mul.i.i153.2.1 = mul nsw i32 %and.i.i151.2.1, %conv1.i.i152.2.1 *)
mul v_mul_i_i153_2_1 v_and_i_i151_2_1 v_conv1_i_i152_2_1;
(*   %conv2.i.i154.2.1 = zext i8 %conv3.i.i156.1.1 to i32 *)
cast v_conv2_i_i154_2_1@uint32 v_conv3_i_i156_1_1@uint8;
(*   %xor.i.i155.2.1 = xor i32 %conv2.i.i154.2.1, %mul.i.i153.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i155_2_1 v_conv2_i_i154_2_1 v_mul_i_i153_2_1;
(*   %conv3.i.i156.2.1 = trunc i32 %xor.i.i155.2.1 to i8 *)
split tmp_v_xor_i_i155_2_1 v_conv3_i_i156_2_1 v_xor_i_i155_2_1 8;
vpc v_conv3_i_i156_2_1@uint8 v_conv3_i_i156_2_1@uint32;
(*   %conv4.i.i157.2.1 = zext i8 %conv5.i.i159.1.1 to i32 *)
cast v_conv4_i_i157_2_1@uint32 v_conv5_i_i159_1_1@uint8;
(*   %shr.i.i158.2.1 = ashr i32 %conv4.i.i157.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i158_2_1 tmp_to_be_used v_conv4_i_i157_2_1 1;
(*   %conv5.i.i159.2.1 = trunc i32 %shr.i.i158.2.1 to i8 *)
split tmp_v_shr_i_i158_2_1 v_conv5_i_i159_2_1 v_shr_i_i158_2_1 8;
vpc v_conv5_i_i159_2_1@uint8 v_conv5_i_i159_2_1@uint32;
(*   %conv6.i.i160.2.1 = zext i8 %conv7.i.i162.1.1 to i32 *)
cast v_conv6_i_i160_2_1@uint32 v_conv7_i_i162_1_1@uint8;
(*   %shl.i.i161.2.1 = shl i32 %conv6.i.i160.2.1, 1 *)
shls discard_44 v_shl_i_i161_2_1 v_conv6_i_i160_2_1 1;
(*   %conv7.i.i162.2.1 = trunc i32 %shl.i.i161.2.1 to i8 *)
split tmp_v_shl_i_i161_2_1 v_conv7_i_i162_2_1 v_shl_i_i161_2_1 8;
vpc v_conv7_i_i162_2_1@uint8 v_conv7_i_i162_2_1@uint32;
(*   %conv.i.i150.3.1 = zext i8 %conv5.i.i159.2.1 to i32 *)
cast v_conv_i_i150_3_1@uint32 v_conv5_i_i159_2_1@uint8;
(*   %and.i.i151.3.1 = and i32 %conv.i.i150.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i151_3_1 v_conv_i_i150_3_1 (0x1)@uint32;
(*   %conv1.i.i152.3.1 = zext i8 %conv7.i.i162.2.1 to i32 *)
cast v_conv1_i_i152_3_1@uint32 v_conv7_i_i162_2_1@uint8;
(*   %mul.i.i153.3.1 = mul nsw i32 %and.i.i151.3.1, %conv1.i.i152.3.1 *)
mul v_mul_i_i153_3_1 v_and_i_i151_3_1 v_conv1_i_i152_3_1;
(*   %conv2.i.i154.3.1 = zext i8 %conv3.i.i156.2.1 to i32 *)
cast v_conv2_i_i154_3_1@uint32 v_conv3_i_i156_2_1@uint8;
(*   %xor.i.i155.3.1 = xor i32 %conv2.i.i154.3.1, %mul.i.i153.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i155_3_1 v_conv2_i_i154_3_1 v_mul_i_i153_3_1;
(*   %conv3.i.i156.3.1 = trunc i32 %xor.i.i155.3.1 to i8 *)
split tmp_v_xor_i_i155_3_1 v_conv3_i_i156_3_1 v_xor_i_i155_3_1 8;
vpc v_conv3_i_i156_3_1@uint8 v_conv3_i_i156_3_1@uint32;
(*   %conv4.i.i157.3.1 = zext i8 %conv5.i.i159.2.1 to i32 *)
cast v_conv4_i_i157_3_1@uint32 v_conv5_i_i159_2_1@uint8;
(*   %shr.i.i158.3.1 = ashr i32 %conv4.i.i157.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i158_3_1 tmp_to_be_used v_conv4_i_i157_3_1 1;
(*   %conv5.i.i159.3.1 = trunc i32 %shr.i.i158.3.1 to i8 *)
split tmp_v_shr_i_i158_3_1 v_conv5_i_i159_3_1 v_shr_i_i158_3_1 8;
vpc v_conv5_i_i159_3_1@uint8 v_conv5_i_i159_3_1@uint32;
(*   %conv6.i.i160.3.1 = zext i8 %conv7.i.i162.2.1 to i32 *)
cast v_conv6_i_i160_3_1@uint32 v_conv7_i_i162_2_1@uint8;
(*   %shl.i.i161.3.1 = shl i32 %conv6.i.i160.3.1, 1 *)
shls discard_45 v_shl_i_i161_3_1 v_conv6_i_i160_3_1 1;
(*   %conv7.i.i162.3.1 = trunc i32 %shl.i.i161.3.1 to i8 *)
split tmp_v_shl_i_i161_3_1 v_conv7_i_i162_3_1 v_shl_i_i161_3_1 8;
vpc v_conv7_i_i162_3_1@uint8 v_conv7_i_i162_3_1@uint32;
(*   %conv.i.i150.4.1 = zext i8 %conv5.i.i159.3.1 to i32 *)
cast v_conv_i_i150_4_1@uint32 v_conv5_i_i159_3_1@uint8;
(*   %and.i.i151.4.1 = and i32 %conv.i.i150.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i151_4_1 v_conv_i_i150_4_1 (0x1)@uint32;
(*   %conv1.i.i152.4.1 = zext i8 %conv7.i.i162.3.1 to i32 *)
cast v_conv1_i_i152_4_1@uint32 v_conv7_i_i162_3_1@uint8;
(*   %mul.i.i153.4.1 = mul nsw i32 %and.i.i151.4.1, %conv1.i.i152.4.1 *)
mul v_mul_i_i153_4_1 v_and_i_i151_4_1 v_conv1_i_i152_4_1;
(*   %conv2.i.i154.4.1 = zext i8 %conv3.i.i156.3.1 to i32 *)
cast v_conv2_i_i154_4_1@uint32 v_conv3_i_i156_3_1@uint8;
(*   %xor.i.i155.4.1 = xor i32 %conv2.i.i154.4.1, %mul.i.i153.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i155_4_1 v_conv2_i_i154_4_1 v_mul_i_i153_4_1;
(*   %conv3.i.i156.4.1 = trunc i32 %xor.i.i155.4.1 to i8 *)
split tmp_v_xor_i_i155_4_1 v_conv3_i_i156_4_1 v_xor_i_i155_4_1 8;
vpc v_conv3_i_i156_4_1@uint8 v_conv3_i_i156_4_1@uint32;
(*   %conv4.i.i157.4.1 = zext i8 %conv5.i.i159.3.1 to i32 *)
cast v_conv4_i_i157_4_1@uint32 v_conv5_i_i159_3_1@uint8;
(*   %shr.i.i158.4.1 = ashr i32 %conv4.i.i157.4.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i158_4_1 tmp_to_be_used v_conv4_i_i157_4_1 1;
(*   %conv5.i.i159.4.1 = trunc i32 %shr.i.i158.4.1 to i8 *)
split tmp_v_shr_i_i158_4_1 v_conv5_i_i159_4_1 v_shr_i_i158_4_1 8;
vpc v_conv5_i_i159_4_1@uint8 v_conv5_i_i159_4_1@uint32;
(*   %conv6.i.i160.4.1 = zext i8 %conv7.i.i162.3.1 to i32 *)
cast v_conv6_i_i160_4_1@uint32 v_conv7_i_i162_3_1@uint8;
(*   %shl.i.i161.4.1 = shl i32 %conv6.i.i160.4.1, 1 *)
shls discard_46 v_shl_i_i161_4_1 v_conv6_i_i160_4_1 1;
(*   %conv7.i.i162.4.1 = trunc i32 %shl.i.i161.4.1 to i8 *)
split tmp_v_shl_i_i161_4_1 v_conv7_i_i162_4_1 v_shl_i_i161_4_1 8;
vpc v_conv7_i_i162_4_1@uint8 v_conv7_i_i162_4_1@uint32;
(*   %conv.i.i150.5.1 = zext i8 %conv5.i.i159.4.1 to i32 *)
cast v_conv_i_i150_5_1@uint32 v_conv5_i_i159_4_1@uint8;
(*   %and.i.i151.5.1 = and i32 %conv.i.i150.5.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i151_5_1 v_conv_i_i150_5_1 (0x1)@uint32;
(*   %conv1.i.i152.5.1 = zext i8 %conv7.i.i162.4.1 to i32 *)
cast v_conv1_i_i152_5_1@uint32 v_conv7_i_i162_4_1@uint8;
(*   %mul.i.i153.5.1 = mul nsw i32 %and.i.i151.5.1, %conv1.i.i152.5.1 *)
mul v_mul_i_i153_5_1 v_and_i_i151_5_1 v_conv1_i_i152_5_1;
(*   %conv2.i.i154.5.1 = zext i8 %conv3.i.i156.4.1 to i32 *)
cast v_conv2_i_i154_5_1@uint32 v_conv3_i_i156_4_1@uint8;
(*   %xor.i.i155.5.1 = xor i32 %conv2.i.i154.5.1, %mul.i.i153.5.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i155_5_1 v_conv2_i_i154_5_1 v_mul_i_i153_5_1;
(*   %conv3.i.i156.5.1 = trunc i32 %xor.i.i155.5.1 to i8 *)
split tmp_v_xor_i_i155_5_1 v_conv3_i_i156_5_1 v_xor_i_i155_5_1 8;
vpc v_conv3_i_i156_5_1@uint8 v_conv3_i_i156_5_1@uint32;
(*   %conv4.i.i157.5.1 = zext i8 %conv5.i.i159.4.1 to i32 *)
cast v_conv4_i_i157_5_1@uint32 v_conv5_i_i159_4_1@uint8;
(*   %shr.i.i158.5.1 = ashr i32 %conv4.i.i157.5.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i158_5_1 tmp_to_be_used v_conv4_i_i157_5_1 1;
(*   %conv5.i.i159.5.1 = trunc i32 %shr.i.i158.5.1 to i8 *)
split tmp_v_shr_i_i158_5_1 v_conv5_i_i159_5_1 v_shr_i_i158_5_1 8;
vpc v_conv5_i_i159_5_1@uint8 v_conv5_i_i159_5_1@uint32;
(*   %conv6.i.i160.5.1 = zext i8 %conv7.i.i162.4.1 to i32 *)
cast v_conv6_i_i160_5_1@uint32 v_conv7_i_i162_4_1@uint8;
(*   %shl.i.i161.5.1 = shl i32 %conv6.i.i160.5.1, 1 *)
shls discard_47 v_shl_i_i161_5_1 v_conv6_i_i160_5_1 1;
(*   %conv7.i.i162.5.1 = trunc i32 %shl.i.i161.5.1 to i8 *)
split tmp_v_shl_i_i161_5_1 v_conv7_i_i162_5_1 v_shl_i_i161_5_1 8;
vpc v_conv7_i_i162_5_1@uint8 v_conv7_i_i162_5_1@uint32;
(*   %conv.i.i150.6.1 = zext i8 %conv5.i.i159.5.1 to i32 *)
cast v_conv_i_i150_6_1@uint32 v_conv5_i_i159_5_1@uint8;
(*   %and.i.i151.6.1 = and i32 %conv.i.i150.6.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i151_6_1 v_conv_i_i150_6_1 (0x1)@uint32;
(*   %conv1.i.i152.6.1 = zext i8 %conv7.i.i162.5.1 to i32 *)
cast v_conv1_i_i152_6_1@uint32 v_conv7_i_i162_5_1@uint8;
(*   %mul.i.i153.6.1 = mul nsw i32 %and.i.i151.6.1, %conv1.i.i152.6.1 *)
mul v_mul_i_i153_6_1 v_and_i_i151_6_1 v_conv1_i_i152_6_1;
(*   %conv2.i.i154.6.1 = zext i8 %conv3.i.i156.5.1 to i32 *)
cast v_conv2_i_i154_6_1@uint32 v_conv3_i_i156_5_1@uint8;
(*   %xor.i.i155.6.1 = xor i32 %conv2.i.i154.6.1, %mul.i.i153.6.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i155_6_1 v_conv2_i_i154_6_1 v_mul_i_i153_6_1;
(*   %conv3.i.i156.6.1 = trunc i32 %xor.i.i155.6.1 to i8 *)
split tmp_v_xor_i_i155_6_1 v_conv3_i_i156_6_1 v_xor_i_i155_6_1 8;
vpc v_conv3_i_i156_6_1@uint8 v_conv3_i_i156_6_1@uint32;
(*   %conv4.i.i157.6.1 = zext i8 %conv5.i.i159.5.1 to i32 *)
cast v_conv4_i_i157_6_1@uint32 v_conv5_i_i159_5_1@uint8;
(*   %shr.i.i158.6.1 = ashr i32 %conv4.i.i157.6.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i158_6_1 tmp_to_be_used v_conv4_i_i157_6_1 1;
(*   %conv5.i.i159.6.1 = trunc i32 %shr.i.i158.6.1 to i8 *)
split tmp_v_shr_i_i158_6_1 v_conv5_i_i159_6_1 v_shr_i_i158_6_1 8;
vpc v_conv5_i_i159_6_1@uint8 v_conv5_i_i159_6_1@uint32;
(*   %conv6.i.i160.6.1 = zext i8 %conv7.i.i162.5.1 to i32 *)
cast v_conv6_i_i160_6_1@uint32 v_conv7_i_i162_5_1@uint8;
(*   %shl.i.i161.6.1 = shl i32 %conv6.i.i160.6.1, 1 *)
shls discard_48 v_shl_i_i161_6_1 v_conv6_i_i160_6_1 1;
(*   %conv7.i.i162.6.1 = trunc i32 %shl.i.i161.6.1 to i8 *)
split tmp_v_shl_i_i161_6_1 v_conv7_i_i162_6_1 v_shl_i_i161_6_1 8;
vpc v_conv7_i_i162_6_1@uint8 v_conv7_i_i162_6_1@uint32;
(*   %conv.i.i150.7.1 = zext i8 %conv5.i.i159.6.1 to i32 *)
cast v_conv_i_i150_7_1@uint32 v_conv5_i_i159_6_1@uint8;
(*   %and.i.i151.7.1 = and i32 %conv.i.i150.7.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i151_7_1 v_conv_i_i150_7_1 (0x1)@uint32;
(*   %conv1.i.i152.7.1 = zext i8 %conv7.i.i162.6.1 to i32 *)
cast v_conv1_i_i152_7_1@uint32 v_conv7_i_i162_6_1@uint8;
(*   %mul.i.i153.7.1 = mul nsw i32 %and.i.i151.7.1, %conv1.i.i152.7.1 *)
mul v_mul_i_i153_7_1 v_and_i_i151_7_1 v_conv1_i_i152_7_1;
(*   %conv2.i.i154.7.1 = zext i8 %conv3.i.i156.6.1 to i32 *)
cast v_conv2_i_i154_7_1@uint32 v_conv3_i_i156_6_1@uint8;
(*   %xor.i.i155.7.1 = xor i32 %conv2.i.i154.7.1, %mul.i.i153.7.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i155_7_1 v_conv2_i_i154_7_1 v_mul_i_i153_7_1;
(*   %conv3.i.i156.7.1 = trunc i32 %xor.i.i155.7.1 to i8 *)
split tmp_v_xor_i_i155_7_1 v_conv3_i_i156_7_1 v_xor_i_i155_7_1 8;
vpc v_conv3_i_i156_7_1@uint8 v_conv3_i_i156_7_1@uint32;
(*   %arrayidx6.i166.1 = getelementptr inbounds i8, i8* %add.ptr3, i64 1 *)
(*   store i8 %conv3.i.i156.7.1, i8* %arrayidx6.i166.1, align 1 *)
mov cc_11 v_conv3_i_i156_7_1;
(*   %arrayidx.i142.2 = getelementptr inbounds i8, i8* %a, i64 2 *)
(*   %14 = load i8, i8* %arrayidx.i142.2, align 1 *)
mov v14 a_2;
(*   %arrayidx4.i146.2 = getelementptr inbounds i8, i8* %b, i64 3 *)
(*   %15 = load i8, i8* %arrayidx4.i146.2, align 1 *)
mov v15 b_3;
(*   %conv.i.i150.2271 = zext i8 %15 to i32 *)
cast v_conv_i_i150_2271@uint32 v15@uint8;
(*   %and.i.i151.2272 = and i32 %conv.i.i150.2271, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i151_2272 v_conv_i_i150_2271 (0x1)@uint32;
(*   %conv1.i.i152.2273 = zext i8 %14 to i32 *)
cast v_conv1_i_i152_2273@uint32 v14@uint8;
(*   %mul.i.i153.2274 = mul nsw i32 %and.i.i151.2272, %conv1.i.i152.2273 *)
mul v_mul_i_i153_2274 v_and_i_i151_2272 v_conv1_i_i152_2273;
(*   %conv3.i.i156.2275 = trunc i32 %mul.i.i153.2274 to i8 *)
split tmp_v_mul_i_i153_2274 v_conv3_i_i156_2275 v_mul_i_i153_2274 8;
vpc v_conv3_i_i156_2275@uint8 v_conv3_i_i156_2275@uint32;
(*   %conv4.i.i157.2276 = zext i8 %15 to i32 *)
cast v_conv4_i_i157_2276@uint32 v15@uint8;
(*   %shr.i.i158.2277 = ashr i32 %conv4.i.i157.2276, 1 *)
(* You may need to modify here *)
split v_shr_i_i158_2277 tmp_to_be_used v_conv4_i_i157_2276 1;
(*   %conv5.i.i159.2278 = trunc i32 %shr.i.i158.2277 to i8 *)
split tmp_v_shr_i_i158_2277 v_conv5_i_i159_2278 v_shr_i_i158_2277 8;
vpc v_conv5_i_i159_2278@uint8 v_conv5_i_i159_2278@uint32;
(*   %conv6.i.i160.2279 = zext i8 %14 to i32 *)
cast v_conv6_i_i160_2279@uint32 v14@uint8;
(*   %shl.i.i161.2280 = shl i32 %conv6.i.i160.2279, 1 *)
shls discard_49 v_shl_i_i161_2280 v_conv6_i_i160_2279 1;
(*   %conv7.i.i162.2281 = trunc i32 %shl.i.i161.2280 to i8 *)
split tmp_v_shl_i_i161_2280 v_conv7_i_i162_2281 v_shl_i_i161_2280 8;
vpc v_conv7_i_i162_2281@uint8 v_conv7_i_i162_2281@uint32;
(*   %conv.i.i150.1.2 = zext i8 %conv5.i.i159.2278 to i32 *)
cast v_conv_i_i150_1_2@uint32 v_conv5_i_i159_2278@uint8;
(*   %and.i.i151.1.2 = and i32 %conv.i.i150.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i151_1_2 v_conv_i_i150_1_2 (0x1)@uint32;
(*   %conv1.i.i152.1.2 = zext i8 %conv7.i.i162.2281 to i32 *)
cast v_conv1_i_i152_1_2@uint32 v_conv7_i_i162_2281@uint8;
(*   %mul.i.i153.1.2 = mul nsw i32 %and.i.i151.1.2, %conv1.i.i152.1.2 *)
mul v_mul_i_i153_1_2 v_and_i_i151_1_2 v_conv1_i_i152_1_2;
(*   %conv2.i.i154.1.2 = zext i8 %conv3.i.i156.2275 to i32 *)
cast v_conv2_i_i154_1_2@uint32 v_conv3_i_i156_2275@uint8;
(*   %xor.i.i155.1.2 = xor i32 %conv2.i.i154.1.2, %mul.i.i153.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i155_1_2 v_conv2_i_i154_1_2 v_mul_i_i153_1_2;
(*   %conv3.i.i156.1.2 = trunc i32 %xor.i.i155.1.2 to i8 *)
split tmp_v_xor_i_i155_1_2 v_conv3_i_i156_1_2 v_xor_i_i155_1_2 8;
vpc v_conv3_i_i156_1_2@uint8 v_conv3_i_i156_1_2@uint32;
(*   %conv4.i.i157.1.2 = zext i8 %conv5.i.i159.2278 to i32 *)
cast v_conv4_i_i157_1_2@uint32 v_conv5_i_i159_2278@uint8;
(*   %shr.i.i158.1.2 = ashr i32 %conv4.i.i157.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i158_1_2 tmp_to_be_used v_conv4_i_i157_1_2 1;
(*   %conv5.i.i159.1.2 = trunc i32 %shr.i.i158.1.2 to i8 *)
split tmp_v_shr_i_i158_1_2 v_conv5_i_i159_1_2 v_shr_i_i158_1_2 8;
vpc v_conv5_i_i159_1_2@uint8 v_conv5_i_i159_1_2@uint32;
(*   %conv6.i.i160.1.2 = zext i8 %conv7.i.i162.2281 to i32 *)
cast v_conv6_i_i160_1_2@uint32 v_conv7_i_i162_2281@uint8;
(*   %shl.i.i161.1.2 = shl i32 %conv6.i.i160.1.2, 1 *)
shls discard_50 v_shl_i_i161_1_2 v_conv6_i_i160_1_2 1;
(*   %conv7.i.i162.1.2 = trunc i32 %shl.i.i161.1.2 to i8 *)
split tmp_v_shl_i_i161_1_2 v_conv7_i_i162_1_2 v_shl_i_i161_1_2 8;
vpc v_conv7_i_i162_1_2@uint8 v_conv7_i_i162_1_2@uint32;
(*   %conv.i.i150.2.2 = zext i8 %conv5.i.i159.1.2 to i32 *)
cast v_conv_i_i150_2_2@uint32 v_conv5_i_i159_1_2@uint8;
(*   %and.i.i151.2.2 = and i32 %conv.i.i150.2.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i151_2_2 v_conv_i_i150_2_2 (0x1)@uint32;
(*   %conv1.i.i152.2.2 = zext i8 %conv7.i.i162.1.2 to i32 *)
cast v_conv1_i_i152_2_2@uint32 v_conv7_i_i162_1_2@uint8;
(*   %mul.i.i153.2.2 = mul nsw i32 %and.i.i151.2.2, %conv1.i.i152.2.2 *)
mul v_mul_i_i153_2_2 v_and_i_i151_2_2 v_conv1_i_i152_2_2;
(*   %conv2.i.i154.2.2 = zext i8 %conv3.i.i156.1.2 to i32 *)
cast v_conv2_i_i154_2_2@uint32 v_conv3_i_i156_1_2@uint8;
(*   %xor.i.i155.2.2 = xor i32 %conv2.i.i154.2.2, %mul.i.i153.2.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i155_2_2 v_conv2_i_i154_2_2 v_mul_i_i153_2_2;
(*   %conv3.i.i156.2.2 = trunc i32 %xor.i.i155.2.2 to i8 *)
split tmp_v_xor_i_i155_2_2 v_conv3_i_i156_2_2 v_xor_i_i155_2_2 8;
vpc v_conv3_i_i156_2_2@uint8 v_conv3_i_i156_2_2@uint32;
(*   %conv4.i.i157.2.2 = zext i8 %conv5.i.i159.1.2 to i32 *)
cast v_conv4_i_i157_2_2@uint32 v_conv5_i_i159_1_2@uint8;
(*   %shr.i.i158.2.2 = ashr i32 %conv4.i.i157.2.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i158_2_2 tmp_to_be_used v_conv4_i_i157_2_2 1;
(*   %conv5.i.i159.2.2 = trunc i32 %shr.i.i158.2.2 to i8 *)
split tmp_v_shr_i_i158_2_2 v_conv5_i_i159_2_2 v_shr_i_i158_2_2 8;
vpc v_conv5_i_i159_2_2@uint8 v_conv5_i_i159_2_2@uint32;
(*   %conv6.i.i160.2.2 = zext i8 %conv7.i.i162.1.2 to i32 *)
cast v_conv6_i_i160_2_2@uint32 v_conv7_i_i162_1_2@uint8;
(*   %shl.i.i161.2.2 = shl i32 %conv6.i.i160.2.2, 1 *)
shls discard_51 v_shl_i_i161_2_2 v_conv6_i_i160_2_2 1;
(*   %conv7.i.i162.2.2 = trunc i32 %shl.i.i161.2.2 to i8 *)
split tmp_v_shl_i_i161_2_2 v_conv7_i_i162_2_2 v_shl_i_i161_2_2 8;
vpc v_conv7_i_i162_2_2@uint8 v_conv7_i_i162_2_2@uint32;
(*   %conv.i.i150.3.2 = zext i8 %conv5.i.i159.2.2 to i32 *)
cast v_conv_i_i150_3_2@uint32 v_conv5_i_i159_2_2@uint8;
(*   %and.i.i151.3.2 = and i32 %conv.i.i150.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i151_3_2 v_conv_i_i150_3_2 (0x1)@uint32;
(*   %conv1.i.i152.3.2 = zext i8 %conv7.i.i162.2.2 to i32 *)
cast v_conv1_i_i152_3_2@uint32 v_conv7_i_i162_2_2@uint8;
(*   %mul.i.i153.3.2 = mul nsw i32 %and.i.i151.3.2, %conv1.i.i152.3.2 *)
mul v_mul_i_i153_3_2 v_and_i_i151_3_2 v_conv1_i_i152_3_2;
(*   %conv2.i.i154.3.2 = zext i8 %conv3.i.i156.2.2 to i32 *)
cast v_conv2_i_i154_3_2@uint32 v_conv3_i_i156_2_2@uint8;
(*   %xor.i.i155.3.2 = xor i32 %conv2.i.i154.3.2, %mul.i.i153.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i155_3_2 v_conv2_i_i154_3_2 v_mul_i_i153_3_2;
(*   %conv3.i.i156.3.2 = trunc i32 %xor.i.i155.3.2 to i8 *)
split tmp_v_xor_i_i155_3_2 v_conv3_i_i156_3_2 v_xor_i_i155_3_2 8;
vpc v_conv3_i_i156_3_2@uint8 v_conv3_i_i156_3_2@uint32;
(*   %conv4.i.i157.3.2 = zext i8 %conv5.i.i159.2.2 to i32 *)
cast v_conv4_i_i157_3_2@uint32 v_conv5_i_i159_2_2@uint8;
(*   %shr.i.i158.3.2 = ashr i32 %conv4.i.i157.3.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i158_3_2 tmp_to_be_used v_conv4_i_i157_3_2 1;
(*   %conv5.i.i159.3.2 = trunc i32 %shr.i.i158.3.2 to i8 *)
split tmp_v_shr_i_i158_3_2 v_conv5_i_i159_3_2 v_shr_i_i158_3_2 8;
vpc v_conv5_i_i159_3_2@uint8 v_conv5_i_i159_3_2@uint32;
(*   %conv6.i.i160.3.2 = zext i8 %conv7.i.i162.2.2 to i32 *)
cast v_conv6_i_i160_3_2@uint32 v_conv7_i_i162_2_2@uint8;
(*   %shl.i.i161.3.2 = shl i32 %conv6.i.i160.3.2, 1 *)
shls discard_52 v_shl_i_i161_3_2 v_conv6_i_i160_3_2 1;
(*   %conv7.i.i162.3.2 = trunc i32 %shl.i.i161.3.2 to i8 *)
split tmp_v_shl_i_i161_3_2 v_conv7_i_i162_3_2 v_shl_i_i161_3_2 8;
vpc v_conv7_i_i162_3_2@uint8 v_conv7_i_i162_3_2@uint32;
(*   %conv.i.i150.4.2 = zext i8 %conv5.i.i159.3.2 to i32 *)
cast v_conv_i_i150_4_2@uint32 v_conv5_i_i159_3_2@uint8;
(*   %and.i.i151.4.2 = and i32 %conv.i.i150.4.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i151_4_2 v_conv_i_i150_4_2 (0x1)@uint32;
(*   %conv1.i.i152.4.2 = zext i8 %conv7.i.i162.3.2 to i32 *)
cast v_conv1_i_i152_4_2@uint32 v_conv7_i_i162_3_2@uint8;
(*   %mul.i.i153.4.2 = mul nsw i32 %and.i.i151.4.2, %conv1.i.i152.4.2 *)
mul v_mul_i_i153_4_2 v_and_i_i151_4_2 v_conv1_i_i152_4_2;
(*   %conv2.i.i154.4.2 = zext i8 %conv3.i.i156.3.2 to i32 *)
cast v_conv2_i_i154_4_2@uint32 v_conv3_i_i156_3_2@uint8;
(*   %xor.i.i155.4.2 = xor i32 %conv2.i.i154.4.2, %mul.i.i153.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i155_4_2 v_conv2_i_i154_4_2 v_mul_i_i153_4_2;
(*   %conv3.i.i156.4.2 = trunc i32 %xor.i.i155.4.2 to i8 *)
split tmp_v_xor_i_i155_4_2 v_conv3_i_i156_4_2 v_xor_i_i155_4_2 8;
vpc v_conv3_i_i156_4_2@uint8 v_conv3_i_i156_4_2@uint32;
(*   %conv4.i.i157.4.2 = zext i8 %conv5.i.i159.3.2 to i32 *)
cast v_conv4_i_i157_4_2@uint32 v_conv5_i_i159_3_2@uint8;
(*   %shr.i.i158.4.2 = ashr i32 %conv4.i.i157.4.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i158_4_2 tmp_to_be_used v_conv4_i_i157_4_2 1;
(*   %conv5.i.i159.4.2 = trunc i32 %shr.i.i158.4.2 to i8 *)
split tmp_v_shr_i_i158_4_2 v_conv5_i_i159_4_2 v_shr_i_i158_4_2 8;
vpc v_conv5_i_i159_4_2@uint8 v_conv5_i_i159_4_2@uint32;
(*   %conv6.i.i160.4.2 = zext i8 %conv7.i.i162.3.2 to i32 *)
cast v_conv6_i_i160_4_2@uint32 v_conv7_i_i162_3_2@uint8;
(*   %shl.i.i161.4.2 = shl i32 %conv6.i.i160.4.2, 1 *)
shls discard_53 v_shl_i_i161_4_2 v_conv6_i_i160_4_2 1;
(*   %conv7.i.i162.4.2 = trunc i32 %shl.i.i161.4.2 to i8 *)
split tmp_v_shl_i_i161_4_2 v_conv7_i_i162_4_2 v_shl_i_i161_4_2 8;
vpc v_conv7_i_i162_4_2@uint8 v_conv7_i_i162_4_2@uint32;
(*   %conv.i.i150.5.2 = zext i8 %conv5.i.i159.4.2 to i32 *)
cast v_conv_i_i150_5_2@uint32 v_conv5_i_i159_4_2@uint8;
(*   %and.i.i151.5.2 = and i32 %conv.i.i150.5.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i151_5_2 v_conv_i_i150_5_2 (0x1)@uint32;
(*   %conv1.i.i152.5.2 = zext i8 %conv7.i.i162.4.2 to i32 *)
cast v_conv1_i_i152_5_2@uint32 v_conv7_i_i162_4_2@uint8;
(*   %mul.i.i153.5.2 = mul nsw i32 %and.i.i151.5.2, %conv1.i.i152.5.2 *)
mul v_mul_i_i153_5_2 v_and_i_i151_5_2 v_conv1_i_i152_5_2;
(*   %conv2.i.i154.5.2 = zext i8 %conv3.i.i156.4.2 to i32 *)
cast v_conv2_i_i154_5_2@uint32 v_conv3_i_i156_4_2@uint8;
(*   %xor.i.i155.5.2 = xor i32 %conv2.i.i154.5.2, %mul.i.i153.5.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i155_5_2 v_conv2_i_i154_5_2 v_mul_i_i153_5_2;
(*   %conv3.i.i156.5.2 = trunc i32 %xor.i.i155.5.2 to i8 *)
split tmp_v_xor_i_i155_5_2 v_conv3_i_i156_5_2 v_xor_i_i155_5_2 8;
vpc v_conv3_i_i156_5_2@uint8 v_conv3_i_i156_5_2@uint32;
(*   %conv4.i.i157.5.2 = zext i8 %conv5.i.i159.4.2 to i32 *)
cast v_conv4_i_i157_5_2@uint32 v_conv5_i_i159_4_2@uint8;
(*   %shr.i.i158.5.2 = ashr i32 %conv4.i.i157.5.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i158_5_2 tmp_to_be_used v_conv4_i_i157_5_2 1;
(*   %conv5.i.i159.5.2 = trunc i32 %shr.i.i158.5.2 to i8 *)
split tmp_v_shr_i_i158_5_2 v_conv5_i_i159_5_2 v_shr_i_i158_5_2 8;
vpc v_conv5_i_i159_5_2@uint8 v_conv5_i_i159_5_2@uint32;
(*   %conv6.i.i160.5.2 = zext i8 %conv7.i.i162.4.2 to i32 *)
cast v_conv6_i_i160_5_2@uint32 v_conv7_i_i162_4_2@uint8;
(*   %shl.i.i161.5.2 = shl i32 %conv6.i.i160.5.2, 1 *)
shls discard_54 v_shl_i_i161_5_2 v_conv6_i_i160_5_2 1;
(*   %conv7.i.i162.5.2 = trunc i32 %shl.i.i161.5.2 to i8 *)
split tmp_v_shl_i_i161_5_2 v_conv7_i_i162_5_2 v_shl_i_i161_5_2 8;
vpc v_conv7_i_i162_5_2@uint8 v_conv7_i_i162_5_2@uint32;
(*   %conv.i.i150.6.2 = zext i8 %conv5.i.i159.5.2 to i32 *)
cast v_conv_i_i150_6_2@uint32 v_conv5_i_i159_5_2@uint8;
(*   %and.i.i151.6.2 = and i32 %conv.i.i150.6.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i151_6_2 v_conv_i_i150_6_2 (0x1)@uint32;
(*   %conv1.i.i152.6.2 = zext i8 %conv7.i.i162.5.2 to i32 *)
cast v_conv1_i_i152_6_2@uint32 v_conv7_i_i162_5_2@uint8;
(*   %mul.i.i153.6.2 = mul nsw i32 %and.i.i151.6.2, %conv1.i.i152.6.2 *)
mul v_mul_i_i153_6_2 v_and_i_i151_6_2 v_conv1_i_i152_6_2;
(*   %conv2.i.i154.6.2 = zext i8 %conv3.i.i156.5.2 to i32 *)
cast v_conv2_i_i154_6_2@uint32 v_conv3_i_i156_5_2@uint8;
(*   %xor.i.i155.6.2 = xor i32 %conv2.i.i154.6.2, %mul.i.i153.6.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i155_6_2 v_conv2_i_i154_6_2 v_mul_i_i153_6_2;
(*   %conv3.i.i156.6.2 = trunc i32 %xor.i.i155.6.2 to i8 *)
split tmp_v_xor_i_i155_6_2 v_conv3_i_i156_6_2 v_xor_i_i155_6_2 8;
vpc v_conv3_i_i156_6_2@uint8 v_conv3_i_i156_6_2@uint32;
(*   %conv4.i.i157.6.2 = zext i8 %conv5.i.i159.5.2 to i32 *)
cast v_conv4_i_i157_6_2@uint32 v_conv5_i_i159_5_2@uint8;
(*   %shr.i.i158.6.2 = ashr i32 %conv4.i.i157.6.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i158_6_2 tmp_to_be_used v_conv4_i_i157_6_2 1;
(*   %conv5.i.i159.6.2 = trunc i32 %shr.i.i158.6.2 to i8 *)
split tmp_v_shr_i_i158_6_2 v_conv5_i_i159_6_2 v_shr_i_i158_6_2 8;
vpc v_conv5_i_i159_6_2@uint8 v_conv5_i_i159_6_2@uint32;
(*   %conv6.i.i160.6.2 = zext i8 %conv7.i.i162.5.2 to i32 *)
cast v_conv6_i_i160_6_2@uint32 v_conv7_i_i162_5_2@uint8;
(*   %shl.i.i161.6.2 = shl i32 %conv6.i.i160.6.2, 1 *)
shls discard_55 v_shl_i_i161_6_2 v_conv6_i_i160_6_2 1;
(*   %conv7.i.i162.6.2 = trunc i32 %shl.i.i161.6.2 to i8 *)
split tmp_v_shl_i_i161_6_2 v_conv7_i_i162_6_2 v_shl_i_i161_6_2 8;
vpc v_conv7_i_i162_6_2@uint8 v_conv7_i_i162_6_2@uint32;
(*   %conv.i.i150.7.2 = zext i8 %conv5.i.i159.6.2 to i32 *)
cast v_conv_i_i150_7_2@uint32 v_conv5_i_i159_6_2@uint8;
(*   %and.i.i151.7.2 = and i32 %conv.i.i150.7.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i151_7_2 v_conv_i_i150_7_2 (0x1)@uint32;
(*   %conv1.i.i152.7.2 = zext i8 %conv7.i.i162.6.2 to i32 *)
cast v_conv1_i_i152_7_2@uint32 v_conv7_i_i162_6_2@uint8;
(*   %mul.i.i153.7.2 = mul nsw i32 %and.i.i151.7.2, %conv1.i.i152.7.2 *)
mul v_mul_i_i153_7_2 v_and_i_i151_7_2 v_conv1_i_i152_7_2;
(*   %conv2.i.i154.7.2 = zext i8 %conv3.i.i156.6.2 to i32 *)
cast v_conv2_i_i154_7_2@uint32 v_conv3_i_i156_6_2@uint8;
(*   %xor.i.i155.7.2 = xor i32 %conv2.i.i154.7.2, %mul.i.i153.7.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i155_7_2 v_conv2_i_i154_7_2 v_mul_i_i153_7_2;
(*   %conv3.i.i156.7.2 = trunc i32 %xor.i.i155.7.2 to i8 *)
split tmp_v_xor_i_i155_7_2 v_conv3_i_i156_7_2 v_xor_i_i155_7_2 8;
vpc v_conv3_i_i156_7_2@uint8 v_conv3_i_i156_7_2@uint32;
(*   %arrayidx6.i166.2 = getelementptr inbounds i8, i8* %add.ptr3, i64 2 *)
(*   store i8 %conv3.i.i156.7.2, i8* %arrayidx6.i166.2, align 1 *)
mov cc_12 v_conv3_i_i156_7_2;
(*   %arrayidx.i142.3 = getelementptr inbounds i8, i8* %a, i64 3 *)
(*   %16 = load i8, i8* %arrayidx.i142.3, align 1 *)
mov v16 a_3;
(*   %arrayidx4.i146.3 = getelementptr inbounds i8, i8* %b, i64 4 *)
(*   %17 = load i8, i8* %arrayidx4.i146.3, align 1 *)
mov v17 b_4;
(*   %conv.i.i150.3282 = zext i8 %17 to i32 *)
cast v_conv_i_i150_3282@uint32 v17@uint8;
(*   %and.i.i151.3283 = and i32 %conv.i.i150.3282, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i151_3283 v_conv_i_i150_3282 (0x1)@uint32;
(*   %conv1.i.i152.3284 = zext i8 %16 to i32 *)
cast v_conv1_i_i152_3284@uint32 v16@uint8;
(*   %mul.i.i153.3285 = mul nsw i32 %and.i.i151.3283, %conv1.i.i152.3284 *)
mul v_mul_i_i153_3285 v_and_i_i151_3283 v_conv1_i_i152_3284;
(*   %conv3.i.i156.3286 = trunc i32 %mul.i.i153.3285 to i8 *)
split tmp_v_mul_i_i153_3285 v_conv3_i_i156_3286 v_mul_i_i153_3285 8;
vpc v_conv3_i_i156_3286@uint8 v_conv3_i_i156_3286@uint32;
(*   %conv4.i.i157.3287 = zext i8 %17 to i32 *)
cast v_conv4_i_i157_3287@uint32 v17@uint8;
(*   %shr.i.i158.3288 = ashr i32 %conv4.i.i157.3287, 1 *)
(* You may need to modify here *)
split v_shr_i_i158_3288 tmp_to_be_used v_conv4_i_i157_3287 1;
(*   %conv5.i.i159.3289 = trunc i32 %shr.i.i158.3288 to i8 *)
split tmp_v_shr_i_i158_3288 v_conv5_i_i159_3289 v_shr_i_i158_3288 8;
vpc v_conv5_i_i159_3289@uint8 v_conv5_i_i159_3289@uint32;
(*   %conv6.i.i160.3290 = zext i8 %16 to i32 *)
cast v_conv6_i_i160_3290@uint32 v16@uint8;
(*   %shl.i.i161.3291 = shl i32 %conv6.i.i160.3290, 1 *)
shls discard_56 v_shl_i_i161_3291 v_conv6_i_i160_3290 1;
(*   %conv7.i.i162.3292 = trunc i32 %shl.i.i161.3291 to i8 *)
split tmp_v_shl_i_i161_3291 v_conv7_i_i162_3292 v_shl_i_i161_3291 8;
vpc v_conv7_i_i162_3292@uint8 v_conv7_i_i162_3292@uint32;
(*   %conv.i.i150.1.3 = zext i8 %conv5.i.i159.3289 to i32 *)
cast v_conv_i_i150_1_3@uint32 v_conv5_i_i159_3289@uint8;
(*   %and.i.i151.1.3 = and i32 %conv.i.i150.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i151_1_3 v_conv_i_i150_1_3 (0x1)@uint32;
(*   %conv1.i.i152.1.3 = zext i8 %conv7.i.i162.3292 to i32 *)
cast v_conv1_i_i152_1_3@uint32 v_conv7_i_i162_3292@uint8;
(*   %mul.i.i153.1.3 = mul nsw i32 %and.i.i151.1.3, %conv1.i.i152.1.3 *)
mul v_mul_i_i153_1_3 v_and_i_i151_1_3 v_conv1_i_i152_1_3;
(*   %conv2.i.i154.1.3 = zext i8 %conv3.i.i156.3286 to i32 *)
cast v_conv2_i_i154_1_3@uint32 v_conv3_i_i156_3286@uint8;
(*   %xor.i.i155.1.3 = xor i32 %conv2.i.i154.1.3, %mul.i.i153.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i155_1_3 v_conv2_i_i154_1_3 v_mul_i_i153_1_3;
(*   %conv3.i.i156.1.3 = trunc i32 %xor.i.i155.1.3 to i8 *)
split tmp_v_xor_i_i155_1_3 v_conv3_i_i156_1_3 v_xor_i_i155_1_3 8;
vpc v_conv3_i_i156_1_3@uint8 v_conv3_i_i156_1_3@uint32;
(*   %conv4.i.i157.1.3 = zext i8 %conv5.i.i159.3289 to i32 *)
cast v_conv4_i_i157_1_3@uint32 v_conv5_i_i159_3289@uint8;
(*   %shr.i.i158.1.3 = ashr i32 %conv4.i.i157.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i158_1_3 tmp_to_be_used v_conv4_i_i157_1_3 1;
(*   %conv5.i.i159.1.3 = trunc i32 %shr.i.i158.1.3 to i8 *)
split tmp_v_shr_i_i158_1_3 v_conv5_i_i159_1_3 v_shr_i_i158_1_3 8;
vpc v_conv5_i_i159_1_3@uint8 v_conv5_i_i159_1_3@uint32;
(*   %conv6.i.i160.1.3 = zext i8 %conv7.i.i162.3292 to i32 *)
cast v_conv6_i_i160_1_3@uint32 v_conv7_i_i162_3292@uint8;
(*   %shl.i.i161.1.3 = shl i32 %conv6.i.i160.1.3, 1 *)
shls discard_57 v_shl_i_i161_1_3 v_conv6_i_i160_1_3 1;
(*   %conv7.i.i162.1.3 = trunc i32 %shl.i.i161.1.3 to i8 *)
split tmp_v_shl_i_i161_1_3 v_conv7_i_i162_1_3 v_shl_i_i161_1_3 8;
vpc v_conv7_i_i162_1_3@uint8 v_conv7_i_i162_1_3@uint32;
(*   %conv.i.i150.2.3 = zext i8 %conv5.i.i159.1.3 to i32 *)
cast v_conv_i_i150_2_3@uint32 v_conv5_i_i159_1_3@uint8;
(*   %and.i.i151.2.3 = and i32 %conv.i.i150.2.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i151_2_3 v_conv_i_i150_2_3 (0x1)@uint32;
(*   %conv1.i.i152.2.3 = zext i8 %conv7.i.i162.1.3 to i32 *)
cast v_conv1_i_i152_2_3@uint32 v_conv7_i_i162_1_3@uint8;
(*   %mul.i.i153.2.3 = mul nsw i32 %and.i.i151.2.3, %conv1.i.i152.2.3 *)
mul v_mul_i_i153_2_3 v_and_i_i151_2_3 v_conv1_i_i152_2_3;
(*   %conv2.i.i154.2.3 = zext i8 %conv3.i.i156.1.3 to i32 *)
cast v_conv2_i_i154_2_3@uint32 v_conv3_i_i156_1_3@uint8;
(*   %xor.i.i155.2.3 = xor i32 %conv2.i.i154.2.3, %mul.i.i153.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i155_2_3 v_conv2_i_i154_2_3 v_mul_i_i153_2_3;
(*   %conv3.i.i156.2.3 = trunc i32 %xor.i.i155.2.3 to i8 *)
split tmp_v_xor_i_i155_2_3 v_conv3_i_i156_2_3 v_xor_i_i155_2_3 8;
vpc v_conv3_i_i156_2_3@uint8 v_conv3_i_i156_2_3@uint32;
(*   %conv4.i.i157.2.3 = zext i8 %conv5.i.i159.1.3 to i32 *)
cast v_conv4_i_i157_2_3@uint32 v_conv5_i_i159_1_3@uint8;
(*   %shr.i.i158.2.3 = ashr i32 %conv4.i.i157.2.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i158_2_3 tmp_to_be_used v_conv4_i_i157_2_3 1;
(*   %conv5.i.i159.2.3 = trunc i32 %shr.i.i158.2.3 to i8 *)
split tmp_v_shr_i_i158_2_3 v_conv5_i_i159_2_3 v_shr_i_i158_2_3 8;
vpc v_conv5_i_i159_2_3@uint8 v_conv5_i_i159_2_3@uint32;
(*   %conv6.i.i160.2.3 = zext i8 %conv7.i.i162.1.3 to i32 *)
cast v_conv6_i_i160_2_3@uint32 v_conv7_i_i162_1_3@uint8;
(*   %shl.i.i161.2.3 = shl i32 %conv6.i.i160.2.3, 1 *)
shls discard_58 v_shl_i_i161_2_3 v_conv6_i_i160_2_3 1;
(*   %conv7.i.i162.2.3 = trunc i32 %shl.i.i161.2.3 to i8 *)
split tmp_v_shl_i_i161_2_3 v_conv7_i_i162_2_3 v_shl_i_i161_2_3 8;
vpc v_conv7_i_i162_2_3@uint8 v_conv7_i_i162_2_3@uint32;
(*   %conv.i.i150.3.3 = zext i8 %conv5.i.i159.2.3 to i32 *)
cast v_conv_i_i150_3_3@uint32 v_conv5_i_i159_2_3@uint8;
(*   %and.i.i151.3.3 = and i32 %conv.i.i150.3.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i151_3_3 v_conv_i_i150_3_3 (0x1)@uint32;
(*   %conv1.i.i152.3.3 = zext i8 %conv7.i.i162.2.3 to i32 *)
cast v_conv1_i_i152_3_3@uint32 v_conv7_i_i162_2_3@uint8;
(*   %mul.i.i153.3.3 = mul nsw i32 %and.i.i151.3.3, %conv1.i.i152.3.3 *)
mul v_mul_i_i153_3_3 v_and_i_i151_3_3 v_conv1_i_i152_3_3;
(*   %conv2.i.i154.3.3 = zext i8 %conv3.i.i156.2.3 to i32 *)
cast v_conv2_i_i154_3_3@uint32 v_conv3_i_i156_2_3@uint8;
(*   %xor.i.i155.3.3 = xor i32 %conv2.i.i154.3.3, %mul.i.i153.3.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i155_3_3 v_conv2_i_i154_3_3 v_mul_i_i153_3_3;
(*   %conv3.i.i156.3.3 = trunc i32 %xor.i.i155.3.3 to i8 *)
split tmp_v_xor_i_i155_3_3 v_conv3_i_i156_3_3 v_xor_i_i155_3_3 8;
vpc v_conv3_i_i156_3_3@uint8 v_conv3_i_i156_3_3@uint32;
(*   %conv4.i.i157.3.3 = zext i8 %conv5.i.i159.2.3 to i32 *)
cast v_conv4_i_i157_3_3@uint32 v_conv5_i_i159_2_3@uint8;
(*   %shr.i.i158.3.3 = ashr i32 %conv4.i.i157.3.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i158_3_3 tmp_to_be_used v_conv4_i_i157_3_3 1;
(*   %conv5.i.i159.3.3 = trunc i32 %shr.i.i158.3.3 to i8 *)
split tmp_v_shr_i_i158_3_3 v_conv5_i_i159_3_3 v_shr_i_i158_3_3 8;
vpc v_conv5_i_i159_3_3@uint8 v_conv5_i_i159_3_3@uint32;
(*   %conv6.i.i160.3.3 = zext i8 %conv7.i.i162.2.3 to i32 *)
cast v_conv6_i_i160_3_3@uint32 v_conv7_i_i162_2_3@uint8;
(*   %shl.i.i161.3.3 = shl i32 %conv6.i.i160.3.3, 1 *)
shls discard_59 v_shl_i_i161_3_3 v_conv6_i_i160_3_3 1;
(*   %conv7.i.i162.3.3 = trunc i32 %shl.i.i161.3.3 to i8 *)
split tmp_v_shl_i_i161_3_3 v_conv7_i_i162_3_3 v_shl_i_i161_3_3 8;
vpc v_conv7_i_i162_3_3@uint8 v_conv7_i_i162_3_3@uint32;
(*   %conv.i.i150.4.3 = zext i8 %conv5.i.i159.3.3 to i32 *)
cast v_conv_i_i150_4_3@uint32 v_conv5_i_i159_3_3@uint8;
(*   %and.i.i151.4.3 = and i32 %conv.i.i150.4.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i151_4_3 v_conv_i_i150_4_3 (0x1)@uint32;
(*   %conv1.i.i152.4.3 = zext i8 %conv7.i.i162.3.3 to i32 *)
cast v_conv1_i_i152_4_3@uint32 v_conv7_i_i162_3_3@uint8;
(*   %mul.i.i153.4.3 = mul nsw i32 %and.i.i151.4.3, %conv1.i.i152.4.3 *)
mul v_mul_i_i153_4_3 v_and_i_i151_4_3 v_conv1_i_i152_4_3;
(*   %conv2.i.i154.4.3 = zext i8 %conv3.i.i156.3.3 to i32 *)
cast v_conv2_i_i154_4_3@uint32 v_conv3_i_i156_3_3@uint8;
(*   %xor.i.i155.4.3 = xor i32 %conv2.i.i154.4.3, %mul.i.i153.4.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i155_4_3 v_conv2_i_i154_4_3 v_mul_i_i153_4_3;
(*   %conv3.i.i156.4.3 = trunc i32 %xor.i.i155.4.3 to i8 *)
split tmp_v_xor_i_i155_4_3 v_conv3_i_i156_4_3 v_xor_i_i155_4_3 8;
vpc v_conv3_i_i156_4_3@uint8 v_conv3_i_i156_4_3@uint32;
(*   %conv4.i.i157.4.3 = zext i8 %conv5.i.i159.3.3 to i32 *)
cast v_conv4_i_i157_4_3@uint32 v_conv5_i_i159_3_3@uint8;
(*   %shr.i.i158.4.3 = ashr i32 %conv4.i.i157.4.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i158_4_3 tmp_to_be_used v_conv4_i_i157_4_3 1;
(*   %conv5.i.i159.4.3 = trunc i32 %shr.i.i158.4.3 to i8 *)
split tmp_v_shr_i_i158_4_3 v_conv5_i_i159_4_3 v_shr_i_i158_4_3 8;
vpc v_conv5_i_i159_4_3@uint8 v_conv5_i_i159_4_3@uint32;
(*   %conv6.i.i160.4.3 = zext i8 %conv7.i.i162.3.3 to i32 *)
cast v_conv6_i_i160_4_3@uint32 v_conv7_i_i162_3_3@uint8;
(*   %shl.i.i161.4.3 = shl i32 %conv6.i.i160.4.3, 1 *)
shls discard_60 v_shl_i_i161_4_3 v_conv6_i_i160_4_3 1;
(*   %conv7.i.i162.4.3 = trunc i32 %shl.i.i161.4.3 to i8 *)
split tmp_v_shl_i_i161_4_3 v_conv7_i_i162_4_3 v_shl_i_i161_4_3 8;
vpc v_conv7_i_i162_4_3@uint8 v_conv7_i_i162_4_3@uint32;
(*   %conv.i.i150.5.3 = zext i8 %conv5.i.i159.4.3 to i32 *)
cast v_conv_i_i150_5_3@uint32 v_conv5_i_i159_4_3@uint8;
(*   %and.i.i151.5.3 = and i32 %conv.i.i150.5.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i151_5_3 v_conv_i_i150_5_3 (0x1)@uint32;
(*   %conv1.i.i152.5.3 = zext i8 %conv7.i.i162.4.3 to i32 *)
cast v_conv1_i_i152_5_3@uint32 v_conv7_i_i162_4_3@uint8;
(*   %mul.i.i153.5.3 = mul nsw i32 %and.i.i151.5.3, %conv1.i.i152.5.3 *)
mul v_mul_i_i153_5_3 v_and_i_i151_5_3 v_conv1_i_i152_5_3;
(*   %conv2.i.i154.5.3 = zext i8 %conv3.i.i156.4.3 to i32 *)
cast v_conv2_i_i154_5_3@uint32 v_conv3_i_i156_4_3@uint8;
(*   %xor.i.i155.5.3 = xor i32 %conv2.i.i154.5.3, %mul.i.i153.5.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i155_5_3 v_conv2_i_i154_5_3 v_mul_i_i153_5_3;
(*   %conv3.i.i156.5.3 = trunc i32 %xor.i.i155.5.3 to i8 *)
split tmp_v_xor_i_i155_5_3 v_conv3_i_i156_5_3 v_xor_i_i155_5_3 8;
vpc v_conv3_i_i156_5_3@uint8 v_conv3_i_i156_5_3@uint32;
(*   %conv4.i.i157.5.3 = zext i8 %conv5.i.i159.4.3 to i32 *)
cast v_conv4_i_i157_5_3@uint32 v_conv5_i_i159_4_3@uint8;
(*   %shr.i.i158.5.3 = ashr i32 %conv4.i.i157.5.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i158_5_3 tmp_to_be_used v_conv4_i_i157_5_3 1;
(*   %conv5.i.i159.5.3 = trunc i32 %shr.i.i158.5.3 to i8 *)
split tmp_v_shr_i_i158_5_3 v_conv5_i_i159_5_3 v_shr_i_i158_5_3 8;
vpc v_conv5_i_i159_5_3@uint8 v_conv5_i_i159_5_3@uint32;
(*   %conv6.i.i160.5.3 = zext i8 %conv7.i.i162.4.3 to i32 *)
cast v_conv6_i_i160_5_3@uint32 v_conv7_i_i162_4_3@uint8;
(*   %shl.i.i161.5.3 = shl i32 %conv6.i.i160.5.3, 1 *)
shls discard_61 v_shl_i_i161_5_3 v_conv6_i_i160_5_3 1;
(*   %conv7.i.i162.5.3 = trunc i32 %shl.i.i161.5.3 to i8 *)
split tmp_v_shl_i_i161_5_3 v_conv7_i_i162_5_3 v_shl_i_i161_5_3 8;
vpc v_conv7_i_i162_5_3@uint8 v_conv7_i_i162_5_3@uint32;
(*   %conv.i.i150.6.3 = zext i8 %conv5.i.i159.5.3 to i32 *)
cast v_conv_i_i150_6_3@uint32 v_conv5_i_i159_5_3@uint8;
(*   %and.i.i151.6.3 = and i32 %conv.i.i150.6.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i151_6_3 v_conv_i_i150_6_3 (0x1)@uint32;
(*   %conv1.i.i152.6.3 = zext i8 %conv7.i.i162.5.3 to i32 *)
cast v_conv1_i_i152_6_3@uint32 v_conv7_i_i162_5_3@uint8;
(*   %mul.i.i153.6.3 = mul nsw i32 %and.i.i151.6.3, %conv1.i.i152.6.3 *)
mul v_mul_i_i153_6_3 v_and_i_i151_6_3 v_conv1_i_i152_6_3;
(*   %conv2.i.i154.6.3 = zext i8 %conv3.i.i156.5.3 to i32 *)
cast v_conv2_i_i154_6_3@uint32 v_conv3_i_i156_5_3@uint8;
(*   %xor.i.i155.6.3 = xor i32 %conv2.i.i154.6.3, %mul.i.i153.6.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i155_6_3 v_conv2_i_i154_6_3 v_mul_i_i153_6_3;
(*   %conv3.i.i156.6.3 = trunc i32 %xor.i.i155.6.3 to i8 *)
split tmp_v_xor_i_i155_6_3 v_conv3_i_i156_6_3 v_xor_i_i155_6_3 8;
vpc v_conv3_i_i156_6_3@uint8 v_conv3_i_i156_6_3@uint32;
(*   %conv4.i.i157.6.3 = zext i8 %conv5.i.i159.5.3 to i32 *)
cast v_conv4_i_i157_6_3@uint32 v_conv5_i_i159_5_3@uint8;
(*   %shr.i.i158.6.3 = ashr i32 %conv4.i.i157.6.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i158_6_3 tmp_to_be_used v_conv4_i_i157_6_3 1;
(*   %conv5.i.i159.6.3 = trunc i32 %shr.i.i158.6.3 to i8 *)
split tmp_v_shr_i_i158_6_3 v_conv5_i_i159_6_3 v_shr_i_i158_6_3 8;
vpc v_conv5_i_i159_6_3@uint8 v_conv5_i_i159_6_3@uint32;
(*   %conv6.i.i160.6.3 = zext i8 %conv7.i.i162.5.3 to i32 *)
cast v_conv6_i_i160_6_3@uint32 v_conv7_i_i162_5_3@uint8;
(*   %shl.i.i161.6.3 = shl i32 %conv6.i.i160.6.3, 1 *)
shls discard_62 v_shl_i_i161_6_3 v_conv6_i_i160_6_3 1;
(*   %conv7.i.i162.6.3 = trunc i32 %shl.i.i161.6.3 to i8 *)
split tmp_v_shl_i_i161_6_3 v_conv7_i_i162_6_3 v_shl_i_i161_6_3 8;
vpc v_conv7_i_i162_6_3@uint8 v_conv7_i_i162_6_3@uint32;
(*   %conv.i.i150.7.3 = zext i8 %conv5.i.i159.6.3 to i32 *)
cast v_conv_i_i150_7_3@uint32 v_conv5_i_i159_6_3@uint8;
(*   %and.i.i151.7.3 = and i32 %conv.i.i150.7.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i151_7_3 v_conv_i_i150_7_3 (0x1)@uint32;
(*   %conv1.i.i152.7.3 = zext i8 %conv7.i.i162.6.3 to i32 *)
cast v_conv1_i_i152_7_3@uint32 v_conv7_i_i162_6_3@uint8;
(*   %mul.i.i153.7.3 = mul nsw i32 %and.i.i151.7.3, %conv1.i.i152.7.3 *)
mul v_mul_i_i153_7_3 v_and_i_i151_7_3 v_conv1_i_i152_7_3;
(*   %conv2.i.i154.7.3 = zext i8 %conv3.i.i156.6.3 to i32 *)
cast v_conv2_i_i154_7_3@uint32 v_conv3_i_i156_6_3@uint8;
(*   %xor.i.i155.7.3 = xor i32 %conv2.i.i154.7.3, %mul.i.i153.7.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i155_7_3 v_conv2_i_i154_7_3 v_mul_i_i153_7_3;
(*   %conv3.i.i156.7.3 = trunc i32 %xor.i.i155.7.3 to i8 *)
split tmp_v_xor_i_i155_7_3 v_conv3_i_i156_7_3 v_xor_i_i155_7_3 8;
vpc v_conv3_i_i156_7_3@uint8 v_conv3_i_i156_7_3@uint32;
(*   %arrayidx6.i166.3 = getelementptr inbounds i8, i8* %add.ptr3, i64 3 *)
(*   store i8 %conv3.i.i156.7.3, i8* %arrayidx6.i166.3, align 1 *)
mov cc_13 v_conv3_i_i156_7_3;
(*   %arrayidx.i142.4 = getelementptr inbounds i8, i8* %a, i64 4 *)
(*   %18 = load i8, i8* %arrayidx.i142.4, align 1 *)
mov v18 a_4;
(*   %19 = load i8, i8* %b, align 1 *)
mov v19 b_0;
(*   %conv.i.i150.4293 = zext i8 %19 to i32 *)
cast v_conv_i_i150_4293@uint32 v19@uint8;
(*   %and.i.i151.4294 = and i32 %conv.i.i150.4293, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i151_4294 v_conv_i_i150_4293 (0x1)@uint32;
(*   %conv1.i.i152.4295 = zext i8 %18 to i32 *)
cast v_conv1_i_i152_4295@uint32 v18@uint8;
(*   %mul.i.i153.4296 = mul nsw i32 %and.i.i151.4294, %conv1.i.i152.4295 *)
mul v_mul_i_i153_4296 v_and_i_i151_4294 v_conv1_i_i152_4295;
(*   %conv3.i.i156.4297 = trunc i32 %mul.i.i153.4296 to i8 *)
split tmp_v_mul_i_i153_4296 v_conv3_i_i156_4297 v_mul_i_i153_4296 8;
vpc v_conv3_i_i156_4297@uint8 v_conv3_i_i156_4297@uint32;
(*   %conv4.i.i157.4298 = zext i8 %19 to i32 *)
cast v_conv4_i_i157_4298@uint32 v19@uint8;
(*   %shr.i.i158.4299 = ashr i32 %conv4.i.i157.4298, 1 *)
(* You may need to modify here *)
split v_shr_i_i158_4299 tmp_to_be_used v_conv4_i_i157_4298 1;
(*   %conv5.i.i159.4300 = trunc i32 %shr.i.i158.4299 to i8 *)
split tmp_v_shr_i_i158_4299 v_conv5_i_i159_4300 v_shr_i_i158_4299 8;
vpc v_conv5_i_i159_4300@uint8 v_conv5_i_i159_4300@uint32;
(*   %conv6.i.i160.4301 = zext i8 %18 to i32 *)
cast v_conv6_i_i160_4301@uint32 v18@uint8;
(*   %shl.i.i161.4302 = shl i32 %conv6.i.i160.4301, 1 *)
shls discard_63 v_shl_i_i161_4302 v_conv6_i_i160_4301 1;
(*   %conv7.i.i162.4303 = trunc i32 %shl.i.i161.4302 to i8 *)
split tmp_v_shl_i_i161_4302 v_conv7_i_i162_4303 v_shl_i_i161_4302 8;
vpc v_conv7_i_i162_4303@uint8 v_conv7_i_i162_4303@uint32;
(*   %conv.i.i150.1.4 = zext i8 %conv5.i.i159.4300 to i32 *)
cast v_conv_i_i150_1_4@uint32 v_conv5_i_i159_4300@uint8;
(*   %and.i.i151.1.4 = and i32 %conv.i.i150.1.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i151_1_4 v_conv_i_i150_1_4 (0x1)@uint32;
(*   %conv1.i.i152.1.4 = zext i8 %conv7.i.i162.4303 to i32 *)
cast v_conv1_i_i152_1_4@uint32 v_conv7_i_i162_4303@uint8;
(*   %mul.i.i153.1.4 = mul nsw i32 %and.i.i151.1.4, %conv1.i.i152.1.4 *)
mul v_mul_i_i153_1_4 v_and_i_i151_1_4 v_conv1_i_i152_1_4;
(*   %conv2.i.i154.1.4 = zext i8 %conv3.i.i156.4297 to i32 *)
cast v_conv2_i_i154_1_4@uint32 v_conv3_i_i156_4297@uint8;
(*   %xor.i.i155.1.4 = xor i32 %conv2.i.i154.1.4, %mul.i.i153.1.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i155_1_4 v_conv2_i_i154_1_4 v_mul_i_i153_1_4;
(*   %conv3.i.i156.1.4 = trunc i32 %xor.i.i155.1.4 to i8 *)
split tmp_v_xor_i_i155_1_4 v_conv3_i_i156_1_4 v_xor_i_i155_1_4 8;
vpc v_conv3_i_i156_1_4@uint8 v_conv3_i_i156_1_4@uint32;
(*   %conv4.i.i157.1.4 = zext i8 %conv5.i.i159.4300 to i32 *)
cast v_conv4_i_i157_1_4@uint32 v_conv5_i_i159_4300@uint8;
(*   %shr.i.i158.1.4 = ashr i32 %conv4.i.i157.1.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i158_1_4 tmp_to_be_used v_conv4_i_i157_1_4 1;
(*   %conv5.i.i159.1.4 = trunc i32 %shr.i.i158.1.4 to i8 *)
split tmp_v_shr_i_i158_1_4 v_conv5_i_i159_1_4 v_shr_i_i158_1_4 8;
vpc v_conv5_i_i159_1_4@uint8 v_conv5_i_i159_1_4@uint32;
(*   %conv6.i.i160.1.4 = zext i8 %conv7.i.i162.4303 to i32 *)
cast v_conv6_i_i160_1_4@uint32 v_conv7_i_i162_4303@uint8;
(*   %shl.i.i161.1.4 = shl i32 %conv6.i.i160.1.4, 1 *)
shls discard_64 v_shl_i_i161_1_4 v_conv6_i_i160_1_4 1;
(*   %conv7.i.i162.1.4 = trunc i32 %shl.i.i161.1.4 to i8 *)
split tmp_v_shl_i_i161_1_4 v_conv7_i_i162_1_4 v_shl_i_i161_1_4 8;
vpc v_conv7_i_i162_1_4@uint8 v_conv7_i_i162_1_4@uint32;
(*   %conv.i.i150.2.4 = zext i8 %conv5.i.i159.1.4 to i32 *)
cast v_conv_i_i150_2_4@uint32 v_conv5_i_i159_1_4@uint8;
(*   %and.i.i151.2.4 = and i32 %conv.i.i150.2.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i151_2_4 v_conv_i_i150_2_4 (0x1)@uint32;
(*   %conv1.i.i152.2.4 = zext i8 %conv7.i.i162.1.4 to i32 *)
cast v_conv1_i_i152_2_4@uint32 v_conv7_i_i162_1_4@uint8;
(*   %mul.i.i153.2.4 = mul nsw i32 %and.i.i151.2.4, %conv1.i.i152.2.4 *)
mul v_mul_i_i153_2_4 v_and_i_i151_2_4 v_conv1_i_i152_2_4;
(*   %conv2.i.i154.2.4 = zext i8 %conv3.i.i156.1.4 to i32 *)
cast v_conv2_i_i154_2_4@uint32 v_conv3_i_i156_1_4@uint8;
(*   %xor.i.i155.2.4 = xor i32 %conv2.i.i154.2.4, %mul.i.i153.2.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i155_2_4 v_conv2_i_i154_2_4 v_mul_i_i153_2_4;
(*   %conv3.i.i156.2.4 = trunc i32 %xor.i.i155.2.4 to i8 *)
split tmp_v_xor_i_i155_2_4 v_conv3_i_i156_2_4 v_xor_i_i155_2_4 8;
vpc v_conv3_i_i156_2_4@uint8 v_conv3_i_i156_2_4@uint32;
(*   %conv4.i.i157.2.4 = zext i8 %conv5.i.i159.1.4 to i32 *)
cast v_conv4_i_i157_2_4@uint32 v_conv5_i_i159_1_4@uint8;
(*   %shr.i.i158.2.4 = ashr i32 %conv4.i.i157.2.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i158_2_4 tmp_to_be_used v_conv4_i_i157_2_4 1;
(*   %conv5.i.i159.2.4 = trunc i32 %shr.i.i158.2.4 to i8 *)
split tmp_v_shr_i_i158_2_4 v_conv5_i_i159_2_4 v_shr_i_i158_2_4 8;
vpc v_conv5_i_i159_2_4@uint8 v_conv5_i_i159_2_4@uint32;
(*   %conv6.i.i160.2.4 = zext i8 %conv7.i.i162.1.4 to i32 *)
cast v_conv6_i_i160_2_4@uint32 v_conv7_i_i162_1_4@uint8;
(*   %shl.i.i161.2.4 = shl i32 %conv6.i.i160.2.4, 1 *)
shls discard_65 v_shl_i_i161_2_4 v_conv6_i_i160_2_4 1;
(*   %conv7.i.i162.2.4 = trunc i32 %shl.i.i161.2.4 to i8 *)
split tmp_v_shl_i_i161_2_4 v_conv7_i_i162_2_4 v_shl_i_i161_2_4 8;
vpc v_conv7_i_i162_2_4@uint8 v_conv7_i_i162_2_4@uint32;
(*   %conv.i.i150.3.4 = zext i8 %conv5.i.i159.2.4 to i32 *)
cast v_conv_i_i150_3_4@uint32 v_conv5_i_i159_2_4@uint8;
(*   %and.i.i151.3.4 = and i32 %conv.i.i150.3.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i151_3_4 v_conv_i_i150_3_4 (0x1)@uint32;
(*   %conv1.i.i152.3.4 = zext i8 %conv7.i.i162.2.4 to i32 *)
cast v_conv1_i_i152_3_4@uint32 v_conv7_i_i162_2_4@uint8;
(*   %mul.i.i153.3.4 = mul nsw i32 %and.i.i151.3.4, %conv1.i.i152.3.4 *)
mul v_mul_i_i153_3_4 v_and_i_i151_3_4 v_conv1_i_i152_3_4;
(*   %conv2.i.i154.3.4 = zext i8 %conv3.i.i156.2.4 to i32 *)
cast v_conv2_i_i154_3_4@uint32 v_conv3_i_i156_2_4@uint8;
(*   %xor.i.i155.3.4 = xor i32 %conv2.i.i154.3.4, %mul.i.i153.3.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i155_3_4 v_conv2_i_i154_3_4 v_mul_i_i153_3_4;
(*   %conv3.i.i156.3.4 = trunc i32 %xor.i.i155.3.4 to i8 *)
split tmp_v_xor_i_i155_3_4 v_conv3_i_i156_3_4 v_xor_i_i155_3_4 8;
vpc v_conv3_i_i156_3_4@uint8 v_conv3_i_i156_3_4@uint32;
(*   %conv4.i.i157.3.4 = zext i8 %conv5.i.i159.2.4 to i32 *)
cast v_conv4_i_i157_3_4@uint32 v_conv5_i_i159_2_4@uint8;
(*   %shr.i.i158.3.4 = ashr i32 %conv4.i.i157.3.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i158_3_4 tmp_to_be_used v_conv4_i_i157_3_4 1;
(*   %conv5.i.i159.3.4 = trunc i32 %shr.i.i158.3.4 to i8 *)
split tmp_v_shr_i_i158_3_4 v_conv5_i_i159_3_4 v_shr_i_i158_3_4 8;
vpc v_conv5_i_i159_3_4@uint8 v_conv5_i_i159_3_4@uint32;
(*   %conv6.i.i160.3.4 = zext i8 %conv7.i.i162.2.4 to i32 *)
cast v_conv6_i_i160_3_4@uint32 v_conv7_i_i162_2_4@uint8;
(*   %shl.i.i161.3.4 = shl i32 %conv6.i.i160.3.4, 1 *)
shls discard_66 v_shl_i_i161_3_4 v_conv6_i_i160_3_4 1;
(*   %conv7.i.i162.3.4 = trunc i32 %shl.i.i161.3.4 to i8 *)
split tmp_v_shl_i_i161_3_4 v_conv7_i_i162_3_4 v_shl_i_i161_3_4 8;
vpc v_conv7_i_i162_3_4@uint8 v_conv7_i_i162_3_4@uint32;
(*   %conv.i.i150.4.4 = zext i8 %conv5.i.i159.3.4 to i32 *)
cast v_conv_i_i150_4_4@uint32 v_conv5_i_i159_3_4@uint8;
(*   %and.i.i151.4.4 = and i32 %conv.i.i150.4.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i151_4_4 v_conv_i_i150_4_4 (0x1)@uint32;
(*   %conv1.i.i152.4.4 = zext i8 %conv7.i.i162.3.4 to i32 *)
cast v_conv1_i_i152_4_4@uint32 v_conv7_i_i162_3_4@uint8;
(*   %mul.i.i153.4.4 = mul nsw i32 %and.i.i151.4.4, %conv1.i.i152.4.4 *)
mul v_mul_i_i153_4_4 v_and_i_i151_4_4 v_conv1_i_i152_4_4;
(*   %conv2.i.i154.4.4 = zext i8 %conv3.i.i156.3.4 to i32 *)
cast v_conv2_i_i154_4_4@uint32 v_conv3_i_i156_3_4@uint8;
(*   %xor.i.i155.4.4 = xor i32 %conv2.i.i154.4.4, %mul.i.i153.4.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i155_4_4 v_conv2_i_i154_4_4 v_mul_i_i153_4_4;
(*   %conv3.i.i156.4.4 = trunc i32 %xor.i.i155.4.4 to i8 *)
split tmp_v_xor_i_i155_4_4 v_conv3_i_i156_4_4 v_xor_i_i155_4_4 8;
vpc v_conv3_i_i156_4_4@uint8 v_conv3_i_i156_4_4@uint32;
(*   %conv4.i.i157.4.4 = zext i8 %conv5.i.i159.3.4 to i32 *)
cast v_conv4_i_i157_4_4@uint32 v_conv5_i_i159_3_4@uint8;
(*   %shr.i.i158.4.4 = ashr i32 %conv4.i.i157.4.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i158_4_4 tmp_to_be_used v_conv4_i_i157_4_4 1;
(*   %conv5.i.i159.4.4 = trunc i32 %shr.i.i158.4.4 to i8 *)
split tmp_v_shr_i_i158_4_4 v_conv5_i_i159_4_4 v_shr_i_i158_4_4 8;
vpc v_conv5_i_i159_4_4@uint8 v_conv5_i_i159_4_4@uint32;
(*   %conv6.i.i160.4.4 = zext i8 %conv7.i.i162.3.4 to i32 *)
cast v_conv6_i_i160_4_4@uint32 v_conv7_i_i162_3_4@uint8;
(*   %shl.i.i161.4.4 = shl i32 %conv6.i.i160.4.4, 1 *)
shls discard_67 v_shl_i_i161_4_4 v_conv6_i_i160_4_4 1;
(*   %conv7.i.i162.4.4 = trunc i32 %shl.i.i161.4.4 to i8 *)
split tmp_v_shl_i_i161_4_4 v_conv7_i_i162_4_4 v_shl_i_i161_4_4 8;
vpc v_conv7_i_i162_4_4@uint8 v_conv7_i_i162_4_4@uint32;
(*   %conv.i.i150.5.4 = zext i8 %conv5.i.i159.4.4 to i32 *)
cast v_conv_i_i150_5_4@uint32 v_conv5_i_i159_4_4@uint8;
(*   %and.i.i151.5.4 = and i32 %conv.i.i150.5.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i151_5_4 v_conv_i_i150_5_4 (0x1)@uint32;
(*   %conv1.i.i152.5.4 = zext i8 %conv7.i.i162.4.4 to i32 *)
cast v_conv1_i_i152_5_4@uint32 v_conv7_i_i162_4_4@uint8;
(*   %mul.i.i153.5.4 = mul nsw i32 %and.i.i151.5.4, %conv1.i.i152.5.4 *)
mul v_mul_i_i153_5_4 v_and_i_i151_5_4 v_conv1_i_i152_5_4;
(*   %conv2.i.i154.5.4 = zext i8 %conv3.i.i156.4.4 to i32 *)
cast v_conv2_i_i154_5_4@uint32 v_conv3_i_i156_4_4@uint8;
(*   %xor.i.i155.5.4 = xor i32 %conv2.i.i154.5.4, %mul.i.i153.5.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i155_5_4 v_conv2_i_i154_5_4 v_mul_i_i153_5_4;
(*   %conv3.i.i156.5.4 = trunc i32 %xor.i.i155.5.4 to i8 *)
split tmp_v_xor_i_i155_5_4 v_conv3_i_i156_5_4 v_xor_i_i155_5_4 8;
vpc v_conv3_i_i156_5_4@uint8 v_conv3_i_i156_5_4@uint32;
(*   %conv4.i.i157.5.4 = zext i8 %conv5.i.i159.4.4 to i32 *)
cast v_conv4_i_i157_5_4@uint32 v_conv5_i_i159_4_4@uint8;
(*   %shr.i.i158.5.4 = ashr i32 %conv4.i.i157.5.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i158_5_4 tmp_to_be_used v_conv4_i_i157_5_4 1;
(*   %conv5.i.i159.5.4 = trunc i32 %shr.i.i158.5.4 to i8 *)
split tmp_v_shr_i_i158_5_4 v_conv5_i_i159_5_4 v_shr_i_i158_5_4 8;
vpc v_conv5_i_i159_5_4@uint8 v_conv5_i_i159_5_4@uint32;
(*   %conv6.i.i160.5.4 = zext i8 %conv7.i.i162.4.4 to i32 *)
cast v_conv6_i_i160_5_4@uint32 v_conv7_i_i162_4_4@uint8;
(*   %shl.i.i161.5.4 = shl i32 %conv6.i.i160.5.4, 1 *)
shls discard_68 v_shl_i_i161_5_4 v_conv6_i_i160_5_4 1;
(*   %conv7.i.i162.5.4 = trunc i32 %shl.i.i161.5.4 to i8 *)
split tmp_v_shl_i_i161_5_4 v_conv7_i_i162_5_4 v_shl_i_i161_5_4 8;
vpc v_conv7_i_i162_5_4@uint8 v_conv7_i_i162_5_4@uint32;
(*   %conv.i.i150.6.4 = zext i8 %conv5.i.i159.5.4 to i32 *)
cast v_conv_i_i150_6_4@uint32 v_conv5_i_i159_5_4@uint8;
(*   %and.i.i151.6.4 = and i32 %conv.i.i150.6.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i151_6_4 v_conv_i_i150_6_4 (0x1)@uint32;
(*   %conv1.i.i152.6.4 = zext i8 %conv7.i.i162.5.4 to i32 *)
cast v_conv1_i_i152_6_4@uint32 v_conv7_i_i162_5_4@uint8;
(*   %mul.i.i153.6.4 = mul nsw i32 %and.i.i151.6.4, %conv1.i.i152.6.4 *)
mul v_mul_i_i153_6_4 v_and_i_i151_6_4 v_conv1_i_i152_6_4;
(*   %conv2.i.i154.6.4 = zext i8 %conv3.i.i156.5.4 to i32 *)
cast v_conv2_i_i154_6_4@uint32 v_conv3_i_i156_5_4@uint8;
(*   %xor.i.i155.6.4 = xor i32 %conv2.i.i154.6.4, %mul.i.i153.6.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i155_6_4 v_conv2_i_i154_6_4 v_mul_i_i153_6_4;
(*   %conv3.i.i156.6.4 = trunc i32 %xor.i.i155.6.4 to i8 *)
split tmp_v_xor_i_i155_6_4 v_conv3_i_i156_6_4 v_xor_i_i155_6_4 8;
vpc v_conv3_i_i156_6_4@uint8 v_conv3_i_i156_6_4@uint32;
(*   %conv4.i.i157.6.4 = zext i8 %conv5.i.i159.5.4 to i32 *)
cast v_conv4_i_i157_6_4@uint32 v_conv5_i_i159_5_4@uint8;
(*   %shr.i.i158.6.4 = ashr i32 %conv4.i.i157.6.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i158_6_4 tmp_to_be_used v_conv4_i_i157_6_4 1;
(*   %conv5.i.i159.6.4 = trunc i32 %shr.i.i158.6.4 to i8 *)
split tmp_v_shr_i_i158_6_4 v_conv5_i_i159_6_4 v_shr_i_i158_6_4 8;
vpc v_conv5_i_i159_6_4@uint8 v_conv5_i_i159_6_4@uint32;
(*   %conv6.i.i160.6.4 = zext i8 %conv7.i.i162.5.4 to i32 *)
cast v_conv6_i_i160_6_4@uint32 v_conv7_i_i162_5_4@uint8;
(*   %shl.i.i161.6.4 = shl i32 %conv6.i.i160.6.4, 1 *)
shls discard_69 v_shl_i_i161_6_4 v_conv6_i_i160_6_4 1;
(*   %conv7.i.i162.6.4 = trunc i32 %shl.i.i161.6.4 to i8 *)
split tmp_v_shl_i_i161_6_4 v_conv7_i_i162_6_4 v_shl_i_i161_6_4 8;
vpc v_conv7_i_i162_6_4@uint8 v_conv7_i_i162_6_4@uint32;
(*   %conv.i.i150.7.4 = zext i8 %conv5.i.i159.6.4 to i32 *)
cast v_conv_i_i150_7_4@uint32 v_conv5_i_i159_6_4@uint8;
(*   %and.i.i151.7.4 = and i32 %conv.i.i150.7.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i151_7_4 v_conv_i_i150_7_4 (0x1)@uint32;
(*   %conv1.i.i152.7.4 = zext i8 %conv7.i.i162.6.4 to i32 *)
cast v_conv1_i_i152_7_4@uint32 v_conv7_i_i162_6_4@uint8;
(*   %mul.i.i153.7.4 = mul nsw i32 %and.i.i151.7.4, %conv1.i.i152.7.4 *)
mul v_mul_i_i153_7_4 v_and_i_i151_7_4 v_conv1_i_i152_7_4;
(*   %conv2.i.i154.7.4 = zext i8 %conv3.i.i156.6.4 to i32 *)
cast v_conv2_i_i154_7_4@uint32 v_conv3_i_i156_6_4@uint8;
(*   %xor.i.i155.7.4 = xor i32 %conv2.i.i154.7.4, %mul.i.i153.7.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i155_7_4 v_conv2_i_i154_7_4 v_mul_i_i153_7_4;
(*   %conv3.i.i156.7.4 = trunc i32 %xor.i.i155.7.4 to i8 *)
split tmp_v_xor_i_i155_7_4 v_conv3_i_i156_7_4 v_xor_i_i155_7_4 8;
vpc v_conv3_i_i156_7_4@uint8 v_conv3_i_i156_7_4@uint32;
(*   %arrayidx6.i166.4 = getelementptr inbounds i8, i8* %add.ptr3, i64 4 *)
(*   store i8 %conv3.i.i156.7.4, i8* %arrayidx6.i166.4, align 1 *)
mov cc_14 v_conv3_i_i156_7_4;
(*   %add.ptr8 = getelementptr inbounds i8, i8* %arraydecay4, i64 15 *)
(*   %arrayidx.i202 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %20 = load i8, i8* %arrayidx.i202, align 1 *)
mov v20 a_1;
(*   %21 = load i8, i8* %b, align 1 *)
mov v21 b_0;
(*   %conv.i.i210 = zext i8 %21 to i32 *)
cast v_conv_i_i210@uint32 v21@uint8;
(*   %and.i.i211 = and i32 %conv.i.i210, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i211 v_conv_i_i210 (0x1)@uint32;
(*   %conv1.i.i212 = zext i8 %20 to i32 *)
cast v_conv1_i_i212@uint32 v20@uint8;
(*   %mul.i.i213 = mul nsw i32 %and.i.i211, %conv1.i.i212 *)
mul v_mul_i_i213 v_and_i_i211 v_conv1_i_i212;
(*   %conv3.i.i216 = trunc i32 %mul.i.i213 to i8 *)
split tmp_v_mul_i_i213 v_conv3_i_i216 v_mul_i_i213 8;
vpc v_conv3_i_i216@uint8 v_conv3_i_i216@uint32;
(*   %conv4.i.i217 = zext i8 %21 to i32 *)
cast v_conv4_i_i217@uint32 v21@uint8;
(*   %shr.i.i218 = ashr i32 %conv4.i.i217, 1 *)
(* You may need to modify here *)
split v_shr_i_i218 tmp_to_be_used v_conv4_i_i217 1;
(*   %conv5.i.i219 = trunc i32 %shr.i.i218 to i8 *)
split tmp_v_shr_i_i218 v_conv5_i_i219 v_shr_i_i218 8;
vpc v_conv5_i_i219@uint8 v_conv5_i_i219@uint32;
(*   %conv6.i.i220 = zext i8 %20 to i32 *)
cast v_conv6_i_i220@uint32 v20@uint8;
(*   %shl.i.i221 = shl i32 %conv6.i.i220, 1 *)
shls discard_70 v_shl_i_i221 v_conv6_i_i220 1;
(*   %conv7.i.i222 = trunc i32 %shl.i.i221 to i8 *)
split tmp_v_shl_i_i221 v_conv7_i_i222 v_shl_i_i221 8;
vpc v_conv7_i_i222@uint8 v_conv7_i_i222@uint32;
(*   %conv.i.i210.1 = zext i8 %conv5.i.i219 to i32 *)
cast v_conv_i_i210_1@uint32 v_conv5_i_i219@uint8;
(*   %and.i.i211.1 = and i32 %conv.i.i210.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i211_1 v_conv_i_i210_1 (0x1)@uint32;
(*   %conv1.i.i212.1 = zext i8 %conv7.i.i222 to i32 *)
cast v_conv1_i_i212_1@uint32 v_conv7_i_i222@uint8;
(*   %mul.i.i213.1 = mul nsw i32 %and.i.i211.1, %conv1.i.i212.1 *)
mul v_mul_i_i213_1 v_and_i_i211_1 v_conv1_i_i212_1;
(*   %conv2.i.i214.1 = zext i8 %conv3.i.i216 to i32 *)
cast v_conv2_i_i214_1@uint32 v_conv3_i_i216@uint8;
(*   %xor.i.i215.1 = xor i32 %conv2.i.i214.1, %mul.i.i213.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i215_1 v_conv2_i_i214_1 v_mul_i_i213_1;
(*   %conv3.i.i216.1 = trunc i32 %xor.i.i215.1 to i8 *)
split tmp_v_xor_i_i215_1 v_conv3_i_i216_1 v_xor_i_i215_1 8;
vpc v_conv3_i_i216_1@uint8 v_conv3_i_i216_1@uint32;
(*   %conv4.i.i217.1 = zext i8 %conv5.i.i219 to i32 *)
cast v_conv4_i_i217_1@uint32 v_conv5_i_i219@uint8;
(*   %shr.i.i218.1 = ashr i32 %conv4.i.i217.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i218_1 tmp_to_be_used v_conv4_i_i217_1 1;
(*   %conv5.i.i219.1 = trunc i32 %shr.i.i218.1 to i8 *)
split tmp_v_shr_i_i218_1 v_conv5_i_i219_1 v_shr_i_i218_1 8;
vpc v_conv5_i_i219_1@uint8 v_conv5_i_i219_1@uint32;
(*   %conv6.i.i220.1 = zext i8 %conv7.i.i222 to i32 *)
cast v_conv6_i_i220_1@uint32 v_conv7_i_i222@uint8;
(*   %shl.i.i221.1 = shl i32 %conv6.i.i220.1, 1 *)
shls discard_71 v_shl_i_i221_1 v_conv6_i_i220_1 1;
(*   %conv7.i.i222.1 = trunc i32 %shl.i.i221.1 to i8 *)
split tmp_v_shl_i_i221_1 v_conv7_i_i222_1 v_shl_i_i221_1 8;
vpc v_conv7_i_i222_1@uint8 v_conv7_i_i222_1@uint32;
(*   %conv.i.i210.2 = zext i8 %conv5.i.i219.1 to i32 *)
cast v_conv_i_i210_2@uint32 v_conv5_i_i219_1@uint8;
(*   %and.i.i211.2 = and i32 %conv.i.i210.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i211_2 v_conv_i_i210_2 (0x1)@uint32;
(*   %conv1.i.i212.2 = zext i8 %conv7.i.i222.1 to i32 *)
cast v_conv1_i_i212_2@uint32 v_conv7_i_i222_1@uint8;
(*   %mul.i.i213.2 = mul nsw i32 %and.i.i211.2, %conv1.i.i212.2 *)
mul v_mul_i_i213_2 v_and_i_i211_2 v_conv1_i_i212_2;
(*   %conv2.i.i214.2 = zext i8 %conv3.i.i216.1 to i32 *)
cast v_conv2_i_i214_2@uint32 v_conv3_i_i216_1@uint8;
(*   %xor.i.i215.2 = xor i32 %conv2.i.i214.2, %mul.i.i213.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i215_2 v_conv2_i_i214_2 v_mul_i_i213_2;
(*   %conv3.i.i216.2 = trunc i32 %xor.i.i215.2 to i8 *)
split tmp_v_xor_i_i215_2 v_conv3_i_i216_2 v_xor_i_i215_2 8;
vpc v_conv3_i_i216_2@uint8 v_conv3_i_i216_2@uint32;
(*   %conv4.i.i217.2 = zext i8 %conv5.i.i219.1 to i32 *)
cast v_conv4_i_i217_2@uint32 v_conv5_i_i219_1@uint8;
(*   %shr.i.i218.2 = ashr i32 %conv4.i.i217.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i218_2 tmp_to_be_used v_conv4_i_i217_2 1;
(*   %conv5.i.i219.2 = trunc i32 %shr.i.i218.2 to i8 *)
split tmp_v_shr_i_i218_2 v_conv5_i_i219_2 v_shr_i_i218_2 8;
vpc v_conv5_i_i219_2@uint8 v_conv5_i_i219_2@uint32;
(*   %conv6.i.i220.2 = zext i8 %conv7.i.i222.1 to i32 *)
cast v_conv6_i_i220_2@uint32 v_conv7_i_i222_1@uint8;
(*   %shl.i.i221.2 = shl i32 %conv6.i.i220.2, 1 *)
shls discard_72 v_shl_i_i221_2 v_conv6_i_i220_2 1;
(*   %conv7.i.i222.2 = trunc i32 %shl.i.i221.2 to i8 *)
split tmp_v_shl_i_i221_2 v_conv7_i_i222_2 v_shl_i_i221_2 8;
vpc v_conv7_i_i222_2@uint8 v_conv7_i_i222_2@uint32;
(*   %conv.i.i210.3 = zext i8 %conv5.i.i219.2 to i32 *)
cast v_conv_i_i210_3@uint32 v_conv5_i_i219_2@uint8;
(*   %and.i.i211.3 = and i32 %conv.i.i210.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i211_3 v_conv_i_i210_3 (0x1)@uint32;
(*   %conv1.i.i212.3 = zext i8 %conv7.i.i222.2 to i32 *)
cast v_conv1_i_i212_3@uint32 v_conv7_i_i222_2@uint8;
(*   %mul.i.i213.3 = mul nsw i32 %and.i.i211.3, %conv1.i.i212.3 *)
mul v_mul_i_i213_3 v_and_i_i211_3 v_conv1_i_i212_3;
(*   %conv2.i.i214.3 = zext i8 %conv3.i.i216.2 to i32 *)
cast v_conv2_i_i214_3@uint32 v_conv3_i_i216_2@uint8;
(*   %xor.i.i215.3 = xor i32 %conv2.i.i214.3, %mul.i.i213.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i215_3 v_conv2_i_i214_3 v_mul_i_i213_3;
(*   %conv3.i.i216.3 = trunc i32 %xor.i.i215.3 to i8 *)
split tmp_v_xor_i_i215_3 v_conv3_i_i216_3 v_xor_i_i215_3 8;
vpc v_conv3_i_i216_3@uint8 v_conv3_i_i216_3@uint32;
(*   %conv4.i.i217.3 = zext i8 %conv5.i.i219.2 to i32 *)
cast v_conv4_i_i217_3@uint32 v_conv5_i_i219_2@uint8;
(*   %shr.i.i218.3 = ashr i32 %conv4.i.i217.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i218_3 tmp_to_be_used v_conv4_i_i217_3 1;
(*   %conv5.i.i219.3 = trunc i32 %shr.i.i218.3 to i8 *)
split tmp_v_shr_i_i218_3 v_conv5_i_i219_3 v_shr_i_i218_3 8;
vpc v_conv5_i_i219_3@uint8 v_conv5_i_i219_3@uint32;
(*   %conv6.i.i220.3 = zext i8 %conv7.i.i222.2 to i32 *)
cast v_conv6_i_i220_3@uint32 v_conv7_i_i222_2@uint8;
(*   %shl.i.i221.3 = shl i32 %conv6.i.i220.3, 1 *)
shls discard_73 v_shl_i_i221_3 v_conv6_i_i220_3 1;
(*   %conv7.i.i222.3 = trunc i32 %shl.i.i221.3 to i8 *)
split tmp_v_shl_i_i221_3 v_conv7_i_i222_3 v_shl_i_i221_3 8;
vpc v_conv7_i_i222_3@uint8 v_conv7_i_i222_3@uint32;
(*   %conv.i.i210.4 = zext i8 %conv5.i.i219.3 to i32 *)
cast v_conv_i_i210_4@uint32 v_conv5_i_i219_3@uint8;
(*   %and.i.i211.4 = and i32 %conv.i.i210.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i211_4 v_conv_i_i210_4 (0x1)@uint32;
(*   %conv1.i.i212.4 = zext i8 %conv7.i.i222.3 to i32 *)
cast v_conv1_i_i212_4@uint32 v_conv7_i_i222_3@uint8;
(*   %mul.i.i213.4 = mul nsw i32 %and.i.i211.4, %conv1.i.i212.4 *)
mul v_mul_i_i213_4 v_and_i_i211_4 v_conv1_i_i212_4;
(*   %conv2.i.i214.4 = zext i8 %conv3.i.i216.3 to i32 *)
cast v_conv2_i_i214_4@uint32 v_conv3_i_i216_3@uint8;
(*   %xor.i.i215.4 = xor i32 %conv2.i.i214.4, %mul.i.i213.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i215_4 v_conv2_i_i214_4 v_mul_i_i213_4;
(*   %conv3.i.i216.4 = trunc i32 %xor.i.i215.4 to i8 *)
split tmp_v_xor_i_i215_4 v_conv3_i_i216_4 v_xor_i_i215_4 8;
vpc v_conv3_i_i216_4@uint8 v_conv3_i_i216_4@uint32;
(*   %conv4.i.i217.4 = zext i8 %conv5.i.i219.3 to i32 *)
cast v_conv4_i_i217_4@uint32 v_conv5_i_i219_3@uint8;
(*   %shr.i.i218.4 = ashr i32 %conv4.i.i217.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i218_4 tmp_to_be_used v_conv4_i_i217_4 1;
(*   %conv5.i.i219.4 = trunc i32 %shr.i.i218.4 to i8 *)
split tmp_v_shr_i_i218_4 v_conv5_i_i219_4 v_shr_i_i218_4 8;
vpc v_conv5_i_i219_4@uint8 v_conv5_i_i219_4@uint32;
(*   %conv6.i.i220.4 = zext i8 %conv7.i.i222.3 to i32 *)
cast v_conv6_i_i220_4@uint32 v_conv7_i_i222_3@uint8;
(*   %shl.i.i221.4 = shl i32 %conv6.i.i220.4, 1 *)
shls discard_74 v_shl_i_i221_4 v_conv6_i_i220_4 1;
(*   %conv7.i.i222.4 = trunc i32 %shl.i.i221.4 to i8 *)
split tmp_v_shl_i_i221_4 v_conv7_i_i222_4 v_shl_i_i221_4 8;
vpc v_conv7_i_i222_4@uint8 v_conv7_i_i222_4@uint32;
(*   %conv.i.i210.5 = zext i8 %conv5.i.i219.4 to i32 *)
cast v_conv_i_i210_5@uint32 v_conv5_i_i219_4@uint8;
(*   %and.i.i211.5 = and i32 %conv.i.i210.5, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i211_5 v_conv_i_i210_5 (0x1)@uint32;
(*   %conv1.i.i212.5 = zext i8 %conv7.i.i222.4 to i32 *)
cast v_conv1_i_i212_5@uint32 v_conv7_i_i222_4@uint8;
(*   %mul.i.i213.5 = mul nsw i32 %and.i.i211.5, %conv1.i.i212.5 *)
mul v_mul_i_i213_5 v_and_i_i211_5 v_conv1_i_i212_5;
(*   %conv2.i.i214.5 = zext i8 %conv3.i.i216.4 to i32 *)
cast v_conv2_i_i214_5@uint32 v_conv3_i_i216_4@uint8;
(*   %xor.i.i215.5 = xor i32 %conv2.i.i214.5, %mul.i.i213.5 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i215_5 v_conv2_i_i214_5 v_mul_i_i213_5;
(*   %conv3.i.i216.5 = trunc i32 %xor.i.i215.5 to i8 *)
split tmp_v_xor_i_i215_5 v_conv3_i_i216_5 v_xor_i_i215_5 8;
vpc v_conv3_i_i216_5@uint8 v_conv3_i_i216_5@uint32;
(*   %conv4.i.i217.5 = zext i8 %conv5.i.i219.4 to i32 *)
cast v_conv4_i_i217_5@uint32 v_conv5_i_i219_4@uint8;
(*   %shr.i.i218.5 = ashr i32 %conv4.i.i217.5, 1 *)
(* You may need to modify here *)
split v_shr_i_i218_5 tmp_to_be_used v_conv4_i_i217_5 1;
(*   %conv5.i.i219.5 = trunc i32 %shr.i.i218.5 to i8 *)
split tmp_v_shr_i_i218_5 v_conv5_i_i219_5 v_shr_i_i218_5 8;
vpc v_conv5_i_i219_5@uint8 v_conv5_i_i219_5@uint32;
(*   %conv6.i.i220.5 = zext i8 %conv7.i.i222.4 to i32 *)
cast v_conv6_i_i220_5@uint32 v_conv7_i_i222_4@uint8;
(*   %shl.i.i221.5 = shl i32 %conv6.i.i220.5, 1 *)
shls discard_75 v_shl_i_i221_5 v_conv6_i_i220_5 1;
(*   %conv7.i.i222.5 = trunc i32 %shl.i.i221.5 to i8 *)
split tmp_v_shl_i_i221_5 v_conv7_i_i222_5 v_shl_i_i221_5 8;
vpc v_conv7_i_i222_5@uint8 v_conv7_i_i222_5@uint32;
(*   %conv.i.i210.6 = zext i8 %conv5.i.i219.5 to i32 *)
cast v_conv_i_i210_6@uint32 v_conv5_i_i219_5@uint8;
(*   %and.i.i211.6 = and i32 %conv.i.i210.6, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i211_6 v_conv_i_i210_6 (0x1)@uint32;
(*   %conv1.i.i212.6 = zext i8 %conv7.i.i222.5 to i32 *)
cast v_conv1_i_i212_6@uint32 v_conv7_i_i222_5@uint8;
(*   %mul.i.i213.6 = mul nsw i32 %and.i.i211.6, %conv1.i.i212.6 *)
mul v_mul_i_i213_6 v_and_i_i211_6 v_conv1_i_i212_6;
(*   %conv2.i.i214.6 = zext i8 %conv3.i.i216.5 to i32 *)
cast v_conv2_i_i214_6@uint32 v_conv3_i_i216_5@uint8;
(*   %xor.i.i215.6 = xor i32 %conv2.i.i214.6, %mul.i.i213.6 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i215_6 v_conv2_i_i214_6 v_mul_i_i213_6;
(*   %conv3.i.i216.6 = trunc i32 %xor.i.i215.6 to i8 *)
split tmp_v_xor_i_i215_6 v_conv3_i_i216_6 v_xor_i_i215_6 8;
vpc v_conv3_i_i216_6@uint8 v_conv3_i_i216_6@uint32;
(*   %conv4.i.i217.6 = zext i8 %conv5.i.i219.5 to i32 *)
cast v_conv4_i_i217_6@uint32 v_conv5_i_i219_5@uint8;
(*   %shr.i.i218.6 = ashr i32 %conv4.i.i217.6, 1 *)
(* You may need to modify here *)
split v_shr_i_i218_6 tmp_to_be_used v_conv4_i_i217_6 1;
(*   %conv5.i.i219.6 = trunc i32 %shr.i.i218.6 to i8 *)
split tmp_v_shr_i_i218_6 v_conv5_i_i219_6 v_shr_i_i218_6 8;
vpc v_conv5_i_i219_6@uint8 v_conv5_i_i219_6@uint32;
(*   %conv6.i.i220.6 = zext i8 %conv7.i.i222.5 to i32 *)
cast v_conv6_i_i220_6@uint32 v_conv7_i_i222_5@uint8;
(*   %shl.i.i221.6 = shl i32 %conv6.i.i220.6, 1 *)
shls discard_76 v_shl_i_i221_6 v_conv6_i_i220_6 1;
(*   %conv7.i.i222.6 = trunc i32 %shl.i.i221.6 to i8 *)
split tmp_v_shl_i_i221_6 v_conv7_i_i222_6 v_shl_i_i221_6 8;
vpc v_conv7_i_i222_6@uint8 v_conv7_i_i222_6@uint32;
(*   %conv.i.i210.7 = zext i8 %conv5.i.i219.6 to i32 *)
cast v_conv_i_i210_7@uint32 v_conv5_i_i219_6@uint8;
(*   %and.i.i211.7 = and i32 %conv.i.i210.7, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i211_7 v_conv_i_i210_7 (0x1)@uint32;
(*   %conv1.i.i212.7 = zext i8 %conv7.i.i222.6 to i32 *)
cast v_conv1_i_i212_7@uint32 v_conv7_i_i222_6@uint8;
(*   %mul.i.i213.7 = mul nsw i32 %and.i.i211.7, %conv1.i.i212.7 *)
mul v_mul_i_i213_7 v_and_i_i211_7 v_conv1_i_i212_7;
(*   %conv2.i.i214.7 = zext i8 %conv3.i.i216.6 to i32 *)
cast v_conv2_i_i214_7@uint32 v_conv3_i_i216_6@uint8;
(*   %xor.i.i215.7 = xor i32 %conv2.i.i214.7, %mul.i.i213.7 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i215_7 v_conv2_i_i214_7 v_mul_i_i213_7;
(*   %conv3.i.i216.7 = trunc i32 %xor.i.i215.7 to i8 *)
split tmp_v_xor_i_i215_7 v_conv3_i_i216_7 v_xor_i_i215_7 8;
vpc v_conv3_i_i216_7@uint8 v_conv3_i_i216_7@uint32;
(*   store i8 %conv3.i.i216.7, i8* %add.ptr8, align 1 *)
mov cc_15 v_conv3_i_i216_7;
(*   %arrayidx.i202.1 = getelementptr inbounds i8, i8* %a, i64 2 *)
(*   %22 = load i8, i8* %arrayidx.i202.1, align 1 *)
mov v22 a_2;
(*   %arrayidx4.i206.1 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %23 = load i8, i8* %arrayidx4.i206.1, align 1 *)
mov v23 b_1;
(*   %conv.i.i210.1304 = zext i8 %23 to i32 *)
cast v_conv_i_i210_1304@uint32 v23@uint8;
(*   %and.i.i211.1305 = and i32 %conv.i.i210.1304, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i211_1305 v_conv_i_i210_1304 (0x1)@uint32;
(*   %conv1.i.i212.1306 = zext i8 %22 to i32 *)
cast v_conv1_i_i212_1306@uint32 v22@uint8;
(*   %mul.i.i213.1307 = mul nsw i32 %and.i.i211.1305, %conv1.i.i212.1306 *)
mul v_mul_i_i213_1307 v_and_i_i211_1305 v_conv1_i_i212_1306;
(*   %conv3.i.i216.1308 = trunc i32 %mul.i.i213.1307 to i8 *)
split tmp_v_mul_i_i213_1307 v_conv3_i_i216_1308 v_mul_i_i213_1307 8;
vpc v_conv3_i_i216_1308@uint8 v_conv3_i_i216_1308@uint32;
(*   %conv4.i.i217.1309 = zext i8 %23 to i32 *)
cast v_conv4_i_i217_1309@uint32 v23@uint8;
(*   %shr.i.i218.1310 = ashr i32 %conv4.i.i217.1309, 1 *)
(* You may need to modify here *)
split v_shr_i_i218_1310 tmp_to_be_used v_conv4_i_i217_1309 1;
(*   %conv5.i.i219.1311 = trunc i32 %shr.i.i218.1310 to i8 *)
split tmp_v_shr_i_i218_1310 v_conv5_i_i219_1311 v_shr_i_i218_1310 8;
vpc v_conv5_i_i219_1311@uint8 v_conv5_i_i219_1311@uint32;
(*   %conv6.i.i220.1312 = zext i8 %22 to i32 *)
cast v_conv6_i_i220_1312@uint32 v22@uint8;
(*   %shl.i.i221.1313 = shl i32 %conv6.i.i220.1312, 1 *)
shls discard_77 v_shl_i_i221_1313 v_conv6_i_i220_1312 1;
(*   %conv7.i.i222.1314 = trunc i32 %shl.i.i221.1313 to i8 *)
split tmp_v_shl_i_i221_1313 v_conv7_i_i222_1314 v_shl_i_i221_1313 8;
vpc v_conv7_i_i222_1314@uint8 v_conv7_i_i222_1314@uint32;
(*   %conv.i.i210.1.1 = zext i8 %conv5.i.i219.1311 to i32 *)
cast v_conv_i_i210_1_1@uint32 v_conv5_i_i219_1311@uint8;
(*   %and.i.i211.1.1 = and i32 %conv.i.i210.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i211_1_1 v_conv_i_i210_1_1 (0x1)@uint32;
(*   %conv1.i.i212.1.1 = zext i8 %conv7.i.i222.1314 to i32 *)
cast v_conv1_i_i212_1_1@uint32 v_conv7_i_i222_1314@uint8;
(*   %mul.i.i213.1.1 = mul nsw i32 %and.i.i211.1.1, %conv1.i.i212.1.1 *)
mul v_mul_i_i213_1_1 v_and_i_i211_1_1 v_conv1_i_i212_1_1;
(*   %conv2.i.i214.1.1 = zext i8 %conv3.i.i216.1308 to i32 *)
cast v_conv2_i_i214_1_1@uint32 v_conv3_i_i216_1308@uint8;
(*   %xor.i.i215.1.1 = xor i32 %conv2.i.i214.1.1, %mul.i.i213.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i215_1_1 v_conv2_i_i214_1_1 v_mul_i_i213_1_1;
(*   %conv3.i.i216.1.1 = trunc i32 %xor.i.i215.1.1 to i8 *)
split tmp_v_xor_i_i215_1_1 v_conv3_i_i216_1_1 v_xor_i_i215_1_1 8;
vpc v_conv3_i_i216_1_1@uint8 v_conv3_i_i216_1_1@uint32;
(*   %conv4.i.i217.1.1 = zext i8 %conv5.i.i219.1311 to i32 *)
cast v_conv4_i_i217_1_1@uint32 v_conv5_i_i219_1311@uint8;
(*   %shr.i.i218.1.1 = ashr i32 %conv4.i.i217.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i218_1_1 tmp_to_be_used v_conv4_i_i217_1_1 1;
(*   %conv5.i.i219.1.1 = trunc i32 %shr.i.i218.1.1 to i8 *)
split tmp_v_shr_i_i218_1_1 v_conv5_i_i219_1_1 v_shr_i_i218_1_1 8;
vpc v_conv5_i_i219_1_1@uint8 v_conv5_i_i219_1_1@uint32;
(*   %conv6.i.i220.1.1 = zext i8 %conv7.i.i222.1314 to i32 *)
cast v_conv6_i_i220_1_1@uint32 v_conv7_i_i222_1314@uint8;
(*   %shl.i.i221.1.1 = shl i32 %conv6.i.i220.1.1, 1 *)
shls discard_78 v_shl_i_i221_1_1 v_conv6_i_i220_1_1 1;
(*   %conv7.i.i222.1.1 = trunc i32 %shl.i.i221.1.1 to i8 *)
split tmp_v_shl_i_i221_1_1 v_conv7_i_i222_1_1 v_shl_i_i221_1_1 8;
vpc v_conv7_i_i222_1_1@uint8 v_conv7_i_i222_1_1@uint32;
(*   %conv.i.i210.2.1 = zext i8 %conv5.i.i219.1.1 to i32 *)
cast v_conv_i_i210_2_1@uint32 v_conv5_i_i219_1_1@uint8;
(*   %and.i.i211.2.1 = and i32 %conv.i.i210.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i211_2_1 v_conv_i_i210_2_1 (0x1)@uint32;
(*   %conv1.i.i212.2.1 = zext i8 %conv7.i.i222.1.1 to i32 *)
cast v_conv1_i_i212_2_1@uint32 v_conv7_i_i222_1_1@uint8;
(*   %mul.i.i213.2.1 = mul nsw i32 %and.i.i211.2.1, %conv1.i.i212.2.1 *)
mul v_mul_i_i213_2_1 v_and_i_i211_2_1 v_conv1_i_i212_2_1;
(*   %conv2.i.i214.2.1 = zext i8 %conv3.i.i216.1.1 to i32 *)
cast v_conv2_i_i214_2_1@uint32 v_conv3_i_i216_1_1@uint8;
(*   %xor.i.i215.2.1 = xor i32 %conv2.i.i214.2.1, %mul.i.i213.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i215_2_1 v_conv2_i_i214_2_1 v_mul_i_i213_2_1;
(*   %conv3.i.i216.2.1 = trunc i32 %xor.i.i215.2.1 to i8 *)
split tmp_v_xor_i_i215_2_1 v_conv3_i_i216_2_1 v_xor_i_i215_2_1 8;
vpc v_conv3_i_i216_2_1@uint8 v_conv3_i_i216_2_1@uint32;
(*   %conv4.i.i217.2.1 = zext i8 %conv5.i.i219.1.1 to i32 *)
cast v_conv4_i_i217_2_1@uint32 v_conv5_i_i219_1_1@uint8;
(*   %shr.i.i218.2.1 = ashr i32 %conv4.i.i217.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i218_2_1 tmp_to_be_used v_conv4_i_i217_2_1 1;
(*   %conv5.i.i219.2.1 = trunc i32 %shr.i.i218.2.1 to i8 *)
split tmp_v_shr_i_i218_2_1 v_conv5_i_i219_2_1 v_shr_i_i218_2_1 8;
vpc v_conv5_i_i219_2_1@uint8 v_conv5_i_i219_2_1@uint32;
(*   %conv6.i.i220.2.1 = zext i8 %conv7.i.i222.1.1 to i32 *)
cast v_conv6_i_i220_2_1@uint32 v_conv7_i_i222_1_1@uint8;
(*   %shl.i.i221.2.1 = shl i32 %conv6.i.i220.2.1, 1 *)
shls discard_79 v_shl_i_i221_2_1 v_conv6_i_i220_2_1 1;
(*   %conv7.i.i222.2.1 = trunc i32 %shl.i.i221.2.1 to i8 *)
split tmp_v_shl_i_i221_2_1 v_conv7_i_i222_2_1 v_shl_i_i221_2_1 8;
vpc v_conv7_i_i222_2_1@uint8 v_conv7_i_i222_2_1@uint32;
(*   %conv.i.i210.3.1 = zext i8 %conv5.i.i219.2.1 to i32 *)
cast v_conv_i_i210_3_1@uint32 v_conv5_i_i219_2_1@uint8;
(*   %and.i.i211.3.1 = and i32 %conv.i.i210.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i211_3_1 v_conv_i_i210_3_1 (0x1)@uint32;
(*   %conv1.i.i212.3.1 = zext i8 %conv7.i.i222.2.1 to i32 *)
cast v_conv1_i_i212_3_1@uint32 v_conv7_i_i222_2_1@uint8;
(*   %mul.i.i213.3.1 = mul nsw i32 %and.i.i211.3.1, %conv1.i.i212.3.1 *)
mul v_mul_i_i213_3_1 v_and_i_i211_3_1 v_conv1_i_i212_3_1;
(*   %conv2.i.i214.3.1 = zext i8 %conv3.i.i216.2.1 to i32 *)
cast v_conv2_i_i214_3_1@uint32 v_conv3_i_i216_2_1@uint8;
(*   %xor.i.i215.3.1 = xor i32 %conv2.i.i214.3.1, %mul.i.i213.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i215_3_1 v_conv2_i_i214_3_1 v_mul_i_i213_3_1;
(*   %conv3.i.i216.3.1 = trunc i32 %xor.i.i215.3.1 to i8 *)
split tmp_v_xor_i_i215_3_1 v_conv3_i_i216_3_1 v_xor_i_i215_3_1 8;
vpc v_conv3_i_i216_3_1@uint8 v_conv3_i_i216_3_1@uint32;
(*   %conv4.i.i217.3.1 = zext i8 %conv5.i.i219.2.1 to i32 *)
cast v_conv4_i_i217_3_1@uint32 v_conv5_i_i219_2_1@uint8;
(*   %shr.i.i218.3.1 = ashr i32 %conv4.i.i217.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i218_3_1 tmp_to_be_used v_conv4_i_i217_3_1 1;
(*   %conv5.i.i219.3.1 = trunc i32 %shr.i.i218.3.1 to i8 *)
split tmp_v_shr_i_i218_3_1 v_conv5_i_i219_3_1 v_shr_i_i218_3_1 8;
vpc v_conv5_i_i219_3_1@uint8 v_conv5_i_i219_3_1@uint32;
(*   %conv6.i.i220.3.1 = zext i8 %conv7.i.i222.2.1 to i32 *)
cast v_conv6_i_i220_3_1@uint32 v_conv7_i_i222_2_1@uint8;
(*   %shl.i.i221.3.1 = shl i32 %conv6.i.i220.3.1, 1 *)
shls discard_80 v_shl_i_i221_3_1 v_conv6_i_i220_3_1 1;
(*   %conv7.i.i222.3.1 = trunc i32 %shl.i.i221.3.1 to i8 *)
split tmp_v_shl_i_i221_3_1 v_conv7_i_i222_3_1 v_shl_i_i221_3_1 8;
vpc v_conv7_i_i222_3_1@uint8 v_conv7_i_i222_3_1@uint32;
(*   %conv.i.i210.4.1 = zext i8 %conv5.i.i219.3.1 to i32 *)
cast v_conv_i_i210_4_1@uint32 v_conv5_i_i219_3_1@uint8;
(*   %and.i.i211.4.1 = and i32 %conv.i.i210.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i211_4_1 v_conv_i_i210_4_1 (0x1)@uint32;
(*   %conv1.i.i212.4.1 = zext i8 %conv7.i.i222.3.1 to i32 *)
cast v_conv1_i_i212_4_1@uint32 v_conv7_i_i222_3_1@uint8;
(*   %mul.i.i213.4.1 = mul nsw i32 %and.i.i211.4.1, %conv1.i.i212.4.1 *)
mul v_mul_i_i213_4_1 v_and_i_i211_4_1 v_conv1_i_i212_4_1;
(*   %conv2.i.i214.4.1 = zext i8 %conv3.i.i216.3.1 to i32 *)
cast v_conv2_i_i214_4_1@uint32 v_conv3_i_i216_3_1@uint8;
(*   %xor.i.i215.4.1 = xor i32 %conv2.i.i214.4.1, %mul.i.i213.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i215_4_1 v_conv2_i_i214_4_1 v_mul_i_i213_4_1;
(*   %conv3.i.i216.4.1 = trunc i32 %xor.i.i215.4.1 to i8 *)
split tmp_v_xor_i_i215_4_1 v_conv3_i_i216_4_1 v_xor_i_i215_4_1 8;
vpc v_conv3_i_i216_4_1@uint8 v_conv3_i_i216_4_1@uint32;
(*   %conv4.i.i217.4.1 = zext i8 %conv5.i.i219.3.1 to i32 *)
cast v_conv4_i_i217_4_1@uint32 v_conv5_i_i219_3_1@uint8;
(*   %shr.i.i218.4.1 = ashr i32 %conv4.i.i217.4.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i218_4_1 tmp_to_be_used v_conv4_i_i217_4_1 1;
(*   %conv5.i.i219.4.1 = trunc i32 %shr.i.i218.4.1 to i8 *)
split tmp_v_shr_i_i218_4_1 v_conv5_i_i219_4_1 v_shr_i_i218_4_1 8;
vpc v_conv5_i_i219_4_1@uint8 v_conv5_i_i219_4_1@uint32;
(*   %conv6.i.i220.4.1 = zext i8 %conv7.i.i222.3.1 to i32 *)
cast v_conv6_i_i220_4_1@uint32 v_conv7_i_i222_3_1@uint8;
(*   %shl.i.i221.4.1 = shl i32 %conv6.i.i220.4.1, 1 *)
shls discard_81 v_shl_i_i221_4_1 v_conv6_i_i220_4_1 1;
(*   %conv7.i.i222.4.1 = trunc i32 %shl.i.i221.4.1 to i8 *)
split tmp_v_shl_i_i221_4_1 v_conv7_i_i222_4_1 v_shl_i_i221_4_1 8;
vpc v_conv7_i_i222_4_1@uint8 v_conv7_i_i222_4_1@uint32;
(*   %conv.i.i210.5.1 = zext i8 %conv5.i.i219.4.1 to i32 *)
cast v_conv_i_i210_5_1@uint32 v_conv5_i_i219_4_1@uint8;
(*   %and.i.i211.5.1 = and i32 %conv.i.i210.5.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i211_5_1 v_conv_i_i210_5_1 (0x1)@uint32;
(*   %conv1.i.i212.5.1 = zext i8 %conv7.i.i222.4.1 to i32 *)
cast v_conv1_i_i212_5_1@uint32 v_conv7_i_i222_4_1@uint8;
(*   %mul.i.i213.5.1 = mul nsw i32 %and.i.i211.5.1, %conv1.i.i212.5.1 *)
mul v_mul_i_i213_5_1 v_and_i_i211_5_1 v_conv1_i_i212_5_1;
(*   %conv2.i.i214.5.1 = zext i8 %conv3.i.i216.4.1 to i32 *)
cast v_conv2_i_i214_5_1@uint32 v_conv3_i_i216_4_1@uint8;
(*   %xor.i.i215.5.1 = xor i32 %conv2.i.i214.5.1, %mul.i.i213.5.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i215_5_1 v_conv2_i_i214_5_1 v_mul_i_i213_5_1;
(*   %conv3.i.i216.5.1 = trunc i32 %xor.i.i215.5.1 to i8 *)
split tmp_v_xor_i_i215_5_1 v_conv3_i_i216_5_1 v_xor_i_i215_5_1 8;
vpc v_conv3_i_i216_5_1@uint8 v_conv3_i_i216_5_1@uint32;
(*   %conv4.i.i217.5.1 = zext i8 %conv5.i.i219.4.1 to i32 *)
cast v_conv4_i_i217_5_1@uint32 v_conv5_i_i219_4_1@uint8;
(*   %shr.i.i218.5.1 = ashr i32 %conv4.i.i217.5.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i218_5_1 tmp_to_be_used v_conv4_i_i217_5_1 1;
(*   %conv5.i.i219.5.1 = trunc i32 %shr.i.i218.5.1 to i8 *)
split tmp_v_shr_i_i218_5_1 v_conv5_i_i219_5_1 v_shr_i_i218_5_1 8;
vpc v_conv5_i_i219_5_1@uint8 v_conv5_i_i219_5_1@uint32;
(*   %conv6.i.i220.5.1 = zext i8 %conv7.i.i222.4.1 to i32 *)
cast v_conv6_i_i220_5_1@uint32 v_conv7_i_i222_4_1@uint8;
(*   %shl.i.i221.5.1 = shl i32 %conv6.i.i220.5.1, 1 *)
shls discard_82 v_shl_i_i221_5_1 v_conv6_i_i220_5_1 1;
(*   %conv7.i.i222.5.1 = trunc i32 %shl.i.i221.5.1 to i8 *)
split tmp_v_shl_i_i221_5_1 v_conv7_i_i222_5_1 v_shl_i_i221_5_1 8;
vpc v_conv7_i_i222_5_1@uint8 v_conv7_i_i222_5_1@uint32;
(*   %conv.i.i210.6.1 = zext i8 %conv5.i.i219.5.1 to i32 *)
cast v_conv_i_i210_6_1@uint32 v_conv5_i_i219_5_1@uint8;
(*   %and.i.i211.6.1 = and i32 %conv.i.i210.6.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i211_6_1 v_conv_i_i210_6_1 (0x1)@uint32;
(*   %conv1.i.i212.6.1 = zext i8 %conv7.i.i222.5.1 to i32 *)
cast v_conv1_i_i212_6_1@uint32 v_conv7_i_i222_5_1@uint8;
(*   %mul.i.i213.6.1 = mul nsw i32 %and.i.i211.6.1, %conv1.i.i212.6.1 *)
mul v_mul_i_i213_6_1 v_and_i_i211_6_1 v_conv1_i_i212_6_1;
(*   %conv2.i.i214.6.1 = zext i8 %conv3.i.i216.5.1 to i32 *)
cast v_conv2_i_i214_6_1@uint32 v_conv3_i_i216_5_1@uint8;
(*   %xor.i.i215.6.1 = xor i32 %conv2.i.i214.6.1, %mul.i.i213.6.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i215_6_1 v_conv2_i_i214_6_1 v_mul_i_i213_6_1;
(*   %conv3.i.i216.6.1 = trunc i32 %xor.i.i215.6.1 to i8 *)
split tmp_v_xor_i_i215_6_1 v_conv3_i_i216_6_1 v_xor_i_i215_6_1 8;
vpc v_conv3_i_i216_6_1@uint8 v_conv3_i_i216_6_1@uint32;
(*   %conv4.i.i217.6.1 = zext i8 %conv5.i.i219.5.1 to i32 *)
cast v_conv4_i_i217_6_1@uint32 v_conv5_i_i219_5_1@uint8;
(*   %shr.i.i218.6.1 = ashr i32 %conv4.i.i217.6.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i218_6_1 tmp_to_be_used v_conv4_i_i217_6_1 1;
(*   %conv5.i.i219.6.1 = trunc i32 %shr.i.i218.6.1 to i8 *)
split tmp_v_shr_i_i218_6_1 v_conv5_i_i219_6_1 v_shr_i_i218_6_1 8;
vpc v_conv5_i_i219_6_1@uint8 v_conv5_i_i219_6_1@uint32;
(*   %conv6.i.i220.6.1 = zext i8 %conv7.i.i222.5.1 to i32 *)
cast v_conv6_i_i220_6_1@uint32 v_conv7_i_i222_5_1@uint8;
(*   %shl.i.i221.6.1 = shl i32 %conv6.i.i220.6.1, 1 *)
shls discard_83 v_shl_i_i221_6_1 v_conv6_i_i220_6_1 1;
(*   %conv7.i.i222.6.1 = trunc i32 %shl.i.i221.6.1 to i8 *)
split tmp_v_shl_i_i221_6_1 v_conv7_i_i222_6_1 v_shl_i_i221_6_1 8;
vpc v_conv7_i_i222_6_1@uint8 v_conv7_i_i222_6_1@uint32;
(*   %conv.i.i210.7.1 = zext i8 %conv5.i.i219.6.1 to i32 *)
cast v_conv_i_i210_7_1@uint32 v_conv5_i_i219_6_1@uint8;
(*   %and.i.i211.7.1 = and i32 %conv.i.i210.7.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i211_7_1 v_conv_i_i210_7_1 (0x1)@uint32;
(*   %conv1.i.i212.7.1 = zext i8 %conv7.i.i222.6.1 to i32 *)
cast v_conv1_i_i212_7_1@uint32 v_conv7_i_i222_6_1@uint8;
(*   %mul.i.i213.7.1 = mul nsw i32 %and.i.i211.7.1, %conv1.i.i212.7.1 *)
mul v_mul_i_i213_7_1 v_and_i_i211_7_1 v_conv1_i_i212_7_1;
(*   %conv2.i.i214.7.1 = zext i8 %conv3.i.i216.6.1 to i32 *)
cast v_conv2_i_i214_7_1@uint32 v_conv3_i_i216_6_1@uint8;
(*   %xor.i.i215.7.1 = xor i32 %conv2.i.i214.7.1, %mul.i.i213.7.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i215_7_1 v_conv2_i_i214_7_1 v_mul_i_i213_7_1;
(*   %conv3.i.i216.7.1 = trunc i32 %xor.i.i215.7.1 to i8 *)
split tmp_v_xor_i_i215_7_1 v_conv3_i_i216_7_1 v_xor_i_i215_7_1 8;
vpc v_conv3_i_i216_7_1@uint8 v_conv3_i_i216_7_1@uint32;
(*   %arrayidx6.i226.1 = getelementptr inbounds i8, i8* %add.ptr8, i64 1 *)
(*   store i8 %conv3.i.i216.7.1, i8* %arrayidx6.i226.1, align 1 *)
mov cc_16 v_conv3_i_i216_7_1;
(*   %arrayidx.i202.2 = getelementptr inbounds i8, i8* %a, i64 3 *)
(*   %24 = load i8, i8* %arrayidx.i202.2, align 1 *)
mov v24 a_3;
(*   %arrayidx4.i206.2 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %25 = load i8, i8* %arrayidx4.i206.2, align 1 *)
mov v25 b_2;
(*   %conv.i.i210.2315 = zext i8 %25 to i32 *)
cast v_conv_i_i210_2315@uint32 v25@uint8;
(*   %and.i.i211.2316 = and i32 %conv.i.i210.2315, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i211_2316 v_conv_i_i210_2315 (0x1)@uint32;
(*   %conv1.i.i212.2317 = zext i8 %24 to i32 *)
cast v_conv1_i_i212_2317@uint32 v24@uint8;
(*   %mul.i.i213.2318 = mul nsw i32 %and.i.i211.2316, %conv1.i.i212.2317 *)
mul v_mul_i_i213_2318 v_and_i_i211_2316 v_conv1_i_i212_2317;
(*   %conv3.i.i216.2319 = trunc i32 %mul.i.i213.2318 to i8 *)
split tmp_v_mul_i_i213_2318 v_conv3_i_i216_2319 v_mul_i_i213_2318 8;
vpc v_conv3_i_i216_2319@uint8 v_conv3_i_i216_2319@uint32;
(*   %conv4.i.i217.2320 = zext i8 %25 to i32 *)
cast v_conv4_i_i217_2320@uint32 v25@uint8;
(*   %shr.i.i218.2321 = ashr i32 %conv4.i.i217.2320, 1 *)
(* You may need to modify here *)
split v_shr_i_i218_2321 tmp_to_be_used v_conv4_i_i217_2320 1;
(*   %conv5.i.i219.2322 = trunc i32 %shr.i.i218.2321 to i8 *)
split tmp_v_shr_i_i218_2321 v_conv5_i_i219_2322 v_shr_i_i218_2321 8;
vpc v_conv5_i_i219_2322@uint8 v_conv5_i_i219_2322@uint32;
(*   %conv6.i.i220.2323 = zext i8 %24 to i32 *)
cast v_conv6_i_i220_2323@uint32 v24@uint8;
(*   %shl.i.i221.2324 = shl i32 %conv6.i.i220.2323, 1 *)
shls discard_84 v_shl_i_i221_2324 v_conv6_i_i220_2323 1;
(*   %conv7.i.i222.2325 = trunc i32 %shl.i.i221.2324 to i8 *)
split tmp_v_shl_i_i221_2324 v_conv7_i_i222_2325 v_shl_i_i221_2324 8;
vpc v_conv7_i_i222_2325@uint8 v_conv7_i_i222_2325@uint32;
(*   %conv.i.i210.1.2 = zext i8 %conv5.i.i219.2322 to i32 *)
cast v_conv_i_i210_1_2@uint32 v_conv5_i_i219_2322@uint8;
(*   %and.i.i211.1.2 = and i32 %conv.i.i210.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i211_1_2 v_conv_i_i210_1_2 (0x1)@uint32;
(*   %conv1.i.i212.1.2 = zext i8 %conv7.i.i222.2325 to i32 *)
cast v_conv1_i_i212_1_2@uint32 v_conv7_i_i222_2325@uint8;
(*   %mul.i.i213.1.2 = mul nsw i32 %and.i.i211.1.2, %conv1.i.i212.1.2 *)
mul v_mul_i_i213_1_2 v_and_i_i211_1_2 v_conv1_i_i212_1_2;
(*   %conv2.i.i214.1.2 = zext i8 %conv3.i.i216.2319 to i32 *)
cast v_conv2_i_i214_1_2@uint32 v_conv3_i_i216_2319@uint8;
(*   %xor.i.i215.1.2 = xor i32 %conv2.i.i214.1.2, %mul.i.i213.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i215_1_2 v_conv2_i_i214_1_2 v_mul_i_i213_1_2;
(*   %conv3.i.i216.1.2 = trunc i32 %xor.i.i215.1.2 to i8 *)
split tmp_v_xor_i_i215_1_2 v_conv3_i_i216_1_2 v_xor_i_i215_1_2 8;
vpc v_conv3_i_i216_1_2@uint8 v_conv3_i_i216_1_2@uint32;
(*   %conv4.i.i217.1.2 = zext i8 %conv5.i.i219.2322 to i32 *)
cast v_conv4_i_i217_1_2@uint32 v_conv5_i_i219_2322@uint8;
(*   %shr.i.i218.1.2 = ashr i32 %conv4.i.i217.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i218_1_2 tmp_to_be_used v_conv4_i_i217_1_2 1;
(*   %conv5.i.i219.1.2 = trunc i32 %shr.i.i218.1.2 to i8 *)
split tmp_v_shr_i_i218_1_2 v_conv5_i_i219_1_2 v_shr_i_i218_1_2 8;
vpc v_conv5_i_i219_1_2@uint8 v_conv5_i_i219_1_2@uint32;
(*   %conv6.i.i220.1.2 = zext i8 %conv7.i.i222.2325 to i32 *)
cast v_conv6_i_i220_1_2@uint32 v_conv7_i_i222_2325@uint8;
(*   %shl.i.i221.1.2 = shl i32 %conv6.i.i220.1.2, 1 *)
shls discard_85 v_shl_i_i221_1_2 v_conv6_i_i220_1_2 1;
(*   %conv7.i.i222.1.2 = trunc i32 %shl.i.i221.1.2 to i8 *)
split tmp_v_shl_i_i221_1_2 v_conv7_i_i222_1_2 v_shl_i_i221_1_2 8;
vpc v_conv7_i_i222_1_2@uint8 v_conv7_i_i222_1_2@uint32;
(*   %conv.i.i210.2.2 = zext i8 %conv5.i.i219.1.2 to i32 *)
cast v_conv_i_i210_2_2@uint32 v_conv5_i_i219_1_2@uint8;
(*   %and.i.i211.2.2 = and i32 %conv.i.i210.2.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i211_2_2 v_conv_i_i210_2_2 (0x1)@uint32;
(*   %conv1.i.i212.2.2 = zext i8 %conv7.i.i222.1.2 to i32 *)
cast v_conv1_i_i212_2_2@uint32 v_conv7_i_i222_1_2@uint8;
(*   %mul.i.i213.2.2 = mul nsw i32 %and.i.i211.2.2, %conv1.i.i212.2.2 *)
mul v_mul_i_i213_2_2 v_and_i_i211_2_2 v_conv1_i_i212_2_2;
(*   %conv2.i.i214.2.2 = zext i8 %conv3.i.i216.1.2 to i32 *)
cast v_conv2_i_i214_2_2@uint32 v_conv3_i_i216_1_2@uint8;
(*   %xor.i.i215.2.2 = xor i32 %conv2.i.i214.2.2, %mul.i.i213.2.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i215_2_2 v_conv2_i_i214_2_2 v_mul_i_i213_2_2;
(*   %conv3.i.i216.2.2 = trunc i32 %xor.i.i215.2.2 to i8 *)
split tmp_v_xor_i_i215_2_2 v_conv3_i_i216_2_2 v_xor_i_i215_2_2 8;
vpc v_conv3_i_i216_2_2@uint8 v_conv3_i_i216_2_2@uint32;
(*   %conv4.i.i217.2.2 = zext i8 %conv5.i.i219.1.2 to i32 *)
cast v_conv4_i_i217_2_2@uint32 v_conv5_i_i219_1_2@uint8;
(*   %shr.i.i218.2.2 = ashr i32 %conv4.i.i217.2.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i218_2_2 tmp_to_be_used v_conv4_i_i217_2_2 1;
(*   %conv5.i.i219.2.2 = trunc i32 %shr.i.i218.2.2 to i8 *)
split tmp_v_shr_i_i218_2_2 v_conv5_i_i219_2_2 v_shr_i_i218_2_2 8;
vpc v_conv5_i_i219_2_2@uint8 v_conv5_i_i219_2_2@uint32;
(*   %conv6.i.i220.2.2 = zext i8 %conv7.i.i222.1.2 to i32 *)
cast v_conv6_i_i220_2_2@uint32 v_conv7_i_i222_1_2@uint8;
(*   %shl.i.i221.2.2 = shl i32 %conv6.i.i220.2.2, 1 *)
shls discard_86 v_shl_i_i221_2_2 v_conv6_i_i220_2_2 1;
(*   %conv7.i.i222.2.2 = trunc i32 %shl.i.i221.2.2 to i8 *)
split tmp_v_shl_i_i221_2_2 v_conv7_i_i222_2_2 v_shl_i_i221_2_2 8;
vpc v_conv7_i_i222_2_2@uint8 v_conv7_i_i222_2_2@uint32;
(*   %conv.i.i210.3.2 = zext i8 %conv5.i.i219.2.2 to i32 *)
cast v_conv_i_i210_3_2@uint32 v_conv5_i_i219_2_2@uint8;
(*   %and.i.i211.3.2 = and i32 %conv.i.i210.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i211_3_2 v_conv_i_i210_3_2 (0x1)@uint32;
(*   %conv1.i.i212.3.2 = zext i8 %conv7.i.i222.2.2 to i32 *)
cast v_conv1_i_i212_3_2@uint32 v_conv7_i_i222_2_2@uint8;
(*   %mul.i.i213.3.2 = mul nsw i32 %and.i.i211.3.2, %conv1.i.i212.3.2 *)
mul v_mul_i_i213_3_2 v_and_i_i211_3_2 v_conv1_i_i212_3_2;
(*   %conv2.i.i214.3.2 = zext i8 %conv3.i.i216.2.2 to i32 *)
cast v_conv2_i_i214_3_2@uint32 v_conv3_i_i216_2_2@uint8;
(*   %xor.i.i215.3.2 = xor i32 %conv2.i.i214.3.2, %mul.i.i213.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i215_3_2 v_conv2_i_i214_3_2 v_mul_i_i213_3_2;
(*   %conv3.i.i216.3.2 = trunc i32 %xor.i.i215.3.2 to i8 *)
split tmp_v_xor_i_i215_3_2 v_conv3_i_i216_3_2 v_xor_i_i215_3_2 8;
vpc v_conv3_i_i216_3_2@uint8 v_conv3_i_i216_3_2@uint32;
(*   %conv4.i.i217.3.2 = zext i8 %conv5.i.i219.2.2 to i32 *)
cast v_conv4_i_i217_3_2@uint32 v_conv5_i_i219_2_2@uint8;
(*   %shr.i.i218.3.2 = ashr i32 %conv4.i.i217.3.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i218_3_2 tmp_to_be_used v_conv4_i_i217_3_2 1;
(*   %conv5.i.i219.3.2 = trunc i32 %shr.i.i218.3.2 to i8 *)
split tmp_v_shr_i_i218_3_2 v_conv5_i_i219_3_2 v_shr_i_i218_3_2 8;
vpc v_conv5_i_i219_3_2@uint8 v_conv5_i_i219_3_2@uint32;
(*   %conv6.i.i220.3.2 = zext i8 %conv7.i.i222.2.2 to i32 *)
cast v_conv6_i_i220_3_2@uint32 v_conv7_i_i222_2_2@uint8;
(*   %shl.i.i221.3.2 = shl i32 %conv6.i.i220.3.2, 1 *)
shls discard_87 v_shl_i_i221_3_2 v_conv6_i_i220_3_2 1;
(*   %conv7.i.i222.3.2 = trunc i32 %shl.i.i221.3.2 to i8 *)
split tmp_v_shl_i_i221_3_2 v_conv7_i_i222_3_2 v_shl_i_i221_3_2 8;
vpc v_conv7_i_i222_3_2@uint8 v_conv7_i_i222_3_2@uint32;
(*   %conv.i.i210.4.2 = zext i8 %conv5.i.i219.3.2 to i32 *)
cast v_conv_i_i210_4_2@uint32 v_conv5_i_i219_3_2@uint8;
(*   %and.i.i211.4.2 = and i32 %conv.i.i210.4.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i211_4_2 v_conv_i_i210_4_2 (0x1)@uint32;
(*   %conv1.i.i212.4.2 = zext i8 %conv7.i.i222.3.2 to i32 *)
cast v_conv1_i_i212_4_2@uint32 v_conv7_i_i222_3_2@uint8;
(*   %mul.i.i213.4.2 = mul nsw i32 %and.i.i211.4.2, %conv1.i.i212.4.2 *)
mul v_mul_i_i213_4_2 v_and_i_i211_4_2 v_conv1_i_i212_4_2;
(*   %conv2.i.i214.4.2 = zext i8 %conv3.i.i216.3.2 to i32 *)
cast v_conv2_i_i214_4_2@uint32 v_conv3_i_i216_3_2@uint8;
(*   %xor.i.i215.4.2 = xor i32 %conv2.i.i214.4.2, %mul.i.i213.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i215_4_2 v_conv2_i_i214_4_2 v_mul_i_i213_4_2;
(*   %conv3.i.i216.4.2 = trunc i32 %xor.i.i215.4.2 to i8 *)
split tmp_v_xor_i_i215_4_2 v_conv3_i_i216_4_2 v_xor_i_i215_4_2 8;
vpc v_conv3_i_i216_4_2@uint8 v_conv3_i_i216_4_2@uint32;
(*   %conv4.i.i217.4.2 = zext i8 %conv5.i.i219.3.2 to i32 *)
cast v_conv4_i_i217_4_2@uint32 v_conv5_i_i219_3_2@uint8;
(*   %shr.i.i218.4.2 = ashr i32 %conv4.i.i217.4.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i218_4_2 tmp_to_be_used v_conv4_i_i217_4_2 1;
(*   %conv5.i.i219.4.2 = trunc i32 %shr.i.i218.4.2 to i8 *)
split tmp_v_shr_i_i218_4_2 v_conv5_i_i219_4_2 v_shr_i_i218_4_2 8;
vpc v_conv5_i_i219_4_2@uint8 v_conv5_i_i219_4_2@uint32;
(*   %conv6.i.i220.4.2 = zext i8 %conv7.i.i222.3.2 to i32 *)
cast v_conv6_i_i220_4_2@uint32 v_conv7_i_i222_3_2@uint8;
(*   %shl.i.i221.4.2 = shl i32 %conv6.i.i220.4.2, 1 *)
shls discard_88 v_shl_i_i221_4_2 v_conv6_i_i220_4_2 1;
(*   %conv7.i.i222.4.2 = trunc i32 %shl.i.i221.4.2 to i8 *)
split tmp_v_shl_i_i221_4_2 v_conv7_i_i222_4_2 v_shl_i_i221_4_2 8;
vpc v_conv7_i_i222_4_2@uint8 v_conv7_i_i222_4_2@uint32;
(*   %conv.i.i210.5.2 = zext i8 %conv5.i.i219.4.2 to i32 *)
cast v_conv_i_i210_5_2@uint32 v_conv5_i_i219_4_2@uint8;
(*   %and.i.i211.5.2 = and i32 %conv.i.i210.5.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i211_5_2 v_conv_i_i210_5_2 (0x1)@uint32;
(*   %conv1.i.i212.5.2 = zext i8 %conv7.i.i222.4.2 to i32 *)
cast v_conv1_i_i212_5_2@uint32 v_conv7_i_i222_4_2@uint8;
(*   %mul.i.i213.5.2 = mul nsw i32 %and.i.i211.5.2, %conv1.i.i212.5.2 *)
mul v_mul_i_i213_5_2 v_and_i_i211_5_2 v_conv1_i_i212_5_2;
(*   %conv2.i.i214.5.2 = zext i8 %conv3.i.i216.4.2 to i32 *)
cast v_conv2_i_i214_5_2@uint32 v_conv3_i_i216_4_2@uint8;
(*   %xor.i.i215.5.2 = xor i32 %conv2.i.i214.5.2, %mul.i.i213.5.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i215_5_2 v_conv2_i_i214_5_2 v_mul_i_i213_5_2;
(*   %conv3.i.i216.5.2 = trunc i32 %xor.i.i215.5.2 to i8 *)
split tmp_v_xor_i_i215_5_2 v_conv3_i_i216_5_2 v_xor_i_i215_5_2 8;
vpc v_conv3_i_i216_5_2@uint8 v_conv3_i_i216_5_2@uint32;
(*   %conv4.i.i217.5.2 = zext i8 %conv5.i.i219.4.2 to i32 *)
cast v_conv4_i_i217_5_2@uint32 v_conv5_i_i219_4_2@uint8;
(*   %shr.i.i218.5.2 = ashr i32 %conv4.i.i217.5.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i218_5_2 tmp_to_be_used v_conv4_i_i217_5_2 1;
(*   %conv5.i.i219.5.2 = trunc i32 %shr.i.i218.5.2 to i8 *)
split tmp_v_shr_i_i218_5_2 v_conv5_i_i219_5_2 v_shr_i_i218_5_2 8;
vpc v_conv5_i_i219_5_2@uint8 v_conv5_i_i219_5_2@uint32;
(*   %conv6.i.i220.5.2 = zext i8 %conv7.i.i222.4.2 to i32 *)
cast v_conv6_i_i220_5_2@uint32 v_conv7_i_i222_4_2@uint8;
(*   %shl.i.i221.5.2 = shl i32 %conv6.i.i220.5.2, 1 *)
shls discard_89 v_shl_i_i221_5_2 v_conv6_i_i220_5_2 1;
(*   %conv7.i.i222.5.2 = trunc i32 %shl.i.i221.5.2 to i8 *)
split tmp_v_shl_i_i221_5_2 v_conv7_i_i222_5_2 v_shl_i_i221_5_2 8;
vpc v_conv7_i_i222_5_2@uint8 v_conv7_i_i222_5_2@uint32;
(*   %conv.i.i210.6.2 = zext i8 %conv5.i.i219.5.2 to i32 *)
cast v_conv_i_i210_6_2@uint32 v_conv5_i_i219_5_2@uint8;
(*   %and.i.i211.6.2 = and i32 %conv.i.i210.6.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i211_6_2 v_conv_i_i210_6_2 (0x1)@uint32;
(*   %conv1.i.i212.6.2 = zext i8 %conv7.i.i222.5.2 to i32 *)
cast v_conv1_i_i212_6_2@uint32 v_conv7_i_i222_5_2@uint8;
(*   %mul.i.i213.6.2 = mul nsw i32 %and.i.i211.6.2, %conv1.i.i212.6.2 *)
mul v_mul_i_i213_6_2 v_and_i_i211_6_2 v_conv1_i_i212_6_2;
(*   %conv2.i.i214.6.2 = zext i8 %conv3.i.i216.5.2 to i32 *)
cast v_conv2_i_i214_6_2@uint32 v_conv3_i_i216_5_2@uint8;
(*   %xor.i.i215.6.2 = xor i32 %conv2.i.i214.6.2, %mul.i.i213.6.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i215_6_2 v_conv2_i_i214_6_2 v_mul_i_i213_6_2;
(*   %conv3.i.i216.6.2 = trunc i32 %xor.i.i215.6.2 to i8 *)
split tmp_v_xor_i_i215_6_2 v_conv3_i_i216_6_2 v_xor_i_i215_6_2 8;
vpc v_conv3_i_i216_6_2@uint8 v_conv3_i_i216_6_2@uint32;
(*   %conv4.i.i217.6.2 = zext i8 %conv5.i.i219.5.2 to i32 *)
cast v_conv4_i_i217_6_2@uint32 v_conv5_i_i219_5_2@uint8;
(*   %shr.i.i218.6.2 = ashr i32 %conv4.i.i217.6.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i218_6_2 tmp_to_be_used v_conv4_i_i217_6_2 1;
(*   %conv5.i.i219.6.2 = trunc i32 %shr.i.i218.6.2 to i8 *)
split tmp_v_shr_i_i218_6_2 v_conv5_i_i219_6_2 v_shr_i_i218_6_2 8;
vpc v_conv5_i_i219_6_2@uint8 v_conv5_i_i219_6_2@uint32;
(*   %conv6.i.i220.6.2 = zext i8 %conv7.i.i222.5.2 to i32 *)
cast v_conv6_i_i220_6_2@uint32 v_conv7_i_i222_5_2@uint8;
(*   %shl.i.i221.6.2 = shl i32 %conv6.i.i220.6.2, 1 *)
shls discard_90 v_shl_i_i221_6_2 v_conv6_i_i220_6_2 1;
(*   %conv7.i.i222.6.2 = trunc i32 %shl.i.i221.6.2 to i8 *)
split tmp_v_shl_i_i221_6_2 v_conv7_i_i222_6_2 v_shl_i_i221_6_2 8;
vpc v_conv7_i_i222_6_2@uint8 v_conv7_i_i222_6_2@uint32;
(*   %conv.i.i210.7.2 = zext i8 %conv5.i.i219.6.2 to i32 *)
cast v_conv_i_i210_7_2@uint32 v_conv5_i_i219_6_2@uint8;
(*   %and.i.i211.7.2 = and i32 %conv.i.i210.7.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i211_7_2 v_conv_i_i210_7_2 (0x1)@uint32;
(*   %conv1.i.i212.7.2 = zext i8 %conv7.i.i222.6.2 to i32 *)
cast v_conv1_i_i212_7_2@uint32 v_conv7_i_i222_6_2@uint8;
(*   %mul.i.i213.7.2 = mul nsw i32 %and.i.i211.7.2, %conv1.i.i212.7.2 *)
mul v_mul_i_i213_7_2 v_and_i_i211_7_2 v_conv1_i_i212_7_2;
(*   %conv2.i.i214.7.2 = zext i8 %conv3.i.i216.6.2 to i32 *)
cast v_conv2_i_i214_7_2@uint32 v_conv3_i_i216_6_2@uint8;
(*   %xor.i.i215.7.2 = xor i32 %conv2.i.i214.7.2, %mul.i.i213.7.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i215_7_2 v_conv2_i_i214_7_2 v_mul_i_i213_7_2;
(*   %conv3.i.i216.7.2 = trunc i32 %xor.i.i215.7.2 to i8 *)
split tmp_v_xor_i_i215_7_2 v_conv3_i_i216_7_2 v_xor_i_i215_7_2 8;
vpc v_conv3_i_i216_7_2@uint8 v_conv3_i_i216_7_2@uint32;
(*   %arrayidx6.i226.2 = getelementptr inbounds i8, i8* %add.ptr8, i64 2 *)
(*   store i8 %conv3.i.i216.7.2, i8* %arrayidx6.i226.2, align 1 *)
mov cc_17 v_conv3_i_i216_7_2;
(*   %arrayidx.i202.3 = getelementptr inbounds i8, i8* %a, i64 4 *)
(*   %26 = load i8, i8* %arrayidx.i202.3, align 1 *)
mov v26 a_4;
(*   %arrayidx4.i206.3 = getelementptr inbounds i8, i8* %b, i64 3 *)
(*   %27 = load i8, i8* %arrayidx4.i206.3, align 1 *)
mov v27 b_3;
(*   %conv.i.i210.3326 = zext i8 %27 to i32 *)
cast v_conv_i_i210_3326@uint32 v27@uint8;
(*   %and.i.i211.3327 = and i32 %conv.i.i210.3326, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i211_3327 v_conv_i_i210_3326 (0x1)@uint32;
(*   %conv1.i.i212.3328 = zext i8 %26 to i32 *)
cast v_conv1_i_i212_3328@uint32 v26@uint8;
(*   %mul.i.i213.3329 = mul nsw i32 %and.i.i211.3327, %conv1.i.i212.3328 *)
mul v_mul_i_i213_3329 v_and_i_i211_3327 v_conv1_i_i212_3328;
(*   %conv3.i.i216.3330 = trunc i32 %mul.i.i213.3329 to i8 *)
split tmp_v_mul_i_i213_3329 v_conv3_i_i216_3330 v_mul_i_i213_3329 8;
vpc v_conv3_i_i216_3330@uint8 v_conv3_i_i216_3330@uint32;
(*   %conv4.i.i217.3331 = zext i8 %27 to i32 *)
cast v_conv4_i_i217_3331@uint32 v27@uint8;
(*   %shr.i.i218.3332 = ashr i32 %conv4.i.i217.3331, 1 *)
(* You may need to modify here *)
split v_shr_i_i218_3332 tmp_to_be_used v_conv4_i_i217_3331 1;
(*   %conv5.i.i219.3333 = trunc i32 %shr.i.i218.3332 to i8 *)
split tmp_v_shr_i_i218_3332 v_conv5_i_i219_3333 v_shr_i_i218_3332 8;
vpc v_conv5_i_i219_3333@uint8 v_conv5_i_i219_3333@uint32;
(*   %conv6.i.i220.3334 = zext i8 %26 to i32 *)
cast v_conv6_i_i220_3334@uint32 v26@uint8;
(*   %shl.i.i221.3335 = shl i32 %conv6.i.i220.3334, 1 *)
shls discard_91 v_shl_i_i221_3335 v_conv6_i_i220_3334 1;
(*   %conv7.i.i222.3336 = trunc i32 %shl.i.i221.3335 to i8 *)
split tmp_v_shl_i_i221_3335 v_conv7_i_i222_3336 v_shl_i_i221_3335 8;
vpc v_conv7_i_i222_3336@uint8 v_conv7_i_i222_3336@uint32;
(*   %conv.i.i210.1.3 = zext i8 %conv5.i.i219.3333 to i32 *)
cast v_conv_i_i210_1_3@uint32 v_conv5_i_i219_3333@uint8;
(*   %and.i.i211.1.3 = and i32 %conv.i.i210.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i211_1_3 v_conv_i_i210_1_3 (0x1)@uint32;
(*   %conv1.i.i212.1.3 = zext i8 %conv7.i.i222.3336 to i32 *)
cast v_conv1_i_i212_1_3@uint32 v_conv7_i_i222_3336@uint8;
(*   %mul.i.i213.1.3 = mul nsw i32 %and.i.i211.1.3, %conv1.i.i212.1.3 *)
mul v_mul_i_i213_1_3 v_and_i_i211_1_3 v_conv1_i_i212_1_3;
(*   %conv2.i.i214.1.3 = zext i8 %conv3.i.i216.3330 to i32 *)
cast v_conv2_i_i214_1_3@uint32 v_conv3_i_i216_3330@uint8;
(*   %xor.i.i215.1.3 = xor i32 %conv2.i.i214.1.3, %mul.i.i213.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i215_1_3 v_conv2_i_i214_1_3 v_mul_i_i213_1_3;
(*   %conv3.i.i216.1.3 = trunc i32 %xor.i.i215.1.3 to i8 *)
split tmp_v_xor_i_i215_1_3 v_conv3_i_i216_1_3 v_xor_i_i215_1_3 8;
vpc v_conv3_i_i216_1_3@uint8 v_conv3_i_i216_1_3@uint32;
(*   %conv4.i.i217.1.3 = zext i8 %conv5.i.i219.3333 to i32 *)
cast v_conv4_i_i217_1_3@uint32 v_conv5_i_i219_3333@uint8;
(*   %shr.i.i218.1.3 = ashr i32 %conv4.i.i217.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i218_1_3 tmp_to_be_used v_conv4_i_i217_1_3 1;
(*   %conv5.i.i219.1.3 = trunc i32 %shr.i.i218.1.3 to i8 *)
split tmp_v_shr_i_i218_1_3 v_conv5_i_i219_1_3 v_shr_i_i218_1_3 8;
vpc v_conv5_i_i219_1_3@uint8 v_conv5_i_i219_1_3@uint32;
(*   %conv6.i.i220.1.3 = zext i8 %conv7.i.i222.3336 to i32 *)
cast v_conv6_i_i220_1_3@uint32 v_conv7_i_i222_3336@uint8;
(*   %shl.i.i221.1.3 = shl i32 %conv6.i.i220.1.3, 1 *)
shls discard_92 v_shl_i_i221_1_3 v_conv6_i_i220_1_3 1;
(*   %conv7.i.i222.1.3 = trunc i32 %shl.i.i221.1.3 to i8 *)
split tmp_v_shl_i_i221_1_3 v_conv7_i_i222_1_3 v_shl_i_i221_1_3 8;
vpc v_conv7_i_i222_1_3@uint8 v_conv7_i_i222_1_3@uint32;
(*   %conv.i.i210.2.3 = zext i8 %conv5.i.i219.1.3 to i32 *)
cast v_conv_i_i210_2_3@uint32 v_conv5_i_i219_1_3@uint8;
(*   %and.i.i211.2.3 = and i32 %conv.i.i210.2.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i211_2_3 v_conv_i_i210_2_3 (0x1)@uint32;
(*   %conv1.i.i212.2.3 = zext i8 %conv7.i.i222.1.3 to i32 *)
cast v_conv1_i_i212_2_3@uint32 v_conv7_i_i222_1_3@uint8;
(*   %mul.i.i213.2.3 = mul nsw i32 %and.i.i211.2.3, %conv1.i.i212.2.3 *)
mul v_mul_i_i213_2_3 v_and_i_i211_2_3 v_conv1_i_i212_2_3;
(*   %conv2.i.i214.2.3 = zext i8 %conv3.i.i216.1.3 to i32 *)
cast v_conv2_i_i214_2_3@uint32 v_conv3_i_i216_1_3@uint8;
(*   %xor.i.i215.2.3 = xor i32 %conv2.i.i214.2.3, %mul.i.i213.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i215_2_3 v_conv2_i_i214_2_3 v_mul_i_i213_2_3;
(*   %conv3.i.i216.2.3 = trunc i32 %xor.i.i215.2.3 to i8 *)
split tmp_v_xor_i_i215_2_3 v_conv3_i_i216_2_3 v_xor_i_i215_2_3 8;
vpc v_conv3_i_i216_2_3@uint8 v_conv3_i_i216_2_3@uint32;
(*   %conv4.i.i217.2.3 = zext i8 %conv5.i.i219.1.3 to i32 *)
cast v_conv4_i_i217_2_3@uint32 v_conv5_i_i219_1_3@uint8;
(*   %shr.i.i218.2.3 = ashr i32 %conv4.i.i217.2.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i218_2_3 tmp_to_be_used v_conv4_i_i217_2_3 1;
(*   %conv5.i.i219.2.3 = trunc i32 %shr.i.i218.2.3 to i8 *)
split tmp_v_shr_i_i218_2_3 v_conv5_i_i219_2_3 v_shr_i_i218_2_3 8;
vpc v_conv5_i_i219_2_3@uint8 v_conv5_i_i219_2_3@uint32;
(*   %conv6.i.i220.2.3 = zext i8 %conv7.i.i222.1.3 to i32 *)
cast v_conv6_i_i220_2_3@uint32 v_conv7_i_i222_1_3@uint8;
(*   %shl.i.i221.2.3 = shl i32 %conv6.i.i220.2.3, 1 *)
shls discard_93 v_shl_i_i221_2_3 v_conv6_i_i220_2_3 1;
(*   %conv7.i.i222.2.3 = trunc i32 %shl.i.i221.2.3 to i8 *)
split tmp_v_shl_i_i221_2_3 v_conv7_i_i222_2_3 v_shl_i_i221_2_3 8;
vpc v_conv7_i_i222_2_3@uint8 v_conv7_i_i222_2_3@uint32;
(*   %conv.i.i210.3.3 = zext i8 %conv5.i.i219.2.3 to i32 *)
cast v_conv_i_i210_3_3@uint32 v_conv5_i_i219_2_3@uint8;
(*   %and.i.i211.3.3 = and i32 %conv.i.i210.3.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i211_3_3 v_conv_i_i210_3_3 (0x1)@uint32;
(*   %conv1.i.i212.3.3 = zext i8 %conv7.i.i222.2.3 to i32 *)
cast v_conv1_i_i212_3_3@uint32 v_conv7_i_i222_2_3@uint8;
(*   %mul.i.i213.3.3 = mul nsw i32 %and.i.i211.3.3, %conv1.i.i212.3.3 *)
mul v_mul_i_i213_3_3 v_and_i_i211_3_3 v_conv1_i_i212_3_3;
(*   %conv2.i.i214.3.3 = zext i8 %conv3.i.i216.2.3 to i32 *)
cast v_conv2_i_i214_3_3@uint32 v_conv3_i_i216_2_3@uint8;
(*   %xor.i.i215.3.3 = xor i32 %conv2.i.i214.3.3, %mul.i.i213.3.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i215_3_3 v_conv2_i_i214_3_3 v_mul_i_i213_3_3;
(*   %conv3.i.i216.3.3 = trunc i32 %xor.i.i215.3.3 to i8 *)
split tmp_v_xor_i_i215_3_3 v_conv3_i_i216_3_3 v_xor_i_i215_3_3 8;
vpc v_conv3_i_i216_3_3@uint8 v_conv3_i_i216_3_3@uint32;
(*   %conv4.i.i217.3.3 = zext i8 %conv5.i.i219.2.3 to i32 *)
cast v_conv4_i_i217_3_3@uint32 v_conv5_i_i219_2_3@uint8;
(*   %shr.i.i218.3.3 = ashr i32 %conv4.i.i217.3.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i218_3_3 tmp_to_be_used v_conv4_i_i217_3_3 1;
(*   %conv5.i.i219.3.3 = trunc i32 %shr.i.i218.3.3 to i8 *)
split tmp_v_shr_i_i218_3_3 v_conv5_i_i219_3_3 v_shr_i_i218_3_3 8;
vpc v_conv5_i_i219_3_3@uint8 v_conv5_i_i219_3_3@uint32;
(*   %conv6.i.i220.3.3 = zext i8 %conv7.i.i222.2.3 to i32 *)
cast v_conv6_i_i220_3_3@uint32 v_conv7_i_i222_2_3@uint8;
(*   %shl.i.i221.3.3 = shl i32 %conv6.i.i220.3.3, 1 *)
shls discard_94 v_shl_i_i221_3_3 v_conv6_i_i220_3_3 1;
(*   %conv7.i.i222.3.3 = trunc i32 %shl.i.i221.3.3 to i8 *)
split tmp_v_shl_i_i221_3_3 v_conv7_i_i222_3_3 v_shl_i_i221_3_3 8;
vpc v_conv7_i_i222_3_3@uint8 v_conv7_i_i222_3_3@uint32;
(*   %conv.i.i210.4.3 = zext i8 %conv5.i.i219.3.3 to i32 *)
cast v_conv_i_i210_4_3@uint32 v_conv5_i_i219_3_3@uint8;
(*   %and.i.i211.4.3 = and i32 %conv.i.i210.4.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i211_4_3 v_conv_i_i210_4_3 (0x1)@uint32;
(*   %conv1.i.i212.4.3 = zext i8 %conv7.i.i222.3.3 to i32 *)
cast v_conv1_i_i212_4_3@uint32 v_conv7_i_i222_3_3@uint8;
(*   %mul.i.i213.4.3 = mul nsw i32 %and.i.i211.4.3, %conv1.i.i212.4.3 *)
mul v_mul_i_i213_4_3 v_and_i_i211_4_3 v_conv1_i_i212_4_3;
(*   %conv2.i.i214.4.3 = zext i8 %conv3.i.i216.3.3 to i32 *)
cast v_conv2_i_i214_4_3@uint32 v_conv3_i_i216_3_3@uint8;
(*   %xor.i.i215.4.3 = xor i32 %conv2.i.i214.4.3, %mul.i.i213.4.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i215_4_3 v_conv2_i_i214_4_3 v_mul_i_i213_4_3;
(*   %conv3.i.i216.4.3 = trunc i32 %xor.i.i215.4.3 to i8 *)
split tmp_v_xor_i_i215_4_3 v_conv3_i_i216_4_3 v_xor_i_i215_4_3 8;
vpc v_conv3_i_i216_4_3@uint8 v_conv3_i_i216_4_3@uint32;
(*   %conv4.i.i217.4.3 = zext i8 %conv5.i.i219.3.3 to i32 *)
cast v_conv4_i_i217_4_3@uint32 v_conv5_i_i219_3_3@uint8;
(*   %shr.i.i218.4.3 = ashr i32 %conv4.i.i217.4.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i218_4_3 tmp_to_be_used v_conv4_i_i217_4_3 1;
(*   %conv5.i.i219.4.3 = trunc i32 %shr.i.i218.4.3 to i8 *)
split tmp_v_shr_i_i218_4_3 v_conv5_i_i219_4_3 v_shr_i_i218_4_3 8;
vpc v_conv5_i_i219_4_3@uint8 v_conv5_i_i219_4_3@uint32;
(*   %conv6.i.i220.4.3 = zext i8 %conv7.i.i222.3.3 to i32 *)
cast v_conv6_i_i220_4_3@uint32 v_conv7_i_i222_3_3@uint8;
(*   %shl.i.i221.4.3 = shl i32 %conv6.i.i220.4.3, 1 *)
shls discard_95 v_shl_i_i221_4_3 v_conv6_i_i220_4_3 1;
(*   %conv7.i.i222.4.3 = trunc i32 %shl.i.i221.4.3 to i8 *)
split tmp_v_shl_i_i221_4_3 v_conv7_i_i222_4_3 v_shl_i_i221_4_3 8;
vpc v_conv7_i_i222_4_3@uint8 v_conv7_i_i222_4_3@uint32;
(*   %conv.i.i210.5.3 = zext i8 %conv5.i.i219.4.3 to i32 *)
cast v_conv_i_i210_5_3@uint32 v_conv5_i_i219_4_3@uint8;
(*   %and.i.i211.5.3 = and i32 %conv.i.i210.5.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i211_5_3 v_conv_i_i210_5_3 (0x1)@uint32;
(*   %conv1.i.i212.5.3 = zext i8 %conv7.i.i222.4.3 to i32 *)
cast v_conv1_i_i212_5_3@uint32 v_conv7_i_i222_4_3@uint8;
(*   %mul.i.i213.5.3 = mul nsw i32 %and.i.i211.5.3, %conv1.i.i212.5.3 *)
mul v_mul_i_i213_5_3 v_and_i_i211_5_3 v_conv1_i_i212_5_3;
(*   %conv2.i.i214.5.3 = zext i8 %conv3.i.i216.4.3 to i32 *)
cast v_conv2_i_i214_5_3@uint32 v_conv3_i_i216_4_3@uint8;
(*   %xor.i.i215.5.3 = xor i32 %conv2.i.i214.5.3, %mul.i.i213.5.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i215_5_3 v_conv2_i_i214_5_3 v_mul_i_i213_5_3;
(*   %conv3.i.i216.5.3 = trunc i32 %xor.i.i215.5.3 to i8 *)
split tmp_v_xor_i_i215_5_3 v_conv3_i_i216_5_3 v_xor_i_i215_5_3 8;
vpc v_conv3_i_i216_5_3@uint8 v_conv3_i_i216_5_3@uint32;
(*   %conv4.i.i217.5.3 = zext i8 %conv5.i.i219.4.3 to i32 *)
cast v_conv4_i_i217_5_3@uint32 v_conv5_i_i219_4_3@uint8;
(*   %shr.i.i218.5.3 = ashr i32 %conv4.i.i217.5.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i218_5_3 tmp_to_be_used v_conv4_i_i217_5_3 1;
(*   %conv5.i.i219.5.3 = trunc i32 %shr.i.i218.5.3 to i8 *)
split tmp_v_shr_i_i218_5_3 v_conv5_i_i219_5_3 v_shr_i_i218_5_3 8;
vpc v_conv5_i_i219_5_3@uint8 v_conv5_i_i219_5_3@uint32;
(*   %conv6.i.i220.5.3 = zext i8 %conv7.i.i222.4.3 to i32 *)
cast v_conv6_i_i220_5_3@uint32 v_conv7_i_i222_4_3@uint8;
(*   %shl.i.i221.5.3 = shl i32 %conv6.i.i220.5.3, 1 *)
shls discard_96 v_shl_i_i221_5_3 v_conv6_i_i220_5_3 1;
(*   %conv7.i.i222.5.3 = trunc i32 %shl.i.i221.5.3 to i8 *)
split tmp_v_shl_i_i221_5_3 v_conv7_i_i222_5_3 v_shl_i_i221_5_3 8;
vpc v_conv7_i_i222_5_3@uint8 v_conv7_i_i222_5_3@uint32;
(*   %conv.i.i210.6.3 = zext i8 %conv5.i.i219.5.3 to i32 *)
cast v_conv_i_i210_6_3@uint32 v_conv5_i_i219_5_3@uint8;
(*   %and.i.i211.6.3 = and i32 %conv.i.i210.6.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i211_6_3 v_conv_i_i210_6_3 (0x1)@uint32;
(*   %conv1.i.i212.6.3 = zext i8 %conv7.i.i222.5.3 to i32 *)
cast v_conv1_i_i212_6_3@uint32 v_conv7_i_i222_5_3@uint8;
(*   %mul.i.i213.6.3 = mul nsw i32 %and.i.i211.6.3, %conv1.i.i212.6.3 *)
mul v_mul_i_i213_6_3 v_and_i_i211_6_3 v_conv1_i_i212_6_3;
(*   %conv2.i.i214.6.3 = zext i8 %conv3.i.i216.5.3 to i32 *)
cast v_conv2_i_i214_6_3@uint32 v_conv3_i_i216_5_3@uint8;
(*   %xor.i.i215.6.3 = xor i32 %conv2.i.i214.6.3, %mul.i.i213.6.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i215_6_3 v_conv2_i_i214_6_3 v_mul_i_i213_6_3;
(*   %conv3.i.i216.6.3 = trunc i32 %xor.i.i215.6.3 to i8 *)
split tmp_v_xor_i_i215_6_3 v_conv3_i_i216_6_3 v_xor_i_i215_6_3 8;
vpc v_conv3_i_i216_6_3@uint8 v_conv3_i_i216_6_3@uint32;
(*   %conv4.i.i217.6.3 = zext i8 %conv5.i.i219.5.3 to i32 *)
cast v_conv4_i_i217_6_3@uint32 v_conv5_i_i219_5_3@uint8;
(*   %shr.i.i218.6.3 = ashr i32 %conv4.i.i217.6.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i218_6_3 tmp_to_be_used v_conv4_i_i217_6_3 1;
(*   %conv5.i.i219.6.3 = trunc i32 %shr.i.i218.6.3 to i8 *)
split tmp_v_shr_i_i218_6_3 v_conv5_i_i219_6_3 v_shr_i_i218_6_3 8;
vpc v_conv5_i_i219_6_3@uint8 v_conv5_i_i219_6_3@uint32;
(*   %conv6.i.i220.6.3 = zext i8 %conv7.i.i222.5.3 to i32 *)
cast v_conv6_i_i220_6_3@uint32 v_conv7_i_i222_5_3@uint8;
(*   %shl.i.i221.6.3 = shl i32 %conv6.i.i220.6.3, 1 *)
shls discard_97 v_shl_i_i221_6_3 v_conv6_i_i220_6_3 1;
(*   %conv7.i.i222.6.3 = trunc i32 %shl.i.i221.6.3 to i8 *)
split tmp_v_shl_i_i221_6_3 v_conv7_i_i222_6_3 v_shl_i_i221_6_3 8;
vpc v_conv7_i_i222_6_3@uint8 v_conv7_i_i222_6_3@uint32;
(*   %conv.i.i210.7.3 = zext i8 %conv5.i.i219.6.3 to i32 *)
cast v_conv_i_i210_7_3@uint32 v_conv5_i_i219_6_3@uint8;
(*   %and.i.i211.7.3 = and i32 %conv.i.i210.7.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i211_7_3 v_conv_i_i210_7_3 (0x1)@uint32;
(*   %conv1.i.i212.7.3 = zext i8 %conv7.i.i222.6.3 to i32 *)
cast v_conv1_i_i212_7_3@uint32 v_conv7_i_i222_6_3@uint8;
(*   %mul.i.i213.7.3 = mul nsw i32 %and.i.i211.7.3, %conv1.i.i212.7.3 *)
mul v_mul_i_i213_7_3 v_and_i_i211_7_3 v_conv1_i_i212_7_3;
(*   %conv2.i.i214.7.3 = zext i8 %conv3.i.i216.6.3 to i32 *)
cast v_conv2_i_i214_7_3@uint32 v_conv3_i_i216_6_3@uint8;
(*   %xor.i.i215.7.3 = xor i32 %conv2.i.i214.7.3, %mul.i.i213.7.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i215_7_3 v_conv2_i_i214_7_3 v_mul_i_i213_7_3;
(*   %conv3.i.i216.7.3 = trunc i32 %xor.i.i215.7.3 to i8 *)
split tmp_v_xor_i_i215_7_3 v_conv3_i_i216_7_3 v_xor_i_i215_7_3 8;
vpc v_conv3_i_i216_7_3@uint8 v_conv3_i_i216_7_3@uint32;
(*   %arrayidx6.i226.3 = getelementptr inbounds i8, i8* %add.ptr8, i64 3 *)
(*   store i8 %conv3.i.i216.7.3, i8* %arrayidx6.i226.3, align 1 *)
mov cc_18 v_conv3_i_i216_7_3;
(*   %28 = load i8, i8* %a, align 1 *)
mov v28 a_0;
(*   %arrayidx4.i206.4 = getelementptr inbounds i8, i8* %b, i64 4 *)
(*   %29 = load i8, i8* %arrayidx4.i206.4, align 1 *)
mov v29 b_4;
(*   %conv.i.i210.4337 = zext i8 %29 to i32 *)
cast v_conv_i_i210_4337@uint32 v29@uint8;
(*   %and.i.i211.4338 = and i32 %conv.i.i210.4337, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i211_4338 v_conv_i_i210_4337 (0x1)@uint32;
(*   %conv1.i.i212.4339 = zext i8 %28 to i32 *)
cast v_conv1_i_i212_4339@uint32 v28@uint8;
(*   %mul.i.i213.4340 = mul nsw i32 %and.i.i211.4338, %conv1.i.i212.4339 *)
mul v_mul_i_i213_4340 v_and_i_i211_4338 v_conv1_i_i212_4339;
(*   %conv3.i.i216.4341 = trunc i32 %mul.i.i213.4340 to i8 *)
split tmp_v_mul_i_i213_4340 v_conv3_i_i216_4341 v_mul_i_i213_4340 8;
vpc v_conv3_i_i216_4341@uint8 v_conv3_i_i216_4341@uint32;
(*   %conv4.i.i217.4342 = zext i8 %29 to i32 *)
cast v_conv4_i_i217_4342@uint32 v29@uint8;
(*   %shr.i.i218.4343 = ashr i32 %conv4.i.i217.4342, 1 *)
(* You may need to modify here *)
split v_shr_i_i218_4343 tmp_to_be_used v_conv4_i_i217_4342 1;
(*   %conv5.i.i219.4344 = trunc i32 %shr.i.i218.4343 to i8 *)
split tmp_v_shr_i_i218_4343 v_conv5_i_i219_4344 v_shr_i_i218_4343 8;
vpc v_conv5_i_i219_4344@uint8 v_conv5_i_i219_4344@uint32;
(*   %conv6.i.i220.4345 = zext i8 %28 to i32 *)
cast v_conv6_i_i220_4345@uint32 v28@uint8;
(*   %shl.i.i221.4346 = shl i32 %conv6.i.i220.4345, 1 *)
shls discard_98 v_shl_i_i221_4346 v_conv6_i_i220_4345 1;
(*   %conv7.i.i222.4347 = trunc i32 %shl.i.i221.4346 to i8 *)
split tmp_v_shl_i_i221_4346 v_conv7_i_i222_4347 v_shl_i_i221_4346 8;
vpc v_conv7_i_i222_4347@uint8 v_conv7_i_i222_4347@uint32;
(*   %conv.i.i210.1.4 = zext i8 %conv5.i.i219.4344 to i32 *)
cast v_conv_i_i210_1_4@uint32 v_conv5_i_i219_4344@uint8;
(*   %and.i.i211.1.4 = and i32 %conv.i.i210.1.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i211_1_4 v_conv_i_i210_1_4 (0x1)@uint32;
(*   %conv1.i.i212.1.4 = zext i8 %conv7.i.i222.4347 to i32 *)
cast v_conv1_i_i212_1_4@uint32 v_conv7_i_i222_4347@uint8;
(*   %mul.i.i213.1.4 = mul nsw i32 %and.i.i211.1.4, %conv1.i.i212.1.4 *)
mul v_mul_i_i213_1_4 v_and_i_i211_1_4 v_conv1_i_i212_1_4;
(*   %conv2.i.i214.1.4 = zext i8 %conv3.i.i216.4341 to i32 *)
cast v_conv2_i_i214_1_4@uint32 v_conv3_i_i216_4341@uint8;
(*   %xor.i.i215.1.4 = xor i32 %conv2.i.i214.1.4, %mul.i.i213.1.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i215_1_4 v_conv2_i_i214_1_4 v_mul_i_i213_1_4;
(*   %conv3.i.i216.1.4 = trunc i32 %xor.i.i215.1.4 to i8 *)
split tmp_v_xor_i_i215_1_4 v_conv3_i_i216_1_4 v_xor_i_i215_1_4 8;
vpc v_conv3_i_i216_1_4@uint8 v_conv3_i_i216_1_4@uint32;
(*   %conv4.i.i217.1.4 = zext i8 %conv5.i.i219.4344 to i32 *)
cast v_conv4_i_i217_1_4@uint32 v_conv5_i_i219_4344@uint8;
(*   %shr.i.i218.1.4 = ashr i32 %conv4.i.i217.1.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i218_1_4 tmp_to_be_used v_conv4_i_i217_1_4 1;
(*   %conv5.i.i219.1.4 = trunc i32 %shr.i.i218.1.4 to i8 *)
split tmp_v_shr_i_i218_1_4 v_conv5_i_i219_1_4 v_shr_i_i218_1_4 8;
vpc v_conv5_i_i219_1_4@uint8 v_conv5_i_i219_1_4@uint32;
(*   %conv6.i.i220.1.4 = zext i8 %conv7.i.i222.4347 to i32 *)
cast v_conv6_i_i220_1_4@uint32 v_conv7_i_i222_4347@uint8;
(*   %shl.i.i221.1.4 = shl i32 %conv6.i.i220.1.4, 1 *)
shls discard_99 v_shl_i_i221_1_4 v_conv6_i_i220_1_4 1;
(*   %conv7.i.i222.1.4 = trunc i32 %shl.i.i221.1.4 to i8 *)
split tmp_v_shl_i_i221_1_4 v_conv7_i_i222_1_4 v_shl_i_i221_1_4 8;
vpc v_conv7_i_i222_1_4@uint8 v_conv7_i_i222_1_4@uint32;
(*   %conv.i.i210.2.4 = zext i8 %conv5.i.i219.1.4 to i32 *)
cast v_conv_i_i210_2_4@uint32 v_conv5_i_i219_1_4@uint8;
(*   %and.i.i211.2.4 = and i32 %conv.i.i210.2.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i211_2_4 v_conv_i_i210_2_4 (0x1)@uint32;
(*   %conv1.i.i212.2.4 = zext i8 %conv7.i.i222.1.4 to i32 *)
cast v_conv1_i_i212_2_4@uint32 v_conv7_i_i222_1_4@uint8;
(*   %mul.i.i213.2.4 = mul nsw i32 %and.i.i211.2.4, %conv1.i.i212.2.4 *)
mul v_mul_i_i213_2_4 v_and_i_i211_2_4 v_conv1_i_i212_2_4;
(*   %conv2.i.i214.2.4 = zext i8 %conv3.i.i216.1.4 to i32 *)
cast v_conv2_i_i214_2_4@uint32 v_conv3_i_i216_1_4@uint8;
(*   %xor.i.i215.2.4 = xor i32 %conv2.i.i214.2.4, %mul.i.i213.2.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i215_2_4 v_conv2_i_i214_2_4 v_mul_i_i213_2_4;
(*   %conv3.i.i216.2.4 = trunc i32 %xor.i.i215.2.4 to i8 *)
split tmp_v_xor_i_i215_2_4 v_conv3_i_i216_2_4 v_xor_i_i215_2_4 8;
vpc v_conv3_i_i216_2_4@uint8 v_conv3_i_i216_2_4@uint32;
(*   %conv4.i.i217.2.4 = zext i8 %conv5.i.i219.1.4 to i32 *)
cast v_conv4_i_i217_2_4@uint32 v_conv5_i_i219_1_4@uint8;
(*   %shr.i.i218.2.4 = ashr i32 %conv4.i.i217.2.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i218_2_4 tmp_to_be_used v_conv4_i_i217_2_4 1;
(*   %conv5.i.i219.2.4 = trunc i32 %shr.i.i218.2.4 to i8 *)
split tmp_v_shr_i_i218_2_4 v_conv5_i_i219_2_4 v_shr_i_i218_2_4 8;
vpc v_conv5_i_i219_2_4@uint8 v_conv5_i_i219_2_4@uint32;
(*   %conv6.i.i220.2.4 = zext i8 %conv7.i.i222.1.4 to i32 *)
cast v_conv6_i_i220_2_4@uint32 v_conv7_i_i222_1_4@uint8;
(*   %shl.i.i221.2.4 = shl i32 %conv6.i.i220.2.4, 1 *)
shls discard_100 v_shl_i_i221_2_4 v_conv6_i_i220_2_4 1;
(*   %conv7.i.i222.2.4 = trunc i32 %shl.i.i221.2.4 to i8 *)
split tmp_v_shl_i_i221_2_4 v_conv7_i_i222_2_4 v_shl_i_i221_2_4 8;
vpc v_conv7_i_i222_2_4@uint8 v_conv7_i_i222_2_4@uint32;
(*   %conv.i.i210.3.4 = zext i8 %conv5.i.i219.2.4 to i32 *)
cast v_conv_i_i210_3_4@uint32 v_conv5_i_i219_2_4@uint8;
(*   %and.i.i211.3.4 = and i32 %conv.i.i210.3.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i211_3_4 v_conv_i_i210_3_4 (0x1)@uint32;
(*   %conv1.i.i212.3.4 = zext i8 %conv7.i.i222.2.4 to i32 *)
cast v_conv1_i_i212_3_4@uint32 v_conv7_i_i222_2_4@uint8;
(*   %mul.i.i213.3.4 = mul nsw i32 %and.i.i211.3.4, %conv1.i.i212.3.4 *)
mul v_mul_i_i213_3_4 v_and_i_i211_3_4 v_conv1_i_i212_3_4;
(*   %conv2.i.i214.3.4 = zext i8 %conv3.i.i216.2.4 to i32 *)
cast v_conv2_i_i214_3_4@uint32 v_conv3_i_i216_2_4@uint8;
(*   %xor.i.i215.3.4 = xor i32 %conv2.i.i214.3.4, %mul.i.i213.3.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i215_3_4 v_conv2_i_i214_3_4 v_mul_i_i213_3_4;
(*   %conv3.i.i216.3.4 = trunc i32 %xor.i.i215.3.4 to i8 *)
split tmp_v_xor_i_i215_3_4 v_conv3_i_i216_3_4 v_xor_i_i215_3_4 8;
vpc v_conv3_i_i216_3_4@uint8 v_conv3_i_i216_3_4@uint32;
(*   %conv4.i.i217.3.4 = zext i8 %conv5.i.i219.2.4 to i32 *)
cast v_conv4_i_i217_3_4@uint32 v_conv5_i_i219_2_4@uint8;
(*   %shr.i.i218.3.4 = ashr i32 %conv4.i.i217.3.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i218_3_4 tmp_to_be_used v_conv4_i_i217_3_4 1;
(*   %conv5.i.i219.3.4 = trunc i32 %shr.i.i218.3.4 to i8 *)
split tmp_v_shr_i_i218_3_4 v_conv5_i_i219_3_4 v_shr_i_i218_3_4 8;
vpc v_conv5_i_i219_3_4@uint8 v_conv5_i_i219_3_4@uint32;
(*   %conv6.i.i220.3.4 = zext i8 %conv7.i.i222.2.4 to i32 *)
cast v_conv6_i_i220_3_4@uint32 v_conv7_i_i222_2_4@uint8;
(*   %shl.i.i221.3.4 = shl i32 %conv6.i.i220.3.4, 1 *)
shls discard_101 v_shl_i_i221_3_4 v_conv6_i_i220_3_4 1;
(*   %conv7.i.i222.3.4 = trunc i32 %shl.i.i221.3.4 to i8 *)
split tmp_v_shl_i_i221_3_4 v_conv7_i_i222_3_4 v_shl_i_i221_3_4 8;
vpc v_conv7_i_i222_3_4@uint8 v_conv7_i_i222_3_4@uint32;
(*   %conv.i.i210.4.4 = zext i8 %conv5.i.i219.3.4 to i32 *)
cast v_conv_i_i210_4_4@uint32 v_conv5_i_i219_3_4@uint8;
(*   %and.i.i211.4.4 = and i32 %conv.i.i210.4.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i211_4_4 v_conv_i_i210_4_4 (0x1)@uint32;
(*   %conv1.i.i212.4.4 = zext i8 %conv7.i.i222.3.4 to i32 *)
cast v_conv1_i_i212_4_4@uint32 v_conv7_i_i222_3_4@uint8;
(*   %mul.i.i213.4.4 = mul nsw i32 %and.i.i211.4.4, %conv1.i.i212.4.4 *)
mul v_mul_i_i213_4_4 v_and_i_i211_4_4 v_conv1_i_i212_4_4;
(*   %conv2.i.i214.4.4 = zext i8 %conv3.i.i216.3.4 to i32 *)
cast v_conv2_i_i214_4_4@uint32 v_conv3_i_i216_3_4@uint8;
(*   %xor.i.i215.4.4 = xor i32 %conv2.i.i214.4.4, %mul.i.i213.4.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i215_4_4 v_conv2_i_i214_4_4 v_mul_i_i213_4_4;
(*   %conv3.i.i216.4.4 = trunc i32 %xor.i.i215.4.4 to i8 *)
split tmp_v_xor_i_i215_4_4 v_conv3_i_i216_4_4 v_xor_i_i215_4_4 8;
vpc v_conv3_i_i216_4_4@uint8 v_conv3_i_i216_4_4@uint32;
(*   %conv4.i.i217.4.4 = zext i8 %conv5.i.i219.3.4 to i32 *)
cast v_conv4_i_i217_4_4@uint32 v_conv5_i_i219_3_4@uint8;
(*   %shr.i.i218.4.4 = ashr i32 %conv4.i.i217.4.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i218_4_4 tmp_to_be_used v_conv4_i_i217_4_4 1;
(*   %conv5.i.i219.4.4 = trunc i32 %shr.i.i218.4.4 to i8 *)
split tmp_v_shr_i_i218_4_4 v_conv5_i_i219_4_4 v_shr_i_i218_4_4 8;
vpc v_conv5_i_i219_4_4@uint8 v_conv5_i_i219_4_4@uint32;
(*   %conv6.i.i220.4.4 = zext i8 %conv7.i.i222.3.4 to i32 *)
cast v_conv6_i_i220_4_4@uint32 v_conv7_i_i222_3_4@uint8;
(*   %shl.i.i221.4.4 = shl i32 %conv6.i.i220.4.4, 1 *)
shls discard_102 v_shl_i_i221_4_4 v_conv6_i_i220_4_4 1;
(*   %conv7.i.i222.4.4 = trunc i32 %shl.i.i221.4.4 to i8 *)
split tmp_v_shl_i_i221_4_4 v_conv7_i_i222_4_4 v_shl_i_i221_4_4 8;
vpc v_conv7_i_i222_4_4@uint8 v_conv7_i_i222_4_4@uint32;
(*   %conv.i.i210.5.4 = zext i8 %conv5.i.i219.4.4 to i32 *)
cast v_conv_i_i210_5_4@uint32 v_conv5_i_i219_4_4@uint8;
(*   %and.i.i211.5.4 = and i32 %conv.i.i210.5.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i211_5_4 v_conv_i_i210_5_4 (0x1)@uint32;
(*   %conv1.i.i212.5.4 = zext i8 %conv7.i.i222.4.4 to i32 *)
cast v_conv1_i_i212_5_4@uint32 v_conv7_i_i222_4_4@uint8;
(*   %mul.i.i213.5.4 = mul nsw i32 %and.i.i211.5.4, %conv1.i.i212.5.4 *)
mul v_mul_i_i213_5_4 v_and_i_i211_5_4 v_conv1_i_i212_5_4;
(*   %conv2.i.i214.5.4 = zext i8 %conv3.i.i216.4.4 to i32 *)
cast v_conv2_i_i214_5_4@uint32 v_conv3_i_i216_4_4@uint8;
(*   %xor.i.i215.5.4 = xor i32 %conv2.i.i214.5.4, %mul.i.i213.5.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i215_5_4 v_conv2_i_i214_5_4 v_mul_i_i213_5_4;
(*   %conv3.i.i216.5.4 = trunc i32 %xor.i.i215.5.4 to i8 *)
split tmp_v_xor_i_i215_5_4 v_conv3_i_i216_5_4 v_xor_i_i215_5_4 8;
vpc v_conv3_i_i216_5_4@uint8 v_conv3_i_i216_5_4@uint32;
(*   %conv4.i.i217.5.4 = zext i8 %conv5.i.i219.4.4 to i32 *)
cast v_conv4_i_i217_5_4@uint32 v_conv5_i_i219_4_4@uint8;
(*   %shr.i.i218.5.4 = ashr i32 %conv4.i.i217.5.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i218_5_4 tmp_to_be_used v_conv4_i_i217_5_4 1;
(*   %conv5.i.i219.5.4 = trunc i32 %shr.i.i218.5.4 to i8 *)
split tmp_v_shr_i_i218_5_4 v_conv5_i_i219_5_4 v_shr_i_i218_5_4 8;
vpc v_conv5_i_i219_5_4@uint8 v_conv5_i_i219_5_4@uint32;
(*   %conv6.i.i220.5.4 = zext i8 %conv7.i.i222.4.4 to i32 *)
cast v_conv6_i_i220_5_4@uint32 v_conv7_i_i222_4_4@uint8;
(*   %shl.i.i221.5.4 = shl i32 %conv6.i.i220.5.4, 1 *)
shls discard_103 v_shl_i_i221_5_4 v_conv6_i_i220_5_4 1;
(*   %conv7.i.i222.5.4 = trunc i32 %shl.i.i221.5.4 to i8 *)
split tmp_v_shl_i_i221_5_4 v_conv7_i_i222_5_4 v_shl_i_i221_5_4 8;
vpc v_conv7_i_i222_5_4@uint8 v_conv7_i_i222_5_4@uint32;
(*   %conv.i.i210.6.4 = zext i8 %conv5.i.i219.5.4 to i32 *)
cast v_conv_i_i210_6_4@uint32 v_conv5_i_i219_5_4@uint8;
(*   %and.i.i211.6.4 = and i32 %conv.i.i210.6.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i211_6_4 v_conv_i_i210_6_4 (0x1)@uint32;
(*   %conv1.i.i212.6.4 = zext i8 %conv7.i.i222.5.4 to i32 *)
cast v_conv1_i_i212_6_4@uint32 v_conv7_i_i222_5_4@uint8;
(*   %mul.i.i213.6.4 = mul nsw i32 %and.i.i211.6.4, %conv1.i.i212.6.4 *)
mul v_mul_i_i213_6_4 v_and_i_i211_6_4 v_conv1_i_i212_6_4;
(*   %conv2.i.i214.6.4 = zext i8 %conv3.i.i216.5.4 to i32 *)
cast v_conv2_i_i214_6_4@uint32 v_conv3_i_i216_5_4@uint8;
(*   %xor.i.i215.6.4 = xor i32 %conv2.i.i214.6.4, %mul.i.i213.6.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i215_6_4 v_conv2_i_i214_6_4 v_mul_i_i213_6_4;
(*   %conv3.i.i216.6.4 = trunc i32 %xor.i.i215.6.4 to i8 *)
split tmp_v_xor_i_i215_6_4 v_conv3_i_i216_6_4 v_xor_i_i215_6_4 8;
vpc v_conv3_i_i216_6_4@uint8 v_conv3_i_i216_6_4@uint32;
(*   %conv4.i.i217.6.4 = zext i8 %conv5.i.i219.5.4 to i32 *)
cast v_conv4_i_i217_6_4@uint32 v_conv5_i_i219_5_4@uint8;
(*   %shr.i.i218.6.4 = ashr i32 %conv4.i.i217.6.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i218_6_4 tmp_to_be_used v_conv4_i_i217_6_4 1;
(*   %conv5.i.i219.6.4 = trunc i32 %shr.i.i218.6.4 to i8 *)
split tmp_v_shr_i_i218_6_4 v_conv5_i_i219_6_4 v_shr_i_i218_6_4 8;
vpc v_conv5_i_i219_6_4@uint8 v_conv5_i_i219_6_4@uint32;
(*   %conv6.i.i220.6.4 = zext i8 %conv7.i.i222.5.4 to i32 *)
cast v_conv6_i_i220_6_4@uint32 v_conv7_i_i222_5_4@uint8;
(*   %shl.i.i221.6.4 = shl i32 %conv6.i.i220.6.4, 1 *)
shls discard_104 v_shl_i_i221_6_4 v_conv6_i_i220_6_4 1;
(*   %conv7.i.i222.6.4 = trunc i32 %shl.i.i221.6.4 to i8 *)
split tmp_v_shl_i_i221_6_4 v_conv7_i_i222_6_4 v_shl_i_i221_6_4 8;
vpc v_conv7_i_i222_6_4@uint8 v_conv7_i_i222_6_4@uint32;
(*   %conv.i.i210.7.4 = zext i8 %conv5.i.i219.6.4 to i32 *)
cast v_conv_i_i210_7_4@uint32 v_conv5_i_i219_6_4@uint8;
(*   %and.i.i211.7.4 = and i32 %conv.i.i210.7.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i211_7_4 v_conv_i_i210_7_4 (0x1)@uint32;
(*   %conv1.i.i212.7.4 = zext i8 %conv7.i.i222.6.4 to i32 *)
cast v_conv1_i_i212_7_4@uint32 v_conv7_i_i222_6_4@uint8;
(*   %mul.i.i213.7.4 = mul nsw i32 %and.i.i211.7.4, %conv1.i.i212.7.4 *)
mul v_mul_i_i213_7_4 v_and_i_i211_7_4 v_conv1_i_i212_7_4;
(*   %conv2.i.i214.7.4 = zext i8 %conv3.i.i216.6.4 to i32 *)
cast v_conv2_i_i214_7_4@uint32 v_conv3_i_i216_6_4@uint8;
(*   %xor.i.i215.7.4 = xor i32 %conv2.i.i214.7.4, %mul.i.i213.7.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i215_7_4 v_conv2_i_i214_7_4 v_mul_i_i213_7_4;
(*   %conv3.i.i216.7.4 = trunc i32 %xor.i.i215.7.4 to i8 *)
split tmp_v_xor_i_i215_7_4 v_conv3_i_i216_7_4 v_xor_i_i215_7_4 8;
vpc v_conv3_i_i216_7_4@uint8 v_conv3_i_i216_7_4@uint32;
(*   %arrayidx6.i226.4 = getelementptr inbounds i8, i8* %add.ptr8, i64 4 *)
(*   store i8 %conv3.i.i216.7.4, i8* %arrayidx6.i226.4, align 1 *)
mov cc_19 v_conv3_i_i216_7_4;
(*   %arraydecay9 = getelementptr inbounds [50 x i8], [50 x i8]* %cc, i64 0, i64 0 *)
(*   %add.ptr10 = getelementptr inbounds i8, i8* %arraydecay9, i64 20 *)
(*   %30 = load i8, i8* %a, align 1 *)
mov v30 a_0;
(*   %arrayidx4.i456 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %31 = load i8, i8* %arrayidx4.i456, align 1 *)
mov v31 b_2;
(*   %conv.i.i460 = zext i8 %31 to i32 *)
cast v_conv_i_i460@uint32 v31@uint8;
(*   %and.i.i461 = and i32 %conv.i.i460, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i461 v_conv_i_i460 (0x1)@uint32;
(*   %conv1.i.i462 = zext i8 %30 to i32 *)
cast v_conv1_i_i462@uint32 v30@uint8;
(*   %mul.i.i463 = mul nsw i32 %and.i.i461, %conv1.i.i462 *)
mul v_mul_i_i463 v_and_i_i461 v_conv1_i_i462;
(*   %conv3.i.i466 = trunc i32 %mul.i.i463 to i8 *)
split tmp_v_mul_i_i463 v_conv3_i_i466 v_mul_i_i463 8;
vpc v_conv3_i_i466@uint8 v_conv3_i_i466@uint32;
(*   %conv4.i.i467 = zext i8 %31 to i32 *)
cast v_conv4_i_i467@uint32 v31@uint8;
(*   %shr.i.i468 = ashr i32 %conv4.i.i467, 1 *)
(* You may need to modify here *)
split v_shr_i_i468 tmp_to_be_used v_conv4_i_i467 1;
(*   %conv5.i.i469 = trunc i32 %shr.i.i468 to i8 *)
split tmp_v_shr_i_i468 v_conv5_i_i469 v_shr_i_i468 8;
vpc v_conv5_i_i469@uint8 v_conv5_i_i469@uint32;
(*   %conv6.i.i470 = zext i8 %30 to i32 *)
cast v_conv6_i_i470@uint32 v30@uint8;
(*   %shl.i.i471 = shl i32 %conv6.i.i470, 1 *)
shls discard_105 v_shl_i_i471 v_conv6_i_i470 1;
(*   %conv7.i.i472 = trunc i32 %shl.i.i471 to i8 *)
split tmp_v_shl_i_i471 v_conv7_i_i472 v_shl_i_i471 8;
vpc v_conv7_i_i472@uint8 v_conv7_i_i472@uint32;
(*   %conv.i.i460.1 = zext i8 %conv5.i.i469 to i32 *)
cast v_conv_i_i460_1@uint32 v_conv5_i_i469@uint8;
(*   %and.i.i461.1 = and i32 %conv.i.i460.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i461_1 v_conv_i_i460_1 (0x1)@uint32;
(*   %conv1.i.i462.1 = zext i8 %conv7.i.i472 to i32 *)
cast v_conv1_i_i462_1@uint32 v_conv7_i_i472@uint8;
(*   %mul.i.i463.1 = mul nsw i32 %and.i.i461.1, %conv1.i.i462.1 *)
mul v_mul_i_i463_1 v_and_i_i461_1 v_conv1_i_i462_1;
(*   %conv2.i.i464.1 = zext i8 %conv3.i.i466 to i32 *)
cast v_conv2_i_i464_1@uint32 v_conv3_i_i466@uint8;
(*   %xor.i.i465.1 = xor i32 %conv2.i.i464.1, %mul.i.i463.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i465_1 v_conv2_i_i464_1 v_mul_i_i463_1;
(*   %conv3.i.i466.1 = trunc i32 %xor.i.i465.1 to i8 *)
split tmp_v_xor_i_i465_1 v_conv3_i_i466_1 v_xor_i_i465_1 8;
vpc v_conv3_i_i466_1@uint8 v_conv3_i_i466_1@uint32;
(*   %conv4.i.i467.1 = zext i8 %conv5.i.i469 to i32 *)
cast v_conv4_i_i467_1@uint32 v_conv5_i_i469@uint8;
(*   %shr.i.i468.1 = ashr i32 %conv4.i.i467.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i468_1 tmp_to_be_used v_conv4_i_i467_1 1;
(*   %conv5.i.i469.1 = trunc i32 %shr.i.i468.1 to i8 *)
split tmp_v_shr_i_i468_1 v_conv5_i_i469_1 v_shr_i_i468_1 8;
vpc v_conv5_i_i469_1@uint8 v_conv5_i_i469_1@uint32;
(*   %conv6.i.i470.1 = zext i8 %conv7.i.i472 to i32 *)
cast v_conv6_i_i470_1@uint32 v_conv7_i_i472@uint8;
(*   %shl.i.i471.1 = shl i32 %conv6.i.i470.1, 1 *)
shls discard_106 v_shl_i_i471_1 v_conv6_i_i470_1 1;
(*   %conv7.i.i472.1 = trunc i32 %shl.i.i471.1 to i8 *)
split tmp_v_shl_i_i471_1 v_conv7_i_i472_1 v_shl_i_i471_1 8;
vpc v_conv7_i_i472_1@uint8 v_conv7_i_i472_1@uint32;
(*   %conv.i.i460.2 = zext i8 %conv5.i.i469.1 to i32 *)
cast v_conv_i_i460_2@uint32 v_conv5_i_i469_1@uint8;
(*   %and.i.i461.2 = and i32 %conv.i.i460.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i461_2 v_conv_i_i460_2 (0x1)@uint32;
(*   %conv1.i.i462.2 = zext i8 %conv7.i.i472.1 to i32 *)
cast v_conv1_i_i462_2@uint32 v_conv7_i_i472_1@uint8;
(*   %mul.i.i463.2 = mul nsw i32 %and.i.i461.2, %conv1.i.i462.2 *)
mul v_mul_i_i463_2 v_and_i_i461_2 v_conv1_i_i462_2;
(*   %conv2.i.i464.2 = zext i8 %conv3.i.i466.1 to i32 *)
cast v_conv2_i_i464_2@uint32 v_conv3_i_i466_1@uint8;
(*   %xor.i.i465.2 = xor i32 %conv2.i.i464.2, %mul.i.i463.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i465_2 v_conv2_i_i464_2 v_mul_i_i463_2;
(*   %conv3.i.i466.2 = trunc i32 %xor.i.i465.2 to i8 *)
split tmp_v_xor_i_i465_2 v_conv3_i_i466_2 v_xor_i_i465_2 8;
vpc v_conv3_i_i466_2@uint8 v_conv3_i_i466_2@uint32;
(*   %conv4.i.i467.2 = zext i8 %conv5.i.i469.1 to i32 *)
cast v_conv4_i_i467_2@uint32 v_conv5_i_i469_1@uint8;
(*   %shr.i.i468.2 = ashr i32 %conv4.i.i467.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i468_2 tmp_to_be_used v_conv4_i_i467_2 1;
(*   %conv5.i.i469.2 = trunc i32 %shr.i.i468.2 to i8 *)
split tmp_v_shr_i_i468_2 v_conv5_i_i469_2 v_shr_i_i468_2 8;
vpc v_conv5_i_i469_2@uint8 v_conv5_i_i469_2@uint32;
(*   %conv6.i.i470.2 = zext i8 %conv7.i.i472.1 to i32 *)
cast v_conv6_i_i470_2@uint32 v_conv7_i_i472_1@uint8;
(*   %shl.i.i471.2 = shl i32 %conv6.i.i470.2, 1 *)
shls discard_107 v_shl_i_i471_2 v_conv6_i_i470_2 1;
(*   %conv7.i.i472.2 = trunc i32 %shl.i.i471.2 to i8 *)
split tmp_v_shl_i_i471_2 v_conv7_i_i472_2 v_shl_i_i471_2 8;
vpc v_conv7_i_i472_2@uint8 v_conv7_i_i472_2@uint32;
(*   %conv.i.i460.3 = zext i8 %conv5.i.i469.2 to i32 *)
cast v_conv_i_i460_3@uint32 v_conv5_i_i469_2@uint8;
(*   %and.i.i461.3 = and i32 %conv.i.i460.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i461_3 v_conv_i_i460_3 (0x1)@uint32;
(*   %conv1.i.i462.3 = zext i8 %conv7.i.i472.2 to i32 *)
cast v_conv1_i_i462_3@uint32 v_conv7_i_i472_2@uint8;
(*   %mul.i.i463.3 = mul nsw i32 %and.i.i461.3, %conv1.i.i462.3 *)
mul v_mul_i_i463_3 v_and_i_i461_3 v_conv1_i_i462_3;
(*   %conv2.i.i464.3 = zext i8 %conv3.i.i466.2 to i32 *)
cast v_conv2_i_i464_3@uint32 v_conv3_i_i466_2@uint8;
(*   %xor.i.i465.3 = xor i32 %conv2.i.i464.3, %mul.i.i463.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i465_3 v_conv2_i_i464_3 v_mul_i_i463_3;
(*   %conv3.i.i466.3 = trunc i32 %xor.i.i465.3 to i8 *)
split tmp_v_xor_i_i465_3 v_conv3_i_i466_3 v_xor_i_i465_3 8;
vpc v_conv3_i_i466_3@uint8 v_conv3_i_i466_3@uint32;
(*   %conv4.i.i467.3 = zext i8 %conv5.i.i469.2 to i32 *)
cast v_conv4_i_i467_3@uint32 v_conv5_i_i469_2@uint8;
(*   %shr.i.i468.3 = ashr i32 %conv4.i.i467.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i468_3 tmp_to_be_used v_conv4_i_i467_3 1;
(*   %conv5.i.i469.3 = trunc i32 %shr.i.i468.3 to i8 *)
split tmp_v_shr_i_i468_3 v_conv5_i_i469_3 v_shr_i_i468_3 8;
vpc v_conv5_i_i469_3@uint8 v_conv5_i_i469_3@uint32;
(*   %conv6.i.i470.3 = zext i8 %conv7.i.i472.2 to i32 *)
cast v_conv6_i_i470_3@uint32 v_conv7_i_i472_2@uint8;
(*   %shl.i.i471.3 = shl i32 %conv6.i.i470.3, 1 *)
shls discard_108 v_shl_i_i471_3 v_conv6_i_i470_3 1;
(*   %conv7.i.i472.3 = trunc i32 %shl.i.i471.3 to i8 *)
split tmp_v_shl_i_i471_3 v_conv7_i_i472_3 v_shl_i_i471_3 8;
vpc v_conv7_i_i472_3@uint8 v_conv7_i_i472_3@uint32;
(*   %conv.i.i460.4 = zext i8 %conv5.i.i469.3 to i32 *)
cast v_conv_i_i460_4@uint32 v_conv5_i_i469_3@uint8;
(*   %and.i.i461.4 = and i32 %conv.i.i460.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i461_4 v_conv_i_i460_4 (0x1)@uint32;
(*   %conv1.i.i462.4 = zext i8 %conv7.i.i472.3 to i32 *)
cast v_conv1_i_i462_4@uint32 v_conv7_i_i472_3@uint8;
(*   %mul.i.i463.4 = mul nsw i32 %and.i.i461.4, %conv1.i.i462.4 *)
mul v_mul_i_i463_4 v_and_i_i461_4 v_conv1_i_i462_4;
(*   %conv2.i.i464.4 = zext i8 %conv3.i.i466.3 to i32 *)
cast v_conv2_i_i464_4@uint32 v_conv3_i_i466_3@uint8;
(*   %xor.i.i465.4 = xor i32 %conv2.i.i464.4, %mul.i.i463.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i465_4 v_conv2_i_i464_4 v_mul_i_i463_4;
(*   %conv3.i.i466.4 = trunc i32 %xor.i.i465.4 to i8 *)
split tmp_v_xor_i_i465_4 v_conv3_i_i466_4 v_xor_i_i465_4 8;
vpc v_conv3_i_i466_4@uint8 v_conv3_i_i466_4@uint32;
(*   %conv4.i.i467.4 = zext i8 %conv5.i.i469.3 to i32 *)
cast v_conv4_i_i467_4@uint32 v_conv5_i_i469_3@uint8;
(*   %shr.i.i468.4 = ashr i32 %conv4.i.i467.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i468_4 tmp_to_be_used v_conv4_i_i467_4 1;
(*   %conv5.i.i469.4 = trunc i32 %shr.i.i468.4 to i8 *)
split tmp_v_shr_i_i468_4 v_conv5_i_i469_4 v_shr_i_i468_4 8;
vpc v_conv5_i_i469_4@uint8 v_conv5_i_i469_4@uint32;
(*   %conv6.i.i470.4 = zext i8 %conv7.i.i472.3 to i32 *)
cast v_conv6_i_i470_4@uint32 v_conv7_i_i472_3@uint8;
(*   %shl.i.i471.4 = shl i32 %conv6.i.i470.4, 1 *)
shls discard_109 v_shl_i_i471_4 v_conv6_i_i470_4 1;
(*   %conv7.i.i472.4 = trunc i32 %shl.i.i471.4 to i8 *)
split tmp_v_shl_i_i471_4 v_conv7_i_i472_4 v_shl_i_i471_4 8;
vpc v_conv7_i_i472_4@uint8 v_conv7_i_i472_4@uint32;
(*   %conv.i.i460.5 = zext i8 %conv5.i.i469.4 to i32 *)
cast v_conv_i_i460_5@uint32 v_conv5_i_i469_4@uint8;
(*   %and.i.i461.5 = and i32 %conv.i.i460.5, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i461_5 v_conv_i_i460_5 (0x1)@uint32;
(*   %conv1.i.i462.5 = zext i8 %conv7.i.i472.4 to i32 *)
cast v_conv1_i_i462_5@uint32 v_conv7_i_i472_4@uint8;
(*   %mul.i.i463.5 = mul nsw i32 %and.i.i461.5, %conv1.i.i462.5 *)
mul v_mul_i_i463_5 v_and_i_i461_5 v_conv1_i_i462_5;
(*   %conv2.i.i464.5 = zext i8 %conv3.i.i466.4 to i32 *)
cast v_conv2_i_i464_5@uint32 v_conv3_i_i466_4@uint8;
(*   %xor.i.i465.5 = xor i32 %conv2.i.i464.5, %mul.i.i463.5 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i465_5 v_conv2_i_i464_5 v_mul_i_i463_5;
(*   %conv3.i.i466.5 = trunc i32 %xor.i.i465.5 to i8 *)
split tmp_v_xor_i_i465_5 v_conv3_i_i466_5 v_xor_i_i465_5 8;
vpc v_conv3_i_i466_5@uint8 v_conv3_i_i466_5@uint32;
(*   %conv4.i.i467.5 = zext i8 %conv5.i.i469.4 to i32 *)
cast v_conv4_i_i467_5@uint32 v_conv5_i_i469_4@uint8;
(*   %shr.i.i468.5 = ashr i32 %conv4.i.i467.5, 1 *)
(* You may need to modify here *)
split v_shr_i_i468_5 tmp_to_be_used v_conv4_i_i467_5 1;
(*   %conv5.i.i469.5 = trunc i32 %shr.i.i468.5 to i8 *)
split tmp_v_shr_i_i468_5 v_conv5_i_i469_5 v_shr_i_i468_5 8;
vpc v_conv5_i_i469_5@uint8 v_conv5_i_i469_5@uint32;
(*   %conv6.i.i470.5 = zext i8 %conv7.i.i472.4 to i32 *)
cast v_conv6_i_i470_5@uint32 v_conv7_i_i472_4@uint8;
(*   %shl.i.i471.5 = shl i32 %conv6.i.i470.5, 1 *)
shls discard_110 v_shl_i_i471_5 v_conv6_i_i470_5 1;
(*   %conv7.i.i472.5 = trunc i32 %shl.i.i471.5 to i8 *)
split tmp_v_shl_i_i471_5 v_conv7_i_i472_5 v_shl_i_i471_5 8;
vpc v_conv7_i_i472_5@uint8 v_conv7_i_i472_5@uint32;
(*   %conv.i.i460.6 = zext i8 %conv5.i.i469.5 to i32 *)
cast v_conv_i_i460_6@uint32 v_conv5_i_i469_5@uint8;
(*   %and.i.i461.6 = and i32 %conv.i.i460.6, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i461_6 v_conv_i_i460_6 (0x1)@uint32;
(*   %conv1.i.i462.6 = zext i8 %conv7.i.i472.5 to i32 *)
cast v_conv1_i_i462_6@uint32 v_conv7_i_i472_5@uint8;
(*   %mul.i.i463.6 = mul nsw i32 %and.i.i461.6, %conv1.i.i462.6 *)
mul v_mul_i_i463_6 v_and_i_i461_6 v_conv1_i_i462_6;
(*   %conv2.i.i464.6 = zext i8 %conv3.i.i466.5 to i32 *)
cast v_conv2_i_i464_6@uint32 v_conv3_i_i466_5@uint8;
(*   %xor.i.i465.6 = xor i32 %conv2.i.i464.6, %mul.i.i463.6 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i465_6 v_conv2_i_i464_6 v_mul_i_i463_6;
(*   %conv3.i.i466.6 = trunc i32 %xor.i.i465.6 to i8 *)
split tmp_v_xor_i_i465_6 v_conv3_i_i466_6 v_xor_i_i465_6 8;
vpc v_conv3_i_i466_6@uint8 v_conv3_i_i466_6@uint32;
(*   %conv4.i.i467.6 = zext i8 %conv5.i.i469.5 to i32 *)
cast v_conv4_i_i467_6@uint32 v_conv5_i_i469_5@uint8;
(*   %shr.i.i468.6 = ashr i32 %conv4.i.i467.6, 1 *)
(* You may need to modify here *)
split v_shr_i_i468_6 tmp_to_be_used v_conv4_i_i467_6 1;
(*   %conv5.i.i469.6 = trunc i32 %shr.i.i468.6 to i8 *)
split tmp_v_shr_i_i468_6 v_conv5_i_i469_6 v_shr_i_i468_6 8;
vpc v_conv5_i_i469_6@uint8 v_conv5_i_i469_6@uint32;
(*   %conv6.i.i470.6 = zext i8 %conv7.i.i472.5 to i32 *)
cast v_conv6_i_i470_6@uint32 v_conv7_i_i472_5@uint8;
(*   %shl.i.i471.6 = shl i32 %conv6.i.i470.6, 1 *)
shls discard_111 v_shl_i_i471_6 v_conv6_i_i470_6 1;
(*   %conv7.i.i472.6 = trunc i32 %shl.i.i471.6 to i8 *)
split tmp_v_shl_i_i471_6 v_conv7_i_i472_6 v_shl_i_i471_6 8;
vpc v_conv7_i_i472_6@uint8 v_conv7_i_i472_6@uint32;
(*   %conv.i.i460.7 = zext i8 %conv5.i.i469.6 to i32 *)
cast v_conv_i_i460_7@uint32 v_conv5_i_i469_6@uint8;
(*   %and.i.i461.7 = and i32 %conv.i.i460.7, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i461_7 v_conv_i_i460_7 (0x1)@uint32;
(*   %conv1.i.i462.7 = zext i8 %conv7.i.i472.6 to i32 *)
cast v_conv1_i_i462_7@uint32 v_conv7_i_i472_6@uint8;
(*   %mul.i.i463.7 = mul nsw i32 %and.i.i461.7, %conv1.i.i462.7 *)
mul v_mul_i_i463_7 v_and_i_i461_7 v_conv1_i_i462_7;
(*   %conv2.i.i464.7 = zext i8 %conv3.i.i466.6 to i32 *)
cast v_conv2_i_i464_7@uint32 v_conv3_i_i466_6@uint8;
(*   %xor.i.i465.7 = xor i32 %conv2.i.i464.7, %mul.i.i463.7 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i465_7 v_conv2_i_i464_7 v_mul_i_i463_7;
(*   %conv3.i.i466.7 = trunc i32 %xor.i.i465.7 to i8 *)
split tmp_v_xor_i_i465_7 v_conv3_i_i466_7 v_xor_i_i465_7 8;
vpc v_conv3_i_i466_7@uint8 v_conv3_i_i466_7@uint32;
(*   store i8 %conv3.i.i466.7, i8* %add.ptr10, align 1 *)
mov cc_20 v_conv3_i_i466_7;
(*   %arrayidx.i452.1 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %32 = load i8, i8* %arrayidx.i452.1, align 1 *)
mov v32 a_1;
(*   %arrayidx4.i456.1 = getelementptr inbounds i8, i8* %b, i64 3 *)
(*   %33 = load i8, i8* %arrayidx4.i456.1, align 1 *)
mov v33 b_3;
(*   %conv.i.i460.1216 = zext i8 %33 to i32 *)
cast v_conv_i_i460_1216@uint32 v33@uint8;
(*   %and.i.i461.1217 = and i32 %conv.i.i460.1216, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i461_1217 v_conv_i_i460_1216 (0x1)@uint32;
(*   %conv1.i.i462.1218 = zext i8 %32 to i32 *)
cast v_conv1_i_i462_1218@uint32 v32@uint8;
(*   %mul.i.i463.1219 = mul nsw i32 %and.i.i461.1217, %conv1.i.i462.1218 *)
mul v_mul_i_i463_1219 v_and_i_i461_1217 v_conv1_i_i462_1218;
(*   %conv3.i.i466.1220 = trunc i32 %mul.i.i463.1219 to i8 *)
split tmp_v_mul_i_i463_1219 v_conv3_i_i466_1220 v_mul_i_i463_1219 8;
vpc v_conv3_i_i466_1220@uint8 v_conv3_i_i466_1220@uint32;
(*   %conv4.i.i467.1221 = zext i8 %33 to i32 *)
cast v_conv4_i_i467_1221@uint32 v33@uint8;
(*   %shr.i.i468.1222 = ashr i32 %conv4.i.i467.1221, 1 *)
(* You may need to modify here *)
split v_shr_i_i468_1222 tmp_to_be_used v_conv4_i_i467_1221 1;
(*   %conv5.i.i469.1223 = trunc i32 %shr.i.i468.1222 to i8 *)
split tmp_v_shr_i_i468_1222 v_conv5_i_i469_1223 v_shr_i_i468_1222 8;
vpc v_conv5_i_i469_1223@uint8 v_conv5_i_i469_1223@uint32;
(*   %conv6.i.i470.1224 = zext i8 %32 to i32 *)
cast v_conv6_i_i470_1224@uint32 v32@uint8;
(*   %shl.i.i471.1225 = shl i32 %conv6.i.i470.1224, 1 *)
shls discard_112 v_shl_i_i471_1225 v_conv6_i_i470_1224 1;
(*   %conv7.i.i472.1226 = trunc i32 %shl.i.i471.1225 to i8 *)
split tmp_v_shl_i_i471_1225 v_conv7_i_i472_1226 v_shl_i_i471_1225 8;
vpc v_conv7_i_i472_1226@uint8 v_conv7_i_i472_1226@uint32;
(*   %conv.i.i460.1.1 = zext i8 %conv5.i.i469.1223 to i32 *)
cast v_conv_i_i460_1_1@uint32 v_conv5_i_i469_1223@uint8;
(*   %and.i.i461.1.1 = and i32 %conv.i.i460.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i461_1_1 v_conv_i_i460_1_1 (0x1)@uint32;
(*   %conv1.i.i462.1.1 = zext i8 %conv7.i.i472.1226 to i32 *)
cast v_conv1_i_i462_1_1@uint32 v_conv7_i_i472_1226@uint8;
(*   %mul.i.i463.1.1 = mul nsw i32 %and.i.i461.1.1, %conv1.i.i462.1.1 *)
mul v_mul_i_i463_1_1 v_and_i_i461_1_1 v_conv1_i_i462_1_1;
(*   %conv2.i.i464.1.1 = zext i8 %conv3.i.i466.1220 to i32 *)
cast v_conv2_i_i464_1_1@uint32 v_conv3_i_i466_1220@uint8;
(*   %xor.i.i465.1.1 = xor i32 %conv2.i.i464.1.1, %mul.i.i463.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i465_1_1 v_conv2_i_i464_1_1 v_mul_i_i463_1_1;
(*   %conv3.i.i466.1.1 = trunc i32 %xor.i.i465.1.1 to i8 *)
split tmp_v_xor_i_i465_1_1 v_conv3_i_i466_1_1 v_xor_i_i465_1_1 8;
vpc v_conv3_i_i466_1_1@uint8 v_conv3_i_i466_1_1@uint32;
(*   %conv4.i.i467.1.1 = zext i8 %conv5.i.i469.1223 to i32 *)
cast v_conv4_i_i467_1_1@uint32 v_conv5_i_i469_1223@uint8;
(*   %shr.i.i468.1.1 = ashr i32 %conv4.i.i467.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i468_1_1 tmp_to_be_used v_conv4_i_i467_1_1 1;
(*   %conv5.i.i469.1.1 = trunc i32 %shr.i.i468.1.1 to i8 *)
split tmp_v_shr_i_i468_1_1 v_conv5_i_i469_1_1 v_shr_i_i468_1_1 8;
vpc v_conv5_i_i469_1_1@uint8 v_conv5_i_i469_1_1@uint32;
(*   %conv6.i.i470.1.1 = zext i8 %conv7.i.i472.1226 to i32 *)
cast v_conv6_i_i470_1_1@uint32 v_conv7_i_i472_1226@uint8;
(*   %shl.i.i471.1.1 = shl i32 %conv6.i.i470.1.1, 1 *)
shls discard_113 v_shl_i_i471_1_1 v_conv6_i_i470_1_1 1;
(*   %conv7.i.i472.1.1 = trunc i32 %shl.i.i471.1.1 to i8 *)
split tmp_v_shl_i_i471_1_1 v_conv7_i_i472_1_1 v_shl_i_i471_1_1 8;
vpc v_conv7_i_i472_1_1@uint8 v_conv7_i_i472_1_1@uint32;
(*   %conv.i.i460.2.1 = zext i8 %conv5.i.i469.1.1 to i32 *)
cast v_conv_i_i460_2_1@uint32 v_conv5_i_i469_1_1@uint8;
(*   %and.i.i461.2.1 = and i32 %conv.i.i460.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i461_2_1 v_conv_i_i460_2_1 (0x1)@uint32;
(*   %conv1.i.i462.2.1 = zext i8 %conv7.i.i472.1.1 to i32 *)
cast v_conv1_i_i462_2_1@uint32 v_conv7_i_i472_1_1@uint8;
(*   %mul.i.i463.2.1 = mul nsw i32 %and.i.i461.2.1, %conv1.i.i462.2.1 *)
mul v_mul_i_i463_2_1 v_and_i_i461_2_1 v_conv1_i_i462_2_1;
(*   %conv2.i.i464.2.1 = zext i8 %conv3.i.i466.1.1 to i32 *)
cast v_conv2_i_i464_2_1@uint32 v_conv3_i_i466_1_1@uint8;
(*   %xor.i.i465.2.1 = xor i32 %conv2.i.i464.2.1, %mul.i.i463.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i465_2_1 v_conv2_i_i464_2_1 v_mul_i_i463_2_1;
(*   %conv3.i.i466.2.1 = trunc i32 %xor.i.i465.2.1 to i8 *)
split tmp_v_xor_i_i465_2_1 v_conv3_i_i466_2_1 v_xor_i_i465_2_1 8;
vpc v_conv3_i_i466_2_1@uint8 v_conv3_i_i466_2_1@uint32;
(*   %conv4.i.i467.2.1 = zext i8 %conv5.i.i469.1.1 to i32 *)
cast v_conv4_i_i467_2_1@uint32 v_conv5_i_i469_1_1@uint8;
(*   %shr.i.i468.2.1 = ashr i32 %conv4.i.i467.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i468_2_1 tmp_to_be_used v_conv4_i_i467_2_1 1;
(*   %conv5.i.i469.2.1 = trunc i32 %shr.i.i468.2.1 to i8 *)
split tmp_v_shr_i_i468_2_1 v_conv5_i_i469_2_1 v_shr_i_i468_2_1 8;
vpc v_conv5_i_i469_2_1@uint8 v_conv5_i_i469_2_1@uint32;
(*   %conv6.i.i470.2.1 = zext i8 %conv7.i.i472.1.1 to i32 *)
cast v_conv6_i_i470_2_1@uint32 v_conv7_i_i472_1_1@uint8;
(*   %shl.i.i471.2.1 = shl i32 %conv6.i.i470.2.1, 1 *)
shls discard_114 v_shl_i_i471_2_1 v_conv6_i_i470_2_1 1;
(*   %conv7.i.i472.2.1 = trunc i32 %shl.i.i471.2.1 to i8 *)
split tmp_v_shl_i_i471_2_1 v_conv7_i_i472_2_1 v_shl_i_i471_2_1 8;
vpc v_conv7_i_i472_2_1@uint8 v_conv7_i_i472_2_1@uint32;
(*   %conv.i.i460.3.1 = zext i8 %conv5.i.i469.2.1 to i32 *)
cast v_conv_i_i460_3_1@uint32 v_conv5_i_i469_2_1@uint8;
(*   %and.i.i461.3.1 = and i32 %conv.i.i460.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i461_3_1 v_conv_i_i460_3_1 (0x1)@uint32;
(*   %conv1.i.i462.3.1 = zext i8 %conv7.i.i472.2.1 to i32 *)
cast v_conv1_i_i462_3_1@uint32 v_conv7_i_i472_2_1@uint8;
(*   %mul.i.i463.3.1 = mul nsw i32 %and.i.i461.3.1, %conv1.i.i462.3.1 *)
mul v_mul_i_i463_3_1 v_and_i_i461_3_1 v_conv1_i_i462_3_1;
(*   %conv2.i.i464.3.1 = zext i8 %conv3.i.i466.2.1 to i32 *)
cast v_conv2_i_i464_3_1@uint32 v_conv3_i_i466_2_1@uint8;
(*   %xor.i.i465.3.1 = xor i32 %conv2.i.i464.3.1, %mul.i.i463.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i465_3_1 v_conv2_i_i464_3_1 v_mul_i_i463_3_1;
(*   %conv3.i.i466.3.1 = trunc i32 %xor.i.i465.3.1 to i8 *)
split tmp_v_xor_i_i465_3_1 v_conv3_i_i466_3_1 v_xor_i_i465_3_1 8;
vpc v_conv3_i_i466_3_1@uint8 v_conv3_i_i466_3_1@uint32;
(*   %conv4.i.i467.3.1 = zext i8 %conv5.i.i469.2.1 to i32 *)
cast v_conv4_i_i467_3_1@uint32 v_conv5_i_i469_2_1@uint8;
(*   %shr.i.i468.3.1 = ashr i32 %conv4.i.i467.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i468_3_1 tmp_to_be_used v_conv4_i_i467_3_1 1;
(*   %conv5.i.i469.3.1 = trunc i32 %shr.i.i468.3.1 to i8 *)
split tmp_v_shr_i_i468_3_1 v_conv5_i_i469_3_1 v_shr_i_i468_3_1 8;
vpc v_conv5_i_i469_3_1@uint8 v_conv5_i_i469_3_1@uint32;
(*   %conv6.i.i470.3.1 = zext i8 %conv7.i.i472.2.1 to i32 *)
cast v_conv6_i_i470_3_1@uint32 v_conv7_i_i472_2_1@uint8;
(*   %shl.i.i471.3.1 = shl i32 %conv6.i.i470.3.1, 1 *)
shls discard_115 v_shl_i_i471_3_1 v_conv6_i_i470_3_1 1;
(*   %conv7.i.i472.3.1 = trunc i32 %shl.i.i471.3.1 to i8 *)
split tmp_v_shl_i_i471_3_1 v_conv7_i_i472_3_1 v_shl_i_i471_3_1 8;
vpc v_conv7_i_i472_3_1@uint8 v_conv7_i_i472_3_1@uint32;
(*   %conv.i.i460.4.1 = zext i8 %conv5.i.i469.3.1 to i32 *)
cast v_conv_i_i460_4_1@uint32 v_conv5_i_i469_3_1@uint8;
(*   %and.i.i461.4.1 = and i32 %conv.i.i460.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i461_4_1 v_conv_i_i460_4_1 (0x1)@uint32;
(*   %conv1.i.i462.4.1 = zext i8 %conv7.i.i472.3.1 to i32 *)
cast v_conv1_i_i462_4_1@uint32 v_conv7_i_i472_3_1@uint8;
(*   %mul.i.i463.4.1 = mul nsw i32 %and.i.i461.4.1, %conv1.i.i462.4.1 *)
mul v_mul_i_i463_4_1 v_and_i_i461_4_1 v_conv1_i_i462_4_1;
(*   %conv2.i.i464.4.1 = zext i8 %conv3.i.i466.3.1 to i32 *)
cast v_conv2_i_i464_4_1@uint32 v_conv3_i_i466_3_1@uint8;
(*   %xor.i.i465.4.1 = xor i32 %conv2.i.i464.4.1, %mul.i.i463.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i465_4_1 v_conv2_i_i464_4_1 v_mul_i_i463_4_1;
(*   %conv3.i.i466.4.1 = trunc i32 %xor.i.i465.4.1 to i8 *)
split tmp_v_xor_i_i465_4_1 v_conv3_i_i466_4_1 v_xor_i_i465_4_1 8;
vpc v_conv3_i_i466_4_1@uint8 v_conv3_i_i466_4_1@uint32;
(*   %conv4.i.i467.4.1 = zext i8 %conv5.i.i469.3.1 to i32 *)
cast v_conv4_i_i467_4_1@uint32 v_conv5_i_i469_3_1@uint8;
(*   %shr.i.i468.4.1 = ashr i32 %conv4.i.i467.4.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i468_4_1 tmp_to_be_used v_conv4_i_i467_4_1 1;
(*   %conv5.i.i469.4.1 = trunc i32 %shr.i.i468.4.1 to i8 *)
split tmp_v_shr_i_i468_4_1 v_conv5_i_i469_4_1 v_shr_i_i468_4_1 8;
vpc v_conv5_i_i469_4_1@uint8 v_conv5_i_i469_4_1@uint32;
(*   %conv6.i.i470.4.1 = zext i8 %conv7.i.i472.3.1 to i32 *)
cast v_conv6_i_i470_4_1@uint32 v_conv7_i_i472_3_1@uint8;
(*   %shl.i.i471.4.1 = shl i32 %conv6.i.i470.4.1, 1 *)
shls discard_116 v_shl_i_i471_4_1 v_conv6_i_i470_4_1 1;
(*   %conv7.i.i472.4.1 = trunc i32 %shl.i.i471.4.1 to i8 *)
split tmp_v_shl_i_i471_4_1 v_conv7_i_i472_4_1 v_shl_i_i471_4_1 8;
vpc v_conv7_i_i472_4_1@uint8 v_conv7_i_i472_4_1@uint32;
(*   %conv.i.i460.5.1 = zext i8 %conv5.i.i469.4.1 to i32 *)
cast v_conv_i_i460_5_1@uint32 v_conv5_i_i469_4_1@uint8;
(*   %and.i.i461.5.1 = and i32 %conv.i.i460.5.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i461_5_1 v_conv_i_i460_5_1 (0x1)@uint32;
(*   %conv1.i.i462.5.1 = zext i8 %conv7.i.i472.4.1 to i32 *)
cast v_conv1_i_i462_5_1@uint32 v_conv7_i_i472_4_1@uint8;
(*   %mul.i.i463.5.1 = mul nsw i32 %and.i.i461.5.1, %conv1.i.i462.5.1 *)
mul v_mul_i_i463_5_1 v_and_i_i461_5_1 v_conv1_i_i462_5_1;
(*   %conv2.i.i464.5.1 = zext i8 %conv3.i.i466.4.1 to i32 *)
cast v_conv2_i_i464_5_1@uint32 v_conv3_i_i466_4_1@uint8;
(*   %xor.i.i465.5.1 = xor i32 %conv2.i.i464.5.1, %mul.i.i463.5.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i465_5_1 v_conv2_i_i464_5_1 v_mul_i_i463_5_1;
(*   %conv3.i.i466.5.1 = trunc i32 %xor.i.i465.5.1 to i8 *)
split tmp_v_xor_i_i465_5_1 v_conv3_i_i466_5_1 v_xor_i_i465_5_1 8;
vpc v_conv3_i_i466_5_1@uint8 v_conv3_i_i466_5_1@uint32;
(*   %conv4.i.i467.5.1 = zext i8 %conv5.i.i469.4.1 to i32 *)
cast v_conv4_i_i467_5_1@uint32 v_conv5_i_i469_4_1@uint8;
(*   %shr.i.i468.5.1 = ashr i32 %conv4.i.i467.5.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i468_5_1 tmp_to_be_used v_conv4_i_i467_5_1 1;
(*   %conv5.i.i469.5.1 = trunc i32 %shr.i.i468.5.1 to i8 *)
split tmp_v_shr_i_i468_5_1 v_conv5_i_i469_5_1 v_shr_i_i468_5_1 8;
vpc v_conv5_i_i469_5_1@uint8 v_conv5_i_i469_5_1@uint32;
(*   %conv6.i.i470.5.1 = zext i8 %conv7.i.i472.4.1 to i32 *)
cast v_conv6_i_i470_5_1@uint32 v_conv7_i_i472_4_1@uint8;
(*   %shl.i.i471.5.1 = shl i32 %conv6.i.i470.5.1, 1 *)
shls discard_117 v_shl_i_i471_5_1 v_conv6_i_i470_5_1 1;
(*   %conv7.i.i472.5.1 = trunc i32 %shl.i.i471.5.1 to i8 *)
split tmp_v_shl_i_i471_5_1 v_conv7_i_i472_5_1 v_shl_i_i471_5_1 8;
vpc v_conv7_i_i472_5_1@uint8 v_conv7_i_i472_5_1@uint32;
(*   %conv.i.i460.6.1 = zext i8 %conv5.i.i469.5.1 to i32 *)
cast v_conv_i_i460_6_1@uint32 v_conv5_i_i469_5_1@uint8;
(*   %and.i.i461.6.1 = and i32 %conv.i.i460.6.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i461_6_1 v_conv_i_i460_6_1 (0x1)@uint32;
(*   %conv1.i.i462.6.1 = zext i8 %conv7.i.i472.5.1 to i32 *)
cast v_conv1_i_i462_6_1@uint32 v_conv7_i_i472_5_1@uint8;
(*   %mul.i.i463.6.1 = mul nsw i32 %and.i.i461.6.1, %conv1.i.i462.6.1 *)
mul v_mul_i_i463_6_1 v_and_i_i461_6_1 v_conv1_i_i462_6_1;
(*   %conv2.i.i464.6.1 = zext i8 %conv3.i.i466.5.1 to i32 *)
cast v_conv2_i_i464_6_1@uint32 v_conv3_i_i466_5_1@uint8;
(*   %xor.i.i465.6.1 = xor i32 %conv2.i.i464.6.1, %mul.i.i463.6.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i465_6_1 v_conv2_i_i464_6_1 v_mul_i_i463_6_1;
(*   %conv3.i.i466.6.1 = trunc i32 %xor.i.i465.6.1 to i8 *)
split tmp_v_xor_i_i465_6_1 v_conv3_i_i466_6_1 v_xor_i_i465_6_1 8;
vpc v_conv3_i_i466_6_1@uint8 v_conv3_i_i466_6_1@uint32;
(*   %conv4.i.i467.6.1 = zext i8 %conv5.i.i469.5.1 to i32 *)
cast v_conv4_i_i467_6_1@uint32 v_conv5_i_i469_5_1@uint8;
(*   %shr.i.i468.6.1 = ashr i32 %conv4.i.i467.6.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i468_6_1 tmp_to_be_used v_conv4_i_i467_6_1 1;
(*   %conv5.i.i469.6.1 = trunc i32 %shr.i.i468.6.1 to i8 *)
split tmp_v_shr_i_i468_6_1 v_conv5_i_i469_6_1 v_shr_i_i468_6_1 8;
vpc v_conv5_i_i469_6_1@uint8 v_conv5_i_i469_6_1@uint32;
(*   %conv6.i.i470.6.1 = zext i8 %conv7.i.i472.5.1 to i32 *)
cast v_conv6_i_i470_6_1@uint32 v_conv7_i_i472_5_1@uint8;
(*   %shl.i.i471.6.1 = shl i32 %conv6.i.i470.6.1, 1 *)
shls discard_118 v_shl_i_i471_6_1 v_conv6_i_i470_6_1 1;
(*   %conv7.i.i472.6.1 = trunc i32 %shl.i.i471.6.1 to i8 *)
split tmp_v_shl_i_i471_6_1 v_conv7_i_i472_6_1 v_shl_i_i471_6_1 8;
vpc v_conv7_i_i472_6_1@uint8 v_conv7_i_i472_6_1@uint32;
(*   %conv.i.i460.7.1 = zext i8 %conv5.i.i469.6.1 to i32 *)
cast v_conv_i_i460_7_1@uint32 v_conv5_i_i469_6_1@uint8;
(*   %and.i.i461.7.1 = and i32 %conv.i.i460.7.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i461_7_1 v_conv_i_i460_7_1 (0x1)@uint32;
(*   %conv1.i.i462.7.1 = zext i8 %conv7.i.i472.6.1 to i32 *)
cast v_conv1_i_i462_7_1@uint32 v_conv7_i_i472_6_1@uint8;
(*   %mul.i.i463.7.1 = mul nsw i32 %and.i.i461.7.1, %conv1.i.i462.7.1 *)
mul v_mul_i_i463_7_1 v_and_i_i461_7_1 v_conv1_i_i462_7_1;
(*   %conv2.i.i464.7.1 = zext i8 %conv3.i.i466.6.1 to i32 *)
cast v_conv2_i_i464_7_1@uint32 v_conv3_i_i466_6_1@uint8;
(*   %xor.i.i465.7.1 = xor i32 %conv2.i.i464.7.1, %mul.i.i463.7.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i465_7_1 v_conv2_i_i464_7_1 v_mul_i_i463_7_1;
(*   %conv3.i.i466.7.1 = trunc i32 %xor.i.i465.7.1 to i8 *)
split tmp_v_xor_i_i465_7_1 v_conv3_i_i466_7_1 v_xor_i_i465_7_1 8;
vpc v_conv3_i_i466_7_1@uint8 v_conv3_i_i466_7_1@uint32;
(*   %arrayidx6.i476.1 = getelementptr inbounds i8, i8* %add.ptr10, i64 1 *)
(*   store i8 %conv3.i.i466.7.1, i8* %arrayidx6.i476.1, align 1 *)
mov cc_21 v_conv3_i_i466_7_1;
(*   %arrayidx.i452.2 = getelementptr inbounds i8, i8* %a, i64 2 *)
(*   %34 = load i8, i8* %arrayidx.i452.2, align 1 *)
mov v34 a_2;
(*   %arrayidx4.i456.2 = getelementptr inbounds i8, i8* %b, i64 4 *)
(*   %35 = load i8, i8* %arrayidx4.i456.2, align 1 *)
mov v35 b_4;
(*   %conv.i.i460.2227 = zext i8 %35 to i32 *)
cast v_conv_i_i460_2227@uint32 v35@uint8;
(*   %and.i.i461.2228 = and i32 %conv.i.i460.2227, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i461_2228 v_conv_i_i460_2227 (0x1)@uint32;
(*   %conv1.i.i462.2229 = zext i8 %34 to i32 *)
cast v_conv1_i_i462_2229@uint32 v34@uint8;
(*   %mul.i.i463.2230 = mul nsw i32 %and.i.i461.2228, %conv1.i.i462.2229 *)
mul v_mul_i_i463_2230 v_and_i_i461_2228 v_conv1_i_i462_2229;
(*   %conv3.i.i466.2231 = trunc i32 %mul.i.i463.2230 to i8 *)
split tmp_v_mul_i_i463_2230 v_conv3_i_i466_2231 v_mul_i_i463_2230 8;
vpc v_conv3_i_i466_2231@uint8 v_conv3_i_i466_2231@uint32;
(*   %conv4.i.i467.2232 = zext i8 %35 to i32 *)
cast v_conv4_i_i467_2232@uint32 v35@uint8;
(*   %shr.i.i468.2233 = ashr i32 %conv4.i.i467.2232, 1 *)
(* You may need to modify here *)
split v_shr_i_i468_2233 tmp_to_be_used v_conv4_i_i467_2232 1;
(*   %conv5.i.i469.2234 = trunc i32 %shr.i.i468.2233 to i8 *)
split tmp_v_shr_i_i468_2233 v_conv5_i_i469_2234 v_shr_i_i468_2233 8;
vpc v_conv5_i_i469_2234@uint8 v_conv5_i_i469_2234@uint32;
(*   %conv6.i.i470.2235 = zext i8 %34 to i32 *)
cast v_conv6_i_i470_2235@uint32 v34@uint8;
(*   %shl.i.i471.2236 = shl i32 %conv6.i.i470.2235, 1 *)
shls discard_119 v_shl_i_i471_2236 v_conv6_i_i470_2235 1;
(*   %conv7.i.i472.2237 = trunc i32 %shl.i.i471.2236 to i8 *)
split tmp_v_shl_i_i471_2236 v_conv7_i_i472_2237 v_shl_i_i471_2236 8;
vpc v_conv7_i_i472_2237@uint8 v_conv7_i_i472_2237@uint32;
(*   %conv.i.i460.1.2 = zext i8 %conv5.i.i469.2234 to i32 *)
cast v_conv_i_i460_1_2@uint32 v_conv5_i_i469_2234@uint8;
(*   %and.i.i461.1.2 = and i32 %conv.i.i460.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i461_1_2 v_conv_i_i460_1_2 (0x1)@uint32;
(*   %conv1.i.i462.1.2 = zext i8 %conv7.i.i472.2237 to i32 *)
cast v_conv1_i_i462_1_2@uint32 v_conv7_i_i472_2237@uint8;
(*   %mul.i.i463.1.2 = mul nsw i32 %and.i.i461.1.2, %conv1.i.i462.1.2 *)
mul v_mul_i_i463_1_2 v_and_i_i461_1_2 v_conv1_i_i462_1_2;
(*   %conv2.i.i464.1.2 = zext i8 %conv3.i.i466.2231 to i32 *)
cast v_conv2_i_i464_1_2@uint32 v_conv3_i_i466_2231@uint8;
(*   %xor.i.i465.1.2 = xor i32 %conv2.i.i464.1.2, %mul.i.i463.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i465_1_2 v_conv2_i_i464_1_2 v_mul_i_i463_1_2;
(*   %conv3.i.i466.1.2 = trunc i32 %xor.i.i465.1.2 to i8 *)
split tmp_v_xor_i_i465_1_2 v_conv3_i_i466_1_2 v_xor_i_i465_1_2 8;
vpc v_conv3_i_i466_1_2@uint8 v_conv3_i_i466_1_2@uint32;
(*   %conv4.i.i467.1.2 = zext i8 %conv5.i.i469.2234 to i32 *)
cast v_conv4_i_i467_1_2@uint32 v_conv5_i_i469_2234@uint8;
(*   %shr.i.i468.1.2 = ashr i32 %conv4.i.i467.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i468_1_2 tmp_to_be_used v_conv4_i_i467_1_2 1;
(*   %conv5.i.i469.1.2 = trunc i32 %shr.i.i468.1.2 to i8 *)
split tmp_v_shr_i_i468_1_2 v_conv5_i_i469_1_2 v_shr_i_i468_1_2 8;
vpc v_conv5_i_i469_1_2@uint8 v_conv5_i_i469_1_2@uint32;
(*   %conv6.i.i470.1.2 = zext i8 %conv7.i.i472.2237 to i32 *)
cast v_conv6_i_i470_1_2@uint32 v_conv7_i_i472_2237@uint8;
(*   %shl.i.i471.1.2 = shl i32 %conv6.i.i470.1.2, 1 *)
shls discard_120 v_shl_i_i471_1_2 v_conv6_i_i470_1_2 1;
(*   %conv7.i.i472.1.2 = trunc i32 %shl.i.i471.1.2 to i8 *)
split tmp_v_shl_i_i471_1_2 v_conv7_i_i472_1_2 v_shl_i_i471_1_2 8;
vpc v_conv7_i_i472_1_2@uint8 v_conv7_i_i472_1_2@uint32;
(*   %conv.i.i460.2.2 = zext i8 %conv5.i.i469.1.2 to i32 *)
cast v_conv_i_i460_2_2@uint32 v_conv5_i_i469_1_2@uint8;
(*   %and.i.i461.2.2 = and i32 %conv.i.i460.2.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i461_2_2 v_conv_i_i460_2_2 (0x1)@uint32;
(*   %conv1.i.i462.2.2 = zext i8 %conv7.i.i472.1.2 to i32 *)
cast v_conv1_i_i462_2_2@uint32 v_conv7_i_i472_1_2@uint8;
(*   %mul.i.i463.2.2 = mul nsw i32 %and.i.i461.2.2, %conv1.i.i462.2.2 *)
mul v_mul_i_i463_2_2 v_and_i_i461_2_2 v_conv1_i_i462_2_2;
(*   %conv2.i.i464.2.2 = zext i8 %conv3.i.i466.1.2 to i32 *)
cast v_conv2_i_i464_2_2@uint32 v_conv3_i_i466_1_2@uint8;
(*   %xor.i.i465.2.2 = xor i32 %conv2.i.i464.2.2, %mul.i.i463.2.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i465_2_2 v_conv2_i_i464_2_2 v_mul_i_i463_2_2;
(*   %conv3.i.i466.2.2 = trunc i32 %xor.i.i465.2.2 to i8 *)
split tmp_v_xor_i_i465_2_2 v_conv3_i_i466_2_2 v_xor_i_i465_2_2 8;
vpc v_conv3_i_i466_2_2@uint8 v_conv3_i_i466_2_2@uint32;
(*   %conv4.i.i467.2.2 = zext i8 %conv5.i.i469.1.2 to i32 *)
cast v_conv4_i_i467_2_2@uint32 v_conv5_i_i469_1_2@uint8;
(*   %shr.i.i468.2.2 = ashr i32 %conv4.i.i467.2.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i468_2_2 tmp_to_be_used v_conv4_i_i467_2_2 1;
(*   %conv5.i.i469.2.2 = trunc i32 %shr.i.i468.2.2 to i8 *)
split tmp_v_shr_i_i468_2_2 v_conv5_i_i469_2_2 v_shr_i_i468_2_2 8;
vpc v_conv5_i_i469_2_2@uint8 v_conv5_i_i469_2_2@uint32;
(*   %conv6.i.i470.2.2 = zext i8 %conv7.i.i472.1.2 to i32 *)
cast v_conv6_i_i470_2_2@uint32 v_conv7_i_i472_1_2@uint8;
(*   %shl.i.i471.2.2 = shl i32 %conv6.i.i470.2.2, 1 *)
shls discard_121 v_shl_i_i471_2_2 v_conv6_i_i470_2_2 1;
(*   %conv7.i.i472.2.2 = trunc i32 %shl.i.i471.2.2 to i8 *)
split tmp_v_shl_i_i471_2_2 v_conv7_i_i472_2_2 v_shl_i_i471_2_2 8;
vpc v_conv7_i_i472_2_2@uint8 v_conv7_i_i472_2_2@uint32;
(*   %conv.i.i460.3.2 = zext i8 %conv5.i.i469.2.2 to i32 *)
cast v_conv_i_i460_3_2@uint32 v_conv5_i_i469_2_2@uint8;
(*   %and.i.i461.3.2 = and i32 %conv.i.i460.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i461_3_2 v_conv_i_i460_3_2 (0x1)@uint32;
(*   %conv1.i.i462.3.2 = zext i8 %conv7.i.i472.2.2 to i32 *)
cast v_conv1_i_i462_3_2@uint32 v_conv7_i_i472_2_2@uint8;
(*   %mul.i.i463.3.2 = mul nsw i32 %and.i.i461.3.2, %conv1.i.i462.3.2 *)
mul v_mul_i_i463_3_2 v_and_i_i461_3_2 v_conv1_i_i462_3_2;
(*   %conv2.i.i464.3.2 = zext i8 %conv3.i.i466.2.2 to i32 *)
cast v_conv2_i_i464_3_2@uint32 v_conv3_i_i466_2_2@uint8;
(*   %xor.i.i465.3.2 = xor i32 %conv2.i.i464.3.2, %mul.i.i463.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i465_3_2 v_conv2_i_i464_3_2 v_mul_i_i463_3_2;
(*   %conv3.i.i466.3.2 = trunc i32 %xor.i.i465.3.2 to i8 *)
split tmp_v_xor_i_i465_3_2 v_conv3_i_i466_3_2 v_xor_i_i465_3_2 8;
vpc v_conv3_i_i466_3_2@uint8 v_conv3_i_i466_3_2@uint32;
(*   %conv4.i.i467.3.2 = zext i8 %conv5.i.i469.2.2 to i32 *)
cast v_conv4_i_i467_3_2@uint32 v_conv5_i_i469_2_2@uint8;
(*   %shr.i.i468.3.2 = ashr i32 %conv4.i.i467.3.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i468_3_2 tmp_to_be_used v_conv4_i_i467_3_2 1;
(*   %conv5.i.i469.3.2 = trunc i32 %shr.i.i468.3.2 to i8 *)
split tmp_v_shr_i_i468_3_2 v_conv5_i_i469_3_2 v_shr_i_i468_3_2 8;
vpc v_conv5_i_i469_3_2@uint8 v_conv5_i_i469_3_2@uint32;
(*   %conv6.i.i470.3.2 = zext i8 %conv7.i.i472.2.2 to i32 *)
cast v_conv6_i_i470_3_2@uint32 v_conv7_i_i472_2_2@uint8;
(*   %shl.i.i471.3.2 = shl i32 %conv6.i.i470.3.2, 1 *)
shls discard_122 v_shl_i_i471_3_2 v_conv6_i_i470_3_2 1;
(*   %conv7.i.i472.3.2 = trunc i32 %shl.i.i471.3.2 to i8 *)
split tmp_v_shl_i_i471_3_2 v_conv7_i_i472_3_2 v_shl_i_i471_3_2 8;
vpc v_conv7_i_i472_3_2@uint8 v_conv7_i_i472_3_2@uint32;
(*   %conv.i.i460.4.2 = zext i8 %conv5.i.i469.3.2 to i32 *)
cast v_conv_i_i460_4_2@uint32 v_conv5_i_i469_3_2@uint8;
(*   %and.i.i461.4.2 = and i32 %conv.i.i460.4.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i461_4_2 v_conv_i_i460_4_2 (0x1)@uint32;
(*   %conv1.i.i462.4.2 = zext i8 %conv7.i.i472.3.2 to i32 *)
cast v_conv1_i_i462_4_2@uint32 v_conv7_i_i472_3_2@uint8;
(*   %mul.i.i463.4.2 = mul nsw i32 %and.i.i461.4.2, %conv1.i.i462.4.2 *)
mul v_mul_i_i463_4_2 v_and_i_i461_4_2 v_conv1_i_i462_4_2;
(*   %conv2.i.i464.4.2 = zext i8 %conv3.i.i466.3.2 to i32 *)
cast v_conv2_i_i464_4_2@uint32 v_conv3_i_i466_3_2@uint8;
(*   %xor.i.i465.4.2 = xor i32 %conv2.i.i464.4.2, %mul.i.i463.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i465_4_2 v_conv2_i_i464_4_2 v_mul_i_i463_4_2;
(*   %conv3.i.i466.4.2 = trunc i32 %xor.i.i465.4.2 to i8 *)
split tmp_v_xor_i_i465_4_2 v_conv3_i_i466_4_2 v_xor_i_i465_4_2 8;
vpc v_conv3_i_i466_4_2@uint8 v_conv3_i_i466_4_2@uint32;
(*   %conv4.i.i467.4.2 = zext i8 %conv5.i.i469.3.2 to i32 *)
cast v_conv4_i_i467_4_2@uint32 v_conv5_i_i469_3_2@uint8;
(*   %shr.i.i468.4.2 = ashr i32 %conv4.i.i467.4.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i468_4_2 tmp_to_be_used v_conv4_i_i467_4_2 1;
(*   %conv5.i.i469.4.2 = trunc i32 %shr.i.i468.4.2 to i8 *)
split tmp_v_shr_i_i468_4_2 v_conv5_i_i469_4_2 v_shr_i_i468_4_2 8;
vpc v_conv5_i_i469_4_2@uint8 v_conv5_i_i469_4_2@uint32;
(*   %conv6.i.i470.4.2 = zext i8 %conv7.i.i472.3.2 to i32 *)
cast v_conv6_i_i470_4_2@uint32 v_conv7_i_i472_3_2@uint8;
(*   %shl.i.i471.4.2 = shl i32 %conv6.i.i470.4.2, 1 *)
shls discard_123 v_shl_i_i471_4_2 v_conv6_i_i470_4_2 1;
(*   %conv7.i.i472.4.2 = trunc i32 %shl.i.i471.4.2 to i8 *)
split tmp_v_shl_i_i471_4_2 v_conv7_i_i472_4_2 v_shl_i_i471_4_2 8;
vpc v_conv7_i_i472_4_2@uint8 v_conv7_i_i472_4_2@uint32;
(*   %conv.i.i460.5.2 = zext i8 %conv5.i.i469.4.2 to i32 *)
cast v_conv_i_i460_5_2@uint32 v_conv5_i_i469_4_2@uint8;
(*   %and.i.i461.5.2 = and i32 %conv.i.i460.5.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i461_5_2 v_conv_i_i460_5_2 (0x1)@uint32;
(*   %conv1.i.i462.5.2 = zext i8 %conv7.i.i472.4.2 to i32 *)
cast v_conv1_i_i462_5_2@uint32 v_conv7_i_i472_4_2@uint8;
(*   %mul.i.i463.5.2 = mul nsw i32 %and.i.i461.5.2, %conv1.i.i462.5.2 *)
mul v_mul_i_i463_5_2 v_and_i_i461_5_2 v_conv1_i_i462_5_2;
(*   %conv2.i.i464.5.2 = zext i8 %conv3.i.i466.4.2 to i32 *)
cast v_conv2_i_i464_5_2@uint32 v_conv3_i_i466_4_2@uint8;
(*   %xor.i.i465.5.2 = xor i32 %conv2.i.i464.5.2, %mul.i.i463.5.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i465_5_2 v_conv2_i_i464_5_2 v_mul_i_i463_5_2;
(*   %conv3.i.i466.5.2 = trunc i32 %xor.i.i465.5.2 to i8 *)
split tmp_v_xor_i_i465_5_2 v_conv3_i_i466_5_2 v_xor_i_i465_5_2 8;
vpc v_conv3_i_i466_5_2@uint8 v_conv3_i_i466_5_2@uint32;
(*   %conv4.i.i467.5.2 = zext i8 %conv5.i.i469.4.2 to i32 *)
cast v_conv4_i_i467_5_2@uint32 v_conv5_i_i469_4_2@uint8;
(*   %shr.i.i468.5.2 = ashr i32 %conv4.i.i467.5.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i468_5_2 tmp_to_be_used v_conv4_i_i467_5_2 1;
(*   %conv5.i.i469.5.2 = trunc i32 %shr.i.i468.5.2 to i8 *)
split tmp_v_shr_i_i468_5_2 v_conv5_i_i469_5_2 v_shr_i_i468_5_2 8;
vpc v_conv5_i_i469_5_2@uint8 v_conv5_i_i469_5_2@uint32;
(*   %conv6.i.i470.5.2 = zext i8 %conv7.i.i472.4.2 to i32 *)
cast v_conv6_i_i470_5_2@uint32 v_conv7_i_i472_4_2@uint8;
(*   %shl.i.i471.5.2 = shl i32 %conv6.i.i470.5.2, 1 *)
shls discard_124 v_shl_i_i471_5_2 v_conv6_i_i470_5_2 1;
(*   %conv7.i.i472.5.2 = trunc i32 %shl.i.i471.5.2 to i8 *)
split tmp_v_shl_i_i471_5_2 v_conv7_i_i472_5_2 v_shl_i_i471_5_2 8;
vpc v_conv7_i_i472_5_2@uint8 v_conv7_i_i472_5_2@uint32;
(*   %conv.i.i460.6.2 = zext i8 %conv5.i.i469.5.2 to i32 *)
cast v_conv_i_i460_6_2@uint32 v_conv5_i_i469_5_2@uint8;
(*   %and.i.i461.6.2 = and i32 %conv.i.i460.6.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i461_6_2 v_conv_i_i460_6_2 (0x1)@uint32;
(*   %conv1.i.i462.6.2 = zext i8 %conv7.i.i472.5.2 to i32 *)
cast v_conv1_i_i462_6_2@uint32 v_conv7_i_i472_5_2@uint8;
(*   %mul.i.i463.6.2 = mul nsw i32 %and.i.i461.6.2, %conv1.i.i462.6.2 *)
mul v_mul_i_i463_6_2 v_and_i_i461_6_2 v_conv1_i_i462_6_2;
(*   %conv2.i.i464.6.2 = zext i8 %conv3.i.i466.5.2 to i32 *)
cast v_conv2_i_i464_6_2@uint32 v_conv3_i_i466_5_2@uint8;
(*   %xor.i.i465.6.2 = xor i32 %conv2.i.i464.6.2, %mul.i.i463.6.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i465_6_2 v_conv2_i_i464_6_2 v_mul_i_i463_6_2;
(*   %conv3.i.i466.6.2 = trunc i32 %xor.i.i465.6.2 to i8 *)
split tmp_v_xor_i_i465_6_2 v_conv3_i_i466_6_2 v_xor_i_i465_6_2 8;
vpc v_conv3_i_i466_6_2@uint8 v_conv3_i_i466_6_2@uint32;
(*   %conv4.i.i467.6.2 = zext i8 %conv5.i.i469.5.2 to i32 *)
cast v_conv4_i_i467_6_2@uint32 v_conv5_i_i469_5_2@uint8;
(*   %shr.i.i468.6.2 = ashr i32 %conv4.i.i467.6.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i468_6_2 tmp_to_be_used v_conv4_i_i467_6_2 1;
(*   %conv5.i.i469.6.2 = trunc i32 %shr.i.i468.6.2 to i8 *)
split tmp_v_shr_i_i468_6_2 v_conv5_i_i469_6_2 v_shr_i_i468_6_2 8;
vpc v_conv5_i_i469_6_2@uint8 v_conv5_i_i469_6_2@uint32;
(*   %conv6.i.i470.6.2 = zext i8 %conv7.i.i472.5.2 to i32 *)
cast v_conv6_i_i470_6_2@uint32 v_conv7_i_i472_5_2@uint8;
(*   %shl.i.i471.6.2 = shl i32 %conv6.i.i470.6.2, 1 *)
shls discard_125 v_shl_i_i471_6_2 v_conv6_i_i470_6_2 1;
(*   %conv7.i.i472.6.2 = trunc i32 %shl.i.i471.6.2 to i8 *)
split tmp_v_shl_i_i471_6_2 v_conv7_i_i472_6_2 v_shl_i_i471_6_2 8;
vpc v_conv7_i_i472_6_2@uint8 v_conv7_i_i472_6_2@uint32;
(*   %conv.i.i460.7.2 = zext i8 %conv5.i.i469.6.2 to i32 *)
cast v_conv_i_i460_7_2@uint32 v_conv5_i_i469_6_2@uint8;
(*   %and.i.i461.7.2 = and i32 %conv.i.i460.7.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i461_7_2 v_conv_i_i460_7_2 (0x1)@uint32;
(*   %conv1.i.i462.7.2 = zext i8 %conv7.i.i472.6.2 to i32 *)
cast v_conv1_i_i462_7_2@uint32 v_conv7_i_i472_6_2@uint8;
(*   %mul.i.i463.7.2 = mul nsw i32 %and.i.i461.7.2, %conv1.i.i462.7.2 *)
mul v_mul_i_i463_7_2 v_and_i_i461_7_2 v_conv1_i_i462_7_2;
(*   %conv2.i.i464.7.2 = zext i8 %conv3.i.i466.6.2 to i32 *)
cast v_conv2_i_i464_7_2@uint32 v_conv3_i_i466_6_2@uint8;
(*   %xor.i.i465.7.2 = xor i32 %conv2.i.i464.7.2, %mul.i.i463.7.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i465_7_2 v_conv2_i_i464_7_2 v_mul_i_i463_7_2;
(*   %conv3.i.i466.7.2 = trunc i32 %xor.i.i465.7.2 to i8 *)
split tmp_v_xor_i_i465_7_2 v_conv3_i_i466_7_2 v_xor_i_i465_7_2 8;
vpc v_conv3_i_i466_7_2@uint8 v_conv3_i_i466_7_2@uint32;
(*   %arrayidx6.i476.2 = getelementptr inbounds i8, i8* %add.ptr10, i64 2 *)
(*   store i8 %conv3.i.i466.7.2, i8* %arrayidx6.i476.2, align 1 *)
mov cc_22 v_conv3_i_i466_7_2;
(*   %arrayidx.i452.3 = getelementptr inbounds i8, i8* %a, i64 3 *)
(*   %36 = load i8, i8* %arrayidx.i452.3, align 1 *)
mov v36 a_3;
(*   %37 = load i8, i8* %b, align 1 *)
mov v37 b_0;
(*   %conv.i.i460.3238 = zext i8 %37 to i32 *)
cast v_conv_i_i460_3238@uint32 v37@uint8;
(*   %and.i.i461.3239 = and i32 %conv.i.i460.3238, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i461_3239 v_conv_i_i460_3238 (0x1)@uint32;
(*   %conv1.i.i462.3240 = zext i8 %36 to i32 *)
cast v_conv1_i_i462_3240@uint32 v36@uint8;
(*   %mul.i.i463.3241 = mul nsw i32 %and.i.i461.3239, %conv1.i.i462.3240 *)
mul v_mul_i_i463_3241 v_and_i_i461_3239 v_conv1_i_i462_3240;
(*   %conv3.i.i466.3242 = trunc i32 %mul.i.i463.3241 to i8 *)
split tmp_v_mul_i_i463_3241 v_conv3_i_i466_3242 v_mul_i_i463_3241 8;
vpc v_conv3_i_i466_3242@uint8 v_conv3_i_i466_3242@uint32;
(*   %conv4.i.i467.3243 = zext i8 %37 to i32 *)
cast v_conv4_i_i467_3243@uint32 v37@uint8;
(*   %shr.i.i468.3244 = ashr i32 %conv4.i.i467.3243, 1 *)
(* You may need to modify here *)
split v_shr_i_i468_3244 tmp_to_be_used v_conv4_i_i467_3243 1;
(*   %conv5.i.i469.3245 = trunc i32 %shr.i.i468.3244 to i8 *)
split tmp_v_shr_i_i468_3244 v_conv5_i_i469_3245 v_shr_i_i468_3244 8;
vpc v_conv5_i_i469_3245@uint8 v_conv5_i_i469_3245@uint32;
(*   %conv6.i.i470.3246 = zext i8 %36 to i32 *)
cast v_conv6_i_i470_3246@uint32 v36@uint8;
(*   %shl.i.i471.3247 = shl i32 %conv6.i.i470.3246, 1 *)
shls discard_126 v_shl_i_i471_3247 v_conv6_i_i470_3246 1;
(*   %conv7.i.i472.3248 = trunc i32 %shl.i.i471.3247 to i8 *)
split tmp_v_shl_i_i471_3247 v_conv7_i_i472_3248 v_shl_i_i471_3247 8;
vpc v_conv7_i_i472_3248@uint8 v_conv7_i_i472_3248@uint32;
(*   %conv.i.i460.1.3 = zext i8 %conv5.i.i469.3245 to i32 *)
cast v_conv_i_i460_1_3@uint32 v_conv5_i_i469_3245@uint8;
(*   %and.i.i461.1.3 = and i32 %conv.i.i460.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i461_1_3 v_conv_i_i460_1_3 (0x1)@uint32;
(*   %conv1.i.i462.1.3 = zext i8 %conv7.i.i472.3248 to i32 *)
cast v_conv1_i_i462_1_3@uint32 v_conv7_i_i472_3248@uint8;
(*   %mul.i.i463.1.3 = mul nsw i32 %and.i.i461.1.3, %conv1.i.i462.1.3 *)
mul v_mul_i_i463_1_3 v_and_i_i461_1_3 v_conv1_i_i462_1_3;
(*   %conv2.i.i464.1.3 = zext i8 %conv3.i.i466.3242 to i32 *)
cast v_conv2_i_i464_1_3@uint32 v_conv3_i_i466_3242@uint8;
(*   %xor.i.i465.1.3 = xor i32 %conv2.i.i464.1.3, %mul.i.i463.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i465_1_3 v_conv2_i_i464_1_3 v_mul_i_i463_1_3;
(*   %conv3.i.i466.1.3 = trunc i32 %xor.i.i465.1.3 to i8 *)
split tmp_v_xor_i_i465_1_3 v_conv3_i_i466_1_3 v_xor_i_i465_1_3 8;
vpc v_conv3_i_i466_1_3@uint8 v_conv3_i_i466_1_3@uint32;
(*   %conv4.i.i467.1.3 = zext i8 %conv5.i.i469.3245 to i32 *)
cast v_conv4_i_i467_1_3@uint32 v_conv5_i_i469_3245@uint8;
(*   %shr.i.i468.1.3 = ashr i32 %conv4.i.i467.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i468_1_3 tmp_to_be_used v_conv4_i_i467_1_3 1;
(*   %conv5.i.i469.1.3 = trunc i32 %shr.i.i468.1.3 to i8 *)
split tmp_v_shr_i_i468_1_3 v_conv5_i_i469_1_3 v_shr_i_i468_1_3 8;
vpc v_conv5_i_i469_1_3@uint8 v_conv5_i_i469_1_3@uint32;
(*   %conv6.i.i470.1.3 = zext i8 %conv7.i.i472.3248 to i32 *)
cast v_conv6_i_i470_1_3@uint32 v_conv7_i_i472_3248@uint8;
(*   %shl.i.i471.1.3 = shl i32 %conv6.i.i470.1.3, 1 *)
shls discard_127 v_shl_i_i471_1_3 v_conv6_i_i470_1_3 1;
(*   %conv7.i.i472.1.3 = trunc i32 %shl.i.i471.1.3 to i8 *)
split tmp_v_shl_i_i471_1_3 v_conv7_i_i472_1_3 v_shl_i_i471_1_3 8;
vpc v_conv7_i_i472_1_3@uint8 v_conv7_i_i472_1_3@uint32;
(*   %conv.i.i460.2.3 = zext i8 %conv5.i.i469.1.3 to i32 *)
cast v_conv_i_i460_2_3@uint32 v_conv5_i_i469_1_3@uint8;
(*   %and.i.i461.2.3 = and i32 %conv.i.i460.2.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i461_2_3 v_conv_i_i460_2_3 (0x1)@uint32;
(*   %conv1.i.i462.2.3 = zext i8 %conv7.i.i472.1.3 to i32 *)
cast v_conv1_i_i462_2_3@uint32 v_conv7_i_i472_1_3@uint8;
(*   %mul.i.i463.2.3 = mul nsw i32 %and.i.i461.2.3, %conv1.i.i462.2.3 *)
mul v_mul_i_i463_2_3 v_and_i_i461_2_3 v_conv1_i_i462_2_3;
(*   %conv2.i.i464.2.3 = zext i8 %conv3.i.i466.1.3 to i32 *)
cast v_conv2_i_i464_2_3@uint32 v_conv3_i_i466_1_3@uint8;
(*   %xor.i.i465.2.3 = xor i32 %conv2.i.i464.2.3, %mul.i.i463.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i465_2_3 v_conv2_i_i464_2_3 v_mul_i_i463_2_3;
(*   %conv3.i.i466.2.3 = trunc i32 %xor.i.i465.2.3 to i8 *)
split tmp_v_xor_i_i465_2_3 v_conv3_i_i466_2_3 v_xor_i_i465_2_3 8;
vpc v_conv3_i_i466_2_3@uint8 v_conv3_i_i466_2_3@uint32;
(*   %conv4.i.i467.2.3 = zext i8 %conv5.i.i469.1.3 to i32 *)
cast v_conv4_i_i467_2_3@uint32 v_conv5_i_i469_1_3@uint8;
(*   %shr.i.i468.2.3 = ashr i32 %conv4.i.i467.2.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i468_2_3 tmp_to_be_used v_conv4_i_i467_2_3 1;
(*   %conv5.i.i469.2.3 = trunc i32 %shr.i.i468.2.3 to i8 *)
split tmp_v_shr_i_i468_2_3 v_conv5_i_i469_2_3 v_shr_i_i468_2_3 8;
vpc v_conv5_i_i469_2_3@uint8 v_conv5_i_i469_2_3@uint32;
(*   %conv6.i.i470.2.3 = zext i8 %conv7.i.i472.1.3 to i32 *)
cast v_conv6_i_i470_2_3@uint32 v_conv7_i_i472_1_3@uint8;
(*   %shl.i.i471.2.3 = shl i32 %conv6.i.i470.2.3, 1 *)
shls discard_128 v_shl_i_i471_2_3 v_conv6_i_i470_2_3 1;
(*   %conv7.i.i472.2.3 = trunc i32 %shl.i.i471.2.3 to i8 *)
split tmp_v_shl_i_i471_2_3 v_conv7_i_i472_2_3 v_shl_i_i471_2_3 8;
vpc v_conv7_i_i472_2_3@uint8 v_conv7_i_i472_2_3@uint32;
(*   %conv.i.i460.3.3 = zext i8 %conv5.i.i469.2.3 to i32 *)
cast v_conv_i_i460_3_3@uint32 v_conv5_i_i469_2_3@uint8;
(*   %and.i.i461.3.3 = and i32 %conv.i.i460.3.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i461_3_3 v_conv_i_i460_3_3 (0x1)@uint32;
(*   %conv1.i.i462.3.3 = zext i8 %conv7.i.i472.2.3 to i32 *)
cast v_conv1_i_i462_3_3@uint32 v_conv7_i_i472_2_3@uint8;
(*   %mul.i.i463.3.3 = mul nsw i32 %and.i.i461.3.3, %conv1.i.i462.3.3 *)
mul v_mul_i_i463_3_3 v_and_i_i461_3_3 v_conv1_i_i462_3_3;
(*   %conv2.i.i464.3.3 = zext i8 %conv3.i.i466.2.3 to i32 *)
cast v_conv2_i_i464_3_3@uint32 v_conv3_i_i466_2_3@uint8;
(*   %xor.i.i465.3.3 = xor i32 %conv2.i.i464.3.3, %mul.i.i463.3.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i465_3_3 v_conv2_i_i464_3_3 v_mul_i_i463_3_3;
(*   %conv3.i.i466.3.3 = trunc i32 %xor.i.i465.3.3 to i8 *)
split tmp_v_xor_i_i465_3_3 v_conv3_i_i466_3_3 v_xor_i_i465_3_3 8;
vpc v_conv3_i_i466_3_3@uint8 v_conv3_i_i466_3_3@uint32;
(*   %conv4.i.i467.3.3 = zext i8 %conv5.i.i469.2.3 to i32 *)
cast v_conv4_i_i467_3_3@uint32 v_conv5_i_i469_2_3@uint8;
(*   %shr.i.i468.3.3 = ashr i32 %conv4.i.i467.3.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i468_3_3 tmp_to_be_used v_conv4_i_i467_3_3 1;
(*   %conv5.i.i469.3.3 = trunc i32 %shr.i.i468.3.3 to i8 *)
split tmp_v_shr_i_i468_3_3 v_conv5_i_i469_3_3 v_shr_i_i468_3_3 8;
vpc v_conv5_i_i469_3_3@uint8 v_conv5_i_i469_3_3@uint32;
(*   %conv6.i.i470.3.3 = zext i8 %conv7.i.i472.2.3 to i32 *)
cast v_conv6_i_i470_3_3@uint32 v_conv7_i_i472_2_3@uint8;
(*   %shl.i.i471.3.3 = shl i32 %conv6.i.i470.3.3, 1 *)
shls discard_129 v_shl_i_i471_3_3 v_conv6_i_i470_3_3 1;
(*   %conv7.i.i472.3.3 = trunc i32 %shl.i.i471.3.3 to i8 *)
split tmp_v_shl_i_i471_3_3 v_conv7_i_i472_3_3 v_shl_i_i471_3_3 8;
vpc v_conv7_i_i472_3_3@uint8 v_conv7_i_i472_3_3@uint32;
(*   %conv.i.i460.4.3 = zext i8 %conv5.i.i469.3.3 to i32 *)
cast v_conv_i_i460_4_3@uint32 v_conv5_i_i469_3_3@uint8;
(*   %and.i.i461.4.3 = and i32 %conv.i.i460.4.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i461_4_3 v_conv_i_i460_4_3 (0x1)@uint32;
(*   %conv1.i.i462.4.3 = zext i8 %conv7.i.i472.3.3 to i32 *)
cast v_conv1_i_i462_4_3@uint32 v_conv7_i_i472_3_3@uint8;
(*   %mul.i.i463.4.3 = mul nsw i32 %and.i.i461.4.3, %conv1.i.i462.4.3 *)
mul v_mul_i_i463_4_3 v_and_i_i461_4_3 v_conv1_i_i462_4_3;
(*   %conv2.i.i464.4.3 = zext i8 %conv3.i.i466.3.3 to i32 *)
cast v_conv2_i_i464_4_3@uint32 v_conv3_i_i466_3_3@uint8;
(*   %xor.i.i465.4.3 = xor i32 %conv2.i.i464.4.3, %mul.i.i463.4.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i465_4_3 v_conv2_i_i464_4_3 v_mul_i_i463_4_3;
(*   %conv3.i.i466.4.3 = trunc i32 %xor.i.i465.4.3 to i8 *)
split tmp_v_xor_i_i465_4_3 v_conv3_i_i466_4_3 v_xor_i_i465_4_3 8;
vpc v_conv3_i_i466_4_3@uint8 v_conv3_i_i466_4_3@uint32;
(*   %conv4.i.i467.4.3 = zext i8 %conv5.i.i469.3.3 to i32 *)
cast v_conv4_i_i467_4_3@uint32 v_conv5_i_i469_3_3@uint8;
(*   %shr.i.i468.4.3 = ashr i32 %conv4.i.i467.4.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i468_4_3 tmp_to_be_used v_conv4_i_i467_4_3 1;
(*   %conv5.i.i469.4.3 = trunc i32 %shr.i.i468.4.3 to i8 *)
split tmp_v_shr_i_i468_4_3 v_conv5_i_i469_4_3 v_shr_i_i468_4_3 8;
vpc v_conv5_i_i469_4_3@uint8 v_conv5_i_i469_4_3@uint32;
(*   %conv6.i.i470.4.3 = zext i8 %conv7.i.i472.3.3 to i32 *)
cast v_conv6_i_i470_4_3@uint32 v_conv7_i_i472_3_3@uint8;
(*   %shl.i.i471.4.3 = shl i32 %conv6.i.i470.4.3, 1 *)
shls discard_130 v_shl_i_i471_4_3 v_conv6_i_i470_4_3 1;
(*   %conv7.i.i472.4.3 = trunc i32 %shl.i.i471.4.3 to i8 *)
split tmp_v_shl_i_i471_4_3 v_conv7_i_i472_4_3 v_shl_i_i471_4_3 8;
vpc v_conv7_i_i472_4_3@uint8 v_conv7_i_i472_4_3@uint32;
(*   %conv.i.i460.5.3 = zext i8 %conv5.i.i469.4.3 to i32 *)
cast v_conv_i_i460_5_3@uint32 v_conv5_i_i469_4_3@uint8;
(*   %and.i.i461.5.3 = and i32 %conv.i.i460.5.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i461_5_3 v_conv_i_i460_5_3 (0x1)@uint32;
(*   %conv1.i.i462.5.3 = zext i8 %conv7.i.i472.4.3 to i32 *)
cast v_conv1_i_i462_5_3@uint32 v_conv7_i_i472_4_3@uint8;
(*   %mul.i.i463.5.3 = mul nsw i32 %and.i.i461.5.3, %conv1.i.i462.5.3 *)
mul v_mul_i_i463_5_3 v_and_i_i461_5_3 v_conv1_i_i462_5_3;
(*   %conv2.i.i464.5.3 = zext i8 %conv3.i.i466.4.3 to i32 *)
cast v_conv2_i_i464_5_3@uint32 v_conv3_i_i466_4_3@uint8;
(*   %xor.i.i465.5.3 = xor i32 %conv2.i.i464.5.3, %mul.i.i463.5.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i465_5_3 v_conv2_i_i464_5_3 v_mul_i_i463_5_3;
(*   %conv3.i.i466.5.3 = trunc i32 %xor.i.i465.5.3 to i8 *)
split tmp_v_xor_i_i465_5_3 v_conv3_i_i466_5_3 v_xor_i_i465_5_3 8;
vpc v_conv3_i_i466_5_3@uint8 v_conv3_i_i466_5_3@uint32;
(*   %conv4.i.i467.5.3 = zext i8 %conv5.i.i469.4.3 to i32 *)
cast v_conv4_i_i467_5_3@uint32 v_conv5_i_i469_4_3@uint8;
(*   %shr.i.i468.5.3 = ashr i32 %conv4.i.i467.5.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i468_5_3 tmp_to_be_used v_conv4_i_i467_5_3 1;
(*   %conv5.i.i469.5.3 = trunc i32 %shr.i.i468.5.3 to i8 *)
split tmp_v_shr_i_i468_5_3 v_conv5_i_i469_5_3 v_shr_i_i468_5_3 8;
vpc v_conv5_i_i469_5_3@uint8 v_conv5_i_i469_5_3@uint32;
(*   %conv6.i.i470.5.3 = zext i8 %conv7.i.i472.4.3 to i32 *)
cast v_conv6_i_i470_5_3@uint32 v_conv7_i_i472_4_3@uint8;
(*   %shl.i.i471.5.3 = shl i32 %conv6.i.i470.5.3, 1 *)
shls discard_131 v_shl_i_i471_5_3 v_conv6_i_i470_5_3 1;
(*   %conv7.i.i472.5.3 = trunc i32 %shl.i.i471.5.3 to i8 *)
split tmp_v_shl_i_i471_5_3 v_conv7_i_i472_5_3 v_shl_i_i471_5_3 8;
vpc v_conv7_i_i472_5_3@uint8 v_conv7_i_i472_5_3@uint32;
(*   %conv.i.i460.6.3 = zext i8 %conv5.i.i469.5.3 to i32 *)
cast v_conv_i_i460_6_3@uint32 v_conv5_i_i469_5_3@uint8;
(*   %and.i.i461.6.3 = and i32 %conv.i.i460.6.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i461_6_3 v_conv_i_i460_6_3 (0x1)@uint32;
(*   %conv1.i.i462.6.3 = zext i8 %conv7.i.i472.5.3 to i32 *)
cast v_conv1_i_i462_6_3@uint32 v_conv7_i_i472_5_3@uint8;
(*   %mul.i.i463.6.3 = mul nsw i32 %and.i.i461.6.3, %conv1.i.i462.6.3 *)
mul v_mul_i_i463_6_3 v_and_i_i461_6_3 v_conv1_i_i462_6_3;
(*   %conv2.i.i464.6.3 = zext i8 %conv3.i.i466.5.3 to i32 *)
cast v_conv2_i_i464_6_3@uint32 v_conv3_i_i466_5_3@uint8;
(*   %xor.i.i465.6.3 = xor i32 %conv2.i.i464.6.3, %mul.i.i463.6.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i465_6_3 v_conv2_i_i464_6_3 v_mul_i_i463_6_3;
(*   %conv3.i.i466.6.3 = trunc i32 %xor.i.i465.6.3 to i8 *)
split tmp_v_xor_i_i465_6_3 v_conv3_i_i466_6_3 v_xor_i_i465_6_3 8;
vpc v_conv3_i_i466_6_3@uint8 v_conv3_i_i466_6_3@uint32;
(*   %conv4.i.i467.6.3 = zext i8 %conv5.i.i469.5.3 to i32 *)
cast v_conv4_i_i467_6_3@uint32 v_conv5_i_i469_5_3@uint8;
(*   %shr.i.i468.6.3 = ashr i32 %conv4.i.i467.6.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i468_6_3 tmp_to_be_used v_conv4_i_i467_6_3 1;
(*   %conv5.i.i469.6.3 = trunc i32 %shr.i.i468.6.3 to i8 *)
split tmp_v_shr_i_i468_6_3 v_conv5_i_i469_6_3 v_shr_i_i468_6_3 8;
vpc v_conv5_i_i469_6_3@uint8 v_conv5_i_i469_6_3@uint32;
(*   %conv6.i.i470.6.3 = zext i8 %conv7.i.i472.5.3 to i32 *)
cast v_conv6_i_i470_6_3@uint32 v_conv7_i_i472_5_3@uint8;
(*   %shl.i.i471.6.3 = shl i32 %conv6.i.i470.6.3, 1 *)
shls discard_132 v_shl_i_i471_6_3 v_conv6_i_i470_6_3 1;
(*   %conv7.i.i472.6.3 = trunc i32 %shl.i.i471.6.3 to i8 *)
split tmp_v_shl_i_i471_6_3 v_conv7_i_i472_6_3 v_shl_i_i471_6_3 8;
vpc v_conv7_i_i472_6_3@uint8 v_conv7_i_i472_6_3@uint32;
(*   %conv.i.i460.7.3 = zext i8 %conv5.i.i469.6.3 to i32 *)
cast v_conv_i_i460_7_3@uint32 v_conv5_i_i469_6_3@uint8;
(*   %and.i.i461.7.3 = and i32 %conv.i.i460.7.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i461_7_3 v_conv_i_i460_7_3 (0x1)@uint32;
(*   %conv1.i.i462.7.3 = zext i8 %conv7.i.i472.6.3 to i32 *)
cast v_conv1_i_i462_7_3@uint32 v_conv7_i_i472_6_3@uint8;
(*   %mul.i.i463.7.3 = mul nsw i32 %and.i.i461.7.3, %conv1.i.i462.7.3 *)
mul v_mul_i_i463_7_3 v_and_i_i461_7_3 v_conv1_i_i462_7_3;
(*   %conv2.i.i464.7.3 = zext i8 %conv3.i.i466.6.3 to i32 *)
cast v_conv2_i_i464_7_3@uint32 v_conv3_i_i466_6_3@uint8;
(*   %xor.i.i465.7.3 = xor i32 %conv2.i.i464.7.3, %mul.i.i463.7.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i465_7_3 v_conv2_i_i464_7_3 v_mul_i_i463_7_3;
(*   %conv3.i.i466.7.3 = trunc i32 %xor.i.i465.7.3 to i8 *)
split tmp_v_xor_i_i465_7_3 v_conv3_i_i466_7_3 v_xor_i_i465_7_3 8;
vpc v_conv3_i_i466_7_3@uint8 v_conv3_i_i466_7_3@uint32;
(*   %arrayidx6.i476.3 = getelementptr inbounds i8, i8* %add.ptr10, i64 3 *)
(*   store i8 %conv3.i.i466.7.3, i8* %arrayidx6.i476.3, align 1 *)
mov cc_23 v_conv3_i_i466_7_3;
(*   %arrayidx.i452.4 = getelementptr inbounds i8, i8* %a, i64 4 *)
(*   %38 = load i8, i8* %arrayidx.i452.4, align 1 *)
mov v38 a_4;
(*   %arrayidx4.i456.4 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %39 = load i8, i8* %arrayidx4.i456.4, align 1 *)
mov v39 b_1;
(*   %conv.i.i460.4249 = zext i8 %39 to i32 *)
cast v_conv_i_i460_4249@uint32 v39@uint8;
(*   %and.i.i461.4250 = and i32 %conv.i.i460.4249, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i461_4250 v_conv_i_i460_4249 (0x1)@uint32;
(*   %conv1.i.i462.4251 = zext i8 %38 to i32 *)
cast v_conv1_i_i462_4251@uint32 v38@uint8;
(*   %mul.i.i463.4252 = mul nsw i32 %and.i.i461.4250, %conv1.i.i462.4251 *)
mul v_mul_i_i463_4252 v_and_i_i461_4250 v_conv1_i_i462_4251;
(*   %conv3.i.i466.4253 = trunc i32 %mul.i.i463.4252 to i8 *)
split tmp_v_mul_i_i463_4252 v_conv3_i_i466_4253 v_mul_i_i463_4252 8;
vpc v_conv3_i_i466_4253@uint8 v_conv3_i_i466_4253@uint32;
(*   %conv4.i.i467.4254 = zext i8 %39 to i32 *)
cast v_conv4_i_i467_4254@uint32 v39@uint8;
(*   %shr.i.i468.4255 = ashr i32 %conv4.i.i467.4254, 1 *)
(* You may need to modify here *)
split v_shr_i_i468_4255 tmp_to_be_used v_conv4_i_i467_4254 1;
(*   %conv5.i.i469.4256 = trunc i32 %shr.i.i468.4255 to i8 *)
split tmp_v_shr_i_i468_4255 v_conv5_i_i469_4256 v_shr_i_i468_4255 8;
vpc v_conv5_i_i469_4256@uint8 v_conv5_i_i469_4256@uint32;
(*   %conv6.i.i470.4257 = zext i8 %38 to i32 *)
cast v_conv6_i_i470_4257@uint32 v38@uint8;
(*   %shl.i.i471.4258 = shl i32 %conv6.i.i470.4257, 1 *)
shls discard_133 v_shl_i_i471_4258 v_conv6_i_i470_4257 1;
(*   %conv7.i.i472.4259 = trunc i32 %shl.i.i471.4258 to i8 *)
split tmp_v_shl_i_i471_4258 v_conv7_i_i472_4259 v_shl_i_i471_4258 8;
vpc v_conv7_i_i472_4259@uint8 v_conv7_i_i472_4259@uint32;
(*   %conv.i.i460.1.4 = zext i8 %conv5.i.i469.4256 to i32 *)
cast v_conv_i_i460_1_4@uint32 v_conv5_i_i469_4256@uint8;
(*   %and.i.i461.1.4 = and i32 %conv.i.i460.1.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i461_1_4 v_conv_i_i460_1_4 (0x1)@uint32;
(*   %conv1.i.i462.1.4 = zext i8 %conv7.i.i472.4259 to i32 *)
cast v_conv1_i_i462_1_4@uint32 v_conv7_i_i472_4259@uint8;
(*   %mul.i.i463.1.4 = mul nsw i32 %and.i.i461.1.4, %conv1.i.i462.1.4 *)
mul v_mul_i_i463_1_4 v_and_i_i461_1_4 v_conv1_i_i462_1_4;
(*   %conv2.i.i464.1.4 = zext i8 %conv3.i.i466.4253 to i32 *)
cast v_conv2_i_i464_1_4@uint32 v_conv3_i_i466_4253@uint8;
(*   %xor.i.i465.1.4 = xor i32 %conv2.i.i464.1.4, %mul.i.i463.1.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i465_1_4 v_conv2_i_i464_1_4 v_mul_i_i463_1_4;
(*   %conv3.i.i466.1.4 = trunc i32 %xor.i.i465.1.4 to i8 *)
split tmp_v_xor_i_i465_1_4 v_conv3_i_i466_1_4 v_xor_i_i465_1_4 8;
vpc v_conv3_i_i466_1_4@uint8 v_conv3_i_i466_1_4@uint32;
(*   %conv4.i.i467.1.4 = zext i8 %conv5.i.i469.4256 to i32 *)
cast v_conv4_i_i467_1_4@uint32 v_conv5_i_i469_4256@uint8;
(*   %shr.i.i468.1.4 = ashr i32 %conv4.i.i467.1.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i468_1_4 tmp_to_be_used v_conv4_i_i467_1_4 1;
(*   %conv5.i.i469.1.4 = trunc i32 %shr.i.i468.1.4 to i8 *)
split tmp_v_shr_i_i468_1_4 v_conv5_i_i469_1_4 v_shr_i_i468_1_4 8;
vpc v_conv5_i_i469_1_4@uint8 v_conv5_i_i469_1_4@uint32;
(*   %conv6.i.i470.1.4 = zext i8 %conv7.i.i472.4259 to i32 *)
cast v_conv6_i_i470_1_4@uint32 v_conv7_i_i472_4259@uint8;
(*   %shl.i.i471.1.4 = shl i32 %conv6.i.i470.1.4, 1 *)
shls discard_134 v_shl_i_i471_1_4 v_conv6_i_i470_1_4 1;
(*   %conv7.i.i472.1.4 = trunc i32 %shl.i.i471.1.4 to i8 *)
split tmp_v_shl_i_i471_1_4 v_conv7_i_i472_1_4 v_shl_i_i471_1_4 8;
vpc v_conv7_i_i472_1_4@uint8 v_conv7_i_i472_1_4@uint32;
(*   %conv.i.i460.2.4 = zext i8 %conv5.i.i469.1.4 to i32 *)
cast v_conv_i_i460_2_4@uint32 v_conv5_i_i469_1_4@uint8;
(*   %and.i.i461.2.4 = and i32 %conv.i.i460.2.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i461_2_4 v_conv_i_i460_2_4 (0x1)@uint32;
(*   %conv1.i.i462.2.4 = zext i8 %conv7.i.i472.1.4 to i32 *)
cast v_conv1_i_i462_2_4@uint32 v_conv7_i_i472_1_4@uint8;
(*   %mul.i.i463.2.4 = mul nsw i32 %and.i.i461.2.4, %conv1.i.i462.2.4 *)
mul v_mul_i_i463_2_4 v_and_i_i461_2_4 v_conv1_i_i462_2_4;
(*   %conv2.i.i464.2.4 = zext i8 %conv3.i.i466.1.4 to i32 *)
cast v_conv2_i_i464_2_4@uint32 v_conv3_i_i466_1_4@uint8;
(*   %xor.i.i465.2.4 = xor i32 %conv2.i.i464.2.4, %mul.i.i463.2.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i465_2_4 v_conv2_i_i464_2_4 v_mul_i_i463_2_4;
(*   %conv3.i.i466.2.4 = trunc i32 %xor.i.i465.2.4 to i8 *)
split tmp_v_xor_i_i465_2_4 v_conv3_i_i466_2_4 v_xor_i_i465_2_4 8;
vpc v_conv3_i_i466_2_4@uint8 v_conv3_i_i466_2_4@uint32;
(*   %conv4.i.i467.2.4 = zext i8 %conv5.i.i469.1.4 to i32 *)
cast v_conv4_i_i467_2_4@uint32 v_conv5_i_i469_1_4@uint8;
(*   %shr.i.i468.2.4 = ashr i32 %conv4.i.i467.2.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i468_2_4 tmp_to_be_used v_conv4_i_i467_2_4 1;
(*   %conv5.i.i469.2.4 = trunc i32 %shr.i.i468.2.4 to i8 *)
split tmp_v_shr_i_i468_2_4 v_conv5_i_i469_2_4 v_shr_i_i468_2_4 8;
vpc v_conv5_i_i469_2_4@uint8 v_conv5_i_i469_2_4@uint32;
(*   %conv6.i.i470.2.4 = zext i8 %conv7.i.i472.1.4 to i32 *)
cast v_conv6_i_i470_2_4@uint32 v_conv7_i_i472_1_4@uint8;
(*   %shl.i.i471.2.4 = shl i32 %conv6.i.i470.2.4, 1 *)
shls discard_135 v_shl_i_i471_2_4 v_conv6_i_i470_2_4 1;
(*   %conv7.i.i472.2.4 = trunc i32 %shl.i.i471.2.4 to i8 *)
split tmp_v_shl_i_i471_2_4 v_conv7_i_i472_2_4 v_shl_i_i471_2_4 8;
vpc v_conv7_i_i472_2_4@uint8 v_conv7_i_i472_2_4@uint32;
(*   %conv.i.i460.3.4 = zext i8 %conv5.i.i469.2.4 to i32 *)
cast v_conv_i_i460_3_4@uint32 v_conv5_i_i469_2_4@uint8;
(*   %and.i.i461.3.4 = and i32 %conv.i.i460.3.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i461_3_4 v_conv_i_i460_3_4 (0x1)@uint32;
(*   %conv1.i.i462.3.4 = zext i8 %conv7.i.i472.2.4 to i32 *)
cast v_conv1_i_i462_3_4@uint32 v_conv7_i_i472_2_4@uint8;
(*   %mul.i.i463.3.4 = mul nsw i32 %and.i.i461.3.4, %conv1.i.i462.3.4 *)
mul v_mul_i_i463_3_4 v_and_i_i461_3_4 v_conv1_i_i462_3_4;
(*   %conv2.i.i464.3.4 = zext i8 %conv3.i.i466.2.4 to i32 *)
cast v_conv2_i_i464_3_4@uint32 v_conv3_i_i466_2_4@uint8;
(*   %xor.i.i465.3.4 = xor i32 %conv2.i.i464.3.4, %mul.i.i463.3.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i465_3_4 v_conv2_i_i464_3_4 v_mul_i_i463_3_4;
(*   %conv3.i.i466.3.4 = trunc i32 %xor.i.i465.3.4 to i8 *)
split tmp_v_xor_i_i465_3_4 v_conv3_i_i466_3_4 v_xor_i_i465_3_4 8;
vpc v_conv3_i_i466_3_4@uint8 v_conv3_i_i466_3_4@uint32;
(*   %conv4.i.i467.3.4 = zext i8 %conv5.i.i469.2.4 to i32 *)
cast v_conv4_i_i467_3_4@uint32 v_conv5_i_i469_2_4@uint8;
(*   %shr.i.i468.3.4 = ashr i32 %conv4.i.i467.3.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i468_3_4 tmp_to_be_used v_conv4_i_i467_3_4 1;
(*   %conv5.i.i469.3.4 = trunc i32 %shr.i.i468.3.4 to i8 *)
split tmp_v_shr_i_i468_3_4 v_conv5_i_i469_3_4 v_shr_i_i468_3_4 8;
vpc v_conv5_i_i469_3_4@uint8 v_conv5_i_i469_3_4@uint32;
(*   %conv6.i.i470.3.4 = zext i8 %conv7.i.i472.2.4 to i32 *)
cast v_conv6_i_i470_3_4@uint32 v_conv7_i_i472_2_4@uint8;
(*   %shl.i.i471.3.4 = shl i32 %conv6.i.i470.3.4, 1 *)
shls discard_136 v_shl_i_i471_3_4 v_conv6_i_i470_3_4 1;
(*   %conv7.i.i472.3.4 = trunc i32 %shl.i.i471.3.4 to i8 *)
split tmp_v_shl_i_i471_3_4 v_conv7_i_i472_3_4 v_shl_i_i471_3_4 8;
vpc v_conv7_i_i472_3_4@uint8 v_conv7_i_i472_3_4@uint32;
(*   %conv.i.i460.4.4 = zext i8 %conv5.i.i469.3.4 to i32 *)
cast v_conv_i_i460_4_4@uint32 v_conv5_i_i469_3_4@uint8;
(*   %and.i.i461.4.4 = and i32 %conv.i.i460.4.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i461_4_4 v_conv_i_i460_4_4 (0x1)@uint32;
(*   %conv1.i.i462.4.4 = zext i8 %conv7.i.i472.3.4 to i32 *)
cast v_conv1_i_i462_4_4@uint32 v_conv7_i_i472_3_4@uint8;
(*   %mul.i.i463.4.4 = mul nsw i32 %and.i.i461.4.4, %conv1.i.i462.4.4 *)
mul v_mul_i_i463_4_4 v_and_i_i461_4_4 v_conv1_i_i462_4_4;
(*   %conv2.i.i464.4.4 = zext i8 %conv3.i.i466.3.4 to i32 *)
cast v_conv2_i_i464_4_4@uint32 v_conv3_i_i466_3_4@uint8;
(*   %xor.i.i465.4.4 = xor i32 %conv2.i.i464.4.4, %mul.i.i463.4.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i465_4_4 v_conv2_i_i464_4_4 v_mul_i_i463_4_4;
(*   %conv3.i.i466.4.4 = trunc i32 %xor.i.i465.4.4 to i8 *)
split tmp_v_xor_i_i465_4_4 v_conv3_i_i466_4_4 v_xor_i_i465_4_4 8;
vpc v_conv3_i_i466_4_4@uint8 v_conv3_i_i466_4_4@uint32;
(*   %conv4.i.i467.4.4 = zext i8 %conv5.i.i469.3.4 to i32 *)
cast v_conv4_i_i467_4_4@uint32 v_conv5_i_i469_3_4@uint8;
(*   %shr.i.i468.4.4 = ashr i32 %conv4.i.i467.4.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i468_4_4 tmp_to_be_used v_conv4_i_i467_4_4 1;
(*   %conv5.i.i469.4.4 = trunc i32 %shr.i.i468.4.4 to i8 *)
split tmp_v_shr_i_i468_4_4 v_conv5_i_i469_4_4 v_shr_i_i468_4_4 8;
vpc v_conv5_i_i469_4_4@uint8 v_conv5_i_i469_4_4@uint32;
(*   %conv6.i.i470.4.4 = zext i8 %conv7.i.i472.3.4 to i32 *)
cast v_conv6_i_i470_4_4@uint32 v_conv7_i_i472_3_4@uint8;
(*   %shl.i.i471.4.4 = shl i32 %conv6.i.i470.4.4, 1 *)
shls discard_137 v_shl_i_i471_4_4 v_conv6_i_i470_4_4 1;
(*   %conv7.i.i472.4.4 = trunc i32 %shl.i.i471.4.4 to i8 *)
split tmp_v_shl_i_i471_4_4 v_conv7_i_i472_4_4 v_shl_i_i471_4_4 8;
vpc v_conv7_i_i472_4_4@uint8 v_conv7_i_i472_4_4@uint32;
(*   %conv.i.i460.5.4 = zext i8 %conv5.i.i469.4.4 to i32 *)
cast v_conv_i_i460_5_4@uint32 v_conv5_i_i469_4_4@uint8;
(*   %and.i.i461.5.4 = and i32 %conv.i.i460.5.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i461_5_4 v_conv_i_i460_5_4 (0x1)@uint32;
(*   %conv1.i.i462.5.4 = zext i8 %conv7.i.i472.4.4 to i32 *)
cast v_conv1_i_i462_5_4@uint32 v_conv7_i_i472_4_4@uint8;
(*   %mul.i.i463.5.4 = mul nsw i32 %and.i.i461.5.4, %conv1.i.i462.5.4 *)
mul v_mul_i_i463_5_4 v_and_i_i461_5_4 v_conv1_i_i462_5_4;
(*   %conv2.i.i464.5.4 = zext i8 %conv3.i.i466.4.4 to i32 *)
cast v_conv2_i_i464_5_4@uint32 v_conv3_i_i466_4_4@uint8;
(*   %xor.i.i465.5.4 = xor i32 %conv2.i.i464.5.4, %mul.i.i463.5.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i465_5_4 v_conv2_i_i464_5_4 v_mul_i_i463_5_4;
(*   %conv3.i.i466.5.4 = trunc i32 %xor.i.i465.5.4 to i8 *)
split tmp_v_xor_i_i465_5_4 v_conv3_i_i466_5_4 v_xor_i_i465_5_4 8;
vpc v_conv3_i_i466_5_4@uint8 v_conv3_i_i466_5_4@uint32;
(*   %conv4.i.i467.5.4 = zext i8 %conv5.i.i469.4.4 to i32 *)
cast v_conv4_i_i467_5_4@uint32 v_conv5_i_i469_4_4@uint8;
(*   %shr.i.i468.5.4 = ashr i32 %conv4.i.i467.5.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i468_5_4 tmp_to_be_used v_conv4_i_i467_5_4 1;
(*   %conv5.i.i469.5.4 = trunc i32 %shr.i.i468.5.4 to i8 *)
split tmp_v_shr_i_i468_5_4 v_conv5_i_i469_5_4 v_shr_i_i468_5_4 8;
vpc v_conv5_i_i469_5_4@uint8 v_conv5_i_i469_5_4@uint32;
(*   %conv6.i.i470.5.4 = zext i8 %conv7.i.i472.4.4 to i32 *)
cast v_conv6_i_i470_5_4@uint32 v_conv7_i_i472_4_4@uint8;
(*   %shl.i.i471.5.4 = shl i32 %conv6.i.i470.5.4, 1 *)
shls discard_138 v_shl_i_i471_5_4 v_conv6_i_i470_5_4 1;
(*   %conv7.i.i472.5.4 = trunc i32 %shl.i.i471.5.4 to i8 *)
split tmp_v_shl_i_i471_5_4 v_conv7_i_i472_5_4 v_shl_i_i471_5_4 8;
vpc v_conv7_i_i472_5_4@uint8 v_conv7_i_i472_5_4@uint32;
(*   %conv.i.i460.6.4 = zext i8 %conv5.i.i469.5.4 to i32 *)
cast v_conv_i_i460_6_4@uint32 v_conv5_i_i469_5_4@uint8;
(*   %and.i.i461.6.4 = and i32 %conv.i.i460.6.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i461_6_4 v_conv_i_i460_6_4 (0x1)@uint32;
(*   %conv1.i.i462.6.4 = zext i8 %conv7.i.i472.5.4 to i32 *)
cast v_conv1_i_i462_6_4@uint32 v_conv7_i_i472_5_4@uint8;
(*   %mul.i.i463.6.4 = mul nsw i32 %and.i.i461.6.4, %conv1.i.i462.6.4 *)
mul v_mul_i_i463_6_4 v_and_i_i461_6_4 v_conv1_i_i462_6_4;
(*   %conv2.i.i464.6.4 = zext i8 %conv3.i.i466.5.4 to i32 *)
cast v_conv2_i_i464_6_4@uint32 v_conv3_i_i466_5_4@uint8;
(*   %xor.i.i465.6.4 = xor i32 %conv2.i.i464.6.4, %mul.i.i463.6.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i465_6_4 v_conv2_i_i464_6_4 v_mul_i_i463_6_4;
(*   %conv3.i.i466.6.4 = trunc i32 %xor.i.i465.6.4 to i8 *)
split tmp_v_xor_i_i465_6_4 v_conv3_i_i466_6_4 v_xor_i_i465_6_4 8;
vpc v_conv3_i_i466_6_4@uint8 v_conv3_i_i466_6_4@uint32;
(*   %conv4.i.i467.6.4 = zext i8 %conv5.i.i469.5.4 to i32 *)
cast v_conv4_i_i467_6_4@uint32 v_conv5_i_i469_5_4@uint8;
(*   %shr.i.i468.6.4 = ashr i32 %conv4.i.i467.6.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i468_6_4 tmp_to_be_used v_conv4_i_i467_6_4 1;
(*   %conv5.i.i469.6.4 = trunc i32 %shr.i.i468.6.4 to i8 *)
split tmp_v_shr_i_i468_6_4 v_conv5_i_i469_6_4 v_shr_i_i468_6_4 8;
vpc v_conv5_i_i469_6_4@uint8 v_conv5_i_i469_6_4@uint32;
(*   %conv6.i.i470.6.4 = zext i8 %conv7.i.i472.5.4 to i32 *)
cast v_conv6_i_i470_6_4@uint32 v_conv7_i_i472_5_4@uint8;
(*   %shl.i.i471.6.4 = shl i32 %conv6.i.i470.6.4, 1 *)
shls discard_139 v_shl_i_i471_6_4 v_conv6_i_i470_6_4 1;
(*   %conv7.i.i472.6.4 = trunc i32 %shl.i.i471.6.4 to i8 *)
split tmp_v_shl_i_i471_6_4 v_conv7_i_i472_6_4 v_shl_i_i471_6_4 8;
vpc v_conv7_i_i472_6_4@uint8 v_conv7_i_i472_6_4@uint32;
(*   %conv.i.i460.7.4 = zext i8 %conv5.i.i469.6.4 to i32 *)
cast v_conv_i_i460_7_4@uint32 v_conv5_i_i469_6_4@uint8;
(*   %and.i.i461.7.4 = and i32 %conv.i.i460.7.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i461_7_4 v_conv_i_i460_7_4 (0x1)@uint32;
(*   %conv1.i.i462.7.4 = zext i8 %conv7.i.i472.6.4 to i32 *)
cast v_conv1_i_i462_7_4@uint32 v_conv7_i_i472_6_4@uint8;
(*   %mul.i.i463.7.4 = mul nsw i32 %and.i.i461.7.4, %conv1.i.i462.7.4 *)
mul v_mul_i_i463_7_4 v_and_i_i461_7_4 v_conv1_i_i462_7_4;
(*   %conv2.i.i464.7.4 = zext i8 %conv3.i.i466.6.4 to i32 *)
cast v_conv2_i_i464_7_4@uint32 v_conv3_i_i466_6_4@uint8;
(*   %xor.i.i465.7.4 = xor i32 %conv2.i.i464.7.4, %mul.i.i463.7.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i465_7_4 v_conv2_i_i464_7_4 v_mul_i_i463_7_4;
(*   %conv3.i.i466.7.4 = trunc i32 %xor.i.i465.7.4 to i8 *)
split tmp_v_xor_i_i465_7_4 v_conv3_i_i466_7_4 v_xor_i_i465_7_4 8;
vpc v_conv3_i_i466_7_4@uint8 v_conv3_i_i466_7_4@uint32;
(*   %arrayidx6.i476.4 = getelementptr inbounds i8, i8* %add.ptr10, i64 4 *)
(*   store i8 %conv3.i.i466.7.4, i8* %arrayidx6.i476.4, align 1 *)
mov cc_24 v_conv3_i_i466_7_4;
(*   %arraydecay11 = getelementptr inbounds [50 x i8], [50 x i8]* %cc, i64 0, i64 0 *)
(*   %add.ptr12 = getelementptr inbounds i8, i8* %arraydecay11, i64 25 *)
(*   %arrayidx.i409 = getelementptr inbounds i8, i8* %a, i64 2 *)
(*   %40 = load i8, i8* %arrayidx.i409, align 1 *)
mov v40 a_2;
(*   %41 = load i8, i8* %b, align 1 *)
mov v41 b_0;
(*   %conv.i.i417 = zext i8 %41 to i32 *)
cast v_conv_i_i417@uint32 v41@uint8;
(*   %and.i.i418 = and i32 %conv.i.i417, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i418 v_conv_i_i417 (0x1)@uint32;
(*   %conv1.i.i419 = zext i8 %40 to i32 *)
cast v_conv1_i_i419@uint32 v40@uint8;
(*   %mul.i.i420 = mul nsw i32 %and.i.i418, %conv1.i.i419 *)
mul v_mul_i_i420 v_and_i_i418 v_conv1_i_i419;
(*   %conv3.i.i423 = trunc i32 %mul.i.i420 to i8 *)
split tmp_v_mul_i_i420 v_conv3_i_i423 v_mul_i_i420 8;
vpc v_conv3_i_i423@uint8 v_conv3_i_i423@uint32;
(*   %conv4.i.i424 = zext i8 %41 to i32 *)
cast v_conv4_i_i424@uint32 v41@uint8;
(*   %shr.i.i425 = ashr i32 %conv4.i.i424, 1 *)
(* You may need to modify here *)
split v_shr_i_i425 tmp_to_be_used v_conv4_i_i424 1;
(*   %conv5.i.i426 = trunc i32 %shr.i.i425 to i8 *)
split tmp_v_shr_i_i425 v_conv5_i_i426 v_shr_i_i425 8;
vpc v_conv5_i_i426@uint8 v_conv5_i_i426@uint32;
(*   %conv6.i.i427 = zext i8 %40 to i32 *)
cast v_conv6_i_i427@uint32 v40@uint8;
(*   %shl.i.i428 = shl i32 %conv6.i.i427, 1 *)
shls discard_140 v_shl_i_i428 v_conv6_i_i427 1;
(*   %conv7.i.i429 = trunc i32 %shl.i.i428 to i8 *)
split tmp_v_shl_i_i428 v_conv7_i_i429 v_shl_i_i428 8;
vpc v_conv7_i_i429@uint8 v_conv7_i_i429@uint32;
(*   %conv.i.i417.1 = zext i8 %conv5.i.i426 to i32 *)
cast v_conv_i_i417_1@uint32 v_conv5_i_i426@uint8;
(*   %and.i.i418.1 = and i32 %conv.i.i417.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i418_1 v_conv_i_i417_1 (0x1)@uint32;
(*   %conv1.i.i419.1 = zext i8 %conv7.i.i429 to i32 *)
cast v_conv1_i_i419_1@uint32 v_conv7_i_i429@uint8;
(*   %mul.i.i420.1 = mul nsw i32 %and.i.i418.1, %conv1.i.i419.1 *)
mul v_mul_i_i420_1 v_and_i_i418_1 v_conv1_i_i419_1;
(*   %conv2.i.i421.1 = zext i8 %conv3.i.i423 to i32 *)
cast v_conv2_i_i421_1@uint32 v_conv3_i_i423@uint8;
(*   %xor.i.i422.1 = xor i32 %conv2.i.i421.1, %mul.i.i420.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i422_1 v_conv2_i_i421_1 v_mul_i_i420_1;
(*   %conv3.i.i423.1 = trunc i32 %xor.i.i422.1 to i8 *)
split tmp_v_xor_i_i422_1 v_conv3_i_i423_1 v_xor_i_i422_1 8;
vpc v_conv3_i_i423_1@uint8 v_conv3_i_i423_1@uint32;
(*   %conv4.i.i424.1 = zext i8 %conv5.i.i426 to i32 *)
cast v_conv4_i_i424_1@uint32 v_conv5_i_i426@uint8;
(*   %shr.i.i425.1 = ashr i32 %conv4.i.i424.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i425_1 tmp_to_be_used v_conv4_i_i424_1 1;
(*   %conv5.i.i426.1 = trunc i32 %shr.i.i425.1 to i8 *)
split tmp_v_shr_i_i425_1 v_conv5_i_i426_1 v_shr_i_i425_1 8;
vpc v_conv5_i_i426_1@uint8 v_conv5_i_i426_1@uint32;
(*   %conv6.i.i427.1 = zext i8 %conv7.i.i429 to i32 *)
cast v_conv6_i_i427_1@uint32 v_conv7_i_i429@uint8;
(*   %shl.i.i428.1 = shl i32 %conv6.i.i427.1, 1 *)
shls discard_141 v_shl_i_i428_1 v_conv6_i_i427_1 1;
(*   %conv7.i.i429.1 = trunc i32 %shl.i.i428.1 to i8 *)
split tmp_v_shl_i_i428_1 v_conv7_i_i429_1 v_shl_i_i428_1 8;
vpc v_conv7_i_i429_1@uint8 v_conv7_i_i429_1@uint32;
(*   %conv.i.i417.2 = zext i8 %conv5.i.i426.1 to i32 *)
cast v_conv_i_i417_2@uint32 v_conv5_i_i426_1@uint8;
(*   %and.i.i418.2 = and i32 %conv.i.i417.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i418_2 v_conv_i_i417_2 (0x1)@uint32;
(*   %conv1.i.i419.2 = zext i8 %conv7.i.i429.1 to i32 *)
cast v_conv1_i_i419_2@uint32 v_conv7_i_i429_1@uint8;
(*   %mul.i.i420.2 = mul nsw i32 %and.i.i418.2, %conv1.i.i419.2 *)
mul v_mul_i_i420_2 v_and_i_i418_2 v_conv1_i_i419_2;
(*   %conv2.i.i421.2 = zext i8 %conv3.i.i423.1 to i32 *)
cast v_conv2_i_i421_2@uint32 v_conv3_i_i423_1@uint8;
(*   %xor.i.i422.2 = xor i32 %conv2.i.i421.2, %mul.i.i420.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i422_2 v_conv2_i_i421_2 v_mul_i_i420_2;
(*   %conv3.i.i423.2 = trunc i32 %xor.i.i422.2 to i8 *)
split tmp_v_xor_i_i422_2 v_conv3_i_i423_2 v_xor_i_i422_2 8;
vpc v_conv3_i_i423_2@uint8 v_conv3_i_i423_2@uint32;
(*   %conv4.i.i424.2 = zext i8 %conv5.i.i426.1 to i32 *)
cast v_conv4_i_i424_2@uint32 v_conv5_i_i426_1@uint8;
(*   %shr.i.i425.2 = ashr i32 %conv4.i.i424.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i425_2 tmp_to_be_used v_conv4_i_i424_2 1;
(*   %conv5.i.i426.2 = trunc i32 %shr.i.i425.2 to i8 *)
split tmp_v_shr_i_i425_2 v_conv5_i_i426_2 v_shr_i_i425_2 8;
vpc v_conv5_i_i426_2@uint8 v_conv5_i_i426_2@uint32;
(*   %conv6.i.i427.2 = zext i8 %conv7.i.i429.1 to i32 *)
cast v_conv6_i_i427_2@uint32 v_conv7_i_i429_1@uint8;
(*   %shl.i.i428.2 = shl i32 %conv6.i.i427.2, 1 *)
shls discard_142 v_shl_i_i428_2 v_conv6_i_i427_2 1;
(*   %conv7.i.i429.2 = trunc i32 %shl.i.i428.2 to i8 *)
split tmp_v_shl_i_i428_2 v_conv7_i_i429_2 v_shl_i_i428_2 8;
vpc v_conv7_i_i429_2@uint8 v_conv7_i_i429_2@uint32;
(*   %conv.i.i417.3 = zext i8 %conv5.i.i426.2 to i32 *)
cast v_conv_i_i417_3@uint32 v_conv5_i_i426_2@uint8;
(*   %and.i.i418.3 = and i32 %conv.i.i417.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i418_3 v_conv_i_i417_3 (0x1)@uint32;
(*   %conv1.i.i419.3 = zext i8 %conv7.i.i429.2 to i32 *)
cast v_conv1_i_i419_3@uint32 v_conv7_i_i429_2@uint8;
(*   %mul.i.i420.3 = mul nsw i32 %and.i.i418.3, %conv1.i.i419.3 *)
mul v_mul_i_i420_3 v_and_i_i418_3 v_conv1_i_i419_3;
(*   %conv2.i.i421.3 = zext i8 %conv3.i.i423.2 to i32 *)
cast v_conv2_i_i421_3@uint32 v_conv3_i_i423_2@uint8;
(*   %xor.i.i422.3 = xor i32 %conv2.i.i421.3, %mul.i.i420.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i422_3 v_conv2_i_i421_3 v_mul_i_i420_3;
(*   %conv3.i.i423.3 = trunc i32 %xor.i.i422.3 to i8 *)
split tmp_v_xor_i_i422_3 v_conv3_i_i423_3 v_xor_i_i422_3 8;
vpc v_conv3_i_i423_3@uint8 v_conv3_i_i423_3@uint32;
(*   %conv4.i.i424.3 = zext i8 %conv5.i.i426.2 to i32 *)
cast v_conv4_i_i424_3@uint32 v_conv5_i_i426_2@uint8;
(*   %shr.i.i425.3 = ashr i32 %conv4.i.i424.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i425_3 tmp_to_be_used v_conv4_i_i424_3 1;
(*   %conv5.i.i426.3 = trunc i32 %shr.i.i425.3 to i8 *)
split tmp_v_shr_i_i425_3 v_conv5_i_i426_3 v_shr_i_i425_3 8;
vpc v_conv5_i_i426_3@uint8 v_conv5_i_i426_3@uint32;
(*   %conv6.i.i427.3 = zext i8 %conv7.i.i429.2 to i32 *)
cast v_conv6_i_i427_3@uint32 v_conv7_i_i429_2@uint8;
(*   %shl.i.i428.3 = shl i32 %conv6.i.i427.3, 1 *)
shls discard_143 v_shl_i_i428_3 v_conv6_i_i427_3 1;
(*   %conv7.i.i429.3 = trunc i32 %shl.i.i428.3 to i8 *)
split tmp_v_shl_i_i428_3 v_conv7_i_i429_3 v_shl_i_i428_3 8;
vpc v_conv7_i_i429_3@uint8 v_conv7_i_i429_3@uint32;
(*   %conv.i.i417.4 = zext i8 %conv5.i.i426.3 to i32 *)
cast v_conv_i_i417_4@uint32 v_conv5_i_i426_3@uint8;
(*   %and.i.i418.4 = and i32 %conv.i.i417.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i418_4 v_conv_i_i417_4 (0x1)@uint32;
(*   %conv1.i.i419.4 = zext i8 %conv7.i.i429.3 to i32 *)
cast v_conv1_i_i419_4@uint32 v_conv7_i_i429_3@uint8;
(*   %mul.i.i420.4 = mul nsw i32 %and.i.i418.4, %conv1.i.i419.4 *)
mul v_mul_i_i420_4 v_and_i_i418_4 v_conv1_i_i419_4;
(*   %conv2.i.i421.4 = zext i8 %conv3.i.i423.3 to i32 *)
cast v_conv2_i_i421_4@uint32 v_conv3_i_i423_3@uint8;
(*   %xor.i.i422.4 = xor i32 %conv2.i.i421.4, %mul.i.i420.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i422_4 v_conv2_i_i421_4 v_mul_i_i420_4;
(*   %conv3.i.i423.4 = trunc i32 %xor.i.i422.4 to i8 *)
split tmp_v_xor_i_i422_4 v_conv3_i_i423_4 v_xor_i_i422_4 8;
vpc v_conv3_i_i423_4@uint8 v_conv3_i_i423_4@uint32;
(*   %conv4.i.i424.4 = zext i8 %conv5.i.i426.3 to i32 *)
cast v_conv4_i_i424_4@uint32 v_conv5_i_i426_3@uint8;
(*   %shr.i.i425.4 = ashr i32 %conv4.i.i424.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i425_4 tmp_to_be_used v_conv4_i_i424_4 1;
(*   %conv5.i.i426.4 = trunc i32 %shr.i.i425.4 to i8 *)
split tmp_v_shr_i_i425_4 v_conv5_i_i426_4 v_shr_i_i425_4 8;
vpc v_conv5_i_i426_4@uint8 v_conv5_i_i426_4@uint32;
(*   %conv6.i.i427.4 = zext i8 %conv7.i.i429.3 to i32 *)
cast v_conv6_i_i427_4@uint32 v_conv7_i_i429_3@uint8;
(*   %shl.i.i428.4 = shl i32 %conv6.i.i427.4, 1 *)
shls discard_144 v_shl_i_i428_4 v_conv6_i_i427_4 1;
(*   %conv7.i.i429.4 = trunc i32 %shl.i.i428.4 to i8 *)
split tmp_v_shl_i_i428_4 v_conv7_i_i429_4 v_shl_i_i428_4 8;
vpc v_conv7_i_i429_4@uint8 v_conv7_i_i429_4@uint32;
(*   %conv.i.i417.5 = zext i8 %conv5.i.i426.4 to i32 *)
cast v_conv_i_i417_5@uint32 v_conv5_i_i426_4@uint8;
(*   %and.i.i418.5 = and i32 %conv.i.i417.5, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i418_5 v_conv_i_i417_5 (0x1)@uint32;
(*   %conv1.i.i419.5 = zext i8 %conv7.i.i429.4 to i32 *)
cast v_conv1_i_i419_5@uint32 v_conv7_i_i429_4@uint8;
(*   %mul.i.i420.5 = mul nsw i32 %and.i.i418.5, %conv1.i.i419.5 *)
mul v_mul_i_i420_5 v_and_i_i418_5 v_conv1_i_i419_5;
(*   %conv2.i.i421.5 = zext i8 %conv3.i.i423.4 to i32 *)
cast v_conv2_i_i421_5@uint32 v_conv3_i_i423_4@uint8;
(*   %xor.i.i422.5 = xor i32 %conv2.i.i421.5, %mul.i.i420.5 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i422_5 v_conv2_i_i421_5 v_mul_i_i420_5;
(*   %conv3.i.i423.5 = trunc i32 %xor.i.i422.5 to i8 *)
split tmp_v_xor_i_i422_5 v_conv3_i_i423_5 v_xor_i_i422_5 8;
vpc v_conv3_i_i423_5@uint8 v_conv3_i_i423_5@uint32;
(*   %conv4.i.i424.5 = zext i8 %conv5.i.i426.4 to i32 *)
cast v_conv4_i_i424_5@uint32 v_conv5_i_i426_4@uint8;
(*   %shr.i.i425.5 = ashr i32 %conv4.i.i424.5, 1 *)
(* You may need to modify here *)
split v_shr_i_i425_5 tmp_to_be_used v_conv4_i_i424_5 1;
(*   %conv5.i.i426.5 = trunc i32 %shr.i.i425.5 to i8 *)
split tmp_v_shr_i_i425_5 v_conv5_i_i426_5 v_shr_i_i425_5 8;
vpc v_conv5_i_i426_5@uint8 v_conv5_i_i426_5@uint32;
(*   %conv6.i.i427.5 = zext i8 %conv7.i.i429.4 to i32 *)
cast v_conv6_i_i427_5@uint32 v_conv7_i_i429_4@uint8;
(*   %shl.i.i428.5 = shl i32 %conv6.i.i427.5, 1 *)
shls discard_145 v_shl_i_i428_5 v_conv6_i_i427_5 1;
(*   %conv7.i.i429.5 = trunc i32 %shl.i.i428.5 to i8 *)
split tmp_v_shl_i_i428_5 v_conv7_i_i429_5 v_shl_i_i428_5 8;
vpc v_conv7_i_i429_5@uint8 v_conv7_i_i429_5@uint32;
(*   %conv.i.i417.6 = zext i8 %conv5.i.i426.5 to i32 *)
cast v_conv_i_i417_6@uint32 v_conv5_i_i426_5@uint8;
(*   %and.i.i418.6 = and i32 %conv.i.i417.6, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i418_6 v_conv_i_i417_6 (0x1)@uint32;
(*   %conv1.i.i419.6 = zext i8 %conv7.i.i429.5 to i32 *)
cast v_conv1_i_i419_6@uint32 v_conv7_i_i429_5@uint8;
(*   %mul.i.i420.6 = mul nsw i32 %and.i.i418.6, %conv1.i.i419.6 *)
mul v_mul_i_i420_6 v_and_i_i418_6 v_conv1_i_i419_6;
(*   %conv2.i.i421.6 = zext i8 %conv3.i.i423.5 to i32 *)
cast v_conv2_i_i421_6@uint32 v_conv3_i_i423_5@uint8;
(*   %xor.i.i422.6 = xor i32 %conv2.i.i421.6, %mul.i.i420.6 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i422_6 v_conv2_i_i421_6 v_mul_i_i420_6;
(*   %conv3.i.i423.6 = trunc i32 %xor.i.i422.6 to i8 *)
split tmp_v_xor_i_i422_6 v_conv3_i_i423_6 v_xor_i_i422_6 8;
vpc v_conv3_i_i423_6@uint8 v_conv3_i_i423_6@uint32;
(*   %conv4.i.i424.6 = zext i8 %conv5.i.i426.5 to i32 *)
cast v_conv4_i_i424_6@uint32 v_conv5_i_i426_5@uint8;
(*   %shr.i.i425.6 = ashr i32 %conv4.i.i424.6, 1 *)
(* You may need to modify here *)
split v_shr_i_i425_6 tmp_to_be_used v_conv4_i_i424_6 1;
(*   %conv5.i.i426.6 = trunc i32 %shr.i.i425.6 to i8 *)
split tmp_v_shr_i_i425_6 v_conv5_i_i426_6 v_shr_i_i425_6 8;
vpc v_conv5_i_i426_6@uint8 v_conv5_i_i426_6@uint32;
(*   %conv6.i.i427.6 = zext i8 %conv7.i.i429.5 to i32 *)
cast v_conv6_i_i427_6@uint32 v_conv7_i_i429_5@uint8;
(*   %shl.i.i428.6 = shl i32 %conv6.i.i427.6, 1 *)
shls discard_146 v_shl_i_i428_6 v_conv6_i_i427_6 1;
(*   %conv7.i.i429.6 = trunc i32 %shl.i.i428.6 to i8 *)
split tmp_v_shl_i_i428_6 v_conv7_i_i429_6 v_shl_i_i428_6 8;
vpc v_conv7_i_i429_6@uint8 v_conv7_i_i429_6@uint32;
(*   %conv.i.i417.7 = zext i8 %conv5.i.i426.6 to i32 *)
cast v_conv_i_i417_7@uint32 v_conv5_i_i426_6@uint8;
(*   %and.i.i418.7 = and i32 %conv.i.i417.7, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i418_7 v_conv_i_i417_7 (0x1)@uint32;
(*   %conv1.i.i419.7 = zext i8 %conv7.i.i429.6 to i32 *)
cast v_conv1_i_i419_7@uint32 v_conv7_i_i429_6@uint8;
(*   %mul.i.i420.7 = mul nsw i32 %and.i.i418.7, %conv1.i.i419.7 *)
mul v_mul_i_i420_7 v_and_i_i418_7 v_conv1_i_i419_7;
(*   %conv2.i.i421.7 = zext i8 %conv3.i.i423.6 to i32 *)
cast v_conv2_i_i421_7@uint32 v_conv3_i_i423_6@uint8;
(*   %xor.i.i422.7 = xor i32 %conv2.i.i421.7, %mul.i.i420.7 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i422_7 v_conv2_i_i421_7 v_mul_i_i420_7;
(*   %conv3.i.i423.7 = trunc i32 %xor.i.i422.7 to i8 *)
split tmp_v_xor_i_i422_7 v_conv3_i_i423_7 v_xor_i_i422_7 8;
vpc v_conv3_i_i423_7@uint8 v_conv3_i_i423_7@uint32;
(*   store i8 %conv3.i.i423.7, i8* %add.ptr12, align 1 *)
mov cc_25 v_conv3_i_i423_7;
(*   %arrayidx.i409.1 = getelementptr inbounds i8, i8* %a, i64 3 *)
(*   %42 = load i8, i8* %arrayidx.i409.1, align 1 *)
mov v42 a_3;
(*   %arrayidx4.i413.1 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %43 = load i8, i8* %arrayidx4.i413.1, align 1 *)
mov v43 b_1;
(*   %conv.i.i417.1172 = zext i8 %43 to i32 *)
cast v_conv_i_i417_1172@uint32 v43@uint8;
(*   %and.i.i418.1173 = and i32 %conv.i.i417.1172, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i418_1173 v_conv_i_i417_1172 (0x1)@uint32;
(*   %conv1.i.i419.1174 = zext i8 %42 to i32 *)
cast v_conv1_i_i419_1174@uint32 v42@uint8;
(*   %mul.i.i420.1175 = mul nsw i32 %and.i.i418.1173, %conv1.i.i419.1174 *)
mul v_mul_i_i420_1175 v_and_i_i418_1173 v_conv1_i_i419_1174;
(*   %conv3.i.i423.1176 = trunc i32 %mul.i.i420.1175 to i8 *)
split tmp_v_mul_i_i420_1175 v_conv3_i_i423_1176 v_mul_i_i420_1175 8;
vpc v_conv3_i_i423_1176@uint8 v_conv3_i_i423_1176@uint32;
(*   %conv4.i.i424.1177 = zext i8 %43 to i32 *)
cast v_conv4_i_i424_1177@uint32 v43@uint8;
(*   %shr.i.i425.1178 = ashr i32 %conv4.i.i424.1177, 1 *)
(* You may need to modify here *)
split v_shr_i_i425_1178 tmp_to_be_used v_conv4_i_i424_1177 1;
(*   %conv5.i.i426.1179 = trunc i32 %shr.i.i425.1178 to i8 *)
split tmp_v_shr_i_i425_1178 v_conv5_i_i426_1179 v_shr_i_i425_1178 8;
vpc v_conv5_i_i426_1179@uint8 v_conv5_i_i426_1179@uint32;
(*   %conv6.i.i427.1180 = zext i8 %42 to i32 *)
cast v_conv6_i_i427_1180@uint32 v42@uint8;
(*   %shl.i.i428.1181 = shl i32 %conv6.i.i427.1180, 1 *)
shls discard_147 v_shl_i_i428_1181 v_conv6_i_i427_1180 1;
(*   %conv7.i.i429.1182 = trunc i32 %shl.i.i428.1181 to i8 *)
split tmp_v_shl_i_i428_1181 v_conv7_i_i429_1182 v_shl_i_i428_1181 8;
vpc v_conv7_i_i429_1182@uint8 v_conv7_i_i429_1182@uint32;
(*   %conv.i.i417.1.1 = zext i8 %conv5.i.i426.1179 to i32 *)
cast v_conv_i_i417_1_1@uint32 v_conv5_i_i426_1179@uint8;
(*   %and.i.i418.1.1 = and i32 %conv.i.i417.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i418_1_1 v_conv_i_i417_1_1 (0x1)@uint32;
(*   %conv1.i.i419.1.1 = zext i8 %conv7.i.i429.1182 to i32 *)
cast v_conv1_i_i419_1_1@uint32 v_conv7_i_i429_1182@uint8;
(*   %mul.i.i420.1.1 = mul nsw i32 %and.i.i418.1.1, %conv1.i.i419.1.1 *)
mul v_mul_i_i420_1_1 v_and_i_i418_1_1 v_conv1_i_i419_1_1;
(*   %conv2.i.i421.1.1 = zext i8 %conv3.i.i423.1176 to i32 *)
cast v_conv2_i_i421_1_1@uint32 v_conv3_i_i423_1176@uint8;
(*   %xor.i.i422.1.1 = xor i32 %conv2.i.i421.1.1, %mul.i.i420.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i422_1_1 v_conv2_i_i421_1_1 v_mul_i_i420_1_1;
(*   %conv3.i.i423.1.1 = trunc i32 %xor.i.i422.1.1 to i8 *)
split tmp_v_xor_i_i422_1_1 v_conv3_i_i423_1_1 v_xor_i_i422_1_1 8;
vpc v_conv3_i_i423_1_1@uint8 v_conv3_i_i423_1_1@uint32;
(*   %conv4.i.i424.1.1 = zext i8 %conv5.i.i426.1179 to i32 *)
cast v_conv4_i_i424_1_1@uint32 v_conv5_i_i426_1179@uint8;
(*   %shr.i.i425.1.1 = ashr i32 %conv4.i.i424.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i425_1_1 tmp_to_be_used v_conv4_i_i424_1_1 1;
(*   %conv5.i.i426.1.1 = trunc i32 %shr.i.i425.1.1 to i8 *)
split tmp_v_shr_i_i425_1_1 v_conv5_i_i426_1_1 v_shr_i_i425_1_1 8;
vpc v_conv5_i_i426_1_1@uint8 v_conv5_i_i426_1_1@uint32;
(*   %conv6.i.i427.1.1 = zext i8 %conv7.i.i429.1182 to i32 *)
cast v_conv6_i_i427_1_1@uint32 v_conv7_i_i429_1182@uint8;
(*   %shl.i.i428.1.1 = shl i32 %conv6.i.i427.1.1, 1 *)
shls discard_148 v_shl_i_i428_1_1 v_conv6_i_i427_1_1 1;
(*   %conv7.i.i429.1.1 = trunc i32 %shl.i.i428.1.1 to i8 *)
split tmp_v_shl_i_i428_1_1 v_conv7_i_i429_1_1 v_shl_i_i428_1_1 8;
vpc v_conv7_i_i429_1_1@uint8 v_conv7_i_i429_1_1@uint32;
(*   %conv.i.i417.2.1 = zext i8 %conv5.i.i426.1.1 to i32 *)
cast v_conv_i_i417_2_1@uint32 v_conv5_i_i426_1_1@uint8;
(*   %and.i.i418.2.1 = and i32 %conv.i.i417.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i418_2_1 v_conv_i_i417_2_1 (0x1)@uint32;
(*   %conv1.i.i419.2.1 = zext i8 %conv7.i.i429.1.1 to i32 *)
cast v_conv1_i_i419_2_1@uint32 v_conv7_i_i429_1_1@uint8;
(*   %mul.i.i420.2.1 = mul nsw i32 %and.i.i418.2.1, %conv1.i.i419.2.1 *)
mul v_mul_i_i420_2_1 v_and_i_i418_2_1 v_conv1_i_i419_2_1;
(*   %conv2.i.i421.2.1 = zext i8 %conv3.i.i423.1.1 to i32 *)
cast v_conv2_i_i421_2_1@uint32 v_conv3_i_i423_1_1@uint8;
(*   %xor.i.i422.2.1 = xor i32 %conv2.i.i421.2.1, %mul.i.i420.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i422_2_1 v_conv2_i_i421_2_1 v_mul_i_i420_2_1;
(*   %conv3.i.i423.2.1 = trunc i32 %xor.i.i422.2.1 to i8 *)
split tmp_v_xor_i_i422_2_1 v_conv3_i_i423_2_1 v_xor_i_i422_2_1 8;
vpc v_conv3_i_i423_2_1@uint8 v_conv3_i_i423_2_1@uint32;
(*   %conv4.i.i424.2.1 = zext i8 %conv5.i.i426.1.1 to i32 *)
cast v_conv4_i_i424_2_1@uint32 v_conv5_i_i426_1_1@uint8;
(*   %shr.i.i425.2.1 = ashr i32 %conv4.i.i424.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i425_2_1 tmp_to_be_used v_conv4_i_i424_2_1 1;
(*   %conv5.i.i426.2.1 = trunc i32 %shr.i.i425.2.1 to i8 *)
split tmp_v_shr_i_i425_2_1 v_conv5_i_i426_2_1 v_shr_i_i425_2_1 8;
vpc v_conv5_i_i426_2_1@uint8 v_conv5_i_i426_2_1@uint32;
(*   %conv6.i.i427.2.1 = zext i8 %conv7.i.i429.1.1 to i32 *)
cast v_conv6_i_i427_2_1@uint32 v_conv7_i_i429_1_1@uint8;
(*   %shl.i.i428.2.1 = shl i32 %conv6.i.i427.2.1, 1 *)
shls discard_149 v_shl_i_i428_2_1 v_conv6_i_i427_2_1 1;
(*   %conv7.i.i429.2.1 = trunc i32 %shl.i.i428.2.1 to i8 *)
split tmp_v_shl_i_i428_2_1 v_conv7_i_i429_2_1 v_shl_i_i428_2_1 8;
vpc v_conv7_i_i429_2_1@uint8 v_conv7_i_i429_2_1@uint32;
(*   %conv.i.i417.3.1 = zext i8 %conv5.i.i426.2.1 to i32 *)
cast v_conv_i_i417_3_1@uint32 v_conv5_i_i426_2_1@uint8;
(*   %and.i.i418.3.1 = and i32 %conv.i.i417.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i418_3_1 v_conv_i_i417_3_1 (0x1)@uint32;
(*   %conv1.i.i419.3.1 = zext i8 %conv7.i.i429.2.1 to i32 *)
cast v_conv1_i_i419_3_1@uint32 v_conv7_i_i429_2_1@uint8;
(*   %mul.i.i420.3.1 = mul nsw i32 %and.i.i418.3.1, %conv1.i.i419.3.1 *)
mul v_mul_i_i420_3_1 v_and_i_i418_3_1 v_conv1_i_i419_3_1;
(*   %conv2.i.i421.3.1 = zext i8 %conv3.i.i423.2.1 to i32 *)
cast v_conv2_i_i421_3_1@uint32 v_conv3_i_i423_2_1@uint8;
(*   %xor.i.i422.3.1 = xor i32 %conv2.i.i421.3.1, %mul.i.i420.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i422_3_1 v_conv2_i_i421_3_1 v_mul_i_i420_3_1;
(*   %conv3.i.i423.3.1 = trunc i32 %xor.i.i422.3.1 to i8 *)
split tmp_v_xor_i_i422_3_1 v_conv3_i_i423_3_1 v_xor_i_i422_3_1 8;
vpc v_conv3_i_i423_3_1@uint8 v_conv3_i_i423_3_1@uint32;
(*   %conv4.i.i424.3.1 = zext i8 %conv5.i.i426.2.1 to i32 *)
cast v_conv4_i_i424_3_1@uint32 v_conv5_i_i426_2_1@uint8;
(*   %shr.i.i425.3.1 = ashr i32 %conv4.i.i424.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i425_3_1 tmp_to_be_used v_conv4_i_i424_3_1 1;
(*   %conv5.i.i426.3.1 = trunc i32 %shr.i.i425.3.1 to i8 *)
split tmp_v_shr_i_i425_3_1 v_conv5_i_i426_3_1 v_shr_i_i425_3_1 8;
vpc v_conv5_i_i426_3_1@uint8 v_conv5_i_i426_3_1@uint32;
(*   %conv6.i.i427.3.1 = zext i8 %conv7.i.i429.2.1 to i32 *)
cast v_conv6_i_i427_3_1@uint32 v_conv7_i_i429_2_1@uint8;
(*   %shl.i.i428.3.1 = shl i32 %conv6.i.i427.3.1, 1 *)
shls discard_150 v_shl_i_i428_3_1 v_conv6_i_i427_3_1 1;
(*   %conv7.i.i429.3.1 = trunc i32 %shl.i.i428.3.1 to i8 *)
split tmp_v_shl_i_i428_3_1 v_conv7_i_i429_3_1 v_shl_i_i428_3_1 8;
vpc v_conv7_i_i429_3_1@uint8 v_conv7_i_i429_3_1@uint32;
(*   %conv.i.i417.4.1 = zext i8 %conv5.i.i426.3.1 to i32 *)
cast v_conv_i_i417_4_1@uint32 v_conv5_i_i426_3_1@uint8;
(*   %and.i.i418.4.1 = and i32 %conv.i.i417.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i418_4_1 v_conv_i_i417_4_1 (0x1)@uint32;
(*   %conv1.i.i419.4.1 = zext i8 %conv7.i.i429.3.1 to i32 *)
cast v_conv1_i_i419_4_1@uint32 v_conv7_i_i429_3_1@uint8;
(*   %mul.i.i420.4.1 = mul nsw i32 %and.i.i418.4.1, %conv1.i.i419.4.1 *)
mul v_mul_i_i420_4_1 v_and_i_i418_4_1 v_conv1_i_i419_4_1;
(*   %conv2.i.i421.4.1 = zext i8 %conv3.i.i423.3.1 to i32 *)
cast v_conv2_i_i421_4_1@uint32 v_conv3_i_i423_3_1@uint8;
(*   %xor.i.i422.4.1 = xor i32 %conv2.i.i421.4.1, %mul.i.i420.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i422_4_1 v_conv2_i_i421_4_1 v_mul_i_i420_4_1;
(*   %conv3.i.i423.4.1 = trunc i32 %xor.i.i422.4.1 to i8 *)
split tmp_v_xor_i_i422_4_1 v_conv3_i_i423_4_1 v_xor_i_i422_4_1 8;
vpc v_conv3_i_i423_4_1@uint8 v_conv3_i_i423_4_1@uint32;
(*   %conv4.i.i424.4.1 = zext i8 %conv5.i.i426.3.1 to i32 *)
cast v_conv4_i_i424_4_1@uint32 v_conv5_i_i426_3_1@uint8;
(*   %shr.i.i425.4.1 = ashr i32 %conv4.i.i424.4.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i425_4_1 tmp_to_be_used v_conv4_i_i424_4_1 1;
(*   %conv5.i.i426.4.1 = trunc i32 %shr.i.i425.4.1 to i8 *)
split tmp_v_shr_i_i425_4_1 v_conv5_i_i426_4_1 v_shr_i_i425_4_1 8;
vpc v_conv5_i_i426_4_1@uint8 v_conv5_i_i426_4_1@uint32;
(*   %conv6.i.i427.4.1 = zext i8 %conv7.i.i429.3.1 to i32 *)
cast v_conv6_i_i427_4_1@uint32 v_conv7_i_i429_3_1@uint8;
(*   %shl.i.i428.4.1 = shl i32 %conv6.i.i427.4.1, 1 *)
shls discard_151 v_shl_i_i428_4_1 v_conv6_i_i427_4_1 1;
(*   %conv7.i.i429.4.1 = trunc i32 %shl.i.i428.4.1 to i8 *)
split tmp_v_shl_i_i428_4_1 v_conv7_i_i429_4_1 v_shl_i_i428_4_1 8;
vpc v_conv7_i_i429_4_1@uint8 v_conv7_i_i429_4_1@uint32;
(*   %conv.i.i417.5.1 = zext i8 %conv5.i.i426.4.1 to i32 *)
cast v_conv_i_i417_5_1@uint32 v_conv5_i_i426_4_1@uint8;
(*   %and.i.i418.5.1 = and i32 %conv.i.i417.5.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i418_5_1 v_conv_i_i417_5_1 (0x1)@uint32;
(*   %conv1.i.i419.5.1 = zext i8 %conv7.i.i429.4.1 to i32 *)
cast v_conv1_i_i419_5_1@uint32 v_conv7_i_i429_4_1@uint8;
(*   %mul.i.i420.5.1 = mul nsw i32 %and.i.i418.5.1, %conv1.i.i419.5.1 *)
mul v_mul_i_i420_5_1 v_and_i_i418_5_1 v_conv1_i_i419_5_1;
(*   %conv2.i.i421.5.1 = zext i8 %conv3.i.i423.4.1 to i32 *)
cast v_conv2_i_i421_5_1@uint32 v_conv3_i_i423_4_1@uint8;
(*   %xor.i.i422.5.1 = xor i32 %conv2.i.i421.5.1, %mul.i.i420.5.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i422_5_1 v_conv2_i_i421_5_1 v_mul_i_i420_5_1;
(*   %conv3.i.i423.5.1 = trunc i32 %xor.i.i422.5.1 to i8 *)
split tmp_v_xor_i_i422_5_1 v_conv3_i_i423_5_1 v_xor_i_i422_5_1 8;
vpc v_conv3_i_i423_5_1@uint8 v_conv3_i_i423_5_1@uint32;
(*   %conv4.i.i424.5.1 = zext i8 %conv5.i.i426.4.1 to i32 *)
cast v_conv4_i_i424_5_1@uint32 v_conv5_i_i426_4_1@uint8;
(*   %shr.i.i425.5.1 = ashr i32 %conv4.i.i424.5.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i425_5_1 tmp_to_be_used v_conv4_i_i424_5_1 1;
(*   %conv5.i.i426.5.1 = trunc i32 %shr.i.i425.5.1 to i8 *)
split tmp_v_shr_i_i425_5_1 v_conv5_i_i426_5_1 v_shr_i_i425_5_1 8;
vpc v_conv5_i_i426_5_1@uint8 v_conv5_i_i426_5_1@uint32;
(*   %conv6.i.i427.5.1 = zext i8 %conv7.i.i429.4.1 to i32 *)
cast v_conv6_i_i427_5_1@uint32 v_conv7_i_i429_4_1@uint8;
(*   %shl.i.i428.5.1 = shl i32 %conv6.i.i427.5.1, 1 *)
shls discard_152 v_shl_i_i428_5_1 v_conv6_i_i427_5_1 1;
(*   %conv7.i.i429.5.1 = trunc i32 %shl.i.i428.5.1 to i8 *)
split tmp_v_shl_i_i428_5_1 v_conv7_i_i429_5_1 v_shl_i_i428_5_1 8;
vpc v_conv7_i_i429_5_1@uint8 v_conv7_i_i429_5_1@uint32;
(*   %conv.i.i417.6.1 = zext i8 %conv5.i.i426.5.1 to i32 *)
cast v_conv_i_i417_6_1@uint32 v_conv5_i_i426_5_1@uint8;
(*   %and.i.i418.6.1 = and i32 %conv.i.i417.6.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i418_6_1 v_conv_i_i417_6_1 (0x1)@uint32;
(*   %conv1.i.i419.6.1 = zext i8 %conv7.i.i429.5.1 to i32 *)
cast v_conv1_i_i419_6_1@uint32 v_conv7_i_i429_5_1@uint8;
(*   %mul.i.i420.6.1 = mul nsw i32 %and.i.i418.6.1, %conv1.i.i419.6.1 *)
mul v_mul_i_i420_6_1 v_and_i_i418_6_1 v_conv1_i_i419_6_1;
(*   %conv2.i.i421.6.1 = zext i8 %conv3.i.i423.5.1 to i32 *)
cast v_conv2_i_i421_6_1@uint32 v_conv3_i_i423_5_1@uint8;
(*   %xor.i.i422.6.1 = xor i32 %conv2.i.i421.6.1, %mul.i.i420.6.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i422_6_1 v_conv2_i_i421_6_1 v_mul_i_i420_6_1;
(*   %conv3.i.i423.6.1 = trunc i32 %xor.i.i422.6.1 to i8 *)
split tmp_v_xor_i_i422_6_1 v_conv3_i_i423_6_1 v_xor_i_i422_6_1 8;
vpc v_conv3_i_i423_6_1@uint8 v_conv3_i_i423_6_1@uint32;
(*   %conv4.i.i424.6.1 = zext i8 %conv5.i.i426.5.1 to i32 *)
cast v_conv4_i_i424_6_1@uint32 v_conv5_i_i426_5_1@uint8;
(*   %shr.i.i425.6.1 = ashr i32 %conv4.i.i424.6.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i425_6_1 tmp_to_be_used v_conv4_i_i424_6_1 1;
(*   %conv5.i.i426.6.1 = trunc i32 %shr.i.i425.6.1 to i8 *)
split tmp_v_shr_i_i425_6_1 v_conv5_i_i426_6_1 v_shr_i_i425_6_1 8;
vpc v_conv5_i_i426_6_1@uint8 v_conv5_i_i426_6_1@uint32;
(*   %conv6.i.i427.6.1 = zext i8 %conv7.i.i429.5.1 to i32 *)
cast v_conv6_i_i427_6_1@uint32 v_conv7_i_i429_5_1@uint8;
(*   %shl.i.i428.6.1 = shl i32 %conv6.i.i427.6.1, 1 *)
shls discard_153 v_shl_i_i428_6_1 v_conv6_i_i427_6_1 1;
(*   %conv7.i.i429.6.1 = trunc i32 %shl.i.i428.6.1 to i8 *)
split tmp_v_shl_i_i428_6_1 v_conv7_i_i429_6_1 v_shl_i_i428_6_1 8;
vpc v_conv7_i_i429_6_1@uint8 v_conv7_i_i429_6_1@uint32;
(*   %conv.i.i417.7.1 = zext i8 %conv5.i.i426.6.1 to i32 *)
cast v_conv_i_i417_7_1@uint32 v_conv5_i_i426_6_1@uint8;
(*   %and.i.i418.7.1 = and i32 %conv.i.i417.7.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i418_7_1 v_conv_i_i417_7_1 (0x1)@uint32;
(*   %conv1.i.i419.7.1 = zext i8 %conv7.i.i429.6.1 to i32 *)
cast v_conv1_i_i419_7_1@uint32 v_conv7_i_i429_6_1@uint8;
(*   %mul.i.i420.7.1 = mul nsw i32 %and.i.i418.7.1, %conv1.i.i419.7.1 *)
mul v_mul_i_i420_7_1 v_and_i_i418_7_1 v_conv1_i_i419_7_1;
(*   %conv2.i.i421.7.1 = zext i8 %conv3.i.i423.6.1 to i32 *)
cast v_conv2_i_i421_7_1@uint32 v_conv3_i_i423_6_1@uint8;
(*   %xor.i.i422.7.1 = xor i32 %conv2.i.i421.7.1, %mul.i.i420.7.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i422_7_1 v_conv2_i_i421_7_1 v_mul_i_i420_7_1;
(*   %conv3.i.i423.7.1 = trunc i32 %xor.i.i422.7.1 to i8 *)
split tmp_v_xor_i_i422_7_1 v_conv3_i_i423_7_1 v_xor_i_i422_7_1 8;
vpc v_conv3_i_i423_7_1@uint8 v_conv3_i_i423_7_1@uint32;
(*   %arrayidx6.i433.1 = getelementptr inbounds i8, i8* %add.ptr12, i64 1 *)
(*   store i8 %conv3.i.i423.7.1, i8* %arrayidx6.i433.1, align 1 *)
mov cc_26 v_conv3_i_i423_7_1;
(*   %arrayidx.i409.2 = getelementptr inbounds i8, i8* %a, i64 4 *)
(*   %44 = load i8, i8* %arrayidx.i409.2, align 1 *)
mov v44 a_4;
(*   %arrayidx4.i413.2 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %45 = load i8, i8* %arrayidx4.i413.2, align 1 *)
mov v45 b_2;
(*   %conv.i.i417.2183 = zext i8 %45 to i32 *)
cast v_conv_i_i417_2183@uint32 v45@uint8;
(*   %and.i.i418.2184 = and i32 %conv.i.i417.2183, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i418_2184 v_conv_i_i417_2183 (0x1)@uint32;
(*   %conv1.i.i419.2185 = zext i8 %44 to i32 *)
cast v_conv1_i_i419_2185@uint32 v44@uint8;
(*   %mul.i.i420.2186 = mul nsw i32 %and.i.i418.2184, %conv1.i.i419.2185 *)
mul v_mul_i_i420_2186 v_and_i_i418_2184 v_conv1_i_i419_2185;
(*   %conv3.i.i423.2187 = trunc i32 %mul.i.i420.2186 to i8 *)
split tmp_v_mul_i_i420_2186 v_conv3_i_i423_2187 v_mul_i_i420_2186 8;
vpc v_conv3_i_i423_2187@uint8 v_conv3_i_i423_2187@uint32;
(*   %conv4.i.i424.2188 = zext i8 %45 to i32 *)
cast v_conv4_i_i424_2188@uint32 v45@uint8;
(*   %shr.i.i425.2189 = ashr i32 %conv4.i.i424.2188, 1 *)
(* You may need to modify here *)
split v_shr_i_i425_2189 tmp_to_be_used v_conv4_i_i424_2188 1;
(*   %conv5.i.i426.2190 = trunc i32 %shr.i.i425.2189 to i8 *)
split tmp_v_shr_i_i425_2189 v_conv5_i_i426_2190 v_shr_i_i425_2189 8;
vpc v_conv5_i_i426_2190@uint8 v_conv5_i_i426_2190@uint32;
(*   %conv6.i.i427.2191 = zext i8 %44 to i32 *)
cast v_conv6_i_i427_2191@uint32 v44@uint8;
(*   %shl.i.i428.2192 = shl i32 %conv6.i.i427.2191, 1 *)
shls discard_154 v_shl_i_i428_2192 v_conv6_i_i427_2191 1;
(*   %conv7.i.i429.2193 = trunc i32 %shl.i.i428.2192 to i8 *)
split tmp_v_shl_i_i428_2192 v_conv7_i_i429_2193 v_shl_i_i428_2192 8;
vpc v_conv7_i_i429_2193@uint8 v_conv7_i_i429_2193@uint32;
(*   %conv.i.i417.1.2 = zext i8 %conv5.i.i426.2190 to i32 *)
cast v_conv_i_i417_1_2@uint32 v_conv5_i_i426_2190@uint8;
(*   %and.i.i418.1.2 = and i32 %conv.i.i417.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i418_1_2 v_conv_i_i417_1_2 (0x1)@uint32;
(*   %conv1.i.i419.1.2 = zext i8 %conv7.i.i429.2193 to i32 *)
cast v_conv1_i_i419_1_2@uint32 v_conv7_i_i429_2193@uint8;
(*   %mul.i.i420.1.2 = mul nsw i32 %and.i.i418.1.2, %conv1.i.i419.1.2 *)
mul v_mul_i_i420_1_2 v_and_i_i418_1_2 v_conv1_i_i419_1_2;
(*   %conv2.i.i421.1.2 = zext i8 %conv3.i.i423.2187 to i32 *)
cast v_conv2_i_i421_1_2@uint32 v_conv3_i_i423_2187@uint8;
(*   %xor.i.i422.1.2 = xor i32 %conv2.i.i421.1.2, %mul.i.i420.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i422_1_2 v_conv2_i_i421_1_2 v_mul_i_i420_1_2;
(*   %conv3.i.i423.1.2 = trunc i32 %xor.i.i422.1.2 to i8 *)
split tmp_v_xor_i_i422_1_2 v_conv3_i_i423_1_2 v_xor_i_i422_1_2 8;
vpc v_conv3_i_i423_1_2@uint8 v_conv3_i_i423_1_2@uint32;
(*   %conv4.i.i424.1.2 = zext i8 %conv5.i.i426.2190 to i32 *)
cast v_conv4_i_i424_1_2@uint32 v_conv5_i_i426_2190@uint8;
(*   %shr.i.i425.1.2 = ashr i32 %conv4.i.i424.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i425_1_2 tmp_to_be_used v_conv4_i_i424_1_2 1;
(*   %conv5.i.i426.1.2 = trunc i32 %shr.i.i425.1.2 to i8 *)
split tmp_v_shr_i_i425_1_2 v_conv5_i_i426_1_2 v_shr_i_i425_1_2 8;
vpc v_conv5_i_i426_1_2@uint8 v_conv5_i_i426_1_2@uint32;
(*   %conv6.i.i427.1.2 = zext i8 %conv7.i.i429.2193 to i32 *)
cast v_conv6_i_i427_1_2@uint32 v_conv7_i_i429_2193@uint8;
(*   %shl.i.i428.1.2 = shl i32 %conv6.i.i427.1.2, 1 *)
shls discard_155 v_shl_i_i428_1_2 v_conv6_i_i427_1_2 1;
(*   %conv7.i.i429.1.2 = trunc i32 %shl.i.i428.1.2 to i8 *)
split tmp_v_shl_i_i428_1_2 v_conv7_i_i429_1_2 v_shl_i_i428_1_2 8;
vpc v_conv7_i_i429_1_2@uint8 v_conv7_i_i429_1_2@uint32;
(*   %conv.i.i417.2.2 = zext i8 %conv5.i.i426.1.2 to i32 *)
cast v_conv_i_i417_2_2@uint32 v_conv5_i_i426_1_2@uint8;
(*   %and.i.i418.2.2 = and i32 %conv.i.i417.2.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i418_2_2 v_conv_i_i417_2_2 (0x1)@uint32;
(*   %conv1.i.i419.2.2 = zext i8 %conv7.i.i429.1.2 to i32 *)
cast v_conv1_i_i419_2_2@uint32 v_conv7_i_i429_1_2@uint8;
(*   %mul.i.i420.2.2 = mul nsw i32 %and.i.i418.2.2, %conv1.i.i419.2.2 *)
mul v_mul_i_i420_2_2 v_and_i_i418_2_2 v_conv1_i_i419_2_2;
(*   %conv2.i.i421.2.2 = zext i8 %conv3.i.i423.1.2 to i32 *)
cast v_conv2_i_i421_2_2@uint32 v_conv3_i_i423_1_2@uint8;
(*   %xor.i.i422.2.2 = xor i32 %conv2.i.i421.2.2, %mul.i.i420.2.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i422_2_2 v_conv2_i_i421_2_2 v_mul_i_i420_2_2;
(*   %conv3.i.i423.2.2 = trunc i32 %xor.i.i422.2.2 to i8 *)
split tmp_v_xor_i_i422_2_2 v_conv3_i_i423_2_2 v_xor_i_i422_2_2 8;
vpc v_conv3_i_i423_2_2@uint8 v_conv3_i_i423_2_2@uint32;
(*   %conv4.i.i424.2.2 = zext i8 %conv5.i.i426.1.2 to i32 *)
cast v_conv4_i_i424_2_2@uint32 v_conv5_i_i426_1_2@uint8;
(*   %shr.i.i425.2.2 = ashr i32 %conv4.i.i424.2.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i425_2_2 tmp_to_be_used v_conv4_i_i424_2_2 1;
(*   %conv5.i.i426.2.2 = trunc i32 %shr.i.i425.2.2 to i8 *)
split tmp_v_shr_i_i425_2_2 v_conv5_i_i426_2_2 v_shr_i_i425_2_2 8;
vpc v_conv5_i_i426_2_2@uint8 v_conv5_i_i426_2_2@uint32;
(*   %conv6.i.i427.2.2 = zext i8 %conv7.i.i429.1.2 to i32 *)
cast v_conv6_i_i427_2_2@uint32 v_conv7_i_i429_1_2@uint8;
(*   %shl.i.i428.2.2 = shl i32 %conv6.i.i427.2.2, 1 *)
shls discard_156 v_shl_i_i428_2_2 v_conv6_i_i427_2_2 1;
(*   %conv7.i.i429.2.2 = trunc i32 %shl.i.i428.2.2 to i8 *)
split tmp_v_shl_i_i428_2_2 v_conv7_i_i429_2_2 v_shl_i_i428_2_2 8;
vpc v_conv7_i_i429_2_2@uint8 v_conv7_i_i429_2_2@uint32;
(*   %conv.i.i417.3.2 = zext i8 %conv5.i.i426.2.2 to i32 *)
cast v_conv_i_i417_3_2@uint32 v_conv5_i_i426_2_2@uint8;
(*   %and.i.i418.3.2 = and i32 %conv.i.i417.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i418_3_2 v_conv_i_i417_3_2 (0x1)@uint32;
(*   %conv1.i.i419.3.2 = zext i8 %conv7.i.i429.2.2 to i32 *)
cast v_conv1_i_i419_3_2@uint32 v_conv7_i_i429_2_2@uint8;
(*   %mul.i.i420.3.2 = mul nsw i32 %and.i.i418.3.2, %conv1.i.i419.3.2 *)
mul v_mul_i_i420_3_2 v_and_i_i418_3_2 v_conv1_i_i419_3_2;
(*   %conv2.i.i421.3.2 = zext i8 %conv3.i.i423.2.2 to i32 *)
cast v_conv2_i_i421_3_2@uint32 v_conv3_i_i423_2_2@uint8;
(*   %xor.i.i422.3.2 = xor i32 %conv2.i.i421.3.2, %mul.i.i420.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i422_3_2 v_conv2_i_i421_3_2 v_mul_i_i420_3_2;
(*   %conv3.i.i423.3.2 = trunc i32 %xor.i.i422.3.2 to i8 *)
split tmp_v_xor_i_i422_3_2 v_conv3_i_i423_3_2 v_xor_i_i422_3_2 8;
vpc v_conv3_i_i423_3_2@uint8 v_conv3_i_i423_3_2@uint32;
(*   %conv4.i.i424.3.2 = zext i8 %conv5.i.i426.2.2 to i32 *)
cast v_conv4_i_i424_3_2@uint32 v_conv5_i_i426_2_2@uint8;
(*   %shr.i.i425.3.2 = ashr i32 %conv4.i.i424.3.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i425_3_2 tmp_to_be_used v_conv4_i_i424_3_2 1;
(*   %conv5.i.i426.3.2 = trunc i32 %shr.i.i425.3.2 to i8 *)
split tmp_v_shr_i_i425_3_2 v_conv5_i_i426_3_2 v_shr_i_i425_3_2 8;
vpc v_conv5_i_i426_3_2@uint8 v_conv5_i_i426_3_2@uint32;
(*   %conv6.i.i427.3.2 = zext i8 %conv7.i.i429.2.2 to i32 *)
cast v_conv6_i_i427_3_2@uint32 v_conv7_i_i429_2_2@uint8;
(*   %shl.i.i428.3.2 = shl i32 %conv6.i.i427.3.2, 1 *)
shls discard_157 v_shl_i_i428_3_2 v_conv6_i_i427_3_2 1;
(*   %conv7.i.i429.3.2 = trunc i32 %shl.i.i428.3.2 to i8 *)
split tmp_v_shl_i_i428_3_2 v_conv7_i_i429_3_2 v_shl_i_i428_3_2 8;
vpc v_conv7_i_i429_3_2@uint8 v_conv7_i_i429_3_2@uint32;
(*   %conv.i.i417.4.2 = zext i8 %conv5.i.i426.3.2 to i32 *)
cast v_conv_i_i417_4_2@uint32 v_conv5_i_i426_3_2@uint8;
(*   %and.i.i418.4.2 = and i32 %conv.i.i417.4.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i418_4_2 v_conv_i_i417_4_2 (0x1)@uint32;
(*   %conv1.i.i419.4.2 = zext i8 %conv7.i.i429.3.2 to i32 *)
cast v_conv1_i_i419_4_2@uint32 v_conv7_i_i429_3_2@uint8;
(*   %mul.i.i420.4.2 = mul nsw i32 %and.i.i418.4.2, %conv1.i.i419.4.2 *)
mul v_mul_i_i420_4_2 v_and_i_i418_4_2 v_conv1_i_i419_4_2;
(*   %conv2.i.i421.4.2 = zext i8 %conv3.i.i423.3.2 to i32 *)
cast v_conv2_i_i421_4_2@uint32 v_conv3_i_i423_3_2@uint8;
(*   %xor.i.i422.4.2 = xor i32 %conv2.i.i421.4.2, %mul.i.i420.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i422_4_2 v_conv2_i_i421_4_2 v_mul_i_i420_4_2;
(*   %conv3.i.i423.4.2 = trunc i32 %xor.i.i422.4.2 to i8 *)
split tmp_v_xor_i_i422_4_2 v_conv3_i_i423_4_2 v_xor_i_i422_4_2 8;
vpc v_conv3_i_i423_4_2@uint8 v_conv3_i_i423_4_2@uint32;
(*   %conv4.i.i424.4.2 = zext i8 %conv5.i.i426.3.2 to i32 *)
cast v_conv4_i_i424_4_2@uint32 v_conv5_i_i426_3_2@uint8;
(*   %shr.i.i425.4.2 = ashr i32 %conv4.i.i424.4.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i425_4_2 tmp_to_be_used v_conv4_i_i424_4_2 1;
(*   %conv5.i.i426.4.2 = trunc i32 %shr.i.i425.4.2 to i8 *)
split tmp_v_shr_i_i425_4_2 v_conv5_i_i426_4_2 v_shr_i_i425_4_2 8;
vpc v_conv5_i_i426_4_2@uint8 v_conv5_i_i426_4_2@uint32;
(*   %conv6.i.i427.4.2 = zext i8 %conv7.i.i429.3.2 to i32 *)
cast v_conv6_i_i427_4_2@uint32 v_conv7_i_i429_3_2@uint8;
(*   %shl.i.i428.4.2 = shl i32 %conv6.i.i427.4.2, 1 *)
shls discard_158 v_shl_i_i428_4_2 v_conv6_i_i427_4_2 1;
(*   %conv7.i.i429.4.2 = trunc i32 %shl.i.i428.4.2 to i8 *)
split tmp_v_shl_i_i428_4_2 v_conv7_i_i429_4_2 v_shl_i_i428_4_2 8;
vpc v_conv7_i_i429_4_2@uint8 v_conv7_i_i429_4_2@uint32;
(*   %conv.i.i417.5.2 = zext i8 %conv5.i.i426.4.2 to i32 *)
cast v_conv_i_i417_5_2@uint32 v_conv5_i_i426_4_2@uint8;
(*   %and.i.i418.5.2 = and i32 %conv.i.i417.5.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i418_5_2 v_conv_i_i417_5_2 (0x1)@uint32;
(*   %conv1.i.i419.5.2 = zext i8 %conv7.i.i429.4.2 to i32 *)
cast v_conv1_i_i419_5_2@uint32 v_conv7_i_i429_4_2@uint8;
(*   %mul.i.i420.5.2 = mul nsw i32 %and.i.i418.5.2, %conv1.i.i419.5.2 *)
mul v_mul_i_i420_5_2 v_and_i_i418_5_2 v_conv1_i_i419_5_2;
(*   %conv2.i.i421.5.2 = zext i8 %conv3.i.i423.4.2 to i32 *)
cast v_conv2_i_i421_5_2@uint32 v_conv3_i_i423_4_2@uint8;
(*   %xor.i.i422.5.2 = xor i32 %conv2.i.i421.5.2, %mul.i.i420.5.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i422_5_2 v_conv2_i_i421_5_2 v_mul_i_i420_5_2;
(*   %conv3.i.i423.5.2 = trunc i32 %xor.i.i422.5.2 to i8 *)
split tmp_v_xor_i_i422_5_2 v_conv3_i_i423_5_2 v_xor_i_i422_5_2 8;
vpc v_conv3_i_i423_5_2@uint8 v_conv3_i_i423_5_2@uint32;
(*   %conv4.i.i424.5.2 = zext i8 %conv5.i.i426.4.2 to i32 *)
cast v_conv4_i_i424_5_2@uint32 v_conv5_i_i426_4_2@uint8;
(*   %shr.i.i425.5.2 = ashr i32 %conv4.i.i424.5.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i425_5_2 tmp_to_be_used v_conv4_i_i424_5_2 1;
(*   %conv5.i.i426.5.2 = trunc i32 %shr.i.i425.5.2 to i8 *)
split tmp_v_shr_i_i425_5_2 v_conv5_i_i426_5_2 v_shr_i_i425_5_2 8;
vpc v_conv5_i_i426_5_2@uint8 v_conv5_i_i426_5_2@uint32;
(*   %conv6.i.i427.5.2 = zext i8 %conv7.i.i429.4.2 to i32 *)
cast v_conv6_i_i427_5_2@uint32 v_conv7_i_i429_4_2@uint8;
(*   %shl.i.i428.5.2 = shl i32 %conv6.i.i427.5.2, 1 *)
shls discard_159 v_shl_i_i428_5_2 v_conv6_i_i427_5_2 1;
(*   %conv7.i.i429.5.2 = trunc i32 %shl.i.i428.5.2 to i8 *)
split tmp_v_shl_i_i428_5_2 v_conv7_i_i429_5_2 v_shl_i_i428_5_2 8;
vpc v_conv7_i_i429_5_2@uint8 v_conv7_i_i429_5_2@uint32;
(*   %conv.i.i417.6.2 = zext i8 %conv5.i.i426.5.2 to i32 *)
cast v_conv_i_i417_6_2@uint32 v_conv5_i_i426_5_2@uint8;
(*   %and.i.i418.6.2 = and i32 %conv.i.i417.6.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i418_6_2 v_conv_i_i417_6_2 (0x1)@uint32;
(*   %conv1.i.i419.6.2 = zext i8 %conv7.i.i429.5.2 to i32 *)
cast v_conv1_i_i419_6_2@uint32 v_conv7_i_i429_5_2@uint8;
(*   %mul.i.i420.6.2 = mul nsw i32 %and.i.i418.6.2, %conv1.i.i419.6.2 *)
mul v_mul_i_i420_6_2 v_and_i_i418_6_2 v_conv1_i_i419_6_2;
(*   %conv2.i.i421.6.2 = zext i8 %conv3.i.i423.5.2 to i32 *)
cast v_conv2_i_i421_6_2@uint32 v_conv3_i_i423_5_2@uint8;
(*   %xor.i.i422.6.2 = xor i32 %conv2.i.i421.6.2, %mul.i.i420.6.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i422_6_2 v_conv2_i_i421_6_2 v_mul_i_i420_6_2;
(*   %conv3.i.i423.6.2 = trunc i32 %xor.i.i422.6.2 to i8 *)
split tmp_v_xor_i_i422_6_2 v_conv3_i_i423_6_2 v_xor_i_i422_6_2 8;
vpc v_conv3_i_i423_6_2@uint8 v_conv3_i_i423_6_2@uint32;
(*   %conv4.i.i424.6.2 = zext i8 %conv5.i.i426.5.2 to i32 *)
cast v_conv4_i_i424_6_2@uint32 v_conv5_i_i426_5_2@uint8;
(*   %shr.i.i425.6.2 = ashr i32 %conv4.i.i424.6.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i425_6_2 tmp_to_be_used v_conv4_i_i424_6_2 1;
(*   %conv5.i.i426.6.2 = trunc i32 %shr.i.i425.6.2 to i8 *)
split tmp_v_shr_i_i425_6_2 v_conv5_i_i426_6_2 v_shr_i_i425_6_2 8;
vpc v_conv5_i_i426_6_2@uint8 v_conv5_i_i426_6_2@uint32;
(*   %conv6.i.i427.6.2 = zext i8 %conv7.i.i429.5.2 to i32 *)
cast v_conv6_i_i427_6_2@uint32 v_conv7_i_i429_5_2@uint8;
(*   %shl.i.i428.6.2 = shl i32 %conv6.i.i427.6.2, 1 *)
shls discard_160 v_shl_i_i428_6_2 v_conv6_i_i427_6_2 1;
(*   %conv7.i.i429.6.2 = trunc i32 %shl.i.i428.6.2 to i8 *)
split tmp_v_shl_i_i428_6_2 v_conv7_i_i429_6_2 v_shl_i_i428_6_2 8;
vpc v_conv7_i_i429_6_2@uint8 v_conv7_i_i429_6_2@uint32;
(*   %conv.i.i417.7.2 = zext i8 %conv5.i.i426.6.2 to i32 *)
cast v_conv_i_i417_7_2@uint32 v_conv5_i_i426_6_2@uint8;
(*   %and.i.i418.7.2 = and i32 %conv.i.i417.7.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i418_7_2 v_conv_i_i417_7_2 (0x1)@uint32;
(*   %conv1.i.i419.7.2 = zext i8 %conv7.i.i429.6.2 to i32 *)
cast v_conv1_i_i419_7_2@uint32 v_conv7_i_i429_6_2@uint8;
(*   %mul.i.i420.7.2 = mul nsw i32 %and.i.i418.7.2, %conv1.i.i419.7.2 *)
mul v_mul_i_i420_7_2 v_and_i_i418_7_2 v_conv1_i_i419_7_2;
(*   %conv2.i.i421.7.2 = zext i8 %conv3.i.i423.6.2 to i32 *)
cast v_conv2_i_i421_7_2@uint32 v_conv3_i_i423_6_2@uint8;
(*   %xor.i.i422.7.2 = xor i32 %conv2.i.i421.7.2, %mul.i.i420.7.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i422_7_2 v_conv2_i_i421_7_2 v_mul_i_i420_7_2;
(*   %conv3.i.i423.7.2 = trunc i32 %xor.i.i422.7.2 to i8 *)
split tmp_v_xor_i_i422_7_2 v_conv3_i_i423_7_2 v_xor_i_i422_7_2 8;
vpc v_conv3_i_i423_7_2@uint8 v_conv3_i_i423_7_2@uint32;
(*   %arrayidx6.i433.2 = getelementptr inbounds i8, i8* %add.ptr12, i64 2 *)
(*   store i8 %conv3.i.i423.7.2, i8* %arrayidx6.i433.2, align 1 *)
mov cc_27 v_conv3_i_i423_7_2;
(*   %46 = load i8, i8* %a, align 1 *)
mov v46 a_0;
(*   %arrayidx4.i413.3 = getelementptr inbounds i8, i8* %b, i64 3 *)
(*   %47 = load i8, i8* %arrayidx4.i413.3, align 1 *)
mov v47 b_3;
(*   %conv.i.i417.3194 = zext i8 %47 to i32 *)
cast v_conv_i_i417_3194@uint32 v47@uint8;
(*   %and.i.i418.3195 = and i32 %conv.i.i417.3194, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i418_3195 v_conv_i_i417_3194 (0x1)@uint32;
(*   %conv1.i.i419.3196 = zext i8 %46 to i32 *)
cast v_conv1_i_i419_3196@uint32 v46@uint8;
(*   %mul.i.i420.3197 = mul nsw i32 %and.i.i418.3195, %conv1.i.i419.3196 *)
mul v_mul_i_i420_3197 v_and_i_i418_3195 v_conv1_i_i419_3196;
(*   %conv3.i.i423.3198 = trunc i32 %mul.i.i420.3197 to i8 *)
split tmp_v_mul_i_i420_3197 v_conv3_i_i423_3198 v_mul_i_i420_3197 8;
vpc v_conv3_i_i423_3198@uint8 v_conv3_i_i423_3198@uint32;
(*   %conv4.i.i424.3199 = zext i8 %47 to i32 *)
cast v_conv4_i_i424_3199@uint32 v47@uint8;
(*   %shr.i.i425.3200 = ashr i32 %conv4.i.i424.3199, 1 *)
(* You may need to modify here *)
split v_shr_i_i425_3200 tmp_to_be_used v_conv4_i_i424_3199 1;
(*   %conv5.i.i426.3201 = trunc i32 %shr.i.i425.3200 to i8 *)
split tmp_v_shr_i_i425_3200 v_conv5_i_i426_3201 v_shr_i_i425_3200 8;
vpc v_conv5_i_i426_3201@uint8 v_conv5_i_i426_3201@uint32;
(*   %conv6.i.i427.3202 = zext i8 %46 to i32 *)
cast v_conv6_i_i427_3202@uint32 v46@uint8;
(*   %shl.i.i428.3203 = shl i32 %conv6.i.i427.3202, 1 *)
shls discard_161 v_shl_i_i428_3203 v_conv6_i_i427_3202 1;
(*   %conv7.i.i429.3204 = trunc i32 %shl.i.i428.3203 to i8 *)
split tmp_v_shl_i_i428_3203 v_conv7_i_i429_3204 v_shl_i_i428_3203 8;
vpc v_conv7_i_i429_3204@uint8 v_conv7_i_i429_3204@uint32;
(*   %conv.i.i417.1.3 = zext i8 %conv5.i.i426.3201 to i32 *)
cast v_conv_i_i417_1_3@uint32 v_conv5_i_i426_3201@uint8;
(*   %and.i.i418.1.3 = and i32 %conv.i.i417.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i418_1_3 v_conv_i_i417_1_3 (0x1)@uint32;
(*   %conv1.i.i419.1.3 = zext i8 %conv7.i.i429.3204 to i32 *)
cast v_conv1_i_i419_1_3@uint32 v_conv7_i_i429_3204@uint8;
(*   %mul.i.i420.1.3 = mul nsw i32 %and.i.i418.1.3, %conv1.i.i419.1.3 *)
mul v_mul_i_i420_1_3 v_and_i_i418_1_3 v_conv1_i_i419_1_3;
(*   %conv2.i.i421.1.3 = zext i8 %conv3.i.i423.3198 to i32 *)
cast v_conv2_i_i421_1_3@uint32 v_conv3_i_i423_3198@uint8;
(*   %xor.i.i422.1.3 = xor i32 %conv2.i.i421.1.3, %mul.i.i420.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i422_1_3 v_conv2_i_i421_1_3 v_mul_i_i420_1_3;
(*   %conv3.i.i423.1.3 = trunc i32 %xor.i.i422.1.3 to i8 *)
split tmp_v_xor_i_i422_1_3 v_conv3_i_i423_1_3 v_xor_i_i422_1_3 8;
vpc v_conv3_i_i423_1_3@uint8 v_conv3_i_i423_1_3@uint32;
(*   %conv4.i.i424.1.3 = zext i8 %conv5.i.i426.3201 to i32 *)
cast v_conv4_i_i424_1_3@uint32 v_conv5_i_i426_3201@uint8;
(*   %shr.i.i425.1.3 = ashr i32 %conv4.i.i424.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i425_1_3 tmp_to_be_used v_conv4_i_i424_1_3 1;
(*   %conv5.i.i426.1.3 = trunc i32 %shr.i.i425.1.3 to i8 *)
split tmp_v_shr_i_i425_1_3 v_conv5_i_i426_1_3 v_shr_i_i425_1_3 8;
vpc v_conv5_i_i426_1_3@uint8 v_conv5_i_i426_1_3@uint32;
(*   %conv6.i.i427.1.3 = zext i8 %conv7.i.i429.3204 to i32 *)
cast v_conv6_i_i427_1_3@uint32 v_conv7_i_i429_3204@uint8;
(*   %shl.i.i428.1.3 = shl i32 %conv6.i.i427.1.3, 1 *)
shls discard_162 v_shl_i_i428_1_3 v_conv6_i_i427_1_3 1;
(*   %conv7.i.i429.1.3 = trunc i32 %shl.i.i428.1.3 to i8 *)
split tmp_v_shl_i_i428_1_3 v_conv7_i_i429_1_3 v_shl_i_i428_1_3 8;
vpc v_conv7_i_i429_1_3@uint8 v_conv7_i_i429_1_3@uint32;
(*   %conv.i.i417.2.3 = zext i8 %conv5.i.i426.1.3 to i32 *)
cast v_conv_i_i417_2_3@uint32 v_conv5_i_i426_1_3@uint8;
(*   %and.i.i418.2.3 = and i32 %conv.i.i417.2.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i418_2_3 v_conv_i_i417_2_3 (0x1)@uint32;
(*   %conv1.i.i419.2.3 = zext i8 %conv7.i.i429.1.3 to i32 *)
cast v_conv1_i_i419_2_3@uint32 v_conv7_i_i429_1_3@uint8;
(*   %mul.i.i420.2.3 = mul nsw i32 %and.i.i418.2.3, %conv1.i.i419.2.3 *)
mul v_mul_i_i420_2_3 v_and_i_i418_2_3 v_conv1_i_i419_2_3;
(*   %conv2.i.i421.2.3 = zext i8 %conv3.i.i423.1.3 to i32 *)
cast v_conv2_i_i421_2_3@uint32 v_conv3_i_i423_1_3@uint8;
(*   %xor.i.i422.2.3 = xor i32 %conv2.i.i421.2.3, %mul.i.i420.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i422_2_3 v_conv2_i_i421_2_3 v_mul_i_i420_2_3;
(*   %conv3.i.i423.2.3 = trunc i32 %xor.i.i422.2.3 to i8 *)
split tmp_v_xor_i_i422_2_3 v_conv3_i_i423_2_3 v_xor_i_i422_2_3 8;
vpc v_conv3_i_i423_2_3@uint8 v_conv3_i_i423_2_3@uint32;
(*   %conv4.i.i424.2.3 = zext i8 %conv5.i.i426.1.3 to i32 *)
cast v_conv4_i_i424_2_3@uint32 v_conv5_i_i426_1_3@uint8;
(*   %shr.i.i425.2.3 = ashr i32 %conv4.i.i424.2.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i425_2_3 tmp_to_be_used v_conv4_i_i424_2_3 1;
(*   %conv5.i.i426.2.3 = trunc i32 %shr.i.i425.2.3 to i8 *)
split tmp_v_shr_i_i425_2_3 v_conv5_i_i426_2_3 v_shr_i_i425_2_3 8;
vpc v_conv5_i_i426_2_3@uint8 v_conv5_i_i426_2_3@uint32;
(*   %conv6.i.i427.2.3 = zext i8 %conv7.i.i429.1.3 to i32 *)
cast v_conv6_i_i427_2_3@uint32 v_conv7_i_i429_1_3@uint8;
(*   %shl.i.i428.2.3 = shl i32 %conv6.i.i427.2.3, 1 *)
shls discard_163 v_shl_i_i428_2_3 v_conv6_i_i427_2_3 1;
(*   %conv7.i.i429.2.3 = trunc i32 %shl.i.i428.2.3 to i8 *)
split tmp_v_shl_i_i428_2_3 v_conv7_i_i429_2_3 v_shl_i_i428_2_3 8;
vpc v_conv7_i_i429_2_3@uint8 v_conv7_i_i429_2_3@uint32;
(*   %conv.i.i417.3.3 = zext i8 %conv5.i.i426.2.3 to i32 *)
cast v_conv_i_i417_3_3@uint32 v_conv5_i_i426_2_3@uint8;
(*   %and.i.i418.3.3 = and i32 %conv.i.i417.3.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i418_3_3 v_conv_i_i417_3_3 (0x1)@uint32;
(*   %conv1.i.i419.3.3 = zext i8 %conv7.i.i429.2.3 to i32 *)
cast v_conv1_i_i419_3_3@uint32 v_conv7_i_i429_2_3@uint8;
(*   %mul.i.i420.3.3 = mul nsw i32 %and.i.i418.3.3, %conv1.i.i419.3.3 *)
mul v_mul_i_i420_3_3 v_and_i_i418_3_3 v_conv1_i_i419_3_3;
(*   %conv2.i.i421.3.3 = zext i8 %conv3.i.i423.2.3 to i32 *)
cast v_conv2_i_i421_3_3@uint32 v_conv3_i_i423_2_3@uint8;
(*   %xor.i.i422.3.3 = xor i32 %conv2.i.i421.3.3, %mul.i.i420.3.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i422_3_3 v_conv2_i_i421_3_3 v_mul_i_i420_3_3;
(*   %conv3.i.i423.3.3 = trunc i32 %xor.i.i422.3.3 to i8 *)
split tmp_v_xor_i_i422_3_3 v_conv3_i_i423_3_3 v_xor_i_i422_3_3 8;
vpc v_conv3_i_i423_3_3@uint8 v_conv3_i_i423_3_3@uint32;
(*   %conv4.i.i424.3.3 = zext i8 %conv5.i.i426.2.3 to i32 *)
cast v_conv4_i_i424_3_3@uint32 v_conv5_i_i426_2_3@uint8;
(*   %shr.i.i425.3.3 = ashr i32 %conv4.i.i424.3.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i425_3_3 tmp_to_be_used v_conv4_i_i424_3_3 1;
(*   %conv5.i.i426.3.3 = trunc i32 %shr.i.i425.3.3 to i8 *)
split tmp_v_shr_i_i425_3_3 v_conv5_i_i426_3_3 v_shr_i_i425_3_3 8;
vpc v_conv5_i_i426_3_3@uint8 v_conv5_i_i426_3_3@uint32;
(*   %conv6.i.i427.3.3 = zext i8 %conv7.i.i429.2.3 to i32 *)
cast v_conv6_i_i427_3_3@uint32 v_conv7_i_i429_2_3@uint8;
(*   %shl.i.i428.3.3 = shl i32 %conv6.i.i427.3.3, 1 *)
shls discard_164 v_shl_i_i428_3_3 v_conv6_i_i427_3_3 1;
(*   %conv7.i.i429.3.3 = trunc i32 %shl.i.i428.3.3 to i8 *)
split tmp_v_shl_i_i428_3_3 v_conv7_i_i429_3_3 v_shl_i_i428_3_3 8;
vpc v_conv7_i_i429_3_3@uint8 v_conv7_i_i429_3_3@uint32;
(*   %conv.i.i417.4.3 = zext i8 %conv5.i.i426.3.3 to i32 *)
cast v_conv_i_i417_4_3@uint32 v_conv5_i_i426_3_3@uint8;
(*   %and.i.i418.4.3 = and i32 %conv.i.i417.4.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i418_4_3 v_conv_i_i417_4_3 (0x1)@uint32;
(*   %conv1.i.i419.4.3 = zext i8 %conv7.i.i429.3.3 to i32 *)
cast v_conv1_i_i419_4_3@uint32 v_conv7_i_i429_3_3@uint8;
(*   %mul.i.i420.4.3 = mul nsw i32 %and.i.i418.4.3, %conv1.i.i419.4.3 *)
mul v_mul_i_i420_4_3 v_and_i_i418_4_3 v_conv1_i_i419_4_3;
(*   %conv2.i.i421.4.3 = zext i8 %conv3.i.i423.3.3 to i32 *)
cast v_conv2_i_i421_4_3@uint32 v_conv3_i_i423_3_3@uint8;
(*   %xor.i.i422.4.3 = xor i32 %conv2.i.i421.4.3, %mul.i.i420.4.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i422_4_3 v_conv2_i_i421_4_3 v_mul_i_i420_4_3;
(*   %conv3.i.i423.4.3 = trunc i32 %xor.i.i422.4.3 to i8 *)
split tmp_v_xor_i_i422_4_3 v_conv3_i_i423_4_3 v_xor_i_i422_4_3 8;
vpc v_conv3_i_i423_4_3@uint8 v_conv3_i_i423_4_3@uint32;
(*   %conv4.i.i424.4.3 = zext i8 %conv5.i.i426.3.3 to i32 *)
cast v_conv4_i_i424_4_3@uint32 v_conv5_i_i426_3_3@uint8;
(*   %shr.i.i425.4.3 = ashr i32 %conv4.i.i424.4.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i425_4_3 tmp_to_be_used v_conv4_i_i424_4_3 1;
(*   %conv5.i.i426.4.3 = trunc i32 %shr.i.i425.4.3 to i8 *)
split tmp_v_shr_i_i425_4_3 v_conv5_i_i426_4_3 v_shr_i_i425_4_3 8;
vpc v_conv5_i_i426_4_3@uint8 v_conv5_i_i426_4_3@uint32;
(*   %conv6.i.i427.4.3 = zext i8 %conv7.i.i429.3.3 to i32 *)
cast v_conv6_i_i427_4_3@uint32 v_conv7_i_i429_3_3@uint8;
(*   %shl.i.i428.4.3 = shl i32 %conv6.i.i427.4.3, 1 *)
shls discard_165 v_shl_i_i428_4_3 v_conv6_i_i427_4_3 1;
(*   %conv7.i.i429.4.3 = trunc i32 %shl.i.i428.4.3 to i8 *)
split tmp_v_shl_i_i428_4_3 v_conv7_i_i429_4_3 v_shl_i_i428_4_3 8;
vpc v_conv7_i_i429_4_3@uint8 v_conv7_i_i429_4_3@uint32;
(*   %conv.i.i417.5.3 = zext i8 %conv5.i.i426.4.3 to i32 *)
cast v_conv_i_i417_5_3@uint32 v_conv5_i_i426_4_3@uint8;
(*   %and.i.i418.5.3 = and i32 %conv.i.i417.5.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i418_5_3 v_conv_i_i417_5_3 (0x1)@uint32;
(*   %conv1.i.i419.5.3 = zext i8 %conv7.i.i429.4.3 to i32 *)
cast v_conv1_i_i419_5_3@uint32 v_conv7_i_i429_4_3@uint8;
(*   %mul.i.i420.5.3 = mul nsw i32 %and.i.i418.5.3, %conv1.i.i419.5.3 *)
mul v_mul_i_i420_5_3 v_and_i_i418_5_3 v_conv1_i_i419_5_3;
(*   %conv2.i.i421.5.3 = zext i8 %conv3.i.i423.4.3 to i32 *)
cast v_conv2_i_i421_5_3@uint32 v_conv3_i_i423_4_3@uint8;
(*   %xor.i.i422.5.3 = xor i32 %conv2.i.i421.5.3, %mul.i.i420.5.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i422_5_3 v_conv2_i_i421_5_3 v_mul_i_i420_5_3;
(*   %conv3.i.i423.5.3 = trunc i32 %xor.i.i422.5.3 to i8 *)
split tmp_v_xor_i_i422_5_3 v_conv3_i_i423_5_3 v_xor_i_i422_5_3 8;
vpc v_conv3_i_i423_5_3@uint8 v_conv3_i_i423_5_3@uint32;
(*   %conv4.i.i424.5.3 = zext i8 %conv5.i.i426.4.3 to i32 *)
cast v_conv4_i_i424_5_3@uint32 v_conv5_i_i426_4_3@uint8;
(*   %shr.i.i425.5.3 = ashr i32 %conv4.i.i424.5.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i425_5_3 tmp_to_be_used v_conv4_i_i424_5_3 1;
(*   %conv5.i.i426.5.3 = trunc i32 %shr.i.i425.5.3 to i8 *)
split tmp_v_shr_i_i425_5_3 v_conv5_i_i426_5_3 v_shr_i_i425_5_3 8;
vpc v_conv5_i_i426_5_3@uint8 v_conv5_i_i426_5_3@uint32;
(*   %conv6.i.i427.5.3 = zext i8 %conv7.i.i429.4.3 to i32 *)
cast v_conv6_i_i427_5_3@uint32 v_conv7_i_i429_4_3@uint8;
(*   %shl.i.i428.5.3 = shl i32 %conv6.i.i427.5.3, 1 *)
shls discard_166 v_shl_i_i428_5_3 v_conv6_i_i427_5_3 1;
(*   %conv7.i.i429.5.3 = trunc i32 %shl.i.i428.5.3 to i8 *)
split tmp_v_shl_i_i428_5_3 v_conv7_i_i429_5_3 v_shl_i_i428_5_3 8;
vpc v_conv7_i_i429_5_3@uint8 v_conv7_i_i429_5_3@uint32;
(*   %conv.i.i417.6.3 = zext i8 %conv5.i.i426.5.3 to i32 *)
cast v_conv_i_i417_6_3@uint32 v_conv5_i_i426_5_3@uint8;
(*   %and.i.i418.6.3 = and i32 %conv.i.i417.6.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i418_6_3 v_conv_i_i417_6_3 (0x1)@uint32;
(*   %conv1.i.i419.6.3 = zext i8 %conv7.i.i429.5.3 to i32 *)
cast v_conv1_i_i419_6_3@uint32 v_conv7_i_i429_5_3@uint8;
(*   %mul.i.i420.6.3 = mul nsw i32 %and.i.i418.6.3, %conv1.i.i419.6.3 *)
mul v_mul_i_i420_6_3 v_and_i_i418_6_3 v_conv1_i_i419_6_3;
(*   %conv2.i.i421.6.3 = zext i8 %conv3.i.i423.5.3 to i32 *)
cast v_conv2_i_i421_6_3@uint32 v_conv3_i_i423_5_3@uint8;
(*   %xor.i.i422.6.3 = xor i32 %conv2.i.i421.6.3, %mul.i.i420.6.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i422_6_3 v_conv2_i_i421_6_3 v_mul_i_i420_6_3;
(*   %conv3.i.i423.6.3 = trunc i32 %xor.i.i422.6.3 to i8 *)
split tmp_v_xor_i_i422_6_3 v_conv3_i_i423_6_3 v_xor_i_i422_6_3 8;
vpc v_conv3_i_i423_6_3@uint8 v_conv3_i_i423_6_3@uint32;
(*   %conv4.i.i424.6.3 = zext i8 %conv5.i.i426.5.3 to i32 *)
cast v_conv4_i_i424_6_3@uint32 v_conv5_i_i426_5_3@uint8;
(*   %shr.i.i425.6.3 = ashr i32 %conv4.i.i424.6.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i425_6_3 tmp_to_be_used v_conv4_i_i424_6_3 1;
(*   %conv5.i.i426.6.3 = trunc i32 %shr.i.i425.6.3 to i8 *)
split tmp_v_shr_i_i425_6_3 v_conv5_i_i426_6_3 v_shr_i_i425_6_3 8;
vpc v_conv5_i_i426_6_3@uint8 v_conv5_i_i426_6_3@uint32;
(*   %conv6.i.i427.6.3 = zext i8 %conv7.i.i429.5.3 to i32 *)
cast v_conv6_i_i427_6_3@uint32 v_conv7_i_i429_5_3@uint8;
(*   %shl.i.i428.6.3 = shl i32 %conv6.i.i427.6.3, 1 *)
shls discard_167 v_shl_i_i428_6_3 v_conv6_i_i427_6_3 1;
(*   %conv7.i.i429.6.3 = trunc i32 %shl.i.i428.6.3 to i8 *)
split tmp_v_shl_i_i428_6_3 v_conv7_i_i429_6_3 v_shl_i_i428_6_3 8;
vpc v_conv7_i_i429_6_3@uint8 v_conv7_i_i429_6_3@uint32;
(*   %conv.i.i417.7.3 = zext i8 %conv5.i.i426.6.3 to i32 *)
cast v_conv_i_i417_7_3@uint32 v_conv5_i_i426_6_3@uint8;
(*   %and.i.i418.7.3 = and i32 %conv.i.i417.7.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i418_7_3 v_conv_i_i417_7_3 (0x1)@uint32;
(*   %conv1.i.i419.7.3 = zext i8 %conv7.i.i429.6.3 to i32 *)
cast v_conv1_i_i419_7_3@uint32 v_conv7_i_i429_6_3@uint8;
(*   %mul.i.i420.7.3 = mul nsw i32 %and.i.i418.7.3, %conv1.i.i419.7.3 *)
mul v_mul_i_i420_7_3 v_and_i_i418_7_3 v_conv1_i_i419_7_3;
(*   %conv2.i.i421.7.3 = zext i8 %conv3.i.i423.6.3 to i32 *)
cast v_conv2_i_i421_7_3@uint32 v_conv3_i_i423_6_3@uint8;
(*   %xor.i.i422.7.3 = xor i32 %conv2.i.i421.7.3, %mul.i.i420.7.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i422_7_3 v_conv2_i_i421_7_3 v_mul_i_i420_7_3;
(*   %conv3.i.i423.7.3 = trunc i32 %xor.i.i422.7.3 to i8 *)
split tmp_v_xor_i_i422_7_3 v_conv3_i_i423_7_3 v_xor_i_i422_7_3 8;
vpc v_conv3_i_i423_7_3@uint8 v_conv3_i_i423_7_3@uint32;
(*   %arrayidx6.i433.3 = getelementptr inbounds i8, i8* %add.ptr12, i64 3 *)
(*   store i8 %conv3.i.i423.7.3, i8* %arrayidx6.i433.3, align 1 *)
mov cc_28 v_conv3_i_i423_7_3;
(*   %arrayidx.i409.4 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %48 = load i8, i8* %arrayidx.i409.4, align 1 *)
mov v48 a_1;
(*   %arrayidx4.i413.4 = getelementptr inbounds i8, i8* %b, i64 4 *)
(*   %49 = load i8, i8* %arrayidx4.i413.4, align 1 *)
mov v49 b_4;
(*   %conv.i.i417.4205 = zext i8 %49 to i32 *)
cast v_conv_i_i417_4205@uint32 v49@uint8;
(*   %and.i.i418.4206 = and i32 %conv.i.i417.4205, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i418_4206 v_conv_i_i417_4205 (0x1)@uint32;
(*   %conv1.i.i419.4207 = zext i8 %48 to i32 *)
cast v_conv1_i_i419_4207@uint32 v48@uint8;
(*   %mul.i.i420.4208 = mul nsw i32 %and.i.i418.4206, %conv1.i.i419.4207 *)
mul v_mul_i_i420_4208 v_and_i_i418_4206 v_conv1_i_i419_4207;
(*   %conv3.i.i423.4209 = trunc i32 %mul.i.i420.4208 to i8 *)
split tmp_v_mul_i_i420_4208 v_conv3_i_i423_4209 v_mul_i_i420_4208 8;
vpc v_conv3_i_i423_4209@uint8 v_conv3_i_i423_4209@uint32;
(*   %conv4.i.i424.4210 = zext i8 %49 to i32 *)
cast v_conv4_i_i424_4210@uint32 v49@uint8;
(*   %shr.i.i425.4211 = ashr i32 %conv4.i.i424.4210, 1 *)
(* You may need to modify here *)
split v_shr_i_i425_4211 tmp_to_be_used v_conv4_i_i424_4210 1;
(*   %conv5.i.i426.4212 = trunc i32 %shr.i.i425.4211 to i8 *)
split tmp_v_shr_i_i425_4211 v_conv5_i_i426_4212 v_shr_i_i425_4211 8;
vpc v_conv5_i_i426_4212@uint8 v_conv5_i_i426_4212@uint32;
(*   %conv6.i.i427.4213 = zext i8 %48 to i32 *)
cast v_conv6_i_i427_4213@uint32 v48@uint8;
(*   %shl.i.i428.4214 = shl i32 %conv6.i.i427.4213, 1 *)
shls discard_168 v_shl_i_i428_4214 v_conv6_i_i427_4213 1;
(*   %conv7.i.i429.4215 = trunc i32 %shl.i.i428.4214 to i8 *)
split tmp_v_shl_i_i428_4214 v_conv7_i_i429_4215 v_shl_i_i428_4214 8;
vpc v_conv7_i_i429_4215@uint8 v_conv7_i_i429_4215@uint32;
(*   %conv.i.i417.1.4 = zext i8 %conv5.i.i426.4212 to i32 *)
cast v_conv_i_i417_1_4@uint32 v_conv5_i_i426_4212@uint8;
(*   %and.i.i418.1.4 = and i32 %conv.i.i417.1.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i418_1_4 v_conv_i_i417_1_4 (0x1)@uint32;
(*   %conv1.i.i419.1.4 = zext i8 %conv7.i.i429.4215 to i32 *)
cast v_conv1_i_i419_1_4@uint32 v_conv7_i_i429_4215@uint8;
(*   %mul.i.i420.1.4 = mul nsw i32 %and.i.i418.1.4, %conv1.i.i419.1.4 *)
mul v_mul_i_i420_1_4 v_and_i_i418_1_4 v_conv1_i_i419_1_4;
(*   %conv2.i.i421.1.4 = zext i8 %conv3.i.i423.4209 to i32 *)
cast v_conv2_i_i421_1_4@uint32 v_conv3_i_i423_4209@uint8;
(*   %xor.i.i422.1.4 = xor i32 %conv2.i.i421.1.4, %mul.i.i420.1.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i422_1_4 v_conv2_i_i421_1_4 v_mul_i_i420_1_4;
(*   %conv3.i.i423.1.4 = trunc i32 %xor.i.i422.1.4 to i8 *)
split tmp_v_xor_i_i422_1_4 v_conv3_i_i423_1_4 v_xor_i_i422_1_4 8;
vpc v_conv3_i_i423_1_4@uint8 v_conv3_i_i423_1_4@uint32;
(*   %conv4.i.i424.1.4 = zext i8 %conv5.i.i426.4212 to i32 *)
cast v_conv4_i_i424_1_4@uint32 v_conv5_i_i426_4212@uint8;
(*   %shr.i.i425.1.4 = ashr i32 %conv4.i.i424.1.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i425_1_4 tmp_to_be_used v_conv4_i_i424_1_4 1;
(*   %conv5.i.i426.1.4 = trunc i32 %shr.i.i425.1.4 to i8 *)
split tmp_v_shr_i_i425_1_4 v_conv5_i_i426_1_4 v_shr_i_i425_1_4 8;
vpc v_conv5_i_i426_1_4@uint8 v_conv5_i_i426_1_4@uint32;
(*   %conv6.i.i427.1.4 = zext i8 %conv7.i.i429.4215 to i32 *)
cast v_conv6_i_i427_1_4@uint32 v_conv7_i_i429_4215@uint8;
(*   %shl.i.i428.1.4 = shl i32 %conv6.i.i427.1.4, 1 *)
shls discard_169 v_shl_i_i428_1_4 v_conv6_i_i427_1_4 1;
(*   %conv7.i.i429.1.4 = trunc i32 %shl.i.i428.1.4 to i8 *)
split tmp_v_shl_i_i428_1_4 v_conv7_i_i429_1_4 v_shl_i_i428_1_4 8;
vpc v_conv7_i_i429_1_4@uint8 v_conv7_i_i429_1_4@uint32;
(*   %conv.i.i417.2.4 = zext i8 %conv5.i.i426.1.4 to i32 *)
cast v_conv_i_i417_2_4@uint32 v_conv5_i_i426_1_4@uint8;
(*   %and.i.i418.2.4 = and i32 %conv.i.i417.2.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i418_2_4 v_conv_i_i417_2_4 (0x1)@uint32;
(*   %conv1.i.i419.2.4 = zext i8 %conv7.i.i429.1.4 to i32 *)
cast v_conv1_i_i419_2_4@uint32 v_conv7_i_i429_1_4@uint8;
(*   %mul.i.i420.2.4 = mul nsw i32 %and.i.i418.2.4, %conv1.i.i419.2.4 *)
mul v_mul_i_i420_2_4 v_and_i_i418_2_4 v_conv1_i_i419_2_4;
(*   %conv2.i.i421.2.4 = zext i8 %conv3.i.i423.1.4 to i32 *)
cast v_conv2_i_i421_2_4@uint32 v_conv3_i_i423_1_4@uint8;
(*   %xor.i.i422.2.4 = xor i32 %conv2.i.i421.2.4, %mul.i.i420.2.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i422_2_4 v_conv2_i_i421_2_4 v_mul_i_i420_2_4;
(*   %conv3.i.i423.2.4 = trunc i32 %xor.i.i422.2.4 to i8 *)
split tmp_v_xor_i_i422_2_4 v_conv3_i_i423_2_4 v_xor_i_i422_2_4 8;
vpc v_conv3_i_i423_2_4@uint8 v_conv3_i_i423_2_4@uint32;
(*   %conv4.i.i424.2.4 = zext i8 %conv5.i.i426.1.4 to i32 *)
cast v_conv4_i_i424_2_4@uint32 v_conv5_i_i426_1_4@uint8;
(*   %shr.i.i425.2.4 = ashr i32 %conv4.i.i424.2.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i425_2_4 tmp_to_be_used v_conv4_i_i424_2_4 1;
(*   %conv5.i.i426.2.4 = trunc i32 %shr.i.i425.2.4 to i8 *)
split tmp_v_shr_i_i425_2_4 v_conv5_i_i426_2_4 v_shr_i_i425_2_4 8;
vpc v_conv5_i_i426_2_4@uint8 v_conv5_i_i426_2_4@uint32;
(*   %conv6.i.i427.2.4 = zext i8 %conv7.i.i429.1.4 to i32 *)
cast v_conv6_i_i427_2_4@uint32 v_conv7_i_i429_1_4@uint8;
(*   %shl.i.i428.2.4 = shl i32 %conv6.i.i427.2.4, 1 *)
shls discard_170 v_shl_i_i428_2_4 v_conv6_i_i427_2_4 1;
(*   %conv7.i.i429.2.4 = trunc i32 %shl.i.i428.2.4 to i8 *)
split tmp_v_shl_i_i428_2_4 v_conv7_i_i429_2_4 v_shl_i_i428_2_4 8;
vpc v_conv7_i_i429_2_4@uint8 v_conv7_i_i429_2_4@uint32;
(*   %conv.i.i417.3.4 = zext i8 %conv5.i.i426.2.4 to i32 *)
cast v_conv_i_i417_3_4@uint32 v_conv5_i_i426_2_4@uint8;
(*   %and.i.i418.3.4 = and i32 %conv.i.i417.3.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i418_3_4 v_conv_i_i417_3_4 (0x1)@uint32;
(*   %conv1.i.i419.3.4 = zext i8 %conv7.i.i429.2.4 to i32 *)
cast v_conv1_i_i419_3_4@uint32 v_conv7_i_i429_2_4@uint8;
(*   %mul.i.i420.3.4 = mul nsw i32 %and.i.i418.3.4, %conv1.i.i419.3.4 *)
mul v_mul_i_i420_3_4 v_and_i_i418_3_4 v_conv1_i_i419_3_4;
(*   %conv2.i.i421.3.4 = zext i8 %conv3.i.i423.2.4 to i32 *)
cast v_conv2_i_i421_3_4@uint32 v_conv3_i_i423_2_4@uint8;
(*   %xor.i.i422.3.4 = xor i32 %conv2.i.i421.3.4, %mul.i.i420.3.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i422_3_4 v_conv2_i_i421_3_4 v_mul_i_i420_3_4;
(*   %conv3.i.i423.3.4 = trunc i32 %xor.i.i422.3.4 to i8 *)
split tmp_v_xor_i_i422_3_4 v_conv3_i_i423_3_4 v_xor_i_i422_3_4 8;
vpc v_conv3_i_i423_3_4@uint8 v_conv3_i_i423_3_4@uint32;
(*   %conv4.i.i424.3.4 = zext i8 %conv5.i.i426.2.4 to i32 *)
cast v_conv4_i_i424_3_4@uint32 v_conv5_i_i426_2_4@uint8;
(*   %shr.i.i425.3.4 = ashr i32 %conv4.i.i424.3.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i425_3_4 tmp_to_be_used v_conv4_i_i424_3_4 1;
(*   %conv5.i.i426.3.4 = trunc i32 %shr.i.i425.3.4 to i8 *)
split tmp_v_shr_i_i425_3_4 v_conv5_i_i426_3_4 v_shr_i_i425_3_4 8;
vpc v_conv5_i_i426_3_4@uint8 v_conv5_i_i426_3_4@uint32;
(*   %conv6.i.i427.3.4 = zext i8 %conv7.i.i429.2.4 to i32 *)
cast v_conv6_i_i427_3_4@uint32 v_conv7_i_i429_2_4@uint8;
(*   %shl.i.i428.3.4 = shl i32 %conv6.i.i427.3.4, 1 *)
shls discard_171 v_shl_i_i428_3_4 v_conv6_i_i427_3_4 1;
(*   %conv7.i.i429.3.4 = trunc i32 %shl.i.i428.3.4 to i8 *)
split tmp_v_shl_i_i428_3_4 v_conv7_i_i429_3_4 v_shl_i_i428_3_4 8;
vpc v_conv7_i_i429_3_4@uint8 v_conv7_i_i429_3_4@uint32;
(*   %conv.i.i417.4.4 = zext i8 %conv5.i.i426.3.4 to i32 *)
cast v_conv_i_i417_4_4@uint32 v_conv5_i_i426_3_4@uint8;
(*   %and.i.i418.4.4 = and i32 %conv.i.i417.4.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i418_4_4 v_conv_i_i417_4_4 (0x1)@uint32;
(*   %conv1.i.i419.4.4 = zext i8 %conv7.i.i429.3.4 to i32 *)
cast v_conv1_i_i419_4_4@uint32 v_conv7_i_i429_3_4@uint8;
(*   %mul.i.i420.4.4 = mul nsw i32 %and.i.i418.4.4, %conv1.i.i419.4.4 *)
mul v_mul_i_i420_4_4 v_and_i_i418_4_4 v_conv1_i_i419_4_4;
(*   %conv2.i.i421.4.4 = zext i8 %conv3.i.i423.3.4 to i32 *)
cast v_conv2_i_i421_4_4@uint32 v_conv3_i_i423_3_4@uint8;
(*   %xor.i.i422.4.4 = xor i32 %conv2.i.i421.4.4, %mul.i.i420.4.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i422_4_4 v_conv2_i_i421_4_4 v_mul_i_i420_4_4;
(*   %conv3.i.i423.4.4 = trunc i32 %xor.i.i422.4.4 to i8 *)
split tmp_v_xor_i_i422_4_4 v_conv3_i_i423_4_4 v_xor_i_i422_4_4 8;
vpc v_conv3_i_i423_4_4@uint8 v_conv3_i_i423_4_4@uint32;
(*   %conv4.i.i424.4.4 = zext i8 %conv5.i.i426.3.4 to i32 *)
cast v_conv4_i_i424_4_4@uint32 v_conv5_i_i426_3_4@uint8;
(*   %shr.i.i425.4.4 = ashr i32 %conv4.i.i424.4.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i425_4_4 tmp_to_be_used v_conv4_i_i424_4_4 1;
(*   %conv5.i.i426.4.4 = trunc i32 %shr.i.i425.4.4 to i8 *)
split tmp_v_shr_i_i425_4_4 v_conv5_i_i426_4_4 v_shr_i_i425_4_4 8;
vpc v_conv5_i_i426_4_4@uint8 v_conv5_i_i426_4_4@uint32;
(*   %conv6.i.i427.4.4 = zext i8 %conv7.i.i429.3.4 to i32 *)
cast v_conv6_i_i427_4_4@uint32 v_conv7_i_i429_3_4@uint8;
(*   %shl.i.i428.4.4 = shl i32 %conv6.i.i427.4.4, 1 *)
shls discard_172 v_shl_i_i428_4_4 v_conv6_i_i427_4_4 1;
(*   %conv7.i.i429.4.4 = trunc i32 %shl.i.i428.4.4 to i8 *)
split tmp_v_shl_i_i428_4_4 v_conv7_i_i429_4_4 v_shl_i_i428_4_4 8;
vpc v_conv7_i_i429_4_4@uint8 v_conv7_i_i429_4_4@uint32;
(*   %conv.i.i417.5.4 = zext i8 %conv5.i.i426.4.4 to i32 *)
cast v_conv_i_i417_5_4@uint32 v_conv5_i_i426_4_4@uint8;
(*   %and.i.i418.5.4 = and i32 %conv.i.i417.5.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i418_5_4 v_conv_i_i417_5_4 (0x1)@uint32;
(*   %conv1.i.i419.5.4 = zext i8 %conv7.i.i429.4.4 to i32 *)
cast v_conv1_i_i419_5_4@uint32 v_conv7_i_i429_4_4@uint8;
(*   %mul.i.i420.5.4 = mul nsw i32 %and.i.i418.5.4, %conv1.i.i419.5.4 *)
mul v_mul_i_i420_5_4 v_and_i_i418_5_4 v_conv1_i_i419_5_4;
(*   %conv2.i.i421.5.4 = zext i8 %conv3.i.i423.4.4 to i32 *)
cast v_conv2_i_i421_5_4@uint32 v_conv3_i_i423_4_4@uint8;
(*   %xor.i.i422.5.4 = xor i32 %conv2.i.i421.5.4, %mul.i.i420.5.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i422_5_4 v_conv2_i_i421_5_4 v_mul_i_i420_5_4;
(*   %conv3.i.i423.5.4 = trunc i32 %xor.i.i422.5.4 to i8 *)
split tmp_v_xor_i_i422_5_4 v_conv3_i_i423_5_4 v_xor_i_i422_5_4 8;
vpc v_conv3_i_i423_5_4@uint8 v_conv3_i_i423_5_4@uint32;
(*   %conv4.i.i424.5.4 = zext i8 %conv5.i.i426.4.4 to i32 *)
cast v_conv4_i_i424_5_4@uint32 v_conv5_i_i426_4_4@uint8;
(*   %shr.i.i425.5.4 = ashr i32 %conv4.i.i424.5.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i425_5_4 tmp_to_be_used v_conv4_i_i424_5_4 1;
(*   %conv5.i.i426.5.4 = trunc i32 %shr.i.i425.5.4 to i8 *)
split tmp_v_shr_i_i425_5_4 v_conv5_i_i426_5_4 v_shr_i_i425_5_4 8;
vpc v_conv5_i_i426_5_4@uint8 v_conv5_i_i426_5_4@uint32;
(*   %conv6.i.i427.5.4 = zext i8 %conv7.i.i429.4.4 to i32 *)
cast v_conv6_i_i427_5_4@uint32 v_conv7_i_i429_4_4@uint8;
(*   %shl.i.i428.5.4 = shl i32 %conv6.i.i427.5.4, 1 *)
shls discard_173 v_shl_i_i428_5_4 v_conv6_i_i427_5_4 1;
(*   %conv7.i.i429.5.4 = trunc i32 %shl.i.i428.5.4 to i8 *)
split tmp_v_shl_i_i428_5_4 v_conv7_i_i429_5_4 v_shl_i_i428_5_4 8;
vpc v_conv7_i_i429_5_4@uint8 v_conv7_i_i429_5_4@uint32;
(*   %conv.i.i417.6.4 = zext i8 %conv5.i.i426.5.4 to i32 *)
cast v_conv_i_i417_6_4@uint32 v_conv5_i_i426_5_4@uint8;
(*   %and.i.i418.6.4 = and i32 %conv.i.i417.6.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i418_6_4 v_conv_i_i417_6_4 (0x1)@uint32;
(*   %conv1.i.i419.6.4 = zext i8 %conv7.i.i429.5.4 to i32 *)
cast v_conv1_i_i419_6_4@uint32 v_conv7_i_i429_5_4@uint8;
(*   %mul.i.i420.6.4 = mul nsw i32 %and.i.i418.6.4, %conv1.i.i419.6.4 *)
mul v_mul_i_i420_6_4 v_and_i_i418_6_4 v_conv1_i_i419_6_4;
(*   %conv2.i.i421.6.4 = zext i8 %conv3.i.i423.5.4 to i32 *)
cast v_conv2_i_i421_6_4@uint32 v_conv3_i_i423_5_4@uint8;
(*   %xor.i.i422.6.4 = xor i32 %conv2.i.i421.6.4, %mul.i.i420.6.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i422_6_4 v_conv2_i_i421_6_4 v_mul_i_i420_6_4;
(*   %conv3.i.i423.6.4 = trunc i32 %xor.i.i422.6.4 to i8 *)
split tmp_v_xor_i_i422_6_4 v_conv3_i_i423_6_4 v_xor_i_i422_6_4 8;
vpc v_conv3_i_i423_6_4@uint8 v_conv3_i_i423_6_4@uint32;
(*   %conv4.i.i424.6.4 = zext i8 %conv5.i.i426.5.4 to i32 *)
cast v_conv4_i_i424_6_4@uint32 v_conv5_i_i426_5_4@uint8;
(*   %shr.i.i425.6.4 = ashr i32 %conv4.i.i424.6.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i425_6_4 tmp_to_be_used v_conv4_i_i424_6_4 1;
(*   %conv5.i.i426.6.4 = trunc i32 %shr.i.i425.6.4 to i8 *)
split tmp_v_shr_i_i425_6_4 v_conv5_i_i426_6_4 v_shr_i_i425_6_4 8;
vpc v_conv5_i_i426_6_4@uint8 v_conv5_i_i426_6_4@uint32;
(*   %conv6.i.i427.6.4 = zext i8 %conv7.i.i429.5.4 to i32 *)
cast v_conv6_i_i427_6_4@uint32 v_conv7_i_i429_5_4@uint8;
(*   %shl.i.i428.6.4 = shl i32 %conv6.i.i427.6.4, 1 *)
shls discard_174 v_shl_i_i428_6_4 v_conv6_i_i427_6_4 1;
(*   %conv7.i.i429.6.4 = trunc i32 %shl.i.i428.6.4 to i8 *)
split tmp_v_shl_i_i428_6_4 v_conv7_i_i429_6_4 v_shl_i_i428_6_4 8;
vpc v_conv7_i_i429_6_4@uint8 v_conv7_i_i429_6_4@uint32;
(*   %conv.i.i417.7.4 = zext i8 %conv5.i.i426.6.4 to i32 *)
cast v_conv_i_i417_7_4@uint32 v_conv5_i_i426_6_4@uint8;
(*   %and.i.i418.7.4 = and i32 %conv.i.i417.7.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i418_7_4 v_conv_i_i417_7_4 (0x1)@uint32;
(*   %conv1.i.i419.7.4 = zext i8 %conv7.i.i429.6.4 to i32 *)
cast v_conv1_i_i419_7_4@uint32 v_conv7_i_i429_6_4@uint8;
(*   %mul.i.i420.7.4 = mul nsw i32 %and.i.i418.7.4, %conv1.i.i419.7.4 *)
mul v_mul_i_i420_7_4 v_and_i_i418_7_4 v_conv1_i_i419_7_4;
(*   %conv2.i.i421.7.4 = zext i8 %conv3.i.i423.6.4 to i32 *)
cast v_conv2_i_i421_7_4@uint32 v_conv3_i_i423_6_4@uint8;
(*   %xor.i.i422.7.4 = xor i32 %conv2.i.i421.7.4, %mul.i.i420.7.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i422_7_4 v_conv2_i_i421_7_4 v_mul_i_i420_7_4;
(*   %conv3.i.i423.7.4 = trunc i32 %xor.i.i422.7.4 to i8 *)
split tmp_v_xor_i_i422_7_4 v_conv3_i_i423_7_4 v_xor_i_i422_7_4 8;
vpc v_conv3_i_i423_7_4@uint8 v_conv3_i_i423_7_4@uint32;
(*   %arrayidx6.i433.4 = getelementptr inbounds i8, i8* %add.ptr12, i64 4 *)
(*   store i8 %conv3.i.i423.7.4, i8* %arrayidx6.i433.4, align 1 *)
mov cc_29 v_conv3_i_i423_7_4;
(*   %add.ptr15 = getelementptr inbounds i8, i8* %r, i64 5 *)
(*   %scevgep131 = getelementptr [50 x i8], [50 x i8]* %cc, i64 0, i64 5 *)
(*   %scevgep131132 = bitcast i8* %scevgep131 to [50 x i8]* *)
(*   %scevgep141 = getelementptr [50 x i8], [50 x i8]* %dd, i64 0, i64 5 *)
(*   %scevgep137 = getelementptr [50 x i8], [50 x i8]* %scevgep131132, i64 0, i64 0 *)
(*   %50 = load i8, i8* %scevgep137, align 1 *)
mov v50 cc_5;
(*   %conv.i381 = zext i8 %50 to i32 *)
cast v_conv_i381@uint32 v50@uint8;
(*   %51 = load i8, i8* %add.ptr15, align 1 *)
mov v51 r_5;
(*   %conv5.i386 = zext i8 %51 to i32 *)
cast v_conv5_i386@uint32 v51@uint8;
(*   %xor.i387 = xor i32 %conv.i381, %conv5.i386 *)
(* You may need to modify here *)
xor uint32 v_xor_i387 v_conv_i381 v_conv5_i386;
(*   %conv6.i388 = trunc i32 %xor.i387 to i8 *)
split tmp_v_xor_i387 v_conv6_i388 v_xor_i387 8;
vpc v_conv6_i388@uint8 v_conv6_i388@uint32;
(*   store i8 %conv6.i388, i8* %scevgep141, align 1 *)
mov dd_5 v_conv6_i388;
(*   %scevgep134 = getelementptr [50 x i8], [50 x i8]* %scevgep131132, i64 0, i64 1 *)
(*   %52 = bitcast i8* %scevgep134 to [50 x i8]* *)
(*   %scevgep139 = getelementptr i8, i8* %add.ptr15, i64 1 *)
(*   %scevgep137.1 = getelementptr [50 x i8], [50 x i8]* %52, i64 0, i64 0 *)
(*   %53 = load i8, i8* %scevgep137.1, align 1 *)
mov v53 cc_6;
(*   %conv.i381.1 = zext i8 %53 to i32 *)
cast v_conv_i381_1@uint32 v53@uint8;
(*   %54 = load i8, i8* %scevgep139, align 1 *)
mov v54 r_6;
(*   %conv5.i386.1 = zext i8 %54 to i32 *)
cast v_conv5_i386_1@uint32 v54@uint8;
(*   %xor.i387.1 = xor i32 %conv.i381.1, %conv5.i386.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i387_1 v_conv_i381_1 v_conv5_i386_1;
(*   %conv6.i388.1 = trunc i32 %xor.i387.1 to i8 *)
split tmp_v_xor_i387_1 v_conv6_i388_1 v_xor_i387_1 8;
vpc v_conv6_i388_1@uint8 v_conv6_i388_1@uint32;
(*   %scevgep142.1 = getelementptr i8, i8* %scevgep141, i64 1 *)
(*   store i8 %conv6.i388.1, i8* %scevgep142.1, align 1 *)
mov dd_6 v_conv6_i388_1;
(*   %scevgep134.1 = getelementptr [50 x i8], [50 x i8]* %52, i64 0, i64 1 *)
(*   %55 = bitcast i8* %scevgep134.1 to [50 x i8]* *)
(*   %scevgep139.1 = getelementptr i8, i8* %scevgep139, i64 1 *)
(*   %scevgep137.2 = getelementptr [50 x i8], [50 x i8]* %55, i64 0, i64 0 *)
(*   %56 = load i8, i8* %scevgep137.2, align 1 *)
mov v56 cc_7;
(*   %conv.i381.2 = zext i8 %56 to i32 *)
cast v_conv_i381_2@uint32 v56@uint8;
(*   %57 = load i8, i8* %scevgep139.1, align 1 *)
mov v57 r_7;
(*   %conv5.i386.2 = zext i8 %57 to i32 *)
cast v_conv5_i386_2@uint32 v57@uint8;
(*   %xor.i387.2 = xor i32 %conv.i381.2, %conv5.i386.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i387_2 v_conv_i381_2 v_conv5_i386_2;
(*   %conv6.i388.2 = trunc i32 %xor.i387.2 to i8 *)
split tmp_v_xor_i387_2 v_conv6_i388_2 v_xor_i387_2 8;
vpc v_conv6_i388_2@uint8 v_conv6_i388_2@uint32;
(*   %scevgep142.2 = getelementptr i8, i8* %scevgep141, i64 2 *)
(*   store i8 %conv6.i388.2, i8* %scevgep142.2, align 1 *)
mov dd_7 v_conv6_i388_2;
(*   %scevgep134.2 = getelementptr [50 x i8], [50 x i8]* %55, i64 0, i64 1 *)
(*   %58 = bitcast i8* %scevgep134.2 to [50 x i8]* *)
(*   %scevgep139.2 = getelementptr i8, i8* %scevgep139.1, i64 1 *)
(*   %scevgep137.3 = getelementptr [50 x i8], [50 x i8]* %58, i64 0, i64 0 *)
(*   %59 = load i8, i8* %scevgep137.3, align 1 *)
mov v59 cc_8;
(*   %conv.i381.3 = zext i8 %59 to i32 *)
cast v_conv_i381_3@uint32 v59@uint8;
(*   %60 = load i8, i8* %scevgep139.2, align 1 *)
mov v60 r_8;
(*   %conv5.i386.3 = zext i8 %60 to i32 *)
cast v_conv5_i386_3@uint32 v60@uint8;
(*   %xor.i387.3 = xor i32 %conv.i381.3, %conv5.i386.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i387_3 v_conv_i381_3 v_conv5_i386_3;
(*   %conv6.i388.3 = trunc i32 %xor.i387.3 to i8 *)
split tmp_v_xor_i387_3 v_conv6_i388_3 v_xor_i387_3 8;
vpc v_conv6_i388_3@uint8 v_conv6_i388_3@uint32;
(*   %scevgep142.3 = getelementptr i8, i8* %scevgep141, i64 3 *)
(*   store i8 %conv6.i388.3, i8* %scevgep142.3, align 1 *)
mov dd_8 v_conv6_i388_3;
(*   %scevgep134.3 = getelementptr [50 x i8], [50 x i8]* %58, i64 0, i64 1 *)
(*   %61 = bitcast i8* %scevgep134.3 to [50 x i8]* *)
(*   %scevgep139.3 = getelementptr i8, i8* %scevgep139.2, i64 1 *)
(*   %scevgep137.4 = getelementptr [50 x i8], [50 x i8]* %61, i64 0, i64 0 *)
(*   %62 = load i8, i8* %scevgep137.4, align 1 *)
mov v62 cc_9;
(*   %conv.i381.4 = zext i8 %62 to i32 *)
cast v_conv_i381_4@uint32 v62@uint8;
(*   %63 = load i8, i8* %scevgep139.3, align 1 *)
mov v63 r_9;
(*   %conv5.i386.4 = zext i8 %63 to i32 *)
cast v_conv5_i386_4@uint32 v63@uint8;
(*   %xor.i387.4 = xor i32 %conv.i381.4, %conv5.i386.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i387_4 v_conv_i381_4 v_conv5_i386_4;
(*   %conv6.i388.4 = trunc i32 %xor.i387.4 to i8 *)
split tmp_v_xor_i387_4 v_conv6_i388_4 v_xor_i387_4 8;
vpc v_conv6_i388_4@uint8 v_conv6_i388_4@uint32;
(*   %scevgep142.4 = getelementptr i8, i8* %scevgep141, i64 4 *)
(*   store i8 %conv6.i388.4, i8* %scevgep142.4, align 1 *)
mov dd_9 v_conv6_i388_4;
(*   %scevgep76 = getelementptr [50 x i8], [50 x i8]* %dd, i64 0, i64 5 *)
(*   %scevgep7677 = bitcast i8* %scevgep76 to [50 x i8]* *)
(*   %scevgep85 = getelementptr [50 x i8], [50 x i8]* %cc, i64 0, i64 10 *)
(*   %scevgep8586 = bitcast i8* %scevgep85 to [50 x i8]* *)
(*   %scevgep92 = getelementptr [50 x i8], [50 x i8]* %dd, i64 0, i64 10 *)
(*   %scevgep9293 = bitcast i8* %scevgep92 to [50 x i8]* *)
(*   %scevgep103 = getelementptr [50 x i8], [50 x i8]* %cc, i64 0, i64 15 *)
(*   %scevgep103104 = bitcast i8* %scevgep103 to [50 x i8]* *)
(*   %scevgep110 = getelementptr [50 x i8], [50 x i8]* %dd, i64 0, i64 15 *)
(*   %scevgep110111 = bitcast i8* %scevgep110 to [50 x i8]* *)
(*   %scevgep125 = getelementptr [50 x i8], [50 x i8]* %dd, i64 0, i64 20 *)
(*   %scevgep125126 = bitcast i8* %scevgep125 to [50 x i8]* *)
(*   %scevgep84 = getelementptr [50 x i8], [50 x i8]* %scevgep7677, i64 0, i64 0 *)
(*   %scevgep91 = getelementptr [50 x i8], [50 x i8]* %scevgep8586, i64 0, i64 0 *)
(*   %64 = load i8, i8* %scevgep84, align 1 *)
mov v64 dd_5;
(*   %conv.i346 = zext i8 %64 to i32 *)
cast v_conv_i346@uint32 v64@uint8;
(*   %65 = load i8, i8* %scevgep91, align 1 *)
mov v65 cc_10;
(*   %conv5.i351 = zext i8 %65 to i32 *)
cast v_conv5_i351@uint32 v65@uint8;
(*   %xor.i352 = xor i32 %conv.i346, %conv5.i351 *)
(* You may need to modify here *)
xor uint32 v_xor_i352 v_conv_i346 v_conv5_i351;
(*   %conv6.i353 = trunc i32 %xor.i352 to i8 *)
split tmp_v_xor_i352 v_conv6_i353 v_xor_i352 8;
vpc v_conv6_i353@uint8 v_conv6_i353@uint32;
(*   %scevgep96 = getelementptr [50 x i8], [50 x i8]* %scevgep9293, i64 0, i64 0 *)
(*   store i8 %conv6.i353, i8* %scevgep96, align 1 *)
mov dd_10 v_conv6_i353;
(*   %scevgep81 = getelementptr [50 x i8], [50 x i8]* %scevgep7677, i64 0, i64 1 *)
(*   %66 = bitcast i8* %scevgep81 to [50 x i8]* *)
(*   %scevgep90 = getelementptr [50 x i8], [50 x i8]* %scevgep8586, i64 0, i64 1 *)
(*   %67 = bitcast i8* %scevgep90 to [50 x i8]* *)
(*   %scevgep84.1 = getelementptr [50 x i8], [50 x i8]* %66, i64 0, i64 0 *)
(*   %scevgep91.1 = getelementptr [50 x i8], [50 x i8]* %67, i64 0, i64 0 *)
(*   %68 = load i8, i8* %scevgep84.1, align 1 *)
mov v68 dd_6;
(*   %conv.i346.1 = zext i8 %68 to i32 *)
cast v_conv_i346_1@uint32 v68@uint8;
(*   %69 = load i8, i8* %scevgep91.1, align 1 *)
mov v69 cc_11;
(*   %conv5.i351.1 = zext i8 %69 to i32 *)
cast v_conv5_i351_1@uint32 v69@uint8;
(*   %xor.i352.1 = xor i32 %conv.i346.1, %conv5.i351.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i352_1 v_conv_i346_1 v_conv5_i351_1;
(*   %conv6.i353.1 = trunc i32 %xor.i352.1 to i8 *)
split tmp_v_xor_i352_1 v_conv6_i353_1 v_xor_i352_1 8;
vpc v_conv6_i353_1@uint8 v_conv6_i353_1@uint32;
(*   %scevgep96.1 = getelementptr [50 x i8], [50 x i8]* %scevgep9293, i64 0, i64 1 *)
(*   store i8 %conv6.i353.1, i8* %scevgep96.1, align 1 *)
mov dd_11 v_conv6_i353_1;
(*   %scevgep81.1 = getelementptr [50 x i8], [50 x i8]* %66, i64 0, i64 1 *)
(*   %70 = bitcast i8* %scevgep81.1 to [50 x i8]* *)
(*   %scevgep90.1 = getelementptr [50 x i8], [50 x i8]* %67, i64 0, i64 1 *)
(*   %71 = bitcast i8* %scevgep90.1 to [50 x i8]* *)
(*   %scevgep84.2 = getelementptr [50 x i8], [50 x i8]* %70, i64 0, i64 0 *)
(*   %scevgep91.2 = getelementptr [50 x i8], [50 x i8]* %71, i64 0, i64 0 *)
(*   %72 = load i8, i8* %scevgep84.2, align 1 *)
mov v72 dd_7;
(*   %conv.i346.2 = zext i8 %72 to i32 *)
cast v_conv_i346_2@uint32 v72@uint8;
(*   %73 = load i8, i8* %scevgep91.2, align 1 *)
mov v73 cc_12;
(*   %conv5.i351.2 = zext i8 %73 to i32 *)
cast v_conv5_i351_2@uint32 v73@uint8;
(*   %xor.i352.2 = xor i32 %conv.i346.2, %conv5.i351.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i352_2 v_conv_i346_2 v_conv5_i351_2;
(*   %conv6.i353.2 = trunc i32 %xor.i352.2 to i8 *)
split tmp_v_xor_i352_2 v_conv6_i353_2 v_xor_i352_2 8;
vpc v_conv6_i353_2@uint8 v_conv6_i353_2@uint32;
(*   %scevgep96.2 = getelementptr [50 x i8], [50 x i8]* %scevgep9293, i64 0, i64 2 *)
(*   store i8 %conv6.i353.2, i8* %scevgep96.2, align 1 *)
mov dd_12 v_conv6_i353_2;
(*   %scevgep81.2 = getelementptr [50 x i8], [50 x i8]* %70, i64 0, i64 1 *)
(*   %74 = bitcast i8* %scevgep81.2 to [50 x i8]* *)
(*   %scevgep90.2 = getelementptr [50 x i8], [50 x i8]* %71, i64 0, i64 1 *)
(*   %75 = bitcast i8* %scevgep90.2 to [50 x i8]* *)
(*   %scevgep84.3 = getelementptr [50 x i8], [50 x i8]* %74, i64 0, i64 0 *)
(*   %scevgep91.3 = getelementptr [50 x i8], [50 x i8]* %75, i64 0, i64 0 *)
(*   %76 = load i8, i8* %scevgep84.3, align 1 *)
mov v76 dd_8;
(*   %conv.i346.3 = zext i8 %76 to i32 *)
cast v_conv_i346_3@uint32 v76@uint8;
(*   %77 = load i8, i8* %scevgep91.3, align 1 *)
mov v77 cc_13;
(*   %conv5.i351.3 = zext i8 %77 to i32 *)
cast v_conv5_i351_3@uint32 v77@uint8;
(*   %xor.i352.3 = xor i32 %conv.i346.3, %conv5.i351.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i352_3 v_conv_i346_3 v_conv5_i351_3;
(*   %conv6.i353.3 = trunc i32 %xor.i352.3 to i8 *)
split tmp_v_xor_i352_3 v_conv6_i353_3 v_xor_i352_3 8;
vpc v_conv6_i353_3@uint8 v_conv6_i353_3@uint32;
(*   %scevgep96.3 = getelementptr [50 x i8], [50 x i8]* %scevgep9293, i64 0, i64 3 *)
(*   store i8 %conv6.i353.3, i8* %scevgep96.3, align 1 *)
mov dd_13 v_conv6_i353_3;
(*   %scevgep81.3 = getelementptr [50 x i8], [50 x i8]* %74, i64 0, i64 1 *)
(*   %78 = bitcast i8* %scevgep81.3 to [50 x i8]* *)
(*   %scevgep90.3 = getelementptr [50 x i8], [50 x i8]* %75, i64 0, i64 1 *)
(*   %79 = bitcast i8* %scevgep90.3 to [50 x i8]* *)
(*   %scevgep84.4 = getelementptr [50 x i8], [50 x i8]* %78, i64 0, i64 0 *)
(*   %scevgep91.4 = getelementptr [50 x i8], [50 x i8]* %79, i64 0, i64 0 *)
(*   %80 = load i8, i8* %scevgep84.4, align 1 *)
mov v80 dd_9;
(*   %conv.i346.4 = zext i8 %80 to i32 *)
cast v_conv_i346_4@uint32 v80@uint8;
(*   %81 = load i8, i8* %scevgep91.4, align 1 *)
mov v81 cc_14;
(*   %conv5.i351.4 = zext i8 %81 to i32 *)
cast v_conv5_i351_4@uint32 v81@uint8;
(*   %xor.i352.4 = xor i32 %conv.i346.4, %conv5.i351.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i352_4 v_conv_i346_4 v_conv5_i351_4;
(*   %conv6.i353.4 = trunc i32 %xor.i352.4 to i8 *)
split tmp_v_xor_i352_4 v_conv6_i353_4 v_xor_i352_4 8;
vpc v_conv6_i353_4@uint8 v_conv6_i353_4@uint32;
(*   %scevgep96.4 = getelementptr [50 x i8], [50 x i8]* %scevgep9293, i64 0, i64 4 *)
(*   store i8 %conv6.i353.4, i8* %scevgep96.4, align 1 *)
mov dd_14 v_conv6_i353_4;
(*   %scevgep102 = getelementptr [50 x i8], [50 x i8]* %scevgep9293, i64 0, i64 0 *)
(*   %scevgep109 = getelementptr [50 x i8], [50 x i8]* %scevgep103104, i64 0, i64 0 *)
(*   %82 = load i8, i8* %scevgep102, align 1 *)
mov v82 dd_10;
(*   %conv.i321 = zext i8 %82 to i32 *)
cast v_conv_i321@uint32 v82@uint8;
(*   %83 = load i8, i8* %scevgep109, align 1 *)
mov v83 cc_15;
(*   %conv5.i326 = zext i8 %83 to i32 *)
cast v_conv5_i326@uint32 v83@uint8;
(*   %xor.i327 = xor i32 %conv.i321, %conv5.i326 *)
(* You may need to modify here *)
xor uint32 v_xor_i327 v_conv_i321 v_conv5_i326;
(*   %conv6.i328 = trunc i32 %xor.i327 to i8 *)
split tmp_v_xor_i327 v_conv6_i328 v_xor_i327 8;
vpc v_conv6_i328@uint8 v_conv6_i328@uint32;
(*   %scevgep114 = getelementptr [50 x i8], [50 x i8]* %scevgep110111, i64 0, i64 0 *)
(*   store i8 %conv6.i328, i8* %scevgep114, align 1 *)
mov dd_15 v_conv6_i328;
(*   %scevgep99 = getelementptr [50 x i8], [50 x i8]* %scevgep9293, i64 0, i64 1 *)
(*   %84 = bitcast i8* %scevgep99 to [50 x i8]* *)
(*   %scevgep108 = getelementptr [50 x i8], [50 x i8]* %scevgep103104, i64 0, i64 1 *)
(*   %85 = bitcast i8* %scevgep108 to [50 x i8]* *)
(*   %scevgep102.1 = getelementptr [50 x i8], [50 x i8]* %84, i64 0, i64 0 *)
(*   %scevgep109.1 = getelementptr [50 x i8], [50 x i8]* %85, i64 0, i64 0 *)
(*   %86 = load i8, i8* %scevgep102.1, align 1 *)
mov v86 dd_11;
(*   %conv.i321.1 = zext i8 %86 to i32 *)
cast v_conv_i321_1@uint32 v86@uint8;
(*   %87 = load i8, i8* %scevgep109.1, align 1 *)
mov v87 cc_16;
(*   %conv5.i326.1 = zext i8 %87 to i32 *)
cast v_conv5_i326_1@uint32 v87@uint8;
(*   %xor.i327.1 = xor i32 %conv.i321.1, %conv5.i326.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i327_1 v_conv_i321_1 v_conv5_i326_1;
(*   %conv6.i328.1 = trunc i32 %xor.i327.1 to i8 *)
split tmp_v_xor_i327_1 v_conv6_i328_1 v_xor_i327_1 8;
vpc v_conv6_i328_1@uint8 v_conv6_i328_1@uint32;
(*   %scevgep114.1 = getelementptr [50 x i8], [50 x i8]* %scevgep110111, i64 0, i64 1 *)
(*   store i8 %conv6.i328.1, i8* %scevgep114.1, align 1 *)
mov dd_16 v_conv6_i328_1;
(*   %scevgep99.1 = getelementptr [50 x i8], [50 x i8]* %84, i64 0, i64 1 *)
(*   %88 = bitcast i8* %scevgep99.1 to [50 x i8]* *)
(*   %scevgep108.1 = getelementptr [50 x i8], [50 x i8]* %85, i64 0, i64 1 *)
(*   %89 = bitcast i8* %scevgep108.1 to [50 x i8]* *)
(*   %scevgep102.2 = getelementptr [50 x i8], [50 x i8]* %88, i64 0, i64 0 *)
(*   %scevgep109.2 = getelementptr [50 x i8], [50 x i8]* %89, i64 0, i64 0 *)
(*   %90 = load i8, i8* %scevgep102.2, align 1 *)
mov v90 dd_12;
(*   %conv.i321.2 = zext i8 %90 to i32 *)
cast v_conv_i321_2@uint32 v90@uint8;
(*   %91 = load i8, i8* %scevgep109.2, align 1 *)
mov v91 cc_17;
(*   %conv5.i326.2 = zext i8 %91 to i32 *)
cast v_conv5_i326_2@uint32 v91@uint8;
(*   %xor.i327.2 = xor i32 %conv.i321.2, %conv5.i326.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i327_2 v_conv_i321_2 v_conv5_i326_2;
(*   %conv6.i328.2 = trunc i32 %xor.i327.2 to i8 *)
split tmp_v_xor_i327_2 v_conv6_i328_2 v_xor_i327_2 8;
vpc v_conv6_i328_2@uint8 v_conv6_i328_2@uint32;
(*   %scevgep114.2 = getelementptr [50 x i8], [50 x i8]* %scevgep110111, i64 0, i64 2 *)
(*   store i8 %conv6.i328.2, i8* %scevgep114.2, align 1 *)
mov dd_17 v_conv6_i328_2;
(*   %scevgep99.2 = getelementptr [50 x i8], [50 x i8]* %88, i64 0, i64 1 *)
(*   %92 = bitcast i8* %scevgep99.2 to [50 x i8]* *)
(*   %scevgep108.2 = getelementptr [50 x i8], [50 x i8]* %89, i64 0, i64 1 *)
(*   %93 = bitcast i8* %scevgep108.2 to [50 x i8]* *)
(*   %scevgep102.3 = getelementptr [50 x i8], [50 x i8]* %92, i64 0, i64 0 *)
(*   %scevgep109.3 = getelementptr [50 x i8], [50 x i8]* %93, i64 0, i64 0 *)
(*   %94 = load i8, i8* %scevgep102.3, align 1 *)
mov v94 dd_13;
(*   %conv.i321.3 = zext i8 %94 to i32 *)
cast v_conv_i321_3@uint32 v94@uint8;
(*   %95 = load i8, i8* %scevgep109.3, align 1 *)
mov v95 cc_18;
(*   %conv5.i326.3 = zext i8 %95 to i32 *)
cast v_conv5_i326_3@uint32 v95@uint8;
(*   %xor.i327.3 = xor i32 %conv.i321.3, %conv5.i326.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i327_3 v_conv_i321_3 v_conv5_i326_3;
(*   %conv6.i328.3 = trunc i32 %xor.i327.3 to i8 *)
split tmp_v_xor_i327_3 v_conv6_i328_3 v_xor_i327_3 8;
vpc v_conv6_i328_3@uint8 v_conv6_i328_3@uint32;
(*   %scevgep114.3 = getelementptr [50 x i8], [50 x i8]* %scevgep110111, i64 0, i64 3 *)
(*   store i8 %conv6.i328.3, i8* %scevgep114.3, align 1 *)
mov dd_18 v_conv6_i328_3;
(*   %scevgep99.3 = getelementptr [50 x i8], [50 x i8]* %92, i64 0, i64 1 *)
(*   %96 = bitcast i8* %scevgep99.3 to [50 x i8]* *)
(*   %scevgep108.3 = getelementptr [50 x i8], [50 x i8]* %93, i64 0, i64 1 *)
(*   %97 = bitcast i8* %scevgep108.3 to [50 x i8]* *)
(*   %scevgep102.4 = getelementptr [50 x i8], [50 x i8]* %96, i64 0, i64 0 *)
(*   %scevgep109.4 = getelementptr [50 x i8], [50 x i8]* %97, i64 0, i64 0 *)
(*   %98 = load i8, i8* %scevgep102.4, align 1 *)
mov v98 dd_14;
(*   %conv.i321.4 = zext i8 %98 to i32 *)
cast v_conv_i321_4@uint32 v98@uint8;
(*   %99 = load i8, i8* %scevgep109.4, align 1 *)
mov v99 cc_19;
(*   %conv5.i326.4 = zext i8 %99 to i32 *)
cast v_conv5_i326_4@uint32 v99@uint8;
(*   %xor.i327.4 = xor i32 %conv.i321.4, %conv5.i326.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i327_4 v_conv_i321_4 v_conv5_i326_4;
(*   %conv6.i328.4 = trunc i32 %xor.i327.4 to i8 *)
split tmp_v_xor_i327_4 v_conv6_i328_4 v_xor_i327_4 8;
vpc v_conv6_i328_4@uint8 v_conv6_i328_4@uint32;
(*   %scevgep114.4 = getelementptr [50 x i8], [50 x i8]* %scevgep110111, i64 0, i64 4 *)
(*   store i8 %conv6.i328.4, i8* %scevgep114.4, align 1 *)
mov dd_19 v_conv6_i328_4;
(*   %add.ptr69 = getelementptr inbounds i8, i8* %r, i64 5 *)
(*   %scevgep120 = getelementptr [50 x i8], [50 x i8]* %scevgep110111, i64 0, i64 0 *)
(*   %100 = load i8, i8* %scevgep120, align 1 *)
mov v100 dd_15;
(*   %conv.i289 = zext i8 %100 to i32 *)
cast v_conv_i289@uint32 v100@uint8;
(*   %arrayidx4.i293 = getelementptr inbounds i8, i8* %add.ptr69, i64 1 *)
(*   %101 = load i8, i8* %arrayidx4.i293, align 1 *)
mov v101 r_6;
(*   %conv5.i294 = zext i8 %101 to i32 *)
cast v_conv5_i294@uint32 v101@uint8;
(*   %xor.i295 = xor i32 %conv.i289, %conv5.i294 *)
(* You may need to modify here *)
xor uint32 v_xor_i295 v_conv_i289 v_conv5_i294;
(*   %conv6.i296 = trunc i32 %xor.i295 to i8 *)
split tmp_v_xor_i295 v_conv6_i296 v_xor_i295 8;
vpc v_conv6_i296@uint8 v_conv6_i296@uint32;
(*   %scevgep129 = getelementptr [50 x i8], [50 x i8]* %scevgep125126, i64 0, i64 0 *)
(*   store i8 %conv6.i296, i8* %scevgep129, align 1 *)
mov dd_20 v_conv6_i296;
(*   %scevgep117 = getelementptr [50 x i8], [50 x i8]* %scevgep110111, i64 0, i64 1 *)
(*   %102 = bitcast i8* %scevgep117 to [50 x i8]* *)
(*   %scevgep120.1 = getelementptr [50 x i8], [50 x i8]* %102, i64 0, i64 0 *)
(*   %103 = load i8, i8* %scevgep120.1, align 1 *)
mov v103 dd_16;
(*   %conv.i289.1 = zext i8 %103 to i32 *)
cast v_conv_i289_1@uint32 v103@uint8;
(*   %arrayidx4.i293.1 = getelementptr inbounds i8, i8* %add.ptr69, i64 2 *)
(*   %104 = load i8, i8* %arrayidx4.i293.1, align 1 *)
mov v104 r_7;
(*   %conv5.i294.1 = zext i8 %104 to i32 *)
cast v_conv5_i294_1@uint32 v104@uint8;
(*   %xor.i295.1 = xor i32 %conv.i289.1, %conv5.i294.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i295_1 v_conv_i289_1 v_conv5_i294_1;
(*   %conv6.i296.1 = trunc i32 %xor.i295.1 to i8 *)
split tmp_v_xor_i295_1 v_conv6_i296_1 v_xor_i295_1 8;
vpc v_conv6_i296_1@uint8 v_conv6_i296_1@uint32;
(*   %scevgep129.1 = getelementptr [50 x i8], [50 x i8]* %scevgep125126, i64 0, i64 1 *)
(*   store i8 %conv6.i296.1, i8* %scevgep129.1, align 1 *)
mov dd_21 v_conv6_i296_1;
(*   %scevgep117.1 = getelementptr [50 x i8], [50 x i8]* %102, i64 0, i64 1 *)
(*   %105 = bitcast i8* %scevgep117.1 to [50 x i8]* *)
(*   %scevgep120.2 = getelementptr [50 x i8], [50 x i8]* %105, i64 0, i64 0 *)
(*   %106 = load i8, i8* %scevgep120.2, align 1 *)
mov v106 dd_17;
(*   %conv.i289.2 = zext i8 %106 to i32 *)
cast v_conv_i289_2@uint32 v106@uint8;
(*   %arrayidx4.i293.2 = getelementptr inbounds i8, i8* %add.ptr69, i64 3 *)
(*   %107 = load i8, i8* %arrayidx4.i293.2, align 1 *)
mov v107 r_8;
(*   %conv5.i294.2 = zext i8 %107 to i32 *)
cast v_conv5_i294_2@uint32 v107@uint8;
(*   %xor.i295.2 = xor i32 %conv.i289.2, %conv5.i294.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i295_2 v_conv_i289_2 v_conv5_i294_2;
(*   %conv6.i296.2 = trunc i32 %xor.i295.2 to i8 *)
split tmp_v_xor_i295_2 v_conv6_i296_2 v_xor_i295_2 8;
vpc v_conv6_i296_2@uint8 v_conv6_i296_2@uint32;
(*   %scevgep129.2 = getelementptr [50 x i8], [50 x i8]* %scevgep125126, i64 0, i64 2 *)
(*   store i8 %conv6.i296.2, i8* %scevgep129.2, align 1 *)
mov dd_22 v_conv6_i296_2;
(*   %scevgep117.2 = getelementptr [50 x i8], [50 x i8]* %105, i64 0, i64 1 *)
(*   %108 = bitcast i8* %scevgep117.2 to [50 x i8]* *)
(*   %scevgep120.3 = getelementptr [50 x i8], [50 x i8]* %108, i64 0, i64 0 *)
(*   %109 = load i8, i8* %scevgep120.3, align 1 *)
mov v109 dd_18;
(*   %conv.i289.3 = zext i8 %109 to i32 *)
cast v_conv_i289_3@uint32 v109@uint8;
(*   %arrayidx4.i293.3 = getelementptr inbounds i8, i8* %add.ptr69, i64 4 *)
(*   %110 = load i8, i8* %arrayidx4.i293.3, align 1 *)
mov v110 r_9;
(*   %conv5.i294.3 = zext i8 %110 to i32 *)
cast v_conv5_i294_3@uint32 v110@uint8;
(*   %xor.i295.3 = xor i32 %conv.i289.3, %conv5.i294.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i295_3 v_conv_i289_3 v_conv5_i294_3;
(*   %conv6.i296.3 = trunc i32 %xor.i295.3 to i8 *)
split tmp_v_xor_i295_3 v_conv6_i296_3 v_xor_i295_3 8;
vpc v_conv6_i296_3@uint8 v_conv6_i296_3@uint32;
(*   %scevgep129.3 = getelementptr [50 x i8], [50 x i8]* %scevgep125126, i64 0, i64 3 *)
(*   store i8 %conv6.i296.3, i8* %scevgep129.3, align 1 *)
mov dd_23 v_conv6_i296_3;
(*   %scevgep117.3 = getelementptr [50 x i8], [50 x i8]* %108, i64 0, i64 1 *)
(*   %111 = bitcast i8* %scevgep117.3 to [50 x i8]* *)
(*   %scevgep120.4 = getelementptr [50 x i8], [50 x i8]* %111, i64 0, i64 0 *)
(*   %112 = load i8, i8* %scevgep120.4, align 1 *)
mov v112 dd_19;
(*   %conv.i289.4 = zext i8 %112 to i32 *)
cast v_conv_i289_4@uint32 v112@uint8;
(*   %113 = load i8, i8* %add.ptr69, align 1 *)
mov v113 r_5;
(*   %conv5.i294.4 = zext i8 %113 to i32 *)
cast v_conv5_i294_4@uint32 v113@uint8;
(*   %xor.i295.4 = xor i32 %conv.i289.4, %conv5.i294.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i295_4 v_conv_i289_4 v_conv5_i294_4;
(*   %conv6.i296.4 = trunc i32 %xor.i295.4 to i8 *)
split tmp_v_xor_i295_4 v_conv6_i296_4 v_xor_i295_4 8;
vpc v_conv6_i296_4@uint8 v_conv6_i296_4@uint32;
(*   %scevgep129.4 = getelementptr [50 x i8], [50 x i8]* %scevgep125126, i64 0, i64 4 *)
(*   store i8 %conv6.i296.4, i8* %scevgep129.4, align 1 *)
mov dd_24 v_conv6_i296_4;
(*   %scevgep62 = getelementptr [50 x i8], [50 x i8]* %dd, i64 0, i64 20 *)
(*   %scevgep6263 = bitcast i8* %scevgep62 to [50 x i8]* *)
(*   %scevgep69 = getelementptr [50 x i8], [50 x i8]* %cc, i64 0, i64 20 *)
(*   %scevgep6970 = bitcast i8* %scevgep69 to [50 x i8]* *)
(*   %scevgep68 = getelementptr [50 x i8], [50 x i8]* %scevgep6263, i64 0, i64 0 *)
(*   %scevgep73 = getelementptr [50 x i8], [50 x i8]* %scevgep6970, i64 0, i64 0 *)
(*   %114 = load i8, i8* %scevgep68, align 1 *)
mov v114 dd_20;
(*   %conv.i264 = zext i8 %114 to i32 *)
cast v_conv_i264@uint32 v114@uint8;
(*   %115 = load i8, i8* %scevgep73, align 1 *)
mov v115 cc_20;
(*   %conv5.i269 = zext i8 %115 to i32 *)
cast v_conv5_i269@uint32 v115@uint8;
(*   %xor.i270 = xor i32 %conv.i264, %conv5.i269 *)
(* You may need to modify here *)
xor uint32 v_xor_i270 v_conv_i264 v_conv5_i269;
(*   %conv6.i271 = trunc i32 %xor.i270 to i8 *)
split tmp_v_xor_i270 v_conv6_i271 v_xor_i270 8;
vpc v_conv6_i271@uint8 v_conv6_i271@uint32;
(*   store i8 %conv6.i271, i8* %c, align 1 *)
mov c_0 v_conv6_i271;
(*   %scevgep65 = getelementptr [50 x i8], [50 x i8]* %scevgep6263, i64 0, i64 1 *)
(*   %116 = bitcast i8* %scevgep65 to [50 x i8]* *)
(*   %scevgep72 = getelementptr [50 x i8], [50 x i8]* %scevgep6970, i64 0, i64 1 *)
(*   %117 = bitcast i8* %scevgep72 to [50 x i8]* *)
(*   %scevgep68.1 = getelementptr [50 x i8], [50 x i8]* %116, i64 0, i64 0 *)
(*   %scevgep73.1 = getelementptr [50 x i8], [50 x i8]* %117, i64 0, i64 0 *)
(*   %118 = load i8, i8* %scevgep68.1, align 1 *)
mov v118 dd_21;
(*   %conv.i264.1 = zext i8 %118 to i32 *)
cast v_conv_i264_1@uint32 v118@uint8;
(*   %119 = load i8, i8* %scevgep73.1, align 1 *)
mov v119 cc_21;
(*   %conv5.i269.1 = zext i8 %119 to i32 *)
cast v_conv5_i269_1@uint32 v119@uint8;
(*   %xor.i270.1 = xor i32 %conv.i264.1, %conv5.i269.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i270_1 v_conv_i264_1 v_conv5_i269_1;
(*   %conv6.i271.1 = trunc i32 %xor.i270.1 to i8 *)
split tmp_v_xor_i270_1 v_conv6_i271_1 v_xor_i270_1 8;
vpc v_conv6_i271_1@uint8 v_conv6_i271_1@uint32;
(*   %scevgep74.1 = getelementptr i8, i8* %c, i64 1 *)
(*   store i8 %conv6.i271.1, i8* %scevgep74.1, align 1 *)
mov c_1 v_conv6_i271_1;
(*   %scevgep65.1 = getelementptr [50 x i8], [50 x i8]* %116, i64 0, i64 1 *)
(*   %120 = bitcast i8* %scevgep65.1 to [50 x i8]* *)
(*   %scevgep72.1 = getelementptr [50 x i8], [50 x i8]* %117, i64 0, i64 1 *)
(*   %121 = bitcast i8* %scevgep72.1 to [50 x i8]* *)
(*   %scevgep68.2 = getelementptr [50 x i8], [50 x i8]* %120, i64 0, i64 0 *)
(*   %scevgep73.2 = getelementptr [50 x i8], [50 x i8]* %121, i64 0, i64 0 *)
(*   %122 = load i8, i8* %scevgep68.2, align 1 *)
mov v122 dd_22;
(*   %conv.i264.2 = zext i8 %122 to i32 *)
cast v_conv_i264_2@uint32 v122@uint8;
(*   %123 = load i8, i8* %scevgep73.2, align 1 *)
mov v123 cc_22;
(*   %conv5.i269.2 = zext i8 %123 to i32 *)
cast v_conv5_i269_2@uint32 v123@uint8;
(*   %xor.i270.2 = xor i32 %conv.i264.2, %conv5.i269.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i270_2 v_conv_i264_2 v_conv5_i269_2;
(*   %conv6.i271.2 = trunc i32 %xor.i270.2 to i8 *)
split tmp_v_xor_i270_2 v_conv6_i271_2 v_xor_i270_2 8;
vpc v_conv6_i271_2@uint8 v_conv6_i271_2@uint32;
(*   %scevgep74.2 = getelementptr i8, i8* %c, i64 2 *)
(*   store i8 %conv6.i271.2, i8* %scevgep74.2, align 1 *)
mov c_2 v_conv6_i271_2;
(*   %scevgep65.2 = getelementptr [50 x i8], [50 x i8]* %120, i64 0, i64 1 *)
(*   %124 = bitcast i8* %scevgep65.2 to [50 x i8]* *)
(*   %scevgep72.2 = getelementptr [50 x i8], [50 x i8]* %121, i64 0, i64 1 *)
(*   %125 = bitcast i8* %scevgep72.2 to [50 x i8]* *)
(*   %scevgep68.3 = getelementptr [50 x i8], [50 x i8]* %124, i64 0, i64 0 *)
(*   %scevgep73.3 = getelementptr [50 x i8], [50 x i8]* %125, i64 0, i64 0 *)
(*   %126 = load i8, i8* %scevgep68.3, align 1 *)
mov v126 dd_23;
(*   %conv.i264.3 = zext i8 %126 to i32 *)
cast v_conv_i264_3@uint32 v126@uint8;
(*   %127 = load i8, i8* %scevgep73.3, align 1 *)
mov v127 cc_23;
(*   %conv5.i269.3 = zext i8 %127 to i32 *)
cast v_conv5_i269_3@uint32 v127@uint8;
(*   %xor.i270.3 = xor i32 %conv.i264.3, %conv5.i269.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i270_3 v_conv_i264_3 v_conv5_i269_3;
(*   %conv6.i271.3 = trunc i32 %xor.i270.3 to i8 *)
split tmp_v_xor_i270_3 v_conv6_i271_3 v_xor_i270_3 8;
vpc v_conv6_i271_3@uint8 v_conv6_i271_3@uint32;
(*   %scevgep74.3 = getelementptr i8, i8* %c, i64 3 *)
(*   store i8 %conv6.i271.3, i8* %scevgep74.3, align 1 *)
mov c_3 v_conv6_i271_3;
(*   %scevgep65.3 = getelementptr [50 x i8], [50 x i8]* %124, i64 0, i64 1 *)
(*   %128 = bitcast i8* %scevgep65.3 to [50 x i8]* *)
(*   %scevgep72.3 = getelementptr [50 x i8], [50 x i8]* %125, i64 0, i64 1 *)
(*   %129 = bitcast i8* %scevgep72.3 to [50 x i8]* *)
(*   %scevgep68.4 = getelementptr [50 x i8], [50 x i8]* %128, i64 0, i64 0 *)
(*   %scevgep73.4 = getelementptr [50 x i8], [50 x i8]* %129, i64 0, i64 0 *)
(*   %130 = load i8, i8* %scevgep68.4, align 1 *)
mov v130 dd_24;
(*   %conv.i264.4 = zext i8 %130 to i32 *)
cast v_conv_i264_4@uint32 v130@uint8;
(*   %131 = load i8, i8* %scevgep73.4, align 1 *)
mov v131 cc_24;
(*   %conv5.i269.4 = zext i8 %131 to i32 *)
cast v_conv5_i269_4@uint32 v131@uint8;
(*   %xor.i270.4 = xor i32 %conv.i264.4, %conv5.i269.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i270_4 v_conv_i264_4 v_conv5_i269_4;
(*   %conv6.i271.4 = trunc i32 %xor.i270.4 to i8 *)
split tmp_v_xor_i270_4 v_conv6_i271_4 v_xor_i270_4 8;
vpc v_conv6_i271_4@uint8 v_conv6_i271_4@uint32;
(*   %scevgep74.4 = getelementptr i8, i8* %c, i64 4 *)
(*   store i8 %conv6.i271.4, i8* %scevgep74.4, align 1 *)
mov c_4 v_conv6_i271_4;
(*   %scevgep50 = getelementptr [50 x i8], [50 x i8]* %cc, i64 0, i64 25 *)
(*   %scevgep5051 = bitcast i8* %scevgep50 to [50 x i8]* *)
(*   %scevgep56 = getelementptr [50 x i8], [50 x i8]* %scevgep5051, i64 0, i64 0 *)
(*   %132 = load i8, i8* %scevgep56, align 1 *)
mov v132 cc_25;
(*   %conv.i242 = zext i8 %132 to i32 *)
cast v_conv_i242@uint32 v132@uint8;
(*   %133 = load i8, i8* %c, align 1 *)
mov v133 c_0;
(*   %conv5.i247 = zext i8 %133 to i32 *)
cast v_conv5_i247@uint32 v133@uint8;
(*   %xor.i248 = xor i32 %conv.i242, %conv5.i247 *)
(* You may need to modify here *)
xor uint32 v_xor_i248 v_conv_i242 v_conv5_i247;
(*   %conv6.i249 = trunc i32 %xor.i248 to i8 *)
split tmp_v_xor_i248 v_conv6_i249 v_xor_i248 8;
vpc v_conv6_i249@uint8 v_conv6_i249@uint32;
(*   store i8 %conv6.i249, i8* %c, align 1 *)
mov c_0 v_conv6_i249;
(*   %scevgep53 = getelementptr [50 x i8], [50 x i8]* %scevgep5051, i64 0, i64 1 *)
(*   %134 = bitcast i8* %scevgep53 to [50 x i8]* *)
(*   %scevgep58 = getelementptr i8, i8* %c, i64 1 *)
(*   %scevgep56.1 = getelementptr [50 x i8], [50 x i8]* %134, i64 0, i64 0 *)
(*   %135 = load i8, i8* %scevgep56.1, align 1 *)
mov v135 cc_26;
(*   %conv.i242.1 = zext i8 %135 to i32 *)
cast v_conv_i242_1@uint32 v135@uint8;
(*   %136 = load i8, i8* %scevgep58, align 1 *)
mov v136 c_1;
(*   %conv5.i247.1 = zext i8 %136 to i32 *)
cast v_conv5_i247_1@uint32 v136@uint8;
(*   %xor.i248.1 = xor i32 %conv.i242.1, %conv5.i247.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i248_1 v_conv_i242_1 v_conv5_i247_1;
(*   %conv6.i249.1 = trunc i32 %xor.i248.1 to i8 *)
split tmp_v_xor_i248_1 v_conv6_i249_1 v_xor_i248_1 8;
vpc v_conv6_i249_1@uint8 v_conv6_i249_1@uint32;
(*   %scevgep60.1 = getelementptr i8, i8* %c, i64 1 *)
(*   store i8 %conv6.i249.1, i8* %scevgep60.1, align 1 *)
mov c_1 v_conv6_i249_1;
(*   %scevgep53.1 = getelementptr [50 x i8], [50 x i8]* %134, i64 0, i64 1 *)
(*   %137 = bitcast i8* %scevgep53.1 to [50 x i8]* *)
(*   %scevgep58.1 = getelementptr i8, i8* %scevgep58, i64 1 *)
(*   %scevgep56.2 = getelementptr [50 x i8], [50 x i8]* %137, i64 0, i64 0 *)
(*   %138 = load i8, i8* %scevgep56.2, align 1 *)
mov v138 cc_27;
(*   %conv.i242.2 = zext i8 %138 to i32 *)
cast v_conv_i242_2@uint32 v138@uint8;
(*   %139 = load i8, i8* %scevgep58.1, align 1 *)
mov v139 c_2;
(*   %conv5.i247.2 = zext i8 %139 to i32 *)
cast v_conv5_i247_2@uint32 v139@uint8;
(*   %xor.i248.2 = xor i32 %conv.i242.2, %conv5.i247.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i248_2 v_conv_i242_2 v_conv5_i247_2;
(*   %conv6.i249.2 = trunc i32 %xor.i248.2 to i8 *)
split tmp_v_xor_i248_2 v_conv6_i249_2 v_xor_i248_2 8;
vpc v_conv6_i249_2@uint8 v_conv6_i249_2@uint32;
(*   %scevgep60.2 = getelementptr i8, i8* %c, i64 2 *)
(*   store i8 %conv6.i249.2, i8* %scevgep60.2, align 1 *)
mov c_2 v_conv6_i249_2;
(*   %scevgep53.2 = getelementptr [50 x i8], [50 x i8]* %137, i64 0, i64 1 *)
(*   %140 = bitcast i8* %scevgep53.2 to [50 x i8]* *)
(*   %scevgep58.2 = getelementptr i8, i8* %scevgep58.1, i64 1 *)
(*   %scevgep56.3 = getelementptr [50 x i8], [50 x i8]* %140, i64 0, i64 0 *)
(*   %141 = load i8, i8* %scevgep56.3, align 1 *)
mov v141 cc_28;
(*   %conv.i242.3 = zext i8 %141 to i32 *)
cast v_conv_i242_3@uint32 v141@uint8;
(*   %142 = load i8, i8* %scevgep58.2, align 1 *)
mov v142 c_3;
(*   %conv5.i247.3 = zext i8 %142 to i32 *)
cast v_conv5_i247_3@uint32 v142@uint8;
(*   %xor.i248.3 = xor i32 %conv.i242.3, %conv5.i247.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i248_3 v_conv_i242_3 v_conv5_i247_3;
(*   %conv6.i249.3 = trunc i32 %xor.i248.3 to i8 *)
split tmp_v_xor_i248_3 v_conv6_i249_3 v_xor_i248_3 8;
vpc v_conv6_i249_3@uint8 v_conv6_i249_3@uint32;
(*   %scevgep60.3 = getelementptr i8, i8* %c, i64 3 *)
(*   store i8 %conv6.i249.3, i8* %scevgep60.3, align 1 *)
mov c_3 v_conv6_i249_3;
(*   %scevgep53.3 = getelementptr [50 x i8], [50 x i8]* %140, i64 0, i64 1 *)
(*   %143 = bitcast i8* %scevgep53.3 to [50 x i8]* *)
(*   %scevgep58.3 = getelementptr i8, i8* %scevgep58.2, i64 1 *)
(*   %scevgep56.4 = getelementptr [50 x i8], [50 x i8]* %143, i64 0, i64 0 *)
(*   %144 = load i8, i8* %scevgep56.4, align 1 *)
mov v144 cc_29;
(*   %conv.i242.4 = zext i8 %144 to i32 *)
cast v_conv_i242_4@uint32 v144@uint8;
(*   %145 = load i8, i8* %scevgep58.3, align 1 *)
mov v145 c_4;
(*   %conv5.i247.4 = zext i8 %145 to i32 *)
cast v_conv5_i247_4@uint32 v145@uint8;
(*   %xor.i248.4 = xor i32 %conv.i242.4, %conv5.i247.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i248_4 v_conv_i242_4 v_conv5_i247_4;
(*   %conv6.i249.4 = trunc i32 %xor.i248.4 to i8 *)
split tmp_v_xor_i248_4 v_conv6_i249_4 v_xor_i248_4 8;
vpc v_conv6_i249_4@uint8 v_conv6_i249_4@uint32;
(*   %scevgep60.4 = getelementptr i8, i8* %c, i64 4 *)
(*   store i8 %conv6.i249.4, i8* %scevgep60.4, align 1 *)
mov c_4 v_conv6_i249_4;
(*   %146 = load i8, i8* %a, align 1 *)
mov v146 a_0;
(*   %scevgep48.1 = getelementptr i8, i8* %a, i64 1 *)
(*   %147 = load i8, i8* %scevgep48.1, align 1 *)
mov v147 a_1;
(*   %conv.i.i180.1 = zext i8 %147 to i32 *)
cast v_conv_i_i180_1@uint32 v147@uint8;
(*   %conv1.i.i181.1 = zext i8 %146 to i32 *)
cast v_conv1_i_i181_1@uint32 v146@uint8;
(*   %xor.i.i182.1 = xor i32 %conv1.i.i181.1, %conv.i.i180.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i182_1 v_conv1_i_i181_1 v_conv_i_i180_1;
(*   %conv2.i.i183.1 = trunc i32 %xor.i.i182.1 to i8 *)
split tmp_v_xor_i_i182_1 v_conv2_i_i183_1 v_xor_i_i182_1 8;
vpc v_conv2_i_i183_1@uint8 v_conv2_i_i183_1@uint32;
(*   %scevgep48.2 = getelementptr i8, i8* %a, i64 2 *)
(*   %148 = load i8, i8* %scevgep48.2, align 1 *)
mov v148 a_2;
(*   %conv.i.i180.2 = zext i8 %148 to i32 *)
cast v_conv_i_i180_2@uint32 v148@uint8;
(*   %conv1.i.i181.2 = zext i8 %conv2.i.i183.1 to i32 *)
cast v_conv1_i_i181_2@uint32 v_conv2_i_i183_1@uint8;
(*   %xor.i.i182.2 = xor i32 %conv1.i.i181.2, %conv.i.i180.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i182_2 v_conv1_i_i181_2 v_conv_i_i180_2;
(*   %conv2.i.i183.2 = trunc i32 %xor.i.i182.2 to i8 *)
split tmp_v_xor_i_i182_2 v_conv2_i_i183_2 v_xor_i_i182_2 8;
vpc v_conv2_i_i183_2@uint8 v_conv2_i_i183_2@uint32;
(*   %scevgep48.3 = getelementptr i8, i8* %a, i64 3 *)
(*   %149 = load i8, i8* %scevgep48.3, align 1 *)
mov v149 a_3;
(*   %conv.i.i180.3 = zext i8 %149 to i32 *)
cast v_conv_i_i180_3@uint32 v149@uint8;
(*   %conv1.i.i181.3 = zext i8 %conv2.i.i183.2 to i32 *)
cast v_conv1_i_i181_3@uint32 v_conv2_i_i183_2@uint8;
(*   %xor.i.i182.3 = xor i32 %conv1.i.i181.3, %conv.i.i180.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i182_3 v_conv1_i_i181_3 v_conv_i_i180_3;
(*   %conv2.i.i183.3 = trunc i32 %xor.i.i182.3 to i8 *)
split tmp_v_xor_i_i182_3 v_conv2_i_i183_3 v_xor_i_i182_3 8;
vpc v_conv2_i_i183_3@uint8 v_conv2_i_i183_3@uint32;
(*   %scevgep48.4 = getelementptr i8, i8* %a, i64 4 *)
(*   %150 = load i8, i8* %scevgep48.4, align 1 *)
mov v150 a_4;
(*   %conv.i.i180.4 = zext i8 %150 to i32 *)
cast v_conv_i_i180_4@uint32 v150@uint8;
(*   %conv1.i.i181.4 = zext i8 %conv2.i.i183.3 to i32 *)
cast v_conv1_i_i181_4@uint32 v_conv2_i_i183_3@uint8;
(*   %xor.i.i182.4 = xor i32 %conv1.i.i181.4, %conv.i.i180.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i182_4 v_conv1_i_i181_4 v_conv_i_i180_4;
(*   %conv2.i.i183.4 = trunc i32 %xor.i.i182.4 to i8 *)
split tmp_v_xor_i_i182_4 v_conv2_i_i183_4 v_xor_i_i182_4 8;
vpc v_conv2_i_i183_4@uint8 v_conv2_i_i183_4@uint32;
(*   %151 = load i8, i8* %b, align 1 *)
mov v151 b_0;
(*   %scevgep44.1 = getelementptr i8, i8* %b, i64 1 *)
(*   %152 = load i8, i8* %scevgep44.1, align 1 *)
mov v152 b_1;
(*   %conv.i.i120.1 = zext i8 %152 to i32 *)
cast v_conv_i_i120_1@uint32 v152@uint8;
(*   %conv1.i.i121.1 = zext i8 %151 to i32 *)
cast v_conv1_i_i121_1@uint32 v151@uint8;
(*   %xor.i.i122.1 = xor i32 %conv1.i.i121.1, %conv.i.i120.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i122_1 v_conv1_i_i121_1 v_conv_i_i120_1;
(*   %conv2.i.i123.1 = trunc i32 %xor.i.i122.1 to i8 *)
split tmp_v_xor_i_i122_1 v_conv2_i_i123_1 v_xor_i_i122_1 8;
vpc v_conv2_i_i123_1@uint8 v_conv2_i_i123_1@uint32;
(*   %scevgep44.2 = getelementptr i8, i8* %b, i64 2 *)
(*   %153 = load i8, i8* %scevgep44.2, align 1 *)
mov v153 b_2;
(*   %conv.i.i120.2 = zext i8 %153 to i32 *)
cast v_conv_i_i120_2@uint32 v153@uint8;
(*   %conv1.i.i121.2 = zext i8 %conv2.i.i123.1 to i32 *)
cast v_conv1_i_i121_2@uint32 v_conv2_i_i123_1@uint8;
(*   %xor.i.i122.2 = xor i32 %conv1.i.i121.2, %conv.i.i120.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i122_2 v_conv1_i_i121_2 v_conv_i_i120_2;
(*   %conv2.i.i123.2 = trunc i32 %xor.i.i122.2 to i8 *)
split tmp_v_xor_i_i122_2 v_conv2_i_i123_2 v_xor_i_i122_2 8;
vpc v_conv2_i_i123_2@uint8 v_conv2_i_i123_2@uint32;
(*   %scevgep44.3 = getelementptr i8, i8* %b, i64 3 *)
(*   %154 = load i8, i8* %scevgep44.3, align 1 *)
mov v154 b_3;
(*   %conv.i.i120.3 = zext i8 %154 to i32 *)
cast v_conv_i_i120_3@uint32 v154@uint8;
(*   %conv1.i.i121.3 = zext i8 %conv2.i.i123.2 to i32 *)
cast v_conv1_i_i121_3@uint32 v_conv2_i_i123_2@uint8;
(*   %xor.i.i122.3 = xor i32 %conv1.i.i121.3, %conv.i.i120.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i122_3 v_conv1_i_i121_3 v_conv_i_i120_3;
(*   %conv2.i.i123.3 = trunc i32 %xor.i.i122.3 to i8 *)
split tmp_v_xor_i_i122_3 v_conv2_i_i123_3 v_xor_i_i122_3 8;
vpc v_conv2_i_i123_3@uint8 v_conv2_i_i123_3@uint32;
(*   %scevgep44.4 = getelementptr i8, i8* %b, i64 4 *)
(*   %155 = load i8, i8* %scevgep44.4, align 1 *)
mov v155 b_4;
(*   %conv.i.i120.4 = zext i8 %155 to i32 *)
cast v_conv_i_i120_4@uint32 v155@uint8;
(*   %conv1.i.i121.4 = zext i8 %conv2.i.i123.3 to i32 *)
cast v_conv1_i_i121_4@uint32 v_conv2_i_i123_3@uint8;
(*   %xor.i.i122.4 = xor i32 %conv1.i.i121.4, %conv.i.i120.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i122_4 v_conv1_i_i121_4 v_conv_i_i120_4;
(*   %conv2.i.i123.4 = trunc i32 %xor.i.i122.4 to i8 *)
split tmp_v_xor_i_i122_4 v_conv2_i_i123_4 v_xor_i_i122_4 8;
vpc v_conv2_i_i123_4@uint8 v_conv2_i_i123_4@uint32;
(*   %conv.i = zext i8 %conv2.i.i123.4 to i32 *)
cast v_conv_i@uint32 v_conv2_i_i123_4@uint8;
(*   %and.i = and i32 %conv.i, 1 *)
(* You may need to modify here *)
and uint32 v_and_i v_conv_i (0x1)@uint32;
(*   %conv1.i = zext i8 %conv2.i.i183.4 to i32 *)
cast v_conv1_i@uint32 v_conv2_i_i183_4@uint8;
(*   %mul.i = mul nsw i32 %and.i, %conv1.i *)
mul v_mul_i v_and_i v_conv1_i;
(*   %conv3.i = trunc i32 %mul.i to i8 *)
split tmp_v_mul_i v_conv3_i v_mul_i 8;
vpc v_conv3_i@uint8 v_conv3_i@uint32;
(*   %conv4.i = zext i8 %conv2.i.i123.4 to i32 *)
cast v_conv4_i@uint32 v_conv2_i_i123_4@uint8;
(*   %shr.i = ashr i32 %conv4.i, 1 *)
(* You may need to modify here *)
split v_shr_i tmp_to_be_used v_conv4_i 1;
(*   %conv5.i = trunc i32 %shr.i to i8 *)
split tmp_v_shr_i v_conv5_i v_shr_i 8;
vpc v_conv5_i@uint8 v_conv5_i@uint32;
(*   %conv6.i = zext i8 %conv2.i.i183.4 to i32 *)
cast v_conv6_i@uint32 v_conv2_i_i183_4@uint8;
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
(*   %156 = load i8, i8* %c, align 1 *)
mov v156 c_0;
(*   %scevgep.1 = getelementptr i8, i8* %c, i64 1 *)
(*   %157 = load i8, i8* %scevgep.1, align 1 *)
mov v157 c_1;
(*   %conv.i.i94.1 = zext i8 %157 to i32 *)
cast v_conv_i_i94_1@uint32 v157@uint8;
(*   %conv1.i.i95.1 = zext i8 %156 to i32 *)
cast v_conv1_i_i95_1@uint32 v156@uint8;
(*   %xor.i.i96.1 = xor i32 %conv1.i.i95.1, %conv.i.i94.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i96_1 v_conv1_i_i95_1 v_conv_i_i94_1;
(*   %conv2.i.i97.1 = trunc i32 %xor.i.i96.1 to i8 *)
split tmp_v_xor_i_i96_1 v_conv2_i_i97_1 v_xor_i_i96_1 8;
vpc v_conv2_i_i97_1@uint8 v_conv2_i_i97_1@uint32;
(*   %scevgep.2 = getelementptr i8, i8* %c, i64 2 *)
(*   %158 = load i8, i8* %scevgep.2, align 1 *)
mov v158 c_2;
(*   %conv.i.i94.2 = zext i8 %158 to i32 *)
cast v_conv_i_i94_2@uint32 v158@uint8;
(*   %conv1.i.i95.2 = zext i8 %conv2.i.i97.1 to i32 *)
cast v_conv1_i_i95_2@uint32 v_conv2_i_i97_1@uint8;
(*   %xor.i.i96.2 = xor i32 %conv1.i.i95.2, %conv.i.i94.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i96_2 v_conv1_i_i95_2 v_conv_i_i94_2;
(*   %conv2.i.i97.2 = trunc i32 %xor.i.i96.2 to i8 *)
split tmp_v_xor_i_i96_2 v_conv2_i_i97_2 v_xor_i_i96_2 8;
vpc v_conv2_i_i97_2@uint8 v_conv2_i_i97_2@uint32;
(*   %scevgep.3 = getelementptr i8, i8* %c, i64 3 *)
(*   %159 = load i8, i8* %scevgep.3, align 1 *)
mov v159 c_3;
(*   %conv.i.i94.3 = zext i8 %159 to i32 *)
cast v_conv_i_i94_3@uint32 v159@uint8;
(*   %conv1.i.i95.3 = zext i8 %conv2.i.i97.2 to i32 *)
cast v_conv1_i_i95_3@uint32 v_conv2_i_i97_2@uint8;
(*   %xor.i.i96.3 = xor i32 %conv1.i.i95.3, %conv.i.i94.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i96_3 v_conv1_i_i95_3 v_conv_i_i94_3;
(*   %conv2.i.i97.3 = trunc i32 %xor.i.i96.3 to i8 *)
split tmp_v_xor_i_i96_3 v_conv2_i_i97_3 v_xor_i_i96_3 8;
vpc v_conv2_i_i97_3@uint8 v_conv2_i_i97_3@uint32;
(*   %scevgep.4 = getelementptr i8, i8* %c, i64 4 *)
(*   %160 = load i8, i8* %scevgep.4, align 1 *)
mov v160 c_4;
(*   %conv.i.i94.4 = zext i8 %160 to i32 *)
cast v_conv_i_i94_4@uint32 v160@uint8;
(*   %conv1.i.i95.4 = zext i8 %conv2.i.i97.3 to i32 *)
cast v_conv1_i_i95_4@uint32 v_conv2_i_i97_3@uint8;
(*   %xor.i.i96.4 = xor i32 %conv1.i.i95.4, %conv.i.i94.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i96_4 v_conv1_i_i95_4 v_conv_i_i94_4;
(*   %conv2.i.i97.4 = trunc i32 %xor.i.i96.4 to i8 *)
split tmp_v_xor_i_i96_4 v_conv2_i_i97_4 v_xor_i_i96_4 8;
vpc v_conv2_i_i97_4@uint8 v_conv2_i_i97_4@uint32;
(*   store i8 %conv2.i.i97.4, i8* %C, align 1 *)
mov C_0 v_conv2_i_i97_4;
(*   ret void *)


assert true && AB_0=C_0;

mov _ AB_0@uint8;
mov _ C_0@uint8;


{
  true
  &&
  true
}

