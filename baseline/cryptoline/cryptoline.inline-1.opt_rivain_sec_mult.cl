proc main (uint8 a_0, uint8 a_1, uint8 b_0, uint8 b_1, uint8 r_1) =
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
(*   %arrayidx21 = getelementptr inbounds i8, i8* %r, i64 2 *)
(*   store i8 %conv17, i8* %arrayidx21, align 1 *)
mov r_2 v_conv17;
(*   %5 = load i8, i8* %a, align 1 *)
mov v5 a_0;
(*   %6 = load i8, i8* %b, align 1 *)
mov v6 b_0;
(*   %conv.i132 = zext i8 %6 to i32 *)
cast v_conv_i132@uint32 v6@uint8;
(*   %and.i133 = and i32 %conv.i132, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133 v_conv_i132 (0x1)@uint32;
(*   %conv1.i134 = zext i8 %5 to i32 *)
cast v_conv1_i134@uint32 v5@uint8;
(*   %mul.i135 = mul nsw i32 %and.i133, %conv1.i134 *)
mul v_mul_i135 v_and_i133 v_conv1_i134;
(*   %conv3.i138 = trunc i32 %mul.i135 to i8 *)
split tmp_v_mul_i135 v_conv3_i138 v_mul_i135 8;
vpc v_conv3_i138@uint8 v_conv3_i138@uint32;
(*   %conv4.i139 = zext i8 %6 to i32 *)
cast v_conv4_i139@uint32 v6@uint8;
(*   %shr.i140 = ashr i32 %conv4.i139, 1 *)
(* You may need to modify here *)
split v_shr_i140 tmp_to_be_used v_conv4_i139 1;
(*   %conv5.i141 = trunc i32 %shr.i140 to i8 *)
split tmp_v_shr_i140 v_conv5_i141 v_shr_i140 8;
vpc v_conv5_i141@uint8 v_conv5_i141@uint32;
(*   %conv6.i142 = zext i8 %5 to i32 *)
cast v_conv6_i142@uint32 v5@uint8;
(*   %shl.i143 = shl i32 %conv6.i142, 1 *)
shls discard_14 v_shl_i143 v_conv6_i142 1;
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
shls discard_15 v_shl_i143_1 v_conv6_i142_1 1;
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
shls discard_16 v_shl_i143_2 v_conv6_i142_2 1;
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
shls discard_17 v_shl_i143_3 v_conv6_i142_3 1;
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
shls discard_18 v_shl_i143_4 v_conv6_i142_4 1;
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
shls discard_19 v_shl_i143_5 v_conv6_i142_5 1;
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
shls discard_20 v_shl_i143_6 v_conv6_i142_6 1;
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
(*   %7 = load i8, i8* %scevgep44.1, align 1 *)
mov v7 r_1;
(*   %conv48.1 = zext i8 %7 to i32 *)
cast v_conv48_1@uint32 v7@uint8;
(*   %8 = load i8, i8* %c, align 1 *)
mov v8 c_0;
(*   %conv51.1 = zext i8 %8 to i32 *)
cast v_conv51_1@uint32 v8@uint8;
(*   %xor52.1 = xor i32 %conv51.1, %conv48.1 *)
(* You may need to modify here *)
xor uint32 v_xor52_1 v_conv51_1 v_conv48_1;
(*   %conv53.1 = trunc i32 %xor52.1 to i8 *)
split tmp_v_xor52_1 v_conv53_1 v_xor52_1 8;
vpc v_conv53_1@uint8 v_conv53_1@uint32;
(*   store i8 %conv53.1, i8* %c, align 1 *)
mov c_0 v_conv53_1;
(*   %scevgep43 = getelementptr i8, i8* %r, i64 2 *)
(*   %arrayidx31.1 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %9 = load i8, i8* %arrayidx31.1, align 1 *)
mov v9 a_1;
(*   %arrayidx33.1 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %10 = load i8, i8* %arrayidx33.1, align 1 *)
mov v10 b_1;
(*   %conv.i132.147 = zext i8 %10 to i32 *)
cast v_conv_i132_147@uint32 v10@uint8;
(*   %and.i133.148 = and i32 %conv.i132.147, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_148 v_conv_i132_147 (0x1)@uint32;
(*   %conv1.i134.149 = zext i8 %9 to i32 *)
cast v_conv1_i134_149@uint32 v9@uint8;
(*   %mul.i135.150 = mul nsw i32 %and.i133.148, %conv1.i134.149 *)
mul v_mul_i135_150 v_and_i133_148 v_conv1_i134_149;
(*   %conv3.i138.151 = trunc i32 %mul.i135.150 to i8 *)
split tmp_v_mul_i135_150 v_conv3_i138_151 v_mul_i135_150 8;
vpc v_conv3_i138_151@uint8 v_conv3_i138_151@uint32;
(*   %conv4.i139.152 = zext i8 %10 to i32 *)
cast v_conv4_i139_152@uint32 v10@uint8;
(*   %shr.i140.153 = ashr i32 %conv4.i139.152, 1 *)
(* You may need to modify here *)
split v_shr_i140_153 tmp_to_be_used v_conv4_i139_152 1;
(*   %conv5.i141.154 = trunc i32 %shr.i140.153 to i8 *)
split tmp_v_shr_i140_153 v_conv5_i141_154 v_shr_i140_153 8;
vpc v_conv5_i141_154@uint8 v_conv5_i141_154@uint32;
(*   %conv6.i142.155 = zext i8 %9 to i32 *)
cast v_conv6_i142_155@uint32 v9@uint8;
(*   %shl.i143.156 = shl i32 %conv6.i142.155, 1 *)
shls discard_21 v_shl_i143_156 v_conv6_i142_155 1;
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
shls discard_22 v_shl_i143_1_1 v_conv6_i142_1_1 1;
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
shls discard_23 v_shl_i143_2_1 v_conv6_i142_2_1 1;
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
shls discard_24 v_shl_i143_3_1 v_conv6_i142_3_1 1;
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
shls discard_25 v_shl_i143_4_1 v_conv6_i142_4_1 1;
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
shls discard_26 v_shl_i143_5_1 v_conv6_i142_5_1 1;
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
shls discard_27 v_shl_i143_6_1 v_conv6_i142_6_1 1;
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
(*   %11 = load i8, i8* %scevgep43, align 1 *)
mov v11 r_2;
(*   %conv48.160 = zext i8 %11 to i32 *)
cast v_conv48_160@uint32 v11@uint8;
(*   %12 = load i8, i8* %arrayidx50.1, align 1 *)
mov v12 c_1;
(*   %conv51.161 = zext i8 %12 to i32 *)
cast v_conv51_161@uint32 v12@uint8;
(*   %xor52.162 = xor i32 %conv51.161, %conv48.160 *)
(* You may need to modify here *)
xor uint32 v_xor52_162 v_conv51_161 v_conv48_160;
(*   %conv53.163 = trunc i32 %xor52.162 to i8 *)
split tmp_v_xor52_162 v_conv53_163 v_xor52_162 8;
vpc v_conv53_163@uint8 v_conv53_163@uint32;
(*   store i8 %conv53.163, i8* %arrayidx50.1, align 1 *)
mov c_1 v_conv53_163;
(*   %13 = load i8, i8* %a, align 1 *)
mov v13 a_0;
(*   %scevgep34.1 = getelementptr i8, i8* %a, i64 1 *)
(*   %14 = load i8, i8* %scevgep34.1, align 1 *)
mov v14 a_1;
(*   %conv.i.i158.1 = zext i8 %14 to i32 *)
cast v_conv_i_i158_1@uint32 v14@uint8;
(*   %conv1.i.i159.1 = zext i8 %13 to i32 *)
cast v_conv1_i_i159_1@uint32 v13@uint8;
(*   %xor.i.i160.1 = xor i32 %conv1.i.i159.1, %conv.i.i158.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i160_1 v_conv1_i_i159_1 v_conv_i_i158_1;
(*   %conv2.i.i161.1 = trunc i32 %xor.i.i160.1 to i8 *)
split tmp_v_xor_i_i160_1 v_conv2_i_i161_1 v_xor_i_i160_1 8;
vpc v_conv2_i_i161_1@uint8 v_conv2_i_i161_1@uint32;
(*   %15 = load i8, i8* %b, align 1 *)
mov v15 b_0;
(*   %scevgep30.1 = getelementptr i8, i8* %b, i64 1 *)
(*   %16 = load i8, i8* %scevgep30.1, align 1 *)
mov v16 b_1;
(*   %conv.i.i119.1 = zext i8 %16 to i32 *)
cast v_conv_i_i119_1@uint32 v16@uint8;
(*   %conv1.i.i120.1 = zext i8 %15 to i32 *)
cast v_conv1_i_i120_1@uint32 v15@uint8;
(*   %xor.i.i121.1 = xor i32 %conv1.i.i120.1, %conv.i.i119.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i121_1 v_conv1_i_i120_1 v_conv_i_i119_1;
(*   %conv2.i.i122.1 = trunc i32 %xor.i.i121.1 to i8 *)
split tmp_v_xor_i_i121_1 v_conv2_i_i122_1 v_xor_i_i121_1 8;
vpc v_conv2_i_i122_1@uint8 v_conv2_i_i122_1@uint32;
(*   %conv.i93 = zext i8 %conv2.i.i122.1 to i32 *)
cast v_conv_i93@uint32 v_conv2_i_i122_1@uint8;
(*   %and.i94 = and i32 %conv.i93, 1 *)
(* You may need to modify here *)
and uint32 v_and_i94 v_conv_i93 (0x1)@uint32;
(*   %conv1.i95 = zext i8 %conv2.i.i161.1 to i32 *)
cast v_conv1_i95@uint32 v_conv2_i_i161_1@uint8;
(*   %mul.i96 = mul nsw i32 %and.i94, %conv1.i95 *)
mul v_mul_i96 v_and_i94 v_conv1_i95;
(*   %conv3.i99 = trunc i32 %mul.i96 to i8 *)
split tmp_v_mul_i96 v_conv3_i99 v_mul_i96 8;
vpc v_conv3_i99@uint8 v_conv3_i99@uint32;
(*   %conv4.i100 = zext i8 %conv2.i.i122.1 to i32 *)
cast v_conv4_i100@uint32 v_conv2_i_i122_1@uint8;
(*   %shr.i101 = ashr i32 %conv4.i100, 1 *)
(* You may need to modify here *)
split v_shr_i101 tmp_to_be_used v_conv4_i100 1;
(*   %conv5.i102 = trunc i32 %shr.i101 to i8 *)
split tmp_v_shr_i101 v_conv5_i102 v_shr_i101 8;
vpc v_conv5_i102@uint8 v_conv5_i102@uint32;
(*   %conv6.i103 = zext i8 %conv2.i.i161.1 to i32 *)
cast v_conv6_i103@uint32 v_conv2_i_i161_1@uint8;
(*   %shl.i104 = shl i32 %conv6.i103, 1 *)
shls discard_28 v_shl_i104 v_conv6_i103 1;
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
shls discard_29 v_shl_i104_1 v_conv6_i103_1 1;
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
shls discard_30 v_shl_i104_2 v_conv6_i103_2 1;
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
shls discard_31 v_shl_i104_3 v_conv6_i103_3 1;
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
shls discard_32 v_shl_i104_4 v_conv6_i103_4 1;
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
shls discard_33 v_shl_i104_5 v_conv6_i103_5 1;
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
shls discard_34 v_shl_i104_6 v_conv6_i103_6 1;
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
(*   %17 = load i8, i8* %c, align 1 *)
mov v17 c_0;
(*   %scevgep.1 = getelementptr i8, i8* %c, i64 1 *)
(*   %18 = load i8, i8* %scevgep.1, align 1 *)
mov v18 c_1;
(*   %conv.i.i.1 = zext i8 %18 to i32 *)
cast v_conv_i_i_1@uint32 v18@uint8;
(*   %conv1.i.i.1 = zext i8 %17 to i32 *)
cast v_conv1_i_i_1@uint32 v17@uint8;
(*   %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_1 v_conv1_i_i_1 v_conv_i_i_1;
(*   %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8 *)
split tmp_v_xor_i_i_1 v_conv2_i_i_1 v_xor_i_i_1 8;
vpc v_conv2_i_i_1@uint8 v_conv2_i_i_1@uint32;
(*   store i8 %conv2.i.i.1, i8* %C, align 1 *)
mov C_0 v_conv2_i_i_1;
(*   ret void *)


(* Outputs *)

mov _ AB_0@uint8;
mov _ C_0@uint8;


{
  true
  &&
  true
}

