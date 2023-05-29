proc main (uint8 a_0, uint8 a_1, uint8 a_2, uint8 a_3, uint8 a_4, uint8 b_0, uint8 b_1, uint8 b_2, uint8 b_3, uint8 b_4, uint8 r_1, uint8 r_2, uint8 r_3, uint8 r_4, uint8 r_7, uint8 r_8, uint8 r_9, uint8 r_13, uint8 r_14, uint8 r_19) =
{
  true
  &&
  true
}



(*   %s = alloca [25 x i8], align 16 *)
(*   %p0 = alloca [25 x i8], align 16 *)
(*   %p1 = alloca [25 x i8], align 16 *)
(*   %z = alloca [25 x i8], align 16 *)
(*   %scevgep49 = getelementptr i8, i8* %r, i64 1 *)
(*   %scevgep54 = getelementptr i8, i8* %r, i64 5 *)
(*   %0 = load i8, i8* %scevgep49, align 1 *)
mov v0 r_1;
(*   store i8 %0, i8* %scevgep54, align 1 *)
mov r_5 v0;
(*   %scevgep53 = getelementptr i8, i8* %scevgep49, i64 1 *)
(*   %scevgep58 = getelementptr i8, i8* %scevgep54, i64 5 *)
(*   %1 = load i8, i8* %scevgep53, align 1 *)
mov v1 r_2;
(*   store i8 %1, i8* %scevgep58, align 1 *)
mov r_10 v1;
(*   %scevgep53.1 = getelementptr i8, i8* %scevgep53, i64 1 *)
(*   %scevgep58.1 = getelementptr i8, i8* %scevgep58, i64 5 *)
(*   %2 = load i8, i8* %scevgep53.1, align 1 *)
mov v2 r_3;
(*   store i8 %2, i8* %scevgep58.1, align 1 *)
mov r_15 v2;
(*   %scevgep53.2 = getelementptr i8, i8* %scevgep53.1, i64 1 *)
(*   %scevgep58.2 = getelementptr i8, i8* %scevgep58.1, i64 5 *)
(*   %3 = load i8, i8* %scevgep53.2, align 1 *)
mov v3 r_4;
(*   store i8 %3, i8* %scevgep58.2, align 1 *)
mov r_20 v3;
(*   %scevgep51 = getelementptr i8, i8* %scevgep49, i64 6 *)
(*   %scevgep56 = getelementptr i8, i8* %scevgep54, i64 6 *)
(*   %4 = load i8, i8* %scevgep51, align 1 *)
mov v4 r_7;
(*   store i8 %4, i8* %scevgep56, align 1 *)
mov r_11 v4;
(*   %scevgep53.11157 = getelementptr i8, i8* %scevgep51, i64 1 *)
(*   %scevgep58.11158 = getelementptr i8, i8* %scevgep56, i64 5 *)
(*   %5 = load i8, i8* %scevgep53.11157, align 1 *)
mov v5 r_8;
(*   store i8 %5, i8* %scevgep58.11158, align 1 *)
mov r_16 v5;
(*   %scevgep53.1.1 = getelementptr i8, i8* %scevgep53.11157, i64 1 *)
(*   %scevgep58.1.1 = getelementptr i8, i8* %scevgep58.11158, i64 5 *)
(*   %6 = load i8, i8* %scevgep53.1.1, align 1 *)
mov v6 r_9;
(*   store i8 %6, i8* %scevgep58.1.1, align 1 *)
mov r_21 v6;
(*   %scevgep51.1 = getelementptr i8, i8* %scevgep51, i64 6 *)
(*   %scevgep56.1 = getelementptr i8, i8* %scevgep56, i64 6 *)
(*   %7 = load i8, i8* %scevgep51.1, align 1 *)
mov v7 r_13;
(*   store i8 %7, i8* %scevgep56.1, align 1 *)
mov r_17 v7;
(*   %scevgep53.21163 = getelementptr i8, i8* %scevgep51.1, i64 1 *)
(*   %scevgep58.21164 = getelementptr i8, i8* %scevgep56.1, i64 5 *)
(*   %8 = load i8, i8* %scevgep53.21163, align 1 *)
mov v8 r_14;
(*   store i8 %8, i8* %scevgep58.21164, align 1 *)
mov r_22 v8;
(*   %scevgep51.2 = getelementptr i8, i8* %scevgep51.1, i64 6 *)
(*   %scevgep56.2 = getelementptr i8, i8* %scevgep56.1, i64 6 *)
(*   %9 = load i8, i8* %scevgep51.2, align 1 *)
mov v9 r_19;
(*   store i8 %9, i8* %scevgep56.2, align 1 *)
mov r_23 v9;
(*   %arrayidx22.1 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %10 = load i8, i8* %arrayidx22.1, align 1 *)
mov v10 b_1;
(*   %conv.1 = zext i8 %10 to i32 *)
cast v_conv_1@uint32 v10@uint8;
(*   %arrayidx26.1 = getelementptr inbounds i8, i8* %r, i64 1 *)
(*   %11 = load i8, i8* %arrayidx26.1, align 1 *)
mov v11 r_1;
(*   %conv27.1 = zext i8 %11 to i32 *)
cast v_conv27_1@uint32 v11@uint8;
(*   %xor.1 = xor i32 %conv.1, %conv27.1 *)
(* You may need to modify here *)
xor uint32 v_xor_1 v_conv_1 v_conv27_1;
(*   %conv28.1 = trunc i32 %xor.1 to i8 *)
split tmp_v_xor_1 v_conv28_1 v_xor_1 8;
vpc v_conv28_1@uint8 v_conv28_1@uint32;
(*   %arrayidx32.1 = getelementptr inbounds [25 x i8], [25 x i8]* %s, i64 0, i64 1 *)
(*   store i8 %conv28.1, i8* %arrayidx32.1, align 1 *)
mov s_1 v_conv28_1;
(*   %12 = load i8, i8* %a, align 1 *)
mov v12 a_0;
(*   %conv35.1 = zext i8 %12 to i32 *)
cast v_conv35_1@uint32 v12@uint8;
(*   %xor36.1 = xor i32 %conv35.1, 1 *)
(* You may need to modify here *)
xor uint32 v_xor36_1 v_conv35_1 (0x1)@uint32;
(*   %conv37.1 = trunc i32 %xor36.1 to i8 *)
split tmp_v_xor36_1 v_conv37_1 v_xor36_1 8;
vpc v_conv37_1@uint8 v_conv37_1@uint32;
(*   %arrayidx41.1 = getelementptr inbounds i8, i8* %r, i64 1 *)
(*   %13 = load i8, i8* %arrayidx41.1, align 1 *)
mov v13 r_1;
(*   %conv.i.1143 = zext i8 %13 to i32 *)
cast v_conv_i_1143@uint32 v13@uint8;
(*   %and.i.1144 = and i32 %conv.i.1143, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1144 v_conv_i_1143 (0x1)@uint32;
(*   %conv1.i.1145 = zext i8 %conv37.1 to i32 *)
cast v_conv1_i_1145@uint32 v_conv37_1@uint8;
(*   %mul.i.1146 = mul nsw i32 %and.i.1144, %conv1.i.1145 *)
mul v_mul_i_1146 v_and_i_1144 v_conv1_i_1145;
(*   %conv3.i.1147 = trunc i32 %mul.i.1146 to i8 *)
split tmp_v_mul_i_1146 v_conv3_i_1147 v_mul_i_1146 8;
vpc v_conv3_i_1147@uint8 v_conv3_i_1147@uint32;
(*   %conv4.i.1148 = zext i8 %13 to i32 *)
cast v_conv4_i_1148@uint32 v13@uint8;
(*   %shr.i.1149 = ashr i32 %conv4.i.1148, 1 *)
(* You may need to modify here *)
split v_shr_i_1149 tmp_to_be_used v_conv4_i_1148 1;
(*   %conv5.i.1150 = trunc i32 %shr.i.1149 to i8 *)
split tmp_v_shr_i_1149 v_conv5_i_1150 v_shr_i_1149 8;
vpc v_conv5_i_1150@uint8 v_conv5_i_1150@uint32;
(*   %conv6.i.1151 = zext i8 %conv37.1 to i32 *)
cast v_conv6_i_1151@uint32 v_conv37_1@uint8;
(*   %shl.i.1152 = shl i32 %conv6.i.1151, 1 *)
shls discard_0 v_shl_i_1152 v_conv6_i_1151 1;
(*   %conv7.i.1153 = trunc i32 %shl.i.1152 to i8 *)
split tmp_v_shl_i_1152 v_conv7_i_1153 v_shl_i_1152 8;
vpc v_conv7_i_1153@uint8 v_conv7_i_1153@uint32;
(*   %conv.i.1.1 = zext i8 %conv5.i.1150 to i32 *)
cast v_conv_i_1_1@uint32 v_conv5_i_1150@uint8;
(*   %and.i.1.1 = and i32 %conv.i.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_1 v_conv_i_1_1 (0x1)@uint32;
(*   %conv1.i.1.1 = zext i8 %conv7.i.1153 to i32 *)
cast v_conv1_i_1_1@uint32 v_conv7_i_1153@uint8;
(*   %mul.i.1.1 = mul nsw i32 %and.i.1.1, %conv1.i.1.1 *)
mul v_mul_i_1_1 v_and_i_1_1 v_conv1_i_1_1;
(*   %conv2.i.1.1 = zext i8 %conv3.i.1147 to i32 *)
cast v_conv2_i_1_1@uint32 v_conv3_i_1147@uint8;
(*   %xor.i.1.1 = xor i32 %conv2.i.1.1, %mul.i.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_1 v_conv2_i_1_1 v_mul_i_1_1;
(*   %conv3.i.1.1 = trunc i32 %xor.i.1.1 to i8 *)
split tmp_v_xor_i_1_1 v_conv3_i_1_1 v_xor_i_1_1 8;
vpc v_conv3_i_1_1@uint8 v_conv3_i_1_1@uint32;
(*   %conv4.i.1.1 = zext i8 %conv5.i.1150 to i32 *)
cast v_conv4_i_1_1@uint32 v_conv5_i_1150@uint8;
(*   %shr.i.1.1 = ashr i32 %conv4.i.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_1_1 tmp_to_be_used v_conv4_i_1_1 1;
(*   %conv5.i.1.1 = trunc i32 %shr.i.1.1 to i8 *)
split tmp_v_shr_i_1_1 v_conv5_i_1_1 v_shr_i_1_1 8;
vpc v_conv5_i_1_1@uint8 v_conv5_i_1_1@uint32;
(*   %conv6.i.1.1 = zext i8 %conv7.i.1153 to i32 *)
cast v_conv6_i_1_1@uint32 v_conv7_i_1153@uint8;
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
(*   %arrayidx45.1 = getelementptr inbounds [25 x i8], [25 x i8]* %p0, i64 0, i64 1 *)
(*   store i8 %conv3.i.7.1, i8* %arrayidx45.1, align 1 *)
mov p0_1 v_conv3_i_7_1;
(*   %14 = load i8, i8* %a, align 1 *)
mov v14 a_0;
(*   %arrayidx51.1 = getelementptr inbounds [25 x i8], [25 x i8]* %s, i64 0, i64 1 *)
(*   %15 = load i8, i8* %arrayidx51.1, align 1 *)
mov v15 s_1;
(*   %conv.i127.1154 = zext i8 %15 to i32 *)
cast v_conv_i127_1154@uint32 v15@uint8;
(*   %and.i128.1155 = and i32 %conv.i127.1154, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1155 v_conv_i127_1154 (0x1)@uint32;
(*   %conv1.i129.1156 = zext i8 %14 to i32 *)
cast v_conv1_i129_1156@uint32 v14@uint8;
(*   %mul.i130.1157 = mul nsw i32 %and.i128.1155, %conv1.i129.1156 *)
mul v_mul_i130_1157 v_and_i128_1155 v_conv1_i129_1156;
(*   %conv3.i133.1158 = trunc i32 %mul.i130.1157 to i8 *)
split tmp_v_mul_i130_1157 v_conv3_i133_1158 v_mul_i130_1157 8;
vpc v_conv3_i133_1158@uint8 v_conv3_i133_1158@uint32;
(*   %conv4.i134.1159 = zext i8 %15 to i32 *)
cast v_conv4_i134_1159@uint32 v15@uint8;
(*   %shr.i135.1160 = ashr i32 %conv4.i134.1159, 1 *)
(* You may need to modify here *)
split v_shr_i135_1160 tmp_to_be_used v_conv4_i134_1159 1;
(*   %conv5.i136.1161 = trunc i32 %shr.i135.1160 to i8 *)
split tmp_v_shr_i135_1160 v_conv5_i136_1161 v_shr_i135_1160 8;
vpc v_conv5_i136_1161@uint8 v_conv5_i136_1161@uint32;
(*   %conv6.i137.1162 = zext i8 %14 to i32 *)
cast v_conv6_i137_1162@uint32 v14@uint8;
(*   %shl.i138.1163 = shl i32 %conv6.i137.1162, 1 *)
shls discard_7 v_shl_i138_1163 v_conv6_i137_1162 1;
(*   %conv7.i139.1164 = trunc i32 %shl.i138.1163 to i8 *)
split tmp_v_shl_i138_1163 v_conv7_i139_1164 v_shl_i138_1163 8;
vpc v_conv7_i139_1164@uint8 v_conv7_i139_1164@uint32;
(*   %conv.i127.1.1 = zext i8 %conv5.i136.1161 to i32 *)
cast v_conv_i127_1_1@uint32 v_conv5_i136_1161@uint8;
(*   %and.i128.1.1 = and i32 %conv.i127.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1_1 v_conv_i127_1_1 (0x1)@uint32;
(*   %conv1.i129.1.1 = zext i8 %conv7.i139.1164 to i32 *)
cast v_conv1_i129_1_1@uint32 v_conv7_i139_1164@uint8;
(*   %mul.i130.1.1 = mul nsw i32 %and.i128.1.1, %conv1.i129.1.1 *)
mul v_mul_i130_1_1 v_and_i128_1_1 v_conv1_i129_1_1;
(*   %conv2.i131.1.1 = zext i8 %conv3.i133.1158 to i32 *)
cast v_conv2_i131_1_1@uint32 v_conv3_i133_1158@uint8;
(*   %xor.i132.1.1 = xor i32 %conv2.i131.1.1, %mul.i130.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_1_1 v_conv2_i131_1_1 v_mul_i130_1_1;
(*   %conv3.i133.1.1 = trunc i32 %xor.i132.1.1 to i8 *)
split tmp_v_xor_i132_1_1 v_conv3_i133_1_1 v_xor_i132_1_1 8;
vpc v_conv3_i133_1_1@uint8 v_conv3_i133_1_1@uint32;
(*   %conv4.i134.1.1 = zext i8 %conv5.i136.1161 to i32 *)
cast v_conv4_i134_1_1@uint32 v_conv5_i136_1161@uint8;
(*   %shr.i135.1.1 = ashr i32 %conv4.i134.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i135_1_1 tmp_to_be_used v_conv4_i134_1_1 1;
(*   %conv5.i136.1.1 = trunc i32 %shr.i135.1.1 to i8 *)
split tmp_v_shr_i135_1_1 v_conv5_i136_1_1 v_shr_i135_1_1 8;
vpc v_conv5_i136_1_1@uint8 v_conv5_i136_1_1@uint32;
(*   %conv6.i137.1.1 = zext i8 %conv7.i139.1164 to i32 *)
cast v_conv6_i137_1_1@uint32 v_conv7_i139_1164@uint8;
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
(*   %arrayidx56.1 = getelementptr inbounds [25 x i8], [25 x i8]* %p1, i64 0, i64 1 *)
(*   store i8 %conv3.i133.7.1, i8* %arrayidx56.1, align 1 *)
mov p1_1 v_conv3_i133_7_1;
(*   %arrayidx60.1 = getelementptr inbounds [25 x i8], [25 x i8]* %p0, i64 0, i64 1 *)
(*   %16 = load i8, i8* %arrayidx60.1, align 1 *)
mov v16 p0_1;
(*   %conv61.1 = zext i8 %16 to i32 *)
cast v_conv61_1@uint32 v16@uint8;
(*   %arrayidx65.1 = getelementptr inbounds [25 x i8], [25 x i8]* %p1, i64 0, i64 1 *)
(*   %17 = load i8, i8* %arrayidx65.1, align 1 *)
mov v17 p1_1;
(*   %conv66.1 = zext i8 %17 to i32 *)
cast v_conv66_1@uint32 v17@uint8;
(*   %xor67.1 = xor i32 %conv61.1, %conv66.1 *)
(* You may need to modify here *)
xor uint32 v_xor67_1 v_conv61_1 v_conv66_1;
(*   %conv68.1 = trunc i32 %xor67.1 to i8 *)
split tmp_v_xor67_1 v_conv68_1 v_xor67_1 8;
vpc v_conv68_1@uint8 v_conv68_1@uint32;
(*   %arrayidx72.1 = getelementptr inbounds [25 x i8], [25 x i8]* %z, i64 0, i64 1 *)
(*   store i8 %conv68.1, i8* %arrayidx72.1, align 1 *)
mov z_1 v_conv68_1;
(*   %arrayidx22.2 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %18 = load i8, i8* %arrayidx22.2, align 1 *)
mov v18 b_2;
(*   %conv.2 = zext i8 %18 to i32 *)
cast v_conv_2@uint32 v18@uint8;
(*   %arrayidx26.2 = getelementptr inbounds i8, i8* %r, i64 2 *)
(*   %19 = load i8, i8* %arrayidx26.2, align 1 *)
mov v19 r_2;
(*   %conv27.2 = zext i8 %19 to i32 *)
cast v_conv27_2@uint32 v19@uint8;
(*   %xor.2 = xor i32 %conv.2, %conv27.2 *)
(* You may need to modify here *)
xor uint32 v_xor_2 v_conv_2 v_conv27_2;
(*   %conv28.2 = trunc i32 %xor.2 to i8 *)
split tmp_v_xor_2 v_conv28_2 v_xor_2 8;
vpc v_conv28_2@uint8 v_conv28_2@uint32;
(*   %arrayidx32.2 = getelementptr inbounds [25 x i8], [25 x i8]* %s, i64 0, i64 2 *)
(*   store i8 %conv28.2, i8* %arrayidx32.2, align 1 *)
mov s_2 v_conv28_2;
(*   %20 = load i8, i8* %a, align 1 *)
mov v20 a_0;
(*   %conv35.2 = zext i8 %20 to i32 *)
cast v_conv35_2@uint32 v20@uint8;
(*   %xor36.2 = xor i32 %conv35.2, 1 *)
(* You may need to modify here *)
xor uint32 v_xor36_2 v_conv35_2 (0x1)@uint32;
(*   %conv37.2 = trunc i32 %xor36.2 to i8 *)
split tmp_v_xor36_2 v_conv37_2 v_xor36_2 8;
vpc v_conv37_2@uint8 v_conv37_2@uint32;
(*   %arrayidx41.2 = getelementptr inbounds i8, i8* %r, i64 2 *)
(*   %21 = load i8, i8* %arrayidx41.2, align 1 *)
mov v21 r_2;
(*   %conv.i.2165 = zext i8 %21 to i32 *)
cast v_conv_i_2165@uint32 v21@uint8;
(*   %and.i.2166 = and i32 %conv.i.2165, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2166 v_conv_i_2165 (0x1)@uint32;
(*   %conv1.i.2167 = zext i8 %conv37.2 to i32 *)
cast v_conv1_i_2167@uint32 v_conv37_2@uint8;
(*   %mul.i.2168 = mul nsw i32 %and.i.2166, %conv1.i.2167 *)
mul v_mul_i_2168 v_and_i_2166 v_conv1_i_2167;
(*   %conv3.i.2169 = trunc i32 %mul.i.2168 to i8 *)
split tmp_v_mul_i_2168 v_conv3_i_2169 v_mul_i_2168 8;
vpc v_conv3_i_2169@uint8 v_conv3_i_2169@uint32;
(*   %conv4.i.2170 = zext i8 %21 to i32 *)
cast v_conv4_i_2170@uint32 v21@uint8;
(*   %shr.i.2171 = ashr i32 %conv4.i.2170, 1 *)
(* You may need to modify here *)
split v_shr_i_2171 tmp_to_be_used v_conv4_i_2170 1;
(*   %conv5.i.2172 = trunc i32 %shr.i.2171 to i8 *)
split tmp_v_shr_i_2171 v_conv5_i_2172 v_shr_i_2171 8;
vpc v_conv5_i_2172@uint8 v_conv5_i_2172@uint32;
(*   %conv6.i.2173 = zext i8 %conv37.2 to i32 *)
cast v_conv6_i_2173@uint32 v_conv37_2@uint8;
(*   %shl.i.2174 = shl i32 %conv6.i.2173, 1 *)
shls discard_14 v_shl_i_2174 v_conv6_i_2173 1;
(*   %conv7.i.2175 = trunc i32 %shl.i.2174 to i8 *)
split tmp_v_shl_i_2174 v_conv7_i_2175 v_shl_i_2174 8;
vpc v_conv7_i_2175@uint8 v_conv7_i_2175@uint32;
(*   %conv.i.1.2 = zext i8 %conv5.i.2172 to i32 *)
cast v_conv_i_1_2@uint32 v_conv5_i_2172@uint8;
(*   %and.i.1.2 = and i32 %conv.i.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_2 v_conv_i_1_2 (0x1)@uint32;
(*   %conv1.i.1.2 = zext i8 %conv7.i.2175 to i32 *)
cast v_conv1_i_1_2@uint32 v_conv7_i_2175@uint8;
(*   %mul.i.1.2 = mul nsw i32 %and.i.1.2, %conv1.i.1.2 *)
mul v_mul_i_1_2 v_and_i_1_2 v_conv1_i_1_2;
(*   %conv2.i.1.2 = zext i8 %conv3.i.2169 to i32 *)
cast v_conv2_i_1_2@uint32 v_conv3_i_2169@uint8;
(*   %xor.i.1.2 = xor i32 %conv2.i.1.2, %mul.i.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_2 v_conv2_i_1_2 v_mul_i_1_2;
(*   %conv3.i.1.2 = trunc i32 %xor.i.1.2 to i8 *)
split tmp_v_xor_i_1_2 v_conv3_i_1_2 v_xor_i_1_2 8;
vpc v_conv3_i_1_2@uint8 v_conv3_i_1_2@uint32;
(*   %conv4.i.1.2 = zext i8 %conv5.i.2172 to i32 *)
cast v_conv4_i_1_2@uint32 v_conv5_i_2172@uint8;
(*   %shr.i.1.2 = ashr i32 %conv4.i.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_1_2 tmp_to_be_used v_conv4_i_1_2 1;
(*   %conv5.i.1.2 = trunc i32 %shr.i.1.2 to i8 *)
split tmp_v_shr_i_1_2 v_conv5_i_1_2 v_shr_i_1_2 8;
vpc v_conv5_i_1_2@uint8 v_conv5_i_1_2@uint32;
(*   %conv6.i.1.2 = zext i8 %conv7.i.2175 to i32 *)
cast v_conv6_i_1_2@uint32 v_conv7_i_2175@uint8;
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
(*   %arrayidx45.2 = getelementptr inbounds [25 x i8], [25 x i8]* %p0, i64 0, i64 2 *)
(*   store i8 %conv3.i.7.2, i8* %arrayidx45.2, align 1 *)
mov p0_2 v_conv3_i_7_2;
(*   %22 = load i8, i8* %a, align 1 *)
mov v22 a_0;
(*   %arrayidx51.2 = getelementptr inbounds [25 x i8], [25 x i8]* %s, i64 0, i64 2 *)
(*   %23 = load i8, i8* %arrayidx51.2, align 1 *)
mov v23 s_2;
(*   %conv.i127.2176 = zext i8 %23 to i32 *)
cast v_conv_i127_2176@uint32 v23@uint8;
(*   %and.i128.2177 = and i32 %conv.i127.2176, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_2177 v_conv_i127_2176 (0x1)@uint32;
(*   %conv1.i129.2178 = zext i8 %22 to i32 *)
cast v_conv1_i129_2178@uint32 v22@uint8;
(*   %mul.i130.2179 = mul nsw i32 %and.i128.2177, %conv1.i129.2178 *)
mul v_mul_i130_2179 v_and_i128_2177 v_conv1_i129_2178;
(*   %conv3.i133.2180 = trunc i32 %mul.i130.2179 to i8 *)
split tmp_v_mul_i130_2179 v_conv3_i133_2180 v_mul_i130_2179 8;
vpc v_conv3_i133_2180@uint8 v_conv3_i133_2180@uint32;
(*   %conv4.i134.2181 = zext i8 %23 to i32 *)
cast v_conv4_i134_2181@uint32 v23@uint8;
(*   %shr.i135.2182 = ashr i32 %conv4.i134.2181, 1 *)
(* You may need to modify here *)
split v_shr_i135_2182 tmp_to_be_used v_conv4_i134_2181 1;
(*   %conv5.i136.2183 = trunc i32 %shr.i135.2182 to i8 *)
split tmp_v_shr_i135_2182 v_conv5_i136_2183 v_shr_i135_2182 8;
vpc v_conv5_i136_2183@uint8 v_conv5_i136_2183@uint32;
(*   %conv6.i137.2184 = zext i8 %22 to i32 *)
cast v_conv6_i137_2184@uint32 v22@uint8;
(*   %shl.i138.2185 = shl i32 %conv6.i137.2184, 1 *)
shls discard_21 v_shl_i138_2185 v_conv6_i137_2184 1;
(*   %conv7.i139.2186 = trunc i32 %shl.i138.2185 to i8 *)
split tmp_v_shl_i138_2185 v_conv7_i139_2186 v_shl_i138_2185 8;
vpc v_conv7_i139_2186@uint8 v_conv7_i139_2186@uint32;
(*   %conv.i127.1.2 = zext i8 %conv5.i136.2183 to i32 *)
cast v_conv_i127_1_2@uint32 v_conv5_i136_2183@uint8;
(*   %and.i128.1.2 = and i32 %conv.i127.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1_2 v_conv_i127_1_2 (0x1)@uint32;
(*   %conv1.i129.1.2 = zext i8 %conv7.i139.2186 to i32 *)
cast v_conv1_i129_1_2@uint32 v_conv7_i139_2186@uint8;
(*   %mul.i130.1.2 = mul nsw i32 %and.i128.1.2, %conv1.i129.1.2 *)
mul v_mul_i130_1_2 v_and_i128_1_2 v_conv1_i129_1_2;
(*   %conv2.i131.1.2 = zext i8 %conv3.i133.2180 to i32 *)
cast v_conv2_i131_1_2@uint32 v_conv3_i133_2180@uint8;
(*   %xor.i132.1.2 = xor i32 %conv2.i131.1.2, %mul.i130.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_1_2 v_conv2_i131_1_2 v_mul_i130_1_2;
(*   %conv3.i133.1.2 = trunc i32 %xor.i132.1.2 to i8 *)
split tmp_v_xor_i132_1_2 v_conv3_i133_1_2 v_xor_i132_1_2 8;
vpc v_conv3_i133_1_2@uint8 v_conv3_i133_1_2@uint32;
(*   %conv4.i134.1.2 = zext i8 %conv5.i136.2183 to i32 *)
cast v_conv4_i134_1_2@uint32 v_conv5_i136_2183@uint8;
(*   %shr.i135.1.2 = ashr i32 %conv4.i134.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i135_1_2 tmp_to_be_used v_conv4_i134_1_2 1;
(*   %conv5.i136.1.2 = trunc i32 %shr.i135.1.2 to i8 *)
split tmp_v_shr_i135_1_2 v_conv5_i136_1_2 v_shr_i135_1_2 8;
vpc v_conv5_i136_1_2@uint8 v_conv5_i136_1_2@uint32;
(*   %conv6.i137.1.2 = zext i8 %conv7.i139.2186 to i32 *)
cast v_conv6_i137_1_2@uint32 v_conv7_i139_2186@uint8;
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
(*   %arrayidx56.2 = getelementptr inbounds [25 x i8], [25 x i8]* %p1, i64 0, i64 2 *)
(*   store i8 %conv3.i133.7.2, i8* %arrayidx56.2, align 1 *)
mov p1_2 v_conv3_i133_7_2;
(*   %arrayidx60.2 = getelementptr inbounds [25 x i8], [25 x i8]* %p0, i64 0, i64 2 *)
(*   %24 = load i8, i8* %arrayidx60.2, align 1 *)
mov v24 p0_2;
(*   %conv61.2 = zext i8 %24 to i32 *)
cast v_conv61_2@uint32 v24@uint8;
(*   %arrayidx65.2 = getelementptr inbounds [25 x i8], [25 x i8]* %p1, i64 0, i64 2 *)
(*   %25 = load i8, i8* %arrayidx65.2, align 1 *)
mov v25 p1_2;
(*   %conv66.2 = zext i8 %25 to i32 *)
cast v_conv66_2@uint32 v25@uint8;
(*   %xor67.2 = xor i32 %conv61.2, %conv66.2 *)
(* You may need to modify here *)
xor uint32 v_xor67_2 v_conv61_2 v_conv66_2;
(*   %conv68.2 = trunc i32 %xor67.2 to i8 *)
split tmp_v_xor67_2 v_conv68_2 v_xor67_2 8;
vpc v_conv68_2@uint8 v_conv68_2@uint32;
(*   %arrayidx72.2 = getelementptr inbounds [25 x i8], [25 x i8]* %z, i64 0, i64 2 *)
(*   store i8 %conv68.2, i8* %arrayidx72.2, align 1 *)
mov z_2 v_conv68_2;
(*   %arrayidx22.3 = getelementptr inbounds i8, i8* %b, i64 3 *)
(*   %26 = load i8, i8* %arrayidx22.3, align 1 *)
mov v26 b_3;
(*   %conv.3 = zext i8 %26 to i32 *)
cast v_conv_3@uint32 v26@uint8;
(*   %arrayidx26.3 = getelementptr inbounds i8, i8* %r, i64 3 *)
(*   %27 = load i8, i8* %arrayidx26.3, align 1 *)
mov v27 r_3;
(*   %conv27.3 = zext i8 %27 to i32 *)
cast v_conv27_3@uint32 v27@uint8;
(*   %xor.3 = xor i32 %conv.3, %conv27.3 *)
(* You may need to modify here *)
xor uint32 v_xor_3 v_conv_3 v_conv27_3;
(*   %conv28.3 = trunc i32 %xor.3 to i8 *)
split tmp_v_xor_3 v_conv28_3 v_xor_3 8;
vpc v_conv28_3@uint8 v_conv28_3@uint32;
(*   %arrayidx32.3 = getelementptr inbounds [25 x i8], [25 x i8]* %s, i64 0, i64 3 *)
(*   store i8 %conv28.3, i8* %arrayidx32.3, align 1 *)
mov s_3 v_conv28_3;
(*   %28 = load i8, i8* %a, align 1 *)
mov v28 a_0;
(*   %conv35.3 = zext i8 %28 to i32 *)
cast v_conv35_3@uint32 v28@uint8;
(*   %xor36.3 = xor i32 %conv35.3, 1 *)
(* You may need to modify here *)
xor uint32 v_xor36_3 v_conv35_3 (0x1)@uint32;
(*   %conv37.3 = trunc i32 %xor36.3 to i8 *)
split tmp_v_xor36_3 v_conv37_3 v_xor36_3 8;
vpc v_conv37_3@uint8 v_conv37_3@uint32;
(*   %arrayidx41.3 = getelementptr inbounds i8, i8* %r, i64 3 *)
(*   %29 = load i8, i8* %arrayidx41.3, align 1 *)
mov v29 r_3;
(*   %conv.i.3187 = zext i8 %29 to i32 *)
cast v_conv_i_3187@uint32 v29@uint8;
(*   %and.i.3188 = and i32 %conv.i.3187, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3188 v_conv_i_3187 (0x1)@uint32;
(*   %conv1.i.3189 = zext i8 %conv37.3 to i32 *)
cast v_conv1_i_3189@uint32 v_conv37_3@uint8;
(*   %mul.i.3190 = mul nsw i32 %and.i.3188, %conv1.i.3189 *)
mul v_mul_i_3190 v_and_i_3188 v_conv1_i_3189;
(*   %conv3.i.3191 = trunc i32 %mul.i.3190 to i8 *)
split tmp_v_mul_i_3190 v_conv3_i_3191 v_mul_i_3190 8;
vpc v_conv3_i_3191@uint8 v_conv3_i_3191@uint32;
(*   %conv4.i.3192 = zext i8 %29 to i32 *)
cast v_conv4_i_3192@uint32 v29@uint8;
(*   %shr.i.3193 = ashr i32 %conv4.i.3192, 1 *)
(* You may need to modify here *)
split v_shr_i_3193 tmp_to_be_used v_conv4_i_3192 1;
(*   %conv5.i.3194 = trunc i32 %shr.i.3193 to i8 *)
split tmp_v_shr_i_3193 v_conv5_i_3194 v_shr_i_3193 8;
vpc v_conv5_i_3194@uint8 v_conv5_i_3194@uint32;
(*   %conv6.i.3195 = zext i8 %conv37.3 to i32 *)
cast v_conv6_i_3195@uint32 v_conv37_3@uint8;
(*   %shl.i.3196 = shl i32 %conv6.i.3195, 1 *)
shls discard_28 v_shl_i_3196 v_conv6_i_3195 1;
(*   %conv7.i.3197 = trunc i32 %shl.i.3196 to i8 *)
split tmp_v_shl_i_3196 v_conv7_i_3197 v_shl_i_3196 8;
vpc v_conv7_i_3197@uint8 v_conv7_i_3197@uint32;
(*   %conv.i.1.3 = zext i8 %conv5.i.3194 to i32 *)
cast v_conv_i_1_3@uint32 v_conv5_i_3194@uint8;
(*   %and.i.1.3 = and i32 %conv.i.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_3 v_conv_i_1_3 (0x1)@uint32;
(*   %conv1.i.1.3 = zext i8 %conv7.i.3197 to i32 *)
cast v_conv1_i_1_3@uint32 v_conv7_i_3197@uint8;
(*   %mul.i.1.3 = mul nsw i32 %and.i.1.3, %conv1.i.1.3 *)
mul v_mul_i_1_3 v_and_i_1_3 v_conv1_i_1_3;
(*   %conv2.i.1.3 = zext i8 %conv3.i.3191 to i32 *)
cast v_conv2_i_1_3@uint32 v_conv3_i_3191@uint8;
(*   %xor.i.1.3 = xor i32 %conv2.i.1.3, %mul.i.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_3 v_conv2_i_1_3 v_mul_i_1_3;
(*   %conv3.i.1.3 = trunc i32 %xor.i.1.3 to i8 *)
split tmp_v_xor_i_1_3 v_conv3_i_1_3 v_xor_i_1_3 8;
vpc v_conv3_i_1_3@uint8 v_conv3_i_1_3@uint32;
(*   %conv4.i.1.3 = zext i8 %conv5.i.3194 to i32 *)
cast v_conv4_i_1_3@uint32 v_conv5_i_3194@uint8;
(*   %shr.i.1.3 = ashr i32 %conv4.i.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i_1_3 tmp_to_be_used v_conv4_i_1_3 1;
(*   %conv5.i.1.3 = trunc i32 %shr.i.1.3 to i8 *)
split tmp_v_shr_i_1_3 v_conv5_i_1_3 v_shr_i_1_3 8;
vpc v_conv5_i_1_3@uint8 v_conv5_i_1_3@uint32;
(*   %conv6.i.1.3 = zext i8 %conv7.i.3197 to i32 *)
cast v_conv6_i_1_3@uint32 v_conv7_i_3197@uint8;
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
(*   %arrayidx45.3 = getelementptr inbounds [25 x i8], [25 x i8]* %p0, i64 0, i64 3 *)
(*   store i8 %conv3.i.7.3, i8* %arrayidx45.3, align 1 *)
mov p0_3 v_conv3_i_7_3;
(*   %30 = load i8, i8* %a, align 1 *)
mov v30 a_0;
(*   %arrayidx51.3 = getelementptr inbounds [25 x i8], [25 x i8]* %s, i64 0, i64 3 *)
(*   %31 = load i8, i8* %arrayidx51.3, align 1 *)
mov v31 s_3;
(*   %conv.i127.3198 = zext i8 %31 to i32 *)
cast v_conv_i127_3198@uint32 v31@uint8;
(*   %and.i128.3199 = and i32 %conv.i127.3198, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_3199 v_conv_i127_3198 (0x1)@uint32;
(*   %conv1.i129.3200 = zext i8 %30 to i32 *)
cast v_conv1_i129_3200@uint32 v30@uint8;
(*   %mul.i130.3201 = mul nsw i32 %and.i128.3199, %conv1.i129.3200 *)
mul v_mul_i130_3201 v_and_i128_3199 v_conv1_i129_3200;
(*   %conv3.i133.3202 = trunc i32 %mul.i130.3201 to i8 *)
split tmp_v_mul_i130_3201 v_conv3_i133_3202 v_mul_i130_3201 8;
vpc v_conv3_i133_3202@uint8 v_conv3_i133_3202@uint32;
(*   %conv4.i134.3203 = zext i8 %31 to i32 *)
cast v_conv4_i134_3203@uint32 v31@uint8;
(*   %shr.i135.3204 = ashr i32 %conv4.i134.3203, 1 *)
(* You may need to modify here *)
split v_shr_i135_3204 tmp_to_be_used v_conv4_i134_3203 1;
(*   %conv5.i136.3205 = trunc i32 %shr.i135.3204 to i8 *)
split tmp_v_shr_i135_3204 v_conv5_i136_3205 v_shr_i135_3204 8;
vpc v_conv5_i136_3205@uint8 v_conv5_i136_3205@uint32;
(*   %conv6.i137.3206 = zext i8 %30 to i32 *)
cast v_conv6_i137_3206@uint32 v30@uint8;
(*   %shl.i138.3207 = shl i32 %conv6.i137.3206, 1 *)
shls discard_35 v_shl_i138_3207 v_conv6_i137_3206 1;
(*   %conv7.i139.3208 = trunc i32 %shl.i138.3207 to i8 *)
split tmp_v_shl_i138_3207 v_conv7_i139_3208 v_shl_i138_3207 8;
vpc v_conv7_i139_3208@uint8 v_conv7_i139_3208@uint32;
(*   %conv.i127.1.3 = zext i8 %conv5.i136.3205 to i32 *)
cast v_conv_i127_1_3@uint32 v_conv5_i136_3205@uint8;
(*   %and.i128.1.3 = and i32 %conv.i127.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1_3 v_conv_i127_1_3 (0x1)@uint32;
(*   %conv1.i129.1.3 = zext i8 %conv7.i139.3208 to i32 *)
cast v_conv1_i129_1_3@uint32 v_conv7_i139_3208@uint8;
(*   %mul.i130.1.3 = mul nsw i32 %and.i128.1.3, %conv1.i129.1.3 *)
mul v_mul_i130_1_3 v_and_i128_1_3 v_conv1_i129_1_3;
(*   %conv2.i131.1.3 = zext i8 %conv3.i133.3202 to i32 *)
cast v_conv2_i131_1_3@uint32 v_conv3_i133_3202@uint8;
(*   %xor.i132.1.3 = xor i32 %conv2.i131.1.3, %mul.i130.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_1_3 v_conv2_i131_1_3 v_mul_i130_1_3;
(*   %conv3.i133.1.3 = trunc i32 %xor.i132.1.3 to i8 *)
split tmp_v_xor_i132_1_3 v_conv3_i133_1_3 v_xor_i132_1_3 8;
vpc v_conv3_i133_1_3@uint8 v_conv3_i133_1_3@uint32;
(*   %conv4.i134.1.3 = zext i8 %conv5.i136.3205 to i32 *)
cast v_conv4_i134_1_3@uint32 v_conv5_i136_3205@uint8;
(*   %shr.i135.1.3 = ashr i32 %conv4.i134.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i135_1_3 tmp_to_be_used v_conv4_i134_1_3 1;
(*   %conv5.i136.1.3 = trunc i32 %shr.i135.1.3 to i8 *)
split tmp_v_shr_i135_1_3 v_conv5_i136_1_3 v_shr_i135_1_3 8;
vpc v_conv5_i136_1_3@uint8 v_conv5_i136_1_3@uint32;
(*   %conv6.i137.1.3 = zext i8 %conv7.i139.3208 to i32 *)
cast v_conv6_i137_1_3@uint32 v_conv7_i139_3208@uint8;
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
(*   %arrayidx56.3 = getelementptr inbounds [25 x i8], [25 x i8]* %p1, i64 0, i64 3 *)
(*   store i8 %conv3.i133.7.3, i8* %arrayidx56.3, align 1 *)
mov p1_3 v_conv3_i133_7_3;
(*   %arrayidx60.3 = getelementptr inbounds [25 x i8], [25 x i8]* %p0, i64 0, i64 3 *)
(*   %32 = load i8, i8* %arrayidx60.3, align 1 *)
mov v32 p0_3;
(*   %conv61.3 = zext i8 %32 to i32 *)
cast v_conv61_3@uint32 v32@uint8;
(*   %arrayidx65.3 = getelementptr inbounds [25 x i8], [25 x i8]* %p1, i64 0, i64 3 *)
(*   %33 = load i8, i8* %arrayidx65.3, align 1 *)
mov v33 p1_3;
(*   %conv66.3 = zext i8 %33 to i32 *)
cast v_conv66_3@uint32 v33@uint8;
(*   %xor67.3 = xor i32 %conv61.3, %conv66.3 *)
(* You may need to modify here *)
xor uint32 v_xor67_3 v_conv61_3 v_conv66_3;
(*   %conv68.3 = trunc i32 %xor67.3 to i8 *)
split tmp_v_xor67_3 v_conv68_3 v_xor67_3 8;
vpc v_conv68_3@uint8 v_conv68_3@uint32;
(*   %arrayidx72.3 = getelementptr inbounds [25 x i8], [25 x i8]* %z, i64 0, i64 3 *)
(*   store i8 %conv68.3, i8* %arrayidx72.3, align 1 *)
mov z_3 v_conv68_3;
(*   %arrayidx22.4 = getelementptr inbounds i8, i8* %b, i64 4 *)
(*   %34 = load i8, i8* %arrayidx22.4, align 1 *)
mov v34 b_4;
(*   %conv.4 = zext i8 %34 to i32 *)
cast v_conv_4@uint32 v34@uint8;
(*   %arrayidx26.4 = getelementptr inbounds i8, i8* %r, i64 4 *)
(*   %35 = load i8, i8* %arrayidx26.4, align 1 *)
mov v35 r_4;
(*   %conv27.4 = zext i8 %35 to i32 *)
cast v_conv27_4@uint32 v35@uint8;
(*   %xor.4 = xor i32 %conv.4, %conv27.4 *)
(* You may need to modify here *)
xor uint32 v_xor_4 v_conv_4 v_conv27_4;
(*   %conv28.4 = trunc i32 %xor.4 to i8 *)
split tmp_v_xor_4 v_conv28_4 v_xor_4 8;
vpc v_conv28_4@uint8 v_conv28_4@uint32;
(*   %arrayidx32.4 = getelementptr inbounds [25 x i8], [25 x i8]* %s, i64 0, i64 4 *)
(*   store i8 %conv28.4, i8* %arrayidx32.4, align 1 *)
mov s_4 v_conv28_4;
(*   %36 = load i8, i8* %a, align 1 *)
mov v36 a_0;
(*   %conv35.4 = zext i8 %36 to i32 *)
cast v_conv35_4@uint32 v36@uint8;
(*   %xor36.4 = xor i32 %conv35.4, 1 *)
(* You may need to modify here *)
xor uint32 v_xor36_4 v_conv35_4 (0x1)@uint32;
(*   %conv37.4 = trunc i32 %xor36.4 to i8 *)
split tmp_v_xor36_4 v_conv37_4 v_xor36_4 8;
vpc v_conv37_4@uint8 v_conv37_4@uint32;
(*   %arrayidx41.4 = getelementptr inbounds i8, i8* %r, i64 4 *)
(*   %37 = load i8, i8* %arrayidx41.4, align 1 *)
mov v37 r_4;
(*   %conv.i.4209 = zext i8 %37 to i32 *)
cast v_conv_i_4209@uint32 v37@uint8;
(*   %and.i.4210 = and i32 %conv.i.4209, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4210 v_conv_i_4209 (0x1)@uint32;
(*   %conv1.i.4211 = zext i8 %conv37.4 to i32 *)
cast v_conv1_i_4211@uint32 v_conv37_4@uint8;
(*   %mul.i.4212 = mul nsw i32 %and.i.4210, %conv1.i.4211 *)
mul v_mul_i_4212 v_and_i_4210 v_conv1_i_4211;
(*   %conv3.i.4213 = trunc i32 %mul.i.4212 to i8 *)
split tmp_v_mul_i_4212 v_conv3_i_4213 v_mul_i_4212 8;
vpc v_conv3_i_4213@uint8 v_conv3_i_4213@uint32;
(*   %conv4.i.4214 = zext i8 %37 to i32 *)
cast v_conv4_i_4214@uint32 v37@uint8;
(*   %shr.i.4215 = ashr i32 %conv4.i.4214, 1 *)
(* You may need to modify here *)
split v_shr_i_4215 tmp_to_be_used v_conv4_i_4214 1;
(*   %conv5.i.4216 = trunc i32 %shr.i.4215 to i8 *)
split tmp_v_shr_i_4215 v_conv5_i_4216 v_shr_i_4215 8;
vpc v_conv5_i_4216@uint8 v_conv5_i_4216@uint32;
(*   %conv6.i.4217 = zext i8 %conv37.4 to i32 *)
cast v_conv6_i_4217@uint32 v_conv37_4@uint8;
(*   %shl.i.4218 = shl i32 %conv6.i.4217, 1 *)
shls discard_42 v_shl_i_4218 v_conv6_i_4217 1;
(*   %conv7.i.4219 = trunc i32 %shl.i.4218 to i8 *)
split tmp_v_shl_i_4218 v_conv7_i_4219 v_shl_i_4218 8;
vpc v_conv7_i_4219@uint8 v_conv7_i_4219@uint32;
(*   %conv.i.1.4 = zext i8 %conv5.i.4216 to i32 *)
cast v_conv_i_1_4@uint32 v_conv5_i_4216@uint8;
(*   %and.i.1.4 = and i32 %conv.i.1.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_4 v_conv_i_1_4 (0x1)@uint32;
(*   %conv1.i.1.4 = zext i8 %conv7.i.4219 to i32 *)
cast v_conv1_i_1_4@uint32 v_conv7_i_4219@uint8;
(*   %mul.i.1.4 = mul nsw i32 %and.i.1.4, %conv1.i.1.4 *)
mul v_mul_i_1_4 v_and_i_1_4 v_conv1_i_1_4;
(*   %conv2.i.1.4 = zext i8 %conv3.i.4213 to i32 *)
cast v_conv2_i_1_4@uint32 v_conv3_i_4213@uint8;
(*   %xor.i.1.4 = xor i32 %conv2.i.1.4, %mul.i.1.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_4 v_conv2_i_1_4 v_mul_i_1_4;
(*   %conv3.i.1.4 = trunc i32 %xor.i.1.4 to i8 *)
split tmp_v_xor_i_1_4 v_conv3_i_1_4 v_xor_i_1_4 8;
vpc v_conv3_i_1_4@uint8 v_conv3_i_1_4@uint32;
(*   %conv4.i.1.4 = zext i8 %conv5.i.4216 to i32 *)
cast v_conv4_i_1_4@uint32 v_conv5_i_4216@uint8;
(*   %shr.i.1.4 = ashr i32 %conv4.i.1.4, 1 *)
(* You may need to modify here *)
split v_shr_i_1_4 tmp_to_be_used v_conv4_i_1_4 1;
(*   %conv5.i.1.4 = trunc i32 %shr.i.1.4 to i8 *)
split tmp_v_shr_i_1_4 v_conv5_i_1_4 v_shr_i_1_4 8;
vpc v_conv5_i_1_4@uint8 v_conv5_i_1_4@uint32;
(*   %conv6.i.1.4 = zext i8 %conv7.i.4219 to i32 *)
cast v_conv6_i_1_4@uint32 v_conv7_i_4219@uint8;
(*   %shl.i.1.4 = shl i32 %conv6.i.1.4, 1 *)
shls discard_43 v_shl_i_1_4 v_conv6_i_1_4 1;
(*   %conv7.i.1.4 = trunc i32 %shl.i.1.4 to i8 *)
split tmp_v_shl_i_1_4 v_conv7_i_1_4 v_shl_i_1_4 8;
vpc v_conv7_i_1_4@uint8 v_conv7_i_1_4@uint32;
(*   %conv.i.2.4 = zext i8 %conv5.i.1.4 to i32 *)
cast v_conv_i_2_4@uint32 v_conv5_i_1_4@uint8;
(*   %and.i.2.4 = and i32 %conv.i.2.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_4 v_conv_i_2_4 (0x1)@uint32;
(*   %conv1.i.2.4 = zext i8 %conv7.i.1.4 to i32 *)
cast v_conv1_i_2_4@uint32 v_conv7_i_1_4@uint8;
(*   %mul.i.2.4 = mul nsw i32 %and.i.2.4, %conv1.i.2.4 *)
mul v_mul_i_2_4 v_and_i_2_4 v_conv1_i_2_4;
(*   %conv2.i.2.4 = zext i8 %conv3.i.1.4 to i32 *)
cast v_conv2_i_2_4@uint32 v_conv3_i_1_4@uint8;
(*   %xor.i.2.4 = xor i32 %conv2.i.2.4, %mul.i.2.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_4 v_conv2_i_2_4 v_mul_i_2_4;
(*   %conv3.i.2.4 = trunc i32 %xor.i.2.4 to i8 *)
split tmp_v_xor_i_2_4 v_conv3_i_2_4 v_xor_i_2_4 8;
vpc v_conv3_i_2_4@uint8 v_conv3_i_2_4@uint32;
(*   %conv4.i.2.4 = zext i8 %conv5.i.1.4 to i32 *)
cast v_conv4_i_2_4@uint32 v_conv5_i_1_4@uint8;
(*   %shr.i.2.4 = ashr i32 %conv4.i.2.4, 1 *)
(* You may need to modify here *)
split v_shr_i_2_4 tmp_to_be_used v_conv4_i_2_4 1;
(*   %conv5.i.2.4 = trunc i32 %shr.i.2.4 to i8 *)
split tmp_v_shr_i_2_4 v_conv5_i_2_4 v_shr_i_2_4 8;
vpc v_conv5_i_2_4@uint8 v_conv5_i_2_4@uint32;
(*   %conv6.i.2.4 = zext i8 %conv7.i.1.4 to i32 *)
cast v_conv6_i_2_4@uint32 v_conv7_i_1_4@uint8;
(*   %shl.i.2.4 = shl i32 %conv6.i.2.4, 1 *)
shls discard_44 v_shl_i_2_4 v_conv6_i_2_4 1;
(*   %conv7.i.2.4 = trunc i32 %shl.i.2.4 to i8 *)
split tmp_v_shl_i_2_4 v_conv7_i_2_4 v_shl_i_2_4 8;
vpc v_conv7_i_2_4@uint8 v_conv7_i_2_4@uint32;
(*   %conv.i.3.4 = zext i8 %conv5.i.2.4 to i32 *)
cast v_conv_i_3_4@uint32 v_conv5_i_2_4@uint8;
(*   %and.i.3.4 = and i32 %conv.i.3.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_4 v_conv_i_3_4 (0x1)@uint32;
(*   %conv1.i.3.4 = zext i8 %conv7.i.2.4 to i32 *)
cast v_conv1_i_3_4@uint32 v_conv7_i_2_4@uint8;
(*   %mul.i.3.4 = mul nsw i32 %and.i.3.4, %conv1.i.3.4 *)
mul v_mul_i_3_4 v_and_i_3_4 v_conv1_i_3_4;
(*   %conv2.i.3.4 = zext i8 %conv3.i.2.4 to i32 *)
cast v_conv2_i_3_4@uint32 v_conv3_i_2_4@uint8;
(*   %xor.i.3.4 = xor i32 %conv2.i.3.4, %mul.i.3.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_4 v_conv2_i_3_4 v_mul_i_3_4;
(*   %conv3.i.3.4 = trunc i32 %xor.i.3.4 to i8 *)
split tmp_v_xor_i_3_4 v_conv3_i_3_4 v_xor_i_3_4 8;
vpc v_conv3_i_3_4@uint8 v_conv3_i_3_4@uint32;
(*   %conv4.i.3.4 = zext i8 %conv5.i.2.4 to i32 *)
cast v_conv4_i_3_4@uint32 v_conv5_i_2_4@uint8;
(*   %shr.i.3.4 = ashr i32 %conv4.i.3.4, 1 *)
(* You may need to modify here *)
split v_shr_i_3_4 tmp_to_be_used v_conv4_i_3_4 1;
(*   %conv5.i.3.4 = trunc i32 %shr.i.3.4 to i8 *)
split tmp_v_shr_i_3_4 v_conv5_i_3_4 v_shr_i_3_4 8;
vpc v_conv5_i_3_4@uint8 v_conv5_i_3_4@uint32;
(*   %conv6.i.3.4 = zext i8 %conv7.i.2.4 to i32 *)
cast v_conv6_i_3_4@uint32 v_conv7_i_2_4@uint8;
(*   %shl.i.3.4 = shl i32 %conv6.i.3.4, 1 *)
shls discard_45 v_shl_i_3_4 v_conv6_i_3_4 1;
(*   %conv7.i.3.4 = trunc i32 %shl.i.3.4 to i8 *)
split tmp_v_shl_i_3_4 v_conv7_i_3_4 v_shl_i_3_4 8;
vpc v_conv7_i_3_4@uint8 v_conv7_i_3_4@uint32;
(*   %conv.i.4.4 = zext i8 %conv5.i.3.4 to i32 *)
cast v_conv_i_4_4@uint32 v_conv5_i_3_4@uint8;
(*   %and.i.4.4 = and i32 %conv.i.4.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_4 v_conv_i_4_4 (0x1)@uint32;
(*   %conv1.i.4.4 = zext i8 %conv7.i.3.4 to i32 *)
cast v_conv1_i_4_4@uint32 v_conv7_i_3_4@uint8;
(*   %mul.i.4.4 = mul nsw i32 %and.i.4.4, %conv1.i.4.4 *)
mul v_mul_i_4_4 v_and_i_4_4 v_conv1_i_4_4;
(*   %conv2.i.4.4 = zext i8 %conv3.i.3.4 to i32 *)
cast v_conv2_i_4_4@uint32 v_conv3_i_3_4@uint8;
(*   %xor.i.4.4 = xor i32 %conv2.i.4.4, %mul.i.4.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_4 v_conv2_i_4_4 v_mul_i_4_4;
(*   %conv3.i.4.4 = trunc i32 %xor.i.4.4 to i8 *)
split tmp_v_xor_i_4_4 v_conv3_i_4_4 v_xor_i_4_4 8;
vpc v_conv3_i_4_4@uint8 v_conv3_i_4_4@uint32;
(*   %conv4.i.4.4 = zext i8 %conv5.i.3.4 to i32 *)
cast v_conv4_i_4_4@uint32 v_conv5_i_3_4@uint8;
(*   %shr.i.4.4 = ashr i32 %conv4.i.4.4, 1 *)
(* You may need to modify here *)
split v_shr_i_4_4 tmp_to_be_used v_conv4_i_4_4 1;
(*   %conv5.i.4.4 = trunc i32 %shr.i.4.4 to i8 *)
split tmp_v_shr_i_4_4 v_conv5_i_4_4 v_shr_i_4_4 8;
vpc v_conv5_i_4_4@uint8 v_conv5_i_4_4@uint32;
(*   %conv6.i.4.4 = zext i8 %conv7.i.3.4 to i32 *)
cast v_conv6_i_4_4@uint32 v_conv7_i_3_4@uint8;
(*   %shl.i.4.4 = shl i32 %conv6.i.4.4, 1 *)
shls discard_46 v_shl_i_4_4 v_conv6_i_4_4 1;
(*   %conv7.i.4.4 = trunc i32 %shl.i.4.4 to i8 *)
split tmp_v_shl_i_4_4 v_conv7_i_4_4 v_shl_i_4_4 8;
vpc v_conv7_i_4_4@uint8 v_conv7_i_4_4@uint32;
(*   %conv.i.5.4 = zext i8 %conv5.i.4.4 to i32 *)
cast v_conv_i_5_4@uint32 v_conv5_i_4_4@uint8;
(*   %and.i.5.4 = and i32 %conv.i.5.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_4 v_conv_i_5_4 (0x1)@uint32;
(*   %conv1.i.5.4 = zext i8 %conv7.i.4.4 to i32 *)
cast v_conv1_i_5_4@uint32 v_conv7_i_4_4@uint8;
(*   %mul.i.5.4 = mul nsw i32 %and.i.5.4, %conv1.i.5.4 *)
mul v_mul_i_5_4 v_and_i_5_4 v_conv1_i_5_4;
(*   %conv2.i.5.4 = zext i8 %conv3.i.4.4 to i32 *)
cast v_conv2_i_5_4@uint32 v_conv3_i_4_4@uint8;
(*   %xor.i.5.4 = xor i32 %conv2.i.5.4, %mul.i.5.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_4 v_conv2_i_5_4 v_mul_i_5_4;
(*   %conv3.i.5.4 = trunc i32 %xor.i.5.4 to i8 *)
split tmp_v_xor_i_5_4 v_conv3_i_5_4 v_xor_i_5_4 8;
vpc v_conv3_i_5_4@uint8 v_conv3_i_5_4@uint32;
(*   %conv4.i.5.4 = zext i8 %conv5.i.4.4 to i32 *)
cast v_conv4_i_5_4@uint32 v_conv5_i_4_4@uint8;
(*   %shr.i.5.4 = ashr i32 %conv4.i.5.4, 1 *)
(* You may need to modify here *)
split v_shr_i_5_4 tmp_to_be_used v_conv4_i_5_4 1;
(*   %conv5.i.5.4 = trunc i32 %shr.i.5.4 to i8 *)
split tmp_v_shr_i_5_4 v_conv5_i_5_4 v_shr_i_5_4 8;
vpc v_conv5_i_5_4@uint8 v_conv5_i_5_4@uint32;
(*   %conv6.i.5.4 = zext i8 %conv7.i.4.4 to i32 *)
cast v_conv6_i_5_4@uint32 v_conv7_i_4_4@uint8;
(*   %shl.i.5.4 = shl i32 %conv6.i.5.4, 1 *)
shls discard_47 v_shl_i_5_4 v_conv6_i_5_4 1;
(*   %conv7.i.5.4 = trunc i32 %shl.i.5.4 to i8 *)
split tmp_v_shl_i_5_4 v_conv7_i_5_4 v_shl_i_5_4 8;
vpc v_conv7_i_5_4@uint8 v_conv7_i_5_4@uint32;
(*   %conv.i.6.4 = zext i8 %conv5.i.5.4 to i32 *)
cast v_conv_i_6_4@uint32 v_conv5_i_5_4@uint8;
(*   %and.i.6.4 = and i32 %conv.i.6.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_4 v_conv_i_6_4 (0x1)@uint32;
(*   %conv1.i.6.4 = zext i8 %conv7.i.5.4 to i32 *)
cast v_conv1_i_6_4@uint32 v_conv7_i_5_4@uint8;
(*   %mul.i.6.4 = mul nsw i32 %and.i.6.4, %conv1.i.6.4 *)
mul v_mul_i_6_4 v_and_i_6_4 v_conv1_i_6_4;
(*   %conv2.i.6.4 = zext i8 %conv3.i.5.4 to i32 *)
cast v_conv2_i_6_4@uint32 v_conv3_i_5_4@uint8;
(*   %xor.i.6.4 = xor i32 %conv2.i.6.4, %mul.i.6.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_4 v_conv2_i_6_4 v_mul_i_6_4;
(*   %conv3.i.6.4 = trunc i32 %xor.i.6.4 to i8 *)
split tmp_v_xor_i_6_4 v_conv3_i_6_4 v_xor_i_6_4 8;
vpc v_conv3_i_6_4@uint8 v_conv3_i_6_4@uint32;
(*   %conv4.i.6.4 = zext i8 %conv5.i.5.4 to i32 *)
cast v_conv4_i_6_4@uint32 v_conv5_i_5_4@uint8;
(*   %shr.i.6.4 = ashr i32 %conv4.i.6.4, 1 *)
(* You may need to modify here *)
split v_shr_i_6_4 tmp_to_be_used v_conv4_i_6_4 1;
(*   %conv5.i.6.4 = trunc i32 %shr.i.6.4 to i8 *)
split tmp_v_shr_i_6_4 v_conv5_i_6_4 v_shr_i_6_4 8;
vpc v_conv5_i_6_4@uint8 v_conv5_i_6_4@uint32;
(*   %conv6.i.6.4 = zext i8 %conv7.i.5.4 to i32 *)
cast v_conv6_i_6_4@uint32 v_conv7_i_5_4@uint8;
(*   %shl.i.6.4 = shl i32 %conv6.i.6.4, 1 *)
shls discard_48 v_shl_i_6_4 v_conv6_i_6_4 1;
(*   %conv7.i.6.4 = trunc i32 %shl.i.6.4 to i8 *)
split tmp_v_shl_i_6_4 v_conv7_i_6_4 v_shl_i_6_4 8;
vpc v_conv7_i_6_4@uint8 v_conv7_i_6_4@uint32;
(*   %conv.i.7.4 = zext i8 %conv5.i.6.4 to i32 *)
cast v_conv_i_7_4@uint32 v_conv5_i_6_4@uint8;
(*   %and.i.7.4 = and i32 %conv.i.7.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_4 v_conv_i_7_4 (0x1)@uint32;
(*   %conv1.i.7.4 = zext i8 %conv7.i.6.4 to i32 *)
cast v_conv1_i_7_4@uint32 v_conv7_i_6_4@uint8;
(*   %mul.i.7.4 = mul nsw i32 %and.i.7.4, %conv1.i.7.4 *)
mul v_mul_i_7_4 v_and_i_7_4 v_conv1_i_7_4;
(*   %conv2.i.7.4 = zext i8 %conv3.i.6.4 to i32 *)
cast v_conv2_i_7_4@uint32 v_conv3_i_6_4@uint8;
(*   %xor.i.7.4 = xor i32 %conv2.i.7.4, %mul.i.7.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_4 v_conv2_i_7_4 v_mul_i_7_4;
(*   %conv3.i.7.4 = trunc i32 %xor.i.7.4 to i8 *)
split tmp_v_xor_i_7_4 v_conv3_i_7_4 v_xor_i_7_4 8;
vpc v_conv3_i_7_4@uint8 v_conv3_i_7_4@uint32;
(*   %arrayidx45.4 = getelementptr inbounds [25 x i8], [25 x i8]* %p0, i64 0, i64 4 *)
(*   store i8 %conv3.i.7.4, i8* %arrayidx45.4, align 1 *)
mov p0_4 v_conv3_i_7_4;
(*   %38 = load i8, i8* %a, align 1 *)
mov v38 a_0;
(*   %arrayidx51.4 = getelementptr inbounds [25 x i8], [25 x i8]* %s, i64 0, i64 4 *)
(*   %39 = load i8, i8* %arrayidx51.4, align 1 *)
mov v39 s_4;
(*   %conv.i127.4220 = zext i8 %39 to i32 *)
cast v_conv_i127_4220@uint32 v39@uint8;
(*   %and.i128.4221 = and i32 %conv.i127.4220, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_4221 v_conv_i127_4220 (0x1)@uint32;
(*   %conv1.i129.4222 = zext i8 %38 to i32 *)
cast v_conv1_i129_4222@uint32 v38@uint8;
(*   %mul.i130.4223 = mul nsw i32 %and.i128.4221, %conv1.i129.4222 *)
mul v_mul_i130_4223 v_and_i128_4221 v_conv1_i129_4222;
(*   %conv3.i133.4224 = trunc i32 %mul.i130.4223 to i8 *)
split tmp_v_mul_i130_4223 v_conv3_i133_4224 v_mul_i130_4223 8;
vpc v_conv3_i133_4224@uint8 v_conv3_i133_4224@uint32;
(*   %conv4.i134.4225 = zext i8 %39 to i32 *)
cast v_conv4_i134_4225@uint32 v39@uint8;
(*   %shr.i135.4226 = ashr i32 %conv4.i134.4225, 1 *)
(* You may need to modify here *)
split v_shr_i135_4226 tmp_to_be_used v_conv4_i134_4225 1;
(*   %conv5.i136.4227 = trunc i32 %shr.i135.4226 to i8 *)
split tmp_v_shr_i135_4226 v_conv5_i136_4227 v_shr_i135_4226 8;
vpc v_conv5_i136_4227@uint8 v_conv5_i136_4227@uint32;
(*   %conv6.i137.4228 = zext i8 %38 to i32 *)
cast v_conv6_i137_4228@uint32 v38@uint8;
(*   %shl.i138.4229 = shl i32 %conv6.i137.4228, 1 *)
shls discard_49 v_shl_i138_4229 v_conv6_i137_4228 1;
(*   %conv7.i139.4230 = trunc i32 %shl.i138.4229 to i8 *)
split tmp_v_shl_i138_4229 v_conv7_i139_4230 v_shl_i138_4229 8;
vpc v_conv7_i139_4230@uint8 v_conv7_i139_4230@uint32;
(*   %conv.i127.1.4 = zext i8 %conv5.i136.4227 to i32 *)
cast v_conv_i127_1_4@uint32 v_conv5_i136_4227@uint8;
(*   %and.i128.1.4 = and i32 %conv.i127.1.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1_4 v_conv_i127_1_4 (0x1)@uint32;
(*   %conv1.i129.1.4 = zext i8 %conv7.i139.4230 to i32 *)
cast v_conv1_i129_1_4@uint32 v_conv7_i139_4230@uint8;
(*   %mul.i130.1.4 = mul nsw i32 %and.i128.1.4, %conv1.i129.1.4 *)
mul v_mul_i130_1_4 v_and_i128_1_4 v_conv1_i129_1_4;
(*   %conv2.i131.1.4 = zext i8 %conv3.i133.4224 to i32 *)
cast v_conv2_i131_1_4@uint32 v_conv3_i133_4224@uint8;
(*   %xor.i132.1.4 = xor i32 %conv2.i131.1.4, %mul.i130.1.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_1_4 v_conv2_i131_1_4 v_mul_i130_1_4;
(*   %conv3.i133.1.4 = trunc i32 %xor.i132.1.4 to i8 *)
split tmp_v_xor_i132_1_4 v_conv3_i133_1_4 v_xor_i132_1_4 8;
vpc v_conv3_i133_1_4@uint8 v_conv3_i133_1_4@uint32;
(*   %conv4.i134.1.4 = zext i8 %conv5.i136.4227 to i32 *)
cast v_conv4_i134_1_4@uint32 v_conv5_i136_4227@uint8;
(*   %shr.i135.1.4 = ashr i32 %conv4.i134.1.4, 1 *)
(* You may need to modify here *)
split v_shr_i135_1_4 tmp_to_be_used v_conv4_i134_1_4 1;
(*   %conv5.i136.1.4 = trunc i32 %shr.i135.1.4 to i8 *)
split tmp_v_shr_i135_1_4 v_conv5_i136_1_4 v_shr_i135_1_4 8;
vpc v_conv5_i136_1_4@uint8 v_conv5_i136_1_4@uint32;
(*   %conv6.i137.1.4 = zext i8 %conv7.i139.4230 to i32 *)
cast v_conv6_i137_1_4@uint32 v_conv7_i139_4230@uint8;
(*   %shl.i138.1.4 = shl i32 %conv6.i137.1.4, 1 *)
shls discard_50 v_shl_i138_1_4 v_conv6_i137_1_4 1;
(*   %conv7.i139.1.4 = trunc i32 %shl.i138.1.4 to i8 *)
split tmp_v_shl_i138_1_4 v_conv7_i139_1_4 v_shl_i138_1_4 8;
vpc v_conv7_i139_1_4@uint8 v_conv7_i139_1_4@uint32;
(*   %conv.i127.2.4 = zext i8 %conv5.i136.1.4 to i32 *)
cast v_conv_i127_2_4@uint32 v_conv5_i136_1_4@uint8;
(*   %and.i128.2.4 = and i32 %conv.i127.2.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_2_4 v_conv_i127_2_4 (0x1)@uint32;
(*   %conv1.i129.2.4 = zext i8 %conv7.i139.1.4 to i32 *)
cast v_conv1_i129_2_4@uint32 v_conv7_i139_1_4@uint8;
(*   %mul.i130.2.4 = mul nsw i32 %and.i128.2.4, %conv1.i129.2.4 *)
mul v_mul_i130_2_4 v_and_i128_2_4 v_conv1_i129_2_4;
(*   %conv2.i131.2.4 = zext i8 %conv3.i133.1.4 to i32 *)
cast v_conv2_i131_2_4@uint32 v_conv3_i133_1_4@uint8;
(*   %xor.i132.2.4 = xor i32 %conv2.i131.2.4, %mul.i130.2.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_2_4 v_conv2_i131_2_4 v_mul_i130_2_4;
(*   %conv3.i133.2.4 = trunc i32 %xor.i132.2.4 to i8 *)
split tmp_v_xor_i132_2_4 v_conv3_i133_2_4 v_xor_i132_2_4 8;
vpc v_conv3_i133_2_4@uint8 v_conv3_i133_2_4@uint32;
(*   %conv4.i134.2.4 = zext i8 %conv5.i136.1.4 to i32 *)
cast v_conv4_i134_2_4@uint32 v_conv5_i136_1_4@uint8;
(*   %shr.i135.2.4 = ashr i32 %conv4.i134.2.4, 1 *)
(* You may need to modify here *)
split v_shr_i135_2_4 tmp_to_be_used v_conv4_i134_2_4 1;
(*   %conv5.i136.2.4 = trunc i32 %shr.i135.2.4 to i8 *)
split tmp_v_shr_i135_2_4 v_conv5_i136_2_4 v_shr_i135_2_4 8;
vpc v_conv5_i136_2_4@uint8 v_conv5_i136_2_4@uint32;
(*   %conv6.i137.2.4 = zext i8 %conv7.i139.1.4 to i32 *)
cast v_conv6_i137_2_4@uint32 v_conv7_i139_1_4@uint8;
(*   %shl.i138.2.4 = shl i32 %conv6.i137.2.4, 1 *)
shls discard_51 v_shl_i138_2_4 v_conv6_i137_2_4 1;
(*   %conv7.i139.2.4 = trunc i32 %shl.i138.2.4 to i8 *)
split tmp_v_shl_i138_2_4 v_conv7_i139_2_4 v_shl_i138_2_4 8;
vpc v_conv7_i139_2_4@uint8 v_conv7_i139_2_4@uint32;
(*   %conv.i127.3.4 = zext i8 %conv5.i136.2.4 to i32 *)
cast v_conv_i127_3_4@uint32 v_conv5_i136_2_4@uint8;
(*   %and.i128.3.4 = and i32 %conv.i127.3.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_3_4 v_conv_i127_3_4 (0x1)@uint32;
(*   %conv1.i129.3.4 = zext i8 %conv7.i139.2.4 to i32 *)
cast v_conv1_i129_3_4@uint32 v_conv7_i139_2_4@uint8;
(*   %mul.i130.3.4 = mul nsw i32 %and.i128.3.4, %conv1.i129.3.4 *)
mul v_mul_i130_3_4 v_and_i128_3_4 v_conv1_i129_3_4;
(*   %conv2.i131.3.4 = zext i8 %conv3.i133.2.4 to i32 *)
cast v_conv2_i131_3_4@uint32 v_conv3_i133_2_4@uint8;
(*   %xor.i132.3.4 = xor i32 %conv2.i131.3.4, %mul.i130.3.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_3_4 v_conv2_i131_3_4 v_mul_i130_3_4;
(*   %conv3.i133.3.4 = trunc i32 %xor.i132.3.4 to i8 *)
split tmp_v_xor_i132_3_4 v_conv3_i133_3_4 v_xor_i132_3_4 8;
vpc v_conv3_i133_3_4@uint8 v_conv3_i133_3_4@uint32;
(*   %conv4.i134.3.4 = zext i8 %conv5.i136.2.4 to i32 *)
cast v_conv4_i134_3_4@uint32 v_conv5_i136_2_4@uint8;
(*   %shr.i135.3.4 = ashr i32 %conv4.i134.3.4, 1 *)
(* You may need to modify here *)
split v_shr_i135_3_4 tmp_to_be_used v_conv4_i134_3_4 1;
(*   %conv5.i136.3.4 = trunc i32 %shr.i135.3.4 to i8 *)
split tmp_v_shr_i135_3_4 v_conv5_i136_3_4 v_shr_i135_3_4 8;
vpc v_conv5_i136_3_4@uint8 v_conv5_i136_3_4@uint32;
(*   %conv6.i137.3.4 = zext i8 %conv7.i139.2.4 to i32 *)
cast v_conv6_i137_3_4@uint32 v_conv7_i139_2_4@uint8;
(*   %shl.i138.3.4 = shl i32 %conv6.i137.3.4, 1 *)
shls discard_52 v_shl_i138_3_4 v_conv6_i137_3_4 1;
(*   %conv7.i139.3.4 = trunc i32 %shl.i138.3.4 to i8 *)
split tmp_v_shl_i138_3_4 v_conv7_i139_3_4 v_shl_i138_3_4 8;
vpc v_conv7_i139_3_4@uint8 v_conv7_i139_3_4@uint32;
(*   %conv.i127.4.4 = zext i8 %conv5.i136.3.4 to i32 *)
cast v_conv_i127_4_4@uint32 v_conv5_i136_3_4@uint8;
(*   %and.i128.4.4 = and i32 %conv.i127.4.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_4_4 v_conv_i127_4_4 (0x1)@uint32;
(*   %conv1.i129.4.4 = zext i8 %conv7.i139.3.4 to i32 *)
cast v_conv1_i129_4_4@uint32 v_conv7_i139_3_4@uint8;
(*   %mul.i130.4.4 = mul nsw i32 %and.i128.4.4, %conv1.i129.4.4 *)
mul v_mul_i130_4_4 v_and_i128_4_4 v_conv1_i129_4_4;
(*   %conv2.i131.4.4 = zext i8 %conv3.i133.3.4 to i32 *)
cast v_conv2_i131_4_4@uint32 v_conv3_i133_3_4@uint8;
(*   %xor.i132.4.4 = xor i32 %conv2.i131.4.4, %mul.i130.4.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_4_4 v_conv2_i131_4_4 v_mul_i130_4_4;
(*   %conv3.i133.4.4 = trunc i32 %xor.i132.4.4 to i8 *)
split tmp_v_xor_i132_4_4 v_conv3_i133_4_4 v_xor_i132_4_4 8;
vpc v_conv3_i133_4_4@uint8 v_conv3_i133_4_4@uint32;
(*   %conv4.i134.4.4 = zext i8 %conv5.i136.3.4 to i32 *)
cast v_conv4_i134_4_4@uint32 v_conv5_i136_3_4@uint8;
(*   %shr.i135.4.4 = ashr i32 %conv4.i134.4.4, 1 *)
(* You may need to modify here *)
split v_shr_i135_4_4 tmp_to_be_used v_conv4_i134_4_4 1;
(*   %conv5.i136.4.4 = trunc i32 %shr.i135.4.4 to i8 *)
split tmp_v_shr_i135_4_4 v_conv5_i136_4_4 v_shr_i135_4_4 8;
vpc v_conv5_i136_4_4@uint8 v_conv5_i136_4_4@uint32;
(*   %conv6.i137.4.4 = zext i8 %conv7.i139.3.4 to i32 *)
cast v_conv6_i137_4_4@uint32 v_conv7_i139_3_4@uint8;
(*   %shl.i138.4.4 = shl i32 %conv6.i137.4.4, 1 *)
shls discard_53 v_shl_i138_4_4 v_conv6_i137_4_4 1;
(*   %conv7.i139.4.4 = trunc i32 %shl.i138.4.4 to i8 *)
split tmp_v_shl_i138_4_4 v_conv7_i139_4_4 v_shl_i138_4_4 8;
vpc v_conv7_i139_4_4@uint8 v_conv7_i139_4_4@uint32;
(*   %conv.i127.5.4 = zext i8 %conv5.i136.4.4 to i32 *)
cast v_conv_i127_5_4@uint32 v_conv5_i136_4_4@uint8;
(*   %and.i128.5.4 = and i32 %conv.i127.5.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_5_4 v_conv_i127_5_4 (0x1)@uint32;
(*   %conv1.i129.5.4 = zext i8 %conv7.i139.4.4 to i32 *)
cast v_conv1_i129_5_4@uint32 v_conv7_i139_4_4@uint8;
(*   %mul.i130.5.4 = mul nsw i32 %and.i128.5.4, %conv1.i129.5.4 *)
mul v_mul_i130_5_4 v_and_i128_5_4 v_conv1_i129_5_4;
(*   %conv2.i131.5.4 = zext i8 %conv3.i133.4.4 to i32 *)
cast v_conv2_i131_5_4@uint32 v_conv3_i133_4_4@uint8;
(*   %xor.i132.5.4 = xor i32 %conv2.i131.5.4, %mul.i130.5.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_5_4 v_conv2_i131_5_4 v_mul_i130_5_4;
(*   %conv3.i133.5.4 = trunc i32 %xor.i132.5.4 to i8 *)
split tmp_v_xor_i132_5_4 v_conv3_i133_5_4 v_xor_i132_5_4 8;
vpc v_conv3_i133_5_4@uint8 v_conv3_i133_5_4@uint32;
(*   %conv4.i134.5.4 = zext i8 %conv5.i136.4.4 to i32 *)
cast v_conv4_i134_5_4@uint32 v_conv5_i136_4_4@uint8;
(*   %shr.i135.5.4 = ashr i32 %conv4.i134.5.4, 1 *)
(* You may need to modify here *)
split v_shr_i135_5_4 tmp_to_be_used v_conv4_i134_5_4 1;
(*   %conv5.i136.5.4 = trunc i32 %shr.i135.5.4 to i8 *)
split tmp_v_shr_i135_5_4 v_conv5_i136_5_4 v_shr_i135_5_4 8;
vpc v_conv5_i136_5_4@uint8 v_conv5_i136_5_4@uint32;
(*   %conv6.i137.5.4 = zext i8 %conv7.i139.4.4 to i32 *)
cast v_conv6_i137_5_4@uint32 v_conv7_i139_4_4@uint8;
(*   %shl.i138.5.4 = shl i32 %conv6.i137.5.4, 1 *)
shls discard_54 v_shl_i138_5_4 v_conv6_i137_5_4 1;
(*   %conv7.i139.5.4 = trunc i32 %shl.i138.5.4 to i8 *)
split tmp_v_shl_i138_5_4 v_conv7_i139_5_4 v_shl_i138_5_4 8;
vpc v_conv7_i139_5_4@uint8 v_conv7_i139_5_4@uint32;
(*   %conv.i127.6.4 = zext i8 %conv5.i136.5.4 to i32 *)
cast v_conv_i127_6_4@uint32 v_conv5_i136_5_4@uint8;
(*   %and.i128.6.4 = and i32 %conv.i127.6.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_6_4 v_conv_i127_6_4 (0x1)@uint32;
(*   %conv1.i129.6.4 = zext i8 %conv7.i139.5.4 to i32 *)
cast v_conv1_i129_6_4@uint32 v_conv7_i139_5_4@uint8;
(*   %mul.i130.6.4 = mul nsw i32 %and.i128.6.4, %conv1.i129.6.4 *)
mul v_mul_i130_6_4 v_and_i128_6_4 v_conv1_i129_6_4;
(*   %conv2.i131.6.4 = zext i8 %conv3.i133.5.4 to i32 *)
cast v_conv2_i131_6_4@uint32 v_conv3_i133_5_4@uint8;
(*   %xor.i132.6.4 = xor i32 %conv2.i131.6.4, %mul.i130.6.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_6_4 v_conv2_i131_6_4 v_mul_i130_6_4;
(*   %conv3.i133.6.4 = trunc i32 %xor.i132.6.4 to i8 *)
split tmp_v_xor_i132_6_4 v_conv3_i133_6_4 v_xor_i132_6_4 8;
vpc v_conv3_i133_6_4@uint8 v_conv3_i133_6_4@uint32;
(*   %conv4.i134.6.4 = zext i8 %conv5.i136.5.4 to i32 *)
cast v_conv4_i134_6_4@uint32 v_conv5_i136_5_4@uint8;
(*   %shr.i135.6.4 = ashr i32 %conv4.i134.6.4, 1 *)
(* You may need to modify here *)
split v_shr_i135_6_4 tmp_to_be_used v_conv4_i134_6_4 1;
(*   %conv5.i136.6.4 = trunc i32 %shr.i135.6.4 to i8 *)
split tmp_v_shr_i135_6_4 v_conv5_i136_6_4 v_shr_i135_6_4 8;
vpc v_conv5_i136_6_4@uint8 v_conv5_i136_6_4@uint32;
(*   %conv6.i137.6.4 = zext i8 %conv7.i139.5.4 to i32 *)
cast v_conv6_i137_6_4@uint32 v_conv7_i139_5_4@uint8;
(*   %shl.i138.6.4 = shl i32 %conv6.i137.6.4, 1 *)
shls discard_55 v_shl_i138_6_4 v_conv6_i137_6_4 1;
(*   %conv7.i139.6.4 = trunc i32 %shl.i138.6.4 to i8 *)
split tmp_v_shl_i138_6_4 v_conv7_i139_6_4 v_shl_i138_6_4 8;
vpc v_conv7_i139_6_4@uint8 v_conv7_i139_6_4@uint32;
(*   %conv.i127.7.4 = zext i8 %conv5.i136.6.4 to i32 *)
cast v_conv_i127_7_4@uint32 v_conv5_i136_6_4@uint8;
(*   %and.i128.7.4 = and i32 %conv.i127.7.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_7_4 v_conv_i127_7_4 (0x1)@uint32;
(*   %conv1.i129.7.4 = zext i8 %conv7.i139.6.4 to i32 *)
cast v_conv1_i129_7_4@uint32 v_conv7_i139_6_4@uint8;
(*   %mul.i130.7.4 = mul nsw i32 %and.i128.7.4, %conv1.i129.7.4 *)
mul v_mul_i130_7_4 v_and_i128_7_4 v_conv1_i129_7_4;
(*   %conv2.i131.7.4 = zext i8 %conv3.i133.6.4 to i32 *)
cast v_conv2_i131_7_4@uint32 v_conv3_i133_6_4@uint8;
(*   %xor.i132.7.4 = xor i32 %conv2.i131.7.4, %mul.i130.7.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_7_4 v_conv2_i131_7_4 v_mul_i130_7_4;
(*   %conv3.i133.7.4 = trunc i32 %xor.i132.7.4 to i8 *)
split tmp_v_xor_i132_7_4 v_conv3_i133_7_4 v_xor_i132_7_4 8;
vpc v_conv3_i133_7_4@uint8 v_conv3_i133_7_4@uint32;
(*   %arrayidx56.4 = getelementptr inbounds [25 x i8], [25 x i8]* %p1, i64 0, i64 4 *)
(*   store i8 %conv3.i133.7.4, i8* %arrayidx56.4, align 1 *)
mov p1_4 v_conv3_i133_7_4;
(*   %arrayidx60.4 = getelementptr inbounds [25 x i8], [25 x i8]* %p0, i64 0, i64 4 *)
(*   %40 = load i8, i8* %arrayidx60.4, align 1 *)
mov v40 p0_4;
(*   %conv61.4 = zext i8 %40 to i32 *)
cast v_conv61_4@uint32 v40@uint8;
(*   %arrayidx65.4 = getelementptr inbounds [25 x i8], [25 x i8]* %p1, i64 0, i64 4 *)
(*   %41 = load i8, i8* %arrayidx65.4, align 1 *)
mov v41 p1_4;
(*   %conv66.4 = zext i8 %41 to i32 *)
cast v_conv66_4@uint32 v41@uint8;
(*   %xor67.4 = xor i32 %conv61.4, %conv66.4 *)
(* You may need to modify here *)
xor uint32 v_xor67_4 v_conv61_4 v_conv66_4;
(*   %conv68.4 = trunc i32 %xor67.4 to i8 *)
split tmp_v_xor67_4 v_conv68_4 v_xor67_4 8;
vpc v_conv68_4@uint8 v_conv68_4@uint32;
(*   %arrayidx72.4 = getelementptr inbounds [25 x i8], [25 x i8]* %z, i64 0, i64 4 *)
(*   store i8 %conv68.4, i8* %arrayidx72.4, align 1 *)
mov z_4 v_conv68_4;
(*   %arrayidx34.1 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %arrayidx47.1 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %42 = load i8, i8* %b, align 1 *)
mov v42 b_0;
(*   %conv.1232 = zext i8 %42 to i32 *)
cast v_conv_1232@uint32 v42@uint8;
(*   %arrayidx26.1234 = getelementptr inbounds i8, i8* %r, i64 5 *)
(*   %43 = load i8, i8* %arrayidx26.1234, align 1 *)
mov v43 r_5;
(*   %conv27.1235 = zext i8 %43 to i32 *)
cast v_conv27_1235@uint32 v43@uint8;
(*   %xor.1236 = xor i32 %conv.1232, %conv27.1235 *)
(* You may need to modify here *)
xor uint32 v_xor_1236 v_conv_1232 v_conv27_1235;
(*   %conv28.1237 = trunc i32 %xor.1236 to i8 *)
split tmp_v_xor_1236 v_conv28_1237 v_xor_1236 8;
vpc v_conv28_1237@uint8 v_conv28_1237@uint32;
(*   %arrayidx32.1239 = getelementptr inbounds [25 x i8], [25 x i8]* %s, i64 0, i64 5 *)
(*   store i8 %conv28.1237, i8* %arrayidx32.1239, align 1 *)
mov s_5 v_conv28_1237;
(*   %44 = load i8, i8* %arrayidx34.1, align 1 *)
mov v44 a_1;
(*   %conv35.1240 = zext i8 %44 to i32 *)
cast v_conv35_1240@uint32 v44@uint8;
(*   %xor36.1241 = xor i32 %conv35.1240, 1 *)
(* You may need to modify here *)
xor uint32 v_xor36_1241 v_conv35_1240 (0x1)@uint32;
(*   %conv37.1242 = trunc i32 %xor36.1241 to i8 *)
split tmp_v_xor36_1241 v_conv37_1242 v_xor36_1241 8;
vpc v_conv37_1242@uint8 v_conv37_1242@uint32;
(*   %arrayidx41.1244 = getelementptr inbounds i8, i8* %r, i64 5 *)
(*   %45 = load i8, i8* %arrayidx41.1244, align 1 *)
mov v45 r_5;
(*   %conv.i.1246 = zext i8 %45 to i32 *)
cast v_conv_i_1246@uint32 v45@uint8;
(*   %and.i.1247 = and i32 %conv.i.1246, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1247 v_conv_i_1246 (0x1)@uint32;
(*   %conv1.i.1248 = zext i8 %conv37.1242 to i32 *)
cast v_conv1_i_1248@uint32 v_conv37_1242@uint8;
(*   %mul.i.1249 = mul nsw i32 %and.i.1247, %conv1.i.1248 *)
mul v_mul_i_1249 v_and_i_1247 v_conv1_i_1248;
(*   %conv3.i.1250 = trunc i32 %mul.i.1249 to i8 *)
split tmp_v_mul_i_1249 v_conv3_i_1250 v_mul_i_1249 8;
vpc v_conv3_i_1250@uint8 v_conv3_i_1250@uint32;
(*   %conv4.i.1251 = zext i8 %45 to i32 *)
cast v_conv4_i_1251@uint32 v45@uint8;
(*   %shr.i.1252 = ashr i32 %conv4.i.1251, 1 *)
(* You may need to modify here *)
split v_shr_i_1252 tmp_to_be_used v_conv4_i_1251 1;
(*   %conv5.i.1253 = trunc i32 %shr.i.1252 to i8 *)
split tmp_v_shr_i_1252 v_conv5_i_1253 v_shr_i_1252 8;
vpc v_conv5_i_1253@uint8 v_conv5_i_1253@uint32;
(*   %conv6.i.1254 = zext i8 %conv37.1242 to i32 *)
cast v_conv6_i_1254@uint32 v_conv37_1242@uint8;
(*   %shl.i.1255 = shl i32 %conv6.i.1254, 1 *)
shls discard_56 v_shl_i_1255 v_conv6_i_1254 1;
(*   %conv7.i.1256 = trunc i32 %shl.i.1255 to i8 *)
split tmp_v_shl_i_1255 v_conv7_i_1256 v_shl_i_1255 8;
vpc v_conv7_i_1256@uint8 v_conv7_i_1256@uint32;
(*   %conv.i.1.1257 = zext i8 %conv5.i.1253 to i32 *)
cast v_conv_i_1_1257@uint32 v_conv5_i_1253@uint8;
(*   %and.i.1.1258 = and i32 %conv.i.1.1257, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_1258 v_conv_i_1_1257 (0x1)@uint32;
(*   %conv1.i.1.1259 = zext i8 %conv7.i.1256 to i32 *)
cast v_conv1_i_1_1259@uint32 v_conv7_i_1256@uint8;
(*   %mul.i.1.1260 = mul nsw i32 %and.i.1.1258, %conv1.i.1.1259 *)
mul v_mul_i_1_1260 v_and_i_1_1258 v_conv1_i_1_1259;
(*   %conv2.i.1.1261 = zext i8 %conv3.i.1250 to i32 *)
cast v_conv2_i_1_1261@uint32 v_conv3_i_1250@uint8;
(*   %xor.i.1.1262 = xor i32 %conv2.i.1.1261, %mul.i.1.1260 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_1262 v_conv2_i_1_1261 v_mul_i_1_1260;
(*   %conv3.i.1.1263 = trunc i32 %xor.i.1.1262 to i8 *)
split tmp_v_xor_i_1_1262 v_conv3_i_1_1263 v_xor_i_1_1262 8;
vpc v_conv3_i_1_1263@uint8 v_conv3_i_1_1263@uint32;
(*   %conv4.i.1.1264 = zext i8 %conv5.i.1253 to i32 *)
cast v_conv4_i_1_1264@uint32 v_conv5_i_1253@uint8;
(*   %shr.i.1.1265 = ashr i32 %conv4.i.1.1264, 1 *)
(* You may need to modify here *)
split v_shr_i_1_1265 tmp_to_be_used v_conv4_i_1_1264 1;
(*   %conv5.i.1.1266 = trunc i32 %shr.i.1.1265 to i8 *)
split tmp_v_shr_i_1_1265 v_conv5_i_1_1266 v_shr_i_1_1265 8;
vpc v_conv5_i_1_1266@uint8 v_conv5_i_1_1266@uint32;
(*   %conv6.i.1.1267 = zext i8 %conv7.i.1256 to i32 *)
cast v_conv6_i_1_1267@uint32 v_conv7_i_1256@uint8;
(*   %shl.i.1.1268 = shl i32 %conv6.i.1.1267, 1 *)
shls discard_57 v_shl_i_1_1268 v_conv6_i_1_1267 1;
(*   %conv7.i.1.1269 = trunc i32 %shl.i.1.1268 to i8 *)
split tmp_v_shl_i_1_1268 v_conv7_i_1_1269 v_shl_i_1_1268 8;
vpc v_conv7_i_1_1269@uint8 v_conv7_i_1_1269@uint32;
(*   %conv.i.2.1270 = zext i8 %conv5.i.1.1266 to i32 *)
cast v_conv_i_2_1270@uint32 v_conv5_i_1_1266@uint8;
(*   %and.i.2.1271 = and i32 %conv.i.2.1270, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_1271 v_conv_i_2_1270 (0x1)@uint32;
(*   %conv1.i.2.1272 = zext i8 %conv7.i.1.1269 to i32 *)
cast v_conv1_i_2_1272@uint32 v_conv7_i_1_1269@uint8;
(*   %mul.i.2.1273 = mul nsw i32 %and.i.2.1271, %conv1.i.2.1272 *)
mul v_mul_i_2_1273 v_and_i_2_1271 v_conv1_i_2_1272;
(*   %conv2.i.2.1274 = zext i8 %conv3.i.1.1263 to i32 *)
cast v_conv2_i_2_1274@uint32 v_conv3_i_1_1263@uint8;
(*   %xor.i.2.1275 = xor i32 %conv2.i.2.1274, %mul.i.2.1273 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_1275 v_conv2_i_2_1274 v_mul_i_2_1273;
(*   %conv3.i.2.1276 = trunc i32 %xor.i.2.1275 to i8 *)
split tmp_v_xor_i_2_1275 v_conv3_i_2_1276 v_xor_i_2_1275 8;
vpc v_conv3_i_2_1276@uint8 v_conv3_i_2_1276@uint32;
(*   %conv4.i.2.1277 = zext i8 %conv5.i.1.1266 to i32 *)
cast v_conv4_i_2_1277@uint32 v_conv5_i_1_1266@uint8;
(*   %shr.i.2.1278 = ashr i32 %conv4.i.2.1277, 1 *)
(* You may need to modify here *)
split v_shr_i_2_1278 tmp_to_be_used v_conv4_i_2_1277 1;
(*   %conv5.i.2.1279 = trunc i32 %shr.i.2.1278 to i8 *)
split tmp_v_shr_i_2_1278 v_conv5_i_2_1279 v_shr_i_2_1278 8;
vpc v_conv5_i_2_1279@uint8 v_conv5_i_2_1279@uint32;
(*   %conv6.i.2.1280 = zext i8 %conv7.i.1.1269 to i32 *)
cast v_conv6_i_2_1280@uint32 v_conv7_i_1_1269@uint8;
(*   %shl.i.2.1281 = shl i32 %conv6.i.2.1280, 1 *)
shls discard_58 v_shl_i_2_1281 v_conv6_i_2_1280 1;
(*   %conv7.i.2.1282 = trunc i32 %shl.i.2.1281 to i8 *)
split tmp_v_shl_i_2_1281 v_conv7_i_2_1282 v_shl_i_2_1281 8;
vpc v_conv7_i_2_1282@uint8 v_conv7_i_2_1282@uint32;
(*   %conv.i.3.1283 = zext i8 %conv5.i.2.1279 to i32 *)
cast v_conv_i_3_1283@uint32 v_conv5_i_2_1279@uint8;
(*   %and.i.3.1284 = and i32 %conv.i.3.1283, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_1284 v_conv_i_3_1283 (0x1)@uint32;
(*   %conv1.i.3.1285 = zext i8 %conv7.i.2.1282 to i32 *)
cast v_conv1_i_3_1285@uint32 v_conv7_i_2_1282@uint8;
(*   %mul.i.3.1286 = mul nsw i32 %and.i.3.1284, %conv1.i.3.1285 *)
mul v_mul_i_3_1286 v_and_i_3_1284 v_conv1_i_3_1285;
(*   %conv2.i.3.1287 = zext i8 %conv3.i.2.1276 to i32 *)
cast v_conv2_i_3_1287@uint32 v_conv3_i_2_1276@uint8;
(*   %xor.i.3.1288 = xor i32 %conv2.i.3.1287, %mul.i.3.1286 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_1288 v_conv2_i_3_1287 v_mul_i_3_1286;
(*   %conv3.i.3.1289 = trunc i32 %xor.i.3.1288 to i8 *)
split tmp_v_xor_i_3_1288 v_conv3_i_3_1289 v_xor_i_3_1288 8;
vpc v_conv3_i_3_1289@uint8 v_conv3_i_3_1289@uint32;
(*   %conv4.i.3.1290 = zext i8 %conv5.i.2.1279 to i32 *)
cast v_conv4_i_3_1290@uint32 v_conv5_i_2_1279@uint8;
(*   %shr.i.3.1291 = ashr i32 %conv4.i.3.1290, 1 *)
(* You may need to modify here *)
split v_shr_i_3_1291 tmp_to_be_used v_conv4_i_3_1290 1;
(*   %conv5.i.3.1292 = trunc i32 %shr.i.3.1291 to i8 *)
split tmp_v_shr_i_3_1291 v_conv5_i_3_1292 v_shr_i_3_1291 8;
vpc v_conv5_i_3_1292@uint8 v_conv5_i_3_1292@uint32;
(*   %conv6.i.3.1293 = zext i8 %conv7.i.2.1282 to i32 *)
cast v_conv6_i_3_1293@uint32 v_conv7_i_2_1282@uint8;
(*   %shl.i.3.1294 = shl i32 %conv6.i.3.1293, 1 *)
shls discard_59 v_shl_i_3_1294 v_conv6_i_3_1293 1;
(*   %conv7.i.3.1295 = trunc i32 %shl.i.3.1294 to i8 *)
split tmp_v_shl_i_3_1294 v_conv7_i_3_1295 v_shl_i_3_1294 8;
vpc v_conv7_i_3_1295@uint8 v_conv7_i_3_1295@uint32;
(*   %conv.i.4.1296 = zext i8 %conv5.i.3.1292 to i32 *)
cast v_conv_i_4_1296@uint32 v_conv5_i_3_1292@uint8;
(*   %and.i.4.1297 = and i32 %conv.i.4.1296, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_1297 v_conv_i_4_1296 (0x1)@uint32;
(*   %conv1.i.4.1298 = zext i8 %conv7.i.3.1295 to i32 *)
cast v_conv1_i_4_1298@uint32 v_conv7_i_3_1295@uint8;
(*   %mul.i.4.1299 = mul nsw i32 %and.i.4.1297, %conv1.i.4.1298 *)
mul v_mul_i_4_1299 v_and_i_4_1297 v_conv1_i_4_1298;
(*   %conv2.i.4.1300 = zext i8 %conv3.i.3.1289 to i32 *)
cast v_conv2_i_4_1300@uint32 v_conv3_i_3_1289@uint8;
(*   %xor.i.4.1301 = xor i32 %conv2.i.4.1300, %mul.i.4.1299 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_1301 v_conv2_i_4_1300 v_mul_i_4_1299;
(*   %conv3.i.4.1302 = trunc i32 %xor.i.4.1301 to i8 *)
split tmp_v_xor_i_4_1301 v_conv3_i_4_1302 v_xor_i_4_1301 8;
vpc v_conv3_i_4_1302@uint8 v_conv3_i_4_1302@uint32;
(*   %conv4.i.4.1303 = zext i8 %conv5.i.3.1292 to i32 *)
cast v_conv4_i_4_1303@uint32 v_conv5_i_3_1292@uint8;
(*   %shr.i.4.1304 = ashr i32 %conv4.i.4.1303, 1 *)
(* You may need to modify here *)
split v_shr_i_4_1304 tmp_to_be_used v_conv4_i_4_1303 1;
(*   %conv5.i.4.1305 = trunc i32 %shr.i.4.1304 to i8 *)
split tmp_v_shr_i_4_1304 v_conv5_i_4_1305 v_shr_i_4_1304 8;
vpc v_conv5_i_4_1305@uint8 v_conv5_i_4_1305@uint32;
(*   %conv6.i.4.1306 = zext i8 %conv7.i.3.1295 to i32 *)
cast v_conv6_i_4_1306@uint32 v_conv7_i_3_1295@uint8;
(*   %shl.i.4.1307 = shl i32 %conv6.i.4.1306, 1 *)
shls discard_60 v_shl_i_4_1307 v_conv6_i_4_1306 1;
(*   %conv7.i.4.1308 = trunc i32 %shl.i.4.1307 to i8 *)
split tmp_v_shl_i_4_1307 v_conv7_i_4_1308 v_shl_i_4_1307 8;
vpc v_conv7_i_4_1308@uint8 v_conv7_i_4_1308@uint32;
(*   %conv.i.5.1309 = zext i8 %conv5.i.4.1305 to i32 *)
cast v_conv_i_5_1309@uint32 v_conv5_i_4_1305@uint8;
(*   %and.i.5.1310 = and i32 %conv.i.5.1309, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_1310 v_conv_i_5_1309 (0x1)@uint32;
(*   %conv1.i.5.1311 = zext i8 %conv7.i.4.1308 to i32 *)
cast v_conv1_i_5_1311@uint32 v_conv7_i_4_1308@uint8;
(*   %mul.i.5.1312 = mul nsw i32 %and.i.5.1310, %conv1.i.5.1311 *)
mul v_mul_i_5_1312 v_and_i_5_1310 v_conv1_i_5_1311;
(*   %conv2.i.5.1313 = zext i8 %conv3.i.4.1302 to i32 *)
cast v_conv2_i_5_1313@uint32 v_conv3_i_4_1302@uint8;
(*   %xor.i.5.1314 = xor i32 %conv2.i.5.1313, %mul.i.5.1312 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_1314 v_conv2_i_5_1313 v_mul_i_5_1312;
(*   %conv3.i.5.1315 = trunc i32 %xor.i.5.1314 to i8 *)
split tmp_v_xor_i_5_1314 v_conv3_i_5_1315 v_xor_i_5_1314 8;
vpc v_conv3_i_5_1315@uint8 v_conv3_i_5_1315@uint32;
(*   %conv4.i.5.1316 = zext i8 %conv5.i.4.1305 to i32 *)
cast v_conv4_i_5_1316@uint32 v_conv5_i_4_1305@uint8;
(*   %shr.i.5.1317 = ashr i32 %conv4.i.5.1316, 1 *)
(* You may need to modify here *)
split v_shr_i_5_1317 tmp_to_be_used v_conv4_i_5_1316 1;
(*   %conv5.i.5.1318 = trunc i32 %shr.i.5.1317 to i8 *)
split tmp_v_shr_i_5_1317 v_conv5_i_5_1318 v_shr_i_5_1317 8;
vpc v_conv5_i_5_1318@uint8 v_conv5_i_5_1318@uint32;
(*   %conv6.i.5.1319 = zext i8 %conv7.i.4.1308 to i32 *)
cast v_conv6_i_5_1319@uint32 v_conv7_i_4_1308@uint8;
(*   %shl.i.5.1320 = shl i32 %conv6.i.5.1319, 1 *)
shls discard_61 v_shl_i_5_1320 v_conv6_i_5_1319 1;
(*   %conv7.i.5.1321 = trunc i32 %shl.i.5.1320 to i8 *)
split tmp_v_shl_i_5_1320 v_conv7_i_5_1321 v_shl_i_5_1320 8;
vpc v_conv7_i_5_1321@uint8 v_conv7_i_5_1321@uint32;
(*   %conv.i.6.1322 = zext i8 %conv5.i.5.1318 to i32 *)
cast v_conv_i_6_1322@uint32 v_conv5_i_5_1318@uint8;
(*   %and.i.6.1323 = and i32 %conv.i.6.1322, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_1323 v_conv_i_6_1322 (0x1)@uint32;
(*   %conv1.i.6.1324 = zext i8 %conv7.i.5.1321 to i32 *)
cast v_conv1_i_6_1324@uint32 v_conv7_i_5_1321@uint8;
(*   %mul.i.6.1325 = mul nsw i32 %and.i.6.1323, %conv1.i.6.1324 *)
mul v_mul_i_6_1325 v_and_i_6_1323 v_conv1_i_6_1324;
(*   %conv2.i.6.1326 = zext i8 %conv3.i.5.1315 to i32 *)
cast v_conv2_i_6_1326@uint32 v_conv3_i_5_1315@uint8;
(*   %xor.i.6.1327 = xor i32 %conv2.i.6.1326, %mul.i.6.1325 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_1327 v_conv2_i_6_1326 v_mul_i_6_1325;
(*   %conv3.i.6.1328 = trunc i32 %xor.i.6.1327 to i8 *)
split tmp_v_xor_i_6_1327 v_conv3_i_6_1328 v_xor_i_6_1327 8;
vpc v_conv3_i_6_1328@uint8 v_conv3_i_6_1328@uint32;
(*   %conv4.i.6.1329 = zext i8 %conv5.i.5.1318 to i32 *)
cast v_conv4_i_6_1329@uint32 v_conv5_i_5_1318@uint8;
(*   %shr.i.6.1330 = ashr i32 %conv4.i.6.1329, 1 *)
(* You may need to modify here *)
split v_shr_i_6_1330 tmp_to_be_used v_conv4_i_6_1329 1;
(*   %conv5.i.6.1331 = trunc i32 %shr.i.6.1330 to i8 *)
split tmp_v_shr_i_6_1330 v_conv5_i_6_1331 v_shr_i_6_1330 8;
vpc v_conv5_i_6_1331@uint8 v_conv5_i_6_1331@uint32;
(*   %conv6.i.6.1332 = zext i8 %conv7.i.5.1321 to i32 *)
cast v_conv6_i_6_1332@uint32 v_conv7_i_5_1321@uint8;
(*   %shl.i.6.1333 = shl i32 %conv6.i.6.1332, 1 *)
shls discard_62 v_shl_i_6_1333 v_conv6_i_6_1332 1;
(*   %conv7.i.6.1334 = trunc i32 %shl.i.6.1333 to i8 *)
split tmp_v_shl_i_6_1333 v_conv7_i_6_1334 v_shl_i_6_1333 8;
vpc v_conv7_i_6_1334@uint8 v_conv7_i_6_1334@uint32;
(*   %conv.i.7.1335 = zext i8 %conv5.i.6.1331 to i32 *)
cast v_conv_i_7_1335@uint32 v_conv5_i_6_1331@uint8;
(*   %and.i.7.1336 = and i32 %conv.i.7.1335, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_1336 v_conv_i_7_1335 (0x1)@uint32;
(*   %conv1.i.7.1337 = zext i8 %conv7.i.6.1334 to i32 *)
cast v_conv1_i_7_1337@uint32 v_conv7_i_6_1334@uint8;
(*   %mul.i.7.1338 = mul nsw i32 %and.i.7.1336, %conv1.i.7.1337 *)
mul v_mul_i_7_1338 v_and_i_7_1336 v_conv1_i_7_1337;
(*   %conv2.i.7.1339 = zext i8 %conv3.i.6.1328 to i32 *)
cast v_conv2_i_7_1339@uint32 v_conv3_i_6_1328@uint8;
(*   %xor.i.7.1340 = xor i32 %conv2.i.7.1339, %mul.i.7.1338 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_1340 v_conv2_i_7_1339 v_mul_i_7_1338;
(*   %conv3.i.7.1341 = trunc i32 %xor.i.7.1340 to i8 *)
split tmp_v_xor_i_7_1340 v_conv3_i_7_1341 v_xor_i_7_1340 8;
vpc v_conv3_i_7_1341@uint8 v_conv3_i_7_1341@uint32;
(*   %arrayidx45.1345 = getelementptr inbounds [25 x i8], [25 x i8]* %p0, i64 0, i64 5 *)
(*   store i8 %conv3.i.7.1341, i8* %arrayidx45.1345, align 1 *)
mov p0_5 v_conv3_i_7_1341;
(*   %46 = load i8, i8* %arrayidx47.1, align 1 *)
mov v46 a_1;
(*   %arrayidx51.1347 = getelementptr inbounds [25 x i8], [25 x i8]* %s, i64 0, i64 5 *)
(*   %47 = load i8, i8* %arrayidx51.1347, align 1 *)
mov v47 s_5;
(*   %conv.i127.1349 = zext i8 %47 to i32 *)
cast v_conv_i127_1349@uint32 v47@uint8;
(*   %and.i128.1350 = and i32 %conv.i127.1349, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1350 v_conv_i127_1349 (0x1)@uint32;
(*   %conv1.i129.1351 = zext i8 %46 to i32 *)
cast v_conv1_i129_1351@uint32 v46@uint8;
(*   %mul.i130.1352 = mul nsw i32 %and.i128.1350, %conv1.i129.1351 *)
mul v_mul_i130_1352 v_and_i128_1350 v_conv1_i129_1351;
(*   %conv3.i133.1353 = trunc i32 %mul.i130.1352 to i8 *)
split tmp_v_mul_i130_1352 v_conv3_i133_1353 v_mul_i130_1352 8;
vpc v_conv3_i133_1353@uint8 v_conv3_i133_1353@uint32;
(*   %conv4.i134.1354 = zext i8 %47 to i32 *)
cast v_conv4_i134_1354@uint32 v47@uint8;
(*   %shr.i135.1355 = ashr i32 %conv4.i134.1354, 1 *)
(* You may need to modify here *)
split v_shr_i135_1355 tmp_to_be_used v_conv4_i134_1354 1;
(*   %conv5.i136.1356 = trunc i32 %shr.i135.1355 to i8 *)
split tmp_v_shr_i135_1355 v_conv5_i136_1356 v_shr_i135_1355 8;
vpc v_conv5_i136_1356@uint8 v_conv5_i136_1356@uint32;
(*   %conv6.i137.1357 = zext i8 %46 to i32 *)
cast v_conv6_i137_1357@uint32 v46@uint8;
(*   %shl.i138.1358 = shl i32 %conv6.i137.1357, 1 *)
shls discard_63 v_shl_i138_1358 v_conv6_i137_1357 1;
(*   %conv7.i139.1359 = trunc i32 %shl.i138.1358 to i8 *)
split tmp_v_shl_i138_1358 v_conv7_i139_1359 v_shl_i138_1358 8;
vpc v_conv7_i139_1359@uint8 v_conv7_i139_1359@uint32;
(*   %conv.i127.1.1360 = zext i8 %conv5.i136.1356 to i32 *)
cast v_conv_i127_1_1360@uint32 v_conv5_i136_1356@uint8;
(*   %and.i128.1.1361 = and i32 %conv.i127.1.1360, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1_1361 v_conv_i127_1_1360 (0x1)@uint32;
(*   %conv1.i129.1.1362 = zext i8 %conv7.i139.1359 to i32 *)
cast v_conv1_i129_1_1362@uint32 v_conv7_i139_1359@uint8;
(*   %mul.i130.1.1363 = mul nsw i32 %and.i128.1.1361, %conv1.i129.1.1362 *)
mul v_mul_i130_1_1363 v_and_i128_1_1361 v_conv1_i129_1_1362;
(*   %conv2.i131.1.1364 = zext i8 %conv3.i133.1353 to i32 *)
cast v_conv2_i131_1_1364@uint32 v_conv3_i133_1353@uint8;
(*   %xor.i132.1.1365 = xor i32 %conv2.i131.1.1364, %mul.i130.1.1363 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_1_1365 v_conv2_i131_1_1364 v_mul_i130_1_1363;
(*   %conv3.i133.1.1366 = trunc i32 %xor.i132.1.1365 to i8 *)
split tmp_v_xor_i132_1_1365 v_conv3_i133_1_1366 v_xor_i132_1_1365 8;
vpc v_conv3_i133_1_1366@uint8 v_conv3_i133_1_1366@uint32;
(*   %conv4.i134.1.1367 = zext i8 %conv5.i136.1356 to i32 *)
cast v_conv4_i134_1_1367@uint32 v_conv5_i136_1356@uint8;
(*   %shr.i135.1.1368 = ashr i32 %conv4.i134.1.1367, 1 *)
(* You may need to modify here *)
split v_shr_i135_1_1368 tmp_to_be_used v_conv4_i134_1_1367 1;
(*   %conv5.i136.1.1369 = trunc i32 %shr.i135.1.1368 to i8 *)
split tmp_v_shr_i135_1_1368 v_conv5_i136_1_1369 v_shr_i135_1_1368 8;
vpc v_conv5_i136_1_1369@uint8 v_conv5_i136_1_1369@uint32;
(*   %conv6.i137.1.1370 = zext i8 %conv7.i139.1359 to i32 *)
cast v_conv6_i137_1_1370@uint32 v_conv7_i139_1359@uint8;
(*   %shl.i138.1.1371 = shl i32 %conv6.i137.1.1370, 1 *)
shls discard_64 v_shl_i138_1_1371 v_conv6_i137_1_1370 1;
(*   %conv7.i139.1.1372 = trunc i32 %shl.i138.1.1371 to i8 *)
split tmp_v_shl_i138_1_1371 v_conv7_i139_1_1372 v_shl_i138_1_1371 8;
vpc v_conv7_i139_1_1372@uint8 v_conv7_i139_1_1372@uint32;
(*   %conv.i127.2.1373 = zext i8 %conv5.i136.1.1369 to i32 *)
cast v_conv_i127_2_1373@uint32 v_conv5_i136_1_1369@uint8;
(*   %and.i128.2.1374 = and i32 %conv.i127.2.1373, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_2_1374 v_conv_i127_2_1373 (0x1)@uint32;
(*   %conv1.i129.2.1375 = zext i8 %conv7.i139.1.1372 to i32 *)
cast v_conv1_i129_2_1375@uint32 v_conv7_i139_1_1372@uint8;
(*   %mul.i130.2.1376 = mul nsw i32 %and.i128.2.1374, %conv1.i129.2.1375 *)
mul v_mul_i130_2_1376 v_and_i128_2_1374 v_conv1_i129_2_1375;
(*   %conv2.i131.2.1377 = zext i8 %conv3.i133.1.1366 to i32 *)
cast v_conv2_i131_2_1377@uint32 v_conv3_i133_1_1366@uint8;
(*   %xor.i132.2.1378 = xor i32 %conv2.i131.2.1377, %mul.i130.2.1376 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_2_1378 v_conv2_i131_2_1377 v_mul_i130_2_1376;
(*   %conv3.i133.2.1379 = trunc i32 %xor.i132.2.1378 to i8 *)
split tmp_v_xor_i132_2_1378 v_conv3_i133_2_1379 v_xor_i132_2_1378 8;
vpc v_conv3_i133_2_1379@uint8 v_conv3_i133_2_1379@uint32;
(*   %conv4.i134.2.1380 = zext i8 %conv5.i136.1.1369 to i32 *)
cast v_conv4_i134_2_1380@uint32 v_conv5_i136_1_1369@uint8;
(*   %shr.i135.2.1381 = ashr i32 %conv4.i134.2.1380, 1 *)
(* You may need to modify here *)
split v_shr_i135_2_1381 tmp_to_be_used v_conv4_i134_2_1380 1;
(*   %conv5.i136.2.1382 = trunc i32 %shr.i135.2.1381 to i8 *)
split tmp_v_shr_i135_2_1381 v_conv5_i136_2_1382 v_shr_i135_2_1381 8;
vpc v_conv5_i136_2_1382@uint8 v_conv5_i136_2_1382@uint32;
(*   %conv6.i137.2.1383 = zext i8 %conv7.i139.1.1372 to i32 *)
cast v_conv6_i137_2_1383@uint32 v_conv7_i139_1_1372@uint8;
(*   %shl.i138.2.1384 = shl i32 %conv6.i137.2.1383, 1 *)
shls discard_65 v_shl_i138_2_1384 v_conv6_i137_2_1383 1;
(*   %conv7.i139.2.1385 = trunc i32 %shl.i138.2.1384 to i8 *)
split tmp_v_shl_i138_2_1384 v_conv7_i139_2_1385 v_shl_i138_2_1384 8;
vpc v_conv7_i139_2_1385@uint8 v_conv7_i139_2_1385@uint32;
(*   %conv.i127.3.1386 = zext i8 %conv5.i136.2.1382 to i32 *)
cast v_conv_i127_3_1386@uint32 v_conv5_i136_2_1382@uint8;
(*   %and.i128.3.1387 = and i32 %conv.i127.3.1386, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_3_1387 v_conv_i127_3_1386 (0x1)@uint32;
(*   %conv1.i129.3.1388 = zext i8 %conv7.i139.2.1385 to i32 *)
cast v_conv1_i129_3_1388@uint32 v_conv7_i139_2_1385@uint8;
(*   %mul.i130.3.1389 = mul nsw i32 %and.i128.3.1387, %conv1.i129.3.1388 *)
mul v_mul_i130_3_1389 v_and_i128_3_1387 v_conv1_i129_3_1388;
(*   %conv2.i131.3.1390 = zext i8 %conv3.i133.2.1379 to i32 *)
cast v_conv2_i131_3_1390@uint32 v_conv3_i133_2_1379@uint8;
(*   %xor.i132.3.1391 = xor i32 %conv2.i131.3.1390, %mul.i130.3.1389 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_3_1391 v_conv2_i131_3_1390 v_mul_i130_3_1389;
(*   %conv3.i133.3.1392 = trunc i32 %xor.i132.3.1391 to i8 *)
split tmp_v_xor_i132_3_1391 v_conv3_i133_3_1392 v_xor_i132_3_1391 8;
vpc v_conv3_i133_3_1392@uint8 v_conv3_i133_3_1392@uint32;
(*   %conv4.i134.3.1393 = zext i8 %conv5.i136.2.1382 to i32 *)
cast v_conv4_i134_3_1393@uint32 v_conv5_i136_2_1382@uint8;
(*   %shr.i135.3.1394 = ashr i32 %conv4.i134.3.1393, 1 *)
(* You may need to modify here *)
split v_shr_i135_3_1394 tmp_to_be_used v_conv4_i134_3_1393 1;
(*   %conv5.i136.3.1395 = trunc i32 %shr.i135.3.1394 to i8 *)
split tmp_v_shr_i135_3_1394 v_conv5_i136_3_1395 v_shr_i135_3_1394 8;
vpc v_conv5_i136_3_1395@uint8 v_conv5_i136_3_1395@uint32;
(*   %conv6.i137.3.1396 = zext i8 %conv7.i139.2.1385 to i32 *)
cast v_conv6_i137_3_1396@uint32 v_conv7_i139_2_1385@uint8;
(*   %shl.i138.3.1397 = shl i32 %conv6.i137.3.1396, 1 *)
shls discard_66 v_shl_i138_3_1397 v_conv6_i137_3_1396 1;
(*   %conv7.i139.3.1398 = trunc i32 %shl.i138.3.1397 to i8 *)
split tmp_v_shl_i138_3_1397 v_conv7_i139_3_1398 v_shl_i138_3_1397 8;
vpc v_conv7_i139_3_1398@uint8 v_conv7_i139_3_1398@uint32;
(*   %conv.i127.4.1399 = zext i8 %conv5.i136.3.1395 to i32 *)
cast v_conv_i127_4_1399@uint32 v_conv5_i136_3_1395@uint8;
(*   %and.i128.4.1400 = and i32 %conv.i127.4.1399, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_4_1400 v_conv_i127_4_1399 (0x1)@uint32;
(*   %conv1.i129.4.1401 = zext i8 %conv7.i139.3.1398 to i32 *)
cast v_conv1_i129_4_1401@uint32 v_conv7_i139_3_1398@uint8;
(*   %mul.i130.4.1402 = mul nsw i32 %and.i128.4.1400, %conv1.i129.4.1401 *)
mul v_mul_i130_4_1402 v_and_i128_4_1400 v_conv1_i129_4_1401;
(*   %conv2.i131.4.1403 = zext i8 %conv3.i133.3.1392 to i32 *)
cast v_conv2_i131_4_1403@uint32 v_conv3_i133_3_1392@uint8;
(*   %xor.i132.4.1404 = xor i32 %conv2.i131.4.1403, %mul.i130.4.1402 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_4_1404 v_conv2_i131_4_1403 v_mul_i130_4_1402;
(*   %conv3.i133.4.1405 = trunc i32 %xor.i132.4.1404 to i8 *)
split tmp_v_xor_i132_4_1404 v_conv3_i133_4_1405 v_xor_i132_4_1404 8;
vpc v_conv3_i133_4_1405@uint8 v_conv3_i133_4_1405@uint32;
(*   %conv4.i134.4.1406 = zext i8 %conv5.i136.3.1395 to i32 *)
cast v_conv4_i134_4_1406@uint32 v_conv5_i136_3_1395@uint8;
(*   %shr.i135.4.1407 = ashr i32 %conv4.i134.4.1406, 1 *)
(* You may need to modify here *)
split v_shr_i135_4_1407 tmp_to_be_used v_conv4_i134_4_1406 1;
(*   %conv5.i136.4.1408 = trunc i32 %shr.i135.4.1407 to i8 *)
split tmp_v_shr_i135_4_1407 v_conv5_i136_4_1408 v_shr_i135_4_1407 8;
vpc v_conv5_i136_4_1408@uint8 v_conv5_i136_4_1408@uint32;
(*   %conv6.i137.4.1409 = zext i8 %conv7.i139.3.1398 to i32 *)
cast v_conv6_i137_4_1409@uint32 v_conv7_i139_3_1398@uint8;
(*   %shl.i138.4.1410 = shl i32 %conv6.i137.4.1409, 1 *)
shls discard_67 v_shl_i138_4_1410 v_conv6_i137_4_1409 1;
(*   %conv7.i139.4.1411 = trunc i32 %shl.i138.4.1410 to i8 *)
split tmp_v_shl_i138_4_1410 v_conv7_i139_4_1411 v_shl_i138_4_1410 8;
vpc v_conv7_i139_4_1411@uint8 v_conv7_i139_4_1411@uint32;
(*   %conv.i127.5.1412 = zext i8 %conv5.i136.4.1408 to i32 *)
cast v_conv_i127_5_1412@uint32 v_conv5_i136_4_1408@uint8;
(*   %and.i128.5.1413 = and i32 %conv.i127.5.1412, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_5_1413 v_conv_i127_5_1412 (0x1)@uint32;
(*   %conv1.i129.5.1414 = zext i8 %conv7.i139.4.1411 to i32 *)
cast v_conv1_i129_5_1414@uint32 v_conv7_i139_4_1411@uint8;
(*   %mul.i130.5.1415 = mul nsw i32 %and.i128.5.1413, %conv1.i129.5.1414 *)
mul v_mul_i130_5_1415 v_and_i128_5_1413 v_conv1_i129_5_1414;
(*   %conv2.i131.5.1416 = zext i8 %conv3.i133.4.1405 to i32 *)
cast v_conv2_i131_5_1416@uint32 v_conv3_i133_4_1405@uint8;
(*   %xor.i132.5.1417 = xor i32 %conv2.i131.5.1416, %mul.i130.5.1415 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_5_1417 v_conv2_i131_5_1416 v_mul_i130_5_1415;
(*   %conv3.i133.5.1418 = trunc i32 %xor.i132.5.1417 to i8 *)
split tmp_v_xor_i132_5_1417 v_conv3_i133_5_1418 v_xor_i132_5_1417 8;
vpc v_conv3_i133_5_1418@uint8 v_conv3_i133_5_1418@uint32;
(*   %conv4.i134.5.1419 = zext i8 %conv5.i136.4.1408 to i32 *)
cast v_conv4_i134_5_1419@uint32 v_conv5_i136_4_1408@uint8;
(*   %shr.i135.5.1420 = ashr i32 %conv4.i134.5.1419, 1 *)
(* You may need to modify here *)
split v_shr_i135_5_1420 tmp_to_be_used v_conv4_i134_5_1419 1;
(*   %conv5.i136.5.1421 = trunc i32 %shr.i135.5.1420 to i8 *)
split tmp_v_shr_i135_5_1420 v_conv5_i136_5_1421 v_shr_i135_5_1420 8;
vpc v_conv5_i136_5_1421@uint8 v_conv5_i136_5_1421@uint32;
(*   %conv6.i137.5.1422 = zext i8 %conv7.i139.4.1411 to i32 *)
cast v_conv6_i137_5_1422@uint32 v_conv7_i139_4_1411@uint8;
(*   %shl.i138.5.1423 = shl i32 %conv6.i137.5.1422, 1 *)
shls discard_68 v_shl_i138_5_1423 v_conv6_i137_5_1422 1;
(*   %conv7.i139.5.1424 = trunc i32 %shl.i138.5.1423 to i8 *)
split tmp_v_shl_i138_5_1423 v_conv7_i139_5_1424 v_shl_i138_5_1423 8;
vpc v_conv7_i139_5_1424@uint8 v_conv7_i139_5_1424@uint32;
(*   %conv.i127.6.1425 = zext i8 %conv5.i136.5.1421 to i32 *)
cast v_conv_i127_6_1425@uint32 v_conv5_i136_5_1421@uint8;
(*   %and.i128.6.1426 = and i32 %conv.i127.6.1425, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_6_1426 v_conv_i127_6_1425 (0x1)@uint32;
(*   %conv1.i129.6.1427 = zext i8 %conv7.i139.5.1424 to i32 *)
cast v_conv1_i129_6_1427@uint32 v_conv7_i139_5_1424@uint8;
(*   %mul.i130.6.1428 = mul nsw i32 %and.i128.6.1426, %conv1.i129.6.1427 *)
mul v_mul_i130_6_1428 v_and_i128_6_1426 v_conv1_i129_6_1427;
(*   %conv2.i131.6.1429 = zext i8 %conv3.i133.5.1418 to i32 *)
cast v_conv2_i131_6_1429@uint32 v_conv3_i133_5_1418@uint8;
(*   %xor.i132.6.1430 = xor i32 %conv2.i131.6.1429, %mul.i130.6.1428 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_6_1430 v_conv2_i131_6_1429 v_mul_i130_6_1428;
(*   %conv3.i133.6.1431 = trunc i32 %xor.i132.6.1430 to i8 *)
split tmp_v_xor_i132_6_1430 v_conv3_i133_6_1431 v_xor_i132_6_1430 8;
vpc v_conv3_i133_6_1431@uint8 v_conv3_i133_6_1431@uint32;
(*   %conv4.i134.6.1432 = zext i8 %conv5.i136.5.1421 to i32 *)
cast v_conv4_i134_6_1432@uint32 v_conv5_i136_5_1421@uint8;
(*   %shr.i135.6.1433 = ashr i32 %conv4.i134.6.1432, 1 *)
(* You may need to modify here *)
split v_shr_i135_6_1433 tmp_to_be_used v_conv4_i134_6_1432 1;
(*   %conv5.i136.6.1434 = trunc i32 %shr.i135.6.1433 to i8 *)
split tmp_v_shr_i135_6_1433 v_conv5_i136_6_1434 v_shr_i135_6_1433 8;
vpc v_conv5_i136_6_1434@uint8 v_conv5_i136_6_1434@uint32;
(*   %conv6.i137.6.1435 = zext i8 %conv7.i139.5.1424 to i32 *)
cast v_conv6_i137_6_1435@uint32 v_conv7_i139_5_1424@uint8;
(*   %shl.i138.6.1436 = shl i32 %conv6.i137.6.1435, 1 *)
shls discard_69 v_shl_i138_6_1436 v_conv6_i137_6_1435 1;
(*   %conv7.i139.6.1437 = trunc i32 %shl.i138.6.1436 to i8 *)
split tmp_v_shl_i138_6_1436 v_conv7_i139_6_1437 v_shl_i138_6_1436 8;
vpc v_conv7_i139_6_1437@uint8 v_conv7_i139_6_1437@uint32;
(*   %conv.i127.7.1438 = zext i8 %conv5.i136.6.1434 to i32 *)
cast v_conv_i127_7_1438@uint32 v_conv5_i136_6_1434@uint8;
(*   %and.i128.7.1439 = and i32 %conv.i127.7.1438, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_7_1439 v_conv_i127_7_1438 (0x1)@uint32;
(*   %conv1.i129.7.1440 = zext i8 %conv7.i139.6.1437 to i32 *)
cast v_conv1_i129_7_1440@uint32 v_conv7_i139_6_1437@uint8;
(*   %mul.i130.7.1441 = mul nsw i32 %and.i128.7.1439, %conv1.i129.7.1440 *)
mul v_mul_i130_7_1441 v_and_i128_7_1439 v_conv1_i129_7_1440;
(*   %conv2.i131.7.1442 = zext i8 %conv3.i133.6.1431 to i32 *)
cast v_conv2_i131_7_1442@uint32 v_conv3_i133_6_1431@uint8;
(*   %xor.i132.7.1443 = xor i32 %conv2.i131.7.1442, %mul.i130.7.1441 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_7_1443 v_conv2_i131_7_1442 v_mul_i130_7_1441;
(*   %conv3.i133.7.1444 = trunc i32 %xor.i132.7.1443 to i8 *)
split tmp_v_xor_i132_7_1443 v_conv3_i133_7_1444 v_xor_i132_7_1443 8;
vpc v_conv3_i133_7_1444@uint8 v_conv3_i133_7_1444@uint32;
(*   %arrayidx56.1448 = getelementptr inbounds [25 x i8], [25 x i8]* %p1, i64 0, i64 5 *)
(*   store i8 %conv3.i133.7.1444, i8* %arrayidx56.1448, align 1 *)
mov p1_5 v_conv3_i133_7_1444;
(*   %arrayidx60.1450 = getelementptr inbounds [25 x i8], [25 x i8]* %p0, i64 0, i64 5 *)
(*   %48 = load i8, i8* %arrayidx60.1450, align 1 *)
mov v48 p0_5;
(*   %conv61.1451 = zext i8 %48 to i32 *)
cast v_conv61_1451@uint32 v48@uint8;
(*   %arrayidx65.1453 = getelementptr inbounds [25 x i8], [25 x i8]* %p1, i64 0, i64 5 *)
(*   %49 = load i8, i8* %arrayidx65.1453, align 1 *)
mov v49 p1_5;
(*   %conv66.1454 = zext i8 %49 to i32 *)
cast v_conv66_1454@uint32 v49@uint8;
(*   %xor67.1455 = xor i32 %conv61.1451, %conv66.1454 *)
(* You may need to modify here *)
xor uint32 v_xor67_1455 v_conv61_1451 v_conv66_1454;
(*   %conv68.1456 = trunc i32 %xor67.1455 to i8 *)
split tmp_v_xor67_1455 v_conv68_1456 v_xor67_1455 8;
vpc v_conv68_1456@uint8 v_conv68_1456@uint32;
(*   %arrayidx72.1458 = getelementptr inbounds [25 x i8], [25 x i8]* %z, i64 0, i64 5 *)
(*   store i8 %conv68.1456, i8* %arrayidx72.1458, align 1 *)
mov z_5 v_conv68_1456;
(*   %arrayidx22.2.1 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %50 = load i8, i8* %arrayidx22.2.1, align 1 *)
mov v50 b_2;
(*   %conv.2.1 = zext i8 %50 to i32 *)
cast v_conv_2_1@uint32 v50@uint8;
(*   %arrayidx26.2.1 = getelementptr inbounds i8, i8* %r, i64 7 *)
(*   %51 = load i8, i8* %arrayidx26.2.1, align 1 *)
mov v51 r_7;
(*   %conv27.2.1 = zext i8 %51 to i32 *)
cast v_conv27_2_1@uint32 v51@uint8;
(*   %xor.2.1 = xor i32 %conv.2.1, %conv27.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_2_1 v_conv_2_1 v_conv27_2_1;
(*   %conv28.2.1 = trunc i32 %xor.2.1 to i8 *)
split tmp_v_xor_2_1 v_conv28_2_1 v_xor_2_1 8;
vpc v_conv28_2_1@uint8 v_conv28_2_1@uint32;
(*   %arrayidx32.2.1 = getelementptr inbounds [25 x i8], [25 x i8]* %s, i64 0, i64 7 *)
(*   store i8 %conv28.2.1, i8* %arrayidx32.2.1, align 1 *)
mov s_7 v_conv28_2_1;
(*   %52 = load i8, i8* %arrayidx34.1, align 1 *)
mov v52 a_1;
(*   %conv35.2.1 = zext i8 %52 to i32 *)
cast v_conv35_2_1@uint32 v52@uint8;
(*   %xor36.2.1 = xor i32 %conv35.2.1, 1 *)
(* You may need to modify here *)
xor uint32 v_xor36_2_1 v_conv35_2_1 (0x1)@uint32;
(*   %conv37.2.1 = trunc i32 %xor36.2.1 to i8 *)
split tmp_v_xor36_2_1 v_conv37_2_1 v_xor36_2_1 8;
vpc v_conv37_2_1@uint8 v_conv37_2_1@uint32;
(*   %arrayidx41.2.1 = getelementptr inbounds i8, i8* %r, i64 7 *)
(*   %53 = load i8, i8* %arrayidx41.2.1, align 1 *)
mov v53 r_7;
(*   %conv.i.2165.1 = zext i8 %53 to i32 *)
cast v_conv_i_2165_1@uint32 v53@uint8;
(*   %and.i.2166.1 = and i32 %conv.i.2165.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2166_1 v_conv_i_2165_1 (0x1)@uint32;
(*   %conv1.i.2167.1 = zext i8 %conv37.2.1 to i32 *)
cast v_conv1_i_2167_1@uint32 v_conv37_2_1@uint8;
(*   %mul.i.2168.1 = mul nsw i32 %and.i.2166.1, %conv1.i.2167.1 *)
mul v_mul_i_2168_1 v_and_i_2166_1 v_conv1_i_2167_1;
(*   %conv3.i.2169.1 = trunc i32 %mul.i.2168.1 to i8 *)
split tmp_v_mul_i_2168_1 v_conv3_i_2169_1 v_mul_i_2168_1 8;
vpc v_conv3_i_2169_1@uint8 v_conv3_i_2169_1@uint32;
(*   %conv4.i.2170.1 = zext i8 %53 to i32 *)
cast v_conv4_i_2170_1@uint32 v53@uint8;
(*   %shr.i.2171.1 = ashr i32 %conv4.i.2170.1, 1 *)
(* You may need to modify here *)
split v_shr_i_2171_1 tmp_to_be_used v_conv4_i_2170_1 1;
(*   %conv5.i.2172.1 = trunc i32 %shr.i.2171.1 to i8 *)
split tmp_v_shr_i_2171_1 v_conv5_i_2172_1 v_shr_i_2171_1 8;
vpc v_conv5_i_2172_1@uint8 v_conv5_i_2172_1@uint32;
(*   %conv6.i.2173.1 = zext i8 %conv37.2.1 to i32 *)
cast v_conv6_i_2173_1@uint32 v_conv37_2_1@uint8;
(*   %shl.i.2174.1 = shl i32 %conv6.i.2173.1, 1 *)
shls discard_70 v_shl_i_2174_1 v_conv6_i_2173_1 1;
(*   %conv7.i.2175.1 = trunc i32 %shl.i.2174.1 to i8 *)
split tmp_v_shl_i_2174_1 v_conv7_i_2175_1 v_shl_i_2174_1 8;
vpc v_conv7_i_2175_1@uint8 v_conv7_i_2175_1@uint32;
(*   %conv.i.1.2.1 = zext i8 %conv5.i.2172.1 to i32 *)
cast v_conv_i_1_2_1@uint32 v_conv5_i_2172_1@uint8;
(*   %and.i.1.2.1 = and i32 %conv.i.1.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_2_1 v_conv_i_1_2_1 (0x1)@uint32;
(*   %conv1.i.1.2.1 = zext i8 %conv7.i.2175.1 to i32 *)
cast v_conv1_i_1_2_1@uint32 v_conv7_i_2175_1@uint8;
(*   %mul.i.1.2.1 = mul nsw i32 %and.i.1.2.1, %conv1.i.1.2.1 *)
mul v_mul_i_1_2_1 v_and_i_1_2_1 v_conv1_i_1_2_1;
(*   %conv2.i.1.2.1 = zext i8 %conv3.i.2169.1 to i32 *)
cast v_conv2_i_1_2_1@uint32 v_conv3_i_2169_1@uint8;
(*   %xor.i.1.2.1 = xor i32 %conv2.i.1.2.1, %mul.i.1.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_2_1 v_conv2_i_1_2_1 v_mul_i_1_2_1;
(*   %conv3.i.1.2.1 = trunc i32 %xor.i.1.2.1 to i8 *)
split tmp_v_xor_i_1_2_1 v_conv3_i_1_2_1 v_xor_i_1_2_1 8;
vpc v_conv3_i_1_2_1@uint8 v_conv3_i_1_2_1@uint32;
(*   %conv4.i.1.2.1 = zext i8 %conv5.i.2172.1 to i32 *)
cast v_conv4_i_1_2_1@uint32 v_conv5_i_2172_1@uint8;
(*   %shr.i.1.2.1 = ashr i32 %conv4.i.1.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i_1_2_1 tmp_to_be_used v_conv4_i_1_2_1 1;
(*   %conv5.i.1.2.1 = trunc i32 %shr.i.1.2.1 to i8 *)
split tmp_v_shr_i_1_2_1 v_conv5_i_1_2_1 v_shr_i_1_2_1 8;
vpc v_conv5_i_1_2_1@uint8 v_conv5_i_1_2_1@uint32;
(*   %conv6.i.1.2.1 = zext i8 %conv7.i.2175.1 to i32 *)
cast v_conv6_i_1_2_1@uint32 v_conv7_i_2175_1@uint8;
(*   %shl.i.1.2.1 = shl i32 %conv6.i.1.2.1, 1 *)
shls discard_71 v_shl_i_1_2_1 v_conv6_i_1_2_1 1;
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
shls discard_72 v_shl_i_2_2_1 v_conv6_i_2_2_1 1;
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
shls discard_73 v_shl_i_3_2_1 v_conv6_i_3_2_1 1;
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
shls discard_74 v_shl_i_4_2_1 v_conv6_i_4_2_1 1;
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
shls discard_75 v_shl_i_5_2_1 v_conv6_i_5_2_1 1;
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
shls discard_76 v_shl_i_6_2_1 v_conv6_i_6_2_1 1;
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
(*   %arrayidx45.2.1 = getelementptr inbounds [25 x i8], [25 x i8]* %p0, i64 0, i64 7 *)
(*   store i8 %conv3.i.7.2.1, i8* %arrayidx45.2.1, align 1 *)
mov p0_7 v_conv3_i_7_2_1;
(*   %54 = load i8, i8* %arrayidx47.1, align 1 *)
mov v54 a_1;
(*   %arrayidx51.2.1 = getelementptr inbounds [25 x i8], [25 x i8]* %s, i64 0, i64 7 *)
(*   %55 = load i8, i8* %arrayidx51.2.1, align 1 *)
mov v55 s_7;
(*   %conv.i127.2176.1 = zext i8 %55 to i32 *)
cast v_conv_i127_2176_1@uint32 v55@uint8;
(*   %and.i128.2177.1 = and i32 %conv.i127.2176.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_2177_1 v_conv_i127_2176_1 (0x1)@uint32;
(*   %conv1.i129.2178.1 = zext i8 %54 to i32 *)
cast v_conv1_i129_2178_1@uint32 v54@uint8;
(*   %mul.i130.2179.1 = mul nsw i32 %and.i128.2177.1, %conv1.i129.2178.1 *)
mul v_mul_i130_2179_1 v_and_i128_2177_1 v_conv1_i129_2178_1;
(*   %conv3.i133.2180.1 = trunc i32 %mul.i130.2179.1 to i8 *)
split tmp_v_mul_i130_2179_1 v_conv3_i133_2180_1 v_mul_i130_2179_1 8;
vpc v_conv3_i133_2180_1@uint8 v_conv3_i133_2180_1@uint32;
(*   %conv4.i134.2181.1 = zext i8 %55 to i32 *)
cast v_conv4_i134_2181_1@uint32 v55@uint8;
(*   %shr.i135.2182.1 = ashr i32 %conv4.i134.2181.1, 1 *)
(* You may need to modify here *)
split v_shr_i135_2182_1 tmp_to_be_used v_conv4_i134_2181_1 1;
(*   %conv5.i136.2183.1 = trunc i32 %shr.i135.2182.1 to i8 *)
split tmp_v_shr_i135_2182_1 v_conv5_i136_2183_1 v_shr_i135_2182_1 8;
vpc v_conv5_i136_2183_1@uint8 v_conv5_i136_2183_1@uint32;
(*   %conv6.i137.2184.1 = zext i8 %54 to i32 *)
cast v_conv6_i137_2184_1@uint32 v54@uint8;
(*   %shl.i138.2185.1 = shl i32 %conv6.i137.2184.1, 1 *)
shls discard_77 v_shl_i138_2185_1 v_conv6_i137_2184_1 1;
(*   %conv7.i139.2186.1 = trunc i32 %shl.i138.2185.1 to i8 *)
split tmp_v_shl_i138_2185_1 v_conv7_i139_2186_1 v_shl_i138_2185_1 8;
vpc v_conv7_i139_2186_1@uint8 v_conv7_i139_2186_1@uint32;
(*   %conv.i127.1.2.1 = zext i8 %conv5.i136.2183.1 to i32 *)
cast v_conv_i127_1_2_1@uint32 v_conv5_i136_2183_1@uint8;
(*   %and.i128.1.2.1 = and i32 %conv.i127.1.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1_2_1 v_conv_i127_1_2_1 (0x1)@uint32;
(*   %conv1.i129.1.2.1 = zext i8 %conv7.i139.2186.1 to i32 *)
cast v_conv1_i129_1_2_1@uint32 v_conv7_i139_2186_1@uint8;
(*   %mul.i130.1.2.1 = mul nsw i32 %and.i128.1.2.1, %conv1.i129.1.2.1 *)
mul v_mul_i130_1_2_1 v_and_i128_1_2_1 v_conv1_i129_1_2_1;
(*   %conv2.i131.1.2.1 = zext i8 %conv3.i133.2180.1 to i32 *)
cast v_conv2_i131_1_2_1@uint32 v_conv3_i133_2180_1@uint8;
(*   %xor.i132.1.2.1 = xor i32 %conv2.i131.1.2.1, %mul.i130.1.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_1_2_1 v_conv2_i131_1_2_1 v_mul_i130_1_2_1;
(*   %conv3.i133.1.2.1 = trunc i32 %xor.i132.1.2.1 to i8 *)
split tmp_v_xor_i132_1_2_1 v_conv3_i133_1_2_1 v_xor_i132_1_2_1 8;
vpc v_conv3_i133_1_2_1@uint8 v_conv3_i133_1_2_1@uint32;
(*   %conv4.i134.1.2.1 = zext i8 %conv5.i136.2183.1 to i32 *)
cast v_conv4_i134_1_2_1@uint32 v_conv5_i136_2183_1@uint8;
(*   %shr.i135.1.2.1 = ashr i32 %conv4.i134.1.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i135_1_2_1 tmp_to_be_used v_conv4_i134_1_2_1 1;
(*   %conv5.i136.1.2.1 = trunc i32 %shr.i135.1.2.1 to i8 *)
split tmp_v_shr_i135_1_2_1 v_conv5_i136_1_2_1 v_shr_i135_1_2_1 8;
vpc v_conv5_i136_1_2_1@uint8 v_conv5_i136_1_2_1@uint32;
(*   %conv6.i137.1.2.1 = zext i8 %conv7.i139.2186.1 to i32 *)
cast v_conv6_i137_1_2_1@uint32 v_conv7_i139_2186_1@uint8;
(*   %shl.i138.1.2.1 = shl i32 %conv6.i137.1.2.1, 1 *)
shls discard_78 v_shl_i138_1_2_1 v_conv6_i137_1_2_1 1;
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
shls discard_79 v_shl_i138_2_2_1 v_conv6_i137_2_2_1 1;
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
shls discard_80 v_shl_i138_3_2_1 v_conv6_i137_3_2_1 1;
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
shls discard_81 v_shl_i138_4_2_1 v_conv6_i137_4_2_1 1;
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
shls discard_82 v_shl_i138_5_2_1 v_conv6_i137_5_2_1 1;
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
shls discard_83 v_shl_i138_6_2_1 v_conv6_i137_6_2_1 1;
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
(*   %arrayidx56.2.1 = getelementptr inbounds [25 x i8], [25 x i8]* %p1, i64 0, i64 7 *)
(*   store i8 %conv3.i133.7.2.1, i8* %arrayidx56.2.1, align 1 *)
mov p1_7 v_conv3_i133_7_2_1;
(*   %arrayidx60.2.1 = getelementptr inbounds [25 x i8], [25 x i8]* %p0, i64 0, i64 7 *)
(*   %56 = load i8, i8* %arrayidx60.2.1, align 1 *)
mov v56 p0_7;
(*   %conv61.2.1 = zext i8 %56 to i32 *)
cast v_conv61_2_1@uint32 v56@uint8;
(*   %arrayidx65.2.1 = getelementptr inbounds [25 x i8], [25 x i8]* %p1, i64 0, i64 7 *)
(*   %57 = load i8, i8* %arrayidx65.2.1, align 1 *)
mov v57 p1_7;
(*   %conv66.2.1 = zext i8 %57 to i32 *)
cast v_conv66_2_1@uint32 v57@uint8;
(*   %xor67.2.1 = xor i32 %conv61.2.1, %conv66.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor67_2_1 v_conv61_2_1 v_conv66_2_1;
(*   %conv68.2.1 = trunc i32 %xor67.2.1 to i8 *)
split tmp_v_xor67_2_1 v_conv68_2_1 v_xor67_2_1 8;
vpc v_conv68_2_1@uint8 v_conv68_2_1@uint32;
(*   %arrayidx72.2.1 = getelementptr inbounds [25 x i8], [25 x i8]* %z, i64 0, i64 7 *)
(*   store i8 %conv68.2.1, i8* %arrayidx72.2.1, align 1 *)
mov z_7 v_conv68_2_1;
(*   %arrayidx22.3.1 = getelementptr inbounds i8, i8* %b, i64 3 *)
(*   %58 = load i8, i8* %arrayidx22.3.1, align 1 *)
mov v58 b_3;
(*   %conv.3.1 = zext i8 %58 to i32 *)
cast v_conv_3_1@uint32 v58@uint8;
(*   %arrayidx26.3.1 = getelementptr inbounds i8, i8* %r, i64 8 *)
(*   %59 = load i8, i8* %arrayidx26.3.1, align 1 *)
mov v59 r_8;
(*   %conv27.3.1 = zext i8 %59 to i32 *)
cast v_conv27_3_1@uint32 v59@uint8;
(*   %xor.3.1 = xor i32 %conv.3.1, %conv27.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_3_1 v_conv_3_1 v_conv27_3_1;
(*   %conv28.3.1 = trunc i32 %xor.3.1 to i8 *)
split tmp_v_xor_3_1 v_conv28_3_1 v_xor_3_1 8;
vpc v_conv28_3_1@uint8 v_conv28_3_1@uint32;
(*   %arrayidx32.3.1 = getelementptr inbounds [25 x i8], [25 x i8]* %s, i64 0, i64 8 *)
(*   store i8 %conv28.3.1, i8* %arrayidx32.3.1, align 1 *)
mov s_8 v_conv28_3_1;
(*   %60 = load i8, i8* %arrayidx34.1, align 1 *)
mov v60 a_1;
(*   %conv35.3.1 = zext i8 %60 to i32 *)
cast v_conv35_3_1@uint32 v60@uint8;
(*   %xor36.3.1 = xor i32 %conv35.3.1, 1 *)
(* You may need to modify here *)
xor uint32 v_xor36_3_1 v_conv35_3_1 (0x1)@uint32;
(*   %conv37.3.1 = trunc i32 %xor36.3.1 to i8 *)
split tmp_v_xor36_3_1 v_conv37_3_1 v_xor36_3_1 8;
vpc v_conv37_3_1@uint8 v_conv37_3_1@uint32;
(*   %arrayidx41.3.1 = getelementptr inbounds i8, i8* %r, i64 8 *)
(*   %61 = load i8, i8* %arrayidx41.3.1, align 1 *)
mov v61 r_8;
(*   %conv.i.3187.1 = zext i8 %61 to i32 *)
cast v_conv_i_3187_1@uint32 v61@uint8;
(*   %and.i.3188.1 = and i32 %conv.i.3187.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3188_1 v_conv_i_3187_1 (0x1)@uint32;
(*   %conv1.i.3189.1 = zext i8 %conv37.3.1 to i32 *)
cast v_conv1_i_3189_1@uint32 v_conv37_3_1@uint8;
(*   %mul.i.3190.1 = mul nsw i32 %and.i.3188.1, %conv1.i.3189.1 *)
mul v_mul_i_3190_1 v_and_i_3188_1 v_conv1_i_3189_1;
(*   %conv3.i.3191.1 = trunc i32 %mul.i.3190.1 to i8 *)
split tmp_v_mul_i_3190_1 v_conv3_i_3191_1 v_mul_i_3190_1 8;
vpc v_conv3_i_3191_1@uint8 v_conv3_i_3191_1@uint32;
(*   %conv4.i.3192.1 = zext i8 %61 to i32 *)
cast v_conv4_i_3192_1@uint32 v61@uint8;
(*   %shr.i.3193.1 = ashr i32 %conv4.i.3192.1, 1 *)
(* You may need to modify here *)
split v_shr_i_3193_1 tmp_to_be_used v_conv4_i_3192_1 1;
(*   %conv5.i.3194.1 = trunc i32 %shr.i.3193.1 to i8 *)
split tmp_v_shr_i_3193_1 v_conv5_i_3194_1 v_shr_i_3193_1 8;
vpc v_conv5_i_3194_1@uint8 v_conv5_i_3194_1@uint32;
(*   %conv6.i.3195.1 = zext i8 %conv37.3.1 to i32 *)
cast v_conv6_i_3195_1@uint32 v_conv37_3_1@uint8;
(*   %shl.i.3196.1 = shl i32 %conv6.i.3195.1, 1 *)
shls discard_84 v_shl_i_3196_1 v_conv6_i_3195_1 1;
(*   %conv7.i.3197.1 = trunc i32 %shl.i.3196.1 to i8 *)
split tmp_v_shl_i_3196_1 v_conv7_i_3197_1 v_shl_i_3196_1 8;
vpc v_conv7_i_3197_1@uint8 v_conv7_i_3197_1@uint32;
(*   %conv.i.1.3.1 = zext i8 %conv5.i.3194.1 to i32 *)
cast v_conv_i_1_3_1@uint32 v_conv5_i_3194_1@uint8;
(*   %and.i.1.3.1 = and i32 %conv.i.1.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_3_1 v_conv_i_1_3_1 (0x1)@uint32;
(*   %conv1.i.1.3.1 = zext i8 %conv7.i.3197.1 to i32 *)
cast v_conv1_i_1_3_1@uint32 v_conv7_i_3197_1@uint8;
(*   %mul.i.1.3.1 = mul nsw i32 %and.i.1.3.1, %conv1.i.1.3.1 *)
mul v_mul_i_1_3_1 v_and_i_1_3_1 v_conv1_i_1_3_1;
(*   %conv2.i.1.3.1 = zext i8 %conv3.i.3191.1 to i32 *)
cast v_conv2_i_1_3_1@uint32 v_conv3_i_3191_1@uint8;
(*   %xor.i.1.3.1 = xor i32 %conv2.i.1.3.1, %mul.i.1.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_3_1 v_conv2_i_1_3_1 v_mul_i_1_3_1;
(*   %conv3.i.1.3.1 = trunc i32 %xor.i.1.3.1 to i8 *)
split tmp_v_xor_i_1_3_1 v_conv3_i_1_3_1 v_xor_i_1_3_1 8;
vpc v_conv3_i_1_3_1@uint8 v_conv3_i_1_3_1@uint32;
(*   %conv4.i.1.3.1 = zext i8 %conv5.i.3194.1 to i32 *)
cast v_conv4_i_1_3_1@uint32 v_conv5_i_3194_1@uint8;
(*   %shr.i.1.3.1 = ashr i32 %conv4.i.1.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i_1_3_1 tmp_to_be_used v_conv4_i_1_3_1 1;
(*   %conv5.i.1.3.1 = trunc i32 %shr.i.1.3.1 to i8 *)
split tmp_v_shr_i_1_3_1 v_conv5_i_1_3_1 v_shr_i_1_3_1 8;
vpc v_conv5_i_1_3_1@uint8 v_conv5_i_1_3_1@uint32;
(*   %conv6.i.1.3.1 = zext i8 %conv7.i.3197.1 to i32 *)
cast v_conv6_i_1_3_1@uint32 v_conv7_i_3197_1@uint8;
(*   %shl.i.1.3.1 = shl i32 %conv6.i.1.3.1, 1 *)
shls discard_85 v_shl_i_1_3_1 v_conv6_i_1_3_1 1;
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
shls discard_86 v_shl_i_2_3_1 v_conv6_i_2_3_1 1;
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
shls discard_87 v_shl_i_3_3_1 v_conv6_i_3_3_1 1;
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
shls discard_88 v_shl_i_4_3_1 v_conv6_i_4_3_1 1;
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
shls discard_89 v_shl_i_5_3_1 v_conv6_i_5_3_1 1;
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
shls discard_90 v_shl_i_6_3_1 v_conv6_i_6_3_1 1;
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
(*   %arrayidx45.3.1 = getelementptr inbounds [25 x i8], [25 x i8]* %p0, i64 0, i64 8 *)
(*   store i8 %conv3.i.7.3.1, i8* %arrayidx45.3.1, align 1 *)
mov p0_8 v_conv3_i_7_3_1;
(*   %62 = load i8, i8* %arrayidx47.1, align 1 *)
mov v62 a_1;
(*   %arrayidx51.3.1 = getelementptr inbounds [25 x i8], [25 x i8]* %s, i64 0, i64 8 *)
(*   %63 = load i8, i8* %arrayidx51.3.1, align 1 *)
mov v63 s_8;
(*   %conv.i127.3198.1 = zext i8 %63 to i32 *)
cast v_conv_i127_3198_1@uint32 v63@uint8;
(*   %and.i128.3199.1 = and i32 %conv.i127.3198.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_3199_1 v_conv_i127_3198_1 (0x1)@uint32;
(*   %conv1.i129.3200.1 = zext i8 %62 to i32 *)
cast v_conv1_i129_3200_1@uint32 v62@uint8;
(*   %mul.i130.3201.1 = mul nsw i32 %and.i128.3199.1, %conv1.i129.3200.1 *)
mul v_mul_i130_3201_1 v_and_i128_3199_1 v_conv1_i129_3200_1;
(*   %conv3.i133.3202.1 = trunc i32 %mul.i130.3201.1 to i8 *)
split tmp_v_mul_i130_3201_1 v_conv3_i133_3202_1 v_mul_i130_3201_1 8;
vpc v_conv3_i133_3202_1@uint8 v_conv3_i133_3202_1@uint32;
(*   %conv4.i134.3203.1 = zext i8 %63 to i32 *)
cast v_conv4_i134_3203_1@uint32 v63@uint8;
(*   %shr.i135.3204.1 = ashr i32 %conv4.i134.3203.1, 1 *)
(* You may need to modify here *)
split v_shr_i135_3204_1 tmp_to_be_used v_conv4_i134_3203_1 1;
(*   %conv5.i136.3205.1 = trunc i32 %shr.i135.3204.1 to i8 *)
split tmp_v_shr_i135_3204_1 v_conv5_i136_3205_1 v_shr_i135_3204_1 8;
vpc v_conv5_i136_3205_1@uint8 v_conv5_i136_3205_1@uint32;
(*   %conv6.i137.3206.1 = zext i8 %62 to i32 *)
cast v_conv6_i137_3206_1@uint32 v62@uint8;
(*   %shl.i138.3207.1 = shl i32 %conv6.i137.3206.1, 1 *)
shls discard_91 v_shl_i138_3207_1 v_conv6_i137_3206_1 1;
(*   %conv7.i139.3208.1 = trunc i32 %shl.i138.3207.1 to i8 *)
split tmp_v_shl_i138_3207_1 v_conv7_i139_3208_1 v_shl_i138_3207_1 8;
vpc v_conv7_i139_3208_1@uint8 v_conv7_i139_3208_1@uint32;
(*   %conv.i127.1.3.1 = zext i8 %conv5.i136.3205.1 to i32 *)
cast v_conv_i127_1_3_1@uint32 v_conv5_i136_3205_1@uint8;
(*   %and.i128.1.3.1 = and i32 %conv.i127.1.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1_3_1 v_conv_i127_1_3_1 (0x1)@uint32;
(*   %conv1.i129.1.3.1 = zext i8 %conv7.i139.3208.1 to i32 *)
cast v_conv1_i129_1_3_1@uint32 v_conv7_i139_3208_1@uint8;
(*   %mul.i130.1.3.1 = mul nsw i32 %and.i128.1.3.1, %conv1.i129.1.3.1 *)
mul v_mul_i130_1_3_1 v_and_i128_1_3_1 v_conv1_i129_1_3_1;
(*   %conv2.i131.1.3.1 = zext i8 %conv3.i133.3202.1 to i32 *)
cast v_conv2_i131_1_3_1@uint32 v_conv3_i133_3202_1@uint8;
(*   %xor.i132.1.3.1 = xor i32 %conv2.i131.1.3.1, %mul.i130.1.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_1_3_1 v_conv2_i131_1_3_1 v_mul_i130_1_3_1;
(*   %conv3.i133.1.3.1 = trunc i32 %xor.i132.1.3.1 to i8 *)
split tmp_v_xor_i132_1_3_1 v_conv3_i133_1_3_1 v_xor_i132_1_3_1 8;
vpc v_conv3_i133_1_3_1@uint8 v_conv3_i133_1_3_1@uint32;
(*   %conv4.i134.1.3.1 = zext i8 %conv5.i136.3205.1 to i32 *)
cast v_conv4_i134_1_3_1@uint32 v_conv5_i136_3205_1@uint8;
(*   %shr.i135.1.3.1 = ashr i32 %conv4.i134.1.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i135_1_3_1 tmp_to_be_used v_conv4_i134_1_3_1 1;
(*   %conv5.i136.1.3.1 = trunc i32 %shr.i135.1.3.1 to i8 *)
split tmp_v_shr_i135_1_3_1 v_conv5_i136_1_3_1 v_shr_i135_1_3_1 8;
vpc v_conv5_i136_1_3_1@uint8 v_conv5_i136_1_3_1@uint32;
(*   %conv6.i137.1.3.1 = zext i8 %conv7.i139.3208.1 to i32 *)
cast v_conv6_i137_1_3_1@uint32 v_conv7_i139_3208_1@uint8;
(*   %shl.i138.1.3.1 = shl i32 %conv6.i137.1.3.1, 1 *)
shls discard_92 v_shl_i138_1_3_1 v_conv6_i137_1_3_1 1;
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
shls discard_93 v_shl_i138_2_3_1 v_conv6_i137_2_3_1 1;
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
shls discard_94 v_shl_i138_3_3_1 v_conv6_i137_3_3_1 1;
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
shls discard_95 v_shl_i138_4_3_1 v_conv6_i137_4_3_1 1;
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
shls discard_96 v_shl_i138_5_3_1 v_conv6_i137_5_3_1 1;
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
shls discard_97 v_shl_i138_6_3_1 v_conv6_i137_6_3_1 1;
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
(*   %arrayidx56.3.1 = getelementptr inbounds [25 x i8], [25 x i8]* %p1, i64 0, i64 8 *)
(*   store i8 %conv3.i133.7.3.1, i8* %arrayidx56.3.1, align 1 *)
mov p1_8 v_conv3_i133_7_3_1;
(*   %arrayidx60.3.1 = getelementptr inbounds [25 x i8], [25 x i8]* %p0, i64 0, i64 8 *)
(*   %64 = load i8, i8* %arrayidx60.3.1, align 1 *)
mov v64 p0_8;
(*   %conv61.3.1 = zext i8 %64 to i32 *)
cast v_conv61_3_1@uint32 v64@uint8;
(*   %arrayidx65.3.1 = getelementptr inbounds [25 x i8], [25 x i8]* %p1, i64 0, i64 8 *)
(*   %65 = load i8, i8* %arrayidx65.3.1, align 1 *)
mov v65 p1_8;
(*   %conv66.3.1 = zext i8 %65 to i32 *)
cast v_conv66_3_1@uint32 v65@uint8;
(*   %xor67.3.1 = xor i32 %conv61.3.1, %conv66.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor67_3_1 v_conv61_3_1 v_conv66_3_1;
(*   %conv68.3.1 = trunc i32 %xor67.3.1 to i8 *)
split tmp_v_xor67_3_1 v_conv68_3_1 v_xor67_3_1 8;
vpc v_conv68_3_1@uint8 v_conv68_3_1@uint32;
(*   %arrayidx72.3.1 = getelementptr inbounds [25 x i8], [25 x i8]* %z, i64 0, i64 8 *)
(*   store i8 %conv68.3.1, i8* %arrayidx72.3.1, align 1 *)
mov z_8 v_conv68_3_1;
(*   %arrayidx22.4.1 = getelementptr inbounds i8, i8* %b, i64 4 *)
(*   %66 = load i8, i8* %arrayidx22.4.1, align 1 *)
mov v66 b_4;
(*   %conv.4.1 = zext i8 %66 to i32 *)
cast v_conv_4_1@uint32 v66@uint8;
(*   %arrayidx26.4.1 = getelementptr inbounds i8, i8* %r, i64 9 *)
(*   %67 = load i8, i8* %arrayidx26.4.1, align 1 *)
mov v67 r_9;
(*   %conv27.4.1 = zext i8 %67 to i32 *)
cast v_conv27_4_1@uint32 v67@uint8;
(*   %xor.4.1 = xor i32 %conv.4.1, %conv27.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_4_1 v_conv_4_1 v_conv27_4_1;
(*   %conv28.4.1 = trunc i32 %xor.4.1 to i8 *)
split tmp_v_xor_4_1 v_conv28_4_1 v_xor_4_1 8;
vpc v_conv28_4_1@uint8 v_conv28_4_1@uint32;
(*   %arrayidx32.4.1 = getelementptr inbounds [25 x i8], [25 x i8]* %s, i64 0, i64 9 *)
(*   store i8 %conv28.4.1, i8* %arrayidx32.4.1, align 1 *)
mov s_9 v_conv28_4_1;
(*   %68 = load i8, i8* %arrayidx34.1, align 1 *)
mov v68 a_1;
(*   %conv35.4.1 = zext i8 %68 to i32 *)
cast v_conv35_4_1@uint32 v68@uint8;
(*   %xor36.4.1 = xor i32 %conv35.4.1, 1 *)
(* You may need to modify here *)
xor uint32 v_xor36_4_1 v_conv35_4_1 (0x1)@uint32;
(*   %conv37.4.1 = trunc i32 %xor36.4.1 to i8 *)
split tmp_v_xor36_4_1 v_conv37_4_1 v_xor36_4_1 8;
vpc v_conv37_4_1@uint8 v_conv37_4_1@uint32;
(*   %arrayidx41.4.1 = getelementptr inbounds i8, i8* %r, i64 9 *)
(*   %69 = load i8, i8* %arrayidx41.4.1, align 1 *)
mov v69 r_9;
(*   %conv.i.4209.1 = zext i8 %69 to i32 *)
cast v_conv_i_4209_1@uint32 v69@uint8;
(*   %and.i.4210.1 = and i32 %conv.i.4209.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4210_1 v_conv_i_4209_1 (0x1)@uint32;
(*   %conv1.i.4211.1 = zext i8 %conv37.4.1 to i32 *)
cast v_conv1_i_4211_1@uint32 v_conv37_4_1@uint8;
(*   %mul.i.4212.1 = mul nsw i32 %and.i.4210.1, %conv1.i.4211.1 *)
mul v_mul_i_4212_1 v_and_i_4210_1 v_conv1_i_4211_1;
(*   %conv3.i.4213.1 = trunc i32 %mul.i.4212.1 to i8 *)
split tmp_v_mul_i_4212_1 v_conv3_i_4213_1 v_mul_i_4212_1 8;
vpc v_conv3_i_4213_1@uint8 v_conv3_i_4213_1@uint32;
(*   %conv4.i.4214.1 = zext i8 %69 to i32 *)
cast v_conv4_i_4214_1@uint32 v69@uint8;
(*   %shr.i.4215.1 = ashr i32 %conv4.i.4214.1, 1 *)
(* You may need to modify here *)
split v_shr_i_4215_1 tmp_to_be_used v_conv4_i_4214_1 1;
(*   %conv5.i.4216.1 = trunc i32 %shr.i.4215.1 to i8 *)
split tmp_v_shr_i_4215_1 v_conv5_i_4216_1 v_shr_i_4215_1 8;
vpc v_conv5_i_4216_1@uint8 v_conv5_i_4216_1@uint32;
(*   %conv6.i.4217.1 = zext i8 %conv37.4.1 to i32 *)
cast v_conv6_i_4217_1@uint32 v_conv37_4_1@uint8;
(*   %shl.i.4218.1 = shl i32 %conv6.i.4217.1, 1 *)
shls discard_98 v_shl_i_4218_1 v_conv6_i_4217_1 1;
(*   %conv7.i.4219.1 = trunc i32 %shl.i.4218.1 to i8 *)
split tmp_v_shl_i_4218_1 v_conv7_i_4219_1 v_shl_i_4218_1 8;
vpc v_conv7_i_4219_1@uint8 v_conv7_i_4219_1@uint32;
(*   %conv.i.1.4.1 = zext i8 %conv5.i.4216.1 to i32 *)
cast v_conv_i_1_4_1@uint32 v_conv5_i_4216_1@uint8;
(*   %and.i.1.4.1 = and i32 %conv.i.1.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_4_1 v_conv_i_1_4_1 (0x1)@uint32;
(*   %conv1.i.1.4.1 = zext i8 %conv7.i.4219.1 to i32 *)
cast v_conv1_i_1_4_1@uint32 v_conv7_i_4219_1@uint8;
(*   %mul.i.1.4.1 = mul nsw i32 %and.i.1.4.1, %conv1.i.1.4.1 *)
mul v_mul_i_1_4_1 v_and_i_1_4_1 v_conv1_i_1_4_1;
(*   %conv2.i.1.4.1 = zext i8 %conv3.i.4213.1 to i32 *)
cast v_conv2_i_1_4_1@uint32 v_conv3_i_4213_1@uint8;
(*   %xor.i.1.4.1 = xor i32 %conv2.i.1.4.1, %mul.i.1.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_4_1 v_conv2_i_1_4_1 v_mul_i_1_4_1;
(*   %conv3.i.1.4.1 = trunc i32 %xor.i.1.4.1 to i8 *)
split tmp_v_xor_i_1_4_1 v_conv3_i_1_4_1 v_xor_i_1_4_1 8;
vpc v_conv3_i_1_4_1@uint8 v_conv3_i_1_4_1@uint32;
(*   %conv4.i.1.4.1 = zext i8 %conv5.i.4216.1 to i32 *)
cast v_conv4_i_1_4_1@uint32 v_conv5_i_4216_1@uint8;
(*   %shr.i.1.4.1 = ashr i32 %conv4.i.1.4.1, 1 *)
(* You may need to modify here *)
split v_shr_i_1_4_1 tmp_to_be_used v_conv4_i_1_4_1 1;
(*   %conv5.i.1.4.1 = trunc i32 %shr.i.1.4.1 to i8 *)
split tmp_v_shr_i_1_4_1 v_conv5_i_1_4_1 v_shr_i_1_4_1 8;
vpc v_conv5_i_1_4_1@uint8 v_conv5_i_1_4_1@uint32;
(*   %conv6.i.1.4.1 = zext i8 %conv7.i.4219.1 to i32 *)
cast v_conv6_i_1_4_1@uint32 v_conv7_i_4219_1@uint8;
(*   %shl.i.1.4.1 = shl i32 %conv6.i.1.4.1, 1 *)
shls discard_99 v_shl_i_1_4_1 v_conv6_i_1_4_1 1;
(*   %conv7.i.1.4.1 = trunc i32 %shl.i.1.4.1 to i8 *)
split tmp_v_shl_i_1_4_1 v_conv7_i_1_4_1 v_shl_i_1_4_1 8;
vpc v_conv7_i_1_4_1@uint8 v_conv7_i_1_4_1@uint32;
(*   %conv.i.2.4.1 = zext i8 %conv5.i.1.4.1 to i32 *)
cast v_conv_i_2_4_1@uint32 v_conv5_i_1_4_1@uint8;
(*   %and.i.2.4.1 = and i32 %conv.i.2.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_4_1 v_conv_i_2_4_1 (0x1)@uint32;
(*   %conv1.i.2.4.1 = zext i8 %conv7.i.1.4.1 to i32 *)
cast v_conv1_i_2_4_1@uint32 v_conv7_i_1_4_1@uint8;
(*   %mul.i.2.4.1 = mul nsw i32 %and.i.2.4.1, %conv1.i.2.4.1 *)
mul v_mul_i_2_4_1 v_and_i_2_4_1 v_conv1_i_2_4_1;
(*   %conv2.i.2.4.1 = zext i8 %conv3.i.1.4.1 to i32 *)
cast v_conv2_i_2_4_1@uint32 v_conv3_i_1_4_1@uint8;
(*   %xor.i.2.4.1 = xor i32 %conv2.i.2.4.1, %mul.i.2.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_4_1 v_conv2_i_2_4_1 v_mul_i_2_4_1;
(*   %conv3.i.2.4.1 = trunc i32 %xor.i.2.4.1 to i8 *)
split tmp_v_xor_i_2_4_1 v_conv3_i_2_4_1 v_xor_i_2_4_1 8;
vpc v_conv3_i_2_4_1@uint8 v_conv3_i_2_4_1@uint32;
(*   %conv4.i.2.4.1 = zext i8 %conv5.i.1.4.1 to i32 *)
cast v_conv4_i_2_4_1@uint32 v_conv5_i_1_4_1@uint8;
(*   %shr.i.2.4.1 = ashr i32 %conv4.i.2.4.1, 1 *)
(* You may need to modify here *)
split v_shr_i_2_4_1 tmp_to_be_used v_conv4_i_2_4_1 1;
(*   %conv5.i.2.4.1 = trunc i32 %shr.i.2.4.1 to i8 *)
split tmp_v_shr_i_2_4_1 v_conv5_i_2_4_1 v_shr_i_2_4_1 8;
vpc v_conv5_i_2_4_1@uint8 v_conv5_i_2_4_1@uint32;
(*   %conv6.i.2.4.1 = zext i8 %conv7.i.1.4.1 to i32 *)
cast v_conv6_i_2_4_1@uint32 v_conv7_i_1_4_1@uint8;
(*   %shl.i.2.4.1 = shl i32 %conv6.i.2.4.1, 1 *)
shls discard_100 v_shl_i_2_4_1 v_conv6_i_2_4_1 1;
(*   %conv7.i.2.4.1 = trunc i32 %shl.i.2.4.1 to i8 *)
split tmp_v_shl_i_2_4_1 v_conv7_i_2_4_1 v_shl_i_2_4_1 8;
vpc v_conv7_i_2_4_1@uint8 v_conv7_i_2_4_1@uint32;
(*   %conv.i.3.4.1 = zext i8 %conv5.i.2.4.1 to i32 *)
cast v_conv_i_3_4_1@uint32 v_conv5_i_2_4_1@uint8;
(*   %and.i.3.4.1 = and i32 %conv.i.3.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_4_1 v_conv_i_3_4_1 (0x1)@uint32;
(*   %conv1.i.3.4.1 = zext i8 %conv7.i.2.4.1 to i32 *)
cast v_conv1_i_3_4_1@uint32 v_conv7_i_2_4_1@uint8;
(*   %mul.i.3.4.1 = mul nsw i32 %and.i.3.4.1, %conv1.i.3.4.1 *)
mul v_mul_i_3_4_1 v_and_i_3_4_1 v_conv1_i_3_4_1;
(*   %conv2.i.3.4.1 = zext i8 %conv3.i.2.4.1 to i32 *)
cast v_conv2_i_3_4_1@uint32 v_conv3_i_2_4_1@uint8;
(*   %xor.i.3.4.1 = xor i32 %conv2.i.3.4.1, %mul.i.3.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_4_1 v_conv2_i_3_4_1 v_mul_i_3_4_1;
(*   %conv3.i.3.4.1 = trunc i32 %xor.i.3.4.1 to i8 *)
split tmp_v_xor_i_3_4_1 v_conv3_i_3_4_1 v_xor_i_3_4_1 8;
vpc v_conv3_i_3_4_1@uint8 v_conv3_i_3_4_1@uint32;
(*   %conv4.i.3.4.1 = zext i8 %conv5.i.2.4.1 to i32 *)
cast v_conv4_i_3_4_1@uint32 v_conv5_i_2_4_1@uint8;
(*   %shr.i.3.4.1 = ashr i32 %conv4.i.3.4.1, 1 *)
(* You may need to modify here *)
split v_shr_i_3_4_1 tmp_to_be_used v_conv4_i_3_4_1 1;
(*   %conv5.i.3.4.1 = trunc i32 %shr.i.3.4.1 to i8 *)
split tmp_v_shr_i_3_4_1 v_conv5_i_3_4_1 v_shr_i_3_4_1 8;
vpc v_conv5_i_3_4_1@uint8 v_conv5_i_3_4_1@uint32;
(*   %conv6.i.3.4.1 = zext i8 %conv7.i.2.4.1 to i32 *)
cast v_conv6_i_3_4_1@uint32 v_conv7_i_2_4_1@uint8;
(*   %shl.i.3.4.1 = shl i32 %conv6.i.3.4.1, 1 *)
shls discard_101 v_shl_i_3_4_1 v_conv6_i_3_4_1 1;
(*   %conv7.i.3.4.1 = trunc i32 %shl.i.3.4.1 to i8 *)
split tmp_v_shl_i_3_4_1 v_conv7_i_3_4_1 v_shl_i_3_4_1 8;
vpc v_conv7_i_3_4_1@uint8 v_conv7_i_3_4_1@uint32;
(*   %conv.i.4.4.1 = zext i8 %conv5.i.3.4.1 to i32 *)
cast v_conv_i_4_4_1@uint32 v_conv5_i_3_4_1@uint8;
(*   %and.i.4.4.1 = and i32 %conv.i.4.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_4_1 v_conv_i_4_4_1 (0x1)@uint32;
(*   %conv1.i.4.4.1 = zext i8 %conv7.i.3.4.1 to i32 *)
cast v_conv1_i_4_4_1@uint32 v_conv7_i_3_4_1@uint8;
(*   %mul.i.4.4.1 = mul nsw i32 %and.i.4.4.1, %conv1.i.4.4.1 *)
mul v_mul_i_4_4_1 v_and_i_4_4_1 v_conv1_i_4_4_1;
(*   %conv2.i.4.4.1 = zext i8 %conv3.i.3.4.1 to i32 *)
cast v_conv2_i_4_4_1@uint32 v_conv3_i_3_4_1@uint8;
(*   %xor.i.4.4.1 = xor i32 %conv2.i.4.4.1, %mul.i.4.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_4_1 v_conv2_i_4_4_1 v_mul_i_4_4_1;
(*   %conv3.i.4.4.1 = trunc i32 %xor.i.4.4.1 to i8 *)
split tmp_v_xor_i_4_4_1 v_conv3_i_4_4_1 v_xor_i_4_4_1 8;
vpc v_conv3_i_4_4_1@uint8 v_conv3_i_4_4_1@uint32;
(*   %conv4.i.4.4.1 = zext i8 %conv5.i.3.4.1 to i32 *)
cast v_conv4_i_4_4_1@uint32 v_conv5_i_3_4_1@uint8;
(*   %shr.i.4.4.1 = ashr i32 %conv4.i.4.4.1, 1 *)
(* You may need to modify here *)
split v_shr_i_4_4_1 tmp_to_be_used v_conv4_i_4_4_1 1;
(*   %conv5.i.4.4.1 = trunc i32 %shr.i.4.4.1 to i8 *)
split tmp_v_shr_i_4_4_1 v_conv5_i_4_4_1 v_shr_i_4_4_1 8;
vpc v_conv5_i_4_4_1@uint8 v_conv5_i_4_4_1@uint32;
(*   %conv6.i.4.4.1 = zext i8 %conv7.i.3.4.1 to i32 *)
cast v_conv6_i_4_4_1@uint32 v_conv7_i_3_4_1@uint8;
(*   %shl.i.4.4.1 = shl i32 %conv6.i.4.4.1, 1 *)
shls discard_102 v_shl_i_4_4_1 v_conv6_i_4_4_1 1;
(*   %conv7.i.4.4.1 = trunc i32 %shl.i.4.4.1 to i8 *)
split tmp_v_shl_i_4_4_1 v_conv7_i_4_4_1 v_shl_i_4_4_1 8;
vpc v_conv7_i_4_4_1@uint8 v_conv7_i_4_4_1@uint32;
(*   %conv.i.5.4.1 = zext i8 %conv5.i.4.4.1 to i32 *)
cast v_conv_i_5_4_1@uint32 v_conv5_i_4_4_1@uint8;
(*   %and.i.5.4.1 = and i32 %conv.i.5.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_4_1 v_conv_i_5_4_1 (0x1)@uint32;
(*   %conv1.i.5.4.1 = zext i8 %conv7.i.4.4.1 to i32 *)
cast v_conv1_i_5_4_1@uint32 v_conv7_i_4_4_1@uint8;
(*   %mul.i.5.4.1 = mul nsw i32 %and.i.5.4.1, %conv1.i.5.4.1 *)
mul v_mul_i_5_4_1 v_and_i_5_4_1 v_conv1_i_5_4_1;
(*   %conv2.i.5.4.1 = zext i8 %conv3.i.4.4.1 to i32 *)
cast v_conv2_i_5_4_1@uint32 v_conv3_i_4_4_1@uint8;
(*   %xor.i.5.4.1 = xor i32 %conv2.i.5.4.1, %mul.i.5.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_4_1 v_conv2_i_5_4_1 v_mul_i_5_4_1;
(*   %conv3.i.5.4.1 = trunc i32 %xor.i.5.4.1 to i8 *)
split tmp_v_xor_i_5_4_1 v_conv3_i_5_4_1 v_xor_i_5_4_1 8;
vpc v_conv3_i_5_4_1@uint8 v_conv3_i_5_4_1@uint32;
(*   %conv4.i.5.4.1 = zext i8 %conv5.i.4.4.1 to i32 *)
cast v_conv4_i_5_4_1@uint32 v_conv5_i_4_4_1@uint8;
(*   %shr.i.5.4.1 = ashr i32 %conv4.i.5.4.1, 1 *)
(* You may need to modify here *)
split v_shr_i_5_4_1 tmp_to_be_used v_conv4_i_5_4_1 1;
(*   %conv5.i.5.4.1 = trunc i32 %shr.i.5.4.1 to i8 *)
split tmp_v_shr_i_5_4_1 v_conv5_i_5_4_1 v_shr_i_5_4_1 8;
vpc v_conv5_i_5_4_1@uint8 v_conv5_i_5_4_1@uint32;
(*   %conv6.i.5.4.1 = zext i8 %conv7.i.4.4.1 to i32 *)
cast v_conv6_i_5_4_1@uint32 v_conv7_i_4_4_1@uint8;
(*   %shl.i.5.4.1 = shl i32 %conv6.i.5.4.1, 1 *)
shls discard_103 v_shl_i_5_4_1 v_conv6_i_5_4_1 1;
(*   %conv7.i.5.4.1 = trunc i32 %shl.i.5.4.1 to i8 *)
split tmp_v_shl_i_5_4_1 v_conv7_i_5_4_1 v_shl_i_5_4_1 8;
vpc v_conv7_i_5_4_1@uint8 v_conv7_i_5_4_1@uint32;
(*   %conv.i.6.4.1 = zext i8 %conv5.i.5.4.1 to i32 *)
cast v_conv_i_6_4_1@uint32 v_conv5_i_5_4_1@uint8;
(*   %and.i.6.4.1 = and i32 %conv.i.6.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_4_1 v_conv_i_6_4_1 (0x1)@uint32;
(*   %conv1.i.6.4.1 = zext i8 %conv7.i.5.4.1 to i32 *)
cast v_conv1_i_6_4_1@uint32 v_conv7_i_5_4_1@uint8;
(*   %mul.i.6.4.1 = mul nsw i32 %and.i.6.4.1, %conv1.i.6.4.1 *)
mul v_mul_i_6_4_1 v_and_i_6_4_1 v_conv1_i_6_4_1;
(*   %conv2.i.6.4.1 = zext i8 %conv3.i.5.4.1 to i32 *)
cast v_conv2_i_6_4_1@uint32 v_conv3_i_5_4_1@uint8;
(*   %xor.i.6.4.1 = xor i32 %conv2.i.6.4.1, %mul.i.6.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_4_1 v_conv2_i_6_4_1 v_mul_i_6_4_1;
(*   %conv3.i.6.4.1 = trunc i32 %xor.i.6.4.1 to i8 *)
split tmp_v_xor_i_6_4_1 v_conv3_i_6_4_1 v_xor_i_6_4_1 8;
vpc v_conv3_i_6_4_1@uint8 v_conv3_i_6_4_1@uint32;
(*   %conv4.i.6.4.1 = zext i8 %conv5.i.5.4.1 to i32 *)
cast v_conv4_i_6_4_1@uint32 v_conv5_i_5_4_1@uint8;
(*   %shr.i.6.4.1 = ashr i32 %conv4.i.6.4.1, 1 *)
(* You may need to modify here *)
split v_shr_i_6_4_1 tmp_to_be_used v_conv4_i_6_4_1 1;
(*   %conv5.i.6.4.1 = trunc i32 %shr.i.6.4.1 to i8 *)
split tmp_v_shr_i_6_4_1 v_conv5_i_6_4_1 v_shr_i_6_4_1 8;
vpc v_conv5_i_6_4_1@uint8 v_conv5_i_6_4_1@uint32;
(*   %conv6.i.6.4.1 = zext i8 %conv7.i.5.4.1 to i32 *)
cast v_conv6_i_6_4_1@uint32 v_conv7_i_5_4_1@uint8;
(*   %shl.i.6.4.1 = shl i32 %conv6.i.6.4.1, 1 *)
shls discard_104 v_shl_i_6_4_1 v_conv6_i_6_4_1 1;
(*   %conv7.i.6.4.1 = trunc i32 %shl.i.6.4.1 to i8 *)
split tmp_v_shl_i_6_4_1 v_conv7_i_6_4_1 v_shl_i_6_4_1 8;
vpc v_conv7_i_6_4_1@uint8 v_conv7_i_6_4_1@uint32;
(*   %conv.i.7.4.1 = zext i8 %conv5.i.6.4.1 to i32 *)
cast v_conv_i_7_4_1@uint32 v_conv5_i_6_4_1@uint8;
(*   %and.i.7.4.1 = and i32 %conv.i.7.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_4_1 v_conv_i_7_4_1 (0x1)@uint32;
(*   %conv1.i.7.4.1 = zext i8 %conv7.i.6.4.1 to i32 *)
cast v_conv1_i_7_4_1@uint32 v_conv7_i_6_4_1@uint8;
(*   %mul.i.7.4.1 = mul nsw i32 %and.i.7.4.1, %conv1.i.7.4.1 *)
mul v_mul_i_7_4_1 v_and_i_7_4_1 v_conv1_i_7_4_1;
(*   %conv2.i.7.4.1 = zext i8 %conv3.i.6.4.1 to i32 *)
cast v_conv2_i_7_4_1@uint32 v_conv3_i_6_4_1@uint8;
(*   %xor.i.7.4.1 = xor i32 %conv2.i.7.4.1, %mul.i.7.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_4_1 v_conv2_i_7_4_1 v_mul_i_7_4_1;
(*   %conv3.i.7.4.1 = trunc i32 %xor.i.7.4.1 to i8 *)
split tmp_v_xor_i_7_4_1 v_conv3_i_7_4_1 v_xor_i_7_4_1 8;
vpc v_conv3_i_7_4_1@uint8 v_conv3_i_7_4_1@uint32;
(*   %arrayidx45.4.1 = getelementptr inbounds [25 x i8], [25 x i8]* %p0, i64 0, i64 9 *)
(*   store i8 %conv3.i.7.4.1, i8* %arrayidx45.4.1, align 1 *)
mov p0_9 v_conv3_i_7_4_1;
(*   %70 = load i8, i8* %arrayidx47.1, align 1 *)
mov v70 a_1;
(*   %arrayidx51.4.1 = getelementptr inbounds [25 x i8], [25 x i8]* %s, i64 0, i64 9 *)
(*   %71 = load i8, i8* %arrayidx51.4.1, align 1 *)
mov v71 s_9;
(*   %conv.i127.4220.1 = zext i8 %71 to i32 *)
cast v_conv_i127_4220_1@uint32 v71@uint8;
(*   %and.i128.4221.1 = and i32 %conv.i127.4220.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_4221_1 v_conv_i127_4220_1 (0x1)@uint32;
(*   %conv1.i129.4222.1 = zext i8 %70 to i32 *)
cast v_conv1_i129_4222_1@uint32 v70@uint8;
(*   %mul.i130.4223.1 = mul nsw i32 %and.i128.4221.1, %conv1.i129.4222.1 *)
mul v_mul_i130_4223_1 v_and_i128_4221_1 v_conv1_i129_4222_1;
(*   %conv3.i133.4224.1 = trunc i32 %mul.i130.4223.1 to i8 *)
split tmp_v_mul_i130_4223_1 v_conv3_i133_4224_1 v_mul_i130_4223_1 8;
vpc v_conv3_i133_4224_1@uint8 v_conv3_i133_4224_1@uint32;
(*   %conv4.i134.4225.1 = zext i8 %71 to i32 *)
cast v_conv4_i134_4225_1@uint32 v71@uint8;
(*   %shr.i135.4226.1 = ashr i32 %conv4.i134.4225.1, 1 *)
(* You may need to modify here *)
split v_shr_i135_4226_1 tmp_to_be_used v_conv4_i134_4225_1 1;
(*   %conv5.i136.4227.1 = trunc i32 %shr.i135.4226.1 to i8 *)
split tmp_v_shr_i135_4226_1 v_conv5_i136_4227_1 v_shr_i135_4226_1 8;
vpc v_conv5_i136_4227_1@uint8 v_conv5_i136_4227_1@uint32;
(*   %conv6.i137.4228.1 = zext i8 %70 to i32 *)
cast v_conv6_i137_4228_1@uint32 v70@uint8;
(*   %shl.i138.4229.1 = shl i32 %conv6.i137.4228.1, 1 *)
shls discard_105 v_shl_i138_4229_1 v_conv6_i137_4228_1 1;
(*   %conv7.i139.4230.1 = trunc i32 %shl.i138.4229.1 to i8 *)
split tmp_v_shl_i138_4229_1 v_conv7_i139_4230_1 v_shl_i138_4229_1 8;
vpc v_conv7_i139_4230_1@uint8 v_conv7_i139_4230_1@uint32;
(*   %conv.i127.1.4.1 = zext i8 %conv5.i136.4227.1 to i32 *)
cast v_conv_i127_1_4_1@uint32 v_conv5_i136_4227_1@uint8;
(*   %and.i128.1.4.1 = and i32 %conv.i127.1.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1_4_1 v_conv_i127_1_4_1 (0x1)@uint32;
(*   %conv1.i129.1.4.1 = zext i8 %conv7.i139.4230.1 to i32 *)
cast v_conv1_i129_1_4_1@uint32 v_conv7_i139_4230_1@uint8;
(*   %mul.i130.1.4.1 = mul nsw i32 %and.i128.1.4.1, %conv1.i129.1.4.1 *)
mul v_mul_i130_1_4_1 v_and_i128_1_4_1 v_conv1_i129_1_4_1;
(*   %conv2.i131.1.4.1 = zext i8 %conv3.i133.4224.1 to i32 *)
cast v_conv2_i131_1_4_1@uint32 v_conv3_i133_4224_1@uint8;
(*   %xor.i132.1.4.1 = xor i32 %conv2.i131.1.4.1, %mul.i130.1.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_1_4_1 v_conv2_i131_1_4_1 v_mul_i130_1_4_1;
(*   %conv3.i133.1.4.1 = trunc i32 %xor.i132.1.4.1 to i8 *)
split tmp_v_xor_i132_1_4_1 v_conv3_i133_1_4_1 v_xor_i132_1_4_1 8;
vpc v_conv3_i133_1_4_1@uint8 v_conv3_i133_1_4_1@uint32;
(*   %conv4.i134.1.4.1 = zext i8 %conv5.i136.4227.1 to i32 *)
cast v_conv4_i134_1_4_1@uint32 v_conv5_i136_4227_1@uint8;
(*   %shr.i135.1.4.1 = ashr i32 %conv4.i134.1.4.1, 1 *)
(* You may need to modify here *)
split v_shr_i135_1_4_1 tmp_to_be_used v_conv4_i134_1_4_1 1;
(*   %conv5.i136.1.4.1 = trunc i32 %shr.i135.1.4.1 to i8 *)
split tmp_v_shr_i135_1_4_1 v_conv5_i136_1_4_1 v_shr_i135_1_4_1 8;
vpc v_conv5_i136_1_4_1@uint8 v_conv5_i136_1_4_1@uint32;
(*   %conv6.i137.1.4.1 = zext i8 %conv7.i139.4230.1 to i32 *)
cast v_conv6_i137_1_4_1@uint32 v_conv7_i139_4230_1@uint8;
(*   %shl.i138.1.4.1 = shl i32 %conv6.i137.1.4.1, 1 *)
shls discard_106 v_shl_i138_1_4_1 v_conv6_i137_1_4_1 1;
(*   %conv7.i139.1.4.1 = trunc i32 %shl.i138.1.4.1 to i8 *)
split tmp_v_shl_i138_1_4_1 v_conv7_i139_1_4_1 v_shl_i138_1_4_1 8;
vpc v_conv7_i139_1_4_1@uint8 v_conv7_i139_1_4_1@uint32;
(*   %conv.i127.2.4.1 = zext i8 %conv5.i136.1.4.1 to i32 *)
cast v_conv_i127_2_4_1@uint32 v_conv5_i136_1_4_1@uint8;
(*   %and.i128.2.4.1 = and i32 %conv.i127.2.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_2_4_1 v_conv_i127_2_4_1 (0x1)@uint32;
(*   %conv1.i129.2.4.1 = zext i8 %conv7.i139.1.4.1 to i32 *)
cast v_conv1_i129_2_4_1@uint32 v_conv7_i139_1_4_1@uint8;
(*   %mul.i130.2.4.1 = mul nsw i32 %and.i128.2.4.1, %conv1.i129.2.4.1 *)
mul v_mul_i130_2_4_1 v_and_i128_2_4_1 v_conv1_i129_2_4_1;
(*   %conv2.i131.2.4.1 = zext i8 %conv3.i133.1.4.1 to i32 *)
cast v_conv2_i131_2_4_1@uint32 v_conv3_i133_1_4_1@uint8;
(*   %xor.i132.2.4.1 = xor i32 %conv2.i131.2.4.1, %mul.i130.2.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_2_4_1 v_conv2_i131_2_4_1 v_mul_i130_2_4_1;
(*   %conv3.i133.2.4.1 = trunc i32 %xor.i132.2.4.1 to i8 *)
split tmp_v_xor_i132_2_4_1 v_conv3_i133_2_4_1 v_xor_i132_2_4_1 8;
vpc v_conv3_i133_2_4_1@uint8 v_conv3_i133_2_4_1@uint32;
(*   %conv4.i134.2.4.1 = zext i8 %conv5.i136.1.4.1 to i32 *)
cast v_conv4_i134_2_4_1@uint32 v_conv5_i136_1_4_1@uint8;
(*   %shr.i135.2.4.1 = ashr i32 %conv4.i134.2.4.1, 1 *)
(* You may need to modify here *)
split v_shr_i135_2_4_1 tmp_to_be_used v_conv4_i134_2_4_1 1;
(*   %conv5.i136.2.4.1 = trunc i32 %shr.i135.2.4.1 to i8 *)
split tmp_v_shr_i135_2_4_1 v_conv5_i136_2_4_1 v_shr_i135_2_4_1 8;
vpc v_conv5_i136_2_4_1@uint8 v_conv5_i136_2_4_1@uint32;
(*   %conv6.i137.2.4.1 = zext i8 %conv7.i139.1.4.1 to i32 *)
cast v_conv6_i137_2_4_1@uint32 v_conv7_i139_1_4_1@uint8;
(*   %shl.i138.2.4.1 = shl i32 %conv6.i137.2.4.1, 1 *)
shls discard_107 v_shl_i138_2_4_1 v_conv6_i137_2_4_1 1;
(*   %conv7.i139.2.4.1 = trunc i32 %shl.i138.2.4.1 to i8 *)
split tmp_v_shl_i138_2_4_1 v_conv7_i139_2_4_1 v_shl_i138_2_4_1 8;
vpc v_conv7_i139_2_4_1@uint8 v_conv7_i139_2_4_1@uint32;
(*   %conv.i127.3.4.1 = zext i8 %conv5.i136.2.4.1 to i32 *)
cast v_conv_i127_3_4_1@uint32 v_conv5_i136_2_4_1@uint8;
(*   %and.i128.3.4.1 = and i32 %conv.i127.3.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_3_4_1 v_conv_i127_3_4_1 (0x1)@uint32;
(*   %conv1.i129.3.4.1 = zext i8 %conv7.i139.2.4.1 to i32 *)
cast v_conv1_i129_3_4_1@uint32 v_conv7_i139_2_4_1@uint8;
(*   %mul.i130.3.4.1 = mul nsw i32 %and.i128.3.4.1, %conv1.i129.3.4.1 *)
mul v_mul_i130_3_4_1 v_and_i128_3_4_1 v_conv1_i129_3_4_1;
(*   %conv2.i131.3.4.1 = zext i8 %conv3.i133.2.4.1 to i32 *)
cast v_conv2_i131_3_4_1@uint32 v_conv3_i133_2_4_1@uint8;
(*   %xor.i132.3.4.1 = xor i32 %conv2.i131.3.4.1, %mul.i130.3.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_3_4_1 v_conv2_i131_3_4_1 v_mul_i130_3_4_1;
(*   %conv3.i133.3.4.1 = trunc i32 %xor.i132.3.4.1 to i8 *)
split tmp_v_xor_i132_3_4_1 v_conv3_i133_3_4_1 v_xor_i132_3_4_1 8;
vpc v_conv3_i133_3_4_1@uint8 v_conv3_i133_3_4_1@uint32;
(*   %conv4.i134.3.4.1 = zext i8 %conv5.i136.2.4.1 to i32 *)
cast v_conv4_i134_3_4_1@uint32 v_conv5_i136_2_4_1@uint8;
(*   %shr.i135.3.4.1 = ashr i32 %conv4.i134.3.4.1, 1 *)
(* You may need to modify here *)
split v_shr_i135_3_4_1 tmp_to_be_used v_conv4_i134_3_4_1 1;
(*   %conv5.i136.3.4.1 = trunc i32 %shr.i135.3.4.1 to i8 *)
split tmp_v_shr_i135_3_4_1 v_conv5_i136_3_4_1 v_shr_i135_3_4_1 8;
vpc v_conv5_i136_3_4_1@uint8 v_conv5_i136_3_4_1@uint32;
(*   %conv6.i137.3.4.1 = zext i8 %conv7.i139.2.4.1 to i32 *)
cast v_conv6_i137_3_4_1@uint32 v_conv7_i139_2_4_1@uint8;
(*   %shl.i138.3.4.1 = shl i32 %conv6.i137.3.4.1, 1 *)
shls discard_108 v_shl_i138_3_4_1 v_conv6_i137_3_4_1 1;
(*   %conv7.i139.3.4.1 = trunc i32 %shl.i138.3.4.1 to i8 *)
split tmp_v_shl_i138_3_4_1 v_conv7_i139_3_4_1 v_shl_i138_3_4_1 8;
vpc v_conv7_i139_3_4_1@uint8 v_conv7_i139_3_4_1@uint32;
(*   %conv.i127.4.4.1 = zext i8 %conv5.i136.3.4.1 to i32 *)
cast v_conv_i127_4_4_1@uint32 v_conv5_i136_3_4_1@uint8;
(*   %and.i128.4.4.1 = and i32 %conv.i127.4.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_4_4_1 v_conv_i127_4_4_1 (0x1)@uint32;
(*   %conv1.i129.4.4.1 = zext i8 %conv7.i139.3.4.1 to i32 *)
cast v_conv1_i129_4_4_1@uint32 v_conv7_i139_3_4_1@uint8;
(*   %mul.i130.4.4.1 = mul nsw i32 %and.i128.4.4.1, %conv1.i129.4.4.1 *)
mul v_mul_i130_4_4_1 v_and_i128_4_4_1 v_conv1_i129_4_4_1;
(*   %conv2.i131.4.4.1 = zext i8 %conv3.i133.3.4.1 to i32 *)
cast v_conv2_i131_4_4_1@uint32 v_conv3_i133_3_4_1@uint8;
(*   %xor.i132.4.4.1 = xor i32 %conv2.i131.4.4.1, %mul.i130.4.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_4_4_1 v_conv2_i131_4_4_1 v_mul_i130_4_4_1;
(*   %conv3.i133.4.4.1 = trunc i32 %xor.i132.4.4.1 to i8 *)
split tmp_v_xor_i132_4_4_1 v_conv3_i133_4_4_1 v_xor_i132_4_4_1 8;
vpc v_conv3_i133_4_4_1@uint8 v_conv3_i133_4_4_1@uint32;
(*   %conv4.i134.4.4.1 = zext i8 %conv5.i136.3.4.1 to i32 *)
cast v_conv4_i134_4_4_1@uint32 v_conv5_i136_3_4_1@uint8;
(*   %shr.i135.4.4.1 = ashr i32 %conv4.i134.4.4.1, 1 *)
(* You may need to modify here *)
split v_shr_i135_4_4_1 tmp_to_be_used v_conv4_i134_4_4_1 1;
(*   %conv5.i136.4.4.1 = trunc i32 %shr.i135.4.4.1 to i8 *)
split tmp_v_shr_i135_4_4_1 v_conv5_i136_4_4_1 v_shr_i135_4_4_1 8;
vpc v_conv5_i136_4_4_1@uint8 v_conv5_i136_4_4_1@uint32;
(*   %conv6.i137.4.4.1 = zext i8 %conv7.i139.3.4.1 to i32 *)
cast v_conv6_i137_4_4_1@uint32 v_conv7_i139_3_4_1@uint8;
(*   %shl.i138.4.4.1 = shl i32 %conv6.i137.4.4.1, 1 *)
shls discard_109 v_shl_i138_4_4_1 v_conv6_i137_4_4_1 1;
(*   %conv7.i139.4.4.1 = trunc i32 %shl.i138.4.4.1 to i8 *)
split tmp_v_shl_i138_4_4_1 v_conv7_i139_4_4_1 v_shl_i138_4_4_1 8;
vpc v_conv7_i139_4_4_1@uint8 v_conv7_i139_4_4_1@uint32;
(*   %conv.i127.5.4.1 = zext i8 %conv5.i136.4.4.1 to i32 *)
cast v_conv_i127_5_4_1@uint32 v_conv5_i136_4_4_1@uint8;
(*   %and.i128.5.4.1 = and i32 %conv.i127.5.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_5_4_1 v_conv_i127_5_4_1 (0x1)@uint32;
(*   %conv1.i129.5.4.1 = zext i8 %conv7.i139.4.4.1 to i32 *)
cast v_conv1_i129_5_4_1@uint32 v_conv7_i139_4_4_1@uint8;
(*   %mul.i130.5.4.1 = mul nsw i32 %and.i128.5.4.1, %conv1.i129.5.4.1 *)
mul v_mul_i130_5_4_1 v_and_i128_5_4_1 v_conv1_i129_5_4_1;
(*   %conv2.i131.5.4.1 = zext i8 %conv3.i133.4.4.1 to i32 *)
cast v_conv2_i131_5_4_1@uint32 v_conv3_i133_4_4_1@uint8;
(*   %xor.i132.5.4.1 = xor i32 %conv2.i131.5.4.1, %mul.i130.5.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_5_4_1 v_conv2_i131_5_4_1 v_mul_i130_5_4_1;
(*   %conv3.i133.5.4.1 = trunc i32 %xor.i132.5.4.1 to i8 *)
split tmp_v_xor_i132_5_4_1 v_conv3_i133_5_4_1 v_xor_i132_5_4_1 8;
vpc v_conv3_i133_5_4_1@uint8 v_conv3_i133_5_4_1@uint32;
(*   %conv4.i134.5.4.1 = zext i8 %conv5.i136.4.4.1 to i32 *)
cast v_conv4_i134_5_4_1@uint32 v_conv5_i136_4_4_1@uint8;
(*   %shr.i135.5.4.1 = ashr i32 %conv4.i134.5.4.1, 1 *)
(* You may need to modify here *)
split v_shr_i135_5_4_1 tmp_to_be_used v_conv4_i134_5_4_1 1;
(*   %conv5.i136.5.4.1 = trunc i32 %shr.i135.5.4.1 to i8 *)
split tmp_v_shr_i135_5_4_1 v_conv5_i136_5_4_1 v_shr_i135_5_4_1 8;
vpc v_conv5_i136_5_4_1@uint8 v_conv5_i136_5_4_1@uint32;
(*   %conv6.i137.5.4.1 = zext i8 %conv7.i139.4.4.1 to i32 *)
cast v_conv6_i137_5_4_1@uint32 v_conv7_i139_4_4_1@uint8;
(*   %shl.i138.5.4.1 = shl i32 %conv6.i137.5.4.1, 1 *)
shls discard_110 v_shl_i138_5_4_1 v_conv6_i137_5_4_1 1;
(*   %conv7.i139.5.4.1 = trunc i32 %shl.i138.5.4.1 to i8 *)
split tmp_v_shl_i138_5_4_1 v_conv7_i139_5_4_1 v_shl_i138_5_4_1 8;
vpc v_conv7_i139_5_4_1@uint8 v_conv7_i139_5_4_1@uint32;
(*   %conv.i127.6.4.1 = zext i8 %conv5.i136.5.4.1 to i32 *)
cast v_conv_i127_6_4_1@uint32 v_conv5_i136_5_4_1@uint8;
(*   %and.i128.6.4.1 = and i32 %conv.i127.6.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_6_4_1 v_conv_i127_6_4_1 (0x1)@uint32;
(*   %conv1.i129.6.4.1 = zext i8 %conv7.i139.5.4.1 to i32 *)
cast v_conv1_i129_6_4_1@uint32 v_conv7_i139_5_4_1@uint8;
(*   %mul.i130.6.4.1 = mul nsw i32 %and.i128.6.4.1, %conv1.i129.6.4.1 *)
mul v_mul_i130_6_4_1 v_and_i128_6_4_1 v_conv1_i129_6_4_1;
(*   %conv2.i131.6.4.1 = zext i8 %conv3.i133.5.4.1 to i32 *)
cast v_conv2_i131_6_4_1@uint32 v_conv3_i133_5_4_1@uint8;
(*   %xor.i132.6.4.1 = xor i32 %conv2.i131.6.4.1, %mul.i130.6.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_6_4_1 v_conv2_i131_6_4_1 v_mul_i130_6_4_1;
(*   %conv3.i133.6.4.1 = trunc i32 %xor.i132.6.4.1 to i8 *)
split tmp_v_xor_i132_6_4_1 v_conv3_i133_6_4_1 v_xor_i132_6_4_1 8;
vpc v_conv3_i133_6_4_1@uint8 v_conv3_i133_6_4_1@uint32;
(*   %conv4.i134.6.4.1 = zext i8 %conv5.i136.5.4.1 to i32 *)
cast v_conv4_i134_6_4_1@uint32 v_conv5_i136_5_4_1@uint8;
(*   %shr.i135.6.4.1 = ashr i32 %conv4.i134.6.4.1, 1 *)
(* You may need to modify here *)
split v_shr_i135_6_4_1 tmp_to_be_used v_conv4_i134_6_4_1 1;
(*   %conv5.i136.6.4.1 = trunc i32 %shr.i135.6.4.1 to i8 *)
split tmp_v_shr_i135_6_4_1 v_conv5_i136_6_4_1 v_shr_i135_6_4_1 8;
vpc v_conv5_i136_6_4_1@uint8 v_conv5_i136_6_4_1@uint32;
(*   %conv6.i137.6.4.1 = zext i8 %conv7.i139.5.4.1 to i32 *)
cast v_conv6_i137_6_4_1@uint32 v_conv7_i139_5_4_1@uint8;
(*   %shl.i138.6.4.1 = shl i32 %conv6.i137.6.4.1, 1 *)
shls discard_111 v_shl_i138_6_4_1 v_conv6_i137_6_4_1 1;
(*   %conv7.i139.6.4.1 = trunc i32 %shl.i138.6.4.1 to i8 *)
split tmp_v_shl_i138_6_4_1 v_conv7_i139_6_4_1 v_shl_i138_6_4_1 8;
vpc v_conv7_i139_6_4_1@uint8 v_conv7_i139_6_4_1@uint32;
(*   %conv.i127.7.4.1 = zext i8 %conv5.i136.6.4.1 to i32 *)
cast v_conv_i127_7_4_1@uint32 v_conv5_i136_6_4_1@uint8;
(*   %and.i128.7.4.1 = and i32 %conv.i127.7.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_7_4_1 v_conv_i127_7_4_1 (0x1)@uint32;
(*   %conv1.i129.7.4.1 = zext i8 %conv7.i139.6.4.1 to i32 *)
cast v_conv1_i129_7_4_1@uint32 v_conv7_i139_6_4_1@uint8;
(*   %mul.i130.7.4.1 = mul nsw i32 %and.i128.7.4.1, %conv1.i129.7.4.1 *)
mul v_mul_i130_7_4_1 v_and_i128_7_4_1 v_conv1_i129_7_4_1;
(*   %conv2.i131.7.4.1 = zext i8 %conv3.i133.6.4.1 to i32 *)
cast v_conv2_i131_7_4_1@uint32 v_conv3_i133_6_4_1@uint8;
(*   %xor.i132.7.4.1 = xor i32 %conv2.i131.7.4.1, %mul.i130.7.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_7_4_1 v_conv2_i131_7_4_1 v_mul_i130_7_4_1;
(*   %conv3.i133.7.4.1 = trunc i32 %xor.i132.7.4.1 to i8 *)
split tmp_v_xor_i132_7_4_1 v_conv3_i133_7_4_1 v_xor_i132_7_4_1 8;
vpc v_conv3_i133_7_4_1@uint8 v_conv3_i133_7_4_1@uint32;
(*   %arrayidx56.4.1 = getelementptr inbounds [25 x i8], [25 x i8]* %p1, i64 0, i64 9 *)
(*   store i8 %conv3.i133.7.4.1, i8* %arrayidx56.4.1, align 1 *)
mov p1_9 v_conv3_i133_7_4_1;
(*   %arrayidx60.4.1 = getelementptr inbounds [25 x i8], [25 x i8]* %p0, i64 0, i64 9 *)
(*   %72 = load i8, i8* %arrayidx60.4.1, align 1 *)
mov v72 p0_9;
(*   %conv61.4.1 = zext i8 %72 to i32 *)
cast v_conv61_4_1@uint32 v72@uint8;
(*   %arrayidx65.4.1 = getelementptr inbounds [25 x i8], [25 x i8]* %p1, i64 0, i64 9 *)
(*   %73 = load i8, i8* %arrayidx65.4.1, align 1 *)
mov v73 p1_9;
(*   %conv66.4.1 = zext i8 %73 to i32 *)
cast v_conv66_4_1@uint32 v73@uint8;
(*   %xor67.4.1 = xor i32 %conv61.4.1, %conv66.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor67_4_1 v_conv61_4_1 v_conv66_4_1;
(*   %conv68.4.1 = trunc i32 %xor67.4.1 to i8 *)
split tmp_v_xor67_4_1 v_conv68_4_1 v_xor67_4_1 8;
vpc v_conv68_4_1@uint8 v_conv68_4_1@uint32;
(*   %arrayidx72.4.1 = getelementptr inbounds [25 x i8], [25 x i8]* %z, i64 0, i64 9 *)
(*   store i8 %conv68.4.1, i8* %arrayidx72.4.1, align 1 *)
mov z_9 v_conv68_4_1;
(*   %arrayidx34.2 = getelementptr inbounds i8, i8* %a, i64 2 *)
(*   %arrayidx47.2 = getelementptr inbounds i8, i8* %a, i64 2 *)
(*   %74 = load i8, i8* %b, align 1 *)
mov v74 b_0;
(*   %conv.2463 = zext i8 %74 to i32 *)
cast v_conv_2463@uint32 v74@uint8;
(*   %arrayidx26.2465 = getelementptr inbounds i8, i8* %r, i64 10 *)
(*   %75 = load i8, i8* %arrayidx26.2465, align 1 *)
mov v75 r_10;
(*   %conv27.2466 = zext i8 %75 to i32 *)
cast v_conv27_2466@uint32 v75@uint8;
(*   %xor.2467 = xor i32 %conv.2463, %conv27.2466 *)
(* You may need to modify here *)
xor uint32 v_xor_2467 v_conv_2463 v_conv27_2466;
(*   %conv28.2468 = trunc i32 %xor.2467 to i8 *)
split tmp_v_xor_2467 v_conv28_2468 v_xor_2467 8;
vpc v_conv28_2468@uint8 v_conv28_2468@uint32;
(*   %arrayidx32.2470 = getelementptr inbounds [25 x i8], [25 x i8]* %s, i64 0, i64 10 *)
(*   store i8 %conv28.2468, i8* %arrayidx32.2470, align 1 *)
mov s_10 v_conv28_2468;
(*   %76 = load i8, i8* %arrayidx34.2, align 1 *)
mov v76 a_2;
(*   %conv35.2471 = zext i8 %76 to i32 *)
cast v_conv35_2471@uint32 v76@uint8;
(*   %xor36.2472 = xor i32 %conv35.2471, 1 *)
(* You may need to modify here *)
xor uint32 v_xor36_2472 v_conv35_2471 (0x1)@uint32;
(*   %conv37.2473 = trunc i32 %xor36.2472 to i8 *)
split tmp_v_xor36_2472 v_conv37_2473 v_xor36_2472 8;
vpc v_conv37_2473@uint8 v_conv37_2473@uint32;
(*   %arrayidx41.2475 = getelementptr inbounds i8, i8* %r, i64 10 *)
(*   %77 = load i8, i8* %arrayidx41.2475, align 1 *)
mov v77 r_10;
(*   %conv.i.2477 = zext i8 %77 to i32 *)
cast v_conv_i_2477@uint32 v77@uint8;
(*   %and.i.2478 = and i32 %conv.i.2477, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2478 v_conv_i_2477 (0x1)@uint32;
(*   %conv1.i.2479 = zext i8 %conv37.2473 to i32 *)
cast v_conv1_i_2479@uint32 v_conv37_2473@uint8;
(*   %mul.i.2480 = mul nsw i32 %and.i.2478, %conv1.i.2479 *)
mul v_mul_i_2480 v_and_i_2478 v_conv1_i_2479;
(*   %conv3.i.2481 = trunc i32 %mul.i.2480 to i8 *)
split tmp_v_mul_i_2480 v_conv3_i_2481 v_mul_i_2480 8;
vpc v_conv3_i_2481@uint8 v_conv3_i_2481@uint32;
(*   %conv4.i.2482 = zext i8 %77 to i32 *)
cast v_conv4_i_2482@uint32 v77@uint8;
(*   %shr.i.2483 = ashr i32 %conv4.i.2482, 1 *)
(* You may need to modify here *)
split v_shr_i_2483 tmp_to_be_used v_conv4_i_2482 1;
(*   %conv5.i.2484 = trunc i32 %shr.i.2483 to i8 *)
split tmp_v_shr_i_2483 v_conv5_i_2484 v_shr_i_2483 8;
vpc v_conv5_i_2484@uint8 v_conv5_i_2484@uint32;
(*   %conv6.i.2485 = zext i8 %conv37.2473 to i32 *)
cast v_conv6_i_2485@uint32 v_conv37_2473@uint8;
(*   %shl.i.2486 = shl i32 %conv6.i.2485, 1 *)
shls discard_112 v_shl_i_2486 v_conv6_i_2485 1;
(*   %conv7.i.2487 = trunc i32 %shl.i.2486 to i8 *)
split tmp_v_shl_i_2486 v_conv7_i_2487 v_shl_i_2486 8;
vpc v_conv7_i_2487@uint8 v_conv7_i_2487@uint32;
(*   %conv.i.1.2488 = zext i8 %conv5.i.2484 to i32 *)
cast v_conv_i_1_2488@uint32 v_conv5_i_2484@uint8;
(*   %and.i.1.2489 = and i32 %conv.i.1.2488, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_2489 v_conv_i_1_2488 (0x1)@uint32;
(*   %conv1.i.1.2490 = zext i8 %conv7.i.2487 to i32 *)
cast v_conv1_i_1_2490@uint32 v_conv7_i_2487@uint8;
(*   %mul.i.1.2491 = mul nsw i32 %and.i.1.2489, %conv1.i.1.2490 *)
mul v_mul_i_1_2491 v_and_i_1_2489 v_conv1_i_1_2490;
(*   %conv2.i.1.2492 = zext i8 %conv3.i.2481 to i32 *)
cast v_conv2_i_1_2492@uint32 v_conv3_i_2481@uint8;
(*   %xor.i.1.2493 = xor i32 %conv2.i.1.2492, %mul.i.1.2491 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_2493 v_conv2_i_1_2492 v_mul_i_1_2491;
(*   %conv3.i.1.2494 = trunc i32 %xor.i.1.2493 to i8 *)
split tmp_v_xor_i_1_2493 v_conv3_i_1_2494 v_xor_i_1_2493 8;
vpc v_conv3_i_1_2494@uint8 v_conv3_i_1_2494@uint32;
(*   %conv4.i.1.2495 = zext i8 %conv5.i.2484 to i32 *)
cast v_conv4_i_1_2495@uint32 v_conv5_i_2484@uint8;
(*   %shr.i.1.2496 = ashr i32 %conv4.i.1.2495, 1 *)
(* You may need to modify here *)
split v_shr_i_1_2496 tmp_to_be_used v_conv4_i_1_2495 1;
(*   %conv5.i.1.2497 = trunc i32 %shr.i.1.2496 to i8 *)
split tmp_v_shr_i_1_2496 v_conv5_i_1_2497 v_shr_i_1_2496 8;
vpc v_conv5_i_1_2497@uint8 v_conv5_i_1_2497@uint32;
(*   %conv6.i.1.2498 = zext i8 %conv7.i.2487 to i32 *)
cast v_conv6_i_1_2498@uint32 v_conv7_i_2487@uint8;
(*   %shl.i.1.2499 = shl i32 %conv6.i.1.2498, 1 *)
shls discard_113 v_shl_i_1_2499 v_conv6_i_1_2498 1;
(*   %conv7.i.1.2500 = trunc i32 %shl.i.1.2499 to i8 *)
split tmp_v_shl_i_1_2499 v_conv7_i_1_2500 v_shl_i_1_2499 8;
vpc v_conv7_i_1_2500@uint8 v_conv7_i_1_2500@uint32;
(*   %conv.i.2.2501 = zext i8 %conv5.i.1.2497 to i32 *)
cast v_conv_i_2_2501@uint32 v_conv5_i_1_2497@uint8;
(*   %and.i.2.2502 = and i32 %conv.i.2.2501, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_2502 v_conv_i_2_2501 (0x1)@uint32;
(*   %conv1.i.2.2503 = zext i8 %conv7.i.1.2500 to i32 *)
cast v_conv1_i_2_2503@uint32 v_conv7_i_1_2500@uint8;
(*   %mul.i.2.2504 = mul nsw i32 %and.i.2.2502, %conv1.i.2.2503 *)
mul v_mul_i_2_2504 v_and_i_2_2502 v_conv1_i_2_2503;
(*   %conv2.i.2.2505 = zext i8 %conv3.i.1.2494 to i32 *)
cast v_conv2_i_2_2505@uint32 v_conv3_i_1_2494@uint8;
(*   %xor.i.2.2506 = xor i32 %conv2.i.2.2505, %mul.i.2.2504 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_2506 v_conv2_i_2_2505 v_mul_i_2_2504;
(*   %conv3.i.2.2507 = trunc i32 %xor.i.2.2506 to i8 *)
split tmp_v_xor_i_2_2506 v_conv3_i_2_2507 v_xor_i_2_2506 8;
vpc v_conv3_i_2_2507@uint8 v_conv3_i_2_2507@uint32;
(*   %conv4.i.2.2508 = zext i8 %conv5.i.1.2497 to i32 *)
cast v_conv4_i_2_2508@uint32 v_conv5_i_1_2497@uint8;
(*   %shr.i.2.2509 = ashr i32 %conv4.i.2.2508, 1 *)
(* You may need to modify here *)
split v_shr_i_2_2509 tmp_to_be_used v_conv4_i_2_2508 1;
(*   %conv5.i.2.2510 = trunc i32 %shr.i.2.2509 to i8 *)
split tmp_v_shr_i_2_2509 v_conv5_i_2_2510 v_shr_i_2_2509 8;
vpc v_conv5_i_2_2510@uint8 v_conv5_i_2_2510@uint32;
(*   %conv6.i.2.2511 = zext i8 %conv7.i.1.2500 to i32 *)
cast v_conv6_i_2_2511@uint32 v_conv7_i_1_2500@uint8;
(*   %shl.i.2.2512 = shl i32 %conv6.i.2.2511, 1 *)
shls discard_114 v_shl_i_2_2512 v_conv6_i_2_2511 1;
(*   %conv7.i.2.2513 = trunc i32 %shl.i.2.2512 to i8 *)
split tmp_v_shl_i_2_2512 v_conv7_i_2_2513 v_shl_i_2_2512 8;
vpc v_conv7_i_2_2513@uint8 v_conv7_i_2_2513@uint32;
(*   %conv.i.3.2514 = zext i8 %conv5.i.2.2510 to i32 *)
cast v_conv_i_3_2514@uint32 v_conv5_i_2_2510@uint8;
(*   %and.i.3.2515 = and i32 %conv.i.3.2514, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_2515 v_conv_i_3_2514 (0x1)@uint32;
(*   %conv1.i.3.2516 = zext i8 %conv7.i.2.2513 to i32 *)
cast v_conv1_i_3_2516@uint32 v_conv7_i_2_2513@uint8;
(*   %mul.i.3.2517 = mul nsw i32 %and.i.3.2515, %conv1.i.3.2516 *)
mul v_mul_i_3_2517 v_and_i_3_2515 v_conv1_i_3_2516;
(*   %conv2.i.3.2518 = zext i8 %conv3.i.2.2507 to i32 *)
cast v_conv2_i_3_2518@uint32 v_conv3_i_2_2507@uint8;
(*   %xor.i.3.2519 = xor i32 %conv2.i.3.2518, %mul.i.3.2517 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_2519 v_conv2_i_3_2518 v_mul_i_3_2517;
(*   %conv3.i.3.2520 = trunc i32 %xor.i.3.2519 to i8 *)
split tmp_v_xor_i_3_2519 v_conv3_i_3_2520 v_xor_i_3_2519 8;
vpc v_conv3_i_3_2520@uint8 v_conv3_i_3_2520@uint32;
(*   %conv4.i.3.2521 = zext i8 %conv5.i.2.2510 to i32 *)
cast v_conv4_i_3_2521@uint32 v_conv5_i_2_2510@uint8;
(*   %shr.i.3.2522 = ashr i32 %conv4.i.3.2521, 1 *)
(* You may need to modify here *)
split v_shr_i_3_2522 tmp_to_be_used v_conv4_i_3_2521 1;
(*   %conv5.i.3.2523 = trunc i32 %shr.i.3.2522 to i8 *)
split tmp_v_shr_i_3_2522 v_conv5_i_3_2523 v_shr_i_3_2522 8;
vpc v_conv5_i_3_2523@uint8 v_conv5_i_3_2523@uint32;
(*   %conv6.i.3.2524 = zext i8 %conv7.i.2.2513 to i32 *)
cast v_conv6_i_3_2524@uint32 v_conv7_i_2_2513@uint8;
(*   %shl.i.3.2525 = shl i32 %conv6.i.3.2524, 1 *)
shls discard_115 v_shl_i_3_2525 v_conv6_i_3_2524 1;
(*   %conv7.i.3.2526 = trunc i32 %shl.i.3.2525 to i8 *)
split tmp_v_shl_i_3_2525 v_conv7_i_3_2526 v_shl_i_3_2525 8;
vpc v_conv7_i_3_2526@uint8 v_conv7_i_3_2526@uint32;
(*   %conv.i.4.2527 = zext i8 %conv5.i.3.2523 to i32 *)
cast v_conv_i_4_2527@uint32 v_conv5_i_3_2523@uint8;
(*   %and.i.4.2528 = and i32 %conv.i.4.2527, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_2528 v_conv_i_4_2527 (0x1)@uint32;
(*   %conv1.i.4.2529 = zext i8 %conv7.i.3.2526 to i32 *)
cast v_conv1_i_4_2529@uint32 v_conv7_i_3_2526@uint8;
(*   %mul.i.4.2530 = mul nsw i32 %and.i.4.2528, %conv1.i.4.2529 *)
mul v_mul_i_4_2530 v_and_i_4_2528 v_conv1_i_4_2529;
(*   %conv2.i.4.2531 = zext i8 %conv3.i.3.2520 to i32 *)
cast v_conv2_i_4_2531@uint32 v_conv3_i_3_2520@uint8;
(*   %xor.i.4.2532 = xor i32 %conv2.i.4.2531, %mul.i.4.2530 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_2532 v_conv2_i_4_2531 v_mul_i_4_2530;
(*   %conv3.i.4.2533 = trunc i32 %xor.i.4.2532 to i8 *)
split tmp_v_xor_i_4_2532 v_conv3_i_4_2533 v_xor_i_4_2532 8;
vpc v_conv3_i_4_2533@uint8 v_conv3_i_4_2533@uint32;
(*   %conv4.i.4.2534 = zext i8 %conv5.i.3.2523 to i32 *)
cast v_conv4_i_4_2534@uint32 v_conv5_i_3_2523@uint8;
(*   %shr.i.4.2535 = ashr i32 %conv4.i.4.2534, 1 *)
(* You may need to modify here *)
split v_shr_i_4_2535 tmp_to_be_used v_conv4_i_4_2534 1;
(*   %conv5.i.4.2536 = trunc i32 %shr.i.4.2535 to i8 *)
split tmp_v_shr_i_4_2535 v_conv5_i_4_2536 v_shr_i_4_2535 8;
vpc v_conv5_i_4_2536@uint8 v_conv5_i_4_2536@uint32;
(*   %conv6.i.4.2537 = zext i8 %conv7.i.3.2526 to i32 *)
cast v_conv6_i_4_2537@uint32 v_conv7_i_3_2526@uint8;
(*   %shl.i.4.2538 = shl i32 %conv6.i.4.2537, 1 *)
shls discard_116 v_shl_i_4_2538 v_conv6_i_4_2537 1;
(*   %conv7.i.4.2539 = trunc i32 %shl.i.4.2538 to i8 *)
split tmp_v_shl_i_4_2538 v_conv7_i_4_2539 v_shl_i_4_2538 8;
vpc v_conv7_i_4_2539@uint8 v_conv7_i_4_2539@uint32;
(*   %conv.i.5.2540 = zext i8 %conv5.i.4.2536 to i32 *)
cast v_conv_i_5_2540@uint32 v_conv5_i_4_2536@uint8;
(*   %and.i.5.2541 = and i32 %conv.i.5.2540, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_2541 v_conv_i_5_2540 (0x1)@uint32;
(*   %conv1.i.5.2542 = zext i8 %conv7.i.4.2539 to i32 *)
cast v_conv1_i_5_2542@uint32 v_conv7_i_4_2539@uint8;
(*   %mul.i.5.2543 = mul nsw i32 %and.i.5.2541, %conv1.i.5.2542 *)
mul v_mul_i_5_2543 v_and_i_5_2541 v_conv1_i_5_2542;
(*   %conv2.i.5.2544 = zext i8 %conv3.i.4.2533 to i32 *)
cast v_conv2_i_5_2544@uint32 v_conv3_i_4_2533@uint8;
(*   %xor.i.5.2545 = xor i32 %conv2.i.5.2544, %mul.i.5.2543 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_2545 v_conv2_i_5_2544 v_mul_i_5_2543;
(*   %conv3.i.5.2546 = trunc i32 %xor.i.5.2545 to i8 *)
split tmp_v_xor_i_5_2545 v_conv3_i_5_2546 v_xor_i_5_2545 8;
vpc v_conv3_i_5_2546@uint8 v_conv3_i_5_2546@uint32;
(*   %conv4.i.5.2547 = zext i8 %conv5.i.4.2536 to i32 *)
cast v_conv4_i_5_2547@uint32 v_conv5_i_4_2536@uint8;
(*   %shr.i.5.2548 = ashr i32 %conv4.i.5.2547, 1 *)
(* You may need to modify here *)
split v_shr_i_5_2548 tmp_to_be_used v_conv4_i_5_2547 1;
(*   %conv5.i.5.2549 = trunc i32 %shr.i.5.2548 to i8 *)
split tmp_v_shr_i_5_2548 v_conv5_i_5_2549 v_shr_i_5_2548 8;
vpc v_conv5_i_5_2549@uint8 v_conv5_i_5_2549@uint32;
(*   %conv6.i.5.2550 = zext i8 %conv7.i.4.2539 to i32 *)
cast v_conv6_i_5_2550@uint32 v_conv7_i_4_2539@uint8;
(*   %shl.i.5.2551 = shl i32 %conv6.i.5.2550, 1 *)
shls discard_117 v_shl_i_5_2551 v_conv6_i_5_2550 1;
(*   %conv7.i.5.2552 = trunc i32 %shl.i.5.2551 to i8 *)
split tmp_v_shl_i_5_2551 v_conv7_i_5_2552 v_shl_i_5_2551 8;
vpc v_conv7_i_5_2552@uint8 v_conv7_i_5_2552@uint32;
(*   %conv.i.6.2553 = zext i8 %conv5.i.5.2549 to i32 *)
cast v_conv_i_6_2553@uint32 v_conv5_i_5_2549@uint8;
(*   %and.i.6.2554 = and i32 %conv.i.6.2553, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_2554 v_conv_i_6_2553 (0x1)@uint32;
(*   %conv1.i.6.2555 = zext i8 %conv7.i.5.2552 to i32 *)
cast v_conv1_i_6_2555@uint32 v_conv7_i_5_2552@uint8;
(*   %mul.i.6.2556 = mul nsw i32 %and.i.6.2554, %conv1.i.6.2555 *)
mul v_mul_i_6_2556 v_and_i_6_2554 v_conv1_i_6_2555;
(*   %conv2.i.6.2557 = zext i8 %conv3.i.5.2546 to i32 *)
cast v_conv2_i_6_2557@uint32 v_conv3_i_5_2546@uint8;
(*   %xor.i.6.2558 = xor i32 %conv2.i.6.2557, %mul.i.6.2556 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_2558 v_conv2_i_6_2557 v_mul_i_6_2556;
(*   %conv3.i.6.2559 = trunc i32 %xor.i.6.2558 to i8 *)
split tmp_v_xor_i_6_2558 v_conv3_i_6_2559 v_xor_i_6_2558 8;
vpc v_conv3_i_6_2559@uint8 v_conv3_i_6_2559@uint32;
(*   %conv4.i.6.2560 = zext i8 %conv5.i.5.2549 to i32 *)
cast v_conv4_i_6_2560@uint32 v_conv5_i_5_2549@uint8;
(*   %shr.i.6.2561 = ashr i32 %conv4.i.6.2560, 1 *)
(* You may need to modify here *)
split v_shr_i_6_2561 tmp_to_be_used v_conv4_i_6_2560 1;
(*   %conv5.i.6.2562 = trunc i32 %shr.i.6.2561 to i8 *)
split tmp_v_shr_i_6_2561 v_conv5_i_6_2562 v_shr_i_6_2561 8;
vpc v_conv5_i_6_2562@uint8 v_conv5_i_6_2562@uint32;
(*   %conv6.i.6.2563 = zext i8 %conv7.i.5.2552 to i32 *)
cast v_conv6_i_6_2563@uint32 v_conv7_i_5_2552@uint8;
(*   %shl.i.6.2564 = shl i32 %conv6.i.6.2563, 1 *)
shls discard_118 v_shl_i_6_2564 v_conv6_i_6_2563 1;
(*   %conv7.i.6.2565 = trunc i32 %shl.i.6.2564 to i8 *)
split tmp_v_shl_i_6_2564 v_conv7_i_6_2565 v_shl_i_6_2564 8;
vpc v_conv7_i_6_2565@uint8 v_conv7_i_6_2565@uint32;
(*   %conv.i.7.2566 = zext i8 %conv5.i.6.2562 to i32 *)
cast v_conv_i_7_2566@uint32 v_conv5_i_6_2562@uint8;
(*   %and.i.7.2567 = and i32 %conv.i.7.2566, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_2567 v_conv_i_7_2566 (0x1)@uint32;
(*   %conv1.i.7.2568 = zext i8 %conv7.i.6.2565 to i32 *)
cast v_conv1_i_7_2568@uint32 v_conv7_i_6_2565@uint8;
(*   %mul.i.7.2569 = mul nsw i32 %and.i.7.2567, %conv1.i.7.2568 *)
mul v_mul_i_7_2569 v_and_i_7_2567 v_conv1_i_7_2568;
(*   %conv2.i.7.2570 = zext i8 %conv3.i.6.2559 to i32 *)
cast v_conv2_i_7_2570@uint32 v_conv3_i_6_2559@uint8;
(*   %xor.i.7.2571 = xor i32 %conv2.i.7.2570, %mul.i.7.2569 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_2571 v_conv2_i_7_2570 v_mul_i_7_2569;
(*   %conv3.i.7.2572 = trunc i32 %xor.i.7.2571 to i8 *)
split tmp_v_xor_i_7_2571 v_conv3_i_7_2572 v_xor_i_7_2571 8;
vpc v_conv3_i_7_2572@uint8 v_conv3_i_7_2572@uint32;
(*   %arrayidx45.2576 = getelementptr inbounds [25 x i8], [25 x i8]* %p0, i64 0, i64 10 *)
(*   store i8 %conv3.i.7.2572, i8* %arrayidx45.2576, align 1 *)
mov p0_10 v_conv3_i_7_2572;
(*   %78 = load i8, i8* %arrayidx47.2, align 1 *)
mov v78 a_2;
(*   %arrayidx51.2578 = getelementptr inbounds [25 x i8], [25 x i8]* %s, i64 0, i64 10 *)
(*   %79 = load i8, i8* %arrayidx51.2578, align 1 *)
mov v79 s_10;
(*   %conv.i127.2580 = zext i8 %79 to i32 *)
cast v_conv_i127_2580@uint32 v79@uint8;
(*   %and.i128.2581 = and i32 %conv.i127.2580, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_2581 v_conv_i127_2580 (0x1)@uint32;
(*   %conv1.i129.2582 = zext i8 %78 to i32 *)
cast v_conv1_i129_2582@uint32 v78@uint8;
(*   %mul.i130.2583 = mul nsw i32 %and.i128.2581, %conv1.i129.2582 *)
mul v_mul_i130_2583 v_and_i128_2581 v_conv1_i129_2582;
(*   %conv3.i133.2584 = trunc i32 %mul.i130.2583 to i8 *)
split tmp_v_mul_i130_2583 v_conv3_i133_2584 v_mul_i130_2583 8;
vpc v_conv3_i133_2584@uint8 v_conv3_i133_2584@uint32;
(*   %conv4.i134.2585 = zext i8 %79 to i32 *)
cast v_conv4_i134_2585@uint32 v79@uint8;
(*   %shr.i135.2586 = ashr i32 %conv4.i134.2585, 1 *)
(* You may need to modify here *)
split v_shr_i135_2586 tmp_to_be_used v_conv4_i134_2585 1;
(*   %conv5.i136.2587 = trunc i32 %shr.i135.2586 to i8 *)
split tmp_v_shr_i135_2586 v_conv5_i136_2587 v_shr_i135_2586 8;
vpc v_conv5_i136_2587@uint8 v_conv5_i136_2587@uint32;
(*   %conv6.i137.2588 = zext i8 %78 to i32 *)
cast v_conv6_i137_2588@uint32 v78@uint8;
(*   %shl.i138.2589 = shl i32 %conv6.i137.2588, 1 *)
shls discard_119 v_shl_i138_2589 v_conv6_i137_2588 1;
(*   %conv7.i139.2590 = trunc i32 %shl.i138.2589 to i8 *)
split tmp_v_shl_i138_2589 v_conv7_i139_2590 v_shl_i138_2589 8;
vpc v_conv7_i139_2590@uint8 v_conv7_i139_2590@uint32;
(*   %conv.i127.1.2591 = zext i8 %conv5.i136.2587 to i32 *)
cast v_conv_i127_1_2591@uint32 v_conv5_i136_2587@uint8;
(*   %and.i128.1.2592 = and i32 %conv.i127.1.2591, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1_2592 v_conv_i127_1_2591 (0x1)@uint32;
(*   %conv1.i129.1.2593 = zext i8 %conv7.i139.2590 to i32 *)
cast v_conv1_i129_1_2593@uint32 v_conv7_i139_2590@uint8;
(*   %mul.i130.1.2594 = mul nsw i32 %and.i128.1.2592, %conv1.i129.1.2593 *)
mul v_mul_i130_1_2594 v_and_i128_1_2592 v_conv1_i129_1_2593;
(*   %conv2.i131.1.2595 = zext i8 %conv3.i133.2584 to i32 *)
cast v_conv2_i131_1_2595@uint32 v_conv3_i133_2584@uint8;
(*   %xor.i132.1.2596 = xor i32 %conv2.i131.1.2595, %mul.i130.1.2594 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_1_2596 v_conv2_i131_1_2595 v_mul_i130_1_2594;
(*   %conv3.i133.1.2597 = trunc i32 %xor.i132.1.2596 to i8 *)
split tmp_v_xor_i132_1_2596 v_conv3_i133_1_2597 v_xor_i132_1_2596 8;
vpc v_conv3_i133_1_2597@uint8 v_conv3_i133_1_2597@uint32;
(*   %conv4.i134.1.2598 = zext i8 %conv5.i136.2587 to i32 *)
cast v_conv4_i134_1_2598@uint32 v_conv5_i136_2587@uint8;
(*   %shr.i135.1.2599 = ashr i32 %conv4.i134.1.2598, 1 *)
(* You may need to modify here *)
split v_shr_i135_1_2599 tmp_to_be_used v_conv4_i134_1_2598 1;
(*   %conv5.i136.1.2600 = trunc i32 %shr.i135.1.2599 to i8 *)
split tmp_v_shr_i135_1_2599 v_conv5_i136_1_2600 v_shr_i135_1_2599 8;
vpc v_conv5_i136_1_2600@uint8 v_conv5_i136_1_2600@uint32;
(*   %conv6.i137.1.2601 = zext i8 %conv7.i139.2590 to i32 *)
cast v_conv6_i137_1_2601@uint32 v_conv7_i139_2590@uint8;
(*   %shl.i138.1.2602 = shl i32 %conv6.i137.1.2601, 1 *)
shls discard_120 v_shl_i138_1_2602 v_conv6_i137_1_2601 1;
(*   %conv7.i139.1.2603 = trunc i32 %shl.i138.1.2602 to i8 *)
split tmp_v_shl_i138_1_2602 v_conv7_i139_1_2603 v_shl_i138_1_2602 8;
vpc v_conv7_i139_1_2603@uint8 v_conv7_i139_1_2603@uint32;
(*   %conv.i127.2.2604 = zext i8 %conv5.i136.1.2600 to i32 *)
cast v_conv_i127_2_2604@uint32 v_conv5_i136_1_2600@uint8;
(*   %and.i128.2.2605 = and i32 %conv.i127.2.2604, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_2_2605 v_conv_i127_2_2604 (0x1)@uint32;
(*   %conv1.i129.2.2606 = zext i8 %conv7.i139.1.2603 to i32 *)
cast v_conv1_i129_2_2606@uint32 v_conv7_i139_1_2603@uint8;
(*   %mul.i130.2.2607 = mul nsw i32 %and.i128.2.2605, %conv1.i129.2.2606 *)
mul v_mul_i130_2_2607 v_and_i128_2_2605 v_conv1_i129_2_2606;
(*   %conv2.i131.2.2608 = zext i8 %conv3.i133.1.2597 to i32 *)
cast v_conv2_i131_2_2608@uint32 v_conv3_i133_1_2597@uint8;
(*   %xor.i132.2.2609 = xor i32 %conv2.i131.2.2608, %mul.i130.2.2607 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_2_2609 v_conv2_i131_2_2608 v_mul_i130_2_2607;
(*   %conv3.i133.2.2610 = trunc i32 %xor.i132.2.2609 to i8 *)
split tmp_v_xor_i132_2_2609 v_conv3_i133_2_2610 v_xor_i132_2_2609 8;
vpc v_conv3_i133_2_2610@uint8 v_conv3_i133_2_2610@uint32;
(*   %conv4.i134.2.2611 = zext i8 %conv5.i136.1.2600 to i32 *)
cast v_conv4_i134_2_2611@uint32 v_conv5_i136_1_2600@uint8;
(*   %shr.i135.2.2612 = ashr i32 %conv4.i134.2.2611, 1 *)
(* You may need to modify here *)
split v_shr_i135_2_2612 tmp_to_be_used v_conv4_i134_2_2611 1;
(*   %conv5.i136.2.2613 = trunc i32 %shr.i135.2.2612 to i8 *)
split tmp_v_shr_i135_2_2612 v_conv5_i136_2_2613 v_shr_i135_2_2612 8;
vpc v_conv5_i136_2_2613@uint8 v_conv5_i136_2_2613@uint32;
(*   %conv6.i137.2.2614 = zext i8 %conv7.i139.1.2603 to i32 *)
cast v_conv6_i137_2_2614@uint32 v_conv7_i139_1_2603@uint8;
(*   %shl.i138.2.2615 = shl i32 %conv6.i137.2.2614, 1 *)
shls discard_121 v_shl_i138_2_2615 v_conv6_i137_2_2614 1;
(*   %conv7.i139.2.2616 = trunc i32 %shl.i138.2.2615 to i8 *)
split tmp_v_shl_i138_2_2615 v_conv7_i139_2_2616 v_shl_i138_2_2615 8;
vpc v_conv7_i139_2_2616@uint8 v_conv7_i139_2_2616@uint32;
(*   %conv.i127.3.2617 = zext i8 %conv5.i136.2.2613 to i32 *)
cast v_conv_i127_3_2617@uint32 v_conv5_i136_2_2613@uint8;
(*   %and.i128.3.2618 = and i32 %conv.i127.3.2617, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_3_2618 v_conv_i127_3_2617 (0x1)@uint32;
(*   %conv1.i129.3.2619 = zext i8 %conv7.i139.2.2616 to i32 *)
cast v_conv1_i129_3_2619@uint32 v_conv7_i139_2_2616@uint8;
(*   %mul.i130.3.2620 = mul nsw i32 %and.i128.3.2618, %conv1.i129.3.2619 *)
mul v_mul_i130_3_2620 v_and_i128_3_2618 v_conv1_i129_3_2619;
(*   %conv2.i131.3.2621 = zext i8 %conv3.i133.2.2610 to i32 *)
cast v_conv2_i131_3_2621@uint32 v_conv3_i133_2_2610@uint8;
(*   %xor.i132.3.2622 = xor i32 %conv2.i131.3.2621, %mul.i130.3.2620 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_3_2622 v_conv2_i131_3_2621 v_mul_i130_3_2620;
(*   %conv3.i133.3.2623 = trunc i32 %xor.i132.3.2622 to i8 *)
split tmp_v_xor_i132_3_2622 v_conv3_i133_3_2623 v_xor_i132_3_2622 8;
vpc v_conv3_i133_3_2623@uint8 v_conv3_i133_3_2623@uint32;
(*   %conv4.i134.3.2624 = zext i8 %conv5.i136.2.2613 to i32 *)
cast v_conv4_i134_3_2624@uint32 v_conv5_i136_2_2613@uint8;
(*   %shr.i135.3.2625 = ashr i32 %conv4.i134.3.2624, 1 *)
(* You may need to modify here *)
split v_shr_i135_3_2625 tmp_to_be_used v_conv4_i134_3_2624 1;
(*   %conv5.i136.3.2626 = trunc i32 %shr.i135.3.2625 to i8 *)
split tmp_v_shr_i135_3_2625 v_conv5_i136_3_2626 v_shr_i135_3_2625 8;
vpc v_conv5_i136_3_2626@uint8 v_conv5_i136_3_2626@uint32;
(*   %conv6.i137.3.2627 = zext i8 %conv7.i139.2.2616 to i32 *)
cast v_conv6_i137_3_2627@uint32 v_conv7_i139_2_2616@uint8;
(*   %shl.i138.3.2628 = shl i32 %conv6.i137.3.2627, 1 *)
shls discard_122 v_shl_i138_3_2628 v_conv6_i137_3_2627 1;
(*   %conv7.i139.3.2629 = trunc i32 %shl.i138.3.2628 to i8 *)
split tmp_v_shl_i138_3_2628 v_conv7_i139_3_2629 v_shl_i138_3_2628 8;
vpc v_conv7_i139_3_2629@uint8 v_conv7_i139_3_2629@uint32;
(*   %conv.i127.4.2630 = zext i8 %conv5.i136.3.2626 to i32 *)
cast v_conv_i127_4_2630@uint32 v_conv5_i136_3_2626@uint8;
(*   %and.i128.4.2631 = and i32 %conv.i127.4.2630, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_4_2631 v_conv_i127_4_2630 (0x1)@uint32;
(*   %conv1.i129.4.2632 = zext i8 %conv7.i139.3.2629 to i32 *)
cast v_conv1_i129_4_2632@uint32 v_conv7_i139_3_2629@uint8;
(*   %mul.i130.4.2633 = mul nsw i32 %and.i128.4.2631, %conv1.i129.4.2632 *)
mul v_mul_i130_4_2633 v_and_i128_4_2631 v_conv1_i129_4_2632;
(*   %conv2.i131.4.2634 = zext i8 %conv3.i133.3.2623 to i32 *)
cast v_conv2_i131_4_2634@uint32 v_conv3_i133_3_2623@uint8;
(*   %xor.i132.4.2635 = xor i32 %conv2.i131.4.2634, %mul.i130.4.2633 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_4_2635 v_conv2_i131_4_2634 v_mul_i130_4_2633;
(*   %conv3.i133.4.2636 = trunc i32 %xor.i132.4.2635 to i8 *)
split tmp_v_xor_i132_4_2635 v_conv3_i133_4_2636 v_xor_i132_4_2635 8;
vpc v_conv3_i133_4_2636@uint8 v_conv3_i133_4_2636@uint32;
(*   %conv4.i134.4.2637 = zext i8 %conv5.i136.3.2626 to i32 *)
cast v_conv4_i134_4_2637@uint32 v_conv5_i136_3_2626@uint8;
(*   %shr.i135.4.2638 = ashr i32 %conv4.i134.4.2637, 1 *)
(* You may need to modify here *)
split v_shr_i135_4_2638 tmp_to_be_used v_conv4_i134_4_2637 1;
(*   %conv5.i136.4.2639 = trunc i32 %shr.i135.4.2638 to i8 *)
split tmp_v_shr_i135_4_2638 v_conv5_i136_4_2639 v_shr_i135_4_2638 8;
vpc v_conv5_i136_4_2639@uint8 v_conv5_i136_4_2639@uint32;
(*   %conv6.i137.4.2640 = zext i8 %conv7.i139.3.2629 to i32 *)
cast v_conv6_i137_4_2640@uint32 v_conv7_i139_3_2629@uint8;
(*   %shl.i138.4.2641 = shl i32 %conv6.i137.4.2640, 1 *)
shls discard_123 v_shl_i138_4_2641 v_conv6_i137_4_2640 1;
(*   %conv7.i139.4.2642 = trunc i32 %shl.i138.4.2641 to i8 *)
split tmp_v_shl_i138_4_2641 v_conv7_i139_4_2642 v_shl_i138_4_2641 8;
vpc v_conv7_i139_4_2642@uint8 v_conv7_i139_4_2642@uint32;
(*   %conv.i127.5.2643 = zext i8 %conv5.i136.4.2639 to i32 *)
cast v_conv_i127_5_2643@uint32 v_conv5_i136_4_2639@uint8;
(*   %and.i128.5.2644 = and i32 %conv.i127.5.2643, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_5_2644 v_conv_i127_5_2643 (0x1)@uint32;
(*   %conv1.i129.5.2645 = zext i8 %conv7.i139.4.2642 to i32 *)
cast v_conv1_i129_5_2645@uint32 v_conv7_i139_4_2642@uint8;
(*   %mul.i130.5.2646 = mul nsw i32 %and.i128.5.2644, %conv1.i129.5.2645 *)
mul v_mul_i130_5_2646 v_and_i128_5_2644 v_conv1_i129_5_2645;
(*   %conv2.i131.5.2647 = zext i8 %conv3.i133.4.2636 to i32 *)
cast v_conv2_i131_5_2647@uint32 v_conv3_i133_4_2636@uint8;
(*   %xor.i132.5.2648 = xor i32 %conv2.i131.5.2647, %mul.i130.5.2646 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_5_2648 v_conv2_i131_5_2647 v_mul_i130_5_2646;
(*   %conv3.i133.5.2649 = trunc i32 %xor.i132.5.2648 to i8 *)
split tmp_v_xor_i132_5_2648 v_conv3_i133_5_2649 v_xor_i132_5_2648 8;
vpc v_conv3_i133_5_2649@uint8 v_conv3_i133_5_2649@uint32;
(*   %conv4.i134.5.2650 = zext i8 %conv5.i136.4.2639 to i32 *)
cast v_conv4_i134_5_2650@uint32 v_conv5_i136_4_2639@uint8;
(*   %shr.i135.5.2651 = ashr i32 %conv4.i134.5.2650, 1 *)
(* You may need to modify here *)
split v_shr_i135_5_2651 tmp_to_be_used v_conv4_i134_5_2650 1;
(*   %conv5.i136.5.2652 = trunc i32 %shr.i135.5.2651 to i8 *)
split tmp_v_shr_i135_5_2651 v_conv5_i136_5_2652 v_shr_i135_5_2651 8;
vpc v_conv5_i136_5_2652@uint8 v_conv5_i136_5_2652@uint32;
(*   %conv6.i137.5.2653 = zext i8 %conv7.i139.4.2642 to i32 *)
cast v_conv6_i137_5_2653@uint32 v_conv7_i139_4_2642@uint8;
(*   %shl.i138.5.2654 = shl i32 %conv6.i137.5.2653, 1 *)
shls discard_124 v_shl_i138_5_2654 v_conv6_i137_5_2653 1;
(*   %conv7.i139.5.2655 = trunc i32 %shl.i138.5.2654 to i8 *)
split tmp_v_shl_i138_5_2654 v_conv7_i139_5_2655 v_shl_i138_5_2654 8;
vpc v_conv7_i139_5_2655@uint8 v_conv7_i139_5_2655@uint32;
(*   %conv.i127.6.2656 = zext i8 %conv5.i136.5.2652 to i32 *)
cast v_conv_i127_6_2656@uint32 v_conv5_i136_5_2652@uint8;
(*   %and.i128.6.2657 = and i32 %conv.i127.6.2656, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_6_2657 v_conv_i127_6_2656 (0x1)@uint32;
(*   %conv1.i129.6.2658 = zext i8 %conv7.i139.5.2655 to i32 *)
cast v_conv1_i129_6_2658@uint32 v_conv7_i139_5_2655@uint8;
(*   %mul.i130.6.2659 = mul nsw i32 %and.i128.6.2657, %conv1.i129.6.2658 *)
mul v_mul_i130_6_2659 v_and_i128_6_2657 v_conv1_i129_6_2658;
(*   %conv2.i131.6.2660 = zext i8 %conv3.i133.5.2649 to i32 *)
cast v_conv2_i131_6_2660@uint32 v_conv3_i133_5_2649@uint8;
(*   %xor.i132.6.2661 = xor i32 %conv2.i131.6.2660, %mul.i130.6.2659 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_6_2661 v_conv2_i131_6_2660 v_mul_i130_6_2659;
(*   %conv3.i133.6.2662 = trunc i32 %xor.i132.6.2661 to i8 *)
split tmp_v_xor_i132_6_2661 v_conv3_i133_6_2662 v_xor_i132_6_2661 8;
vpc v_conv3_i133_6_2662@uint8 v_conv3_i133_6_2662@uint32;
(*   %conv4.i134.6.2663 = zext i8 %conv5.i136.5.2652 to i32 *)
cast v_conv4_i134_6_2663@uint32 v_conv5_i136_5_2652@uint8;
(*   %shr.i135.6.2664 = ashr i32 %conv4.i134.6.2663, 1 *)
(* You may need to modify here *)
split v_shr_i135_6_2664 tmp_to_be_used v_conv4_i134_6_2663 1;
(*   %conv5.i136.6.2665 = trunc i32 %shr.i135.6.2664 to i8 *)
split tmp_v_shr_i135_6_2664 v_conv5_i136_6_2665 v_shr_i135_6_2664 8;
vpc v_conv5_i136_6_2665@uint8 v_conv5_i136_6_2665@uint32;
(*   %conv6.i137.6.2666 = zext i8 %conv7.i139.5.2655 to i32 *)
cast v_conv6_i137_6_2666@uint32 v_conv7_i139_5_2655@uint8;
(*   %shl.i138.6.2667 = shl i32 %conv6.i137.6.2666, 1 *)
shls discard_125 v_shl_i138_6_2667 v_conv6_i137_6_2666 1;
(*   %conv7.i139.6.2668 = trunc i32 %shl.i138.6.2667 to i8 *)
split tmp_v_shl_i138_6_2667 v_conv7_i139_6_2668 v_shl_i138_6_2667 8;
vpc v_conv7_i139_6_2668@uint8 v_conv7_i139_6_2668@uint32;
(*   %conv.i127.7.2669 = zext i8 %conv5.i136.6.2665 to i32 *)
cast v_conv_i127_7_2669@uint32 v_conv5_i136_6_2665@uint8;
(*   %and.i128.7.2670 = and i32 %conv.i127.7.2669, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_7_2670 v_conv_i127_7_2669 (0x1)@uint32;
(*   %conv1.i129.7.2671 = zext i8 %conv7.i139.6.2668 to i32 *)
cast v_conv1_i129_7_2671@uint32 v_conv7_i139_6_2668@uint8;
(*   %mul.i130.7.2672 = mul nsw i32 %and.i128.7.2670, %conv1.i129.7.2671 *)
mul v_mul_i130_7_2672 v_and_i128_7_2670 v_conv1_i129_7_2671;
(*   %conv2.i131.7.2673 = zext i8 %conv3.i133.6.2662 to i32 *)
cast v_conv2_i131_7_2673@uint32 v_conv3_i133_6_2662@uint8;
(*   %xor.i132.7.2674 = xor i32 %conv2.i131.7.2673, %mul.i130.7.2672 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_7_2674 v_conv2_i131_7_2673 v_mul_i130_7_2672;
(*   %conv3.i133.7.2675 = trunc i32 %xor.i132.7.2674 to i8 *)
split tmp_v_xor_i132_7_2674 v_conv3_i133_7_2675 v_xor_i132_7_2674 8;
vpc v_conv3_i133_7_2675@uint8 v_conv3_i133_7_2675@uint32;
(*   %arrayidx56.2679 = getelementptr inbounds [25 x i8], [25 x i8]* %p1, i64 0, i64 10 *)
(*   store i8 %conv3.i133.7.2675, i8* %arrayidx56.2679, align 1 *)
mov p1_10 v_conv3_i133_7_2675;
(*   %arrayidx60.2681 = getelementptr inbounds [25 x i8], [25 x i8]* %p0, i64 0, i64 10 *)
(*   %80 = load i8, i8* %arrayidx60.2681, align 1 *)
mov v80 p0_10;
(*   %conv61.2682 = zext i8 %80 to i32 *)
cast v_conv61_2682@uint32 v80@uint8;
(*   %arrayidx65.2684 = getelementptr inbounds [25 x i8], [25 x i8]* %p1, i64 0, i64 10 *)
(*   %81 = load i8, i8* %arrayidx65.2684, align 1 *)
mov v81 p1_10;
(*   %conv66.2685 = zext i8 %81 to i32 *)
cast v_conv66_2685@uint32 v81@uint8;
(*   %xor67.2686 = xor i32 %conv61.2682, %conv66.2685 *)
(* You may need to modify here *)
xor uint32 v_xor67_2686 v_conv61_2682 v_conv66_2685;
(*   %conv68.2687 = trunc i32 %xor67.2686 to i8 *)
split tmp_v_xor67_2686 v_conv68_2687 v_xor67_2686 8;
vpc v_conv68_2687@uint8 v_conv68_2687@uint32;
(*   %arrayidx72.2689 = getelementptr inbounds [25 x i8], [25 x i8]* %z, i64 0, i64 10 *)
(*   store i8 %conv68.2687, i8* %arrayidx72.2689, align 1 *)
mov z_10 v_conv68_2687;
(*   %arrayidx22.1.2 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %82 = load i8, i8* %arrayidx22.1.2, align 1 *)
mov v82 b_1;
(*   %conv.1.2 = zext i8 %82 to i32 *)
cast v_conv_1_2@uint32 v82@uint8;
(*   %arrayidx26.1.2 = getelementptr inbounds i8, i8* %r, i64 11 *)
(*   %83 = load i8, i8* %arrayidx26.1.2, align 1 *)
mov v83 r_11;
(*   %conv27.1.2 = zext i8 %83 to i32 *)
cast v_conv27_1_2@uint32 v83@uint8;
(*   %xor.1.2 = xor i32 %conv.1.2, %conv27.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_1_2 v_conv_1_2 v_conv27_1_2;
(*   %conv28.1.2 = trunc i32 %xor.1.2 to i8 *)
split tmp_v_xor_1_2 v_conv28_1_2 v_xor_1_2 8;
vpc v_conv28_1_2@uint8 v_conv28_1_2@uint32;
(*   %arrayidx32.1.2 = getelementptr inbounds [25 x i8], [25 x i8]* %s, i64 0, i64 11 *)
(*   store i8 %conv28.1.2, i8* %arrayidx32.1.2, align 1 *)
mov s_11 v_conv28_1_2;
(*   %84 = load i8, i8* %arrayidx34.2, align 1 *)
mov v84 a_2;
(*   %conv35.1.2 = zext i8 %84 to i32 *)
cast v_conv35_1_2@uint32 v84@uint8;
(*   %xor36.1.2 = xor i32 %conv35.1.2, 1 *)
(* You may need to modify here *)
xor uint32 v_xor36_1_2 v_conv35_1_2 (0x1)@uint32;
(*   %conv37.1.2 = trunc i32 %xor36.1.2 to i8 *)
split tmp_v_xor36_1_2 v_conv37_1_2 v_xor36_1_2 8;
vpc v_conv37_1_2@uint8 v_conv37_1_2@uint32;
(*   %arrayidx41.1.2 = getelementptr inbounds i8, i8* %r, i64 11 *)
(*   %85 = load i8, i8* %arrayidx41.1.2, align 1 *)
mov v85 r_11;
(*   %conv.i.1143.2 = zext i8 %85 to i32 *)
cast v_conv_i_1143_2@uint32 v85@uint8;
(*   %and.i.1144.2 = and i32 %conv.i.1143.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1144_2 v_conv_i_1143_2 (0x1)@uint32;
(*   %conv1.i.1145.2 = zext i8 %conv37.1.2 to i32 *)
cast v_conv1_i_1145_2@uint32 v_conv37_1_2@uint8;
(*   %mul.i.1146.2 = mul nsw i32 %and.i.1144.2, %conv1.i.1145.2 *)
mul v_mul_i_1146_2 v_and_i_1144_2 v_conv1_i_1145_2;
(*   %conv3.i.1147.2 = trunc i32 %mul.i.1146.2 to i8 *)
split tmp_v_mul_i_1146_2 v_conv3_i_1147_2 v_mul_i_1146_2 8;
vpc v_conv3_i_1147_2@uint8 v_conv3_i_1147_2@uint32;
(*   %conv4.i.1148.2 = zext i8 %85 to i32 *)
cast v_conv4_i_1148_2@uint32 v85@uint8;
(*   %shr.i.1149.2 = ashr i32 %conv4.i.1148.2, 1 *)
(* You may need to modify here *)
split v_shr_i_1149_2 tmp_to_be_used v_conv4_i_1148_2 1;
(*   %conv5.i.1150.2 = trunc i32 %shr.i.1149.2 to i8 *)
split tmp_v_shr_i_1149_2 v_conv5_i_1150_2 v_shr_i_1149_2 8;
vpc v_conv5_i_1150_2@uint8 v_conv5_i_1150_2@uint32;
(*   %conv6.i.1151.2 = zext i8 %conv37.1.2 to i32 *)
cast v_conv6_i_1151_2@uint32 v_conv37_1_2@uint8;
(*   %shl.i.1152.2 = shl i32 %conv6.i.1151.2, 1 *)
shls discard_126 v_shl_i_1152_2 v_conv6_i_1151_2 1;
(*   %conv7.i.1153.2 = trunc i32 %shl.i.1152.2 to i8 *)
split tmp_v_shl_i_1152_2 v_conv7_i_1153_2 v_shl_i_1152_2 8;
vpc v_conv7_i_1153_2@uint8 v_conv7_i_1153_2@uint32;
(*   %conv.i.1.1.2 = zext i8 %conv5.i.1150.2 to i32 *)
cast v_conv_i_1_1_2@uint32 v_conv5_i_1150_2@uint8;
(*   %and.i.1.1.2 = and i32 %conv.i.1.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_1_2 v_conv_i_1_1_2 (0x1)@uint32;
(*   %conv1.i.1.1.2 = zext i8 %conv7.i.1153.2 to i32 *)
cast v_conv1_i_1_1_2@uint32 v_conv7_i_1153_2@uint8;
(*   %mul.i.1.1.2 = mul nsw i32 %and.i.1.1.2, %conv1.i.1.1.2 *)
mul v_mul_i_1_1_2 v_and_i_1_1_2 v_conv1_i_1_1_2;
(*   %conv2.i.1.1.2 = zext i8 %conv3.i.1147.2 to i32 *)
cast v_conv2_i_1_1_2@uint32 v_conv3_i_1147_2@uint8;
(*   %xor.i.1.1.2 = xor i32 %conv2.i.1.1.2, %mul.i.1.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_1_2 v_conv2_i_1_1_2 v_mul_i_1_1_2;
(*   %conv3.i.1.1.2 = trunc i32 %xor.i.1.1.2 to i8 *)
split tmp_v_xor_i_1_1_2 v_conv3_i_1_1_2 v_xor_i_1_1_2 8;
vpc v_conv3_i_1_1_2@uint8 v_conv3_i_1_1_2@uint32;
(*   %conv4.i.1.1.2 = zext i8 %conv5.i.1150.2 to i32 *)
cast v_conv4_i_1_1_2@uint32 v_conv5_i_1150_2@uint8;
(*   %shr.i.1.1.2 = ashr i32 %conv4.i.1.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i_1_1_2 tmp_to_be_used v_conv4_i_1_1_2 1;
(*   %conv5.i.1.1.2 = trunc i32 %shr.i.1.1.2 to i8 *)
split tmp_v_shr_i_1_1_2 v_conv5_i_1_1_2 v_shr_i_1_1_2 8;
vpc v_conv5_i_1_1_2@uint8 v_conv5_i_1_1_2@uint32;
(*   %conv6.i.1.1.2 = zext i8 %conv7.i.1153.2 to i32 *)
cast v_conv6_i_1_1_2@uint32 v_conv7_i_1153_2@uint8;
(*   %shl.i.1.1.2 = shl i32 %conv6.i.1.1.2, 1 *)
shls discard_127 v_shl_i_1_1_2 v_conv6_i_1_1_2 1;
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
shls discard_128 v_shl_i_2_1_2 v_conv6_i_2_1_2 1;
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
shls discard_129 v_shl_i_3_1_2 v_conv6_i_3_1_2 1;
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
shls discard_130 v_shl_i_4_1_2 v_conv6_i_4_1_2 1;
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
shls discard_131 v_shl_i_5_1_2 v_conv6_i_5_1_2 1;
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
shls discard_132 v_shl_i_6_1_2 v_conv6_i_6_1_2 1;
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
(*   %arrayidx45.1.2 = getelementptr inbounds [25 x i8], [25 x i8]* %p0, i64 0, i64 11 *)
(*   store i8 %conv3.i.7.1.2, i8* %arrayidx45.1.2, align 1 *)
mov p0_11 v_conv3_i_7_1_2;
(*   %86 = load i8, i8* %arrayidx47.2, align 1 *)
mov v86 a_2;
(*   %arrayidx51.1.2 = getelementptr inbounds [25 x i8], [25 x i8]* %s, i64 0, i64 11 *)
(*   %87 = load i8, i8* %arrayidx51.1.2, align 1 *)
mov v87 s_11;
(*   %conv.i127.1154.2 = zext i8 %87 to i32 *)
cast v_conv_i127_1154_2@uint32 v87@uint8;
(*   %and.i128.1155.2 = and i32 %conv.i127.1154.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1155_2 v_conv_i127_1154_2 (0x1)@uint32;
(*   %conv1.i129.1156.2 = zext i8 %86 to i32 *)
cast v_conv1_i129_1156_2@uint32 v86@uint8;
(*   %mul.i130.1157.2 = mul nsw i32 %and.i128.1155.2, %conv1.i129.1156.2 *)
mul v_mul_i130_1157_2 v_and_i128_1155_2 v_conv1_i129_1156_2;
(*   %conv3.i133.1158.2 = trunc i32 %mul.i130.1157.2 to i8 *)
split tmp_v_mul_i130_1157_2 v_conv3_i133_1158_2 v_mul_i130_1157_2 8;
vpc v_conv3_i133_1158_2@uint8 v_conv3_i133_1158_2@uint32;
(*   %conv4.i134.1159.2 = zext i8 %87 to i32 *)
cast v_conv4_i134_1159_2@uint32 v87@uint8;
(*   %shr.i135.1160.2 = ashr i32 %conv4.i134.1159.2, 1 *)
(* You may need to modify here *)
split v_shr_i135_1160_2 tmp_to_be_used v_conv4_i134_1159_2 1;
(*   %conv5.i136.1161.2 = trunc i32 %shr.i135.1160.2 to i8 *)
split tmp_v_shr_i135_1160_2 v_conv5_i136_1161_2 v_shr_i135_1160_2 8;
vpc v_conv5_i136_1161_2@uint8 v_conv5_i136_1161_2@uint32;
(*   %conv6.i137.1162.2 = zext i8 %86 to i32 *)
cast v_conv6_i137_1162_2@uint32 v86@uint8;
(*   %shl.i138.1163.2 = shl i32 %conv6.i137.1162.2, 1 *)
shls discard_133 v_shl_i138_1163_2 v_conv6_i137_1162_2 1;
(*   %conv7.i139.1164.2 = trunc i32 %shl.i138.1163.2 to i8 *)
split tmp_v_shl_i138_1163_2 v_conv7_i139_1164_2 v_shl_i138_1163_2 8;
vpc v_conv7_i139_1164_2@uint8 v_conv7_i139_1164_2@uint32;
(*   %conv.i127.1.1.2 = zext i8 %conv5.i136.1161.2 to i32 *)
cast v_conv_i127_1_1_2@uint32 v_conv5_i136_1161_2@uint8;
(*   %and.i128.1.1.2 = and i32 %conv.i127.1.1.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1_1_2 v_conv_i127_1_1_2 (0x1)@uint32;
(*   %conv1.i129.1.1.2 = zext i8 %conv7.i139.1164.2 to i32 *)
cast v_conv1_i129_1_1_2@uint32 v_conv7_i139_1164_2@uint8;
(*   %mul.i130.1.1.2 = mul nsw i32 %and.i128.1.1.2, %conv1.i129.1.1.2 *)
mul v_mul_i130_1_1_2 v_and_i128_1_1_2 v_conv1_i129_1_1_2;
(*   %conv2.i131.1.1.2 = zext i8 %conv3.i133.1158.2 to i32 *)
cast v_conv2_i131_1_1_2@uint32 v_conv3_i133_1158_2@uint8;
(*   %xor.i132.1.1.2 = xor i32 %conv2.i131.1.1.2, %mul.i130.1.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_1_1_2 v_conv2_i131_1_1_2 v_mul_i130_1_1_2;
(*   %conv3.i133.1.1.2 = trunc i32 %xor.i132.1.1.2 to i8 *)
split tmp_v_xor_i132_1_1_2 v_conv3_i133_1_1_2 v_xor_i132_1_1_2 8;
vpc v_conv3_i133_1_1_2@uint8 v_conv3_i133_1_1_2@uint32;
(*   %conv4.i134.1.1.2 = zext i8 %conv5.i136.1161.2 to i32 *)
cast v_conv4_i134_1_1_2@uint32 v_conv5_i136_1161_2@uint8;
(*   %shr.i135.1.1.2 = ashr i32 %conv4.i134.1.1.2, 1 *)
(* You may need to modify here *)
split v_shr_i135_1_1_2 tmp_to_be_used v_conv4_i134_1_1_2 1;
(*   %conv5.i136.1.1.2 = trunc i32 %shr.i135.1.1.2 to i8 *)
split tmp_v_shr_i135_1_1_2 v_conv5_i136_1_1_2 v_shr_i135_1_1_2 8;
vpc v_conv5_i136_1_1_2@uint8 v_conv5_i136_1_1_2@uint32;
(*   %conv6.i137.1.1.2 = zext i8 %conv7.i139.1164.2 to i32 *)
cast v_conv6_i137_1_1_2@uint32 v_conv7_i139_1164_2@uint8;
(*   %shl.i138.1.1.2 = shl i32 %conv6.i137.1.1.2, 1 *)
shls discard_134 v_shl_i138_1_1_2 v_conv6_i137_1_1_2 1;
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
shls discard_135 v_shl_i138_2_1_2 v_conv6_i137_2_1_2 1;
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
shls discard_136 v_shl_i138_3_1_2 v_conv6_i137_3_1_2 1;
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
shls discard_137 v_shl_i138_4_1_2 v_conv6_i137_4_1_2 1;
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
shls discard_138 v_shl_i138_5_1_2 v_conv6_i137_5_1_2 1;
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
shls discard_139 v_shl_i138_6_1_2 v_conv6_i137_6_1_2 1;
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
(*   %arrayidx56.1.2 = getelementptr inbounds [25 x i8], [25 x i8]* %p1, i64 0, i64 11 *)
(*   store i8 %conv3.i133.7.1.2, i8* %arrayidx56.1.2, align 1 *)
mov p1_11 v_conv3_i133_7_1_2;
(*   %arrayidx60.1.2 = getelementptr inbounds [25 x i8], [25 x i8]* %p0, i64 0, i64 11 *)
(*   %88 = load i8, i8* %arrayidx60.1.2, align 1 *)
mov v88 p0_11;
(*   %conv61.1.2 = zext i8 %88 to i32 *)
cast v_conv61_1_2@uint32 v88@uint8;
(*   %arrayidx65.1.2 = getelementptr inbounds [25 x i8], [25 x i8]* %p1, i64 0, i64 11 *)
(*   %89 = load i8, i8* %arrayidx65.1.2, align 1 *)
mov v89 p1_11;
(*   %conv66.1.2 = zext i8 %89 to i32 *)
cast v_conv66_1_2@uint32 v89@uint8;
(*   %xor67.1.2 = xor i32 %conv61.1.2, %conv66.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor67_1_2 v_conv61_1_2 v_conv66_1_2;
(*   %conv68.1.2 = trunc i32 %xor67.1.2 to i8 *)
split tmp_v_xor67_1_2 v_conv68_1_2 v_xor67_1_2 8;
vpc v_conv68_1_2@uint8 v_conv68_1_2@uint32;
(*   %arrayidx72.1.2 = getelementptr inbounds [25 x i8], [25 x i8]* %z, i64 0, i64 11 *)
(*   store i8 %conv68.1.2, i8* %arrayidx72.1.2, align 1 *)
mov z_11 v_conv68_1_2;
(*   %arrayidx22.3.2 = getelementptr inbounds i8, i8* %b, i64 3 *)
(*   %90 = load i8, i8* %arrayidx22.3.2, align 1 *)
mov v90 b_3;
(*   %conv.3.2 = zext i8 %90 to i32 *)
cast v_conv_3_2@uint32 v90@uint8;
(*   %arrayidx26.3.2 = getelementptr inbounds i8, i8* %r, i64 13 *)
(*   %91 = load i8, i8* %arrayidx26.3.2, align 1 *)
mov v91 r_13;
(*   %conv27.3.2 = zext i8 %91 to i32 *)
cast v_conv27_3_2@uint32 v91@uint8;
(*   %xor.3.2 = xor i32 %conv.3.2, %conv27.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_3_2 v_conv_3_2 v_conv27_3_2;
(*   %conv28.3.2 = trunc i32 %xor.3.2 to i8 *)
split tmp_v_xor_3_2 v_conv28_3_2 v_xor_3_2 8;
vpc v_conv28_3_2@uint8 v_conv28_3_2@uint32;
(*   %arrayidx32.3.2 = getelementptr inbounds [25 x i8], [25 x i8]* %s, i64 0, i64 13 *)
(*   store i8 %conv28.3.2, i8* %arrayidx32.3.2, align 1 *)
mov s_13 v_conv28_3_2;
(*   %92 = load i8, i8* %arrayidx34.2, align 1 *)
mov v92 a_2;
(*   %conv35.3.2 = zext i8 %92 to i32 *)
cast v_conv35_3_2@uint32 v92@uint8;
(*   %xor36.3.2 = xor i32 %conv35.3.2, 1 *)
(* You may need to modify here *)
xor uint32 v_xor36_3_2 v_conv35_3_2 (0x1)@uint32;
(*   %conv37.3.2 = trunc i32 %xor36.3.2 to i8 *)
split tmp_v_xor36_3_2 v_conv37_3_2 v_xor36_3_2 8;
vpc v_conv37_3_2@uint8 v_conv37_3_2@uint32;
(*   %arrayidx41.3.2 = getelementptr inbounds i8, i8* %r, i64 13 *)
(*   %93 = load i8, i8* %arrayidx41.3.2, align 1 *)
mov v93 r_13;
(*   %conv.i.3187.2 = zext i8 %93 to i32 *)
cast v_conv_i_3187_2@uint32 v93@uint8;
(*   %and.i.3188.2 = and i32 %conv.i.3187.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3188_2 v_conv_i_3187_2 (0x1)@uint32;
(*   %conv1.i.3189.2 = zext i8 %conv37.3.2 to i32 *)
cast v_conv1_i_3189_2@uint32 v_conv37_3_2@uint8;
(*   %mul.i.3190.2 = mul nsw i32 %and.i.3188.2, %conv1.i.3189.2 *)
mul v_mul_i_3190_2 v_and_i_3188_2 v_conv1_i_3189_2;
(*   %conv3.i.3191.2 = trunc i32 %mul.i.3190.2 to i8 *)
split tmp_v_mul_i_3190_2 v_conv3_i_3191_2 v_mul_i_3190_2 8;
vpc v_conv3_i_3191_2@uint8 v_conv3_i_3191_2@uint32;
(*   %conv4.i.3192.2 = zext i8 %93 to i32 *)
cast v_conv4_i_3192_2@uint32 v93@uint8;
(*   %shr.i.3193.2 = ashr i32 %conv4.i.3192.2, 1 *)
(* You may need to modify here *)
split v_shr_i_3193_2 tmp_to_be_used v_conv4_i_3192_2 1;
(*   %conv5.i.3194.2 = trunc i32 %shr.i.3193.2 to i8 *)
split tmp_v_shr_i_3193_2 v_conv5_i_3194_2 v_shr_i_3193_2 8;
vpc v_conv5_i_3194_2@uint8 v_conv5_i_3194_2@uint32;
(*   %conv6.i.3195.2 = zext i8 %conv37.3.2 to i32 *)
cast v_conv6_i_3195_2@uint32 v_conv37_3_2@uint8;
(*   %shl.i.3196.2 = shl i32 %conv6.i.3195.2, 1 *)
shls discard_140 v_shl_i_3196_2 v_conv6_i_3195_2 1;
(*   %conv7.i.3197.2 = trunc i32 %shl.i.3196.2 to i8 *)
split tmp_v_shl_i_3196_2 v_conv7_i_3197_2 v_shl_i_3196_2 8;
vpc v_conv7_i_3197_2@uint8 v_conv7_i_3197_2@uint32;
(*   %conv.i.1.3.2 = zext i8 %conv5.i.3194.2 to i32 *)
cast v_conv_i_1_3_2@uint32 v_conv5_i_3194_2@uint8;
(*   %and.i.1.3.2 = and i32 %conv.i.1.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_3_2 v_conv_i_1_3_2 (0x1)@uint32;
(*   %conv1.i.1.3.2 = zext i8 %conv7.i.3197.2 to i32 *)
cast v_conv1_i_1_3_2@uint32 v_conv7_i_3197_2@uint8;
(*   %mul.i.1.3.2 = mul nsw i32 %and.i.1.3.2, %conv1.i.1.3.2 *)
mul v_mul_i_1_3_2 v_and_i_1_3_2 v_conv1_i_1_3_2;
(*   %conv2.i.1.3.2 = zext i8 %conv3.i.3191.2 to i32 *)
cast v_conv2_i_1_3_2@uint32 v_conv3_i_3191_2@uint8;
(*   %xor.i.1.3.2 = xor i32 %conv2.i.1.3.2, %mul.i.1.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_3_2 v_conv2_i_1_3_2 v_mul_i_1_3_2;
(*   %conv3.i.1.3.2 = trunc i32 %xor.i.1.3.2 to i8 *)
split tmp_v_xor_i_1_3_2 v_conv3_i_1_3_2 v_xor_i_1_3_2 8;
vpc v_conv3_i_1_3_2@uint8 v_conv3_i_1_3_2@uint32;
(*   %conv4.i.1.3.2 = zext i8 %conv5.i.3194.2 to i32 *)
cast v_conv4_i_1_3_2@uint32 v_conv5_i_3194_2@uint8;
(*   %shr.i.1.3.2 = ashr i32 %conv4.i.1.3.2, 1 *)
(* You may need to modify here *)
split v_shr_i_1_3_2 tmp_to_be_used v_conv4_i_1_3_2 1;
(*   %conv5.i.1.3.2 = trunc i32 %shr.i.1.3.2 to i8 *)
split tmp_v_shr_i_1_3_2 v_conv5_i_1_3_2 v_shr_i_1_3_2 8;
vpc v_conv5_i_1_3_2@uint8 v_conv5_i_1_3_2@uint32;
(*   %conv6.i.1.3.2 = zext i8 %conv7.i.3197.2 to i32 *)
cast v_conv6_i_1_3_2@uint32 v_conv7_i_3197_2@uint8;
(*   %shl.i.1.3.2 = shl i32 %conv6.i.1.3.2, 1 *)
shls discard_141 v_shl_i_1_3_2 v_conv6_i_1_3_2 1;
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
shls discard_142 v_shl_i_2_3_2 v_conv6_i_2_3_2 1;
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
shls discard_143 v_shl_i_3_3_2 v_conv6_i_3_3_2 1;
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
shls discard_144 v_shl_i_4_3_2 v_conv6_i_4_3_2 1;
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
shls discard_145 v_shl_i_5_3_2 v_conv6_i_5_3_2 1;
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
shls discard_146 v_shl_i_6_3_2 v_conv6_i_6_3_2 1;
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
(*   %arrayidx45.3.2 = getelementptr inbounds [25 x i8], [25 x i8]* %p0, i64 0, i64 13 *)
(*   store i8 %conv3.i.7.3.2, i8* %arrayidx45.3.2, align 1 *)
mov p0_13 v_conv3_i_7_3_2;
(*   %94 = load i8, i8* %arrayidx47.2, align 1 *)
mov v94 a_2;
(*   %arrayidx51.3.2 = getelementptr inbounds [25 x i8], [25 x i8]* %s, i64 0, i64 13 *)
(*   %95 = load i8, i8* %arrayidx51.3.2, align 1 *)
mov v95 s_13;
(*   %conv.i127.3198.2 = zext i8 %95 to i32 *)
cast v_conv_i127_3198_2@uint32 v95@uint8;
(*   %and.i128.3199.2 = and i32 %conv.i127.3198.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_3199_2 v_conv_i127_3198_2 (0x1)@uint32;
(*   %conv1.i129.3200.2 = zext i8 %94 to i32 *)
cast v_conv1_i129_3200_2@uint32 v94@uint8;
(*   %mul.i130.3201.2 = mul nsw i32 %and.i128.3199.2, %conv1.i129.3200.2 *)
mul v_mul_i130_3201_2 v_and_i128_3199_2 v_conv1_i129_3200_2;
(*   %conv3.i133.3202.2 = trunc i32 %mul.i130.3201.2 to i8 *)
split tmp_v_mul_i130_3201_2 v_conv3_i133_3202_2 v_mul_i130_3201_2 8;
vpc v_conv3_i133_3202_2@uint8 v_conv3_i133_3202_2@uint32;
(*   %conv4.i134.3203.2 = zext i8 %95 to i32 *)
cast v_conv4_i134_3203_2@uint32 v95@uint8;
(*   %shr.i135.3204.2 = ashr i32 %conv4.i134.3203.2, 1 *)
(* You may need to modify here *)
split v_shr_i135_3204_2 tmp_to_be_used v_conv4_i134_3203_2 1;
(*   %conv5.i136.3205.2 = trunc i32 %shr.i135.3204.2 to i8 *)
split tmp_v_shr_i135_3204_2 v_conv5_i136_3205_2 v_shr_i135_3204_2 8;
vpc v_conv5_i136_3205_2@uint8 v_conv5_i136_3205_2@uint32;
(*   %conv6.i137.3206.2 = zext i8 %94 to i32 *)
cast v_conv6_i137_3206_2@uint32 v94@uint8;
(*   %shl.i138.3207.2 = shl i32 %conv6.i137.3206.2, 1 *)
shls discard_147 v_shl_i138_3207_2 v_conv6_i137_3206_2 1;
(*   %conv7.i139.3208.2 = trunc i32 %shl.i138.3207.2 to i8 *)
split tmp_v_shl_i138_3207_2 v_conv7_i139_3208_2 v_shl_i138_3207_2 8;
vpc v_conv7_i139_3208_2@uint8 v_conv7_i139_3208_2@uint32;
(*   %conv.i127.1.3.2 = zext i8 %conv5.i136.3205.2 to i32 *)
cast v_conv_i127_1_3_2@uint32 v_conv5_i136_3205_2@uint8;
(*   %and.i128.1.3.2 = and i32 %conv.i127.1.3.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1_3_2 v_conv_i127_1_3_2 (0x1)@uint32;
(*   %conv1.i129.1.3.2 = zext i8 %conv7.i139.3208.2 to i32 *)
cast v_conv1_i129_1_3_2@uint32 v_conv7_i139_3208_2@uint8;
(*   %mul.i130.1.3.2 = mul nsw i32 %and.i128.1.3.2, %conv1.i129.1.3.2 *)
mul v_mul_i130_1_3_2 v_and_i128_1_3_2 v_conv1_i129_1_3_2;
(*   %conv2.i131.1.3.2 = zext i8 %conv3.i133.3202.2 to i32 *)
cast v_conv2_i131_1_3_2@uint32 v_conv3_i133_3202_2@uint8;
(*   %xor.i132.1.3.2 = xor i32 %conv2.i131.1.3.2, %mul.i130.1.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_1_3_2 v_conv2_i131_1_3_2 v_mul_i130_1_3_2;
(*   %conv3.i133.1.3.2 = trunc i32 %xor.i132.1.3.2 to i8 *)
split tmp_v_xor_i132_1_3_2 v_conv3_i133_1_3_2 v_xor_i132_1_3_2 8;
vpc v_conv3_i133_1_3_2@uint8 v_conv3_i133_1_3_2@uint32;
(*   %conv4.i134.1.3.2 = zext i8 %conv5.i136.3205.2 to i32 *)
cast v_conv4_i134_1_3_2@uint32 v_conv5_i136_3205_2@uint8;
(*   %shr.i135.1.3.2 = ashr i32 %conv4.i134.1.3.2, 1 *)
(* You may need to modify here *)
split v_shr_i135_1_3_2 tmp_to_be_used v_conv4_i134_1_3_2 1;
(*   %conv5.i136.1.3.2 = trunc i32 %shr.i135.1.3.2 to i8 *)
split tmp_v_shr_i135_1_3_2 v_conv5_i136_1_3_2 v_shr_i135_1_3_2 8;
vpc v_conv5_i136_1_3_2@uint8 v_conv5_i136_1_3_2@uint32;
(*   %conv6.i137.1.3.2 = zext i8 %conv7.i139.3208.2 to i32 *)
cast v_conv6_i137_1_3_2@uint32 v_conv7_i139_3208_2@uint8;
(*   %shl.i138.1.3.2 = shl i32 %conv6.i137.1.3.2, 1 *)
shls discard_148 v_shl_i138_1_3_2 v_conv6_i137_1_3_2 1;
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
shls discard_149 v_shl_i138_2_3_2 v_conv6_i137_2_3_2 1;
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
shls discard_150 v_shl_i138_3_3_2 v_conv6_i137_3_3_2 1;
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
shls discard_151 v_shl_i138_4_3_2 v_conv6_i137_4_3_2 1;
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
shls discard_152 v_shl_i138_5_3_2 v_conv6_i137_5_3_2 1;
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
shls discard_153 v_shl_i138_6_3_2 v_conv6_i137_6_3_2 1;
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
(*   %arrayidx56.3.2 = getelementptr inbounds [25 x i8], [25 x i8]* %p1, i64 0, i64 13 *)
(*   store i8 %conv3.i133.7.3.2, i8* %arrayidx56.3.2, align 1 *)
mov p1_13 v_conv3_i133_7_3_2;
(*   %arrayidx60.3.2 = getelementptr inbounds [25 x i8], [25 x i8]* %p0, i64 0, i64 13 *)
(*   %96 = load i8, i8* %arrayidx60.3.2, align 1 *)
mov v96 p0_13;
(*   %conv61.3.2 = zext i8 %96 to i32 *)
cast v_conv61_3_2@uint32 v96@uint8;
(*   %arrayidx65.3.2 = getelementptr inbounds [25 x i8], [25 x i8]* %p1, i64 0, i64 13 *)
(*   %97 = load i8, i8* %arrayidx65.3.2, align 1 *)
mov v97 p1_13;
(*   %conv66.3.2 = zext i8 %97 to i32 *)
cast v_conv66_3_2@uint32 v97@uint8;
(*   %xor67.3.2 = xor i32 %conv61.3.2, %conv66.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor67_3_2 v_conv61_3_2 v_conv66_3_2;
(*   %conv68.3.2 = trunc i32 %xor67.3.2 to i8 *)
split tmp_v_xor67_3_2 v_conv68_3_2 v_xor67_3_2 8;
vpc v_conv68_3_2@uint8 v_conv68_3_2@uint32;
(*   %arrayidx72.3.2 = getelementptr inbounds [25 x i8], [25 x i8]* %z, i64 0, i64 13 *)
(*   store i8 %conv68.3.2, i8* %arrayidx72.3.2, align 1 *)
mov z_13 v_conv68_3_2;
(*   %arrayidx22.4.2 = getelementptr inbounds i8, i8* %b, i64 4 *)
(*   %98 = load i8, i8* %arrayidx22.4.2, align 1 *)
mov v98 b_4;
(*   %conv.4.2 = zext i8 %98 to i32 *)
cast v_conv_4_2@uint32 v98@uint8;
(*   %arrayidx26.4.2 = getelementptr inbounds i8, i8* %r, i64 14 *)
(*   %99 = load i8, i8* %arrayidx26.4.2, align 1 *)
mov v99 r_14;
(*   %conv27.4.2 = zext i8 %99 to i32 *)
cast v_conv27_4_2@uint32 v99@uint8;
(*   %xor.4.2 = xor i32 %conv.4.2, %conv27.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor_4_2 v_conv_4_2 v_conv27_4_2;
(*   %conv28.4.2 = trunc i32 %xor.4.2 to i8 *)
split tmp_v_xor_4_2 v_conv28_4_2 v_xor_4_2 8;
vpc v_conv28_4_2@uint8 v_conv28_4_2@uint32;
(*   %arrayidx32.4.2 = getelementptr inbounds [25 x i8], [25 x i8]* %s, i64 0, i64 14 *)
(*   store i8 %conv28.4.2, i8* %arrayidx32.4.2, align 1 *)
mov s_14 v_conv28_4_2;
(*   %100 = load i8, i8* %arrayidx34.2, align 1 *)
mov v100 a_2;
(*   %conv35.4.2 = zext i8 %100 to i32 *)
cast v_conv35_4_2@uint32 v100@uint8;
(*   %xor36.4.2 = xor i32 %conv35.4.2, 1 *)
(* You may need to modify here *)
xor uint32 v_xor36_4_2 v_conv35_4_2 (0x1)@uint32;
(*   %conv37.4.2 = trunc i32 %xor36.4.2 to i8 *)
split tmp_v_xor36_4_2 v_conv37_4_2 v_xor36_4_2 8;
vpc v_conv37_4_2@uint8 v_conv37_4_2@uint32;
(*   %arrayidx41.4.2 = getelementptr inbounds i8, i8* %r, i64 14 *)
(*   %101 = load i8, i8* %arrayidx41.4.2, align 1 *)
mov v101 r_14;
(*   %conv.i.4209.2 = zext i8 %101 to i32 *)
cast v_conv_i_4209_2@uint32 v101@uint8;
(*   %and.i.4210.2 = and i32 %conv.i.4209.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4210_2 v_conv_i_4209_2 (0x1)@uint32;
(*   %conv1.i.4211.2 = zext i8 %conv37.4.2 to i32 *)
cast v_conv1_i_4211_2@uint32 v_conv37_4_2@uint8;
(*   %mul.i.4212.2 = mul nsw i32 %and.i.4210.2, %conv1.i.4211.2 *)
mul v_mul_i_4212_2 v_and_i_4210_2 v_conv1_i_4211_2;
(*   %conv3.i.4213.2 = trunc i32 %mul.i.4212.2 to i8 *)
split tmp_v_mul_i_4212_2 v_conv3_i_4213_2 v_mul_i_4212_2 8;
vpc v_conv3_i_4213_2@uint8 v_conv3_i_4213_2@uint32;
(*   %conv4.i.4214.2 = zext i8 %101 to i32 *)
cast v_conv4_i_4214_2@uint32 v101@uint8;
(*   %shr.i.4215.2 = ashr i32 %conv4.i.4214.2, 1 *)
(* You may need to modify here *)
split v_shr_i_4215_2 tmp_to_be_used v_conv4_i_4214_2 1;
(*   %conv5.i.4216.2 = trunc i32 %shr.i.4215.2 to i8 *)
split tmp_v_shr_i_4215_2 v_conv5_i_4216_2 v_shr_i_4215_2 8;
vpc v_conv5_i_4216_2@uint8 v_conv5_i_4216_2@uint32;
(*   %conv6.i.4217.2 = zext i8 %conv37.4.2 to i32 *)
cast v_conv6_i_4217_2@uint32 v_conv37_4_2@uint8;
(*   %shl.i.4218.2 = shl i32 %conv6.i.4217.2, 1 *)
shls discard_154 v_shl_i_4218_2 v_conv6_i_4217_2 1;
(*   %conv7.i.4219.2 = trunc i32 %shl.i.4218.2 to i8 *)
split tmp_v_shl_i_4218_2 v_conv7_i_4219_2 v_shl_i_4218_2 8;
vpc v_conv7_i_4219_2@uint8 v_conv7_i_4219_2@uint32;
(*   %conv.i.1.4.2 = zext i8 %conv5.i.4216.2 to i32 *)
cast v_conv_i_1_4_2@uint32 v_conv5_i_4216_2@uint8;
(*   %and.i.1.4.2 = and i32 %conv.i.1.4.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_4_2 v_conv_i_1_4_2 (0x1)@uint32;
(*   %conv1.i.1.4.2 = zext i8 %conv7.i.4219.2 to i32 *)
cast v_conv1_i_1_4_2@uint32 v_conv7_i_4219_2@uint8;
(*   %mul.i.1.4.2 = mul nsw i32 %and.i.1.4.2, %conv1.i.1.4.2 *)
mul v_mul_i_1_4_2 v_and_i_1_4_2 v_conv1_i_1_4_2;
(*   %conv2.i.1.4.2 = zext i8 %conv3.i.4213.2 to i32 *)
cast v_conv2_i_1_4_2@uint32 v_conv3_i_4213_2@uint8;
(*   %xor.i.1.4.2 = xor i32 %conv2.i.1.4.2, %mul.i.1.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_4_2 v_conv2_i_1_4_2 v_mul_i_1_4_2;
(*   %conv3.i.1.4.2 = trunc i32 %xor.i.1.4.2 to i8 *)
split tmp_v_xor_i_1_4_2 v_conv3_i_1_4_2 v_xor_i_1_4_2 8;
vpc v_conv3_i_1_4_2@uint8 v_conv3_i_1_4_2@uint32;
(*   %conv4.i.1.4.2 = zext i8 %conv5.i.4216.2 to i32 *)
cast v_conv4_i_1_4_2@uint32 v_conv5_i_4216_2@uint8;
(*   %shr.i.1.4.2 = ashr i32 %conv4.i.1.4.2, 1 *)
(* You may need to modify here *)
split v_shr_i_1_4_2 tmp_to_be_used v_conv4_i_1_4_2 1;
(*   %conv5.i.1.4.2 = trunc i32 %shr.i.1.4.2 to i8 *)
split tmp_v_shr_i_1_4_2 v_conv5_i_1_4_2 v_shr_i_1_4_2 8;
vpc v_conv5_i_1_4_2@uint8 v_conv5_i_1_4_2@uint32;
(*   %conv6.i.1.4.2 = zext i8 %conv7.i.4219.2 to i32 *)
cast v_conv6_i_1_4_2@uint32 v_conv7_i_4219_2@uint8;
(*   %shl.i.1.4.2 = shl i32 %conv6.i.1.4.2, 1 *)
shls discard_155 v_shl_i_1_4_2 v_conv6_i_1_4_2 1;
(*   %conv7.i.1.4.2 = trunc i32 %shl.i.1.4.2 to i8 *)
split tmp_v_shl_i_1_4_2 v_conv7_i_1_4_2 v_shl_i_1_4_2 8;
vpc v_conv7_i_1_4_2@uint8 v_conv7_i_1_4_2@uint32;
(*   %conv.i.2.4.2 = zext i8 %conv5.i.1.4.2 to i32 *)
cast v_conv_i_2_4_2@uint32 v_conv5_i_1_4_2@uint8;
(*   %and.i.2.4.2 = and i32 %conv.i.2.4.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_4_2 v_conv_i_2_4_2 (0x1)@uint32;
(*   %conv1.i.2.4.2 = zext i8 %conv7.i.1.4.2 to i32 *)
cast v_conv1_i_2_4_2@uint32 v_conv7_i_1_4_2@uint8;
(*   %mul.i.2.4.2 = mul nsw i32 %and.i.2.4.2, %conv1.i.2.4.2 *)
mul v_mul_i_2_4_2 v_and_i_2_4_2 v_conv1_i_2_4_2;
(*   %conv2.i.2.4.2 = zext i8 %conv3.i.1.4.2 to i32 *)
cast v_conv2_i_2_4_2@uint32 v_conv3_i_1_4_2@uint8;
(*   %xor.i.2.4.2 = xor i32 %conv2.i.2.4.2, %mul.i.2.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_4_2 v_conv2_i_2_4_2 v_mul_i_2_4_2;
(*   %conv3.i.2.4.2 = trunc i32 %xor.i.2.4.2 to i8 *)
split tmp_v_xor_i_2_4_2 v_conv3_i_2_4_2 v_xor_i_2_4_2 8;
vpc v_conv3_i_2_4_2@uint8 v_conv3_i_2_4_2@uint32;
(*   %conv4.i.2.4.2 = zext i8 %conv5.i.1.4.2 to i32 *)
cast v_conv4_i_2_4_2@uint32 v_conv5_i_1_4_2@uint8;
(*   %shr.i.2.4.2 = ashr i32 %conv4.i.2.4.2, 1 *)
(* You may need to modify here *)
split v_shr_i_2_4_2 tmp_to_be_used v_conv4_i_2_4_2 1;
(*   %conv5.i.2.4.2 = trunc i32 %shr.i.2.4.2 to i8 *)
split tmp_v_shr_i_2_4_2 v_conv5_i_2_4_2 v_shr_i_2_4_2 8;
vpc v_conv5_i_2_4_2@uint8 v_conv5_i_2_4_2@uint32;
(*   %conv6.i.2.4.2 = zext i8 %conv7.i.1.4.2 to i32 *)
cast v_conv6_i_2_4_2@uint32 v_conv7_i_1_4_2@uint8;
(*   %shl.i.2.4.2 = shl i32 %conv6.i.2.4.2, 1 *)
shls discard_156 v_shl_i_2_4_2 v_conv6_i_2_4_2 1;
(*   %conv7.i.2.4.2 = trunc i32 %shl.i.2.4.2 to i8 *)
split tmp_v_shl_i_2_4_2 v_conv7_i_2_4_2 v_shl_i_2_4_2 8;
vpc v_conv7_i_2_4_2@uint8 v_conv7_i_2_4_2@uint32;
(*   %conv.i.3.4.2 = zext i8 %conv5.i.2.4.2 to i32 *)
cast v_conv_i_3_4_2@uint32 v_conv5_i_2_4_2@uint8;
(*   %and.i.3.4.2 = and i32 %conv.i.3.4.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_4_2 v_conv_i_3_4_2 (0x1)@uint32;
(*   %conv1.i.3.4.2 = zext i8 %conv7.i.2.4.2 to i32 *)
cast v_conv1_i_3_4_2@uint32 v_conv7_i_2_4_2@uint8;
(*   %mul.i.3.4.2 = mul nsw i32 %and.i.3.4.2, %conv1.i.3.4.2 *)
mul v_mul_i_3_4_2 v_and_i_3_4_2 v_conv1_i_3_4_2;
(*   %conv2.i.3.4.2 = zext i8 %conv3.i.2.4.2 to i32 *)
cast v_conv2_i_3_4_2@uint32 v_conv3_i_2_4_2@uint8;
(*   %xor.i.3.4.2 = xor i32 %conv2.i.3.4.2, %mul.i.3.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_4_2 v_conv2_i_3_4_2 v_mul_i_3_4_2;
(*   %conv3.i.3.4.2 = trunc i32 %xor.i.3.4.2 to i8 *)
split tmp_v_xor_i_3_4_2 v_conv3_i_3_4_2 v_xor_i_3_4_2 8;
vpc v_conv3_i_3_4_2@uint8 v_conv3_i_3_4_2@uint32;
(*   %conv4.i.3.4.2 = zext i8 %conv5.i.2.4.2 to i32 *)
cast v_conv4_i_3_4_2@uint32 v_conv5_i_2_4_2@uint8;
(*   %shr.i.3.4.2 = ashr i32 %conv4.i.3.4.2, 1 *)
(* You may need to modify here *)
split v_shr_i_3_4_2 tmp_to_be_used v_conv4_i_3_4_2 1;
(*   %conv5.i.3.4.2 = trunc i32 %shr.i.3.4.2 to i8 *)
split tmp_v_shr_i_3_4_2 v_conv5_i_3_4_2 v_shr_i_3_4_2 8;
vpc v_conv5_i_3_4_2@uint8 v_conv5_i_3_4_2@uint32;
(*   %conv6.i.3.4.2 = zext i8 %conv7.i.2.4.2 to i32 *)
cast v_conv6_i_3_4_2@uint32 v_conv7_i_2_4_2@uint8;
(*   %shl.i.3.4.2 = shl i32 %conv6.i.3.4.2, 1 *)
shls discard_157 v_shl_i_3_4_2 v_conv6_i_3_4_2 1;
(*   %conv7.i.3.4.2 = trunc i32 %shl.i.3.4.2 to i8 *)
split tmp_v_shl_i_3_4_2 v_conv7_i_3_4_2 v_shl_i_3_4_2 8;
vpc v_conv7_i_3_4_2@uint8 v_conv7_i_3_4_2@uint32;
(*   %conv.i.4.4.2 = zext i8 %conv5.i.3.4.2 to i32 *)
cast v_conv_i_4_4_2@uint32 v_conv5_i_3_4_2@uint8;
(*   %and.i.4.4.2 = and i32 %conv.i.4.4.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_4_2 v_conv_i_4_4_2 (0x1)@uint32;
(*   %conv1.i.4.4.2 = zext i8 %conv7.i.3.4.2 to i32 *)
cast v_conv1_i_4_4_2@uint32 v_conv7_i_3_4_2@uint8;
(*   %mul.i.4.4.2 = mul nsw i32 %and.i.4.4.2, %conv1.i.4.4.2 *)
mul v_mul_i_4_4_2 v_and_i_4_4_2 v_conv1_i_4_4_2;
(*   %conv2.i.4.4.2 = zext i8 %conv3.i.3.4.2 to i32 *)
cast v_conv2_i_4_4_2@uint32 v_conv3_i_3_4_2@uint8;
(*   %xor.i.4.4.2 = xor i32 %conv2.i.4.4.2, %mul.i.4.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_4_2 v_conv2_i_4_4_2 v_mul_i_4_4_2;
(*   %conv3.i.4.4.2 = trunc i32 %xor.i.4.4.2 to i8 *)
split tmp_v_xor_i_4_4_2 v_conv3_i_4_4_2 v_xor_i_4_4_2 8;
vpc v_conv3_i_4_4_2@uint8 v_conv3_i_4_4_2@uint32;
(*   %conv4.i.4.4.2 = zext i8 %conv5.i.3.4.2 to i32 *)
cast v_conv4_i_4_4_2@uint32 v_conv5_i_3_4_2@uint8;
(*   %shr.i.4.4.2 = ashr i32 %conv4.i.4.4.2, 1 *)
(* You may need to modify here *)
split v_shr_i_4_4_2 tmp_to_be_used v_conv4_i_4_4_2 1;
(*   %conv5.i.4.4.2 = trunc i32 %shr.i.4.4.2 to i8 *)
split tmp_v_shr_i_4_4_2 v_conv5_i_4_4_2 v_shr_i_4_4_2 8;
vpc v_conv5_i_4_4_2@uint8 v_conv5_i_4_4_2@uint32;
(*   %conv6.i.4.4.2 = zext i8 %conv7.i.3.4.2 to i32 *)
cast v_conv6_i_4_4_2@uint32 v_conv7_i_3_4_2@uint8;
(*   %shl.i.4.4.2 = shl i32 %conv6.i.4.4.2, 1 *)
shls discard_158 v_shl_i_4_4_2 v_conv6_i_4_4_2 1;
(*   %conv7.i.4.4.2 = trunc i32 %shl.i.4.4.2 to i8 *)
split tmp_v_shl_i_4_4_2 v_conv7_i_4_4_2 v_shl_i_4_4_2 8;
vpc v_conv7_i_4_4_2@uint8 v_conv7_i_4_4_2@uint32;
(*   %conv.i.5.4.2 = zext i8 %conv5.i.4.4.2 to i32 *)
cast v_conv_i_5_4_2@uint32 v_conv5_i_4_4_2@uint8;
(*   %and.i.5.4.2 = and i32 %conv.i.5.4.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_4_2 v_conv_i_5_4_2 (0x1)@uint32;
(*   %conv1.i.5.4.2 = zext i8 %conv7.i.4.4.2 to i32 *)
cast v_conv1_i_5_4_2@uint32 v_conv7_i_4_4_2@uint8;
(*   %mul.i.5.4.2 = mul nsw i32 %and.i.5.4.2, %conv1.i.5.4.2 *)
mul v_mul_i_5_4_2 v_and_i_5_4_2 v_conv1_i_5_4_2;
(*   %conv2.i.5.4.2 = zext i8 %conv3.i.4.4.2 to i32 *)
cast v_conv2_i_5_4_2@uint32 v_conv3_i_4_4_2@uint8;
(*   %xor.i.5.4.2 = xor i32 %conv2.i.5.4.2, %mul.i.5.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_4_2 v_conv2_i_5_4_2 v_mul_i_5_4_2;
(*   %conv3.i.5.4.2 = trunc i32 %xor.i.5.4.2 to i8 *)
split tmp_v_xor_i_5_4_2 v_conv3_i_5_4_2 v_xor_i_5_4_2 8;
vpc v_conv3_i_5_4_2@uint8 v_conv3_i_5_4_2@uint32;
(*   %conv4.i.5.4.2 = zext i8 %conv5.i.4.4.2 to i32 *)
cast v_conv4_i_5_4_2@uint32 v_conv5_i_4_4_2@uint8;
(*   %shr.i.5.4.2 = ashr i32 %conv4.i.5.4.2, 1 *)
(* You may need to modify here *)
split v_shr_i_5_4_2 tmp_to_be_used v_conv4_i_5_4_2 1;
(*   %conv5.i.5.4.2 = trunc i32 %shr.i.5.4.2 to i8 *)
split tmp_v_shr_i_5_4_2 v_conv5_i_5_4_2 v_shr_i_5_4_2 8;
vpc v_conv5_i_5_4_2@uint8 v_conv5_i_5_4_2@uint32;
(*   %conv6.i.5.4.2 = zext i8 %conv7.i.4.4.2 to i32 *)
cast v_conv6_i_5_4_2@uint32 v_conv7_i_4_4_2@uint8;
(*   %shl.i.5.4.2 = shl i32 %conv6.i.5.4.2, 1 *)
shls discard_159 v_shl_i_5_4_2 v_conv6_i_5_4_2 1;
(*   %conv7.i.5.4.2 = trunc i32 %shl.i.5.4.2 to i8 *)
split tmp_v_shl_i_5_4_2 v_conv7_i_5_4_2 v_shl_i_5_4_2 8;
vpc v_conv7_i_5_4_2@uint8 v_conv7_i_5_4_2@uint32;
(*   %conv.i.6.4.2 = zext i8 %conv5.i.5.4.2 to i32 *)
cast v_conv_i_6_4_2@uint32 v_conv5_i_5_4_2@uint8;
(*   %and.i.6.4.2 = and i32 %conv.i.6.4.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_4_2 v_conv_i_6_4_2 (0x1)@uint32;
(*   %conv1.i.6.4.2 = zext i8 %conv7.i.5.4.2 to i32 *)
cast v_conv1_i_6_4_2@uint32 v_conv7_i_5_4_2@uint8;
(*   %mul.i.6.4.2 = mul nsw i32 %and.i.6.4.2, %conv1.i.6.4.2 *)
mul v_mul_i_6_4_2 v_and_i_6_4_2 v_conv1_i_6_4_2;
(*   %conv2.i.6.4.2 = zext i8 %conv3.i.5.4.2 to i32 *)
cast v_conv2_i_6_4_2@uint32 v_conv3_i_5_4_2@uint8;
(*   %xor.i.6.4.2 = xor i32 %conv2.i.6.4.2, %mul.i.6.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_4_2 v_conv2_i_6_4_2 v_mul_i_6_4_2;
(*   %conv3.i.6.4.2 = trunc i32 %xor.i.6.4.2 to i8 *)
split tmp_v_xor_i_6_4_2 v_conv3_i_6_4_2 v_xor_i_6_4_2 8;
vpc v_conv3_i_6_4_2@uint8 v_conv3_i_6_4_2@uint32;
(*   %conv4.i.6.4.2 = zext i8 %conv5.i.5.4.2 to i32 *)
cast v_conv4_i_6_4_2@uint32 v_conv5_i_5_4_2@uint8;
(*   %shr.i.6.4.2 = ashr i32 %conv4.i.6.4.2, 1 *)
(* You may need to modify here *)
split v_shr_i_6_4_2 tmp_to_be_used v_conv4_i_6_4_2 1;
(*   %conv5.i.6.4.2 = trunc i32 %shr.i.6.4.2 to i8 *)
split tmp_v_shr_i_6_4_2 v_conv5_i_6_4_2 v_shr_i_6_4_2 8;
vpc v_conv5_i_6_4_2@uint8 v_conv5_i_6_4_2@uint32;
(*   %conv6.i.6.4.2 = zext i8 %conv7.i.5.4.2 to i32 *)
cast v_conv6_i_6_4_2@uint32 v_conv7_i_5_4_2@uint8;
(*   %shl.i.6.4.2 = shl i32 %conv6.i.6.4.2, 1 *)
shls discard_160 v_shl_i_6_4_2 v_conv6_i_6_4_2 1;
(*   %conv7.i.6.4.2 = trunc i32 %shl.i.6.4.2 to i8 *)
split tmp_v_shl_i_6_4_2 v_conv7_i_6_4_2 v_shl_i_6_4_2 8;
vpc v_conv7_i_6_4_2@uint8 v_conv7_i_6_4_2@uint32;
(*   %conv.i.7.4.2 = zext i8 %conv5.i.6.4.2 to i32 *)
cast v_conv_i_7_4_2@uint32 v_conv5_i_6_4_2@uint8;
(*   %and.i.7.4.2 = and i32 %conv.i.7.4.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_4_2 v_conv_i_7_4_2 (0x1)@uint32;
(*   %conv1.i.7.4.2 = zext i8 %conv7.i.6.4.2 to i32 *)
cast v_conv1_i_7_4_2@uint32 v_conv7_i_6_4_2@uint8;
(*   %mul.i.7.4.2 = mul nsw i32 %and.i.7.4.2, %conv1.i.7.4.2 *)
mul v_mul_i_7_4_2 v_and_i_7_4_2 v_conv1_i_7_4_2;
(*   %conv2.i.7.4.2 = zext i8 %conv3.i.6.4.2 to i32 *)
cast v_conv2_i_7_4_2@uint32 v_conv3_i_6_4_2@uint8;
(*   %xor.i.7.4.2 = xor i32 %conv2.i.7.4.2, %mul.i.7.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_4_2 v_conv2_i_7_4_2 v_mul_i_7_4_2;
(*   %conv3.i.7.4.2 = trunc i32 %xor.i.7.4.2 to i8 *)
split tmp_v_xor_i_7_4_2 v_conv3_i_7_4_2 v_xor_i_7_4_2 8;
vpc v_conv3_i_7_4_2@uint8 v_conv3_i_7_4_2@uint32;
(*   %arrayidx45.4.2 = getelementptr inbounds [25 x i8], [25 x i8]* %p0, i64 0, i64 14 *)
(*   store i8 %conv3.i.7.4.2, i8* %arrayidx45.4.2, align 1 *)
mov p0_14 v_conv3_i_7_4_2;
(*   %102 = load i8, i8* %arrayidx47.2, align 1 *)
mov v102 a_2;
(*   %arrayidx51.4.2 = getelementptr inbounds [25 x i8], [25 x i8]* %s, i64 0, i64 14 *)
(*   %103 = load i8, i8* %arrayidx51.4.2, align 1 *)
mov v103 s_14;
(*   %conv.i127.4220.2 = zext i8 %103 to i32 *)
cast v_conv_i127_4220_2@uint32 v103@uint8;
(*   %and.i128.4221.2 = and i32 %conv.i127.4220.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_4221_2 v_conv_i127_4220_2 (0x1)@uint32;
(*   %conv1.i129.4222.2 = zext i8 %102 to i32 *)
cast v_conv1_i129_4222_2@uint32 v102@uint8;
(*   %mul.i130.4223.2 = mul nsw i32 %and.i128.4221.2, %conv1.i129.4222.2 *)
mul v_mul_i130_4223_2 v_and_i128_4221_2 v_conv1_i129_4222_2;
(*   %conv3.i133.4224.2 = trunc i32 %mul.i130.4223.2 to i8 *)
split tmp_v_mul_i130_4223_2 v_conv3_i133_4224_2 v_mul_i130_4223_2 8;
vpc v_conv3_i133_4224_2@uint8 v_conv3_i133_4224_2@uint32;
(*   %conv4.i134.4225.2 = zext i8 %103 to i32 *)
cast v_conv4_i134_4225_2@uint32 v103@uint8;
(*   %shr.i135.4226.2 = ashr i32 %conv4.i134.4225.2, 1 *)
(* You may need to modify here *)
split v_shr_i135_4226_2 tmp_to_be_used v_conv4_i134_4225_2 1;
(*   %conv5.i136.4227.2 = trunc i32 %shr.i135.4226.2 to i8 *)
split tmp_v_shr_i135_4226_2 v_conv5_i136_4227_2 v_shr_i135_4226_2 8;
vpc v_conv5_i136_4227_2@uint8 v_conv5_i136_4227_2@uint32;
(*   %conv6.i137.4228.2 = zext i8 %102 to i32 *)
cast v_conv6_i137_4228_2@uint32 v102@uint8;
(*   %shl.i138.4229.2 = shl i32 %conv6.i137.4228.2, 1 *)
shls discard_161 v_shl_i138_4229_2 v_conv6_i137_4228_2 1;
(*   %conv7.i139.4230.2 = trunc i32 %shl.i138.4229.2 to i8 *)
split tmp_v_shl_i138_4229_2 v_conv7_i139_4230_2 v_shl_i138_4229_2 8;
vpc v_conv7_i139_4230_2@uint8 v_conv7_i139_4230_2@uint32;
(*   %conv.i127.1.4.2 = zext i8 %conv5.i136.4227.2 to i32 *)
cast v_conv_i127_1_4_2@uint32 v_conv5_i136_4227_2@uint8;
(*   %and.i128.1.4.2 = and i32 %conv.i127.1.4.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1_4_2 v_conv_i127_1_4_2 (0x1)@uint32;
(*   %conv1.i129.1.4.2 = zext i8 %conv7.i139.4230.2 to i32 *)
cast v_conv1_i129_1_4_2@uint32 v_conv7_i139_4230_2@uint8;
(*   %mul.i130.1.4.2 = mul nsw i32 %and.i128.1.4.2, %conv1.i129.1.4.2 *)
mul v_mul_i130_1_4_2 v_and_i128_1_4_2 v_conv1_i129_1_4_2;
(*   %conv2.i131.1.4.2 = zext i8 %conv3.i133.4224.2 to i32 *)
cast v_conv2_i131_1_4_2@uint32 v_conv3_i133_4224_2@uint8;
(*   %xor.i132.1.4.2 = xor i32 %conv2.i131.1.4.2, %mul.i130.1.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_1_4_2 v_conv2_i131_1_4_2 v_mul_i130_1_4_2;
(*   %conv3.i133.1.4.2 = trunc i32 %xor.i132.1.4.2 to i8 *)
split tmp_v_xor_i132_1_4_2 v_conv3_i133_1_4_2 v_xor_i132_1_4_2 8;
vpc v_conv3_i133_1_4_2@uint8 v_conv3_i133_1_4_2@uint32;
(*   %conv4.i134.1.4.2 = zext i8 %conv5.i136.4227.2 to i32 *)
cast v_conv4_i134_1_4_2@uint32 v_conv5_i136_4227_2@uint8;
(*   %shr.i135.1.4.2 = ashr i32 %conv4.i134.1.4.2, 1 *)
(* You may need to modify here *)
split v_shr_i135_1_4_2 tmp_to_be_used v_conv4_i134_1_4_2 1;
(*   %conv5.i136.1.4.2 = trunc i32 %shr.i135.1.4.2 to i8 *)
split tmp_v_shr_i135_1_4_2 v_conv5_i136_1_4_2 v_shr_i135_1_4_2 8;
vpc v_conv5_i136_1_4_2@uint8 v_conv5_i136_1_4_2@uint32;
(*   %conv6.i137.1.4.2 = zext i8 %conv7.i139.4230.2 to i32 *)
cast v_conv6_i137_1_4_2@uint32 v_conv7_i139_4230_2@uint8;
(*   %shl.i138.1.4.2 = shl i32 %conv6.i137.1.4.2, 1 *)
shls discard_162 v_shl_i138_1_4_2 v_conv6_i137_1_4_2 1;
(*   %conv7.i139.1.4.2 = trunc i32 %shl.i138.1.4.2 to i8 *)
split tmp_v_shl_i138_1_4_2 v_conv7_i139_1_4_2 v_shl_i138_1_4_2 8;
vpc v_conv7_i139_1_4_2@uint8 v_conv7_i139_1_4_2@uint32;
(*   %conv.i127.2.4.2 = zext i8 %conv5.i136.1.4.2 to i32 *)
cast v_conv_i127_2_4_2@uint32 v_conv5_i136_1_4_2@uint8;
(*   %and.i128.2.4.2 = and i32 %conv.i127.2.4.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_2_4_2 v_conv_i127_2_4_2 (0x1)@uint32;
(*   %conv1.i129.2.4.2 = zext i8 %conv7.i139.1.4.2 to i32 *)
cast v_conv1_i129_2_4_2@uint32 v_conv7_i139_1_4_2@uint8;
(*   %mul.i130.2.4.2 = mul nsw i32 %and.i128.2.4.2, %conv1.i129.2.4.2 *)
mul v_mul_i130_2_4_2 v_and_i128_2_4_2 v_conv1_i129_2_4_2;
(*   %conv2.i131.2.4.2 = zext i8 %conv3.i133.1.4.2 to i32 *)
cast v_conv2_i131_2_4_2@uint32 v_conv3_i133_1_4_2@uint8;
(*   %xor.i132.2.4.2 = xor i32 %conv2.i131.2.4.2, %mul.i130.2.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_2_4_2 v_conv2_i131_2_4_2 v_mul_i130_2_4_2;
(*   %conv3.i133.2.4.2 = trunc i32 %xor.i132.2.4.2 to i8 *)
split tmp_v_xor_i132_2_4_2 v_conv3_i133_2_4_2 v_xor_i132_2_4_2 8;
vpc v_conv3_i133_2_4_2@uint8 v_conv3_i133_2_4_2@uint32;
(*   %conv4.i134.2.4.2 = zext i8 %conv5.i136.1.4.2 to i32 *)
cast v_conv4_i134_2_4_2@uint32 v_conv5_i136_1_4_2@uint8;
(*   %shr.i135.2.4.2 = ashr i32 %conv4.i134.2.4.2, 1 *)
(* You may need to modify here *)
split v_shr_i135_2_4_2 tmp_to_be_used v_conv4_i134_2_4_2 1;
(*   %conv5.i136.2.4.2 = trunc i32 %shr.i135.2.4.2 to i8 *)
split tmp_v_shr_i135_2_4_2 v_conv5_i136_2_4_2 v_shr_i135_2_4_2 8;
vpc v_conv5_i136_2_4_2@uint8 v_conv5_i136_2_4_2@uint32;
(*   %conv6.i137.2.4.2 = zext i8 %conv7.i139.1.4.2 to i32 *)
cast v_conv6_i137_2_4_2@uint32 v_conv7_i139_1_4_2@uint8;
(*   %shl.i138.2.4.2 = shl i32 %conv6.i137.2.4.2, 1 *)
shls discard_163 v_shl_i138_2_4_2 v_conv6_i137_2_4_2 1;
(*   %conv7.i139.2.4.2 = trunc i32 %shl.i138.2.4.2 to i8 *)
split tmp_v_shl_i138_2_4_2 v_conv7_i139_2_4_2 v_shl_i138_2_4_2 8;
vpc v_conv7_i139_2_4_2@uint8 v_conv7_i139_2_4_2@uint32;
(*   %conv.i127.3.4.2 = zext i8 %conv5.i136.2.4.2 to i32 *)
cast v_conv_i127_3_4_2@uint32 v_conv5_i136_2_4_2@uint8;
(*   %and.i128.3.4.2 = and i32 %conv.i127.3.4.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_3_4_2 v_conv_i127_3_4_2 (0x1)@uint32;
(*   %conv1.i129.3.4.2 = zext i8 %conv7.i139.2.4.2 to i32 *)
cast v_conv1_i129_3_4_2@uint32 v_conv7_i139_2_4_2@uint8;
(*   %mul.i130.3.4.2 = mul nsw i32 %and.i128.3.4.2, %conv1.i129.3.4.2 *)
mul v_mul_i130_3_4_2 v_and_i128_3_4_2 v_conv1_i129_3_4_2;
(*   %conv2.i131.3.4.2 = zext i8 %conv3.i133.2.4.2 to i32 *)
cast v_conv2_i131_3_4_2@uint32 v_conv3_i133_2_4_2@uint8;
(*   %xor.i132.3.4.2 = xor i32 %conv2.i131.3.4.2, %mul.i130.3.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_3_4_2 v_conv2_i131_3_4_2 v_mul_i130_3_4_2;
(*   %conv3.i133.3.4.2 = trunc i32 %xor.i132.3.4.2 to i8 *)
split tmp_v_xor_i132_3_4_2 v_conv3_i133_3_4_2 v_xor_i132_3_4_2 8;
vpc v_conv3_i133_3_4_2@uint8 v_conv3_i133_3_4_2@uint32;
(*   %conv4.i134.3.4.2 = zext i8 %conv5.i136.2.4.2 to i32 *)
cast v_conv4_i134_3_4_2@uint32 v_conv5_i136_2_4_2@uint8;
(*   %shr.i135.3.4.2 = ashr i32 %conv4.i134.3.4.2, 1 *)
(* You may need to modify here *)
split v_shr_i135_3_4_2 tmp_to_be_used v_conv4_i134_3_4_2 1;
(*   %conv5.i136.3.4.2 = trunc i32 %shr.i135.3.4.2 to i8 *)
split tmp_v_shr_i135_3_4_2 v_conv5_i136_3_4_2 v_shr_i135_3_4_2 8;
vpc v_conv5_i136_3_4_2@uint8 v_conv5_i136_3_4_2@uint32;
(*   %conv6.i137.3.4.2 = zext i8 %conv7.i139.2.4.2 to i32 *)
cast v_conv6_i137_3_4_2@uint32 v_conv7_i139_2_4_2@uint8;
(*   %shl.i138.3.4.2 = shl i32 %conv6.i137.3.4.2, 1 *)
shls discard_164 v_shl_i138_3_4_2 v_conv6_i137_3_4_2 1;
(*   %conv7.i139.3.4.2 = trunc i32 %shl.i138.3.4.2 to i8 *)
split tmp_v_shl_i138_3_4_2 v_conv7_i139_3_4_2 v_shl_i138_3_4_2 8;
vpc v_conv7_i139_3_4_2@uint8 v_conv7_i139_3_4_2@uint32;
(*   %conv.i127.4.4.2 = zext i8 %conv5.i136.3.4.2 to i32 *)
cast v_conv_i127_4_4_2@uint32 v_conv5_i136_3_4_2@uint8;
(*   %and.i128.4.4.2 = and i32 %conv.i127.4.4.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_4_4_2 v_conv_i127_4_4_2 (0x1)@uint32;
(*   %conv1.i129.4.4.2 = zext i8 %conv7.i139.3.4.2 to i32 *)
cast v_conv1_i129_4_4_2@uint32 v_conv7_i139_3_4_2@uint8;
(*   %mul.i130.4.4.2 = mul nsw i32 %and.i128.4.4.2, %conv1.i129.4.4.2 *)
mul v_mul_i130_4_4_2 v_and_i128_4_4_2 v_conv1_i129_4_4_2;
(*   %conv2.i131.4.4.2 = zext i8 %conv3.i133.3.4.2 to i32 *)
cast v_conv2_i131_4_4_2@uint32 v_conv3_i133_3_4_2@uint8;
(*   %xor.i132.4.4.2 = xor i32 %conv2.i131.4.4.2, %mul.i130.4.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_4_4_2 v_conv2_i131_4_4_2 v_mul_i130_4_4_2;
(*   %conv3.i133.4.4.2 = trunc i32 %xor.i132.4.4.2 to i8 *)
split tmp_v_xor_i132_4_4_2 v_conv3_i133_4_4_2 v_xor_i132_4_4_2 8;
vpc v_conv3_i133_4_4_2@uint8 v_conv3_i133_4_4_2@uint32;
(*   %conv4.i134.4.4.2 = zext i8 %conv5.i136.3.4.2 to i32 *)
cast v_conv4_i134_4_4_2@uint32 v_conv5_i136_3_4_2@uint8;
(*   %shr.i135.4.4.2 = ashr i32 %conv4.i134.4.4.2, 1 *)
(* You may need to modify here *)
split v_shr_i135_4_4_2 tmp_to_be_used v_conv4_i134_4_4_2 1;
(*   %conv5.i136.4.4.2 = trunc i32 %shr.i135.4.4.2 to i8 *)
split tmp_v_shr_i135_4_4_2 v_conv5_i136_4_4_2 v_shr_i135_4_4_2 8;
vpc v_conv5_i136_4_4_2@uint8 v_conv5_i136_4_4_2@uint32;
(*   %conv6.i137.4.4.2 = zext i8 %conv7.i139.3.4.2 to i32 *)
cast v_conv6_i137_4_4_2@uint32 v_conv7_i139_3_4_2@uint8;
(*   %shl.i138.4.4.2 = shl i32 %conv6.i137.4.4.2, 1 *)
shls discard_165 v_shl_i138_4_4_2 v_conv6_i137_4_4_2 1;
(*   %conv7.i139.4.4.2 = trunc i32 %shl.i138.4.4.2 to i8 *)
split tmp_v_shl_i138_4_4_2 v_conv7_i139_4_4_2 v_shl_i138_4_4_2 8;
vpc v_conv7_i139_4_4_2@uint8 v_conv7_i139_4_4_2@uint32;
(*   %conv.i127.5.4.2 = zext i8 %conv5.i136.4.4.2 to i32 *)
cast v_conv_i127_5_4_2@uint32 v_conv5_i136_4_4_2@uint8;
(*   %and.i128.5.4.2 = and i32 %conv.i127.5.4.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_5_4_2 v_conv_i127_5_4_2 (0x1)@uint32;
(*   %conv1.i129.5.4.2 = zext i8 %conv7.i139.4.4.2 to i32 *)
cast v_conv1_i129_5_4_2@uint32 v_conv7_i139_4_4_2@uint8;
(*   %mul.i130.5.4.2 = mul nsw i32 %and.i128.5.4.2, %conv1.i129.5.4.2 *)
mul v_mul_i130_5_4_2 v_and_i128_5_4_2 v_conv1_i129_5_4_2;
(*   %conv2.i131.5.4.2 = zext i8 %conv3.i133.4.4.2 to i32 *)
cast v_conv2_i131_5_4_2@uint32 v_conv3_i133_4_4_2@uint8;
(*   %xor.i132.5.4.2 = xor i32 %conv2.i131.5.4.2, %mul.i130.5.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_5_4_2 v_conv2_i131_5_4_2 v_mul_i130_5_4_2;
(*   %conv3.i133.5.4.2 = trunc i32 %xor.i132.5.4.2 to i8 *)
split tmp_v_xor_i132_5_4_2 v_conv3_i133_5_4_2 v_xor_i132_5_4_2 8;
vpc v_conv3_i133_5_4_2@uint8 v_conv3_i133_5_4_2@uint32;
(*   %conv4.i134.5.4.2 = zext i8 %conv5.i136.4.4.2 to i32 *)
cast v_conv4_i134_5_4_2@uint32 v_conv5_i136_4_4_2@uint8;
(*   %shr.i135.5.4.2 = ashr i32 %conv4.i134.5.4.2, 1 *)
(* You may need to modify here *)
split v_shr_i135_5_4_2 tmp_to_be_used v_conv4_i134_5_4_2 1;
(*   %conv5.i136.5.4.2 = trunc i32 %shr.i135.5.4.2 to i8 *)
split tmp_v_shr_i135_5_4_2 v_conv5_i136_5_4_2 v_shr_i135_5_4_2 8;
vpc v_conv5_i136_5_4_2@uint8 v_conv5_i136_5_4_2@uint32;
(*   %conv6.i137.5.4.2 = zext i8 %conv7.i139.4.4.2 to i32 *)
cast v_conv6_i137_5_4_2@uint32 v_conv7_i139_4_4_2@uint8;
(*   %shl.i138.5.4.2 = shl i32 %conv6.i137.5.4.2, 1 *)
shls discard_166 v_shl_i138_5_4_2 v_conv6_i137_5_4_2 1;
(*   %conv7.i139.5.4.2 = trunc i32 %shl.i138.5.4.2 to i8 *)
split tmp_v_shl_i138_5_4_2 v_conv7_i139_5_4_2 v_shl_i138_5_4_2 8;
vpc v_conv7_i139_5_4_2@uint8 v_conv7_i139_5_4_2@uint32;
(*   %conv.i127.6.4.2 = zext i8 %conv5.i136.5.4.2 to i32 *)
cast v_conv_i127_6_4_2@uint32 v_conv5_i136_5_4_2@uint8;
(*   %and.i128.6.4.2 = and i32 %conv.i127.6.4.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_6_4_2 v_conv_i127_6_4_2 (0x1)@uint32;
(*   %conv1.i129.6.4.2 = zext i8 %conv7.i139.5.4.2 to i32 *)
cast v_conv1_i129_6_4_2@uint32 v_conv7_i139_5_4_2@uint8;
(*   %mul.i130.6.4.2 = mul nsw i32 %and.i128.6.4.2, %conv1.i129.6.4.2 *)
mul v_mul_i130_6_4_2 v_and_i128_6_4_2 v_conv1_i129_6_4_2;
(*   %conv2.i131.6.4.2 = zext i8 %conv3.i133.5.4.2 to i32 *)
cast v_conv2_i131_6_4_2@uint32 v_conv3_i133_5_4_2@uint8;
(*   %xor.i132.6.4.2 = xor i32 %conv2.i131.6.4.2, %mul.i130.6.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_6_4_2 v_conv2_i131_6_4_2 v_mul_i130_6_4_2;
(*   %conv3.i133.6.4.2 = trunc i32 %xor.i132.6.4.2 to i8 *)
split tmp_v_xor_i132_6_4_2 v_conv3_i133_6_4_2 v_xor_i132_6_4_2 8;
vpc v_conv3_i133_6_4_2@uint8 v_conv3_i133_6_4_2@uint32;
(*   %conv4.i134.6.4.2 = zext i8 %conv5.i136.5.4.2 to i32 *)
cast v_conv4_i134_6_4_2@uint32 v_conv5_i136_5_4_2@uint8;
(*   %shr.i135.6.4.2 = ashr i32 %conv4.i134.6.4.2, 1 *)
(* You may need to modify here *)
split v_shr_i135_6_4_2 tmp_to_be_used v_conv4_i134_6_4_2 1;
(*   %conv5.i136.6.4.2 = trunc i32 %shr.i135.6.4.2 to i8 *)
split tmp_v_shr_i135_6_4_2 v_conv5_i136_6_4_2 v_shr_i135_6_4_2 8;
vpc v_conv5_i136_6_4_2@uint8 v_conv5_i136_6_4_2@uint32;
(*   %conv6.i137.6.4.2 = zext i8 %conv7.i139.5.4.2 to i32 *)
cast v_conv6_i137_6_4_2@uint32 v_conv7_i139_5_4_2@uint8;
(*   %shl.i138.6.4.2 = shl i32 %conv6.i137.6.4.2, 1 *)
shls discard_167 v_shl_i138_6_4_2 v_conv6_i137_6_4_2 1;
(*   %conv7.i139.6.4.2 = trunc i32 %shl.i138.6.4.2 to i8 *)
split tmp_v_shl_i138_6_4_2 v_conv7_i139_6_4_2 v_shl_i138_6_4_2 8;
vpc v_conv7_i139_6_4_2@uint8 v_conv7_i139_6_4_2@uint32;
(*   %conv.i127.7.4.2 = zext i8 %conv5.i136.6.4.2 to i32 *)
cast v_conv_i127_7_4_2@uint32 v_conv5_i136_6_4_2@uint8;
(*   %and.i128.7.4.2 = and i32 %conv.i127.7.4.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_7_4_2 v_conv_i127_7_4_2 (0x1)@uint32;
(*   %conv1.i129.7.4.2 = zext i8 %conv7.i139.6.4.2 to i32 *)
cast v_conv1_i129_7_4_2@uint32 v_conv7_i139_6_4_2@uint8;
(*   %mul.i130.7.4.2 = mul nsw i32 %and.i128.7.4.2, %conv1.i129.7.4.2 *)
mul v_mul_i130_7_4_2 v_and_i128_7_4_2 v_conv1_i129_7_4_2;
(*   %conv2.i131.7.4.2 = zext i8 %conv3.i133.6.4.2 to i32 *)
cast v_conv2_i131_7_4_2@uint32 v_conv3_i133_6_4_2@uint8;
(*   %xor.i132.7.4.2 = xor i32 %conv2.i131.7.4.2, %mul.i130.7.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_7_4_2 v_conv2_i131_7_4_2 v_mul_i130_7_4_2;
(*   %conv3.i133.7.4.2 = trunc i32 %xor.i132.7.4.2 to i8 *)
split tmp_v_xor_i132_7_4_2 v_conv3_i133_7_4_2 v_xor_i132_7_4_2 8;
vpc v_conv3_i133_7_4_2@uint8 v_conv3_i133_7_4_2@uint32;
(*   %arrayidx56.4.2 = getelementptr inbounds [25 x i8], [25 x i8]* %p1, i64 0, i64 14 *)
(*   store i8 %conv3.i133.7.4.2, i8* %arrayidx56.4.2, align 1 *)
mov p1_14 v_conv3_i133_7_4_2;
(*   %arrayidx60.4.2 = getelementptr inbounds [25 x i8], [25 x i8]* %p0, i64 0, i64 14 *)
(*   %104 = load i8, i8* %arrayidx60.4.2, align 1 *)
mov v104 p0_14;
(*   %conv61.4.2 = zext i8 %104 to i32 *)
cast v_conv61_4_2@uint32 v104@uint8;
(*   %arrayidx65.4.2 = getelementptr inbounds [25 x i8], [25 x i8]* %p1, i64 0, i64 14 *)
(*   %105 = load i8, i8* %arrayidx65.4.2, align 1 *)
mov v105 p1_14;
(*   %conv66.4.2 = zext i8 %105 to i32 *)
cast v_conv66_4_2@uint32 v105@uint8;
(*   %xor67.4.2 = xor i32 %conv61.4.2, %conv66.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor67_4_2 v_conv61_4_2 v_conv66_4_2;
(*   %conv68.4.2 = trunc i32 %xor67.4.2 to i8 *)
split tmp_v_xor67_4_2 v_conv68_4_2 v_xor67_4_2 8;
vpc v_conv68_4_2@uint8 v_conv68_4_2@uint32;
(*   %arrayidx72.4.2 = getelementptr inbounds [25 x i8], [25 x i8]* %z, i64 0, i64 14 *)
(*   store i8 %conv68.4.2, i8* %arrayidx72.4.2, align 1 *)
mov z_14 v_conv68_4_2;
(*   %arrayidx34.3 = getelementptr inbounds i8, i8* %a, i64 3 *)
(*   %arrayidx47.3 = getelementptr inbounds i8, i8* %a, i64 3 *)
(*   %106 = load i8, i8* %b, align 1 *)
mov v106 b_0;
(*   %conv.3694 = zext i8 %106 to i32 *)
cast v_conv_3694@uint32 v106@uint8;
(*   %arrayidx26.3696 = getelementptr inbounds i8, i8* %r, i64 15 *)
(*   %107 = load i8, i8* %arrayidx26.3696, align 1 *)
mov v107 r_15;
(*   %conv27.3697 = zext i8 %107 to i32 *)
cast v_conv27_3697@uint32 v107@uint8;
(*   %xor.3698 = xor i32 %conv.3694, %conv27.3697 *)
(* You may need to modify here *)
xor uint32 v_xor_3698 v_conv_3694 v_conv27_3697;
(*   %conv28.3699 = trunc i32 %xor.3698 to i8 *)
split tmp_v_xor_3698 v_conv28_3699 v_xor_3698 8;
vpc v_conv28_3699@uint8 v_conv28_3699@uint32;
(*   %arrayidx32.3701 = getelementptr inbounds [25 x i8], [25 x i8]* %s, i64 0, i64 15 *)
(*   store i8 %conv28.3699, i8* %arrayidx32.3701, align 1 *)
mov s_15 v_conv28_3699;
(*   %108 = load i8, i8* %arrayidx34.3, align 1 *)
mov v108 a_3;
(*   %conv35.3702 = zext i8 %108 to i32 *)
cast v_conv35_3702@uint32 v108@uint8;
(*   %xor36.3703 = xor i32 %conv35.3702, 1 *)
(* You may need to modify here *)
xor uint32 v_xor36_3703 v_conv35_3702 (0x1)@uint32;
(*   %conv37.3704 = trunc i32 %xor36.3703 to i8 *)
split tmp_v_xor36_3703 v_conv37_3704 v_xor36_3703 8;
vpc v_conv37_3704@uint8 v_conv37_3704@uint32;
(*   %arrayidx41.3706 = getelementptr inbounds i8, i8* %r, i64 15 *)
(*   %109 = load i8, i8* %arrayidx41.3706, align 1 *)
mov v109 r_15;
(*   %conv.i.3708 = zext i8 %109 to i32 *)
cast v_conv_i_3708@uint32 v109@uint8;
(*   %and.i.3709 = and i32 %conv.i.3708, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3709 v_conv_i_3708 (0x1)@uint32;
(*   %conv1.i.3710 = zext i8 %conv37.3704 to i32 *)
cast v_conv1_i_3710@uint32 v_conv37_3704@uint8;
(*   %mul.i.3711 = mul nsw i32 %and.i.3709, %conv1.i.3710 *)
mul v_mul_i_3711 v_and_i_3709 v_conv1_i_3710;
(*   %conv3.i.3712 = trunc i32 %mul.i.3711 to i8 *)
split tmp_v_mul_i_3711 v_conv3_i_3712 v_mul_i_3711 8;
vpc v_conv3_i_3712@uint8 v_conv3_i_3712@uint32;
(*   %conv4.i.3713 = zext i8 %109 to i32 *)
cast v_conv4_i_3713@uint32 v109@uint8;
(*   %shr.i.3714 = ashr i32 %conv4.i.3713, 1 *)
(* You may need to modify here *)
split v_shr_i_3714 tmp_to_be_used v_conv4_i_3713 1;
(*   %conv5.i.3715 = trunc i32 %shr.i.3714 to i8 *)
split tmp_v_shr_i_3714 v_conv5_i_3715 v_shr_i_3714 8;
vpc v_conv5_i_3715@uint8 v_conv5_i_3715@uint32;
(*   %conv6.i.3716 = zext i8 %conv37.3704 to i32 *)
cast v_conv6_i_3716@uint32 v_conv37_3704@uint8;
(*   %shl.i.3717 = shl i32 %conv6.i.3716, 1 *)
shls discard_168 v_shl_i_3717 v_conv6_i_3716 1;
(*   %conv7.i.3718 = trunc i32 %shl.i.3717 to i8 *)
split tmp_v_shl_i_3717 v_conv7_i_3718 v_shl_i_3717 8;
vpc v_conv7_i_3718@uint8 v_conv7_i_3718@uint32;
(*   %conv.i.1.3719 = zext i8 %conv5.i.3715 to i32 *)
cast v_conv_i_1_3719@uint32 v_conv5_i_3715@uint8;
(*   %and.i.1.3720 = and i32 %conv.i.1.3719, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_3720 v_conv_i_1_3719 (0x1)@uint32;
(*   %conv1.i.1.3721 = zext i8 %conv7.i.3718 to i32 *)
cast v_conv1_i_1_3721@uint32 v_conv7_i_3718@uint8;
(*   %mul.i.1.3722 = mul nsw i32 %and.i.1.3720, %conv1.i.1.3721 *)
mul v_mul_i_1_3722 v_and_i_1_3720 v_conv1_i_1_3721;
(*   %conv2.i.1.3723 = zext i8 %conv3.i.3712 to i32 *)
cast v_conv2_i_1_3723@uint32 v_conv3_i_3712@uint8;
(*   %xor.i.1.3724 = xor i32 %conv2.i.1.3723, %mul.i.1.3722 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_3724 v_conv2_i_1_3723 v_mul_i_1_3722;
(*   %conv3.i.1.3725 = trunc i32 %xor.i.1.3724 to i8 *)
split tmp_v_xor_i_1_3724 v_conv3_i_1_3725 v_xor_i_1_3724 8;
vpc v_conv3_i_1_3725@uint8 v_conv3_i_1_3725@uint32;
(*   %conv4.i.1.3726 = zext i8 %conv5.i.3715 to i32 *)
cast v_conv4_i_1_3726@uint32 v_conv5_i_3715@uint8;
(*   %shr.i.1.3727 = ashr i32 %conv4.i.1.3726, 1 *)
(* You may need to modify here *)
split v_shr_i_1_3727 tmp_to_be_used v_conv4_i_1_3726 1;
(*   %conv5.i.1.3728 = trunc i32 %shr.i.1.3727 to i8 *)
split tmp_v_shr_i_1_3727 v_conv5_i_1_3728 v_shr_i_1_3727 8;
vpc v_conv5_i_1_3728@uint8 v_conv5_i_1_3728@uint32;
(*   %conv6.i.1.3729 = zext i8 %conv7.i.3718 to i32 *)
cast v_conv6_i_1_3729@uint32 v_conv7_i_3718@uint8;
(*   %shl.i.1.3730 = shl i32 %conv6.i.1.3729, 1 *)
shls discard_169 v_shl_i_1_3730 v_conv6_i_1_3729 1;
(*   %conv7.i.1.3731 = trunc i32 %shl.i.1.3730 to i8 *)
split tmp_v_shl_i_1_3730 v_conv7_i_1_3731 v_shl_i_1_3730 8;
vpc v_conv7_i_1_3731@uint8 v_conv7_i_1_3731@uint32;
(*   %conv.i.2.3732 = zext i8 %conv5.i.1.3728 to i32 *)
cast v_conv_i_2_3732@uint32 v_conv5_i_1_3728@uint8;
(*   %and.i.2.3733 = and i32 %conv.i.2.3732, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_3733 v_conv_i_2_3732 (0x1)@uint32;
(*   %conv1.i.2.3734 = zext i8 %conv7.i.1.3731 to i32 *)
cast v_conv1_i_2_3734@uint32 v_conv7_i_1_3731@uint8;
(*   %mul.i.2.3735 = mul nsw i32 %and.i.2.3733, %conv1.i.2.3734 *)
mul v_mul_i_2_3735 v_and_i_2_3733 v_conv1_i_2_3734;
(*   %conv2.i.2.3736 = zext i8 %conv3.i.1.3725 to i32 *)
cast v_conv2_i_2_3736@uint32 v_conv3_i_1_3725@uint8;
(*   %xor.i.2.3737 = xor i32 %conv2.i.2.3736, %mul.i.2.3735 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_3737 v_conv2_i_2_3736 v_mul_i_2_3735;
(*   %conv3.i.2.3738 = trunc i32 %xor.i.2.3737 to i8 *)
split tmp_v_xor_i_2_3737 v_conv3_i_2_3738 v_xor_i_2_3737 8;
vpc v_conv3_i_2_3738@uint8 v_conv3_i_2_3738@uint32;
(*   %conv4.i.2.3739 = zext i8 %conv5.i.1.3728 to i32 *)
cast v_conv4_i_2_3739@uint32 v_conv5_i_1_3728@uint8;
(*   %shr.i.2.3740 = ashr i32 %conv4.i.2.3739, 1 *)
(* You may need to modify here *)
split v_shr_i_2_3740 tmp_to_be_used v_conv4_i_2_3739 1;
(*   %conv5.i.2.3741 = trunc i32 %shr.i.2.3740 to i8 *)
split tmp_v_shr_i_2_3740 v_conv5_i_2_3741 v_shr_i_2_3740 8;
vpc v_conv5_i_2_3741@uint8 v_conv5_i_2_3741@uint32;
(*   %conv6.i.2.3742 = zext i8 %conv7.i.1.3731 to i32 *)
cast v_conv6_i_2_3742@uint32 v_conv7_i_1_3731@uint8;
(*   %shl.i.2.3743 = shl i32 %conv6.i.2.3742, 1 *)
shls discard_170 v_shl_i_2_3743 v_conv6_i_2_3742 1;
(*   %conv7.i.2.3744 = trunc i32 %shl.i.2.3743 to i8 *)
split tmp_v_shl_i_2_3743 v_conv7_i_2_3744 v_shl_i_2_3743 8;
vpc v_conv7_i_2_3744@uint8 v_conv7_i_2_3744@uint32;
(*   %conv.i.3.3745 = zext i8 %conv5.i.2.3741 to i32 *)
cast v_conv_i_3_3745@uint32 v_conv5_i_2_3741@uint8;
(*   %and.i.3.3746 = and i32 %conv.i.3.3745, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_3746 v_conv_i_3_3745 (0x1)@uint32;
(*   %conv1.i.3.3747 = zext i8 %conv7.i.2.3744 to i32 *)
cast v_conv1_i_3_3747@uint32 v_conv7_i_2_3744@uint8;
(*   %mul.i.3.3748 = mul nsw i32 %and.i.3.3746, %conv1.i.3.3747 *)
mul v_mul_i_3_3748 v_and_i_3_3746 v_conv1_i_3_3747;
(*   %conv2.i.3.3749 = zext i8 %conv3.i.2.3738 to i32 *)
cast v_conv2_i_3_3749@uint32 v_conv3_i_2_3738@uint8;
(*   %xor.i.3.3750 = xor i32 %conv2.i.3.3749, %mul.i.3.3748 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_3750 v_conv2_i_3_3749 v_mul_i_3_3748;
(*   %conv3.i.3.3751 = trunc i32 %xor.i.3.3750 to i8 *)
split tmp_v_xor_i_3_3750 v_conv3_i_3_3751 v_xor_i_3_3750 8;
vpc v_conv3_i_3_3751@uint8 v_conv3_i_3_3751@uint32;
(*   %conv4.i.3.3752 = zext i8 %conv5.i.2.3741 to i32 *)
cast v_conv4_i_3_3752@uint32 v_conv5_i_2_3741@uint8;
(*   %shr.i.3.3753 = ashr i32 %conv4.i.3.3752, 1 *)
(* You may need to modify here *)
split v_shr_i_3_3753 tmp_to_be_used v_conv4_i_3_3752 1;
(*   %conv5.i.3.3754 = trunc i32 %shr.i.3.3753 to i8 *)
split tmp_v_shr_i_3_3753 v_conv5_i_3_3754 v_shr_i_3_3753 8;
vpc v_conv5_i_3_3754@uint8 v_conv5_i_3_3754@uint32;
(*   %conv6.i.3.3755 = zext i8 %conv7.i.2.3744 to i32 *)
cast v_conv6_i_3_3755@uint32 v_conv7_i_2_3744@uint8;
(*   %shl.i.3.3756 = shl i32 %conv6.i.3.3755, 1 *)
shls discard_171 v_shl_i_3_3756 v_conv6_i_3_3755 1;
(*   %conv7.i.3.3757 = trunc i32 %shl.i.3.3756 to i8 *)
split tmp_v_shl_i_3_3756 v_conv7_i_3_3757 v_shl_i_3_3756 8;
vpc v_conv7_i_3_3757@uint8 v_conv7_i_3_3757@uint32;
(*   %conv.i.4.3758 = zext i8 %conv5.i.3.3754 to i32 *)
cast v_conv_i_4_3758@uint32 v_conv5_i_3_3754@uint8;
(*   %and.i.4.3759 = and i32 %conv.i.4.3758, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_3759 v_conv_i_4_3758 (0x1)@uint32;
(*   %conv1.i.4.3760 = zext i8 %conv7.i.3.3757 to i32 *)
cast v_conv1_i_4_3760@uint32 v_conv7_i_3_3757@uint8;
(*   %mul.i.4.3761 = mul nsw i32 %and.i.4.3759, %conv1.i.4.3760 *)
mul v_mul_i_4_3761 v_and_i_4_3759 v_conv1_i_4_3760;
(*   %conv2.i.4.3762 = zext i8 %conv3.i.3.3751 to i32 *)
cast v_conv2_i_4_3762@uint32 v_conv3_i_3_3751@uint8;
(*   %xor.i.4.3763 = xor i32 %conv2.i.4.3762, %mul.i.4.3761 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_3763 v_conv2_i_4_3762 v_mul_i_4_3761;
(*   %conv3.i.4.3764 = trunc i32 %xor.i.4.3763 to i8 *)
split tmp_v_xor_i_4_3763 v_conv3_i_4_3764 v_xor_i_4_3763 8;
vpc v_conv3_i_4_3764@uint8 v_conv3_i_4_3764@uint32;
(*   %conv4.i.4.3765 = zext i8 %conv5.i.3.3754 to i32 *)
cast v_conv4_i_4_3765@uint32 v_conv5_i_3_3754@uint8;
(*   %shr.i.4.3766 = ashr i32 %conv4.i.4.3765, 1 *)
(* You may need to modify here *)
split v_shr_i_4_3766 tmp_to_be_used v_conv4_i_4_3765 1;
(*   %conv5.i.4.3767 = trunc i32 %shr.i.4.3766 to i8 *)
split tmp_v_shr_i_4_3766 v_conv5_i_4_3767 v_shr_i_4_3766 8;
vpc v_conv5_i_4_3767@uint8 v_conv5_i_4_3767@uint32;
(*   %conv6.i.4.3768 = zext i8 %conv7.i.3.3757 to i32 *)
cast v_conv6_i_4_3768@uint32 v_conv7_i_3_3757@uint8;
(*   %shl.i.4.3769 = shl i32 %conv6.i.4.3768, 1 *)
shls discard_172 v_shl_i_4_3769 v_conv6_i_4_3768 1;
(*   %conv7.i.4.3770 = trunc i32 %shl.i.4.3769 to i8 *)
split tmp_v_shl_i_4_3769 v_conv7_i_4_3770 v_shl_i_4_3769 8;
vpc v_conv7_i_4_3770@uint8 v_conv7_i_4_3770@uint32;
(*   %conv.i.5.3771 = zext i8 %conv5.i.4.3767 to i32 *)
cast v_conv_i_5_3771@uint32 v_conv5_i_4_3767@uint8;
(*   %and.i.5.3772 = and i32 %conv.i.5.3771, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_3772 v_conv_i_5_3771 (0x1)@uint32;
(*   %conv1.i.5.3773 = zext i8 %conv7.i.4.3770 to i32 *)
cast v_conv1_i_5_3773@uint32 v_conv7_i_4_3770@uint8;
(*   %mul.i.5.3774 = mul nsw i32 %and.i.5.3772, %conv1.i.5.3773 *)
mul v_mul_i_5_3774 v_and_i_5_3772 v_conv1_i_5_3773;
(*   %conv2.i.5.3775 = zext i8 %conv3.i.4.3764 to i32 *)
cast v_conv2_i_5_3775@uint32 v_conv3_i_4_3764@uint8;
(*   %xor.i.5.3776 = xor i32 %conv2.i.5.3775, %mul.i.5.3774 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_3776 v_conv2_i_5_3775 v_mul_i_5_3774;
(*   %conv3.i.5.3777 = trunc i32 %xor.i.5.3776 to i8 *)
split tmp_v_xor_i_5_3776 v_conv3_i_5_3777 v_xor_i_5_3776 8;
vpc v_conv3_i_5_3777@uint8 v_conv3_i_5_3777@uint32;
(*   %conv4.i.5.3778 = zext i8 %conv5.i.4.3767 to i32 *)
cast v_conv4_i_5_3778@uint32 v_conv5_i_4_3767@uint8;
(*   %shr.i.5.3779 = ashr i32 %conv4.i.5.3778, 1 *)
(* You may need to modify here *)
split v_shr_i_5_3779 tmp_to_be_used v_conv4_i_5_3778 1;
(*   %conv5.i.5.3780 = trunc i32 %shr.i.5.3779 to i8 *)
split tmp_v_shr_i_5_3779 v_conv5_i_5_3780 v_shr_i_5_3779 8;
vpc v_conv5_i_5_3780@uint8 v_conv5_i_5_3780@uint32;
(*   %conv6.i.5.3781 = zext i8 %conv7.i.4.3770 to i32 *)
cast v_conv6_i_5_3781@uint32 v_conv7_i_4_3770@uint8;
(*   %shl.i.5.3782 = shl i32 %conv6.i.5.3781, 1 *)
shls discard_173 v_shl_i_5_3782 v_conv6_i_5_3781 1;
(*   %conv7.i.5.3783 = trunc i32 %shl.i.5.3782 to i8 *)
split tmp_v_shl_i_5_3782 v_conv7_i_5_3783 v_shl_i_5_3782 8;
vpc v_conv7_i_5_3783@uint8 v_conv7_i_5_3783@uint32;
(*   %conv.i.6.3784 = zext i8 %conv5.i.5.3780 to i32 *)
cast v_conv_i_6_3784@uint32 v_conv5_i_5_3780@uint8;
(*   %and.i.6.3785 = and i32 %conv.i.6.3784, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_3785 v_conv_i_6_3784 (0x1)@uint32;
(*   %conv1.i.6.3786 = zext i8 %conv7.i.5.3783 to i32 *)
cast v_conv1_i_6_3786@uint32 v_conv7_i_5_3783@uint8;
(*   %mul.i.6.3787 = mul nsw i32 %and.i.6.3785, %conv1.i.6.3786 *)
mul v_mul_i_6_3787 v_and_i_6_3785 v_conv1_i_6_3786;
(*   %conv2.i.6.3788 = zext i8 %conv3.i.5.3777 to i32 *)
cast v_conv2_i_6_3788@uint32 v_conv3_i_5_3777@uint8;
(*   %xor.i.6.3789 = xor i32 %conv2.i.6.3788, %mul.i.6.3787 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_3789 v_conv2_i_6_3788 v_mul_i_6_3787;
(*   %conv3.i.6.3790 = trunc i32 %xor.i.6.3789 to i8 *)
split tmp_v_xor_i_6_3789 v_conv3_i_6_3790 v_xor_i_6_3789 8;
vpc v_conv3_i_6_3790@uint8 v_conv3_i_6_3790@uint32;
(*   %conv4.i.6.3791 = zext i8 %conv5.i.5.3780 to i32 *)
cast v_conv4_i_6_3791@uint32 v_conv5_i_5_3780@uint8;
(*   %shr.i.6.3792 = ashr i32 %conv4.i.6.3791, 1 *)
(* You may need to modify here *)
split v_shr_i_6_3792 tmp_to_be_used v_conv4_i_6_3791 1;
(*   %conv5.i.6.3793 = trunc i32 %shr.i.6.3792 to i8 *)
split tmp_v_shr_i_6_3792 v_conv5_i_6_3793 v_shr_i_6_3792 8;
vpc v_conv5_i_6_3793@uint8 v_conv5_i_6_3793@uint32;
(*   %conv6.i.6.3794 = zext i8 %conv7.i.5.3783 to i32 *)
cast v_conv6_i_6_3794@uint32 v_conv7_i_5_3783@uint8;
(*   %shl.i.6.3795 = shl i32 %conv6.i.6.3794, 1 *)
shls discard_174 v_shl_i_6_3795 v_conv6_i_6_3794 1;
(*   %conv7.i.6.3796 = trunc i32 %shl.i.6.3795 to i8 *)
split tmp_v_shl_i_6_3795 v_conv7_i_6_3796 v_shl_i_6_3795 8;
vpc v_conv7_i_6_3796@uint8 v_conv7_i_6_3796@uint32;
(*   %conv.i.7.3797 = zext i8 %conv5.i.6.3793 to i32 *)
cast v_conv_i_7_3797@uint32 v_conv5_i_6_3793@uint8;
(*   %and.i.7.3798 = and i32 %conv.i.7.3797, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_3798 v_conv_i_7_3797 (0x1)@uint32;
(*   %conv1.i.7.3799 = zext i8 %conv7.i.6.3796 to i32 *)
cast v_conv1_i_7_3799@uint32 v_conv7_i_6_3796@uint8;
(*   %mul.i.7.3800 = mul nsw i32 %and.i.7.3798, %conv1.i.7.3799 *)
mul v_mul_i_7_3800 v_and_i_7_3798 v_conv1_i_7_3799;
(*   %conv2.i.7.3801 = zext i8 %conv3.i.6.3790 to i32 *)
cast v_conv2_i_7_3801@uint32 v_conv3_i_6_3790@uint8;
(*   %xor.i.7.3802 = xor i32 %conv2.i.7.3801, %mul.i.7.3800 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_3802 v_conv2_i_7_3801 v_mul_i_7_3800;
(*   %conv3.i.7.3803 = trunc i32 %xor.i.7.3802 to i8 *)
split tmp_v_xor_i_7_3802 v_conv3_i_7_3803 v_xor_i_7_3802 8;
vpc v_conv3_i_7_3803@uint8 v_conv3_i_7_3803@uint32;
(*   %arrayidx45.3807 = getelementptr inbounds [25 x i8], [25 x i8]* %p0, i64 0, i64 15 *)
(*   store i8 %conv3.i.7.3803, i8* %arrayidx45.3807, align 1 *)
mov p0_15 v_conv3_i_7_3803;
(*   %110 = load i8, i8* %arrayidx47.3, align 1 *)
mov v110 a_3;
(*   %arrayidx51.3809 = getelementptr inbounds [25 x i8], [25 x i8]* %s, i64 0, i64 15 *)
(*   %111 = load i8, i8* %arrayidx51.3809, align 1 *)
mov v111 s_15;
(*   %conv.i127.3811 = zext i8 %111 to i32 *)
cast v_conv_i127_3811@uint32 v111@uint8;
(*   %and.i128.3812 = and i32 %conv.i127.3811, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_3812 v_conv_i127_3811 (0x1)@uint32;
(*   %conv1.i129.3813 = zext i8 %110 to i32 *)
cast v_conv1_i129_3813@uint32 v110@uint8;
(*   %mul.i130.3814 = mul nsw i32 %and.i128.3812, %conv1.i129.3813 *)
mul v_mul_i130_3814 v_and_i128_3812 v_conv1_i129_3813;
(*   %conv3.i133.3815 = trunc i32 %mul.i130.3814 to i8 *)
split tmp_v_mul_i130_3814 v_conv3_i133_3815 v_mul_i130_3814 8;
vpc v_conv3_i133_3815@uint8 v_conv3_i133_3815@uint32;
(*   %conv4.i134.3816 = zext i8 %111 to i32 *)
cast v_conv4_i134_3816@uint32 v111@uint8;
(*   %shr.i135.3817 = ashr i32 %conv4.i134.3816, 1 *)
(* You may need to modify here *)
split v_shr_i135_3817 tmp_to_be_used v_conv4_i134_3816 1;
(*   %conv5.i136.3818 = trunc i32 %shr.i135.3817 to i8 *)
split tmp_v_shr_i135_3817 v_conv5_i136_3818 v_shr_i135_3817 8;
vpc v_conv5_i136_3818@uint8 v_conv5_i136_3818@uint32;
(*   %conv6.i137.3819 = zext i8 %110 to i32 *)
cast v_conv6_i137_3819@uint32 v110@uint8;
(*   %shl.i138.3820 = shl i32 %conv6.i137.3819, 1 *)
shls discard_175 v_shl_i138_3820 v_conv6_i137_3819 1;
(*   %conv7.i139.3821 = trunc i32 %shl.i138.3820 to i8 *)
split tmp_v_shl_i138_3820 v_conv7_i139_3821 v_shl_i138_3820 8;
vpc v_conv7_i139_3821@uint8 v_conv7_i139_3821@uint32;
(*   %conv.i127.1.3822 = zext i8 %conv5.i136.3818 to i32 *)
cast v_conv_i127_1_3822@uint32 v_conv5_i136_3818@uint8;
(*   %and.i128.1.3823 = and i32 %conv.i127.1.3822, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1_3823 v_conv_i127_1_3822 (0x1)@uint32;
(*   %conv1.i129.1.3824 = zext i8 %conv7.i139.3821 to i32 *)
cast v_conv1_i129_1_3824@uint32 v_conv7_i139_3821@uint8;
(*   %mul.i130.1.3825 = mul nsw i32 %and.i128.1.3823, %conv1.i129.1.3824 *)
mul v_mul_i130_1_3825 v_and_i128_1_3823 v_conv1_i129_1_3824;
(*   %conv2.i131.1.3826 = zext i8 %conv3.i133.3815 to i32 *)
cast v_conv2_i131_1_3826@uint32 v_conv3_i133_3815@uint8;
(*   %xor.i132.1.3827 = xor i32 %conv2.i131.1.3826, %mul.i130.1.3825 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_1_3827 v_conv2_i131_1_3826 v_mul_i130_1_3825;
(*   %conv3.i133.1.3828 = trunc i32 %xor.i132.1.3827 to i8 *)
split tmp_v_xor_i132_1_3827 v_conv3_i133_1_3828 v_xor_i132_1_3827 8;
vpc v_conv3_i133_1_3828@uint8 v_conv3_i133_1_3828@uint32;
(*   %conv4.i134.1.3829 = zext i8 %conv5.i136.3818 to i32 *)
cast v_conv4_i134_1_3829@uint32 v_conv5_i136_3818@uint8;
(*   %shr.i135.1.3830 = ashr i32 %conv4.i134.1.3829, 1 *)
(* You may need to modify here *)
split v_shr_i135_1_3830 tmp_to_be_used v_conv4_i134_1_3829 1;
(*   %conv5.i136.1.3831 = trunc i32 %shr.i135.1.3830 to i8 *)
split tmp_v_shr_i135_1_3830 v_conv5_i136_1_3831 v_shr_i135_1_3830 8;
vpc v_conv5_i136_1_3831@uint8 v_conv5_i136_1_3831@uint32;
(*   %conv6.i137.1.3832 = zext i8 %conv7.i139.3821 to i32 *)
cast v_conv6_i137_1_3832@uint32 v_conv7_i139_3821@uint8;
(*   %shl.i138.1.3833 = shl i32 %conv6.i137.1.3832, 1 *)
shls discard_176 v_shl_i138_1_3833 v_conv6_i137_1_3832 1;
(*   %conv7.i139.1.3834 = trunc i32 %shl.i138.1.3833 to i8 *)
split tmp_v_shl_i138_1_3833 v_conv7_i139_1_3834 v_shl_i138_1_3833 8;
vpc v_conv7_i139_1_3834@uint8 v_conv7_i139_1_3834@uint32;
(*   %conv.i127.2.3835 = zext i8 %conv5.i136.1.3831 to i32 *)
cast v_conv_i127_2_3835@uint32 v_conv5_i136_1_3831@uint8;
(*   %and.i128.2.3836 = and i32 %conv.i127.2.3835, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_2_3836 v_conv_i127_2_3835 (0x1)@uint32;
(*   %conv1.i129.2.3837 = zext i8 %conv7.i139.1.3834 to i32 *)
cast v_conv1_i129_2_3837@uint32 v_conv7_i139_1_3834@uint8;
(*   %mul.i130.2.3838 = mul nsw i32 %and.i128.2.3836, %conv1.i129.2.3837 *)
mul v_mul_i130_2_3838 v_and_i128_2_3836 v_conv1_i129_2_3837;
(*   %conv2.i131.2.3839 = zext i8 %conv3.i133.1.3828 to i32 *)
cast v_conv2_i131_2_3839@uint32 v_conv3_i133_1_3828@uint8;
(*   %xor.i132.2.3840 = xor i32 %conv2.i131.2.3839, %mul.i130.2.3838 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_2_3840 v_conv2_i131_2_3839 v_mul_i130_2_3838;
(*   %conv3.i133.2.3841 = trunc i32 %xor.i132.2.3840 to i8 *)
split tmp_v_xor_i132_2_3840 v_conv3_i133_2_3841 v_xor_i132_2_3840 8;
vpc v_conv3_i133_2_3841@uint8 v_conv3_i133_2_3841@uint32;
(*   %conv4.i134.2.3842 = zext i8 %conv5.i136.1.3831 to i32 *)
cast v_conv4_i134_2_3842@uint32 v_conv5_i136_1_3831@uint8;
(*   %shr.i135.2.3843 = ashr i32 %conv4.i134.2.3842, 1 *)
(* You may need to modify here *)
split v_shr_i135_2_3843 tmp_to_be_used v_conv4_i134_2_3842 1;
(*   %conv5.i136.2.3844 = trunc i32 %shr.i135.2.3843 to i8 *)
split tmp_v_shr_i135_2_3843 v_conv5_i136_2_3844 v_shr_i135_2_3843 8;
vpc v_conv5_i136_2_3844@uint8 v_conv5_i136_2_3844@uint32;
(*   %conv6.i137.2.3845 = zext i8 %conv7.i139.1.3834 to i32 *)
cast v_conv6_i137_2_3845@uint32 v_conv7_i139_1_3834@uint8;
(*   %shl.i138.2.3846 = shl i32 %conv6.i137.2.3845, 1 *)
shls discard_177 v_shl_i138_2_3846 v_conv6_i137_2_3845 1;
(*   %conv7.i139.2.3847 = trunc i32 %shl.i138.2.3846 to i8 *)
split tmp_v_shl_i138_2_3846 v_conv7_i139_2_3847 v_shl_i138_2_3846 8;
vpc v_conv7_i139_2_3847@uint8 v_conv7_i139_2_3847@uint32;
(*   %conv.i127.3.3848 = zext i8 %conv5.i136.2.3844 to i32 *)
cast v_conv_i127_3_3848@uint32 v_conv5_i136_2_3844@uint8;
(*   %and.i128.3.3849 = and i32 %conv.i127.3.3848, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_3_3849 v_conv_i127_3_3848 (0x1)@uint32;
(*   %conv1.i129.3.3850 = zext i8 %conv7.i139.2.3847 to i32 *)
cast v_conv1_i129_3_3850@uint32 v_conv7_i139_2_3847@uint8;
(*   %mul.i130.3.3851 = mul nsw i32 %and.i128.3.3849, %conv1.i129.3.3850 *)
mul v_mul_i130_3_3851 v_and_i128_3_3849 v_conv1_i129_3_3850;
(*   %conv2.i131.3.3852 = zext i8 %conv3.i133.2.3841 to i32 *)
cast v_conv2_i131_3_3852@uint32 v_conv3_i133_2_3841@uint8;
(*   %xor.i132.3.3853 = xor i32 %conv2.i131.3.3852, %mul.i130.3.3851 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_3_3853 v_conv2_i131_3_3852 v_mul_i130_3_3851;
(*   %conv3.i133.3.3854 = trunc i32 %xor.i132.3.3853 to i8 *)
split tmp_v_xor_i132_3_3853 v_conv3_i133_3_3854 v_xor_i132_3_3853 8;
vpc v_conv3_i133_3_3854@uint8 v_conv3_i133_3_3854@uint32;
(*   %conv4.i134.3.3855 = zext i8 %conv5.i136.2.3844 to i32 *)
cast v_conv4_i134_3_3855@uint32 v_conv5_i136_2_3844@uint8;
(*   %shr.i135.3.3856 = ashr i32 %conv4.i134.3.3855, 1 *)
(* You may need to modify here *)
split v_shr_i135_3_3856 tmp_to_be_used v_conv4_i134_3_3855 1;
(*   %conv5.i136.3.3857 = trunc i32 %shr.i135.3.3856 to i8 *)
split tmp_v_shr_i135_3_3856 v_conv5_i136_3_3857 v_shr_i135_3_3856 8;
vpc v_conv5_i136_3_3857@uint8 v_conv5_i136_3_3857@uint32;
(*   %conv6.i137.3.3858 = zext i8 %conv7.i139.2.3847 to i32 *)
cast v_conv6_i137_3_3858@uint32 v_conv7_i139_2_3847@uint8;
(*   %shl.i138.3.3859 = shl i32 %conv6.i137.3.3858, 1 *)
shls discard_178 v_shl_i138_3_3859 v_conv6_i137_3_3858 1;
(*   %conv7.i139.3.3860 = trunc i32 %shl.i138.3.3859 to i8 *)
split tmp_v_shl_i138_3_3859 v_conv7_i139_3_3860 v_shl_i138_3_3859 8;
vpc v_conv7_i139_3_3860@uint8 v_conv7_i139_3_3860@uint32;
(*   %conv.i127.4.3861 = zext i8 %conv5.i136.3.3857 to i32 *)
cast v_conv_i127_4_3861@uint32 v_conv5_i136_3_3857@uint8;
(*   %and.i128.4.3862 = and i32 %conv.i127.4.3861, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_4_3862 v_conv_i127_4_3861 (0x1)@uint32;
(*   %conv1.i129.4.3863 = zext i8 %conv7.i139.3.3860 to i32 *)
cast v_conv1_i129_4_3863@uint32 v_conv7_i139_3_3860@uint8;
(*   %mul.i130.4.3864 = mul nsw i32 %and.i128.4.3862, %conv1.i129.4.3863 *)
mul v_mul_i130_4_3864 v_and_i128_4_3862 v_conv1_i129_4_3863;
(*   %conv2.i131.4.3865 = zext i8 %conv3.i133.3.3854 to i32 *)
cast v_conv2_i131_4_3865@uint32 v_conv3_i133_3_3854@uint8;
(*   %xor.i132.4.3866 = xor i32 %conv2.i131.4.3865, %mul.i130.4.3864 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_4_3866 v_conv2_i131_4_3865 v_mul_i130_4_3864;
(*   %conv3.i133.4.3867 = trunc i32 %xor.i132.4.3866 to i8 *)
split tmp_v_xor_i132_4_3866 v_conv3_i133_4_3867 v_xor_i132_4_3866 8;
vpc v_conv3_i133_4_3867@uint8 v_conv3_i133_4_3867@uint32;
(*   %conv4.i134.4.3868 = zext i8 %conv5.i136.3.3857 to i32 *)
cast v_conv4_i134_4_3868@uint32 v_conv5_i136_3_3857@uint8;
(*   %shr.i135.4.3869 = ashr i32 %conv4.i134.4.3868, 1 *)
(* You may need to modify here *)
split v_shr_i135_4_3869 tmp_to_be_used v_conv4_i134_4_3868 1;
(*   %conv5.i136.4.3870 = trunc i32 %shr.i135.4.3869 to i8 *)
split tmp_v_shr_i135_4_3869 v_conv5_i136_4_3870 v_shr_i135_4_3869 8;
vpc v_conv5_i136_4_3870@uint8 v_conv5_i136_4_3870@uint32;
(*   %conv6.i137.4.3871 = zext i8 %conv7.i139.3.3860 to i32 *)
cast v_conv6_i137_4_3871@uint32 v_conv7_i139_3_3860@uint8;
(*   %shl.i138.4.3872 = shl i32 %conv6.i137.4.3871, 1 *)
shls discard_179 v_shl_i138_4_3872 v_conv6_i137_4_3871 1;
(*   %conv7.i139.4.3873 = trunc i32 %shl.i138.4.3872 to i8 *)
split tmp_v_shl_i138_4_3872 v_conv7_i139_4_3873 v_shl_i138_4_3872 8;
vpc v_conv7_i139_4_3873@uint8 v_conv7_i139_4_3873@uint32;
(*   %conv.i127.5.3874 = zext i8 %conv5.i136.4.3870 to i32 *)
cast v_conv_i127_5_3874@uint32 v_conv5_i136_4_3870@uint8;
(*   %and.i128.5.3875 = and i32 %conv.i127.5.3874, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_5_3875 v_conv_i127_5_3874 (0x1)@uint32;
(*   %conv1.i129.5.3876 = zext i8 %conv7.i139.4.3873 to i32 *)
cast v_conv1_i129_5_3876@uint32 v_conv7_i139_4_3873@uint8;
(*   %mul.i130.5.3877 = mul nsw i32 %and.i128.5.3875, %conv1.i129.5.3876 *)
mul v_mul_i130_5_3877 v_and_i128_5_3875 v_conv1_i129_5_3876;
(*   %conv2.i131.5.3878 = zext i8 %conv3.i133.4.3867 to i32 *)
cast v_conv2_i131_5_3878@uint32 v_conv3_i133_4_3867@uint8;
(*   %xor.i132.5.3879 = xor i32 %conv2.i131.5.3878, %mul.i130.5.3877 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_5_3879 v_conv2_i131_5_3878 v_mul_i130_5_3877;
(*   %conv3.i133.5.3880 = trunc i32 %xor.i132.5.3879 to i8 *)
split tmp_v_xor_i132_5_3879 v_conv3_i133_5_3880 v_xor_i132_5_3879 8;
vpc v_conv3_i133_5_3880@uint8 v_conv3_i133_5_3880@uint32;
(*   %conv4.i134.5.3881 = zext i8 %conv5.i136.4.3870 to i32 *)
cast v_conv4_i134_5_3881@uint32 v_conv5_i136_4_3870@uint8;
(*   %shr.i135.5.3882 = ashr i32 %conv4.i134.5.3881, 1 *)
(* You may need to modify here *)
split v_shr_i135_5_3882 tmp_to_be_used v_conv4_i134_5_3881 1;
(*   %conv5.i136.5.3883 = trunc i32 %shr.i135.5.3882 to i8 *)
split tmp_v_shr_i135_5_3882 v_conv5_i136_5_3883 v_shr_i135_5_3882 8;
vpc v_conv5_i136_5_3883@uint8 v_conv5_i136_5_3883@uint32;
(*   %conv6.i137.5.3884 = zext i8 %conv7.i139.4.3873 to i32 *)
cast v_conv6_i137_5_3884@uint32 v_conv7_i139_4_3873@uint8;
(*   %shl.i138.5.3885 = shl i32 %conv6.i137.5.3884, 1 *)
shls discard_180 v_shl_i138_5_3885 v_conv6_i137_5_3884 1;
(*   %conv7.i139.5.3886 = trunc i32 %shl.i138.5.3885 to i8 *)
split tmp_v_shl_i138_5_3885 v_conv7_i139_5_3886 v_shl_i138_5_3885 8;
vpc v_conv7_i139_5_3886@uint8 v_conv7_i139_5_3886@uint32;
(*   %conv.i127.6.3887 = zext i8 %conv5.i136.5.3883 to i32 *)
cast v_conv_i127_6_3887@uint32 v_conv5_i136_5_3883@uint8;
(*   %and.i128.6.3888 = and i32 %conv.i127.6.3887, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_6_3888 v_conv_i127_6_3887 (0x1)@uint32;
(*   %conv1.i129.6.3889 = zext i8 %conv7.i139.5.3886 to i32 *)
cast v_conv1_i129_6_3889@uint32 v_conv7_i139_5_3886@uint8;
(*   %mul.i130.6.3890 = mul nsw i32 %and.i128.6.3888, %conv1.i129.6.3889 *)
mul v_mul_i130_6_3890 v_and_i128_6_3888 v_conv1_i129_6_3889;
(*   %conv2.i131.6.3891 = zext i8 %conv3.i133.5.3880 to i32 *)
cast v_conv2_i131_6_3891@uint32 v_conv3_i133_5_3880@uint8;
(*   %xor.i132.6.3892 = xor i32 %conv2.i131.6.3891, %mul.i130.6.3890 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_6_3892 v_conv2_i131_6_3891 v_mul_i130_6_3890;
(*   %conv3.i133.6.3893 = trunc i32 %xor.i132.6.3892 to i8 *)
split tmp_v_xor_i132_6_3892 v_conv3_i133_6_3893 v_xor_i132_6_3892 8;
vpc v_conv3_i133_6_3893@uint8 v_conv3_i133_6_3893@uint32;
(*   %conv4.i134.6.3894 = zext i8 %conv5.i136.5.3883 to i32 *)
cast v_conv4_i134_6_3894@uint32 v_conv5_i136_5_3883@uint8;
(*   %shr.i135.6.3895 = ashr i32 %conv4.i134.6.3894, 1 *)
(* You may need to modify here *)
split v_shr_i135_6_3895 tmp_to_be_used v_conv4_i134_6_3894 1;
(*   %conv5.i136.6.3896 = trunc i32 %shr.i135.6.3895 to i8 *)
split tmp_v_shr_i135_6_3895 v_conv5_i136_6_3896 v_shr_i135_6_3895 8;
vpc v_conv5_i136_6_3896@uint8 v_conv5_i136_6_3896@uint32;
(*   %conv6.i137.6.3897 = zext i8 %conv7.i139.5.3886 to i32 *)
cast v_conv6_i137_6_3897@uint32 v_conv7_i139_5_3886@uint8;
(*   %shl.i138.6.3898 = shl i32 %conv6.i137.6.3897, 1 *)
shls discard_181 v_shl_i138_6_3898 v_conv6_i137_6_3897 1;
(*   %conv7.i139.6.3899 = trunc i32 %shl.i138.6.3898 to i8 *)
split tmp_v_shl_i138_6_3898 v_conv7_i139_6_3899 v_shl_i138_6_3898 8;
vpc v_conv7_i139_6_3899@uint8 v_conv7_i139_6_3899@uint32;
(*   %conv.i127.7.3900 = zext i8 %conv5.i136.6.3896 to i32 *)
cast v_conv_i127_7_3900@uint32 v_conv5_i136_6_3896@uint8;
(*   %and.i128.7.3901 = and i32 %conv.i127.7.3900, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_7_3901 v_conv_i127_7_3900 (0x1)@uint32;
(*   %conv1.i129.7.3902 = zext i8 %conv7.i139.6.3899 to i32 *)
cast v_conv1_i129_7_3902@uint32 v_conv7_i139_6_3899@uint8;
(*   %mul.i130.7.3903 = mul nsw i32 %and.i128.7.3901, %conv1.i129.7.3902 *)
mul v_mul_i130_7_3903 v_and_i128_7_3901 v_conv1_i129_7_3902;
(*   %conv2.i131.7.3904 = zext i8 %conv3.i133.6.3893 to i32 *)
cast v_conv2_i131_7_3904@uint32 v_conv3_i133_6_3893@uint8;
(*   %xor.i132.7.3905 = xor i32 %conv2.i131.7.3904, %mul.i130.7.3903 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_7_3905 v_conv2_i131_7_3904 v_mul_i130_7_3903;
(*   %conv3.i133.7.3906 = trunc i32 %xor.i132.7.3905 to i8 *)
split tmp_v_xor_i132_7_3905 v_conv3_i133_7_3906 v_xor_i132_7_3905 8;
vpc v_conv3_i133_7_3906@uint8 v_conv3_i133_7_3906@uint32;
(*   %arrayidx56.3910 = getelementptr inbounds [25 x i8], [25 x i8]* %p1, i64 0, i64 15 *)
(*   store i8 %conv3.i133.7.3906, i8* %arrayidx56.3910, align 1 *)
mov p1_15 v_conv3_i133_7_3906;
(*   %arrayidx60.3912 = getelementptr inbounds [25 x i8], [25 x i8]* %p0, i64 0, i64 15 *)
(*   %112 = load i8, i8* %arrayidx60.3912, align 1 *)
mov v112 p0_15;
(*   %conv61.3913 = zext i8 %112 to i32 *)
cast v_conv61_3913@uint32 v112@uint8;
(*   %arrayidx65.3915 = getelementptr inbounds [25 x i8], [25 x i8]* %p1, i64 0, i64 15 *)
(*   %113 = load i8, i8* %arrayidx65.3915, align 1 *)
mov v113 p1_15;
(*   %conv66.3916 = zext i8 %113 to i32 *)
cast v_conv66_3916@uint32 v113@uint8;
(*   %xor67.3917 = xor i32 %conv61.3913, %conv66.3916 *)
(* You may need to modify here *)
xor uint32 v_xor67_3917 v_conv61_3913 v_conv66_3916;
(*   %conv68.3918 = trunc i32 %xor67.3917 to i8 *)
split tmp_v_xor67_3917 v_conv68_3918 v_xor67_3917 8;
vpc v_conv68_3918@uint8 v_conv68_3918@uint32;
(*   %arrayidx72.3920 = getelementptr inbounds [25 x i8], [25 x i8]* %z, i64 0, i64 15 *)
(*   store i8 %conv68.3918, i8* %arrayidx72.3920, align 1 *)
mov z_15 v_conv68_3918;
(*   %arrayidx22.1.3 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %114 = load i8, i8* %arrayidx22.1.3, align 1 *)
mov v114 b_1;
(*   %conv.1.3 = zext i8 %114 to i32 *)
cast v_conv_1_3@uint32 v114@uint8;
(*   %arrayidx26.1.3 = getelementptr inbounds i8, i8* %r, i64 16 *)
(*   %115 = load i8, i8* %arrayidx26.1.3, align 1 *)
mov v115 r_16;
(*   %conv27.1.3 = zext i8 %115 to i32 *)
cast v_conv27_1_3@uint32 v115@uint8;
(*   %xor.1.3 = xor i32 %conv.1.3, %conv27.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_1_3 v_conv_1_3 v_conv27_1_3;
(*   %conv28.1.3 = trunc i32 %xor.1.3 to i8 *)
split tmp_v_xor_1_3 v_conv28_1_3 v_xor_1_3 8;
vpc v_conv28_1_3@uint8 v_conv28_1_3@uint32;
(*   %arrayidx32.1.3 = getelementptr inbounds [25 x i8], [25 x i8]* %s, i64 0, i64 16 *)
(*   store i8 %conv28.1.3, i8* %arrayidx32.1.3, align 1 *)
mov s_16 v_conv28_1_3;
(*   %116 = load i8, i8* %arrayidx34.3, align 1 *)
mov v116 a_3;
(*   %conv35.1.3 = zext i8 %116 to i32 *)
cast v_conv35_1_3@uint32 v116@uint8;
(*   %xor36.1.3 = xor i32 %conv35.1.3, 1 *)
(* You may need to modify here *)
xor uint32 v_xor36_1_3 v_conv35_1_3 (0x1)@uint32;
(*   %conv37.1.3 = trunc i32 %xor36.1.3 to i8 *)
split tmp_v_xor36_1_3 v_conv37_1_3 v_xor36_1_3 8;
vpc v_conv37_1_3@uint8 v_conv37_1_3@uint32;
(*   %arrayidx41.1.3 = getelementptr inbounds i8, i8* %r, i64 16 *)
(*   %117 = load i8, i8* %arrayidx41.1.3, align 1 *)
mov v117 r_16;
(*   %conv.i.1143.3 = zext i8 %117 to i32 *)
cast v_conv_i_1143_3@uint32 v117@uint8;
(*   %and.i.1144.3 = and i32 %conv.i.1143.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1144_3 v_conv_i_1143_3 (0x1)@uint32;
(*   %conv1.i.1145.3 = zext i8 %conv37.1.3 to i32 *)
cast v_conv1_i_1145_3@uint32 v_conv37_1_3@uint8;
(*   %mul.i.1146.3 = mul nsw i32 %and.i.1144.3, %conv1.i.1145.3 *)
mul v_mul_i_1146_3 v_and_i_1144_3 v_conv1_i_1145_3;
(*   %conv3.i.1147.3 = trunc i32 %mul.i.1146.3 to i8 *)
split tmp_v_mul_i_1146_3 v_conv3_i_1147_3 v_mul_i_1146_3 8;
vpc v_conv3_i_1147_3@uint8 v_conv3_i_1147_3@uint32;
(*   %conv4.i.1148.3 = zext i8 %117 to i32 *)
cast v_conv4_i_1148_3@uint32 v117@uint8;
(*   %shr.i.1149.3 = ashr i32 %conv4.i.1148.3, 1 *)
(* You may need to modify here *)
split v_shr_i_1149_3 tmp_to_be_used v_conv4_i_1148_3 1;
(*   %conv5.i.1150.3 = trunc i32 %shr.i.1149.3 to i8 *)
split tmp_v_shr_i_1149_3 v_conv5_i_1150_3 v_shr_i_1149_3 8;
vpc v_conv5_i_1150_3@uint8 v_conv5_i_1150_3@uint32;
(*   %conv6.i.1151.3 = zext i8 %conv37.1.3 to i32 *)
cast v_conv6_i_1151_3@uint32 v_conv37_1_3@uint8;
(*   %shl.i.1152.3 = shl i32 %conv6.i.1151.3, 1 *)
shls discard_182 v_shl_i_1152_3 v_conv6_i_1151_3 1;
(*   %conv7.i.1153.3 = trunc i32 %shl.i.1152.3 to i8 *)
split tmp_v_shl_i_1152_3 v_conv7_i_1153_3 v_shl_i_1152_3 8;
vpc v_conv7_i_1153_3@uint8 v_conv7_i_1153_3@uint32;
(*   %conv.i.1.1.3 = zext i8 %conv5.i.1150.3 to i32 *)
cast v_conv_i_1_1_3@uint32 v_conv5_i_1150_3@uint8;
(*   %and.i.1.1.3 = and i32 %conv.i.1.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_1_3 v_conv_i_1_1_3 (0x1)@uint32;
(*   %conv1.i.1.1.3 = zext i8 %conv7.i.1153.3 to i32 *)
cast v_conv1_i_1_1_3@uint32 v_conv7_i_1153_3@uint8;
(*   %mul.i.1.1.3 = mul nsw i32 %and.i.1.1.3, %conv1.i.1.1.3 *)
mul v_mul_i_1_1_3 v_and_i_1_1_3 v_conv1_i_1_1_3;
(*   %conv2.i.1.1.3 = zext i8 %conv3.i.1147.3 to i32 *)
cast v_conv2_i_1_1_3@uint32 v_conv3_i_1147_3@uint8;
(*   %xor.i.1.1.3 = xor i32 %conv2.i.1.1.3, %mul.i.1.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_1_3 v_conv2_i_1_1_3 v_mul_i_1_1_3;
(*   %conv3.i.1.1.3 = trunc i32 %xor.i.1.1.3 to i8 *)
split tmp_v_xor_i_1_1_3 v_conv3_i_1_1_3 v_xor_i_1_1_3 8;
vpc v_conv3_i_1_1_3@uint8 v_conv3_i_1_1_3@uint32;
(*   %conv4.i.1.1.3 = zext i8 %conv5.i.1150.3 to i32 *)
cast v_conv4_i_1_1_3@uint32 v_conv5_i_1150_3@uint8;
(*   %shr.i.1.1.3 = ashr i32 %conv4.i.1.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i_1_1_3 tmp_to_be_used v_conv4_i_1_1_3 1;
(*   %conv5.i.1.1.3 = trunc i32 %shr.i.1.1.3 to i8 *)
split tmp_v_shr_i_1_1_3 v_conv5_i_1_1_3 v_shr_i_1_1_3 8;
vpc v_conv5_i_1_1_3@uint8 v_conv5_i_1_1_3@uint32;
(*   %conv6.i.1.1.3 = zext i8 %conv7.i.1153.3 to i32 *)
cast v_conv6_i_1_1_3@uint32 v_conv7_i_1153_3@uint8;
(*   %shl.i.1.1.3 = shl i32 %conv6.i.1.1.3, 1 *)
shls discard_183 v_shl_i_1_1_3 v_conv6_i_1_1_3 1;
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
shls discard_184 v_shl_i_2_1_3 v_conv6_i_2_1_3 1;
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
shls discard_185 v_shl_i_3_1_3 v_conv6_i_3_1_3 1;
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
shls discard_186 v_shl_i_4_1_3 v_conv6_i_4_1_3 1;
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
shls discard_187 v_shl_i_5_1_3 v_conv6_i_5_1_3 1;
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
shls discard_188 v_shl_i_6_1_3 v_conv6_i_6_1_3 1;
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
(*   %arrayidx45.1.3 = getelementptr inbounds [25 x i8], [25 x i8]* %p0, i64 0, i64 16 *)
(*   store i8 %conv3.i.7.1.3, i8* %arrayidx45.1.3, align 1 *)
mov p0_16 v_conv3_i_7_1_3;
(*   %118 = load i8, i8* %arrayidx47.3, align 1 *)
mov v118 a_3;
(*   %arrayidx51.1.3 = getelementptr inbounds [25 x i8], [25 x i8]* %s, i64 0, i64 16 *)
(*   %119 = load i8, i8* %arrayidx51.1.3, align 1 *)
mov v119 s_16;
(*   %conv.i127.1154.3 = zext i8 %119 to i32 *)
cast v_conv_i127_1154_3@uint32 v119@uint8;
(*   %and.i128.1155.3 = and i32 %conv.i127.1154.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1155_3 v_conv_i127_1154_3 (0x1)@uint32;
(*   %conv1.i129.1156.3 = zext i8 %118 to i32 *)
cast v_conv1_i129_1156_3@uint32 v118@uint8;
(*   %mul.i130.1157.3 = mul nsw i32 %and.i128.1155.3, %conv1.i129.1156.3 *)
mul v_mul_i130_1157_3 v_and_i128_1155_3 v_conv1_i129_1156_3;
(*   %conv3.i133.1158.3 = trunc i32 %mul.i130.1157.3 to i8 *)
split tmp_v_mul_i130_1157_3 v_conv3_i133_1158_3 v_mul_i130_1157_3 8;
vpc v_conv3_i133_1158_3@uint8 v_conv3_i133_1158_3@uint32;
(*   %conv4.i134.1159.3 = zext i8 %119 to i32 *)
cast v_conv4_i134_1159_3@uint32 v119@uint8;
(*   %shr.i135.1160.3 = ashr i32 %conv4.i134.1159.3, 1 *)
(* You may need to modify here *)
split v_shr_i135_1160_3 tmp_to_be_used v_conv4_i134_1159_3 1;
(*   %conv5.i136.1161.3 = trunc i32 %shr.i135.1160.3 to i8 *)
split tmp_v_shr_i135_1160_3 v_conv5_i136_1161_3 v_shr_i135_1160_3 8;
vpc v_conv5_i136_1161_3@uint8 v_conv5_i136_1161_3@uint32;
(*   %conv6.i137.1162.3 = zext i8 %118 to i32 *)
cast v_conv6_i137_1162_3@uint32 v118@uint8;
(*   %shl.i138.1163.3 = shl i32 %conv6.i137.1162.3, 1 *)
shls discard_189 v_shl_i138_1163_3 v_conv6_i137_1162_3 1;
(*   %conv7.i139.1164.3 = trunc i32 %shl.i138.1163.3 to i8 *)
split tmp_v_shl_i138_1163_3 v_conv7_i139_1164_3 v_shl_i138_1163_3 8;
vpc v_conv7_i139_1164_3@uint8 v_conv7_i139_1164_3@uint32;
(*   %conv.i127.1.1.3 = zext i8 %conv5.i136.1161.3 to i32 *)
cast v_conv_i127_1_1_3@uint32 v_conv5_i136_1161_3@uint8;
(*   %and.i128.1.1.3 = and i32 %conv.i127.1.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1_1_3 v_conv_i127_1_1_3 (0x1)@uint32;
(*   %conv1.i129.1.1.3 = zext i8 %conv7.i139.1164.3 to i32 *)
cast v_conv1_i129_1_1_3@uint32 v_conv7_i139_1164_3@uint8;
(*   %mul.i130.1.1.3 = mul nsw i32 %and.i128.1.1.3, %conv1.i129.1.1.3 *)
mul v_mul_i130_1_1_3 v_and_i128_1_1_3 v_conv1_i129_1_1_3;
(*   %conv2.i131.1.1.3 = zext i8 %conv3.i133.1158.3 to i32 *)
cast v_conv2_i131_1_1_3@uint32 v_conv3_i133_1158_3@uint8;
(*   %xor.i132.1.1.3 = xor i32 %conv2.i131.1.1.3, %mul.i130.1.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_1_1_3 v_conv2_i131_1_1_3 v_mul_i130_1_1_3;
(*   %conv3.i133.1.1.3 = trunc i32 %xor.i132.1.1.3 to i8 *)
split tmp_v_xor_i132_1_1_3 v_conv3_i133_1_1_3 v_xor_i132_1_1_3 8;
vpc v_conv3_i133_1_1_3@uint8 v_conv3_i133_1_1_3@uint32;
(*   %conv4.i134.1.1.3 = zext i8 %conv5.i136.1161.3 to i32 *)
cast v_conv4_i134_1_1_3@uint32 v_conv5_i136_1161_3@uint8;
(*   %shr.i135.1.1.3 = ashr i32 %conv4.i134.1.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i135_1_1_3 tmp_to_be_used v_conv4_i134_1_1_3 1;
(*   %conv5.i136.1.1.3 = trunc i32 %shr.i135.1.1.3 to i8 *)
split tmp_v_shr_i135_1_1_3 v_conv5_i136_1_1_3 v_shr_i135_1_1_3 8;
vpc v_conv5_i136_1_1_3@uint8 v_conv5_i136_1_1_3@uint32;
(*   %conv6.i137.1.1.3 = zext i8 %conv7.i139.1164.3 to i32 *)
cast v_conv6_i137_1_1_3@uint32 v_conv7_i139_1164_3@uint8;
(*   %shl.i138.1.1.3 = shl i32 %conv6.i137.1.1.3, 1 *)
shls discard_190 v_shl_i138_1_1_3 v_conv6_i137_1_1_3 1;
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
shls discard_191 v_shl_i138_2_1_3 v_conv6_i137_2_1_3 1;
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
shls discard_192 v_shl_i138_3_1_3 v_conv6_i137_3_1_3 1;
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
shls discard_193 v_shl_i138_4_1_3 v_conv6_i137_4_1_3 1;
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
shls discard_194 v_shl_i138_5_1_3 v_conv6_i137_5_1_3 1;
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
shls discard_195 v_shl_i138_6_1_3 v_conv6_i137_6_1_3 1;
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
(*   %arrayidx56.1.3 = getelementptr inbounds [25 x i8], [25 x i8]* %p1, i64 0, i64 16 *)
(*   store i8 %conv3.i133.7.1.3, i8* %arrayidx56.1.3, align 1 *)
mov p1_16 v_conv3_i133_7_1_3;
(*   %arrayidx60.1.3 = getelementptr inbounds [25 x i8], [25 x i8]* %p0, i64 0, i64 16 *)
(*   %120 = load i8, i8* %arrayidx60.1.3, align 1 *)
mov v120 p0_16;
(*   %conv61.1.3 = zext i8 %120 to i32 *)
cast v_conv61_1_3@uint32 v120@uint8;
(*   %arrayidx65.1.3 = getelementptr inbounds [25 x i8], [25 x i8]* %p1, i64 0, i64 16 *)
(*   %121 = load i8, i8* %arrayidx65.1.3, align 1 *)
mov v121 p1_16;
(*   %conv66.1.3 = zext i8 %121 to i32 *)
cast v_conv66_1_3@uint32 v121@uint8;
(*   %xor67.1.3 = xor i32 %conv61.1.3, %conv66.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor67_1_3 v_conv61_1_3 v_conv66_1_3;
(*   %conv68.1.3 = trunc i32 %xor67.1.3 to i8 *)
split tmp_v_xor67_1_3 v_conv68_1_3 v_xor67_1_3 8;
vpc v_conv68_1_3@uint8 v_conv68_1_3@uint32;
(*   %arrayidx72.1.3 = getelementptr inbounds [25 x i8], [25 x i8]* %z, i64 0, i64 16 *)
(*   store i8 %conv68.1.3, i8* %arrayidx72.1.3, align 1 *)
mov z_16 v_conv68_1_3;
(*   %arrayidx22.2.3 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %122 = load i8, i8* %arrayidx22.2.3, align 1 *)
mov v122 b_2;
(*   %conv.2.3 = zext i8 %122 to i32 *)
cast v_conv_2_3@uint32 v122@uint8;
(*   %arrayidx26.2.3 = getelementptr inbounds i8, i8* %r, i64 17 *)
(*   %123 = load i8, i8* %arrayidx26.2.3, align 1 *)
mov v123 r_17;
(*   %conv27.2.3 = zext i8 %123 to i32 *)
cast v_conv27_2_3@uint32 v123@uint8;
(*   %xor.2.3 = xor i32 %conv.2.3, %conv27.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_2_3 v_conv_2_3 v_conv27_2_3;
(*   %conv28.2.3 = trunc i32 %xor.2.3 to i8 *)
split tmp_v_xor_2_3 v_conv28_2_3 v_xor_2_3 8;
vpc v_conv28_2_3@uint8 v_conv28_2_3@uint32;
(*   %arrayidx32.2.3 = getelementptr inbounds [25 x i8], [25 x i8]* %s, i64 0, i64 17 *)
(*   store i8 %conv28.2.3, i8* %arrayidx32.2.3, align 1 *)
mov s_17 v_conv28_2_3;
(*   %124 = load i8, i8* %arrayidx34.3, align 1 *)
mov v124 a_3;
(*   %conv35.2.3 = zext i8 %124 to i32 *)
cast v_conv35_2_3@uint32 v124@uint8;
(*   %xor36.2.3 = xor i32 %conv35.2.3, 1 *)
(* You may need to modify here *)
xor uint32 v_xor36_2_3 v_conv35_2_3 (0x1)@uint32;
(*   %conv37.2.3 = trunc i32 %xor36.2.3 to i8 *)
split tmp_v_xor36_2_3 v_conv37_2_3 v_xor36_2_3 8;
vpc v_conv37_2_3@uint8 v_conv37_2_3@uint32;
(*   %arrayidx41.2.3 = getelementptr inbounds i8, i8* %r, i64 17 *)
(*   %125 = load i8, i8* %arrayidx41.2.3, align 1 *)
mov v125 r_17;
(*   %conv.i.2165.3 = zext i8 %125 to i32 *)
cast v_conv_i_2165_3@uint32 v125@uint8;
(*   %and.i.2166.3 = and i32 %conv.i.2165.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2166_3 v_conv_i_2165_3 (0x1)@uint32;
(*   %conv1.i.2167.3 = zext i8 %conv37.2.3 to i32 *)
cast v_conv1_i_2167_3@uint32 v_conv37_2_3@uint8;
(*   %mul.i.2168.3 = mul nsw i32 %and.i.2166.3, %conv1.i.2167.3 *)
mul v_mul_i_2168_3 v_and_i_2166_3 v_conv1_i_2167_3;
(*   %conv3.i.2169.3 = trunc i32 %mul.i.2168.3 to i8 *)
split tmp_v_mul_i_2168_3 v_conv3_i_2169_3 v_mul_i_2168_3 8;
vpc v_conv3_i_2169_3@uint8 v_conv3_i_2169_3@uint32;
(*   %conv4.i.2170.3 = zext i8 %125 to i32 *)
cast v_conv4_i_2170_3@uint32 v125@uint8;
(*   %shr.i.2171.3 = ashr i32 %conv4.i.2170.3, 1 *)
(* You may need to modify here *)
split v_shr_i_2171_3 tmp_to_be_used v_conv4_i_2170_3 1;
(*   %conv5.i.2172.3 = trunc i32 %shr.i.2171.3 to i8 *)
split tmp_v_shr_i_2171_3 v_conv5_i_2172_3 v_shr_i_2171_3 8;
vpc v_conv5_i_2172_3@uint8 v_conv5_i_2172_3@uint32;
(*   %conv6.i.2173.3 = zext i8 %conv37.2.3 to i32 *)
cast v_conv6_i_2173_3@uint32 v_conv37_2_3@uint8;
(*   %shl.i.2174.3 = shl i32 %conv6.i.2173.3, 1 *)
shls discard_196 v_shl_i_2174_3 v_conv6_i_2173_3 1;
(*   %conv7.i.2175.3 = trunc i32 %shl.i.2174.3 to i8 *)
split tmp_v_shl_i_2174_3 v_conv7_i_2175_3 v_shl_i_2174_3 8;
vpc v_conv7_i_2175_3@uint8 v_conv7_i_2175_3@uint32;
(*   %conv.i.1.2.3 = zext i8 %conv5.i.2172.3 to i32 *)
cast v_conv_i_1_2_3@uint32 v_conv5_i_2172_3@uint8;
(*   %and.i.1.2.3 = and i32 %conv.i.1.2.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_2_3 v_conv_i_1_2_3 (0x1)@uint32;
(*   %conv1.i.1.2.3 = zext i8 %conv7.i.2175.3 to i32 *)
cast v_conv1_i_1_2_3@uint32 v_conv7_i_2175_3@uint8;
(*   %mul.i.1.2.3 = mul nsw i32 %and.i.1.2.3, %conv1.i.1.2.3 *)
mul v_mul_i_1_2_3 v_and_i_1_2_3 v_conv1_i_1_2_3;
(*   %conv2.i.1.2.3 = zext i8 %conv3.i.2169.3 to i32 *)
cast v_conv2_i_1_2_3@uint32 v_conv3_i_2169_3@uint8;
(*   %xor.i.1.2.3 = xor i32 %conv2.i.1.2.3, %mul.i.1.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_2_3 v_conv2_i_1_2_3 v_mul_i_1_2_3;
(*   %conv3.i.1.2.3 = trunc i32 %xor.i.1.2.3 to i8 *)
split tmp_v_xor_i_1_2_3 v_conv3_i_1_2_3 v_xor_i_1_2_3 8;
vpc v_conv3_i_1_2_3@uint8 v_conv3_i_1_2_3@uint32;
(*   %conv4.i.1.2.3 = zext i8 %conv5.i.2172.3 to i32 *)
cast v_conv4_i_1_2_3@uint32 v_conv5_i_2172_3@uint8;
(*   %shr.i.1.2.3 = ashr i32 %conv4.i.1.2.3, 1 *)
(* You may need to modify here *)
split v_shr_i_1_2_3 tmp_to_be_used v_conv4_i_1_2_3 1;
(*   %conv5.i.1.2.3 = trunc i32 %shr.i.1.2.3 to i8 *)
split tmp_v_shr_i_1_2_3 v_conv5_i_1_2_3 v_shr_i_1_2_3 8;
vpc v_conv5_i_1_2_3@uint8 v_conv5_i_1_2_3@uint32;
(*   %conv6.i.1.2.3 = zext i8 %conv7.i.2175.3 to i32 *)
cast v_conv6_i_1_2_3@uint32 v_conv7_i_2175_3@uint8;
(*   %shl.i.1.2.3 = shl i32 %conv6.i.1.2.3, 1 *)
shls discard_197 v_shl_i_1_2_3 v_conv6_i_1_2_3 1;
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
shls discard_198 v_shl_i_2_2_3 v_conv6_i_2_2_3 1;
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
shls discard_199 v_shl_i_3_2_3 v_conv6_i_3_2_3 1;
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
shls discard_200 v_shl_i_4_2_3 v_conv6_i_4_2_3 1;
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
shls discard_201 v_shl_i_5_2_3 v_conv6_i_5_2_3 1;
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
shls discard_202 v_shl_i_6_2_3 v_conv6_i_6_2_3 1;
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
(*   %arrayidx45.2.3 = getelementptr inbounds [25 x i8], [25 x i8]* %p0, i64 0, i64 17 *)
(*   store i8 %conv3.i.7.2.3, i8* %arrayidx45.2.3, align 1 *)
mov p0_17 v_conv3_i_7_2_3;
(*   %126 = load i8, i8* %arrayidx47.3, align 1 *)
mov v126 a_3;
(*   %arrayidx51.2.3 = getelementptr inbounds [25 x i8], [25 x i8]* %s, i64 0, i64 17 *)
(*   %127 = load i8, i8* %arrayidx51.2.3, align 1 *)
mov v127 s_17;
(*   %conv.i127.2176.3 = zext i8 %127 to i32 *)
cast v_conv_i127_2176_3@uint32 v127@uint8;
(*   %and.i128.2177.3 = and i32 %conv.i127.2176.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_2177_3 v_conv_i127_2176_3 (0x1)@uint32;
(*   %conv1.i129.2178.3 = zext i8 %126 to i32 *)
cast v_conv1_i129_2178_3@uint32 v126@uint8;
(*   %mul.i130.2179.3 = mul nsw i32 %and.i128.2177.3, %conv1.i129.2178.3 *)
mul v_mul_i130_2179_3 v_and_i128_2177_3 v_conv1_i129_2178_3;
(*   %conv3.i133.2180.3 = trunc i32 %mul.i130.2179.3 to i8 *)
split tmp_v_mul_i130_2179_3 v_conv3_i133_2180_3 v_mul_i130_2179_3 8;
vpc v_conv3_i133_2180_3@uint8 v_conv3_i133_2180_3@uint32;
(*   %conv4.i134.2181.3 = zext i8 %127 to i32 *)
cast v_conv4_i134_2181_3@uint32 v127@uint8;
(*   %shr.i135.2182.3 = ashr i32 %conv4.i134.2181.3, 1 *)
(* You may need to modify here *)
split v_shr_i135_2182_3 tmp_to_be_used v_conv4_i134_2181_3 1;
(*   %conv5.i136.2183.3 = trunc i32 %shr.i135.2182.3 to i8 *)
split tmp_v_shr_i135_2182_3 v_conv5_i136_2183_3 v_shr_i135_2182_3 8;
vpc v_conv5_i136_2183_3@uint8 v_conv5_i136_2183_3@uint32;
(*   %conv6.i137.2184.3 = zext i8 %126 to i32 *)
cast v_conv6_i137_2184_3@uint32 v126@uint8;
(*   %shl.i138.2185.3 = shl i32 %conv6.i137.2184.3, 1 *)
shls discard_203 v_shl_i138_2185_3 v_conv6_i137_2184_3 1;
(*   %conv7.i139.2186.3 = trunc i32 %shl.i138.2185.3 to i8 *)
split tmp_v_shl_i138_2185_3 v_conv7_i139_2186_3 v_shl_i138_2185_3 8;
vpc v_conv7_i139_2186_3@uint8 v_conv7_i139_2186_3@uint32;
(*   %conv.i127.1.2.3 = zext i8 %conv5.i136.2183.3 to i32 *)
cast v_conv_i127_1_2_3@uint32 v_conv5_i136_2183_3@uint8;
(*   %and.i128.1.2.3 = and i32 %conv.i127.1.2.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1_2_3 v_conv_i127_1_2_3 (0x1)@uint32;
(*   %conv1.i129.1.2.3 = zext i8 %conv7.i139.2186.3 to i32 *)
cast v_conv1_i129_1_2_3@uint32 v_conv7_i139_2186_3@uint8;
(*   %mul.i130.1.2.3 = mul nsw i32 %and.i128.1.2.3, %conv1.i129.1.2.3 *)
mul v_mul_i130_1_2_3 v_and_i128_1_2_3 v_conv1_i129_1_2_3;
(*   %conv2.i131.1.2.3 = zext i8 %conv3.i133.2180.3 to i32 *)
cast v_conv2_i131_1_2_3@uint32 v_conv3_i133_2180_3@uint8;
(*   %xor.i132.1.2.3 = xor i32 %conv2.i131.1.2.3, %mul.i130.1.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_1_2_3 v_conv2_i131_1_2_3 v_mul_i130_1_2_3;
(*   %conv3.i133.1.2.3 = trunc i32 %xor.i132.1.2.3 to i8 *)
split tmp_v_xor_i132_1_2_3 v_conv3_i133_1_2_3 v_xor_i132_1_2_3 8;
vpc v_conv3_i133_1_2_3@uint8 v_conv3_i133_1_2_3@uint32;
(*   %conv4.i134.1.2.3 = zext i8 %conv5.i136.2183.3 to i32 *)
cast v_conv4_i134_1_2_3@uint32 v_conv5_i136_2183_3@uint8;
(*   %shr.i135.1.2.3 = ashr i32 %conv4.i134.1.2.3, 1 *)
(* You may need to modify here *)
split v_shr_i135_1_2_3 tmp_to_be_used v_conv4_i134_1_2_3 1;
(*   %conv5.i136.1.2.3 = trunc i32 %shr.i135.1.2.3 to i8 *)
split tmp_v_shr_i135_1_2_3 v_conv5_i136_1_2_3 v_shr_i135_1_2_3 8;
vpc v_conv5_i136_1_2_3@uint8 v_conv5_i136_1_2_3@uint32;
(*   %conv6.i137.1.2.3 = zext i8 %conv7.i139.2186.3 to i32 *)
cast v_conv6_i137_1_2_3@uint32 v_conv7_i139_2186_3@uint8;
(*   %shl.i138.1.2.3 = shl i32 %conv6.i137.1.2.3, 1 *)
shls discard_204 v_shl_i138_1_2_3 v_conv6_i137_1_2_3 1;
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
shls discard_205 v_shl_i138_2_2_3 v_conv6_i137_2_2_3 1;
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
shls discard_206 v_shl_i138_3_2_3 v_conv6_i137_3_2_3 1;
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
shls discard_207 v_shl_i138_4_2_3 v_conv6_i137_4_2_3 1;
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
shls discard_208 v_shl_i138_5_2_3 v_conv6_i137_5_2_3 1;
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
shls discard_209 v_shl_i138_6_2_3 v_conv6_i137_6_2_3 1;
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
(*   %arrayidx56.2.3 = getelementptr inbounds [25 x i8], [25 x i8]* %p1, i64 0, i64 17 *)
(*   store i8 %conv3.i133.7.2.3, i8* %arrayidx56.2.3, align 1 *)
mov p1_17 v_conv3_i133_7_2_3;
(*   %arrayidx60.2.3 = getelementptr inbounds [25 x i8], [25 x i8]* %p0, i64 0, i64 17 *)
(*   %128 = load i8, i8* %arrayidx60.2.3, align 1 *)
mov v128 p0_17;
(*   %conv61.2.3 = zext i8 %128 to i32 *)
cast v_conv61_2_3@uint32 v128@uint8;
(*   %arrayidx65.2.3 = getelementptr inbounds [25 x i8], [25 x i8]* %p1, i64 0, i64 17 *)
(*   %129 = load i8, i8* %arrayidx65.2.3, align 1 *)
mov v129 p1_17;
(*   %conv66.2.3 = zext i8 %129 to i32 *)
cast v_conv66_2_3@uint32 v129@uint8;
(*   %xor67.2.3 = xor i32 %conv61.2.3, %conv66.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor67_2_3 v_conv61_2_3 v_conv66_2_3;
(*   %conv68.2.3 = trunc i32 %xor67.2.3 to i8 *)
split tmp_v_xor67_2_3 v_conv68_2_3 v_xor67_2_3 8;
vpc v_conv68_2_3@uint8 v_conv68_2_3@uint32;
(*   %arrayidx72.2.3 = getelementptr inbounds [25 x i8], [25 x i8]* %z, i64 0, i64 17 *)
(*   store i8 %conv68.2.3, i8* %arrayidx72.2.3, align 1 *)
mov z_17 v_conv68_2_3;
(*   %arrayidx22.4.3 = getelementptr inbounds i8, i8* %b, i64 4 *)
(*   %130 = load i8, i8* %arrayidx22.4.3, align 1 *)
mov v130 b_4;
(*   %conv.4.3 = zext i8 %130 to i32 *)
cast v_conv_4_3@uint32 v130@uint8;
(*   %arrayidx26.4.3 = getelementptr inbounds i8, i8* %r, i64 19 *)
(*   %131 = load i8, i8* %arrayidx26.4.3, align 1 *)
mov v131 r_19;
(*   %conv27.4.3 = zext i8 %131 to i32 *)
cast v_conv27_4_3@uint32 v131@uint8;
(*   %xor.4.3 = xor i32 %conv.4.3, %conv27.4.3 *)
(* You may need to modify here *)
xor uint32 v_xor_4_3 v_conv_4_3 v_conv27_4_3;
(*   %conv28.4.3 = trunc i32 %xor.4.3 to i8 *)
split tmp_v_xor_4_3 v_conv28_4_3 v_xor_4_3 8;
vpc v_conv28_4_3@uint8 v_conv28_4_3@uint32;
(*   %arrayidx32.4.3 = getelementptr inbounds [25 x i8], [25 x i8]* %s, i64 0, i64 19 *)
(*   store i8 %conv28.4.3, i8* %arrayidx32.4.3, align 1 *)
mov s_19 v_conv28_4_3;
(*   %132 = load i8, i8* %arrayidx34.3, align 1 *)
mov v132 a_3;
(*   %conv35.4.3 = zext i8 %132 to i32 *)
cast v_conv35_4_3@uint32 v132@uint8;
(*   %xor36.4.3 = xor i32 %conv35.4.3, 1 *)
(* You may need to modify here *)
xor uint32 v_xor36_4_3 v_conv35_4_3 (0x1)@uint32;
(*   %conv37.4.3 = trunc i32 %xor36.4.3 to i8 *)
split tmp_v_xor36_4_3 v_conv37_4_3 v_xor36_4_3 8;
vpc v_conv37_4_3@uint8 v_conv37_4_3@uint32;
(*   %arrayidx41.4.3 = getelementptr inbounds i8, i8* %r, i64 19 *)
(*   %133 = load i8, i8* %arrayidx41.4.3, align 1 *)
mov v133 r_19;
(*   %conv.i.4209.3 = zext i8 %133 to i32 *)
cast v_conv_i_4209_3@uint32 v133@uint8;
(*   %and.i.4210.3 = and i32 %conv.i.4209.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4210_3 v_conv_i_4209_3 (0x1)@uint32;
(*   %conv1.i.4211.3 = zext i8 %conv37.4.3 to i32 *)
cast v_conv1_i_4211_3@uint32 v_conv37_4_3@uint8;
(*   %mul.i.4212.3 = mul nsw i32 %and.i.4210.3, %conv1.i.4211.3 *)
mul v_mul_i_4212_3 v_and_i_4210_3 v_conv1_i_4211_3;
(*   %conv3.i.4213.3 = trunc i32 %mul.i.4212.3 to i8 *)
split tmp_v_mul_i_4212_3 v_conv3_i_4213_3 v_mul_i_4212_3 8;
vpc v_conv3_i_4213_3@uint8 v_conv3_i_4213_3@uint32;
(*   %conv4.i.4214.3 = zext i8 %133 to i32 *)
cast v_conv4_i_4214_3@uint32 v133@uint8;
(*   %shr.i.4215.3 = ashr i32 %conv4.i.4214.3, 1 *)
(* You may need to modify here *)
split v_shr_i_4215_3 tmp_to_be_used v_conv4_i_4214_3 1;
(*   %conv5.i.4216.3 = trunc i32 %shr.i.4215.3 to i8 *)
split tmp_v_shr_i_4215_3 v_conv5_i_4216_3 v_shr_i_4215_3 8;
vpc v_conv5_i_4216_3@uint8 v_conv5_i_4216_3@uint32;
(*   %conv6.i.4217.3 = zext i8 %conv37.4.3 to i32 *)
cast v_conv6_i_4217_3@uint32 v_conv37_4_3@uint8;
(*   %shl.i.4218.3 = shl i32 %conv6.i.4217.3, 1 *)
shls discard_210 v_shl_i_4218_3 v_conv6_i_4217_3 1;
(*   %conv7.i.4219.3 = trunc i32 %shl.i.4218.3 to i8 *)
split tmp_v_shl_i_4218_3 v_conv7_i_4219_3 v_shl_i_4218_3 8;
vpc v_conv7_i_4219_3@uint8 v_conv7_i_4219_3@uint32;
(*   %conv.i.1.4.3 = zext i8 %conv5.i.4216.3 to i32 *)
cast v_conv_i_1_4_3@uint32 v_conv5_i_4216_3@uint8;
(*   %and.i.1.4.3 = and i32 %conv.i.1.4.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_4_3 v_conv_i_1_4_3 (0x1)@uint32;
(*   %conv1.i.1.4.3 = zext i8 %conv7.i.4219.3 to i32 *)
cast v_conv1_i_1_4_3@uint32 v_conv7_i_4219_3@uint8;
(*   %mul.i.1.4.3 = mul nsw i32 %and.i.1.4.3, %conv1.i.1.4.3 *)
mul v_mul_i_1_4_3 v_and_i_1_4_3 v_conv1_i_1_4_3;
(*   %conv2.i.1.4.3 = zext i8 %conv3.i.4213.3 to i32 *)
cast v_conv2_i_1_4_3@uint32 v_conv3_i_4213_3@uint8;
(*   %xor.i.1.4.3 = xor i32 %conv2.i.1.4.3, %mul.i.1.4.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_4_3 v_conv2_i_1_4_3 v_mul_i_1_4_3;
(*   %conv3.i.1.4.3 = trunc i32 %xor.i.1.4.3 to i8 *)
split tmp_v_xor_i_1_4_3 v_conv3_i_1_4_3 v_xor_i_1_4_3 8;
vpc v_conv3_i_1_4_3@uint8 v_conv3_i_1_4_3@uint32;
(*   %conv4.i.1.4.3 = zext i8 %conv5.i.4216.3 to i32 *)
cast v_conv4_i_1_4_3@uint32 v_conv5_i_4216_3@uint8;
(*   %shr.i.1.4.3 = ashr i32 %conv4.i.1.4.3, 1 *)
(* You may need to modify here *)
split v_shr_i_1_4_3 tmp_to_be_used v_conv4_i_1_4_3 1;
(*   %conv5.i.1.4.3 = trunc i32 %shr.i.1.4.3 to i8 *)
split tmp_v_shr_i_1_4_3 v_conv5_i_1_4_3 v_shr_i_1_4_3 8;
vpc v_conv5_i_1_4_3@uint8 v_conv5_i_1_4_3@uint32;
(*   %conv6.i.1.4.3 = zext i8 %conv7.i.4219.3 to i32 *)
cast v_conv6_i_1_4_3@uint32 v_conv7_i_4219_3@uint8;
(*   %shl.i.1.4.3 = shl i32 %conv6.i.1.4.3, 1 *)
shls discard_211 v_shl_i_1_4_3 v_conv6_i_1_4_3 1;
(*   %conv7.i.1.4.3 = trunc i32 %shl.i.1.4.3 to i8 *)
split tmp_v_shl_i_1_4_3 v_conv7_i_1_4_3 v_shl_i_1_4_3 8;
vpc v_conv7_i_1_4_3@uint8 v_conv7_i_1_4_3@uint32;
(*   %conv.i.2.4.3 = zext i8 %conv5.i.1.4.3 to i32 *)
cast v_conv_i_2_4_3@uint32 v_conv5_i_1_4_3@uint8;
(*   %and.i.2.4.3 = and i32 %conv.i.2.4.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_4_3 v_conv_i_2_4_3 (0x1)@uint32;
(*   %conv1.i.2.4.3 = zext i8 %conv7.i.1.4.3 to i32 *)
cast v_conv1_i_2_4_3@uint32 v_conv7_i_1_4_3@uint8;
(*   %mul.i.2.4.3 = mul nsw i32 %and.i.2.4.3, %conv1.i.2.4.3 *)
mul v_mul_i_2_4_3 v_and_i_2_4_3 v_conv1_i_2_4_3;
(*   %conv2.i.2.4.3 = zext i8 %conv3.i.1.4.3 to i32 *)
cast v_conv2_i_2_4_3@uint32 v_conv3_i_1_4_3@uint8;
(*   %xor.i.2.4.3 = xor i32 %conv2.i.2.4.3, %mul.i.2.4.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_4_3 v_conv2_i_2_4_3 v_mul_i_2_4_3;
(*   %conv3.i.2.4.3 = trunc i32 %xor.i.2.4.3 to i8 *)
split tmp_v_xor_i_2_4_3 v_conv3_i_2_4_3 v_xor_i_2_4_3 8;
vpc v_conv3_i_2_4_3@uint8 v_conv3_i_2_4_3@uint32;
(*   %conv4.i.2.4.3 = zext i8 %conv5.i.1.4.3 to i32 *)
cast v_conv4_i_2_4_3@uint32 v_conv5_i_1_4_3@uint8;
(*   %shr.i.2.4.3 = ashr i32 %conv4.i.2.4.3, 1 *)
(* You may need to modify here *)
split v_shr_i_2_4_3 tmp_to_be_used v_conv4_i_2_4_3 1;
(*   %conv5.i.2.4.3 = trunc i32 %shr.i.2.4.3 to i8 *)
split tmp_v_shr_i_2_4_3 v_conv5_i_2_4_3 v_shr_i_2_4_3 8;
vpc v_conv5_i_2_4_3@uint8 v_conv5_i_2_4_3@uint32;
(*   %conv6.i.2.4.3 = zext i8 %conv7.i.1.4.3 to i32 *)
cast v_conv6_i_2_4_3@uint32 v_conv7_i_1_4_3@uint8;
(*   %shl.i.2.4.3 = shl i32 %conv6.i.2.4.3, 1 *)
shls discard_212 v_shl_i_2_4_3 v_conv6_i_2_4_3 1;
(*   %conv7.i.2.4.3 = trunc i32 %shl.i.2.4.3 to i8 *)
split tmp_v_shl_i_2_4_3 v_conv7_i_2_4_3 v_shl_i_2_4_3 8;
vpc v_conv7_i_2_4_3@uint8 v_conv7_i_2_4_3@uint32;
(*   %conv.i.3.4.3 = zext i8 %conv5.i.2.4.3 to i32 *)
cast v_conv_i_3_4_3@uint32 v_conv5_i_2_4_3@uint8;
(*   %and.i.3.4.3 = and i32 %conv.i.3.4.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_4_3 v_conv_i_3_4_3 (0x1)@uint32;
(*   %conv1.i.3.4.3 = zext i8 %conv7.i.2.4.3 to i32 *)
cast v_conv1_i_3_4_3@uint32 v_conv7_i_2_4_3@uint8;
(*   %mul.i.3.4.3 = mul nsw i32 %and.i.3.4.3, %conv1.i.3.4.3 *)
mul v_mul_i_3_4_3 v_and_i_3_4_3 v_conv1_i_3_4_3;
(*   %conv2.i.3.4.3 = zext i8 %conv3.i.2.4.3 to i32 *)
cast v_conv2_i_3_4_3@uint32 v_conv3_i_2_4_3@uint8;
(*   %xor.i.3.4.3 = xor i32 %conv2.i.3.4.3, %mul.i.3.4.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_4_3 v_conv2_i_3_4_3 v_mul_i_3_4_3;
(*   %conv3.i.3.4.3 = trunc i32 %xor.i.3.4.3 to i8 *)
split tmp_v_xor_i_3_4_3 v_conv3_i_3_4_3 v_xor_i_3_4_3 8;
vpc v_conv3_i_3_4_3@uint8 v_conv3_i_3_4_3@uint32;
(*   %conv4.i.3.4.3 = zext i8 %conv5.i.2.4.3 to i32 *)
cast v_conv4_i_3_4_3@uint32 v_conv5_i_2_4_3@uint8;
(*   %shr.i.3.4.3 = ashr i32 %conv4.i.3.4.3, 1 *)
(* You may need to modify here *)
split v_shr_i_3_4_3 tmp_to_be_used v_conv4_i_3_4_3 1;
(*   %conv5.i.3.4.3 = trunc i32 %shr.i.3.4.3 to i8 *)
split tmp_v_shr_i_3_4_3 v_conv5_i_3_4_3 v_shr_i_3_4_3 8;
vpc v_conv5_i_3_4_3@uint8 v_conv5_i_3_4_3@uint32;
(*   %conv6.i.3.4.3 = zext i8 %conv7.i.2.4.3 to i32 *)
cast v_conv6_i_3_4_3@uint32 v_conv7_i_2_4_3@uint8;
(*   %shl.i.3.4.3 = shl i32 %conv6.i.3.4.3, 1 *)
shls discard_213 v_shl_i_3_4_3 v_conv6_i_3_4_3 1;
(*   %conv7.i.3.4.3 = trunc i32 %shl.i.3.4.3 to i8 *)
split tmp_v_shl_i_3_4_3 v_conv7_i_3_4_3 v_shl_i_3_4_3 8;
vpc v_conv7_i_3_4_3@uint8 v_conv7_i_3_4_3@uint32;
(*   %conv.i.4.4.3 = zext i8 %conv5.i.3.4.3 to i32 *)
cast v_conv_i_4_4_3@uint32 v_conv5_i_3_4_3@uint8;
(*   %and.i.4.4.3 = and i32 %conv.i.4.4.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_4_3 v_conv_i_4_4_3 (0x1)@uint32;
(*   %conv1.i.4.4.3 = zext i8 %conv7.i.3.4.3 to i32 *)
cast v_conv1_i_4_4_3@uint32 v_conv7_i_3_4_3@uint8;
(*   %mul.i.4.4.3 = mul nsw i32 %and.i.4.4.3, %conv1.i.4.4.3 *)
mul v_mul_i_4_4_3 v_and_i_4_4_3 v_conv1_i_4_4_3;
(*   %conv2.i.4.4.3 = zext i8 %conv3.i.3.4.3 to i32 *)
cast v_conv2_i_4_4_3@uint32 v_conv3_i_3_4_3@uint8;
(*   %xor.i.4.4.3 = xor i32 %conv2.i.4.4.3, %mul.i.4.4.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_4_3 v_conv2_i_4_4_3 v_mul_i_4_4_3;
(*   %conv3.i.4.4.3 = trunc i32 %xor.i.4.4.3 to i8 *)
split tmp_v_xor_i_4_4_3 v_conv3_i_4_4_3 v_xor_i_4_4_3 8;
vpc v_conv3_i_4_4_3@uint8 v_conv3_i_4_4_3@uint32;
(*   %conv4.i.4.4.3 = zext i8 %conv5.i.3.4.3 to i32 *)
cast v_conv4_i_4_4_3@uint32 v_conv5_i_3_4_3@uint8;
(*   %shr.i.4.4.3 = ashr i32 %conv4.i.4.4.3, 1 *)
(* You may need to modify here *)
split v_shr_i_4_4_3 tmp_to_be_used v_conv4_i_4_4_3 1;
(*   %conv5.i.4.4.3 = trunc i32 %shr.i.4.4.3 to i8 *)
split tmp_v_shr_i_4_4_3 v_conv5_i_4_4_3 v_shr_i_4_4_3 8;
vpc v_conv5_i_4_4_3@uint8 v_conv5_i_4_4_3@uint32;
(*   %conv6.i.4.4.3 = zext i8 %conv7.i.3.4.3 to i32 *)
cast v_conv6_i_4_4_3@uint32 v_conv7_i_3_4_3@uint8;
(*   %shl.i.4.4.3 = shl i32 %conv6.i.4.4.3, 1 *)
shls discard_214 v_shl_i_4_4_3 v_conv6_i_4_4_3 1;
(*   %conv7.i.4.4.3 = trunc i32 %shl.i.4.4.3 to i8 *)
split tmp_v_shl_i_4_4_3 v_conv7_i_4_4_3 v_shl_i_4_4_3 8;
vpc v_conv7_i_4_4_3@uint8 v_conv7_i_4_4_3@uint32;
(*   %conv.i.5.4.3 = zext i8 %conv5.i.4.4.3 to i32 *)
cast v_conv_i_5_4_3@uint32 v_conv5_i_4_4_3@uint8;
(*   %and.i.5.4.3 = and i32 %conv.i.5.4.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_4_3 v_conv_i_5_4_3 (0x1)@uint32;
(*   %conv1.i.5.4.3 = zext i8 %conv7.i.4.4.3 to i32 *)
cast v_conv1_i_5_4_3@uint32 v_conv7_i_4_4_3@uint8;
(*   %mul.i.5.4.3 = mul nsw i32 %and.i.5.4.3, %conv1.i.5.4.3 *)
mul v_mul_i_5_4_3 v_and_i_5_4_3 v_conv1_i_5_4_3;
(*   %conv2.i.5.4.3 = zext i8 %conv3.i.4.4.3 to i32 *)
cast v_conv2_i_5_4_3@uint32 v_conv3_i_4_4_3@uint8;
(*   %xor.i.5.4.3 = xor i32 %conv2.i.5.4.3, %mul.i.5.4.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_4_3 v_conv2_i_5_4_3 v_mul_i_5_4_3;
(*   %conv3.i.5.4.3 = trunc i32 %xor.i.5.4.3 to i8 *)
split tmp_v_xor_i_5_4_3 v_conv3_i_5_4_3 v_xor_i_5_4_3 8;
vpc v_conv3_i_5_4_3@uint8 v_conv3_i_5_4_3@uint32;
(*   %conv4.i.5.4.3 = zext i8 %conv5.i.4.4.3 to i32 *)
cast v_conv4_i_5_4_3@uint32 v_conv5_i_4_4_3@uint8;
(*   %shr.i.5.4.3 = ashr i32 %conv4.i.5.4.3, 1 *)
(* You may need to modify here *)
split v_shr_i_5_4_3 tmp_to_be_used v_conv4_i_5_4_3 1;
(*   %conv5.i.5.4.3 = trunc i32 %shr.i.5.4.3 to i8 *)
split tmp_v_shr_i_5_4_3 v_conv5_i_5_4_3 v_shr_i_5_4_3 8;
vpc v_conv5_i_5_4_3@uint8 v_conv5_i_5_4_3@uint32;
(*   %conv6.i.5.4.3 = zext i8 %conv7.i.4.4.3 to i32 *)
cast v_conv6_i_5_4_3@uint32 v_conv7_i_4_4_3@uint8;
(*   %shl.i.5.4.3 = shl i32 %conv6.i.5.4.3, 1 *)
shls discard_215 v_shl_i_5_4_3 v_conv6_i_5_4_3 1;
(*   %conv7.i.5.4.3 = trunc i32 %shl.i.5.4.3 to i8 *)
split tmp_v_shl_i_5_4_3 v_conv7_i_5_4_3 v_shl_i_5_4_3 8;
vpc v_conv7_i_5_4_3@uint8 v_conv7_i_5_4_3@uint32;
(*   %conv.i.6.4.3 = zext i8 %conv5.i.5.4.3 to i32 *)
cast v_conv_i_6_4_3@uint32 v_conv5_i_5_4_3@uint8;
(*   %and.i.6.4.3 = and i32 %conv.i.6.4.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_4_3 v_conv_i_6_4_3 (0x1)@uint32;
(*   %conv1.i.6.4.3 = zext i8 %conv7.i.5.4.3 to i32 *)
cast v_conv1_i_6_4_3@uint32 v_conv7_i_5_4_3@uint8;
(*   %mul.i.6.4.3 = mul nsw i32 %and.i.6.4.3, %conv1.i.6.4.3 *)
mul v_mul_i_6_4_3 v_and_i_6_4_3 v_conv1_i_6_4_3;
(*   %conv2.i.6.4.3 = zext i8 %conv3.i.5.4.3 to i32 *)
cast v_conv2_i_6_4_3@uint32 v_conv3_i_5_4_3@uint8;
(*   %xor.i.6.4.3 = xor i32 %conv2.i.6.4.3, %mul.i.6.4.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_4_3 v_conv2_i_6_4_3 v_mul_i_6_4_3;
(*   %conv3.i.6.4.3 = trunc i32 %xor.i.6.4.3 to i8 *)
split tmp_v_xor_i_6_4_3 v_conv3_i_6_4_3 v_xor_i_6_4_3 8;
vpc v_conv3_i_6_4_3@uint8 v_conv3_i_6_4_3@uint32;
(*   %conv4.i.6.4.3 = zext i8 %conv5.i.5.4.3 to i32 *)
cast v_conv4_i_6_4_3@uint32 v_conv5_i_5_4_3@uint8;
(*   %shr.i.6.4.3 = ashr i32 %conv4.i.6.4.3, 1 *)
(* You may need to modify here *)
split v_shr_i_6_4_3 tmp_to_be_used v_conv4_i_6_4_3 1;
(*   %conv5.i.6.4.3 = trunc i32 %shr.i.6.4.3 to i8 *)
split tmp_v_shr_i_6_4_3 v_conv5_i_6_4_3 v_shr_i_6_4_3 8;
vpc v_conv5_i_6_4_3@uint8 v_conv5_i_6_4_3@uint32;
(*   %conv6.i.6.4.3 = zext i8 %conv7.i.5.4.3 to i32 *)
cast v_conv6_i_6_4_3@uint32 v_conv7_i_5_4_3@uint8;
(*   %shl.i.6.4.3 = shl i32 %conv6.i.6.4.3, 1 *)
shls discard_216 v_shl_i_6_4_3 v_conv6_i_6_4_3 1;
(*   %conv7.i.6.4.3 = trunc i32 %shl.i.6.4.3 to i8 *)
split tmp_v_shl_i_6_4_3 v_conv7_i_6_4_3 v_shl_i_6_4_3 8;
vpc v_conv7_i_6_4_3@uint8 v_conv7_i_6_4_3@uint32;
(*   %conv.i.7.4.3 = zext i8 %conv5.i.6.4.3 to i32 *)
cast v_conv_i_7_4_3@uint32 v_conv5_i_6_4_3@uint8;
(*   %and.i.7.4.3 = and i32 %conv.i.7.4.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_4_3 v_conv_i_7_4_3 (0x1)@uint32;
(*   %conv1.i.7.4.3 = zext i8 %conv7.i.6.4.3 to i32 *)
cast v_conv1_i_7_4_3@uint32 v_conv7_i_6_4_3@uint8;
(*   %mul.i.7.4.3 = mul nsw i32 %and.i.7.4.3, %conv1.i.7.4.3 *)
mul v_mul_i_7_4_3 v_and_i_7_4_3 v_conv1_i_7_4_3;
(*   %conv2.i.7.4.3 = zext i8 %conv3.i.6.4.3 to i32 *)
cast v_conv2_i_7_4_3@uint32 v_conv3_i_6_4_3@uint8;
(*   %xor.i.7.4.3 = xor i32 %conv2.i.7.4.3, %mul.i.7.4.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_4_3 v_conv2_i_7_4_3 v_mul_i_7_4_3;
(*   %conv3.i.7.4.3 = trunc i32 %xor.i.7.4.3 to i8 *)
split tmp_v_xor_i_7_4_3 v_conv3_i_7_4_3 v_xor_i_7_4_3 8;
vpc v_conv3_i_7_4_3@uint8 v_conv3_i_7_4_3@uint32;
(*   %arrayidx45.4.3 = getelementptr inbounds [25 x i8], [25 x i8]* %p0, i64 0, i64 19 *)
(*   store i8 %conv3.i.7.4.3, i8* %arrayidx45.4.3, align 1 *)
mov p0_19 v_conv3_i_7_4_3;
(*   %134 = load i8, i8* %arrayidx47.3, align 1 *)
mov v134 a_3;
(*   %arrayidx51.4.3 = getelementptr inbounds [25 x i8], [25 x i8]* %s, i64 0, i64 19 *)
(*   %135 = load i8, i8* %arrayidx51.4.3, align 1 *)
mov v135 s_19;
(*   %conv.i127.4220.3 = zext i8 %135 to i32 *)
cast v_conv_i127_4220_3@uint32 v135@uint8;
(*   %and.i128.4221.3 = and i32 %conv.i127.4220.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_4221_3 v_conv_i127_4220_3 (0x1)@uint32;
(*   %conv1.i129.4222.3 = zext i8 %134 to i32 *)
cast v_conv1_i129_4222_3@uint32 v134@uint8;
(*   %mul.i130.4223.3 = mul nsw i32 %and.i128.4221.3, %conv1.i129.4222.3 *)
mul v_mul_i130_4223_3 v_and_i128_4221_3 v_conv1_i129_4222_3;
(*   %conv3.i133.4224.3 = trunc i32 %mul.i130.4223.3 to i8 *)
split tmp_v_mul_i130_4223_3 v_conv3_i133_4224_3 v_mul_i130_4223_3 8;
vpc v_conv3_i133_4224_3@uint8 v_conv3_i133_4224_3@uint32;
(*   %conv4.i134.4225.3 = zext i8 %135 to i32 *)
cast v_conv4_i134_4225_3@uint32 v135@uint8;
(*   %shr.i135.4226.3 = ashr i32 %conv4.i134.4225.3, 1 *)
(* You may need to modify here *)
split v_shr_i135_4226_3 tmp_to_be_used v_conv4_i134_4225_3 1;
(*   %conv5.i136.4227.3 = trunc i32 %shr.i135.4226.3 to i8 *)
split tmp_v_shr_i135_4226_3 v_conv5_i136_4227_3 v_shr_i135_4226_3 8;
vpc v_conv5_i136_4227_3@uint8 v_conv5_i136_4227_3@uint32;
(*   %conv6.i137.4228.3 = zext i8 %134 to i32 *)
cast v_conv6_i137_4228_3@uint32 v134@uint8;
(*   %shl.i138.4229.3 = shl i32 %conv6.i137.4228.3, 1 *)
shls discard_217 v_shl_i138_4229_3 v_conv6_i137_4228_3 1;
(*   %conv7.i139.4230.3 = trunc i32 %shl.i138.4229.3 to i8 *)
split tmp_v_shl_i138_4229_3 v_conv7_i139_4230_3 v_shl_i138_4229_3 8;
vpc v_conv7_i139_4230_3@uint8 v_conv7_i139_4230_3@uint32;
(*   %conv.i127.1.4.3 = zext i8 %conv5.i136.4227.3 to i32 *)
cast v_conv_i127_1_4_3@uint32 v_conv5_i136_4227_3@uint8;
(*   %and.i128.1.4.3 = and i32 %conv.i127.1.4.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1_4_3 v_conv_i127_1_4_3 (0x1)@uint32;
(*   %conv1.i129.1.4.3 = zext i8 %conv7.i139.4230.3 to i32 *)
cast v_conv1_i129_1_4_3@uint32 v_conv7_i139_4230_3@uint8;
(*   %mul.i130.1.4.3 = mul nsw i32 %and.i128.1.4.3, %conv1.i129.1.4.3 *)
mul v_mul_i130_1_4_3 v_and_i128_1_4_3 v_conv1_i129_1_4_3;
(*   %conv2.i131.1.4.3 = zext i8 %conv3.i133.4224.3 to i32 *)
cast v_conv2_i131_1_4_3@uint32 v_conv3_i133_4224_3@uint8;
(*   %xor.i132.1.4.3 = xor i32 %conv2.i131.1.4.3, %mul.i130.1.4.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_1_4_3 v_conv2_i131_1_4_3 v_mul_i130_1_4_3;
(*   %conv3.i133.1.4.3 = trunc i32 %xor.i132.1.4.3 to i8 *)
split tmp_v_xor_i132_1_4_3 v_conv3_i133_1_4_3 v_xor_i132_1_4_3 8;
vpc v_conv3_i133_1_4_3@uint8 v_conv3_i133_1_4_3@uint32;
(*   %conv4.i134.1.4.3 = zext i8 %conv5.i136.4227.3 to i32 *)
cast v_conv4_i134_1_4_3@uint32 v_conv5_i136_4227_3@uint8;
(*   %shr.i135.1.4.3 = ashr i32 %conv4.i134.1.4.3, 1 *)
(* You may need to modify here *)
split v_shr_i135_1_4_3 tmp_to_be_used v_conv4_i134_1_4_3 1;
(*   %conv5.i136.1.4.3 = trunc i32 %shr.i135.1.4.3 to i8 *)
split tmp_v_shr_i135_1_4_3 v_conv5_i136_1_4_3 v_shr_i135_1_4_3 8;
vpc v_conv5_i136_1_4_3@uint8 v_conv5_i136_1_4_3@uint32;
(*   %conv6.i137.1.4.3 = zext i8 %conv7.i139.4230.3 to i32 *)
cast v_conv6_i137_1_4_3@uint32 v_conv7_i139_4230_3@uint8;
(*   %shl.i138.1.4.3 = shl i32 %conv6.i137.1.4.3, 1 *)
shls discard_218 v_shl_i138_1_4_3 v_conv6_i137_1_4_3 1;
(*   %conv7.i139.1.4.3 = trunc i32 %shl.i138.1.4.3 to i8 *)
split tmp_v_shl_i138_1_4_3 v_conv7_i139_1_4_3 v_shl_i138_1_4_3 8;
vpc v_conv7_i139_1_4_3@uint8 v_conv7_i139_1_4_3@uint32;
(*   %conv.i127.2.4.3 = zext i8 %conv5.i136.1.4.3 to i32 *)
cast v_conv_i127_2_4_3@uint32 v_conv5_i136_1_4_3@uint8;
(*   %and.i128.2.4.3 = and i32 %conv.i127.2.4.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_2_4_3 v_conv_i127_2_4_3 (0x1)@uint32;
(*   %conv1.i129.2.4.3 = zext i8 %conv7.i139.1.4.3 to i32 *)
cast v_conv1_i129_2_4_3@uint32 v_conv7_i139_1_4_3@uint8;
(*   %mul.i130.2.4.3 = mul nsw i32 %and.i128.2.4.3, %conv1.i129.2.4.3 *)
mul v_mul_i130_2_4_3 v_and_i128_2_4_3 v_conv1_i129_2_4_3;
(*   %conv2.i131.2.4.3 = zext i8 %conv3.i133.1.4.3 to i32 *)
cast v_conv2_i131_2_4_3@uint32 v_conv3_i133_1_4_3@uint8;
(*   %xor.i132.2.4.3 = xor i32 %conv2.i131.2.4.3, %mul.i130.2.4.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_2_4_3 v_conv2_i131_2_4_3 v_mul_i130_2_4_3;
(*   %conv3.i133.2.4.3 = trunc i32 %xor.i132.2.4.3 to i8 *)
split tmp_v_xor_i132_2_4_3 v_conv3_i133_2_4_3 v_xor_i132_2_4_3 8;
vpc v_conv3_i133_2_4_3@uint8 v_conv3_i133_2_4_3@uint32;
(*   %conv4.i134.2.4.3 = zext i8 %conv5.i136.1.4.3 to i32 *)
cast v_conv4_i134_2_4_3@uint32 v_conv5_i136_1_4_3@uint8;
(*   %shr.i135.2.4.3 = ashr i32 %conv4.i134.2.4.3, 1 *)
(* You may need to modify here *)
split v_shr_i135_2_4_3 tmp_to_be_used v_conv4_i134_2_4_3 1;
(*   %conv5.i136.2.4.3 = trunc i32 %shr.i135.2.4.3 to i8 *)
split tmp_v_shr_i135_2_4_3 v_conv5_i136_2_4_3 v_shr_i135_2_4_3 8;
vpc v_conv5_i136_2_4_3@uint8 v_conv5_i136_2_4_3@uint32;
(*   %conv6.i137.2.4.3 = zext i8 %conv7.i139.1.4.3 to i32 *)
cast v_conv6_i137_2_4_3@uint32 v_conv7_i139_1_4_3@uint8;
(*   %shl.i138.2.4.3 = shl i32 %conv6.i137.2.4.3, 1 *)
shls discard_219 v_shl_i138_2_4_3 v_conv6_i137_2_4_3 1;
(*   %conv7.i139.2.4.3 = trunc i32 %shl.i138.2.4.3 to i8 *)
split tmp_v_shl_i138_2_4_3 v_conv7_i139_2_4_3 v_shl_i138_2_4_3 8;
vpc v_conv7_i139_2_4_3@uint8 v_conv7_i139_2_4_3@uint32;
(*   %conv.i127.3.4.3 = zext i8 %conv5.i136.2.4.3 to i32 *)
cast v_conv_i127_3_4_3@uint32 v_conv5_i136_2_4_3@uint8;
(*   %and.i128.3.4.3 = and i32 %conv.i127.3.4.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_3_4_3 v_conv_i127_3_4_3 (0x1)@uint32;
(*   %conv1.i129.3.4.3 = zext i8 %conv7.i139.2.4.3 to i32 *)
cast v_conv1_i129_3_4_3@uint32 v_conv7_i139_2_4_3@uint8;
(*   %mul.i130.3.4.3 = mul nsw i32 %and.i128.3.4.3, %conv1.i129.3.4.3 *)
mul v_mul_i130_3_4_3 v_and_i128_3_4_3 v_conv1_i129_3_4_3;
(*   %conv2.i131.3.4.3 = zext i8 %conv3.i133.2.4.3 to i32 *)
cast v_conv2_i131_3_4_3@uint32 v_conv3_i133_2_4_3@uint8;
(*   %xor.i132.3.4.3 = xor i32 %conv2.i131.3.4.3, %mul.i130.3.4.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_3_4_3 v_conv2_i131_3_4_3 v_mul_i130_3_4_3;
(*   %conv3.i133.3.4.3 = trunc i32 %xor.i132.3.4.3 to i8 *)
split tmp_v_xor_i132_3_4_3 v_conv3_i133_3_4_3 v_xor_i132_3_4_3 8;
vpc v_conv3_i133_3_4_3@uint8 v_conv3_i133_3_4_3@uint32;
(*   %conv4.i134.3.4.3 = zext i8 %conv5.i136.2.4.3 to i32 *)
cast v_conv4_i134_3_4_3@uint32 v_conv5_i136_2_4_3@uint8;
(*   %shr.i135.3.4.3 = ashr i32 %conv4.i134.3.4.3, 1 *)
(* You may need to modify here *)
split v_shr_i135_3_4_3 tmp_to_be_used v_conv4_i134_3_4_3 1;
(*   %conv5.i136.3.4.3 = trunc i32 %shr.i135.3.4.3 to i8 *)
split tmp_v_shr_i135_3_4_3 v_conv5_i136_3_4_3 v_shr_i135_3_4_3 8;
vpc v_conv5_i136_3_4_3@uint8 v_conv5_i136_3_4_3@uint32;
(*   %conv6.i137.3.4.3 = zext i8 %conv7.i139.2.4.3 to i32 *)
cast v_conv6_i137_3_4_3@uint32 v_conv7_i139_2_4_3@uint8;
(*   %shl.i138.3.4.3 = shl i32 %conv6.i137.3.4.3, 1 *)
shls discard_220 v_shl_i138_3_4_3 v_conv6_i137_3_4_3 1;
(*   %conv7.i139.3.4.3 = trunc i32 %shl.i138.3.4.3 to i8 *)
split tmp_v_shl_i138_3_4_3 v_conv7_i139_3_4_3 v_shl_i138_3_4_3 8;
vpc v_conv7_i139_3_4_3@uint8 v_conv7_i139_3_4_3@uint32;
(*   %conv.i127.4.4.3 = zext i8 %conv5.i136.3.4.3 to i32 *)
cast v_conv_i127_4_4_3@uint32 v_conv5_i136_3_4_3@uint8;
(*   %and.i128.4.4.3 = and i32 %conv.i127.4.4.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_4_4_3 v_conv_i127_4_4_3 (0x1)@uint32;
(*   %conv1.i129.4.4.3 = zext i8 %conv7.i139.3.4.3 to i32 *)
cast v_conv1_i129_4_4_3@uint32 v_conv7_i139_3_4_3@uint8;
(*   %mul.i130.4.4.3 = mul nsw i32 %and.i128.4.4.3, %conv1.i129.4.4.3 *)
mul v_mul_i130_4_4_3 v_and_i128_4_4_3 v_conv1_i129_4_4_3;
(*   %conv2.i131.4.4.3 = zext i8 %conv3.i133.3.4.3 to i32 *)
cast v_conv2_i131_4_4_3@uint32 v_conv3_i133_3_4_3@uint8;
(*   %xor.i132.4.4.3 = xor i32 %conv2.i131.4.4.3, %mul.i130.4.4.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_4_4_3 v_conv2_i131_4_4_3 v_mul_i130_4_4_3;
(*   %conv3.i133.4.4.3 = trunc i32 %xor.i132.4.4.3 to i8 *)
split tmp_v_xor_i132_4_4_3 v_conv3_i133_4_4_3 v_xor_i132_4_4_3 8;
vpc v_conv3_i133_4_4_3@uint8 v_conv3_i133_4_4_3@uint32;
(*   %conv4.i134.4.4.3 = zext i8 %conv5.i136.3.4.3 to i32 *)
cast v_conv4_i134_4_4_3@uint32 v_conv5_i136_3_4_3@uint8;
(*   %shr.i135.4.4.3 = ashr i32 %conv4.i134.4.4.3, 1 *)
(* You may need to modify here *)
split v_shr_i135_4_4_3 tmp_to_be_used v_conv4_i134_4_4_3 1;
(*   %conv5.i136.4.4.3 = trunc i32 %shr.i135.4.4.3 to i8 *)
split tmp_v_shr_i135_4_4_3 v_conv5_i136_4_4_3 v_shr_i135_4_4_3 8;
vpc v_conv5_i136_4_4_3@uint8 v_conv5_i136_4_4_3@uint32;
(*   %conv6.i137.4.4.3 = zext i8 %conv7.i139.3.4.3 to i32 *)
cast v_conv6_i137_4_4_3@uint32 v_conv7_i139_3_4_3@uint8;
(*   %shl.i138.4.4.3 = shl i32 %conv6.i137.4.4.3, 1 *)
shls discard_221 v_shl_i138_4_4_3 v_conv6_i137_4_4_3 1;
(*   %conv7.i139.4.4.3 = trunc i32 %shl.i138.4.4.3 to i8 *)
split tmp_v_shl_i138_4_4_3 v_conv7_i139_4_4_3 v_shl_i138_4_4_3 8;
vpc v_conv7_i139_4_4_3@uint8 v_conv7_i139_4_4_3@uint32;
(*   %conv.i127.5.4.3 = zext i8 %conv5.i136.4.4.3 to i32 *)
cast v_conv_i127_5_4_3@uint32 v_conv5_i136_4_4_3@uint8;
(*   %and.i128.5.4.3 = and i32 %conv.i127.5.4.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_5_4_3 v_conv_i127_5_4_3 (0x1)@uint32;
(*   %conv1.i129.5.4.3 = zext i8 %conv7.i139.4.4.3 to i32 *)
cast v_conv1_i129_5_4_3@uint32 v_conv7_i139_4_4_3@uint8;
(*   %mul.i130.5.4.3 = mul nsw i32 %and.i128.5.4.3, %conv1.i129.5.4.3 *)
mul v_mul_i130_5_4_3 v_and_i128_5_4_3 v_conv1_i129_5_4_3;
(*   %conv2.i131.5.4.3 = zext i8 %conv3.i133.4.4.3 to i32 *)
cast v_conv2_i131_5_4_3@uint32 v_conv3_i133_4_4_3@uint8;
(*   %xor.i132.5.4.3 = xor i32 %conv2.i131.5.4.3, %mul.i130.5.4.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_5_4_3 v_conv2_i131_5_4_3 v_mul_i130_5_4_3;
(*   %conv3.i133.5.4.3 = trunc i32 %xor.i132.5.4.3 to i8 *)
split tmp_v_xor_i132_5_4_3 v_conv3_i133_5_4_3 v_xor_i132_5_4_3 8;
vpc v_conv3_i133_5_4_3@uint8 v_conv3_i133_5_4_3@uint32;
(*   %conv4.i134.5.4.3 = zext i8 %conv5.i136.4.4.3 to i32 *)
cast v_conv4_i134_5_4_3@uint32 v_conv5_i136_4_4_3@uint8;
(*   %shr.i135.5.4.3 = ashr i32 %conv4.i134.5.4.3, 1 *)
(* You may need to modify here *)
split v_shr_i135_5_4_3 tmp_to_be_used v_conv4_i134_5_4_3 1;
(*   %conv5.i136.5.4.3 = trunc i32 %shr.i135.5.4.3 to i8 *)
split tmp_v_shr_i135_5_4_3 v_conv5_i136_5_4_3 v_shr_i135_5_4_3 8;
vpc v_conv5_i136_5_4_3@uint8 v_conv5_i136_5_4_3@uint32;
(*   %conv6.i137.5.4.3 = zext i8 %conv7.i139.4.4.3 to i32 *)
cast v_conv6_i137_5_4_3@uint32 v_conv7_i139_4_4_3@uint8;
(*   %shl.i138.5.4.3 = shl i32 %conv6.i137.5.4.3, 1 *)
shls discard_222 v_shl_i138_5_4_3 v_conv6_i137_5_4_3 1;
(*   %conv7.i139.5.4.3 = trunc i32 %shl.i138.5.4.3 to i8 *)
split tmp_v_shl_i138_5_4_3 v_conv7_i139_5_4_3 v_shl_i138_5_4_3 8;
vpc v_conv7_i139_5_4_3@uint8 v_conv7_i139_5_4_3@uint32;
(*   %conv.i127.6.4.3 = zext i8 %conv5.i136.5.4.3 to i32 *)
cast v_conv_i127_6_4_3@uint32 v_conv5_i136_5_4_3@uint8;
(*   %and.i128.6.4.3 = and i32 %conv.i127.6.4.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_6_4_3 v_conv_i127_6_4_3 (0x1)@uint32;
(*   %conv1.i129.6.4.3 = zext i8 %conv7.i139.5.4.3 to i32 *)
cast v_conv1_i129_6_4_3@uint32 v_conv7_i139_5_4_3@uint8;
(*   %mul.i130.6.4.3 = mul nsw i32 %and.i128.6.4.3, %conv1.i129.6.4.3 *)
mul v_mul_i130_6_4_3 v_and_i128_6_4_3 v_conv1_i129_6_4_3;
(*   %conv2.i131.6.4.3 = zext i8 %conv3.i133.5.4.3 to i32 *)
cast v_conv2_i131_6_4_3@uint32 v_conv3_i133_5_4_3@uint8;
(*   %xor.i132.6.4.3 = xor i32 %conv2.i131.6.4.3, %mul.i130.6.4.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_6_4_3 v_conv2_i131_6_4_3 v_mul_i130_6_4_3;
(*   %conv3.i133.6.4.3 = trunc i32 %xor.i132.6.4.3 to i8 *)
split tmp_v_xor_i132_6_4_3 v_conv3_i133_6_4_3 v_xor_i132_6_4_3 8;
vpc v_conv3_i133_6_4_3@uint8 v_conv3_i133_6_4_3@uint32;
(*   %conv4.i134.6.4.3 = zext i8 %conv5.i136.5.4.3 to i32 *)
cast v_conv4_i134_6_4_3@uint32 v_conv5_i136_5_4_3@uint8;
(*   %shr.i135.6.4.3 = ashr i32 %conv4.i134.6.4.3, 1 *)
(* You may need to modify here *)
split v_shr_i135_6_4_3 tmp_to_be_used v_conv4_i134_6_4_3 1;
(*   %conv5.i136.6.4.3 = trunc i32 %shr.i135.6.4.3 to i8 *)
split tmp_v_shr_i135_6_4_3 v_conv5_i136_6_4_3 v_shr_i135_6_4_3 8;
vpc v_conv5_i136_6_4_3@uint8 v_conv5_i136_6_4_3@uint32;
(*   %conv6.i137.6.4.3 = zext i8 %conv7.i139.5.4.3 to i32 *)
cast v_conv6_i137_6_4_3@uint32 v_conv7_i139_5_4_3@uint8;
(*   %shl.i138.6.4.3 = shl i32 %conv6.i137.6.4.3, 1 *)
shls discard_223 v_shl_i138_6_4_3 v_conv6_i137_6_4_3 1;
(*   %conv7.i139.6.4.3 = trunc i32 %shl.i138.6.4.3 to i8 *)
split tmp_v_shl_i138_6_4_3 v_conv7_i139_6_4_3 v_shl_i138_6_4_3 8;
vpc v_conv7_i139_6_4_3@uint8 v_conv7_i139_6_4_3@uint32;
(*   %conv.i127.7.4.3 = zext i8 %conv5.i136.6.4.3 to i32 *)
cast v_conv_i127_7_4_3@uint32 v_conv5_i136_6_4_3@uint8;
(*   %and.i128.7.4.3 = and i32 %conv.i127.7.4.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_7_4_3 v_conv_i127_7_4_3 (0x1)@uint32;
(*   %conv1.i129.7.4.3 = zext i8 %conv7.i139.6.4.3 to i32 *)
cast v_conv1_i129_7_4_3@uint32 v_conv7_i139_6_4_3@uint8;
(*   %mul.i130.7.4.3 = mul nsw i32 %and.i128.7.4.3, %conv1.i129.7.4.3 *)
mul v_mul_i130_7_4_3 v_and_i128_7_4_3 v_conv1_i129_7_4_3;
(*   %conv2.i131.7.4.3 = zext i8 %conv3.i133.6.4.3 to i32 *)
cast v_conv2_i131_7_4_3@uint32 v_conv3_i133_6_4_3@uint8;
(*   %xor.i132.7.4.3 = xor i32 %conv2.i131.7.4.3, %mul.i130.7.4.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_7_4_3 v_conv2_i131_7_4_3 v_mul_i130_7_4_3;
(*   %conv3.i133.7.4.3 = trunc i32 %xor.i132.7.4.3 to i8 *)
split tmp_v_xor_i132_7_4_3 v_conv3_i133_7_4_3 v_xor_i132_7_4_3 8;
vpc v_conv3_i133_7_4_3@uint8 v_conv3_i133_7_4_3@uint32;
(*   %arrayidx56.4.3 = getelementptr inbounds [25 x i8], [25 x i8]* %p1, i64 0, i64 19 *)
(*   store i8 %conv3.i133.7.4.3, i8* %arrayidx56.4.3, align 1 *)
mov p1_19 v_conv3_i133_7_4_3;
(*   %arrayidx60.4.3 = getelementptr inbounds [25 x i8], [25 x i8]* %p0, i64 0, i64 19 *)
(*   %136 = load i8, i8* %arrayidx60.4.3, align 1 *)
mov v136 p0_19;
(*   %conv61.4.3 = zext i8 %136 to i32 *)
cast v_conv61_4_3@uint32 v136@uint8;
(*   %arrayidx65.4.3 = getelementptr inbounds [25 x i8], [25 x i8]* %p1, i64 0, i64 19 *)
(*   %137 = load i8, i8* %arrayidx65.4.3, align 1 *)
mov v137 p1_19;
(*   %conv66.4.3 = zext i8 %137 to i32 *)
cast v_conv66_4_3@uint32 v137@uint8;
(*   %xor67.4.3 = xor i32 %conv61.4.3, %conv66.4.3 *)
(* You may need to modify here *)
xor uint32 v_xor67_4_3 v_conv61_4_3 v_conv66_4_3;
(*   %conv68.4.3 = trunc i32 %xor67.4.3 to i8 *)
split tmp_v_xor67_4_3 v_conv68_4_3 v_xor67_4_3 8;
vpc v_conv68_4_3@uint8 v_conv68_4_3@uint32;
(*   %arrayidx72.4.3 = getelementptr inbounds [25 x i8], [25 x i8]* %z, i64 0, i64 19 *)
(*   store i8 %conv68.4.3, i8* %arrayidx72.4.3, align 1 *)
mov z_19 v_conv68_4_3;
(*   %arrayidx34.4 = getelementptr inbounds i8, i8* %a, i64 4 *)
(*   %arrayidx47.4 = getelementptr inbounds i8, i8* %a, i64 4 *)
(*   %138 = load i8, i8* %b, align 1 *)
mov v138 b_0;
(*   %conv.4925 = zext i8 %138 to i32 *)
cast v_conv_4925@uint32 v138@uint8;
(*   %arrayidx26.4927 = getelementptr inbounds i8, i8* %r, i64 20 *)
(*   %139 = load i8, i8* %arrayidx26.4927, align 1 *)
mov v139 r_20;
(*   %conv27.4928 = zext i8 %139 to i32 *)
cast v_conv27_4928@uint32 v139@uint8;
(*   %xor.4929 = xor i32 %conv.4925, %conv27.4928 *)
(* You may need to modify here *)
xor uint32 v_xor_4929 v_conv_4925 v_conv27_4928;
(*   %conv28.4930 = trunc i32 %xor.4929 to i8 *)
split tmp_v_xor_4929 v_conv28_4930 v_xor_4929 8;
vpc v_conv28_4930@uint8 v_conv28_4930@uint32;
(*   %arrayidx32.4932 = getelementptr inbounds [25 x i8], [25 x i8]* %s, i64 0, i64 20 *)
(*   store i8 %conv28.4930, i8* %arrayidx32.4932, align 1 *)
mov s_20 v_conv28_4930;
(*   %140 = load i8, i8* %arrayidx34.4, align 1 *)
mov v140 a_4;
(*   %conv35.4933 = zext i8 %140 to i32 *)
cast v_conv35_4933@uint32 v140@uint8;
(*   %xor36.4934 = xor i32 %conv35.4933, 1 *)
(* You may need to modify here *)
xor uint32 v_xor36_4934 v_conv35_4933 (0x1)@uint32;
(*   %conv37.4935 = trunc i32 %xor36.4934 to i8 *)
split tmp_v_xor36_4934 v_conv37_4935 v_xor36_4934 8;
vpc v_conv37_4935@uint8 v_conv37_4935@uint32;
(*   %arrayidx41.4937 = getelementptr inbounds i8, i8* %r, i64 20 *)
(*   %141 = load i8, i8* %arrayidx41.4937, align 1 *)
mov v141 r_20;
(*   %conv.i.4939 = zext i8 %141 to i32 *)
cast v_conv_i_4939@uint32 v141@uint8;
(*   %and.i.4940 = and i32 %conv.i.4939, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4940 v_conv_i_4939 (0x1)@uint32;
(*   %conv1.i.4941 = zext i8 %conv37.4935 to i32 *)
cast v_conv1_i_4941@uint32 v_conv37_4935@uint8;
(*   %mul.i.4942 = mul nsw i32 %and.i.4940, %conv1.i.4941 *)
mul v_mul_i_4942 v_and_i_4940 v_conv1_i_4941;
(*   %conv3.i.4943 = trunc i32 %mul.i.4942 to i8 *)
split tmp_v_mul_i_4942 v_conv3_i_4943 v_mul_i_4942 8;
vpc v_conv3_i_4943@uint8 v_conv3_i_4943@uint32;
(*   %conv4.i.4944 = zext i8 %141 to i32 *)
cast v_conv4_i_4944@uint32 v141@uint8;
(*   %shr.i.4945 = ashr i32 %conv4.i.4944, 1 *)
(* You may need to modify here *)
split v_shr_i_4945 tmp_to_be_used v_conv4_i_4944 1;
(*   %conv5.i.4946 = trunc i32 %shr.i.4945 to i8 *)
split tmp_v_shr_i_4945 v_conv5_i_4946 v_shr_i_4945 8;
vpc v_conv5_i_4946@uint8 v_conv5_i_4946@uint32;
(*   %conv6.i.4947 = zext i8 %conv37.4935 to i32 *)
cast v_conv6_i_4947@uint32 v_conv37_4935@uint8;
(*   %shl.i.4948 = shl i32 %conv6.i.4947, 1 *)
shls discard_224 v_shl_i_4948 v_conv6_i_4947 1;
(*   %conv7.i.4949 = trunc i32 %shl.i.4948 to i8 *)
split tmp_v_shl_i_4948 v_conv7_i_4949 v_shl_i_4948 8;
vpc v_conv7_i_4949@uint8 v_conv7_i_4949@uint32;
(*   %conv.i.1.4950 = zext i8 %conv5.i.4946 to i32 *)
cast v_conv_i_1_4950@uint32 v_conv5_i_4946@uint8;
(*   %and.i.1.4951 = and i32 %conv.i.1.4950, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_4951 v_conv_i_1_4950 (0x1)@uint32;
(*   %conv1.i.1.4952 = zext i8 %conv7.i.4949 to i32 *)
cast v_conv1_i_1_4952@uint32 v_conv7_i_4949@uint8;
(*   %mul.i.1.4953 = mul nsw i32 %and.i.1.4951, %conv1.i.1.4952 *)
mul v_mul_i_1_4953 v_and_i_1_4951 v_conv1_i_1_4952;
(*   %conv2.i.1.4954 = zext i8 %conv3.i.4943 to i32 *)
cast v_conv2_i_1_4954@uint32 v_conv3_i_4943@uint8;
(*   %xor.i.1.4955 = xor i32 %conv2.i.1.4954, %mul.i.1.4953 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_4955 v_conv2_i_1_4954 v_mul_i_1_4953;
(*   %conv3.i.1.4956 = trunc i32 %xor.i.1.4955 to i8 *)
split tmp_v_xor_i_1_4955 v_conv3_i_1_4956 v_xor_i_1_4955 8;
vpc v_conv3_i_1_4956@uint8 v_conv3_i_1_4956@uint32;
(*   %conv4.i.1.4957 = zext i8 %conv5.i.4946 to i32 *)
cast v_conv4_i_1_4957@uint32 v_conv5_i_4946@uint8;
(*   %shr.i.1.4958 = ashr i32 %conv4.i.1.4957, 1 *)
(* You may need to modify here *)
split v_shr_i_1_4958 tmp_to_be_used v_conv4_i_1_4957 1;
(*   %conv5.i.1.4959 = trunc i32 %shr.i.1.4958 to i8 *)
split tmp_v_shr_i_1_4958 v_conv5_i_1_4959 v_shr_i_1_4958 8;
vpc v_conv5_i_1_4959@uint8 v_conv5_i_1_4959@uint32;
(*   %conv6.i.1.4960 = zext i8 %conv7.i.4949 to i32 *)
cast v_conv6_i_1_4960@uint32 v_conv7_i_4949@uint8;
(*   %shl.i.1.4961 = shl i32 %conv6.i.1.4960, 1 *)
shls discard_225 v_shl_i_1_4961 v_conv6_i_1_4960 1;
(*   %conv7.i.1.4962 = trunc i32 %shl.i.1.4961 to i8 *)
split tmp_v_shl_i_1_4961 v_conv7_i_1_4962 v_shl_i_1_4961 8;
vpc v_conv7_i_1_4962@uint8 v_conv7_i_1_4962@uint32;
(*   %conv.i.2.4963 = zext i8 %conv5.i.1.4959 to i32 *)
cast v_conv_i_2_4963@uint32 v_conv5_i_1_4959@uint8;
(*   %and.i.2.4964 = and i32 %conv.i.2.4963, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_4964 v_conv_i_2_4963 (0x1)@uint32;
(*   %conv1.i.2.4965 = zext i8 %conv7.i.1.4962 to i32 *)
cast v_conv1_i_2_4965@uint32 v_conv7_i_1_4962@uint8;
(*   %mul.i.2.4966 = mul nsw i32 %and.i.2.4964, %conv1.i.2.4965 *)
mul v_mul_i_2_4966 v_and_i_2_4964 v_conv1_i_2_4965;
(*   %conv2.i.2.4967 = zext i8 %conv3.i.1.4956 to i32 *)
cast v_conv2_i_2_4967@uint32 v_conv3_i_1_4956@uint8;
(*   %xor.i.2.4968 = xor i32 %conv2.i.2.4967, %mul.i.2.4966 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_4968 v_conv2_i_2_4967 v_mul_i_2_4966;
(*   %conv3.i.2.4969 = trunc i32 %xor.i.2.4968 to i8 *)
split tmp_v_xor_i_2_4968 v_conv3_i_2_4969 v_xor_i_2_4968 8;
vpc v_conv3_i_2_4969@uint8 v_conv3_i_2_4969@uint32;
(*   %conv4.i.2.4970 = zext i8 %conv5.i.1.4959 to i32 *)
cast v_conv4_i_2_4970@uint32 v_conv5_i_1_4959@uint8;
(*   %shr.i.2.4971 = ashr i32 %conv4.i.2.4970, 1 *)
(* You may need to modify here *)
split v_shr_i_2_4971 tmp_to_be_used v_conv4_i_2_4970 1;
(*   %conv5.i.2.4972 = trunc i32 %shr.i.2.4971 to i8 *)
split tmp_v_shr_i_2_4971 v_conv5_i_2_4972 v_shr_i_2_4971 8;
vpc v_conv5_i_2_4972@uint8 v_conv5_i_2_4972@uint32;
(*   %conv6.i.2.4973 = zext i8 %conv7.i.1.4962 to i32 *)
cast v_conv6_i_2_4973@uint32 v_conv7_i_1_4962@uint8;
(*   %shl.i.2.4974 = shl i32 %conv6.i.2.4973, 1 *)
shls discard_226 v_shl_i_2_4974 v_conv6_i_2_4973 1;
(*   %conv7.i.2.4975 = trunc i32 %shl.i.2.4974 to i8 *)
split tmp_v_shl_i_2_4974 v_conv7_i_2_4975 v_shl_i_2_4974 8;
vpc v_conv7_i_2_4975@uint8 v_conv7_i_2_4975@uint32;
(*   %conv.i.3.4976 = zext i8 %conv5.i.2.4972 to i32 *)
cast v_conv_i_3_4976@uint32 v_conv5_i_2_4972@uint8;
(*   %and.i.3.4977 = and i32 %conv.i.3.4976, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_4977 v_conv_i_3_4976 (0x1)@uint32;
(*   %conv1.i.3.4978 = zext i8 %conv7.i.2.4975 to i32 *)
cast v_conv1_i_3_4978@uint32 v_conv7_i_2_4975@uint8;
(*   %mul.i.3.4979 = mul nsw i32 %and.i.3.4977, %conv1.i.3.4978 *)
mul v_mul_i_3_4979 v_and_i_3_4977 v_conv1_i_3_4978;
(*   %conv2.i.3.4980 = zext i8 %conv3.i.2.4969 to i32 *)
cast v_conv2_i_3_4980@uint32 v_conv3_i_2_4969@uint8;
(*   %xor.i.3.4981 = xor i32 %conv2.i.3.4980, %mul.i.3.4979 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_4981 v_conv2_i_3_4980 v_mul_i_3_4979;
(*   %conv3.i.3.4982 = trunc i32 %xor.i.3.4981 to i8 *)
split tmp_v_xor_i_3_4981 v_conv3_i_3_4982 v_xor_i_3_4981 8;
vpc v_conv3_i_3_4982@uint8 v_conv3_i_3_4982@uint32;
(*   %conv4.i.3.4983 = zext i8 %conv5.i.2.4972 to i32 *)
cast v_conv4_i_3_4983@uint32 v_conv5_i_2_4972@uint8;
(*   %shr.i.3.4984 = ashr i32 %conv4.i.3.4983, 1 *)
(* You may need to modify here *)
split v_shr_i_3_4984 tmp_to_be_used v_conv4_i_3_4983 1;
(*   %conv5.i.3.4985 = trunc i32 %shr.i.3.4984 to i8 *)
split tmp_v_shr_i_3_4984 v_conv5_i_3_4985 v_shr_i_3_4984 8;
vpc v_conv5_i_3_4985@uint8 v_conv5_i_3_4985@uint32;
(*   %conv6.i.3.4986 = zext i8 %conv7.i.2.4975 to i32 *)
cast v_conv6_i_3_4986@uint32 v_conv7_i_2_4975@uint8;
(*   %shl.i.3.4987 = shl i32 %conv6.i.3.4986, 1 *)
shls discard_227 v_shl_i_3_4987 v_conv6_i_3_4986 1;
(*   %conv7.i.3.4988 = trunc i32 %shl.i.3.4987 to i8 *)
split tmp_v_shl_i_3_4987 v_conv7_i_3_4988 v_shl_i_3_4987 8;
vpc v_conv7_i_3_4988@uint8 v_conv7_i_3_4988@uint32;
(*   %conv.i.4.4989 = zext i8 %conv5.i.3.4985 to i32 *)
cast v_conv_i_4_4989@uint32 v_conv5_i_3_4985@uint8;
(*   %and.i.4.4990 = and i32 %conv.i.4.4989, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_4990 v_conv_i_4_4989 (0x1)@uint32;
(*   %conv1.i.4.4991 = zext i8 %conv7.i.3.4988 to i32 *)
cast v_conv1_i_4_4991@uint32 v_conv7_i_3_4988@uint8;
(*   %mul.i.4.4992 = mul nsw i32 %and.i.4.4990, %conv1.i.4.4991 *)
mul v_mul_i_4_4992 v_and_i_4_4990 v_conv1_i_4_4991;
(*   %conv2.i.4.4993 = zext i8 %conv3.i.3.4982 to i32 *)
cast v_conv2_i_4_4993@uint32 v_conv3_i_3_4982@uint8;
(*   %xor.i.4.4994 = xor i32 %conv2.i.4.4993, %mul.i.4.4992 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_4994 v_conv2_i_4_4993 v_mul_i_4_4992;
(*   %conv3.i.4.4995 = trunc i32 %xor.i.4.4994 to i8 *)
split tmp_v_xor_i_4_4994 v_conv3_i_4_4995 v_xor_i_4_4994 8;
vpc v_conv3_i_4_4995@uint8 v_conv3_i_4_4995@uint32;
(*   %conv4.i.4.4996 = zext i8 %conv5.i.3.4985 to i32 *)
cast v_conv4_i_4_4996@uint32 v_conv5_i_3_4985@uint8;
(*   %shr.i.4.4997 = ashr i32 %conv4.i.4.4996, 1 *)
(* You may need to modify here *)
split v_shr_i_4_4997 tmp_to_be_used v_conv4_i_4_4996 1;
(*   %conv5.i.4.4998 = trunc i32 %shr.i.4.4997 to i8 *)
split tmp_v_shr_i_4_4997 v_conv5_i_4_4998 v_shr_i_4_4997 8;
vpc v_conv5_i_4_4998@uint8 v_conv5_i_4_4998@uint32;
(*   %conv6.i.4.4999 = zext i8 %conv7.i.3.4988 to i32 *)
cast v_conv6_i_4_4999@uint32 v_conv7_i_3_4988@uint8;
(*   %shl.i.4.41000 = shl i32 %conv6.i.4.4999, 1 *)
shls discard_228 v_shl_i_4_41000 v_conv6_i_4_4999 1;
(*   %conv7.i.4.41001 = trunc i32 %shl.i.4.41000 to i8 *)
split tmp_v_shl_i_4_41000 v_conv7_i_4_41001 v_shl_i_4_41000 8;
vpc v_conv7_i_4_41001@uint8 v_conv7_i_4_41001@uint32;
(*   %conv.i.5.41002 = zext i8 %conv5.i.4.4998 to i32 *)
cast v_conv_i_5_41002@uint32 v_conv5_i_4_4998@uint8;
(*   %and.i.5.41003 = and i32 %conv.i.5.41002, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_41003 v_conv_i_5_41002 (0x1)@uint32;
(*   %conv1.i.5.41004 = zext i8 %conv7.i.4.41001 to i32 *)
cast v_conv1_i_5_41004@uint32 v_conv7_i_4_41001@uint8;
(*   %mul.i.5.41005 = mul nsw i32 %and.i.5.41003, %conv1.i.5.41004 *)
mul v_mul_i_5_41005 v_and_i_5_41003 v_conv1_i_5_41004;
(*   %conv2.i.5.41006 = zext i8 %conv3.i.4.4995 to i32 *)
cast v_conv2_i_5_41006@uint32 v_conv3_i_4_4995@uint8;
(*   %xor.i.5.41007 = xor i32 %conv2.i.5.41006, %mul.i.5.41005 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_41007 v_conv2_i_5_41006 v_mul_i_5_41005;
(*   %conv3.i.5.41008 = trunc i32 %xor.i.5.41007 to i8 *)
split tmp_v_xor_i_5_41007 v_conv3_i_5_41008 v_xor_i_5_41007 8;
vpc v_conv3_i_5_41008@uint8 v_conv3_i_5_41008@uint32;
(*   %conv4.i.5.41009 = zext i8 %conv5.i.4.4998 to i32 *)
cast v_conv4_i_5_41009@uint32 v_conv5_i_4_4998@uint8;
(*   %shr.i.5.41010 = ashr i32 %conv4.i.5.41009, 1 *)
(* You may need to modify here *)
split v_shr_i_5_41010 tmp_to_be_used v_conv4_i_5_41009 1;
(*   %conv5.i.5.41011 = trunc i32 %shr.i.5.41010 to i8 *)
split tmp_v_shr_i_5_41010 v_conv5_i_5_41011 v_shr_i_5_41010 8;
vpc v_conv5_i_5_41011@uint8 v_conv5_i_5_41011@uint32;
(*   %conv6.i.5.41012 = zext i8 %conv7.i.4.41001 to i32 *)
cast v_conv6_i_5_41012@uint32 v_conv7_i_4_41001@uint8;
(*   %shl.i.5.41013 = shl i32 %conv6.i.5.41012, 1 *)
shls discard_229 v_shl_i_5_41013 v_conv6_i_5_41012 1;
(*   %conv7.i.5.41014 = trunc i32 %shl.i.5.41013 to i8 *)
split tmp_v_shl_i_5_41013 v_conv7_i_5_41014 v_shl_i_5_41013 8;
vpc v_conv7_i_5_41014@uint8 v_conv7_i_5_41014@uint32;
(*   %conv.i.6.41015 = zext i8 %conv5.i.5.41011 to i32 *)
cast v_conv_i_6_41015@uint32 v_conv5_i_5_41011@uint8;
(*   %and.i.6.41016 = and i32 %conv.i.6.41015, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_41016 v_conv_i_6_41015 (0x1)@uint32;
(*   %conv1.i.6.41017 = zext i8 %conv7.i.5.41014 to i32 *)
cast v_conv1_i_6_41017@uint32 v_conv7_i_5_41014@uint8;
(*   %mul.i.6.41018 = mul nsw i32 %and.i.6.41016, %conv1.i.6.41017 *)
mul v_mul_i_6_41018 v_and_i_6_41016 v_conv1_i_6_41017;
(*   %conv2.i.6.41019 = zext i8 %conv3.i.5.41008 to i32 *)
cast v_conv2_i_6_41019@uint32 v_conv3_i_5_41008@uint8;
(*   %xor.i.6.41020 = xor i32 %conv2.i.6.41019, %mul.i.6.41018 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_41020 v_conv2_i_6_41019 v_mul_i_6_41018;
(*   %conv3.i.6.41021 = trunc i32 %xor.i.6.41020 to i8 *)
split tmp_v_xor_i_6_41020 v_conv3_i_6_41021 v_xor_i_6_41020 8;
vpc v_conv3_i_6_41021@uint8 v_conv3_i_6_41021@uint32;
(*   %conv4.i.6.41022 = zext i8 %conv5.i.5.41011 to i32 *)
cast v_conv4_i_6_41022@uint32 v_conv5_i_5_41011@uint8;
(*   %shr.i.6.41023 = ashr i32 %conv4.i.6.41022, 1 *)
(* You may need to modify here *)
split v_shr_i_6_41023 tmp_to_be_used v_conv4_i_6_41022 1;
(*   %conv5.i.6.41024 = trunc i32 %shr.i.6.41023 to i8 *)
split tmp_v_shr_i_6_41023 v_conv5_i_6_41024 v_shr_i_6_41023 8;
vpc v_conv5_i_6_41024@uint8 v_conv5_i_6_41024@uint32;
(*   %conv6.i.6.41025 = zext i8 %conv7.i.5.41014 to i32 *)
cast v_conv6_i_6_41025@uint32 v_conv7_i_5_41014@uint8;
(*   %shl.i.6.41026 = shl i32 %conv6.i.6.41025, 1 *)
shls discard_230 v_shl_i_6_41026 v_conv6_i_6_41025 1;
(*   %conv7.i.6.41027 = trunc i32 %shl.i.6.41026 to i8 *)
split tmp_v_shl_i_6_41026 v_conv7_i_6_41027 v_shl_i_6_41026 8;
vpc v_conv7_i_6_41027@uint8 v_conv7_i_6_41027@uint32;
(*   %conv.i.7.41028 = zext i8 %conv5.i.6.41024 to i32 *)
cast v_conv_i_7_41028@uint32 v_conv5_i_6_41024@uint8;
(*   %and.i.7.41029 = and i32 %conv.i.7.41028, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_41029 v_conv_i_7_41028 (0x1)@uint32;
(*   %conv1.i.7.41030 = zext i8 %conv7.i.6.41027 to i32 *)
cast v_conv1_i_7_41030@uint32 v_conv7_i_6_41027@uint8;
(*   %mul.i.7.41031 = mul nsw i32 %and.i.7.41029, %conv1.i.7.41030 *)
mul v_mul_i_7_41031 v_and_i_7_41029 v_conv1_i_7_41030;
(*   %conv2.i.7.41032 = zext i8 %conv3.i.6.41021 to i32 *)
cast v_conv2_i_7_41032@uint32 v_conv3_i_6_41021@uint8;
(*   %xor.i.7.41033 = xor i32 %conv2.i.7.41032, %mul.i.7.41031 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_41033 v_conv2_i_7_41032 v_mul_i_7_41031;
(*   %conv3.i.7.41034 = trunc i32 %xor.i.7.41033 to i8 *)
split tmp_v_xor_i_7_41033 v_conv3_i_7_41034 v_xor_i_7_41033 8;
vpc v_conv3_i_7_41034@uint8 v_conv3_i_7_41034@uint32;
(*   %arrayidx45.41038 = getelementptr inbounds [25 x i8], [25 x i8]* %p0, i64 0, i64 20 *)
(*   store i8 %conv3.i.7.41034, i8* %arrayidx45.41038, align 1 *)
mov p0_20 v_conv3_i_7_41034;
(*   %142 = load i8, i8* %arrayidx47.4, align 1 *)
mov v142 a_4;
(*   %arrayidx51.41040 = getelementptr inbounds [25 x i8], [25 x i8]* %s, i64 0, i64 20 *)
(*   %143 = load i8, i8* %arrayidx51.41040, align 1 *)
mov v143 s_20;
(*   %conv.i127.41042 = zext i8 %143 to i32 *)
cast v_conv_i127_41042@uint32 v143@uint8;
(*   %and.i128.41043 = and i32 %conv.i127.41042, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_41043 v_conv_i127_41042 (0x1)@uint32;
(*   %conv1.i129.41044 = zext i8 %142 to i32 *)
cast v_conv1_i129_41044@uint32 v142@uint8;
(*   %mul.i130.41045 = mul nsw i32 %and.i128.41043, %conv1.i129.41044 *)
mul v_mul_i130_41045 v_and_i128_41043 v_conv1_i129_41044;
(*   %conv3.i133.41046 = trunc i32 %mul.i130.41045 to i8 *)
split tmp_v_mul_i130_41045 v_conv3_i133_41046 v_mul_i130_41045 8;
vpc v_conv3_i133_41046@uint8 v_conv3_i133_41046@uint32;
(*   %conv4.i134.41047 = zext i8 %143 to i32 *)
cast v_conv4_i134_41047@uint32 v143@uint8;
(*   %shr.i135.41048 = ashr i32 %conv4.i134.41047, 1 *)
(* You may need to modify here *)
split v_shr_i135_41048 tmp_to_be_used v_conv4_i134_41047 1;
(*   %conv5.i136.41049 = trunc i32 %shr.i135.41048 to i8 *)
split tmp_v_shr_i135_41048 v_conv5_i136_41049 v_shr_i135_41048 8;
vpc v_conv5_i136_41049@uint8 v_conv5_i136_41049@uint32;
(*   %conv6.i137.41050 = zext i8 %142 to i32 *)
cast v_conv6_i137_41050@uint32 v142@uint8;
(*   %shl.i138.41051 = shl i32 %conv6.i137.41050, 1 *)
shls discard_231 v_shl_i138_41051 v_conv6_i137_41050 1;
(*   %conv7.i139.41052 = trunc i32 %shl.i138.41051 to i8 *)
split tmp_v_shl_i138_41051 v_conv7_i139_41052 v_shl_i138_41051 8;
vpc v_conv7_i139_41052@uint8 v_conv7_i139_41052@uint32;
(*   %conv.i127.1.41053 = zext i8 %conv5.i136.41049 to i32 *)
cast v_conv_i127_1_41053@uint32 v_conv5_i136_41049@uint8;
(*   %and.i128.1.41054 = and i32 %conv.i127.1.41053, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1_41054 v_conv_i127_1_41053 (0x1)@uint32;
(*   %conv1.i129.1.41055 = zext i8 %conv7.i139.41052 to i32 *)
cast v_conv1_i129_1_41055@uint32 v_conv7_i139_41052@uint8;
(*   %mul.i130.1.41056 = mul nsw i32 %and.i128.1.41054, %conv1.i129.1.41055 *)
mul v_mul_i130_1_41056 v_and_i128_1_41054 v_conv1_i129_1_41055;
(*   %conv2.i131.1.41057 = zext i8 %conv3.i133.41046 to i32 *)
cast v_conv2_i131_1_41057@uint32 v_conv3_i133_41046@uint8;
(*   %xor.i132.1.41058 = xor i32 %conv2.i131.1.41057, %mul.i130.1.41056 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_1_41058 v_conv2_i131_1_41057 v_mul_i130_1_41056;
(*   %conv3.i133.1.41059 = trunc i32 %xor.i132.1.41058 to i8 *)
split tmp_v_xor_i132_1_41058 v_conv3_i133_1_41059 v_xor_i132_1_41058 8;
vpc v_conv3_i133_1_41059@uint8 v_conv3_i133_1_41059@uint32;
(*   %conv4.i134.1.41060 = zext i8 %conv5.i136.41049 to i32 *)
cast v_conv4_i134_1_41060@uint32 v_conv5_i136_41049@uint8;
(*   %shr.i135.1.41061 = ashr i32 %conv4.i134.1.41060, 1 *)
(* You may need to modify here *)
split v_shr_i135_1_41061 tmp_to_be_used v_conv4_i134_1_41060 1;
(*   %conv5.i136.1.41062 = trunc i32 %shr.i135.1.41061 to i8 *)
split tmp_v_shr_i135_1_41061 v_conv5_i136_1_41062 v_shr_i135_1_41061 8;
vpc v_conv5_i136_1_41062@uint8 v_conv5_i136_1_41062@uint32;
(*   %conv6.i137.1.41063 = zext i8 %conv7.i139.41052 to i32 *)
cast v_conv6_i137_1_41063@uint32 v_conv7_i139_41052@uint8;
(*   %shl.i138.1.41064 = shl i32 %conv6.i137.1.41063, 1 *)
shls discard_232 v_shl_i138_1_41064 v_conv6_i137_1_41063 1;
(*   %conv7.i139.1.41065 = trunc i32 %shl.i138.1.41064 to i8 *)
split tmp_v_shl_i138_1_41064 v_conv7_i139_1_41065 v_shl_i138_1_41064 8;
vpc v_conv7_i139_1_41065@uint8 v_conv7_i139_1_41065@uint32;
(*   %conv.i127.2.41066 = zext i8 %conv5.i136.1.41062 to i32 *)
cast v_conv_i127_2_41066@uint32 v_conv5_i136_1_41062@uint8;
(*   %and.i128.2.41067 = and i32 %conv.i127.2.41066, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_2_41067 v_conv_i127_2_41066 (0x1)@uint32;
(*   %conv1.i129.2.41068 = zext i8 %conv7.i139.1.41065 to i32 *)
cast v_conv1_i129_2_41068@uint32 v_conv7_i139_1_41065@uint8;
(*   %mul.i130.2.41069 = mul nsw i32 %and.i128.2.41067, %conv1.i129.2.41068 *)
mul v_mul_i130_2_41069 v_and_i128_2_41067 v_conv1_i129_2_41068;
(*   %conv2.i131.2.41070 = zext i8 %conv3.i133.1.41059 to i32 *)
cast v_conv2_i131_2_41070@uint32 v_conv3_i133_1_41059@uint8;
(*   %xor.i132.2.41071 = xor i32 %conv2.i131.2.41070, %mul.i130.2.41069 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_2_41071 v_conv2_i131_2_41070 v_mul_i130_2_41069;
(*   %conv3.i133.2.41072 = trunc i32 %xor.i132.2.41071 to i8 *)
split tmp_v_xor_i132_2_41071 v_conv3_i133_2_41072 v_xor_i132_2_41071 8;
vpc v_conv3_i133_2_41072@uint8 v_conv3_i133_2_41072@uint32;
(*   %conv4.i134.2.41073 = zext i8 %conv5.i136.1.41062 to i32 *)
cast v_conv4_i134_2_41073@uint32 v_conv5_i136_1_41062@uint8;
(*   %shr.i135.2.41074 = ashr i32 %conv4.i134.2.41073, 1 *)
(* You may need to modify here *)
split v_shr_i135_2_41074 tmp_to_be_used v_conv4_i134_2_41073 1;
(*   %conv5.i136.2.41075 = trunc i32 %shr.i135.2.41074 to i8 *)
split tmp_v_shr_i135_2_41074 v_conv5_i136_2_41075 v_shr_i135_2_41074 8;
vpc v_conv5_i136_2_41075@uint8 v_conv5_i136_2_41075@uint32;
(*   %conv6.i137.2.41076 = zext i8 %conv7.i139.1.41065 to i32 *)
cast v_conv6_i137_2_41076@uint32 v_conv7_i139_1_41065@uint8;
(*   %shl.i138.2.41077 = shl i32 %conv6.i137.2.41076, 1 *)
shls discard_233 v_shl_i138_2_41077 v_conv6_i137_2_41076 1;
(*   %conv7.i139.2.41078 = trunc i32 %shl.i138.2.41077 to i8 *)
split tmp_v_shl_i138_2_41077 v_conv7_i139_2_41078 v_shl_i138_2_41077 8;
vpc v_conv7_i139_2_41078@uint8 v_conv7_i139_2_41078@uint32;
(*   %conv.i127.3.41079 = zext i8 %conv5.i136.2.41075 to i32 *)
cast v_conv_i127_3_41079@uint32 v_conv5_i136_2_41075@uint8;
(*   %and.i128.3.41080 = and i32 %conv.i127.3.41079, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_3_41080 v_conv_i127_3_41079 (0x1)@uint32;
(*   %conv1.i129.3.41081 = zext i8 %conv7.i139.2.41078 to i32 *)
cast v_conv1_i129_3_41081@uint32 v_conv7_i139_2_41078@uint8;
(*   %mul.i130.3.41082 = mul nsw i32 %and.i128.3.41080, %conv1.i129.3.41081 *)
mul v_mul_i130_3_41082 v_and_i128_3_41080 v_conv1_i129_3_41081;
(*   %conv2.i131.3.41083 = zext i8 %conv3.i133.2.41072 to i32 *)
cast v_conv2_i131_3_41083@uint32 v_conv3_i133_2_41072@uint8;
(*   %xor.i132.3.41084 = xor i32 %conv2.i131.3.41083, %mul.i130.3.41082 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_3_41084 v_conv2_i131_3_41083 v_mul_i130_3_41082;
(*   %conv3.i133.3.41085 = trunc i32 %xor.i132.3.41084 to i8 *)
split tmp_v_xor_i132_3_41084 v_conv3_i133_3_41085 v_xor_i132_3_41084 8;
vpc v_conv3_i133_3_41085@uint8 v_conv3_i133_3_41085@uint32;
(*   %conv4.i134.3.41086 = zext i8 %conv5.i136.2.41075 to i32 *)
cast v_conv4_i134_3_41086@uint32 v_conv5_i136_2_41075@uint8;
(*   %shr.i135.3.41087 = ashr i32 %conv4.i134.3.41086, 1 *)
(* You may need to modify here *)
split v_shr_i135_3_41087 tmp_to_be_used v_conv4_i134_3_41086 1;
(*   %conv5.i136.3.41088 = trunc i32 %shr.i135.3.41087 to i8 *)
split tmp_v_shr_i135_3_41087 v_conv5_i136_3_41088 v_shr_i135_3_41087 8;
vpc v_conv5_i136_3_41088@uint8 v_conv5_i136_3_41088@uint32;
(*   %conv6.i137.3.41089 = zext i8 %conv7.i139.2.41078 to i32 *)
cast v_conv6_i137_3_41089@uint32 v_conv7_i139_2_41078@uint8;
(*   %shl.i138.3.41090 = shl i32 %conv6.i137.3.41089, 1 *)
shls discard_234 v_shl_i138_3_41090 v_conv6_i137_3_41089 1;
(*   %conv7.i139.3.41091 = trunc i32 %shl.i138.3.41090 to i8 *)
split tmp_v_shl_i138_3_41090 v_conv7_i139_3_41091 v_shl_i138_3_41090 8;
vpc v_conv7_i139_3_41091@uint8 v_conv7_i139_3_41091@uint32;
(*   %conv.i127.4.41092 = zext i8 %conv5.i136.3.41088 to i32 *)
cast v_conv_i127_4_41092@uint32 v_conv5_i136_3_41088@uint8;
(*   %and.i128.4.41093 = and i32 %conv.i127.4.41092, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_4_41093 v_conv_i127_4_41092 (0x1)@uint32;
(*   %conv1.i129.4.41094 = zext i8 %conv7.i139.3.41091 to i32 *)
cast v_conv1_i129_4_41094@uint32 v_conv7_i139_3_41091@uint8;
(*   %mul.i130.4.41095 = mul nsw i32 %and.i128.4.41093, %conv1.i129.4.41094 *)
mul v_mul_i130_4_41095 v_and_i128_4_41093 v_conv1_i129_4_41094;
(*   %conv2.i131.4.41096 = zext i8 %conv3.i133.3.41085 to i32 *)
cast v_conv2_i131_4_41096@uint32 v_conv3_i133_3_41085@uint8;
(*   %xor.i132.4.41097 = xor i32 %conv2.i131.4.41096, %mul.i130.4.41095 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_4_41097 v_conv2_i131_4_41096 v_mul_i130_4_41095;
(*   %conv3.i133.4.41098 = trunc i32 %xor.i132.4.41097 to i8 *)
split tmp_v_xor_i132_4_41097 v_conv3_i133_4_41098 v_xor_i132_4_41097 8;
vpc v_conv3_i133_4_41098@uint8 v_conv3_i133_4_41098@uint32;
(*   %conv4.i134.4.41099 = zext i8 %conv5.i136.3.41088 to i32 *)
cast v_conv4_i134_4_41099@uint32 v_conv5_i136_3_41088@uint8;
(*   %shr.i135.4.41100 = ashr i32 %conv4.i134.4.41099, 1 *)
(* You may need to modify here *)
split v_shr_i135_4_41100 tmp_to_be_used v_conv4_i134_4_41099 1;
(*   %conv5.i136.4.41101 = trunc i32 %shr.i135.4.41100 to i8 *)
split tmp_v_shr_i135_4_41100 v_conv5_i136_4_41101 v_shr_i135_4_41100 8;
vpc v_conv5_i136_4_41101@uint8 v_conv5_i136_4_41101@uint32;
(*   %conv6.i137.4.41102 = zext i8 %conv7.i139.3.41091 to i32 *)
cast v_conv6_i137_4_41102@uint32 v_conv7_i139_3_41091@uint8;
(*   %shl.i138.4.41103 = shl i32 %conv6.i137.4.41102, 1 *)
shls discard_235 v_shl_i138_4_41103 v_conv6_i137_4_41102 1;
(*   %conv7.i139.4.41104 = trunc i32 %shl.i138.4.41103 to i8 *)
split tmp_v_shl_i138_4_41103 v_conv7_i139_4_41104 v_shl_i138_4_41103 8;
vpc v_conv7_i139_4_41104@uint8 v_conv7_i139_4_41104@uint32;
(*   %conv.i127.5.41105 = zext i8 %conv5.i136.4.41101 to i32 *)
cast v_conv_i127_5_41105@uint32 v_conv5_i136_4_41101@uint8;
(*   %and.i128.5.41106 = and i32 %conv.i127.5.41105, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_5_41106 v_conv_i127_5_41105 (0x1)@uint32;
(*   %conv1.i129.5.41107 = zext i8 %conv7.i139.4.41104 to i32 *)
cast v_conv1_i129_5_41107@uint32 v_conv7_i139_4_41104@uint8;
(*   %mul.i130.5.41108 = mul nsw i32 %and.i128.5.41106, %conv1.i129.5.41107 *)
mul v_mul_i130_5_41108 v_and_i128_5_41106 v_conv1_i129_5_41107;
(*   %conv2.i131.5.41109 = zext i8 %conv3.i133.4.41098 to i32 *)
cast v_conv2_i131_5_41109@uint32 v_conv3_i133_4_41098@uint8;
(*   %xor.i132.5.41110 = xor i32 %conv2.i131.5.41109, %mul.i130.5.41108 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_5_41110 v_conv2_i131_5_41109 v_mul_i130_5_41108;
(*   %conv3.i133.5.41111 = trunc i32 %xor.i132.5.41110 to i8 *)
split tmp_v_xor_i132_5_41110 v_conv3_i133_5_41111 v_xor_i132_5_41110 8;
vpc v_conv3_i133_5_41111@uint8 v_conv3_i133_5_41111@uint32;
(*   %conv4.i134.5.41112 = zext i8 %conv5.i136.4.41101 to i32 *)
cast v_conv4_i134_5_41112@uint32 v_conv5_i136_4_41101@uint8;
(*   %shr.i135.5.41113 = ashr i32 %conv4.i134.5.41112, 1 *)
(* You may need to modify here *)
split v_shr_i135_5_41113 tmp_to_be_used v_conv4_i134_5_41112 1;
(*   %conv5.i136.5.41114 = trunc i32 %shr.i135.5.41113 to i8 *)
split tmp_v_shr_i135_5_41113 v_conv5_i136_5_41114 v_shr_i135_5_41113 8;
vpc v_conv5_i136_5_41114@uint8 v_conv5_i136_5_41114@uint32;
(*   %conv6.i137.5.41115 = zext i8 %conv7.i139.4.41104 to i32 *)
cast v_conv6_i137_5_41115@uint32 v_conv7_i139_4_41104@uint8;
(*   %shl.i138.5.41116 = shl i32 %conv6.i137.5.41115, 1 *)
shls discard_236 v_shl_i138_5_41116 v_conv6_i137_5_41115 1;
(*   %conv7.i139.5.41117 = trunc i32 %shl.i138.5.41116 to i8 *)
split tmp_v_shl_i138_5_41116 v_conv7_i139_5_41117 v_shl_i138_5_41116 8;
vpc v_conv7_i139_5_41117@uint8 v_conv7_i139_5_41117@uint32;
(*   %conv.i127.6.41118 = zext i8 %conv5.i136.5.41114 to i32 *)
cast v_conv_i127_6_41118@uint32 v_conv5_i136_5_41114@uint8;
(*   %and.i128.6.41119 = and i32 %conv.i127.6.41118, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_6_41119 v_conv_i127_6_41118 (0x1)@uint32;
(*   %conv1.i129.6.41120 = zext i8 %conv7.i139.5.41117 to i32 *)
cast v_conv1_i129_6_41120@uint32 v_conv7_i139_5_41117@uint8;
(*   %mul.i130.6.41121 = mul nsw i32 %and.i128.6.41119, %conv1.i129.6.41120 *)
mul v_mul_i130_6_41121 v_and_i128_6_41119 v_conv1_i129_6_41120;
(*   %conv2.i131.6.41122 = zext i8 %conv3.i133.5.41111 to i32 *)
cast v_conv2_i131_6_41122@uint32 v_conv3_i133_5_41111@uint8;
(*   %xor.i132.6.41123 = xor i32 %conv2.i131.6.41122, %mul.i130.6.41121 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_6_41123 v_conv2_i131_6_41122 v_mul_i130_6_41121;
(*   %conv3.i133.6.41124 = trunc i32 %xor.i132.6.41123 to i8 *)
split tmp_v_xor_i132_6_41123 v_conv3_i133_6_41124 v_xor_i132_6_41123 8;
vpc v_conv3_i133_6_41124@uint8 v_conv3_i133_6_41124@uint32;
(*   %conv4.i134.6.41125 = zext i8 %conv5.i136.5.41114 to i32 *)
cast v_conv4_i134_6_41125@uint32 v_conv5_i136_5_41114@uint8;
(*   %shr.i135.6.41126 = ashr i32 %conv4.i134.6.41125, 1 *)
(* You may need to modify here *)
split v_shr_i135_6_41126 tmp_to_be_used v_conv4_i134_6_41125 1;
(*   %conv5.i136.6.41127 = trunc i32 %shr.i135.6.41126 to i8 *)
split tmp_v_shr_i135_6_41126 v_conv5_i136_6_41127 v_shr_i135_6_41126 8;
vpc v_conv5_i136_6_41127@uint8 v_conv5_i136_6_41127@uint32;
(*   %conv6.i137.6.41128 = zext i8 %conv7.i139.5.41117 to i32 *)
cast v_conv6_i137_6_41128@uint32 v_conv7_i139_5_41117@uint8;
(*   %shl.i138.6.41129 = shl i32 %conv6.i137.6.41128, 1 *)
shls discard_237 v_shl_i138_6_41129 v_conv6_i137_6_41128 1;
(*   %conv7.i139.6.41130 = trunc i32 %shl.i138.6.41129 to i8 *)
split tmp_v_shl_i138_6_41129 v_conv7_i139_6_41130 v_shl_i138_6_41129 8;
vpc v_conv7_i139_6_41130@uint8 v_conv7_i139_6_41130@uint32;
(*   %conv.i127.7.41131 = zext i8 %conv5.i136.6.41127 to i32 *)
cast v_conv_i127_7_41131@uint32 v_conv5_i136_6_41127@uint8;
(*   %and.i128.7.41132 = and i32 %conv.i127.7.41131, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_7_41132 v_conv_i127_7_41131 (0x1)@uint32;
(*   %conv1.i129.7.41133 = zext i8 %conv7.i139.6.41130 to i32 *)
cast v_conv1_i129_7_41133@uint32 v_conv7_i139_6_41130@uint8;
(*   %mul.i130.7.41134 = mul nsw i32 %and.i128.7.41132, %conv1.i129.7.41133 *)
mul v_mul_i130_7_41134 v_and_i128_7_41132 v_conv1_i129_7_41133;
(*   %conv2.i131.7.41135 = zext i8 %conv3.i133.6.41124 to i32 *)
cast v_conv2_i131_7_41135@uint32 v_conv3_i133_6_41124@uint8;
(*   %xor.i132.7.41136 = xor i32 %conv2.i131.7.41135, %mul.i130.7.41134 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_7_41136 v_conv2_i131_7_41135 v_mul_i130_7_41134;
(*   %conv3.i133.7.41137 = trunc i32 %xor.i132.7.41136 to i8 *)
split tmp_v_xor_i132_7_41136 v_conv3_i133_7_41137 v_xor_i132_7_41136 8;
vpc v_conv3_i133_7_41137@uint8 v_conv3_i133_7_41137@uint32;
(*   %arrayidx56.41141 = getelementptr inbounds [25 x i8], [25 x i8]* %p1, i64 0, i64 20 *)
(*   store i8 %conv3.i133.7.41137, i8* %arrayidx56.41141, align 1 *)
mov p1_20 v_conv3_i133_7_41137;
(*   %arrayidx60.41143 = getelementptr inbounds [25 x i8], [25 x i8]* %p0, i64 0, i64 20 *)
(*   %144 = load i8, i8* %arrayidx60.41143, align 1 *)
mov v144 p0_20;
(*   %conv61.41144 = zext i8 %144 to i32 *)
cast v_conv61_41144@uint32 v144@uint8;
(*   %arrayidx65.41146 = getelementptr inbounds [25 x i8], [25 x i8]* %p1, i64 0, i64 20 *)
(*   %145 = load i8, i8* %arrayidx65.41146, align 1 *)
mov v145 p1_20;
(*   %conv66.41147 = zext i8 %145 to i32 *)
cast v_conv66_41147@uint32 v145@uint8;
(*   %xor67.41148 = xor i32 %conv61.41144, %conv66.41147 *)
(* You may need to modify here *)
xor uint32 v_xor67_41148 v_conv61_41144 v_conv66_41147;
(*   %conv68.41149 = trunc i32 %xor67.41148 to i8 *)
split tmp_v_xor67_41148 v_conv68_41149 v_xor67_41148 8;
vpc v_conv68_41149@uint8 v_conv68_41149@uint32;
(*   %arrayidx72.41151 = getelementptr inbounds [25 x i8], [25 x i8]* %z, i64 0, i64 20 *)
(*   store i8 %conv68.41149, i8* %arrayidx72.41151, align 1 *)
mov z_20 v_conv68_41149;
(*   %arrayidx22.1.4 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %146 = load i8, i8* %arrayidx22.1.4, align 1 *)
mov v146 b_1;
(*   %conv.1.4 = zext i8 %146 to i32 *)
cast v_conv_1_4@uint32 v146@uint8;
(*   %arrayidx26.1.4 = getelementptr inbounds i8, i8* %r, i64 21 *)
(*   %147 = load i8, i8* %arrayidx26.1.4, align 1 *)
mov v147 r_21;
(*   %conv27.1.4 = zext i8 %147 to i32 *)
cast v_conv27_1_4@uint32 v147@uint8;
(*   %xor.1.4 = xor i32 %conv.1.4, %conv27.1.4 *)
(* You may need to modify here *)
xor uint32 v_xor_1_4 v_conv_1_4 v_conv27_1_4;
(*   %conv28.1.4 = trunc i32 %xor.1.4 to i8 *)
split tmp_v_xor_1_4 v_conv28_1_4 v_xor_1_4 8;
vpc v_conv28_1_4@uint8 v_conv28_1_4@uint32;
(*   %arrayidx32.1.4 = getelementptr inbounds [25 x i8], [25 x i8]* %s, i64 0, i64 21 *)
(*   store i8 %conv28.1.4, i8* %arrayidx32.1.4, align 1 *)
mov s_21 v_conv28_1_4;
(*   %148 = load i8, i8* %arrayidx34.4, align 1 *)
mov v148 a_4;
(*   %conv35.1.4 = zext i8 %148 to i32 *)
cast v_conv35_1_4@uint32 v148@uint8;
(*   %xor36.1.4 = xor i32 %conv35.1.4, 1 *)
(* You may need to modify here *)
xor uint32 v_xor36_1_4 v_conv35_1_4 (0x1)@uint32;
(*   %conv37.1.4 = trunc i32 %xor36.1.4 to i8 *)
split tmp_v_xor36_1_4 v_conv37_1_4 v_xor36_1_4 8;
vpc v_conv37_1_4@uint8 v_conv37_1_4@uint32;
(*   %arrayidx41.1.4 = getelementptr inbounds i8, i8* %r, i64 21 *)
(*   %149 = load i8, i8* %arrayidx41.1.4, align 1 *)
mov v149 r_21;
(*   %conv.i.1143.4 = zext i8 %149 to i32 *)
cast v_conv_i_1143_4@uint32 v149@uint8;
(*   %and.i.1144.4 = and i32 %conv.i.1143.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1144_4 v_conv_i_1143_4 (0x1)@uint32;
(*   %conv1.i.1145.4 = zext i8 %conv37.1.4 to i32 *)
cast v_conv1_i_1145_4@uint32 v_conv37_1_4@uint8;
(*   %mul.i.1146.4 = mul nsw i32 %and.i.1144.4, %conv1.i.1145.4 *)
mul v_mul_i_1146_4 v_and_i_1144_4 v_conv1_i_1145_4;
(*   %conv3.i.1147.4 = trunc i32 %mul.i.1146.4 to i8 *)
split tmp_v_mul_i_1146_4 v_conv3_i_1147_4 v_mul_i_1146_4 8;
vpc v_conv3_i_1147_4@uint8 v_conv3_i_1147_4@uint32;
(*   %conv4.i.1148.4 = zext i8 %149 to i32 *)
cast v_conv4_i_1148_4@uint32 v149@uint8;
(*   %shr.i.1149.4 = ashr i32 %conv4.i.1148.4, 1 *)
(* You may need to modify here *)
split v_shr_i_1149_4 tmp_to_be_used v_conv4_i_1148_4 1;
(*   %conv5.i.1150.4 = trunc i32 %shr.i.1149.4 to i8 *)
split tmp_v_shr_i_1149_4 v_conv5_i_1150_4 v_shr_i_1149_4 8;
vpc v_conv5_i_1150_4@uint8 v_conv5_i_1150_4@uint32;
(*   %conv6.i.1151.4 = zext i8 %conv37.1.4 to i32 *)
cast v_conv6_i_1151_4@uint32 v_conv37_1_4@uint8;
(*   %shl.i.1152.4 = shl i32 %conv6.i.1151.4, 1 *)
shls discard_238 v_shl_i_1152_4 v_conv6_i_1151_4 1;
(*   %conv7.i.1153.4 = trunc i32 %shl.i.1152.4 to i8 *)
split tmp_v_shl_i_1152_4 v_conv7_i_1153_4 v_shl_i_1152_4 8;
vpc v_conv7_i_1153_4@uint8 v_conv7_i_1153_4@uint32;
(*   %conv.i.1.1.4 = zext i8 %conv5.i.1150.4 to i32 *)
cast v_conv_i_1_1_4@uint32 v_conv5_i_1150_4@uint8;
(*   %and.i.1.1.4 = and i32 %conv.i.1.1.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_1_4 v_conv_i_1_1_4 (0x1)@uint32;
(*   %conv1.i.1.1.4 = zext i8 %conv7.i.1153.4 to i32 *)
cast v_conv1_i_1_1_4@uint32 v_conv7_i_1153_4@uint8;
(*   %mul.i.1.1.4 = mul nsw i32 %and.i.1.1.4, %conv1.i.1.1.4 *)
mul v_mul_i_1_1_4 v_and_i_1_1_4 v_conv1_i_1_1_4;
(*   %conv2.i.1.1.4 = zext i8 %conv3.i.1147.4 to i32 *)
cast v_conv2_i_1_1_4@uint32 v_conv3_i_1147_4@uint8;
(*   %xor.i.1.1.4 = xor i32 %conv2.i.1.1.4, %mul.i.1.1.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_1_4 v_conv2_i_1_1_4 v_mul_i_1_1_4;
(*   %conv3.i.1.1.4 = trunc i32 %xor.i.1.1.4 to i8 *)
split tmp_v_xor_i_1_1_4 v_conv3_i_1_1_4 v_xor_i_1_1_4 8;
vpc v_conv3_i_1_1_4@uint8 v_conv3_i_1_1_4@uint32;
(*   %conv4.i.1.1.4 = zext i8 %conv5.i.1150.4 to i32 *)
cast v_conv4_i_1_1_4@uint32 v_conv5_i_1150_4@uint8;
(*   %shr.i.1.1.4 = ashr i32 %conv4.i.1.1.4, 1 *)
(* You may need to modify here *)
split v_shr_i_1_1_4 tmp_to_be_used v_conv4_i_1_1_4 1;
(*   %conv5.i.1.1.4 = trunc i32 %shr.i.1.1.4 to i8 *)
split tmp_v_shr_i_1_1_4 v_conv5_i_1_1_4 v_shr_i_1_1_4 8;
vpc v_conv5_i_1_1_4@uint8 v_conv5_i_1_1_4@uint32;
(*   %conv6.i.1.1.4 = zext i8 %conv7.i.1153.4 to i32 *)
cast v_conv6_i_1_1_4@uint32 v_conv7_i_1153_4@uint8;
(*   %shl.i.1.1.4 = shl i32 %conv6.i.1.1.4, 1 *)
shls discard_239 v_shl_i_1_1_4 v_conv6_i_1_1_4 1;
(*   %conv7.i.1.1.4 = trunc i32 %shl.i.1.1.4 to i8 *)
split tmp_v_shl_i_1_1_4 v_conv7_i_1_1_4 v_shl_i_1_1_4 8;
vpc v_conv7_i_1_1_4@uint8 v_conv7_i_1_1_4@uint32;
(*   %conv.i.2.1.4 = zext i8 %conv5.i.1.1.4 to i32 *)
cast v_conv_i_2_1_4@uint32 v_conv5_i_1_1_4@uint8;
(*   %and.i.2.1.4 = and i32 %conv.i.2.1.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_1_4 v_conv_i_2_1_4 (0x1)@uint32;
(*   %conv1.i.2.1.4 = zext i8 %conv7.i.1.1.4 to i32 *)
cast v_conv1_i_2_1_4@uint32 v_conv7_i_1_1_4@uint8;
(*   %mul.i.2.1.4 = mul nsw i32 %and.i.2.1.4, %conv1.i.2.1.4 *)
mul v_mul_i_2_1_4 v_and_i_2_1_4 v_conv1_i_2_1_4;
(*   %conv2.i.2.1.4 = zext i8 %conv3.i.1.1.4 to i32 *)
cast v_conv2_i_2_1_4@uint32 v_conv3_i_1_1_4@uint8;
(*   %xor.i.2.1.4 = xor i32 %conv2.i.2.1.4, %mul.i.2.1.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_1_4 v_conv2_i_2_1_4 v_mul_i_2_1_4;
(*   %conv3.i.2.1.4 = trunc i32 %xor.i.2.1.4 to i8 *)
split tmp_v_xor_i_2_1_4 v_conv3_i_2_1_4 v_xor_i_2_1_4 8;
vpc v_conv3_i_2_1_4@uint8 v_conv3_i_2_1_4@uint32;
(*   %conv4.i.2.1.4 = zext i8 %conv5.i.1.1.4 to i32 *)
cast v_conv4_i_2_1_4@uint32 v_conv5_i_1_1_4@uint8;
(*   %shr.i.2.1.4 = ashr i32 %conv4.i.2.1.4, 1 *)
(* You may need to modify here *)
split v_shr_i_2_1_4 tmp_to_be_used v_conv4_i_2_1_4 1;
(*   %conv5.i.2.1.4 = trunc i32 %shr.i.2.1.4 to i8 *)
split tmp_v_shr_i_2_1_4 v_conv5_i_2_1_4 v_shr_i_2_1_4 8;
vpc v_conv5_i_2_1_4@uint8 v_conv5_i_2_1_4@uint32;
(*   %conv6.i.2.1.4 = zext i8 %conv7.i.1.1.4 to i32 *)
cast v_conv6_i_2_1_4@uint32 v_conv7_i_1_1_4@uint8;
(*   %shl.i.2.1.4 = shl i32 %conv6.i.2.1.4, 1 *)
shls discard_240 v_shl_i_2_1_4 v_conv6_i_2_1_4 1;
(*   %conv7.i.2.1.4 = trunc i32 %shl.i.2.1.4 to i8 *)
split tmp_v_shl_i_2_1_4 v_conv7_i_2_1_4 v_shl_i_2_1_4 8;
vpc v_conv7_i_2_1_4@uint8 v_conv7_i_2_1_4@uint32;
(*   %conv.i.3.1.4 = zext i8 %conv5.i.2.1.4 to i32 *)
cast v_conv_i_3_1_4@uint32 v_conv5_i_2_1_4@uint8;
(*   %and.i.3.1.4 = and i32 %conv.i.3.1.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_1_4 v_conv_i_3_1_4 (0x1)@uint32;
(*   %conv1.i.3.1.4 = zext i8 %conv7.i.2.1.4 to i32 *)
cast v_conv1_i_3_1_4@uint32 v_conv7_i_2_1_4@uint8;
(*   %mul.i.3.1.4 = mul nsw i32 %and.i.3.1.4, %conv1.i.3.1.4 *)
mul v_mul_i_3_1_4 v_and_i_3_1_4 v_conv1_i_3_1_4;
(*   %conv2.i.3.1.4 = zext i8 %conv3.i.2.1.4 to i32 *)
cast v_conv2_i_3_1_4@uint32 v_conv3_i_2_1_4@uint8;
(*   %xor.i.3.1.4 = xor i32 %conv2.i.3.1.4, %mul.i.3.1.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_1_4 v_conv2_i_3_1_4 v_mul_i_3_1_4;
(*   %conv3.i.3.1.4 = trunc i32 %xor.i.3.1.4 to i8 *)
split tmp_v_xor_i_3_1_4 v_conv3_i_3_1_4 v_xor_i_3_1_4 8;
vpc v_conv3_i_3_1_4@uint8 v_conv3_i_3_1_4@uint32;
(*   %conv4.i.3.1.4 = zext i8 %conv5.i.2.1.4 to i32 *)
cast v_conv4_i_3_1_4@uint32 v_conv5_i_2_1_4@uint8;
(*   %shr.i.3.1.4 = ashr i32 %conv4.i.3.1.4, 1 *)
(* You may need to modify here *)
split v_shr_i_3_1_4 tmp_to_be_used v_conv4_i_3_1_4 1;
(*   %conv5.i.3.1.4 = trunc i32 %shr.i.3.1.4 to i8 *)
split tmp_v_shr_i_3_1_4 v_conv5_i_3_1_4 v_shr_i_3_1_4 8;
vpc v_conv5_i_3_1_4@uint8 v_conv5_i_3_1_4@uint32;
(*   %conv6.i.3.1.4 = zext i8 %conv7.i.2.1.4 to i32 *)
cast v_conv6_i_3_1_4@uint32 v_conv7_i_2_1_4@uint8;
(*   %shl.i.3.1.4 = shl i32 %conv6.i.3.1.4, 1 *)
shls discard_241 v_shl_i_3_1_4 v_conv6_i_3_1_4 1;
(*   %conv7.i.3.1.4 = trunc i32 %shl.i.3.1.4 to i8 *)
split tmp_v_shl_i_3_1_4 v_conv7_i_3_1_4 v_shl_i_3_1_4 8;
vpc v_conv7_i_3_1_4@uint8 v_conv7_i_3_1_4@uint32;
(*   %conv.i.4.1.4 = zext i8 %conv5.i.3.1.4 to i32 *)
cast v_conv_i_4_1_4@uint32 v_conv5_i_3_1_4@uint8;
(*   %and.i.4.1.4 = and i32 %conv.i.4.1.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_1_4 v_conv_i_4_1_4 (0x1)@uint32;
(*   %conv1.i.4.1.4 = zext i8 %conv7.i.3.1.4 to i32 *)
cast v_conv1_i_4_1_4@uint32 v_conv7_i_3_1_4@uint8;
(*   %mul.i.4.1.4 = mul nsw i32 %and.i.4.1.4, %conv1.i.4.1.4 *)
mul v_mul_i_4_1_4 v_and_i_4_1_4 v_conv1_i_4_1_4;
(*   %conv2.i.4.1.4 = zext i8 %conv3.i.3.1.4 to i32 *)
cast v_conv2_i_4_1_4@uint32 v_conv3_i_3_1_4@uint8;
(*   %xor.i.4.1.4 = xor i32 %conv2.i.4.1.4, %mul.i.4.1.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_1_4 v_conv2_i_4_1_4 v_mul_i_4_1_4;
(*   %conv3.i.4.1.4 = trunc i32 %xor.i.4.1.4 to i8 *)
split tmp_v_xor_i_4_1_4 v_conv3_i_4_1_4 v_xor_i_4_1_4 8;
vpc v_conv3_i_4_1_4@uint8 v_conv3_i_4_1_4@uint32;
(*   %conv4.i.4.1.4 = zext i8 %conv5.i.3.1.4 to i32 *)
cast v_conv4_i_4_1_4@uint32 v_conv5_i_3_1_4@uint8;
(*   %shr.i.4.1.4 = ashr i32 %conv4.i.4.1.4, 1 *)
(* You may need to modify here *)
split v_shr_i_4_1_4 tmp_to_be_used v_conv4_i_4_1_4 1;
(*   %conv5.i.4.1.4 = trunc i32 %shr.i.4.1.4 to i8 *)
split tmp_v_shr_i_4_1_4 v_conv5_i_4_1_4 v_shr_i_4_1_4 8;
vpc v_conv5_i_4_1_4@uint8 v_conv5_i_4_1_4@uint32;
(*   %conv6.i.4.1.4 = zext i8 %conv7.i.3.1.4 to i32 *)
cast v_conv6_i_4_1_4@uint32 v_conv7_i_3_1_4@uint8;
(*   %shl.i.4.1.4 = shl i32 %conv6.i.4.1.4, 1 *)
shls discard_242 v_shl_i_4_1_4 v_conv6_i_4_1_4 1;
(*   %conv7.i.4.1.4 = trunc i32 %shl.i.4.1.4 to i8 *)
split tmp_v_shl_i_4_1_4 v_conv7_i_4_1_4 v_shl_i_4_1_4 8;
vpc v_conv7_i_4_1_4@uint8 v_conv7_i_4_1_4@uint32;
(*   %conv.i.5.1.4 = zext i8 %conv5.i.4.1.4 to i32 *)
cast v_conv_i_5_1_4@uint32 v_conv5_i_4_1_4@uint8;
(*   %and.i.5.1.4 = and i32 %conv.i.5.1.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_1_4 v_conv_i_5_1_4 (0x1)@uint32;
(*   %conv1.i.5.1.4 = zext i8 %conv7.i.4.1.4 to i32 *)
cast v_conv1_i_5_1_4@uint32 v_conv7_i_4_1_4@uint8;
(*   %mul.i.5.1.4 = mul nsw i32 %and.i.5.1.4, %conv1.i.5.1.4 *)
mul v_mul_i_5_1_4 v_and_i_5_1_4 v_conv1_i_5_1_4;
(*   %conv2.i.5.1.4 = zext i8 %conv3.i.4.1.4 to i32 *)
cast v_conv2_i_5_1_4@uint32 v_conv3_i_4_1_4@uint8;
(*   %xor.i.5.1.4 = xor i32 %conv2.i.5.1.4, %mul.i.5.1.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_1_4 v_conv2_i_5_1_4 v_mul_i_5_1_4;
(*   %conv3.i.5.1.4 = trunc i32 %xor.i.5.1.4 to i8 *)
split tmp_v_xor_i_5_1_4 v_conv3_i_5_1_4 v_xor_i_5_1_4 8;
vpc v_conv3_i_5_1_4@uint8 v_conv3_i_5_1_4@uint32;
(*   %conv4.i.5.1.4 = zext i8 %conv5.i.4.1.4 to i32 *)
cast v_conv4_i_5_1_4@uint32 v_conv5_i_4_1_4@uint8;
(*   %shr.i.5.1.4 = ashr i32 %conv4.i.5.1.4, 1 *)
(* You may need to modify here *)
split v_shr_i_5_1_4 tmp_to_be_used v_conv4_i_5_1_4 1;
(*   %conv5.i.5.1.4 = trunc i32 %shr.i.5.1.4 to i8 *)
split tmp_v_shr_i_5_1_4 v_conv5_i_5_1_4 v_shr_i_5_1_4 8;
vpc v_conv5_i_5_1_4@uint8 v_conv5_i_5_1_4@uint32;
(*   %conv6.i.5.1.4 = zext i8 %conv7.i.4.1.4 to i32 *)
cast v_conv6_i_5_1_4@uint32 v_conv7_i_4_1_4@uint8;
(*   %shl.i.5.1.4 = shl i32 %conv6.i.5.1.4, 1 *)
shls discard_243 v_shl_i_5_1_4 v_conv6_i_5_1_4 1;
(*   %conv7.i.5.1.4 = trunc i32 %shl.i.5.1.4 to i8 *)
split tmp_v_shl_i_5_1_4 v_conv7_i_5_1_4 v_shl_i_5_1_4 8;
vpc v_conv7_i_5_1_4@uint8 v_conv7_i_5_1_4@uint32;
(*   %conv.i.6.1.4 = zext i8 %conv5.i.5.1.4 to i32 *)
cast v_conv_i_6_1_4@uint32 v_conv5_i_5_1_4@uint8;
(*   %and.i.6.1.4 = and i32 %conv.i.6.1.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_1_4 v_conv_i_6_1_4 (0x1)@uint32;
(*   %conv1.i.6.1.4 = zext i8 %conv7.i.5.1.4 to i32 *)
cast v_conv1_i_6_1_4@uint32 v_conv7_i_5_1_4@uint8;
(*   %mul.i.6.1.4 = mul nsw i32 %and.i.6.1.4, %conv1.i.6.1.4 *)
mul v_mul_i_6_1_4 v_and_i_6_1_4 v_conv1_i_6_1_4;
(*   %conv2.i.6.1.4 = zext i8 %conv3.i.5.1.4 to i32 *)
cast v_conv2_i_6_1_4@uint32 v_conv3_i_5_1_4@uint8;
(*   %xor.i.6.1.4 = xor i32 %conv2.i.6.1.4, %mul.i.6.1.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_1_4 v_conv2_i_6_1_4 v_mul_i_6_1_4;
(*   %conv3.i.6.1.4 = trunc i32 %xor.i.6.1.4 to i8 *)
split tmp_v_xor_i_6_1_4 v_conv3_i_6_1_4 v_xor_i_6_1_4 8;
vpc v_conv3_i_6_1_4@uint8 v_conv3_i_6_1_4@uint32;
(*   %conv4.i.6.1.4 = zext i8 %conv5.i.5.1.4 to i32 *)
cast v_conv4_i_6_1_4@uint32 v_conv5_i_5_1_4@uint8;
(*   %shr.i.6.1.4 = ashr i32 %conv4.i.6.1.4, 1 *)
(* You may need to modify here *)
split v_shr_i_6_1_4 tmp_to_be_used v_conv4_i_6_1_4 1;
(*   %conv5.i.6.1.4 = trunc i32 %shr.i.6.1.4 to i8 *)
split tmp_v_shr_i_6_1_4 v_conv5_i_6_1_4 v_shr_i_6_1_4 8;
vpc v_conv5_i_6_1_4@uint8 v_conv5_i_6_1_4@uint32;
(*   %conv6.i.6.1.4 = zext i8 %conv7.i.5.1.4 to i32 *)
cast v_conv6_i_6_1_4@uint32 v_conv7_i_5_1_4@uint8;
(*   %shl.i.6.1.4 = shl i32 %conv6.i.6.1.4, 1 *)
shls discard_244 v_shl_i_6_1_4 v_conv6_i_6_1_4 1;
(*   %conv7.i.6.1.4 = trunc i32 %shl.i.6.1.4 to i8 *)
split tmp_v_shl_i_6_1_4 v_conv7_i_6_1_4 v_shl_i_6_1_4 8;
vpc v_conv7_i_6_1_4@uint8 v_conv7_i_6_1_4@uint32;
(*   %conv.i.7.1.4 = zext i8 %conv5.i.6.1.4 to i32 *)
cast v_conv_i_7_1_4@uint32 v_conv5_i_6_1_4@uint8;
(*   %and.i.7.1.4 = and i32 %conv.i.7.1.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_1_4 v_conv_i_7_1_4 (0x1)@uint32;
(*   %conv1.i.7.1.4 = zext i8 %conv7.i.6.1.4 to i32 *)
cast v_conv1_i_7_1_4@uint32 v_conv7_i_6_1_4@uint8;
(*   %mul.i.7.1.4 = mul nsw i32 %and.i.7.1.4, %conv1.i.7.1.4 *)
mul v_mul_i_7_1_4 v_and_i_7_1_4 v_conv1_i_7_1_4;
(*   %conv2.i.7.1.4 = zext i8 %conv3.i.6.1.4 to i32 *)
cast v_conv2_i_7_1_4@uint32 v_conv3_i_6_1_4@uint8;
(*   %xor.i.7.1.4 = xor i32 %conv2.i.7.1.4, %mul.i.7.1.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_1_4 v_conv2_i_7_1_4 v_mul_i_7_1_4;
(*   %conv3.i.7.1.4 = trunc i32 %xor.i.7.1.4 to i8 *)
split tmp_v_xor_i_7_1_4 v_conv3_i_7_1_4 v_xor_i_7_1_4 8;
vpc v_conv3_i_7_1_4@uint8 v_conv3_i_7_1_4@uint32;
(*   %arrayidx45.1.4 = getelementptr inbounds [25 x i8], [25 x i8]* %p0, i64 0, i64 21 *)
(*   store i8 %conv3.i.7.1.4, i8* %arrayidx45.1.4, align 1 *)
mov p0_21 v_conv3_i_7_1_4;
(*   %150 = load i8, i8* %arrayidx47.4, align 1 *)
mov v150 a_4;
(*   %arrayidx51.1.4 = getelementptr inbounds [25 x i8], [25 x i8]* %s, i64 0, i64 21 *)
(*   %151 = load i8, i8* %arrayidx51.1.4, align 1 *)
mov v151 s_21;
(*   %conv.i127.1154.4 = zext i8 %151 to i32 *)
cast v_conv_i127_1154_4@uint32 v151@uint8;
(*   %and.i128.1155.4 = and i32 %conv.i127.1154.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1155_4 v_conv_i127_1154_4 (0x1)@uint32;
(*   %conv1.i129.1156.4 = zext i8 %150 to i32 *)
cast v_conv1_i129_1156_4@uint32 v150@uint8;
(*   %mul.i130.1157.4 = mul nsw i32 %and.i128.1155.4, %conv1.i129.1156.4 *)
mul v_mul_i130_1157_4 v_and_i128_1155_4 v_conv1_i129_1156_4;
(*   %conv3.i133.1158.4 = trunc i32 %mul.i130.1157.4 to i8 *)
split tmp_v_mul_i130_1157_4 v_conv3_i133_1158_4 v_mul_i130_1157_4 8;
vpc v_conv3_i133_1158_4@uint8 v_conv3_i133_1158_4@uint32;
(*   %conv4.i134.1159.4 = zext i8 %151 to i32 *)
cast v_conv4_i134_1159_4@uint32 v151@uint8;
(*   %shr.i135.1160.4 = ashr i32 %conv4.i134.1159.4, 1 *)
(* You may need to modify here *)
split v_shr_i135_1160_4 tmp_to_be_used v_conv4_i134_1159_4 1;
(*   %conv5.i136.1161.4 = trunc i32 %shr.i135.1160.4 to i8 *)
split tmp_v_shr_i135_1160_4 v_conv5_i136_1161_4 v_shr_i135_1160_4 8;
vpc v_conv5_i136_1161_4@uint8 v_conv5_i136_1161_4@uint32;
(*   %conv6.i137.1162.4 = zext i8 %150 to i32 *)
cast v_conv6_i137_1162_4@uint32 v150@uint8;
(*   %shl.i138.1163.4 = shl i32 %conv6.i137.1162.4, 1 *)
shls discard_245 v_shl_i138_1163_4 v_conv6_i137_1162_4 1;
(*   %conv7.i139.1164.4 = trunc i32 %shl.i138.1163.4 to i8 *)
split tmp_v_shl_i138_1163_4 v_conv7_i139_1164_4 v_shl_i138_1163_4 8;
vpc v_conv7_i139_1164_4@uint8 v_conv7_i139_1164_4@uint32;
(*   %conv.i127.1.1.4 = zext i8 %conv5.i136.1161.4 to i32 *)
cast v_conv_i127_1_1_4@uint32 v_conv5_i136_1161_4@uint8;
(*   %and.i128.1.1.4 = and i32 %conv.i127.1.1.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1_1_4 v_conv_i127_1_1_4 (0x1)@uint32;
(*   %conv1.i129.1.1.4 = zext i8 %conv7.i139.1164.4 to i32 *)
cast v_conv1_i129_1_1_4@uint32 v_conv7_i139_1164_4@uint8;
(*   %mul.i130.1.1.4 = mul nsw i32 %and.i128.1.1.4, %conv1.i129.1.1.4 *)
mul v_mul_i130_1_1_4 v_and_i128_1_1_4 v_conv1_i129_1_1_4;
(*   %conv2.i131.1.1.4 = zext i8 %conv3.i133.1158.4 to i32 *)
cast v_conv2_i131_1_1_4@uint32 v_conv3_i133_1158_4@uint8;
(*   %xor.i132.1.1.4 = xor i32 %conv2.i131.1.1.4, %mul.i130.1.1.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_1_1_4 v_conv2_i131_1_1_4 v_mul_i130_1_1_4;
(*   %conv3.i133.1.1.4 = trunc i32 %xor.i132.1.1.4 to i8 *)
split tmp_v_xor_i132_1_1_4 v_conv3_i133_1_1_4 v_xor_i132_1_1_4 8;
vpc v_conv3_i133_1_1_4@uint8 v_conv3_i133_1_1_4@uint32;
(*   %conv4.i134.1.1.4 = zext i8 %conv5.i136.1161.4 to i32 *)
cast v_conv4_i134_1_1_4@uint32 v_conv5_i136_1161_4@uint8;
(*   %shr.i135.1.1.4 = ashr i32 %conv4.i134.1.1.4, 1 *)
(* You may need to modify here *)
split v_shr_i135_1_1_4 tmp_to_be_used v_conv4_i134_1_1_4 1;
(*   %conv5.i136.1.1.4 = trunc i32 %shr.i135.1.1.4 to i8 *)
split tmp_v_shr_i135_1_1_4 v_conv5_i136_1_1_4 v_shr_i135_1_1_4 8;
vpc v_conv5_i136_1_1_4@uint8 v_conv5_i136_1_1_4@uint32;
(*   %conv6.i137.1.1.4 = zext i8 %conv7.i139.1164.4 to i32 *)
cast v_conv6_i137_1_1_4@uint32 v_conv7_i139_1164_4@uint8;
(*   %shl.i138.1.1.4 = shl i32 %conv6.i137.1.1.4, 1 *)
shls discard_246 v_shl_i138_1_1_4 v_conv6_i137_1_1_4 1;
(*   %conv7.i139.1.1.4 = trunc i32 %shl.i138.1.1.4 to i8 *)
split tmp_v_shl_i138_1_1_4 v_conv7_i139_1_1_4 v_shl_i138_1_1_4 8;
vpc v_conv7_i139_1_1_4@uint8 v_conv7_i139_1_1_4@uint32;
(*   %conv.i127.2.1.4 = zext i8 %conv5.i136.1.1.4 to i32 *)
cast v_conv_i127_2_1_4@uint32 v_conv5_i136_1_1_4@uint8;
(*   %and.i128.2.1.4 = and i32 %conv.i127.2.1.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_2_1_4 v_conv_i127_2_1_4 (0x1)@uint32;
(*   %conv1.i129.2.1.4 = zext i8 %conv7.i139.1.1.4 to i32 *)
cast v_conv1_i129_2_1_4@uint32 v_conv7_i139_1_1_4@uint8;
(*   %mul.i130.2.1.4 = mul nsw i32 %and.i128.2.1.4, %conv1.i129.2.1.4 *)
mul v_mul_i130_2_1_4 v_and_i128_2_1_4 v_conv1_i129_2_1_4;
(*   %conv2.i131.2.1.4 = zext i8 %conv3.i133.1.1.4 to i32 *)
cast v_conv2_i131_2_1_4@uint32 v_conv3_i133_1_1_4@uint8;
(*   %xor.i132.2.1.4 = xor i32 %conv2.i131.2.1.4, %mul.i130.2.1.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_2_1_4 v_conv2_i131_2_1_4 v_mul_i130_2_1_4;
(*   %conv3.i133.2.1.4 = trunc i32 %xor.i132.2.1.4 to i8 *)
split tmp_v_xor_i132_2_1_4 v_conv3_i133_2_1_4 v_xor_i132_2_1_4 8;
vpc v_conv3_i133_2_1_4@uint8 v_conv3_i133_2_1_4@uint32;
(*   %conv4.i134.2.1.4 = zext i8 %conv5.i136.1.1.4 to i32 *)
cast v_conv4_i134_2_1_4@uint32 v_conv5_i136_1_1_4@uint8;
(*   %shr.i135.2.1.4 = ashr i32 %conv4.i134.2.1.4, 1 *)
(* You may need to modify here *)
split v_shr_i135_2_1_4 tmp_to_be_used v_conv4_i134_2_1_4 1;
(*   %conv5.i136.2.1.4 = trunc i32 %shr.i135.2.1.4 to i8 *)
split tmp_v_shr_i135_2_1_4 v_conv5_i136_2_1_4 v_shr_i135_2_1_4 8;
vpc v_conv5_i136_2_1_4@uint8 v_conv5_i136_2_1_4@uint32;
(*   %conv6.i137.2.1.4 = zext i8 %conv7.i139.1.1.4 to i32 *)
cast v_conv6_i137_2_1_4@uint32 v_conv7_i139_1_1_4@uint8;
(*   %shl.i138.2.1.4 = shl i32 %conv6.i137.2.1.4, 1 *)
shls discard_247 v_shl_i138_2_1_4 v_conv6_i137_2_1_4 1;
(*   %conv7.i139.2.1.4 = trunc i32 %shl.i138.2.1.4 to i8 *)
split tmp_v_shl_i138_2_1_4 v_conv7_i139_2_1_4 v_shl_i138_2_1_4 8;
vpc v_conv7_i139_2_1_4@uint8 v_conv7_i139_2_1_4@uint32;
(*   %conv.i127.3.1.4 = zext i8 %conv5.i136.2.1.4 to i32 *)
cast v_conv_i127_3_1_4@uint32 v_conv5_i136_2_1_4@uint8;
(*   %and.i128.3.1.4 = and i32 %conv.i127.3.1.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_3_1_4 v_conv_i127_3_1_4 (0x1)@uint32;
(*   %conv1.i129.3.1.4 = zext i8 %conv7.i139.2.1.4 to i32 *)
cast v_conv1_i129_3_1_4@uint32 v_conv7_i139_2_1_4@uint8;
(*   %mul.i130.3.1.4 = mul nsw i32 %and.i128.3.1.4, %conv1.i129.3.1.4 *)
mul v_mul_i130_3_1_4 v_and_i128_3_1_4 v_conv1_i129_3_1_4;
(*   %conv2.i131.3.1.4 = zext i8 %conv3.i133.2.1.4 to i32 *)
cast v_conv2_i131_3_1_4@uint32 v_conv3_i133_2_1_4@uint8;
(*   %xor.i132.3.1.4 = xor i32 %conv2.i131.3.1.4, %mul.i130.3.1.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_3_1_4 v_conv2_i131_3_1_4 v_mul_i130_3_1_4;
(*   %conv3.i133.3.1.4 = trunc i32 %xor.i132.3.1.4 to i8 *)
split tmp_v_xor_i132_3_1_4 v_conv3_i133_3_1_4 v_xor_i132_3_1_4 8;
vpc v_conv3_i133_3_1_4@uint8 v_conv3_i133_3_1_4@uint32;
(*   %conv4.i134.3.1.4 = zext i8 %conv5.i136.2.1.4 to i32 *)
cast v_conv4_i134_3_1_4@uint32 v_conv5_i136_2_1_4@uint8;
(*   %shr.i135.3.1.4 = ashr i32 %conv4.i134.3.1.4, 1 *)
(* You may need to modify here *)
split v_shr_i135_3_1_4 tmp_to_be_used v_conv4_i134_3_1_4 1;
(*   %conv5.i136.3.1.4 = trunc i32 %shr.i135.3.1.4 to i8 *)
split tmp_v_shr_i135_3_1_4 v_conv5_i136_3_1_4 v_shr_i135_3_1_4 8;
vpc v_conv5_i136_3_1_4@uint8 v_conv5_i136_3_1_4@uint32;
(*   %conv6.i137.3.1.4 = zext i8 %conv7.i139.2.1.4 to i32 *)
cast v_conv6_i137_3_1_4@uint32 v_conv7_i139_2_1_4@uint8;
(*   %shl.i138.3.1.4 = shl i32 %conv6.i137.3.1.4, 1 *)
shls discard_248 v_shl_i138_3_1_4 v_conv6_i137_3_1_4 1;
(*   %conv7.i139.3.1.4 = trunc i32 %shl.i138.3.1.4 to i8 *)
split tmp_v_shl_i138_3_1_4 v_conv7_i139_3_1_4 v_shl_i138_3_1_4 8;
vpc v_conv7_i139_3_1_4@uint8 v_conv7_i139_3_1_4@uint32;
(*   %conv.i127.4.1.4 = zext i8 %conv5.i136.3.1.4 to i32 *)
cast v_conv_i127_4_1_4@uint32 v_conv5_i136_3_1_4@uint8;
(*   %and.i128.4.1.4 = and i32 %conv.i127.4.1.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_4_1_4 v_conv_i127_4_1_4 (0x1)@uint32;
(*   %conv1.i129.4.1.4 = zext i8 %conv7.i139.3.1.4 to i32 *)
cast v_conv1_i129_4_1_4@uint32 v_conv7_i139_3_1_4@uint8;
(*   %mul.i130.4.1.4 = mul nsw i32 %and.i128.4.1.4, %conv1.i129.4.1.4 *)
mul v_mul_i130_4_1_4 v_and_i128_4_1_4 v_conv1_i129_4_1_4;
(*   %conv2.i131.4.1.4 = zext i8 %conv3.i133.3.1.4 to i32 *)
cast v_conv2_i131_4_1_4@uint32 v_conv3_i133_3_1_4@uint8;
(*   %xor.i132.4.1.4 = xor i32 %conv2.i131.4.1.4, %mul.i130.4.1.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_4_1_4 v_conv2_i131_4_1_4 v_mul_i130_4_1_4;
(*   %conv3.i133.4.1.4 = trunc i32 %xor.i132.4.1.4 to i8 *)
split tmp_v_xor_i132_4_1_4 v_conv3_i133_4_1_4 v_xor_i132_4_1_4 8;
vpc v_conv3_i133_4_1_4@uint8 v_conv3_i133_4_1_4@uint32;
(*   %conv4.i134.4.1.4 = zext i8 %conv5.i136.3.1.4 to i32 *)
cast v_conv4_i134_4_1_4@uint32 v_conv5_i136_3_1_4@uint8;
(*   %shr.i135.4.1.4 = ashr i32 %conv4.i134.4.1.4, 1 *)
(* You may need to modify here *)
split v_shr_i135_4_1_4 tmp_to_be_used v_conv4_i134_4_1_4 1;
(*   %conv5.i136.4.1.4 = trunc i32 %shr.i135.4.1.4 to i8 *)
split tmp_v_shr_i135_4_1_4 v_conv5_i136_4_1_4 v_shr_i135_4_1_4 8;
vpc v_conv5_i136_4_1_4@uint8 v_conv5_i136_4_1_4@uint32;
(*   %conv6.i137.4.1.4 = zext i8 %conv7.i139.3.1.4 to i32 *)
cast v_conv6_i137_4_1_4@uint32 v_conv7_i139_3_1_4@uint8;
(*   %shl.i138.4.1.4 = shl i32 %conv6.i137.4.1.4, 1 *)
shls discard_249 v_shl_i138_4_1_4 v_conv6_i137_4_1_4 1;
(*   %conv7.i139.4.1.4 = trunc i32 %shl.i138.4.1.4 to i8 *)
split tmp_v_shl_i138_4_1_4 v_conv7_i139_4_1_4 v_shl_i138_4_1_4 8;
vpc v_conv7_i139_4_1_4@uint8 v_conv7_i139_4_1_4@uint32;
(*   %conv.i127.5.1.4 = zext i8 %conv5.i136.4.1.4 to i32 *)
cast v_conv_i127_5_1_4@uint32 v_conv5_i136_4_1_4@uint8;
(*   %and.i128.5.1.4 = and i32 %conv.i127.5.1.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_5_1_4 v_conv_i127_5_1_4 (0x1)@uint32;
(*   %conv1.i129.5.1.4 = zext i8 %conv7.i139.4.1.4 to i32 *)
cast v_conv1_i129_5_1_4@uint32 v_conv7_i139_4_1_4@uint8;
(*   %mul.i130.5.1.4 = mul nsw i32 %and.i128.5.1.4, %conv1.i129.5.1.4 *)
mul v_mul_i130_5_1_4 v_and_i128_5_1_4 v_conv1_i129_5_1_4;
(*   %conv2.i131.5.1.4 = zext i8 %conv3.i133.4.1.4 to i32 *)
cast v_conv2_i131_5_1_4@uint32 v_conv3_i133_4_1_4@uint8;
(*   %xor.i132.5.1.4 = xor i32 %conv2.i131.5.1.4, %mul.i130.5.1.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_5_1_4 v_conv2_i131_5_1_4 v_mul_i130_5_1_4;
(*   %conv3.i133.5.1.4 = trunc i32 %xor.i132.5.1.4 to i8 *)
split tmp_v_xor_i132_5_1_4 v_conv3_i133_5_1_4 v_xor_i132_5_1_4 8;
vpc v_conv3_i133_5_1_4@uint8 v_conv3_i133_5_1_4@uint32;
(*   %conv4.i134.5.1.4 = zext i8 %conv5.i136.4.1.4 to i32 *)
cast v_conv4_i134_5_1_4@uint32 v_conv5_i136_4_1_4@uint8;
(*   %shr.i135.5.1.4 = ashr i32 %conv4.i134.5.1.4, 1 *)
(* You may need to modify here *)
split v_shr_i135_5_1_4 tmp_to_be_used v_conv4_i134_5_1_4 1;
(*   %conv5.i136.5.1.4 = trunc i32 %shr.i135.5.1.4 to i8 *)
split tmp_v_shr_i135_5_1_4 v_conv5_i136_5_1_4 v_shr_i135_5_1_4 8;
vpc v_conv5_i136_5_1_4@uint8 v_conv5_i136_5_1_4@uint32;
(*   %conv6.i137.5.1.4 = zext i8 %conv7.i139.4.1.4 to i32 *)
cast v_conv6_i137_5_1_4@uint32 v_conv7_i139_4_1_4@uint8;
(*   %shl.i138.5.1.4 = shl i32 %conv6.i137.5.1.4, 1 *)
shls discard_250 v_shl_i138_5_1_4 v_conv6_i137_5_1_4 1;
(*   %conv7.i139.5.1.4 = trunc i32 %shl.i138.5.1.4 to i8 *)
split tmp_v_shl_i138_5_1_4 v_conv7_i139_5_1_4 v_shl_i138_5_1_4 8;
vpc v_conv7_i139_5_1_4@uint8 v_conv7_i139_5_1_4@uint32;
(*   %conv.i127.6.1.4 = zext i8 %conv5.i136.5.1.4 to i32 *)
cast v_conv_i127_6_1_4@uint32 v_conv5_i136_5_1_4@uint8;
(*   %and.i128.6.1.4 = and i32 %conv.i127.6.1.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_6_1_4 v_conv_i127_6_1_4 (0x1)@uint32;
(*   %conv1.i129.6.1.4 = zext i8 %conv7.i139.5.1.4 to i32 *)
cast v_conv1_i129_6_1_4@uint32 v_conv7_i139_5_1_4@uint8;
(*   %mul.i130.6.1.4 = mul nsw i32 %and.i128.6.1.4, %conv1.i129.6.1.4 *)
mul v_mul_i130_6_1_4 v_and_i128_6_1_4 v_conv1_i129_6_1_4;
(*   %conv2.i131.6.1.4 = zext i8 %conv3.i133.5.1.4 to i32 *)
cast v_conv2_i131_6_1_4@uint32 v_conv3_i133_5_1_4@uint8;
(*   %xor.i132.6.1.4 = xor i32 %conv2.i131.6.1.4, %mul.i130.6.1.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_6_1_4 v_conv2_i131_6_1_4 v_mul_i130_6_1_4;
(*   %conv3.i133.6.1.4 = trunc i32 %xor.i132.6.1.4 to i8 *)
split tmp_v_xor_i132_6_1_4 v_conv3_i133_6_1_4 v_xor_i132_6_1_4 8;
vpc v_conv3_i133_6_1_4@uint8 v_conv3_i133_6_1_4@uint32;
(*   %conv4.i134.6.1.4 = zext i8 %conv5.i136.5.1.4 to i32 *)
cast v_conv4_i134_6_1_4@uint32 v_conv5_i136_5_1_4@uint8;
(*   %shr.i135.6.1.4 = ashr i32 %conv4.i134.6.1.4, 1 *)
(* You may need to modify here *)
split v_shr_i135_6_1_4 tmp_to_be_used v_conv4_i134_6_1_4 1;
(*   %conv5.i136.6.1.4 = trunc i32 %shr.i135.6.1.4 to i8 *)
split tmp_v_shr_i135_6_1_4 v_conv5_i136_6_1_4 v_shr_i135_6_1_4 8;
vpc v_conv5_i136_6_1_4@uint8 v_conv5_i136_6_1_4@uint32;
(*   %conv6.i137.6.1.4 = zext i8 %conv7.i139.5.1.4 to i32 *)
cast v_conv6_i137_6_1_4@uint32 v_conv7_i139_5_1_4@uint8;
(*   %shl.i138.6.1.4 = shl i32 %conv6.i137.6.1.4, 1 *)
shls discard_251 v_shl_i138_6_1_4 v_conv6_i137_6_1_4 1;
(*   %conv7.i139.6.1.4 = trunc i32 %shl.i138.6.1.4 to i8 *)
split tmp_v_shl_i138_6_1_4 v_conv7_i139_6_1_4 v_shl_i138_6_1_4 8;
vpc v_conv7_i139_6_1_4@uint8 v_conv7_i139_6_1_4@uint32;
(*   %conv.i127.7.1.4 = zext i8 %conv5.i136.6.1.4 to i32 *)
cast v_conv_i127_7_1_4@uint32 v_conv5_i136_6_1_4@uint8;
(*   %and.i128.7.1.4 = and i32 %conv.i127.7.1.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_7_1_4 v_conv_i127_7_1_4 (0x1)@uint32;
(*   %conv1.i129.7.1.4 = zext i8 %conv7.i139.6.1.4 to i32 *)
cast v_conv1_i129_7_1_4@uint32 v_conv7_i139_6_1_4@uint8;
(*   %mul.i130.7.1.4 = mul nsw i32 %and.i128.7.1.4, %conv1.i129.7.1.4 *)
mul v_mul_i130_7_1_4 v_and_i128_7_1_4 v_conv1_i129_7_1_4;
(*   %conv2.i131.7.1.4 = zext i8 %conv3.i133.6.1.4 to i32 *)
cast v_conv2_i131_7_1_4@uint32 v_conv3_i133_6_1_4@uint8;
(*   %xor.i132.7.1.4 = xor i32 %conv2.i131.7.1.4, %mul.i130.7.1.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_7_1_4 v_conv2_i131_7_1_4 v_mul_i130_7_1_4;
(*   %conv3.i133.7.1.4 = trunc i32 %xor.i132.7.1.4 to i8 *)
split tmp_v_xor_i132_7_1_4 v_conv3_i133_7_1_4 v_xor_i132_7_1_4 8;
vpc v_conv3_i133_7_1_4@uint8 v_conv3_i133_7_1_4@uint32;
(*   %arrayidx56.1.4 = getelementptr inbounds [25 x i8], [25 x i8]* %p1, i64 0, i64 21 *)
(*   store i8 %conv3.i133.7.1.4, i8* %arrayidx56.1.4, align 1 *)
mov p1_21 v_conv3_i133_7_1_4;
(*   %arrayidx60.1.4 = getelementptr inbounds [25 x i8], [25 x i8]* %p0, i64 0, i64 21 *)
(*   %152 = load i8, i8* %arrayidx60.1.4, align 1 *)
mov v152 p0_21;
(*   %conv61.1.4 = zext i8 %152 to i32 *)
cast v_conv61_1_4@uint32 v152@uint8;
(*   %arrayidx65.1.4 = getelementptr inbounds [25 x i8], [25 x i8]* %p1, i64 0, i64 21 *)
(*   %153 = load i8, i8* %arrayidx65.1.4, align 1 *)
mov v153 p1_21;
(*   %conv66.1.4 = zext i8 %153 to i32 *)
cast v_conv66_1_4@uint32 v153@uint8;
(*   %xor67.1.4 = xor i32 %conv61.1.4, %conv66.1.4 *)
(* You may need to modify here *)
xor uint32 v_xor67_1_4 v_conv61_1_4 v_conv66_1_4;
(*   %conv68.1.4 = trunc i32 %xor67.1.4 to i8 *)
split tmp_v_xor67_1_4 v_conv68_1_4 v_xor67_1_4 8;
vpc v_conv68_1_4@uint8 v_conv68_1_4@uint32;
(*   %arrayidx72.1.4 = getelementptr inbounds [25 x i8], [25 x i8]* %z, i64 0, i64 21 *)
(*   store i8 %conv68.1.4, i8* %arrayidx72.1.4, align 1 *)
mov z_21 v_conv68_1_4;
(*   %arrayidx22.2.4 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %154 = load i8, i8* %arrayidx22.2.4, align 1 *)
mov v154 b_2;
(*   %conv.2.4 = zext i8 %154 to i32 *)
cast v_conv_2_4@uint32 v154@uint8;
(*   %arrayidx26.2.4 = getelementptr inbounds i8, i8* %r, i64 22 *)
(*   %155 = load i8, i8* %arrayidx26.2.4, align 1 *)
mov v155 r_22;
(*   %conv27.2.4 = zext i8 %155 to i32 *)
cast v_conv27_2_4@uint32 v155@uint8;
(*   %xor.2.4 = xor i32 %conv.2.4, %conv27.2.4 *)
(* You may need to modify here *)
xor uint32 v_xor_2_4 v_conv_2_4 v_conv27_2_4;
(*   %conv28.2.4 = trunc i32 %xor.2.4 to i8 *)
split tmp_v_xor_2_4 v_conv28_2_4 v_xor_2_4 8;
vpc v_conv28_2_4@uint8 v_conv28_2_4@uint32;
(*   %arrayidx32.2.4 = getelementptr inbounds [25 x i8], [25 x i8]* %s, i64 0, i64 22 *)
(*   store i8 %conv28.2.4, i8* %arrayidx32.2.4, align 1 *)
mov s_22 v_conv28_2_4;
(*   %156 = load i8, i8* %arrayidx34.4, align 1 *)
mov v156 a_4;
(*   %conv35.2.4 = zext i8 %156 to i32 *)
cast v_conv35_2_4@uint32 v156@uint8;
(*   %xor36.2.4 = xor i32 %conv35.2.4, 1 *)
(* You may need to modify here *)
xor uint32 v_xor36_2_4 v_conv35_2_4 (0x1)@uint32;
(*   %conv37.2.4 = trunc i32 %xor36.2.4 to i8 *)
split tmp_v_xor36_2_4 v_conv37_2_4 v_xor36_2_4 8;
vpc v_conv37_2_4@uint8 v_conv37_2_4@uint32;
(*   %arrayidx41.2.4 = getelementptr inbounds i8, i8* %r, i64 22 *)
(*   %157 = load i8, i8* %arrayidx41.2.4, align 1 *)
mov v157 r_22;
(*   %conv.i.2165.4 = zext i8 %157 to i32 *)
cast v_conv_i_2165_4@uint32 v157@uint8;
(*   %and.i.2166.4 = and i32 %conv.i.2165.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2166_4 v_conv_i_2165_4 (0x1)@uint32;
(*   %conv1.i.2167.4 = zext i8 %conv37.2.4 to i32 *)
cast v_conv1_i_2167_4@uint32 v_conv37_2_4@uint8;
(*   %mul.i.2168.4 = mul nsw i32 %and.i.2166.4, %conv1.i.2167.4 *)
mul v_mul_i_2168_4 v_and_i_2166_4 v_conv1_i_2167_4;
(*   %conv3.i.2169.4 = trunc i32 %mul.i.2168.4 to i8 *)
split tmp_v_mul_i_2168_4 v_conv3_i_2169_4 v_mul_i_2168_4 8;
vpc v_conv3_i_2169_4@uint8 v_conv3_i_2169_4@uint32;
(*   %conv4.i.2170.4 = zext i8 %157 to i32 *)
cast v_conv4_i_2170_4@uint32 v157@uint8;
(*   %shr.i.2171.4 = ashr i32 %conv4.i.2170.4, 1 *)
(* You may need to modify here *)
split v_shr_i_2171_4 tmp_to_be_used v_conv4_i_2170_4 1;
(*   %conv5.i.2172.4 = trunc i32 %shr.i.2171.4 to i8 *)
split tmp_v_shr_i_2171_4 v_conv5_i_2172_4 v_shr_i_2171_4 8;
vpc v_conv5_i_2172_4@uint8 v_conv5_i_2172_4@uint32;
(*   %conv6.i.2173.4 = zext i8 %conv37.2.4 to i32 *)
cast v_conv6_i_2173_4@uint32 v_conv37_2_4@uint8;
(*   %shl.i.2174.4 = shl i32 %conv6.i.2173.4, 1 *)
shls discard_252 v_shl_i_2174_4 v_conv6_i_2173_4 1;
(*   %conv7.i.2175.4 = trunc i32 %shl.i.2174.4 to i8 *)
split tmp_v_shl_i_2174_4 v_conv7_i_2175_4 v_shl_i_2174_4 8;
vpc v_conv7_i_2175_4@uint8 v_conv7_i_2175_4@uint32;
(*   %conv.i.1.2.4 = zext i8 %conv5.i.2172.4 to i32 *)
cast v_conv_i_1_2_4@uint32 v_conv5_i_2172_4@uint8;
(*   %and.i.1.2.4 = and i32 %conv.i.1.2.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_2_4 v_conv_i_1_2_4 (0x1)@uint32;
(*   %conv1.i.1.2.4 = zext i8 %conv7.i.2175.4 to i32 *)
cast v_conv1_i_1_2_4@uint32 v_conv7_i_2175_4@uint8;
(*   %mul.i.1.2.4 = mul nsw i32 %and.i.1.2.4, %conv1.i.1.2.4 *)
mul v_mul_i_1_2_4 v_and_i_1_2_4 v_conv1_i_1_2_4;
(*   %conv2.i.1.2.4 = zext i8 %conv3.i.2169.4 to i32 *)
cast v_conv2_i_1_2_4@uint32 v_conv3_i_2169_4@uint8;
(*   %xor.i.1.2.4 = xor i32 %conv2.i.1.2.4, %mul.i.1.2.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_2_4 v_conv2_i_1_2_4 v_mul_i_1_2_4;
(*   %conv3.i.1.2.4 = trunc i32 %xor.i.1.2.4 to i8 *)
split tmp_v_xor_i_1_2_4 v_conv3_i_1_2_4 v_xor_i_1_2_4 8;
vpc v_conv3_i_1_2_4@uint8 v_conv3_i_1_2_4@uint32;
(*   %conv4.i.1.2.4 = zext i8 %conv5.i.2172.4 to i32 *)
cast v_conv4_i_1_2_4@uint32 v_conv5_i_2172_4@uint8;
(*   %shr.i.1.2.4 = ashr i32 %conv4.i.1.2.4, 1 *)
(* You may need to modify here *)
split v_shr_i_1_2_4 tmp_to_be_used v_conv4_i_1_2_4 1;
(*   %conv5.i.1.2.4 = trunc i32 %shr.i.1.2.4 to i8 *)
split tmp_v_shr_i_1_2_4 v_conv5_i_1_2_4 v_shr_i_1_2_4 8;
vpc v_conv5_i_1_2_4@uint8 v_conv5_i_1_2_4@uint32;
(*   %conv6.i.1.2.4 = zext i8 %conv7.i.2175.4 to i32 *)
cast v_conv6_i_1_2_4@uint32 v_conv7_i_2175_4@uint8;
(*   %shl.i.1.2.4 = shl i32 %conv6.i.1.2.4, 1 *)
shls discard_253 v_shl_i_1_2_4 v_conv6_i_1_2_4 1;
(*   %conv7.i.1.2.4 = trunc i32 %shl.i.1.2.4 to i8 *)
split tmp_v_shl_i_1_2_4 v_conv7_i_1_2_4 v_shl_i_1_2_4 8;
vpc v_conv7_i_1_2_4@uint8 v_conv7_i_1_2_4@uint32;
(*   %conv.i.2.2.4 = zext i8 %conv5.i.1.2.4 to i32 *)
cast v_conv_i_2_2_4@uint32 v_conv5_i_1_2_4@uint8;
(*   %and.i.2.2.4 = and i32 %conv.i.2.2.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_2_4 v_conv_i_2_2_4 (0x1)@uint32;
(*   %conv1.i.2.2.4 = zext i8 %conv7.i.1.2.4 to i32 *)
cast v_conv1_i_2_2_4@uint32 v_conv7_i_1_2_4@uint8;
(*   %mul.i.2.2.4 = mul nsw i32 %and.i.2.2.4, %conv1.i.2.2.4 *)
mul v_mul_i_2_2_4 v_and_i_2_2_4 v_conv1_i_2_2_4;
(*   %conv2.i.2.2.4 = zext i8 %conv3.i.1.2.4 to i32 *)
cast v_conv2_i_2_2_4@uint32 v_conv3_i_1_2_4@uint8;
(*   %xor.i.2.2.4 = xor i32 %conv2.i.2.2.4, %mul.i.2.2.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_2_4 v_conv2_i_2_2_4 v_mul_i_2_2_4;
(*   %conv3.i.2.2.4 = trunc i32 %xor.i.2.2.4 to i8 *)
split tmp_v_xor_i_2_2_4 v_conv3_i_2_2_4 v_xor_i_2_2_4 8;
vpc v_conv3_i_2_2_4@uint8 v_conv3_i_2_2_4@uint32;
(*   %conv4.i.2.2.4 = zext i8 %conv5.i.1.2.4 to i32 *)
cast v_conv4_i_2_2_4@uint32 v_conv5_i_1_2_4@uint8;
(*   %shr.i.2.2.4 = ashr i32 %conv4.i.2.2.4, 1 *)
(* You may need to modify here *)
split v_shr_i_2_2_4 tmp_to_be_used v_conv4_i_2_2_4 1;
(*   %conv5.i.2.2.4 = trunc i32 %shr.i.2.2.4 to i8 *)
split tmp_v_shr_i_2_2_4 v_conv5_i_2_2_4 v_shr_i_2_2_4 8;
vpc v_conv5_i_2_2_4@uint8 v_conv5_i_2_2_4@uint32;
(*   %conv6.i.2.2.4 = zext i8 %conv7.i.1.2.4 to i32 *)
cast v_conv6_i_2_2_4@uint32 v_conv7_i_1_2_4@uint8;
(*   %shl.i.2.2.4 = shl i32 %conv6.i.2.2.4, 1 *)
shls discard_254 v_shl_i_2_2_4 v_conv6_i_2_2_4 1;
(*   %conv7.i.2.2.4 = trunc i32 %shl.i.2.2.4 to i8 *)
split tmp_v_shl_i_2_2_4 v_conv7_i_2_2_4 v_shl_i_2_2_4 8;
vpc v_conv7_i_2_2_4@uint8 v_conv7_i_2_2_4@uint32;
(*   %conv.i.3.2.4 = zext i8 %conv5.i.2.2.4 to i32 *)
cast v_conv_i_3_2_4@uint32 v_conv5_i_2_2_4@uint8;
(*   %and.i.3.2.4 = and i32 %conv.i.3.2.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_2_4 v_conv_i_3_2_4 (0x1)@uint32;
(*   %conv1.i.3.2.4 = zext i8 %conv7.i.2.2.4 to i32 *)
cast v_conv1_i_3_2_4@uint32 v_conv7_i_2_2_4@uint8;
(*   %mul.i.3.2.4 = mul nsw i32 %and.i.3.2.4, %conv1.i.3.2.4 *)
mul v_mul_i_3_2_4 v_and_i_3_2_4 v_conv1_i_3_2_4;
(*   %conv2.i.3.2.4 = zext i8 %conv3.i.2.2.4 to i32 *)
cast v_conv2_i_3_2_4@uint32 v_conv3_i_2_2_4@uint8;
(*   %xor.i.3.2.4 = xor i32 %conv2.i.3.2.4, %mul.i.3.2.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_2_4 v_conv2_i_3_2_4 v_mul_i_3_2_4;
(*   %conv3.i.3.2.4 = trunc i32 %xor.i.3.2.4 to i8 *)
split tmp_v_xor_i_3_2_4 v_conv3_i_3_2_4 v_xor_i_3_2_4 8;
vpc v_conv3_i_3_2_4@uint8 v_conv3_i_3_2_4@uint32;
(*   %conv4.i.3.2.4 = zext i8 %conv5.i.2.2.4 to i32 *)
cast v_conv4_i_3_2_4@uint32 v_conv5_i_2_2_4@uint8;
(*   %shr.i.3.2.4 = ashr i32 %conv4.i.3.2.4, 1 *)
(* You may need to modify here *)
split v_shr_i_3_2_4 tmp_to_be_used v_conv4_i_3_2_4 1;
(*   %conv5.i.3.2.4 = trunc i32 %shr.i.3.2.4 to i8 *)
split tmp_v_shr_i_3_2_4 v_conv5_i_3_2_4 v_shr_i_3_2_4 8;
vpc v_conv5_i_3_2_4@uint8 v_conv5_i_3_2_4@uint32;
(*   %conv6.i.3.2.4 = zext i8 %conv7.i.2.2.4 to i32 *)
cast v_conv6_i_3_2_4@uint32 v_conv7_i_2_2_4@uint8;
(*   %shl.i.3.2.4 = shl i32 %conv6.i.3.2.4, 1 *)
shls discard_255 v_shl_i_3_2_4 v_conv6_i_3_2_4 1;
(*   %conv7.i.3.2.4 = trunc i32 %shl.i.3.2.4 to i8 *)
split tmp_v_shl_i_3_2_4 v_conv7_i_3_2_4 v_shl_i_3_2_4 8;
vpc v_conv7_i_3_2_4@uint8 v_conv7_i_3_2_4@uint32;
(*   %conv.i.4.2.4 = zext i8 %conv5.i.3.2.4 to i32 *)
cast v_conv_i_4_2_4@uint32 v_conv5_i_3_2_4@uint8;
(*   %and.i.4.2.4 = and i32 %conv.i.4.2.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_2_4 v_conv_i_4_2_4 (0x1)@uint32;
(*   %conv1.i.4.2.4 = zext i8 %conv7.i.3.2.4 to i32 *)
cast v_conv1_i_4_2_4@uint32 v_conv7_i_3_2_4@uint8;
(*   %mul.i.4.2.4 = mul nsw i32 %and.i.4.2.4, %conv1.i.4.2.4 *)
mul v_mul_i_4_2_4 v_and_i_4_2_4 v_conv1_i_4_2_4;
(*   %conv2.i.4.2.4 = zext i8 %conv3.i.3.2.4 to i32 *)
cast v_conv2_i_4_2_4@uint32 v_conv3_i_3_2_4@uint8;
(*   %xor.i.4.2.4 = xor i32 %conv2.i.4.2.4, %mul.i.4.2.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_2_4 v_conv2_i_4_2_4 v_mul_i_4_2_4;
(*   %conv3.i.4.2.4 = trunc i32 %xor.i.4.2.4 to i8 *)
split tmp_v_xor_i_4_2_4 v_conv3_i_4_2_4 v_xor_i_4_2_4 8;
vpc v_conv3_i_4_2_4@uint8 v_conv3_i_4_2_4@uint32;
(*   %conv4.i.4.2.4 = zext i8 %conv5.i.3.2.4 to i32 *)
cast v_conv4_i_4_2_4@uint32 v_conv5_i_3_2_4@uint8;
(*   %shr.i.4.2.4 = ashr i32 %conv4.i.4.2.4, 1 *)
(* You may need to modify here *)
split v_shr_i_4_2_4 tmp_to_be_used v_conv4_i_4_2_4 1;
(*   %conv5.i.4.2.4 = trunc i32 %shr.i.4.2.4 to i8 *)
split tmp_v_shr_i_4_2_4 v_conv5_i_4_2_4 v_shr_i_4_2_4 8;
vpc v_conv5_i_4_2_4@uint8 v_conv5_i_4_2_4@uint32;
(*   %conv6.i.4.2.4 = zext i8 %conv7.i.3.2.4 to i32 *)
cast v_conv6_i_4_2_4@uint32 v_conv7_i_3_2_4@uint8;
(*   %shl.i.4.2.4 = shl i32 %conv6.i.4.2.4, 1 *)
shls discard_256 v_shl_i_4_2_4 v_conv6_i_4_2_4 1;
(*   %conv7.i.4.2.4 = trunc i32 %shl.i.4.2.4 to i8 *)
split tmp_v_shl_i_4_2_4 v_conv7_i_4_2_4 v_shl_i_4_2_4 8;
vpc v_conv7_i_4_2_4@uint8 v_conv7_i_4_2_4@uint32;
(*   %conv.i.5.2.4 = zext i8 %conv5.i.4.2.4 to i32 *)
cast v_conv_i_5_2_4@uint32 v_conv5_i_4_2_4@uint8;
(*   %and.i.5.2.4 = and i32 %conv.i.5.2.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_2_4 v_conv_i_5_2_4 (0x1)@uint32;
(*   %conv1.i.5.2.4 = zext i8 %conv7.i.4.2.4 to i32 *)
cast v_conv1_i_5_2_4@uint32 v_conv7_i_4_2_4@uint8;
(*   %mul.i.5.2.4 = mul nsw i32 %and.i.5.2.4, %conv1.i.5.2.4 *)
mul v_mul_i_5_2_4 v_and_i_5_2_4 v_conv1_i_5_2_4;
(*   %conv2.i.5.2.4 = zext i8 %conv3.i.4.2.4 to i32 *)
cast v_conv2_i_5_2_4@uint32 v_conv3_i_4_2_4@uint8;
(*   %xor.i.5.2.4 = xor i32 %conv2.i.5.2.4, %mul.i.5.2.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_2_4 v_conv2_i_5_2_4 v_mul_i_5_2_4;
(*   %conv3.i.5.2.4 = trunc i32 %xor.i.5.2.4 to i8 *)
split tmp_v_xor_i_5_2_4 v_conv3_i_5_2_4 v_xor_i_5_2_4 8;
vpc v_conv3_i_5_2_4@uint8 v_conv3_i_5_2_4@uint32;
(*   %conv4.i.5.2.4 = zext i8 %conv5.i.4.2.4 to i32 *)
cast v_conv4_i_5_2_4@uint32 v_conv5_i_4_2_4@uint8;
(*   %shr.i.5.2.4 = ashr i32 %conv4.i.5.2.4, 1 *)
(* You may need to modify here *)
split v_shr_i_5_2_4 tmp_to_be_used v_conv4_i_5_2_4 1;
(*   %conv5.i.5.2.4 = trunc i32 %shr.i.5.2.4 to i8 *)
split tmp_v_shr_i_5_2_4 v_conv5_i_5_2_4 v_shr_i_5_2_4 8;
vpc v_conv5_i_5_2_4@uint8 v_conv5_i_5_2_4@uint32;
(*   %conv6.i.5.2.4 = zext i8 %conv7.i.4.2.4 to i32 *)
cast v_conv6_i_5_2_4@uint32 v_conv7_i_4_2_4@uint8;
(*   %shl.i.5.2.4 = shl i32 %conv6.i.5.2.4, 1 *)
shls discard_257 v_shl_i_5_2_4 v_conv6_i_5_2_4 1;
(*   %conv7.i.5.2.4 = trunc i32 %shl.i.5.2.4 to i8 *)
split tmp_v_shl_i_5_2_4 v_conv7_i_5_2_4 v_shl_i_5_2_4 8;
vpc v_conv7_i_5_2_4@uint8 v_conv7_i_5_2_4@uint32;
(*   %conv.i.6.2.4 = zext i8 %conv5.i.5.2.4 to i32 *)
cast v_conv_i_6_2_4@uint32 v_conv5_i_5_2_4@uint8;
(*   %and.i.6.2.4 = and i32 %conv.i.6.2.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_2_4 v_conv_i_6_2_4 (0x1)@uint32;
(*   %conv1.i.6.2.4 = zext i8 %conv7.i.5.2.4 to i32 *)
cast v_conv1_i_6_2_4@uint32 v_conv7_i_5_2_4@uint8;
(*   %mul.i.6.2.4 = mul nsw i32 %and.i.6.2.4, %conv1.i.6.2.4 *)
mul v_mul_i_6_2_4 v_and_i_6_2_4 v_conv1_i_6_2_4;
(*   %conv2.i.6.2.4 = zext i8 %conv3.i.5.2.4 to i32 *)
cast v_conv2_i_6_2_4@uint32 v_conv3_i_5_2_4@uint8;
(*   %xor.i.6.2.4 = xor i32 %conv2.i.6.2.4, %mul.i.6.2.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_2_4 v_conv2_i_6_2_4 v_mul_i_6_2_4;
(*   %conv3.i.6.2.4 = trunc i32 %xor.i.6.2.4 to i8 *)
split tmp_v_xor_i_6_2_4 v_conv3_i_6_2_4 v_xor_i_6_2_4 8;
vpc v_conv3_i_6_2_4@uint8 v_conv3_i_6_2_4@uint32;
(*   %conv4.i.6.2.4 = zext i8 %conv5.i.5.2.4 to i32 *)
cast v_conv4_i_6_2_4@uint32 v_conv5_i_5_2_4@uint8;
(*   %shr.i.6.2.4 = ashr i32 %conv4.i.6.2.4, 1 *)
(* You may need to modify here *)
split v_shr_i_6_2_4 tmp_to_be_used v_conv4_i_6_2_4 1;
(*   %conv5.i.6.2.4 = trunc i32 %shr.i.6.2.4 to i8 *)
split tmp_v_shr_i_6_2_4 v_conv5_i_6_2_4 v_shr_i_6_2_4 8;
vpc v_conv5_i_6_2_4@uint8 v_conv5_i_6_2_4@uint32;
(*   %conv6.i.6.2.4 = zext i8 %conv7.i.5.2.4 to i32 *)
cast v_conv6_i_6_2_4@uint32 v_conv7_i_5_2_4@uint8;
(*   %shl.i.6.2.4 = shl i32 %conv6.i.6.2.4, 1 *)
shls discard_258 v_shl_i_6_2_4 v_conv6_i_6_2_4 1;
(*   %conv7.i.6.2.4 = trunc i32 %shl.i.6.2.4 to i8 *)
split tmp_v_shl_i_6_2_4 v_conv7_i_6_2_4 v_shl_i_6_2_4 8;
vpc v_conv7_i_6_2_4@uint8 v_conv7_i_6_2_4@uint32;
(*   %conv.i.7.2.4 = zext i8 %conv5.i.6.2.4 to i32 *)
cast v_conv_i_7_2_4@uint32 v_conv5_i_6_2_4@uint8;
(*   %and.i.7.2.4 = and i32 %conv.i.7.2.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_2_4 v_conv_i_7_2_4 (0x1)@uint32;
(*   %conv1.i.7.2.4 = zext i8 %conv7.i.6.2.4 to i32 *)
cast v_conv1_i_7_2_4@uint32 v_conv7_i_6_2_4@uint8;
(*   %mul.i.7.2.4 = mul nsw i32 %and.i.7.2.4, %conv1.i.7.2.4 *)
mul v_mul_i_7_2_4 v_and_i_7_2_4 v_conv1_i_7_2_4;
(*   %conv2.i.7.2.4 = zext i8 %conv3.i.6.2.4 to i32 *)
cast v_conv2_i_7_2_4@uint32 v_conv3_i_6_2_4@uint8;
(*   %xor.i.7.2.4 = xor i32 %conv2.i.7.2.4, %mul.i.7.2.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_2_4 v_conv2_i_7_2_4 v_mul_i_7_2_4;
(*   %conv3.i.7.2.4 = trunc i32 %xor.i.7.2.4 to i8 *)
split tmp_v_xor_i_7_2_4 v_conv3_i_7_2_4 v_xor_i_7_2_4 8;
vpc v_conv3_i_7_2_4@uint8 v_conv3_i_7_2_4@uint32;
(*   %arrayidx45.2.4 = getelementptr inbounds [25 x i8], [25 x i8]* %p0, i64 0, i64 22 *)
(*   store i8 %conv3.i.7.2.4, i8* %arrayidx45.2.4, align 1 *)
mov p0_22 v_conv3_i_7_2_4;
(*   %158 = load i8, i8* %arrayidx47.4, align 1 *)
mov v158 a_4;
(*   %arrayidx51.2.4 = getelementptr inbounds [25 x i8], [25 x i8]* %s, i64 0, i64 22 *)
(*   %159 = load i8, i8* %arrayidx51.2.4, align 1 *)
mov v159 s_22;
(*   %conv.i127.2176.4 = zext i8 %159 to i32 *)
cast v_conv_i127_2176_4@uint32 v159@uint8;
(*   %and.i128.2177.4 = and i32 %conv.i127.2176.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_2177_4 v_conv_i127_2176_4 (0x1)@uint32;
(*   %conv1.i129.2178.4 = zext i8 %158 to i32 *)
cast v_conv1_i129_2178_4@uint32 v158@uint8;
(*   %mul.i130.2179.4 = mul nsw i32 %and.i128.2177.4, %conv1.i129.2178.4 *)
mul v_mul_i130_2179_4 v_and_i128_2177_4 v_conv1_i129_2178_4;
(*   %conv3.i133.2180.4 = trunc i32 %mul.i130.2179.4 to i8 *)
split tmp_v_mul_i130_2179_4 v_conv3_i133_2180_4 v_mul_i130_2179_4 8;
vpc v_conv3_i133_2180_4@uint8 v_conv3_i133_2180_4@uint32;
(*   %conv4.i134.2181.4 = zext i8 %159 to i32 *)
cast v_conv4_i134_2181_4@uint32 v159@uint8;
(*   %shr.i135.2182.4 = ashr i32 %conv4.i134.2181.4, 1 *)
(* You may need to modify here *)
split v_shr_i135_2182_4 tmp_to_be_used v_conv4_i134_2181_4 1;
(*   %conv5.i136.2183.4 = trunc i32 %shr.i135.2182.4 to i8 *)
split tmp_v_shr_i135_2182_4 v_conv5_i136_2183_4 v_shr_i135_2182_4 8;
vpc v_conv5_i136_2183_4@uint8 v_conv5_i136_2183_4@uint32;
(*   %conv6.i137.2184.4 = zext i8 %158 to i32 *)
cast v_conv6_i137_2184_4@uint32 v158@uint8;
(*   %shl.i138.2185.4 = shl i32 %conv6.i137.2184.4, 1 *)
shls discard_259 v_shl_i138_2185_4 v_conv6_i137_2184_4 1;
(*   %conv7.i139.2186.4 = trunc i32 %shl.i138.2185.4 to i8 *)
split tmp_v_shl_i138_2185_4 v_conv7_i139_2186_4 v_shl_i138_2185_4 8;
vpc v_conv7_i139_2186_4@uint8 v_conv7_i139_2186_4@uint32;
(*   %conv.i127.1.2.4 = zext i8 %conv5.i136.2183.4 to i32 *)
cast v_conv_i127_1_2_4@uint32 v_conv5_i136_2183_4@uint8;
(*   %and.i128.1.2.4 = and i32 %conv.i127.1.2.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1_2_4 v_conv_i127_1_2_4 (0x1)@uint32;
(*   %conv1.i129.1.2.4 = zext i8 %conv7.i139.2186.4 to i32 *)
cast v_conv1_i129_1_2_4@uint32 v_conv7_i139_2186_4@uint8;
(*   %mul.i130.1.2.4 = mul nsw i32 %and.i128.1.2.4, %conv1.i129.1.2.4 *)
mul v_mul_i130_1_2_4 v_and_i128_1_2_4 v_conv1_i129_1_2_4;
(*   %conv2.i131.1.2.4 = zext i8 %conv3.i133.2180.4 to i32 *)
cast v_conv2_i131_1_2_4@uint32 v_conv3_i133_2180_4@uint8;
(*   %xor.i132.1.2.4 = xor i32 %conv2.i131.1.2.4, %mul.i130.1.2.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_1_2_4 v_conv2_i131_1_2_4 v_mul_i130_1_2_4;
(*   %conv3.i133.1.2.4 = trunc i32 %xor.i132.1.2.4 to i8 *)
split tmp_v_xor_i132_1_2_4 v_conv3_i133_1_2_4 v_xor_i132_1_2_4 8;
vpc v_conv3_i133_1_2_4@uint8 v_conv3_i133_1_2_4@uint32;
(*   %conv4.i134.1.2.4 = zext i8 %conv5.i136.2183.4 to i32 *)
cast v_conv4_i134_1_2_4@uint32 v_conv5_i136_2183_4@uint8;
(*   %shr.i135.1.2.4 = ashr i32 %conv4.i134.1.2.4, 1 *)
(* You may need to modify here *)
split v_shr_i135_1_2_4 tmp_to_be_used v_conv4_i134_1_2_4 1;
(*   %conv5.i136.1.2.4 = trunc i32 %shr.i135.1.2.4 to i8 *)
split tmp_v_shr_i135_1_2_4 v_conv5_i136_1_2_4 v_shr_i135_1_2_4 8;
vpc v_conv5_i136_1_2_4@uint8 v_conv5_i136_1_2_4@uint32;
(*   %conv6.i137.1.2.4 = zext i8 %conv7.i139.2186.4 to i32 *)
cast v_conv6_i137_1_2_4@uint32 v_conv7_i139_2186_4@uint8;
(*   %shl.i138.1.2.4 = shl i32 %conv6.i137.1.2.4, 1 *)
shls discard_260 v_shl_i138_1_2_4 v_conv6_i137_1_2_4 1;
(*   %conv7.i139.1.2.4 = trunc i32 %shl.i138.1.2.4 to i8 *)
split tmp_v_shl_i138_1_2_4 v_conv7_i139_1_2_4 v_shl_i138_1_2_4 8;
vpc v_conv7_i139_1_2_4@uint8 v_conv7_i139_1_2_4@uint32;
(*   %conv.i127.2.2.4 = zext i8 %conv5.i136.1.2.4 to i32 *)
cast v_conv_i127_2_2_4@uint32 v_conv5_i136_1_2_4@uint8;
(*   %and.i128.2.2.4 = and i32 %conv.i127.2.2.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_2_2_4 v_conv_i127_2_2_4 (0x1)@uint32;
(*   %conv1.i129.2.2.4 = zext i8 %conv7.i139.1.2.4 to i32 *)
cast v_conv1_i129_2_2_4@uint32 v_conv7_i139_1_2_4@uint8;
(*   %mul.i130.2.2.4 = mul nsw i32 %and.i128.2.2.4, %conv1.i129.2.2.4 *)
mul v_mul_i130_2_2_4 v_and_i128_2_2_4 v_conv1_i129_2_2_4;
(*   %conv2.i131.2.2.4 = zext i8 %conv3.i133.1.2.4 to i32 *)
cast v_conv2_i131_2_2_4@uint32 v_conv3_i133_1_2_4@uint8;
(*   %xor.i132.2.2.4 = xor i32 %conv2.i131.2.2.4, %mul.i130.2.2.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_2_2_4 v_conv2_i131_2_2_4 v_mul_i130_2_2_4;
(*   %conv3.i133.2.2.4 = trunc i32 %xor.i132.2.2.4 to i8 *)
split tmp_v_xor_i132_2_2_4 v_conv3_i133_2_2_4 v_xor_i132_2_2_4 8;
vpc v_conv3_i133_2_2_4@uint8 v_conv3_i133_2_2_4@uint32;
(*   %conv4.i134.2.2.4 = zext i8 %conv5.i136.1.2.4 to i32 *)
cast v_conv4_i134_2_2_4@uint32 v_conv5_i136_1_2_4@uint8;
(*   %shr.i135.2.2.4 = ashr i32 %conv4.i134.2.2.4, 1 *)
(* You may need to modify here *)
split v_shr_i135_2_2_4 tmp_to_be_used v_conv4_i134_2_2_4 1;
(*   %conv5.i136.2.2.4 = trunc i32 %shr.i135.2.2.4 to i8 *)
split tmp_v_shr_i135_2_2_4 v_conv5_i136_2_2_4 v_shr_i135_2_2_4 8;
vpc v_conv5_i136_2_2_4@uint8 v_conv5_i136_2_2_4@uint32;
(*   %conv6.i137.2.2.4 = zext i8 %conv7.i139.1.2.4 to i32 *)
cast v_conv6_i137_2_2_4@uint32 v_conv7_i139_1_2_4@uint8;
(*   %shl.i138.2.2.4 = shl i32 %conv6.i137.2.2.4, 1 *)
shls discard_261 v_shl_i138_2_2_4 v_conv6_i137_2_2_4 1;
(*   %conv7.i139.2.2.4 = trunc i32 %shl.i138.2.2.4 to i8 *)
split tmp_v_shl_i138_2_2_4 v_conv7_i139_2_2_4 v_shl_i138_2_2_4 8;
vpc v_conv7_i139_2_2_4@uint8 v_conv7_i139_2_2_4@uint32;
(*   %conv.i127.3.2.4 = zext i8 %conv5.i136.2.2.4 to i32 *)
cast v_conv_i127_3_2_4@uint32 v_conv5_i136_2_2_4@uint8;
(*   %and.i128.3.2.4 = and i32 %conv.i127.3.2.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_3_2_4 v_conv_i127_3_2_4 (0x1)@uint32;
(*   %conv1.i129.3.2.4 = zext i8 %conv7.i139.2.2.4 to i32 *)
cast v_conv1_i129_3_2_4@uint32 v_conv7_i139_2_2_4@uint8;
(*   %mul.i130.3.2.4 = mul nsw i32 %and.i128.3.2.4, %conv1.i129.3.2.4 *)
mul v_mul_i130_3_2_4 v_and_i128_3_2_4 v_conv1_i129_3_2_4;
(*   %conv2.i131.3.2.4 = zext i8 %conv3.i133.2.2.4 to i32 *)
cast v_conv2_i131_3_2_4@uint32 v_conv3_i133_2_2_4@uint8;
(*   %xor.i132.3.2.4 = xor i32 %conv2.i131.3.2.4, %mul.i130.3.2.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_3_2_4 v_conv2_i131_3_2_4 v_mul_i130_3_2_4;
(*   %conv3.i133.3.2.4 = trunc i32 %xor.i132.3.2.4 to i8 *)
split tmp_v_xor_i132_3_2_4 v_conv3_i133_3_2_4 v_xor_i132_3_2_4 8;
vpc v_conv3_i133_3_2_4@uint8 v_conv3_i133_3_2_4@uint32;
(*   %conv4.i134.3.2.4 = zext i8 %conv5.i136.2.2.4 to i32 *)
cast v_conv4_i134_3_2_4@uint32 v_conv5_i136_2_2_4@uint8;
(*   %shr.i135.3.2.4 = ashr i32 %conv4.i134.3.2.4, 1 *)
(* You may need to modify here *)
split v_shr_i135_3_2_4 tmp_to_be_used v_conv4_i134_3_2_4 1;
(*   %conv5.i136.3.2.4 = trunc i32 %shr.i135.3.2.4 to i8 *)
split tmp_v_shr_i135_3_2_4 v_conv5_i136_3_2_4 v_shr_i135_3_2_4 8;
vpc v_conv5_i136_3_2_4@uint8 v_conv5_i136_3_2_4@uint32;
(*   %conv6.i137.3.2.4 = zext i8 %conv7.i139.2.2.4 to i32 *)
cast v_conv6_i137_3_2_4@uint32 v_conv7_i139_2_2_4@uint8;
(*   %shl.i138.3.2.4 = shl i32 %conv6.i137.3.2.4, 1 *)
shls discard_262 v_shl_i138_3_2_4 v_conv6_i137_3_2_4 1;
(*   %conv7.i139.3.2.4 = trunc i32 %shl.i138.3.2.4 to i8 *)
split tmp_v_shl_i138_3_2_4 v_conv7_i139_3_2_4 v_shl_i138_3_2_4 8;
vpc v_conv7_i139_3_2_4@uint8 v_conv7_i139_3_2_4@uint32;
(*   %conv.i127.4.2.4 = zext i8 %conv5.i136.3.2.4 to i32 *)
cast v_conv_i127_4_2_4@uint32 v_conv5_i136_3_2_4@uint8;
(*   %and.i128.4.2.4 = and i32 %conv.i127.4.2.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_4_2_4 v_conv_i127_4_2_4 (0x1)@uint32;
(*   %conv1.i129.4.2.4 = zext i8 %conv7.i139.3.2.4 to i32 *)
cast v_conv1_i129_4_2_4@uint32 v_conv7_i139_3_2_4@uint8;
(*   %mul.i130.4.2.4 = mul nsw i32 %and.i128.4.2.4, %conv1.i129.4.2.4 *)
mul v_mul_i130_4_2_4 v_and_i128_4_2_4 v_conv1_i129_4_2_4;
(*   %conv2.i131.4.2.4 = zext i8 %conv3.i133.3.2.4 to i32 *)
cast v_conv2_i131_4_2_4@uint32 v_conv3_i133_3_2_4@uint8;
(*   %xor.i132.4.2.4 = xor i32 %conv2.i131.4.2.4, %mul.i130.4.2.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_4_2_4 v_conv2_i131_4_2_4 v_mul_i130_4_2_4;
(*   %conv3.i133.4.2.4 = trunc i32 %xor.i132.4.2.4 to i8 *)
split tmp_v_xor_i132_4_2_4 v_conv3_i133_4_2_4 v_xor_i132_4_2_4 8;
vpc v_conv3_i133_4_2_4@uint8 v_conv3_i133_4_2_4@uint32;
(*   %conv4.i134.4.2.4 = zext i8 %conv5.i136.3.2.4 to i32 *)
cast v_conv4_i134_4_2_4@uint32 v_conv5_i136_3_2_4@uint8;
(*   %shr.i135.4.2.4 = ashr i32 %conv4.i134.4.2.4, 1 *)
(* You may need to modify here *)
split v_shr_i135_4_2_4 tmp_to_be_used v_conv4_i134_4_2_4 1;
(*   %conv5.i136.4.2.4 = trunc i32 %shr.i135.4.2.4 to i8 *)
split tmp_v_shr_i135_4_2_4 v_conv5_i136_4_2_4 v_shr_i135_4_2_4 8;
vpc v_conv5_i136_4_2_4@uint8 v_conv5_i136_4_2_4@uint32;
(*   %conv6.i137.4.2.4 = zext i8 %conv7.i139.3.2.4 to i32 *)
cast v_conv6_i137_4_2_4@uint32 v_conv7_i139_3_2_4@uint8;
(*   %shl.i138.4.2.4 = shl i32 %conv6.i137.4.2.4, 1 *)
shls discard_263 v_shl_i138_4_2_4 v_conv6_i137_4_2_4 1;
(*   %conv7.i139.4.2.4 = trunc i32 %shl.i138.4.2.4 to i8 *)
split tmp_v_shl_i138_4_2_4 v_conv7_i139_4_2_4 v_shl_i138_4_2_4 8;
vpc v_conv7_i139_4_2_4@uint8 v_conv7_i139_4_2_4@uint32;
(*   %conv.i127.5.2.4 = zext i8 %conv5.i136.4.2.4 to i32 *)
cast v_conv_i127_5_2_4@uint32 v_conv5_i136_4_2_4@uint8;
(*   %and.i128.5.2.4 = and i32 %conv.i127.5.2.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_5_2_4 v_conv_i127_5_2_4 (0x1)@uint32;
(*   %conv1.i129.5.2.4 = zext i8 %conv7.i139.4.2.4 to i32 *)
cast v_conv1_i129_5_2_4@uint32 v_conv7_i139_4_2_4@uint8;
(*   %mul.i130.5.2.4 = mul nsw i32 %and.i128.5.2.4, %conv1.i129.5.2.4 *)
mul v_mul_i130_5_2_4 v_and_i128_5_2_4 v_conv1_i129_5_2_4;
(*   %conv2.i131.5.2.4 = zext i8 %conv3.i133.4.2.4 to i32 *)
cast v_conv2_i131_5_2_4@uint32 v_conv3_i133_4_2_4@uint8;
(*   %xor.i132.5.2.4 = xor i32 %conv2.i131.5.2.4, %mul.i130.5.2.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_5_2_4 v_conv2_i131_5_2_4 v_mul_i130_5_2_4;
(*   %conv3.i133.5.2.4 = trunc i32 %xor.i132.5.2.4 to i8 *)
split tmp_v_xor_i132_5_2_4 v_conv3_i133_5_2_4 v_xor_i132_5_2_4 8;
vpc v_conv3_i133_5_2_4@uint8 v_conv3_i133_5_2_4@uint32;
(*   %conv4.i134.5.2.4 = zext i8 %conv5.i136.4.2.4 to i32 *)
cast v_conv4_i134_5_2_4@uint32 v_conv5_i136_4_2_4@uint8;
(*   %shr.i135.5.2.4 = ashr i32 %conv4.i134.5.2.4, 1 *)
(* You may need to modify here *)
split v_shr_i135_5_2_4 tmp_to_be_used v_conv4_i134_5_2_4 1;
(*   %conv5.i136.5.2.4 = trunc i32 %shr.i135.5.2.4 to i8 *)
split tmp_v_shr_i135_5_2_4 v_conv5_i136_5_2_4 v_shr_i135_5_2_4 8;
vpc v_conv5_i136_5_2_4@uint8 v_conv5_i136_5_2_4@uint32;
(*   %conv6.i137.5.2.4 = zext i8 %conv7.i139.4.2.4 to i32 *)
cast v_conv6_i137_5_2_4@uint32 v_conv7_i139_4_2_4@uint8;
(*   %shl.i138.5.2.4 = shl i32 %conv6.i137.5.2.4, 1 *)
shls discard_264 v_shl_i138_5_2_4 v_conv6_i137_5_2_4 1;
(*   %conv7.i139.5.2.4 = trunc i32 %shl.i138.5.2.4 to i8 *)
split tmp_v_shl_i138_5_2_4 v_conv7_i139_5_2_4 v_shl_i138_5_2_4 8;
vpc v_conv7_i139_5_2_4@uint8 v_conv7_i139_5_2_4@uint32;
(*   %conv.i127.6.2.4 = zext i8 %conv5.i136.5.2.4 to i32 *)
cast v_conv_i127_6_2_4@uint32 v_conv5_i136_5_2_4@uint8;
(*   %and.i128.6.2.4 = and i32 %conv.i127.6.2.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_6_2_4 v_conv_i127_6_2_4 (0x1)@uint32;
(*   %conv1.i129.6.2.4 = zext i8 %conv7.i139.5.2.4 to i32 *)
cast v_conv1_i129_6_2_4@uint32 v_conv7_i139_5_2_4@uint8;
(*   %mul.i130.6.2.4 = mul nsw i32 %and.i128.6.2.4, %conv1.i129.6.2.4 *)
mul v_mul_i130_6_2_4 v_and_i128_6_2_4 v_conv1_i129_6_2_4;
(*   %conv2.i131.6.2.4 = zext i8 %conv3.i133.5.2.4 to i32 *)
cast v_conv2_i131_6_2_4@uint32 v_conv3_i133_5_2_4@uint8;
(*   %xor.i132.6.2.4 = xor i32 %conv2.i131.6.2.4, %mul.i130.6.2.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_6_2_4 v_conv2_i131_6_2_4 v_mul_i130_6_2_4;
(*   %conv3.i133.6.2.4 = trunc i32 %xor.i132.6.2.4 to i8 *)
split tmp_v_xor_i132_6_2_4 v_conv3_i133_6_2_4 v_xor_i132_6_2_4 8;
vpc v_conv3_i133_6_2_4@uint8 v_conv3_i133_6_2_4@uint32;
(*   %conv4.i134.6.2.4 = zext i8 %conv5.i136.5.2.4 to i32 *)
cast v_conv4_i134_6_2_4@uint32 v_conv5_i136_5_2_4@uint8;
(*   %shr.i135.6.2.4 = ashr i32 %conv4.i134.6.2.4, 1 *)
(* You may need to modify here *)
split v_shr_i135_6_2_4 tmp_to_be_used v_conv4_i134_6_2_4 1;
(*   %conv5.i136.6.2.4 = trunc i32 %shr.i135.6.2.4 to i8 *)
split tmp_v_shr_i135_6_2_4 v_conv5_i136_6_2_4 v_shr_i135_6_2_4 8;
vpc v_conv5_i136_6_2_4@uint8 v_conv5_i136_6_2_4@uint32;
(*   %conv6.i137.6.2.4 = zext i8 %conv7.i139.5.2.4 to i32 *)
cast v_conv6_i137_6_2_4@uint32 v_conv7_i139_5_2_4@uint8;
(*   %shl.i138.6.2.4 = shl i32 %conv6.i137.6.2.4, 1 *)
shls discard_265 v_shl_i138_6_2_4 v_conv6_i137_6_2_4 1;
(*   %conv7.i139.6.2.4 = trunc i32 %shl.i138.6.2.4 to i8 *)
split tmp_v_shl_i138_6_2_4 v_conv7_i139_6_2_4 v_shl_i138_6_2_4 8;
vpc v_conv7_i139_6_2_4@uint8 v_conv7_i139_6_2_4@uint32;
(*   %conv.i127.7.2.4 = zext i8 %conv5.i136.6.2.4 to i32 *)
cast v_conv_i127_7_2_4@uint32 v_conv5_i136_6_2_4@uint8;
(*   %and.i128.7.2.4 = and i32 %conv.i127.7.2.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_7_2_4 v_conv_i127_7_2_4 (0x1)@uint32;
(*   %conv1.i129.7.2.4 = zext i8 %conv7.i139.6.2.4 to i32 *)
cast v_conv1_i129_7_2_4@uint32 v_conv7_i139_6_2_4@uint8;
(*   %mul.i130.7.2.4 = mul nsw i32 %and.i128.7.2.4, %conv1.i129.7.2.4 *)
mul v_mul_i130_7_2_4 v_and_i128_7_2_4 v_conv1_i129_7_2_4;
(*   %conv2.i131.7.2.4 = zext i8 %conv3.i133.6.2.4 to i32 *)
cast v_conv2_i131_7_2_4@uint32 v_conv3_i133_6_2_4@uint8;
(*   %xor.i132.7.2.4 = xor i32 %conv2.i131.7.2.4, %mul.i130.7.2.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_7_2_4 v_conv2_i131_7_2_4 v_mul_i130_7_2_4;
(*   %conv3.i133.7.2.4 = trunc i32 %xor.i132.7.2.4 to i8 *)
split tmp_v_xor_i132_7_2_4 v_conv3_i133_7_2_4 v_xor_i132_7_2_4 8;
vpc v_conv3_i133_7_2_4@uint8 v_conv3_i133_7_2_4@uint32;
(*   %arrayidx56.2.4 = getelementptr inbounds [25 x i8], [25 x i8]* %p1, i64 0, i64 22 *)
(*   store i8 %conv3.i133.7.2.4, i8* %arrayidx56.2.4, align 1 *)
mov p1_22 v_conv3_i133_7_2_4;
(*   %arrayidx60.2.4 = getelementptr inbounds [25 x i8], [25 x i8]* %p0, i64 0, i64 22 *)
(*   %160 = load i8, i8* %arrayidx60.2.4, align 1 *)
mov v160 p0_22;
(*   %conv61.2.4 = zext i8 %160 to i32 *)
cast v_conv61_2_4@uint32 v160@uint8;
(*   %arrayidx65.2.4 = getelementptr inbounds [25 x i8], [25 x i8]* %p1, i64 0, i64 22 *)
(*   %161 = load i8, i8* %arrayidx65.2.4, align 1 *)
mov v161 p1_22;
(*   %conv66.2.4 = zext i8 %161 to i32 *)
cast v_conv66_2_4@uint32 v161@uint8;
(*   %xor67.2.4 = xor i32 %conv61.2.4, %conv66.2.4 *)
(* You may need to modify here *)
xor uint32 v_xor67_2_4 v_conv61_2_4 v_conv66_2_4;
(*   %conv68.2.4 = trunc i32 %xor67.2.4 to i8 *)
split tmp_v_xor67_2_4 v_conv68_2_4 v_xor67_2_4 8;
vpc v_conv68_2_4@uint8 v_conv68_2_4@uint32;
(*   %arrayidx72.2.4 = getelementptr inbounds [25 x i8], [25 x i8]* %z, i64 0, i64 22 *)
(*   store i8 %conv68.2.4, i8* %arrayidx72.2.4, align 1 *)
mov z_22 v_conv68_2_4;
(*   %arrayidx22.3.4 = getelementptr inbounds i8, i8* %b, i64 3 *)
(*   %162 = load i8, i8* %arrayidx22.3.4, align 1 *)
mov v162 b_3;
(*   %conv.3.4 = zext i8 %162 to i32 *)
cast v_conv_3_4@uint32 v162@uint8;
(*   %arrayidx26.3.4 = getelementptr inbounds i8, i8* %r, i64 23 *)
(*   %163 = load i8, i8* %arrayidx26.3.4, align 1 *)
mov v163 r_23;
(*   %conv27.3.4 = zext i8 %163 to i32 *)
cast v_conv27_3_4@uint32 v163@uint8;
(*   %xor.3.4 = xor i32 %conv.3.4, %conv27.3.4 *)
(* You may need to modify here *)
xor uint32 v_xor_3_4 v_conv_3_4 v_conv27_3_4;
(*   %conv28.3.4 = trunc i32 %xor.3.4 to i8 *)
split tmp_v_xor_3_4 v_conv28_3_4 v_xor_3_4 8;
vpc v_conv28_3_4@uint8 v_conv28_3_4@uint32;
(*   %arrayidx32.3.4 = getelementptr inbounds [25 x i8], [25 x i8]* %s, i64 0, i64 23 *)
(*   store i8 %conv28.3.4, i8* %arrayidx32.3.4, align 1 *)
mov s_23 v_conv28_3_4;
(*   %164 = load i8, i8* %arrayidx34.4, align 1 *)
mov v164 a_4;
(*   %conv35.3.4 = zext i8 %164 to i32 *)
cast v_conv35_3_4@uint32 v164@uint8;
(*   %xor36.3.4 = xor i32 %conv35.3.4, 1 *)
(* You may need to modify here *)
xor uint32 v_xor36_3_4 v_conv35_3_4 (0x1)@uint32;
(*   %conv37.3.4 = trunc i32 %xor36.3.4 to i8 *)
split tmp_v_xor36_3_4 v_conv37_3_4 v_xor36_3_4 8;
vpc v_conv37_3_4@uint8 v_conv37_3_4@uint32;
(*   %arrayidx41.3.4 = getelementptr inbounds i8, i8* %r, i64 23 *)
(*   %165 = load i8, i8* %arrayidx41.3.4, align 1 *)
mov v165 r_23;
(*   %conv.i.3187.4 = zext i8 %165 to i32 *)
cast v_conv_i_3187_4@uint32 v165@uint8;
(*   %and.i.3188.4 = and i32 %conv.i.3187.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3188_4 v_conv_i_3187_4 (0x1)@uint32;
(*   %conv1.i.3189.4 = zext i8 %conv37.3.4 to i32 *)
cast v_conv1_i_3189_4@uint32 v_conv37_3_4@uint8;
(*   %mul.i.3190.4 = mul nsw i32 %and.i.3188.4, %conv1.i.3189.4 *)
mul v_mul_i_3190_4 v_and_i_3188_4 v_conv1_i_3189_4;
(*   %conv3.i.3191.4 = trunc i32 %mul.i.3190.4 to i8 *)
split tmp_v_mul_i_3190_4 v_conv3_i_3191_4 v_mul_i_3190_4 8;
vpc v_conv3_i_3191_4@uint8 v_conv3_i_3191_4@uint32;
(*   %conv4.i.3192.4 = zext i8 %165 to i32 *)
cast v_conv4_i_3192_4@uint32 v165@uint8;
(*   %shr.i.3193.4 = ashr i32 %conv4.i.3192.4, 1 *)
(* You may need to modify here *)
split v_shr_i_3193_4 tmp_to_be_used v_conv4_i_3192_4 1;
(*   %conv5.i.3194.4 = trunc i32 %shr.i.3193.4 to i8 *)
split tmp_v_shr_i_3193_4 v_conv5_i_3194_4 v_shr_i_3193_4 8;
vpc v_conv5_i_3194_4@uint8 v_conv5_i_3194_4@uint32;
(*   %conv6.i.3195.4 = zext i8 %conv37.3.4 to i32 *)
cast v_conv6_i_3195_4@uint32 v_conv37_3_4@uint8;
(*   %shl.i.3196.4 = shl i32 %conv6.i.3195.4, 1 *)
shls discard_266 v_shl_i_3196_4 v_conv6_i_3195_4 1;
(*   %conv7.i.3197.4 = trunc i32 %shl.i.3196.4 to i8 *)
split tmp_v_shl_i_3196_4 v_conv7_i_3197_4 v_shl_i_3196_4 8;
vpc v_conv7_i_3197_4@uint8 v_conv7_i_3197_4@uint32;
(*   %conv.i.1.3.4 = zext i8 %conv5.i.3194.4 to i32 *)
cast v_conv_i_1_3_4@uint32 v_conv5_i_3194_4@uint8;
(*   %and.i.1.3.4 = and i32 %conv.i.1.3.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_3_4 v_conv_i_1_3_4 (0x1)@uint32;
(*   %conv1.i.1.3.4 = zext i8 %conv7.i.3197.4 to i32 *)
cast v_conv1_i_1_3_4@uint32 v_conv7_i_3197_4@uint8;
(*   %mul.i.1.3.4 = mul nsw i32 %and.i.1.3.4, %conv1.i.1.3.4 *)
mul v_mul_i_1_3_4 v_and_i_1_3_4 v_conv1_i_1_3_4;
(*   %conv2.i.1.3.4 = zext i8 %conv3.i.3191.4 to i32 *)
cast v_conv2_i_1_3_4@uint32 v_conv3_i_3191_4@uint8;
(*   %xor.i.1.3.4 = xor i32 %conv2.i.1.3.4, %mul.i.1.3.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_3_4 v_conv2_i_1_3_4 v_mul_i_1_3_4;
(*   %conv3.i.1.3.4 = trunc i32 %xor.i.1.3.4 to i8 *)
split tmp_v_xor_i_1_3_4 v_conv3_i_1_3_4 v_xor_i_1_3_4 8;
vpc v_conv3_i_1_3_4@uint8 v_conv3_i_1_3_4@uint32;
(*   %conv4.i.1.3.4 = zext i8 %conv5.i.3194.4 to i32 *)
cast v_conv4_i_1_3_4@uint32 v_conv5_i_3194_4@uint8;
(*   %shr.i.1.3.4 = ashr i32 %conv4.i.1.3.4, 1 *)
(* You may need to modify here *)
split v_shr_i_1_3_4 tmp_to_be_used v_conv4_i_1_3_4 1;
(*   %conv5.i.1.3.4 = trunc i32 %shr.i.1.3.4 to i8 *)
split tmp_v_shr_i_1_3_4 v_conv5_i_1_3_4 v_shr_i_1_3_4 8;
vpc v_conv5_i_1_3_4@uint8 v_conv5_i_1_3_4@uint32;
(*   %conv6.i.1.3.4 = zext i8 %conv7.i.3197.4 to i32 *)
cast v_conv6_i_1_3_4@uint32 v_conv7_i_3197_4@uint8;
(*   %shl.i.1.3.4 = shl i32 %conv6.i.1.3.4, 1 *)
shls discard_267 v_shl_i_1_3_4 v_conv6_i_1_3_4 1;
(*   %conv7.i.1.3.4 = trunc i32 %shl.i.1.3.4 to i8 *)
split tmp_v_shl_i_1_3_4 v_conv7_i_1_3_4 v_shl_i_1_3_4 8;
vpc v_conv7_i_1_3_4@uint8 v_conv7_i_1_3_4@uint32;
(*   %conv.i.2.3.4 = zext i8 %conv5.i.1.3.4 to i32 *)
cast v_conv_i_2_3_4@uint32 v_conv5_i_1_3_4@uint8;
(*   %and.i.2.3.4 = and i32 %conv.i.2.3.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_3_4 v_conv_i_2_3_4 (0x1)@uint32;
(*   %conv1.i.2.3.4 = zext i8 %conv7.i.1.3.4 to i32 *)
cast v_conv1_i_2_3_4@uint32 v_conv7_i_1_3_4@uint8;
(*   %mul.i.2.3.4 = mul nsw i32 %and.i.2.3.4, %conv1.i.2.3.4 *)
mul v_mul_i_2_3_4 v_and_i_2_3_4 v_conv1_i_2_3_4;
(*   %conv2.i.2.3.4 = zext i8 %conv3.i.1.3.4 to i32 *)
cast v_conv2_i_2_3_4@uint32 v_conv3_i_1_3_4@uint8;
(*   %xor.i.2.3.4 = xor i32 %conv2.i.2.3.4, %mul.i.2.3.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_3_4 v_conv2_i_2_3_4 v_mul_i_2_3_4;
(*   %conv3.i.2.3.4 = trunc i32 %xor.i.2.3.4 to i8 *)
split tmp_v_xor_i_2_3_4 v_conv3_i_2_3_4 v_xor_i_2_3_4 8;
vpc v_conv3_i_2_3_4@uint8 v_conv3_i_2_3_4@uint32;
(*   %conv4.i.2.3.4 = zext i8 %conv5.i.1.3.4 to i32 *)
cast v_conv4_i_2_3_4@uint32 v_conv5_i_1_3_4@uint8;
(*   %shr.i.2.3.4 = ashr i32 %conv4.i.2.3.4, 1 *)
(* You may need to modify here *)
split v_shr_i_2_3_4 tmp_to_be_used v_conv4_i_2_3_4 1;
(*   %conv5.i.2.3.4 = trunc i32 %shr.i.2.3.4 to i8 *)
split tmp_v_shr_i_2_3_4 v_conv5_i_2_3_4 v_shr_i_2_3_4 8;
vpc v_conv5_i_2_3_4@uint8 v_conv5_i_2_3_4@uint32;
(*   %conv6.i.2.3.4 = zext i8 %conv7.i.1.3.4 to i32 *)
cast v_conv6_i_2_3_4@uint32 v_conv7_i_1_3_4@uint8;
(*   %shl.i.2.3.4 = shl i32 %conv6.i.2.3.4, 1 *)
shls discard_268 v_shl_i_2_3_4 v_conv6_i_2_3_4 1;
(*   %conv7.i.2.3.4 = trunc i32 %shl.i.2.3.4 to i8 *)
split tmp_v_shl_i_2_3_4 v_conv7_i_2_3_4 v_shl_i_2_3_4 8;
vpc v_conv7_i_2_3_4@uint8 v_conv7_i_2_3_4@uint32;
(*   %conv.i.3.3.4 = zext i8 %conv5.i.2.3.4 to i32 *)
cast v_conv_i_3_3_4@uint32 v_conv5_i_2_3_4@uint8;
(*   %and.i.3.3.4 = and i32 %conv.i.3.3.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_3_4 v_conv_i_3_3_4 (0x1)@uint32;
(*   %conv1.i.3.3.4 = zext i8 %conv7.i.2.3.4 to i32 *)
cast v_conv1_i_3_3_4@uint32 v_conv7_i_2_3_4@uint8;
(*   %mul.i.3.3.4 = mul nsw i32 %and.i.3.3.4, %conv1.i.3.3.4 *)
mul v_mul_i_3_3_4 v_and_i_3_3_4 v_conv1_i_3_3_4;
(*   %conv2.i.3.3.4 = zext i8 %conv3.i.2.3.4 to i32 *)
cast v_conv2_i_3_3_4@uint32 v_conv3_i_2_3_4@uint8;
(*   %xor.i.3.3.4 = xor i32 %conv2.i.3.3.4, %mul.i.3.3.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_3_4 v_conv2_i_3_3_4 v_mul_i_3_3_4;
(*   %conv3.i.3.3.4 = trunc i32 %xor.i.3.3.4 to i8 *)
split tmp_v_xor_i_3_3_4 v_conv3_i_3_3_4 v_xor_i_3_3_4 8;
vpc v_conv3_i_3_3_4@uint8 v_conv3_i_3_3_4@uint32;
(*   %conv4.i.3.3.4 = zext i8 %conv5.i.2.3.4 to i32 *)
cast v_conv4_i_3_3_4@uint32 v_conv5_i_2_3_4@uint8;
(*   %shr.i.3.3.4 = ashr i32 %conv4.i.3.3.4, 1 *)
(* You may need to modify here *)
split v_shr_i_3_3_4 tmp_to_be_used v_conv4_i_3_3_4 1;
(*   %conv5.i.3.3.4 = trunc i32 %shr.i.3.3.4 to i8 *)
split tmp_v_shr_i_3_3_4 v_conv5_i_3_3_4 v_shr_i_3_3_4 8;
vpc v_conv5_i_3_3_4@uint8 v_conv5_i_3_3_4@uint32;
(*   %conv6.i.3.3.4 = zext i8 %conv7.i.2.3.4 to i32 *)
cast v_conv6_i_3_3_4@uint32 v_conv7_i_2_3_4@uint8;
(*   %shl.i.3.3.4 = shl i32 %conv6.i.3.3.4, 1 *)
shls discard_269 v_shl_i_3_3_4 v_conv6_i_3_3_4 1;
(*   %conv7.i.3.3.4 = trunc i32 %shl.i.3.3.4 to i8 *)
split tmp_v_shl_i_3_3_4 v_conv7_i_3_3_4 v_shl_i_3_3_4 8;
vpc v_conv7_i_3_3_4@uint8 v_conv7_i_3_3_4@uint32;
(*   %conv.i.4.3.4 = zext i8 %conv5.i.3.3.4 to i32 *)
cast v_conv_i_4_3_4@uint32 v_conv5_i_3_3_4@uint8;
(*   %and.i.4.3.4 = and i32 %conv.i.4.3.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_3_4 v_conv_i_4_3_4 (0x1)@uint32;
(*   %conv1.i.4.3.4 = zext i8 %conv7.i.3.3.4 to i32 *)
cast v_conv1_i_4_3_4@uint32 v_conv7_i_3_3_4@uint8;
(*   %mul.i.4.3.4 = mul nsw i32 %and.i.4.3.4, %conv1.i.4.3.4 *)
mul v_mul_i_4_3_4 v_and_i_4_3_4 v_conv1_i_4_3_4;
(*   %conv2.i.4.3.4 = zext i8 %conv3.i.3.3.4 to i32 *)
cast v_conv2_i_4_3_4@uint32 v_conv3_i_3_3_4@uint8;
(*   %xor.i.4.3.4 = xor i32 %conv2.i.4.3.4, %mul.i.4.3.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_3_4 v_conv2_i_4_3_4 v_mul_i_4_3_4;
(*   %conv3.i.4.3.4 = trunc i32 %xor.i.4.3.4 to i8 *)
split tmp_v_xor_i_4_3_4 v_conv3_i_4_3_4 v_xor_i_4_3_4 8;
vpc v_conv3_i_4_3_4@uint8 v_conv3_i_4_3_4@uint32;
(*   %conv4.i.4.3.4 = zext i8 %conv5.i.3.3.4 to i32 *)
cast v_conv4_i_4_3_4@uint32 v_conv5_i_3_3_4@uint8;
(*   %shr.i.4.3.4 = ashr i32 %conv4.i.4.3.4, 1 *)
(* You may need to modify here *)
split v_shr_i_4_3_4 tmp_to_be_used v_conv4_i_4_3_4 1;
(*   %conv5.i.4.3.4 = trunc i32 %shr.i.4.3.4 to i8 *)
split tmp_v_shr_i_4_3_4 v_conv5_i_4_3_4 v_shr_i_4_3_4 8;
vpc v_conv5_i_4_3_4@uint8 v_conv5_i_4_3_4@uint32;
(*   %conv6.i.4.3.4 = zext i8 %conv7.i.3.3.4 to i32 *)
cast v_conv6_i_4_3_4@uint32 v_conv7_i_3_3_4@uint8;
(*   %shl.i.4.3.4 = shl i32 %conv6.i.4.3.4, 1 *)
shls discard_270 v_shl_i_4_3_4 v_conv6_i_4_3_4 1;
(*   %conv7.i.4.3.4 = trunc i32 %shl.i.4.3.4 to i8 *)
split tmp_v_shl_i_4_3_4 v_conv7_i_4_3_4 v_shl_i_4_3_4 8;
vpc v_conv7_i_4_3_4@uint8 v_conv7_i_4_3_4@uint32;
(*   %conv.i.5.3.4 = zext i8 %conv5.i.4.3.4 to i32 *)
cast v_conv_i_5_3_4@uint32 v_conv5_i_4_3_4@uint8;
(*   %and.i.5.3.4 = and i32 %conv.i.5.3.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_3_4 v_conv_i_5_3_4 (0x1)@uint32;
(*   %conv1.i.5.3.4 = zext i8 %conv7.i.4.3.4 to i32 *)
cast v_conv1_i_5_3_4@uint32 v_conv7_i_4_3_4@uint8;
(*   %mul.i.5.3.4 = mul nsw i32 %and.i.5.3.4, %conv1.i.5.3.4 *)
mul v_mul_i_5_3_4 v_and_i_5_3_4 v_conv1_i_5_3_4;
(*   %conv2.i.5.3.4 = zext i8 %conv3.i.4.3.4 to i32 *)
cast v_conv2_i_5_3_4@uint32 v_conv3_i_4_3_4@uint8;
(*   %xor.i.5.3.4 = xor i32 %conv2.i.5.3.4, %mul.i.5.3.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_3_4 v_conv2_i_5_3_4 v_mul_i_5_3_4;
(*   %conv3.i.5.3.4 = trunc i32 %xor.i.5.3.4 to i8 *)
split tmp_v_xor_i_5_3_4 v_conv3_i_5_3_4 v_xor_i_5_3_4 8;
vpc v_conv3_i_5_3_4@uint8 v_conv3_i_5_3_4@uint32;
(*   %conv4.i.5.3.4 = zext i8 %conv5.i.4.3.4 to i32 *)
cast v_conv4_i_5_3_4@uint32 v_conv5_i_4_3_4@uint8;
(*   %shr.i.5.3.4 = ashr i32 %conv4.i.5.3.4, 1 *)
(* You may need to modify here *)
split v_shr_i_5_3_4 tmp_to_be_used v_conv4_i_5_3_4 1;
(*   %conv5.i.5.3.4 = trunc i32 %shr.i.5.3.4 to i8 *)
split tmp_v_shr_i_5_3_4 v_conv5_i_5_3_4 v_shr_i_5_3_4 8;
vpc v_conv5_i_5_3_4@uint8 v_conv5_i_5_3_4@uint32;
(*   %conv6.i.5.3.4 = zext i8 %conv7.i.4.3.4 to i32 *)
cast v_conv6_i_5_3_4@uint32 v_conv7_i_4_3_4@uint8;
(*   %shl.i.5.3.4 = shl i32 %conv6.i.5.3.4, 1 *)
shls discard_271 v_shl_i_5_3_4 v_conv6_i_5_3_4 1;
(*   %conv7.i.5.3.4 = trunc i32 %shl.i.5.3.4 to i8 *)
split tmp_v_shl_i_5_3_4 v_conv7_i_5_3_4 v_shl_i_5_3_4 8;
vpc v_conv7_i_5_3_4@uint8 v_conv7_i_5_3_4@uint32;
(*   %conv.i.6.3.4 = zext i8 %conv5.i.5.3.4 to i32 *)
cast v_conv_i_6_3_4@uint32 v_conv5_i_5_3_4@uint8;
(*   %and.i.6.3.4 = and i32 %conv.i.6.3.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_3_4 v_conv_i_6_3_4 (0x1)@uint32;
(*   %conv1.i.6.3.4 = zext i8 %conv7.i.5.3.4 to i32 *)
cast v_conv1_i_6_3_4@uint32 v_conv7_i_5_3_4@uint8;
(*   %mul.i.6.3.4 = mul nsw i32 %and.i.6.3.4, %conv1.i.6.3.4 *)
mul v_mul_i_6_3_4 v_and_i_6_3_4 v_conv1_i_6_3_4;
(*   %conv2.i.6.3.4 = zext i8 %conv3.i.5.3.4 to i32 *)
cast v_conv2_i_6_3_4@uint32 v_conv3_i_5_3_4@uint8;
(*   %xor.i.6.3.4 = xor i32 %conv2.i.6.3.4, %mul.i.6.3.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_3_4 v_conv2_i_6_3_4 v_mul_i_6_3_4;
(*   %conv3.i.6.3.4 = trunc i32 %xor.i.6.3.4 to i8 *)
split tmp_v_xor_i_6_3_4 v_conv3_i_6_3_4 v_xor_i_6_3_4 8;
vpc v_conv3_i_6_3_4@uint8 v_conv3_i_6_3_4@uint32;
(*   %conv4.i.6.3.4 = zext i8 %conv5.i.5.3.4 to i32 *)
cast v_conv4_i_6_3_4@uint32 v_conv5_i_5_3_4@uint8;
(*   %shr.i.6.3.4 = ashr i32 %conv4.i.6.3.4, 1 *)
(* You may need to modify here *)
split v_shr_i_6_3_4 tmp_to_be_used v_conv4_i_6_3_4 1;
(*   %conv5.i.6.3.4 = trunc i32 %shr.i.6.3.4 to i8 *)
split tmp_v_shr_i_6_3_4 v_conv5_i_6_3_4 v_shr_i_6_3_4 8;
vpc v_conv5_i_6_3_4@uint8 v_conv5_i_6_3_4@uint32;
(*   %conv6.i.6.3.4 = zext i8 %conv7.i.5.3.4 to i32 *)
cast v_conv6_i_6_3_4@uint32 v_conv7_i_5_3_4@uint8;
(*   %shl.i.6.3.4 = shl i32 %conv6.i.6.3.4, 1 *)
shls discard_272 v_shl_i_6_3_4 v_conv6_i_6_3_4 1;
(*   %conv7.i.6.3.4 = trunc i32 %shl.i.6.3.4 to i8 *)
split tmp_v_shl_i_6_3_4 v_conv7_i_6_3_4 v_shl_i_6_3_4 8;
vpc v_conv7_i_6_3_4@uint8 v_conv7_i_6_3_4@uint32;
(*   %conv.i.7.3.4 = zext i8 %conv5.i.6.3.4 to i32 *)
cast v_conv_i_7_3_4@uint32 v_conv5_i_6_3_4@uint8;
(*   %and.i.7.3.4 = and i32 %conv.i.7.3.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_3_4 v_conv_i_7_3_4 (0x1)@uint32;
(*   %conv1.i.7.3.4 = zext i8 %conv7.i.6.3.4 to i32 *)
cast v_conv1_i_7_3_4@uint32 v_conv7_i_6_3_4@uint8;
(*   %mul.i.7.3.4 = mul nsw i32 %and.i.7.3.4, %conv1.i.7.3.4 *)
mul v_mul_i_7_3_4 v_and_i_7_3_4 v_conv1_i_7_3_4;
(*   %conv2.i.7.3.4 = zext i8 %conv3.i.6.3.4 to i32 *)
cast v_conv2_i_7_3_4@uint32 v_conv3_i_6_3_4@uint8;
(*   %xor.i.7.3.4 = xor i32 %conv2.i.7.3.4, %mul.i.7.3.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_3_4 v_conv2_i_7_3_4 v_mul_i_7_3_4;
(*   %conv3.i.7.3.4 = trunc i32 %xor.i.7.3.4 to i8 *)
split tmp_v_xor_i_7_3_4 v_conv3_i_7_3_4 v_xor_i_7_3_4 8;
vpc v_conv3_i_7_3_4@uint8 v_conv3_i_7_3_4@uint32;
(*   %arrayidx45.3.4 = getelementptr inbounds [25 x i8], [25 x i8]* %p0, i64 0, i64 23 *)
(*   store i8 %conv3.i.7.3.4, i8* %arrayidx45.3.4, align 1 *)
mov p0_23 v_conv3_i_7_3_4;
(*   %166 = load i8, i8* %arrayidx47.4, align 1 *)
mov v166 a_4;
(*   %arrayidx51.3.4 = getelementptr inbounds [25 x i8], [25 x i8]* %s, i64 0, i64 23 *)
(*   %167 = load i8, i8* %arrayidx51.3.4, align 1 *)
mov v167 s_23;
(*   %conv.i127.3198.4 = zext i8 %167 to i32 *)
cast v_conv_i127_3198_4@uint32 v167@uint8;
(*   %and.i128.3199.4 = and i32 %conv.i127.3198.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_3199_4 v_conv_i127_3198_4 (0x1)@uint32;
(*   %conv1.i129.3200.4 = zext i8 %166 to i32 *)
cast v_conv1_i129_3200_4@uint32 v166@uint8;
(*   %mul.i130.3201.4 = mul nsw i32 %and.i128.3199.4, %conv1.i129.3200.4 *)
mul v_mul_i130_3201_4 v_and_i128_3199_4 v_conv1_i129_3200_4;
(*   %conv3.i133.3202.4 = trunc i32 %mul.i130.3201.4 to i8 *)
split tmp_v_mul_i130_3201_4 v_conv3_i133_3202_4 v_mul_i130_3201_4 8;
vpc v_conv3_i133_3202_4@uint8 v_conv3_i133_3202_4@uint32;
(*   %conv4.i134.3203.4 = zext i8 %167 to i32 *)
cast v_conv4_i134_3203_4@uint32 v167@uint8;
(*   %shr.i135.3204.4 = ashr i32 %conv4.i134.3203.4, 1 *)
(* You may need to modify here *)
split v_shr_i135_3204_4 tmp_to_be_used v_conv4_i134_3203_4 1;
(*   %conv5.i136.3205.4 = trunc i32 %shr.i135.3204.4 to i8 *)
split tmp_v_shr_i135_3204_4 v_conv5_i136_3205_4 v_shr_i135_3204_4 8;
vpc v_conv5_i136_3205_4@uint8 v_conv5_i136_3205_4@uint32;
(*   %conv6.i137.3206.4 = zext i8 %166 to i32 *)
cast v_conv6_i137_3206_4@uint32 v166@uint8;
(*   %shl.i138.3207.4 = shl i32 %conv6.i137.3206.4, 1 *)
shls discard_273 v_shl_i138_3207_4 v_conv6_i137_3206_4 1;
(*   %conv7.i139.3208.4 = trunc i32 %shl.i138.3207.4 to i8 *)
split tmp_v_shl_i138_3207_4 v_conv7_i139_3208_4 v_shl_i138_3207_4 8;
vpc v_conv7_i139_3208_4@uint8 v_conv7_i139_3208_4@uint32;
(*   %conv.i127.1.3.4 = zext i8 %conv5.i136.3205.4 to i32 *)
cast v_conv_i127_1_3_4@uint32 v_conv5_i136_3205_4@uint8;
(*   %and.i128.1.3.4 = and i32 %conv.i127.1.3.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1_3_4 v_conv_i127_1_3_4 (0x1)@uint32;
(*   %conv1.i129.1.3.4 = zext i8 %conv7.i139.3208.4 to i32 *)
cast v_conv1_i129_1_3_4@uint32 v_conv7_i139_3208_4@uint8;
(*   %mul.i130.1.3.4 = mul nsw i32 %and.i128.1.3.4, %conv1.i129.1.3.4 *)
mul v_mul_i130_1_3_4 v_and_i128_1_3_4 v_conv1_i129_1_3_4;
(*   %conv2.i131.1.3.4 = zext i8 %conv3.i133.3202.4 to i32 *)
cast v_conv2_i131_1_3_4@uint32 v_conv3_i133_3202_4@uint8;
(*   %xor.i132.1.3.4 = xor i32 %conv2.i131.1.3.4, %mul.i130.1.3.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_1_3_4 v_conv2_i131_1_3_4 v_mul_i130_1_3_4;
(*   %conv3.i133.1.3.4 = trunc i32 %xor.i132.1.3.4 to i8 *)
split tmp_v_xor_i132_1_3_4 v_conv3_i133_1_3_4 v_xor_i132_1_3_4 8;
vpc v_conv3_i133_1_3_4@uint8 v_conv3_i133_1_3_4@uint32;
(*   %conv4.i134.1.3.4 = zext i8 %conv5.i136.3205.4 to i32 *)
cast v_conv4_i134_1_3_4@uint32 v_conv5_i136_3205_4@uint8;
(*   %shr.i135.1.3.4 = ashr i32 %conv4.i134.1.3.4, 1 *)
(* You may need to modify here *)
split v_shr_i135_1_3_4 tmp_to_be_used v_conv4_i134_1_3_4 1;
(*   %conv5.i136.1.3.4 = trunc i32 %shr.i135.1.3.4 to i8 *)
split tmp_v_shr_i135_1_3_4 v_conv5_i136_1_3_4 v_shr_i135_1_3_4 8;
vpc v_conv5_i136_1_3_4@uint8 v_conv5_i136_1_3_4@uint32;
(*   %conv6.i137.1.3.4 = zext i8 %conv7.i139.3208.4 to i32 *)
cast v_conv6_i137_1_3_4@uint32 v_conv7_i139_3208_4@uint8;
(*   %shl.i138.1.3.4 = shl i32 %conv6.i137.1.3.4, 1 *)
shls discard_274 v_shl_i138_1_3_4 v_conv6_i137_1_3_4 1;
(*   %conv7.i139.1.3.4 = trunc i32 %shl.i138.1.3.4 to i8 *)
split tmp_v_shl_i138_1_3_4 v_conv7_i139_1_3_4 v_shl_i138_1_3_4 8;
vpc v_conv7_i139_1_3_4@uint8 v_conv7_i139_1_3_4@uint32;
(*   %conv.i127.2.3.4 = zext i8 %conv5.i136.1.3.4 to i32 *)
cast v_conv_i127_2_3_4@uint32 v_conv5_i136_1_3_4@uint8;
(*   %and.i128.2.3.4 = and i32 %conv.i127.2.3.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_2_3_4 v_conv_i127_2_3_4 (0x1)@uint32;
(*   %conv1.i129.2.3.4 = zext i8 %conv7.i139.1.3.4 to i32 *)
cast v_conv1_i129_2_3_4@uint32 v_conv7_i139_1_3_4@uint8;
(*   %mul.i130.2.3.4 = mul nsw i32 %and.i128.2.3.4, %conv1.i129.2.3.4 *)
mul v_mul_i130_2_3_4 v_and_i128_2_3_4 v_conv1_i129_2_3_4;
(*   %conv2.i131.2.3.4 = zext i8 %conv3.i133.1.3.4 to i32 *)
cast v_conv2_i131_2_3_4@uint32 v_conv3_i133_1_3_4@uint8;
(*   %xor.i132.2.3.4 = xor i32 %conv2.i131.2.3.4, %mul.i130.2.3.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_2_3_4 v_conv2_i131_2_3_4 v_mul_i130_2_3_4;
(*   %conv3.i133.2.3.4 = trunc i32 %xor.i132.2.3.4 to i8 *)
split tmp_v_xor_i132_2_3_4 v_conv3_i133_2_3_4 v_xor_i132_2_3_4 8;
vpc v_conv3_i133_2_3_4@uint8 v_conv3_i133_2_3_4@uint32;
(*   %conv4.i134.2.3.4 = zext i8 %conv5.i136.1.3.4 to i32 *)
cast v_conv4_i134_2_3_4@uint32 v_conv5_i136_1_3_4@uint8;
(*   %shr.i135.2.3.4 = ashr i32 %conv4.i134.2.3.4, 1 *)
(* You may need to modify here *)
split v_shr_i135_2_3_4 tmp_to_be_used v_conv4_i134_2_3_4 1;
(*   %conv5.i136.2.3.4 = trunc i32 %shr.i135.2.3.4 to i8 *)
split tmp_v_shr_i135_2_3_4 v_conv5_i136_2_3_4 v_shr_i135_2_3_4 8;
vpc v_conv5_i136_2_3_4@uint8 v_conv5_i136_2_3_4@uint32;
(*   %conv6.i137.2.3.4 = zext i8 %conv7.i139.1.3.4 to i32 *)
cast v_conv6_i137_2_3_4@uint32 v_conv7_i139_1_3_4@uint8;
(*   %shl.i138.2.3.4 = shl i32 %conv6.i137.2.3.4, 1 *)
shls discard_275 v_shl_i138_2_3_4 v_conv6_i137_2_3_4 1;
(*   %conv7.i139.2.3.4 = trunc i32 %shl.i138.2.3.4 to i8 *)
split tmp_v_shl_i138_2_3_4 v_conv7_i139_2_3_4 v_shl_i138_2_3_4 8;
vpc v_conv7_i139_2_3_4@uint8 v_conv7_i139_2_3_4@uint32;
(*   %conv.i127.3.3.4 = zext i8 %conv5.i136.2.3.4 to i32 *)
cast v_conv_i127_3_3_4@uint32 v_conv5_i136_2_3_4@uint8;
(*   %and.i128.3.3.4 = and i32 %conv.i127.3.3.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_3_3_4 v_conv_i127_3_3_4 (0x1)@uint32;
(*   %conv1.i129.3.3.4 = zext i8 %conv7.i139.2.3.4 to i32 *)
cast v_conv1_i129_3_3_4@uint32 v_conv7_i139_2_3_4@uint8;
(*   %mul.i130.3.3.4 = mul nsw i32 %and.i128.3.3.4, %conv1.i129.3.3.4 *)
mul v_mul_i130_3_3_4 v_and_i128_3_3_4 v_conv1_i129_3_3_4;
(*   %conv2.i131.3.3.4 = zext i8 %conv3.i133.2.3.4 to i32 *)
cast v_conv2_i131_3_3_4@uint32 v_conv3_i133_2_3_4@uint8;
(*   %xor.i132.3.3.4 = xor i32 %conv2.i131.3.3.4, %mul.i130.3.3.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_3_3_4 v_conv2_i131_3_3_4 v_mul_i130_3_3_4;
(*   %conv3.i133.3.3.4 = trunc i32 %xor.i132.3.3.4 to i8 *)
split tmp_v_xor_i132_3_3_4 v_conv3_i133_3_3_4 v_xor_i132_3_3_4 8;
vpc v_conv3_i133_3_3_4@uint8 v_conv3_i133_3_3_4@uint32;
(*   %conv4.i134.3.3.4 = zext i8 %conv5.i136.2.3.4 to i32 *)
cast v_conv4_i134_3_3_4@uint32 v_conv5_i136_2_3_4@uint8;
(*   %shr.i135.3.3.4 = ashr i32 %conv4.i134.3.3.4, 1 *)
(* You may need to modify here *)
split v_shr_i135_3_3_4 tmp_to_be_used v_conv4_i134_3_3_4 1;
(*   %conv5.i136.3.3.4 = trunc i32 %shr.i135.3.3.4 to i8 *)
split tmp_v_shr_i135_3_3_4 v_conv5_i136_3_3_4 v_shr_i135_3_3_4 8;
vpc v_conv5_i136_3_3_4@uint8 v_conv5_i136_3_3_4@uint32;
(*   %conv6.i137.3.3.4 = zext i8 %conv7.i139.2.3.4 to i32 *)
cast v_conv6_i137_3_3_4@uint32 v_conv7_i139_2_3_4@uint8;
(*   %shl.i138.3.3.4 = shl i32 %conv6.i137.3.3.4, 1 *)
shls discard_276 v_shl_i138_3_3_4 v_conv6_i137_3_3_4 1;
(*   %conv7.i139.3.3.4 = trunc i32 %shl.i138.3.3.4 to i8 *)
split tmp_v_shl_i138_3_3_4 v_conv7_i139_3_3_4 v_shl_i138_3_3_4 8;
vpc v_conv7_i139_3_3_4@uint8 v_conv7_i139_3_3_4@uint32;
(*   %conv.i127.4.3.4 = zext i8 %conv5.i136.3.3.4 to i32 *)
cast v_conv_i127_4_3_4@uint32 v_conv5_i136_3_3_4@uint8;
(*   %and.i128.4.3.4 = and i32 %conv.i127.4.3.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_4_3_4 v_conv_i127_4_3_4 (0x1)@uint32;
(*   %conv1.i129.4.3.4 = zext i8 %conv7.i139.3.3.4 to i32 *)
cast v_conv1_i129_4_3_4@uint32 v_conv7_i139_3_3_4@uint8;
(*   %mul.i130.4.3.4 = mul nsw i32 %and.i128.4.3.4, %conv1.i129.4.3.4 *)
mul v_mul_i130_4_3_4 v_and_i128_4_3_4 v_conv1_i129_4_3_4;
(*   %conv2.i131.4.3.4 = zext i8 %conv3.i133.3.3.4 to i32 *)
cast v_conv2_i131_4_3_4@uint32 v_conv3_i133_3_3_4@uint8;
(*   %xor.i132.4.3.4 = xor i32 %conv2.i131.4.3.4, %mul.i130.4.3.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_4_3_4 v_conv2_i131_4_3_4 v_mul_i130_4_3_4;
(*   %conv3.i133.4.3.4 = trunc i32 %xor.i132.4.3.4 to i8 *)
split tmp_v_xor_i132_4_3_4 v_conv3_i133_4_3_4 v_xor_i132_4_3_4 8;
vpc v_conv3_i133_4_3_4@uint8 v_conv3_i133_4_3_4@uint32;
(*   %conv4.i134.4.3.4 = zext i8 %conv5.i136.3.3.4 to i32 *)
cast v_conv4_i134_4_3_4@uint32 v_conv5_i136_3_3_4@uint8;
(*   %shr.i135.4.3.4 = ashr i32 %conv4.i134.4.3.4, 1 *)
(* You may need to modify here *)
split v_shr_i135_4_3_4 tmp_to_be_used v_conv4_i134_4_3_4 1;
(*   %conv5.i136.4.3.4 = trunc i32 %shr.i135.4.3.4 to i8 *)
split tmp_v_shr_i135_4_3_4 v_conv5_i136_4_3_4 v_shr_i135_4_3_4 8;
vpc v_conv5_i136_4_3_4@uint8 v_conv5_i136_4_3_4@uint32;
(*   %conv6.i137.4.3.4 = zext i8 %conv7.i139.3.3.4 to i32 *)
cast v_conv6_i137_4_3_4@uint32 v_conv7_i139_3_3_4@uint8;
(*   %shl.i138.4.3.4 = shl i32 %conv6.i137.4.3.4, 1 *)
shls discard_277 v_shl_i138_4_3_4 v_conv6_i137_4_3_4 1;
(*   %conv7.i139.4.3.4 = trunc i32 %shl.i138.4.3.4 to i8 *)
split tmp_v_shl_i138_4_3_4 v_conv7_i139_4_3_4 v_shl_i138_4_3_4 8;
vpc v_conv7_i139_4_3_4@uint8 v_conv7_i139_4_3_4@uint32;
(*   %conv.i127.5.3.4 = zext i8 %conv5.i136.4.3.4 to i32 *)
cast v_conv_i127_5_3_4@uint32 v_conv5_i136_4_3_4@uint8;
(*   %and.i128.5.3.4 = and i32 %conv.i127.5.3.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_5_3_4 v_conv_i127_5_3_4 (0x1)@uint32;
(*   %conv1.i129.5.3.4 = zext i8 %conv7.i139.4.3.4 to i32 *)
cast v_conv1_i129_5_3_4@uint32 v_conv7_i139_4_3_4@uint8;
(*   %mul.i130.5.3.4 = mul nsw i32 %and.i128.5.3.4, %conv1.i129.5.3.4 *)
mul v_mul_i130_5_3_4 v_and_i128_5_3_4 v_conv1_i129_5_3_4;
(*   %conv2.i131.5.3.4 = zext i8 %conv3.i133.4.3.4 to i32 *)
cast v_conv2_i131_5_3_4@uint32 v_conv3_i133_4_3_4@uint8;
(*   %xor.i132.5.3.4 = xor i32 %conv2.i131.5.3.4, %mul.i130.5.3.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_5_3_4 v_conv2_i131_5_3_4 v_mul_i130_5_3_4;
(*   %conv3.i133.5.3.4 = trunc i32 %xor.i132.5.3.4 to i8 *)
split tmp_v_xor_i132_5_3_4 v_conv3_i133_5_3_4 v_xor_i132_5_3_4 8;
vpc v_conv3_i133_5_3_4@uint8 v_conv3_i133_5_3_4@uint32;
(*   %conv4.i134.5.3.4 = zext i8 %conv5.i136.4.3.4 to i32 *)
cast v_conv4_i134_5_3_4@uint32 v_conv5_i136_4_3_4@uint8;
(*   %shr.i135.5.3.4 = ashr i32 %conv4.i134.5.3.4, 1 *)
(* You may need to modify here *)
split v_shr_i135_5_3_4 tmp_to_be_used v_conv4_i134_5_3_4 1;
(*   %conv5.i136.5.3.4 = trunc i32 %shr.i135.5.3.4 to i8 *)
split tmp_v_shr_i135_5_3_4 v_conv5_i136_5_3_4 v_shr_i135_5_3_4 8;
vpc v_conv5_i136_5_3_4@uint8 v_conv5_i136_5_3_4@uint32;
(*   %conv6.i137.5.3.4 = zext i8 %conv7.i139.4.3.4 to i32 *)
cast v_conv6_i137_5_3_4@uint32 v_conv7_i139_4_3_4@uint8;
(*   %shl.i138.5.3.4 = shl i32 %conv6.i137.5.3.4, 1 *)
shls discard_278 v_shl_i138_5_3_4 v_conv6_i137_5_3_4 1;
(*   %conv7.i139.5.3.4 = trunc i32 %shl.i138.5.3.4 to i8 *)
split tmp_v_shl_i138_5_3_4 v_conv7_i139_5_3_4 v_shl_i138_5_3_4 8;
vpc v_conv7_i139_5_3_4@uint8 v_conv7_i139_5_3_4@uint32;
(*   %conv.i127.6.3.4 = zext i8 %conv5.i136.5.3.4 to i32 *)
cast v_conv_i127_6_3_4@uint32 v_conv5_i136_5_3_4@uint8;
(*   %and.i128.6.3.4 = and i32 %conv.i127.6.3.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_6_3_4 v_conv_i127_6_3_4 (0x1)@uint32;
(*   %conv1.i129.6.3.4 = zext i8 %conv7.i139.5.3.4 to i32 *)
cast v_conv1_i129_6_3_4@uint32 v_conv7_i139_5_3_4@uint8;
(*   %mul.i130.6.3.4 = mul nsw i32 %and.i128.6.3.4, %conv1.i129.6.3.4 *)
mul v_mul_i130_6_3_4 v_and_i128_6_3_4 v_conv1_i129_6_3_4;
(*   %conv2.i131.6.3.4 = zext i8 %conv3.i133.5.3.4 to i32 *)
cast v_conv2_i131_6_3_4@uint32 v_conv3_i133_5_3_4@uint8;
(*   %xor.i132.6.3.4 = xor i32 %conv2.i131.6.3.4, %mul.i130.6.3.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_6_3_4 v_conv2_i131_6_3_4 v_mul_i130_6_3_4;
(*   %conv3.i133.6.3.4 = trunc i32 %xor.i132.6.3.4 to i8 *)
split tmp_v_xor_i132_6_3_4 v_conv3_i133_6_3_4 v_xor_i132_6_3_4 8;
vpc v_conv3_i133_6_3_4@uint8 v_conv3_i133_6_3_4@uint32;
(*   %conv4.i134.6.3.4 = zext i8 %conv5.i136.5.3.4 to i32 *)
cast v_conv4_i134_6_3_4@uint32 v_conv5_i136_5_3_4@uint8;
(*   %shr.i135.6.3.4 = ashr i32 %conv4.i134.6.3.4, 1 *)
(* You may need to modify here *)
split v_shr_i135_6_3_4 tmp_to_be_used v_conv4_i134_6_3_4 1;
(*   %conv5.i136.6.3.4 = trunc i32 %shr.i135.6.3.4 to i8 *)
split tmp_v_shr_i135_6_3_4 v_conv5_i136_6_3_4 v_shr_i135_6_3_4 8;
vpc v_conv5_i136_6_3_4@uint8 v_conv5_i136_6_3_4@uint32;
(*   %conv6.i137.6.3.4 = zext i8 %conv7.i139.5.3.4 to i32 *)
cast v_conv6_i137_6_3_4@uint32 v_conv7_i139_5_3_4@uint8;
(*   %shl.i138.6.3.4 = shl i32 %conv6.i137.6.3.4, 1 *)
shls discard_279 v_shl_i138_6_3_4 v_conv6_i137_6_3_4 1;
(*   %conv7.i139.6.3.4 = trunc i32 %shl.i138.6.3.4 to i8 *)
split tmp_v_shl_i138_6_3_4 v_conv7_i139_6_3_4 v_shl_i138_6_3_4 8;
vpc v_conv7_i139_6_3_4@uint8 v_conv7_i139_6_3_4@uint32;
(*   %conv.i127.7.3.4 = zext i8 %conv5.i136.6.3.4 to i32 *)
cast v_conv_i127_7_3_4@uint32 v_conv5_i136_6_3_4@uint8;
(*   %and.i128.7.3.4 = and i32 %conv.i127.7.3.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_7_3_4 v_conv_i127_7_3_4 (0x1)@uint32;
(*   %conv1.i129.7.3.4 = zext i8 %conv7.i139.6.3.4 to i32 *)
cast v_conv1_i129_7_3_4@uint32 v_conv7_i139_6_3_4@uint8;
(*   %mul.i130.7.3.4 = mul nsw i32 %and.i128.7.3.4, %conv1.i129.7.3.4 *)
mul v_mul_i130_7_3_4 v_and_i128_7_3_4 v_conv1_i129_7_3_4;
(*   %conv2.i131.7.3.4 = zext i8 %conv3.i133.6.3.4 to i32 *)
cast v_conv2_i131_7_3_4@uint32 v_conv3_i133_6_3_4@uint8;
(*   %xor.i132.7.3.4 = xor i32 %conv2.i131.7.3.4, %mul.i130.7.3.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_7_3_4 v_conv2_i131_7_3_4 v_mul_i130_7_3_4;
(*   %conv3.i133.7.3.4 = trunc i32 %xor.i132.7.3.4 to i8 *)
split tmp_v_xor_i132_7_3_4 v_conv3_i133_7_3_4 v_xor_i132_7_3_4 8;
vpc v_conv3_i133_7_3_4@uint8 v_conv3_i133_7_3_4@uint32;
(*   %arrayidx56.3.4 = getelementptr inbounds [25 x i8], [25 x i8]* %p1, i64 0, i64 23 *)
(*   store i8 %conv3.i133.7.3.4, i8* %arrayidx56.3.4, align 1 *)
mov p1_23 v_conv3_i133_7_3_4;
(*   %arrayidx60.3.4 = getelementptr inbounds [25 x i8], [25 x i8]* %p0, i64 0, i64 23 *)
(*   %168 = load i8, i8* %arrayidx60.3.4, align 1 *)
mov v168 p0_23;
(*   %conv61.3.4 = zext i8 %168 to i32 *)
cast v_conv61_3_4@uint32 v168@uint8;
(*   %arrayidx65.3.4 = getelementptr inbounds [25 x i8], [25 x i8]* %p1, i64 0, i64 23 *)
(*   %169 = load i8, i8* %arrayidx65.3.4, align 1 *)
mov v169 p1_23;
(*   %conv66.3.4 = zext i8 %169 to i32 *)
cast v_conv66_3_4@uint32 v169@uint8;
(*   %xor67.3.4 = xor i32 %conv61.3.4, %conv66.3.4 *)
(* You may need to modify here *)
xor uint32 v_xor67_3_4 v_conv61_3_4 v_conv66_3_4;
(*   %conv68.3.4 = trunc i32 %xor67.3.4 to i8 *)
split tmp_v_xor67_3_4 v_conv68_3_4 v_xor67_3_4 8;
vpc v_conv68_3_4@uint8 v_conv68_3_4@uint32;
(*   %arrayidx72.3.4 = getelementptr inbounds [25 x i8], [25 x i8]* %z, i64 0, i64 23 *)
(*   store i8 %conv68.3.4, i8* %arrayidx72.3.4, align 1 *)
mov z_23 v_conv68_3_4;
(*   %170 = load i8, i8* %a, align 1 *)
mov v170 a_0;
(*   %171 = load i8, i8* %b, align 1 *)
mov v171 b_0;
(*   %conv.i188 = zext i8 %171 to i32 *)
cast v_conv_i188@uint32 v171@uint8;
(*   %and.i189 = and i32 %conv.i188, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189 v_conv_i188 (0x1)@uint32;
(*   %conv1.i190 = zext i8 %170 to i32 *)
cast v_conv1_i190@uint32 v170@uint8;
(*   %mul.i191 = mul nsw i32 %and.i189, %conv1.i190 *)
mul v_mul_i191 v_and_i189 v_conv1_i190;
(*   %conv3.i194 = trunc i32 %mul.i191 to i8 *)
split tmp_v_mul_i191 v_conv3_i194 v_mul_i191 8;
vpc v_conv3_i194@uint8 v_conv3_i194@uint32;
(*   %conv4.i195 = zext i8 %171 to i32 *)
cast v_conv4_i195@uint32 v171@uint8;
(*   %shr.i196 = ashr i32 %conv4.i195, 1 *)
(* You may need to modify here *)
split v_shr_i196 tmp_to_be_used v_conv4_i195 1;
(*   %conv5.i197 = trunc i32 %shr.i196 to i8 *)
split tmp_v_shr_i196 v_conv5_i197 v_shr_i196 8;
vpc v_conv5_i197@uint8 v_conv5_i197@uint32;
(*   %conv6.i198 = zext i8 %170 to i32 *)
cast v_conv6_i198@uint32 v170@uint8;
(*   %shl.i199 = shl i32 %conv6.i198, 1 *)
shls discard_280 v_shl_i199 v_conv6_i198 1;
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
shls discard_281 v_shl_i199_1 v_conv6_i198_1 1;
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
shls discard_282 v_shl_i199_2 v_conv6_i198_2 1;
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
shls discard_283 v_shl_i199_3 v_conv6_i198_3 1;
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
shls discard_284 v_shl_i199_4 v_conv6_i198_4 1;
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
shls discard_285 v_shl_i199_5 v_conv6_i198_5 1;
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
shls discard_286 v_shl_i199_6 v_conv6_i198_6 1;
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
(*   %scevgep46.1 = getelementptr [25 x i8], [25 x i8]* %z, i64 0, i64 1 *)
(*   %172 = load i8, i8* %scevgep46.1, align 1 *)
mov v172 z_1;
(*   %conv103.1 = zext i8 %172 to i32 *)
cast v_conv103_1@uint32 v172@uint8;
(*   %173 = load i8, i8* %c, align 1 *)
mov v173 c_0;
(*   %conv106.1 = zext i8 %173 to i32 *)
cast v_conv106_1@uint32 v173@uint8;
(*   %xor107.1 = xor i32 %conv106.1, %conv103.1 *)
(* You may need to modify here *)
xor uint32 v_xor107_1 v_conv106_1 v_conv103_1;
(*   %conv108.1 = trunc i32 %xor107.1 to i8 *)
split tmp_v_xor107_1 v_conv108_1 v_xor107_1 8;
vpc v_conv108_1@uint8 v_conv108_1@uint32;
(*   store i8 %conv108.1, i8* %c, align 1 *)
mov c_0 v_conv108_1;
(*   %scevgep46.2 = getelementptr [25 x i8], [25 x i8]* %z, i64 0, i64 2 *)
(*   %174 = load i8, i8* %scevgep46.2, align 1 *)
mov v174 z_2;
(*   %conv103.2 = zext i8 %174 to i32 *)
cast v_conv103_2@uint32 v174@uint8;
(*   %175 = load i8, i8* %c, align 1 *)
mov v175 c_0;
(*   %conv106.2 = zext i8 %175 to i32 *)
cast v_conv106_2@uint32 v175@uint8;
(*   %xor107.2 = xor i32 %conv106.2, %conv103.2 *)
(* You may need to modify here *)
xor uint32 v_xor107_2 v_conv106_2 v_conv103_2;
(*   %conv108.2 = trunc i32 %xor107.2 to i8 *)
split tmp_v_xor107_2 v_conv108_2 v_xor107_2 8;
vpc v_conv108_2@uint8 v_conv108_2@uint32;
(*   store i8 %conv108.2, i8* %c, align 1 *)
mov c_0 v_conv108_2;
(*   %scevgep46.3 = getelementptr [25 x i8], [25 x i8]* %z, i64 0, i64 3 *)
(*   %176 = load i8, i8* %scevgep46.3, align 1 *)
mov v176 z_3;
(*   %conv103.3 = zext i8 %176 to i32 *)
cast v_conv103_3@uint32 v176@uint8;
(*   %177 = load i8, i8* %c, align 1 *)
mov v177 c_0;
(*   %conv106.3 = zext i8 %177 to i32 *)
cast v_conv106_3@uint32 v177@uint8;
(*   %xor107.3 = xor i32 %conv106.3, %conv103.3 *)
(* You may need to modify here *)
xor uint32 v_xor107_3 v_conv106_3 v_conv103_3;
(*   %conv108.3 = trunc i32 %xor107.3 to i8 *)
split tmp_v_xor107_3 v_conv108_3 v_xor107_3 8;
vpc v_conv108_3@uint8 v_conv108_3@uint32;
(*   store i8 %conv108.3, i8* %c, align 1 *)
mov c_0 v_conv108_3;
(*   %scevgep46.4 = getelementptr [25 x i8], [25 x i8]* %z, i64 0, i64 4 *)
(*   %178 = load i8, i8* %scevgep46.4, align 1 *)
mov v178 z_4;
(*   %conv103.4 = zext i8 %178 to i32 *)
cast v_conv103_4@uint32 v178@uint8;
(*   %179 = load i8, i8* %c, align 1 *)
mov v179 c_0;
(*   %conv106.4 = zext i8 %179 to i32 *)
cast v_conv106_4@uint32 v179@uint8;
(*   %xor107.4 = xor i32 %conv106.4, %conv103.4 *)
(* You may need to modify here *)
xor uint32 v_xor107_4 v_conv106_4 v_conv103_4;
(*   %conv108.4 = trunc i32 %xor107.4 to i8 *)
split tmp_v_xor107_4 v_conv108_4 v_xor107_4 8;
vpc v_conv108_4@uint8 v_conv108_4@uint32;
(*   store i8 %conv108.4, i8* %c, align 1 *)
mov c_0 v_conv108_4;
(*   %scevgep45 = getelementptr [25 x i8], [25 x i8]* %z, i64 0, i64 5 *)
(*   %180 = bitcast i8* %scevgep45 to [25 x i8]* *)
(*   %arrayidx85.1 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %181 = load i8, i8* %arrayidx85.1, align 1 *)
mov v181 a_1;
(*   %arrayidx87.1 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %182 = load i8, i8* %arrayidx87.1, align 1 *)
mov v182 b_1;
(*   %conv.i188.159 = zext i8 %182 to i32 *)
cast v_conv_i188_159@uint32 v182@uint8;
(*   %and.i189.160 = and i32 %conv.i188.159, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_160 v_conv_i188_159 (0x1)@uint32;
(*   %conv1.i190.161 = zext i8 %181 to i32 *)
cast v_conv1_i190_161@uint32 v181@uint8;
(*   %mul.i191.162 = mul nsw i32 %and.i189.160, %conv1.i190.161 *)
mul v_mul_i191_162 v_and_i189_160 v_conv1_i190_161;
(*   %conv3.i194.163 = trunc i32 %mul.i191.162 to i8 *)
split tmp_v_mul_i191_162 v_conv3_i194_163 v_mul_i191_162 8;
vpc v_conv3_i194_163@uint8 v_conv3_i194_163@uint32;
(*   %conv4.i195.164 = zext i8 %182 to i32 *)
cast v_conv4_i195_164@uint32 v182@uint8;
(*   %shr.i196.165 = ashr i32 %conv4.i195.164, 1 *)
(* You may need to modify here *)
split v_shr_i196_165 tmp_to_be_used v_conv4_i195_164 1;
(*   %conv5.i197.166 = trunc i32 %shr.i196.165 to i8 *)
split tmp_v_shr_i196_165 v_conv5_i197_166 v_shr_i196_165 8;
vpc v_conv5_i197_166@uint8 v_conv5_i197_166@uint32;
(*   %conv6.i198.167 = zext i8 %181 to i32 *)
cast v_conv6_i198_167@uint32 v181@uint8;
(*   %shl.i199.168 = shl i32 %conv6.i198.167, 1 *)
shls discard_287 v_shl_i199_168 v_conv6_i198_167 1;
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
shls discard_288 v_shl_i199_1_1 v_conv6_i198_1_1 1;
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
shls discard_289 v_shl_i199_2_1 v_conv6_i198_2_1 1;
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
shls discard_290 v_shl_i199_3_1 v_conv6_i198_3_1 1;
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
shls discard_291 v_shl_i199_4_1 v_conv6_i198_4_1 1;
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
shls discard_292 v_shl_i199_5_1 v_conv6_i198_5_1 1;
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
shls discard_293 v_shl_i199_6_1 v_conv6_i198_6_1 1;
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
(*   %scevgep46.172 = getelementptr [25 x i8], [25 x i8]* %180, i64 0, i64 0 *)
(*   %183 = load i8, i8* %scevgep46.172, align 1 *)
mov v183 z_5;
(*   %conv103.173 = zext i8 %183 to i32 *)
cast v_conv103_173@uint32 v183@uint8;
(*   %184 = load i8, i8* %arrayidx105.1, align 1 *)
mov v184 c_1;
(*   %conv106.174 = zext i8 %184 to i32 *)
cast v_conv106_174@uint32 v184@uint8;
(*   %xor107.175 = xor i32 %conv106.174, %conv103.173 *)
(* You may need to modify here *)
xor uint32 v_xor107_175 v_conv106_174 v_conv103_173;
(*   %conv108.176 = trunc i32 %xor107.175 to i8 *)
split tmp_v_xor107_175 v_conv108_176 v_xor107_175 8;
vpc v_conv108_176@uint8 v_conv108_176@uint32;
(*   store i8 %conv108.176, i8* %arrayidx105.1, align 1 *)
mov c_1 v_conv108_176;
(*   %scevgep46.2.1 = getelementptr [25 x i8], [25 x i8]* %180, i64 0, i64 2 *)
(*   %185 = load i8, i8* %scevgep46.2.1, align 1 *)
mov v185 z_7;
(*   %conv103.2.1 = zext i8 %185 to i32 *)
cast v_conv103_2_1@uint32 v185@uint8;
(*   %186 = load i8, i8* %arrayidx105.1, align 1 *)
mov v186 c_1;
(*   %conv106.2.1 = zext i8 %186 to i32 *)
cast v_conv106_2_1@uint32 v186@uint8;
(*   %xor107.2.1 = xor i32 %conv106.2.1, %conv103.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor107_2_1 v_conv106_2_1 v_conv103_2_1;
(*   %conv108.2.1 = trunc i32 %xor107.2.1 to i8 *)
split tmp_v_xor107_2_1 v_conv108_2_1 v_xor107_2_1 8;
vpc v_conv108_2_1@uint8 v_conv108_2_1@uint32;
(*   store i8 %conv108.2.1, i8* %arrayidx105.1, align 1 *)
mov c_1 v_conv108_2_1;
(*   %scevgep46.3.1 = getelementptr [25 x i8], [25 x i8]* %180, i64 0, i64 3 *)
(*   %187 = load i8, i8* %scevgep46.3.1, align 1 *)
mov v187 z_8;
(*   %conv103.3.1 = zext i8 %187 to i32 *)
cast v_conv103_3_1@uint32 v187@uint8;
(*   %188 = load i8, i8* %arrayidx105.1, align 1 *)
mov v188 c_1;
(*   %conv106.3.1 = zext i8 %188 to i32 *)
cast v_conv106_3_1@uint32 v188@uint8;
(*   %xor107.3.1 = xor i32 %conv106.3.1, %conv103.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor107_3_1 v_conv106_3_1 v_conv103_3_1;
(*   %conv108.3.1 = trunc i32 %xor107.3.1 to i8 *)
split tmp_v_xor107_3_1 v_conv108_3_1 v_xor107_3_1 8;
vpc v_conv108_3_1@uint8 v_conv108_3_1@uint32;
(*   store i8 %conv108.3.1, i8* %arrayidx105.1, align 1 *)
mov c_1 v_conv108_3_1;
(*   %scevgep46.4.1 = getelementptr [25 x i8], [25 x i8]* %180, i64 0, i64 4 *)
(*   %189 = load i8, i8* %scevgep46.4.1, align 1 *)
mov v189 z_9;
(*   %conv103.4.1 = zext i8 %189 to i32 *)
cast v_conv103_4_1@uint32 v189@uint8;
(*   %190 = load i8, i8* %arrayidx105.1, align 1 *)
mov v190 c_1;
(*   %conv106.4.1 = zext i8 %190 to i32 *)
cast v_conv106_4_1@uint32 v190@uint8;
(*   %xor107.4.1 = xor i32 %conv106.4.1, %conv103.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor107_4_1 v_conv106_4_1 v_conv103_4_1;
(*   %conv108.4.1 = trunc i32 %xor107.4.1 to i8 *)
split tmp_v_xor107_4_1 v_conv108_4_1 v_xor107_4_1 8;
vpc v_conv108_4_1@uint8 v_conv108_4_1@uint32;
(*   store i8 %conv108.4.1, i8* %arrayidx105.1, align 1 *)
mov c_1 v_conv108_4_1;
(*   %scevgep45.1 = getelementptr [25 x i8], [25 x i8]* %180, i64 0, i64 5 *)
(*   %191 = bitcast i8* %scevgep45.1 to [25 x i8]* *)
(*   %arrayidx85.2 = getelementptr inbounds i8, i8* %a, i64 2 *)
(*   %192 = load i8, i8* %arrayidx85.2, align 1 *)
mov v192 a_2;
(*   %arrayidx87.2 = getelementptr inbounds i8, i8* %b, i64 2 *)
(*   %193 = load i8, i8* %arrayidx87.2, align 1 *)
mov v193 b_2;
(*   %conv.i188.280 = zext i8 %193 to i32 *)
cast v_conv_i188_280@uint32 v193@uint8;
(*   %and.i189.281 = and i32 %conv.i188.280, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_281 v_conv_i188_280 (0x1)@uint32;
(*   %conv1.i190.282 = zext i8 %192 to i32 *)
cast v_conv1_i190_282@uint32 v192@uint8;
(*   %mul.i191.283 = mul nsw i32 %and.i189.281, %conv1.i190.282 *)
mul v_mul_i191_283 v_and_i189_281 v_conv1_i190_282;
(*   %conv3.i194.284 = trunc i32 %mul.i191.283 to i8 *)
split tmp_v_mul_i191_283 v_conv3_i194_284 v_mul_i191_283 8;
vpc v_conv3_i194_284@uint8 v_conv3_i194_284@uint32;
(*   %conv4.i195.285 = zext i8 %193 to i32 *)
cast v_conv4_i195_285@uint32 v193@uint8;
(*   %shr.i196.286 = ashr i32 %conv4.i195.285, 1 *)
(* You may need to modify here *)
split v_shr_i196_286 tmp_to_be_used v_conv4_i195_285 1;
(*   %conv5.i197.287 = trunc i32 %shr.i196.286 to i8 *)
split tmp_v_shr_i196_286 v_conv5_i197_287 v_shr_i196_286 8;
vpc v_conv5_i197_287@uint8 v_conv5_i197_287@uint32;
(*   %conv6.i198.288 = zext i8 %192 to i32 *)
cast v_conv6_i198_288@uint32 v192@uint8;
(*   %shl.i199.289 = shl i32 %conv6.i198.288, 1 *)
shls discard_294 v_shl_i199_289 v_conv6_i198_288 1;
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
shls discard_295 v_shl_i199_1_2 v_conv6_i198_1_2 1;
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
shls discard_296 v_shl_i199_2_2 v_conv6_i198_2_2 1;
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
shls discard_297 v_shl_i199_3_2 v_conv6_i198_3_2 1;
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
shls discard_298 v_shl_i199_4_2 v_conv6_i198_4_2 1;
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
shls discard_299 v_shl_i199_5_2 v_conv6_i198_5_2 1;
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
shls discard_300 v_shl_i199_6_2 v_conv6_i198_6_2 1;
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
(*   %scevgep46.293 = getelementptr [25 x i8], [25 x i8]* %191, i64 0, i64 0 *)
(*   %194 = load i8, i8* %scevgep46.293, align 1 *)
mov v194 z_10;
(*   %conv103.294 = zext i8 %194 to i32 *)
cast v_conv103_294@uint32 v194@uint8;
(*   %195 = load i8, i8* %arrayidx105.2, align 1 *)
mov v195 c_2;
(*   %conv106.295 = zext i8 %195 to i32 *)
cast v_conv106_295@uint32 v195@uint8;
(*   %xor107.296 = xor i32 %conv106.295, %conv103.294 *)
(* You may need to modify here *)
xor uint32 v_xor107_296 v_conv106_295 v_conv103_294;
(*   %conv108.297 = trunc i32 %xor107.296 to i8 *)
split tmp_v_xor107_296 v_conv108_297 v_xor107_296 8;
vpc v_conv108_297@uint8 v_conv108_297@uint32;
(*   store i8 %conv108.297, i8* %arrayidx105.2, align 1 *)
mov c_2 v_conv108_297;
(*   %scevgep46.1.2 = getelementptr [25 x i8], [25 x i8]* %191, i64 0, i64 1 *)
(*   %196 = load i8, i8* %scevgep46.1.2, align 1 *)
mov v196 z_11;
(*   %conv103.1.2 = zext i8 %196 to i32 *)
cast v_conv103_1_2@uint32 v196@uint8;
(*   %197 = load i8, i8* %arrayidx105.2, align 1 *)
mov v197 c_2;
(*   %conv106.1.2 = zext i8 %197 to i32 *)
cast v_conv106_1_2@uint32 v197@uint8;
(*   %xor107.1.2 = xor i32 %conv106.1.2, %conv103.1.2 *)
(* You may need to modify here *)
xor uint32 v_xor107_1_2 v_conv106_1_2 v_conv103_1_2;
(*   %conv108.1.2 = trunc i32 %xor107.1.2 to i8 *)
split tmp_v_xor107_1_2 v_conv108_1_2 v_xor107_1_2 8;
vpc v_conv108_1_2@uint8 v_conv108_1_2@uint32;
(*   store i8 %conv108.1.2, i8* %arrayidx105.2, align 1 *)
mov c_2 v_conv108_1_2;
(*   %scevgep46.3.2 = getelementptr [25 x i8], [25 x i8]* %191, i64 0, i64 3 *)
(*   %198 = load i8, i8* %scevgep46.3.2, align 1 *)
mov v198 z_13;
(*   %conv103.3.2 = zext i8 %198 to i32 *)
cast v_conv103_3_2@uint32 v198@uint8;
(*   %199 = load i8, i8* %arrayidx105.2, align 1 *)
mov v199 c_2;
(*   %conv106.3.2 = zext i8 %199 to i32 *)
cast v_conv106_3_2@uint32 v199@uint8;
(*   %xor107.3.2 = xor i32 %conv106.3.2, %conv103.3.2 *)
(* You may need to modify here *)
xor uint32 v_xor107_3_2 v_conv106_3_2 v_conv103_3_2;
(*   %conv108.3.2 = trunc i32 %xor107.3.2 to i8 *)
split tmp_v_xor107_3_2 v_conv108_3_2 v_xor107_3_2 8;
vpc v_conv108_3_2@uint8 v_conv108_3_2@uint32;
(*   store i8 %conv108.3.2, i8* %arrayidx105.2, align 1 *)
mov c_2 v_conv108_3_2;
(*   %scevgep46.4.2 = getelementptr [25 x i8], [25 x i8]* %191, i64 0, i64 4 *)
(*   %200 = load i8, i8* %scevgep46.4.2, align 1 *)
mov v200 z_14;
(*   %conv103.4.2 = zext i8 %200 to i32 *)
cast v_conv103_4_2@uint32 v200@uint8;
(*   %201 = load i8, i8* %arrayidx105.2, align 1 *)
mov v201 c_2;
(*   %conv106.4.2 = zext i8 %201 to i32 *)
cast v_conv106_4_2@uint32 v201@uint8;
(*   %xor107.4.2 = xor i32 %conv106.4.2, %conv103.4.2 *)
(* You may need to modify here *)
xor uint32 v_xor107_4_2 v_conv106_4_2 v_conv103_4_2;
(*   %conv108.4.2 = trunc i32 %xor107.4.2 to i8 *)
split tmp_v_xor107_4_2 v_conv108_4_2 v_xor107_4_2 8;
vpc v_conv108_4_2@uint8 v_conv108_4_2@uint32;
(*   store i8 %conv108.4.2, i8* %arrayidx105.2, align 1 *)
mov c_2 v_conv108_4_2;
(*   %scevgep45.2 = getelementptr [25 x i8], [25 x i8]* %191, i64 0, i64 5 *)
(*   %202 = bitcast i8* %scevgep45.2 to [25 x i8]* *)
(*   %arrayidx85.3 = getelementptr inbounds i8, i8* %a, i64 3 *)
(*   %203 = load i8, i8* %arrayidx85.3, align 1 *)
mov v203 a_3;
(*   %arrayidx87.3 = getelementptr inbounds i8, i8* %b, i64 3 *)
(*   %204 = load i8, i8* %arrayidx87.3, align 1 *)
mov v204 b_3;
(*   %conv.i188.3101 = zext i8 %204 to i32 *)
cast v_conv_i188_3101@uint32 v204@uint8;
(*   %and.i189.3102 = and i32 %conv.i188.3101, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_3102 v_conv_i188_3101 (0x1)@uint32;
(*   %conv1.i190.3103 = zext i8 %203 to i32 *)
cast v_conv1_i190_3103@uint32 v203@uint8;
(*   %mul.i191.3104 = mul nsw i32 %and.i189.3102, %conv1.i190.3103 *)
mul v_mul_i191_3104 v_and_i189_3102 v_conv1_i190_3103;
(*   %conv3.i194.3105 = trunc i32 %mul.i191.3104 to i8 *)
split tmp_v_mul_i191_3104 v_conv3_i194_3105 v_mul_i191_3104 8;
vpc v_conv3_i194_3105@uint8 v_conv3_i194_3105@uint32;
(*   %conv4.i195.3106 = zext i8 %204 to i32 *)
cast v_conv4_i195_3106@uint32 v204@uint8;
(*   %shr.i196.3107 = ashr i32 %conv4.i195.3106, 1 *)
(* You may need to modify here *)
split v_shr_i196_3107 tmp_to_be_used v_conv4_i195_3106 1;
(*   %conv5.i197.3108 = trunc i32 %shr.i196.3107 to i8 *)
split tmp_v_shr_i196_3107 v_conv5_i197_3108 v_shr_i196_3107 8;
vpc v_conv5_i197_3108@uint8 v_conv5_i197_3108@uint32;
(*   %conv6.i198.3109 = zext i8 %203 to i32 *)
cast v_conv6_i198_3109@uint32 v203@uint8;
(*   %shl.i199.3110 = shl i32 %conv6.i198.3109, 1 *)
shls discard_301 v_shl_i199_3110 v_conv6_i198_3109 1;
(*   %conv7.i200.3111 = trunc i32 %shl.i199.3110 to i8 *)
split tmp_v_shl_i199_3110 v_conv7_i200_3111 v_shl_i199_3110 8;
vpc v_conv7_i200_3111@uint8 v_conv7_i200_3111@uint32;
(*   %conv.i188.1.3 = zext i8 %conv5.i197.3108 to i32 *)
cast v_conv_i188_1_3@uint32 v_conv5_i197_3108@uint8;
(*   %and.i189.1.3 = and i32 %conv.i188.1.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_1_3 v_conv_i188_1_3 (0x1)@uint32;
(*   %conv1.i190.1.3 = zext i8 %conv7.i200.3111 to i32 *)
cast v_conv1_i190_1_3@uint32 v_conv7_i200_3111@uint8;
(*   %mul.i191.1.3 = mul nsw i32 %and.i189.1.3, %conv1.i190.1.3 *)
mul v_mul_i191_1_3 v_and_i189_1_3 v_conv1_i190_1_3;
(*   %conv2.i192.1.3 = zext i8 %conv3.i194.3105 to i32 *)
cast v_conv2_i192_1_3@uint32 v_conv3_i194_3105@uint8;
(*   %xor.i193.1.3 = xor i32 %conv2.i192.1.3, %mul.i191.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i193_1_3 v_conv2_i192_1_3 v_mul_i191_1_3;
(*   %conv3.i194.1.3 = trunc i32 %xor.i193.1.3 to i8 *)
split tmp_v_xor_i193_1_3 v_conv3_i194_1_3 v_xor_i193_1_3 8;
vpc v_conv3_i194_1_3@uint8 v_conv3_i194_1_3@uint32;
(*   %conv4.i195.1.3 = zext i8 %conv5.i197.3108 to i32 *)
cast v_conv4_i195_1_3@uint32 v_conv5_i197_3108@uint8;
(*   %shr.i196.1.3 = ashr i32 %conv4.i195.1.3, 1 *)
(* You may need to modify here *)
split v_shr_i196_1_3 tmp_to_be_used v_conv4_i195_1_3 1;
(*   %conv5.i197.1.3 = trunc i32 %shr.i196.1.3 to i8 *)
split tmp_v_shr_i196_1_3 v_conv5_i197_1_3 v_shr_i196_1_3 8;
vpc v_conv5_i197_1_3@uint8 v_conv5_i197_1_3@uint32;
(*   %conv6.i198.1.3 = zext i8 %conv7.i200.3111 to i32 *)
cast v_conv6_i198_1_3@uint32 v_conv7_i200_3111@uint8;
(*   %shl.i199.1.3 = shl i32 %conv6.i198.1.3, 1 *)
shls discard_302 v_shl_i199_1_3 v_conv6_i198_1_3 1;
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
shls discard_303 v_shl_i199_2_3 v_conv6_i198_2_3 1;
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
shls discard_304 v_shl_i199_3_3 v_conv6_i198_3_3 1;
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
shls discard_305 v_shl_i199_4_3 v_conv6_i198_4_3 1;
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
shls discard_306 v_shl_i199_5_3 v_conv6_i198_5_3 1;
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
shls discard_307 v_shl_i199_6_3 v_conv6_i198_6_3 1;
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
(*   %scevgep46.3114 = getelementptr [25 x i8], [25 x i8]* %202, i64 0, i64 0 *)
(*   %205 = load i8, i8* %scevgep46.3114, align 1 *)
mov v205 z_15;
(*   %conv103.3115 = zext i8 %205 to i32 *)
cast v_conv103_3115@uint32 v205@uint8;
(*   %206 = load i8, i8* %arrayidx105.3, align 1 *)
mov v206 c_3;
(*   %conv106.3116 = zext i8 %206 to i32 *)
cast v_conv106_3116@uint32 v206@uint8;
(*   %xor107.3117 = xor i32 %conv106.3116, %conv103.3115 *)
(* You may need to modify here *)
xor uint32 v_xor107_3117 v_conv106_3116 v_conv103_3115;
(*   %conv108.3118 = trunc i32 %xor107.3117 to i8 *)
split tmp_v_xor107_3117 v_conv108_3118 v_xor107_3117 8;
vpc v_conv108_3118@uint8 v_conv108_3118@uint32;
(*   store i8 %conv108.3118, i8* %arrayidx105.3, align 1 *)
mov c_3 v_conv108_3118;
(*   %scevgep46.1.3 = getelementptr [25 x i8], [25 x i8]* %202, i64 0, i64 1 *)
(*   %207 = load i8, i8* %scevgep46.1.3, align 1 *)
mov v207 z_16;
(*   %conv103.1.3 = zext i8 %207 to i32 *)
cast v_conv103_1_3@uint32 v207@uint8;
(*   %208 = load i8, i8* %arrayidx105.3, align 1 *)
mov v208 c_3;
(*   %conv106.1.3 = zext i8 %208 to i32 *)
cast v_conv106_1_3@uint32 v208@uint8;
(*   %xor107.1.3 = xor i32 %conv106.1.3, %conv103.1.3 *)
(* You may need to modify here *)
xor uint32 v_xor107_1_3 v_conv106_1_3 v_conv103_1_3;
(*   %conv108.1.3 = trunc i32 %xor107.1.3 to i8 *)
split tmp_v_xor107_1_3 v_conv108_1_3 v_xor107_1_3 8;
vpc v_conv108_1_3@uint8 v_conv108_1_3@uint32;
(*   store i8 %conv108.1.3, i8* %arrayidx105.3, align 1 *)
mov c_3 v_conv108_1_3;
(*   %scevgep46.2.3 = getelementptr [25 x i8], [25 x i8]* %202, i64 0, i64 2 *)
(*   %209 = load i8, i8* %scevgep46.2.3, align 1 *)
mov v209 z_17;
(*   %conv103.2.3 = zext i8 %209 to i32 *)
cast v_conv103_2_3@uint32 v209@uint8;
(*   %210 = load i8, i8* %arrayidx105.3, align 1 *)
mov v210 c_3;
(*   %conv106.2.3 = zext i8 %210 to i32 *)
cast v_conv106_2_3@uint32 v210@uint8;
(*   %xor107.2.3 = xor i32 %conv106.2.3, %conv103.2.3 *)
(* You may need to modify here *)
xor uint32 v_xor107_2_3 v_conv106_2_3 v_conv103_2_3;
(*   %conv108.2.3 = trunc i32 %xor107.2.3 to i8 *)
split tmp_v_xor107_2_3 v_conv108_2_3 v_xor107_2_3 8;
vpc v_conv108_2_3@uint8 v_conv108_2_3@uint32;
(*   store i8 %conv108.2.3, i8* %arrayidx105.3, align 1 *)
mov c_3 v_conv108_2_3;
(*   %scevgep46.4.3 = getelementptr [25 x i8], [25 x i8]* %202, i64 0, i64 4 *)
(*   %211 = load i8, i8* %scevgep46.4.3, align 1 *)
mov v211 z_19;
(*   %conv103.4.3 = zext i8 %211 to i32 *)
cast v_conv103_4_3@uint32 v211@uint8;
(*   %212 = load i8, i8* %arrayidx105.3, align 1 *)
mov v212 c_3;
(*   %conv106.4.3 = zext i8 %212 to i32 *)
cast v_conv106_4_3@uint32 v212@uint8;
(*   %xor107.4.3 = xor i32 %conv106.4.3, %conv103.4.3 *)
(* You may need to modify here *)
xor uint32 v_xor107_4_3 v_conv106_4_3 v_conv103_4_3;
(*   %conv108.4.3 = trunc i32 %xor107.4.3 to i8 *)
split tmp_v_xor107_4_3 v_conv108_4_3 v_xor107_4_3 8;
vpc v_conv108_4_3@uint8 v_conv108_4_3@uint32;
(*   store i8 %conv108.4.3, i8* %arrayidx105.3, align 1 *)
mov c_3 v_conv108_4_3;
(*   %scevgep45.3 = getelementptr [25 x i8], [25 x i8]* %202, i64 0, i64 5 *)
(*   %213 = bitcast i8* %scevgep45.3 to [25 x i8]* *)
(*   %arrayidx85.4 = getelementptr inbounds i8, i8* %a, i64 4 *)
(*   %214 = load i8, i8* %arrayidx85.4, align 1 *)
mov v214 a_4;
(*   %arrayidx87.4 = getelementptr inbounds i8, i8* %b, i64 4 *)
(*   %215 = load i8, i8* %arrayidx87.4, align 1 *)
mov v215 b_4;
(*   %conv.i188.4122 = zext i8 %215 to i32 *)
cast v_conv_i188_4122@uint32 v215@uint8;
(*   %and.i189.4123 = and i32 %conv.i188.4122, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_4123 v_conv_i188_4122 (0x1)@uint32;
(*   %conv1.i190.4124 = zext i8 %214 to i32 *)
cast v_conv1_i190_4124@uint32 v214@uint8;
(*   %mul.i191.4125 = mul nsw i32 %and.i189.4123, %conv1.i190.4124 *)
mul v_mul_i191_4125 v_and_i189_4123 v_conv1_i190_4124;
(*   %conv3.i194.4126 = trunc i32 %mul.i191.4125 to i8 *)
split tmp_v_mul_i191_4125 v_conv3_i194_4126 v_mul_i191_4125 8;
vpc v_conv3_i194_4126@uint8 v_conv3_i194_4126@uint32;
(*   %conv4.i195.4127 = zext i8 %215 to i32 *)
cast v_conv4_i195_4127@uint32 v215@uint8;
(*   %shr.i196.4128 = ashr i32 %conv4.i195.4127, 1 *)
(* You may need to modify here *)
split v_shr_i196_4128 tmp_to_be_used v_conv4_i195_4127 1;
(*   %conv5.i197.4129 = trunc i32 %shr.i196.4128 to i8 *)
split tmp_v_shr_i196_4128 v_conv5_i197_4129 v_shr_i196_4128 8;
vpc v_conv5_i197_4129@uint8 v_conv5_i197_4129@uint32;
(*   %conv6.i198.4130 = zext i8 %214 to i32 *)
cast v_conv6_i198_4130@uint32 v214@uint8;
(*   %shl.i199.4131 = shl i32 %conv6.i198.4130, 1 *)
shls discard_308 v_shl_i199_4131 v_conv6_i198_4130 1;
(*   %conv7.i200.4132 = trunc i32 %shl.i199.4131 to i8 *)
split tmp_v_shl_i199_4131 v_conv7_i200_4132 v_shl_i199_4131 8;
vpc v_conv7_i200_4132@uint8 v_conv7_i200_4132@uint32;
(*   %conv.i188.1.4 = zext i8 %conv5.i197.4129 to i32 *)
cast v_conv_i188_1_4@uint32 v_conv5_i197_4129@uint8;
(*   %and.i189.1.4 = and i32 %conv.i188.1.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_1_4 v_conv_i188_1_4 (0x1)@uint32;
(*   %conv1.i190.1.4 = zext i8 %conv7.i200.4132 to i32 *)
cast v_conv1_i190_1_4@uint32 v_conv7_i200_4132@uint8;
(*   %mul.i191.1.4 = mul nsw i32 %and.i189.1.4, %conv1.i190.1.4 *)
mul v_mul_i191_1_4 v_and_i189_1_4 v_conv1_i190_1_4;
(*   %conv2.i192.1.4 = zext i8 %conv3.i194.4126 to i32 *)
cast v_conv2_i192_1_4@uint32 v_conv3_i194_4126@uint8;
(*   %xor.i193.1.4 = xor i32 %conv2.i192.1.4, %mul.i191.1.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i193_1_4 v_conv2_i192_1_4 v_mul_i191_1_4;
(*   %conv3.i194.1.4 = trunc i32 %xor.i193.1.4 to i8 *)
split tmp_v_xor_i193_1_4 v_conv3_i194_1_4 v_xor_i193_1_4 8;
vpc v_conv3_i194_1_4@uint8 v_conv3_i194_1_4@uint32;
(*   %conv4.i195.1.4 = zext i8 %conv5.i197.4129 to i32 *)
cast v_conv4_i195_1_4@uint32 v_conv5_i197_4129@uint8;
(*   %shr.i196.1.4 = ashr i32 %conv4.i195.1.4, 1 *)
(* You may need to modify here *)
split v_shr_i196_1_4 tmp_to_be_used v_conv4_i195_1_4 1;
(*   %conv5.i197.1.4 = trunc i32 %shr.i196.1.4 to i8 *)
split tmp_v_shr_i196_1_4 v_conv5_i197_1_4 v_shr_i196_1_4 8;
vpc v_conv5_i197_1_4@uint8 v_conv5_i197_1_4@uint32;
(*   %conv6.i198.1.4 = zext i8 %conv7.i200.4132 to i32 *)
cast v_conv6_i198_1_4@uint32 v_conv7_i200_4132@uint8;
(*   %shl.i199.1.4 = shl i32 %conv6.i198.1.4, 1 *)
shls discard_309 v_shl_i199_1_4 v_conv6_i198_1_4 1;
(*   %conv7.i200.1.4 = trunc i32 %shl.i199.1.4 to i8 *)
split tmp_v_shl_i199_1_4 v_conv7_i200_1_4 v_shl_i199_1_4 8;
vpc v_conv7_i200_1_4@uint8 v_conv7_i200_1_4@uint32;
(*   %conv.i188.2.4 = zext i8 %conv5.i197.1.4 to i32 *)
cast v_conv_i188_2_4@uint32 v_conv5_i197_1_4@uint8;
(*   %and.i189.2.4 = and i32 %conv.i188.2.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_2_4 v_conv_i188_2_4 (0x1)@uint32;
(*   %conv1.i190.2.4 = zext i8 %conv7.i200.1.4 to i32 *)
cast v_conv1_i190_2_4@uint32 v_conv7_i200_1_4@uint8;
(*   %mul.i191.2.4 = mul nsw i32 %and.i189.2.4, %conv1.i190.2.4 *)
mul v_mul_i191_2_4 v_and_i189_2_4 v_conv1_i190_2_4;
(*   %conv2.i192.2.4 = zext i8 %conv3.i194.1.4 to i32 *)
cast v_conv2_i192_2_4@uint32 v_conv3_i194_1_4@uint8;
(*   %xor.i193.2.4 = xor i32 %conv2.i192.2.4, %mul.i191.2.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i193_2_4 v_conv2_i192_2_4 v_mul_i191_2_4;
(*   %conv3.i194.2.4 = trunc i32 %xor.i193.2.4 to i8 *)
split tmp_v_xor_i193_2_4 v_conv3_i194_2_4 v_xor_i193_2_4 8;
vpc v_conv3_i194_2_4@uint8 v_conv3_i194_2_4@uint32;
(*   %conv4.i195.2.4 = zext i8 %conv5.i197.1.4 to i32 *)
cast v_conv4_i195_2_4@uint32 v_conv5_i197_1_4@uint8;
(*   %shr.i196.2.4 = ashr i32 %conv4.i195.2.4, 1 *)
(* You may need to modify here *)
split v_shr_i196_2_4 tmp_to_be_used v_conv4_i195_2_4 1;
(*   %conv5.i197.2.4 = trunc i32 %shr.i196.2.4 to i8 *)
split tmp_v_shr_i196_2_4 v_conv5_i197_2_4 v_shr_i196_2_4 8;
vpc v_conv5_i197_2_4@uint8 v_conv5_i197_2_4@uint32;
(*   %conv6.i198.2.4 = zext i8 %conv7.i200.1.4 to i32 *)
cast v_conv6_i198_2_4@uint32 v_conv7_i200_1_4@uint8;
(*   %shl.i199.2.4 = shl i32 %conv6.i198.2.4, 1 *)
shls discard_310 v_shl_i199_2_4 v_conv6_i198_2_4 1;
(*   %conv7.i200.2.4 = trunc i32 %shl.i199.2.4 to i8 *)
split tmp_v_shl_i199_2_4 v_conv7_i200_2_4 v_shl_i199_2_4 8;
vpc v_conv7_i200_2_4@uint8 v_conv7_i200_2_4@uint32;
(*   %conv.i188.3.4 = zext i8 %conv5.i197.2.4 to i32 *)
cast v_conv_i188_3_4@uint32 v_conv5_i197_2_4@uint8;
(*   %and.i189.3.4 = and i32 %conv.i188.3.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_3_4 v_conv_i188_3_4 (0x1)@uint32;
(*   %conv1.i190.3.4 = zext i8 %conv7.i200.2.4 to i32 *)
cast v_conv1_i190_3_4@uint32 v_conv7_i200_2_4@uint8;
(*   %mul.i191.3.4 = mul nsw i32 %and.i189.3.4, %conv1.i190.3.4 *)
mul v_mul_i191_3_4 v_and_i189_3_4 v_conv1_i190_3_4;
(*   %conv2.i192.3.4 = zext i8 %conv3.i194.2.4 to i32 *)
cast v_conv2_i192_3_4@uint32 v_conv3_i194_2_4@uint8;
(*   %xor.i193.3.4 = xor i32 %conv2.i192.3.4, %mul.i191.3.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i193_3_4 v_conv2_i192_3_4 v_mul_i191_3_4;
(*   %conv3.i194.3.4 = trunc i32 %xor.i193.3.4 to i8 *)
split tmp_v_xor_i193_3_4 v_conv3_i194_3_4 v_xor_i193_3_4 8;
vpc v_conv3_i194_3_4@uint8 v_conv3_i194_3_4@uint32;
(*   %conv4.i195.3.4 = zext i8 %conv5.i197.2.4 to i32 *)
cast v_conv4_i195_3_4@uint32 v_conv5_i197_2_4@uint8;
(*   %shr.i196.3.4 = ashr i32 %conv4.i195.3.4, 1 *)
(* You may need to modify here *)
split v_shr_i196_3_4 tmp_to_be_used v_conv4_i195_3_4 1;
(*   %conv5.i197.3.4 = trunc i32 %shr.i196.3.4 to i8 *)
split tmp_v_shr_i196_3_4 v_conv5_i197_3_4 v_shr_i196_3_4 8;
vpc v_conv5_i197_3_4@uint8 v_conv5_i197_3_4@uint32;
(*   %conv6.i198.3.4 = zext i8 %conv7.i200.2.4 to i32 *)
cast v_conv6_i198_3_4@uint32 v_conv7_i200_2_4@uint8;
(*   %shl.i199.3.4 = shl i32 %conv6.i198.3.4, 1 *)
shls discard_311 v_shl_i199_3_4 v_conv6_i198_3_4 1;
(*   %conv7.i200.3.4 = trunc i32 %shl.i199.3.4 to i8 *)
split tmp_v_shl_i199_3_4 v_conv7_i200_3_4 v_shl_i199_3_4 8;
vpc v_conv7_i200_3_4@uint8 v_conv7_i200_3_4@uint32;
(*   %conv.i188.4.4 = zext i8 %conv5.i197.3.4 to i32 *)
cast v_conv_i188_4_4@uint32 v_conv5_i197_3_4@uint8;
(*   %and.i189.4.4 = and i32 %conv.i188.4.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_4_4 v_conv_i188_4_4 (0x1)@uint32;
(*   %conv1.i190.4.4 = zext i8 %conv7.i200.3.4 to i32 *)
cast v_conv1_i190_4_4@uint32 v_conv7_i200_3_4@uint8;
(*   %mul.i191.4.4 = mul nsw i32 %and.i189.4.4, %conv1.i190.4.4 *)
mul v_mul_i191_4_4 v_and_i189_4_4 v_conv1_i190_4_4;
(*   %conv2.i192.4.4 = zext i8 %conv3.i194.3.4 to i32 *)
cast v_conv2_i192_4_4@uint32 v_conv3_i194_3_4@uint8;
(*   %xor.i193.4.4 = xor i32 %conv2.i192.4.4, %mul.i191.4.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i193_4_4 v_conv2_i192_4_4 v_mul_i191_4_4;
(*   %conv3.i194.4.4 = trunc i32 %xor.i193.4.4 to i8 *)
split tmp_v_xor_i193_4_4 v_conv3_i194_4_4 v_xor_i193_4_4 8;
vpc v_conv3_i194_4_4@uint8 v_conv3_i194_4_4@uint32;
(*   %conv4.i195.4.4 = zext i8 %conv5.i197.3.4 to i32 *)
cast v_conv4_i195_4_4@uint32 v_conv5_i197_3_4@uint8;
(*   %shr.i196.4.4 = ashr i32 %conv4.i195.4.4, 1 *)
(* You may need to modify here *)
split v_shr_i196_4_4 tmp_to_be_used v_conv4_i195_4_4 1;
(*   %conv5.i197.4.4 = trunc i32 %shr.i196.4.4 to i8 *)
split tmp_v_shr_i196_4_4 v_conv5_i197_4_4 v_shr_i196_4_4 8;
vpc v_conv5_i197_4_4@uint8 v_conv5_i197_4_4@uint32;
(*   %conv6.i198.4.4 = zext i8 %conv7.i200.3.4 to i32 *)
cast v_conv6_i198_4_4@uint32 v_conv7_i200_3_4@uint8;
(*   %shl.i199.4.4 = shl i32 %conv6.i198.4.4, 1 *)
shls discard_312 v_shl_i199_4_4 v_conv6_i198_4_4 1;
(*   %conv7.i200.4.4 = trunc i32 %shl.i199.4.4 to i8 *)
split tmp_v_shl_i199_4_4 v_conv7_i200_4_4 v_shl_i199_4_4 8;
vpc v_conv7_i200_4_4@uint8 v_conv7_i200_4_4@uint32;
(*   %conv.i188.5.4 = zext i8 %conv5.i197.4.4 to i32 *)
cast v_conv_i188_5_4@uint32 v_conv5_i197_4_4@uint8;
(*   %and.i189.5.4 = and i32 %conv.i188.5.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_5_4 v_conv_i188_5_4 (0x1)@uint32;
(*   %conv1.i190.5.4 = zext i8 %conv7.i200.4.4 to i32 *)
cast v_conv1_i190_5_4@uint32 v_conv7_i200_4_4@uint8;
(*   %mul.i191.5.4 = mul nsw i32 %and.i189.5.4, %conv1.i190.5.4 *)
mul v_mul_i191_5_4 v_and_i189_5_4 v_conv1_i190_5_4;
(*   %conv2.i192.5.4 = zext i8 %conv3.i194.4.4 to i32 *)
cast v_conv2_i192_5_4@uint32 v_conv3_i194_4_4@uint8;
(*   %xor.i193.5.4 = xor i32 %conv2.i192.5.4, %mul.i191.5.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i193_5_4 v_conv2_i192_5_4 v_mul_i191_5_4;
(*   %conv3.i194.5.4 = trunc i32 %xor.i193.5.4 to i8 *)
split tmp_v_xor_i193_5_4 v_conv3_i194_5_4 v_xor_i193_5_4 8;
vpc v_conv3_i194_5_4@uint8 v_conv3_i194_5_4@uint32;
(*   %conv4.i195.5.4 = zext i8 %conv5.i197.4.4 to i32 *)
cast v_conv4_i195_5_4@uint32 v_conv5_i197_4_4@uint8;
(*   %shr.i196.5.4 = ashr i32 %conv4.i195.5.4, 1 *)
(* You may need to modify here *)
split v_shr_i196_5_4 tmp_to_be_used v_conv4_i195_5_4 1;
(*   %conv5.i197.5.4 = trunc i32 %shr.i196.5.4 to i8 *)
split tmp_v_shr_i196_5_4 v_conv5_i197_5_4 v_shr_i196_5_4 8;
vpc v_conv5_i197_5_4@uint8 v_conv5_i197_5_4@uint32;
(*   %conv6.i198.5.4 = zext i8 %conv7.i200.4.4 to i32 *)
cast v_conv6_i198_5_4@uint32 v_conv7_i200_4_4@uint8;
(*   %shl.i199.5.4 = shl i32 %conv6.i198.5.4, 1 *)
shls discard_313 v_shl_i199_5_4 v_conv6_i198_5_4 1;
(*   %conv7.i200.5.4 = trunc i32 %shl.i199.5.4 to i8 *)
split tmp_v_shl_i199_5_4 v_conv7_i200_5_4 v_shl_i199_5_4 8;
vpc v_conv7_i200_5_4@uint8 v_conv7_i200_5_4@uint32;
(*   %conv.i188.6.4 = zext i8 %conv5.i197.5.4 to i32 *)
cast v_conv_i188_6_4@uint32 v_conv5_i197_5_4@uint8;
(*   %and.i189.6.4 = and i32 %conv.i188.6.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_6_4 v_conv_i188_6_4 (0x1)@uint32;
(*   %conv1.i190.6.4 = zext i8 %conv7.i200.5.4 to i32 *)
cast v_conv1_i190_6_4@uint32 v_conv7_i200_5_4@uint8;
(*   %mul.i191.6.4 = mul nsw i32 %and.i189.6.4, %conv1.i190.6.4 *)
mul v_mul_i191_6_4 v_and_i189_6_4 v_conv1_i190_6_4;
(*   %conv2.i192.6.4 = zext i8 %conv3.i194.5.4 to i32 *)
cast v_conv2_i192_6_4@uint32 v_conv3_i194_5_4@uint8;
(*   %xor.i193.6.4 = xor i32 %conv2.i192.6.4, %mul.i191.6.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i193_6_4 v_conv2_i192_6_4 v_mul_i191_6_4;
(*   %conv3.i194.6.4 = trunc i32 %xor.i193.6.4 to i8 *)
split tmp_v_xor_i193_6_4 v_conv3_i194_6_4 v_xor_i193_6_4 8;
vpc v_conv3_i194_6_4@uint8 v_conv3_i194_6_4@uint32;
(*   %conv4.i195.6.4 = zext i8 %conv5.i197.5.4 to i32 *)
cast v_conv4_i195_6_4@uint32 v_conv5_i197_5_4@uint8;
(*   %shr.i196.6.4 = ashr i32 %conv4.i195.6.4, 1 *)
(* You may need to modify here *)
split v_shr_i196_6_4 tmp_to_be_used v_conv4_i195_6_4 1;
(*   %conv5.i197.6.4 = trunc i32 %shr.i196.6.4 to i8 *)
split tmp_v_shr_i196_6_4 v_conv5_i197_6_4 v_shr_i196_6_4 8;
vpc v_conv5_i197_6_4@uint8 v_conv5_i197_6_4@uint32;
(*   %conv6.i198.6.4 = zext i8 %conv7.i200.5.4 to i32 *)
cast v_conv6_i198_6_4@uint32 v_conv7_i200_5_4@uint8;
(*   %shl.i199.6.4 = shl i32 %conv6.i198.6.4, 1 *)
shls discard_314 v_shl_i199_6_4 v_conv6_i198_6_4 1;
(*   %conv7.i200.6.4 = trunc i32 %shl.i199.6.4 to i8 *)
split tmp_v_shl_i199_6_4 v_conv7_i200_6_4 v_shl_i199_6_4 8;
vpc v_conv7_i200_6_4@uint8 v_conv7_i200_6_4@uint32;
(*   %conv.i188.7.4 = zext i8 %conv5.i197.6.4 to i32 *)
cast v_conv_i188_7_4@uint32 v_conv5_i197_6_4@uint8;
(*   %and.i189.7.4 = and i32 %conv.i188.7.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_7_4 v_conv_i188_7_4 (0x1)@uint32;
(*   %conv1.i190.7.4 = zext i8 %conv7.i200.6.4 to i32 *)
cast v_conv1_i190_7_4@uint32 v_conv7_i200_6_4@uint8;
(*   %mul.i191.7.4 = mul nsw i32 %and.i189.7.4, %conv1.i190.7.4 *)
mul v_mul_i191_7_4 v_and_i189_7_4 v_conv1_i190_7_4;
(*   %conv2.i192.7.4 = zext i8 %conv3.i194.6.4 to i32 *)
cast v_conv2_i192_7_4@uint32 v_conv3_i194_6_4@uint8;
(*   %xor.i193.7.4 = xor i32 %conv2.i192.7.4, %mul.i191.7.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i193_7_4 v_conv2_i192_7_4 v_mul_i191_7_4;
(*   %conv3.i194.7.4 = trunc i32 %xor.i193.7.4 to i8 *)
split tmp_v_xor_i193_7_4 v_conv3_i194_7_4 v_xor_i193_7_4 8;
vpc v_conv3_i194_7_4@uint8 v_conv3_i194_7_4@uint32;
(*   %arrayidx90.4 = getelementptr inbounds i8, i8* %c, i64 4 *)
(*   store i8 %conv3.i194.7.4, i8* %arrayidx90.4, align 1 *)
mov c_4 v_conv3_i194_7_4;
(*   %arrayidx105.4 = getelementptr inbounds i8, i8* %c, i64 4 *)
(*   %scevgep46.4135 = getelementptr [25 x i8], [25 x i8]* %213, i64 0, i64 0 *)
(*   %216 = load i8, i8* %scevgep46.4135, align 1 *)
mov v216 z_20;
(*   %conv103.4136 = zext i8 %216 to i32 *)
cast v_conv103_4136@uint32 v216@uint8;
(*   %217 = load i8, i8* %arrayidx105.4, align 1 *)
mov v217 c_4;
(*   %conv106.4137 = zext i8 %217 to i32 *)
cast v_conv106_4137@uint32 v217@uint8;
(*   %xor107.4138 = xor i32 %conv106.4137, %conv103.4136 *)
(* You may need to modify here *)
xor uint32 v_xor107_4138 v_conv106_4137 v_conv103_4136;
(*   %conv108.4139 = trunc i32 %xor107.4138 to i8 *)
split tmp_v_xor107_4138 v_conv108_4139 v_xor107_4138 8;
vpc v_conv108_4139@uint8 v_conv108_4139@uint32;
(*   store i8 %conv108.4139, i8* %arrayidx105.4, align 1 *)
mov c_4 v_conv108_4139;
(*   %scevgep46.1.4 = getelementptr [25 x i8], [25 x i8]* %213, i64 0, i64 1 *)
(*   %218 = load i8, i8* %scevgep46.1.4, align 1 *)
mov v218 z_21;
(*   %conv103.1.4 = zext i8 %218 to i32 *)
cast v_conv103_1_4@uint32 v218@uint8;
(*   %219 = load i8, i8* %arrayidx105.4, align 1 *)
mov v219 c_4;
(*   %conv106.1.4 = zext i8 %219 to i32 *)
cast v_conv106_1_4@uint32 v219@uint8;
(*   %xor107.1.4 = xor i32 %conv106.1.4, %conv103.1.4 *)
(* You may need to modify here *)
xor uint32 v_xor107_1_4 v_conv106_1_4 v_conv103_1_4;
(*   %conv108.1.4 = trunc i32 %xor107.1.4 to i8 *)
split tmp_v_xor107_1_4 v_conv108_1_4 v_xor107_1_4 8;
vpc v_conv108_1_4@uint8 v_conv108_1_4@uint32;
(*   store i8 %conv108.1.4, i8* %arrayidx105.4, align 1 *)
mov c_4 v_conv108_1_4;
(*   %scevgep46.2.4 = getelementptr [25 x i8], [25 x i8]* %213, i64 0, i64 2 *)
(*   %220 = load i8, i8* %scevgep46.2.4, align 1 *)
mov v220 z_22;
(*   %conv103.2.4 = zext i8 %220 to i32 *)
cast v_conv103_2_4@uint32 v220@uint8;
(*   %221 = load i8, i8* %arrayidx105.4, align 1 *)
mov v221 c_4;
(*   %conv106.2.4 = zext i8 %221 to i32 *)
cast v_conv106_2_4@uint32 v221@uint8;
(*   %xor107.2.4 = xor i32 %conv106.2.4, %conv103.2.4 *)
(* You may need to modify here *)
xor uint32 v_xor107_2_4 v_conv106_2_4 v_conv103_2_4;
(*   %conv108.2.4 = trunc i32 %xor107.2.4 to i8 *)
split tmp_v_xor107_2_4 v_conv108_2_4 v_xor107_2_4 8;
vpc v_conv108_2_4@uint8 v_conv108_2_4@uint32;
(*   store i8 %conv108.2.4, i8* %arrayidx105.4, align 1 *)
mov c_4 v_conv108_2_4;
(*   %scevgep46.3.4 = getelementptr [25 x i8], [25 x i8]* %213, i64 0, i64 3 *)
(*   %222 = load i8, i8* %scevgep46.3.4, align 1 *)
mov v222 z_23;
(*   %conv103.3.4 = zext i8 %222 to i32 *)
cast v_conv103_3_4@uint32 v222@uint8;
(*   %223 = load i8, i8* %arrayidx105.4, align 1 *)
mov v223 c_4;
(*   %conv106.3.4 = zext i8 %223 to i32 *)
cast v_conv106_3_4@uint32 v223@uint8;
(*   %xor107.3.4 = xor i32 %conv106.3.4, %conv103.3.4 *)
(* You may need to modify here *)
xor uint32 v_xor107_3_4 v_conv106_3_4 v_conv103_3_4;
(*   %conv108.3.4 = trunc i32 %xor107.3.4 to i8 *)
split tmp_v_xor107_3_4 v_conv108_3_4 v_xor107_3_4 8;
vpc v_conv108_3_4@uint8 v_conv108_3_4@uint32;
(*   store i8 %conv108.3.4, i8* %arrayidx105.4, align 1 *)
mov c_4 v_conv108_3_4;
(*   %224 = load i8, i8* %a, align 1 *)
mov v224 a_0;
(*   %scevgep36.1 = getelementptr i8, i8* %a, i64 1 *)
(*   %225 = load i8, i8* %scevgep36.1, align 1 *)
mov v225 a_1;
(*   %conv.i.i214.1 = zext i8 %225 to i32 *)
cast v_conv_i_i214_1@uint32 v225@uint8;
(*   %conv1.i.i215.1 = zext i8 %224 to i32 *)
cast v_conv1_i_i215_1@uint32 v224@uint8;
(*   %xor.i.i216.1 = xor i32 %conv1.i.i215.1, %conv.i.i214.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i216_1 v_conv1_i_i215_1 v_conv_i_i214_1;
(*   %conv2.i.i217.1 = trunc i32 %xor.i.i216.1 to i8 *)
split tmp_v_xor_i_i216_1 v_conv2_i_i217_1 v_xor_i_i216_1 8;
vpc v_conv2_i_i217_1@uint8 v_conv2_i_i217_1@uint32;
(*   %scevgep36.2 = getelementptr i8, i8* %a, i64 2 *)
(*   %226 = load i8, i8* %scevgep36.2, align 1 *)
mov v226 a_2;
(*   %conv.i.i214.2 = zext i8 %226 to i32 *)
cast v_conv_i_i214_2@uint32 v226@uint8;
(*   %conv1.i.i215.2 = zext i8 %conv2.i.i217.1 to i32 *)
cast v_conv1_i_i215_2@uint32 v_conv2_i_i217_1@uint8;
(*   %xor.i.i216.2 = xor i32 %conv1.i.i215.2, %conv.i.i214.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i216_2 v_conv1_i_i215_2 v_conv_i_i214_2;
(*   %conv2.i.i217.2 = trunc i32 %xor.i.i216.2 to i8 *)
split tmp_v_xor_i_i216_2 v_conv2_i_i217_2 v_xor_i_i216_2 8;
vpc v_conv2_i_i217_2@uint8 v_conv2_i_i217_2@uint32;
(*   %scevgep36.3 = getelementptr i8, i8* %a, i64 3 *)
(*   %227 = load i8, i8* %scevgep36.3, align 1 *)
mov v227 a_3;
(*   %conv.i.i214.3 = zext i8 %227 to i32 *)
cast v_conv_i_i214_3@uint32 v227@uint8;
(*   %conv1.i.i215.3 = zext i8 %conv2.i.i217.2 to i32 *)
cast v_conv1_i_i215_3@uint32 v_conv2_i_i217_2@uint8;
(*   %xor.i.i216.3 = xor i32 %conv1.i.i215.3, %conv.i.i214.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i216_3 v_conv1_i_i215_3 v_conv_i_i214_3;
(*   %conv2.i.i217.3 = trunc i32 %xor.i.i216.3 to i8 *)
split tmp_v_xor_i_i216_3 v_conv2_i_i217_3 v_xor_i_i216_3 8;
vpc v_conv2_i_i217_3@uint8 v_conv2_i_i217_3@uint32;
(*   %scevgep36.4 = getelementptr i8, i8* %a, i64 4 *)
(*   %228 = load i8, i8* %scevgep36.4, align 1 *)
mov v228 a_4;
(*   %conv.i.i214.4 = zext i8 %228 to i32 *)
cast v_conv_i_i214_4@uint32 v228@uint8;
(*   %conv1.i.i215.4 = zext i8 %conv2.i.i217.3 to i32 *)
cast v_conv1_i_i215_4@uint32 v_conv2_i_i217_3@uint8;
(*   %xor.i.i216.4 = xor i32 %conv1.i.i215.4, %conv.i.i214.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i216_4 v_conv1_i_i215_4 v_conv_i_i214_4;
(*   %conv2.i.i217.4 = trunc i32 %xor.i.i216.4 to i8 *)
split tmp_v_xor_i_i216_4 v_conv2_i_i217_4 v_xor_i_i216_4 8;
vpc v_conv2_i_i217_4@uint8 v_conv2_i_i217_4@uint32;
(*   %229 = load i8, i8* %b, align 1 *)
mov v229 b_0;
(*   %scevgep32.1 = getelementptr i8, i8* %b, i64 1 *)
(*   %230 = load i8, i8* %scevgep32.1, align 1 *)
mov v230 b_1;
(*   %conv.i.i175.1 = zext i8 %230 to i32 *)
cast v_conv_i_i175_1@uint32 v230@uint8;
(*   %conv1.i.i176.1 = zext i8 %229 to i32 *)
cast v_conv1_i_i176_1@uint32 v229@uint8;
(*   %xor.i.i177.1 = xor i32 %conv1.i.i176.1, %conv.i.i175.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i177_1 v_conv1_i_i176_1 v_conv_i_i175_1;
(*   %conv2.i.i178.1 = trunc i32 %xor.i.i177.1 to i8 *)
split tmp_v_xor_i_i177_1 v_conv2_i_i178_1 v_xor_i_i177_1 8;
vpc v_conv2_i_i178_1@uint8 v_conv2_i_i178_1@uint32;
(*   %scevgep32.2 = getelementptr i8, i8* %b, i64 2 *)
(*   %231 = load i8, i8* %scevgep32.2, align 1 *)
mov v231 b_2;
(*   %conv.i.i175.2 = zext i8 %231 to i32 *)
cast v_conv_i_i175_2@uint32 v231@uint8;
(*   %conv1.i.i176.2 = zext i8 %conv2.i.i178.1 to i32 *)
cast v_conv1_i_i176_2@uint32 v_conv2_i_i178_1@uint8;
(*   %xor.i.i177.2 = xor i32 %conv1.i.i176.2, %conv.i.i175.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i177_2 v_conv1_i_i176_2 v_conv_i_i175_2;
(*   %conv2.i.i178.2 = trunc i32 %xor.i.i177.2 to i8 *)
split tmp_v_xor_i_i177_2 v_conv2_i_i178_2 v_xor_i_i177_2 8;
vpc v_conv2_i_i178_2@uint8 v_conv2_i_i178_2@uint32;
(*   %scevgep32.3 = getelementptr i8, i8* %b, i64 3 *)
(*   %232 = load i8, i8* %scevgep32.3, align 1 *)
mov v232 b_3;
(*   %conv.i.i175.3 = zext i8 %232 to i32 *)
cast v_conv_i_i175_3@uint32 v232@uint8;
(*   %conv1.i.i176.3 = zext i8 %conv2.i.i178.2 to i32 *)
cast v_conv1_i_i176_3@uint32 v_conv2_i_i178_2@uint8;
(*   %xor.i.i177.3 = xor i32 %conv1.i.i176.3, %conv.i.i175.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i177_3 v_conv1_i_i176_3 v_conv_i_i175_3;
(*   %conv2.i.i178.3 = trunc i32 %xor.i.i177.3 to i8 *)
split tmp_v_xor_i_i177_3 v_conv2_i_i178_3 v_xor_i_i177_3 8;
vpc v_conv2_i_i178_3@uint8 v_conv2_i_i178_3@uint32;
(*   %scevgep32.4 = getelementptr i8, i8* %b, i64 4 *)
(*   %233 = load i8, i8* %scevgep32.4, align 1 *)
mov v233 b_4;
(*   %conv.i.i175.4 = zext i8 %233 to i32 *)
cast v_conv_i_i175_4@uint32 v233@uint8;
(*   %conv1.i.i176.4 = zext i8 %conv2.i.i178.3 to i32 *)
cast v_conv1_i_i176_4@uint32 v_conv2_i_i178_3@uint8;
(*   %xor.i.i177.4 = xor i32 %conv1.i.i176.4, %conv.i.i175.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i177_4 v_conv1_i_i176_4 v_conv_i_i175_4;
(*   %conv2.i.i178.4 = trunc i32 %xor.i.i177.4 to i8 *)
split tmp_v_xor_i_i177_4 v_conv2_i_i178_4 v_xor_i_i177_4 8;
vpc v_conv2_i_i178_4@uint8 v_conv2_i_i178_4@uint32;
(*   %conv.i149 = zext i8 %conv2.i.i178.4 to i32 *)
cast v_conv_i149@uint32 v_conv2_i_i178_4@uint8;
(*   %and.i150 = and i32 %conv.i149, 1 *)
(* You may need to modify here *)
and uint32 v_and_i150 v_conv_i149 (0x1)@uint32;
(*   %conv1.i151 = zext i8 %conv2.i.i217.4 to i32 *)
cast v_conv1_i151@uint32 v_conv2_i_i217_4@uint8;
(*   %mul.i152 = mul nsw i32 %and.i150, %conv1.i151 *)
mul v_mul_i152 v_and_i150 v_conv1_i151;
(*   %conv3.i155 = trunc i32 %mul.i152 to i8 *)
split tmp_v_mul_i152 v_conv3_i155 v_mul_i152 8;
vpc v_conv3_i155@uint8 v_conv3_i155@uint32;
(*   %conv4.i156 = zext i8 %conv2.i.i178.4 to i32 *)
cast v_conv4_i156@uint32 v_conv2_i_i178_4@uint8;
(*   %shr.i157 = ashr i32 %conv4.i156, 1 *)
(* You may need to modify here *)
split v_shr_i157 tmp_to_be_used v_conv4_i156 1;
(*   %conv5.i158 = trunc i32 %shr.i157 to i8 *)
split tmp_v_shr_i157 v_conv5_i158 v_shr_i157 8;
vpc v_conv5_i158@uint8 v_conv5_i158@uint32;
(*   %conv6.i159 = zext i8 %conv2.i.i217.4 to i32 *)
cast v_conv6_i159@uint32 v_conv2_i_i217_4@uint8;
(*   %shl.i160 = shl i32 %conv6.i159, 1 *)
shls discard_315 v_shl_i160 v_conv6_i159 1;
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
shls discard_316 v_shl_i160_1 v_conv6_i159_1 1;
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
shls discard_317 v_shl_i160_2 v_conv6_i159_2 1;
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
shls discard_318 v_shl_i160_3 v_conv6_i159_3 1;
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
shls discard_319 v_shl_i160_4 v_conv6_i159_4 1;
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
shls discard_320 v_shl_i160_5 v_conv6_i159_5 1;
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
shls discard_321 v_shl_i160_6 v_conv6_i159_6 1;
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
(*   %234 = load i8, i8* %c, align 1 *)
mov v234 c_0;
(*   %scevgep.1 = getelementptr i8, i8* %c, i64 1 *)
(*   %235 = load i8, i8* %scevgep.1, align 1 *)
mov v235 c_1;
(*   %conv.i.i.1 = zext i8 %235 to i32 *)
cast v_conv_i_i_1@uint32 v235@uint8;
(*   %conv1.i.i.1 = zext i8 %234 to i32 *)
cast v_conv1_i_i_1@uint32 v234@uint8;
(*   %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_1 v_conv1_i_i_1 v_conv_i_i_1;
(*   %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8 *)
split tmp_v_xor_i_i_1 v_conv2_i_i_1 v_xor_i_i_1 8;
vpc v_conv2_i_i_1@uint8 v_conv2_i_i_1@uint32;
(*   %scevgep.2 = getelementptr i8, i8* %c, i64 2 *)
(*   %236 = load i8, i8* %scevgep.2, align 1 *)
mov v236 c_2;
(*   %conv.i.i.2 = zext i8 %236 to i32 *)
cast v_conv_i_i_2@uint32 v236@uint8;
(*   %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32 *)
cast v_conv1_i_i_2@uint32 v_conv2_i_i_1@uint8;
(*   %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_2 v_conv1_i_i_2 v_conv_i_i_2;
(*   %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8 *)
split tmp_v_xor_i_i_2 v_conv2_i_i_2 v_xor_i_i_2 8;
vpc v_conv2_i_i_2@uint8 v_conv2_i_i_2@uint32;
(*   %scevgep.3 = getelementptr i8, i8* %c, i64 3 *)
(*   %237 = load i8, i8* %scevgep.3, align 1 *)
mov v237 c_3;
(*   %conv.i.i.3 = zext i8 %237 to i32 *)
cast v_conv_i_i_3@uint32 v237@uint8;
(*   %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32 *)
cast v_conv1_i_i_3@uint32 v_conv2_i_i_2@uint8;
(*   %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_3 v_conv1_i_i_3 v_conv_i_i_3;
(*   %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8 *)
split tmp_v_xor_i_i_3 v_conv2_i_i_3 v_xor_i_i_3 8;
vpc v_conv2_i_i_3@uint8 v_conv2_i_i_3@uint32;
(*   %scevgep.4 = getelementptr i8, i8* %c, i64 4 *)
(*   %238 = load i8, i8* %scevgep.4, align 1 *)
mov v238 c_4;
(*   %conv.i.i.4 = zext i8 %238 to i32 *)
cast v_conv_i_i_4@uint32 v238@uint8;
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


assert AB_0=C_0 && true;

mov _ AB_0@uint8;
mov _ C_0@uint8;


{
  true
  &&
  true
}

