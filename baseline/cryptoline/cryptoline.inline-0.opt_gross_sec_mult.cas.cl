proc main (uint8 a_0, uint8 b_0) =
{
  true
  &&
  true
}



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
(*   %2 = load i8, i8* %a, align 1 *)
mov v2 a_0;
(*   %3 = load i8, i8* %b, align 1 *)
mov v3 b_0;
(*   %conv.i = zext i8 %3 to i32 *)
cast v_conv_i@uint32 v3@uint8;
(*   %and.i = and i32 %conv.i, 1 *)
(* You may need to modify here *)
and uint32 v_and_i v_conv_i (0x1)@uint32;
(*   %conv1.i = zext i8 %2 to i32 *)
cast v_conv1_i@uint32 v2@uint8;
(*   %mul.i = mul nsw i32 %and.i, %conv1.i *)
mul v_mul_i v_and_i v_conv1_i;
(*   %conv3.i = trunc i32 %mul.i to i8 *)
split tmp_v_mul_i v_conv3_i v_mul_i 8;
vpc v_conv3_i@uint8 v_conv3_i@uint32;
(*   %conv4.i = zext i8 %3 to i32 *)
cast v_conv4_i@uint32 v3@uint8;
(*   %shr.i = ashr i32 %conv4.i, 1 *)
(* You may need to modify here *)
split v_shr_i tmp_to_be_used v_conv4_i 1;
(*   %conv5.i = trunc i32 %shr.i to i8 *)
split tmp_v_shr_i v_conv5_i v_shr_i 8;
vpc v_conv5_i@uint8 v_conv5_i@uint32;
(*   %conv6.i = zext i8 %2 to i32 *)
cast v_conv6_i@uint32 v2@uint8;
(*   %shl.i = shl i32 %conv6.i, 1 *)
shls discard_7 v_shl_i v_conv6_i 1;
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
shls discard_8 v_shl_i_1 v_conv6_i_1 1;
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
shls discard_9 v_shl_i_2 v_conv6_i_2 1;
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
shls discard_10 v_shl_i_3 v_conv6_i_3 1;
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
shls discard_11 v_shl_i_4 v_conv6_i_4 1;
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
shls discard_12 v_shl_i_5 v_conv6_i_5 1;
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
shls discard_13 v_shl_i_6 v_conv6_i_6 1;
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
(*   %4 = load i8, i8* %c, align 1 *)
mov v4 c_0;
(*   store i8 %4, i8* %C, align 1 *)
mov C_0 v4;
(*   ret void *)


assert AB_0=C_0 && true;

mov _ AB_0@uint8;
mov _ C_0@uint8;


{
  true
  &&
  true
}

