proc main (uint8 a_0, uint8 a_1, uint8 a_2, uint8 b_0, uint8 b_1, uint8 b_2, uint8 r_3, uint8 r_4, uint8 r_5) =
{
  true
  &&
  true
}



(*   %cc = alloca [18 x i8], align 16 *)
(*   %dd = alloca [18 x i8], align 16 *)
(*   %arraydecay = getelementptr inbounds [18 x i8], [18 x i8]* %cc, i64 0, i64 0 *)
(*   %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 3 *)
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
mov cc_3 v_conv3_i_i_7;
(*   %arrayidx.i.1 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %2 = load i8, i8* %arrayidx.i.1, align 1 *)
mov v2 a_1;
(*   %arrayidx4.i.1 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %3 = load i8, i8* %arrayidx4.i.1, align 1 *)
mov v3 b_1;
(*   %conv.i.i.1389 = zext i8 %3 to i32 *)
cast v_conv_i_i_1389@uint32 v3@uint8;
(*   %and.i.i.1390 = and i32 %conv.i.i.1389, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_1390 v_conv_i_i_1389 (0x1)@uint32;
(*   %conv1.i.i.1391 = zext i8 %2 to i32 *)
cast v_conv1_i_i_1391@uint32 v2@uint8;
(*   %mul.i.i.1392 = mul nsw i32 %and.i.i.1390, %conv1.i.i.1391 *)
mul v_mul_i_i_1392 v_and_i_i_1390 v_conv1_i_i_1391;
(*   %conv3.i.i.1393 = trunc i32 %mul.i.i.1392 to i8 *)
split tmp_v_mul_i_i_1392 v_conv3_i_i_1393 v_mul_i_i_1392 8;
vpc v_conv3_i_i_1393@uint8 v_conv3_i_i_1393@uint32;
(*   %conv4.i.i.1394 = zext i8 %3 to i32 *)
cast v_conv4_i_i_1394@uint32 v3@uint8;
(*   %shr.i.i.1395 = ashr i32 %conv4.i.i.1394, 1 *)
(* You may need to modify here *)
split v_shr_i_i_1395 tmp_to_be_used v_conv4_i_i_1394 1;
(*   %conv5.i.i.1396 = trunc i32 %shr.i.i.1395 to i8 *)
split tmp_v_shr_i_i_1395 v_conv5_i_i_1396 v_shr_i_i_1395 8;
vpc v_conv5_i_i_1396@uint8 v_conv5_i_i_1396@uint32;
(*   %conv6.i.i.1397 = zext i8 %2 to i32 *)
cast v_conv6_i_i_1397@uint32 v2@uint8;
(*   %shl.i.i.1398 = shl i32 %conv6.i.i.1397, 1 *)
shls discard_7 v_shl_i_i_1398 v_conv6_i_i_1397 1;
(*   %conv7.i.i.1399 = trunc i32 %shl.i.i.1398 to i8 *)
split tmp_v_shl_i_i_1398 v_conv7_i_i_1399 v_shl_i_i_1398 8;
vpc v_conv7_i_i_1399@uint8 v_conv7_i_i_1399@uint32;
(*   %conv.i.i.1.1 = zext i8 %conv5.i.i.1396 to i32 *)
cast v_conv_i_i_1_1@uint32 v_conv5_i_i_1396@uint8;
(*   %and.i.i.1.1 = and i32 %conv.i.i.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_1_1 v_conv_i_i_1_1 (0x1)@uint32;
(*   %conv1.i.i.1.1 = zext i8 %conv7.i.i.1399 to i32 *)
cast v_conv1_i_i_1_1@uint32 v_conv7_i_i_1399@uint8;
(*   %mul.i.i.1.1 = mul nsw i32 %and.i.i.1.1, %conv1.i.i.1.1 *)
mul v_mul_i_i_1_1 v_and_i_i_1_1 v_conv1_i_i_1_1;
(*   %conv2.i.i.1.1 = zext i8 %conv3.i.i.1393 to i32 *)
cast v_conv2_i_i_1_1@uint32 v_conv3_i_i_1393@uint8;
(*   %xor.i.i.1.1 = xor i32 %conv2.i.i.1.1, %mul.i.i.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_1_1 v_conv2_i_i_1_1 v_mul_i_i_1_1;
(*   %conv3.i.i.1.1 = trunc i32 %xor.i.i.1.1 to i8 *)
split tmp_v_xor_i_i_1_1 v_conv3_i_i_1_1 v_xor_i_i_1_1 8;
vpc v_conv3_i_i_1_1@uint8 v_conv3_i_i_1_1@uint32;
(*   %conv4.i.i.1.1 = zext i8 %conv5.i.i.1396 to i32 *)
cast v_conv4_i_i_1_1@uint32 v_conv5_i_i_1396@uint8;
(*   %shr.i.i.1.1 = ashr i32 %conv4.i.i.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i_1_1 tmp_to_be_used v_conv4_i_i_1_1 1;
(*   %conv5.i.i.1.1 = trunc i32 %shr.i.i.1.1 to i8 *)
split tmp_v_shr_i_i_1_1 v_conv5_i_i_1_1 v_shr_i_i_1_1 8;
vpc v_conv5_i_i_1_1@uint8 v_conv5_i_i_1_1@uint32;
(*   %conv6.i.i.1.1 = zext i8 %conv7.i.i.1399 to i32 *)
cast v_conv6_i_i_1_1@uint32 v_conv7_i_i_1399@uint8;
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
mov cc_4 v_conv3_i_i_7_1;
(*   %arrayidx.i.2 = getelementptr inbounds i8, i8* %a, i64 2 *)
(*   %4 = load i8, i8* %arrayidx.i.2, align 1 *)
mov v4 a_2;
(*   %arrayidx4.i.2 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %5 = load i8, i8* %arrayidx4.i.2, align 1 *)
mov v5 b_2;
(*   %conv.i.i.2400 = zext i8 %5 to i32 *)
cast v_conv_i_i_2400@uint32 v5@uint8;
(*   %and.i.i.2401 = and i32 %conv.i.i.2400, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_2401 v_conv_i_i_2400 (0x1)@uint32;
(*   %conv1.i.i.2402 = zext i8 %4 to i32 *)
cast v_conv1_i_i_2402@uint32 v4@uint8;
(*   %mul.i.i.2403 = mul nsw i32 %and.i.i.2401, %conv1.i.i.2402 *)
mul v_mul_i_i_2403 v_and_i_i_2401 v_conv1_i_i_2402;
(*   %conv3.i.i.2404 = trunc i32 %mul.i.i.2403 to i8 *)
split tmp_v_mul_i_i_2403 v_conv3_i_i_2404 v_mul_i_i_2403 8;
vpc v_conv3_i_i_2404@uint8 v_conv3_i_i_2404@uint32;
(*   %conv4.i.i.2405 = zext i8 %5 to i32 *)
cast v_conv4_i_i_2405@uint32 v5@uint8;
(*   %shr.i.i.2406 = ashr i32 %conv4.i.i.2405, 1 *)
(* You may need to modify here *)
split v_shr_i_i_2406 tmp_to_be_used v_conv4_i_i_2405 1;
(*   %conv5.i.i.2407 = trunc i32 %shr.i.i.2406 to i8 *)
split tmp_v_shr_i_i_2406 v_conv5_i_i_2407 v_shr_i_i_2406 8;
vpc v_conv5_i_i_2407@uint8 v_conv5_i_i_2407@uint32;
(*   %conv6.i.i.2408 = zext i8 %4 to i32 *)
cast v_conv6_i_i_2408@uint32 v4@uint8;
(*   %shl.i.i.2409 = shl i32 %conv6.i.i.2408, 1 *)
shls discard_14 v_shl_i_i_2409 v_conv6_i_i_2408 1;
(*   %conv7.i.i.2410 = trunc i32 %shl.i.i.2409 to i8 *)
split tmp_v_shl_i_i_2409 v_conv7_i_i_2410 v_shl_i_i_2409 8;
vpc v_conv7_i_i_2410@uint8 v_conv7_i_i_2410@uint32;
(*   %conv.i.i.1.2 = zext i8 %conv5.i.i.2407 to i32 *)
cast v_conv_i_i_1_2@uint32 v_conv5_i_i_2407@uint8;
(*   %and.i.i.1.2 = and i32 %conv.i.i.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_1_2 v_conv_i_i_1_2 (0x1)@uint32;
(*   %conv1.i.i.1.2 = zext i8 %conv7.i.i.2410 to i32 *)
cast v_conv1_i_i_1_2@uint32 v_conv7_i_i_2410@uint8;
(*   %mul.i.i.1.2 = mul nsw i32 %and.i.i.1.2, %conv1.i.i.1.2 *)
mul v_mul_i_i_1_2 v_and_i_i_1_2 v_conv1_i_i_1_2;
(*   %conv2.i.i.1.2 = zext i8 %conv3.i.i.2404 to i32 *)
cast v_conv2_i_i_1_2@uint32 v_conv3_i_i_2404@uint8;
(*   %xor.i.i.1.2 = xor i32 %conv2.i.i.1.2, %mul.i.i.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_1_2 v_conv2_i_i_1_2 v_mul_i_i_1_2;
(*   %conv3.i.i.1.2 = trunc i32 %xor.i.i.1.2 to i8 *)
split tmp_v_xor_i_i_1_2 v_conv3_i_i_1_2 v_xor_i_i_1_2 8;
vpc v_conv3_i_i_1_2@uint8 v_conv3_i_i_1_2@uint32;
(*   %conv4.i.i.1.2 = zext i8 %conv5.i.i.2407 to i32 *)
cast v_conv4_i_i_1_2@uint32 v_conv5_i_i_2407@uint8;
(*   %shr.i.i.1.2 = ashr i32 %conv4.i.i.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i_1_2 tmp_to_be_used v_conv4_i_i_1_2 1;
(*   %conv5.i.i.1.2 = trunc i32 %shr.i.i.1.2 to i8 *)
split tmp_v_shr_i_i_1_2 v_conv5_i_i_1_2 v_shr_i_i_1_2 8;
vpc v_conv5_i_i_1_2@uint8 v_conv5_i_i_1_2@uint32;
(*   %conv6.i.i.1.2 = zext i8 %conv7.i.i.2410 to i32 *)
cast v_conv6_i_i_1_2@uint32 v_conv7_i_i_2410@uint8;
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
mov cc_5 v_conv3_i_i_7_2;
(*   %arraydecay1 = getelementptr inbounds [18 x i8], [18 x i8]* %cc, i64 0, i64 0 *)
(*   %arraydecay4 = getelementptr inbounds [18 x i8], [18 x i8]* %cc, i64 0, i64 0 *)
(*   %add.ptr3 = getelementptr inbounds i8, i8* %arraydecay1, i64 6 *)
(*   %6 = load i8, i8* %a, align 1 *)
mov v6 a_0;
(*   %arrayidx4.i138 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %7 = load i8, i8* %arrayidx4.i138, align 1 *)
mov v7 b_1;
(*   %conv.i.i142 = zext i8 %7 to i32 *)
cast v_conv_i_i142@uint32 v7@uint8;
(*   %and.i.i143 = and i32 %conv.i.i142, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i143 v_conv_i_i142 (0x1)@uint32;
(*   %conv1.i.i144 = zext i8 %6 to i32 *)
cast v_conv1_i_i144@uint32 v6@uint8;
(*   %mul.i.i145 = mul nsw i32 %and.i.i143, %conv1.i.i144 *)
mul v_mul_i_i145 v_and_i_i143 v_conv1_i_i144;
(*   %conv3.i.i148 = trunc i32 %mul.i.i145 to i8 *)
split tmp_v_mul_i_i145 v_conv3_i_i148 v_mul_i_i145 8;
vpc v_conv3_i_i148@uint8 v_conv3_i_i148@uint32;
(*   %conv4.i.i149 = zext i8 %7 to i32 *)
cast v_conv4_i_i149@uint32 v7@uint8;
(*   %shr.i.i150 = ashr i32 %conv4.i.i149, 1 *)
(* You may need to modify here *)
split v_shr_i_i150 tmp_to_be_used v_conv4_i_i149 1;
(*   %conv5.i.i151 = trunc i32 %shr.i.i150 to i8 *)
split tmp_v_shr_i_i150 v_conv5_i_i151 v_shr_i_i150 8;
vpc v_conv5_i_i151@uint8 v_conv5_i_i151@uint32;
(*   %conv6.i.i152 = zext i8 %6 to i32 *)
cast v_conv6_i_i152@uint32 v6@uint8;
(*   %shl.i.i153 = shl i32 %conv6.i.i152, 1 *)
shls discard_21 v_shl_i_i153 v_conv6_i_i152 1;
(*   %conv7.i.i154 = trunc i32 %shl.i.i153 to i8 *)
split tmp_v_shl_i_i153 v_conv7_i_i154 v_shl_i_i153 8;
vpc v_conv7_i_i154@uint8 v_conv7_i_i154@uint32;
(*   %conv.i.i142.1 = zext i8 %conv5.i.i151 to i32 *)
cast v_conv_i_i142_1@uint32 v_conv5_i_i151@uint8;
(*   %and.i.i143.1 = and i32 %conv.i.i142.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i143_1 v_conv_i_i142_1 (0x1)@uint32;
(*   %conv1.i.i144.1 = zext i8 %conv7.i.i154 to i32 *)
cast v_conv1_i_i144_1@uint32 v_conv7_i_i154@uint8;
(*   %mul.i.i145.1 = mul nsw i32 %and.i.i143.1, %conv1.i.i144.1 *)
mul v_mul_i_i145_1 v_and_i_i143_1 v_conv1_i_i144_1;
(*   %conv2.i.i146.1 = zext i8 %conv3.i.i148 to i32 *)
cast v_conv2_i_i146_1@uint32 v_conv3_i_i148@uint8;
(*   %xor.i.i147.1 = xor i32 %conv2.i.i146.1, %mul.i.i145.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i147_1 v_conv2_i_i146_1 v_mul_i_i145_1;
(*   %conv3.i.i148.1 = trunc i32 %xor.i.i147.1 to i8 *)
split tmp_v_xor_i_i147_1 v_conv3_i_i148_1 v_xor_i_i147_1 8;
vpc v_conv3_i_i148_1@uint8 v_conv3_i_i148_1@uint32;
(*   %conv4.i.i149.1 = zext i8 %conv5.i.i151 to i32 *)
cast v_conv4_i_i149_1@uint32 v_conv5_i_i151@uint8;
(*   %shr.i.i150.1 = ashr i32 %conv4.i.i149.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i150_1 tmp_to_be_used v_conv4_i_i149_1 1;
(*   %conv5.i.i151.1 = trunc i32 %shr.i.i150.1 to i8 *)
split tmp_v_shr_i_i150_1 v_conv5_i_i151_1 v_shr_i_i150_1 8;
vpc v_conv5_i_i151_1@uint8 v_conv5_i_i151_1@uint32;
(*   %conv6.i.i152.1 = zext i8 %conv7.i.i154 to i32 *)
cast v_conv6_i_i152_1@uint32 v_conv7_i_i154@uint8;
(*   %shl.i.i153.1 = shl i32 %conv6.i.i152.1, 1 *)
shls discard_22 v_shl_i_i153_1 v_conv6_i_i152_1 1;
(*   %conv7.i.i154.1 = trunc i32 %shl.i.i153.1 to i8 *)
split tmp_v_shl_i_i153_1 v_conv7_i_i154_1 v_shl_i_i153_1 8;
vpc v_conv7_i_i154_1@uint8 v_conv7_i_i154_1@uint32;
(*   %conv.i.i142.2 = zext i8 %conv5.i.i151.1 to i32 *)
cast v_conv_i_i142_2@uint32 v_conv5_i_i151_1@uint8;
(*   %and.i.i143.2 = and i32 %conv.i.i142.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i143_2 v_conv_i_i142_2 (0x1)@uint32;
(*   %conv1.i.i144.2 = zext i8 %conv7.i.i154.1 to i32 *)
cast v_conv1_i_i144_2@uint32 v_conv7_i_i154_1@uint8;
(*   %mul.i.i145.2 = mul nsw i32 %and.i.i143.2, %conv1.i.i144.2 *)
mul v_mul_i_i145_2 v_and_i_i143_2 v_conv1_i_i144_2;
(*   %conv2.i.i146.2 = zext i8 %conv3.i.i148.1 to i32 *)
cast v_conv2_i_i146_2@uint32 v_conv3_i_i148_1@uint8;
(*   %xor.i.i147.2 = xor i32 %conv2.i.i146.2, %mul.i.i145.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i147_2 v_conv2_i_i146_2 v_mul_i_i145_2;
(*   %conv3.i.i148.2 = trunc i32 %xor.i.i147.2 to i8 *)
split tmp_v_xor_i_i147_2 v_conv3_i_i148_2 v_xor_i_i147_2 8;
vpc v_conv3_i_i148_2@uint8 v_conv3_i_i148_2@uint32;
(*   %conv4.i.i149.2 = zext i8 %conv5.i.i151.1 to i32 *)
cast v_conv4_i_i149_2@uint32 v_conv5_i_i151_1@uint8;
(*   %shr.i.i150.2 = ashr i32 %conv4.i.i149.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i150_2 tmp_to_be_used v_conv4_i_i149_2 1;
(*   %conv5.i.i151.2 = trunc i32 %shr.i.i150.2 to i8 *)
split tmp_v_shr_i_i150_2 v_conv5_i_i151_2 v_shr_i_i150_2 8;
vpc v_conv5_i_i151_2@uint8 v_conv5_i_i151_2@uint32;
(*   %conv6.i.i152.2 = zext i8 %conv7.i.i154.1 to i32 *)
cast v_conv6_i_i152_2@uint32 v_conv7_i_i154_1@uint8;
(*   %shl.i.i153.2 = shl i32 %conv6.i.i152.2, 1 *)
shls discard_23 v_shl_i_i153_2 v_conv6_i_i152_2 1;
(*   %conv7.i.i154.2 = trunc i32 %shl.i.i153.2 to i8 *)
split tmp_v_shl_i_i153_2 v_conv7_i_i154_2 v_shl_i_i153_2 8;
vpc v_conv7_i_i154_2@uint8 v_conv7_i_i154_2@uint32;
(*   %conv.i.i142.3 = zext i8 %conv5.i.i151.2 to i32 *)
cast v_conv_i_i142_3@uint32 v_conv5_i_i151_2@uint8;
(*   %and.i.i143.3 = and i32 %conv.i.i142.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i143_3 v_conv_i_i142_3 (0x1)@uint32;
(*   %conv1.i.i144.3 = zext i8 %conv7.i.i154.2 to i32 *)
cast v_conv1_i_i144_3@uint32 v_conv7_i_i154_2@uint8;
(*   %mul.i.i145.3 = mul nsw i32 %and.i.i143.3, %conv1.i.i144.3 *)
mul v_mul_i_i145_3 v_and_i_i143_3 v_conv1_i_i144_3;
(*   %conv2.i.i146.3 = zext i8 %conv3.i.i148.2 to i32 *)
cast v_conv2_i_i146_3@uint32 v_conv3_i_i148_2@uint8;
(*   %xor.i.i147.3 = xor i32 %conv2.i.i146.3, %mul.i.i145.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i147_3 v_conv2_i_i146_3 v_mul_i_i145_3;
(*   %conv3.i.i148.3 = trunc i32 %xor.i.i147.3 to i8 *)
split tmp_v_xor_i_i147_3 v_conv3_i_i148_3 v_xor_i_i147_3 8;
vpc v_conv3_i_i148_3@uint8 v_conv3_i_i148_3@uint32;
(*   %conv4.i.i149.3 = zext i8 %conv5.i.i151.2 to i32 *)
cast v_conv4_i_i149_3@uint32 v_conv5_i_i151_2@uint8;
(*   %shr.i.i150.3 = ashr i32 %conv4.i.i149.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i150_3 tmp_to_be_used v_conv4_i_i149_3 1;
(*   %conv5.i.i151.3 = trunc i32 %shr.i.i150.3 to i8 *)
split tmp_v_shr_i_i150_3 v_conv5_i_i151_3 v_shr_i_i150_3 8;
vpc v_conv5_i_i151_3@uint8 v_conv5_i_i151_3@uint32;
(*   %conv6.i.i152.3 = zext i8 %conv7.i.i154.2 to i32 *)
cast v_conv6_i_i152_3@uint32 v_conv7_i_i154_2@uint8;
(*   %shl.i.i153.3 = shl i32 %conv6.i.i152.3, 1 *)
shls discard_24 v_shl_i_i153_3 v_conv6_i_i152_3 1;
(*   %conv7.i.i154.3 = trunc i32 %shl.i.i153.3 to i8 *)
split tmp_v_shl_i_i153_3 v_conv7_i_i154_3 v_shl_i_i153_3 8;
vpc v_conv7_i_i154_3@uint8 v_conv7_i_i154_3@uint32;
(*   %conv.i.i142.4 = zext i8 %conv5.i.i151.3 to i32 *)
cast v_conv_i_i142_4@uint32 v_conv5_i_i151_3@uint8;
(*   %and.i.i143.4 = and i32 %conv.i.i142.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i143_4 v_conv_i_i142_4 (0x1)@uint32;
(*   %conv1.i.i144.4 = zext i8 %conv7.i.i154.3 to i32 *)
cast v_conv1_i_i144_4@uint32 v_conv7_i_i154_3@uint8;
(*   %mul.i.i145.4 = mul nsw i32 %and.i.i143.4, %conv1.i.i144.4 *)
mul v_mul_i_i145_4 v_and_i_i143_4 v_conv1_i_i144_4;
(*   %conv2.i.i146.4 = zext i8 %conv3.i.i148.3 to i32 *)
cast v_conv2_i_i146_4@uint32 v_conv3_i_i148_3@uint8;
(*   %xor.i.i147.4 = xor i32 %conv2.i.i146.4, %mul.i.i145.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i147_4 v_conv2_i_i146_4 v_mul_i_i145_4;
(*   %conv3.i.i148.4 = trunc i32 %xor.i.i147.4 to i8 *)
split tmp_v_xor_i_i147_4 v_conv3_i_i148_4 v_xor_i_i147_4 8;
vpc v_conv3_i_i148_4@uint8 v_conv3_i_i148_4@uint32;
(*   %conv4.i.i149.4 = zext i8 %conv5.i.i151.3 to i32 *)
cast v_conv4_i_i149_4@uint32 v_conv5_i_i151_3@uint8;
(*   %shr.i.i150.4 = ashr i32 %conv4.i.i149.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i150_4 tmp_to_be_used v_conv4_i_i149_4 1;
(*   %conv5.i.i151.4 = trunc i32 %shr.i.i150.4 to i8 *)
split tmp_v_shr_i_i150_4 v_conv5_i_i151_4 v_shr_i_i150_4 8;
vpc v_conv5_i_i151_4@uint8 v_conv5_i_i151_4@uint32;
(*   %conv6.i.i152.4 = zext i8 %conv7.i.i154.3 to i32 *)
cast v_conv6_i_i152_4@uint32 v_conv7_i_i154_3@uint8;
(*   %shl.i.i153.4 = shl i32 %conv6.i.i152.4, 1 *)
shls discard_25 v_shl_i_i153_4 v_conv6_i_i152_4 1;
(*   %conv7.i.i154.4 = trunc i32 %shl.i.i153.4 to i8 *)
split tmp_v_shl_i_i153_4 v_conv7_i_i154_4 v_shl_i_i153_4 8;
vpc v_conv7_i_i154_4@uint8 v_conv7_i_i154_4@uint32;
(*   %conv.i.i142.5 = zext i8 %conv5.i.i151.4 to i32 *)
cast v_conv_i_i142_5@uint32 v_conv5_i_i151_4@uint8;
(*   %and.i.i143.5 = and i32 %conv.i.i142.5, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i143_5 v_conv_i_i142_5 (0x1)@uint32;
(*   %conv1.i.i144.5 = zext i8 %conv7.i.i154.4 to i32 *)
cast v_conv1_i_i144_5@uint32 v_conv7_i_i154_4@uint8;
(*   %mul.i.i145.5 = mul nsw i32 %and.i.i143.5, %conv1.i.i144.5 *)
mul v_mul_i_i145_5 v_and_i_i143_5 v_conv1_i_i144_5;
(*   %conv2.i.i146.5 = zext i8 %conv3.i.i148.4 to i32 *)
cast v_conv2_i_i146_5@uint32 v_conv3_i_i148_4@uint8;
(*   %xor.i.i147.5 = xor i32 %conv2.i.i146.5, %mul.i.i145.5 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i147_5 v_conv2_i_i146_5 v_mul_i_i145_5;
(*   %conv3.i.i148.5 = trunc i32 %xor.i.i147.5 to i8 *)
split tmp_v_xor_i_i147_5 v_conv3_i_i148_5 v_xor_i_i147_5 8;
vpc v_conv3_i_i148_5@uint8 v_conv3_i_i148_5@uint32;
(*   %conv4.i.i149.5 = zext i8 %conv5.i.i151.4 to i32 *)
cast v_conv4_i_i149_5@uint32 v_conv5_i_i151_4@uint8;
(*   %shr.i.i150.5 = ashr i32 %conv4.i.i149.5, 1 *)
(* You may need to modify here *)
split v_shr_i_i150_5 tmp_to_be_used v_conv4_i_i149_5 1;
(*   %conv5.i.i151.5 = trunc i32 %shr.i.i150.5 to i8 *)
split tmp_v_shr_i_i150_5 v_conv5_i_i151_5 v_shr_i_i150_5 8;
vpc v_conv5_i_i151_5@uint8 v_conv5_i_i151_5@uint32;
(*   %conv6.i.i152.5 = zext i8 %conv7.i.i154.4 to i32 *)
cast v_conv6_i_i152_5@uint32 v_conv7_i_i154_4@uint8;
(*   %shl.i.i153.5 = shl i32 %conv6.i.i152.5, 1 *)
shls discard_26 v_shl_i_i153_5 v_conv6_i_i152_5 1;
(*   %conv7.i.i154.5 = trunc i32 %shl.i.i153.5 to i8 *)
split tmp_v_shl_i_i153_5 v_conv7_i_i154_5 v_shl_i_i153_5 8;
vpc v_conv7_i_i154_5@uint8 v_conv7_i_i154_5@uint32;
(*   %conv.i.i142.6 = zext i8 %conv5.i.i151.5 to i32 *)
cast v_conv_i_i142_6@uint32 v_conv5_i_i151_5@uint8;
(*   %and.i.i143.6 = and i32 %conv.i.i142.6, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i143_6 v_conv_i_i142_6 (0x1)@uint32;
(*   %conv1.i.i144.6 = zext i8 %conv7.i.i154.5 to i32 *)
cast v_conv1_i_i144_6@uint32 v_conv7_i_i154_5@uint8;
(*   %mul.i.i145.6 = mul nsw i32 %and.i.i143.6, %conv1.i.i144.6 *)
mul v_mul_i_i145_6 v_and_i_i143_6 v_conv1_i_i144_6;
(*   %conv2.i.i146.6 = zext i8 %conv3.i.i148.5 to i32 *)
cast v_conv2_i_i146_6@uint32 v_conv3_i_i148_5@uint8;
(*   %xor.i.i147.6 = xor i32 %conv2.i.i146.6, %mul.i.i145.6 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i147_6 v_conv2_i_i146_6 v_mul_i_i145_6;
(*   %conv3.i.i148.6 = trunc i32 %xor.i.i147.6 to i8 *)
split tmp_v_xor_i_i147_6 v_conv3_i_i148_6 v_xor_i_i147_6 8;
vpc v_conv3_i_i148_6@uint8 v_conv3_i_i148_6@uint32;
(*   %conv4.i.i149.6 = zext i8 %conv5.i.i151.5 to i32 *)
cast v_conv4_i_i149_6@uint32 v_conv5_i_i151_5@uint8;
(*   %shr.i.i150.6 = ashr i32 %conv4.i.i149.6, 1 *)
(* You may need to modify here *)
split v_shr_i_i150_6 tmp_to_be_used v_conv4_i_i149_6 1;
(*   %conv5.i.i151.6 = trunc i32 %shr.i.i150.6 to i8 *)
split tmp_v_shr_i_i150_6 v_conv5_i_i151_6 v_shr_i_i150_6 8;
vpc v_conv5_i_i151_6@uint8 v_conv5_i_i151_6@uint32;
(*   %conv6.i.i152.6 = zext i8 %conv7.i.i154.5 to i32 *)
cast v_conv6_i_i152_6@uint32 v_conv7_i_i154_5@uint8;
(*   %shl.i.i153.6 = shl i32 %conv6.i.i152.6, 1 *)
shls discard_27 v_shl_i_i153_6 v_conv6_i_i152_6 1;
(*   %conv7.i.i154.6 = trunc i32 %shl.i.i153.6 to i8 *)
split tmp_v_shl_i_i153_6 v_conv7_i_i154_6 v_shl_i_i153_6 8;
vpc v_conv7_i_i154_6@uint8 v_conv7_i_i154_6@uint32;
(*   %conv.i.i142.7 = zext i8 %conv5.i.i151.6 to i32 *)
cast v_conv_i_i142_7@uint32 v_conv5_i_i151_6@uint8;
(*   %and.i.i143.7 = and i32 %conv.i.i142.7, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i143_7 v_conv_i_i142_7 (0x1)@uint32;
(*   %conv1.i.i144.7 = zext i8 %conv7.i.i154.6 to i32 *)
cast v_conv1_i_i144_7@uint32 v_conv7_i_i154_6@uint8;
(*   %mul.i.i145.7 = mul nsw i32 %and.i.i143.7, %conv1.i.i144.7 *)
mul v_mul_i_i145_7 v_and_i_i143_7 v_conv1_i_i144_7;
(*   %conv2.i.i146.7 = zext i8 %conv3.i.i148.6 to i32 *)
cast v_conv2_i_i146_7@uint32 v_conv3_i_i148_6@uint8;
(*   %xor.i.i147.7 = xor i32 %conv2.i.i146.7, %mul.i.i145.7 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i147_7 v_conv2_i_i146_7 v_mul_i_i145_7;
(*   %conv3.i.i148.7 = trunc i32 %xor.i.i147.7 to i8 *)
split tmp_v_xor_i_i147_7 v_conv3_i_i148_7 v_xor_i_i147_7 8;
vpc v_conv3_i_i148_7@uint8 v_conv3_i_i148_7@uint32;
(*   store i8 %conv3.i.i148.7, i8* %add.ptr3, align 1 *)
mov cc_6 v_conv3_i_i148_7;
(*   %arrayidx.i134.1 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %8 = load i8, i8* %arrayidx.i134.1, align 1 *)
mov v8 a_1;
(*   %arrayidx4.i138.1 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %9 = load i8, i8* %arrayidx4.i138.1, align 1 *)
mov v9 b_2;
(*   %conv.i.i142.1141 = zext i8 %9 to i32 *)
cast v_conv_i_i142_1141@uint32 v9@uint8;
(*   %and.i.i143.1142 = and i32 %conv.i.i142.1141, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i143_1142 v_conv_i_i142_1141 (0x1)@uint32;
(*   %conv1.i.i144.1143 = zext i8 %8 to i32 *)
cast v_conv1_i_i144_1143@uint32 v8@uint8;
(*   %mul.i.i145.1144 = mul nsw i32 %and.i.i143.1142, %conv1.i.i144.1143 *)
mul v_mul_i_i145_1144 v_and_i_i143_1142 v_conv1_i_i144_1143;
(*   %conv3.i.i148.1145 = trunc i32 %mul.i.i145.1144 to i8 *)
split tmp_v_mul_i_i145_1144 v_conv3_i_i148_1145 v_mul_i_i145_1144 8;
vpc v_conv3_i_i148_1145@uint8 v_conv3_i_i148_1145@uint32;
(*   %conv4.i.i149.1146 = zext i8 %9 to i32 *)
cast v_conv4_i_i149_1146@uint32 v9@uint8;
(*   %shr.i.i150.1147 = ashr i32 %conv4.i.i149.1146, 1 *)
(* You may need to modify here *)
split v_shr_i_i150_1147 tmp_to_be_used v_conv4_i_i149_1146 1;
(*   %conv5.i.i151.1148 = trunc i32 %shr.i.i150.1147 to i8 *)
split tmp_v_shr_i_i150_1147 v_conv5_i_i151_1148 v_shr_i_i150_1147 8;
vpc v_conv5_i_i151_1148@uint8 v_conv5_i_i151_1148@uint32;
(*   %conv6.i.i152.1149 = zext i8 %8 to i32 *)
cast v_conv6_i_i152_1149@uint32 v8@uint8;
(*   %shl.i.i153.1150 = shl i32 %conv6.i.i152.1149, 1 *)
shls discard_28 v_shl_i_i153_1150 v_conv6_i_i152_1149 1;
(*   %conv7.i.i154.1151 = trunc i32 %shl.i.i153.1150 to i8 *)
split tmp_v_shl_i_i153_1150 v_conv7_i_i154_1151 v_shl_i_i153_1150 8;
vpc v_conv7_i_i154_1151@uint8 v_conv7_i_i154_1151@uint32;
(*   %conv.i.i142.1.1 = zext i8 %conv5.i.i151.1148 to i32 *)
cast v_conv_i_i142_1_1@uint32 v_conv5_i_i151_1148@uint8;
(*   %and.i.i143.1.1 = and i32 %conv.i.i142.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i143_1_1 v_conv_i_i142_1_1 (0x1)@uint32;
(*   %conv1.i.i144.1.1 = zext i8 %conv7.i.i154.1151 to i32 *)
cast v_conv1_i_i144_1_1@uint32 v_conv7_i_i154_1151@uint8;
(*   %mul.i.i145.1.1 = mul nsw i32 %and.i.i143.1.1, %conv1.i.i144.1.1 *)
mul v_mul_i_i145_1_1 v_and_i_i143_1_1 v_conv1_i_i144_1_1;
(*   %conv2.i.i146.1.1 = zext i8 %conv3.i.i148.1145 to i32 *)
cast v_conv2_i_i146_1_1@uint32 v_conv3_i_i148_1145@uint8;
(*   %xor.i.i147.1.1 = xor i32 %conv2.i.i146.1.1, %mul.i.i145.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i147_1_1 v_conv2_i_i146_1_1 v_mul_i_i145_1_1;
(*   %conv3.i.i148.1.1 = trunc i32 %xor.i.i147.1.1 to i8 *)
split tmp_v_xor_i_i147_1_1 v_conv3_i_i148_1_1 v_xor_i_i147_1_1 8;
vpc v_conv3_i_i148_1_1@uint8 v_conv3_i_i148_1_1@uint32;
(*   %conv4.i.i149.1.1 = zext i8 %conv5.i.i151.1148 to i32 *)
cast v_conv4_i_i149_1_1@uint32 v_conv5_i_i151_1148@uint8;
(*   %shr.i.i150.1.1 = ashr i32 %conv4.i.i149.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i150_1_1 tmp_to_be_used v_conv4_i_i149_1_1 1;
(*   %conv5.i.i151.1.1 = trunc i32 %shr.i.i150.1.1 to i8 *)
split tmp_v_shr_i_i150_1_1 v_conv5_i_i151_1_1 v_shr_i_i150_1_1 8;
vpc v_conv5_i_i151_1_1@uint8 v_conv5_i_i151_1_1@uint32;
(*   %conv6.i.i152.1.1 = zext i8 %conv7.i.i154.1151 to i32 *)
cast v_conv6_i_i152_1_1@uint32 v_conv7_i_i154_1151@uint8;
(*   %shl.i.i153.1.1 = shl i32 %conv6.i.i152.1.1, 1 *)
shls discard_29 v_shl_i_i153_1_1 v_conv6_i_i152_1_1 1;
(*   %conv7.i.i154.1.1 = trunc i32 %shl.i.i153.1.1 to i8 *)
split tmp_v_shl_i_i153_1_1 v_conv7_i_i154_1_1 v_shl_i_i153_1_1 8;
vpc v_conv7_i_i154_1_1@uint8 v_conv7_i_i154_1_1@uint32;
(*   %conv.i.i142.2.1 = zext i8 %conv5.i.i151.1.1 to i32 *)
cast v_conv_i_i142_2_1@uint32 v_conv5_i_i151_1_1@uint8;
(*   %and.i.i143.2.1 = and i32 %conv.i.i142.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i143_2_1 v_conv_i_i142_2_1 (0x1)@uint32;
(*   %conv1.i.i144.2.1 = zext i8 %conv7.i.i154.1.1 to i32 *)
cast v_conv1_i_i144_2_1@uint32 v_conv7_i_i154_1_1@uint8;
(*   %mul.i.i145.2.1 = mul nsw i32 %and.i.i143.2.1, %conv1.i.i144.2.1 *)
mul v_mul_i_i145_2_1 v_and_i_i143_2_1 v_conv1_i_i144_2_1;
(*   %conv2.i.i146.2.1 = zext i8 %conv3.i.i148.1.1 to i32 *)
cast v_conv2_i_i146_2_1@uint32 v_conv3_i_i148_1_1@uint8;
(*   %xor.i.i147.2.1 = xor i32 %conv2.i.i146.2.1, %mul.i.i145.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i147_2_1 v_conv2_i_i146_2_1 v_mul_i_i145_2_1;
(*   %conv3.i.i148.2.1 = trunc i32 %xor.i.i147.2.1 to i8 *)
split tmp_v_xor_i_i147_2_1 v_conv3_i_i148_2_1 v_xor_i_i147_2_1 8;
vpc v_conv3_i_i148_2_1@uint8 v_conv3_i_i148_2_1@uint32;
(*   %conv4.i.i149.2.1 = zext i8 %conv5.i.i151.1.1 to i32 *)
cast v_conv4_i_i149_2_1@uint32 v_conv5_i_i151_1_1@uint8;
(*   %shr.i.i150.2.1 = ashr i32 %conv4.i.i149.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i150_2_1 tmp_to_be_used v_conv4_i_i149_2_1 1;
(*   %conv5.i.i151.2.1 = trunc i32 %shr.i.i150.2.1 to i8 *)
split tmp_v_shr_i_i150_2_1 v_conv5_i_i151_2_1 v_shr_i_i150_2_1 8;
vpc v_conv5_i_i151_2_1@uint8 v_conv5_i_i151_2_1@uint32;
(*   %conv6.i.i152.2.1 = zext i8 %conv7.i.i154.1.1 to i32 *)
cast v_conv6_i_i152_2_1@uint32 v_conv7_i_i154_1_1@uint8;
(*   %shl.i.i153.2.1 = shl i32 %conv6.i.i152.2.1, 1 *)
shls discard_30 v_shl_i_i153_2_1 v_conv6_i_i152_2_1 1;
(*   %conv7.i.i154.2.1 = trunc i32 %shl.i.i153.2.1 to i8 *)
split tmp_v_shl_i_i153_2_1 v_conv7_i_i154_2_1 v_shl_i_i153_2_1 8;
vpc v_conv7_i_i154_2_1@uint8 v_conv7_i_i154_2_1@uint32;
(*   %conv.i.i142.3.1 = zext i8 %conv5.i.i151.2.1 to i32 *)
cast v_conv_i_i142_3_1@uint32 v_conv5_i_i151_2_1@uint8;
(*   %and.i.i143.3.1 = and i32 %conv.i.i142.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i143_3_1 v_conv_i_i142_3_1 (0x1)@uint32;
(*   %conv1.i.i144.3.1 = zext i8 %conv7.i.i154.2.1 to i32 *)
cast v_conv1_i_i144_3_1@uint32 v_conv7_i_i154_2_1@uint8;
(*   %mul.i.i145.3.1 = mul nsw i32 %and.i.i143.3.1, %conv1.i.i144.3.1 *)
mul v_mul_i_i145_3_1 v_and_i_i143_3_1 v_conv1_i_i144_3_1;
(*   %conv2.i.i146.3.1 = zext i8 %conv3.i.i148.2.1 to i32 *)
cast v_conv2_i_i146_3_1@uint32 v_conv3_i_i148_2_1@uint8;
(*   %xor.i.i147.3.1 = xor i32 %conv2.i.i146.3.1, %mul.i.i145.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i147_3_1 v_conv2_i_i146_3_1 v_mul_i_i145_3_1;
(*   %conv3.i.i148.3.1 = trunc i32 %xor.i.i147.3.1 to i8 *)
split tmp_v_xor_i_i147_3_1 v_conv3_i_i148_3_1 v_xor_i_i147_3_1 8;
vpc v_conv3_i_i148_3_1@uint8 v_conv3_i_i148_3_1@uint32;
(*   %conv4.i.i149.3.1 = zext i8 %conv5.i.i151.2.1 to i32 *)
cast v_conv4_i_i149_3_1@uint32 v_conv5_i_i151_2_1@uint8;
(*   %shr.i.i150.3.1 = ashr i32 %conv4.i.i149.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i150_3_1 tmp_to_be_used v_conv4_i_i149_3_1 1;
(*   %conv5.i.i151.3.1 = trunc i32 %shr.i.i150.3.1 to i8 *)
split tmp_v_shr_i_i150_3_1 v_conv5_i_i151_3_1 v_shr_i_i150_3_1 8;
vpc v_conv5_i_i151_3_1@uint8 v_conv5_i_i151_3_1@uint32;
(*   %conv6.i.i152.3.1 = zext i8 %conv7.i.i154.2.1 to i32 *)
cast v_conv6_i_i152_3_1@uint32 v_conv7_i_i154_2_1@uint8;
(*   %shl.i.i153.3.1 = shl i32 %conv6.i.i152.3.1, 1 *)
shls discard_31 v_shl_i_i153_3_1 v_conv6_i_i152_3_1 1;
(*   %conv7.i.i154.3.1 = trunc i32 %shl.i.i153.3.1 to i8 *)
split tmp_v_shl_i_i153_3_1 v_conv7_i_i154_3_1 v_shl_i_i153_3_1 8;
vpc v_conv7_i_i154_3_1@uint8 v_conv7_i_i154_3_1@uint32;
(*   %conv.i.i142.4.1 = zext i8 %conv5.i.i151.3.1 to i32 *)
cast v_conv_i_i142_4_1@uint32 v_conv5_i_i151_3_1@uint8;
(*   %and.i.i143.4.1 = and i32 %conv.i.i142.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i143_4_1 v_conv_i_i142_4_1 (0x1)@uint32;
(*   %conv1.i.i144.4.1 = zext i8 %conv7.i.i154.3.1 to i32 *)
cast v_conv1_i_i144_4_1@uint32 v_conv7_i_i154_3_1@uint8;
(*   %mul.i.i145.4.1 = mul nsw i32 %and.i.i143.4.1, %conv1.i.i144.4.1 *)
mul v_mul_i_i145_4_1 v_and_i_i143_4_1 v_conv1_i_i144_4_1;
(*   %conv2.i.i146.4.1 = zext i8 %conv3.i.i148.3.1 to i32 *)
cast v_conv2_i_i146_4_1@uint32 v_conv3_i_i148_3_1@uint8;
(*   %xor.i.i147.4.1 = xor i32 %conv2.i.i146.4.1, %mul.i.i145.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i147_4_1 v_conv2_i_i146_4_1 v_mul_i_i145_4_1;
(*   %conv3.i.i148.4.1 = trunc i32 %xor.i.i147.4.1 to i8 *)
split tmp_v_xor_i_i147_4_1 v_conv3_i_i148_4_1 v_xor_i_i147_4_1 8;
vpc v_conv3_i_i148_4_1@uint8 v_conv3_i_i148_4_1@uint32;
(*   %conv4.i.i149.4.1 = zext i8 %conv5.i.i151.3.1 to i32 *)
cast v_conv4_i_i149_4_1@uint32 v_conv5_i_i151_3_1@uint8;
(*   %shr.i.i150.4.1 = ashr i32 %conv4.i.i149.4.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i150_4_1 tmp_to_be_used v_conv4_i_i149_4_1 1;
(*   %conv5.i.i151.4.1 = trunc i32 %shr.i.i150.4.1 to i8 *)
split tmp_v_shr_i_i150_4_1 v_conv5_i_i151_4_1 v_shr_i_i150_4_1 8;
vpc v_conv5_i_i151_4_1@uint8 v_conv5_i_i151_4_1@uint32;
(*   %conv6.i.i152.4.1 = zext i8 %conv7.i.i154.3.1 to i32 *)
cast v_conv6_i_i152_4_1@uint32 v_conv7_i_i154_3_1@uint8;
(*   %shl.i.i153.4.1 = shl i32 %conv6.i.i152.4.1, 1 *)
shls discard_32 v_shl_i_i153_4_1 v_conv6_i_i152_4_1 1;
(*   %conv7.i.i154.4.1 = trunc i32 %shl.i.i153.4.1 to i8 *)
split tmp_v_shl_i_i153_4_1 v_conv7_i_i154_4_1 v_shl_i_i153_4_1 8;
vpc v_conv7_i_i154_4_1@uint8 v_conv7_i_i154_4_1@uint32;
(*   %conv.i.i142.5.1 = zext i8 %conv5.i.i151.4.1 to i32 *)
cast v_conv_i_i142_5_1@uint32 v_conv5_i_i151_4_1@uint8;
(*   %and.i.i143.5.1 = and i32 %conv.i.i142.5.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i143_5_1 v_conv_i_i142_5_1 (0x1)@uint32;
(*   %conv1.i.i144.5.1 = zext i8 %conv7.i.i154.4.1 to i32 *)
cast v_conv1_i_i144_5_1@uint32 v_conv7_i_i154_4_1@uint8;
(*   %mul.i.i145.5.1 = mul nsw i32 %and.i.i143.5.1, %conv1.i.i144.5.1 *)
mul v_mul_i_i145_5_1 v_and_i_i143_5_1 v_conv1_i_i144_5_1;
(*   %conv2.i.i146.5.1 = zext i8 %conv3.i.i148.4.1 to i32 *)
cast v_conv2_i_i146_5_1@uint32 v_conv3_i_i148_4_1@uint8;
(*   %xor.i.i147.5.1 = xor i32 %conv2.i.i146.5.1, %mul.i.i145.5.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i147_5_1 v_conv2_i_i146_5_1 v_mul_i_i145_5_1;
(*   %conv3.i.i148.5.1 = trunc i32 %xor.i.i147.5.1 to i8 *)
split tmp_v_xor_i_i147_5_1 v_conv3_i_i148_5_1 v_xor_i_i147_5_1 8;
vpc v_conv3_i_i148_5_1@uint8 v_conv3_i_i148_5_1@uint32;
(*   %conv4.i.i149.5.1 = zext i8 %conv5.i.i151.4.1 to i32 *)
cast v_conv4_i_i149_5_1@uint32 v_conv5_i_i151_4_1@uint8;
(*   %shr.i.i150.5.1 = ashr i32 %conv4.i.i149.5.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i150_5_1 tmp_to_be_used v_conv4_i_i149_5_1 1;
(*   %conv5.i.i151.5.1 = trunc i32 %shr.i.i150.5.1 to i8 *)
split tmp_v_shr_i_i150_5_1 v_conv5_i_i151_5_1 v_shr_i_i150_5_1 8;
vpc v_conv5_i_i151_5_1@uint8 v_conv5_i_i151_5_1@uint32;
(*   %conv6.i.i152.5.1 = zext i8 %conv7.i.i154.4.1 to i32 *)
cast v_conv6_i_i152_5_1@uint32 v_conv7_i_i154_4_1@uint8;
(*   %shl.i.i153.5.1 = shl i32 %conv6.i.i152.5.1, 1 *)
shls discard_33 v_shl_i_i153_5_1 v_conv6_i_i152_5_1 1;
(*   %conv7.i.i154.5.1 = trunc i32 %shl.i.i153.5.1 to i8 *)
split tmp_v_shl_i_i153_5_1 v_conv7_i_i154_5_1 v_shl_i_i153_5_1 8;
vpc v_conv7_i_i154_5_1@uint8 v_conv7_i_i154_5_1@uint32;
(*   %conv.i.i142.6.1 = zext i8 %conv5.i.i151.5.1 to i32 *)
cast v_conv_i_i142_6_1@uint32 v_conv5_i_i151_5_1@uint8;
(*   %and.i.i143.6.1 = and i32 %conv.i.i142.6.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i143_6_1 v_conv_i_i142_6_1 (0x1)@uint32;
(*   %conv1.i.i144.6.1 = zext i8 %conv7.i.i154.5.1 to i32 *)
cast v_conv1_i_i144_6_1@uint32 v_conv7_i_i154_5_1@uint8;
(*   %mul.i.i145.6.1 = mul nsw i32 %and.i.i143.6.1, %conv1.i.i144.6.1 *)
mul v_mul_i_i145_6_1 v_and_i_i143_6_1 v_conv1_i_i144_6_1;
(*   %conv2.i.i146.6.1 = zext i8 %conv3.i.i148.5.1 to i32 *)
cast v_conv2_i_i146_6_1@uint32 v_conv3_i_i148_5_1@uint8;
(*   %xor.i.i147.6.1 = xor i32 %conv2.i.i146.6.1, %mul.i.i145.6.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i147_6_1 v_conv2_i_i146_6_1 v_mul_i_i145_6_1;
(*   %conv3.i.i148.6.1 = trunc i32 %xor.i.i147.6.1 to i8 *)
split tmp_v_xor_i_i147_6_1 v_conv3_i_i148_6_1 v_xor_i_i147_6_1 8;
vpc v_conv3_i_i148_6_1@uint8 v_conv3_i_i148_6_1@uint32;
(*   %conv4.i.i149.6.1 = zext i8 %conv5.i.i151.5.1 to i32 *)
cast v_conv4_i_i149_6_1@uint32 v_conv5_i_i151_5_1@uint8;
(*   %shr.i.i150.6.1 = ashr i32 %conv4.i.i149.6.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i150_6_1 tmp_to_be_used v_conv4_i_i149_6_1 1;
(*   %conv5.i.i151.6.1 = trunc i32 %shr.i.i150.6.1 to i8 *)
split tmp_v_shr_i_i150_6_1 v_conv5_i_i151_6_1 v_shr_i_i150_6_1 8;
vpc v_conv5_i_i151_6_1@uint8 v_conv5_i_i151_6_1@uint32;
(*   %conv6.i.i152.6.1 = zext i8 %conv7.i.i154.5.1 to i32 *)
cast v_conv6_i_i152_6_1@uint32 v_conv7_i_i154_5_1@uint8;
(*   %shl.i.i153.6.1 = shl i32 %conv6.i.i152.6.1, 1 *)
shls discard_34 v_shl_i_i153_6_1 v_conv6_i_i152_6_1 1;
(*   %conv7.i.i154.6.1 = trunc i32 %shl.i.i153.6.1 to i8 *)
split tmp_v_shl_i_i153_6_1 v_conv7_i_i154_6_1 v_shl_i_i153_6_1 8;
vpc v_conv7_i_i154_6_1@uint8 v_conv7_i_i154_6_1@uint32;
(*   %conv.i.i142.7.1 = zext i8 %conv5.i.i151.6.1 to i32 *)
cast v_conv_i_i142_7_1@uint32 v_conv5_i_i151_6_1@uint8;
(*   %and.i.i143.7.1 = and i32 %conv.i.i142.7.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i143_7_1 v_conv_i_i142_7_1 (0x1)@uint32;
(*   %conv1.i.i144.7.1 = zext i8 %conv7.i.i154.6.1 to i32 *)
cast v_conv1_i_i144_7_1@uint32 v_conv7_i_i154_6_1@uint8;
(*   %mul.i.i145.7.1 = mul nsw i32 %and.i.i143.7.1, %conv1.i.i144.7.1 *)
mul v_mul_i_i145_7_1 v_and_i_i143_7_1 v_conv1_i_i144_7_1;
(*   %conv2.i.i146.7.1 = zext i8 %conv3.i.i148.6.1 to i32 *)
cast v_conv2_i_i146_7_1@uint32 v_conv3_i_i148_6_1@uint8;
(*   %xor.i.i147.7.1 = xor i32 %conv2.i.i146.7.1, %mul.i.i145.7.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i147_7_1 v_conv2_i_i146_7_1 v_mul_i_i145_7_1;
(*   %conv3.i.i148.7.1 = trunc i32 %xor.i.i147.7.1 to i8 *)
split tmp_v_xor_i_i147_7_1 v_conv3_i_i148_7_1 v_xor_i_i147_7_1 8;
vpc v_conv3_i_i148_7_1@uint8 v_conv3_i_i148_7_1@uint32;
(*   %arrayidx6.i158.1 = getelementptr inbounds i8, i8* %add.ptr3, i64 1 *)
(*   store i8 %conv3.i.i148.7.1, i8* %arrayidx6.i158.1, align 1 *)
mov cc_7 v_conv3_i_i148_7_1;
(*   %arrayidx.i134.2 = getelementptr inbounds i8, i8* %a, i64 2 *)
(*   %10 = load i8, i8* %arrayidx.i134.2, align 1 *)
mov v10 a_2;
(*   %11 = load i8, i8* %b, align 1 *)
mov v11 b_0;
(*   %conv.i.i142.2152 = zext i8 %11 to i32 *)
cast v_conv_i_i142_2152@uint32 v11@uint8;
(*   %and.i.i143.2153 = and i32 %conv.i.i142.2152, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i143_2153 v_conv_i_i142_2152 (0x1)@uint32;
(*   %conv1.i.i144.2154 = zext i8 %10 to i32 *)
cast v_conv1_i_i144_2154@uint32 v10@uint8;
(*   %mul.i.i145.2155 = mul nsw i32 %and.i.i143.2153, %conv1.i.i144.2154 *)
mul v_mul_i_i145_2155 v_and_i_i143_2153 v_conv1_i_i144_2154;
(*   %conv3.i.i148.2156 = trunc i32 %mul.i.i145.2155 to i8 *)
split tmp_v_mul_i_i145_2155 v_conv3_i_i148_2156 v_mul_i_i145_2155 8;
vpc v_conv3_i_i148_2156@uint8 v_conv3_i_i148_2156@uint32;
(*   %conv4.i.i149.2157 = zext i8 %11 to i32 *)
cast v_conv4_i_i149_2157@uint32 v11@uint8;
(*   %shr.i.i150.2158 = ashr i32 %conv4.i.i149.2157, 1 *)
(* You may need to modify here *)
split v_shr_i_i150_2158 tmp_to_be_used v_conv4_i_i149_2157 1;
(*   %conv5.i.i151.2159 = trunc i32 %shr.i.i150.2158 to i8 *)
split tmp_v_shr_i_i150_2158 v_conv5_i_i151_2159 v_shr_i_i150_2158 8;
vpc v_conv5_i_i151_2159@uint8 v_conv5_i_i151_2159@uint32;
(*   %conv6.i.i152.2160 = zext i8 %10 to i32 *)
cast v_conv6_i_i152_2160@uint32 v10@uint8;
(*   %shl.i.i153.2161 = shl i32 %conv6.i.i152.2160, 1 *)
shls discard_35 v_shl_i_i153_2161 v_conv6_i_i152_2160 1;
(*   %conv7.i.i154.2162 = trunc i32 %shl.i.i153.2161 to i8 *)
split tmp_v_shl_i_i153_2161 v_conv7_i_i154_2162 v_shl_i_i153_2161 8;
vpc v_conv7_i_i154_2162@uint8 v_conv7_i_i154_2162@uint32;
(*   %conv.i.i142.1.2 = zext i8 %conv5.i.i151.2159 to i32 *)
cast v_conv_i_i142_1_2@uint32 v_conv5_i_i151_2159@uint8;
(*   %and.i.i143.1.2 = and i32 %conv.i.i142.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i143_1_2 v_conv_i_i142_1_2 (0x1)@uint32;
(*   %conv1.i.i144.1.2 = zext i8 %conv7.i.i154.2162 to i32 *)
cast v_conv1_i_i144_1_2@uint32 v_conv7_i_i154_2162@uint8;
(*   %mul.i.i145.1.2 = mul nsw i32 %and.i.i143.1.2, %conv1.i.i144.1.2 *)
mul v_mul_i_i145_1_2 v_and_i_i143_1_2 v_conv1_i_i144_1_2;
(*   %conv2.i.i146.1.2 = zext i8 %conv3.i.i148.2156 to i32 *)
cast v_conv2_i_i146_1_2@uint32 v_conv3_i_i148_2156@uint8;
(*   %xor.i.i147.1.2 = xor i32 %conv2.i.i146.1.2, %mul.i.i145.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i147_1_2 v_conv2_i_i146_1_2 v_mul_i_i145_1_2;
(*   %conv3.i.i148.1.2 = trunc i32 %xor.i.i147.1.2 to i8 *)
split tmp_v_xor_i_i147_1_2 v_conv3_i_i148_1_2 v_xor_i_i147_1_2 8;
vpc v_conv3_i_i148_1_2@uint8 v_conv3_i_i148_1_2@uint32;
(*   %conv4.i.i149.1.2 = zext i8 %conv5.i.i151.2159 to i32 *)
cast v_conv4_i_i149_1_2@uint32 v_conv5_i_i151_2159@uint8;
(*   %shr.i.i150.1.2 = ashr i32 %conv4.i.i149.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i150_1_2 tmp_to_be_used v_conv4_i_i149_1_2 1;
(*   %conv5.i.i151.1.2 = trunc i32 %shr.i.i150.1.2 to i8 *)
split tmp_v_shr_i_i150_1_2 v_conv5_i_i151_1_2 v_shr_i_i150_1_2 8;
vpc v_conv5_i_i151_1_2@uint8 v_conv5_i_i151_1_2@uint32;
(*   %conv6.i.i152.1.2 = zext i8 %conv7.i.i154.2162 to i32 *)
cast v_conv6_i_i152_1_2@uint32 v_conv7_i_i154_2162@uint8;
(*   %shl.i.i153.1.2 = shl i32 %conv6.i.i152.1.2, 1 *)
shls discard_36 v_shl_i_i153_1_2 v_conv6_i_i152_1_2 1;
(*   %conv7.i.i154.1.2 = trunc i32 %shl.i.i153.1.2 to i8 *)
split tmp_v_shl_i_i153_1_2 v_conv7_i_i154_1_2 v_shl_i_i153_1_2 8;
vpc v_conv7_i_i154_1_2@uint8 v_conv7_i_i154_1_2@uint32;
(*   %conv.i.i142.2.2 = zext i8 %conv5.i.i151.1.2 to i32 *)
cast v_conv_i_i142_2_2@uint32 v_conv5_i_i151_1_2@uint8;
(*   %and.i.i143.2.2 = and i32 %conv.i.i142.2.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i143_2_2 v_conv_i_i142_2_2 (0x1)@uint32;
(*   %conv1.i.i144.2.2 = zext i8 %conv7.i.i154.1.2 to i32 *)
cast v_conv1_i_i144_2_2@uint32 v_conv7_i_i154_1_2@uint8;
(*   %mul.i.i145.2.2 = mul nsw i32 %and.i.i143.2.2, %conv1.i.i144.2.2 *)
mul v_mul_i_i145_2_2 v_and_i_i143_2_2 v_conv1_i_i144_2_2;
(*   %conv2.i.i146.2.2 = zext i8 %conv3.i.i148.1.2 to i32 *)
cast v_conv2_i_i146_2_2@uint32 v_conv3_i_i148_1_2@uint8;
(*   %xor.i.i147.2.2 = xor i32 %conv2.i.i146.2.2, %mul.i.i145.2.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i147_2_2 v_conv2_i_i146_2_2 v_mul_i_i145_2_2;
(*   %conv3.i.i148.2.2 = trunc i32 %xor.i.i147.2.2 to i8 *)
split tmp_v_xor_i_i147_2_2 v_conv3_i_i148_2_2 v_xor_i_i147_2_2 8;
vpc v_conv3_i_i148_2_2@uint8 v_conv3_i_i148_2_2@uint32;
(*   %conv4.i.i149.2.2 = zext i8 %conv5.i.i151.1.2 to i32 *)
cast v_conv4_i_i149_2_2@uint32 v_conv5_i_i151_1_2@uint8;
(*   %shr.i.i150.2.2 = ashr i32 %conv4.i.i149.2.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i150_2_2 tmp_to_be_used v_conv4_i_i149_2_2 1;
(*   %conv5.i.i151.2.2 = trunc i32 %shr.i.i150.2.2 to i8 *)
split tmp_v_shr_i_i150_2_2 v_conv5_i_i151_2_2 v_shr_i_i150_2_2 8;
vpc v_conv5_i_i151_2_2@uint8 v_conv5_i_i151_2_2@uint32;
(*   %conv6.i.i152.2.2 = zext i8 %conv7.i.i154.1.2 to i32 *)
cast v_conv6_i_i152_2_2@uint32 v_conv7_i_i154_1_2@uint8;
(*   %shl.i.i153.2.2 = shl i32 %conv6.i.i152.2.2, 1 *)
shls discard_37 v_shl_i_i153_2_2 v_conv6_i_i152_2_2 1;
(*   %conv7.i.i154.2.2 = trunc i32 %shl.i.i153.2.2 to i8 *)
split tmp_v_shl_i_i153_2_2 v_conv7_i_i154_2_2 v_shl_i_i153_2_2 8;
vpc v_conv7_i_i154_2_2@uint8 v_conv7_i_i154_2_2@uint32;
(*   %conv.i.i142.3.2 = zext i8 %conv5.i.i151.2.2 to i32 *)
cast v_conv_i_i142_3_2@uint32 v_conv5_i_i151_2_2@uint8;
(*   %and.i.i143.3.2 = and i32 %conv.i.i142.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i143_3_2 v_conv_i_i142_3_2 (0x1)@uint32;
(*   %conv1.i.i144.3.2 = zext i8 %conv7.i.i154.2.2 to i32 *)
cast v_conv1_i_i144_3_2@uint32 v_conv7_i_i154_2_2@uint8;
(*   %mul.i.i145.3.2 = mul nsw i32 %and.i.i143.3.2, %conv1.i.i144.3.2 *)
mul v_mul_i_i145_3_2 v_and_i_i143_3_2 v_conv1_i_i144_3_2;
(*   %conv2.i.i146.3.2 = zext i8 %conv3.i.i148.2.2 to i32 *)
cast v_conv2_i_i146_3_2@uint32 v_conv3_i_i148_2_2@uint8;
(*   %xor.i.i147.3.2 = xor i32 %conv2.i.i146.3.2, %mul.i.i145.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i147_3_2 v_conv2_i_i146_3_2 v_mul_i_i145_3_2;
(*   %conv3.i.i148.3.2 = trunc i32 %xor.i.i147.3.2 to i8 *)
split tmp_v_xor_i_i147_3_2 v_conv3_i_i148_3_2 v_xor_i_i147_3_2 8;
vpc v_conv3_i_i148_3_2@uint8 v_conv3_i_i148_3_2@uint32;
(*   %conv4.i.i149.3.2 = zext i8 %conv5.i.i151.2.2 to i32 *)
cast v_conv4_i_i149_3_2@uint32 v_conv5_i_i151_2_2@uint8;
(*   %shr.i.i150.3.2 = ashr i32 %conv4.i.i149.3.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i150_3_2 tmp_to_be_used v_conv4_i_i149_3_2 1;
(*   %conv5.i.i151.3.2 = trunc i32 %shr.i.i150.3.2 to i8 *)
split tmp_v_shr_i_i150_3_2 v_conv5_i_i151_3_2 v_shr_i_i150_3_2 8;
vpc v_conv5_i_i151_3_2@uint8 v_conv5_i_i151_3_2@uint32;
(*   %conv6.i.i152.3.2 = zext i8 %conv7.i.i154.2.2 to i32 *)
cast v_conv6_i_i152_3_2@uint32 v_conv7_i_i154_2_2@uint8;
(*   %shl.i.i153.3.2 = shl i32 %conv6.i.i152.3.2, 1 *)
shls discard_38 v_shl_i_i153_3_2 v_conv6_i_i152_3_2 1;
(*   %conv7.i.i154.3.2 = trunc i32 %shl.i.i153.3.2 to i8 *)
split tmp_v_shl_i_i153_3_2 v_conv7_i_i154_3_2 v_shl_i_i153_3_2 8;
vpc v_conv7_i_i154_3_2@uint8 v_conv7_i_i154_3_2@uint32;
(*   %conv.i.i142.4.2 = zext i8 %conv5.i.i151.3.2 to i32 *)
cast v_conv_i_i142_4_2@uint32 v_conv5_i_i151_3_2@uint8;
(*   %and.i.i143.4.2 = and i32 %conv.i.i142.4.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i143_4_2 v_conv_i_i142_4_2 (0x1)@uint32;
(*   %conv1.i.i144.4.2 = zext i8 %conv7.i.i154.3.2 to i32 *)
cast v_conv1_i_i144_4_2@uint32 v_conv7_i_i154_3_2@uint8;
(*   %mul.i.i145.4.2 = mul nsw i32 %and.i.i143.4.2, %conv1.i.i144.4.2 *)
mul v_mul_i_i145_4_2 v_and_i_i143_4_2 v_conv1_i_i144_4_2;
(*   %conv2.i.i146.4.2 = zext i8 %conv3.i.i148.3.2 to i32 *)
cast v_conv2_i_i146_4_2@uint32 v_conv3_i_i148_3_2@uint8;
(*   %xor.i.i147.4.2 = xor i32 %conv2.i.i146.4.2, %mul.i.i145.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i147_4_2 v_conv2_i_i146_4_2 v_mul_i_i145_4_2;
(*   %conv3.i.i148.4.2 = trunc i32 %xor.i.i147.4.2 to i8 *)
split tmp_v_xor_i_i147_4_2 v_conv3_i_i148_4_2 v_xor_i_i147_4_2 8;
vpc v_conv3_i_i148_4_2@uint8 v_conv3_i_i148_4_2@uint32;
(*   %conv4.i.i149.4.2 = zext i8 %conv5.i.i151.3.2 to i32 *)
cast v_conv4_i_i149_4_2@uint32 v_conv5_i_i151_3_2@uint8;
(*   %shr.i.i150.4.2 = ashr i32 %conv4.i.i149.4.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i150_4_2 tmp_to_be_used v_conv4_i_i149_4_2 1;
(*   %conv5.i.i151.4.2 = trunc i32 %shr.i.i150.4.2 to i8 *)
split tmp_v_shr_i_i150_4_2 v_conv5_i_i151_4_2 v_shr_i_i150_4_2 8;
vpc v_conv5_i_i151_4_2@uint8 v_conv5_i_i151_4_2@uint32;
(*   %conv6.i.i152.4.2 = zext i8 %conv7.i.i154.3.2 to i32 *)
cast v_conv6_i_i152_4_2@uint32 v_conv7_i_i154_3_2@uint8;
(*   %shl.i.i153.4.2 = shl i32 %conv6.i.i152.4.2, 1 *)
shls discard_39 v_shl_i_i153_4_2 v_conv6_i_i152_4_2 1;
(*   %conv7.i.i154.4.2 = trunc i32 %shl.i.i153.4.2 to i8 *)
split tmp_v_shl_i_i153_4_2 v_conv7_i_i154_4_2 v_shl_i_i153_4_2 8;
vpc v_conv7_i_i154_4_2@uint8 v_conv7_i_i154_4_2@uint32;
(*   %conv.i.i142.5.2 = zext i8 %conv5.i.i151.4.2 to i32 *)
cast v_conv_i_i142_5_2@uint32 v_conv5_i_i151_4_2@uint8;
(*   %and.i.i143.5.2 = and i32 %conv.i.i142.5.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i143_5_2 v_conv_i_i142_5_2 (0x1)@uint32;
(*   %conv1.i.i144.5.2 = zext i8 %conv7.i.i154.4.2 to i32 *)
cast v_conv1_i_i144_5_2@uint32 v_conv7_i_i154_4_2@uint8;
(*   %mul.i.i145.5.2 = mul nsw i32 %and.i.i143.5.2, %conv1.i.i144.5.2 *)
mul v_mul_i_i145_5_2 v_and_i_i143_5_2 v_conv1_i_i144_5_2;
(*   %conv2.i.i146.5.2 = zext i8 %conv3.i.i148.4.2 to i32 *)
cast v_conv2_i_i146_5_2@uint32 v_conv3_i_i148_4_2@uint8;
(*   %xor.i.i147.5.2 = xor i32 %conv2.i.i146.5.2, %mul.i.i145.5.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i147_5_2 v_conv2_i_i146_5_2 v_mul_i_i145_5_2;
(*   %conv3.i.i148.5.2 = trunc i32 %xor.i.i147.5.2 to i8 *)
split tmp_v_xor_i_i147_5_2 v_conv3_i_i148_5_2 v_xor_i_i147_5_2 8;
vpc v_conv3_i_i148_5_2@uint8 v_conv3_i_i148_5_2@uint32;
(*   %conv4.i.i149.5.2 = zext i8 %conv5.i.i151.4.2 to i32 *)
cast v_conv4_i_i149_5_2@uint32 v_conv5_i_i151_4_2@uint8;
(*   %shr.i.i150.5.2 = ashr i32 %conv4.i.i149.5.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i150_5_2 tmp_to_be_used v_conv4_i_i149_5_2 1;
(*   %conv5.i.i151.5.2 = trunc i32 %shr.i.i150.5.2 to i8 *)
split tmp_v_shr_i_i150_5_2 v_conv5_i_i151_5_2 v_shr_i_i150_5_2 8;
vpc v_conv5_i_i151_5_2@uint8 v_conv5_i_i151_5_2@uint32;
(*   %conv6.i.i152.5.2 = zext i8 %conv7.i.i154.4.2 to i32 *)
cast v_conv6_i_i152_5_2@uint32 v_conv7_i_i154_4_2@uint8;
(*   %shl.i.i153.5.2 = shl i32 %conv6.i.i152.5.2, 1 *)
shls discard_40 v_shl_i_i153_5_2 v_conv6_i_i152_5_2 1;
(*   %conv7.i.i154.5.2 = trunc i32 %shl.i.i153.5.2 to i8 *)
split tmp_v_shl_i_i153_5_2 v_conv7_i_i154_5_2 v_shl_i_i153_5_2 8;
vpc v_conv7_i_i154_5_2@uint8 v_conv7_i_i154_5_2@uint32;
(*   %conv.i.i142.6.2 = zext i8 %conv5.i.i151.5.2 to i32 *)
cast v_conv_i_i142_6_2@uint32 v_conv5_i_i151_5_2@uint8;
(*   %and.i.i143.6.2 = and i32 %conv.i.i142.6.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i143_6_2 v_conv_i_i142_6_2 (0x1)@uint32;
(*   %conv1.i.i144.6.2 = zext i8 %conv7.i.i154.5.2 to i32 *)
cast v_conv1_i_i144_6_2@uint32 v_conv7_i_i154_5_2@uint8;
(*   %mul.i.i145.6.2 = mul nsw i32 %and.i.i143.6.2, %conv1.i.i144.6.2 *)
mul v_mul_i_i145_6_2 v_and_i_i143_6_2 v_conv1_i_i144_6_2;
(*   %conv2.i.i146.6.2 = zext i8 %conv3.i.i148.5.2 to i32 *)
cast v_conv2_i_i146_6_2@uint32 v_conv3_i_i148_5_2@uint8;
(*   %xor.i.i147.6.2 = xor i32 %conv2.i.i146.6.2, %mul.i.i145.6.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i147_6_2 v_conv2_i_i146_6_2 v_mul_i_i145_6_2;
(*   %conv3.i.i148.6.2 = trunc i32 %xor.i.i147.6.2 to i8 *)
split tmp_v_xor_i_i147_6_2 v_conv3_i_i148_6_2 v_xor_i_i147_6_2 8;
vpc v_conv3_i_i148_6_2@uint8 v_conv3_i_i148_6_2@uint32;
(*   %conv4.i.i149.6.2 = zext i8 %conv5.i.i151.5.2 to i32 *)
cast v_conv4_i_i149_6_2@uint32 v_conv5_i_i151_5_2@uint8;
(*   %shr.i.i150.6.2 = ashr i32 %conv4.i.i149.6.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i150_6_2 tmp_to_be_used v_conv4_i_i149_6_2 1;
(*   %conv5.i.i151.6.2 = trunc i32 %shr.i.i150.6.2 to i8 *)
split tmp_v_shr_i_i150_6_2 v_conv5_i_i151_6_2 v_shr_i_i150_6_2 8;
vpc v_conv5_i_i151_6_2@uint8 v_conv5_i_i151_6_2@uint32;
(*   %conv6.i.i152.6.2 = zext i8 %conv7.i.i154.5.2 to i32 *)
cast v_conv6_i_i152_6_2@uint32 v_conv7_i_i154_5_2@uint8;
(*   %shl.i.i153.6.2 = shl i32 %conv6.i.i152.6.2, 1 *)
shls discard_41 v_shl_i_i153_6_2 v_conv6_i_i152_6_2 1;
(*   %conv7.i.i154.6.2 = trunc i32 %shl.i.i153.6.2 to i8 *)
split tmp_v_shl_i_i153_6_2 v_conv7_i_i154_6_2 v_shl_i_i153_6_2 8;
vpc v_conv7_i_i154_6_2@uint8 v_conv7_i_i154_6_2@uint32;
(*   %conv.i.i142.7.2 = zext i8 %conv5.i.i151.6.2 to i32 *)
cast v_conv_i_i142_7_2@uint32 v_conv5_i_i151_6_2@uint8;
(*   %and.i.i143.7.2 = and i32 %conv.i.i142.7.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i143_7_2 v_conv_i_i142_7_2 (0x1)@uint32;
(*   %conv1.i.i144.7.2 = zext i8 %conv7.i.i154.6.2 to i32 *)
cast v_conv1_i_i144_7_2@uint32 v_conv7_i_i154_6_2@uint8;
(*   %mul.i.i145.7.2 = mul nsw i32 %and.i.i143.7.2, %conv1.i.i144.7.2 *)
mul v_mul_i_i145_7_2 v_and_i_i143_7_2 v_conv1_i_i144_7_2;
(*   %conv2.i.i146.7.2 = zext i8 %conv3.i.i148.6.2 to i32 *)
cast v_conv2_i_i146_7_2@uint32 v_conv3_i_i148_6_2@uint8;
(*   %xor.i.i147.7.2 = xor i32 %conv2.i.i146.7.2, %mul.i.i145.7.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i147_7_2 v_conv2_i_i146_7_2 v_mul_i_i145_7_2;
(*   %conv3.i.i148.7.2 = trunc i32 %xor.i.i147.7.2 to i8 *)
split tmp_v_xor_i_i147_7_2 v_conv3_i_i148_7_2 v_xor_i_i147_7_2 8;
vpc v_conv3_i_i148_7_2@uint8 v_conv3_i_i148_7_2@uint32;
(*   %arrayidx6.i158.2 = getelementptr inbounds i8, i8* %add.ptr3, i64 2 *)
(*   store i8 %conv3.i.i148.7.2, i8* %arrayidx6.i158.2, align 1 *)
mov cc_8 v_conv3_i_i148_7_2;
(*   %add.ptr8 = getelementptr inbounds i8, i8* %arraydecay4, i64 9 *)
(*   %arrayidx.i194 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %12 = load i8, i8* %arrayidx.i194, align 1 *)
mov v12 a_1;
(*   %13 = load i8, i8* %b, align 1 *)
mov v13 b_0;
(*   %conv.i.i202 = zext i8 %13 to i32 *)
cast v_conv_i_i202@uint32 v13@uint8;
(*   %and.i.i203 = and i32 %conv.i.i202, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i203 v_conv_i_i202 (0x1)@uint32;
(*   %conv1.i.i204 = zext i8 %12 to i32 *)
cast v_conv1_i_i204@uint32 v12@uint8;
(*   %mul.i.i205 = mul nsw i32 %and.i.i203, %conv1.i.i204 *)
mul v_mul_i_i205 v_and_i_i203 v_conv1_i_i204;
(*   %conv3.i.i208 = trunc i32 %mul.i.i205 to i8 *)
split tmp_v_mul_i_i205 v_conv3_i_i208 v_mul_i_i205 8;
vpc v_conv3_i_i208@uint8 v_conv3_i_i208@uint32;
(*   %conv4.i.i209 = zext i8 %13 to i32 *)
cast v_conv4_i_i209@uint32 v13@uint8;
(*   %shr.i.i210 = ashr i32 %conv4.i.i209, 1 *)
(* You may need to modify here *)
split v_shr_i_i210 tmp_to_be_used v_conv4_i_i209 1;
(*   %conv5.i.i211 = trunc i32 %shr.i.i210 to i8 *)
split tmp_v_shr_i_i210 v_conv5_i_i211 v_shr_i_i210 8;
vpc v_conv5_i_i211@uint8 v_conv5_i_i211@uint32;
(*   %conv6.i.i212 = zext i8 %12 to i32 *)
cast v_conv6_i_i212@uint32 v12@uint8;
(*   %shl.i.i213 = shl i32 %conv6.i.i212, 1 *)
shls discard_42 v_shl_i_i213 v_conv6_i_i212 1;
(*   %conv7.i.i214 = trunc i32 %shl.i.i213 to i8 *)
split tmp_v_shl_i_i213 v_conv7_i_i214 v_shl_i_i213 8;
vpc v_conv7_i_i214@uint8 v_conv7_i_i214@uint32;
(*   %conv.i.i202.1 = zext i8 %conv5.i.i211 to i32 *)
cast v_conv_i_i202_1@uint32 v_conv5_i_i211@uint8;
(*   %and.i.i203.1 = and i32 %conv.i.i202.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i203_1 v_conv_i_i202_1 (0x1)@uint32;
(*   %conv1.i.i204.1 = zext i8 %conv7.i.i214 to i32 *)
cast v_conv1_i_i204_1@uint32 v_conv7_i_i214@uint8;
(*   %mul.i.i205.1 = mul nsw i32 %and.i.i203.1, %conv1.i.i204.1 *)
mul v_mul_i_i205_1 v_and_i_i203_1 v_conv1_i_i204_1;
(*   %conv2.i.i206.1 = zext i8 %conv3.i.i208 to i32 *)
cast v_conv2_i_i206_1@uint32 v_conv3_i_i208@uint8;
(*   %xor.i.i207.1 = xor i32 %conv2.i.i206.1, %mul.i.i205.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i207_1 v_conv2_i_i206_1 v_mul_i_i205_1;
(*   %conv3.i.i208.1 = trunc i32 %xor.i.i207.1 to i8 *)
split tmp_v_xor_i_i207_1 v_conv3_i_i208_1 v_xor_i_i207_1 8;
vpc v_conv3_i_i208_1@uint8 v_conv3_i_i208_1@uint32;
(*   %conv4.i.i209.1 = zext i8 %conv5.i.i211 to i32 *)
cast v_conv4_i_i209_1@uint32 v_conv5_i_i211@uint8;
(*   %shr.i.i210.1 = ashr i32 %conv4.i.i209.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i210_1 tmp_to_be_used v_conv4_i_i209_1 1;
(*   %conv5.i.i211.1 = trunc i32 %shr.i.i210.1 to i8 *)
split tmp_v_shr_i_i210_1 v_conv5_i_i211_1 v_shr_i_i210_1 8;
vpc v_conv5_i_i211_1@uint8 v_conv5_i_i211_1@uint32;
(*   %conv6.i.i212.1 = zext i8 %conv7.i.i214 to i32 *)
cast v_conv6_i_i212_1@uint32 v_conv7_i_i214@uint8;
(*   %shl.i.i213.1 = shl i32 %conv6.i.i212.1, 1 *)
shls discard_43 v_shl_i_i213_1 v_conv6_i_i212_1 1;
(*   %conv7.i.i214.1 = trunc i32 %shl.i.i213.1 to i8 *)
split tmp_v_shl_i_i213_1 v_conv7_i_i214_1 v_shl_i_i213_1 8;
vpc v_conv7_i_i214_1@uint8 v_conv7_i_i214_1@uint32;
(*   %conv.i.i202.2 = zext i8 %conv5.i.i211.1 to i32 *)
cast v_conv_i_i202_2@uint32 v_conv5_i_i211_1@uint8;
(*   %and.i.i203.2 = and i32 %conv.i.i202.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i203_2 v_conv_i_i202_2 (0x1)@uint32;
(*   %conv1.i.i204.2 = zext i8 %conv7.i.i214.1 to i32 *)
cast v_conv1_i_i204_2@uint32 v_conv7_i_i214_1@uint8;
(*   %mul.i.i205.2 = mul nsw i32 %and.i.i203.2, %conv1.i.i204.2 *)
mul v_mul_i_i205_2 v_and_i_i203_2 v_conv1_i_i204_2;
(*   %conv2.i.i206.2 = zext i8 %conv3.i.i208.1 to i32 *)
cast v_conv2_i_i206_2@uint32 v_conv3_i_i208_1@uint8;
(*   %xor.i.i207.2 = xor i32 %conv2.i.i206.2, %mul.i.i205.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i207_2 v_conv2_i_i206_2 v_mul_i_i205_2;
(*   %conv3.i.i208.2 = trunc i32 %xor.i.i207.2 to i8 *)
split tmp_v_xor_i_i207_2 v_conv3_i_i208_2 v_xor_i_i207_2 8;
vpc v_conv3_i_i208_2@uint8 v_conv3_i_i208_2@uint32;
(*   %conv4.i.i209.2 = zext i8 %conv5.i.i211.1 to i32 *)
cast v_conv4_i_i209_2@uint32 v_conv5_i_i211_1@uint8;
(*   %shr.i.i210.2 = ashr i32 %conv4.i.i209.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i210_2 tmp_to_be_used v_conv4_i_i209_2 1;
(*   %conv5.i.i211.2 = trunc i32 %shr.i.i210.2 to i8 *)
split tmp_v_shr_i_i210_2 v_conv5_i_i211_2 v_shr_i_i210_2 8;
vpc v_conv5_i_i211_2@uint8 v_conv5_i_i211_2@uint32;
(*   %conv6.i.i212.2 = zext i8 %conv7.i.i214.1 to i32 *)
cast v_conv6_i_i212_2@uint32 v_conv7_i_i214_1@uint8;
(*   %shl.i.i213.2 = shl i32 %conv6.i.i212.2, 1 *)
shls discard_44 v_shl_i_i213_2 v_conv6_i_i212_2 1;
(*   %conv7.i.i214.2 = trunc i32 %shl.i.i213.2 to i8 *)
split tmp_v_shl_i_i213_2 v_conv7_i_i214_2 v_shl_i_i213_2 8;
vpc v_conv7_i_i214_2@uint8 v_conv7_i_i214_2@uint32;
(*   %conv.i.i202.3 = zext i8 %conv5.i.i211.2 to i32 *)
cast v_conv_i_i202_3@uint32 v_conv5_i_i211_2@uint8;
(*   %and.i.i203.3 = and i32 %conv.i.i202.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i203_3 v_conv_i_i202_3 (0x1)@uint32;
(*   %conv1.i.i204.3 = zext i8 %conv7.i.i214.2 to i32 *)
cast v_conv1_i_i204_3@uint32 v_conv7_i_i214_2@uint8;
(*   %mul.i.i205.3 = mul nsw i32 %and.i.i203.3, %conv1.i.i204.3 *)
mul v_mul_i_i205_3 v_and_i_i203_3 v_conv1_i_i204_3;
(*   %conv2.i.i206.3 = zext i8 %conv3.i.i208.2 to i32 *)
cast v_conv2_i_i206_3@uint32 v_conv3_i_i208_2@uint8;
(*   %xor.i.i207.3 = xor i32 %conv2.i.i206.3, %mul.i.i205.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i207_3 v_conv2_i_i206_3 v_mul_i_i205_3;
(*   %conv3.i.i208.3 = trunc i32 %xor.i.i207.3 to i8 *)
split tmp_v_xor_i_i207_3 v_conv3_i_i208_3 v_xor_i_i207_3 8;
vpc v_conv3_i_i208_3@uint8 v_conv3_i_i208_3@uint32;
(*   %conv4.i.i209.3 = zext i8 %conv5.i.i211.2 to i32 *)
cast v_conv4_i_i209_3@uint32 v_conv5_i_i211_2@uint8;
(*   %shr.i.i210.3 = ashr i32 %conv4.i.i209.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i210_3 tmp_to_be_used v_conv4_i_i209_3 1;
(*   %conv5.i.i211.3 = trunc i32 %shr.i.i210.3 to i8 *)
split tmp_v_shr_i_i210_3 v_conv5_i_i211_3 v_shr_i_i210_3 8;
vpc v_conv5_i_i211_3@uint8 v_conv5_i_i211_3@uint32;
(*   %conv6.i.i212.3 = zext i8 %conv7.i.i214.2 to i32 *)
cast v_conv6_i_i212_3@uint32 v_conv7_i_i214_2@uint8;
(*   %shl.i.i213.3 = shl i32 %conv6.i.i212.3, 1 *)
shls discard_45 v_shl_i_i213_3 v_conv6_i_i212_3 1;
(*   %conv7.i.i214.3 = trunc i32 %shl.i.i213.3 to i8 *)
split tmp_v_shl_i_i213_3 v_conv7_i_i214_3 v_shl_i_i213_3 8;
vpc v_conv7_i_i214_3@uint8 v_conv7_i_i214_3@uint32;
(*   %conv.i.i202.4 = zext i8 %conv5.i.i211.3 to i32 *)
cast v_conv_i_i202_4@uint32 v_conv5_i_i211_3@uint8;
(*   %and.i.i203.4 = and i32 %conv.i.i202.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i203_4 v_conv_i_i202_4 (0x1)@uint32;
(*   %conv1.i.i204.4 = zext i8 %conv7.i.i214.3 to i32 *)
cast v_conv1_i_i204_4@uint32 v_conv7_i_i214_3@uint8;
(*   %mul.i.i205.4 = mul nsw i32 %and.i.i203.4, %conv1.i.i204.4 *)
mul v_mul_i_i205_4 v_and_i_i203_4 v_conv1_i_i204_4;
(*   %conv2.i.i206.4 = zext i8 %conv3.i.i208.3 to i32 *)
cast v_conv2_i_i206_4@uint32 v_conv3_i_i208_3@uint8;
(*   %xor.i.i207.4 = xor i32 %conv2.i.i206.4, %mul.i.i205.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i207_4 v_conv2_i_i206_4 v_mul_i_i205_4;
(*   %conv3.i.i208.4 = trunc i32 %xor.i.i207.4 to i8 *)
split tmp_v_xor_i_i207_4 v_conv3_i_i208_4 v_xor_i_i207_4 8;
vpc v_conv3_i_i208_4@uint8 v_conv3_i_i208_4@uint32;
(*   %conv4.i.i209.4 = zext i8 %conv5.i.i211.3 to i32 *)
cast v_conv4_i_i209_4@uint32 v_conv5_i_i211_3@uint8;
(*   %shr.i.i210.4 = ashr i32 %conv4.i.i209.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i210_4 tmp_to_be_used v_conv4_i_i209_4 1;
(*   %conv5.i.i211.4 = trunc i32 %shr.i.i210.4 to i8 *)
split tmp_v_shr_i_i210_4 v_conv5_i_i211_4 v_shr_i_i210_4 8;
vpc v_conv5_i_i211_4@uint8 v_conv5_i_i211_4@uint32;
(*   %conv6.i.i212.4 = zext i8 %conv7.i.i214.3 to i32 *)
cast v_conv6_i_i212_4@uint32 v_conv7_i_i214_3@uint8;
(*   %shl.i.i213.4 = shl i32 %conv6.i.i212.4, 1 *)
shls discard_46 v_shl_i_i213_4 v_conv6_i_i212_4 1;
(*   %conv7.i.i214.4 = trunc i32 %shl.i.i213.4 to i8 *)
split tmp_v_shl_i_i213_4 v_conv7_i_i214_4 v_shl_i_i213_4 8;
vpc v_conv7_i_i214_4@uint8 v_conv7_i_i214_4@uint32;
(*   %conv.i.i202.5 = zext i8 %conv5.i.i211.4 to i32 *)
cast v_conv_i_i202_5@uint32 v_conv5_i_i211_4@uint8;
(*   %and.i.i203.5 = and i32 %conv.i.i202.5, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i203_5 v_conv_i_i202_5 (0x1)@uint32;
(*   %conv1.i.i204.5 = zext i8 %conv7.i.i214.4 to i32 *)
cast v_conv1_i_i204_5@uint32 v_conv7_i_i214_4@uint8;
(*   %mul.i.i205.5 = mul nsw i32 %and.i.i203.5, %conv1.i.i204.5 *)
mul v_mul_i_i205_5 v_and_i_i203_5 v_conv1_i_i204_5;
(*   %conv2.i.i206.5 = zext i8 %conv3.i.i208.4 to i32 *)
cast v_conv2_i_i206_5@uint32 v_conv3_i_i208_4@uint8;
(*   %xor.i.i207.5 = xor i32 %conv2.i.i206.5, %mul.i.i205.5 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i207_5 v_conv2_i_i206_5 v_mul_i_i205_5;
(*   %conv3.i.i208.5 = trunc i32 %xor.i.i207.5 to i8 *)
split tmp_v_xor_i_i207_5 v_conv3_i_i208_5 v_xor_i_i207_5 8;
vpc v_conv3_i_i208_5@uint8 v_conv3_i_i208_5@uint32;
(*   %conv4.i.i209.5 = zext i8 %conv5.i.i211.4 to i32 *)
cast v_conv4_i_i209_5@uint32 v_conv5_i_i211_4@uint8;
(*   %shr.i.i210.5 = ashr i32 %conv4.i.i209.5, 1 *)
(* You may need to modify here *)
split v_shr_i_i210_5 tmp_to_be_used v_conv4_i_i209_5 1;
(*   %conv5.i.i211.5 = trunc i32 %shr.i.i210.5 to i8 *)
split tmp_v_shr_i_i210_5 v_conv5_i_i211_5 v_shr_i_i210_5 8;
vpc v_conv5_i_i211_5@uint8 v_conv5_i_i211_5@uint32;
(*   %conv6.i.i212.5 = zext i8 %conv7.i.i214.4 to i32 *)
cast v_conv6_i_i212_5@uint32 v_conv7_i_i214_4@uint8;
(*   %shl.i.i213.5 = shl i32 %conv6.i.i212.5, 1 *)
shls discard_47 v_shl_i_i213_5 v_conv6_i_i212_5 1;
(*   %conv7.i.i214.5 = trunc i32 %shl.i.i213.5 to i8 *)
split tmp_v_shl_i_i213_5 v_conv7_i_i214_5 v_shl_i_i213_5 8;
vpc v_conv7_i_i214_5@uint8 v_conv7_i_i214_5@uint32;
(*   %conv.i.i202.6 = zext i8 %conv5.i.i211.5 to i32 *)
cast v_conv_i_i202_6@uint32 v_conv5_i_i211_5@uint8;
(*   %and.i.i203.6 = and i32 %conv.i.i202.6, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i203_6 v_conv_i_i202_6 (0x1)@uint32;
(*   %conv1.i.i204.6 = zext i8 %conv7.i.i214.5 to i32 *)
cast v_conv1_i_i204_6@uint32 v_conv7_i_i214_5@uint8;
(*   %mul.i.i205.6 = mul nsw i32 %and.i.i203.6, %conv1.i.i204.6 *)
mul v_mul_i_i205_6 v_and_i_i203_6 v_conv1_i_i204_6;
(*   %conv2.i.i206.6 = zext i8 %conv3.i.i208.5 to i32 *)
cast v_conv2_i_i206_6@uint32 v_conv3_i_i208_5@uint8;
(*   %xor.i.i207.6 = xor i32 %conv2.i.i206.6, %mul.i.i205.6 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i207_6 v_conv2_i_i206_6 v_mul_i_i205_6;
(*   %conv3.i.i208.6 = trunc i32 %xor.i.i207.6 to i8 *)
split tmp_v_xor_i_i207_6 v_conv3_i_i208_6 v_xor_i_i207_6 8;
vpc v_conv3_i_i208_6@uint8 v_conv3_i_i208_6@uint32;
(*   %conv4.i.i209.6 = zext i8 %conv5.i.i211.5 to i32 *)
cast v_conv4_i_i209_6@uint32 v_conv5_i_i211_5@uint8;
(*   %shr.i.i210.6 = ashr i32 %conv4.i.i209.6, 1 *)
(* You may need to modify here *)
split v_shr_i_i210_6 tmp_to_be_used v_conv4_i_i209_6 1;
(*   %conv5.i.i211.6 = trunc i32 %shr.i.i210.6 to i8 *)
split tmp_v_shr_i_i210_6 v_conv5_i_i211_6 v_shr_i_i210_6 8;
vpc v_conv5_i_i211_6@uint8 v_conv5_i_i211_6@uint32;
(*   %conv6.i.i212.6 = zext i8 %conv7.i.i214.5 to i32 *)
cast v_conv6_i_i212_6@uint32 v_conv7_i_i214_5@uint8;
(*   %shl.i.i213.6 = shl i32 %conv6.i.i212.6, 1 *)
shls discard_48 v_shl_i_i213_6 v_conv6_i_i212_6 1;
(*   %conv7.i.i214.6 = trunc i32 %shl.i.i213.6 to i8 *)
split tmp_v_shl_i_i213_6 v_conv7_i_i214_6 v_shl_i_i213_6 8;
vpc v_conv7_i_i214_6@uint8 v_conv7_i_i214_6@uint32;
(*   %conv.i.i202.7 = zext i8 %conv5.i.i211.6 to i32 *)
cast v_conv_i_i202_7@uint32 v_conv5_i_i211_6@uint8;
(*   %and.i.i203.7 = and i32 %conv.i.i202.7, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i203_7 v_conv_i_i202_7 (0x1)@uint32;
(*   %conv1.i.i204.7 = zext i8 %conv7.i.i214.6 to i32 *)
cast v_conv1_i_i204_7@uint32 v_conv7_i_i214_6@uint8;
(*   %mul.i.i205.7 = mul nsw i32 %and.i.i203.7, %conv1.i.i204.7 *)
mul v_mul_i_i205_7 v_and_i_i203_7 v_conv1_i_i204_7;
(*   %conv2.i.i206.7 = zext i8 %conv3.i.i208.6 to i32 *)
cast v_conv2_i_i206_7@uint32 v_conv3_i_i208_6@uint8;
(*   %xor.i.i207.7 = xor i32 %conv2.i.i206.7, %mul.i.i205.7 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i207_7 v_conv2_i_i206_7 v_mul_i_i205_7;
(*   %conv3.i.i208.7 = trunc i32 %xor.i.i207.7 to i8 *)
split tmp_v_xor_i_i207_7 v_conv3_i_i208_7 v_xor_i_i207_7 8;
vpc v_conv3_i_i208_7@uint8 v_conv3_i_i208_7@uint32;
(*   store i8 %conv3.i.i208.7, i8* %add.ptr8, align 1 *)
mov cc_9 v_conv3_i_i208_7;
(*   %arrayidx.i194.1 = getelementptr inbounds i8, i8* %a, i64 2 *)
(*   %14 = load i8, i8* %arrayidx.i194.1, align 1 *)
mov v14 a_2;
(*   %arrayidx4.i198.1 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %15 = load i8, i8* %arrayidx4.i198.1, align 1 *)
mov v15 b_1;
(*   %conv.i.i202.1163 = zext i8 %15 to i32 *)
cast v_conv_i_i202_1163@uint32 v15@uint8;
(*   %and.i.i203.1164 = and i32 %conv.i.i202.1163, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i203_1164 v_conv_i_i202_1163 (0x1)@uint32;
(*   %conv1.i.i204.1165 = zext i8 %14 to i32 *)
cast v_conv1_i_i204_1165@uint32 v14@uint8;
(*   %mul.i.i205.1166 = mul nsw i32 %and.i.i203.1164, %conv1.i.i204.1165 *)
mul v_mul_i_i205_1166 v_and_i_i203_1164 v_conv1_i_i204_1165;
(*   %conv3.i.i208.1167 = trunc i32 %mul.i.i205.1166 to i8 *)
split tmp_v_mul_i_i205_1166 v_conv3_i_i208_1167 v_mul_i_i205_1166 8;
vpc v_conv3_i_i208_1167@uint8 v_conv3_i_i208_1167@uint32;
(*   %conv4.i.i209.1168 = zext i8 %15 to i32 *)
cast v_conv4_i_i209_1168@uint32 v15@uint8;
(*   %shr.i.i210.1169 = ashr i32 %conv4.i.i209.1168, 1 *)
(* You may need to modify here *)
split v_shr_i_i210_1169 tmp_to_be_used v_conv4_i_i209_1168 1;
(*   %conv5.i.i211.1170 = trunc i32 %shr.i.i210.1169 to i8 *)
split tmp_v_shr_i_i210_1169 v_conv5_i_i211_1170 v_shr_i_i210_1169 8;
vpc v_conv5_i_i211_1170@uint8 v_conv5_i_i211_1170@uint32;
(*   %conv6.i.i212.1171 = zext i8 %14 to i32 *)
cast v_conv6_i_i212_1171@uint32 v14@uint8;
(*   %shl.i.i213.1172 = shl i32 %conv6.i.i212.1171, 1 *)
shls discard_49 v_shl_i_i213_1172 v_conv6_i_i212_1171 1;
(*   %conv7.i.i214.1173 = trunc i32 %shl.i.i213.1172 to i8 *)
split tmp_v_shl_i_i213_1172 v_conv7_i_i214_1173 v_shl_i_i213_1172 8;
vpc v_conv7_i_i214_1173@uint8 v_conv7_i_i214_1173@uint32;
(*   %conv.i.i202.1.1 = zext i8 %conv5.i.i211.1170 to i32 *)
cast v_conv_i_i202_1_1@uint32 v_conv5_i_i211_1170@uint8;
(*   %and.i.i203.1.1 = and i32 %conv.i.i202.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i203_1_1 v_conv_i_i202_1_1 (0x1)@uint32;
(*   %conv1.i.i204.1.1 = zext i8 %conv7.i.i214.1173 to i32 *)
cast v_conv1_i_i204_1_1@uint32 v_conv7_i_i214_1173@uint8;
(*   %mul.i.i205.1.1 = mul nsw i32 %and.i.i203.1.1, %conv1.i.i204.1.1 *)
mul v_mul_i_i205_1_1 v_and_i_i203_1_1 v_conv1_i_i204_1_1;
(*   %conv2.i.i206.1.1 = zext i8 %conv3.i.i208.1167 to i32 *)
cast v_conv2_i_i206_1_1@uint32 v_conv3_i_i208_1167@uint8;
(*   %xor.i.i207.1.1 = xor i32 %conv2.i.i206.1.1, %mul.i.i205.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i207_1_1 v_conv2_i_i206_1_1 v_mul_i_i205_1_1;
(*   %conv3.i.i208.1.1 = trunc i32 %xor.i.i207.1.1 to i8 *)
split tmp_v_xor_i_i207_1_1 v_conv3_i_i208_1_1 v_xor_i_i207_1_1 8;
vpc v_conv3_i_i208_1_1@uint8 v_conv3_i_i208_1_1@uint32;
(*   %conv4.i.i209.1.1 = zext i8 %conv5.i.i211.1170 to i32 *)
cast v_conv4_i_i209_1_1@uint32 v_conv5_i_i211_1170@uint8;
(*   %shr.i.i210.1.1 = ashr i32 %conv4.i.i209.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i210_1_1 tmp_to_be_used v_conv4_i_i209_1_1 1;
(*   %conv5.i.i211.1.1 = trunc i32 %shr.i.i210.1.1 to i8 *)
split tmp_v_shr_i_i210_1_1 v_conv5_i_i211_1_1 v_shr_i_i210_1_1 8;
vpc v_conv5_i_i211_1_1@uint8 v_conv5_i_i211_1_1@uint32;
(*   %conv6.i.i212.1.1 = zext i8 %conv7.i.i214.1173 to i32 *)
cast v_conv6_i_i212_1_1@uint32 v_conv7_i_i214_1173@uint8;
(*   %shl.i.i213.1.1 = shl i32 %conv6.i.i212.1.1, 1 *)
shls discard_50 v_shl_i_i213_1_1 v_conv6_i_i212_1_1 1;
(*   %conv7.i.i214.1.1 = trunc i32 %shl.i.i213.1.1 to i8 *)
split tmp_v_shl_i_i213_1_1 v_conv7_i_i214_1_1 v_shl_i_i213_1_1 8;
vpc v_conv7_i_i214_1_1@uint8 v_conv7_i_i214_1_1@uint32;
(*   %conv.i.i202.2.1 = zext i8 %conv5.i.i211.1.1 to i32 *)
cast v_conv_i_i202_2_1@uint32 v_conv5_i_i211_1_1@uint8;
(*   %and.i.i203.2.1 = and i32 %conv.i.i202.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i203_2_1 v_conv_i_i202_2_1 (0x1)@uint32;
(*   %conv1.i.i204.2.1 = zext i8 %conv7.i.i214.1.1 to i32 *)
cast v_conv1_i_i204_2_1@uint32 v_conv7_i_i214_1_1@uint8;
(*   %mul.i.i205.2.1 = mul nsw i32 %and.i.i203.2.1, %conv1.i.i204.2.1 *)
mul v_mul_i_i205_2_1 v_and_i_i203_2_1 v_conv1_i_i204_2_1;
(*   %conv2.i.i206.2.1 = zext i8 %conv3.i.i208.1.1 to i32 *)
cast v_conv2_i_i206_2_1@uint32 v_conv3_i_i208_1_1@uint8;
(*   %xor.i.i207.2.1 = xor i32 %conv2.i.i206.2.1, %mul.i.i205.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i207_2_1 v_conv2_i_i206_2_1 v_mul_i_i205_2_1;
(*   %conv3.i.i208.2.1 = trunc i32 %xor.i.i207.2.1 to i8 *)
split tmp_v_xor_i_i207_2_1 v_conv3_i_i208_2_1 v_xor_i_i207_2_1 8;
vpc v_conv3_i_i208_2_1@uint8 v_conv3_i_i208_2_1@uint32;
(*   %conv4.i.i209.2.1 = zext i8 %conv5.i.i211.1.1 to i32 *)
cast v_conv4_i_i209_2_1@uint32 v_conv5_i_i211_1_1@uint8;
(*   %shr.i.i210.2.1 = ashr i32 %conv4.i.i209.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i210_2_1 tmp_to_be_used v_conv4_i_i209_2_1 1;
(*   %conv5.i.i211.2.1 = trunc i32 %shr.i.i210.2.1 to i8 *)
split tmp_v_shr_i_i210_2_1 v_conv5_i_i211_2_1 v_shr_i_i210_2_1 8;
vpc v_conv5_i_i211_2_1@uint8 v_conv5_i_i211_2_1@uint32;
(*   %conv6.i.i212.2.1 = zext i8 %conv7.i.i214.1.1 to i32 *)
cast v_conv6_i_i212_2_1@uint32 v_conv7_i_i214_1_1@uint8;
(*   %shl.i.i213.2.1 = shl i32 %conv6.i.i212.2.1, 1 *)
shls discard_51 v_shl_i_i213_2_1 v_conv6_i_i212_2_1 1;
(*   %conv7.i.i214.2.1 = trunc i32 %shl.i.i213.2.1 to i8 *)
split tmp_v_shl_i_i213_2_1 v_conv7_i_i214_2_1 v_shl_i_i213_2_1 8;
vpc v_conv7_i_i214_2_1@uint8 v_conv7_i_i214_2_1@uint32;
(*   %conv.i.i202.3.1 = zext i8 %conv5.i.i211.2.1 to i32 *)
cast v_conv_i_i202_3_1@uint32 v_conv5_i_i211_2_1@uint8;
(*   %and.i.i203.3.1 = and i32 %conv.i.i202.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i203_3_1 v_conv_i_i202_3_1 (0x1)@uint32;
(*   %conv1.i.i204.3.1 = zext i8 %conv7.i.i214.2.1 to i32 *)
cast v_conv1_i_i204_3_1@uint32 v_conv7_i_i214_2_1@uint8;
(*   %mul.i.i205.3.1 = mul nsw i32 %and.i.i203.3.1, %conv1.i.i204.3.1 *)
mul v_mul_i_i205_3_1 v_and_i_i203_3_1 v_conv1_i_i204_3_1;
(*   %conv2.i.i206.3.1 = zext i8 %conv3.i.i208.2.1 to i32 *)
cast v_conv2_i_i206_3_1@uint32 v_conv3_i_i208_2_1@uint8;
(*   %xor.i.i207.3.1 = xor i32 %conv2.i.i206.3.1, %mul.i.i205.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i207_3_1 v_conv2_i_i206_3_1 v_mul_i_i205_3_1;
(*   %conv3.i.i208.3.1 = trunc i32 %xor.i.i207.3.1 to i8 *)
split tmp_v_xor_i_i207_3_1 v_conv3_i_i208_3_1 v_xor_i_i207_3_1 8;
vpc v_conv3_i_i208_3_1@uint8 v_conv3_i_i208_3_1@uint32;
(*   %conv4.i.i209.3.1 = zext i8 %conv5.i.i211.2.1 to i32 *)
cast v_conv4_i_i209_3_1@uint32 v_conv5_i_i211_2_1@uint8;
(*   %shr.i.i210.3.1 = ashr i32 %conv4.i.i209.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i210_3_1 tmp_to_be_used v_conv4_i_i209_3_1 1;
(*   %conv5.i.i211.3.1 = trunc i32 %shr.i.i210.3.1 to i8 *)
split tmp_v_shr_i_i210_3_1 v_conv5_i_i211_3_1 v_shr_i_i210_3_1 8;
vpc v_conv5_i_i211_3_1@uint8 v_conv5_i_i211_3_1@uint32;
(*   %conv6.i.i212.3.1 = zext i8 %conv7.i.i214.2.1 to i32 *)
cast v_conv6_i_i212_3_1@uint32 v_conv7_i_i214_2_1@uint8;
(*   %shl.i.i213.3.1 = shl i32 %conv6.i.i212.3.1, 1 *)
shls discard_52 v_shl_i_i213_3_1 v_conv6_i_i212_3_1 1;
(*   %conv7.i.i214.3.1 = trunc i32 %shl.i.i213.3.1 to i8 *)
split tmp_v_shl_i_i213_3_1 v_conv7_i_i214_3_1 v_shl_i_i213_3_1 8;
vpc v_conv7_i_i214_3_1@uint8 v_conv7_i_i214_3_1@uint32;
(*   %conv.i.i202.4.1 = zext i8 %conv5.i.i211.3.1 to i32 *)
cast v_conv_i_i202_4_1@uint32 v_conv5_i_i211_3_1@uint8;
(*   %and.i.i203.4.1 = and i32 %conv.i.i202.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i203_4_1 v_conv_i_i202_4_1 (0x1)@uint32;
(*   %conv1.i.i204.4.1 = zext i8 %conv7.i.i214.3.1 to i32 *)
cast v_conv1_i_i204_4_1@uint32 v_conv7_i_i214_3_1@uint8;
(*   %mul.i.i205.4.1 = mul nsw i32 %and.i.i203.4.1, %conv1.i.i204.4.1 *)
mul v_mul_i_i205_4_1 v_and_i_i203_4_1 v_conv1_i_i204_4_1;
(*   %conv2.i.i206.4.1 = zext i8 %conv3.i.i208.3.1 to i32 *)
cast v_conv2_i_i206_4_1@uint32 v_conv3_i_i208_3_1@uint8;
(*   %xor.i.i207.4.1 = xor i32 %conv2.i.i206.4.1, %mul.i.i205.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i207_4_1 v_conv2_i_i206_4_1 v_mul_i_i205_4_1;
(*   %conv3.i.i208.4.1 = trunc i32 %xor.i.i207.4.1 to i8 *)
split tmp_v_xor_i_i207_4_1 v_conv3_i_i208_4_1 v_xor_i_i207_4_1 8;
vpc v_conv3_i_i208_4_1@uint8 v_conv3_i_i208_4_1@uint32;
(*   %conv4.i.i209.4.1 = zext i8 %conv5.i.i211.3.1 to i32 *)
cast v_conv4_i_i209_4_1@uint32 v_conv5_i_i211_3_1@uint8;
(*   %shr.i.i210.4.1 = ashr i32 %conv4.i.i209.4.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i210_4_1 tmp_to_be_used v_conv4_i_i209_4_1 1;
(*   %conv5.i.i211.4.1 = trunc i32 %shr.i.i210.4.1 to i8 *)
split tmp_v_shr_i_i210_4_1 v_conv5_i_i211_4_1 v_shr_i_i210_4_1 8;
vpc v_conv5_i_i211_4_1@uint8 v_conv5_i_i211_4_1@uint32;
(*   %conv6.i.i212.4.1 = zext i8 %conv7.i.i214.3.1 to i32 *)
cast v_conv6_i_i212_4_1@uint32 v_conv7_i_i214_3_1@uint8;
(*   %shl.i.i213.4.1 = shl i32 %conv6.i.i212.4.1, 1 *)
shls discard_53 v_shl_i_i213_4_1 v_conv6_i_i212_4_1 1;
(*   %conv7.i.i214.4.1 = trunc i32 %shl.i.i213.4.1 to i8 *)
split tmp_v_shl_i_i213_4_1 v_conv7_i_i214_4_1 v_shl_i_i213_4_1 8;
vpc v_conv7_i_i214_4_1@uint8 v_conv7_i_i214_4_1@uint32;
(*   %conv.i.i202.5.1 = zext i8 %conv5.i.i211.4.1 to i32 *)
cast v_conv_i_i202_5_1@uint32 v_conv5_i_i211_4_1@uint8;
(*   %and.i.i203.5.1 = and i32 %conv.i.i202.5.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i203_5_1 v_conv_i_i202_5_1 (0x1)@uint32;
(*   %conv1.i.i204.5.1 = zext i8 %conv7.i.i214.4.1 to i32 *)
cast v_conv1_i_i204_5_1@uint32 v_conv7_i_i214_4_1@uint8;
(*   %mul.i.i205.5.1 = mul nsw i32 %and.i.i203.5.1, %conv1.i.i204.5.1 *)
mul v_mul_i_i205_5_1 v_and_i_i203_5_1 v_conv1_i_i204_5_1;
(*   %conv2.i.i206.5.1 = zext i8 %conv3.i.i208.4.1 to i32 *)
cast v_conv2_i_i206_5_1@uint32 v_conv3_i_i208_4_1@uint8;
(*   %xor.i.i207.5.1 = xor i32 %conv2.i.i206.5.1, %mul.i.i205.5.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i207_5_1 v_conv2_i_i206_5_1 v_mul_i_i205_5_1;
(*   %conv3.i.i208.5.1 = trunc i32 %xor.i.i207.5.1 to i8 *)
split tmp_v_xor_i_i207_5_1 v_conv3_i_i208_5_1 v_xor_i_i207_5_1 8;
vpc v_conv3_i_i208_5_1@uint8 v_conv3_i_i208_5_1@uint32;
(*   %conv4.i.i209.5.1 = zext i8 %conv5.i.i211.4.1 to i32 *)
cast v_conv4_i_i209_5_1@uint32 v_conv5_i_i211_4_1@uint8;
(*   %shr.i.i210.5.1 = ashr i32 %conv4.i.i209.5.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i210_5_1 tmp_to_be_used v_conv4_i_i209_5_1 1;
(*   %conv5.i.i211.5.1 = trunc i32 %shr.i.i210.5.1 to i8 *)
split tmp_v_shr_i_i210_5_1 v_conv5_i_i211_5_1 v_shr_i_i210_5_1 8;
vpc v_conv5_i_i211_5_1@uint8 v_conv5_i_i211_5_1@uint32;
(*   %conv6.i.i212.5.1 = zext i8 %conv7.i.i214.4.1 to i32 *)
cast v_conv6_i_i212_5_1@uint32 v_conv7_i_i214_4_1@uint8;
(*   %shl.i.i213.5.1 = shl i32 %conv6.i.i212.5.1, 1 *)
shls discard_54 v_shl_i_i213_5_1 v_conv6_i_i212_5_1 1;
(*   %conv7.i.i214.5.1 = trunc i32 %shl.i.i213.5.1 to i8 *)
split tmp_v_shl_i_i213_5_1 v_conv7_i_i214_5_1 v_shl_i_i213_5_1 8;
vpc v_conv7_i_i214_5_1@uint8 v_conv7_i_i214_5_1@uint32;
(*   %conv.i.i202.6.1 = zext i8 %conv5.i.i211.5.1 to i32 *)
cast v_conv_i_i202_6_1@uint32 v_conv5_i_i211_5_1@uint8;
(*   %and.i.i203.6.1 = and i32 %conv.i.i202.6.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i203_6_1 v_conv_i_i202_6_1 (0x1)@uint32;
(*   %conv1.i.i204.6.1 = zext i8 %conv7.i.i214.5.1 to i32 *)
cast v_conv1_i_i204_6_1@uint32 v_conv7_i_i214_5_1@uint8;
(*   %mul.i.i205.6.1 = mul nsw i32 %and.i.i203.6.1, %conv1.i.i204.6.1 *)
mul v_mul_i_i205_6_1 v_and_i_i203_6_1 v_conv1_i_i204_6_1;
(*   %conv2.i.i206.6.1 = zext i8 %conv3.i.i208.5.1 to i32 *)
cast v_conv2_i_i206_6_1@uint32 v_conv3_i_i208_5_1@uint8;
(*   %xor.i.i207.6.1 = xor i32 %conv2.i.i206.6.1, %mul.i.i205.6.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i207_6_1 v_conv2_i_i206_6_1 v_mul_i_i205_6_1;
(*   %conv3.i.i208.6.1 = trunc i32 %xor.i.i207.6.1 to i8 *)
split tmp_v_xor_i_i207_6_1 v_conv3_i_i208_6_1 v_xor_i_i207_6_1 8;
vpc v_conv3_i_i208_6_1@uint8 v_conv3_i_i208_6_1@uint32;
(*   %conv4.i.i209.6.1 = zext i8 %conv5.i.i211.5.1 to i32 *)
cast v_conv4_i_i209_6_1@uint32 v_conv5_i_i211_5_1@uint8;
(*   %shr.i.i210.6.1 = ashr i32 %conv4.i.i209.6.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i210_6_1 tmp_to_be_used v_conv4_i_i209_6_1 1;
(*   %conv5.i.i211.6.1 = trunc i32 %shr.i.i210.6.1 to i8 *)
split tmp_v_shr_i_i210_6_1 v_conv5_i_i211_6_1 v_shr_i_i210_6_1 8;
vpc v_conv5_i_i211_6_1@uint8 v_conv5_i_i211_6_1@uint32;
(*   %conv6.i.i212.6.1 = zext i8 %conv7.i.i214.5.1 to i32 *)
cast v_conv6_i_i212_6_1@uint32 v_conv7_i_i214_5_1@uint8;
(*   %shl.i.i213.6.1 = shl i32 %conv6.i.i212.6.1, 1 *)
shls discard_55 v_shl_i_i213_6_1 v_conv6_i_i212_6_1 1;
(*   %conv7.i.i214.6.1 = trunc i32 %shl.i.i213.6.1 to i8 *)
split tmp_v_shl_i_i213_6_1 v_conv7_i_i214_6_1 v_shl_i_i213_6_1 8;
vpc v_conv7_i_i214_6_1@uint8 v_conv7_i_i214_6_1@uint32;
(*   %conv.i.i202.7.1 = zext i8 %conv5.i.i211.6.1 to i32 *)
cast v_conv_i_i202_7_1@uint32 v_conv5_i_i211_6_1@uint8;
(*   %and.i.i203.7.1 = and i32 %conv.i.i202.7.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i203_7_1 v_conv_i_i202_7_1 (0x1)@uint32;
(*   %conv1.i.i204.7.1 = zext i8 %conv7.i.i214.6.1 to i32 *)
cast v_conv1_i_i204_7_1@uint32 v_conv7_i_i214_6_1@uint8;
(*   %mul.i.i205.7.1 = mul nsw i32 %and.i.i203.7.1, %conv1.i.i204.7.1 *)
mul v_mul_i_i205_7_1 v_and_i_i203_7_1 v_conv1_i_i204_7_1;
(*   %conv2.i.i206.7.1 = zext i8 %conv3.i.i208.6.1 to i32 *)
cast v_conv2_i_i206_7_1@uint32 v_conv3_i_i208_6_1@uint8;
(*   %xor.i.i207.7.1 = xor i32 %conv2.i.i206.7.1, %mul.i.i205.7.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i207_7_1 v_conv2_i_i206_7_1 v_mul_i_i205_7_1;
(*   %conv3.i.i208.7.1 = trunc i32 %xor.i.i207.7.1 to i8 *)
split tmp_v_xor_i_i207_7_1 v_conv3_i_i208_7_1 v_xor_i_i207_7_1 8;
vpc v_conv3_i_i208_7_1@uint8 v_conv3_i_i208_7_1@uint32;
(*   %arrayidx6.i218.1 = getelementptr inbounds i8, i8* %add.ptr8, i64 1 *)
(*   store i8 %conv3.i.i208.7.1, i8* %arrayidx6.i218.1, align 1 *)
mov cc_10 v_conv3_i_i208_7_1;
(*   %16 = load i8, i8* %a, align 1 *)
mov v16 a_0;
(*   %arrayidx4.i198.2 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %17 = load i8, i8* %arrayidx4.i198.2, align 1 *)
mov v17 b_2;
(*   %conv.i.i202.2174 = zext i8 %17 to i32 *)
cast v_conv_i_i202_2174@uint32 v17@uint8;
(*   %and.i.i203.2175 = and i32 %conv.i.i202.2174, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i203_2175 v_conv_i_i202_2174 (0x1)@uint32;
(*   %conv1.i.i204.2176 = zext i8 %16 to i32 *)
cast v_conv1_i_i204_2176@uint32 v16@uint8;
(*   %mul.i.i205.2177 = mul nsw i32 %and.i.i203.2175, %conv1.i.i204.2176 *)
mul v_mul_i_i205_2177 v_and_i_i203_2175 v_conv1_i_i204_2176;
(*   %conv3.i.i208.2178 = trunc i32 %mul.i.i205.2177 to i8 *)
split tmp_v_mul_i_i205_2177 v_conv3_i_i208_2178 v_mul_i_i205_2177 8;
vpc v_conv3_i_i208_2178@uint8 v_conv3_i_i208_2178@uint32;
(*   %conv4.i.i209.2179 = zext i8 %17 to i32 *)
cast v_conv4_i_i209_2179@uint32 v17@uint8;
(*   %shr.i.i210.2180 = ashr i32 %conv4.i.i209.2179, 1 *)
(* You may need to modify here *)
split v_shr_i_i210_2180 tmp_to_be_used v_conv4_i_i209_2179 1;
(*   %conv5.i.i211.2181 = trunc i32 %shr.i.i210.2180 to i8 *)
split tmp_v_shr_i_i210_2180 v_conv5_i_i211_2181 v_shr_i_i210_2180 8;
vpc v_conv5_i_i211_2181@uint8 v_conv5_i_i211_2181@uint32;
(*   %conv6.i.i212.2182 = zext i8 %16 to i32 *)
cast v_conv6_i_i212_2182@uint32 v16@uint8;
(*   %shl.i.i213.2183 = shl i32 %conv6.i.i212.2182, 1 *)
shls discard_56 v_shl_i_i213_2183 v_conv6_i_i212_2182 1;
(*   %conv7.i.i214.2184 = trunc i32 %shl.i.i213.2183 to i8 *)
split tmp_v_shl_i_i213_2183 v_conv7_i_i214_2184 v_shl_i_i213_2183 8;
vpc v_conv7_i_i214_2184@uint8 v_conv7_i_i214_2184@uint32;
(*   %conv.i.i202.1.2 = zext i8 %conv5.i.i211.2181 to i32 *)
cast v_conv_i_i202_1_2@uint32 v_conv5_i_i211_2181@uint8;
(*   %and.i.i203.1.2 = and i32 %conv.i.i202.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i203_1_2 v_conv_i_i202_1_2 (0x1)@uint32;
(*   %conv1.i.i204.1.2 = zext i8 %conv7.i.i214.2184 to i32 *)
cast v_conv1_i_i204_1_2@uint32 v_conv7_i_i214_2184@uint8;
(*   %mul.i.i205.1.2 = mul nsw i32 %and.i.i203.1.2, %conv1.i.i204.1.2 *)
mul v_mul_i_i205_1_2 v_and_i_i203_1_2 v_conv1_i_i204_1_2;
(*   %conv2.i.i206.1.2 = zext i8 %conv3.i.i208.2178 to i32 *)
cast v_conv2_i_i206_1_2@uint32 v_conv3_i_i208_2178@uint8;
(*   %xor.i.i207.1.2 = xor i32 %conv2.i.i206.1.2, %mul.i.i205.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i207_1_2 v_conv2_i_i206_1_2 v_mul_i_i205_1_2;
(*   %conv3.i.i208.1.2 = trunc i32 %xor.i.i207.1.2 to i8 *)
split tmp_v_xor_i_i207_1_2 v_conv3_i_i208_1_2 v_xor_i_i207_1_2 8;
vpc v_conv3_i_i208_1_2@uint8 v_conv3_i_i208_1_2@uint32;
(*   %conv4.i.i209.1.2 = zext i8 %conv5.i.i211.2181 to i32 *)
cast v_conv4_i_i209_1_2@uint32 v_conv5_i_i211_2181@uint8;
(*   %shr.i.i210.1.2 = ashr i32 %conv4.i.i209.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i210_1_2 tmp_to_be_used v_conv4_i_i209_1_2 1;
(*   %conv5.i.i211.1.2 = trunc i32 %shr.i.i210.1.2 to i8 *)
split tmp_v_shr_i_i210_1_2 v_conv5_i_i211_1_2 v_shr_i_i210_1_2 8;
vpc v_conv5_i_i211_1_2@uint8 v_conv5_i_i211_1_2@uint32;
(*   %conv6.i.i212.1.2 = zext i8 %conv7.i.i214.2184 to i32 *)
cast v_conv6_i_i212_1_2@uint32 v_conv7_i_i214_2184@uint8;
(*   %shl.i.i213.1.2 = shl i32 %conv6.i.i212.1.2, 1 *)
shls discard_57 v_shl_i_i213_1_2 v_conv6_i_i212_1_2 1;
(*   %conv7.i.i214.1.2 = trunc i32 %shl.i.i213.1.2 to i8 *)
split tmp_v_shl_i_i213_1_2 v_conv7_i_i214_1_2 v_shl_i_i213_1_2 8;
vpc v_conv7_i_i214_1_2@uint8 v_conv7_i_i214_1_2@uint32;
(*   %conv.i.i202.2.2 = zext i8 %conv5.i.i211.1.2 to i32 *)
cast v_conv_i_i202_2_2@uint32 v_conv5_i_i211_1_2@uint8;
(*   %and.i.i203.2.2 = and i32 %conv.i.i202.2.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i203_2_2 v_conv_i_i202_2_2 (0x1)@uint32;
(*   %conv1.i.i204.2.2 = zext i8 %conv7.i.i214.1.2 to i32 *)
cast v_conv1_i_i204_2_2@uint32 v_conv7_i_i214_1_2@uint8;
(*   %mul.i.i205.2.2 = mul nsw i32 %and.i.i203.2.2, %conv1.i.i204.2.2 *)
mul v_mul_i_i205_2_2 v_and_i_i203_2_2 v_conv1_i_i204_2_2;
(*   %conv2.i.i206.2.2 = zext i8 %conv3.i.i208.1.2 to i32 *)
cast v_conv2_i_i206_2_2@uint32 v_conv3_i_i208_1_2@uint8;
(*   %xor.i.i207.2.2 = xor i32 %conv2.i.i206.2.2, %mul.i.i205.2.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i207_2_2 v_conv2_i_i206_2_2 v_mul_i_i205_2_2;
(*   %conv3.i.i208.2.2 = trunc i32 %xor.i.i207.2.2 to i8 *)
split tmp_v_xor_i_i207_2_2 v_conv3_i_i208_2_2 v_xor_i_i207_2_2 8;
vpc v_conv3_i_i208_2_2@uint8 v_conv3_i_i208_2_2@uint32;
(*   %conv4.i.i209.2.2 = zext i8 %conv5.i.i211.1.2 to i32 *)
cast v_conv4_i_i209_2_2@uint32 v_conv5_i_i211_1_2@uint8;
(*   %shr.i.i210.2.2 = ashr i32 %conv4.i.i209.2.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i210_2_2 tmp_to_be_used v_conv4_i_i209_2_2 1;
(*   %conv5.i.i211.2.2 = trunc i32 %shr.i.i210.2.2 to i8 *)
split tmp_v_shr_i_i210_2_2 v_conv5_i_i211_2_2 v_shr_i_i210_2_2 8;
vpc v_conv5_i_i211_2_2@uint8 v_conv5_i_i211_2_2@uint32;
(*   %conv6.i.i212.2.2 = zext i8 %conv7.i.i214.1.2 to i32 *)
cast v_conv6_i_i212_2_2@uint32 v_conv7_i_i214_1_2@uint8;
(*   %shl.i.i213.2.2 = shl i32 %conv6.i.i212.2.2, 1 *)
shls discard_58 v_shl_i_i213_2_2 v_conv6_i_i212_2_2 1;
(*   %conv7.i.i214.2.2 = trunc i32 %shl.i.i213.2.2 to i8 *)
split tmp_v_shl_i_i213_2_2 v_conv7_i_i214_2_2 v_shl_i_i213_2_2 8;
vpc v_conv7_i_i214_2_2@uint8 v_conv7_i_i214_2_2@uint32;
(*   %conv.i.i202.3.2 = zext i8 %conv5.i.i211.2.2 to i32 *)
cast v_conv_i_i202_3_2@uint32 v_conv5_i_i211_2_2@uint8;
(*   %and.i.i203.3.2 = and i32 %conv.i.i202.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i203_3_2 v_conv_i_i202_3_2 (0x1)@uint32;
(*   %conv1.i.i204.3.2 = zext i8 %conv7.i.i214.2.2 to i32 *)
cast v_conv1_i_i204_3_2@uint32 v_conv7_i_i214_2_2@uint8;
(*   %mul.i.i205.3.2 = mul nsw i32 %and.i.i203.3.2, %conv1.i.i204.3.2 *)
mul v_mul_i_i205_3_2 v_and_i_i203_3_2 v_conv1_i_i204_3_2;
(*   %conv2.i.i206.3.2 = zext i8 %conv3.i.i208.2.2 to i32 *)
cast v_conv2_i_i206_3_2@uint32 v_conv3_i_i208_2_2@uint8;
(*   %xor.i.i207.3.2 = xor i32 %conv2.i.i206.3.2, %mul.i.i205.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i207_3_2 v_conv2_i_i206_3_2 v_mul_i_i205_3_2;
(*   %conv3.i.i208.3.2 = trunc i32 %xor.i.i207.3.2 to i8 *)
split tmp_v_xor_i_i207_3_2 v_conv3_i_i208_3_2 v_xor_i_i207_3_2 8;
vpc v_conv3_i_i208_3_2@uint8 v_conv3_i_i208_3_2@uint32;
(*   %conv4.i.i209.3.2 = zext i8 %conv5.i.i211.2.2 to i32 *)
cast v_conv4_i_i209_3_2@uint32 v_conv5_i_i211_2_2@uint8;
(*   %shr.i.i210.3.2 = ashr i32 %conv4.i.i209.3.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i210_3_2 tmp_to_be_used v_conv4_i_i209_3_2 1;
(*   %conv5.i.i211.3.2 = trunc i32 %shr.i.i210.3.2 to i8 *)
split tmp_v_shr_i_i210_3_2 v_conv5_i_i211_3_2 v_shr_i_i210_3_2 8;
vpc v_conv5_i_i211_3_2@uint8 v_conv5_i_i211_3_2@uint32;
(*   %conv6.i.i212.3.2 = zext i8 %conv7.i.i214.2.2 to i32 *)
cast v_conv6_i_i212_3_2@uint32 v_conv7_i_i214_2_2@uint8;
(*   %shl.i.i213.3.2 = shl i32 %conv6.i.i212.3.2, 1 *)
shls discard_59 v_shl_i_i213_3_2 v_conv6_i_i212_3_2 1;
(*   %conv7.i.i214.3.2 = trunc i32 %shl.i.i213.3.2 to i8 *)
split tmp_v_shl_i_i213_3_2 v_conv7_i_i214_3_2 v_shl_i_i213_3_2 8;
vpc v_conv7_i_i214_3_2@uint8 v_conv7_i_i214_3_2@uint32;
(*   %conv.i.i202.4.2 = zext i8 %conv5.i.i211.3.2 to i32 *)
cast v_conv_i_i202_4_2@uint32 v_conv5_i_i211_3_2@uint8;
(*   %and.i.i203.4.2 = and i32 %conv.i.i202.4.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i203_4_2 v_conv_i_i202_4_2 (0x1)@uint32;
(*   %conv1.i.i204.4.2 = zext i8 %conv7.i.i214.3.2 to i32 *)
cast v_conv1_i_i204_4_2@uint32 v_conv7_i_i214_3_2@uint8;
(*   %mul.i.i205.4.2 = mul nsw i32 %and.i.i203.4.2, %conv1.i.i204.4.2 *)
mul v_mul_i_i205_4_2 v_and_i_i203_4_2 v_conv1_i_i204_4_2;
(*   %conv2.i.i206.4.2 = zext i8 %conv3.i.i208.3.2 to i32 *)
cast v_conv2_i_i206_4_2@uint32 v_conv3_i_i208_3_2@uint8;
(*   %xor.i.i207.4.2 = xor i32 %conv2.i.i206.4.2, %mul.i.i205.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i207_4_2 v_conv2_i_i206_4_2 v_mul_i_i205_4_2;
(*   %conv3.i.i208.4.2 = trunc i32 %xor.i.i207.4.2 to i8 *)
split tmp_v_xor_i_i207_4_2 v_conv3_i_i208_4_2 v_xor_i_i207_4_2 8;
vpc v_conv3_i_i208_4_2@uint8 v_conv3_i_i208_4_2@uint32;
(*   %conv4.i.i209.4.2 = zext i8 %conv5.i.i211.3.2 to i32 *)
cast v_conv4_i_i209_4_2@uint32 v_conv5_i_i211_3_2@uint8;
(*   %shr.i.i210.4.2 = ashr i32 %conv4.i.i209.4.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i210_4_2 tmp_to_be_used v_conv4_i_i209_4_2 1;
(*   %conv5.i.i211.4.2 = trunc i32 %shr.i.i210.4.2 to i8 *)
split tmp_v_shr_i_i210_4_2 v_conv5_i_i211_4_2 v_shr_i_i210_4_2 8;
vpc v_conv5_i_i211_4_2@uint8 v_conv5_i_i211_4_2@uint32;
(*   %conv6.i.i212.4.2 = zext i8 %conv7.i.i214.3.2 to i32 *)
cast v_conv6_i_i212_4_2@uint32 v_conv7_i_i214_3_2@uint8;
(*   %shl.i.i213.4.2 = shl i32 %conv6.i.i212.4.2, 1 *)
shls discard_60 v_shl_i_i213_4_2 v_conv6_i_i212_4_2 1;
(*   %conv7.i.i214.4.2 = trunc i32 %shl.i.i213.4.2 to i8 *)
split tmp_v_shl_i_i213_4_2 v_conv7_i_i214_4_2 v_shl_i_i213_4_2 8;
vpc v_conv7_i_i214_4_2@uint8 v_conv7_i_i214_4_2@uint32;
(*   %conv.i.i202.5.2 = zext i8 %conv5.i.i211.4.2 to i32 *)
cast v_conv_i_i202_5_2@uint32 v_conv5_i_i211_4_2@uint8;
(*   %and.i.i203.5.2 = and i32 %conv.i.i202.5.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i203_5_2 v_conv_i_i202_5_2 (0x1)@uint32;
(*   %conv1.i.i204.5.2 = zext i8 %conv7.i.i214.4.2 to i32 *)
cast v_conv1_i_i204_5_2@uint32 v_conv7_i_i214_4_2@uint8;
(*   %mul.i.i205.5.2 = mul nsw i32 %and.i.i203.5.2, %conv1.i.i204.5.2 *)
mul v_mul_i_i205_5_2 v_and_i_i203_5_2 v_conv1_i_i204_5_2;
(*   %conv2.i.i206.5.2 = zext i8 %conv3.i.i208.4.2 to i32 *)
cast v_conv2_i_i206_5_2@uint32 v_conv3_i_i208_4_2@uint8;
(*   %xor.i.i207.5.2 = xor i32 %conv2.i.i206.5.2, %mul.i.i205.5.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i207_5_2 v_conv2_i_i206_5_2 v_mul_i_i205_5_2;
(*   %conv3.i.i208.5.2 = trunc i32 %xor.i.i207.5.2 to i8 *)
split tmp_v_xor_i_i207_5_2 v_conv3_i_i208_5_2 v_xor_i_i207_5_2 8;
vpc v_conv3_i_i208_5_2@uint8 v_conv3_i_i208_5_2@uint32;
(*   %conv4.i.i209.5.2 = zext i8 %conv5.i.i211.4.2 to i32 *)
cast v_conv4_i_i209_5_2@uint32 v_conv5_i_i211_4_2@uint8;
(*   %shr.i.i210.5.2 = ashr i32 %conv4.i.i209.5.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i210_5_2 tmp_to_be_used v_conv4_i_i209_5_2 1;
(*   %conv5.i.i211.5.2 = trunc i32 %shr.i.i210.5.2 to i8 *)
split tmp_v_shr_i_i210_5_2 v_conv5_i_i211_5_2 v_shr_i_i210_5_2 8;
vpc v_conv5_i_i211_5_2@uint8 v_conv5_i_i211_5_2@uint32;
(*   %conv6.i.i212.5.2 = zext i8 %conv7.i.i214.4.2 to i32 *)
cast v_conv6_i_i212_5_2@uint32 v_conv7_i_i214_4_2@uint8;
(*   %shl.i.i213.5.2 = shl i32 %conv6.i.i212.5.2, 1 *)
shls discard_61 v_shl_i_i213_5_2 v_conv6_i_i212_5_2 1;
(*   %conv7.i.i214.5.2 = trunc i32 %shl.i.i213.5.2 to i8 *)
split tmp_v_shl_i_i213_5_2 v_conv7_i_i214_5_2 v_shl_i_i213_5_2 8;
vpc v_conv7_i_i214_5_2@uint8 v_conv7_i_i214_5_2@uint32;
(*   %conv.i.i202.6.2 = zext i8 %conv5.i.i211.5.2 to i32 *)
cast v_conv_i_i202_6_2@uint32 v_conv5_i_i211_5_2@uint8;
(*   %and.i.i203.6.2 = and i32 %conv.i.i202.6.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i203_6_2 v_conv_i_i202_6_2 (0x1)@uint32;
(*   %conv1.i.i204.6.2 = zext i8 %conv7.i.i214.5.2 to i32 *)
cast v_conv1_i_i204_6_2@uint32 v_conv7_i_i214_5_2@uint8;
(*   %mul.i.i205.6.2 = mul nsw i32 %and.i.i203.6.2, %conv1.i.i204.6.2 *)
mul v_mul_i_i205_6_2 v_and_i_i203_6_2 v_conv1_i_i204_6_2;
(*   %conv2.i.i206.6.2 = zext i8 %conv3.i.i208.5.2 to i32 *)
cast v_conv2_i_i206_6_2@uint32 v_conv3_i_i208_5_2@uint8;
(*   %xor.i.i207.6.2 = xor i32 %conv2.i.i206.6.2, %mul.i.i205.6.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i207_6_2 v_conv2_i_i206_6_2 v_mul_i_i205_6_2;
(*   %conv3.i.i208.6.2 = trunc i32 %xor.i.i207.6.2 to i8 *)
split tmp_v_xor_i_i207_6_2 v_conv3_i_i208_6_2 v_xor_i_i207_6_2 8;
vpc v_conv3_i_i208_6_2@uint8 v_conv3_i_i208_6_2@uint32;
(*   %conv4.i.i209.6.2 = zext i8 %conv5.i.i211.5.2 to i32 *)
cast v_conv4_i_i209_6_2@uint32 v_conv5_i_i211_5_2@uint8;
(*   %shr.i.i210.6.2 = ashr i32 %conv4.i.i209.6.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i210_6_2 tmp_to_be_used v_conv4_i_i209_6_2 1;
(*   %conv5.i.i211.6.2 = trunc i32 %shr.i.i210.6.2 to i8 *)
split tmp_v_shr_i_i210_6_2 v_conv5_i_i211_6_2 v_shr_i_i210_6_2 8;
vpc v_conv5_i_i211_6_2@uint8 v_conv5_i_i211_6_2@uint32;
(*   %conv6.i.i212.6.2 = zext i8 %conv7.i.i214.5.2 to i32 *)
cast v_conv6_i_i212_6_2@uint32 v_conv7_i_i214_5_2@uint8;
(*   %shl.i.i213.6.2 = shl i32 %conv6.i.i212.6.2, 1 *)
shls discard_62 v_shl_i_i213_6_2 v_conv6_i_i212_6_2 1;
(*   %conv7.i.i214.6.2 = trunc i32 %shl.i.i213.6.2 to i8 *)
split tmp_v_shl_i_i213_6_2 v_conv7_i_i214_6_2 v_shl_i_i213_6_2 8;
vpc v_conv7_i_i214_6_2@uint8 v_conv7_i_i214_6_2@uint32;
(*   %conv.i.i202.7.2 = zext i8 %conv5.i.i211.6.2 to i32 *)
cast v_conv_i_i202_7_2@uint32 v_conv5_i_i211_6_2@uint8;
(*   %and.i.i203.7.2 = and i32 %conv.i.i202.7.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i203_7_2 v_conv_i_i202_7_2 (0x1)@uint32;
(*   %conv1.i.i204.7.2 = zext i8 %conv7.i.i214.6.2 to i32 *)
cast v_conv1_i_i204_7_2@uint32 v_conv7_i_i214_6_2@uint8;
(*   %mul.i.i205.7.2 = mul nsw i32 %and.i.i203.7.2, %conv1.i.i204.7.2 *)
mul v_mul_i_i205_7_2 v_and_i_i203_7_2 v_conv1_i_i204_7_2;
(*   %conv2.i.i206.7.2 = zext i8 %conv3.i.i208.6.2 to i32 *)
cast v_conv2_i_i206_7_2@uint32 v_conv3_i_i208_6_2@uint8;
(*   %xor.i.i207.7.2 = xor i32 %conv2.i.i206.7.2, %mul.i.i205.7.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i207_7_2 v_conv2_i_i206_7_2 v_mul_i_i205_7_2;
(*   %conv3.i.i208.7.2 = trunc i32 %xor.i.i207.7.2 to i8 *)
split tmp_v_xor_i_i207_7_2 v_conv3_i_i208_7_2 v_xor_i_i207_7_2 8;
vpc v_conv3_i_i208_7_2@uint8 v_conv3_i_i208_7_2@uint32;
(*   %arrayidx6.i218.2 = getelementptr inbounds i8, i8* %add.ptr8, i64 2 *)
(*   store i8 %conv3.i.i208.7.2, i8* %arrayidx6.i218.2, align 1 *)
mov cc_11 v_conv3_i_i208_7_2;
(*   %add.ptr11 = getelementptr inbounds i8, i8* %r, i64 3 *)
(*   %scevgep100 = getelementptr [18 x i8], [18 x i8]* %cc, i64 0, i64 3 *)
(*   %scevgep100101 = bitcast i8* %scevgep100 to [18 x i8]* *)
(*   %scevgep110 = getelementptr [18 x i8], [18 x i8]* %dd, i64 0, i64 3 *)
(*   %scevgep106 = getelementptr [18 x i8], [18 x i8]* %scevgep100101, i64 0, i64 0 *)
(*   %18 = load i8, i8* %scevgep106, align 1 *)
mov v18 cc_3;
(*   %conv.i241 = zext i8 %18 to i32 *)
cast v_conv_i241@uint32 v18@uint8;
(*   %19 = load i8, i8* %add.ptr11, align 1 *)
mov v19 r_3;
(*   %conv5.i246 = zext i8 %19 to i32 *)
cast v_conv5_i246@uint32 v19@uint8;
(*   %xor.i247 = xor i32 %conv.i241, %conv5.i246 *)
(* You may need to modify here *)
xor uint32 v_xor_i247 v_conv_i241 v_conv5_i246;
(*   %conv6.i248 = trunc i32 %xor.i247 to i8 *)
split tmp_v_xor_i247 v_conv6_i248 v_xor_i247 8;
vpc v_conv6_i248@uint8 v_conv6_i248@uint32;
(*   store i8 %conv6.i248, i8* %scevgep110, align 1 *)
mov dd_3 v_conv6_i248;
(*   %scevgep103 = getelementptr [18 x i8], [18 x i8]* %scevgep100101, i64 0, i64 1 *)
(*   %20 = bitcast i8* %scevgep103 to [18 x i8]* *)
(*   %scevgep108 = getelementptr i8, i8* %add.ptr11, i64 1 *)
(*   %scevgep106.1 = getelementptr [18 x i8], [18 x i8]* %20, i64 0, i64 0 *)
(*   %21 = load i8, i8* %scevgep106.1, align 1 *)
mov v21 cc_4;
(*   %conv.i241.1 = zext i8 %21 to i32 *)
cast v_conv_i241_1@uint32 v21@uint8;
(*   %22 = load i8, i8* %scevgep108, align 1 *)
mov v22 r_4;
(*   %conv5.i246.1 = zext i8 %22 to i32 *)
cast v_conv5_i246_1@uint32 v22@uint8;
(*   %xor.i247.1 = xor i32 %conv.i241.1, %conv5.i246.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i247_1 v_conv_i241_1 v_conv5_i246_1;
(*   %conv6.i248.1 = trunc i32 %xor.i247.1 to i8 *)
split tmp_v_xor_i247_1 v_conv6_i248_1 v_xor_i247_1 8;
vpc v_conv6_i248_1@uint8 v_conv6_i248_1@uint32;
(*   %scevgep111.1 = getelementptr i8, i8* %scevgep110, i64 1 *)
(*   store i8 %conv6.i248.1, i8* %scevgep111.1, align 1 *)
mov dd_4 v_conv6_i248_1;
(*   %scevgep103.1 = getelementptr [18 x i8], [18 x i8]* %20, i64 0, i64 1 *)
(*   %23 = bitcast i8* %scevgep103.1 to [18 x i8]* *)
(*   %scevgep108.1 = getelementptr i8, i8* %scevgep108, i64 1 *)
(*   %scevgep106.2 = getelementptr [18 x i8], [18 x i8]* %23, i64 0, i64 0 *)
(*   %24 = load i8, i8* %scevgep106.2, align 1 *)
mov v24 cc_5;
(*   %conv.i241.2 = zext i8 %24 to i32 *)
cast v_conv_i241_2@uint32 v24@uint8;
(*   %25 = load i8, i8* %scevgep108.1, align 1 *)
mov v25 r_5;
(*   %conv5.i246.2 = zext i8 %25 to i32 *)
cast v_conv5_i246_2@uint32 v25@uint8;
(*   %xor.i247.2 = xor i32 %conv.i241.2, %conv5.i246.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i247_2 v_conv_i241_2 v_conv5_i246_2;
(*   %conv6.i248.2 = trunc i32 %xor.i247.2 to i8 *)
split tmp_v_xor_i247_2 v_conv6_i248_2 v_xor_i247_2 8;
vpc v_conv6_i248_2@uint8 v_conv6_i248_2@uint32;
(*   %scevgep111.2 = getelementptr i8, i8* %scevgep110, i64 2 *)
(*   store i8 %conv6.i248.2, i8* %scevgep111.2, align 1 *)
mov dd_5 v_conv6_i248_2;
(*   %scevgep45 = getelementptr [18 x i8], [18 x i8]* %dd, i64 0, i64 3 *)
(*   %scevgep4546 = bitcast i8* %scevgep45 to [18 x i8]* *)
(*   %scevgep54 = getelementptr [18 x i8], [18 x i8]* %cc, i64 0, i64 6 *)
(*   %scevgep5455 = bitcast i8* %scevgep54 to [18 x i8]* *)
(*   %scevgep61 = getelementptr [18 x i8], [18 x i8]* %dd, i64 0, i64 6 *)
(*   %scevgep6162 = bitcast i8* %scevgep61 to [18 x i8]* *)
(*   %scevgep72 = getelementptr [18 x i8], [18 x i8]* %cc, i64 0, i64 9 *)
(*   %scevgep7273 = bitcast i8* %scevgep72 to [18 x i8]* *)
(*   %scevgep79 = getelementptr [18 x i8], [18 x i8]* %dd, i64 0, i64 9 *)
(*   %scevgep7980 = bitcast i8* %scevgep79 to [18 x i8]* *)
(*   %scevgep94 = getelementptr [18 x i8], [18 x i8]* %dd, i64 0, i64 12 *)
(*   %scevgep9495 = bitcast i8* %scevgep94 to [18 x i8]* *)
(*   %scevgep53 = getelementptr [18 x i8], [18 x i8]* %scevgep4546, i64 0, i64 0 *)
(*   %scevgep60 = getelementptr [18 x i8], [18 x i8]* %scevgep5455, i64 0, i64 0 *)
(*   %26 = load i8, i8* %scevgep53, align 1 *)
mov v26 dd_3;
(*   %conv.i320 = zext i8 %26 to i32 *)
cast v_conv_i320@uint32 v26@uint8;
(*   %27 = load i8, i8* %scevgep60, align 1 *)
mov v27 cc_6;
(*   %conv5.i325 = zext i8 %27 to i32 *)
cast v_conv5_i325@uint32 v27@uint8;
(*   %xor.i326 = xor i32 %conv.i320, %conv5.i325 *)
(* You may need to modify here *)
xor uint32 v_xor_i326 v_conv_i320 v_conv5_i325;
(*   %conv6.i327 = trunc i32 %xor.i326 to i8 *)
split tmp_v_xor_i326 v_conv6_i327 v_xor_i326 8;
vpc v_conv6_i327@uint8 v_conv6_i327@uint32;
(*   %scevgep65 = getelementptr [18 x i8], [18 x i8]* %scevgep6162, i64 0, i64 0 *)
(*   store i8 %conv6.i327, i8* %scevgep65, align 1 *)
mov dd_6 v_conv6_i327;
(*   %scevgep50 = getelementptr [18 x i8], [18 x i8]* %scevgep4546, i64 0, i64 1 *)
(*   %28 = bitcast i8* %scevgep50 to [18 x i8]* *)
(*   %scevgep59 = getelementptr [18 x i8], [18 x i8]* %scevgep5455, i64 0, i64 1 *)
(*   %29 = bitcast i8* %scevgep59 to [18 x i8]* *)
(*   %scevgep53.1 = getelementptr [18 x i8], [18 x i8]* %28, i64 0, i64 0 *)
(*   %scevgep60.1 = getelementptr [18 x i8], [18 x i8]* %29, i64 0, i64 0 *)
(*   %30 = load i8, i8* %scevgep53.1, align 1 *)
mov v30 dd_4;
(*   %conv.i320.1 = zext i8 %30 to i32 *)
cast v_conv_i320_1@uint32 v30@uint8;
(*   %31 = load i8, i8* %scevgep60.1, align 1 *)
mov v31 cc_7;
(*   %conv5.i325.1 = zext i8 %31 to i32 *)
cast v_conv5_i325_1@uint32 v31@uint8;
(*   %xor.i326.1 = xor i32 %conv.i320.1, %conv5.i325.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i326_1 v_conv_i320_1 v_conv5_i325_1;
(*   %conv6.i327.1 = trunc i32 %xor.i326.1 to i8 *)
split tmp_v_xor_i326_1 v_conv6_i327_1 v_xor_i326_1 8;
vpc v_conv6_i327_1@uint8 v_conv6_i327_1@uint32;
(*   %scevgep65.1 = getelementptr [18 x i8], [18 x i8]* %scevgep6162, i64 0, i64 1 *)
(*   store i8 %conv6.i327.1, i8* %scevgep65.1, align 1 *)
mov dd_7 v_conv6_i327_1;
(*   %scevgep50.1 = getelementptr [18 x i8], [18 x i8]* %28, i64 0, i64 1 *)
(*   %32 = bitcast i8* %scevgep50.1 to [18 x i8]* *)
(*   %scevgep59.1 = getelementptr [18 x i8], [18 x i8]* %29, i64 0, i64 1 *)
(*   %33 = bitcast i8* %scevgep59.1 to [18 x i8]* *)
(*   %scevgep53.2 = getelementptr [18 x i8], [18 x i8]* %32, i64 0, i64 0 *)
(*   %scevgep60.2 = getelementptr [18 x i8], [18 x i8]* %33, i64 0, i64 0 *)
(*   %34 = load i8, i8* %scevgep53.2, align 1 *)
mov v34 dd_5;
(*   %conv.i320.2 = zext i8 %34 to i32 *)
cast v_conv_i320_2@uint32 v34@uint8;
(*   %35 = load i8, i8* %scevgep60.2, align 1 *)
mov v35 cc_8;
(*   %conv5.i325.2 = zext i8 %35 to i32 *)
cast v_conv5_i325_2@uint32 v35@uint8;
(*   %xor.i326.2 = xor i32 %conv.i320.2, %conv5.i325.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i326_2 v_conv_i320_2 v_conv5_i325_2;
(*   %conv6.i327.2 = trunc i32 %xor.i326.2 to i8 *)
split tmp_v_xor_i326_2 v_conv6_i327_2 v_xor_i326_2 8;
vpc v_conv6_i327_2@uint8 v_conv6_i327_2@uint32;
(*   %scevgep65.2 = getelementptr [18 x i8], [18 x i8]* %scevgep6162, i64 0, i64 2 *)
(*   store i8 %conv6.i327.2, i8* %scevgep65.2, align 1 *)
mov dd_8 v_conv6_i327_2;
(*   %scevgep71 = getelementptr [18 x i8], [18 x i8]* %scevgep6162, i64 0, i64 0 *)
(*   %scevgep78 = getelementptr [18 x i8], [18 x i8]* %scevgep7273, i64 0, i64 0 *)
(*   %36 = load i8, i8* %scevgep71, align 1 *)
mov v36 dd_6;
(*   %conv.i295 = zext i8 %36 to i32 *)
cast v_conv_i295@uint32 v36@uint8;
(*   %37 = load i8, i8* %scevgep78, align 1 *)
mov v37 cc_9;
(*   %conv5.i300 = zext i8 %37 to i32 *)
cast v_conv5_i300@uint32 v37@uint8;
(*   %xor.i301 = xor i32 %conv.i295, %conv5.i300 *)
(* You may need to modify here *)
xor uint32 v_xor_i301 v_conv_i295 v_conv5_i300;
(*   %conv6.i302 = trunc i32 %xor.i301 to i8 *)
split tmp_v_xor_i301 v_conv6_i302 v_xor_i301 8;
vpc v_conv6_i302@uint8 v_conv6_i302@uint32;
(*   %scevgep83 = getelementptr [18 x i8], [18 x i8]* %scevgep7980, i64 0, i64 0 *)
(*   store i8 %conv6.i302, i8* %scevgep83, align 1 *)
mov dd_9 v_conv6_i302;
(*   %scevgep68 = getelementptr [18 x i8], [18 x i8]* %scevgep6162, i64 0, i64 1 *)
(*   %38 = bitcast i8* %scevgep68 to [18 x i8]* *)
(*   %scevgep77 = getelementptr [18 x i8], [18 x i8]* %scevgep7273, i64 0, i64 1 *)
(*   %39 = bitcast i8* %scevgep77 to [18 x i8]* *)
(*   %scevgep71.1 = getelementptr [18 x i8], [18 x i8]* %38, i64 0, i64 0 *)
(*   %scevgep78.1 = getelementptr [18 x i8], [18 x i8]* %39, i64 0, i64 0 *)
(*   %40 = load i8, i8* %scevgep71.1, align 1 *)
mov v40 dd_7;
(*   %conv.i295.1 = zext i8 %40 to i32 *)
cast v_conv_i295_1@uint32 v40@uint8;
(*   %41 = load i8, i8* %scevgep78.1, align 1 *)
mov v41 cc_10;
(*   %conv5.i300.1 = zext i8 %41 to i32 *)
cast v_conv5_i300_1@uint32 v41@uint8;
(*   %xor.i301.1 = xor i32 %conv.i295.1, %conv5.i300.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i301_1 v_conv_i295_1 v_conv5_i300_1;
(*   %conv6.i302.1 = trunc i32 %xor.i301.1 to i8 *)
split tmp_v_xor_i301_1 v_conv6_i302_1 v_xor_i301_1 8;
vpc v_conv6_i302_1@uint8 v_conv6_i302_1@uint32;
(*   %scevgep83.1 = getelementptr [18 x i8], [18 x i8]* %scevgep7980, i64 0, i64 1 *)
(*   store i8 %conv6.i302.1, i8* %scevgep83.1, align 1 *)
mov dd_10 v_conv6_i302_1;
(*   %scevgep68.1 = getelementptr [18 x i8], [18 x i8]* %38, i64 0, i64 1 *)
(*   %42 = bitcast i8* %scevgep68.1 to [18 x i8]* *)
(*   %scevgep77.1 = getelementptr [18 x i8], [18 x i8]* %39, i64 0, i64 1 *)
(*   %43 = bitcast i8* %scevgep77.1 to [18 x i8]* *)
(*   %scevgep71.2 = getelementptr [18 x i8], [18 x i8]* %42, i64 0, i64 0 *)
(*   %scevgep78.2 = getelementptr [18 x i8], [18 x i8]* %43, i64 0, i64 0 *)
(*   %44 = load i8, i8* %scevgep71.2, align 1 *)
mov v44 dd_8;
(*   %conv.i295.2 = zext i8 %44 to i32 *)
cast v_conv_i295_2@uint32 v44@uint8;
(*   %45 = load i8, i8* %scevgep78.2, align 1 *)
mov v45 cc_11;
(*   %conv5.i300.2 = zext i8 %45 to i32 *)
cast v_conv5_i300_2@uint32 v45@uint8;
(*   %xor.i301.2 = xor i32 %conv.i295.2, %conv5.i300.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i301_2 v_conv_i295_2 v_conv5_i300_2;
(*   %conv6.i302.2 = trunc i32 %xor.i301.2 to i8 *)
split tmp_v_xor_i301_2 v_conv6_i302_2 v_xor_i301_2 8;
vpc v_conv6_i302_2@uint8 v_conv6_i302_2@uint32;
(*   %scevgep83.2 = getelementptr [18 x i8], [18 x i8]* %scevgep7980, i64 0, i64 2 *)
(*   store i8 %conv6.i302.2, i8* %scevgep83.2, align 1 *)
mov dd_11 v_conv6_i302_2;
(*   %add.ptr65 = getelementptr inbounds i8, i8* %r, i64 3 *)
(*   %scevgep89 = getelementptr [18 x i8], [18 x i8]* %scevgep7980, i64 0, i64 0 *)
(*   %46 = load i8, i8* %scevgep89, align 1 *)
mov v46 dd_9;
(*   %conv.i263 = zext i8 %46 to i32 *)
cast v_conv_i263@uint32 v46@uint8;
(*   %arrayidx4.i267 = getelementptr inbounds i8, i8* %add.ptr65, i64 1 *)
(*   %47 = load i8, i8* %arrayidx4.i267, align 1 *)
mov v47 r_4;
(*   %conv5.i268 = zext i8 %47 to i32 *)
cast v_conv5_i268@uint32 v47@uint8;
(*   %xor.i269 = xor i32 %conv.i263, %conv5.i268 *)
(* You may need to modify here *)
xor uint32 v_xor_i269 v_conv_i263 v_conv5_i268;
(*   %conv6.i270 = trunc i32 %xor.i269 to i8 *)
split tmp_v_xor_i269 v_conv6_i270 v_xor_i269 8;
vpc v_conv6_i270@uint8 v_conv6_i270@uint32;
(*   %scevgep98 = getelementptr [18 x i8], [18 x i8]* %scevgep9495, i64 0, i64 0 *)
(*   store i8 %conv6.i270, i8* %scevgep98, align 1 *)
mov dd_12 v_conv6_i270;
(*   %scevgep86 = getelementptr [18 x i8], [18 x i8]* %scevgep7980, i64 0, i64 1 *)
(*   %48 = bitcast i8* %scevgep86 to [18 x i8]* *)
(*   %scevgep89.1 = getelementptr [18 x i8], [18 x i8]* %48, i64 0, i64 0 *)
(*   %49 = load i8, i8* %scevgep89.1, align 1 *)
mov v49 dd_10;
(*   %conv.i263.1 = zext i8 %49 to i32 *)
cast v_conv_i263_1@uint32 v49@uint8;
(*   %arrayidx4.i267.1 = getelementptr inbounds i8, i8* %add.ptr65, i64 2 *)
(*   %50 = load i8, i8* %arrayidx4.i267.1, align 1 *)
mov v50 r_5;
(*   %conv5.i268.1 = zext i8 %50 to i32 *)
cast v_conv5_i268_1@uint32 v50@uint8;
(*   %xor.i269.1 = xor i32 %conv.i263.1, %conv5.i268.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i269_1 v_conv_i263_1 v_conv5_i268_1;
(*   %conv6.i270.1 = trunc i32 %xor.i269.1 to i8 *)
split tmp_v_xor_i269_1 v_conv6_i270_1 v_xor_i269_1 8;
vpc v_conv6_i270_1@uint8 v_conv6_i270_1@uint32;
(*   %scevgep98.1 = getelementptr [18 x i8], [18 x i8]* %scevgep9495, i64 0, i64 1 *)
(*   store i8 %conv6.i270.1, i8* %scevgep98.1, align 1 *)
mov dd_13 v_conv6_i270_1;
(*   %scevgep86.1 = getelementptr [18 x i8], [18 x i8]* %48, i64 0, i64 1 *)
(*   %51 = bitcast i8* %scevgep86.1 to [18 x i8]* *)
(*   %scevgep89.2 = getelementptr [18 x i8], [18 x i8]* %51, i64 0, i64 0 *)
(*   %52 = load i8, i8* %scevgep89.2, align 1 *)
mov v52 dd_11;
(*   %conv.i263.2 = zext i8 %52 to i32 *)
cast v_conv_i263_2@uint32 v52@uint8;
(*   %53 = load i8, i8* %add.ptr65, align 1 *)
mov v53 r_3;
(*   %conv5.i268.2 = zext i8 %53 to i32 *)
cast v_conv5_i268_2@uint32 v53@uint8;
(*   %xor.i269.2 = xor i32 %conv.i263.2, %conv5.i268.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i269_2 v_conv_i263_2 v_conv5_i268_2;
(*   %conv6.i270.2 = trunc i32 %xor.i269.2 to i8 *)
split tmp_v_xor_i269_2 v_conv6_i270_2 v_xor_i269_2 8;
vpc v_conv6_i270_2@uint8 v_conv6_i270_2@uint32;
(*   %scevgep98.2 = getelementptr [18 x i8], [18 x i8]* %scevgep9495, i64 0, i64 2 *)
(*   store i8 %conv6.i270.2, i8* %scevgep98.2, align 1 *)
mov dd_14 v_conv6_i270_2;
(*   %scevgep39 = getelementptr [18 x i8], [18 x i8]* %dd, i64 0, i64 12 *)
(*   %54 = load i8, i8* %scevgep39, align 1 *)
mov v54 dd_12;
(*   store i8 %54, i8* %c, align 1 *)
mov c_0 v54;
(*   %scevgep42.1 = getelementptr i8, i8* %scevgep39, i64 1 *)
(*   %55 = load i8, i8* %scevgep42.1, align 1 *)
mov v55 dd_13;
(*   %scevgep43.1 = getelementptr i8, i8* %c, i64 1 *)
(*   store i8 %55, i8* %scevgep43.1, align 1 *)
mov c_1 v55;
(*   %scevgep42.2 = getelementptr i8, i8* %scevgep39, i64 2 *)
(*   %56 = load i8, i8* %scevgep42.2, align 1 *)
mov v56 dd_14;
(*   %scevgep43.2 = getelementptr i8, i8* %c, i64 2 *)
(*   store i8 %56, i8* %scevgep43.2, align 1 *)
mov c_2 v56;
(*   %57 = load i8, i8* %a, align 1 *)
mov v57 a_0;
(*   %scevgep37.1 = getelementptr i8, i8* %a, i64 1 *)
(*   %58 = load i8, i8* %scevgep37.1, align 1 *)
mov v58 a_1;
(*   %conv.i.i172.1 = zext i8 %58 to i32 *)
cast v_conv_i_i172_1@uint32 v58@uint8;
(*   %conv1.i.i173.1 = zext i8 %57 to i32 *)
cast v_conv1_i_i173_1@uint32 v57@uint8;
(*   %xor.i.i174.1 = xor i32 %conv1.i.i173.1, %conv.i.i172.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i174_1 v_conv1_i_i173_1 v_conv_i_i172_1;
(*   %conv2.i.i175.1 = trunc i32 %xor.i.i174.1 to i8 *)
split tmp_v_xor_i_i174_1 v_conv2_i_i175_1 v_xor_i_i174_1 8;
vpc v_conv2_i_i175_1@uint8 v_conv2_i_i175_1@uint32;
(*   %scevgep37.2 = getelementptr i8, i8* %a, i64 2 *)
(*   %59 = load i8, i8* %scevgep37.2, align 1 *)
mov v59 a_2;
(*   %conv.i.i172.2 = zext i8 %59 to i32 *)
cast v_conv_i_i172_2@uint32 v59@uint8;
(*   %conv1.i.i173.2 = zext i8 %conv2.i.i175.1 to i32 *)
cast v_conv1_i_i173_2@uint32 v_conv2_i_i175_1@uint8;
(*   %xor.i.i174.2 = xor i32 %conv1.i.i173.2, %conv.i.i172.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i174_2 v_conv1_i_i173_2 v_conv_i_i172_2;
(*   %conv2.i.i175.2 = trunc i32 %xor.i.i174.2 to i8 *)
split tmp_v_xor_i_i174_2 v_conv2_i_i175_2 v_xor_i_i174_2 8;
vpc v_conv2_i_i175_2@uint8 v_conv2_i_i175_2@uint32;
(*   %60 = load i8, i8* %b, align 1 *)
mov v60 b_0;
(*   %scevgep33.1 = getelementptr i8, i8* %b, i64 1 *)
(*   %61 = load i8, i8* %scevgep33.1, align 1 *)
mov v61 b_1;
(*   %conv.i.i112.1 = zext i8 %61 to i32 *)
cast v_conv_i_i112_1@uint32 v61@uint8;
(*   %conv1.i.i113.1 = zext i8 %60 to i32 *)
cast v_conv1_i_i113_1@uint32 v60@uint8;
(*   %xor.i.i114.1 = xor i32 %conv1.i.i113.1, %conv.i.i112.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i114_1 v_conv1_i_i113_1 v_conv_i_i112_1;
(*   %conv2.i.i115.1 = trunc i32 %xor.i.i114.1 to i8 *)
split tmp_v_xor_i_i114_1 v_conv2_i_i115_1 v_xor_i_i114_1 8;
vpc v_conv2_i_i115_1@uint8 v_conv2_i_i115_1@uint32;
(*   %scevgep33.2 = getelementptr i8, i8* %b, i64 2 *)
(*   %62 = load i8, i8* %scevgep33.2, align 1 *)
mov v62 b_2;
(*   %conv.i.i112.2 = zext i8 %62 to i32 *)
cast v_conv_i_i112_2@uint32 v62@uint8;
(*   %conv1.i.i113.2 = zext i8 %conv2.i.i115.1 to i32 *)
cast v_conv1_i_i113_2@uint32 v_conv2_i_i115_1@uint8;
(*   %xor.i.i114.2 = xor i32 %conv1.i.i113.2, %conv.i.i112.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i114_2 v_conv1_i_i113_2 v_conv_i_i112_2;
(*   %conv2.i.i115.2 = trunc i32 %xor.i.i114.2 to i8 *)
split tmp_v_xor_i_i114_2 v_conv2_i_i115_2 v_xor_i_i114_2 8;
vpc v_conv2_i_i115_2@uint8 v_conv2_i_i115_2@uint32;
(*   %conv.i = zext i8 %conv2.i.i115.2 to i32 *)
cast v_conv_i@uint32 v_conv2_i_i115_2@uint8;
(*   %and.i = and i32 %conv.i, 1 *)
(* You may need to modify here *)
and uint32 v_and_i v_conv_i (0x1)@uint32;
(*   %conv1.i = zext i8 %conv2.i.i175.2 to i32 *)
cast v_conv1_i@uint32 v_conv2_i_i175_2@uint8;
(*   %mul.i = mul nsw i32 %and.i, %conv1.i *)
mul v_mul_i v_and_i v_conv1_i;
(*   %conv3.i = trunc i32 %mul.i to i8 *)
split tmp_v_mul_i v_conv3_i v_mul_i 8;
vpc v_conv3_i@uint8 v_conv3_i@uint32;
(*   %conv4.i = zext i8 %conv2.i.i115.2 to i32 *)
cast v_conv4_i@uint32 v_conv2_i_i115_2@uint8;
(*   %shr.i = ashr i32 %conv4.i, 1 *)
(* You may need to modify here *)
split v_shr_i tmp_to_be_used v_conv4_i 1;
(*   %conv5.i = trunc i32 %shr.i to i8 *)
split tmp_v_shr_i v_conv5_i v_shr_i 8;
vpc v_conv5_i@uint8 v_conv5_i@uint32;
(*   %conv6.i = zext i8 %conv2.i.i175.2 to i32 *)
cast v_conv6_i@uint32 v_conv2_i_i175_2@uint8;
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
(*   %63 = load i8, i8* %c, align 1 *)
mov v63 c_0;
(*   %scevgep.1 = getelementptr i8, i8* %c, i64 1 *)
(*   %64 = load i8, i8* %scevgep.1, align 1 *)
mov v64 c_1;
(*   %conv.i.i86.1 = zext i8 %64 to i32 *)
cast v_conv_i_i86_1@uint32 v64@uint8;
(*   %conv1.i.i87.1 = zext i8 %63 to i32 *)
cast v_conv1_i_i87_1@uint32 v63@uint8;
(*   %xor.i.i88.1 = xor i32 %conv1.i.i87.1, %conv.i.i86.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i88_1 v_conv1_i_i87_1 v_conv_i_i86_1;
(*   %conv2.i.i89.1 = trunc i32 %xor.i.i88.1 to i8 *)
split tmp_v_xor_i_i88_1 v_conv2_i_i89_1 v_xor_i_i88_1 8;
vpc v_conv2_i_i89_1@uint8 v_conv2_i_i89_1@uint32;
(*   %scevgep.2 = getelementptr i8, i8* %c, i64 2 *)
(*   %65 = load i8, i8* %scevgep.2, align 1 *)
mov v65 c_2;
(*   %conv.i.i86.2 = zext i8 %65 to i32 *)
cast v_conv_i_i86_2@uint32 v65@uint8;
(*   %conv1.i.i87.2 = zext i8 %conv2.i.i89.1 to i32 *)
cast v_conv1_i_i87_2@uint32 v_conv2_i_i89_1@uint8;
(*   %xor.i.i88.2 = xor i32 %conv1.i.i87.2, %conv.i.i86.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i88_2 v_conv1_i_i87_2 v_conv_i_i86_2;
(*   %conv2.i.i89.2 = trunc i32 %xor.i.i88.2 to i8 *)
split tmp_v_xor_i_i88_2 v_conv2_i_i89_2 v_xor_i_i88_2 8;
vpc v_conv2_i_i89_2@uint8 v_conv2_i_i89_2@uint32;
(*   store i8 %conv2.i.i89.2, i8* %C, align 1 *)
mov C_0 v_conv2_i_i89_2;
(*   ret void *)


assert AB_0=C_0 && true;

mov _ AB_0@uint8;
mov _ C_0@uint8;


{
  true
  &&
  true
}

