proc main (uint8 a_0, uint8 a_1, uint8 a_2, uint8 a_3, uint8 b_0, uint8 b_1, uint8 b_2, uint8 b_3, uint8 r_1, uint8 r_2, uint8 r_3, uint8 r_6, uint8 r_7, uint8 r_11) =
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
(*   %arrayidx21 = getelementptr inbounds i8, i8* %r, i64 4 *)
(*   store i8 %conv17, i8* %arrayidx21, align 1 *)
mov r_4 v_conv17;
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
(*   %conv.i.1107 = zext i8 %7 to i32 *)
cast v_conv_i_1107@uint32 v7@uint8;
(*   %and.i.1108 = and i32 %conv.i.1107, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1108 v_conv_i_1107 (0x1)@uint32;
(*   %conv1.i.1109 = zext i8 %6 to i32 *)
cast v_conv1_i_1109@uint32 v6@uint8;
(*   %mul.i.1110 = mul nsw i32 %and.i.1108, %conv1.i.1109 *)
mul v_mul_i_1110 v_and_i_1108 v_conv1_i_1109;
(*   %conv3.i.1111 = trunc i32 %mul.i.1110 to i8 *)
split tmp_v_mul_i_1110 v_conv3_i_1111 v_mul_i_1110 8;
vpc v_conv3_i_1111@uint8 v_conv3_i_1111@uint32;
(*   %conv4.i.1112 = zext i8 %7 to i32 *)
cast v_conv4_i_1112@uint32 v7@uint8;
(*   %shr.i.1113 = ashr i32 %conv4.i.1112, 1 *)
(* You may need to modify here *)
split v_shr_i_1113 tmp_to_be_used v_conv4_i_1112 1;
(*   %conv5.i.1114 = trunc i32 %shr.i.1113 to i8 *)
split tmp_v_shr_i_1113 v_conv5_i_1114 v_shr_i_1113 8;
vpc v_conv5_i_1114@uint8 v_conv5_i_1114@uint32;
(*   %conv6.i.1115 = zext i8 %6 to i32 *)
cast v_conv6_i_1115@uint32 v6@uint8;
(*   %shl.i.1116 = shl i32 %conv6.i.1115, 1 *)
shls discard_14 v_shl_i_1116 v_conv6_i_1115 1;
(*   %conv7.i.1117 = trunc i32 %shl.i.1116 to i8 *)
split tmp_v_shl_i_1116 v_conv7_i_1117 v_shl_i_1116 8;
vpc v_conv7_i_1117@uint8 v_conv7_i_1117@uint32;
(*   %conv.i.1.1 = zext i8 %conv5.i.1114 to i32 *)
cast v_conv_i_1_1@uint32 v_conv5_i_1114@uint8;
(*   %and.i.1.1 = and i32 %conv.i.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_1 v_conv_i_1_1 (0x1)@uint32;
(*   %conv1.i.1.1 = zext i8 %conv7.i.1117 to i32 *)
cast v_conv1_i_1_1@uint32 v_conv7_i_1117@uint8;
(*   %mul.i.1.1 = mul nsw i32 %and.i.1.1, %conv1.i.1.1 *)
mul v_mul_i_1_1 v_and_i_1_1 v_conv1_i_1_1;
(*   %conv2.i.1.1 = zext i8 %conv3.i.1111 to i32 *)
cast v_conv2_i_1_1@uint32 v_conv3_i_1111@uint8;
(*   %xor.i.1.1 = xor i32 %conv2.i.1.1, %mul.i.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_1 v_conv2_i_1_1 v_mul_i_1_1;
(*   %conv3.i.1.1 = trunc i32 %xor.i.1.1 to i8 *)
split tmp_v_xor_i_1_1 v_conv3_i_1_1 v_xor_i_1_1 8;
vpc v_conv3_i_1_1@uint8 v_conv3_i_1_1@uint32;
(*   %conv4.i.1.1 = zext i8 %conv5.i.1114 to i32 *)
cast v_conv4_i_1_1@uint32 v_conv5_i_1114@uint8;
(*   %shr.i.1.1 = ashr i32 %conv4.i.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_1_1 tmp_to_be_used v_conv4_i_1_1 1;
(*   %conv5.i.1.1 = trunc i32 %shr.i.1.1 to i8 *)
split tmp_v_shr_i_1_1 v_conv5_i_1_1 v_shr_i_1_1 8;
vpc v_conv5_i_1_1@uint8 v_conv5_i_1_1@uint32;
(*   %conv6.i.1.1 = zext i8 %conv7.i.1117 to i32 *)
cast v_conv6_i_1_1@uint32 v_conv7_i_1117@uint8;
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
(*   %conv.i71.1118 = zext i8 %9 to i32 *)
cast v_conv_i71_1118@uint32 v9@uint8;
(*   %and.i72.1119 = and i32 %conv.i71.1118, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_1119 v_conv_i71_1118 (0x1)@uint32;
(*   %conv1.i73.1120 = zext i8 %8 to i32 *)
cast v_conv1_i73_1120@uint32 v8@uint8;
(*   %mul.i74.1121 = mul nsw i32 %and.i72.1119, %conv1.i73.1120 *)
mul v_mul_i74_1121 v_and_i72_1119 v_conv1_i73_1120;
(*   %conv3.i77.1122 = trunc i32 %mul.i74.1121 to i8 *)
split tmp_v_mul_i74_1121 v_conv3_i77_1122 v_mul_i74_1121 8;
vpc v_conv3_i77_1122@uint8 v_conv3_i77_1122@uint32;
(*   %conv4.i78.1123 = zext i8 %9 to i32 *)
cast v_conv4_i78_1123@uint32 v9@uint8;
(*   %shr.i79.1124 = ashr i32 %conv4.i78.1123, 1 *)
(* You may need to modify here *)
split v_shr_i79_1124 tmp_to_be_used v_conv4_i78_1123 1;
(*   %conv5.i80.1125 = trunc i32 %shr.i79.1124 to i8 *)
split tmp_v_shr_i79_1124 v_conv5_i80_1125 v_shr_i79_1124 8;
vpc v_conv5_i80_1125@uint8 v_conv5_i80_1125@uint32;
(*   %conv6.i81.1126 = zext i8 %8 to i32 *)
cast v_conv6_i81_1126@uint32 v8@uint8;
(*   %shl.i82.1127 = shl i32 %conv6.i81.1126, 1 *)
shls discard_21 v_shl_i82_1127 v_conv6_i81_1126 1;
(*   %conv7.i83.1128 = trunc i32 %shl.i82.1127 to i8 *)
split tmp_v_shl_i82_1127 v_conv7_i83_1128 v_shl_i82_1127 8;
vpc v_conv7_i83_1128@uint8 v_conv7_i83_1128@uint32;
(*   %conv.i71.1.1 = zext i8 %conv5.i80.1125 to i32 *)
cast v_conv_i71_1_1@uint32 v_conv5_i80_1125@uint8;
(*   %and.i72.1.1 = and i32 %conv.i71.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_1_1 v_conv_i71_1_1 (0x1)@uint32;
(*   %conv1.i73.1.1 = zext i8 %conv7.i83.1128 to i32 *)
cast v_conv1_i73_1_1@uint32 v_conv7_i83_1128@uint8;
(*   %mul.i74.1.1 = mul nsw i32 %and.i72.1.1, %conv1.i73.1.1 *)
mul v_mul_i74_1_1 v_and_i72_1_1 v_conv1_i73_1_1;
(*   %conv2.i75.1.1 = zext i8 %conv3.i77.1122 to i32 *)
cast v_conv2_i75_1_1@uint32 v_conv3_i77_1122@uint8;
(*   %xor.i76.1.1 = xor i32 %conv2.i75.1.1, %mul.i74.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_1_1 v_conv2_i75_1_1 v_mul_i74_1_1;
(*   %conv3.i77.1.1 = trunc i32 %xor.i76.1.1 to i8 *)
split tmp_v_xor_i76_1_1 v_conv3_i77_1_1 v_xor_i76_1_1 8;
vpc v_conv3_i77_1_1@uint8 v_conv3_i77_1_1@uint32;
(*   %conv4.i78.1.1 = zext i8 %conv5.i80.1125 to i32 *)
cast v_conv4_i78_1_1@uint32 v_conv5_i80_1125@uint8;
(*   %shr.i79.1.1 = ashr i32 %conv4.i78.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i79_1_1 tmp_to_be_used v_conv4_i78_1_1 1;
(*   %conv5.i80.1.1 = trunc i32 %shr.i79.1.1 to i8 *)
split tmp_v_shr_i79_1_1 v_conv5_i80_1_1 v_shr_i79_1_1 8;
vpc v_conv5_i80_1_1@uint8 v_conv5_i80_1_1@uint32;
(*   %conv6.i81.1.1 = zext i8 %conv7.i83.1128 to i32 *)
cast v_conv6_i81_1_1@uint32 v_conv7_i83_1128@uint8;
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
(*   %arrayidx21.1 = getelementptr inbounds i8, i8* %r, i64 8 *)
(*   store i8 %conv17.1, i8* %arrayidx21.1, align 1 *)
mov r_8 v_conv17_1;
(*   %arrayidx.2 = getelementptr inbounds i8, i8* %r, i64 3 *)
(*   %10 = load i8, i8* %arrayidx.2, align 1 *)
mov v10 r_3;
(*   %conv.2 = zext i8 %10 to i32 *)
cast v_conv_2@uint32 v10@uint8;
(*   %11 = load i8, i8* %a, align 1 *)
mov v11 a_0;
(*   %arrayidx8.2 = getelementptr inbounds i8, i8* %b, i64 3 *)
(*   %12 = load i8, i8* %arrayidx8.2, align 1 *)
mov v12 b_3;
(*   %conv.i.2129 = zext i8 %12 to i32 *)
cast v_conv_i_2129@uint32 v12@uint8;
(*   %and.i.2130 = and i32 %conv.i.2129, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2130 v_conv_i_2129 (0x1)@uint32;
(*   %conv1.i.2131 = zext i8 %11 to i32 *)
cast v_conv1_i_2131@uint32 v11@uint8;
(*   %mul.i.2132 = mul nsw i32 %and.i.2130, %conv1.i.2131 *)
mul v_mul_i_2132 v_and_i_2130 v_conv1_i_2131;
(*   %conv3.i.2133 = trunc i32 %mul.i.2132 to i8 *)
split tmp_v_mul_i_2132 v_conv3_i_2133 v_mul_i_2132 8;
vpc v_conv3_i_2133@uint8 v_conv3_i_2133@uint32;
(*   %conv4.i.2134 = zext i8 %12 to i32 *)
cast v_conv4_i_2134@uint32 v12@uint8;
(*   %shr.i.2135 = ashr i32 %conv4.i.2134, 1 *)
(* You may need to modify here *)
split v_shr_i_2135 tmp_to_be_used v_conv4_i_2134 1;
(*   %conv5.i.2136 = trunc i32 %shr.i.2135 to i8 *)
split tmp_v_shr_i_2135 v_conv5_i_2136 v_shr_i_2135 8;
vpc v_conv5_i_2136@uint8 v_conv5_i_2136@uint32;
(*   %conv6.i.2137 = zext i8 %11 to i32 *)
cast v_conv6_i_2137@uint32 v11@uint8;
(*   %shl.i.2138 = shl i32 %conv6.i.2137, 1 *)
shls discard_28 v_shl_i_2138 v_conv6_i_2137 1;
(*   %conv7.i.2139 = trunc i32 %shl.i.2138 to i8 *)
split tmp_v_shl_i_2138 v_conv7_i_2139 v_shl_i_2138 8;
vpc v_conv7_i_2139@uint8 v_conv7_i_2139@uint32;
(*   %conv.i.1.2 = zext i8 %conv5.i.2136 to i32 *)
cast v_conv_i_1_2@uint32 v_conv5_i_2136@uint8;
(*   %and.i.1.2 = and i32 %conv.i.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_2 v_conv_i_1_2 (0x1)@uint32;
(*   %conv1.i.1.2 = zext i8 %conv7.i.2139 to i32 *)
cast v_conv1_i_1_2@uint32 v_conv7_i_2139@uint8;
(*   %mul.i.1.2 = mul nsw i32 %and.i.1.2, %conv1.i.1.2 *)
mul v_mul_i_1_2 v_and_i_1_2 v_conv1_i_1_2;
(*   %conv2.i.1.2 = zext i8 %conv3.i.2133 to i32 *)
cast v_conv2_i_1_2@uint32 v_conv3_i_2133@uint8;
(*   %xor.i.1.2 = xor i32 %conv2.i.1.2, %mul.i.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_2 v_conv2_i_1_2 v_mul_i_1_2;
(*   %conv3.i.1.2 = trunc i32 %xor.i.1.2 to i8 *)
split tmp_v_xor_i_1_2 v_conv3_i_1_2 v_xor_i_1_2 8;
vpc v_conv3_i_1_2@uint8 v_conv3_i_1_2@uint32;
(*   %conv4.i.1.2 = zext i8 %conv5.i.2136 to i32 *)
cast v_conv4_i_1_2@uint32 v_conv5_i_2136@uint8;
(*   %shr.i.1.2 = ashr i32 %conv4.i.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_1_2 tmp_to_be_used v_conv4_i_1_2 1;
(*   %conv5.i.1.2 = trunc i32 %shr.i.1.2 to i8 *)
split tmp_v_shr_i_1_2 v_conv5_i_1_2 v_shr_i_1_2 8;
vpc v_conv5_i_1_2@uint8 v_conv5_i_1_2@uint32;
(*   %conv6.i.1.2 = zext i8 %conv7.i.2139 to i32 *)
cast v_conv6_i_1_2@uint32 v_conv7_i_2139@uint8;
(*   %shl.i.1.2 = shl i32 %conv6.i.1.2, 1 *)
shls discard_29 v_shl_i_1_2 v_conv6_i_1_2 1;
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
shls discard_30 v_shl_i_2_2 v_conv6_i_2_2 1;
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
shls discard_31 v_shl_i_3_2 v_conv6_i_3_2 1;
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
shls discard_32 v_shl_i_4_2 v_conv6_i_4_2 1;
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
shls discard_33 v_shl_i_5_2 v_conv6_i_5_2 1;
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
shls discard_34 v_shl_i_6_2 v_conv6_i_6_2 1;
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
(*   %conv9.2 = zext i8 %conv3.i.7.2 to i32 *)
cast v_conv9_2@uint32 v_conv3_i_7_2@uint8;
(*   %xor.2 = xor i32 %conv.2, %conv9.2 *)
(* You may need to modify here *)
xor uint32 v_xor_2 v_conv_2 v_conv9_2;
(*   %arrayidx11.2 = getelementptr inbounds i8, i8* %a, i64 3 *)
(*   %13 = load i8, i8* %arrayidx11.2, align 1 *)
mov v13 a_3;
(*   %14 = load i8, i8* %b, align 1 *)
mov v14 b_0;
(*   %conv.i71.2140 = zext i8 %14 to i32 *)
cast v_conv_i71_2140@uint32 v14@uint8;
(*   %and.i72.2141 = and i32 %conv.i71.2140, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_2141 v_conv_i71_2140 (0x1)@uint32;
(*   %conv1.i73.2142 = zext i8 %13 to i32 *)
cast v_conv1_i73_2142@uint32 v13@uint8;
(*   %mul.i74.2143 = mul nsw i32 %and.i72.2141, %conv1.i73.2142 *)
mul v_mul_i74_2143 v_and_i72_2141 v_conv1_i73_2142;
(*   %conv3.i77.2144 = trunc i32 %mul.i74.2143 to i8 *)
split tmp_v_mul_i74_2143 v_conv3_i77_2144 v_mul_i74_2143 8;
vpc v_conv3_i77_2144@uint8 v_conv3_i77_2144@uint32;
(*   %conv4.i78.2145 = zext i8 %14 to i32 *)
cast v_conv4_i78_2145@uint32 v14@uint8;
(*   %shr.i79.2146 = ashr i32 %conv4.i78.2145, 1 *)
(* You may need to modify here *)
split v_shr_i79_2146 tmp_to_be_used v_conv4_i78_2145 1;
(*   %conv5.i80.2147 = trunc i32 %shr.i79.2146 to i8 *)
split tmp_v_shr_i79_2146 v_conv5_i80_2147 v_shr_i79_2146 8;
vpc v_conv5_i80_2147@uint8 v_conv5_i80_2147@uint32;
(*   %conv6.i81.2148 = zext i8 %13 to i32 *)
cast v_conv6_i81_2148@uint32 v13@uint8;
(*   %shl.i82.2149 = shl i32 %conv6.i81.2148, 1 *)
shls discard_35 v_shl_i82_2149 v_conv6_i81_2148 1;
(*   %conv7.i83.2150 = trunc i32 %shl.i82.2149 to i8 *)
split tmp_v_shl_i82_2149 v_conv7_i83_2150 v_shl_i82_2149 8;
vpc v_conv7_i83_2150@uint8 v_conv7_i83_2150@uint32;
(*   %conv.i71.1.2 = zext i8 %conv5.i80.2147 to i32 *)
cast v_conv_i71_1_2@uint32 v_conv5_i80_2147@uint8;
(*   %and.i72.1.2 = and i32 %conv.i71.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_1_2 v_conv_i71_1_2 (0x1)@uint32;
(*   %conv1.i73.1.2 = zext i8 %conv7.i83.2150 to i32 *)
cast v_conv1_i73_1_2@uint32 v_conv7_i83_2150@uint8;
(*   %mul.i74.1.2 = mul nsw i32 %and.i72.1.2, %conv1.i73.1.2 *)
mul v_mul_i74_1_2 v_and_i72_1_2 v_conv1_i73_1_2;
(*   %conv2.i75.1.2 = zext i8 %conv3.i77.2144 to i32 *)
cast v_conv2_i75_1_2@uint32 v_conv3_i77_2144@uint8;
(*   %xor.i76.1.2 = xor i32 %conv2.i75.1.2, %mul.i74.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_1_2 v_conv2_i75_1_2 v_mul_i74_1_2;
(*   %conv3.i77.1.2 = trunc i32 %xor.i76.1.2 to i8 *)
split tmp_v_xor_i76_1_2 v_conv3_i77_1_2 v_xor_i76_1_2 8;
vpc v_conv3_i77_1_2@uint8 v_conv3_i77_1_2@uint32;
(*   %conv4.i78.1.2 = zext i8 %conv5.i80.2147 to i32 *)
cast v_conv4_i78_1_2@uint32 v_conv5_i80_2147@uint8;
(*   %shr.i79.1.2 = ashr i32 %conv4.i78.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i79_1_2 tmp_to_be_used v_conv4_i78_1_2 1;
(*   %conv5.i80.1.2 = trunc i32 %shr.i79.1.2 to i8 *)
split tmp_v_shr_i79_1_2 v_conv5_i80_1_2 v_shr_i79_1_2 8;
vpc v_conv5_i80_1_2@uint8 v_conv5_i80_1_2@uint32;
(*   %conv6.i81.1.2 = zext i8 %conv7.i83.2150 to i32 *)
cast v_conv6_i81_1_2@uint32 v_conv7_i83_2150@uint8;
(*   %shl.i82.1.2 = shl i32 %conv6.i81.1.2, 1 *)
shls discard_36 v_shl_i82_1_2 v_conv6_i81_1_2 1;
(*   %conv7.i83.1.2 = trunc i32 %shl.i82.1.2 to i8 *)
split tmp_v_shl_i82_1_2 v_conv7_i83_1_2 v_shl_i82_1_2 8;
vpc v_conv7_i83_1_2@uint8 v_conv7_i83_1_2@uint32;
(*   %conv.i71.2.2 = zext i8 %conv5.i80.1.2 to i32 *)
cast v_conv_i71_2_2@uint32 v_conv5_i80_1_2@uint8;
(*   %and.i72.2.2 = and i32 %conv.i71.2.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_2_2 v_conv_i71_2_2 (0x1)@uint32;
(*   %conv1.i73.2.2 = zext i8 %conv7.i83.1.2 to i32 *)
cast v_conv1_i73_2_2@uint32 v_conv7_i83_1_2@uint8;
(*   %mul.i74.2.2 = mul nsw i32 %and.i72.2.2, %conv1.i73.2.2 *)
mul v_mul_i74_2_2 v_and_i72_2_2 v_conv1_i73_2_2;
(*   %conv2.i75.2.2 = zext i8 %conv3.i77.1.2 to i32 *)
cast v_conv2_i75_2_2@uint32 v_conv3_i77_1_2@uint8;
(*   %xor.i76.2.2 = xor i32 %conv2.i75.2.2, %mul.i74.2.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_2_2 v_conv2_i75_2_2 v_mul_i74_2_2;
(*   %conv3.i77.2.2 = trunc i32 %xor.i76.2.2 to i8 *)
split tmp_v_xor_i76_2_2 v_conv3_i77_2_2 v_xor_i76_2_2 8;
vpc v_conv3_i77_2_2@uint8 v_conv3_i77_2_2@uint32;
(*   %conv4.i78.2.2 = zext i8 %conv5.i80.1.2 to i32 *)
cast v_conv4_i78_2_2@uint32 v_conv5_i80_1_2@uint8;
(*   %shr.i79.2.2 = ashr i32 %conv4.i78.2.2, 1 *)
(* You may need to modify here *)
split v_shr_i79_2_2 tmp_to_be_used v_conv4_i78_2_2 1;
(*   %conv5.i80.2.2 = trunc i32 %shr.i79.2.2 to i8 *)
split tmp_v_shr_i79_2_2 v_conv5_i80_2_2 v_shr_i79_2_2 8;
vpc v_conv5_i80_2_2@uint8 v_conv5_i80_2_2@uint32;
(*   %conv6.i81.2.2 = zext i8 %conv7.i83.1.2 to i32 *)
cast v_conv6_i81_2_2@uint32 v_conv7_i83_1_2@uint8;
(*   %shl.i82.2.2 = shl i32 %conv6.i81.2.2, 1 *)
shls discard_37 v_shl_i82_2_2 v_conv6_i81_2_2 1;
(*   %conv7.i83.2.2 = trunc i32 %shl.i82.2.2 to i8 *)
split tmp_v_shl_i82_2_2 v_conv7_i83_2_2 v_shl_i82_2_2 8;
vpc v_conv7_i83_2_2@uint8 v_conv7_i83_2_2@uint32;
(*   %conv.i71.3.2 = zext i8 %conv5.i80.2.2 to i32 *)
cast v_conv_i71_3_2@uint32 v_conv5_i80_2_2@uint8;
(*   %and.i72.3.2 = and i32 %conv.i71.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_3_2 v_conv_i71_3_2 (0x1)@uint32;
(*   %conv1.i73.3.2 = zext i8 %conv7.i83.2.2 to i32 *)
cast v_conv1_i73_3_2@uint32 v_conv7_i83_2_2@uint8;
(*   %mul.i74.3.2 = mul nsw i32 %and.i72.3.2, %conv1.i73.3.2 *)
mul v_mul_i74_3_2 v_and_i72_3_2 v_conv1_i73_3_2;
(*   %conv2.i75.3.2 = zext i8 %conv3.i77.2.2 to i32 *)
cast v_conv2_i75_3_2@uint32 v_conv3_i77_2_2@uint8;
(*   %xor.i76.3.2 = xor i32 %conv2.i75.3.2, %mul.i74.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_3_2 v_conv2_i75_3_2 v_mul_i74_3_2;
(*   %conv3.i77.3.2 = trunc i32 %xor.i76.3.2 to i8 *)
split tmp_v_xor_i76_3_2 v_conv3_i77_3_2 v_xor_i76_3_2 8;
vpc v_conv3_i77_3_2@uint8 v_conv3_i77_3_2@uint32;
(*   %conv4.i78.3.2 = zext i8 %conv5.i80.2.2 to i32 *)
cast v_conv4_i78_3_2@uint32 v_conv5_i80_2_2@uint8;
(*   %shr.i79.3.2 = ashr i32 %conv4.i78.3.2, 1 *)
(* You may need to modify here *)
split v_shr_i79_3_2 tmp_to_be_used v_conv4_i78_3_2 1;
(*   %conv5.i80.3.2 = trunc i32 %shr.i79.3.2 to i8 *)
split tmp_v_shr_i79_3_2 v_conv5_i80_3_2 v_shr_i79_3_2 8;
vpc v_conv5_i80_3_2@uint8 v_conv5_i80_3_2@uint32;
(*   %conv6.i81.3.2 = zext i8 %conv7.i83.2.2 to i32 *)
cast v_conv6_i81_3_2@uint32 v_conv7_i83_2_2@uint8;
(*   %shl.i82.3.2 = shl i32 %conv6.i81.3.2, 1 *)
shls discard_38 v_shl_i82_3_2 v_conv6_i81_3_2 1;
(*   %conv7.i83.3.2 = trunc i32 %shl.i82.3.2 to i8 *)
split tmp_v_shl_i82_3_2 v_conv7_i83_3_2 v_shl_i82_3_2 8;
vpc v_conv7_i83_3_2@uint8 v_conv7_i83_3_2@uint32;
(*   %conv.i71.4.2 = zext i8 %conv5.i80.3.2 to i32 *)
cast v_conv_i71_4_2@uint32 v_conv5_i80_3_2@uint8;
(*   %and.i72.4.2 = and i32 %conv.i71.4.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_4_2 v_conv_i71_4_2 (0x1)@uint32;
(*   %conv1.i73.4.2 = zext i8 %conv7.i83.3.2 to i32 *)
cast v_conv1_i73_4_2@uint32 v_conv7_i83_3_2@uint8;
(*   %mul.i74.4.2 = mul nsw i32 %and.i72.4.2, %conv1.i73.4.2 *)
mul v_mul_i74_4_2 v_and_i72_4_2 v_conv1_i73_4_2;
(*   %conv2.i75.4.2 = zext i8 %conv3.i77.3.2 to i32 *)
cast v_conv2_i75_4_2@uint32 v_conv3_i77_3_2@uint8;
(*   %xor.i76.4.2 = xor i32 %conv2.i75.4.2, %mul.i74.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_4_2 v_conv2_i75_4_2 v_mul_i74_4_2;
(*   %conv3.i77.4.2 = trunc i32 %xor.i76.4.2 to i8 *)
split tmp_v_xor_i76_4_2 v_conv3_i77_4_2 v_xor_i76_4_2 8;
vpc v_conv3_i77_4_2@uint8 v_conv3_i77_4_2@uint32;
(*   %conv4.i78.4.2 = zext i8 %conv5.i80.3.2 to i32 *)
cast v_conv4_i78_4_2@uint32 v_conv5_i80_3_2@uint8;
(*   %shr.i79.4.2 = ashr i32 %conv4.i78.4.2, 1 *)
(* You may need to modify here *)
split v_shr_i79_4_2 tmp_to_be_used v_conv4_i78_4_2 1;
(*   %conv5.i80.4.2 = trunc i32 %shr.i79.4.2 to i8 *)
split tmp_v_shr_i79_4_2 v_conv5_i80_4_2 v_shr_i79_4_2 8;
vpc v_conv5_i80_4_2@uint8 v_conv5_i80_4_2@uint32;
(*   %conv6.i81.4.2 = zext i8 %conv7.i83.3.2 to i32 *)
cast v_conv6_i81_4_2@uint32 v_conv7_i83_3_2@uint8;
(*   %shl.i82.4.2 = shl i32 %conv6.i81.4.2, 1 *)
shls discard_39 v_shl_i82_4_2 v_conv6_i81_4_2 1;
(*   %conv7.i83.4.2 = trunc i32 %shl.i82.4.2 to i8 *)
split tmp_v_shl_i82_4_2 v_conv7_i83_4_2 v_shl_i82_4_2 8;
vpc v_conv7_i83_4_2@uint8 v_conv7_i83_4_2@uint32;
(*   %conv.i71.5.2 = zext i8 %conv5.i80.4.2 to i32 *)
cast v_conv_i71_5_2@uint32 v_conv5_i80_4_2@uint8;
(*   %and.i72.5.2 = and i32 %conv.i71.5.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_5_2 v_conv_i71_5_2 (0x1)@uint32;
(*   %conv1.i73.5.2 = zext i8 %conv7.i83.4.2 to i32 *)
cast v_conv1_i73_5_2@uint32 v_conv7_i83_4_2@uint8;
(*   %mul.i74.5.2 = mul nsw i32 %and.i72.5.2, %conv1.i73.5.2 *)
mul v_mul_i74_5_2 v_and_i72_5_2 v_conv1_i73_5_2;
(*   %conv2.i75.5.2 = zext i8 %conv3.i77.4.2 to i32 *)
cast v_conv2_i75_5_2@uint32 v_conv3_i77_4_2@uint8;
(*   %xor.i76.5.2 = xor i32 %conv2.i75.5.2, %mul.i74.5.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_5_2 v_conv2_i75_5_2 v_mul_i74_5_2;
(*   %conv3.i77.5.2 = trunc i32 %xor.i76.5.2 to i8 *)
split tmp_v_xor_i76_5_2 v_conv3_i77_5_2 v_xor_i76_5_2 8;
vpc v_conv3_i77_5_2@uint8 v_conv3_i77_5_2@uint32;
(*   %conv4.i78.5.2 = zext i8 %conv5.i80.4.2 to i32 *)
cast v_conv4_i78_5_2@uint32 v_conv5_i80_4_2@uint8;
(*   %shr.i79.5.2 = ashr i32 %conv4.i78.5.2, 1 *)
(* You may need to modify here *)
split v_shr_i79_5_2 tmp_to_be_used v_conv4_i78_5_2 1;
(*   %conv5.i80.5.2 = trunc i32 %shr.i79.5.2 to i8 *)
split tmp_v_shr_i79_5_2 v_conv5_i80_5_2 v_shr_i79_5_2 8;
vpc v_conv5_i80_5_2@uint8 v_conv5_i80_5_2@uint32;
(*   %conv6.i81.5.2 = zext i8 %conv7.i83.4.2 to i32 *)
cast v_conv6_i81_5_2@uint32 v_conv7_i83_4_2@uint8;
(*   %shl.i82.5.2 = shl i32 %conv6.i81.5.2, 1 *)
shls discard_40 v_shl_i82_5_2 v_conv6_i81_5_2 1;
(*   %conv7.i83.5.2 = trunc i32 %shl.i82.5.2 to i8 *)
split tmp_v_shl_i82_5_2 v_conv7_i83_5_2 v_shl_i82_5_2 8;
vpc v_conv7_i83_5_2@uint8 v_conv7_i83_5_2@uint32;
(*   %conv.i71.6.2 = zext i8 %conv5.i80.5.2 to i32 *)
cast v_conv_i71_6_2@uint32 v_conv5_i80_5_2@uint8;
(*   %and.i72.6.2 = and i32 %conv.i71.6.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_6_2 v_conv_i71_6_2 (0x1)@uint32;
(*   %conv1.i73.6.2 = zext i8 %conv7.i83.5.2 to i32 *)
cast v_conv1_i73_6_2@uint32 v_conv7_i83_5_2@uint8;
(*   %mul.i74.6.2 = mul nsw i32 %and.i72.6.2, %conv1.i73.6.2 *)
mul v_mul_i74_6_2 v_and_i72_6_2 v_conv1_i73_6_2;
(*   %conv2.i75.6.2 = zext i8 %conv3.i77.5.2 to i32 *)
cast v_conv2_i75_6_2@uint32 v_conv3_i77_5_2@uint8;
(*   %xor.i76.6.2 = xor i32 %conv2.i75.6.2, %mul.i74.6.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_6_2 v_conv2_i75_6_2 v_mul_i74_6_2;
(*   %conv3.i77.6.2 = trunc i32 %xor.i76.6.2 to i8 *)
split tmp_v_xor_i76_6_2 v_conv3_i77_6_2 v_xor_i76_6_2 8;
vpc v_conv3_i77_6_2@uint8 v_conv3_i77_6_2@uint32;
(*   %conv4.i78.6.2 = zext i8 %conv5.i80.5.2 to i32 *)
cast v_conv4_i78_6_2@uint32 v_conv5_i80_5_2@uint8;
(*   %shr.i79.6.2 = ashr i32 %conv4.i78.6.2, 1 *)
(* You may need to modify here *)
split v_shr_i79_6_2 tmp_to_be_used v_conv4_i78_6_2 1;
(*   %conv5.i80.6.2 = trunc i32 %shr.i79.6.2 to i8 *)
split tmp_v_shr_i79_6_2 v_conv5_i80_6_2 v_shr_i79_6_2 8;
vpc v_conv5_i80_6_2@uint8 v_conv5_i80_6_2@uint32;
(*   %conv6.i81.6.2 = zext i8 %conv7.i83.5.2 to i32 *)
cast v_conv6_i81_6_2@uint32 v_conv7_i83_5_2@uint8;
(*   %shl.i82.6.2 = shl i32 %conv6.i81.6.2, 1 *)
shls discard_41 v_shl_i82_6_2 v_conv6_i81_6_2 1;
(*   %conv7.i83.6.2 = trunc i32 %shl.i82.6.2 to i8 *)
split tmp_v_shl_i82_6_2 v_conv7_i83_6_2 v_shl_i82_6_2 8;
vpc v_conv7_i83_6_2@uint8 v_conv7_i83_6_2@uint32;
(*   %conv.i71.7.2 = zext i8 %conv5.i80.6.2 to i32 *)
cast v_conv_i71_7_2@uint32 v_conv5_i80_6_2@uint8;
(*   %and.i72.7.2 = and i32 %conv.i71.7.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_7_2 v_conv_i71_7_2 (0x1)@uint32;
(*   %conv1.i73.7.2 = zext i8 %conv7.i83.6.2 to i32 *)
cast v_conv1_i73_7_2@uint32 v_conv7_i83_6_2@uint8;
(*   %mul.i74.7.2 = mul nsw i32 %and.i72.7.2, %conv1.i73.7.2 *)
mul v_mul_i74_7_2 v_and_i72_7_2 v_conv1_i73_7_2;
(*   %conv2.i75.7.2 = zext i8 %conv3.i77.6.2 to i32 *)
cast v_conv2_i75_7_2@uint32 v_conv3_i77_6_2@uint8;
(*   %xor.i76.7.2 = xor i32 %conv2.i75.7.2, %mul.i74.7.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_7_2 v_conv2_i75_7_2 v_mul_i74_7_2;
(*   %conv3.i77.7.2 = trunc i32 %xor.i76.7.2 to i8 *)
split tmp_v_xor_i76_7_2 v_conv3_i77_7_2 v_xor_i76_7_2 8;
vpc v_conv3_i77_7_2@uint8 v_conv3_i77_7_2@uint32;
(*   %conv15.2 = zext i8 %conv3.i77.7.2 to i32 *)
cast v_conv15_2@uint32 v_conv3_i77_7_2@uint8;
(*   %xor16.2 = xor i32 %xor.2, %conv15.2 *)
(* You may need to modify here *)
xor uint32 v_xor16_2 v_xor_2 v_conv15_2;
(*   %conv17.2 = trunc i32 %xor16.2 to i8 *)
split tmp_v_xor16_2 v_conv17_2 v_xor16_2 8;
vpc v_conv17_2@uint8 v_conv17_2@uint32;
(*   %arrayidx21.2 = getelementptr inbounds i8, i8* %r, i64 12 *)
(*   store i8 %conv17.2, i8* %arrayidx21.2, align 1 *)
mov r_12 v_conv17_2;
(*   %arrayidx6.1 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %arrayidx13.1 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %arrayidx.1153 = getelementptr inbounds i8, i8* %r, i64 6 *)
(*   %15 = load i8, i8* %arrayidx.1153, align 1 *)
mov v15 r_6;
(*   %conv.1154 = zext i8 %15 to i32 *)
cast v_conv_1154@uint32 v15@uint8;
(*   %16 = load i8, i8* %arrayidx6.1, align 1 *)
mov v16 a_1;
(*   %arrayidx8.1156 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %17 = load i8, i8* %arrayidx8.1156, align 1 *)
mov v17 b_2;
(*   %conv.i.1158 = zext i8 %17 to i32 *)
cast v_conv_i_1158@uint32 v17@uint8;
(*   %and.i.1159 = and i32 %conv.i.1158, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1159 v_conv_i_1158 (0x1)@uint32;
(*   %conv1.i.1160 = zext i8 %16 to i32 *)
cast v_conv1_i_1160@uint32 v16@uint8;
(*   %mul.i.1161 = mul nsw i32 %and.i.1159, %conv1.i.1160 *)
mul v_mul_i_1161 v_and_i_1159 v_conv1_i_1160;
(*   %conv3.i.1162 = trunc i32 %mul.i.1161 to i8 *)
split tmp_v_mul_i_1161 v_conv3_i_1162 v_mul_i_1161 8;
vpc v_conv3_i_1162@uint8 v_conv3_i_1162@uint32;
(*   %conv4.i.1163 = zext i8 %17 to i32 *)
cast v_conv4_i_1163@uint32 v17@uint8;
(*   %shr.i.1164 = ashr i32 %conv4.i.1163, 1 *)
(* You may need to modify here *)
split v_shr_i_1164 tmp_to_be_used v_conv4_i_1163 1;
(*   %conv5.i.1165 = trunc i32 %shr.i.1164 to i8 *)
split tmp_v_shr_i_1164 v_conv5_i_1165 v_shr_i_1164 8;
vpc v_conv5_i_1165@uint8 v_conv5_i_1165@uint32;
(*   %conv6.i.1166 = zext i8 %16 to i32 *)
cast v_conv6_i_1166@uint32 v16@uint8;
(*   %shl.i.1167 = shl i32 %conv6.i.1166, 1 *)
shls discard_42 v_shl_i_1167 v_conv6_i_1166 1;
(*   %conv7.i.1168 = trunc i32 %shl.i.1167 to i8 *)
split tmp_v_shl_i_1167 v_conv7_i_1168 v_shl_i_1167 8;
vpc v_conv7_i_1168@uint8 v_conv7_i_1168@uint32;
(*   %conv.i.1.1169 = zext i8 %conv5.i.1165 to i32 *)
cast v_conv_i_1_1169@uint32 v_conv5_i_1165@uint8;
(*   %and.i.1.1170 = and i32 %conv.i.1.1169, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_1170 v_conv_i_1_1169 (0x1)@uint32;
(*   %conv1.i.1.1171 = zext i8 %conv7.i.1168 to i32 *)
cast v_conv1_i_1_1171@uint32 v_conv7_i_1168@uint8;
(*   %mul.i.1.1172 = mul nsw i32 %and.i.1.1170, %conv1.i.1.1171 *)
mul v_mul_i_1_1172 v_and_i_1_1170 v_conv1_i_1_1171;
(*   %conv2.i.1.1173 = zext i8 %conv3.i.1162 to i32 *)
cast v_conv2_i_1_1173@uint32 v_conv3_i_1162@uint8;
(*   %xor.i.1.1174 = xor i32 %conv2.i.1.1173, %mul.i.1.1172 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_1174 v_conv2_i_1_1173 v_mul_i_1_1172;
(*   %conv3.i.1.1175 = trunc i32 %xor.i.1.1174 to i8 *)
split tmp_v_xor_i_1_1174 v_conv3_i_1_1175 v_xor_i_1_1174 8;
vpc v_conv3_i_1_1175@uint8 v_conv3_i_1_1175@uint32;
(*   %conv4.i.1.1176 = zext i8 %conv5.i.1165 to i32 *)
cast v_conv4_i_1_1176@uint32 v_conv5_i_1165@uint8;
(*   %shr.i.1.1177 = ashr i32 %conv4.i.1.1176, 1 *)
(* You may need to modify here *)
split v_shr_i_1_1177 tmp_to_be_used v_conv4_i_1_1176 1;
(*   %conv5.i.1.1178 = trunc i32 %shr.i.1.1177 to i8 *)
split tmp_v_shr_i_1_1177 v_conv5_i_1_1178 v_shr_i_1_1177 8;
vpc v_conv5_i_1_1178@uint8 v_conv5_i_1_1178@uint32;
(*   %conv6.i.1.1179 = zext i8 %conv7.i.1168 to i32 *)
cast v_conv6_i_1_1179@uint32 v_conv7_i_1168@uint8;
(*   %shl.i.1.1180 = shl i32 %conv6.i.1.1179, 1 *)
shls discard_43 v_shl_i_1_1180 v_conv6_i_1_1179 1;
(*   %conv7.i.1.1181 = trunc i32 %shl.i.1.1180 to i8 *)
split tmp_v_shl_i_1_1180 v_conv7_i_1_1181 v_shl_i_1_1180 8;
vpc v_conv7_i_1_1181@uint8 v_conv7_i_1_1181@uint32;
(*   %conv.i.2.1182 = zext i8 %conv5.i.1.1178 to i32 *)
cast v_conv_i_2_1182@uint32 v_conv5_i_1_1178@uint8;
(*   %and.i.2.1183 = and i32 %conv.i.2.1182, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_1183 v_conv_i_2_1182 (0x1)@uint32;
(*   %conv1.i.2.1184 = zext i8 %conv7.i.1.1181 to i32 *)
cast v_conv1_i_2_1184@uint32 v_conv7_i_1_1181@uint8;
(*   %mul.i.2.1185 = mul nsw i32 %and.i.2.1183, %conv1.i.2.1184 *)
mul v_mul_i_2_1185 v_and_i_2_1183 v_conv1_i_2_1184;
(*   %conv2.i.2.1186 = zext i8 %conv3.i.1.1175 to i32 *)
cast v_conv2_i_2_1186@uint32 v_conv3_i_1_1175@uint8;
(*   %xor.i.2.1187 = xor i32 %conv2.i.2.1186, %mul.i.2.1185 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_1187 v_conv2_i_2_1186 v_mul_i_2_1185;
(*   %conv3.i.2.1188 = trunc i32 %xor.i.2.1187 to i8 *)
split tmp_v_xor_i_2_1187 v_conv3_i_2_1188 v_xor_i_2_1187 8;
vpc v_conv3_i_2_1188@uint8 v_conv3_i_2_1188@uint32;
(*   %conv4.i.2.1189 = zext i8 %conv5.i.1.1178 to i32 *)
cast v_conv4_i_2_1189@uint32 v_conv5_i_1_1178@uint8;
(*   %shr.i.2.1190 = ashr i32 %conv4.i.2.1189, 1 *)
(* You may need to modify here *)
split v_shr_i_2_1190 tmp_to_be_used v_conv4_i_2_1189 1;
(*   %conv5.i.2.1191 = trunc i32 %shr.i.2.1190 to i8 *)
split tmp_v_shr_i_2_1190 v_conv5_i_2_1191 v_shr_i_2_1190 8;
vpc v_conv5_i_2_1191@uint8 v_conv5_i_2_1191@uint32;
(*   %conv6.i.2.1192 = zext i8 %conv7.i.1.1181 to i32 *)
cast v_conv6_i_2_1192@uint32 v_conv7_i_1_1181@uint8;
(*   %shl.i.2.1193 = shl i32 %conv6.i.2.1192, 1 *)
shls discard_44 v_shl_i_2_1193 v_conv6_i_2_1192 1;
(*   %conv7.i.2.1194 = trunc i32 %shl.i.2.1193 to i8 *)
split tmp_v_shl_i_2_1193 v_conv7_i_2_1194 v_shl_i_2_1193 8;
vpc v_conv7_i_2_1194@uint8 v_conv7_i_2_1194@uint32;
(*   %conv.i.3.1195 = zext i8 %conv5.i.2.1191 to i32 *)
cast v_conv_i_3_1195@uint32 v_conv5_i_2_1191@uint8;
(*   %and.i.3.1196 = and i32 %conv.i.3.1195, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_1196 v_conv_i_3_1195 (0x1)@uint32;
(*   %conv1.i.3.1197 = zext i8 %conv7.i.2.1194 to i32 *)
cast v_conv1_i_3_1197@uint32 v_conv7_i_2_1194@uint8;
(*   %mul.i.3.1198 = mul nsw i32 %and.i.3.1196, %conv1.i.3.1197 *)
mul v_mul_i_3_1198 v_and_i_3_1196 v_conv1_i_3_1197;
(*   %conv2.i.3.1199 = zext i8 %conv3.i.2.1188 to i32 *)
cast v_conv2_i_3_1199@uint32 v_conv3_i_2_1188@uint8;
(*   %xor.i.3.1200 = xor i32 %conv2.i.3.1199, %mul.i.3.1198 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_1200 v_conv2_i_3_1199 v_mul_i_3_1198;
(*   %conv3.i.3.1201 = trunc i32 %xor.i.3.1200 to i8 *)
split tmp_v_xor_i_3_1200 v_conv3_i_3_1201 v_xor_i_3_1200 8;
vpc v_conv3_i_3_1201@uint8 v_conv3_i_3_1201@uint32;
(*   %conv4.i.3.1202 = zext i8 %conv5.i.2.1191 to i32 *)
cast v_conv4_i_3_1202@uint32 v_conv5_i_2_1191@uint8;
(*   %shr.i.3.1203 = ashr i32 %conv4.i.3.1202, 1 *)
(* You may need to modify here *)
split v_shr_i_3_1203 tmp_to_be_used v_conv4_i_3_1202 1;
(*   %conv5.i.3.1204 = trunc i32 %shr.i.3.1203 to i8 *)
split tmp_v_shr_i_3_1203 v_conv5_i_3_1204 v_shr_i_3_1203 8;
vpc v_conv5_i_3_1204@uint8 v_conv5_i_3_1204@uint32;
(*   %conv6.i.3.1205 = zext i8 %conv7.i.2.1194 to i32 *)
cast v_conv6_i_3_1205@uint32 v_conv7_i_2_1194@uint8;
(*   %shl.i.3.1206 = shl i32 %conv6.i.3.1205, 1 *)
shls discard_45 v_shl_i_3_1206 v_conv6_i_3_1205 1;
(*   %conv7.i.3.1207 = trunc i32 %shl.i.3.1206 to i8 *)
split tmp_v_shl_i_3_1206 v_conv7_i_3_1207 v_shl_i_3_1206 8;
vpc v_conv7_i_3_1207@uint8 v_conv7_i_3_1207@uint32;
(*   %conv.i.4.1208 = zext i8 %conv5.i.3.1204 to i32 *)
cast v_conv_i_4_1208@uint32 v_conv5_i_3_1204@uint8;
(*   %and.i.4.1209 = and i32 %conv.i.4.1208, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_1209 v_conv_i_4_1208 (0x1)@uint32;
(*   %conv1.i.4.1210 = zext i8 %conv7.i.3.1207 to i32 *)
cast v_conv1_i_4_1210@uint32 v_conv7_i_3_1207@uint8;
(*   %mul.i.4.1211 = mul nsw i32 %and.i.4.1209, %conv1.i.4.1210 *)
mul v_mul_i_4_1211 v_and_i_4_1209 v_conv1_i_4_1210;
(*   %conv2.i.4.1212 = zext i8 %conv3.i.3.1201 to i32 *)
cast v_conv2_i_4_1212@uint32 v_conv3_i_3_1201@uint8;
(*   %xor.i.4.1213 = xor i32 %conv2.i.4.1212, %mul.i.4.1211 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_1213 v_conv2_i_4_1212 v_mul_i_4_1211;
(*   %conv3.i.4.1214 = trunc i32 %xor.i.4.1213 to i8 *)
split tmp_v_xor_i_4_1213 v_conv3_i_4_1214 v_xor_i_4_1213 8;
vpc v_conv3_i_4_1214@uint8 v_conv3_i_4_1214@uint32;
(*   %conv4.i.4.1215 = zext i8 %conv5.i.3.1204 to i32 *)
cast v_conv4_i_4_1215@uint32 v_conv5_i_3_1204@uint8;
(*   %shr.i.4.1216 = ashr i32 %conv4.i.4.1215, 1 *)
(* You may need to modify here *)
split v_shr_i_4_1216 tmp_to_be_used v_conv4_i_4_1215 1;
(*   %conv5.i.4.1217 = trunc i32 %shr.i.4.1216 to i8 *)
split tmp_v_shr_i_4_1216 v_conv5_i_4_1217 v_shr_i_4_1216 8;
vpc v_conv5_i_4_1217@uint8 v_conv5_i_4_1217@uint32;
(*   %conv6.i.4.1218 = zext i8 %conv7.i.3.1207 to i32 *)
cast v_conv6_i_4_1218@uint32 v_conv7_i_3_1207@uint8;
(*   %shl.i.4.1219 = shl i32 %conv6.i.4.1218, 1 *)
shls discard_46 v_shl_i_4_1219 v_conv6_i_4_1218 1;
(*   %conv7.i.4.1220 = trunc i32 %shl.i.4.1219 to i8 *)
split tmp_v_shl_i_4_1219 v_conv7_i_4_1220 v_shl_i_4_1219 8;
vpc v_conv7_i_4_1220@uint8 v_conv7_i_4_1220@uint32;
(*   %conv.i.5.1221 = zext i8 %conv5.i.4.1217 to i32 *)
cast v_conv_i_5_1221@uint32 v_conv5_i_4_1217@uint8;
(*   %and.i.5.1222 = and i32 %conv.i.5.1221, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_1222 v_conv_i_5_1221 (0x1)@uint32;
(*   %conv1.i.5.1223 = zext i8 %conv7.i.4.1220 to i32 *)
cast v_conv1_i_5_1223@uint32 v_conv7_i_4_1220@uint8;
(*   %mul.i.5.1224 = mul nsw i32 %and.i.5.1222, %conv1.i.5.1223 *)
mul v_mul_i_5_1224 v_and_i_5_1222 v_conv1_i_5_1223;
(*   %conv2.i.5.1225 = zext i8 %conv3.i.4.1214 to i32 *)
cast v_conv2_i_5_1225@uint32 v_conv3_i_4_1214@uint8;
(*   %xor.i.5.1226 = xor i32 %conv2.i.5.1225, %mul.i.5.1224 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_1226 v_conv2_i_5_1225 v_mul_i_5_1224;
(*   %conv3.i.5.1227 = trunc i32 %xor.i.5.1226 to i8 *)
split tmp_v_xor_i_5_1226 v_conv3_i_5_1227 v_xor_i_5_1226 8;
vpc v_conv3_i_5_1227@uint8 v_conv3_i_5_1227@uint32;
(*   %conv4.i.5.1228 = zext i8 %conv5.i.4.1217 to i32 *)
cast v_conv4_i_5_1228@uint32 v_conv5_i_4_1217@uint8;
(*   %shr.i.5.1229 = ashr i32 %conv4.i.5.1228, 1 *)
(* You may need to modify here *)
split v_shr_i_5_1229 tmp_to_be_used v_conv4_i_5_1228 1;
(*   %conv5.i.5.1230 = trunc i32 %shr.i.5.1229 to i8 *)
split tmp_v_shr_i_5_1229 v_conv5_i_5_1230 v_shr_i_5_1229 8;
vpc v_conv5_i_5_1230@uint8 v_conv5_i_5_1230@uint32;
(*   %conv6.i.5.1231 = zext i8 %conv7.i.4.1220 to i32 *)
cast v_conv6_i_5_1231@uint32 v_conv7_i_4_1220@uint8;
(*   %shl.i.5.1232 = shl i32 %conv6.i.5.1231, 1 *)
shls discard_47 v_shl_i_5_1232 v_conv6_i_5_1231 1;
(*   %conv7.i.5.1233 = trunc i32 %shl.i.5.1232 to i8 *)
split tmp_v_shl_i_5_1232 v_conv7_i_5_1233 v_shl_i_5_1232 8;
vpc v_conv7_i_5_1233@uint8 v_conv7_i_5_1233@uint32;
(*   %conv.i.6.1234 = zext i8 %conv5.i.5.1230 to i32 *)
cast v_conv_i_6_1234@uint32 v_conv5_i_5_1230@uint8;
(*   %and.i.6.1235 = and i32 %conv.i.6.1234, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_1235 v_conv_i_6_1234 (0x1)@uint32;
(*   %conv1.i.6.1236 = zext i8 %conv7.i.5.1233 to i32 *)
cast v_conv1_i_6_1236@uint32 v_conv7_i_5_1233@uint8;
(*   %mul.i.6.1237 = mul nsw i32 %and.i.6.1235, %conv1.i.6.1236 *)
mul v_mul_i_6_1237 v_and_i_6_1235 v_conv1_i_6_1236;
(*   %conv2.i.6.1238 = zext i8 %conv3.i.5.1227 to i32 *)
cast v_conv2_i_6_1238@uint32 v_conv3_i_5_1227@uint8;
(*   %xor.i.6.1239 = xor i32 %conv2.i.6.1238, %mul.i.6.1237 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_1239 v_conv2_i_6_1238 v_mul_i_6_1237;
(*   %conv3.i.6.1240 = trunc i32 %xor.i.6.1239 to i8 *)
split tmp_v_xor_i_6_1239 v_conv3_i_6_1240 v_xor_i_6_1239 8;
vpc v_conv3_i_6_1240@uint8 v_conv3_i_6_1240@uint32;
(*   %conv4.i.6.1241 = zext i8 %conv5.i.5.1230 to i32 *)
cast v_conv4_i_6_1241@uint32 v_conv5_i_5_1230@uint8;
(*   %shr.i.6.1242 = ashr i32 %conv4.i.6.1241, 1 *)
(* You may need to modify here *)
split v_shr_i_6_1242 tmp_to_be_used v_conv4_i_6_1241 1;
(*   %conv5.i.6.1243 = trunc i32 %shr.i.6.1242 to i8 *)
split tmp_v_shr_i_6_1242 v_conv5_i_6_1243 v_shr_i_6_1242 8;
vpc v_conv5_i_6_1243@uint8 v_conv5_i_6_1243@uint32;
(*   %conv6.i.6.1244 = zext i8 %conv7.i.5.1233 to i32 *)
cast v_conv6_i_6_1244@uint32 v_conv7_i_5_1233@uint8;
(*   %shl.i.6.1245 = shl i32 %conv6.i.6.1244, 1 *)
shls discard_48 v_shl_i_6_1245 v_conv6_i_6_1244 1;
(*   %conv7.i.6.1246 = trunc i32 %shl.i.6.1245 to i8 *)
split tmp_v_shl_i_6_1245 v_conv7_i_6_1246 v_shl_i_6_1245 8;
vpc v_conv7_i_6_1246@uint8 v_conv7_i_6_1246@uint32;
(*   %conv.i.7.1247 = zext i8 %conv5.i.6.1243 to i32 *)
cast v_conv_i_7_1247@uint32 v_conv5_i_6_1243@uint8;
(*   %and.i.7.1248 = and i32 %conv.i.7.1247, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_1248 v_conv_i_7_1247 (0x1)@uint32;
(*   %conv1.i.7.1249 = zext i8 %conv7.i.6.1246 to i32 *)
cast v_conv1_i_7_1249@uint32 v_conv7_i_6_1246@uint8;
(*   %mul.i.7.1250 = mul nsw i32 %and.i.7.1248, %conv1.i.7.1249 *)
mul v_mul_i_7_1250 v_and_i_7_1248 v_conv1_i_7_1249;
(*   %conv2.i.7.1251 = zext i8 %conv3.i.6.1240 to i32 *)
cast v_conv2_i_7_1251@uint32 v_conv3_i_6_1240@uint8;
(*   %xor.i.7.1252 = xor i32 %conv2.i.7.1251, %mul.i.7.1250 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_1252 v_conv2_i_7_1251 v_mul_i_7_1250;
(*   %conv3.i.7.1253 = trunc i32 %xor.i.7.1252 to i8 *)
split tmp_v_xor_i_7_1252 v_conv3_i_7_1253 v_xor_i_7_1252 8;
vpc v_conv3_i_7_1253@uint8 v_conv3_i_7_1253@uint32;
(*   %conv9.1256 = zext i8 %conv3.i.7.1253 to i32 *)
cast v_conv9_1256@uint32 v_conv3_i_7_1253@uint8;
(*   %xor.1257 = xor i32 %conv.1154, %conv9.1256 *)
(* You may need to modify here *)
xor uint32 v_xor_1257 v_conv_1154 v_conv9_1256;
(*   %arrayidx11.1259 = getelementptr inbounds i8, i8* %a, i64 2 *)
(*   %18 = load i8, i8* %arrayidx11.1259, align 1 *)
mov v18 a_2;
(*   %19 = load i8, i8* %arrayidx13.1, align 1 *)
mov v19 b_1;
(*   %conv.i71.1261 = zext i8 %19 to i32 *)
cast v_conv_i71_1261@uint32 v19@uint8;
(*   %and.i72.1262 = and i32 %conv.i71.1261, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_1262 v_conv_i71_1261 (0x1)@uint32;
(*   %conv1.i73.1263 = zext i8 %18 to i32 *)
cast v_conv1_i73_1263@uint32 v18@uint8;
(*   %mul.i74.1264 = mul nsw i32 %and.i72.1262, %conv1.i73.1263 *)
mul v_mul_i74_1264 v_and_i72_1262 v_conv1_i73_1263;
(*   %conv3.i77.1265 = trunc i32 %mul.i74.1264 to i8 *)
split tmp_v_mul_i74_1264 v_conv3_i77_1265 v_mul_i74_1264 8;
vpc v_conv3_i77_1265@uint8 v_conv3_i77_1265@uint32;
(*   %conv4.i78.1266 = zext i8 %19 to i32 *)
cast v_conv4_i78_1266@uint32 v19@uint8;
(*   %shr.i79.1267 = ashr i32 %conv4.i78.1266, 1 *)
(* You may need to modify here *)
split v_shr_i79_1267 tmp_to_be_used v_conv4_i78_1266 1;
(*   %conv5.i80.1268 = trunc i32 %shr.i79.1267 to i8 *)
split tmp_v_shr_i79_1267 v_conv5_i80_1268 v_shr_i79_1267 8;
vpc v_conv5_i80_1268@uint8 v_conv5_i80_1268@uint32;
(*   %conv6.i81.1269 = zext i8 %18 to i32 *)
cast v_conv6_i81_1269@uint32 v18@uint8;
(*   %shl.i82.1270 = shl i32 %conv6.i81.1269, 1 *)
shls discard_49 v_shl_i82_1270 v_conv6_i81_1269 1;
(*   %conv7.i83.1271 = trunc i32 %shl.i82.1270 to i8 *)
split tmp_v_shl_i82_1270 v_conv7_i83_1271 v_shl_i82_1270 8;
vpc v_conv7_i83_1271@uint8 v_conv7_i83_1271@uint32;
(*   %conv.i71.1.1272 = zext i8 %conv5.i80.1268 to i32 *)
cast v_conv_i71_1_1272@uint32 v_conv5_i80_1268@uint8;
(*   %and.i72.1.1273 = and i32 %conv.i71.1.1272, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_1_1273 v_conv_i71_1_1272 (0x1)@uint32;
(*   %conv1.i73.1.1274 = zext i8 %conv7.i83.1271 to i32 *)
cast v_conv1_i73_1_1274@uint32 v_conv7_i83_1271@uint8;
(*   %mul.i74.1.1275 = mul nsw i32 %and.i72.1.1273, %conv1.i73.1.1274 *)
mul v_mul_i74_1_1275 v_and_i72_1_1273 v_conv1_i73_1_1274;
(*   %conv2.i75.1.1276 = zext i8 %conv3.i77.1265 to i32 *)
cast v_conv2_i75_1_1276@uint32 v_conv3_i77_1265@uint8;
(*   %xor.i76.1.1277 = xor i32 %conv2.i75.1.1276, %mul.i74.1.1275 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_1_1277 v_conv2_i75_1_1276 v_mul_i74_1_1275;
(*   %conv3.i77.1.1278 = trunc i32 %xor.i76.1.1277 to i8 *)
split tmp_v_xor_i76_1_1277 v_conv3_i77_1_1278 v_xor_i76_1_1277 8;
vpc v_conv3_i77_1_1278@uint8 v_conv3_i77_1_1278@uint32;
(*   %conv4.i78.1.1279 = zext i8 %conv5.i80.1268 to i32 *)
cast v_conv4_i78_1_1279@uint32 v_conv5_i80_1268@uint8;
(*   %shr.i79.1.1280 = ashr i32 %conv4.i78.1.1279, 1 *)
(* You may need to modify here *)
split v_shr_i79_1_1280 tmp_to_be_used v_conv4_i78_1_1279 1;
(*   %conv5.i80.1.1281 = trunc i32 %shr.i79.1.1280 to i8 *)
split tmp_v_shr_i79_1_1280 v_conv5_i80_1_1281 v_shr_i79_1_1280 8;
vpc v_conv5_i80_1_1281@uint8 v_conv5_i80_1_1281@uint32;
(*   %conv6.i81.1.1282 = zext i8 %conv7.i83.1271 to i32 *)
cast v_conv6_i81_1_1282@uint32 v_conv7_i83_1271@uint8;
(*   %shl.i82.1.1283 = shl i32 %conv6.i81.1.1282, 1 *)
shls discard_50 v_shl_i82_1_1283 v_conv6_i81_1_1282 1;
(*   %conv7.i83.1.1284 = trunc i32 %shl.i82.1.1283 to i8 *)
split tmp_v_shl_i82_1_1283 v_conv7_i83_1_1284 v_shl_i82_1_1283 8;
vpc v_conv7_i83_1_1284@uint8 v_conv7_i83_1_1284@uint32;
(*   %conv.i71.2.1285 = zext i8 %conv5.i80.1.1281 to i32 *)
cast v_conv_i71_2_1285@uint32 v_conv5_i80_1_1281@uint8;
(*   %and.i72.2.1286 = and i32 %conv.i71.2.1285, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_2_1286 v_conv_i71_2_1285 (0x1)@uint32;
(*   %conv1.i73.2.1287 = zext i8 %conv7.i83.1.1284 to i32 *)
cast v_conv1_i73_2_1287@uint32 v_conv7_i83_1_1284@uint8;
(*   %mul.i74.2.1288 = mul nsw i32 %and.i72.2.1286, %conv1.i73.2.1287 *)
mul v_mul_i74_2_1288 v_and_i72_2_1286 v_conv1_i73_2_1287;
(*   %conv2.i75.2.1289 = zext i8 %conv3.i77.1.1278 to i32 *)
cast v_conv2_i75_2_1289@uint32 v_conv3_i77_1_1278@uint8;
(*   %xor.i76.2.1290 = xor i32 %conv2.i75.2.1289, %mul.i74.2.1288 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_2_1290 v_conv2_i75_2_1289 v_mul_i74_2_1288;
(*   %conv3.i77.2.1291 = trunc i32 %xor.i76.2.1290 to i8 *)
split tmp_v_xor_i76_2_1290 v_conv3_i77_2_1291 v_xor_i76_2_1290 8;
vpc v_conv3_i77_2_1291@uint8 v_conv3_i77_2_1291@uint32;
(*   %conv4.i78.2.1292 = zext i8 %conv5.i80.1.1281 to i32 *)
cast v_conv4_i78_2_1292@uint32 v_conv5_i80_1_1281@uint8;
(*   %shr.i79.2.1293 = ashr i32 %conv4.i78.2.1292, 1 *)
(* You may need to modify here *)
split v_shr_i79_2_1293 tmp_to_be_used v_conv4_i78_2_1292 1;
(*   %conv5.i80.2.1294 = trunc i32 %shr.i79.2.1293 to i8 *)
split tmp_v_shr_i79_2_1293 v_conv5_i80_2_1294 v_shr_i79_2_1293 8;
vpc v_conv5_i80_2_1294@uint8 v_conv5_i80_2_1294@uint32;
(*   %conv6.i81.2.1295 = zext i8 %conv7.i83.1.1284 to i32 *)
cast v_conv6_i81_2_1295@uint32 v_conv7_i83_1_1284@uint8;
(*   %shl.i82.2.1296 = shl i32 %conv6.i81.2.1295, 1 *)
shls discard_51 v_shl_i82_2_1296 v_conv6_i81_2_1295 1;
(*   %conv7.i83.2.1297 = trunc i32 %shl.i82.2.1296 to i8 *)
split tmp_v_shl_i82_2_1296 v_conv7_i83_2_1297 v_shl_i82_2_1296 8;
vpc v_conv7_i83_2_1297@uint8 v_conv7_i83_2_1297@uint32;
(*   %conv.i71.3.1298 = zext i8 %conv5.i80.2.1294 to i32 *)
cast v_conv_i71_3_1298@uint32 v_conv5_i80_2_1294@uint8;
(*   %and.i72.3.1299 = and i32 %conv.i71.3.1298, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_3_1299 v_conv_i71_3_1298 (0x1)@uint32;
(*   %conv1.i73.3.1300 = zext i8 %conv7.i83.2.1297 to i32 *)
cast v_conv1_i73_3_1300@uint32 v_conv7_i83_2_1297@uint8;
(*   %mul.i74.3.1301 = mul nsw i32 %and.i72.3.1299, %conv1.i73.3.1300 *)
mul v_mul_i74_3_1301 v_and_i72_3_1299 v_conv1_i73_3_1300;
(*   %conv2.i75.3.1302 = zext i8 %conv3.i77.2.1291 to i32 *)
cast v_conv2_i75_3_1302@uint32 v_conv3_i77_2_1291@uint8;
(*   %xor.i76.3.1303 = xor i32 %conv2.i75.3.1302, %mul.i74.3.1301 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_3_1303 v_conv2_i75_3_1302 v_mul_i74_3_1301;
(*   %conv3.i77.3.1304 = trunc i32 %xor.i76.3.1303 to i8 *)
split tmp_v_xor_i76_3_1303 v_conv3_i77_3_1304 v_xor_i76_3_1303 8;
vpc v_conv3_i77_3_1304@uint8 v_conv3_i77_3_1304@uint32;
(*   %conv4.i78.3.1305 = zext i8 %conv5.i80.2.1294 to i32 *)
cast v_conv4_i78_3_1305@uint32 v_conv5_i80_2_1294@uint8;
(*   %shr.i79.3.1306 = ashr i32 %conv4.i78.3.1305, 1 *)
(* You may need to modify here *)
split v_shr_i79_3_1306 tmp_to_be_used v_conv4_i78_3_1305 1;
(*   %conv5.i80.3.1307 = trunc i32 %shr.i79.3.1306 to i8 *)
split tmp_v_shr_i79_3_1306 v_conv5_i80_3_1307 v_shr_i79_3_1306 8;
vpc v_conv5_i80_3_1307@uint8 v_conv5_i80_3_1307@uint32;
(*   %conv6.i81.3.1308 = zext i8 %conv7.i83.2.1297 to i32 *)
cast v_conv6_i81_3_1308@uint32 v_conv7_i83_2_1297@uint8;
(*   %shl.i82.3.1309 = shl i32 %conv6.i81.3.1308, 1 *)
shls discard_52 v_shl_i82_3_1309 v_conv6_i81_3_1308 1;
(*   %conv7.i83.3.1310 = trunc i32 %shl.i82.3.1309 to i8 *)
split tmp_v_shl_i82_3_1309 v_conv7_i83_3_1310 v_shl_i82_3_1309 8;
vpc v_conv7_i83_3_1310@uint8 v_conv7_i83_3_1310@uint32;
(*   %conv.i71.4.1311 = zext i8 %conv5.i80.3.1307 to i32 *)
cast v_conv_i71_4_1311@uint32 v_conv5_i80_3_1307@uint8;
(*   %and.i72.4.1312 = and i32 %conv.i71.4.1311, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_4_1312 v_conv_i71_4_1311 (0x1)@uint32;
(*   %conv1.i73.4.1313 = zext i8 %conv7.i83.3.1310 to i32 *)
cast v_conv1_i73_4_1313@uint32 v_conv7_i83_3_1310@uint8;
(*   %mul.i74.4.1314 = mul nsw i32 %and.i72.4.1312, %conv1.i73.4.1313 *)
mul v_mul_i74_4_1314 v_and_i72_4_1312 v_conv1_i73_4_1313;
(*   %conv2.i75.4.1315 = zext i8 %conv3.i77.3.1304 to i32 *)
cast v_conv2_i75_4_1315@uint32 v_conv3_i77_3_1304@uint8;
(*   %xor.i76.4.1316 = xor i32 %conv2.i75.4.1315, %mul.i74.4.1314 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_4_1316 v_conv2_i75_4_1315 v_mul_i74_4_1314;
(*   %conv3.i77.4.1317 = trunc i32 %xor.i76.4.1316 to i8 *)
split tmp_v_xor_i76_4_1316 v_conv3_i77_4_1317 v_xor_i76_4_1316 8;
vpc v_conv3_i77_4_1317@uint8 v_conv3_i77_4_1317@uint32;
(*   %conv4.i78.4.1318 = zext i8 %conv5.i80.3.1307 to i32 *)
cast v_conv4_i78_4_1318@uint32 v_conv5_i80_3_1307@uint8;
(*   %shr.i79.4.1319 = ashr i32 %conv4.i78.4.1318, 1 *)
(* You may need to modify here *)
split v_shr_i79_4_1319 tmp_to_be_used v_conv4_i78_4_1318 1;
(*   %conv5.i80.4.1320 = trunc i32 %shr.i79.4.1319 to i8 *)
split tmp_v_shr_i79_4_1319 v_conv5_i80_4_1320 v_shr_i79_4_1319 8;
vpc v_conv5_i80_4_1320@uint8 v_conv5_i80_4_1320@uint32;
(*   %conv6.i81.4.1321 = zext i8 %conv7.i83.3.1310 to i32 *)
cast v_conv6_i81_4_1321@uint32 v_conv7_i83_3_1310@uint8;
(*   %shl.i82.4.1322 = shl i32 %conv6.i81.4.1321, 1 *)
shls discard_53 v_shl_i82_4_1322 v_conv6_i81_4_1321 1;
(*   %conv7.i83.4.1323 = trunc i32 %shl.i82.4.1322 to i8 *)
split tmp_v_shl_i82_4_1322 v_conv7_i83_4_1323 v_shl_i82_4_1322 8;
vpc v_conv7_i83_4_1323@uint8 v_conv7_i83_4_1323@uint32;
(*   %conv.i71.5.1324 = zext i8 %conv5.i80.4.1320 to i32 *)
cast v_conv_i71_5_1324@uint32 v_conv5_i80_4_1320@uint8;
(*   %and.i72.5.1325 = and i32 %conv.i71.5.1324, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_5_1325 v_conv_i71_5_1324 (0x1)@uint32;
(*   %conv1.i73.5.1326 = zext i8 %conv7.i83.4.1323 to i32 *)
cast v_conv1_i73_5_1326@uint32 v_conv7_i83_4_1323@uint8;
(*   %mul.i74.5.1327 = mul nsw i32 %and.i72.5.1325, %conv1.i73.5.1326 *)
mul v_mul_i74_5_1327 v_and_i72_5_1325 v_conv1_i73_5_1326;
(*   %conv2.i75.5.1328 = zext i8 %conv3.i77.4.1317 to i32 *)
cast v_conv2_i75_5_1328@uint32 v_conv3_i77_4_1317@uint8;
(*   %xor.i76.5.1329 = xor i32 %conv2.i75.5.1328, %mul.i74.5.1327 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_5_1329 v_conv2_i75_5_1328 v_mul_i74_5_1327;
(*   %conv3.i77.5.1330 = trunc i32 %xor.i76.5.1329 to i8 *)
split tmp_v_xor_i76_5_1329 v_conv3_i77_5_1330 v_xor_i76_5_1329 8;
vpc v_conv3_i77_5_1330@uint8 v_conv3_i77_5_1330@uint32;
(*   %conv4.i78.5.1331 = zext i8 %conv5.i80.4.1320 to i32 *)
cast v_conv4_i78_5_1331@uint32 v_conv5_i80_4_1320@uint8;
(*   %shr.i79.5.1332 = ashr i32 %conv4.i78.5.1331, 1 *)
(* You may need to modify here *)
split v_shr_i79_5_1332 tmp_to_be_used v_conv4_i78_5_1331 1;
(*   %conv5.i80.5.1333 = trunc i32 %shr.i79.5.1332 to i8 *)
split tmp_v_shr_i79_5_1332 v_conv5_i80_5_1333 v_shr_i79_5_1332 8;
vpc v_conv5_i80_5_1333@uint8 v_conv5_i80_5_1333@uint32;
(*   %conv6.i81.5.1334 = zext i8 %conv7.i83.4.1323 to i32 *)
cast v_conv6_i81_5_1334@uint32 v_conv7_i83_4_1323@uint8;
(*   %shl.i82.5.1335 = shl i32 %conv6.i81.5.1334, 1 *)
shls discard_54 v_shl_i82_5_1335 v_conv6_i81_5_1334 1;
(*   %conv7.i83.5.1336 = trunc i32 %shl.i82.5.1335 to i8 *)
split tmp_v_shl_i82_5_1335 v_conv7_i83_5_1336 v_shl_i82_5_1335 8;
vpc v_conv7_i83_5_1336@uint8 v_conv7_i83_5_1336@uint32;
(*   %conv.i71.6.1337 = zext i8 %conv5.i80.5.1333 to i32 *)
cast v_conv_i71_6_1337@uint32 v_conv5_i80_5_1333@uint8;
(*   %and.i72.6.1338 = and i32 %conv.i71.6.1337, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_6_1338 v_conv_i71_6_1337 (0x1)@uint32;
(*   %conv1.i73.6.1339 = zext i8 %conv7.i83.5.1336 to i32 *)
cast v_conv1_i73_6_1339@uint32 v_conv7_i83_5_1336@uint8;
(*   %mul.i74.6.1340 = mul nsw i32 %and.i72.6.1338, %conv1.i73.6.1339 *)
mul v_mul_i74_6_1340 v_and_i72_6_1338 v_conv1_i73_6_1339;
(*   %conv2.i75.6.1341 = zext i8 %conv3.i77.5.1330 to i32 *)
cast v_conv2_i75_6_1341@uint32 v_conv3_i77_5_1330@uint8;
(*   %xor.i76.6.1342 = xor i32 %conv2.i75.6.1341, %mul.i74.6.1340 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_6_1342 v_conv2_i75_6_1341 v_mul_i74_6_1340;
(*   %conv3.i77.6.1343 = trunc i32 %xor.i76.6.1342 to i8 *)
split tmp_v_xor_i76_6_1342 v_conv3_i77_6_1343 v_xor_i76_6_1342 8;
vpc v_conv3_i77_6_1343@uint8 v_conv3_i77_6_1343@uint32;
(*   %conv4.i78.6.1344 = zext i8 %conv5.i80.5.1333 to i32 *)
cast v_conv4_i78_6_1344@uint32 v_conv5_i80_5_1333@uint8;
(*   %shr.i79.6.1345 = ashr i32 %conv4.i78.6.1344, 1 *)
(* You may need to modify here *)
split v_shr_i79_6_1345 tmp_to_be_used v_conv4_i78_6_1344 1;
(*   %conv5.i80.6.1346 = trunc i32 %shr.i79.6.1345 to i8 *)
split tmp_v_shr_i79_6_1345 v_conv5_i80_6_1346 v_shr_i79_6_1345 8;
vpc v_conv5_i80_6_1346@uint8 v_conv5_i80_6_1346@uint32;
(*   %conv6.i81.6.1347 = zext i8 %conv7.i83.5.1336 to i32 *)
cast v_conv6_i81_6_1347@uint32 v_conv7_i83_5_1336@uint8;
(*   %shl.i82.6.1348 = shl i32 %conv6.i81.6.1347, 1 *)
shls discard_55 v_shl_i82_6_1348 v_conv6_i81_6_1347 1;
(*   %conv7.i83.6.1349 = trunc i32 %shl.i82.6.1348 to i8 *)
split tmp_v_shl_i82_6_1348 v_conv7_i83_6_1349 v_shl_i82_6_1348 8;
vpc v_conv7_i83_6_1349@uint8 v_conv7_i83_6_1349@uint32;
(*   %conv.i71.7.1350 = zext i8 %conv5.i80.6.1346 to i32 *)
cast v_conv_i71_7_1350@uint32 v_conv5_i80_6_1346@uint8;
(*   %and.i72.7.1351 = and i32 %conv.i71.7.1350, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_7_1351 v_conv_i71_7_1350 (0x1)@uint32;
(*   %conv1.i73.7.1352 = zext i8 %conv7.i83.6.1349 to i32 *)
cast v_conv1_i73_7_1352@uint32 v_conv7_i83_6_1349@uint8;
(*   %mul.i74.7.1353 = mul nsw i32 %and.i72.7.1351, %conv1.i73.7.1352 *)
mul v_mul_i74_7_1353 v_and_i72_7_1351 v_conv1_i73_7_1352;
(*   %conv2.i75.7.1354 = zext i8 %conv3.i77.6.1343 to i32 *)
cast v_conv2_i75_7_1354@uint32 v_conv3_i77_6_1343@uint8;
(*   %xor.i76.7.1355 = xor i32 %conv2.i75.7.1354, %mul.i74.7.1353 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_7_1355 v_conv2_i75_7_1354 v_mul_i74_7_1353;
(*   %conv3.i77.7.1356 = trunc i32 %xor.i76.7.1355 to i8 *)
split tmp_v_xor_i76_7_1355 v_conv3_i77_7_1356 v_xor_i76_7_1355 8;
vpc v_conv3_i77_7_1356@uint8 v_conv3_i77_7_1356@uint32;
(*   %conv15.1359 = zext i8 %conv3.i77.7.1356 to i32 *)
cast v_conv15_1359@uint32 v_conv3_i77_7_1356@uint8;
(*   %xor16.1360 = xor i32 %xor.1257, %conv15.1359 *)
(* You may need to modify here *)
xor uint32 v_xor16_1360 v_xor_1257 v_conv15_1359;
(*   %conv17.1361 = trunc i32 %xor16.1360 to i8 *)
split tmp_v_xor16_1360 v_conv17_1361 v_xor16_1360 8;
vpc v_conv17_1361@uint8 v_conv17_1361@uint32;
(*   %arrayidx21.1365 = getelementptr inbounds i8, i8* %r, i64 9 *)
(*   store i8 %conv17.1361, i8* %arrayidx21.1365, align 1 *)
mov r_9 v_conv17_1361;
(*   %arrayidx.1.1 = getelementptr inbounds i8, i8* %r, i64 7 *)
(*   %20 = load i8, i8* %arrayidx.1.1, align 1 *)
mov v20 r_7;
(*   %conv.1.1 = zext i8 %20 to i32 *)
cast v_conv_1_1@uint32 v20@uint8;
(*   %21 = load i8, i8* %arrayidx6.1, align 1 *)
mov v21 a_1;
(*   %arrayidx8.1.1 = getelementptr inbounds i8, i8* %b, i64 3 *)
(*   %22 = load i8, i8* %arrayidx8.1.1, align 1 *)
mov v22 b_3;
(*   %conv.i.1107.1 = zext i8 %22 to i32 *)
cast v_conv_i_1107_1@uint32 v22@uint8;
(*   %and.i.1108.1 = and i32 %conv.i.1107.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1108_1 v_conv_i_1107_1 (0x1)@uint32;
(*   %conv1.i.1109.1 = zext i8 %21 to i32 *)
cast v_conv1_i_1109_1@uint32 v21@uint8;
(*   %mul.i.1110.1 = mul nsw i32 %and.i.1108.1, %conv1.i.1109.1 *)
mul v_mul_i_1110_1 v_and_i_1108_1 v_conv1_i_1109_1;
(*   %conv3.i.1111.1 = trunc i32 %mul.i.1110.1 to i8 *)
split tmp_v_mul_i_1110_1 v_conv3_i_1111_1 v_mul_i_1110_1 8;
vpc v_conv3_i_1111_1@uint8 v_conv3_i_1111_1@uint32;
(*   %conv4.i.1112.1 = zext i8 %22 to i32 *)
cast v_conv4_i_1112_1@uint32 v22@uint8;
(*   %shr.i.1113.1 = ashr i32 %conv4.i.1112.1, 1 *)
(* You may need to modify here *)
split v_shr_i_1113_1 tmp_to_be_used v_conv4_i_1112_1 1;
(*   %conv5.i.1114.1 = trunc i32 %shr.i.1113.1 to i8 *)
split tmp_v_shr_i_1113_1 v_conv5_i_1114_1 v_shr_i_1113_1 8;
vpc v_conv5_i_1114_1@uint8 v_conv5_i_1114_1@uint32;
(*   %conv6.i.1115.1 = zext i8 %21 to i32 *)
cast v_conv6_i_1115_1@uint32 v21@uint8;
(*   %shl.i.1116.1 = shl i32 %conv6.i.1115.1, 1 *)
shls discard_56 v_shl_i_1116_1 v_conv6_i_1115_1 1;
(*   %conv7.i.1117.1 = trunc i32 %shl.i.1116.1 to i8 *)
split tmp_v_shl_i_1116_1 v_conv7_i_1117_1 v_shl_i_1116_1 8;
vpc v_conv7_i_1117_1@uint8 v_conv7_i_1117_1@uint32;
(*   %conv.i.1.1.1 = zext i8 %conv5.i.1114.1 to i32 *)
cast v_conv_i_1_1_1@uint32 v_conv5_i_1114_1@uint8;
(*   %and.i.1.1.1 = and i32 %conv.i.1.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_1_1 v_conv_i_1_1_1 (0x1)@uint32;
(*   %conv1.i.1.1.1 = zext i8 %conv7.i.1117.1 to i32 *)
cast v_conv1_i_1_1_1@uint32 v_conv7_i_1117_1@uint8;
(*   %mul.i.1.1.1 = mul nsw i32 %and.i.1.1.1, %conv1.i.1.1.1 *)
mul v_mul_i_1_1_1 v_and_i_1_1_1 v_conv1_i_1_1_1;
(*   %conv2.i.1.1.1 = zext i8 %conv3.i.1111.1 to i32 *)
cast v_conv2_i_1_1_1@uint32 v_conv3_i_1111_1@uint8;
(*   %xor.i.1.1.1 = xor i32 %conv2.i.1.1.1, %mul.i.1.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_1_1 v_conv2_i_1_1_1 v_mul_i_1_1_1;
(*   %conv3.i.1.1.1 = trunc i32 %xor.i.1.1.1 to i8 *)
split tmp_v_xor_i_1_1_1 v_conv3_i_1_1_1 v_xor_i_1_1_1 8;
vpc v_conv3_i_1_1_1@uint8 v_conv3_i_1_1_1@uint32;
(*   %conv4.i.1.1.1 = zext i8 %conv5.i.1114.1 to i32 *)
cast v_conv4_i_1_1_1@uint32 v_conv5_i_1114_1@uint8;
(*   %shr.i.1.1.1 = ashr i32 %conv4.i.1.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_1_1_1 tmp_to_be_used v_conv4_i_1_1_1 1;
(*   %conv5.i.1.1.1 = trunc i32 %shr.i.1.1.1 to i8 *)
split tmp_v_shr_i_1_1_1 v_conv5_i_1_1_1 v_shr_i_1_1_1 8;
vpc v_conv5_i_1_1_1@uint8 v_conv5_i_1_1_1@uint32;
(*   %conv6.i.1.1.1 = zext i8 %conv7.i.1117.1 to i32 *)
cast v_conv6_i_1_1_1@uint32 v_conv7_i_1117_1@uint8;
(*   %shl.i.1.1.1 = shl i32 %conv6.i.1.1.1, 1 *)
shls discard_57 v_shl_i_1_1_1 v_conv6_i_1_1_1 1;
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
shls discard_58 v_shl_i_2_1_1 v_conv6_i_2_1_1 1;
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
shls discard_59 v_shl_i_3_1_1 v_conv6_i_3_1_1 1;
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
shls discard_60 v_shl_i_4_1_1 v_conv6_i_4_1_1 1;
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
shls discard_61 v_shl_i_5_1_1 v_conv6_i_5_1_1 1;
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
shls discard_62 v_shl_i_6_1_1 v_conv6_i_6_1_1 1;
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
(*   %conv9.1.1 = zext i8 %conv3.i.7.1.1 to i32 *)
cast v_conv9_1_1@uint32 v_conv3_i_7_1_1@uint8;
(*   %xor.1.1 = xor i32 %conv.1.1, %conv9.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_1_1 v_conv_1_1 v_conv9_1_1;
(*   %arrayidx11.1.1 = getelementptr inbounds i8, i8* %a, i64 3 *)
(*   %23 = load i8, i8* %arrayidx11.1.1, align 1 *)
mov v23 a_3;
(*   %24 = load i8, i8* %arrayidx13.1, align 1 *)
mov v24 b_1;
(*   %conv.i71.1118.1 = zext i8 %24 to i32 *)
cast v_conv_i71_1118_1@uint32 v24@uint8;
(*   %and.i72.1119.1 = and i32 %conv.i71.1118.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_1119_1 v_conv_i71_1118_1 (0x1)@uint32;
(*   %conv1.i73.1120.1 = zext i8 %23 to i32 *)
cast v_conv1_i73_1120_1@uint32 v23@uint8;
(*   %mul.i74.1121.1 = mul nsw i32 %and.i72.1119.1, %conv1.i73.1120.1 *)
mul v_mul_i74_1121_1 v_and_i72_1119_1 v_conv1_i73_1120_1;
(*   %conv3.i77.1122.1 = trunc i32 %mul.i74.1121.1 to i8 *)
split tmp_v_mul_i74_1121_1 v_conv3_i77_1122_1 v_mul_i74_1121_1 8;
vpc v_conv3_i77_1122_1@uint8 v_conv3_i77_1122_1@uint32;
(*   %conv4.i78.1123.1 = zext i8 %24 to i32 *)
cast v_conv4_i78_1123_1@uint32 v24@uint8;
(*   %shr.i79.1124.1 = ashr i32 %conv4.i78.1123.1, 1 *)
(* You may need to modify here *)
split v_shr_i79_1124_1 tmp_to_be_used v_conv4_i78_1123_1 1;
(*   %conv5.i80.1125.1 = trunc i32 %shr.i79.1124.1 to i8 *)
split tmp_v_shr_i79_1124_1 v_conv5_i80_1125_1 v_shr_i79_1124_1 8;
vpc v_conv5_i80_1125_1@uint8 v_conv5_i80_1125_1@uint32;
(*   %conv6.i81.1126.1 = zext i8 %23 to i32 *)
cast v_conv6_i81_1126_1@uint32 v23@uint8;
(*   %shl.i82.1127.1 = shl i32 %conv6.i81.1126.1, 1 *)
shls discard_63 v_shl_i82_1127_1 v_conv6_i81_1126_1 1;
(*   %conv7.i83.1128.1 = trunc i32 %shl.i82.1127.1 to i8 *)
split tmp_v_shl_i82_1127_1 v_conv7_i83_1128_1 v_shl_i82_1127_1 8;
vpc v_conv7_i83_1128_1@uint8 v_conv7_i83_1128_1@uint32;
(*   %conv.i71.1.1.1 = zext i8 %conv5.i80.1125.1 to i32 *)
cast v_conv_i71_1_1_1@uint32 v_conv5_i80_1125_1@uint8;
(*   %and.i72.1.1.1 = and i32 %conv.i71.1.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_1_1_1 v_conv_i71_1_1_1 (0x1)@uint32;
(*   %conv1.i73.1.1.1 = zext i8 %conv7.i83.1128.1 to i32 *)
cast v_conv1_i73_1_1_1@uint32 v_conv7_i83_1128_1@uint8;
(*   %mul.i74.1.1.1 = mul nsw i32 %and.i72.1.1.1, %conv1.i73.1.1.1 *)
mul v_mul_i74_1_1_1 v_and_i72_1_1_1 v_conv1_i73_1_1_1;
(*   %conv2.i75.1.1.1 = zext i8 %conv3.i77.1122.1 to i32 *)
cast v_conv2_i75_1_1_1@uint32 v_conv3_i77_1122_1@uint8;
(*   %xor.i76.1.1.1 = xor i32 %conv2.i75.1.1.1, %mul.i74.1.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_1_1_1 v_conv2_i75_1_1_1 v_mul_i74_1_1_1;
(*   %conv3.i77.1.1.1 = trunc i32 %xor.i76.1.1.1 to i8 *)
split tmp_v_xor_i76_1_1_1 v_conv3_i77_1_1_1 v_xor_i76_1_1_1 8;
vpc v_conv3_i77_1_1_1@uint8 v_conv3_i77_1_1_1@uint32;
(*   %conv4.i78.1.1.1 = zext i8 %conv5.i80.1125.1 to i32 *)
cast v_conv4_i78_1_1_1@uint32 v_conv5_i80_1125_1@uint8;
(*   %shr.i79.1.1.1 = ashr i32 %conv4.i78.1.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i79_1_1_1 tmp_to_be_used v_conv4_i78_1_1_1 1;
(*   %conv5.i80.1.1.1 = trunc i32 %shr.i79.1.1.1 to i8 *)
split tmp_v_shr_i79_1_1_1 v_conv5_i80_1_1_1 v_shr_i79_1_1_1 8;
vpc v_conv5_i80_1_1_1@uint8 v_conv5_i80_1_1_1@uint32;
(*   %conv6.i81.1.1.1 = zext i8 %conv7.i83.1128.1 to i32 *)
cast v_conv6_i81_1_1_1@uint32 v_conv7_i83_1128_1@uint8;
(*   %shl.i82.1.1.1 = shl i32 %conv6.i81.1.1.1, 1 *)
shls discard_64 v_shl_i82_1_1_1 v_conv6_i81_1_1_1 1;
(*   %conv7.i83.1.1.1 = trunc i32 %shl.i82.1.1.1 to i8 *)
split tmp_v_shl_i82_1_1_1 v_conv7_i83_1_1_1 v_shl_i82_1_1_1 8;
vpc v_conv7_i83_1_1_1@uint8 v_conv7_i83_1_1_1@uint32;
(*   %conv.i71.2.1.1 = zext i8 %conv5.i80.1.1.1 to i32 *)
cast v_conv_i71_2_1_1@uint32 v_conv5_i80_1_1_1@uint8;
(*   %and.i72.2.1.1 = and i32 %conv.i71.2.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_2_1_1 v_conv_i71_2_1_1 (0x1)@uint32;
(*   %conv1.i73.2.1.1 = zext i8 %conv7.i83.1.1.1 to i32 *)
cast v_conv1_i73_2_1_1@uint32 v_conv7_i83_1_1_1@uint8;
(*   %mul.i74.2.1.1 = mul nsw i32 %and.i72.2.1.1, %conv1.i73.2.1.1 *)
mul v_mul_i74_2_1_1 v_and_i72_2_1_1 v_conv1_i73_2_1_1;
(*   %conv2.i75.2.1.1 = zext i8 %conv3.i77.1.1.1 to i32 *)
cast v_conv2_i75_2_1_1@uint32 v_conv3_i77_1_1_1@uint8;
(*   %xor.i76.2.1.1 = xor i32 %conv2.i75.2.1.1, %mul.i74.2.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_2_1_1 v_conv2_i75_2_1_1 v_mul_i74_2_1_1;
(*   %conv3.i77.2.1.1 = trunc i32 %xor.i76.2.1.1 to i8 *)
split tmp_v_xor_i76_2_1_1 v_conv3_i77_2_1_1 v_xor_i76_2_1_1 8;
vpc v_conv3_i77_2_1_1@uint8 v_conv3_i77_2_1_1@uint32;
(*   %conv4.i78.2.1.1 = zext i8 %conv5.i80.1.1.1 to i32 *)
cast v_conv4_i78_2_1_1@uint32 v_conv5_i80_1_1_1@uint8;
(*   %shr.i79.2.1.1 = ashr i32 %conv4.i78.2.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i79_2_1_1 tmp_to_be_used v_conv4_i78_2_1_1 1;
(*   %conv5.i80.2.1.1 = trunc i32 %shr.i79.2.1.1 to i8 *)
split tmp_v_shr_i79_2_1_1 v_conv5_i80_2_1_1 v_shr_i79_2_1_1 8;
vpc v_conv5_i80_2_1_1@uint8 v_conv5_i80_2_1_1@uint32;
(*   %conv6.i81.2.1.1 = zext i8 %conv7.i83.1.1.1 to i32 *)
cast v_conv6_i81_2_1_1@uint32 v_conv7_i83_1_1_1@uint8;
(*   %shl.i82.2.1.1 = shl i32 %conv6.i81.2.1.1, 1 *)
shls discard_65 v_shl_i82_2_1_1 v_conv6_i81_2_1_1 1;
(*   %conv7.i83.2.1.1 = trunc i32 %shl.i82.2.1.1 to i8 *)
split tmp_v_shl_i82_2_1_1 v_conv7_i83_2_1_1 v_shl_i82_2_1_1 8;
vpc v_conv7_i83_2_1_1@uint8 v_conv7_i83_2_1_1@uint32;
(*   %conv.i71.3.1.1 = zext i8 %conv5.i80.2.1.1 to i32 *)
cast v_conv_i71_3_1_1@uint32 v_conv5_i80_2_1_1@uint8;
(*   %and.i72.3.1.1 = and i32 %conv.i71.3.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_3_1_1 v_conv_i71_3_1_1 (0x1)@uint32;
(*   %conv1.i73.3.1.1 = zext i8 %conv7.i83.2.1.1 to i32 *)
cast v_conv1_i73_3_1_1@uint32 v_conv7_i83_2_1_1@uint8;
(*   %mul.i74.3.1.1 = mul nsw i32 %and.i72.3.1.1, %conv1.i73.3.1.1 *)
mul v_mul_i74_3_1_1 v_and_i72_3_1_1 v_conv1_i73_3_1_1;
(*   %conv2.i75.3.1.1 = zext i8 %conv3.i77.2.1.1 to i32 *)
cast v_conv2_i75_3_1_1@uint32 v_conv3_i77_2_1_1@uint8;
(*   %xor.i76.3.1.1 = xor i32 %conv2.i75.3.1.1, %mul.i74.3.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_3_1_1 v_conv2_i75_3_1_1 v_mul_i74_3_1_1;
(*   %conv3.i77.3.1.1 = trunc i32 %xor.i76.3.1.1 to i8 *)
split tmp_v_xor_i76_3_1_1 v_conv3_i77_3_1_1 v_xor_i76_3_1_1 8;
vpc v_conv3_i77_3_1_1@uint8 v_conv3_i77_3_1_1@uint32;
(*   %conv4.i78.3.1.1 = zext i8 %conv5.i80.2.1.1 to i32 *)
cast v_conv4_i78_3_1_1@uint32 v_conv5_i80_2_1_1@uint8;
(*   %shr.i79.3.1.1 = ashr i32 %conv4.i78.3.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i79_3_1_1 tmp_to_be_used v_conv4_i78_3_1_1 1;
(*   %conv5.i80.3.1.1 = trunc i32 %shr.i79.3.1.1 to i8 *)
split tmp_v_shr_i79_3_1_1 v_conv5_i80_3_1_1 v_shr_i79_3_1_1 8;
vpc v_conv5_i80_3_1_1@uint8 v_conv5_i80_3_1_1@uint32;
(*   %conv6.i81.3.1.1 = zext i8 %conv7.i83.2.1.1 to i32 *)
cast v_conv6_i81_3_1_1@uint32 v_conv7_i83_2_1_1@uint8;
(*   %shl.i82.3.1.1 = shl i32 %conv6.i81.3.1.1, 1 *)
shls discard_66 v_shl_i82_3_1_1 v_conv6_i81_3_1_1 1;
(*   %conv7.i83.3.1.1 = trunc i32 %shl.i82.3.1.1 to i8 *)
split tmp_v_shl_i82_3_1_1 v_conv7_i83_3_1_1 v_shl_i82_3_1_1 8;
vpc v_conv7_i83_3_1_1@uint8 v_conv7_i83_3_1_1@uint32;
(*   %conv.i71.4.1.1 = zext i8 %conv5.i80.3.1.1 to i32 *)
cast v_conv_i71_4_1_1@uint32 v_conv5_i80_3_1_1@uint8;
(*   %and.i72.4.1.1 = and i32 %conv.i71.4.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_4_1_1 v_conv_i71_4_1_1 (0x1)@uint32;
(*   %conv1.i73.4.1.1 = zext i8 %conv7.i83.3.1.1 to i32 *)
cast v_conv1_i73_4_1_1@uint32 v_conv7_i83_3_1_1@uint8;
(*   %mul.i74.4.1.1 = mul nsw i32 %and.i72.4.1.1, %conv1.i73.4.1.1 *)
mul v_mul_i74_4_1_1 v_and_i72_4_1_1 v_conv1_i73_4_1_1;
(*   %conv2.i75.4.1.1 = zext i8 %conv3.i77.3.1.1 to i32 *)
cast v_conv2_i75_4_1_1@uint32 v_conv3_i77_3_1_1@uint8;
(*   %xor.i76.4.1.1 = xor i32 %conv2.i75.4.1.1, %mul.i74.4.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_4_1_1 v_conv2_i75_4_1_1 v_mul_i74_4_1_1;
(*   %conv3.i77.4.1.1 = trunc i32 %xor.i76.4.1.1 to i8 *)
split tmp_v_xor_i76_4_1_1 v_conv3_i77_4_1_1 v_xor_i76_4_1_1 8;
vpc v_conv3_i77_4_1_1@uint8 v_conv3_i77_4_1_1@uint32;
(*   %conv4.i78.4.1.1 = zext i8 %conv5.i80.3.1.1 to i32 *)
cast v_conv4_i78_4_1_1@uint32 v_conv5_i80_3_1_1@uint8;
(*   %shr.i79.4.1.1 = ashr i32 %conv4.i78.4.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i79_4_1_1 tmp_to_be_used v_conv4_i78_4_1_1 1;
(*   %conv5.i80.4.1.1 = trunc i32 %shr.i79.4.1.1 to i8 *)
split tmp_v_shr_i79_4_1_1 v_conv5_i80_4_1_1 v_shr_i79_4_1_1 8;
vpc v_conv5_i80_4_1_1@uint8 v_conv5_i80_4_1_1@uint32;
(*   %conv6.i81.4.1.1 = zext i8 %conv7.i83.3.1.1 to i32 *)
cast v_conv6_i81_4_1_1@uint32 v_conv7_i83_3_1_1@uint8;
(*   %shl.i82.4.1.1 = shl i32 %conv6.i81.4.1.1, 1 *)
shls discard_67 v_shl_i82_4_1_1 v_conv6_i81_4_1_1 1;
(*   %conv7.i83.4.1.1 = trunc i32 %shl.i82.4.1.1 to i8 *)
split tmp_v_shl_i82_4_1_1 v_conv7_i83_4_1_1 v_shl_i82_4_1_1 8;
vpc v_conv7_i83_4_1_1@uint8 v_conv7_i83_4_1_1@uint32;
(*   %conv.i71.5.1.1 = zext i8 %conv5.i80.4.1.1 to i32 *)
cast v_conv_i71_5_1_1@uint32 v_conv5_i80_4_1_1@uint8;
(*   %and.i72.5.1.1 = and i32 %conv.i71.5.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_5_1_1 v_conv_i71_5_1_1 (0x1)@uint32;
(*   %conv1.i73.5.1.1 = zext i8 %conv7.i83.4.1.1 to i32 *)
cast v_conv1_i73_5_1_1@uint32 v_conv7_i83_4_1_1@uint8;
(*   %mul.i74.5.1.1 = mul nsw i32 %and.i72.5.1.1, %conv1.i73.5.1.1 *)
mul v_mul_i74_5_1_1 v_and_i72_5_1_1 v_conv1_i73_5_1_1;
(*   %conv2.i75.5.1.1 = zext i8 %conv3.i77.4.1.1 to i32 *)
cast v_conv2_i75_5_1_1@uint32 v_conv3_i77_4_1_1@uint8;
(*   %xor.i76.5.1.1 = xor i32 %conv2.i75.5.1.1, %mul.i74.5.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_5_1_1 v_conv2_i75_5_1_1 v_mul_i74_5_1_1;
(*   %conv3.i77.5.1.1 = trunc i32 %xor.i76.5.1.1 to i8 *)
split tmp_v_xor_i76_5_1_1 v_conv3_i77_5_1_1 v_xor_i76_5_1_1 8;
vpc v_conv3_i77_5_1_1@uint8 v_conv3_i77_5_1_1@uint32;
(*   %conv4.i78.5.1.1 = zext i8 %conv5.i80.4.1.1 to i32 *)
cast v_conv4_i78_5_1_1@uint32 v_conv5_i80_4_1_1@uint8;
(*   %shr.i79.5.1.1 = ashr i32 %conv4.i78.5.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i79_5_1_1 tmp_to_be_used v_conv4_i78_5_1_1 1;
(*   %conv5.i80.5.1.1 = trunc i32 %shr.i79.5.1.1 to i8 *)
split tmp_v_shr_i79_5_1_1 v_conv5_i80_5_1_1 v_shr_i79_5_1_1 8;
vpc v_conv5_i80_5_1_1@uint8 v_conv5_i80_5_1_1@uint32;
(*   %conv6.i81.5.1.1 = zext i8 %conv7.i83.4.1.1 to i32 *)
cast v_conv6_i81_5_1_1@uint32 v_conv7_i83_4_1_1@uint8;
(*   %shl.i82.5.1.1 = shl i32 %conv6.i81.5.1.1, 1 *)
shls discard_68 v_shl_i82_5_1_1 v_conv6_i81_5_1_1 1;
(*   %conv7.i83.5.1.1 = trunc i32 %shl.i82.5.1.1 to i8 *)
split tmp_v_shl_i82_5_1_1 v_conv7_i83_5_1_1 v_shl_i82_5_1_1 8;
vpc v_conv7_i83_5_1_1@uint8 v_conv7_i83_5_1_1@uint32;
(*   %conv.i71.6.1.1 = zext i8 %conv5.i80.5.1.1 to i32 *)
cast v_conv_i71_6_1_1@uint32 v_conv5_i80_5_1_1@uint8;
(*   %and.i72.6.1.1 = and i32 %conv.i71.6.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_6_1_1 v_conv_i71_6_1_1 (0x1)@uint32;
(*   %conv1.i73.6.1.1 = zext i8 %conv7.i83.5.1.1 to i32 *)
cast v_conv1_i73_6_1_1@uint32 v_conv7_i83_5_1_1@uint8;
(*   %mul.i74.6.1.1 = mul nsw i32 %and.i72.6.1.1, %conv1.i73.6.1.1 *)
mul v_mul_i74_6_1_1 v_and_i72_6_1_1 v_conv1_i73_6_1_1;
(*   %conv2.i75.6.1.1 = zext i8 %conv3.i77.5.1.1 to i32 *)
cast v_conv2_i75_6_1_1@uint32 v_conv3_i77_5_1_1@uint8;
(*   %xor.i76.6.1.1 = xor i32 %conv2.i75.6.1.1, %mul.i74.6.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_6_1_1 v_conv2_i75_6_1_1 v_mul_i74_6_1_1;
(*   %conv3.i77.6.1.1 = trunc i32 %xor.i76.6.1.1 to i8 *)
split tmp_v_xor_i76_6_1_1 v_conv3_i77_6_1_1 v_xor_i76_6_1_1 8;
vpc v_conv3_i77_6_1_1@uint8 v_conv3_i77_6_1_1@uint32;
(*   %conv4.i78.6.1.1 = zext i8 %conv5.i80.5.1.1 to i32 *)
cast v_conv4_i78_6_1_1@uint32 v_conv5_i80_5_1_1@uint8;
(*   %shr.i79.6.1.1 = ashr i32 %conv4.i78.6.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i79_6_1_1 tmp_to_be_used v_conv4_i78_6_1_1 1;
(*   %conv5.i80.6.1.1 = trunc i32 %shr.i79.6.1.1 to i8 *)
split tmp_v_shr_i79_6_1_1 v_conv5_i80_6_1_1 v_shr_i79_6_1_1 8;
vpc v_conv5_i80_6_1_1@uint8 v_conv5_i80_6_1_1@uint32;
(*   %conv6.i81.6.1.1 = zext i8 %conv7.i83.5.1.1 to i32 *)
cast v_conv6_i81_6_1_1@uint32 v_conv7_i83_5_1_1@uint8;
(*   %shl.i82.6.1.1 = shl i32 %conv6.i81.6.1.1, 1 *)
shls discard_69 v_shl_i82_6_1_1 v_conv6_i81_6_1_1 1;
(*   %conv7.i83.6.1.1 = trunc i32 %shl.i82.6.1.1 to i8 *)
split tmp_v_shl_i82_6_1_1 v_conv7_i83_6_1_1 v_shl_i82_6_1_1 8;
vpc v_conv7_i83_6_1_1@uint8 v_conv7_i83_6_1_1@uint32;
(*   %conv.i71.7.1.1 = zext i8 %conv5.i80.6.1.1 to i32 *)
cast v_conv_i71_7_1_1@uint32 v_conv5_i80_6_1_1@uint8;
(*   %and.i72.7.1.1 = and i32 %conv.i71.7.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_7_1_1 v_conv_i71_7_1_1 (0x1)@uint32;
(*   %conv1.i73.7.1.1 = zext i8 %conv7.i83.6.1.1 to i32 *)
cast v_conv1_i73_7_1_1@uint32 v_conv7_i83_6_1_1@uint8;
(*   %mul.i74.7.1.1 = mul nsw i32 %and.i72.7.1.1, %conv1.i73.7.1.1 *)
mul v_mul_i74_7_1_1 v_and_i72_7_1_1 v_conv1_i73_7_1_1;
(*   %conv2.i75.7.1.1 = zext i8 %conv3.i77.6.1.1 to i32 *)
cast v_conv2_i75_7_1_1@uint32 v_conv3_i77_6_1_1@uint8;
(*   %xor.i76.7.1.1 = xor i32 %conv2.i75.7.1.1, %mul.i74.7.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_7_1_1 v_conv2_i75_7_1_1 v_mul_i74_7_1_1;
(*   %conv3.i77.7.1.1 = trunc i32 %xor.i76.7.1.1 to i8 *)
split tmp_v_xor_i76_7_1_1 v_conv3_i77_7_1_1 v_xor_i76_7_1_1 8;
vpc v_conv3_i77_7_1_1@uint8 v_conv3_i77_7_1_1@uint32;
(*   %conv15.1.1 = zext i8 %conv3.i77.7.1.1 to i32 *)
cast v_conv15_1_1@uint32 v_conv3_i77_7_1_1@uint8;
(*   %xor16.1.1 = xor i32 %xor.1.1, %conv15.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor16_1_1 v_xor_1_1 v_conv15_1_1;
(*   %conv17.1.1 = trunc i32 %xor16.1.1 to i8 *)
split tmp_v_xor16_1_1 v_conv17_1_1 v_xor16_1_1 8;
vpc v_conv17_1_1@uint8 v_conv17_1_1@uint32;
(*   %arrayidx21.1.1 = getelementptr inbounds i8, i8* %r, i64 13 *)
(*   store i8 %conv17.1.1, i8* %arrayidx21.1.1, align 1 *)
mov r_13 v_conv17_1_1;
(*   %arrayidx6.2 = getelementptr inbounds i8, i8* %a, i64 2 *)
(*   %arrayidx13.2 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %arrayidx.2372 = getelementptr inbounds i8, i8* %r, i64 11 *)
(*   %25 = load i8, i8* %arrayidx.2372, align 1 *)
mov v25 r_11;
(*   %conv.2373 = zext i8 %25 to i32 *)
cast v_conv_2373@uint32 v25@uint8;
(*   %26 = load i8, i8* %arrayidx6.2, align 1 *)
mov v26 a_2;
(*   %arrayidx8.2375 = getelementptr inbounds i8, i8* %b, i64 3 *)
(*   %27 = load i8, i8* %arrayidx8.2375, align 1 *)
mov v27 b_3;
(*   %conv.i.2377 = zext i8 %27 to i32 *)
cast v_conv_i_2377@uint32 v27@uint8;
(*   %and.i.2378 = and i32 %conv.i.2377, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2378 v_conv_i_2377 (0x1)@uint32;
(*   %conv1.i.2379 = zext i8 %26 to i32 *)
cast v_conv1_i_2379@uint32 v26@uint8;
(*   %mul.i.2380 = mul nsw i32 %and.i.2378, %conv1.i.2379 *)
mul v_mul_i_2380 v_and_i_2378 v_conv1_i_2379;
(*   %conv3.i.2381 = trunc i32 %mul.i.2380 to i8 *)
split tmp_v_mul_i_2380 v_conv3_i_2381 v_mul_i_2380 8;
vpc v_conv3_i_2381@uint8 v_conv3_i_2381@uint32;
(*   %conv4.i.2382 = zext i8 %27 to i32 *)
cast v_conv4_i_2382@uint32 v27@uint8;
(*   %shr.i.2383 = ashr i32 %conv4.i.2382, 1 *)
(* You may need to modify here *)
split v_shr_i_2383 tmp_to_be_used v_conv4_i_2382 1;
(*   %conv5.i.2384 = trunc i32 %shr.i.2383 to i8 *)
split tmp_v_shr_i_2383 v_conv5_i_2384 v_shr_i_2383 8;
vpc v_conv5_i_2384@uint8 v_conv5_i_2384@uint32;
(*   %conv6.i.2385 = zext i8 %26 to i32 *)
cast v_conv6_i_2385@uint32 v26@uint8;
(*   %shl.i.2386 = shl i32 %conv6.i.2385, 1 *)
shls discard_70 v_shl_i_2386 v_conv6_i_2385 1;
(*   %conv7.i.2387 = trunc i32 %shl.i.2386 to i8 *)
split tmp_v_shl_i_2386 v_conv7_i_2387 v_shl_i_2386 8;
vpc v_conv7_i_2387@uint8 v_conv7_i_2387@uint32;
(*   %conv.i.1.2388 = zext i8 %conv5.i.2384 to i32 *)
cast v_conv_i_1_2388@uint32 v_conv5_i_2384@uint8;
(*   %and.i.1.2389 = and i32 %conv.i.1.2388, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_2389 v_conv_i_1_2388 (0x1)@uint32;
(*   %conv1.i.1.2390 = zext i8 %conv7.i.2387 to i32 *)
cast v_conv1_i_1_2390@uint32 v_conv7_i_2387@uint8;
(*   %mul.i.1.2391 = mul nsw i32 %and.i.1.2389, %conv1.i.1.2390 *)
mul v_mul_i_1_2391 v_and_i_1_2389 v_conv1_i_1_2390;
(*   %conv2.i.1.2392 = zext i8 %conv3.i.2381 to i32 *)
cast v_conv2_i_1_2392@uint32 v_conv3_i_2381@uint8;
(*   %xor.i.1.2393 = xor i32 %conv2.i.1.2392, %mul.i.1.2391 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_2393 v_conv2_i_1_2392 v_mul_i_1_2391;
(*   %conv3.i.1.2394 = trunc i32 %xor.i.1.2393 to i8 *)
split tmp_v_xor_i_1_2393 v_conv3_i_1_2394 v_xor_i_1_2393 8;
vpc v_conv3_i_1_2394@uint8 v_conv3_i_1_2394@uint32;
(*   %conv4.i.1.2395 = zext i8 %conv5.i.2384 to i32 *)
cast v_conv4_i_1_2395@uint32 v_conv5_i_2384@uint8;
(*   %shr.i.1.2396 = ashr i32 %conv4.i.1.2395, 1 *)
(* You may need to modify here *)
split v_shr_i_1_2396 tmp_to_be_used v_conv4_i_1_2395 1;
(*   %conv5.i.1.2397 = trunc i32 %shr.i.1.2396 to i8 *)
split tmp_v_shr_i_1_2396 v_conv5_i_1_2397 v_shr_i_1_2396 8;
vpc v_conv5_i_1_2397@uint8 v_conv5_i_1_2397@uint32;
(*   %conv6.i.1.2398 = zext i8 %conv7.i.2387 to i32 *)
cast v_conv6_i_1_2398@uint32 v_conv7_i_2387@uint8;
(*   %shl.i.1.2399 = shl i32 %conv6.i.1.2398, 1 *)
shls discard_71 v_shl_i_1_2399 v_conv6_i_1_2398 1;
(*   %conv7.i.1.2400 = trunc i32 %shl.i.1.2399 to i8 *)
split tmp_v_shl_i_1_2399 v_conv7_i_1_2400 v_shl_i_1_2399 8;
vpc v_conv7_i_1_2400@uint8 v_conv7_i_1_2400@uint32;
(*   %conv.i.2.2401 = zext i8 %conv5.i.1.2397 to i32 *)
cast v_conv_i_2_2401@uint32 v_conv5_i_1_2397@uint8;
(*   %and.i.2.2402 = and i32 %conv.i.2.2401, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_2402 v_conv_i_2_2401 (0x1)@uint32;
(*   %conv1.i.2.2403 = zext i8 %conv7.i.1.2400 to i32 *)
cast v_conv1_i_2_2403@uint32 v_conv7_i_1_2400@uint8;
(*   %mul.i.2.2404 = mul nsw i32 %and.i.2.2402, %conv1.i.2.2403 *)
mul v_mul_i_2_2404 v_and_i_2_2402 v_conv1_i_2_2403;
(*   %conv2.i.2.2405 = zext i8 %conv3.i.1.2394 to i32 *)
cast v_conv2_i_2_2405@uint32 v_conv3_i_1_2394@uint8;
(*   %xor.i.2.2406 = xor i32 %conv2.i.2.2405, %mul.i.2.2404 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_2406 v_conv2_i_2_2405 v_mul_i_2_2404;
(*   %conv3.i.2.2407 = trunc i32 %xor.i.2.2406 to i8 *)
split tmp_v_xor_i_2_2406 v_conv3_i_2_2407 v_xor_i_2_2406 8;
vpc v_conv3_i_2_2407@uint8 v_conv3_i_2_2407@uint32;
(*   %conv4.i.2.2408 = zext i8 %conv5.i.1.2397 to i32 *)
cast v_conv4_i_2_2408@uint32 v_conv5_i_1_2397@uint8;
(*   %shr.i.2.2409 = ashr i32 %conv4.i.2.2408, 1 *)
(* You may need to modify here *)
split v_shr_i_2_2409 tmp_to_be_used v_conv4_i_2_2408 1;
(*   %conv5.i.2.2410 = trunc i32 %shr.i.2.2409 to i8 *)
split tmp_v_shr_i_2_2409 v_conv5_i_2_2410 v_shr_i_2_2409 8;
vpc v_conv5_i_2_2410@uint8 v_conv5_i_2_2410@uint32;
(*   %conv6.i.2.2411 = zext i8 %conv7.i.1.2400 to i32 *)
cast v_conv6_i_2_2411@uint32 v_conv7_i_1_2400@uint8;
(*   %shl.i.2.2412 = shl i32 %conv6.i.2.2411, 1 *)
shls discard_72 v_shl_i_2_2412 v_conv6_i_2_2411 1;
(*   %conv7.i.2.2413 = trunc i32 %shl.i.2.2412 to i8 *)
split tmp_v_shl_i_2_2412 v_conv7_i_2_2413 v_shl_i_2_2412 8;
vpc v_conv7_i_2_2413@uint8 v_conv7_i_2_2413@uint32;
(*   %conv.i.3.2414 = zext i8 %conv5.i.2.2410 to i32 *)
cast v_conv_i_3_2414@uint32 v_conv5_i_2_2410@uint8;
(*   %and.i.3.2415 = and i32 %conv.i.3.2414, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_2415 v_conv_i_3_2414 (0x1)@uint32;
(*   %conv1.i.3.2416 = zext i8 %conv7.i.2.2413 to i32 *)
cast v_conv1_i_3_2416@uint32 v_conv7_i_2_2413@uint8;
(*   %mul.i.3.2417 = mul nsw i32 %and.i.3.2415, %conv1.i.3.2416 *)
mul v_mul_i_3_2417 v_and_i_3_2415 v_conv1_i_3_2416;
(*   %conv2.i.3.2418 = zext i8 %conv3.i.2.2407 to i32 *)
cast v_conv2_i_3_2418@uint32 v_conv3_i_2_2407@uint8;
(*   %xor.i.3.2419 = xor i32 %conv2.i.3.2418, %mul.i.3.2417 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_2419 v_conv2_i_3_2418 v_mul_i_3_2417;
(*   %conv3.i.3.2420 = trunc i32 %xor.i.3.2419 to i8 *)
split tmp_v_xor_i_3_2419 v_conv3_i_3_2420 v_xor_i_3_2419 8;
vpc v_conv3_i_3_2420@uint8 v_conv3_i_3_2420@uint32;
(*   %conv4.i.3.2421 = zext i8 %conv5.i.2.2410 to i32 *)
cast v_conv4_i_3_2421@uint32 v_conv5_i_2_2410@uint8;
(*   %shr.i.3.2422 = ashr i32 %conv4.i.3.2421, 1 *)
(* You may need to modify here *)
split v_shr_i_3_2422 tmp_to_be_used v_conv4_i_3_2421 1;
(*   %conv5.i.3.2423 = trunc i32 %shr.i.3.2422 to i8 *)
split tmp_v_shr_i_3_2422 v_conv5_i_3_2423 v_shr_i_3_2422 8;
vpc v_conv5_i_3_2423@uint8 v_conv5_i_3_2423@uint32;
(*   %conv6.i.3.2424 = zext i8 %conv7.i.2.2413 to i32 *)
cast v_conv6_i_3_2424@uint32 v_conv7_i_2_2413@uint8;
(*   %shl.i.3.2425 = shl i32 %conv6.i.3.2424, 1 *)
shls discard_73 v_shl_i_3_2425 v_conv6_i_3_2424 1;
(*   %conv7.i.3.2426 = trunc i32 %shl.i.3.2425 to i8 *)
split tmp_v_shl_i_3_2425 v_conv7_i_3_2426 v_shl_i_3_2425 8;
vpc v_conv7_i_3_2426@uint8 v_conv7_i_3_2426@uint32;
(*   %conv.i.4.2427 = zext i8 %conv5.i.3.2423 to i32 *)
cast v_conv_i_4_2427@uint32 v_conv5_i_3_2423@uint8;
(*   %and.i.4.2428 = and i32 %conv.i.4.2427, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_2428 v_conv_i_4_2427 (0x1)@uint32;
(*   %conv1.i.4.2429 = zext i8 %conv7.i.3.2426 to i32 *)
cast v_conv1_i_4_2429@uint32 v_conv7_i_3_2426@uint8;
(*   %mul.i.4.2430 = mul nsw i32 %and.i.4.2428, %conv1.i.4.2429 *)
mul v_mul_i_4_2430 v_and_i_4_2428 v_conv1_i_4_2429;
(*   %conv2.i.4.2431 = zext i8 %conv3.i.3.2420 to i32 *)
cast v_conv2_i_4_2431@uint32 v_conv3_i_3_2420@uint8;
(*   %xor.i.4.2432 = xor i32 %conv2.i.4.2431, %mul.i.4.2430 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_2432 v_conv2_i_4_2431 v_mul_i_4_2430;
(*   %conv3.i.4.2433 = trunc i32 %xor.i.4.2432 to i8 *)
split tmp_v_xor_i_4_2432 v_conv3_i_4_2433 v_xor_i_4_2432 8;
vpc v_conv3_i_4_2433@uint8 v_conv3_i_4_2433@uint32;
(*   %conv4.i.4.2434 = zext i8 %conv5.i.3.2423 to i32 *)
cast v_conv4_i_4_2434@uint32 v_conv5_i_3_2423@uint8;
(*   %shr.i.4.2435 = ashr i32 %conv4.i.4.2434, 1 *)
(* You may need to modify here *)
split v_shr_i_4_2435 tmp_to_be_used v_conv4_i_4_2434 1;
(*   %conv5.i.4.2436 = trunc i32 %shr.i.4.2435 to i8 *)
split tmp_v_shr_i_4_2435 v_conv5_i_4_2436 v_shr_i_4_2435 8;
vpc v_conv5_i_4_2436@uint8 v_conv5_i_4_2436@uint32;
(*   %conv6.i.4.2437 = zext i8 %conv7.i.3.2426 to i32 *)
cast v_conv6_i_4_2437@uint32 v_conv7_i_3_2426@uint8;
(*   %shl.i.4.2438 = shl i32 %conv6.i.4.2437, 1 *)
shls discard_74 v_shl_i_4_2438 v_conv6_i_4_2437 1;
(*   %conv7.i.4.2439 = trunc i32 %shl.i.4.2438 to i8 *)
split tmp_v_shl_i_4_2438 v_conv7_i_4_2439 v_shl_i_4_2438 8;
vpc v_conv7_i_4_2439@uint8 v_conv7_i_4_2439@uint32;
(*   %conv.i.5.2440 = zext i8 %conv5.i.4.2436 to i32 *)
cast v_conv_i_5_2440@uint32 v_conv5_i_4_2436@uint8;
(*   %and.i.5.2441 = and i32 %conv.i.5.2440, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_2441 v_conv_i_5_2440 (0x1)@uint32;
(*   %conv1.i.5.2442 = zext i8 %conv7.i.4.2439 to i32 *)
cast v_conv1_i_5_2442@uint32 v_conv7_i_4_2439@uint8;
(*   %mul.i.5.2443 = mul nsw i32 %and.i.5.2441, %conv1.i.5.2442 *)
mul v_mul_i_5_2443 v_and_i_5_2441 v_conv1_i_5_2442;
(*   %conv2.i.5.2444 = zext i8 %conv3.i.4.2433 to i32 *)
cast v_conv2_i_5_2444@uint32 v_conv3_i_4_2433@uint8;
(*   %xor.i.5.2445 = xor i32 %conv2.i.5.2444, %mul.i.5.2443 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_2445 v_conv2_i_5_2444 v_mul_i_5_2443;
(*   %conv3.i.5.2446 = trunc i32 %xor.i.5.2445 to i8 *)
split tmp_v_xor_i_5_2445 v_conv3_i_5_2446 v_xor_i_5_2445 8;
vpc v_conv3_i_5_2446@uint8 v_conv3_i_5_2446@uint32;
(*   %conv4.i.5.2447 = zext i8 %conv5.i.4.2436 to i32 *)
cast v_conv4_i_5_2447@uint32 v_conv5_i_4_2436@uint8;
(*   %shr.i.5.2448 = ashr i32 %conv4.i.5.2447, 1 *)
(* You may need to modify here *)
split v_shr_i_5_2448 tmp_to_be_used v_conv4_i_5_2447 1;
(*   %conv5.i.5.2449 = trunc i32 %shr.i.5.2448 to i8 *)
split tmp_v_shr_i_5_2448 v_conv5_i_5_2449 v_shr_i_5_2448 8;
vpc v_conv5_i_5_2449@uint8 v_conv5_i_5_2449@uint32;
(*   %conv6.i.5.2450 = zext i8 %conv7.i.4.2439 to i32 *)
cast v_conv6_i_5_2450@uint32 v_conv7_i_4_2439@uint8;
(*   %shl.i.5.2451 = shl i32 %conv6.i.5.2450, 1 *)
shls discard_75 v_shl_i_5_2451 v_conv6_i_5_2450 1;
(*   %conv7.i.5.2452 = trunc i32 %shl.i.5.2451 to i8 *)
split tmp_v_shl_i_5_2451 v_conv7_i_5_2452 v_shl_i_5_2451 8;
vpc v_conv7_i_5_2452@uint8 v_conv7_i_5_2452@uint32;
(*   %conv.i.6.2453 = zext i8 %conv5.i.5.2449 to i32 *)
cast v_conv_i_6_2453@uint32 v_conv5_i_5_2449@uint8;
(*   %and.i.6.2454 = and i32 %conv.i.6.2453, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_2454 v_conv_i_6_2453 (0x1)@uint32;
(*   %conv1.i.6.2455 = zext i8 %conv7.i.5.2452 to i32 *)
cast v_conv1_i_6_2455@uint32 v_conv7_i_5_2452@uint8;
(*   %mul.i.6.2456 = mul nsw i32 %and.i.6.2454, %conv1.i.6.2455 *)
mul v_mul_i_6_2456 v_and_i_6_2454 v_conv1_i_6_2455;
(*   %conv2.i.6.2457 = zext i8 %conv3.i.5.2446 to i32 *)
cast v_conv2_i_6_2457@uint32 v_conv3_i_5_2446@uint8;
(*   %xor.i.6.2458 = xor i32 %conv2.i.6.2457, %mul.i.6.2456 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_2458 v_conv2_i_6_2457 v_mul_i_6_2456;
(*   %conv3.i.6.2459 = trunc i32 %xor.i.6.2458 to i8 *)
split tmp_v_xor_i_6_2458 v_conv3_i_6_2459 v_xor_i_6_2458 8;
vpc v_conv3_i_6_2459@uint8 v_conv3_i_6_2459@uint32;
(*   %conv4.i.6.2460 = zext i8 %conv5.i.5.2449 to i32 *)
cast v_conv4_i_6_2460@uint32 v_conv5_i_5_2449@uint8;
(*   %shr.i.6.2461 = ashr i32 %conv4.i.6.2460, 1 *)
(* You may need to modify here *)
split v_shr_i_6_2461 tmp_to_be_used v_conv4_i_6_2460 1;
(*   %conv5.i.6.2462 = trunc i32 %shr.i.6.2461 to i8 *)
split tmp_v_shr_i_6_2461 v_conv5_i_6_2462 v_shr_i_6_2461 8;
vpc v_conv5_i_6_2462@uint8 v_conv5_i_6_2462@uint32;
(*   %conv6.i.6.2463 = zext i8 %conv7.i.5.2452 to i32 *)
cast v_conv6_i_6_2463@uint32 v_conv7_i_5_2452@uint8;
(*   %shl.i.6.2464 = shl i32 %conv6.i.6.2463, 1 *)
shls discard_76 v_shl_i_6_2464 v_conv6_i_6_2463 1;
(*   %conv7.i.6.2465 = trunc i32 %shl.i.6.2464 to i8 *)
split tmp_v_shl_i_6_2464 v_conv7_i_6_2465 v_shl_i_6_2464 8;
vpc v_conv7_i_6_2465@uint8 v_conv7_i_6_2465@uint32;
(*   %conv.i.7.2466 = zext i8 %conv5.i.6.2462 to i32 *)
cast v_conv_i_7_2466@uint32 v_conv5_i_6_2462@uint8;
(*   %and.i.7.2467 = and i32 %conv.i.7.2466, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_2467 v_conv_i_7_2466 (0x1)@uint32;
(*   %conv1.i.7.2468 = zext i8 %conv7.i.6.2465 to i32 *)
cast v_conv1_i_7_2468@uint32 v_conv7_i_6_2465@uint8;
(*   %mul.i.7.2469 = mul nsw i32 %and.i.7.2467, %conv1.i.7.2468 *)
mul v_mul_i_7_2469 v_and_i_7_2467 v_conv1_i_7_2468;
(*   %conv2.i.7.2470 = zext i8 %conv3.i.6.2459 to i32 *)
cast v_conv2_i_7_2470@uint32 v_conv3_i_6_2459@uint8;
(*   %xor.i.7.2471 = xor i32 %conv2.i.7.2470, %mul.i.7.2469 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_2471 v_conv2_i_7_2470 v_mul_i_7_2469;
(*   %conv3.i.7.2472 = trunc i32 %xor.i.7.2471 to i8 *)
split tmp_v_xor_i_7_2471 v_conv3_i_7_2472 v_xor_i_7_2471 8;
vpc v_conv3_i_7_2472@uint8 v_conv3_i_7_2472@uint32;
(*   %conv9.2475 = zext i8 %conv3.i.7.2472 to i32 *)
cast v_conv9_2475@uint32 v_conv3_i_7_2472@uint8;
(*   %xor.2476 = xor i32 %conv.2373, %conv9.2475 *)
(* You may need to modify here *)
xor uint32 v_xor_2476 v_conv_2373 v_conv9_2475;
(*   %arrayidx11.2478 = getelementptr inbounds i8, i8* %a, i64 3 *)
(*   %28 = load i8, i8* %arrayidx11.2478, align 1 *)
mov v28 a_3;
(*   %29 = load i8, i8* %arrayidx13.2, align 1 *)
mov v29 b_2;
(*   %conv.i71.2480 = zext i8 %29 to i32 *)
cast v_conv_i71_2480@uint32 v29@uint8;
(*   %and.i72.2481 = and i32 %conv.i71.2480, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_2481 v_conv_i71_2480 (0x1)@uint32;
(*   %conv1.i73.2482 = zext i8 %28 to i32 *)
cast v_conv1_i73_2482@uint32 v28@uint8;
(*   %mul.i74.2483 = mul nsw i32 %and.i72.2481, %conv1.i73.2482 *)
mul v_mul_i74_2483 v_and_i72_2481 v_conv1_i73_2482;
(*   %conv3.i77.2484 = trunc i32 %mul.i74.2483 to i8 *)
split tmp_v_mul_i74_2483 v_conv3_i77_2484 v_mul_i74_2483 8;
vpc v_conv3_i77_2484@uint8 v_conv3_i77_2484@uint32;
(*   %conv4.i78.2485 = zext i8 %29 to i32 *)
cast v_conv4_i78_2485@uint32 v29@uint8;
(*   %shr.i79.2486 = ashr i32 %conv4.i78.2485, 1 *)
(* You may need to modify here *)
split v_shr_i79_2486 tmp_to_be_used v_conv4_i78_2485 1;
(*   %conv5.i80.2487 = trunc i32 %shr.i79.2486 to i8 *)
split tmp_v_shr_i79_2486 v_conv5_i80_2487 v_shr_i79_2486 8;
vpc v_conv5_i80_2487@uint8 v_conv5_i80_2487@uint32;
(*   %conv6.i81.2488 = zext i8 %28 to i32 *)
cast v_conv6_i81_2488@uint32 v28@uint8;
(*   %shl.i82.2489 = shl i32 %conv6.i81.2488, 1 *)
shls discard_77 v_shl_i82_2489 v_conv6_i81_2488 1;
(*   %conv7.i83.2490 = trunc i32 %shl.i82.2489 to i8 *)
split tmp_v_shl_i82_2489 v_conv7_i83_2490 v_shl_i82_2489 8;
vpc v_conv7_i83_2490@uint8 v_conv7_i83_2490@uint32;
(*   %conv.i71.1.2491 = zext i8 %conv5.i80.2487 to i32 *)
cast v_conv_i71_1_2491@uint32 v_conv5_i80_2487@uint8;
(*   %and.i72.1.2492 = and i32 %conv.i71.1.2491, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_1_2492 v_conv_i71_1_2491 (0x1)@uint32;
(*   %conv1.i73.1.2493 = zext i8 %conv7.i83.2490 to i32 *)
cast v_conv1_i73_1_2493@uint32 v_conv7_i83_2490@uint8;
(*   %mul.i74.1.2494 = mul nsw i32 %and.i72.1.2492, %conv1.i73.1.2493 *)
mul v_mul_i74_1_2494 v_and_i72_1_2492 v_conv1_i73_1_2493;
(*   %conv2.i75.1.2495 = zext i8 %conv3.i77.2484 to i32 *)
cast v_conv2_i75_1_2495@uint32 v_conv3_i77_2484@uint8;
(*   %xor.i76.1.2496 = xor i32 %conv2.i75.1.2495, %mul.i74.1.2494 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_1_2496 v_conv2_i75_1_2495 v_mul_i74_1_2494;
(*   %conv3.i77.1.2497 = trunc i32 %xor.i76.1.2496 to i8 *)
split tmp_v_xor_i76_1_2496 v_conv3_i77_1_2497 v_xor_i76_1_2496 8;
vpc v_conv3_i77_1_2497@uint8 v_conv3_i77_1_2497@uint32;
(*   %conv4.i78.1.2498 = zext i8 %conv5.i80.2487 to i32 *)
cast v_conv4_i78_1_2498@uint32 v_conv5_i80_2487@uint8;
(*   %shr.i79.1.2499 = ashr i32 %conv4.i78.1.2498, 1 *)
(* You may need to modify here *)
split v_shr_i79_1_2499 tmp_to_be_used v_conv4_i78_1_2498 1;
(*   %conv5.i80.1.2500 = trunc i32 %shr.i79.1.2499 to i8 *)
split tmp_v_shr_i79_1_2499 v_conv5_i80_1_2500 v_shr_i79_1_2499 8;
vpc v_conv5_i80_1_2500@uint8 v_conv5_i80_1_2500@uint32;
(*   %conv6.i81.1.2501 = zext i8 %conv7.i83.2490 to i32 *)
cast v_conv6_i81_1_2501@uint32 v_conv7_i83_2490@uint8;
(*   %shl.i82.1.2502 = shl i32 %conv6.i81.1.2501, 1 *)
shls discard_78 v_shl_i82_1_2502 v_conv6_i81_1_2501 1;
(*   %conv7.i83.1.2503 = trunc i32 %shl.i82.1.2502 to i8 *)
split tmp_v_shl_i82_1_2502 v_conv7_i83_1_2503 v_shl_i82_1_2502 8;
vpc v_conv7_i83_1_2503@uint8 v_conv7_i83_1_2503@uint32;
(*   %conv.i71.2.2504 = zext i8 %conv5.i80.1.2500 to i32 *)
cast v_conv_i71_2_2504@uint32 v_conv5_i80_1_2500@uint8;
(*   %and.i72.2.2505 = and i32 %conv.i71.2.2504, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_2_2505 v_conv_i71_2_2504 (0x1)@uint32;
(*   %conv1.i73.2.2506 = zext i8 %conv7.i83.1.2503 to i32 *)
cast v_conv1_i73_2_2506@uint32 v_conv7_i83_1_2503@uint8;
(*   %mul.i74.2.2507 = mul nsw i32 %and.i72.2.2505, %conv1.i73.2.2506 *)
mul v_mul_i74_2_2507 v_and_i72_2_2505 v_conv1_i73_2_2506;
(*   %conv2.i75.2.2508 = zext i8 %conv3.i77.1.2497 to i32 *)
cast v_conv2_i75_2_2508@uint32 v_conv3_i77_1_2497@uint8;
(*   %xor.i76.2.2509 = xor i32 %conv2.i75.2.2508, %mul.i74.2.2507 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_2_2509 v_conv2_i75_2_2508 v_mul_i74_2_2507;
(*   %conv3.i77.2.2510 = trunc i32 %xor.i76.2.2509 to i8 *)
split tmp_v_xor_i76_2_2509 v_conv3_i77_2_2510 v_xor_i76_2_2509 8;
vpc v_conv3_i77_2_2510@uint8 v_conv3_i77_2_2510@uint32;
(*   %conv4.i78.2.2511 = zext i8 %conv5.i80.1.2500 to i32 *)
cast v_conv4_i78_2_2511@uint32 v_conv5_i80_1_2500@uint8;
(*   %shr.i79.2.2512 = ashr i32 %conv4.i78.2.2511, 1 *)
(* You may need to modify here *)
split v_shr_i79_2_2512 tmp_to_be_used v_conv4_i78_2_2511 1;
(*   %conv5.i80.2.2513 = trunc i32 %shr.i79.2.2512 to i8 *)
split tmp_v_shr_i79_2_2512 v_conv5_i80_2_2513 v_shr_i79_2_2512 8;
vpc v_conv5_i80_2_2513@uint8 v_conv5_i80_2_2513@uint32;
(*   %conv6.i81.2.2514 = zext i8 %conv7.i83.1.2503 to i32 *)
cast v_conv6_i81_2_2514@uint32 v_conv7_i83_1_2503@uint8;
(*   %shl.i82.2.2515 = shl i32 %conv6.i81.2.2514, 1 *)
shls discard_79 v_shl_i82_2_2515 v_conv6_i81_2_2514 1;
(*   %conv7.i83.2.2516 = trunc i32 %shl.i82.2.2515 to i8 *)
split tmp_v_shl_i82_2_2515 v_conv7_i83_2_2516 v_shl_i82_2_2515 8;
vpc v_conv7_i83_2_2516@uint8 v_conv7_i83_2_2516@uint32;
(*   %conv.i71.3.2517 = zext i8 %conv5.i80.2.2513 to i32 *)
cast v_conv_i71_3_2517@uint32 v_conv5_i80_2_2513@uint8;
(*   %and.i72.3.2518 = and i32 %conv.i71.3.2517, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_3_2518 v_conv_i71_3_2517 (0x1)@uint32;
(*   %conv1.i73.3.2519 = zext i8 %conv7.i83.2.2516 to i32 *)
cast v_conv1_i73_3_2519@uint32 v_conv7_i83_2_2516@uint8;
(*   %mul.i74.3.2520 = mul nsw i32 %and.i72.3.2518, %conv1.i73.3.2519 *)
mul v_mul_i74_3_2520 v_and_i72_3_2518 v_conv1_i73_3_2519;
(*   %conv2.i75.3.2521 = zext i8 %conv3.i77.2.2510 to i32 *)
cast v_conv2_i75_3_2521@uint32 v_conv3_i77_2_2510@uint8;
(*   %xor.i76.3.2522 = xor i32 %conv2.i75.3.2521, %mul.i74.3.2520 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_3_2522 v_conv2_i75_3_2521 v_mul_i74_3_2520;
(*   %conv3.i77.3.2523 = trunc i32 %xor.i76.3.2522 to i8 *)
split tmp_v_xor_i76_3_2522 v_conv3_i77_3_2523 v_xor_i76_3_2522 8;
vpc v_conv3_i77_3_2523@uint8 v_conv3_i77_3_2523@uint32;
(*   %conv4.i78.3.2524 = zext i8 %conv5.i80.2.2513 to i32 *)
cast v_conv4_i78_3_2524@uint32 v_conv5_i80_2_2513@uint8;
(*   %shr.i79.3.2525 = ashr i32 %conv4.i78.3.2524, 1 *)
(* You may need to modify here *)
split v_shr_i79_3_2525 tmp_to_be_used v_conv4_i78_3_2524 1;
(*   %conv5.i80.3.2526 = trunc i32 %shr.i79.3.2525 to i8 *)
split tmp_v_shr_i79_3_2525 v_conv5_i80_3_2526 v_shr_i79_3_2525 8;
vpc v_conv5_i80_3_2526@uint8 v_conv5_i80_3_2526@uint32;
(*   %conv6.i81.3.2527 = zext i8 %conv7.i83.2.2516 to i32 *)
cast v_conv6_i81_3_2527@uint32 v_conv7_i83_2_2516@uint8;
(*   %shl.i82.3.2528 = shl i32 %conv6.i81.3.2527, 1 *)
shls discard_80 v_shl_i82_3_2528 v_conv6_i81_3_2527 1;
(*   %conv7.i83.3.2529 = trunc i32 %shl.i82.3.2528 to i8 *)
split tmp_v_shl_i82_3_2528 v_conv7_i83_3_2529 v_shl_i82_3_2528 8;
vpc v_conv7_i83_3_2529@uint8 v_conv7_i83_3_2529@uint32;
(*   %conv.i71.4.2530 = zext i8 %conv5.i80.3.2526 to i32 *)
cast v_conv_i71_4_2530@uint32 v_conv5_i80_3_2526@uint8;
(*   %and.i72.4.2531 = and i32 %conv.i71.4.2530, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_4_2531 v_conv_i71_4_2530 (0x1)@uint32;
(*   %conv1.i73.4.2532 = zext i8 %conv7.i83.3.2529 to i32 *)
cast v_conv1_i73_4_2532@uint32 v_conv7_i83_3_2529@uint8;
(*   %mul.i74.4.2533 = mul nsw i32 %and.i72.4.2531, %conv1.i73.4.2532 *)
mul v_mul_i74_4_2533 v_and_i72_4_2531 v_conv1_i73_4_2532;
(*   %conv2.i75.4.2534 = zext i8 %conv3.i77.3.2523 to i32 *)
cast v_conv2_i75_4_2534@uint32 v_conv3_i77_3_2523@uint8;
(*   %xor.i76.4.2535 = xor i32 %conv2.i75.4.2534, %mul.i74.4.2533 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_4_2535 v_conv2_i75_4_2534 v_mul_i74_4_2533;
(*   %conv3.i77.4.2536 = trunc i32 %xor.i76.4.2535 to i8 *)
split tmp_v_xor_i76_4_2535 v_conv3_i77_4_2536 v_xor_i76_4_2535 8;
vpc v_conv3_i77_4_2536@uint8 v_conv3_i77_4_2536@uint32;
(*   %conv4.i78.4.2537 = zext i8 %conv5.i80.3.2526 to i32 *)
cast v_conv4_i78_4_2537@uint32 v_conv5_i80_3_2526@uint8;
(*   %shr.i79.4.2538 = ashr i32 %conv4.i78.4.2537, 1 *)
(* You may need to modify here *)
split v_shr_i79_4_2538 tmp_to_be_used v_conv4_i78_4_2537 1;
(*   %conv5.i80.4.2539 = trunc i32 %shr.i79.4.2538 to i8 *)
split tmp_v_shr_i79_4_2538 v_conv5_i80_4_2539 v_shr_i79_4_2538 8;
vpc v_conv5_i80_4_2539@uint8 v_conv5_i80_4_2539@uint32;
(*   %conv6.i81.4.2540 = zext i8 %conv7.i83.3.2529 to i32 *)
cast v_conv6_i81_4_2540@uint32 v_conv7_i83_3_2529@uint8;
(*   %shl.i82.4.2541 = shl i32 %conv6.i81.4.2540, 1 *)
shls discard_81 v_shl_i82_4_2541 v_conv6_i81_4_2540 1;
(*   %conv7.i83.4.2542 = trunc i32 %shl.i82.4.2541 to i8 *)
split tmp_v_shl_i82_4_2541 v_conv7_i83_4_2542 v_shl_i82_4_2541 8;
vpc v_conv7_i83_4_2542@uint8 v_conv7_i83_4_2542@uint32;
(*   %conv.i71.5.2543 = zext i8 %conv5.i80.4.2539 to i32 *)
cast v_conv_i71_5_2543@uint32 v_conv5_i80_4_2539@uint8;
(*   %and.i72.5.2544 = and i32 %conv.i71.5.2543, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_5_2544 v_conv_i71_5_2543 (0x1)@uint32;
(*   %conv1.i73.5.2545 = zext i8 %conv7.i83.4.2542 to i32 *)
cast v_conv1_i73_5_2545@uint32 v_conv7_i83_4_2542@uint8;
(*   %mul.i74.5.2546 = mul nsw i32 %and.i72.5.2544, %conv1.i73.5.2545 *)
mul v_mul_i74_5_2546 v_and_i72_5_2544 v_conv1_i73_5_2545;
(*   %conv2.i75.5.2547 = zext i8 %conv3.i77.4.2536 to i32 *)
cast v_conv2_i75_5_2547@uint32 v_conv3_i77_4_2536@uint8;
(*   %xor.i76.5.2548 = xor i32 %conv2.i75.5.2547, %mul.i74.5.2546 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_5_2548 v_conv2_i75_5_2547 v_mul_i74_5_2546;
(*   %conv3.i77.5.2549 = trunc i32 %xor.i76.5.2548 to i8 *)
split tmp_v_xor_i76_5_2548 v_conv3_i77_5_2549 v_xor_i76_5_2548 8;
vpc v_conv3_i77_5_2549@uint8 v_conv3_i77_5_2549@uint32;
(*   %conv4.i78.5.2550 = zext i8 %conv5.i80.4.2539 to i32 *)
cast v_conv4_i78_5_2550@uint32 v_conv5_i80_4_2539@uint8;
(*   %shr.i79.5.2551 = ashr i32 %conv4.i78.5.2550, 1 *)
(* You may need to modify here *)
split v_shr_i79_5_2551 tmp_to_be_used v_conv4_i78_5_2550 1;
(*   %conv5.i80.5.2552 = trunc i32 %shr.i79.5.2551 to i8 *)
split tmp_v_shr_i79_5_2551 v_conv5_i80_5_2552 v_shr_i79_5_2551 8;
vpc v_conv5_i80_5_2552@uint8 v_conv5_i80_5_2552@uint32;
(*   %conv6.i81.5.2553 = zext i8 %conv7.i83.4.2542 to i32 *)
cast v_conv6_i81_5_2553@uint32 v_conv7_i83_4_2542@uint8;
(*   %shl.i82.5.2554 = shl i32 %conv6.i81.5.2553, 1 *)
shls discard_82 v_shl_i82_5_2554 v_conv6_i81_5_2553 1;
(*   %conv7.i83.5.2555 = trunc i32 %shl.i82.5.2554 to i8 *)
split tmp_v_shl_i82_5_2554 v_conv7_i83_5_2555 v_shl_i82_5_2554 8;
vpc v_conv7_i83_5_2555@uint8 v_conv7_i83_5_2555@uint32;
(*   %conv.i71.6.2556 = zext i8 %conv5.i80.5.2552 to i32 *)
cast v_conv_i71_6_2556@uint32 v_conv5_i80_5_2552@uint8;
(*   %and.i72.6.2557 = and i32 %conv.i71.6.2556, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_6_2557 v_conv_i71_6_2556 (0x1)@uint32;
(*   %conv1.i73.6.2558 = zext i8 %conv7.i83.5.2555 to i32 *)
cast v_conv1_i73_6_2558@uint32 v_conv7_i83_5_2555@uint8;
(*   %mul.i74.6.2559 = mul nsw i32 %and.i72.6.2557, %conv1.i73.6.2558 *)
mul v_mul_i74_6_2559 v_and_i72_6_2557 v_conv1_i73_6_2558;
(*   %conv2.i75.6.2560 = zext i8 %conv3.i77.5.2549 to i32 *)
cast v_conv2_i75_6_2560@uint32 v_conv3_i77_5_2549@uint8;
(*   %xor.i76.6.2561 = xor i32 %conv2.i75.6.2560, %mul.i74.6.2559 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_6_2561 v_conv2_i75_6_2560 v_mul_i74_6_2559;
(*   %conv3.i77.6.2562 = trunc i32 %xor.i76.6.2561 to i8 *)
split tmp_v_xor_i76_6_2561 v_conv3_i77_6_2562 v_xor_i76_6_2561 8;
vpc v_conv3_i77_6_2562@uint8 v_conv3_i77_6_2562@uint32;
(*   %conv4.i78.6.2563 = zext i8 %conv5.i80.5.2552 to i32 *)
cast v_conv4_i78_6_2563@uint32 v_conv5_i80_5_2552@uint8;
(*   %shr.i79.6.2564 = ashr i32 %conv4.i78.6.2563, 1 *)
(* You may need to modify here *)
split v_shr_i79_6_2564 tmp_to_be_used v_conv4_i78_6_2563 1;
(*   %conv5.i80.6.2565 = trunc i32 %shr.i79.6.2564 to i8 *)
split tmp_v_shr_i79_6_2564 v_conv5_i80_6_2565 v_shr_i79_6_2564 8;
vpc v_conv5_i80_6_2565@uint8 v_conv5_i80_6_2565@uint32;
(*   %conv6.i81.6.2566 = zext i8 %conv7.i83.5.2555 to i32 *)
cast v_conv6_i81_6_2566@uint32 v_conv7_i83_5_2555@uint8;
(*   %shl.i82.6.2567 = shl i32 %conv6.i81.6.2566, 1 *)
shls discard_83 v_shl_i82_6_2567 v_conv6_i81_6_2566 1;
(*   %conv7.i83.6.2568 = trunc i32 %shl.i82.6.2567 to i8 *)
split tmp_v_shl_i82_6_2567 v_conv7_i83_6_2568 v_shl_i82_6_2567 8;
vpc v_conv7_i83_6_2568@uint8 v_conv7_i83_6_2568@uint32;
(*   %conv.i71.7.2569 = zext i8 %conv5.i80.6.2565 to i32 *)
cast v_conv_i71_7_2569@uint32 v_conv5_i80_6_2565@uint8;
(*   %and.i72.7.2570 = and i32 %conv.i71.7.2569, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_7_2570 v_conv_i71_7_2569 (0x1)@uint32;
(*   %conv1.i73.7.2571 = zext i8 %conv7.i83.6.2568 to i32 *)
cast v_conv1_i73_7_2571@uint32 v_conv7_i83_6_2568@uint8;
(*   %mul.i74.7.2572 = mul nsw i32 %and.i72.7.2570, %conv1.i73.7.2571 *)
mul v_mul_i74_7_2572 v_and_i72_7_2570 v_conv1_i73_7_2571;
(*   %conv2.i75.7.2573 = zext i8 %conv3.i77.6.2562 to i32 *)
cast v_conv2_i75_7_2573@uint32 v_conv3_i77_6_2562@uint8;
(*   %xor.i76.7.2574 = xor i32 %conv2.i75.7.2573, %mul.i74.7.2572 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_7_2574 v_conv2_i75_7_2573 v_mul_i74_7_2572;
(*   %conv3.i77.7.2575 = trunc i32 %xor.i76.7.2574 to i8 *)
split tmp_v_xor_i76_7_2574 v_conv3_i77_7_2575 v_xor_i76_7_2574 8;
vpc v_conv3_i77_7_2575@uint8 v_conv3_i77_7_2575@uint32;
(*   %conv15.2578 = zext i8 %conv3.i77.7.2575 to i32 *)
cast v_conv15_2578@uint32 v_conv3_i77_7_2575@uint8;
(*   %xor16.2579 = xor i32 %xor.2476, %conv15.2578 *)
(* You may need to modify here *)
xor uint32 v_xor16_2579 v_xor_2476 v_conv15_2578;
(*   %conv17.2580 = trunc i32 %xor16.2579 to i8 *)
split tmp_v_xor16_2579 v_conv17_2580 v_xor16_2579 8;
vpc v_conv17_2580@uint8 v_conv17_2580@uint32;
(*   %arrayidx21.2584 = getelementptr inbounds i8, i8* %r, i64 14 *)
(*   store i8 %conv17.2580, i8* %arrayidx21.2584, align 1 *)
mov r_14 v_conv17_2580;
(*   %30 = load i8, i8* %a, align 1 *)
mov v30 a_0;
(*   %31 = load i8, i8* %b, align 1 *)
mov v31 b_0;
(*   %conv.i132 = zext i8 %31 to i32 *)
cast v_conv_i132@uint32 v31@uint8;
(*   %and.i133 = and i32 %conv.i132, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133 v_conv_i132 (0x1)@uint32;
(*   %conv1.i134 = zext i8 %30 to i32 *)
cast v_conv1_i134@uint32 v30@uint8;
(*   %mul.i135 = mul nsw i32 %and.i133, %conv1.i134 *)
mul v_mul_i135 v_and_i133 v_conv1_i134;
(*   %conv3.i138 = trunc i32 %mul.i135 to i8 *)
split tmp_v_mul_i135 v_conv3_i138 v_mul_i135 8;
vpc v_conv3_i138@uint8 v_conv3_i138@uint32;
(*   %conv4.i139 = zext i8 %31 to i32 *)
cast v_conv4_i139@uint32 v31@uint8;
(*   %shr.i140 = ashr i32 %conv4.i139, 1 *)
(* You may need to modify here *)
split v_shr_i140 tmp_to_be_used v_conv4_i139 1;
(*   %conv5.i141 = trunc i32 %shr.i140 to i8 *)
split tmp_v_shr_i140 v_conv5_i141 v_shr_i140 8;
vpc v_conv5_i141@uint8 v_conv5_i141@uint32;
(*   %conv6.i142 = zext i8 %30 to i32 *)
cast v_conv6_i142@uint32 v30@uint8;
(*   %shl.i143 = shl i32 %conv6.i142, 1 *)
shls discard_84 v_shl_i143 v_conv6_i142 1;
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
shls discard_85 v_shl_i143_1 v_conv6_i142_1 1;
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
shls discard_86 v_shl_i143_2 v_conv6_i142_2 1;
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
shls discard_87 v_shl_i143_3 v_conv6_i142_3 1;
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
shls discard_88 v_shl_i143_4 v_conv6_i142_4 1;
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
shls discard_89 v_shl_i143_5 v_conv6_i142_5 1;
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
shls discard_90 v_shl_i143_6 v_conv6_i142_6 1;
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
(*   %32 = load i8, i8* %scevgep44.1, align 1 *)
mov v32 r_1;
(*   %conv48.1 = zext i8 %32 to i32 *)
cast v_conv48_1@uint32 v32@uint8;
(*   %33 = load i8, i8* %c, align 1 *)
mov v33 c_0;
(*   %conv51.1 = zext i8 %33 to i32 *)
cast v_conv51_1@uint32 v33@uint8;
(*   %xor52.1 = xor i32 %conv51.1, %conv48.1 *)
(* You may need to modify here *)
xor uint32 v_xor52_1 v_conv51_1 v_conv48_1;
(*   %conv53.1 = trunc i32 %xor52.1 to i8 *)
split tmp_v_xor52_1 v_conv53_1 v_xor52_1 8;
vpc v_conv53_1@uint8 v_conv53_1@uint32;
(*   store i8 %conv53.1, i8* %c, align 1 *)
mov c_0 v_conv53_1;
(*   %scevgep44.2 = getelementptr i8, i8* %r, i64 2 *)
(*   %34 = load i8, i8* %scevgep44.2, align 1 *)
mov v34 r_2;
(*   %conv48.2 = zext i8 %34 to i32 *)
cast v_conv48_2@uint32 v34@uint8;
(*   %35 = load i8, i8* %c, align 1 *)
mov v35 c_0;
(*   %conv51.2 = zext i8 %35 to i32 *)
cast v_conv51_2@uint32 v35@uint8;
(*   %xor52.2 = xor i32 %conv51.2, %conv48.2 *)
(* You may need to modify here *)
xor uint32 v_xor52_2 v_conv51_2 v_conv48_2;
(*   %conv53.2 = trunc i32 %xor52.2 to i8 *)
split tmp_v_xor52_2 v_conv53_2 v_xor52_2 8;
vpc v_conv53_2@uint8 v_conv53_2@uint32;
(*   store i8 %conv53.2, i8* %c, align 1 *)
mov c_0 v_conv53_2;
(*   %scevgep44.3 = getelementptr i8, i8* %r, i64 3 *)
(*   %36 = load i8, i8* %scevgep44.3, align 1 *)
mov v36 r_3;
(*   %conv48.3 = zext i8 %36 to i32 *)
cast v_conv48_3@uint32 v36@uint8;
(*   %37 = load i8, i8* %c, align 1 *)
mov v37 c_0;
(*   %conv51.3 = zext i8 %37 to i32 *)
cast v_conv51_3@uint32 v37@uint8;
(*   %xor52.3 = xor i32 %conv51.3, %conv48.3 *)
(* You may need to modify here *)
xor uint32 v_xor52_3 v_conv51_3 v_conv48_3;
(*   %conv53.3 = trunc i32 %xor52.3 to i8 *)
split tmp_v_xor52_3 v_conv53_3 v_xor52_3 8;
vpc v_conv53_3@uint8 v_conv53_3@uint32;
(*   store i8 %conv53.3, i8* %c, align 1 *)
mov c_0 v_conv53_3;
(*   %scevgep43 = getelementptr i8, i8* %r, i64 4 *)
(*   %arrayidx31.1 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %38 = load i8, i8* %arrayidx31.1, align 1 *)
mov v38 a_1;
(*   %arrayidx33.1 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %39 = load i8, i8* %arrayidx33.1, align 1 *)
mov v39 b_1;
(*   %conv.i132.147 = zext i8 %39 to i32 *)
cast v_conv_i132_147@uint32 v39@uint8;
(*   %and.i133.148 = and i32 %conv.i132.147, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_148 v_conv_i132_147 (0x1)@uint32;
(*   %conv1.i134.149 = zext i8 %38 to i32 *)
cast v_conv1_i134_149@uint32 v38@uint8;
(*   %mul.i135.150 = mul nsw i32 %and.i133.148, %conv1.i134.149 *)
mul v_mul_i135_150 v_and_i133_148 v_conv1_i134_149;
(*   %conv3.i138.151 = trunc i32 %mul.i135.150 to i8 *)
split tmp_v_mul_i135_150 v_conv3_i138_151 v_mul_i135_150 8;
vpc v_conv3_i138_151@uint8 v_conv3_i138_151@uint32;
(*   %conv4.i139.152 = zext i8 %39 to i32 *)
cast v_conv4_i139_152@uint32 v39@uint8;
(*   %shr.i140.153 = ashr i32 %conv4.i139.152, 1 *)
(* You may need to modify here *)
split v_shr_i140_153 tmp_to_be_used v_conv4_i139_152 1;
(*   %conv5.i141.154 = trunc i32 %shr.i140.153 to i8 *)
split tmp_v_shr_i140_153 v_conv5_i141_154 v_shr_i140_153 8;
vpc v_conv5_i141_154@uint8 v_conv5_i141_154@uint32;
(*   %conv6.i142.155 = zext i8 %38 to i32 *)
cast v_conv6_i142_155@uint32 v38@uint8;
(*   %shl.i143.156 = shl i32 %conv6.i142.155, 1 *)
shls discard_91 v_shl_i143_156 v_conv6_i142_155 1;
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
shls discard_92 v_shl_i143_1_1 v_conv6_i142_1_1 1;
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
shls discard_93 v_shl_i143_2_1 v_conv6_i142_2_1 1;
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
shls discard_94 v_shl_i143_3_1 v_conv6_i142_3_1 1;
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
shls discard_95 v_shl_i143_4_1 v_conv6_i142_4_1 1;
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
shls discard_96 v_shl_i143_5_1 v_conv6_i142_5_1 1;
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
shls discard_97 v_shl_i143_6_1 v_conv6_i142_6_1 1;
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
(*   %40 = load i8, i8* %scevgep43, align 1 *)
mov v40 r_4;
(*   %conv48.160 = zext i8 %40 to i32 *)
cast v_conv48_160@uint32 v40@uint8;
(*   %41 = load i8, i8* %arrayidx50.1, align 1 *)
mov v41 c_1;
(*   %conv51.161 = zext i8 %41 to i32 *)
cast v_conv51_161@uint32 v41@uint8;
(*   %xor52.162 = xor i32 %conv51.161, %conv48.160 *)
(* You may need to modify here *)
xor uint32 v_xor52_162 v_conv51_161 v_conv48_160;
(*   %conv53.163 = trunc i32 %xor52.162 to i8 *)
split tmp_v_xor52_162 v_conv53_163 v_xor52_162 8;
vpc v_conv53_163@uint8 v_conv53_163@uint32;
(*   store i8 %conv53.163, i8* %arrayidx50.1, align 1 *)
mov c_1 v_conv53_163;
(*   %scevgep44.2.1 = getelementptr i8, i8* %scevgep43, i64 2 *)
(*   %42 = load i8, i8* %scevgep44.2.1, align 1 *)
mov v42 r_6;
(*   %conv48.2.1 = zext i8 %42 to i32 *)
cast v_conv48_2_1@uint32 v42@uint8;
(*   %43 = load i8, i8* %arrayidx50.1, align 1 *)
mov v43 c_1;
(*   %conv51.2.1 = zext i8 %43 to i32 *)
cast v_conv51_2_1@uint32 v43@uint8;
(*   %xor52.2.1 = xor i32 %conv51.2.1, %conv48.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor52_2_1 v_conv51_2_1 v_conv48_2_1;
(*   %conv53.2.1 = trunc i32 %xor52.2.1 to i8 *)
split tmp_v_xor52_2_1 v_conv53_2_1 v_xor52_2_1 8;
vpc v_conv53_2_1@uint8 v_conv53_2_1@uint32;
(*   store i8 %conv53.2.1, i8* %arrayidx50.1, align 1 *)
mov c_1 v_conv53_2_1;
(*   %scevgep44.3.1 = getelementptr i8, i8* %scevgep43, i64 3 *)
(*   %44 = load i8, i8* %scevgep44.3.1, align 1 *)
mov v44 r_7;
(*   %conv48.3.1 = zext i8 %44 to i32 *)
cast v_conv48_3_1@uint32 v44@uint8;
(*   %45 = load i8, i8* %arrayidx50.1, align 1 *)
mov v45 c_1;
(*   %conv51.3.1 = zext i8 %45 to i32 *)
cast v_conv51_3_1@uint32 v45@uint8;
(*   %xor52.3.1 = xor i32 %conv51.3.1, %conv48.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor52_3_1 v_conv51_3_1 v_conv48_3_1;
(*   %conv53.3.1 = trunc i32 %xor52.3.1 to i8 *)
split tmp_v_xor52_3_1 v_conv53_3_1 v_xor52_3_1 8;
vpc v_conv53_3_1@uint8 v_conv53_3_1@uint32;
(*   store i8 %conv53.3.1, i8* %arrayidx50.1, align 1 *)
mov c_1 v_conv53_3_1;
(*   %scevgep43.1 = getelementptr i8, i8* %scevgep43, i64 4 *)
(*   %arrayidx31.2 = getelementptr inbounds i8, i8* %a, i64 2 *)
(*   %46 = load i8, i8* %arrayidx31.2, align 1 *)
mov v46 a_2;
(*   %arrayidx33.2 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %47 = load i8, i8* %arrayidx33.2, align 1 *)
mov v47 b_2;
(*   %conv.i132.267 = zext i8 %47 to i32 *)
cast v_conv_i132_267@uint32 v47@uint8;
(*   %and.i133.268 = and i32 %conv.i132.267, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_268 v_conv_i132_267 (0x1)@uint32;
(*   %conv1.i134.269 = zext i8 %46 to i32 *)
cast v_conv1_i134_269@uint32 v46@uint8;
(*   %mul.i135.270 = mul nsw i32 %and.i133.268, %conv1.i134.269 *)
mul v_mul_i135_270 v_and_i133_268 v_conv1_i134_269;
(*   %conv3.i138.271 = trunc i32 %mul.i135.270 to i8 *)
split tmp_v_mul_i135_270 v_conv3_i138_271 v_mul_i135_270 8;
vpc v_conv3_i138_271@uint8 v_conv3_i138_271@uint32;
(*   %conv4.i139.272 = zext i8 %47 to i32 *)
cast v_conv4_i139_272@uint32 v47@uint8;
(*   %shr.i140.273 = ashr i32 %conv4.i139.272, 1 *)
(* You may need to modify here *)
split v_shr_i140_273 tmp_to_be_used v_conv4_i139_272 1;
(*   %conv5.i141.274 = trunc i32 %shr.i140.273 to i8 *)
split tmp_v_shr_i140_273 v_conv5_i141_274 v_shr_i140_273 8;
vpc v_conv5_i141_274@uint8 v_conv5_i141_274@uint32;
(*   %conv6.i142.275 = zext i8 %46 to i32 *)
cast v_conv6_i142_275@uint32 v46@uint8;
(*   %shl.i143.276 = shl i32 %conv6.i142.275, 1 *)
shls discard_98 v_shl_i143_276 v_conv6_i142_275 1;
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
shls discard_99 v_shl_i143_1_2 v_conv6_i142_1_2 1;
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
shls discard_100 v_shl_i143_2_2 v_conv6_i142_2_2 1;
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
shls discard_101 v_shl_i143_3_2 v_conv6_i142_3_2 1;
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
shls discard_102 v_shl_i143_4_2 v_conv6_i142_4_2 1;
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
shls discard_103 v_shl_i143_5_2 v_conv6_i142_5_2 1;
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
shls discard_104 v_shl_i143_6_2 v_conv6_i142_6_2 1;
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
(*   %48 = load i8, i8* %scevgep43.1, align 1 *)
mov v48 r_8;
(*   %conv48.280 = zext i8 %48 to i32 *)
cast v_conv48_280@uint32 v48@uint8;
(*   %49 = load i8, i8* %arrayidx50.2, align 1 *)
mov v49 c_2;
(*   %conv51.281 = zext i8 %49 to i32 *)
cast v_conv51_281@uint32 v49@uint8;
(*   %xor52.282 = xor i32 %conv51.281, %conv48.280 *)
(* You may need to modify here *)
xor uint32 v_xor52_282 v_conv51_281 v_conv48_280;
(*   %conv53.283 = trunc i32 %xor52.282 to i8 *)
split tmp_v_xor52_282 v_conv53_283 v_xor52_282 8;
vpc v_conv53_283@uint8 v_conv53_283@uint32;
(*   store i8 %conv53.283, i8* %arrayidx50.2, align 1 *)
mov c_2 v_conv53_283;
(*   %scevgep44.1.2 = getelementptr i8, i8* %scevgep43.1, i64 1 *)
(*   %50 = load i8, i8* %scevgep44.1.2, align 1 *)
mov v50 r_9;
(*   %conv48.1.2 = zext i8 %50 to i32 *)
cast v_conv48_1_2@uint32 v50@uint8;
(*   %51 = load i8, i8* %arrayidx50.2, align 1 *)
mov v51 c_2;
(*   %conv51.1.2 = zext i8 %51 to i32 *)
cast v_conv51_1_2@uint32 v51@uint8;
(*   %xor52.1.2 = xor i32 %conv51.1.2, %conv48.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor52_1_2 v_conv51_1_2 v_conv48_1_2;
(*   %conv53.1.2 = trunc i32 %xor52.1.2 to i8 *)
split tmp_v_xor52_1_2 v_conv53_1_2 v_xor52_1_2 8;
vpc v_conv53_1_2@uint8 v_conv53_1_2@uint32;
(*   store i8 %conv53.1.2, i8* %arrayidx50.2, align 1 *)
mov c_2 v_conv53_1_2;
(*   %scevgep44.3.2 = getelementptr i8, i8* %scevgep43.1, i64 3 *)
(*   %52 = load i8, i8* %scevgep44.3.2, align 1 *)
mov v52 r_11;
(*   %conv48.3.2 = zext i8 %52 to i32 *)
cast v_conv48_3_2@uint32 v52@uint8;
(*   %53 = load i8, i8* %arrayidx50.2, align 1 *)
mov v53 c_2;
(*   %conv51.3.2 = zext i8 %53 to i32 *)
cast v_conv51_3_2@uint32 v53@uint8;
(*   %xor52.3.2 = xor i32 %conv51.3.2, %conv48.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor52_3_2 v_conv51_3_2 v_conv48_3_2;
(*   %conv53.3.2 = trunc i32 %xor52.3.2 to i8 *)
split tmp_v_xor52_3_2 v_conv53_3_2 v_xor52_3_2 8;
vpc v_conv53_3_2@uint8 v_conv53_3_2@uint32;
(*   store i8 %conv53.3.2, i8* %arrayidx50.2, align 1 *)
mov c_2 v_conv53_3_2;
(*   %scevgep43.2 = getelementptr i8, i8* %scevgep43.1, i64 4 *)
(*   %arrayidx31.3 = getelementptr inbounds i8, i8* %a, i64 3 *)
(*   %54 = load i8, i8* %arrayidx31.3, align 1 *)
mov v54 a_3;
(*   %arrayidx33.3 = getelementptr inbounds i8, i8* %b, i64 3 *)
(*   %55 = load i8, i8* %arrayidx33.3, align 1 *)
mov v55 b_3;
(*   %conv.i132.387 = zext i8 %55 to i32 *)
cast v_conv_i132_387@uint32 v55@uint8;
(*   %and.i133.388 = and i32 %conv.i132.387, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_388 v_conv_i132_387 (0x1)@uint32;
(*   %conv1.i134.389 = zext i8 %54 to i32 *)
cast v_conv1_i134_389@uint32 v54@uint8;
(*   %mul.i135.390 = mul nsw i32 %and.i133.388, %conv1.i134.389 *)
mul v_mul_i135_390 v_and_i133_388 v_conv1_i134_389;
(*   %conv3.i138.391 = trunc i32 %mul.i135.390 to i8 *)
split tmp_v_mul_i135_390 v_conv3_i138_391 v_mul_i135_390 8;
vpc v_conv3_i138_391@uint8 v_conv3_i138_391@uint32;
(*   %conv4.i139.392 = zext i8 %55 to i32 *)
cast v_conv4_i139_392@uint32 v55@uint8;
(*   %shr.i140.393 = ashr i32 %conv4.i139.392, 1 *)
(* You may need to modify here *)
split v_shr_i140_393 tmp_to_be_used v_conv4_i139_392 1;
(*   %conv5.i141.394 = trunc i32 %shr.i140.393 to i8 *)
split tmp_v_shr_i140_393 v_conv5_i141_394 v_shr_i140_393 8;
vpc v_conv5_i141_394@uint8 v_conv5_i141_394@uint32;
(*   %conv6.i142.395 = zext i8 %54 to i32 *)
cast v_conv6_i142_395@uint32 v54@uint8;
(*   %shl.i143.396 = shl i32 %conv6.i142.395, 1 *)
shls discard_105 v_shl_i143_396 v_conv6_i142_395 1;
(*   %conv7.i144.397 = trunc i32 %shl.i143.396 to i8 *)
split tmp_v_shl_i143_396 v_conv7_i144_397 v_shl_i143_396 8;
vpc v_conv7_i144_397@uint8 v_conv7_i144_397@uint32;
(*   %conv.i132.1.3 = zext i8 %conv5.i141.394 to i32 *)
cast v_conv_i132_1_3@uint32 v_conv5_i141_394@uint8;
(*   %and.i133.1.3 = and i32 %conv.i132.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_1_3 v_conv_i132_1_3 (0x1)@uint32;
(*   %conv1.i134.1.3 = zext i8 %conv7.i144.397 to i32 *)
cast v_conv1_i134_1_3@uint32 v_conv7_i144_397@uint8;
(*   %mul.i135.1.3 = mul nsw i32 %and.i133.1.3, %conv1.i134.1.3 *)
mul v_mul_i135_1_3 v_and_i133_1_3 v_conv1_i134_1_3;
(*   %conv2.i136.1.3 = zext i8 %conv3.i138.391 to i32 *)
cast v_conv2_i136_1_3@uint32 v_conv3_i138_391@uint8;
(*   %xor.i137.1.3 = xor i32 %conv2.i136.1.3, %mul.i135.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i137_1_3 v_conv2_i136_1_3 v_mul_i135_1_3;
(*   %conv3.i138.1.3 = trunc i32 %xor.i137.1.3 to i8 *)
split tmp_v_xor_i137_1_3 v_conv3_i138_1_3 v_xor_i137_1_3 8;
vpc v_conv3_i138_1_3@uint8 v_conv3_i138_1_3@uint32;
(*   %conv4.i139.1.3 = zext i8 %conv5.i141.394 to i32 *)
cast v_conv4_i139_1_3@uint32 v_conv5_i141_394@uint8;
(*   %shr.i140.1.3 = ashr i32 %conv4.i139.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i140_1_3 tmp_to_be_used v_conv4_i139_1_3 1;
(*   %conv5.i141.1.3 = trunc i32 %shr.i140.1.3 to i8 *)
split tmp_v_shr_i140_1_3 v_conv5_i141_1_3 v_shr_i140_1_3 8;
vpc v_conv5_i141_1_3@uint8 v_conv5_i141_1_3@uint32;
(*   %conv6.i142.1.3 = zext i8 %conv7.i144.397 to i32 *)
cast v_conv6_i142_1_3@uint32 v_conv7_i144_397@uint8;
(*   %shl.i143.1.3 = shl i32 %conv6.i142.1.3, 1 *)
shls discard_106 v_shl_i143_1_3 v_conv6_i142_1_3 1;
(*   %conv7.i144.1.3 = trunc i32 %shl.i143.1.3 to i8 *)
split tmp_v_shl_i143_1_3 v_conv7_i144_1_3 v_shl_i143_1_3 8;
vpc v_conv7_i144_1_3@uint8 v_conv7_i144_1_3@uint32;
(*   %conv.i132.2.3 = zext i8 %conv5.i141.1.3 to i32 *)
cast v_conv_i132_2_3@uint32 v_conv5_i141_1_3@uint8;
(*   %and.i133.2.3 = and i32 %conv.i132.2.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_2_3 v_conv_i132_2_3 (0x1)@uint32;
(*   %conv1.i134.2.3 = zext i8 %conv7.i144.1.3 to i32 *)
cast v_conv1_i134_2_3@uint32 v_conv7_i144_1_3@uint8;
(*   %mul.i135.2.3 = mul nsw i32 %and.i133.2.3, %conv1.i134.2.3 *)
mul v_mul_i135_2_3 v_and_i133_2_3 v_conv1_i134_2_3;
(*   %conv2.i136.2.3 = zext i8 %conv3.i138.1.3 to i32 *)
cast v_conv2_i136_2_3@uint32 v_conv3_i138_1_3@uint8;
(*   %xor.i137.2.3 = xor i32 %conv2.i136.2.3, %mul.i135.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i137_2_3 v_conv2_i136_2_3 v_mul_i135_2_3;
(*   %conv3.i138.2.3 = trunc i32 %xor.i137.2.3 to i8 *)
split tmp_v_xor_i137_2_3 v_conv3_i138_2_3 v_xor_i137_2_3 8;
vpc v_conv3_i138_2_3@uint8 v_conv3_i138_2_3@uint32;
(*   %conv4.i139.2.3 = zext i8 %conv5.i141.1.3 to i32 *)
cast v_conv4_i139_2_3@uint32 v_conv5_i141_1_3@uint8;
(*   %shr.i140.2.3 = ashr i32 %conv4.i139.2.3, 1 *)
(* You may need to modify here *)
split v_shr_i140_2_3 tmp_to_be_used v_conv4_i139_2_3 1;
(*   %conv5.i141.2.3 = trunc i32 %shr.i140.2.3 to i8 *)
split tmp_v_shr_i140_2_3 v_conv5_i141_2_3 v_shr_i140_2_3 8;
vpc v_conv5_i141_2_3@uint8 v_conv5_i141_2_3@uint32;
(*   %conv6.i142.2.3 = zext i8 %conv7.i144.1.3 to i32 *)
cast v_conv6_i142_2_3@uint32 v_conv7_i144_1_3@uint8;
(*   %shl.i143.2.3 = shl i32 %conv6.i142.2.3, 1 *)
shls discard_107 v_shl_i143_2_3 v_conv6_i142_2_3 1;
(*   %conv7.i144.2.3 = trunc i32 %shl.i143.2.3 to i8 *)
split tmp_v_shl_i143_2_3 v_conv7_i144_2_3 v_shl_i143_2_3 8;
vpc v_conv7_i144_2_3@uint8 v_conv7_i144_2_3@uint32;
(*   %conv.i132.3.3 = zext i8 %conv5.i141.2.3 to i32 *)
cast v_conv_i132_3_3@uint32 v_conv5_i141_2_3@uint8;
(*   %and.i133.3.3 = and i32 %conv.i132.3.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_3_3 v_conv_i132_3_3 (0x1)@uint32;
(*   %conv1.i134.3.3 = zext i8 %conv7.i144.2.3 to i32 *)
cast v_conv1_i134_3_3@uint32 v_conv7_i144_2_3@uint8;
(*   %mul.i135.3.3 = mul nsw i32 %and.i133.3.3, %conv1.i134.3.3 *)
mul v_mul_i135_3_3 v_and_i133_3_3 v_conv1_i134_3_3;
(*   %conv2.i136.3.3 = zext i8 %conv3.i138.2.3 to i32 *)
cast v_conv2_i136_3_3@uint32 v_conv3_i138_2_3@uint8;
(*   %xor.i137.3.3 = xor i32 %conv2.i136.3.3, %mul.i135.3.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i137_3_3 v_conv2_i136_3_3 v_mul_i135_3_3;
(*   %conv3.i138.3.3 = trunc i32 %xor.i137.3.3 to i8 *)
split tmp_v_xor_i137_3_3 v_conv3_i138_3_3 v_xor_i137_3_3 8;
vpc v_conv3_i138_3_3@uint8 v_conv3_i138_3_3@uint32;
(*   %conv4.i139.3.3 = zext i8 %conv5.i141.2.3 to i32 *)
cast v_conv4_i139_3_3@uint32 v_conv5_i141_2_3@uint8;
(*   %shr.i140.3.3 = ashr i32 %conv4.i139.3.3, 1 *)
(* You may need to modify here *)
split v_shr_i140_3_3 tmp_to_be_used v_conv4_i139_3_3 1;
(*   %conv5.i141.3.3 = trunc i32 %shr.i140.3.3 to i8 *)
split tmp_v_shr_i140_3_3 v_conv5_i141_3_3 v_shr_i140_3_3 8;
vpc v_conv5_i141_3_3@uint8 v_conv5_i141_3_3@uint32;
(*   %conv6.i142.3.3 = zext i8 %conv7.i144.2.3 to i32 *)
cast v_conv6_i142_3_3@uint32 v_conv7_i144_2_3@uint8;
(*   %shl.i143.3.3 = shl i32 %conv6.i142.3.3, 1 *)
shls discard_108 v_shl_i143_3_3 v_conv6_i142_3_3 1;
(*   %conv7.i144.3.3 = trunc i32 %shl.i143.3.3 to i8 *)
split tmp_v_shl_i143_3_3 v_conv7_i144_3_3 v_shl_i143_3_3 8;
vpc v_conv7_i144_3_3@uint8 v_conv7_i144_3_3@uint32;
(*   %conv.i132.4.3 = zext i8 %conv5.i141.3.3 to i32 *)
cast v_conv_i132_4_3@uint32 v_conv5_i141_3_3@uint8;
(*   %and.i133.4.3 = and i32 %conv.i132.4.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_4_3 v_conv_i132_4_3 (0x1)@uint32;
(*   %conv1.i134.4.3 = zext i8 %conv7.i144.3.3 to i32 *)
cast v_conv1_i134_4_3@uint32 v_conv7_i144_3_3@uint8;
(*   %mul.i135.4.3 = mul nsw i32 %and.i133.4.3, %conv1.i134.4.3 *)
mul v_mul_i135_4_3 v_and_i133_4_3 v_conv1_i134_4_3;
(*   %conv2.i136.4.3 = zext i8 %conv3.i138.3.3 to i32 *)
cast v_conv2_i136_4_3@uint32 v_conv3_i138_3_3@uint8;
(*   %xor.i137.4.3 = xor i32 %conv2.i136.4.3, %mul.i135.4.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i137_4_3 v_conv2_i136_4_3 v_mul_i135_4_3;
(*   %conv3.i138.4.3 = trunc i32 %xor.i137.4.3 to i8 *)
split tmp_v_xor_i137_4_3 v_conv3_i138_4_3 v_xor_i137_4_3 8;
vpc v_conv3_i138_4_3@uint8 v_conv3_i138_4_3@uint32;
(*   %conv4.i139.4.3 = zext i8 %conv5.i141.3.3 to i32 *)
cast v_conv4_i139_4_3@uint32 v_conv5_i141_3_3@uint8;
(*   %shr.i140.4.3 = ashr i32 %conv4.i139.4.3, 1 *)
(* You may need to modify here *)
split v_shr_i140_4_3 tmp_to_be_used v_conv4_i139_4_3 1;
(*   %conv5.i141.4.3 = trunc i32 %shr.i140.4.3 to i8 *)
split tmp_v_shr_i140_4_3 v_conv5_i141_4_3 v_shr_i140_4_3 8;
vpc v_conv5_i141_4_3@uint8 v_conv5_i141_4_3@uint32;
(*   %conv6.i142.4.3 = zext i8 %conv7.i144.3.3 to i32 *)
cast v_conv6_i142_4_3@uint32 v_conv7_i144_3_3@uint8;
(*   %shl.i143.4.3 = shl i32 %conv6.i142.4.3, 1 *)
shls discard_109 v_shl_i143_4_3 v_conv6_i142_4_3 1;
(*   %conv7.i144.4.3 = trunc i32 %shl.i143.4.3 to i8 *)
split tmp_v_shl_i143_4_3 v_conv7_i144_4_3 v_shl_i143_4_3 8;
vpc v_conv7_i144_4_3@uint8 v_conv7_i144_4_3@uint32;
(*   %conv.i132.5.3 = zext i8 %conv5.i141.4.3 to i32 *)
cast v_conv_i132_5_3@uint32 v_conv5_i141_4_3@uint8;
(*   %and.i133.5.3 = and i32 %conv.i132.5.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_5_3 v_conv_i132_5_3 (0x1)@uint32;
(*   %conv1.i134.5.3 = zext i8 %conv7.i144.4.3 to i32 *)
cast v_conv1_i134_5_3@uint32 v_conv7_i144_4_3@uint8;
(*   %mul.i135.5.3 = mul nsw i32 %and.i133.5.3, %conv1.i134.5.3 *)
mul v_mul_i135_5_3 v_and_i133_5_3 v_conv1_i134_5_3;
(*   %conv2.i136.5.3 = zext i8 %conv3.i138.4.3 to i32 *)
cast v_conv2_i136_5_3@uint32 v_conv3_i138_4_3@uint8;
(*   %xor.i137.5.3 = xor i32 %conv2.i136.5.3, %mul.i135.5.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i137_5_3 v_conv2_i136_5_3 v_mul_i135_5_3;
(*   %conv3.i138.5.3 = trunc i32 %xor.i137.5.3 to i8 *)
split tmp_v_xor_i137_5_3 v_conv3_i138_5_3 v_xor_i137_5_3 8;
vpc v_conv3_i138_5_3@uint8 v_conv3_i138_5_3@uint32;
(*   %conv4.i139.5.3 = zext i8 %conv5.i141.4.3 to i32 *)
cast v_conv4_i139_5_3@uint32 v_conv5_i141_4_3@uint8;
(*   %shr.i140.5.3 = ashr i32 %conv4.i139.5.3, 1 *)
(* You may need to modify here *)
split v_shr_i140_5_3 tmp_to_be_used v_conv4_i139_5_3 1;
(*   %conv5.i141.5.3 = trunc i32 %shr.i140.5.3 to i8 *)
split tmp_v_shr_i140_5_3 v_conv5_i141_5_3 v_shr_i140_5_3 8;
vpc v_conv5_i141_5_3@uint8 v_conv5_i141_5_3@uint32;
(*   %conv6.i142.5.3 = zext i8 %conv7.i144.4.3 to i32 *)
cast v_conv6_i142_5_3@uint32 v_conv7_i144_4_3@uint8;
(*   %shl.i143.5.3 = shl i32 %conv6.i142.5.3, 1 *)
shls discard_110 v_shl_i143_5_3 v_conv6_i142_5_3 1;
(*   %conv7.i144.5.3 = trunc i32 %shl.i143.5.3 to i8 *)
split tmp_v_shl_i143_5_3 v_conv7_i144_5_3 v_shl_i143_5_3 8;
vpc v_conv7_i144_5_3@uint8 v_conv7_i144_5_3@uint32;
(*   %conv.i132.6.3 = zext i8 %conv5.i141.5.3 to i32 *)
cast v_conv_i132_6_3@uint32 v_conv5_i141_5_3@uint8;
(*   %and.i133.6.3 = and i32 %conv.i132.6.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_6_3 v_conv_i132_6_3 (0x1)@uint32;
(*   %conv1.i134.6.3 = zext i8 %conv7.i144.5.3 to i32 *)
cast v_conv1_i134_6_3@uint32 v_conv7_i144_5_3@uint8;
(*   %mul.i135.6.3 = mul nsw i32 %and.i133.6.3, %conv1.i134.6.3 *)
mul v_mul_i135_6_3 v_and_i133_6_3 v_conv1_i134_6_3;
(*   %conv2.i136.6.3 = zext i8 %conv3.i138.5.3 to i32 *)
cast v_conv2_i136_6_3@uint32 v_conv3_i138_5_3@uint8;
(*   %xor.i137.6.3 = xor i32 %conv2.i136.6.3, %mul.i135.6.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i137_6_3 v_conv2_i136_6_3 v_mul_i135_6_3;
(*   %conv3.i138.6.3 = trunc i32 %xor.i137.6.3 to i8 *)
split tmp_v_xor_i137_6_3 v_conv3_i138_6_3 v_xor_i137_6_3 8;
vpc v_conv3_i138_6_3@uint8 v_conv3_i138_6_3@uint32;
(*   %conv4.i139.6.3 = zext i8 %conv5.i141.5.3 to i32 *)
cast v_conv4_i139_6_3@uint32 v_conv5_i141_5_3@uint8;
(*   %shr.i140.6.3 = ashr i32 %conv4.i139.6.3, 1 *)
(* You may need to modify here *)
split v_shr_i140_6_3 tmp_to_be_used v_conv4_i139_6_3 1;
(*   %conv5.i141.6.3 = trunc i32 %shr.i140.6.3 to i8 *)
split tmp_v_shr_i140_6_3 v_conv5_i141_6_3 v_shr_i140_6_3 8;
vpc v_conv5_i141_6_3@uint8 v_conv5_i141_6_3@uint32;
(*   %conv6.i142.6.3 = zext i8 %conv7.i144.5.3 to i32 *)
cast v_conv6_i142_6_3@uint32 v_conv7_i144_5_3@uint8;
(*   %shl.i143.6.3 = shl i32 %conv6.i142.6.3, 1 *)
shls discard_111 v_shl_i143_6_3 v_conv6_i142_6_3 1;
(*   %conv7.i144.6.3 = trunc i32 %shl.i143.6.3 to i8 *)
split tmp_v_shl_i143_6_3 v_conv7_i144_6_3 v_shl_i143_6_3 8;
vpc v_conv7_i144_6_3@uint8 v_conv7_i144_6_3@uint32;
(*   %conv.i132.7.3 = zext i8 %conv5.i141.6.3 to i32 *)
cast v_conv_i132_7_3@uint32 v_conv5_i141_6_3@uint8;
(*   %and.i133.7.3 = and i32 %conv.i132.7.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_7_3 v_conv_i132_7_3 (0x1)@uint32;
(*   %conv1.i134.7.3 = zext i8 %conv7.i144.6.3 to i32 *)
cast v_conv1_i134_7_3@uint32 v_conv7_i144_6_3@uint8;
(*   %mul.i135.7.3 = mul nsw i32 %and.i133.7.3, %conv1.i134.7.3 *)
mul v_mul_i135_7_3 v_and_i133_7_3 v_conv1_i134_7_3;
(*   %conv2.i136.7.3 = zext i8 %conv3.i138.6.3 to i32 *)
cast v_conv2_i136_7_3@uint32 v_conv3_i138_6_3@uint8;
(*   %xor.i137.7.3 = xor i32 %conv2.i136.7.3, %mul.i135.7.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i137_7_3 v_conv2_i136_7_3 v_mul_i135_7_3;
(*   %conv3.i138.7.3 = trunc i32 %xor.i137.7.3 to i8 *)
split tmp_v_xor_i137_7_3 v_conv3_i138_7_3 v_xor_i137_7_3 8;
vpc v_conv3_i138_7_3@uint8 v_conv3_i138_7_3@uint32;
(*   %arrayidx36.3 = getelementptr inbounds i8, i8* %c, i64 3 *)
(*   store i8 %conv3.i138.7.3, i8* %arrayidx36.3, align 1 *)
mov c_3 v_conv3_i138_7_3;
(*   %arrayidx50.3 = getelementptr inbounds i8, i8* %c, i64 3 *)
(*   %56 = load i8, i8* %scevgep43.2, align 1 *)
mov v56 r_12;
(*   %conv48.3100 = zext i8 %56 to i32 *)
cast v_conv48_3100@uint32 v56@uint8;
(*   %57 = load i8, i8* %arrayidx50.3, align 1 *)
mov v57 c_3;
(*   %conv51.3101 = zext i8 %57 to i32 *)
cast v_conv51_3101@uint32 v57@uint8;
(*   %xor52.3102 = xor i32 %conv51.3101, %conv48.3100 *)
(* You may need to modify here *)
xor uint32 v_xor52_3102 v_conv51_3101 v_conv48_3100;
(*   %conv53.3103 = trunc i32 %xor52.3102 to i8 *)
split tmp_v_xor52_3102 v_conv53_3103 v_xor52_3102 8;
vpc v_conv53_3103@uint8 v_conv53_3103@uint32;
(*   store i8 %conv53.3103, i8* %arrayidx50.3, align 1 *)
mov c_3 v_conv53_3103;
(*   %scevgep44.1.3 = getelementptr i8, i8* %scevgep43.2, i64 1 *)
(*   %58 = load i8, i8* %scevgep44.1.3, align 1 *)
mov v58 r_13;
(*   %conv48.1.3 = zext i8 %58 to i32 *)
cast v_conv48_1_3@uint32 v58@uint8;
(*   %59 = load i8, i8* %arrayidx50.3, align 1 *)
mov v59 c_3;
(*   %conv51.1.3 = zext i8 %59 to i32 *)
cast v_conv51_1_3@uint32 v59@uint8;
(*   %xor52.1.3 = xor i32 %conv51.1.3, %conv48.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor52_1_3 v_conv51_1_3 v_conv48_1_3;
(*   %conv53.1.3 = trunc i32 %xor52.1.3 to i8 *)
split tmp_v_xor52_1_3 v_conv53_1_3 v_xor52_1_3 8;
vpc v_conv53_1_3@uint8 v_conv53_1_3@uint32;
(*   store i8 %conv53.1.3, i8* %arrayidx50.3, align 1 *)
mov c_3 v_conv53_1_3;
(*   %scevgep44.2.3 = getelementptr i8, i8* %scevgep43.2, i64 2 *)
(*   %60 = load i8, i8* %scevgep44.2.3, align 1 *)
mov v60 r_14;
(*   %conv48.2.3 = zext i8 %60 to i32 *)
cast v_conv48_2_3@uint32 v60@uint8;
(*   %61 = load i8, i8* %arrayidx50.3, align 1 *)
mov v61 c_3;
(*   %conv51.2.3 = zext i8 %61 to i32 *)
cast v_conv51_2_3@uint32 v61@uint8;
(*   %xor52.2.3 = xor i32 %conv51.2.3, %conv48.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor52_2_3 v_conv51_2_3 v_conv48_2_3;
(*   %conv53.2.3 = trunc i32 %xor52.2.3 to i8 *)
split tmp_v_xor52_2_3 v_conv53_2_3 v_xor52_2_3 8;
vpc v_conv53_2_3@uint8 v_conv53_2_3@uint32;
(*   store i8 %conv53.2.3, i8* %arrayidx50.3, align 1 *)
mov c_3 v_conv53_2_3;
(*   %62 = load i8, i8* %a, align 1 *)
mov v62 a_0;
(*   %scevgep34.1 = getelementptr i8, i8* %a, i64 1 *)
(*   %63 = load i8, i8* %scevgep34.1, align 1 *)
mov v63 a_1;
(*   %conv.i.i158.1 = zext i8 %63 to i32 *)
cast v_conv_i_i158_1@uint32 v63@uint8;
(*   %conv1.i.i159.1 = zext i8 %62 to i32 *)
cast v_conv1_i_i159_1@uint32 v62@uint8;
(*   %xor.i.i160.1 = xor i32 %conv1.i.i159.1, %conv.i.i158.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i160_1 v_conv1_i_i159_1 v_conv_i_i158_1;
(*   %conv2.i.i161.1 = trunc i32 %xor.i.i160.1 to i8 *)
split tmp_v_xor_i_i160_1 v_conv2_i_i161_1 v_xor_i_i160_1 8;
vpc v_conv2_i_i161_1@uint8 v_conv2_i_i161_1@uint32;
(*   %scevgep34.2 = getelementptr i8, i8* %a, i64 2 *)
(*   %64 = load i8, i8* %scevgep34.2, align 1 *)
mov v64 a_2;
(*   %conv.i.i158.2 = zext i8 %64 to i32 *)
cast v_conv_i_i158_2@uint32 v64@uint8;
(*   %conv1.i.i159.2 = zext i8 %conv2.i.i161.1 to i32 *)
cast v_conv1_i_i159_2@uint32 v_conv2_i_i161_1@uint8;
(*   %xor.i.i160.2 = xor i32 %conv1.i.i159.2, %conv.i.i158.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i160_2 v_conv1_i_i159_2 v_conv_i_i158_2;
(*   %conv2.i.i161.2 = trunc i32 %xor.i.i160.2 to i8 *)
split tmp_v_xor_i_i160_2 v_conv2_i_i161_2 v_xor_i_i160_2 8;
vpc v_conv2_i_i161_2@uint8 v_conv2_i_i161_2@uint32;
(*   %scevgep34.3 = getelementptr i8, i8* %a, i64 3 *)
(*   %65 = load i8, i8* %scevgep34.3, align 1 *)
mov v65 a_3;
(*   %conv.i.i158.3 = zext i8 %65 to i32 *)
cast v_conv_i_i158_3@uint32 v65@uint8;
(*   %conv1.i.i159.3 = zext i8 %conv2.i.i161.2 to i32 *)
cast v_conv1_i_i159_3@uint32 v_conv2_i_i161_2@uint8;
(*   %xor.i.i160.3 = xor i32 %conv1.i.i159.3, %conv.i.i158.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i160_3 v_conv1_i_i159_3 v_conv_i_i158_3;
(*   %conv2.i.i161.3 = trunc i32 %xor.i.i160.3 to i8 *)
split tmp_v_xor_i_i160_3 v_conv2_i_i161_3 v_xor_i_i160_3 8;
vpc v_conv2_i_i161_3@uint8 v_conv2_i_i161_3@uint32;
(*   %66 = load i8, i8* %b, align 1 *)
mov v66 b_0;
(*   %scevgep30.1 = getelementptr i8, i8* %b, i64 1 *)
(*   %67 = load i8, i8* %scevgep30.1, align 1 *)
mov v67 b_1;
(*   %conv.i.i119.1 = zext i8 %67 to i32 *)
cast v_conv_i_i119_1@uint32 v67@uint8;
(*   %conv1.i.i120.1 = zext i8 %66 to i32 *)
cast v_conv1_i_i120_1@uint32 v66@uint8;
(*   %xor.i.i121.1 = xor i32 %conv1.i.i120.1, %conv.i.i119.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i121_1 v_conv1_i_i120_1 v_conv_i_i119_1;
(*   %conv2.i.i122.1 = trunc i32 %xor.i.i121.1 to i8 *)
split tmp_v_xor_i_i121_1 v_conv2_i_i122_1 v_xor_i_i121_1 8;
vpc v_conv2_i_i122_1@uint8 v_conv2_i_i122_1@uint32;
(*   %scevgep30.2 = getelementptr i8, i8* %b, i64 2 *)
(*   %68 = load i8, i8* %scevgep30.2, align 1 *)
mov v68 b_2;
(*   %conv.i.i119.2 = zext i8 %68 to i32 *)
cast v_conv_i_i119_2@uint32 v68@uint8;
(*   %conv1.i.i120.2 = zext i8 %conv2.i.i122.1 to i32 *)
cast v_conv1_i_i120_2@uint32 v_conv2_i_i122_1@uint8;
(*   %xor.i.i121.2 = xor i32 %conv1.i.i120.2, %conv.i.i119.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i121_2 v_conv1_i_i120_2 v_conv_i_i119_2;
(*   %conv2.i.i122.2 = trunc i32 %xor.i.i121.2 to i8 *)
split tmp_v_xor_i_i121_2 v_conv2_i_i122_2 v_xor_i_i121_2 8;
vpc v_conv2_i_i122_2@uint8 v_conv2_i_i122_2@uint32;
(*   %scevgep30.3 = getelementptr i8, i8* %b, i64 3 *)
(*   %69 = load i8, i8* %scevgep30.3, align 1 *)
mov v69 b_3;
(*   %conv.i.i119.3 = zext i8 %69 to i32 *)
cast v_conv_i_i119_3@uint32 v69@uint8;
(*   %conv1.i.i120.3 = zext i8 %conv2.i.i122.2 to i32 *)
cast v_conv1_i_i120_3@uint32 v_conv2_i_i122_2@uint8;
(*   %xor.i.i121.3 = xor i32 %conv1.i.i120.3, %conv.i.i119.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i121_3 v_conv1_i_i120_3 v_conv_i_i119_3;
(*   %conv2.i.i122.3 = trunc i32 %xor.i.i121.3 to i8 *)
split tmp_v_xor_i_i121_3 v_conv2_i_i122_3 v_xor_i_i121_3 8;
vpc v_conv2_i_i122_3@uint8 v_conv2_i_i122_3@uint32;
(*   %conv.i93 = zext i8 %conv2.i.i122.3 to i32 *)
cast v_conv_i93@uint32 v_conv2_i_i122_3@uint8;
(*   %and.i94 = and i32 %conv.i93, 1 *)
(* You may need to modify here *)
and uint32 v_and_i94 v_conv_i93 (0x1)@uint32;
(*   %conv1.i95 = zext i8 %conv2.i.i161.3 to i32 *)
cast v_conv1_i95@uint32 v_conv2_i_i161_3@uint8;
(*   %mul.i96 = mul nsw i32 %and.i94, %conv1.i95 *)
mul v_mul_i96 v_and_i94 v_conv1_i95;
(*   %conv3.i99 = trunc i32 %mul.i96 to i8 *)
split tmp_v_mul_i96 v_conv3_i99 v_mul_i96 8;
vpc v_conv3_i99@uint8 v_conv3_i99@uint32;
(*   %conv4.i100 = zext i8 %conv2.i.i122.3 to i32 *)
cast v_conv4_i100@uint32 v_conv2_i_i122_3@uint8;
(*   %shr.i101 = ashr i32 %conv4.i100, 1 *)
(* You may need to modify here *)
split v_shr_i101 tmp_to_be_used v_conv4_i100 1;
(*   %conv5.i102 = trunc i32 %shr.i101 to i8 *)
split tmp_v_shr_i101 v_conv5_i102 v_shr_i101 8;
vpc v_conv5_i102@uint8 v_conv5_i102@uint32;
(*   %conv6.i103 = zext i8 %conv2.i.i161.3 to i32 *)
cast v_conv6_i103@uint32 v_conv2_i_i161_3@uint8;
(*   %shl.i104 = shl i32 %conv6.i103, 1 *)
shls discard_112 v_shl_i104 v_conv6_i103 1;
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
shls discard_113 v_shl_i104_1 v_conv6_i103_1 1;
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
shls discard_114 v_shl_i104_2 v_conv6_i103_2 1;
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
shls discard_115 v_shl_i104_3 v_conv6_i103_3 1;
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
shls discard_116 v_shl_i104_4 v_conv6_i103_4 1;
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
shls discard_117 v_shl_i104_5 v_conv6_i103_5 1;
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
shls discard_118 v_shl_i104_6 v_conv6_i103_6 1;
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
(*   %70 = load i8, i8* %c, align 1 *)
mov v70 c_0;
(*   %scevgep.1 = getelementptr i8, i8* %c, i64 1 *)
(*   %71 = load i8, i8* %scevgep.1, align 1 *)
mov v71 c_1;
(*   %conv.i.i.1 = zext i8 %71 to i32 *)
cast v_conv_i_i_1@uint32 v71@uint8;
(*   %conv1.i.i.1 = zext i8 %70 to i32 *)
cast v_conv1_i_i_1@uint32 v70@uint8;
(*   %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_1 v_conv1_i_i_1 v_conv_i_i_1;
(*   %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8 *)
split tmp_v_xor_i_i_1 v_conv2_i_i_1 v_xor_i_i_1 8;
vpc v_conv2_i_i_1@uint8 v_conv2_i_i_1@uint32;
(*   %scevgep.2 = getelementptr i8, i8* %c, i64 2 *)
(*   %72 = load i8, i8* %scevgep.2, align 1 *)
mov v72 c_2;
(*   %conv.i.i.2 = zext i8 %72 to i32 *)
cast v_conv_i_i_2@uint32 v72@uint8;
(*   %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32 *)
cast v_conv1_i_i_2@uint32 v_conv2_i_i_1@uint8;
(*   %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_2 v_conv1_i_i_2 v_conv_i_i_2;
(*   %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8 *)
split tmp_v_xor_i_i_2 v_conv2_i_i_2 v_xor_i_i_2 8;
vpc v_conv2_i_i_2@uint8 v_conv2_i_i_2@uint32;
(*   %scevgep.3 = getelementptr i8, i8* %c, i64 3 *)
(*   %73 = load i8, i8* %scevgep.3, align 1 *)
mov v73 c_3;
(*   %conv.i.i.3 = zext i8 %73 to i32 *)
cast v_conv_i_i_3@uint32 v73@uint8;
(*   %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32 *)
cast v_conv1_i_i_3@uint32 v_conv2_i_i_2@uint8;
(*   %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_3 v_conv1_i_i_3 v_conv_i_i_3;
(*   %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8 *)
split tmp_v_xor_i_i_3 v_conv2_i_i_3 v_xor_i_i_3 8;
vpc v_conv2_i_i_3@uint8 v_conv2_i_i_3@uint32;
(*   store i8 %conv2.i.i.3, i8* %C, align 1 *)
mov C_0 v_conv2_i_i_3;
(*   ret void *)


assert true && AB_0=C_0;

mov _ AB_0@uint8;
mov _ C_0@uint8;


{
  true
  &&
  true
}

