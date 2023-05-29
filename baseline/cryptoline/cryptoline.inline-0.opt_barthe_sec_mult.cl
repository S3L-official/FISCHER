proc main (uint8 a_0, uint8 b_0, uint8 r_1) =
{
  true
  &&
  true
}



(*   %cc = alloca [2 x i8], align 1 *)
(*   %dd = alloca [2 x i8], align 1 *)
(*   %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %cc, i64 0, i64 0 *)
(*   %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 1 *)
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
mov cc_1 v_conv3_i_i_7;
(*   %arraydecay9 = getelementptr inbounds [2 x i8], [2 x i8]* %cc, i64 0, i64 0 *)
(*   %add.ptr10 = getelementptr inbounds i8, i8* %arraydecay9, i64 0 *)
(*   %2 = load i8, i8* %a, align 1 *)
mov v2 a_0;
(*   %3 = load i8, i8* %b, align 1 *)
mov v3 b_0;
(*   %conv.i.i399 = zext i8 %3 to i32 *)
cast v_conv_i_i399@uint32 v3@uint8;
(*   %and.i.i400 = and i32 %conv.i.i399, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i400 v_conv_i_i399 (0x1)@uint32;
(*   %conv1.i.i401 = zext i8 %2 to i32 *)
cast v_conv1_i_i401@uint32 v2@uint8;
(*   %mul.i.i402 = mul nsw i32 %and.i.i400, %conv1.i.i401 *)
mul v_mul_i_i402 v_and_i_i400 v_conv1_i_i401;
(*   %conv3.i.i405 = trunc i32 %mul.i.i402 to i8 *)
split tmp_v_mul_i_i402 v_conv3_i_i405 v_mul_i_i402 8;
vpc v_conv3_i_i405@uint8 v_conv3_i_i405@uint32;
(*   %conv4.i.i406 = zext i8 %3 to i32 *)
cast v_conv4_i_i406@uint32 v3@uint8;
(*   %shr.i.i407 = ashr i32 %conv4.i.i406, 1 *)
(* You may need to modify here *)
split v_shr_i_i407 tmp_to_be_used v_conv4_i_i406 1;
(*   %conv5.i.i408 = trunc i32 %shr.i.i407 to i8 *)
split tmp_v_shr_i_i407 v_conv5_i_i408 v_shr_i_i407 8;
vpc v_conv5_i_i408@uint8 v_conv5_i_i408@uint32;
(*   %conv6.i.i409 = zext i8 %2 to i32 *)
cast v_conv6_i_i409@uint32 v2@uint8;
(*   %shl.i.i410 = shl i32 %conv6.i.i409, 1 *)
shls discard_7 v_shl_i_i410 v_conv6_i_i409 1;
(*   %conv7.i.i411 = trunc i32 %shl.i.i410 to i8 *)
split tmp_v_shl_i_i410 v_conv7_i_i411 v_shl_i_i410 8;
vpc v_conv7_i_i411@uint8 v_conv7_i_i411@uint32;
(*   %conv.i.i399.1 = zext i8 %conv5.i.i408 to i32 *)
cast v_conv_i_i399_1@uint32 v_conv5_i_i408@uint8;
(*   %and.i.i400.1 = and i32 %conv.i.i399.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i400_1 v_conv_i_i399_1 (0x1)@uint32;
(*   %conv1.i.i401.1 = zext i8 %conv7.i.i411 to i32 *)
cast v_conv1_i_i401_1@uint32 v_conv7_i_i411@uint8;
(*   %mul.i.i402.1 = mul nsw i32 %and.i.i400.1, %conv1.i.i401.1 *)
mul v_mul_i_i402_1 v_and_i_i400_1 v_conv1_i_i401_1;
(*   %conv2.i.i403.1 = zext i8 %conv3.i.i405 to i32 *)
cast v_conv2_i_i403_1@uint32 v_conv3_i_i405@uint8;
(*   %xor.i.i404.1 = xor i32 %conv2.i.i403.1, %mul.i.i402.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i404_1 v_conv2_i_i403_1 v_mul_i_i402_1;
(*   %conv3.i.i405.1 = trunc i32 %xor.i.i404.1 to i8 *)
split tmp_v_xor_i_i404_1 v_conv3_i_i405_1 v_xor_i_i404_1 8;
vpc v_conv3_i_i405_1@uint8 v_conv3_i_i405_1@uint32;
(*   %conv4.i.i406.1 = zext i8 %conv5.i.i408 to i32 *)
cast v_conv4_i_i406_1@uint32 v_conv5_i_i408@uint8;
(*   %shr.i.i407.1 = ashr i32 %conv4.i.i406.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i407_1 tmp_to_be_used v_conv4_i_i406_1 1;
(*   %conv5.i.i408.1 = trunc i32 %shr.i.i407.1 to i8 *)
split tmp_v_shr_i_i407_1 v_conv5_i_i408_1 v_shr_i_i407_1 8;
vpc v_conv5_i_i408_1@uint8 v_conv5_i_i408_1@uint32;
(*   %conv6.i.i409.1 = zext i8 %conv7.i.i411 to i32 *)
cast v_conv6_i_i409_1@uint32 v_conv7_i_i411@uint8;
(*   %shl.i.i410.1 = shl i32 %conv6.i.i409.1, 1 *)
shls discard_8 v_shl_i_i410_1 v_conv6_i_i409_1 1;
(*   %conv7.i.i411.1 = trunc i32 %shl.i.i410.1 to i8 *)
split tmp_v_shl_i_i410_1 v_conv7_i_i411_1 v_shl_i_i410_1 8;
vpc v_conv7_i_i411_1@uint8 v_conv7_i_i411_1@uint32;
(*   %conv.i.i399.2 = zext i8 %conv5.i.i408.1 to i32 *)
cast v_conv_i_i399_2@uint32 v_conv5_i_i408_1@uint8;
(*   %and.i.i400.2 = and i32 %conv.i.i399.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i400_2 v_conv_i_i399_2 (0x1)@uint32;
(*   %conv1.i.i401.2 = zext i8 %conv7.i.i411.1 to i32 *)
cast v_conv1_i_i401_2@uint32 v_conv7_i_i411_1@uint8;
(*   %mul.i.i402.2 = mul nsw i32 %and.i.i400.2, %conv1.i.i401.2 *)
mul v_mul_i_i402_2 v_and_i_i400_2 v_conv1_i_i401_2;
(*   %conv2.i.i403.2 = zext i8 %conv3.i.i405.1 to i32 *)
cast v_conv2_i_i403_2@uint32 v_conv3_i_i405_1@uint8;
(*   %xor.i.i404.2 = xor i32 %conv2.i.i403.2, %mul.i.i402.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i404_2 v_conv2_i_i403_2 v_mul_i_i402_2;
(*   %conv3.i.i405.2 = trunc i32 %xor.i.i404.2 to i8 *)
split tmp_v_xor_i_i404_2 v_conv3_i_i405_2 v_xor_i_i404_2 8;
vpc v_conv3_i_i405_2@uint8 v_conv3_i_i405_2@uint32;
(*   %conv4.i.i406.2 = zext i8 %conv5.i.i408.1 to i32 *)
cast v_conv4_i_i406_2@uint32 v_conv5_i_i408_1@uint8;
(*   %shr.i.i407.2 = ashr i32 %conv4.i.i406.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i407_2 tmp_to_be_used v_conv4_i_i406_2 1;
(*   %conv5.i.i408.2 = trunc i32 %shr.i.i407.2 to i8 *)
split tmp_v_shr_i_i407_2 v_conv5_i_i408_2 v_shr_i_i407_2 8;
vpc v_conv5_i_i408_2@uint8 v_conv5_i_i408_2@uint32;
(*   %conv6.i.i409.2 = zext i8 %conv7.i.i411.1 to i32 *)
cast v_conv6_i_i409_2@uint32 v_conv7_i_i411_1@uint8;
(*   %shl.i.i410.2 = shl i32 %conv6.i.i409.2, 1 *)
shls discard_9 v_shl_i_i410_2 v_conv6_i_i409_2 1;
(*   %conv7.i.i411.2 = trunc i32 %shl.i.i410.2 to i8 *)
split tmp_v_shl_i_i410_2 v_conv7_i_i411_2 v_shl_i_i410_2 8;
vpc v_conv7_i_i411_2@uint8 v_conv7_i_i411_2@uint32;
(*   %conv.i.i399.3 = zext i8 %conv5.i.i408.2 to i32 *)
cast v_conv_i_i399_3@uint32 v_conv5_i_i408_2@uint8;
(*   %and.i.i400.3 = and i32 %conv.i.i399.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i400_3 v_conv_i_i399_3 (0x1)@uint32;
(*   %conv1.i.i401.3 = zext i8 %conv7.i.i411.2 to i32 *)
cast v_conv1_i_i401_3@uint32 v_conv7_i_i411_2@uint8;
(*   %mul.i.i402.3 = mul nsw i32 %and.i.i400.3, %conv1.i.i401.3 *)
mul v_mul_i_i402_3 v_and_i_i400_3 v_conv1_i_i401_3;
(*   %conv2.i.i403.3 = zext i8 %conv3.i.i405.2 to i32 *)
cast v_conv2_i_i403_3@uint32 v_conv3_i_i405_2@uint8;
(*   %xor.i.i404.3 = xor i32 %conv2.i.i403.3, %mul.i.i402.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i404_3 v_conv2_i_i403_3 v_mul_i_i402_3;
(*   %conv3.i.i405.3 = trunc i32 %xor.i.i404.3 to i8 *)
split tmp_v_xor_i_i404_3 v_conv3_i_i405_3 v_xor_i_i404_3 8;
vpc v_conv3_i_i405_3@uint8 v_conv3_i_i405_3@uint32;
(*   %conv4.i.i406.3 = zext i8 %conv5.i.i408.2 to i32 *)
cast v_conv4_i_i406_3@uint32 v_conv5_i_i408_2@uint8;
(*   %shr.i.i407.3 = ashr i32 %conv4.i.i406.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i407_3 tmp_to_be_used v_conv4_i_i406_3 1;
(*   %conv5.i.i408.3 = trunc i32 %shr.i.i407.3 to i8 *)
split tmp_v_shr_i_i407_3 v_conv5_i_i408_3 v_shr_i_i407_3 8;
vpc v_conv5_i_i408_3@uint8 v_conv5_i_i408_3@uint32;
(*   %conv6.i.i409.3 = zext i8 %conv7.i.i411.2 to i32 *)
cast v_conv6_i_i409_3@uint32 v_conv7_i_i411_2@uint8;
(*   %shl.i.i410.3 = shl i32 %conv6.i.i409.3, 1 *)
shls discard_10 v_shl_i_i410_3 v_conv6_i_i409_3 1;
(*   %conv7.i.i411.3 = trunc i32 %shl.i.i410.3 to i8 *)
split tmp_v_shl_i_i410_3 v_conv7_i_i411_3 v_shl_i_i410_3 8;
vpc v_conv7_i_i411_3@uint8 v_conv7_i_i411_3@uint32;
(*   %conv.i.i399.4 = zext i8 %conv5.i.i408.3 to i32 *)
cast v_conv_i_i399_4@uint32 v_conv5_i_i408_3@uint8;
(*   %and.i.i400.4 = and i32 %conv.i.i399.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i400_4 v_conv_i_i399_4 (0x1)@uint32;
(*   %conv1.i.i401.4 = zext i8 %conv7.i.i411.3 to i32 *)
cast v_conv1_i_i401_4@uint32 v_conv7_i_i411_3@uint8;
(*   %mul.i.i402.4 = mul nsw i32 %and.i.i400.4, %conv1.i.i401.4 *)
mul v_mul_i_i402_4 v_and_i_i400_4 v_conv1_i_i401_4;
(*   %conv2.i.i403.4 = zext i8 %conv3.i.i405.3 to i32 *)
cast v_conv2_i_i403_4@uint32 v_conv3_i_i405_3@uint8;
(*   %xor.i.i404.4 = xor i32 %conv2.i.i403.4, %mul.i.i402.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i404_4 v_conv2_i_i403_4 v_mul_i_i402_4;
(*   %conv3.i.i405.4 = trunc i32 %xor.i.i404.4 to i8 *)
split tmp_v_xor_i_i404_4 v_conv3_i_i405_4 v_xor_i_i404_4 8;
vpc v_conv3_i_i405_4@uint8 v_conv3_i_i405_4@uint32;
(*   %conv4.i.i406.4 = zext i8 %conv5.i.i408.3 to i32 *)
cast v_conv4_i_i406_4@uint32 v_conv5_i_i408_3@uint8;
(*   %shr.i.i407.4 = ashr i32 %conv4.i.i406.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i407_4 tmp_to_be_used v_conv4_i_i406_4 1;
(*   %conv5.i.i408.4 = trunc i32 %shr.i.i407.4 to i8 *)
split tmp_v_shr_i_i407_4 v_conv5_i_i408_4 v_shr_i_i407_4 8;
vpc v_conv5_i_i408_4@uint8 v_conv5_i_i408_4@uint32;
(*   %conv6.i.i409.4 = zext i8 %conv7.i.i411.3 to i32 *)
cast v_conv6_i_i409_4@uint32 v_conv7_i_i411_3@uint8;
(*   %shl.i.i410.4 = shl i32 %conv6.i.i409.4, 1 *)
shls discard_11 v_shl_i_i410_4 v_conv6_i_i409_4 1;
(*   %conv7.i.i411.4 = trunc i32 %shl.i.i410.4 to i8 *)
split tmp_v_shl_i_i410_4 v_conv7_i_i411_4 v_shl_i_i410_4 8;
vpc v_conv7_i_i411_4@uint8 v_conv7_i_i411_4@uint32;
(*   %conv.i.i399.5 = zext i8 %conv5.i.i408.4 to i32 *)
cast v_conv_i_i399_5@uint32 v_conv5_i_i408_4@uint8;
(*   %and.i.i400.5 = and i32 %conv.i.i399.5, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i400_5 v_conv_i_i399_5 (0x1)@uint32;
(*   %conv1.i.i401.5 = zext i8 %conv7.i.i411.4 to i32 *)
cast v_conv1_i_i401_5@uint32 v_conv7_i_i411_4@uint8;
(*   %mul.i.i402.5 = mul nsw i32 %and.i.i400.5, %conv1.i.i401.5 *)
mul v_mul_i_i402_5 v_and_i_i400_5 v_conv1_i_i401_5;
(*   %conv2.i.i403.5 = zext i8 %conv3.i.i405.4 to i32 *)
cast v_conv2_i_i403_5@uint32 v_conv3_i_i405_4@uint8;
(*   %xor.i.i404.5 = xor i32 %conv2.i.i403.5, %mul.i.i402.5 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i404_5 v_conv2_i_i403_5 v_mul_i_i402_5;
(*   %conv3.i.i405.5 = trunc i32 %xor.i.i404.5 to i8 *)
split tmp_v_xor_i_i404_5 v_conv3_i_i405_5 v_xor_i_i404_5 8;
vpc v_conv3_i_i405_5@uint8 v_conv3_i_i405_5@uint32;
(*   %conv4.i.i406.5 = zext i8 %conv5.i.i408.4 to i32 *)
cast v_conv4_i_i406_5@uint32 v_conv5_i_i408_4@uint8;
(*   %shr.i.i407.5 = ashr i32 %conv4.i.i406.5, 1 *)
(* You may need to modify here *)
split v_shr_i_i407_5 tmp_to_be_used v_conv4_i_i406_5 1;
(*   %conv5.i.i408.5 = trunc i32 %shr.i.i407.5 to i8 *)
split tmp_v_shr_i_i407_5 v_conv5_i_i408_5 v_shr_i_i407_5 8;
vpc v_conv5_i_i408_5@uint8 v_conv5_i_i408_5@uint32;
(*   %conv6.i.i409.5 = zext i8 %conv7.i.i411.4 to i32 *)
cast v_conv6_i_i409_5@uint32 v_conv7_i_i411_4@uint8;
(*   %shl.i.i410.5 = shl i32 %conv6.i.i409.5, 1 *)
shls discard_12 v_shl_i_i410_5 v_conv6_i_i409_5 1;
(*   %conv7.i.i411.5 = trunc i32 %shl.i.i410.5 to i8 *)
split tmp_v_shl_i_i410_5 v_conv7_i_i411_5 v_shl_i_i410_5 8;
vpc v_conv7_i_i411_5@uint8 v_conv7_i_i411_5@uint32;
(*   %conv.i.i399.6 = zext i8 %conv5.i.i408.5 to i32 *)
cast v_conv_i_i399_6@uint32 v_conv5_i_i408_5@uint8;
(*   %and.i.i400.6 = and i32 %conv.i.i399.6, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i400_6 v_conv_i_i399_6 (0x1)@uint32;
(*   %conv1.i.i401.6 = zext i8 %conv7.i.i411.5 to i32 *)
cast v_conv1_i_i401_6@uint32 v_conv7_i_i411_5@uint8;
(*   %mul.i.i402.6 = mul nsw i32 %and.i.i400.6, %conv1.i.i401.6 *)
mul v_mul_i_i402_6 v_and_i_i400_6 v_conv1_i_i401_6;
(*   %conv2.i.i403.6 = zext i8 %conv3.i.i405.5 to i32 *)
cast v_conv2_i_i403_6@uint32 v_conv3_i_i405_5@uint8;
(*   %xor.i.i404.6 = xor i32 %conv2.i.i403.6, %mul.i.i402.6 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i404_6 v_conv2_i_i403_6 v_mul_i_i402_6;
(*   %conv3.i.i405.6 = trunc i32 %xor.i.i404.6 to i8 *)
split tmp_v_xor_i_i404_6 v_conv3_i_i405_6 v_xor_i_i404_6 8;
vpc v_conv3_i_i405_6@uint8 v_conv3_i_i405_6@uint32;
(*   %conv4.i.i406.6 = zext i8 %conv5.i.i408.5 to i32 *)
cast v_conv4_i_i406_6@uint32 v_conv5_i_i408_5@uint8;
(*   %shr.i.i407.6 = ashr i32 %conv4.i.i406.6, 1 *)
(* You may need to modify here *)
split v_shr_i_i407_6 tmp_to_be_used v_conv4_i_i406_6 1;
(*   %conv5.i.i408.6 = trunc i32 %shr.i.i407.6 to i8 *)
split tmp_v_shr_i_i407_6 v_conv5_i_i408_6 v_shr_i_i407_6 8;
vpc v_conv5_i_i408_6@uint8 v_conv5_i_i408_6@uint32;
(*   %conv6.i.i409.6 = zext i8 %conv7.i.i411.5 to i32 *)
cast v_conv6_i_i409_6@uint32 v_conv7_i_i411_5@uint8;
(*   %shl.i.i410.6 = shl i32 %conv6.i.i409.6, 1 *)
shls discard_13 v_shl_i_i410_6 v_conv6_i_i409_6 1;
(*   %conv7.i.i411.6 = trunc i32 %shl.i.i410.6 to i8 *)
split tmp_v_shl_i_i410_6 v_conv7_i_i411_6 v_shl_i_i410_6 8;
vpc v_conv7_i_i411_6@uint8 v_conv7_i_i411_6@uint32;
(*   %conv.i.i399.7 = zext i8 %conv5.i.i408.6 to i32 *)
cast v_conv_i_i399_7@uint32 v_conv5_i_i408_6@uint8;
(*   %and.i.i400.7 = and i32 %conv.i.i399.7, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i400_7 v_conv_i_i399_7 (0x1)@uint32;
(*   %conv1.i.i401.7 = zext i8 %conv7.i.i411.6 to i32 *)
cast v_conv1_i_i401_7@uint32 v_conv7_i_i411_6@uint8;
(*   %mul.i.i402.7 = mul nsw i32 %and.i.i400.7, %conv1.i.i401.7 *)
mul v_mul_i_i402_7 v_and_i_i400_7 v_conv1_i_i401_7;
(*   %conv2.i.i403.7 = zext i8 %conv3.i.i405.6 to i32 *)
cast v_conv2_i_i403_7@uint32 v_conv3_i_i405_6@uint8;
(*   %xor.i.i404.7 = xor i32 %conv2.i.i403.7, %mul.i.i402.7 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i404_7 v_conv2_i_i403_7 v_mul_i_i402_7;
(*   %conv3.i.i405.7 = trunc i32 %xor.i.i404.7 to i8 *)
split tmp_v_xor_i_i404_7 v_conv3_i_i405_7 v_xor_i_i404_7 8;
vpc v_conv3_i_i405_7@uint8 v_conv3_i_i405_7@uint32;
(*   store i8 %conv3.i.i405.7, i8* %add.ptr10, align 1 *)
mov cc_0 v_conv3_i_i405_7;
(*   %arraydecay11 = getelementptr inbounds [2 x i8], [2 x i8]* %cc, i64 0, i64 0 *)
(*   %add.ptr12 = getelementptr inbounds i8, i8* %arraydecay11, i64 1 *)
(*   %4 = load i8, i8* %a, align 1 *)
mov v4 a_0;
(*   %5 = load i8, i8* %b, align 1 *)
mov v5 b_0;
(*   %conv.i.i362 = zext i8 %5 to i32 *)
cast v_conv_i_i362@uint32 v5@uint8;
(*   %and.i.i363 = and i32 %conv.i.i362, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i363 v_conv_i_i362 (0x1)@uint32;
(*   %conv1.i.i364 = zext i8 %4 to i32 *)
cast v_conv1_i_i364@uint32 v4@uint8;
(*   %mul.i.i365 = mul nsw i32 %and.i.i363, %conv1.i.i364 *)
mul v_mul_i_i365 v_and_i_i363 v_conv1_i_i364;
(*   %conv3.i.i368 = trunc i32 %mul.i.i365 to i8 *)
split tmp_v_mul_i_i365 v_conv3_i_i368 v_mul_i_i365 8;
vpc v_conv3_i_i368@uint8 v_conv3_i_i368@uint32;
(*   %conv4.i.i369 = zext i8 %5 to i32 *)
cast v_conv4_i_i369@uint32 v5@uint8;
(*   %shr.i.i370 = ashr i32 %conv4.i.i369, 1 *)
(* You may need to modify here *)
split v_shr_i_i370 tmp_to_be_used v_conv4_i_i369 1;
(*   %conv5.i.i371 = trunc i32 %shr.i.i370 to i8 *)
split tmp_v_shr_i_i370 v_conv5_i_i371 v_shr_i_i370 8;
vpc v_conv5_i_i371@uint8 v_conv5_i_i371@uint32;
(*   %conv6.i.i372 = zext i8 %4 to i32 *)
cast v_conv6_i_i372@uint32 v4@uint8;
(*   %shl.i.i373 = shl i32 %conv6.i.i372, 1 *)
shls discard_14 v_shl_i_i373 v_conv6_i_i372 1;
(*   %conv7.i.i374 = trunc i32 %shl.i.i373 to i8 *)
split tmp_v_shl_i_i373 v_conv7_i_i374 v_shl_i_i373 8;
vpc v_conv7_i_i374@uint8 v_conv7_i_i374@uint32;
(*   %conv.i.i362.1 = zext i8 %conv5.i.i371 to i32 *)
cast v_conv_i_i362_1@uint32 v_conv5_i_i371@uint8;
(*   %and.i.i363.1 = and i32 %conv.i.i362.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i363_1 v_conv_i_i362_1 (0x1)@uint32;
(*   %conv1.i.i364.1 = zext i8 %conv7.i.i374 to i32 *)
cast v_conv1_i_i364_1@uint32 v_conv7_i_i374@uint8;
(*   %mul.i.i365.1 = mul nsw i32 %and.i.i363.1, %conv1.i.i364.1 *)
mul v_mul_i_i365_1 v_and_i_i363_1 v_conv1_i_i364_1;
(*   %conv2.i.i366.1 = zext i8 %conv3.i.i368 to i32 *)
cast v_conv2_i_i366_1@uint32 v_conv3_i_i368@uint8;
(*   %xor.i.i367.1 = xor i32 %conv2.i.i366.1, %mul.i.i365.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i367_1 v_conv2_i_i366_1 v_mul_i_i365_1;
(*   %conv3.i.i368.1 = trunc i32 %xor.i.i367.1 to i8 *)
split tmp_v_xor_i_i367_1 v_conv3_i_i368_1 v_xor_i_i367_1 8;
vpc v_conv3_i_i368_1@uint8 v_conv3_i_i368_1@uint32;
(*   %conv4.i.i369.1 = zext i8 %conv5.i.i371 to i32 *)
cast v_conv4_i_i369_1@uint32 v_conv5_i_i371@uint8;
(*   %shr.i.i370.1 = ashr i32 %conv4.i.i369.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i370_1 tmp_to_be_used v_conv4_i_i369_1 1;
(*   %conv5.i.i371.1 = trunc i32 %shr.i.i370.1 to i8 *)
split tmp_v_shr_i_i370_1 v_conv5_i_i371_1 v_shr_i_i370_1 8;
vpc v_conv5_i_i371_1@uint8 v_conv5_i_i371_1@uint32;
(*   %conv6.i.i372.1 = zext i8 %conv7.i.i374 to i32 *)
cast v_conv6_i_i372_1@uint32 v_conv7_i_i374@uint8;
(*   %shl.i.i373.1 = shl i32 %conv6.i.i372.1, 1 *)
shls discard_15 v_shl_i_i373_1 v_conv6_i_i372_1 1;
(*   %conv7.i.i374.1 = trunc i32 %shl.i.i373.1 to i8 *)
split tmp_v_shl_i_i373_1 v_conv7_i_i374_1 v_shl_i_i373_1 8;
vpc v_conv7_i_i374_1@uint8 v_conv7_i_i374_1@uint32;
(*   %conv.i.i362.2 = zext i8 %conv5.i.i371.1 to i32 *)
cast v_conv_i_i362_2@uint32 v_conv5_i_i371_1@uint8;
(*   %and.i.i363.2 = and i32 %conv.i.i362.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i363_2 v_conv_i_i362_2 (0x1)@uint32;
(*   %conv1.i.i364.2 = zext i8 %conv7.i.i374.1 to i32 *)
cast v_conv1_i_i364_2@uint32 v_conv7_i_i374_1@uint8;
(*   %mul.i.i365.2 = mul nsw i32 %and.i.i363.2, %conv1.i.i364.2 *)
mul v_mul_i_i365_2 v_and_i_i363_2 v_conv1_i_i364_2;
(*   %conv2.i.i366.2 = zext i8 %conv3.i.i368.1 to i32 *)
cast v_conv2_i_i366_2@uint32 v_conv3_i_i368_1@uint8;
(*   %xor.i.i367.2 = xor i32 %conv2.i.i366.2, %mul.i.i365.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i367_2 v_conv2_i_i366_2 v_mul_i_i365_2;
(*   %conv3.i.i368.2 = trunc i32 %xor.i.i367.2 to i8 *)
split tmp_v_xor_i_i367_2 v_conv3_i_i368_2 v_xor_i_i367_2 8;
vpc v_conv3_i_i368_2@uint8 v_conv3_i_i368_2@uint32;
(*   %conv4.i.i369.2 = zext i8 %conv5.i.i371.1 to i32 *)
cast v_conv4_i_i369_2@uint32 v_conv5_i_i371_1@uint8;
(*   %shr.i.i370.2 = ashr i32 %conv4.i.i369.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i370_2 tmp_to_be_used v_conv4_i_i369_2 1;
(*   %conv5.i.i371.2 = trunc i32 %shr.i.i370.2 to i8 *)
split tmp_v_shr_i_i370_2 v_conv5_i_i371_2 v_shr_i_i370_2 8;
vpc v_conv5_i_i371_2@uint8 v_conv5_i_i371_2@uint32;
(*   %conv6.i.i372.2 = zext i8 %conv7.i.i374.1 to i32 *)
cast v_conv6_i_i372_2@uint32 v_conv7_i_i374_1@uint8;
(*   %shl.i.i373.2 = shl i32 %conv6.i.i372.2, 1 *)
shls discard_16 v_shl_i_i373_2 v_conv6_i_i372_2 1;
(*   %conv7.i.i374.2 = trunc i32 %shl.i.i373.2 to i8 *)
split tmp_v_shl_i_i373_2 v_conv7_i_i374_2 v_shl_i_i373_2 8;
vpc v_conv7_i_i374_2@uint8 v_conv7_i_i374_2@uint32;
(*   %conv.i.i362.3 = zext i8 %conv5.i.i371.2 to i32 *)
cast v_conv_i_i362_3@uint32 v_conv5_i_i371_2@uint8;
(*   %and.i.i363.3 = and i32 %conv.i.i362.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i363_3 v_conv_i_i362_3 (0x1)@uint32;
(*   %conv1.i.i364.3 = zext i8 %conv7.i.i374.2 to i32 *)
cast v_conv1_i_i364_3@uint32 v_conv7_i_i374_2@uint8;
(*   %mul.i.i365.3 = mul nsw i32 %and.i.i363.3, %conv1.i.i364.3 *)
mul v_mul_i_i365_3 v_and_i_i363_3 v_conv1_i_i364_3;
(*   %conv2.i.i366.3 = zext i8 %conv3.i.i368.2 to i32 *)
cast v_conv2_i_i366_3@uint32 v_conv3_i_i368_2@uint8;
(*   %xor.i.i367.3 = xor i32 %conv2.i.i366.3, %mul.i.i365.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i367_3 v_conv2_i_i366_3 v_mul_i_i365_3;
(*   %conv3.i.i368.3 = trunc i32 %xor.i.i367.3 to i8 *)
split tmp_v_xor_i_i367_3 v_conv3_i_i368_3 v_xor_i_i367_3 8;
vpc v_conv3_i_i368_3@uint8 v_conv3_i_i368_3@uint32;
(*   %conv4.i.i369.3 = zext i8 %conv5.i.i371.2 to i32 *)
cast v_conv4_i_i369_3@uint32 v_conv5_i_i371_2@uint8;
(*   %shr.i.i370.3 = ashr i32 %conv4.i.i369.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i370_3 tmp_to_be_used v_conv4_i_i369_3 1;
(*   %conv5.i.i371.3 = trunc i32 %shr.i.i370.3 to i8 *)
split tmp_v_shr_i_i370_3 v_conv5_i_i371_3 v_shr_i_i370_3 8;
vpc v_conv5_i_i371_3@uint8 v_conv5_i_i371_3@uint32;
(*   %conv6.i.i372.3 = zext i8 %conv7.i.i374.2 to i32 *)
cast v_conv6_i_i372_3@uint32 v_conv7_i_i374_2@uint8;
(*   %shl.i.i373.3 = shl i32 %conv6.i.i372.3, 1 *)
shls discard_17 v_shl_i_i373_3 v_conv6_i_i372_3 1;
(*   %conv7.i.i374.3 = trunc i32 %shl.i.i373.3 to i8 *)
split tmp_v_shl_i_i373_3 v_conv7_i_i374_3 v_shl_i_i373_3 8;
vpc v_conv7_i_i374_3@uint8 v_conv7_i_i374_3@uint32;
(*   %conv.i.i362.4 = zext i8 %conv5.i.i371.3 to i32 *)
cast v_conv_i_i362_4@uint32 v_conv5_i_i371_3@uint8;
(*   %and.i.i363.4 = and i32 %conv.i.i362.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i363_4 v_conv_i_i362_4 (0x1)@uint32;
(*   %conv1.i.i364.4 = zext i8 %conv7.i.i374.3 to i32 *)
cast v_conv1_i_i364_4@uint32 v_conv7_i_i374_3@uint8;
(*   %mul.i.i365.4 = mul nsw i32 %and.i.i363.4, %conv1.i.i364.4 *)
mul v_mul_i_i365_4 v_and_i_i363_4 v_conv1_i_i364_4;
(*   %conv2.i.i366.4 = zext i8 %conv3.i.i368.3 to i32 *)
cast v_conv2_i_i366_4@uint32 v_conv3_i_i368_3@uint8;
(*   %xor.i.i367.4 = xor i32 %conv2.i.i366.4, %mul.i.i365.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i367_4 v_conv2_i_i366_4 v_mul_i_i365_4;
(*   %conv3.i.i368.4 = trunc i32 %xor.i.i367.4 to i8 *)
split tmp_v_xor_i_i367_4 v_conv3_i_i368_4 v_xor_i_i367_4 8;
vpc v_conv3_i_i368_4@uint8 v_conv3_i_i368_4@uint32;
(*   %conv4.i.i369.4 = zext i8 %conv5.i.i371.3 to i32 *)
cast v_conv4_i_i369_4@uint32 v_conv5_i_i371_3@uint8;
(*   %shr.i.i370.4 = ashr i32 %conv4.i.i369.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i370_4 tmp_to_be_used v_conv4_i_i369_4 1;
(*   %conv5.i.i371.4 = trunc i32 %shr.i.i370.4 to i8 *)
split tmp_v_shr_i_i370_4 v_conv5_i_i371_4 v_shr_i_i370_4 8;
vpc v_conv5_i_i371_4@uint8 v_conv5_i_i371_4@uint32;
(*   %conv6.i.i372.4 = zext i8 %conv7.i.i374.3 to i32 *)
cast v_conv6_i_i372_4@uint32 v_conv7_i_i374_3@uint8;
(*   %shl.i.i373.4 = shl i32 %conv6.i.i372.4, 1 *)
shls discard_18 v_shl_i_i373_4 v_conv6_i_i372_4 1;
(*   %conv7.i.i374.4 = trunc i32 %shl.i.i373.4 to i8 *)
split tmp_v_shl_i_i373_4 v_conv7_i_i374_4 v_shl_i_i373_4 8;
vpc v_conv7_i_i374_4@uint8 v_conv7_i_i374_4@uint32;
(*   %conv.i.i362.5 = zext i8 %conv5.i.i371.4 to i32 *)
cast v_conv_i_i362_5@uint32 v_conv5_i_i371_4@uint8;
(*   %and.i.i363.5 = and i32 %conv.i.i362.5, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i363_5 v_conv_i_i362_5 (0x1)@uint32;
(*   %conv1.i.i364.5 = zext i8 %conv7.i.i374.4 to i32 *)
cast v_conv1_i_i364_5@uint32 v_conv7_i_i374_4@uint8;
(*   %mul.i.i365.5 = mul nsw i32 %and.i.i363.5, %conv1.i.i364.5 *)
mul v_mul_i_i365_5 v_and_i_i363_5 v_conv1_i_i364_5;
(*   %conv2.i.i366.5 = zext i8 %conv3.i.i368.4 to i32 *)
cast v_conv2_i_i366_5@uint32 v_conv3_i_i368_4@uint8;
(*   %xor.i.i367.5 = xor i32 %conv2.i.i366.5, %mul.i.i365.5 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i367_5 v_conv2_i_i366_5 v_mul_i_i365_5;
(*   %conv3.i.i368.5 = trunc i32 %xor.i.i367.5 to i8 *)
split tmp_v_xor_i_i367_5 v_conv3_i_i368_5 v_xor_i_i367_5 8;
vpc v_conv3_i_i368_5@uint8 v_conv3_i_i368_5@uint32;
(*   %conv4.i.i369.5 = zext i8 %conv5.i.i371.4 to i32 *)
cast v_conv4_i_i369_5@uint32 v_conv5_i_i371_4@uint8;
(*   %shr.i.i370.5 = ashr i32 %conv4.i.i369.5, 1 *)
(* You may need to modify here *)
split v_shr_i_i370_5 tmp_to_be_used v_conv4_i_i369_5 1;
(*   %conv5.i.i371.5 = trunc i32 %shr.i.i370.5 to i8 *)
split tmp_v_shr_i_i370_5 v_conv5_i_i371_5 v_shr_i_i370_5 8;
vpc v_conv5_i_i371_5@uint8 v_conv5_i_i371_5@uint32;
(*   %conv6.i.i372.5 = zext i8 %conv7.i.i374.4 to i32 *)
cast v_conv6_i_i372_5@uint32 v_conv7_i_i374_4@uint8;
(*   %shl.i.i373.5 = shl i32 %conv6.i.i372.5, 1 *)
shls discard_19 v_shl_i_i373_5 v_conv6_i_i372_5 1;
(*   %conv7.i.i374.5 = trunc i32 %shl.i.i373.5 to i8 *)
split tmp_v_shl_i_i373_5 v_conv7_i_i374_5 v_shl_i_i373_5 8;
vpc v_conv7_i_i374_5@uint8 v_conv7_i_i374_5@uint32;
(*   %conv.i.i362.6 = zext i8 %conv5.i.i371.5 to i32 *)
cast v_conv_i_i362_6@uint32 v_conv5_i_i371_5@uint8;
(*   %and.i.i363.6 = and i32 %conv.i.i362.6, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i363_6 v_conv_i_i362_6 (0x1)@uint32;
(*   %conv1.i.i364.6 = zext i8 %conv7.i.i374.5 to i32 *)
cast v_conv1_i_i364_6@uint32 v_conv7_i_i374_5@uint8;
(*   %mul.i.i365.6 = mul nsw i32 %and.i.i363.6, %conv1.i.i364.6 *)
mul v_mul_i_i365_6 v_and_i_i363_6 v_conv1_i_i364_6;
(*   %conv2.i.i366.6 = zext i8 %conv3.i.i368.5 to i32 *)
cast v_conv2_i_i366_6@uint32 v_conv3_i_i368_5@uint8;
(*   %xor.i.i367.6 = xor i32 %conv2.i.i366.6, %mul.i.i365.6 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i367_6 v_conv2_i_i366_6 v_mul_i_i365_6;
(*   %conv3.i.i368.6 = trunc i32 %xor.i.i367.6 to i8 *)
split tmp_v_xor_i_i367_6 v_conv3_i_i368_6 v_xor_i_i367_6 8;
vpc v_conv3_i_i368_6@uint8 v_conv3_i_i368_6@uint32;
(*   %conv4.i.i369.6 = zext i8 %conv5.i.i371.5 to i32 *)
cast v_conv4_i_i369_6@uint32 v_conv5_i_i371_5@uint8;
(*   %shr.i.i370.6 = ashr i32 %conv4.i.i369.6, 1 *)
(* You may need to modify here *)
split v_shr_i_i370_6 tmp_to_be_used v_conv4_i_i369_6 1;
(*   %conv5.i.i371.6 = trunc i32 %shr.i.i370.6 to i8 *)
split tmp_v_shr_i_i370_6 v_conv5_i_i371_6 v_shr_i_i370_6 8;
vpc v_conv5_i_i371_6@uint8 v_conv5_i_i371_6@uint32;
(*   %conv6.i.i372.6 = zext i8 %conv7.i.i374.5 to i32 *)
cast v_conv6_i_i372_6@uint32 v_conv7_i_i374_5@uint8;
(*   %shl.i.i373.6 = shl i32 %conv6.i.i372.6, 1 *)
shls discard_20 v_shl_i_i373_6 v_conv6_i_i372_6 1;
(*   %conv7.i.i374.6 = trunc i32 %shl.i.i373.6 to i8 *)
split tmp_v_shl_i_i373_6 v_conv7_i_i374_6 v_shl_i_i373_6 8;
vpc v_conv7_i_i374_6@uint8 v_conv7_i_i374_6@uint32;
(*   %conv.i.i362.7 = zext i8 %conv5.i.i371.6 to i32 *)
cast v_conv_i_i362_7@uint32 v_conv5_i_i371_6@uint8;
(*   %and.i.i363.7 = and i32 %conv.i.i362.7, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i363_7 v_conv_i_i362_7 (0x1)@uint32;
(*   %conv1.i.i364.7 = zext i8 %conv7.i.i374.6 to i32 *)
cast v_conv1_i_i364_7@uint32 v_conv7_i_i374_6@uint8;
(*   %mul.i.i365.7 = mul nsw i32 %and.i.i363.7, %conv1.i.i364.7 *)
mul v_mul_i_i365_7 v_and_i_i363_7 v_conv1_i_i364_7;
(*   %conv2.i.i366.7 = zext i8 %conv3.i.i368.6 to i32 *)
cast v_conv2_i_i366_7@uint32 v_conv3_i_i368_6@uint8;
(*   %xor.i.i367.7 = xor i32 %conv2.i.i366.7, %mul.i.i365.7 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i367_7 v_conv2_i_i366_7 v_mul_i_i365_7;
(*   %conv3.i.i368.7 = trunc i32 %xor.i.i367.7 to i8 *)
split tmp_v_xor_i_i367_7 v_conv3_i_i368_7 v_xor_i_i367_7 8;
vpc v_conv3_i_i368_7@uint8 v_conv3_i_i368_7@uint32;
(*   store i8 %conv3.i.i368.7, i8* %add.ptr12, align 1 *)
mov cc_1 v_conv3_i_i368_7;
(*   %arraydecay13 = getelementptr inbounds [2 x i8], [2 x i8]* %cc, i64 0, i64 0 *)
(*   %add.ptr14 = getelementptr inbounds i8, i8* %arraydecay13, i64 1 *)
(*   %add.ptr15 = getelementptr inbounds i8, i8* %r, i64 1 *)
(*   %6 = load i8, i8* %add.ptr14, align 1 *)
mov v6 cc_1;
(*   %conv.i335 = zext i8 %6 to i32 *)
cast v_conv_i335@uint32 v6@uint8;
(*   %7 = load i8, i8* %add.ptr15, align 1 *)
mov v7 r_1;
(*   %conv5.i337 = zext i8 %7 to i32 *)
cast v_conv5_i337@uint32 v7@uint8;
(*   %xor.i338 = xor i32 %conv.i335, %conv5.i337 *)
(* You may need to modify here *)
xor uint32 v_xor_i338 v_conv_i335 v_conv5_i337;
(*   %conv6.i339 = trunc i32 %xor.i338 to i8 *)
split tmp_v_xor_i338 v_conv6_i339 v_xor_i338 8;
vpc v_conv6_i339@uint8 v_conv6_i339@uint32;
(*   %scevgep82 = getelementptr [2 x i8], [2 x i8]* %dd, i64 0, i64 1 *)
(*   store i8 %conv6.i339, i8* %scevgep82, align 1 *)
mov dd_1 v_conv6_i339;
(*   %arraydecay79 = getelementptr inbounds [2 x i8], [2 x i8]* %dd, i64 0, i64 0 *)
(*   %add.ptr80 = getelementptr inbounds i8, i8* %arraydecay79, i64 1 *)
(*   %arraydecay81 = getelementptr inbounds [2 x i8], [2 x i8]* %cc, i64 0, i64 0 *)
(*   %add.ptr82 = getelementptr inbounds i8, i8* %arraydecay81, i64 0 *)
(*   %8 = load i8, i8* %add.ptr80, align 1 *)
mov v8 dd_1;
(*   %conv.i242 = zext i8 %8 to i32 *)
cast v_conv_i242@uint32 v8@uint8;
(*   %9 = load i8, i8* %add.ptr82, align 1 *)
mov v9 cc_0;
(*   %conv5.i244 = zext i8 %9 to i32 *)
cast v_conv5_i244@uint32 v9@uint8;
(*   %xor.i245 = xor i32 %conv.i242, %conv5.i244 *)
(* You may need to modify here *)
xor uint32 v_xor_i245 v_conv_i242 v_conv5_i244;
(*   %conv6.i246 = trunc i32 %xor.i245 to i8 *)
split tmp_v_xor_i245 v_conv6_i246 v_xor_i245 8;
vpc v_conv6_i246@uint8 v_conv6_i246@uint32;
(*   store i8 %conv6.i246, i8* %c, align 1 *)
mov c_0 v_conv6_i246;
(*   %arraydecay83 = getelementptr inbounds [2 x i8], [2 x i8]* %cc, i64 0, i64 0 *)
(*   %add.ptr84 = getelementptr inbounds i8, i8* %arraydecay83, i64 1 *)
(*   %10 = load i8, i8* %add.ptr84, align 1 *)
mov v10 cc_1;
(*   %conv.i226 = zext i8 %10 to i32 *)
cast v_conv_i226@uint32 v10@uint8;
(*   %11 = load i8, i8* %c, align 1 *)
mov v11 c_0;
(*   %conv5.i228 = zext i8 %11 to i32 *)
cast v_conv5_i228@uint32 v11@uint8;
(*   %xor.i229 = xor i32 %conv.i226, %conv5.i228 *)
(* You may need to modify here *)
xor uint32 v_xor_i229 v_conv_i226 v_conv5_i228;
(*   %conv6.i230 = trunc i32 %xor.i229 to i8 *)
split tmp_v_xor_i229 v_conv6_i230 v_xor_i229 8;
vpc v_conv6_i230@uint8 v_conv6_i230@uint32;
(*   store i8 %conv6.i230, i8* %c, align 1 *)
mov c_0 v_conv6_i230;
(*   %12 = load i8, i8* %a, align 1 *)
mov v12 a_0;
(*   %13 = load i8, i8* %b, align 1 *)
mov v13 b_0;
(*   %conv.i = zext i8 %13 to i32 *)
cast v_conv_i@uint32 v13@uint8;
(*   %and.i = and i32 %conv.i, 1 *)
(* You may need to modify here *)
and uint32 v_and_i v_conv_i (0x1)@uint32;
(*   %conv1.i = zext i8 %12 to i32 *)
cast v_conv1_i@uint32 v12@uint8;
(*   %mul.i = mul nsw i32 %and.i, %conv1.i *)
mul v_mul_i v_and_i v_conv1_i;
(*   %conv3.i = trunc i32 %mul.i to i8 *)
split tmp_v_mul_i v_conv3_i v_mul_i 8;
vpc v_conv3_i@uint8 v_conv3_i@uint32;
(*   %conv4.i = zext i8 %13 to i32 *)
cast v_conv4_i@uint32 v13@uint8;
(*   %shr.i = ashr i32 %conv4.i, 1 *)
(* You may need to modify here *)
split v_shr_i tmp_to_be_used v_conv4_i 1;
(*   %conv5.i = trunc i32 %shr.i to i8 *)
split tmp_v_shr_i v_conv5_i v_shr_i 8;
vpc v_conv5_i@uint8 v_conv5_i@uint32;
(*   %conv6.i = zext i8 %12 to i32 *)
cast v_conv6_i@uint32 v12@uint8;
(*   %shl.i = shl i32 %conv6.i, 1 *)
shls discard_21 v_shl_i v_conv6_i 1;
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
shls discard_22 v_shl_i_1 v_conv6_i_1 1;
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
shls discard_23 v_shl_i_2 v_conv6_i_2 1;
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
shls discard_24 v_shl_i_3 v_conv6_i_3 1;
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
shls discard_25 v_shl_i_4 v_conv6_i_4 1;
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
shls discard_26 v_shl_i_5 v_conv6_i_5 1;
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
shls discard_27 v_shl_i_6 v_conv6_i_6 1;
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
(*   %14 = load i8, i8* %c, align 1 *)
mov v14 c_0;
(*   store i8 %14, i8* %C, align 1 *)
mov C_0 v14;
(*   ret void *)


(* Outputs *)

mov _ AB_0@uint8;
mov _ C_0@uint8;


{
  true
  &&
  true
}

