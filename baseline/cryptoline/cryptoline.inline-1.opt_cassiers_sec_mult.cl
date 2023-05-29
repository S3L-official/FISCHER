proc main (uint8 a_0, uint8 a_1, uint8 b_0, uint8 b_1, uint8 r_1) =
{
  true
  &&
  true
}



(*   %s = alloca [4 x i8], align 1 *)
(*   %p0 = alloca [4 x i8], align 1 *)
(*   %p1 = alloca [4 x i8], align 1 *)
(*   %z = alloca [4 x i8], align 1 *)
(*   %scevgep53 = getelementptr i8, i8* %r, i64 1 *)
(*   %0 = load i8, i8* %scevgep53, align 1 *)
mov v0 r_1;
(*   %scevgep54 = getelementptr i8, i8* %r, i64 2 *)
(*   store i8 %0, i8* %scevgep54, align 1 *)
mov r_2 v0;
(*   %arrayidx22.1 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %1 = load i8, i8* %arrayidx22.1, align 1 *)
mov v1 b_1;
(*   %conv.1 = zext i8 %1 to i32 *)
cast v_conv_1@uint32 v1@uint8;
(*   %arrayidx26.1 = getelementptr inbounds i8, i8* %r, i64 1 *)
(*   %2 = load i8, i8* %arrayidx26.1, align 1 *)
mov v2 r_1;
(*   %conv27.1 = zext i8 %2 to i32 *)
cast v_conv27_1@uint32 v2@uint8;
(*   %xor.1 = xor i32 %conv.1, %conv27.1 *)
(* You may need to modify here *)
xor uint32 v_xor_1 v_conv_1 v_conv27_1;
(*   %conv28.1 = trunc i32 %xor.1 to i8 *)
split tmp_v_xor_1 v_conv28_1 v_xor_1 8;
vpc v_conv28_1@uint8 v_conv28_1@uint32;
(*   %arrayidx32.1 = getelementptr inbounds [4 x i8], [4 x i8]* %s, i64 0, i64 1 *)
(*   store i8 %conv28.1, i8* %arrayidx32.1, align 1 *)
mov s_1 v_conv28_1;
(*   %3 = load i8, i8* %a, align 1 *)
mov v3 a_0;
(*   %conv35.1 = zext i8 %3 to i32 *)
cast v_conv35_1@uint32 v3@uint8;
(*   %xor36.1 = xor i32 %conv35.1, 1 *)
(* You may need to modify here *)
xor uint32 v_xor36_1 v_conv35_1 (0x1)@uint32;
(*   %conv37.1 = trunc i32 %xor36.1 to i8 *)
split tmp_v_xor36_1 v_conv37_1 v_xor36_1 8;
vpc v_conv37_1@uint8 v_conv37_1@uint32;
(*   %arrayidx41.1 = getelementptr inbounds i8, i8* %r, i64 1 *)
(*   %4 = load i8, i8* %arrayidx41.1, align 1 *)
mov v4 r_1;
(*   %conv.i.181 = zext i8 %4 to i32 *)
cast v_conv_i_181@uint32 v4@uint8;
(*   %and.i.182 = and i32 %conv.i.181, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_182 v_conv_i_181 (0x1)@uint32;
(*   %conv1.i.183 = zext i8 %conv37.1 to i32 *)
cast v_conv1_i_183@uint32 v_conv37_1@uint8;
(*   %mul.i.184 = mul nsw i32 %and.i.182, %conv1.i.183 *)
mul v_mul_i_184 v_and_i_182 v_conv1_i_183;
(*   %conv3.i.185 = trunc i32 %mul.i.184 to i8 *)
split tmp_v_mul_i_184 v_conv3_i_185 v_mul_i_184 8;
vpc v_conv3_i_185@uint8 v_conv3_i_185@uint32;
(*   %conv4.i.186 = zext i8 %4 to i32 *)
cast v_conv4_i_186@uint32 v4@uint8;
(*   %shr.i.187 = ashr i32 %conv4.i.186, 1 *)
(* You may need to modify here *)
split v_shr_i_187 tmp_to_be_used v_conv4_i_186 1;
(*   %conv5.i.188 = trunc i32 %shr.i.187 to i8 *)
split tmp_v_shr_i_187 v_conv5_i_188 v_shr_i_187 8;
vpc v_conv5_i_188@uint8 v_conv5_i_188@uint32;
(*   %conv6.i.189 = zext i8 %conv37.1 to i32 *)
cast v_conv6_i_189@uint32 v_conv37_1@uint8;
(*   %shl.i.190 = shl i32 %conv6.i.189, 1 *)
shls discard_0 v_shl_i_190 v_conv6_i_189 1;
(*   %conv7.i.191 = trunc i32 %shl.i.190 to i8 *)
split tmp_v_shl_i_190 v_conv7_i_191 v_shl_i_190 8;
vpc v_conv7_i_191@uint8 v_conv7_i_191@uint32;
(*   %conv.i.1.1 = zext i8 %conv5.i.188 to i32 *)
cast v_conv_i_1_1@uint32 v_conv5_i_188@uint8;
(*   %and.i.1.1 = and i32 %conv.i.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_1 v_conv_i_1_1 (0x1)@uint32;
(*   %conv1.i.1.1 = zext i8 %conv7.i.191 to i32 *)
cast v_conv1_i_1_1@uint32 v_conv7_i_191@uint8;
(*   %mul.i.1.1 = mul nsw i32 %and.i.1.1, %conv1.i.1.1 *)
mul v_mul_i_1_1 v_and_i_1_1 v_conv1_i_1_1;
(*   %conv2.i.1.1 = zext i8 %conv3.i.185 to i32 *)
cast v_conv2_i_1_1@uint32 v_conv3_i_185@uint8;
(*   %xor.i.1.1 = xor i32 %conv2.i.1.1, %mul.i.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_1 v_conv2_i_1_1 v_mul_i_1_1;
(*   %conv3.i.1.1 = trunc i32 %xor.i.1.1 to i8 *)
split tmp_v_xor_i_1_1 v_conv3_i_1_1 v_xor_i_1_1 8;
vpc v_conv3_i_1_1@uint8 v_conv3_i_1_1@uint32;
(*   %conv4.i.1.1 = zext i8 %conv5.i.188 to i32 *)
cast v_conv4_i_1_1@uint32 v_conv5_i_188@uint8;
(*   %shr.i.1.1 = ashr i32 %conv4.i.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_1_1 tmp_to_be_used v_conv4_i_1_1 1;
(*   %conv5.i.1.1 = trunc i32 %shr.i.1.1 to i8 *)
split tmp_v_shr_i_1_1 v_conv5_i_1_1 v_shr_i_1_1 8;
vpc v_conv5_i_1_1@uint8 v_conv5_i_1_1@uint32;
(*   %conv6.i.1.1 = zext i8 %conv7.i.191 to i32 *)
cast v_conv6_i_1_1@uint32 v_conv7_i_191@uint8;
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
(*   %arrayidx45.1 = getelementptr inbounds [4 x i8], [4 x i8]* %p0, i64 0, i64 1 *)
(*   store i8 %conv3.i.7.1, i8* %arrayidx45.1, align 1 *)
mov p0_1 v_conv3_i_7_1;
(*   %5 = load i8, i8* %a, align 1 *)
mov v5 a_0;
(*   %arrayidx51.1 = getelementptr inbounds [4 x i8], [4 x i8]* %s, i64 0, i64 1 *)
(*   %6 = load i8, i8* %arrayidx51.1, align 1 *)
mov v6 s_1;
(*   %conv.i127.192 = zext i8 %6 to i32 *)
cast v_conv_i127_192@uint32 v6@uint8;
(*   %and.i128.193 = and i32 %conv.i127.192, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_193 v_conv_i127_192 (0x1)@uint32;
(*   %conv1.i129.194 = zext i8 %5 to i32 *)
cast v_conv1_i129_194@uint32 v5@uint8;
(*   %mul.i130.195 = mul nsw i32 %and.i128.193, %conv1.i129.194 *)
mul v_mul_i130_195 v_and_i128_193 v_conv1_i129_194;
(*   %conv3.i133.196 = trunc i32 %mul.i130.195 to i8 *)
split tmp_v_mul_i130_195 v_conv3_i133_196 v_mul_i130_195 8;
vpc v_conv3_i133_196@uint8 v_conv3_i133_196@uint32;
(*   %conv4.i134.197 = zext i8 %6 to i32 *)
cast v_conv4_i134_197@uint32 v6@uint8;
(*   %shr.i135.198 = ashr i32 %conv4.i134.197, 1 *)
(* You may need to modify here *)
split v_shr_i135_198 tmp_to_be_used v_conv4_i134_197 1;
(*   %conv5.i136.199 = trunc i32 %shr.i135.198 to i8 *)
split tmp_v_shr_i135_198 v_conv5_i136_199 v_shr_i135_198 8;
vpc v_conv5_i136_199@uint8 v_conv5_i136_199@uint32;
(*   %conv6.i137.1100 = zext i8 %5 to i32 *)
cast v_conv6_i137_1100@uint32 v5@uint8;
(*   %shl.i138.1101 = shl i32 %conv6.i137.1100, 1 *)
shls discard_7 v_shl_i138_1101 v_conv6_i137_1100 1;
(*   %conv7.i139.1102 = trunc i32 %shl.i138.1101 to i8 *)
split tmp_v_shl_i138_1101 v_conv7_i139_1102 v_shl_i138_1101 8;
vpc v_conv7_i139_1102@uint8 v_conv7_i139_1102@uint32;
(*   %conv.i127.1.1 = zext i8 %conv5.i136.199 to i32 *)
cast v_conv_i127_1_1@uint32 v_conv5_i136_199@uint8;
(*   %and.i128.1.1 = and i32 %conv.i127.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1_1 v_conv_i127_1_1 (0x1)@uint32;
(*   %conv1.i129.1.1 = zext i8 %conv7.i139.1102 to i32 *)
cast v_conv1_i129_1_1@uint32 v_conv7_i139_1102@uint8;
(*   %mul.i130.1.1 = mul nsw i32 %and.i128.1.1, %conv1.i129.1.1 *)
mul v_mul_i130_1_1 v_and_i128_1_1 v_conv1_i129_1_1;
(*   %conv2.i131.1.1 = zext i8 %conv3.i133.196 to i32 *)
cast v_conv2_i131_1_1@uint32 v_conv3_i133_196@uint8;
(*   %xor.i132.1.1 = xor i32 %conv2.i131.1.1, %mul.i130.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_1_1 v_conv2_i131_1_1 v_mul_i130_1_1;
(*   %conv3.i133.1.1 = trunc i32 %xor.i132.1.1 to i8 *)
split tmp_v_xor_i132_1_1 v_conv3_i133_1_1 v_xor_i132_1_1 8;
vpc v_conv3_i133_1_1@uint8 v_conv3_i133_1_1@uint32;
(*   %conv4.i134.1.1 = zext i8 %conv5.i136.199 to i32 *)
cast v_conv4_i134_1_1@uint32 v_conv5_i136_199@uint8;
(*   %shr.i135.1.1 = ashr i32 %conv4.i134.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i135_1_1 tmp_to_be_used v_conv4_i134_1_1 1;
(*   %conv5.i136.1.1 = trunc i32 %shr.i135.1.1 to i8 *)
split tmp_v_shr_i135_1_1 v_conv5_i136_1_1 v_shr_i135_1_1 8;
vpc v_conv5_i136_1_1@uint8 v_conv5_i136_1_1@uint32;
(*   %conv6.i137.1.1 = zext i8 %conv7.i139.1102 to i32 *)
cast v_conv6_i137_1_1@uint32 v_conv7_i139_1102@uint8;
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
(*   %arrayidx56.1 = getelementptr inbounds [4 x i8], [4 x i8]* %p1, i64 0, i64 1 *)
(*   store i8 %conv3.i133.7.1, i8* %arrayidx56.1, align 1 *)
mov p1_1 v_conv3_i133_7_1;
(*   %arrayidx60.1 = getelementptr inbounds [4 x i8], [4 x i8]* %p0, i64 0, i64 1 *)
(*   %7 = load i8, i8* %arrayidx60.1, align 1 *)
mov v7 p0_1;
(*   %conv61.1 = zext i8 %7 to i32 *)
cast v_conv61_1@uint32 v7@uint8;
(*   %arrayidx65.1 = getelementptr inbounds [4 x i8], [4 x i8]* %p1, i64 0, i64 1 *)
(*   %8 = load i8, i8* %arrayidx65.1, align 1 *)
mov v8 p1_1;
(*   %conv66.1 = zext i8 %8 to i32 *)
cast v_conv66_1@uint32 v8@uint8;
(*   %xor67.1 = xor i32 %conv61.1, %conv66.1 *)
(* You may need to modify here *)
xor uint32 v_xor67_1 v_conv61_1 v_conv66_1;
(*   %conv68.1 = trunc i32 %xor67.1 to i8 *)
split tmp_v_xor67_1 v_conv68_1 v_xor67_1 8;
vpc v_conv68_1@uint8 v_conv68_1@uint32;
(*   %arrayidx72.1 = getelementptr inbounds [4 x i8], [4 x i8]* %z, i64 0, i64 1 *)
(*   store i8 %conv68.1, i8* %arrayidx72.1, align 1 *)
mov z_1 v_conv68_1;
(*   %arrayidx34.1 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %arrayidx47.1 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %9 = load i8, i8* %b, align 1 *)
mov v9 b_0;
(*   %conv.1104 = zext i8 %9 to i32 *)
cast v_conv_1104@uint32 v9@uint8;
(*   %arrayidx26.1106 = getelementptr inbounds i8, i8* %r, i64 2 *)
(*   %10 = load i8, i8* %arrayidx26.1106, align 1 *)
mov v10 r_2;
(*   %conv27.1107 = zext i8 %10 to i32 *)
cast v_conv27_1107@uint32 v10@uint8;
(*   %xor.1108 = xor i32 %conv.1104, %conv27.1107 *)
(* You may need to modify here *)
xor uint32 v_xor_1108 v_conv_1104 v_conv27_1107;
(*   %conv28.1109 = trunc i32 %xor.1108 to i8 *)
split tmp_v_xor_1108 v_conv28_1109 v_xor_1108 8;
vpc v_conv28_1109@uint8 v_conv28_1109@uint32;
(*   %arrayidx32.1111 = getelementptr inbounds [4 x i8], [4 x i8]* %s, i64 0, i64 2 *)
(*   store i8 %conv28.1109, i8* %arrayidx32.1111, align 1 *)
mov s_2 v_conv28_1109;
(*   %11 = load i8, i8* %arrayidx34.1, align 1 *)
mov v11 a_1;
(*   %conv35.1112 = zext i8 %11 to i32 *)
cast v_conv35_1112@uint32 v11@uint8;
(*   %xor36.1113 = xor i32 %conv35.1112, 1 *)
(* You may need to modify here *)
xor uint32 v_xor36_1113 v_conv35_1112 (0x1)@uint32;
(*   %conv37.1114 = trunc i32 %xor36.1113 to i8 *)
split tmp_v_xor36_1113 v_conv37_1114 v_xor36_1113 8;
vpc v_conv37_1114@uint8 v_conv37_1114@uint32;
(*   %arrayidx41.1116 = getelementptr inbounds i8, i8* %r, i64 2 *)
(*   %12 = load i8, i8* %arrayidx41.1116, align 1 *)
mov v12 r_2;
(*   %conv.i.1118 = zext i8 %12 to i32 *)
cast v_conv_i_1118@uint32 v12@uint8;
(*   %and.i.1119 = and i32 %conv.i.1118, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1119 v_conv_i_1118 (0x1)@uint32;
(*   %conv1.i.1120 = zext i8 %conv37.1114 to i32 *)
cast v_conv1_i_1120@uint32 v_conv37_1114@uint8;
(*   %mul.i.1121 = mul nsw i32 %and.i.1119, %conv1.i.1120 *)
mul v_mul_i_1121 v_and_i_1119 v_conv1_i_1120;
(*   %conv3.i.1122 = trunc i32 %mul.i.1121 to i8 *)
split tmp_v_mul_i_1121 v_conv3_i_1122 v_mul_i_1121 8;
vpc v_conv3_i_1122@uint8 v_conv3_i_1122@uint32;
(*   %conv4.i.1123 = zext i8 %12 to i32 *)
cast v_conv4_i_1123@uint32 v12@uint8;
(*   %shr.i.1124 = ashr i32 %conv4.i.1123, 1 *)
(* You may need to modify here *)
split v_shr_i_1124 tmp_to_be_used v_conv4_i_1123 1;
(*   %conv5.i.1125 = trunc i32 %shr.i.1124 to i8 *)
split tmp_v_shr_i_1124 v_conv5_i_1125 v_shr_i_1124 8;
vpc v_conv5_i_1125@uint8 v_conv5_i_1125@uint32;
(*   %conv6.i.1126 = zext i8 %conv37.1114 to i32 *)
cast v_conv6_i_1126@uint32 v_conv37_1114@uint8;
(*   %shl.i.1127 = shl i32 %conv6.i.1126, 1 *)
shls discard_14 v_shl_i_1127 v_conv6_i_1126 1;
(*   %conv7.i.1128 = trunc i32 %shl.i.1127 to i8 *)
split tmp_v_shl_i_1127 v_conv7_i_1128 v_shl_i_1127 8;
vpc v_conv7_i_1128@uint8 v_conv7_i_1128@uint32;
(*   %conv.i.1.1129 = zext i8 %conv5.i.1125 to i32 *)
cast v_conv_i_1_1129@uint32 v_conv5_i_1125@uint8;
(*   %and.i.1.1130 = and i32 %conv.i.1.1129, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_1_1130 v_conv_i_1_1129 (0x1)@uint32;
(*   %conv1.i.1.1131 = zext i8 %conv7.i.1128 to i32 *)
cast v_conv1_i_1_1131@uint32 v_conv7_i_1128@uint8;
(*   %mul.i.1.1132 = mul nsw i32 %and.i.1.1130, %conv1.i.1.1131 *)
mul v_mul_i_1_1132 v_and_i_1_1130 v_conv1_i_1_1131;
(*   %conv2.i.1.1133 = zext i8 %conv3.i.1122 to i32 *)
cast v_conv2_i_1_1133@uint32 v_conv3_i_1122@uint8;
(*   %xor.i.1.1134 = xor i32 %conv2.i.1.1133, %mul.i.1.1132 *)
(* You may need to modify here *)
xor uint32 v_xor_i_1_1134 v_conv2_i_1_1133 v_mul_i_1_1132;
(*   %conv3.i.1.1135 = trunc i32 %xor.i.1.1134 to i8 *)
split tmp_v_xor_i_1_1134 v_conv3_i_1_1135 v_xor_i_1_1134 8;
vpc v_conv3_i_1_1135@uint8 v_conv3_i_1_1135@uint32;
(*   %conv4.i.1.1136 = zext i8 %conv5.i.1125 to i32 *)
cast v_conv4_i_1_1136@uint32 v_conv5_i_1125@uint8;
(*   %shr.i.1.1137 = ashr i32 %conv4.i.1.1136, 1 *)
(* You may need to modify here *)
split v_shr_i_1_1137 tmp_to_be_used v_conv4_i_1_1136 1;
(*   %conv5.i.1.1138 = trunc i32 %shr.i.1.1137 to i8 *)
split tmp_v_shr_i_1_1137 v_conv5_i_1_1138 v_shr_i_1_1137 8;
vpc v_conv5_i_1_1138@uint8 v_conv5_i_1_1138@uint32;
(*   %conv6.i.1.1139 = zext i8 %conv7.i.1128 to i32 *)
cast v_conv6_i_1_1139@uint32 v_conv7_i_1128@uint8;
(*   %shl.i.1.1140 = shl i32 %conv6.i.1.1139, 1 *)
shls discard_15 v_shl_i_1_1140 v_conv6_i_1_1139 1;
(*   %conv7.i.1.1141 = trunc i32 %shl.i.1.1140 to i8 *)
split tmp_v_shl_i_1_1140 v_conv7_i_1_1141 v_shl_i_1_1140 8;
vpc v_conv7_i_1_1141@uint8 v_conv7_i_1_1141@uint32;
(*   %conv.i.2.1142 = zext i8 %conv5.i.1.1138 to i32 *)
cast v_conv_i_2_1142@uint32 v_conv5_i_1_1138@uint8;
(*   %and.i.2.1143 = and i32 %conv.i.2.1142, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_2_1143 v_conv_i_2_1142 (0x1)@uint32;
(*   %conv1.i.2.1144 = zext i8 %conv7.i.1.1141 to i32 *)
cast v_conv1_i_2_1144@uint32 v_conv7_i_1_1141@uint8;
(*   %mul.i.2.1145 = mul nsw i32 %and.i.2.1143, %conv1.i.2.1144 *)
mul v_mul_i_2_1145 v_and_i_2_1143 v_conv1_i_2_1144;
(*   %conv2.i.2.1146 = zext i8 %conv3.i.1.1135 to i32 *)
cast v_conv2_i_2_1146@uint32 v_conv3_i_1_1135@uint8;
(*   %xor.i.2.1147 = xor i32 %conv2.i.2.1146, %mul.i.2.1145 *)
(* You may need to modify here *)
xor uint32 v_xor_i_2_1147 v_conv2_i_2_1146 v_mul_i_2_1145;
(*   %conv3.i.2.1148 = trunc i32 %xor.i.2.1147 to i8 *)
split tmp_v_xor_i_2_1147 v_conv3_i_2_1148 v_xor_i_2_1147 8;
vpc v_conv3_i_2_1148@uint8 v_conv3_i_2_1148@uint32;
(*   %conv4.i.2.1149 = zext i8 %conv5.i.1.1138 to i32 *)
cast v_conv4_i_2_1149@uint32 v_conv5_i_1_1138@uint8;
(*   %shr.i.2.1150 = ashr i32 %conv4.i.2.1149, 1 *)
(* You may need to modify here *)
split v_shr_i_2_1150 tmp_to_be_used v_conv4_i_2_1149 1;
(*   %conv5.i.2.1151 = trunc i32 %shr.i.2.1150 to i8 *)
split tmp_v_shr_i_2_1150 v_conv5_i_2_1151 v_shr_i_2_1150 8;
vpc v_conv5_i_2_1151@uint8 v_conv5_i_2_1151@uint32;
(*   %conv6.i.2.1152 = zext i8 %conv7.i.1.1141 to i32 *)
cast v_conv6_i_2_1152@uint32 v_conv7_i_1_1141@uint8;
(*   %shl.i.2.1153 = shl i32 %conv6.i.2.1152, 1 *)
shls discard_16 v_shl_i_2_1153 v_conv6_i_2_1152 1;
(*   %conv7.i.2.1154 = trunc i32 %shl.i.2.1153 to i8 *)
split tmp_v_shl_i_2_1153 v_conv7_i_2_1154 v_shl_i_2_1153 8;
vpc v_conv7_i_2_1154@uint8 v_conv7_i_2_1154@uint32;
(*   %conv.i.3.1155 = zext i8 %conv5.i.2.1151 to i32 *)
cast v_conv_i_3_1155@uint32 v_conv5_i_2_1151@uint8;
(*   %and.i.3.1156 = and i32 %conv.i.3.1155, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_3_1156 v_conv_i_3_1155 (0x1)@uint32;
(*   %conv1.i.3.1157 = zext i8 %conv7.i.2.1154 to i32 *)
cast v_conv1_i_3_1157@uint32 v_conv7_i_2_1154@uint8;
(*   %mul.i.3.1158 = mul nsw i32 %and.i.3.1156, %conv1.i.3.1157 *)
mul v_mul_i_3_1158 v_and_i_3_1156 v_conv1_i_3_1157;
(*   %conv2.i.3.1159 = zext i8 %conv3.i.2.1148 to i32 *)
cast v_conv2_i_3_1159@uint32 v_conv3_i_2_1148@uint8;
(*   %xor.i.3.1160 = xor i32 %conv2.i.3.1159, %mul.i.3.1158 *)
(* You may need to modify here *)
xor uint32 v_xor_i_3_1160 v_conv2_i_3_1159 v_mul_i_3_1158;
(*   %conv3.i.3.1161 = trunc i32 %xor.i.3.1160 to i8 *)
split tmp_v_xor_i_3_1160 v_conv3_i_3_1161 v_xor_i_3_1160 8;
vpc v_conv3_i_3_1161@uint8 v_conv3_i_3_1161@uint32;
(*   %conv4.i.3.1162 = zext i8 %conv5.i.2.1151 to i32 *)
cast v_conv4_i_3_1162@uint32 v_conv5_i_2_1151@uint8;
(*   %shr.i.3.1163 = ashr i32 %conv4.i.3.1162, 1 *)
(* You may need to modify here *)
split v_shr_i_3_1163 tmp_to_be_used v_conv4_i_3_1162 1;
(*   %conv5.i.3.1164 = trunc i32 %shr.i.3.1163 to i8 *)
split tmp_v_shr_i_3_1163 v_conv5_i_3_1164 v_shr_i_3_1163 8;
vpc v_conv5_i_3_1164@uint8 v_conv5_i_3_1164@uint32;
(*   %conv6.i.3.1165 = zext i8 %conv7.i.2.1154 to i32 *)
cast v_conv6_i_3_1165@uint32 v_conv7_i_2_1154@uint8;
(*   %shl.i.3.1166 = shl i32 %conv6.i.3.1165, 1 *)
shls discard_17 v_shl_i_3_1166 v_conv6_i_3_1165 1;
(*   %conv7.i.3.1167 = trunc i32 %shl.i.3.1166 to i8 *)
split tmp_v_shl_i_3_1166 v_conv7_i_3_1167 v_shl_i_3_1166 8;
vpc v_conv7_i_3_1167@uint8 v_conv7_i_3_1167@uint32;
(*   %conv.i.4.1168 = zext i8 %conv5.i.3.1164 to i32 *)
cast v_conv_i_4_1168@uint32 v_conv5_i_3_1164@uint8;
(*   %and.i.4.1169 = and i32 %conv.i.4.1168, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_4_1169 v_conv_i_4_1168 (0x1)@uint32;
(*   %conv1.i.4.1170 = zext i8 %conv7.i.3.1167 to i32 *)
cast v_conv1_i_4_1170@uint32 v_conv7_i_3_1167@uint8;
(*   %mul.i.4.1171 = mul nsw i32 %and.i.4.1169, %conv1.i.4.1170 *)
mul v_mul_i_4_1171 v_and_i_4_1169 v_conv1_i_4_1170;
(*   %conv2.i.4.1172 = zext i8 %conv3.i.3.1161 to i32 *)
cast v_conv2_i_4_1172@uint32 v_conv3_i_3_1161@uint8;
(*   %xor.i.4.1173 = xor i32 %conv2.i.4.1172, %mul.i.4.1171 *)
(* You may need to modify here *)
xor uint32 v_xor_i_4_1173 v_conv2_i_4_1172 v_mul_i_4_1171;
(*   %conv3.i.4.1174 = trunc i32 %xor.i.4.1173 to i8 *)
split tmp_v_xor_i_4_1173 v_conv3_i_4_1174 v_xor_i_4_1173 8;
vpc v_conv3_i_4_1174@uint8 v_conv3_i_4_1174@uint32;
(*   %conv4.i.4.1175 = zext i8 %conv5.i.3.1164 to i32 *)
cast v_conv4_i_4_1175@uint32 v_conv5_i_3_1164@uint8;
(*   %shr.i.4.1176 = ashr i32 %conv4.i.4.1175, 1 *)
(* You may need to modify here *)
split v_shr_i_4_1176 tmp_to_be_used v_conv4_i_4_1175 1;
(*   %conv5.i.4.1177 = trunc i32 %shr.i.4.1176 to i8 *)
split tmp_v_shr_i_4_1176 v_conv5_i_4_1177 v_shr_i_4_1176 8;
vpc v_conv5_i_4_1177@uint8 v_conv5_i_4_1177@uint32;
(*   %conv6.i.4.1178 = zext i8 %conv7.i.3.1167 to i32 *)
cast v_conv6_i_4_1178@uint32 v_conv7_i_3_1167@uint8;
(*   %shl.i.4.1179 = shl i32 %conv6.i.4.1178, 1 *)
shls discard_18 v_shl_i_4_1179 v_conv6_i_4_1178 1;
(*   %conv7.i.4.1180 = trunc i32 %shl.i.4.1179 to i8 *)
split tmp_v_shl_i_4_1179 v_conv7_i_4_1180 v_shl_i_4_1179 8;
vpc v_conv7_i_4_1180@uint8 v_conv7_i_4_1180@uint32;
(*   %conv.i.5.1181 = zext i8 %conv5.i.4.1177 to i32 *)
cast v_conv_i_5_1181@uint32 v_conv5_i_4_1177@uint8;
(*   %and.i.5.1182 = and i32 %conv.i.5.1181, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_5_1182 v_conv_i_5_1181 (0x1)@uint32;
(*   %conv1.i.5.1183 = zext i8 %conv7.i.4.1180 to i32 *)
cast v_conv1_i_5_1183@uint32 v_conv7_i_4_1180@uint8;
(*   %mul.i.5.1184 = mul nsw i32 %and.i.5.1182, %conv1.i.5.1183 *)
mul v_mul_i_5_1184 v_and_i_5_1182 v_conv1_i_5_1183;
(*   %conv2.i.5.1185 = zext i8 %conv3.i.4.1174 to i32 *)
cast v_conv2_i_5_1185@uint32 v_conv3_i_4_1174@uint8;
(*   %xor.i.5.1186 = xor i32 %conv2.i.5.1185, %mul.i.5.1184 *)
(* You may need to modify here *)
xor uint32 v_xor_i_5_1186 v_conv2_i_5_1185 v_mul_i_5_1184;
(*   %conv3.i.5.1187 = trunc i32 %xor.i.5.1186 to i8 *)
split tmp_v_xor_i_5_1186 v_conv3_i_5_1187 v_xor_i_5_1186 8;
vpc v_conv3_i_5_1187@uint8 v_conv3_i_5_1187@uint32;
(*   %conv4.i.5.1188 = zext i8 %conv5.i.4.1177 to i32 *)
cast v_conv4_i_5_1188@uint32 v_conv5_i_4_1177@uint8;
(*   %shr.i.5.1189 = ashr i32 %conv4.i.5.1188, 1 *)
(* You may need to modify here *)
split v_shr_i_5_1189 tmp_to_be_used v_conv4_i_5_1188 1;
(*   %conv5.i.5.1190 = trunc i32 %shr.i.5.1189 to i8 *)
split tmp_v_shr_i_5_1189 v_conv5_i_5_1190 v_shr_i_5_1189 8;
vpc v_conv5_i_5_1190@uint8 v_conv5_i_5_1190@uint32;
(*   %conv6.i.5.1191 = zext i8 %conv7.i.4.1180 to i32 *)
cast v_conv6_i_5_1191@uint32 v_conv7_i_4_1180@uint8;
(*   %shl.i.5.1192 = shl i32 %conv6.i.5.1191, 1 *)
shls discard_19 v_shl_i_5_1192 v_conv6_i_5_1191 1;
(*   %conv7.i.5.1193 = trunc i32 %shl.i.5.1192 to i8 *)
split tmp_v_shl_i_5_1192 v_conv7_i_5_1193 v_shl_i_5_1192 8;
vpc v_conv7_i_5_1193@uint8 v_conv7_i_5_1193@uint32;
(*   %conv.i.6.1194 = zext i8 %conv5.i.5.1190 to i32 *)
cast v_conv_i_6_1194@uint32 v_conv5_i_5_1190@uint8;
(*   %and.i.6.1195 = and i32 %conv.i.6.1194, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_6_1195 v_conv_i_6_1194 (0x1)@uint32;
(*   %conv1.i.6.1196 = zext i8 %conv7.i.5.1193 to i32 *)
cast v_conv1_i_6_1196@uint32 v_conv7_i_5_1193@uint8;
(*   %mul.i.6.1197 = mul nsw i32 %and.i.6.1195, %conv1.i.6.1196 *)
mul v_mul_i_6_1197 v_and_i_6_1195 v_conv1_i_6_1196;
(*   %conv2.i.6.1198 = zext i8 %conv3.i.5.1187 to i32 *)
cast v_conv2_i_6_1198@uint32 v_conv3_i_5_1187@uint8;
(*   %xor.i.6.1199 = xor i32 %conv2.i.6.1198, %mul.i.6.1197 *)
(* You may need to modify here *)
xor uint32 v_xor_i_6_1199 v_conv2_i_6_1198 v_mul_i_6_1197;
(*   %conv3.i.6.1200 = trunc i32 %xor.i.6.1199 to i8 *)
split tmp_v_xor_i_6_1199 v_conv3_i_6_1200 v_xor_i_6_1199 8;
vpc v_conv3_i_6_1200@uint8 v_conv3_i_6_1200@uint32;
(*   %conv4.i.6.1201 = zext i8 %conv5.i.5.1190 to i32 *)
cast v_conv4_i_6_1201@uint32 v_conv5_i_5_1190@uint8;
(*   %shr.i.6.1202 = ashr i32 %conv4.i.6.1201, 1 *)
(* You may need to modify here *)
split v_shr_i_6_1202 tmp_to_be_used v_conv4_i_6_1201 1;
(*   %conv5.i.6.1203 = trunc i32 %shr.i.6.1202 to i8 *)
split tmp_v_shr_i_6_1202 v_conv5_i_6_1203 v_shr_i_6_1202 8;
vpc v_conv5_i_6_1203@uint8 v_conv5_i_6_1203@uint32;
(*   %conv6.i.6.1204 = zext i8 %conv7.i.5.1193 to i32 *)
cast v_conv6_i_6_1204@uint32 v_conv7_i_5_1193@uint8;
(*   %shl.i.6.1205 = shl i32 %conv6.i.6.1204, 1 *)
shls discard_20 v_shl_i_6_1205 v_conv6_i_6_1204 1;
(*   %conv7.i.6.1206 = trunc i32 %shl.i.6.1205 to i8 *)
split tmp_v_shl_i_6_1205 v_conv7_i_6_1206 v_shl_i_6_1205 8;
vpc v_conv7_i_6_1206@uint8 v_conv7_i_6_1206@uint32;
(*   %conv.i.7.1207 = zext i8 %conv5.i.6.1203 to i32 *)
cast v_conv_i_7_1207@uint32 v_conv5_i_6_1203@uint8;
(*   %and.i.7.1208 = and i32 %conv.i.7.1207, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_7_1208 v_conv_i_7_1207 (0x1)@uint32;
(*   %conv1.i.7.1209 = zext i8 %conv7.i.6.1206 to i32 *)
cast v_conv1_i_7_1209@uint32 v_conv7_i_6_1206@uint8;
(*   %mul.i.7.1210 = mul nsw i32 %and.i.7.1208, %conv1.i.7.1209 *)
mul v_mul_i_7_1210 v_and_i_7_1208 v_conv1_i_7_1209;
(*   %conv2.i.7.1211 = zext i8 %conv3.i.6.1200 to i32 *)
cast v_conv2_i_7_1211@uint32 v_conv3_i_6_1200@uint8;
(*   %xor.i.7.1212 = xor i32 %conv2.i.7.1211, %mul.i.7.1210 *)
(* You may need to modify here *)
xor uint32 v_xor_i_7_1212 v_conv2_i_7_1211 v_mul_i_7_1210;
(*   %conv3.i.7.1213 = trunc i32 %xor.i.7.1212 to i8 *)
split tmp_v_xor_i_7_1212 v_conv3_i_7_1213 v_xor_i_7_1212 8;
vpc v_conv3_i_7_1213@uint8 v_conv3_i_7_1213@uint32;
(*   %arrayidx45.1217 = getelementptr inbounds [4 x i8], [4 x i8]* %p0, i64 0, i64 2 *)
(*   store i8 %conv3.i.7.1213, i8* %arrayidx45.1217, align 1 *)
mov p0_2 v_conv3_i_7_1213;
(*   %13 = load i8, i8* %arrayidx47.1, align 1 *)
mov v13 a_1;
(*   %arrayidx51.1219 = getelementptr inbounds [4 x i8], [4 x i8]* %s, i64 0, i64 2 *)
(*   %14 = load i8, i8* %arrayidx51.1219, align 1 *)
mov v14 s_2;
(*   %conv.i127.1221 = zext i8 %14 to i32 *)
cast v_conv_i127_1221@uint32 v14@uint8;
(*   %and.i128.1222 = and i32 %conv.i127.1221, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1222 v_conv_i127_1221 (0x1)@uint32;
(*   %conv1.i129.1223 = zext i8 %13 to i32 *)
cast v_conv1_i129_1223@uint32 v13@uint8;
(*   %mul.i130.1224 = mul nsw i32 %and.i128.1222, %conv1.i129.1223 *)
mul v_mul_i130_1224 v_and_i128_1222 v_conv1_i129_1223;
(*   %conv3.i133.1225 = trunc i32 %mul.i130.1224 to i8 *)
split tmp_v_mul_i130_1224 v_conv3_i133_1225 v_mul_i130_1224 8;
vpc v_conv3_i133_1225@uint8 v_conv3_i133_1225@uint32;
(*   %conv4.i134.1226 = zext i8 %14 to i32 *)
cast v_conv4_i134_1226@uint32 v14@uint8;
(*   %shr.i135.1227 = ashr i32 %conv4.i134.1226, 1 *)
(* You may need to modify here *)
split v_shr_i135_1227 tmp_to_be_used v_conv4_i134_1226 1;
(*   %conv5.i136.1228 = trunc i32 %shr.i135.1227 to i8 *)
split tmp_v_shr_i135_1227 v_conv5_i136_1228 v_shr_i135_1227 8;
vpc v_conv5_i136_1228@uint8 v_conv5_i136_1228@uint32;
(*   %conv6.i137.1229 = zext i8 %13 to i32 *)
cast v_conv6_i137_1229@uint32 v13@uint8;
(*   %shl.i138.1230 = shl i32 %conv6.i137.1229, 1 *)
shls discard_21 v_shl_i138_1230 v_conv6_i137_1229 1;
(*   %conv7.i139.1231 = trunc i32 %shl.i138.1230 to i8 *)
split tmp_v_shl_i138_1230 v_conv7_i139_1231 v_shl_i138_1230 8;
vpc v_conv7_i139_1231@uint8 v_conv7_i139_1231@uint32;
(*   %conv.i127.1.1232 = zext i8 %conv5.i136.1228 to i32 *)
cast v_conv_i127_1_1232@uint32 v_conv5_i136_1228@uint8;
(*   %and.i128.1.1233 = and i32 %conv.i127.1.1232, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_1_1233 v_conv_i127_1_1232 (0x1)@uint32;
(*   %conv1.i129.1.1234 = zext i8 %conv7.i139.1231 to i32 *)
cast v_conv1_i129_1_1234@uint32 v_conv7_i139_1231@uint8;
(*   %mul.i130.1.1235 = mul nsw i32 %and.i128.1.1233, %conv1.i129.1.1234 *)
mul v_mul_i130_1_1235 v_and_i128_1_1233 v_conv1_i129_1_1234;
(*   %conv2.i131.1.1236 = zext i8 %conv3.i133.1225 to i32 *)
cast v_conv2_i131_1_1236@uint32 v_conv3_i133_1225@uint8;
(*   %xor.i132.1.1237 = xor i32 %conv2.i131.1.1236, %mul.i130.1.1235 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_1_1237 v_conv2_i131_1_1236 v_mul_i130_1_1235;
(*   %conv3.i133.1.1238 = trunc i32 %xor.i132.1.1237 to i8 *)
split tmp_v_xor_i132_1_1237 v_conv3_i133_1_1238 v_xor_i132_1_1237 8;
vpc v_conv3_i133_1_1238@uint8 v_conv3_i133_1_1238@uint32;
(*   %conv4.i134.1.1239 = zext i8 %conv5.i136.1228 to i32 *)
cast v_conv4_i134_1_1239@uint32 v_conv5_i136_1228@uint8;
(*   %shr.i135.1.1240 = ashr i32 %conv4.i134.1.1239, 1 *)
(* You may need to modify here *)
split v_shr_i135_1_1240 tmp_to_be_used v_conv4_i134_1_1239 1;
(*   %conv5.i136.1.1241 = trunc i32 %shr.i135.1.1240 to i8 *)
split tmp_v_shr_i135_1_1240 v_conv5_i136_1_1241 v_shr_i135_1_1240 8;
vpc v_conv5_i136_1_1241@uint8 v_conv5_i136_1_1241@uint32;
(*   %conv6.i137.1.1242 = zext i8 %conv7.i139.1231 to i32 *)
cast v_conv6_i137_1_1242@uint32 v_conv7_i139_1231@uint8;
(*   %shl.i138.1.1243 = shl i32 %conv6.i137.1.1242, 1 *)
shls discard_22 v_shl_i138_1_1243 v_conv6_i137_1_1242 1;
(*   %conv7.i139.1.1244 = trunc i32 %shl.i138.1.1243 to i8 *)
split tmp_v_shl_i138_1_1243 v_conv7_i139_1_1244 v_shl_i138_1_1243 8;
vpc v_conv7_i139_1_1244@uint8 v_conv7_i139_1_1244@uint32;
(*   %conv.i127.2.1245 = zext i8 %conv5.i136.1.1241 to i32 *)
cast v_conv_i127_2_1245@uint32 v_conv5_i136_1_1241@uint8;
(*   %and.i128.2.1246 = and i32 %conv.i127.2.1245, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_2_1246 v_conv_i127_2_1245 (0x1)@uint32;
(*   %conv1.i129.2.1247 = zext i8 %conv7.i139.1.1244 to i32 *)
cast v_conv1_i129_2_1247@uint32 v_conv7_i139_1_1244@uint8;
(*   %mul.i130.2.1248 = mul nsw i32 %and.i128.2.1246, %conv1.i129.2.1247 *)
mul v_mul_i130_2_1248 v_and_i128_2_1246 v_conv1_i129_2_1247;
(*   %conv2.i131.2.1249 = zext i8 %conv3.i133.1.1238 to i32 *)
cast v_conv2_i131_2_1249@uint32 v_conv3_i133_1_1238@uint8;
(*   %xor.i132.2.1250 = xor i32 %conv2.i131.2.1249, %mul.i130.2.1248 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_2_1250 v_conv2_i131_2_1249 v_mul_i130_2_1248;
(*   %conv3.i133.2.1251 = trunc i32 %xor.i132.2.1250 to i8 *)
split tmp_v_xor_i132_2_1250 v_conv3_i133_2_1251 v_xor_i132_2_1250 8;
vpc v_conv3_i133_2_1251@uint8 v_conv3_i133_2_1251@uint32;
(*   %conv4.i134.2.1252 = zext i8 %conv5.i136.1.1241 to i32 *)
cast v_conv4_i134_2_1252@uint32 v_conv5_i136_1_1241@uint8;
(*   %shr.i135.2.1253 = ashr i32 %conv4.i134.2.1252, 1 *)
(* You may need to modify here *)
split v_shr_i135_2_1253 tmp_to_be_used v_conv4_i134_2_1252 1;
(*   %conv5.i136.2.1254 = trunc i32 %shr.i135.2.1253 to i8 *)
split tmp_v_shr_i135_2_1253 v_conv5_i136_2_1254 v_shr_i135_2_1253 8;
vpc v_conv5_i136_2_1254@uint8 v_conv5_i136_2_1254@uint32;
(*   %conv6.i137.2.1255 = zext i8 %conv7.i139.1.1244 to i32 *)
cast v_conv6_i137_2_1255@uint32 v_conv7_i139_1_1244@uint8;
(*   %shl.i138.2.1256 = shl i32 %conv6.i137.2.1255, 1 *)
shls discard_23 v_shl_i138_2_1256 v_conv6_i137_2_1255 1;
(*   %conv7.i139.2.1257 = trunc i32 %shl.i138.2.1256 to i8 *)
split tmp_v_shl_i138_2_1256 v_conv7_i139_2_1257 v_shl_i138_2_1256 8;
vpc v_conv7_i139_2_1257@uint8 v_conv7_i139_2_1257@uint32;
(*   %conv.i127.3.1258 = zext i8 %conv5.i136.2.1254 to i32 *)
cast v_conv_i127_3_1258@uint32 v_conv5_i136_2_1254@uint8;
(*   %and.i128.3.1259 = and i32 %conv.i127.3.1258, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_3_1259 v_conv_i127_3_1258 (0x1)@uint32;
(*   %conv1.i129.3.1260 = zext i8 %conv7.i139.2.1257 to i32 *)
cast v_conv1_i129_3_1260@uint32 v_conv7_i139_2_1257@uint8;
(*   %mul.i130.3.1261 = mul nsw i32 %and.i128.3.1259, %conv1.i129.3.1260 *)
mul v_mul_i130_3_1261 v_and_i128_3_1259 v_conv1_i129_3_1260;
(*   %conv2.i131.3.1262 = zext i8 %conv3.i133.2.1251 to i32 *)
cast v_conv2_i131_3_1262@uint32 v_conv3_i133_2_1251@uint8;
(*   %xor.i132.3.1263 = xor i32 %conv2.i131.3.1262, %mul.i130.3.1261 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_3_1263 v_conv2_i131_3_1262 v_mul_i130_3_1261;
(*   %conv3.i133.3.1264 = trunc i32 %xor.i132.3.1263 to i8 *)
split tmp_v_xor_i132_3_1263 v_conv3_i133_3_1264 v_xor_i132_3_1263 8;
vpc v_conv3_i133_3_1264@uint8 v_conv3_i133_3_1264@uint32;
(*   %conv4.i134.3.1265 = zext i8 %conv5.i136.2.1254 to i32 *)
cast v_conv4_i134_3_1265@uint32 v_conv5_i136_2_1254@uint8;
(*   %shr.i135.3.1266 = ashr i32 %conv4.i134.3.1265, 1 *)
(* You may need to modify here *)
split v_shr_i135_3_1266 tmp_to_be_used v_conv4_i134_3_1265 1;
(*   %conv5.i136.3.1267 = trunc i32 %shr.i135.3.1266 to i8 *)
split tmp_v_shr_i135_3_1266 v_conv5_i136_3_1267 v_shr_i135_3_1266 8;
vpc v_conv5_i136_3_1267@uint8 v_conv5_i136_3_1267@uint32;
(*   %conv6.i137.3.1268 = zext i8 %conv7.i139.2.1257 to i32 *)
cast v_conv6_i137_3_1268@uint32 v_conv7_i139_2_1257@uint8;
(*   %shl.i138.3.1269 = shl i32 %conv6.i137.3.1268, 1 *)
shls discard_24 v_shl_i138_3_1269 v_conv6_i137_3_1268 1;
(*   %conv7.i139.3.1270 = trunc i32 %shl.i138.3.1269 to i8 *)
split tmp_v_shl_i138_3_1269 v_conv7_i139_3_1270 v_shl_i138_3_1269 8;
vpc v_conv7_i139_3_1270@uint8 v_conv7_i139_3_1270@uint32;
(*   %conv.i127.4.1271 = zext i8 %conv5.i136.3.1267 to i32 *)
cast v_conv_i127_4_1271@uint32 v_conv5_i136_3_1267@uint8;
(*   %and.i128.4.1272 = and i32 %conv.i127.4.1271, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_4_1272 v_conv_i127_4_1271 (0x1)@uint32;
(*   %conv1.i129.4.1273 = zext i8 %conv7.i139.3.1270 to i32 *)
cast v_conv1_i129_4_1273@uint32 v_conv7_i139_3_1270@uint8;
(*   %mul.i130.4.1274 = mul nsw i32 %and.i128.4.1272, %conv1.i129.4.1273 *)
mul v_mul_i130_4_1274 v_and_i128_4_1272 v_conv1_i129_4_1273;
(*   %conv2.i131.4.1275 = zext i8 %conv3.i133.3.1264 to i32 *)
cast v_conv2_i131_4_1275@uint32 v_conv3_i133_3_1264@uint8;
(*   %xor.i132.4.1276 = xor i32 %conv2.i131.4.1275, %mul.i130.4.1274 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_4_1276 v_conv2_i131_4_1275 v_mul_i130_4_1274;
(*   %conv3.i133.4.1277 = trunc i32 %xor.i132.4.1276 to i8 *)
split tmp_v_xor_i132_4_1276 v_conv3_i133_4_1277 v_xor_i132_4_1276 8;
vpc v_conv3_i133_4_1277@uint8 v_conv3_i133_4_1277@uint32;
(*   %conv4.i134.4.1278 = zext i8 %conv5.i136.3.1267 to i32 *)
cast v_conv4_i134_4_1278@uint32 v_conv5_i136_3_1267@uint8;
(*   %shr.i135.4.1279 = ashr i32 %conv4.i134.4.1278, 1 *)
(* You may need to modify here *)
split v_shr_i135_4_1279 tmp_to_be_used v_conv4_i134_4_1278 1;
(*   %conv5.i136.4.1280 = trunc i32 %shr.i135.4.1279 to i8 *)
split tmp_v_shr_i135_4_1279 v_conv5_i136_4_1280 v_shr_i135_4_1279 8;
vpc v_conv5_i136_4_1280@uint8 v_conv5_i136_4_1280@uint32;
(*   %conv6.i137.4.1281 = zext i8 %conv7.i139.3.1270 to i32 *)
cast v_conv6_i137_4_1281@uint32 v_conv7_i139_3_1270@uint8;
(*   %shl.i138.4.1282 = shl i32 %conv6.i137.4.1281, 1 *)
shls discard_25 v_shl_i138_4_1282 v_conv6_i137_4_1281 1;
(*   %conv7.i139.4.1283 = trunc i32 %shl.i138.4.1282 to i8 *)
split tmp_v_shl_i138_4_1282 v_conv7_i139_4_1283 v_shl_i138_4_1282 8;
vpc v_conv7_i139_4_1283@uint8 v_conv7_i139_4_1283@uint32;
(*   %conv.i127.5.1284 = zext i8 %conv5.i136.4.1280 to i32 *)
cast v_conv_i127_5_1284@uint32 v_conv5_i136_4_1280@uint8;
(*   %and.i128.5.1285 = and i32 %conv.i127.5.1284, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_5_1285 v_conv_i127_5_1284 (0x1)@uint32;
(*   %conv1.i129.5.1286 = zext i8 %conv7.i139.4.1283 to i32 *)
cast v_conv1_i129_5_1286@uint32 v_conv7_i139_4_1283@uint8;
(*   %mul.i130.5.1287 = mul nsw i32 %and.i128.5.1285, %conv1.i129.5.1286 *)
mul v_mul_i130_5_1287 v_and_i128_5_1285 v_conv1_i129_5_1286;
(*   %conv2.i131.5.1288 = zext i8 %conv3.i133.4.1277 to i32 *)
cast v_conv2_i131_5_1288@uint32 v_conv3_i133_4_1277@uint8;
(*   %xor.i132.5.1289 = xor i32 %conv2.i131.5.1288, %mul.i130.5.1287 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_5_1289 v_conv2_i131_5_1288 v_mul_i130_5_1287;
(*   %conv3.i133.5.1290 = trunc i32 %xor.i132.5.1289 to i8 *)
split tmp_v_xor_i132_5_1289 v_conv3_i133_5_1290 v_xor_i132_5_1289 8;
vpc v_conv3_i133_5_1290@uint8 v_conv3_i133_5_1290@uint32;
(*   %conv4.i134.5.1291 = zext i8 %conv5.i136.4.1280 to i32 *)
cast v_conv4_i134_5_1291@uint32 v_conv5_i136_4_1280@uint8;
(*   %shr.i135.5.1292 = ashr i32 %conv4.i134.5.1291, 1 *)
(* You may need to modify here *)
split v_shr_i135_5_1292 tmp_to_be_used v_conv4_i134_5_1291 1;
(*   %conv5.i136.5.1293 = trunc i32 %shr.i135.5.1292 to i8 *)
split tmp_v_shr_i135_5_1292 v_conv5_i136_5_1293 v_shr_i135_5_1292 8;
vpc v_conv5_i136_5_1293@uint8 v_conv5_i136_5_1293@uint32;
(*   %conv6.i137.5.1294 = zext i8 %conv7.i139.4.1283 to i32 *)
cast v_conv6_i137_5_1294@uint32 v_conv7_i139_4_1283@uint8;
(*   %shl.i138.5.1295 = shl i32 %conv6.i137.5.1294, 1 *)
shls discard_26 v_shl_i138_5_1295 v_conv6_i137_5_1294 1;
(*   %conv7.i139.5.1296 = trunc i32 %shl.i138.5.1295 to i8 *)
split tmp_v_shl_i138_5_1295 v_conv7_i139_5_1296 v_shl_i138_5_1295 8;
vpc v_conv7_i139_5_1296@uint8 v_conv7_i139_5_1296@uint32;
(*   %conv.i127.6.1297 = zext i8 %conv5.i136.5.1293 to i32 *)
cast v_conv_i127_6_1297@uint32 v_conv5_i136_5_1293@uint8;
(*   %and.i128.6.1298 = and i32 %conv.i127.6.1297, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_6_1298 v_conv_i127_6_1297 (0x1)@uint32;
(*   %conv1.i129.6.1299 = zext i8 %conv7.i139.5.1296 to i32 *)
cast v_conv1_i129_6_1299@uint32 v_conv7_i139_5_1296@uint8;
(*   %mul.i130.6.1300 = mul nsw i32 %and.i128.6.1298, %conv1.i129.6.1299 *)
mul v_mul_i130_6_1300 v_and_i128_6_1298 v_conv1_i129_6_1299;
(*   %conv2.i131.6.1301 = zext i8 %conv3.i133.5.1290 to i32 *)
cast v_conv2_i131_6_1301@uint32 v_conv3_i133_5_1290@uint8;
(*   %xor.i132.6.1302 = xor i32 %conv2.i131.6.1301, %mul.i130.6.1300 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_6_1302 v_conv2_i131_6_1301 v_mul_i130_6_1300;
(*   %conv3.i133.6.1303 = trunc i32 %xor.i132.6.1302 to i8 *)
split tmp_v_xor_i132_6_1302 v_conv3_i133_6_1303 v_xor_i132_6_1302 8;
vpc v_conv3_i133_6_1303@uint8 v_conv3_i133_6_1303@uint32;
(*   %conv4.i134.6.1304 = zext i8 %conv5.i136.5.1293 to i32 *)
cast v_conv4_i134_6_1304@uint32 v_conv5_i136_5_1293@uint8;
(*   %shr.i135.6.1305 = ashr i32 %conv4.i134.6.1304, 1 *)
(* You may need to modify here *)
split v_shr_i135_6_1305 tmp_to_be_used v_conv4_i134_6_1304 1;
(*   %conv5.i136.6.1306 = trunc i32 %shr.i135.6.1305 to i8 *)
split tmp_v_shr_i135_6_1305 v_conv5_i136_6_1306 v_shr_i135_6_1305 8;
vpc v_conv5_i136_6_1306@uint8 v_conv5_i136_6_1306@uint32;
(*   %conv6.i137.6.1307 = zext i8 %conv7.i139.5.1296 to i32 *)
cast v_conv6_i137_6_1307@uint32 v_conv7_i139_5_1296@uint8;
(*   %shl.i138.6.1308 = shl i32 %conv6.i137.6.1307, 1 *)
shls discard_27 v_shl_i138_6_1308 v_conv6_i137_6_1307 1;
(*   %conv7.i139.6.1309 = trunc i32 %shl.i138.6.1308 to i8 *)
split tmp_v_shl_i138_6_1308 v_conv7_i139_6_1309 v_shl_i138_6_1308 8;
vpc v_conv7_i139_6_1309@uint8 v_conv7_i139_6_1309@uint32;
(*   %conv.i127.7.1310 = zext i8 %conv5.i136.6.1306 to i32 *)
cast v_conv_i127_7_1310@uint32 v_conv5_i136_6_1306@uint8;
(*   %and.i128.7.1311 = and i32 %conv.i127.7.1310, 1 *)
(* You may need to modify here *)
and uint32 v_and_i128_7_1311 v_conv_i127_7_1310 (0x1)@uint32;
(*   %conv1.i129.7.1312 = zext i8 %conv7.i139.6.1309 to i32 *)
cast v_conv1_i129_7_1312@uint32 v_conv7_i139_6_1309@uint8;
(*   %mul.i130.7.1313 = mul nsw i32 %and.i128.7.1311, %conv1.i129.7.1312 *)
mul v_mul_i130_7_1313 v_and_i128_7_1311 v_conv1_i129_7_1312;
(*   %conv2.i131.7.1314 = zext i8 %conv3.i133.6.1303 to i32 *)
cast v_conv2_i131_7_1314@uint32 v_conv3_i133_6_1303@uint8;
(*   %xor.i132.7.1315 = xor i32 %conv2.i131.7.1314, %mul.i130.7.1313 *)
(* You may need to modify here *)
xor uint32 v_xor_i132_7_1315 v_conv2_i131_7_1314 v_mul_i130_7_1313;
(*   %conv3.i133.7.1316 = trunc i32 %xor.i132.7.1315 to i8 *)
split tmp_v_xor_i132_7_1315 v_conv3_i133_7_1316 v_xor_i132_7_1315 8;
vpc v_conv3_i133_7_1316@uint8 v_conv3_i133_7_1316@uint32;
(*   %arrayidx56.1320 = getelementptr inbounds [4 x i8], [4 x i8]* %p1, i64 0, i64 2 *)
(*   store i8 %conv3.i133.7.1316, i8* %arrayidx56.1320, align 1 *)
mov p1_2 v_conv3_i133_7_1316;
(*   %arrayidx60.1322 = getelementptr inbounds [4 x i8], [4 x i8]* %p0, i64 0, i64 2 *)
(*   %15 = load i8, i8* %arrayidx60.1322, align 1 *)
mov v15 p0_2;
(*   %conv61.1323 = zext i8 %15 to i32 *)
cast v_conv61_1323@uint32 v15@uint8;
(*   %arrayidx65.1325 = getelementptr inbounds [4 x i8], [4 x i8]* %p1, i64 0, i64 2 *)
(*   %16 = load i8, i8* %arrayidx65.1325, align 1 *)
mov v16 p1_2;
(*   %conv66.1326 = zext i8 %16 to i32 *)
cast v_conv66_1326@uint32 v16@uint8;
(*   %xor67.1327 = xor i32 %conv61.1323, %conv66.1326 *)
(* You may need to modify here *)
xor uint32 v_xor67_1327 v_conv61_1323 v_conv66_1326;
(*   %conv68.1328 = trunc i32 %xor67.1327 to i8 *)
split tmp_v_xor67_1327 v_conv68_1328 v_xor67_1327 8;
vpc v_conv68_1328@uint8 v_conv68_1328@uint32;
(*   %arrayidx72.1330 = getelementptr inbounds [4 x i8], [4 x i8]* %z, i64 0, i64 2 *)
(*   store i8 %conv68.1328, i8* %arrayidx72.1330, align 1 *)
mov z_2 v_conv68_1328;
(*   %17 = load i8, i8* %a, align 1 *)
mov v17 a_0;
(*   %18 = load i8, i8* %b, align 1 *)
mov v18 b_0;
(*   %conv.i188 = zext i8 %18 to i32 *)
cast v_conv_i188@uint32 v18@uint8;
(*   %and.i189 = and i32 %conv.i188, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189 v_conv_i188 (0x1)@uint32;
(*   %conv1.i190 = zext i8 %17 to i32 *)
cast v_conv1_i190@uint32 v17@uint8;
(*   %mul.i191 = mul nsw i32 %and.i189, %conv1.i190 *)
mul v_mul_i191 v_and_i189 v_conv1_i190;
(*   %conv3.i194 = trunc i32 %mul.i191 to i8 *)
split tmp_v_mul_i191 v_conv3_i194 v_mul_i191 8;
vpc v_conv3_i194@uint8 v_conv3_i194@uint32;
(*   %conv4.i195 = zext i8 %18 to i32 *)
cast v_conv4_i195@uint32 v18@uint8;
(*   %shr.i196 = ashr i32 %conv4.i195, 1 *)
(* You may need to modify here *)
split v_shr_i196 tmp_to_be_used v_conv4_i195 1;
(*   %conv5.i197 = trunc i32 %shr.i196 to i8 *)
split tmp_v_shr_i196 v_conv5_i197 v_shr_i196 8;
vpc v_conv5_i197@uint8 v_conv5_i197@uint32;
(*   %conv6.i198 = zext i8 %17 to i32 *)
cast v_conv6_i198@uint32 v17@uint8;
(*   %shl.i199 = shl i32 %conv6.i198, 1 *)
shls discard_28 v_shl_i199 v_conv6_i198 1;
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
shls discard_29 v_shl_i199_1 v_conv6_i198_1 1;
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
shls discard_30 v_shl_i199_2 v_conv6_i198_2 1;
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
shls discard_31 v_shl_i199_3 v_conv6_i198_3 1;
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
shls discard_32 v_shl_i199_4 v_conv6_i198_4 1;
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
shls discard_33 v_shl_i199_5 v_conv6_i198_5 1;
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
shls discard_34 v_shl_i199_6 v_conv6_i198_6 1;
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
(*   %scevgep46.1 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 1 *)
(*   %19 = load i8, i8* %scevgep46.1, align 1 *)
mov v19 z_1;
(*   %conv103.1 = zext i8 %19 to i32 *)
cast v_conv103_1@uint32 v19@uint8;
(*   %20 = load i8, i8* %c, align 1 *)
mov v20 c_0;
(*   %conv106.1 = zext i8 %20 to i32 *)
cast v_conv106_1@uint32 v20@uint8;
(*   %xor107.1 = xor i32 %conv106.1, %conv103.1 *)
(* You may need to modify here *)
xor uint32 v_xor107_1 v_conv106_1 v_conv103_1;
(*   %conv108.1 = trunc i32 %xor107.1 to i8 *)
split tmp_v_xor107_1 v_conv108_1 v_xor107_1 8;
vpc v_conv108_1@uint8 v_conv108_1@uint32;
(*   store i8 %conv108.1, i8* %c, align 1 *)
mov c_0 v_conv108_1;
(*   %scevgep45 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 2 *)
(*   %21 = bitcast i8* %scevgep45 to [4 x i8]* *)
(*   %arrayidx85.1 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %22 = load i8, i8* %arrayidx85.1, align 1 *)
mov v22 a_1;
(*   %arrayidx87.1 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %23 = load i8, i8* %arrayidx87.1, align 1 *)
mov v23 b_1;
(*   %conv.i188.160 = zext i8 %23 to i32 *)
cast v_conv_i188_160@uint32 v23@uint8;
(*   %and.i189.161 = and i32 %conv.i188.160, 1 *)
(* You may need to modify here *)
and uint32 v_and_i189_161 v_conv_i188_160 (0x1)@uint32;
(*   %conv1.i190.162 = zext i8 %22 to i32 *)
cast v_conv1_i190_162@uint32 v22@uint8;
(*   %mul.i191.163 = mul nsw i32 %and.i189.161, %conv1.i190.162 *)
mul v_mul_i191_163 v_and_i189_161 v_conv1_i190_162;
(*   %conv3.i194.164 = trunc i32 %mul.i191.163 to i8 *)
split tmp_v_mul_i191_163 v_conv3_i194_164 v_mul_i191_163 8;
vpc v_conv3_i194_164@uint8 v_conv3_i194_164@uint32;
(*   %conv4.i195.165 = zext i8 %23 to i32 *)
cast v_conv4_i195_165@uint32 v23@uint8;
(*   %shr.i196.166 = ashr i32 %conv4.i195.165, 1 *)
(* You may need to modify here *)
split v_shr_i196_166 tmp_to_be_used v_conv4_i195_165 1;
(*   %conv5.i197.167 = trunc i32 %shr.i196.166 to i8 *)
split tmp_v_shr_i196_166 v_conv5_i197_167 v_shr_i196_166 8;
vpc v_conv5_i197_167@uint8 v_conv5_i197_167@uint32;
(*   %conv6.i198.168 = zext i8 %22 to i32 *)
cast v_conv6_i198_168@uint32 v22@uint8;
(*   %shl.i199.169 = shl i32 %conv6.i198.168, 1 *)
shls discard_35 v_shl_i199_169 v_conv6_i198_168 1;
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
shls discard_36 v_shl_i199_1_1 v_conv6_i198_1_1 1;
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
shls discard_37 v_shl_i199_2_1 v_conv6_i198_2_1 1;
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
shls discard_38 v_shl_i199_3_1 v_conv6_i198_3_1 1;
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
shls discard_39 v_shl_i199_4_1 v_conv6_i198_4_1 1;
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
shls discard_40 v_shl_i199_5_1 v_conv6_i198_5_1 1;
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
shls discard_41 v_shl_i199_6_1 v_conv6_i198_6_1 1;
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
(*   %scevgep46.173 = getelementptr [4 x i8], [4 x i8]* %21, i64 0, i64 0 *)
(*   %24 = load i8, i8* %scevgep46.173, align 1 *)
mov v24 z_2;
(*   %conv103.174 = zext i8 %24 to i32 *)
cast v_conv103_174@uint32 v24@uint8;
(*   %25 = load i8, i8* %arrayidx105.1, align 1 *)
mov v25 c_1;
(*   %conv106.175 = zext i8 %25 to i32 *)
cast v_conv106_175@uint32 v25@uint8;
(*   %xor107.176 = xor i32 %conv106.175, %conv103.174 *)
(* You may need to modify here *)
xor uint32 v_xor107_176 v_conv106_175 v_conv103_174;
(*   %conv108.177 = trunc i32 %xor107.176 to i8 *)
split tmp_v_xor107_176 v_conv108_177 v_xor107_176 8;
vpc v_conv108_177@uint8 v_conv108_177@uint32;
(*   store i8 %conv108.177, i8* %arrayidx105.1, align 1 *)
mov c_1 v_conv108_177;
(*   %26 = load i8, i8* %a, align 1 *)
mov v26 a_0;
(*   %scevgep36.1 = getelementptr i8, i8* %a, i64 1 *)
(*   %27 = load i8, i8* %scevgep36.1, align 1 *)
mov v27 a_1;
(*   %conv.i.i214.1 = zext i8 %27 to i32 *)
cast v_conv_i_i214_1@uint32 v27@uint8;
(*   %conv1.i.i215.1 = zext i8 %26 to i32 *)
cast v_conv1_i_i215_1@uint32 v26@uint8;
(*   %xor.i.i216.1 = xor i32 %conv1.i.i215.1, %conv.i.i214.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i216_1 v_conv1_i_i215_1 v_conv_i_i214_1;
(*   %conv2.i.i217.1 = trunc i32 %xor.i.i216.1 to i8 *)
split tmp_v_xor_i_i216_1 v_conv2_i_i217_1 v_xor_i_i216_1 8;
vpc v_conv2_i_i217_1@uint8 v_conv2_i_i217_1@uint32;
(*   %28 = load i8, i8* %b, align 1 *)
mov v28 b_0;
(*   %scevgep32.1 = getelementptr i8, i8* %b, i64 1 *)
(*   %29 = load i8, i8* %scevgep32.1, align 1 *)
mov v29 b_1;
(*   %conv.i.i175.1 = zext i8 %29 to i32 *)
cast v_conv_i_i175_1@uint32 v29@uint8;
(*   %conv1.i.i176.1 = zext i8 %28 to i32 *)
cast v_conv1_i_i176_1@uint32 v28@uint8;
(*   %xor.i.i177.1 = xor i32 %conv1.i.i176.1, %conv.i.i175.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i177_1 v_conv1_i_i176_1 v_conv_i_i175_1;
(*   %conv2.i.i178.1 = trunc i32 %xor.i.i177.1 to i8 *)
split tmp_v_xor_i_i177_1 v_conv2_i_i178_1 v_xor_i_i177_1 8;
vpc v_conv2_i_i178_1@uint8 v_conv2_i_i178_1@uint32;
(*   %conv.i149 = zext i8 %conv2.i.i178.1 to i32 *)
cast v_conv_i149@uint32 v_conv2_i_i178_1@uint8;
(*   %and.i150 = and i32 %conv.i149, 1 *)
(* You may need to modify here *)
and uint32 v_and_i150 v_conv_i149 (0x1)@uint32;
(*   %conv1.i151 = zext i8 %conv2.i.i217.1 to i32 *)
cast v_conv1_i151@uint32 v_conv2_i_i217_1@uint8;
(*   %mul.i152 = mul nsw i32 %and.i150, %conv1.i151 *)
mul v_mul_i152 v_and_i150 v_conv1_i151;
(*   %conv3.i155 = trunc i32 %mul.i152 to i8 *)
split tmp_v_mul_i152 v_conv3_i155 v_mul_i152 8;
vpc v_conv3_i155@uint8 v_conv3_i155@uint32;
(*   %conv4.i156 = zext i8 %conv2.i.i178.1 to i32 *)
cast v_conv4_i156@uint32 v_conv2_i_i178_1@uint8;
(*   %shr.i157 = ashr i32 %conv4.i156, 1 *)
(* You may need to modify here *)
split v_shr_i157 tmp_to_be_used v_conv4_i156 1;
(*   %conv5.i158 = trunc i32 %shr.i157 to i8 *)
split tmp_v_shr_i157 v_conv5_i158 v_shr_i157 8;
vpc v_conv5_i158@uint8 v_conv5_i158@uint32;
(*   %conv6.i159 = zext i8 %conv2.i.i217.1 to i32 *)
cast v_conv6_i159@uint32 v_conv2_i_i217_1@uint8;
(*   %shl.i160 = shl i32 %conv6.i159, 1 *)
shls discard_42 v_shl_i160 v_conv6_i159 1;
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
shls discard_43 v_shl_i160_1 v_conv6_i159_1 1;
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
shls discard_44 v_shl_i160_2 v_conv6_i159_2 1;
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
shls discard_45 v_shl_i160_3 v_conv6_i159_3 1;
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
shls discard_46 v_shl_i160_4 v_conv6_i159_4 1;
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
shls discard_47 v_shl_i160_5 v_conv6_i159_5 1;
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
shls discard_48 v_shl_i160_6 v_conv6_i159_6 1;
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
(*   %30 = load i8, i8* %c, align 1 *)
mov v30 c_0;
(*   %scevgep.1 = getelementptr i8, i8* %c, i64 1 *)
(*   %31 = load i8, i8* %scevgep.1, align 1 *)
mov v31 c_1;
(*   %conv.i.i.1 = zext i8 %31 to i32 *)
cast v_conv_i_i_1@uint32 v31@uint8;
(*   %conv1.i.i.1 = zext i8 %30 to i32 *)
cast v_conv1_i_i_1@uint32 v30@uint8;
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

