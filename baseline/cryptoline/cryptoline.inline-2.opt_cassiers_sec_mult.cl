proc main (uint8 a_0, uint8 a_1, uint8 a_2, uint8 b_0, uint8 b_1, uint8 b_2, uint8 r_1, uint8 r_2, uint8 r_5) =
{
  true
  &&
  true
}



(*   %s = alloca [9 x i8], align 1 *)
(*   %p0 = alloca [9 x i8], align 1 *)
(*   %p1 = alloca [9 x i8], align 1 *)
(*   %z = alloca [9 x i8], align 1 *)
(*   %scevgep49 = getelementptr i8, i8* %r, i64 1 *)
(*   %scevgep54 = getelementptr i8, i8* %r, i64 3 *)
(*   %0 = load i8, i8* %scevgep49, align 1 *)
mov v0 r_1;
(*   store i8 %0, i8* %scevgep54, align 1 *)
mov r_3 v0;
(*   %scevgep53 = getelementptr i8, i8* %scevgep49, i64 1 *)
(*   %scevgep58 = getelementptr i8, i8* %scevgep54, i64 3 *)
(*   %1 = load i8, i8* %scevgep53, align 1 *)
mov v1 r_2;
(*   store i8 %1, i8* %scevgep58, align 1 *)
mov r_6 v1;
(*   %scevgep51 = getelementptr i8, i8* %scevgep49, i64 4 *)
(*   %scevgep56 = getelementptr i8, i8* %scevgep54, i64 4 *)
(*   %2 = load i8, i8* %scevgep51, align 1 *)
mov v2 r_5;
(*   store i8 %2, i8* %scevgep56, align 1 *)
mov r_7 v2;
(*   %arrayidx22.1 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %3 = load i8, i8* %arrayidx22.1, align 1 *)
mov v3 b_1;
(*   %conv.1 = zext i8 %3 to i32 *)
cast v_conv_1@uint32 v3@uint8;
(*   %arrayidx26.1 = getelementptr inbounds i8, i8* %r, i64 1 *)
(*   %4 = load i8, i8* %arrayidx26.1, align 1 *)
mov v4 r_1;
(*   %conv27.1 = zext i8 %4 to i32 *)
cast v_conv27_1@uint32 v4@uint8;
(*   %xor.1 = xor i32 %conv.1, %conv27.1 *)
(* You may need to modify here *)
xor uint32 v_xor_1 v_conv_1 v_conv27_1;
(*   %conv28.1 = trunc i32 %xor.1 to i8 *)
split tmp_v_xor_1 v_conv28_1 v_xor_1 8;
vpc v_conv28_1@uint8 v_conv28_1@uint32;
(*   %arrayidx32.1 = getelementptr inbounds [9 x i8], [9 x i8]* %s, i64 0, i64 1 *)
(*   store i8 %conv28.1, i8* %arrayidx32.1, align 1 *)
mov s_1 v_conv28_1;
(*   %5 = load i8, i8* %a, align 1 *)
mov v5 a_0;
(*   %conv35.1 = zext i8 %5 to i32 *)
cast v_conv35_1@uint32 v5@uint8;
(*   %xor36.1 = xor i32 %conv35.1, 1 *)
(* You may need to modify here *)
xor uint32 v_xor36_1 v_conv35_1 (0x1)@uint32;
(*   %conv37.1 = trunc i32 %xor36.1 to i8 *)
split tmp_v_xor36_1 v_conv37_1 v_xor36_1 8;
vpc v_conv37_1@uint8 v_conv37_1@uint32;
(*   %arrayidx41.1 = getelementptr inbounds i8, i8* %r, i64 1 *)
(*   %6 = load i8, i8* %arrayidx41.1, align 1 *)
mov v6 r_1;
(*   %conv.i.1101 = zext i8 %6 to i32 *)
cast v_conv_i_1101@uint32 v6@uint8;
(*   %and.i.1102 = and i32 %conv.i.1101, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1102 v_conv_i_1101 (0x1)@uint32;
(*   %conv1.i.1103 = zext i8 %conv37.1 to i32 *)
cast v_conv1_i_1103@uint32 v_conv37_1@uint8;
(*   %mul.i.1104 = mul nsw i32 %and.i.1102, %conv1.i.1103 *)
mul v_mul_i_1104 v_and_i_1102 v_conv1_i_1103;
(*   %conv3.i.1105 = trunc i32 %mul.i.1104 to i8 *)
split tmp_v_mul_i_1104 v_conv3_i_1105 v_mul_i_1104 8;
vpc v_conv3_i_1105@uint8 v_conv3_i_1105@uint32;
(*   %conv4.i.1106 = zext i8 %6 to i32 *)
cast v_conv4_i_1106@uint32 v6@uint8;
(*   %shr.i.1107 = ashr i32 %conv4.i.1106, 1 *)
(* You may need to modify here *)
split v_shr_i_1107 tmp_to_be_used v_conv4_i_1106 1;
(*   %conv5.i.1108 = trunc i32 %shr.i.1107 to i8 *)
split tmp_v_shr_i_1107 v_conv5_i_1108 v_shr_i_1107 8;
vpc v_conv5_i_1108@uint8 v_conv5_i_1108@uint32;
(*   %conv6.i.1109 = zext i8 %conv37.1 to i32 *)
cast v_conv6_i_1109@uint32 v_conv37_1@uint8;
(*   %shl.i.1110 = shl i32 %conv6.i.1109, 1 *)
shls discard_0 v_shl_i_1110 v_conv6_i_1109 1;
(*   %conv7.i.1111 = trunc i32 %shl.i.1110 to i8 *)
split tmp_v_shl_i_1110 v_conv7_i_1111 v_shl_i_1110 8;
vpc v_conv7_i_1111@uint8 v_conv7_i_1111@uint32;
(*   %conv.i.1.1 = zext i8 %conv5.i.1108 to i32 *)
cast v_conv_i_1_1@uint32 v_conv5_i_1108@uint8;
(*   %and.i.1.1 = and i32 %conv.i.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_1 v_conv_i_1_1 (0x1)@uint32;
(*   %conv1.i.1.1 = zext i8 %conv7.i.1111 to i32 *)
cast v_conv1_i_1_1@uint32 v_conv7_i_1111@uint8;
(*   %mul.i.1.1 = mul nsw i32 %and.i.1.1, %conv1.i.1.1 *)
mul v_mul_i_1_1 v_and_i_1_1 v_conv1_i_1_1;
(*   %conv2.i.1.1 = zext i8 %conv3.i.1105 to i32 *)
cast v_conv2_i_1_1@uint32 v_conv3_i_1105@uint8;
(*   %xor.i.1.1 = xor i32 %conv2.i.1.1, %mul.i.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_1 v_conv2_i_1_1 v_mul_i_1_1;
(*   %conv3.i.1.1 = trunc i32 %xor.i.1.1 to i8 *)
split tmp_v_xor_i_1_1 v_conv3_i_1_1 v_xor_i_1_1 8;
vpc v_conv3_i_1_1@uint8 v_conv3_i_1_1@uint32;
(*   %conv4.i.1.1 = zext i8 %conv5.i.1108 to i32 *)
cast v_conv4_i_1_1@uint32 v_conv5_i_1108@uint8;
(*   %shr.i.1.1 = ashr i32 %conv4.i.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_1_1 tmp_to_be_used v_conv4_i_1_1 1;
(*   %conv5.i.1.1 = trunc i32 %shr.i.1.1 to i8 *)
split tmp_v_shr_i_1_1 v_conv5_i_1_1 v_shr_i_1_1 8;
vpc v_conv5_i_1_1@uint8 v_conv5_i_1_1@uint32;
(*   %conv6.i.1.1 = zext i8 %conv7.i.1111 to i32 *)
cast v_conv6_i_1_1@uint32 v_conv7_i_1111@uint8;
(*   %shl.i.1.1 = shl i32 %conv6.i.1.1, 1 *)
shls discard_1 v_shl_i_1_1 v_conv6_i_1_1 1;
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
shls discard_2 v_shl_i_2_1 v_conv6_i_2_1 1;
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
shls discard_3 v_shl_i_3_1 v_conv6_i_3_1 1;
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
shls discard_4 v_shl_i_4_1 v_conv6_i_4_1 1;
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
shls discard_5 v_shl_i_5_1 v_conv6_i_5_1 1;
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
shls discard_6 v_shl_i_6_1 v_conv6_i_6_1 1;
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
(*   %arrayidx45.1 = getelementptr inbounds [9 x i8], [9 x i8]* %p0, i64 0, i64 1 *)
(*   store i8 %conv3.i.7.1, i8* %arrayidx45.1, align 1 *)
mov p0_1 v_conv3_i_7_1;
(*   %7 = load i8, i8* %a, align 1 *)
mov v7 a_0;
(*   %arrayidx51.1 = getelementptr inbounds [9 x i8], [9 x i8]* %s, i64 0, i64 1 *)
(*   %8 = load i8, i8* %arrayidx51.1, align 1 *)
mov v8 s_1;
(*   %conv.i127.1112 = zext i8 %8 to i32 *)
cast v_conv_i127_1112@uint32 v8@uint8;
(*   %and.i128.1113 = and i32 %conv.i127.1112, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1113 v_conv_i127_1112 (0x1)@uint32;
(*   %conv1.i129.1114 = zext i8 %7 to i32 *)
cast v_conv1_i129_1114@uint32 v7@uint8;
(*   %mul.i130.1115 = mul nsw i32 %and.i128.1113, %conv1.i129.1114 *)
mul v_mul_i130_1115 v_and_i128_1113 v_conv1_i129_1114;
(*   %conv3.i133.1116 = trunc i32 %mul.i130.1115 to i8 *)
split tmp_v_mul_i130_1115 v_conv3_i133_1116 v_mul_i130_1115 8;
vpc v_conv3_i133_1116@uint8 v_conv3_i133_1116@uint32;
(*   %conv4.i134.1117 = zext i8 %8 to i32 *)
cast v_conv4_i134_1117@uint32 v8@uint8;
(*   %shr.i135.1118 = ashr i32 %conv4.i134.1117, 1 *)
(* You may need to modify here *)
split v_shr_i135_1118 tmp_to_be_used v_conv4_i134_1117 1;
(*   %conv5.i136.1119 = trunc i32 %shr.i135.1118 to i8 *)
split tmp_v_shr_i135_1118 v_conv5_i136_1119 v_shr_i135_1118 8;
vpc v_conv5_i136_1119@uint8 v_conv5_i136_1119@uint32;
(*   %conv6.i137.1120 = zext i8 %7 to i32 *)
cast v_conv6_i137_1120@uint32 v7@uint8;
(*   %shl.i138.1121 = shl i32 %conv6.i137.1120, 1 *)
shls discard_7 v_shl_i138_1121 v_conv6_i137_1120 1;
(*   %conv7.i139.1122 = trunc i32 %shl.i138.1121 to i8 *)
split tmp_v_shl_i138_1121 v_conv7_i139_1122 v_shl_i138_1121 8;
vpc v_conv7_i139_1122@uint8 v_conv7_i139_1122@uint32;
(*   %conv.i127.1.1 = zext i8 %conv5.i136.1119 to i32 *)
cast v_conv_i127_1_1@uint32 v_conv5_i136_1119@uint8;
(*   %and.i128.1.1 = and i32 %conv.i127.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1_1 v_conv_i127_1_1 (0x1)@uint32;
(*   %conv1.i129.1.1 = zext i8 %conv7.i139.1122 to i32 *)
cast v_conv1_i129_1_1@uint32 v_conv7_i139_1122@uint8;
(*   %mul.i130.1.1 = mul nsw i32 %and.i128.1.1, %conv1.i129.1.1 *)
mul v_mul_i130_1_1 v_and_i128_1_1 v_conv1_i129_1_1;
(*   %conv2.i131.1.1 = zext i8 %conv3.i133.1116 to i32 *)
cast v_conv2_i131_1_1@uint32 v_conv3_i133_1116@uint8;
(*   %xor.i132.1.1 = xor i32 %conv2.i131.1.1, %mul.i130.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_1_1 v_conv2_i131_1_1 v_mul_i130_1_1;
(*   %conv3.i133.1.1 = trunc i32 %xor.i132.1.1 to i8 *)
split tmp_v_xor_i132_1_1 v_conv3_i133_1_1 v_xor_i132_1_1 8;
vpc v_conv3_i133_1_1@uint8 v_conv3_i133_1_1@uint32;
(*   %conv4.i134.1.1 = zext i8 %conv5.i136.1119 to i32 *)
cast v_conv4_i134_1_1@uint32 v_conv5_i136_1119@uint8;
(*   %shr.i135.1.1 = ashr i32 %conv4.i134.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i135_1_1 tmp_to_be_used v_conv4_i134_1_1 1;
(*   %conv5.i136.1.1 = trunc i32 %shr.i135.1.1 to i8 *)
split tmp_v_shr_i135_1_1 v_conv5_i136_1_1 v_shr_i135_1_1 8;
vpc v_conv5_i136_1_1@uint8 v_conv5_i136_1_1@uint32;
(*   %conv6.i137.1.1 = zext i8 %conv7.i139.1122 to i32 *)
cast v_conv6_i137_1_1@uint32 v_conv7_i139_1122@uint8;
(*   %shl.i138.1.1 = shl i32 %conv6.i137.1.1, 1 *)
shls discard_8 v_shl_i138_1_1 v_conv6_i137_1_1 1;
(*   %conv7.i139.1.1 = trunc i32 %shl.i138.1.1 to i8 *)
split tmp_v_shl_i138_1_1 v_conv7_i139_1_1 v_shl_i138_1_1 8;
vpc v_conv7_i139_1_1@uint8 v_conv7_i139_1_1@uint32;
(*   %conv.i127.2.1 = zext i8 %conv5.i136.1.1 to i32 *)
cast v_conv_i127_2_1@uint32 v_conv5_i136_1_1@uint8;
(*   %and.i128.2.1 = and i32 %conv.i127.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_2_1 v_conv_i127_2_1 (0x1)@uint32;
(*   %conv1.i129.2.1 = zext i8 %conv7.i139.1.1 to i32 *)
cast v_conv1_i129_2_1@uint32 v_conv7_i139_1_1@uint8;
(*   %mul.i130.2.1 = mul nsw i32 %and.i128.2.1, %conv1.i129.2.1 *)
mul v_mul_i130_2_1 v_and_i128_2_1 v_conv1_i129_2_1;
(*   %conv2.i131.2.1 = zext i8 %conv3.i133.1.1 to i32 *)
cast v_conv2_i131_2_1@uint32 v_conv3_i133_1_1@uint8;
(*   %xor.i132.2.1 = xor i32 %conv2.i131.2.1, %mul.i130.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_2_1 v_conv2_i131_2_1 v_mul_i130_2_1;
(*   %conv3.i133.2.1 = trunc i32 %xor.i132.2.1 to i8 *)
split tmp_v_xor_i132_2_1 v_conv3_i133_2_1 v_xor_i132_2_1 8;
vpc v_conv3_i133_2_1@uint8 v_conv3_i133_2_1@uint32;
(*   %conv4.i134.2.1 = zext i8 %conv5.i136.1.1 to i32 *)
cast v_conv4_i134_2_1@uint32 v_conv5_i136_1_1@uint8;
(*   %shr.i135.2.1 = ashr i32 %conv4.i134.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i135_2_1 tmp_to_be_used v_conv4_i134_2_1 1;
(*   %conv5.i136.2.1 = trunc i32 %shr.i135.2.1 to i8 *)
split tmp_v_shr_i135_2_1 v_conv5_i136_2_1 v_shr_i135_2_1 8;
vpc v_conv5_i136_2_1@uint8 v_conv5_i136_2_1@uint32;
(*   %conv6.i137.2.1 = zext i8 %conv7.i139.1.1 to i32 *)
cast v_conv6_i137_2_1@uint32 v_conv7_i139_1_1@uint8;
(*   %shl.i138.2.1 = shl i32 %conv6.i137.2.1, 1 *)
shls discard_9 v_shl_i138_2_1 v_conv6_i137_2_1 1;
(*   %conv7.i139.2.1 = trunc i32 %shl.i138.2.1 to i8 *)
split tmp_v_shl_i138_2_1 v_conv7_i139_2_1 v_shl_i138_2_1 8;
vpc v_conv7_i139_2_1@uint8 v_conv7_i139_2_1@uint32;
(*   %conv.i127.3.1 = zext i8 %conv5.i136.2.1 to i32 *)
cast v_conv_i127_3_1@uint32 v_conv5_i136_2_1@uint8;
(*   %and.i128.3.1 = and i32 %conv.i127.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_3_1 v_conv_i127_3_1 (0x1)@uint32;
(*   %conv1.i129.3.1 = zext i8 %conv7.i139.2.1 to i32 *)
cast v_conv1_i129_3_1@uint32 v_conv7_i139_2_1@uint8;
(*   %mul.i130.3.1 = mul nsw i32 %and.i128.3.1, %conv1.i129.3.1 *)
mul v_mul_i130_3_1 v_and_i128_3_1 v_conv1_i129_3_1;
(*   %conv2.i131.3.1 = zext i8 %conv3.i133.2.1 to i32 *)
cast v_conv2_i131_3_1@uint32 v_conv3_i133_2_1@uint8;
(*   %xor.i132.3.1 = xor i32 %conv2.i131.3.1, %mul.i130.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_3_1 v_conv2_i131_3_1 v_mul_i130_3_1;
(*   %conv3.i133.3.1 = trunc i32 %xor.i132.3.1 to i8 *)
split tmp_v_xor_i132_3_1 v_conv3_i133_3_1 v_xor_i132_3_1 8;
vpc v_conv3_i133_3_1@uint8 v_conv3_i133_3_1@uint32;
(*   %conv4.i134.3.1 = zext i8 %conv5.i136.2.1 to i32 *)
cast v_conv4_i134_3_1@uint32 v_conv5_i136_2_1@uint8;
(*   %shr.i135.3.1 = ashr i32 %conv4.i134.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i135_3_1 tmp_to_be_used v_conv4_i134_3_1 1;
(*   %conv5.i136.3.1 = trunc i32 %shr.i135.3.1 to i8 *)
split tmp_v_shr_i135_3_1 v_conv5_i136_3_1 v_shr_i135_3_1 8;
vpc v_conv5_i136_3_1@uint8 v_conv5_i136_3_1@uint32;
(*   %conv6.i137.3.1 = zext i8 %conv7.i139.2.1 to i32 *)
cast v_conv6_i137_3_1@uint32 v_conv7_i139_2_1@uint8;
(*   %shl.i138.3.1 = shl i32 %conv6.i137.3.1, 1 *)
shls discard_10 v_shl_i138_3_1 v_conv6_i137_3_1 1;
(*   %conv7.i139.3.1 = trunc i32 %shl.i138.3.1 to i8 *)
split tmp_v_shl_i138_3_1 v_conv7_i139_3_1 v_shl_i138_3_1 8;
vpc v_conv7_i139_3_1@uint8 v_conv7_i139_3_1@uint32;
(*   %conv.i127.4.1 = zext i8 %conv5.i136.3.1 to i32 *)
cast v_conv_i127_4_1@uint32 v_conv5_i136_3_1@uint8;
(*   %and.i128.4.1 = and i32 %conv.i127.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_4_1 v_conv_i127_4_1 (0x1)@uint32;
(*   %conv1.i129.4.1 = zext i8 %conv7.i139.3.1 to i32 *)
cast v_conv1_i129_4_1@uint32 v_conv7_i139_3_1@uint8;
(*   %mul.i130.4.1 = mul nsw i32 %and.i128.4.1, %conv1.i129.4.1 *)
mul v_mul_i130_4_1 v_and_i128_4_1 v_conv1_i129_4_1;
(*   %conv2.i131.4.1 = zext i8 %conv3.i133.3.1 to i32 *)
cast v_conv2_i131_4_1@uint32 v_conv3_i133_3_1@uint8;
(*   %xor.i132.4.1 = xor i32 %conv2.i131.4.1, %mul.i130.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_4_1 v_conv2_i131_4_1 v_mul_i130_4_1;
(*   %conv3.i133.4.1 = trunc i32 %xor.i132.4.1 to i8 *)
split tmp_v_xor_i132_4_1 v_conv3_i133_4_1 v_xor_i132_4_1 8;
vpc v_conv3_i133_4_1@uint8 v_conv3_i133_4_1@uint32;
(*   %conv4.i134.4.1 = zext i8 %conv5.i136.3.1 to i32 *)
cast v_conv4_i134_4_1@uint32 v_conv5_i136_3_1@uint8;
(*   %shr.i135.4.1 = ashr i32 %conv4.i134.4.1, 1 *)
(* You may need to modify here *)
split v_shr_i135_4_1 tmp_to_be_used v_conv4_i134_4_1 1;
(*   %conv5.i136.4.1 = trunc i32 %shr.i135.4.1 to i8 *)
split tmp_v_shr_i135_4_1 v_conv5_i136_4_1 v_shr_i135_4_1 8;
vpc v_conv5_i136_4_1@uint8 v_conv5_i136_4_1@uint32;
(*   %conv6.i137.4.1 = zext i8 %conv7.i139.3.1 to i32 *)
cast v_conv6_i137_4_1@uint32 v_conv7_i139_3_1@uint8;
(*   %shl.i138.4.1 = shl i32 %conv6.i137.4.1, 1 *)
shls discard_11 v_shl_i138_4_1 v_conv6_i137_4_1 1;
(*   %conv7.i139.4.1 = trunc i32 %shl.i138.4.1 to i8 *)
split tmp_v_shl_i138_4_1 v_conv7_i139_4_1 v_shl_i138_4_1 8;
vpc v_conv7_i139_4_1@uint8 v_conv7_i139_4_1@uint32;
(*   %conv.i127.5.1 = zext i8 %conv5.i136.4.1 to i32 *)
cast v_conv_i127_5_1@uint32 v_conv5_i136_4_1@uint8;
(*   %and.i128.5.1 = and i32 %conv.i127.5.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_5_1 v_conv_i127_5_1 (0x1)@uint32;
(*   %conv1.i129.5.1 = zext i8 %conv7.i139.4.1 to i32 *)
cast v_conv1_i129_5_1@uint32 v_conv7_i139_4_1@uint8;
(*   %mul.i130.5.1 = mul nsw i32 %and.i128.5.1, %conv1.i129.5.1 *)
mul v_mul_i130_5_1 v_and_i128_5_1 v_conv1_i129_5_1;
(*   %conv2.i131.5.1 = zext i8 %conv3.i133.4.1 to i32 *)
cast v_conv2_i131_5_1@uint32 v_conv3_i133_4_1@uint8;
(*   %xor.i132.5.1 = xor i32 %conv2.i131.5.1, %mul.i130.5.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_5_1 v_conv2_i131_5_1 v_mul_i130_5_1;
(*   %conv3.i133.5.1 = trunc i32 %xor.i132.5.1 to i8 *)
split tmp_v_xor_i132_5_1 v_conv3_i133_5_1 v_xor_i132_5_1 8;
vpc v_conv3_i133_5_1@uint8 v_conv3_i133_5_1@uint32;
(*   %conv4.i134.5.1 = zext i8 %conv5.i136.4.1 to i32 *)
cast v_conv4_i134_5_1@uint32 v_conv5_i136_4_1@uint8;
(*   %shr.i135.5.1 = ashr i32 %conv4.i134.5.1, 1 *)
(* You may need to modify here *)
split v_shr_i135_5_1 tmp_to_be_used v_conv4_i134_5_1 1;
(*   %conv5.i136.5.1 = trunc i32 %shr.i135.5.1 to i8 *)
split tmp_v_shr_i135_5_1 v_conv5_i136_5_1 v_shr_i135_5_1 8;
vpc v_conv5_i136_5_1@uint8 v_conv5_i136_5_1@uint32;
(*   %conv6.i137.5.1 = zext i8 %conv7.i139.4.1 to i32 *)
cast v_conv6_i137_5_1@uint32 v_conv7_i139_4_1@uint8;
(*   %shl.i138.5.1 = shl i32 %conv6.i137.5.1, 1 *)
shls discard_12 v_shl_i138_5_1 v_conv6_i137_5_1 1;
(*   %conv7.i139.5.1 = trunc i32 %shl.i138.5.1 to i8 *)
split tmp_v_shl_i138_5_1 v_conv7_i139_5_1 v_shl_i138_5_1 8;
vpc v_conv7_i139_5_1@uint8 v_conv7_i139_5_1@uint32;
(*   %conv.i127.6.1 = zext i8 %conv5.i136.5.1 to i32 *)
cast v_conv_i127_6_1@uint32 v_conv5_i136_5_1@uint8;
(*   %and.i128.6.1 = and i32 %conv.i127.6.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_6_1 v_conv_i127_6_1 (0x1)@uint32;
(*   %conv1.i129.6.1 = zext i8 %conv7.i139.5.1 to i32 *)
cast v_conv1_i129_6_1@uint32 v_conv7_i139_5_1@uint8;
(*   %mul.i130.6.1 = mul nsw i32 %and.i128.6.1, %conv1.i129.6.1 *)
mul v_mul_i130_6_1 v_and_i128_6_1 v_conv1_i129_6_1;
(*   %conv2.i131.6.1 = zext i8 %conv3.i133.5.1 to i32 *)
cast v_conv2_i131_6_1@uint32 v_conv3_i133_5_1@uint8;
(*   %xor.i132.6.1 = xor i32 %conv2.i131.6.1, %mul.i130.6.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_6_1 v_conv2_i131_6_1 v_mul_i130_6_1;
(*   %conv3.i133.6.1 = trunc i32 %xor.i132.6.1 to i8 *)
split tmp_v_xor_i132_6_1 v_conv3_i133_6_1 v_xor_i132_6_1 8;
vpc v_conv3_i133_6_1@uint8 v_conv3_i133_6_1@uint32;
(*   %conv4.i134.6.1 = zext i8 %conv5.i136.5.1 to i32 *)
cast v_conv4_i134_6_1@uint32 v_conv5_i136_5_1@uint8;
(*   %shr.i135.6.1 = ashr i32 %conv4.i134.6.1, 1 *)
(* You may need to modify here *)
split v_shr_i135_6_1 tmp_to_be_used v_conv4_i134_6_1 1;
(*   %conv5.i136.6.1 = trunc i32 %shr.i135.6.1 to i8 *)
split tmp_v_shr_i135_6_1 v_conv5_i136_6_1 v_shr_i135_6_1 8;
vpc v_conv5_i136_6_1@uint8 v_conv5_i136_6_1@uint32;
(*   %conv6.i137.6.1 = zext i8 %conv7.i139.5.1 to i32 *)
cast v_conv6_i137_6_1@uint32 v_conv7_i139_5_1@uint8;
(*   %shl.i138.6.1 = shl i32 %conv6.i137.6.1, 1 *)
shls discard_13 v_shl_i138_6_1 v_conv6_i137_6_1 1;
(*   %conv7.i139.6.1 = trunc i32 %shl.i138.6.1 to i8 *)
split tmp_v_shl_i138_6_1 v_conv7_i139_6_1 v_shl_i138_6_1 8;
vpc v_conv7_i139_6_1@uint8 v_conv7_i139_6_1@uint32;
(*   %conv.i127.7.1 = zext i8 %conv5.i136.6.1 to i32 *)
cast v_conv_i127_7_1@uint32 v_conv5_i136_6_1@uint8;
(*   %and.i128.7.1 = and i32 %conv.i127.7.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_7_1 v_conv_i127_7_1 (0x1)@uint32;
(*   %conv1.i129.7.1 = zext i8 %conv7.i139.6.1 to i32 *)
cast v_conv1_i129_7_1@uint32 v_conv7_i139_6_1@uint8;
(*   %mul.i130.7.1 = mul nsw i32 %and.i128.7.1, %conv1.i129.7.1 *)
mul v_mul_i130_7_1 v_and_i128_7_1 v_conv1_i129_7_1;
(*   %conv2.i131.7.1 = zext i8 %conv3.i133.6.1 to i32 *)
cast v_conv2_i131_7_1@uint32 v_conv3_i133_6_1@uint8;
(*   %xor.i132.7.1 = xor i32 %conv2.i131.7.1, %mul.i130.7.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_7_1 v_conv2_i131_7_1 v_mul_i130_7_1;
(*   %conv3.i133.7.1 = trunc i32 %xor.i132.7.1 to i8 *)
split tmp_v_xor_i132_7_1 v_conv3_i133_7_1 v_xor_i132_7_1 8;
vpc v_conv3_i133_7_1@uint8 v_conv3_i133_7_1@uint32;
(*   %arrayidx56.1 = getelementptr inbounds [9 x i8], [9 x i8]* %p1, i64 0, i64 1 *)
(*   store i8 %conv3.i133.7.1, i8* %arrayidx56.1, align 1 *)
mov p1_1 v_conv3_i133_7_1;
(*   %arrayidx60.1 = getelementptr inbounds [9 x i8], [9 x i8]* %p0, i64 0, i64 1 *)
(*   %9 = load i8, i8* %arrayidx60.1, align 1 *)
mov v9 p0_1;
(*   %conv61.1 = zext i8 %9 to i32 *)
cast v_conv61_1@uint32 v9@uint8;
(*   %arrayidx65.1 = getelementptr inbounds [9 x i8], [9 x i8]* %p1, i64 0, i64 1 *)
(*   %10 = load i8, i8* %arrayidx65.1, align 1 *)
mov v10 p1_1;
(*   %conv66.1 = zext i8 %10 to i32 *)
cast v_conv66_1@uint32 v10@uint8;
(*   %xor67.1 = xor i32 %conv61.1, %conv66.1 *)
(* You may need to modify here *)
xor uint32 v_xor67_1 v_conv61_1 v_conv66_1;
(*   %conv68.1 = trunc i32 %xor67.1 to i8 *)
split tmp_v_xor67_1 v_conv68_1 v_xor67_1 8;
vpc v_conv68_1@uint8 v_conv68_1@uint32;
(*   %arrayidx72.1 = getelementptr inbounds [9 x i8], [9 x i8]* %z, i64 0, i64 1 *)
(*   store i8 %conv68.1, i8* %arrayidx72.1, align 1 *)
mov z_1 v_conv68_1;
(*   %arrayidx22.2 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %11 = load i8, i8* %arrayidx22.2, align 1 *)
mov v11 b_2;
(*   %conv.2 = zext i8 %11 to i32 *)
cast v_conv_2@uint32 v11@uint8;
(*   %arrayidx26.2 = getelementptr inbounds i8, i8* %r, i64 2 *)
(*   %12 = load i8, i8* %arrayidx26.2, align 1 *)
mov v12 r_2;
(*   %conv27.2 = zext i8 %12 to i32 *)
cast v_conv27_2@uint32 v12@uint8;
(*   %xor.2 = xor i32 %conv.2, %conv27.2 *)
(* You may need to modify here *)
xor uint32 v_xor_2 v_conv_2 v_conv27_2;
(*   %conv28.2 = trunc i32 %xor.2 to i8 *)
split tmp_v_xor_2 v_conv28_2 v_xor_2 8;
vpc v_conv28_2@uint8 v_conv28_2@uint32;
(*   %arrayidx32.2 = getelementptr inbounds [9 x i8], [9 x i8]* %s, i64 0, i64 2 *)
(*   store i8 %conv28.2, i8* %arrayidx32.2, align 1 *)
mov s_2 v_conv28_2;
(*   %13 = load i8, i8* %a, align 1 *)
mov v13 a_0;
(*   %conv35.2 = zext i8 %13 to i32 *)
cast v_conv35_2@uint32 v13@uint8;
(*   %xor36.2 = xor i32 %conv35.2, 1 *)
(* You may need to modify here *)
xor uint32 v_xor36_2 v_conv35_2 (0x1)@uint32;
(*   %conv37.2 = trunc i32 %xor36.2 to i8 *)
split tmp_v_xor36_2 v_conv37_2 v_xor36_2 8;
vpc v_conv37_2@uint8 v_conv37_2@uint32;
(*   %arrayidx41.2 = getelementptr inbounds i8, i8* %r, i64 2 *)
(*   %14 = load i8, i8* %arrayidx41.2, align 1 *)
mov v14 r_2;
(*   %conv.i.2123 = zext i8 %14 to i32 *)
cast v_conv_i_2123@uint32 v14@uint8;
(*   %and.i.2124 = and i32 %conv.i.2123, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2124 v_conv_i_2123 (0x1)@uint32;
(*   %conv1.i.2125 = zext i8 %conv37.2 to i32 *)
cast v_conv1_i_2125@uint32 v_conv37_2@uint8;
(*   %mul.i.2126 = mul nsw i32 %and.i.2124, %conv1.i.2125 *)
mul v_mul_i_2126 v_and_i_2124 v_conv1_i_2125;
(*   %conv3.i.2127 = trunc i32 %mul.i.2126 to i8 *)
split tmp_v_mul_i_2126 v_conv3_i_2127 v_mul_i_2126 8;
vpc v_conv3_i_2127@uint8 v_conv3_i_2127@uint32;
(*   %conv4.i.2128 = zext i8 %14 to i32 *)
cast v_conv4_i_2128@uint32 v14@uint8;
(*   %shr.i.2129 = ashr i32 %conv4.i.2128, 1 *)
(* You may need to modify here *)
split v_shr_i_2129 tmp_to_be_used v_conv4_i_2128 1;
(*   %conv5.i.2130 = trunc i32 %shr.i.2129 to i8 *)
split tmp_v_shr_i_2129 v_conv5_i_2130 v_shr_i_2129 8;
vpc v_conv5_i_2130@uint8 v_conv5_i_2130@uint32;
(*   %conv6.i.2131 = zext i8 %conv37.2 to i32 *)
cast v_conv6_i_2131@uint32 v_conv37_2@uint8;
(*   %shl.i.2132 = shl i32 %conv6.i.2131, 1 *)
shls discard_14 v_shl_i_2132 v_conv6_i_2131 1;
(*   %conv7.i.2133 = trunc i32 %shl.i.2132 to i8 *)
split tmp_v_shl_i_2132 v_conv7_i_2133 v_shl_i_2132 8;
vpc v_conv7_i_2133@uint8 v_conv7_i_2133@uint32;
(*   %conv.i.1.2 = zext i8 %conv5.i.2130 to i32 *)
cast v_conv_i_1_2@uint32 v_conv5_i_2130@uint8;
(*   %and.i.1.2 = and i32 %conv.i.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_2 v_conv_i_1_2 (0x1)@uint32;
(*   %conv1.i.1.2 = zext i8 %conv7.i.2133 to i32 *)
cast v_conv1_i_1_2@uint32 v_conv7_i_2133@uint8;
(*   %mul.i.1.2 = mul nsw i32 %and.i.1.2, %conv1.i.1.2 *)
mul v_mul_i_1_2 v_and_i_1_2 v_conv1_i_1_2;
(*   %conv2.i.1.2 = zext i8 %conv3.i.2127 to i32 *)
cast v_conv2_i_1_2@uint32 v_conv3_i_2127@uint8;
(*   %xor.i.1.2 = xor i32 %conv2.i.1.2, %mul.i.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_2 v_conv2_i_1_2 v_mul_i_1_2;
(*   %conv3.i.1.2 = trunc i32 %xor.i.1.2 to i8 *)
split tmp_v_xor_i_1_2 v_conv3_i_1_2 v_xor_i_1_2 8;
vpc v_conv3_i_1_2@uint8 v_conv3_i_1_2@uint32;
(*   %conv4.i.1.2 = zext i8 %conv5.i.2130 to i32 *)
cast v_conv4_i_1_2@uint32 v_conv5_i_2130@uint8;
(*   %shr.i.1.2 = ashr i32 %conv4.i.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_1_2 tmp_to_be_used v_conv4_i_1_2 1;
(*   %conv5.i.1.2 = trunc i32 %shr.i.1.2 to i8 *)
split tmp_v_shr_i_1_2 v_conv5_i_1_2 v_shr_i_1_2 8;
vpc v_conv5_i_1_2@uint8 v_conv5_i_1_2@uint32;
(*   %conv6.i.1.2 = zext i8 %conv7.i.2133 to i32 *)
cast v_conv6_i_1_2@uint32 v_conv7_i_2133@uint8;
(*   %shl.i.1.2 = shl i32 %conv6.i.1.2, 1 *)
shls discard_15 v_shl_i_1_2 v_conv6_i_1_2 1;
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
shls discard_16 v_shl_i_2_2 v_conv6_i_2_2 1;
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
shls discard_17 v_shl_i_3_2 v_conv6_i_3_2 1;
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
shls discard_18 v_shl_i_4_2 v_conv6_i_4_2 1;
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
shls discard_19 v_shl_i_5_2 v_conv6_i_5_2 1;
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
shls discard_20 v_shl_i_6_2 v_conv6_i_6_2 1;
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
(*   %arrayidx45.2 = getelementptr inbounds [9 x i8], [9 x i8]* %p0, i64 0, i64 2 *)
(*   store i8 %conv3.i.7.2, i8* %arrayidx45.2, align 1 *)
mov p0_2 v_conv3_i_7_2;
(*   %15 = load i8, i8* %a, align 1 *)
mov v15 a_0;
(*   %arrayidx51.2 = getelementptr inbounds [9 x i8], [9 x i8]* %s, i64 0, i64 2 *)
(*   %16 = load i8, i8* %arrayidx51.2, align 1 *)
mov v16 s_2;
(*   %conv.i127.2134 = zext i8 %16 to i32 *)
cast v_conv_i127_2134@uint32 v16@uint8;
(*   %and.i128.2135 = and i32 %conv.i127.2134, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_2135 v_conv_i127_2134 (0x1)@uint32;
(*   %conv1.i129.2136 = zext i8 %15 to i32 *)
cast v_conv1_i129_2136@uint32 v15@uint8;
(*   %mul.i130.2137 = mul nsw i32 %and.i128.2135, %conv1.i129.2136 *)
mul v_mul_i130_2137 v_and_i128_2135 v_conv1_i129_2136;
(*   %conv3.i133.2138 = trunc i32 %mul.i130.2137 to i8 *)
split tmp_v_mul_i130_2137 v_conv3_i133_2138 v_mul_i130_2137 8;
vpc v_conv3_i133_2138@uint8 v_conv3_i133_2138@uint32;
(*   %conv4.i134.2139 = zext i8 %16 to i32 *)
cast v_conv4_i134_2139@uint32 v16@uint8;
(*   %shr.i135.2140 = ashr i32 %conv4.i134.2139, 1 *)
(* You may need to modify here *)
split v_shr_i135_2140 tmp_to_be_used v_conv4_i134_2139 1;
(*   %conv5.i136.2141 = trunc i32 %shr.i135.2140 to i8 *)
split tmp_v_shr_i135_2140 v_conv5_i136_2141 v_shr_i135_2140 8;
vpc v_conv5_i136_2141@uint8 v_conv5_i136_2141@uint32;
(*   %conv6.i137.2142 = zext i8 %15 to i32 *)
cast v_conv6_i137_2142@uint32 v15@uint8;
(*   %shl.i138.2143 = shl i32 %conv6.i137.2142, 1 *)
shls discard_21 v_shl_i138_2143 v_conv6_i137_2142 1;
(*   %conv7.i139.2144 = trunc i32 %shl.i138.2143 to i8 *)
split tmp_v_shl_i138_2143 v_conv7_i139_2144 v_shl_i138_2143 8;
vpc v_conv7_i139_2144@uint8 v_conv7_i139_2144@uint32;
(*   %conv.i127.1.2 = zext i8 %conv5.i136.2141 to i32 *)
cast v_conv_i127_1_2@uint32 v_conv5_i136_2141@uint8;
(*   %and.i128.1.2 = and i32 %conv.i127.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1_2 v_conv_i127_1_2 (0x1)@uint32;
(*   %conv1.i129.1.2 = zext i8 %conv7.i139.2144 to i32 *)
cast v_conv1_i129_1_2@uint32 v_conv7_i139_2144@uint8;
(*   %mul.i130.1.2 = mul nsw i32 %and.i128.1.2, %conv1.i129.1.2 *)
mul v_mul_i130_1_2 v_and_i128_1_2 v_conv1_i129_1_2;
(*   %conv2.i131.1.2 = zext i8 %conv3.i133.2138 to i32 *)
cast v_conv2_i131_1_2@uint32 v_conv3_i133_2138@uint8;
(*   %xor.i132.1.2 = xor i32 %conv2.i131.1.2, %mul.i130.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_1_2 v_conv2_i131_1_2 v_mul_i130_1_2;
(*   %conv3.i133.1.2 = trunc i32 %xor.i132.1.2 to i8 *)
split tmp_v_xor_i132_1_2 v_conv3_i133_1_2 v_xor_i132_1_2 8;
vpc v_conv3_i133_1_2@uint8 v_conv3_i133_1_2@uint32;
(*   %conv4.i134.1.2 = zext i8 %conv5.i136.2141 to i32 *)
cast v_conv4_i134_1_2@uint32 v_conv5_i136_2141@uint8;
(*   %shr.i135.1.2 = ashr i32 %conv4.i134.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i135_1_2 tmp_to_be_used v_conv4_i134_1_2 1;
(*   %conv5.i136.1.2 = trunc i32 %shr.i135.1.2 to i8 *)
split tmp_v_shr_i135_1_2 v_conv5_i136_1_2 v_shr_i135_1_2 8;
vpc v_conv5_i136_1_2@uint8 v_conv5_i136_1_2@uint32;
(*   %conv6.i137.1.2 = zext i8 %conv7.i139.2144 to i32 *)
cast v_conv6_i137_1_2@uint32 v_conv7_i139_2144@uint8;
(*   %shl.i138.1.2 = shl i32 %conv6.i137.1.2, 1 *)
shls discard_22 v_shl_i138_1_2 v_conv6_i137_1_2 1;
(*   %conv7.i139.1.2 = trunc i32 %shl.i138.1.2 to i8 *)
split tmp_v_shl_i138_1_2 v_conv7_i139_1_2 v_shl_i138_1_2 8;
vpc v_conv7_i139_1_2@uint8 v_conv7_i139_1_2@uint32;
(*   %conv.i127.2.2 = zext i8 %conv5.i136.1.2 to i32 *)
cast v_conv_i127_2_2@uint32 v_conv5_i136_1_2@uint8;
(*   %and.i128.2.2 = and i32 %conv.i127.2.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_2_2 v_conv_i127_2_2 (0x1)@uint32;
(*   %conv1.i129.2.2 = zext i8 %conv7.i139.1.2 to i32 *)
cast v_conv1_i129_2_2@uint32 v_conv7_i139_1_2@uint8;
(*   %mul.i130.2.2 = mul nsw i32 %and.i128.2.2, %conv1.i129.2.2 *)
mul v_mul_i130_2_2 v_and_i128_2_2 v_conv1_i129_2_2;
(*   %conv2.i131.2.2 = zext i8 %conv3.i133.1.2 to i32 *)
cast v_conv2_i131_2_2@uint32 v_conv3_i133_1_2@uint8;
(*   %xor.i132.2.2 = xor i32 %conv2.i131.2.2, %mul.i130.2.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_2_2 v_conv2_i131_2_2 v_mul_i130_2_2;
(*   %conv3.i133.2.2 = trunc i32 %xor.i132.2.2 to i8 *)
split tmp_v_xor_i132_2_2 v_conv3_i133_2_2 v_xor_i132_2_2 8;
vpc v_conv3_i133_2_2@uint8 v_conv3_i133_2_2@uint32;
(*   %conv4.i134.2.2 = zext i8 %conv5.i136.1.2 to i32 *)
cast v_conv4_i134_2_2@uint32 v_conv5_i136_1_2@uint8;
(*   %shr.i135.2.2 = ashr i32 %conv4.i134.2.2, 1 *)
(* You may need to modify here *)
split v_shr_i135_2_2 tmp_to_be_used v_conv4_i134_2_2 1;
(*   %conv5.i136.2.2 = trunc i32 %shr.i135.2.2 to i8 *)
split tmp_v_shr_i135_2_2 v_conv5_i136_2_2 v_shr_i135_2_2 8;
vpc v_conv5_i136_2_2@uint8 v_conv5_i136_2_2@uint32;
(*   %conv6.i137.2.2 = zext i8 %conv7.i139.1.2 to i32 *)
cast v_conv6_i137_2_2@uint32 v_conv7_i139_1_2@uint8;
(*   %shl.i138.2.2 = shl i32 %conv6.i137.2.2, 1 *)
shls discard_23 v_shl_i138_2_2 v_conv6_i137_2_2 1;
(*   %conv7.i139.2.2 = trunc i32 %shl.i138.2.2 to i8 *)
split tmp_v_shl_i138_2_2 v_conv7_i139_2_2 v_shl_i138_2_2 8;
vpc v_conv7_i139_2_2@uint8 v_conv7_i139_2_2@uint32;
(*   %conv.i127.3.2 = zext i8 %conv5.i136.2.2 to i32 *)
cast v_conv_i127_3_2@uint32 v_conv5_i136_2_2@uint8;
(*   %and.i128.3.2 = and i32 %conv.i127.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_3_2 v_conv_i127_3_2 (0x1)@uint32;
(*   %conv1.i129.3.2 = zext i8 %conv7.i139.2.2 to i32 *)
cast v_conv1_i129_3_2@uint32 v_conv7_i139_2_2@uint8;
(*   %mul.i130.3.2 = mul nsw i32 %and.i128.3.2, %conv1.i129.3.2 *)
mul v_mul_i130_3_2 v_and_i128_3_2 v_conv1_i129_3_2;
(*   %conv2.i131.3.2 = zext i8 %conv3.i133.2.2 to i32 *)
cast v_conv2_i131_3_2@uint32 v_conv3_i133_2_2@uint8;
(*   %xor.i132.3.2 = xor i32 %conv2.i131.3.2, %mul.i130.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_3_2 v_conv2_i131_3_2 v_mul_i130_3_2;
(*   %conv3.i133.3.2 = trunc i32 %xor.i132.3.2 to i8 *)
split tmp_v_xor_i132_3_2 v_conv3_i133_3_2 v_xor_i132_3_2 8;
vpc v_conv3_i133_3_2@uint8 v_conv3_i133_3_2@uint32;
(*   %conv4.i134.3.2 = zext i8 %conv5.i136.2.2 to i32 *)
cast v_conv4_i134_3_2@uint32 v_conv5_i136_2_2@uint8;
(*   %shr.i135.3.2 = ashr i32 %conv4.i134.3.2, 1 *)
(* You may need to modify here *)
split v_shr_i135_3_2 tmp_to_be_used v_conv4_i134_3_2 1;
(*   %conv5.i136.3.2 = trunc i32 %shr.i135.3.2 to i8 *)
split tmp_v_shr_i135_3_2 v_conv5_i136_3_2 v_shr_i135_3_2 8;
vpc v_conv5_i136_3_2@uint8 v_conv5_i136_3_2@uint32;
(*   %conv6.i137.3.2 = zext i8 %conv7.i139.2.2 to i32 *)
cast v_conv6_i137_3_2@uint32 v_conv7_i139_2_2@uint8;
(*   %shl.i138.3.2 = shl i32 %conv6.i137.3.2, 1 *)
shls discard_24 v_shl_i138_3_2 v_conv6_i137_3_2 1;
(*   %conv7.i139.3.2 = trunc i32 %shl.i138.3.2 to i8 *)
split tmp_v_shl_i138_3_2 v_conv7_i139_3_2 v_shl_i138_3_2 8;
vpc v_conv7_i139_3_2@uint8 v_conv7_i139_3_2@uint32;
(*   %conv.i127.4.2 = zext i8 %conv5.i136.3.2 to i32 *)
cast v_conv_i127_4_2@uint32 v_conv5_i136_3_2@uint8;
(*   %and.i128.4.2 = and i32 %conv.i127.4.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_4_2 v_conv_i127_4_2 (0x1)@uint32;
(*   %conv1.i129.4.2 = zext i8 %conv7.i139.3.2 to i32 *)
cast v_conv1_i129_4_2@uint32 v_conv7_i139_3_2@uint8;
(*   %mul.i130.4.2 = mul nsw i32 %and.i128.4.2, %conv1.i129.4.2 *)
mul v_mul_i130_4_2 v_and_i128_4_2 v_conv1_i129_4_2;
(*   %conv2.i131.4.2 = zext i8 %conv3.i133.3.2 to i32 *)
cast v_conv2_i131_4_2@uint32 v_conv3_i133_3_2@uint8;
(*   %xor.i132.4.2 = xor i32 %conv2.i131.4.2, %mul.i130.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_4_2 v_conv2_i131_4_2 v_mul_i130_4_2;
(*   %conv3.i133.4.2 = trunc i32 %xor.i132.4.2 to i8 *)
split tmp_v_xor_i132_4_2 v_conv3_i133_4_2 v_xor_i132_4_2 8;
vpc v_conv3_i133_4_2@uint8 v_conv3_i133_4_2@uint32;
(*   %conv4.i134.4.2 = zext i8 %conv5.i136.3.2 to i32 *)
cast v_conv4_i134_4_2@uint32 v_conv5_i136_3_2@uint8;
(*   %shr.i135.4.2 = ashr i32 %conv4.i134.4.2, 1 *)
(* You may need to modify here *)
split v_shr_i135_4_2 tmp_to_be_used v_conv4_i134_4_2 1;
(*   %conv5.i136.4.2 = trunc i32 %shr.i135.4.2 to i8 *)
split tmp_v_shr_i135_4_2 v_conv5_i136_4_2 v_shr_i135_4_2 8;
vpc v_conv5_i136_4_2@uint8 v_conv5_i136_4_2@uint32;
(*   %conv6.i137.4.2 = zext i8 %conv7.i139.3.2 to i32 *)
cast v_conv6_i137_4_2@uint32 v_conv7_i139_3_2@uint8;
(*   %shl.i138.4.2 = shl i32 %conv6.i137.4.2, 1 *)
shls discard_25 v_shl_i138_4_2 v_conv6_i137_4_2 1;
(*   %conv7.i139.4.2 = trunc i32 %shl.i138.4.2 to i8 *)
split tmp_v_shl_i138_4_2 v_conv7_i139_4_2 v_shl_i138_4_2 8;
vpc v_conv7_i139_4_2@uint8 v_conv7_i139_4_2@uint32;
(*   %conv.i127.5.2 = zext i8 %conv5.i136.4.2 to i32 *)
cast v_conv_i127_5_2@uint32 v_conv5_i136_4_2@uint8;
(*   %and.i128.5.2 = and i32 %conv.i127.5.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_5_2 v_conv_i127_5_2 (0x1)@uint32;
(*   %conv1.i129.5.2 = zext i8 %conv7.i139.4.2 to i32 *)
cast v_conv1_i129_5_2@uint32 v_conv7_i139_4_2@uint8;
(*   %mul.i130.5.2 = mul nsw i32 %and.i128.5.2, %conv1.i129.5.2 *)
mul v_mul_i130_5_2 v_and_i128_5_2 v_conv1_i129_5_2;
(*   %conv2.i131.5.2 = zext i8 %conv3.i133.4.2 to i32 *)
cast v_conv2_i131_5_2@uint32 v_conv3_i133_4_2@uint8;
(*   %xor.i132.5.2 = xor i32 %conv2.i131.5.2, %mul.i130.5.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_5_2 v_conv2_i131_5_2 v_mul_i130_5_2;
(*   %conv3.i133.5.2 = trunc i32 %xor.i132.5.2 to i8 *)
split tmp_v_xor_i132_5_2 v_conv3_i133_5_2 v_xor_i132_5_2 8;
vpc v_conv3_i133_5_2@uint8 v_conv3_i133_5_2@uint32;
(*   %conv4.i134.5.2 = zext i8 %conv5.i136.4.2 to i32 *)
cast v_conv4_i134_5_2@uint32 v_conv5_i136_4_2@uint8;
(*   %shr.i135.5.2 = ashr i32 %conv4.i134.5.2, 1 *)
(* You may need to modify here *)
split v_shr_i135_5_2 tmp_to_be_used v_conv4_i134_5_2 1;
(*   %conv5.i136.5.2 = trunc i32 %shr.i135.5.2 to i8 *)
split tmp_v_shr_i135_5_2 v_conv5_i136_5_2 v_shr_i135_5_2 8;
vpc v_conv5_i136_5_2@uint8 v_conv5_i136_5_2@uint32;
(*   %conv6.i137.5.2 = zext i8 %conv7.i139.4.2 to i32 *)
cast v_conv6_i137_5_2@uint32 v_conv7_i139_4_2@uint8;
(*   %shl.i138.5.2 = shl i32 %conv6.i137.5.2, 1 *)
shls discard_26 v_shl_i138_5_2 v_conv6_i137_5_2 1;
(*   %conv7.i139.5.2 = trunc i32 %shl.i138.5.2 to i8 *)
split tmp_v_shl_i138_5_2 v_conv7_i139_5_2 v_shl_i138_5_2 8;
vpc v_conv7_i139_5_2@uint8 v_conv7_i139_5_2@uint32;
(*   %conv.i127.6.2 = zext i8 %conv5.i136.5.2 to i32 *)
cast v_conv_i127_6_2@uint32 v_conv5_i136_5_2@uint8;
(*   %and.i128.6.2 = and i32 %conv.i127.6.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_6_2 v_conv_i127_6_2 (0x1)@uint32;
(*   %conv1.i129.6.2 = zext i8 %conv7.i139.5.2 to i32 *)
cast v_conv1_i129_6_2@uint32 v_conv7_i139_5_2@uint8;
(*   %mul.i130.6.2 = mul nsw i32 %and.i128.6.2, %conv1.i129.6.2 *)
mul v_mul_i130_6_2 v_and_i128_6_2 v_conv1_i129_6_2;
(*   %conv2.i131.6.2 = zext i8 %conv3.i133.5.2 to i32 *)
cast v_conv2_i131_6_2@uint32 v_conv3_i133_5_2@uint8;
(*   %xor.i132.6.2 = xor i32 %conv2.i131.6.2, %mul.i130.6.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_6_2 v_conv2_i131_6_2 v_mul_i130_6_2;
(*   %conv3.i133.6.2 = trunc i32 %xor.i132.6.2 to i8 *)
split tmp_v_xor_i132_6_2 v_conv3_i133_6_2 v_xor_i132_6_2 8;
vpc v_conv3_i133_6_2@uint8 v_conv3_i133_6_2@uint32;
(*   %conv4.i134.6.2 = zext i8 %conv5.i136.5.2 to i32 *)
cast v_conv4_i134_6_2@uint32 v_conv5_i136_5_2@uint8;
(*   %shr.i135.6.2 = ashr i32 %conv4.i134.6.2, 1 *)
(* You may need to modify here *)
split v_shr_i135_6_2 tmp_to_be_used v_conv4_i134_6_2 1;
(*   %conv5.i136.6.2 = trunc i32 %shr.i135.6.2 to i8 *)
split tmp_v_shr_i135_6_2 v_conv5_i136_6_2 v_shr_i135_6_2 8;
vpc v_conv5_i136_6_2@uint8 v_conv5_i136_6_2@uint32;
(*   %conv6.i137.6.2 = zext i8 %conv7.i139.5.2 to i32 *)
cast v_conv6_i137_6_2@uint32 v_conv7_i139_5_2@uint8;
(*   %shl.i138.6.2 = shl i32 %conv6.i137.6.2, 1 *)
shls discard_27 v_shl_i138_6_2 v_conv6_i137_6_2 1;
(*   %conv7.i139.6.2 = trunc i32 %shl.i138.6.2 to i8 *)
split tmp_v_shl_i138_6_2 v_conv7_i139_6_2 v_shl_i138_6_2 8;
vpc v_conv7_i139_6_2@uint8 v_conv7_i139_6_2@uint32;
(*   %conv.i127.7.2 = zext i8 %conv5.i136.6.2 to i32 *)
cast v_conv_i127_7_2@uint32 v_conv5_i136_6_2@uint8;
(*   %and.i128.7.2 = and i32 %conv.i127.7.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_7_2 v_conv_i127_7_2 (0x1)@uint32;
(*   %conv1.i129.7.2 = zext i8 %conv7.i139.6.2 to i32 *)
cast v_conv1_i129_7_2@uint32 v_conv7_i139_6_2@uint8;
(*   %mul.i130.7.2 = mul nsw i32 %and.i128.7.2, %conv1.i129.7.2 *)
mul v_mul_i130_7_2 v_and_i128_7_2 v_conv1_i129_7_2;
(*   %conv2.i131.7.2 = zext i8 %conv3.i133.6.2 to i32 *)
cast v_conv2_i131_7_2@uint32 v_conv3_i133_6_2@uint8;
(*   %xor.i132.7.2 = xor i32 %conv2.i131.7.2, %mul.i130.7.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_7_2 v_conv2_i131_7_2 v_mul_i130_7_2;
(*   %conv3.i133.7.2 = trunc i32 %xor.i132.7.2 to i8 *)
split tmp_v_xor_i132_7_2 v_conv3_i133_7_2 v_xor_i132_7_2 8;
vpc v_conv3_i133_7_2@uint8 v_conv3_i133_7_2@uint32;
(*   %arrayidx56.2 = getelementptr inbounds [9 x i8], [9 x i8]* %p1, i64 0, i64 2 *)
(*   store i8 %conv3.i133.7.2, i8* %arrayidx56.2, align 1 *)
mov p1_2 v_conv3_i133_7_2;
(*   %arrayidx60.2 = getelementptr inbounds [9 x i8], [9 x i8]* %p0, i64 0, i64 2 *)
(*   %17 = load i8, i8* %arrayidx60.2, align 1 *)
mov v17 p0_2;
(*   %conv61.2 = zext i8 %17 to i32 *)
cast v_conv61_2@uint32 v17@uint8;
(*   %arrayidx65.2 = getelementptr inbounds [9 x i8], [9 x i8]* %p1, i64 0, i64 2 *)
(*   %18 = load i8, i8* %arrayidx65.2, align 1 *)
mov v18 p1_2;
(*   %conv66.2 = zext i8 %18 to i32 *)
cast v_conv66_2@uint32 v18@uint8;
(*   %xor67.2 = xor i32 %conv61.2, %conv66.2 *)
(* You may need to modify here *)
xor uint32 v_xor67_2 v_conv61_2 v_conv66_2;
(*   %conv68.2 = trunc i32 %xor67.2 to i8 *)
split tmp_v_xor67_2 v_conv68_2 v_xor67_2 8;
vpc v_conv68_2@uint8 v_conv68_2@uint32;
(*   %arrayidx72.2 = getelementptr inbounds [9 x i8], [9 x i8]* %z, i64 0, i64 2 *)
(*   store i8 %conv68.2, i8* %arrayidx72.2, align 1 *)
mov z_2 v_conv68_2;
(*   %arrayidx34.1 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %arrayidx47.1 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %19 = load i8, i8* %b, align 1 *)
mov v19 b_0;
(*   %conv.1146 = zext i8 %19 to i32 *)
cast v_conv_1146@uint32 v19@uint8;
(*   %arrayidx26.1148 = getelementptr inbounds i8, i8* %r, i64 3 *)
(*   %20 = load i8, i8* %arrayidx26.1148, align 1 *)
mov v20 r_3;
(*   %conv27.1149 = zext i8 %20 to i32 *)
cast v_conv27_1149@uint32 v20@uint8;
(*   %xor.1150 = xor i32 %conv.1146, %conv27.1149 *)
(* You may need to modify here *)
xor uint32 v_xor_1150 v_conv_1146 v_conv27_1149;
(*   %conv28.1151 = trunc i32 %xor.1150 to i8 *)
split tmp_v_xor_1150 v_conv28_1151 v_xor_1150 8;
vpc v_conv28_1151@uint8 v_conv28_1151@uint32;
(*   %arrayidx32.1153 = getelementptr inbounds [9 x i8], [9 x i8]* %s, i64 0, i64 3 *)
(*   store i8 %conv28.1151, i8* %arrayidx32.1153, align 1 *)
mov s_3 v_conv28_1151;
(*   %21 = load i8, i8* %arrayidx34.1, align 1 *)
mov v21 a_1;
(*   %conv35.1154 = zext i8 %21 to i32 *)
cast v_conv35_1154@uint32 v21@uint8;
(*   %xor36.1155 = xor i32 %conv35.1154, 1 *)
(* You may need to modify here *)
xor uint32 v_xor36_1155 v_conv35_1154 (0x1)@uint32;
(*   %conv37.1156 = trunc i32 %xor36.1155 to i8 *)
split tmp_v_xor36_1155 v_conv37_1156 v_xor36_1155 8;
vpc v_conv37_1156@uint8 v_conv37_1156@uint32;
(*   %arrayidx41.1158 = getelementptr inbounds i8, i8* %r, i64 3 *)
(*   %22 = load i8, i8* %arrayidx41.1158, align 1 *)
mov v22 r_3;
(*   %conv.i.1160 = zext i8 %22 to i32 *)
cast v_conv_i_1160@uint32 v22@uint8;
(*   %and.i.1161 = and i32 %conv.i.1160, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1161 v_conv_i_1160 (0x1)@uint32;
(*   %conv1.i.1162 = zext i8 %conv37.1156 to i32 *)
cast v_conv1_i_1162@uint32 v_conv37_1156@uint8;
(*   %mul.i.1163 = mul nsw i32 %and.i.1161, %conv1.i.1162 *)
mul v_mul_i_1163 v_and_i_1161 v_conv1_i_1162;
(*   %conv3.i.1164 = trunc i32 %mul.i.1163 to i8 *)
split tmp_v_mul_i_1163 v_conv3_i_1164 v_mul_i_1163 8;
vpc v_conv3_i_1164@uint8 v_conv3_i_1164@uint32;
(*   %conv4.i.1165 = zext i8 %22 to i32 *)
cast v_conv4_i_1165@uint32 v22@uint8;
(*   %shr.i.1166 = ashr i32 %conv4.i.1165, 1 *)
(* You may need to modify here *)
split v_shr_i_1166 tmp_to_be_used v_conv4_i_1165 1;
(*   %conv5.i.1167 = trunc i32 %shr.i.1166 to i8 *)
split tmp_v_shr_i_1166 v_conv5_i_1167 v_shr_i_1166 8;
vpc v_conv5_i_1167@uint8 v_conv5_i_1167@uint32;
(*   %conv6.i.1168 = zext i8 %conv37.1156 to i32 *)
cast v_conv6_i_1168@uint32 v_conv37_1156@uint8;
(*   %shl.i.1169 = shl i32 %conv6.i.1168, 1 *)
shls discard_28 v_shl_i_1169 v_conv6_i_1168 1;
(*   %conv7.i.1170 = trunc i32 %shl.i.1169 to i8 *)
split tmp_v_shl_i_1169 v_conv7_i_1170 v_shl_i_1169 8;
vpc v_conv7_i_1170@uint8 v_conv7_i_1170@uint32;
(*   %conv.i.1.1171 = zext i8 %conv5.i.1167 to i32 *)
cast v_conv_i_1_1171@uint32 v_conv5_i_1167@uint8;
(*   %and.i.1.1172 = and i32 %conv.i.1.1171, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_1172 v_conv_i_1_1171 (0x1)@uint32;
(*   %conv1.i.1.1173 = zext i8 %conv7.i.1170 to i32 *)
cast v_conv1_i_1_1173@uint32 v_conv7_i_1170@uint8;
(*   %mul.i.1.1174 = mul nsw i32 %and.i.1.1172, %conv1.i.1.1173 *)
mul v_mul_i_1_1174 v_and_i_1_1172 v_conv1_i_1_1173;
(*   %conv2.i.1.1175 = zext i8 %conv3.i.1164 to i32 *)
cast v_conv2_i_1_1175@uint32 v_conv3_i_1164@uint8;
(*   %xor.i.1.1176 = xor i32 %conv2.i.1.1175, %mul.i.1.1174 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_1176 v_conv2_i_1_1175 v_mul_i_1_1174;
(*   %conv3.i.1.1177 = trunc i32 %xor.i.1.1176 to i8 *)
split tmp_v_xor_i_1_1176 v_conv3_i_1_1177 v_xor_i_1_1176 8;
vpc v_conv3_i_1_1177@uint8 v_conv3_i_1_1177@uint32;
(*   %conv4.i.1.1178 = zext i8 %conv5.i.1167 to i32 *)
cast v_conv4_i_1_1178@uint32 v_conv5_i_1167@uint8;
(*   %shr.i.1.1179 = ashr i32 %conv4.i.1.1178, 1 *)
(* You may need to modify here *)
split v_shr_i_1_1179 tmp_to_be_used v_conv4_i_1_1178 1;
(*   %conv5.i.1.1180 = trunc i32 %shr.i.1.1179 to i8 *)
split tmp_v_shr_i_1_1179 v_conv5_i_1_1180 v_shr_i_1_1179 8;
vpc v_conv5_i_1_1180@uint8 v_conv5_i_1_1180@uint32;
(*   %conv6.i.1.1181 = zext i8 %conv7.i.1170 to i32 *)
cast v_conv6_i_1_1181@uint32 v_conv7_i_1170@uint8;
(*   %shl.i.1.1182 = shl i32 %conv6.i.1.1181, 1 *)
shls discard_29 v_shl_i_1_1182 v_conv6_i_1_1181 1;
(*   %conv7.i.1.1183 = trunc i32 %shl.i.1.1182 to i8 *)
split tmp_v_shl_i_1_1182 v_conv7_i_1_1183 v_shl_i_1_1182 8;
vpc v_conv7_i_1_1183@uint8 v_conv7_i_1_1183@uint32;
(*   %conv.i.2.1184 = zext i8 %conv5.i.1.1180 to i32 *)
cast v_conv_i_2_1184@uint32 v_conv5_i_1_1180@uint8;
(*   %and.i.2.1185 = and i32 %conv.i.2.1184, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_1185 v_conv_i_2_1184 (0x1)@uint32;
(*   %conv1.i.2.1186 = zext i8 %conv7.i.1.1183 to i32 *)
cast v_conv1_i_2_1186@uint32 v_conv7_i_1_1183@uint8;
(*   %mul.i.2.1187 = mul nsw i32 %and.i.2.1185, %conv1.i.2.1186 *)
mul v_mul_i_2_1187 v_and_i_2_1185 v_conv1_i_2_1186;
(*   %conv2.i.2.1188 = zext i8 %conv3.i.1.1177 to i32 *)
cast v_conv2_i_2_1188@uint32 v_conv3_i_1_1177@uint8;
(*   %xor.i.2.1189 = xor i32 %conv2.i.2.1188, %mul.i.2.1187 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_1189 v_conv2_i_2_1188 v_mul_i_2_1187;
(*   %conv3.i.2.1190 = trunc i32 %xor.i.2.1189 to i8 *)
split tmp_v_xor_i_2_1189 v_conv3_i_2_1190 v_xor_i_2_1189 8;
vpc v_conv3_i_2_1190@uint8 v_conv3_i_2_1190@uint32;
(*   %conv4.i.2.1191 = zext i8 %conv5.i.1.1180 to i32 *)
cast v_conv4_i_2_1191@uint32 v_conv5_i_1_1180@uint8;
(*   %shr.i.2.1192 = ashr i32 %conv4.i.2.1191, 1 *)
(* You may need to modify here *)
split v_shr_i_2_1192 tmp_to_be_used v_conv4_i_2_1191 1;
(*   %conv5.i.2.1193 = trunc i32 %shr.i.2.1192 to i8 *)
split tmp_v_shr_i_2_1192 v_conv5_i_2_1193 v_shr_i_2_1192 8;
vpc v_conv5_i_2_1193@uint8 v_conv5_i_2_1193@uint32;
(*   %conv6.i.2.1194 = zext i8 %conv7.i.1.1183 to i32 *)
cast v_conv6_i_2_1194@uint32 v_conv7_i_1_1183@uint8;
(*   %shl.i.2.1195 = shl i32 %conv6.i.2.1194, 1 *)
shls discard_30 v_shl_i_2_1195 v_conv6_i_2_1194 1;
(*   %conv7.i.2.1196 = trunc i32 %shl.i.2.1195 to i8 *)
split tmp_v_shl_i_2_1195 v_conv7_i_2_1196 v_shl_i_2_1195 8;
vpc v_conv7_i_2_1196@uint8 v_conv7_i_2_1196@uint32;
(*   %conv.i.3.1197 = zext i8 %conv5.i.2.1193 to i32 *)
cast v_conv_i_3_1197@uint32 v_conv5_i_2_1193@uint8;
(*   %and.i.3.1198 = and i32 %conv.i.3.1197, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_1198 v_conv_i_3_1197 (0x1)@uint32;
(*   %conv1.i.3.1199 = zext i8 %conv7.i.2.1196 to i32 *)
cast v_conv1_i_3_1199@uint32 v_conv7_i_2_1196@uint8;
(*   %mul.i.3.1200 = mul nsw i32 %and.i.3.1198, %conv1.i.3.1199 *)
mul v_mul_i_3_1200 v_and_i_3_1198 v_conv1_i_3_1199;
(*   %conv2.i.3.1201 = zext i8 %conv3.i.2.1190 to i32 *)
cast v_conv2_i_3_1201@uint32 v_conv3_i_2_1190@uint8;
(*   %xor.i.3.1202 = xor i32 %conv2.i.3.1201, %mul.i.3.1200 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_1202 v_conv2_i_3_1201 v_mul_i_3_1200;
(*   %conv3.i.3.1203 = trunc i32 %xor.i.3.1202 to i8 *)
split tmp_v_xor_i_3_1202 v_conv3_i_3_1203 v_xor_i_3_1202 8;
vpc v_conv3_i_3_1203@uint8 v_conv3_i_3_1203@uint32;
(*   %conv4.i.3.1204 = zext i8 %conv5.i.2.1193 to i32 *)
cast v_conv4_i_3_1204@uint32 v_conv5_i_2_1193@uint8;
(*   %shr.i.3.1205 = ashr i32 %conv4.i.3.1204, 1 *)
(* You may need to modify here *)
split v_shr_i_3_1205 tmp_to_be_used v_conv4_i_3_1204 1;
(*   %conv5.i.3.1206 = trunc i32 %shr.i.3.1205 to i8 *)
split tmp_v_shr_i_3_1205 v_conv5_i_3_1206 v_shr_i_3_1205 8;
vpc v_conv5_i_3_1206@uint8 v_conv5_i_3_1206@uint32;
(*   %conv6.i.3.1207 = zext i8 %conv7.i.2.1196 to i32 *)
cast v_conv6_i_3_1207@uint32 v_conv7_i_2_1196@uint8;
(*   %shl.i.3.1208 = shl i32 %conv6.i.3.1207, 1 *)
shls discard_31 v_shl_i_3_1208 v_conv6_i_3_1207 1;
(*   %conv7.i.3.1209 = trunc i32 %shl.i.3.1208 to i8 *)
split tmp_v_shl_i_3_1208 v_conv7_i_3_1209 v_shl_i_3_1208 8;
vpc v_conv7_i_3_1209@uint8 v_conv7_i_3_1209@uint32;
(*   %conv.i.4.1210 = zext i8 %conv5.i.3.1206 to i32 *)
cast v_conv_i_4_1210@uint32 v_conv5_i_3_1206@uint8;
(*   %and.i.4.1211 = and i32 %conv.i.4.1210, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_1211 v_conv_i_4_1210 (0x1)@uint32;
(*   %conv1.i.4.1212 = zext i8 %conv7.i.3.1209 to i32 *)
cast v_conv1_i_4_1212@uint32 v_conv7_i_3_1209@uint8;
(*   %mul.i.4.1213 = mul nsw i32 %and.i.4.1211, %conv1.i.4.1212 *)
mul v_mul_i_4_1213 v_and_i_4_1211 v_conv1_i_4_1212;
(*   %conv2.i.4.1214 = zext i8 %conv3.i.3.1203 to i32 *)
cast v_conv2_i_4_1214@uint32 v_conv3_i_3_1203@uint8;
(*   %xor.i.4.1215 = xor i32 %conv2.i.4.1214, %mul.i.4.1213 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_1215 v_conv2_i_4_1214 v_mul_i_4_1213;
(*   %conv3.i.4.1216 = trunc i32 %xor.i.4.1215 to i8 *)
split tmp_v_xor_i_4_1215 v_conv3_i_4_1216 v_xor_i_4_1215 8;
vpc v_conv3_i_4_1216@uint8 v_conv3_i_4_1216@uint32;
(*   %conv4.i.4.1217 = zext i8 %conv5.i.3.1206 to i32 *)
cast v_conv4_i_4_1217@uint32 v_conv5_i_3_1206@uint8;
(*   %shr.i.4.1218 = ashr i32 %conv4.i.4.1217, 1 *)
(* You may need to modify here *)
split v_shr_i_4_1218 tmp_to_be_used v_conv4_i_4_1217 1;
(*   %conv5.i.4.1219 = trunc i32 %shr.i.4.1218 to i8 *)
split tmp_v_shr_i_4_1218 v_conv5_i_4_1219 v_shr_i_4_1218 8;
vpc v_conv5_i_4_1219@uint8 v_conv5_i_4_1219@uint32;
(*   %conv6.i.4.1220 = zext i8 %conv7.i.3.1209 to i32 *)
cast v_conv6_i_4_1220@uint32 v_conv7_i_3_1209@uint8;
(*   %shl.i.4.1221 = shl i32 %conv6.i.4.1220, 1 *)
shls discard_32 v_shl_i_4_1221 v_conv6_i_4_1220 1;
(*   %conv7.i.4.1222 = trunc i32 %shl.i.4.1221 to i8 *)
split tmp_v_shl_i_4_1221 v_conv7_i_4_1222 v_shl_i_4_1221 8;
vpc v_conv7_i_4_1222@uint8 v_conv7_i_4_1222@uint32;
(*   %conv.i.5.1223 = zext i8 %conv5.i.4.1219 to i32 *)
cast v_conv_i_5_1223@uint32 v_conv5_i_4_1219@uint8;
(*   %and.i.5.1224 = and i32 %conv.i.5.1223, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_1224 v_conv_i_5_1223 (0x1)@uint32;
(*   %conv1.i.5.1225 = zext i8 %conv7.i.4.1222 to i32 *)
cast v_conv1_i_5_1225@uint32 v_conv7_i_4_1222@uint8;
(*   %mul.i.5.1226 = mul nsw i32 %and.i.5.1224, %conv1.i.5.1225 *)
mul v_mul_i_5_1226 v_and_i_5_1224 v_conv1_i_5_1225;
(*   %conv2.i.5.1227 = zext i8 %conv3.i.4.1216 to i32 *)
cast v_conv2_i_5_1227@uint32 v_conv3_i_4_1216@uint8;
(*   %xor.i.5.1228 = xor i32 %conv2.i.5.1227, %mul.i.5.1226 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_1228 v_conv2_i_5_1227 v_mul_i_5_1226;
(*   %conv3.i.5.1229 = trunc i32 %xor.i.5.1228 to i8 *)
split tmp_v_xor_i_5_1228 v_conv3_i_5_1229 v_xor_i_5_1228 8;
vpc v_conv3_i_5_1229@uint8 v_conv3_i_5_1229@uint32;
(*   %conv4.i.5.1230 = zext i8 %conv5.i.4.1219 to i32 *)
cast v_conv4_i_5_1230@uint32 v_conv5_i_4_1219@uint8;
(*   %shr.i.5.1231 = ashr i32 %conv4.i.5.1230, 1 *)
(* You may need to modify here *)
split v_shr_i_5_1231 tmp_to_be_used v_conv4_i_5_1230 1;
(*   %conv5.i.5.1232 = trunc i32 %shr.i.5.1231 to i8 *)
split tmp_v_shr_i_5_1231 v_conv5_i_5_1232 v_shr_i_5_1231 8;
vpc v_conv5_i_5_1232@uint8 v_conv5_i_5_1232@uint32;
(*   %conv6.i.5.1233 = zext i8 %conv7.i.4.1222 to i32 *)
cast v_conv6_i_5_1233@uint32 v_conv7_i_4_1222@uint8;
(*   %shl.i.5.1234 = shl i32 %conv6.i.5.1233, 1 *)
shls discard_33 v_shl_i_5_1234 v_conv6_i_5_1233 1;
(*   %conv7.i.5.1235 = trunc i32 %shl.i.5.1234 to i8 *)
split tmp_v_shl_i_5_1234 v_conv7_i_5_1235 v_shl_i_5_1234 8;
vpc v_conv7_i_5_1235@uint8 v_conv7_i_5_1235@uint32;
(*   %conv.i.6.1236 = zext i8 %conv5.i.5.1232 to i32 *)
cast v_conv_i_6_1236@uint32 v_conv5_i_5_1232@uint8;
(*   %and.i.6.1237 = and i32 %conv.i.6.1236, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_1237 v_conv_i_6_1236 (0x1)@uint32;
(*   %conv1.i.6.1238 = zext i8 %conv7.i.5.1235 to i32 *)
cast v_conv1_i_6_1238@uint32 v_conv7_i_5_1235@uint8;
(*   %mul.i.6.1239 = mul nsw i32 %and.i.6.1237, %conv1.i.6.1238 *)
mul v_mul_i_6_1239 v_and_i_6_1237 v_conv1_i_6_1238;
(*   %conv2.i.6.1240 = zext i8 %conv3.i.5.1229 to i32 *)
cast v_conv2_i_6_1240@uint32 v_conv3_i_5_1229@uint8;
(*   %xor.i.6.1241 = xor i32 %conv2.i.6.1240, %mul.i.6.1239 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_1241 v_conv2_i_6_1240 v_mul_i_6_1239;
(*   %conv3.i.6.1242 = trunc i32 %xor.i.6.1241 to i8 *)
split tmp_v_xor_i_6_1241 v_conv3_i_6_1242 v_xor_i_6_1241 8;
vpc v_conv3_i_6_1242@uint8 v_conv3_i_6_1242@uint32;
(*   %conv4.i.6.1243 = zext i8 %conv5.i.5.1232 to i32 *)
cast v_conv4_i_6_1243@uint32 v_conv5_i_5_1232@uint8;
(*   %shr.i.6.1244 = ashr i32 %conv4.i.6.1243, 1 *)
(* You may need to modify here *)
split v_shr_i_6_1244 tmp_to_be_used v_conv4_i_6_1243 1;
(*   %conv5.i.6.1245 = trunc i32 %shr.i.6.1244 to i8 *)
split tmp_v_shr_i_6_1244 v_conv5_i_6_1245 v_shr_i_6_1244 8;
vpc v_conv5_i_6_1245@uint8 v_conv5_i_6_1245@uint32;
(*   %conv6.i.6.1246 = zext i8 %conv7.i.5.1235 to i32 *)
cast v_conv6_i_6_1246@uint32 v_conv7_i_5_1235@uint8;
(*   %shl.i.6.1247 = shl i32 %conv6.i.6.1246, 1 *)
shls discard_34 v_shl_i_6_1247 v_conv6_i_6_1246 1;
(*   %conv7.i.6.1248 = trunc i32 %shl.i.6.1247 to i8 *)
split tmp_v_shl_i_6_1247 v_conv7_i_6_1248 v_shl_i_6_1247 8;
vpc v_conv7_i_6_1248@uint8 v_conv7_i_6_1248@uint32;
(*   %conv.i.7.1249 = zext i8 %conv5.i.6.1245 to i32 *)
cast v_conv_i_7_1249@uint32 v_conv5_i_6_1245@uint8;
(*   %and.i.7.1250 = and i32 %conv.i.7.1249, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_1250 v_conv_i_7_1249 (0x1)@uint32;
(*   %conv1.i.7.1251 = zext i8 %conv7.i.6.1248 to i32 *)
cast v_conv1_i_7_1251@uint32 v_conv7_i_6_1248@uint8;
(*   %mul.i.7.1252 = mul nsw i32 %and.i.7.1250, %conv1.i.7.1251 *)
mul v_mul_i_7_1252 v_and_i_7_1250 v_conv1_i_7_1251;
(*   %conv2.i.7.1253 = zext i8 %conv3.i.6.1242 to i32 *)
cast v_conv2_i_7_1253@uint32 v_conv3_i_6_1242@uint8;
(*   %xor.i.7.1254 = xor i32 %conv2.i.7.1253, %mul.i.7.1252 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_1254 v_conv2_i_7_1253 v_mul_i_7_1252;
(*   %conv3.i.7.1255 = trunc i32 %xor.i.7.1254 to i8 *)
split tmp_v_xor_i_7_1254 v_conv3_i_7_1255 v_xor_i_7_1254 8;
vpc v_conv3_i_7_1255@uint8 v_conv3_i_7_1255@uint32;
(*   %arrayidx45.1259 = getelementptr inbounds [9 x i8], [9 x i8]* %p0, i64 0, i64 3 *)
(*   store i8 %conv3.i.7.1255, i8* %arrayidx45.1259, align 1 *)
mov p0_3 v_conv3_i_7_1255;
(*   %23 = load i8, i8* %arrayidx47.1, align 1 *)
mov v23 a_1;
(*   %arrayidx51.1261 = getelementptr inbounds [9 x i8], [9 x i8]* %s, i64 0, i64 3 *)
(*   %24 = load i8, i8* %arrayidx51.1261, align 1 *)
mov v24 s_3;
(*   %conv.i127.1263 = zext i8 %24 to i32 *)
cast v_conv_i127_1263@uint32 v24@uint8;
(*   %and.i128.1264 = and i32 %conv.i127.1263, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1264 v_conv_i127_1263 (0x1)@uint32;
(*   %conv1.i129.1265 = zext i8 %23 to i32 *)
cast v_conv1_i129_1265@uint32 v23@uint8;
(*   %mul.i130.1266 = mul nsw i32 %and.i128.1264, %conv1.i129.1265 *)
mul v_mul_i130_1266 v_and_i128_1264 v_conv1_i129_1265;
(*   %conv3.i133.1267 = trunc i32 %mul.i130.1266 to i8 *)
split tmp_v_mul_i130_1266 v_conv3_i133_1267 v_mul_i130_1266 8;
vpc v_conv3_i133_1267@uint8 v_conv3_i133_1267@uint32;
(*   %conv4.i134.1268 = zext i8 %24 to i32 *)
cast v_conv4_i134_1268@uint32 v24@uint8;
(*   %shr.i135.1269 = ashr i32 %conv4.i134.1268, 1 *)
(* You may need to modify here *)
split v_shr_i135_1269 tmp_to_be_used v_conv4_i134_1268 1;
(*   %conv5.i136.1270 = trunc i32 %shr.i135.1269 to i8 *)
split tmp_v_shr_i135_1269 v_conv5_i136_1270 v_shr_i135_1269 8;
vpc v_conv5_i136_1270@uint8 v_conv5_i136_1270@uint32;
(*   %conv6.i137.1271 = zext i8 %23 to i32 *)
cast v_conv6_i137_1271@uint32 v23@uint8;
(*   %shl.i138.1272 = shl i32 %conv6.i137.1271, 1 *)
shls discard_35 v_shl_i138_1272 v_conv6_i137_1271 1;
(*   %conv7.i139.1273 = trunc i32 %shl.i138.1272 to i8 *)
split tmp_v_shl_i138_1272 v_conv7_i139_1273 v_shl_i138_1272 8;
vpc v_conv7_i139_1273@uint8 v_conv7_i139_1273@uint32;
(*   %conv.i127.1.1274 = zext i8 %conv5.i136.1270 to i32 *)
cast v_conv_i127_1_1274@uint32 v_conv5_i136_1270@uint8;
(*   %and.i128.1.1275 = and i32 %conv.i127.1.1274, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1_1275 v_conv_i127_1_1274 (0x1)@uint32;
(*   %conv1.i129.1.1276 = zext i8 %conv7.i139.1273 to i32 *)
cast v_conv1_i129_1_1276@uint32 v_conv7_i139_1273@uint8;
(*   %mul.i130.1.1277 = mul nsw i32 %and.i128.1.1275, %conv1.i129.1.1276 *)
mul v_mul_i130_1_1277 v_and_i128_1_1275 v_conv1_i129_1_1276;
(*   %conv2.i131.1.1278 = zext i8 %conv3.i133.1267 to i32 *)
cast v_conv2_i131_1_1278@uint32 v_conv3_i133_1267@uint8;
(*   %xor.i132.1.1279 = xor i32 %conv2.i131.1.1278, %mul.i130.1.1277 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_1_1279 v_conv2_i131_1_1278 v_mul_i130_1_1277;
(*   %conv3.i133.1.1280 = trunc i32 %xor.i132.1.1279 to i8 *)
split tmp_v_xor_i132_1_1279 v_conv3_i133_1_1280 v_xor_i132_1_1279 8;
vpc v_conv3_i133_1_1280@uint8 v_conv3_i133_1_1280@uint32;
(*   %conv4.i134.1.1281 = zext i8 %conv5.i136.1270 to i32 *)
cast v_conv4_i134_1_1281@uint32 v_conv5_i136_1270@uint8;
(*   %shr.i135.1.1282 = ashr i32 %conv4.i134.1.1281, 1 *)
(* You may need to modify here *)
split v_shr_i135_1_1282 tmp_to_be_used v_conv4_i134_1_1281 1;
(*   %conv5.i136.1.1283 = trunc i32 %shr.i135.1.1282 to i8 *)
split tmp_v_shr_i135_1_1282 v_conv5_i136_1_1283 v_shr_i135_1_1282 8;
vpc v_conv5_i136_1_1283@uint8 v_conv5_i136_1_1283@uint32;
(*   %conv6.i137.1.1284 = zext i8 %conv7.i139.1273 to i32 *)
cast v_conv6_i137_1_1284@uint32 v_conv7_i139_1273@uint8;
(*   %shl.i138.1.1285 = shl i32 %conv6.i137.1.1284, 1 *)
shls discard_36 v_shl_i138_1_1285 v_conv6_i137_1_1284 1;
(*   %conv7.i139.1.1286 = trunc i32 %shl.i138.1.1285 to i8 *)
split tmp_v_shl_i138_1_1285 v_conv7_i139_1_1286 v_shl_i138_1_1285 8;
vpc v_conv7_i139_1_1286@uint8 v_conv7_i139_1_1286@uint32;
(*   %conv.i127.2.1287 = zext i8 %conv5.i136.1.1283 to i32 *)
cast v_conv_i127_2_1287@uint32 v_conv5_i136_1_1283@uint8;
(*   %and.i128.2.1288 = and i32 %conv.i127.2.1287, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_2_1288 v_conv_i127_2_1287 (0x1)@uint32;
(*   %conv1.i129.2.1289 = zext i8 %conv7.i139.1.1286 to i32 *)
cast v_conv1_i129_2_1289@uint32 v_conv7_i139_1_1286@uint8;
(*   %mul.i130.2.1290 = mul nsw i32 %and.i128.2.1288, %conv1.i129.2.1289 *)
mul v_mul_i130_2_1290 v_and_i128_2_1288 v_conv1_i129_2_1289;
(*   %conv2.i131.2.1291 = zext i8 %conv3.i133.1.1280 to i32 *)
cast v_conv2_i131_2_1291@uint32 v_conv3_i133_1_1280@uint8;
(*   %xor.i132.2.1292 = xor i32 %conv2.i131.2.1291, %mul.i130.2.1290 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_2_1292 v_conv2_i131_2_1291 v_mul_i130_2_1290;
(*   %conv3.i133.2.1293 = trunc i32 %xor.i132.2.1292 to i8 *)
split tmp_v_xor_i132_2_1292 v_conv3_i133_2_1293 v_xor_i132_2_1292 8;
vpc v_conv3_i133_2_1293@uint8 v_conv3_i133_2_1293@uint32;
(*   %conv4.i134.2.1294 = zext i8 %conv5.i136.1.1283 to i32 *)
cast v_conv4_i134_2_1294@uint32 v_conv5_i136_1_1283@uint8;
(*   %shr.i135.2.1295 = ashr i32 %conv4.i134.2.1294, 1 *)
(* You may need to modify here *)
split v_shr_i135_2_1295 tmp_to_be_used v_conv4_i134_2_1294 1;
(*   %conv5.i136.2.1296 = trunc i32 %shr.i135.2.1295 to i8 *)
split tmp_v_shr_i135_2_1295 v_conv5_i136_2_1296 v_shr_i135_2_1295 8;
vpc v_conv5_i136_2_1296@uint8 v_conv5_i136_2_1296@uint32;
(*   %conv6.i137.2.1297 = zext i8 %conv7.i139.1.1286 to i32 *)
cast v_conv6_i137_2_1297@uint32 v_conv7_i139_1_1286@uint8;
(*   %shl.i138.2.1298 = shl i32 %conv6.i137.2.1297, 1 *)
shls discard_37 v_shl_i138_2_1298 v_conv6_i137_2_1297 1;
(*   %conv7.i139.2.1299 = trunc i32 %shl.i138.2.1298 to i8 *)
split tmp_v_shl_i138_2_1298 v_conv7_i139_2_1299 v_shl_i138_2_1298 8;
vpc v_conv7_i139_2_1299@uint8 v_conv7_i139_2_1299@uint32;
(*   %conv.i127.3.1300 = zext i8 %conv5.i136.2.1296 to i32 *)
cast v_conv_i127_3_1300@uint32 v_conv5_i136_2_1296@uint8;
(*   %and.i128.3.1301 = and i32 %conv.i127.3.1300, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_3_1301 v_conv_i127_3_1300 (0x1)@uint32;
(*   %conv1.i129.3.1302 = zext i8 %conv7.i139.2.1299 to i32 *)
cast v_conv1_i129_3_1302@uint32 v_conv7_i139_2_1299@uint8;
(*   %mul.i130.3.1303 = mul nsw i32 %and.i128.3.1301, %conv1.i129.3.1302 *)
mul v_mul_i130_3_1303 v_and_i128_3_1301 v_conv1_i129_3_1302;
(*   %conv2.i131.3.1304 = zext i8 %conv3.i133.2.1293 to i32 *)
cast v_conv2_i131_3_1304@uint32 v_conv3_i133_2_1293@uint8;
(*   %xor.i132.3.1305 = xor i32 %conv2.i131.3.1304, %mul.i130.3.1303 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_3_1305 v_conv2_i131_3_1304 v_mul_i130_3_1303;
(*   %conv3.i133.3.1306 = trunc i32 %xor.i132.3.1305 to i8 *)
split tmp_v_xor_i132_3_1305 v_conv3_i133_3_1306 v_xor_i132_3_1305 8;
vpc v_conv3_i133_3_1306@uint8 v_conv3_i133_3_1306@uint32;
(*   %conv4.i134.3.1307 = zext i8 %conv5.i136.2.1296 to i32 *)
cast v_conv4_i134_3_1307@uint32 v_conv5_i136_2_1296@uint8;
(*   %shr.i135.3.1308 = ashr i32 %conv4.i134.3.1307, 1 *)
(* You may need to modify here *)
split v_shr_i135_3_1308 tmp_to_be_used v_conv4_i134_3_1307 1;
(*   %conv5.i136.3.1309 = trunc i32 %shr.i135.3.1308 to i8 *)
split tmp_v_shr_i135_3_1308 v_conv5_i136_3_1309 v_shr_i135_3_1308 8;
vpc v_conv5_i136_3_1309@uint8 v_conv5_i136_3_1309@uint32;
(*   %conv6.i137.3.1310 = zext i8 %conv7.i139.2.1299 to i32 *)
cast v_conv6_i137_3_1310@uint32 v_conv7_i139_2_1299@uint8;
(*   %shl.i138.3.1311 = shl i32 %conv6.i137.3.1310, 1 *)
shls discard_38 v_shl_i138_3_1311 v_conv6_i137_3_1310 1;
(*   %conv7.i139.3.1312 = trunc i32 %shl.i138.3.1311 to i8 *)
split tmp_v_shl_i138_3_1311 v_conv7_i139_3_1312 v_shl_i138_3_1311 8;
vpc v_conv7_i139_3_1312@uint8 v_conv7_i139_3_1312@uint32;
(*   %conv.i127.4.1313 = zext i8 %conv5.i136.3.1309 to i32 *)
cast v_conv_i127_4_1313@uint32 v_conv5_i136_3_1309@uint8;
(*   %and.i128.4.1314 = and i32 %conv.i127.4.1313, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_4_1314 v_conv_i127_4_1313 (0x1)@uint32;
(*   %conv1.i129.4.1315 = zext i8 %conv7.i139.3.1312 to i32 *)
cast v_conv1_i129_4_1315@uint32 v_conv7_i139_3_1312@uint8;
(*   %mul.i130.4.1316 = mul nsw i32 %and.i128.4.1314, %conv1.i129.4.1315 *)
mul v_mul_i130_4_1316 v_and_i128_4_1314 v_conv1_i129_4_1315;
(*   %conv2.i131.4.1317 = zext i8 %conv3.i133.3.1306 to i32 *)
cast v_conv2_i131_4_1317@uint32 v_conv3_i133_3_1306@uint8;
(*   %xor.i132.4.1318 = xor i32 %conv2.i131.4.1317, %mul.i130.4.1316 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_4_1318 v_conv2_i131_4_1317 v_mul_i130_4_1316;
(*   %conv3.i133.4.1319 = trunc i32 %xor.i132.4.1318 to i8 *)
split tmp_v_xor_i132_4_1318 v_conv3_i133_4_1319 v_xor_i132_4_1318 8;
vpc v_conv3_i133_4_1319@uint8 v_conv3_i133_4_1319@uint32;
(*   %conv4.i134.4.1320 = zext i8 %conv5.i136.3.1309 to i32 *)
cast v_conv4_i134_4_1320@uint32 v_conv5_i136_3_1309@uint8;
(*   %shr.i135.4.1321 = ashr i32 %conv4.i134.4.1320, 1 *)
(* You may need to modify here *)
split v_shr_i135_4_1321 tmp_to_be_used v_conv4_i134_4_1320 1;
(*   %conv5.i136.4.1322 = trunc i32 %shr.i135.4.1321 to i8 *)
split tmp_v_shr_i135_4_1321 v_conv5_i136_4_1322 v_shr_i135_4_1321 8;
vpc v_conv5_i136_4_1322@uint8 v_conv5_i136_4_1322@uint32;
(*   %conv6.i137.4.1323 = zext i8 %conv7.i139.3.1312 to i32 *)
cast v_conv6_i137_4_1323@uint32 v_conv7_i139_3_1312@uint8;
(*   %shl.i138.4.1324 = shl i32 %conv6.i137.4.1323, 1 *)
shls discard_39 v_shl_i138_4_1324 v_conv6_i137_4_1323 1;
(*   %conv7.i139.4.1325 = trunc i32 %shl.i138.4.1324 to i8 *)
split tmp_v_shl_i138_4_1324 v_conv7_i139_4_1325 v_shl_i138_4_1324 8;
vpc v_conv7_i139_4_1325@uint8 v_conv7_i139_4_1325@uint32;
(*   %conv.i127.5.1326 = zext i8 %conv5.i136.4.1322 to i32 *)
cast v_conv_i127_5_1326@uint32 v_conv5_i136_4_1322@uint8;
(*   %and.i128.5.1327 = and i32 %conv.i127.5.1326, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_5_1327 v_conv_i127_5_1326 (0x1)@uint32;
(*   %conv1.i129.5.1328 = zext i8 %conv7.i139.4.1325 to i32 *)
cast v_conv1_i129_5_1328@uint32 v_conv7_i139_4_1325@uint8;
(*   %mul.i130.5.1329 = mul nsw i32 %and.i128.5.1327, %conv1.i129.5.1328 *)
mul v_mul_i130_5_1329 v_and_i128_5_1327 v_conv1_i129_5_1328;
(*   %conv2.i131.5.1330 = zext i8 %conv3.i133.4.1319 to i32 *)
cast v_conv2_i131_5_1330@uint32 v_conv3_i133_4_1319@uint8;
(*   %xor.i132.5.1331 = xor i32 %conv2.i131.5.1330, %mul.i130.5.1329 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_5_1331 v_conv2_i131_5_1330 v_mul_i130_5_1329;
(*   %conv3.i133.5.1332 = trunc i32 %xor.i132.5.1331 to i8 *)
split tmp_v_xor_i132_5_1331 v_conv3_i133_5_1332 v_xor_i132_5_1331 8;
vpc v_conv3_i133_5_1332@uint8 v_conv3_i133_5_1332@uint32;
(*   %conv4.i134.5.1333 = zext i8 %conv5.i136.4.1322 to i32 *)
cast v_conv4_i134_5_1333@uint32 v_conv5_i136_4_1322@uint8;
(*   %shr.i135.5.1334 = ashr i32 %conv4.i134.5.1333, 1 *)
(* You may need to modify here *)
split v_shr_i135_5_1334 tmp_to_be_used v_conv4_i134_5_1333 1;
(*   %conv5.i136.5.1335 = trunc i32 %shr.i135.5.1334 to i8 *)
split tmp_v_shr_i135_5_1334 v_conv5_i136_5_1335 v_shr_i135_5_1334 8;
vpc v_conv5_i136_5_1335@uint8 v_conv5_i136_5_1335@uint32;
(*   %conv6.i137.5.1336 = zext i8 %conv7.i139.4.1325 to i32 *)
cast v_conv6_i137_5_1336@uint32 v_conv7_i139_4_1325@uint8;
(*   %shl.i138.5.1337 = shl i32 %conv6.i137.5.1336, 1 *)
shls discard_40 v_shl_i138_5_1337 v_conv6_i137_5_1336 1;
(*   %conv7.i139.5.1338 = trunc i32 %shl.i138.5.1337 to i8 *)
split tmp_v_shl_i138_5_1337 v_conv7_i139_5_1338 v_shl_i138_5_1337 8;
vpc v_conv7_i139_5_1338@uint8 v_conv7_i139_5_1338@uint32;
(*   %conv.i127.6.1339 = zext i8 %conv5.i136.5.1335 to i32 *)
cast v_conv_i127_6_1339@uint32 v_conv5_i136_5_1335@uint8;
(*   %and.i128.6.1340 = and i32 %conv.i127.6.1339, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_6_1340 v_conv_i127_6_1339 (0x1)@uint32;
(*   %conv1.i129.6.1341 = zext i8 %conv7.i139.5.1338 to i32 *)
cast v_conv1_i129_6_1341@uint32 v_conv7_i139_5_1338@uint8;
(*   %mul.i130.6.1342 = mul nsw i32 %and.i128.6.1340, %conv1.i129.6.1341 *)
mul v_mul_i130_6_1342 v_and_i128_6_1340 v_conv1_i129_6_1341;
(*   %conv2.i131.6.1343 = zext i8 %conv3.i133.5.1332 to i32 *)
cast v_conv2_i131_6_1343@uint32 v_conv3_i133_5_1332@uint8;
(*   %xor.i132.6.1344 = xor i32 %conv2.i131.6.1343, %mul.i130.6.1342 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_6_1344 v_conv2_i131_6_1343 v_mul_i130_6_1342;
(*   %conv3.i133.6.1345 = trunc i32 %xor.i132.6.1344 to i8 *)
split tmp_v_xor_i132_6_1344 v_conv3_i133_6_1345 v_xor_i132_6_1344 8;
vpc v_conv3_i133_6_1345@uint8 v_conv3_i133_6_1345@uint32;
(*   %conv4.i134.6.1346 = zext i8 %conv5.i136.5.1335 to i32 *)
cast v_conv4_i134_6_1346@uint32 v_conv5_i136_5_1335@uint8;
(*   %shr.i135.6.1347 = ashr i32 %conv4.i134.6.1346, 1 *)
(* You may need to modify here *)
split v_shr_i135_6_1347 tmp_to_be_used v_conv4_i134_6_1346 1;
(*   %conv5.i136.6.1348 = trunc i32 %shr.i135.6.1347 to i8 *)
split tmp_v_shr_i135_6_1347 v_conv5_i136_6_1348 v_shr_i135_6_1347 8;
vpc v_conv5_i136_6_1348@uint8 v_conv5_i136_6_1348@uint32;
(*   %conv6.i137.6.1349 = zext i8 %conv7.i139.5.1338 to i32 *)
cast v_conv6_i137_6_1349@uint32 v_conv7_i139_5_1338@uint8;
(*   %shl.i138.6.1350 = shl i32 %conv6.i137.6.1349, 1 *)
shls discard_41 v_shl_i138_6_1350 v_conv6_i137_6_1349 1;
(*   %conv7.i139.6.1351 = trunc i32 %shl.i138.6.1350 to i8 *)
split tmp_v_shl_i138_6_1350 v_conv7_i139_6_1351 v_shl_i138_6_1350 8;
vpc v_conv7_i139_6_1351@uint8 v_conv7_i139_6_1351@uint32;
(*   %conv.i127.7.1352 = zext i8 %conv5.i136.6.1348 to i32 *)
cast v_conv_i127_7_1352@uint32 v_conv5_i136_6_1348@uint8;
(*   %and.i128.7.1353 = and i32 %conv.i127.7.1352, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_7_1353 v_conv_i127_7_1352 (0x1)@uint32;
(*   %conv1.i129.7.1354 = zext i8 %conv7.i139.6.1351 to i32 *)
cast v_conv1_i129_7_1354@uint32 v_conv7_i139_6_1351@uint8;
(*   %mul.i130.7.1355 = mul nsw i32 %and.i128.7.1353, %conv1.i129.7.1354 *)
mul v_mul_i130_7_1355 v_and_i128_7_1353 v_conv1_i129_7_1354;
(*   %conv2.i131.7.1356 = zext i8 %conv3.i133.6.1345 to i32 *)
cast v_conv2_i131_7_1356@uint32 v_conv3_i133_6_1345@uint8;
(*   %xor.i132.7.1357 = xor i32 %conv2.i131.7.1356, %mul.i130.7.1355 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_7_1357 v_conv2_i131_7_1356 v_mul_i130_7_1355;
(*   %conv3.i133.7.1358 = trunc i32 %xor.i132.7.1357 to i8 *)
split tmp_v_xor_i132_7_1357 v_conv3_i133_7_1358 v_xor_i132_7_1357 8;
vpc v_conv3_i133_7_1358@uint8 v_conv3_i133_7_1358@uint32;
(*   %arrayidx56.1362 = getelementptr inbounds [9 x i8], [9 x i8]* %p1, i64 0, i64 3 *)
(*   store i8 %conv3.i133.7.1358, i8* %arrayidx56.1362, align 1 *)
mov p1_3 v_conv3_i133_7_1358;
(*   %arrayidx60.1364 = getelementptr inbounds [9 x i8], [9 x i8]* %p0, i64 0, i64 3 *)
(*   %25 = load i8, i8* %arrayidx60.1364, align 1 *)
mov v25 p0_3;
(*   %conv61.1365 = zext i8 %25 to i32 *)
cast v_conv61_1365@uint32 v25@uint8;
(*   %arrayidx65.1367 = getelementptr inbounds [9 x i8], [9 x i8]* %p1, i64 0, i64 3 *)
(*   %26 = load i8, i8* %arrayidx65.1367, align 1 *)
mov v26 p1_3;
(*   %conv66.1368 = zext i8 %26 to i32 *)
cast v_conv66_1368@uint32 v26@uint8;
(*   %xor67.1369 = xor i32 %conv61.1365, %conv66.1368 *)
(* You may need to modify here *)
xor uint32 v_xor67_1369 v_conv61_1365 v_conv66_1368;
(*   %conv68.1370 = trunc i32 %xor67.1369 to i8 *)
split tmp_v_xor67_1369 v_conv68_1370 v_xor67_1369 8;
vpc v_conv68_1370@uint8 v_conv68_1370@uint32;
(*   %arrayidx72.1372 = getelementptr inbounds [9 x i8], [9 x i8]* %z, i64 0, i64 3 *)
(*   store i8 %conv68.1370, i8* %arrayidx72.1372, align 1 *)
mov z_3 v_conv68_1370;
(*   %arrayidx22.2.1 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %27 = load i8, i8* %arrayidx22.2.1, align 1 *)
mov v27 b_2;
(*   %conv.2.1 = zext i8 %27 to i32 *)
cast v_conv_2_1@uint32 v27@uint8;
(*   %arrayidx26.2.1 = getelementptr inbounds i8, i8* %r, i64 5 *)
(*   %28 = load i8, i8* %arrayidx26.2.1, align 1 *)
mov v28 r_5;
(*   %conv27.2.1 = zext i8 %28 to i32 *)
cast v_conv27_2_1@uint32 v28@uint8;
(*   %xor.2.1 = xor i32 %conv.2.1, %conv27.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_2_1 v_conv_2_1 v_conv27_2_1;
(*   %conv28.2.1 = trunc i32 %xor.2.1 to i8 *)
split tmp_v_xor_2_1 v_conv28_2_1 v_xor_2_1 8;
vpc v_conv28_2_1@uint8 v_conv28_2_1@uint32;
(*   %arrayidx32.2.1 = getelementptr inbounds [9 x i8], [9 x i8]* %s, i64 0, i64 5 *)
(*   store i8 %conv28.2.1, i8* %arrayidx32.2.1, align 1 *)
mov s_5 v_conv28_2_1;
(*   %29 = load i8, i8* %arrayidx34.1, align 1 *)
mov v29 a_1;
(*   %conv35.2.1 = zext i8 %29 to i32 *)
cast v_conv35_2_1@uint32 v29@uint8;
(*   %xor36.2.1 = xor i32 %conv35.2.1, 1 *)
(* You may need to modify here *)
xor uint32 v_xor36_2_1 v_conv35_2_1 (0x1)@uint32;
(*   %conv37.2.1 = trunc i32 %xor36.2.1 to i8 *)
split tmp_v_xor36_2_1 v_conv37_2_1 v_xor36_2_1 8;
vpc v_conv37_2_1@uint8 v_conv37_2_1@uint32;
(*   %arrayidx41.2.1 = getelementptr inbounds i8, i8* %r, i64 5 *)
(*   %30 = load i8, i8* %arrayidx41.2.1, align 1 *)
mov v30 r_5;
(*   %conv.i.2123.1 = zext i8 %30 to i32 *)
cast v_conv_i_2123_1@uint32 v30@uint8;
(*   %and.i.2124.1 = and i32 %conv.i.2123.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2124_1 v_conv_i_2123_1 (0x1)@uint32;
(*   %conv1.i.2125.1 = zext i8 %conv37.2.1 to i32 *)
cast v_conv1_i_2125_1@uint32 v_conv37_2_1@uint8;
(*   %mul.i.2126.1 = mul nsw i32 %and.i.2124.1, %conv1.i.2125.1 *)
mul v_mul_i_2126_1 v_and_i_2124_1 v_conv1_i_2125_1;
(*   %conv3.i.2127.1 = trunc i32 %mul.i.2126.1 to i8 *)
split tmp_v_mul_i_2126_1 v_conv3_i_2127_1 v_mul_i_2126_1 8;
vpc v_conv3_i_2127_1@uint8 v_conv3_i_2127_1@uint32;
(*   %conv4.i.2128.1 = zext i8 %30 to i32 *)
cast v_conv4_i_2128_1@uint32 v30@uint8;
(*   %shr.i.2129.1 = ashr i32 %conv4.i.2128.1, 1 *)
(* You may need to modify here *)
split v_shr_i_2129_1 tmp_to_be_used v_conv4_i_2128_1 1;
(*   %conv5.i.2130.1 = trunc i32 %shr.i.2129.1 to i8 *)
split tmp_v_shr_i_2129_1 v_conv5_i_2130_1 v_shr_i_2129_1 8;
vpc v_conv5_i_2130_1@uint8 v_conv5_i_2130_1@uint32;
(*   %conv6.i.2131.1 = zext i8 %conv37.2.1 to i32 *)
cast v_conv6_i_2131_1@uint32 v_conv37_2_1@uint8;
(*   %shl.i.2132.1 = shl i32 %conv6.i.2131.1, 1 *)
shls discard_42 v_shl_i_2132_1 v_conv6_i_2131_1 1;
(*   %conv7.i.2133.1 = trunc i32 %shl.i.2132.1 to i8 *)
split tmp_v_shl_i_2132_1 v_conv7_i_2133_1 v_shl_i_2132_1 8;
vpc v_conv7_i_2133_1@uint8 v_conv7_i_2133_1@uint32;
(*   %conv.i.1.2.1 = zext i8 %conv5.i.2130.1 to i32 *)
cast v_conv_i_1_2_1@uint32 v_conv5_i_2130_1@uint8;
(*   %and.i.1.2.1 = and i32 %conv.i.1.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_2_1 v_conv_i_1_2_1 (0x1)@uint32;
(*   %conv1.i.1.2.1 = zext i8 %conv7.i.2133.1 to i32 *)
cast v_conv1_i_1_2_1@uint32 v_conv7_i_2133_1@uint8;
(*   %mul.i.1.2.1 = mul nsw i32 %and.i.1.2.1, %conv1.i.1.2.1 *)
mul v_mul_i_1_2_1 v_and_i_1_2_1 v_conv1_i_1_2_1;
(*   %conv2.i.1.2.1 = zext i8 %conv3.i.2127.1 to i32 *)
cast v_conv2_i_1_2_1@uint32 v_conv3_i_2127_1@uint8;
(*   %xor.i.1.2.1 = xor i32 %conv2.i.1.2.1, %mul.i.1.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_2_1 v_conv2_i_1_2_1 v_mul_i_1_2_1;
(*   %conv3.i.1.2.1 = trunc i32 %xor.i.1.2.1 to i8 *)
split tmp_v_xor_i_1_2_1 v_conv3_i_1_2_1 v_xor_i_1_2_1 8;
vpc v_conv3_i_1_2_1@uint8 v_conv3_i_1_2_1@uint32;
(*   %conv4.i.1.2.1 = zext i8 %conv5.i.2130.1 to i32 *)
cast v_conv4_i_1_2_1@uint32 v_conv5_i_2130_1@uint8;
(*   %shr.i.1.2.1 = ashr i32 %conv4.i.1.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i_1_2_1 tmp_to_be_used v_conv4_i_1_2_1 1;
(*   %conv5.i.1.2.1 = trunc i32 %shr.i.1.2.1 to i8 *)
split tmp_v_shr_i_1_2_1 v_conv5_i_1_2_1 v_shr_i_1_2_1 8;
vpc v_conv5_i_1_2_1@uint8 v_conv5_i_1_2_1@uint32;
(*   %conv6.i.1.2.1 = zext i8 %conv7.i.2133.1 to i32 *)
cast v_conv6_i_1_2_1@uint32 v_conv7_i_2133_1@uint8;
(*   %shl.i.1.2.1 = shl i32 %conv6.i.1.2.1, 1 *)
shls discard_43 v_shl_i_1_2_1 v_conv6_i_1_2_1 1;
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
shls discard_44 v_shl_i_2_2_1 v_conv6_i_2_2_1 1;
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
shls discard_45 v_shl_i_3_2_1 v_conv6_i_3_2_1 1;
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
shls discard_46 v_shl_i_4_2_1 v_conv6_i_4_2_1 1;
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
shls discard_47 v_shl_i_5_2_1 v_conv6_i_5_2_1 1;
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
shls discard_48 v_shl_i_6_2_1 v_conv6_i_6_2_1 1;
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
(*   %arrayidx45.2.1 = getelementptr inbounds [9 x i8], [9 x i8]* %p0, i64 0, i64 5 *)
(*   store i8 %conv3.i.7.2.1, i8* %arrayidx45.2.1, align 1 *)
mov p0_5 v_conv3_i_7_2_1;
(*   %31 = load i8, i8* %arrayidx47.1, align 1 *)
mov v31 a_1;
(*   %arrayidx51.2.1 = getelementptr inbounds [9 x i8], [9 x i8]* %s, i64 0, i64 5 *)
(*   %32 = load i8, i8* %arrayidx51.2.1, align 1 *)
mov v32 s_5;
(*   %conv.i127.2134.1 = zext i8 %32 to i32 *)
cast v_conv_i127_2134_1@uint32 v32@uint8;
(*   %and.i128.2135.1 = and i32 %conv.i127.2134.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_2135_1 v_conv_i127_2134_1 (0x1)@uint32;
(*   %conv1.i129.2136.1 = zext i8 %31 to i32 *)
cast v_conv1_i129_2136_1@uint32 v31@uint8;
(*   %mul.i130.2137.1 = mul nsw i32 %and.i128.2135.1, %conv1.i129.2136.1 *)
mul v_mul_i130_2137_1 v_and_i128_2135_1 v_conv1_i129_2136_1;
(*   %conv3.i133.2138.1 = trunc i32 %mul.i130.2137.1 to i8 *)
split tmp_v_mul_i130_2137_1 v_conv3_i133_2138_1 v_mul_i130_2137_1 8;
vpc v_conv3_i133_2138_1@uint8 v_conv3_i133_2138_1@uint32;
(*   %conv4.i134.2139.1 = zext i8 %32 to i32 *)
cast v_conv4_i134_2139_1@uint32 v32@uint8;
(*   %shr.i135.2140.1 = ashr i32 %conv4.i134.2139.1, 1 *)
(* You may need to modify here *)
split v_shr_i135_2140_1 tmp_to_be_used v_conv4_i134_2139_1 1;
(*   %conv5.i136.2141.1 = trunc i32 %shr.i135.2140.1 to i8 *)
split tmp_v_shr_i135_2140_1 v_conv5_i136_2141_1 v_shr_i135_2140_1 8;
vpc v_conv5_i136_2141_1@uint8 v_conv5_i136_2141_1@uint32;
(*   %conv6.i137.2142.1 = zext i8 %31 to i32 *)
cast v_conv6_i137_2142_1@uint32 v31@uint8;
(*   %shl.i138.2143.1 = shl i32 %conv6.i137.2142.1, 1 *)
shls discard_49 v_shl_i138_2143_1 v_conv6_i137_2142_1 1;
(*   %conv7.i139.2144.1 = trunc i32 %shl.i138.2143.1 to i8 *)
split tmp_v_shl_i138_2143_1 v_conv7_i139_2144_1 v_shl_i138_2143_1 8;
vpc v_conv7_i139_2144_1@uint8 v_conv7_i139_2144_1@uint32;
(*   %conv.i127.1.2.1 = zext i8 %conv5.i136.2141.1 to i32 *)
cast v_conv_i127_1_2_1@uint32 v_conv5_i136_2141_1@uint8;
(*   %and.i128.1.2.1 = and i32 %conv.i127.1.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1_2_1 v_conv_i127_1_2_1 (0x1)@uint32;
(*   %conv1.i129.1.2.1 = zext i8 %conv7.i139.2144.1 to i32 *)
cast v_conv1_i129_1_2_1@uint32 v_conv7_i139_2144_1@uint8;
(*   %mul.i130.1.2.1 = mul nsw i32 %and.i128.1.2.1, %conv1.i129.1.2.1 *)
mul v_mul_i130_1_2_1 v_and_i128_1_2_1 v_conv1_i129_1_2_1;
(*   %conv2.i131.1.2.1 = zext i8 %conv3.i133.2138.1 to i32 *)
cast v_conv2_i131_1_2_1@uint32 v_conv3_i133_2138_1@uint8;
(*   %xor.i132.1.2.1 = xor i32 %conv2.i131.1.2.1, %mul.i130.1.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_1_2_1 v_conv2_i131_1_2_1 v_mul_i130_1_2_1;
(*   %conv3.i133.1.2.1 = trunc i32 %xor.i132.1.2.1 to i8 *)
split tmp_v_xor_i132_1_2_1 v_conv3_i133_1_2_1 v_xor_i132_1_2_1 8;
vpc v_conv3_i133_1_2_1@uint8 v_conv3_i133_1_2_1@uint32;
(*   %conv4.i134.1.2.1 = zext i8 %conv5.i136.2141.1 to i32 *)
cast v_conv4_i134_1_2_1@uint32 v_conv5_i136_2141_1@uint8;
(*   %shr.i135.1.2.1 = ashr i32 %conv4.i134.1.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i135_1_2_1 tmp_to_be_used v_conv4_i134_1_2_1 1;
(*   %conv5.i136.1.2.1 = trunc i32 %shr.i135.1.2.1 to i8 *)
split tmp_v_shr_i135_1_2_1 v_conv5_i136_1_2_1 v_shr_i135_1_2_1 8;
vpc v_conv5_i136_1_2_1@uint8 v_conv5_i136_1_2_1@uint32;
(*   %conv6.i137.1.2.1 = zext i8 %conv7.i139.2144.1 to i32 *)
cast v_conv6_i137_1_2_1@uint32 v_conv7_i139_2144_1@uint8;
(*   %shl.i138.1.2.1 = shl i32 %conv6.i137.1.2.1, 1 *)
shls discard_50 v_shl_i138_1_2_1 v_conv6_i137_1_2_1 1;
(*   %conv7.i139.1.2.1 = trunc i32 %shl.i138.1.2.1 to i8 *)
split tmp_v_shl_i138_1_2_1 v_conv7_i139_1_2_1 v_shl_i138_1_2_1 8;
vpc v_conv7_i139_1_2_1@uint8 v_conv7_i139_1_2_1@uint32;
(*   %conv.i127.2.2.1 = zext i8 %conv5.i136.1.2.1 to i32 *)
cast v_conv_i127_2_2_1@uint32 v_conv5_i136_1_2_1@uint8;
(*   %and.i128.2.2.1 = and i32 %conv.i127.2.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_2_2_1 v_conv_i127_2_2_1 (0x1)@uint32;
(*   %conv1.i129.2.2.1 = zext i8 %conv7.i139.1.2.1 to i32 *)
cast v_conv1_i129_2_2_1@uint32 v_conv7_i139_1_2_1@uint8;
(*   %mul.i130.2.2.1 = mul nsw i32 %and.i128.2.2.1, %conv1.i129.2.2.1 *)
mul v_mul_i130_2_2_1 v_and_i128_2_2_1 v_conv1_i129_2_2_1;
(*   %conv2.i131.2.2.1 = zext i8 %conv3.i133.1.2.1 to i32 *)
cast v_conv2_i131_2_2_1@uint32 v_conv3_i133_1_2_1@uint8;
(*   %xor.i132.2.2.1 = xor i32 %conv2.i131.2.2.1, %mul.i130.2.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_2_2_1 v_conv2_i131_2_2_1 v_mul_i130_2_2_1;
(*   %conv3.i133.2.2.1 = trunc i32 %xor.i132.2.2.1 to i8 *)
split tmp_v_xor_i132_2_2_1 v_conv3_i133_2_2_1 v_xor_i132_2_2_1 8;
vpc v_conv3_i133_2_2_1@uint8 v_conv3_i133_2_2_1@uint32;
(*   %conv4.i134.2.2.1 = zext i8 %conv5.i136.1.2.1 to i32 *)
cast v_conv4_i134_2_2_1@uint32 v_conv5_i136_1_2_1@uint8;
(*   %shr.i135.2.2.1 = ashr i32 %conv4.i134.2.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i135_2_2_1 tmp_to_be_used v_conv4_i134_2_2_1 1;
(*   %conv5.i136.2.2.1 = trunc i32 %shr.i135.2.2.1 to i8 *)
split tmp_v_shr_i135_2_2_1 v_conv5_i136_2_2_1 v_shr_i135_2_2_1 8;
vpc v_conv5_i136_2_2_1@uint8 v_conv5_i136_2_2_1@uint32;
(*   %conv6.i137.2.2.1 = zext i8 %conv7.i139.1.2.1 to i32 *)
cast v_conv6_i137_2_2_1@uint32 v_conv7_i139_1_2_1@uint8;
(*   %shl.i138.2.2.1 = shl i32 %conv6.i137.2.2.1, 1 *)
shls discard_51 v_shl_i138_2_2_1 v_conv6_i137_2_2_1 1;
(*   %conv7.i139.2.2.1 = trunc i32 %shl.i138.2.2.1 to i8 *)
split tmp_v_shl_i138_2_2_1 v_conv7_i139_2_2_1 v_shl_i138_2_2_1 8;
vpc v_conv7_i139_2_2_1@uint8 v_conv7_i139_2_2_1@uint32;
(*   %conv.i127.3.2.1 = zext i8 %conv5.i136.2.2.1 to i32 *)
cast v_conv_i127_3_2_1@uint32 v_conv5_i136_2_2_1@uint8;
(*   %and.i128.3.2.1 = and i32 %conv.i127.3.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_3_2_1 v_conv_i127_3_2_1 (0x1)@uint32;
(*   %conv1.i129.3.2.1 = zext i8 %conv7.i139.2.2.1 to i32 *)
cast v_conv1_i129_3_2_1@uint32 v_conv7_i139_2_2_1@uint8;
(*   %mul.i130.3.2.1 = mul nsw i32 %and.i128.3.2.1, %conv1.i129.3.2.1 *)
mul v_mul_i130_3_2_1 v_and_i128_3_2_1 v_conv1_i129_3_2_1;
(*   %conv2.i131.3.2.1 = zext i8 %conv3.i133.2.2.1 to i32 *)
cast v_conv2_i131_3_2_1@uint32 v_conv3_i133_2_2_1@uint8;
(*   %xor.i132.3.2.1 = xor i32 %conv2.i131.3.2.1, %mul.i130.3.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_3_2_1 v_conv2_i131_3_2_1 v_mul_i130_3_2_1;
(*   %conv3.i133.3.2.1 = trunc i32 %xor.i132.3.2.1 to i8 *)
split tmp_v_xor_i132_3_2_1 v_conv3_i133_3_2_1 v_xor_i132_3_2_1 8;
vpc v_conv3_i133_3_2_1@uint8 v_conv3_i133_3_2_1@uint32;
(*   %conv4.i134.3.2.1 = zext i8 %conv5.i136.2.2.1 to i32 *)
cast v_conv4_i134_3_2_1@uint32 v_conv5_i136_2_2_1@uint8;
(*   %shr.i135.3.2.1 = ashr i32 %conv4.i134.3.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i135_3_2_1 tmp_to_be_used v_conv4_i134_3_2_1 1;
(*   %conv5.i136.3.2.1 = trunc i32 %shr.i135.3.2.1 to i8 *)
split tmp_v_shr_i135_3_2_1 v_conv5_i136_3_2_1 v_shr_i135_3_2_1 8;
vpc v_conv5_i136_3_2_1@uint8 v_conv5_i136_3_2_1@uint32;
(*   %conv6.i137.3.2.1 = zext i8 %conv7.i139.2.2.1 to i32 *)
cast v_conv6_i137_3_2_1@uint32 v_conv7_i139_2_2_1@uint8;
(*   %shl.i138.3.2.1 = shl i32 %conv6.i137.3.2.1, 1 *)
shls discard_52 v_shl_i138_3_2_1 v_conv6_i137_3_2_1 1;
(*   %conv7.i139.3.2.1 = trunc i32 %shl.i138.3.2.1 to i8 *)
split tmp_v_shl_i138_3_2_1 v_conv7_i139_3_2_1 v_shl_i138_3_2_1 8;
vpc v_conv7_i139_3_2_1@uint8 v_conv7_i139_3_2_1@uint32;
(*   %conv.i127.4.2.1 = zext i8 %conv5.i136.3.2.1 to i32 *)
cast v_conv_i127_4_2_1@uint32 v_conv5_i136_3_2_1@uint8;
(*   %and.i128.4.2.1 = and i32 %conv.i127.4.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_4_2_1 v_conv_i127_4_2_1 (0x1)@uint32;
(*   %conv1.i129.4.2.1 = zext i8 %conv7.i139.3.2.1 to i32 *)
cast v_conv1_i129_4_2_1@uint32 v_conv7_i139_3_2_1@uint8;
(*   %mul.i130.4.2.1 = mul nsw i32 %and.i128.4.2.1, %conv1.i129.4.2.1 *)
mul v_mul_i130_4_2_1 v_and_i128_4_2_1 v_conv1_i129_4_2_1;
(*   %conv2.i131.4.2.1 = zext i8 %conv3.i133.3.2.1 to i32 *)
cast v_conv2_i131_4_2_1@uint32 v_conv3_i133_3_2_1@uint8;
(*   %xor.i132.4.2.1 = xor i32 %conv2.i131.4.2.1, %mul.i130.4.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_4_2_1 v_conv2_i131_4_2_1 v_mul_i130_4_2_1;
(*   %conv3.i133.4.2.1 = trunc i32 %xor.i132.4.2.1 to i8 *)
split tmp_v_xor_i132_4_2_1 v_conv3_i133_4_2_1 v_xor_i132_4_2_1 8;
vpc v_conv3_i133_4_2_1@uint8 v_conv3_i133_4_2_1@uint32;
(*   %conv4.i134.4.2.1 = zext i8 %conv5.i136.3.2.1 to i32 *)
cast v_conv4_i134_4_2_1@uint32 v_conv5_i136_3_2_1@uint8;
(*   %shr.i135.4.2.1 = ashr i32 %conv4.i134.4.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i135_4_2_1 tmp_to_be_used v_conv4_i134_4_2_1 1;
(*   %conv5.i136.4.2.1 = trunc i32 %shr.i135.4.2.1 to i8 *)
split tmp_v_shr_i135_4_2_1 v_conv5_i136_4_2_1 v_shr_i135_4_2_1 8;
vpc v_conv5_i136_4_2_1@uint8 v_conv5_i136_4_2_1@uint32;
(*   %conv6.i137.4.2.1 = zext i8 %conv7.i139.3.2.1 to i32 *)
cast v_conv6_i137_4_2_1@uint32 v_conv7_i139_3_2_1@uint8;
(*   %shl.i138.4.2.1 = shl i32 %conv6.i137.4.2.1, 1 *)
shls discard_53 v_shl_i138_4_2_1 v_conv6_i137_4_2_1 1;
(*   %conv7.i139.4.2.1 = trunc i32 %shl.i138.4.2.1 to i8 *)
split tmp_v_shl_i138_4_2_1 v_conv7_i139_4_2_1 v_shl_i138_4_2_1 8;
vpc v_conv7_i139_4_2_1@uint8 v_conv7_i139_4_2_1@uint32;
(*   %conv.i127.5.2.1 = zext i8 %conv5.i136.4.2.1 to i32 *)
cast v_conv_i127_5_2_1@uint32 v_conv5_i136_4_2_1@uint8;
(*   %and.i128.5.2.1 = and i32 %conv.i127.5.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_5_2_1 v_conv_i127_5_2_1 (0x1)@uint32;
(*   %conv1.i129.5.2.1 = zext i8 %conv7.i139.4.2.1 to i32 *)
cast v_conv1_i129_5_2_1@uint32 v_conv7_i139_4_2_1@uint8;
(*   %mul.i130.5.2.1 = mul nsw i32 %and.i128.5.2.1, %conv1.i129.5.2.1 *)
mul v_mul_i130_5_2_1 v_and_i128_5_2_1 v_conv1_i129_5_2_1;
(*   %conv2.i131.5.2.1 = zext i8 %conv3.i133.4.2.1 to i32 *)
cast v_conv2_i131_5_2_1@uint32 v_conv3_i133_4_2_1@uint8;
(*   %xor.i132.5.2.1 = xor i32 %conv2.i131.5.2.1, %mul.i130.5.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_5_2_1 v_conv2_i131_5_2_1 v_mul_i130_5_2_1;
(*   %conv3.i133.5.2.1 = trunc i32 %xor.i132.5.2.1 to i8 *)
split tmp_v_xor_i132_5_2_1 v_conv3_i133_5_2_1 v_xor_i132_5_2_1 8;
vpc v_conv3_i133_5_2_1@uint8 v_conv3_i133_5_2_1@uint32;
(*   %conv4.i134.5.2.1 = zext i8 %conv5.i136.4.2.1 to i32 *)
cast v_conv4_i134_5_2_1@uint32 v_conv5_i136_4_2_1@uint8;
(*   %shr.i135.5.2.1 = ashr i32 %conv4.i134.5.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i135_5_2_1 tmp_to_be_used v_conv4_i134_5_2_1 1;
(*   %conv5.i136.5.2.1 = trunc i32 %shr.i135.5.2.1 to i8 *)
split tmp_v_shr_i135_5_2_1 v_conv5_i136_5_2_1 v_shr_i135_5_2_1 8;
vpc v_conv5_i136_5_2_1@uint8 v_conv5_i136_5_2_1@uint32;
(*   %conv6.i137.5.2.1 = zext i8 %conv7.i139.4.2.1 to i32 *)
cast v_conv6_i137_5_2_1@uint32 v_conv7_i139_4_2_1@uint8;
(*   %shl.i138.5.2.1 = shl i32 %conv6.i137.5.2.1, 1 *)
shls discard_54 v_shl_i138_5_2_1 v_conv6_i137_5_2_1 1;
(*   %conv7.i139.5.2.1 = trunc i32 %shl.i138.5.2.1 to i8 *)
split tmp_v_shl_i138_5_2_1 v_conv7_i139_5_2_1 v_shl_i138_5_2_1 8;
vpc v_conv7_i139_5_2_1@uint8 v_conv7_i139_5_2_1@uint32;
(*   %conv.i127.6.2.1 = zext i8 %conv5.i136.5.2.1 to i32 *)
cast v_conv_i127_6_2_1@uint32 v_conv5_i136_5_2_1@uint8;
(*   %and.i128.6.2.1 = and i32 %conv.i127.6.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_6_2_1 v_conv_i127_6_2_1 (0x1)@uint32;
(*   %conv1.i129.6.2.1 = zext i8 %conv7.i139.5.2.1 to i32 *)
cast v_conv1_i129_6_2_1@uint32 v_conv7_i139_5_2_1@uint8;
(*   %mul.i130.6.2.1 = mul nsw i32 %and.i128.6.2.1, %conv1.i129.6.2.1 *)
mul v_mul_i130_6_2_1 v_and_i128_6_2_1 v_conv1_i129_6_2_1;
(*   %conv2.i131.6.2.1 = zext i8 %conv3.i133.5.2.1 to i32 *)
cast v_conv2_i131_6_2_1@uint32 v_conv3_i133_5_2_1@uint8;
(*   %xor.i132.6.2.1 = xor i32 %conv2.i131.6.2.1, %mul.i130.6.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_6_2_1 v_conv2_i131_6_2_1 v_mul_i130_6_2_1;
(*   %conv3.i133.6.2.1 = trunc i32 %xor.i132.6.2.1 to i8 *)
split tmp_v_xor_i132_6_2_1 v_conv3_i133_6_2_1 v_xor_i132_6_2_1 8;
vpc v_conv3_i133_6_2_1@uint8 v_conv3_i133_6_2_1@uint32;
(*   %conv4.i134.6.2.1 = zext i8 %conv5.i136.5.2.1 to i32 *)
cast v_conv4_i134_6_2_1@uint32 v_conv5_i136_5_2_1@uint8;
(*   %shr.i135.6.2.1 = ashr i32 %conv4.i134.6.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i135_6_2_1 tmp_to_be_used v_conv4_i134_6_2_1 1;
(*   %conv5.i136.6.2.1 = trunc i32 %shr.i135.6.2.1 to i8 *)
split tmp_v_shr_i135_6_2_1 v_conv5_i136_6_2_1 v_shr_i135_6_2_1 8;
vpc v_conv5_i136_6_2_1@uint8 v_conv5_i136_6_2_1@uint32;
(*   %conv6.i137.6.2.1 = zext i8 %conv7.i139.5.2.1 to i32 *)
cast v_conv6_i137_6_2_1@uint32 v_conv7_i139_5_2_1@uint8;
(*   %shl.i138.6.2.1 = shl i32 %conv6.i137.6.2.1, 1 *)
shls discard_55 v_shl_i138_6_2_1 v_conv6_i137_6_2_1 1;
(*   %conv7.i139.6.2.1 = trunc i32 %shl.i138.6.2.1 to i8 *)
split tmp_v_shl_i138_6_2_1 v_conv7_i139_6_2_1 v_shl_i138_6_2_1 8;
vpc v_conv7_i139_6_2_1@uint8 v_conv7_i139_6_2_1@uint32;
(*   %conv.i127.7.2.1 = zext i8 %conv5.i136.6.2.1 to i32 *)
cast v_conv_i127_7_2_1@uint32 v_conv5_i136_6_2_1@uint8;
(*   %and.i128.7.2.1 = and i32 %conv.i127.7.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_7_2_1 v_conv_i127_7_2_1 (0x1)@uint32;
(*   %conv1.i129.7.2.1 = zext i8 %conv7.i139.6.2.1 to i32 *)
cast v_conv1_i129_7_2_1@uint32 v_conv7_i139_6_2_1@uint8;
(*   %mul.i130.7.2.1 = mul nsw i32 %and.i128.7.2.1, %conv1.i129.7.2.1 *)
mul v_mul_i130_7_2_1 v_and_i128_7_2_1 v_conv1_i129_7_2_1;
(*   %conv2.i131.7.2.1 = zext i8 %conv3.i133.6.2.1 to i32 *)
cast v_conv2_i131_7_2_1@uint32 v_conv3_i133_6_2_1@uint8;
(*   %xor.i132.7.2.1 = xor i32 %conv2.i131.7.2.1, %mul.i130.7.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_7_2_1 v_conv2_i131_7_2_1 v_mul_i130_7_2_1;
(*   %conv3.i133.7.2.1 = trunc i32 %xor.i132.7.2.1 to i8 *)
split tmp_v_xor_i132_7_2_1 v_conv3_i133_7_2_1 v_xor_i132_7_2_1 8;
vpc v_conv3_i133_7_2_1@uint8 v_conv3_i133_7_2_1@uint32;
(*   %arrayidx56.2.1 = getelementptr inbounds [9 x i8], [9 x i8]* %p1, i64 0, i64 5 *)
(*   store i8 %conv3.i133.7.2.1, i8* %arrayidx56.2.1, align 1 *)
mov p1_5 v_conv3_i133_7_2_1;
(*   %arrayidx60.2.1 = getelementptr inbounds [9 x i8], [9 x i8]* %p0, i64 0, i64 5 *)
(*   %33 = load i8, i8* %arrayidx60.2.1, align 1 *)
mov v33 p0_5;
(*   %conv61.2.1 = zext i8 %33 to i32 *)
cast v_conv61_2_1@uint32 v33@uint8;
(*   %arrayidx65.2.1 = getelementptr inbounds [9 x i8], [9 x i8]* %p1, i64 0, i64 5 *)
(*   %34 = load i8, i8* %arrayidx65.2.1, align 1 *)
mov v34 p1_5;
(*   %conv66.2.1 = zext i8 %34 to i32 *)
cast v_conv66_2_1@uint32 v34@uint8;
(*   %xor67.2.1 = xor i32 %conv61.2.1, %conv66.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor67_2_1 v_conv61_2_1 v_conv66_2_1;
(*   %conv68.2.1 = trunc i32 %xor67.2.1 to i8 *)
split tmp_v_xor67_2_1 v_conv68_2_1 v_xor67_2_1 8;
vpc v_conv68_2_1@uint8 v_conv68_2_1@uint32;
(*   %arrayidx72.2.1 = getelementptr inbounds [9 x i8], [9 x i8]* %z, i64 0, i64 5 *)
(*   store i8 %conv68.2.1, i8* %arrayidx72.2.1, align 1 *)
mov z_5 v_conv68_2_1;
(*   %arrayidx34.2 = getelementptr inbounds i8, i8* %a, i64 2 *)
(*   %arrayidx47.2 = getelementptr inbounds i8, i8* %a, i64 2 *)
(*   %35 = load i8, i8* %b, align 1 *)
mov v35 b_0;
(*   %conv.2377 = zext i8 %35 to i32 *)
cast v_conv_2377@uint32 v35@uint8;
(*   %arrayidx26.2379 = getelementptr inbounds i8, i8* %r, i64 6 *)
(*   %36 = load i8, i8* %arrayidx26.2379, align 1 *)
mov v36 r_6;
(*   %conv27.2380 = zext i8 %36 to i32 *)
cast v_conv27_2380@uint32 v36@uint8;
(*   %xor.2381 = xor i32 %conv.2377, %conv27.2380 *)
(* You may need to modify here *)
xor uint32 v_xor_2381 v_conv_2377 v_conv27_2380;
(*   %conv28.2382 = trunc i32 %xor.2381 to i8 *)
split tmp_v_xor_2381 v_conv28_2382 v_xor_2381 8;
vpc v_conv28_2382@uint8 v_conv28_2382@uint32;
(*   %arrayidx32.2384 = getelementptr inbounds [9 x i8], [9 x i8]* %s, i64 0, i64 6 *)
(*   store i8 %conv28.2382, i8* %arrayidx32.2384, align 1 *)
mov s_6 v_conv28_2382;
(*   %37 = load i8, i8* %arrayidx34.2, align 1 *)
mov v37 a_2;
(*   %conv35.2385 = zext i8 %37 to i32 *)
cast v_conv35_2385@uint32 v37@uint8;
(*   %xor36.2386 = xor i32 %conv35.2385, 1 *)
(* You may need to modify here *)
xor uint32 v_xor36_2386 v_conv35_2385 (0x1)@uint32;
(*   %conv37.2387 = trunc i32 %xor36.2386 to i8 *)
split tmp_v_xor36_2386 v_conv37_2387 v_xor36_2386 8;
vpc v_conv37_2387@uint8 v_conv37_2387@uint32;
(*   %arrayidx41.2389 = getelementptr inbounds i8, i8* %r, i64 6 *)
(*   %38 = load i8, i8* %arrayidx41.2389, align 1 *)
mov v38 r_6;
(*   %conv.i.2391 = zext i8 %38 to i32 *)
cast v_conv_i_2391@uint32 v38@uint8;
(*   %and.i.2392 = and i32 %conv.i.2391, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2392 v_conv_i_2391 (0x1)@uint32;
(*   %conv1.i.2393 = zext i8 %conv37.2387 to i32 *)
cast v_conv1_i_2393@uint32 v_conv37_2387@uint8;
(*   %mul.i.2394 = mul nsw i32 %and.i.2392, %conv1.i.2393 *)
mul v_mul_i_2394 v_and_i_2392 v_conv1_i_2393;
(*   %conv3.i.2395 = trunc i32 %mul.i.2394 to i8 *)
split tmp_v_mul_i_2394 v_conv3_i_2395 v_mul_i_2394 8;
vpc v_conv3_i_2395@uint8 v_conv3_i_2395@uint32;
(*   %conv4.i.2396 = zext i8 %38 to i32 *)
cast v_conv4_i_2396@uint32 v38@uint8;
(*   %shr.i.2397 = ashr i32 %conv4.i.2396, 1 *)
(* You may need to modify here *)
split v_shr_i_2397 tmp_to_be_used v_conv4_i_2396 1;
(*   %conv5.i.2398 = trunc i32 %shr.i.2397 to i8 *)
split tmp_v_shr_i_2397 v_conv5_i_2398 v_shr_i_2397 8;
vpc v_conv5_i_2398@uint8 v_conv5_i_2398@uint32;
(*   %conv6.i.2399 = zext i8 %conv37.2387 to i32 *)
cast v_conv6_i_2399@uint32 v_conv37_2387@uint8;
(*   %shl.i.2400 = shl i32 %conv6.i.2399, 1 *)
shls discard_56 v_shl_i_2400 v_conv6_i_2399 1;
(*   %conv7.i.2401 = trunc i32 %shl.i.2400 to i8 *)
split tmp_v_shl_i_2400 v_conv7_i_2401 v_shl_i_2400 8;
vpc v_conv7_i_2401@uint8 v_conv7_i_2401@uint32;
(*   %conv.i.1.2402 = zext i8 %conv5.i.2398 to i32 *)
cast v_conv_i_1_2402@uint32 v_conv5_i_2398@uint8;
(*   %and.i.1.2403 = and i32 %conv.i.1.2402, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_2403 v_conv_i_1_2402 (0x1)@uint32;
(*   %conv1.i.1.2404 = zext i8 %conv7.i.2401 to i32 *)
cast v_conv1_i_1_2404@uint32 v_conv7_i_2401@uint8;
(*   %mul.i.1.2405 = mul nsw i32 %and.i.1.2403, %conv1.i.1.2404 *)
mul v_mul_i_1_2405 v_and_i_1_2403 v_conv1_i_1_2404;
(*   %conv2.i.1.2406 = zext i8 %conv3.i.2395 to i32 *)
cast v_conv2_i_1_2406@uint32 v_conv3_i_2395@uint8;
(*   %xor.i.1.2407 = xor i32 %conv2.i.1.2406, %mul.i.1.2405 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_2407 v_conv2_i_1_2406 v_mul_i_1_2405;
(*   %conv3.i.1.2408 = trunc i32 %xor.i.1.2407 to i8 *)
split tmp_v_xor_i_1_2407 v_conv3_i_1_2408 v_xor_i_1_2407 8;
vpc v_conv3_i_1_2408@uint8 v_conv3_i_1_2408@uint32;
(*   %conv4.i.1.2409 = zext i8 %conv5.i.2398 to i32 *)
cast v_conv4_i_1_2409@uint32 v_conv5_i_2398@uint8;
(*   %shr.i.1.2410 = ashr i32 %conv4.i.1.2409, 1 *)
(* You may need to modify here *)
split v_shr_i_1_2410 tmp_to_be_used v_conv4_i_1_2409 1;
(*   %conv5.i.1.2411 = trunc i32 %shr.i.1.2410 to i8 *)
split tmp_v_shr_i_1_2410 v_conv5_i_1_2411 v_shr_i_1_2410 8;
vpc v_conv5_i_1_2411@uint8 v_conv5_i_1_2411@uint32;
(*   %conv6.i.1.2412 = zext i8 %conv7.i.2401 to i32 *)
cast v_conv6_i_1_2412@uint32 v_conv7_i_2401@uint8;
(*   %shl.i.1.2413 = shl i32 %conv6.i.1.2412, 1 *)
shls discard_57 v_shl_i_1_2413 v_conv6_i_1_2412 1;
(*   %conv7.i.1.2414 = trunc i32 %shl.i.1.2413 to i8 *)
split tmp_v_shl_i_1_2413 v_conv7_i_1_2414 v_shl_i_1_2413 8;
vpc v_conv7_i_1_2414@uint8 v_conv7_i_1_2414@uint32;
(*   %conv.i.2.2415 = zext i8 %conv5.i.1.2411 to i32 *)
cast v_conv_i_2_2415@uint32 v_conv5_i_1_2411@uint8;
(*   %and.i.2.2416 = and i32 %conv.i.2.2415, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_2416 v_conv_i_2_2415 (0x1)@uint32;
(*   %conv1.i.2.2417 = zext i8 %conv7.i.1.2414 to i32 *)
cast v_conv1_i_2_2417@uint32 v_conv7_i_1_2414@uint8;
(*   %mul.i.2.2418 = mul nsw i32 %and.i.2.2416, %conv1.i.2.2417 *)
mul v_mul_i_2_2418 v_and_i_2_2416 v_conv1_i_2_2417;
(*   %conv2.i.2.2419 = zext i8 %conv3.i.1.2408 to i32 *)
cast v_conv2_i_2_2419@uint32 v_conv3_i_1_2408@uint8;
(*   %xor.i.2.2420 = xor i32 %conv2.i.2.2419, %mul.i.2.2418 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_2420 v_conv2_i_2_2419 v_mul_i_2_2418;
(*   %conv3.i.2.2421 = trunc i32 %xor.i.2.2420 to i8 *)
split tmp_v_xor_i_2_2420 v_conv3_i_2_2421 v_xor_i_2_2420 8;
vpc v_conv3_i_2_2421@uint8 v_conv3_i_2_2421@uint32;
(*   %conv4.i.2.2422 = zext i8 %conv5.i.1.2411 to i32 *)
cast v_conv4_i_2_2422@uint32 v_conv5_i_1_2411@uint8;
(*   %shr.i.2.2423 = ashr i32 %conv4.i.2.2422, 1 *)
(* You may need to modify here *)
split v_shr_i_2_2423 tmp_to_be_used v_conv4_i_2_2422 1;
(*   %conv5.i.2.2424 = trunc i32 %shr.i.2.2423 to i8 *)
split tmp_v_shr_i_2_2423 v_conv5_i_2_2424 v_shr_i_2_2423 8;
vpc v_conv5_i_2_2424@uint8 v_conv5_i_2_2424@uint32;
(*   %conv6.i.2.2425 = zext i8 %conv7.i.1.2414 to i32 *)
cast v_conv6_i_2_2425@uint32 v_conv7_i_1_2414@uint8;
(*   %shl.i.2.2426 = shl i32 %conv6.i.2.2425, 1 *)
shls discard_58 v_shl_i_2_2426 v_conv6_i_2_2425 1;
(*   %conv7.i.2.2427 = trunc i32 %shl.i.2.2426 to i8 *)
split tmp_v_shl_i_2_2426 v_conv7_i_2_2427 v_shl_i_2_2426 8;
vpc v_conv7_i_2_2427@uint8 v_conv7_i_2_2427@uint32;
(*   %conv.i.3.2428 = zext i8 %conv5.i.2.2424 to i32 *)
cast v_conv_i_3_2428@uint32 v_conv5_i_2_2424@uint8;
(*   %and.i.3.2429 = and i32 %conv.i.3.2428, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_2429 v_conv_i_3_2428 (0x1)@uint32;
(*   %conv1.i.3.2430 = zext i8 %conv7.i.2.2427 to i32 *)
cast v_conv1_i_3_2430@uint32 v_conv7_i_2_2427@uint8;
(*   %mul.i.3.2431 = mul nsw i32 %and.i.3.2429, %conv1.i.3.2430 *)
mul v_mul_i_3_2431 v_and_i_3_2429 v_conv1_i_3_2430;
(*   %conv2.i.3.2432 = zext i8 %conv3.i.2.2421 to i32 *)
cast v_conv2_i_3_2432@uint32 v_conv3_i_2_2421@uint8;
(*   %xor.i.3.2433 = xor i32 %conv2.i.3.2432, %mul.i.3.2431 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_2433 v_conv2_i_3_2432 v_mul_i_3_2431;
(*   %conv3.i.3.2434 = trunc i32 %xor.i.3.2433 to i8 *)
split tmp_v_xor_i_3_2433 v_conv3_i_3_2434 v_xor_i_3_2433 8;
vpc v_conv3_i_3_2434@uint8 v_conv3_i_3_2434@uint32;
(*   %conv4.i.3.2435 = zext i8 %conv5.i.2.2424 to i32 *)
cast v_conv4_i_3_2435@uint32 v_conv5_i_2_2424@uint8;
(*   %shr.i.3.2436 = ashr i32 %conv4.i.3.2435, 1 *)
(* You may need to modify here *)
split v_shr_i_3_2436 tmp_to_be_used v_conv4_i_3_2435 1;
(*   %conv5.i.3.2437 = trunc i32 %shr.i.3.2436 to i8 *)
split tmp_v_shr_i_3_2436 v_conv5_i_3_2437 v_shr_i_3_2436 8;
vpc v_conv5_i_3_2437@uint8 v_conv5_i_3_2437@uint32;
(*   %conv6.i.3.2438 = zext i8 %conv7.i.2.2427 to i32 *)
cast v_conv6_i_3_2438@uint32 v_conv7_i_2_2427@uint8;
(*   %shl.i.3.2439 = shl i32 %conv6.i.3.2438, 1 *)
shls discard_59 v_shl_i_3_2439 v_conv6_i_3_2438 1;
(*   %conv7.i.3.2440 = trunc i32 %shl.i.3.2439 to i8 *)
split tmp_v_shl_i_3_2439 v_conv7_i_3_2440 v_shl_i_3_2439 8;
vpc v_conv7_i_3_2440@uint8 v_conv7_i_3_2440@uint32;
(*   %conv.i.4.2441 = zext i8 %conv5.i.3.2437 to i32 *)
cast v_conv_i_4_2441@uint32 v_conv5_i_3_2437@uint8;
(*   %and.i.4.2442 = and i32 %conv.i.4.2441, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_2442 v_conv_i_4_2441 (0x1)@uint32;
(*   %conv1.i.4.2443 = zext i8 %conv7.i.3.2440 to i32 *)
cast v_conv1_i_4_2443@uint32 v_conv7_i_3_2440@uint8;
(*   %mul.i.4.2444 = mul nsw i32 %and.i.4.2442, %conv1.i.4.2443 *)
mul v_mul_i_4_2444 v_and_i_4_2442 v_conv1_i_4_2443;
(*   %conv2.i.4.2445 = zext i8 %conv3.i.3.2434 to i32 *)
cast v_conv2_i_4_2445@uint32 v_conv3_i_3_2434@uint8;
(*   %xor.i.4.2446 = xor i32 %conv2.i.4.2445, %mul.i.4.2444 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_2446 v_conv2_i_4_2445 v_mul_i_4_2444;
(*   %conv3.i.4.2447 = trunc i32 %xor.i.4.2446 to i8 *)
split tmp_v_xor_i_4_2446 v_conv3_i_4_2447 v_xor_i_4_2446 8;
vpc v_conv3_i_4_2447@uint8 v_conv3_i_4_2447@uint32;
(*   %conv4.i.4.2448 = zext i8 %conv5.i.3.2437 to i32 *)
cast v_conv4_i_4_2448@uint32 v_conv5_i_3_2437@uint8;
(*   %shr.i.4.2449 = ashr i32 %conv4.i.4.2448, 1 *)
(* You may need to modify here *)
split v_shr_i_4_2449 tmp_to_be_used v_conv4_i_4_2448 1;
(*   %conv5.i.4.2450 = trunc i32 %shr.i.4.2449 to i8 *)
split tmp_v_shr_i_4_2449 v_conv5_i_4_2450 v_shr_i_4_2449 8;
vpc v_conv5_i_4_2450@uint8 v_conv5_i_4_2450@uint32;
(*   %conv6.i.4.2451 = zext i8 %conv7.i.3.2440 to i32 *)
cast v_conv6_i_4_2451@uint32 v_conv7_i_3_2440@uint8;
(*   %shl.i.4.2452 = shl i32 %conv6.i.4.2451, 1 *)
shls discard_60 v_shl_i_4_2452 v_conv6_i_4_2451 1;
(*   %conv7.i.4.2453 = trunc i32 %shl.i.4.2452 to i8 *)
split tmp_v_shl_i_4_2452 v_conv7_i_4_2453 v_shl_i_4_2452 8;
vpc v_conv7_i_4_2453@uint8 v_conv7_i_4_2453@uint32;
(*   %conv.i.5.2454 = zext i8 %conv5.i.4.2450 to i32 *)
cast v_conv_i_5_2454@uint32 v_conv5_i_4_2450@uint8;
(*   %and.i.5.2455 = and i32 %conv.i.5.2454, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_2455 v_conv_i_5_2454 (0x1)@uint32;
(*   %conv1.i.5.2456 = zext i8 %conv7.i.4.2453 to i32 *)
cast v_conv1_i_5_2456@uint32 v_conv7_i_4_2453@uint8;
(*   %mul.i.5.2457 = mul nsw i32 %and.i.5.2455, %conv1.i.5.2456 *)
mul v_mul_i_5_2457 v_and_i_5_2455 v_conv1_i_5_2456;
(*   %conv2.i.5.2458 = zext i8 %conv3.i.4.2447 to i32 *)
cast v_conv2_i_5_2458@uint32 v_conv3_i_4_2447@uint8;
(*   %xor.i.5.2459 = xor i32 %conv2.i.5.2458, %mul.i.5.2457 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_2459 v_conv2_i_5_2458 v_mul_i_5_2457;
(*   %conv3.i.5.2460 = trunc i32 %xor.i.5.2459 to i8 *)
split tmp_v_xor_i_5_2459 v_conv3_i_5_2460 v_xor_i_5_2459 8;
vpc v_conv3_i_5_2460@uint8 v_conv3_i_5_2460@uint32;
(*   %conv4.i.5.2461 = zext i8 %conv5.i.4.2450 to i32 *)
cast v_conv4_i_5_2461@uint32 v_conv5_i_4_2450@uint8;
(*   %shr.i.5.2462 = ashr i32 %conv4.i.5.2461, 1 *)
(* You may need to modify here *)
split v_shr_i_5_2462 tmp_to_be_used v_conv4_i_5_2461 1;
(*   %conv5.i.5.2463 = trunc i32 %shr.i.5.2462 to i8 *)
split tmp_v_shr_i_5_2462 v_conv5_i_5_2463 v_shr_i_5_2462 8;
vpc v_conv5_i_5_2463@uint8 v_conv5_i_5_2463@uint32;
(*   %conv6.i.5.2464 = zext i8 %conv7.i.4.2453 to i32 *)
cast v_conv6_i_5_2464@uint32 v_conv7_i_4_2453@uint8;
(*   %shl.i.5.2465 = shl i32 %conv6.i.5.2464, 1 *)
shls discard_61 v_shl_i_5_2465 v_conv6_i_5_2464 1;
(*   %conv7.i.5.2466 = trunc i32 %shl.i.5.2465 to i8 *)
split tmp_v_shl_i_5_2465 v_conv7_i_5_2466 v_shl_i_5_2465 8;
vpc v_conv7_i_5_2466@uint8 v_conv7_i_5_2466@uint32;
(*   %conv.i.6.2467 = zext i8 %conv5.i.5.2463 to i32 *)
cast v_conv_i_6_2467@uint32 v_conv5_i_5_2463@uint8;
(*   %and.i.6.2468 = and i32 %conv.i.6.2467, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_2468 v_conv_i_6_2467 (0x1)@uint32;
(*   %conv1.i.6.2469 = zext i8 %conv7.i.5.2466 to i32 *)
cast v_conv1_i_6_2469@uint32 v_conv7_i_5_2466@uint8;
(*   %mul.i.6.2470 = mul nsw i32 %and.i.6.2468, %conv1.i.6.2469 *)
mul v_mul_i_6_2470 v_and_i_6_2468 v_conv1_i_6_2469;
(*   %conv2.i.6.2471 = zext i8 %conv3.i.5.2460 to i32 *)
cast v_conv2_i_6_2471@uint32 v_conv3_i_5_2460@uint8;
(*   %xor.i.6.2472 = xor i32 %conv2.i.6.2471, %mul.i.6.2470 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_2472 v_conv2_i_6_2471 v_mul_i_6_2470;
(*   %conv3.i.6.2473 = trunc i32 %xor.i.6.2472 to i8 *)
split tmp_v_xor_i_6_2472 v_conv3_i_6_2473 v_xor_i_6_2472 8;
vpc v_conv3_i_6_2473@uint8 v_conv3_i_6_2473@uint32;
(*   %conv4.i.6.2474 = zext i8 %conv5.i.5.2463 to i32 *)
cast v_conv4_i_6_2474@uint32 v_conv5_i_5_2463@uint8;
(*   %shr.i.6.2475 = ashr i32 %conv4.i.6.2474, 1 *)
(* You may need to modify here *)
split v_shr_i_6_2475 tmp_to_be_used v_conv4_i_6_2474 1;
(*   %conv5.i.6.2476 = trunc i32 %shr.i.6.2475 to i8 *)
split tmp_v_shr_i_6_2475 v_conv5_i_6_2476 v_shr_i_6_2475 8;
vpc v_conv5_i_6_2476@uint8 v_conv5_i_6_2476@uint32;
(*   %conv6.i.6.2477 = zext i8 %conv7.i.5.2466 to i32 *)
cast v_conv6_i_6_2477@uint32 v_conv7_i_5_2466@uint8;
(*   %shl.i.6.2478 = shl i32 %conv6.i.6.2477, 1 *)
shls discard_62 v_shl_i_6_2478 v_conv6_i_6_2477 1;
(*   %conv7.i.6.2479 = trunc i32 %shl.i.6.2478 to i8 *)
split tmp_v_shl_i_6_2478 v_conv7_i_6_2479 v_shl_i_6_2478 8;
vpc v_conv7_i_6_2479@uint8 v_conv7_i_6_2479@uint32;
(*   %conv.i.7.2480 = zext i8 %conv5.i.6.2476 to i32 *)
cast v_conv_i_7_2480@uint32 v_conv5_i_6_2476@uint8;
(*   %and.i.7.2481 = and i32 %conv.i.7.2480, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_2481 v_conv_i_7_2480 (0x1)@uint32;
(*   %conv1.i.7.2482 = zext i8 %conv7.i.6.2479 to i32 *)
cast v_conv1_i_7_2482@uint32 v_conv7_i_6_2479@uint8;
(*   %mul.i.7.2483 = mul nsw i32 %and.i.7.2481, %conv1.i.7.2482 *)
mul v_mul_i_7_2483 v_and_i_7_2481 v_conv1_i_7_2482;
(*   %conv2.i.7.2484 = zext i8 %conv3.i.6.2473 to i32 *)
cast v_conv2_i_7_2484@uint32 v_conv3_i_6_2473@uint8;
(*   %xor.i.7.2485 = xor i32 %conv2.i.7.2484, %mul.i.7.2483 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_2485 v_conv2_i_7_2484 v_mul_i_7_2483;
(*   %conv3.i.7.2486 = trunc i32 %xor.i.7.2485 to i8 *)
split tmp_v_xor_i_7_2485 v_conv3_i_7_2486 v_xor_i_7_2485 8;
vpc v_conv3_i_7_2486@uint8 v_conv3_i_7_2486@uint32;
(*   %arrayidx45.2490 = getelementptr inbounds [9 x i8], [9 x i8]* %p0, i64 0, i64 6 *)
(*   store i8 %conv3.i.7.2486, i8* %arrayidx45.2490, align 1 *)
mov p0_6 v_conv3_i_7_2486;
(*   %39 = load i8, i8* %arrayidx47.2, align 1 *)
mov v39 a_2;
(*   %arrayidx51.2492 = getelementptr inbounds [9 x i8], [9 x i8]* %s, i64 0, i64 6 *)
(*   %40 = load i8, i8* %arrayidx51.2492, align 1 *)
mov v40 s_6;
(*   %conv.i127.2494 = zext i8 %40 to i32 *)
cast v_conv_i127_2494@uint32 v40@uint8;
(*   %and.i128.2495 = and i32 %conv.i127.2494, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_2495 v_conv_i127_2494 (0x1)@uint32;
(*   %conv1.i129.2496 = zext i8 %39 to i32 *)
cast v_conv1_i129_2496@uint32 v39@uint8;
(*   %mul.i130.2497 = mul nsw i32 %and.i128.2495, %conv1.i129.2496 *)
mul v_mul_i130_2497 v_and_i128_2495 v_conv1_i129_2496;
(*   %conv3.i133.2498 = trunc i32 %mul.i130.2497 to i8 *)
split tmp_v_mul_i130_2497 v_conv3_i133_2498 v_mul_i130_2497 8;
vpc v_conv3_i133_2498@uint8 v_conv3_i133_2498@uint32;
(*   %conv4.i134.2499 = zext i8 %40 to i32 *)
cast v_conv4_i134_2499@uint32 v40@uint8;
(*   %shr.i135.2500 = ashr i32 %conv4.i134.2499, 1 *)
(* You may need to modify here *)
split v_shr_i135_2500 tmp_to_be_used v_conv4_i134_2499 1;
(*   %conv5.i136.2501 = trunc i32 %shr.i135.2500 to i8 *)
split tmp_v_shr_i135_2500 v_conv5_i136_2501 v_shr_i135_2500 8;
vpc v_conv5_i136_2501@uint8 v_conv5_i136_2501@uint32;
(*   %conv6.i137.2502 = zext i8 %39 to i32 *)
cast v_conv6_i137_2502@uint32 v39@uint8;
(*   %shl.i138.2503 = shl i32 %conv6.i137.2502, 1 *)
shls discard_63 v_shl_i138_2503 v_conv6_i137_2502 1;
(*   %conv7.i139.2504 = trunc i32 %shl.i138.2503 to i8 *)
split tmp_v_shl_i138_2503 v_conv7_i139_2504 v_shl_i138_2503 8;
vpc v_conv7_i139_2504@uint8 v_conv7_i139_2504@uint32;
(*   %conv.i127.1.2505 = zext i8 %conv5.i136.2501 to i32 *)
cast v_conv_i127_1_2505@uint32 v_conv5_i136_2501@uint8;
(*   %and.i128.1.2506 = and i32 %conv.i127.1.2505, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1_2506 v_conv_i127_1_2505 (0x1)@uint32;
(*   %conv1.i129.1.2507 = zext i8 %conv7.i139.2504 to i32 *)
cast v_conv1_i129_1_2507@uint32 v_conv7_i139_2504@uint8;
(*   %mul.i130.1.2508 = mul nsw i32 %and.i128.1.2506, %conv1.i129.1.2507 *)
mul v_mul_i130_1_2508 v_and_i128_1_2506 v_conv1_i129_1_2507;
(*   %conv2.i131.1.2509 = zext i8 %conv3.i133.2498 to i32 *)
cast v_conv2_i131_1_2509@uint32 v_conv3_i133_2498@uint8;
(*   %xor.i132.1.2510 = xor i32 %conv2.i131.1.2509, %mul.i130.1.2508 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_1_2510 v_conv2_i131_1_2509 v_mul_i130_1_2508;
(*   %conv3.i133.1.2511 = trunc i32 %xor.i132.1.2510 to i8 *)
split tmp_v_xor_i132_1_2510 v_conv3_i133_1_2511 v_xor_i132_1_2510 8;
vpc v_conv3_i133_1_2511@uint8 v_conv3_i133_1_2511@uint32;
(*   %conv4.i134.1.2512 = zext i8 %conv5.i136.2501 to i32 *)
cast v_conv4_i134_1_2512@uint32 v_conv5_i136_2501@uint8;
(*   %shr.i135.1.2513 = ashr i32 %conv4.i134.1.2512, 1 *)
(* You may need to modify here *)
split v_shr_i135_1_2513 tmp_to_be_used v_conv4_i134_1_2512 1;
(*   %conv5.i136.1.2514 = trunc i32 %shr.i135.1.2513 to i8 *)
split tmp_v_shr_i135_1_2513 v_conv5_i136_1_2514 v_shr_i135_1_2513 8;
vpc v_conv5_i136_1_2514@uint8 v_conv5_i136_1_2514@uint32;
(*   %conv6.i137.1.2515 = zext i8 %conv7.i139.2504 to i32 *)
cast v_conv6_i137_1_2515@uint32 v_conv7_i139_2504@uint8;
(*   %shl.i138.1.2516 = shl i32 %conv6.i137.1.2515, 1 *)
shls discard_64 v_shl_i138_1_2516 v_conv6_i137_1_2515 1;
(*   %conv7.i139.1.2517 = trunc i32 %shl.i138.1.2516 to i8 *)
split tmp_v_shl_i138_1_2516 v_conv7_i139_1_2517 v_shl_i138_1_2516 8;
vpc v_conv7_i139_1_2517@uint8 v_conv7_i139_1_2517@uint32;
(*   %conv.i127.2.2518 = zext i8 %conv5.i136.1.2514 to i32 *)
cast v_conv_i127_2_2518@uint32 v_conv5_i136_1_2514@uint8;
(*   %and.i128.2.2519 = and i32 %conv.i127.2.2518, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_2_2519 v_conv_i127_2_2518 (0x1)@uint32;
(*   %conv1.i129.2.2520 = zext i8 %conv7.i139.1.2517 to i32 *)
cast v_conv1_i129_2_2520@uint32 v_conv7_i139_1_2517@uint8;
(*   %mul.i130.2.2521 = mul nsw i32 %and.i128.2.2519, %conv1.i129.2.2520 *)
mul v_mul_i130_2_2521 v_and_i128_2_2519 v_conv1_i129_2_2520;
(*   %conv2.i131.2.2522 = zext i8 %conv3.i133.1.2511 to i32 *)
cast v_conv2_i131_2_2522@uint32 v_conv3_i133_1_2511@uint8;
(*   %xor.i132.2.2523 = xor i32 %conv2.i131.2.2522, %mul.i130.2.2521 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_2_2523 v_conv2_i131_2_2522 v_mul_i130_2_2521;
(*   %conv3.i133.2.2524 = trunc i32 %xor.i132.2.2523 to i8 *)
split tmp_v_xor_i132_2_2523 v_conv3_i133_2_2524 v_xor_i132_2_2523 8;
vpc v_conv3_i133_2_2524@uint8 v_conv3_i133_2_2524@uint32;
(*   %conv4.i134.2.2525 = zext i8 %conv5.i136.1.2514 to i32 *)
cast v_conv4_i134_2_2525@uint32 v_conv5_i136_1_2514@uint8;
(*   %shr.i135.2.2526 = ashr i32 %conv4.i134.2.2525, 1 *)
(* You may need to modify here *)
split v_shr_i135_2_2526 tmp_to_be_used v_conv4_i134_2_2525 1;
(*   %conv5.i136.2.2527 = trunc i32 %shr.i135.2.2526 to i8 *)
split tmp_v_shr_i135_2_2526 v_conv5_i136_2_2527 v_shr_i135_2_2526 8;
vpc v_conv5_i136_2_2527@uint8 v_conv5_i136_2_2527@uint32;
(*   %conv6.i137.2.2528 = zext i8 %conv7.i139.1.2517 to i32 *)
cast v_conv6_i137_2_2528@uint32 v_conv7_i139_1_2517@uint8;
(*   %shl.i138.2.2529 = shl i32 %conv6.i137.2.2528, 1 *)
shls discard_65 v_shl_i138_2_2529 v_conv6_i137_2_2528 1;
(*   %conv7.i139.2.2530 = trunc i32 %shl.i138.2.2529 to i8 *)
split tmp_v_shl_i138_2_2529 v_conv7_i139_2_2530 v_shl_i138_2_2529 8;
vpc v_conv7_i139_2_2530@uint8 v_conv7_i139_2_2530@uint32;
(*   %conv.i127.3.2531 = zext i8 %conv5.i136.2.2527 to i32 *)
cast v_conv_i127_3_2531@uint32 v_conv5_i136_2_2527@uint8;
(*   %and.i128.3.2532 = and i32 %conv.i127.3.2531, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_3_2532 v_conv_i127_3_2531 (0x1)@uint32;
(*   %conv1.i129.3.2533 = zext i8 %conv7.i139.2.2530 to i32 *)
cast v_conv1_i129_3_2533@uint32 v_conv7_i139_2_2530@uint8;
(*   %mul.i130.3.2534 = mul nsw i32 %and.i128.3.2532, %conv1.i129.3.2533 *)
mul v_mul_i130_3_2534 v_and_i128_3_2532 v_conv1_i129_3_2533;
(*   %conv2.i131.3.2535 = zext i8 %conv3.i133.2.2524 to i32 *)
cast v_conv2_i131_3_2535@uint32 v_conv3_i133_2_2524@uint8;
(*   %xor.i132.3.2536 = xor i32 %conv2.i131.3.2535, %mul.i130.3.2534 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_3_2536 v_conv2_i131_3_2535 v_mul_i130_3_2534;
(*   %conv3.i133.3.2537 = trunc i32 %xor.i132.3.2536 to i8 *)
split tmp_v_xor_i132_3_2536 v_conv3_i133_3_2537 v_xor_i132_3_2536 8;
vpc v_conv3_i133_3_2537@uint8 v_conv3_i133_3_2537@uint32;
(*   %conv4.i134.3.2538 = zext i8 %conv5.i136.2.2527 to i32 *)
cast v_conv4_i134_3_2538@uint32 v_conv5_i136_2_2527@uint8;
(*   %shr.i135.3.2539 = ashr i32 %conv4.i134.3.2538, 1 *)
(* You may need to modify here *)
split v_shr_i135_3_2539 tmp_to_be_used v_conv4_i134_3_2538 1;
(*   %conv5.i136.3.2540 = trunc i32 %shr.i135.3.2539 to i8 *)
split tmp_v_shr_i135_3_2539 v_conv5_i136_3_2540 v_shr_i135_3_2539 8;
vpc v_conv5_i136_3_2540@uint8 v_conv5_i136_3_2540@uint32;
(*   %conv6.i137.3.2541 = zext i8 %conv7.i139.2.2530 to i32 *)
cast v_conv6_i137_3_2541@uint32 v_conv7_i139_2_2530@uint8;
(*   %shl.i138.3.2542 = shl i32 %conv6.i137.3.2541, 1 *)
shls discard_66 v_shl_i138_3_2542 v_conv6_i137_3_2541 1;
(*   %conv7.i139.3.2543 = trunc i32 %shl.i138.3.2542 to i8 *)
split tmp_v_shl_i138_3_2542 v_conv7_i139_3_2543 v_shl_i138_3_2542 8;
vpc v_conv7_i139_3_2543@uint8 v_conv7_i139_3_2543@uint32;
(*   %conv.i127.4.2544 = zext i8 %conv5.i136.3.2540 to i32 *)
cast v_conv_i127_4_2544@uint32 v_conv5_i136_3_2540@uint8;
(*   %and.i128.4.2545 = and i32 %conv.i127.4.2544, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_4_2545 v_conv_i127_4_2544 (0x1)@uint32;
(*   %conv1.i129.4.2546 = zext i8 %conv7.i139.3.2543 to i32 *)
cast v_conv1_i129_4_2546@uint32 v_conv7_i139_3_2543@uint8;
(*   %mul.i130.4.2547 = mul nsw i32 %and.i128.4.2545, %conv1.i129.4.2546 *)
mul v_mul_i130_4_2547 v_and_i128_4_2545 v_conv1_i129_4_2546;
(*   %conv2.i131.4.2548 = zext i8 %conv3.i133.3.2537 to i32 *)
cast v_conv2_i131_4_2548@uint32 v_conv3_i133_3_2537@uint8;
(*   %xor.i132.4.2549 = xor i32 %conv2.i131.4.2548, %mul.i130.4.2547 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_4_2549 v_conv2_i131_4_2548 v_mul_i130_4_2547;
(*   %conv3.i133.4.2550 = trunc i32 %xor.i132.4.2549 to i8 *)
split tmp_v_xor_i132_4_2549 v_conv3_i133_4_2550 v_xor_i132_4_2549 8;
vpc v_conv3_i133_4_2550@uint8 v_conv3_i133_4_2550@uint32;
(*   %conv4.i134.4.2551 = zext i8 %conv5.i136.3.2540 to i32 *)
cast v_conv4_i134_4_2551@uint32 v_conv5_i136_3_2540@uint8;
(*   %shr.i135.4.2552 = ashr i32 %conv4.i134.4.2551, 1 *)
(* You may need to modify here *)
split v_shr_i135_4_2552 tmp_to_be_used v_conv4_i134_4_2551 1;
(*   %conv5.i136.4.2553 = trunc i32 %shr.i135.4.2552 to i8 *)
split tmp_v_shr_i135_4_2552 v_conv5_i136_4_2553 v_shr_i135_4_2552 8;
vpc v_conv5_i136_4_2553@uint8 v_conv5_i136_4_2553@uint32;
(*   %conv6.i137.4.2554 = zext i8 %conv7.i139.3.2543 to i32 *)
cast v_conv6_i137_4_2554@uint32 v_conv7_i139_3_2543@uint8;
(*   %shl.i138.4.2555 = shl i32 %conv6.i137.4.2554, 1 *)
shls discard_67 v_shl_i138_4_2555 v_conv6_i137_4_2554 1;
(*   %conv7.i139.4.2556 = trunc i32 %shl.i138.4.2555 to i8 *)
split tmp_v_shl_i138_4_2555 v_conv7_i139_4_2556 v_shl_i138_4_2555 8;
vpc v_conv7_i139_4_2556@uint8 v_conv7_i139_4_2556@uint32;
(*   %conv.i127.5.2557 = zext i8 %conv5.i136.4.2553 to i32 *)
cast v_conv_i127_5_2557@uint32 v_conv5_i136_4_2553@uint8;
(*   %and.i128.5.2558 = and i32 %conv.i127.5.2557, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_5_2558 v_conv_i127_5_2557 (0x1)@uint32;
(*   %conv1.i129.5.2559 = zext i8 %conv7.i139.4.2556 to i32 *)
cast v_conv1_i129_5_2559@uint32 v_conv7_i139_4_2556@uint8;
(*   %mul.i130.5.2560 = mul nsw i32 %and.i128.5.2558, %conv1.i129.5.2559 *)
mul v_mul_i130_5_2560 v_and_i128_5_2558 v_conv1_i129_5_2559;
(*   %conv2.i131.5.2561 = zext i8 %conv3.i133.4.2550 to i32 *)
cast v_conv2_i131_5_2561@uint32 v_conv3_i133_4_2550@uint8;
(*   %xor.i132.5.2562 = xor i32 %conv2.i131.5.2561, %mul.i130.5.2560 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_5_2562 v_conv2_i131_5_2561 v_mul_i130_5_2560;
(*   %conv3.i133.5.2563 = trunc i32 %xor.i132.5.2562 to i8 *)
split tmp_v_xor_i132_5_2562 v_conv3_i133_5_2563 v_xor_i132_5_2562 8;
vpc v_conv3_i133_5_2563@uint8 v_conv3_i133_5_2563@uint32;
(*   %conv4.i134.5.2564 = zext i8 %conv5.i136.4.2553 to i32 *)
cast v_conv4_i134_5_2564@uint32 v_conv5_i136_4_2553@uint8;
(*   %shr.i135.5.2565 = ashr i32 %conv4.i134.5.2564, 1 *)
(* You may need to modify here *)
split v_shr_i135_5_2565 tmp_to_be_used v_conv4_i134_5_2564 1;
(*   %conv5.i136.5.2566 = trunc i32 %shr.i135.5.2565 to i8 *)
split tmp_v_shr_i135_5_2565 v_conv5_i136_5_2566 v_shr_i135_5_2565 8;
vpc v_conv5_i136_5_2566@uint8 v_conv5_i136_5_2566@uint32;
(*   %conv6.i137.5.2567 = zext i8 %conv7.i139.4.2556 to i32 *)
cast v_conv6_i137_5_2567@uint32 v_conv7_i139_4_2556@uint8;
(*   %shl.i138.5.2568 = shl i32 %conv6.i137.5.2567, 1 *)
shls discard_68 v_shl_i138_5_2568 v_conv6_i137_5_2567 1;
(*   %conv7.i139.5.2569 = trunc i32 %shl.i138.5.2568 to i8 *)
split tmp_v_shl_i138_5_2568 v_conv7_i139_5_2569 v_shl_i138_5_2568 8;
vpc v_conv7_i139_5_2569@uint8 v_conv7_i139_5_2569@uint32;
(*   %conv.i127.6.2570 = zext i8 %conv5.i136.5.2566 to i32 *)
cast v_conv_i127_6_2570@uint32 v_conv5_i136_5_2566@uint8;
(*   %and.i128.6.2571 = and i32 %conv.i127.6.2570, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_6_2571 v_conv_i127_6_2570 (0x1)@uint32;
(*   %conv1.i129.6.2572 = zext i8 %conv7.i139.5.2569 to i32 *)
cast v_conv1_i129_6_2572@uint32 v_conv7_i139_5_2569@uint8;
(*   %mul.i130.6.2573 = mul nsw i32 %and.i128.6.2571, %conv1.i129.6.2572 *)
mul v_mul_i130_6_2573 v_and_i128_6_2571 v_conv1_i129_6_2572;
(*   %conv2.i131.6.2574 = zext i8 %conv3.i133.5.2563 to i32 *)
cast v_conv2_i131_6_2574@uint32 v_conv3_i133_5_2563@uint8;
(*   %xor.i132.6.2575 = xor i32 %conv2.i131.6.2574, %mul.i130.6.2573 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_6_2575 v_conv2_i131_6_2574 v_mul_i130_6_2573;
(*   %conv3.i133.6.2576 = trunc i32 %xor.i132.6.2575 to i8 *)
split tmp_v_xor_i132_6_2575 v_conv3_i133_6_2576 v_xor_i132_6_2575 8;
vpc v_conv3_i133_6_2576@uint8 v_conv3_i133_6_2576@uint32;
(*   %conv4.i134.6.2577 = zext i8 %conv5.i136.5.2566 to i32 *)
cast v_conv4_i134_6_2577@uint32 v_conv5_i136_5_2566@uint8;
(*   %shr.i135.6.2578 = ashr i32 %conv4.i134.6.2577, 1 *)
(* You may need to modify here *)
split v_shr_i135_6_2578 tmp_to_be_used v_conv4_i134_6_2577 1;
(*   %conv5.i136.6.2579 = trunc i32 %shr.i135.6.2578 to i8 *)
split tmp_v_shr_i135_6_2578 v_conv5_i136_6_2579 v_shr_i135_6_2578 8;
vpc v_conv5_i136_6_2579@uint8 v_conv5_i136_6_2579@uint32;
(*   %conv6.i137.6.2580 = zext i8 %conv7.i139.5.2569 to i32 *)
cast v_conv6_i137_6_2580@uint32 v_conv7_i139_5_2569@uint8;
(*   %shl.i138.6.2581 = shl i32 %conv6.i137.6.2580, 1 *)
shls discard_69 v_shl_i138_6_2581 v_conv6_i137_6_2580 1;
(*   %conv7.i139.6.2582 = trunc i32 %shl.i138.6.2581 to i8 *)
split tmp_v_shl_i138_6_2581 v_conv7_i139_6_2582 v_shl_i138_6_2581 8;
vpc v_conv7_i139_6_2582@uint8 v_conv7_i139_6_2582@uint32;
(*   %conv.i127.7.2583 = zext i8 %conv5.i136.6.2579 to i32 *)
cast v_conv_i127_7_2583@uint32 v_conv5_i136_6_2579@uint8;
(*   %and.i128.7.2584 = and i32 %conv.i127.7.2583, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_7_2584 v_conv_i127_7_2583 (0x1)@uint32;
(*   %conv1.i129.7.2585 = zext i8 %conv7.i139.6.2582 to i32 *)
cast v_conv1_i129_7_2585@uint32 v_conv7_i139_6_2582@uint8;
(*   %mul.i130.7.2586 = mul nsw i32 %and.i128.7.2584, %conv1.i129.7.2585 *)
mul v_mul_i130_7_2586 v_and_i128_7_2584 v_conv1_i129_7_2585;
(*   %conv2.i131.7.2587 = zext i8 %conv3.i133.6.2576 to i32 *)
cast v_conv2_i131_7_2587@uint32 v_conv3_i133_6_2576@uint8;
(*   %xor.i132.7.2588 = xor i32 %conv2.i131.7.2587, %mul.i130.7.2586 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_7_2588 v_conv2_i131_7_2587 v_mul_i130_7_2586;
(*   %conv3.i133.7.2589 = trunc i32 %xor.i132.7.2588 to i8 *)
split tmp_v_xor_i132_7_2588 v_conv3_i133_7_2589 v_xor_i132_7_2588 8;
vpc v_conv3_i133_7_2589@uint8 v_conv3_i133_7_2589@uint32;
(*   %arrayidx56.2593 = getelementptr inbounds [9 x i8], [9 x i8]* %p1, i64 0, i64 6 *)
(*   store i8 %conv3.i133.7.2589, i8* %arrayidx56.2593, align 1 *)
mov p1_6 v_conv3_i133_7_2589;
(*   %arrayidx60.2595 = getelementptr inbounds [9 x i8], [9 x i8]* %p0, i64 0, i64 6 *)
(*   %41 = load i8, i8* %arrayidx60.2595, align 1 *)
mov v41 p0_6;
(*   %conv61.2596 = zext i8 %41 to i32 *)
cast v_conv61_2596@uint32 v41@uint8;
(*   %arrayidx65.2598 = getelementptr inbounds [9 x i8], [9 x i8]* %p1, i64 0, i64 6 *)
(*   %42 = load i8, i8* %arrayidx65.2598, align 1 *)
mov v42 p1_6;
(*   %conv66.2599 = zext i8 %42 to i32 *)
cast v_conv66_2599@uint32 v42@uint8;
(*   %xor67.2600 = xor i32 %conv61.2596, %conv66.2599 *)
(* You may need to modify here *)
xor uint32 v_xor67_2600 v_conv61_2596 v_conv66_2599;
(*   %conv68.2601 = trunc i32 %xor67.2600 to i8 *)
split tmp_v_xor67_2600 v_conv68_2601 v_xor67_2600 8;
vpc v_conv68_2601@uint8 v_conv68_2601@uint32;
(*   %arrayidx72.2603 = getelementptr inbounds [9 x i8], [9 x i8]* %z, i64 0, i64 6 *)
(*   store i8 %conv68.2601, i8* %arrayidx72.2603, align 1 *)
mov z_6 v_conv68_2601;
(*   %arrayidx22.1.2 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %43 = load i8, i8* %arrayidx22.1.2, align 1 *)
mov v43 b_1;
(*   %conv.1.2 = zext i8 %43 to i32 *)
cast v_conv_1_2@uint32 v43@uint8;
(*   %arrayidx26.1.2 = getelementptr inbounds i8, i8* %r, i64 7 *)
(*   %44 = load i8, i8* %arrayidx26.1.2, align 1 *)
mov v44 r_7;
(*   %conv27.1.2 = zext i8 %44 to i32 *)
cast v_conv27_1_2@uint32 v44@uint8;
(*   %xor.1.2 = xor i32 %conv.1.2, %conv27.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_1_2 v_conv_1_2 v_conv27_1_2;
(*   %conv28.1.2 = trunc i32 %xor.1.2 to i8 *)
split tmp_v_xor_1_2 v_conv28_1_2 v_xor_1_2 8;
vpc v_conv28_1_2@uint8 v_conv28_1_2@uint32;
(*   %arrayidx32.1.2 = getelementptr inbounds [9 x i8], [9 x i8]* %s, i64 0, i64 7 *)
(*   store i8 %conv28.1.2, i8* %arrayidx32.1.2, align 1 *)
mov s_7 v_conv28_1_2;
(*   %45 = load i8, i8* %arrayidx34.2, align 1 *)
mov v45 a_2;
(*   %conv35.1.2 = zext i8 %45 to i32 *)
cast v_conv35_1_2@uint32 v45@uint8;
(*   %xor36.1.2 = xor i32 %conv35.1.2, 1 *)
(* You may need to modify here *)
xor uint32 v_xor36_1_2 v_conv35_1_2 (0x1)@uint32;
(*   %conv37.1.2 = trunc i32 %xor36.1.2 to i8 *)
split tmp_v_xor36_1_2 v_conv37_1_2 v_xor36_1_2 8;
vpc v_conv37_1_2@uint8 v_conv37_1_2@uint32;
(*   %arrayidx41.1.2 = getelementptr inbounds i8, i8* %r, i64 7 *)
(*   %46 = load i8, i8* %arrayidx41.1.2, align 1 *)
mov v46 r_7;
(*   %conv.i.1101.2 = zext i8 %46 to i32 *)
cast v_conv_i_1101_2@uint32 v46@uint8;
(*   %and.i.1102.2 = and i32 %conv.i.1101.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1102_2 v_conv_i_1101_2 (0x1)@uint32;
(*   %conv1.i.1103.2 = zext i8 %conv37.1.2 to i32 *)
cast v_conv1_i_1103_2@uint32 v_conv37_1_2@uint8;
(*   %mul.i.1104.2 = mul nsw i32 %and.i.1102.2, %conv1.i.1103.2 *)
mul v_mul_i_1104_2 v_and_i_1102_2 v_conv1_i_1103_2;
(*   %conv3.i.1105.2 = trunc i32 %mul.i.1104.2 to i8 *)
split tmp_v_mul_i_1104_2 v_conv3_i_1105_2 v_mul_i_1104_2 8;
vpc v_conv3_i_1105_2@uint8 v_conv3_i_1105_2@uint32;
(*   %conv4.i.1106.2 = zext i8 %46 to i32 *)
cast v_conv4_i_1106_2@uint32 v46@uint8;
(*   %shr.i.1107.2 = ashr i32 %conv4.i.1106.2, 1 *)
(* You may need to modify here *)
split v_shr_i_1107_2 tmp_to_be_used v_conv4_i_1106_2 1;
(*   %conv5.i.1108.2 = trunc i32 %shr.i.1107.2 to i8 *)
split tmp_v_shr_i_1107_2 v_conv5_i_1108_2 v_shr_i_1107_2 8;
vpc v_conv5_i_1108_2@uint8 v_conv5_i_1108_2@uint32;
(*   %conv6.i.1109.2 = zext i8 %conv37.1.2 to i32 *)
cast v_conv6_i_1109_2@uint32 v_conv37_1_2@uint8;
(*   %shl.i.1110.2 = shl i32 %conv6.i.1109.2, 1 *)
shls discard_70 v_shl_i_1110_2 v_conv6_i_1109_2 1;
(*   %conv7.i.1111.2 = trunc i32 %shl.i.1110.2 to i8 *)
split tmp_v_shl_i_1110_2 v_conv7_i_1111_2 v_shl_i_1110_2 8;
vpc v_conv7_i_1111_2@uint8 v_conv7_i_1111_2@uint32;
(*   %conv.i.1.1.2 = zext i8 %conv5.i.1108.2 to i32 *)
cast v_conv_i_1_1_2@uint32 v_conv5_i_1108_2@uint8;
(*   %and.i.1.1.2 = and i32 %conv.i.1.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_1_2 v_conv_i_1_1_2 (0x1)@uint32;
(*   %conv1.i.1.1.2 = zext i8 %conv7.i.1111.2 to i32 *)
cast v_conv1_i_1_1_2@uint32 v_conv7_i_1111_2@uint8;
(*   %mul.i.1.1.2 = mul nsw i32 %and.i.1.1.2, %conv1.i.1.1.2 *)
mul v_mul_i_1_1_2 v_and_i_1_1_2 v_conv1_i_1_1_2;
(*   %conv2.i.1.1.2 = zext i8 %conv3.i.1105.2 to i32 *)
cast v_conv2_i_1_1_2@uint32 v_conv3_i_1105_2@uint8;
(*   %xor.i.1.1.2 = xor i32 %conv2.i.1.1.2, %mul.i.1.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_1_2 v_conv2_i_1_1_2 v_mul_i_1_1_2;
(*   %conv3.i.1.1.2 = trunc i32 %xor.i.1.1.2 to i8 *)
split tmp_v_xor_i_1_1_2 v_conv3_i_1_1_2 v_xor_i_1_1_2 8;
vpc v_conv3_i_1_1_2@uint8 v_conv3_i_1_1_2@uint32;
(*   %conv4.i.1.1.2 = zext i8 %conv5.i.1108.2 to i32 *)
cast v_conv4_i_1_1_2@uint32 v_conv5_i_1108_2@uint8;
(*   %shr.i.1.1.2 = ashr i32 %conv4.i.1.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_1_1_2 tmp_to_be_used v_conv4_i_1_1_2 1;
(*   %conv5.i.1.1.2 = trunc i32 %shr.i.1.1.2 to i8 *)
split tmp_v_shr_i_1_1_2 v_conv5_i_1_1_2 v_shr_i_1_1_2 8;
vpc v_conv5_i_1_1_2@uint8 v_conv5_i_1_1_2@uint32;
(*   %conv6.i.1.1.2 = zext i8 %conv7.i.1111.2 to i32 *)
cast v_conv6_i_1_1_2@uint32 v_conv7_i_1111_2@uint8;
(*   %shl.i.1.1.2 = shl i32 %conv6.i.1.1.2, 1 *)
shls discard_71 v_shl_i_1_1_2 v_conv6_i_1_1_2 1;
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
shls discard_72 v_shl_i_2_1_2 v_conv6_i_2_1_2 1;
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
shls discard_73 v_shl_i_3_1_2 v_conv6_i_3_1_2 1;
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
shls discard_74 v_shl_i_4_1_2 v_conv6_i_4_1_2 1;
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
shls discard_75 v_shl_i_5_1_2 v_conv6_i_5_1_2 1;
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
shls discard_76 v_shl_i_6_1_2 v_conv6_i_6_1_2 1;
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
(*   %arrayidx45.1.2 = getelementptr inbounds [9 x i8], [9 x i8]* %p0, i64 0, i64 7 *)
(*   store i8 %conv3.i.7.1.2, i8* %arrayidx45.1.2, align 1 *)
mov p0_7 v_conv3_i_7_1_2;
(*   %47 = load i8, i8* %arrayidx47.2, align 1 *)
mov v47 a_2;
(*   %arrayidx51.1.2 = getelementptr inbounds [9 x i8], [9 x i8]* %s, i64 0, i64 7 *)
(*   %48 = load i8, i8* %arrayidx51.1.2, align 1 *)
mov v48 s_7;
(*   %conv.i127.1112.2 = zext i8 %48 to i32 *)
cast v_conv_i127_1112_2@uint32 v48@uint8;
(*   %and.i128.1113.2 = and i32 %conv.i127.1112.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1113_2 v_conv_i127_1112_2 (0x1)@uint32;
(*   %conv1.i129.1114.2 = zext i8 %47 to i32 *)
cast v_conv1_i129_1114_2@uint32 v47@uint8;
(*   %mul.i130.1115.2 = mul nsw i32 %and.i128.1113.2, %conv1.i129.1114.2 *)
mul v_mul_i130_1115_2 v_and_i128_1113_2 v_conv1_i129_1114_2;
(*   %conv3.i133.1116.2 = trunc i32 %mul.i130.1115.2 to i8 *)
split tmp_v_mul_i130_1115_2 v_conv3_i133_1116_2 v_mul_i130_1115_2 8;
vpc v_conv3_i133_1116_2@uint8 v_conv3_i133_1116_2@uint32;
(*   %conv4.i134.1117.2 = zext i8 %48 to i32 *)
cast v_conv4_i134_1117_2@uint32 v48@uint8;
(*   %shr.i135.1118.2 = ashr i32 %conv4.i134.1117.2, 1 *)
(* You may need to modify here *)
split v_shr_i135_1118_2 tmp_to_be_used v_conv4_i134_1117_2 1;
(*   %conv5.i136.1119.2 = trunc i32 %shr.i135.1118.2 to i8 *)
split tmp_v_shr_i135_1118_2 v_conv5_i136_1119_2 v_shr_i135_1118_2 8;
vpc v_conv5_i136_1119_2@uint8 v_conv5_i136_1119_2@uint32;
(*   %conv6.i137.1120.2 = zext i8 %47 to i32 *)
cast v_conv6_i137_1120_2@uint32 v47@uint8;
(*   %shl.i138.1121.2 = shl i32 %conv6.i137.1120.2, 1 *)
shls discard_77 v_shl_i138_1121_2 v_conv6_i137_1120_2 1;
(*   %conv7.i139.1122.2 = trunc i32 %shl.i138.1121.2 to i8 *)
split tmp_v_shl_i138_1121_2 v_conv7_i139_1122_2 v_shl_i138_1121_2 8;
vpc v_conv7_i139_1122_2@uint8 v_conv7_i139_1122_2@uint32;
(*   %conv.i127.1.1.2 = zext i8 %conv5.i136.1119.2 to i32 *)
cast v_conv_i127_1_1_2@uint32 v_conv5_i136_1119_2@uint8;
(*   %and.i128.1.1.2 = and i32 %conv.i127.1.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1_1_2 v_conv_i127_1_1_2 (0x1)@uint32;
(*   %conv1.i129.1.1.2 = zext i8 %conv7.i139.1122.2 to i32 *)
cast v_conv1_i129_1_1_2@uint32 v_conv7_i139_1122_2@uint8;
(*   %mul.i130.1.1.2 = mul nsw i32 %and.i128.1.1.2, %conv1.i129.1.1.2 *)
mul v_mul_i130_1_1_2 v_and_i128_1_1_2 v_conv1_i129_1_1_2;
(*   %conv2.i131.1.1.2 = zext i8 %conv3.i133.1116.2 to i32 *)
cast v_conv2_i131_1_1_2@uint32 v_conv3_i133_1116_2@uint8;
(*   %xor.i132.1.1.2 = xor i32 %conv2.i131.1.1.2, %mul.i130.1.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_1_1_2 v_conv2_i131_1_1_2 v_mul_i130_1_1_2;
(*   %conv3.i133.1.1.2 = trunc i32 %xor.i132.1.1.2 to i8 *)
split tmp_v_xor_i132_1_1_2 v_conv3_i133_1_1_2 v_xor_i132_1_1_2 8;
vpc v_conv3_i133_1_1_2@uint8 v_conv3_i133_1_1_2@uint32;
(*   %conv4.i134.1.1.2 = zext i8 %conv5.i136.1119.2 to i32 *)
cast v_conv4_i134_1_1_2@uint32 v_conv5_i136_1119_2@uint8;
(*   %shr.i135.1.1.2 = ashr i32 %conv4.i134.1.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i135_1_1_2 tmp_to_be_used v_conv4_i134_1_1_2 1;
(*   %conv5.i136.1.1.2 = trunc i32 %shr.i135.1.1.2 to i8 *)
split tmp_v_shr_i135_1_1_2 v_conv5_i136_1_1_2 v_shr_i135_1_1_2 8;
vpc v_conv5_i136_1_1_2@uint8 v_conv5_i136_1_1_2@uint32;
(*   %conv6.i137.1.1.2 = zext i8 %conv7.i139.1122.2 to i32 *)
cast v_conv6_i137_1_1_2@uint32 v_conv7_i139_1122_2@uint8;
(*   %shl.i138.1.1.2 = shl i32 %conv6.i137.1.1.2, 1 *)
shls discard_78 v_shl_i138_1_1_2 v_conv6_i137_1_1_2 1;
(*   %conv7.i139.1.1.2 = trunc i32 %shl.i138.1.1.2 to i8 *)
split tmp_v_shl_i138_1_1_2 v_conv7_i139_1_1_2 v_shl_i138_1_1_2 8;
vpc v_conv7_i139_1_1_2@uint8 v_conv7_i139_1_1_2@uint32;
(*   %conv.i127.2.1.2 = zext i8 %conv5.i136.1.1.2 to i32 *)
cast v_conv_i127_2_1_2@uint32 v_conv5_i136_1_1_2@uint8;
(*   %and.i128.2.1.2 = and i32 %conv.i127.2.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_2_1_2 v_conv_i127_2_1_2 (0x1)@uint32;
(*   %conv1.i129.2.1.2 = zext i8 %conv7.i139.1.1.2 to i32 *)
cast v_conv1_i129_2_1_2@uint32 v_conv7_i139_1_1_2@uint8;
(*   %mul.i130.2.1.2 = mul nsw i32 %and.i128.2.1.2, %conv1.i129.2.1.2 *)
mul v_mul_i130_2_1_2 v_and_i128_2_1_2 v_conv1_i129_2_1_2;
(*   %conv2.i131.2.1.2 = zext i8 %conv3.i133.1.1.2 to i32 *)
cast v_conv2_i131_2_1_2@uint32 v_conv3_i133_1_1_2@uint8;
(*   %xor.i132.2.1.2 = xor i32 %conv2.i131.2.1.2, %mul.i130.2.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_2_1_2 v_conv2_i131_2_1_2 v_mul_i130_2_1_2;
(*   %conv3.i133.2.1.2 = trunc i32 %xor.i132.2.1.2 to i8 *)
split tmp_v_xor_i132_2_1_2 v_conv3_i133_2_1_2 v_xor_i132_2_1_2 8;
vpc v_conv3_i133_2_1_2@uint8 v_conv3_i133_2_1_2@uint32;
(*   %conv4.i134.2.1.2 = zext i8 %conv5.i136.1.1.2 to i32 *)
cast v_conv4_i134_2_1_2@uint32 v_conv5_i136_1_1_2@uint8;
(*   %shr.i135.2.1.2 = ashr i32 %conv4.i134.2.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i135_2_1_2 tmp_to_be_used v_conv4_i134_2_1_2 1;
(*   %conv5.i136.2.1.2 = trunc i32 %shr.i135.2.1.2 to i8 *)
split tmp_v_shr_i135_2_1_2 v_conv5_i136_2_1_2 v_shr_i135_2_1_2 8;
vpc v_conv5_i136_2_1_2@uint8 v_conv5_i136_2_1_2@uint32;
(*   %conv6.i137.2.1.2 = zext i8 %conv7.i139.1.1.2 to i32 *)
cast v_conv6_i137_2_1_2@uint32 v_conv7_i139_1_1_2@uint8;
(*   %shl.i138.2.1.2 = shl i32 %conv6.i137.2.1.2, 1 *)
shls discard_79 v_shl_i138_2_1_2 v_conv6_i137_2_1_2 1;
(*   %conv7.i139.2.1.2 = trunc i32 %shl.i138.2.1.2 to i8 *)
split tmp_v_shl_i138_2_1_2 v_conv7_i139_2_1_2 v_shl_i138_2_1_2 8;
vpc v_conv7_i139_2_1_2@uint8 v_conv7_i139_2_1_2@uint32;
(*   %conv.i127.3.1.2 = zext i8 %conv5.i136.2.1.2 to i32 *)
cast v_conv_i127_3_1_2@uint32 v_conv5_i136_2_1_2@uint8;
(*   %and.i128.3.1.2 = and i32 %conv.i127.3.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_3_1_2 v_conv_i127_3_1_2 (0x1)@uint32;
(*   %conv1.i129.3.1.2 = zext i8 %conv7.i139.2.1.2 to i32 *)
cast v_conv1_i129_3_1_2@uint32 v_conv7_i139_2_1_2@uint8;
(*   %mul.i130.3.1.2 = mul nsw i32 %and.i128.3.1.2, %conv1.i129.3.1.2 *)
mul v_mul_i130_3_1_2 v_and_i128_3_1_2 v_conv1_i129_3_1_2;
(*   %conv2.i131.3.1.2 = zext i8 %conv3.i133.2.1.2 to i32 *)
cast v_conv2_i131_3_1_2@uint32 v_conv3_i133_2_1_2@uint8;
(*   %xor.i132.3.1.2 = xor i32 %conv2.i131.3.1.2, %mul.i130.3.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_3_1_2 v_conv2_i131_3_1_2 v_mul_i130_3_1_2;
(*   %conv3.i133.3.1.2 = trunc i32 %xor.i132.3.1.2 to i8 *)
split tmp_v_xor_i132_3_1_2 v_conv3_i133_3_1_2 v_xor_i132_3_1_2 8;
vpc v_conv3_i133_3_1_2@uint8 v_conv3_i133_3_1_2@uint32;
(*   %conv4.i134.3.1.2 = zext i8 %conv5.i136.2.1.2 to i32 *)
cast v_conv4_i134_3_1_2@uint32 v_conv5_i136_2_1_2@uint8;
(*   %shr.i135.3.1.2 = ashr i32 %conv4.i134.3.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i135_3_1_2 tmp_to_be_used v_conv4_i134_3_1_2 1;
(*   %conv5.i136.3.1.2 = trunc i32 %shr.i135.3.1.2 to i8 *)
split tmp_v_shr_i135_3_1_2 v_conv5_i136_3_1_2 v_shr_i135_3_1_2 8;
vpc v_conv5_i136_3_1_2@uint8 v_conv5_i136_3_1_2@uint32;
(*   %conv6.i137.3.1.2 = zext i8 %conv7.i139.2.1.2 to i32 *)
cast v_conv6_i137_3_1_2@uint32 v_conv7_i139_2_1_2@uint8;
(*   %shl.i138.3.1.2 = shl i32 %conv6.i137.3.1.2, 1 *)
shls discard_80 v_shl_i138_3_1_2 v_conv6_i137_3_1_2 1;
(*   %conv7.i139.3.1.2 = trunc i32 %shl.i138.3.1.2 to i8 *)
split tmp_v_shl_i138_3_1_2 v_conv7_i139_3_1_2 v_shl_i138_3_1_2 8;
vpc v_conv7_i139_3_1_2@uint8 v_conv7_i139_3_1_2@uint32;
(*   %conv.i127.4.1.2 = zext i8 %conv5.i136.3.1.2 to i32 *)
cast v_conv_i127_4_1_2@uint32 v_conv5_i136_3_1_2@uint8;
(*   %and.i128.4.1.2 = and i32 %conv.i127.4.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_4_1_2 v_conv_i127_4_1_2 (0x1)@uint32;
(*   %conv1.i129.4.1.2 = zext i8 %conv7.i139.3.1.2 to i32 *)
cast v_conv1_i129_4_1_2@uint32 v_conv7_i139_3_1_2@uint8;
(*   %mul.i130.4.1.2 = mul nsw i32 %and.i128.4.1.2, %conv1.i129.4.1.2 *)
mul v_mul_i130_4_1_2 v_and_i128_4_1_2 v_conv1_i129_4_1_2;
(*   %conv2.i131.4.1.2 = zext i8 %conv3.i133.3.1.2 to i32 *)
cast v_conv2_i131_4_1_2@uint32 v_conv3_i133_3_1_2@uint8;
(*   %xor.i132.4.1.2 = xor i32 %conv2.i131.4.1.2, %mul.i130.4.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_4_1_2 v_conv2_i131_4_1_2 v_mul_i130_4_1_2;
(*   %conv3.i133.4.1.2 = trunc i32 %xor.i132.4.1.2 to i8 *)
split tmp_v_xor_i132_4_1_2 v_conv3_i133_4_1_2 v_xor_i132_4_1_2 8;
vpc v_conv3_i133_4_1_2@uint8 v_conv3_i133_4_1_2@uint32;
(*   %conv4.i134.4.1.2 = zext i8 %conv5.i136.3.1.2 to i32 *)
cast v_conv4_i134_4_1_2@uint32 v_conv5_i136_3_1_2@uint8;
(*   %shr.i135.4.1.2 = ashr i32 %conv4.i134.4.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i135_4_1_2 tmp_to_be_used v_conv4_i134_4_1_2 1;
(*   %conv5.i136.4.1.2 = trunc i32 %shr.i135.4.1.2 to i8 *)
split tmp_v_shr_i135_4_1_2 v_conv5_i136_4_1_2 v_shr_i135_4_1_2 8;
vpc v_conv5_i136_4_1_2@uint8 v_conv5_i136_4_1_2@uint32;
(*   %conv6.i137.4.1.2 = zext i8 %conv7.i139.3.1.2 to i32 *)
cast v_conv6_i137_4_1_2@uint32 v_conv7_i139_3_1_2@uint8;
(*   %shl.i138.4.1.2 = shl i32 %conv6.i137.4.1.2, 1 *)
shls discard_81 v_shl_i138_4_1_2 v_conv6_i137_4_1_2 1;
(*   %conv7.i139.4.1.2 = trunc i32 %shl.i138.4.1.2 to i8 *)
split tmp_v_shl_i138_4_1_2 v_conv7_i139_4_1_2 v_shl_i138_4_1_2 8;
vpc v_conv7_i139_4_1_2@uint8 v_conv7_i139_4_1_2@uint32;
(*   %conv.i127.5.1.2 = zext i8 %conv5.i136.4.1.2 to i32 *)
cast v_conv_i127_5_1_2@uint32 v_conv5_i136_4_1_2@uint8;
(*   %and.i128.5.1.2 = and i32 %conv.i127.5.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_5_1_2 v_conv_i127_5_1_2 (0x1)@uint32;
(*   %conv1.i129.5.1.2 = zext i8 %conv7.i139.4.1.2 to i32 *)
cast v_conv1_i129_5_1_2@uint32 v_conv7_i139_4_1_2@uint8;
(*   %mul.i130.5.1.2 = mul nsw i32 %and.i128.5.1.2, %conv1.i129.5.1.2 *)
mul v_mul_i130_5_1_2 v_and_i128_5_1_2 v_conv1_i129_5_1_2;
(*   %conv2.i131.5.1.2 = zext i8 %conv3.i133.4.1.2 to i32 *)
cast v_conv2_i131_5_1_2@uint32 v_conv3_i133_4_1_2@uint8;
(*   %xor.i132.5.1.2 = xor i32 %conv2.i131.5.1.2, %mul.i130.5.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_5_1_2 v_conv2_i131_5_1_2 v_mul_i130_5_1_2;
(*   %conv3.i133.5.1.2 = trunc i32 %xor.i132.5.1.2 to i8 *)
split tmp_v_xor_i132_5_1_2 v_conv3_i133_5_1_2 v_xor_i132_5_1_2 8;
vpc v_conv3_i133_5_1_2@uint8 v_conv3_i133_5_1_2@uint32;
(*   %conv4.i134.5.1.2 = zext i8 %conv5.i136.4.1.2 to i32 *)
cast v_conv4_i134_5_1_2@uint32 v_conv5_i136_4_1_2@uint8;
(*   %shr.i135.5.1.2 = ashr i32 %conv4.i134.5.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i135_5_1_2 tmp_to_be_used v_conv4_i134_5_1_2 1;
(*   %conv5.i136.5.1.2 = trunc i32 %shr.i135.5.1.2 to i8 *)
split tmp_v_shr_i135_5_1_2 v_conv5_i136_5_1_2 v_shr_i135_5_1_2 8;
vpc v_conv5_i136_5_1_2@uint8 v_conv5_i136_5_1_2@uint32;
(*   %conv6.i137.5.1.2 = zext i8 %conv7.i139.4.1.2 to i32 *)
cast v_conv6_i137_5_1_2@uint32 v_conv7_i139_4_1_2@uint8;
(*   %shl.i138.5.1.2 = shl i32 %conv6.i137.5.1.2, 1 *)
shls discard_82 v_shl_i138_5_1_2 v_conv6_i137_5_1_2 1;
(*   %conv7.i139.5.1.2 = trunc i32 %shl.i138.5.1.2 to i8 *)
split tmp_v_shl_i138_5_1_2 v_conv7_i139_5_1_2 v_shl_i138_5_1_2 8;
vpc v_conv7_i139_5_1_2@uint8 v_conv7_i139_5_1_2@uint32;
(*   %conv.i127.6.1.2 = zext i8 %conv5.i136.5.1.2 to i32 *)
cast v_conv_i127_6_1_2@uint32 v_conv5_i136_5_1_2@uint8;
(*   %and.i128.6.1.2 = and i32 %conv.i127.6.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_6_1_2 v_conv_i127_6_1_2 (0x1)@uint32;
(*   %conv1.i129.6.1.2 = zext i8 %conv7.i139.5.1.2 to i32 *)
cast v_conv1_i129_6_1_2@uint32 v_conv7_i139_5_1_2@uint8;
(*   %mul.i130.6.1.2 = mul nsw i32 %and.i128.6.1.2, %conv1.i129.6.1.2 *)
mul v_mul_i130_6_1_2 v_and_i128_6_1_2 v_conv1_i129_6_1_2;
(*   %conv2.i131.6.1.2 = zext i8 %conv3.i133.5.1.2 to i32 *)
cast v_conv2_i131_6_1_2@uint32 v_conv3_i133_5_1_2@uint8;
(*   %xor.i132.6.1.2 = xor i32 %conv2.i131.6.1.2, %mul.i130.6.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_6_1_2 v_conv2_i131_6_1_2 v_mul_i130_6_1_2;
(*   %conv3.i133.6.1.2 = trunc i32 %xor.i132.6.1.2 to i8 *)
split tmp_v_xor_i132_6_1_2 v_conv3_i133_6_1_2 v_xor_i132_6_1_2 8;
vpc v_conv3_i133_6_1_2@uint8 v_conv3_i133_6_1_2@uint32;
(*   %conv4.i134.6.1.2 = zext i8 %conv5.i136.5.1.2 to i32 *)
cast v_conv4_i134_6_1_2@uint32 v_conv5_i136_5_1_2@uint8;
(*   %shr.i135.6.1.2 = ashr i32 %conv4.i134.6.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i135_6_1_2 tmp_to_be_used v_conv4_i134_6_1_2 1;
(*   %conv5.i136.6.1.2 = trunc i32 %shr.i135.6.1.2 to i8 *)
split tmp_v_shr_i135_6_1_2 v_conv5_i136_6_1_2 v_shr_i135_6_1_2 8;
vpc v_conv5_i136_6_1_2@uint8 v_conv5_i136_6_1_2@uint32;
(*   %conv6.i137.6.1.2 = zext i8 %conv7.i139.5.1.2 to i32 *)
cast v_conv6_i137_6_1_2@uint32 v_conv7_i139_5_1_2@uint8;
(*   %shl.i138.6.1.2 = shl i32 %conv6.i137.6.1.2, 1 *)
shls discard_83 v_shl_i138_6_1_2 v_conv6_i137_6_1_2 1;
(*   %conv7.i139.6.1.2 = trunc i32 %shl.i138.6.1.2 to i8 *)
split tmp_v_shl_i138_6_1_2 v_conv7_i139_6_1_2 v_shl_i138_6_1_2 8;
vpc v_conv7_i139_6_1_2@uint8 v_conv7_i139_6_1_2@uint32;
(*   %conv.i127.7.1.2 = zext i8 %conv5.i136.6.1.2 to i32 *)
cast v_conv_i127_7_1_2@uint32 v_conv5_i136_6_1_2@uint8;
(*   %and.i128.7.1.2 = and i32 %conv.i127.7.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_7_1_2 v_conv_i127_7_1_2 (0x1)@uint32;
(*   %conv1.i129.7.1.2 = zext i8 %conv7.i139.6.1.2 to i32 *)
cast v_conv1_i129_7_1_2@uint32 v_conv7_i139_6_1_2@uint8;
(*   %mul.i130.7.1.2 = mul nsw i32 %and.i128.7.1.2, %conv1.i129.7.1.2 *)
mul v_mul_i130_7_1_2 v_and_i128_7_1_2 v_conv1_i129_7_1_2;
(*   %conv2.i131.7.1.2 = zext i8 %conv3.i133.6.1.2 to i32 *)
cast v_conv2_i131_7_1_2@uint32 v_conv3_i133_6_1_2@uint8;
(*   %xor.i132.7.1.2 = xor i32 %conv2.i131.7.1.2, %mul.i130.7.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_7_1_2 v_conv2_i131_7_1_2 v_mul_i130_7_1_2;
(*   %conv3.i133.7.1.2 = trunc i32 %xor.i132.7.1.2 to i8 *)
split tmp_v_xor_i132_7_1_2 v_conv3_i133_7_1_2 v_xor_i132_7_1_2 8;
vpc v_conv3_i133_7_1_2@uint8 v_conv3_i133_7_1_2@uint32;
(*   %arrayidx56.1.2 = getelementptr inbounds [9 x i8], [9 x i8]* %p1, i64 0, i64 7 *)
(*   store i8 %conv3.i133.7.1.2, i8* %arrayidx56.1.2, align 1 *)
mov p1_7 v_conv3_i133_7_1_2;
(*   %arrayidx60.1.2 = getelementptr inbounds [9 x i8], [9 x i8]* %p0, i64 0, i64 7 *)
(*   %49 = load i8, i8* %arrayidx60.1.2, align 1 *)
mov v49 p0_7;
(*   %conv61.1.2 = zext i8 %49 to i32 *)
cast v_conv61_1_2@uint32 v49@uint8;
(*   %arrayidx65.1.2 = getelementptr inbounds [9 x i8], [9 x i8]* %p1, i64 0, i64 7 *)
(*   %50 = load i8, i8* %arrayidx65.1.2, align 1 *)
mov v50 p1_7;
(*   %conv66.1.2 = zext i8 %50 to i32 *)
cast v_conv66_1_2@uint32 v50@uint8;
(*   %xor67.1.2 = xor i32 %conv61.1.2, %conv66.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor67_1_2 v_conv61_1_2 v_conv66_1_2;
(*   %conv68.1.2 = trunc i32 %xor67.1.2 to i8 *)
split tmp_v_xor67_1_2 v_conv68_1_2 v_xor67_1_2 8;
vpc v_conv68_1_2@uint8 v_conv68_1_2@uint32;
(*   %arrayidx72.1.2 = getelementptr inbounds [9 x i8], [9 x i8]* %z, i64 0, i64 7 *)
(*   store i8 %conv68.1.2, i8* %arrayidx72.1.2, align 1 *)
mov z_7 v_conv68_1_2;
(*   %51 = load i8, i8* %a, align 1 *)
mov v51 a_0;
(*   %52 = load i8, i8* %b, align 1 *)
mov v52 b_0;
(*   %conv.i188 = zext i8 %52 to i32 *)
cast v_conv_i188@uint32 v52@uint8;
(*   %and.i189 = and i32 %conv.i188, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189 v_conv_i188 (0x1)@uint32;
(*   %conv1.i190 = zext i8 %51 to i32 *)
cast v_conv1_i190@uint32 v51@uint8;
(*   %mul.i191 = mul nsw i32 %and.i189, %conv1.i190 *)
mul v_mul_i191 v_and_i189 v_conv1_i190;
(*   %conv3.i194 = trunc i32 %mul.i191 to i8 *)
split tmp_v_mul_i191 v_conv3_i194 v_mul_i191 8;
vpc v_conv3_i194@uint8 v_conv3_i194@uint32;
(*   %conv4.i195 = zext i8 %52 to i32 *)
cast v_conv4_i195@uint32 v52@uint8;
(*   %shr.i196 = ashr i32 %conv4.i195, 1 *)
(* You may need to modify here *)
split v_shr_i196 tmp_to_be_used v_conv4_i195 1;
(*   %conv5.i197 = trunc i32 %shr.i196 to i8 *)
split tmp_v_shr_i196 v_conv5_i197 v_shr_i196 8;
vpc v_conv5_i197@uint8 v_conv5_i197@uint32;
(*   %conv6.i198 = zext i8 %51 to i32 *)
cast v_conv6_i198@uint32 v51@uint8;
(*   %shl.i199 = shl i32 %conv6.i198, 1 *)
shls discard_84 v_shl_i199 v_conv6_i198 1;
(*   %conv7.i200 = trunc i32 %shl.i199 to i8 *)
split tmp_v_shl_i199 v_conv7_i200 v_shl_i199 8;
vpc v_conv7_i200@uint8 v_conv7_i200@uint32;
(*   %conv.i188.1 = zext i8 %conv5.i197 to i32 *)
cast v_conv_i188_1@uint32 v_conv5_i197@uint8;
(*   %and.i189.1 = and i32 %conv.i188.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_1 v_conv_i188_1 (0x1)@uint32;
(*   %conv1.i190.1 = zext i8 %conv7.i200 to i32 *)
cast v_conv1_i190_1@uint32 v_conv7_i200@uint8;
(*   %mul.i191.1 = mul nsw i32 %and.i189.1, %conv1.i190.1 *)
mul v_mul_i191_1 v_and_i189_1 v_conv1_i190_1;
(*   %conv2.i192.1 = zext i8 %conv3.i194 to i32 *)
cast v_conv2_i192_1@uint32 v_conv3_i194@uint8;
(*   %xor.i193.1 = xor i32 %conv2.i192.1, %mul.i191.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i193_1 v_conv2_i192_1 v_mul_i191_1;
(*   %conv3.i194.1 = trunc i32 %xor.i193.1 to i8 *)
split tmp_v_xor_i193_1 v_conv3_i194_1 v_xor_i193_1 8;
vpc v_conv3_i194_1@uint8 v_conv3_i194_1@uint32;
(*   %conv4.i195.1 = zext i8 %conv5.i197 to i32 *)
cast v_conv4_i195_1@uint32 v_conv5_i197@uint8;
(*   %shr.i196.1 = ashr i32 %conv4.i195.1, 1 *)
(* You may need to modify here *)
split v_shr_i196_1 tmp_to_be_used v_conv4_i195_1 1;
(*   %conv5.i197.1 = trunc i32 %shr.i196.1 to i8 *)
split tmp_v_shr_i196_1 v_conv5_i197_1 v_shr_i196_1 8;
vpc v_conv5_i197_1@uint8 v_conv5_i197_1@uint32;
(*   %conv6.i198.1 = zext i8 %conv7.i200 to i32 *)
cast v_conv6_i198_1@uint32 v_conv7_i200@uint8;
(*   %shl.i199.1 = shl i32 %conv6.i198.1, 1 *)
shls discard_85 v_shl_i199_1 v_conv6_i198_1 1;
(*   %conv7.i200.1 = trunc i32 %shl.i199.1 to i8 *)
split tmp_v_shl_i199_1 v_conv7_i200_1 v_shl_i199_1 8;
vpc v_conv7_i200_1@uint8 v_conv7_i200_1@uint32;
(*   %conv.i188.2 = zext i8 %conv5.i197.1 to i32 *)
cast v_conv_i188_2@uint32 v_conv5_i197_1@uint8;
(*   %and.i189.2 = and i32 %conv.i188.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_2 v_conv_i188_2 (0x1)@uint32;
(*   %conv1.i190.2 = zext i8 %conv7.i200.1 to i32 *)
cast v_conv1_i190_2@uint32 v_conv7_i200_1@uint8;
(*   %mul.i191.2 = mul nsw i32 %and.i189.2, %conv1.i190.2 *)
mul v_mul_i191_2 v_and_i189_2 v_conv1_i190_2;
(*   %conv2.i192.2 = zext i8 %conv3.i194.1 to i32 *)
cast v_conv2_i192_2@uint32 v_conv3_i194_1@uint8;
(*   %xor.i193.2 = xor i32 %conv2.i192.2, %mul.i191.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i193_2 v_conv2_i192_2 v_mul_i191_2;
(*   %conv3.i194.2 = trunc i32 %xor.i193.2 to i8 *)
split tmp_v_xor_i193_2 v_conv3_i194_2 v_xor_i193_2 8;
vpc v_conv3_i194_2@uint8 v_conv3_i194_2@uint32;
(*   %conv4.i195.2 = zext i8 %conv5.i197.1 to i32 *)
cast v_conv4_i195_2@uint32 v_conv5_i197_1@uint8;
(*   %shr.i196.2 = ashr i32 %conv4.i195.2, 1 *)
(* You may need to modify here *)
split v_shr_i196_2 tmp_to_be_used v_conv4_i195_2 1;
(*   %conv5.i197.2 = trunc i32 %shr.i196.2 to i8 *)
split tmp_v_shr_i196_2 v_conv5_i197_2 v_shr_i196_2 8;
vpc v_conv5_i197_2@uint8 v_conv5_i197_2@uint32;
(*   %conv6.i198.2 = zext i8 %conv7.i200.1 to i32 *)
cast v_conv6_i198_2@uint32 v_conv7_i200_1@uint8;
(*   %shl.i199.2 = shl i32 %conv6.i198.2, 1 *)
shls discard_86 v_shl_i199_2 v_conv6_i198_2 1;
(*   %conv7.i200.2 = trunc i32 %shl.i199.2 to i8 *)
split tmp_v_shl_i199_2 v_conv7_i200_2 v_shl_i199_2 8;
vpc v_conv7_i200_2@uint8 v_conv7_i200_2@uint32;
(*   %conv.i188.3 = zext i8 %conv5.i197.2 to i32 *)
cast v_conv_i188_3@uint32 v_conv5_i197_2@uint8;
(*   %and.i189.3 = and i32 %conv.i188.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_3 v_conv_i188_3 (0x1)@uint32;
(*   %conv1.i190.3 = zext i8 %conv7.i200.2 to i32 *)
cast v_conv1_i190_3@uint32 v_conv7_i200_2@uint8;
(*   %mul.i191.3 = mul nsw i32 %and.i189.3, %conv1.i190.3 *)
mul v_mul_i191_3 v_and_i189_3 v_conv1_i190_3;
(*   %conv2.i192.3 = zext i8 %conv3.i194.2 to i32 *)
cast v_conv2_i192_3@uint32 v_conv3_i194_2@uint8;
(*   %xor.i193.3 = xor i32 %conv2.i192.3, %mul.i191.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i193_3 v_conv2_i192_3 v_mul_i191_3;
(*   %conv3.i194.3 = trunc i32 %xor.i193.3 to i8 *)
split tmp_v_xor_i193_3 v_conv3_i194_3 v_xor_i193_3 8;
vpc v_conv3_i194_3@uint8 v_conv3_i194_3@uint32;
(*   %conv4.i195.3 = zext i8 %conv5.i197.2 to i32 *)
cast v_conv4_i195_3@uint32 v_conv5_i197_2@uint8;
(*   %shr.i196.3 = ashr i32 %conv4.i195.3, 1 *)
(* You may need to modify here *)
split v_shr_i196_3 tmp_to_be_used v_conv4_i195_3 1;
(*   %conv5.i197.3 = trunc i32 %shr.i196.3 to i8 *)
split tmp_v_shr_i196_3 v_conv5_i197_3 v_shr_i196_3 8;
vpc v_conv5_i197_3@uint8 v_conv5_i197_3@uint32;
(*   %conv6.i198.3 = zext i8 %conv7.i200.2 to i32 *)
cast v_conv6_i198_3@uint32 v_conv7_i200_2@uint8;
(*   %shl.i199.3 = shl i32 %conv6.i198.3, 1 *)
shls discard_87 v_shl_i199_3 v_conv6_i198_3 1;
(*   %conv7.i200.3 = trunc i32 %shl.i199.3 to i8 *)
split tmp_v_shl_i199_3 v_conv7_i200_3 v_shl_i199_3 8;
vpc v_conv7_i200_3@uint8 v_conv7_i200_3@uint32;
(*   %conv.i188.4 = zext i8 %conv5.i197.3 to i32 *)
cast v_conv_i188_4@uint32 v_conv5_i197_3@uint8;
(*   %and.i189.4 = and i32 %conv.i188.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_4 v_conv_i188_4 (0x1)@uint32;
(*   %conv1.i190.4 = zext i8 %conv7.i200.3 to i32 *)
cast v_conv1_i190_4@uint32 v_conv7_i200_3@uint8;
(*   %mul.i191.4 = mul nsw i32 %and.i189.4, %conv1.i190.4 *)
mul v_mul_i191_4 v_and_i189_4 v_conv1_i190_4;
(*   %conv2.i192.4 = zext i8 %conv3.i194.3 to i32 *)
cast v_conv2_i192_4@uint32 v_conv3_i194_3@uint8;
(*   %xor.i193.4 = xor i32 %conv2.i192.4, %mul.i191.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i193_4 v_conv2_i192_4 v_mul_i191_4;
(*   %conv3.i194.4 = trunc i32 %xor.i193.4 to i8 *)
split tmp_v_xor_i193_4 v_conv3_i194_4 v_xor_i193_4 8;
vpc v_conv3_i194_4@uint8 v_conv3_i194_4@uint32;
(*   %conv4.i195.4 = zext i8 %conv5.i197.3 to i32 *)
cast v_conv4_i195_4@uint32 v_conv5_i197_3@uint8;
(*   %shr.i196.4 = ashr i32 %conv4.i195.4, 1 *)
(* You may need to modify here *)
split v_shr_i196_4 tmp_to_be_used v_conv4_i195_4 1;
(*   %conv5.i197.4 = trunc i32 %shr.i196.4 to i8 *)
split tmp_v_shr_i196_4 v_conv5_i197_4 v_shr_i196_4 8;
vpc v_conv5_i197_4@uint8 v_conv5_i197_4@uint32;
(*   %conv6.i198.4 = zext i8 %conv7.i200.3 to i32 *)
cast v_conv6_i198_4@uint32 v_conv7_i200_3@uint8;
(*   %shl.i199.4 = shl i32 %conv6.i198.4, 1 *)
shls discard_88 v_shl_i199_4 v_conv6_i198_4 1;
(*   %conv7.i200.4 = trunc i32 %shl.i199.4 to i8 *)
split tmp_v_shl_i199_4 v_conv7_i200_4 v_shl_i199_4 8;
vpc v_conv7_i200_4@uint8 v_conv7_i200_4@uint32;
(*   %conv.i188.5 = zext i8 %conv5.i197.4 to i32 *)
cast v_conv_i188_5@uint32 v_conv5_i197_4@uint8;
(*   %and.i189.5 = and i32 %conv.i188.5, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_5 v_conv_i188_5 (0x1)@uint32;
(*   %conv1.i190.5 = zext i8 %conv7.i200.4 to i32 *)
cast v_conv1_i190_5@uint32 v_conv7_i200_4@uint8;
(*   %mul.i191.5 = mul nsw i32 %and.i189.5, %conv1.i190.5 *)
mul v_mul_i191_5 v_and_i189_5 v_conv1_i190_5;
(*   %conv2.i192.5 = zext i8 %conv3.i194.4 to i32 *)
cast v_conv2_i192_5@uint32 v_conv3_i194_4@uint8;
(*   %xor.i193.5 = xor i32 %conv2.i192.5, %mul.i191.5 *)
(* You may need to modify here *)
xor uint32 v_xor_i193_5 v_conv2_i192_5 v_mul_i191_5;
(*   %conv3.i194.5 = trunc i32 %xor.i193.5 to i8 *)
split tmp_v_xor_i193_5 v_conv3_i194_5 v_xor_i193_5 8;
vpc v_conv3_i194_5@uint8 v_conv3_i194_5@uint32;
(*   %conv4.i195.5 = zext i8 %conv5.i197.4 to i32 *)
cast v_conv4_i195_5@uint32 v_conv5_i197_4@uint8;
(*   %shr.i196.5 = ashr i32 %conv4.i195.5, 1 *)
(* You may need to modify here *)
split v_shr_i196_5 tmp_to_be_used v_conv4_i195_5 1;
(*   %conv5.i197.5 = trunc i32 %shr.i196.5 to i8 *)
split tmp_v_shr_i196_5 v_conv5_i197_5 v_shr_i196_5 8;
vpc v_conv5_i197_5@uint8 v_conv5_i197_5@uint32;
(*   %conv6.i198.5 = zext i8 %conv7.i200.4 to i32 *)
cast v_conv6_i198_5@uint32 v_conv7_i200_4@uint8;
(*   %shl.i199.5 = shl i32 %conv6.i198.5, 1 *)
shls discard_89 v_shl_i199_5 v_conv6_i198_5 1;
(*   %conv7.i200.5 = trunc i32 %shl.i199.5 to i8 *)
split tmp_v_shl_i199_5 v_conv7_i200_5 v_shl_i199_5 8;
vpc v_conv7_i200_5@uint8 v_conv7_i200_5@uint32;
(*   %conv.i188.6 = zext i8 %conv5.i197.5 to i32 *)
cast v_conv_i188_6@uint32 v_conv5_i197_5@uint8;
(*   %and.i189.6 = and i32 %conv.i188.6, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_6 v_conv_i188_6 (0x1)@uint32;
(*   %conv1.i190.6 = zext i8 %conv7.i200.5 to i32 *)
cast v_conv1_i190_6@uint32 v_conv7_i200_5@uint8;
(*   %mul.i191.6 = mul nsw i32 %and.i189.6, %conv1.i190.6 *)
mul v_mul_i191_6 v_and_i189_6 v_conv1_i190_6;
(*   %conv2.i192.6 = zext i8 %conv3.i194.5 to i32 *)
cast v_conv2_i192_6@uint32 v_conv3_i194_5@uint8;
(*   %xor.i193.6 = xor i32 %conv2.i192.6, %mul.i191.6 *)
(* You may need to modify here *)
xor uint32 v_xor_i193_6 v_conv2_i192_6 v_mul_i191_6;
(*   %conv3.i194.6 = trunc i32 %xor.i193.6 to i8 *)
split tmp_v_xor_i193_6 v_conv3_i194_6 v_xor_i193_6 8;
vpc v_conv3_i194_6@uint8 v_conv3_i194_6@uint32;
(*   %conv4.i195.6 = zext i8 %conv5.i197.5 to i32 *)
cast v_conv4_i195_6@uint32 v_conv5_i197_5@uint8;
(*   %shr.i196.6 = ashr i32 %conv4.i195.6, 1 *)
(* You may need to modify here *)
split v_shr_i196_6 tmp_to_be_used v_conv4_i195_6 1;
(*   %conv5.i197.6 = trunc i32 %shr.i196.6 to i8 *)
split tmp_v_shr_i196_6 v_conv5_i197_6 v_shr_i196_6 8;
vpc v_conv5_i197_6@uint8 v_conv5_i197_6@uint32;
(*   %conv6.i198.6 = zext i8 %conv7.i200.5 to i32 *)
cast v_conv6_i198_6@uint32 v_conv7_i200_5@uint8;
(*   %shl.i199.6 = shl i32 %conv6.i198.6, 1 *)
shls discard_90 v_shl_i199_6 v_conv6_i198_6 1;
(*   %conv7.i200.6 = trunc i32 %shl.i199.6 to i8 *)
split tmp_v_shl_i199_6 v_conv7_i200_6 v_shl_i199_6 8;
vpc v_conv7_i200_6@uint8 v_conv7_i200_6@uint32;
(*   %conv.i188.7 = zext i8 %conv5.i197.6 to i32 *)
cast v_conv_i188_7@uint32 v_conv5_i197_6@uint8;
(*   %and.i189.7 = and i32 %conv.i188.7, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_7 v_conv_i188_7 (0x1)@uint32;
(*   %conv1.i190.7 = zext i8 %conv7.i200.6 to i32 *)
cast v_conv1_i190_7@uint32 v_conv7_i200_6@uint8;
(*   %mul.i191.7 = mul nsw i32 %and.i189.7, %conv1.i190.7 *)
mul v_mul_i191_7 v_and_i189_7 v_conv1_i190_7;
(*   %conv2.i192.7 = zext i8 %conv3.i194.6 to i32 *)
cast v_conv2_i192_7@uint32 v_conv3_i194_6@uint8;
(*   %xor.i193.7 = xor i32 %conv2.i192.7, %mul.i191.7 *)
(* You may need to modify here *)
xor uint32 v_xor_i193_7 v_conv2_i192_7 v_mul_i191_7;
(*   %conv3.i194.7 = trunc i32 %xor.i193.7 to i8 *)
split tmp_v_xor_i193_7 v_conv3_i194_7 v_xor_i193_7 8;
vpc v_conv3_i194_7@uint8 v_conv3_i194_7@uint32;
(*   store i8 %conv3.i194.7, i8* %c, align 1 *)
mov c_0 v_conv3_i194_7;
(*   %scevgep46.1 = getelementptr [9 x i8], [9 x i8]* %z, i64 0, i64 1 *)
(*   %53 = load i8, i8* %scevgep46.1, align 1 *)
mov v53 z_1;
(*   %conv103.1 = zext i8 %53 to i32 *)
cast v_conv103_1@uint32 v53@uint8;
(*   %54 = load i8, i8* %c, align 1 *)
mov v54 c_0;
(*   %conv106.1 = zext i8 %54 to i32 *)
cast v_conv106_1@uint32 v54@uint8;
(*   %xor107.1 = xor i32 %conv106.1, %conv103.1 *)
(* You may need to modify here *)
xor uint32 v_xor107_1 v_conv106_1 v_conv103_1;
(*   %conv108.1 = trunc i32 %xor107.1 to i8 *)
split tmp_v_xor107_1 v_conv108_1 v_xor107_1 8;
vpc v_conv108_1@uint8 v_conv108_1@uint32;
(*   store i8 %conv108.1, i8* %c, align 1 *)
mov c_0 v_conv108_1;
(*   %scevgep46.2 = getelementptr [9 x i8], [9 x i8]* %z, i64 0, i64 2 *)
(*   %55 = load i8, i8* %scevgep46.2, align 1 *)
mov v55 z_2;
(*   %conv103.2 = zext i8 %55 to i32 *)
cast v_conv103_2@uint32 v55@uint8;
(*   %56 = load i8, i8* %c, align 1 *)
mov v56 c_0;
(*   %conv106.2 = zext i8 %56 to i32 *)
cast v_conv106_2@uint32 v56@uint8;
(*   %xor107.2 = xor i32 %conv106.2, %conv103.2 *)
(* You may need to modify here *)
xor uint32 v_xor107_2 v_conv106_2 v_conv103_2;
(*   %conv108.2 = trunc i32 %xor107.2 to i8 *)
split tmp_v_xor107_2 v_conv108_2 v_xor107_2 8;
vpc v_conv108_2@uint8 v_conv108_2@uint32;
(*   store i8 %conv108.2, i8* %c, align 1 *)
mov c_0 v_conv108_2;
(*   %scevgep45 = getelementptr [9 x i8], [9 x i8]* %z, i64 0, i64 3 *)
(*   %57 = bitcast i8* %scevgep45 to [9 x i8]* *)
(*   %arrayidx85.1 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %58 = load i8, i8* %arrayidx85.1, align 1 *)
mov v58 a_1;
(*   %arrayidx87.1 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %59 = load i8, i8* %arrayidx87.1, align 1 *)
mov v59 b_1;
(*   %conv.i188.159 = zext i8 %59 to i32 *)
cast v_conv_i188_159@uint32 v59@uint8;
(*   %and.i189.160 = and i32 %conv.i188.159, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_160 v_conv_i188_159 (0x1)@uint32;
(*   %conv1.i190.161 = zext i8 %58 to i32 *)
cast v_conv1_i190_161@uint32 v58@uint8;
(*   %mul.i191.162 = mul nsw i32 %and.i189.160, %conv1.i190.161 *)
mul v_mul_i191_162 v_and_i189_160 v_conv1_i190_161;
(*   %conv3.i194.163 = trunc i32 %mul.i191.162 to i8 *)
split tmp_v_mul_i191_162 v_conv3_i194_163 v_mul_i191_162 8;
vpc v_conv3_i194_163@uint8 v_conv3_i194_163@uint32;
(*   %conv4.i195.164 = zext i8 %59 to i32 *)
cast v_conv4_i195_164@uint32 v59@uint8;
(*   %shr.i196.165 = ashr i32 %conv4.i195.164, 1 *)
(* You may need to modify here *)
split v_shr_i196_165 tmp_to_be_used v_conv4_i195_164 1;
(*   %conv5.i197.166 = trunc i32 %shr.i196.165 to i8 *)
split tmp_v_shr_i196_165 v_conv5_i197_166 v_shr_i196_165 8;
vpc v_conv5_i197_166@uint8 v_conv5_i197_166@uint32;
(*   %conv6.i198.167 = zext i8 %58 to i32 *)
cast v_conv6_i198_167@uint32 v58@uint8;
(*   %shl.i199.168 = shl i32 %conv6.i198.167, 1 *)
shls discard_91 v_shl_i199_168 v_conv6_i198_167 1;
(*   %conv7.i200.169 = trunc i32 %shl.i199.168 to i8 *)
split tmp_v_shl_i199_168 v_conv7_i200_169 v_shl_i199_168 8;
vpc v_conv7_i200_169@uint8 v_conv7_i200_169@uint32;
(*   %conv.i188.1.1 = zext i8 %conv5.i197.166 to i32 *)
cast v_conv_i188_1_1@uint32 v_conv5_i197_166@uint8;
(*   %and.i189.1.1 = and i32 %conv.i188.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_1_1 v_conv_i188_1_1 (0x1)@uint32;
(*   %conv1.i190.1.1 = zext i8 %conv7.i200.169 to i32 *)
cast v_conv1_i190_1_1@uint32 v_conv7_i200_169@uint8;
(*   %mul.i191.1.1 = mul nsw i32 %and.i189.1.1, %conv1.i190.1.1 *)
mul v_mul_i191_1_1 v_and_i189_1_1 v_conv1_i190_1_1;
(*   %conv2.i192.1.1 = zext i8 %conv3.i194.163 to i32 *)
cast v_conv2_i192_1_1@uint32 v_conv3_i194_163@uint8;
(*   %xor.i193.1.1 = xor i32 %conv2.i192.1.1, %mul.i191.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i193_1_1 v_conv2_i192_1_1 v_mul_i191_1_1;
(*   %conv3.i194.1.1 = trunc i32 %xor.i193.1.1 to i8 *)
split tmp_v_xor_i193_1_1 v_conv3_i194_1_1 v_xor_i193_1_1 8;
vpc v_conv3_i194_1_1@uint8 v_conv3_i194_1_1@uint32;
(*   %conv4.i195.1.1 = zext i8 %conv5.i197.166 to i32 *)
cast v_conv4_i195_1_1@uint32 v_conv5_i197_166@uint8;
(*   %shr.i196.1.1 = ashr i32 %conv4.i195.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i196_1_1 tmp_to_be_used v_conv4_i195_1_1 1;
(*   %conv5.i197.1.1 = trunc i32 %shr.i196.1.1 to i8 *)
split tmp_v_shr_i196_1_1 v_conv5_i197_1_1 v_shr_i196_1_1 8;
vpc v_conv5_i197_1_1@uint8 v_conv5_i197_1_1@uint32;
(*   %conv6.i198.1.1 = zext i8 %conv7.i200.169 to i32 *)
cast v_conv6_i198_1_1@uint32 v_conv7_i200_169@uint8;
(*   %shl.i199.1.1 = shl i32 %conv6.i198.1.1, 1 *)
shls discard_92 v_shl_i199_1_1 v_conv6_i198_1_1 1;
(*   %conv7.i200.1.1 = trunc i32 %shl.i199.1.1 to i8 *)
split tmp_v_shl_i199_1_1 v_conv7_i200_1_1 v_shl_i199_1_1 8;
vpc v_conv7_i200_1_1@uint8 v_conv7_i200_1_1@uint32;
(*   %conv.i188.2.1 = zext i8 %conv5.i197.1.1 to i32 *)
cast v_conv_i188_2_1@uint32 v_conv5_i197_1_1@uint8;
(*   %and.i189.2.1 = and i32 %conv.i188.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_2_1 v_conv_i188_2_1 (0x1)@uint32;
(*   %conv1.i190.2.1 = zext i8 %conv7.i200.1.1 to i32 *)
cast v_conv1_i190_2_1@uint32 v_conv7_i200_1_1@uint8;
(*   %mul.i191.2.1 = mul nsw i32 %and.i189.2.1, %conv1.i190.2.1 *)
mul v_mul_i191_2_1 v_and_i189_2_1 v_conv1_i190_2_1;
(*   %conv2.i192.2.1 = zext i8 %conv3.i194.1.1 to i32 *)
cast v_conv2_i192_2_1@uint32 v_conv3_i194_1_1@uint8;
(*   %xor.i193.2.1 = xor i32 %conv2.i192.2.1, %mul.i191.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i193_2_1 v_conv2_i192_2_1 v_mul_i191_2_1;
(*   %conv3.i194.2.1 = trunc i32 %xor.i193.2.1 to i8 *)
split tmp_v_xor_i193_2_1 v_conv3_i194_2_1 v_xor_i193_2_1 8;
vpc v_conv3_i194_2_1@uint8 v_conv3_i194_2_1@uint32;
(*   %conv4.i195.2.1 = zext i8 %conv5.i197.1.1 to i32 *)
cast v_conv4_i195_2_1@uint32 v_conv5_i197_1_1@uint8;
(*   %shr.i196.2.1 = ashr i32 %conv4.i195.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i196_2_1 tmp_to_be_used v_conv4_i195_2_1 1;
(*   %conv5.i197.2.1 = trunc i32 %shr.i196.2.1 to i8 *)
split tmp_v_shr_i196_2_1 v_conv5_i197_2_1 v_shr_i196_2_1 8;
vpc v_conv5_i197_2_1@uint8 v_conv5_i197_2_1@uint32;
(*   %conv6.i198.2.1 = zext i8 %conv7.i200.1.1 to i32 *)
cast v_conv6_i198_2_1@uint32 v_conv7_i200_1_1@uint8;
(*   %shl.i199.2.1 = shl i32 %conv6.i198.2.1, 1 *)
shls discard_93 v_shl_i199_2_1 v_conv6_i198_2_1 1;
(*   %conv7.i200.2.1 = trunc i32 %shl.i199.2.1 to i8 *)
split tmp_v_shl_i199_2_1 v_conv7_i200_2_1 v_shl_i199_2_1 8;
vpc v_conv7_i200_2_1@uint8 v_conv7_i200_2_1@uint32;
(*   %conv.i188.3.1 = zext i8 %conv5.i197.2.1 to i32 *)
cast v_conv_i188_3_1@uint32 v_conv5_i197_2_1@uint8;
(*   %and.i189.3.1 = and i32 %conv.i188.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_3_1 v_conv_i188_3_1 (0x1)@uint32;
(*   %conv1.i190.3.1 = zext i8 %conv7.i200.2.1 to i32 *)
cast v_conv1_i190_3_1@uint32 v_conv7_i200_2_1@uint8;
(*   %mul.i191.3.1 = mul nsw i32 %and.i189.3.1, %conv1.i190.3.1 *)
mul v_mul_i191_3_1 v_and_i189_3_1 v_conv1_i190_3_1;
(*   %conv2.i192.3.1 = zext i8 %conv3.i194.2.1 to i32 *)
cast v_conv2_i192_3_1@uint32 v_conv3_i194_2_1@uint8;
(*   %xor.i193.3.1 = xor i32 %conv2.i192.3.1, %mul.i191.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i193_3_1 v_conv2_i192_3_1 v_mul_i191_3_1;
(*   %conv3.i194.3.1 = trunc i32 %xor.i193.3.1 to i8 *)
split tmp_v_xor_i193_3_1 v_conv3_i194_3_1 v_xor_i193_3_1 8;
vpc v_conv3_i194_3_1@uint8 v_conv3_i194_3_1@uint32;
(*   %conv4.i195.3.1 = zext i8 %conv5.i197.2.1 to i32 *)
cast v_conv4_i195_3_1@uint32 v_conv5_i197_2_1@uint8;
(*   %shr.i196.3.1 = ashr i32 %conv4.i195.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i196_3_1 tmp_to_be_used v_conv4_i195_3_1 1;
(*   %conv5.i197.3.1 = trunc i32 %shr.i196.3.1 to i8 *)
split tmp_v_shr_i196_3_1 v_conv5_i197_3_1 v_shr_i196_3_1 8;
vpc v_conv5_i197_3_1@uint8 v_conv5_i197_3_1@uint32;
(*   %conv6.i198.3.1 = zext i8 %conv7.i200.2.1 to i32 *)
cast v_conv6_i198_3_1@uint32 v_conv7_i200_2_1@uint8;
(*   %shl.i199.3.1 = shl i32 %conv6.i198.3.1, 1 *)
shls discard_94 v_shl_i199_3_1 v_conv6_i198_3_1 1;
(*   %conv7.i200.3.1 = trunc i32 %shl.i199.3.1 to i8 *)
split tmp_v_shl_i199_3_1 v_conv7_i200_3_1 v_shl_i199_3_1 8;
vpc v_conv7_i200_3_1@uint8 v_conv7_i200_3_1@uint32;
(*   %conv.i188.4.1 = zext i8 %conv5.i197.3.1 to i32 *)
cast v_conv_i188_4_1@uint32 v_conv5_i197_3_1@uint8;
(*   %and.i189.4.1 = and i32 %conv.i188.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_4_1 v_conv_i188_4_1 (0x1)@uint32;
(*   %conv1.i190.4.1 = zext i8 %conv7.i200.3.1 to i32 *)
cast v_conv1_i190_4_1@uint32 v_conv7_i200_3_1@uint8;
(*   %mul.i191.4.1 = mul nsw i32 %and.i189.4.1, %conv1.i190.4.1 *)
mul v_mul_i191_4_1 v_and_i189_4_1 v_conv1_i190_4_1;
(*   %conv2.i192.4.1 = zext i8 %conv3.i194.3.1 to i32 *)
cast v_conv2_i192_4_1@uint32 v_conv3_i194_3_1@uint8;
(*   %xor.i193.4.1 = xor i32 %conv2.i192.4.1, %mul.i191.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i193_4_1 v_conv2_i192_4_1 v_mul_i191_4_1;
(*   %conv3.i194.4.1 = trunc i32 %xor.i193.4.1 to i8 *)
split tmp_v_xor_i193_4_1 v_conv3_i194_4_1 v_xor_i193_4_1 8;
vpc v_conv3_i194_4_1@uint8 v_conv3_i194_4_1@uint32;
(*   %conv4.i195.4.1 = zext i8 %conv5.i197.3.1 to i32 *)
cast v_conv4_i195_4_1@uint32 v_conv5_i197_3_1@uint8;
(*   %shr.i196.4.1 = ashr i32 %conv4.i195.4.1, 1 *)
(* You may need to modify here *)
split v_shr_i196_4_1 tmp_to_be_used v_conv4_i195_4_1 1;
(*   %conv5.i197.4.1 = trunc i32 %shr.i196.4.1 to i8 *)
split tmp_v_shr_i196_4_1 v_conv5_i197_4_1 v_shr_i196_4_1 8;
vpc v_conv5_i197_4_1@uint8 v_conv5_i197_4_1@uint32;
(*   %conv6.i198.4.1 = zext i8 %conv7.i200.3.1 to i32 *)
cast v_conv6_i198_4_1@uint32 v_conv7_i200_3_1@uint8;
(*   %shl.i199.4.1 = shl i32 %conv6.i198.4.1, 1 *)
shls discard_95 v_shl_i199_4_1 v_conv6_i198_4_1 1;
(*   %conv7.i200.4.1 = trunc i32 %shl.i199.4.1 to i8 *)
split tmp_v_shl_i199_4_1 v_conv7_i200_4_1 v_shl_i199_4_1 8;
vpc v_conv7_i200_4_1@uint8 v_conv7_i200_4_1@uint32;
(*   %conv.i188.5.1 = zext i8 %conv5.i197.4.1 to i32 *)
cast v_conv_i188_5_1@uint32 v_conv5_i197_4_1@uint8;
(*   %and.i189.5.1 = and i32 %conv.i188.5.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_5_1 v_conv_i188_5_1 (0x1)@uint32;
(*   %conv1.i190.5.1 = zext i8 %conv7.i200.4.1 to i32 *)
cast v_conv1_i190_5_1@uint32 v_conv7_i200_4_1@uint8;
(*   %mul.i191.5.1 = mul nsw i32 %and.i189.5.1, %conv1.i190.5.1 *)
mul v_mul_i191_5_1 v_and_i189_5_1 v_conv1_i190_5_1;
(*   %conv2.i192.5.1 = zext i8 %conv3.i194.4.1 to i32 *)
cast v_conv2_i192_5_1@uint32 v_conv3_i194_4_1@uint8;
(*   %xor.i193.5.1 = xor i32 %conv2.i192.5.1, %mul.i191.5.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i193_5_1 v_conv2_i192_5_1 v_mul_i191_5_1;
(*   %conv3.i194.5.1 = trunc i32 %xor.i193.5.1 to i8 *)
split tmp_v_xor_i193_5_1 v_conv3_i194_5_1 v_xor_i193_5_1 8;
vpc v_conv3_i194_5_1@uint8 v_conv3_i194_5_1@uint32;
(*   %conv4.i195.5.1 = zext i8 %conv5.i197.4.1 to i32 *)
cast v_conv4_i195_5_1@uint32 v_conv5_i197_4_1@uint8;
(*   %shr.i196.5.1 = ashr i32 %conv4.i195.5.1, 1 *)
(* You may need to modify here *)
split v_shr_i196_5_1 tmp_to_be_used v_conv4_i195_5_1 1;
(*   %conv5.i197.5.1 = trunc i32 %shr.i196.5.1 to i8 *)
split tmp_v_shr_i196_5_1 v_conv5_i197_5_1 v_shr_i196_5_1 8;
vpc v_conv5_i197_5_1@uint8 v_conv5_i197_5_1@uint32;
(*   %conv6.i198.5.1 = zext i8 %conv7.i200.4.1 to i32 *)
cast v_conv6_i198_5_1@uint32 v_conv7_i200_4_1@uint8;
(*   %shl.i199.5.1 = shl i32 %conv6.i198.5.1, 1 *)
shls discard_96 v_shl_i199_5_1 v_conv6_i198_5_1 1;
(*   %conv7.i200.5.1 = trunc i32 %shl.i199.5.1 to i8 *)
split tmp_v_shl_i199_5_1 v_conv7_i200_5_1 v_shl_i199_5_1 8;
vpc v_conv7_i200_5_1@uint8 v_conv7_i200_5_1@uint32;
(*   %conv.i188.6.1 = zext i8 %conv5.i197.5.1 to i32 *)
cast v_conv_i188_6_1@uint32 v_conv5_i197_5_1@uint8;
(*   %and.i189.6.1 = and i32 %conv.i188.6.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_6_1 v_conv_i188_6_1 (0x1)@uint32;
(*   %conv1.i190.6.1 = zext i8 %conv7.i200.5.1 to i32 *)
cast v_conv1_i190_6_1@uint32 v_conv7_i200_5_1@uint8;
(*   %mul.i191.6.1 = mul nsw i32 %and.i189.6.1, %conv1.i190.6.1 *)
mul v_mul_i191_6_1 v_and_i189_6_1 v_conv1_i190_6_1;
(*   %conv2.i192.6.1 = zext i8 %conv3.i194.5.1 to i32 *)
cast v_conv2_i192_6_1@uint32 v_conv3_i194_5_1@uint8;
(*   %xor.i193.6.1 = xor i32 %conv2.i192.6.1, %mul.i191.6.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i193_6_1 v_conv2_i192_6_1 v_mul_i191_6_1;
(*   %conv3.i194.6.1 = trunc i32 %xor.i193.6.1 to i8 *)
split tmp_v_xor_i193_6_1 v_conv3_i194_6_1 v_xor_i193_6_1 8;
vpc v_conv3_i194_6_1@uint8 v_conv3_i194_6_1@uint32;
(*   %conv4.i195.6.1 = zext i8 %conv5.i197.5.1 to i32 *)
cast v_conv4_i195_6_1@uint32 v_conv5_i197_5_1@uint8;
(*   %shr.i196.6.1 = ashr i32 %conv4.i195.6.1, 1 *)
(* You may need to modify here *)
split v_shr_i196_6_1 tmp_to_be_used v_conv4_i195_6_1 1;
(*   %conv5.i197.6.1 = trunc i32 %shr.i196.6.1 to i8 *)
split tmp_v_shr_i196_6_1 v_conv5_i197_6_1 v_shr_i196_6_1 8;
vpc v_conv5_i197_6_1@uint8 v_conv5_i197_6_1@uint32;
(*   %conv6.i198.6.1 = zext i8 %conv7.i200.5.1 to i32 *)
cast v_conv6_i198_6_1@uint32 v_conv7_i200_5_1@uint8;
(*   %shl.i199.6.1 = shl i32 %conv6.i198.6.1, 1 *)
shls discard_97 v_shl_i199_6_1 v_conv6_i198_6_1 1;
(*   %conv7.i200.6.1 = trunc i32 %shl.i199.6.1 to i8 *)
split tmp_v_shl_i199_6_1 v_conv7_i200_6_1 v_shl_i199_6_1 8;
vpc v_conv7_i200_6_1@uint8 v_conv7_i200_6_1@uint32;
(*   %conv.i188.7.1 = zext i8 %conv5.i197.6.1 to i32 *)
cast v_conv_i188_7_1@uint32 v_conv5_i197_6_1@uint8;
(*   %and.i189.7.1 = and i32 %conv.i188.7.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_7_1 v_conv_i188_7_1 (0x1)@uint32;
(*   %conv1.i190.7.1 = zext i8 %conv7.i200.6.1 to i32 *)
cast v_conv1_i190_7_1@uint32 v_conv7_i200_6_1@uint8;
(*   %mul.i191.7.1 = mul nsw i32 %and.i189.7.1, %conv1.i190.7.1 *)
mul v_mul_i191_7_1 v_and_i189_7_1 v_conv1_i190_7_1;
(*   %conv2.i192.7.1 = zext i8 %conv3.i194.6.1 to i32 *)
cast v_conv2_i192_7_1@uint32 v_conv3_i194_6_1@uint8;
(*   %xor.i193.7.1 = xor i32 %conv2.i192.7.1, %mul.i191.7.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i193_7_1 v_conv2_i192_7_1 v_mul_i191_7_1;
(*   %conv3.i194.7.1 = trunc i32 %xor.i193.7.1 to i8 *)
split tmp_v_xor_i193_7_1 v_conv3_i194_7_1 v_xor_i193_7_1 8;
vpc v_conv3_i194_7_1@uint8 v_conv3_i194_7_1@uint32;
(*   %arrayidx90.1 = getelementptr inbounds i8, i8* %c, i64 1 *)
(*   store i8 %conv3.i194.7.1, i8* %arrayidx90.1, align 1 *)
mov c_1 v_conv3_i194_7_1;
(*   %arrayidx105.1 = getelementptr inbounds i8, i8* %c, i64 1 *)
(*   %scevgep46.172 = getelementptr [9 x i8], [9 x i8]* %57, i64 0, i64 0 *)
(*   %60 = load i8, i8* %scevgep46.172, align 1 *)
mov v60 z_3;
(*   %conv103.173 = zext i8 %60 to i32 *)
cast v_conv103_173@uint32 v60@uint8;
(*   %61 = load i8, i8* %arrayidx105.1, align 1 *)
mov v61 c_1;
(*   %conv106.174 = zext i8 %61 to i32 *)
cast v_conv106_174@uint32 v61@uint8;
(*   %xor107.175 = xor i32 %conv106.174, %conv103.173 *)
(* You may need to modify here *)
xor uint32 v_xor107_175 v_conv106_174 v_conv103_173;
(*   %conv108.176 = trunc i32 %xor107.175 to i8 *)
split tmp_v_xor107_175 v_conv108_176 v_xor107_175 8;
vpc v_conv108_176@uint8 v_conv108_176@uint32;
(*   store i8 %conv108.176, i8* %arrayidx105.1, align 1 *)
mov c_1 v_conv108_176;
(*   %scevgep46.2.1 = getelementptr [9 x i8], [9 x i8]* %57, i64 0, i64 2 *)
(*   %62 = load i8, i8* %scevgep46.2.1, align 1 *)
mov v62 z_5;
(*   %conv103.2.1 = zext i8 %62 to i32 *)
cast v_conv103_2_1@uint32 v62@uint8;
(*   %63 = load i8, i8* %arrayidx105.1, align 1 *)
mov v63 c_1;
(*   %conv106.2.1 = zext i8 %63 to i32 *)
cast v_conv106_2_1@uint32 v63@uint8;
(*   %xor107.2.1 = xor i32 %conv106.2.1, %conv103.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor107_2_1 v_conv106_2_1 v_conv103_2_1;
(*   %conv108.2.1 = trunc i32 %xor107.2.1 to i8 *)
split tmp_v_xor107_2_1 v_conv108_2_1 v_xor107_2_1 8;
vpc v_conv108_2_1@uint8 v_conv108_2_1@uint32;
(*   store i8 %conv108.2.1, i8* %arrayidx105.1, align 1 *)
mov c_1 v_conv108_2_1;
(*   %scevgep45.1 = getelementptr [9 x i8], [9 x i8]* %57, i64 0, i64 3 *)
(*   %64 = bitcast i8* %scevgep45.1 to [9 x i8]* *)
(*   %arrayidx85.2 = getelementptr inbounds i8, i8* %a, i64 2 *)
(*   %65 = load i8, i8* %arrayidx85.2, align 1 *)
mov v65 a_2;
(*   %arrayidx87.2 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %66 = load i8, i8* %arrayidx87.2, align 1 *)
mov v66 b_2;
(*   %conv.i188.280 = zext i8 %66 to i32 *)
cast v_conv_i188_280@uint32 v66@uint8;
(*   %and.i189.281 = and i32 %conv.i188.280, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_281 v_conv_i188_280 (0x1)@uint32;
(*   %conv1.i190.282 = zext i8 %65 to i32 *)
cast v_conv1_i190_282@uint32 v65@uint8;
(*   %mul.i191.283 = mul nsw i32 %and.i189.281, %conv1.i190.282 *)
mul v_mul_i191_283 v_and_i189_281 v_conv1_i190_282;
(*   %conv3.i194.284 = trunc i32 %mul.i191.283 to i8 *)
split tmp_v_mul_i191_283 v_conv3_i194_284 v_mul_i191_283 8;
vpc v_conv3_i194_284@uint8 v_conv3_i194_284@uint32;
(*   %conv4.i195.285 = zext i8 %66 to i32 *)
cast v_conv4_i195_285@uint32 v66@uint8;
(*   %shr.i196.286 = ashr i32 %conv4.i195.285, 1 *)
(* You may need to modify here *)
split v_shr_i196_286 tmp_to_be_used v_conv4_i195_285 1;
(*   %conv5.i197.287 = trunc i32 %shr.i196.286 to i8 *)
split tmp_v_shr_i196_286 v_conv5_i197_287 v_shr_i196_286 8;
vpc v_conv5_i197_287@uint8 v_conv5_i197_287@uint32;
(*   %conv6.i198.288 = zext i8 %65 to i32 *)
cast v_conv6_i198_288@uint32 v65@uint8;
(*   %shl.i199.289 = shl i32 %conv6.i198.288, 1 *)
shls discard_98 v_shl_i199_289 v_conv6_i198_288 1;
(*   %conv7.i200.290 = trunc i32 %shl.i199.289 to i8 *)
split tmp_v_shl_i199_289 v_conv7_i200_290 v_shl_i199_289 8;
vpc v_conv7_i200_290@uint8 v_conv7_i200_290@uint32;
(*   %conv.i188.1.2 = zext i8 %conv5.i197.287 to i32 *)
cast v_conv_i188_1_2@uint32 v_conv5_i197_287@uint8;
(*   %and.i189.1.2 = and i32 %conv.i188.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_1_2 v_conv_i188_1_2 (0x1)@uint32;
(*   %conv1.i190.1.2 = zext i8 %conv7.i200.290 to i32 *)
cast v_conv1_i190_1_2@uint32 v_conv7_i200_290@uint8;
(*   %mul.i191.1.2 = mul nsw i32 %and.i189.1.2, %conv1.i190.1.2 *)
mul v_mul_i191_1_2 v_and_i189_1_2 v_conv1_i190_1_2;
(*   %conv2.i192.1.2 = zext i8 %conv3.i194.284 to i32 *)
cast v_conv2_i192_1_2@uint32 v_conv3_i194_284@uint8;
(*   %xor.i193.1.2 = xor i32 %conv2.i192.1.2, %mul.i191.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i193_1_2 v_conv2_i192_1_2 v_mul_i191_1_2;
(*   %conv3.i194.1.2 = trunc i32 %xor.i193.1.2 to i8 *)
split tmp_v_xor_i193_1_2 v_conv3_i194_1_2 v_xor_i193_1_2 8;
vpc v_conv3_i194_1_2@uint8 v_conv3_i194_1_2@uint32;
(*   %conv4.i195.1.2 = zext i8 %conv5.i197.287 to i32 *)
cast v_conv4_i195_1_2@uint32 v_conv5_i197_287@uint8;
(*   %shr.i196.1.2 = ashr i32 %conv4.i195.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i196_1_2 tmp_to_be_used v_conv4_i195_1_2 1;
(*   %conv5.i197.1.2 = trunc i32 %shr.i196.1.2 to i8 *)
split tmp_v_shr_i196_1_2 v_conv5_i197_1_2 v_shr_i196_1_2 8;
vpc v_conv5_i197_1_2@uint8 v_conv5_i197_1_2@uint32;
(*   %conv6.i198.1.2 = zext i8 %conv7.i200.290 to i32 *)
cast v_conv6_i198_1_2@uint32 v_conv7_i200_290@uint8;
(*   %shl.i199.1.2 = shl i32 %conv6.i198.1.2, 1 *)
shls discard_99 v_shl_i199_1_2 v_conv6_i198_1_2 1;
(*   %conv7.i200.1.2 = trunc i32 %shl.i199.1.2 to i8 *)
split tmp_v_shl_i199_1_2 v_conv7_i200_1_2 v_shl_i199_1_2 8;
vpc v_conv7_i200_1_2@uint8 v_conv7_i200_1_2@uint32;
(*   %conv.i188.2.2 = zext i8 %conv5.i197.1.2 to i32 *)
cast v_conv_i188_2_2@uint32 v_conv5_i197_1_2@uint8;
(*   %and.i189.2.2 = and i32 %conv.i188.2.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_2_2 v_conv_i188_2_2 (0x1)@uint32;
(*   %conv1.i190.2.2 = zext i8 %conv7.i200.1.2 to i32 *)
cast v_conv1_i190_2_2@uint32 v_conv7_i200_1_2@uint8;
(*   %mul.i191.2.2 = mul nsw i32 %and.i189.2.2, %conv1.i190.2.2 *)
mul v_mul_i191_2_2 v_and_i189_2_2 v_conv1_i190_2_2;
(*   %conv2.i192.2.2 = zext i8 %conv3.i194.1.2 to i32 *)
cast v_conv2_i192_2_2@uint32 v_conv3_i194_1_2@uint8;
(*   %xor.i193.2.2 = xor i32 %conv2.i192.2.2, %mul.i191.2.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i193_2_2 v_conv2_i192_2_2 v_mul_i191_2_2;
(*   %conv3.i194.2.2 = trunc i32 %xor.i193.2.2 to i8 *)
split tmp_v_xor_i193_2_2 v_conv3_i194_2_2 v_xor_i193_2_2 8;
vpc v_conv3_i194_2_2@uint8 v_conv3_i194_2_2@uint32;
(*   %conv4.i195.2.2 = zext i8 %conv5.i197.1.2 to i32 *)
cast v_conv4_i195_2_2@uint32 v_conv5_i197_1_2@uint8;
(*   %shr.i196.2.2 = ashr i32 %conv4.i195.2.2, 1 *)
(* You may need to modify here *)
split v_shr_i196_2_2 tmp_to_be_used v_conv4_i195_2_2 1;
(*   %conv5.i197.2.2 = trunc i32 %shr.i196.2.2 to i8 *)
split tmp_v_shr_i196_2_2 v_conv5_i197_2_2 v_shr_i196_2_2 8;
vpc v_conv5_i197_2_2@uint8 v_conv5_i197_2_2@uint32;
(*   %conv6.i198.2.2 = zext i8 %conv7.i200.1.2 to i32 *)
cast v_conv6_i198_2_2@uint32 v_conv7_i200_1_2@uint8;
(*   %shl.i199.2.2 = shl i32 %conv6.i198.2.2, 1 *)
shls discard_100 v_shl_i199_2_2 v_conv6_i198_2_2 1;
(*   %conv7.i200.2.2 = trunc i32 %shl.i199.2.2 to i8 *)
split tmp_v_shl_i199_2_2 v_conv7_i200_2_2 v_shl_i199_2_2 8;
vpc v_conv7_i200_2_2@uint8 v_conv7_i200_2_2@uint32;
(*   %conv.i188.3.2 = zext i8 %conv5.i197.2.2 to i32 *)
cast v_conv_i188_3_2@uint32 v_conv5_i197_2_2@uint8;
(*   %and.i189.3.2 = and i32 %conv.i188.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_3_2 v_conv_i188_3_2 (0x1)@uint32;
(*   %conv1.i190.3.2 = zext i8 %conv7.i200.2.2 to i32 *)
cast v_conv1_i190_3_2@uint32 v_conv7_i200_2_2@uint8;
(*   %mul.i191.3.2 = mul nsw i32 %and.i189.3.2, %conv1.i190.3.2 *)
mul v_mul_i191_3_2 v_and_i189_3_2 v_conv1_i190_3_2;
(*   %conv2.i192.3.2 = zext i8 %conv3.i194.2.2 to i32 *)
cast v_conv2_i192_3_2@uint32 v_conv3_i194_2_2@uint8;
(*   %xor.i193.3.2 = xor i32 %conv2.i192.3.2, %mul.i191.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i193_3_2 v_conv2_i192_3_2 v_mul_i191_3_2;
(*   %conv3.i194.3.2 = trunc i32 %xor.i193.3.2 to i8 *)
split tmp_v_xor_i193_3_2 v_conv3_i194_3_2 v_xor_i193_3_2 8;
vpc v_conv3_i194_3_2@uint8 v_conv3_i194_3_2@uint32;
(*   %conv4.i195.3.2 = zext i8 %conv5.i197.2.2 to i32 *)
cast v_conv4_i195_3_2@uint32 v_conv5_i197_2_2@uint8;
(*   %shr.i196.3.2 = ashr i32 %conv4.i195.3.2, 1 *)
(* You may need to modify here *)
split v_shr_i196_3_2 tmp_to_be_used v_conv4_i195_3_2 1;
(*   %conv5.i197.3.2 = trunc i32 %shr.i196.3.2 to i8 *)
split tmp_v_shr_i196_3_2 v_conv5_i197_3_2 v_shr_i196_3_2 8;
vpc v_conv5_i197_3_2@uint8 v_conv5_i197_3_2@uint32;
(*   %conv6.i198.3.2 = zext i8 %conv7.i200.2.2 to i32 *)
cast v_conv6_i198_3_2@uint32 v_conv7_i200_2_2@uint8;
(*   %shl.i199.3.2 = shl i32 %conv6.i198.3.2, 1 *)
shls discard_101 v_shl_i199_3_2 v_conv6_i198_3_2 1;
(*   %conv7.i200.3.2 = trunc i32 %shl.i199.3.2 to i8 *)
split tmp_v_shl_i199_3_2 v_conv7_i200_3_2 v_shl_i199_3_2 8;
vpc v_conv7_i200_3_2@uint8 v_conv7_i200_3_2@uint32;
(*   %conv.i188.4.2 = zext i8 %conv5.i197.3.2 to i32 *)
cast v_conv_i188_4_2@uint32 v_conv5_i197_3_2@uint8;
(*   %and.i189.4.2 = and i32 %conv.i188.4.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_4_2 v_conv_i188_4_2 (0x1)@uint32;
(*   %conv1.i190.4.2 = zext i8 %conv7.i200.3.2 to i32 *)
cast v_conv1_i190_4_2@uint32 v_conv7_i200_3_2@uint8;
(*   %mul.i191.4.2 = mul nsw i32 %and.i189.4.2, %conv1.i190.4.2 *)
mul v_mul_i191_4_2 v_and_i189_4_2 v_conv1_i190_4_2;
(*   %conv2.i192.4.2 = zext i8 %conv3.i194.3.2 to i32 *)
cast v_conv2_i192_4_2@uint32 v_conv3_i194_3_2@uint8;
(*   %xor.i193.4.2 = xor i32 %conv2.i192.4.2, %mul.i191.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i193_4_2 v_conv2_i192_4_2 v_mul_i191_4_2;
(*   %conv3.i194.4.2 = trunc i32 %xor.i193.4.2 to i8 *)
split tmp_v_xor_i193_4_2 v_conv3_i194_4_2 v_xor_i193_4_2 8;
vpc v_conv3_i194_4_2@uint8 v_conv3_i194_4_2@uint32;
(*   %conv4.i195.4.2 = zext i8 %conv5.i197.3.2 to i32 *)
cast v_conv4_i195_4_2@uint32 v_conv5_i197_3_2@uint8;
(*   %shr.i196.4.2 = ashr i32 %conv4.i195.4.2, 1 *)
(* You may need to modify here *)
split v_shr_i196_4_2 tmp_to_be_used v_conv4_i195_4_2 1;
(*   %conv5.i197.4.2 = trunc i32 %shr.i196.4.2 to i8 *)
split tmp_v_shr_i196_4_2 v_conv5_i197_4_2 v_shr_i196_4_2 8;
vpc v_conv5_i197_4_2@uint8 v_conv5_i197_4_2@uint32;
(*   %conv6.i198.4.2 = zext i8 %conv7.i200.3.2 to i32 *)
cast v_conv6_i198_4_2@uint32 v_conv7_i200_3_2@uint8;
(*   %shl.i199.4.2 = shl i32 %conv6.i198.4.2, 1 *)
shls discard_102 v_shl_i199_4_2 v_conv6_i198_4_2 1;
(*   %conv7.i200.4.2 = trunc i32 %shl.i199.4.2 to i8 *)
split tmp_v_shl_i199_4_2 v_conv7_i200_4_2 v_shl_i199_4_2 8;
vpc v_conv7_i200_4_2@uint8 v_conv7_i200_4_2@uint32;
(*   %conv.i188.5.2 = zext i8 %conv5.i197.4.2 to i32 *)
cast v_conv_i188_5_2@uint32 v_conv5_i197_4_2@uint8;
(*   %and.i189.5.2 = and i32 %conv.i188.5.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_5_2 v_conv_i188_5_2 (0x1)@uint32;
(*   %conv1.i190.5.2 = zext i8 %conv7.i200.4.2 to i32 *)
cast v_conv1_i190_5_2@uint32 v_conv7_i200_4_2@uint8;
(*   %mul.i191.5.2 = mul nsw i32 %and.i189.5.2, %conv1.i190.5.2 *)
mul v_mul_i191_5_2 v_and_i189_5_2 v_conv1_i190_5_2;
(*   %conv2.i192.5.2 = zext i8 %conv3.i194.4.2 to i32 *)
cast v_conv2_i192_5_2@uint32 v_conv3_i194_4_2@uint8;
(*   %xor.i193.5.2 = xor i32 %conv2.i192.5.2, %mul.i191.5.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i193_5_2 v_conv2_i192_5_2 v_mul_i191_5_2;
(*   %conv3.i194.5.2 = trunc i32 %xor.i193.5.2 to i8 *)
split tmp_v_xor_i193_5_2 v_conv3_i194_5_2 v_xor_i193_5_2 8;
vpc v_conv3_i194_5_2@uint8 v_conv3_i194_5_2@uint32;
(*   %conv4.i195.5.2 = zext i8 %conv5.i197.4.2 to i32 *)
cast v_conv4_i195_5_2@uint32 v_conv5_i197_4_2@uint8;
(*   %shr.i196.5.2 = ashr i32 %conv4.i195.5.2, 1 *)
(* You may need to modify here *)
split v_shr_i196_5_2 tmp_to_be_used v_conv4_i195_5_2 1;
(*   %conv5.i197.5.2 = trunc i32 %shr.i196.5.2 to i8 *)
split tmp_v_shr_i196_5_2 v_conv5_i197_5_2 v_shr_i196_5_2 8;
vpc v_conv5_i197_5_2@uint8 v_conv5_i197_5_2@uint32;
(*   %conv6.i198.5.2 = zext i8 %conv7.i200.4.2 to i32 *)
cast v_conv6_i198_5_2@uint32 v_conv7_i200_4_2@uint8;
(*   %shl.i199.5.2 = shl i32 %conv6.i198.5.2, 1 *)
shls discard_103 v_shl_i199_5_2 v_conv6_i198_5_2 1;
(*   %conv7.i200.5.2 = trunc i32 %shl.i199.5.2 to i8 *)
split tmp_v_shl_i199_5_2 v_conv7_i200_5_2 v_shl_i199_5_2 8;
vpc v_conv7_i200_5_2@uint8 v_conv7_i200_5_2@uint32;
(*   %conv.i188.6.2 = zext i8 %conv5.i197.5.2 to i32 *)
cast v_conv_i188_6_2@uint32 v_conv5_i197_5_2@uint8;
(*   %and.i189.6.2 = and i32 %conv.i188.6.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_6_2 v_conv_i188_6_2 (0x1)@uint32;
(*   %conv1.i190.6.2 = zext i8 %conv7.i200.5.2 to i32 *)
cast v_conv1_i190_6_2@uint32 v_conv7_i200_5_2@uint8;
(*   %mul.i191.6.2 = mul nsw i32 %and.i189.6.2, %conv1.i190.6.2 *)
mul v_mul_i191_6_2 v_and_i189_6_2 v_conv1_i190_6_2;
(*   %conv2.i192.6.2 = zext i8 %conv3.i194.5.2 to i32 *)
cast v_conv2_i192_6_2@uint32 v_conv3_i194_5_2@uint8;
(*   %xor.i193.6.2 = xor i32 %conv2.i192.6.2, %mul.i191.6.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i193_6_2 v_conv2_i192_6_2 v_mul_i191_6_2;
(*   %conv3.i194.6.2 = trunc i32 %xor.i193.6.2 to i8 *)
split tmp_v_xor_i193_6_2 v_conv3_i194_6_2 v_xor_i193_6_2 8;
vpc v_conv3_i194_6_2@uint8 v_conv3_i194_6_2@uint32;
(*   %conv4.i195.6.2 = zext i8 %conv5.i197.5.2 to i32 *)
cast v_conv4_i195_6_2@uint32 v_conv5_i197_5_2@uint8;
(*   %shr.i196.6.2 = ashr i32 %conv4.i195.6.2, 1 *)
(* You may need to modify here *)
split v_shr_i196_6_2 tmp_to_be_used v_conv4_i195_6_2 1;
(*   %conv5.i197.6.2 = trunc i32 %shr.i196.6.2 to i8 *)
split tmp_v_shr_i196_6_2 v_conv5_i197_6_2 v_shr_i196_6_2 8;
vpc v_conv5_i197_6_2@uint8 v_conv5_i197_6_2@uint32;
(*   %conv6.i198.6.2 = zext i8 %conv7.i200.5.2 to i32 *)
cast v_conv6_i198_6_2@uint32 v_conv7_i200_5_2@uint8;
(*   %shl.i199.6.2 = shl i32 %conv6.i198.6.2, 1 *)
shls discard_104 v_shl_i199_6_2 v_conv6_i198_6_2 1;
(*   %conv7.i200.6.2 = trunc i32 %shl.i199.6.2 to i8 *)
split tmp_v_shl_i199_6_2 v_conv7_i200_6_2 v_shl_i199_6_2 8;
vpc v_conv7_i200_6_2@uint8 v_conv7_i200_6_2@uint32;
(*   %conv.i188.7.2 = zext i8 %conv5.i197.6.2 to i32 *)
cast v_conv_i188_7_2@uint32 v_conv5_i197_6_2@uint8;
(*   %and.i189.7.2 = and i32 %conv.i188.7.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_7_2 v_conv_i188_7_2 (0x1)@uint32;
(*   %conv1.i190.7.2 = zext i8 %conv7.i200.6.2 to i32 *)
cast v_conv1_i190_7_2@uint32 v_conv7_i200_6_2@uint8;
(*   %mul.i191.7.2 = mul nsw i32 %and.i189.7.2, %conv1.i190.7.2 *)
mul v_mul_i191_7_2 v_and_i189_7_2 v_conv1_i190_7_2;
(*   %conv2.i192.7.2 = zext i8 %conv3.i194.6.2 to i32 *)
cast v_conv2_i192_7_2@uint32 v_conv3_i194_6_2@uint8;
(*   %xor.i193.7.2 = xor i32 %conv2.i192.7.2, %mul.i191.7.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i193_7_2 v_conv2_i192_7_2 v_mul_i191_7_2;
(*   %conv3.i194.7.2 = trunc i32 %xor.i193.7.2 to i8 *)
split tmp_v_xor_i193_7_2 v_conv3_i194_7_2 v_xor_i193_7_2 8;
vpc v_conv3_i194_7_2@uint8 v_conv3_i194_7_2@uint32;
(*   %arrayidx90.2 = getelementptr inbounds i8, i8* %c, i64 2 *)
(*   store i8 %conv3.i194.7.2, i8* %arrayidx90.2, align 1 *)
mov c_2 v_conv3_i194_7_2;
(*   %arrayidx105.2 = getelementptr inbounds i8, i8* %c, i64 2 *)
(*   %scevgep46.293 = getelementptr [9 x i8], [9 x i8]* %64, i64 0, i64 0 *)
(*   %67 = load i8, i8* %scevgep46.293, align 1 *)
mov v67 z_6;
(*   %conv103.294 = zext i8 %67 to i32 *)
cast v_conv103_294@uint32 v67@uint8;
(*   %68 = load i8, i8* %arrayidx105.2, align 1 *)
mov v68 c_2;
(*   %conv106.295 = zext i8 %68 to i32 *)
cast v_conv106_295@uint32 v68@uint8;
(*   %xor107.296 = xor i32 %conv106.295, %conv103.294 *)
(* You may need to modify here *)
xor uint32 v_xor107_296 v_conv106_295 v_conv103_294;
(*   %conv108.297 = trunc i32 %xor107.296 to i8 *)
split tmp_v_xor107_296 v_conv108_297 v_xor107_296 8;
vpc v_conv108_297@uint8 v_conv108_297@uint32;
(*   store i8 %conv108.297, i8* %arrayidx105.2, align 1 *)
mov c_2 v_conv108_297;
(*   %scevgep46.1.2 = getelementptr [9 x i8], [9 x i8]* %64, i64 0, i64 1 *)
(*   %69 = load i8, i8* %scevgep46.1.2, align 1 *)
mov v69 z_7;
(*   %conv103.1.2 = zext i8 %69 to i32 *)
cast v_conv103_1_2@uint32 v69@uint8;
(*   %70 = load i8, i8* %arrayidx105.2, align 1 *)
mov v70 c_2;
(*   %conv106.1.2 = zext i8 %70 to i32 *)
cast v_conv106_1_2@uint32 v70@uint8;
(*   %xor107.1.2 = xor i32 %conv106.1.2, %conv103.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor107_1_2 v_conv106_1_2 v_conv103_1_2;
(*   %conv108.1.2 = trunc i32 %xor107.1.2 to i8 *)
split tmp_v_xor107_1_2 v_conv108_1_2 v_xor107_1_2 8;
vpc v_conv108_1_2@uint8 v_conv108_1_2@uint32;
(*   store i8 %conv108.1.2, i8* %arrayidx105.2, align 1 *)
mov c_2 v_conv108_1_2;
(*   %71 = load i8, i8* %a, align 1 *)
mov v71 a_0;
(*   %scevgep36.1 = getelementptr i8, i8* %a, i64 1 *)
(*   %72 = load i8, i8* %scevgep36.1, align 1 *)
mov v72 a_1;
(*   %conv.i.i214.1 = zext i8 %72 to i32 *)
cast v_conv_i_i214_1@uint32 v72@uint8;
(*   %conv1.i.i215.1 = zext i8 %71 to i32 *)
cast v_conv1_i_i215_1@uint32 v71@uint8;
(*   %xor.i.i216.1 = xor i32 %conv1.i.i215.1, %conv.i.i214.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i216_1 v_conv1_i_i215_1 v_conv_i_i214_1;
(*   %conv2.i.i217.1 = trunc i32 %xor.i.i216.1 to i8 *)
split tmp_v_xor_i_i216_1 v_conv2_i_i217_1 v_xor_i_i216_1 8;
vpc v_conv2_i_i217_1@uint8 v_conv2_i_i217_1@uint32;
(*   %scevgep36.2 = getelementptr i8, i8* %a, i64 2 *)
(*   %73 = load i8, i8* %scevgep36.2, align 1 *)
mov v73 a_2;
(*   %conv.i.i214.2 = zext i8 %73 to i32 *)
cast v_conv_i_i214_2@uint32 v73@uint8;
(*   %conv1.i.i215.2 = zext i8 %conv2.i.i217.1 to i32 *)
cast v_conv1_i_i215_2@uint32 v_conv2_i_i217_1@uint8;
(*   %xor.i.i216.2 = xor i32 %conv1.i.i215.2, %conv.i.i214.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i216_2 v_conv1_i_i215_2 v_conv_i_i214_2;
(*   %conv2.i.i217.2 = trunc i32 %xor.i.i216.2 to i8 *)
split tmp_v_xor_i_i216_2 v_conv2_i_i217_2 v_xor_i_i216_2 8;
vpc v_conv2_i_i217_2@uint8 v_conv2_i_i217_2@uint32;
(*   %74 = load i8, i8* %b, align 1 *)
mov v74 b_0;
(*   %scevgep32.1 = getelementptr i8, i8* %b, i64 1 *)
(*   %75 = load i8, i8* %scevgep32.1, align 1 *)
mov v75 b_1;
(*   %conv.i.i175.1 = zext i8 %75 to i32 *)
cast v_conv_i_i175_1@uint32 v75@uint8;
(*   %conv1.i.i176.1 = zext i8 %74 to i32 *)
cast v_conv1_i_i176_1@uint32 v74@uint8;
(*   %xor.i.i177.1 = xor i32 %conv1.i.i176.1, %conv.i.i175.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i177_1 v_conv1_i_i176_1 v_conv_i_i175_1;
(*   %conv2.i.i178.1 = trunc i32 %xor.i.i177.1 to i8 *)
split tmp_v_xor_i_i177_1 v_conv2_i_i178_1 v_xor_i_i177_1 8;
vpc v_conv2_i_i178_1@uint8 v_conv2_i_i178_1@uint32;
(*   %scevgep32.2 = getelementptr i8, i8* %b, i64 2 *)
(*   %76 = load i8, i8* %scevgep32.2, align 1 *)
mov v76 b_2;
(*   %conv.i.i175.2 = zext i8 %76 to i32 *)
cast v_conv_i_i175_2@uint32 v76@uint8;
(*   %conv1.i.i176.2 = zext i8 %conv2.i.i178.1 to i32 *)
cast v_conv1_i_i176_2@uint32 v_conv2_i_i178_1@uint8;
(*   %xor.i.i177.2 = xor i32 %conv1.i.i176.2, %conv.i.i175.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i177_2 v_conv1_i_i176_2 v_conv_i_i175_2;
(*   %conv2.i.i178.2 = trunc i32 %xor.i.i177.2 to i8 *)
split tmp_v_xor_i_i177_2 v_conv2_i_i178_2 v_xor_i_i177_2 8;
vpc v_conv2_i_i178_2@uint8 v_conv2_i_i178_2@uint32;
(*   %conv.i149 = zext i8 %conv2.i.i178.2 to i32 *)
cast v_conv_i149@uint32 v_conv2_i_i178_2@uint8;
(*   %and.i150 = and i32 %conv.i149, 1 *)
(* You may need to modify here *)
and uint32 v_and_i150 v_conv_i149 (0x1)@uint32;
(*   %conv1.i151 = zext i8 %conv2.i.i217.2 to i32 *)
cast v_conv1_i151@uint32 v_conv2_i_i217_2@uint8;
(*   %mul.i152 = mul nsw i32 %and.i150, %conv1.i151 *)
mul v_mul_i152 v_and_i150 v_conv1_i151;
(*   %conv3.i155 = trunc i32 %mul.i152 to i8 *)
split tmp_v_mul_i152 v_conv3_i155 v_mul_i152 8;
vpc v_conv3_i155@uint8 v_conv3_i155@uint32;
(*   %conv4.i156 = zext i8 %conv2.i.i178.2 to i32 *)
cast v_conv4_i156@uint32 v_conv2_i_i178_2@uint8;
(*   %shr.i157 = ashr i32 %conv4.i156, 1 *)
(* You may need to modify here *)
split v_shr_i157 tmp_to_be_used v_conv4_i156 1;
(*   %conv5.i158 = trunc i32 %shr.i157 to i8 *)
split tmp_v_shr_i157 v_conv5_i158 v_shr_i157 8;
vpc v_conv5_i158@uint8 v_conv5_i158@uint32;
(*   %conv6.i159 = zext i8 %conv2.i.i217.2 to i32 *)
cast v_conv6_i159@uint32 v_conv2_i_i217_2@uint8;
(*   %shl.i160 = shl i32 %conv6.i159, 1 *)
shls discard_105 v_shl_i160 v_conv6_i159 1;
(*   %conv7.i161 = trunc i32 %shl.i160 to i8 *)
split tmp_v_shl_i160 v_conv7_i161 v_shl_i160 8;
vpc v_conv7_i161@uint8 v_conv7_i161@uint32;
(*   %conv.i149.1 = zext i8 %conv5.i158 to i32 *)
cast v_conv_i149_1@uint32 v_conv5_i158@uint8;
(*   %and.i150.1 = and i32 %conv.i149.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i150_1 v_conv_i149_1 (0x1)@uint32;
(*   %conv1.i151.1 = zext i8 %conv7.i161 to i32 *)
cast v_conv1_i151_1@uint32 v_conv7_i161@uint8;
(*   %mul.i152.1 = mul nsw i32 %and.i150.1, %conv1.i151.1 *)
mul v_mul_i152_1 v_and_i150_1 v_conv1_i151_1;
(*   %conv2.i153.1 = zext i8 %conv3.i155 to i32 *)
cast v_conv2_i153_1@uint32 v_conv3_i155@uint8;
(*   %xor.i154.1 = xor i32 %conv2.i153.1, %mul.i152.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i154_1 v_conv2_i153_1 v_mul_i152_1;
(*   %conv3.i155.1 = trunc i32 %xor.i154.1 to i8 *)
split tmp_v_xor_i154_1 v_conv3_i155_1 v_xor_i154_1 8;
vpc v_conv3_i155_1@uint8 v_conv3_i155_1@uint32;
(*   %conv4.i156.1 = zext i8 %conv5.i158 to i32 *)
cast v_conv4_i156_1@uint32 v_conv5_i158@uint8;
(*   %shr.i157.1 = ashr i32 %conv4.i156.1, 1 *)
(* You may need to modify here *)
split v_shr_i157_1 tmp_to_be_used v_conv4_i156_1 1;
(*   %conv5.i158.1 = trunc i32 %shr.i157.1 to i8 *)
split tmp_v_shr_i157_1 v_conv5_i158_1 v_shr_i157_1 8;
vpc v_conv5_i158_1@uint8 v_conv5_i158_1@uint32;
(*   %conv6.i159.1 = zext i8 %conv7.i161 to i32 *)
cast v_conv6_i159_1@uint32 v_conv7_i161@uint8;
(*   %shl.i160.1 = shl i32 %conv6.i159.1, 1 *)
shls discard_106 v_shl_i160_1 v_conv6_i159_1 1;
(*   %conv7.i161.1 = trunc i32 %shl.i160.1 to i8 *)
split tmp_v_shl_i160_1 v_conv7_i161_1 v_shl_i160_1 8;
vpc v_conv7_i161_1@uint8 v_conv7_i161_1@uint32;
(*   %conv.i149.2 = zext i8 %conv5.i158.1 to i32 *)
cast v_conv_i149_2@uint32 v_conv5_i158_1@uint8;
(*   %and.i150.2 = and i32 %conv.i149.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i150_2 v_conv_i149_2 (0x1)@uint32;
(*   %conv1.i151.2 = zext i8 %conv7.i161.1 to i32 *)
cast v_conv1_i151_2@uint32 v_conv7_i161_1@uint8;
(*   %mul.i152.2 = mul nsw i32 %and.i150.2, %conv1.i151.2 *)
mul v_mul_i152_2 v_and_i150_2 v_conv1_i151_2;
(*   %conv2.i153.2 = zext i8 %conv3.i155.1 to i32 *)
cast v_conv2_i153_2@uint32 v_conv3_i155_1@uint8;
(*   %xor.i154.2 = xor i32 %conv2.i153.2, %mul.i152.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i154_2 v_conv2_i153_2 v_mul_i152_2;
(*   %conv3.i155.2 = trunc i32 %xor.i154.2 to i8 *)
split tmp_v_xor_i154_2 v_conv3_i155_2 v_xor_i154_2 8;
vpc v_conv3_i155_2@uint8 v_conv3_i155_2@uint32;
(*   %conv4.i156.2 = zext i8 %conv5.i158.1 to i32 *)
cast v_conv4_i156_2@uint32 v_conv5_i158_1@uint8;
(*   %shr.i157.2 = ashr i32 %conv4.i156.2, 1 *)
(* You may need to modify here *)
split v_shr_i157_2 tmp_to_be_used v_conv4_i156_2 1;
(*   %conv5.i158.2 = trunc i32 %shr.i157.2 to i8 *)
split tmp_v_shr_i157_2 v_conv5_i158_2 v_shr_i157_2 8;
vpc v_conv5_i158_2@uint8 v_conv5_i158_2@uint32;
(*   %conv6.i159.2 = zext i8 %conv7.i161.1 to i32 *)
cast v_conv6_i159_2@uint32 v_conv7_i161_1@uint8;
(*   %shl.i160.2 = shl i32 %conv6.i159.2, 1 *)
shls discard_107 v_shl_i160_2 v_conv6_i159_2 1;
(*   %conv7.i161.2 = trunc i32 %shl.i160.2 to i8 *)
split tmp_v_shl_i160_2 v_conv7_i161_2 v_shl_i160_2 8;
vpc v_conv7_i161_2@uint8 v_conv7_i161_2@uint32;
(*   %conv.i149.3 = zext i8 %conv5.i158.2 to i32 *)
cast v_conv_i149_3@uint32 v_conv5_i158_2@uint8;
(*   %and.i150.3 = and i32 %conv.i149.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i150_3 v_conv_i149_3 (0x1)@uint32;
(*   %conv1.i151.3 = zext i8 %conv7.i161.2 to i32 *)
cast v_conv1_i151_3@uint32 v_conv7_i161_2@uint8;
(*   %mul.i152.3 = mul nsw i32 %and.i150.3, %conv1.i151.3 *)
mul v_mul_i152_3 v_and_i150_3 v_conv1_i151_3;
(*   %conv2.i153.3 = zext i8 %conv3.i155.2 to i32 *)
cast v_conv2_i153_3@uint32 v_conv3_i155_2@uint8;
(*   %xor.i154.3 = xor i32 %conv2.i153.3, %mul.i152.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i154_3 v_conv2_i153_3 v_mul_i152_3;
(*   %conv3.i155.3 = trunc i32 %xor.i154.3 to i8 *)
split tmp_v_xor_i154_3 v_conv3_i155_3 v_xor_i154_3 8;
vpc v_conv3_i155_3@uint8 v_conv3_i155_3@uint32;
(*   %conv4.i156.3 = zext i8 %conv5.i158.2 to i32 *)
cast v_conv4_i156_3@uint32 v_conv5_i158_2@uint8;
(*   %shr.i157.3 = ashr i32 %conv4.i156.3, 1 *)
(* You may need to modify here *)
split v_shr_i157_3 tmp_to_be_used v_conv4_i156_3 1;
(*   %conv5.i158.3 = trunc i32 %shr.i157.3 to i8 *)
split tmp_v_shr_i157_3 v_conv5_i158_3 v_shr_i157_3 8;
vpc v_conv5_i158_3@uint8 v_conv5_i158_3@uint32;
(*   %conv6.i159.3 = zext i8 %conv7.i161.2 to i32 *)
cast v_conv6_i159_3@uint32 v_conv7_i161_2@uint8;
(*   %shl.i160.3 = shl i32 %conv6.i159.3, 1 *)
shls discard_108 v_shl_i160_3 v_conv6_i159_3 1;
(*   %conv7.i161.3 = trunc i32 %shl.i160.3 to i8 *)
split tmp_v_shl_i160_3 v_conv7_i161_3 v_shl_i160_3 8;
vpc v_conv7_i161_3@uint8 v_conv7_i161_3@uint32;
(*   %conv.i149.4 = zext i8 %conv5.i158.3 to i32 *)
cast v_conv_i149_4@uint32 v_conv5_i158_3@uint8;
(*   %and.i150.4 = and i32 %conv.i149.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i150_4 v_conv_i149_4 (0x1)@uint32;
(*   %conv1.i151.4 = zext i8 %conv7.i161.3 to i32 *)
cast v_conv1_i151_4@uint32 v_conv7_i161_3@uint8;
(*   %mul.i152.4 = mul nsw i32 %and.i150.4, %conv1.i151.4 *)
mul v_mul_i152_4 v_and_i150_4 v_conv1_i151_4;
(*   %conv2.i153.4 = zext i8 %conv3.i155.3 to i32 *)
cast v_conv2_i153_4@uint32 v_conv3_i155_3@uint8;
(*   %xor.i154.4 = xor i32 %conv2.i153.4, %mul.i152.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i154_4 v_conv2_i153_4 v_mul_i152_4;
(*   %conv3.i155.4 = trunc i32 %xor.i154.4 to i8 *)
split tmp_v_xor_i154_4 v_conv3_i155_4 v_xor_i154_4 8;
vpc v_conv3_i155_4@uint8 v_conv3_i155_4@uint32;
(*   %conv4.i156.4 = zext i8 %conv5.i158.3 to i32 *)
cast v_conv4_i156_4@uint32 v_conv5_i158_3@uint8;
(*   %shr.i157.4 = ashr i32 %conv4.i156.4, 1 *)
(* You may need to modify here *)
split v_shr_i157_4 tmp_to_be_used v_conv4_i156_4 1;
(*   %conv5.i158.4 = trunc i32 %shr.i157.4 to i8 *)
split tmp_v_shr_i157_4 v_conv5_i158_4 v_shr_i157_4 8;
vpc v_conv5_i158_4@uint8 v_conv5_i158_4@uint32;
(*   %conv6.i159.4 = zext i8 %conv7.i161.3 to i32 *)
cast v_conv6_i159_4@uint32 v_conv7_i161_3@uint8;
(*   %shl.i160.4 = shl i32 %conv6.i159.4, 1 *)
shls discard_109 v_shl_i160_4 v_conv6_i159_4 1;
(*   %conv7.i161.4 = trunc i32 %shl.i160.4 to i8 *)
split tmp_v_shl_i160_4 v_conv7_i161_4 v_shl_i160_4 8;
vpc v_conv7_i161_4@uint8 v_conv7_i161_4@uint32;
(*   %conv.i149.5 = zext i8 %conv5.i158.4 to i32 *)
cast v_conv_i149_5@uint32 v_conv5_i158_4@uint8;
(*   %and.i150.5 = and i32 %conv.i149.5, 1 *)
(* You may need to modify here *)
and uint32 v_and_i150_5 v_conv_i149_5 (0x1)@uint32;
(*   %conv1.i151.5 = zext i8 %conv7.i161.4 to i32 *)
cast v_conv1_i151_5@uint32 v_conv7_i161_4@uint8;
(*   %mul.i152.5 = mul nsw i32 %and.i150.5, %conv1.i151.5 *)
mul v_mul_i152_5 v_and_i150_5 v_conv1_i151_5;
(*   %conv2.i153.5 = zext i8 %conv3.i155.4 to i32 *)
cast v_conv2_i153_5@uint32 v_conv3_i155_4@uint8;
(*   %xor.i154.5 = xor i32 %conv2.i153.5, %mul.i152.5 *)
(* You may need to modify here *)
xor uint32 v_xor_i154_5 v_conv2_i153_5 v_mul_i152_5;
(*   %conv3.i155.5 = trunc i32 %xor.i154.5 to i8 *)
split tmp_v_xor_i154_5 v_conv3_i155_5 v_xor_i154_5 8;
vpc v_conv3_i155_5@uint8 v_conv3_i155_5@uint32;
(*   %conv4.i156.5 = zext i8 %conv5.i158.4 to i32 *)
cast v_conv4_i156_5@uint32 v_conv5_i158_4@uint8;
(*   %shr.i157.5 = ashr i32 %conv4.i156.5, 1 *)
(* You may need to modify here *)
split v_shr_i157_5 tmp_to_be_used v_conv4_i156_5 1;
(*   %conv5.i158.5 = trunc i32 %shr.i157.5 to i8 *)
split tmp_v_shr_i157_5 v_conv5_i158_5 v_shr_i157_5 8;
vpc v_conv5_i158_5@uint8 v_conv5_i158_5@uint32;
(*   %conv6.i159.5 = zext i8 %conv7.i161.4 to i32 *)
cast v_conv6_i159_5@uint32 v_conv7_i161_4@uint8;
(*   %shl.i160.5 = shl i32 %conv6.i159.5, 1 *)
shls discard_110 v_shl_i160_5 v_conv6_i159_5 1;
(*   %conv7.i161.5 = trunc i32 %shl.i160.5 to i8 *)
split tmp_v_shl_i160_5 v_conv7_i161_5 v_shl_i160_5 8;
vpc v_conv7_i161_5@uint8 v_conv7_i161_5@uint32;
(*   %conv.i149.6 = zext i8 %conv5.i158.5 to i32 *)
cast v_conv_i149_6@uint32 v_conv5_i158_5@uint8;
(*   %and.i150.6 = and i32 %conv.i149.6, 1 *)
(* You may need to modify here *)
and uint32 v_and_i150_6 v_conv_i149_6 (0x1)@uint32;
(*   %conv1.i151.6 = zext i8 %conv7.i161.5 to i32 *)
cast v_conv1_i151_6@uint32 v_conv7_i161_5@uint8;
(*   %mul.i152.6 = mul nsw i32 %and.i150.6, %conv1.i151.6 *)
mul v_mul_i152_6 v_and_i150_6 v_conv1_i151_6;
(*   %conv2.i153.6 = zext i8 %conv3.i155.5 to i32 *)
cast v_conv2_i153_6@uint32 v_conv3_i155_5@uint8;
(*   %xor.i154.6 = xor i32 %conv2.i153.6, %mul.i152.6 *)
(* You may need to modify here *)
xor uint32 v_xor_i154_6 v_conv2_i153_6 v_mul_i152_6;
(*   %conv3.i155.6 = trunc i32 %xor.i154.6 to i8 *)
split tmp_v_xor_i154_6 v_conv3_i155_6 v_xor_i154_6 8;
vpc v_conv3_i155_6@uint8 v_conv3_i155_6@uint32;
(*   %conv4.i156.6 = zext i8 %conv5.i158.5 to i32 *)
cast v_conv4_i156_6@uint32 v_conv5_i158_5@uint8;
(*   %shr.i157.6 = ashr i32 %conv4.i156.6, 1 *)
(* You may need to modify here *)
split v_shr_i157_6 tmp_to_be_used v_conv4_i156_6 1;
(*   %conv5.i158.6 = trunc i32 %shr.i157.6 to i8 *)
split tmp_v_shr_i157_6 v_conv5_i158_6 v_shr_i157_6 8;
vpc v_conv5_i158_6@uint8 v_conv5_i158_6@uint32;
(*   %conv6.i159.6 = zext i8 %conv7.i161.5 to i32 *)
cast v_conv6_i159_6@uint32 v_conv7_i161_5@uint8;
(*   %shl.i160.6 = shl i32 %conv6.i159.6, 1 *)
shls discard_111 v_shl_i160_6 v_conv6_i159_6 1;
(*   %conv7.i161.6 = trunc i32 %shl.i160.6 to i8 *)
split tmp_v_shl_i160_6 v_conv7_i161_6 v_shl_i160_6 8;
vpc v_conv7_i161_6@uint8 v_conv7_i161_6@uint32;
(*   %conv.i149.7 = zext i8 %conv5.i158.6 to i32 *)
cast v_conv_i149_7@uint32 v_conv5_i158_6@uint8;
(*   %and.i150.7 = and i32 %conv.i149.7, 1 *)
(* You may need to modify here *)
and uint32 v_and_i150_7 v_conv_i149_7 (0x1)@uint32;
(*   %conv1.i151.7 = zext i8 %conv7.i161.6 to i32 *)
cast v_conv1_i151_7@uint32 v_conv7_i161_6@uint8;
(*   %mul.i152.7 = mul nsw i32 %and.i150.7, %conv1.i151.7 *)
mul v_mul_i152_7 v_and_i150_7 v_conv1_i151_7;
(*   %conv2.i153.7 = zext i8 %conv3.i155.6 to i32 *)
cast v_conv2_i153_7@uint32 v_conv3_i155_6@uint8;
(*   %xor.i154.7 = xor i32 %conv2.i153.7, %mul.i152.7 *)
(* You may need to modify here *)
xor uint32 v_xor_i154_7 v_conv2_i153_7 v_mul_i152_7;
(*   %conv3.i155.7 = trunc i32 %xor.i154.7 to i8 *)
split tmp_v_xor_i154_7 v_conv3_i155_7 v_xor_i154_7 8;
vpc v_conv3_i155_7@uint8 v_conv3_i155_7@uint32;
(*   store i8 %conv3.i155.7, i8* %AB, align 1 *)
mov AB_0 v_conv3_i155_7;
(*   %77 = load i8, i8* %c, align 1 *)
mov v77 c_0;
(*   %scevgep.1 = getelementptr i8, i8* %c, i64 1 *)
(*   %78 = load i8, i8* %scevgep.1, align 1 *)
mov v78 c_1;
(*   %conv.i.i.1 = zext i8 %78 to i32 *)
cast v_conv_i_i_1@uint32 v78@uint8;
(*   %conv1.i.i.1 = zext i8 %77 to i32 *)
cast v_conv1_i_i_1@uint32 v77@uint8;
(*   %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_1 v_conv1_i_i_1 v_conv_i_i_1;
(*   %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8 *)
split tmp_v_xor_i_i_1 v_conv2_i_i_1 v_xor_i_i_1 8;
vpc v_conv2_i_i_1@uint8 v_conv2_i_i_1@uint32;
(*   %scevgep.2 = getelementptr i8, i8* %c, i64 2 *)
(*   %79 = load i8, i8* %scevgep.2, align 1 *)
mov v79 c_2;
(*   %conv.i.i.2 = zext i8 %79 to i32 *)
cast v_conv_i_i_2@uint32 v79@uint8;
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


(* Outputs *)

mov _ AB_0@uint8;
mov _ C_0@uint8;


{
  true
  &&
  true
}

