proc main (uint8 a_0, uint8 a_1, uint8 a_2, uint8 a_3, uint8 a_4, uint8 b_0, uint8 b_1, uint8 b_2, uint8 b_3, uint8 b_4, uint8 r_1, uint8 r_2, uint8 r_3, uint8 r_4, uint8 r_7, uint8 r_8, uint8 r_9, uint8 r_13, uint8 r_14, uint8 r_19) =
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
(*   %arrayidx21 = getelementptr inbounds i8, i8* %r, i64 5 *)
(*   store i8 %conv17, i8* %arrayidx21, align 1 *)
mov r_5 v_conv17;
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
(*   %conv.i.1127 = zext i8 %7 to i32 *)
cast v_conv_i_1127@uint32 v7@uint8;
(*   %and.i.1128 = and i32 %conv.i.1127, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1128 v_conv_i_1127 (0x1)@uint32;
(*   %conv1.i.1129 = zext i8 %6 to i32 *)
cast v_conv1_i_1129@uint32 v6@uint8;
(*   %mul.i.1130 = mul nsw i32 %and.i.1128, %conv1.i.1129 *)
mul v_mul_i_1130 v_and_i_1128 v_conv1_i_1129;
(*   %conv3.i.1131 = trunc i32 %mul.i.1130 to i8 *)
split tmp_v_mul_i_1130 v_conv3_i_1131 v_mul_i_1130 8;
vpc v_conv3_i_1131@uint8 v_conv3_i_1131@uint32;
(*   %conv4.i.1132 = zext i8 %7 to i32 *)
cast v_conv4_i_1132@uint32 v7@uint8;
(*   %shr.i.1133 = ashr i32 %conv4.i.1132, 1 *)
(* You may need to modify here *)
split v_shr_i_1133 tmp_to_be_used v_conv4_i_1132 1;
(*   %conv5.i.1134 = trunc i32 %shr.i.1133 to i8 *)
split tmp_v_shr_i_1133 v_conv5_i_1134 v_shr_i_1133 8;
vpc v_conv5_i_1134@uint8 v_conv5_i_1134@uint32;
(*   %conv6.i.1135 = zext i8 %6 to i32 *)
cast v_conv6_i_1135@uint32 v6@uint8;
(*   %shl.i.1136 = shl i32 %conv6.i.1135, 1 *)
shls discard_14 v_shl_i_1136 v_conv6_i_1135 1;
(*   %conv7.i.1137 = trunc i32 %shl.i.1136 to i8 *)
split tmp_v_shl_i_1136 v_conv7_i_1137 v_shl_i_1136 8;
vpc v_conv7_i_1137@uint8 v_conv7_i_1137@uint32;
(*   %conv.i.1.1 = zext i8 %conv5.i.1134 to i32 *)
cast v_conv_i_1_1@uint32 v_conv5_i_1134@uint8;
(*   %and.i.1.1 = and i32 %conv.i.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_1 v_conv_i_1_1 (0x1)@uint32;
(*   %conv1.i.1.1 = zext i8 %conv7.i.1137 to i32 *)
cast v_conv1_i_1_1@uint32 v_conv7_i_1137@uint8;
(*   %mul.i.1.1 = mul nsw i32 %and.i.1.1, %conv1.i.1.1 *)
mul v_mul_i_1_1 v_and_i_1_1 v_conv1_i_1_1;
(*   %conv2.i.1.1 = zext i8 %conv3.i.1131 to i32 *)
cast v_conv2_i_1_1@uint32 v_conv3_i_1131@uint8;
(*   %xor.i.1.1 = xor i32 %conv2.i.1.1, %mul.i.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_1 v_conv2_i_1_1 v_mul_i_1_1;
(*   %conv3.i.1.1 = trunc i32 %xor.i.1.1 to i8 *)
split tmp_v_xor_i_1_1 v_conv3_i_1_1 v_xor_i_1_1 8;
vpc v_conv3_i_1_1@uint8 v_conv3_i_1_1@uint32;
(*   %conv4.i.1.1 = zext i8 %conv5.i.1134 to i32 *)
cast v_conv4_i_1_1@uint32 v_conv5_i_1134@uint8;
(*   %shr.i.1.1 = ashr i32 %conv4.i.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_1_1 tmp_to_be_used v_conv4_i_1_1 1;
(*   %conv5.i.1.1 = trunc i32 %shr.i.1.1 to i8 *)
split tmp_v_shr_i_1_1 v_conv5_i_1_1 v_shr_i_1_1 8;
vpc v_conv5_i_1_1@uint8 v_conv5_i_1_1@uint32;
(*   %conv6.i.1.1 = zext i8 %conv7.i.1137 to i32 *)
cast v_conv6_i_1_1@uint32 v_conv7_i_1137@uint8;
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
(*   %conv.i71.1138 = zext i8 %9 to i32 *)
cast v_conv_i71_1138@uint32 v9@uint8;
(*   %and.i72.1139 = and i32 %conv.i71.1138, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_1139 v_conv_i71_1138 (0x1)@uint32;
(*   %conv1.i73.1140 = zext i8 %8 to i32 *)
cast v_conv1_i73_1140@uint32 v8@uint8;
(*   %mul.i74.1141 = mul nsw i32 %and.i72.1139, %conv1.i73.1140 *)
mul v_mul_i74_1141 v_and_i72_1139 v_conv1_i73_1140;
(*   %conv3.i77.1142 = trunc i32 %mul.i74.1141 to i8 *)
split tmp_v_mul_i74_1141 v_conv3_i77_1142 v_mul_i74_1141 8;
vpc v_conv3_i77_1142@uint8 v_conv3_i77_1142@uint32;
(*   %conv4.i78.1143 = zext i8 %9 to i32 *)
cast v_conv4_i78_1143@uint32 v9@uint8;
(*   %shr.i79.1144 = ashr i32 %conv4.i78.1143, 1 *)
(* You may need to modify here *)
split v_shr_i79_1144 tmp_to_be_used v_conv4_i78_1143 1;
(*   %conv5.i80.1145 = trunc i32 %shr.i79.1144 to i8 *)
split tmp_v_shr_i79_1144 v_conv5_i80_1145 v_shr_i79_1144 8;
vpc v_conv5_i80_1145@uint8 v_conv5_i80_1145@uint32;
(*   %conv6.i81.1146 = zext i8 %8 to i32 *)
cast v_conv6_i81_1146@uint32 v8@uint8;
(*   %shl.i82.1147 = shl i32 %conv6.i81.1146, 1 *)
shls discard_21 v_shl_i82_1147 v_conv6_i81_1146 1;
(*   %conv7.i83.1148 = trunc i32 %shl.i82.1147 to i8 *)
split tmp_v_shl_i82_1147 v_conv7_i83_1148 v_shl_i82_1147 8;
vpc v_conv7_i83_1148@uint8 v_conv7_i83_1148@uint32;
(*   %conv.i71.1.1 = zext i8 %conv5.i80.1145 to i32 *)
cast v_conv_i71_1_1@uint32 v_conv5_i80_1145@uint8;
(*   %and.i72.1.1 = and i32 %conv.i71.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_1_1 v_conv_i71_1_1 (0x1)@uint32;
(*   %conv1.i73.1.1 = zext i8 %conv7.i83.1148 to i32 *)
cast v_conv1_i73_1_1@uint32 v_conv7_i83_1148@uint8;
(*   %mul.i74.1.1 = mul nsw i32 %and.i72.1.1, %conv1.i73.1.1 *)
mul v_mul_i74_1_1 v_and_i72_1_1 v_conv1_i73_1_1;
(*   %conv2.i75.1.1 = zext i8 %conv3.i77.1142 to i32 *)
cast v_conv2_i75_1_1@uint32 v_conv3_i77_1142@uint8;
(*   %xor.i76.1.1 = xor i32 %conv2.i75.1.1, %mul.i74.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_1_1 v_conv2_i75_1_1 v_mul_i74_1_1;
(*   %conv3.i77.1.1 = trunc i32 %xor.i76.1.1 to i8 *)
split tmp_v_xor_i76_1_1 v_conv3_i77_1_1 v_xor_i76_1_1 8;
vpc v_conv3_i77_1_1@uint8 v_conv3_i77_1_1@uint32;
(*   %conv4.i78.1.1 = zext i8 %conv5.i80.1145 to i32 *)
cast v_conv4_i78_1_1@uint32 v_conv5_i80_1145@uint8;
(*   %shr.i79.1.1 = ashr i32 %conv4.i78.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i79_1_1 tmp_to_be_used v_conv4_i78_1_1 1;
(*   %conv5.i80.1.1 = trunc i32 %shr.i79.1.1 to i8 *)
split tmp_v_shr_i79_1_1 v_conv5_i80_1_1 v_shr_i79_1_1 8;
vpc v_conv5_i80_1_1@uint8 v_conv5_i80_1_1@uint32;
(*   %conv6.i81.1.1 = zext i8 %conv7.i83.1148 to i32 *)
cast v_conv6_i81_1_1@uint32 v_conv7_i83_1148@uint8;
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
(*   %arrayidx21.1 = getelementptr inbounds i8, i8* %r, i64 10 *)
(*   store i8 %conv17.1, i8* %arrayidx21.1, align 1 *)
mov r_10 v_conv17_1;
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
(*   %conv.i.2149 = zext i8 %12 to i32 *)
cast v_conv_i_2149@uint32 v12@uint8;
(*   %and.i.2150 = and i32 %conv.i.2149, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2150 v_conv_i_2149 (0x1)@uint32;
(*   %conv1.i.2151 = zext i8 %11 to i32 *)
cast v_conv1_i_2151@uint32 v11@uint8;
(*   %mul.i.2152 = mul nsw i32 %and.i.2150, %conv1.i.2151 *)
mul v_mul_i_2152 v_and_i_2150 v_conv1_i_2151;
(*   %conv3.i.2153 = trunc i32 %mul.i.2152 to i8 *)
split tmp_v_mul_i_2152 v_conv3_i_2153 v_mul_i_2152 8;
vpc v_conv3_i_2153@uint8 v_conv3_i_2153@uint32;
(*   %conv4.i.2154 = zext i8 %12 to i32 *)
cast v_conv4_i_2154@uint32 v12@uint8;
(*   %shr.i.2155 = ashr i32 %conv4.i.2154, 1 *)
(* You may need to modify here *)
split v_shr_i_2155 tmp_to_be_used v_conv4_i_2154 1;
(*   %conv5.i.2156 = trunc i32 %shr.i.2155 to i8 *)
split tmp_v_shr_i_2155 v_conv5_i_2156 v_shr_i_2155 8;
vpc v_conv5_i_2156@uint8 v_conv5_i_2156@uint32;
(*   %conv6.i.2157 = zext i8 %11 to i32 *)
cast v_conv6_i_2157@uint32 v11@uint8;
(*   %shl.i.2158 = shl i32 %conv6.i.2157, 1 *)
shls discard_28 v_shl_i_2158 v_conv6_i_2157 1;
(*   %conv7.i.2159 = trunc i32 %shl.i.2158 to i8 *)
split tmp_v_shl_i_2158 v_conv7_i_2159 v_shl_i_2158 8;
vpc v_conv7_i_2159@uint8 v_conv7_i_2159@uint32;
(*   %conv.i.1.2 = zext i8 %conv5.i.2156 to i32 *)
cast v_conv_i_1_2@uint32 v_conv5_i_2156@uint8;
(*   %and.i.1.2 = and i32 %conv.i.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_2 v_conv_i_1_2 (0x1)@uint32;
(*   %conv1.i.1.2 = zext i8 %conv7.i.2159 to i32 *)
cast v_conv1_i_1_2@uint32 v_conv7_i_2159@uint8;
(*   %mul.i.1.2 = mul nsw i32 %and.i.1.2, %conv1.i.1.2 *)
mul v_mul_i_1_2 v_and_i_1_2 v_conv1_i_1_2;
(*   %conv2.i.1.2 = zext i8 %conv3.i.2153 to i32 *)
cast v_conv2_i_1_2@uint32 v_conv3_i_2153@uint8;
(*   %xor.i.1.2 = xor i32 %conv2.i.1.2, %mul.i.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_2 v_conv2_i_1_2 v_mul_i_1_2;
(*   %conv3.i.1.2 = trunc i32 %xor.i.1.2 to i8 *)
split tmp_v_xor_i_1_2 v_conv3_i_1_2 v_xor_i_1_2 8;
vpc v_conv3_i_1_2@uint8 v_conv3_i_1_2@uint32;
(*   %conv4.i.1.2 = zext i8 %conv5.i.2156 to i32 *)
cast v_conv4_i_1_2@uint32 v_conv5_i_2156@uint8;
(*   %shr.i.1.2 = ashr i32 %conv4.i.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_1_2 tmp_to_be_used v_conv4_i_1_2 1;
(*   %conv5.i.1.2 = trunc i32 %shr.i.1.2 to i8 *)
split tmp_v_shr_i_1_2 v_conv5_i_1_2 v_shr_i_1_2 8;
vpc v_conv5_i_1_2@uint8 v_conv5_i_1_2@uint32;
(*   %conv6.i.1.2 = zext i8 %conv7.i.2159 to i32 *)
cast v_conv6_i_1_2@uint32 v_conv7_i_2159@uint8;
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
(*   %conv.i71.2160 = zext i8 %14 to i32 *)
cast v_conv_i71_2160@uint32 v14@uint8;
(*   %and.i72.2161 = and i32 %conv.i71.2160, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_2161 v_conv_i71_2160 (0x1)@uint32;
(*   %conv1.i73.2162 = zext i8 %13 to i32 *)
cast v_conv1_i73_2162@uint32 v13@uint8;
(*   %mul.i74.2163 = mul nsw i32 %and.i72.2161, %conv1.i73.2162 *)
mul v_mul_i74_2163 v_and_i72_2161 v_conv1_i73_2162;
(*   %conv3.i77.2164 = trunc i32 %mul.i74.2163 to i8 *)
split tmp_v_mul_i74_2163 v_conv3_i77_2164 v_mul_i74_2163 8;
vpc v_conv3_i77_2164@uint8 v_conv3_i77_2164@uint32;
(*   %conv4.i78.2165 = zext i8 %14 to i32 *)
cast v_conv4_i78_2165@uint32 v14@uint8;
(*   %shr.i79.2166 = ashr i32 %conv4.i78.2165, 1 *)
(* You may need to modify here *)
split v_shr_i79_2166 tmp_to_be_used v_conv4_i78_2165 1;
(*   %conv5.i80.2167 = trunc i32 %shr.i79.2166 to i8 *)
split tmp_v_shr_i79_2166 v_conv5_i80_2167 v_shr_i79_2166 8;
vpc v_conv5_i80_2167@uint8 v_conv5_i80_2167@uint32;
(*   %conv6.i81.2168 = zext i8 %13 to i32 *)
cast v_conv6_i81_2168@uint32 v13@uint8;
(*   %shl.i82.2169 = shl i32 %conv6.i81.2168, 1 *)
shls discard_35 v_shl_i82_2169 v_conv6_i81_2168 1;
(*   %conv7.i83.2170 = trunc i32 %shl.i82.2169 to i8 *)
split tmp_v_shl_i82_2169 v_conv7_i83_2170 v_shl_i82_2169 8;
vpc v_conv7_i83_2170@uint8 v_conv7_i83_2170@uint32;
(*   %conv.i71.1.2 = zext i8 %conv5.i80.2167 to i32 *)
cast v_conv_i71_1_2@uint32 v_conv5_i80_2167@uint8;
(*   %and.i72.1.2 = and i32 %conv.i71.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_1_2 v_conv_i71_1_2 (0x1)@uint32;
(*   %conv1.i73.1.2 = zext i8 %conv7.i83.2170 to i32 *)
cast v_conv1_i73_1_2@uint32 v_conv7_i83_2170@uint8;
(*   %mul.i74.1.2 = mul nsw i32 %and.i72.1.2, %conv1.i73.1.2 *)
mul v_mul_i74_1_2 v_and_i72_1_2 v_conv1_i73_1_2;
(*   %conv2.i75.1.2 = zext i8 %conv3.i77.2164 to i32 *)
cast v_conv2_i75_1_2@uint32 v_conv3_i77_2164@uint8;
(*   %xor.i76.1.2 = xor i32 %conv2.i75.1.2, %mul.i74.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_1_2 v_conv2_i75_1_2 v_mul_i74_1_2;
(*   %conv3.i77.1.2 = trunc i32 %xor.i76.1.2 to i8 *)
split tmp_v_xor_i76_1_2 v_conv3_i77_1_2 v_xor_i76_1_2 8;
vpc v_conv3_i77_1_2@uint8 v_conv3_i77_1_2@uint32;
(*   %conv4.i78.1.2 = zext i8 %conv5.i80.2167 to i32 *)
cast v_conv4_i78_1_2@uint32 v_conv5_i80_2167@uint8;
(*   %shr.i79.1.2 = ashr i32 %conv4.i78.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i79_1_2 tmp_to_be_used v_conv4_i78_1_2 1;
(*   %conv5.i80.1.2 = trunc i32 %shr.i79.1.2 to i8 *)
split tmp_v_shr_i79_1_2 v_conv5_i80_1_2 v_shr_i79_1_2 8;
vpc v_conv5_i80_1_2@uint8 v_conv5_i80_1_2@uint32;
(*   %conv6.i81.1.2 = zext i8 %conv7.i83.2170 to i32 *)
cast v_conv6_i81_1_2@uint32 v_conv7_i83_2170@uint8;
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
(*   %arrayidx21.2 = getelementptr inbounds i8, i8* %r, i64 15 *)
(*   store i8 %conv17.2, i8* %arrayidx21.2, align 1 *)
mov r_15 v_conv17_2;
(*   %arrayidx.3 = getelementptr inbounds i8, i8* %r, i64 4 *)
(*   %15 = load i8, i8* %arrayidx.3, align 1 *)
mov v15 r_4;
(*   %conv.3 = zext i8 %15 to i32 *)
cast v_conv_3@uint32 v15@uint8;
(*   %16 = load i8, i8* %a, align 1 *)
mov v16 a_0;
(*   %arrayidx8.3 = getelementptr inbounds i8, i8* %b, i64 4 *)
(*   %17 = load i8, i8* %arrayidx8.3, align 1 *)
mov v17 b_4;
(*   %conv.i.3171 = zext i8 %17 to i32 *)
cast v_conv_i_3171@uint32 v17@uint8;
(*   %and.i.3172 = and i32 %conv.i.3171, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3172 v_conv_i_3171 (0x1)@uint32;
(*   %conv1.i.3173 = zext i8 %16 to i32 *)
cast v_conv1_i_3173@uint32 v16@uint8;
(*   %mul.i.3174 = mul nsw i32 %and.i.3172, %conv1.i.3173 *)
mul v_mul_i_3174 v_and_i_3172 v_conv1_i_3173;
(*   %conv3.i.3175 = trunc i32 %mul.i.3174 to i8 *)
split tmp_v_mul_i_3174 v_conv3_i_3175 v_mul_i_3174 8;
vpc v_conv3_i_3175@uint8 v_conv3_i_3175@uint32;
(*   %conv4.i.3176 = zext i8 %17 to i32 *)
cast v_conv4_i_3176@uint32 v17@uint8;
(*   %shr.i.3177 = ashr i32 %conv4.i.3176, 1 *)
(* You may need to modify here *)
split v_shr_i_3177 tmp_to_be_used v_conv4_i_3176 1;
(*   %conv5.i.3178 = trunc i32 %shr.i.3177 to i8 *)
split tmp_v_shr_i_3177 v_conv5_i_3178 v_shr_i_3177 8;
vpc v_conv5_i_3178@uint8 v_conv5_i_3178@uint32;
(*   %conv6.i.3179 = zext i8 %16 to i32 *)
cast v_conv6_i_3179@uint32 v16@uint8;
(*   %shl.i.3180 = shl i32 %conv6.i.3179, 1 *)
shls discard_42 v_shl_i_3180 v_conv6_i_3179 1;
(*   %conv7.i.3181 = trunc i32 %shl.i.3180 to i8 *)
split tmp_v_shl_i_3180 v_conv7_i_3181 v_shl_i_3180 8;
vpc v_conv7_i_3181@uint8 v_conv7_i_3181@uint32;
(*   %conv.i.1.3 = zext i8 %conv5.i.3178 to i32 *)
cast v_conv_i_1_3@uint32 v_conv5_i_3178@uint8;
(*   %and.i.1.3 = and i32 %conv.i.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_3 v_conv_i_1_3 (0x1)@uint32;
(*   %conv1.i.1.3 = zext i8 %conv7.i.3181 to i32 *)
cast v_conv1_i_1_3@uint32 v_conv7_i_3181@uint8;
(*   %mul.i.1.3 = mul nsw i32 %and.i.1.3, %conv1.i.1.3 *)
mul v_mul_i_1_3 v_and_i_1_3 v_conv1_i_1_3;
(*   %conv2.i.1.3 = zext i8 %conv3.i.3175 to i32 *)
cast v_conv2_i_1_3@uint32 v_conv3_i_3175@uint8;
(*   %xor.i.1.3 = xor i32 %conv2.i.1.3, %mul.i.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_3 v_conv2_i_1_3 v_mul_i_1_3;
(*   %conv3.i.1.3 = trunc i32 %xor.i.1.3 to i8 *)
split tmp_v_xor_i_1_3 v_conv3_i_1_3 v_xor_i_1_3 8;
vpc v_conv3_i_1_3@uint8 v_conv3_i_1_3@uint32;
(*   %conv4.i.1.3 = zext i8 %conv5.i.3178 to i32 *)
cast v_conv4_i_1_3@uint32 v_conv5_i_3178@uint8;
(*   %shr.i.1.3 = ashr i32 %conv4.i.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i_1_3 tmp_to_be_used v_conv4_i_1_3 1;
(*   %conv5.i.1.3 = trunc i32 %shr.i.1.3 to i8 *)
split tmp_v_shr_i_1_3 v_conv5_i_1_3 v_shr_i_1_3 8;
vpc v_conv5_i_1_3@uint8 v_conv5_i_1_3@uint32;
(*   %conv6.i.1.3 = zext i8 %conv7.i.3181 to i32 *)
cast v_conv6_i_1_3@uint32 v_conv7_i_3181@uint8;
(*   %shl.i.1.3 = shl i32 %conv6.i.1.3, 1 *)
shls discard_43 v_shl_i_1_3 v_conv6_i_1_3 1;
(*   %conv7.i.1.3 = trunc i32 %shl.i.1.3 to i8 *)
split tmp_v_shl_i_1_3 v_conv7_i_1_3 v_shl_i_1_3 8;
vpc v_conv7_i_1_3@uint8 v_conv7_i_1_3@uint32;
(*   %conv.i.2.3 = zext i8 %conv5.i.1.3 to i32 *)
cast v_conv_i_2_3@uint32 v_conv5_i_1_3@uint8;
(*   %and.i.2.3 = and i32 %conv.i.2.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_3 v_conv_i_2_3 (0x1)@uint32;
(*   %conv1.i.2.3 = zext i8 %conv7.i.1.3 to i32 *)
cast v_conv1_i_2_3@uint32 v_conv7_i_1_3@uint8;
(*   %mul.i.2.3 = mul nsw i32 %and.i.2.3, %conv1.i.2.3 *)
mul v_mul_i_2_3 v_and_i_2_3 v_conv1_i_2_3;
(*   %conv2.i.2.3 = zext i8 %conv3.i.1.3 to i32 *)
cast v_conv2_i_2_3@uint32 v_conv3_i_1_3@uint8;
(*   %xor.i.2.3 = xor i32 %conv2.i.2.3, %mul.i.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_3 v_conv2_i_2_3 v_mul_i_2_3;
(*   %conv3.i.2.3 = trunc i32 %xor.i.2.3 to i8 *)
split tmp_v_xor_i_2_3 v_conv3_i_2_3 v_xor_i_2_3 8;
vpc v_conv3_i_2_3@uint8 v_conv3_i_2_3@uint32;
(*   %conv4.i.2.3 = zext i8 %conv5.i.1.3 to i32 *)
cast v_conv4_i_2_3@uint32 v_conv5_i_1_3@uint8;
(*   %shr.i.2.3 = ashr i32 %conv4.i.2.3, 1 *)
(* You may need to modify here *)
split v_shr_i_2_3 tmp_to_be_used v_conv4_i_2_3 1;
(*   %conv5.i.2.3 = trunc i32 %shr.i.2.3 to i8 *)
split tmp_v_shr_i_2_3 v_conv5_i_2_3 v_shr_i_2_3 8;
vpc v_conv5_i_2_3@uint8 v_conv5_i_2_3@uint32;
(*   %conv6.i.2.3 = zext i8 %conv7.i.1.3 to i32 *)
cast v_conv6_i_2_3@uint32 v_conv7_i_1_3@uint8;
(*   %shl.i.2.3 = shl i32 %conv6.i.2.3, 1 *)
shls discard_44 v_shl_i_2_3 v_conv6_i_2_3 1;
(*   %conv7.i.2.3 = trunc i32 %shl.i.2.3 to i8 *)
split tmp_v_shl_i_2_3 v_conv7_i_2_3 v_shl_i_2_3 8;
vpc v_conv7_i_2_3@uint8 v_conv7_i_2_3@uint32;
(*   %conv.i.3.3 = zext i8 %conv5.i.2.3 to i32 *)
cast v_conv_i_3_3@uint32 v_conv5_i_2_3@uint8;
(*   %and.i.3.3 = and i32 %conv.i.3.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_3 v_conv_i_3_3 (0x1)@uint32;
(*   %conv1.i.3.3 = zext i8 %conv7.i.2.3 to i32 *)
cast v_conv1_i_3_3@uint32 v_conv7_i_2_3@uint8;
(*   %mul.i.3.3 = mul nsw i32 %and.i.3.3, %conv1.i.3.3 *)
mul v_mul_i_3_3 v_and_i_3_3 v_conv1_i_3_3;
(*   %conv2.i.3.3 = zext i8 %conv3.i.2.3 to i32 *)
cast v_conv2_i_3_3@uint32 v_conv3_i_2_3@uint8;
(*   %xor.i.3.3 = xor i32 %conv2.i.3.3, %mul.i.3.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_3 v_conv2_i_3_3 v_mul_i_3_3;
(*   %conv3.i.3.3 = trunc i32 %xor.i.3.3 to i8 *)
split tmp_v_xor_i_3_3 v_conv3_i_3_3 v_xor_i_3_3 8;
vpc v_conv3_i_3_3@uint8 v_conv3_i_3_3@uint32;
(*   %conv4.i.3.3 = zext i8 %conv5.i.2.3 to i32 *)
cast v_conv4_i_3_3@uint32 v_conv5_i_2_3@uint8;
(*   %shr.i.3.3 = ashr i32 %conv4.i.3.3, 1 *)
(* You may need to modify here *)
split v_shr_i_3_3 tmp_to_be_used v_conv4_i_3_3 1;
(*   %conv5.i.3.3 = trunc i32 %shr.i.3.3 to i8 *)
split tmp_v_shr_i_3_3 v_conv5_i_3_3 v_shr_i_3_3 8;
vpc v_conv5_i_3_3@uint8 v_conv5_i_3_3@uint32;
(*   %conv6.i.3.3 = zext i8 %conv7.i.2.3 to i32 *)
cast v_conv6_i_3_3@uint32 v_conv7_i_2_3@uint8;
(*   %shl.i.3.3 = shl i32 %conv6.i.3.3, 1 *)
shls discard_45 v_shl_i_3_3 v_conv6_i_3_3 1;
(*   %conv7.i.3.3 = trunc i32 %shl.i.3.3 to i8 *)
split tmp_v_shl_i_3_3 v_conv7_i_3_3 v_shl_i_3_3 8;
vpc v_conv7_i_3_3@uint8 v_conv7_i_3_3@uint32;
(*   %conv.i.4.3 = zext i8 %conv5.i.3.3 to i32 *)
cast v_conv_i_4_3@uint32 v_conv5_i_3_3@uint8;
(*   %and.i.4.3 = and i32 %conv.i.4.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_3 v_conv_i_4_3 (0x1)@uint32;
(*   %conv1.i.4.3 = zext i8 %conv7.i.3.3 to i32 *)
cast v_conv1_i_4_3@uint32 v_conv7_i_3_3@uint8;
(*   %mul.i.4.3 = mul nsw i32 %and.i.4.3, %conv1.i.4.3 *)
mul v_mul_i_4_3 v_and_i_4_3 v_conv1_i_4_3;
(*   %conv2.i.4.3 = zext i8 %conv3.i.3.3 to i32 *)
cast v_conv2_i_4_3@uint32 v_conv3_i_3_3@uint8;
(*   %xor.i.4.3 = xor i32 %conv2.i.4.3, %mul.i.4.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_3 v_conv2_i_4_3 v_mul_i_4_3;
(*   %conv3.i.4.3 = trunc i32 %xor.i.4.3 to i8 *)
split tmp_v_xor_i_4_3 v_conv3_i_4_3 v_xor_i_4_3 8;
vpc v_conv3_i_4_3@uint8 v_conv3_i_4_3@uint32;
(*   %conv4.i.4.3 = zext i8 %conv5.i.3.3 to i32 *)
cast v_conv4_i_4_3@uint32 v_conv5_i_3_3@uint8;
(*   %shr.i.4.3 = ashr i32 %conv4.i.4.3, 1 *)
(* You may need to modify here *)
split v_shr_i_4_3 tmp_to_be_used v_conv4_i_4_3 1;
(*   %conv5.i.4.3 = trunc i32 %shr.i.4.3 to i8 *)
split tmp_v_shr_i_4_3 v_conv5_i_4_3 v_shr_i_4_3 8;
vpc v_conv5_i_4_3@uint8 v_conv5_i_4_3@uint32;
(*   %conv6.i.4.3 = zext i8 %conv7.i.3.3 to i32 *)
cast v_conv6_i_4_3@uint32 v_conv7_i_3_3@uint8;
(*   %shl.i.4.3 = shl i32 %conv6.i.4.3, 1 *)
shls discard_46 v_shl_i_4_3 v_conv6_i_4_3 1;
(*   %conv7.i.4.3 = trunc i32 %shl.i.4.3 to i8 *)
split tmp_v_shl_i_4_3 v_conv7_i_4_3 v_shl_i_4_3 8;
vpc v_conv7_i_4_3@uint8 v_conv7_i_4_3@uint32;
(*   %conv.i.5.3 = zext i8 %conv5.i.4.3 to i32 *)
cast v_conv_i_5_3@uint32 v_conv5_i_4_3@uint8;
(*   %and.i.5.3 = and i32 %conv.i.5.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_3 v_conv_i_5_3 (0x1)@uint32;
(*   %conv1.i.5.3 = zext i8 %conv7.i.4.3 to i32 *)
cast v_conv1_i_5_3@uint32 v_conv7_i_4_3@uint8;
(*   %mul.i.5.3 = mul nsw i32 %and.i.5.3, %conv1.i.5.3 *)
mul v_mul_i_5_3 v_and_i_5_3 v_conv1_i_5_3;
(*   %conv2.i.5.3 = zext i8 %conv3.i.4.3 to i32 *)
cast v_conv2_i_5_3@uint32 v_conv3_i_4_3@uint8;
(*   %xor.i.5.3 = xor i32 %conv2.i.5.3, %mul.i.5.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_3 v_conv2_i_5_3 v_mul_i_5_3;
(*   %conv3.i.5.3 = trunc i32 %xor.i.5.3 to i8 *)
split tmp_v_xor_i_5_3 v_conv3_i_5_3 v_xor_i_5_3 8;
vpc v_conv3_i_5_3@uint8 v_conv3_i_5_3@uint32;
(*   %conv4.i.5.3 = zext i8 %conv5.i.4.3 to i32 *)
cast v_conv4_i_5_3@uint32 v_conv5_i_4_3@uint8;
(*   %shr.i.5.3 = ashr i32 %conv4.i.5.3, 1 *)
(* You may need to modify here *)
split v_shr_i_5_3 tmp_to_be_used v_conv4_i_5_3 1;
(*   %conv5.i.5.3 = trunc i32 %shr.i.5.3 to i8 *)
split tmp_v_shr_i_5_3 v_conv5_i_5_3 v_shr_i_5_3 8;
vpc v_conv5_i_5_3@uint8 v_conv5_i_5_3@uint32;
(*   %conv6.i.5.3 = zext i8 %conv7.i.4.3 to i32 *)
cast v_conv6_i_5_3@uint32 v_conv7_i_4_3@uint8;
(*   %shl.i.5.3 = shl i32 %conv6.i.5.3, 1 *)
shls discard_47 v_shl_i_5_3 v_conv6_i_5_3 1;
(*   %conv7.i.5.3 = trunc i32 %shl.i.5.3 to i8 *)
split tmp_v_shl_i_5_3 v_conv7_i_5_3 v_shl_i_5_3 8;
vpc v_conv7_i_5_3@uint8 v_conv7_i_5_3@uint32;
(*   %conv.i.6.3 = zext i8 %conv5.i.5.3 to i32 *)
cast v_conv_i_6_3@uint32 v_conv5_i_5_3@uint8;
(*   %and.i.6.3 = and i32 %conv.i.6.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_3 v_conv_i_6_3 (0x1)@uint32;
(*   %conv1.i.6.3 = zext i8 %conv7.i.5.3 to i32 *)
cast v_conv1_i_6_3@uint32 v_conv7_i_5_3@uint8;
(*   %mul.i.6.3 = mul nsw i32 %and.i.6.3, %conv1.i.6.3 *)
mul v_mul_i_6_3 v_and_i_6_3 v_conv1_i_6_3;
(*   %conv2.i.6.3 = zext i8 %conv3.i.5.3 to i32 *)
cast v_conv2_i_6_3@uint32 v_conv3_i_5_3@uint8;
(*   %xor.i.6.3 = xor i32 %conv2.i.6.3, %mul.i.6.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_3 v_conv2_i_6_3 v_mul_i_6_3;
(*   %conv3.i.6.3 = trunc i32 %xor.i.6.3 to i8 *)
split tmp_v_xor_i_6_3 v_conv3_i_6_3 v_xor_i_6_3 8;
vpc v_conv3_i_6_3@uint8 v_conv3_i_6_3@uint32;
(*   %conv4.i.6.3 = zext i8 %conv5.i.5.3 to i32 *)
cast v_conv4_i_6_3@uint32 v_conv5_i_5_3@uint8;
(*   %shr.i.6.3 = ashr i32 %conv4.i.6.3, 1 *)
(* You may need to modify here *)
split v_shr_i_6_3 tmp_to_be_used v_conv4_i_6_3 1;
(*   %conv5.i.6.3 = trunc i32 %shr.i.6.3 to i8 *)
split tmp_v_shr_i_6_3 v_conv5_i_6_3 v_shr_i_6_3 8;
vpc v_conv5_i_6_3@uint8 v_conv5_i_6_3@uint32;
(*   %conv6.i.6.3 = zext i8 %conv7.i.5.3 to i32 *)
cast v_conv6_i_6_3@uint32 v_conv7_i_5_3@uint8;
(*   %shl.i.6.3 = shl i32 %conv6.i.6.3, 1 *)
shls discard_48 v_shl_i_6_3 v_conv6_i_6_3 1;
(*   %conv7.i.6.3 = trunc i32 %shl.i.6.3 to i8 *)
split tmp_v_shl_i_6_3 v_conv7_i_6_3 v_shl_i_6_3 8;
vpc v_conv7_i_6_3@uint8 v_conv7_i_6_3@uint32;
(*   %conv.i.7.3 = zext i8 %conv5.i.6.3 to i32 *)
cast v_conv_i_7_3@uint32 v_conv5_i_6_3@uint8;
(*   %and.i.7.3 = and i32 %conv.i.7.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_3 v_conv_i_7_3 (0x1)@uint32;
(*   %conv1.i.7.3 = zext i8 %conv7.i.6.3 to i32 *)
cast v_conv1_i_7_3@uint32 v_conv7_i_6_3@uint8;
(*   %mul.i.7.3 = mul nsw i32 %and.i.7.3, %conv1.i.7.3 *)
mul v_mul_i_7_3 v_and_i_7_3 v_conv1_i_7_3;
(*   %conv2.i.7.3 = zext i8 %conv3.i.6.3 to i32 *)
cast v_conv2_i_7_3@uint32 v_conv3_i_6_3@uint8;
(*   %xor.i.7.3 = xor i32 %conv2.i.7.3, %mul.i.7.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_3 v_conv2_i_7_3 v_mul_i_7_3;
(*   %conv3.i.7.3 = trunc i32 %xor.i.7.3 to i8 *)
split tmp_v_xor_i_7_3 v_conv3_i_7_3 v_xor_i_7_3 8;
vpc v_conv3_i_7_3@uint8 v_conv3_i_7_3@uint32;
(*   %conv9.3 = zext i8 %conv3.i.7.3 to i32 *)
cast v_conv9_3@uint32 v_conv3_i_7_3@uint8;
(*   %xor.3 = xor i32 %conv.3, %conv9.3 *)
(* You may need to modify here *)
xor uint32 v_xor_3 v_conv_3 v_conv9_3;
(*   %arrayidx11.3 = getelementptr inbounds i8, i8* %a, i64 4 *)
(*   %18 = load i8, i8* %arrayidx11.3, align 1 *)
mov v18 a_4;
(*   %19 = load i8, i8* %b, align 1 *)
mov v19 b_0;
(*   %conv.i71.3182 = zext i8 %19 to i32 *)
cast v_conv_i71_3182@uint32 v19@uint8;
(*   %and.i72.3183 = and i32 %conv.i71.3182, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_3183 v_conv_i71_3182 (0x1)@uint32;
(*   %conv1.i73.3184 = zext i8 %18 to i32 *)
cast v_conv1_i73_3184@uint32 v18@uint8;
(*   %mul.i74.3185 = mul nsw i32 %and.i72.3183, %conv1.i73.3184 *)
mul v_mul_i74_3185 v_and_i72_3183 v_conv1_i73_3184;
(*   %conv3.i77.3186 = trunc i32 %mul.i74.3185 to i8 *)
split tmp_v_mul_i74_3185 v_conv3_i77_3186 v_mul_i74_3185 8;
vpc v_conv3_i77_3186@uint8 v_conv3_i77_3186@uint32;
(*   %conv4.i78.3187 = zext i8 %19 to i32 *)
cast v_conv4_i78_3187@uint32 v19@uint8;
(*   %shr.i79.3188 = ashr i32 %conv4.i78.3187, 1 *)
(* You may need to modify here *)
split v_shr_i79_3188 tmp_to_be_used v_conv4_i78_3187 1;
(*   %conv5.i80.3189 = trunc i32 %shr.i79.3188 to i8 *)
split tmp_v_shr_i79_3188 v_conv5_i80_3189 v_shr_i79_3188 8;
vpc v_conv5_i80_3189@uint8 v_conv5_i80_3189@uint32;
(*   %conv6.i81.3190 = zext i8 %18 to i32 *)
cast v_conv6_i81_3190@uint32 v18@uint8;
(*   %shl.i82.3191 = shl i32 %conv6.i81.3190, 1 *)
shls discard_49 v_shl_i82_3191 v_conv6_i81_3190 1;
(*   %conv7.i83.3192 = trunc i32 %shl.i82.3191 to i8 *)
split tmp_v_shl_i82_3191 v_conv7_i83_3192 v_shl_i82_3191 8;
vpc v_conv7_i83_3192@uint8 v_conv7_i83_3192@uint32;
(*   %conv.i71.1.3 = zext i8 %conv5.i80.3189 to i32 *)
cast v_conv_i71_1_3@uint32 v_conv5_i80_3189@uint8;
(*   %and.i72.1.3 = and i32 %conv.i71.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_1_3 v_conv_i71_1_3 (0x1)@uint32;
(*   %conv1.i73.1.3 = zext i8 %conv7.i83.3192 to i32 *)
cast v_conv1_i73_1_3@uint32 v_conv7_i83_3192@uint8;
(*   %mul.i74.1.3 = mul nsw i32 %and.i72.1.3, %conv1.i73.1.3 *)
mul v_mul_i74_1_3 v_and_i72_1_3 v_conv1_i73_1_3;
(*   %conv2.i75.1.3 = zext i8 %conv3.i77.3186 to i32 *)
cast v_conv2_i75_1_3@uint32 v_conv3_i77_3186@uint8;
(*   %xor.i76.1.3 = xor i32 %conv2.i75.1.3, %mul.i74.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_1_3 v_conv2_i75_1_3 v_mul_i74_1_3;
(*   %conv3.i77.1.3 = trunc i32 %xor.i76.1.3 to i8 *)
split tmp_v_xor_i76_1_3 v_conv3_i77_1_3 v_xor_i76_1_3 8;
vpc v_conv3_i77_1_3@uint8 v_conv3_i77_1_3@uint32;
(*   %conv4.i78.1.3 = zext i8 %conv5.i80.3189 to i32 *)
cast v_conv4_i78_1_3@uint32 v_conv5_i80_3189@uint8;
(*   %shr.i79.1.3 = ashr i32 %conv4.i78.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i79_1_3 tmp_to_be_used v_conv4_i78_1_3 1;
(*   %conv5.i80.1.3 = trunc i32 %shr.i79.1.3 to i8 *)
split tmp_v_shr_i79_1_3 v_conv5_i80_1_3 v_shr_i79_1_3 8;
vpc v_conv5_i80_1_3@uint8 v_conv5_i80_1_3@uint32;
(*   %conv6.i81.1.3 = zext i8 %conv7.i83.3192 to i32 *)
cast v_conv6_i81_1_3@uint32 v_conv7_i83_3192@uint8;
(*   %shl.i82.1.3 = shl i32 %conv6.i81.1.3, 1 *)
shls discard_50 v_shl_i82_1_3 v_conv6_i81_1_3 1;
(*   %conv7.i83.1.3 = trunc i32 %shl.i82.1.3 to i8 *)
split tmp_v_shl_i82_1_3 v_conv7_i83_1_3 v_shl_i82_1_3 8;
vpc v_conv7_i83_1_3@uint8 v_conv7_i83_1_3@uint32;
(*   %conv.i71.2.3 = zext i8 %conv5.i80.1.3 to i32 *)
cast v_conv_i71_2_3@uint32 v_conv5_i80_1_3@uint8;
(*   %and.i72.2.3 = and i32 %conv.i71.2.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_2_3 v_conv_i71_2_3 (0x1)@uint32;
(*   %conv1.i73.2.3 = zext i8 %conv7.i83.1.3 to i32 *)
cast v_conv1_i73_2_3@uint32 v_conv7_i83_1_3@uint8;
(*   %mul.i74.2.3 = mul nsw i32 %and.i72.2.3, %conv1.i73.2.3 *)
mul v_mul_i74_2_3 v_and_i72_2_3 v_conv1_i73_2_3;
(*   %conv2.i75.2.3 = zext i8 %conv3.i77.1.3 to i32 *)
cast v_conv2_i75_2_3@uint32 v_conv3_i77_1_3@uint8;
(*   %xor.i76.2.3 = xor i32 %conv2.i75.2.3, %mul.i74.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_2_3 v_conv2_i75_2_3 v_mul_i74_2_3;
(*   %conv3.i77.2.3 = trunc i32 %xor.i76.2.3 to i8 *)
split tmp_v_xor_i76_2_3 v_conv3_i77_2_3 v_xor_i76_2_3 8;
vpc v_conv3_i77_2_3@uint8 v_conv3_i77_2_3@uint32;
(*   %conv4.i78.2.3 = zext i8 %conv5.i80.1.3 to i32 *)
cast v_conv4_i78_2_3@uint32 v_conv5_i80_1_3@uint8;
(*   %shr.i79.2.3 = ashr i32 %conv4.i78.2.3, 1 *)
(* You may need to modify here *)
split v_shr_i79_2_3 tmp_to_be_used v_conv4_i78_2_3 1;
(*   %conv5.i80.2.3 = trunc i32 %shr.i79.2.3 to i8 *)
split tmp_v_shr_i79_2_3 v_conv5_i80_2_3 v_shr_i79_2_3 8;
vpc v_conv5_i80_2_3@uint8 v_conv5_i80_2_3@uint32;
(*   %conv6.i81.2.3 = zext i8 %conv7.i83.1.3 to i32 *)
cast v_conv6_i81_2_3@uint32 v_conv7_i83_1_3@uint8;
(*   %shl.i82.2.3 = shl i32 %conv6.i81.2.3, 1 *)
shls discard_51 v_shl_i82_2_3 v_conv6_i81_2_3 1;
(*   %conv7.i83.2.3 = trunc i32 %shl.i82.2.3 to i8 *)
split tmp_v_shl_i82_2_3 v_conv7_i83_2_3 v_shl_i82_2_3 8;
vpc v_conv7_i83_2_3@uint8 v_conv7_i83_2_3@uint32;
(*   %conv.i71.3.3 = zext i8 %conv5.i80.2.3 to i32 *)
cast v_conv_i71_3_3@uint32 v_conv5_i80_2_3@uint8;
(*   %and.i72.3.3 = and i32 %conv.i71.3.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_3_3 v_conv_i71_3_3 (0x1)@uint32;
(*   %conv1.i73.3.3 = zext i8 %conv7.i83.2.3 to i32 *)
cast v_conv1_i73_3_3@uint32 v_conv7_i83_2_3@uint8;
(*   %mul.i74.3.3 = mul nsw i32 %and.i72.3.3, %conv1.i73.3.3 *)
mul v_mul_i74_3_3 v_and_i72_3_3 v_conv1_i73_3_3;
(*   %conv2.i75.3.3 = zext i8 %conv3.i77.2.3 to i32 *)
cast v_conv2_i75_3_3@uint32 v_conv3_i77_2_3@uint8;
(*   %xor.i76.3.3 = xor i32 %conv2.i75.3.3, %mul.i74.3.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_3_3 v_conv2_i75_3_3 v_mul_i74_3_3;
(*   %conv3.i77.3.3 = trunc i32 %xor.i76.3.3 to i8 *)
split tmp_v_xor_i76_3_3 v_conv3_i77_3_3 v_xor_i76_3_3 8;
vpc v_conv3_i77_3_3@uint8 v_conv3_i77_3_3@uint32;
(*   %conv4.i78.3.3 = zext i8 %conv5.i80.2.3 to i32 *)
cast v_conv4_i78_3_3@uint32 v_conv5_i80_2_3@uint8;
(*   %shr.i79.3.3 = ashr i32 %conv4.i78.3.3, 1 *)
(* You may need to modify here *)
split v_shr_i79_3_3 tmp_to_be_used v_conv4_i78_3_3 1;
(*   %conv5.i80.3.3 = trunc i32 %shr.i79.3.3 to i8 *)
split tmp_v_shr_i79_3_3 v_conv5_i80_3_3 v_shr_i79_3_3 8;
vpc v_conv5_i80_3_3@uint8 v_conv5_i80_3_3@uint32;
(*   %conv6.i81.3.3 = zext i8 %conv7.i83.2.3 to i32 *)
cast v_conv6_i81_3_3@uint32 v_conv7_i83_2_3@uint8;
(*   %shl.i82.3.3 = shl i32 %conv6.i81.3.3, 1 *)
shls discard_52 v_shl_i82_3_3 v_conv6_i81_3_3 1;
(*   %conv7.i83.3.3 = trunc i32 %shl.i82.3.3 to i8 *)
split tmp_v_shl_i82_3_3 v_conv7_i83_3_3 v_shl_i82_3_3 8;
vpc v_conv7_i83_3_3@uint8 v_conv7_i83_3_3@uint32;
(*   %conv.i71.4.3 = zext i8 %conv5.i80.3.3 to i32 *)
cast v_conv_i71_4_3@uint32 v_conv5_i80_3_3@uint8;
(*   %and.i72.4.3 = and i32 %conv.i71.4.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_4_3 v_conv_i71_4_3 (0x1)@uint32;
(*   %conv1.i73.4.3 = zext i8 %conv7.i83.3.3 to i32 *)
cast v_conv1_i73_4_3@uint32 v_conv7_i83_3_3@uint8;
(*   %mul.i74.4.3 = mul nsw i32 %and.i72.4.3, %conv1.i73.4.3 *)
mul v_mul_i74_4_3 v_and_i72_4_3 v_conv1_i73_4_3;
(*   %conv2.i75.4.3 = zext i8 %conv3.i77.3.3 to i32 *)
cast v_conv2_i75_4_3@uint32 v_conv3_i77_3_3@uint8;
(*   %xor.i76.4.3 = xor i32 %conv2.i75.4.3, %mul.i74.4.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_4_3 v_conv2_i75_4_3 v_mul_i74_4_3;
(*   %conv3.i77.4.3 = trunc i32 %xor.i76.4.3 to i8 *)
split tmp_v_xor_i76_4_3 v_conv3_i77_4_3 v_xor_i76_4_3 8;
vpc v_conv3_i77_4_3@uint8 v_conv3_i77_4_3@uint32;
(*   %conv4.i78.4.3 = zext i8 %conv5.i80.3.3 to i32 *)
cast v_conv4_i78_4_3@uint32 v_conv5_i80_3_3@uint8;
(*   %shr.i79.4.3 = ashr i32 %conv4.i78.4.3, 1 *)
(* You may need to modify here *)
split v_shr_i79_4_3 tmp_to_be_used v_conv4_i78_4_3 1;
(*   %conv5.i80.4.3 = trunc i32 %shr.i79.4.3 to i8 *)
split tmp_v_shr_i79_4_3 v_conv5_i80_4_3 v_shr_i79_4_3 8;
vpc v_conv5_i80_4_3@uint8 v_conv5_i80_4_3@uint32;
(*   %conv6.i81.4.3 = zext i8 %conv7.i83.3.3 to i32 *)
cast v_conv6_i81_4_3@uint32 v_conv7_i83_3_3@uint8;
(*   %shl.i82.4.3 = shl i32 %conv6.i81.4.3, 1 *)
shls discard_53 v_shl_i82_4_3 v_conv6_i81_4_3 1;
(*   %conv7.i83.4.3 = trunc i32 %shl.i82.4.3 to i8 *)
split tmp_v_shl_i82_4_3 v_conv7_i83_4_3 v_shl_i82_4_3 8;
vpc v_conv7_i83_4_3@uint8 v_conv7_i83_4_3@uint32;
(*   %conv.i71.5.3 = zext i8 %conv5.i80.4.3 to i32 *)
cast v_conv_i71_5_3@uint32 v_conv5_i80_4_3@uint8;
(*   %and.i72.5.3 = and i32 %conv.i71.5.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_5_3 v_conv_i71_5_3 (0x1)@uint32;
(*   %conv1.i73.5.3 = zext i8 %conv7.i83.4.3 to i32 *)
cast v_conv1_i73_5_3@uint32 v_conv7_i83_4_3@uint8;
(*   %mul.i74.5.3 = mul nsw i32 %and.i72.5.3, %conv1.i73.5.3 *)
mul v_mul_i74_5_3 v_and_i72_5_3 v_conv1_i73_5_3;
(*   %conv2.i75.5.3 = zext i8 %conv3.i77.4.3 to i32 *)
cast v_conv2_i75_5_3@uint32 v_conv3_i77_4_3@uint8;
(*   %xor.i76.5.3 = xor i32 %conv2.i75.5.3, %mul.i74.5.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_5_3 v_conv2_i75_5_3 v_mul_i74_5_3;
(*   %conv3.i77.5.3 = trunc i32 %xor.i76.5.3 to i8 *)
split tmp_v_xor_i76_5_3 v_conv3_i77_5_3 v_xor_i76_5_3 8;
vpc v_conv3_i77_5_3@uint8 v_conv3_i77_5_3@uint32;
(*   %conv4.i78.5.3 = zext i8 %conv5.i80.4.3 to i32 *)
cast v_conv4_i78_5_3@uint32 v_conv5_i80_4_3@uint8;
(*   %shr.i79.5.3 = ashr i32 %conv4.i78.5.3, 1 *)
(* You may need to modify here *)
split v_shr_i79_5_3 tmp_to_be_used v_conv4_i78_5_3 1;
(*   %conv5.i80.5.3 = trunc i32 %shr.i79.5.3 to i8 *)
split tmp_v_shr_i79_5_3 v_conv5_i80_5_3 v_shr_i79_5_3 8;
vpc v_conv5_i80_5_3@uint8 v_conv5_i80_5_3@uint32;
(*   %conv6.i81.5.3 = zext i8 %conv7.i83.4.3 to i32 *)
cast v_conv6_i81_5_3@uint32 v_conv7_i83_4_3@uint8;
(*   %shl.i82.5.3 = shl i32 %conv6.i81.5.3, 1 *)
shls discard_54 v_shl_i82_5_3 v_conv6_i81_5_3 1;
(*   %conv7.i83.5.3 = trunc i32 %shl.i82.5.3 to i8 *)
split tmp_v_shl_i82_5_3 v_conv7_i83_5_3 v_shl_i82_5_3 8;
vpc v_conv7_i83_5_3@uint8 v_conv7_i83_5_3@uint32;
(*   %conv.i71.6.3 = zext i8 %conv5.i80.5.3 to i32 *)
cast v_conv_i71_6_3@uint32 v_conv5_i80_5_3@uint8;
(*   %and.i72.6.3 = and i32 %conv.i71.6.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_6_3 v_conv_i71_6_3 (0x1)@uint32;
(*   %conv1.i73.6.3 = zext i8 %conv7.i83.5.3 to i32 *)
cast v_conv1_i73_6_3@uint32 v_conv7_i83_5_3@uint8;
(*   %mul.i74.6.3 = mul nsw i32 %and.i72.6.3, %conv1.i73.6.3 *)
mul v_mul_i74_6_3 v_and_i72_6_3 v_conv1_i73_6_3;
(*   %conv2.i75.6.3 = zext i8 %conv3.i77.5.3 to i32 *)
cast v_conv2_i75_6_3@uint32 v_conv3_i77_5_3@uint8;
(*   %xor.i76.6.3 = xor i32 %conv2.i75.6.3, %mul.i74.6.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_6_3 v_conv2_i75_6_3 v_mul_i74_6_3;
(*   %conv3.i77.6.3 = trunc i32 %xor.i76.6.3 to i8 *)
split tmp_v_xor_i76_6_3 v_conv3_i77_6_3 v_xor_i76_6_3 8;
vpc v_conv3_i77_6_3@uint8 v_conv3_i77_6_3@uint32;
(*   %conv4.i78.6.3 = zext i8 %conv5.i80.5.3 to i32 *)
cast v_conv4_i78_6_3@uint32 v_conv5_i80_5_3@uint8;
(*   %shr.i79.6.3 = ashr i32 %conv4.i78.6.3, 1 *)
(* You may need to modify here *)
split v_shr_i79_6_3 tmp_to_be_used v_conv4_i78_6_3 1;
(*   %conv5.i80.6.3 = trunc i32 %shr.i79.6.3 to i8 *)
split tmp_v_shr_i79_6_3 v_conv5_i80_6_3 v_shr_i79_6_3 8;
vpc v_conv5_i80_6_3@uint8 v_conv5_i80_6_3@uint32;
(*   %conv6.i81.6.3 = zext i8 %conv7.i83.5.3 to i32 *)
cast v_conv6_i81_6_3@uint32 v_conv7_i83_5_3@uint8;
(*   %shl.i82.6.3 = shl i32 %conv6.i81.6.3, 1 *)
shls discard_55 v_shl_i82_6_3 v_conv6_i81_6_3 1;
(*   %conv7.i83.6.3 = trunc i32 %shl.i82.6.3 to i8 *)
split tmp_v_shl_i82_6_3 v_conv7_i83_6_3 v_shl_i82_6_3 8;
vpc v_conv7_i83_6_3@uint8 v_conv7_i83_6_3@uint32;
(*   %conv.i71.7.3 = zext i8 %conv5.i80.6.3 to i32 *)
cast v_conv_i71_7_3@uint32 v_conv5_i80_6_3@uint8;
(*   %and.i72.7.3 = and i32 %conv.i71.7.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_7_3 v_conv_i71_7_3 (0x1)@uint32;
(*   %conv1.i73.7.3 = zext i8 %conv7.i83.6.3 to i32 *)
cast v_conv1_i73_7_3@uint32 v_conv7_i83_6_3@uint8;
(*   %mul.i74.7.3 = mul nsw i32 %and.i72.7.3, %conv1.i73.7.3 *)
mul v_mul_i74_7_3 v_and_i72_7_3 v_conv1_i73_7_3;
(*   %conv2.i75.7.3 = zext i8 %conv3.i77.6.3 to i32 *)
cast v_conv2_i75_7_3@uint32 v_conv3_i77_6_3@uint8;
(*   %xor.i76.7.3 = xor i32 %conv2.i75.7.3, %mul.i74.7.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_7_3 v_conv2_i75_7_3 v_mul_i74_7_3;
(*   %conv3.i77.7.3 = trunc i32 %xor.i76.7.3 to i8 *)
split tmp_v_xor_i76_7_3 v_conv3_i77_7_3 v_xor_i76_7_3 8;
vpc v_conv3_i77_7_3@uint8 v_conv3_i77_7_3@uint32;
(*   %conv15.3 = zext i8 %conv3.i77.7.3 to i32 *)
cast v_conv15_3@uint32 v_conv3_i77_7_3@uint8;
(*   %xor16.3 = xor i32 %xor.3, %conv15.3 *)
(* You may need to modify here *)
xor uint32 v_xor16_3 v_xor_3 v_conv15_3;
(*   %conv17.3 = trunc i32 %xor16.3 to i8 *)
split tmp_v_xor16_3 v_conv17_3 v_xor16_3 8;
vpc v_conv17_3@uint8 v_conv17_3@uint32;
(*   %arrayidx21.3 = getelementptr inbounds i8, i8* %r, i64 20 *)
(*   store i8 %conv17.3, i8* %arrayidx21.3, align 1 *)
mov r_20 v_conv17_3;
(*   %arrayidx6.1 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %arrayidx13.1 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %arrayidx.1195 = getelementptr inbounds i8, i8* %r, i64 7 *)
(*   %20 = load i8, i8* %arrayidx.1195, align 1 *)
mov v20 r_7;
(*   %conv.1196 = zext i8 %20 to i32 *)
cast v_conv_1196@uint32 v20@uint8;
(*   %21 = load i8, i8* %arrayidx6.1, align 1 *)
mov v21 a_1;
(*   %arrayidx8.1198 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %22 = load i8, i8* %arrayidx8.1198, align 1 *)
mov v22 b_2;
(*   %conv.i.1200 = zext i8 %22 to i32 *)
cast v_conv_i_1200@uint32 v22@uint8;
(*   %and.i.1201 = and i32 %conv.i.1200, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1201 v_conv_i_1200 (0x1)@uint32;
(*   %conv1.i.1202 = zext i8 %21 to i32 *)
cast v_conv1_i_1202@uint32 v21@uint8;
(*   %mul.i.1203 = mul nsw i32 %and.i.1201, %conv1.i.1202 *)
mul v_mul_i_1203 v_and_i_1201 v_conv1_i_1202;
(*   %conv3.i.1204 = trunc i32 %mul.i.1203 to i8 *)
split tmp_v_mul_i_1203 v_conv3_i_1204 v_mul_i_1203 8;
vpc v_conv3_i_1204@uint8 v_conv3_i_1204@uint32;
(*   %conv4.i.1205 = zext i8 %22 to i32 *)
cast v_conv4_i_1205@uint32 v22@uint8;
(*   %shr.i.1206 = ashr i32 %conv4.i.1205, 1 *)
(* You may need to modify here *)
split v_shr_i_1206 tmp_to_be_used v_conv4_i_1205 1;
(*   %conv5.i.1207 = trunc i32 %shr.i.1206 to i8 *)
split tmp_v_shr_i_1206 v_conv5_i_1207 v_shr_i_1206 8;
vpc v_conv5_i_1207@uint8 v_conv5_i_1207@uint32;
(*   %conv6.i.1208 = zext i8 %21 to i32 *)
cast v_conv6_i_1208@uint32 v21@uint8;
(*   %shl.i.1209 = shl i32 %conv6.i.1208, 1 *)
shls discard_56 v_shl_i_1209 v_conv6_i_1208 1;
(*   %conv7.i.1210 = trunc i32 %shl.i.1209 to i8 *)
split tmp_v_shl_i_1209 v_conv7_i_1210 v_shl_i_1209 8;
vpc v_conv7_i_1210@uint8 v_conv7_i_1210@uint32;
(*   %conv.i.1.1211 = zext i8 %conv5.i.1207 to i32 *)
cast v_conv_i_1_1211@uint32 v_conv5_i_1207@uint8;
(*   %and.i.1.1212 = and i32 %conv.i.1.1211, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_1212 v_conv_i_1_1211 (0x1)@uint32;
(*   %conv1.i.1.1213 = zext i8 %conv7.i.1210 to i32 *)
cast v_conv1_i_1_1213@uint32 v_conv7_i_1210@uint8;
(*   %mul.i.1.1214 = mul nsw i32 %and.i.1.1212, %conv1.i.1.1213 *)
mul v_mul_i_1_1214 v_and_i_1_1212 v_conv1_i_1_1213;
(*   %conv2.i.1.1215 = zext i8 %conv3.i.1204 to i32 *)
cast v_conv2_i_1_1215@uint32 v_conv3_i_1204@uint8;
(*   %xor.i.1.1216 = xor i32 %conv2.i.1.1215, %mul.i.1.1214 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_1216 v_conv2_i_1_1215 v_mul_i_1_1214;
(*   %conv3.i.1.1217 = trunc i32 %xor.i.1.1216 to i8 *)
split tmp_v_xor_i_1_1216 v_conv3_i_1_1217 v_xor_i_1_1216 8;
vpc v_conv3_i_1_1217@uint8 v_conv3_i_1_1217@uint32;
(*   %conv4.i.1.1218 = zext i8 %conv5.i.1207 to i32 *)
cast v_conv4_i_1_1218@uint32 v_conv5_i_1207@uint8;
(*   %shr.i.1.1219 = ashr i32 %conv4.i.1.1218, 1 *)
(* You may need to modify here *)
split v_shr_i_1_1219 tmp_to_be_used v_conv4_i_1_1218 1;
(*   %conv5.i.1.1220 = trunc i32 %shr.i.1.1219 to i8 *)
split tmp_v_shr_i_1_1219 v_conv5_i_1_1220 v_shr_i_1_1219 8;
vpc v_conv5_i_1_1220@uint8 v_conv5_i_1_1220@uint32;
(*   %conv6.i.1.1221 = zext i8 %conv7.i.1210 to i32 *)
cast v_conv6_i_1_1221@uint32 v_conv7_i_1210@uint8;
(*   %shl.i.1.1222 = shl i32 %conv6.i.1.1221, 1 *)
shls discard_57 v_shl_i_1_1222 v_conv6_i_1_1221 1;
(*   %conv7.i.1.1223 = trunc i32 %shl.i.1.1222 to i8 *)
split tmp_v_shl_i_1_1222 v_conv7_i_1_1223 v_shl_i_1_1222 8;
vpc v_conv7_i_1_1223@uint8 v_conv7_i_1_1223@uint32;
(*   %conv.i.2.1224 = zext i8 %conv5.i.1.1220 to i32 *)
cast v_conv_i_2_1224@uint32 v_conv5_i_1_1220@uint8;
(*   %and.i.2.1225 = and i32 %conv.i.2.1224, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_1225 v_conv_i_2_1224 (0x1)@uint32;
(*   %conv1.i.2.1226 = zext i8 %conv7.i.1.1223 to i32 *)
cast v_conv1_i_2_1226@uint32 v_conv7_i_1_1223@uint8;
(*   %mul.i.2.1227 = mul nsw i32 %and.i.2.1225, %conv1.i.2.1226 *)
mul v_mul_i_2_1227 v_and_i_2_1225 v_conv1_i_2_1226;
(*   %conv2.i.2.1228 = zext i8 %conv3.i.1.1217 to i32 *)
cast v_conv2_i_2_1228@uint32 v_conv3_i_1_1217@uint8;
(*   %xor.i.2.1229 = xor i32 %conv2.i.2.1228, %mul.i.2.1227 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_1229 v_conv2_i_2_1228 v_mul_i_2_1227;
(*   %conv3.i.2.1230 = trunc i32 %xor.i.2.1229 to i8 *)
split tmp_v_xor_i_2_1229 v_conv3_i_2_1230 v_xor_i_2_1229 8;
vpc v_conv3_i_2_1230@uint8 v_conv3_i_2_1230@uint32;
(*   %conv4.i.2.1231 = zext i8 %conv5.i.1.1220 to i32 *)
cast v_conv4_i_2_1231@uint32 v_conv5_i_1_1220@uint8;
(*   %shr.i.2.1232 = ashr i32 %conv4.i.2.1231, 1 *)
(* You may need to modify here *)
split v_shr_i_2_1232 tmp_to_be_used v_conv4_i_2_1231 1;
(*   %conv5.i.2.1233 = trunc i32 %shr.i.2.1232 to i8 *)
split tmp_v_shr_i_2_1232 v_conv5_i_2_1233 v_shr_i_2_1232 8;
vpc v_conv5_i_2_1233@uint8 v_conv5_i_2_1233@uint32;
(*   %conv6.i.2.1234 = zext i8 %conv7.i.1.1223 to i32 *)
cast v_conv6_i_2_1234@uint32 v_conv7_i_1_1223@uint8;
(*   %shl.i.2.1235 = shl i32 %conv6.i.2.1234, 1 *)
shls discard_58 v_shl_i_2_1235 v_conv6_i_2_1234 1;
(*   %conv7.i.2.1236 = trunc i32 %shl.i.2.1235 to i8 *)
split tmp_v_shl_i_2_1235 v_conv7_i_2_1236 v_shl_i_2_1235 8;
vpc v_conv7_i_2_1236@uint8 v_conv7_i_2_1236@uint32;
(*   %conv.i.3.1237 = zext i8 %conv5.i.2.1233 to i32 *)
cast v_conv_i_3_1237@uint32 v_conv5_i_2_1233@uint8;
(*   %and.i.3.1238 = and i32 %conv.i.3.1237, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_1238 v_conv_i_3_1237 (0x1)@uint32;
(*   %conv1.i.3.1239 = zext i8 %conv7.i.2.1236 to i32 *)
cast v_conv1_i_3_1239@uint32 v_conv7_i_2_1236@uint8;
(*   %mul.i.3.1240 = mul nsw i32 %and.i.3.1238, %conv1.i.3.1239 *)
mul v_mul_i_3_1240 v_and_i_3_1238 v_conv1_i_3_1239;
(*   %conv2.i.3.1241 = zext i8 %conv3.i.2.1230 to i32 *)
cast v_conv2_i_3_1241@uint32 v_conv3_i_2_1230@uint8;
(*   %xor.i.3.1242 = xor i32 %conv2.i.3.1241, %mul.i.3.1240 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_1242 v_conv2_i_3_1241 v_mul_i_3_1240;
(*   %conv3.i.3.1243 = trunc i32 %xor.i.3.1242 to i8 *)
split tmp_v_xor_i_3_1242 v_conv3_i_3_1243 v_xor_i_3_1242 8;
vpc v_conv3_i_3_1243@uint8 v_conv3_i_3_1243@uint32;
(*   %conv4.i.3.1244 = zext i8 %conv5.i.2.1233 to i32 *)
cast v_conv4_i_3_1244@uint32 v_conv5_i_2_1233@uint8;
(*   %shr.i.3.1245 = ashr i32 %conv4.i.3.1244, 1 *)
(* You may need to modify here *)
split v_shr_i_3_1245 tmp_to_be_used v_conv4_i_3_1244 1;
(*   %conv5.i.3.1246 = trunc i32 %shr.i.3.1245 to i8 *)
split tmp_v_shr_i_3_1245 v_conv5_i_3_1246 v_shr_i_3_1245 8;
vpc v_conv5_i_3_1246@uint8 v_conv5_i_3_1246@uint32;
(*   %conv6.i.3.1247 = zext i8 %conv7.i.2.1236 to i32 *)
cast v_conv6_i_3_1247@uint32 v_conv7_i_2_1236@uint8;
(*   %shl.i.3.1248 = shl i32 %conv6.i.3.1247, 1 *)
shls discard_59 v_shl_i_3_1248 v_conv6_i_3_1247 1;
(*   %conv7.i.3.1249 = trunc i32 %shl.i.3.1248 to i8 *)
split tmp_v_shl_i_3_1248 v_conv7_i_3_1249 v_shl_i_3_1248 8;
vpc v_conv7_i_3_1249@uint8 v_conv7_i_3_1249@uint32;
(*   %conv.i.4.1250 = zext i8 %conv5.i.3.1246 to i32 *)
cast v_conv_i_4_1250@uint32 v_conv5_i_3_1246@uint8;
(*   %and.i.4.1251 = and i32 %conv.i.4.1250, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_1251 v_conv_i_4_1250 (0x1)@uint32;
(*   %conv1.i.4.1252 = zext i8 %conv7.i.3.1249 to i32 *)
cast v_conv1_i_4_1252@uint32 v_conv7_i_3_1249@uint8;
(*   %mul.i.4.1253 = mul nsw i32 %and.i.4.1251, %conv1.i.4.1252 *)
mul v_mul_i_4_1253 v_and_i_4_1251 v_conv1_i_4_1252;
(*   %conv2.i.4.1254 = zext i8 %conv3.i.3.1243 to i32 *)
cast v_conv2_i_4_1254@uint32 v_conv3_i_3_1243@uint8;
(*   %xor.i.4.1255 = xor i32 %conv2.i.4.1254, %mul.i.4.1253 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_1255 v_conv2_i_4_1254 v_mul_i_4_1253;
(*   %conv3.i.4.1256 = trunc i32 %xor.i.4.1255 to i8 *)
split tmp_v_xor_i_4_1255 v_conv3_i_4_1256 v_xor_i_4_1255 8;
vpc v_conv3_i_4_1256@uint8 v_conv3_i_4_1256@uint32;
(*   %conv4.i.4.1257 = zext i8 %conv5.i.3.1246 to i32 *)
cast v_conv4_i_4_1257@uint32 v_conv5_i_3_1246@uint8;
(*   %shr.i.4.1258 = ashr i32 %conv4.i.4.1257, 1 *)
(* You may need to modify here *)
split v_shr_i_4_1258 tmp_to_be_used v_conv4_i_4_1257 1;
(*   %conv5.i.4.1259 = trunc i32 %shr.i.4.1258 to i8 *)
split tmp_v_shr_i_4_1258 v_conv5_i_4_1259 v_shr_i_4_1258 8;
vpc v_conv5_i_4_1259@uint8 v_conv5_i_4_1259@uint32;
(*   %conv6.i.4.1260 = zext i8 %conv7.i.3.1249 to i32 *)
cast v_conv6_i_4_1260@uint32 v_conv7_i_3_1249@uint8;
(*   %shl.i.4.1261 = shl i32 %conv6.i.4.1260, 1 *)
shls discard_60 v_shl_i_4_1261 v_conv6_i_4_1260 1;
(*   %conv7.i.4.1262 = trunc i32 %shl.i.4.1261 to i8 *)
split tmp_v_shl_i_4_1261 v_conv7_i_4_1262 v_shl_i_4_1261 8;
vpc v_conv7_i_4_1262@uint8 v_conv7_i_4_1262@uint32;
(*   %conv.i.5.1263 = zext i8 %conv5.i.4.1259 to i32 *)
cast v_conv_i_5_1263@uint32 v_conv5_i_4_1259@uint8;
(*   %and.i.5.1264 = and i32 %conv.i.5.1263, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_1264 v_conv_i_5_1263 (0x1)@uint32;
(*   %conv1.i.5.1265 = zext i8 %conv7.i.4.1262 to i32 *)
cast v_conv1_i_5_1265@uint32 v_conv7_i_4_1262@uint8;
(*   %mul.i.5.1266 = mul nsw i32 %and.i.5.1264, %conv1.i.5.1265 *)
mul v_mul_i_5_1266 v_and_i_5_1264 v_conv1_i_5_1265;
(*   %conv2.i.5.1267 = zext i8 %conv3.i.4.1256 to i32 *)
cast v_conv2_i_5_1267@uint32 v_conv3_i_4_1256@uint8;
(*   %xor.i.5.1268 = xor i32 %conv2.i.5.1267, %mul.i.5.1266 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_1268 v_conv2_i_5_1267 v_mul_i_5_1266;
(*   %conv3.i.5.1269 = trunc i32 %xor.i.5.1268 to i8 *)
split tmp_v_xor_i_5_1268 v_conv3_i_5_1269 v_xor_i_5_1268 8;
vpc v_conv3_i_5_1269@uint8 v_conv3_i_5_1269@uint32;
(*   %conv4.i.5.1270 = zext i8 %conv5.i.4.1259 to i32 *)
cast v_conv4_i_5_1270@uint32 v_conv5_i_4_1259@uint8;
(*   %shr.i.5.1271 = ashr i32 %conv4.i.5.1270, 1 *)
(* You may need to modify here *)
split v_shr_i_5_1271 tmp_to_be_used v_conv4_i_5_1270 1;
(*   %conv5.i.5.1272 = trunc i32 %shr.i.5.1271 to i8 *)
split tmp_v_shr_i_5_1271 v_conv5_i_5_1272 v_shr_i_5_1271 8;
vpc v_conv5_i_5_1272@uint8 v_conv5_i_5_1272@uint32;
(*   %conv6.i.5.1273 = zext i8 %conv7.i.4.1262 to i32 *)
cast v_conv6_i_5_1273@uint32 v_conv7_i_4_1262@uint8;
(*   %shl.i.5.1274 = shl i32 %conv6.i.5.1273, 1 *)
shls discard_61 v_shl_i_5_1274 v_conv6_i_5_1273 1;
(*   %conv7.i.5.1275 = trunc i32 %shl.i.5.1274 to i8 *)
split tmp_v_shl_i_5_1274 v_conv7_i_5_1275 v_shl_i_5_1274 8;
vpc v_conv7_i_5_1275@uint8 v_conv7_i_5_1275@uint32;
(*   %conv.i.6.1276 = zext i8 %conv5.i.5.1272 to i32 *)
cast v_conv_i_6_1276@uint32 v_conv5_i_5_1272@uint8;
(*   %and.i.6.1277 = and i32 %conv.i.6.1276, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_1277 v_conv_i_6_1276 (0x1)@uint32;
(*   %conv1.i.6.1278 = zext i8 %conv7.i.5.1275 to i32 *)
cast v_conv1_i_6_1278@uint32 v_conv7_i_5_1275@uint8;
(*   %mul.i.6.1279 = mul nsw i32 %and.i.6.1277, %conv1.i.6.1278 *)
mul v_mul_i_6_1279 v_and_i_6_1277 v_conv1_i_6_1278;
(*   %conv2.i.6.1280 = zext i8 %conv3.i.5.1269 to i32 *)
cast v_conv2_i_6_1280@uint32 v_conv3_i_5_1269@uint8;
(*   %xor.i.6.1281 = xor i32 %conv2.i.6.1280, %mul.i.6.1279 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_1281 v_conv2_i_6_1280 v_mul_i_6_1279;
(*   %conv3.i.6.1282 = trunc i32 %xor.i.6.1281 to i8 *)
split tmp_v_xor_i_6_1281 v_conv3_i_6_1282 v_xor_i_6_1281 8;
vpc v_conv3_i_6_1282@uint8 v_conv3_i_6_1282@uint32;
(*   %conv4.i.6.1283 = zext i8 %conv5.i.5.1272 to i32 *)
cast v_conv4_i_6_1283@uint32 v_conv5_i_5_1272@uint8;
(*   %shr.i.6.1284 = ashr i32 %conv4.i.6.1283, 1 *)
(* You may need to modify here *)
split v_shr_i_6_1284 tmp_to_be_used v_conv4_i_6_1283 1;
(*   %conv5.i.6.1285 = trunc i32 %shr.i.6.1284 to i8 *)
split tmp_v_shr_i_6_1284 v_conv5_i_6_1285 v_shr_i_6_1284 8;
vpc v_conv5_i_6_1285@uint8 v_conv5_i_6_1285@uint32;
(*   %conv6.i.6.1286 = zext i8 %conv7.i.5.1275 to i32 *)
cast v_conv6_i_6_1286@uint32 v_conv7_i_5_1275@uint8;
(*   %shl.i.6.1287 = shl i32 %conv6.i.6.1286, 1 *)
shls discard_62 v_shl_i_6_1287 v_conv6_i_6_1286 1;
(*   %conv7.i.6.1288 = trunc i32 %shl.i.6.1287 to i8 *)
split tmp_v_shl_i_6_1287 v_conv7_i_6_1288 v_shl_i_6_1287 8;
vpc v_conv7_i_6_1288@uint8 v_conv7_i_6_1288@uint32;
(*   %conv.i.7.1289 = zext i8 %conv5.i.6.1285 to i32 *)
cast v_conv_i_7_1289@uint32 v_conv5_i_6_1285@uint8;
(*   %and.i.7.1290 = and i32 %conv.i.7.1289, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_1290 v_conv_i_7_1289 (0x1)@uint32;
(*   %conv1.i.7.1291 = zext i8 %conv7.i.6.1288 to i32 *)
cast v_conv1_i_7_1291@uint32 v_conv7_i_6_1288@uint8;
(*   %mul.i.7.1292 = mul nsw i32 %and.i.7.1290, %conv1.i.7.1291 *)
mul v_mul_i_7_1292 v_and_i_7_1290 v_conv1_i_7_1291;
(*   %conv2.i.7.1293 = zext i8 %conv3.i.6.1282 to i32 *)
cast v_conv2_i_7_1293@uint32 v_conv3_i_6_1282@uint8;
(*   %xor.i.7.1294 = xor i32 %conv2.i.7.1293, %mul.i.7.1292 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_1294 v_conv2_i_7_1293 v_mul_i_7_1292;
(*   %conv3.i.7.1295 = trunc i32 %xor.i.7.1294 to i8 *)
split tmp_v_xor_i_7_1294 v_conv3_i_7_1295 v_xor_i_7_1294 8;
vpc v_conv3_i_7_1295@uint8 v_conv3_i_7_1295@uint32;
(*   %conv9.1298 = zext i8 %conv3.i.7.1295 to i32 *)
cast v_conv9_1298@uint32 v_conv3_i_7_1295@uint8;
(*   %xor.1299 = xor i32 %conv.1196, %conv9.1298 *)
(* You may need to modify here *)
xor uint32 v_xor_1299 v_conv_1196 v_conv9_1298;
(*   %arrayidx11.1301 = getelementptr inbounds i8, i8* %a, i64 2 *)
(*   %23 = load i8, i8* %arrayidx11.1301, align 1 *)
mov v23 a_2;
(*   %24 = load i8, i8* %arrayidx13.1, align 1 *)
mov v24 b_1;
(*   %conv.i71.1303 = zext i8 %24 to i32 *)
cast v_conv_i71_1303@uint32 v24@uint8;
(*   %and.i72.1304 = and i32 %conv.i71.1303, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_1304 v_conv_i71_1303 (0x1)@uint32;
(*   %conv1.i73.1305 = zext i8 %23 to i32 *)
cast v_conv1_i73_1305@uint32 v23@uint8;
(*   %mul.i74.1306 = mul nsw i32 %and.i72.1304, %conv1.i73.1305 *)
mul v_mul_i74_1306 v_and_i72_1304 v_conv1_i73_1305;
(*   %conv3.i77.1307 = trunc i32 %mul.i74.1306 to i8 *)
split tmp_v_mul_i74_1306 v_conv3_i77_1307 v_mul_i74_1306 8;
vpc v_conv3_i77_1307@uint8 v_conv3_i77_1307@uint32;
(*   %conv4.i78.1308 = zext i8 %24 to i32 *)
cast v_conv4_i78_1308@uint32 v24@uint8;
(*   %shr.i79.1309 = ashr i32 %conv4.i78.1308, 1 *)
(* You may need to modify here *)
split v_shr_i79_1309 tmp_to_be_used v_conv4_i78_1308 1;
(*   %conv5.i80.1310 = trunc i32 %shr.i79.1309 to i8 *)
split tmp_v_shr_i79_1309 v_conv5_i80_1310 v_shr_i79_1309 8;
vpc v_conv5_i80_1310@uint8 v_conv5_i80_1310@uint32;
(*   %conv6.i81.1311 = zext i8 %23 to i32 *)
cast v_conv6_i81_1311@uint32 v23@uint8;
(*   %shl.i82.1312 = shl i32 %conv6.i81.1311, 1 *)
shls discard_63 v_shl_i82_1312 v_conv6_i81_1311 1;
(*   %conv7.i83.1313 = trunc i32 %shl.i82.1312 to i8 *)
split tmp_v_shl_i82_1312 v_conv7_i83_1313 v_shl_i82_1312 8;
vpc v_conv7_i83_1313@uint8 v_conv7_i83_1313@uint32;
(*   %conv.i71.1.1314 = zext i8 %conv5.i80.1310 to i32 *)
cast v_conv_i71_1_1314@uint32 v_conv5_i80_1310@uint8;
(*   %and.i72.1.1315 = and i32 %conv.i71.1.1314, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_1_1315 v_conv_i71_1_1314 (0x1)@uint32;
(*   %conv1.i73.1.1316 = zext i8 %conv7.i83.1313 to i32 *)
cast v_conv1_i73_1_1316@uint32 v_conv7_i83_1313@uint8;
(*   %mul.i74.1.1317 = mul nsw i32 %and.i72.1.1315, %conv1.i73.1.1316 *)
mul v_mul_i74_1_1317 v_and_i72_1_1315 v_conv1_i73_1_1316;
(*   %conv2.i75.1.1318 = zext i8 %conv3.i77.1307 to i32 *)
cast v_conv2_i75_1_1318@uint32 v_conv3_i77_1307@uint8;
(*   %xor.i76.1.1319 = xor i32 %conv2.i75.1.1318, %mul.i74.1.1317 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_1_1319 v_conv2_i75_1_1318 v_mul_i74_1_1317;
(*   %conv3.i77.1.1320 = trunc i32 %xor.i76.1.1319 to i8 *)
split tmp_v_xor_i76_1_1319 v_conv3_i77_1_1320 v_xor_i76_1_1319 8;
vpc v_conv3_i77_1_1320@uint8 v_conv3_i77_1_1320@uint32;
(*   %conv4.i78.1.1321 = zext i8 %conv5.i80.1310 to i32 *)
cast v_conv4_i78_1_1321@uint32 v_conv5_i80_1310@uint8;
(*   %shr.i79.1.1322 = ashr i32 %conv4.i78.1.1321, 1 *)
(* You may need to modify here *)
split v_shr_i79_1_1322 tmp_to_be_used v_conv4_i78_1_1321 1;
(*   %conv5.i80.1.1323 = trunc i32 %shr.i79.1.1322 to i8 *)
split tmp_v_shr_i79_1_1322 v_conv5_i80_1_1323 v_shr_i79_1_1322 8;
vpc v_conv5_i80_1_1323@uint8 v_conv5_i80_1_1323@uint32;
(*   %conv6.i81.1.1324 = zext i8 %conv7.i83.1313 to i32 *)
cast v_conv6_i81_1_1324@uint32 v_conv7_i83_1313@uint8;
(*   %shl.i82.1.1325 = shl i32 %conv6.i81.1.1324, 1 *)
shls discard_64 v_shl_i82_1_1325 v_conv6_i81_1_1324 1;
(*   %conv7.i83.1.1326 = trunc i32 %shl.i82.1.1325 to i8 *)
split tmp_v_shl_i82_1_1325 v_conv7_i83_1_1326 v_shl_i82_1_1325 8;
vpc v_conv7_i83_1_1326@uint8 v_conv7_i83_1_1326@uint32;
(*   %conv.i71.2.1327 = zext i8 %conv5.i80.1.1323 to i32 *)
cast v_conv_i71_2_1327@uint32 v_conv5_i80_1_1323@uint8;
(*   %and.i72.2.1328 = and i32 %conv.i71.2.1327, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_2_1328 v_conv_i71_2_1327 (0x1)@uint32;
(*   %conv1.i73.2.1329 = zext i8 %conv7.i83.1.1326 to i32 *)
cast v_conv1_i73_2_1329@uint32 v_conv7_i83_1_1326@uint8;
(*   %mul.i74.2.1330 = mul nsw i32 %and.i72.2.1328, %conv1.i73.2.1329 *)
mul v_mul_i74_2_1330 v_and_i72_2_1328 v_conv1_i73_2_1329;
(*   %conv2.i75.2.1331 = zext i8 %conv3.i77.1.1320 to i32 *)
cast v_conv2_i75_2_1331@uint32 v_conv3_i77_1_1320@uint8;
(*   %xor.i76.2.1332 = xor i32 %conv2.i75.2.1331, %mul.i74.2.1330 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_2_1332 v_conv2_i75_2_1331 v_mul_i74_2_1330;
(*   %conv3.i77.2.1333 = trunc i32 %xor.i76.2.1332 to i8 *)
split tmp_v_xor_i76_2_1332 v_conv3_i77_2_1333 v_xor_i76_2_1332 8;
vpc v_conv3_i77_2_1333@uint8 v_conv3_i77_2_1333@uint32;
(*   %conv4.i78.2.1334 = zext i8 %conv5.i80.1.1323 to i32 *)
cast v_conv4_i78_2_1334@uint32 v_conv5_i80_1_1323@uint8;
(*   %shr.i79.2.1335 = ashr i32 %conv4.i78.2.1334, 1 *)
(* You may need to modify here *)
split v_shr_i79_2_1335 tmp_to_be_used v_conv4_i78_2_1334 1;
(*   %conv5.i80.2.1336 = trunc i32 %shr.i79.2.1335 to i8 *)
split tmp_v_shr_i79_2_1335 v_conv5_i80_2_1336 v_shr_i79_2_1335 8;
vpc v_conv5_i80_2_1336@uint8 v_conv5_i80_2_1336@uint32;
(*   %conv6.i81.2.1337 = zext i8 %conv7.i83.1.1326 to i32 *)
cast v_conv6_i81_2_1337@uint32 v_conv7_i83_1_1326@uint8;
(*   %shl.i82.2.1338 = shl i32 %conv6.i81.2.1337, 1 *)
shls discard_65 v_shl_i82_2_1338 v_conv6_i81_2_1337 1;
(*   %conv7.i83.2.1339 = trunc i32 %shl.i82.2.1338 to i8 *)
split tmp_v_shl_i82_2_1338 v_conv7_i83_2_1339 v_shl_i82_2_1338 8;
vpc v_conv7_i83_2_1339@uint8 v_conv7_i83_2_1339@uint32;
(*   %conv.i71.3.1340 = zext i8 %conv5.i80.2.1336 to i32 *)
cast v_conv_i71_3_1340@uint32 v_conv5_i80_2_1336@uint8;
(*   %and.i72.3.1341 = and i32 %conv.i71.3.1340, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_3_1341 v_conv_i71_3_1340 (0x1)@uint32;
(*   %conv1.i73.3.1342 = zext i8 %conv7.i83.2.1339 to i32 *)
cast v_conv1_i73_3_1342@uint32 v_conv7_i83_2_1339@uint8;
(*   %mul.i74.3.1343 = mul nsw i32 %and.i72.3.1341, %conv1.i73.3.1342 *)
mul v_mul_i74_3_1343 v_and_i72_3_1341 v_conv1_i73_3_1342;
(*   %conv2.i75.3.1344 = zext i8 %conv3.i77.2.1333 to i32 *)
cast v_conv2_i75_3_1344@uint32 v_conv3_i77_2_1333@uint8;
(*   %xor.i76.3.1345 = xor i32 %conv2.i75.3.1344, %mul.i74.3.1343 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_3_1345 v_conv2_i75_3_1344 v_mul_i74_3_1343;
(*   %conv3.i77.3.1346 = trunc i32 %xor.i76.3.1345 to i8 *)
split tmp_v_xor_i76_3_1345 v_conv3_i77_3_1346 v_xor_i76_3_1345 8;
vpc v_conv3_i77_3_1346@uint8 v_conv3_i77_3_1346@uint32;
(*   %conv4.i78.3.1347 = zext i8 %conv5.i80.2.1336 to i32 *)
cast v_conv4_i78_3_1347@uint32 v_conv5_i80_2_1336@uint8;
(*   %shr.i79.3.1348 = ashr i32 %conv4.i78.3.1347, 1 *)
(* You may need to modify here *)
split v_shr_i79_3_1348 tmp_to_be_used v_conv4_i78_3_1347 1;
(*   %conv5.i80.3.1349 = trunc i32 %shr.i79.3.1348 to i8 *)
split tmp_v_shr_i79_3_1348 v_conv5_i80_3_1349 v_shr_i79_3_1348 8;
vpc v_conv5_i80_3_1349@uint8 v_conv5_i80_3_1349@uint32;
(*   %conv6.i81.3.1350 = zext i8 %conv7.i83.2.1339 to i32 *)
cast v_conv6_i81_3_1350@uint32 v_conv7_i83_2_1339@uint8;
(*   %shl.i82.3.1351 = shl i32 %conv6.i81.3.1350, 1 *)
shls discard_66 v_shl_i82_3_1351 v_conv6_i81_3_1350 1;
(*   %conv7.i83.3.1352 = trunc i32 %shl.i82.3.1351 to i8 *)
split tmp_v_shl_i82_3_1351 v_conv7_i83_3_1352 v_shl_i82_3_1351 8;
vpc v_conv7_i83_3_1352@uint8 v_conv7_i83_3_1352@uint32;
(*   %conv.i71.4.1353 = zext i8 %conv5.i80.3.1349 to i32 *)
cast v_conv_i71_4_1353@uint32 v_conv5_i80_3_1349@uint8;
(*   %and.i72.4.1354 = and i32 %conv.i71.4.1353, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_4_1354 v_conv_i71_4_1353 (0x1)@uint32;
(*   %conv1.i73.4.1355 = zext i8 %conv7.i83.3.1352 to i32 *)
cast v_conv1_i73_4_1355@uint32 v_conv7_i83_3_1352@uint8;
(*   %mul.i74.4.1356 = mul nsw i32 %and.i72.4.1354, %conv1.i73.4.1355 *)
mul v_mul_i74_4_1356 v_and_i72_4_1354 v_conv1_i73_4_1355;
(*   %conv2.i75.4.1357 = zext i8 %conv3.i77.3.1346 to i32 *)
cast v_conv2_i75_4_1357@uint32 v_conv3_i77_3_1346@uint8;
(*   %xor.i76.4.1358 = xor i32 %conv2.i75.4.1357, %mul.i74.4.1356 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_4_1358 v_conv2_i75_4_1357 v_mul_i74_4_1356;
(*   %conv3.i77.4.1359 = trunc i32 %xor.i76.4.1358 to i8 *)
split tmp_v_xor_i76_4_1358 v_conv3_i77_4_1359 v_xor_i76_4_1358 8;
vpc v_conv3_i77_4_1359@uint8 v_conv3_i77_4_1359@uint32;
(*   %conv4.i78.4.1360 = zext i8 %conv5.i80.3.1349 to i32 *)
cast v_conv4_i78_4_1360@uint32 v_conv5_i80_3_1349@uint8;
(*   %shr.i79.4.1361 = ashr i32 %conv4.i78.4.1360, 1 *)
(* You may need to modify here *)
split v_shr_i79_4_1361 tmp_to_be_used v_conv4_i78_4_1360 1;
(*   %conv5.i80.4.1362 = trunc i32 %shr.i79.4.1361 to i8 *)
split tmp_v_shr_i79_4_1361 v_conv5_i80_4_1362 v_shr_i79_4_1361 8;
vpc v_conv5_i80_4_1362@uint8 v_conv5_i80_4_1362@uint32;
(*   %conv6.i81.4.1363 = zext i8 %conv7.i83.3.1352 to i32 *)
cast v_conv6_i81_4_1363@uint32 v_conv7_i83_3_1352@uint8;
(*   %shl.i82.4.1364 = shl i32 %conv6.i81.4.1363, 1 *)
shls discard_67 v_shl_i82_4_1364 v_conv6_i81_4_1363 1;
(*   %conv7.i83.4.1365 = trunc i32 %shl.i82.4.1364 to i8 *)
split tmp_v_shl_i82_4_1364 v_conv7_i83_4_1365 v_shl_i82_4_1364 8;
vpc v_conv7_i83_4_1365@uint8 v_conv7_i83_4_1365@uint32;
(*   %conv.i71.5.1366 = zext i8 %conv5.i80.4.1362 to i32 *)
cast v_conv_i71_5_1366@uint32 v_conv5_i80_4_1362@uint8;
(*   %and.i72.5.1367 = and i32 %conv.i71.5.1366, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_5_1367 v_conv_i71_5_1366 (0x1)@uint32;
(*   %conv1.i73.5.1368 = zext i8 %conv7.i83.4.1365 to i32 *)
cast v_conv1_i73_5_1368@uint32 v_conv7_i83_4_1365@uint8;
(*   %mul.i74.5.1369 = mul nsw i32 %and.i72.5.1367, %conv1.i73.5.1368 *)
mul v_mul_i74_5_1369 v_and_i72_5_1367 v_conv1_i73_5_1368;
(*   %conv2.i75.5.1370 = zext i8 %conv3.i77.4.1359 to i32 *)
cast v_conv2_i75_5_1370@uint32 v_conv3_i77_4_1359@uint8;
(*   %xor.i76.5.1371 = xor i32 %conv2.i75.5.1370, %mul.i74.5.1369 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_5_1371 v_conv2_i75_5_1370 v_mul_i74_5_1369;
(*   %conv3.i77.5.1372 = trunc i32 %xor.i76.5.1371 to i8 *)
split tmp_v_xor_i76_5_1371 v_conv3_i77_5_1372 v_xor_i76_5_1371 8;
vpc v_conv3_i77_5_1372@uint8 v_conv3_i77_5_1372@uint32;
(*   %conv4.i78.5.1373 = zext i8 %conv5.i80.4.1362 to i32 *)
cast v_conv4_i78_5_1373@uint32 v_conv5_i80_4_1362@uint8;
(*   %shr.i79.5.1374 = ashr i32 %conv4.i78.5.1373, 1 *)
(* You may need to modify here *)
split v_shr_i79_5_1374 tmp_to_be_used v_conv4_i78_5_1373 1;
(*   %conv5.i80.5.1375 = trunc i32 %shr.i79.5.1374 to i8 *)
split tmp_v_shr_i79_5_1374 v_conv5_i80_5_1375 v_shr_i79_5_1374 8;
vpc v_conv5_i80_5_1375@uint8 v_conv5_i80_5_1375@uint32;
(*   %conv6.i81.5.1376 = zext i8 %conv7.i83.4.1365 to i32 *)
cast v_conv6_i81_5_1376@uint32 v_conv7_i83_4_1365@uint8;
(*   %shl.i82.5.1377 = shl i32 %conv6.i81.5.1376, 1 *)
shls discard_68 v_shl_i82_5_1377 v_conv6_i81_5_1376 1;
(*   %conv7.i83.5.1378 = trunc i32 %shl.i82.5.1377 to i8 *)
split tmp_v_shl_i82_5_1377 v_conv7_i83_5_1378 v_shl_i82_5_1377 8;
vpc v_conv7_i83_5_1378@uint8 v_conv7_i83_5_1378@uint32;
(*   %conv.i71.6.1379 = zext i8 %conv5.i80.5.1375 to i32 *)
cast v_conv_i71_6_1379@uint32 v_conv5_i80_5_1375@uint8;
(*   %and.i72.6.1380 = and i32 %conv.i71.6.1379, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_6_1380 v_conv_i71_6_1379 (0x1)@uint32;
(*   %conv1.i73.6.1381 = zext i8 %conv7.i83.5.1378 to i32 *)
cast v_conv1_i73_6_1381@uint32 v_conv7_i83_5_1378@uint8;
(*   %mul.i74.6.1382 = mul nsw i32 %and.i72.6.1380, %conv1.i73.6.1381 *)
mul v_mul_i74_6_1382 v_and_i72_6_1380 v_conv1_i73_6_1381;
(*   %conv2.i75.6.1383 = zext i8 %conv3.i77.5.1372 to i32 *)
cast v_conv2_i75_6_1383@uint32 v_conv3_i77_5_1372@uint8;
(*   %xor.i76.6.1384 = xor i32 %conv2.i75.6.1383, %mul.i74.6.1382 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_6_1384 v_conv2_i75_6_1383 v_mul_i74_6_1382;
(*   %conv3.i77.6.1385 = trunc i32 %xor.i76.6.1384 to i8 *)
split tmp_v_xor_i76_6_1384 v_conv3_i77_6_1385 v_xor_i76_6_1384 8;
vpc v_conv3_i77_6_1385@uint8 v_conv3_i77_6_1385@uint32;
(*   %conv4.i78.6.1386 = zext i8 %conv5.i80.5.1375 to i32 *)
cast v_conv4_i78_6_1386@uint32 v_conv5_i80_5_1375@uint8;
(*   %shr.i79.6.1387 = ashr i32 %conv4.i78.6.1386, 1 *)
(* You may need to modify here *)
split v_shr_i79_6_1387 tmp_to_be_used v_conv4_i78_6_1386 1;
(*   %conv5.i80.6.1388 = trunc i32 %shr.i79.6.1387 to i8 *)
split tmp_v_shr_i79_6_1387 v_conv5_i80_6_1388 v_shr_i79_6_1387 8;
vpc v_conv5_i80_6_1388@uint8 v_conv5_i80_6_1388@uint32;
(*   %conv6.i81.6.1389 = zext i8 %conv7.i83.5.1378 to i32 *)
cast v_conv6_i81_6_1389@uint32 v_conv7_i83_5_1378@uint8;
(*   %shl.i82.6.1390 = shl i32 %conv6.i81.6.1389, 1 *)
shls discard_69 v_shl_i82_6_1390 v_conv6_i81_6_1389 1;
(*   %conv7.i83.6.1391 = trunc i32 %shl.i82.6.1390 to i8 *)
split tmp_v_shl_i82_6_1390 v_conv7_i83_6_1391 v_shl_i82_6_1390 8;
vpc v_conv7_i83_6_1391@uint8 v_conv7_i83_6_1391@uint32;
(*   %conv.i71.7.1392 = zext i8 %conv5.i80.6.1388 to i32 *)
cast v_conv_i71_7_1392@uint32 v_conv5_i80_6_1388@uint8;
(*   %and.i72.7.1393 = and i32 %conv.i71.7.1392, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_7_1393 v_conv_i71_7_1392 (0x1)@uint32;
(*   %conv1.i73.7.1394 = zext i8 %conv7.i83.6.1391 to i32 *)
cast v_conv1_i73_7_1394@uint32 v_conv7_i83_6_1391@uint8;
(*   %mul.i74.7.1395 = mul nsw i32 %and.i72.7.1393, %conv1.i73.7.1394 *)
mul v_mul_i74_7_1395 v_and_i72_7_1393 v_conv1_i73_7_1394;
(*   %conv2.i75.7.1396 = zext i8 %conv3.i77.6.1385 to i32 *)
cast v_conv2_i75_7_1396@uint32 v_conv3_i77_6_1385@uint8;
(*   %xor.i76.7.1397 = xor i32 %conv2.i75.7.1396, %mul.i74.7.1395 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_7_1397 v_conv2_i75_7_1396 v_mul_i74_7_1395;
(*   %conv3.i77.7.1398 = trunc i32 %xor.i76.7.1397 to i8 *)
split tmp_v_xor_i76_7_1397 v_conv3_i77_7_1398 v_xor_i76_7_1397 8;
vpc v_conv3_i77_7_1398@uint8 v_conv3_i77_7_1398@uint32;
(*   %conv15.1401 = zext i8 %conv3.i77.7.1398 to i32 *)
cast v_conv15_1401@uint32 v_conv3_i77_7_1398@uint8;
(*   %xor16.1402 = xor i32 %xor.1299, %conv15.1401 *)
(* You may need to modify here *)
xor uint32 v_xor16_1402 v_xor_1299 v_conv15_1401;
(*   %conv17.1403 = trunc i32 %xor16.1402 to i8 *)
split tmp_v_xor16_1402 v_conv17_1403 v_xor16_1402 8;
vpc v_conv17_1403@uint8 v_conv17_1403@uint32;
(*   %arrayidx21.1407 = getelementptr inbounds i8, i8* %r, i64 11 *)
(*   store i8 %conv17.1403, i8* %arrayidx21.1407, align 1 *)
mov r_11 v_conv17_1403;
(*   %arrayidx.1.1 = getelementptr inbounds i8, i8* %r, i64 8 *)
(*   %25 = load i8, i8* %arrayidx.1.1, align 1 *)
mov v25 r_8;
(*   %conv.1.1 = zext i8 %25 to i32 *)
cast v_conv_1_1@uint32 v25@uint8;
(*   %26 = load i8, i8* %arrayidx6.1, align 1 *)
mov v26 a_1;
(*   %arrayidx8.1.1 = getelementptr inbounds i8, i8* %b, i64 3 *)
(*   %27 = load i8, i8* %arrayidx8.1.1, align 1 *)
mov v27 b_3;
(*   %conv.i.1127.1 = zext i8 %27 to i32 *)
cast v_conv_i_1127_1@uint32 v27@uint8;
(*   %and.i.1128.1 = and i32 %conv.i.1127.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1128_1 v_conv_i_1127_1 (0x1)@uint32;
(*   %conv1.i.1129.1 = zext i8 %26 to i32 *)
cast v_conv1_i_1129_1@uint32 v26@uint8;
(*   %mul.i.1130.1 = mul nsw i32 %and.i.1128.1, %conv1.i.1129.1 *)
mul v_mul_i_1130_1 v_and_i_1128_1 v_conv1_i_1129_1;
(*   %conv3.i.1131.1 = trunc i32 %mul.i.1130.1 to i8 *)
split tmp_v_mul_i_1130_1 v_conv3_i_1131_1 v_mul_i_1130_1 8;
vpc v_conv3_i_1131_1@uint8 v_conv3_i_1131_1@uint32;
(*   %conv4.i.1132.1 = zext i8 %27 to i32 *)
cast v_conv4_i_1132_1@uint32 v27@uint8;
(*   %shr.i.1133.1 = ashr i32 %conv4.i.1132.1, 1 *)
(* You may need to modify here *)
split v_shr_i_1133_1 tmp_to_be_used v_conv4_i_1132_1 1;
(*   %conv5.i.1134.1 = trunc i32 %shr.i.1133.1 to i8 *)
split tmp_v_shr_i_1133_1 v_conv5_i_1134_1 v_shr_i_1133_1 8;
vpc v_conv5_i_1134_1@uint8 v_conv5_i_1134_1@uint32;
(*   %conv6.i.1135.1 = zext i8 %26 to i32 *)
cast v_conv6_i_1135_1@uint32 v26@uint8;
(*   %shl.i.1136.1 = shl i32 %conv6.i.1135.1, 1 *)
shls discard_70 v_shl_i_1136_1 v_conv6_i_1135_1 1;
(*   %conv7.i.1137.1 = trunc i32 %shl.i.1136.1 to i8 *)
split tmp_v_shl_i_1136_1 v_conv7_i_1137_1 v_shl_i_1136_1 8;
vpc v_conv7_i_1137_1@uint8 v_conv7_i_1137_1@uint32;
(*   %conv.i.1.1.1 = zext i8 %conv5.i.1134.1 to i32 *)
cast v_conv_i_1_1_1@uint32 v_conv5_i_1134_1@uint8;
(*   %and.i.1.1.1 = and i32 %conv.i.1.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_1_1 v_conv_i_1_1_1 (0x1)@uint32;
(*   %conv1.i.1.1.1 = zext i8 %conv7.i.1137.1 to i32 *)
cast v_conv1_i_1_1_1@uint32 v_conv7_i_1137_1@uint8;
(*   %mul.i.1.1.1 = mul nsw i32 %and.i.1.1.1, %conv1.i.1.1.1 *)
mul v_mul_i_1_1_1 v_and_i_1_1_1 v_conv1_i_1_1_1;
(*   %conv2.i.1.1.1 = zext i8 %conv3.i.1131.1 to i32 *)
cast v_conv2_i_1_1_1@uint32 v_conv3_i_1131_1@uint8;
(*   %xor.i.1.1.1 = xor i32 %conv2.i.1.1.1, %mul.i.1.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_1_1 v_conv2_i_1_1_1 v_mul_i_1_1_1;
(*   %conv3.i.1.1.1 = trunc i32 %xor.i.1.1.1 to i8 *)
split tmp_v_xor_i_1_1_1 v_conv3_i_1_1_1 v_xor_i_1_1_1 8;
vpc v_conv3_i_1_1_1@uint8 v_conv3_i_1_1_1@uint32;
(*   %conv4.i.1.1.1 = zext i8 %conv5.i.1134.1 to i32 *)
cast v_conv4_i_1_1_1@uint32 v_conv5_i_1134_1@uint8;
(*   %shr.i.1.1.1 = ashr i32 %conv4.i.1.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_1_1_1 tmp_to_be_used v_conv4_i_1_1_1 1;
(*   %conv5.i.1.1.1 = trunc i32 %shr.i.1.1.1 to i8 *)
split tmp_v_shr_i_1_1_1 v_conv5_i_1_1_1 v_shr_i_1_1_1 8;
vpc v_conv5_i_1_1_1@uint8 v_conv5_i_1_1_1@uint32;
(*   %conv6.i.1.1.1 = zext i8 %conv7.i.1137.1 to i32 *)
cast v_conv6_i_1_1_1@uint32 v_conv7_i_1137_1@uint8;
(*   %shl.i.1.1.1 = shl i32 %conv6.i.1.1.1, 1 *)
shls discard_71 v_shl_i_1_1_1 v_conv6_i_1_1_1 1;
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
shls discard_72 v_shl_i_2_1_1 v_conv6_i_2_1_1 1;
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
shls discard_73 v_shl_i_3_1_1 v_conv6_i_3_1_1 1;
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
shls discard_74 v_shl_i_4_1_1 v_conv6_i_4_1_1 1;
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
shls discard_75 v_shl_i_5_1_1 v_conv6_i_5_1_1 1;
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
shls discard_76 v_shl_i_6_1_1 v_conv6_i_6_1_1 1;
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
(*   %28 = load i8, i8* %arrayidx11.1.1, align 1 *)
mov v28 a_3;
(*   %29 = load i8, i8* %arrayidx13.1, align 1 *)
mov v29 b_1;
(*   %conv.i71.1138.1 = zext i8 %29 to i32 *)
cast v_conv_i71_1138_1@uint32 v29@uint8;
(*   %and.i72.1139.1 = and i32 %conv.i71.1138.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_1139_1 v_conv_i71_1138_1 (0x1)@uint32;
(*   %conv1.i73.1140.1 = zext i8 %28 to i32 *)
cast v_conv1_i73_1140_1@uint32 v28@uint8;
(*   %mul.i74.1141.1 = mul nsw i32 %and.i72.1139.1, %conv1.i73.1140.1 *)
mul v_mul_i74_1141_1 v_and_i72_1139_1 v_conv1_i73_1140_1;
(*   %conv3.i77.1142.1 = trunc i32 %mul.i74.1141.1 to i8 *)
split tmp_v_mul_i74_1141_1 v_conv3_i77_1142_1 v_mul_i74_1141_1 8;
vpc v_conv3_i77_1142_1@uint8 v_conv3_i77_1142_1@uint32;
(*   %conv4.i78.1143.1 = zext i8 %29 to i32 *)
cast v_conv4_i78_1143_1@uint32 v29@uint8;
(*   %shr.i79.1144.1 = ashr i32 %conv4.i78.1143.1, 1 *)
(* You may need to modify here *)
split v_shr_i79_1144_1 tmp_to_be_used v_conv4_i78_1143_1 1;
(*   %conv5.i80.1145.1 = trunc i32 %shr.i79.1144.1 to i8 *)
split tmp_v_shr_i79_1144_1 v_conv5_i80_1145_1 v_shr_i79_1144_1 8;
vpc v_conv5_i80_1145_1@uint8 v_conv5_i80_1145_1@uint32;
(*   %conv6.i81.1146.1 = zext i8 %28 to i32 *)
cast v_conv6_i81_1146_1@uint32 v28@uint8;
(*   %shl.i82.1147.1 = shl i32 %conv6.i81.1146.1, 1 *)
shls discard_77 v_shl_i82_1147_1 v_conv6_i81_1146_1 1;
(*   %conv7.i83.1148.1 = trunc i32 %shl.i82.1147.1 to i8 *)
split tmp_v_shl_i82_1147_1 v_conv7_i83_1148_1 v_shl_i82_1147_1 8;
vpc v_conv7_i83_1148_1@uint8 v_conv7_i83_1148_1@uint32;
(*   %conv.i71.1.1.1 = zext i8 %conv5.i80.1145.1 to i32 *)
cast v_conv_i71_1_1_1@uint32 v_conv5_i80_1145_1@uint8;
(*   %and.i72.1.1.1 = and i32 %conv.i71.1.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_1_1_1 v_conv_i71_1_1_1 (0x1)@uint32;
(*   %conv1.i73.1.1.1 = zext i8 %conv7.i83.1148.1 to i32 *)
cast v_conv1_i73_1_1_1@uint32 v_conv7_i83_1148_1@uint8;
(*   %mul.i74.1.1.1 = mul nsw i32 %and.i72.1.1.1, %conv1.i73.1.1.1 *)
mul v_mul_i74_1_1_1 v_and_i72_1_1_1 v_conv1_i73_1_1_1;
(*   %conv2.i75.1.1.1 = zext i8 %conv3.i77.1142.1 to i32 *)
cast v_conv2_i75_1_1_1@uint32 v_conv3_i77_1142_1@uint8;
(*   %xor.i76.1.1.1 = xor i32 %conv2.i75.1.1.1, %mul.i74.1.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_1_1_1 v_conv2_i75_1_1_1 v_mul_i74_1_1_1;
(*   %conv3.i77.1.1.1 = trunc i32 %xor.i76.1.1.1 to i8 *)
split tmp_v_xor_i76_1_1_1 v_conv3_i77_1_1_1 v_xor_i76_1_1_1 8;
vpc v_conv3_i77_1_1_1@uint8 v_conv3_i77_1_1_1@uint32;
(*   %conv4.i78.1.1.1 = zext i8 %conv5.i80.1145.1 to i32 *)
cast v_conv4_i78_1_1_1@uint32 v_conv5_i80_1145_1@uint8;
(*   %shr.i79.1.1.1 = ashr i32 %conv4.i78.1.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i79_1_1_1 tmp_to_be_used v_conv4_i78_1_1_1 1;
(*   %conv5.i80.1.1.1 = trunc i32 %shr.i79.1.1.1 to i8 *)
split tmp_v_shr_i79_1_1_1 v_conv5_i80_1_1_1 v_shr_i79_1_1_1 8;
vpc v_conv5_i80_1_1_1@uint8 v_conv5_i80_1_1_1@uint32;
(*   %conv6.i81.1.1.1 = zext i8 %conv7.i83.1148.1 to i32 *)
cast v_conv6_i81_1_1_1@uint32 v_conv7_i83_1148_1@uint8;
(*   %shl.i82.1.1.1 = shl i32 %conv6.i81.1.1.1, 1 *)
shls discard_78 v_shl_i82_1_1_1 v_conv6_i81_1_1_1 1;
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
shls discard_79 v_shl_i82_2_1_1 v_conv6_i81_2_1_1 1;
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
shls discard_80 v_shl_i82_3_1_1 v_conv6_i81_3_1_1 1;
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
shls discard_81 v_shl_i82_4_1_1 v_conv6_i81_4_1_1 1;
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
shls discard_82 v_shl_i82_5_1_1 v_conv6_i81_5_1_1 1;
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
shls discard_83 v_shl_i82_6_1_1 v_conv6_i81_6_1_1 1;
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
(*   %arrayidx21.1.1 = getelementptr inbounds i8, i8* %r, i64 16 *)
(*   store i8 %conv17.1.1, i8* %arrayidx21.1.1, align 1 *)
mov r_16 v_conv17_1_1;
(*   %arrayidx.2.1 = getelementptr inbounds i8, i8* %r, i64 9 *)
(*   %30 = load i8, i8* %arrayidx.2.1, align 1 *)
mov v30 r_9;
(*   %conv.2.1 = zext i8 %30 to i32 *)
cast v_conv_2_1@uint32 v30@uint8;
(*   %31 = load i8, i8* %arrayidx6.1, align 1 *)
mov v31 a_1;
(*   %arrayidx8.2.1 = getelementptr inbounds i8, i8* %b, i64 4 *)
(*   %32 = load i8, i8* %arrayidx8.2.1, align 1 *)
mov v32 b_4;
(*   %conv.i.2149.1 = zext i8 %32 to i32 *)
cast v_conv_i_2149_1@uint32 v32@uint8;
(*   %and.i.2150.1 = and i32 %conv.i.2149.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2150_1 v_conv_i_2149_1 (0x1)@uint32;
(*   %conv1.i.2151.1 = zext i8 %31 to i32 *)
cast v_conv1_i_2151_1@uint32 v31@uint8;
(*   %mul.i.2152.1 = mul nsw i32 %and.i.2150.1, %conv1.i.2151.1 *)
mul v_mul_i_2152_1 v_and_i_2150_1 v_conv1_i_2151_1;
(*   %conv3.i.2153.1 = trunc i32 %mul.i.2152.1 to i8 *)
split tmp_v_mul_i_2152_1 v_conv3_i_2153_1 v_mul_i_2152_1 8;
vpc v_conv3_i_2153_1@uint8 v_conv3_i_2153_1@uint32;
(*   %conv4.i.2154.1 = zext i8 %32 to i32 *)
cast v_conv4_i_2154_1@uint32 v32@uint8;
(*   %shr.i.2155.1 = ashr i32 %conv4.i.2154.1, 1 *)
(* You may need to modify here *)
split v_shr_i_2155_1 tmp_to_be_used v_conv4_i_2154_1 1;
(*   %conv5.i.2156.1 = trunc i32 %shr.i.2155.1 to i8 *)
split tmp_v_shr_i_2155_1 v_conv5_i_2156_1 v_shr_i_2155_1 8;
vpc v_conv5_i_2156_1@uint8 v_conv5_i_2156_1@uint32;
(*   %conv6.i.2157.1 = zext i8 %31 to i32 *)
cast v_conv6_i_2157_1@uint32 v31@uint8;
(*   %shl.i.2158.1 = shl i32 %conv6.i.2157.1, 1 *)
shls discard_84 v_shl_i_2158_1 v_conv6_i_2157_1 1;
(*   %conv7.i.2159.1 = trunc i32 %shl.i.2158.1 to i8 *)
split tmp_v_shl_i_2158_1 v_conv7_i_2159_1 v_shl_i_2158_1 8;
vpc v_conv7_i_2159_1@uint8 v_conv7_i_2159_1@uint32;
(*   %conv.i.1.2.1 = zext i8 %conv5.i.2156.1 to i32 *)
cast v_conv_i_1_2_1@uint32 v_conv5_i_2156_1@uint8;
(*   %and.i.1.2.1 = and i32 %conv.i.1.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_2_1 v_conv_i_1_2_1 (0x1)@uint32;
(*   %conv1.i.1.2.1 = zext i8 %conv7.i.2159.1 to i32 *)
cast v_conv1_i_1_2_1@uint32 v_conv7_i_2159_1@uint8;
(*   %mul.i.1.2.1 = mul nsw i32 %and.i.1.2.1, %conv1.i.1.2.1 *)
mul v_mul_i_1_2_1 v_and_i_1_2_1 v_conv1_i_1_2_1;
(*   %conv2.i.1.2.1 = zext i8 %conv3.i.2153.1 to i32 *)
cast v_conv2_i_1_2_1@uint32 v_conv3_i_2153_1@uint8;
(*   %xor.i.1.2.1 = xor i32 %conv2.i.1.2.1, %mul.i.1.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_2_1 v_conv2_i_1_2_1 v_mul_i_1_2_1;
(*   %conv3.i.1.2.1 = trunc i32 %xor.i.1.2.1 to i8 *)
split tmp_v_xor_i_1_2_1 v_conv3_i_1_2_1 v_xor_i_1_2_1 8;
vpc v_conv3_i_1_2_1@uint8 v_conv3_i_1_2_1@uint32;
(*   %conv4.i.1.2.1 = zext i8 %conv5.i.2156.1 to i32 *)
cast v_conv4_i_1_2_1@uint32 v_conv5_i_2156_1@uint8;
(*   %shr.i.1.2.1 = ashr i32 %conv4.i.1.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i_1_2_1 tmp_to_be_used v_conv4_i_1_2_1 1;
(*   %conv5.i.1.2.1 = trunc i32 %shr.i.1.2.1 to i8 *)
split tmp_v_shr_i_1_2_1 v_conv5_i_1_2_1 v_shr_i_1_2_1 8;
vpc v_conv5_i_1_2_1@uint8 v_conv5_i_1_2_1@uint32;
(*   %conv6.i.1.2.1 = zext i8 %conv7.i.2159.1 to i32 *)
cast v_conv6_i_1_2_1@uint32 v_conv7_i_2159_1@uint8;
(*   %shl.i.1.2.1 = shl i32 %conv6.i.1.2.1, 1 *)
shls discard_85 v_shl_i_1_2_1 v_conv6_i_1_2_1 1;
(*   %conv7.i.1.2.1 = trunc i32 %shl.i.1.2.1 to i8 *)
split tmp_v_shl_i_1_2_1 v_conv7_i_1_2_1 v_shl_i_1_2_1 8;
vpc v_conv7_i_1_2_1@uint8 v_conv7_i_1_2_1@uint32;
(*   %conv.i.2.2.1 = zext i8 %conv5.i.1.2.1 to i32 *)
cast v_conv_i_2_2_1@uint32 v_conv5_i_1_2_1@uint8;
(*   %and.i.2.2.1 = and i32 %conv.i.2.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_2_1 v_conv_i_2_2_1 (0x1)@uint32;
(*   %conv1.i.2.2.1 = zext i8 %conv7.i.1.2.1 to i32 *)
cast v_conv1_i_2_2_1@uint32 v_conv7_i_1_2_1@uint8;
(*   %mul.i.2.2.1 = mul nsw i32 %and.i.2.2.1, %conv1.i.2.2.1 *)
mul v_mul_i_2_2_1 v_and_i_2_2_1 v_conv1_i_2_2_1;
(*   %conv2.i.2.2.1 = zext i8 %conv3.i.1.2.1 to i32 *)
cast v_conv2_i_2_2_1@uint32 v_conv3_i_1_2_1@uint8;
(*   %xor.i.2.2.1 = xor i32 %conv2.i.2.2.1, %mul.i.2.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_2_1 v_conv2_i_2_2_1 v_mul_i_2_2_1;
(*   %conv3.i.2.2.1 = trunc i32 %xor.i.2.2.1 to i8 *)
split tmp_v_xor_i_2_2_1 v_conv3_i_2_2_1 v_xor_i_2_2_1 8;
vpc v_conv3_i_2_2_1@uint8 v_conv3_i_2_2_1@uint32;
(*   %conv4.i.2.2.1 = zext i8 %conv5.i.1.2.1 to i32 *)
cast v_conv4_i_2_2_1@uint32 v_conv5_i_1_2_1@uint8;
(*   %shr.i.2.2.1 = ashr i32 %conv4.i.2.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i_2_2_1 tmp_to_be_used v_conv4_i_2_2_1 1;
(*   %conv5.i.2.2.1 = trunc i32 %shr.i.2.2.1 to i8 *)
split tmp_v_shr_i_2_2_1 v_conv5_i_2_2_1 v_shr_i_2_2_1 8;
vpc v_conv5_i_2_2_1@uint8 v_conv5_i_2_2_1@uint32;
(*   %conv6.i.2.2.1 = zext i8 %conv7.i.1.2.1 to i32 *)
cast v_conv6_i_2_2_1@uint32 v_conv7_i_1_2_1@uint8;
(*   %shl.i.2.2.1 = shl i32 %conv6.i.2.2.1, 1 *)
shls discard_86 v_shl_i_2_2_1 v_conv6_i_2_2_1 1;
(*   %conv7.i.2.2.1 = trunc i32 %shl.i.2.2.1 to i8 *)
split tmp_v_shl_i_2_2_1 v_conv7_i_2_2_1 v_shl_i_2_2_1 8;
vpc v_conv7_i_2_2_1@uint8 v_conv7_i_2_2_1@uint32;
(*   %conv.i.3.2.1 = zext i8 %conv5.i.2.2.1 to i32 *)
cast v_conv_i_3_2_1@uint32 v_conv5_i_2_2_1@uint8;
(*   %and.i.3.2.1 = and i32 %conv.i.3.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_2_1 v_conv_i_3_2_1 (0x1)@uint32;
(*   %conv1.i.3.2.1 = zext i8 %conv7.i.2.2.1 to i32 *)
cast v_conv1_i_3_2_1@uint32 v_conv7_i_2_2_1@uint8;
(*   %mul.i.3.2.1 = mul nsw i32 %and.i.3.2.1, %conv1.i.3.2.1 *)
mul v_mul_i_3_2_1 v_and_i_3_2_1 v_conv1_i_3_2_1;
(*   %conv2.i.3.2.1 = zext i8 %conv3.i.2.2.1 to i32 *)
cast v_conv2_i_3_2_1@uint32 v_conv3_i_2_2_1@uint8;
(*   %xor.i.3.2.1 = xor i32 %conv2.i.3.2.1, %mul.i.3.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_2_1 v_conv2_i_3_2_1 v_mul_i_3_2_1;
(*   %conv3.i.3.2.1 = trunc i32 %xor.i.3.2.1 to i8 *)
split tmp_v_xor_i_3_2_1 v_conv3_i_3_2_1 v_xor_i_3_2_1 8;
vpc v_conv3_i_3_2_1@uint8 v_conv3_i_3_2_1@uint32;
(*   %conv4.i.3.2.1 = zext i8 %conv5.i.2.2.1 to i32 *)
cast v_conv4_i_3_2_1@uint32 v_conv5_i_2_2_1@uint8;
(*   %shr.i.3.2.1 = ashr i32 %conv4.i.3.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i_3_2_1 tmp_to_be_used v_conv4_i_3_2_1 1;
(*   %conv5.i.3.2.1 = trunc i32 %shr.i.3.2.1 to i8 *)
split tmp_v_shr_i_3_2_1 v_conv5_i_3_2_1 v_shr_i_3_2_1 8;
vpc v_conv5_i_3_2_1@uint8 v_conv5_i_3_2_1@uint32;
(*   %conv6.i.3.2.1 = zext i8 %conv7.i.2.2.1 to i32 *)
cast v_conv6_i_3_2_1@uint32 v_conv7_i_2_2_1@uint8;
(*   %shl.i.3.2.1 = shl i32 %conv6.i.3.2.1, 1 *)
shls discard_87 v_shl_i_3_2_1 v_conv6_i_3_2_1 1;
(*   %conv7.i.3.2.1 = trunc i32 %shl.i.3.2.1 to i8 *)
split tmp_v_shl_i_3_2_1 v_conv7_i_3_2_1 v_shl_i_3_2_1 8;
vpc v_conv7_i_3_2_1@uint8 v_conv7_i_3_2_1@uint32;
(*   %conv.i.4.2.1 = zext i8 %conv5.i.3.2.1 to i32 *)
cast v_conv_i_4_2_1@uint32 v_conv5_i_3_2_1@uint8;
(*   %and.i.4.2.1 = and i32 %conv.i.4.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_2_1 v_conv_i_4_2_1 (0x1)@uint32;
(*   %conv1.i.4.2.1 = zext i8 %conv7.i.3.2.1 to i32 *)
cast v_conv1_i_4_2_1@uint32 v_conv7_i_3_2_1@uint8;
(*   %mul.i.4.2.1 = mul nsw i32 %and.i.4.2.1, %conv1.i.4.2.1 *)
mul v_mul_i_4_2_1 v_and_i_4_2_1 v_conv1_i_4_2_1;
(*   %conv2.i.4.2.1 = zext i8 %conv3.i.3.2.1 to i32 *)
cast v_conv2_i_4_2_1@uint32 v_conv3_i_3_2_1@uint8;
(*   %xor.i.4.2.1 = xor i32 %conv2.i.4.2.1, %mul.i.4.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_2_1 v_conv2_i_4_2_1 v_mul_i_4_2_1;
(*   %conv3.i.4.2.1 = trunc i32 %xor.i.4.2.1 to i8 *)
split tmp_v_xor_i_4_2_1 v_conv3_i_4_2_1 v_xor_i_4_2_1 8;
vpc v_conv3_i_4_2_1@uint8 v_conv3_i_4_2_1@uint32;
(*   %conv4.i.4.2.1 = zext i8 %conv5.i.3.2.1 to i32 *)
cast v_conv4_i_4_2_1@uint32 v_conv5_i_3_2_1@uint8;
(*   %shr.i.4.2.1 = ashr i32 %conv4.i.4.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i_4_2_1 tmp_to_be_used v_conv4_i_4_2_1 1;
(*   %conv5.i.4.2.1 = trunc i32 %shr.i.4.2.1 to i8 *)
split tmp_v_shr_i_4_2_1 v_conv5_i_4_2_1 v_shr_i_4_2_1 8;
vpc v_conv5_i_4_2_1@uint8 v_conv5_i_4_2_1@uint32;
(*   %conv6.i.4.2.1 = zext i8 %conv7.i.3.2.1 to i32 *)
cast v_conv6_i_4_2_1@uint32 v_conv7_i_3_2_1@uint8;
(*   %shl.i.4.2.1 = shl i32 %conv6.i.4.2.1, 1 *)
shls discard_88 v_shl_i_4_2_1 v_conv6_i_4_2_1 1;
(*   %conv7.i.4.2.1 = trunc i32 %shl.i.4.2.1 to i8 *)
split tmp_v_shl_i_4_2_1 v_conv7_i_4_2_1 v_shl_i_4_2_1 8;
vpc v_conv7_i_4_2_1@uint8 v_conv7_i_4_2_1@uint32;
(*   %conv.i.5.2.1 = zext i8 %conv5.i.4.2.1 to i32 *)
cast v_conv_i_5_2_1@uint32 v_conv5_i_4_2_1@uint8;
(*   %and.i.5.2.1 = and i32 %conv.i.5.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_2_1 v_conv_i_5_2_1 (0x1)@uint32;
(*   %conv1.i.5.2.1 = zext i8 %conv7.i.4.2.1 to i32 *)
cast v_conv1_i_5_2_1@uint32 v_conv7_i_4_2_1@uint8;
(*   %mul.i.5.2.1 = mul nsw i32 %and.i.5.2.1, %conv1.i.5.2.1 *)
mul v_mul_i_5_2_1 v_and_i_5_2_1 v_conv1_i_5_2_1;
(*   %conv2.i.5.2.1 = zext i8 %conv3.i.4.2.1 to i32 *)
cast v_conv2_i_5_2_1@uint32 v_conv3_i_4_2_1@uint8;
(*   %xor.i.5.2.1 = xor i32 %conv2.i.5.2.1, %mul.i.5.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_2_1 v_conv2_i_5_2_1 v_mul_i_5_2_1;
(*   %conv3.i.5.2.1 = trunc i32 %xor.i.5.2.1 to i8 *)
split tmp_v_xor_i_5_2_1 v_conv3_i_5_2_1 v_xor_i_5_2_1 8;
vpc v_conv3_i_5_2_1@uint8 v_conv3_i_5_2_1@uint32;
(*   %conv4.i.5.2.1 = zext i8 %conv5.i.4.2.1 to i32 *)
cast v_conv4_i_5_2_1@uint32 v_conv5_i_4_2_1@uint8;
(*   %shr.i.5.2.1 = ashr i32 %conv4.i.5.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i_5_2_1 tmp_to_be_used v_conv4_i_5_2_1 1;
(*   %conv5.i.5.2.1 = trunc i32 %shr.i.5.2.1 to i8 *)
split tmp_v_shr_i_5_2_1 v_conv5_i_5_2_1 v_shr_i_5_2_1 8;
vpc v_conv5_i_5_2_1@uint8 v_conv5_i_5_2_1@uint32;
(*   %conv6.i.5.2.1 = zext i8 %conv7.i.4.2.1 to i32 *)
cast v_conv6_i_5_2_1@uint32 v_conv7_i_4_2_1@uint8;
(*   %shl.i.5.2.1 = shl i32 %conv6.i.5.2.1, 1 *)
shls discard_89 v_shl_i_5_2_1 v_conv6_i_5_2_1 1;
(*   %conv7.i.5.2.1 = trunc i32 %shl.i.5.2.1 to i8 *)
split tmp_v_shl_i_5_2_1 v_conv7_i_5_2_1 v_shl_i_5_2_1 8;
vpc v_conv7_i_5_2_1@uint8 v_conv7_i_5_2_1@uint32;
(*   %conv.i.6.2.1 = zext i8 %conv5.i.5.2.1 to i32 *)
cast v_conv_i_6_2_1@uint32 v_conv5_i_5_2_1@uint8;
(*   %and.i.6.2.1 = and i32 %conv.i.6.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_2_1 v_conv_i_6_2_1 (0x1)@uint32;
(*   %conv1.i.6.2.1 = zext i8 %conv7.i.5.2.1 to i32 *)
cast v_conv1_i_6_2_1@uint32 v_conv7_i_5_2_1@uint8;
(*   %mul.i.6.2.1 = mul nsw i32 %and.i.6.2.1, %conv1.i.6.2.1 *)
mul v_mul_i_6_2_1 v_and_i_6_2_1 v_conv1_i_6_2_1;
(*   %conv2.i.6.2.1 = zext i8 %conv3.i.5.2.1 to i32 *)
cast v_conv2_i_6_2_1@uint32 v_conv3_i_5_2_1@uint8;
(*   %xor.i.6.2.1 = xor i32 %conv2.i.6.2.1, %mul.i.6.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_2_1 v_conv2_i_6_2_1 v_mul_i_6_2_1;
(*   %conv3.i.6.2.1 = trunc i32 %xor.i.6.2.1 to i8 *)
split tmp_v_xor_i_6_2_1 v_conv3_i_6_2_1 v_xor_i_6_2_1 8;
vpc v_conv3_i_6_2_1@uint8 v_conv3_i_6_2_1@uint32;
(*   %conv4.i.6.2.1 = zext i8 %conv5.i.5.2.1 to i32 *)
cast v_conv4_i_6_2_1@uint32 v_conv5_i_5_2_1@uint8;
(*   %shr.i.6.2.1 = ashr i32 %conv4.i.6.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i_6_2_1 tmp_to_be_used v_conv4_i_6_2_1 1;
(*   %conv5.i.6.2.1 = trunc i32 %shr.i.6.2.1 to i8 *)
split tmp_v_shr_i_6_2_1 v_conv5_i_6_2_1 v_shr_i_6_2_1 8;
vpc v_conv5_i_6_2_1@uint8 v_conv5_i_6_2_1@uint32;
(*   %conv6.i.6.2.1 = zext i8 %conv7.i.5.2.1 to i32 *)
cast v_conv6_i_6_2_1@uint32 v_conv7_i_5_2_1@uint8;
(*   %shl.i.6.2.1 = shl i32 %conv6.i.6.2.1, 1 *)
shls discard_90 v_shl_i_6_2_1 v_conv6_i_6_2_1 1;
(*   %conv7.i.6.2.1 = trunc i32 %shl.i.6.2.1 to i8 *)
split tmp_v_shl_i_6_2_1 v_conv7_i_6_2_1 v_shl_i_6_2_1 8;
vpc v_conv7_i_6_2_1@uint8 v_conv7_i_6_2_1@uint32;
(*   %conv.i.7.2.1 = zext i8 %conv5.i.6.2.1 to i32 *)
cast v_conv_i_7_2_1@uint32 v_conv5_i_6_2_1@uint8;
(*   %and.i.7.2.1 = and i32 %conv.i.7.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_2_1 v_conv_i_7_2_1 (0x1)@uint32;
(*   %conv1.i.7.2.1 = zext i8 %conv7.i.6.2.1 to i32 *)
cast v_conv1_i_7_2_1@uint32 v_conv7_i_6_2_1@uint8;
(*   %mul.i.7.2.1 = mul nsw i32 %and.i.7.2.1, %conv1.i.7.2.1 *)
mul v_mul_i_7_2_1 v_and_i_7_2_1 v_conv1_i_7_2_1;
(*   %conv2.i.7.2.1 = zext i8 %conv3.i.6.2.1 to i32 *)
cast v_conv2_i_7_2_1@uint32 v_conv3_i_6_2_1@uint8;
(*   %xor.i.7.2.1 = xor i32 %conv2.i.7.2.1, %mul.i.7.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_2_1 v_conv2_i_7_2_1 v_mul_i_7_2_1;
(*   %conv3.i.7.2.1 = trunc i32 %xor.i.7.2.1 to i8 *)
split tmp_v_xor_i_7_2_1 v_conv3_i_7_2_1 v_xor_i_7_2_1 8;
vpc v_conv3_i_7_2_1@uint8 v_conv3_i_7_2_1@uint32;
(*   %conv9.2.1 = zext i8 %conv3.i.7.2.1 to i32 *)
cast v_conv9_2_1@uint32 v_conv3_i_7_2_1@uint8;
(*   %xor.2.1 = xor i32 %conv.2.1, %conv9.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_2_1 v_conv_2_1 v_conv9_2_1;
(*   %arrayidx11.2.1 = getelementptr inbounds i8, i8* %a, i64 4 *)
(*   %33 = load i8, i8* %arrayidx11.2.1, align 1 *)
mov v33 a_4;
(*   %34 = load i8, i8* %arrayidx13.1, align 1 *)
mov v34 b_1;
(*   %conv.i71.2160.1 = zext i8 %34 to i32 *)
cast v_conv_i71_2160_1@uint32 v34@uint8;
(*   %and.i72.2161.1 = and i32 %conv.i71.2160.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_2161_1 v_conv_i71_2160_1 (0x1)@uint32;
(*   %conv1.i73.2162.1 = zext i8 %33 to i32 *)
cast v_conv1_i73_2162_1@uint32 v33@uint8;
(*   %mul.i74.2163.1 = mul nsw i32 %and.i72.2161.1, %conv1.i73.2162.1 *)
mul v_mul_i74_2163_1 v_and_i72_2161_1 v_conv1_i73_2162_1;
(*   %conv3.i77.2164.1 = trunc i32 %mul.i74.2163.1 to i8 *)
split tmp_v_mul_i74_2163_1 v_conv3_i77_2164_1 v_mul_i74_2163_1 8;
vpc v_conv3_i77_2164_1@uint8 v_conv3_i77_2164_1@uint32;
(*   %conv4.i78.2165.1 = zext i8 %34 to i32 *)
cast v_conv4_i78_2165_1@uint32 v34@uint8;
(*   %shr.i79.2166.1 = ashr i32 %conv4.i78.2165.1, 1 *)
(* You may need to modify here *)
split v_shr_i79_2166_1 tmp_to_be_used v_conv4_i78_2165_1 1;
(*   %conv5.i80.2167.1 = trunc i32 %shr.i79.2166.1 to i8 *)
split tmp_v_shr_i79_2166_1 v_conv5_i80_2167_1 v_shr_i79_2166_1 8;
vpc v_conv5_i80_2167_1@uint8 v_conv5_i80_2167_1@uint32;
(*   %conv6.i81.2168.1 = zext i8 %33 to i32 *)
cast v_conv6_i81_2168_1@uint32 v33@uint8;
(*   %shl.i82.2169.1 = shl i32 %conv6.i81.2168.1, 1 *)
shls discard_91 v_shl_i82_2169_1 v_conv6_i81_2168_1 1;
(*   %conv7.i83.2170.1 = trunc i32 %shl.i82.2169.1 to i8 *)
split tmp_v_shl_i82_2169_1 v_conv7_i83_2170_1 v_shl_i82_2169_1 8;
vpc v_conv7_i83_2170_1@uint8 v_conv7_i83_2170_1@uint32;
(*   %conv.i71.1.2.1 = zext i8 %conv5.i80.2167.1 to i32 *)
cast v_conv_i71_1_2_1@uint32 v_conv5_i80_2167_1@uint8;
(*   %and.i72.1.2.1 = and i32 %conv.i71.1.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_1_2_1 v_conv_i71_1_2_1 (0x1)@uint32;
(*   %conv1.i73.1.2.1 = zext i8 %conv7.i83.2170.1 to i32 *)
cast v_conv1_i73_1_2_1@uint32 v_conv7_i83_2170_1@uint8;
(*   %mul.i74.1.2.1 = mul nsw i32 %and.i72.1.2.1, %conv1.i73.1.2.1 *)
mul v_mul_i74_1_2_1 v_and_i72_1_2_1 v_conv1_i73_1_2_1;
(*   %conv2.i75.1.2.1 = zext i8 %conv3.i77.2164.1 to i32 *)
cast v_conv2_i75_1_2_1@uint32 v_conv3_i77_2164_1@uint8;
(*   %xor.i76.1.2.1 = xor i32 %conv2.i75.1.2.1, %mul.i74.1.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_1_2_1 v_conv2_i75_1_2_1 v_mul_i74_1_2_1;
(*   %conv3.i77.1.2.1 = trunc i32 %xor.i76.1.2.1 to i8 *)
split tmp_v_xor_i76_1_2_1 v_conv3_i77_1_2_1 v_xor_i76_1_2_1 8;
vpc v_conv3_i77_1_2_1@uint8 v_conv3_i77_1_2_1@uint32;
(*   %conv4.i78.1.2.1 = zext i8 %conv5.i80.2167.1 to i32 *)
cast v_conv4_i78_1_2_1@uint32 v_conv5_i80_2167_1@uint8;
(*   %shr.i79.1.2.1 = ashr i32 %conv4.i78.1.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i79_1_2_1 tmp_to_be_used v_conv4_i78_1_2_1 1;
(*   %conv5.i80.1.2.1 = trunc i32 %shr.i79.1.2.1 to i8 *)
split tmp_v_shr_i79_1_2_1 v_conv5_i80_1_2_1 v_shr_i79_1_2_1 8;
vpc v_conv5_i80_1_2_1@uint8 v_conv5_i80_1_2_1@uint32;
(*   %conv6.i81.1.2.1 = zext i8 %conv7.i83.2170.1 to i32 *)
cast v_conv6_i81_1_2_1@uint32 v_conv7_i83_2170_1@uint8;
(*   %shl.i82.1.2.1 = shl i32 %conv6.i81.1.2.1, 1 *)
shls discard_92 v_shl_i82_1_2_1 v_conv6_i81_1_2_1 1;
(*   %conv7.i83.1.2.1 = trunc i32 %shl.i82.1.2.1 to i8 *)
split tmp_v_shl_i82_1_2_1 v_conv7_i83_1_2_1 v_shl_i82_1_2_1 8;
vpc v_conv7_i83_1_2_1@uint8 v_conv7_i83_1_2_1@uint32;
(*   %conv.i71.2.2.1 = zext i8 %conv5.i80.1.2.1 to i32 *)
cast v_conv_i71_2_2_1@uint32 v_conv5_i80_1_2_1@uint8;
(*   %and.i72.2.2.1 = and i32 %conv.i71.2.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_2_2_1 v_conv_i71_2_2_1 (0x1)@uint32;
(*   %conv1.i73.2.2.1 = zext i8 %conv7.i83.1.2.1 to i32 *)
cast v_conv1_i73_2_2_1@uint32 v_conv7_i83_1_2_1@uint8;
(*   %mul.i74.2.2.1 = mul nsw i32 %and.i72.2.2.1, %conv1.i73.2.2.1 *)
mul v_mul_i74_2_2_1 v_and_i72_2_2_1 v_conv1_i73_2_2_1;
(*   %conv2.i75.2.2.1 = zext i8 %conv3.i77.1.2.1 to i32 *)
cast v_conv2_i75_2_2_1@uint32 v_conv3_i77_1_2_1@uint8;
(*   %xor.i76.2.2.1 = xor i32 %conv2.i75.2.2.1, %mul.i74.2.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_2_2_1 v_conv2_i75_2_2_1 v_mul_i74_2_2_1;
(*   %conv3.i77.2.2.1 = trunc i32 %xor.i76.2.2.1 to i8 *)
split tmp_v_xor_i76_2_2_1 v_conv3_i77_2_2_1 v_xor_i76_2_2_1 8;
vpc v_conv3_i77_2_2_1@uint8 v_conv3_i77_2_2_1@uint32;
(*   %conv4.i78.2.2.1 = zext i8 %conv5.i80.1.2.1 to i32 *)
cast v_conv4_i78_2_2_1@uint32 v_conv5_i80_1_2_1@uint8;
(*   %shr.i79.2.2.1 = ashr i32 %conv4.i78.2.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i79_2_2_1 tmp_to_be_used v_conv4_i78_2_2_1 1;
(*   %conv5.i80.2.2.1 = trunc i32 %shr.i79.2.2.1 to i8 *)
split tmp_v_shr_i79_2_2_1 v_conv5_i80_2_2_1 v_shr_i79_2_2_1 8;
vpc v_conv5_i80_2_2_1@uint8 v_conv5_i80_2_2_1@uint32;
(*   %conv6.i81.2.2.1 = zext i8 %conv7.i83.1.2.1 to i32 *)
cast v_conv6_i81_2_2_1@uint32 v_conv7_i83_1_2_1@uint8;
(*   %shl.i82.2.2.1 = shl i32 %conv6.i81.2.2.1, 1 *)
shls discard_93 v_shl_i82_2_2_1 v_conv6_i81_2_2_1 1;
(*   %conv7.i83.2.2.1 = trunc i32 %shl.i82.2.2.1 to i8 *)
split tmp_v_shl_i82_2_2_1 v_conv7_i83_2_2_1 v_shl_i82_2_2_1 8;
vpc v_conv7_i83_2_2_1@uint8 v_conv7_i83_2_2_1@uint32;
(*   %conv.i71.3.2.1 = zext i8 %conv5.i80.2.2.1 to i32 *)
cast v_conv_i71_3_2_1@uint32 v_conv5_i80_2_2_1@uint8;
(*   %and.i72.3.2.1 = and i32 %conv.i71.3.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_3_2_1 v_conv_i71_3_2_1 (0x1)@uint32;
(*   %conv1.i73.3.2.1 = zext i8 %conv7.i83.2.2.1 to i32 *)
cast v_conv1_i73_3_2_1@uint32 v_conv7_i83_2_2_1@uint8;
(*   %mul.i74.3.2.1 = mul nsw i32 %and.i72.3.2.1, %conv1.i73.3.2.1 *)
mul v_mul_i74_3_2_1 v_and_i72_3_2_1 v_conv1_i73_3_2_1;
(*   %conv2.i75.3.2.1 = zext i8 %conv3.i77.2.2.1 to i32 *)
cast v_conv2_i75_3_2_1@uint32 v_conv3_i77_2_2_1@uint8;
(*   %xor.i76.3.2.1 = xor i32 %conv2.i75.3.2.1, %mul.i74.3.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_3_2_1 v_conv2_i75_3_2_1 v_mul_i74_3_2_1;
(*   %conv3.i77.3.2.1 = trunc i32 %xor.i76.3.2.1 to i8 *)
split tmp_v_xor_i76_3_2_1 v_conv3_i77_3_2_1 v_xor_i76_3_2_1 8;
vpc v_conv3_i77_3_2_1@uint8 v_conv3_i77_3_2_1@uint32;
(*   %conv4.i78.3.2.1 = zext i8 %conv5.i80.2.2.1 to i32 *)
cast v_conv4_i78_3_2_1@uint32 v_conv5_i80_2_2_1@uint8;
(*   %shr.i79.3.2.1 = ashr i32 %conv4.i78.3.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i79_3_2_1 tmp_to_be_used v_conv4_i78_3_2_1 1;
(*   %conv5.i80.3.2.1 = trunc i32 %shr.i79.3.2.1 to i8 *)
split tmp_v_shr_i79_3_2_1 v_conv5_i80_3_2_1 v_shr_i79_3_2_1 8;
vpc v_conv5_i80_3_2_1@uint8 v_conv5_i80_3_2_1@uint32;
(*   %conv6.i81.3.2.1 = zext i8 %conv7.i83.2.2.1 to i32 *)
cast v_conv6_i81_3_2_1@uint32 v_conv7_i83_2_2_1@uint8;
(*   %shl.i82.3.2.1 = shl i32 %conv6.i81.3.2.1, 1 *)
shls discard_94 v_shl_i82_3_2_1 v_conv6_i81_3_2_1 1;
(*   %conv7.i83.3.2.1 = trunc i32 %shl.i82.3.2.1 to i8 *)
split tmp_v_shl_i82_3_2_1 v_conv7_i83_3_2_1 v_shl_i82_3_2_1 8;
vpc v_conv7_i83_3_2_1@uint8 v_conv7_i83_3_2_1@uint32;
(*   %conv.i71.4.2.1 = zext i8 %conv5.i80.3.2.1 to i32 *)
cast v_conv_i71_4_2_1@uint32 v_conv5_i80_3_2_1@uint8;
(*   %and.i72.4.2.1 = and i32 %conv.i71.4.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_4_2_1 v_conv_i71_4_2_1 (0x1)@uint32;
(*   %conv1.i73.4.2.1 = zext i8 %conv7.i83.3.2.1 to i32 *)
cast v_conv1_i73_4_2_1@uint32 v_conv7_i83_3_2_1@uint8;
(*   %mul.i74.4.2.1 = mul nsw i32 %and.i72.4.2.1, %conv1.i73.4.2.1 *)
mul v_mul_i74_4_2_1 v_and_i72_4_2_1 v_conv1_i73_4_2_1;
(*   %conv2.i75.4.2.1 = zext i8 %conv3.i77.3.2.1 to i32 *)
cast v_conv2_i75_4_2_1@uint32 v_conv3_i77_3_2_1@uint8;
(*   %xor.i76.4.2.1 = xor i32 %conv2.i75.4.2.1, %mul.i74.4.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_4_2_1 v_conv2_i75_4_2_1 v_mul_i74_4_2_1;
(*   %conv3.i77.4.2.1 = trunc i32 %xor.i76.4.2.1 to i8 *)
split tmp_v_xor_i76_4_2_1 v_conv3_i77_4_2_1 v_xor_i76_4_2_1 8;
vpc v_conv3_i77_4_2_1@uint8 v_conv3_i77_4_2_1@uint32;
(*   %conv4.i78.4.2.1 = zext i8 %conv5.i80.3.2.1 to i32 *)
cast v_conv4_i78_4_2_1@uint32 v_conv5_i80_3_2_1@uint8;
(*   %shr.i79.4.2.1 = ashr i32 %conv4.i78.4.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i79_4_2_1 tmp_to_be_used v_conv4_i78_4_2_1 1;
(*   %conv5.i80.4.2.1 = trunc i32 %shr.i79.4.2.1 to i8 *)
split tmp_v_shr_i79_4_2_1 v_conv5_i80_4_2_1 v_shr_i79_4_2_1 8;
vpc v_conv5_i80_4_2_1@uint8 v_conv5_i80_4_2_1@uint32;
(*   %conv6.i81.4.2.1 = zext i8 %conv7.i83.3.2.1 to i32 *)
cast v_conv6_i81_4_2_1@uint32 v_conv7_i83_3_2_1@uint8;
(*   %shl.i82.4.2.1 = shl i32 %conv6.i81.4.2.1, 1 *)
shls discard_95 v_shl_i82_4_2_1 v_conv6_i81_4_2_1 1;
(*   %conv7.i83.4.2.1 = trunc i32 %shl.i82.4.2.1 to i8 *)
split tmp_v_shl_i82_4_2_1 v_conv7_i83_4_2_1 v_shl_i82_4_2_1 8;
vpc v_conv7_i83_4_2_1@uint8 v_conv7_i83_4_2_1@uint32;
(*   %conv.i71.5.2.1 = zext i8 %conv5.i80.4.2.1 to i32 *)
cast v_conv_i71_5_2_1@uint32 v_conv5_i80_4_2_1@uint8;
(*   %and.i72.5.2.1 = and i32 %conv.i71.5.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_5_2_1 v_conv_i71_5_2_1 (0x1)@uint32;
(*   %conv1.i73.5.2.1 = zext i8 %conv7.i83.4.2.1 to i32 *)
cast v_conv1_i73_5_2_1@uint32 v_conv7_i83_4_2_1@uint8;
(*   %mul.i74.5.2.1 = mul nsw i32 %and.i72.5.2.1, %conv1.i73.5.2.1 *)
mul v_mul_i74_5_2_1 v_and_i72_5_2_1 v_conv1_i73_5_2_1;
(*   %conv2.i75.5.2.1 = zext i8 %conv3.i77.4.2.1 to i32 *)
cast v_conv2_i75_5_2_1@uint32 v_conv3_i77_4_2_1@uint8;
(*   %xor.i76.5.2.1 = xor i32 %conv2.i75.5.2.1, %mul.i74.5.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_5_2_1 v_conv2_i75_5_2_1 v_mul_i74_5_2_1;
(*   %conv3.i77.5.2.1 = trunc i32 %xor.i76.5.2.1 to i8 *)
split tmp_v_xor_i76_5_2_1 v_conv3_i77_5_2_1 v_xor_i76_5_2_1 8;
vpc v_conv3_i77_5_2_1@uint8 v_conv3_i77_5_2_1@uint32;
(*   %conv4.i78.5.2.1 = zext i8 %conv5.i80.4.2.1 to i32 *)
cast v_conv4_i78_5_2_1@uint32 v_conv5_i80_4_2_1@uint8;
(*   %shr.i79.5.2.1 = ashr i32 %conv4.i78.5.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i79_5_2_1 tmp_to_be_used v_conv4_i78_5_2_1 1;
(*   %conv5.i80.5.2.1 = trunc i32 %shr.i79.5.2.1 to i8 *)
split tmp_v_shr_i79_5_2_1 v_conv5_i80_5_2_1 v_shr_i79_5_2_1 8;
vpc v_conv5_i80_5_2_1@uint8 v_conv5_i80_5_2_1@uint32;
(*   %conv6.i81.5.2.1 = zext i8 %conv7.i83.4.2.1 to i32 *)
cast v_conv6_i81_5_2_1@uint32 v_conv7_i83_4_2_1@uint8;
(*   %shl.i82.5.2.1 = shl i32 %conv6.i81.5.2.1, 1 *)
shls discard_96 v_shl_i82_5_2_1 v_conv6_i81_5_2_1 1;
(*   %conv7.i83.5.2.1 = trunc i32 %shl.i82.5.2.1 to i8 *)
split tmp_v_shl_i82_5_2_1 v_conv7_i83_5_2_1 v_shl_i82_5_2_1 8;
vpc v_conv7_i83_5_2_1@uint8 v_conv7_i83_5_2_1@uint32;
(*   %conv.i71.6.2.1 = zext i8 %conv5.i80.5.2.1 to i32 *)
cast v_conv_i71_6_2_1@uint32 v_conv5_i80_5_2_1@uint8;
(*   %and.i72.6.2.1 = and i32 %conv.i71.6.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_6_2_1 v_conv_i71_6_2_1 (0x1)@uint32;
(*   %conv1.i73.6.2.1 = zext i8 %conv7.i83.5.2.1 to i32 *)
cast v_conv1_i73_6_2_1@uint32 v_conv7_i83_5_2_1@uint8;
(*   %mul.i74.6.2.1 = mul nsw i32 %and.i72.6.2.1, %conv1.i73.6.2.1 *)
mul v_mul_i74_6_2_1 v_and_i72_6_2_1 v_conv1_i73_6_2_1;
(*   %conv2.i75.6.2.1 = zext i8 %conv3.i77.5.2.1 to i32 *)
cast v_conv2_i75_6_2_1@uint32 v_conv3_i77_5_2_1@uint8;
(*   %xor.i76.6.2.1 = xor i32 %conv2.i75.6.2.1, %mul.i74.6.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_6_2_1 v_conv2_i75_6_2_1 v_mul_i74_6_2_1;
(*   %conv3.i77.6.2.1 = trunc i32 %xor.i76.6.2.1 to i8 *)
split tmp_v_xor_i76_6_2_1 v_conv3_i77_6_2_1 v_xor_i76_6_2_1 8;
vpc v_conv3_i77_6_2_1@uint8 v_conv3_i77_6_2_1@uint32;
(*   %conv4.i78.6.2.1 = zext i8 %conv5.i80.5.2.1 to i32 *)
cast v_conv4_i78_6_2_1@uint32 v_conv5_i80_5_2_1@uint8;
(*   %shr.i79.6.2.1 = ashr i32 %conv4.i78.6.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i79_6_2_1 tmp_to_be_used v_conv4_i78_6_2_1 1;
(*   %conv5.i80.6.2.1 = trunc i32 %shr.i79.6.2.1 to i8 *)
split tmp_v_shr_i79_6_2_1 v_conv5_i80_6_2_1 v_shr_i79_6_2_1 8;
vpc v_conv5_i80_6_2_1@uint8 v_conv5_i80_6_2_1@uint32;
(*   %conv6.i81.6.2.1 = zext i8 %conv7.i83.5.2.1 to i32 *)
cast v_conv6_i81_6_2_1@uint32 v_conv7_i83_5_2_1@uint8;
(*   %shl.i82.6.2.1 = shl i32 %conv6.i81.6.2.1, 1 *)
shls discard_97 v_shl_i82_6_2_1 v_conv6_i81_6_2_1 1;
(*   %conv7.i83.6.2.1 = trunc i32 %shl.i82.6.2.1 to i8 *)
split tmp_v_shl_i82_6_2_1 v_conv7_i83_6_2_1 v_shl_i82_6_2_1 8;
vpc v_conv7_i83_6_2_1@uint8 v_conv7_i83_6_2_1@uint32;
(*   %conv.i71.7.2.1 = zext i8 %conv5.i80.6.2.1 to i32 *)
cast v_conv_i71_7_2_1@uint32 v_conv5_i80_6_2_1@uint8;
(*   %and.i72.7.2.1 = and i32 %conv.i71.7.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_7_2_1 v_conv_i71_7_2_1 (0x1)@uint32;
(*   %conv1.i73.7.2.1 = zext i8 %conv7.i83.6.2.1 to i32 *)
cast v_conv1_i73_7_2_1@uint32 v_conv7_i83_6_2_1@uint8;
(*   %mul.i74.7.2.1 = mul nsw i32 %and.i72.7.2.1, %conv1.i73.7.2.1 *)
mul v_mul_i74_7_2_1 v_and_i72_7_2_1 v_conv1_i73_7_2_1;
(*   %conv2.i75.7.2.1 = zext i8 %conv3.i77.6.2.1 to i32 *)
cast v_conv2_i75_7_2_1@uint32 v_conv3_i77_6_2_1@uint8;
(*   %xor.i76.7.2.1 = xor i32 %conv2.i75.7.2.1, %mul.i74.7.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_7_2_1 v_conv2_i75_7_2_1 v_mul_i74_7_2_1;
(*   %conv3.i77.7.2.1 = trunc i32 %xor.i76.7.2.1 to i8 *)
split tmp_v_xor_i76_7_2_1 v_conv3_i77_7_2_1 v_xor_i76_7_2_1 8;
vpc v_conv3_i77_7_2_1@uint8 v_conv3_i77_7_2_1@uint32;
(*   %conv15.2.1 = zext i8 %conv3.i77.7.2.1 to i32 *)
cast v_conv15_2_1@uint32 v_conv3_i77_7_2_1@uint8;
(*   %xor16.2.1 = xor i32 %xor.2.1, %conv15.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor16_2_1 v_xor_2_1 v_conv15_2_1;
(*   %conv17.2.1 = trunc i32 %xor16.2.1 to i8 *)
split tmp_v_xor16_2_1 v_conv17_2_1 v_xor16_2_1 8;
vpc v_conv17_2_1@uint8 v_conv17_2_1@uint32;
(*   %arrayidx21.2.1 = getelementptr inbounds i8, i8* %r, i64 21 *)
(*   store i8 %conv17.2.1, i8* %arrayidx21.2.1, align 1 *)
mov r_21 v_conv17_2_1;
(*   %arrayidx6.2 = getelementptr inbounds i8, i8* %a, i64 2 *)
(*   %arrayidx13.2 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %arrayidx.2414 = getelementptr inbounds i8, i8* %r, i64 13 *)
(*   %35 = load i8, i8* %arrayidx.2414, align 1 *)
mov v35 r_13;
(*   %conv.2415 = zext i8 %35 to i32 *)
cast v_conv_2415@uint32 v35@uint8;
(*   %36 = load i8, i8* %arrayidx6.2, align 1 *)
mov v36 a_2;
(*   %arrayidx8.2417 = getelementptr inbounds i8, i8* %b, i64 3 *)
(*   %37 = load i8, i8* %arrayidx8.2417, align 1 *)
mov v37 b_3;
(*   %conv.i.2419 = zext i8 %37 to i32 *)
cast v_conv_i_2419@uint32 v37@uint8;
(*   %and.i.2420 = and i32 %conv.i.2419, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2420 v_conv_i_2419 (0x1)@uint32;
(*   %conv1.i.2421 = zext i8 %36 to i32 *)
cast v_conv1_i_2421@uint32 v36@uint8;
(*   %mul.i.2422 = mul nsw i32 %and.i.2420, %conv1.i.2421 *)
mul v_mul_i_2422 v_and_i_2420 v_conv1_i_2421;
(*   %conv3.i.2423 = trunc i32 %mul.i.2422 to i8 *)
split tmp_v_mul_i_2422 v_conv3_i_2423 v_mul_i_2422 8;
vpc v_conv3_i_2423@uint8 v_conv3_i_2423@uint32;
(*   %conv4.i.2424 = zext i8 %37 to i32 *)
cast v_conv4_i_2424@uint32 v37@uint8;
(*   %shr.i.2425 = ashr i32 %conv4.i.2424, 1 *)
(* You may need to modify here *)
split v_shr_i_2425 tmp_to_be_used v_conv4_i_2424 1;
(*   %conv5.i.2426 = trunc i32 %shr.i.2425 to i8 *)
split tmp_v_shr_i_2425 v_conv5_i_2426 v_shr_i_2425 8;
vpc v_conv5_i_2426@uint8 v_conv5_i_2426@uint32;
(*   %conv6.i.2427 = zext i8 %36 to i32 *)
cast v_conv6_i_2427@uint32 v36@uint8;
(*   %shl.i.2428 = shl i32 %conv6.i.2427, 1 *)
shls discard_98 v_shl_i_2428 v_conv6_i_2427 1;
(*   %conv7.i.2429 = trunc i32 %shl.i.2428 to i8 *)
split tmp_v_shl_i_2428 v_conv7_i_2429 v_shl_i_2428 8;
vpc v_conv7_i_2429@uint8 v_conv7_i_2429@uint32;
(*   %conv.i.1.2430 = zext i8 %conv5.i.2426 to i32 *)
cast v_conv_i_1_2430@uint32 v_conv5_i_2426@uint8;
(*   %and.i.1.2431 = and i32 %conv.i.1.2430, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_2431 v_conv_i_1_2430 (0x1)@uint32;
(*   %conv1.i.1.2432 = zext i8 %conv7.i.2429 to i32 *)
cast v_conv1_i_1_2432@uint32 v_conv7_i_2429@uint8;
(*   %mul.i.1.2433 = mul nsw i32 %and.i.1.2431, %conv1.i.1.2432 *)
mul v_mul_i_1_2433 v_and_i_1_2431 v_conv1_i_1_2432;
(*   %conv2.i.1.2434 = zext i8 %conv3.i.2423 to i32 *)
cast v_conv2_i_1_2434@uint32 v_conv3_i_2423@uint8;
(*   %xor.i.1.2435 = xor i32 %conv2.i.1.2434, %mul.i.1.2433 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_2435 v_conv2_i_1_2434 v_mul_i_1_2433;
(*   %conv3.i.1.2436 = trunc i32 %xor.i.1.2435 to i8 *)
split tmp_v_xor_i_1_2435 v_conv3_i_1_2436 v_xor_i_1_2435 8;
vpc v_conv3_i_1_2436@uint8 v_conv3_i_1_2436@uint32;
(*   %conv4.i.1.2437 = zext i8 %conv5.i.2426 to i32 *)
cast v_conv4_i_1_2437@uint32 v_conv5_i_2426@uint8;
(*   %shr.i.1.2438 = ashr i32 %conv4.i.1.2437, 1 *)
(* You may need to modify here *)
split v_shr_i_1_2438 tmp_to_be_used v_conv4_i_1_2437 1;
(*   %conv5.i.1.2439 = trunc i32 %shr.i.1.2438 to i8 *)
split tmp_v_shr_i_1_2438 v_conv5_i_1_2439 v_shr_i_1_2438 8;
vpc v_conv5_i_1_2439@uint8 v_conv5_i_1_2439@uint32;
(*   %conv6.i.1.2440 = zext i8 %conv7.i.2429 to i32 *)
cast v_conv6_i_1_2440@uint32 v_conv7_i_2429@uint8;
(*   %shl.i.1.2441 = shl i32 %conv6.i.1.2440, 1 *)
shls discard_99 v_shl_i_1_2441 v_conv6_i_1_2440 1;
(*   %conv7.i.1.2442 = trunc i32 %shl.i.1.2441 to i8 *)
split tmp_v_shl_i_1_2441 v_conv7_i_1_2442 v_shl_i_1_2441 8;
vpc v_conv7_i_1_2442@uint8 v_conv7_i_1_2442@uint32;
(*   %conv.i.2.2443 = zext i8 %conv5.i.1.2439 to i32 *)
cast v_conv_i_2_2443@uint32 v_conv5_i_1_2439@uint8;
(*   %and.i.2.2444 = and i32 %conv.i.2.2443, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_2444 v_conv_i_2_2443 (0x1)@uint32;
(*   %conv1.i.2.2445 = zext i8 %conv7.i.1.2442 to i32 *)
cast v_conv1_i_2_2445@uint32 v_conv7_i_1_2442@uint8;
(*   %mul.i.2.2446 = mul nsw i32 %and.i.2.2444, %conv1.i.2.2445 *)
mul v_mul_i_2_2446 v_and_i_2_2444 v_conv1_i_2_2445;
(*   %conv2.i.2.2447 = zext i8 %conv3.i.1.2436 to i32 *)
cast v_conv2_i_2_2447@uint32 v_conv3_i_1_2436@uint8;
(*   %xor.i.2.2448 = xor i32 %conv2.i.2.2447, %mul.i.2.2446 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_2448 v_conv2_i_2_2447 v_mul_i_2_2446;
(*   %conv3.i.2.2449 = trunc i32 %xor.i.2.2448 to i8 *)
split tmp_v_xor_i_2_2448 v_conv3_i_2_2449 v_xor_i_2_2448 8;
vpc v_conv3_i_2_2449@uint8 v_conv3_i_2_2449@uint32;
(*   %conv4.i.2.2450 = zext i8 %conv5.i.1.2439 to i32 *)
cast v_conv4_i_2_2450@uint32 v_conv5_i_1_2439@uint8;
(*   %shr.i.2.2451 = ashr i32 %conv4.i.2.2450, 1 *)
(* You may need to modify here *)
split v_shr_i_2_2451 tmp_to_be_used v_conv4_i_2_2450 1;
(*   %conv5.i.2.2452 = trunc i32 %shr.i.2.2451 to i8 *)
split tmp_v_shr_i_2_2451 v_conv5_i_2_2452 v_shr_i_2_2451 8;
vpc v_conv5_i_2_2452@uint8 v_conv5_i_2_2452@uint32;
(*   %conv6.i.2.2453 = zext i8 %conv7.i.1.2442 to i32 *)
cast v_conv6_i_2_2453@uint32 v_conv7_i_1_2442@uint8;
(*   %shl.i.2.2454 = shl i32 %conv6.i.2.2453, 1 *)
shls discard_100 v_shl_i_2_2454 v_conv6_i_2_2453 1;
(*   %conv7.i.2.2455 = trunc i32 %shl.i.2.2454 to i8 *)
split tmp_v_shl_i_2_2454 v_conv7_i_2_2455 v_shl_i_2_2454 8;
vpc v_conv7_i_2_2455@uint8 v_conv7_i_2_2455@uint32;
(*   %conv.i.3.2456 = zext i8 %conv5.i.2.2452 to i32 *)
cast v_conv_i_3_2456@uint32 v_conv5_i_2_2452@uint8;
(*   %and.i.3.2457 = and i32 %conv.i.3.2456, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_2457 v_conv_i_3_2456 (0x1)@uint32;
(*   %conv1.i.3.2458 = zext i8 %conv7.i.2.2455 to i32 *)
cast v_conv1_i_3_2458@uint32 v_conv7_i_2_2455@uint8;
(*   %mul.i.3.2459 = mul nsw i32 %and.i.3.2457, %conv1.i.3.2458 *)
mul v_mul_i_3_2459 v_and_i_3_2457 v_conv1_i_3_2458;
(*   %conv2.i.3.2460 = zext i8 %conv3.i.2.2449 to i32 *)
cast v_conv2_i_3_2460@uint32 v_conv3_i_2_2449@uint8;
(*   %xor.i.3.2461 = xor i32 %conv2.i.3.2460, %mul.i.3.2459 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_2461 v_conv2_i_3_2460 v_mul_i_3_2459;
(*   %conv3.i.3.2462 = trunc i32 %xor.i.3.2461 to i8 *)
split tmp_v_xor_i_3_2461 v_conv3_i_3_2462 v_xor_i_3_2461 8;
vpc v_conv3_i_3_2462@uint8 v_conv3_i_3_2462@uint32;
(*   %conv4.i.3.2463 = zext i8 %conv5.i.2.2452 to i32 *)
cast v_conv4_i_3_2463@uint32 v_conv5_i_2_2452@uint8;
(*   %shr.i.3.2464 = ashr i32 %conv4.i.3.2463, 1 *)
(* You may need to modify here *)
split v_shr_i_3_2464 tmp_to_be_used v_conv4_i_3_2463 1;
(*   %conv5.i.3.2465 = trunc i32 %shr.i.3.2464 to i8 *)
split tmp_v_shr_i_3_2464 v_conv5_i_3_2465 v_shr_i_3_2464 8;
vpc v_conv5_i_3_2465@uint8 v_conv5_i_3_2465@uint32;
(*   %conv6.i.3.2466 = zext i8 %conv7.i.2.2455 to i32 *)
cast v_conv6_i_3_2466@uint32 v_conv7_i_2_2455@uint8;
(*   %shl.i.3.2467 = shl i32 %conv6.i.3.2466, 1 *)
shls discard_101 v_shl_i_3_2467 v_conv6_i_3_2466 1;
(*   %conv7.i.3.2468 = trunc i32 %shl.i.3.2467 to i8 *)
split tmp_v_shl_i_3_2467 v_conv7_i_3_2468 v_shl_i_3_2467 8;
vpc v_conv7_i_3_2468@uint8 v_conv7_i_3_2468@uint32;
(*   %conv.i.4.2469 = zext i8 %conv5.i.3.2465 to i32 *)
cast v_conv_i_4_2469@uint32 v_conv5_i_3_2465@uint8;
(*   %and.i.4.2470 = and i32 %conv.i.4.2469, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_2470 v_conv_i_4_2469 (0x1)@uint32;
(*   %conv1.i.4.2471 = zext i8 %conv7.i.3.2468 to i32 *)
cast v_conv1_i_4_2471@uint32 v_conv7_i_3_2468@uint8;
(*   %mul.i.4.2472 = mul nsw i32 %and.i.4.2470, %conv1.i.4.2471 *)
mul v_mul_i_4_2472 v_and_i_4_2470 v_conv1_i_4_2471;
(*   %conv2.i.4.2473 = zext i8 %conv3.i.3.2462 to i32 *)
cast v_conv2_i_4_2473@uint32 v_conv3_i_3_2462@uint8;
(*   %xor.i.4.2474 = xor i32 %conv2.i.4.2473, %mul.i.4.2472 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_2474 v_conv2_i_4_2473 v_mul_i_4_2472;
(*   %conv3.i.4.2475 = trunc i32 %xor.i.4.2474 to i8 *)
split tmp_v_xor_i_4_2474 v_conv3_i_4_2475 v_xor_i_4_2474 8;
vpc v_conv3_i_4_2475@uint8 v_conv3_i_4_2475@uint32;
(*   %conv4.i.4.2476 = zext i8 %conv5.i.3.2465 to i32 *)
cast v_conv4_i_4_2476@uint32 v_conv5_i_3_2465@uint8;
(*   %shr.i.4.2477 = ashr i32 %conv4.i.4.2476, 1 *)
(* You may need to modify here *)
split v_shr_i_4_2477 tmp_to_be_used v_conv4_i_4_2476 1;
(*   %conv5.i.4.2478 = trunc i32 %shr.i.4.2477 to i8 *)
split tmp_v_shr_i_4_2477 v_conv5_i_4_2478 v_shr_i_4_2477 8;
vpc v_conv5_i_4_2478@uint8 v_conv5_i_4_2478@uint32;
(*   %conv6.i.4.2479 = zext i8 %conv7.i.3.2468 to i32 *)
cast v_conv6_i_4_2479@uint32 v_conv7_i_3_2468@uint8;
(*   %shl.i.4.2480 = shl i32 %conv6.i.4.2479, 1 *)
shls discard_102 v_shl_i_4_2480 v_conv6_i_4_2479 1;
(*   %conv7.i.4.2481 = trunc i32 %shl.i.4.2480 to i8 *)
split tmp_v_shl_i_4_2480 v_conv7_i_4_2481 v_shl_i_4_2480 8;
vpc v_conv7_i_4_2481@uint8 v_conv7_i_4_2481@uint32;
(*   %conv.i.5.2482 = zext i8 %conv5.i.4.2478 to i32 *)
cast v_conv_i_5_2482@uint32 v_conv5_i_4_2478@uint8;
(*   %and.i.5.2483 = and i32 %conv.i.5.2482, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_2483 v_conv_i_5_2482 (0x1)@uint32;
(*   %conv1.i.5.2484 = zext i8 %conv7.i.4.2481 to i32 *)
cast v_conv1_i_5_2484@uint32 v_conv7_i_4_2481@uint8;
(*   %mul.i.5.2485 = mul nsw i32 %and.i.5.2483, %conv1.i.5.2484 *)
mul v_mul_i_5_2485 v_and_i_5_2483 v_conv1_i_5_2484;
(*   %conv2.i.5.2486 = zext i8 %conv3.i.4.2475 to i32 *)
cast v_conv2_i_5_2486@uint32 v_conv3_i_4_2475@uint8;
(*   %xor.i.5.2487 = xor i32 %conv2.i.5.2486, %mul.i.5.2485 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_2487 v_conv2_i_5_2486 v_mul_i_5_2485;
(*   %conv3.i.5.2488 = trunc i32 %xor.i.5.2487 to i8 *)
split tmp_v_xor_i_5_2487 v_conv3_i_5_2488 v_xor_i_5_2487 8;
vpc v_conv3_i_5_2488@uint8 v_conv3_i_5_2488@uint32;
(*   %conv4.i.5.2489 = zext i8 %conv5.i.4.2478 to i32 *)
cast v_conv4_i_5_2489@uint32 v_conv5_i_4_2478@uint8;
(*   %shr.i.5.2490 = ashr i32 %conv4.i.5.2489, 1 *)
(* You may need to modify here *)
split v_shr_i_5_2490 tmp_to_be_used v_conv4_i_5_2489 1;
(*   %conv5.i.5.2491 = trunc i32 %shr.i.5.2490 to i8 *)
split tmp_v_shr_i_5_2490 v_conv5_i_5_2491 v_shr_i_5_2490 8;
vpc v_conv5_i_5_2491@uint8 v_conv5_i_5_2491@uint32;
(*   %conv6.i.5.2492 = zext i8 %conv7.i.4.2481 to i32 *)
cast v_conv6_i_5_2492@uint32 v_conv7_i_4_2481@uint8;
(*   %shl.i.5.2493 = shl i32 %conv6.i.5.2492, 1 *)
shls discard_103 v_shl_i_5_2493 v_conv6_i_5_2492 1;
(*   %conv7.i.5.2494 = trunc i32 %shl.i.5.2493 to i8 *)
split tmp_v_shl_i_5_2493 v_conv7_i_5_2494 v_shl_i_5_2493 8;
vpc v_conv7_i_5_2494@uint8 v_conv7_i_5_2494@uint32;
(*   %conv.i.6.2495 = zext i8 %conv5.i.5.2491 to i32 *)
cast v_conv_i_6_2495@uint32 v_conv5_i_5_2491@uint8;
(*   %and.i.6.2496 = and i32 %conv.i.6.2495, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_2496 v_conv_i_6_2495 (0x1)@uint32;
(*   %conv1.i.6.2497 = zext i8 %conv7.i.5.2494 to i32 *)
cast v_conv1_i_6_2497@uint32 v_conv7_i_5_2494@uint8;
(*   %mul.i.6.2498 = mul nsw i32 %and.i.6.2496, %conv1.i.6.2497 *)
mul v_mul_i_6_2498 v_and_i_6_2496 v_conv1_i_6_2497;
(*   %conv2.i.6.2499 = zext i8 %conv3.i.5.2488 to i32 *)
cast v_conv2_i_6_2499@uint32 v_conv3_i_5_2488@uint8;
(*   %xor.i.6.2500 = xor i32 %conv2.i.6.2499, %mul.i.6.2498 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_2500 v_conv2_i_6_2499 v_mul_i_6_2498;
(*   %conv3.i.6.2501 = trunc i32 %xor.i.6.2500 to i8 *)
split tmp_v_xor_i_6_2500 v_conv3_i_6_2501 v_xor_i_6_2500 8;
vpc v_conv3_i_6_2501@uint8 v_conv3_i_6_2501@uint32;
(*   %conv4.i.6.2502 = zext i8 %conv5.i.5.2491 to i32 *)
cast v_conv4_i_6_2502@uint32 v_conv5_i_5_2491@uint8;
(*   %shr.i.6.2503 = ashr i32 %conv4.i.6.2502, 1 *)
(* You may need to modify here *)
split v_shr_i_6_2503 tmp_to_be_used v_conv4_i_6_2502 1;
(*   %conv5.i.6.2504 = trunc i32 %shr.i.6.2503 to i8 *)
split tmp_v_shr_i_6_2503 v_conv5_i_6_2504 v_shr_i_6_2503 8;
vpc v_conv5_i_6_2504@uint8 v_conv5_i_6_2504@uint32;
(*   %conv6.i.6.2505 = zext i8 %conv7.i.5.2494 to i32 *)
cast v_conv6_i_6_2505@uint32 v_conv7_i_5_2494@uint8;
(*   %shl.i.6.2506 = shl i32 %conv6.i.6.2505, 1 *)
shls discard_104 v_shl_i_6_2506 v_conv6_i_6_2505 1;
(*   %conv7.i.6.2507 = trunc i32 %shl.i.6.2506 to i8 *)
split tmp_v_shl_i_6_2506 v_conv7_i_6_2507 v_shl_i_6_2506 8;
vpc v_conv7_i_6_2507@uint8 v_conv7_i_6_2507@uint32;
(*   %conv.i.7.2508 = zext i8 %conv5.i.6.2504 to i32 *)
cast v_conv_i_7_2508@uint32 v_conv5_i_6_2504@uint8;
(*   %and.i.7.2509 = and i32 %conv.i.7.2508, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_2509 v_conv_i_7_2508 (0x1)@uint32;
(*   %conv1.i.7.2510 = zext i8 %conv7.i.6.2507 to i32 *)
cast v_conv1_i_7_2510@uint32 v_conv7_i_6_2507@uint8;
(*   %mul.i.7.2511 = mul nsw i32 %and.i.7.2509, %conv1.i.7.2510 *)
mul v_mul_i_7_2511 v_and_i_7_2509 v_conv1_i_7_2510;
(*   %conv2.i.7.2512 = zext i8 %conv3.i.6.2501 to i32 *)
cast v_conv2_i_7_2512@uint32 v_conv3_i_6_2501@uint8;
(*   %xor.i.7.2513 = xor i32 %conv2.i.7.2512, %mul.i.7.2511 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_2513 v_conv2_i_7_2512 v_mul_i_7_2511;
(*   %conv3.i.7.2514 = trunc i32 %xor.i.7.2513 to i8 *)
split tmp_v_xor_i_7_2513 v_conv3_i_7_2514 v_xor_i_7_2513 8;
vpc v_conv3_i_7_2514@uint8 v_conv3_i_7_2514@uint32;
(*   %conv9.2517 = zext i8 %conv3.i.7.2514 to i32 *)
cast v_conv9_2517@uint32 v_conv3_i_7_2514@uint8;
(*   %xor.2518 = xor i32 %conv.2415, %conv9.2517 *)
(* You may need to modify here *)
xor uint32 v_xor_2518 v_conv_2415 v_conv9_2517;
(*   %arrayidx11.2520 = getelementptr inbounds i8, i8* %a, i64 3 *)
(*   %38 = load i8, i8* %arrayidx11.2520, align 1 *)
mov v38 a_3;
(*   %39 = load i8, i8* %arrayidx13.2, align 1 *)
mov v39 b_2;
(*   %conv.i71.2522 = zext i8 %39 to i32 *)
cast v_conv_i71_2522@uint32 v39@uint8;
(*   %and.i72.2523 = and i32 %conv.i71.2522, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_2523 v_conv_i71_2522 (0x1)@uint32;
(*   %conv1.i73.2524 = zext i8 %38 to i32 *)
cast v_conv1_i73_2524@uint32 v38@uint8;
(*   %mul.i74.2525 = mul nsw i32 %and.i72.2523, %conv1.i73.2524 *)
mul v_mul_i74_2525 v_and_i72_2523 v_conv1_i73_2524;
(*   %conv3.i77.2526 = trunc i32 %mul.i74.2525 to i8 *)
split tmp_v_mul_i74_2525 v_conv3_i77_2526 v_mul_i74_2525 8;
vpc v_conv3_i77_2526@uint8 v_conv3_i77_2526@uint32;
(*   %conv4.i78.2527 = zext i8 %39 to i32 *)
cast v_conv4_i78_2527@uint32 v39@uint8;
(*   %shr.i79.2528 = ashr i32 %conv4.i78.2527, 1 *)
(* You may need to modify here *)
split v_shr_i79_2528 tmp_to_be_used v_conv4_i78_2527 1;
(*   %conv5.i80.2529 = trunc i32 %shr.i79.2528 to i8 *)
split tmp_v_shr_i79_2528 v_conv5_i80_2529 v_shr_i79_2528 8;
vpc v_conv5_i80_2529@uint8 v_conv5_i80_2529@uint32;
(*   %conv6.i81.2530 = zext i8 %38 to i32 *)
cast v_conv6_i81_2530@uint32 v38@uint8;
(*   %shl.i82.2531 = shl i32 %conv6.i81.2530, 1 *)
shls discard_105 v_shl_i82_2531 v_conv6_i81_2530 1;
(*   %conv7.i83.2532 = trunc i32 %shl.i82.2531 to i8 *)
split tmp_v_shl_i82_2531 v_conv7_i83_2532 v_shl_i82_2531 8;
vpc v_conv7_i83_2532@uint8 v_conv7_i83_2532@uint32;
(*   %conv.i71.1.2533 = zext i8 %conv5.i80.2529 to i32 *)
cast v_conv_i71_1_2533@uint32 v_conv5_i80_2529@uint8;
(*   %and.i72.1.2534 = and i32 %conv.i71.1.2533, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_1_2534 v_conv_i71_1_2533 (0x1)@uint32;
(*   %conv1.i73.1.2535 = zext i8 %conv7.i83.2532 to i32 *)
cast v_conv1_i73_1_2535@uint32 v_conv7_i83_2532@uint8;
(*   %mul.i74.1.2536 = mul nsw i32 %and.i72.1.2534, %conv1.i73.1.2535 *)
mul v_mul_i74_1_2536 v_and_i72_1_2534 v_conv1_i73_1_2535;
(*   %conv2.i75.1.2537 = zext i8 %conv3.i77.2526 to i32 *)
cast v_conv2_i75_1_2537@uint32 v_conv3_i77_2526@uint8;
(*   %xor.i76.1.2538 = xor i32 %conv2.i75.1.2537, %mul.i74.1.2536 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_1_2538 v_conv2_i75_1_2537 v_mul_i74_1_2536;
(*   %conv3.i77.1.2539 = trunc i32 %xor.i76.1.2538 to i8 *)
split tmp_v_xor_i76_1_2538 v_conv3_i77_1_2539 v_xor_i76_1_2538 8;
vpc v_conv3_i77_1_2539@uint8 v_conv3_i77_1_2539@uint32;
(*   %conv4.i78.1.2540 = zext i8 %conv5.i80.2529 to i32 *)
cast v_conv4_i78_1_2540@uint32 v_conv5_i80_2529@uint8;
(*   %shr.i79.1.2541 = ashr i32 %conv4.i78.1.2540, 1 *)
(* You may need to modify here *)
split v_shr_i79_1_2541 tmp_to_be_used v_conv4_i78_1_2540 1;
(*   %conv5.i80.1.2542 = trunc i32 %shr.i79.1.2541 to i8 *)
split tmp_v_shr_i79_1_2541 v_conv5_i80_1_2542 v_shr_i79_1_2541 8;
vpc v_conv5_i80_1_2542@uint8 v_conv5_i80_1_2542@uint32;
(*   %conv6.i81.1.2543 = zext i8 %conv7.i83.2532 to i32 *)
cast v_conv6_i81_1_2543@uint32 v_conv7_i83_2532@uint8;
(*   %shl.i82.1.2544 = shl i32 %conv6.i81.1.2543, 1 *)
shls discard_106 v_shl_i82_1_2544 v_conv6_i81_1_2543 1;
(*   %conv7.i83.1.2545 = trunc i32 %shl.i82.1.2544 to i8 *)
split tmp_v_shl_i82_1_2544 v_conv7_i83_1_2545 v_shl_i82_1_2544 8;
vpc v_conv7_i83_1_2545@uint8 v_conv7_i83_1_2545@uint32;
(*   %conv.i71.2.2546 = zext i8 %conv5.i80.1.2542 to i32 *)
cast v_conv_i71_2_2546@uint32 v_conv5_i80_1_2542@uint8;
(*   %and.i72.2.2547 = and i32 %conv.i71.2.2546, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_2_2547 v_conv_i71_2_2546 (0x1)@uint32;
(*   %conv1.i73.2.2548 = zext i8 %conv7.i83.1.2545 to i32 *)
cast v_conv1_i73_2_2548@uint32 v_conv7_i83_1_2545@uint8;
(*   %mul.i74.2.2549 = mul nsw i32 %and.i72.2.2547, %conv1.i73.2.2548 *)
mul v_mul_i74_2_2549 v_and_i72_2_2547 v_conv1_i73_2_2548;
(*   %conv2.i75.2.2550 = zext i8 %conv3.i77.1.2539 to i32 *)
cast v_conv2_i75_2_2550@uint32 v_conv3_i77_1_2539@uint8;
(*   %xor.i76.2.2551 = xor i32 %conv2.i75.2.2550, %mul.i74.2.2549 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_2_2551 v_conv2_i75_2_2550 v_mul_i74_2_2549;
(*   %conv3.i77.2.2552 = trunc i32 %xor.i76.2.2551 to i8 *)
split tmp_v_xor_i76_2_2551 v_conv3_i77_2_2552 v_xor_i76_2_2551 8;
vpc v_conv3_i77_2_2552@uint8 v_conv3_i77_2_2552@uint32;
(*   %conv4.i78.2.2553 = zext i8 %conv5.i80.1.2542 to i32 *)
cast v_conv4_i78_2_2553@uint32 v_conv5_i80_1_2542@uint8;
(*   %shr.i79.2.2554 = ashr i32 %conv4.i78.2.2553, 1 *)
(* You may need to modify here *)
split v_shr_i79_2_2554 tmp_to_be_used v_conv4_i78_2_2553 1;
(*   %conv5.i80.2.2555 = trunc i32 %shr.i79.2.2554 to i8 *)
split tmp_v_shr_i79_2_2554 v_conv5_i80_2_2555 v_shr_i79_2_2554 8;
vpc v_conv5_i80_2_2555@uint8 v_conv5_i80_2_2555@uint32;
(*   %conv6.i81.2.2556 = zext i8 %conv7.i83.1.2545 to i32 *)
cast v_conv6_i81_2_2556@uint32 v_conv7_i83_1_2545@uint8;
(*   %shl.i82.2.2557 = shl i32 %conv6.i81.2.2556, 1 *)
shls discard_107 v_shl_i82_2_2557 v_conv6_i81_2_2556 1;
(*   %conv7.i83.2.2558 = trunc i32 %shl.i82.2.2557 to i8 *)
split tmp_v_shl_i82_2_2557 v_conv7_i83_2_2558 v_shl_i82_2_2557 8;
vpc v_conv7_i83_2_2558@uint8 v_conv7_i83_2_2558@uint32;
(*   %conv.i71.3.2559 = zext i8 %conv5.i80.2.2555 to i32 *)
cast v_conv_i71_3_2559@uint32 v_conv5_i80_2_2555@uint8;
(*   %and.i72.3.2560 = and i32 %conv.i71.3.2559, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_3_2560 v_conv_i71_3_2559 (0x1)@uint32;
(*   %conv1.i73.3.2561 = zext i8 %conv7.i83.2.2558 to i32 *)
cast v_conv1_i73_3_2561@uint32 v_conv7_i83_2_2558@uint8;
(*   %mul.i74.3.2562 = mul nsw i32 %and.i72.3.2560, %conv1.i73.3.2561 *)
mul v_mul_i74_3_2562 v_and_i72_3_2560 v_conv1_i73_3_2561;
(*   %conv2.i75.3.2563 = zext i8 %conv3.i77.2.2552 to i32 *)
cast v_conv2_i75_3_2563@uint32 v_conv3_i77_2_2552@uint8;
(*   %xor.i76.3.2564 = xor i32 %conv2.i75.3.2563, %mul.i74.3.2562 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_3_2564 v_conv2_i75_3_2563 v_mul_i74_3_2562;
(*   %conv3.i77.3.2565 = trunc i32 %xor.i76.3.2564 to i8 *)
split tmp_v_xor_i76_3_2564 v_conv3_i77_3_2565 v_xor_i76_3_2564 8;
vpc v_conv3_i77_3_2565@uint8 v_conv3_i77_3_2565@uint32;
(*   %conv4.i78.3.2566 = zext i8 %conv5.i80.2.2555 to i32 *)
cast v_conv4_i78_3_2566@uint32 v_conv5_i80_2_2555@uint8;
(*   %shr.i79.3.2567 = ashr i32 %conv4.i78.3.2566, 1 *)
(* You may need to modify here *)
split v_shr_i79_3_2567 tmp_to_be_used v_conv4_i78_3_2566 1;
(*   %conv5.i80.3.2568 = trunc i32 %shr.i79.3.2567 to i8 *)
split tmp_v_shr_i79_3_2567 v_conv5_i80_3_2568 v_shr_i79_3_2567 8;
vpc v_conv5_i80_3_2568@uint8 v_conv5_i80_3_2568@uint32;
(*   %conv6.i81.3.2569 = zext i8 %conv7.i83.2.2558 to i32 *)
cast v_conv6_i81_3_2569@uint32 v_conv7_i83_2_2558@uint8;
(*   %shl.i82.3.2570 = shl i32 %conv6.i81.3.2569, 1 *)
shls discard_108 v_shl_i82_3_2570 v_conv6_i81_3_2569 1;
(*   %conv7.i83.3.2571 = trunc i32 %shl.i82.3.2570 to i8 *)
split tmp_v_shl_i82_3_2570 v_conv7_i83_3_2571 v_shl_i82_3_2570 8;
vpc v_conv7_i83_3_2571@uint8 v_conv7_i83_3_2571@uint32;
(*   %conv.i71.4.2572 = zext i8 %conv5.i80.3.2568 to i32 *)
cast v_conv_i71_4_2572@uint32 v_conv5_i80_3_2568@uint8;
(*   %and.i72.4.2573 = and i32 %conv.i71.4.2572, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_4_2573 v_conv_i71_4_2572 (0x1)@uint32;
(*   %conv1.i73.4.2574 = zext i8 %conv7.i83.3.2571 to i32 *)
cast v_conv1_i73_4_2574@uint32 v_conv7_i83_3_2571@uint8;
(*   %mul.i74.4.2575 = mul nsw i32 %and.i72.4.2573, %conv1.i73.4.2574 *)
mul v_mul_i74_4_2575 v_and_i72_4_2573 v_conv1_i73_4_2574;
(*   %conv2.i75.4.2576 = zext i8 %conv3.i77.3.2565 to i32 *)
cast v_conv2_i75_4_2576@uint32 v_conv3_i77_3_2565@uint8;
(*   %xor.i76.4.2577 = xor i32 %conv2.i75.4.2576, %mul.i74.4.2575 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_4_2577 v_conv2_i75_4_2576 v_mul_i74_4_2575;
(*   %conv3.i77.4.2578 = trunc i32 %xor.i76.4.2577 to i8 *)
split tmp_v_xor_i76_4_2577 v_conv3_i77_4_2578 v_xor_i76_4_2577 8;
vpc v_conv3_i77_4_2578@uint8 v_conv3_i77_4_2578@uint32;
(*   %conv4.i78.4.2579 = zext i8 %conv5.i80.3.2568 to i32 *)
cast v_conv4_i78_4_2579@uint32 v_conv5_i80_3_2568@uint8;
(*   %shr.i79.4.2580 = ashr i32 %conv4.i78.4.2579, 1 *)
(* You may need to modify here *)
split v_shr_i79_4_2580 tmp_to_be_used v_conv4_i78_4_2579 1;
(*   %conv5.i80.4.2581 = trunc i32 %shr.i79.4.2580 to i8 *)
split tmp_v_shr_i79_4_2580 v_conv5_i80_4_2581 v_shr_i79_4_2580 8;
vpc v_conv5_i80_4_2581@uint8 v_conv5_i80_4_2581@uint32;
(*   %conv6.i81.4.2582 = zext i8 %conv7.i83.3.2571 to i32 *)
cast v_conv6_i81_4_2582@uint32 v_conv7_i83_3_2571@uint8;
(*   %shl.i82.4.2583 = shl i32 %conv6.i81.4.2582, 1 *)
shls discard_109 v_shl_i82_4_2583 v_conv6_i81_4_2582 1;
(*   %conv7.i83.4.2584 = trunc i32 %shl.i82.4.2583 to i8 *)
split tmp_v_shl_i82_4_2583 v_conv7_i83_4_2584 v_shl_i82_4_2583 8;
vpc v_conv7_i83_4_2584@uint8 v_conv7_i83_4_2584@uint32;
(*   %conv.i71.5.2585 = zext i8 %conv5.i80.4.2581 to i32 *)
cast v_conv_i71_5_2585@uint32 v_conv5_i80_4_2581@uint8;
(*   %and.i72.5.2586 = and i32 %conv.i71.5.2585, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_5_2586 v_conv_i71_5_2585 (0x1)@uint32;
(*   %conv1.i73.5.2587 = zext i8 %conv7.i83.4.2584 to i32 *)
cast v_conv1_i73_5_2587@uint32 v_conv7_i83_4_2584@uint8;
(*   %mul.i74.5.2588 = mul nsw i32 %and.i72.5.2586, %conv1.i73.5.2587 *)
mul v_mul_i74_5_2588 v_and_i72_5_2586 v_conv1_i73_5_2587;
(*   %conv2.i75.5.2589 = zext i8 %conv3.i77.4.2578 to i32 *)
cast v_conv2_i75_5_2589@uint32 v_conv3_i77_4_2578@uint8;
(*   %xor.i76.5.2590 = xor i32 %conv2.i75.5.2589, %mul.i74.5.2588 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_5_2590 v_conv2_i75_5_2589 v_mul_i74_5_2588;
(*   %conv3.i77.5.2591 = trunc i32 %xor.i76.5.2590 to i8 *)
split tmp_v_xor_i76_5_2590 v_conv3_i77_5_2591 v_xor_i76_5_2590 8;
vpc v_conv3_i77_5_2591@uint8 v_conv3_i77_5_2591@uint32;
(*   %conv4.i78.5.2592 = zext i8 %conv5.i80.4.2581 to i32 *)
cast v_conv4_i78_5_2592@uint32 v_conv5_i80_4_2581@uint8;
(*   %shr.i79.5.2593 = ashr i32 %conv4.i78.5.2592, 1 *)
(* You may need to modify here *)
split v_shr_i79_5_2593 tmp_to_be_used v_conv4_i78_5_2592 1;
(*   %conv5.i80.5.2594 = trunc i32 %shr.i79.5.2593 to i8 *)
split tmp_v_shr_i79_5_2593 v_conv5_i80_5_2594 v_shr_i79_5_2593 8;
vpc v_conv5_i80_5_2594@uint8 v_conv5_i80_5_2594@uint32;
(*   %conv6.i81.5.2595 = zext i8 %conv7.i83.4.2584 to i32 *)
cast v_conv6_i81_5_2595@uint32 v_conv7_i83_4_2584@uint8;
(*   %shl.i82.5.2596 = shl i32 %conv6.i81.5.2595, 1 *)
shls discard_110 v_shl_i82_5_2596 v_conv6_i81_5_2595 1;
(*   %conv7.i83.5.2597 = trunc i32 %shl.i82.5.2596 to i8 *)
split tmp_v_shl_i82_5_2596 v_conv7_i83_5_2597 v_shl_i82_5_2596 8;
vpc v_conv7_i83_5_2597@uint8 v_conv7_i83_5_2597@uint32;
(*   %conv.i71.6.2598 = zext i8 %conv5.i80.5.2594 to i32 *)
cast v_conv_i71_6_2598@uint32 v_conv5_i80_5_2594@uint8;
(*   %and.i72.6.2599 = and i32 %conv.i71.6.2598, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_6_2599 v_conv_i71_6_2598 (0x1)@uint32;
(*   %conv1.i73.6.2600 = zext i8 %conv7.i83.5.2597 to i32 *)
cast v_conv1_i73_6_2600@uint32 v_conv7_i83_5_2597@uint8;
(*   %mul.i74.6.2601 = mul nsw i32 %and.i72.6.2599, %conv1.i73.6.2600 *)
mul v_mul_i74_6_2601 v_and_i72_6_2599 v_conv1_i73_6_2600;
(*   %conv2.i75.6.2602 = zext i8 %conv3.i77.5.2591 to i32 *)
cast v_conv2_i75_6_2602@uint32 v_conv3_i77_5_2591@uint8;
(*   %xor.i76.6.2603 = xor i32 %conv2.i75.6.2602, %mul.i74.6.2601 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_6_2603 v_conv2_i75_6_2602 v_mul_i74_6_2601;
(*   %conv3.i77.6.2604 = trunc i32 %xor.i76.6.2603 to i8 *)
split tmp_v_xor_i76_6_2603 v_conv3_i77_6_2604 v_xor_i76_6_2603 8;
vpc v_conv3_i77_6_2604@uint8 v_conv3_i77_6_2604@uint32;
(*   %conv4.i78.6.2605 = zext i8 %conv5.i80.5.2594 to i32 *)
cast v_conv4_i78_6_2605@uint32 v_conv5_i80_5_2594@uint8;
(*   %shr.i79.6.2606 = ashr i32 %conv4.i78.6.2605, 1 *)
(* You may need to modify here *)
split v_shr_i79_6_2606 tmp_to_be_used v_conv4_i78_6_2605 1;
(*   %conv5.i80.6.2607 = trunc i32 %shr.i79.6.2606 to i8 *)
split tmp_v_shr_i79_6_2606 v_conv5_i80_6_2607 v_shr_i79_6_2606 8;
vpc v_conv5_i80_6_2607@uint8 v_conv5_i80_6_2607@uint32;
(*   %conv6.i81.6.2608 = zext i8 %conv7.i83.5.2597 to i32 *)
cast v_conv6_i81_6_2608@uint32 v_conv7_i83_5_2597@uint8;
(*   %shl.i82.6.2609 = shl i32 %conv6.i81.6.2608, 1 *)
shls discard_111 v_shl_i82_6_2609 v_conv6_i81_6_2608 1;
(*   %conv7.i83.6.2610 = trunc i32 %shl.i82.6.2609 to i8 *)
split tmp_v_shl_i82_6_2609 v_conv7_i83_6_2610 v_shl_i82_6_2609 8;
vpc v_conv7_i83_6_2610@uint8 v_conv7_i83_6_2610@uint32;
(*   %conv.i71.7.2611 = zext i8 %conv5.i80.6.2607 to i32 *)
cast v_conv_i71_7_2611@uint32 v_conv5_i80_6_2607@uint8;
(*   %and.i72.7.2612 = and i32 %conv.i71.7.2611, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_7_2612 v_conv_i71_7_2611 (0x1)@uint32;
(*   %conv1.i73.7.2613 = zext i8 %conv7.i83.6.2610 to i32 *)
cast v_conv1_i73_7_2613@uint32 v_conv7_i83_6_2610@uint8;
(*   %mul.i74.7.2614 = mul nsw i32 %and.i72.7.2612, %conv1.i73.7.2613 *)
mul v_mul_i74_7_2614 v_and_i72_7_2612 v_conv1_i73_7_2613;
(*   %conv2.i75.7.2615 = zext i8 %conv3.i77.6.2604 to i32 *)
cast v_conv2_i75_7_2615@uint32 v_conv3_i77_6_2604@uint8;
(*   %xor.i76.7.2616 = xor i32 %conv2.i75.7.2615, %mul.i74.7.2614 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_7_2616 v_conv2_i75_7_2615 v_mul_i74_7_2614;
(*   %conv3.i77.7.2617 = trunc i32 %xor.i76.7.2616 to i8 *)
split tmp_v_xor_i76_7_2616 v_conv3_i77_7_2617 v_xor_i76_7_2616 8;
vpc v_conv3_i77_7_2617@uint8 v_conv3_i77_7_2617@uint32;
(*   %conv15.2620 = zext i8 %conv3.i77.7.2617 to i32 *)
cast v_conv15_2620@uint32 v_conv3_i77_7_2617@uint8;
(*   %xor16.2621 = xor i32 %xor.2518, %conv15.2620 *)
(* You may need to modify here *)
xor uint32 v_xor16_2621 v_xor_2518 v_conv15_2620;
(*   %conv17.2622 = trunc i32 %xor16.2621 to i8 *)
split tmp_v_xor16_2621 v_conv17_2622 v_xor16_2621 8;
vpc v_conv17_2622@uint8 v_conv17_2622@uint32;
(*   %arrayidx21.2626 = getelementptr inbounds i8, i8* %r, i64 17 *)
(*   store i8 %conv17.2622, i8* %arrayidx21.2626, align 1 *)
mov r_17 v_conv17_2622;
(*   %arrayidx.1.2 = getelementptr inbounds i8, i8* %r, i64 14 *)
(*   %40 = load i8, i8* %arrayidx.1.2, align 1 *)
mov v40 r_14;
(*   %conv.1.2 = zext i8 %40 to i32 *)
cast v_conv_1_2@uint32 v40@uint8;
(*   %41 = load i8, i8* %arrayidx6.2, align 1 *)
mov v41 a_2;
(*   %arrayidx8.1.2 = getelementptr inbounds i8, i8* %b, i64 4 *)
(*   %42 = load i8, i8* %arrayidx8.1.2, align 1 *)
mov v42 b_4;
(*   %conv.i.1127.2 = zext i8 %42 to i32 *)
cast v_conv_i_1127_2@uint32 v42@uint8;
(*   %and.i.1128.2 = and i32 %conv.i.1127.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1128_2 v_conv_i_1127_2 (0x1)@uint32;
(*   %conv1.i.1129.2 = zext i8 %41 to i32 *)
cast v_conv1_i_1129_2@uint32 v41@uint8;
(*   %mul.i.1130.2 = mul nsw i32 %and.i.1128.2, %conv1.i.1129.2 *)
mul v_mul_i_1130_2 v_and_i_1128_2 v_conv1_i_1129_2;
(*   %conv3.i.1131.2 = trunc i32 %mul.i.1130.2 to i8 *)
split tmp_v_mul_i_1130_2 v_conv3_i_1131_2 v_mul_i_1130_2 8;
vpc v_conv3_i_1131_2@uint8 v_conv3_i_1131_2@uint32;
(*   %conv4.i.1132.2 = zext i8 %42 to i32 *)
cast v_conv4_i_1132_2@uint32 v42@uint8;
(*   %shr.i.1133.2 = ashr i32 %conv4.i.1132.2, 1 *)
(* You may need to modify here *)
split v_shr_i_1133_2 tmp_to_be_used v_conv4_i_1132_2 1;
(*   %conv5.i.1134.2 = trunc i32 %shr.i.1133.2 to i8 *)
split tmp_v_shr_i_1133_2 v_conv5_i_1134_2 v_shr_i_1133_2 8;
vpc v_conv5_i_1134_2@uint8 v_conv5_i_1134_2@uint32;
(*   %conv6.i.1135.2 = zext i8 %41 to i32 *)
cast v_conv6_i_1135_2@uint32 v41@uint8;
(*   %shl.i.1136.2 = shl i32 %conv6.i.1135.2, 1 *)
shls discard_112 v_shl_i_1136_2 v_conv6_i_1135_2 1;
(*   %conv7.i.1137.2 = trunc i32 %shl.i.1136.2 to i8 *)
split tmp_v_shl_i_1136_2 v_conv7_i_1137_2 v_shl_i_1136_2 8;
vpc v_conv7_i_1137_2@uint8 v_conv7_i_1137_2@uint32;
(*   %conv.i.1.1.2 = zext i8 %conv5.i.1134.2 to i32 *)
cast v_conv_i_1_1_2@uint32 v_conv5_i_1134_2@uint8;
(*   %and.i.1.1.2 = and i32 %conv.i.1.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_1_2 v_conv_i_1_1_2 (0x1)@uint32;
(*   %conv1.i.1.1.2 = zext i8 %conv7.i.1137.2 to i32 *)
cast v_conv1_i_1_1_2@uint32 v_conv7_i_1137_2@uint8;
(*   %mul.i.1.1.2 = mul nsw i32 %and.i.1.1.2, %conv1.i.1.1.2 *)
mul v_mul_i_1_1_2 v_and_i_1_1_2 v_conv1_i_1_1_2;
(*   %conv2.i.1.1.2 = zext i8 %conv3.i.1131.2 to i32 *)
cast v_conv2_i_1_1_2@uint32 v_conv3_i_1131_2@uint8;
(*   %xor.i.1.1.2 = xor i32 %conv2.i.1.1.2, %mul.i.1.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_1_2 v_conv2_i_1_1_2 v_mul_i_1_1_2;
(*   %conv3.i.1.1.2 = trunc i32 %xor.i.1.1.2 to i8 *)
split tmp_v_xor_i_1_1_2 v_conv3_i_1_1_2 v_xor_i_1_1_2 8;
vpc v_conv3_i_1_1_2@uint8 v_conv3_i_1_1_2@uint32;
(*   %conv4.i.1.1.2 = zext i8 %conv5.i.1134.2 to i32 *)
cast v_conv4_i_1_1_2@uint32 v_conv5_i_1134_2@uint8;
(*   %shr.i.1.1.2 = ashr i32 %conv4.i.1.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_1_1_2 tmp_to_be_used v_conv4_i_1_1_2 1;
(*   %conv5.i.1.1.2 = trunc i32 %shr.i.1.1.2 to i8 *)
split tmp_v_shr_i_1_1_2 v_conv5_i_1_1_2 v_shr_i_1_1_2 8;
vpc v_conv5_i_1_1_2@uint8 v_conv5_i_1_1_2@uint32;
(*   %conv6.i.1.1.2 = zext i8 %conv7.i.1137.2 to i32 *)
cast v_conv6_i_1_1_2@uint32 v_conv7_i_1137_2@uint8;
(*   %shl.i.1.1.2 = shl i32 %conv6.i.1.1.2, 1 *)
shls discard_113 v_shl_i_1_1_2 v_conv6_i_1_1_2 1;
(*   %conv7.i.1.1.2 = trunc i32 %shl.i.1.1.2 to i8 *)
split tmp_v_shl_i_1_1_2 v_conv7_i_1_1_2 v_shl_i_1_1_2 8;
vpc v_conv7_i_1_1_2@uint8 v_conv7_i_1_1_2@uint32;
(*   %conv.i.2.1.2 = zext i8 %conv5.i.1.1.2 to i32 *)
cast v_conv_i_2_1_2@uint32 v_conv5_i_1_1_2@uint8;
(*   %and.i.2.1.2 = and i32 %conv.i.2.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_1_2 v_conv_i_2_1_2 (0x1)@uint32;
(*   %conv1.i.2.1.2 = zext i8 %conv7.i.1.1.2 to i32 *)
cast v_conv1_i_2_1_2@uint32 v_conv7_i_1_1_2@uint8;
(*   %mul.i.2.1.2 = mul nsw i32 %and.i.2.1.2, %conv1.i.2.1.2 *)
mul v_mul_i_2_1_2 v_and_i_2_1_2 v_conv1_i_2_1_2;
(*   %conv2.i.2.1.2 = zext i8 %conv3.i.1.1.2 to i32 *)
cast v_conv2_i_2_1_2@uint32 v_conv3_i_1_1_2@uint8;
(*   %xor.i.2.1.2 = xor i32 %conv2.i.2.1.2, %mul.i.2.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_1_2 v_conv2_i_2_1_2 v_mul_i_2_1_2;
(*   %conv3.i.2.1.2 = trunc i32 %xor.i.2.1.2 to i8 *)
split tmp_v_xor_i_2_1_2 v_conv3_i_2_1_2 v_xor_i_2_1_2 8;
vpc v_conv3_i_2_1_2@uint8 v_conv3_i_2_1_2@uint32;
(*   %conv4.i.2.1.2 = zext i8 %conv5.i.1.1.2 to i32 *)
cast v_conv4_i_2_1_2@uint32 v_conv5_i_1_1_2@uint8;
(*   %shr.i.2.1.2 = ashr i32 %conv4.i.2.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_2_1_2 tmp_to_be_used v_conv4_i_2_1_2 1;
(*   %conv5.i.2.1.2 = trunc i32 %shr.i.2.1.2 to i8 *)
split tmp_v_shr_i_2_1_2 v_conv5_i_2_1_2 v_shr_i_2_1_2 8;
vpc v_conv5_i_2_1_2@uint8 v_conv5_i_2_1_2@uint32;
(*   %conv6.i.2.1.2 = zext i8 %conv7.i.1.1.2 to i32 *)
cast v_conv6_i_2_1_2@uint32 v_conv7_i_1_1_2@uint8;
(*   %shl.i.2.1.2 = shl i32 %conv6.i.2.1.2, 1 *)
shls discard_114 v_shl_i_2_1_2 v_conv6_i_2_1_2 1;
(*   %conv7.i.2.1.2 = trunc i32 %shl.i.2.1.2 to i8 *)
split tmp_v_shl_i_2_1_2 v_conv7_i_2_1_2 v_shl_i_2_1_2 8;
vpc v_conv7_i_2_1_2@uint8 v_conv7_i_2_1_2@uint32;
(*   %conv.i.3.1.2 = zext i8 %conv5.i.2.1.2 to i32 *)
cast v_conv_i_3_1_2@uint32 v_conv5_i_2_1_2@uint8;
(*   %and.i.3.1.2 = and i32 %conv.i.3.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_1_2 v_conv_i_3_1_2 (0x1)@uint32;
(*   %conv1.i.3.1.2 = zext i8 %conv7.i.2.1.2 to i32 *)
cast v_conv1_i_3_1_2@uint32 v_conv7_i_2_1_2@uint8;
(*   %mul.i.3.1.2 = mul nsw i32 %and.i.3.1.2, %conv1.i.3.1.2 *)
mul v_mul_i_3_1_2 v_and_i_3_1_2 v_conv1_i_3_1_2;
(*   %conv2.i.3.1.2 = zext i8 %conv3.i.2.1.2 to i32 *)
cast v_conv2_i_3_1_2@uint32 v_conv3_i_2_1_2@uint8;
(*   %xor.i.3.1.2 = xor i32 %conv2.i.3.1.2, %mul.i.3.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_1_2 v_conv2_i_3_1_2 v_mul_i_3_1_2;
(*   %conv3.i.3.1.2 = trunc i32 %xor.i.3.1.2 to i8 *)
split tmp_v_xor_i_3_1_2 v_conv3_i_3_1_2 v_xor_i_3_1_2 8;
vpc v_conv3_i_3_1_2@uint8 v_conv3_i_3_1_2@uint32;
(*   %conv4.i.3.1.2 = zext i8 %conv5.i.2.1.2 to i32 *)
cast v_conv4_i_3_1_2@uint32 v_conv5_i_2_1_2@uint8;
(*   %shr.i.3.1.2 = ashr i32 %conv4.i.3.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_3_1_2 tmp_to_be_used v_conv4_i_3_1_2 1;
(*   %conv5.i.3.1.2 = trunc i32 %shr.i.3.1.2 to i8 *)
split tmp_v_shr_i_3_1_2 v_conv5_i_3_1_2 v_shr_i_3_1_2 8;
vpc v_conv5_i_3_1_2@uint8 v_conv5_i_3_1_2@uint32;
(*   %conv6.i.3.1.2 = zext i8 %conv7.i.2.1.2 to i32 *)
cast v_conv6_i_3_1_2@uint32 v_conv7_i_2_1_2@uint8;
(*   %shl.i.3.1.2 = shl i32 %conv6.i.3.1.2, 1 *)
shls discard_115 v_shl_i_3_1_2 v_conv6_i_3_1_2 1;
(*   %conv7.i.3.1.2 = trunc i32 %shl.i.3.1.2 to i8 *)
split tmp_v_shl_i_3_1_2 v_conv7_i_3_1_2 v_shl_i_3_1_2 8;
vpc v_conv7_i_3_1_2@uint8 v_conv7_i_3_1_2@uint32;
(*   %conv.i.4.1.2 = zext i8 %conv5.i.3.1.2 to i32 *)
cast v_conv_i_4_1_2@uint32 v_conv5_i_3_1_2@uint8;
(*   %and.i.4.1.2 = and i32 %conv.i.4.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_1_2 v_conv_i_4_1_2 (0x1)@uint32;
(*   %conv1.i.4.1.2 = zext i8 %conv7.i.3.1.2 to i32 *)
cast v_conv1_i_4_1_2@uint32 v_conv7_i_3_1_2@uint8;
(*   %mul.i.4.1.2 = mul nsw i32 %and.i.4.1.2, %conv1.i.4.1.2 *)
mul v_mul_i_4_1_2 v_and_i_4_1_2 v_conv1_i_4_1_2;
(*   %conv2.i.4.1.2 = zext i8 %conv3.i.3.1.2 to i32 *)
cast v_conv2_i_4_1_2@uint32 v_conv3_i_3_1_2@uint8;
(*   %xor.i.4.1.2 = xor i32 %conv2.i.4.1.2, %mul.i.4.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_1_2 v_conv2_i_4_1_2 v_mul_i_4_1_2;
(*   %conv3.i.4.1.2 = trunc i32 %xor.i.4.1.2 to i8 *)
split tmp_v_xor_i_4_1_2 v_conv3_i_4_1_2 v_xor_i_4_1_2 8;
vpc v_conv3_i_4_1_2@uint8 v_conv3_i_4_1_2@uint32;
(*   %conv4.i.4.1.2 = zext i8 %conv5.i.3.1.2 to i32 *)
cast v_conv4_i_4_1_2@uint32 v_conv5_i_3_1_2@uint8;
(*   %shr.i.4.1.2 = ashr i32 %conv4.i.4.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_4_1_2 tmp_to_be_used v_conv4_i_4_1_2 1;
(*   %conv5.i.4.1.2 = trunc i32 %shr.i.4.1.2 to i8 *)
split tmp_v_shr_i_4_1_2 v_conv5_i_4_1_2 v_shr_i_4_1_2 8;
vpc v_conv5_i_4_1_2@uint8 v_conv5_i_4_1_2@uint32;
(*   %conv6.i.4.1.2 = zext i8 %conv7.i.3.1.2 to i32 *)
cast v_conv6_i_4_1_2@uint32 v_conv7_i_3_1_2@uint8;
(*   %shl.i.4.1.2 = shl i32 %conv6.i.4.1.2, 1 *)
shls discard_116 v_shl_i_4_1_2 v_conv6_i_4_1_2 1;
(*   %conv7.i.4.1.2 = trunc i32 %shl.i.4.1.2 to i8 *)
split tmp_v_shl_i_4_1_2 v_conv7_i_4_1_2 v_shl_i_4_1_2 8;
vpc v_conv7_i_4_1_2@uint8 v_conv7_i_4_1_2@uint32;
(*   %conv.i.5.1.2 = zext i8 %conv5.i.4.1.2 to i32 *)
cast v_conv_i_5_1_2@uint32 v_conv5_i_4_1_2@uint8;
(*   %and.i.5.1.2 = and i32 %conv.i.5.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_1_2 v_conv_i_5_1_2 (0x1)@uint32;
(*   %conv1.i.5.1.2 = zext i8 %conv7.i.4.1.2 to i32 *)
cast v_conv1_i_5_1_2@uint32 v_conv7_i_4_1_2@uint8;
(*   %mul.i.5.1.2 = mul nsw i32 %and.i.5.1.2, %conv1.i.5.1.2 *)
mul v_mul_i_5_1_2 v_and_i_5_1_2 v_conv1_i_5_1_2;
(*   %conv2.i.5.1.2 = zext i8 %conv3.i.4.1.2 to i32 *)
cast v_conv2_i_5_1_2@uint32 v_conv3_i_4_1_2@uint8;
(*   %xor.i.5.1.2 = xor i32 %conv2.i.5.1.2, %mul.i.5.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_1_2 v_conv2_i_5_1_2 v_mul_i_5_1_2;
(*   %conv3.i.5.1.2 = trunc i32 %xor.i.5.1.2 to i8 *)
split tmp_v_xor_i_5_1_2 v_conv3_i_5_1_2 v_xor_i_5_1_2 8;
vpc v_conv3_i_5_1_2@uint8 v_conv3_i_5_1_2@uint32;
(*   %conv4.i.5.1.2 = zext i8 %conv5.i.4.1.2 to i32 *)
cast v_conv4_i_5_1_2@uint32 v_conv5_i_4_1_2@uint8;
(*   %shr.i.5.1.2 = ashr i32 %conv4.i.5.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_5_1_2 tmp_to_be_used v_conv4_i_5_1_2 1;
(*   %conv5.i.5.1.2 = trunc i32 %shr.i.5.1.2 to i8 *)
split tmp_v_shr_i_5_1_2 v_conv5_i_5_1_2 v_shr_i_5_1_2 8;
vpc v_conv5_i_5_1_2@uint8 v_conv5_i_5_1_2@uint32;
(*   %conv6.i.5.1.2 = zext i8 %conv7.i.4.1.2 to i32 *)
cast v_conv6_i_5_1_2@uint32 v_conv7_i_4_1_2@uint8;
(*   %shl.i.5.1.2 = shl i32 %conv6.i.5.1.2, 1 *)
shls discard_117 v_shl_i_5_1_2 v_conv6_i_5_1_2 1;
(*   %conv7.i.5.1.2 = trunc i32 %shl.i.5.1.2 to i8 *)
split tmp_v_shl_i_5_1_2 v_conv7_i_5_1_2 v_shl_i_5_1_2 8;
vpc v_conv7_i_5_1_2@uint8 v_conv7_i_5_1_2@uint32;
(*   %conv.i.6.1.2 = zext i8 %conv5.i.5.1.2 to i32 *)
cast v_conv_i_6_1_2@uint32 v_conv5_i_5_1_2@uint8;
(*   %and.i.6.1.2 = and i32 %conv.i.6.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_1_2 v_conv_i_6_1_2 (0x1)@uint32;
(*   %conv1.i.6.1.2 = zext i8 %conv7.i.5.1.2 to i32 *)
cast v_conv1_i_6_1_2@uint32 v_conv7_i_5_1_2@uint8;
(*   %mul.i.6.1.2 = mul nsw i32 %and.i.6.1.2, %conv1.i.6.1.2 *)
mul v_mul_i_6_1_2 v_and_i_6_1_2 v_conv1_i_6_1_2;
(*   %conv2.i.6.1.2 = zext i8 %conv3.i.5.1.2 to i32 *)
cast v_conv2_i_6_1_2@uint32 v_conv3_i_5_1_2@uint8;
(*   %xor.i.6.1.2 = xor i32 %conv2.i.6.1.2, %mul.i.6.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_1_2 v_conv2_i_6_1_2 v_mul_i_6_1_2;
(*   %conv3.i.6.1.2 = trunc i32 %xor.i.6.1.2 to i8 *)
split tmp_v_xor_i_6_1_2 v_conv3_i_6_1_2 v_xor_i_6_1_2 8;
vpc v_conv3_i_6_1_2@uint8 v_conv3_i_6_1_2@uint32;
(*   %conv4.i.6.1.2 = zext i8 %conv5.i.5.1.2 to i32 *)
cast v_conv4_i_6_1_2@uint32 v_conv5_i_5_1_2@uint8;
(*   %shr.i.6.1.2 = ashr i32 %conv4.i.6.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_6_1_2 tmp_to_be_used v_conv4_i_6_1_2 1;
(*   %conv5.i.6.1.2 = trunc i32 %shr.i.6.1.2 to i8 *)
split tmp_v_shr_i_6_1_2 v_conv5_i_6_1_2 v_shr_i_6_1_2 8;
vpc v_conv5_i_6_1_2@uint8 v_conv5_i_6_1_2@uint32;
(*   %conv6.i.6.1.2 = zext i8 %conv7.i.5.1.2 to i32 *)
cast v_conv6_i_6_1_2@uint32 v_conv7_i_5_1_2@uint8;
(*   %shl.i.6.1.2 = shl i32 %conv6.i.6.1.2, 1 *)
shls discard_118 v_shl_i_6_1_2 v_conv6_i_6_1_2 1;
(*   %conv7.i.6.1.2 = trunc i32 %shl.i.6.1.2 to i8 *)
split tmp_v_shl_i_6_1_2 v_conv7_i_6_1_2 v_shl_i_6_1_2 8;
vpc v_conv7_i_6_1_2@uint8 v_conv7_i_6_1_2@uint32;
(*   %conv.i.7.1.2 = zext i8 %conv5.i.6.1.2 to i32 *)
cast v_conv_i_7_1_2@uint32 v_conv5_i_6_1_2@uint8;
(*   %and.i.7.1.2 = and i32 %conv.i.7.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_1_2 v_conv_i_7_1_2 (0x1)@uint32;
(*   %conv1.i.7.1.2 = zext i8 %conv7.i.6.1.2 to i32 *)
cast v_conv1_i_7_1_2@uint32 v_conv7_i_6_1_2@uint8;
(*   %mul.i.7.1.2 = mul nsw i32 %and.i.7.1.2, %conv1.i.7.1.2 *)
mul v_mul_i_7_1_2 v_and_i_7_1_2 v_conv1_i_7_1_2;
(*   %conv2.i.7.1.2 = zext i8 %conv3.i.6.1.2 to i32 *)
cast v_conv2_i_7_1_2@uint32 v_conv3_i_6_1_2@uint8;
(*   %xor.i.7.1.2 = xor i32 %conv2.i.7.1.2, %mul.i.7.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_1_2 v_conv2_i_7_1_2 v_mul_i_7_1_2;
(*   %conv3.i.7.1.2 = trunc i32 %xor.i.7.1.2 to i8 *)
split tmp_v_xor_i_7_1_2 v_conv3_i_7_1_2 v_xor_i_7_1_2 8;
vpc v_conv3_i_7_1_2@uint8 v_conv3_i_7_1_2@uint32;
(*   %conv9.1.2 = zext i8 %conv3.i.7.1.2 to i32 *)
cast v_conv9_1_2@uint32 v_conv3_i_7_1_2@uint8;
(*   %xor.1.2 = xor i32 %conv.1.2, %conv9.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_1_2 v_conv_1_2 v_conv9_1_2;
(*   %arrayidx11.1.2 = getelementptr inbounds i8, i8* %a, i64 4 *)
(*   %43 = load i8, i8* %arrayidx11.1.2, align 1 *)
mov v43 a_4;
(*   %44 = load i8, i8* %arrayidx13.2, align 1 *)
mov v44 b_2;
(*   %conv.i71.1138.2 = zext i8 %44 to i32 *)
cast v_conv_i71_1138_2@uint32 v44@uint8;
(*   %and.i72.1139.2 = and i32 %conv.i71.1138.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_1139_2 v_conv_i71_1138_2 (0x1)@uint32;
(*   %conv1.i73.1140.2 = zext i8 %43 to i32 *)
cast v_conv1_i73_1140_2@uint32 v43@uint8;
(*   %mul.i74.1141.2 = mul nsw i32 %and.i72.1139.2, %conv1.i73.1140.2 *)
mul v_mul_i74_1141_2 v_and_i72_1139_2 v_conv1_i73_1140_2;
(*   %conv3.i77.1142.2 = trunc i32 %mul.i74.1141.2 to i8 *)
split tmp_v_mul_i74_1141_2 v_conv3_i77_1142_2 v_mul_i74_1141_2 8;
vpc v_conv3_i77_1142_2@uint8 v_conv3_i77_1142_2@uint32;
(*   %conv4.i78.1143.2 = zext i8 %44 to i32 *)
cast v_conv4_i78_1143_2@uint32 v44@uint8;
(*   %shr.i79.1144.2 = ashr i32 %conv4.i78.1143.2, 1 *)
(* You may need to modify here *)
split v_shr_i79_1144_2 tmp_to_be_used v_conv4_i78_1143_2 1;
(*   %conv5.i80.1145.2 = trunc i32 %shr.i79.1144.2 to i8 *)
split tmp_v_shr_i79_1144_2 v_conv5_i80_1145_2 v_shr_i79_1144_2 8;
vpc v_conv5_i80_1145_2@uint8 v_conv5_i80_1145_2@uint32;
(*   %conv6.i81.1146.2 = zext i8 %43 to i32 *)
cast v_conv6_i81_1146_2@uint32 v43@uint8;
(*   %shl.i82.1147.2 = shl i32 %conv6.i81.1146.2, 1 *)
shls discard_119 v_shl_i82_1147_2 v_conv6_i81_1146_2 1;
(*   %conv7.i83.1148.2 = trunc i32 %shl.i82.1147.2 to i8 *)
split tmp_v_shl_i82_1147_2 v_conv7_i83_1148_2 v_shl_i82_1147_2 8;
vpc v_conv7_i83_1148_2@uint8 v_conv7_i83_1148_2@uint32;
(*   %conv.i71.1.1.2 = zext i8 %conv5.i80.1145.2 to i32 *)
cast v_conv_i71_1_1_2@uint32 v_conv5_i80_1145_2@uint8;
(*   %and.i72.1.1.2 = and i32 %conv.i71.1.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_1_1_2 v_conv_i71_1_1_2 (0x1)@uint32;
(*   %conv1.i73.1.1.2 = zext i8 %conv7.i83.1148.2 to i32 *)
cast v_conv1_i73_1_1_2@uint32 v_conv7_i83_1148_2@uint8;
(*   %mul.i74.1.1.2 = mul nsw i32 %and.i72.1.1.2, %conv1.i73.1.1.2 *)
mul v_mul_i74_1_1_2 v_and_i72_1_1_2 v_conv1_i73_1_1_2;
(*   %conv2.i75.1.1.2 = zext i8 %conv3.i77.1142.2 to i32 *)
cast v_conv2_i75_1_1_2@uint32 v_conv3_i77_1142_2@uint8;
(*   %xor.i76.1.1.2 = xor i32 %conv2.i75.1.1.2, %mul.i74.1.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_1_1_2 v_conv2_i75_1_1_2 v_mul_i74_1_1_2;
(*   %conv3.i77.1.1.2 = trunc i32 %xor.i76.1.1.2 to i8 *)
split tmp_v_xor_i76_1_1_2 v_conv3_i77_1_1_2 v_xor_i76_1_1_2 8;
vpc v_conv3_i77_1_1_2@uint8 v_conv3_i77_1_1_2@uint32;
(*   %conv4.i78.1.1.2 = zext i8 %conv5.i80.1145.2 to i32 *)
cast v_conv4_i78_1_1_2@uint32 v_conv5_i80_1145_2@uint8;
(*   %shr.i79.1.1.2 = ashr i32 %conv4.i78.1.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i79_1_1_2 tmp_to_be_used v_conv4_i78_1_1_2 1;
(*   %conv5.i80.1.1.2 = trunc i32 %shr.i79.1.1.2 to i8 *)
split tmp_v_shr_i79_1_1_2 v_conv5_i80_1_1_2 v_shr_i79_1_1_2 8;
vpc v_conv5_i80_1_1_2@uint8 v_conv5_i80_1_1_2@uint32;
(*   %conv6.i81.1.1.2 = zext i8 %conv7.i83.1148.2 to i32 *)
cast v_conv6_i81_1_1_2@uint32 v_conv7_i83_1148_2@uint8;
(*   %shl.i82.1.1.2 = shl i32 %conv6.i81.1.1.2, 1 *)
shls discard_120 v_shl_i82_1_1_2 v_conv6_i81_1_1_2 1;
(*   %conv7.i83.1.1.2 = trunc i32 %shl.i82.1.1.2 to i8 *)
split tmp_v_shl_i82_1_1_2 v_conv7_i83_1_1_2 v_shl_i82_1_1_2 8;
vpc v_conv7_i83_1_1_2@uint8 v_conv7_i83_1_1_2@uint32;
(*   %conv.i71.2.1.2 = zext i8 %conv5.i80.1.1.2 to i32 *)
cast v_conv_i71_2_1_2@uint32 v_conv5_i80_1_1_2@uint8;
(*   %and.i72.2.1.2 = and i32 %conv.i71.2.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_2_1_2 v_conv_i71_2_1_2 (0x1)@uint32;
(*   %conv1.i73.2.1.2 = zext i8 %conv7.i83.1.1.2 to i32 *)
cast v_conv1_i73_2_1_2@uint32 v_conv7_i83_1_1_2@uint8;
(*   %mul.i74.2.1.2 = mul nsw i32 %and.i72.2.1.2, %conv1.i73.2.1.2 *)
mul v_mul_i74_2_1_2 v_and_i72_2_1_2 v_conv1_i73_2_1_2;
(*   %conv2.i75.2.1.2 = zext i8 %conv3.i77.1.1.2 to i32 *)
cast v_conv2_i75_2_1_2@uint32 v_conv3_i77_1_1_2@uint8;
(*   %xor.i76.2.1.2 = xor i32 %conv2.i75.2.1.2, %mul.i74.2.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_2_1_2 v_conv2_i75_2_1_2 v_mul_i74_2_1_2;
(*   %conv3.i77.2.1.2 = trunc i32 %xor.i76.2.1.2 to i8 *)
split tmp_v_xor_i76_2_1_2 v_conv3_i77_2_1_2 v_xor_i76_2_1_2 8;
vpc v_conv3_i77_2_1_2@uint8 v_conv3_i77_2_1_2@uint32;
(*   %conv4.i78.2.1.2 = zext i8 %conv5.i80.1.1.2 to i32 *)
cast v_conv4_i78_2_1_2@uint32 v_conv5_i80_1_1_2@uint8;
(*   %shr.i79.2.1.2 = ashr i32 %conv4.i78.2.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i79_2_1_2 tmp_to_be_used v_conv4_i78_2_1_2 1;
(*   %conv5.i80.2.1.2 = trunc i32 %shr.i79.2.1.2 to i8 *)
split tmp_v_shr_i79_2_1_2 v_conv5_i80_2_1_2 v_shr_i79_2_1_2 8;
vpc v_conv5_i80_2_1_2@uint8 v_conv5_i80_2_1_2@uint32;
(*   %conv6.i81.2.1.2 = zext i8 %conv7.i83.1.1.2 to i32 *)
cast v_conv6_i81_2_1_2@uint32 v_conv7_i83_1_1_2@uint8;
(*   %shl.i82.2.1.2 = shl i32 %conv6.i81.2.1.2, 1 *)
shls discard_121 v_shl_i82_2_1_2 v_conv6_i81_2_1_2 1;
(*   %conv7.i83.2.1.2 = trunc i32 %shl.i82.2.1.2 to i8 *)
split tmp_v_shl_i82_2_1_2 v_conv7_i83_2_1_2 v_shl_i82_2_1_2 8;
vpc v_conv7_i83_2_1_2@uint8 v_conv7_i83_2_1_2@uint32;
(*   %conv.i71.3.1.2 = zext i8 %conv5.i80.2.1.2 to i32 *)
cast v_conv_i71_3_1_2@uint32 v_conv5_i80_2_1_2@uint8;
(*   %and.i72.3.1.2 = and i32 %conv.i71.3.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_3_1_2 v_conv_i71_3_1_2 (0x1)@uint32;
(*   %conv1.i73.3.1.2 = zext i8 %conv7.i83.2.1.2 to i32 *)
cast v_conv1_i73_3_1_2@uint32 v_conv7_i83_2_1_2@uint8;
(*   %mul.i74.3.1.2 = mul nsw i32 %and.i72.3.1.2, %conv1.i73.3.1.2 *)
mul v_mul_i74_3_1_2 v_and_i72_3_1_2 v_conv1_i73_3_1_2;
(*   %conv2.i75.3.1.2 = zext i8 %conv3.i77.2.1.2 to i32 *)
cast v_conv2_i75_3_1_2@uint32 v_conv3_i77_2_1_2@uint8;
(*   %xor.i76.3.1.2 = xor i32 %conv2.i75.3.1.2, %mul.i74.3.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_3_1_2 v_conv2_i75_3_1_2 v_mul_i74_3_1_2;
(*   %conv3.i77.3.1.2 = trunc i32 %xor.i76.3.1.2 to i8 *)
split tmp_v_xor_i76_3_1_2 v_conv3_i77_3_1_2 v_xor_i76_3_1_2 8;
vpc v_conv3_i77_3_1_2@uint8 v_conv3_i77_3_1_2@uint32;
(*   %conv4.i78.3.1.2 = zext i8 %conv5.i80.2.1.2 to i32 *)
cast v_conv4_i78_3_1_2@uint32 v_conv5_i80_2_1_2@uint8;
(*   %shr.i79.3.1.2 = ashr i32 %conv4.i78.3.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i79_3_1_2 tmp_to_be_used v_conv4_i78_3_1_2 1;
(*   %conv5.i80.3.1.2 = trunc i32 %shr.i79.3.1.2 to i8 *)
split tmp_v_shr_i79_3_1_2 v_conv5_i80_3_1_2 v_shr_i79_3_1_2 8;
vpc v_conv5_i80_3_1_2@uint8 v_conv5_i80_3_1_2@uint32;
(*   %conv6.i81.3.1.2 = zext i8 %conv7.i83.2.1.2 to i32 *)
cast v_conv6_i81_3_1_2@uint32 v_conv7_i83_2_1_2@uint8;
(*   %shl.i82.3.1.2 = shl i32 %conv6.i81.3.1.2, 1 *)
shls discard_122 v_shl_i82_3_1_2 v_conv6_i81_3_1_2 1;
(*   %conv7.i83.3.1.2 = trunc i32 %shl.i82.3.1.2 to i8 *)
split tmp_v_shl_i82_3_1_2 v_conv7_i83_3_1_2 v_shl_i82_3_1_2 8;
vpc v_conv7_i83_3_1_2@uint8 v_conv7_i83_3_1_2@uint32;
(*   %conv.i71.4.1.2 = zext i8 %conv5.i80.3.1.2 to i32 *)
cast v_conv_i71_4_1_2@uint32 v_conv5_i80_3_1_2@uint8;
(*   %and.i72.4.1.2 = and i32 %conv.i71.4.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_4_1_2 v_conv_i71_4_1_2 (0x1)@uint32;
(*   %conv1.i73.4.1.2 = zext i8 %conv7.i83.3.1.2 to i32 *)
cast v_conv1_i73_4_1_2@uint32 v_conv7_i83_3_1_2@uint8;
(*   %mul.i74.4.1.2 = mul nsw i32 %and.i72.4.1.2, %conv1.i73.4.1.2 *)
mul v_mul_i74_4_1_2 v_and_i72_4_1_2 v_conv1_i73_4_1_2;
(*   %conv2.i75.4.1.2 = zext i8 %conv3.i77.3.1.2 to i32 *)
cast v_conv2_i75_4_1_2@uint32 v_conv3_i77_3_1_2@uint8;
(*   %xor.i76.4.1.2 = xor i32 %conv2.i75.4.1.2, %mul.i74.4.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_4_1_2 v_conv2_i75_4_1_2 v_mul_i74_4_1_2;
(*   %conv3.i77.4.1.2 = trunc i32 %xor.i76.4.1.2 to i8 *)
split tmp_v_xor_i76_4_1_2 v_conv3_i77_4_1_2 v_xor_i76_4_1_2 8;
vpc v_conv3_i77_4_1_2@uint8 v_conv3_i77_4_1_2@uint32;
(*   %conv4.i78.4.1.2 = zext i8 %conv5.i80.3.1.2 to i32 *)
cast v_conv4_i78_4_1_2@uint32 v_conv5_i80_3_1_2@uint8;
(*   %shr.i79.4.1.2 = ashr i32 %conv4.i78.4.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i79_4_1_2 tmp_to_be_used v_conv4_i78_4_1_2 1;
(*   %conv5.i80.4.1.2 = trunc i32 %shr.i79.4.1.2 to i8 *)
split tmp_v_shr_i79_4_1_2 v_conv5_i80_4_1_2 v_shr_i79_4_1_2 8;
vpc v_conv5_i80_4_1_2@uint8 v_conv5_i80_4_1_2@uint32;
(*   %conv6.i81.4.1.2 = zext i8 %conv7.i83.3.1.2 to i32 *)
cast v_conv6_i81_4_1_2@uint32 v_conv7_i83_3_1_2@uint8;
(*   %shl.i82.4.1.2 = shl i32 %conv6.i81.4.1.2, 1 *)
shls discard_123 v_shl_i82_4_1_2 v_conv6_i81_4_1_2 1;
(*   %conv7.i83.4.1.2 = trunc i32 %shl.i82.4.1.2 to i8 *)
split tmp_v_shl_i82_4_1_2 v_conv7_i83_4_1_2 v_shl_i82_4_1_2 8;
vpc v_conv7_i83_4_1_2@uint8 v_conv7_i83_4_1_2@uint32;
(*   %conv.i71.5.1.2 = zext i8 %conv5.i80.4.1.2 to i32 *)
cast v_conv_i71_5_1_2@uint32 v_conv5_i80_4_1_2@uint8;
(*   %and.i72.5.1.2 = and i32 %conv.i71.5.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_5_1_2 v_conv_i71_5_1_2 (0x1)@uint32;
(*   %conv1.i73.5.1.2 = zext i8 %conv7.i83.4.1.2 to i32 *)
cast v_conv1_i73_5_1_2@uint32 v_conv7_i83_4_1_2@uint8;
(*   %mul.i74.5.1.2 = mul nsw i32 %and.i72.5.1.2, %conv1.i73.5.1.2 *)
mul v_mul_i74_5_1_2 v_and_i72_5_1_2 v_conv1_i73_5_1_2;
(*   %conv2.i75.5.1.2 = zext i8 %conv3.i77.4.1.2 to i32 *)
cast v_conv2_i75_5_1_2@uint32 v_conv3_i77_4_1_2@uint8;
(*   %xor.i76.5.1.2 = xor i32 %conv2.i75.5.1.2, %mul.i74.5.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_5_1_2 v_conv2_i75_5_1_2 v_mul_i74_5_1_2;
(*   %conv3.i77.5.1.2 = trunc i32 %xor.i76.5.1.2 to i8 *)
split tmp_v_xor_i76_5_1_2 v_conv3_i77_5_1_2 v_xor_i76_5_1_2 8;
vpc v_conv3_i77_5_1_2@uint8 v_conv3_i77_5_1_2@uint32;
(*   %conv4.i78.5.1.2 = zext i8 %conv5.i80.4.1.2 to i32 *)
cast v_conv4_i78_5_1_2@uint32 v_conv5_i80_4_1_2@uint8;
(*   %shr.i79.5.1.2 = ashr i32 %conv4.i78.5.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i79_5_1_2 tmp_to_be_used v_conv4_i78_5_1_2 1;
(*   %conv5.i80.5.1.2 = trunc i32 %shr.i79.5.1.2 to i8 *)
split tmp_v_shr_i79_5_1_2 v_conv5_i80_5_1_2 v_shr_i79_5_1_2 8;
vpc v_conv5_i80_5_1_2@uint8 v_conv5_i80_5_1_2@uint32;
(*   %conv6.i81.5.1.2 = zext i8 %conv7.i83.4.1.2 to i32 *)
cast v_conv6_i81_5_1_2@uint32 v_conv7_i83_4_1_2@uint8;
(*   %shl.i82.5.1.2 = shl i32 %conv6.i81.5.1.2, 1 *)
shls discard_124 v_shl_i82_5_1_2 v_conv6_i81_5_1_2 1;
(*   %conv7.i83.5.1.2 = trunc i32 %shl.i82.5.1.2 to i8 *)
split tmp_v_shl_i82_5_1_2 v_conv7_i83_5_1_2 v_shl_i82_5_1_2 8;
vpc v_conv7_i83_5_1_2@uint8 v_conv7_i83_5_1_2@uint32;
(*   %conv.i71.6.1.2 = zext i8 %conv5.i80.5.1.2 to i32 *)
cast v_conv_i71_6_1_2@uint32 v_conv5_i80_5_1_2@uint8;
(*   %and.i72.6.1.2 = and i32 %conv.i71.6.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_6_1_2 v_conv_i71_6_1_2 (0x1)@uint32;
(*   %conv1.i73.6.1.2 = zext i8 %conv7.i83.5.1.2 to i32 *)
cast v_conv1_i73_6_1_2@uint32 v_conv7_i83_5_1_2@uint8;
(*   %mul.i74.6.1.2 = mul nsw i32 %and.i72.6.1.2, %conv1.i73.6.1.2 *)
mul v_mul_i74_6_1_2 v_and_i72_6_1_2 v_conv1_i73_6_1_2;
(*   %conv2.i75.6.1.2 = zext i8 %conv3.i77.5.1.2 to i32 *)
cast v_conv2_i75_6_1_2@uint32 v_conv3_i77_5_1_2@uint8;
(*   %xor.i76.6.1.2 = xor i32 %conv2.i75.6.1.2, %mul.i74.6.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_6_1_2 v_conv2_i75_6_1_2 v_mul_i74_6_1_2;
(*   %conv3.i77.6.1.2 = trunc i32 %xor.i76.6.1.2 to i8 *)
split tmp_v_xor_i76_6_1_2 v_conv3_i77_6_1_2 v_xor_i76_6_1_2 8;
vpc v_conv3_i77_6_1_2@uint8 v_conv3_i77_6_1_2@uint32;
(*   %conv4.i78.6.1.2 = zext i8 %conv5.i80.5.1.2 to i32 *)
cast v_conv4_i78_6_1_2@uint32 v_conv5_i80_5_1_2@uint8;
(*   %shr.i79.6.1.2 = ashr i32 %conv4.i78.6.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i79_6_1_2 tmp_to_be_used v_conv4_i78_6_1_2 1;
(*   %conv5.i80.6.1.2 = trunc i32 %shr.i79.6.1.2 to i8 *)
split tmp_v_shr_i79_6_1_2 v_conv5_i80_6_1_2 v_shr_i79_6_1_2 8;
vpc v_conv5_i80_6_1_2@uint8 v_conv5_i80_6_1_2@uint32;
(*   %conv6.i81.6.1.2 = zext i8 %conv7.i83.5.1.2 to i32 *)
cast v_conv6_i81_6_1_2@uint32 v_conv7_i83_5_1_2@uint8;
(*   %shl.i82.6.1.2 = shl i32 %conv6.i81.6.1.2, 1 *)
shls discard_125 v_shl_i82_6_1_2 v_conv6_i81_6_1_2 1;
(*   %conv7.i83.6.1.2 = trunc i32 %shl.i82.6.1.2 to i8 *)
split tmp_v_shl_i82_6_1_2 v_conv7_i83_6_1_2 v_shl_i82_6_1_2 8;
vpc v_conv7_i83_6_1_2@uint8 v_conv7_i83_6_1_2@uint32;
(*   %conv.i71.7.1.2 = zext i8 %conv5.i80.6.1.2 to i32 *)
cast v_conv_i71_7_1_2@uint32 v_conv5_i80_6_1_2@uint8;
(*   %and.i72.7.1.2 = and i32 %conv.i71.7.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_7_1_2 v_conv_i71_7_1_2 (0x1)@uint32;
(*   %conv1.i73.7.1.2 = zext i8 %conv7.i83.6.1.2 to i32 *)
cast v_conv1_i73_7_1_2@uint32 v_conv7_i83_6_1_2@uint8;
(*   %mul.i74.7.1.2 = mul nsw i32 %and.i72.7.1.2, %conv1.i73.7.1.2 *)
mul v_mul_i74_7_1_2 v_and_i72_7_1_2 v_conv1_i73_7_1_2;
(*   %conv2.i75.7.1.2 = zext i8 %conv3.i77.6.1.2 to i32 *)
cast v_conv2_i75_7_1_2@uint32 v_conv3_i77_6_1_2@uint8;
(*   %xor.i76.7.1.2 = xor i32 %conv2.i75.7.1.2, %mul.i74.7.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_7_1_2 v_conv2_i75_7_1_2 v_mul_i74_7_1_2;
(*   %conv3.i77.7.1.2 = trunc i32 %xor.i76.7.1.2 to i8 *)
split tmp_v_xor_i76_7_1_2 v_conv3_i77_7_1_2 v_xor_i76_7_1_2 8;
vpc v_conv3_i77_7_1_2@uint8 v_conv3_i77_7_1_2@uint32;
(*   %conv15.1.2 = zext i8 %conv3.i77.7.1.2 to i32 *)
cast v_conv15_1_2@uint32 v_conv3_i77_7_1_2@uint8;
(*   %xor16.1.2 = xor i32 %xor.1.2, %conv15.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor16_1_2 v_xor_1_2 v_conv15_1_2;
(*   %conv17.1.2 = trunc i32 %xor16.1.2 to i8 *)
split tmp_v_xor16_1_2 v_conv17_1_2 v_xor16_1_2 8;
vpc v_conv17_1_2@uint8 v_conv17_1_2@uint32;
(*   %arrayidx21.1.2 = getelementptr inbounds i8, i8* %r, i64 22 *)
(*   store i8 %conv17.1.2, i8* %arrayidx21.1.2, align 1 *)
mov r_22 v_conv17_1_2;
(*   %arrayidx6.3 = getelementptr inbounds i8, i8* %a, i64 3 *)
(*   %arrayidx13.3 = getelementptr inbounds i8, i8* %b, i64 3 *)
(*   %arrayidx.3633 = getelementptr inbounds i8, i8* %r, i64 19 *)
(*   %45 = load i8, i8* %arrayidx.3633, align 1 *)
mov v45 r_19;
(*   %conv.3634 = zext i8 %45 to i32 *)
cast v_conv_3634@uint32 v45@uint8;
(*   %46 = load i8, i8* %arrayidx6.3, align 1 *)
mov v46 a_3;
(*   %arrayidx8.3636 = getelementptr inbounds i8, i8* %b, i64 4 *)
(*   %47 = load i8, i8* %arrayidx8.3636, align 1 *)
mov v47 b_4;
(*   %conv.i.3638 = zext i8 %47 to i32 *)
cast v_conv_i_3638@uint32 v47@uint8;
(*   %and.i.3639 = and i32 %conv.i.3638, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3639 v_conv_i_3638 (0x1)@uint32;
(*   %conv1.i.3640 = zext i8 %46 to i32 *)
cast v_conv1_i_3640@uint32 v46@uint8;
(*   %mul.i.3641 = mul nsw i32 %and.i.3639, %conv1.i.3640 *)
mul v_mul_i_3641 v_and_i_3639 v_conv1_i_3640;
(*   %conv3.i.3642 = trunc i32 %mul.i.3641 to i8 *)
split tmp_v_mul_i_3641 v_conv3_i_3642 v_mul_i_3641 8;
vpc v_conv3_i_3642@uint8 v_conv3_i_3642@uint32;
(*   %conv4.i.3643 = zext i8 %47 to i32 *)
cast v_conv4_i_3643@uint32 v47@uint8;
(*   %shr.i.3644 = ashr i32 %conv4.i.3643, 1 *)
(* You may need to modify here *)
split v_shr_i_3644 tmp_to_be_used v_conv4_i_3643 1;
(*   %conv5.i.3645 = trunc i32 %shr.i.3644 to i8 *)
split tmp_v_shr_i_3644 v_conv5_i_3645 v_shr_i_3644 8;
vpc v_conv5_i_3645@uint8 v_conv5_i_3645@uint32;
(*   %conv6.i.3646 = zext i8 %46 to i32 *)
cast v_conv6_i_3646@uint32 v46@uint8;
(*   %shl.i.3647 = shl i32 %conv6.i.3646, 1 *)
shls discard_126 v_shl_i_3647 v_conv6_i_3646 1;
(*   %conv7.i.3648 = trunc i32 %shl.i.3647 to i8 *)
split tmp_v_shl_i_3647 v_conv7_i_3648 v_shl_i_3647 8;
vpc v_conv7_i_3648@uint8 v_conv7_i_3648@uint32;
(*   %conv.i.1.3649 = zext i8 %conv5.i.3645 to i32 *)
cast v_conv_i_1_3649@uint32 v_conv5_i_3645@uint8;
(*   %and.i.1.3650 = and i32 %conv.i.1.3649, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_3650 v_conv_i_1_3649 (0x1)@uint32;
(*   %conv1.i.1.3651 = zext i8 %conv7.i.3648 to i32 *)
cast v_conv1_i_1_3651@uint32 v_conv7_i_3648@uint8;
(*   %mul.i.1.3652 = mul nsw i32 %and.i.1.3650, %conv1.i.1.3651 *)
mul v_mul_i_1_3652 v_and_i_1_3650 v_conv1_i_1_3651;
(*   %conv2.i.1.3653 = zext i8 %conv3.i.3642 to i32 *)
cast v_conv2_i_1_3653@uint32 v_conv3_i_3642@uint8;
(*   %xor.i.1.3654 = xor i32 %conv2.i.1.3653, %mul.i.1.3652 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_3654 v_conv2_i_1_3653 v_mul_i_1_3652;
(*   %conv3.i.1.3655 = trunc i32 %xor.i.1.3654 to i8 *)
split tmp_v_xor_i_1_3654 v_conv3_i_1_3655 v_xor_i_1_3654 8;
vpc v_conv3_i_1_3655@uint8 v_conv3_i_1_3655@uint32;
(*   %conv4.i.1.3656 = zext i8 %conv5.i.3645 to i32 *)
cast v_conv4_i_1_3656@uint32 v_conv5_i_3645@uint8;
(*   %shr.i.1.3657 = ashr i32 %conv4.i.1.3656, 1 *)
(* You may need to modify here *)
split v_shr_i_1_3657 tmp_to_be_used v_conv4_i_1_3656 1;
(*   %conv5.i.1.3658 = trunc i32 %shr.i.1.3657 to i8 *)
split tmp_v_shr_i_1_3657 v_conv5_i_1_3658 v_shr_i_1_3657 8;
vpc v_conv5_i_1_3658@uint8 v_conv5_i_1_3658@uint32;
(*   %conv6.i.1.3659 = zext i8 %conv7.i.3648 to i32 *)
cast v_conv6_i_1_3659@uint32 v_conv7_i_3648@uint8;
(*   %shl.i.1.3660 = shl i32 %conv6.i.1.3659, 1 *)
shls discard_127 v_shl_i_1_3660 v_conv6_i_1_3659 1;
(*   %conv7.i.1.3661 = trunc i32 %shl.i.1.3660 to i8 *)
split tmp_v_shl_i_1_3660 v_conv7_i_1_3661 v_shl_i_1_3660 8;
vpc v_conv7_i_1_3661@uint8 v_conv7_i_1_3661@uint32;
(*   %conv.i.2.3662 = zext i8 %conv5.i.1.3658 to i32 *)
cast v_conv_i_2_3662@uint32 v_conv5_i_1_3658@uint8;
(*   %and.i.2.3663 = and i32 %conv.i.2.3662, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_3663 v_conv_i_2_3662 (0x1)@uint32;
(*   %conv1.i.2.3664 = zext i8 %conv7.i.1.3661 to i32 *)
cast v_conv1_i_2_3664@uint32 v_conv7_i_1_3661@uint8;
(*   %mul.i.2.3665 = mul nsw i32 %and.i.2.3663, %conv1.i.2.3664 *)
mul v_mul_i_2_3665 v_and_i_2_3663 v_conv1_i_2_3664;
(*   %conv2.i.2.3666 = zext i8 %conv3.i.1.3655 to i32 *)
cast v_conv2_i_2_3666@uint32 v_conv3_i_1_3655@uint8;
(*   %xor.i.2.3667 = xor i32 %conv2.i.2.3666, %mul.i.2.3665 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_3667 v_conv2_i_2_3666 v_mul_i_2_3665;
(*   %conv3.i.2.3668 = trunc i32 %xor.i.2.3667 to i8 *)
split tmp_v_xor_i_2_3667 v_conv3_i_2_3668 v_xor_i_2_3667 8;
vpc v_conv3_i_2_3668@uint8 v_conv3_i_2_3668@uint32;
(*   %conv4.i.2.3669 = zext i8 %conv5.i.1.3658 to i32 *)
cast v_conv4_i_2_3669@uint32 v_conv5_i_1_3658@uint8;
(*   %shr.i.2.3670 = ashr i32 %conv4.i.2.3669, 1 *)
(* You may need to modify here *)
split v_shr_i_2_3670 tmp_to_be_used v_conv4_i_2_3669 1;
(*   %conv5.i.2.3671 = trunc i32 %shr.i.2.3670 to i8 *)
split tmp_v_shr_i_2_3670 v_conv5_i_2_3671 v_shr_i_2_3670 8;
vpc v_conv5_i_2_3671@uint8 v_conv5_i_2_3671@uint32;
(*   %conv6.i.2.3672 = zext i8 %conv7.i.1.3661 to i32 *)
cast v_conv6_i_2_3672@uint32 v_conv7_i_1_3661@uint8;
(*   %shl.i.2.3673 = shl i32 %conv6.i.2.3672, 1 *)
shls discard_128 v_shl_i_2_3673 v_conv6_i_2_3672 1;
(*   %conv7.i.2.3674 = trunc i32 %shl.i.2.3673 to i8 *)
split tmp_v_shl_i_2_3673 v_conv7_i_2_3674 v_shl_i_2_3673 8;
vpc v_conv7_i_2_3674@uint8 v_conv7_i_2_3674@uint32;
(*   %conv.i.3.3675 = zext i8 %conv5.i.2.3671 to i32 *)
cast v_conv_i_3_3675@uint32 v_conv5_i_2_3671@uint8;
(*   %and.i.3.3676 = and i32 %conv.i.3.3675, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_3676 v_conv_i_3_3675 (0x1)@uint32;
(*   %conv1.i.3.3677 = zext i8 %conv7.i.2.3674 to i32 *)
cast v_conv1_i_3_3677@uint32 v_conv7_i_2_3674@uint8;
(*   %mul.i.3.3678 = mul nsw i32 %and.i.3.3676, %conv1.i.3.3677 *)
mul v_mul_i_3_3678 v_and_i_3_3676 v_conv1_i_3_3677;
(*   %conv2.i.3.3679 = zext i8 %conv3.i.2.3668 to i32 *)
cast v_conv2_i_3_3679@uint32 v_conv3_i_2_3668@uint8;
(*   %xor.i.3.3680 = xor i32 %conv2.i.3.3679, %mul.i.3.3678 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_3680 v_conv2_i_3_3679 v_mul_i_3_3678;
(*   %conv3.i.3.3681 = trunc i32 %xor.i.3.3680 to i8 *)
split tmp_v_xor_i_3_3680 v_conv3_i_3_3681 v_xor_i_3_3680 8;
vpc v_conv3_i_3_3681@uint8 v_conv3_i_3_3681@uint32;
(*   %conv4.i.3.3682 = zext i8 %conv5.i.2.3671 to i32 *)
cast v_conv4_i_3_3682@uint32 v_conv5_i_2_3671@uint8;
(*   %shr.i.3.3683 = ashr i32 %conv4.i.3.3682, 1 *)
(* You may need to modify here *)
split v_shr_i_3_3683 tmp_to_be_used v_conv4_i_3_3682 1;
(*   %conv5.i.3.3684 = trunc i32 %shr.i.3.3683 to i8 *)
split tmp_v_shr_i_3_3683 v_conv5_i_3_3684 v_shr_i_3_3683 8;
vpc v_conv5_i_3_3684@uint8 v_conv5_i_3_3684@uint32;
(*   %conv6.i.3.3685 = zext i8 %conv7.i.2.3674 to i32 *)
cast v_conv6_i_3_3685@uint32 v_conv7_i_2_3674@uint8;
(*   %shl.i.3.3686 = shl i32 %conv6.i.3.3685, 1 *)
shls discard_129 v_shl_i_3_3686 v_conv6_i_3_3685 1;
(*   %conv7.i.3.3687 = trunc i32 %shl.i.3.3686 to i8 *)
split tmp_v_shl_i_3_3686 v_conv7_i_3_3687 v_shl_i_3_3686 8;
vpc v_conv7_i_3_3687@uint8 v_conv7_i_3_3687@uint32;
(*   %conv.i.4.3688 = zext i8 %conv5.i.3.3684 to i32 *)
cast v_conv_i_4_3688@uint32 v_conv5_i_3_3684@uint8;
(*   %and.i.4.3689 = and i32 %conv.i.4.3688, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_3689 v_conv_i_4_3688 (0x1)@uint32;
(*   %conv1.i.4.3690 = zext i8 %conv7.i.3.3687 to i32 *)
cast v_conv1_i_4_3690@uint32 v_conv7_i_3_3687@uint8;
(*   %mul.i.4.3691 = mul nsw i32 %and.i.4.3689, %conv1.i.4.3690 *)
mul v_mul_i_4_3691 v_and_i_4_3689 v_conv1_i_4_3690;
(*   %conv2.i.4.3692 = zext i8 %conv3.i.3.3681 to i32 *)
cast v_conv2_i_4_3692@uint32 v_conv3_i_3_3681@uint8;
(*   %xor.i.4.3693 = xor i32 %conv2.i.4.3692, %mul.i.4.3691 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_3693 v_conv2_i_4_3692 v_mul_i_4_3691;
(*   %conv3.i.4.3694 = trunc i32 %xor.i.4.3693 to i8 *)
split tmp_v_xor_i_4_3693 v_conv3_i_4_3694 v_xor_i_4_3693 8;
vpc v_conv3_i_4_3694@uint8 v_conv3_i_4_3694@uint32;
(*   %conv4.i.4.3695 = zext i8 %conv5.i.3.3684 to i32 *)
cast v_conv4_i_4_3695@uint32 v_conv5_i_3_3684@uint8;
(*   %shr.i.4.3696 = ashr i32 %conv4.i.4.3695, 1 *)
(* You may need to modify here *)
split v_shr_i_4_3696 tmp_to_be_used v_conv4_i_4_3695 1;
(*   %conv5.i.4.3697 = trunc i32 %shr.i.4.3696 to i8 *)
split tmp_v_shr_i_4_3696 v_conv5_i_4_3697 v_shr_i_4_3696 8;
vpc v_conv5_i_4_3697@uint8 v_conv5_i_4_3697@uint32;
(*   %conv6.i.4.3698 = zext i8 %conv7.i.3.3687 to i32 *)
cast v_conv6_i_4_3698@uint32 v_conv7_i_3_3687@uint8;
(*   %shl.i.4.3699 = shl i32 %conv6.i.4.3698, 1 *)
shls discard_130 v_shl_i_4_3699 v_conv6_i_4_3698 1;
(*   %conv7.i.4.3700 = trunc i32 %shl.i.4.3699 to i8 *)
split tmp_v_shl_i_4_3699 v_conv7_i_4_3700 v_shl_i_4_3699 8;
vpc v_conv7_i_4_3700@uint8 v_conv7_i_4_3700@uint32;
(*   %conv.i.5.3701 = zext i8 %conv5.i.4.3697 to i32 *)
cast v_conv_i_5_3701@uint32 v_conv5_i_4_3697@uint8;
(*   %and.i.5.3702 = and i32 %conv.i.5.3701, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_3702 v_conv_i_5_3701 (0x1)@uint32;
(*   %conv1.i.5.3703 = zext i8 %conv7.i.4.3700 to i32 *)
cast v_conv1_i_5_3703@uint32 v_conv7_i_4_3700@uint8;
(*   %mul.i.5.3704 = mul nsw i32 %and.i.5.3702, %conv1.i.5.3703 *)
mul v_mul_i_5_3704 v_and_i_5_3702 v_conv1_i_5_3703;
(*   %conv2.i.5.3705 = zext i8 %conv3.i.4.3694 to i32 *)
cast v_conv2_i_5_3705@uint32 v_conv3_i_4_3694@uint8;
(*   %xor.i.5.3706 = xor i32 %conv2.i.5.3705, %mul.i.5.3704 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_3706 v_conv2_i_5_3705 v_mul_i_5_3704;
(*   %conv3.i.5.3707 = trunc i32 %xor.i.5.3706 to i8 *)
split tmp_v_xor_i_5_3706 v_conv3_i_5_3707 v_xor_i_5_3706 8;
vpc v_conv3_i_5_3707@uint8 v_conv3_i_5_3707@uint32;
(*   %conv4.i.5.3708 = zext i8 %conv5.i.4.3697 to i32 *)
cast v_conv4_i_5_3708@uint32 v_conv5_i_4_3697@uint8;
(*   %shr.i.5.3709 = ashr i32 %conv4.i.5.3708, 1 *)
(* You may need to modify here *)
split v_shr_i_5_3709 tmp_to_be_used v_conv4_i_5_3708 1;
(*   %conv5.i.5.3710 = trunc i32 %shr.i.5.3709 to i8 *)
split tmp_v_shr_i_5_3709 v_conv5_i_5_3710 v_shr_i_5_3709 8;
vpc v_conv5_i_5_3710@uint8 v_conv5_i_5_3710@uint32;
(*   %conv6.i.5.3711 = zext i8 %conv7.i.4.3700 to i32 *)
cast v_conv6_i_5_3711@uint32 v_conv7_i_4_3700@uint8;
(*   %shl.i.5.3712 = shl i32 %conv6.i.5.3711, 1 *)
shls discard_131 v_shl_i_5_3712 v_conv6_i_5_3711 1;
(*   %conv7.i.5.3713 = trunc i32 %shl.i.5.3712 to i8 *)
split tmp_v_shl_i_5_3712 v_conv7_i_5_3713 v_shl_i_5_3712 8;
vpc v_conv7_i_5_3713@uint8 v_conv7_i_5_3713@uint32;
(*   %conv.i.6.3714 = zext i8 %conv5.i.5.3710 to i32 *)
cast v_conv_i_6_3714@uint32 v_conv5_i_5_3710@uint8;
(*   %and.i.6.3715 = and i32 %conv.i.6.3714, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_3715 v_conv_i_6_3714 (0x1)@uint32;
(*   %conv1.i.6.3716 = zext i8 %conv7.i.5.3713 to i32 *)
cast v_conv1_i_6_3716@uint32 v_conv7_i_5_3713@uint8;
(*   %mul.i.6.3717 = mul nsw i32 %and.i.6.3715, %conv1.i.6.3716 *)
mul v_mul_i_6_3717 v_and_i_6_3715 v_conv1_i_6_3716;
(*   %conv2.i.6.3718 = zext i8 %conv3.i.5.3707 to i32 *)
cast v_conv2_i_6_3718@uint32 v_conv3_i_5_3707@uint8;
(*   %xor.i.6.3719 = xor i32 %conv2.i.6.3718, %mul.i.6.3717 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_3719 v_conv2_i_6_3718 v_mul_i_6_3717;
(*   %conv3.i.6.3720 = trunc i32 %xor.i.6.3719 to i8 *)
split tmp_v_xor_i_6_3719 v_conv3_i_6_3720 v_xor_i_6_3719 8;
vpc v_conv3_i_6_3720@uint8 v_conv3_i_6_3720@uint32;
(*   %conv4.i.6.3721 = zext i8 %conv5.i.5.3710 to i32 *)
cast v_conv4_i_6_3721@uint32 v_conv5_i_5_3710@uint8;
(*   %shr.i.6.3722 = ashr i32 %conv4.i.6.3721, 1 *)
(* You may need to modify here *)
split v_shr_i_6_3722 tmp_to_be_used v_conv4_i_6_3721 1;
(*   %conv5.i.6.3723 = trunc i32 %shr.i.6.3722 to i8 *)
split tmp_v_shr_i_6_3722 v_conv5_i_6_3723 v_shr_i_6_3722 8;
vpc v_conv5_i_6_3723@uint8 v_conv5_i_6_3723@uint32;
(*   %conv6.i.6.3724 = zext i8 %conv7.i.5.3713 to i32 *)
cast v_conv6_i_6_3724@uint32 v_conv7_i_5_3713@uint8;
(*   %shl.i.6.3725 = shl i32 %conv6.i.6.3724, 1 *)
shls discard_132 v_shl_i_6_3725 v_conv6_i_6_3724 1;
(*   %conv7.i.6.3726 = trunc i32 %shl.i.6.3725 to i8 *)
split tmp_v_shl_i_6_3725 v_conv7_i_6_3726 v_shl_i_6_3725 8;
vpc v_conv7_i_6_3726@uint8 v_conv7_i_6_3726@uint32;
(*   %conv.i.7.3727 = zext i8 %conv5.i.6.3723 to i32 *)
cast v_conv_i_7_3727@uint32 v_conv5_i_6_3723@uint8;
(*   %and.i.7.3728 = and i32 %conv.i.7.3727, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_3728 v_conv_i_7_3727 (0x1)@uint32;
(*   %conv1.i.7.3729 = zext i8 %conv7.i.6.3726 to i32 *)
cast v_conv1_i_7_3729@uint32 v_conv7_i_6_3726@uint8;
(*   %mul.i.7.3730 = mul nsw i32 %and.i.7.3728, %conv1.i.7.3729 *)
mul v_mul_i_7_3730 v_and_i_7_3728 v_conv1_i_7_3729;
(*   %conv2.i.7.3731 = zext i8 %conv3.i.6.3720 to i32 *)
cast v_conv2_i_7_3731@uint32 v_conv3_i_6_3720@uint8;
(*   %xor.i.7.3732 = xor i32 %conv2.i.7.3731, %mul.i.7.3730 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_3732 v_conv2_i_7_3731 v_mul_i_7_3730;
(*   %conv3.i.7.3733 = trunc i32 %xor.i.7.3732 to i8 *)
split tmp_v_xor_i_7_3732 v_conv3_i_7_3733 v_xor_i_7_3732 8;
vpc v_conv3_i_7_3733@uint8 v_conv3_i_7_3733@uint32;
(*   %conv9.3736 = zext i8 %conv3.i.7.3733 to i32 *)
cast v_conv9_3736@uint32 v_conv3_i_7_3733@uint8;
(*   %xor.3737 = xor i32 %conv.3634, %conv9.3736 *)
(* You may need to modify here *)
xor uint32 v_xor_3737 v_conv_3634 v_conv9_3736;
(*   %arrayidx11.3739 = getelementptr inbounds i8, i8* %a, i64 4 *)
(*   %48 = load i8, i8* %arrayidx11.3739, align 1 *)
mov v48 a_4;
(*   %49 = load i8, i8* %arrayidx13.3, align 1 *)
mov v49 b_3;
(*   %conv.i71.3741 = zext i8 %49 to i32 *)
cast v_conv_i71_3741@uint32 v49@uint8;
(*   %and.i72.3742 = and i32 %conv.i71.3741, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_3742 v_conv_i71_3741 (0x1)@uint32;
(*   %conv1.i73.3743 = zext i8 %48 to i32 *)
cast v_conv1_i73_3743@uint32 v48@uint8;
(*   %mul.i74.3744 = mul nsw i32 %and.i72.3742, %conv1.i73.3743 *)
mul v_mul_i74_3744 v_and_i72_3742 v_conv1_i73_3743;
(*   %conv3.i77.3745 = trunc i32 %mul.i74.3744 to i8 *)
split tmp_v_mul_i74_3744 v_conv3_i77_3745 v_mul_i74_3744 8;
vpc v_conv3_i77_3745@uint8 v_conv3_i77_3745@uint32;
(*   %conv4.i78.3746 = zext i8 %49 to i32 *)
cast v_conv4_i78_3746@uint32 v49@uint8;
(*   %shr.i79.3747 = ashr i32 %conv4.i78.3746, 1 *)
(* You may need to modify here *)
split v_shr_i79_3747 tmp_to_be_used v_conv4_i78_3746 1;
(*   %conv5.i80.3748 = trunc i32 %shr.i79.3747 to i8 *)
split tmp_v_shr_i79_3747 v_conv5_i80_3748 v_shr_i79_3747 8;
vpc v_conv5_i80_3748@uint8 v_conv5_i80_3748@uint32;
(*   %conv6.i81.3749 = zext i8 %48 to i32 *)
cast v_conv6_i81_3749@uint32 v48@uint8;
(*   %shl.i82.3750 = shl i32 %conv6.i81.3749, 1 *)
shls discard_133 v_shl_i82_3750 v_conv6_i81_3749 1;
(*   %conv7.i83.3751 = trunc i32 %shl.i82.3750 to i8 *)
split tmp_v_shl_i82_3750 v_conv7_i83_3751 v_shl_i82_3750 8;
vpc v_conv7_i83_3751@uint8 v_conv7_i83_3751@uint32;
(*   %conv.i71.1.3752 = zext i8 %conv5.i80.3748 to i32 *)
cast v_conv_i71_1_3752@uint32 v_conv5_i80_3748@uint8;
(*   %and.i72.1.3753 = and i32 %conv.i71.1.3752, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_1_3753 v_conv_i71_1_3752 (0x1)@uint32;
(*   %conv1.i73.1.3754 = zext i8 %conv7.i83.3751 to i32 *)
cast v_conv1_i73_1_3754@uint32 v_conv7_i83_3751@uint8;
(*   %mul.i74.1.3755 = mul nsw i32 %and.i72.1.3753, %conv1.i73.1.3754 *)
mul v_mul_i74_1_3755 v_and_i72_1_3753 v_conv1_i73_1_3754;
(*   %conv2.i75.1.3756 = zext i8 %conv3.i77.3745 to i32 *)
cast v_conv2_i75_1_3756@uint32 v_conv3_i77_3745@uint8;
(*   %xor.i76.1.3757 = xor i32 %conv2.i75.1.3756, %mul.i74.1.3755 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_1_3757 v_conv2_i75_1_3756 v_mul_i74_1_3755;
(*   %conv3.i77.1.3758 = trunc i32 %xor.i76.1.3757 to i8 *)
split tmp_v_xor_i76_1_3757 v_conv3_i77_1_3758 v_xor_i76_1_3757 8;
vpc v_conv3_i77_1_3758@uint8 v_conv3_i77_1_3758@uint32;
(*   %conv4.i78.1.3759 = zext i8 %conv5.i80.3748 to i32 *)
cast v_conv4_i78_1_3759@uint32 v_conv5_i80_3748@uint8;
(*   %shr.i79.1.3760 = ashr i32 %conv4.i78.1.3759, 1 *)
(* You may need to modify here *)
split v_shr_i79_1_3760 tmp_to_be_used v_conv4_i78_1_3759 1;
(*   %conv5.i80.1.3761 = trunc i32 %shr.i79.1.3760 to i8 *)
split tmp_v_shr_i79_1_3760 v_conv5_i80_1_3761 v_shr_i79_1_3760 8;
vpc v_conv5_i80_1_3761@uint8 v_conv5_i80_1_3761@uint32;
(*   %conv6.i81.1.3762 = zext i8 %conv7.i83.3751 to i32 *)
cast v_conv6_i81_1_3762@uint32 v_conv7_i83_3751@uint8;
(*   %shl.i82.1.3763 = shl i32 %conv6.i81.1.3762, 1 *)
shls discard_134 v_shl_i82_1_3763 v_conv6_i81_1_3762 1;
(*   %conv7.i83.1.3764 = trunc i32 %shl.i82.1.3763 to i8 *)
split tmp_v_shl_i82_1_3763 v_conv7_i83_1_3764 v_shl_i82_1_3763 8;
vpc v_conv7_i83_1_3764@uint8 v_conv7_i83_1_3764@uint32;
(*   %conv.i71.2.3765 = zext i8 %conv5.i80.1.3761 to i32 *)
cast v_conv_i71_2_3765@uint32 v_conv5_i80_1_3761@uint8;
(*   %and.i72.2.3766 = and i32 %conv.i71.2.3765, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_2_3766 v_conv_i71_2_3765 (0x1)@uint32;
(*   %conv1.i73.2.3767 = zext i8 %conv7.i83.1.3764 to i32 *)
cast v_conv1_i73_2_3767@uint32 v_conv7_i83_1_3764@uint8;
(*   %mul.i74.2.3768 = mul nsw i32 %and.i72.2.3766, %conv1.i73.2.3767 *)
mul v_mul_i74_2_3768 v_and_i72_2_3766 v_conv1_i73_2_3767;
(*   %conv2.i75.2.3769 = zext i8 %conv3.i77.1.3758 to i32 *)
cast v_conv2_i75_2_3769@uint32 v_conv3_i77_1_3758@uint8;
(*   %xor.i76.2.3770 = xor i32 %conv2.i75.2.3769, %mul.i74.2.3768 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_2_3770 v_conv2_i75_2_3769 v_mul_i74_2_3768;
(*   %conv3.i77.2.3771 = trunc i32 %xor.i76.2.3770 to i8 *)
split tmp_v_xor_i76_2_3770 v_conv3_i77_2_3771 v_xor_i76_2_3770 8;
vpc v_conv3_i77_2_3771@uint8 v_conv3_i77_2_3771@uint32;
(*   %conv4.i78.2.3772 = zext i8 %conv5.i80.1.3761 to i32 *)
cast v_conv4_i78_2_3772@uint32 v_conv5_i80_1_3761@uint8;
(*   %shr.i79.2.3773 = ashr i32 %conv4.i78.2.3772, 1 *)
(* You may need to modify here *)
split v_shr_i79_2_3773 tmp_to_be_used v_conv4_i78_2_3772 1;
(*   %conv5.i80.2.3774 = trunc i32 %shr.i79.2.3773 to i8 *)
split tmp_v_shr_i79_2_3773 v_conv5_i80_2_3774 v_shr_i79_2_3773 8;
vpc v_conv5_i80_2_3774@uint8 v_conv5_i80_2_3774@uint32;
(*   %conv6.i81.2.3775 = zext i8 %conv7.i83.1.3764 to i32 *)
cast v_conv6_i81_2_3775@uint32 v_conv7_i83_1_3764@uint8;
(*   %shl.i82.2.3776 = shl i32 %conv6.i81.2.3775, 1 *)
shls discard_135 v_shl_i82_2_3776 v_conv6_i81_2_3775 1;
(*   %conv7.i83.2.3777 = trunc i32 %shl.i82.2.3776 to i8 *)
split tmp_v_shl_i82_2_3776 v_conv7_i83_2_3777 v_shl_i82_2_3776 8;
vpc v_conv7_i83_2_3777@uint8 v_conv7_i83_2_3777@uint32;
(*   %conv.i71.3.3778 = zext i8 %conv5.i80.2.3774 to i32 *)
cast v_conv_i71_3_3778@uint32 v_conv5_i80_2_3774@uint8;
(*   %and.i72.3.3779 = and i32 %conv.i71.3.3778, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_3_3779 v_conv_i71_3_3778 (0x1)@uint32;
(*   %conv1.i73.3.3780 = zext i8 %conv7.i83.2.3777 to i32 *)
cast v_conv1_i73_3_3780@uint32 v_conv7_i83_2_3777@uint8;
(*   %mul.i74.3.3781 = mul nsw i32 %and.i72.3.3779, %conv1.i73.3.3780 *)
mul v_mul_i74_3_3781 v_and_i72_3_3779 v_conv1_i73_3_3780;
(*   %conv2.i75.3.3782 = zext i8 %conv3.i77.2.3771 to i32 *)
cast v_conv2_i75_3_3782@uint32 v_conv3_i77_2_3771@uint8;
(*   %xor.i76.3.3783 = xor i32 %conv2.i75.3.3782, %mul.i74.3.3781 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_3_3783 v_conv2_i75_3_3782 v_mul_i74_3_3781;
(*   %conv3.i77.3.3784 = trunc i32 %xor.i76.3.3783 to i8 *)
split tmp_v_xor_i76_3_3783 v_conv3_i77_3_3784 v_xor_i76_3_3783 8;
vpc v_conv3_i77_3_3784@uint8 v_conv3_i77_3_3784@uint32;
(*   %conv4.i78.3.3785 = zext i8 %conv5.i80.2.3774 to i32 *)
cast v_conv4_i78_3_3785@uint32 v_conv5_i80_2_3774@uint8;
(*   %shr.i79.3.3786 = ashr i32 %conv4.i78.3.3785, 1 *)
(* You may need to modify here *)
split v_shr_i79_3_3786 tmp_to_be_used v_conv4_i78_3_3785 1;
(*   %conv5.i80.3.3787 = trunc i32 %shr.i79.3.3786 to i8 *)
split tmp_v_shr_i79_3_3786 v_conv5_i80_3_3787 v_shr_i79_3_3786 8;
vpc v_conv5_i80_3_3787@uint8 v_conv5_i80_3_3787@uint32;
(*   %conv6.i81.3.3788 = zext i8 %conv7.i83.2.3777 to i32 *)
cast v_conv6_i81_3_3788@uint32 v_conv7_i83_2_3777@uint8;
(*   %shl.i82.3.3789 = shl i32 %conv6.i81.3.3788, 1 *)
shls discard_136 v_shl_i82_3_3789 v_conv6_i81_3_3788 1;
(*   %conv7.i83.3.3790 = trunc i32 %shl.i82.3.3789 to i8 *)
split tmp_v_shl_i82_3_3789 v_conv7_i83_3_3790 v_shl_i82_3_3789 8;
vpc v_conv7_i83_3_3790@uint8 v_conv7_i83_3_3790@uint32;
(*   %conv.i71.4.3791 = zext i8 %conv5.i80.3.3787 to i32 *)
cast v_conv_i71_4_3791@uint32 v_conv5_i80_3_3787@uint8;
(*   %and.i72.4.3792 = and i32 %conv.i71.4.3791, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_4_3792 v_conv_i71_4_3791 (0x1)@uint32;
(*   %conv1.i73.4.3793 = zext i8 %conv7.i83.3.3790 to i32 *)
cast v_conv1_i73_4_3793@uint32 v_conv7_i83_3_3790@uint8;
(*   %mul.i74.4.3794 = mul nsw i32 %and.i72.4.3792, %conv1.i73.4.3793 *)
mul v_mul_i74_4_3794 v_and_i72_4_3792 v_conv1_i73_4_3793;
(*   %conv2.i75.4.3795 = zext i8 %conv3.i77.3.3784 to i32 *)
cast v_conv2_i75_4_3795@uint32 v_conv3_i77_3_3784@uint8;
(*   %xor.i76.4.3796 = xor i32 %conv2.i75.4.3795, %mul.i74.4.3794 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_4_3796 v_conv2_i75_4_3795 v_mul_i74_4_3794;
(*   %conv3.i77.4.3797 = trunc i32 %xor.i76.4.3796 to i8 *)
split tmp_v_xor_i76_4_3796 v_conv3_i77_4_3797 v_xor_i76_4_3796 8;
vpc v_conv3_i77_4_3797@uint8 v_conv3_i77_4_3797@uint32;
(*   %conv4.i78.4.3798 = zext i8 %conv5.i80.3.3787 to i32 *)
cast v_conv4_i78_4_3798@uint32 v_conv5_i80_3_3787@uint8;
(*   %shr.i79.4.3799 = ashr i32 %conv4.i78.4.3798, 1 *)
(* You may need to modify here *)
split v_shr_i79_4_3799 tmp_to_be_used v_conv4_i78_4_3798 1;
(*   %conv5.i80.4.3800 = trunc i32 %shr.i79.4.3799 to i8 *)
split tmp_v_shr_i79_4_3799 v_conv5_i80_4_3800 v_shr_i79_4_3799 8;
vpc v_conv5_i80_4_3800@uint8 v_conv5_i80_4_3800@uint32;
(*   %conv6.i81.4.3801 = zext i8 %conv7.i83.3.3790 to i32 *)
cast v_conv6_i81_4_3801@uint32 v_conv7_i83_3_3790@uint8;
(*   %shl.i82.4.3802 = shl i32 %conv6.i81.4.3801, 1 *)
shls discard_137 v_shl_i82_4_3802 v_conv6_i81_4_3801 1;
(*   %conv7.i83.4.3803 = trunc i32 %shl.i82.4.3802 to i8 *)
split tmp_v_shl_i82_4_3802 v_conv7_i83_4_3803 v_shl_i82_4_3802 8;
vpc v_conv7_i83_4_3803@uint8 v_conv7_i83_4_3803@uint32;
(*   %conv.i71.5.3804 = zext i8 %conv5.i80.4.3800 to i32 *)
cast v_conv_i71_5_3804@uint32 v_conv5_i80_4_3800@uint8;
(*   %and.i72.5.3805 = and i32 %conv.i71.5.3804, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_5_3805 v_conv_i71_5_3804 (0x1)@uint32;
(*   %conv1.i73.5.3806 = zext i8 %conv7.i83.4.3803 to i32 *)
cast v_conv1_i73_5_3806@uint32 v_conv7_i83_4_3803@uint8;
(*   %mul.i74.5.3807 = mul nsw i32 %and.i72.5.3805, %conv1.i73.5.3806 *)
mul v_mul_i74_5_3807 v_and_i72_5_3805 v_conv1_i73_5_3806;
(*   %conv2.i75.5.3808 = zext i8 %conv3.i77.4.3797 to i32 *)
cast v_conv2_i75_5_3808@uint32 v_conv3_i77_4_3797@uint8;
(*   %xor.i76.5.3809 = xor i32 %conv2.i75.5.3808, %mul.i74.5.3807 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_5_3809 v_conv2_i75_5_3808 v_mul_i74_5_3807;
(*   %conv3.i77.5.3810 = trunc i32 %xor.i76.5.3809 to i8 *)
split tmp_v_xor_i76_5_3809 v_conv3_i77_5_3810 v_xor_i76_5_3809 8;
vpc v_conv3_i77_5_3810@uint8 v_conv3_i77_5_3810@uint32;
(*   %conv4.i78.5.3811 = zext i8 %conv5.i80.4.3800 to i32 *)
cast v_conv4_i78_5_3811@uint32 v_conv5_i80_4_3800@uint8;
(*   %shr.i79.5.3812 = ashr i32 %conv4.i78.5.3811, 1 *)
(* You may need to modify here *)
split v_shr_i79_5_3812 tmp_to_be_used v_conv4_i78_5_3811 1;
(*   %conv5.i80.5.3813 = trunc i32 %shr.i79.5.3812 to i8 *)
split tmp_v_shr_i79_5_3812 v_conv5_i80_5_3813 v_shr_i79_5_3812 8;
vpc v_conv5_i80_5_3813@uint8 v_conv5_i80_5_3813@uint32;
(*   %conv6.i81.5.3814 = zext i8 %conv7.i83.4.3803 to i32 *)
cast v_conv6_i81_5_3814@uint32 v_conv7_i83_4_3803@uint8;
(*   %shl.i82.5.3815 = shl i32 %conv6.i81.5.3814, 1 *)
shls discard_138 v_shl_i82_5_3815 v_conv6_i81_5_3814 1;
(*   %conv7.i83.5.3816 = trunc i32 %shl.i82.5.3815 to i8 *)
split tmp_v_shl_i82_5_3815 v_conv7_i83_5_3816 v_shl_i82_5_3815 8;
vpc v_conv7_i83_5_3816@uint8 v_conv7_i83_5_3816@uint32;
(*   %conv.i71.6.3817 = zext i8 %conv5.i80.5.3813 to i32 *)
cast v_conv_i71_6_3817@uint32 v_conv5_i80_5_3813@uint8;
(*   %and.i72.6.3818 = and i32 %conv.i71.6.3817, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_6_3818 v_conv_i71_6_3817 (0x1)@uint32;
(*   %conv1.i73.6.3819 = zext i8 %conv7.i83.5.3816 to i32 *)
cast v_conv1_i73_6_3819@uint32 v_conv7_i83_5_3816@uint8;
(*   %mul.i74.6.3820 = mul nsw i32 %and.i72.6.3818, %conv1.i73.6.3819 *)
mul v_mul_i74_6_3820 v_and_i72_6_3818 v_conv1_i73_6_3819;
(*   %conv2.i75.6.3821 = zext i8 %conv3.i77.5.3810 to i32 *)
cast v_conv2_i75_6_3821@uint32 v_conv3_i77_5_3810@uint8;
(*   %xor.i76.6.3822 = xor i32 %conv2.i75.6.3821, %mul.i74.6.3820 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_6_3822 v_conv2_i75_6_3821 v_mul_i74_6_3820;
(*   %conv3.i77.6.3823 = trunc i32 %xor.i76.6.3822 to i8 *)
split tmp_v_xor_i76_6_3822 v_conv3_i77_6_3823 v_xor_i76_6_3822 8;
vpc v_conv3_i77_6_3823@uint8 v_conv3_i77_6_3823@uint32;
(*   %conv4.i78.6.3824 = zext i8 %conv5.i80.5.3813 to i32 *)
cast v_conv4_i78_6_3824@uint32 v_conv5_i80_5_3813@uint8;
(*   %shr.i79.6.3825 = ashr i32 %conv4.i78.6.3824, 1 *)
(* You may need to modify here *)
split v_shr_i79_6_3825 tmp_to_be_used v_conv4_i78_6_3824 1;
(*   %conv5.i80.6.3826 = trunc i32 %shr.i79.6.3825 to i8 *)
split tmp_v_shr_i79_6_3825 v_conv5_i80_6_3826 v_shr_i79_6_3825 8;
vpc v_conv5_i80_6_3826@uint8 v_conv5_i80_6_3826@uint32;
(*   %conv6.i81.6.3827 = zext i8 %conv7.i83.5.3816 to i32 *)
cast v_conv6_i81_6_3827@uint32 v_conv7_i83_5_3816@uint8;
(*   %shl.i82.6.3828 = shl i32 %conv6.i81.6.3827, 1 *)
shls discard_139 v_shl_i82_6_3828 v_conv6_i81_6_3827 1;
(*   %conv7.i83.6.3829 = trunc i32 %shl.i82.6.3828 to i8 *)
split tmp_v_shl_i82_6_3828 v_conv7_i83_6_3829 v_shl_i82_6_3828 8;
vpc v_conv7_i83_6_3829@uint8 v_conv7_i83_6_3829@uint32;
(*   %conv.i71.7.3830 = zext i8 %conv5.i80.6.3826 to i32 *)
cast v_conv_i71_7_3830@uint32 v_conv5_i80_6_3826@uint8;
(*   %and.i72.7.3831 = and i32 %conv.i71.7.3830, 1 *)
(* You may need to modify here *)
and uint32 v_and_i72_7_3831 v_conv_i71_7_3830 (0x1)@uint32;
(*   %conv1.i73.7.3832 = zext i8 %conv7.i83.6.3829 to i32 *)
cast v_conv1_i73_7_3832@uint32 v_conv7_i83_6_3829@uint8;
(*   %mul.i74.7.3833 = mul nsw i32 %and.i72.7.3831, %conv1.i73.7.3832 *)
mul v_mul_i74_7_3833 v_and_i72_7_3831 v_conv1_i73_7_3832;
(*   %conv2.i75.7.3834 = zext i8 %conv3.i77.6.3823 to i32 *)
cast v_conv2_i75_7_3834@uint32 v_conv3_i77_6_3823@uint8;
(*   %xor.i76.7.3835 = xor i32 %conv2.i75.7.3834, %mul.i74.7.3833 *)
(* You may need to modify here *)
xor uint32 v_xor_i76_7_3835 v_conv2_i75_7_3834 v_mul_i74_7_3833;
(*   %conv3.i77.7.3836 = trunc i32 %xor.i76.7.3835 to i8 *)
split tmp_v_xor_i76_7_3835 v_conv3_i77_7_3836 v_xor_i76_7_3835 8;
vpc v_conv3_i77_7_3836@uint8 v_conv3_i77_7_3836@uint32;
(*   %conv15.3839 = zext i8 %conv3.i77.7.3836 to i32 *)
cast v_conv15_3839@uint32 v_conv3_i77_7_3836@uint8;
(*   %xor16.3840 = xor i32 %xor.3737, %conv15.3839 *)
(* You may need to modify here *)
xor uint32 v_xor16_3840 v_xor_3737 v_conv15_3839;
(*   %conv17.3841 = trunc i32 %xor16.3840 to i8 *)
split tmp_v_xor16_3840 v_conv17_3841 v_xor16_3840 8;
vpc v_conv17_3841@uint8 v_conv17_3841@uint32;
(*   %arrayidx21.3845 = getelementptr inbounds i8, i8* %r, i64 23 *)
(*   store i8 %conv17.3841, i8* %arrayidx21.3845, align 1 *)
mov r_23 v_conv17_3841;
(*   %50 = load i8, i8* %a, align 1 *)
mov v50 a_0;
(*   %51 = load i8, i8* %b, align 1 *)
mov v51 b_0;
(*   %conv.i132 = zext i8 %51 to i32 *)
cast v_conv_i132@uint32 v51@uint8;
(*   %and.i133 = and i32 %conv.i132, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133 v_conv_i132 (0x1)@uint32;
(*   %conv1.i134 = zext i8 %50 to i32 *)
cast v_conv1_i134@uint32 v50@uint8;
(*   %mul.i135 = mul nsw i32 %and.i133, %conv1.i134 *)
mul v_mul_i135 v_and_i133 v_conv1_i134;
(*   %conv3.i138 = trunc i32 %mul.i135 to i8 *)
split tmp_v_mul_i135 v_conv3_i138 v_mul_i135 8;
vpc v_conv3_i138@uint8 v_conv3_i138@uint32;
(*   %conv4.i139 = zext i8 %51 to i32 *)
cast v_conv4_i139@uint32 v51@uint8;
(*   %shr.i140 = ashr i32 %conv4.i139, 1 *)
(* You may need to modify here *)
split v_shr_i140 tmp_to_be_used v_conv4_i139 1;
(*   %conv5.i141 = trunc i32 %shr.i140 to i8 *)
split tmp_v_shr_i140 v_conv5_i141 v_shr_i140 8;
vpc v_conv5_i141@uint8 v_conv5_i141@uint32;
(*   %conv6.i142 = zext i8 %50 to i32 *)
cast v_conv6_i142@uint32 v50@uint8;
(*   %shl.i143 = shl i32 %conv6.i142, 1 *)
shls discard_140 v_shl_i143 v_conv6_i142 1;
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
shls discard_141 v_shl_i143_1 v_conv6_i142_1 1;
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
shls discard_142 v_shl_i143_2 v_conv6_i142_2 1;
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
shls discard_143 v_shl_i143_3 v_conv6_i142_3 1;
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
shls discard_144 v_shl_i143_4 v_conv6_i142_4 1;
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
shls discard_145 v_shl_i143_5 v_conv6_i142_5 1;
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
shls discard_146 v_shl_i143_6 v_conv6_i142_6 1;
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
(*   %52 = load i8, i8* %scevgep44.1, align 1 *)
mov v52 r_1;
(*   %conv48.1 = zext i8 %52 to i32 *)
cast v_conv48_1@uint32 v52@uint8;
(*   %53 = load i8, i8* %c, align 1 *)
mov v53 c_0;
(*   %conv51.1 = zext i8 %53 to i32 *)
cast v_conv51_1@uint32 v53@uint8;
(*   %xor52.1 = xor i32 %conv51.1, %conv48.1 *)
(* You may need to modify here *)
xor uint32 v_xor52_1 v_conv51_1 v_conv48_1;
(*   %conv53.1 = trunc i32 %xor52.1 to i8 *)
split tmp_v_xor52_1 v_conv53_1 v_xor52_1 8;
vpc v_conv53_1@uint8 v_conv53_1@uint32;
(*   store i8 %conv53.1, i8* %c, align 1 *)
mov c_0 v_conv53_1;
(*   %scevgep44.2 = getelementptr i8, i8* %r, i64 2 *)
(*   %54 = load i8, i8* %scevgep44.2, align 1 *)
mov v54 r_2;
(*   %conv48.2 = zext i8 %54 to i32 *)
cast v_conv48_2@uint32 v54@uint8;
(*   %55 = load i8, i8* %c, align 1 *)
mov v55 c_0;
(*   %conv51.2 = zext i8 %55 to i32 *)
cast v_conv51_2@uint32 v55@uint8;
(*   %xor52.2 = xor i32 %conv51.2, %conv48.2 *)
(* You may need to modify here *)
xor uint32 v_xor52_2 v_conv51_2 v_conv48_2;
(*   %conv53.2 = trunc i32 %xor52.2 to i8 *)
split tmp_v_xor52_2 v_conv53_2 v_xor52_2 8;
vpc v_conv53_2@uint8 v_conv53_2@uint32;
(*   store i8 %conv53.2, i8* %c, align 1 *)
mov c_0 v_conv53_2;
(*   %scevgep44.3 = getelementptr i8, i8* %r, i64 3 *)
(*   %56 = load i8, i8* %scevgep44.3, align 1 *)
mov v56 r_3;
(*   %conv48.3 = zext i8 %56 to i32 *)
cast v_conv48_3@uint32 v56@uint8;
(*   %57 = load i8, i8* %c, align 1 *)
mov v57 c_0;
(*   %conv51.3 = zext i8 %57 to i32 *)
cast v_conv51_3@uint32 v57@uint8;
(*   %xor52.3 = xor i32 %conv51.3, %conv48.3 *)
(* You may need to modify here *)
xor uint32 v_xor52_3 v_conv51_3 v_conv48_3;
(*   %conv53.3 = trunc i32 %xor52.3 to i8 *)
split tmp_v_xor52_3 v_conv53_3 v_xor52_3 8;
vpc v_conv53_3@uint8 v_conv53_3@uint32;
(*   store i8 %conv53.3, i8* %c, align 1 *)
mov c_0 v_conv53_3;
(*   %scevgep44.4 = getelementptr i8, i8* %r, i64 4 *)
(*   %58 = load i8, i8* %scevgep44.4, align 1 *)
mov v58 r_4;
(*   %conv48.4 = zext i8 %58 to i32 *)
cast v_conv48_4@uint32 v58@uint8;
(*   %59 = load i8, i8* %c, align 1 *)
mov v59 c_0;
(*   %conv51.4 = zext i8 %59 to i32 *)
cast v_conv51_4@uint32 v59@uint8;
(*   %xor52.4 = xor i32 %conv51.4, %conv48.4 *)
(* You may need to modify here *)
xor uint32 v_xor52_4 v_conv51_4 v_conv48_4;
(*   %conv53.4 = trunc i32 %xor52.4 to i8 *)
split tmp_v_xor52_4 v_conv53_4 v_xor52_4 8;
vpc v_conv53_4@uint8 v_conv53_4@uint32;
(*   store i8 %conv53.4, i8* %c, align 1 *)
mov c_0 v_conv53_4;
(*   %scevgep43 = getelementptr i8, i8* %r, i64 5 *)
(*   %arrayidx31.1 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %60 = load i8, i8* %arrayidx31.1, align 1 *)
mov v60 a_1;
(*   %arrayidx33.1 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %61 = load i8, i8* %arrayidx33.1, align 1 *)
mov v61 b_1;
(*   %conv.i132.147 = zext i8 %61 to i32 *)
cast v_conv_i132_147@uint32 v61@uint8;
(*   %and.i133.148 = and i32 %conv.i132.147, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_148 v_conv_i132_147 (0x1)@uint32;
(*   %conv1.i134.149 = zext i8 %60 to i32 *)
cast v_conv1_i134_149@uint32 v60@uint8;
(*   %mul.i135.150 = mul nsw i32 %and.i133.148, %conv1.i134.149 *)
mul v_mul_i135_150 v_and_i133_148 v_conv1_i134_149;
(*   %conv3.i138.151 = trunc i32 %mul.i135.150 to i8 *)
split tmp_v_mul_i135_150 v_conv3_i138_151 v_mul_i135_150 8;
vpc v_conv3_i138_151@uint8 v_conv3_i138_151@uint32;
(*   %conv4.i139.152 = zext i8 %61 to i32 *)
cast v_conv4_i139_152@uint32 v61@uint8;
(*   %shr.i140.153 = ashr i32 %conv4.i139.152, 1 *)
(* You may need to modify here *)
split v_shr_i140_153 tmp_to_be_used v_conv4_i139_152 1;
(*   %conv5.i141.154 = trunc i32 %shr.i140.153 to i8 *)
split tmp_v_shr_i140_153 v_conv5_i141_154 v_shr_i140_153 8;
vpc v_conv5_i141_154@uint8 v_conv5_i141_154@uint32;
(*   %conv6.i142.155 = zext i8 %60 to i32 *)
cast v_conv6_i142_155@uint32 v60@uint8;
(*   %shl.i143.156 = shl i32 %conv6.i142.155, 1 *)
shls discard_147 v_shl_i143_156 v_conv6_i142_155 1;
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
shls discard_148 v_shl_i143_1_1 v_conv6_i142_1_1 1;
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
shls discard_149 v_shl_i143_2_1 v_conv6_i142_2_1 1;
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
shls discard_150 v_shl_i143_3_1 v_conv6_i142_3_1 1;
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
shls discard_151 v_shl_i143_4_1 v_conv6_i142_4_1 1;
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
shls discard_152 v_shl_i143_5_1 v_conv6_i142_5_1 1;
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
shls discard_153 v_shl_i143_6_1 v_conv6_i142_6_1 1;
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
(*   %62 = load i8, i8* %scevgep43, align 1 *)
mov v62 r_5;
(*   %conv48.160 = zext i8 %62 to i32 *)
cast v_conv48_160@uint32 v62@uint8;
(*   %63 = load i8, i8* %arrayidx50.1, align 1 *)
mov v63 c_1;
(*   %conv51.161 = zext i8 %63 to i32 *)
cast v_conv51_161@uint32 v63@uint8;
(*   %xor52.162 = xor i32 %conv51.161, %conv48.160 *)
(* You may need to modify here *)
xor uint32 v_xor52_162 v_conv51_161 v_conv48_160;
(*   %conv53.163 = trunc i32 %xor52.162 to i8 *)
split tmp_v_xor52_162 v_conv53_163 v_xor52_162 8;
vpc v_conv53_163@uint8 v_conv53_163@uint32;
(*   store i8 %conv53.163, i8* %arrayidx50.1, align 1 *)
mov c_1 v_conv53_163;
(*   %scevgep44.2.1 = getelementptr i8, i8* %scevgep43, i64 2 *)
(*   %64 = load i8, i8* %scevgep44.2.1, align 1 *)
mov v64 r_7;
(*   %conv48.2.1 = zext i8 %64 to i32 *)
cast v_conv48_2_1@uint32 v64@uint8;
(*   %65 = load i8, i8* %arrayidx50.1, align 1 *)
mov v65 c_1;
(*   %conv51.2.1 = zext i8 %65 to i32 *)
cast v_conv51_2_1@uint32 v65@uint8;
(*   %xor52.2.1 = xor i32 %conv51.2.1, %conv48.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor52_2_1 v_conv51_2_1 v_conv48_2_1;
(*   %conv53.2.1 = trunc i32 %xor52.2.1 to i8 *)
split tmp_v_xor52_2_1 v_conv53_2_1 v_xor52_2_1 8;
vpc v_conv53_2_1@uint8 v_conv53_2_1@uint32;
(*   store i8 %conv53.2.1, i8* %arrayidx50.1, align 1 *)
mov c_1 v_conv53_2_1;
(*   %scevgep44.3.1 = getelementptr i8, i8* %scevgep43, i64 3 *)
(*   %66 = load i8, i8* %scevgep44.3.1, align 1 *)
mov v66 r_8;
(*   %conv48.3.1 = zext i8 %66 to i32 *)
cast v_conv48_3_1@uint32 v66@uint8;
(*   %67 = load i8, i8* %arrayidx50.1, align 1 *)
mov v67 c_1;
(*   %conv51.3.1 = zext i8 %67 to i32 *)
cast v_conv51_3_1@uint32 v67@uint8;
(*   %xor52.3.1 = xor i32 %conv51.3.1, %conv48.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor52_3_1 v_conv51_3_1 v_conv48_3_1;
(*   %conv53.3.1 = trunc i32 %xor52.3.1 to i8 *)
split tmp_v_xor52_3_1 v_conv53_3_1 v_xor52_3_1 8;
vpc v_conv53_3_1@uint8 v_conv53_3_1@uint32;
(*   store i8 %conv53.3.1, i8* %arrayidx50.1, align 1 *)
mov c_1 v_conv53_3_1;
(*   %scevgep44.4.1 = getelementptr i8, i8* %scevgep43, i64 4 *)
(*   %68 = load i8, i8* %scevgep44.4.1, align 1 *)
mov v68 r_9;
(*   %conv48.4.1 = zext i8 %68 to i32 *)
cast v_conv48_4_1@uint32 v68@uint8;
(*   %69 = load i8, i8* %arrayidx50.1, align 1 *)
mov v69 c_1;
(*   %conv51.4.1 = zext i8 %69 to i32 *)
cast v_conv51_4_1@uint32 v69@uint8;
(*   %xor52.4.1 = xor i32 %conv51.4.1, %conv48.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor52_4_1 v_conv51_4_1 v_conv48_4_1;
(*   %conv53.4.1 = trunc i32 %xor52.4.1 to i8 *)
split tmp_v_xor52_4_1 v_conv53_4_1 v_xor52_4_1 8;
vpc v_conv53_4_1@uint8 v_conv53_4_1@uint32;
(*   store i8 %conv53.4.1, i8* %arrayidx50.1, align 1 *)
mov c_1 v_conv53_4_1;
(*   %scevgep43.1 = getelementptr i8, i8* %scevgep43, i64 5 *)
(*   %arrayidx31.2 = getelementptr inbounds i8, i8* %a, i64 2 *)
(*   %70 = load i8, i8* %arrayidx31.2, align 1 *)
mov v70 a_2;
(*   %arrayidx33.2 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %71 = load i8, i8* %arrayidx33.2, align 1 *)
mov v71 b_2;
(*   %conv.i132.267 = zext i8 %71 to i32 *)
cast v_conv_i132_267@uint32 v71@uint8;
(*   %and.i133.268 = and i32 %conv.i132.267, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_268 v_conv_i132_267 (0x1)@uint32;
(*   %conv1.i134.269 = zext i8 %70 to i32 *)
cast v_conv1_i134_269@uint32 v70@uint8;
(*   %mul.i135.270 = mul nsw i32 %and.i133.268, %conv1.i134.269 *)
mul v_mul_i135_270 v_and_i133_268 v_conv1_i134_269;
(*   %conv3.i138.271 = trunc i32 %mul.i135.270 to i8 *)
split tmp_v_mul_i135_270 v_conv3_i138_271 v_mul_i135_270 8;
vpc v_conv3_i138_271@uint8 v_conv3_i138_271@uint32;
(*   %conv4.i139.272 = zext i8 %71 to i32 *)
cast v_conv4_i139_272@uint32 v71@uint8;
(*   %shr.i140.273 = ashr i32 %conv4.i139.272, 1 *)
(* You may need to modify here *)
split v_shr_i140_273 tmp_to_be_used v_conv4_i139_272 1;
(*   %conv5.i141.274 = trunc i32 %shr.i140.273 to i8 *)
split tmp_v_shr_i140_273 v_conv5_i141_274 v_shr_i140_273 8;
vpc v_conv5_i141_274@uint8 v_conv5_i141_274@uint32;
(*   %conv6.i142.275 = zext i8 %70 to i32 *)
cast v_conv6_i142_275@uint32 v70@uint8;
(*   %shl.i143.276 = shl i32 %conv6.i142.275, 1 *)
shls discard_154 v_shl_i143_276 v_conv6_i142_275 1;
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
shls discard_155 v_shl_i143_1_2 v_conv6_i142_1_2 1;
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
shls discard_156 v_shl_i143_2_2 v_conv6_i142_2_2 1;
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
shls discard_157 v_shl_i143_3_2 v_conv6_i142_3_2 1;
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
shls discard_158 v_shl_i143_4_2 v_conv6_i142_4_2 1;
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
shls discard_159 v_shl_i143_5_2 v_conv6_i142_5_2 1;
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
shls discard_160 v_shl_i143_6_2 v_conv6_i142_6_2 1;
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
(*   %72 = load i8, i8* %scevgep43.1, align 1 *)
mov v72 r_10;
(*   %conv48.280 = zext i8 %72 to i32 *)
cast v_conv48_280@uint32 v72@uint8;
(*   %73 = load i8, i8* %arrayidx50.2, align 1 *)
mov v73 c_2;
(*   %conv51.281 = zext i8 %73 to i32 *)
cast v_conv51_281@uint32 v73@uint8;
(*   %xor52.282 = xor i32 %conv51.281, %conv48.280 *)
(* You may need to modify here *)
xor uint32 v_xor52_282 v_conv51_281 v_conv48_280;
(*   %conv53.283 = trunc i32 %xor52.282 to i8 *)
split tmp_v_xor52_282 v_conv53_283 v_xor52_282 8;
vpc v_conv53_283@uint8 v_conv53_283@uint32;
(*   store i8 %conv53.283, i8* %arrayidx50.2, align 1 *)
mov c_2 v_conv53_283;
(*   %scevgep44.1.2 = getelementptr i8, i8* %scevgep43.1, i64 1 *)
(*   %74 = load i8, i8* %scevgep44.1.2, align 1 *)
mov v74 r_11;
(*   %conv48.1.2 = zext i8 %74 to i32 *)
cast v_conv48_1_2@uint32 v74@uint8;
(*   %75 = load i8, i8* %arrayidx50.2, align 1 *)
mov v75 c_2;
(*   %conv51.1.2 = zext i8 %75 to i32 *)
cast v_conv51_1_2@uint32 v75@uint8;
(*   %xor52.1.2 = xor i32 %conv51.1.2, %conv48.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor52_1_2 v_conv51_1_2 v_conv48_1_2;
(*   %conv53.1.2 = trunc i32 %xor52.1.2 to i8 *)
split tmp_v_xor52_1_2 v_conv53_1_2 v_xor52_1_2 8;
vpc v_conv53_1_2@uint8 v_conv53_1_2@uint32;
(*   store i8 %conv53.1.2, i8* %arrayidx50.2, align 1 *)
mov c_2 v_conv53_1_2;
(*   %scevgep44.3.2 = getelementptr i8, i8* %scevgep43.1, i64 3 *)
(*   %76 = load i8, i8* %scevgep44.3.2, align 1 *)
mov v76 r_13;
(*   %conv48.3.2 = zext i8 %76 to i32 *)
cast v_conv48_3_2@uint32 v76@uint8;
(*   %77 = load i8, i8* %arrayidx50.2, align 1 *)
mov v77 c_2;
(*   %conv51.3.2 = zext i8 %77 to i32 *)
cast v_conv51_3_2@uint32 v77@uint8;
(*   %xor52.3.2 = xor i32 %conv51.3.2, %conv48.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor52_3_2 v_conv51_3_2 v_conv48_3_2;
(*   %conv53.3.2 = trunc i32 %xor52.3.2 to i8 *)
split tmp_v_xor52_3_2 v_conv53_3_2 v_xor52_3_2 8;
vpc v_conv53_3_2@uint8 v_conv53_3_2@uint32;
(*   store i8 %conv53.3.2, i8* %arrayidx50.2, align 1 *)
mov c_2 v_conv53_3_2;
(*   %scevgep44.4.2 = getelementptr i8, i8* %scevgep43.1, i64 4 *)
(*   %78 = load i8, i8* %scevgep44.4.2, align 1 *)
mov v78 r_14;
(*   %conv48.4.2 = zext i8 %78 to i32 *)
cast v_conv48_4_2@uint32 v78@uint8;
(*   %79 = load i8, i8* %arrayidx50.2, align 1 *)
mov v79 c_2;
(*   %conv51.4.2 = zext i8 %79 to i32 *)
cast v_conv51_4_2@uint32 v79@uint8;
(*   %xor52.4.2 = xor i32 %conv51.4.2, %conv48.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor52_4_2 v_conv51_4_2 v_conv48_4_2;
(*   %conv53.4.2 = trunc i32 %xor52.4.2 to i8 *)
split tmp_v_xor52_4_2 v_conv53_4_2 v_xor52_4_2 8;
vpc v_conv53_4_2@uint8 v_conv53_4_2@uint32;
(*   store i8 %conv53.4.2, i8* %arrayidx50.2, align 1 *)
mov c_2 v_conv53_4_2;
(*   %scevgep43.2 = getelementptr i8, i8* %scevgep43.1, i64 5 *)
(*   %arrayidx31.3 = getelementptr inbounds i8, i8* %a, i64 3 *)
(*   %80 = load i8, i8* %arrayidx31.3, align 1 *)
mov v80 a_3;
(*   %arrayidx33.3 = getelementptr inbounds i8, i8* %b, i64 3 *)
(*   %81 = load i8, i8* %arrayidx33.3, align 1 *)
mov v81 b_3;
(*   %conv.i132.387 = zext i8 %81 to i32 *)
cast v_conv_i132_387@uint32 v81@uint8;
(*   %and.i133.388 = and i32 %conv.i132.387, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_388 v_conv_i132_387 (0x1)@uint32;
(*   %conv1.i134.389 = zext i8 %80 to i32 *)
cast v_conv1_i134_389@uint32 v80@uint8;
(*   %mul.i135.390 = mul nsw i32 %and.i133.388, %conv1.i134.389 *)
mul v_mul_i135_390 v_and_i133_388 v_conv1_i134_389;
(*   %conv3.i138.391 = trunc i32 %mul.i135.390 to i8 *)
split tmp_v_mul_i135_390 v_conv3_i138_391 v_mul_i135_390 8;
vpc v_conv3_i138_391@uint8 v_conv3_i138_391@uint32;
(*   %conv4.i139.392 = zext i8 %81 to i32 *)
cast v_conv4_i139_392@uint32 v81@uint8;
(*   %shr.i140.393 = ashr i32 %conv4.i139.392, 1 *)
(* You may need to modify here *)
split v_shr_i140_393 tmp_to_be_used v_conv4_i139_392 1;
(*   %conv5.i141.394 = trunc i32 %shr.i140.393 to i8 *)
split tmp_v_shr_i140_393 v_conv5_i141_394 v_shr_i140_393 8;
vpc v_conv5_i141_394@uint8 v_conv5_i141_394@uint32;
(*   %conv6.i142.395 = zext i8 %80 to i32 *)
cast v_conv6_i142_395@uint32 v80@uint8;
(*   %shl.i143.396 = shl i32 %conv6.i142.395, 1 *)
shls discard_161 v_shl_i143_396 v_conv6_i142_395 1;
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
shls discard_162 v_shl_i143_1_3 v_conv6_i142_1_3 1;
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
shls discard_163 v_shl_i143_2_3 v_conv6_i142_2_3 1;
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
shls discard_164 v_shl_i143_3_3 v_conv6_i142_3_3 1;
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
shls discard_165 v_shl_i143_4_3 v_conv6_i142_4_3 1;
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
shls discard_166 v_shl_i143_5_3 v_conv6_i142_5_3 1;
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
shls discard_167 v_shl_i143_6_3 v_conv6_i142_6_3 1;
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
(*   %82 = load i8, i8* %scevgep43.2, align 1 *)
mov v82 r_15;
(*   %conv48.3100 = zext i8 %82 to i32 *)
cast v_conv48_3100@uint32 v82@uint8;
(*   %83 = load i8, i8* %arrayidx50.3, align 1 *)
mov v83 c_3;
(*   %conv51.3101 = zext i8 %83 to i32 *)
cast v_conv51_3101@uint32 v83@uint8;
(*   %xor52.3102 = xor i32 %conv51.3101, %conv48.3100 *)
(* You may need to modify here *)
xor uint32 v_xor52_3102 v_conv51_3101 v_conv48_3100;
(*   %conv53.3103 = trunc i32 %xor52.3102 to i8 *)
split tmp_v_xor52_3102 v_conv53_3103 v_xor52_3102 8;
vpc v_conv53_3103@uint8 v_conv53_3103@uint32;
(*   store i8 %conv53.3103, i8* %arrayidx50.3, align 1 *)
mov c_3 v_conv53_3103;
(*   %scevgep44.1.3 = getelementptr i8, i8* %scevgep43.2, i64 1 *)
(*   %84 = load i8, i8* %scevgep44.1.3, align 1 *)
mov v84 r_16;
(*   %conv48.1.3 = zext i8 %84 to i32 *)
cast v_conv48_1_3@uint32 v84@uint8;
(*   %85 = load i8, i8* %arrayidx50.3, align 1 *)
mov v85 c_3;
(*   %conv51.1.3 = zext i8 %85 to i32 *)
cast v_conv51_1_3@uint32 v85@uint8;
(*   %xor52.1.3 = xor i32 %conv51.1.3, %conv48.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor52_1_3 v_conv51_1_3 v_conv48_1_3;
(*   %conv53.1.3 = trunc i32 %xor52.1.3 to i8 *)
split tmp_v_xor52_1_3 v_conv53_1_3 v_xor52_1_3 8;
vpc v_conv53_1_3@uint8 v_conv53_1_3@uint32;
(*   store i8 %conv53.1.3, i8* %arrayidx50.3, align 1 *)
mov c_3 v_conv53_1_3;
(*   %scevgep44.2.3 = getelementptr i8, i8* %scevgep43.2, i64 2 *)
(*   %86 = load i8, i8* %scevgep44.2.3, align 1 *)
mov v86 r_17;
(*   %conv48.2.3 = zext i8 %86 to i32 *)
cast v_conv48_2_3@uint32 v86@uint8;
(*   %87 = load i8, i8* %arrayidx50.3, align 1 *)
mov v87 c_3;
(*   %conv51.2.3 = zext i8 %87 to i32 *)
cast v_conv51_2_3@uint32 v87@uint8;
(*   %xor52.2.3 = xor i32 %conv51.2.3, %conv48.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor52_2_3 v_conv51_2_3 v_conv48_2_3;
(*   %conv53.2.3 = trunc i32 %xor52.2.3 to i8 *)
split tmp_v_xor52_2_3 v_conv53_2_3 v_xor52_2_3 8;
vpc v_conv53_2_3@uint8 v_conv53_2_3@uint32;
(*   store i8 %conv53.2.3, i8* %arrayidx50.3, align 1 *)
mov c_3 v_conv53_2_3;
(*   %scevgep44.4.3 = getelementptr i8, i8* %scevgep43.2, i64 4 *)
(*   %88 = load i8, i8* %scevgep44.4.3, align 1 *)
mov v88 r_19;
(*   %conv48.4.3 = zext i8 %88 to i32 *)
cast v_conv48_4_3@uint32 v88@uint8;
(*   %89 = load i8, i8* %arrayidx50.3, align 1 *)
mov v89 c_3;
(*   %conv51.4.3 = zext i8 %89 to i32 *)
cast v_conv51_4_3@uint32 v89@uint8;
(*   %xor52.4.3 = xor i32 %conv51.4.3, %conv48.4.3 *)
(* You may need to modify here *)
xor uint32 v_xor52_4_3 v_conv51_4_3 v_conv48_4_3;
(*   %conv53.4.3 = trunc i32 %xor52.4.3 to i8 *)
split tmp_v_xor52_4_3 v_conv53_4_3 v_xor52_4_3 8;
vpc v_conv53_4_3@uint8 v_conv53_4_3@uint32;
(*   store i8 %conv53.4.3, i8* %arrayidx50.3, align 1 *)
mov c_3 v_conv53_4_3;
(*   %scevgep43.3 = getelementptr i8, i8* %scevgep43.2, i64 5 *)
(*   %arrayidx31.4 = getelementptr inbounds i8, i8* %a, i64 4 *)
(*   %90 = load i8, i8* %arrayidx31.4, align 1 *)
mov v90 a_4;
(*   %arrayidx33.4 = getelementptr inbounds i8, i8* %b, i64 4 *)
(*   %91 = load i8, i8* %arrayidx33.4, align 1 *)
mov v91 b_4;
(*   %conv.i132.4107 = zext i8 %91 to i32 *)
cast v_conv_i132_4107@uint32 v91@uint8;
(*   %and.i133.4108 = and i32 %conv.i132.4107, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_4108 v_conv_i132_4107 (0x1)@uint32;
(*   %conv1.i134.4109 = zext i8 %90 to i32 *)
cast v_conv1_i134_4109@uint32 v90@uint8;
(*   %mul.i135.4110 = mul nsw i32 %and.i133.4108, %conv1.i134.4109 *)
mul v_mul_i135_4110 v_and_i133_4108 v_conv1_i134_4109;
(*   %conv3.i138.4111 = trunc i32 %mul.i135.4110 to i8 *)
split tmp_v_mul_i135_4110 v_conv3_i138_4111 v_mul_i135_4110 8;
vpc v_conv3_i138_4111@uint8 v_conv3_i138_4111@uint32;
(*   %conv4.i139.4112 = zext i8 %91 to i32 *)
cast v_conv4_i139_4112@uint32 v91@uint8;
(*   %shr.i140.4113 = ashr i32 %conv4.i139.4112, 1 *)
(* You may need to modify here *)
split v_shr_i140_4113 tmp_to_be_used v_conv4_i139_4112 1;
(*   %conv5.i141.4114 = trunc i32 %shr.i140.4113 to i8 *)
split tmp_v_shr_i140_4113 v_conv5_i141_4114 v_shr_i140_4113 8;
vpc v_conv5_i141_4114@uint8 v_conv5_i141_4114@uint32;
(*   %conv6.i142.4115 = zext i8 %90 to i32 *)
cast v_conv6_i142_4115@uint32 v90@uint8;
(*   %shl.i143.4116 = shl i32 %conv6.i142.4115, 1 *)
shls discard_168 v_shl_i143_4116 v_conv6_i142_4115 1;
(*   %conv7.i144.4117 = trunc i32 %shl.i143.4116 to i8 *)
split tmp_v_shl_i143_4116 v_conv7_i144_4117 v_shl_i143_4116 8;
vpc v_conv7_i144_4117@uint8 v_conv7_i144_4117@uint32;
(*   %conv.i132.1.4 = zext i8 %conv5.i141.4114 to i32 *)
cast v_conv_i132_1_4@uint32 v_conv5_i141_4114@uint8;
(*   %and.i133.1.4 = and i32 %conv.i132.1.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_1_4 v_conv_i132_1_4 (0x1)@uint32;
(*   %conv1.i134.1.4 = zext i8 %conv7.i144.4117 to i32 *)
cast v_conv1_i134_1_4@uint32 v_conv7_i144_4117@uint8;
(*   %mul.i135.1.4 = mul nsw i32 %and.i133.1.4, %conv1.i134.1.4 *)
mul v_mul_i135_1_4 v_and_i133_1_4 v_conv1_i134_1_4;
(*   %conv2.i136.1.4 = zext i8 %conv3.i138.4111 to i32 *)
cast v_conv2_i136_1_4@uint32 v_conv3_i138_4111@uint8;
(*   %xor.i137.1.4 = xor i32 %conv2.i136.1.4, %mul.i135.1.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i137_1_4 v_conv2_i136_1_4 v_mul_i135_1_4;
(*   %conv3.i138.1.4 = trunc i32 %xor.i137.1.4 to i8 *)
split tmp_v_xor_i137_1_4 v_conv3_i138_1_4 v_xor_i137_1_4 8;
vpc v_conv3_i138_1_4@uint8 v_conv3_i138_1_4@uint32;
(*   %conv4.i139.1.4 = zext i8 %conv5.i141.4114 to i32 *)
cast v_conv4_i139_1_4@uint32 v_conv5_i141_4114@uint8;
(*   %shr.i140.1.4 = ashr i32 %conv4.i139.1.4, 1 *)
(* You may need to modify here *)
split v_shr_i140_1_4 tmp_to_be_used v_conv4_i139_1_4 1;
(*   %conv5.i141.1.4 = trunc i32 %shr.i140.1.4 to i8 *)
split tmp_v_shr_i140_1_4 v_conv5_i141_1_4 v_shr_i140_1_4 8;
vpc v_conv5_i141_1_4@uint8 v_conv5_i141_1_4@uint32;
(*   %conv6.i142.1.4 = zext i8 %conv7.i144.4117 to i32 *)
cast v_conv6_i142_1_4@uint32 v_conv7_i144_4117@uint8;
(*   %shl.i143.1.4 = shl i32 %conv6.i142.1.4, 1 *)
shls discard_169 v_shl_i143_1_4 v_conv6_i142_1_4 1;
(*   %conv7.i144.1.4 = trunc i32 %shl.i143.1.4 to i8 *)
split tmp_v_shl_i143_1_4 v_conv7_i144_1_4 v_shl_i143_1_4 8;
vpc v_conv7_i144_1_4@uint8 v_conv7_i144_1_4@uint32;
(*   %conv.i132.2.4 = zext i8 %conv5.i141.1.4 to i32 *)
cast v_conv_i132_2_4@uint32 v_conv5_i141_1_4@uint8;
(*   %and.i133.2.4 = and i32 %conv.i132.2.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_2_4 v_conv_i132_2_4 (0x1)@uint32;
(*   %conv1.i134.2.4 = zext i8 %conv7.i144.1.4 to i32 *)
cast v_conv1_i134_2_4@uint32 v_conv7_i144_1_4@uint8;
(*   %mul.i135.2.4 = mul nsw i32 %and.i133.2.4, %conv1.i134.2.4 *)
mul v_mul_i135_2_4 v_and_i133_2_4 v_conv1_i134_2_4;
(*   %conv2.i136.2.4 = zext i8 %conv3.i138.1.4 to i32 *)
cast v_conv2_i136_2_4@uint32 v_conv3_i138_1_4@uint8;
(*   %xor.i137.2.4 = xor i32 %conv2.i136.2.4, %mul.i135.2.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i137_2_4 v_conv2_i136_2_4 v_mul_i135_2_4;
(*   %conv3.i138.2.4 = trunc i32 %xor.i137.2.4 to i8 *)
split tmp_v_xor_i137_2_4 v_conv3_i138_2_4 v_xor_i137_2_4 8;
vpc v_conv3_i138_2_4@uint8 v_conv3_i138_2_4@uint32;
(*   %conv4.i139.2.4 = zext i8 %conv5.i141.1.4 to i32 *)
cast v_conv4_i139_2_4@uint32 v_conv5_i141_1_4@uint8;
(*   %shr.i140.2.4 = ashr i32 %conv4.i139.2.4, 1 *)
(* You may need to modify here *)
split v_shr_i140_2_4 tmp_to_be_used v_conv4_i139_2_4 1;
(*   %conv5.i141.2.4 = trunc i32 %shr.i140.2.4 to i8 *)
split tmp_v_shr_i140_2_4 v_conv5_i141_2_4 v_shr_i140_2_4 8;
vpc v_conv5_i141_2_4@uint8 v_conv5_i141_2_4@uint32;
(*   %conv6.i142.2.4 = zext i8 %conv7.i144.1.4 to i32 *)
cast v_conv6_i142_2_4@uint32 v_conv7_i144_1_4@uint8;
(*   %shl.i143.2.4 = shl i32 %conv6.i142.2.4, 1 *)
shls discard_170 v_shl_i143_2_4 v_conv6_i142_2_4 1;
(*   %conv7.i144.2.4 = trunc i32 %shl.i143.2.4 to i8 *)
split tmp_v_shl_i143_2_4 v_conv7_i144_2_4 v_shl_i143_2_4 8;
vpc v_conv7_i144_2_4@uint8 v_conv7_i144_2_4@uint32;
(*   %conv.i132.3.4 = zext i8 %conv5.i141.2.4 to i32 *)
cast v_conv_i132_3_4@uint32 v_conv5_i141_2_4@uint8;
(*   %and.i133.3.4 = and i32 %conv.i132.3.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_3_4 v_conv_i132_3_4 (0x1)@uint32;
(*   %conv1.i134.3.4 = zext i8 %conv7.i144.2.4 to i32 *)
cast v_conv1_i134_3_4@uint32 v_conv7_i144_2_4@uint8;
(*   %mul.i135.3.4 = mul nsw i32 %and.i133.3.4, %conv1.i134.3.4 *)
mul v_mul_i135_3_4 v_and_i133_3_4 v_conv1_i134_3_4;
(*   %conv2.i136.3.4 = zext i8 %conv3.i138.2.4 to i32 *)
cast v_conv2_i136_3_4@uint32 v_conv3_i138_2_4@uint8;
(*   %xor.i137.3.4 = xor i32 %conv2.i136.3.4, %mul.i135.3.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i137_3_4 v_conv2_i136_3_4 v_mul_i135_3_4;
(*   %conv3.i138.3.4 = trunc i32 %xor.i137.3.4 to i8 *)
split tmp_v_xor_i137_3_4 v_conv3_i138_3_4 v_xor_i137_3_4 8;
vpc v_conv3_i138_3_4@uint8 v_conv3_i138_3_4@uint32;
(*   %conv4.i139.3.4 = zext i8 %conv5.i141.2.4 to i32 *)
cast v_conv4_i139_3_4@uint32 v_conv5_i141_2_4@uint8;
(*   %shr.i140.3.4 = ashr i32 %conv4.i139.3.4, 1 *)
(* You may need to modify here *)
split v_shr_i140_3_4 tmp_to_be_used v_conv4_i139_3_4 1;
(*   %conv5.i141.3.4 = trunc i32 %shr.i140.3.4 to i8 *)
split tmp_v_shr_i140_3_4 v_conv5_i141_3_4 v_shr_i140_3_4 8;
vpc v_conv5_i141_3_4@uint8 v_conv5_i141_3_4@uint32;
(*   %conv6.i142.3.4 = zext i8 %conv7.i144.2.4 to i32 *)
cast v_conv6_i142_3_4@uint32 v_conv7_i144_2_4@uint8;
(*   %shl.i143.3.4 = shl i32 %conv6.i142.3.4, 1 *)
shls discard_171 v_shl_i143_3_4 v_conv6_i142_3_4 1;
(*   %conv7.i144.3.4 = trunc i32 %shl.i143.3.4 to i8 *)
split tmp_v_shl_i143_3_4 v_conv7_i144_3_4 v_shl_i143_3_4 8;
vpc v_conv7_i144_3_4@uint8 v_conv7_i144_3_4@uint32;
(*   %conv.i132.4.4 = zext i8 %conv5.i141.3.4 to i32 *)
cast v_conv_i132_4_4@uint32 v_conv5_i141_3_4@uint8;
(*   %and.i133.4.4 = and i32 %conv.i132.4.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_4_4 v_conv_i132_4_4 (0x1)@uint32;
(*   %conv1.i134.4.4 = zext i8 %conv7.i144.3.4 to i32 *)
cast v_conv1_i134_4_4@uint32 v_conv7_i144_3_4@uint8;
(*   %mul.i135.4.4 = mul nsw i32 %and.i133.4.4, %conv1.i134.4.4 *)
mul v_mul_i135_4_4 v_and_i133_4_4 v_conv1_i134_4_4;
(*   %conv2.i136.4.4 = zext i8 %conv3.i138.3.4 to i32 *)
cast v_conv2_i136_4_4@uint32 v_conv3_i138_3_4@uint8;
(*   %xor.i137.4.4 = xor i32 %conv2.i136.4.4, %mul.i135.4.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i137_4_4 v_conv2_i136_4_4 v_mul_i135_4_4;
(*   %conv3.i138.4.4 = trunc i32 %xor.i137.4.4 to i8 *)
split tmp_v_xor_i137_4_4 v_conv3_i138_4_4 v_xor_i137_4_4 8;
vpc v_conv3_i138_4_4@uint8 v_conv3_i138_4_4@uint32;
(*   %conv4.i139.4.4 = zext i8 %conv5.i141.3.4 to i32 *)
cast v_conv4_i139_4_4@uint32 v_conv5_i141_3_4@uint8;
(*   %shr.i140.4.4 = ashr i32 %conv4.i139.4.4, 1 *)
(* You may need to modify here *)
split v_shr_i140_4_4 tmp_to_be_used v_conv4_i139_4_4 1;
(*   %conv5.i141.4.4 = trunc i32 %shr.i140.4.4 to i8 *)
split tmp_v_shr_i140_4_4 v_conv5_i141_4_4 v_shr_i140_4_4 8;
vpc v_conv5_i141_4_4@uint8 v_conv5_i141_4_4@uint32;
(*   %conv6.i142.4.4 = zext i8 %conv7.i144.3.4 to i32 *)
cast v_conv6_i142_4_4@uint32 v_conv7_i144_3_4@uint8;
(*   %shl.i143.4.4 = shl i32 %conv6.i142.4.4, 1 *)
shls discard_172 v_shl_i143_4_4 v_conv6_i142_4_4 1;
(*   %conv7.i144.4.4 = trunc i32 %shl.i143.4.4 to i8 *)
split tmp_v_shl_i143_4_4 v_conv7_i144_4_4 v_shl_i143_4_4 8;
vpc v_conv7_i144_4_4@uint8 v_conv7_i144_4_4@uint32;
(*   %conv.i132.5.4 = zext i8 %conv5.i141.4.4 to i32 *)
cast v_conv_i132_5_4@uint32 v_conv5_i141_4_4@uint8;
(*   %and.i133.5.4 = and i32 %conv.i132.5.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_5_4 v_conv_i132_5_4 (0x1)@uint32;
(*   %conv1.i134.5.4 = zext i8 %conv7.i144.4.4 to i32 *)
cast v_conv1_i134_5_4@uint32 v_conv7_i144_4_4@uint8;
(*   %mul.i135.5.4 = mul nsw i32 %and.i133.5.4, %conv1.i134.5.4 *)
mul v_mul_i135_5_4 v_and_i133_5_4 v_conv1_i134_5_4;
(*   %conv2.i136.5.4 = zext i8 %conv3.i138.4.4 to i32 *)
cast v_conv2_i136_5_4@uint32 v_conv3_i138_4_4@uint8;
(*   %xor.i137.5.4 = xor i32 %conv2.i136.5.4, %mul.i135.5.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i137_5_4 v_conv2_i136_5_4 v_mul_i135_5_4;
(*   %conv3.i138.5.4 = trunc i32 %xor.i137.5.4 to i8 *)
split tmp_v_xor_i137_5_4 v_conv3_i138_5_4 v_xor_i137_5_4 8;
vpc v_conv3_i138_5_4@uint8 v_conv3_i138_5_4@uint32;
(*   %conv4.i139.5.4 = zext i8 %conv5.i141.4.4 to i32 *)
cast v_conv4_i139_5_4@uint32 v_conv5_i141_4_4@uint8;
(*   %shr.i140.5.4 = ashr i32 %conv4.i139.5.4, 1 *)
(* You may need to modify here *)
split v_shr_i140_5_4 tmp_to_be_used v_conv4_i139_5_4 1;
(*   %conv5.i141.5.4 = trunc i32 %shr.i140.5.4 to i8 *)
split tmp_v_shr_i140_5_4 v_conv5_i141_5_4 v_shr_i140_5_4 8;
vpc v_conv5_i141_5_4@uint8 v_conv5_i141_5_4@uint32;
(*   %conv6.i142.5.4 = zext i8 %conv7.i144.4.4 to i32 *)
cast v_conv6_i142_5_4@uint32 v_conv7_i144_4_4@uint8;
(*   %shl.i143.5.4 = shl i32 %conv6.i142.5.4, 1 *)
shls discard_173 v_shl_i143_5_4 v_conv6_i142_5_4 1;
(*   %conv7.i144.5.4 = trunc i32 %shl.i143.5.4 to i8 *)
split tmp_v_shl_i143_5_4 v_conv7_i144_5_4 v_shl_i143_5_4 8;
vpc v_conv7_i144_5_4@uint8 v_conv7_i144_5_4@uint32;
(*   %conv.i132.6.4 = zext i8 %conv5.i141.5.4 to i32 *)
cast v_conv_i132_6_4@uint32 v_conv5_i141_5_4@uint8;
(*   %and.i133.6.4 = and i32 %conv.i132.6.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_6_4 v_conv_i132_6_4 (0x1)@uint32;
(*   %conv1.i134.6.4 = zext i8 %conv7.i144.5.4 to i32 *)
cast v_conv1_i134_6_4@uint32 v_conv7_i144_5_4@uint8;
(*   %mul.i135.6.4 = mul nsw i32 %and.i133.6.4, %conv1.i134.6.4 *)
mul v_mul_i135_6_4 v_and_i133_6_4 v_conv1_i134_6_4;
(*   %conv2.i136.6.4 = zext i8 %conv3.i138.5.4 to i32 *)
cast v_conv2_i136_6_4@uint32 v_conv3_i138_5_4@uint8;
(*   %xor.i137.6.4 = xor i32 %conv2.i136.6.4, %mul.i135.6.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i137_6_4 v_conv2_i136_6_4 v_mul_i135_6_4;
(*   %conv3.i138.6.4 = trunc i32 %xor.i137.6.4 to i8 *)
split tmp_v_xor_i137_6_4 v_conv3_i138_6_4 v_xor_i137_6_4 8;
vpc v_conv3_i138_6_4@uint8 v_conv3_i138_6_4@uint32;
(*   %conv4.i139.6.4 = zext i8 %conv5.i141.5.4 to i32 *)
cast v_conv4_i139_6_4@uint32 v_conv5_i141_5_4@uint8;
(*   %shr.i140.6.4 = ashr i32 %conv4.i139.6.4, 1 *)
(* You may need to modify here *)
split v_shr_i140_6_4 tmp_to_be_used v_conv4_i139_6_4 1;
(*   %conv5.i141.6.4 = trunc i32 %shr.i140.6.4 to i8 *)
split tmp_v_shr_i140_6_4 v_conv5_i141_6_4 v_shr_i140_6_4 8;
vpc v_conv5_i141_6_4@uint8 v_conv5_i141_6_4@uint32;
(*   %conv6.i142.6.4 = zext i8 %conv7.i144.5.4 to i32 *)
cast v_conv6_i142_6_4@uint32 v_conv7_i144_5_4@uint8;
(*   %shl.i143.6.4 = shl i32 %conv6.i142.6.4, 1 *)
shls discard_174 v_shl_i143_6_4 v_conv6_i142_6_4 1;
(*   %conv7.i144.6.4 = trunc i32 %shl.i143.6.4 to i8 *)
split tmp_v_shl_i143_6_4 v_conv7_i144_6_4 v_shl_i143_6_4 8;
vpc v_conv7_i144_6_4@uint8 v_conv7_i144_6_4@uint32;
(*   %conv.i132.7.4 = zext i8 %conv5.i141.6.4 to i32 *)
cast v_conv_i132_7_4@uint32 v_conv5_i141_6_4@uint8;
(*   %and.i133.7.4 = and i32 %conv.i132.7.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i133_7_4 v_conv_i132_7_4 (0x1)@uint32;
(*   %conv1.i134.7.4 = zext i8 %conv7.i144.6.4 to i32 *)
cast v_conv1_i134_7_4@uint32 v_conv7_i144_6_4@uint8;
(*   %mul.i135.7.4 = mul nsw i32 %and.i133.7.4, %conv1.i134.7.4 *)
mul v_mul_i135_7_4 v_and_i133_7_4 v_conv1_i134_7_4;
(*   %conv2.i136.7.4 = zext i8 %conv3.i138.6.4 to i32 *)
cast v_conv2_i136_7_4@uint32 v_conv3_i138_6_4@uint8;
(*   %xor.i137.7.4 = xor i32 %conv2.i136.7.4, %mul.i135.7.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i137_7_4 v_conv2_i136_7_4 v_mul_i135_7_4;
(*   %conv3.i138.7.4 = trunc i32 %xor.i137.7.4 to i8 *)
split tmp_v_xor_i137_7_4 v_conv3_i138_7_4 v_xor_i137_7_4 8;
vpc v_conv3_i138_7_4@uint8 v_conv3_i138_7_4@uint32;
(*   %arrayidx36.4 = getelementptr inbounds i8, i8* %c, i64 4 *)
(*   store i8 %conv3.i138.7.4, i8* %arrayidx36.4, align 1 *)
mov c_4 v_conv3_i138_7_4;
(*   %arrayidx50.4 = getelementptr inbounds i8, i8* %c, i64 4 *)
(*   %92 = load i8, i8* %scevgep43.3, align 1 *)
mov v92 r_20;
(*   %conv48.4120 = zext i8 %92 to i32 *)
cast v_conv48_4120@uint32 v92@uint8;
(*   %93 = load i8, i8* %arrayidx50.4, align 1 *)
mov v93 c_4;
(*   %conv51.4121 = zext i8 %93 to i32 *)
cast v_conv51_4121@uint32 v93@uint8;
(*   %xor52.4122 = xor i32 %conv51.4121, %conv48.4120 *)
(* You may need to modify here *)
xor uint32 v_xor52_4122 v_conv51_4121 v_conv48_4120;
(*   %conv53.4123 = trunc i32 %xor52.4122 to i8 *)
split tmp_v_xor52_4122 v_conv53_4123 v_xor52_4122 8;
vpc v_conv53_4123@uint8 v_conv53_4123@uint32;
(*   store i8 %conv53.4123, i8* %arrayidx50.4, align 1 *)
mov c_4 v_conv53_4123;
(*   %scevgep44.1.4 = getelementptr i8, i8* %scevgep43.3, i64 1 *)
(*   %94 = load i8, i8* %scevgep44.1.4, align 1 *)
mov v94 r_21;
(*   %conv48.1.4 = zext i8 %94 to i32 *)
cast v_conv48_1_4@uint32 v94@uint8;
(*   %95 = load i8, i8* %arrayidx50.4, align 1 *)
mov v95 c_4;
(*   %conv51.1.4 = zext i8 %95 to i32 *)
cast v_conv51_1_4@uint32 v95@uint8;
(*   %xor52.1.4 = xor i32 %conv51.1.4, %conv48.1.4 *)
(* You may need to modify here *)
xor uint32 v_xor52_1_4 v_conv51_1_4 v_conv48_1_4;
(*   %conv53.1.4 = trunc i32 %xor52.1.4 to i8 *)
split tmp_v_xor52_1_4 v_conv53_1_4 v_xor52_1_4 8;
vpc v_conv53_1_4@uint8 v_conv53_1_4@uint32;
(*   store i8 %conv53.1.4, i8* %arrayidx50.4, align 1 *)
mov c_4 v_conv53_1_4;
(*   %scevgep44.2.4 = getelementptr i8, i8* %scevgep43.3, i64 2 *)
(*   %96 = load i8, i8* %scevgep44.2.4, align 1 *)
mov v96 r_22;
(*   %conv48.2.4 = zext i8 %96 to i32 *)
cast v_conv48_2_4@uint32 v96@uint8;
(*   %97 = load i8, i8* %arrayidx50.4, align 1 *)
mov v97 c_4;
(*   %conv51.2.4 = zext i8 %97 to i32 *)
cast v_conv51_2_4@uint32 v97@uint8;
(*   %xor52.2.4 = xor i32 %conv51.2.4, %conv48.2.4 *)
(* You may need to modify here *)
xor uint32 v_xor52_2_4 v_conv51_2_4 v_conv48_2_4;
(*   %conv53.2.4 = trunc i32 %xor52.2.4 to i8 *)
split tmp_v_xor52_2_4 v_conv53_2_4 v_xor52_2_4 8;
vpc v_conv53_2_4@uint8 v_conv53_2_4@uint32;
(*   store i8 %conv53.2.4, i8* %arrayidx50.4, align 1 *)
mov c_4 v_conv53_2_4;
(*   %scevgep44.3.4 = getelementptr i8, i8* %scevgep43.3, i64 3 *)
(*   %98 = load i8, i8* %scevgep44.3.4, align 1 *)
mov v98 r_23;
(*   %conv48.3.4 = zext i8 %98 to i32 *)
cast v_conv48_3_4@uint32 v98@uint8;
(*   %99 = load i8, i8* %arrayidx50.4, align 1 *)
mov v99 c_4;
(*   %conv51.3.4 = zext i8 %99 to i32 *)
cast v_conv51_3_4@uint32 v99@uint8;
(*   %xor52.3.4 = xor i32 %conv51.3.4, %conv48.3.4 *)
(* You may need to modify here *)
xor uint32 v_xor52_3_4 v_conv51_3_4 v_conv48_3_4;
(*   %conv53.3.4 = trunc i32 %xor52.3.4 to i8 *)
split tmp_v_xor52_3_4 v_conv53_3_4 v_xor52_3_4 8;
vpc v_conv53_3_4@uint8 v_conv53_3_4@uint32;
(*   store i8 %conv53.3.4, i8* %arrayidx50.4, align 1 *)
mov c_4 v_conv53_3_4;
(*   %100 = load i8, i8* %a, align 1 *)
mov v100 a_0;
(*   %scevgep34.1 = getelementptr i8, i8* %a, i64 1 *)
(*   %101 = load i8, i8* %scevgep34.1, align 1 *)
mov v101 a_1;
(*   %conv.i.i158.1 = zext i8 %101 to i32 *)
cast v_conv_i_i158_1@uint32 v101@uint8;
(*   %conv1.i.i159.1 = zext i8 %100 to i32 *)
cast v_conv1_i_i159_1@uint32 v100@uint8;
(*   %xor.i.i160.1 = xor i32 %conv1.i.i159.1, %conv.i.i158.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i160_1 v_conv1_i_i159_1 v_conv_i_i158_1;
(*   %conv2.i.i161.1 = trunc i32 %xor.i.i160.1 to i8 *)
split tmp_v_xor_i_i160_1 v_conv2_i_i161_1 v_xor_i_i160_1 8;
vpc v_conv2_i_i161_1@uint8 v_conv2_i_i161_1@uint32;
(*   %scevgep34.2 = getelementptr i8, i8* %a, i64 2 *)
(*   %102 = load i8, i8* %scevgep34.2, align 1 *)
mov v102 a_2;
(*   %conv.i.i158.2 = zext i8 %102 to i32 *)
cast v_conv_i_i158_2@uint32 v102@uint8;
(*   %conv1.i.i159.2 = zext i8 %conv2.i.i161.1 to i32 *)
cast v_conv1_i_i159_2@uint32 v_conv2_i_i161_1@uint8;
(*   %xor.i.i160.2 = xor i32 %conv1.i.i159.2, %conv.i.i158.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i160_2 v_conv1_i_i159_2 v_conv_i_i158_2;
(*   %conv2.i.i161.2 = trunc i32 %xor.i.i160.2 to i8 *)
split tmp_v_xor_i_i160_2 v_conv2_i_i161_2 v_xor_i_i160_2 8;
vpc v_conv2_i_i161_2@uint8 v_conv2_i_i161_2@uint32;
(*   %scevgep34.3 = getelementptr i8, i8* %a, i64 3 *)
(*   %103 = load i8, i8* %scevgep34.3, align 1 *)
mov v103 a_3;
(*   %conv.i.i158.3 = zext i8 %103 to i32 *)
cast v_conv_i_i158_3@uint32 v103@uint8;
(*   %conv1.i.i159.3 = zext i8 %conv2.i.i161.2 to i32 *)
cast v_conv1_i_i159_3@uint32 v_conv2_i_i161_2@uint8;
(*   %xor.i.i160.3 = xor i32 %conv1.i.i159.3, %conv.i.i158.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i160_3 v_conv1_i_i159_3 v_conv_i_i158_3;
(*   %conv2.i.i161.3 = trunc i32 %xor.i.i160.3 to i8 *)
split tmp_v_xor_i_i160_3 v_conv2_i_i161_3 v_xor_i_i160_3 8;
vpc v_conv2_i_i161_3@uint8 v_conv2_i_i161_3@uint32;
(*   %scevgep34.4 = getelementptr i8, i8* %a, i64 4 *)
(*   %104 = load i8, i8* %scevgep34.4, align 1 *)
mov v104 a_4;
(*   %conv.i.i158.4 = zext i8 %104 to i32 *)
cast v_conv_i_i158_4@uint32 v104@uint8;
(*   %conv1.i.i159.4 = zext i8 %conv2.i.i161.3 to i32 *)
cast v_conv1_i_i159_4@uint32 v_conv2_i_i161_3@uint8;
(*   %xor.i.i160.4 = xor i32 %conv1.i.i159.4, %conv.i.i158.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i160_4 v_conv1_i_i159_4 v_conv_i_i158_4;
(*   %conv2.i.i161.4 = trunc i32 %xor.i.i160.4 to i8 *)
split tmp_v_xor_i_i160_4 v_conv2_i_i161_4 v_xor_i_i160_4 8;
vpc v_conv2_i_i161_4@uint8 v_conv2_i_i161_4@uint32;
(*   %105 = load i8, i8* %b, align 1 *)
mov v105 b_0;
(*   %scevgep30.1 = getelementptr i8, i8* %b, i64 1 *)
(*   %106 = load i8, i8* %scevgep30.1, align 1 *)
mov v106 b_1;
(*   %conv.i.i119.1 = zext i8 %106 to i32 *)
cast v_conv_i_i119_1@uint32 v106@uint8;
(*   %conv1.i.i120.1 = zext i8 %105 to i32 *)
cast v_conv1_i_i120_1@uint32 v105@uint8;
(*   %xor.i.i121.1 = xor i32 %conv1.i.i120.1, %conv.i.i119.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i121_1 v_conv1_i_i120_1 v_conv_i_i119_1;
(*   %conv2.i.i122.1 = trunc i32 %xor.i.i121.1 to i8 *)
split tmp_v_xor_i_i121_1 v_conv2_i_i122_1 v_xor_i_i121_1 8;
vpc v_conv2_i_i122_1@uint8 v_conv2_i_i122_1@uint32;
(*   %scevgep30.2 = getelementptr i8, i8* %b, i64 2 *)
(*   %107 = load i8, i8* %scevgep30.2, align 1 *)
mov v107 b_2;
(*   %conv.i.i119.2 = zext i8 %107 to i32 *)
cast v_conv_i_i119_2@uint32 v107@uint8;
(*   %conv1.i.i120.2 = zext i8 %conv2.i.i122.1 to i32 *)
cast v_conv1_i_i120_2@uint32 v_conv2_i_i122_1@uint8;
(*   %xor.i.i121.2 = xor i32 %conv1.i.i120.2, %conv.i.i119.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i121_2 v_conv1_i_i120_2 v_conv_i_i119_2;
(*   %conv2.i.i122.2 = trunc i32 %xor.i.i121.2 to i8 *)
split tmp_v_xor_i_i121_2 v_conv2_i_i122_2 v_xor_i_i121_2 8;
vpc v_conv2_i_i122_2@uint8 v_conv2_i_i122_2@uint32;
(*   %scevgep30.3 = getelementptr i8, i8* %b, i64 3 *)
(*   %108 = load i8, i8* %scevgep30.3, align 1 *)
mov v108 b_3;
(*   %conv.i.i119.3 = zext i8 %108 to i32 *)
cast v_conv_i_i119_3@uint32 v108@uint8;
(*   %conv1.i.i120.3 = zext i8 %conv2.i.i122.2 to i32 *)
cast v_conv1_i_i120_3@uint32 v_conv2_i_i122_2@uint8;
(*   %xor.i.i121.3 = xor i32 %conv1.i.i120.3, %conv.i.i119.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i121_3 v_conv1_i_i120_3 v_conv_i_i119_3;
(*   %conv2.i.i122.3 = trunc i32 %xor.i.i121.3 to i8 *)
split tmp_v_xor_i_i121_3 v_conv2_i_i122_3 v_xor_i_i121_3 8;
vpc v_conv2_i_i122_3@uint8 v_conv2_i_i122_3@uint32;
(*   %scevgep30.4 = getelementptr i8, i8* %b, i64 4 *)
(*   %109 = load i8, i8* %scevgep30.4, align 1 *)
mov v109 b_4;
(*   %conv.i.i119.4 = zext i8 %109 to i32 *)
cast v_conv_i_i119_4@uint32 v109@uint8;
(*   %conv1.i.i120.4 = zext i8 %conv2.i.i122.3 to i32 *)
cast v_conv1_i_i120_4@uint32 v_conv2_i_i122_3@uint8;
(*   %xor.i.i121.4 = xor i32 %conv1.i.i120.4, %conv.i.i119.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i121_4 v_conv1_i_i120_4 v_conv_i_i119_4;
(*   %conv2.i.i122.4 = trunc i32 %xor.i.i121.4 to i8 *)
split tmp_v_xor_i_i121_4 v_conv2_i_i122_4 v_xor_i_i121_4 8;
vpc v_conv2_i_i122_4@uint8 v_conv2_i_i122_4@uint32;
(*   %conv.i93 = zext i8 %conv2.i.i122.4 to i32 *)
cast v_conv_i93@uint32 v_conv2_i_i122_4@uint8;
(*   %and.i94 = and i32 %conv.i93, 1 *)
(* You may need to modify here *)
and uint32 v_and_i94 v_conv_i93 (0x1)@uint32;
(*   %conv1.i95 = zext i8 %conv2.i.i161.4 to i32 *)
cast v_conv1_i95@uint32 v_conv2_i_i161_4@uint8;
(*   %mul.i96 = mul nsw i32 %and.i94, %conv1.i95 *)
mul v_mul_i96 v_and_i94 v_conv1_i95;
(*   %conv3.i99 = trunc i32 %mul.i96 to i8 *)
split tmp_v_mul_i96 v_conv3_i99 v_mul_i96 8;
vpc v_conv3_i99@uint8 v_conv3_i99@uint32;
(*   %conv4.i100 = zext i8 %conv2.i.i122.4 to i32 *)
cast v_conv4_i100@uint32 v_conv2_i_i122_4@uint8;
(*   %shr.i101 = ashr i32 %conv4.i100, 1 *)
(* You may need to modify here *)
split v_shr_i101 tmp_to_be_used v_conv4_i100 1;
(*   %conv5.i102 = trunc i32 %shr.i101 to i8 *)
split tmp_v_shr_i101 v_conv5_i102 v_shr_i101 8;
vpc v_conv5_i102@uint8 v_conv5_i102@uint32;
(*   %conv6.i103 = zext i8 %conv2.i.i161.4 to i32 *)
cast v_conv6_i103@uint32 v_conv2_i_i161_4@uint8;
(*   %shl.i104 = shl i32 %conv6.i103, 1 *)
shls discard_175 v_shl_i104 v_conv6_i103 1;
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
shls discard_176 v_shl_i104_1 v_conv6_i103_1 1;
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
shls discard_177 v_shl_i104_2 v_conv6_i103_2 1;
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
shls discard_178 v_shl_i104_3 v_conv6_i103_3 1;
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
shls discard_179 v_shl_i104_4 v_conv6_i103_4 1;
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
shls discard_180 v_shl_i104_5 v_conv6_i103_5 1;
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
shls discard_181 v_shl_i104_6 v_conv6_i103_6 1;
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
(*   %110 = load i8, i8* %c, align 1 *)
mov v110 c_0;
(*   %scevgep.1 = getelementptr i8, i8* %c, i64 1 *)
(*   %111 = load i8, i8* %scevgep.1, align 1 *)
mov v111 c_1;
(*   %conv.i.i.1 = zext i8 %111 to i32 *)
cast v_conv_i_i_1@uint32 v111@uint8;
(*   %conv1.i.i.1 = zext i8 %110 to i32 *)
cast v_conv1_i_i_1@uint32 v110@uint8;
(*   %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_1 v_conv1_i_i_1 v_conv_i_i_1;
(*   %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8 *)
split tmp_v_xor_i_i_1 v_conv2_i_i_1 v_xor_i_i_1 8;
vpc v_conv2_i_i_1@uint8 v_conv2_i_i_1@uint32;
(*   %scevgep.2 = getelementptr i8, i8* %c, i64 2 *)
(*   %112 = load i8, i8* %scevgep.2, align 1 *)
mov v112 c_2;
(*   %conv.i.i.2 = zext i8 %112 to i32 *)
cast v_conv_i_i_2@uint32 v112@uint8;
(*   %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32 *)
cast v_conv1_i_i_2@uint32 v_conv2_i_i_1@uint8;
(*   %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_2 v_conv1_i_i_2 v_conv_i_i_2;
(*   %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8 *)
split tmp_v_xor_i_i_2 v_conv2_i_i_2 v_xor_i_i_2 8;
vpc v_conv2_i_i_2@uint8 v_conv2_i_i_2@uint32;
(*   %scevgep.3 = getelementptr i8, i8* %c, i64 3 *)
(*   %113 = load i8, i8* %scevgep.3, align 1 *)
mov v113 c_3;
(*   %conv.i.i.3 = zext i8 %113 to i32 *)
cast v_conv_i_i_3@uint32 v113@uint8;
(*   %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32 *)
cast v_conv1_i_i_3@uint32 v_conv2_i_i_2@uint8;
(*   %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_3 v_conv1_i_i_3 v_conv_i_i_3;
(*   %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8 *)
split tmp_v_xor_i_i_3 v_conv2_i_i_3 v_xor_i_i_3 8;
vpc v_conv2_i_i_3@uint8 v_conv2_i_i_3@uint32;
(*   %scevgep.4 = getelementptr i8, i8* %c, i64 4 *)
(*   %114 = load i8, i8* %scevgep.4, align 1 *)
mov v114 c_4;
(*   %conv.i.i.4 = zext i8 %114 to i32 *)
cast v_conv_i_i_4@uint32 v114@uint8;
(*   %conv1.i.i.4 = zext i8 %conv2.i.i.3 to i32 *)
cast v_conv1_i_i_4@uint32 v_conv2_i_i_3@uint8;
(*   %xor.i.i.4 = xor i32 %conv1.i.i.4, %conv.i.i.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_4 v_conv1_i_i_4 v_conv_i_i_4;
(*   %conv2.i.i.4 = trunc i32 %xor.i.i.4 to i8 *)
split tmp_v_xor_i_i_4 v_conv2_i_i_4 v_xor_i_i_4 8;
vpc v_conv2_i_i_4@uint8 v_conv2_i_i_4@uint32;
(*   store i8 %conv2.i.i.4, i8* %C, align 1 *)
mov C_0 v_conv2_i_i_4;
(*   ret void *)


assert true && AB_0=C_0;

mov _ AB_0@uint8;
mov _ C_0@uint8;


{
  true
  &&
  true
}

