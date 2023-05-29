proc main (uint8 a_0, uint8 a_1, uint8 a_2, uint8 a_3, uint8 b_0, uint8 b_1, uint8 b_2, uint8 b_3, uint8 r_1, uint8 r_2, uint8 r_3, uint8 r_6, uint8 r_7, uint8 r_11) =
{
  true
  &&
  true
}



(*   %s = alloca [16 x i8], align 16 *)
(*   %p0 = alloca [16 x i8], align 16 *)
(*   %p1 = alloca [16 x i8], align 16 *)
(*   %z = alloca [16 x i8], align 16 *)
(*   %scevgep53 = getelementptr i8, i8* %r, i64 1 *)
(*   %0 = load i8, i8* %scevgep53, align 1 *)
mov v0 r_1;
(*   %scevgep54 = getelementptr i8, i8* %r, i64 4 *)
(*   store i8 %0, i8* %scevgep54, align 1 *)
mov r_4 v0;
(*   %scevgep53.1 = getelementptr i8, i8* %r, i64 2 *)
(*   %1 = load i8, i8* %scevgep53.1, align 1 *)
mov v1 r_2;
(*   %scevgep54.1 = getelementptr i8, i8* %r, i64 8 *)
(*   store i8 %1, i8* %scevgep54.1, align 1 *)
mov r_8 v1;
(*   %scevgep53.2 = getelementptr i8, i8* %r, i64 3 *)
(*   %2 = load i8, i8* %scevgep53.2, align 1 *)
mov v2 r_3;
(*   %scevgep54.2 = getelementptr i8, i8* %r, i64 12 *)
(*   store i8 %2, i8* %scevgep54.2, align 1 *)
mov r_12 v2;
(*   %scevgep50 = getelementptr i8, i8* %r, i64 5 *)
(*   %scevgep53.1882 = getelementptr i8, i8* %scevgep50, i64 1 *)
(*   %3 = load i8, i8* %scevgep53.1882, align 1 *)
mov v3 r_6;
(*   %scevgep54.1883 = getelementptr i8, i8* %scevgep50, i64 4 *)
(*   store i8 %3, i8* %scevgep54.1883, align 1 *)
mov r_9 v3;
(*   %scevgep53.1.1 = getelementptr i8, i8* %scevgep50, i64 2 *)
(*   %4 = load i8, i8* %scevgep53.1.1, align 1 *)
mov v4 r_7;
(*   %scevgep54.1.1 = getelementptr i8, i8* %scevgep50, i64 8 *)
(*   store i8 %4, i8* %scevgep54.1.1, align 1 *)
mov r_13 v4;
(*   %scevgep50.1 = getelementptr i8, i8* %scevgep50, i64 5 *)
(*   %scevgep53.2888 = getelementptr i8, i8* %scevgep50.1, i64 1 *)
(*   %5 = load i8, i8* %scevgep53.2888, align 1 *)
mov v5 r_11;
(*   %scevgep54.2889 = getelementptr i8, i8* %scevgep50.1, i64 4 *)
(*   store i8 %5, i8* %scevgep54.2889, align 1 *)
mov r_14 v5;
(*   %arrayidx22.1 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %6 = load i8, i8* %arrayidx22.1, align 1 *)
mov v6 b_1;
(*   %conv.1 = zext i8 %6 to i32 *)
cast v_conv_1@uint32 v6@uint8;
(*   %arrayidx26.1 = getelementptr inbounds i8, i8* %r, i64 1 *)
(*   %7 = load i8, i8* %arrayidx26.1, align 1 *)
mov v7 r_1;
(*   %conv27.1 = zext i8 %7 to i32 *)
cast v_conv27_1@uint32 v7@uint8;
(*   %xor.1 = xor i32 %conv.1, %conv27.1 *)
(* You may need to modify here *)
xor uint32 v_xor_1 v_conv_1 v_conv27_1;
(*   %conv28.1 = trunc i32 %xor.1 to i8 *)
split tmp_v_xor_1 v_conv28_1 v_xor_1 8;
vpc v_conv28_1@uint8 v_conv28_1@uint32;
(*   %arrayidx32.1 = getelementptr inbounds [16 x i8], [16 x i8]* %s, i64 0, i64 1 *)
(*   store i8 %conv28.1, i8* %arrayidx32.1, align 1 *)
mov s_1 v_conv28_1;
(*   %8 = load i8, i8* %a, align 1 *)
mov v8 a_0;
(*   %conv35.1 = zext i8 %8 to i32 *)
cast v_conv35_1@uint32 v8@uint8;
(*   %xor36.1 = xor i32 %conv35.1, 1 *)
(* You may need to modify here *)
xor uint32 v_xor36_1 v_conv35_1 (0x1)@uint32;
(*   %conv37.1 = trunc i32 %xor36.1 to i8 *)
split tmp_v_xor36_1 v_conv37_1 v_xor36_1 8;
vpc v_conv37_1@uint8 v_conv37_1@uint32;
(*   %arrayidx41.1 = getelementptr inbounds i8, i8* %r, i64 1 *)
(*   %9 = load i8, i8* %arrayidx41.1, align 1 *)
mov v9 r_1;
(*   %conv.i.1123 = zext i8 %9 to i32 *)
cast v_conv_i_1123@uint32 v9@uint8;
(*   %and.i.1124 = and i32 %conv.i.1123, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1124 v_conv_i_1123 (0x1)@uint32;
(*   %conv1.i.1125 = zext i8 %conv37.1 to i32 *)
cast v_conv1_i_1125@uint32 v_conv37_1@uint8;
(*   %mul.i.1126 = mul nsw i32 %and.i.1124, %conv1.i.1125 *)
mul v_mul_i_1126 v_and_i_1124 v_conv1_i_1125;
(*   %conv3.i.1127 = trunc i32 %mul.i.1126 to i8 *)
split tmp_v_mul_i_1126 v_conv3_i_1127 v_mul_i_1126 8;
vpc v_conv3_i_1127@uint8 v_conv3_i_1127@uint32;
(*   %conv4.i.1128 = zext i8 %9 to i32 *)
cast v_conv4_i_1128@uint32 v9@uint8;
(*   %shr.i.1129 = ashr i32 %conv4.i.1128, 1 *)
(* You may need to modify here *)
split v_shr_i_1129 tmp_to_be_used v_conv4_i_1128 1;
(*   %conv5.i.1130 = trunc i32 %shr.i.1129 to i8 *)
split tmp_v_shr_i_1129 v_conv5_i_1130 v_shr_i_1129 8;
vpc v_conv5_i_1130@uint8 v_conv5_i_1130@uint32;
(*   %conv6.i.1131 = zext i8 %conv37.1 to i32 *)
cast v_conv6_i_1131@uint32 v_conv37_1@uint8;
(*   %shl.i.1132 = shl i32 %conv6.i.1131, 1 *)
shls discard_0 v_shl_i_1132 v_conv6_i_1131 1;
(*   %conv7.i.1133 = trunc i32 %shl.i.1132 to i8 *)
split tmp_v_shl_i_1132 v_conv7_i_1133 v_shl_i_1132 8;
vpc v_conv7_i_1133@uint8 v_conv7_i_1133@uint32;
(*   %conv.i.1.1 = zext i8 %conv5.i.1130 to i32 *)
cast v_conv_i_1_1@uint32 v_conv5_i_1130@uint8;
(*   %and.i.1.1 = and i32 %conv.i.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_1 v_conv_i_1_1 (0x1)@uint32;
(*   %conv1.i.1.1 = zext i8 %conv7.i.1133 to i32 *)
cast v_conv1_i_1_1@uint32 v_conv7_i_1133@uint8;
(*   %mul.i.1.1 = mul nsw i32 %and.i.1.1, %conv1.i.1.1 *)
mul v_mul_i_1_1 v_and_i_1_1 v_conv1_i_1_1;
(*   %conv2.i.1.1 = zext i8 %conv3.i.1127 to i32 *)
cast v_conv2_i_1_1@uint32 v_conv3_i_1127@uint8;
(*   %xor.i.1.1 = xor i32 %conv2.i.1.1, %mul.i.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_1 v_conv2_i_1_1 v_mul_i_1_1;
(*   %conv3.i.1.1 = trunc i32 %xor.i.1.1 to i8 *)
split tmp_v_xor_i_1_1 v_conv3_i_1_1 v_xor_i_1_1 8;
vpc v_conv3_i_1_1@uint8 v_conv3_i_1_1@uint32;
(*   %conv4.i.1.1 = zext i8 %conv5.i.1130 to i32 *)
cast v_conv4_i_1_1@uint32 v_conv5_i_1130@uint8;
(*   %shr.i.1.1 = ashr i32 %conv4.i.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_1_1 tmp_to_be_used v_conv4_i_1_1 1;
(*   %conv5.i.1.1 = trunc i32 %shr.i.1.1 to i8 *)
split tmp_v_shr_i_1_1 v_conv5_i_1_1 v_shr_i_1_1 8;
vpc v_conv5_i_1_1@uint8 v_conv5_i_1_1@uint32;
(*   %conv6.i.1.1 = zext i8 %conv7.i.1133 to i32 *)
cast v_conv6_i_1_1@uint32 v_conv7_i_1133@uint8;
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
(*   %arrayidx45.1 = getelementptr inbounds [16 x i8], [16 x i8]* %p0, i64 0, i64 1 *)
(*   store i8 %conv3.i.7.1, i8* %arrayidx45.1, align 1 *)
mov p0_1 v_conv3_i_7_1;
(*   %10 = load i8, i8* %a, align 1 *)
mov v10 a_0;
(*   %arrayidx51.1 = getelementptr inbounds [16 x i8], [16 x i8]* %s, i64 0, i64 1 *)
(*   %11 = load i8, i8* %arrayidx51.1, align 1 *)
mov v11 s_1;
(*   %conv.i127.1134 = zext i8 %11 to i32 *)
cast v_conv_i127_1134@uint32 v11@uint8;
(*   %and.i128.1135 = and i32 %conv.i127.1134, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1135 v_conv_i127_1134 (0x1)@uint32;
(*   %conv1.i129.1136 = zext i8 %10 to i32 *)
cast v_conv1_i129_1136@uint32 v10@uint8;
(*   %mul.i130.1137 = mul nsw i32 %and.i128.1135, %conv1.i129.1136 *)
mul v_mul_i130_1137 v_and_i128_1135 v_conv1_i129_1136;
(*   %conv3.i133.1138 = trunc i32 %mul.i130.1137 to i8 *)
split tmp_v_mul_i130_1137 v_conv3_i133_1138 v_mul_i130_1137 8;
vpc v_conv3_i133_1138@uint8 v_conv3_i133_1138@uint32;
(*   %conv4.i134.1139 = zext i8 %11 to i32 *)
cast v_conv4_i134_1139@uint32 v11@uint8;
(*   %shr.i135.1140 = ashr i32 %conv4.i134.1139, 1 *)
(* You may need to modify here *)
split v_shr_i135_1140 tmp_to_be_used v_conv4_i134_1139 1;
(*   %conv5.i136.1141 = trunc i32 %shr.i135.1140 to i8 *)
split tmp_v_shr_i135_1140 v_conv5_i136_1141 v_shr_i135_1140 8;
vpc v_conv5_i136_1141@uint8 v_conv5_i136_1141@uint32;
(*   %conv6.i137.1142 = zext i8 %10 to i32 *)
cast v_conv6_i137_1142@uint32 v10@uint8;
(*   %shl.i138.1143 = shl i32 %conv6.i137.1142, 1 *)
shls discard_7 v_shl_i138_1143 v_conv6_i137_1142 1;
(*   %conv7.i139.1144 = trunc i32 %shl.i138.1143 to i8 *)
split tmp_v_shl_i138_1143 v_conv7_i139_1144 v_shl_i138_1143 8;
vpc v_conv7_i139_1144@uint8 v_conv7_i139_1144@uint32;
(*   %conv.i127.1.1 = zext i8 %conv5.i136.1141 to i32 *)
cast v_conv_i127_1_1@uint32 v_conv5_i136_1141@uint8;
(*   %and.i128.1.1 = and i32 %conv.i127.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1_1 v_conv_i127_1_1 (0x1)@uint32;
(*   %conv1.i129.1.1 = zext i8 %conv7.i139.1144 to i32 *)
cast v_conv1_i129_1_1@uint32 v_conv7_i139_1144@uint8;
(*   %mul.i130.1.1 = mul nsw i32 %and.i128.1.1, %conv1.i129.1.1 *)
mul v_mul_i130_1_1 v_and_i128_1_1 v_conv1_i129_1_1;
(*   %conv2.i131.1.1 = zext i8 %conv3.i133.1138 to i32 *)
cast v_conv2_i131_1_1@uint32 v_conv3_i133_1138@uint8;
(*   %xor.i132.1.1 = xor i32 %conv2.i131.1.1, %mul.i130.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_1_1 v_conv2_i131_1_1 v_mul_i130_1_1;
(*   %conv3.i133.1.1 = trunc i32 %xor.i132.1.1 to i8 *)
split tmp_v_xor_i132_1_1 v_conv3_i133_1_1 v_xor_i132_1_1 8;
vpc v_conv3_i133_1_1@uint8 v_conv3_i133_1_1@uint32;
(*   %conv4.i134.1.1 = zext i8 %conv5.i136.1141 to i32 *)
cast v_conv4_i134_1_1@uint32 v_conv5_i136_1141@uint8;
(*   %shr.i135.1.1 = ashr i32 %conv4.i134.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i135_1_1 tmp_to_be_used v_conv4_i134_1_1 1;
(*   %conv5.i136.1.1 = trunc i32 %shr.i135.1.1 to i8 *)
split tmp_v_shr_i135_1_1 v_conv5_i136_1_1 v_shr_i135_1_1 8;
vpc v_conv5_i136_1_1@uint8 v_conv5_i136_1_1@uint32;
(*   %conv6.i137.1.1 = zext i8 %conv7.i139.1144 to i32 *)
cast v_conv6_i137_1_1@uint32 v_conv7_i139_1144@uint8;
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
(*   %arrayidx56.1 = getelementptr inbounds [16 x i8], [16 x i8]* %p1, i64 0, i64 1 *)
(*   store i8 %conv3.i133.7.1, i8* %arrayidx56.1, align 1 *)
mov p1_1 v_conv3_i133_7_1;
(*   %arrayidx60.1 = getelementptr inbounds [16 x i8], [16 x i8]* %p0, i64 0, i64 1 *)
(*   %12 = load i8, i8* %arrayidx60.1, align 1 *)
mov v12 p0_1;
(*   %conv61.1 = zext i8 %12 to i32 *)
cast v_conv61_1@uint32 v12@uint8;
(*   %arrayidx65.1 = getelementptr inbounds [16 x i8], [16 x i8]* %p1, i64 0, i64 1 *)
(*   %13 = load i8, i8* %arrayidx65.1, align 1 *)
mov v13 p1_1;
(*   %conv66.1 = zext i8 %13 to i32 *)
cast v_conv66_1@uint32 v13@uint8;
(*   %xor67.1 = xor i32 %conv61.1, %conv66.1 *)
(* You may need to modify here *)
xor uint32 v_xor67_1 v_conv61_1 v_conv66_1;
(*   %conv68.1 = trunc i32 %xor67.1 to i8 *)
split tmp_v_xor67_1 v_conv68_1 v_xor67_1 8;
vpc v_conv68_1@uint8 v_conv68_1@uint32;
(*   %arrayidx72.1 = getelementptr inbounds [16 x i8], [16 x i8]* %z, i64 0, i64 1 *)
(*   store i8 %conv68.1, i8* %arrayidx72.1, align 1 *)
mov z_1 v_conv68_1;
(*   %arrayidx22.2 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %14 = load i8, i8* %arrayidx22.2, align 1 *)
mov v14 b_2;
(*   %conv.2 = zext i8 %14 to i32 *)
cast v_conv_2@uint32 v14@uint8;
(*   %arrayidx26.2 = getelementptr inbounds i8, i8* %r, i64 2 *)
(*   %15 = load i8, i8* %arrayidx26.2, align 1 *)
mov v15 r_2;
(*   %conv27.2 = zext i8 %15 to i32 *)
cast v_conv27_2@uint32 v15@uint8;
(*   %xor.2 = xor i32 %conv.2, %conv27.2 *)
(* You may need to modify here *)
xor uint32 v_xor_2 v_conv_2 v_conv27_2;
(*   %conv28.2 = trunc i32 %xor.2 to i8 *)
split tmp_v_xor_2 v_conv28_2 v_xor_2 8;
vpc v_conv28_2@uint8 v_conv28_2@uint32;
(*   %arrayidx32.2 = getelementptr inbounds [16 x i8], [16 x i8]* %s, i64 0, i64 2 *)
(*   store i8 %conv28.2, i8* %arrayidx32.2, align 1 *)
mov s_2 v_conv28_2;
(*   %16 = load i8, i8* %a, align 1 *)
mov v16 a_0;
(*   %conv35.2 = zext i8 %16 to i32 *)
cast v_conv35_2@uint32 v16@uint8;
(*   %xor36.2 = xor i32 %conv35.2, 1 *)
(* You may need to modify here *)
xor uint32 v_xor36_2 v_conv35_2 (0x1)@uint32;
(*   %conv37.2 = trunc i32 %xor36.2 to i8 *)
split tmp_v_xor36_2 v_conv37_2 v_xor36_2 8;
vpc v_conv37_2@uint8 v_conv37_2@uint32;
(*   %arrayidx41.2 = getelementptr inbounds i8, i8* %r, i64 2 *)
(*   %17 = load i8, i8* %arrayidx41.2, align 1 *)
mov v17 r_2;
(*   %conv.i.2145 = zext i8 %17 to i32 *)
cast v_conv_i_2145@uint32 v17@uint8;
(*   %and.i.2146 = and i32 %conv.i.2145, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2146 v_conv_i_2145 (0x1)@uint32;
(*   %conv1.i.2147 = zext i8 %conv37.2 to i32 *)
cast v_conv1_i_2147@uint32 v_conv37_2@uint8;
(*   %mul.i.2148 = mul nsw i32 %and.i.2146, %conv1.i.2147 *)
mul v_mul_i_2148 v_and_i_2146 v_conv1_i_2147;
(*   %conv3.i.2149 = trunc i32 %mul.i.2148 to i8 *)
split tmp_v_mul_i_2148 v_conv3_i_2149 v_mul_i_2148 8;
vpc v_conv3_i_2149@uint8 v_conv3_i_2149@uint32;
(*   %conv4.i.2150 = zext i8 %17 to i32 *)
cast v_conv4_i_2150@uint32 v17@uint8;
(*   %shr.i.2151 = ashr i32 %conv4.i.2150, 1 *)
(* You may need to modify here *)
split v_shr_i_2151 tmp_to_be_used v_conv4_i_2150 1;
(*   %conv5.i.2152 = trunc i32 %shr.i.2151 to i8 *)
split tmp_v_shr_i_2151 v_conv5_i_2152 v_shr_i_2151 8;
vpc v_conv5_i_2152@uint8 v_conv5_i_2152@uint32;
(*   %conv6.i.2153 = zext i8 %conv37.2 to i32 *)
cast v_conv6_i_2153@uint32 v_conv37_2@uint8;
(*   %shl.i.2154 = shl i32 %conv6.i.2153, 1 *)
shls discard_14 v_shl_i_2154 v_conv6_i_2153 1;
(*   %conv7.i.2155 = trunc i32 %shl.i.2154 to i8 *)
split tmp_v_shl_i_2154 v_conv7_i_2155 v_shl_i_2154 8;
vpc v_conv7_i_2155@uint8 v_conv7_i_2155@uint32;
(*   %conv.i.1.2 = zext i8 %conv5.i.2152 to i32 *)
cast v_conv_i_1_2@uint32 v_conv5_i_2152@uint8;
(*   %and.i.1.2 = and i32 %conv.i.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_2 v_conv_i_1_2 (0x1)@uint32;
(*   %conv1.i.1.2 = zext i8 %conv7.i.2155 to i32 *)
cast v_conv1_i_1_2@uint32 v_conv7_i_2155@uint8;
(*   %mul.i.1.2 = mul nsw i32 %and.i.1.2, %conv1.i.1.2 *)
mul v_mul_i_1_2 v_and_i_1_2 v_conv1_i_1_2;
(*   %conv2.i.1.2 = zext i8 %conv3.i.2149 to i32 *)
cast v_conv2_i_1_2@uint32 v_conv3_i_2149@uint8;
(*   %xor.i.1.2 = xor i32 %conv2.i.1.2, %mul.i.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_2 v_conv2_i_1_2 v_mul_i_1_2;
(*   %conv3.i.1.2 = trunc i32 %xor.i.1.2 to i8 *)
split tmp_v_xor_i_1_2 v_conv3_i_1_2 v_xor_i_1_2 8;
vpc v_conv3_i_1_2@uint8 v_conv3_i_1_2@uint32;
(*   %conv4.i.1.2 = zext i8 %conv5.i.2152 to i32 *)
cast v_conv4_i_1_2@uint32 v_conv5_i_2152@uint8;
(*   %shr.i.1.2 = ashr i32 %conv4.i.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_1_2 tmp_to_be_used v_conv4_i_1_2 1;
(*   %conv5.i.1.2 = trunc i32 %shr.i.1.2 to i8 *)
split tmp_v_shr_i_1_2 v_conv5_i_1_2 v_shr_i_1_2 8;
vpc v_conv5_i_1_2@uint8 v_conv5_i_1_2@uint32;
(*   %conv6.i.1.2 = zext i8 %conv7.i.2155 to i32 *)
cast v_conv6_i_1_2@uint32 v_conv7_i_2155@uint8;
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
(*   %arrayidx45.2 = getelementptr inbounds [16 x i8], [16 x i8]* %p0, i64 0, i64 2 *)
(*   store i8 %conv3.i.7.2, i8* %arrayidx45.2, align 1 *)
mov p0_2 v_conv3_i_7_2;
(*   %18 = load i8, i8* %a, align 1 *)
mov v18 a_0;
(*   %arrayidx51.2 = getelementptr inbounds [16 x i8], [16 x i8]* %s, i64 0, i64 2 *)
(*   %19 = load i8, i8* %arrayidx51.2, align 1 *)
mov v19 s_2;
(*   %conv.i127.2156 = zext i8 %19 to i32 *)
cast v_conv_i127_2156@uint32 v19@uint8;
(*   %and.i128.2157 = and i32 %conv.i127.2156, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_2157 v_conv_i127_2156 (0x1)@uint32;
(*   %conv1.i129.2158 = zext i8 %18 to i32 *)
cast v_conv1_i129_2158@uint32 v18@uint8;
(*   %mul.i130.2159 = mul nsw i32 %and.i128.2157, %conv1.i129.2158 *)
mul v_mul_i130_2159 v_and_i128_2157 v_conv1_i129_2158;
(*   %conv3.i133.2160 = trunc i32 %mul.i130.2159 to i8 *)
split tmp_v_mul_i130_2159 v_conv3_i133_2160 v_mul_i130_2159 8;
vpc v_conv3_i133_2160@uint8 v_conv3_i133_2160@uint32;
(*   %conv4.i134.2161 = zext i8 %19 to i32 *)
cast v_conv4_i134_2161@uint32 v19@uint8;
(*   %shr.i135.2162 = ashr i32 %conv4.i134.2161, 1 *)
(* You may need to modify here *)
split v_shr_i135_2162 tmp_to_be_used v_conv4_i134_2161 1;
(*   %conv5.i136.2163 = trunc i32 %shr.i135.2162 to i8 *)
split tmp_v_shr_i135_2162 v_conv5_i136_2163 v_shr_i135_2162 8;
vpc v_conv5_i136_2163@uint8 v_conv5_i136_2163@uint32;
(*   %conv6.i137.2164 = zext i8 %18 to i32 *)
cast v_conv6_i137_2164@uint32 v18@uint8;
(*   %shl.i138.2165 = shl i32 %conv6.i137.2164, 1 *)
shls discard_21 v_shl_i138_2165 v_conv6_i137_2164 1;
(*   %conv7.i139.2166 = trunc i32 %shl.i138.2165 to i8 *)
split tmp_v_shl_i138_2165 v_conv7_i139_2166 v_shl_i138_2165 8;
vpc v_conv7_i139_2166@uint8 v_conv7_i139_2166@uint32;
(*   %conv.i127.1.2 = zext i8 %conv5.i136.2163 to i32 *)
cast v_conv_i127_1_2@uint32 v_conv5_i136_2163@uint8;
(*   %and.i128.1.2 = and i32 %conv.i127.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1_2 v_conv_i127_1_2 (0x1)@uint32;
(*   %conv1.i129.1.2 = zext i8 %conv7.i139.2166 to i32 *)
cast v_conv1_i129_1_2@uint32 v_conv7_i139_2166@uint8;
(*   %mul.i130.1.2 = mul nsw i32 %and.i128.1.2, %conv1.i129.1.2 *)
mul v_mul_i130_1_2 v_and_i128_1_2 v_conv1_i129_1_2;
(*   %conv2.i131.1.2 = zext i8 %conv3.i133.2160 to i32 *)
cast v_conv2_i131_1_2@uint32 v_conv3_i133_2160@uint8;
(*   %xor.i132.1.2 = xor i32 %conv2.i131.1.2, %mul.i130.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_1_2 v_conv2_i131_1_2 v_mul_i130_1_2;
(*   %conv3.i133.1.2 = trunc i32 %xor.i132.1.2 to i8 *)
split tmp_v_xor_i132_1_2 v_conv3_i133_1_2 v_xor_i132_1_2 8;
vpc v_conv3_i133_1_2@uint8 v_conv3_i133_1_2@uint32;
(*   %conv4.i134.1.2 = zext i8 %conv5.i136.2163 to i32 *)
cast v_conv4_i134_1_2@uint32 v_conv5_i136_2163@uint8;
(*   %shr.i135.1.2 = ashr i32 %conv4.i134.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i135_1_2 tmp_to_be_used v_conv4_i134_1_2 1;
(*   %conv5.i136.1.2 = trunc i32 %shr.i135.1.2 to i8 *)
split tmp_v_shr_i135_1_2 v_conv5_i136_1_2 v_shr_i135_1_2 8;
vpc v_conv5_i136_1_2@uint8 v_conv5_i136_1_2@uint32;
(*   %conv6.i137.1.2 = zext i8 %conv7.i139.2166 to i32 *)
cast v_conv6_i137_1_2@uint32 v_conv7_i139_2166@uint8;
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
(*   %arrayidx56.2 = getelementptr inbounds [16 x i8], [16 x i8]* %p1, i64 0, i64 2 *)
(*   store i8 %conv3.i133.7.2, i8* %arrayidx56.2, align 1 *)
mov p1_2 v_conv3_i133_7_2;
(*   %arrayidx60.2 = getelementptr inbounds [16 x i8], [16 x i8]* %p0, i64 0, i64 2 *)
(*   %20 = load i8, i8* %arrayidx60.2, align 1 *)
mov v20 p0_2;
(*   %conv61.2 = zext i8 %20 to i32 *)
cast v_conv61_2@uint32 v20@uint8;
(*   %arrayidx65.2 = getelementptr inbounds [16 x i8], [16 x i8]* %p1, i64 0, i64 2 *)
(*   %21 = load i8, i8* %arrayidx65.2, align 1 *)
mov v21 p1_2;
(*   %conv66.2 = zext i8 %21 to i32 *)
cast v_conv66_2@uint32 v21@uint8;
(*   %xor67.2 = xor i32 %conv61.2, %conv66.2 *)
(* You may need to modify here *)
xor uint32 v_xor67_2 v_conv61_2 v_conv66_2;
(*   %conv68.2 = trunc i32 %xor67.2 to i8 *)
split tmp_v_xor67_2 v_conv68_2 v_xor67_2 8;
vpc v_conv68_2@uint8 v_conv68_2@uint32;
(*   %arrayidx72.2 = getelementptr inbounds [16 x i8], [16 x i8]* %z, i64 0, i64 2 *)
(*   store i8 %conv68.2, i8* %arrayidx72.2, align 1 *)
mov z_2 v_conv68_2;
(*   %arrayidx22.3 = getelementptr inbounds i8, i8* %b, i64 3 *)
(*   %22 = load i8, i8* %arrayidx22.3, align 1 *)
mov v22 b_3;
(*   %conv.3 = zext i8 %22 to i32 *)
cast v_conv_3@uint32 v22@uint8;
(*   %arrayidx26.3 = getelementptr inbounds i8, i8* %r, i64 3 *)
(*   %23 = load i8, i8* %arrayidx26.3, align 1 *)
mov v23 r_3;
(*   %conv27.3 = zext i8 %23 to i32 *)
cast v_conv27_3@uint32 v23@uint8;
(*   %xor.3 = xor i32 %conv.3, %conv27.3 *)
(* You may need to modify here *)
xor uint32 v_xor_3 v_conv_3 v_conv27_3;
(*   %conv28.3 = trunc i32 %xor.3 to i8 *)
split tmp_v_xor_3 v_conv28_3 v_xor_3 8;
vpc v_conv28_3@uint8 v_conv28_3@uint32;
(*   %arrayidx32.3 = getelementptr inbounds [16 x i8], [16 x i8]* %s, i64 0, i64 3 *)
(*   store i8 %conv28.3, i8* %arrayidx32.3, align 1 *)
mov s_3 v_conv28_3;
(*   %24 = load i8, i8* %a, align 1 *)
mov v24 a_0;
(*   %conv35.3 = zext i8 %24 to i32 *)
cast v_conv35_3@uint32 v24@uint8;
(*   %xor36.3 = xor i32 %conv35.3, 1 *)
(* You may need to modify here *)
xor uint32 v_xor36_3 v_conv35_3 (0x1)@uint32;
(*   %conv37.3 = trunc i32 %xor36.3 to i8 *)
split tmp_v_xor36_3 v_conv37_3 v_xor36_3 8;
vpc v_conv37_3@uint8 v_conv37_3@uint32;
(*   %arrayidx41.3 = getelementptr inbounds i8, i8* %r, i64 3 *)
(*   %25 = load i8, i8* %arrayidx41.3, align 1 *)
mov v25 r_3;
(*   %conv.i.3167 = zext i8 %25 to i32 *)
cast v_conv_i_3167@uint32 v25@uint8;
(*   %and.i.3168 = and i32 %conv.i.3167, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3168 v_conv_i_3167 (0x1)@uint32;
(*   %conv1.i.3169 = zext i8 %conv37.3 to i32 *)
cast v_conv1_i_3169@uint32 v_conv37_3@uint8;
(*   %mul.i.3170 = mul nsw i32 %and.i.3168, %conv1.i.3169 *)
mul v_mul_i_3170 v_and_i_3168 v_conv1_i_3169;
(*   %conv3.i.3171 = trunc i32 %mul.i.3170 to i8 *)
split tmp_v_mul_i_3170 v_conv3_i_3171 v_mul_i_3170 8;
vpc v_conv3_i_3171@uint8 v_conv3_i_3171@uint32;
(*   %conv4.i.3172 = zext i8 %25 to i32 *)
cast v_conv4_i_3172@uint32 v25@uint8;
(*   %shr.i.3173 = ashr i32 %conv4.i.3172, 1 *)
(* You may need to modify here *)
split v_shr_i_3173 tmp_to_be_used v_conv4_i_3172 1;
(*   %conv5.i.3174 = trunc i32 %shr.i.3173 to i8 *)
split tmp_v_shr_i_3173 v_conv5_i_3174 v_shr_i_3173 8;
vpc v_conv5_i_3174@uint8 v_conv5_i_3174@uint32;
(*   %conv6.i.3175 = zext i8 %conv37.3 to i32 *)
cast v_conv6_i_3175@uint32 v_conv37_3@uint8;
(*   %shl.i.3176 = shl i32 %conv6.i.3175, 1 *)
shls discard_28 v_shl_i_3176 v_conv6_i_3175 1;
(*   %conv7.i.3177 = trunc i32 %shl.i.3176 to i8 *)
split tmp_v_shl_i_3176 v_conv7_i_3177 v_shl_i_3176 8;
vpc v_conv7_i_3177@uint8 v_conv7_i_3177@uint32;
(*   %conv.i.1.3 = zext i8 %conv5.i.3174 to i32 *)
cast v_conv_i_1_3@uint32 v_conv5_i_3174@uint8;
(*   %and.i.1.3 = and i32 %conv.i.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_3 v_conv_i_1_3 (0x1)@uint32;
(*   %conv1.i.1.3 = zext i8 %conv7.i.3177 to i32 *)
cast v_conv1_i_1_3@uint32 v_conv7_i_3177@uint8;
(*   %mul.i.1.3 = mul nsw i32 %and.i.1.3, %conv1.i.1.3 *)
mul v_mul_i_1_3 v_and_i_1_3 v_conv1_i_1_3;
(*   %conv2.i.1.3 = zext i8 %conv3.i.3171 to i32 *)
cast v_conv2_i_1_3@uint32 v_conv3_i_3171@uint8;
(*   %xor.i.1.3 = xor i32 %conv2.i.1.3, %mul.i.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_3 v_conv2_i_1_3 v_mul_i_1_3;
(*   %conv3.i.1.3 = trunc i32 %xor.i.1.3 to i8 *)
split tmp_v_xor_i_1_3 v_conv3_i_1_3 v_xor_i_1_3 8;
vpc v_conv3_i_1_3@uint8 v_conv3_i_1_3@uint32;
(*   %conv4.i.1.3 = zext i8 %conv5.i.3174 to i32 *)
cast v_conv4_i_1_3@uint32 v_conv5_i_3174@uint8;
(*   %shr.i.1.3 = ashr i32 %conv4.i.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i_1_3 tmp_to_be_used v_conv4_i_1_3 1;
(*   %conv5.i.1.3 = trunc i32 %shr.i.1.3 to i8 *)
split tmp_v_shr_i_1_3 v_conv5_i_1_3 v_shr_i_1_3 8;
vpc v_conv5_i_1_3@uint8 v_conv5_i_1_3@uint32;
(*   %conv6.i.1.3 = zext i8 %conv7.i.3177 to i32 *)
cast v_conv6_i_1_3@uint32 v_conv7_i_3177@uint8;
(*   %shl.i.1.3 = shl i32 %conv6.i.1.3, 1 *)
shls discard_29 v_shl_i_1_3 v_conv6_i_1_3 1;
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
shls discard_30 v_shl_i_2_3 v_conv6_i_2_3 1;
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
shls discard_31 v_shl_i_3_3 v_conv6_i_3_3 1;
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
shls discard_32 v_shl_i_4_3 v_conv6_i_4_3 1;
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
shls discard_33 v_shl_i_5_3 v_conv6_i_5_3 1;
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
shls discard_34 v_shl_i_6_3 v_conv6_i_6_3 1;
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
(*   %arrayidx45.3 = getelementptr inbounds [16 x i8], [16 x i8]* %p0, i64 0, i64 3 *)
(*   store i8 %conv3.i.7.3, i8* %arrayidx45.3, align 1 *)
mov p0_3 v_conv3_i_7_3;
(*   %26 = load i8, i8* %a, align 1 *)
mov v26 a_0;
(*   %arrayidx51.3 = getelementptr inbounds [16 x i8], [16 x i8]* %s, i64 0, i64 3 *)
(*   %27 = load i8, i8* %arrayidx51.3, align 1 *)
mov v27 s_3;
(*   %conv.i127.3178 = zext i8 %27 to i32 *)
cast v_conv_i127_3178@uint32 v27@uint8;
(*   %and.i128.3179 = and i32 %conv.i127.3178, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_3179 v_conv_i127_3178 (0x1)@uint32;
(*   %conv1.i129.3180 = zext i8 %26 to i32 *)
cast v_conv1_i129_3180@uint32 v26@uint8;
(*   %mul.i130.3181 = mul nsw i32 %and.i128.3179, %conv1.i129.3180 *)
mul v_mul_i130_3181 v_and_i128_3179 v_conv1_i129_3180;
(*   %conv3.i133.3182 = trunc i32 %mul.i130.3181 to i8 *)
split tmp_v_mul_i130_3181 v_conv3_i133_3182 v_mul_i130_3181 8;
vpc v_conv3_i133_3182@uint8 v_conv3_i133_3182@uint32;
(*   %conv4.i134.3183 = zext i8 %27 to i32 *)
cast v_conv4_i134_3183@uint32 v27@uint8;
(*   %shr.i135.3184 = ashr i32 %conv4.i134.3183, 1 *)
(* You may need to modify here *)
split v_shr_i135_3184 tmp_to_be_used v_conv4_i134_3183 1;
(*   %conv5.i136.3185 = trunc i32 %shr.i135.3184 to i8 *)
split tmp_v_shr_i135_3184 v_conv5_i136_3185 v_shr_i135_3184 8;
vpc v_conv5_i136_3185@uint8 v_conv5_i136_3185@uint32;
(*   %conv6.i137.3186 = zext i8 %26 to i32 *)
cast v_conv6_i137_3186@uint32 v26@uint8;
(*   %shl.i138.3187 = shl i32 %conv6.i137.3186, 1 *)
shls discard_35 v_shl_i138_3187 v_conv6_i137_3186 1;
(*   %conv7.i139.3188 = trunc i32 %shl.i138.3187 to i8 *)
split tmp_v_shl_i138_3187 v_conv7_i139_3188 v_shl_i138_3187 8;
vpc v_conv7_i139_3188@uint8 v_conv7_i139_3188@uint32;
(*   %conv.i127.1.3 = zext i8 %conv5.i136.3185 to i32 *)
cast v_conv_i127_1_3@uint32 v_conv5_i136_3185@uint8;
(*   %and.i128.1.3 = and i32 %conv.i127.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1_3 v_conv_i127_1_3 (0x1)@uint32;
(*   %conv1.i129.1.3 = zext i8 %conv7.i139.3188 to i32 *)
cast v_conv1_i129_1_3@uint32 v_conv7_i139_3188@uint8;
(*   %mul.i130.1.3 = mul nsw i32 %and.i128.1.3, %conv1.i129.1.3 *)
mul v_mul_i130_1_3 v_and_i128_1_3 v_conv1_i129_1_3;
(*   %conv2.i131.1.3 = zext i8 %conv3.i133.3182 to i32 *)
cast v_conv2_i131_1_3@uint32 v_conv3_i133_3182@uint8;
(*   %xor.i132.1.3 = xor i32 %conv2.i131.1.3, %mul.i130.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_1_3 v_conv2_i131_1_3 v_mul_i130_1_3;
(*   %conv3.i133.1.3 = trunc i32 %xor.i132.1.3 to i8 *)
split tmp_v_xor_i132_1_3 v_conv3_i133_1_3 v_xor_i132_1_3 8;
vpc v_conv3_i133_1_3@uint8 v_conv3_i133_1_3@uint32;
(*   %conv4.i134.1.3 = zext i8 %conv5.i136.3185 to i32 *)
cast v_conv4_i134_1_3@uint32 v_conv5_i136_3185@uint8;
(*   %shr.i135.1.3 = ashr i32 %conv4.i134.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i135_1_3 tmp_to_be_used v_conv4_i134_1_3 1;
(*   %conv5.i136.1.3 = trunc i32 %shr.i135.1.3 to i8 *)
split tmp_v_shr_i135_1_3 v_conv5_i136_1_3 v_shr_i135_1_3 8;
vpc v_conv5_i136_1_3@uint8 v_conv5_i136_1_3@uint32;
(*   %conv6.i137.1.3 = zext i8 %conv7.i139.3188 to i32 *)
cast v_conv6_i137_1_3@uint32 v_conv7_i139_3188@uint8;
(*   %shl.i138.1.3 = shl i32 %conv6.i137.1.3, 1 *)
shls discard_36 v_shl_i138_1_3 v_conv6_i137_1_3 1;
(*   %conv7.i139.1.3 = trunc i32 %shl.i138.1.3 to i8 *)
split tmp_v_shl_i138_1_3 v_conv7_i139_1_3 v_shl_i138_1_3 8;
vpc v_conv7_i139_1_3@uint8 v_conv7_i139_1_3@uint32;
(*   %conv.i127.2.3 = zext i8 %conv5.i136.1.3 to i32 *)
cast v_conv_i127_2_3@uint32 v_conv5_i136_1_3@uint8;
(*   %and.i128.2.3 = and i32 %conv.i127.2.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_2_3 v_conv_i127_2_3 (0x1)@uint32;
(*   %conv1.i129.2.3 = zext i8 %conv7.i139.1.3 to i32 *)
cast v_conv1_i129_2_3@uint32 v_conv7_i139_1_3@uint8;
(*   %mul.i130.2.3 = mul nsw i32 %and.i128.2.3, %conv1.i129.2.3 *)
mul v_mul_i130_2_3 v_and_i128_2_3 v_conv1_i129_2_3;
(*   %conv2.i131.2.3 = zext i8 %conv3.i133.1.3 to i32 *)
cast v_conv2_i131_2_3@uint32 v_conv3_i133_1_3@uint8;
(*   %xor.i132.2.3 = xor i32 %conv2.i131.2.3, %mul.i130.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_2_3 v_conv2_i131_2_3 v_mul_i130_2_3;
(*   %conv3.i133.2.3 = trunc i32 %xor.i132.2.3 to i8 *)
split tmp_v_xor_i132_2_3 v_conv3_i133_2_3 v_xor_i132_2_3 8;
vpc v_conv3_i133_2_3@uint8 v_conv3_i133_2_3@uint32;
(*   %conv4.i134.2.3 = zext i8 %conv5.i136.1.3 to i32 *)
cast v_conv4_i134_2_3@uint32 v_conv5_i136_1_3@uint8;
(*   %shr.i135.2.3 = ashr i32 %conv4.i134.2.3, 1 *)
(* You may need to modify here *)
split v_shr_i135_2_3 tmp_to_be_used v_conv4_i134_2_3 1;
(*   %conv5.i136.2.3 = trunc i32 %shr.i135.2.3 to i8 *)
split tmp_v_shr_i135_2_3 v_conv5_i136_2_3 v_shr_i135_2_3 8;
vpc v_conv5_i136_2_3@uint8 v_conv5_i136_2_3@uint32;
(*   %conv6.i137.2.3 = zext i8 %conv7.i139.1.3 to i32 *)
cast v_conv6_i137_2_3@uint32 v_conv7_i139_1_3@uint8;
(*   %shl.i138.2.3 = shl i32 %conv6.i137.2.3, 1 *)
shls discard_37 v_shl_i138_2_3 v_conv6_i137_2_3 1;
(*   %conv7.i139.2.3 = trunc i32 %shl.i138.2.3 to i8 *)
split tmp_v_shl_i138_2_3 v_conv7_i139_2_3 v_shl_i138_2_3 8;
vpc v_conv7_i139_2_3@uint8 v_conv7_i139_2_3@uint32;
(*   %conv.i127.3.3 = zext i8 %conv5.i136.2.3 to i32 *)
cast v_conv_i127_3_3@uint32 v_conv5_i136_2_3@uint8;
(*   %and.i128.3.3 = and i32 %conv.i127.3.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_3_3 v_conv_i127_3_3 (0x1)@uint32;
(*   %conv1.i129.3.3 = zext i8 %conv7.i139.2.3 to i32 *)
cast v_conv1_i129_3_3@uint32 v_conv7_i139_2_3@uint8;
(*   %mul.i130.3.3 = mul nsw i32 %and.i128.3.3, %conv1.i129.3.3 *)
mul v_mul_i130_3_3 v_and_i128_3_3 v_conv1_i129_3_3;
(*   %conv2.i131.3.3 = zext i8 %conv3.i133.2.3 to i32 *)
cast v_conv2_i131_3_3@uint32 v_conv3_i133_2_3@uint8;
(*   %xor.i132.3.3 = xor i32 %conv2.i131.3.3, %mul.i130.3.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_3_3 v_conv2_i131_3_3 v_mul_i130_3_3;
(*   %conv3.i133.3.3 = trunc i32 %xor.i132.3.3 to i8 *)
split tmp_v_xor_i132_3_3 v_conv3_i133_3_3 v_xor_i132_3_3 8;
vpc v_conv3_i133_3_3@uint8 v_conv3_i133_3_3@uint32;
(*   %conv4.i134.3.3 = zext i8 %conv5.i136.2.3 to i32 *)
cast v_conv4_i134_3_3@uint32 v_conv5_i136_2_3@uint8;
(*   %shr.i135.3.3 = ashr i32 %conv4.i134.3.3, 1 *)
(* You may need to modify here *)
split v_shr_i135_3_3 tmp_to_be_used v_conv4_i134_3_3 1;
(*   %conv5.i136.3.3 = trunc i32 %shr.i135.3.3 to i8 *)
split tmp_v_shr_i135_3_3 v_conv5_i136_3_3 v_shr_i135_3_3 8;
vpc v_conv5_i136_3_3@uint8 v_conv5_i136_3_3@uint32;
(*   %conv6.i137.3.3 = zext i8 %conv7.i139.2.3 to i32 *)
cast v_conv6_i137_3_3@uint32 v_conv7_i139_2_3@uint8;
(*   %shl.i138.3.3 = shl i32 %conv6.i137.3.3, 1 *)
shls discard_38 v_shl_i138_3_3 v_conv6_i137_3_3 1;
(*   %conv7.i139.3.3 = trunc i32 %shl.i138.3.3 to i8 *)
split tmp_v_shl_i138_3_3 v_conv7_i139_3_3 v_shl_i138_3_3 8;
vpc v_conv7_i139_3_3@uint8 v_conv7_i139_3_3@uint32;
(*   %conv.i127.4.3 = zext i8 %conv5.i136.3.3 to i32 *)
cast v_conv_i127_4_3@uint32 v_conv5_i136_3_3@uint8;
(*   %and.i128.4.3 = and i32 %conv.i127.4.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_4_3 v_conv_i127_4_3 (0x1)@uint32;
(*   %conv1.i129.4.3 = zext i8 %conv7.i139.3.3 to i32 *)
cast v_conv1_i129_4_3@uint32 v_conv7_i139_3_3@uint8;
(*   %mul.i130.4.3 = mul nsw i32 %and.i128.4.3, %conv1.i129.4.3 *)
mul v_mul_i130_4_3 v_and_i128_4_3 v_conv1_i129_4_3;
(*   %conv2.i131.4.3 = zext i8 %conv3.i133.3.3 to i32 *)
cast v_conv2_i131_4_3@uint32 v_conv3_i133_3_3@uint8;
(*   %xor.i132.4.3 = xor i32 %conv2.i131.4.3, %mul.i130.4.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_4_3 v_conv2_i131_4_3 v_mul_i130_4_3;
(*   %conv3.i133.4.3 = trunc i32 %xor.i132.4.3 to i8 *)
split tmp_v_xor_i132_4_3 v_conv3_i133_4_3 v_xor_i132_4_3 8;
vpc v_conv3_i133_4_3@uint8 v_conv3_i133_4_3@uint32;
(*   %conv4.i134.4.3 = zext i8 %conv5.i136.3.3 to i32 *)
cast v_conv4_i134_4_3@uint32 v_conv5_i136_3_3@uint8;
(*   %shr.i135.4.3 = ashr i32 %conv4.i134.4.3, 1 *)
(* You may need to modify here *)
split v_shr_i135_4_3 tmp_to_be_used v_conv4_i134_4_3 1;
(*   %conv5.i136.4.3 = trunc i32 %shr.i135.4.3 to i8 *)
split tmp_v_shr_i135_4_3 v_conv5_i136_4_3 v_shr_i135_4_3 8;
vpc v_conv5_i136_4_3@uint8 v_conv5_i136_4_3@uint32;
(*   %conv6.i137.4.3 = zext i8 %conv7.i139.3.3 to i32 *)
cast v_conv6_i137_4_3@uint32 v_conv7_i139_3_3@uint8;
(*   %shl.i138.4.3 = shl i32 %conv6.i137.4.3, 1 *)
shls discard_39 v_shl_i138_4_3 v_conv6_i137_4_3 1;
(*   %conv7.i139.4.3 = trunc i32 %shl.i138.4.3 to i8 *)
split tmp_v_shl_i138_4_3 v_conv7_i139_4_3 v_shl_i138_4_3 8;
vpc v_conv7_i139_4_3@uint8 v_conv7_i139_4_3@uint32;
(*   %conv.i127.5.3 = zext i8 %conv5.i136.4.3 to i32 *)
cast v_conv_i127_5_3@uint32 v_conv5_i136_4_3@uint8;
(*   %and.i128.5.3 = and i32 %conv.i127.5.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_5_3 v_conv_i127_5_3 (0x1)@uint32;
(*   %conv1.i129.5.3 = zext i8 %conv7.i139.4.3 to i32 *)
cast v_conv1_i129_5_3@uint32 v_conv7_i139_4_3@uint8;
(*   %mul.i130.5.3 = mul nsw i32 %and.i128.5.3, %conv1.i129.5.3 *)
mul v_mul_i130_5_3 v_and_i128_5_3 v_conv1_i129_5_3;
(*   %conv2.i131.5.3 = zext i8 %conv3.i133.4.3 to i32 *)
cast v_conv2_i131_5_3@uint32 v_conv3_i133_4_3@uint8;
(*   %xor.i132.5.3 = xor i32 %conv2.i131.5.3, %mul.i130.5.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_5_3 v_conv2_i131_5_3 v_mul_i130_5_3;
(*   %conv3.i133.5.3 = trunc i32 %xor.i132.5.3 to i8 *)
split tmp_v_xor_i132_5_3 v_conv3_i133_5_3 v_xor_i132_5_3 8;
vpc v_conv3_i133_5_3@uint8 v_conv3_i133_5_3@uint32;
(*   %conv4.i134.5.3 = zext i8 %conv5.i136.4.3 to i32 *)
cast v_conv4_i134_5_3@uint32 v_conv5_i136_4_3@uint8;
(*   %shr.i135.5.3 = ashr i32 %conv4.i134.5.3, 1 *)
(* You may need to modify here *)
split v_shr_i135_5_3 tmp_to_be_used v_conv4_i134_5_3 1;
(*   %conv5.i136.5.3 = trunc i32 %shr.i135.5.3 to i8 *)
split tmp_v_shr_i135_5_3 v_conv5_i136_5_3 v_shr_i135_5_3 8;
vpc v_conv5_i136_5_3@uint8 v_conv5_i136_5_3@uint32;
(*   %conv6.i137.5.3 = zext i8 %conv7.i139.4.3 to i32 *)
cast v_conv6_i137_5_3@uint32 v_conv7_i139_4_3@uint8;
(*   %shl.i138.5.3 = shl i32 %conv6.i137.5.3, 1 *)
shls discard_40 v_shl_i138_5_3 v_conv6_i137_5_3 1;
(*   %conv7.i139.5.3 = trunc i32 %shl.i138.5.3 to i8 *)
split tmp_v_shl_i138_5_3 v_conv7_i139_5_3 v_shl_i138_5_3 8;
vpc v_conv7_i139_5_3@uint8 v_conv7_i139_5_3@uint32;
(*   %conv.i127.6.3 = zext i8 %conv5.i136.5.3 to i32 *)
cast v_conv_i127_6_3@uint32 v_conv5_i136_5_3@uint8;
(*   %and.i128.6.3 = and i32 %conv.i127.6.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_6_3 v_conv_i127_6_3 (0x1)@uint32;
(*   %conv1.i129.6.3 = zext i8 %conv7.i139.5.3 to i32 *)
cast v_conv1_i129_6_3@uint32 v_conv7_i139_5_3@uint8;
(*   %mul.i130.6.3 = mul nsw i32 %and.i128.6.3, %conv1.i129.6.3 *)
mul v_mul_i130_6_3 v_and_i128_6_3 v_conv1_i129_6_3;
(*   %conv2.i131.6.3 = zext i8 %conv3.i133.5.3 to i32 *)
cast v_conv2_i131_6_3@uint32 v_conv3_i133_5_3@uint8;
(*   %xor.i132.6.3 = xor i32 %conv2.i131.6.3, %mul.i130.6.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_6_3 v_conv2_i131_6_3 v_mul_i130_6_3;
(*   %conv3.i133.6.3 = trunc i32 %xor.i132.6.3 to i8 *)
split tmp_v_xor_i132_6_3 v_conv3_i133_6_3 v_xor_i132_6_3 8;
vpc v_conv3_i133_6_3@uint8 v_conv3_i133_6_3@uint32;
(*   %conv4.i134.6.3 = zext i8 %conv5.i136.5.3 to i32 *)
cast v_conv4_i134_6_3@uint32 v_conv5_i136_5_3@uint8;
(*   %shr.i135.6.3 = ashr i32 %conv4.i134.6.3, 1 *)
(* You may need to modify here *)
split v_shr_i135_6_3 tmp_to_be_used v_conv4_i134_6_3 1;
(*   %conv5.i136.6.3 = trunc i32 %shr.i135.6.3 to i8 *)
split tmp_v_shr_i135_6_3 v_conv5_i136_6_3 v_shr_i135_6_3 8;
vpc v_conv5_i136_6_3@uint8 v_conv5_i136_6_3@uint32;
(*   %conv6.i137.6.3 = zext i8 %conv7.i139.5.3 to i32 *)
cast v_conv6_i137_6_3@uint32 v_conv7_i139_5_3@uint8;
(*   %shl.i138.6.3 = shl i32 %conv6.i137.6.3, 1 *)
shls discard_41 v_shl_i138_6_3 v_conv6_i137_6_3 1;
(*   %conv7.i139.6.3 = trunc i32 %shl.i138.6.3 to i8 *)
split tmp_v_shl_i138_6_3 v_conv7_i139_6_3 v_shl_i138_6_3 8;
vpc v_conv7_i139_6_3@uint8 v_conv7_i139_6_3@uint32;
(*   %conv.i127.7.3 = zext i8 %conv5.i136.6.3 to i32 *)
cast v_conv_i127_7_3@uint32 v_conv5_i136_6_3@uint8;
(*   %and.i128.7.3 = and i32 %conv.i127.7.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_7_3 v_conv_i127_7_3 (0x1)@uint32;
(*   %conv1.i129.7.3 = zext i8 %conv7.i139.6.3 to i32 *)
cast v_conv1_i129_7_3@uint32 v_conv7_i139_6_3@uint8;
(*   %mul.i130.7.3 = mul nsw i32 %and.i128.7.3, %conv1.i129.7.3 *)
mul v_mul_i130_7_3 v_and_i128_7_3 v_conv1_i129_7_3;
(*   %conv2.i131.7.3 = zext i8 %conv3.i133.6.3 to i32 *)
cast v_conv2_i131_7_3@uint32 v_conv3_i133_6_3@uint8;
(*   %xor.i132.7.3 = xor i32 %conv2.i131.7.3, %mul.i130.7.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_7_3 v_conv2_i131_7_3 v_mul_i130_7_3;
(*   %conv3.i133.7.3 = trunc i32 %xor.i132.7.3 to i8 *)
split tmp_v_xor_i132_7_3 v_conv3_i133_7_3 v_xor_i132_7_3 8;
vpc v_conv3_i133_7_3@uint8 v_conv3_i133_7_3@uint32;
(*   %arrayidx56.3 = getelementptr inbounds [16 x i8], [16 x i8]* %p1, i64 0, i64 3 *)
(*   store i8 %conv3.i133.7.3, i8* %arrayidx56.3, align 1 *)
mov p1_3 v_conv3_i133_7_3;
(*   %arrayidx60.3 = getelementptr inbounds [16 x i8], [16 x i8]* %p0, i64 0, i64 3 *)
(*   %28 = load i8, i8* %arrayidx60.3, align 1 *)
mov v28 p0_3;
(*   %conv61.3 = zext i8 %28 to i32 *)
cast v_conv61_3@uint32 v28@uint8;
(*   %arrayidx65.3 = getelementptr inbounds [16 x i8], [16 x i8]* %p1, i64 0, i64 3 *)
(*   %29 = load i8, i8* %arrayidx65.3, align 1 *)
mov v29 p1_3;
(*   %conv66.3 = zext i8 %29 to i32 *)
cast v_conv66_3@uint32 v29@uint8;
(*   %xor67.3 = xor i32 %conv61.3, %conv66.3 *)
(* You may need to modify here *)
xor uint32 v_xor67_3 v_conv61_3 v_conv66_3;
(*   %conv68.3 = trunc i32 %xor67.3 to i8 *)
split tmp_v_xor67_3 v_conv68_3 v_xor67_3 8;
vpc v_conv68_3@uint8 v_conv68_3@uint32;
(*   %arrayidx72.3 = getelementptr inbounds [16 x i8], [16 x i8]* %z, i64 0, i64 3 *)
(*   store i8 %conv68.3, i8* %arrayidx72.3, align 1 *)
mov z_3 v_conv68_3;
(*   %arrayidx34.1 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %arrayidx47.1 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %30 = load i8, i8* %b, align 1 *)
mov v30 b_0;
(*   %conv.1190 = zext i8 %30 to i32 *)
cast v_conv_1190@uint32 v30@uint8;
(*   %arrayidx26.1192 = getelementptr inbounds i8, i8* %r, i64 4 *)
(*   %31 = load i8, i8* %arrayidx26.1192, align 1 *)
mov v31 r_4;
(*   %conv27.1193 = zext i8 %31 to i32 *)
cast v_conv27_1193@uint32 v31@uint8;
(*   %xor.1194 = xor i32 %conv.1190, %conv27.1193 *)
(* You may need to modify here *)
xor uint32 v_xor_1194 v_conv_1190 v_conv27_1193;
(*   %conv28.1195 = trunc i32 %xor.1194 to i8 *)
split tmp_v_xor_1194 v_conv28_1195 v_xor_1194 8;
vpc v_conv28_1195@uint8 v_conv28_1195@uint32;
(*   %arrayidx32.1197 = getelementptr inbounds [16 x i8], [16 x i8]* %s, i64 0, i64 4 *)
(*   store i8 %conv28.1195, i8* %arrayidx32.1197, align 1 *)
mov s_4 v_conv28_1195;
(*   %32 = load i8, i8* %arrayidx34.1, align 1 *)
mov v32 a_1;
(*   %conv35.1198 = zext i8 %32 to i32 *)
cast v_conv35_1198@uint32 v32@uint8;
(*   %xor36.1199 = xor i32 %conv35.1198, 1 *)
(* You may need to modify here *)
xor uint32 v_xor36_1199 v_conv35_1198 (0x1)@uint32;
(*   %conv37.1200 = trunc i32 %xor36.1199 to i8 *)
split tmp_v_xor36_1199 v_conv37_1200 v_xor36_1199 8;
vpc v_conv37_1200@uint8 v_conv37_1200@uint32;
(*   %arrayidx41.1202 = getelementptr inbounds i8, i8* %r, i64 4 *)
(*   %33 = load i8, i8* %arrayidx41.1202, align 1 *)
mov v33 r_4;
(*   %conv.i.1204 = zext i8 %33 to i32 *)
cast v_conv_i_1204@uint32 v33@uint8;
(*   %and.i.1205 = and i32 %conv.i.1204, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1205 v_conv_i_1204 (0x1)@uint32;
(*   %conv1.i.1206 = zext i8 %conv37.1200 to i32 *)
cast v_conv1_i_1206@uint32 v_conv37_1200@uint8;
(*   %mul.i.1207 = mul nsw i32 %and.i.1205, %conv1.i.1206 *)
mul v_mul_i_1207 v_and_i_1205 v_conv1_i_1206;
(*   %conv3.i.1208 = trunc i32 %mul.i.1207 to i8 *)
split tmp_v_mul_i_1207 v_conv3_i_1208 v_mul_i_1207 8;
vpc v_conv3_i_1208@uint8 v_conv3_i_1208@uint32;
(*   %conv4.i.1209 = zext i8 %33 to i32 *)
cast v_conv4_i_1209@uint32 v33@uint8;
(*   %shr.i.1210 = ashr i32 %conv4.i.1209, 1 *)
(* You may need to modify here *)
split v_shr_i_1210 tmp_to_be_used v_conv4_i_1209 1;
(*   %conv5.i.1211 = trunc i32 %shr.i.1210 to i8 *)
split tmp_v_shr_i_1210 v_conv5_i_1211 v_shr_i_1210 8;
vpc v_conv5_i_1211@uint8 v_conv5_i_1211@uint32;
(*   %conv6.i.1212 = zext i8 %conv37.1200 to i32 *)
cast v_conv6_i_1212@uint32 v_conv37_1200@uint8;
(*   %shl.i.1213 = shl i32 %conv6.i.1212, 1 *)
shls discard_42 v_shl_i_1213 v_conv6_i_1212 1;
(*   %conv7.i.1214 = trunc i32 %shl.i.1213 to i8 *)
split tmp_v_shl_i_1213 v_conv7_i_1214 v_shl_i_1213 8;
vpc v_conv7_i_1214@uint8 v_conv7_i_1214@uint32;
(*   %conv.i.1.1215 = zext i8 %conv5.i.1211 to i32 *)
cast v_conv_i_1_1215@uint32 v_conv5_i_1211@uint8;
(*   %and.i.1.1216 = and i32 %conv.i.1.1215, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_1216 v_conv_i_1_1215 (0x1)@uint32;
(*   %conv1.i.1.1217 = zext i8 %conv7.i.1214 to i32 *)
cast v_conv1_i_1_1217@uint32 v_conv7_i_1214@uint8;
(*   %mul.i.1.1218 = mul nsw i32 %and.i.1.1216, %conv1.i.1.1217 *)
mul v_mul_i_1_1218 v_and_i_1_1216 v_conv1_i_1_1217;
(*   %conv2.i.1.1219 = zext i8 %conv3.i.1208 to i32 *)
cast v_conv2_i_1_1219@uint32 v_conv3_i_1208@uint8;
(*   %xor.i.1.1220 = xor i32 %conv2.i.1.1219, %mul.i.1.1218 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_1220 v_conv2_i_1_1219 v_mul_i_1_1218;
(*   %conv3.i.1.1221 = trunc i32 %xor.i.1.1220 to i8 *)
split tmp_v_xor_i_1_1220 v_conv3_i_1_1221 v_xor_i_1_1220 8;
vpc v_conv3_i_1_1221@uint8 v_conv3_i_1_1221@uint32;
(*   %conv4.i.1.1222 = zext i8 %conv5.i.1211 to i32 *)
cast v_conv4_i_1_1222@uint32 v_conv5_i_1211@uint8;
(*   %shr.i.1.1223 = ashr i32 %conv4.i.1.1222, 1 *)
(* You may need to modify here *)
split v_shr_i_1_1223 tmp_to_be_used v_conv4_i_1_1222 1;
(*   %conv5.i.1.1224 = trunc i32 %shr.i.1.1223 to i8 *)
split tmp_v_shr_i_1_1223 v_conv5_i_1_1224 v_shr_i_1_1223 8;
vpc v_conv5_i_1_1224@uint8 v_conv5_i_1_1224@uint32;
(*   %conv6.i.1.1225 = zext i8 %conv7.i.1214 to i32 *)
cast v_conv6_i_1_1225@uint32 v_conv7_i_1214@uint8;
(*   %shl.i.1.1226 = shl i32 %conv6.i.1.1225, 1 *)
shls discard_43 v_shl_i_1_1226 v_conv6_i_1_1225 1;
(*   %conv7.i.1.1227 = trunc i32 %shl.i.1.1226 to i8 *)
split tmp_v_shl_i_1_1226 v_conv7_i_1_1227 v_shl_i_1_1226 8;
vpc v_conv7_i_1_1227@uint8 v_conv7_i_1_1227@uint32;
(*   %conv.i.2.1228 = zext i8 %conv5.i.1.1224 to i32 *)
cast v_conv_i_2_1228@uint32 v_conv5_i_1_1224@uint8;
(*   %and.i.2.1229 = and i32 %conv.i.2.1228, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_1229 v_conv_i_2_1228 (0x1)@uint32;
(*   %conv1.i.2.1230 = zext i8 %conv7.i.1.1227 to i32 *)
cast v_conv1_i_2_1230@uint32 v_conv7_i_1_1227@uint8;
(*   %mul.i.2.1231 = mul nsw i32 %and.i.2.1229, %conv1.i.2.1230 *)
mul v_mul_i_2_1231 v_and_i_2_1229 v_conv1_i_2_1230;
(*   %conv2.i.2.1232 = zext i8 %conv3.i.1.1221 to i32 *)
cast v_conv2_i_2_1232@uint32 v_conv3_i_1_1221@uint8;
(*   %xor.i.2.1233 = xor i32 %conv2.i.2.1232, %mul.i.2.1231 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_1233 v_conv2_i_2_1232 v_mul_i_2_1231;
(*   %conv3.i.2.1234 = trunc i32 %xor.i.2.1233 to i8 *)
split tmp_v_xor_i_2_1233 v_conv3_i_2_1234 v_xor_i_2_1233 8;
vpc v_conv3_i_2_1234@uint8 v_conv3_i_2_1234@uint32;
(*   %conv4.i.2.1235 = zext i8 %conv5.i.1.1224 to i32 *)
cast v_conv4_i_2_1235@uint32 v_conv5_i_1_1224@uint8;
(*   %shr.i.2.1236 = ashr i32 %conv4.i.2.1235, 1 *)
(* You may need to modify here *)
split v_shr_i_2_1236 tmp_to_be_used v_conv4_i_2_1235 1;
(*   %conv5.i.2.1237 = trunc i32 %shr.i.2.1236 to i8 *)
split tmp_v_shr_i_2_1236 v_conv5_i_2_1237 v_shr_i_2_1236 8;
vpc v_conv5_i_2_1237@uint8 v_conv5_i_2_1237@uint32;
(*   %conv6.i.2.1238 = zext i8 %conv7.i.1.1227 to i32 *)
cast v_conv6_i_2_1238@uint32 v_conv7_i_1_1227@uint8;
(*   %shl.i.2.1239 = shl i32 %conv6.i.2.1238, 1 *)
shls discard_44 v_shl_i_2_1239 v_conv6_i_2_1238 1;
(*   %conv7.i.2.1240 = trunc i32 %shl.i.2.1239 to i8 *)
split tmp_v_shl_i_2_1239 v_conv7_i_2_1240 v_shl_i_2_1239 8;
vpc v_conv7_i_2_1240@uint8 v_conv7_i_2_1240@uint32;
(*   %conv.i.3.1241 = zext i8 %conv5.i.2.1237 to i32 *)
cast v_conv_i_3_1241@uint32 v_conv5_i_2_1237@uint8;
(*   %and.i.3.1242 = and i32 %conv.i.3.1241, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_1242 v_conv_i_3_1241 (0x1)@uint32;
(*   %conv1.i.3.1243 = zext i8 %conv7.i.2.1240 to i32 *)
cast v_conv1_i_3_1243@uint32 v_conv7_i_2_1240@uint8;
(*   %mul.i.3.1244 = mul nsw i32 %and.i.3.1242, %conv1.i.3.1243 *)
mul v_mul_i_3_1244 v_and_i_3_1242 v_conv1_i_3_1243;
(*   %conv2.i.3.1245 = zext i8 %conv3.i.2.1234 to i32 *)
cast v_conv2_i_3_1245@uint32 v_conv3_i_2_1234@uint8;
(*   %xor.i.3.1246 = xor i32 %conv2.i.3.1245, %mul.i.3.1244 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_1246 v_conv2_i_3_1245 v_mul_i_3_1244;
(*   %conv3.i.3.1247 = trunc i32 %xor.i.3.1246 to i8 *)
split tmp_v_xor_i_3_1246 v_conv3_i_3_1247 v_xor_i_3_1246 8;
vpc v_conv3_i_3_1247@uint8 v_conv3_i_3_1247@uint32;
(*   %conv4.i.3.1248 = zext i8 %conv5.i.2.1237 to i32 *)
cast v_conv4_i_3_1248@uint32 v_conv5_i_2_1237@uint8;
(*   %shr.i.3.1249 = ashr i32 %conv4.i.3.1248, 1 *)
(* You may need to modify here *)
split v_shr_i_3_1249 tmp_to_be_used v_conv4_i_3_1248 1;
(*   %conv5.i.3.1250 = trunc i32 %shr.i.3.1249 to i8 *)
split tmp_v_shr_i_3_1249 v_conv5_i_3_1250 v_shr_i_3_1249 8;
vpc v_conv5_i_3_1250@uint8 v_conv5_i_3_1250@uint32;
(*   %conv6.i.3.1251 = zext i8 %conv7.i.2.1240 to i32 *)
cast v_conv6_i_3_1251@uint32 v_conv7_i_2_1240@uint8;
(*   %shl.i.3.1252 = shl i32 %conv6.i.3.1251, 1 *)
shls discard_45 v_shl_i_3_1252 v_conv6_i_3_1251 1;
(*   %conv7.i.3.1253 = trunc i32 %shl.i.3.1252 to i8 *)
split tmp_v_shl_i_3_1252 v_conv7_i_3_1253 v_shl_i_3_1252 8;
vpc v_conv7_i_3_1253@uint8 v_conv7_i_3_1253@uint32;
(*   %conv.i.4.1254 = zext i8 %conv5.i.3.1250 to i32 *)
cast v_conv_i_4_1254@uint32 v_conv5_i_3_1250@uint8;
(*   %and.i.4.1255 = and i32 %conv.i.4.1254, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_1255 v_conv_i_4_1254 (0x1)@uint32;
(*   %conv1.i.4.1256 = zext i8 %conv7.i.3.1253 to i32 *)
cast v_conv1_i_4_1256@uint32 v_conv7_i_3_1253@uint8;
(*   %mul.i.4.1257 = mul nsw i32 %and.i.4.1255, %conv1.i.4.1256 *)
mul v_mul_i_4_1257 v_and_i_4_1255 v_conv1_i_4_1256;
(*   %conv2.i.4.1258 = zext i8 %conv3.i.3.1247 to i32 *)
cast v_conv2_i_4_1258@uint32 v_conv3_i_3_1247@uint8;
(*   %xor.i.4.1259 = xor i32 %conv2.i.4.1258, %mul.i.4.1257 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_1259 v_conv2_i_4_1258 v_mul_i_4_1257;
(*   %conv3.i.4.1260 = trunc i32 %xor.i.4.1259 to i8 *)
split tmp_v_xor_i_4_1259 v_conv3_i_4_1260 v_xor_i_4_1259 8;
vpc v_conv3_i_4_1260@uint8 v_conv3_i_4_1260@uint32;
(*   %conv4.i.4.1261 = zext i8 %conv5.i.3.1250 to i32 *)
cast v_conv4_i_4_1261@uint32 v_conv5_i_3_1250@uint8;
(*   %shr.i.4.1262 = ashr i32 %conv4.i.4.1261, 1 *)
(* You may need to modify here *)
split v_shr_i_4_1262 tmp_to_be_used v_conv4_i_4_1261 1;
(*   %conv5.i.4.1263 = trunc i32 %shr.i.4.1262 to i8 *)
split tmp_v_shr_i_4_1262 v_conv5_i_4_1263 v_shr_i_4_1262 8;
vpc v_conv5_i_4_1263@uint8 v_conv5_i_4_1263@uint32;
(*   %conv6.i.4.1264 = zext i8 %conv7.i.3.1253 to i32 *)
cast v_conv6_i_4_1264@uint32 v_conv7_i_3_1253@uint8;
(*   %shl.i.4.1265 = shl i32 %conv6.i.4.1264, 1 *)
shls discard_46 v_shl_i_4_1265 v_conv6_i_4_1264 1;
(*   %conv7.i.4.1266 = trunc i32 %shl.i.4.1265 to i8 *)
split tmp_v_shl_i_4_1265 v_conv7_i_4_1266 v_shl_i_4_1265 8;
vpc v_conv7_i_4_1266@uint8 v_conv7_i_4_1266@uint32;
(*   %conv.i.5.1267 = zext i8 %conv5.i.4.1263 to i32 *)
cast v_conv_i_5_1267@uint32 v_conv5_i_4_1263@uint8;
(*   %and.i.5.1268 = and i32 %conv.i.5.1267, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_1268 v_conv_i_5_1267 (0x1)@uint32;
(*   %conv1.i.5.1269 = zext i8 %conv7.i.4.1266 to i32 *)
cast v_conv1_i_5_1269@uint32 v_conv7_i_4_1266@uint8;
(*   %mul.i.5.1270 = mul nsw i32 %and.i.5.1268, %conv1.i.5.1269 *)
mul v_mul_i_5_1270 v_and_i_5_1268 v_conv1_i_5_1269;
(*   %conv2.i.5.1271 = zext i8 %conv3.i.4.1260 to i32 *)
cast v_conv2_i_5_1271@uint32 v_conv3_i_4_1260@uint8;
(*   %xor.i.5.1272 = xor i32 %conv2.i.5.1271, %mul.i.5.1270 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_1272 v_conv2_i_5_1271 v_mul_i_5_1270;
(*   %conv3.i.5.1273 = trunc i32 %xor.i.5.1272 to i8 *)
split tmp_v_xor_i_5_1272 v_conv3_i_5_1273 v_xor_i_5_1272 8;
vpc v_conv3_i_5_1273@uint8 v_conv3_i_5_1273@uint32;
(*   %conv4.i.5.1274 = zext i8 %conv5.i.4.1263 to i32 *)
cast v_conv4_i_5_1274@uint32 v_conv5_i_4_1263@uint8;
(*   %shr.i.5.1275 = ashr i32 %conv4.i.5.1274, 1 *)
(* You may need to modify here *)
split v_shr_i_5_1275 tmp_to_be_used v_conv4_i_5_1274 1;
(*   %conv5.i.5.1276 = trunc i32 %shr.i.5.1275 to i8 *)
split tmp_v_shr_i_5_1275 v_conv5_i_5_1276 v_shr_i_5_1275 8;
vpc v_conv5_i_5_1276@uint8 v_conv5_i_5_1276@uint32;
(*   %conv6.i.5.1277 = zext i8 %conv7.i.4.1266 to i32 *)
cast v_conv6_i_5_1277@uint32 v_conv7_i_4_1266@uint8;
(*   %shl.i.5.1278 = shl i32 %conv6.i.5.1277, 1 *)
shls discard_47 v_shl_i_5_1278 v_conv6_i_5_1277 1;
(*   %conv7.i.5.1279 = trunc i32 %shl.i.5.1278 to i8 *)
split tmp_v_shl_i_5_1278 v_conv7_i_5_1279 v_shl_i_5_1278 8;
vpc v_conv7_i_5_1279@uint8 v_conv7_i_5_1279@uint32;
(*   %conv.i.6.1280 = zext i8 %conv5.i.5.1276 to i32 *)
cast v_conv_i_6_1280@uint32 v_conv5_i_5_1276@uint8;
(*   %and.i.6.1281 = and i32 %conv.i.6.1280, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_1281 v_conv_i_6_1280 (0x1)@uint32;
(*   %conv1.i.6.1282 = zext i8 %conv7.i.5.1279 to i32 *)
cast v_conv1_i_6_1282@uint32 v_conv7_i_5_1279@uint8;
(*   %mul.i.6.1283 = mul nsw i32 %and.i.6.1281, %conv1.i.6.1282 *)
mul v_mul_i_6_1283 v_and_i_6_1281 v_conv1_i_6_1282;
(*   %conv2.i.6.1284 = zext i8 %conv3.i.5.1273 to i32 *)
cast v_conv2_i_6_1284@uint32 v_conv3_i_5_1273@uint8;
(*   %xor.i.6.1285 = xor i32 %conv2.i.6.1284, %mul.i.6.1283 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_1285 v_conv2_i_6_1284 v_mul_i_6_1283;
(*   %conv3.i.6.1286 = trunc i32 %xor.i.6.1285 to i8 *)
split tmp_v_xor_i_6_1285 v_conv3_i_6_1286 v_xor_i_6_1285 8;
vpc v_conv3_i_6_1286@uint8 v_conv3_i_6_1286@uint32;
(*   %conv4.i.6.1287 = zext i8 %conv5.i.5.1276 to i32 *)
cast v_conv4_i_6_1287@uint32 v_conv5_i_5_1276@uint8;
(*   %shr.i.6.1288 = ashr i32 %conv4.i.6.1287, 1 *)
(* You may need to modify here *)
split v_shr_i_6_1288 tmp_to_be_used v_conv4_i_6_1287 1;
(*   %conv5.i.6.1289 = trunc i32 %shr.i.6.1288 to i8 *)
split tmp_v_shr_i_6_1288 v_conv5_i_6_1289 v_shr_i_6_1288 8;
vpc v_conv5_i_6_1289@uint8 v_conv5_i_6_1289@uint32;
(*   %conv6.i.6.1290 = zext i8 %conv7.i.5.1279 to i32 *)
cast v_conv6_i_6_1290@uint32 v_conv7_i_5_1279@uint8;
(*   %shl.i.6.1291 = shl i32 %conv6.i.6.1290, 1 *)
shls discard_48 v_shl_i_6_1291 v_conv6_i_6_1290 1;
(*   %conv7.i.6.1292 = trunc i32 %shl.i.6.1291 to i8 *)
split tmp_v_shl_i_6_1291 v_conv7_i_6_1292 v_shl_i_6_1291 8;
vpc v_conv7_i_6_1292@uint8 v_conv7_i_6_1292@uint32;
(*   %conv.i.7.1293 = zext i8 %conv5.i.6.1289 to i32 *)
cast v_conv_i_7_1293@uint32 v_conv5_i_6_1289@uint8;
(*   %and.i.7.1294 = and i32 %conv.i.7.1293, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_1294 v_conv_i_7_1293 (0x1)@uint32;
(*   %conv1.i.7.1295 = zext i8 %conv7.i.6.1292 to i32 *)
cast v_conv1_i_7_1295@uint32 v_conv7_i_6_1292@uint8;
(*   %mul.i.7.1296 = mul nsw i32 %and.i.7.1294, %conv1.i.7.1295 *)
mul v_mul_i_7_1296 v_and_i_7_1294 v_conv1_i_7_1295;
(*   %conv2.i.7.1297 = zext i8 %conv3.i.6.1286 to i32 *)
cast v_conv2_i_7_1297@uint32 v_conv3_i_6_1286@uint8;
(*   %xor.i.7.1298 = xor i32 %conv2.i.7.1297, %mul.i.7.1296 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_1298 v_conv2_i_7_1297 v_mul_i_7_1296;
(*   %conv3.i.7.1299 = trunc i32 %xor.i.7.1298 to i8 *)
split tmp_v_xor_i_7_1298 v_conv3_i_7_1299 v_xor_i_7_1298 8;
vpc v_conv3_i_7_1299@uint8 v_conv3_i_7_1299@uint32;
(*   %arrayidx45.1303 = getelementptr inbounds [16 x i8], [16 x i8]* %p0, i64 0, i64 4 *)
(*   store i8 %conv3.i.7.1299, i8* %arrayidx45.1303, align 1 *)
mov p0_4 v_conv3_i_7_1299;
(*   %34 = load i8, i8* %arrayidx47.1, align 1 *)
mov v34 a_1;
(*   %arrayidx51.1305 = getelementptr inbounds [16 x i8], [16 x i8]* %s, i64 0, i64 4 *)
(*   %35 = load i8, i8* %arrayidx51.1305, align 1 *)
mov v35 s_4;
(*   %conv.i127.1307 = zext i8 %35 to i32 *)
cast v_conv_i127_1307@uint32 v35@uint8;
(*   %and.i128.1308 = and i32 %conv.i127.1307, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1308 v_conv_i127_1307 (0x1)@uint32;
(*   %conv1.i129.1309 = zext i8 %34 to i32 *)
cast v_conv1_i129_1309@uint32 v34@uint8;
(*   %mul.i130.1310 = mul nsw i32 %and.i128.1308, %conv1.i129.1309 *)
mul v_mul_i130_1310 v_and_i128_1308 v_conv1_i129_1309;
(*   %conv3.i133.1311 = trunc i32 %mul.i130.1310 to i8 *)
split tmp_v_mul_i130_1310 v_conv3_i133_1311 v_mul_i130_1310 8;
vpc v_conv3_i133_1311@uint8 v_conv3_i133_1311@uint32;
(*   %conv4.i134.1312 = zext i8 %35 to i32 *)
cast v_conv4_i134_1312@uint32 v35@uint8;
(*   %shr.i135.1313 = ashr i32 %conv4.i134.1312, 1 *)
(* You may need to modify here *)
split v_shr_i135_1313 tmp_to_be_used v_conv4_i134_1312 1;
(*   %conv5.i136.1314 = trunc i32 %shr.i135.1313 to i8 *)
split tmp_v_shr_i135_1313 v_conv5_i136_1314 v_shr_i135_1313 8;
vpc v_conv5_i136_1314@uint8 v_conv5_i136_1314@uint32;
(*   %conv6.i137.1315 = zext i8 %34 to i32 *)
cast v_conv6_i137_1315@uint32 v34@uint8;
(*   %shl.i138.1316 = shl i32 %conv6.i137.1315, 1 *)
shls discard_49 v_shl_i138_1316 v_conv6_i137_1315 1;
(*   %conv7.i139.1317 = trunc i32 %shl.i138.1316 to i8 *)
split tmp_v_shl_i138_1316 v_conv7_i139_1317 v_shl_i138_1316 8;
vpc v_conv7_i139_1317@uint8 v_conv7_i139_1317@uint32;
(*   %conv.i127.1.1318 = zext i8 %conv5.i136.1314 to i32 *)
cast v_conv_i127_1_1318@uint32 v_conv5_i136_1314@uint8;
(*   %and.i128.1.1319 = and i32 %conv.i127.1.1318, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1_1319 v_conv_i127_1_1318 (0x1)@uint32;
(*   %conv1.i129.1.1320 = zext i8 %conv7.i139.1317 to i32 *)
cast v_conv1_i129_1_1320@uint32 v_conv7_i139_1317@uint8;
(*   %mul.i130.1.1321 = mul nsw i32 %and.i128.1.1319, %conv1.i129.1.1320 *)
mul v_mul_i130_1_1321 v_and_i128_1_1319 v_conv1_i129_1_1320;
(*   %conv2.i131.1.1322 = zext i8 %conv3.i133.1311 to i32 *)
cast v_conv2_i131_1_1322@uint32 v_conv3_i133_1311@uint8;
(*   %xor.i132.1.1323 = xor i32 %conv2.i131.1.1322, %mul.i130.1.1321 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_1_1323 v_conv2_i131_1_1322 v_mul_i130_1_1321;
(*   %conv3.i133.1.1324 = trunc i32 %xor.i132.1.1323 to i8 *)
split tmp_v_xor_i132_1_1323 v_conv3_i133_1_1324 v_xor_i132_1_1323 8;
vpc v_conv3_i133_1_1324@uint8 v_conv3_i133_1_1324@uint32;
(*   %conv4.i134.1.1325 = zext i8 %conv5.i136.1314 to i32 *)
cast v_conv4_i134_1_1325@uint32 v_conv5_i136_1314@uint8;
(*   %shr.i135.1.1326 = ashr i32 %conv4.i134.1.1325, 1 *)
(* You may need to modify here *)
split v_shr_i135_1_1326 tmp_to_be_used v_conv4_i134_1_1325 1;
(*   %conv5.i136.1.1327 = trunc i32 %shr.i135.1.1326 to i8 *)
split tmp_v_shr_i135_1_1326 v_conv5_i136_1_1327 v_shr_i135_1_1326 8;
vpc v_conv5_i136_1_1327@uint8 v_conv5_i136_1_1327@uint32;
(*   %conv6.i137.1.1328 = zext i8 %conv7.i139.1317 to i32 *)
cast v_conv6_i137_1_1328@uint32 v_conv7_i139_1317@uint8;
(*   %shl.i138.1.1329 = shl i32 %conv6.i137.1.1328, 1 *)
shls discard_50 v_shl_i138_1_1329 v_conv6_i137_1_1328 1;
(*   %conv7.i139.1.1330 = trunc i32 %shl.i138.1.1329 to i8 *)
split tmp_v_shl_i138_1_1329 v_conv7_i139_1_1330 v_shl_i138_1_1329 8;
vpc v_conv7_i139_1_1330@uint8 v_conv7_i139_1_1330@uint32;
(*   %conv.i127.2.1331 = zext i8 %conv5.i136.1.1327 to i32 *)
cast v_conv_i127_2_1331@uint32 v_conv5_i136_1_1327@uint8;
(*   %and.i128.2.1332 = and i32 %conv.i127.2.1331, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_2_1332 v_conv_i127_2_1331 (0x1)@uint32;
(*   %conv1.i129.2.1333 = zext i8 %conv7.i139.1.1330 to i32 *)
cast v_conv1_i129_2_1333@uint32 v_conv7_i139_1_1330@uint8;
(*   %mul.i130.2.1334 = mul nsw i32 %and.i128.2.1332, %conv1.i129.2.1333 *)
mul v_mul_i130_2_1334 v_and_i128_2_1332 v_conv1_i129_2_1333;
(*   %conv2.i131.2.1335 = zext i8 %conv3.i133.1.1324 to i32 *)
cast v_conv2_i131_2_1335@uint32 v_conv3_i133_1_1324@uint8;
(*   %xor.i132.2.1336 = xor i32 %conv2.i131.2.1335, %mul.i130.2.1334 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_2_1336 v_conv2_i131_2_1335 v_mul_i130_2_1334;
(*   %conv3.i133.2.1337 = trunc i32 %xor.i132.2.1336 to i8 *)
split tmp_v_xor_i132_2_1336 v_conv3_i133_2_1337 v_xor_i132_2_1336 8;
vpc v_conv3_i133_2_1337@uint8 v_conv3_i133_2_1337@uint32;
(*   %conv4.i134.2.1338 = zext i8 %conv5.i136.1.1327 to i32 *)
cast v_conv4_i134_2_1338@uint32 v_conv5_i136_1_1327@uint8;
(*   %shr.i135.2.1339 = ashr i32 %conv4.i134.2.1338, 1 *)
(* You may need to modify here *)
split v_shr_i135_2_1339 tmp_to_be_used v_conv4_i134_2_1338 1;
(*   %conv5.i136.2.1340 = trunc i32 %shr.i135.2.1339 to i8 *)
split tmp_v_shr_i135_2_1339 v_conv5_i136_2_1340 v_shr_i135_2_1339 8;
vpc v_conv5_i136_2_1340@uint8 v_conv5_i136_2_1340@uint32;
(*   %conv6.i137.2.1341 = zext i8 %conv7.i139.1.1330 to i32 *)
cast v_conv6_i137_2_1341@uint32 v_conv7_i139_1_1330@uint8;
(*   %shl.i138.2.1342 = shl i32 %conv6.i137.2.1341, 1 *)
shls discard_51 v_shl_i138_2_1342 v_conv6_i137_2_1341 1;
(*   %conv7.i139.2.1343 = trunc i32 %shl.i138.2.1342 to i8 *)
split tmp_v_shl_i138_2_1342 v_conv7_i139_2_1343 v_shl_i138_2_1342 8;
vpc v_conv7_i139_2_1343@uint8 v_conv7_i139_2_1343@uint32;
(*   %conv.i127.3.1344 = zext i8 %conv5.i136.2.1340 to i32 *)
cast v_conv_i127_3_1344@uint32 v_conv5_i136_2_1340@uint8;
(*   %and.i128.3.1345 = and i32 %conv.i127.3.1344, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_3_1345 v_conv_i127_3_1344 (0x1)@uint32;
(*   %conv1.i129.3.1346 = zext i8 %conv7.i139.2.1343 to i32 *)
cast v_conv1_i129_3_1346@uint32 v_conv7_i139_2_1343@uint8;
(*   %mul.i130.3.1347 = mul nsw i32 %and.i128.3.1345, %conv1.i129.3.1346 *)
mul v_mul_i130_3_1347 v_and_i128_3_1345 v_conv1_i129_3_1346;
(*   %conv2.i131.3.1348 = zext i8 %conv3.i133.2.1337 to i32 *)
cast v_conv2_i131_3_1348@uint32 v_conv3_i133_2_1337@uint8;
(*   %xor.i132.3.1349 = xor i32 %conv2.i131.3.1348, %mul.i130.3.1347 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_3_1349 v_conv2_i131_3_1348 v_mul_i130_3_1347;
(*   %conv3.i133.3.1350 = trunc i32 %xor.i132.3.1349 to i8 *)
split tmp_v_xor_i132_3_1349 v_conv3_i133_3_1350 v_xor_i132_3_1349 8;
vpc v_conv3_i133_3_1350@uint8 v_conv3_i133_3_1350@uint32;
(*   %conv4.i134.3.1351 = zext i8 %conv5.i136.2.1340 to i32 *)
cast v_conv4_i134_3_1351@uint32 v_conv5_i136_2_1340@uint8;
(*   %shr.i135.3.1352 = ashr i32 %conv4.i134.3.1351, 1 *)
(* You may need to modify here *)
split v_shr_i135_3_1352 tmp_to_be_used v_conv4_i134_3_1351 1;
(*   %conv5.i136.3.1353 = trunc i32 %shr.i135.3.1352 to i8 *)
split tmp_v_shr_i135_3_1352 v_conv5_i136_3_1353 v_shr_i135_3_1352 8;
vpc v_conv5_i136_3_1353@uint8 v_conv5_i136_3_1353@uint32;
(*   %conv6.i137.3.1354 = zext i8 %conv7.i139.2.1343 to i32 *)
cast v_conv6_i137_3_1354@uint32 v_conv7_i139_2_1343@uint8;
(*   %shl.i138.3.1355 = shl i32 %conv6.i137.3.1354, 1 *)
shls discard_52 v_shl_i138_3_1355 v_conv6_i137_3_1354 1;
(*   %conv7.i139.3.1356 = trunc i32 %shl.i138.3.1355 to i8 *)
split tmp_v_shl_i138_3_1355 v_conv7_i139_3_1356 v_shl_i138_3_1355 8;
vpc v_conv7_i139_3_1356@uint8 v_conv7_i139_3_1356@uint32;
(*   %conv.i127.4.1357 = zext i8 %conv5.i136.3.1353 to i32 *)
cast v_conv_i127_4_1357@uint32 v_conv5_i136_3_1353@uint8;
(*   %and.i128.4.1358 = and i32 %conv.i127.4.1357, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_4_1358 v_conv_i127_4_1357 (0x1)@uint32;
(*   %conv1.i129.4.1359 = zext i8 %conv7.i139.3.1356 to i32 *)
cast v_conv1_i129_4_1359@uint32 v_conv7_i139_3_1356@uint8;
(*   %mul.i130.4.1360 = mul nsw i32 %and.i128.4.1358, %conv1.i129.4.1359 *)
mul v_mul_i130_4_1360 v_and_i128_4_1358 v_conv1_i129_4_1359;
(*   %conv2.i131.4.1361 = zext i8 %conv3.i133.3.1350 to i32 *)
cast v_conv2_i131_4_1361@uint32 v_conv3_i133_3_1350@uint8;
(*   %xor.i132.4.1362 = xor i32 %conv2.i131.4.1361, %mul.i130.4.1360 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_4_1362 v_conv2_i131_4_1361 v_mul_i130_4_1360;
(*   %conv3.i133.4.1363 = trunc i32 %xor.i132.4.1362 to i8 *)
split tmp_v_xor_i132_4_1362 v_conv3_i133_4_1363 v_xor_i132_4_1362 8;
vpc v_conv3_i133_4_1363@uint8 v_conv3_i133_4_1363@uint32;
(*   %conv4.i134.4.1364 = zext i8 %conv5.i136.3.1353 to i32 *)
cast v_conv4_i134_4_1364@uint32 v_conv5_i136_3_1353@uint8;
(*   %shr.i135.4.1365 = ashr i32 %conv4.i134.4.1364, 1 *)
(* You may need to modify here *)
split v_shr_i135_4_1365 tmp_to_be_used v_conv4_i134_4_1364 1;
(*   %conv5.i136.4.1366 = trunc i32 %shr.i135.4.1365 to i8 *)
split tmp_v_shr_i135_4_1365 v_conv5_i136_4_1366 v_shr_i135_4_1365 8;
vpc v_conv5_i136_4_1366@uint8 v_conv5_i136_4_1366@uint32;
(*   %conv6.i137.4.1367 = zext i8 %conv7.i139.3.1356 to i32 *)
cast v_conv6_i137_4_1367@uint32 v_conv7_i139_3_1356@uint8;
(*   %shl.i138.4.1368 = shl i32 %conv6.i137.4.1367, 1 *)
shls discard_53 v_shl_i138_4_1368 v_conv6_i137_4_1367 1;
(*   %conv7.i139.4.1369 = trunc i32 %shl.i138.4.1368 to i8 *)
split tmp_v_shl_i138_4_1368 v_conv7_i139_4_1369 v_shl_i138_4_1368 8;
vpc v_conv7_i139_4_1369@uint8 v_conv7_i139_4_1369@uint32;
(*   %conv.i127.5.1370 = zext i8 %conv5.i136.4.1366 to i32 *)
cast v_conv_i127_5_1370@uint32 v_conv5_i136_4_1366@uint8;
(*   %and.i128.5.1371 = and i32 %conv.i127.5.1370, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_5_1371 v_conv_i127_5_1370 (0x1)@uint32;
(*   %conv1.i129.5.1372 = zext i8 %conv7.i139.4.1369 to i32 *)
cast v_conv1_i129_5_1372@uint32 v_conv7_i139_4_1369@uint8;
(*   %mul.i130.5.1373 = mul nsw i32 %and.i128.5.1371, %conv1.i129.5.1372 *)
mul v_mul_i130_5_1373 v_and_i128_5_1371 v_conv1_i129_5_1372;
(*   %conv2.i131.5.1374 = zext i8 %conv3.i133.4.1363 to i32 *)
cast v_conv2_i131_5_1374@uint32 v_conv3_i133_4_1363@uint8;
(*   %xor.i132.5.1375 = xor i32 %conv2.i131.5.1374, %mul.i130.5.1373 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_5_1375 v_conv2_i131_5_1374 v_mul_i130_5_1373;
(*   %conv3.i133.5.1376 = trunc i32 %xor.i132.5.1375 to i8 *)
split tmp_v_xor_i132_5_1375 v_conv3_i133_5_1376 v_xor_i132_5_1375 8;
vpc v_conv3_i133_5_1376@uint8 v_conv3_i133_5_1376@uint32;
(*   %conv4.i134.5.1377 = zext i8 %conv5.i136.4.1366 to i32 *)
cast v_conv4_i134_5_1377@uint32 v_conv5_i136_4_1366@uint8;
(*   %shr.i135.5.1378 = ashr i32 %conv4.i134.5.1377, 1 *)
(* You may need to modify here *)
split v_shr_i135_5_1378 tmp_to_be_used v_conv4_i134_5_1377 1;
(*   %conv5.i136.5.1379 = trunc i32 %shr.i135.5.1378 to i8 *)
split tmp_v_shr_i135_5_1378 v_conv5_i136_5_1379 v_shr_i135_5_1378 8;
vpc v_conv5_i136_5_1379@uint8 v_conv5_i136_5_1379@uint32;
(*   %conv6.i137.5.1380 = zext i8 %conv7.i139.4.1369 to i32 *)
cast v_conv6_i137_5_1380@uint32 v_conv7_i139_4_1369@uint8;
(*   %shl.i138.5.1381 = shl i32 %conv6.i137.5.1380, 1 *)
shls discard_54 v_shl_i138_5_1381 v_conv6_i137_5_1380 1;
(*   %conv7.i139.5.1382 = trunc i32 %shl.i138.5.1381 to i8 *)
split tmp_v_shl_i138_5_1381 v_conv7_i139_5_1382 v_shl_i138_5_1381 8;
vpc v_conv7_i139_5_1382@uint8 v_conv7_i139_5_1382@uint32;
(*   %conv.i127.6.1383 = zext i8 %conv5.i136.5.1379 to i32 *)
cast v_conv_i127_6_1383@uint32 v_conv5_i136_5_1379@uint8;
(*   %and.i128.6.1384 = and i32 %conv.i127.6.1383, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_6_1384 v_conv_i127_6_1383 (0x1)@uint32;
(*   %conv1.i129.6.1385 = zext i8 %conv7.i139.5.1382 to i32 *)
cast v_conv1_i129_6_1385@uint32 v_conv7_i139_5_1382@uint8;
(*   %mul.i130.6.1386 = mul nsw i32 %and.i128.6.1384, %conv1.i129.6.1385 *)
mul v_mul_i130_6_1386 v_and_i128_6_1384 v_conv1_i129_6_1385;
(*   %conv2.i131.6.1387 = zext i8 %conv3.i133.5.1376 to i32 *)
cast v_conv2_i131_6_1387@uint32 v_conv3_i133_5_1376@uint8;
(*   %xor.i132.6.1388 = xor i32 %conv2.i131.6.1387, %mul.i130.6.1386 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_6_1388 v_conv2_i131_6_1387 v_mul_i130_6_1386;
(*   %conv3.i133.6.1389 = trunc i32 %xor.i132.6.1388 to i8 *)
split tmp_v_xor_i132_6_1388 v_conv3_i133_6_1389 v_xor_i132_6_1388 8;
vpc v_conv3_i133_6_1389@uint8 v_conv3_i133_6_1389@uint32;
(*   %conv4.i134.6.1390 = zext i8 %conv5.i136.5.1379 to i32 *)
cast v_conv4_i134_6_1390@uint32 v_conv5_i136_5_1379@uint8;
(*   %shr.i135.6.1391 = ashr i32 %conv4.i134.6.1390, 1 *)
(* You may need to modify here *)
split v_shr_i135_6_1391 tmp_to_be_used v_conv4_i134_6_1390 1;
(*   %conv5.i136.6.1392 = trunc i32 %shr.i135.6.1391 to i8 *)
split tmp_v_shr_i135_6_1391 v_conv5_i136_6_1392 v_shr_i135_6_1391 8;
vpc v_conv5_i136_6_1392@uint8 v_conv5_i136_6_1392@uint32;
(*   %conv6.i137.6.1393 = zext i8 %conv7.i139.5.1382 to i32 *)
cast v_conv6_i137_6_1393@uint32 v_conv7_i139_5_1382@uint8;
(*   %shl.i138.6.1394 = shl i32 %conv6.i137.6.1393, 1 *)
shls discard_55 v_shl_i138_6_1394 v_conv6_i137_6_1393 1;
(*   %conv7.i139.6.1395 = trunc i32 %shl.i138.6.1394 to i8 *)
split tmp_v_shl_i138_6_1394 v_conv7_i139_6_1395 v_shl_i138_6_1394 8;
vpc v_conv7_i139_6_1395@uint8 v_conv7_i139_6_1395@uint32;
(*   %conv.i127.7.1396 = zext i8 %conv5.i136.6.1392 to i32 *)
cast v_conv_i127_7_1396@uint32 v_conv5_i136_6_1392@uint8;
(*   %and.i128.7.1397 = and i32 %conv.i127.7.1396, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_7_1397 v_conv_i127_7_1396 (0x1)@uint32;
(*   %conv1.i129.7.1398 = zext i8 %conv7.i139.6.1395 to i32 *)
cast v_conv1_i129_7_1398@uint32 v_conv7_i139_6_1395@uint8;
(*   %mul.i130.7.1399 = mul nsw i32 %and.i128.7.1397, %conv1.i129.7.1398 *)
mul v_mul_i130_7_1399 v_and_i128_7_1397 v_conv1_i129_7_1398;
(*   %conv2.i131.7.1400 = zext i8 %conv3.i133.6.1389 to i32 *)
cast v_conv2_i131_7_1400@uint32 v_conv3_i133_6_1389@uint8;
(*   %xor.i132.7.1401 = xor i32 %conv2.i131.7.1400, %mul.i130.7.1399 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_7_1401 v_conv2_i131_7_1400 v_mul_i130_7_1399;
(*   %conv3.i133.7.1402 = trunc i32 %xor.i132.7.1401 to i8 *)
split tmp_v_xor_i132_7_1401 v_conv3_i133_7_1402 v_xor_i132_7_1401 8;
vpc v_conv3_i133_7_1402@uint8 v_conv3_i133_7_1402@uint32;
(*   %arrayidx56.1406 = getelementptr inbounds [16 x i8], [16 x i8]* %p1, i64 0, i64 4 *)
(*   store i8 %conv3.i133.7.1402, i8* %arrayidx56.1406, align 1 *)
mov p1_4 v_conv3_i133_7_1402;
(*   %arrayidx60.1408 = getelementptr inbounds [16 x i8], [16 x i8]* %p0, i64 0, i64 4 *)
(*   %36 = load i8, i8* %arrayidx60.1408, align 1 *)
mov v36 p0_4;
(*   %conv61.1409 = zext i8 %36 to i32 *)
cast v_conv61_1409@uint32 v36@uint8;
(*   %arrayidx65.1411 = getelementptr inbounds [16 x i8], [16 x i8]* %p1, i64 0, i64 4 *)
(*   %37 = load i8, i8* %arrayidx65.1411, align 1 *)
mov v37 p1_4;
(*   %conv66.1412 = zext i8 %37 to i32 *)
cast v_conv66_1412@uint32 v37@uint8;
(*   %xor67.1413 = xor i32 %conv61.1409, %conv66.1412 *)
(* You may need to modify here *)
xor uint32 v_xor67_1413 v_conv61_1409 v_conv66_1412;
(*   %conv68.1414 = trunc i32 %xor67.1413 to i8 *)
split tmp_v_xor67_1413 v_conv68_1414 v_xor67_1413 8;
vpc v_conv68_1414@uint8 v_conv68_1414@uint32;
(*   %arrayidx72.1416 = getelementptr inbounds [16 x i8], [16 x i8]* %z, i64 0, i64 4 *)
(*   store i8 %conv68.1414, i8* %arrayidx72.1416, align 1 *)
mov z_4 v_conv68_1414;
(*   %arrayidx22.2.1 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %38 = load i8, i8* %arrayidx22.2.1, align 1 *)
mov v38 b_2;
(*   %conv.2.1 = zext i8 %38 to i32 *)
cast v_conv_2_1@uint32 v38@uint8;
(*   %arrayidx26.2.1 = getelementptr inbounds i8, i8* %r, i64 6 *)
(*   %39 = load i8, i8* %arrayidx26.2.1, align 1 *)
mov v39 r_6;
(*   %conv27.2.1 = zext i8 %39 to i32 *)
cast v_conv27_2_1@uint32 v39@uint8;
(*   %xor.2.1 = xor i32 %conv.2.1, %conv27.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_2_1 v_conv_2_1 v_conv27_2_1;
(*   %conv28.2.1 = trunc i32 %xor.2.1 to i8 *)
split tmp_v_xor_2_1 v_conv28_2_1 v_xor_2_1 8;
vpc v_conv28_2_1@uint8 v_conv28_2_1@uint32;
(*   %arrayidx32.2.1 = getelementptr inbounds [16 x i8], [16 x i8]* %s, i64 0, i64 6 *)
(*   store i8 %conv28.2.1, i8* %arrayidx32.2.1, align 1 *)
mov s_6 v_conv28_2_1;
(*   %40 = load i8, i8* %arrayidx34.1, align 1 *)
mov v40 a_1;
(*   %conv35.2.1 = zext i8 %40 to i32 *)
cast v_conv35_2_1@uint32 v40@uint8;
(*   %xor36.2.1 = xor i32 %conv35.2.1, 1 *)
(* You may need to modify here *)
xor uint32 v_xor36_2_1 v_conv35_2_1 (0x1)@uint32;
(*   %conv37.2.1 = trunc i32 %xor36.2.1 to i8 *)
split tmp_v_xor36_2_1 v_conv37_2_1 v_xor36_2_1 8;
vpc v_conv37_2_1@uint8 v_conv37_2_1@uint32;
(*   %arrayidx41.2.1 = getelementptr inbounds i8, i8* %r, i64 6 *)
(*   %41 = load i8, i8* %arrayidx41.2.1, align 1 *)
mov v41 r_6;
(*   %conv.i.2145.1 = zext i8 %41 to i32 *)
cast v_conv_i_2145_1@uint32 v41@uint8;
(*   %and.i.2146.1 = and i32 %conv.i.2145.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2146_1 v_conv_i_2145_1 (0x1)@uint32;
(*   %conv1.i.2147.1 = zext i8 %conv37.2.1 to i32 *)
cast v_conv1_i_2147_1@uint32 v_conv37_2_1@uint8;
(*   %mul.i.2148.1 = mul nsw i32 %and.i.2146.1, %conv1.i.2147.1 *)
mul v_mul_i_2148_1 v_and_i_2146_1 v_conv1_i_2147_1;
(*   %conv3.i.2149.1 = trunc i32 %mul.i.2148.1 to i8 *)
split tmp_v_mul_i_2148_1 v_conv3_i_2149_1 v_mul_i_2148_1 8;
vpc v_conv3_i_2149_1@uint8 v_conv3_i_2149_1@uint32;
(*   %conv4.i.2150.1 = zext i8 %41 to i32 *)
cast v_conv4_i_2150_1@uint32 v41@uint8;
(*   %shr.i.2151.1 = ashr i32 %conv4.i.2150.1, 1 *)
(* You may need to modify here *)
split v_shr_i_2151_1 tmp_to_be_used v_conv4_i_2150_1 1;
(*   %conv5.i.2152.1 = trunc i32 %shr.i.2151.1 to i8 *)
split tmp_v_shr_i_2151_1 v_conv5_i_2152_1 v_shr_i_2151_1 8;
vpc v_conv5_i_2152_1@uint8 v_conv5_i_2152_1@uint32;
(*   %conv6.i.2153.1 = zext i8 %conv37.2.1 to i32 *)
cast v_conv6_i_2153_1@uint32 v_conv37_2_1@uint8;
(*   %shl.i.2154.1 = shl i32 %conv6.i.2153.1, 1 *)
shls discard_56 v_shl_i_2154_1 v_conv6_i_2153_1 1;
(*   %conv7.i.2155.1 = trunc i32 %shl.i.2154.1 to i8 *)
split tmp_v_shl_i_2154_1 v_conv7_i_2155_1 v_shl_i_2154_1 8;
vpc v_conv7_i_2155_1@uint8 v_conv7_i_2155_1@uint32;
(*   %conv.i.1.2.1 = zext i8 %conv5.i.2152.1 to i32 *)
cast v_conv_i_1_2_1@uint32 v_conv5_i_2152_1@uint8;
(*   %and.i.1.2.1 = and i32 %conv.i.1.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_2_1 v_conv_i_1_2_1 (0x1)@uint32;
(*   %conv1.i.1.2.1 = zext i8 %conv7.i.2155.1 to i32 *)
cast v_conv1_i_1_2_1@uint32 v_conv7_i_2155_1@uint8;
(*   %mul.i.1.2.1 = mul nsw i32 %and.i.1.2.1, %conv1.i.1.2.1 *)
mul v_mul_i_1_2_1 v_and_i_1_2_1 v_conv1_i_1_2_1;
(*   %conv2.i.1.2.1 = zext i8 %conv3.i.2149.1 to i32 *)
cast v_conv2_i_1_2_1@uint32 v_conv3_i_2149_1@uint8;
(*   %xor.i.1.2.1 = xor i32 %conv2.i.1.2.1, %mul.i.1.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_2_1 v_conv2_i_1_2_1 v_mul_i_1_2_1;
(*   %conv3.i.1.2.1 = trunc i32 %xor.i.1.2.1 to i8 *)
split tmp_v_xor_i_1_2_1 v_conv3_i_1_2_1 v_xor_i_1_2_1 8;
vpc v_conv3_i_1_2_1@uint8 v_conv3_i_1_2_1@uint32;
(*   %conv4.i.1.2.1 = zext i8 %conv5.i.2152.1 to i32 *)
cast v_conv4_i_1_2_1@uint32 v_conv5_i_2152_1@uint8;
(*   %shr.i.1.2.1 = ashr i32 %conv4.i.1.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i_1_2_1 tmp_to_be_used v_conv4_i_1_2_1 1;
(*   %conv5.i.1.2.1 = trunc i32 %shr.i.1.2.1 to i8 *)
split tmp_v_shr_i_1_2_1 v_conv5_i_1_2_1 v_shr_i_1_2_1 8;
vpc v_conv5_i_1_2_1@uint8 v_conv5_i_1_2_1@uint32;
(*   %conv6.i.1.2.1 = zext i8 %conv7.i.2155.1 to i32 *)
cast v_conv6_i_1_2_1@uint32 v_conv7_i_2155_1@uint8;
(*   %shl.i.1.2.1 = shl i32 %conv6.i.1.2.1, 1 *)
shls discard_57 v_shl_i_1_2_1 v_conv6_i_1_2_1 1;
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
shls discard_58 v_shl_i_2_2_1 v_conv6_i_2_2_1 1;
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
shls discard_59 v_shl_i_3_2_1 v_conv6_i_3_2_1 1;
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
shls discard_60 v_shl_i_4_2_1 v_conv6_i_4_2_1 1;
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
shls discard_61 v_shl_i_5_2_1 v_conv6_i_5_2_1 1;
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
shls discard_62 v_shl_i_6_2_1 v_conv6_i_6_2_1 1;
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
(*   %arrayidx45.2.1 = getelementptr inbounds [16 x i8], [16 x i8]* %p0, i64 0, i64 6 *)
(*   store i8 %conv3.i.7.2.1, i8* %arrayidx45.2.1, align 1 *)
mov p0_6 v_conv3_i_7_2_1;
(*   %42 = load i8, i8* %arrayidx47.1, align 1 *)
mov v42 a_1;
(*   %arrayidx51.2.1 = getelementptr inbounds [16 x i8], [16 x i8]* %s, i64 0, i64 6 *)
(*   %43 = load i8, i8* %arrayidx51.2.1, align 1 *)
mov v43 s_6;
(*   %conv.i127.2156.1 = zext i8 %43 to i32 *)
cast v_conv_i127_2156_1@uint32 v43@uint8;
(*   %and.i128.2157.1 = and i32 %conv.i127.2156.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_2157_1 v_conv_i127_2156_1 (0x1)@uint32;
(*   %conv1.i129.2158.1 = zext i8 %42 to i32 *)
cast v_conv1_i129_2158_1@uint32 v42@uint8;
(*   %mul.i130.2159.1 = mul nsw i32 %and.i128.2157.1, %conv1.i129.2158.1 *)
mul v_mul_i130_2159_1 v_and_i128_2157_1 v_conv1_i129_2158_1;
(*   %conv3.i133.2160.1 = trunc i32 %mul.i130.2159.1 to i8 *)
split tmp_v_mul_i130_2159_1 v_conv3_i133_2160_1 v_mul_i130_2159_1 8;
vpc v_conv3_i133_2160_1@uint8 v_conv3_i133_2160_1@uint32;
(*   %conv4.i134.2161.1 = zext i8 %43 to i32 *)
cast v_conv4_i134_2161_1@uint32 v43@uint8;
(*   %shr.i135.2162.1 = ashr i32 %conv4.i134.2161.1, 1 *)
(* You may need to modify here *)
split v_shr_i135_2162_1 tmp_to_be_used v_conv4_i134_2161_1 1;
(*   %conv5.i136.2163.1 = trunc i32 %shr.i135.2162.1 to i8 *)
split tmp_v_shr_i135_2162_1 v_conv5_i136_2163_1 v_shr_i135_2162_1 8;
vpc v_conv5_i136_2163_1@uint8 v_conv5_i136_2163_1@uint32;
(*   %conv6.i137.2164.1 = zext i8 %42 to i32 *)
cast v_conv6_i137_2164_1@uint32 v42@uint8;
(*   %shl.i138.2165.1 = shl i32 %conv6.i137.2164.1, 1 *)
shls discard_63 v_shl_i138_2165_1 v_conv6_i137_2164_1 1;
(*   %conv7.i139.2166.1 = trunc i32 %shl.i138.2165.1 to i8 *)
split tmp_v_shl_i138_2165_1 v_conv7_i139_2166_1 v_shl_i138_2165_1 8;
vpc v_conv7_i139_2166_1@uint8 v_conv7_i139_2166_1@uint32;
(*   %conv.i127.1.2.1 = zext i8 %conv5.i136.2163.1 to i32 *)
cast v_conv_i127_1_2_1@uint32 v_conv5_i136_2163_1@uint8;
(*   %and.i128.1.2.1 = and i32 %conv.i127.1.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1_2_1 v_conv_i127_1_2_1 (0x1)@uint32;
(*   %conv1.i129.1.2.1 = zext i8 %conv7.i139.2166.1 to i32 *)
cast v_conv1_i129_1_2_1@uint32 v_conv7_i139_2166_1@uint8;
(*   %mul.i130.1.2.1 = mul nsw i32 %and.i128.1.2.1, %conv1.i129.1.2.1 *)
mul v_mul_i130_1_2_1 v_and_i128_1_2_1 v_conv1_i129_1_2_1;
(*   %conv2.i131.1.2.1 = zext i8 %conv3.i133.2160.1 to i32 *)
cast v_conv2_i131_1_2_1@uint32 v_conv3_i133_2160_1@uint8;
(*   %xor.i132.1.2.1 = xor i32 %conv2.i131.1.2.1, %mul.i130.1.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_1_2_1 v_conv2_i131_1_2_1 v_mul_i130_1_2_1;
(*   %conv3.i133.1.2.1 = trunc i32 %xor.i132.1.2.1 to i8 *)
split tmp_v_xor_i132_1_2_1 v_conv3_i133_1_2_1 v_xor_i132_1_2_1 8;
vpc v_conv3_i133_1_2_1@uint8 v_conv3_i133_1_2_1@uint32;
(*   %conv4.i134.1.2.1 = zext i8 %conv5.i136.2163.1 to i32 *)
cast v_conv4_i134_1_2_1@uint32 v_conv5_i136_2163_1@uint8;
(*   %shr.i135.1.2.1 = ashr i32 %conv4.i134.1.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i135_1_2_1 tmp_to_be_used v_conv4_i134_1_2_1 1;
(*   %conv5.i136.1.2.1 = trunc i32 %shr.i135.1.2.1 to i8 *)
split tmp_v_shr_i135_1_2_1 v_conv5_i136_1_2_1 v_shr_i135_1_2_1 8;
vpc v_conv5_i136_1_2_1@uint8 v_conv5_i136_1_2_1@uint32;
(*   %conv6.i137.1.2.1 = zext i8 %conv7.i139.2166.1 to i32 *)
cast v_conv6_i137_1_2_1@uint32 v_conv7_i139_2166_1@uint8;
(*   %shl.i138.1.2.1 = shl i32 %conv6.i137.1.2.1, 1 *)
shls discard_64 v_shl_i138_1_2_1 v_conv6_i137_1_2_1 1;
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
shls discard_65 v_shl_i138_2_2_1 v_conv6_i137_2_2_1 1;
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
shls discard_66 v_shl_i138_3_2_1 v_conv6_i137_3_2_1 1;
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
shls discard_67 v_shl_i138_4_2_1 v_conv6_i137_4_2_1 1;
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
shls discard_68 v_shl_i138_5_2_1 v_conv6_i137_5_2_1 1;
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
shls discard_69 v_shl_i138_6_2_1 v_conv6_i137_6_2_1 1;
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
(*   %arrayidx56.2.1 = getelementptr inbounds [16 x i8], [16 x i8]* %p1, i64 0, i64 6 *)
(*   store i8 %conv3.i133.7.2.1, i8* %arrayidx56.2.1, align 1 *)
mov p1_6 v_conv3_i133_7_2_1;
(*   %arrayidx60.2.1 = getelementptr inbounds [16 x i8], [16 x i8]* %p0, i64 0, i64 6 *)
(*   %44 = load i8, i8* %arrayidx60.2.1, align 1 *)
mov v44 p0_6;
(*   %conv61.2.1 = zext i8 %44 to i32 *)
cast v_conv61_2_1@uint32 v44@uint8;
(*   %arrayidx65.2.1 = getelementptr inbounds [16 x i8], [16 x i8]* %p1, i64 0, i64 6 *)
(*   %45 = load i8, i8* %arrayidx65.2.1, align 1 *)
mov v45 p1_6;
(*   %conv66.2.1 = zext i8 %45 to i32 *)
cast v_conv66_2_1@uint32 v45@uint8;
(*   %xor67.2.1 = xor i32 %conv61.2.1, %conv66.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor67_2_1 v_conv61_2_1 v_conv66_2_1;
(*   %conv68.2.1 = trunc i32 %xor67.2.1 to i8 *)
split tmp_v_xor67_2_1 v_conv68_2_1 v_xor67_2_1 8;
vpc v_conv68_2_1@uint8 v_conv68_2_1@uint32;
(*   %arrayidx72.2.1 = getelementptr inbounds [16 x i8], [16 x i8]* %z, i64 0, i64 6 *)
(*   store i8 %conv68.2.1, i8* %arrayidx72.2.1, align 1 *)
mov z_6 v_conv68_2_1;
(*   %arrayidx22.3.1 = getelementptr inbounds i8, i8* %b, i64 3 *)
(*   %46 = load i8, i8* %arrayidx22.3.1, align 1 *)
mov v46 b_3;
(*   %conv.3.1 = zext i8 %46 to i32 *)
cast v_conv_3_1@uint32 v46@uint8;
(*   %arrayidx26.3.1 = getelementptr inbounds i8, i8* %r, i64 7 *)
(*   %47 = load i8, i8* %arrayidx26.3.1, align 1 *)
mov v47 r_7;
(*   %conv27.3.1 = zext i8 %47 to i32 *)
cast v_conv27_3_1@uint32 v47@uint8;
(*   %xor.3.1 = xor i32 %conv.3.1, %conv27.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_3_1 v_conv_3_1 v_conv27_3_1;
(*   %conv28.3.1 = trunc i32 %xor.3.1 to i8 *)
split tmp_v_xor_3_1 v_conv28_3_1 v_xor_3_1 8;
vpc v_conv28_3_1@uint8 v_conv28_3_1@uint32;
(*   %arrayidx32.3.1 = getelementptr inbounds [16 x i8], [16 x i8]* %s, i64 0, i64 7 *)
(*   store i8 %conv28.3.1, i8* %arrayidx32.3.1, align 1 *)
mov s_7 v_conv28_3_1;
(*   %48 = load i8, i8* %arrayidx34.1, align 1 *)
mov v48 a_1;
(*   %conv35.3.1 = zext i8 %48 to i32 *)
cast v_conv35_3_1@uint32 v48@uint8;
(*   %xor36.3.1 = xor i32 %conv35.3.1, 1 *)
(* You may need to modify here *)
xor uint32 v_xor36_3_1 v_conv35_3_1 (0x1)@uint32;
(*   %conv37.3.1 = trunc i32 %xor36.3.1 to i8 *)
split tmp_v_xor36_3_1 v_conv37_3_1 v_xor36_3_1 8;
vpc v_conv37_3_1@uint8 v_conv37_3_1@uint32;
(*   %arrayidx41.3.1 = getelementptr inbounds i8, i8* %r, i64 7 *)
(*   %49 = load i8, i8* %arrayidx41.3.1, align 1 *)
mov v49 r_7;
(*   %conv.i.3167.1 = zext i8 %49 to i32 *)
cast v_conv_i_3167_1@uint32 v49@uint8;
(*   %and.i.3168.1 = and i32 %conv.i.3167.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3168_1 v_conv_i_3167_1 (0x1)@uint32;
(*   %conv1.i.3169.1 = zext i8 %conv37.3.1 to i32 *)
cast v_conv1_i_3169_1@uint32 v_conv37_3_1@uint8;
(*   %mul.i.3170.1 = mul nsw i32 %and.i.3168.1, %conv1.i.3169.1 *)
mul v_mul_i_3170_1 v_and_i_3168_1 v_conv1_i_3169_1;
(*   %conv3.i.3171.1 = trunc i32 %mul.i.3170.1 to i8 *)
split tmp_v_mul_i_3170_1 v_conv3_i_3171_1 v_mul_i_3170_1 8;
vpc v_conv3_i_3171_1@uint8 v_conv3_i_3171_1@uint32;
(*   %conv4.i.3172.1 = zext i8 %49 to i32 *)
cast v_conv4_i_3172_1@uint32 v49@uint8;
(*   %shr.i.3173.1 = ashr i32 %conv4.i.3172.1, 1 *)
(* You may need to modify here *)
split v_shr_i_3173_1 tmp_to_be_used v_conv4_i_3172_1 1;
(*   %conv5.i.3174.1 = trunc i32 %shr.i.3173.1 to i8 *)
split tmp_v_shr_i_3173_1 v_conv5_i_3174_1 v_shr_i_3173_1 8;
vpc v_conv5_i_3174_1@uint8 v_conv5_i_3174_1@uint32;
(*   %conv6.i.3175.1 = zext i8 %conv37.3.1 to i32 *)
cast v_conv6_i_3175_1@uint32 v_conv37_3_1@uint8;
(*   %shl.i.3176.1 = shl i32 %conv6.i.3175.1, 1 *)
shls discard_70 v_shl_i_3176_1 v_conv6_i_3175_1 1;
(*   %conv7.i.3177.1 = trunc i32 %shl.i.3176.1 to i8 *)
split tmp_v_shl_i_3176_1 v_conv7_i_3177_1 v_shl_i_3176_1 8;
vpc v_conv7_i_3177_1@uint8 v_conv7_i_3177_1@uint32;
(*   %conv.i.1.3.1 = zext i8 %conv5.i.3174.1 to i32 *)
cast v_conv_i_1_3_1@uint32 v_conv5_i_3174_1@uint8;
(*   %and.i.1.3.1 = and i32 %conv.i.1.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_3_1 v_conv_i_1_3_1 (0x1)@uint32;
(*   %conv1.i.1.3.1 = zext i8 %conv7.i.3177.1 to i32 *)
cast v_conv1_i_1_3_1@uint32 v_conv7_i_3177_1@uint8;
(*   %mul.i.1.3.1 = mul nsw i32 %and.i.1.3.1, %conv1.i.1.3.1 *)
mul v_mul_i_1_3_1 v_and_i_1_3_1 v_conv1_i_1_3_1;
(*   %conv2.i.1.3.1 = zext i8 %conv3.i.3171.1 to i32 *)
cast v_conv2_i_1_3_1@uint32 v_conv3_i_3171_1@uint8;
(*   %xor.i.1.3.1 = xor i32 %conv2.i.1.3.1, %mul.i.1.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_3_1 v_conv2_i_1_3_1 v_mul_i_1_3_1;
(*   %conv3.i.1.3.1 = trunc i32 %xor.i.1.3.1 to i8 *)
split tmp_v_xor_i_1_3_1 v_conv3_i_1_3_1 v_xor_i_1_3_1 8;
vpc v_conv3_i_1_3_1@uint8 v_conv3_i_1_3_1@uint32;
(*   %conv4.i.1.3.1 = zext i8 %conv5.i.3174.1 to i32 *)
cast v_conv4_i_1_3_1@uint32 v_conv5_i_3174_1@uint8;
(*   %shr.i.1.3.1 = ashr i32 %conv4.i.1.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i_1_3_1 tmp_to_be_used v_conv4_i_1_3_1 1;
(*   %conv5.i.1.3.1 = trunc i32 %shr.i.1.3.1 to i8 *)
split tmp_v_shr_i_1_3_1 v_conv5_i_1_3_1 v_shr_i_1_3_1 8;
vpc v_conv5_i_1_3_1@uint8 v_conv5_i_1_3_1@uint32;
(*   %conv6.i.1.3.1 = zext i8 %conv7.i.3177.1 to i32 *)
cast v_conv6_i_1_3_1@uint32 v_conv7_i_3177_1@uint8;
(*   %shl.i.1.3.1 = shl i32 %conv6.i.1.3.1, 1 *)
shls discard_71 v_shl_i_1_3_1 v_conv6_i_1_3_1 1;
(*   %conv7.i.1.3.1 = trunc i32 %shl.i.1.3.1 to i8 *)
split tmp_v_shl_i_1_3_1 v_conv7_i_1_3_1 v_shl_i_1_3_1 8;
vpc v_conv7_i_1_3_1@uint8 v_conv7_i_1_3_1@uint32;
(*   %conv.i.2.3.1 = zext i8 %conv5.i.1.3.1 to i32 *)
cast v_conv_i_2_3_1@uint32 v_conv5_i_1_3_1@uint8;
(*   %and.i.2.3.1 = and i32 %conv.i.2.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_3_1 v_conv_i_2_3_1 (0x1)@uint32;
(*   %conv1.i.2.3.1 = zext i8 %conv7.i.1.3.1 to i32 *)
cast v_conv1_i_2_3_1@uint32 v_conv7_i_1_3_1@uint8;
(*   %mul.i.2.3.1 = mul nsw i32 %and.i.2.3.1, %conv1.i.2.3.1 *)
mul v_mul_i_2_3_1 v_and_i_2_3_1 v_conv1_i_2_3_1;
(*   %conv2.i.2.3.1 = zext i8 %conv3.i.1.3.1 to i32 *)
cast v_conv2_i_2_3_1@uint32 v_conv3_i_1_3_1@uint8;
(*   %xor.i.2.3.1 = xor i32 %conv2.i.2.3.1, %mul.i.2.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_3_1 v_conv2_i_2_3_1 v_mul_i_2_3_1;
(*   %conv3.i.2.3.1 = trunc i32 %xor.i.2.3.1 to i8 *)
split tmp_v_xor_i_2_3_1 v_conv3_i_2_3_1 v_xor_i_2_3_1 8;
vpc v_conv3_i_2_3_1@uint8 v_conv3_i_2_3_1@uint32;
(*   %conv4.i.2.3.1 = zext i8 %conv5.i.1.3.1 to i32 *)
cast v_conv4_i_2_3_1@uint32 v_conv5_i_1_3_1@uint8;
(*   %shr.i.2.3.1 = ashr i32 %conv4.i.2.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i_2_3_1 tmp_to_be_used v_conv4_i_2_3_1 1;
(*   %conv5.i.2.3.1 = trunc i32 %shr.i.2.3.1 to i8 *)
split tmp_v_shr_i_2_3_1 v_conv5_i_2_3_1 v_shr_i_2_3_1 8;
vpc v_conv5_i_2_3_1@uint8 v_conv5_i_2_3_1@uint32;
(*   %conv6.i.2.3.1 = zext i8 %conv7.i.1.3.1 to i32 *)
cast v_conv6_i_2_3_1@uint32 v_conv7_i_1_3_1@uint8;
(*   %shl.i.2.3.1 = shl i32 %conv6.i.2.3.1, 1 *)
shls discard_72 v_shl_i_2_3_1 v_conv6_i_2_3_1 1;
(*   %conv7.i.2.3.1 = trunc i32 %shl.i.2.3.1 to i8 *)
split tmp_v_shl_i_2_3_1 v_conv7_i_2_3_1 v_shl_i_2_3_1 8;
vpc v_conv7_i_2_3_1@uint8 v_conv7_i_2_3_1@uint32;
(*   %conv.i.3.3.1 = zext i8 %conv5.i.2.3.1 to i32 *)
cast v_conv_i_3_3_1@uint32 v_conv5_i_2_3_1@uint8;
(*   %and.i.3.3.1 = and i32 %conv.i.3.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_3_1 v_conv_i_3_3_1 (0x1)@uint32;
(*   %conv1.i.3.3.1 = zext i8 %conv7.i.2.3.1 to i32 *)
cast v_conv1_i_3_3_1@uint32 v_conv7_i_2_3_1@uint8;
(*   %mul.i.3.3.1 = mul nsw i32 %and.i.3.3.1, %conv1.i.3.3.1 *)
mul v_mul_i_3_3_1 v_and_i_3_3_1 v_conv1_i_3_3_1;
(*   %conv2.i.3.3.1 = zext i8 %conv3.i.2.3.1 to i32 *)
cast v_conv2_i_3_3_1@uint32 v_conv3_i_2_3_1@uint8;
(*   %xor.i.3.3.1 = xor i32 %conv2.i.3.3.1, %mul.i.3.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_3_1 v_conv2_i_3_3_1 v_mul_i_3_3_1;
(*   %conv3.i.3.3.1 = trunc i32 %xor.i.3.3.1 to i8 *)
split tmp_v_xor_i_3_3_1 v_conv3_i_3_3_1 v_xor_i_3_3_1 8;
vpc v_conv3_i_3_3_1@uint8 v_conv3_i_3_3_1@uint32;
(*   %conv4.i.3.3.1 = zext i8 %conv5.i.2.3.1 to i32 *)
cast v_conv4_i_3_3_1@uint32 v_conv5_i_2_3_1@uint8;
(*   %shr.i.3.3.1 = ashr i32 %conv4.i.3.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i_3_3_1 tmp_to_be_used v_conv4_i_3_3_1 1;
(*   %conv5.i.3.3.1 = trunc i32 %shr.i.3.3.1 to i8 *)
split tmp_v_shr_i_3_3_1 v_conv5_i_3_3_1 v_shr_i_3_3_1 8;
vpc v_conv5_i_3_3_1@uint8 v_conv5_i_3_3_1@uint32;
(*   %conv6.i.3.3.1 = zext i8 %conv7.i.2.3.1 to i32 *)
cast v_conv6_i_3_3_1@uint32 v_conv7_i_2_3_1@uint8;
(*   %shl.i.3.3.1 = shl i32 %conv6.i.3.3.1, 1 *)
shls discard_73 v_shl_i_3_3_1 v_conv6_i_3_3_1 1;
(*   %conv7.i.3.3.1 = trunc i32 %shl.i.3.3.1 to i8 *)
split tmp_v_shl_i_3_3_1 v_conv7_i_3_3_1 v_shl_i_3_3_1 8;
vpc v_conv7_i_3_3_1@uint8 v_conv7_i_3_3_1@uint32;
(*   %conv.i.4.3.1 = zext i8 %conv5.i.3.3.1 to i32 *)
cast v_conv_i_4_3_1@uint32 v_conv5_i_3_3_1@uint8;
(*   %and.i.4.3.1 = and i32 %conv.i.4.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_3_1 v_conv_i_4_3_1 (0x1)@uint32;
(*   %conv1.i.4.3.1 = zext i8 %conv7.i.3.3.1 to i32 *)
cast v_conv1_i_4_3_1@uint32 v_conv7_i_3_3_1@uint8;
(*   %mul.i.4.3.1 = mul nsw i32 %and.i.4.3.1, %conv1.i.4.3.1 *)
mul v_mul_i_4_3_1 v_and_i_4_3_1 v_conv1_i_4_3_1;
(*   %conv2.i.4.3.1 = zext i8 %conv3.i.3.3.1 to i32 *)
cast v_conv2_i_4_3_1@uint32 v_conv3_i_3_3_1@uint8;
(*   %xor.i.4.3.1 = xor i32 %conv2.i.4.3.1, %mul.i.4.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_3_1 v_conv2_i_4_3_1 v_mul_i_4_3_1;
(*   %conv3.i.4.3.1 = trunc i32 %xor.i.4.3.1 to i8 *)
split tmp_v_xor_i_4_3_1 v_conv3_i_4_3_1 v_xor_i_4_3_1 8;
vpc v_conv3_i_4_3_1@uint8 v_conv3_i_4_3_1@uint32;
(*   %conv4.i.4.3.1 = zext i8 %conv5.i.3.3.1 to i32 *)
cast v_conv4_i_4_3_1@uint32 v_conv5_i_3_3_1@uint8;
(*   %shr.i.4.3.1 = ashr i32 %conv4.i.4.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i_4_3_1 tmp_to_be_used v_conv4_i_4_3_1 1;
(*   %conv5.i.4.3.1 = trunc i32 %shr.i.4.3.1 to i8 *)
split tmp_v_shr_i_4_3_1 v_conv5_i_4_3_1 v_shr_i_4_3_1 8;
vpc v_conv5_i_4_3_1@uint8 v_conv5_i_4_3_1@uint32;
(*   %conv6.i.4.3.1 = zext i8 %conv7.i.3.3.1 to i32 *)
cast v_conv6_i_4_3_1@uint32 v_conv7_i_3_3_1@uint8;
(*   %shl.i.4.3.1 = shl i32 %conv6.i.4.3.1, 1 *)
shls discard_74 v_shl_i_4_3_1 v_conv6_i_4_3_1 1;
(*   %conv7.i.4.3.1 = trunc i32 %shl.i.4.3.1 to i8 *)
split tmp_v_shl_i_4_3_1 v_conv7_i_4_3_1 v_shl_i_4_3_1 8;
vpc v_conv7_i_4_3_1@uint8 v_conv7_i_4_3_1@uint32;
(*   %conv.i.5.3.1 = zext i8 %conv5.i.4.3.1 to i32 *)
cast v_conv_i_5_3_1@uint32 v_conv5_i_4_3_1@uint8;
(*   %and.i.5.3.1 = and i32 %conv.i.5.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_3_1 v_conv_i_5_3_1 (0x1)@uint32;
(*   %conv1.i.5.3.1 = zext i8 %conv7.i.4.3.1 to i32 *)
cast v_conv1_i_5_3_1@uint32 v_conv7_i_4_3_1@uint8;
(*   %mul.i.5.3.1 = mul nsw i32 %and.i.5.3.1, %conv1.i.5.3.1 *)
mul v_mul_i_5_3_1 v_and_i_5_3_1 v_conv1_i_5_3_1;
(*   %conv2.i.5.3.1 = zext i8 %conv3.i.4.3.1 to i32 *)
cast v_conv2_i_5_3_1@uint32 v_conv3_i_4_3_1@uint8;
(*   %xor.i.5.3.1 = xor i32 %conv2.i.5.3.1, %mul.i.5.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_3_1 v_conv2_i_5_3_1 v_mul_i_5_3_1;
(*   %conv3.i.5.3.1 = trunc i32 %xor.i.5.3.1 to i8 *)
split tmp_v_xor_i_5_3_1 v_conv3_i_5_3_1 v_xor_i_5_3_1 8;
vpc v_conv3_i_5_3_1@uint8 v_conv3_i_5_3_1@uint32;
(*   %conv4.i.5.3.1 = zext i8 %conv5.i.4.3.1 to i32 *)
cast v_conv4_i_5_3_1@uint32 v_conv5_i_4_3_1@uint8;
(*   %shr.i.5.3.1 = ashr i32 %conv4.i.5.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i_5_3_1 tmp_to_be_used v_conv4_i_5_3_1 1;
(*   %conv5.i.5.3.1 = trunc i32 %shr.i.5.3.1 to i8 *)
split tmp_v_shr_i_5_3_1 v_conv5_i_5_3_1 v_shr_i_5_3_1 8;
vpc v_conv5_i_5_3_1@uint8 v_conv5_i_5_3_1@uint32;
(*   %conv6.i.5.3.1 = zext i8 %conv7.i.4.3.1 to i32 *)
cast v_conv6_i_5_3_1@uint32 v_conv7_i_4_3_1@uint8;
(*   %shl.i.5.3.1 = shl i32 %conv6.i.5.3.1, 1 *)
shls discard_75 v_shl_i_5_3_1 v_conv6_i_5_3_1 1;
(*   %conv7.i.5.3.1 = trunc i32 %shl.i.5.3.1 to i8 *)
split tmp_v_shl_i_5_3_1 v_conv7_i_5_3_1 v_shl_i_5_3_1 8;
vpc v_conv7_i_5_3_1@uint8 v_conv7_i_5_3_1@uint32;
(*   %conv.i.6.3.1 = zext i8 %conv5.i.5.3.1 to i32 *)
cast v_conv_i_6_3_1@uint32 v_conv5_i_5_3_1@uint8;
(*   %and.i.6.3.1 = and i32 %conv.i.6.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_3_1 v_conv_i_6_3_1 (0x1)@uint32;
(*   %conv1.i.6.3.1 = zext i8 %conv7.i.5.3.1 to i32 *)
cast v_conv1_i_6_3_1@uint32 v_conv7_i_5_3_1@uint8;
(*   %mul.i.6.3.1 = mul nsw i32 %and.i.6.3.1, %conv1.i.6.3.1 *)
mul v_mul_i_6_3_1 v_and_i_6_3_1 v_conv1_i_6_3_1;
(*   %conv2.i.6.3.1 = zext i8 %conv3.i.5.3.1 to i32 *)
cast v_conv2_i_6_3_1@uint32 v_conv3_i_5_3_1@uint8;
(*   %xor.i.6.3.1 = xor i32 %conv2.i.6.3.1, %mul.i.6.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_3_1 v_conv2_i_6_3_1 v_mul_i_6_3_1;
(*   %conv3.i.6.3.1 = trunc i32 %xor.i.6.3.1 to i8 *)
split tmp_v_xor_i_6_3_1 v_conv3_i_6_3_1 v_xor_i_6_3_1 8;
vpc v_conv3_i_6_3_1@uint8 v_conv3_i_6_3_1@uint32;
(*   %conv4.i.6.3.1 = zext i8 %conv5.i.5.3.1 to i32 *)
cast v_conv4_i_6_3_1@uint32 v_conv5_i_5_3_1@uint8;
(*   %shr.i.6.3.1 = ashr i32 %conv4.i.6.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i_6_3_1 tmp_to_be_used v_conv4_i_6_3_1 1;
(*   %conv5.i.6.3.1 = trunc i32 %shr.i.6.3.1 to i8 *)
split tmp_v_shr_i_6_3_1 v_conv5_i_6_3_1 v_shr_i_6_3_1 8;
vpc v_conv5_i_6_3_1@uint8 v_conv5_i_6_3_1@uint32;
(*   %conv6.i.6.3.1 = zext i8 %conv7.i.5.3.1 to i32 *)
cast v_conv6_i_6_3_1@uint32 v_conv7_i_5_3_1@uint8;
(*   %shl.i.6.3.1 = shl i32 %conv6.i.6.3.1, 1 *)
shls discard_76 v_shl_i_6_3_1 v_conv6_i_6_3_1 1;
(*   %conv7.i.6.3.1 = trunc i32 %shl.i.6.3.1 to i8 *)
split tmp_v_shl_i_6_3_1 v_conv7_i_6_3_1 v_shl_i_6_3_1 8;
vpc v_conv7_i_6_3_1@uint8 v_conv7_i_6_3_1@uint32;
(*   %conv.i.7.3.1 = zext i8 %conv5.i.6.3.1 to i32 *)
cast v_conv_i_7_3_1@uint32 v_conv5_i_6_3_1@uint8;
(*   %and.i.7.3.1 = and i32 %conv.i.7.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_3_1 v_conv_i_7_3_1 (0x1)@uint32;
(*   %conv1.i.7.3.1 = zext i8 %conv7.i.6.3.1 to i32 *)
cast v_conv1_i_7_3_1@uint32 v_conv7_i_6_3_1@uint8;
(*   %mul.i.7.3.1 = mul nsw i32 %and.i.7.3.1, %conv1.i.7.3.1 *)
mul v_mul_i_7_3_1 v_and_i_7_3_1 v_conv1_i_7_3_1;
(*   %conv2.i.7.3.1 = zext i8 %conv3.i.6.3.1 to i32 *)
cast v_conv2_i_7_3_1@uint32 v_conv3_i_6_3_1@uint8;
(*   %xor.i.7.3.1 = xor i32 %conv2.i.7.3.1, %mul.i.7.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_3_1 v_conv2_i_7_3_1 v_mul_i_7_3_1;
(*   %conv3.i.7.3.1 = trunc i32 %xor.i.7.3.1 to i8 *)
split tmp_v_xor_i_7_3_1 v_conv3_i_7_3_1 v_xor_i_7_3_1 8;
vpc v_conv3_i_7_3_1@uint8 v_conv3_i_7_3_1@uint32;
(*   %arrayidx45.3.1 = getelementptr inbounds [16 x i8], [16 x i8]* %p0, i64 0, i64 7 *)
(*   store i8 %conv3.i.7.3.1, i8* %arrayidx45.3.1, align 1 *)
mov p0_7 v_conv3_i_7_3_1;
(*   %50 = load i8, i8* %arrayidx47.1, align 1 *)
mov v50 a_1;
(*   %arrayidx51.3.1 = getelementptr inbounds [16 x i8], [16 x i8]* %s, i64 0, i64 7 *)
(*   %51 = load i8, i8* %arrayidx51.3.1, align 1 *)
mov v51 s_7;
(*   %conv.i127.3178.1 = zext i8 %51 to i32 *)
cast v_conv_i127_3178_1@uint32 v51@uint8;
(*   %and.i128.3179.1 = and i32 %conv.i127.3178.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_3179_1 v_conv_i127_3178_1 (0x1)@uint32;
(*   %conv1.i129.3180.1 = zext i8 %50 to i32 *)
cast v_conv1_i129_3180_1@uint32 v50@uint8;
(*   %mul.i130.3181.1 = mul nsw i32 %and.i128.3179.1, %conv1.i129.3180.1 *)
mul v_mul_i130_3181_1 v_and_i128_3179_1 v_conv1_i129_3180_1;
(*   %conv3.i133.3182.1 = trunc i32 %mul.i130.3181.1 to i8 *)
split tmp_v_mul_i130_3181_1 v_conv3_i133_3182_1 v_mul_i130_3181_1 8;
vpc v_conv3_i133_3182_1@uint8 v_conv3_i133_3182_1@uint32;
(*   %conv4.i134.3183.1 = zext i8 %51 to i32 *)
cast v_conv4_i134_3183_1@uint32 v51@uint8;
(*   %shr.i135.3184.1 = ashr i32 %conv4.i134.3183.1, 1 *)
(* You may need to modify here *)
split v_shr_i135_3184_1 tmp_to_be_used v_conv4_i134_3183_1 1;
(*   %conv5.i136.3185.1 = trunc i32 %shr.i135.3184.1 to i8 *)
split tmp_v_shr_i135_3184_1 v_conv5_i136_3185_1 v_shr_i135_3184_1 8;
vpc v_conv5_i136_3185_1@uint8 v_conv5_i136_3185_1@uint32;
(*   %conv6.i137.3186.1 = zext i8 %50 to i32 *)
cast v_conv6_i137_3186_1@uint32 v50@uint8;
(*   %shl.i138.3187.1 = shl i32 %conv6.i137.3186.1, 1 *)
shls discard_77 v_shl_i138_3187_1 v_conv6_i137_3186_1 1;
(*   %conv7.i139.3188.1 = trunc i32 %shl.i138.3187.1 to i8 *)
split tmp_v_shl_i138_3187_1 v_conv7_i139_3188_1 v_shl_i138_3187_1 8;
vpc v_conv7_i139_3188_1@uint8 v_conv7_i139_3188_1@uint32;
(*   %conv.i127.1.3.1 = zext i8 %conv5.i136.3185.1 to i32 *)
cast v_conv_i127_1_3_1@uint32 v_conv5_i136_3185_1@uint8;
(*   %and.i128.1.3.1 = and i32 %conv.i127.1.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1_3_1 v_conv_i127_1_3_1 (0x1)@uint32;
(*   %conv1.i129.1.3.1 = zext i8 %conv7.i139.3188.1 to i32 *)
cast v_conv1_i129_1_3_1@uint32 v_conv7_i139_3188_1@uint8;
(*   %mul.i130.1.3.1 = mul nsw i32 %and.i128.1.3.1, %conv1.i129.1.3.1 *)
mul v_mul_i130_1_3_1 v_and_i128_1_3_1 v_conv1_i129_1_3_1;
(*   %conv2.i131.1.3.1 = zext i8 %conv3.i133.3182.1 to i32 *)
cast v_conv2_i131_1_3_1@uint32 v_conv3_i133_3182_1@uint8;
(*   %xor.i132.1.3.1 = xor i32 %conv2.i131.1.3.1, %mul.i130.1.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_1_3_1 v_conv2_i131_1_3_1 v_mul_i130_1_3_1;
(*   %conv3.i133.1.3.1 = trunc i32 %xor.i132.1.3.1 to i8 *)
split tmp_v_xor_i132_1_3_1 v_conv3_i133_1_3_1 v_xor_i132_1_3_1 8;
vpc v_conv3_i133_1_3_1@uint8 v_conv3_i133_1_3_1@uint32;
(*   %conv4.i134.1.3.1 = zext i8 %conv5.i136.3185.1 to i32 *)
cast v_conv4_i134_1_3_1@uint32 v_conv5_i136_3185_1@uint8;
(*   %shr.i135.1.3.1 = ashr i32 %conv4.i134.1.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i135_1_3_1 tmp_to_be_used v_conv4_i134_1_3_1 1;
(*   %conv5.i136.1.3.1 = trunc i32 %shr.i135.1.3.1 to i8 *)
split tmp_v_shr_i135_1_3_1 v_conv5_i136_1_3_1 v_shr_i135_1_3_1 8;
vpc v_conv5_i136_1_3_1@uint8 v_conv5_i136_1_3_1@uint32;
(*   %conv6.i137.1.3.1 = zext i8 %conv7.i139.3188.1 to i32 *)
cast v_conv6_i137_1_3_1@uint32 v_conv7_i139_3188_1@uint8;
(*   %shl.i138.1.3.1 = shl i32 %conv6.i137.1.3.1, 1 *)
shls discard_78 v_shl_i138_1_3_1 v_conv6_i137_1_3_1 1;
(*   %conv7.i139.1.3.1 = trunc i32 %shl.i138.1.3.1 to i8 *)
split tmp_v_shl_i138_1_3_1 v_conv7_i139_1_3_1 v_shl_i138_1_3_1 8;
vpc v_conv7_i139_1_3_1@uint8 v_conv7_i139_1_3_1@uint32;
(*   %conv.i127.2.3.1 = zext i8 %conv5.i136.1.3.1 to i32 *)
cast v_conv_i127_2_3_1@uint32 v_conv5_i136_1_3_1@uint8;
(*   %and.i128.2.3.1 = and i32 %conv.i127.2.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_2_3_1 v_conv_i127_2_3_1 (0x1)@uint32;
(*   %conv1.i129.2.3.1 = zext i8 %conv7.i139.1.3.1 to i32 *)
cast v_conv1_i129_2_3_1@uint32 v_conv7_i139_1_3_1@uint8;
(*   %mul.i130.2.3.1 = mul nsw i32 %and.i128.2.3.1, %conv1.i129.2.3.1 *)
mul v_mul_i130_2_3_1 v_and_i128_2_3_1 v_conv1_i129_2_3_1;
(*   %conv2.i131.2.3.1 = zext i8 %conv3.i133.1.3.1 to i32 *)
cast v_conv2_i131_2_3_1@uint32 v_conv3_i133_1_3_1@uint8;
(*   %xor.i132.2.3.1 = xor i32 %conv2.i131.2.3.1, %mul.i130.2.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_2_3_1 v_conv2_i131_2_3_1 v_mul_i130_2_3_1;
(*   %conv3.i133.2.3.1 = trunc i32 %xor.i132.2.3.1 to i8 *)
split tmp_v_xor_i132_2_3_1 v_conv3_i133_2_3_1 v_xor_i132_2_3_1 8;
vpc v_conv3_i133_2_3_1@uint8 v_conv3_i133_2_3_1@uint32;
(*   %conv4.i134.2.3.1 = zext i8 %conv5.i136.1.3.1 to i32 *)
cast v_conv4_i134_2_3_1@uint32 v_conv5_i136_1_3_1@uint8;
(*   %shr.i135.2.3.1 = ashr i32 %conv4.i134.2.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i135_2_3_1 tmp_to_be_used v_conv4_i134_2_3_1 1;
(*   %conv5.i136.2.3.1 = trunc i32 %shr.i135.2.3.1 to i8 *)
split tmp_v_shr_i135_2_3_1 v_conv5_i136_2_3_1 v_shr_i135_2_3_1 8;
vpc v_conv5_i136_2_3_1@uint8 v_conv5_i136_2_3_1@uint32;
(*   %conv6.i137.2.3.1 = zext i8 %conv7.i139.1.3.1 to i32 *)
cast v_conv6_i137_2_3_1@uint32 v_conv7_i139_1_3_1@uint8;
(*   %shl.i138.2.3.1 = shl i32 %conv6.i137.2.3.1, 1 *)
shls discard_79 v_shl_i138_2_3_1 v_conv6_i137_2_3_1 1;
(*   %conv7.i139.2.3.1 = trunc i32 %shl.i138.2.3.1 to i8 *)
split tmp_v_shl_i138_2_3_1 v_conv7_i139_2_3_1 v_shl_i138_2_3_1 8;
vpc v_conv7_i139_2_3_1@uint8 v_conv7_i139_2_3_1@uint32;
(*   %conv.i127.3.3.1 = zext i8 %conv5.i136.2.3.1 to i32 *)
cast v_conv_i127_3_3_1@uint32 v_conv5_i136_2_3_1@uint8;
(*   %and.i128.3.3.1 = and i32 %conv.i127.3.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_3_3_1 v_conv_i127_3_3_1 (0x1)@uint32;
(*   %conv1.i129.3.3.1 = zext i8 %conv7.i139.2.3.1 to i32 *)
cast v_conv1_i129_3_3_1@uint32 v_conv7_i139_2_3_1@uint8;
(*   %mul.i130.3.3.1 = mul nsw i32 %and.i128.3.3.1, %conv1.i129.3.3.1 *)
mul v_mul_i130_3_3_1 v_and_i128_3_3_1 v_conv1_i129_3_3_1;
(*   %conv2.i131.3.3.1 = zext i8 %conv3.i133.2.3.1 to i32 *)
cast v_conv2_i131_3_3_1@uint32 v_conv3_i133_2_3_1@uint8;
(*   %xor.i132.3.3.1 = xor i32 %conv2.i131.3.3.1, %mul.i130.3.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_3_3_1 v_conv2_i131_3_3_1 v_mul_i130_3_3_1;
(*   %conv3.i133.3.3.1 = trunc i32 %xor.i132.3.3.1 to i8 *)
split tmp_v_xor_i132_3_3_1 v_conv3_i133_3_3_1 v_xor_i132_3_3_1 8;
vpc v_conv3_i133_3_3_1@uint8 v_conv3_i133_3_3_1@uint32;
(*   %conv4.i134.3.3.1 = zext i8 %conv5.i136.2.3.1 to i32 *)
cast v_conv4_i134_3_3_1@uint32 v_conv5_i136_2_3_1@uint8;
(*   %shr.i135.3.3.1 = ashr i32 %conv4.i134.3.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i135_3_3_1 tmp_to_be_used v_conv4_i134_3_3_1 1;
(*   %conv5.i136.3.3.1 = trunc i32 %shr.i135.3.3.1 to i8 *)
split tmp_v_shr_i135_3_3_1 v_conv5_i136_3_3_1 v_shr_i135_3_3_1 8;
vpc v_conv5_i136_3_3_1@uint8 v_conv5_i136_3_3_1@uint32;
(*   %conv6.i137.3.3.1 = zext i8 %conv7.i139.2.3.1 to i32 *)
cast v_conv6_i137_3_3_1@uint32 v_conv7_i139_2_3_1@uint8;
(*   %shl.i138.3.3.1 = shl i32 %conv6.i137.3.3.1, 1 *)
shls discard_80 v_shl_i138_3_3_1 v_conv6_i137_3_3_1 1;
(*   %conv7.i139.3.3.1 = trunc i32 %shl.i138.3.3.1 to i8 *)
split tmp_v_shl_i138_3_3_1 v_conv7_i139_3_3_1 v_shl_i138_3_3_1 8;
vpc v_conv7_i139_3_3_1@uint8 v_conv7_i139_3_3_1@uint32;
(*   %conv.i127.4.3.1 = zext i8 %conv5.i136.3.3.1 to i32 *)
cast v_conv_i127_4_3_1@uint32 v_conv5_i136_3_3_1@uint8;
(*   %and.i128.4.3.1 = and i32 %conv.i127.4.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_4_3_1 v_conv_i127_4_3_1 (0x1)@uint32;
(*   %conv1.i129.4.3.1 = zext i8 %conv7.i139.3.3.1 to i32 *)
cast v_conv1_i129_4_3_1@uint32 v_conv7_i139_3_3_1@uint8;
(*   %mul.i130.4.3.1 = mul nsw i32 %and.i128.4.3.1, %conv1.i129.4.3.1 *)
mul v_mul_i130_4_3_1 v_and_i128_4_3_1 v_conv1_i129_4_3_1;
(*   %conv2.i131.4.3.1 = zext i8 %conv3.i133.3.3.1 to i32 *)
cast v_conv2_i131_4_3_1@uint32 v_conv3_i133_3_3_1@uint8;
(*   %xor.i132.4.3.1 = xor i32 %conv2.i131.4.3.1, %mul.i130.4.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_4_3_1 v_conv2_i131_4_3_1 v_mul_i130_4_3_1;
(*   %conv3.i133.4.3.1 = trunc i32 %xor.i132.4.3.1 to i8 *)
split tmp_v_xor_i132_4_3_1 v_conv3_i133_4_3_1 v_xor_i132_4_3_1 8;
vpc v_conv3_i133_4_3_1@uint8 v_conv3_i133_4_3_1@uint32;
(*   %conv4.i134.4.3.1 = zext i8 %conv5.i136.3.3.1 to i32 *)
cast v_conv4_i134_4_3_1@uint32 v_conv5_i136_3_3_1@uint8;
(*   %shr.i135.4.3.1 = ashr i32 %conv4.i134.4.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i135_4_3_1 tmp_to_be_used v_conv4_i134_4_3_1 1;
(*   %conv5.i136.4.3.1 = trunc i32 %shr.i135.4.3.1 to i8 *)
split tmp_v_shr_i135_4_3_1 v_conv5_i136_4_3_1 v_shr_i135_4_3_1 8;
vpc v_conv5_i136_4_3_1@uint8 v_conv5_i136_4_3_1@uint32;
(*   %conv6.i137.4.3.1 = zext i8 %conv7.i139.3.3.1 to i32 *)
cast v_conv6_i137_4_3_1@uint32 v_conv7_i139_3_3_1@uint8;
(*   %shl.i138.4.3.1 = shl i32 %conv6.i137.4.3.1, 1 *)
shls discard_81 v_shl_i138_4_3_1 v_conv6_i137_4_3_1 1;
(*   %conv7.i139.4.3.1 = trunc i32 %shl.i138.4.3.1 to i8 *)
split tmp_v_shl_i138_4_3_1 v_conv7_i139_4_3_1 v_shl_i138_4_3_1 8;
vpc v_conv7_i139_4_3_1@uint8 v_conv7_i139_4_3_1@uint32;
(*   %conv.i127.5.3.1 = zext i8 %conv5.i136.4.3.1 to i32 *)
cast v_conv_i127_5_3_1@uint32 v_conv5_i136_4_3_1@uint8;
(*   %and.i128.5.3.1 = and i32 %conv.i127.5.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_5_3_1 v_conv_i127_5_3_1 (0x1)@uint32;
(*   %conv1.i129.5.3.1 = zext i8 %conv7.i139.4.3.1 to i32 *)
cast v_conv1_i129_5_3_1@uint32 v_conv7_i139_4_3_1@uint8;
(*   %mul.i130.5.3.1 = mul nsw i32 %and.i128.5.3.1, %conv1.i129.5.3.1 *)
mul v_mul_i130_5_3_1 v_and_i128_5_3_1 v_conv1_i129_5_3_1;
(*   %conv2.i131.5.3.1 = zext i8 %conv3.i133.4.3.1 to i32 *)
cast v_conv2_i131_5_3_1@uint32 v_conv3_i133_4_3_1@uint8;
(*   %xor.i132.5.3.1 = xor i32 %conv2.i131.5.3.1, %mul.i130.5.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_5_3_1 v_conv2_i131_5_3_1 v_mul_i130_5_3_1;
(*   %conv3.i133.5.3.1 = trunc i32 %xor.i132.5.3.1 to i8 *)
split tmp_v_xor_i132_5_3_1 v_conv3_i133_5_3_1 v_xor_i132_5_3_1 8;
vpc v_conv3_i133_5_3_1@uint8 v_conv3_i133_5_3_1@uint32;
(*   %conv4.i134.5.3.1 = zext i8 %conv5.i136.4.3.1 to i32 *)
cast v_conv4_i134_5_3_1@uint32 v_conv5_i136_4_3_1@uint8;
(*   %shr.i135.5.3.1 = ashr i32 %conv4.i134.5.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i135_5_3_1 tmp_to_be_used v_conv4_i134_5_3_1 1;
(*   %conv5.i136.5.3.1 = trunc i32 %shr.i135.5.3.1 to i8 *)
split tmp_v_shr_i135_5_3_1 v_conv5_i136_5_3_1 v_shr_i135_5_3_1 8;
vpc v_conv5_i136_5_3_1@uint8 v_conv5_i136_5_3_1@uint32;
(*   %conv6.i137.5.3.1 = zext i8 %conv7.i139.4.3.1 to i32 *)
cast v_conv6_i137_5_3_1@uint32 v_conv7_i139_4_3_1@uint8;
(*   %shl.i138.5.3.1 = shl i32 %conv6.i137.5.3.1, 1 *)
shls discard_82 v_shl_i138_5_3_1 v_conv6_i137_5_3_1 1;
(*   %conv7.i139.5.3.1 = trunc i32 %shl.i138.5.3.1 to i8 *)
split tmp_v_shl_i138_5_3_1 v_conv7_i139_5_3_1 v_shl_i138_5_3_1 8;
vpc v_conv7_i139_5_3_1@uint8 v_conv7_i139_5_3_1@uint32;
(*   %conv.i127.6.3.1 = zext i8 %conv5.i136.5.3.1 to i32 *)
cast v_conv_i127_6_3_1@uint32 v_conv5_i136_5_3_1@uint8;
(*   %and.i128.6.3.1 = and i32 %conv.i127.6.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_6_3_1 v_conv_i127_6_3_1 (0x1)@uint32;
(*   %conv1.i129.6.3.1 = zext i8 %conv7.i139.5.3.1 to i32 *)
cast v_conv1_i129_6_3_1@uint32 v_conv7_i139_5_3_1@uint8;
(*   %mul.i130.6.3.1 = mul nsw i32 %and.i128.6.3.1, %conv1.i129.6.3.1 *)
mul v_mul_i130_6_3_1 v_and_i128_6_3_1 v_conv1_i129_6_3_1;
(*   %conv2.i131.6.3.1 = zext i8 %conv3.i133.5.3.1 to i32 *)
cast v_conv2_i131_6_3_1@uint32 v_conv3_i133_5_3_1@uint8;
(*   %xor.i132.6.3.1 = xor i32 %conv2.i131.6.3.1, %mul.i130.6.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_6_3_1 v_conv2_i131_6_3_1 v_mul_i130_6_3_1;
(*   %conv3.i133.6.3.1 = trunc i32 %xor.i132.6.3.1 to i8 *)
split tmp_v_xor_i132_6_3_1 v_conv3_i133_6_3_1 v_xor_i132_6_3_1 8;
vpc v_conv3_i133_6_3_1@uint8 v_conv3_i133_6_3_1@uint32;
(*   %conv4.i134.6.3.1 = zext i8 %conv5.i136.5.3.1 to i32 *)
cast v_conv4_i134_6_3_1@uint32 v_conv5_i136_5_3_1@uint8;
(*   %shr.i135.6.3.1 = ashr i32 %conv4.i134.6.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i135_6_3_1 tmp_to_be_used v_conv4_i134_6_3_1 1;
(*   %conv5.i136.6.3.1 = trunc i32 %shr.i135.6.3.1 to i8 *)
split tmp_v_shr_i135_6_3_1 v_conv5_i136_6_3_1 v_shr_i135_6_3_1 8;
vpc v_conv5_i136_6_3_1@uint8 v_conv5_i136_6_3_1@uint32;
(*   %conv6.i137.6.3.1 = zext i8 %conv7.i139.5.3.1 to i32 *)
cast v_conv6_i137_6_3_1@uint32 v_conv7_i139_5_3_1@uint8;
(*   %shl.i138.6.3.1 = shl i32 %conv6.i137.6.3.1, 1 *)
shls discard_83 v_shl_i138_6_3_1 v_conv6_i137_6_3_1 1;
(*   %conv7.i139.6.3.1 = trunc i32 %shl.i138.6.3.1 to i8 *)
split tmp_v_shl_i138_6_3_1 v_conv7_i139_6_3_1 v_shl_i138_6_3_1 8;
vpc v_conv7_i139_6_3_1@uint8 v_conv7_i139_6_3_1@uint32;
(*   %conv.i127.7.3.1 = zext i8 %conv5.i136.6.3.1 to i32 *)
cast v_conv_i127_7_3_1@uint32 v_conv5_i136_6_3_1@uint8;
(*   %and.i128.7.3.1 = and i32 %conv.i127.7.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_7_3_1 v_conv_i127_7_3_1 (0x1)@uint32;
(*   %conv1.i129.7.3.1 = zext i8 %conv7.i139.6.3.1 to i32 *)
cast v_conv1_i129_7_3_1@uint32 v_conv7_i139_6_3_1@uint8;
(*   %mul.i130.7.3.1 = mul nsw i32 %and.i128.7.3.1, %conv1.i129.7.3.1 *)
mul v_mul_i130_7_3_1 v_and_i128_7_3_1 v_conv1_i129_7_3_1;
(*   %conv2.i131.7.3.1 = zext i8 %conv3.i133.6.3.1 to i32 *)
cast v_conv2_i131_7_3_1@uint32 v_conv3_i133_6_3_1@uint8;
(*   %xor.i132.7.3.1 = xor i32 %conv2.i131.7.3.1, %mul.i130.7.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_7_3_1 v_conv2_i131_7_3_1 v_mul_i130_7_3_1;
(*   %conv3.i133.7.3.1 = trunc i32 %xor.i132.7.3.1 to i8 *)
split tmp_v_xor_i132_7_3_1 v_conv3_i133_7_3_1 v_xor_i132_7_3_1 8;
vpc v_conv3_i133_7_3_1@uint8 v_conv3_i133_7_3_1@uint32;
(*   %arrayidx56.3.1 = getelementptr inbounds [16 x i8], [16 x i8]* %p1, i64 0, i64 7 *)
(*   store i8 %conv3.i133.7.3.1, i8* %arrayidx56.3.1, align 1 *)
mov p1_7 v_conv3_i133_7_3_1;
(*   %arrayidx60.3.1 = getelementptr inbounds [16 x i8], [16 x i8]* %p0, i64 0, i64 7 *)
(*   %52 = load i8, i8* %arrayidx60.3.1, align 1 *)
mov v52 p0_7;
(*   %conv61.3.1 = zext i8 %52 to i32 *)
cast v_conv61_3_1@uint32 v52@uint8;
(*   %arrayidx65.3.1 = getelementptr inbounds [16 x i8], [16 x i8]* %p1, i64 0, i64 7 *)
(*   %53 = load i8, i8* %arrayidx65.3.1, align 1 *)
mov v53 p1_7;
(*   %conv66.3.1 = zext i8 %53 to i32 *)
cast v_conv66_3_1@uint32 v53@uint8;
(*   %xor67.3.1 = xor i32 %conv61.3.1, %conv66.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor67_3_1 v_conv61_3_1 v_conv66_3_1;
(*   %conv68.3.1 = trunc i32 %xor67.3.1 to i8 *)
split tmp_v_xor67_3_1 v_conv68_3_1 v_xor67_3_1 8;
vpc v_conv68_3_1@uint8 v_conv68_3_1@uint32;
(*   %arrayidx72.3.1 = getelementptr inbounds [16 x i8], [16 x i8]* %z, i64 0, i64 7 *)
(*   store i8 %conv68.3.1, i8* %arrayidx72.3.1, align 1 *)
mov z_7 v_conv68_3_1;
(*   %arrayidx34.2 = getelementptr inbounds i8, i8* %a, i64 2 *)
(*   %arrayidx47.2 = getelementptr inbounds i8, i8* %a, i64 2 *)
(*   %54 = load i8, i8* %b, align 1 *)
mov v54 b_0;
(*   %conv.2421 = zext i8 %54 to i32 *)
cast v_conv_2421@uint32 v54@uint8;
(*   %arrayidx26.2423 = getelementptr inbounds i8, i8* %r, i64 8 *)
(*   %55 = load i8, i8* %arrayidx26.2423, align 1 *)
mov v55 r_8;
(*   %conv27.2424 = zext i8 %55 to i32 *)
cast v_conv27_2424@uint32 v55@uint8;
(*   %xor.2425 = xor i32 %conv.2421, %conv27.2424 *)
(* You may need to modify here *)
xor uint32 v_xor_2425 v_conv_2421 v_conv27_2424;
(*   %conv28.2426 = trunc i32 %xor.2425 to i8 *)
split tmp_v_xor_2425 v_conv28_2426 v_xor_2425 8;
vpc v_conv28_2426@uint8 v_conv28_2426@uint32;
(*   %arrayidx32.2428 = getelementptr inbounds [16 x i8], [16 x i8]* %s, i64 0, i64 8 *)
(*   store i8 %conv28.2426, i8* %arrayidx32.2428, align 1 *)
mov s_8 v_conv28_2426;
(*   %56 = load i8, i8* %arrayidx34.2, align 1 *)
mov v56 a_2;
(*   %conv35.2429 = zext i8 %56 to i32 *)
cast v_conv35_2429@uint32 v56@uint8;
(*   %xor36.2430 = xor i32 %conv35.2429, 1 *)
(* You may need to modify here *)
xor uint32 v_xor36_2430 v_conv35_2429 (0x1)@uint32;
(*   %conv37.2431 = trunc i32 %xor36.2430 to i8 *)
split tmp_v_xor36_2430 v_conv37_2431 v_xor36_2430 8;
vpc v_conv37_2431@uint8 v_conv37_2431@uint32;
(*   %arrayidx41.2433 = getelementptr inbounds i8, i8* %r, i64 8 *)
(*   %57 = load i8, i8* %arrayidx41.2433, align 1 *)
mov v57 r_8;
(*   %conv.i.2435 = zext i8 %57 to i32 *)
cast v_conv_i_2435@uint32 v57@uint8;
(*   %and.i.2436 = and i32 %conv.i.2435, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2436 v_conv_i_2435 (0x1)@uint32;
(*   %conv1.i.2437 = zext i8 %conv37.2431 to i32 *)
cast v_conv1_i_2437@uint32 v_conv37_2431@uint8;
(*   %mul.i.2438 = mul nsw i32 %and.i.2436, %conv1.i.2437 *)
mul v_mul_i_2438 v_and_i_2436 v_conv1_i_2437;
(*   %conv3.i.2439 = trunc i32 %mul.i.2438 to i8 *)
split tmp_v_mul_i_2438 v_conv3_i_2439 v_mul_i_2438 8;
vpc v_conv3_i_2439@uint8 v_conv3_i_2439@uint32;
(*   %conv4.i.2440 = zext i8 %57 to i32 *)
cast v_conv4_i_2440@uint32 v57@uint8;
(*   %shr.i.2441 = ashr i32 %conv4.i.2440, 1 *)
(* You may need to modify here *)
split v_shr_i_2441 tmp_to_be_used v_conv4_i_2440 1;
(*   %conv5.i.2442 = trunc i32 %shr.i.2441 to i8 *)
split tmp_v_shr_i_2441 v_conv5_i_2442 v_shr_i_2441 8;
vpc v_conv5_i_2442@uint8 v_conv5_i_2442@uint32;
(*   %conv6.i.2443 = zext i8 %conv37.2431 to i32 *)
cast v_conv6_i_2443@uint32 v_conv37_2431@uint8;
(*   %shl.i.2444 = shl i32 %conv6.i.2443, 1 *)
shls discard_84 v_shl_i_2444 v_conv6_i_2443 1;
(*   %conv7.i.2445 = trunc i32 %shl.i.2444 to i8 *)
split tmp_v_shl_i_2444 v_conv7_i_2445 v_shl_i_2444 8;
vpc v_conv7_i_2445@uint8 v_conv7_i_2445@uint32;
(*   %conv.i.1.2446 = zext i8 %conv5.i.2442 to i32 *)
cast v_conv_i_1_2446@uint32 v_conv5_i_2442@uint8;
(*   %and.i.1.2447 = and i32 %conv.i.1.2446, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_2447 v_conv_i_1_2446 (0x1)@uint32;
(*   %conv1.i.1.2448 = zext i8 %conv7.i.2445 to i32 *)
cast v_conv1_i_1_2448@uint32 v_conv7_i_2445@uint8;
(*   %mul.i.1.2449 = mul nsw i32 %and.i.1.2447, %conv1.i.1.2448 *)
mul v_mul_i_1_2449 v_and_i_1_2447 v_conv1_i_1_2448;
(*   %conv2.i.1.2450 = zext i8 %conv3.i.2439 to i32 *)
cast v_conv2_i_1_2450@uint32 v_conv3_i_2439@uint8;
(*   %xor.i.1.2451 = xor i32 %conv2.i.1.2450, %mul.i.1.2449 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_2451 v_conv2_i_1_2450 v_mul_i_1_2449;
(*   %conv3.i.1.2452 = trunc i32 %xor.i.1.2451 to i8 *)
split tmp_v_xor_i_1_2451 v_conv3_i_1_2452 v_xor_i_1_2451 8;
vpc v_conv3_i_1_2452@uint8 v_conv3_i_1_2452@uint32;
(*   %conv4.i.1.2453 = zext i8 %conv5.i.2442 to i32 *)
cast v_conv4_i_1_2453@uint32 v_conv5_i_2442@uint8;
(*   %shr.i.1.2454 = ashr i32 %conv4.i.1.2453, 1 *)
(* You may need to modify here *)
split v_shr_i_1_2454 tmp_to_be_used v_conv4_i_1_2453 1;
(*   %conv5.i.1.2455 = trunc i32 %shr.i.1.2454 to i8 *)
split tmp_v_shr_i_1_2454 v_conv5_i_1_2455 v_shr_i_1_2454 8;
vpc v_conv5_i_1_2455@uint8 v_conv5_i_1_2455@uint32;
(*   %conv6.i.1.2456 = zext i8 %conv7.i.2445 to i32 *)
cast v_conv6_i_1_2456@uint32 v_conv7_i_2445@uint8;
(*   %shl.i.1.2457 = shl i32 %conv6.i.1.2456, 1 *)
shls discard_85 v_shl_i_1_2457 v_conv6_i_1_2456 1;
(*   %conv7.i.1.2458 = trunc i32 %shl.i.1.2457 to i8 *)
split tmp_v_shl_i_1_2457 v_conv7_i_1_2458 v_shl_i_1_2457 8;
vpc v_conv7_i_1_2458@uint8 v_conv7_i_1_2458@uint32;
(*   %conv.i.2.2459 = zext i8 %conv5.i.1.2455 to i32 *)
cast v_conv_i_2_2459@uint32 v_conv5_i_1_2455@uint8;
(*   %and.i.2.2460 = and i32 %conv.i.2.2459, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_2460 v_conv_i_2_2459 (0x1)@uint32;
(*   %conv1.i.2.2461 = zext i8 %conv7.i.1.2458 to i32 *)
cast v_conv1_i_2_2461@uint32 v_conv7_i_1_2458@uint8;
(*   %mul.i.2.2462 = mul nsw i32 %and.i.2.2460, %conv1.i.2.2461 *)
mul v_mul_i_2_2462 v_and_i_2_2460 v_conv1_i_2_2461;
(*   %conv2.i.2.2463 = zext i8 %conv3.i.1.2452 to i32 *)
cast v_conv2_i_2_2463@uint32 v_conv3_i_1_2452@uint8;
(*   %xor.i.2.2464 = xor i32 %conv2.i.2.2463, %mul.i.2.2462 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_2464 v_conv2_i_2_2463 v_mul_i_2_2462;
(*   %conv3.i.2.2465 = trunc i32 %xor.i.2.2464 to i8 *)
split tmp_v_xor_i_2_2464 v_conv3_i_2_2465 v_xor_i_2_2464 8;
vpc v_conv3_i_2_2465@uint8 v_conv3_i_2_2465@uint32;
(*   %conv4.i.2.2466 = zext i8 %conv5.i.1.2455 to i32 *)
cast v_conv4_i_2_2466@uint32 v_conv5_i_1_2455@uint8;
(*   %shr.i.2.2467 = ashr i32 %conv4.i.2.2466, 1 *)
(* You may need to modify here *)
split v_shr_i_2_2467 tmp_to_be_used v_conv4_i_2_2466 1;
(*   %conv5.i.2.2468 = trunc i32 %shr.i.2.2467 to i8 *)
split tmp_v_shr_i_2_2467 v_conv5_i_2_2468 v_shr_i_2_2467 8;
vpc v_conv5_i_2_2468@uint8 v_conv5_i_2_2468@uint32;
(*   %conv6.i.2.2469 = zext i8 %conv7.i.1.2458 to i32 *)
cast v_conv6_i_2_2469@uint32 v_conv7_i_1_2458@uint8;
(*   %shl.i.2.2470 = shl i32 %conv6.i.2.2469, 1 *)
shls discard_86 v_shl_i_2_2470 v_conv6_i_2_2469 1;
(*   %conv7.i.2.2471 = trunc i32 %shl.i.2.2470 to i8 *)
split tmp_v_shl_i_2_2470 v_conv7_i_2_2471 v_shl_i_2_2470 8;
vpc v_conv7_i_2_2471@uint8 v_conv7_i_2_2471@uint32;
(*   %conv.i.3.2472 = zext i8 %conv5.i.2.2468 to i32 *)
cast v_conv_i_3_2472@uint32 v_conv5_i_2_2468@uint8;
(*   %and.i.3.2473 = and i32 %conv.i.3.2472, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_2473 v_conv_i_3_2472 (0x1)@uint32;
(*   %conv1.i.3.2474 = zext i8 %conv7.i.2.2471 to i32 *)
cast v_conv1_i_3_2474@uint32 v_conv7_i_2_2471@uint8;
(*   %mul.i.3.2475 = mul nsw i32 %and.i.3.2473, %conv1.i.3.2474 *)
mul v_mul_i_3_2475 v_and_i_3_2473 v_conv1_i_3_2474;
(*   %conv2.i.3.2476 = zext i8 %conv3.i.2.2465 to i32 *)
cast v_conv2_i_3_2476@uint32 v_conv3_i_2_2465@uint8;
(*   %xor.i.3.2477 = xor i32 %conv2.i.3.2476, %mul.i.3.2475 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_2477 v_conv2_i_3_2476 v_mul_i_3_2475;
(*   %conv3.i.3.2478 = trunc i32 %xor.i.3.2477 to i8 *)
split tmp_v_xor_i_3_2477 v_conv3_i_3_2478 v_xor_i_3_2477 8;
vpc v_conv3_i_3_2478@uint8 v_conv3_i_3_2478@uint32;
(*   %conv4.i.3.2479 = zext i8 %conv5.i.2.2468 to i32 *)
cast v_conv4_i_3_2479@uint32 v_conv5_i_2_2468@uint8;
(*   %shr.i.3.2480 = ashr i32 %conv4.i.3.2479, 1 *)
(* You may need to modify here *)
split v_shr_i_3_2480 tmp_to_be_used v_conv4_i_3_2479 1;
(*   %conv5.i.3.2481 = trunc i32 %shr.i.3.2480 to i8 *)
split tmp_v_shr_i_3_2480 v_conv5_i_3_2481 v_shr_i_3_2480 8;
vpc v_conv5_i_3_2481@uint8 v_conv5_i_3_2481@uint32;
(*   %conv6.i.3.2482 = zext i8 %conv7.i.2.2471 to i32 *)
cast v_conv6_i_3_2482@uint32 v_conv7_i_2_2471@uint8;
(*   %shl.i.3.2483 = shl i32 %conv6.i.3.2482, 1 *)
shls discard_87 v_shl_i_3_2483 v_conv6_i_3_2482 1;
(*   %conv7.i.3.2484 = trunc i32 %shl.i.3.2483 to i8 *)
split tmp_v_shl_i_3_2483 v_conv7_i_3_2484 v_shl_i_3_2483 8;
vpc v_conv7_i_3_2484@uint8 v_conv7_i_3_2484@uint32;
(*   %conv.i.4.2485 = zext i8 %conv5.i.3.2481 to i32 *)
cast v_conv_i_4_2485@uint32 v_conv5_i_3_2481@uint8;
(*   %and.i.4.2486 = and i32 %conv.i.4.2485, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_2486 v_conv_i_4_2485 (0x1)@uint32;
(*   %conv1.i.4.2487 = zext i8 %conv7.i.3.2484 to i32 *)
cast v_conv1_i_4_2487@uint32 v_conv7_i_3_2484@uint8;
(*   %mul.i.4.2488 = mul nsw i32 %and.i.4.2486, %conv1.i.4.2487 *)
mul v_mul_i_4_2488 v_and_i_4_2486 v_conv1_i_4_2487;
(*   %conv2.i.4.2489 = zext i8 %conv3.i.3.2478 to i32 *)
cast v_conv2_i_4_2489@uint32 v_conv3_i_3_2478@uint8;
(*   %xor.i.4.2490 = xor i32 %conv2.i.4.2489, %mul.i.4.2488 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_2490 v_conv2_i_4_2489 v_mul_i_4_2488;
(*   %conv3.i.4.2491 = trunc i32 %xor.i.4.2490 to i8 *)
split tmp_v_xor_i_4_2490 v_conv3_i_4_2491 v_xor_i_4_2490 8;
vpc v_conv3_i_4_2491@uint8 v_conv3_i_4_2491@uint32;
(*   %conv4.i.4.2492 = zext i8 %conv5.i.3.2481 to i32 *)
cast v_conv4_i_4_2492@uint32 v_conv5_i_3_2481@uint8;
(*   %shr.i.4.2493 = ashr i32 %conv4.i.4.2492, 1 *)
(* You may need to modify here *)
split v_shr_i_4_2493 tmp_to_be_used v_conv4_i_4_2492 1;
(*   %conv5.i.4.2494 = trunc i32 %shr.i.4.2493 to i8 *)
split tmp_v_shr_i_4_2493 v_conv5_i_4_2494 v_shr_i_4_2493 8;
vpc v_conv5_i_4_2494@uint8 v_conv5_i_4_2494@uint32;
(*   %conv6.i.4.2495 = zext i8 %conv7.i.3.2484 to i32 *)
cast v_conv6_i_4_2495@uint32 v_conv7_i_3_2484@uint8;
(*   %shl.i.4.2496 = shl i32 %conv6.i.4.2495, 1 *)
shls discard_88 v_shl_i_4_2496 v_conv6_i_4_2495 1;
(*   %conv7.i.4.2497 = trunc i32 %shl.i.4.2496 to i8 *)
split tmp_v_shl_i_4_2496 v_conv7_i_4_2497 v_shl_i_4_2496 8;
vpc v_conv7_i_4_2497@uint8 v_conv7_i_4_2497@uint32;
(*   %conv.i.5.2498 = zext i8 %conv5.i.4.2494 to i32 *)
cast v_conv_i_5_2498@uint32 v_conv5_i_4_2494@uint8;
(*   %and.i.5.2499 = and i32 %conv.i.5.2498, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_2499 v_conv_i_5_2498 (0x1)@uint32;
(*   %conv1.i.5.2500 = zext i8 %conv7.i.4.2497 to i32 *)
cast v_conv1_i_5_2500@uint32 v_conv7_i_4_2497@uint8;
(*   %mul.i.5.2501 = mul nsw i32 %and.i.5.2499, %conv1.i.5.2500 *)
mul v_mul_i_5_2501 v_and_i_5_2499 v_conv1_i_5_2500;
(*   %conv2.i.5.2502 = zext i8 %conv3.i.4.2491 to i32 *)
cast v_conv2_i_5_2502@uint32 v_conv3_i_4_2491@uint8;
(*   %xor.i.5.2503 = xor i32 %conv2.i.5.2502, %mul.i.5.2501 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_2503 v_conv2_i_5_2502 v_mul_i_5_2501;
(*   %conv3.i.5.2504 = trunc i32 %xor.i.5.2503 to i8 *)
split tmp_v_xor_i_5_2503 v_conv3_i_5_2504 v_xor_i_5_2503 8;
vpc v_conv3_i_5_2504@uint8 v_conv3_i_5_2504@uint32;
(*   %conv4.i.5.2505 = zext i8 %conv5.i.4.2494 to i32 *)
cast v_conv4_i_5_2505@uint32 v_conv5_i_4_2494@uint8;
(*   %shr.i.5.2506 = ashr i32 %conv4.i.5.2505, 1 *)
(* You may need to modify here *)
split v_shr_i_5_2506 tmp_to_be_used v_conv4_i_5_2505 1;
(*   %conv5.i.5.2507 = trunc i32 %shr.i.5.2506 to i8 *)
split tmp_v_shr_i_5_2506 v_conv5_i_5_2507 v_shr_i_5_2506 8;
vpc v_conv5_i_5_2507@uint8 v_conv5_i_5_2507@uint32;
(*   %conv6.i.5.2508 = zext i8 %conv7.i.4.2497 to i32 *)
cast v_conv6_i_5_2508@uint32 v_conv7_i_4_2497@uint8;
(*   %shl.i.5.2509 = shl i32 %conv6.i.5.2508, 1 *)
shls discard_89 v_shl_i_5_2509 v_conv6_i_5_2508 1;
(*   %conv7.i.5.2510 = trunc i32 %shl.i.5.2509 to i8 *)
split tmp_v_shl_i_5_2509 v_conv7_i_5_2510 v_shl_i_5_2509 8;
vpc v_conv7_i_5_2510@uint8 v_conv7_i_5_2510@uint32;
(*   %conv.i.6.2511 = zext i8 %conv5.i.5.2507 to i32 *)
cast v_conv_i_6_2511@uint32 v_conv5_i_5_2507@uint8;
(*   %and.i.6.2512 = and i32 %conv.i.6.2511, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_2512 v_conv_i_6_2511 (0x1)@uint32;
(*   %conv1.i.6.2513 = zext i8 %conv7.i.5.2510 to i32 *)
cast v_conv1_i_6_2513@uint32 v_conv7_i_5_2510@uint8;
(*   %mul.i.6.2514 = mul nsw i32 %and.i.6.2512, %conv1.i.6.2513 *)
mul v_mul_i_6_2514 v_and_i_6_2512 v_conv1_i_6_2513;
(*   %conv2.i.6.2515 = zext i8 %conv3.i.5.2504 to i32 *)
cast v_conv2_i_6_2515@uint32 v_conv3_i_5_2504@uint8;
(*   %xor.i.6.2516 = xor i32 %conv2.i.6.2515, %mul.i.6.2514 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_2516 v_conv2_i_6_2515 v_mul_i_6_2514;
(*   %conv3.i.6.2517 = trunc i32 %xor.i.6.2516 to i8 *)
split tmp_v_xor_i_6_2516 v_conv3_i_6_2517 v_xor_i_6_2516 8;
vpc v_conv3_i_6_2517@uint8 v_conv3_i_6_2517@uint32;
(*   %conv4.i.6.2518 = zext i8 %conv5.i.5.2507 to i32 *)
cast v_conv4_i_6_2518@uint32 v_conv5_i_5_2507@uint8;
(*   %shr.i.6.2519 = ashr i32 %conv4.i.6.2518, 1 *)
(* You may need to modify here *)
split v_shr_i_6_2519 tmp_to_be_used v_conv4_i_6_2518 1;
(*   %conv5.i.6.2520 = trunc i32 %shr.i.6.2519 to i8 *)
split tmp_v_shr_i_6_2519 v_conv5_i_6_2520 v_shr_i_6_2519 8;
vpc v_conv5_i_6_2520@uint8 v_conv5_i_6_2520@uint32;
(*   %conv6.i.6.2521 = zext i8 %conv7.i.5.2510 to i32 *)
cast v_conv6_i_6_2521@uint32 v_conv7_i_5_2510@uint8;
(*   %shl.i.6.2522 = shl i32 %conv6.i.6.2521, 1 *)
shls discard_90 v_shl_i_6_2522 v_conv6_i_6_2521 1;
(*   %conv7.i.6.2523 = trunc i32 %shl.i.6.2522 to i8 *)
split tmp_v_shl_i_6_2522 v_conv7_i_6_2523 v_shl_i_6_2522 8;
vpc v_conv7_i_6_2523@uint8 v_conv7_i_6_2523@uint32;
(*   %conv.i.7.2524 = zext i8 %conv5.i.6.2520 to i32 *)
cast v_conv_i_7_2524@uint32 v_conv5_i_6_2520@uint8;
(*   %and.i.7.2525 = and i32 %conv.i.7.2524, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_2525 v_conv_i_7_2524 (0x1)@uint32;
(*   %conv1.i.7.2526 = zext i8 %conv7.i.6.2523 to i32 *)
cast v_conv1_i_7_2526@uint32 v_conv7_i_6_2523@uint8;
(*   %mul.i.7.2527 = mul nsw i32 %and.i.7.2525, %conv1.i.7.2526 *)
mul v_mul_i_7_2527 v_and_i_7_2525 v_conv1_i_7_2526;
(*   %conv2.i.7.2528 = zext i8 %conv3.i.6.2517 to i32 *)
cast v_conv2_i_7_2528@uint32 v_conv3_i_6_2517@uint8;
(*   %xor.i.7.2529 = xor i32 %conv2.i.7.2528, %mul.i.7.2527 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_2529 v_conv2_i_7_2528 v_mul_i_7_2527;
(*   %conv3.i.7.2530 = trunc i32 %xor.i.7.2529 to i8 *)
split tmp_v_xor_i_7_2529 v_conv3_i_7_2530 v_xor_i_7_2529 8;
vpc v_conv3_i_7_2530@uint8 v_conv3_i_7_2530@uint32;
(*   %arrayidx45.2534 = getelementptr inbounds [16 x i8], [16 x i8]* %p0, i64 0, i64 8 *)
(*   store i8 %conv3.i.7.2530, i8* %arrayidx45.2534, align 1 *)
mov p0_8 v_conv3_i_7_2530;
(*   %58 = load i8, i8* %arrayidx47.2, align 1 *)
mov v58 a_2;
(*   %arrayidx51.2536 = getelementptr inbounds [16 x i8], [16 x i8]* %s, i64 0, i64 8 *)
(*   %59 = load i8, i8* %arrayidx51.2536, align 1 *)
mov v59 s_8;
(*   %conv.i127.2538 = zext i8 %59 to i32 *)
cast v_conv_i127_2538@uint32 v59@uint8;
(*   %and.i128.2539 = and i32 %conv.i127.2538, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_2539 v_conv_i127_2538 (0x1)@uint32;
(*   %conv1.i129.2540 = zext i8 %58 to i32 *)
cast v_conv1_i129_2540@uint32 v58@uint8;
(*   %mul.i130.2541 = mul nsw i32 %and.i128.2539, %conv1.i129.2540 *)
mul v_mul_i130_2541 v_and_i128_2539 v_conv1_i129_2540;
(*   %conv3.i133.2542 = trunc i32 %mul.i130.2541 to i8 *)
split tmp_v_mul_i130_2541 v_conv3_i133_2542 v_mul_i130_2541 8;
vpc v_conv3_i133_2542@uint8 v_conv3_i133_2542@uint32;
(*   %conv4.i134.2543 = zext i8 %59 to i32 *)
cast v_conv4_i134_2543@uint32 v59@uint8;
(*   %shr.i135.2544 = ashr i32 %conv4.i134.2543, 1 *)
(* You may need to modify here *)
split v_shr_i135_2544 tmp_to_be_used v_conv4_i134_2543 1;
(*   %conv5.i136.2545 = trunc i32 %shr.i135.2544 to i8 *)
split tmp_v_shr_i135_2544 v_conv5_i136_2545 v_shr_i135_2544 8;
vpc v_conv5_i136_2545@uint8 v_conv5_i136_2545@uint32;
(*   %conv6.i137.2546 = zext i8 %58 to i32 *)
cast v_conv6_i137_2546@uint32 v58@uint8;
(*   %shl.i138.2547 = shl i32 %conv6.i137.2546, 1 *)
shls discard_91 v_shl_i138_2547 v_conv6_i137_2546 1;
(*   %conv7.i139.2548 = trunc i32 %shl.i138.2547 to i8 *)
split tmp_v_shl_i138_2547 v_conv7_i139_2548 v_shl_i138_2547 8;
vpc v_conv7_i139_2548@uint8 v_conv7_i139_2548@uint32;
(*   %conv.i127.1.2549 = zext i8 %conv5.i136.2545 to i32 *)
cast v_conv_i127_1_2549@uint32 v_conv5_i136_2545@uint8;
(*   %and.i128.1.2550 = and i32 %conv.i127.1.2549, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1_2550 v_conv_i127_1_2549 (0x1)@uint32;
(*   %conv1.i129.1.2551 = zext i8 %conv7.i139.2548 to i32 *)
cast v_conv1_i129_1_2551@uint32 v_conv7_i139_2548@uint8;
(*   %mul.i130.1.2552 = mul nsw i32 %and.i128.1.2550, %conv1.i129.1.2551 *)
mul v_mul_i130_1_2552 v_and_i128_1_2550 v_conv1_i129_1_2551;
(*   %conv2.i131.1.2553 = zext i8 %conv3.i133.2542 to i32 *)
cast v_conv2_i131_1_2553@uint32 v_conv3_i133_2542@uint8;
(*   %xor.i132.1.2554 = xor i32 %conv2.i131.1.2553, %mul.i130.1.2552 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_1_2554 v_conv2_i131_1_2553 v_mul_i130_1_2552;
(*   %conv3.i133.1.2555 = trunc i32 %xor.i132.1.2554 to i8 *)
split tmp_v_xor_i132_1_2554 v_conv3_i133_1_2555 v_xor_i132_1_2554 8;
vpc v_conv3_i133_1_2555@uint8 v_conv3_i133_1_2555@uint32;
(*   %conv4.i134.1.2556 = zext i8 %conv5.i136.2545 to i32 *)
cast v_conv4_i134_1_2556@uint32 v_conv5_i136_2545@uint8;
(*   %shr.i135.1.2557 = ashr i32 %conv4.i134.1.2556, 1 *)
(* You may need to modify here *)
split v_shr_i135_1_2557 tmp_to_be_used v_conv4_i134_1_2556 1;
(*   %conv5.i136.1.2558 = trunc i32 %shr.i135.1.2557 to i8 *)
split tmp_v_shr_i135_1_2557 v_conv5_i136_1_2558 v_shr_i135_1_2557 8;
vpc v_conv5_i136_1_2558@uint8 v_conv5_i136_1_2558@uint32;
(*   %conv6.i137.1.2559 = zext i8 %conv7.i139.2548 to i32 *)
cast v_conv6_i137_1_2559@uint32 v_conv7_i139_2548@uint8;
(*   %shl.i138.1.2560 = shl i32 %conv6.i137.1.2559, 1 *)
shls discard_92 v_shl_i138_1_2560 v_conv6_i137_1_2559 1;
(*   %conv7.i139.1.2561 = trunc i32 %shl.i138.1.2560 to i8 *)
split tmp_v_shl_i138_1_2560 v_conv7_i139_1_2561 v_shl_i138_1_2560 8;
vpc v_conv7_i139_1_2561@uint8 v_conv7_i139_1_2561@uint32;
(*   %conv.i127.2.2562 = zext i8 %conv5.i136.1.2558 to i32 *)
cast v_conv_i127_2_2562@uint32 v_conv5_i136_1_2558@uint8;
(*   %and.i128.2.2563 = and i32 %conv.i127.2.2562, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_2_2563 v_conv_i127_2_2562 (0x1)@uint32;
(*   %conv1.i129.2.2564 = zext i8 %conv7.i139.1.2561 to i32 *)
cast v_conv1_i129_2_2564@uint32 v_conv7_i139_1_2561@uint8;
(*   %mul.i130.2.2565 = mul nsw i32 %and.i128.2.2563, %conv1.i129.2.2564 *)
mul v_mul_i130_2_2565 v_and_i128_2_2563 v_conv1_i129_2_2564;
(*   %conv2.i131.2.2566 = zext i8 %conv3.i133.1.2555 to i32 *)
cast v_conv2_i131_2_2566@uint32 v_conv3_i133_1_2555@uint8;
(*   %xor.i132.2.2567 = xor i32 %conv2.i131.2.2566, %mul.i130.2.2565 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_2_2567 v_conv2_i131_2_2566 v_mul_i130_2_2565;
(*   %conv3.i133.2.2568 = trunc i32 %xor.i132.2.2567 to i8 *)
split tmp_v_xor_i132_2_2567 v_conv3_i133_2_2568 v_xor_i132_2_2567 8;
vpc v_conv3_i133_2_2568@uint8 v_conv3_i133_2_2568@uint32;
(*   %conv4.i134.2.2569 = zext i8 %conv5.i136.1.2558 to i32 *)
cast v_conv4_i134_2_2569@uint32 v_conv5_i136_1_2558@uint8;
(*   %shr.i135.2.2570 = ashr i32 %conv4.i134.2.2569, 1 *)
(* You may need to modify here *)
split v_shr_i135_2_2570 tmp_to_be_used v_conv4_i134_2_2569 1;
(*   %conv5.i136.2.2571 = trunc i32 %shr.i135.2.2570 to i8 *)
split tmp_v_shr_i135_2_2570 v_conv5_i136_2_2571 v_shr_i135_2_2570 8;
vpc v_conv5_i136_2_2571@uint8 v_conv5_i136_2_2571@uint32;
(*   %conv6.i137.2.2572 = zext i8 %conv7.i139.1.2561 to i32 *)
cast v_conv6_i137_2_2572@uint32 v_conv7_i139_1_2561@uint8;
(*   %shl.i138.2.2573 = shl i32 %conv6.i137.2.2572, 1 *)
shls discard_93 v_shl_i138_2_2573 v_conv6_i137_2_2572 1;
(*   %conv7.i139.2.2574 = trunc i32 %shl.i138.2.2573 to i8 *)
split tmp_v_shl_i138_2_2573 v_conv7_i139_2_2574 v_shl_i138_2_2573 8;
vpc v_conv7_i139_2_2574@uint8 v_conv7_i139_2_2574@uint32;
(*   %conv.i127.3.2575 = zext i8 %conv5.i136.2.2571 to i32 *)
cast v_conv_i127_3_2575@uint32 v_conv5_i136_2_2571@uint8;
(*   %and.i128.3.2576 = and i32 %conv.i127.3.2575, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_3_2576 v_conv_i127_3_2575 (0x1)@uint32;
(*   %conv1.i129.3.2577 = zext i8 %conv7.i139.2.2574 to i32 *)
cast v_conv1_i129_3_2577@uint32 v_conv7_i139_2_2574@uint8;
(*   %mul.i130.3.2578 = mul nsw i32 %and.i128.3.2576, %conv1.i129.3.2577 *)
mul v_mul_i130_3_2578 v_and_i128_3_2576 v_conv1_i129_3_2577;
(*   %conv2.i131.3.2579 = zext i8 %conv3.i133.2.2568 to i32 *)
cast v_conv2_i131_3_2579@uint32 v_conv3_i133_2_2568@uint8;
(*   %xor.i132.3.2580 = xor i32 %conv2.i131.3.2579, %mul.i130.3.2578 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_3_2580 v_conv2_i131_3_2579 v_mul_i130_3_2578;
(*   %conv3.i133.3.2581 = trunc i32 %xor.i132.3.2580 to i8 *)
split tmp_v_xor_i132_3_2580 v_conv3_i133_3_2581 v_xor_i132_3_2580 8;
vpc v_conv3_i133_3_2581@uint8 v_conv3_i133_3_2581@uint32;
(*   %conv4.i134.3.2582 = zext i8 %conv5.i136.2.2571 to i32 *)
cast v_conv4_i134_3_2582@uint32 v_conv5_i136_2_2571@uint8;
(*   %shr.i135.3.2583 = ashr i32 %conv4.i134.3.2582, 1 *)
(* You may need to modify here *)
split v_shr_i135_3_2583 tmp_to_be_used v_conv4_i134_3_2582 1;
(*   %conv5.i136.3.2584 = trunc i32 %shr.i135.3.2583 to i8 *)
split tmp_v_shr_i135_3_2583 v_conv5_i136_3_2584 v_shr_i135_3_2583 8;
vpc v_conv5_i136_3_2584@uint8 v_conv5_i136_3_2584@uint32;
(*   %conv6.i137.3.2585 = zext i8 %conv7.i139.2.2574 to i32 *)
cast v_conv6_i137_3_2585@uint32 v_conv7_i139_2_2574@uint8;
(*   %shl.i138.3.2586 = shl i32 %conv6.i137.3.2585, 1 *)
shls discard_94 v_shl_i138_3_2586 v_conv6_i137_3_2585 1;
(*   %conv7.i139.3.2587 = trunc i32 %shl.i138.3.2586 to i8 *)
split tmp_v_shl_i138_3_2586 v_conv7_i139_3_2587 v_shl_i138_3_2586 8;
vpc v_conv7_i139_3_2587@uint8 v_conv7_i139_3_2587@uint32;
(*   %conv.i127.4.2588 = zext i8 %conv5.i136.3.2584 to i32 *)
cast v_conv_i127_4_2588@uint32 v_conv5_i136_3_2584@uint8;
(*   %and.i128.4.2589 = and i32 %conv.i127.4.2588, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_4_2589 v_conv_i127_4_2588 (0x1)@uint32;
(*   %conv1.i129.4.2590 = zext i8 %conv7.i139.3.2587 to i32 *)
cast v_conv1_i129_4_2590@uint32 v_conv7_i139_3_2587@uint8;
(*   %mul.i130.4.2591 = mul nsw i32 %and.i128.4.2589, %conv1.i129.4.2590 *)
mul v_mul_i130_4_2591 v_and_i128_4_2589 v_conv1_i129_4_2590;
(*   %conv2.i131.4.2592 = zext i8 %conv3.i133.3.2581 to i32 *)
cast v_conv2_i131_4_2592@uint32 v_conv3_i133_3_2581@uint8;
(*   %xor.i132.4.2593 = xor i32 %conv2.i131.4.2592, %mul.i130.4.2591 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_4_2593 v_conv2_i131_4_2592 v_mul_i130_4_2591;
(*   %conv3.i133.4.2594 = trunc i32 %xor.i132.4.2593 to i8 *)
split tmp_v_xor_i132_4_2593 v_conv3_i133_4_2594 v_xor_i132_4_2593 8;
vpc v_conv3_i133_4_2594@uint8 v_conv3_i133_4_2594@uint32;
(*   %conv4.i134.4.2595 = zext i8 %conv5.i136.3.2584 to i32 *)
cast v_conv4_i134_4_2595@uint32 v_conv5_i136_3_2584@uint8;
(*   %shr.i135.4.2596 = ashr i32 %conv4.i134.4.2595, 1 *)
(* You may need to modify here *)
split v_shr_i135_4_2596 tmp_to_be_used v_conv4_i134_4_2595 1;
(*   %conv5.i136.4.2597 = trunc i32 %shr.i135.4.2596 to i8 *)
split tmp_v_shr_i135_4_2596 v_conv5_i136_4_2597 v_shr_i135_4_2596 8;
vpc v_conv5_i136_4_2597@uint8 v_conv5_i136_4_2597@uint32;
(*   %conv6.i137.4.2598 = zext i8 %conv7.i139.3.2587 to i32 *)
cast v_conv6_i137_4_2598@uint32 v_conv7_i139_3_2587@uint8;
(*   %shl.i138.4.2599 = shl i32 %conv6.i137.4.2598, 1 *)
shls discard_95 v_shl_i138_4_2599 v_conv6_i137_4_2598 1;
(*   %conv7.i139.4.2600 = trunc i32 %shl.i138.4.2599 to i8 *)
split tmp_v_shl_i138_4_2599 v_conv7_i139_4_2600 v_shl_i138_4_2599 8;
vpc v_conv7_i139_4_2600@uint8 v_conv7_i139_4_2600@uint32;
(*   %conv.i127.5.2601 = zext i8 %conv5.i136.4.2597 to i32 *)
cast v_conv_i127_5_2601@uint32 v_conv5_i136_4_2597@uint8;
(*   %and.i128.5.2602 = and i32 %conv.i127.5.2601, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_5_2602 v_conv_i127_5_2601 (0x1)@uint32;
(*   %conv1.i129.5.2603 = zext i8 %conv7.i139.4.2600 to i32 *)
cast v_conv1_i129_5_2603@uint32 v_conv7_i139_4_2600@uint8;
(*   %mul.i130.5.2604 = mul nsw i32 %and.i128.5.2602, %conv1.i129.5.2603 *)
mul v_mul_i130_5_2604 v_and_i128_5_2602 v_conv1_i129_5_2603;
(*   %conv2.i131.5.2605 = zext i8 %conv3.i133.4.2594 to i32 *)
cast v_conv2_i131_5_2605@uint32 v_conv3_i133_4_2594@uint8;
(*   %xor.i132.5.2606 = xor i32 %conv2.i131.5.2605, %mul.i130.5.2604 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_5_2606 v_conv2_i131_5_2605 v_mul_i130_5_2604;
(*   %conv3.i133.5.2607 = trunc i32 %xor.i132.5.2606 to i8 *)
split tmp_v_xor_i132_5_2606 v_conv3_i133_5_2607 v_xor_i132_5_2606 8;
vpc v_conv3_i133_5_2607@uint8 v_conv3_i133_5_2607@uint32;
(*   %conv4.i134.5.2608 = zext i8 %conv5.i136.4.2597 to i32 *)
cast v_conv4_i134_5_2608@uint32 v_conv5_i136_4_2597@uint8;
(*   %shr.i135.5.2609 = ashr i32 %conv4.i134.5.2608, 1 *)
(* You may need to modify here *)
split v_shr_i135_5_2609 tmp_to_be_used v_conv4_i134_5_2608 1;
(*   %conv5.i136.5.2610 = trunc i32 %shr.i135.5.2609 to i8 *)
split tmp_v_shr_i135_5_2609 v_conv5_i136_5_2610 v_shr_i135_5_2609 8;
vpc v_conv5_i136_5_2610@uint8 v_conv5_i136_5_2610@uint32;
(*   %conv6.i137.5.2611 = zext i8 %conv7.i139.4.2600 to i32 *)
cast v_conv6_i137_5_2611@uint32 v_conv7_i139_4_2600@uint8;
(*   %shl.i138.5.2612 = shl i32 %conv6.i137.5.2611, 1 *)
shls discard_96 v_shl_i138_5_2612 v_conv6_i137_5_2611 1;
(*   %conv7.i139.5.2613 = trunc i32 %shl.i138.5.2612 to i8 *)
split tmp_v_shl_i138_5_2612 v_conv7_i139_5_2613 v_shl_i138_5_2612 8;
vpc v_conv7_i139_5_2613@uint8 v_conv7_i139_5_2613@uint32;
(*   %conv.i127.6.2614 = zext i8 %conv5.i136.5.2610 to i32 *)
cast v_conv_i127_6_2614@uint32 v_conv5_i136_5_2610@uint8;
(*   %and.i128.6.2615 = and i32 %conv.i127.6.2614, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_6_2615 v_conv_i127_6_2614 (0x1)@uint32;
(*   %conv1.i129.6.2616 = zext i8 %conv7.i139.5.2613 to i32 *)
cast v_conv1_i129_6_2616@uint32 v_conv7_i139_5_2613@uint8;
(*   %mul.i130.6.2617 = mul nsw i32 %and.i128.6.2615, %conv1.i129.6.2616 *)
mul v_mul_i130_6_2617 v_and_i128_6_2615 v_conv1_i129_6_2616;
(*   %conv2.i131.6.2618 = zext i8 %conv3.i133.5.2607 to i32 *)
cast v_conv2_i131_6_2618@uint32 v_conv3_i133_5_2607@uint8;
(*   %xor.i132.6.2619 = xor i32 %conv2.i131.6.2618, %mul.i130.6.2617 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_6_2619 v_conv2_i131_6_2618 v_mul_i130_6_2617;
(*   %conv3.i133.6.2620 = trunc i32 %xor.i132.6.2619 to i8 *)
split tmp_v_xor_i132_6_2619 v_conv3_i133_6_2620 v_xor_i132_6_2619 8;
vpc v_conv3_i133_6_2620@uint8 v_conv3_i133_6_2620@uint32;
(*   %conv4.i134.6.2621 = zext i8 %conv5.i136.5.2610 to i32 *)
cast v_conv4_i134_6_2621@uint32 v_conv5_i136_5_2610@uint8;
(*   %shr.i135.6.2622 = ashr i32 %conv4.i134.6.2621, 1 *)
(* You may need to modify here *)
split v_shr_i135_6_2622 tmp_to_be_used v_conv4_i134_6_2621 1;
(*   %conv5.i136.6.2623 = trunc i32 %shr.i135.6.2622 to i8 *)
split tmp_v_shr_i135_6_2622 v_conv5_i136_6_2623 v_shr_i135_6_2622 8;
vpc v_conv5_i136_6_2623@uint8 v_conv5_i136_6_2623@uint32;
(*   %conv6.i137.6.2624 = zext i8 %conv7.i139.5.2613 to i32 *)
cast v_conv6_i137_6_2624@uint32 v_conv7_i139_5_2613@uint8;
(*   %shl.i138.6.2625 = shl i32 %conv6.i137.6.2624, 1 *)
shls discard_97 v_shl_i138_6_2625 v_conv6_i137_6_2624 1;
(*   %conv7.i139.6.2626 = trunc i32 %shl.i138.6.2625 to i8 *)
split tmp_v_shl_i138_6_2625 v_conv7_i139_6_2626 v_shl_i138_6_2625 8;
vpc v_conv7_i139_6_2626@uint8 v_conv7_i139_6_2626@uint32;
(*   %conv.i127.7.2627 = zext i8 %conv5.i136.6.2623 to i32 *)
cast v_conv_i127_7_2627@uint32 v_conv5_i136_6_2623@uint8;
(*   %and.i128.7.2628 = and i32 %conv.i127.7.2627, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_7_2628 v_conv_i127_7_2627 (0x1)@uint32;
(*   %conv1.i129.7.2629 = zext i8 %conv7.i139.6.2626 to i32 *)
cast v_conv1_i129_7_2629@uint32 v_conv7_i139_6_2626@uint8;
(*   %mul.i130.7.2630 = mul nsw i32 %and.i128.7.2628, %conv1.i129.7.2629 *)
mul v_mul_i130_7_2630 v_and_i128_7_2628 v_conv1_i129_7_2629;
(*   %conv2.i131.7.2631 = zext i8 %conv3.i133.6.2620 to i32 *)
cast v_conv2_i131_7_2631@uint32 v_conv3_i133_6_2620@uint8;
(*   %xor.i132.7.2632 = xor i32 %conv2.i131.7.2631, %mul.i130.7.2630 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_7_2632 v_conv2_i131_7_2631 v_mul_i130_7_2630;
(*   %conv3.i133.7.2633 = trunc i32 %xor.i132.7.2632 to i8 *)
split tmp_v_xor_i132_7_2632 v_conv3_i133_7_2633 v_xor_i132_7_2632 8;
vpc v_conv3_i133_7_2633@uint8 v_conv3_i133_7_2633@uint32;
(*   %arrayidx56.2637 = getelementptr inbounds [16 x i8], [16 x i8]* %p1, i64 0, i64 8 *)
(*   store i8 %conv3.i133.7.2633, i8* %arrayidx56.2637, align 1 *)
mov p1_8 v_conv3_i133_7_2633;
(*   %arrayidx60.2639 = getelementptr inbounds [16 x i8], [16 x i8]* %p0, i64 0, i64 8 *)
(*   %60 = load i8, i8* %arrayidx60.2639, align 1 *)
mov v60 p0_8;
(*   %conv61.2640 = zext i8 %60 to i32 *)
cast v_conv61_2640@uint32 v60@uint8;
(*   %arrayidx65.2642 = getelementptr inbounds [16 x i8], [16 x i8]* %p1, i64 0, i64 8 *)
(*   %61 = load i8, i8* %arrayidx65.2642, align 1 *)
mov v61 p1_8;
(*   %conv66.2643 = zext i8 %61 to i32 *)
cast v_conv66_2643@uint32 v61@uint8;
(*   %xor67.2644 = xor i32 %conv61.2640, %conv66.2643 *)
(* You may need to modify here *)
xor uint32 v_xor67_2644 v_conv61_2640 v_conv66_2643;
(*   %conv68.2645 = trunc i32 %xor67.2644 to i8 *)
split tmp_v_xor67_2644 v_conv68_2645 v_xor67_2644 8;
vpc v_conv68_2645@uint8 v_conv68_2645@uint32;
(*   %arrayidx72.2647 = getelementptr inbounds [16 x i8], [16 x i8]* %z, i64 0, i64 8 *)
(*   store i8 %conv68.2645, i8* %arrayidx72.2647, align 1 *)
mov z_8 v_conv68_2645;
(*   %arrayidx22.1.2 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %62 = load i8, i8* %arrayidx22.1.2, align 1 *)
mov v62 b_1;
(*   %conv.1.2 = zext i8 %62 to i32 *)
cast v_conv_1_2@uint32 v62@uint8;
(*   %arrayidx26.1.2 = getelementptr inbounds i8, i8* %r, i64 9 *)
(*   %63 = load i8, i8* %arrayidx26.1.2, align 1 *)
mov v63 r_9;
(*   %conv27.1.2 = zext i8 %63 to i32 *)
cast v_conv27_1_2@uint32 v63@uint8;
(*   %xor.1.2 = xor i32 %conv.1.2, %conv27.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_1_2 v_conv_1_2 v_conv27_1_2;
(*   %conv28.1.2 = trunc i32 %xor.1.2 to i8 *)
split tmp_v_xor_1_2 v_conv28_1_2 v_xor_1_2 8;
vpc v_conv28_1_2@uint8 v_conv28_1_2@uint32;
(*   %arrayidx32.1.2 = getelementptr inbounds [16 x i8], [16 x i8]* %s, i64 0, i64 9 *)
(*   store i8 %conv28.1.2, i8* %arrayidx32.1.2, align 1 *)
mov s_9 v_conv28_1_2;
(*   %64 = load i8, i8* %arrayidx34.2, align 1 *)
mov v64 a_2;
(*   %conv35.1.2 = zext i8 %64 to i32 *)
cast v_conv35_1_2@uint32 v64@uint8;
(*   %xor36.1.2 = xor i32 %conv35.1.2, 1 *)
(* You may need to modify here *)
xor uint32 v_xor36_1_2 v_conv35_1_2 (0x1)@uint32;
(*   %conv37.1.2 = trunc i32 %xor36.1.2 to i8 *)
split tmp_v_xor36_1_2 v_conv37_1_2 v_xor36_1_2 8;
vpc v_conv37_1_2@uint8 v_conv37_1_2@uint32;
(*   %arrayidx41.1.2 = getelementptr inbounds i8, i8* %r, i64 9 *)
(*   %65 = load i8, i8* %arrayidx41.1.2, align 1 *)
mov v65 r_9;
(*   %conv.i.1123.2 = zext i8 %65 to i32 *)
cast v_conv_i_1123_2@uint32 v65@uint8;
(*   %and.i.1124.2 = and i32 %conv.i.1123.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1124_2 v_conv_i_1123_2 (0x1)@uint32;
(*   %conv1.i.1125.2 = zext i8 %conv37.1.2 to i32 *)
cast v_conv1_i_1125_2@uint32 v_conv37_1_2@uint8;
(*   %mul.i.1126.2 = mul nsw i32 %and.i.1124.2, %conv1.i.1125.2 *)
mul v_mul_i_1126_2 v_and_i_1124_2 v_conv1_i_1125_2;
(*   %conv3.i.1127.2 = trunc i32 %mul.i.1126.2 to i8 *)
split tmp_v_mul_i_1126_2 v_conv3_i_1127_2 v_mul_i_1126_2 8;
vpc v_conv3_i_1127_2@uint8 v_conv3_i_1127_2@uint32;
(*   %conv4.i.1128.2 = zext i8 %65 to i32 *)
cast v_conv4_i_1128_2@uint32 v65@uint8;
(*   %shr.i.1129.2 = ashr i32 %conv4.i.1128.2, 1 *)
(* You may need to modify here *)
split v_shr_i_1129_2 tmp_to_be_used v_conv4_i_1128_2 1;
(*   %conv5.i.1130.2 = trunc i32 %shr.i.1129.2 to i8 *)
split tmp_v_shr_i_1129_2 v_conv5_i_1130_2 v_shr_i_1129_2 8;
vpc v_conv5_i_1130_2@uint8 v_conv5_i_1130_2@uint32;
(*   %conv6.i.1131.2 = zext i8 %conv37.1.2 to i32 *)
cast v_conv6_i_1131_2@uint32 v_conv37_1_2@uint8;
(*   %shl.i.1132.2 = shl i32 %conv6.i.1131.2, 1 *)
shls discard_98 v_shl_i_1132_2 v_conv6_i_1131_2 1;
(*   %conv7.i.1133.2 = trunc i32 %shl.i.1132.2 to i8 *)
split tmp_v_shl_i_1132_2 v_conv7_i_1133_2 v_shl_i_1132_2 8;
vpc v_conv7_i_1133_2@uint8 v_conv7_i_1133_2@uint32;
(*   %conv.i.1.1.2 = zext i8 %conv5.i.1130.2 to i32 *)
cast v_conv_i_1_1_2@uint32 v_conv5_i_1130_2@uint8;
(*   %and.i.1.1.2 = and i32 %conv.i.1.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_1_2 v_conv_i_1_1_2 (0x1)@uint32;
(*   %conv1.i.1.1.2 = zext i8 %conv7.i.1133.2 to i32 *)
cast v_conv1_i_1_1_2@uint32 v_conv7_i_1133_2@uint8;
(*   %mul.i.1.1.2 = mul nsw i32 %and.i.1.1.2, %conv1.i.1.1.2 *)
mul v_mul_i_1_1_2 v_and_i_1_1_2 v_conv1_i_1_1_2;
(*   %conv2.i.1.1.2 = zext i8 %conv3.i.1127.2 to i32 *)
cast v_conv2_i_1_1_2@uint32 v_conv3_i_1127_2@uint8;
(*   %xor.i.1.1.2 = xor i32 %conv2.i.1.1.2, %mul.i.1.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_1_2 v_conv2_i_1_1_2 v_mul_i_1_1_2;
(*   %conv3.i.1.1.2 = trunc i32 %xor.i.1.1.2 to i8 *)
split tmp_v_xor_i_1_1_2 v_conv3_i_1_1_2 v_xor_i_1_1_2 8;
vpc v_conv3_i_1_1_2@uint8 v_conv3_i_1_1_2@uint32;
(*   %conv4.i.1.1.2 = zext i8 %conv5.i.1130.2 to i32 *)
cast v_conv4_i_1_1_2@uint32 v_conv5_i_1130_2@uint8;
(*   %shr.i.1.1.2 = ashr i32 %conv4.i.1.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_1_1_2 tmp_to_be_used v_conv4_i_1_1_2 1;
(*   %conv5.i.1.1.2 = trunc i32 %shr.i.1.1.2 to i8 *)
split tmp_v_shr_i_1_1_2 v_conv5_i_1_1_2 v_shr_i_1_1_2 8;
vpc v_conv5_i_1_1_2@uint8 v_conv5_i_1_1_2@uint32;
(*   %conv6.i.1.1.2 = zext i8 %conv7.i.1133.2 to i32 *)
cast v_conv6_i_1_1_2@uint32 v_conv7_i_1133_2@uint8;
(*   %shl.i.1.1.2 = shl i32 %conv6.i.1.1.2, 1 *)
shls discard_99 v_shl_i_1_1_2 v_conv6_i_1_1_2 1;
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
shls discard_100 v_shl_i_2_1_2 v_conv6_i_2_1_2 1;
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
shls discard_101 v_shl_i_3_1_2 v_conv6_i_3_1_2 1;
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
shls discard_102 v_shl_i_4_1_2 v_conv6_i_4_1_2 1;
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
shls discard_103 v_shl_i_5_1_2 v_conv6_i_5_1_2 1;
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
shls discard_104 v_shl_i_6_1_2 v_conv6_i_6_1_2 1;
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
(*   %arrayidx45.1.2 = getelementptr inbounds [16 x i8], [16 x i8]* %p0, i64 0, i64 9 *)
(*   store i8 %conv3.i.7.1.2, i8* %arrayidx45.1.2, align 1 *)
mov p0_9 v_conv3_i_7_1_2;
(*   %66 = load i8, i8* %arrayidx47.2, align 1 *)
mov v66 a_2;
(*   %arrayidx51.1.2 = getelementptr inbounds [16 x i8], [16 x i8]* %s, i64 0, i64 9 *)
(*   %67 = load i8, i8* %arrayidx51.1.2, align 1 *)
mov v67 s_9;
(*   %conv.i127.1134.2 = zext i8 %67 to i32 *)
cast v_conv_i127_1134_2@uint32 v67@uint8;
(*   %and.i128.1135.2 = and i32 %conv.i127.1134.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1135_2 v_conv_i127_1134_2 (0x1)@uint32;
(*   %conv1.i129.1136.2 = zext i8 %66 to i32 *)
cast v_conv1_i129_1136_2@uint32 v66@uint8;
(*   %mul.i130.1137.2 = mul nsw i32 %and.i128.1135.2, %conv1.i129.1136.2 *)
mul v_mul_i130_1137_2 v_and_i128_1135_2 v_conv1_i129_1136_2;
(*   %conv3.i133.1138.2 = trunc i32 %mul.i130.1137.2 to i8 *)
split tmp_v_mul_i130_1137_2 v_conv3_i133_1138_2 v_mul_i130_1137_2 8;
vpc v_conv3_i133_1138_2@uint8 v_conv3_i133_1138_2@uint32;
(*   %conv4.i134.1139.2 = zext i8 %67 to i32 *)
cast v_conv4_i134_1139_2@uint32 v67@uint8;
(*   %shr.i135.1140.2 = ashr i32 %conv4.i134.1139.2, 1 *)
(* You may need to modify here *)
split v_shr_i135_1140_2 tmp_to_be_used v_conv4_i134_1139_2 1;
(*   %conv5.i136.1141.2 = trunc i32 %shr.i135.1140.2 to i8 *)
split tmp_v_shr_i135_1140_2 v_conv5_i136_1141_2 v_shr_i135_1140_2 8;
vpc v_conv5_i136_1141_2@uint8 v_conv5_i136_1141_2@uint32;
(*   %conv6.i137.1142.2 = zext i8 %66 to i32 *)
cast v_conv6_i137_1142_2@uint32 v66@uint8;
(*   %shl.i138.1143.2 = shl i32 %conv6.i137.1142.2, 1 *)
shls discard_105 v_shl_i138_1143_2 v_conv6_i137_1142_2 1;
(*   %conv7.i139.1144.2 = trunc i32 %shl.i138.1143.2 to i8 *)
split tmp_v_shl_i138_1143_2 v_conv7_i139_1144_2 v_shl_i138_1143_2 8;
vpc v_conv7_i139_1144_2@uint8 v_conv7_i139_1144_2@uint32;
(*   %conv.i127.1.1.2 = zext i8 %conv5.i136.1141.2 to i32 *)
cast v_conv_i127_1_1_2@uint32 v_conv5_i136_1141_2@uint8;
(*   %and.i128.1.1.2 = and i32 %conv.i127.1.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1_1_2 v_conv_i127_1_1_2 (0x1)@uint32;
(*   %conv1.i129.1.1.2 = zext i8 %conv7.i139.1144.2 to i32 *)
cast v_conv1_i129_1_1_2@uint32 v_conv7_i139_1144_2@uint8;
(*   %mul.i130.1.1.2 = mul nsw i32 %and.i128.1.1.2, %conv1.i129.1.1.2 *)
mul v_mul_i130_1_1_2 v_and_i128_1_1_2 v_conv1_i129_1_1_2;
(*   %conv2.i131.1.1.2 = zext i8 %conv3.i133.1138.2 to i32 *)
cast v_conv2_i131_1_1_2@uint32 v_conv3_i133_1138_2@uint8;
(*   %xor.i132.1.1.2 = xor i32 %conv2.i131.1.1.2, %mul.i130.1.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_1_1_2 v_conv2_i131_1_1_2 v_mul_i130_1_1_2;
(*   %conv3.i133.1.1.2 = trunc i32 %xor.i132.1.1.2 to i8 *)
split tmp_v_xor_i132_1_1_2 v_conv3_i133_1_1_2 v_xor_i132_1_1_2 8;
vpc v_conv3_i133_1_1_2@uint8 v_conv3_i133_1_1_2@uint32;
(*   %conv4.i134.1.1.2 = zext i8 %conv5.i136.1141.2 to i32 *)
cast v_conv4_i134_1_1_2@uint32 v_conv5_i136_1141_2@uint8;
(*   %shr.i135.1.1.2 = ashr i32 %conv4.i134.1.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i135_1_1_2 tmp_to_be_used v_conv4_i134_1_1_2 1;
(*   %conv5.i136.1.1.2 = trunc i32 %shr.i135.1.1.2 to i8 *)
split tmp_v_shr_i135_1_1_2 v_conv5_i136_1_1_2 v_shr_i135_1_1_2 8;
vpc v_conv5_i136_1_1_2@uint8 v_conv5_i136_1_1_2@uint32;
(*   %conv6.i137.1.1.2 = zext i8 %conv7.i139.1144.2 to i32 *)
cast v_conv6_i137_1_1_2@uint32 v_conv7_i139_1144_2@uint8;
(*   %shl.i138.1.1.2 = shl i32 %conv6.i137.1.1.2, 1 *)
shls discard_106 v_shl_i138_1_1_2 v_conv6_i137_1_1_2 1;
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
shls discard_107 v_shl_i138_2_1_2 v_conv6_i137_2_1_2 1;
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
shls discard_108 v_shl_i138_3_1_2 v_conv6_i137_3_1_2 1;
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
shls discard_109 v_shl_i138_4_1_2 v_conv6_i137_4_1_2 1;
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
shls discard_110 v_shl_i138_5_1_2 v_conv6_i137_5_1_2 1;
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
shls discard_111 v_shl_i138_6_1_2 v_conv6_i137_6_1_2 1;
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
(*   %arrayidx56.1.2 = getelementptr inbounds [16 x i8], [16 x i8]* %p1, i64 0, i64 9 *)
(*   store i8 %conv3.i133.7.1.2, i8* %arrayidx56.1.2, align 1 *)
mov p1_9 v_conv3_i133_7_1_2;
(*   %arrayidx60.1.2 = getelementptr inbounds [16 x i8], [16 x i8]* %p0, i64 0, i64 9 *)
(*   %68 = load i8, i8* %arrayidx60.1.2, align 1 *)
mov v68 p0_9;
(*   %conv61.1.2 = zext i8 %68 to i32 *)
cast v_conv61_1_2@uint32 v68@uint8;
(*   %arrayidx65.1.2 = getelementptr inbounds [16 x i8], [16 x i8]* %p1, i64 0, i64 9 *)
(*   %69 = load i8, i8* %arrayidx65.1.2, align 1 *)
mov v69 p1_9;
(*   %conv66.1.2 = zext i8 %69 to i32 *)
cast v_conv66_1_2@uint32 v69@uint8;
(*   %xor67.1.2 = xor i32 %conv61.1.2, %conv66.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor67_1_2 v_conv61_1_2 v_conv66_1_2;
(*   %conv68.1.2 = trunc i32 %xor67.1.2 to i8 *)
split tmp_v_xor67_1_2 v_conv68_1_2 v_xor67_1_2 8;
vpc v_conv68_1_2@uint8 v_conv68_1_2@uint32;
(*   %arrayidx72.1.2 = getelementptr inbounds [16 x i8], [16 x i8]* %z, i64 0, i64 9 *)
(*   store i8 %conv68.1.2, i8* %arrayidx72.1.2, align 1 *)
mov z_9 v_conv68_1_2;
(*   %arrayidx22.3.2 = getelementptr inbounds i8, i8* %b, i64 3 *)
(*   %70 = load i8, i8* %arrayidx22.3.2, align 1 *)
mov v70 b_3;
(*   %conv.3.2 = zext i8 %70 to i32 *)
cast v_conv_3_2@uint32 v70@uint8;
(*   %arrayidx26.3.2 = getelementptr inbounds i8, i8* %r, i64 11 *)
(*   %71 = load i8, i8* %arrayidx26.3.2, align 1 *)
mov v71 r_11;
(*   %conv27.3.2 = zext i8 %71 to i32 *)
cast v_conv27_3_2@uint32 v71@uint8;
(*   %xor.3.2 = xor i32 %conv.3.2, %conv27.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_3_2 v_conv_3_2 v_conv27_3_2;
(*   %conv28.3.2 = trunc i32 %xor.3.2 to i8 *)
split tmp_v_xor_3_2 v_conv28_3_2 v_xor_3_2 8;
vpc v_conv28_3_2@uint8 v_conv28_3_2@uint32;
(*   %arrayidx32.3.2 = getelementptr inbounds [16 x i8], [16 x i8]* %s, i64 0, i64 11 *)
(*   store i8 %conv28.3.2, i8* %arrayidx32.3.2, align 1 *)
mov s_11 v_conv28_3_2;
(*   %72 = load i8, i8* %arrayidx34.2, align 1 *)
mov v72 a_2;
(*   %conv35.3.2 = zext i8 %72 to i32 *)
cast v_conv35_3_2@uint32 v72@uint8;
(*   %xor36.3.2 = xor i32 %conv35.3.2, 1 *)
(* You may need to modify here *)
xor uint32 v_xor36_3_2 v_conv35_3_2 (0x1)@uint32;
(*   %conv37.3.2 = trunc i32 %xor36.3.2 to i8 *)
split tmp_v_xor36_3_2 v_conv37_3_2 v_xor36_3_2 8;
vpc v_conv37_3_2@uint8 v_conv37_3_2@uint32;
(*   %arrayidx41.3.2 = getelementptr inbounds i8, i8* %r, i64 11 *)
(*   %73 = load i8, i8* %arrayidx41.3.2, align 1 *)
mov v73 r_11;
(*   %conv.i.3167.2 = zext i8 %73 to i32 *)
cast v_conv_i_3167_2@uint32 v73@uint8;
(*   %and.i.3168.2 = and i32 %conv.i.3167.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3168_2 v_conv_i_3167_2 (0x1)@uint32;
(*   %conv1.i.3169.2 = zext i8 %conv37.3.2 to i32 *)
cast v_conv1_i_3169_2@uint32 v_conv37_3_2@uint8;
(*   %mul.i.3170.2 = mul nsw i32 %and.i.3168.2, %conv1.i.3169.2 *)
mul v_mul_i_3170_2 v_and_i_3168_2 v_conv1_i_3169_2;
(*   %conv3.i.3171.2 = trunc i32 %mul.i.3170.2 to i8 *)
split tmp_v_mul_i_3170_2 v_conv3_i_3171_2 v_mul_i_3170_2 8;
vpc v_conv3_i_3171_2@uint8 v_conv3_i_3171_2@uint32;
(*   %conv4.i.3172.2 = zext i8 %73 to i32 *)
cast v_conv4_i_3172_2@uint32 v73@uint8;
(*   %shr.i.3173.2 = ashr i32 %conv4.i.3172.2, 1 *)
(* You may need to modify here *)
split v_shr_i_3173_2 tmp_to_be_used v_conv4_i_3172_2 1;
(*   %conv5.i.3174.2 = trunc i32 %shr.i.3173.2 to i8 *)
split tmp_v_shr_i_3173_2 v_conv5_i_3174_2 v_shr_i_3173_2 8;
vpc v_conv5_i_3174_2@uint8 v_conv5_i_3174_2@uint32;
(*   %conv6.i.3175.2 = zext i8 %conv37.3.2 to i32 *)
cast v_conv6_i_3175_2@uint32 v_conv37_3_2@uint8;
(*   %shl.i.3176.2 = shl i32 %conv6.i.3175.2, 1 *)
shls discard_112 v_shl_i_3176_2 v_conv6_i_3175_2 1;
(*   %conv7.i.3177.2 = trunc i32 %shl.i.3176.2 to i8 *)
split tmp_v_shl_i_3176_2 v_conv7_i_3177_2 v_shl_i_3176_2 8;
vpc v_conv7_i_3177_2@uint8 v_conv7_i_3177_2@uint32;
(*   %conv.i.1.3.2 = zext i8 %conv5.i.3174.2 to i32 *)
cast v_conv_i_1_3_2@uint32 v_conv5_i_3174_2@uint8;
(*   %and.i.1.3.2 = and i32 %conv.i.1.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_3_2 v_conv_i_1_3_2 (0x1)@uint32;
(*   %conv1.i.1.3.2 = zext i8 %conv7.i.3177.2 to i32 *)
cast v_conv1_i_1_3_2@uint32 v_conv7_i_3177_2@uint8;
(*   %mul.i.1.3.2 = mul nsw i32 %and.i.1.3.2, %conv1.i.1.3.2 *)
mul v_mul_i_1_3_2 v_and_i_1_3_2 v_conv1_i_1_3_2;
(*   %conv2.i.1.3.2 = zext i8 %conv3.i.3171.2 to i32 *)
cast v_conv2_i_1_3_2@uint32 v_conv3_i_3171_2@uint8;
(*   %xor.i.1.3.2 = xor i32 %conv2.i.1.3.2, %mul.i.1.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_3_2 v_conv2_i_1_3_2 v_mul_i_1_3_2;
(*   %conv3.i.1.3.2 = trunc i32 %xor.i.1.3.2 to i8 *)
split tmp_v_xor_i_1_3_2 v_conv3_i_1_3_2 v_xor_i_1_3_2 8;
vpc v_conv3_i_1_3_2@uint8 v_conv3_i_1_3_2@uint32;
(*   %conv4.i.1.3.2 = zext i8 %conv5.i.3174.2 to i32 *)
cast v_conv4_i_1_3_2@uint32 v_conv5_i_3174_2@uint8;
(*   %shr.i.1.3.2 = ashr i32 %conv4.i.1.3.2, 1 *)
(* You may need to modify here *)
split v_shr_i_1_3_2 tmp_to_be_used v_conv4_i_1_3_2 1;
(*   %conv5.i.1.3.2 = trunc i32 %shr.i.1.3.2 to i8 *)
split tmp_v_shr_i_1_3_2 v_conv5_i_1_3_2 v_shr_i_1_3_2 8;
vpc v_conv5_i_1_3_2@uint8 v_conv5_i_1_3_2@uint32;
(*   %conv6.i.1.3.2 = zext i8 %conv7.i.3177.2 to i32 *)
cast v_conv6_i_1_3_2@uint32 v_conv7_i_3177_2@uint8;
(*   %shl.i.1.3.2 = shl i32 %conv6.i.1.3.2, 1 *)
shls discard_113 v_shl_i_1_3_2 v_conv6_i_1_3_2 1;
(*   %conv7.i.1.3.2 = trunc i32 %shl.i.1.3.2 to i8 *)
split tmp_v_shl_i_1_3_2 v_conv7_i_1_3_2 v_shl_i_1_3_2 8;
vpc v_conv7_i_1_3_2@uint8 v_conv7_i_1_3_2@uint32;
(*   %conv.i.2.3.2 = zext i8 %conv5.i.1.3.2 to i32 *)
cast v_conv_i_2_3_2@uint32 v_conv5_i_1_3_2@uint8;
(*   %and.i.2.3.2 = and i32 %conv.i.2.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_3_2 v_conv_i_2_3_2 (0x1)@uint32;
(*   %conv1.i.2.3.2 = zext i8 %conv7.i.1.3.2 to i32 *)
cast v_conv1_i_2_3_2@uint32 v_conv7_i_1_3_2@uint8;
(*   %mul.i.2.3.2 = mul nsw i32 %and.i.2.3.2, %conv1.i.2.3.2 *)
mul v_mul_i_2_3_2 v_and_i_2_3_2 v_conv1_i_2_3_2;
(*   %conv2.i.2.3.2 = zext i8 %conv3.i.1.3.2 to i32 *)
cast v_conv2_i_2_3_2@uint32 v_conv3_i_1_3_2@uint8;
(*   %xor.i.2.3.2 = xor i32 %conv2.i.2.3.2, %mul.i.2.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_3_2 v_conv2_i_2_3_2 v_mul_i_2_3_2;
(*   %conv3.i.2.3.2 = trunc i32 %xor.i.2.3.2 to i8 *)
split tmp_v_xor_i_2_3_2 v_conv3_i_2_3_2 v_xor_i_2_3_2 8;
vpc v_conv3_i_2_3_2@uint8 v_conv3_i_2_3_2@uint32;
(*   %conv4.i.2.3.2 = zext i8 %conv5.i.1.3.2 to i32 *)
cast v_conv4_i_2_3_2@uint32 v_conv5_i_1_3_2@uint8;
(*   %shr.i.2.3.2 = ashr i32 %conv4.i.2.3.2, 1 *)
(* You may need to modify here *)
split v_shr_i_2_3_2 tmp_to_be_used v_conv4_i_2_3_2 1;
(*   %conv5.i.2.3.2 = trunc i32 %shr.i.2.3.2 to i8 *)
split tmp_v_shr_i_2_3_2 v_conv5_i_2_3_2 v_shr_i_2_3_2 8;
vpc v_conv5_i_2_3_2@uint8 v_conv5_i_2_3_2@uint32;
(*   %conv6.i.2.3.2 = zext i8 %conv7.i.1.3.2 to i32 *)
cast v_conv6_i_2_3_2@uint32 v_conv7_i_1_3_2@uint8;
(*   %shl.i.2.3.2 = shl i32 %conv6.i.2.3.2, 1 *)
shls discard_114 v_shl_i_2_3_2 v_conv6_i_2_3_2 1;
(*   %conv7.i.2.3.2 = trunc i32 %shl.i.2.3.2 to i8 *)
split tmp_v_shl_i_2_3_2 v_conv7_i_2_3_2 v_shl_i_2_3_2 8;
vpc v_conv7_i_2_3_2@uint8 v_conv7_i_2_3_2@uint32;
(*   %conv.i.3.3.2 = zext i8 %conv5.i.2.3.2 to i32 *)
cast v_conv_i_3_3_2@uint32 v_conv5_i_2_3_2@uint8;
(*   %and.i.3.3.2 = and i32 %conv.i.3.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_3_2 v_conv_i_3_3_2 (0x1)@uint32;
(*   %conv1.i.3.3.2 = zext i8 %conv7.i.2.3.2 to i32 *)
cast v_conv1_i_3_3_2@uint32 v_conv7_i_2_3_2@uint8;
(*   %mul.i.3.3.2 = mul nsw i32 %and.i.3.3.2, %conv1.i.3.3.2 *)
mul v_mul_i_3_3_2 v_and_i_3_3_2 v_conv1_i_3_3_2;
(*   %conv2.i.3.3.2 = zext i8 %conv3.i.2.3.2 to i32 *)
cast v_conv2_i_3_3_2@uint32 v_conv3_i_2_3_2@uint8;
(*   %xor.i.3.3.2 = xor i32 %conv2.i.3.3.2, %mul.i.3.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_3_2 v_conv2_i_3_3_2 v_mul_i_3_3_2;
(*   %conv3.i.3.3.2 = trunc i32 %xor.i.3.3.2 to i8 *)
split tmp_v_xor_i_3_3_2 v_conv3_i_3_3_2 v_xor_i_3_3_2 8;
vpc v_conv3_i_3_3_2@uint8 v_conv3_i_3_3_2@uint32;
(*   %conv4.i.3.3.2 = zext i8 %conv5.i.2.3.2 to i32 *)
cast v_conv4_i_3_3_2@uint32 v_conv5_i_2_3_2@uint8;
(*   %shr.i.3.3.2 = ashr i32 %conv4.i.3.3.2, 1 *)
(* You may need to modify here *)
split v_shr_i_3_3_2 tmp_to_be_used v_conv4_i_3_3_2 1;
(*   %conv5.i.3.3.2 = trunc i32 %shr.i.3.3.2 to i8 *)
split tmp_v_shr_i_3_3_2 v_conv5_i_3_3_2 v_shr_i_3_3_2 8;
vpc v_conv5_i_3_3_2@uint8 v_conv5_i_3_3_2@uint32;
(*   %conv6.i.3.3.2 = zext i8 %conv7.i.2.3.2 to i32 *)
cast v_conv6_i_3_3_2@uint32 v_conv7_i_2_3_2@uint8;
(*   %shl.i.3.3.2 = shl i32 %conv6.i.3.3.2, 1 *)
shls discard_115 v_shl_i_3_3_2 v_conv6_i_3_3_2 1;
(*   %conv7.i.3.3.2 = trunc i32 %shl.i.3.3.2 to i8 *)
split tmp_v_shl_i_3_3_2 v_conv7_i_3_3_2 v_shl_i_3_3_2 8;
vpc v_conv7_i_3_3_2@uint8 v_conv7_i_3_3_2@uint32;
(*   %conv.i.4.3.2 = zext i8 %conv5.i.3.3.2 to i32 *)
cast v_conv_i_4_3_2@uint32 v_conv5_i_3_3_2@uint8;
(*   %and.i.4.3.2 = and i32 %conv.i.4.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_3_2 v_conv_i_4_3_2 (0x1)@uint32;
(*   %conv1.i.4.3.2 = zext i8 %conv7.i.3.3.2 to i32 *)
cast v_conv1_i_4_3_2@uint32 v_conv7_i_3_3_2@uint8;
(*   %mul.i.4.3.2 = mul nsw i32 %and.i.4.3.2, %conv1.i.4.3.2 *)
mul v_mul_i_4_3_2 v_and_i_4_3_2 v_conv1_i_4_3_2;
(*   %conv2.i.4.3.2 = zext i8 %conv3.i.3.3.2 to i32 *)
cast v_conv2_i_4_3_2@uint32 v_conv3_i_3_3_2@uint8;
(*   %xor.i.4.3.2 = xor i32 %conv2.i.4.3.2, %mul.i.4.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_3_2 v_conv2_i_4_3_2 v_mul_i_4_3_2;
(*   %conv3.i.4.3.2 = trunc i32 %xor.i.4.3.2 to i8 *)
split tmp_v_xor_i_4_3_2 v_conv3_i_4_3_2 v_xor_i_4_3_2 8;
vpc v_conv3_i_4_3_2@uint8 v_conv3_i_4_3_2@uint32;
(*   %conv4.i.4.3.2 = zext i8 %conv5.i.3.3.2 to i32 *)
cast v_conv4_i_4_3_2@uint32 v_conv5_i_3_3_2@uint8;
(*   %shr.i.4.3.2 = ashr i32 %conv4.i.4.3.2, 1 *)
(* You may need to modify here *)
split v_shr_i_4_3_2 tmp_to_be_used v_conv4_i_4_3_2 1;
(*   %conv5.i.4.3.2 = trunc i32 %shr.i.4.3.2 to i8 *)
split tmp_v_shr_i_4_3_2 v_conv5_i_4_3_2 v_shr_i_4_3_2 8;
vpc v_conv5_i_4_3_2@uint8 v_conv5_i_4_3_2@uint32;
(*   %conv6.i.4.3.2 = zext i8 %conv7.i.3.3.2 to i32 *)
cast v_conv6_i_4_3_2@uint32 v_conv7_i_3_3_2@uint8;
(*   %shl.i.4.3.2 = shl i32 %conv6.i.4.3.2, 1 *)
shls discard_116 v_shl_i_4_3_2 v_conv6_i_4_3_2 1;
(*   %conv7.i.4.3.2 = trunc i32 %shl.i.4.3.2 to i8 *)
split tmp_v_shl_i_4_3_2 v_conv7_i_4_3_2 v_shl_i_4_3_2 8;
vpc v_conv7_i_4_3_2@uint8 v_conv7_i_4_3_2@uint32;
(*   %conv.i.5.3.2 = zext i8 %conv5.i.4.3.2 to i32 *)
cast v_conv_i_5_3_2@uint32 v_conv5_i_4_3_2@uint8;
(*   %and.i.5.3.2 = and i32 %conv.i.5.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_3_2 v_conv_i_5_3_2 (0x1)@uint32;
(*   %conv1.i.5.3.2 = zext i8 %conv7.i.4.3.2 to i32 *)
cast v_conv1_i_5_3_2@uint32 v_conv7_i_4_3_2@uint8;
(*   %mul.i.5.3.2 = mul nsw i32 %and.i.5.3.2, %conv1.i.5.3.2 *)
mul v_mul_i_5_3_2 v_and_i_5_3_2 v_conv1_i_5_3_2;
(*   %conv2.i.5.3.2 = zext i8 %conv3.i.4.3.2 to i32 *)
cast v_conv2_i_5_3_2@uint32 v_conv3_i_4_3_2@uint8;
(*   %xor.i.5.3.2 = xor i32 %conv2.i.5.3.2, %mul.i.5.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_3_2 v_conv2_i_5_3_2 v_mul_i_5_3_2;
(*   %conv3.i.5.3.2 = trunc i32 %xor.i.5.3.2 to i8 *)
split tmp_v_xor_i_5_3_2 v_conv3_i_5_3_2 v_xor_i_5_3_2 8;
vpc v_conv3_i_5_3_2@uint8 v_conv3_i_5_3_2@uint32;
(*   %conv4.i.5.3.2 = zext i8 %conv5.i.4.3.2 to i32 *)
cast v_conv4_i_5_3_2@uint32 v_conv5_i_4_3_2@uint8;
(*   %shr.i.5.3.2 = ashr i32 %conv4.i.5.3.2, 1 *)
(* You may need to modify here *)
split v_shr_i_5_3_2 tmp_to_be_used v_conv4_i_5_3_2 1;
(*   %conv5.i.5.3.2 = trunc i32 %shr.i.5.3.2 to i8 *)
split tmp_v_shr_i_5_3_2 v_conv5_i_5_3_2 v_shr_i_5_3_2 8;
vpc v_conv5_i_5_3_2@uint8 v_conv5_i_5_3_2@uint32;
(*   %conv6.i.5.3.2 = zext i8 %conv7.i.4.3.2 to i32 *)
cast v_conv6_i_5_3_2@uint32 v_conv7_i_4_3_2@uint8;
(*   %shl.i.5.3.2 = shl i32 %conv6.i.5.3.2, 1 *)
shls discard_117 v_shl_i_5_3_2 v_conv6_i_5_3_2 1;
(*   %conv7.i.5.3.2 = trunc i32 %shl.i.5.3.2 to i8 *)
split tmp_v_shl_i_5_3_2 v_conv7_i_5_3_2 v_shl_i_5_3_2 8;
vpc v_conv7_i_5_3_2@uint8 v_conv7_i_5_3_2@uint32;
(*   %conv.i.6.3.2 = zext i8 %conv5.i.5.3.2 to i32 *)
cast v_conv_i_6_3_2@uint32 v_conv5_i_5_3_2@uint8;
(*   %and.i.6.3.2 = and i32 %conv.i.6.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_3_2 v_conv_i_6_3_2 (0x1)@uint32;
(*   %conv1.i.6.3.2 = zext i8 %conv7.i.5.3.2 to i32 *)
cast v_conv1_i_6_3_2@uint32 v_conv7_i_5_3_2@uint8;
(*   %mul.i.6.3.2 = mul nsw i32 %and.i.6.3.2, %conv1.i.6.3.2 *)
mul v_mul_i_6_3_2 v_and_i_6_3_2 v_conv1_i_6_3_2;
(*   %conv2.i.6.3.2 = zext i8 %conv3.i.5.3.2 to i32 *)
cast v_conv2_i_6_3_2@uint32 v_conv3_i_5_3_2@uint8;
(*   %xor.i.6.3.2 = xor i32 %conv2.i.6.3.2, %mul.i.6.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_3_2 v_conv2_i_6_3_2 v_mul_i_6_3_2;
(*   %conv3.i.6.3.2 = trunc i32 %xor.i.6.3.2 to i8 *)
split tmp_v_xor_i_6_3_2 v_conv3_i_6_3_2 v_xor_i_6_3_2 8;
vpc v_conv3_i_6_3_2@uint8 v_conv3_i_6_3_2@uint32;
(*   %conv4.i.6.3.2 = zext i8 %conv5.i.5.3.2 to i32 *)
cast v_conv4_i_6_3_2@uint32 v_conv5_i_5_3_2@uint8;
(*   %shr.i.6.3.2 = ashr i32 %conv4.i.6.3.2, 1 *)
(* You may need to modify here *)
split v_shr_i_6_3_2 tmp_to_be_used v_conv4_i_6_3_2 1;
(*   %conv5.i.6.3.2 = trunc i32 %shr.i.6.3.2 to i8 *)
split tmp_v_shr_i_6_3_2 v_conv5_i_6_3_2 v_shr_i_6_3_2 8;
vpc v_conv5_i_6_3_2@uint8 v_conv5_i_6_3_2@uint32;
(*   %conv6.i.6.3.2 = zext i8 %conv7.i.5.3.2 to i32 *)
cast v_conv6_i_6_3_2@uint32 v_conv7_i_5_3_2@uint8;
(*   %shl.i.6.3.2 = shl i32 %conv6.i.6.3.2, 1 *)
shls discard_118 v_shl_i_6_3_2 v_conv6_i_6_3_2 1;
(*   %conv7.i.6.3.2 = trunc i32 %shl.i.6.3.2 to i8 *)
split tmp_v_shl_i_6_3_2 v_conv7_i_6_3_2 v_shl_i_6_3_2 8;
vpc v_conv7_i_6_3_2@uint8 v_conv7_i_6_3_2@uint32;
(*   %conv.i.7.3.2 = zext i8 %conv5.i.6.3.2 to i32 *)
cast v_conv_i_7_3_2@uint32 v_conv5_i_6_3_2@uint8;
(*   %and.i.7.3.2 = and i32 %conv.i.7.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_3_2 v_conv_i_7_3_2 (0x1)@uint32;
(*   %conv1.i.7.3.2 = zext i8 %conv7.i.6.3.2 to i32 *)
cast v_conv1_i_7_3_2@uint32 v_conv7_i_6_3_2@uint8;
(*   %mul.i.7.3.2 = mul nsw i32 %and.i.7.3.2, %conv1.i.7.3.2 *)
mul v_mul_i_7_3_2 v_and_i_7_3_2 v_conv1_i_7_3_2;
(*   %conv2.i.7.3.2 = zext i8 %conv3.i.6.3.2 to i32 *)
cast v_conv2_i_7_3_2@uint32 v_conv3_i_6_3_2@uint8;
(*   %xor.i.7.3.2 = xor i32 %conv2.i.7.3.2, %mul.i.7.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_3_2 v_conv2_i_7_3_2 v_mul_i_7_3_2;
(*   %conv3.i.7.3.2 = trunc i32 %xor.i.7.3.2 to i8 *)
split tmp_v_xor_i_7_3_2 v_conv3_i_7_3_2 v_xor_i_7_3_2 8;
vpc v_conv3_i_7_3_2@uint8 v_conv3_i_7_3_2@uint32;
(*   %arrayidx45.3.2 = getelementptr inbounds [16 x i8], [16 x i8]* %p0, i64 0, i64 11 *)
(*   store i8 %conv3.i.7.3.2, i8* %arrayidx45.3.2, align 1 *)
mov p0_11 v_conv3_i_7_3_2;
(*   %74 = load i8, i8* %arrayidx47.2, align 1 *)
mov v74 a_2;
(*   %arrayidx51.3.2 = getelementptr inbounds [16 x i8], [16 x i8]* %s, i64 0, i64 11 *)
(*   %75 = load i8, i8* %arrayidx51.3.2, align 1 *)
mov v75 s_11;
(*   %conv.i127.3178.2 = zext i8 %75 to i32 *)
cast v_conv_i127_3178_2@uint32 v75@uint8;
(*   %and.i128.3179.2 = and i32 %conv.i127.3178.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_3179_2 v_conv_i127_3178_2 (0x1)@uint32;
(*   %conv1.i129.3180.2 = zext i8 %74 to i32 *)
cast v_conv1_i129_3180_2@uint32 v74@uint8;
(*   %mul.i130.3181.2 = mul nsw i32 %and.i128.3179.2, %conv1.i129.3180.2 *)
mul v_mul_i130_3181_2 v_and_i128_3179_2 v_conv1_i129_3180_2;
(*   %conv3.i133.3182.2 = trunc i32 %mul.i130.3181.2 to i8 *)
split tmp_v_mul_i130_3181_2 v_conv3_i133_3182_2 v_mul_i130_3181_2 8;
vpc v_conv3_i133_3182_2@uint8 v_conv3_i133_3182_2@uint32;
(*   %conv4.i134.3183.2 = zext i8 %75 to i32 *)
cast v_conv4_i134_3183_2@uint32 v75@uint8;
(*   %shr.i135.3184.2 = ashr i32 %conv4.i134.3183.2, 1 *)
(* You may need to modify here *)
split v_shr_i135_3184_2 tmp_to_be_used v_conv4_i134_3183_2 1;
(*   %conv5.i136.3185.2 = trunc i32 %shr.i135.3184.2 to i8 *)
split tmp_v_shr_i135_3184_2 v_conv5_i136_3185_2 v_shr_i135_3184_2 8;
vpc v_conv5_i136_3185_2@uint8 v_conv5_i136_3185_2@uint32;
(*   %conv6.i137.3186.2 = zext i8 %74 to i32 *)
cast v_conv6_i137_3186_2@uint32 v74@uint8;
(*   %shl.i138.3187.2 = shl i32 %conv6.i137.3186.2, 1 *)
shls discard_119 v_shl_i138_3187_2 v_conv6_i137_3186_2 1;
(*   %conv7.i139.3188.2 = trunc i32 %shl.i138.3187.2 to i8 *)
split tmp_v_shl_i138_3187_2 v_conv7_i139_3188_2 v_shl_i138_3187_2 8;
vpc v_conv7_i139_3188_2@uint8 v_conv7_i139_3188_2@uint32;
(*   %conv.i127.1.3.2 = zext i8 %conv5.i136.3185.2 to i32 *)
cast v_conv_i127_1_3_2@uint32 v_conv5_i136_3185_2@uint8;
(*   %and.i128.1.3.2 = and i32 %conv.i127.1.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1_3_2 v_conv_i127_1_3_2 (0x1)@uint32;
(*   %conv1.i129.1.3.2 = zext i8 %conv7.i139.3188.2 to i32 *)
cast v_conv1_i129_1_3_2@uint32 v_conv7_i139_3188_2@uint8;
(*   %mul.i130.1.3.2 = mul nsw i32 %and.i128.1.3.2, %conv1.i129.1.3.2 *)
mul v_mul_i130_1_3_2 v_and_i128_1_3_2 v_conv1_i129_1_3_2;
(*   %conv2.i131.1.3.2 = zext i8 %conv3.i133.3182.2 to i32 *)
cast v_conv2_i131_1_3_2@uint32 v_conv3_i133_3182_2@uint8;
(*   %xor.i132.1.3.2 = xor i32 %conv2.i131.1.3.2, %mul.i130.1.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_1_3_2 v_conv2_i131_1_3_2 v_mul_i130_1_3_2;
(*   %conv3.i133.1.3.2 = trunc i32 %xor.i132.1.3.2 to i8 *)
split tmp_v_xor_i132_1_3_2 v_conv3_i133_1_3_2 v_xor_i132_1_3_2 8;
vpc v_conv3_i133_1_3_2@uint8 v_conv3_i133_1_3_2@uint32;
(*   %conv4.i134.1.3.2 = zext i8 %conv5.i136.3185.2 to i32 *)
cast v_conv4_i134_1_3_2@uint32 v_conv5_i136_3185_2@uint8;
(*   %shr.i135.1.3.2 = ashr i32 %conv4.i134.1.3.2, 1 *)
(* You may need to modify here *)
split v_shr_i135_1_3_2 tmp_to_be_used v_conv4_i134_1_3_2 1;
(*   %conv5.i136.1.3.2 = trunc i32 %shr.i135.1.3.2 to i8 *)
split tmp_v_shr_i135_1_3_2 v_conv5_i136_1_3_2 v_shr_i135_1_3_2 8;
vpc v_conv5_i136_1_3_2@uint8 v_conv5_i136_1_3_2@uint32;
(*   %conv6.i137.1.3.2 = zext i8 %conv7.i139.3188.2 to i32 *)
cast v_conv6_i137_1_3_2@uint32 v_conv7_i139_3188_2@uint8;
(*   %shl.i138.1.3.2 = shl i32 %conv6.i137.1.3.2, 1 *)
shls discard_120 v_shl_i138_1_3_2 v_conv6_i137_1_3_2 1;
(*   %conv7.i139.1.3.2 = trunc i32 %shl.i138.1.3.2 to i8 *)
split tmp_v_shl_i138_1_3_2 v_conv7_i139_1_3_2 v_shl_i138_1_3_2 8;
vpc v_conv7_i139_1_3_2@uint8 v_conv7_i139_1_3_2@uint32;
(*   %conv.i127.2.3.2 = zext i8 %conv5.i136.1.3.2 to i32 *)
cast v_conv_i127_2_3_2@uint32 v_conv5_i136_1_3_2@uint8;
(*   %and.i128.2.3.2 = and i32 %conv.i127.2.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_2_3_2 v_conv_i127_2_3_2 (0x1)@uint32;
(*   %conv1.i129.2.3.2 = zext i8 %conv7.i139.1.3.2 to i32 *)
cast v_conv1_i129_2_3_2@uint32 v_conv7_i139_1_3_2@uint8;
(*   %mul.i130.2.3.2 = mul nsw i32 %and.i128.2.3.2, %conv1.i129.2.3.2 *)
mul v_mul_i130_2_3_2 v_and_i128_2_3_2 v_conv1_i129_2_3_2;
(*   %conv2.i131.2.3.2 = zext i8 %conv3.i133.1.3.2 to i32 *)
cast v_conv2_i131_2_3_2@uint32 v_conv3_i133_1_3_2@uint8;
(*   %xor.i132.2.3.2 = xor i32 %conv2.i131.2.3.2, %mul.i130.2.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_2_3_2 v_conv2_i131_2_3_2 v_mul_i130_2_3_2;
(*   %conv3.i133.2.3.2 = trunc i32 %xor.i132.2.3.2 to i8 *)
split tmp_v_xor_i132_2_3_2 v_conv3_i133_2_3_2 v_xor_i132_2_3_2 8;
vpc v_conv3_i133_2_3_2@uint8 v_conv3_i133_2_3_2@uint32;
(*   %conv4.i134.2.3.2 = zext i8 %conv5.i136.1.3.2 to i32 *)
cast v_conv4_i134_2_3_2@uint32 v_conv5_i136_1_3_2@uint8;
(*   %shr.i135.2.3.2 = ashr i32 %conv4.i134.2.3.2, 1 *)
(* You may need to modify here *)
split v_shr_i135_2_3_2 tmp_to_be_used v_conv4_i134_2_3_2 1;
(*   %conv5.i136.2.3.2 = trunc i32 %shr.i135.2.3.2 to i8 *)
split tmp_v_shr_i135_2_3_2 v_conv5_i136_2_3_2 v_shr_i135_2_3_2 8;
vpc v_conv5_i136_2_3_2@uint8 v_conv5_i136_2_3_2@uint32;
(*   %conv6.i137.2.3.2 = zext i8 %conv7.i139.1.3.2 to i32 *)
cast v_conv6_i137_2_3_2@uint32 v_conv7_i139_1_3_2@uint8;
(*   %shl.i138.2.3.2 = shl i32 %conv6.i137.2.3.2, 1 *)
shls discard_121 v_shl_i138_2_3_2 v_conv6_i137_2_3_2 1;
(*   %conv7.i139.2.3.2 = trunc i32 %shl.i138.2.3.2 to i8 *)
split tmp_v_shl_i138_2_3_2 v_conv7_i139_2_3_2 v_shl_i138_2_3_2 8;
vpc v_conv7_i139_2_3_2@uint8 v_conv7_i139_2_3_2@uint32;
(*   %conv.i127.3.3.2 = zext i8 %conv5.i136.2.3.2 to i32 *)
cast v_conv_i127_3_3_2@uint32 v_conv5_i136_2_3_2@uint8;
(*   %and.i128.3.3.2 = and i32 %conv.i127.3.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_3_3_2 v_conv_i127_3_3_2 (0x1)@uint32;
(*   %conv1.i129.3.3.2 = zext i8 %conv7.i139.2.3.2 to i32 *)
cast v_conv1_i129_3_3_2@uint32 v_conv7_i139_2_3_2@uint8;
(*   %mul.i130.3.3.2 = mul nsw i32 %and.i128.3.3.2, %conv1.i129.3.3.2 *)
mul v_mul_i130_3_3_2 v_and_i128_3_3_2 v_conv1_i129_3_3_2;
(*   %conv2.i131.3.3.2 = zext i8 %conv3.i133.2.3.2 to i32 *)
cast v_conv2_i131_3_3_2@uint32 v_conv3_i133_2_3_2@uint8;
(*   %xor.i132.3.3.2 = xor i32 %conv2.i131.3.3.2, %mul.i130.3.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_3_3_2 v_conv2_i131_3_3_2 v_mul_i130_3_3_2;
(*   %conv3.i133.3.3.2 = trunc i32 %xor.i132.3.3.2 to i8 *)
split tmp_v_xor_i132_3_3_2 v_conv3_i133_3_3_2 v_xor_i132_3_3_2 8;
vpc v_conv3_i133_3_3_2@uint8 v_conv3_i133_3_3_2@uint32;
(*   %conv4.i134.3.3.2 = zext i8 %conv5.i136.2.3.2 to i32 *)
cast v_conv4_i134_3_3_2@uint32 v_conv5_i136_2_3_2@uint8;
(*   %shr.i135.3.3.2 = ashr i32 %conv4.i134.3.3.2, 1 *)
(* You may need to modify here *)
split v_shr_i135_3_3_2 tmp_to_be_used v_conv4_i134_3_3_2 1;
(*   %conv5.i136.3.3.2 = trunc i32 %shr.i135.3.3.2 to i8 *)
split tmp_v_shr_i135_3_3_2 v_conv5_i136_3_3_2 v_shr_i135_3_3_2 8;
vpc v_conv5_i136_3_3_2@uint8 v_conv5_i136_3_3_2@uint32;
(*   %conv6.i137.3.3.2 = zext i8 %conv7.i139.2.3.2 to i32 *)
cast v_conv6_i137_3_3_2@uint32 v_conv7_i139_2_3_2@uint8;
(*   %shl.i138.3.3.2 = shl i32 %conv6.i137.3.3.2, 1 *)
shls discard_122 v_shl_i138_3_3_2 v_conv6_i137_3_3_2 1;
(*   %conv7.i139.3.3.2 = trunc i32 %shl.i138.3.3.2 to i8 *)
split tmp_v_shl_i138_3_3_2 v_conv7_i139_3_3_2 v_shl_i138_3_3_2 8;
vpc v_conv7_i139_3_3_2@uint8 v_conv7_i139_3_3_2@uint32;
(*   %conv.i127.4.3.2 = zext i8 %conv5.i136.3.3.2 to i32 *)
cast v_conv_i127_4_3_2@uint32 v_conv5_i136_3_3_2@uint8;
(*   %and.i128.4.3.2 = and i32 %conv.i127.4.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_4_3_2 v_conv_i127_4_3_2 (0x1)@uint32;
(*   %conv1.i129.4.3.2 = zext i8 %conv7.i139.3.3.2 to i32 *)
cast v_conv1_i129_4_3_2@uint32 v_conv7_i139_3_3_2@uint8;
(*   %mul.i130.4.3.2 = mul nsw i32 %and.i128.4.3.2, %conv1.i129.4.3.2 *)
mul v_mul_i130_4_3_2 v_and_i128_4_3_2 v_conv1_i129_4_3_2;
(*   %conv2.i131.4.3.2 = zext i8 %conv3.i133.3.3.2 to i32 *)
cast v_conv2_i131_4_3_2@uint32 v_conv3_i133_3_3_2@uint8;
(*   %xor.i132.4.3.2 = xor i32 %conv2.i131.4.3.2, %mul.i130.4.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_4_3_2 v_conv2_i131_4_3_2 v_mul_i130_4_3_2;
(*   %conv3.i133.4.3.2 = trunc i32 %xor.i132.4.3.2 to i8 *)
split tmp_v_xor_i132_4_3_2 v_conv3_i133_4_3_2 v_xor_i132_4_3_2 8;
vpc v_conv3_i133_4_3_2@uint8 v_conv3_i133_4_3_2@uint32;
(*   %conv4.i134.4.3.2 = zext i8 %conv5.i136.3.3.2 to i32 *)
cast v_conv4_i134_4_3_2@uint32 v_conv5_i136_3_3_2@uint8;
(*   %shr.i135.4.3.2 = ashr i32 %conv4.i134.4.3.2, 1 *)
(* You may need to modify here *)
split v_shr_i135_4_3_2 tmp_to_be_used v_conv4_i134_4_3_2 1;
(*   %conv5.i136.4.3.2 = trunc i32 %shr.i135.4.3.2 to i8 *)
split tmp_v_shr_i135_4_3_2 v_conv5_i136_4_3_2 v_shr_i135_4_3_2 8;
vpc v_conv5_i136_4_3_2@uint8 v_conv5_i136_4_3_2@uint32;
(*   %conv6.i137.4.3.2 = zext i8 %conv7.i139.3.3.2 to i32 *)
cast v_conv6_i137_4_3_2@uint32 v_conv7_i139_3_3_2@uint8;
(*   %shl.i138.4.3.2 = shl i32 %conv6.i137.4.3.2, 1 *)
shls discard_123 v_shl_i138_4_3_2 v_conv6_i137_4_3_2 1;
(*   %conv7.i139.4.3.2 = trunc i32 %shl.i138.4.3.2 to i8 *)
split tmp_v_shl_i138_4_3_2 v_conv7_i139_4_3_2 v_shl_i138_4_3_2 8;
vpc v_conv7_i139_4_3_2@uint8 v_conv7_i139_4_3_2@uint32;
(*   %conv.i127.5.3.2 = zext i8 %conv5.i136.4.3.2 to i32 *)
cast v_conv_i127_5_3_2@uint32 v_conv5_i136_4_3_2@uint8;
(*   %and.i128.5.3.2 = and i32 %conv.i127.5.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_5_3_2 v_conv_i127_5_3_2 (0x1)@uint32;
(*   %conv1.i129.5.3.2 = zext i8 %conv7.i139.4.3.2 to i32 *)
cast v_conv1_i129_5_3_2@uint32 v_conv7_i139_4_3_2@uint8;
(*   %mul.i130.5.3.2 = mul nsw i32 %and.i128.5.3.2, %conv1.i129.5.3.2 *)
mul v_mul_i130_5_3_2 v_and_i128_5_3_2 v_conv1_i129_5_3_2;
(*   %conv2.i131.5.3.2 = zext i8 %conv3.i133.4.3.2 to i32 *)
cast v_conv2_i131_5_3_2@uint32 v_conv3_i133_4_3_2@uint8;
(*   %xor.i132.5.3.2 = xor i32 %conv2.i131.5.3.2, %mul.i130.5.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_5_3_2 v_conv2_i131_5_3_2 v_mul_i130_5_3_2;
(*   %conv3.i133.5.3.2 = trunc i32 %xor.i132.5.3.2 to i8 *)
split tmp_v_xor_i132_5_3_2 v_conv3_i133_5_3_2 v_xor_i132_5_3_2 8;
vpc v_conv3_i133_5_3_2@uint8 v_conv3_i133_5_3_2@uint32;
(*   %conv4.i134.5.3.2 = zext i8 %conv5.i136.4.3.2 to i32 *)
cast v_conv4_i134_5_3_2@uint32 v_conv5_i136_4_3_2@uint8;
(*   %shr.i135.5.3.2 = ashr i32 %conv4.i134.5.3.2, 1 *)
(* You may need to modify here *)
split v_shr_i135_5_3_2 tmp_to_be_used v_conv4_i134_5_3_2 1;
(*   %conv5.i136.5.3.2 = trunc i32 %shr.i135.5.3.2 to i8 *)
split tmp_v_shr_i135_5_3_2 v_conv5_i136_5_3_2 v_shr_i135_5_3_2 8;
vpc v_conv5_i136_5_3_2@uint8 v_conv5_i136_5_3_2@uint32;
(*   %conv6.i137.5.3.2 = zext i8 %conv7.i139.4.3.2 to i32 *)
cast v_conv6_i137_5_3_2@uint32 v_conv7_i139_4_3_2@uint8;
(*   %shl.i138.5.3.2 = shl i32 %conv6.i137.5.3.2, 1 *)
shls discard_124 v_shl_i138_5_3_2 v_conv6_i137_5_3_2 1;
(*   %conv7.i139.5.3.2 = trunc i32 %shl.i138.5.3.2 to i8 *)
split tmp_v_shl_i138_5_3_2 v_conv7_i139_5_3_2 v_shl_i138_5_3_2 8;
vpc v_conv7_i139_5_3_2@uint8 v_conv7_i139_5_3_2@uint32;
(*   %conv.i127.6.3.2 = zext i8 %conv5.i136.5.3.2 to i32 *)
cast v_conv_i127_6_3_2@uint32 v_conv5_i136_5_3_2@uint8;
(*   %and.i128.6.3.2 = and i32 %conv.i127.6.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_6_3_2 v_conv_i127_6_3_2 (0x1)@uint32;
(*   %conv1.i129.6.3.2 = zext i8 %conv7.i139.5.3.2 to i32 *)
cast v_conv1_i129_6_3_2@uint32 v_conv7_i139_5_3_2@uint8;
(*   %mul.i130.6.3.2 = mul nsw i32 %and.i128.6.3.2, %conv1.i129.6.3.2 *)
mul v_mul_i130_6_3_2 v_and_i128_6_3_2 v_conv1_i129_6_3_2;
(*   %conv2.i131.6.3.2 = zext i8 %conv3.i133.5.3.2 to i32 *)
cast v_conv2_i131_6_3_2@uint32 v_conv3_i133_5_3_2@uint8;
(*   %xor.i132.6.3.2 = xor i32 %conv2.i131.6.3.2, %mul.i130.6.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_6_3_2 v_conv2_i131_6_3_2 v_mul_i130_6_3_2;
(*   %conv3.i133.6.3.2 = trunc i32 %xor.i132.6.3.2 to i8 *)
split tmp_v_xor_i132_6_3_2 v_conv3_i133_6_3_2 v_xor_i132_6_3_2 8;
vpc v_conv3_i133_6_3_2@uint8 v_conv3_i133_6_3_2@uint32;
(*   %conv4.i134.6.3.2 = zext i8 %conv5.i136.5.3.2 to i32 *)
cast v_conv4_i134_6_3_2@uint32 v_conv5_i136_5_3_2@uint8;
(*   %shr.i135.6.3.2 = ashr i32 %conv4.i134.6.3.2, 1 *)
(* You may need to modify here *)
split v_shr_i135_6_3_2 tmp_to_be_used v_conv4_i134_6_3_2 1;
(*   %conv5.i136.6.3.2 = trunc i32 %shr.i135.6.3.2 to i8 *)
split tmp_v_shr_i135_6_3_2 v_conv5_i136_6_3_2 v_shr_i135_6_3_2 8;
vpc v_conv5_i136_6_3_2@uint8 v_conv5_i136_6_3_2@uint32;
(*   %conv6.i137.6.3.2 = zext i8 %conv7.i139.5.3.2 to i32 *)
cast v_conv6_i137_6_3_2@uint32 v_conv7_i139_5_3_2@uint8;
(*   %shl.i138.6.3.2 = shl i32 %conv6.i137.6.3.2, 1 *)
shls discard_125 v_shl_i138_6_3_2 v_conv6_i137_6_3_2 1;
(*   %conv7.i139.6.3.2 = trunc i32 %shl.i138.6.3.2 to i8 *)
split tmp_v_shl_i138_6_3_2 v_conv7_i139_6_3_2 v_shl_i138_6_3_2 8;
vpc v_conv7_i139_6_3_2@uint8 v_conv7_i139_6_3_2@uint32;
(*   %conv.i127.7.3.2 = zext i8 %conv5.i136.6.3.2 to i32 *)
cast v_conv_i127_7_3_2@uint32 v_conv5_i136_6_3_2@uint8;
(*   %and.i128.7.3.2 = and i32 %conv.i127.7.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_7_3_2 v_conv_i127_7_3_2 (0x1)@uint32;
(*   %conv1.i129.7.3.2 = zext i8 %conv7.i139.6.3.2 to i32 *)
cast v_conv1_i129_7_3_2@uint32 v_conv7_i139_6_3_2@uint8;
(*   %mul.i130.7.3.2 = mul nsw i32 %and.i128.7.3.2, %conv1.i129.7.3.2 *)
mul v_mul_i130_7_3_2 v_and_i128_7_3_2 v_conv1_i129_7_3_2;
(*   %conv2.i131.7.3.2 = zext i8 %conv3.i133.6.3.2 to i32 *)
cast v_conv2_i131_7_3_2@uint32 v_conv3_i133_6_3_2@uint8;
(*   %xor.i132.7.3.2 = xor i32 %conv2.i131.7.3.2, %mul.i130.7.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_7_3_2 v_conv2_i131_7_3_2 v_mul_i130_7_3_2;
(*   %conv3.i133.7.3.2 = trunc i32 %xor.i132.7.3.2 to i8 *)
split tmp_v_xor_i132_7_3_2 v_conv3_i133_7_3_2 v_xor_i132_7_3_2 8;
vpc v_conv3_i133_7_3_2@uint8 v_conv3_i133_7_3_2@uint32;
(*   %arrayidx56.3.2 = getelementptr inbounds [16 x i8], [16 x i8]* %p1, i64 0, i64 11 *)
(*   store i8 %conv3.i133.7.3.2, i8* %arrayidx56.3.2, align 1 *)
mov p1_11 v_conv3_i133_7_3_2;
(*   %arrayidx60.3.2 = getelementptr inbounds [16 x i8], [16 x i8]* %p0, i64 0, i64 11 *)
(*   %76 = load i8, i8* %arrayidx60.3.2, align 1 *)
mov v76 p0_11;
(*   %conv61.3.2 = zext i8 %76 to i32 *)
cast v_conv61_3_2@uint32 v76@uint8;
(*   %arrayidx65.3.2 = getelementptr inbounds [16 x i8], [16 x i8]* %p1, i64 0, i64 11 *)
(*   %77 = load i8, i8* %arrayidx65.3.2, align 1 *)
mov v77 p1_11;
(*   %conv66.3.2 = zext i8 %77 to i32 *)
cast v_conv66_3_2@uint32 v77@uint8;
(*   %xor67.3.2 = xor i32 %conv61.3.2, %conv66.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor67_3_2 v_conv61_3_2 v_conv66_3_2;
(*   %conv68.3.2 = trunc i32 %xor67.3.2 to i8 *)
split tmp_v_xor67_3_2 v_conv68_3_2 v_xor67_3_2 8;
vpc v_conv68_3_2@uint8 v_conv68_3_2@uint32;
(*   %arrayidx72.3.2 = getelementptr inbounds [16 x i8], [16 x i8]* %z, i64 0, i64 11 *)
(*   store i8 %conv68.3.2, i8* %arrayidx72.3.2, align 1 *)
mov z_11 v_conv68_3_2;
(*   %arrayidx34.3 = getelementptr inbounds i8, i8* %a, i64 3 *)
(*   %arrayidx47.3 = getelementptr inbounds i8, i8* %a, i64 3 *)
(*   %78 = load i8, i8* %b, align 1 *)
mov v78 b_0;
(*   %conv.3652 = zext i8 %78 to i32 *)
cast v_conv_3652@uint32 v78@uint8;
(*   %arrayidx26.3654 = getelementptr inbounds i8, i8* %r, i64 12 *)
(*   %79 = load i8, i8* %arrayidx26.3654, align 1 *)
mov v79 r_12;
(*   %conv27.3655 = zext i8 %79 to i32 *)
cast v_conv27_3655@uint32 v79@uint8;
(*   %xor.3656 = xor i32 %conv.3652, %conv27.3655 *)
(* You may need to modify here *)
xor uint32 v_xor_3656 v_conv_3652 v_conv27_3655;
(*   %conv28.3657 = trunc i32 %xor.3656 to i8 *)
split tmp_v_xor_3656 v_conv28_3657 v_xor_3656 8;
vpc v_conv28_3657@uint8 v_conv28_3657@uint32;
(*   %arrayidx32.3659 = getelementptr inbounds [16 x i8], [16 x i8]* %s, i64 0, i64 12 *)
(*   store i8 %conv28.3657, i8* %arrayidx32.3659, align 1 *)
mov s_12 v_conv28_3657;
(*   %80 = load i8, i8* %arrayidx34.3, align 1 *)
mov v80 a_3;
(*   %conv35.3660 = zext i8 %80 to i32 *)
cast v_conv35_3660@uint32 v80@uint8;
(*   %xor36.3661 = xor i32 %conv35.3660, 1 *)
(* You may need to modify here *)
xor uint32 v_xor36_3661 v_conv35_3660 (0x1)@uint32;
(*   %conv37.3662 = trunc i32 %xor36.3661 to i8 *)
split tmp_v_xor36_3661 v_conv37_3662 v_xor36_3661 8;
vpc v_conv37_3662@uint8 v_conv37_3662@uint32;
(*   %arrayidx41.3664 = getelementptr inbounds i8, i8* %r, i64 12 *)
(*   %81 = load i8, i8* %arrayidx41.3664, align 1 *)
mov v81 r_12;
(*   %conv.i.3666 = zext i8 %81 to i32 *)
cast v_conv_i_3666@uint32 v81@uint8;
(*   %and.i.3667 = and i32 %conv.i.3666, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3667 v_conv_i_3666 (0x1)@uint32;
(*   %conv1.i.3668 = zext i8 %conv37.3662 to i32 *)
cast v_conv1_i_3668@uint32 v_conv37_3662@uint8;
(*   %mul.i.3669 = mul nsw i32 %and.i.3667, %conv1.i.3668 *)
mul v_mul_i_3669 v_and_i_3667 v_conv1_i_3668;
(*   %conv3.i.3670 = trunc i32 %mul.i.3669 to i8 *)
split tmp_v_mul_i_3669 v_conv3_i_3670 v_mul_i_3669 8;
vpc v_conv3_i_3670@uint8 v_conv3_i_3670@uint32;
(*   %conv4.i.3671 = zext i8 %81 to i32 *)
cast v_conv4_i_3671@uint32 v81@uint8;
(*   %shr.i.3672 = ashr i32 %conv4.i.3671, 1 *)
(* You may need to modify here *)
split v_shr_i_3672 tmp_to_be_used v_conv4_i_3671 1;
(*   %conv5.i.3673 = trunc i32 %shr.i.3672 to i8 *)
split tmp_v_shr_i_3672 v_conv5_i_3673 v_shr_i_3672 8;
vpc v_conv5_i_3673@uint8 v_conv5_i_3673@uint32;
(*   %conv6.i.3674 = zext i8 %conv37.3662 to i32 *)
cast v_conv6_i_3674@uint32 v_conv37_3662@uint8;
(*   %shl.i.3675 = shl i32 %conv6.i.3674, 1 *)
shls discard_126 v_shl_i_3675 v_conv6_i_3674 1;
(*   %conv7.i.3676 = trunc i32 %shl.i.3675 to i8 *)
split tmp_v_shl_i_3675 v_conv7_i_3676 v_shl_i_3675 8;
vpc v_conv7_i_3676@uint8 v_conv7_i_3676@uint32;
(*   %conv.i.1.3677 = zext i8 %conv5.i.3673 to i32 *)
cast v_conv_i_1_3677@uint32 v_conv5_i_3673@uint8;
(*   %and.i.1.3678 = and i32 %conv.i.1.3677, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_3678 v_conv_i_1_3677 (0x1)@uint32;
(*   %conv1.i.1.3679 = zext i8 %conv7.i.3676 to i32 *)
cast v_conv1_i_1_3679@uint32 v_conv7_i_3676@uint8;
(*   %mul.i.1.3680 = mul nsw i32 %and.i.1.3678, %conv1.i.1.3679 *)
mul v_mul_i_1_3680 v_and_i_1_3678 v_conv1_i_1_3679;
(*   %conv2.i.1.3681 = zext i8 %conv3.i.3670 to i32 *)
cast v_conv2_i_1_3681@uint32 v_conv3_i_3670@uint8;
(*   %xor.i.1.3682 = xor i32 %conv2.i.1.3681, %mul.i.1.3680 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_3682 v_conv2_i_1_3681 v_mul_i_1_3680;
(*   %conv3.i.1.3683 = trunc i32 %xor.i.1.3682 to i8 *)
split tmp_v_xor_i_1_3682 v_conv3_i_1_3683 v_xor_i_1_3682 8;
vpc v_conv3_i_1_3683@uint8 v_conv3_i_1_3683@uint32;
(*   %conv4.i.1.3684 = zext i8 %conv5.i.3673 to i32 *)
cast v_conv4_i_1_3684@uint32 v_conv5_i_3673@uint8;
(*   %shr.i.1.3685 = ashr i32 %conv4.i.1.3684, 1 *)
(* You may need to modify here *)
split v_shr_i_1_3685 tmp_to_be_used v_conv4_i_1_3684 1;
(*   %conv5.i.1.3686 = trunc i32 %shr.i.1.3685 to i8 *)
split tmp_v_shr_i_1_3685 v_conv5_i_1_3686 v_shr_i_1_3685 8;
vpc v_conv5_i_1_3686@uint8 v_conv5_i_1_3686@uint32;
(*   %conv6.i.1.3687 = zext i8 %conv7.i.3676 to i32 *)
cast v_conv6_i_1_3687@uint32 v_conv7_i_3676@uint8;
(*   %shl.i.1.3688 = shl i32 %conv6.i.1.3687, 1 *)
shls discard_127 v_shl_i_1_3688 v_conv6_i_1_3687 1;
(*   %conv7.i.1.3689 = trunc i32 %shl.i.1.3688 to i8 *)
split tmp_v_shl_i_1_3688 v_conv7_i_1_3689 v_shl_i_1_3688 8;
vpc v_conv7_i_1_3689@uint8 v_conv7_i_1_3689@uint32;
(*   %conv.i.2.3690 = zext i8 %conv5.i.1.3686 to i32 *)
cast v_conv_i_2_3690@uint32 v_conv5_i_1_3686@uint8;
(*   %and.i.2.3691 = and i32 %conv.i.2.3690, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_3691 v_conv_i_2_3690 (0x1)@uint32;
(*   %conv1.i.2.3692 = zext i8 %conv7.i.1.3689 to i32 *)
cast v_conv1_i_2_3692@uint32 v_conv7_i_1_3689@uint8;
(*   %mul.i.2.3693 = mul nsw i32 %and.i.2.3691, %conv1.i.2.3692 *)
mul v_mul_i_2_3693 v_and_i_2_3691 v_conv1_i_2_3692;
(*   %conv2.i.2.3694 = zext i8 %conv3.i.1.3683 to i32 *)
cast v_conv2_i_2_3694@uint32 v_conv3_i_1_3683@uint8;
(*   %xor.i.2.3695 = xor i32 %conv2.i.2.3694, %mul.i.2.3693 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_3695 v_conv2_i_2_3694 v_mul_i_2_3693;
(*   %conv3.i.2.3696 = trunc i32 %xor.i.2.3695 to i8 *)
split tmp_v_xor_i_2_3695 v_conv3_i_2_3696 v_xor_i_2_3695 8;
vpc v_conv3_i_2_3696@uint8 v_conv3_i_2_3696@uint32;
(*   %conv4.i.2.3697 = zext i8 %conv5.i.1.3686 to i32 *)
cast v_conv4_i_2_3697@uint32 v_conv5_i_1_3686@uint8;
(*   %shr.i.2.3698 = ashr i32 %conv4.i.2.3697, 1 *)
(* You may need to modify here *)
split v_shr_i_2_3698 tmp_to_be_used v_conv4_i_2_3697 1;
(*   %conv5.i.2.3699 = trunc i32 %shr.i.2.3698 to i8 *)
split tmp_v_shr_i_2_3698 v_conv5_i_2_3699 v_shr_i_2_3698 8;
vpc v_conv5_i_2_3699@uint8 v_conv5_i_2_3699@uint32;
(*   %conv6.i.2.3700 = zext i8 %conv7.i.1.3689 to i32 *)
cast v_conv6_i_2_3700@uint32 v_conv7_i_1_3689@uint8;
(*   %shl.i.2.3701 = shl i32 %conv6.i.2.3700, 1 *)
shls discard_128 v_shl_i_2_3701 v_conv6_i_2_3700 1;
(*   %conv7.i.2.3702 = trunc i32 %shl.i.2.3701 to i8 *)
split tmp_v_shl_i_2_3701 v_conv7_i_2_3702 v_shl_i_2_3701 8;
vpc v_conv7_i_2_3702@uint8 v_conv7_i_2_3702@uint32;
(*   %conv.i.3.3703 = zext i8 %conv5.i.2.3699 to i32 *)
cast v_conv_i_3_3703@uint32 v_conv5_i_2_3699@uint8;
(*   %and.i.3.3704 = and i32 %conv.i.3.3703, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_3704 v_conv_i_3_3703 (0x1)@uint32;
(*   %conv1.i.3.3705 = zext i8 %conv7.i.2.3702 to i32 *)
cast v_conv1_i_3_3705@uint32 v_conv7_i_2_3702@uint8;
(*   %mul.i.3.3706 = mul nsw i32 %and.i.3.3704, %conv1.i.3.3705 *)
mul v_mul_i_3_3706 v_and_i_3_3704 v_conv1_i_3_3705;
(*   %conv2.i.3.3707 = zext i8 %conv3.i.2.3696 to i32 *)
cast v_conv2_i_3_3707@uint32 v_conv3_i_2_3696@uint8;
(*   %xor.i.3.3708 = xor i32 %conv2.i.3.3707, %mul.i.3.3706 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_3708 v_conv2_i_3_3707 v_mul_i_3_3706;
(*   %conv3.i.3.3709 = trunc i32 %xor.i.3.3708 to i8 *)
split tmp_v_xor_i_3_3708 v_conv3_i_3_3709 v_xor_i_3_3708 8;
vpc v_conv3_i_3_3709@uint8 v_conv3_i_3_3709@uint32;
(*   %conv4.i.3.3710 = zext i8 %conv5.i.2.3699 to i32 *)
cast v_conv4_i_3_3710@uint32 v_conv5_i_2_3699@uint8;
(*   %shr.i.3.3711 = ashr i32 %conv4.i.3.3710, 1 *)
(* You may need to modify here *)
split v_shr_i_3_3711 tmp_to_be_used v_conv4_i_3_3710 1;
(*   %conv5.i.3.3712 = trunc i32 %shr.i.3.3711 to i8 *)
split tmp_v_shr_i_3_3711 v_conv5_i_3_3712 v_shr_i_3_3711 8;
vpc v_conv5_i_3_3712@uint8 v_conv5_i_3_3712@uint32;
(*   %conv6.i.3.3713 = zext i8 %conv7.i.2.3702 to i32 *)
cast v_conv6_i_3_3713@uint32 v_conv7_i_2_3702@uint8;
(*   %shl.i.3.3714 = shl i32 %conv6.i.3.3713, 1 *)
shls discard_129 v_shl_i_3_3714 v_conv6_i_3_3713 1;
(*   %conv7.i.3.3715 = trunc i32 %shl.i.3.3714 to i8 *)
split tmp_v_shl_i_3_3714 v_conv7_i_3_3715 v_shl_i_3_3714 8;
vpc v_conv7_i_3_3715@uint8 v_conv7_i_3_3715@uint32;
(*   %conv.i.4.3716 = zext i8 %conv5.i.3.3712 to i32 *)
cast v_conv_i_4_3716@uint32 v_conv5_i_3_3712@uint8;
(*   %and.i.4.3717 = and i32 %conv.i.4.3716, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_3717 v_conv_i_4_3716 (0x1)@uint32;
(*   %conv1.i.4.3718 = zext i8 %conv7.i.3.3715 to i32 *)
cast v_conv1_i_4_3718@uint32 v_conv7_i_3_3715@uint8;
(*   %mul.i.4.3719 = mul nsw i32 %and.i.4.3717, %conv1.i.4.3718 *)
mul v_mul_i_4_3719 v_and_i_4_3717 v_conv1_i_4_3718;
(*   %conv2.i.4.3720 = zext i8 %conv3.i.3.3709 to i32 *)
cast v_conv2_i_4_3720@uint32 v_conv3_i_3_3709@uint8;
(*   %xor.i.4.3721 = xor i32 %conv2.i.4.3720, %mul.i.4.3719 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_3721 v_conv2_i_4_3720 v_mul_i_4_3719;
(*   %conv3.i.4.3722 = trunc i32 %xor.i.4.3721 to i8 *)
split tmp_v_xor_i_4_3721 v_conv3_i_4_3722 v_xor_i_4_3721 8;
vpc v_conv3_i_4_3722@uint8 v_conv3_i_4_3722@uint32;
(*   %conv4.i.4.3723 = zext i8 %conv5.i.3.3712 to i32 *)
cast v_conv4_i_4_3723@uint32 v_conv5_i_3_3712@uint8;
(*   %shr.i.4.3724 = ashr i32 %conv4.i.4.3723, 1 *)
(* You may need to modify here *)
split v_shr_i_4_3724 tmp_to_be_used v_conv4_i_4_3723 1;
(*   %conv5.i.4.3725 = trunc i32 %shr.i.4.3724 to i8 *)
split tmp_v_shr_i_4_3724 v_conv5_i_4_3725 v_shr_i_4_3724 8;
vpc v_conv5_i_4_3725@uint8 v_conv5_i_4_3725@uint32;
(*   %conv6.i.4.3726 = zext i8 %conv7.i.3.3715 to i32 *)
cast v_conv6_i_4_3726@uint32 v_conv7_i_3_3715@uint8;
(*   %shl.i.4.3727 = shl i32 %conv6.i.4.3726, 1 *)
shls discard_130 v_shl_i_4_3727 v_conv6_i_4_3726 1;
(*   %conv7.i.4.3728 = trunc i32 %shl.i.4.3727 to i8 *)
split tmp_v_shl_i_4_3727 v_conv7_i_4_3728 v_shl_i_4_3727 8;
vpc v_conv7_i_4_3728@uint8 v_conv7_i_4_3728@uint32;
(*   %conv.i.5.3729 = zext i8 %conv5.i.4.3725 to i32 *)
cast v_conv_i_5_3729@uint32 v_conv5_i_4_3725@uint8;
(*   %and.i.5.3730 = and i32 %conv.i.5.3729, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_3730 v_conv_i_5_3729 (0x1)@uint32;
(*   %conv1.i.5.3731 = zext i8 %conv7.i.4.3728 to i32 *)
cast v_conv1_i_5_3731@uint32 v_conv7_i_4_3728@uint8;
(*   %mul.i.5.3732 = mul nsw i32 %and.i.5.3730, %conv1.i.5.3731 *)
mul v_mul_i_5_3732 v_and_i_5_3730 v_conv1_i_5_3731;
(*   %conv2.i.5.3733 = zext i8 %conv3.i.4.3722 to i32 *)
cast v_conv2_i_5_3733@uint32 v_conv3_i_4_3722@uint8;
(*   %xor.i.5.3734 = xor i32 %conv2.i.5.3733, %mul.i.5.3732 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_3734 v_conv2_i_5_3733 v_mul_i_5_3732;
(*   %conv3.i.5.3735 = trunc i32 %xor.i.5.3734 to i8 *)
split tmp_v_xor_i_5_3734 v_conv3_i_5_3735 v_xor_i_5_3734 8;
vpc v_conv3_i_5_3735@uint8 v_conv3_i_5_3735@uint32;
(*   %conv4.i.5.3736 = zext i8 %conv5.i.4.3725 to i32 *)
cast v_conv4_i_5_3736@uint32 v_conv5_i_4_3725@uint8;
(*   %shr.i.5.3737 = ashr i32 %conv4.i.5.3736, 1 *)
(* You may need to modify here *)
split v_shr_i_5_3737 tmp_to_be_used v_conv4_i_5_3736 1;
(*   %conv5.i.5.3738 = trunc i32 %shr.i.5.3737 to i8 *)
split tmp_v_shr_i_5_3737 v_conv5_i_5_3738 v_shr_i_5_3737 8;
vpc v_conv5_i_5_3738@uint8 v_conv5_i_5_3738@uint32;
(*   %conv6.i.5.3739 = zext i8 %conv7.i.4.3728 to i32 *)
cast v_conv6_i_5_3739@uint32 v_conv7_i_4_3728@uint8;
(*   %shl.i.5.3740 = shl i32 %conv6.i.5.3739, 1 *)
shls discard_131 v_shl_i_5_3740 v_conv6_i_5_3739 1;
(*   %conv7.i.5.3741 = trunc i32 %shl.i.5.3740 to i8 *)
split tmp_v_shl_i_5_3740 v_conv7_i_5_3741 v_shl_i_5_3740 8;
vpc v_conv7_i_5_3741@uint8 v_conv7_i_5_3741@uint32;
(*   %conv.i.6.3742 = zext i8 %conv5.i.5.3738 to i32 *)
cast v_conv_i_6_3742@uint32 v_conv5_i_5_3738@uint8;
(*   %and.i.6.3743 = and i32 %conv.i.6.3742, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_3743 v_conv_i_6_3742 (0x1)@uint32;
(*   %conv1.i.6.3744 = zext i8 %conv7.i.5.3741 to i32 *)
cast v_conv1_i_6_3744@uint32 v_conv7_i_5_3741@uint8;
(*   %mul.i.6.3745 = mul nsw i32 %and.i.6.3743, %conv1.i.6.3744 *)
mul v_mul_i_6_3745 v_and_i_6_3743 v_conv1_i_6_3744;
(*   %conv2.i.6.3746 = zext i8 %conv3.i.5.3735 to i32 *)
cast v_conv2_i_6_3746@uint32 v_conv3_i_5_3735@uint8;
(*   %xor.i.6.3747 = xor i32 %conv2.i.6.3746, %mul.i.6.3745 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_3747 v_conv2_i_6_3746 v_mul_i_6_3745;
(*   %conv3.i.6.3748 = trunc i32 %xor.i.6.3747 to i8 *)
split tmp_v_xor_i_6_3747 v_conv3_i_6_3748 v_xor_i_6_3747 8;
vpc v_conv3_i_6_3748@uint8 v_conv3_i_6_3748@uint32;
(*   %conv4.i.6.3749 = zext i8 %conv5.i.5.3738 to i32 *)
cast v_conv4_i_6_3749@uint32 v_conv5_i_5_3738@uint8;
(*   %shr.i.6.3750 = ashr i32 %conv4.i.6.3749, 1 *)
(* You may need to modify here *)
split v_shr_i_6_3750 tmp_to_be_used v_conv4_i_6_3749 1;
(*   %conv5.i.6.3751 = trunc i32 %shr.i.6.3750 to i8 *)
split tmp_v_shr_i_6_3750 v_conv5_i_6_3751 v_shr_i_6_3750 8;
vpc v_conv5_i_6_3751@uint8 v_conv5_i_6_3751@uint32;
(*   %conv6.i.6.3752 = zext i8 %conv7.i.5.3741 to i32 *)
cast v_conv6_i_6_3752@uint32 v_conv7_i_5_3741@uint8;
(*   %shl.i.6.3753 = shl i32 %conv6.i.6.3752, 1 *)
shls discard_132 v_shl_i_6_3753 v_conv6_i_6_3752 1;
(*   %conv7.i.6.3754 = trunc i32 %shl.i.6.3753 to i8 *)
split tmp_v_shl_i_6_3753 v_conv7_i_6_3754 v_shl_i_6_3753 8;
vpc v_conv7_i_6_3754@uint8 v_conv7_i_6_3754@uint32;
(*   %conv.i.7.3755 = zext i8 %conv5.i.6.3751 to i32 *)
cast v_conv_i_7_3755@uint32 v_conv5_i_6_3751@uint8;
(*   %and.i.7.3756 = and i32 %conv.i.7.3755, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_3756 v_conv_i_7_3755 (0x1)@uint32;
(*   %conv1.i.7.3757 = zext i8 %conv7.i.6.3754 to i32 *)
cast v_conv1_i_7_3757@uint32 v_conv7_i_6_3754@uint8;
(*   %mul.i.7.3758 = mul nsw i32 %and.i.7.3756, %conv1.i.7.3757 *)
mul v_mul_i_7_3758 v_and_i_7_3756 v_conv1_i_7_3757;
(*   %conv2.i.7.3759 = zext i8 %conv3.i.6.3748 to i32 *)
cast v_conv2_i_7_3759@uint32 v_conv3_i_6_3748@uint8;
(*   %xor.i.7.3760 = xor i32 %conv2.i.7.3759, %mul.i.7.3758 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_3760 v_conv2_i_7_3759 v_mul_i_7_3758;
(*   %conv3.i.7.3761 = trunc i32 %xor.i.7.3760 to i8 *)
split tmp_v_xor_i_7_3760 v_conv3_i_7_3761 v_xor_i_7_3760 8;
vpc v_conv3_i_7_3761@uint8 v_conv3_i_7_3761@uint32;
(*   %arrayidx45.3765 = getelementptr inbounds [16 x i8], [16 x i8]* %p0, i64 0, i64 12 *)
(*   store i8 %conv3.i.7.3761, i8* %arrayidx45.3765, align 1 *)
mov p0_12 v_conv3_i_7_3761;
(*   %82 = load i8, i8* %arrayidx47.3, align 1 *)
mov v82 a_3;
(*   %arrayidx51.3767 = getelementptr inbounds [16 x i8], [16 x i8]* %s, i64 0, i64 12 *)
(*   %83 = load i8, i8* %arrayidx51.3767, align 1 *)
mov v83 s_12;
(*   %conv.i127.3769 = zext i8 %83 to i32 *)
cast v_conv_i127_3769@uint32 v83@uint8;
(*   %and.i128.3770 = and i32 %conv.i127.3769, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_3770 v_conv_i127_3769 (0x1)@uint32;
(*   %conv1.i129.3771 = zext i8 %82 to i32 *)
cast v_conv1_i129_3771@uint32 v82@uint8;
(*   %mul.i130.3772 = mul nsw i32 %and.i128.3770, %conv1.i129.3771 *)
mul v_mul_i130_3772 v_and_i128_3770 v_conv1_i129_3771;
(*   %conv3.i133.3773 = trunc i32 %mul.i130.3772 to i8 *)
split tmp_v_mul_i130_3772 v_conv3_i133_3773 v_mul_i130_3772 8;
vpc v_conv3_i133_3773@uint8 v_conv3_i133_3773@uint32;
(*   %conv4.i134.3774 = zext i8 %83 to i32 *)
cast v_conv4_i134_3774@uint32 v83@uint8;
(*   %shr.i135.3775 = ashr i32 %conv4.i134.3774, 1 *)
(* You may need to modify here *)
split v_shr_i135_3775 tmp_to_be_used v_conv4_i134_3774 1;
(*   %conv5.i136.3776 = trunc i32 %shr.i135.3775 to i8 *)
split tmp_v_shr_i135_3775 v_conv5_i136_3776 v_shr_i135_3775 8;
vpc v_conv5_i136_3776@uint8 v_conv5_i136_3776@uint32;
(*   %conv6.i137.3777 = zext i8 %82 to i32 *)
cast v_conv6_i137_3777@uint32 v82@uint8;
(*   %shl.i138.3778 = shl i32 %conv6.i137.3777, 1 *)
shls discard_133 v_shl_i138_3778 v_conv6_i137_3777 1;
(*   %conv7.i139.3779 = trunc i32 %shl.i138.3778 to i8 *)
split tmp_v_shl_i138_3778 v_conv7_i139_3779 v_shl_i138_3778 8;
vpc v_conv7_i139_3779@uint8 v_conv7_i139_3779@uint32;
(*   %conv.i127.1.3780 = zext i8 %conv5.i136.3776 to i32 *)
cast v_conv_i127_1_3780@uint32 v_conv5_i136_3776@uint8;
(*   %and.i128.1.3781 = and i32 %conv.i127.1.3780, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1_3781 v_conv_i127_1_3780 (0x1)@uint32;
(*   %conv1.i129.1.3782 = zext i8 %conv7.i139.3779 to i32 *)
cast v_conv1_i129_1_3782@uint32 v_conv7_i139_3779@uint8;
(*   %mul.i130.1.3783 = mul nsw i32 %and.i128.1.3781, %conv1.i129.1.3782 *)
mul v_mul_i130_1_3783 v_and_i128_1_3781 v_conv1_i129_1_3782;
(*   %conv2.i131.1.3784 = zext i8 %conv3.i133.3773 to i32 *)
cast v_conv2_i131_1_3784@uint32 v_conv3_i133_3773@uint8;
(*   %xor.i132.1.3785 = xor i32 %conv2.i131.1.3784, %mul.i130.1.3783 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_1_3785 v_conv2_i131_1_3784 v_mul_i130_1_3783;
(*   %conv3.i133.1.3786 = trunc i32 %xor.i132.1.3785 to i8 *)
split tmp_v_xor_i132_1_3785 v_conv3_i133_1_3786 v_xor_i132_1_3785 8;
vpc v_conv3_i133_1_3786@uint8 v_conv3_i133_1_3786@uint32;
(*   %conv4.i134.1.3787 = zext i8 %conv5.i136.3776 to i32 *)
cast v_conv4_i134_1_3787@uint32 v_conv5_i136_3776@uint8;
(*   %shr.i135.1.3788 = ashr i32 %conv4.i134.1.3787, 1 *)
(* You may need to modify here *)
split v_shr_i135_1_3788 tmp_to_be_used v_conv4_i134_1_3787 1;
(*   %conv5.i136.1.3789 = trunc i32 %shr.i135.1.3788 to i8 *)
split tmp_v_shr_i135_1_3788 v_conv5_i136_1_3789 v_shr_i135_1_3788 8;
vpc v_conv5_i136_1_3789@uint8 v_conv5_i136_1_3789@uint32;
(*   %conv6.i137.1.3790 = zext i8 %conv7.i139.3779 to i32 *)
cast v_conv6_i137_1_3790@uint32 v_conv7_i139_3779@uint8;
(*   %shl.i138.1.3791 = shl i32 %conv6.i137.1.3790, 1 *)
shls discard_134 v_shl_i138_1_3791 v_conv6_i137_1_3790 1;
(*   %conv7.i139.1.3792 = trunc i32 %shl.i138.1.3791 to i8 *)
split tmp_v_shl_i138_1_3791 v_conv7_i139_1_3792 v_shl_i138_1_3791 8;
vpc v_conv7_i139_1_3792@uint8 v_conv7_i139_1_3792@uint32;
(*   %conv.i127.2.3793 = zext i8 %conv5.i136.1.3789 to i32 *)
cast v_conv_i127_2_3793@uint32 v_conv5_i136_1_3789@uint8;
(*   %and.i128.2.3794 = and i32 %conv.i127.2.3793, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_2_3794 v_conv_i127_2_3793 (0x1)@uint32;
(*   %conv1.i129.2.3795 = zext i8 %conv7.i139.1.3792 to i32 *)
cast v_conv1_i129_2_3795@uint32 v_conv7_i139_1_3792@uint8;
(*   %mul.i130.2.3796 = mul nsw i32 %and.i128.2.3794, %conv1.i129.2.3795 *)
mul v_mul_i130_2_3796 v_and_i128_2_3794 v_conv1_i129_2_3795;
(*   %conv2.i131.2.3797 = zext i8 %conv3.i133.1.3786 to i32 *)
cast v_conv2_i131_2_3797@uint32 v_conv3_i133_1_3786@uint8;
(*   %xor.i132.2.3798 = xor i32 %conv2.i131.2.3797, %mul.i130.2.3796 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_2_3798 v_conv2_i131_2_3797 v_mul_i130_2_3796;
(*   %conv3.i133.2.3799 = trunc i32 %xor.i132.2.3798 to i8 *)
split tmp_v_xor_i132_2_3798 v_conv3_i133_2_3799 v_xor_i132_2_3798 8;
vpc v_conv3_i133_2_3799@uint8 v_conv3_i133_2_3799@uint32;
(*   %conv4.i134.2.3800 = zext i8 %conv5.i136.1.3789 to i32 *)
cast v_conv4_i134_2_3800@uint32 v_conv5_i136_1_3789@uint8;
(*   %shr.i135.2.3801 = ashr i32 %conv4.i134.2.3800, 1 *)
(* You may need to modify here *)
split v_shr_i135_2_3801 tmp_to_be_used v_conv4_i134_2_3800 1;
(*   %conv5.i136.2.3802 = trunc i32 %shr.i135.2.3801 to i8 *)
split tmp_v_shr_i135_2_3801 v_conv5_i136_2_3802 v_shr_i135_2_3801 8;
vpc v_conv5_i136_2_3802@uint8 v_conv5_i136_2_3802@uint32;
(*   %conv6.i137.2.3803 = zext i8 %conv7.i139.1.3792 to i32 *)
cast v_conv6_i137_2_3803@uint32 v_conv7_i139_1_3792@uint8;
(*   %shl.i138.2.3804 = shl i32 %conv6.i137.2.3803, 1 *)
shls discard_135 v_shl_i138_2_3804 v_conv6_i137_2_3803 1;
(*   %conv7.i139.2.3805 = trunc i32 %shl.i138.2.3804 to i8 *)
split tmp_v_shl_i138_2_3804 v_conv7_i139_2_3805 v_shl_i138_2_3804 8;
vpc v_conv7_i139_2_3805@uint8 v_conv7_i139_2_3805@uint32;
(*   %conv.i127.3.3806 = zext i8 %conv5.i136.2.3802 to i32 *)
cast v_conv_i127_3_3806@uint32 v_conv5_i136_2_3802@uint8;
(*   %and.i128.3.3807 = and i32 %conv.i127.3.3806, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_3_3807 v_conv_i127_3_3806 (0x1)@uint32;
(*   %conv1.i129.3.3808 = zext i8 %conv7.i139.2.3805 to i32 *)
cast v_conv1_i129_3_3808@uint32 v_conv7_i139_2_3805@uint8;
(*   %mul.i130.3.3809 = mul nsw i32 %and.i128.3.3807, %conv1.i129.3.3808 *)
mul v_mul_i130_3_3809 v_and_i128_3_3807 v_conv1_i129_3_3808;
(*   %conv2.i131.3.3810 = zext i8 %conv3.i133.2.3799 to i32 *)
cast v_conv2_i131_3_3810@uint32 v_conv3_i133_2_3799@uint8;
(*   %xor.i132.3.3811 = xor i32 %conv2.i131.3.3810, %mul.i130.3.3809 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_3_3811 v_conv2_i131_3_3810 v_mul_i130_3_3809;
(*   %conv3.i133.3.3812 = trunc i32 %xor.i132.3.3811 to i8 *)
split tmp_v_xor_i132_3_3811 v_conv3_i133_3_3812 v_xor_i132_3_3811 8;
vpc v_conv3_i133_3_3812@uint8 v_conv3_i133_3_3812@uint32;
(*   %conv4.i134.3.3813 = zext i8 %conv5.i136.2.3802 to i32 *)
cast v_conv4_i134_3_3813@uint32 v_conv5_i136_2_3802@uint8;
(*   %shr.i135.3.3814 = ashr i32 %conv4.i134.3.3813, 1 *)
(* You may need to modify here *)
split v_shr_i135_3_3814 tmp_to_be_used v_conv4_i134_3_3813 1;
(*   %conv5.i136.3.3815 = trunc i32 %shr.i135.3.3814 to i8 *)
split tmp_v_shr_i135_3_3814 v_conv5_i136_3_3815 v_shr_i135_3_3814 8;
vpc v_conv5_i136_3_3815@uint8 v_conv5_i136_3_3815@uint32;
(*   %conv6.i137.3.3816 = zext i8 %conv7.i139.2.3805 to i32 *)
cast v_conv6_i137_3_3816@uint32 v_conv7_i139_2_3805@uint8;
(*   %shl.i138.3.3817 = shl i32 %conv6.i137.3.3816, 1 *)
shls discard_136 v_shl_i138_3_3817 v_conv6_i137_3_3816 1;
(*   %conv7.i139.3.3818 = trunc i32 %shl.i138.3.3817 to i8 *)
split tmp_v_shl_i138_3_3817 v_conv7_i139_3_3818 v_shl_i138_3_3817 8;
vpc v_conv7_i139_3_3818@uint8 v_conv7_i139_3_3818@uint32;
(*   %conv.i127.4.3819 = zext i8 %conv5.i136.3.3815 to i32 *)
cast v_conv_i127_4_3819@uint32 v_conv5_i136_3_3815@uint8;
(*   %and.i128.4.3820 = and i32 %conv.i127.4.3819, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_4_3820 v_conv_i127_4_3819 (0x1)@uint32;
(*   %conv1.i129.4.3821 = zext i8 %conv7.i139.3.3818 to i32 *)
cast v_conv1_i129_4_3821@uint32 v_conv7_i139_3_3818@uint8;
(*   %mul.i130.4.3822 = mul nsw i32 %and.i128.4.3820, %conv1.i129.4.3821 *)
mul v_mul_i130_4_3822 v_and_i128_4_3820 v_conv1_i129_4_3821;
(*   %conv2.i131.4.3823 = zext i8 %conv3.i133.3.3812 to i32 *)
cast v_conv2_i131_4_3823@uint32 v_conv3_i133_3_3812@uint8;
(*   %xor.i132.4.3824 = xor i32 %conv2.i131.4.3823, %mul.i130.4.3822 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_4_3824 v_conv2_i131_4_3823 v_mul_i130_4_3822;
(*   %conv3.i133.4.3825 = trunc i32 %xor.i132.4.3824 to i8 *)
split tmp_v_xor_i132_4_3824 v_conv3_i133_4_3825 v_xor_i132_4_3824 8;
vpc v_conv3_i133_4_3825@uint8 v_conv3_i133_4_3825@uint32;
(*   %conv4.i134.4.3826 = zext i8 %conv5.i136.3.3815 to i32 *)
cast v_conv4_i134_4_3826@uint32 v_conv5_i136_3_3815@uint8;
(*   %shr.i135.4.3827 = ashr i32 %conv4.i134.4.3826, 1 *)
(* You may need to modify here *)
split v_shr_i135_4_3827 tmp_to_be_used v_conv4_i134_4_3826 1;
(*   %conv5.i136.4.3828 = trunc i32 %shr.i135.4.3827 to i8 *)
split tmp_v_shr_i135_4_3827 v_conv5_i136_4_3828 v_shr_i135_4_3827 8;
vpc v_conv5_i136_4_3828@uint8 v_conv5_i136_4_3828@uint32;
(*   %conv6.i137.4.3829 = zext i8 %conv7.i139.3.3818 to i32 *)
cast v_conv6_i137_4_3829@uint32 v_conv7_i139_3_3818@uint8;
(*   %shl.i138.4.3830 = shl i32 %conv6.i137.4.3829, 1 *)
shls discard_137 v_shl_i138_4_3830 v_conv6_i137_4_3829 1;
(*   %conv7.i139.4.3831 = trunc i32 %shl.i138.4.3830 to i8 *)
split tmp_v_shl_i138_4_3830 v_conv7_i139_4_3831 v_shl_i138_4_3830 8;
vpc v_conv7_i139_4_3831@uint8 v_conv7_i139_4_3831@uint32;
(*   %conv.i127.5.3832 = zext i8 %conv5.i136.4.3828 to i32 *)
cast v_conv_i127_5_3832@uint32 v_conv5_i136_4_3828@uint8;
(*   %and.i128.5.3833 = and i32 %conv.i127.5.3832, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_5_3833 v_conv_i127_5_3832 (0x1)@uint32;
(*   %conv1.i129.5.3834 = zext i8 %conv7.i139.4.3831 to i32 *)
cast v_conv1_i129_5_3834@uint32 v_conv7_i139_4_3831@uint8;
(*   %mul.i130.5.3835 = mul nsw i32 %and.i128.5.3833, %conv1.i129.5.3834 *)
mul v_mul_i130_5_3835 v_and_i128_5_3833 v_conv1_i129_5_3834;
(*   %conv2.i131.5.3836 = zext i8 %conv3.i133.4.3825 to i32 *)
cast v_conv2_i131_5_3836@uint32 v_conv3_i133_4_3825@uint8;
(*   %xor.i132.5.3837 = xor i32 %conv2.i131.5.3836, %mul.i130.5.3835 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_5_3837 v_conv2_i131_5_3836 v_mul_i130_5_3835;
(*   %conv3.i133.5.3838 = trunc i32 %xor.i132.5.3837 to i8 *)
split tmp_v_xor_i132_5_3837 v_conv3_i133_5_3838 v_xor_i132_5_3837 8;
vpc v_conv3_i133_5_3838@uint8 v_conv3_i133_5_3838@uint32;
(*   %conv4.i134.5.3839 = zext i8 %conv5.i136.4.3828 to i32 *)
cast v_conv4_i134_5_3839@uint32 v_conv5_i136_4_3828@uint8;
(*   %shr.i135.5.3840 = ashr i32 %conv4.i134.5.3839, 1 *)
(* You may need to modify here *)
split v_shr_i135_5_3840 tmp_to_be_used v_conv4_i134_5_3839 1;
(*   %conv5.i136.5.3841 = trunc i32 %shr.i135.5.3840 to i8 *)
split tmp_v_shr_i135_5_3840 v_conv5_i136_5_3841 v_shr_i135_5_3840 8;
vpc v_conv5_i136_5_3841@uint8 v_conv5_i136_5_3841@uint32;
(*   %conv6.i137.5.3842 = zext i8 %conv7.i139.4.3831 to i32 *)
cast v_conv6_i137_5_3842@uint32 v_conv7_i139_4_3831@uint8;
(*   %shl.i138.5.3843 = shl i32 %conv6.i137.5.3842, 1 *)
shls discard_138 v_shl_i138_5_3843 v_conv6_i137_5_3842 1;
(*   %conv7.i139.5.3844 = trunc i32 %shl.i138.5.3843 to i8 *)
split tmp_v_shl_i138_5_3843 v_conv7_i139_5_3844 v_shl_i138_5_3843 8;
vpc v_conv7_i139_5_3844@uint8 v_conv7_i139_5_3844@uint32;
(*   %conv.i127.6.3845 = zext i8 %conv5.i136.5.3841 to i32 *)
cast v_conv_i127_6_3845@uint32 v_conv5_i136_5_3841@uint8;
(*   %and.i128.6.3846 = and i32 %conv.i127.6.3845, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_6_3846 v_conv_i127_6_3845 (0x1)@uint32;
(*   %conv1.i129.6.3847 = zext i8 %conv7.i139.5.3844 to i32 *)
cast v_conv1_i129_6_3847@uint32 v_conv7_i139_5_3844@uint8;
(*   %mul.i130.6.3848 = mul nsw i32 %and.i128.6.3846, %conv1.i129.6.3847 *)
mul v_mul_i130_6_3848 v_and_i128_6_3846 v_conv1_i129_6_3847;
(*   %conv2.i131.6.3849 = zext i8 %conv3.i133.5.3838 to i32 *)
cast v_conv2_i131_6_3849@uint32 v_conv3_i133_5_3838@uint8;
(*   %xor.i132.6.3850 = xor i32 %conv2.i131.6.3849, %mul.i130.6.3848 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_6_3850 v_conv2_i131_6_3849 v_mul_i130_6_3848;
(*   %conv3.i133.6.3851 = trunc i32 %xor.i132.6.3850 to i8 *)
split tmp_v_xor_i132_6_3850 v_conv3_i133_6_3851 v_xor_i132_6_3850 8;
vpc v_conv3_i133_6_3851@uint8 v_conv3_i133_6_3851@uint32;
(*   %conv4.i134.6.3852 = zext i8 %conv5.i136.5.3841 to i32 *)
cast v_conv4_i134_6_3852@uint32 v_conv5_i136_5_3841@uint8;
(*   %shr.i135.6.3853 = ashr i32 %conv4.i134.6.3852, 1 *)
(* You may need to modify here *)
split v_shr_i135_6_3853 tmp_to_be_used v_conv4_i134_6_3852 1;
(*   %conv5.i136.6.3854 = trunc i32 %shr.i135.6.3853 to i8 *)
split tmp_v_shr_i135_6_3853 v_conv5_i136_6_3854 v_shr_i135_6_3853 8;
vpc v_conv5_i136_6_3854@uint8 v_conv5_i136_6_3854@uint32;
(*   %conv6.i137.6.3855 = zext i8 %conv7.i139.5.3844 to i32 *)
cast v_conv6_i137_6_3855@uint32 v_conv7_i139_5_3844@uint8;
(*   %shl.i138.6.3856 = shl i32 %conv6.i137.6.3855, 1 *)
shls discard_139 v_shl_i138_6_3856 v_conv6_i137_6_3855 1;
(*   %conv7.i139.6.3857 = trunc i32 %shl.i138.6.3856 to i8 *)
split tmp_v_shl_i138_6_3856 v_conv7_i139_6_3857 v_shl_i138_6_3856 8;
vpc v_conv7_i139_6_3857@uint8 v_conv7_i139_6_3857@uint32;
(*   %conv.i127.7.3858 = zext i8 %conv5.i136.6.3854 to i32 *)
cast v_conv_i127_7_3858@uint32 v_conv5_i136_6_3854@uint8;
(*   %and.i128.7.3859 = and i32 %conv.i127.7.3858, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_7_3859 v_conv_i127_7_3858 (0x1)@uint32;
(*   %conv1.i129.7.3860 = zext i8 %conv7.i139.6.3857 to i32 *)
cast v_conv1_i129_7_3860@uint32 v_conv7_i139_6_3857@uint8;
(*   %mul.i130.7.3861 = mul nsw i32 %and.i128.7.3859, %conv1.i129.7.3860 *)
mul v_mul_i130_7_3861 v_and_i128_7_3859 v_conv1_i129_7_3860;
(*   %conv2.i131.7.3862 = zext i8 %conv3.i133.6.3851 to i32 *)
cast v_conv2_i131_7_3862@uint32 v_conv3_i133_6_3851@uint8;
(*   %xor.i132.7.3863 = xor i32 %conv2.i131.7.3862, %mul.i130.7.3861 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_7_3863 v_conv2_i131_7_3862 v_mul_i130_7_3861;
(*   %conv3.i133.7.3864 = trunc i32 %xor.i132.7.3863 to i8 *)
split tmp_v_xor_i132_7_3863 v_conv3_i133_7_3864 v_xor_i132_7_3863 8;
vpc v_conv3_i133_7_3864@uint8 v_conv3_i133_7_3864@uint32;
(*   %arrayidx56.3868 = getelementptr inbounds [16 x i8], [16 x i8]* %p1, i64 0, i64 12 *)
(*   store i8 %conv3.i133.7.3864, i8* %arrayidx56.3868, align 1 *)
mov p1_12 v_conv3_i133_7_3864;
(*   %arrayidx60.3870 = getelementptr inbounds [16 x i8], [16 x i8]* %p0, i64 0, i64 12 *)
(*   %84 = load i8, i8* %arrayidx60.3870, align 1 *)
mov v84 p0_12;
(*   %conv61.3871 = zext i8 %84 to i32 *)
cast v_conv61_3871@uint32 v84@uint8;
(*   %arrayidx65.3873 = getelementptr inbounds [16 x i8], [16 x i8]* %p1, i64 0, i64 12 *)
(*   %85 = load i8, i8* %arrayidx65.3873, align 1 *)
mov v85 p1_12;
(*   %conv66.3874 = zext i8 %85 to i32 *)
cast v_conv66_3874@uint32 v85@uint8;
(*   %xor67.3875 = xor i32 %conv61.3871, %conv66.3874 *)
(* You may need to modify here *)
xor uint32 v_xor67_3875 v_conv61_3871 v_conv66_3874;
(*   %conv68.3876 = trunc i32 %xor67.3875 to i8 *)
split tmp_v_xor67_3875 v_conv68_3876 v_xor67_3875 8;
vpc v_conv68_3876@uint8 v_conv68_3876@uint32;
(*   %arrayidx72.3878 = getelementptr inbounds [16 x i8], [16 x i8]* %z, i64 0, i64 12 *)
(*   store i8 %conv68.3876, i8* %arrayidx72.3878, align 1 *)
mov z_12 v_conv68_3876;
(*   %arrayidx22.1.3 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %86 = load i8, i8* %arrayidx22.1.3, align 1 *)
mov v86 b_1;
(*   %conv.1.3 = zext i8 %86 to i32 *)
cast v_conv_1_3@uint32 v86@uint8;
(*   %arrayidx26.1.3 = getelementptr inbounds i8, i8* %r, i64 13 *)
(*   %87 = load i8, i8* %arrayidx26.1.3, align 1 *)
mov v87 r_13;
(*   %conv27.1.3 = zext i8 %87 to i32 *)
cast v_conv27_1_3@uint32 v87@uint8;
(*   %xor.1.3 = xor i32 %conv.1.3, %conv27.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_1_3 v_conv_1_3 v_conv27_1_3;
(*   %conv28.1.3 = trunc i32 %xor.1.3 to i8 *)
split tmp_v_xor_1_3 v_conv28_1_3 v_xor_1_3 8;
vpc v_conv28_1_3@uint8 v_conv28_1_3@uint32;
(*   %arrayidx32.1.3 = getelementptr inbounds [16 x i8], [16 x i8]* %s, i64 0, i64 13 *)
(*   store i8 %conv28.1.3, i8* %arrayidx32.1.3, align 1 *)
mov s_13 v_conv28_1_3;
(*   %88 = load i8, i8* %arrayidx34.3, align 1 *)
mov v88 a_3;
(*   %conv35.1.3 = zext i8 %88 to i32 *)
cast v_conv35_1_3@uint32 v88@uint8;
(*   %xor36.1.3 = xor i32 %conv35.1.3, 1 *)
(* You may need to modify here *)
xor uint32 v_xor36_1_3 v_conv35_1_3 (0x1)@uint32;
(*   %conv37.1.3 = trunc i32 %xor36.1.3 to i8 *)
split tmp_v_xor36_1_3 v_conv37_1_3 v_xor36_1_3 8;
vpc v_conv37_1_3@uint8 v_conv37_1_3@uint32;
(*   %arrayidx41.1.3 = getelementptr inbounds i8, i8* %r, i64 13 *)
(*   %89 = load i8, i8* %arrayidx41.1.3, align 1 *)
mov v89 r_13;
(*   %conv.i.1123.3 = zext i8 %89 to i32 *)
cast v_conv_i_1123_3@uint32 v89@uint8;
(*   %and.i.1124.3 = and i32 %conv.i.1123.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1124_3 v_conv_i_1123_3 (0x1)@uint32;
(*   %conv1.i.1125.3 = zext i8 %conv37.1.3 to i32 *)
cast v_conv1_i_1125_3@uint32 v_conv37_1_3@uint8;
(*   %mul.i.1126.3 = mul nsw i32 %and.i.1124.3, %conv1.i.1125.3 *)
mul v_mul_i_1126_3 v_and_i_1124_3 v_conv1_i_1125_3;
(*   %conv3.i.1127.3 = trunc i32 %mul.i.1126.3 to i8 *)
split tmp_v_mul_i_1126_3 v_conv3_i_1127_3 v_mul_i_1126_3 8;
vpc v_conv3_i_1127_3@uint8 v_conv3_i_1127_3@uint32;
(*   %conv4.i.1128.3 = zext i8 %89 to i32 *)
cast v_conv4_i_1128_3@uint32 v89@uint8;
(*   %shr.i.1129.3 = ashr i32 %conv4.i.1128.3, 1 *)
(* You may need to modify here *)
split v_shr_i_1129_3 tmp_to_be_used v_conv4_i_1128_3 1;
(*   %conv5.i.1130.3 = trunc i32 %shr.i.1129.3 to i8 *)
split tmp_v_shr_i_1129_3 v_conv5_i_1130_3 v_shr_i_1129_3 8;
vpc v_conv5_i_1130_3@uint8 v_conv5_i_1130_3@uint32;
(*   %conv6.i.1131.3 = zext i8 %conv37.1.3 to i32 *)
cast v_conv6_i_1131_3@uint32 v_conv37_1_3@uint8;
(*   %shl.i.1132.3 = shl i32 %conv6.i.1131.3, 1 *)
shls discard_140 v_shl_i_1132_3 v_conv6_i_1131_3 1;
(*   %conv7.i.1133.3 = trunc i32 %shl.i.1132.3 to i8 *)
split tmp_v_shl_i_1132_3 v_conv7_i_1133_3 v_shl_i_1132_3 8;
vpc v_conv7_i_1133_3@uint8 v_conv7_i_1133_3@uint32;
(*   %conv.i.1.1.3 = zext i8 %conv5.i.1130.3 to i32 *)
cast v_conv_i_1_1_3@uint32 v_conv5_i_1130_3@uint8;
(*   %and.i.1.1.3 = and i32 %conv.i.1.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_1_3 v_conv_i_1_1_3 (0x1)@uint32;
(*   %conv1.i.1.1.3 = zext i8 %conv7.i.1133.3 to i32 *)
cast v_conv1_i_1_1_3@uint32 v_conv7_i_1133_3@uint8;
(*   %mul.i.1.1.3 = mul nsw i32 %and.i.1.1.3, %conv1.i.1.1.3 *)
mul v_mul_i_1_1_3 v_and_i_1_1_3 v_conv1_i_1_1_3;
(*   %conv2.i.1.1.3 = zext i8 %conv3.i.1127.3 to i32 *)
cast v_conv2_i_1_1_3@uint32 v_conv3_i_1127_3@uint8;
(*   %xor.i.1.1.3 = xor i32 %conv2.i.1.1.3, %mul.i.1.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_1_3 v_conv2_i_1_1_3 v_mul_i_1_1_3;
(*   %conv3.i.1.1.3 = trunc i32 %xor.i.1.1.3 to i8 *)
split tmp_v_xor_i_1_1_3 v_conv3_i_1_1_3 v_xor_i_1_1_3 8;
vpc v_conv3_i_1_1_3@uint8 v_conv3_i_1_1_3@uint32;
(*   %conv4.i.1.1.3 = zext i8 %conv5.i.1130.3 to i32 *)
cast v_conv4_i_1_1_3@uint32 v_conv5_i_1130_3@uint8;
(*   %shr.i.1.1.3 = ashr i32 %conv4.i.1.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i_1_1_3 tmp_to_be_used v_conv4_i_1_1_3 1;
(*   %conv5.i.1.1.3 = trunc i32 %shr.i.1.1.3 to i8 *)
split tmp_v_shr_i_1_1_3 v_conv5_i_1_1_3 v_shr_i_1_1_3 8;
vpc v_conv5_i_1_1_3@uint8 v_conv5_i_1_1_3@uint32;
(*   %conv6.i.1.1.3 = zext i8 %conv7.i.1133.3 to i32 *)
cast v_conv6_i_1_1_3@uint32 v_conv7_i_1133_3@uint8;
(*   %shl.i.1.1.3 = shl i32 %conv6.i.1.1.3, 1 *)
shls discard_141 v_shl_i_1_1_3 v_conv6_i_1_1_3 1;
(*   %conv7.i.1.1.3 = trunc i32 %shl.i.1.1.3 to i8 *)
split tmp_v_shl_i_1_1_3 v_conv7_i_1_1_3 v_shl_i_1_1_3 8;
vpc v_conv7_i_1_1_3@uint8 v_conv7_i_1_1_3@uint32;
(*   %conv.i.2.1.3 = zext i8 %conv5.i.1.1.3 to i32 *)
cast v_conv_i_2_1_3@uint32 v_conv5_i_1_1_3@uint8;
(*   %and.i.2.1.3 = and i32 %conv.i.2.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_1_3 v_conv_i_2_1_3 (0x1)@uint32;
(*   %conv1.i.2.1.3 = zext i8 %conv7.i.1.1.3 to i32 *)
cast v_conv1_i_2_1_3@uint32 v_conv7_i_1_1_3@uint8;
(*   %mul.i.2.1.3 = mul nsw i32 %and.i.2.1.3, %conv1.i.2.1.3 *)
mul v_mul_i_2_1_3 v_and_i_2_1_3 v_conv1_i_2_1_3;
(*   %conv2.i.2.1.3 = zext i8 %conv3.i.1.1.3 to i32 *)
cast v_conv2_i_2_1_3@uint32 v_conv3_i_1_1_3@uint8;
(*   %xor.i.2.1.3 = xor i32 %conv2.i.2.1.3, %mul.i.2.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_1_3 v_conv2_i_2_1_3 v_mul_i_2_1_3;
(*   %conv3.i.2.1.3 = trunc i32 %xor.i.2.1.3 to i8 *)
split tmp_v_xor_i_2_1_3 v_conv3_i_2_1_3 v_xor_i_2_1_3 8;
vpc v_conv3_i_2_1_3@uint8 v_conv3_i_2_1_3@uint32;
(*   %conv4.i.2.1.3 = zext i8 %conv5.i.1.1.3 to i32 *)
cast v_conv4_i_2_1_3@uint32 v_conv5_i_1_1_3@uint8;
(*   %shr.i.2.1.3 = ashr i32 %conv4.i.2.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i_2_1_3 tmp_to_be_used v_conv4_i_2_1_3 1;
(*   %conv5.i.2.1.3 = trunc i32 %shr.i.2.1.3 to i8 *)
split tmp_v_shr_i_2_1_3 v_conv5_i_2_1_3 v_shr_i_2_1_3 8;
vpc v_conv5_i_2_1_3@uint8 v_conv5_i_2_1_3@uint32;
(*   %conv6.i.2.1.3 = zext i8 %conv7.i.1.1.3 to i32 *)
cast v_conv6_i_2_1_3@uint32 v_conv7_i_1_1_3@uint8;
(*   %shl.i.2.1.3 = shl i32 %conv6.i.2.1.3, 1 *)
shls discard_142 v_shl_i_2_1_3 v_conv6_i_2_1_3 1;
(*   %conv7.i.2.1.3 = trunc i32 %shl.i.2.1.3 to i8 *)
split tmp_v_shl_i_2_1_3 v_conv7_i_2_1_3 v_shl_i_2_1_3 8;
vpc v_conv7_i_2_1_3@uint8 v_conv7_i_2_1_3@uint32;
(*   %conv.i.3.1.3 = zext i8 %conv5.i.2.1.3 to i32 *)
cast v_conv_i_3_1_3@uint32 v_conv5_i_2_1_3@uint8;
(*   %and.i.3.1.3 = and i32 %conv.i.3.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_1_3 v_conv_i_3_1_3 (0x1)@uint32;
(*   %conv1.i.3.1.3 = zext i8 %conv7.i.2.1.3 to i32 *)
cast v_conv1_i_3_1_3@uint32 v_conv7_i_2_1_3@uint8;
(*   %mul.i.3.1.3 = mul nsw i32 %and.i.3.1.3, %conv1.i.3.1.3 *)
mul v_mul_i_3_1_3 v_and_i_3_1_3 v_conv1_i_3_1_3;
(*   %conv2.i.3.1.3 = zext i8 %conv3.i.2.1.3 to i32 *)
cast v_conv2_i_3_1_3@uint32 v_conv3_i_2_1_3@uint8;
(*   %xor.i.3.1.3 = xor i32 %conv2.i.3.1.3, %mul.i.3.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_1_3 v_conv2_i_3_1_3 v_mul_i_3_1_3;
(*   %conv3.i.3.1.3 = trunc i32 %xor.i.3.1.3 to i8 *)
split tmp_v_xor_i_3_1_3 v_conv3_i_3_1_3 v_xor_i_3_1_3 8;
vpc v_conv3_i_3_1_3@uint8 v_conv3_i_3_1_3@uint32;
(*   %conv4.i.3.1.3 = zext i8 %conv5.i.2.1.3 to i32 *)
cast v_conv4_i_3_1_3@uint32 v_conv5_i_2_1_3@uint8;
(*   %shr.i.3.1.3 = ashr i32 %conv4.i.3.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i_3_1_3 tmp_to_be_used v_conv4_i_3_1_3 1;
(*   %conv5.i.3.1.3 = trunc i32 %shr.i.3.1.3 to i8 *)
split tmp_v_shr_i_3_1_3 v_conv5_i_3_1_3 v_shr_i_3_1_3 8;
vpc v_conv5_i_3_1_3@uint8 v_conv5_i_3_1_3@uint32;
(*   %conv6.i.3.1.3 = zext i8 %conv7.i.2.1.3 to i32 *)
cast v_conv6_i_3_1_3@uint32 v_conv7_i_2_1_3@uint8;
(*   %shl.i.3.1.3 = shl i32 %conv6.i.3.1.3, 1 *)
shls discard_143 v_shl_i_3_1_3 v_conv6_i_3_1_3 1;
(*   %conv7.i.3.1.3 = trunc i32 %shl.i.3.1.3 to i8 *)
split tmp_v_shl_i_3_1_3 v_conv7_i_3_1_3 v_shl_i_3_1_3 8;
vpc v_conv7_i_3_1_3@uint8 v_conv7_i_3_1_3@uint32;
(*   %conv.i.4.1.3 = zext i8 %conv5.i.3.1.3 to i32 *)
cast v_conv_i_4_1_3@uint32 v_conv5_i_3_1_3@uint8;
(*   %and.i.4.1.3 = and i32 %conv.i.4.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_1_3 v_conv_i_4_1_3 (0x1)@uint32;
(*   %conv1.i.4.1.3 = zext i8 %conv7.i.3.1.3 to i32 *)
cast v_conv1_i_4_1_3@uint32 v_conv7_i_3_1_3@uint8;
(*   %mul.i.4.1.3 = mul nsw i32 %and.i.4.1.3, %conv1.i.4.1.3 *)
mul v_mul_i_4_1_3 v_and_i_4_1_3 v_conv1_i_4_1_3;
(*   %conv2.i.4.1.3 = zext i8 %conv3.i.3.1.3 to i32 *)
cast v_conv2_i_4_1_3@uint32 v_conv3_i_3_1_3@uint8;
(*   %xor.i.4.1.3 = xor i32 %conv2.i.4.1.3, %mul.i.4.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_1_3 v_conv2_i_4_1_3 v_mul_i_4_1_3;
(*   %conv3.i.4.1.3 = trunc i32 %xor.i.4.1.3 to i8 *)
split tmp_v_xor_i_4_1_3 v_conv3_i_4_1_3 v_xor_i_4_1_3 8;
vpc v_conv3_i_4_1_3@uint8 v_conv3_i_4_1_3@uint32;
(*   %conv4.i.4.1.3 = zext i8 %conv5.i.3.1.3 to i32 *)
cast v_conv4_i_4_1_3@uint32 v_conv5_i_3_1_3@uint8;
(*   %shr.i.4.1.3 = ashr i32 %conv4.i.4.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i_4_1_3 tmp_to_be_used v_conv4_i_4_1_3 1;
(*   %conv5.i.4.1.3 = trunc i32 %shr.i.4.1.3 to i8 *)
split tmp_v_shr_i_4_1_3 v_conv5_i_4_1_3 v_shr_i_4_1_3 8;
vpc v_conv5_i_4_1_3@uint8 v_conv5_i_4_1_3@uint32;
(*   %conv6.i.4.1.3 = zext i8 %conv7.i.3.1.3 to i32 *)
cast v_conv6_i_4_1_3@uint32 v_conv7_i_3_1_3@uint8;
(*   %shl.i.4.1.3 = shl i32 %conv6.i.4.1.3, 1 *)
shls discard_144 v_shl_i_4_1_3 v_conv6_i_4_1_3 1;
(*   %conv7.i.4.1.3 = trunc i32 %shl.i.4.1.3 to i8 *)
split tmp_v_shl_i_4_1_3 v_conv7_i_4_1_3 v_shl_i_4_1_3 8;
vpc v_conv7_i_4_1_3@uint8 v_conv7_i_4_1_3@uint32;
(*   %conv.i.5.1.3 = zext i8 %conv5.i.4.1.3 to i32 *)
cast v_conv_i_5_1_3@uint32 v_conv5_i_4_1_3@uint8;
(*   %and.i.5.1.3 = and i32 %conv.i.5.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_1_3 v_conv_i_5_1_3 (0x1)@uint32;
(*   %conv1.i.5.1.3 = zext i8 %conv7.i.4.1.3 to i32 *)
cast v_conv1_i_5_1_3@uint32 v_conv7_i_4_1_3@uint8;
(*   %mul.i.5.1.3 = mul nsw i32 %and.i.5.1.3, %conv1.i.5.1.3 *)
mul v_mul_i_5_1_3 v_and_i_5_1_3 v_conv1_i_5_1_3;
(*   %conv2.i.5.1.3 = zext i8 %conv3.i.4.1.3 to i32 *)
cast v_conv2_i_5_1_3@uint32 v_conv3_i_4_1_3@uint8;
(*   %xor.i.5.1.3 = xor i32 %conv2.i.5.1.3, %mul.i.5.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_1_3 v_conv2_i_5_1_3 v_mul_i_5_1_3;
(*   %conv3.i.5.1.3 = trunc i32 %xor.i.5.1.3 to i8 *)
split tmp_v_xor_i_5_1_3 v_conv3_i_5_1_3 v_xor_i_5_1_3 8;
vpc v_conv3_i_5_1_3@uint8 v_conv3_i_5_1_3@uint32;
(*   %conv4.i.5.1.3 = zext i8 %conv5.i.4.1.3 to i32 *)
cast v_conv4_i_5_1_3@uint32 v_conv5_i_4_1_3@uint8;
(*   %shr.i.5.1.3 = ashr i32 %conv4.i.5.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i_5_1_3 tmp_to_be_used v_conv4_i_5_1_3 1;
(*   %conv5.i.5.1.3 = trunc i32 %shr.i.5.1.3 to i8 *)
split tmp_v_shr_i_5_1_3 v_conv5_i_5_1_3 v_shr_i_5_1_3 8;
vpc v_conv5_i_5_1_3@uint8 v_conv5_i_5_1_3@uint32;
(*   %conv6.i.5.1.3 = zext i8 %conv7.i.4.1.3 to i32 *)
cast v_conv6_i_5_1_3@uint32 v_conv7_i_4_1_3@uint8;
(*   %shl.i.5.1.3 = shl i32 %conv6.i.5.1.3, 1 *)
shls discard_145 v_shl_i_5_1_3 v_conv6_i_5_1_3 1;
(*   %conv7.i.5.1.3 = trunc i32 %shl.i.5.1.3 to i8 *)
split tmp_v_shl_i_5_1_3 v_conv7_i_5_1_3 v_shl_i_5_1_3 8;
vpc v_conv7_i_5_1_3@uint8 v_conv7_i_5_1_3@uint32;
(*   %conv.i.6.1.3 = zext i8 %conv5.i.5.1.3 to i32 *)
cast v_conv_i_6_1_3@uint32 v_conv5_i_5_1_3@uint8;
(*   %and.i.6.1.3 = and i32 %conv.i.6.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_1_3 v_conv_i_6_1_3 (0x1)@uint32;
(*   %conv1.i.6.1.3 = zext i8 %conv7.i.5.1.3 to i32 *)
cast v_conv1_i_6_1_3@uint32 v_conv7_i_5_1_3@uint8;
(*   %mul.i.6.1.3 = mul nsw i32 %and.i.6.1.3, %conv1.i.6.1.3 *)
mul v_mul_i_6_1_3 v_and_i_6_1_3 v_conv1_i_6_1_3;
(*   %conv2.i.6.1.3 = zext i8 %conv3.i.5.1.3 to i32 *)
cast v_conv2_i_6_1_3@uint32 v_conv3_i_5_1_3@uint8;
(*   %xor.i.6.1.3 = xor i32 %conv2.i.6.1.3, %mul.i.6.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_1_3 v_conv2_i_6_1_3 v_mul_i_6_1_3;
(*   %conv3.i.6.1.3 = trunc i32 %xor.i.6.1.3 to i8 *)
split tmp_v_xor_i_6_1_3 v_conv3_i_6_1_3 v_xor_i_6_1_3 8;
vpc v_conv3_i_6_1_3@uint8 v_conv3_i_6_1_3@uint32;
(*   %conv4.i.6.1.3 = zext i8 %conv5.i.5.1.3 to i32 *)
cast v_conv4_i_6_1_3@uint32 v_conv5_i_5_1_3@uint8;
(*   %shr.i.6.1.3 = ashr i32 %conv4.i.6.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i_6_1_3 tmp_to_be_used v_conv4_i_6_1_3 1;
(*   %conv5.i.6.1.3 = trunc i32 %shr.i.6.1.3 to i8 *)
split tmp_v_shr_i_6_1_3 v_conv5_i_6_1_3 v_shr_i_6_1_3 8;
vpc v_conv5_i_6_1_3@uint8 v_conv5_i_6_1_3@uint32;
(*   %conv6.i.6.1.3 = zext i8 %conv7.i.5.1.3 to i32 *)
cast v_conv6_i_6_1_3@uint32 v_conv7_i_5_1_3@uint8;
(*   %shl.i.6.1.3 = shl i32 %conv6.i.6.1.3, 1 *)
shls discard_146 v_shl_i_6_1_3 v_conv6_i_6_1_3 1;
(*   %conv7.i.6.1.3 = trunc i32 %shl.i.6.1.3 to i8 *)
split tmp_v_shl_i_6_1_3 v_conv7_i_6_1_3 v_shl_i_6_1_3 8;
vpc v_conv7_i_6_1_3@uint8 v_conv7_i_6_1_3@uint32;
(*   %conv.i.7.1.3 = zext i8 %conv5.i.6.1.3 to i32 *)
cast v_conv_i_7_1_3@uint32 v_conv5_i_6_1_3@uint8;
(*   %and.i.7.1.3 = and i32 %conv.i.7.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_1_3 v_conv_i_7_1_3 (0x1)@uint32;
(*   %conv1.i.7.1.3 = zext i8 %conv7.i.6.1.3 to i32 *)
cast v_conv1_i_7_1_3@uint32 v_conv7_i_6_1_3@uint8;
(*   %mul.i.7.1.3 = mul nsw i32 %and.i.7.1.3, %conv1.i.7.1.3 *)
mul v_mul_i_7_1_3 v_and_i_7_1_3 v_conv1_i_7_1_3;
(*   %conv2.i.7.1.3 = zext i8 %conv3.i.6.1.3 to i32 *)
cast v_conv2_i_7_1_3@uint32 v_conv3_i_6_1_3@uint8;
(*   %xor.i.7.1.3 = xor i32 %conv2.i.7.1.3, %mul.i.7.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_1_3 v_conv2_i_7_1_3 v_mul_i_7_1_3;
(*   %conv3.i.7.1.3 = trunc i32 %xor.i.7.1.3 to i8 *)
split tmp_v_xor_i_7_1_3 v_conv3_i_7_1_3 v_xor_i_7_1_3 8;
vpc v_conv3_i_7_1_3@uint8 v_conv3_i_7_1_3@uint32;
(*   %arrayidx45.1.3 = getelementptr inbounds [16 x i8], [16 x i8]* %p0, i64 0, i64 13 *)
(*   store i8 %conv3.i.7.1.3, i8* %arrayidx45.1.3, align 1 *)
mov p0_13 v_conv3_i_7_1_3;
(*   %90 = load i8, i8* %arrayidx47.3, align 1 *)
mov v90 a_3;
(*   %arrayidx51.1.3 = getelementptr inbounds [16 x i8], [16 x i8]* %s, i64 0, i64 13 *)
(*   %91 = load i8, i8* %arrayidx51.1.3, align 1 *)
mov v91 s_13;
(*   %conv.i127.1134.3 = zext i8 %91 to i32 *)
cast v_conv_i127_1134_3@uint32 v91@uint8;
(*   %and.i128.1135.3 = and i32 %conv.i127.1134.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1135_3 v_conv_i127_1134_3 (0x1)@uint32;
(*   %conv1.i129.1136.3 = zext i8 %90 to i32 *)
cast v_conv1_i129_1136_3@uint32 v90@uint8;
(*   %mul.i130.1137.3 = mul nsw i32 %and.i128.1135.3, %conv1.i129.1136.3 *)
mul v_mul_i130_1137_3 v_and_i128_1135_3 v_conv1_i129_1136_3;
(*   %conv3.i133.1138.3 = trunc i32 %mul.i130.1137.3 to i8 *)
split tmp_v_mul_i130_1137_3 v_conv3_i133_1138_3 v_mul_i130_1137_3 8;
vpc v_conv3_i133_1138_3@uint8 v_conv3_i133_1138_3@uint32;
(*   %conv4.i134.1139.3 = zext i8 %91 to i32 *)
cast v_conv4_i134_1139_3@uint32 v91@uint8;
(*   %shr.i135.1140.3 = ashr i32 %conv4.i134.1139.3, 1 *)
(* You may need to modify here *)
split v_shr_i135_1140_3 tmp_to_be_used v_conv4_i134_1139_3 1;
(*   %conv5.i136.1141.3 = trunc i32 %shr.i135.1140.3 to i8 *)
split tmp_v_shr_i135_1140_3 v_conv5_i136_1141_3 v_shr_i135_1140_3 8;
vpc v_conv5_i136_1141_3@uint8 v_conv5_i136_1141_3@uint32;
(*   %conv6.i137.1142.3 = zext i8 %90 to i32 *)
cast v_conv6_i137_1142_3@uint32 v90@uint8;
(*   %shl.i138.1143.3 = shl i32 %conv6.i137.1142.3, 1 *)
shls discard_147 v_shl_i138_1143_3 v_conv6_i137_1142_3 1;
(*   %conv7.i139.1144.3 = trunc i32 %shl.i138.1143.3 to i8 *)
split tmp_v_shl_i138_1143_3 v_conv7_i139_1144_3 v_shl_i138_1143_3 8;
vpc v_conv7_i139_1144_3@uint8 v_conv7_i139_1144_3@uint32;
(*   %conv.i127.1.1.3 = zext i8 %conv5.i136.1141.3 to i32 *)
cast v_conv_i127_1_1_3@uint32 v_conv5_i136_1141_3@uint8;
(*   %and.i128.1.1.3 = and i32 %conv.i127.1.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1_1_3 v_conv_i127_1_1_3 (0x1)@uint32;
(*   %conv1.i129.1.1.3 = zext i8 %conv7.i139.1144.3 to i32 *)
cast v_conv1_i129_1_1_3@uint32 v_conv7_i139_1144_3@uint8;
(*   %mul.i130.1.1.3 = mul nsw i32 %and.i128.1.1.3, %conv1.i129.1.1.3 *)
mul v_mul_i130_1_1_3 v_and_i128_1_1_3 v_conv1_i129_1_1_3;
(*   %conv2.i131.1.1.3 = zext i8 %conv3.i133.1138.3 to i32 *)
cast v_conv2_i131_1_1_3@uint32 v_conv3_i133_1138_3@uint8;
(*   %xor.i132.1.1.3 = xor i32 %conv2.i131.1.1.3, %mul.i130.1.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_1_1_3 v_conv2_i131_1_1_3 v_mul_i130_1_1_3;
(*   %conv3.i133.1.1.3 = trunc i32 %xor.i132.1.1.3 to i8 *)
split tmp_v_xor_i132_1_1_3 v_conv3_i133_1_1_3 v_xor_i132_1_1_3 8;
vpc v_conv3_i133_1_1_3@uint8 v_conv3_i133_1_1_3@uint32;
(*   %conv4.i134.1.1.3 = zext i8 %conv5.i136.1141.3 to i32 *)
cast v_conv4_i134_1_1_3@uint32 v_conv5_i136_1141_3@uint8;
(*   %shr.i135.1.1.3 = ashr i32 %conv4.i134.1.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i135_1_1_3 tmp_to_be_used v_conv4_i134_1_1_3 1;
(*   %conv5.i136.1.1.3 = trunc i32 %shr.i135.1.1.3 to i8 *)
split tmp_v_shr_i135_1_1_3 v_conv5_i136_1_1_3 v_shr_i135_1_1_3 8;
vpc v_conv5_i136_1_1_3@uint8 v_conv5_i136_1_1_3@uint32;
(*   %conv6.i137.1.1.3 = zext i8 %conv7.i139.1144.3 to i32 *)
cast v_conv6_i137_1_1_3@uint32 v_conv7_i139_1144_3@uint8;
(*   %shl.i138.1.1.3 = shl i32 %conv6.i137.1.1.3, 1 *)
shls discard_148 v_shl_i138_1_1_3 v_conv6_i137_1_1_3 1;
(*   %conv7.i139.1.1.3 = trunc i32 %shl.i138.1.1.3 to i8 *)
split tmp_v_shl_i138_1_1_3 v_conv7_i139_1_1_3 v_shl_i138_1_1_3 8;
vpc v_conv7_i139_1_1_3@uint8 v_conv7_i139_1_1_3@uint32;
(*   %conv.i127.2.1.3 = zext i8 %conv5.i136.1.1.3 to i32 *)
cast v_conv_i127_2_1_3@uint32 v_conv5_i136_1_1_3@uint8;
(*   %and.i128.2.1.3 = and i32 %conv.i127.2.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_2_1_3 v_conv_i127_2_1_3 (0x1)@uint32;
(*   %conv1.i129.2.1.3 = zext i8 %conv7.i139.1.1.3 to i32 *)
cast v_conv1_i129_2_1_3@uint32 v_conv7_i139_1_1_3@uint8;
(*   %mul.i130.2.1.3 = mul nsw i32 %and.i128.2.1.3, %conv1.i129.2.1.3 *)
mul v_mul_i130_2_1_3 v_and_i128_2_1_3 v_conv1_i129_2_1_3;
(*   %conv2.i131.2.1.3 = zext i8 %conv3.i133.1.1.3 to i32 *)
cast v_conv2_i131_2_1_3@uint32 v_conv3_i133_1_1_3@uint8;
(*   %xor.i132.2.1.3 = xor i32 %conv2.i131.2.1.3, %mul.i130.2.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_2_1_3 v_conv2_i131_2_1_3 v_mul_i130_2_1_3;
(*   %conv3.i133.2.1.3 = trunc i32 %xor.i132.2.1.3 to i8 *)
split tmp_v_xor_i132_2_1_3 v_conv3_i133_2_1_3 v_xor_i132_2_1_3 8;
vpc v_conv3_i133_2_1_3@uint8 v_conv3_i133_2_1_3@uint32;
(*   %conv4.i134.2.1.3 = zext i8 %conv5.i136.1.1.3 to i32 *)
cast v_conv4_i134_2_1_3@uint32 v_conv5_i136_1_1_3@uint8;
(*   %shr.i135.2.1.3 = ashr i32 %conv4.i134.2.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i135_2_1_3 tmp_to_be_used v_conv4_i134_2_1_3 1;
(*   %conv5.i136.2.1.3 = trunc i32 %shr.i135.2.1.3 to i8 *)
split tmp_v_shr_i135_2_1_3 v_conv5_i136_2_1_3 v_shr_i135_2_1_3 8;
vpc v_conv5_i136_2_1_3@uint8 v_conv5_i136_2_1_3@uint32;
(*   %conv6.i137.2.1.3 = zext i8 %conv7.i139.1.1.3 to i32 *)
cast v_conv6_i137_2_1_3@uint32 v_conv7_i139_1_1_3@uint8;
(*   %shl.i138.2.1.3 = shl i32 %conv6.i137.2.1.3, 1 *)
shls discard_149 v_shl_i138_2_1_3 v_conv6_i137_2_1_3 1;
(*   %conv7.i139.2.1.3 = trunc i32 %shl.i138.2.1.3 to i8 *)
split tmp_v_shl_i138_2_1_3 v_conv7_i139_2_1_3 v_shl_i138_2_1_3 8;
vpc v_conv7_i139_2_1_3@uint8 v_conv7_i139_2_1_3@uint32;
(*   %conv.i127.3.1.3 = zext i8 %conv5.i136.2.1.3 to i32 *)
cast v_conv_i127_3_1_3@uint32 v_conv5_i136_2_1_3@uint8;
(*   %and.i128.3.1.3 = and i32 %conv.i127.3.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_3_1_3 v_conv_i127_3_1_3 (0x1)@uint32;
(*   %conv1.i129.3.1.3 = zext i8 %conv7.i139.2.1.3 to i32 *)
cast v_conv1_i129_3_1_3@uint32 v_conv7_i139_2_1_3@uint8;
(*   %mul.i130.3.1.3 = mul nsw i32 %and.i128.3.1.3, %conv1.i129.3.1.3 *)
mul v_mul_i130_3_1_3 v_and_i128_3_1_3 v_conv1_i129_3_1_3;
(*   %conv2.i131.3.1.3 = zext i8 %conv3.i133.2.1.3 to i32 *)
cast v_conv2_i131_3_1_3@uint32 v_conv3_i133_2_1_3@uint8;
(*   %xor.i132.3.1.3 = xor i32 %conv2.i131.3.1.3, %mul.i130.3.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_3_1_3 v_conv2_i131_3_1_3 v_mul_i130_3_1_3;
(*   %conv3.i133.3.1.3 = trunc i32 %xor.i132.3.1.3 to i8 *)
split tmp_v_xor_i132_3_1_3 v_conv3_i133_3_1_3 v_xor_i132_3_1_3 8;
vpc v_conv3_i133_3_1_3@uint8 v_conv3_i133_3_1_3@uint32;
(*   %conv4.i134.3.1.3 = zext i8 %conv5.i136.2.1.3 to i32 *)
cast v_conv4_i134_3_1_3@uint32 v_conv5_i136_2_1_3@uint8;
(*   %shr.i135.3.1.3 = ashr i32 %conv4.i134.3.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i135_3_1_3 tmp_to_be_used v_conv4_i134_3_1_3 1;
(*   %conv5.i136.3.1.3 = trunc i32 %shr.i135.3.1.3 to i8 *)
split tmp_v_shr_i135_3_1_3 v_conv5_i136_3_1_3 v_shr_i135_3_1_3 8;
vpc v_conv5_i136_3_1_3@uint8 v_conv5_i136_3_1_3@uint32;
(*   %conv6.i137.3.1.3 = zext i8 %conv7.i139.2.1.3 to i32 *)
cast v_conv6_i137_3_1_3@uint32 v_conv7_i139_2_1_3@uint8;
(*   %shl.i138.3.1.3 = shl i32 %conv6.i137.3.1.3, 1 *)
shls discard_150 v_shl_i138_3_1_3 v_conv6_i137_3_1_3 1;
(*   %conv7.i139.3.1.3 = trunc i32 %shl.i138.3.1.3 to i8 *)
split tmp_v_shl_i138_3_1_3 v_conv7_i139_3_1_3 v_shl_i138_3_1_3 8;
vpc v_conv7_i139_3_1_3@uint8 v_conv7_i139_3_1_3@uint32;
(*   %conv.i127.4.1.3 = zext i8 %conv5.i136.3.1.3 to i32 *)
cast v_conv_i127_4_1_3@uint32 v_conv5_i136_3_1_3@uint8;
(*   %and.i128.4.1.3 = and i32 %conv.i127.4.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_4_1_3 v_conv_i127_4_1_3 (0x1)@uint32;
(*   %conv1.i129.4.1.3 = zext i8 %conv7.i139.3.1.3 to i32 *)
cast v_conv1_i129_4_1_3@uint32 v_conv7_i139_3_1_3@uint8;
(*   %mul.i130.4.1.3 = mul nsw i32 %and.i128.4.1.3, %conv1.i129.4.1.3 *)
mul v_mul_i130_4_1_3 v_and_i128_4_1_3 v_conv1_i129_4_1_3;
(*   %conv2.i131.4.1.3 = zext i8 %conv3.i133.3.1.3 to i32 *)
cast v_conv2_i131_4_1_3@uint32 v_conv3_i133_3_1_3@uint8;
(*   %xor.i132.4.1.3 = xor i32 %conv2.i131.4.1.3, %mul.i130.4.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_4_1_3 v_conv2_i131_4_1_3 v_mul_i130_4_1_3;
(*   %conv3.i133.4.1.3 = trunc i32 %xor.i132.4.1.3 to i8 *)
split tmp_v_xor_i132_4_1_3 v_conv3_i133_4_1_3 v_xor_i132_4_1_3 8;
vpc v_conv3_i133_4_1_3@uint8 v_conv3_i133_4_1_3@uint32;
(*   %conv4.i134.4.1.3 = zext i8 %conv5.i136.3.1.3 to i32 *)
cast v_conv4_i134_4_1_3@uint32 v_conv5_i136_3_1_3@uint8;
(*   %shr.i135.4.1.3 = ashr i32 %conv4.i134.4.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i135_4_1_3 tmp_to_be_used v_conv4_i134_4_1_3 1;
(*   %conv5.i136.4.1.3 = trunc i32 %shr.i135.4.1.3 to i8 *)
split tmp_v_shr_i135_4_1_3 v_conv5_i136_4_1_3 v_shr_i135_4_1_3 8;
vpc v_conv5_i136_4_1_3@uint8 v_conv5_i136_4_1_3@uint32;
(*   %conv6.i137.4.1.3 = zext i8 %conv7.i139.3.1.3 to i32 *)
cast v_conv6_i137_4_1_3@uint32 v_conv7_i139_3_1_3@uint8;
(*   %shl.i138.4.1.3 = shl i32 %conv6.i137.4.1.3, 1 *)
shls discard_151 v_shl_i138_4_1_3 v_conv6_i137_4_1_3 1;
(*   %conv7.i139.4.1.3 = trunc i32 %shl.i138.4.1.3 to i8 *)
split tmp_v_shl_i138_4_1_3 v_conv7_i139_4_1_3 v_shl_i138_4_1_3 8;
vpc v_conv7_i139_4_1_3@uint8 v_conv7_i139_4_1_3@uint32;
(*   %conv.i127.5.1.3 = zext i8 %conv5.i136.4.1.3 to i32 *)
cast v_conv_i127_5_1_3@uint32 v_conv5_i136_4_1_3@uint8;
(*   %and.i128.5.1.3 = and i32 %conv.i127.5.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_5_1_3 v_conv_i127_5_1_3 (0x1)@uint32;
(*   %conv1.i129.5.1.3 = zext i8 %conv7.i139.4.1.3 to i32 *)
cast v_conv1_i129_5_1_3@uint32 v_conv7_i139_4_1_3@uint8;
(*   %mul.i130.5.1.3 = mul nsw i32 %and.i128.5.1.3, %conv1.i129.5.1.3 *)
mul v_mul_i130_5_1_3 v_and_i128_5_1_3 v_conv1_i129_5_1_3;
(*   %conv2.i131.5.1.3 = zext i8 %conv3.i133.4.1.3 to i32 *)
cast v_conv2_i131_5_1_3@uint32 v_conv3_i133_4_1_3@uint8;
(*   %xor.i132.5.1.3 = xor i32 %conv2.i131.5.1.3, %mul.i130.5.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_5_1_3 v_conv2_i131_5_1_3 v_mul_i130_5_1_3;
(*   %conv3.i133.5.1.3 = trunc i32 %xor.i132.5.1.3 to i8 *)
split tmp_v_xor_i132_5_1_3 v_conv3_i133_5_1_3 v_xor_i132_5_1_3 8;
vpc v_conv3_i133_5_1_3@uint8 v_conv3_i133_5_1_3@uint32;
(*   %conv4.i134.5.1.3 = zext i8 %conv5.i136.4.1.3 to i32 *)
cast v_conv4_i134_5_1_3@uint32 v_conv5_i136_4_1_3@uint8;
(*   %shr.i135.5.1.3 = ashr i32 %conv4.i134.5.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i135_5_1_3 tmp_to_be_used v_conv4_i134_5_1_3 1;
(*   %conv5.i136.5.1.3 = trunc i32 %shr.i135.5.1.3 to i8 *)
split tmp_v_shr_i135_5_1_3 v_conv5_i136_5_1_3 v_shr_i135_5_1_3 8;
vpc v_conv5_i136_5_1_3@uint8 v_conv5_i136_5_1_3@uint32;
(*   %conv6.i137.5.1.3 = zext i8 %conv7.i139.4.1.3 to i32 *)
cast v_conv6_i137_5_1_3@uint32 v_conv7_i139_4_1_3@uint8;
(*   %shl.i138.5.1.3 = shl i32 %conv6.i137.5.1.3, 1 *)
shls discard_152 v_shl_i138_5_1_3 v_conv6_i137_5_1_3 1;
(*   %conv7.i139.5.1.3 = trunc i32 %shl.i138.5.1.3 to i8 *)
split tmp_v_shl_i138_5_1_3 v_conv7_i139_5_1_3 v_shl_i138_5_1_3 8;
vpc v_conv7_i139_5_1_3@uint8 v_conv7_i139_5_1_3@uint32;
(*   %conv.i127.6.1.3 = zext i8 %conv5.i136.5.1.3 to i32 *)
cast v_conv_i127_6_1_3@uint32 v_conv5_i136_5_1_3@uint8;
(*   %and.i128.6.1.3 = and i32 %conv.i127.6.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_6_1_3 v_conv_i127_6_1_3 (0x1)@uint32;
(*   %conv1.i129.6.1.3 = zext i8 %conv7.i139.5.1.3 to i32 *)
cast v_conv1_i129_6_1_3@uint32 v_conv7_i139_5_1_3@uint8;
(*   %mul.i130.6.1.3 = mul nsw i32 %and.i128.6.1.3, %conv1.i129.6.1.3 *)
mul v_mul_i130_6_1_3 v_and_i128_6_1_3 v_conv1_i129_6_1_3;
(*   %conv2.i131.6.1.3 = zext i8 %conv3.i133.5.1.3 to i32 *)
cast v_conv2_i131_6_1_3@uint32 v_conv3_i133_5_1_3@uint8;
(*   %xor.i132.6.1.3 = xor i32 %conv2.i131.6.1.3, %mul.i130.6.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_6_1_3 v_conv2_i131_6_1_3 v_mul_i130_6_1_3;
(*   %conv3.i133.6.1.3 = trunc i32 %xor.i132.6.1.3 to i8 *)
split tmp_v_xor_i132_6_1_3 v_conv3_i133_6_1_3 v_xor_i132_6_1_3 8;
vpc v_conv3_i133_6_1_3@uint8 v_conv3_i133_6_1_3@uint32;
(*   %conv4.i134.6.1.3 = zext i8 %conv5.i136.5.1.3 to i32 *)
cast v_conv4_i134_6_1_3@uint32 v_conv5_i136_5_1_3@uint8;
(*   %shr.i135.6.1.3 = ashr i32 %conv4.i134.6.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i135_6_1_3 tmp_to_be_used v_conv4_i134_6_1_3 1;
(*   %conv5.i136.6.1.3 = trunc i32 %shr.i135.6.1.3 to i8 *)
split tmp_v_shr_i135_6_1_3 v_conv5_i136_6_1_3 v_shr_i135_6_1_3 8;
vpc v_conv5_i136_6_1_3@uint8 v_conv5_i136_6_1_3@uint32;
(*   %conv6.i137.6.1.3 = zext i8 %conv7.i139.5.1.3 to i32 *)
cast v_conv6_i137_6_1_3@uint32 v_conv7_i139_5_1_3@uint8;
(*   %shl.i138.6.1.3 = shl i32 %conv6.i137.6.1.3, 1 *)
shls discard_153 v_shl_i138_6_1_3 v_conv6_i137_6_1_3 1;
(*   %conv7.i139.6.1.3 = trunc i32 %shl.i138.6.1.3 to i8 *)
split tmp_v_shl_i138_6_1_3 v_conv7_i139_6_1_3 v_shl_i138_6_1_3 8;
vpc v_conv7_i139_6_1_3@uint8 v_conv7_i139_6_1_3@uint32;
(*   %conv.i127.7.1.3 = zext i8 %conv5.i136.6.1.3 to i32 *)
cast v_conv_i127_7_1_3@uint32 v_conv5_i136_6_1_3@uint8;
(*   %and.i128.7.1.3 = and i32 %conv.i127.7.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_7_1_3 v_conv_i127_7_1_3 (0x1)@uint32;
(*   %conv1.i129.7.1.3 = zext i8 %conv7.i139.6.1.3 to i32 *)
cast v_conv1_i129_7_1_3@uint32 v_conv7_i139_6_1_3@uint8;
(*   %mul.i130.7.1.3 = mul nsw i32 %and.i128.7.1.3, %conv1.i129.7.1.3 *)
mul v_mul_i130_7_1_3 v_and_i128_7_1_3 v_conv1_i129_7_1_3;
(*   %conv2.i131.7.1.3 = zext i8 %conv3.i133.6.1.3 to i32 *)
cast v_conv2_i131_7_1_3@uint32 v_conv3_i133_6_1_3@uint8;
(*   %xor.i132.7.1.3 = xor i32 %conv2.i131.7.1.3, %mul.i130.7.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_7_1_3 v_conv2_i131_7_1_3 v_mul_i130_7_1_3;
(*   %conv3.i133.7.1.3 = trunc i32 %xor.i132.7.1.3 to i8 *)
split tmp_v_xor_i132_7_1_3 v_conv3_i133_7_1_3 v_xor_i132_7_1_3 8;
vpc v_conv3_i133_7_1_3@uint8 v_conv3_i133_7_1_3@uint32;
(*   %arrayidx56.1.3 = getelementptr inbounds [16 x i8], [16 x i8]* %p1, i64 0, i64 13 *)
(*   store i8 %conv3.i133.7.1.3, i8* %arrayidx56.1.3, align 1 *)
mov p1_13 v_conv3_i133_7_1_3;
(*   %arrayidx60.1.3 = getelementptr inbounds [16 x i8], [16 x i8]* %p0, i64 0, i64 13 *)
(*   %92 = load i8, i8* %arrayidx60.1.3, align 1 *)
mov v92 p0_13;
(*   %conv61.1.3 = zext i8 %92 to i32 *)
cast v_conv61_1_3@uint32 v92@uint8;
(*   %arrayidx65.1.3 = getelementptr inbounds [16 x i8], [16 x i8]* %p1, i64 0, i64 13 *)
(*   %93 = load i8, i8* %arrayidx65.1.3, align 1 *)
mov v93 p1_13;
(*   %conv66.1.3 = zext i8 %93 to i32 *)
cast v_conv66_1_3@uint32 v93@uint8;
(*   %xor67.1.3 = xor i32 %conv61.1.3, %conv66.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor67_1_3 v_conv61_1_3 v_conv66_1_3;
(*   %conv68.1.3 = trunc i32 %xor67.1.3 to i8 *)
split tmp_v_xor67_1_3 v_conv68_1_3 v_xor67_1_3 8;
vpc v_conv68_1_3@uint8 v_conv68_1_3@uint32;
(*   %arrayidx72.1.3 = getelementptr inbounds [16 x i8], [16 x i8]* %z, i64 0, i64 13 *)
(*   store i8 %conv68.1.3, i8* %arrayidx72.1.3, align 1 *)
mov z_13 v_conv68_1_3;
(*   %arrayidx22.2.3 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %94 = load i8, i8* %arrayidx22.2.3, align 1 *)
mov v94 b_2;
(*   %conv.2.3 = zext i8 %94 to i32 *)
cast v_conv_2_3@uint32 v94@uint8;
(*   %arrayidx26.2.3 = getelementptr inbounds i8, i8* %r, i64 14 *)
(*   %95 = load i8, i8* %arrayidx26.2.3, align 1 *)
mov v95 r_14;
(*   %conv27.2.3 = zext i8 %95 to i32 *)
cast v_conv27_2_3@uint32 v95@uint8;
(*   %xor.2.3 = xor i32 %conv.2.3, %conv27.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_2_3 v_conv_2_3 v_conv27_2_3;
(*   %conv28.2.3 = trunc i32 %xor.2.3 to i8 *)
split tmp_v_xor_2_3 v_conv28_2_3 v_xor_2_3 8;
vpc v_conv28_2_3@uint8 v_conv28_2_3@uint32;
(*   %arrayidx32.2.3 = getelementptr inbounds [16 x i8], [16 x i8]* %s, i64 0, i64 14 *)
(*   store i8 %conv28.2.3, i8* %arrayidx32.2.3, align 1 *)
mov s_14 v_conv28_2_3;
(*   %96 = load i8, i8* %arrayidx34.3, align 1 *)
mov v96 a_3;
(*   %conv35.2.3 = zext i8 %96 to i32 *)
cast v_conv35_2_3@uint32 v96@uint8;
(*   %xor36.2.3 = xor i32 %conv35.2.3, 1 *)
(* You may need to modify here *)
xor uint32 v_xor36_2_3 v_conv35_2_3 (0x1)@uint32;
(*   %conv37.2.3 = trunc i32 %xor36.2.3 to i8 *)
split tmp_v_xor36_2_3 v_conv37_2_3 v_xor36_2_3 8;
vpc v_conv37_2_3@uint8 v_conv37_2_3@uint32;
(*   %arrayidx41.2.3 = getelementptr inbounds i8, i8* %r, i64 14 *)
(*   %97 = load i8, i8* %arrayidx41.2.3, align 1 *)
mov v97 r_14;
(*   %conv.i.2145.3 = zext i8 %97 to i32 *)
cast v_conv_i_2145_3@uint32 v97@uint8;
(*   %and.i.2146.3 = and i32 %conv.i.2145.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2146_3 v_conv_i_2145_3 (0x1)@uint32;
(*   %conv1.i.2147.3 = zext i8 %conv37.2.3 to i32 *)
cast v_conv1_i_2147_3@uint32 v_conv37_2_3@uint8;
(*   %mul.i.2148.3 = mul nsw i32 %and.i.2146.3, %conv1.i.2147.3 *)
mul v_mul_i_2148_3 v_and_i_2146_3 v_conv1_i_2147_3;
(*   %conv3.i.2149.3 = trunc i32 %mul.i.2148.3 to i8 *)
split tmp_v_mul_i_2148_3 v_conv3_i_2149_3 v_mul_i_2148_3 8;
vpc v_conv3_i_2149_3@uint8 v_conv3_i_2149_3@uint32;
(*   %conv4.i.2150.3 = zext i8 %97 to i32 *)
cast v_conv4_i_2150_3@uint32 v97@uint8;
(*   %shr.i.2151.3 = ashr i32 %conv4.i.2150.3, 1 *)
(* You may need to modify here *)
split v_shr_i_2151_3 tmp_to_be_used v_conv4_i_2150_3 1;
(*   %conv5.i.2152.3 = trunc i32 %shr.i.2151.3 to i8 *)
split tmp_v_shr_i_2151_3 v_conv5_i_2152_3 v_shr_i_2151_3 8;
vpc v_conv5_i_2152_3@uint8 v_conv5_i_2152_3@uint32;
(*   %conv6.i.2153.3 = zext i8 %conv37.2.3 to i32 *)
cast v_conv6_i_2153_3@uint32 v_conv37_2_3@uint8;
(*   %shl.i.2154.3 = shl i32 %conv6.i.2153.3, 1 *)
shls discard_154 v_shl_i_2154_3 v_conv6_i_2153_3 1;
(*   %conv7.i.2155.3 = trunc i32 %shl.i.2154.3 to i8 *)
split tmp_v_shl_i_2154_3 v_conv7_i_2155_3 v_shl_i_2154_3 8;
vpc v_conv7_i_2155_3@uint8 v_conv7_i_2155_3@uint32;
(*   %conv.i.1.2.3 = zext i8 %conv5.i.2152.3 to i32 *)
cast v_conv_i_1_2_3@uint32 v_conv5_i_2152_3@uint8;
(*   %and.i.1.2.3 = and i32 %conv.i.1.2.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_2_3 v_conv_i_1_2_3 (0x1)@uint32;
(*   %conv1.i.1.2.3 = zext i8 %conv7.i.2155.3 to i32 *)
cast v_conv1_i_1_2_3@uint32 v_conv7_i_2155_3@uint8;
(*   %mul.i.1.2.3 = mul nsw i32 %and.i.1.2.3, %conv1.i.1.2.3 *)
mul v_mul_i_1_2_3 v_and_i_1_2_3 v_conv1_i_1_2_3;
(*   %conv2.i.1.2.3 = zext i8 %conv3.i.2149.3 to i32 *)
cast v_conv2_i_1_2_3@uint32 v_conv3_i_2149_3@uint8;
(*   %xor.i.1.2.3 = xor i32 %conv2.i.1.2.3, %mul.i.1.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_2_3 v_conv2_i_1_2_3 v_mul_i_1_2_3;
(*   %conv3.i.1.2.3 = trunc i32 %xor.i.1.2.3 to i8 *)
split tmp_v_xor_i_1_2_3 v_conv3_i_1_2_3 v_xor_i_1_2_3 8;
vpc v_conv3_i_1_2_3@uint8 v_conv3_i_1_2_3@uint32;
(*   %conv4.i.1.2.3 = zext i8 %conv5.i.2152.3 to i32 *)
cast v_conv4_i_1_2_3@uint32 v_conv5_i_2152_3@uint8;
(*   %shr.i.1.2.3 = ashr i32 %conv4.i.1.2.3, 1 *)
(* You may need to modify here *)
split v_shr_i_1_2_3 tmp_to_be_used v_conv4_i_1_2_3 1;
(*   %conv5.i.1.2.3 = trunc i32 %shr.i.1.2.3 to i8 *)
split tmp_v_shr_i_1_2_3 v_conv5_i_1_2_3 v_shr_i_1_2_3 8;
vpc v_conv5_i_1_2_3@uint8 v_conv5_i_1_2_3@uint32;
(*   %conv6.i.1.2.3 = zext i8 %conv7.i.2155.3 to i32 *)
cast v_conv6_i_1_2_3@uint32 v_conv7_i_2155_3@uint8;
(*   %shl.i.1.2.3 = shl i32 %conv6.i.1.2.3, 1 *)
shls discard_155 v_shl_i_1_2_3 v_conv6_i_1_2_3 1;
(*   %conv7.i.1.2.3 = trunc i32 %shl.i.1.2.3 to i8 *)
split tmp_v_shl_i_1_2_3 v_conv7_i_1_2_3 v_shl_i_1_2_3 8;
vpc v_conv7_i_1_2_3@uint8 v_conv7_i_1_2_3@uint32;
(*   %conv.i.2.2.3 = zext i8 %conv5.i.1.2.3 to i32 *)
cast v_conv_i_2_2_3@uint32 v_conv5_i_1_2_3@uint8;
(*   %and.i.2.2.3 = and i32 %conv.i.2.2.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_2_3 v_conv_i_2_2_3 (0x1)@uint32;
(*   %conv1.i.2.2.3 = zext i8 %conv7.i.1.2.3 to i32 *)
cast v_conv1_i_2_2_3@uint32 v_conv7_i_1_2_3@uint8;
(*   %mul.i.2.2.3 = mul nsw i32 %and.i.2.2.3, %conv1.i.2.2.3 *)
mul v_mul_i_2_2_3 v_and_i_2_2_3 v_conv1_i_2_2_3;
(*   %conv2.i.2.2.3 = zext i8 %conv3.i.1.2.3 to i32 *)
cast v_conv2_i_2_2_3@uint32 v_conv3_i_1_2_3@uint8;
(*   %xor.i.2.2.3 = xor i32 %conv2.i.2.2.3, %mul.i.2.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_2_3 v_conv2_i_2_2_3 v_mul_i_2_2_3;
(*   %conv3.i.2.2.3 = trunc i32 %xor.i.2.2.3 to i8 *)
split tmp_v_xor_i_2_2_3 v_conv3_i_2_2_3 v_xor_i_2_2_3 8;
vpc v_conv3_i_2_2_3@uint8 v_conv3_i_2_2_3@uint32;
(*   %conv4.i.2.2.3 = zext i8 %conv5.i.1.2.3 to i32 *)
cast v_conv4_i_2_2_3@uint32 v_conv5_i_1_2_3@uint8;
(*   %shr.i.2.2.3 = ashr i32 %conv4.i.2.2.3, 1 *)
(* You may need to modify here *)
split v_shr_i_2_2_3 tmp_to_be_used v_conv4_i_2_2_3 1;
(*   %conv5.i.2.2.3 = trunc i32 %shr.i.2.2.3 to i8 *)
split tmp_v_shr_i_2_2_3 v_conv5_i_2_2_3 v_shr_i_2_2_3 8;
vpc v_conv5_i_2_2_3@uint8 v_conv5_i_2_2_3@uint32;
(*   %conv6.i.2.2.3 = zext i8 %conv7.i.1.2.3 to i32 *)
cast v_conv6_i_2_2_3@uint32 v_conv7_i_1_2_3@uint8;
(*   %shl.i.2.2.3 = shl i32 %conv6.i.2.2.3, 1 *)
shls discard_156 v_shl_i_2_2_3 v_conv6_i_2_2_3 1;
(*   %conv7.i.2.2.3 = trunc i32 %shl.i.2.2.3 to i8 *)
split tmp_v_shl_i_2_2_3 v_conv7_i_2_2_3 v_shl_i_2_2_3 8;
vpc v_conv7_i_2_2_3@uint8 v_conv7_i_2_2_3@uint32;
(*   %conv.i.3.2.3 = zext i8 %conv5.i.2.2.3 to i32 *)
cast v_conv_i_3_2_3@uint32 v_conv5_i_2_2_3@uint8;
(*   %and.i.3.2.3 = and i32 %conv.i.3.2.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_2_3 v_conv_i_3_2_3 (0x1)@uint32;
(*   %conv1.i.3.2.3 = zext i8 %conv7.i.2.2.3 to i32 *)
cast v_conv1_i_3_2_3@uint32 v_conv7_i_2_2_3@uint8;
(*   %mul.i.3.2.3 = mul nsw i32 %and.i.3.2.3, %conv1.i.3.2.3 *)
mul v_mul_i_3_2_3 v_and_i_3_2_3 v_conv1_i_3_2_3;
(*   %conv2.i.3.2.3 = zext i8 %conv3.i.2.2.3 to i32 *)
cast v_conv2_i_3_2_3@uint32 v_conv3_i_2_2_3@uint8;
(*   %xor.i.3.2.3 = xor i32 %conv2.i.3.2.3, %mul.i.3.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_2_3 v_conv2_i_3_2_3 v_mul_i_3_2_3;
(*   %conv3.i.3.2.3 = trunc i32 %xor.i.3.2.3 to i8 *)
split tmp_v_xor_i_3_2_3 v_conv3_i_3_2_3 v_xor_i_3_2_3 8;
vpc v_conv3_i_3_2_3@uint8 v_conv3_i_3_2_3@uint32;
(*   %conv4.i.3.2.3 = zext i8 %conv5.i.2.2.3 to i32 *)
cast v_conv4_i_3_2_3@uint32 v_conv5_i_2_2_3@uint8;
(*   %shr.i.3.2.3 = ashr i32 %conv4.i.3.2.3, 1 *)
(* You may need to modify here *)
split v_shr_i_3_2_3 tmp_to_be_used v_conv4_i_3_2_3 1;
(*   %conv5.i.3.2.3 = trunc i32 %shr.i.3.2.3 to i8 *)
split tmp_v_shr_i_3_2_3 v_conv5_i_3_2_3 v_shr_i_3_2_3 8;
vpc v_conv5_i_3_2_3@uint8 v_conv5_i_3_2_3@uint32;
(*   %conv6.i.3.2.3 = zext i8 %conv7.i.2.2.3 to i32 *)
cast v_conv6_i_3_2_3@uint32 v_conv7_i_2_2_3@uint8;
(*   %shl.i.3.2.3 = shl i32 %conv6.i.3.2.3, 1 *)
shls discard_157 v_shl_i_3_2_3 v_conv6_i_3_2_3 1;
(*   %conv7.i.3.2.3 = trunc i32 %shl.i.3.2.3 to i8 *)
split tmp_v_shl_i_3_2_3 v_conv7_i_3_2_3 v_shl_i_3_2_3 8;
vpc v_conv7_i_3_2_3@uint8 v_conv7_i_3_2_3@uint32;
(*   %conv.i.4.2.3 = zext i8 %conv5.i.3.2.3 to i32 *)
cast v_conv_i_4_2_3@uint32 v_conv5_i_3_2_3@uint8;
(*   %and.i.4.2.3 = and i32 %conv.i.4.2.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_2_3 v_conv_i_4_2_3 (0x1)@uint32;
(*   %conv1.i.4.2.3 = zext i8 %conv7.i.3.2.3 to i32 *)
cast v_conv1_i_4_2_3@uint32 v_conv7_i_3_2_3@uint8;
(*   %mul.i.4.2.3 = mul nsw i32 %and.i.4.2.3, %conv1.i.4.2.3 *)
mul v_mul_i_4_2_3 v_and_i_4_2_3 v_conv1_i_4_2_3;
(*   %conv2.i.4.2.3 = zext i8 %conv3.i.3.2.3 to i32 *)
cast v_conv2_i_4_2_3@uint32 v_conv3_i_3_2_3@uint8;
(*   %xor.i.4.2.3 = xor i32 %conv2.i.4.2.3, %mul.i.4.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_2_3 v_conv2_i_4_2_3 v_mul_i_4_2_3;
(*   %conv3.i.4.2.3 = trunc i32 %xor.i.4.2.3 to i8 *)
split tmp_v_xor_i_4_2_3 v_conv3_i_4_2_3 v_xor_i_4_2_3 8;
vpc v_conv3_i_4_2_3@uint8 v_conv3_i_4_2_3@uint32;
(*   %conv4.i.4.2.3 = zext i8 %conv5.i.3.2.3 to i32 *)
cast v_conv4_i_4_2_3@uint32 v_conv5_i_3_2_3@uint8;
(*   %shr.i.4.2.3 = ashr i32 %conv4.i.4.2.3, 1 *)
(* You may need to modify here *)
split v_shr_i_4_2_3 tmp_to_be_used v_conv4_i_4_2_3 1;
(*   %conv5.i.4.2.3 = trunc i32 %shr.i.4.2.3 to i8 *)
split tmp_v_shr_i_4_2_3 v_conv5_i_4_2_3 v_shr_i_4_2_3 8;
vpc v_conv5_i_4_2_3@uint8 v_conv5_i_4_2_3@uint32;
(*   %conv6.i.4.2.3 = zext i8 %conv7.i.3.2.3 to i32 *)
cast v_conv6_i_4_2_3@uint32 v_conv7_i_3_2_3@uint8;
(*   %shl.i.4.2.3 = shl i32 %conv6.i.4.2.3, 1 *)
shls discard_158 v_shl_i_4_2_3 v_conv6_i_4_2_3 1;
(*   %conv7.i.4.2.3 = trunc i32 %shl.i.4.2.3 to i8 *)
split tmp_v_shl_i_4_2_3 v_conv7_i_4_2_3 v_shl_i_4_2_3 8;
vpc v_conv7_i_4_2_3@uint8 v_conv7_i_4_2_3@uint32;
(*   %conv.i.5.2.3 = zext i8 %conv5.i.4.2.3 to i32 *)
cast v_conv_i_5_2_3@uint32 v_conv5_i_4_2_3@uint8;
(*   %and.i.5.2.3 = and i32 %conv.i.5.2.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_2_3 v_conv_i_5_2_3 (0x1)@uint32;
(*   %conv1.i.5.2.3 = zext i8 %conv7.i.4.2.3 to i32 *)
cast v_conv1_i_5_2_3@uint32 v_conv7_i_4_2_3@uint8;
(*   %mul.i.5.2.3 = mul nsw i32 %and.i.5.2.3, %conv1.i.5.2.3 *)
mul v_mul_i_5_2_3 v_and_i_5_2_3 v_conv1_i_5_2_3;
(*   %conv2.i.5.2.3 = zext i8 %conv3.i.4.2.3 to i32 *)
cast v_conv2_i_5_2_3@uint32 v_conv3_i_4_2_3@uint8;
(*   %xor.i.5.2.3 = xor i32 %conv2.i.5.2.3, %mul.i.5.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_2_3 v_conv2_i_5_2_3 v_mul_i_5_2_3;
(*   %conv3.i.5.2.3 = trunc i32 %xor.i.5.2.3 to i8 *)
split tmp_v_xor_i_5_2_3 v_conv3_i_5_2_3 v_xor_i_5_2_3 8;
vpc v_conv3_i_5_2_3@uint8 v_conv3_i_5_2_3@uint32;
(*   %conv4.i.5.2.3 = zext i8 %conv5.i.4.2.3 to i32 *)
cast v_conv4_i_5_2_3@uint32 v_conv5_i_4_2_3@uint8;
(*   %shr.i.5.2.3 = ashr i32 %conv4.i.5.2.3, 1 *)
(* You may need to modify here *)
split v_shr_i_5_2_3 tmp_to_be_used v_conv4_i_5_2_3 1;
(*   %conv5.i.5.2.3 = trunc i32 %shr.i.5.2.3 to i8 *)
split tmp_v_shr_i_5_2_3 v_conv5_i_5_2_3 v_shr_i_5_2_3 8;
vpc v_conv5_i_5_2_3@uint8 v_conv5_i_5_2_3@uint32;
(*   %conv6.i.5.2.3 = zext i8 %conv7.i.4.2.3 to i32 *)
cast v_conv6_i_5_2_3@uint32 v_conv7_i_4_2_3@uint8;
(*   %shl.i.5.2.3 = shl i32 %conv6.i.5.2.3, 1 *)
shls discard_159 v_shl_i_5_2_3 v_conv6_i_5_2_3 1;
(*   %conv7.i.5.2.3 = trunc i32 %shl.i.5.2.3 to i8 *)
split tmp_v_shl_i_5_2_3 v_conv7_i_5_2_3 v_shl_i_5_2_3 8;
vpc v_conv7_i_5_2_3@uint8 v_conv7_i_5_2_3@uint32;
(*   %conv.i.6.2.3 = zext i8 %conv5.i.5.2.3 to i32 *)
cast v_conv_i_6_2_3@uint32 v_conv5_i_5_2_3@uint8;
(*   %and.i.6.2.3 = and i32 %conv.i.6.2.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_2_3 v_conv_i_6_2_3 (0x1)@uint32;
(*   %conv1.i.6.2.3 = zext i8 %conv7.i.5.2.3 to i32 *)
cast v_conv1_i_6_2_3@uint32 v_conv7_i_5_2_3@uint8;
(*   %mul.i.6.2.3 = mul nsw i32 %and.i.6.2.3, %conv1.i.6.2.3 *)
mul v_mul_i_6_2_3 v_and_i_6_2_3 v_conv1_i_6_2_3;
(*   %conv2.i.6.2.3 = zext i8 %conv3.i.5.2.3 to i32 *)
cast v_conv2_i_6_2_3@uint32 v_conv3_i_5_2_3@uint8;
(*   %xor.i.6.2.3 = xor i32 %conv2.i.6.2.3, %mul.i.6.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_2_3 v_conv2_i_6_2_3 v_mul_i_6_2_3;
(*   %conv3.i.6.2.3 = trunc i32 %xor.i.6.2.3 to i8 *)
split tmp_v_xor_i_6_2_3 v_conv3_i_6_2_3 v_xor_i_6_2_3 8;
vpc v_conv3_i_6_2_3@uint8 v_conv3_i_6_2_3@uint32;
(*   %conv4.i.6.2.3 = zext i8 %conv5.i.5.2.3 to i32 *)
cast v_conv4_i_6_2_3@uint32 v_conv5_i_5_2_3@uint8;
(*   %shr.i.6.2.3 = ashr i32 %conv4.i.6.2.3, 1 *)
(* You may need to modify here *)
split v_shr_i_6_2_3 tmp_to_be_used v_conv4_i_6_2_3 1;
(*   %conv5.i.6.2.3 = trunc i32 %shr.i.6.2.3 to i8 *)
split tmp_v_shr_i_6_2_3 v_conv5_i_6_2_3 v_shr_i_6_2_3 8;
vpc v_conv5_i_6_2_3@uint8 v_conv5_i_6_2_3@uint32;
(*   %conv6.i.6.2.3 = zext i8 %conv7.i.5.2.3 to i32 *)
cast v_conv6_i_6_2_3@uint32 v_conv7_i_5_2_3@uint8;
(*   %shl.i.6.2.3 = shl i32 %conv6.i.6.2.3, 1 *)
shls discard_160 v_shl_i_6_2_3 v_conv6_i_6_2_3 1;
(*   %conv7.i.6.2.3 = trunc i32 %shl.i.6.2.3 to i8 *)
split tmp_v_shl_i_6_2_3 v_conv7_i_6_2_3 v_shl_i_6_2_3 8;
vpc v_conv7_i_6_2_3@uint8 v_conv7_i_6_2_3@uint32;
(*   %conv.i.7.2.3 = zext i8 %conv5.i.6.2.3 to i32 *)
cast v_conv_i_7_2_3@uint32 v_conv5_i_6_2_3@uint8;
(*   %and.i.7.2.3 = and i32 %conv.i.7.2.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_2_3 v_conv_i_7_2_3 (0x1)@uint32;
(*   %conv1.i.7.2.3 = zext i8 %conv7.i.6.2.3 to i32 *)
cast v_conv1_i_7_2_3@uint32 v_conv7_i_6_2_3@uint8;
(*   %mul.i.7.2.3 = mul nsw i32 %and.i.7.2.3, %conv1.i.7.2.3 *)
mul v_mul_i_7_2_3 v_and_i_7_2_3 v_conv1_i_7_2_3;
(*   %conv2.i.7.2.3 = zext i8 %conv3.i.6.2.3 to i32 *)
cast v_conv2_i_7_2_3@uint32 v_conv3_i_6_2_3@uint8;
(*   %xor.i.7.2.3 = xor i32 %conv2.i.7.2.3, %mul.i.7.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_2_3 v_conv2_i_7_2_3 v_mul_i_7_2_3;
(*   %conv3.i.7.2.3 = trunc i32 %xor.i.7.2.3 to i8 *)
split tmp_v_xor_i_7_2_3 v_conv3_i_7_2_3 v_xor_i_7_2_3 8;
vpc v_conv3_i_7_2_3@uint8 v_conv3_i_7_2_3@uint32;
(*   %arrayidx45.2.3 = getelementptr inbounds [16 x i8], [16 x i8]* %p0, i64 0, i64 14 *)
(*   store i8 %conv3.i.7.2.3, i8* %arrayidx45.2.3, align 1 *)
mov p0_14 v_conv3_i_7_2_3;
(*   %98 = load i8, i8* %arrayidx47.3, align 1 *)
mov v98 a_3;
(*   %arrayidx51.2.3 = getelementptr inbounds [16 x i8], [16 x i8]* %s, i64 0, i64 14 *)
(*   %99 = load i8, i8* %arrayidx51.2.3, align 1 *)
mov v99 s_14;
(*   %conv.i127.2156.3 = zext i8 %99 to i32 *)
cast v_conv_i127_2156_3@uint32 v99@uint8;
(*   %and.i128.2157.3 = and i32 %conv.i127.2156.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_2157_3 v_conv_i127_2156_3 (0x1)@uint32;
(*   %conv1.i129.2158.3 = zext i8 %98 to i32 *)
cast v_conv1_i129_2158_3@uint32 v98@uint8;
(*   %mul.i130.2159.3 = mul nsw i32 %and.i128.2157.3, %conv1.i129.2158.3 *)
mul v_mul_i130_2159_3 v_and_i128_2157_3 v_conv1_i129_2158_3;
(*   %conv3.i133.2160.3 = trunc i32 %mul.i130.2159.3 to i8 *)
split tmp_v_mul_i130_2159_3 v_conv3_i133_2160_3 v_mul_i130_2159_3 8;
vpc v_conv3_i133_2160_3@uint8 v_conv3_i133_2160_3@uint32;
(*   %conv4.i134.2161.3 = zext i8 %99 to i32 *)
cast v_conv4_i134_2161_3@uint32 v99@uint8;
(*   %shr.i135.2162.3 = ashr i32 %conv4.i134.2161.3, 1 *)
(* You may need to modify here *)
split v_shr_i135_2162_3 tmp_to_be_used v_conv4_i134_2161_3 1;
(*   %conv5.i136.2163.3 = trunc i32 %shr.i135.2162.3 to i8 *)
split tmp_v_shr_i135_2162_3 v_conv5_i136_2163_3 v_shr_i135_2162_3 8;
vpc v_conv5_i136_2163_3@uint8 v_conv5_i136_2163_3@uint32;
(*   %conv6.i137.2164.3 = zext i8 %98 to i32 *)
cast v_conv6_i137_2164_3@uint32 v98@uint8;
(*   %shl.i138.2165.3 = shl i32 %conv6.i137.2164.3, 1 *)
shls discard_161 v_shl_i138_2165_3 v_conv6_i137_2164_3 1;
(*   %conv7.i139.2166.3 = trunc i32 %shl.i138.2165.3 to i8 *)
split tmp_v_shl_i138_2165_3 v_conv7_i139_2166_3 v_shl_i138_2165_3 8;
vpc v_conv7_i139_2166_3@uint8 v_conv7_i139_2166_3@uint32;
(*   %conv.i127.1.2.3 = zext i8 %conv5.i136.2163.3 to i32 *)
cast v_conv_i127_1_2_3@uint32 v_conv5_i136_2163_3@uint8;
(*   %and.i128.1.2.3 = and i32 %conv.i127.1.2.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1_2_3 v_conv_i127_1_2_3 (0x1)@uint32;
(*   %conv1.i129.1.2.3 = zext i8 %conv7.i139.2166.3 to i32 *)
cast v_conv1_i129_1_2_3@uint32 v_conv7_i139_2166_3@uint8;
(*   %mul.i130.1.2.3 = mul nsw i32 %and.i128.1.2.3, %conv1.i129.1.2.3 *)
mul v_mul_i130_1_2_3 v_and_i128_1_2_3 v_conv1_i129_1_2_3;
(*   %conv2.i131.1.2.3 = zext i8 %conv3.i133.2160.3 to i32 *)
cast v_conv2_i131_1_2_3@uint32 v_conv3_i133_2160_3@uint8;
(*   %xor.i132.1.2.3 = xor i32 %conv2.i131.1.2.3, %mul.i130.1.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_1_2_3 v_conv2_i131_1_2_3 v_mul_i130_1_2_3;
(*   %conv3.i133.1.2.3 = trunc i32 %xor.i132.1.2.3 to i8 *)
split tmp_v_xor_i132_1_2_3 v_conv3_i133_1_2_3 v_xor_i132_1_2_3 8;
vpc v_conv3_i133_1_2_3@uint8 v_conv3_i133_1_2_3@uint32;
(*   %conv4.i134.1.2.3 = zext i8 %conv5.i136.2163.3 to i32 *)
cast v_conv4_i134_1_2_3@uint32 v_conv5_i136_2163_3@uint8;
(*   %shr.i135.1.2.3 = ashr i32 %conv4.i134.1.2.3, 1 *)
(* You may need to modify here *)
split v_shr_i135_1_2_3 tmp_to_be_used v_conv4_i134_1_2_3 1;
(*   %conv5.i136.1.2.3 = trunc i32 %shr.i135.1.2.3 to i8 *)
split tmp_v_shr_i135_1_2_3 v_conv5_i136_1_2_3 v_shr_i135_1_2_3 8;
vpc v_conv5_i136_1_2_3@uint8 v_conv5_i136_1_2_3@uint32;
(*   %conv6.i137.1.2.3 = zext i8 %conv7.i139.2166.3 to i32 *)
cast v_conv6_i137_1_2_3@uint32 v_conv7_i139_2166_3@uint8;
(*   %shl.i138.1.2.3 = shl i32 %conv6.i137.1.2.3, 1 *)
shls discard_162 v_shl_i138_1_2_3 v_conv6_i137_1_2_3 1;
(*   %conv7.i139.1.2.3 = trunc i32 %shl.i138.1.2.3 to i8 *)
split tmp_v_shl_i138_1_2_3 v_conv7_i139_1_2_3 v_shl_i138_1_2_3 8;
vpc v_conv7_i139_1_2_3@uint8 v_conv7_i139_1_2_3@uint32;
(*   %conv.i127.2.2.3 = zext i8 %conv5.i136.1.2.3 to i32 *)
cast v_conv_i127_2_2_3@uint32 v_conv5_i136_1_2_3@uint8;
(*   %and.i128.2.2.3 = and i32 %conv.i127.2.2.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_2_2_3 v_conv_i127_2_2_3 (0x1)@uint32;
(*   %conv1.i129.2.2.3 = zext i8 %conv7.i139.1.2.3 to i32 *)
cast v_conv1_i129_2_2_3@uint32 v_conv7_i139_1_2_3@uint8;
(*   %mul.i130.2.2.3 = mul nsw i32 %and.i128.2.2.3, %conv1.i129.2.2.3 *)
mul v_mul_i130_2_2_3 v_and_i128_2_2_3 v_conv1_i129_2_2_3;
(*   %conv2.i131.2.2.3 = zext i8 %conv3.i133.1.2.3 to i32 *)
cast v_conv2_i131_2_2_3@uint32 v_conv3_i133_1_2_3@uint8;
(*   %xor.i132.2.2.3 = xor i32 %conv2.i131.2.2.3, %mul.i130.2.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_2_2_3 v_conv2_i131_2_2_3 v_mul_i130_2_2_3;
(*   %conv3.i133.2.2.3 = trunc i32 %xor.i132.2.2.3 to i8 *)
split tmp_v_xor_i132_2_2_3 v_conv3_i133_2_2_3 v_xor_i132_2_2_3 8;
vpc v_conv3_i133_2_2_3@uint8 v_conv3_i133_2_2_3@uint32;
(*   %conv4.i134.2.2.3 = zext i8 %conv5.i136.1.2.3 to i32 *)
cast v_conv4_i134_2_2_3@uint32 v_conv5_i136_1_2_3@uint8;
(*   %shr.i135.2.2.3 = ashr i32 %conv4.i134.2.2.3, 1 *)
(* You may need to modify here *)
split v_shr_i135_2_2_3 tmp_to_be_used v_conv4_i134_2_2_3 1;
(*   %conv5.i136.2.2.3 = trunc i32 %shr.i135.2.2.3 to i8 *)
split tmp_v_shr_i135_2_2_3 v_conv5_i136_2_2_3 v_shr_i135_2_2_3 8;
vpc v_conv5_i136_2_2_3@uint8 v_conv5_i136_2_2_3@uint32;
(*   %conv6.i137.2.2.3 = zext i8 %conv7.i139.1.2.3 to i32 *)
cast v_conv6_i137_2_2_3@uint32 v_conv7_i139_1_2_3@uint8;
(*   %shl.i138.2.2.3 = shl i32 %conv6.i137.2.2.3, 1 *)
shls discard_163 v_shl_i138_2_2_3 v_conv6_i137_2_2_3 1;
(*   %conv7.i139.2.2.3 = trunc i32 %shl.i138.2.2.3 to i8 *)
split tmp_v_shl_i138_2_2_3 v_conv7_i139_2_2_3 v_shl_i138_2_2_3 8;
vpc v_conv7_i139_2_2_3@uint8 v_conv7_i139_2_2_3@uint32;
(*   %conv.i127.3.2.3 = zext i8 %conv5.i136.2.2.3 to i32 *)
cast v_conv_i127_3_2_3@uint32 v_conv5_i136_2_2_3@uint8;
(*   %and.i128.3.2.3 = and i32 %conv.i127.3.2.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_3_2_3 v_conv_i127_3_2_3 (0x1)@uint32;
(*   %conv1.i129.3.2.3 = zext i8 %conv7.i139.2.2.3 to i32 *)
cast v_conv1_i129_3_2_3@uint32 v_conv7_i139_2_2_3@uint8;
(*   %mul.i130.3.2.3 = mul nsw i32 %and.i128.3.2.3, %conv1.i129.3.2.3 *)
mul v_mul_i130_3_2_3 v_and_i128_3_2_3 v_conv1_i129_3_2_3;
(*   %conv2.i131.3.2.3 = zext i8 %conv3.i133.2.2.3 to i32 *)
cast v_conv2_i131_3_2_3@uint32 v_conv3_i133_2_2_3@uint8;
(*   %xor.i132.3.2.3 = xor i32 %conv2.i131.3.2.3, %mul.i130.3.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_3_2_3 v_conv2_i131_3_2_3 v_mul_i130_3_2_3;
(*   %conv3.i133.3.2.3 = trunc i32 %xor.i132.3.2.3 to i8 *)
split tmp_v_xor_i132_3_2_3 v_conv3_i133_3_2_3 v_xor_i132_3_2_3 8;
vpc v_conv3_i133_3_2_3@uint8 v_conv3_i133_3_2_3@uint32;
(*   %conv4.i134.3.2.3 = zext i8 %conv5.i136.2.2.3 to i32 *)
cast v_conv4_i134_3_2_3@uint32 v_conv5_i136_2_2_3@uint8;
(*   %shr.i135.3.2.3 = ashr i32 %conv4.i134.3.2.3, 1 *)
(* You may need to modify here *)
split v_shr_i135_3_2_3 tmp_to_be_used v_conv4_i134_3_2_3 1;
(*   %conv5.i136.3.2.3 = trunc i32 %shr.i135.3.2.3 to i8 *)
split tmp_v_shr_i135_3_2_3 v_conv5_i136_3_2_3 v_shr_i135_3_2_3 8;
vpc v_conv5_i136_3_2_3@uint8 v_conv5_i136_3_2_3@uint32;
(*   %conv6.i137.3.2.3 = zext i8 %conv7.i139.2.2.3 to i32 *)
cast v_conv6_i137_3_2_3@uint32 v_conv7_i139_2_2_3@uint8;
(*   %shl.i138.3.2.3 = shl i32 %conv6.i137.3.2.3, 1 *)
shls discard_164 v_shl_i138_3_2_3 v_conv6_i137_3_2_3 1;
(*   %conv7.i139.3.2.3 = trunc i32 %shl.i138.3.2.3 to i8 *)
split tmp_v_shl_i138_3_2_3 v_conv7_i139_3_2_3 v_shl_i138_3_2_3 8;
vpc v_conv7_i139_3_2_3@uint8 v_conv7_i139_3_2_3@uint32;
(*   %conv.i127.4.2.3 = zext i8 %conv5.i136.3.2.3 to i32 *)
cast v_conv_i127_4_2_3@uint32 v_conv5_i136_3_2_3@uint8;
(*   %and.i128.4.2.3 = and i32 %conv.i127.4.2.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_4_2_3 v_conv_i127_4_2_3 (0x1)@uint32;
(*   %conv1.i129.4.2.3 = zext i8 %conv7.i139.3.2.3 to i32 *)
cast v_conv1_i129_4_2_3@uint32 v_conv7_i139_3_2_3@uint8;
(*   %mul.i130.4.2.3 = mul nsw i32 %and.i128.4.2.3, %conv1.i129.4.2.3 *)
mul v_mul_i130_4_2_3 v_and_i128_4_2_3 v_conv1_i129_4_2_3;
(*   %conv2.i131.4.2.3 = zext i8 %conv3.i133.3.2.3 to i32 *)
cast v_conv2_i131_4_2_3@uint32 v_conv3_i133_3_2_3@uint8;
(*   %xor.i132.4.2.3 = xor i32 %conv2.i131.4.2.3, %mul.i130.4.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_4_2_3 v_conv2_i131_4_2_3 v_mul_i130_4_2_3;
(*   %conv3.i133.4.2.3 = trunc i32 %xor.i132.4.2.3 to i8 *)
split tmp_v_xor_i132_4_2_3 v_conv3_i133_4_2_3 v_xor_i132_4_2_3 8;
vpc v_conv3_i133_4_2_3@uint8 v_conv3_i133_4_2_3@uint32;
(*   %conv4.i134.4.2.3 = zext i8 %conv5.i136.3.2.3 to i32 *)
cast v_conv4_i134_4_2_3@uint32 v_conv5_i136_3_2_3@uint8;
(*   %shr.i135.4.2.3 = ashr i32 %conv4.i134.4.2.3, 1 *)
(* You may need to modify here *)
split v_shr_i135_4_2_3 tmp_to_be_used v_conv4_i134_4_2_3 1;
(*   %conv5.i136.4.2.3 = trunc i32 %shr.i135.4.2.3 to i8 *)
split tmp_v_shr_i135_4_2_3 v_conv5_i136_4_2_3 v_shr_i135_4_2_3 8;
vpc v_conv5_i136_4_2_3@uint8 v_conv5_i136_4_2_3@uint32;
(*   %conv6.i137.4.2.3 = zext i8 %conv7.i139.3.2.3 to i32 *)
cast v_conv6_i137_4_2_3@uint32 v_conv7_i139_3_2_3@uint8;
(*   %shl.i138.4.2.3 = shl i32 %conv6.i137.4.2.3, 1 *)
shls discard_165 v_shl_i138_4_2_3 v_conv6_i137_4_2_3 1;
(*   %conv7.i139.4.2.3 = trunc i32 %shl.i138.4.2.3 to i8 *)
split tmp_v_shl_i138_4_2_3 v_conv7_i139_4_2_3 v_shl_i138_4_2_3 8;
vpc v_conv7_i139_4_2_3@uint8 v_conv7_i139_4_2_3@uint32;
(*   %conv.i127.5.2.3 = zext i8 %conv5.i136.4.2.3 to i32 *)
cast v_conv_i127_5_2_3@uint32 v_conv5_i136_4_2_3@uint8;
(*   %and.i128.5.2.3 = and i32 %conv.i127.5.2.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_5_2_3 v_conv_i127_5_2_3 (0x1)@uint32;
(*   %conv1.i129.5.2.3 = zext i8 %conv7.i139.4.2.3 to i32 *)
cast v_conv1_i129_5_2_3@uint32 v_conv7_i139_4_2_3@uint8;
(*   %mul.i130.5.2.3 = mul nsw i32 %and.i128.5.2.3, %conv1.i129.5.2.3 *)
mul v_mul_i130_5_2_3 v_and_i128_5_2_3 v_conv1_i129_5_2_3;
(*   %conv2.i131.5.2.3 = zext i8 %conv3.i133.4.2.3 to i32 *)
cast v_conv2_i131_5_2_3@uint32 v_conv3_i133_4_2_3@uint8;
(*   %xor.i132.5.2.3 = xor i32 %conv2.i131.5.2.3, %mul.i130.5.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_5_2_3 v_conv2_i131_5_2_3 v_mul_i130_5_2_3;
(*   %conv3.i133.5.2.3 = trunc i32 %xor.i132.5.2.3 to i8 *)
split tmp_v_xor_i132_5_2_3 v_conv3_i133_5_2_3 v_xor_i132_5_2_3 8;
vpc v_conv3_i133_5_2_3@uint8 v_conv3_i133_5_2_3@uint32;
(*   %conv4.i134.5.2.3 = zext i8 %conv5.i136.4.2.3 to i32 *)
cast v_conv4_i134_5_2_3@uint32 v_conv5_i136_4_2_3@uint8;
(*   %shr.i135.5.2.3 = ashr i32 %conv4.i134.5.2.3, 1 *)
(* You may need to modify here *)
split v_shr_i135_5_2_3 tmp_to_be_used v_conv4_i134_5_2_3 1;
(*   %conv5.i136.5.2.3 = trunc i32 %shr.i135.5.2.3 to i8 *)
split tmp_v_shr_i135_5_2_3 v_conv5_i136_5_2_3 v_shr_i135_5_2_3 8;
vpc v_conv5_i136_5_2_3@uint8 v_conv5_i136_5_2_3@uint32;
(*   %conv6.i137.5.2.3 = zext i8 %conv7.i139.4.2.3 to i32 *)
cast v_conv6_i137_5_2_3@uint32 v_conv7_i139_4_2_3@uint8;
(*   %shl.i138.5.2.3 = shl i32 %conv6.i137.5.2.3, 1 *)
shls discard_166 v_shl_i138_5_2_3 v_conv6_i137_5_2_3 1;
(*   %conv7.i139.5.2.3 = trunc i32 %shl.i138.5.2.3 to i8 *)
split tmp_v_shl_i138_5_2_3 v_conv7_i139_5_2_3 v_shl_i138_5_2_3 8;
vpc v_conv7_i139_5_2_3@uint8 v_conv7_i139_5_2_3@uint32;
(*   %conv.i127.6.2.3 = zext i8 %conv5.i136.5.2.3 to i32 *)
cast v_conv_i127_6_2_3@uint32 v_conv5_i136_5_2_3@uint8;
(*   %and.i128.6.2.3 = and i32 %conv.i127.6.2.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_6_2_3 v_conv_i127_6_2_3 (0x1)@uint32;
(*   %conv1.i129.6.2.3 = zext i8 %conv7.i139.5.2.3 to i32 *)
cast v_conv1_i129_6_2_3@uint32 v_conv7_i139_5_2_3@uint8;
(*   %mul.i130.6.2.3 = mul nsw i32 %and.i128.6.2.3, %conv1.i129.6.2.3 *)
mul v_mul_i130_6_2_3 v_and_i128_6_2_3 v_conv1_i129_6_2_3;
(*   %conv2.i131.6.2.3 = zext i8 %conv3.i133.5.2.3 to i32 *)
cast v_conv2_i131_6_2_3@uint32 v_conv3_i133_5_2_3@uint8;
(*   %xor.i132.6.2.3 = xor i32 %conv2.i131.6.2.3, %mul.i130.6.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_6_2_3 v_conv2_i131_6_2_3 v_mul_i130_6_2_3;
(*   %conv3.i133.6.2.3 = trunc i32 %xor.i132.6.2.3 to i8 *)
split tmp_v_xor_i132_6_2_3 v_conv3_i133_6_2_3 v_xor_i132_6_2_3 8;
vpc v_conv3_i133_6_2_3@uint8 v_conv3_i133_6_2_3@uint32;
(*   %conv4.i134.6.2.3 = zext i8 %conv5.i136.5.2.3 to i32 *)
cast v_conv4_i134_6_2_3@uint32 v_conv5_i136_5_2_3@uint8;
(*   %shr.i135.6.2.3 = ashr i32 %conv4.i134.6.2.3, 1 *)
(* You may need to modify here *)
split v_shr_i135_6_2_3 tmp_to_be_used v_conv4_i134_6_2_3 1;
(*   %conv5.i136.6.2.3 = trunc i32 %shr.i135.6.2.3 to i8 *)
split tmp_v_shr_i135_6_2_3 v_conv5_i136_6_2_3 v_shr_i135_6_2_3 8;
vpc v_conv5_i136_6_2_3@uint8 v_conv5_i136_6_2_3@uint32;
(*   %conv6.i137.6.2.3 = zext i8 %conv7.i139.5.2.3 to i32 *)
cast v_conv6_i137_6_2_3@uint32 v_conv7_i139_5_2_3@uint8;
(*   %shl.i138.6.2.3 = shl i32 %conv6.i137.6.2.3, 1 *)
shls discard_167 v_shl_i138_6_2_3 v_conv6_i137_6_2_3 1;
(*   %conv7.i139.6.2.3 = trunc i32 %shl.i138.6.2.3 to i8 *)
split tmp_v_shl_i138_6_2_3 v_conv7_i139_6_2_3 v_shl_i138_6_2_3 8;
vpc v_conv7_i139_6_2_3@uint8 v_conv7_i139_6_2_3@uint32;
(*   %conv.i127.7.2.3 = zext i8 %conv5.i136.6.2.3 to i32 *)
cast v_conv_i127_7_2_3@uint32 v_conv5_i136_6_2_3@uint8;
(*   %and.i128.7.2.3 = and i32 %conv.i127.7.2.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_7_2_3 v_conv_i127_7_2_3 (0x1)@uint32;
(*   %conv1.i129.7.2.3 = zext i8 %conv7.i139.6.2.3 to i32 *)
cast v_conv1_i129_7_2_3@uint32 v_conv7_i139_6_2_3@uint8;
(*   %mul.i130.7.2.3 = mul nsw i32 %and.i128.7.2.3, %conv1.i129.7.2.3 *)
mul v_mul_i130_7_2_3 v_and_i128_7_2_3 v_conv1_i129_7_2_3;
(*   %conv2.i131.7.2.3 = zext i8 %conv3.i133.6.2.3 to i32 *)
cast v_conv2_i131_7_2_3@uint32 v_conv3_i133_6_2_3@uint8;
(*   %xor.i132.7.2.3 = xor i32 %conv2.i131.7.2.3, %mul.i130.7.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_7_2_3 v_conv2_i131_7_2_3 v_mul_i130_7_2_3;
(*   %conv3.i133.7.2.3 = trunc i32 %xor.i132.7.2.3 to i8 *)
split tmp_v_xor_i132_7_2_3 v_conv3_i133_7_2_3 v_xor_i132_7_2_3 8;
vpc v_conv3_i133_7_2_3@uint8 v_conv3_i133_7_2_3@uint32;
(*   %arrayidx56.2.3 = getelementptr inbounds [16 x i8], [16 x i8]* %p1, i64 0, i64 14 *)
(*   store i8 %conv3.i133.7.2.3, i8* %arrayidx56.2.3, align 1 *)
mov p1_14 v_conv3_i133_7_2_3;
(*   %arrayidx60.2.3 = getelementptr inbounds [16 x i8], [16 x i8]* %p0, i64 0, i64 14 *)
(*   %100 = load i8, i8* %arrayidx60.2.3, align 1 *)
mov v100 p0_14;
(*   %conv61.2.3 = zext i8 %100 to i32 *)
cast v_conv61_2_3@uint32 v100@uint8;
(*   %arrayidx65.2.3 = getelementptr inbounds [16 x i8], [16 x i8]* %p1, i64 0, i64 14 *)
(*   %101 = load i8, i8* %arrayidx65.2.3, align 1 *)
mov v101 p1_14;
(*   %conv66.2.3 = zext i8 %101 to i32 *)
cast v_conv66_2_3@uint32 v101@uint8;
(*   %xor67.2.3 = xor i32 %conv61.2.3, %conv66.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor67_2_3 v_conv61_2_3 v_conv66_2_3;
(*   %conv68.2.3 = trunc i32 %xor67.2.3 to i8 *)
split tmp_v_xor67_2_3 v_conv68_2_3 v_xor67_2_3 8;
vpc v_conv68_2_3@uint8 v_conv68_2_3@uint32;
(*   %arrayidx72.2.3 = getelementptr inbounds [16 x i8], [16 x i8]* %z, i64 0, i64 14 *)
(*   store i8 %conv68.2.3, i8* %arrayidx72.2.3, align 1 *)
mov z_14 v_conv68_2_3;
(*   %102 = load i8, i8* %a, align 1 *)
mov v102 a_0;
(*   %103 = load i8, i8* %b, align 1 *)
mov v103 b_0;
(*   %conv.i188 = zext i8 %103 to i32 *)
cast v_conv_i188@uint32 v103@uint8;
(*   %and.i189 = and i32 %conv.i188, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189 v_conv_i188 (0x1)@uint32;
(*   %conv1.i190 = zext i8 %102 to i32 *)
cast v_conv1_i190@uint32 v102@uint8;
(*   %mul.i191 = mul nsw i32 %and.i189, %conv1.i190 *)
mul v_mul_i191 v_and_i189 v_conv1_i190;
(*   %conv3.i194 = trunc i32 %mul.i191 to i8 *)
split tmp_v_mul_i191 v_conv3_i194 v_mul_i191 8;
vpc v_conv3_i194@uint8 v_conv3_i194@uint32;
(*   %conv4.i195 = zext i8 %103 to i32 *)
cast v_conv4_i195@uint32 v103@uint8;
(*   %shr.i196 = ashr i32 %conv4.i195, 1 *)
(* You may need to modify here *)
split v_shr_i196 tmp_to_be_used v_conv4_i195 1;
(*   %conv5.i197 = trunc i32 %shr.i196 to i8 *)
split tmp_v_shr_i196 v_conv5_i197 v_shr_i196 8;
vpc v_conv5_i197@uint8 v_conv5_i197@uint32;
(*   %conv6.i198 = zext i8 %102 to i32 *)
cast v_conv6_i198@uint32 v102@uint8;
(*   %shl.i199 = shl i32 %conv6.i198, 1 *)
shls discard_168 v_shl_i199 v_conv6_i198 1;
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
shls discard_169 v_shl_i199_1 v_conv6_i198_1 1;
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
shls discard_170 v_shl_i199_2 v_conv6_i198_2 1;
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
shls discard_171 v_shl_i199_3 v_conv6_i198_3 1;
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
shls discard_172 v_shl_i199_4 v_conv6_i198_4 1;
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
shls discard_173 v_shl_i199_5 v_conv6_i198_5 1;
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
shls discard_174 v_shl_i199_6 v_conv6_i198_6 1;
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
(*   %scevgep46.1 = getelementptr [16 x i8], [16 x i8]* %z, i64 0, i64 1 *)
(*   %104 = load i8, i8* %scevgep46.1, align 1 *)
mov v104 z_1;
(*   %conv103.1 = zext i8 %104 to i32 *)
cast v_conv103_1@uint32 v104@uint8;
(*   %105 = load i8, i8* %c, align 1 *)
mov v105 c_0;
(*   %conv106.1 = zext i8 %105 to i32 *)
cast v_conv106_1@uint32 v105@uint8;
(*   %xor107.1 = xor i32 %conv106.1, %conv103.1 *)
(* You may need to modify here *)
xor uint32 v_xor107_1 v_conv106_1 v_conv103_1;
(*   %conv108.1 = trunc i32 %xor107.1 to i8 *)
split tmp_v_xor107_1 v_conv108_1 v_xor107_1 8;
vpc v_conv108_1@uint8 v_conv108_1@uint32;
(*   store i8 %conv108.1, i8* %c, align 1 *)
mov c_0 v_conv108_1;
(*   %scevgep46.2 = getelementptr [16 x i8], [16 x i8]* %z, i64 0, i64 2 *)
(*   %106 = load i8, i8* %scevgep46.2, align 1 *)
mov v106 z_2;
(*   %conv103.2 = zext i8 %106 to i32 *)
cast v_conv103_2@uint32 v106@uint8;
(*   %107 = load i8, i8* %c, align 1 *)
mov v107 c_0;
(*   %conv106.2 = zext i8 %107 to i32 *)
cast v_conv106_2@uint32 v107@uint8;
(*   %xor107.2 = xor i32 %conv106.2, %conv103.2 *)
(* You may need to modify here *)
xor uint32 v_xor107_2 v_conv106_2 v_conv103_2;
(*   %conv108.2 = trunc i32 %xor107.2 to i8 *)
split tmp_v_xor107_2 v_conv108_2 v_xor107_2 8;
vpc v_conv108_2@uint8 v_conv108_2@uint32;
(*   store i8 %conv108.2, i8* %c, align 1 *)
mov c_0 v_conv108_2;
(*   %scevgep46.3 = getelementptr [16 x i8], [16 x i8]* %z, i64 0, i64 3 *)
(*   %108 = load i8, i8* %scevgep46.3, align 1 *)
mov v108 z_3;
(*   %conv103.3 = zext i8 %108 to i32 *)
cast v_conv103_3@uint32 v108@uint8;
(*   %109 = load i8, i8* %c, align 1 *)
mov v109 c_0;
(*   %conv106.3 = zext i8 %109 to i32 *)
cast v_conv106_3@uint32 v109@uint8;
(*   %xor107.3 = xor i32 %conv106.3, %conv103.3 *)
(* You may need to modify here *)
xor uint32 v_xor107_3 v_conv106_3 v_conv103_3;
(*   %conv108.3 = trunc i32 %xor107.3 to i8 *)
split tmp_v_xor107_3 v_conv108_3 v_xor107_3 8;
vpc v_conv108_3@uint8 v_conv108_3@uint32;
(*   store i8 %conv108.3, i8* %c, align 1 *)
mov c_0 v_conv108_3;
(*   %scevgep45 = getelementptr [16 x i8], [16 x i8]* %z, i64 0, i64 4 *)
(*   %110 = bitcast i8* %scevgep45 to [16 x i8]* *)
(*   %arrayidx85.1 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %111 = load i8, i8* %arrayidx85.1, align 1 *)
mov v111 a_1;
(*   %arrayidx87.1 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %112 = load i8, i8* %arrayidx87.1, align 1 *)
mov v112 b_1;
(*   %conv.i188.160 = zext i8 %112 to i32 *)
cast v_conv_i188_160@uint32 v112@uint8;
(*   %and.i189.161 = and i32 %conv.i188.160, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_161 v_conv_i188_160 (0x1)@uint32;
(*   %conv1.i190.162 = zext i8 %111 to i32 *)
cast v_conv1_i190_162@uint32 v111@uint8;
(*   %mul.i191.163 = mul nsw i32 %and.i189.161, %conv1.i190.162 *)
mul v_mul_i191_163 v_and_i189_161 v_conv1_i190_162;
(*   %conv3.i194.164 = trunc i32 %mul.i191.163 to i8 *)
split tmp_v_mul_i191_163 v_conv3_i194_164 v_mul_i191_163 8;
vpc v_conv3_i194_164@uint8 v_conv3_i194_164@uint32;
(*   %conv4.i195.165 = zext i8 %112 to i32 *)
cast v_conv4_i195_165@uint32 v112@uint8;
(*   %shr.i196.166 = ashr i32 %conv4.i195.165, 1 *)
(* You may need to modify here *)
split v_shr_i196_166 tmp_to_be_used v_conv4_i195_165 1;
(*   %conv5.i197.167 = trunc i32 %shr.i196.166 to i8 *)
split tmp_v_shr_i196_166 v_conv5_i197_167 v_shr_i196_166 8;
vpc v_conv5_i197_167@uint8 v_conv5_i197_167@uint32;
(*   %conv6.i198.168 = zext i8 %111 to i32 *)
cast v_conv6_i198_168@uint32 v111@uint8;
(*   %shl.i199.169 = shl i32 %conv6.i198.168, 1 *)
shls discard_175 v_shl_i199_169 v_conv6_i198_168 1;
(*   %conv7.i200.170 = trunc i32 %shl.i199.169 to i8 *)
split tmp_v_shl_i199_169 v_conv7_i200_170 v_shl_i199_169 8;
vpc v_conv7_i200_170@uint8 v_conv7_i200_170@uint32;
(*   %conv.i188.1.1 = zext i8 %conv5.i197.167 to i32 *)
cast v_conv_i188_1_1@uint32 v_conv5_i197_167@uint8;
(*   %and.i189.1.1 = and i32 %conv.i188.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_1_1 v_conv_i188_1_1 (0x1)@uint32;
(*   %conv1.i190.1.1 = zext i8 %conv7.i200.170 to i32 *)
cast v_conv1_i190_1_1@uint32 v_conv7_i200_170@uint8;
(*   %mul.i191.1.1 = mul nsw i32 %and.i189.1.1, %conv1.i190.1.1 *)
mul v_mul_i191_1_1 v_and_i189_1_1 v_conv1_i190_1_1;
(*   %conv2.i192.1.1 = zext i8 %conv3.i194.164 to i32 *)
cast v_conv2_i192_1_1@uint32 v_conv3_i194_164@uint8;
(*   %xor.i193.1.1 = xor i32 %conv2.i192.1.1, %mul.i191.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i193_1_1 v_conv2_i192_1_1 v_mul_i191_1_1;
(*   %conv3.i194.1.1 = trunc i32 %xor.i193.1.1 to i8 *)
split tmp_v_xor_i193_1_1 v_conv3_i194_1_1 v_xor_i193_1_1 8;
vpc v_conv3_i194_1_1@uint8 v_conv3_i194_1_1@uint32;
(*   %conv4.i195.1.1 = zext i8 %conv5.i197.167 to i32 *)
cast v_conv4_i195_1_1@uint32 v_conv5_i197_167@uint8;
(*   %shr.i196.1.1 = ashr i32 %conv4.i195.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i196_1_1 tmp_to_be_used v_conv4_i195_1_1 1;
(*   %conv5.i197.1.1 = trunc i32 %shr.i196.1.1 to i8 *)
split tmp_v_shr_i196_1_1 v_conv5_i197_1_1 v_shr_i196_1_1 8;
vpc v_conv5_i197_1_1@uint8 v_conv5_i197_1_1@uint32;
(*   %conv6.i198.1.1 = zext i8 %conv7.i200.170 to i32 *)
cast v_conv6_i198_1_1@uint32 v_conv7_i200_170@uint8;
(*   %shl.i199.1.1 = shl i32 %conv6.i198.1.1, 1 *)
shls discard_176 v_shl_i199_1_1 v_conv6_i198_1_1 1;
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
shls discard_177 v_shl_i199_2_1 v_conv6_i198_2_1 1;
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
shls discard_178 v_shl_i199_3_1 v_conv6_i198_3_1 1;
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
shls discard_179 v_shl_i199_4_1 v_conv6_i198_4_1 1;
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
shls discard_180 v_shl_i199_5_1 v_conv6_i198_5_1 1;
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
shls discard_181 v_shl_i199_6_1 v_conv6_i198_6_1 1;
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
(*   %scevgep46.173 = getelementptr [16 x i8], [16 x i8]* %110, i64 0, i64 0 *)
(*   %113 = load i8, i8* %scevgep46.173, align 1 *)
mov v113 z_4;
(*   %conv103.174 = zext i8 %113 to i32 *)
cast v_conv103_174@uint32 v113@uint8;
(*   %114 = load i8, i8* %arrayidx105.1, align 1 *)
mov v114 c_1;
(*   %conv106.175 = zext i8 %114 to i32 *)
cast v_conv106_175@uint32 v114@uint8;
(*   %xor107.176 = xor i32 %conv106.175, %conv103.174 *)
(* You may need to modify here *)
xor uint32 v_xor107_176 v_conv106_175 v_conv103_174;
(*   %conv108.177 = trunc i32 %xor107.176 to i8 *)
split tmp_v_xor107_176 v_conv108_177 v_xor107_176 8;
vpc v_conv108_177@uint8 v_conv108_177@uint32;
(*   store i8 %conv108.177, i8* %arrayidx105.1, align 1 *)
mov c_1 v_conv108_177;
(*   %scevgep46.2.1 = getelementptr [16 x i8], [16 x i8]* %110, i64 0, i64 2 *)
(*   %115 = load i8, i8* %scevgep46.2.1, align 1 *)
mov v115 z_6;
(*   %conv103.2.1 = zext i8 %115 to i32 *)
cast v_conv103_2_1@uint32 v115@uint8;
(*   %116 = load i8, i8* %arrayidx105.1, align 1 *)
mov v116 c_1;
(*   %conv106.2.1 = zext i8 %116 to i32 *)
cast v_conv106_2_1@uint32 v116@uint8;
(*   %xor107.2.1 = xor i32 %conv106.2.1, %conv103.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor107_2_1 v_conv106_2_1 v_conv103_2_1;
(*   %conv108.2.1 = trunc i32 %xor107.2.1 to i8 *)
split tmp_v_xor107_2_1 v_conv108_2_1 v_xor107_2_1 8;
vpc v_conv108_2_1@uint8 v_conv108_2_1@uint32;
(*   store i8 %conv108.2.1, i8* %arrayidx105.1, align 1 *)
mov c_1 v_conv108_2_1;
(*   %scevgep46.3.1 = getelementptr [16 x i8], [16 x i8]* %110, i64 0, i64 3 *)
(*   %117 = load i8, i8* %scevgep46.3.1, align 1 *)
mov v117 z_7;
(*   %conv103.3.1 = zext i8 %117 to i32 *)
cast v_conv103_3_1@uint32 v117@uint8;
(*   %118 = load i8, i8* %arrayidx105.1, align 1 *)
mov v118 c_1;
(*   %conv106.3.1 = zext i8 %118 to i32 *)
cast v_conv106_3_1@uint32 v118@uint8;
(*   %xor107.3.1 = xor i32 %conv106.3.1, %conv103.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor107_3_1 v_conv106_3_1 v_conv103_3_1;
(*   %conv108.3.1 = trunc i32 %xor107.3.1 to i8 *)
split tmp_v_xor107_3_1 v_conv108_3_1 v_xor107_3_1 8;
vpc v_conv108_3_1@uint8 v_conv108_3_1@uint32;
(*   store i8 %conv108.3.1, i8* %arrayidx105.1, align 1 *)
mov c_1 v_conv108_3_1;
(*   %scevgep45.1 = getelementptr [16 x i8], [16 x i8]* %110, i64 0, i64 4 *)
(*   %119 = bitcast i8* %scevgep45.1 to [16 x i8]* *)
(*   %arrayidx85.2 = getelementptr inbounds i8, i8* %a, i64 2 *)
(*   %120 = load i8, i8* %arrayidx85.2, align 1 *)
mov v120 a_2;
(*   %arrayidx87.2 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %121 = load i8, i8* %arrayidx87.2, align 1 *)
mov v121 b_2;
(*   %conv.i188.281 = zext i8 %121 to i32 *)
cast v_conv_i188_281@uint32 v121@uint8;
(*   %and.i189.282 = and i32 %conv.i188.281, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_282 v_conv_i188_281 (0x1)@uint32;
(*   %conv1.i190.283 = zext i8 %120 to i32 *)
cast v_conv1_i190_283@uint32 v120@uint8;
(*   %mul.i191.284 = mul nsw i32 %and.i189.282, %conv1.i190.283 *)
mul v_mul_i191_284 v_and_i189_282 v_conv1_i190_283;
(*   %conv3.i194.285 = trunc i32 %mul.i191.284 to i8 *)
split tmp_v_mul_i191_284 v_conv3_i194_285 v_mul_i191_284 8;
vpc v_conv3_i194_285@uint8 v_conv3_i194_285@uint32;
(*   %conv4.i195.286 = zext i8 %121 to i32 *)
cast v_conv4_i195_286@uint32 v121@uint8;
(*   %shr.i196.287 = ashr i32 %conv4.i195.286, 1 *)
(* You may need to modify here *)
split v_shr_i196_287 tmp_to_be_used v_conv4_i195_286 1;
(*   %conv5.i197.288 = trunc i32 %shr.i196.287 to i8 *)
split tmp_v_shr_i196_287 v_conv5_i197_288 v_shr_i196_287 8;
vpc v_conv5_i197_288@uint8 v_conv5_i197_288@uint32;
(*   %conv6.i198.289 = zext i8 %120 to i32 *)
cast v_conv6_i198_289@uint32 v120@uint8;
(*   %shl.i199.290 = shl i32 %conv6.i198.289, 1 *)
shls discard_182 v_shl_i199_290 v_conv6_i198_289 1;
(*   %conv7.i200.291 = trunc i32 %shl.i199.290 to i8 *)
split tmp_v_shl_i199_290 v_conv7_i200_291 v_shl_i199_290 8;
vpc v_conv7_i200_291@uint8 v_conv7_i200_291@uint32;
(*   %conv.i188.1.2 = zext i8 %conv5.i197.288 to i32 *)
cast v_conv_i188_1_2@uint32 v_conv5_i197_288@uint8;
(*   %and.i189.1.2 = and i32 %conv.i188.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_1_2 v_conv_i188_1_2 (0x1)@uint32;
(*   %conv1.i190.1.2 = zext i8 %conv7.i200.291 to i32 *)
cast v_conv1_i190_1_2@uint32 v_conv7_i200_291@uint8;
(*   %mul.i191.1.2 = mul nsw i32 %and.i189.1.2, %conv1.i190.1.2 *)
mul v_mul_i191_1_2 v_and_i189_1_2 v_conv1_i190_1_2;
(*   %conv2.i192.1.2 = zext i8 %conv3.i194.285 to i32 *)
cast v_conv2_i192_1_2@uint32 v_conv3_i194_285@uint8;
(*   %xor.i193.1.2 = xor i32 %conv2.i192.1.2, %mul.i191.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i193_1_2 v_conv2_i192_1_2 v_mul_i191_1_2;
(*   %conv3.i194.1.2 = trunc i32 %xor.i193.1.2 to i8 *)
split tmp_v_xor_i193_1_2 v_conv3_i194_1_2 v_xor_i193_1_2 8;
vpc v_conv3_i194_1_2@uint8 v_conv3_i194_1_2@uint32;
(*   %conv4.i195.1.2 = zext i8 %conv5.i197.288 to i32 *)
cast v_conv4_i195_1_2@uint32 v_conv5_i197_288@uint8;
(*   %shr.i196.1.2 = ashr i32 %conv4.i195.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i196_1_2 tmp_to_be_used v_conv4_i195_1_2 1;
(*   %conv5.i197.1.2 = trunc i32 %shr.i196.1.2 to i8 *)
split tmp_v_shr_i196_1_2 v_conv5_i197_1_2 v_shr_i196_1_2 8;
vpc v_conv5_i197_1_2@uint8 v_conv5_i197_1_2@uint32;
(*   %conv6.i198.1.2 = zext i8 %conv7.i200.291 to i32 *)
cast v_conv6_i198_1_2@uint32 v_conv7_i200_291@uint8;
(*   %shl.i199.1.2 = shl i32 %conv6.i198.1.2, 1 *)
shls discard_183 v_shl_i199_1_2 v_conv6_i198_1_2 1;
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
shls discard_184 v_shl_i199_2_2 v_conv6_i198_2_2 1;
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
shls discard_185 v_shl_i199_3_2 v_conv6_i198_3_2 1;
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
shls discard_186 v_shl_i199_4_2 v_conv6_i198_4_2 1;
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
shls discard_187 v_shl_i199_5_2 v_conv6_i198_5_2 1;
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
shls discard_188 v_shl_i199_6_2 v_conv6_i198_6_2 1;
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
(*   %scevgep46.294 = getelementptr [16 x i8], [16 x i8]* %119, i64 0, i64 0 *)
(*   %122 = load i8, i8* %scevgep46.294, align 1 *)
mov v122 z_8;
(*   %conv103.295 = zext i8 %122 to i32 *)
cast v_conv103_295@uint32 v122@uint8;
(*   %123 = load i8, i8* %arrayidx105.2, align 1 *)
mov v123 c_2;
(*   %conv106.296 = zext i8 %123 to i32 *)
cast v_conv106_296@uint32 v123@uint8;
(*   %xor107.297 = xor i32 %conv106.296, %conv103.295 *)
(* You may need to modify here *)
xor uint32 v_xor107_297 v_conv106_296 v_conv103_295;
(*   %conv108.298 = trunc i32 %xor107.297 to i8 *)
split tmp_v_xor107_297 v_conv108_298 v_xor107_297 8;
vpc v_conv108_298@uint8 v_conv108_298@uint32;
(*   store i8 %conv108.298, i8* %arrayidx105.2, align 1 *)
mov c_2 v_conv108_298;
(*   %scevgep46.1.2 = getelementptr [16 x i8], [16 x i8]* %119, i64 0, i64 1 *)
(*   %124 = load i8, i8* %scevgep46.1.2, align 1 *)
mov v124 z_9;
(*   %conv103.1.2 = zext i8 %124 to i32 *)
cast v_conv103_1_2@uint32 v124@uint8;
(*   %125 = load i8, i8* %arrayidx105.2, align 1 *)
mov v125 c_2;
(*   %conv106.1.2 = zext i8 %125 to i32 *)
cast v_conv106_1_2@uint32 v125@uint8;
(*   %xor107.1.2 = xor i32 %conv106.1.2, %conv103.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor107_1_2 v_conv106_1_2 v_conv103_1_2;
(*   %conv108.1.2 = trunc i32 %xor107.1.2 to i8 *)
split tmp_v_xor107_1_2 v_conv108_1_2 v_xor107_1_2 8;
vpc v_conv108_1_2@uint8 v_conv108_1_2@uint32;
(*   store i8 %conv108.1.2, i8* %arrayidx105.2, align 1 *)
mov c_2 v_conv108_1_2;
(*   %scevgep46.3.2 = getelementptr [16 x i8], [16 x i8]* %119, i64 0, i64 3 *)
(*   %126 = load i8, i8* %scevgep46.3.2, align 1 *)
mov v126 z_11;
(*   %conv103.3.2 = zext i8 %126 to i32 *)
cast v_conv103_3_2@uint32 v126@uint8;
(*   %127 = load i8, i8* %arrayidx105.2, align 1 *)
mov v127 c_2;
(*   %conv106.3.2 = zext i8 %127 to i32 *)
cast v_conv106_3_2@uint32 v127@uint8;
(*   %xor107.3.2 = xor i32 %conv106.3.2, %conv103.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor107_3_2 v_conv106_3_2 v_conv103_3_2;
(*   %conv108.3.2 = trunc i32 %xor107.3.2 to i8 *)
split tmp_v_xor107_3_2 v_conv108_3_2 v_xor107_3_2 8;
vpc v_conv108_3_2@uint8 v_conv108_3_2@uint32;
(*   store i8 %conv108.3.2, i8* %arrayidx105.2, align 1 *)
mov c_2 v_conv108_3_2;
(*   %scevgep45.2 = getelementptr [16 x i8], [16 x i8]* %119, i64 0, i64 4 *)
(*   %128 = bitcast i8* %scevgep45.2 to [16 x i8]* *)
(*   %arrayidx85.3 = getelementptr inbounds i8, i8* %a, i64 3 *)
(*   %129 = load i8, i8* %arrayidx85.3, align 1 *)
mov v129 a_3;
(*   %arrayidx87.3 = getelementptr inbounds i8, i8* %b, i64 3 *)
(*   %130 = load i8, i8* %arrayidx87.3, align 1 *)
mov v130 b_3;
(*   %conv.i188.3102 = zext i8 %130 to i32 *)
cast v_conv_i188_3102@uint32 v130@uint8;
(*   %and.i189.3103 = and i32 %conv.i188.3102, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_3103 v_conv_i188_3102 (0x1)@uint32;
(*   %conv1.i190.3104 = zext i8 %129 to i32 *)
cast v_conv1_i190_3104@uint32 v129@uint8;
(*   %mul.i191.3105 = mul nsw i32 %and.i189.3103, %conv1.i190.3104 *)
mul v_mul_i191_3105 v_and_i189_3103 v_conv1_i190_3104;
(*   %conv3.i194.3106 = trunc i32 %mul.i191.3105 to i8 *)
split tmp_v_mul_i191_3105 v_conv3_i194_3106 v_mul_i191_3105 8;
vpc v_conv3_i194_3106@uint8 v_conv3_i194_3106@uint32;
(*   %conv4.i195.3107 = zext i8 %130 to i32 *)
cast v_conv4_i195_3107@uint32 v130@uint8;
(*   %shr.i196.3108 = ashr i32 %conv4.i195.3107, 1 *)
(* You may need to modify here *)
split v_shr_i196_3108 tmp_to_be_used v_conv4_i195_3107 1;
(*   %conv5.i197.3109 = trunc i32 %shr.i196.3108 to i8 *)
split tmp_v_shr_i196_3108 v_conv5_i197_3109 v_shr_i196_3108 8;
vpc v_conv5_i197_3109@uint8 v_conv5_i197_3109@uint32;
(*   %conv6.i198.3110 = zext i8 %129 to i32 *)
cast v_conv6_i198_3110@uint32 v129@uint8;
(*   %shl.i199.3111 = shl i32 %conv6.i198.3110, 1 *)
shls discard_189 v_shl_i199_3111 v_conv6_i198_3110 1;
(*   %conv7.i200.3112 = trunc i32 %shl.i199.3111 to i8 *)
split tmp_v_shl_i199_3111 v_conv7_i200_3112 v_shl_i199_3111 8;
vpc v_conv7_i200_3112@uint8 v_conv7_i200_3112@uint32;
(*   %conv.i188.1.3 = zext i8 %conv5.i197.3109 to i32 *)
cast v_conv_i188_1_3@uint32 v_conv5_i197_3109@uint8;
(*   %and.i189.1.3 = and i32 %conv.i188.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_1_3 v_conv_i188_1_3 (0x1)@uint32;
(*   %conv1.i190.1.3 = zext i8 %conv7.i200.3112 to i32 *)
cast v_conv1_i190_1_3@uint32 v_conv7_i200_3112@uint8;
(*   %mul.i191.1.3 = mul nsw i32 %and.i189.1.3, %conv1.i190.1.3 *)
mul v_mul_i191_1_3 v_and_i189_1_3 v_conv1_i190_1_3;
(*   %conv2.i192.1.3 = zext i8 %conv3.i194.3106 to i32 *)
cast v_conv2_i192_1_3@uint32 v_conv3_i194_3106@uint8;
(*   %xor.i193.1.3 = xor i32 %conv2.i192.1.3, %mul.i191.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i193_1_3 v_conv2_i192_1_3 v_mul_i191_1_3;
(*   %conv3.i194.1.3 = trunc i32 %xor.i193.1.3 to i8 *)
split tmp_v_xor_i193_1_3 v_conv3_i194_1_3 v_xor_i193_1_3 8;
vpc v_conv3_i194_1_3@uint8 v_conv3_i194_1_3@uint32;
(*   %conv4.i195.1.3 = zext i8 %conv5.i197.3109 to i32 *)
cast v_conv4_i195_1_3@uint32 v_conv5_i197_3109@uint8;
(*   %shr.i196.1.3 = ashr i32 %conv4.i195.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i196_1_3 tmp_to_be_used v_conv4_i195_1_3 1;
(*   %conv5.i197.1.3 = trunc i32 %shr.i196.1.3 to i8 *)
split tmp_v_shr_i196_1_3 v_conv5_i197_1_3 v_shr_i196_1_3 8;
vpc v_conv5_i197_1_3@uint8 v_conv5_i197_1_3@uint32;
(*   %conv6.i198.1.3 = zext i8 %conv7.i200.3112 to i32 *)
cast v_conv6_i198_1_3@uint32 v_conv7_i200_3112@uint8;
(*   %shl.i199.1.3 = shl i32 %conv6.i198.1.3, 1 *)
shls discard_190 v_shl_i199_1_3 v_conv6_i198_1_3 1;
(*   %conv7.i200.1.3 = trunc i32 %shl.i199.1.3 to i8 *)
split tmp_v_shl_i199_1_3 v_conv7_i200_1_3 v_shl_i199_1_3 8;
vpc v_conv7_i200_1_3@uint8 v_conv7_i200_1_3@uint32;
(*   %conv.i188.2.3 = zext i8 %conv5.i197.1.3 to i32 *)
cast v_conv_i188_2_3@uint32 v_conv5_i197_1_3@uint8;
(*   %and.i189.2.3 = and i32 %conv.i188.2.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_2_3 v_conv_i188_2_3 (0x1)@uint32;
(*   %conv1.i190.2.3 = zext i8 %conv7.i200.1.3 to i32 *)
cast v_conv1_i190_2_3@uint32 v_conv7_i200_1_3@uint8;
(*   %mul.i191.2.3 = mul nsw i32 %and.i189.2.3, %conv1.i190.2.3 *)
mul v_mul_i191_2_3 v_and_i189_2_3 v_conv1_i190_2_3;
(*   %conv2.i192.2.3 = zext i8 %conv3.i194.1.3 to i32 *)
cast v_conv2_i192_2_3@uint32 v_conv3_i194_1_3@uint8;
(*   %xor.i193.2.3 = xor i32 %conv2.i192.2.3, %mul.i191.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i193_2_3 v_conv2_i192_2_3 v_mul_i191_2_3;
(*   %conv3.i194.2.3 = trunc i32 %xor.i193.2.3 to i8 *)
split tmp_v_xor_i193_2_3 v_conv3_i194_2_3 v_xor_i193_2_3 8;
vpc v_conv3_i194_2_3@uint8 v_conv3_i194_2_3@uint32;
(*   %conv4.i195.2.3 = zext i8 %conv5.i197.1.3 to i32 *)
cast v_conv4_i195_2_3@uint32 v_conv5_i197_1_3@uint8;
(*   %shr.i196.2.3 = ashr i32 %conv4.i195.2.3, 1 *)
(* You may need to modify here *)
split v_shr_i196_2_3 tmp_to_be_used v_conv4_i195_2_3 1;
(*   %conv5.i197.2.3 = trunc i32 %shr.i196.2.3 to i8 *)
split tmp_v_shr_i196_2_3 v_conv5_i197_2_3 v_shr_i196_2_3 8;
vpc v_conv5_i197_2_3@uint8 v_conv5_i197_2_3@uint32;
(*   %conv6.i198.2.3 = zext i8 %conv7.i200.1.3 to i32 *)
cast v_conv6_i198_2_3@uint32 v_conv7_i200_1_3@uint8;
(*   %shl.i199.2.3 = shl i32 %conv6.i198.2.3, 1 *)
shls discard_191 v_shl_i199_2_3 v_conv6_i198_2_3 1;
(*   %conv7.i200.2.3 = trunc i32 %shl.i199.2.3 to i8 *)
split tmp_v_shl_i199_2_3 v_conv7_i200_2_3 v_shl_i199_2_3 8;
vpc v_conv7_i200_2_3@uint8 v_conv7_i200_2_3@uint32;
(*   %conv.i188.3.3 = zext i8 %conv5.i197.2.3 to i32 *)
cast v_conv_i188_3_3@uint32 v_conv5_i197_2_3@uint8;
(*   %and.i189.3.3 = and i32 %conv.i188.3.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_3_3 v_conv_i188_3_3 (0x1)@uint32;
(*   %conv1.i190.3.3 = zext i8 %conv7.i200.2.3 to i32 *)
cast v_conv1_i190_3_3@uint32 v_conv7_i200_2_3@uint8;
(*   %mul.i191.3.3 = mul nsw i32 %and.i189.3.3, %conv1.i190.3.3 *)
mul v_mul_i191_3_3 v_and_i189_3_3 v_conv1_i190_3_3;
(*   %conv2.i192.3.3 = zext i8 %conv3.i194.2.3 to i32 *)
cast v_conv2_i192_3_3@uint32 v_conv3_i194_2_3@uint8;
(*   %xor.i193.3.3 = xor i32 %conv2.i192.3.3, %mul.i191.3.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i193_3_3 v_conv2_i192_3_3 v_mul_i191_3_3;
(*   %conv3.i194.3.3 = trunc i32 %xor.i193.3.3 to i8 *)
split tmp_v_xor_i193_3_3 v_conv3_i194_3_3 v_xor_i193_3_3 8;
vpc v_conv3_i194_3_3@uint8 v_conv3_i194_3_3@uint32;
(*   %conv4.i195.3.3 = zext i8 %conv5.i197.2.3 to i32 *)
cast v_conv4_i195_3_3@uint32 v_conv5_i197_2_3@uint8;
(*   %shr.i196.3.3 = ashr i32 %conv4.i195.3.3, 1 *)
(* You may need to modify here *)
split v_shr_i196_3_3 tmp_to_be_used v_conv4_i195_3_3 1;
(*   %conv5.i197.3.3 = trunc i32 %shr.i196.3.3 to i8 *)
split tmp_v_shr_i196_3_3 v_conv5_i197_3_3 v_shr_i196_3_3 8;
vpc v_conv5_i197_3_3@uint8 v_conv5_i197_3_3@uint32;
(*   %conv6.i198.3.3 = zext i8 %conv7.i200.2.3 to i32 *)
cast v_conv6_i198_3_3@uint32 v_conv7_i200_2_3@uint8;
(*   %shl.i199.3.3 = shl i32 %conv6.i198.3.3, 1 *)
shls discard_192 v_shl_i199_3_3 v_conv6_i198_3_3 1;
(*   %conv7.i200.3.3 = trunc i32 %shl.i199.3.3 to i8 *)
split tmp_v_shl_i199_3_3 v_conv7_i200_3_3 v_shl_i199_3_3 8;
vpc v_conv7_i200_3_3@uint8 v_conv7_i200_3_3@uint32;
(*   %conv.i188.4.3 = zext i8 %conv5.i197.3.3 to i32 *)
cast v_conv_i188_4_3@uint32 v_conv5_i197_3_3@uint8;
(*   %and.i189.4.3 = and i32 %conv.i188.4.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_4_3 v_conv_i188_4_3 (0x1)@uint32;
(*   %conv1.i190.4.3 = zext i8 %conv7.i200.3.3 to i32 *)
cast v_conv1_i190_4_3@uint32 v_conv7_i200_3_3@uint8;
(*   %mul.i191.4.3 = mul nsw i32 %and.i189.4.3, %conv1.i190.4.3 *)
mul v_mul_i191_4_3 v_and_i189_4_3 v_conv1_i190_4_3;
(*   %conv2.i192.4.3 = zext i8 %conv3.i194.3.3 to i32 *)
cast v_conv2_i192_4_3@uint32 v_conv3_i194_3_3@uint8;
(*   %xor.i193.4.3 = xor i32 %conv2.i192.4.3, %mul.i191.4.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i193_4_3 v_conv2_i192_4_3 v_mul_i191_4_3;
(*   %conv3.i194.4.3 = trunc i32 %xor.i193.4.3 to i8 *)
split tmp_v_xor_i193_4_3 v_conv3_i194_4_3 v_xor_i193_4_3 8;
vpc v_conv3_i194_4_3@uint8 v_conv3_i194_4_3@uint32;
(*   %conv4.i195.4.3 = zext i8 %conv5.i197.3.3 to i32 *)
cast v_conv4_i195_4_3@uint32 v_conv5_i197_3_3@uint8;
(*   %shr.i196.4.3 = ashr i32 %conv4.i195.4.3, 1 *)
(* You may need to modify here *)
split v_shr_i196_4_3 tmp_to_be_used v_conv4_i195_4_3 1;
(*   %conv5.i197.4.3 = trunc i32 %shr.i196.4.3 to i8 *)
split tmp_v_shr_i196_4_3 v_conv5_i197_4_3 v_shr_i196_4_3 8;
vpc v_conv5_i197_4_3@uint8 v_conv5_i197_4_3@uint32;
(*   %conv6.i198.4.3 = zext i8 %conv7.i200.3.3 to i32 *)
cast v_conv6_i198_4_3@uint32 v_conv7_i200_3_3@uint8;
(*   %shl.i199.4.3 = shl i32 %conv6.i198.4.3, 1 *)
shls discard_193 v_shl_i199_4_3 v_conv6_i198_4_3 1;
(*   %conv7.i200.4.3 = trunc i32 %shl.i199.4.3 to i8 *)
split tmp_v_shl_i199_4_3 v_conv7_i200_4_3 v_shl_i199_4_3 8;
vpc v_conv7_i200_4_3@uint8 v_conv7_i200_4_3@uint32;
(*   %conv.i188.5.3 = zext i8 %conv5.i197.4.3 to i32 *)
cast v_conv_i188_5_3@uint32 v_conv5_i197_4_3@uint8;
(*   %and.i189.5.3 = and i32 %conv.i188.5.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_5_3 v_conv_i188_5_3 (0x1)@uint32;
(*   %conv1.i190.5.3 = zext i8 %conv7.i200.4.3 to i32 *)
cast v_conv1_i190_5_3@uint32 v_conv7_i200_4_3@uint8;
(*   %mul.i191.5.3 = mul nsw i32 %and.i189.5.3, %conv1.i190.5.3 *)
mul v_mul_i191_5_3 v_and_i189_5_3 v_conv1_i190_5_3;
(*   %conv2.i192.5.3 = zext i8 %conv3.i194.4.3 to i32 *)
cast v_conv2_i192_5_3@uint32 v_conv3_i194_4_3@uint8;
(*   %xor.i193.5.3 = xor i32 %conv2.i192.5.3, %mul.i191.5.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i193_5_3 v_conv2_i192_5_3 v_mul_i191_5_3;
(*   %conv3.i194.5.3 = trunc i32 %xor.i193.5.3 to i8 *)
split tmp_v_xor_i193_5_3 v_conv3_i194_5_3 v_xor_i193_5_3 8;
vpc v_conv3_i194_5_3@uint8 v_conv3_i194_5_3@uint32;
(*   %conv4.i195.5.3 = zext i8 %conv5.i197.4.3 to i32 *)
cast v_conv4_i195_5_3@uint32 v_conv5_i197_4_3@uint8;
(*   %shr.i196.5.3 = ashr i32 %conv4.i195.5.3, 1 *)
(* You may need to modify here *)
split v_shr_i196_5_3 tmp_to_be_used v_conv4_i195_5_3 1;
(*   %conv5.i197.5.3 = trunc i32 %shr.i196.5.3 to i8 *)
split tmp_v_shr_i196_5_3 v_conv5_i197_5_3 v_shr_i196_5_3 8;
vpc v_conv5_i197_5_3@uint8 v_conv5_i197_5_3@uint32;
(*   %conv6.i198.5.3 = zext i8 %conv7.i200.4.3 to i32 *)
cast v_conv6_i198_5_3@uint32 v_conv7_i200_4_3@uint8;
(*   %shl.i199.5.3 = shl i32 %conv6.i198.5.3, 1 *)
shls discard_194 v_shl_i199_5_3 v_conv6_i198_5_3 1;
(*   %conv7.i200.5.3 = trunc i32 %shl.i199.5.3 to i8 *)
split tmp_v_shl_i199_5_3 v_conv7_i200_5_3 v_shl_i199_5_3 8;
vpc v_conv7_i200_5_3@uint8 v_conv7_i200_5_3@uint32;
(*   %conv.i188.6.3 = zext i8 %conv5.i197.5.3 to i32 *)
cast v_conv_i188_6_3@uint32 v_conv5_i197_5_3@uint8;
(*   %and.i189.6.3 = and i32 %conv.i188.6.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_6_3 v_conv_i188_6_3 (0x1)@uint32;
(*   %conv1.i190.6.3 = zext i8 %conv7.i200.5.3 to i32 *)
cast v_conv1_i190_6_3@uint32 v_conv7_i200_5_3@uint8;
(*   %mul.i191.6.3 = mul nsw i32 %and.i189.6.3, %conv1.i190.6.3 *)
mul v_mul_i191_6_3 v_and_i189_6_3 v_conv1_i190_6_3;
(*   %conv2.i192.6.3 = zext i8 %conv3.i194.5.3 to i32 *)
cast v_conv2_i192_6_3@uint32 v_conv3_i194_5_3@uint8;
(*   %xor.i193.6.3 = xor i32 %conv2.i192.6.3, %mul.i191.6.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i193_6_3 v_conv2_i192_6_3 v_mul_i191_6_3;
(*   %conv3.i194.6.3 = trunc i32 %xor.i193.6.3 to i8 *)
split tmp_v_xor_i193_6_3 v_conv3_i194_6_3 v_xor_i193_6_3 8;
vpc v_conv3_i194_6_3@uint8 v_conv3_i194_6_3@uint32;
(*   %conv4.i195.6.3 = zext i8 %conv5.i197.5.3 to i32 *)
cast v_conv4_i195_6_3@uint32 v_conv5_i197_5_3@uint8;
(*   %shr.i196.6.3 = ashr i32 %conv4.i195.6.3, 1 *)
(* You may need to modify here *)
split v_shr_i196_6_3 tmp_to_be_used v_conv4_i195_6_3 1;
(*   %conv5.i197.6.3 = trunc i32 %shr.i196.6.3 to i8 *)
split tmp_v_shr_i196_6_3 v_conv5_i197_6_3 v_shr_i196_6_3 8;
vpc v_conv5_i197_6_3@uint8 v_conv5_i197_6_3@uint32;
(*   %conv6.i198.6.3 = zext i8 %conv7.i200.5.3 to i32 *)
cast v_conv6_i198_6_3@uint32 v_conv7_i200_5_3@uint8;
(*   %shl.i199.6.3 = shl i32 %conv6.i198.6.3, 1 *)
shls discard_195 v_shl_i199_6_3 v_conv6_i198_6_3 1;
(*   %conv7.i200.6.3 = trunc i32 %shl.i199.6.3 to i8 *)
split tmp_v_shl_i199_6_3 v_conv7_i200_6_3 v_shl_i199_6_3 8;
vpc v_conv7_i200_6_3@uint8 v_conv7_i200_6_3@uint32;
(*   %conv.i188.7.3 = zext i8 %conv5.i197.6.3 to i32 *)
cast v_conv_i188_7_3@uint32 v_conv5_i197_6_3@uint8;
(*   %and.i189.7.3 = and i32 %conv.i188.7.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_7_3 v_conv_i188_7_3 (0x1)@uint32;
(*   %conv1.i190.7.3 = zext i8 %conv7.i200.6.3 to i32 *)
cast v_conv1_i190_7_3@uint32 v_conv7_i200_6_3@uint8;
(*   %mul.i191.7.3 = mul nsw i32 %and.i189.7.3, %conv1.i190.7.3 *)
mul v_mul_i191_7_3 v_and_i189_7_3 v_conv1_i190_7_3;
(*   %conv2.i192.7.3 = zext i8 %conv3.i194.6.3 to i32 *)
cast v_conv2_i192_7_3@uint32 v_conv3_i194_6_3@uint8;
(*   %xor.i193.7.3 = xor i32 %conv2.i192.7.3, %mul.i191.7.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i193_7_3 v_conv2_i192_7_3 v_mul_i191_7_3;
(*   %conv3.i194.7.3 = trunc i32 %xor.i193.7.3 to i8 *)
split tmp_v_xor_i193_7_3 v_conv3_i194_7_3 v_xor_i193_7_3 8;
vpc v_conv3_i194_7_3@uint8 v_conv3_i194_7_3@uint32;
(*   %arrayidx90.3 = getelementptr inbounds i8, i8* %c, i64 3 *)
(*   store i8 %conv3.i194.7.3, i8* %arrayidx90.3, align 1 *)
mov c_3 v_conv3_i194_7_3;
(*   %arrayidx105.3 = getelementptr inbounds i8, i8* %c, i64 3 *)
(*   %scevgep46.3115 = getelementptr [16 x i8], [16 x i8]* %128, i64 0, i64 0 *)
(*   %131 = load i8, i8* %scevgep46.3115, align 1 *)
mov v131 z_12;
(*   %conv103.3116 = zext i8 %131 to i32 *)
cast v_conv103_3116@uint32 v131@uint8;
(*   %132 = load i8, i8* %arrayidx105.3, align 1 *)
mov v132 c_3;
(*   %conv106.3117 = zext i8 %132 to i32 *)
cast v_conv106_3117@uint32 v132@uint8;
(*   %xor107.3118 = xor i32 %conv106.3117, %conv103.3116 *)
(* You may need to modify here *)
xor uint32 v_xor107_3118 v_conv106_3117 v_conv103_3116;
(*   %conv108.3119 = trunc i32 %xor107.3118 to i8 *)
split tmp_v_xor107_3118 v_conv108_3119 v_xor107_3118 8;
vpc v_conv108_3119@uint8 v_conv108_3119@uint32;
(*   store i8 %conv108.3119, i8* %arrayidx105.3, align 1 *)
mov c_3 v_conv108_3119;
(*   %scevgep46.1.3 = getelementptr [16 x i8], [16 x i8]* %128, i64 0, i64 1 *)
(*   %133 = load i8, i8* %scevgep46.1.3, align 1 *)
mov v133 z_13;
(*   %conv103.1.3 = zext i8 %133 to i32 *)
cast v_conv103_1_3@uint32 v133@uint8;
(*   %134 = load i8, i8* %arrayidx105.3, align 1 *)
mov v134 c_3;
(*   %conv106.1.3 = zext i8 %134 to i32 *)
cast v_conv106_1_3@uint32 v134@uint8;
(*   %xor107.1.3 = xor i32 %conv106.1.3, %conv103.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor107_1_3 v_conv106_1_3 v_conv103_1_3;
(*   %conv108.1.3 = trunc i32 %xor107.1.3 to i8 *)
split tmp_v_xor107_1_3 v_conv108_1_3 v_xor107_1_3 8;
vpc v_conv108_1_3@uint8 v_conv108_1_3@uint32;
(*   store i8 %conv108.1.3, i8* %arrayidx105.3, align 1 *)
mov c_3 v_conv108_1_3;
(*   %scevgep46.2.3 = getelementptr [16 x i8], [16 x i8]* %128, i64 0, i64 2 *)
(*   %135 = load i8, i8* %scevgep46.2.3, align 1 *)
mov v135 z_14;
(*   %conv103.2.3 = zext i8 %135 to i32 *)
cast v_conv103_2_3@uint32 v135@uint8;
(*   %136 = load i8, i8* %arrayidx105.3, align 1 *)
mov v136 c_3;
(*   %conv106.2.3 = zext i8 %136 to i32 *)
cast v_conv106_2_3@uint32 v136@uint8;
(*   %xor107.2.3 = xor i32 %conv106.2.3, %conv103.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor107_2_3 v_conv106_2_3 v_conv103_2_3;
(*   %conv108.2.3 = trunc i32 %xor107.2.3 to i8 *)
split tmp_v_xor107_2_3 v_conv108_2_3 v_xor107_2_3 8;
vpc v_conv108_2_3@uint8 v_conv108_2_3@uint32;
(*   store i8 %conv108.2.3, i8* %arrayidx105.3, align 1 *)
mov c_3 v_conv108_2_3;
(*   %137 = load i8, i8* %a, align 1 *)
mov v137 a_0;
(*   %scevgep36.1 = getelementptr i8, i8* %a, i64 1 *)
(*   %138 = load i8, i8* %scevgep36.1, align 1 *)
mov v138 a_1;
(*   %conv.i.i214.1 = zext i8 %138 to i32 *)
cast v_conv_i_i214_1@uint32 v138@uint8;
(*   %conv1.i.i215.1 = zext i8 %137 to i32 *)
cast v_conv1_i_i215_1@uint32 v137@uint8;
(*   %xor.i.i216.1 = xor i32 %conv1.i.i215.1, %conv.i.i214.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i216_1 v_conv1_i_i215_1 v_conv_i_i214_1;
(*   %conv2.i.i217.1 = trunc i32 %xor.i.i216.1 to i8 *)
split tmp_v_xor_i_i216_1 v_conv2_i_i217_1 v_xor_i_i216_1 8;
vpc v_conv2_i_i217_1@uint8 v_conv2_i_i217_1@uint32;
(*   %scevgep36.2 = getelementptr i8, i8* %a, i64 2 *)
(*   %139 = load i8, i8* %scevgep36.2, align 1 *)
mov v139 a_2;
(*   %conv.i.i214.2 = zext i8 %139 to i32 *)
cast v_conv_i_i214_2@uint32 v139@uint8;
(*   %conv1.i.i215.2 = zext i8 %conv2.i.i217.1 to i32 *)
cast v_conv1_i_i215_2@uint32 v_conv2_i_i217_1@uint8;
(*   %xor.i.i216.2 = xor i32 %conv1.i.i215.2, %conv.i.i214.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i216_2 v_conv1_i_i215_2 v_conv_i_i214_2;
(*   %conv2.i.i217.2 = trunc i32 %xor.i.i216.2 to i8 *)
split tmp_v_xor_i_i216_2 v_conv2_i_i217_2 v_xor_i_i216_2 8;
vpc v_conv2_i_i217_2@uint8 v_conv2_i_i217_2@uint32;
(*   %scevgep36.3 = getelementptr i8, i8* %a, i64 3 *)
(*   %140 = load i8, i8* %scevgep36.3, align 1 *)
mov v140 a_3;
(*   %conv.i.i214.3 = zext i8 %140 to i32 *)
cast v_conv_i_i214_3@uint32 v140@uint8;
(*   %conv1.i.i215.3 = zext i8 %conv2.i.i217.2 to i32 *)
cast v_conv1_i_i215_3@uint32 v_conv2_i_i217_2@uint8;
(*   %xor.i.i216.3 = xor i32 %conv1.i.i215.3, %conv.i.i214.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i216_3 v_conv1_i_i215_3 v_conv_i_i214_3;
(*   %conv2.i.i217.3 = trunc i32 %xor.i.i216.3 to i8 *)
split tmp_v_xor_i_i216_3 v_conv2_i_i217_3 v_xor_i_i216_3 8;
vpc v_conv2_i_i217_3@uint8 v_conv2_i_i217_3@uint32;
(*   %141 = load i8, i8* %b, align 1 *)
mov v141 b_0;
(*   %scevgep32.1 = getelementptr i8, i8* %b, i64 1 *)
(*   %142 = load i8, i8* %scevgep32.1, align 1 *)
mov v142 b_1;
(*   %conv.i.i175.1 = zext i8 %142 to i32 *)
cast v_conv_i_i175_1@uint32 v142@uint8;
(*   %conv1.i.i176.1 = zext i8 %141 to i32 *)
cast v_conv1_i_i176_1@uint32 v141@uint8;
(*   %xor.i.i177.1 = xor i32 %conv1.i.i176.1, %conv.i.i175.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i177_1 v_conv1_i_i176_1 v_conv_i_i175_1;
(*   %conv2.i.i178.1 = trunc i32 %xor.i.i177.1 to i8 *)
split tmp_v_xor_i_i177_1 v_conv2_i_i178_1 v_xor_i_i177_1 8;
vpc v_conv2_i_i178_1@uint8 v_conv2_i_i178_1@uint32;
(*   %scevgep32.2 = getelementptr i8, i8* %b, i64 2 *)
(*   %143 = load i8, i8* %scevgep32.2, align 1 *)
mov v143 b_2;
(*   %conv.i.i175.2 = zext i8 %143 to i32 *)
cast v_conv_i_i175_2@uint32 v143@uint8;
(*   %conv1.i.i176.2 = zext i8 %conv2.i.i178.1 to i32 *)
cast v_conv1_i_i176_2@uint32 v_conv2_i_i178_1@uint8;
(*   %xor.i.i177.2 = xor i32 %conv1.i.i176.2, %conv.i.i175.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i177_2 v_conv1_i_i176_2 v_conv_i_i175_2;
(*   %conv2.i.i178.2 = trunc i32 %xor.i.i177.2 to i8 *)
split tmp_v_xor_i_i177_2 v_conv2_i_i178_2 v_xor_i_i177_2 8;
vpc v_conv2_i_i178_2@uint8 v_conv2_i_i178_2@uint32;
(*   %scevgep32.3 = getelementptr i8, i8* %b, i64 3 *)
(*   %144 = load i8, i8* %scevgep32.3, align 1 *)
mov v144 b_3;
(*   %conv.i.i175.3 = zext i8 %144 to i32 *)
cast v_conv_i_i175_3@uint32 v144@uint8;
(*   %conv1.i.i176.3 = zext i8 %conv2.i.i178.2 to i32 *)
cast v_conv1_i_i176_3@uint32 v_conv2_i_i178_2@uint8;
(*   %xor.i.i177.3 = xor i32 %conv1.i.i176.3, %conv.i.i175.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i177_3 v_conv1_i_i176_3 v_conv_i_i175_3;
(*   %conv2.i.i178.3 = trunc i32 %xor.i.i177.3 to i8 *)
split tmp_v_xor_i_i177_3 v_conv2_i_i178_3 v_xor_i_i177_3 8;
vpc v_conv2_i_i178_3@uint8 v_conv2_i_i178_3@uint32;
(*   %conv.i149 = zext i8 %conv2.i.i178.3 to i32 *)
cast v_conv_i149@uint32 v_conv2_i_i178_3@uint8;
(*   %and.i150 = and i32 %conv.i149, 1 *)
(* You may need to modify here *)
and uint32 v_and_i150 v_conv_i149 (0x1)@uint32;
(*   %conv1.i151 = zext i8 %conv2.i.i217.3 to i32 *)
cast v_conv1_i151@uint32 v_conv2_i_i217_3@uint8;
(*   %mul.i152 = mul nsw i32 %and.i150, %conv1.i151 *)
mul v_mul_i152 v_and_i150 v_conv1_i151;
(*   %conv3.i155 = trunc i32 %mul.i152 to i8 *)
split tmp_v_mul_i152 v_conv3_i155 v_mul_i152 8;
vpc v_conv3_i155@uint8 v_conv3_i155@uint32;
(*   %conv4.i156 = zext i8 %conv2.i.i178.3 to i32 *)
cast v_conv4_i156@uint32 v_conv2_i_i178_3@uint8;
(*   %shr.i157 = ashr i32 %conv4.i156, 1 *)
(* You may need to modify here *)
split v_shr_i157 tmp_to_be_used v_conv4_i156 1;
(*   %conv5.i158 = trunc i32 %shr.i157 to i8 *)
split tmp_v_shr_i157 v_conv5_i158 v_shr_i157 8;
vpc v_conv5_i158@uint8 v_conv5_i158@uint32;
(*   %conv6.i159 = zext i8 %conv2.i.i217.3 to i32 *)
cast v_conv6_i159@uint32 v_conv2_i_i217_3@uint8;
(*   %shl.i160 = shl i32 %conv6.i159, 1 *)
shls discard_196 v_shl_i160 v_conv6_i159 1;
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
shls discard_197 v_shl_i160_1 v_conv6_i159_1 1;
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
shls discard_198 v_shl_i160_2 v_conv6_i159_2 1;
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
shls discard_199 v_shl_i160_3 v_conv6_i159_3 1;
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
shls discard_200 v_shl_i160_4 v_conv6_i159_4 1;
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
shls discard_201 v_shl_i160_5 v_conv6_i159_5 1;
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
shls discard_202 v_shl_i160_6 v_conv6_i159_6 1;
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
(*   %145 = load i8, i8* %c, align 1 *)
mov v145 c_0;
(*   %scevgep.1 = getelementptr i8, i8* %c, i64 1 *)
(*   %146 = load i8, i8* %scevgep.1, align 1 *)
mov v146 c_1;
(*   %conv.i.i.1 = zext i8 %146 to i32 *)
cast v_conv_i_i_1@uint32 v146@uint8;
(*   %conv1.i.i.1 = zext i8 %145 to i32 *)
cast v_conv1_i_i_1@uint32 v145@uint8;
(*   %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_1 v_conv1_i_i_1 v_conv_i_i_1;
(*   %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8 *)
split tmp_v_xor_i_i_1 v_conv2_i_i_1 v_xor_i_i_1 8;
vpc v_conv2_i_i_1@uint8 v_conv2_i_i_1@uint32;
(*   %scevgep.2 = getelementptr i8, i8* %c, i64 2 *)
(*   %147 = load i8, i8* %scevgep.2, align 1 *)
mov v147 c_2;
(*   %conv.i.i.2 = zext i8 %147 to i32 *)
cast v_conv_i_i_2@uint32 v147@uint8;
(*   %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32 *)
cast v_conv1_i_i_2@uint32 v_conv2_i_i_1@uint8;
(*   %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_2 v_conv1_i_i_2 v_conv_i_i_2;
(*   %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8 *)
split tmp_v_xor_i_i_2 v_conv2_i_i_2 v_xor_i_i_2 8;
vpc v_conv2_i_i_2@uint8 v_conv2_i_i_2@uint32;
(*   %scevgep.3 = getelementptr i8, i8* %c, i64 3 *)
(*   %148 = load i8, i8* %scevgep.3, align 1 *)
mov v148 c_3;
(*   %conv.i.i.3 = zext i8 %148 to i32 *)
cast v_conv_i_i_3@uint32 v148@uint8;
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

