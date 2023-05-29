proc main (uint8 a_0, uint8 a_1, uint8 a_2, uint8 b_0, uint8 b_1, uint8 b_2, uint8 r_1, uint8 r_2, uint8 r_5) =
{
  true
  &&
  true
}



(*   %arrayidx = getelementptr inbounds i8, i8* %r, i64 1 *)
(*   %0 = load i8, i8* %arrayidx, align 1 *)
mov v0 r_1;
(*   %conv = zext i8 %0 to i32 *)
cast v_conv@uint32 v0@uint8;
(*   %1 = load i8, i8* %a, align 1 *)
mov v1 a_0;
(*   %arrayidx8 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %2 = load i8, i8* %arrayidx8, align 1 *)
mov v2 b_1;
(*   %conv.i = zext i8 %2 to i32 *)
cast v_conv_i@uint32 v2@uint8;
(*   %and.i = and i32 %conv.i, 1 *)
(* You may need to modify here *)
and uint32 v_and_i v_conv_i (0x1)@uint32;
(*   %conv1.i = zext i8 %1 to i32 *)
cast v_conv1_i@uint32 v1@uint8;
(*   %mul.i = mul nsw i32 %and.i, %conv1.i *)
mul v_mul_i v_and_i v_conv1_i;
(*   %conv3.i = trunc i32 %mul.i to i8 *)
split tmp_v_mul_i v_conv3_i v_mul_i 8;
vpc v_conv3_i@uint8 v_conv3_i@uint32;
(*   %conv4.i = zext i8 %2 to i32 *)
cast v_conv4_i@uint32 v2@uint8;
(*   %shr.i = ashr i32 %conv4.i, 1 *)
(* You may need to modify here *)
split v_shr_i tmp_to_be_used v_conv4_i 1;
(*   %conv5.i = trunc i32 %shr.i to i8 *)
split tmp_v_shr_i v_conv5_i v_shr_i 8;
vpc v_conv5_i@uint8 v_conv5_i@uint32;
(*   %conv6.i = zext i8 %1 to i32 *)
cast v_conv6_i@uint32 v1@uint8;
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
(*   %conv9 = zext i8 %conv3.i.7 to i32 *)
cast v_conv9@uint32 v_conv3_i_7@uint8;
(*   %xor = xor i32 %conv, %conv9 *)
(* You may need to modify here *)
xor uint32 v_xor v_conv v_conv9;
(*   %arrayidx11 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %3 = load i8, i8* %arrayidx11, align 1 *)
mov v3 a_1;
(*   %4 = load i8, i8* %b, align 1 *)
mov v4 b_0;
(*   %conv.i71 = zext i8 %4 to i32 *)
cast v_conv_i71@uint32 v4@uint8;
(*   %and.i72 = and i32 %conv.i71, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72 v_conv_i71 (0x1)@uint32;
(*   %conv1.i73 = zext i8 %3 to i32 *)
cast v_conv1_i73@uint32 v3@uint8;
(*   %mul.i74 = mul nsw i32 %and.i72, %conv1.i73 *)
mul v_mul_i74 v_and_i72 v_conv1_i73;
(*   %conv3.i77 = trunc i32 %mul.i74 to i8 *)
split tmp_v_mul_i74 v_conv3_i77 v_mul_i74 8;
vpc v_conv3_i77@uint8 v_conv3_i77@uint32;
(*   %conv4.i78 = zext i8 %4 to i32 *)
cast v_conv4_i78@uint32 v4@uint8;
(*   %shr.i79 = ashr i32 %conv4.i78, 1 *)
(* You may need to modify here *)
split v_shr_i79 tmp_to_be_used v_conv4_i78 1;
(*   %conv5.i80 = trunc i32 %shr.i79 to i8 *)
split tmp_v_shr_i79 v_conv5_i80 v_shr_i79 8;
vpc v_conv5_i80@uint8 v_conv5_i80@uint32;
(*   %conv6.i81 = zext i8 %3 to i32 *)
cast v_conv6_i81@uint32 v3@uint8;
(*   %shl.i82 = shl i32 %conv6.i81, 1 *)
shls discard_7 v_shl_i82 v_conv6_i81 1;
(*   %conv7.i83 = trunc i32 %shl.i82 to i8 *)
split tmp_v_shl_i82 v_conv7_i83 v_shl_i82 8;
vpc v_conv7_i83@uint8 v_conv7_i83@uint32;
(*   %conv.i71.1 = zext i8 %conv5.i80 to i32 *)
cast v_conv_i71_1@uint32 v_conv5_i80@uint8;
(*   %and.i72.1 = and i32 %conv.i71.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_1 v_conv_i71_1 (0x1)@uint32;
(*   %conv1.i73.1 = zext i8 %conv7.i83 to i32 *)
cast v_conv1_i73_1@uint32 v_conv7_i83@uint8;
(*   %mul.i74.1 = mul nsw i32 %and.i72.1, %conv1.i73.1 *)
mul v_mul_i74_1 v_and_i72_1 v_conv1_i73_1;
(*   %conv2.i75.1 = zext i8 %conv3.i77 to i32 *)
cast v_conv2_i75_1@uint32 v_conv3_i77@uint8;
(*   %xor.i76.1 = xor i32 %conv2.i75.1, %mul.i74.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_1 v_conv2_i75_1 v_mul_i74_1;
(*   %conv3.i77.1 = trunc i32 %xor.i76.1 to i8 *)
split tmp_v_xor_i76_1 v_conv3_i77_1 v_xor_i76_1 8;
vpc v_conv3_i77_1@uint8 v_conv3_i77_1@uint32;
(*   %conv4.i78.1 = zext i8 %conv5.i80 to i32 *)
cast v_conv4_i78_1@uint32 v_conv5_i80@uint8;
(*   %shr.i79.1 = ashr i32 %conv4.i78.1, 1 *)
(* You may need to modify here *)
split v_shr_i79_1 tmp_to_be_used v_conv4_i78_1 1;
(*   %conv5.i80.1 = trunc i32 %shr.i79.1 to i8 *)
split tmp_v_shr_i79_1 v_conv5_i80_1 v_shr_i79_1 8;
vpc v_conv5_i80_1@uint8 v_conv5_i80_1@uint32;
(*   %conv6.i81.1 = zext i8 %conv7.i83 to i32 *)
cast v_conv6_i81_1@uint32 v_conv7_i83@uint8;
(*   %shl.i82.1 = shl i32 %conv6.i81.1, 1 *)
shls discard_8 v_shl_i82_1 v_conv6_i81_1 1;
(*   %conv7.i83.1 = trunc i32 %shl.i82.1 to i8 *)
split tmp_v_shl_i82_1 v_conv7_i83_1 v_shl_i82_1 8;
vpc v_conv7_i83_1@uint8 v_conv7_i83_1@uint32;
(*   %conv.i71.2 = zext i8 %conv5.i80.1 to i32 *)
cast v_conv_i71_2@uint32 v_conv5_i80_1@uint8;
(*   %and.i72.2 = and i32 %conv.i71.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_2 v_conv_i71_2 (0x1)@uint32;
(*   %conv1.i73.2 = zext i8 %conv7.i83.1 to i32 *)
cast v_conv1_i73_2@uint32 v_conv7_i83_1@uint8;
(*   %mul.i74.2 = mul nsw i32 %and.i72.2, %conv1.i73.2 *)
mul v_mul_i74_2 v_and_i72_2 v_conv1_i73_2;
(*   %conv2.i75.2 = zext i8 %conv3.i77.1 to i32 *)
cast v_conv2_i75_2@uint32 v_conv3_i77_1@uint8;
(*   %xor.i76.2 = xor i32 %conv2.i75.2, %mul.i74.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_2 v_conv2_i75_2 v_mul_i74_2;
(*   %conv3.i77.2 = trunc i32 %xor.i76.2 to i8 *)
split tmp_v_xor_i76_2 v_conv3_i77_2 v_xor_i76_2 8;
vpc v_conv3_i77_2@uint8 v_conv3_i77_2@uint32;
(*   %conv4.i78.2 = zext i8 %conv5.i80.1 to i32 *)
cast v_conv4_i78_2@uint32 v_conv5_i80_1@uint8;
(*   %shr.i79.2 = ashr i32 %conv4.i78.2, 1 *)
(* You may need to modify here *)
split v_shr_i79_2 tmp_to_be_used v_conv4_i78_2 1;
(*   %conv5.i80.2 = trunc i32 %shr.i79.2 to i8 *)
split tmp_v_shr_i79_2 v_conv5_i80_2 v_shr_i79_2 8;
vpc v_conv5_i80_2@uint8 v_conv5_i80_2@uint32;
(*   %conv6.i81.2 = zext i8 %conv7.i83.1 to i32 *)
cast v_conv6_i81_2@uint32 v_conv7_i83_1@uint8;
(*   %shl.i82.2 = shl i32 %conv6.i81.2, 1 *)
shls discard_9 v_shl_i82_2 v_conv6_i81_2 1;
(*   %conv7.i83.2 = trunc i32 %shl.i82.2 to i8 *)
split tmp_v_shl_i82_2 v_conv7_i83_2 v_shl_i82_2 8;
vpc v_conv7_i83_2@uint8 v_conv7_i83_2@uint32;
(*   %conv.i71.3 = zext i8 %conv5.i80.2 to i32 *)
cast v_conv_i71_3@uint32 v_conv5_i80_2@uint8;
(*   %and.i72.3 = and i32 %conv.i71.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_3 v_conv_i71_3 (0x1)@uint32;
(*   %conv1.i73.3 = zext i8 %conv7.i83.2 to i32 *)
cast v_conv1_i73_3@uint32 v_conv7_i83_2@uint8;
(*   %mul.i74.3 = mul nsw i32 %and.i72.3, %conv1.i73.3 *)
mul v_mul_i74_3 v_and_i72_3 v_conv1_i73_3;
(*   %conv2.i75.3 = zext i8 %conv3.i77.2 to i32 *)
cast v_conv2_i75_3@uint32 v_conv3_i77_2@uint8;
(*   %xor.i76.3 = xor i32 %conv2.i75.3, %mul.i74.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_3 v_conv2_i75_3 v_mul_i74_3;
(*   %conv3.i77.3 = trunc i32 %xor.i76.3 to i8 *)
split tmp_v_xor_i76_3 v_conv3_i77_3 v_xor_i76_3 8;
vpc v_conv3_i77_3@uint8 v_conv3_i77_3@uint32;
(*   %conv4.i78.3 = zext i8 %conv5.i80.2 to i32 *)
cast v_conv4_i78_3@uint32 v_conv5_i80_2@uint8;
(*   %shr.i79.3 = ashr i32 %conv4.i78.3, 1 *)
(* You may need to modify here *)
split v_shr_i79_3 tmp_to_be_used v_conv4_i78_3 1;
(*   %conv5.i80.3 = trunc i32 %shr.i79.3 to i8 *)
split tmp_v_shr_i79_3 v_conv5_i80_3 v_shr_i79_3 8;
vpc v_conv5_i80_3@uint8 v_conv5_i80_3@uint32;
(*   %conv6.i81.3 = zext i8 %conv7.i83.2 to i32 *)
cast v_conv6_i81_3@uint32 v_conv7_i83_2@uint8;
(*   %shl.i82.3 = shl i32 %conv6.i81.3, 1 *)
shls discard_10 v_shl_i82_3 v_conv6_i81_3 1;
(*   %conv7.i83.3 = trunc i32 %shl.i82.3 to i8 *)
split tmp_v_shl_i82_3 v_conv7_i83_3 v_shl_i82_3 8;
vpc v_conv7_i83_3@uint8 v_conv7_i83_3@uint32;
(*   %conv.i71.4 = zext i8 %conv5.i80.3 to i32 *)
cast v_conv_i71_4@uint32 v_conv5_i80_3@uint8;
(*   %and.i72.4 = and i32 %conv.i71.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_4 v_conv_i71_4 (0x1)@uint32;
(*   %conv1.i73.4 = zext i8 %conv7.i83.3 to i32 *)
cast v_conv1_i73_4@uint32 v_conv7_i83_3@uint8;
(*   %mul.i74.4 = mul nsw i32 %and.i72.4, %conv1.i73.4 *)
mul v_mul_i74_4 v_and_i72_4 v_conv1_i73_4;
(*   %conv2.i75.4 = zext i8 %conv3.i77.3 to i32 *)
cast v_conv2_i75_4@uint32 v_conv3_i77_3@uint8;
(*   %xor.i76.4 = xor i32 %conv2.i75.4, %mul.i74.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_4 v_conv2_i75_4 v_mul_i74_4;
(*   %conv3.i77.4 = trunc i32 %xor.i76.4 to i8 *)
split tmp_v_xor_i76_4 v_conv3_i77_4 v_xor_i76_4 8;
vpc v_conv3_i77_4@uint8 v_conv3_i77_4@uint32;
(*   %conv4.i78.4 = zext i8 %conv5.i80.3 to i32 *)
cast v_conv4_i78_4@uint32 v_conv5_i80_3@uint8;
(*   %shr.i79.4 = ashr i32 %conv4.i78.4, 1 *)
(* You may need to modify here *)
split v_shr_i79_4 tmp_to_be_used v_conv4_i78_4 1;
(*   %conv5.i80.4 = trunc i32 %shr.i79.4 to i8 *)
split tmp_v_shr_i79_4 v_conv5_i80_4 v_shr_i79_4 8;
vpc v_conv5_i80_4@uint8 v_conv5_i80_4@uint32;
(*   %conv6.i81.4 = zext i8 %conv7.i83.3 to i32 *)
cast v_conv6_i81_4@uint32 v_conv7_i83_3@uint8;
(*   %shl.i82.4 = shl i32 %conv6.i81.4, 1 *)
shls discard_11 v_shl_i82_4 v_conv6_i81_4 1;
(*   %conv7.i83.4 = trunc i32 %shl.i82.4 to i8 *)
split tmp_v_shl_i82_4 v_conv7_i83_4 v_shl_i82_4 8;
vpc v_conv7_i83_4@uint8 v_conv7_i83_4@uint32;
(*   %conv.i71.5 = zext i8 %conv5.i80.4 to i32 *)
cast v_conv_i71_5@uint32 v_conv5_i80_4@uint8;
(*   %and.i72.5 = and i32 %conv.i71.5, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_5 v_conv_i71_5 (0x1)@uint32;
(*   %conv1.i73.5 = zext i8 %conv7.i83.4 to i32 *)
cast v_conv1_i73_5@uint32 v_conv7_i83_4@uint8;
(*   %mul.i74.5 = mul nsw i32 %and.i72.5, %conv1.i73.5 *)
mul v_mul_i74_5 v_and_i72_5 v_conv1_i73_5;
(*   %conv2.i75.5 = zext i8 %conv3.i77.4 to i32 *)
cast v_conv2_i75_5@uint32 v_conv3_i77_4@uint8;
(*   %xor.i76.5 = xor i32 %conv2.i75.5, %mul.i74.5 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_5 v_conv2_i75_5 v_mul_i74_5;
(*   %conv3.i77.5 = trunc i32 %xor.i76.5 to i8 *)
split tmp_v_xor_i76_5 v_conv3_i77_5 v_xor_i76_5 8;
vpc v_conv3_i77_5@uint8 v_conv3_i77_5@uint32;
(*   %conv4.i78.5 = zext i8 %conv5.i80.4 to i32 *)
cast v_conv4_i78_5@uint32 v_conv5_i80_4@uint8;
(*   %shr.i79.5 = ashr i32 %conv4.i78.5, 1 *)
(* You may need to modify here *)
split v_shr_i79_5 tmp_to_be_used v_conv4_i78_5 1;
(*   %conv5.i80.5 = trunc i32 %shr.i79.5 to i8 *)
split tmp_v_shr_i79_5 v_conv5_i80_5 v_shr_i79_5 8;
vpc v_conv5_i80_5@uint8 v_conv5_i80_5@uint32;
(*   %conv6.i81.5 = zext i8 %conv7.i83.4 to i32 *)
cast v_conv6_i81_5@uint32 v_conv7_i83_4@uint8;
(*   %shl.i82.5 = shl i32 %conv6.i81.5, 1 *)
shls discard_12 v_shl_i82_5 v_conv6_i81_5 1;
(*   %conv7.i83.5 = trunc i32 %shl.i82.5 to i8 *)
split tmp_v_shl_i82_5 v_conv7_i83_5 v_shl_i82_5 8;
vpc v_conv7_i83_5@uint8 v_conv7_i83_5@uint32;
(*   %conv.i71.6 = zext i8 %conv5.i80.5 to i32 *)
cast v_conv_i71_6@uint32 v_conv5_i80_5@uint8;
(*   %and.i72.6 = and i32 %conv.i71.6, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_6 v_conv_i71_6 (0x1)@uint32;
(*   %conv1.i73.6 = zext i8 %conv7.i83.5 to i32 *)
cast v_conv1_i73_6@uint32 v_conv7_i83_5@uint8;
(*   %mul.i74.6 = mul nsw i32 %and.i72.6, %conv1.i73.6 *)
mul v_mul_i74_6 v_and_i72_6 v_conv1_i73_6;
(*   %conv2.i75.6 = zext i8 %conv3.i77.5 to i32 *)
cast v_conv2_i75_6@uint32 v_conv3_i77_5@uint8;
(*   %xor.i76.6 = xor i32 %conv2.i75.6, %mul.i74.6 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_6 v_conv2_i75_6 v_mul_i74_6;
(*   %conv3.i77.6 = trunc i32 %xor.i76.6 to i8 *)
split tmp_v_xor_i76_6 v_conv3_i77_6 v_xor_i76_6 8;
vpc v_conv3_i77_6@uint8 v_conv3_i77_6@uint32;
(*   %conv4.i78.6 = zext i8 %conv5.i80.5 to i32 *)
cast v_conv4_i78_6@uint32 v_conv5_i80_5@uint8;
(*   %shr.i79.6 = ashr i32 %conv4.i78.6, 1 *)
(* You may need to modify here *)
split v_shr_i79_6 tmp_to_be_used v_conv4_i78_6 1;
(*   %conv5.i80.6 = trunc i32 %shr.i79.6 to i8 *)
split tmp_v_shr_i79_6 v_conv5_i80_6 v_shr_i79_6 8;
vpc v_conv5_i80_6@uint8 v_conv5_i80_6@uint32;
(*   %conv6.i81.6 = zext i8 %conv7.i83.5 to i32 *)
cast v_conv6_i81_6@uint32 v_conv7_i83_5@uint8;
(*   %shl.i82.6 = shl i32 %conv6.i81.6, 1 *)
shls discard_13 v_shl_i82_6 v_conv6_i81_6 1;
(*   %conv7.i83.6 = trunc i32 %shl.i82.6 to i8 *)
split tmp_v_shl_i82_6 v_conv7_i83_6 v_shl_i82_6 8;
vpc v_conv7_i83_6@uint8 v_conv7_i83_6@uint32;
(*   %conv.i71.7 = zext i8 %conv5.i80.6 to i32 *)
cast v_conv_i71_7@uint32 v_conv5_i80_6@uint8;
(*   %and.i72.7 = and i32 %conv.i71.7, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_7 v_conv_i71_7 (0x1)@uint32;
(*   %conv1.i73.7 = zext i8 %conv7.i83.6 to i32 *)
cast v_conv1_i73_7@uint32 v_conv7_i83_6@uint8;
(*   %mul.i74.7 = mul nsw i32 %and.i72.7, %conv1.i73.7 *)
mul v_mul_i74_7 v_and_i72_7 v_conv1_i73_7;
(*   %conv2.i75.7 = zext i8 %conv3.i77.6 to i32 *)
cast v_conv2_i75_7@uint32 v_conv3_i77_6@uint8;
(*   %xor.i76.7 = xor i32 %conv2.i75.7, %mul.i74.7 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_7 v_conv2_i75_7 v_mul_i74_7;
(*   %conv3.i77.7 = trunc i32 %xor.i76.7 to i8 *)
split tmp_v_xor_i76_7 v_conv3_i77_7 v_xor_i76_7 8;
vpc v_conv3_i77_7@uint8 v_conv3_i77_7@uint32;
(*   %conv15 = zext i8 %conv3.i77.7 to i32 *)
cast v_conv15@uint32 v_conv3_i77_7@uint8;
(*   %xor16 = xor i32 %xor, %conv15 *)
(* You may need to modify here *)
xor uint32 v_xor16 v_xor v_conv15;
(*   %conv17 = trunc i32 %xor16 to i8 *)
split tmp_v_xor16 v_conv17 v_xor16 8;
vpc v_conv17@uint8 v_conv17@uint32;
(*   %arrayidx21 = getelementptr inbounds i8, i8* %r, i64 3 *)
(*   store i8 %conv17, i8* %arrayidx21, align 1 *)
mov r_3 v_conv17;
(*   %arrayidx.1 = getelementptr inbounds i8, i8* %r, i64 2 *)
(*   %5 = load i8, i8* %arrayidx.1, align 1 *)
mov v5 r_2;
(*   %conv.1 = zext i8 %5 to i32 *)
cast v_conv_1@uint32 v5@uint8;
(*   %6 = load i8, i8* %a, align 1 *)
mov v6 a_0;
(*   %arrayidx8.1 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %7 = load i8, i8* %arrayidx8.1, align 1 *)
mov v7 b_2;
(*   %conv.i.187 = zext i8 %7 to i32 *)
cast v_conv_i_187@uint32 v7@uint8;
(*   %and.i.188 = and i32 %conv.i.187, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_188 v_conv_i_187 (0x1)@uint32;
(*   %conv1.i.189 = zext i8 %6 to i32 *)
cast v_conv1_i_189@uint32 v6@uint8;
(*   %mul.i.190 = mul nsw i32 %and.i.188, %conv1.i.189 *)
mul v_mul_i_190 v_and_i_188 v_conv1_i_189;
(*   %conv3.i.191 = trunc i32 %mul.i.190 to i8 *)
split tmp_v_mul_i_190 v_conv3_i_191 v_mul_i_190 8;
vpc v_conv3_i_191@uint8 v_conv3_i_191@uint32;
(*   %conv4.i.192 = zext i8 %7 to i32 *)
cast v_conv4_i_192@uint32 v7@uint8;
(*   %shr.i.193 = ashr i32 %conv4.i.192, 1 *)
(* You may need to modify here *)
split v_shr_i_193 tmp_to_be_used v_conv4_i_192 1;
(*   %conv5.i.194 = trunc i32 %shr.i.193 to i8 *)
split tmp_v_shr_i_193 v_conv5_i_194 v_shr_i_193 8;
vpc v_conv5_i_194@uint8 v_conv5_i_194@uint32;
(*   %conv6.i.195 = zext i8 %6 to i32 *)
cast v_conv6_i_195@uint32 v6@uint8;
(*   %shl.i.196 = shl i32 %conv6.i.195, 1 *)
shls discard_14 v_shl_i_196 v_conv6_i_195 1;
(*   %conv7.i.197 = trunc i32 %shl.i.196 to i8 *)
split tmp_v_shl_i_196 v_conv7_i_197 v_shl_i_196 8;
vpc v_conv7_i_197@uint8 v_conv7_i_197@uint32;
(*   %conv.i.1.1 = zext i8 %conv5.i.194 to i32 *)
cast v_conv_i_1_1@uint32 v_conv5_i_194@uint8;
(*   %and.i.1.1 = and i32 %conv.i.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_1 v_conv_i_1_1 (0x1)@uint32;
(*   %conv1.i.1.1 = zext i8 %conv7.i.197 to i32 *)
cast v_conv1_i_1_1@uint32 v_conv7_i_197@uint8;
(*   %mul.i.1.1 = mul nsw i32 %and.i.1.1, %conv1.i.1.1 *)
mul v_mul_i_1_1 v_and_i_1_1 v_conv1_i_1_1;
(*   %conv2.i.1.1 = zext i8 %conv3.i.191 to i32 *)
cast v_conv2_i_1_1@uint32 v_conv3_i_191@uint8;
(*   %xor.i.1.1 = xor i32 %conv2.i.1.1, %mul.i.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_1 v_conv2_i_1_1 v_mul_i_1_1;
(*   %conv3.i.1.1 = trunc i32 %xor.i.1.1 to i8 *)
split tmp_v_xor_i_1_1 v_conv3_i_1_1 v_xor_i_1_1 8;
vpc v_conv3_i_1_1@uint8 v_conv3_i_1_1@uint32;
(*   %conv4.i.1.1 = zext i8 %conv5.i.194 to i32 *)
cast v_conv4_i_1_1@uint32 v_conv5_i_194@uint8;
(*   %shr.i.1.1 = ashr i32 %conv4.i.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_1_1 tmp_to_be_used v_conv4_i_1_1 1;
(*   %conv5.i.1.1 = trunc i32 %shr.i.1.1 to i8 *)
split tmp_v_shr_i_1_1 v_conv5_i_1_1 v_shr_i_1_1 8;
vpc v_conv5_i_1_1@uint8 v_conv5_i_1_1@uint32;
(*   %conv6.i.1.1 = zext i8 %conv7.i.197 to i32 *)
cast v_conv6_i_1_1@uint32 v_conv7_i_197@uint8;
(*   %shl.i.1.1 = shl i32 %conv6.i.1.1, 1 *)
shls discard_15 v_shl_i_1_1 v_conv6_i_1_1 1;
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
shls discard_16 v_shl_i_2_1 v_conv6_i_2_1 1;
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
shls discard_17 v_shl_i_3_1 v_conv6_i_3_1 1;
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
shls discard_18 v_shl_i_4_1 v_conv6_i_4_1 1;
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
shls discard_19 v_shl_i_5_1 v_conv6_i_5_1 1;
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
shls discard_20 v_shl_i_6_1 v_conv6_i_6_1 1;
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
(*   %conv9.1 = zext i8 %conv3.i.7.1 to i32 *)
cast v_conv9_1@uint32 v_conv3_i_7_1@uint8;
(*   %xor.1 = xor i32 %conv.1, %conv9.1 *)
(* You may need to modify here *)
xor uint32 v_xor_1 v_conv_1 v_conv9_1;
(*   %arrayidx11.1 = getelementptr inbounds i8, i8* %a, i64 2 *)
(*   %8 = load i8, i8* %arrayidx11.1, align 1 *)
mov v8 a_2;
(*   %9 = load i8, i8* %b, align 1 *)
mov v9 b_0;
(*   %conv.i71.198 = zext i8 %9 to i32 *)
cast v_conv_i71_198@uint32 v9@uint8;
(*   %and.i72.199 = and i32 %conv.i71.198, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_199 v_conv_i71_198 (0x1)@uint32;
(*   %conv1.i73.1100 = zext i8 %8 to i32 *)
cast v_conv1_i73_1100@uint32 v8@uint8;
(*   %mul.i74.1101 = mul nsw i32 %and.i72.199, %conv1.i73.1100 *)
mul v_mul_i74_1101 v_and_i72_199 v_conv1_i73_1100;
(*   %conv3.i77.1102 = trunc i32 %mul.i74.1101 to i8 *)
split tmp_v_mul_i74_1101 v_conv3_i77_1102 v_mul_i74_1101 8;
vpc v_conv3_i77_1102@uint8 v_conv3_i77_1102@uint32;
(*   %conv4.i78.1103 = zext i8 %9 to i32 *)
cast v_conv4_i78_1103@uint32 v9@uint8;
(*   %shr.i79.1104 = ashr i32 %conv4.i78.1103, 1 *)
(* You may need to modify here *)
split v_shr_i79_1104 tmp_to_be_used v_conv4_i78_1103 1;
(*   %conv5.i80.1105 = trunc i32 %shr.i79.1104 to i8 *)
split tmp_v_shr_i79_1104 v_conv5_i80_1105 v_shr_i79_1104 8;
vpc v_conv5_i80_1105@uint8 v_conv5_i80_1105@uint32;
(*   %conv6.i81.1106 = zext i8 %8 to i32 *)
cast v_conv6_i81_1106@uint32 v8@uint8;
(*   %shl.i82.1107 = shl i32 %conv6.i81.1106, 1 *)
shls discard_21 v_shl_i82_1107 v_conv6_i81_1106 1;
(*   %conv7.i83.1108 = trunc i32 %shl.i82.1107 to i8 *)
split tmp_v_shl_i82_1107 v_conv7_i83_1108 v_shl_i82_1107 8;
vpc v_conv7_i83_1108@uint8 v_conv7_i83_1108@uint32;
(*   %conv.i71.1.1 = zext i8 %conv5.i80.1105 to i32 *)
cast v_conv_i71_1_1@uint32 v_conv5_i80_1105@uint8;
(*   %and.i72.1.1 = and i32 %conv.i71.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_1_1 v_conv_i71_1_1 (0x1)@uint32;
(*   %conv1.i73.1.1 = zext i8 %conv7.i83.1108 to i32 *)
cast v_conv1_i73_1_1@uint32 v_conv7_i83_1108@uint8;
(*   %mul.i74.1.1 = mul nsw i32 %and.i72.1.1, %conv1.i73.1.1 *)
mul v_mul_i74_1_1 v_and_i72_1_1 v_conv1_i73_1_1;
(*   %conv2.i75.1.1 = zext i8 %conv3.i77.1102 to i32 *)
cast v_conv2_i75_1_1@uint32 v_conv3_i77_1102@uint8;
(*   %xor.i76.1.1 = xor i32 %conv2.i75.1.1, %mul.i74.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_1_1 v_conv2_i75_1_1 v_mul_i74_1_1;
(*   %conv3.i77.1.1 = trunc i32 %xor.i76.1.1 to i8 *)
split tmp_v_xor_i76_1_1 v_conv3_i77_1_1 v_xor_i76_1_1 8;
vpc v_conv3_i77_1_1@uint8 v_conv3_i77_1_1@uint32;
(*   %conv4.i78.1.1 = zext i8 %conv5.i80.1105 to i32 *)
cast v_conv4_i78_1_1@uint32 v_conv5_i80_1105@uint8;
(*   %shr.i79.1.1 = ashr i32 %conv4.i78.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i79_1_1 tmp_to_be_used v_conv4_i78_1_1 1;
(*   %conv5.i80.1.1 = trunc i32 %shr.i79.1.1 to i8 *)
split tmp_v_shr_i79_1_1 v_conv5_i80_1_1 v_shr_i79_1_1 8;
vpc v_conv5_i80_1_1@uint8 v_conv5_i80_1_1@uint32;
(*   %conv6.i81.1.1 = zext i8 %conv7.i83.1108 to i32 *)
cast v_conv6_i81_1_1@uint32 v_conv7_i83_1108@uint8;
(*   %shl.i82.1.1 = shl i32 %conv6.i81.1.1, 1 *)
shls discard_22 v_shl_i82_1_1 v_conv6_i81_1_1 1;
(*   %conv7.i83.1.1 = trunc i32 %shl.i82.1.1 to i8 *)
split tmp_v_shl_i82_1_1 v_conv7_i83_1_1 v_shl_i82_1_1 8;
vpc v_conv7_i83_1_1@uint8 v_conv7_i83_1_1@uint32;
(*   %conv.i71.2.1 = zext i8 %conv5.i80.1.1 to i32 *)
cast v_conv_i71_2_1@uint32 v_conv5_i80_1_1@uint8;
(*   %and.i72.2.1 = and i32 %conv.i71.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_2_1 v_conv_i71_2_1 (0x1)@uint32;
(*   %conv1.i73.2.1 = zext i8 %conv7.i83.1.1 to i32 *)
cast v_conv1_i73_2_1@uint32 v_conv7_i83_1_1@uint8;
(*   %mul.i74.2.1 = mul nsw i32 %and.i72.2.1, %conv1.i73.2.1 *)
mul v_mul_i74_2_1 v_and_i72_2_1 v_conv1_i73_2_1;
(*   %conv2.i75.2.1 = zext i8 %conv3.i77.1.1 to i32 *)
cast v_conv2_i75_2_1@uint32 v_conv3_i77_1_1@uint8;
(*   %xor.i76.2.1 = xor i32 %conv2.i75.2.1, %mul.i74.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_2_1 v_conv2_i75_2_1 v_mul_i74_2_1;
(*   %conv3.i77.2.1 = trunc i32 %xor.i76.2.1 to i8 *)
split tmp_v_xor_i76_2_1 v_conv3_i77_2_1 v_xor_i76_2_1 8;
vpc v_conv3_i77_2_1@uint8 v_conv3_i77_2_1@uint32;
(*   %conv4.i78.2.1 = zext i8 %conv5.i80.1.1 to i32 *)
cast v_conv4_i78_2_1@uint32 v_conv5_i80_1_1@uint8;
(*   %shr.i79.2.1 = ashr i32 %conv4.i78.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i79_2_1 tmp_to_be_used v_conv4_i78_2_1 1;
(*   %conv5.i80.2.1 = trunc i32 %shr.i79.2.1 to i8 *)
split tmp_v_shr_i79_2_1 v_conv5_i80_2_1 v_shr_i79_2_1 8;
vpc v_conv5_i80_2_1@uint8 v_conv5_i80_2_1@uint32;
(*   %conv6.i81.2.1 = zext i8 %conv7.i83.1.1 to i32 *)
cast v_conv6_i81_2_1@uint32 v_conv7_i83_1_1@uint8;
(*   %shl.i82.2.1 = shl i32 %conv6.i81.2.1, 1 *)
shls discard_23 v_shl_i82_2_1 v_conv6_i81_2_1 1;
(*   %conv7.i83.2.1 = trunc i32 %shl.i82.2.1 to i8 *)
split tmp_v_shl_i82_2_1 v_conv7_i83_2_1 v_shl_i82_2_1 8;
vpc v_conv7_i83_2_1@uint8 v_conv7_i83_2_1@uint32;
(*   %conv.i71.3.1 = zext i8 %conv5.i80.2.1 to i32 *)
cast v_conv_i71_3_1@uint32 v_conv5_i80_2_1@uint8;
(*   %and.i72.3.1 = and i32 %conv.i71.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_3_1 v_conv_i71_3_1 (0x1)@uint32;
(*   %conv1.i73.3.1 = zext i8 %conv7.i83.2.1 to i32 *)
cast v_conv1_i73_3_1@uint32 v_conv7_i83_2_1@uint8;
(*   %mul.i74.3.1 = mul nsw i32 %and.i72.3.1, %conv1.i73.3.1 *)
mul v_mul_i74_3_1 v_and_i72_3_1 v_conv1_i73_3_1;
(*   %conv2.i75.3.1 = zext i8 %conv3.i77.2.1 to i32 *)
cast v_conv2_i75_3_1@uint32 v_conv3_i77_2_1@uint8;
(*   %xor.i76.3.1 = xor i32 %conv2.i75.3.1, %mul.i74.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_3_1 v_conv2_i75_3_1 v_mul_i74_3_1;
(*   %conv3.i77.3.1 = trunc i32 %xor.i76.3.1 to i8 *)
split tmp_v_xor_i76_3_1 v_conv3_i77_3_1 v_xor_i76_3_1 8;
vpc v_conv3_i77_3_1@uint8 v_conv3_i77_3_1@uint32;
(*   %conv4.i78.3.1 = zext i8 %conv5.i80.2.1 to i32 *)
cast v_conv4_i78_3_1@uint32 v_conv5_i80_2_1@uint8;
(*   %shr.i79.3.1 = ashr i32 %conv4.i78.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i79_3_1 tmp_to_be_used v_conv4_i78_3_1 1;
(*   %conv5.i80.3.1 = trunc i32 %shr.i79.3.1 to i8 *)
split tmp_v_shr_i79_3_1 v_conv5_i80_3_1 v_shr_i79_3_1 8;
vpc v_conv5_i80_3_1@uint8 v_conv5_i80_3_1@uint32;
(*   %conv6.i81.3.1 = zext i8 %conv7.i83.2.1 to i32 *)
cast v_conv6_i81_3_1@uint32 v_conv7_i83_2_1@uint8;
(*   %shl.i82.3.1 = shl i32 %conv6.i81.3.1, 1 *)
shls discard_24 v_shl_i82_3_1 v_conv6_i81_3_1 1;
(*   %conv7.i83.3.1 = trunc i32 %shl.i82.3.1 to i8 *)
split tmp_v_shl_i82_3_1 v_conv7_i83_3_1 v_shl_i82_3_1 8;
vpc v_conv7_i83_3_1@uint8 v_conv7_i83_3_1@uint32;
(*   %conv.i71.4.1 = zext i8 %conv5.i80.3.1 to i32 *)
cast v_conv_i71_4_1@uint32 v_conv5_i80_3_1@uint8;
(*   %and.i72.4.1 = and i32 %conv.i71.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_4_1 v_conv_i71_4_1 (0x1)@uint32;
(*   %conv1.i73.4.1 = zext i8 %conv7.i83.3.1 to i32 *)
cast v_conv1_i73_4_1@uint32 v_conv7_i83_3_1@uint8;
(*   %mul.i74.4.1 = mul nsw i32 %and.i72.4.1, %conv1.i73.4.1 *)
mul v_mul_i74_4_1 v_and_i72_4_1 v_conv1_i73_4_1;
(*   %conv2.i75.4.1 = zext i8 %conv3.i77.3.1 to i32 *)
cast v_conv2_i75_4_1@uint32 v_conv3_i77_3_1@uint8;
(*   %xor.i76.4.1 = xor i32 %conv2.i75.4.1, %mul.i74.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_4_1 v_conv2_i75_4_1 v_mul_i74_4_1;
(*   %conv3.i77.4.1 = trunc i32 %xor.i76.4.1 to i8 *)
split tmp_v_xor_i76_4_1 v_conv3_i77_4_1 v_xor_i76_4_1 8;
vpc v_conv3_i77_4_1@uint8 v_conv3_i77_4_1@uint32;
(*   %conv4.i78.4.1 = zext i8 %conv5.i80.3.1 to i32 *)
cast v_conv4_i78_4_1@uint32 v_conv5_i80_3_1@uint8;
(*   %shr.i79.4.1 = ashr i32 %conv4.i78.4.1, 1 *)
(* You may need to modify here *)
split v_shr_i79_4_1 tmp_to_be_used v_conv4_i78_4_1 1;
(*   %conv5.i80.4.1 = trunc i32 %shr.i79.4.1 to i8 *)
split tmp_v_shr_i79_4_1 v_conv5_i80_4_1 v_shr_i79_4_1 8;
vpc v_conv5_i80_4_1@uint8 v_conv5_i80_4_1@uint32;
(*   %conv6.i81.4.1 = zext i8 %conv7.i83.3.1 to i32 *)
cast v_conv6_i81_4_1@uint32 v_conv7_i83_3_1@uint8;
(*   %shl.i82.4.1 = shl i32 %conv6.i81.4.1, 1 *)
shls discard_25 v_shl_i82_4_1 v_conv6_i81_4_1 1;
(*   %conv7.i83.4.1 = trunc i32 %shl.i82.4.1 to i8 *)
split tmp_v_shl_i82_4_1 v_conv7_i83_4_1 v_shl_i82_4_1 8;
vpc v_conv7_i83_4_1@uint8 v_conv7_i83_4_1@uint32;
(*   %conv.i71.5.1 = zext i8 %conv5.i80.4.1 to i32 *)
cast v_conv_i71_5_1@uint32 v_conv5_i80_4_1@uint8;
(*   %and.i72.5.1 = and i32 %conv.i71.5.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_5_1 v_conv_i71_5_1 (0x1)@uint32;
(*   %conv1.i73.5.1 = zext i8 %conv7.i83.4.1 to i32 *)
cast v_conv1_i73_5_1@uint32 v_conv7_i83_4_1@uint8;
(*   %mul.i74.5.1 = mul nsw i32 %and.i72.5.1, %conv1.i73.5.1 *)
mul v_mul_i74_5_1 v_and_i72_5_1 v_conv1_i73_5_1;
(*   %conv2.i75.5.1 = zext i8 %conv3.i77.4.1 to i32 *)
cast v_conv2_i75_5_1@uint32 v_conv3_i77_4_1@uint8;
(*   %xor.i76.5.1 = xor i32 %conv2.i75.5.1, %mul.i74.5.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_5_1 v_conv2_i75_5_1 v_mul_i74_5_1;
(*   %conv3.i77.5.1 = trunc i32 %xor.i76.5.1 to i8 *)
split tmp_v_xor_i76_5_1 v_conv3_i77_5_1 v_xor_i76_5_1 8;
vpc v_conv3_i77_5_1@uint8 v_conv3_i77_5_1@uint32;
(*   %conv4.i78.5.1 = zext i8 %conv5.i80.4.1 to i32 *)
cast v_conv4_i78_5_1@uint32 v_conv5_i80_4_1@uint8;
(*   %shr.i79.5.1 = ashr i32 %conv4.i78.5.1, 1 *)
(* You may need to modify here *)
split v_shr_i79_5_1 tmp_to_be_used v_conv4_i78_5_1 1;
(*   %conv5.i80.5.1 = trunc i32 %shr.i79.5.1 to i8 *)
split tmp_v_shr_i79_5_1 v_conv5_i80_5_1 v_shr_i79_5_1 8;
vpc v_conv5_i80_5_1@uint8 v_conv5_i80_5_1@uint32;
(*   %conv6.i81.5.1 = zext i8 %conv7.i83.4.1 to i32 *)
cast v_conv6_i81_5_1@uint32 v_conv7_i83_4_1@uint8;
(*   %shl.i82.5.1 = shl i32 %conv6.i81.5.1, 1 *)
shls discard_26 v_shl_i82_5_1 v_conv6_i81_5_1 1;
(*   %conv7.i83.5.1 = trunc i32 %shl.i82.5.1 to i8 *)
split tmp_v_shl_i82_5_1 v_conv7_i83_5_1 v_shl_i82_5_1 8;
vpc v_conv7_i83_5_1@uint8 v_conv7_i83_5_1@uint32;
(*   %conv.i71.6.1 = zext i8 %conv5.i80.5.1 to i32 *)
cast v_conv_i71_6_1@uint32 v_conv5_i80_5_1@uint8;
(*   %and.i72.6.1 = and i32 %conv.i71.6.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_6_1 v_conv_i71_6_1 (0x1)@uint32;
(*   %conv1.i73.6.1 = zext i8 %conv7.i83.5.1 to i32 *)
cast v_conv1_i73_6_1@uint32 v_conv7_i83_5_1@uint8;
(*   %mul.i74.6.1 = mul nsw i32 %and.i72.6.1, %conv1.i73.6.1 *)
mul v_mul_i74_6_1 v_and_i72_6_1 v_conv1_i73_6_1;
(*   %conv2.i75.6.1 = zext i8 %conv3.i77.5.1 to i32 *)
cast v_conv2_i75_6_1@uint32 v_conv3_i77_5_1@uint8;
(*   %xor.i76.6.1 = xor i32 %conv2.i75.6.1, %mul.i74.6.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_6_1 v_conv2_i75_6_1 v_mul_i74_6_1;
(*   %conv3.i77.6.1 = trunc i32 %xor.i76.6.1 to i8 *)
split tmp_v_xor_i76_6_1 v_conv3_i77_6_1 v_xor_i76_6_1 8;
vpc v_conv3_i77_6_1@uint8 v_conv3_i77_6_1@uint32;
(*   %conv4.i78.6.1 = zext i8 %conv5.i80.5.1 to i32 *)
cast v_conv4_i78_6_1@uint32 v_conv5_i80_5_1@uint8;
(*   %shr.i79.6.1 = ashr i32 %conv4.i78.6.1, 1 *)
(* You may need to modify here *)
split v_shr_i79_6_1 tmp_to_be_used v_conv4_i78_6_1 1;
(*   %conv5.i80.6.1 = trunc i32 %shr.i79.6.1 to i8 *)
split tmp_v_shr_i79_6_1 v_conv5_i80_6_1 v_shr_i79_6_1 8;
vpc v_conv5_i80_6_1@uint8 v_conv5_i80_6_1@uint32;
(*   %conv6.i81.6.1 = zext i8 %conv7.i83.5.1 to i32 *)
cast v_conv6_i81_6_1@uint32 v_conv7_i83_5_1@uint8;
(*   %shl.i82.6.1 = shl i32 %conv6.i81.6.1, 1 *)
shls discard_27 v_shl_i82_6_1 v_conv6_i81_6_1 1;
(*   %conv7.i83.6.1 = trunc i32 %shl.i82.6.1 to i8 *)
split tmp_v_shl_i82_6_1 v_conv7_i83_6_1 v_shl_i82_6_1 8;
vpc v_conv7_i83_6_1@uint8 v_conv7_i83_6_1@uint32;
(*   %conv.i71.7.1 = zext i8 %conv5.i80.6.1 to i32 *)
cast v_conv_i71_7_1@uint32 v_conv5_i80_6_1@uint8;
(*   %and.i72.7.1 = and i32 %conv.i71.7.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_7_1 v_conv_i71_7_1 (0x1)@uint32;
(*   %conv1.i73.7.1 = zext i8 %conv7.i83.6.1 to i32 *)
cast v_conv1_i73_7_1@uint32 v_conv7_i83_6_1@uint8;
(*   %mul.i74.7.1 = mul nsw i32 %and.i72.7.1, %conv1.i73.7.1 *)
mul v_mul_i74_7_1 v_and_i72_7_1 v_conv1_i73_7_1;
(*   %conv2.i75.7.1 = zext i8 %conv3.i77.6.1 to i32 *)
cast v_conv2_i75_7_1@uint32 v_conv3_i77_6_1@uint8;
(*   %xor.i76.7.1 = xor i32 %conv2.i75.7.1, %mul.i74.7.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_7_1 v_conv2_i75_7_1 v_mul_i74_7_1;
(*   %conv3.i77.7.1 = trunc i32 %xor.i76.7.1 to i8 *)
split tmp_v_xor_i76_7_1 v_conv3_i77_7_1 v_xor_i76_7_1 8;
vpc v_conv3_i77_7_1@uint8 v_conv3_i77_7_1@uint32;
(*   %conv15.1 = zext i8 %conv3.i77.7.1 to i32 *)
cast v_conv15_1@uint32 v_conv3_i77_7_1@uint8;
(*   %xor16.1 = xor i32 %xor.1, %conv15.1 *)
(* You may need to modify here *)
xor uint32 v_xor16_1 v_xor_1 v_conv15_1;
(*   %conv17.1 = trunc i32 %xor16.1 to i8 *)
split tmp_v_xor16_1 v_conv17_1 v_xor16_1 8;
vpc v_conv17_1@uint8 v_conv17_1@uint32;
(*   %arrayidx21.1 = getelementptr inbounds i8, i8* %r, i64 6 *)
(*   store i8 %conv17.1, i8* %arrayidx21.1, align 1 *)
mov r_6 v_conv17_1;
(*   %arrayidx6.1 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %arrayidx13.1 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %arrayidx.1111 = getelementptr inbounds i8, i8* %r, i64 5 *)
(*   %10 = load i8, i8* %arrayidx.1111, align 1 *)
mov v10 r_5;
(*   %conv.1112 = zext i8 %10 to i32 *)
cast v_conv_1112@uint32 v10@uint8;
(*   %11 = load i8, i8* %arrayidx6.1, align 1 *)
mov v11 a_1;
(*   %arrayidx8.1114 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %12 = load i8, i8* %arrayidx8.1114, align 1 *)
mov v12 b_2;
(*   %conv.i.1116 = zext i8 %12 to i32 *)
cast v_conv_i_1116@uint32 v12@uint8;
(*   %and.i.1117 = and i32 %conv.i.1116, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1117 v_conv_i_1116 (0x1)@uint32;
(*   %conv1.i.1118 = zext i8 %11 to i32 *)
cast v_conv1_i_1118@uint32 v11@uint8;
(*   %mul.i.1119 = mul nsw i32 %and.i.1117, %conv1.i.1118 *)
mul v_mul_i_1119 v_and_i_1117 v_conv1_i_1118;
(*   %conv3.i.1120 = trunc i32 %mul.i.1119 to i8 *)
split tmp_v_mul_i_1119 v_conv3_i_1120 v_mul_i_1119 8;
vpc v_conv3_i_1120@uint8 v_conv3_i_1120@uint32;
(*   %conv4.i.1121 = zext i8 %12 to i32 *)
cast v_conv4_i_1121@uint32 v12@uint8;
(*   %shr.i.1122 = ashr i32 %conv4.i.1121, 1 *)
(* You may need to modify here *)
split v_shr_i_1122 tmp_to_be_used v_conv4_i_1121 1;
(*   %conv5.i.1123 = trunc i32 %shr.i.1122 to i8 *)
split tmp_v_shr_i_1122 v_conv5_i_1123 v_shr_i_1122 8;
vpc v_conv5_i_1123@uint8 v_conv5_i_1123@uint32;
(*   %conv6.i.1124 = zext i8 %11 to i32 *)
cast v_conv6_i_1124@uint32 v11@uint8;
(*   %shl.i.1125 = shl i32 %conv6.i.1124, 1 *)
shls discard_28 v_shl_i_1125 v_conv6_i_1124 1;
(*   %conv7.i.1126 = trunc i32 %shl.i.1125 to i8 *)
split tmp_v_shl_i_1125 v_conv7_i_1126 v_shl_i_1125 8;
vpc v_conv7_i_1126@uint8 v_conv7_i_1126@uint32;
(*   %conv.i.1.1127 = zext i8 %conv5.i.1123 to i32 *)
cast v_conv_i_1_1127@uint32 v_conv5_i_1123@uint8;
(*   %and.i.1.1128 = and i32 %conv.i.1.1127, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_1128 v_conv_i_1_1127 (0x1)@uint32;
(*   %conv1.i.1.1129 = zext i8 %conv7.i.1126 to i32 *)
cast v_conv1_i_1_1129@uint32 v_conv7_i_1126@uint8;
(*   %mul.i.1.1130 = mul nsw i32 %and.i.1.1128, %conv1.i.1.1129 *)
mul v_mul_i_1_1130 v_and_i_1_1128 v_conv1_i_1_1129;
(*   %conv2.i.1.1131 = zext i8 %conv3.i.1120 to i32 *)
cast v_conv2_i_1_1131@uint32 v_conv3_i_1120@uint8;
(*   %xor.i.1.1132 = xor i32 %conv2.i.1.1131, %mul.i.1.1130 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_1132 v_conv2_i_1_1131 v_mul_i_1_1130;
(*   %conv3.i.1.1133 = trunc i32 %xor.i.1.1132 to i8 *)
split tmp_v_xor_i_1_1132 v_conv3_i_1_1133 v_xor_i_1_1132 8;
vpc v_conv3_i_1_1133@uint8 v_conv3_i_1_1133@uint32;
(*   %conv4.i.1.1134 = zext i8 %conv5.i.1123 to i32 *)
cast v_conv4_i_1_1134@uint32 v_conv5_i_1123@uint8;
(*   %shr.i.1.1135 = ashr i32 %conv4.i.1.1134, 1 *)
(* You may need to modify here *)
split v_shr_i_1_1135 tmp_to_be_used v_conv4_i_1_1134 1;
(*   %conv5.i.1.1136 = trunc i32 %shr.i.1.1135 to i8 *)
split tmp_v_shr_i_1_1135 v_conv5_i_1_1136 v_shr_i_1_1135 8;
vpc v_conv5_i_1_1136@uint8 v_conv5_i_1_1136@uint32;
(*   %conv6.i.1.1137 = zext i8 %conv7.i.1126 to i32 *)
cast v_conv6_i_1_1137@uint32 v_conv7_i_1126@uint8;
(*   %shl.i.1.1138 = shl i32 %conv6.i.1.1137, 1 *)
shls discard_29 v_shl_i_1_1138 v_conv6_i_1_1137 1;
(*   %conv7.i.1.1139 = trunc i32 %shl.i.1.1138 to i8 *)
split tmp_v_shl_i_1_1138 v_conv7_i_1_1139 v_shl_i_1_1138 8;
vpc v_conv7_i_1_1139@uint8 v_conv7_i_1_1139@uint32;
(*   %conv.i.2.1140 = zext i8 %conv5.i.1.1136 to i32 *)
cast v_conv_i_2_1140@uint32 v_conv5_i_1_1136@uint8;
(*   %and.i.2.1141 = and i32 %conv.i.2.1140, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_1141 v_conv_i_2_1140 (0x1)@uint32;
(*   %conv1.i.2.1142 = zext i8 %conv7.i.1.1139 to i32 *)
cast v_conv1_i_2_1142@uint32 v_conv7_i_1_1139@uint8;
(*   %mul.i.2.1143 = mul nsw i32 %and.i.2.1141, %conv1.i.2.1142 *)
mul v_mul_i_2_1143 v_and_i_2_1141 v_conv1_i_2_1142;
(*   %conv2.i.2.1144 = zext i8 %conv3.i.1.1133 to i32 *)
cast v_conv2_i_2_1144@uint32 v_conv3_i_1_1133@uint8;
(*   %xor.i.2.1145 = xor i32 %conv2.i.2.1144, %mul.i.2.1143 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_1145 v_conv2_i_2_1144 v_mul_i_2_1143;
(*   %conv3.i.2.1146 = trunc i32 %xor.i.2.1145 to i8 *)
split tmp_v_xor_i_2_1145 v_conv3_i_2_1146 v_xor_i_2_1145 8;
vpc v_conv3_i_2_1146@uint8 v_conv3_i_2_1146@uint32;
(*   %conv4.i.2.1147 = zext i8 %conv5.i.1.1136 to i32 *)
cast v_conv4_i_2_1147@uint32 v_conv5_i_1_1136@uint8;
(*   %shr.i.2.1148 = ashr i32 %conv4.i.2.1147, 1 *)
(* You may need to modify here *)
split v_shr_i_2_1148 tmp_to_be_used v_conv4_i_2_1147 1;
(*   %conv5.i.2.1149 = trunc i32 %shr.i.2.1148 to i8 *)
split tmp_v_shr_i_2_1148 v_conv5_i_2_1149 v_shr_i_2_1148 8;
vpc v_conv5_i_2_1149@uint8 v_conv5_i_2_1149@uint32;
(*   %conv6.i.2.1150 = zext i8 %conv7.i.1.1139 to i32 *)
cast v_conv6_i_2_1150@uint32 v_conv7_i_1_1139@uint8;
(*   %shl.i.2.1151 = shl i32 %conv6.i.2.1150, 1 *)
shls discard_30 v_shl_i_2_1151 v_conv6_i_2_1150 1;
(*   %conv7.i.2.1152 = trunc i32 %shl.i.2.1151 to i8 *)
split tmp_v_shl_i_2_1151 v_conv7_i_2_1152 v_shl_i_2_1151 8;
vpc v_conv7_i_2_1152@uint8 v_conv7_i_2_1152@uint32;
(*   %conv.i.3.1153 = zext i8 %conv5.i.2.1149 to i32 *)
cast v_conv_i_3_1153@uint32 v_conv5_i_2_1149@uint8;
(*   %and.i.3.1154 = and i32 %conv.i.3.1153, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_1154 v_conv_i_3_1153 (0x1)@uint32;
(*   %conv1.i.3.1155 = zext i8 %conv7.i.2.1152 to i32 *)
cast v_conv1_i_3_1155@uint32 v_conv7_i_2_1152@uint8;
(*   %mul.i.3.1156 = mul nsw i32 %and.i.3.1154, %conv1.i.3.1155 *)
mul v_mul_i_3_1156 v_and_i_3_1154 v_conv1_i_3_1155;
(*   %conv2.i.3.1157 = zext i8 %conv3.i.2.1146 to i32 *)
cast v_conv2_i_3_1157@uint32 v_conv3_i_2_1146@uint8;
(*   %xor.i.3.1158 = xor i32 %conv2.i.3.1157, %mul.i.3.1156 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_1158 v_conv2_i_3_1157 v_mul_i_3_1156;
(*   %conv3.i.3.1159 = trunc i32 %xor.i.3.1158 to i8 *)
split tmp_v_xor_i_3_1158 v_conv3_i_3_1159 v_xor_i_3_1158 8;
vpc v_conv3_i_3_1159@uint8 v_conv3_i_3_1159@uint32;
(*   %conv4.i.3.1160 = zext i8 %conv5.i.2.1149 to i32 *)
cast v_conv4_i_3_1160@uint32 v_conv5_i_2_1149@uint8;
(*   %shr.i.3.1161 = ashr i32 %conv4.i.3.1160, 1 *)
(* You may need to modify here *)
split v_shr_i_3_1161 tmp_to_be_used v_conv4_i_3_1160 1;
(*   %conv5.i.3.1162 = trunc i32 %shr.i.3.1161 to i8 *)
split tmp_v_shr_i_3_1161 v_conv5_i_3_1162 v_shr_i_3_1161 8;
vpc v_conv5_i_3_1162@uint8 v_conv5_i_3_1162@uint32;
(*   %conv6.i.3.1163 = zext i8 %conv7.i.2.1152 to i32 *)
cast v_conv6_i_3_1163@uint32 v_conv7_i_2_1152@uint8;
(*   %shl.i.3.1164 = shl i32 %conv6.i.3.1163, 1 *)
shls discard_31 v_shl_i_3_1164 v_conv6_i_3_1163 1;
(*   %conv7.i.3.1165 = trunc i32 %shl.i.3.1164 to i8 *)
split tmp_v_shl_i_3_1164 v_conv7_i_3_1165 v_shl_i_3_1164 8;
vpc v_conv7_i_3_1165@uint8 v_conv7_i_3_1165@uint32;
(*   %conv.i.4.1166 = zext i8 %conv5.i.3.1162 to i32 *)
cast v_conv_i_4_1166@uint32 v_conv5_i_3_1162@uint8;
(*   %and.i.4.1167 = and i32 %conv.i.4.1166, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_1167 v_conv_i_4_1166 (0x1)@uint32;
(*   %conv1.i.4.1168 = zext i8 %conv7.i.3.1165 to i32 *)
cast v_conv1_i_4_1168@uint32 v_conv7_i_3_1165@uint8;
(*   %mul.i.4.1169 = mul nsw i32 %and.i.4.1167, %conv1.i.4.1168 *)
mul v_mul_i_4_1169 v_and_i_4_1167 v_conv1_i_4_1168;
(*   %conv2.i.4.1170 = zext i8 %conv3.i.3.1159 to i32 *)
cast v_conv2_i_4_1170@uint32 v_conv3_i_3_1159@uint8;
(*   %xor.i.4.1171 = xor i32 %conv2.i.4.1170, %mul.i.4.1169 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_1171 v_conv2_i_4_1170 v_mul_i_4_1169;
(*   %conv3.i.4.1172 = trunc i32 %xor.i.4.1171 to i8 *)
split tmp_v_xor_i_4_1171 v_conv3_i_4_1172 v_xor_i_4_1171 8;
vpc v_conv3_i_4_1172@uint8 v_conv3_i_4_1172@uint32;
(*   %conv4.i.4.1173 = zext i8 %conv5.i.3.1162 to i32 *)
cast v_conv4_i_4_1173@uint32 v_conv5_i_3_1162@uint8;
(*   %shr.i.4.1174 = ashr i32 %conv4.i.4.1173, 1 *)
(* You may need to modify here *)
split v_shr_i_4_1174 tmp_to_be_used v_conv4_i_4_1173 1;
(*   %conv5.i.4.1175 = trunc i32 %shr.i.4.1174 to i8 *)
split tmp_v_shr_i_4_1174 v_conv5_i_4_1175 v_shr_i_4_1174 8;
vpc v_conv5_i_4_1175@uint8 v_conv5_i_4_1175@uint32;
(*   %conv6.i.4.1176 = zext i8 %conv7.i.3.1165 to i32 *)
cast v_conv6_i_4_1176@uint32 v_conv7_i_3_1165@uint8;
(*   %shl.i.4.1177 = shl i32 %conv6.i.4.1176, 1 *)
shls discard_32 v_shl_i_4_1177 v_conv6_i_4_1176 1;
(*   %conv7.i.4.1178 = trunc i32 %shl.i.4.1177 to i8 *)
split tmp_v_shl_i_4_1177 v_conv7_i_4_1178 v_shl_i_4_1177 8;
vpc v_conv7_i_4_1178@uint8 v_conv7_i_4_1178@uint32;
(*   %conv.i.5.1179 = zext i8 %conv5.i.4.1175 to i32 *)
cast v_conv_i_5_1179@uint32 v_conv5_i_4_1175@uint8;
(*   %and.i.5.1180 = and i32 %conv.i.5.1179, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_1180 v_conv_i_5_1179 (0x1)@uint32;
(*   %conv1.i.5.1181 = zext i8 %conv7.i.4.1178 to i32 *)
cast v_conv1_i_5_1181@uint32 v_conv7_i_4_1178@uint8;
(*   %mul.i.5.1182 = mul nsw i32 %and.i.5.1180, %conv1.i.5.1181 *)
mul v_mul_i_5_1182 v_and_i_5_1180 v_conv1_i_5_1181;
(*   %conv2.i.5.1183 = zext i8 %conv3.i.4.1172 to i32 *)
cast v_conv2_i_5_1183@uint32 v_conv3_i_4_1172@uint8;
(*   %xor.i.5.1184 = xor i32 %conv2.i.5.1183, %mul.i.5.1182 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_1184 v_conv2_i_5_1183 v_mul_i_5_1182;
(*   %conv3.i.5.1185 = trunc i32 %xor.i.5.1184 to i8 *)
split tmp_v_xor_i_5_1184 v_conv3_i_5_1185 v_xor_i_5_1184 8;
vpc v_conv3_i_5_1185@uint8 v_conv3_i_5_1185@uint32;
(*   %conv4.i.5.1186 = zext i8 %conv5.i.4.1175 to i32 *)
cast v_conv4_i_5_1186@uint32 v_conv5_i_4_1175@uint8;
(*   %shr.i.5.1187 = ashr i32 %conv4.i.5.1186, 1 *)
(* You may need to modify here *)
split v_shr_i_5_1187 tmp_to_be_used v_conv4_i_5_1186 1;
(*   %conv5.i.5.1188 = trunc i32 %shr.i.5.1187 to i8 *)
split tmp_v_shr_i_5_1187 v_conv5_i_5_1188 v_shr_i_5_1187 8;
vpc v_conv5_i_5_1188@uint8 v_conv5_i_5_1188@uint32;
(*   %conv6.i.5.1189 = zext i8 %conv7.i.4.1178 to i32 *)
cast v_conv6_i_5_1189@uint32 v_conv7_i_4_1178@uint8;
(*   %shl.i.5.1190 = shl i32 %conv6.i.5.1189, 1 *)
shls discard_33 v_shl_i_5_1190 v_conv6_i_5_1189 1;
(*   %conv7.i.5.1191 = trunc i32 %shl.i.5.1190 to i8 *)
split tmp_v_shl_i_5_1190 v_conv7_i_5_1191 v_shl_i_5_1190 8;
vpc v_conv7_i_5_1191@uint8 v_conv7_i_5_1191@uint32;
(*   %conv.i.6.1192 = zext i8 %conv5.i.5.1188 to i32 *)
cast v_conv_i_6_1192@uint32 v_conv5_i_5_1188@uint8;
(*   %and.i.6.1193 = and i32 %conv.i.6.1192, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_1193 v_conv_i_6_1192 (0x1)@uint32;
(*   %conv1.i.6.1194 = zext i8 %conv7.i.5.1191 to i32 *)
cast v_conv1_i_6_1194@uint32 v_conv7_i_5_1191@uint8;
(*   %mul.i.6.1195 = mul nsw i32 %and.i.6.1193, %conv1.i.6.1194 *)
mul v_mul_i_6_1195 v_and_i_6_1193 v_conv1_i_6_1194;
(*   %conv2.i.6.1196 = zext i8 %conv3.i.5.1185 to i32 *)
cast v_conv2_i_6_1196@uint32 v_conv3_i_5_1185@uint8;
(*   %xor.i.6.1197 = xor i32 %conv2.i.6.1196, %mul.i.6.1195 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_1197 v_conv2_i_6_1196 v_mul_i_6_1195;
(*   %conv3.i.6.1198 = trunc i32 %xor.i.6.1197 to i8 *)
split tmp_v_xor_i_6_1197 v_conv3_i_6_1198 v_xor_i_6_1197 8;
vpc v_conv3_i_6_1198@uint8 v_conv3_i_6_1198@uint32;
(*   %conv4.i.6.1199 = zext i8 %conv5.i.5.1188 to i32 *)
cast v_conv4_i_6_1199@uint32 v_conv5_i_5_1188@uint8;
(*   %shr.i.6.1200 = ashr i32 %conv4.i.6.1199, 1 *)
(* You may need to modify here *)
split v_shr_i_6_1200 tmp_to_be_used v_conv4_i_6_1199 1;
(*   %conv5.i.6.1201 = trunc i32 %shr.i.6.1200 to i8 *)
split tmp_v_shr_i_6_1200 v_conv5_i_6_1201 v_shr_i_6_1200 8;
vpc v_conv5_i_6_1201@uint8 v_conv5_i_6_1201@uint32;
(*   %conv6.i.6.1202 = zext i8 %conv7.i.5.1191 to i32 *)
cast v_conv6_i_6_1202@uint32 v_conv7_i_5_1191@uint8;
(*   %shl.i.6.1203 = shl i32 %conv6.i.6.1202, 1 *)
shls discard_34 v_shl_i_6_1203 v_conv6_i_6_1202 1;
(*   %conv7.i.6.1204 = trunc i32 %shl.i.6.1203 to i8 *)
split tmp_v_shl_i_6_1203 v_conv7_i_6_1204 v_shl_i_6_1203 8;
vpc v_conv7_i_6_1204@uint8 v_conv7_i_6_1204@uint32;
(*   %conv.i.7.1205 = zext i8 %conv5.i.6.1201 to i32 *)
cast v_conv_i_7_1205@uint32 v_conv5_i_6_1201@uint8;
(*   %and.i.7.1206 = and i32 %conv.i.7.1205, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_1206 v_conv_i_7_1205 (0x1)@uint32;
(*   %conv1.i.7.1207 = zext i8 %conv7.i.6.1204 to i32 *)
cast v_conv1_i_7_1207@uint32 v_conv7_i_6_1204@uint8;
(*   %mul.i.7.1208 = mul nsw i32 %and.i.7.1206, %conv1.i.7.1207 *)
mul v_mul_i_7_1208 v_and_i_7_1206 v_conv1_i_7_1207;
(*   %conv2.i.7.1209 = zext i8 %conv3.i.6.1198 to i32 *)
cast v_conv2_i_7_1209@uint32 v_conv3_i_6_1198@uint8;
(*   %xor.i.7.1210 = xor i32 %conv2.i.7.1209, %mul.i.7.1208 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_1210 v_conv2_i_7_1209 v_mul_i_7_1208;
(*   %conv3.i.7.1211 = trunc i32 %xor.i.7.1210 to i8 *)
split tmp_v_xor_i_7_1210 v_conv3_i_7_1211 v_xor_i_7_1210 8;
vpc v_conv3_i_7_1211@uint8 v_conv3_i_7_1211@uint32;
(*   %conv9.1214 = zext i8 %conv3.i.7.1211 to i32 *)
cast v_conv9_1214@uint32 v_conv3_i_7_1211@uint8;
(*   %xor.1215 = xor i32 %conv.1112, %conv9.1214 *)
(* You may need to modify here *)
xor uint32 v_xor_1215 v_conv_1112 v_conv9_1214;
(*   %arrayidx11.1217 = getelementptr inbounds i8, i8* %a, i64 2 *)
(*   %13 = load i8, i8* %arrayidx11.1217, align 1 *)
mov v13 a_2;
(*   %14 = load i8, i8* %arrayidx13.1, align 1 *)
mov v14 b_1;
(*   %conv.i71.1219 = zext i8 %14 to i32 *)
cast v_conv_i71_1219@uint32 v14@uint8;
(*   %and.i72.1220 = and i32 %conv.i71.1219, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_1220 v_conv_i71_1219 (0x1)@uint32;
(*   %conv1.i73.1221 = zext i8 %13 to i32 *)
cast v_conv1_i73_1221@uint32 v13@uint8;
(*   %mul.i74.1222 = mul nsw i32 %and.i72.1220, %conv1.i73.1221 *)
mul v_mul_i74_1222 v_and_i72_1220 v_conv1_i73_1221;
(*   %conv3.i77.1223 = trunc i32 %mul.i74.1222 to i8 *)
split tmp_v_mul_i74_1222 v_conv3_i77_1223 v_mul_i74_1222 8;
vpc v_conv3_i77_1223@uint8 v_conv3_i77_1223@uint32;
(*   %conv4.i78.1224 = zext i8 %14 to i32 *)
cast v_conv4_i78_1224@uint32 v14@uint8;
(*   %shr.i79.1225 = ashr i32 %conv4.i78.1224, 1 *)
(* You may need to modify here *)
split v_shr_i79_1225 tmp_to_be_used v_conv4_i78_1224 1;
(*   %conv5.i80.1226 = trunc i32 %shr.i79.1225 to i8 *)
split tmp_v_shr_i79_1225 v_conv5_i80_1226 v_shr_i79_1225 8;
vpc v_conv5_i80_1226@uint8 v_conv5_i80_1226@uint32;
(*   %conv6.i81.1227 = zext i8 %13 to i32 *)
cast v_conv6_i81_1227@uint32 v13@uint8;
(*   %shl.i82.1228 = shl i32 %conv6.i81.1227, 1 *)
shls discard_35 v_shl_i82_1228 v_conv6_i81_1227 1;
(*   %conv7.i83.1229 = trunc i32 %shl.i82.1228 to i8 *)
split tmp_v_shl_i82_1228 v_conv7_i83_1229 v_shl_i82_1228 8;
vpc v_conv7_i83_1229@uint8 v_conv7_i83_1229@uint32;
(*   %conv.i71.1.1230 = zext i8 %conv5.i80.1226 to i32 *)
cast v_conv_i71_1_1230@uint32 v_conv5_i80_1226@uint8;
(*   %and.i72.1.1231 = and i32 %conv.i71.1.1230, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_1_1231 v_conv_i71_1_1230 (0x1)@uint32;
(*   %conv1.i73.1.1232 = zext i8 %conv7.i83.1229 to i32 *)
cast v_conv1_i73_1_1232@uint32 v_conv7_i83_1229@uint8;
(*   %mul.i74.1.1233 = mul nsw i32 %and.i72.1.1231, %conv1.i73.1.1232 *)
mul v_mul_i74_1_1233 v_and_i72_1_1231 v_conv1_i73_1_1232;
(*   %conv2.i75.1.1234 = zext i8 %conv3.i77.1223 to i32 *)
cast v_conv2_i75_1_1234@uint32 v_conv3_i77_1223@uint8;
(*   %xor.i76.1.1235 = xor i32 %conv2.i75.1.1234, %mul.i74.1.1233 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_1_1235 v_conv2_i75_1_1234 v_mul_i74_1_1233;
(*   %conv3.i77.1.1236 = trunc i32 %xor.i76.1.1235 to i8 *)
split tmp_v_xor_i76_1_1235 v_conv3_i77_1_1236 v_xor_i76_1_1235 8;
vpc v_conv3_i77_1_1236@uint8 v_conv3_i77_1_1236@uint32;
(*   %conv4.i78.1.1237 = zext i8 %conv5.i80.1226 to i32 *)
cast v_conv4_i78_1_1237@uint32 v_conv5_i80_1226@uint8;
(*   %shr.i79.1.1238 = ashr i32 %conv4.i78.1.1237, 1 *)
(* You may need to modify here *)
split v_shr_i79_1_1238 tmp_to_be_used v_conv4_i78_1_1237 1;
(*   %conv5.i80.1.1239 = trunc i32 %shr.i79.1.1238 to i8 *)
split tmp_v_shr_i79_1_1238 v_conv5_i80_1_1239 v_shr_i79_1_1238 8;
vpc v_conv5_i80_1_1239@uint8 v_conv5_i80_1_1239@uint32;
(*   %conv6.i81.1.1240 = zext i8 %conv7.i83.1229 to i32 *)
cast v_conv6_i81_1_1240@uint32 v_conv7_i83_1229@uint8;
(*   %shl.i82.1.1241 = shl i32 %conv6.i81.1.1240, 1 *)
shls discard_36 v_shl_i82_1_1241 v_conv6_i81_1_1240 1;
(*   %conv7.i83.1.1242 = trunc i32 %shl.i82.1.1241 to i8 *)
split tmp_v_shl_i82_1_1241 v_conv7_i83_1_1242 v_shl_i82_1_1241 8;
vpc v_conv7_i83_1_1242@uint8 v_conv7_i83_1_1242@uint32;
(*   %conv.i71.2.1243 = zext i8 %conv5.i80.1.1239 to i32 *)
cast v_conv_i71_2_1243@uint32 v_conv5_i80_1_1239@uint8;
(*   %and.i72.2.1244 = and i32 %conv.i71.2.1243, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_2_1244 v_conv_i71_2_1243 (0x1)@uint32;
(*   %conv1.i73.2.1245 = zext i8 %conv7.i83.1.1242 to i32 *)
cast v_conv1_i73_2_1245@uint32 v_conv7_i83_1_1242@uint8;
(*   %mul.i74.2.1246 = mul nsw i32 %and.i72.2.1244, %conv1.i73.2.1245 *)
mul v_mul_i74_2_1246 v_and_i72_2_1244 v_conv1_i73_2_1245;
(*   %conv2.i75.2.1247 = zext i8 %conv3.i77.1.1236 to i32 *)
cast v_conv2_i75_2_1247@uint32 v_conv3_i77_1_1236@uint8;
(*   %xor.i76.2.1248 = xor i32 %conv2.i75.2.1247, %mul.i74.2.1246 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_2_1248 v_conv2_i75_2_1247 v_mul_i74_2_1246;
(*   %conv3.i77.2.1249 = trunc i32 %xor.i76.2.1248 to i8 *)
split tmp_v_xor_i76_2_1248 v_conv3_i77_2_1249 v_xor_i76_2_1248 8;
vpc v_conv3_i77_2_1249@uint8 v_conv3_i77_2_1249@uint32;
(*   %conv4.i78.2.1250 = zext i8 %conv5.i80.1.1239 to i32 *)
cast v_conv4_i78_2_1250@uint32 v_conv5_i80_1_1239@uint8;
(*   %shr.i79.2.1251 = ashr i32 %conv4.i78.2.1250, 1 *)
(* You may need to modify here *)
split v_shr_i79_2_1251 tmp_to_be_used v_conv4_i78_2_1250 1;
(*   %conv5.i80.2.1252 = trunc i32 %shr.i79.2.1251 to i8 *)
split tmp_v_shr_i79_2_1251 v_conv5_i80_2_1252 v_shr_i79_2_1251 8;
vpc v_conv5_i80_2_1252@uint8 v_conv5_i80_2_1252@uint32;
(*   %conv6.i81.2.1253 = zext i8 %conv7.i83.1.1242 to i32 *)
cast v_conv6_i81_2_1253@uint32 v_conv7_i83_1_1242@uint8;
(*   %shl.i82.2.1254 = shl i32 %conv6.i81.2.1253, 1 *)
shls discard_37 v_shl_i82_2_1254 v_conv6_i81_2_1253 1;
(*   %conv7.i83.2.1255 = trunc i32 %shl.i82.2.1254 to i8 *)
split tmp_v_shl_i82_2_1254 v_conv7_i83_2_1255 v_shl_i82_2_1254 8;
vpc v_conv7_i83_2_1255@uint8 v_conv7_i83_2_1255@uint32;
(*   %conv.i71.3.1256 = zext i8 %conv5.i80.2.1252 to i32 *)
cast v_conv_i71_3_1256@uint32 v_conv5_i80_2_1252@uint8;
(*   %and.i72.3.1257 = and i32 %conv.i71.3.1256, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_3_1257 v_conv_i71_3_1256 (0x1)@uint32;
(*   %conv1.i73.3.1258 = zext i8 %conv7.i83.2.1255 to i32 *)
cast v_conv1_i73_3_1258@uint32 v_conv7_i83_2_1255@uint8;
(*   %mul.i74.3.1259 = mul nsw i32 %and.i72.3.1257, %conv1.i73.3.1258 *)
mul v_mul_i74_3_1259 v_and_i72_3_1257 v_conv1_i73_3_1258;
(*   %conv2.i75.3.1260 = zext i8 %conv3.i77.2.1249 to i32 *)
cast v_conv2_i75_3_1260@uint32 v_conv3_i77_2_1249@uint8;
(*   %xor.i76.3.1261 = xor i32 %conv2.i75.3.1260, %mul.i74.3.1259 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_3_1261 v_conv2_i75_3_1260 v_mul_i74_3_1259;
(*   %conv3.i77.3.1262 = trunc i32 %xor.i76.3.1261 to i8 *)
split tmp_v_xor_i76_3_1261 v_conv3_i77_3_1262 v_xor_i76_3_1261 8;
vpc v_conv3_i77_3_1262@uint8 v_conv3_i77_3_1262@uint32;
(*   %conv4.i78.3.1263 = zext i8 %conv5.i80.2.1252 to i32 *)
cast v_conv4_i78_3_1263@uint32 v_conv5_i80_2_1252@uint8;
(*   %shr.i79.3.1264 = ashr i32 %conv4.i78.3.1263, 1 *)
(* You may need to modify here *)
split v_shr_i79_3_1264 tmp_to_be_used v_conv4_i78_3_1263 1;
(*   %conv5.i80.3.1265 = trunc i32 %shr.i79.3.1264 to i8 *)
split tmp_v_shr_i79_3_1264 v_conv5_i80_3_1265 v_shr_i79_3_1264 8;
vpc v_conv5_i80_3_1265@uint8 v_conv5_i80_3_1265@uint32;
(*   %conv6.i81.3.1266 = zext i8 %conv7.i83.2.1255 to i32 *)
cast v_conv6_i81_3_1266@uint32 v_conv7_i83_2_1255@uint8;
(*   %shl.i82.3.1267 = shl i32 %conv6.i81.3.1266, 1 *)
shls discard_38 v_shl_i82_3_1267 v_conv6_i81_3_1266 1;
(*   %conv7.i83.3.1268 = trunc i32 %shl.i82.3.1267 to i8 *)
split tmp_v_shl_i82_3_1267 v_conv7_i83_3_1268 v_shl_i82_3_1267 8;
vpc v_conv7_i83_3_1268@uint8 v_conv7_i83_3_1268@uint32;
(*   %conv.i71.4.1269 = zext i8 %conv5.i80.3.1265 to i32 *)
cast v_conv_i71_4_1269@uint32 v_conv5_i80_3_1265@uint8;
(*   %and.i72.4.1270 = and i32 %conv.i71.4.1269, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_4_1270 v_conv_i71_4_1269 (0x1)@uint32;
(*   %conv1.i73.4.1271 = zext i8 %conv7.i83.3.1268 to i32 *)
cast v_conv1_i73_4_1271@uint32 v_conv7_i83_3_1268@uint8;
(*   %mul.i74.4.1272 = mul nsw i32 %and.i72.4.1270, %conv1.i73.4.1271 *)
mul v_mul_i74_4_1272 v_and_i72_4_1270 v_conv1_i73_4_1271;
(*   %conv2.i75.4.1273 = zext i8 %conv3.i77.3.1262 to i32 *)
cast v_conv2_i75_4_1273@uint32 v_conv3_i77_3_1262@uint8;
(*   %xor.i76.4.1274 = xor i32 %conv2.i75.4.1273, %mul.i74.4.1272 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_4_1274 v_conv2_i75_4_1273 v_mul_i74_4_1272;
(*   %conv3.i77.4.1275 = trunc i32 %xor.i76.4.1274 to i8 *)
split tmp_v_xor_i76_4_1274 v_conv3_i77_4_1275 v_xor_i76_4_1274 8;
vpc v_conv3_i77_4_1275@uint8 v_conv3_i77_4_1275@uint32;
(*   %conv4.i78.4.1276 = zext i8 %conv5.i80.3.1265 to i32 *)
cast v_conv4_i78_4_1276@uint32 v_conv5_i80_3_1265@uint8;
(*   %shr.i79.4.1277 = ashr i32 %conv4.i78.4.1276, 1 *)
(* You may need to modify here *)
split v_shr_i79_4_1277 tmp_to_be_used v_conv4_i78_4_1276 1;
(*   %conv5.i80.4.1278 = trunc i32 %shr.i79.4.1277 to i8 *)
split tmp_v_shr_i79_4_1277 v_conv5_i80_4_1278 v_shr_i79_4_1277 8;
vpc v_conv5_i80_4_1278@uint8 v_conv5_i80_4_1278@uint32;
(*   %conv6.i81.4.1279 = zext i8 %conv7.i83.3.1268 to i32 *)
cast v_conv6_i81_4_1279@uint32 v_conv7_i83_3_1268@uint8;
(*   %shl.i82.4.1280 = shl i32 %conv6.i81.4.1279, 1 *)
shls discard_39 v_shl_i82_4_1280 v_conv6_i81_4_1279 1;
(*   %conv7.i83.4.1281 = trunc i32 %shl.i82.4.1280 to i8 *)
split tmp_v_shl_i82_4_1280 v_conv7_i83_4_1281 v_shl_i82_4_1280 8;
vpc v_conv7_i83_4_1281@uint8 v_conv7_i83_4_1281@uint32;
(*   %conv.i71.5.1282 = zext i8 %conv5.i80.4.1278 to i32 *)
cast v_conv_i71_5_1282@uint32 v_conv5_i80_4_1278@uint8;
(*   %and.i72.5.1283 = and i32 %conv.i71.5.1282, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_5_1283 v_conv_i71_5_1282 (0x1)@uint32;
(*   %conv1.i73.5.1284 = zext i8 %conv7.i83.4.1281 to i32 *)
cast v_conv1_i73_5_1284@uint32 v_conv7_i83_4_1281@uint8;
(*   %mul.i74.5.1285 = mul nsw i32 %and.i72.5.1283, %conv1.i73.5.1284 *)
mul v_mul_i74_5_1285 v_and_i72_5_1283 v_conv1_i73_5_1284;
(*   %conv2.i75.5.1286 = zext i8 %conv3.i77.4.1275 to i32 *)
cast v_conv2_i75_5_1286@uint32 v_conv3_i77_4_1275@uint8;
(*   %xor.i76.5.1287 = xor i32 %conv2.i75.5.1286, %mul.i74.5.1285 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_5_1287 v_conv2_i75_5_1286 v_mul_i74_5_1285;
(*   %conv3.i77.5.1288 = trunc i32 %xor.i76.5.1287 to i8 *)
split tmp_v_xor_i76_5_1287 v_conv3_i77_5_1288 v_xor_i76_5_1287 8;
vpc v_conv3_i77_5_1288@uint8 v_conv3_i77_5_1288@uint32;
(*   %conv4.i78.5.1289 = zext i8 %conv5.i80.4.1278 to i32 *)
cast v_conv4_i78_5_1289@uint32 v_conv5_i80_4_1278@uint8;
(*   %shr.i79.5.1290 = ashr i32 %conv4.i78.5.1289, 1 *)
(* You may need to modify here *)
split v_shr_i79_5_1290 tmp_to_be_used v_conv4_i78_5_1289 1;
(*   %conv5.i80.5.1291 = trunc i32 %shr.i79.5.1290 to i8 *)
split tmp_v_shr_i79_5_1290 v_conv5_i80_5_1291 v_shr_i79_5_1290 8;
vpc v_conv5_i80_5_1291@uint8 v_conv5_i80_5_1291@uint32;
(*   %conv6.i81.5.1292 = zext i8 %conv7.i83.4.1281 to i32 *)
cast v_conv6_i81_5_1292@uint32 v_conv7_i83_4_1281@uint8;
(*   %shl.i82.5.1293 = shl i32 %conv6.i81.5.1292, 1 *)
shls discard_40 v_shl_i82_5_1293 v_conv6_i81_5_1292 1;
(*   %conv7.i83.5.1294 = trunc i32 %shl.i82.5.1293 to i8 *)
split tmp_v_shl_i82_5_1293 v_conv7_i83_5_1294 v_shl_i82_5_1293 8;
vpc v_conv7_i83_5_1294@uint8 v_conv7_i83_5_1294@uint32;
(*   %conv.i71.6.1295 = zext i8 %conv5.i80.5.1291 to i32 *)
cast v_conv_i71_6_1295@uint32 v_conv5_i80_5_1291@uint8;
(*   %and.i72.6.1296 = and i32 %conv.i71.6.1295, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_6_1296 v_conv_i71_6_1295 (0x1)@uint32;
(*   %conv1.i73.6.1297 = zext i8 %conv7.i83.5.1294 to i32 *)
cast v_conv1_i73_6_1297@uint32 v_conv7_i83_5_1294@uint8;
(*   %mul.i74.6.1298 = mul nsw i32 %and.i72.6.1296, %conv1.i73.6.1297 *)
mul v_mul_i74_6_1298 v_and_i72_6_1296 v_conv1_i73_6_1297;
(*   %conv2.i75.6.1299 = zext i8 %conv3.i77.5.1288 to i32 *)
cast v_conv2_i75_6_1299@uint32 v_conv3_i77_5_1288@uint8;
(*   %xor.i76.6.1300 = xor i32 %conv2.i75.6.1299, %mul.i74.6.1298 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_6_1300 v_conv2_i75_6_1299 v_mul_i74_6_1298;
(*   %conv3.i77.6.1301 = trunc i32 %xor.i76.6.1300 to i8 *)
split tmp_v_xor_i76_6_1300 v_conv3_i77_6_1301 v_xor_i76_6_1300 8;
vpc v_conv3_i77_6_1301@uint8 v_conv3_i77_6_1301@uint32;
(*   %conv4.i78.6.1302 = zext i8 %conv5.i80.5.1291 to i32 *)
cast v_conv4_i78_6_1302@uint32 v_conv5_i80_5_1291@uint8;
(*   %shr.i79.6.1303 = ashr i32 %conv4.i78.6.1302, 1 *)
(* You may need to modify here *)
split v_shr_i79_6_1303 tmp_to_be_used v_conv4_i78_6_1302 1;
(*   %conv5.i80.6.1304 = trunc i32 %shr.i79.6.1303 to i8 *)
split tmp_v_shr_i79_6_1303 v_conv5_i80_6_1304 v_shr_i79_6_1303 8;
vpc v_conv5_i80_6_1304@uint8 v_conv5_i80_6_1304@uint32;
(*   %conv6.i81.6.1305 = zext i8 %conv7.i83.5.1294 to i32 *)
cast v_conv6_i81_6_1305@uint32 v_conv7_i83_5_1294@uint8;
(*   %shl.i82.6.1306 = shl i32 %conv6.i81.6.1305, 1 *)
shls discard_41 v_shl_i82_6_1306 v_conv6_i81_6_1305 1;
(*   %conv7.i83.6.1307 = trunc i32 %shl.i82.6.1306 to i8 *)
split tmp_v_shl_i82_6_1306 v_conv7_i83_6_1307 v_shl_i82_6_1306 8;
vpc v_conv7_i83_6_1307@uint8 v_conv7_i83_6_1307@uint32;
(*   %conv.i71.7.1308 = zext i8 %conv5.i80.6.1304 to i32 *)
cast v_conv_i71_7_1308@uint32 v_conv5_i80_6_1304@uint8;
(*   %and.i72.7.1309 = and i32 %conv.i71.7.1308, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_7_1309 v_conv_i71_7_1308 (0x1)@uint32;
(*   %conv1.i73.7.1310 = zext i8 %conv7.i83.6.1307 to i32 *)
cast v_conv1_i73_7_1310@uint32 v_conv7_i83_6_1307@uint8;
(*   %mul.i74.7.1311 = mul nsw i32 %and.i72.7.1309, %conv1.i73.7.1310 *)
mul v_mul_i74_7_1311 v_and_i72_7_1309 v_conv1_i73_7_1310;
(*   %conv2.i75.7.1312 = zext i8 %conv3.i77.6.1301 to i32 *)
cast v_conv2_i75_7_1312@uint32 v_conv3_i77_6_1301@uint8;
(*   %xor.i76.7.1313 = xor i32 %conv2.i75.7.1312, %mul.i74.7.1311 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_7_1313 v_conv2_i75_7_1312 v_mul_i74_7_1311;
(*   %conv3.i77.7.1314 = trunc i32 %xor.i76.7.1313 to i8 *)
split tmp_v_xor_i76_7_1313 v_conv3_i77_7_1314 v_xor_i76_7_1313 8;
vpc v_conv3_i77_7_1314@uint8 v_conv3_i77_7_1314@uint32;
(*   %conv15.1317 = zext i8 %conv3.i77.7.1314 to i32 *)
cast v_conv15_1317@uint32 v_conv3_i77_7_1314@uint8;
(*   %xor16.1318 = xor i32 %xor.1215, %conv15.1317 *)
(* You may need to modify here *)
xor uint32 v_xor16_1318 v_xor_1215 v_conv15_1317;
(*   %conv17.1319 = trunc i32 %xor16.1318 to i8 *)
split tmp_v_xor16_1318 v_conv17_1319 v_xor16_1318 8;
vpc v_conv17_1319@uint8 v_conv17_1319@uint32;
(*   %arrayidx21.1323 = getelementptr inbounds i8, i8* %r, i64 7 *)
(*   store i8 %conv17.1319, i8* %arrayidx21.1323, align 1 *)
mov r_7 v_conv17_1319;
(*   %15 = load i8, i8* %a, align 1 *)
mov v15 a_0;
(*   %16 = load i8, i8* %b, align 1 *)
mov v16 b_0;
(*   %conv.i132 = zext i8 %16 to i32 *)
cast v_conv_i132@uint32 v16@uint8;
(*   %and.i133 = and i32 %conv.i132, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133 v_conv_i132 (0x1)@uint32;
(*   %conv1.i134 = zext i8 %15 to i32 *)
cast v_conv1_i134@uint32 v15@uint8;
(*   %mul.i135 = mul nsw i32 %and.i133, %conv1.i134 *)
mul v_mul_i135 v_and_i133 v_conv1_i134;
(*   %conv3.i138 = trunc i32 %mul.i135 to i8 *)
split tmp_v_mul_i135 v_conv3_i138 v_mul_i135 8;
vpc v_conv3_i138@uint8 v_conv3_i138@uint32;
(*   %conv4.i139 = zext i8 %16 to i32 *)
cast v_conv4_i139@uint32 v16@uint8;
(*   %shr.i140 = ashr i32 %conv4.i139, 1 *)
(* You may need to modify here *)
split v_shr_i140 tmp_to_be_used v_conv4_i139 1;
(*   %conv5.i141 = trunc i32 %shr.i140 to i8 *)
split tmp_v_shr_i140 v_conv5_i141 v_shr_i140 8;
vpc v_conv5_i141@uint8 v_conv5_i141@uint32;
(*   %conv6.i142 = zext i8 %15 to i32 *)
cast v_conv6_i142@uint32 v15@uint8;
(*   %shl.i143 = shl i32 %conv6.i142, 1 *)
shls discard_42 v_shl_i143 v_conv6_i142 1;
(*   %conv7.i144 = trunc i32 %shl.i143 to i8 *)
split tmp_v_shl_i143 v_conv7_i144 v_shl_i143 8;
vpc v_conv7_i144@uint8 v_conv7_i144@uint32;
(*   %conv.i132.1 = zext i8 %conv5.i141 to i32 *)
cast v_conv_i132_1@uint32 v_conv5_i141@uint8;
(*   %and.i133.1 = and i32 %conv.i132.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_1 v_conv_i132_1 (0x1)@uint32;
(*   %conv1.i134.1 = zext i8 %conv7.i144 to i32 *)
cast v_conv1_i134_1@uint32 v_conv7_i144@uint8;
(*   %mul.i135.1 = mul nsw i32 %and.i133.1, %conv1.i134.1 *)
mul v_mul_i135_1 v_and_i133_1 v_conv1_i134_1;
(*   %conv2.i136.1 = zext i8 %conv3.i138 to i32 *)
cast v_conv2_i136_1@uint32 v_conv3_i138@uint8;
(*   %xor.i137.1 = xor i32 %conv2.i136.1, %mul.i135.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i137_1 v_conv2_i136_1 v_mul_i135_1;
(*   %conv3.i138.1 = trunc i32 %xor.i137.1 to i8 *)
split tmp_v_xor_i137_1 v_conv3_i138_1 v_xor_i137_1 8;
vpc v_conv3_i138_1@uint8 v_conv3_i138_1@uint32;
(*   %conv4.i139.1 = zext i8 %conv5.i141 to i32 *)
cast v_conv4_i139_1@uint32 v_conv5_i141@uint8;
(*   %shr.i140.1 = ashr i32 %conv4.i139.1, 1 *)
(* You may need to modify here *)
split v_shr_i140_1 tmp_to_be_used v_conv4_i139_1 1;
(*   %conv5.i141.1 = trunc i32 %shr.i140.1 to i8 *)
split tmp_v_shr_i140_1 v_conv5_i141_1 v_shr_i140_1 8;
vpc v_conv5_i141_1@uint8 v_conv5_i141_1@uint32;
(*   %conv6.i142.1 = zext i8 %conv7.i144 to i32 *)
cast v_conv6_i142_1@uint32 v_conv7_i144@uint8;
(*   %shl.i143.1 = shl i32 %conv6.i142.1, 1 *)
shls discard_43 v_shl_i143_1 v_conv6_i142_1 1;
(*   %conv7.i144.1 = trunc i32 %shl.i143.1 to i8 *)
split tmp_v_shl_i143_1 v_conv7_i144_1 v_shl_i143_1 8;
vpc v_conv7_i144_1@uint8 v_conv7_i144_1@uint32;
(*   %conv.i132.2 = zext i8 %conv5.i141.1 to i32 *)
cast v_conv_i132_2@uint32 v_conv5_i141_1@uint8;
(*   %and.i133.2 = and i32 %conv.i132.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_2 v_conv_i132_2 (0x1)@uint32;
(*   %conv1.i134.2 = zext i8 %conv7.i144.1 to i32 *)
cast v_conv1_i134_2@uint32 v_conv7_i144_1@uint8;
(*   %mul.i135.2 = mul nsw i32 %and.i133.2, %conv1.i134.2 *)
mul v_mul_i135_2 v_and_i133_2 v_conv1_i134_2;
(*   %conv2.i136.2 = zext i8 %conv3.i138.1 to i32 *)
cast v_conv2_i136_2@uint32 v_conv3_i138_1@uint8;
(*   %xor.i137.2 = xor i32 %conv2.i136.2, %mul.i135.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i137_2 v_conv2_i136_2 v_mul_i135_2;
(*   %conv3.i138.2 = trunc i32 %xor.i137.2 to i8 *)
split tmp_v_xor_i137_2 v_conv3_i138_2 v_xor_i137_2 8;
vpc v_conv3_i138_2@uint8 v_conv3_i138_2@uint32;
(*   %conv4.i139.2 = zext i8 %conv5.i141.1 to i32 *)
cast v_conv4_i139_2@uint32 v_conv5_i141_1@uint8;
(*   %shr.i140.2 = ashr i32 %conv4.i139.2, 1 *)
(* You may need to modify here *)
split v_shr_i140_2 tmp_to_be_used v_conv4_i139_2 1;
(*   %conv5.i141.2 = trunc i32 %shr.i140.2 to i8 *)
split tmp_v_shr_i140_2 v_conv5_i141_2 v_shr_i140_2 8;
vpc v_conv5_i141_2@uint8 v_conv5_i141_2@uint32;
(*   %conv6.i142.2 = zext i8 %conv7.i144.1 to i32 *)
cast v_conv6_i142_2@uint32 v_conv7_i144_1@uint8;
(*   %shl.i143.2 = shl i32 %conv6.i142.2, 1 *)
shls discard_44 v_shl_i143_2 v_conv6_i142_2 1;
(*   %conv7.i144.2 = trunc i32 %shl.i143.2 to i8 *)
split tmp_v_shl_i143_2 v_conv7_i144_2 v_shl_i143_2 8;
vpc v_conv7_i144_2@uint8 v_conv7_i144_2@uint32;
(*   %conv.i132.3 = zext i8 %conv5.i141.2 to i32 *)
cast v_conv_i132_3@uint32 v_conv5_i141_2@uint8;
(*   %and.i133.3 = and i32 %conv.i132.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_3 v_conv_i132_3 (0x1)@uint32;
(*   %conv1.i134.3 = zext i8 %conv7.i144.2 to i32 *)
cast v_conv1_i134_3@uint32 v_conv7_i144_2@uint8;
(*   %mul.i135.3 = mul nsw i32 %and.i133.3, %conv1.i134.3 *)
mul v_mul_i135_3 v_and_i133_3 v_conv1_i134_3;
(*   %conv2.i136.3 = zext i8 %conv3.i138.2 to i32 *)
cast v_conv2_i136_3@uint32 v_conv3_i138_2@uint8;
(*   %xor.i137.3 = xor i32 %conv2.i136.3, %mul.i135.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i137_3 v_conv2_i136_3 v_mul_i135_3;
(*   %conv3.i138.3 = trunc i32 %xor.i137.3 to i8 *)
split tmp_v_xor_i137_3 v_conv3_i138_3 v_xor_i137_3 8;
vpc v_conv3_i138_3@uint8 v_conv3_i138_3@uint32;
(*   %conv4.i139.3 = zext i8 %conv5.i141.2 to i32 *)
cast v_conv4_i139_3@uint32 v_conv5_i141_2@uint8;
(*   %shr.i140.3 = ashr i32 %conv4.i139.3, 1 *)
(* You may need to modify here *)
split v_shr_i140_3 tmp_to_be_used v_conv4_i139_3 1;
(*   %conv5.i141.3 = trunc i32 %shr.i140.3 to i8 *)
split tmp_v_shr_i140_3 v_conv5_i141_3 v_shr_i140_3 8;
vpc v_conv5_i141_3@uint8 v_conv5_i141_3@uint32;
(*   %conv6.i142.3 = zext i8 %conv7.i144.2 to i32 *)
cast v_conv6_i142_3@uint32 v_conv7_i144_2@uint8;
(*   %shl.i143.3 = shl i32 %conv6.i142.3, 1 *)
shls discard_45 v_shl_i143_3 v_conv6_i142_3 1;
(*   %conv7.i144.3 = trunc i32 %shl.i143.3 to i8 *)
split tmp_v_shl_i143_3 v_conv7_i144_3 v_shl_i143_3 8;
vpc v_conv7_i144_3@uint8 v_conv7_i144_3@uint32;
(*   %conv.i132.4 = zext i8 %conv5.i141.3 to i32 *)
cast v_conv_i132_4@uint32 v_conv5_i141_3@uint8;
(*   %and.i133.4 = and i32 %conv.i132.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_4 v_conv_i132_4 (0x1)@uint32;
(*   %conv1.i134.4 = zext i8 %conv7.i144.3 to i32 *)
cast v_conv1_i134_4@uint32 v_conv7_i144_3@uint8;
(*   %mul.i135.4 = mul nsw i32 %and.i133.4, %conv1.i134.4 *)
mul v_mul_i135_4 v_and_i133_4 v_conv1_i134_4;
(*   %conv2.i136.4 = zext i8 %conv3.i138.3 to i32 *)
cast v_conv2_i136_4@uint32 v_conv3_i138_3@uint8;
(*   %xor.i137.4 = xor i32 %conv2.i136.4, %mul.i135.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i137_4 v_conv2_i136_4 v_mul_i135_4;
(*   %conv3.i138.4 = trunc i32 %xor.i137.4 to i8 *)
split tmp_v_xor_i137_4 v_conv3_i138_4 v_xor_i137_4 8;
vpc v_conv3_i138_4@uint8 v_conv3_i138_4@uint32;
(*   %conv4.i139.4 = zext i8 %conv5.i141.3 to i32 *)
cast v_conv4_i139_4@uint32 v_conv5_i141_3@uint8;
(*   %shr.i140.4 = ashr i32 %conv4.i139.4, 1 *)
(* You may need to modify here *)
split v_shr_i140_4 tmp_to_be_used v_conv4_i139_4 1;
(*   %conv5.i141.4 = trunc i32 %shr.i140.4 to i8 *)
split tmp_v_shr_i140_4 v_conv5_i141_4 v_shr_i140_4 8;
vpc v_conv5_i141_4@uint8 v_conv5_i141_4@uint32;
(*   %conv6.i142.4 = zext i8 %conv7.i144.3 to i32 *)
cast v_conv6_i142_4@uint32 v_conv7_i144_3@uint8;
(*   %shl.i143.4 = shl i32 %conv6.i142.4, 1 *)
shls discard_46 v_shl_i143_4 v_conv6_i142_4 1;
(*   %conv7.i144.4 = trunc i32 %shl.i143.4 to i8 *)
split tmp_v_shl_i143_4 v_conv7_i144_4 v_shl_i143_4 8;
vpc v_conv7_i144_4@uint8 v_conv7_i144_4@uint32;
(*   %conv.i132.5 = zext i8 %conv5.i141.4 to i32 *)
cast v_conv_i132_5@uint32 v_conv5_i141_4@uint8;
(*   %and.i133.5 = and i32 %conv.i132.5, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_5 v_conv_i132_5 (0x1)@uint32;
(*   %conv1.i134.5 = zext i8 %conv7.i144.4 to i32 *)
cast v_conv1_i134_5@uint32 v_conv7_i144_4@uint8;
(*   %mul.i135.5 = mul nsw i32 %and.i133.5, %conv1.i134.5 *)
mul v_mul_i135_5 v_and_i133_5 v_conv1_i134_5;
(*   %conv2.i136.5 = zext i8 %conv3.i138.4 to i32 *)
cast v_conv2_i136_5@uint32 v_conv3_i138_4@uint8;
(*   %xor.i137.5 = xor i32 %conv2.i136.5, %mul.i135.5 *)
(* You may need to modify here *)
xor uint32 v_xor_i137_5 v_conv2_i136_5 v_mul_i135_5;
(*   %conv3.i138.5 = trunc i32 %xor.i137.5 to i8 *)
split tmp_v_xor_i137_5 v_conv3_i138_5 v_xor_i137_5 8;
vpc v_conv3_i138_5@uint8 v_conv3_i138_5@uint32;
(*   %conv4.i139.5 = zext i8 %conv5.i141.4 to i32 *)
cast v_conv4_i139_5@uint32 v_conv5_i141_4@uint8;
(*   %shr.i140.5 = ashr i32 %conv4.i139.5, 1 *)
(* You may need to modify here *)
split v_shr_i140_5 tmp_to_be_used v_conv4_i139_5 1;
(*   %conv5.i141.5 = trunc i32 %shr.i140.5 to i8 *)
split tmp_v_shr_i140_5 v_conv5_i141_5 v_shr_i140_5 8;
vpc v_conv5_i141_5@uint8 v_conv5_i141_5@uint32;
(*   %conv6.i142.5 = zext i8 %conv7.i144.4 to i32 *)
cast v_conv6_i142_5@uint32 v_conv7_i144_4@uint8;
(*   %shl.i143.5 = shl i32 %conv6.i142.5, 1 *)
shls discard_47 v_shl_i143_5 v_conv6_i142_5 1;
(*   %conv7.i144.5 = trunc i32 %shl.i143.5 to i8 *)
split tmp_v_shl_i143_5 v_conv7_i144_5 v_shl_i143_5 8;
vpc v_conv7_i144_5@uint8 v_conv7_i144_5@uint32;
(*   %conv.i132.6 = zext i8 %conv5.i141.5 to i32 *)
cast v_conv_i132_6@uint32 v_conv5_i141_5@uint8;
(*   %and.i133.6 = and i32 %conv.i132.6, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_6 v_conv_i132_6 (0x1)@uint32;
(*   %conv1.i134.6 = zext i8 %conv7.i144.5 to i32 *)
cast v_conv1_i134_6@uint32 v_conv7_i144_5@uint8;
(*   %mul.i135.6 = mul nsw i32 %and.i133.6, %conv1.i134.6 *)
mul v_mul_i135_6 v_and_i133_6 v_conv1_i134_6;
(*   %conv2.i136.6 = zext i8 %conv3.i138.5 to i32 *)
cast v_conv2_i136_6@uint32 v_conv3_i138_5@uint8;
(*   %xor.i137.6 = xor i32 %conv2.i136.6, %mul.i135.6 *)
(* You may need to modify here *)
xor uint32 v_xor_i137_6 v_conv2_i136_6 v_mul_i135_6;
(*   %conv3.i138.6 = trunc i32 %xor.i137.6 to i8 *)
split tmp_v_xor_i137_6 v_conv3_i138_6 v_xor_i137_6 8;
vpc v_conv3_i138_6@uint8 v_conv3_i138_6@uint32;
(*   %conv4.i139.6 = zext i8 %conv5.i141.5 to i32 *)
cast v_conv4_i139_6@uint32 v_conv5_i141_5@uint8;
(*   %shr.i140.6 = ashr i32 %conv4.i139.6, 1 *)
(* You may need to modify here *)
split v_shr_i140_6 tmp_to_be_used v_conv4_i139_6 1;
(*   %conv5.i141.6 = trunc i32 %shr.i140.6 to i8 *)
split tmp_v_shr_i140_6 v_conv5_i141_6 v_shr_i140_6 8;
vpc v_conv5_i141_6@uint8 v_conv5_i141_6@uint32;
(*   %conv6.i142.6 = zext i8 %conv7.i144.5 to i32 *)
cast v_conv6_i142_6@uint32 v_conv7_i144_5@uint8;
(*   %shl.i143.6 = shl i32 %conv6.i142.6, 1 *)
shls discard_48 v_shl_i143_6 v_conv6_i142_6 1;
(*   %conv7.i144.6 = trunc i32 %shl.i143.6 to i8 *)
split tmp_v_shl_i143_6 v_conv7_i144_6 v_shl_i143_6 8;
vpc v_conv7_i144_6@uint8 v_conv7_i144_6@uint32;
(*   %conv.i132.7 = zext i8 %conv5.i141.6 to i32 *)
cast v_conv_i132_7@uint32 v_conv5_i141_6@uint8;
(*   %and.i133.7 = and i32 %conv.i132.7, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_7 v_conv_i132_7 (0x1)@uint32;
(*   %conv1.i134.7 = zext i8 %conv7.i144.6 to i32 *)
cast v_conv1_i134_7@uint32 v_conv7_i144_6@uint8;
(*   %mul.i135.7 = mul nsw i32 %and.i133.7, %conv1.i134.7 *)
mul v_mul_i135_7 v_and_i133_7 v_conv1_i134_7;
(*   %conv2.i136.7 = zext i8 %conv3.i138.6 to i32 *)
cast v_conv2_i136_7@uint32 v_conv3_i138_6@uint8;
(*   %xor.i137.7 = xor i32 %conv2.i136.7, %mul.i135.7 *)
(* You may need to modify here *)
xor uint32 v_xor_i137_7 v_conv2_i136_7 v_mul_i135_7;
(*   %conv3.i138.7 = trunc i32 %xor.i137.7 to i8 *)
split tmp_v_xor_i137_7 v_conv3_i138_7 v_xor_i137_7 8;
vpc v_conv3_i138_7@uint8 v_conv3_i138_7@uint32;
(*   store i8 %conv3.i138.7, i8* %c, align 1 *)
mov c_0 v_conv3_i138_7;
(*   %scevgep44.1 = getelementptr i8, i8* %r, i64 1 *)
(*   %17 = load i8, i8* %scevgep44.1, align 1 *)
mov v17 r_1;
(*   %conv48.1 = zext i8 %17 to i32 *)
cast v_conv48_1@uint32 v17@uint8;
(*   %18 = load i8, i8* %c, align 1 *)
mov v18 c_0;
(*   %conv51.1 = zext i8 %18 to i32 *)
cast v_conv51_1@uint32 v18@uint8;
(*   %xor52.1 = xor i32 %conv51.1, %conv48.1 *)
(* You may need to modify here *)
xor uint32 v_xor52_1 v_conv51_1 v_conv48_1;
(*   %conv53.1 = trunc i32 %xor52.1 to i8 *)
split tmp_v_xor52_1 v_conv53_1 v_xor52_1 8;
vpc v_conv53_1@uint8 v_conv53_1@uint32;
(*   store i8 %conv53.1, i8* %c, align 1 *)
mov c_0 v_conv53_1;
(*   %scevgep44.2 = getelementptr i8, i8* %r, i64 2 *)
(*   %19 = load i8, i8* %scevgep44.2, align 1 *)
mov v19 r_2;
(*   %conv48.2 = zext i8 %19 to i32 *)
cast v_conv48_2@uint32 v19@uint8;
(*   %20 = load i8, i8* %c, align 1 *)
mov v20 c_0;
(*   %conv51.2 = zext i8 %20 to i32 *)
cast v_conv51_2@uint32 v20@uint8;
(*   %xor52.2 = xor i32 %conv51.2, %conv48.2 *)
(* You may need to modify here *)
xor uint32 v_xor52_2 v_conv51_2 v_conv48_2;
(*   %conv53.2 = trunc i32 %xor52.2 to i8 *)
split tmp_v_xor52_2 v_conv53_2 v_xor52_2 8;
vpc v_conv53_2@uint8 v_conv53_2@uint32;
(*   store i8 %conv53.2, i8* %c, align 1 *)
mov c_0 v_conv53_2;
(*   %scevgep43 = getelementptr i8, i8* %r, i64 3 *)
(*   %arrayidx31.1 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %21 = load i8, i8* %arrayidx31.1, align 1 *)
mov v21 a_1;
(*   %arrayidx33.1 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %22 = load i8, i8* %arrayidx33.1, align 1 *)
mov v22 b_1;
(*   %conv.i132.147 = zext i8 %22 to i32 *)
cast v_conv_i132_147@uint32 v22@uint8;
(*   %and.i133.148 = and i32 %conv.i132.147, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_148 v_conv_i132_147 (0x1)@uint32;
(*   %conv1.i134.149 = zext i8 %21 to i32 *)
cast v_conv1_i134_149@uint32 v21@uint8;
(*   %mul.i135.150 = mul nsw i32 %and.i133.148, %conv1.i134.149 *)
mul v_mul_i135_150 v_and_i133_148 v_conv1_i134_149;
(*   %conv3.i138.151 = trunc i32 %mul.i135.150 to i8 *)
split tmp_v_mul_i135_150 v_conv3_i138_151 v_mul_i135_150 8;
vpc v_conv3_i138_151@uint8 v_conv3_i138_151@uint32;
(*   %conv4.i139.152 = zext i8 %22 to i32 *)
cast v_conv4_i139_152@uint32 v22@uint8;
(*   %shr.i140.153 = ashr i32 %conv4.i139.152, 1 *)
(* You may need to modify here *)
split v_shr_i140_153 tmp_to_be_used v_conv4_i139_152 1;
(*   %conv5.i141.154 = trunc i32 %shr.i140.153 to i8 *)
split tmp_v_shr_i140_153 v_conv5_i141_154 v_shr_i140_153 8;
vpc v_conv5_i141_154@uint8 v_conv5_i141_154@uint32;
(*   %conv6.i142.155 = zext i8 %21 to i32 *)
cast v_conv6_i142_155@uint32 v21@uint8;
(*   %shl.i143.156 = shl i32 %conv6.i142.155, 1 *)
shls discard_49 v_shl_i143_156 v_conv6_i142_155 1;
(*   %conv7.i144.157 = trunc i32 %shl.i143.156 to i8 *)
split tmp_v_shl_i143_156 v_conv7_i144_157 v_shl_i143_156 8;
vpc v_conv7_i144_157@uint8 v_conv7_i144_157@uint32;
(*   %conv.i132.1.1 = zext i8 %conv5.i141.154 to i32 *)
cast v_conv_i132_1_1@uint32 v_conv5_i141_154@uint8;
(*   %and.i133.1.1 = and i32 %conv.i132.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_1_1 v_conv_i132_1_1 (0x1)@uint32;
(*   %conv1.i134.1.1 = zext i8 %conv7.i144.157 to i32 *)
cast v_conv1_i134_1_1@uint32 v_conv7_i144_157@uint8;
(*   %mul.i135.1.1 = mul nsw i32 %and.i133.1.1, %conv1.i134.1.1 *)
mul v_mul_i135_1_1 v_and_i133_1_1 v_conv1_i134_1_1;
(*   %conv2.i136.1.1 = zext i8 %conv3.i138.151 to i32 *)
cast v_conv2_i136_1_1@uint32 v_conv3_i138_151@uint8;
(*   %xor.i137.1.1 = xor i32 %conv2.i136.1.1, %mul.i135.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i137_1_1 v_conv2_i136_1_1 v_mul_i135_1_1;
(*   %conv3.i138.1.1 = trunc i32 %xor.i137.1.1 to i8 *)
split tmp_v_xor_i137_1_1 v_conv3_i138_1_1 v_xor_i137_1_1 8;
vpc v_conv3_i138_1_1@uint8 v_conv3_i138_1_1@uint32;
(*   %conv4.i139.1.1 = zext i8 %conv5.i141.154 to i32 *)
cast v_conv4_i139_1_1@uint32 v_conv5_i141_154@uint8;
(*   %shr.i140.1.1 = ashr i32 %conv4.i139.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i140_1_1 tmp_to_be_used v_conv4_i139_1_1 1;
(*   %conv5.i141.1.1 = trunc i32 %shr.i140.1.1 to i8 *)
split tmp_v_shr_i140_1_1 v_conv5_i141_1_1 v_shr_i140_1_1 8;
vpc v_conv5_i141_1_1@uint8 v_conv5_i141_1_1@uint32;
(*   %conv6.i142.1.1 = zext i8 %conv7.i144.157 to i32 *)
cast v_conv6_i142_1_1@uint32 v_conv7_i144_157@uint8;
(*   %shl.i143.1.1 = shl i32 %conv6.i142.1.1, 1 *)
shls discard_50 v_shl_i143_1_1 v_conv6_i142_1_1 1;
(*   %conv7.i144.1.1 = trunc i32 %shl.i143.1.1 to i8 *)
split tmp_v_shl_i143_1_1 v_conv7_i144_1_1 v_shl_i143_1_1 8;
vpc v_conv7_i144_1_1@uint8 v_conv7_i144_1_1@uint32;
(*   %conv.i132.2.1 = zext i8 %conv5.i141.1.1 to i32 *)
cast v_conv_i132_2_1@uint32 v_conv5_i141_1_1@uint8;
(*   %and.i133.2.1 = and i32 %conv.i132.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_2_1 v_conv_i132_2_1 (0x1)@uint32;
(*   %conv1.i134.2.1 = zext i8 %conv7.i144.1.1 to i32 *)
cast v_conv1_i134_2_1@uint32 v_conv7_i144_1_1@uint8;
(*   %mul.i135.2.1 = mul nsw i32 %and.i133.2.1, %conv1.i134.2.1 *)
mul v_mul_i135_2_1 v_and_i133_2_1 v_conv1_i134_2_1;
(*   %conv2.i136.2.1 = zext i8 %conv3.i138.1.1 to i32 *)
cast v_conv2_i136_2_1@uint32 v_conv3_i138_1_1@uint8;
(*   %xor.i137.2.1 = xor i32 %conv2.i136.2.1, %mul.i135.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i137_2_1 v_conv2_i136_2_1 v_mul_i135_2_1;
(*   %conv3.i138.2.1 = trunc i32 %xor.i137.2.1 to i8 *)
split tmp_v_xor_i137_2_1 v_conv3_i138_2_1 v_xor_i137_2_1 8;
vpc v_conv3_i138_2_1@uint8 v_conv3_i138_2_1@uint32;
(*   %conv4.i139.2.1 = zext i8 %conv5.i141.1.1 to i32 *)
cast v_conv4_i139_2_1@uint32 v_conv5_i141_1_1@uint8;
(*   %shr.i140.2.1 = ashr i32 %conv4.i139.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i140_2_1 tmp_to_be_used v_conv4_i139_2_1 1;
(*   %conv5.i141.2.1 = trunc i32 %shr.i140.2.1 to i8 *)
split tmp_v_shr_i140_2_1 v_conv5_i141_2_1 v_shr_i140_2_1 8;
vpc v_conv5_i141_2_1@uint8 v_conv5_i141_2_1@uint32;
(*   %conv6.i142.2.1 = zext i8 %conv7.i144.1.1 to i32 *)
cast v_conv6_i142_2_1@uint32 v_conv7_i144_1_1@uint8;
(*   %shl.i143.2.1 = shl i32 %conv6.i142.2.1, 1 *)
shls discard_51 v_shl_i143_2_1 v_conv6_i142_2_1 1;
(*   %conv7.i144.2.1 = trunc i32 %shl.i143.2.1 to i8 *)
split tmp_v_shl_i143_2_1 v_conv7_i144_2_1 v_shl_i143_2_1 8;
vpc v_conv7_i144_2_1@uint8 v_conv7_i144_2_1@uint32;
(*   %conv.i132.3.1 = zext i8 %conv5.i141.2.1 to i32 *)
cast v_conv_i132_3_1@uint32 v_conv5_i141_2_1@uint8;
(*   %and.i133.3.1 = and i32 %conv.i132.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_3_1 v_conv_i132_3_1 (0x1)@uint32;
(*   %conv1.i134.3.1 = zext i8 %conv7.i144.2.1 to i32 *)
cast v_conv1_i134_3_1@uint32 v_conv7_i144_2_1@uint8;
(*   %mul.i135.3.1 = mul nsw i32 %and.i133.3.1, %conv1.i134.3.1 *)
mul v_mul_i135_3_1 v_and_i133_3_1 v_conv1_i134_3_1;
(*   %conv2.i136.3.1 = zext i8 %conv3.i138.2.1 to i32 *)
cast v_conv2_i136_3_1@uint32 v_conv3_i138_2_1@uint8;
(*   %xor.i137.3.1 = xor i32 %conv2.i136.3.1, %mul.i135.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i137_3_1 v_conv2_i136_3_1 v_mul_i135_3_1;
(*   %conv3.i138.3.1 = trunc i32 %xor.i137.3.1 to i8 *)
split tmp_v_xor_i137_3_1 v_conv3_i138_3_1 v_xor_i137_3_1 8;
vpc v_conv3_i138_3_1@uint8 v_conv3_i138_3_1@uint32;
(*   %conv4.i139.3.1 = zext i8 %conv5.i141.2.1 to i32 *)
cast v_conv4_i139_3_1@uint32 v_conv5_i141_2_1@uint8;
(*   %shr.i140.3.1 = ashr i32 %conv4.i139.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i140_3_1 tmp_to_be_used v_conv4_i139_3_1 1;
(*   %conv5.i141.3.1 = trunc i32 %shr.i140.3.1 to i8 *)
split tmp_v_shr_i140_3_1 v_conv5_i141_3_1 v_shr_i140_3_1 8;
vpc v_conv5_i141_3_1@uint8 v_conv5_i141_3_1@uint32;
(*   %conv6.i142.3.1 = zext i8 %conv7.i144.2.1 to i32 *)
cast v_conv6_i142_3_1@uint32 v_conv7_i144_2_1@uint8;
(*   %shl.i143.3.1 = shl i32 %conv6.i142.3.1, 1 *)
shls discard_52 v_shl_i143_3_1 v_conv6_i142_3_1 1;
(*   %conv7.i144.3.1 = trunc i32 %shl.i143.3.1 to i8 *)
split tmp_v_shl_i143_3_1 v_conv7_i144_3_1 v_shl_i143_3_1 8;
vpc v_conv7_i144_3_1@uint8 v_conv7_i144_3_1@uint32;
(*   %conv.i132.4.1 = zext i8 %conv5.i141.3.1 to i32 *)
cast v_conv_i132_4_1@uint32 v_conv5_i141_3_1@uint8;
(*   %and.i133.4.1 = and i32 %conv.i132.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_4_1 v_conv_i132_4_1 (0x1)@uint32;
(*   %conv1.i134.4.1 = zext i8 %conv7.i144.3.1 to i32 *)
cast v_conv1_i134_4_1@uint32 v_conv7_i144_3_1@uint8;
(*   %mul.i135.4.1 = mul nsw i32 %and.i133.4.1, %conv1.i134.4.1 *)
mul v_mul_i135_4_1 v_and_i133_4_1 v_conv1_i134_4_1;
(*   %conv2.i136.4.1 = zext i8 %conv3.i138.3.1 to i32 *)
cast v_conv2_i136_4_1@uint32 v_conv3_i138_3_1@uint8;
(*   %xor.i137.4.1 = xor i32 %conv2.i136.4.1, %mul.i135.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i137_4_1 v_conv2_i136_4_1 v_mul_i135_4_1;
(*   %conv3.i138.4.1 = trunc i32 %xor.i137.4.1 to i8 *)
split tmp_v_xor_i137_4_1 v_conv3_i138_4_1 v_xor_i137_4_1 8;
vpc v_conv3_i138_4_1@uint8 v_conv3_i138_4_1@uint32;
(*   %conv4.i139.4.1 = zext i8 %conv5.i141.3.1 to i32 *)
cast v_conv4_i139_4_1@uint32 v_conv5_i141_3_1@uint8;
(*   %shr.i140.4.1 = ashr i32 %conv4.i139.4.1, 1 *)
(* You may need to modify here *)
split v_shr_i140_4_1 tmp_to_be_used v_conv4_i139_4_1 1;
(*   %conv5.i141.4.1 = trunc i32 %shr.i140.4.1 to i8 *)
split tmp_v_shr_i140_4_1 v_conv5_i141_4_1 v_shr_i140_4_1 8;
vpc v_conv5_i141_4_1@uint8 v_conv5_i141_4_1@uint32;
(*   %conv6.i142.4.1 = zext i8 %conv7.i144.3.1 to i32 *)
cast v_conv6_i142_4_1@uint32 v_conv7_i144_3_1@uint8;
(*   %shl.i143.4.1 = shl i32 %conv6.i142.4.1, 1 *)
shls discard_53 v_shl_i143_4_1 v_conv6_i142_4_1 1;
(*   %conv7.i144.4.1 = trunc i32 %shl.i143.4.1 to i8 *)
split tmp_v_shl_i143_4_1 v_conv7_i144_4_1 v_shl_i143_4_1 8;
vpc v_conv7_i144_4_1@uint8 v_conv7_i144_4_1@uint32;
(*   %conv.i132.5.1 = zext i8 %conv5.i141.4.1 to i32 *)
cast v_conv_i132_5_1@uint32 v_conv5_i141_4_1@uint8;
(*   %and.i133.5.1 = and i32 %conv.i132.5.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_5_1 v_conv_i132_5_1 (0x1)@uint32;
(*   %conv1.i134.5.1 = zext i8 %conv7.i144.4.1 to i32 *)
cast v_conv1_i134_5_1@uint32 v_conv7_i144_4_1@uint8;
(*   %mul.i135.5.1 = mul nsw i32 %and.i133.5.1, %conv1.i134.5.1 *)
mul v_mul_i135_5_1 v_and_i133_5_1 v_conv1_i134_5_1;
(*   %conv2.i136.5.1 = zext i8 %conv3.i138.4.1 to i32 *)
cast v_conv2_i136_5_1@uint32 v_conv3_i138_4_1@uint8;
(*   %xor.i137.5.1 = xor i32 %conv2.i136.5.1, %mul.i135.5.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i137_5_1 v_conv2_i136_5_1 v_mul_i135_5_1;
(*   %conv3.i138.5.1 = trunc i32 %xor.i137.5.1 to i8 *)
split tmp_v_xor_i137_5_1 v_conv3_i138_5_1 v_xor_i137_5_1 8;
vpc v_conv3_i138_5_1@uint8 v_conv3_i138_5_1@uint32;
(*   %conv4.i139.5.1 = zext i8 %conv5.i141.4.1 to i32 *)
cast v_conv4_i139_5_1@uint32 v_conv5_i141_4_1@uint8;
(*   %shr.i140.5.1 = ashr i32 %conv4.i139.5.1, 1 *)
(* You may need to modify here *)
split v_shr_i140_5_1 tmp_to_be_used v_conv4_i139_5_1 1;
(*   %conv5.i141.5.1 = trunc i32 %shr.i140.5.1 to i8 *)
split tmp_v_shr_i140_5_1 v_conv5_i141_5_1 v_shr_i140_5_1 8;
vpc v_conv5_i141_5_1@uint8 v_conv5_i141_5_1@uint32;
(*   %conv6.i142.5.1 = zext i8 %conv7.i144.4.1 to i32 *)
cast v_conv6_i142_5_1@uint32 v_conv7_i144_4_1@uint8;
(*   %shl.i143.5.1 = shl i32 %conv6.i142.5.1, 1 *)
shls discard_54 v_shl_i143_5_1 v_conv6_i142_5_1 1;
(*   %conv7.i144.5.1 = trunc i32 %shl.i143.5.1 to i8 *)
split tmp_v_shl_i143_5_1 v_conv7_i144_5_1 v_shl_i143_5_1 8;
vpc v_conv7_i144_5_1@uint8 v_conv7_i144_5_1@uint32;
(*   %conv.i132.6.1 = zext i8 %conv5.i141.5.1 to i32 *)
cast v_conv_i132_6_1@uint32 v_conv5_i141_5_1@uint8;
(*   %and.i133.6.1 = and i32 %conv.i132.6.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_6_1 v_conv_i132_6_1 (0x1)@uint32;
(*   %conv1.i134.6.1 = zext i8 %conv7.i144.5.1 to i32 *)
cast v_conv1_i134_6_1@uint32 v_conv7_i144_5_1@uint8;
(*   %mul.i135.6.1 = mul nsw i32 %and.i133.6.1, %conv1.i134.6.1 *)
mul v_mul_i135_6_1 v_and_i133_6_1 v_conv1_i134_6_1;
(*   %conv2.i136.6.1 = zext i8 %conv3.i138.5.1 to i32 *)
cast v_conv2_i136_6_1@uint32 v_conv3_i138_5_1@uint8;
(*   %xor.i137.6.1 = xor i32 %conv2.i136.6.1, %mul.i135.6.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i137_6_1 v_conv2_i136_6_1 v_mul_i135_6_1;
(*   %conv3.i138.6.1 = trunc i32 %xor.i137.6.1 to i8 *)
split tmp_v_xor_i137_6_1 v_conv3_i138_6_1 v_xor_i137_6_1 8;
vpc v_conv3_i138_6_1@uint8 v_conv3_i138_6_1@uint32;
(*   %conv4.i139.6.1 = zext i8 %conv5.i141.5.1 to i32 *)
cast v_conv4_i139_6_1@uint32 v_conv5_i141_5_1@uint8;
(*   %shr.i140.6.1 = ashr i32 %conv4.i139.6.1, 1 *)
(* You may need to modify here *)
split v_shr_i140_6_1 tmp_to_be_used v_conv4_i139_6_1 1;
(*   %conv5.i141.6.1 = trunc i32 %shr.i140.6.1 to i8 *)
split tmp_v_shr_i140_6_1 v_conv5_i141_6_1 v_shr_i140_6_1 8;
vpc v_conv5_i141_6_1@uint8 v_conv5_i141_6_1@uint32;
(*   %conv6.i142.6.1 = zext i8 %conv7.i144.5.1 to i32 *)
cast v_conv6_i142_6_1@uint32 v_conv7_i144_5_1@uint8;
(*   %shl.i143.6.1 = shl i32 %conv6.i142.6.1, 1 *)
shls discard_55 v_shl_i143_6_1 v_conv6_i142_6_1 1;
(*   %conv7.i144.6.1 = trunc i32 %shl.i143.6.1 to i8 *)
split tmp_v_shl_i143_6_1 v_conv7_i144_6_1 v_shl_i143_6_1 8;
vpc v_conv7_i144_6_1@uint8 v_conv7_i144_6_1@uint32;
(*   %conv.i132.7.1 = zext i8 %conv5.i141.6.1 to i32 *)
cast v_conv_i132_7_1@uint32 v_conv5_i141_6_1@uint8;
(*   %and.i133.7.1 = and i32 %conv.i132.7.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_7_1 v_conv_i132_7_1 (0x1)@uint32;
(*   %conv1.i134.7.1 = zext i8 %conv7.i144.6.1 to i32 *)
cast v_conv1_i134_7_1@uint32 v_conv7_i144_6_1@uint8;
(*   %mul.i135.7.1 = mul nsw i32 %and.i133.7.1, %conv1.i134.7.1 *)
mul v_mul_i135_7_1 v_and_i133_7_1 v_conv1_i134_7_1;
(*   %conv2.i136.7.1 = zext i8 %conv3.i138.6.1 to i32 *)
cast v_conv2_i136_7_1@uint32 v_conv3_i138_6_1@uint8;
(*   %xor.i137.7.1 = xor i32 %conv2.i136.7.1, %mul.i135.7.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i137_7_1 v_conv2_i136_7_1 v_mul_i135_7_1;
(*   %conv3.i138.7.1 = trunc i32 %xor.i137.7.1 to i8 *)
split tmp_v_xor_i137_7_1 v_conv3_i138_7_1 v_xor_i137_7_1 8;
vpc v_conv3_i138_7_1@uint8 v_conv3_i138_7_1@uint32;
(*   %arrayidx36.1 = getelementptr inbounds i8, i8* %c, i64 1 *)
(*   store i8 %conv3.i138.7.1, i8* %arrayidx36.1, align 1 *)
mov c_1 v_conv3_i138_7_1;
(*   %arrayidx50.1 = getelementptr inbounds i8, i8* %c, i64 1 *)
(*   %23 = load i8, i8* %scevgep43, align 1 *)
mov v23 r_3;
(*   %conv48.160 = zext i8 %23 to i32 *)
cast v_conv48_160@uint32 v23@uint8;
(*   %24 = load i8, i8* %arrayidx50.1, align 1 *)
mov v24 c_1;
(*   %conv51.161 = zext i8 %24 to i32 *)
cast v_conv51_161@uint32 v24@uint8;
(*   %xor52.162 = xor i32 %conv51.161, %conv48.160 *)
(* You may need to modify here *)
xor uint32 v_xor52_162 v_conv51_161 v_conv48_160;
(*   %conv53.163 = trunc i32 %xor52.162 to i8 *)
split tmp_v_xor52_162 v_conv53_163 v_xor52_162 8;
vpc v_conv53_163@uint8 v_conv53_163@uint32;
(*   store i8 %conv53.163, i8* %arrayidx50.1, align 1 *)
mov c_1 v_conv53_163;
(*   %scevgep44.2.1 = getelementptr i8, i8* %scevgep43, i64 2 *)
(*   %25 = load i8, i8* %scevgep44.2.1, align 1 *)
mov v25 r_5;
(*   %conv48.2.1 = zext i8 %25 to i32 *)
cast v_conv48_2_1@uint32 v25@uint8;
(*   %26 = load i8, i8* %arrayidx50.1, align 1 *)
mov v26 c_1;
(*   %conv51.2.1 = zext i8 %26 to i32 *)
cast v_conv51_2_1@uint32 v26@uint8;
(*   %xor52.2.1 = xor i32 %conv51.2.1, %conv48.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor52_2_1 v_conv51_2_1 v_conv48_2_1;
(*   %conv53.2.1 = trunc i32 %xor52.2.1 to i8 *)
split tmp_v_xor52_2_1 v_conv53_2_1 v_xor52_2_1 8;
vpc v_conv53_2_1@uint8 v_conv53_2_1@uint32;
(*   store i8 %conv53.2.1, i8* %arrayidx50.1, align 1 *)
mov c_1 v_conv53_2_1;
(*   %scevgep43.1 = getelementptr i8, i8* %scevgep43, i64 3 *)
(*   %arrayidx31.2 = getelementptr inbounds i8, i8* %a, i64 2 *)
(*   %27 = load i8, i8* %arrayidx31.2, align 1 *)
mov v27 a_2;
(*   %arrayidx33.2 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %28 = load i8, i8* %arrayidx33.2, align 1 *)
mov v28 b_2;
(*   %conv.i132.267 = zext i8 %28 to i32 *)
cast v_conv_i132_267@uint32 v28@uint8;
(*   %and.i133.268 = and i32 %conv.i132.267, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_268 v_conv_i132_267 (0x1)@uint32;
(*   %conv1.i134.269 = zext i8 %27 to i32 *)
cast v_conv1_i134_269@uint32 v27@uint8;
(*   %mul.i135.270 = mul nsw i32 %and.i133.268, %conv1.i134.269 *)
mul v_mul_i135_270 v_and_i133_268 v_conv1_i134_269;
(*   %conv3.i138.271 = trunc i32 %mul.i135.270 to i8 *)
split tmp_v_mul_i135_270 v_conv3_i138_271 v_mul_i135_270 8;
vpc v_conv3_i138_271@uint8 v_conv3_i138_271@uint32;
(*   %conv4.i139.272 = zext i8 %28 to i32 *)
cast v_conv4_i139_272@uint32 v28@uint8;
(*   %shr.i140.273 = ashr i32 %conv4.i139.272, 1 *)
(* You may need to modify here *)
split v_shr_i140_273 tmp_to_be_used v_conv4_i139_272 1;
(*   %conv5.i141.274 = trunc i32 %shr.i140.273 to i8 *)
split tmp_v_shr_i140_273 v_conv5_i141_274 v_shr_i140_273 8;
vpc v_conv5_i141_274@uint8 v_conv5_i141_274@uint32;
(*   %conv6.i142.275 = zext i8 %27 to i32 *)
cast v_conv6_i142_275@uint32 v27@uint8;
(*   %shl.i143.276 = shl i32 %conv6.i142.275, 1 *)
shls discard_56 v_shl_i143_276 v_conv6_i142_275 1;
(*   %conv7.i144.277 = trunc i32 %shl.i143.276 to i8 *)
split tmp_v_shl_i143_276 v_conv7_i144_277 v_shl_i143_276 8;
vpc v_conv7_i144_277@uint8 v_conv7_i144_277@uint32;
(*   %conv.i132.1.2 = zext i8 %conv5.i141.274 to i32 *)
cast v_conv_i132_1_2@uint32 v_conv5_i141_274@uint8;
(*   %and.i133.1.2 = and i32 %conv.i132.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_1_2 v_conv_i132_1_2 (0x1)@uint32;
(*   %conv1.i134.1.2 = zext i8 %conv7.i144.277 to i32 *)
cast v_conv1_i134_1_2@uint32 v_conv7_i144_277@uint8;
(*   %mul.i135.1.2 = mul nsw i32 %and.i133.1.2, %conv1.i134.1.2 *)
mul v_mul_i135_1_2 v_and_i133_1_2 v_conv1_i134_1_2;
(*   %conv2.i136.1.2 = zext i8 %conv3.i138.271 to i32 *)
cast v_conv2_i136_1_2@uint32 v_conv3_i138_271@uint8;
(*   %xor.i137.1.2 = xor i32 %conv2.i136.1.2, %mul.i135.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i137_1_2 v_conv2_i136_1_2 v_mul_i135_1_2;
(*   %conv3.i138.1.2 = trunc i32 %xor.i137.1.2 to i8 *)
split tmp_v_xor_i137_1_2 v_conv3_i138_1_2 v_xor_i137_1_2 8;
vpc v_conv3_i138_1_2@uint8 v_conv3_i138_1_2@uint32;
(*   %conv4.i139.1.2 = zext i8 %conv5.i141.274 to i32 *)
cast v_conv4_i139_1_2@uint32 v_conv5_i141_274@uint8;
(*   %shr.i140.1.2 = ashr i32 %conv4.i139.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i140_1_2 tmp_to_be_used v_conv4_i139_1_2 1;
(*   %conv5.i141.1.2 = trunc i32 %shr.i140.1.2 to i8 *)
split tmp_v_shr_i140_1_2 v_conv5_i141_1_2 v_shr_i140_1_2 8;
vpc v_conv5_i141_1_2@uint8 v_conv5_i141_1_2@uint32;
(*   %conv6.i142.1.2 = zext i8 %conv7.i144.277 to i32 *)
cast v_conv6_i142_1_2@uint32 v_conv7_i144_277@uint8;
(*   %shl.i143.1.2 = shl i32 %conv6.i142.1.2, 1 *)
shls discard_57 v_shl_i143_1_2 v_conv6_i142_1_2 1;
(*   %conv7.i144.1.2 = trunc i32 %shl.i143.1.2 to i8 *)
split tmp_v_shl_i143_1_2 v_conv7_i144_1_2 v_shl_i143_1_2 8;
vpc v_conv7_i144_1_2@uint8 v_conv7_i144_1_2@uint32;
(*   %conv.i132.2.2 = zext i8 %conv5.i141.1.2 to i32 *)
cast v_conv_i132_2_2@uint32 v_conv5_i141_1_2@uint8;
(*   %and.i133.2.2 = and i32 %conv.i132.2.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_2_2 v_conv_i132_2_2 (0x1)@uint32;
(*   %conv1.i134.2.2 = zext i8 %conv7.i144.1.2 to i32 *)
cast v_conv1_i134_2_2@uint32 v_conv7_i144_1_2@uint8;
(*   %mul.i135.2.2 = mul nsw i32 %and.i133.2.2, %conv1.i134.2.2 *)
mul v_mul_i135_2_2 v_and_i133_2_2 v_conv1_i134_2_2;
(*   %conv2.i136.2.2 = zext i8 %conv3.i138.1.2 to i32 *)
cast v_conv2_i136_2_2@uint32 v_conv3_i138_1_2@uint8;
(*   %xor.i137.2.2 = xor i32 %conv2.i136.2.2, %mul.i135.2.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i137_2_2 v_conv2_i136_2_2 v_mul_i135_2_2;
(*   %conv3.i138.2.2 = trunc i32 %xor.i137.2.2 to i8 *)
split tmp_v_xor_i137_2_2 v_conv3_i138_2_2 v_xor_i137_2_2 8;
vpc v_conv3_i138_2_2@uint8 v_conv3_i138_2_2@uint32;
(*   %conv4.i139.2.2 = zext i8 %conv5.i141.1.2 to i32 *)
cast v_conv4_i139_2_2@uint32 v_conv5_i141_1_2@uint8;
(*   %shr.i140.2.2 = ashr i32 %conv4.i139.2.2, 1 *)
(* You may need to modify here *)
split v_shr_i140_2_2 tmp_to_be_used v_conv4_i139_2_2 1;
(*   %conv5.i141.2.2 = trunc i32 %shr.i140.2.2 to i8 *)
split tmp_v_shr_i140_2_2 v_conv5_i141_2_2 v_shr_i140_2_2 8;
vpc v_conv5_i141_2_2@uint8 v_conv5_i141_2_2@uint32;
(*   %conv6.i142.2.2 = zext i8 %conv7.i144.1.2 to i32 *)
cast v_conv6_i142_2_2@uint32 v_conv7_i144_1_2@uint8;
(*   %shl.i143.2.2 = shl i32 %conv6.i142.2.2, 1 *)
shls discard_58 v_shl_i143_2_2 v_conv6_i142_2_2 1;
(*   %conv7.i144.2.2 = trunc i32 %shl.i143.2.2 to i8 *)
split tmp_v_shl_i143_2_2 v_conv7_i144_2_2 v_shl_i143_2_2 8;
vpc v_conv7_i144_2_2@uint8 v_conv7_i144_2_2@uint32;
(*   %conv.i132.3.2 = zext i8 %conv5.i141.2.2 to i32 *)
cast v_conv_i132_3_2@uint32 v_conv5_i141_2_2@uint8;
(*   %and.i133.3.2 = and i32 %conv.i132.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_3_2 v_conv_i132_3_2 (0x1)@uint32;
(*   %conv1.i134.3.2 = zext i8 %conv7.i144.2.2 to i32 *)
cast v_conv1_i134_3_2@uint32 v_conv7_i144_2_2@uint8;
(*   %mul.i135.3.2 = mul nsw i32 %and.i133.3.2, %conv1.i134.3.2 *)
mul v_mul_i135_3_2 v_and_i133_3_2 v_conv1_i134_3_2;
(*   %conv2.i136.3.2 = zext i8 %conv3.i138.2.2 to i32 *)
cast v_conv2_i136_3_2@uint32 v_conv3_i138_2_2@uint8;
(*   %xor.i137.3.2 = xor i32 %conv2.i136.3.2, %mul.i135.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i137_3_2 v_conv2_i136_3_2 v_mul_i135_3_2;
(*   %conv3.i138.3.2 = trunc i32 %xor.i137.3.2 to i8 *)
split tmp_v_xor_i137_3_2 v_conv3_i138_3_2 v_xor_i137_3_2 8;
vpc v_conv3_i138_3_2@uint8 v_conv3_i138_3_2@uint32;
(*   %conv4.i139.3.2 = zext i8 %conv5.i141.2.2 to i32 *)
cast v_conv4_i139_3_2@uint32 v_conv5_i141_2_2@uint8;
(*   %shr.i140.3.2 = ashr i32 %conv4.i139.3.2, 1 *)
(* You may need to modify here *)
split v_shr_i140_3_2 tmp_to_be_used v_conv4_i139_3_2 1;
(*   %conv5.i141.3.2 = trunc i32 %shr.i140.3.2 to i8 *)
split tmp_v_shr_i140_3_2 v_conv5_i141_3_2 v_shr_i140_3_2 8;
vpc v_conv5_i141_3_2@uint8 v_conv5_i141_3_2@uint32;
(*   %conv6.i142.3.2 = zext i8 %conv7.i144.2.2 to i32 *)
cast v_conv6_i142_3_2@uint32 v_conv7_i144_2_2@uint8;
(*   %shl.i143.3.2 = shl i32 %conv6.i142.3.2, 1 *)
shls discard_59 v_shl_i143_3_2 v_conv6_i142_3_2 1;
(*   %conv7.i144.3.2 = trunc i32 %shl.i143.3.2 to i8 *)
split tmp_v_shl_i143_3_2 v_conv7_i144_3_2 v_shl_i143_3_2 8;
vpc v_conv7_i144_3_2@uint8 v_conv7_i144_3_2@uint32;
(*   %conv.i132.4.2 = zext i8 %conv5.i141.3.2 to i32 *)
cast v_conv_i132_4_2@uint32 v_conv5_i141_3_2@uint8;
(*   %and.i133.4.2 = and i32 %conv.i132.4.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_4_2 v_conv_i132_4_2 (0x1)@uint32;
(*   %conv1.i134.4.2 = zext i8 %conv7.i144.3.2 to i32 *)
cast v_conv1_i134_4_2@uint32 v_conv7_i144_3_2@uint8;
(*   %mul.i135.4.2 = mul nsw i32 %and.i133.4.2, %conv1.i134.4.2 *)
mul v_mul_i135_4_2 v_and_i133_4_2 v_conv1_i134_4_2;
(*   %conv2.i136.4.2 = zext i8 %conv3.i138.3.2 to i32 *)
cast v_conv2_i136_4_2@uint32 v_conv3_i138_3_2@uint8;
(*   %xor.i137.4.2 = xor i32 %conv2.i136.4.2, %mul.i135.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i137_4_2 v_conv2_i136_4_2 v_mul_i135_4_2;
(*   %conv3.i138.4.2 = trunc i32 %xor.i137.4.2 to i8 *)
split tmp_v_xor_i137_4_2 v_conv3_i138_4_2 v_xor_i137_4_2 8;
vpc v_conv3_i138_4_2@uint8 v_conv3_i138_4_2@uint32;
(*   %conv4.i139.4.2 = zext i8 %conv5.i141.3.2 to i32 *)
cast v_conv4_i139_4_2@uint32 v_conv5_i141_3_2@uint8;
(*   %shr.i140.4.2 = ashr i32 %conv4.i139.4.2, 1 *)
(* You may need to modify here *)
split v_shr_i140_4_2 tmp_to_be_used v_conv4_i139_4_2 1;
(*   %conv5.i141.4.2 = trunc i32 %shr.i140.4.2 to i8 *)
split tmp_v_shr_i140_4_2 v_conv5_i141_4_2 v_shr_i140_4_2 8;
vpc v_conv5_i141_4_2@uint8 v_conv5_i141_4_2@uint32;
(*   %conv6.i142.4.2 = zext i8 %conv7.i144.3.2 to i32 *)
cast v_conv6_i142_4_2@uint32 v_conv7_i144_3_2@uint8;
(*   %shl.i143.4.2 = shl i32 %conv6.i142.4.2, 1 *)
shls discard_60 v_shl_i143_4_2 v_conv6_i142_4_2 1;
(*   %conv7.i144.4.2 = trunc i32 %shl.i143.4.2 to i8 *)
split tmp_v_shl_i143_4_2 v_conv7_i144_4_2 v_shl_i143_4_2 8;
vpc v_conv7_i144_4_2@uint8 v_conv7_i144_4_2@uint32;
(*   %conv.i132.5.2 = zext i8 %conv5.i141.4.2 to i32 *)
cast v_conv_i132_5_2@uint32 v_conv5_i141_4_2@uint8;
(*   %and.i133.5.2 = and i32 %conv.i132.5.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_5_2 v_conv_i132_5_2 (0x1)@uint32;
(*   %conv1.i134.5.2 = zext i8 %conv7.i144.4.2 to i32 *)
cast v_conv1_i134_5_2@uint32 v_conv7_i144_4_2@uint8;
(*   %mul.i135.5.2 = mul nsw i32 %and.i133.5.2, %conv1.i134.5.2 *)
mul v_mul_i135_5_2 v_and_i133_5_2 v_conv1_i134_5_2;
(*   %conv2.i136.5.2 = zext i8 %conv3.i138.4.2 to i32 *)
cast v_conv2_i136_5_2@uint32 v_conv3_i138_4_2@uint8;
(*   %xor.i137.5.2 = xor i32 %conv2.i136.5.2, %mul.i135.5.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i137_5_2 v_conv2_i136_5_2 v_mul_i135_5_2;
(*   %conv3.i138.5.2 = trunc i32 %xor.i137.5.2 to i8 *)
split tmp_v_xor_i137_5_2 v_conv3_i138_5_2 v_xor_i137_5_2 8;
vpc v_conv3_i138_5_2@uint8 v_conv3_i138_5_2@uint32;
(*   %conv4.i139.5.2 = zext i8 %conv5.i141.4.2 to i32 *)
cast v_conv4_i139_5_2@uint32 v_conv5_i141_4_2@uint8;
(*   %shr.i140.5.2 = ashr i32 %conv4.i139.5.2, 1 *)
(* You may need to modify here *)
split v_shr_i140_5_2 tmp_to_be_used v_conv4_i139_5_2 1;
(*   %conv5.i141.5.2 = trunc i32 %shr.i140.5.2 to i8 *)
split tmp_v_shr_i140_5_2 v_conv5_i141_5_2 v_shr_i140_5_2 8;
vpc v_conv5_i141_5_2@uint8 v_conv5_i141_5_2@uint32;
(*   %conv6.i142.5.2 = zext i8 %conv7.i144.4.2 to i32 *)
cast v_conv6_i142_5_2@uint32 v_conv7_i144_4_2@uint8;
(*   %shl.i143.5.2 = shl i32 %conv6.i142.5.2, 1 *)
shls discard_61 v_shl_i143_5_2 v_conv6_i142_5_2 1;
(*   %conv7.i144.5.2 = trunc i32 %shl.i143.5.2 to i8 *)
split tmp_v_shl_i143_5_2 v_conv7_i144_5_2 v_shl_i143_5_2 8;
vpc v_conv7_i144_5_2@uint8 v_conv7_i144_5_2@uint32;
(*   %conv.i132.6.2 = zext i8 %conv5.i141.5.2 to i32 *)
cast v_conv_i132_6_2@uint32 v_conv5_i141_5_2@uint8;
(*   %and.i133.6.2 = and i32 %conv.i132.6.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_6_2 v_conv_i132_6_2 (0x1)@uint32;
(*   %conv1.i134.6.2 = zext i8 %conv7.i144.5.2 to i32 *)
cast v_conv1_i134_6_2@uint32 v_conv7_i144_5_2@uint8;
(*   %mul.i135.6.2 = mul nsw i32 %and.i133.6.2, %conv1.i134.6.2 *)
mul v_mul_i135_6_2 v_and_i133_6_2 v_conv1_i134_6_2;
(*   %conv2.i136.6.2 = zext i8 %conv3.i138.5.2 to i32 *)
cast v_conv2_i136_6_2@uint32 v_conv3_i138_5_2@uint8;
(*   %xor.i137.6.2 = xor i32 %conv2.i136.6.2, %mul.i135.6.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i137_6_2 v_conv2_i136_6_2 v_mul_i135_6_2;
(*   %conv3.i138.6.2 = trunc i32 %xor.i137.6.2 to i8 *)
split tmp_v_xor_i137_6_2 v_conv3_i138_6_2 v_xor_i137_6_2 8;
vpc v_conv3_i138_6_2@uint8 v_conv3_i138_6_2@uint32;
(*   %conv4.i139.6.2 = zext i8 %conv5.i141.5.2 to i32 *)
cast v_conv4_i139_6_2@uint32 v_conv5_i141_5_2@uint8;
(*   %shr.i140.6.2 = ashr i32 %conv4.i139.6.2, 1 *)
(* You may need to modify here *)
split v_shr_i140_6_2 tmp_to_be_used v_conv4_i139_6_2 1;
(*   %conv5.i141.6.2 = trunc i32 %shr.i140.6.2 to i8 *)
split tmp_v_shr_i140_6_2 v_conv5_i141_6_2 v_shr_i140_6_2 8;
vpc v_conv5_i141_6_2@uint8 v_conv5_i141_6_2@uint32;
(*   %conv6.i142.6.2 = zext i8 %conv7.i144.5.2 to i32 *)
cast v_conv6_i142_6_2@uint32 v_conv7_i144_5_2@uint8;
(*   %shl.i143.6.2 = shl i32 %conv6.i142.6.2, 1 *)
shls discard_62 v_shl_i143_6_2 v_conv6_i142_6_2 1;
(*   %conv7.i144.6.2 = trunc i32 %shl.i143.6.2 to i8 *)
split tmp_v_shl_i143_6_2 v_conv7_i144_6_2 v_shl_i143_6_2 8;
vpc v_conv7_i144_6_2@uint8 v_conv7_i144_6_2@uint32;
(*   %conv.i132.7.2 = zext i8 %conv5.i141.6.2 to i32 *)
cast v_conv_i132_7_2@uint32 v_conv5_i141_6_2@uint8;
(*   %and.i133.7.2 = and i32 %conv.i132.7.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_7_2 v_conv_i132_7_2 (0x1)@uint32;
(*   %conv1.i134.7.2 = zext i8 %conv7.i144.6.2 to i32 *)
cast v_conv1_i134_7_2@uint32 v_conv7_i144_6_2@uint8;
(*   %mul.i135.7.2 = mul nsw i32 %and.i133.7.2, %conv1.i134.7.2 *)
mul v_mul_i135_7_2 v_and_i133_7_2 v_conv1_i134_7_2;
(*   %conv2.i136.7.2 = zext i8 %conv3.i138.6.2 to i32 *)
cast v_conv2_i136_7_2@uint32 v_conv3_i138_6_2@uint8;
(*   %xor.i137.7.2 = xor i32 %conv2.i136.7.2, %mul.i135.7.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i137_7_2 v_conv2_i136_7_2 v_mul_i135_7_2;
(*   %conv3.i138.7.2 = trunc i32 %xor.i137.7.2 to i8 *)
split tmp_v_xor_i137_7_2 v_conv3_i138_7_2 v_xor_i137_7_2 8;
vpc v_conv3_i138_7_2@uint8 v_conv3_i138_7_2@uint32;
(*   %arrayidx36.2 = getelementptr inbounds i8, i8* %c, i64 2 *)
(*   store i8 %conv3.i138.7.2, i8* %arrayidx36.2, align 1 *)
mov c_2 v_conv3_i138_7_2;
(*   %arrayidx50.2 = getelementptr inbounds i8, i8* %c, i64 2 *)
(*   %29 = load i8, i8* %scevgep43.1, align 1 *)
mov v29 r_6;
(*   %conv48.280 = zext i8 %29 to i32 *)
cast v_conv48_280@uint32 v29@uint8;
(*   %30 = load i8, i8* %arrayidx50.2, align 1 *)
mov v30 c_2;
(*   %conv51.281 = zext i8 %30 to i32 *)
cast v_conv51_281@uint32 v30@uint8;
(*   %xor52.282 = xor i32 %conv51.281, %conv48.280 *)
(* You may need to modify here *)
xor uint32 v_xor52_282 v_conv51_281 v_conv48_280;
(*   %conv53.283 = trunc i32 %xor52.282 to i8 *)
split tmp_v_xor52_282 v_conv53_283 v_xor52_282 8;
vpc v_conv53_283@uint8 v_conv53_283@uint32;
(*   store i8 %conv53.283, i8* %arrayidx50.2, align 1 *)
mov c_2 v_conv53_283;
(*   %scevgep44.1.2 = getelementptr i8, i8* %scevgep43.1, i64 1 *)
(*   %31 = load i8, i8* %scevgep44.1.2, align 1 *)
mov v31 r_7;
(*   %conv48.1.2 = zext i8 %31 to i32 *)
cast v_conv48_1_2@uint32 v31@uint8;
(*   %32 = load i8, i8* %arrayidx50.2, align 1 *)
mov v32 c_2;
(*   %conv51.1.2 = zext i8 %32 to i32 *)
cast v_conv51_1_2@uint32 v32@uint8;
(*   %xor52.1.2 = xor i32 %conv51.1.2, %conv48.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor52_1_2 v_conv51_1_2 v_conv48_1_2;
(*   %conv53.1.2 = trunc i32 %xor52.1.2 to i8 *)
split tmp_v_xor52_1_2 v_conv53_1_2 v_xor52_1_2 8;
vpc v_conv53_1_2@uint8 v_conv53_1_2@uint32;
(*   store i8 %conv53.1.2, i8* %arrayidx50.2, align 1 *)
mov c_2 v_conv53_1_2;
(*   %33 = load i8, i8* %a, align 1 *)
mov v33 a_0;
(*   %scevgep34.1 = getelementptr i8, i8* %a, i64 1 *)
(*   %34 = load i8, i8* %scevgep34.1, align 1 *)
mov v34 a_1;
(*   %conv.i.i158.1 = zext i8 %34 to i32 *)
cast v_conv_i_i158_1@uint32 v34@uint8;
(*   %conv1.i.i159.1 = zext i8 %33 to i32 *)
cast v_conv1_i_i159_1@uint32 v33@uint8;
(*   %xor.i.i160.1 = xor i32 %conv1.i.i159.1, %conv.i.i158.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i160_1 v_conv1_i_i159_1 v_conv_i_i158_1;
(*   %conv2.i.i161.1 = trunc i32 %xor.i.i160.1 to i8 *)
split tmp_v_xor_i_i160_1 v_conv2_i_i161_1 v_xor_i_i160_1 8;
vpc v_conv2_i_i161_1@uint8 v_conv2_i_i161_1@uint32;
(*   %scevgep34.2 = getelementptr i8, i8* %a, i64 2 *)
(*   %35 = load i8, i8* %scevgep34.2, align 1 *)
mov v35 a_2;
(*   %conv.i.i158.2 = zext i8 %35 to i32 *)
cast v_conv_i_i158_2@uint32 v35@uint8;
(*   %conv1.i.i159.2 = zext i8 %conv2.i.i161.1 to i32 *)
cast v_conv1_i_i159_2@uint32 v_conv2_i_i161_1@uint8;
(*   %xor.i.i160.2 = xor i32 %conv1.i.i159.2, %conv.i.i158.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i160_2 v_conv1_i_i159_2 v_conv_i_i158_2;
(*   %conv2.i.i161.2 = trunc i32 %xor.i.i160.2 to i8 *)
split tmp_v_xor_i_i160_2 v_conv2_i_i161_2 v_xor_i_i160_2 8;
vpc v_conv2_i_i161_2@uint8 v_conv2_i_i161_2@uint32;
(*   %36 = load i8, i8* %b, align 1 *)
mov v36 b_0;
(*   %scevgep30.1 = getelementptr i8, i8* %b, i64 1 *)
(*   %37 = load i8, i8* %scevgep30.1, align 1 *)
mov v37 b_1;
(*   %conv.i.i119.1 = zext i8 %37 to i32 *)
cast v_conv_i_i119_1@uint32 v37@uint8;
(*   %conv1.i.i120.1 = zext i8 %36 to i32 *)
cast v_conv1_i_i120_1@uint32 v36@uint8;
(*   %xor.i.i121.1 = xor i32 %conv1.i.i120.1, %conv.i.i119.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i121_1 v_conv1_i_i120_1 v_conv_i_i119_1;
(*   %conv2.i.i122.1 = trunc i32 %xor.i.i121.1 to i8 *)
split tmp_v_xor_i_i121_1 v_conv2_i_i122_1 v_xor_i_i121_1 8;
vpc v_conv2_i_i122_1@uint8 v_conv2_i_i122_1@uint32;
(*   %scevgep30.2 = getelementptr i8, i8* %b, i64 2 *)
(*   %38 = load i8, i8* %scevgep30.2, align 1 *)
mov v38 b_2;
(*   %conv.i.i119.2 = zext i8 %38 to i32 *)
cast v_conv_i_i119_2@uint32 v38@uint8;
(*   %conv1.i.i120.2 = zext i8 %conv2.i.i122.1 to i32 *)
cast v_conv1_i_i120_2@uint32 v_conv2_i_i122_1@uint8;
(*   %xor.i.i121.2 = xor i32 %conv1.i.i120.2, %conv.i.i119.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i121_2 v_conv1_i_i120_2 v_conv_i_i119_2;
(*   %conv2.i.i122.2 = trunc i32 %xor.i.i121.2 to i8 *)
split tmp_v_xor_i_i121_2 v_conv2_i_i122_2 v_xor_i_i121_2 8;
vpc v_conv2_i_i122_2@uint8 v_conv2_i_i122_2@uint32;
(*   %conv.i93 = zext i8 %conv2.i.i122.2 to i32 *)
cast v_conv_i93@uint32 v_conv2_i_i122_2@uint8;
(*   %and.i94 = and i32 %conv.i93, 1 *)
(* You may need to modify here *)
and uint32 v_and_i94 v_conv_i93 (0x1)@uint32;
(*   %conv1.i95 = zext i8 %conv2.i.i161.2 to i32 *)
cast v_conv1_i95@uint32 v_conv2_i_i161_2@uint8;
(*   %mul.i96 = mul nsw i32 %and.i94, %conv1.i95 *)
mul v_mul_i96 v_and_i94 v_conv1_i95;
(*   %conv3.i99 = trunc i32 %mul.i96 to i8 *)
split tmp_v_mul_i96 v_conv3_i99 v_mul_i96 8;
vpc v_conv3_i99@uint8 v_conv3_i99@uint32;
(*   %conv4.i100 = zext i8 %conv2.i.i122.2 to i32 *)
cast v_conv4_i100@uint32 v_conv2_i_i122_2@uint8;
(*   %shr.i101 = ashr i32 %conv4.i100, 1 *)
(* You may need to modify here *)
split v_shr_i101 tmp_to_be_used v_conv4_i100 1;
(*   %conv5.i102 = trunc i32 %shr.i101 to i8 *)
split tmp_v_shr_i101 v_conv5_i102 v_shr_i101 8;
vpc v_conv5_i102@uint8 v_conv5_i102@uint32;
(*   %conv6.i103 = zext i8 %conv2.i.i161.2 to i32 *)
cast v_conv6_i103@uint32 v_conv2_i_i161_2@uint8;
(*   %shl.i104 = shl i32 %conv6.i103, 1 *)
shls discard_63 v_shl_i104 v_conv6_i103 1;
(*   %conv7.i105 = trunc i32 %shl.i104 to i8 *)
split tmp_v_shl_i104 v_conv7_i105 v_shl_i104 8;
vpc v_conv7_i105@uint8 v_conv7_i105@uint32;
(*   %conv.i93.1 = zext i8 %conv5.i102 to i32 *)
cast v_conv_i93_1@uint32 v_conv5_i102@uint8;
(*   %and.i94.1 = and i32 %conv.i93.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i94_1 v_conv_i93_1 (0x1)@uint32;
(*   %conv1.i95.1 = zext i8 %conv7.i105 to i32 *)
cast v_conv1_i95_1@uint32 v_conv7_i105@uint8;
(*   %mul.i96.1 = mul nsw i32 %and.i94.1, %conv1.i95.1 *)
mul v_mul_i96_1 v_and_i94_1 v_conv1_i95_1;
(*   %conv2.i97.1 = zext i8 %conv3.i99 to i32 *)
cast v_conv2_i97_1@uint32 v_conv3_i99@uint8;
(*   %xor.i98.1 = xor i32 %conv2.i97.1, %mul.i96.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i98_1 v_conv2_i97_1 v_mul_i96_1;
(*   %conv3.i99.1 = trunc i32 %xor.i98.1 to i8 *)
split tmp_v_xor_i98_1 v_conv3_i99_1 v_xor_i98_1 8;
vpc v_conv3_i99_1@uint8 v_conv3_i99_1@uint32;
(*   %conv4.i100.1 = zext i8 %conv5.i102 to i32 *)
cast v_conv4_i100_1@uint32 v_conv5_i102@uint8;
(*   %shr.i101.1 = ashr i32 %conv4.i100.1, 1 *)
(* You may need to modify here *)
split v_shr_i101_1 tmp_to_be_used v_conv4_i100_1 1;
(*   %conv5.i102.1 = trunc i32 %shr.i101.1 to i8 *)
split tmp_v_shr_i101_1 v_conv5_i102_1 v_shr_i101_1 8;
vpc v_conv5_i102_1@uint8 v_conv5_i102_1@uint32;
(*   %conv6.i103.1 = zext i8 %conv7.i105 to i32 *)
cast v_conv6_i103_1@uint32 v_conv7_i105@uint8;
(*   %shl.i104.1 = shl i32 %conv6.i103.1, 1 *)
shls discard_64 v_shl_i104_1 v_conv6_i103_1 1;
(*   %conv7.i105.1 = trunc i32 %shl.i104.1 to i8 *)
split tmp_v_shl_i104_1 v_conv7_i105_1 v_shl_i104_1 8;
vpc v_conv7_i105_1@uint8 v_conv7_i105_1@uint32;
(*   %conv.i93.2 = zext i8 %conv5.i102.1 to i32 *)
cast v_conv_i93_2@uint32 v_conv5_i102_1@uint8;
(*   %and.i94.2 = and i32 %conv.i93.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i94_2 v_conv_i93_2 (0x1)@uint32;
(*   %conv1.i95.2 = zext i8 %conv7.i105.1 to i32 *)
cast v_conv1_i95_2@uint32 v_conv7_i105_1@uint8;
(*   %mul.i96.2 = mul nsw i32 %and.i94.2, %conv1.i95.2 *)
mul v_mul_i96_2 v_and_i94_2 v_conv1_i95_2;
(*   %conv2.i97.2 = zext i8 %conv3.i99.1 to i32 *)
cast v_conv2_i97_2@uint32 v_conv3_i99_1@uint8;
(*   %xor.i98.2 = xor i32 %conv2.i97.2, %mul.i96.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i98_2 v_conv2_i97_2 v_mul_i96_2;
(*   %conv3.i99.2 = trunc i32 %xor.i98.2 to i8 *)
split tmp_v_xor_i98_2 v_conv3_i99_2 v_xor_i98_2 8;
vpc v_conv3_i99_2@uint8 v_conv3_i99_2@uint32;
(*   %conv4.i100.2 = zext i8 %conv5.i102.1 to i32 *)
cast v_conv4_i100_2@uint32 v_conv5_i102_1@uint8;
(*   %shr.i101.2 = ashr i32 %conv4.i100.2, 1 *)
(* You may need to modify here *)
split v_shr_i101_2 tmp_to_be_used v_conv4_i100_2 1;
(*   %conv5.i102.2 = trunc i32 %shr.i101.2 to i8 *)
split tmp_v_shr_i101_2 v_conv5_i102_2 v_shr_i101_2 8;
vpc v_conv5_i102_2@uint8 v_conv5_i102_2@uint32;
(*   %conv6.i103.2 = zext i8 %conv7.i105.1 to i32 *)
cast v_conv6_i103_2@uint32 v_conv7_i105_1@uint8;
(*   %shl.i104.2 = shl i32 %conv6.i103.2, 1 *)
shls discard_65 v_shl_i104_2 v_conv6_i103_2 1;
(*   %conv7.i105.2 = trunc i32 %shl.i104.2 to i8 *)
split tmp_v_shl_i104_2 v_conv7_i105_2 v_shl_i104_2 8;
vpc v_conv7_i105_2@uint8 v_conv7_i105_2@uint32;
(*   %conv.i93.3 = zext i8 %conv5.i102.2 to i32 *)
cast v_conv_i93_3@uint32 v_conv5_i102_2@uint8;
(*   %and.i94.3 = and i32 %conv.i93.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i94_3 v_conv_i93_3 (0x1)@uint32;
(*   %conv1.i95.3 = zext i8 %conv7.i105.2 to i32 *)
cast v_conv1_i95_3@uint32 v_conv7_i105_2@uint8;
(*   %mul.i96.3 = mul nsw i32 %and.i94.3, %conv1.i95.3 *)
mul v_mul_i96_3 v_and_i94_3 v_conv1_i95_3;
(*   %conv2.i97.3 = zext i8 %conv3.i99.2 to i32 *)
cast v_conv2_i97_3@uint32 v_conv3_i99_2@uint8;
(*   %xor.i98.3 = xor i32 %conv2.i97.3, %mul.i96.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i98_3 v_conv2_i97_3 v_mul_i96_3;
(*   %conv3.i99.3 = trunc i32 %xor.i98.3 to i8 *)
split tmp_v_xor_i98_3 v_conv3_i99_3 v_xor_i98_3 8;
vpc v_conv3_i99_3@uint8 v_conv3_i99_3@uint32;
(*   %conv4.i100.3 = zext i8 %conv5.i102.2 to i32 *)
cast v_conv4_i100_3@uint32 v_conv5_i102_2@uint8;
(*   %shr.i101.3 = ashr i32 %conv4.i100.3, 1 *)
(* You may need to modify here *)
split v_shr_i101_3 tmp_to_be_used v_conv4_i100_3 1;
(*   %conv5.i102.3 = trunc i32 %shr.i101.3 to i8 *)
split tmp_v_shr_i101_3 v_conv5_i102_3 v_shr_i101_3 8;
vpc v_conv5_i102_3@uint8 v_conv5_i102_3@uint32;
(*   %conv6.i103.3 = zext i8 %conv7.i105.2 to i32 *)
cast v_conv6_i103_3@uint32 v_conv7_i105_2@uint8;
(*   %shl.i104.3 = shl i32 %conv6.i103.3, 1 *)
shls discard_66 v_shl_i104_3 v_conv6_i103_3 1;
(*   %conv7.i105.3 = trunc i32 %shl.i104.3 to i8 *)
split tmp_v_shl_i104_3 v_conv7_i105_3 v_shl_i104_3 8;
vpc v_conv7_i105_3@uint8 v_conv7_i105_3@uint32;
(*   %conv.i93.4 = zext i8 %conv5.i102.3 to i32 *)
cast v_conv_i93_4@uint32 v_conv5_i102_3@uint8;
(*   %and.i94.4 = and i32 %conv.i93.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i94_4 v_conv_i93_4 (0x1)@uint32;
(*   %conv1.i95.4 = zext i8 %conv7.i105.3 to i32 *)
cast v_conv1_i95_4@uint32 v_conv7_i105_3@uint8;
(*   %mul.i96.4 = mul nsw i32 %and.i94.4, %conv1.i95.4 *)
mul v_mul_i96_4 v_and_i94_4 v_conv1_i95_4;
(*   %conv2.i97.4 = zext i8 %conv3.i99.3 to i32 *)
cast v_conv2_i97_4@uint32 v_conv3_i99_3@uint8;
(*   %xor.i98.4 = xor i32 %conv2.i97.4, %mul.i96.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i98_4 v_conv2_i97_4 v_mul_i96_4;
(*   %conv3.i99.4 = trunc i32 %xor.i98.4 to i8 *)
split tmp_v_xor_i98_4 v_conv3_i99_4 v_xor_i98_4 8;
vpc v_conv3_i99_4@uint8 v_conv3_i99_4@uint32;
(*   %conv4.i100.4 = zext i8 %conv5.i102.3 to i32 *)
cast v_conv4_i100_4@uint32 v_conv5_i102_3@uint8;
(*   %shr.i101.4 = ashr i32 %conv4.i100.4, 1 *)
(* You may need to modify here *)
split v_shr_i101_4 tmp_to_be_used v_conv4_i100_4 1;
(*   %conv5.i102.4 = trunc i32 %shr.i101.4 to i8 *)
split tmp_v_shr_i101_4 v_conv5_i102_4 v_shr_i101_4 8;
vpc v_conv5_i102_4@uint8 v_conv5_i102_4@uint32;
(*   %conv6.i103.4 = zext i8 %conv7.i105.3 to i32 *)
cast v_conv6_i103_4@uint32 v_conv7_i105_3@uint8;
(*   %shl.i104.4 = shl i32 %conv6.i103.4, 1 *)
shls discard_67 v_shl_i104_4 v_conv6_i103_4 1;
(*   %conv7.i105.4 = trunc i32 %shl.i104.4 to i8 *)
split tmp_v_shl_i104_4 v_conv7_i105_4 v_shl_i104_4 8;
vpc v_conv7_i105_4@uint8 v_conv7_i105_4@uint32;
(*   %conv.i93.5 = zext i8 %conv5.i102.4 to i32 *)
cast v_conv_i93_5@uint32 v_conv5_i102_4@uint8;
(*   %and.i94.5 = and i32 %conv.i93.5, 1 *)
(* You may need to modify here *)
and uint32 v_and_i94_5 v_conv_i93_5 (0x1)@uint32;
(*   %conv1.i95.5 = zext i8 %conv7.i105.4 to i32 *)
cast v_conv1_i95_5@uint32 v_conv7_i105_4@uint8;
(*   %mul.i96.5 = mul nsw i32 %and.i94.5, %conv1.i95.5 *)
mul v_mul_i96_5 v_and_i94_5 v_conv1_i95_5;
(*   %conv2.i97.5 = zext i8 %conv3.i99.4 to i32 *)
cast v_conv2_i97_5@uint32 v_conv3_i99_4@uint8;
(*   %xor.i98.5 = xor i32 %conv2.i97.5, %mul.i96.5 *)
(* You may need to modify here *)
xor uint32 v_xor_i98_5 v_conv2_i97_5 v_mul_i96_5;
(*   %conv3.i99.5 = trunc i32 %xor.i98.5 to i8 *)
split tmp_v_xor_i98_5 v_conv3_i99_5 v_xor_i98_5 8;
vpc v_conv3_i99_5@uint8 v_conv3_i99_5@uint32;
(*   %conv4.i100.5 = zext i8 %conv5.i102.4 to i32 *)
cast v_conv4_i100_5@uint32 v_conv5_i102_4@uint8;
(*   %shr.i101.5 = ashr i32 %conv4.i100.5, 1 *)
(* You may need to modify here *)
split v_shr_i101_5 tmp_to_be_used v_conv4_i100_5 1;
(*   %conv5.i102.5 = trunc i32 %shr.i101.5 to i8 *)
split tmp_v_shr_i101_5 v_conv5_i102_5 v_shr_i101_5 8;
vpc v_conv5_i102_5@uint8 v_conv5_i102_5@uint32;
(*   %conv6.i103.5 = zext i8 %conv7.i105.4 to i32 *)
cast v_conv6_i103_5@uint32 v_conv7_i105_4@uint8;
(*   %shl.i104.5 = shl i32 %conv6.i103.5, 1 *)
shls discard_68 v_shl_i104_5 v_conv6_i103_5 1;
(*   %conv7.i105.5 = trunc i32 %shl.i104.5 to i8 *)
split tmp_v_shl_i104_5 v_conv7_i105_5 v_shl_i104_5 8;
vpc v_conv7_i105_5@uint8 v_conv7_i105_5@uint32;
(*   %conv.i93.6 = zext i8 %conv5.i102.5 to i32 *)
cast v_conv_i93_6@uint32 v_conv5_i102_5@uint8;
(*   %and.i94.6 = and i32 %conv.i93.6, 1 *)
(* You may need to modify here *)
and uint32 v_and_i94_6 v_conv_i93_6 (0x1)@uint32;
(*   %conv1.i95.6 = zext i8 %conv7.i105.5 to i32 *)
cast v_conv1_i95_6@uint32 v_conv7_i105_5@uint8;
(*   %mul.i96.6 = mul nsw i32 %and.i94.6, %conv1.i95.6 *)
mul v_mul_i96_6 v_and_i94_6 v_conv1_i95_6;
(*   %conv2.i97.6 = zext i8 %conv3.i99.5 to i32 *)
cast v_conv2_i97_6@uint32 v_conv3_i99_5@uint8;
(*   %xor.i98.6 = xor i32 %conv2.i97.6, %mul.i96.6 *)
(* You may need to modify here *)
xor uint32 v_xor_i98_6 v_conv2_i97_6 v_mul_i96_6;
(*   %conv3.i99.6 = trunc i32 %xor.i98.6 to i8 *)
split tmp_v_xor_i98_6 v_conv3_i99_6 v_xor_i98_6 8;
vpc v_conv3_i99_6@uint8 v_conv3_i99_6@uint32;
(*   %conv4.i100.6 = zext i8 %conv5.i102.5 to i32 *)
cast v_conv4_i100_6@uint32 v_conv5_i102_5@uint8;
(*   %shr.i101.6 = ashr i32 %conv4.i100.6, 1 *)
(* You may need to modify here *)
split v_shr_i101_6 tmp_to_be_used v_conv4_i100_6 1;
(*   %conv5.i102.6 = trunc i32 %shr.i101.6 to i8 *)
split tmp_v_shr_i101_6 v_conv5_i102_6 v_shr_i101_6 8;
vpc v_conv5_i102_6@uint8 v_conv5_i102_6@uint32;
(*   %conv6.i103.6 = zext i8 %conv7.i105.5 to i32 *)
cast v_conv6_i103_6@uint32 v_conv7_i105_5@uint8;
(*   %shl.i104.6 = shl i32 %conv6.i103.6, 1 *)
shls discard_69 v_shl_i104_6 v_conv6_i103_6 1;
(*   %conv7.i105.6 = trunc i32 %shl.i104.6 to i8 *)
split tmp_v_shl_i104_6 v_conv7_i105_6 v_shl_i104_6 8;
vpc v_conv7_i105_6@uint8 v_conv7_i105_6@uint32;
(*   %conv.i93.7 = zext i8 %conv5.i102.6 to i32 *)
cast v_conv_i93_7@uint32 v_conv5_i102_6@uint8;
(*   %and.i94.7 = and i32 %conv.i93.7, 1 *)
(* You may need to modify here *)
and uint32 v_and_i94_7 v_conv_i93_7 (0x1)@uint32;
(*   %conv1.i95.7 = zext i8 %conv7.i105.6 to i32 *)
cast v_conv1_i95_7@uint32 v_conv7_i105_6@uint8;
(*   %mul.i96.7 = mul nsw i32 %and.i94.7, %conv1.i95.7 *)
mul v_mul_i96_7 v_and_i94_7 v_conv1_i95_7;
(*   %conv2.i97.7 = zext i8 %conv3.i99.6 to i32 *)
cast v_conv2_i97_7@uint32 v_conv3_i99_6@uint8;
(*   %xor.i98.7 = xor i32 %conv2.i97.7, %mul.i96.7 *)
(* You may need to modify here *)
xor uint32 v_xor_i98_7 v_conv2_i97_7 v_mul_i96_7;
(*   %conv3.i99.7 = trunc i32 %xor.i98.7 to i8 *)
split tmp_v_xor_i98_7 v_conv3_i99_7 v_xor_i98_7 8;
vpc v_conv3_i99_7@uint8 v_conv3_i99_7@uint32;
(*   store i8 %conv3.i99.7, i8* %AB, align 1 *)
mov AB_0 v_conv3_i99_7;
(*   %39 = load i8, i8* %c, align 1 *)
mov v39 c_0;
(*   %scevgep.1 = getelementptr i8, i8* %c, i64 1 *)
(*   %40 = load i8, i8* %scevgep.1, align 1 *)
mov v40 c_1;
(*   %conv.i.i.1 = zext i8 %40 to i32 *)
cast v_conv_i_i_1@uint32 v40@uint8;
(*   %conv1.i.i.1 = zext i8 %39 to i32 *)
cast v_conv1_i_i_1@uint32 v39@uint8;
(*   %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_1 v_conv1_i_i_1 v_conv_i_i_1;
(*   %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8 *)
split tmp_v_xor_i_i_1 v_conv2_i_i_1 v_xor_i_i_1 8;
vpc v_conv2_i_i_1@uint8 v_conv2_i_i_1@uint32;
(*   %scevgep.2 = getelementptr i8, i8* %c, i64 2 *)
(*   %41 = load i8, i8* %scevgep.2, align 1 *)
mov v41 c_2;
(*   %conv.i.i.2 = zext i8 %41 to i32 *)
cast v_conv_i_i_2@uint32 v41@uint8;
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


assert AB_0=C_0 && true;

mov _ AB_0@uint8;
mov _ C_0@uint8;


{
  true
  &&
  true
}

