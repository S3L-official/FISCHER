proc main (uint8 a_0, uint8 a_1, uint8 b_0, uint8 b_1, uint8 r_0) =
{
  true
  &&
  true
}



(*   %ab1 = alloca [2 x i8], align 1 *)
(*   %z = alloca [2 x i8], align 1 *)
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
(*   store i8 %conv3.i.i.7, i8* %c, align 1 *)
mov c_0 v_conv3_i_i_7;
(*   %arrayidx.i.1 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %2 = load i8, i8* %arrayidx.i.1, align 1 *)
mov v2 a_1;
(*   %arrayidx4.i.1 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %3 = load i8, i8* %arrayidx4.i.1, align 1 *)
mov v3 b_1;
(*   %conv.i.i.1173 = zext i8 %3 to i32 *)
cast v_conv_i_i_1173@uint32 v3@uint8;
(*   %and.i.i.1174 = and i32 %conv.i.i.1173, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_1174 v_conv_i_i_1173 (0x1)@uint32;
(*   %conv1.i.i.1175 = zext i8 %2 to i32 *)
cast v_conv1_i_i_1175@uint32 v2@uint8;
(*   %mul.i.i.1176 = mul nsw i32 %and.i.i.1174, %conv1.i.i.1175 *)
mul v_mul_i_i_1176 v_and_i_i_1174 v_conv1_i_i_1175;
(*   %conv3.i.i.1177 = trunc i32 %mul.i.i.1176 to i8 *)
split tmp_v_mul_i_i_1176 v_conv3_i_i_1177 v_mul_i_i_1176 8;
vpc v_conv3_i_i_1177@uint8 v_conv3_i_i_1177@uint32;
(*   %conv4.i.i.1178 = zext i8 %3 to i32 *)
cast v_conv4_i_i_1178@uint32 v3@uint8;
(*   %shr.i.i.1179 = ashr i32 %conv4.i.i.1178, 1 *)
(* You may need to modify here *)
split v_shr_i_i_1179 tmp_to_be_used v_conv4_i_i_1178 1;
(*   %conv5.i.i.1180 = trunc i32 %shr.i.i.1179 to i8 *)
split tmp_v_shr_i_i_1179 v_conv5_i_i_1180 v_shr_i_i_1179 8;
vpc v_conv5_i_i_1180@uint8 v_conv5_i_i_1180@uint32;
(*   %conv6.i.i.1181 = zext i8 %2 to i32 *)
cast v_conv6_i_i_1181@uint32 v2@uint8;
(*   %shl.i.i.1182 = shl i32 %conv6.i.i.1181, 1 *)
shls discard_7 v_shl_i_i_1182 v_conv6_i_i_1181 1;
(*   %conv7.i.i.1183 = trunc i32 %shl.i.i.1182 to i8 *)
split tmp_v_shl_i_i_1182 v_conv7_i_i_1183 v_shl_i_i_1182 8;
vpc v_conv7_i_i_1183@uint8 v_conv7_i_i_1183@uint32;
(*   %conv.i.i.1.1 = zext i8 %conv5.i.i.1180 to i32 *)
cast v_conv_i_i_1_1@uint32 v_conv5_i_i_1180@uint8;
(*   %and.i.i.1.1 = and i32 %conv.i.i.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i_1_1 v_conv_i_i_1_1 (0x1)@uint32;
(*   %conv1.i.i.1.1 = zext i8 %conv7.i.i.1183 to i32 *)
cast v_conv1_i_i_1_1@uint32 v_conv7_i_i_1183@uint8;
(*   %mul.i.i.1.1 = mul nsw i32 %and.i.i.1.1, %conv1.i.i.1.1 *)
mul v_mul_i_i_1_1 v_and_i_i_1_1 v_conv1_i_i_1_1;
(*   %conv2.i.i.1.1 = zext i8 %conv3.i.i.1177 to i32 *)
cast v_conv2_i_i_1_1@uint32 v_conv3_i_i_1177@uint8;
(*   %xor.i.i.1.1 = xor i32 %conv2.i.i.1.1, %mul.i.i.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i_1_1 v_conv2_i_i_1_1 v_mul_i_i_1_1;
(*   %conv3.i.i.1.1 = trunc i32 %xor.i.i.1.1 to i8 *)
split tmp_v_xor_i_i_1_1 v_conv3_i_i_1_1 v_xor_i_i_1_1 8;
vpc v_conv3_i_i_1_1@uint8 v_conv3_i_i_1_1@uint32;
(*   %conv4.i.i.1.1 = zext i8 %conv5.i.i.1180 to i32 *)
cast v_conv4_i_i_1_1@uint32 v_conv5_i_i_1180@uint8;
(*   %shr.i.i.1.1 = ashr i32 %conv4.i.i.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i_1_1 tmp_to_be_used v_conv4_i_i_1_1 1;
(*   %conv5.i.i.1.1 = trunc i32 %shr.i.i.1.1 to i8 *)
split tmp_v_shr_i_i_1_1 v_conv5_i_i_1_1 v_shr_i_i_1_1 8;
vpc v_conv5_i_i_1_1@uint8 v_conv5_i_i_1_1@uint32;
(*   %conv6.i.i.1.1 = zext i8 %conv7.i.i.1183 to i32 *)
cast v_conv6_i_i_1_1@uint32 v_conv7_i_i_1183@uint8;
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
(*   %arrayidx6.i.1 = getelementptr inbounds i8, i8* %c, i64 1 *)
(*   store i8 %conv3.i.i.7.1, i8* %arrayidx6.i.1, align 1 *)
mov c_1 v_conv3_i_i_7_1;
(*   %4 = load i8, i8* %r, align 1 *)
mov v4 r_0;
(*   %scevgep75 = getelementptr [2 x i8], [2 x i8]* %z, i64 0, i64 0 *)
(*   store i8 %4, i8* %scevgep75, align 1 *)
mov z_0 v4;
(*   %5 = load i8, i8* %r, align 1 *)
mov v5 r_0;
(*   %scevgep75.1 = getelementptr [2 x i8], [2 x i8]* %z, i64 0, i64 1 *)
(*   store i8 %5, i8* %scevgep75.1, align 1 *)
mov z_1 v5;
(*   %arraydecay28 = getelementptr inbounds [2 x i8], [2 x i8]* %ab1, i64 0, i64 0 *)
(*   %6 = load i8, i8* %a, align 1 *)
mov v6 a_0;
(*   %arrayidx4.i281 = getelementptr inbounds i8, i8* %b, i64 1 *)
(*   %7 = load i8, i8* %arrayidx4.i281, align 1 *)
mov v7 b_1;
(*   %conv.i.i285 = zext i8 %7 to i32 *)
cast v_conv_i_i285@uint32 v7@uint8;
(*   %and.i.i286 = and i32 %conv.i.i285, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i286 v_conv_i_i285 (0x1)@uint32;
(*   %conv1.i.i287 = zext i8 %6 to i32 *)
cast v_conv1_i_i287@uint32 v6@uint8;
(*   %mul.i.i288 = mul nsw i32 %and.i.i286, %conv1.i.i287 *)
mul v_mul_i_i288 v_and_i_i286 v_conv1_i_i287;
(*   %conv3.i.i291 = trunc i32 %mul.i.i288 to i8 *)
split tmp_v_mul_i_i288 v_conv3_i_i291 v_mul_i_i288 8;
vpc v_conv3_i_i291@uint8 v_conv3_i_i291@uint32;
(*   %conv4.i.i292 = zext i8 %7 to i32 *)
cast v_conv4_i_i292@uint32 v7@uint8;
(*   %shr.i.i293 = ashr i32 %conv4.i.i292, 1 *)
(* You may need to modify here *)
split v_shr_i_i293 tmp_to_be_used v_conv4_i_i292 1;
(*   %conv5.i.i294 = trunc i32 %shr.i.i293 to i8 *)
split tmp_v_shr_i_i293 v_conv5_i_i294 v_shr_i_i293 8;
vpc v_conv5_i_i294@uint8 v_conv5_i_i294@uint32;
(*   %conv6.i.i295 = zext i8 %6 to i32 *)
cast v_conv6_i_i295@uint32 v6@uint8;
(*   %shl.i.i296 = shl i32 %conv6.i.i295, 1 *)
shls discard_14 v_shl_i_i296 v_conv6_i_i295 1;
(*   %conv7.i.i297 = trunc i32 %shl.i.i296 to i8 *)
split tmp_v_shl_i_i296 v_conv7_i_i297 v_shl_i_i296 8;
vpc v_conv7_i_i297@uint8 v_conv7_i_i297@uint32;
(*   %conv.i.i285.1 = zext i8 %conv5.i.i294 to i32 *)
cast v_conv_i_i285_1@uint32 v_conv5_i_i294@uint8;
(*   %and.i.i286.1 = and i32 %conv.i.i285.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i286_1 v_conv_i_i285_1 (0x1)@uint32;
(*   %conv1.i.i287.1 = zext i8 %conv7.i.i297 to i32 *)
cast v_conv1_i_i287_1@uint32 v_conv7_i_i297@uint8;
(*   %mul.i.i288.1 = mul nsw i32 %and.i.i286.1, %conv1.i.i287.1 *)
mul v_mul_i_i288_1 v_and_i_i286_1 v_conv1_i_i287_1;
(*   %conv2.i.i289.1 = zext i8 %conv3.i.i291 to i32 *)
cast v_conv2_i_i289_1@uint32 v_conv3_i_i291@uint8;
(*   %xor.i.i290.1 = xor i32 %conv2.i.i289.1, %mul.i.i288.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i290_1 v_conv2_i_i289_1 v_mul_i_i288_1;
(*   %conv3.i.i291.1 = trunc i32 %xor.i.i290.1 to i8 *)
split tmp_v_xor_i_i290_1 v_conv3_i_i291_1 v_xor_i_i290_1 8;
vpc v_conv3_i_i291_1@uint8 v_conv3_i_i291_1@uint32;
(*   %conv4.i.i292.1 = zext i8 %conv5.i.i294 to i32 *)
cast v_conv4_i_i292_1@uint32 v_conv5_i_i294@uint8;
(*   %shr.i.i293.1 = ashr i32 %conv4.i.i292.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i293_1 tmp_to_be_used v_conv4_i_i292_1 1;
(*   %conv5.i.i294.1 = trunc i32 %shr.i.i293.1 to i8 *)
split tmp_v_shr_i_i293_1 v_conv5_i_i294_1 v_shr_i_i293_1 8;
vpc v_conv5_i_i294_1@uint8 v_conv5_i_i294_1@uint32;
(*   %conv6.i.i295.1 = zext i8 %conv7.i.i297 to i32 *)
cast v_conv6_i_i295_1@uint32 v_conv7_i_i297@uint8;
(*   %shl.i.i296.1 = shl i32 %conv6.i.i295.1, 1 *)
shls discard_15 v_shl_i_i296_1 v_conv6_i_i295_1 1;
(*   %conv7.i.i297.1 = trunc i32 %shl.i.i296.1 to i8 *)
split tmp_v_shl_i_i296_1 v_conv7_i_i297_1 v_shl_i_i296_1 8;
vpc v_conv7_i_i297_1@uint8 v_conv7_i_i297_1@uint32;
(*   %conv.i.i285.2 = zext i8 %conv5.i.i294.1 to i32 *)
cast v_conv_i_i285_2@uint32 v_conv5_i_i294_1@uint8;
(*   %and.i.i286.2 = and i32 %conv.i.i285.2, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i286_2 v_conv_i_i285_2 (0x1)@uint32;
(*   %conv1.i.i287.2 = zext i8 %conv7.i.i297.1 to i32 *)
cast v_conv1_i_i287_2@uint32 v_conv7_i_i297_1@uint8;
(*   %mul.i.i288.2 = mul nsw i32 %and.i.i286.2, %conv1.i.i287.2 *)
mul v_mul_i_i288_2 v_and_i_i286_2 v_conv1_i_i287_2;
(*   %conv2.i.i289.2 = zext i8 %conv3.i.i291.1 to i32 *)
cast v_conv2_i_i289_2@uint32 v_conv3_i_i291_1@uint8;
(*   %xor.i.i290.2 = xor i32 %conv2.i.i289.2, %mul.i.i288.2 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i290_2 v_conv2_i_i289_2 v_mul_i_i288_2;
(*   %conv3.i.i291.2 = trunc i32 %xor.i.i290.2 to i8 *)
split tmp_v_xor_i_i290_2 v_conv3_i_i291_2 v_xor_i_i290_2 8;
vpc v_conv3_i_i291_2@uint8 v_conv3_i_i291_2@uint32;
(*   %conv4.i.i292.2 = zext i8 %conv5.i.i294.1 to i32 *)
cast v_conv4_i_i292_2@uint32 v_conv5_i_i294_1@uint8;
(*   %shr.i.i293.2 = ashr i32 %conv4.i.i292.2, 1 *)
(* You may need to modify here *)
split v_shr_i_i293_2 tmp_to_be_used v_conv4_i_i292_2 1;
(*   %conv5.i.i294.2 = trunc i32 %shr.i.i293.2 to i8 *)
split tmp_v_shr_i_i293_2 v_conv5_i_i294_2 v_shr_i_i293_2 8;
vpc v_conv5_i_i294_2@uint8 v_conv5_i_i294_2@uint32;
(*   %conv6.i.i295.2 = zext i8 %conv7.i.i297.1 to i32 *)
cast v_conv6_i_i295_2@uint32 v_conv7_i_i297_1@uint8;
(*   %shl.i.i296.2 = shl i32 %conv6.i.i295.2, 1 *)
shls discard_16 v_shl_i_i296_2 v_conv6_i_i295_2 1;
(*   %conv7.i.i297.2 = trunc i32 %shl.i.i296.2 to i8 *)
split tmp_v_shl_i_i296_2 v_conv7_i_i297_2 v_shl_i_i296_2 8;
vpc v_conv7_i_i297_2@uint8 v_conv7_i_i297_2@uint32;
(*   %conv.i.i285.3 = zext i8 %conv5.i.i294.2 to i32 *)
cast v_conv_i_i285_3@uint32 v_conv5_i_i294_2@uint8;
(*   %and.i.i286.3 = and i32 %conv.i.i285.3, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i286_3 v_conv_i_i285_3 (0x1)@uint32;
(*   %conv1.i.i287.3 = zext i8 %conv7.i.i297.2 to i32 *)
cast v_conv1_i_i287_3@uint32 v_conv7_i_i297_2@uint8;
(*   %mul.i.i288.3 = mul nsw i32 %and.i.i286.3, %conv1.i.i287.3 *)
mul v_mul_i_i288_3 v_and_i_i286_3 v_conv1_i_i287_3;
(*   %conv2.i.i289.3 = zext i8 %conv3.i.i291.2 to i32 *)
cast v_conv2_i_i289_3@uint32 v_conv3_i_i291_2@uint8;
(*   %xor.i.i290.3 = xor i32 %conv2.i.i289.3, %mul.i.i288.3 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i290_3 v_conv2_i_i289_3 v_mul_i_i288_3;
(*   %conv3.i.i291.3 = trunc i32 %xor.i.i290.3 to i8 *)
split tmp_v_xor_i_i290_3 v_conv3_i_i291_3 v_xor_i_i290_3 8;
vpc v_conv3_i_i291_3@uint8 v_conv3_i_i291_3@uint32;
(*   %conv4.i.i292.3 = zext i8 %conv5.i.i294.2 to i32 *)
cast v_conv4_i_i292_3@uint32 v_conv5_i_i294_2@uint8;
(*   %shr.i.i293.3 = ashr i32 %conv4.i.i292.3, 1 *)
(* You may need to modify here *)
split v_shr_i_i293_3 tmp_to_be_used v_conv4_i_i292_3 1;
(*   %conv5.i.i294.3 = trunc i32 %shr.i.i293.3 to i8 *)
split tmp_v_shr_i_i293_3 v_conv5_i_i294_3 v_shr_i_i293_3 8;
vpc v_conv5_i_i294_3@uint8 v_conv5_i_i294_3@uint32;
(*   %conv6.i.i295.3 = zext i8 %conv7.i.i297.2 to i32 *)
cast v_conv6_i_i295_3@uint32 v_conv7_i_i297_2@uint8;
(*   %shl.i.i296.3 = shl i32 %conv6.i.i295.3, 1 *)
shls discard_17 v_shl_i_i296_3 v_conv6_i_i295_3 1;
(*   %conv7.i.i297.3 = trunc i32 %shl.i.i296.3 to i8 *)
split tmp_v_shl_i_i296_3 v_conv7_i_i297_3 v_shl_i_i296_3 8;
vpc v_conv7_i_i297_3@uint8 v_conv7_i_i297_3@uint32;
(*   %conv.i.i285.4 = zext i8 %conv5.i.i294.3 to i32 *)
cast v_conv_i_i285_4@uint32 v_conv5_i_i294_3@uint8;
(*   %and.i.i286.4 = and i32 %conv.i.i285.4, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i286_4 v_conv_i_i285_4 (0x1)@uint32;
(*   %conv1.i.i287.4 = zext i8 %conv7.i.i297.3 to i32 *)
cast v_conv1_i_i287_4@uint32 v_conv7_i_i297_3@uint8;
(*   %mul.i.i288.4 = mul nsw i32 %and.i.i286.4, %conv1.i.i287.4 *)
mul v_mul_i_i288_4 v_and_i_i286_4 v_conv1_i_i287_4;
(*   %conv2.i.i289.4 = zext i8 %conv3.i.i291.3 to i32 *)
cast v_conv2_i_i289_4@uint32 v_conv3_i_i291_3@uint8;
(*   %xor.i.i290.4 = xor i32 %conv2.i.i289.4, %mul.i.i288.4 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i290_4 v_conv2_i_i289_4 v_mul_i_i288_4;
(*   %conv3.i.i291.4 = trunc i32 %xor.i.i290.4 to i8 *)
split tmp_v_xor_i_i290_4 v_conv3_i_i291_4 v_xor_i_i290_4 8;
vpc v_conv3_i_i291_4@uint8 v_conv3_i_i291_4@uint32;
(*   %conv4.i.i292.4 = zext i8 %conv5.i.i294.3 to i32 *)
cast v_conv4_i_i292_4@uint32 v_conv5_i_i294_3@uint8;
(*   %shr.i.i293.4 = ashr i32 %conv4.i.i292.4, 1 *)
(* You may need to modify here *)
split v_shr_i_i293_4 tmp_to_be_used v_conv4_i_i292_4 1;
(*   %conv5.i.i294.4 = trunc i32 %shr.i.i293.4 to i8 *)
split tmp_v_shr_i_i293_4 v_conv5_i_i294_4 v_shr_i_i293_4 8;
vpc v_conv5_i_i294_4@uint8 v_conv5_i_i294_4@uint32;
(*   %conv6.i.i295.4 = zext i8 %conv7.i.i297.3 to i32 *)
cast v_conv6_i_i295_4@uint32 v_conv7_i_i297_3@uint8;
(*   %shl.i.i296.4 = shl i32 %conv6.i.i295.4, 1 *)
shls discard_18 v_shl_i_i296_4 v_conv6_i_i295_4 1;
(*   %conv7.i.i297.4 = trunc i32 %shl.i.i296.4 to i8 *)
split tmp_v_shl_i_i296_4 v_conv7_i_i297_4 v_shl_i_i296_4 8;
vpc v_conv7_i_i297_4@uint8 v_conv7_i_i297_4@uint32;
(*   %conv.i.i285.5 = zext i8 %conv5.i.i294.4 to i32 *)
cast v_conv_i_i285_5@uint32 v_conv5_i_i294_4@uint8;
(*   %and.i.i286.5 = and i32 %conv.i.i285.5, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i286_5 v_conv_i_i285_5 (0x1)@uint32;
(*   %conv1.i.i287.5 = zext i8 %conv7.i.i297.4 to i32 *)
cast v_conv1_i_i287_5@uint32 v_conv7_i_i297_4@uint8;
(*   %mul.i.i288.5 = mul nsw i32 %and.i.i286.5, %conv1.i.i287.5 *)
mul v_mul_i_i288_5 v_and_i_i286_5 v_conv1_i_i287_5;
(*   %conv2.i.i289.5 = zext i8 %conv3.i.i291.4 to i32 *)
cast v_conv2_i_i289_5@uint32 v_conv3_i_i291_4@uint8;
(*   %xor.i.i290.5 = xor i32 %conv2.i.i289.5, %mul.i.i288.5 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i290_5 v_conv2_i_i289_5 v_mul_i_i288_5;
(*   %conv3.i.i291.5 = trunc i32 %xor.i.i290.5 to i8 *)
split tmp_v_xor_i_i290_5 v_conv3_i_i291_5 v_xor_i_i290_5 8;
vpc v_conv3_i_i291_5@uint8 v_conv3_i_i291_5@uint32;
(*   %conv4.i.i292.5 = zext i8 %conv5.i.i294.4 to i32 *)
cast v_conv4_i_i292_5@uint32 v_conv5_i_i294_4@uint8;
(*   %shr.i.i293.5 = ashr i32 %conv4.i.i292.5, 1 *)
(* You may need to modify here *)
split v_shr_i_i293_5 tmp_to_be_used v_conv4_i_i292_5 1;
(*   %conv5.i.i294.5 = trunc i32 %shr.i.i293.5 to i8 *)
split tmp_v_shr_i_i293_5 v_conv5_i_i294_5 v_shr_i_i293_5 8;
vpc v_conv5_i_i294_5@uint8 v_conv5_i_i294_5@uint32;
(*   %conv6.i.i295.5 = zext i8 %conv7.i.i297.4 to i32 *)
cast v_conv6_i_i295_5@uint32 v_conv7_i_i297_4@uint8;
(*   %shl.i.i296.5 = shl i32 %conv6.i.i295.5, 1 *)
shls discard_19 v_shl_i_i296_5 v_conv6_i_i295_5 1;
(*   %conv7.i.i297.5 = trunc i32 %shl.i.i296.5 to i8 *)
split tmp_v_shl_i_i296_5 v_conv7_i_i297_5 v_shl_i_i296_5 8;
vpc v_conv7_i_i297_5@uint8 v_conv7_i_i297_5@uint32;
(*   %conv.i.i285.6 = zext i8 %conv5.i.i294.5 to i32 *)
cast v_conv_i_i285_6@uint32 v_conv5_i_i294_5@uint8;
(*   %and.i.i286.6 = and i32 %conv.i.i285.6, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i286_6 v_conv_i_i285_6 (0x1)@uint32;
(*   %conv1.i.i287.6 = zext i8 %conv7.i.i297.5 to i32 *)
cast v_conv1_i_i287_6@uint32 v_conv7_i_i297_5@uint8;
(*   %mul.i.i288.6 = mul nsw i32 %and.i.i286.6, %conv1.i.i287.6 *)
mul v_mul_i_i288_6 v_and_i_i286_6 v_conv1_i_i287_6;
(*   %conv2.i.i289.6 = zext i8 %conv3.i.i291.5 to i32 *)
cast v_conv2_i_i289_6@uint32 v_conv3_i_i291_5@uint8;
(*   %xor.i.i290.6 = xor i32 %conv2.i.i289.6, %mul.i.i288.6 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i290_6 v_conv2_i_i289_6 v_mul_i_i288_6;
(*   %conv3.i.i291.6 = trunc i32 %xor.i.i290.6 to i8 *)
split tmp_v_xor_i_i290_6 v_conv3_i_i291_6 v_xor_i_i290_6 8;
vpc v_conv3_i_i291_6@uint8 v_conv3_i_i291_6@uint32;
(*   %conv4.i.i292.6 = zext i8 %conv5.i.i294.5 to i32 *)
cast v_conv4_i_i292_6@uint32 v_conv5_i_i294_5@uint8;
(*   %shr.i.i293.6 = ashr i32 %conv4.i.i292.6, 1 *)
(* You may need to modify here *)
split v_shr_i_i293_6 tmp_to_be_used v_conv4_i_i292_6 1;
(*   %conv5.i.i294.6 = trunc i32 %shr.i.i293.6 to i8 *)
split tmp_v_shr_i_i293_6 v_conv5_i_i294_6 v_shr_i_i293_6 8;
vpc v_conv5_i_i294_6@uint8 v_conv5_i_i294_6@uint32;
(*   %conv6.i.i295.6 = zext i8 %conv7.i.i297.5 to i32 *)
cast v_conv6_i_i295_6@uint32 v_conv7_i_i297_5@uint8;
(*   %shl.i.i296.6 = shl i32 %conv6.i.i295.6, 1 *)
shls discard_20 v_shl_i_i296_6 v_conv6_i_i295_6 1;
(*   %conv7.i.i297.6 = trunc i32 %shl.i.i296.6 to i8 *)
split tmp_v_shl_i_i296_6 v_conv7_i_i297_6 v_shl_i_i296_6 8;
vpc v_conv7_i_i297_6@uint8 v_conv7_i_i297_6@uint32;
(*   %conv.i.i285.7 = zext i8 %conv5.i.i294.6 to i32 *)
cast v_conv_i_i285_7@uint32 v_conv5_i_i294_6@uint8;
(*   %and.i.i286.7 = and i32 %conv.i.i285.7, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i286_7 v_conv_i_i285_7 (0x1)@uint32;
(*   %conv1.i.i287.7 = zext i8 %conv7.i.i297.6 to i32 *)
cast v_conv1_i_i287_7@uint32 v_conv7_i_i297_6@uint8;
(*   %mul.i.i288.7 = mul nsw i32 %and.i.i286.7, %conv1.i.i287.7 *)
mul v_mul_i_i288_7 v_and_i_i286_7 v_conv1_i_i287_7;
(*   %conv2.i.i289.7 = zext i8 %conv3.i.i291.6 to i32 *)
cast v_conv2_i_i289_7@uint32 v_conv3_i_i291_6@uint8;
(*   %xor.i.i290.7 = xor i32 %conv2.i.i289.7, %mul.i.i288.7 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i290_7 v_conv2_i_i289_7 v_mul_i_i288_7;
(*   %conv3.i.i291.7 = trunc i32 %xor.i.i290.7 to i8 *)
split tmp_v_xor_i_i290_7 v_conv3_i_i291_7 v_xor_i_i290_7 8;
vpc v_conv3_i_i291_7@uint8 v_conv3_i_i291_7@uint32;
(*   store i8 %conv3.i.i291.7, i8* %arraydecay28, align 1 *)
mov ab1_0 v_conv3_i_i291_7;
(*   %arrayidx.i277.1 = getelementptr inbounds i8, i8* %a, i64 1 *)
(*   %8 = load i8, i8* %arrayidx.i277.1, align 1 *)
mov v8 a_1;
(*   %9 = load i8, i8* %b, align 1 *)
mov v9 b_0;
(*   %conv.i.i285.1118 = zext i8 %9 to i32 *)
cast v_conv_i_i285_1118@uint32 v9@uint8;
(*   %and.i.i286.1119 = and i32 %conv.i.i285.1118, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i286_1119 v_conv_i_i285_1118 (0x1)@uint32;
(*   %conv1.i.i287.1120 = zext i8 %8 to i32 *)
cast v_conv1_i_i287_1120@uint32 v8@uint8;
(*   %mul.i.i288.1121 = mul nsw i32 %and.i.i286.1119, %conv1.i.i287.1120 *)
mul v_mul_i_i288_1121 v_and_i_i286_1119 v_conv1_i_i287_1120;
(*   %conv3.i.i291.1122 = trunc i32 %mul.i.i288.1121 to i8 *)
split tmp_v_mul_i_i288_1121 v_conv3_i_i291_1122 v_mul_i_i288_1121 8;
vpc v_conv3_i_i291_1122@uint8 v_conv3_i_i291_1122@uint32;
(*   %conv4.i.i292.1123 = zext i8 %9 to i32 *)
cast v_conv4_i_i292_1123@uint32 v9@uint8;
(*   %shr.i.i293.1124 = ashr i32 %conv4.i.i292.1123, 1 *)
(* You may need to modify here *)
split v_shr_i_i293_1124 tmp_to_be_used v_conv4_i_i292_1123 1;
(*   %conv5.i.i294.1125 = trunc i32 %shr.i.i293.1124 to i8 *)
split tmp_v_shr_i_i293_1124 v_conv5_i_i294_1125 v_shr_i_i293_1124 8;
vpc v_conv5_i_i294_1125@uint8 v_conv5_i_i294_1125@uint32;
(*   %conv6.i.i295.1126 = zext i8 %8 to i32 *)
cast v_conv6_i_i295_1126@uint32 v8@uint8;
(*   %shl.i.i296.1127 = shl i32 %conv6.i.i295.1126, 1 *)
shls discard_21 v_shl_i_i296_1127 v_conv6_i_i295_1126 1;
(*   %conv7.i.i297.1128 = trunc i32 %shl.i.i296.1127 to i8 *)
split tmp_v_shl_i_i296_1127 v_conv7_i_i297_1128 v_shl_i_i296_1127 8;
vpc v_conv7_i_i297_1128@uint8 v_conv7_i_i297_1128@uint32;
(*   %conv.i.i285.1.1 = zext i8 %conv5.i.i294.1125 to i32 *)
cast v_conv_i_i285_1_1@uint32 v_conv5_i_i294_1125@uint8;
(*   %and.i.i286.1.1 = and i32 %conv.i.i285.1.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i286_1_1 v_conv_i_i285_1_1 (0x1)@uint32;
(*   %conv1.i.i287.1.1 = zext i8 %conv7.i.i297.1128 to i32 *)
cast v_conv1_i_i287_1_1@uint32 v_conv7_i_i297_1128@uint8;
(*   %mul.i.i288.1.1 = mul nsw i32 %and.i.i286.1.1, %conv1.i.i287.1.1 *)
mul v_mul_i_i288_1_1 v_and_i_i286_1_1 v_conv1_i_i287_1_1;
(*   %conv2.i.i289.1.1 = zext i8 %conv3.i.i291.1122 to i32 *)
cast v_conv2_i_i289_1_1@uint32 v_conv3_i_i291_1122@uint8;
(*   %xor.i.i290.1.1 = xor i32 %conv2.i.i289.1.1, %mul.i.i288.1.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i290_1_1 v_conv2_i_i289_1_1 v_mul_i_i288_1_1;
(*   %conv3.i.i291.1.1 = trunc i32 %xor.i.i290.1.1 to i8 *)
split tmp_v_xor_i_i290_1_1 v_conv3_i_i291_1_1 v_xor_i_i290_1_1 8;
vpc v_conv3_i_i291_1_1@uint8 v_conv3_i_i291_1_1@uint32;
(*   %conv4.i.i292.1.1 = zext i8 %conv5.i.i294.1125 to i32 *)
cast v_conv4_i_i292_1_1@uint32 v_conv5_i_i294_1125@uint8;
(*   %shr.i.i293.1.1 = ashr i32 %conv4.i.i292.1.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i293_1_1 tmp_to_be_used v_conv4_i_i292_1_1 1;
(*   %conv5.i.i294.1.1 = trunc i32 %shr.i.i293.1.1 to i8 *)
split tmp_v_shr_i_i293_1_1 v_conv5_i_i294_1_1 v_shr_i_i293_1_1 8;
vpc v_conv5_i_i294_1_1@uint8 v_conv5_i_i294_1_1@uint32;
(*   %conv6.i.i295.1.1 = zext i8 %conv7.i.i297.1128 to i32 *)
cast v_conv6_i_i295_1_1@uint32 v_conv7_i_i297_1128@uint8;
(*   %shl.i.i296.1.1 = shl i32 %conv6.i.i295.1.1, 1 *)
shls discard_22 v_shl_i_i296_1_1 v_conv6_i_i295_1_1 1;
(*   %conv7.i.i297.1.1 = trunc i32 %shl.i.i296.1.1 to i8 *)
split tmp_v_shl_i_i296_1_1 v_conv7_i_i297_1_1 v_shl_i_i296_1_1 8;
vpc v_conv7_i_i297_1_1@uint8 v_conv7_i_i297_1_1@uint32;
(*   %conv.i.i285.2.1 = zext i8 %conv5.i.i294.1.1 to i32 *)
cast v_conv_i_i285_2_1@uint32 v_conv5_i_i294_1_1@uint8;
(*   %and.i.i286.2.1 = and i32 %conv.i.i285.2.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i286_2_1 v_conv_i_i285_2_1 (0x1)@uint32;
(*   %conv1.i.i287.2.1 = zext i8 %conv7.i.i297.1.1 to i32 *)
cast v_conv1_i_i287_2_1@uint32 v_conv7_i_i297_1_1@uint8;
(*   %mul.i.i288.2.1 = mul nsw i32 %and.i.i286.2.1, %conv1.i.i287.2.1 *)
mul v_mul_i_i288_2_1 v_and_i_i286_2_1 v_conv1_i_i287_2_1;
(*   %conv2.i.i289.2.1 = zext i8 %conv3.i.i291.1.1 to i32 *)
cast v_conv2_i_i289_2_1@uint32 v_conv3_i_i291_1_1@uint8;
(*   %xor.i.i290.2.1 = xor i32 %conv2.i.i289.2.1, %mul.i.i288.2.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i290_2_1 v_conv2_i_i289_2_1 v_mul_i_i288_2_1;
(*   %conv3.i.i291.2.1 = trunc i32 %xor.i.i290.2.1 to i8 *)
split tmp_v_xor_i_i290_2_1 v_conv3_i_i291_2_1 v_xor_i_i290_2_1 8;
vpc v_conv3_i_i291_2_1@uint8 v_conv3_i_i291_2_1@uint32;
(*   %conv4.i.i292.2.1 = zext i8 %conv5.i.i294.1.1 to i32 *)
cast v_conv4_i_i292_2_1@uint32 v_conv5_i_i294_1_1@uint8;
(*   %shr.i.i293.2.1 = ashr i32 %conv4.i.i292.2.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i293_2_1 tmp_to_be_used v_conv4_i_i292_2_1 1;
(*   %conv5.i.i294.2.1 = trunc i32 %shr.i.i293.2.1 to i8 *)
split tmp_v_shr_i_i293_2_1 v_conv5_i_i294_2_1 v_shr_i_i293_2_1 8;
vpc v_conv5_i_i294_2_1@uint8 v_conv5_i_i294_2_1@uint32;
(*   %conv6.i.i295.2.1 = zext i8 %conv7.i.i297.1.1 to i32 *)
cast v_conv6_i_i295_2_1@uint32 v_conv7_i_i297_1_1@uint8;
(*   %shl.i.i296.2.1 = shl i32 %conv6.i.i295.2.1, 1 *)
shls discard_23 v_shl_i_i296_2_1 v_conv6_i_i295_2_1 1;
(*   %conv7.i.i297.2.1 = trunc i32 %shl.i.i296.2.1 to i8 *)
split tmp_v_shl_i_i296_2_1 v_conv7_i_i297_2_1 v_shl_i_i296_2_1 8;
vpc v_conv7_i_i297_2_1@uint8 v_conv7_i_i297_2_1@uint32;
(*   %conv.i.i285.3.1 = zext i8 %conv5.i.i294.2.1 to i32 *)
cast v_conv_i_i285_3_1@uint32 v_conv5_i_i294_2_1@uint8;
(*   %and.i.i286.3.1 = and i32 %conv.i.i285.3.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i286_3_1 v_conv_i_i285_3_1 (0x1)@uint32;
(*   %conv1.i.i287.3.1 = zext i8 %conv7.i.i297.2.1 to i32 *)
cast v_conv1_i_i287_3_1@uint32 v_conv7_i_i297_2_1@uint8;
(*   %mul.i.i288.3.1 = mul nsw i32 %and.i.i286.3.1, %conv1.i.i287.3.1 *)
mul v_mul_i_i288_3_1 v_and_i_i286_3_1 v_conv1_i_i287_3_1;
(*   %conv2.i.i289.3.1 = zext i8 %conv3.i.i291.2.1 to i32 *)
cast v_conv2_i_i289_3_1@uint32 v_conv3_i_i291_2_1@uint8;
(*   %xor.i.i290.3.1 = xor i32 %conv2.i.i289.3.1, %mul.i.i288.3.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i290_3_1 v_conv2_i_i289_3_1 v_mul_i_i288_3_1;
(*   %conv3.i.i291.3.1 = trunc i32 %xor.i.i290.3.1 to i8 *)
split tmp_v_xor_i_i290_3_1 v_conv3_i_i291_3_1 v_xor_i_i290_3_1 8;
vpc v_conv3_i_i291_3_1@uint8 v_conv3_i_i291_3_1@uint32;
(*   %conv4.i.i292.3.1 = zext i8 %conv5.i.i294.2.1 to i32 *)
cast v_conv4_i_i292_3_1@uint32 v_conv5_i_i294_2_1@uint8;
(*   %shr.i.i293.3.1 = ashr i32 %conv4.i.i292.3.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i293_3_1 tmp_to_be_used v_conv4_i_i292_3_1 1;
(*   %conv5.i.i294.3.1 = trunc i32 %shr.i.i293.3.1 to i8 *)
split tmp_v_shr_i_i293_3_1 v_conv5_i_i294_3_1 v_shr_i_i293_3_1 8;
vpc v_conv5_i_i294_3_1@uint8 v_conv5_i_i294_3_1@uint32;
(*   %conv6.i.i295.3.1 = zext i8 %conv7.i.i297.2.1 to i32 *)
cast v_conv6_i_i295_3_1@uint32 v_conv7_i_i297_2_1@uint8;
(*   %shl.i.i296.3.1 = shl i32 %conv6.i.i295.3.1, 1 *)
shls discard_24 v_shl_i_i296_3_1 v_conv6_i_i295_3_1 1;
(*   %conv7.i.i297.3.1 = trunc i32 %shl.i.i296.3.1 to i8 *)
split tmp_v_shl_i_i296_3_1 v_conv7_i_i297_3_1 v_shl_i_i296_3_1 8;
vpc v_conv7_i_i297_3_1@uint8 v_conv7_i_i297_3_1@uint32;
(*   %conv.i.i285.4.1 = zext i8 %conv5.i.i294.3.1 to i32 *)
cast v_conv_i_i285_4_1@uint32 v_conv5_i_i294_3_1@uint8;
(*   %and.i.i286.4.1 = and i32 %conv.i.i285.4.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i286_4_1 v_conv_i_i285_4_1 (0x1)@uint32;
(*   %conv1.i.i287.4.1 = zext i8 %conv7.i.i297.3.1 to i32 *)
cast v_conv1_i_i287_4_1@uint32 v_conv7_i_i297_3_1@uint8;
(*   %mul.i.i288.4.1 = mul nsw i32 %and.i.i286.4.1, %conv1.i.i287.4.1 *)
mul v_mul_i_i288_4_1 v_and_i_i286_4_1 v_conv1_i_i287_4_1;
(*   %conv2.i.i289.4.1 = zext i8 %conv3.i.i291.3.1 to i32 *)
cast v_conv2_i_i289_4_1@uint32 v_conv3_i_i291_3_1@uint8;
(*   %xor.i.i290.4.1 = xor i32 %conv2.i.i289.4.1, %mul.i.i288.4.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i290_4_1 v_conv2_i_i289_4_1 v_mul_i_i288_4_1;
(*   %conv3.i.i291.4.1 = trunc i32 %xor.i.i290.4.1 to i8 *)
split tmp_v_xor_i_i290_4_1 v_conv3_i_i291_4_1 v_xor_i_i290_4_1 8;
vpc v_conv3_i_i291_4_1@uint8 v_conv3_i_i291_4_1@uint32;
(*   %conv4.i.i292.4.1 = zext i8 %conv5.i.i294.3.1 to i32 *)
cast v_conv4_i_i292_4_1@uint32 v_conv5_i_i294_3_1@uint8;
(*   %shr.i.i293.4.1 = ashr i32 %conv4.i.i292.4.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i293_4_1 tmp_to_be_used v_conv4_i_i292_4_1 1;
(*   %conv5.i.i294.4.1 = trunc i32 %shr.i.i293.4.1 to i8 *)
split tmp_v_shr_i_i293_4_1 v_conv5_i_i294_4_1 v_shr_i_i293_4_1 8;
vpc v_conv5_i_i294_4_1@uint8 v_conv5_i_i294_4_1@uint32;
(*   %conv6.i.i295.4.1 = zext i8 %conv7.i.i297.3.1 to i32 *)
cast v_conv6_i_i295_4_1@uint32 v_conv7_i_i297_3_1@uint8;
(*   %shl.i.i296.4.1 = shl i32 %conv6.i.i295.4.1, 1 *)
shls discard_25 v_shl_i_i296_4_1 v_conv6_i_i295_4_1 1;
(*   %conv7.i.i297.4.1 = trunc i32 %shl.i.i296.4.1 to i8 *)
split tmp_v_shl_i_i296_4_1 v_conv7_i_i297_4_1 v_shl_i_i296_4_1 8;
vpc v_conv7_i_i297_4_1@uint8 v_conv7_i_i297_4_1@uint32;
(*   %conv.i.i285.5.1 = zext i8 %conv5.i.i294.4.1 to i32 *)
cast v_conv_i_i285_5_1@uint32 v_conv5_i_i294_4_1@uint8;
(*   %and.i.i286.5.1 = and i32 %conv.i.i285.5.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i286_5_1 v_conv_i_i285_5_1 (0x1)@uint32;
(*   %conv1.i.i287.5.1 = zext i8 %conv7.i.i297.4.1 to i32 *)
cast v_conv1_i_i287_5_1@uint32 v_conv7_i_i297_4_1@uint8;
(*   %mul.i.i288.5.1 = mul nsw i32 %and.i.i286.5.1, %conv1.i.i287.5.1 *)
mul v_mul_i_i288_5_1 v_and_i_i286_5_1 v_conv1_i_i287_5_1;
(*   %conv2.i.i289.5.1 = zext i8 %conv3.i.i291.4.1 to i32 *)
cast v_conv2_i_i289_5_1@uint32 v_conv3_i_i291_4_1@uint8;
(*   %xor.i.i290.5.1 = xor i32 %conv2.i.i289.5.1, %mul.i.i288.5.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i290_5_1 v_conv2_i_i289_5_1 v_mul_i_i288_5_1;
(*   %conv3.i.i291.5.1 = trunc i32 %xor.i.i290.5.1 to i8 *)
split tmp_v_xor_i_i290_5_1 v_conv3_i_i291_5_1 v_xor_i_i290_5_1 8;
vpc v_conv3_i_i291_5_1@uint8 v_conv3_i_i291_5_1@uint32;
(*   %conv4.i.i292.5.1 = zext i8 %conv5.i.i294.4.1 to i32 *)
cast v_conv4_i_i292_5_1@uint32 v_conv5_i_i294_4_1@uint8;
(*   %shr.i.i293.5.1 = ashr i32 %conv4.i.i292.5.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i293_5_1 tmp_to_be_used v_conv4_i_i292_5_1 1;
(*   %conv5.i.i294.5.1 = trunc i32 %shr.i.i293.5.1 to i8 *)
split tmp_v_shr_i_i293_5_1 v_conv5_i_i294_5_1 v_shr_i_i293_5_1 8;
vpc v_conv5_i_i294_5_1@uint8 v_conv5_i_i294_5_1@uint32;
(*   %conv6.i.i295.5.1 = zext i8 %conv7.i.i297.4.1 to i32 *)
cast v_conv6_i_i295_5_1@uint32 v_conv7_i_i297_4_1@uint8;
(*   %shl.i.i296.5.1 = shl i32 %conv6.i.i295.5.1, 1 *)
shls discard_26 v_shl_i_i296_5_1 v_conv6_i_i295_5_1 1;
(*   %conv7.i.i297.5.1 = trunc i32 %shl.i.i296.5.1 to i8 *)
split tmp_v_shl_i_i296_5_1 v_conv7_i_i297_5_1 v_shl_i_i296_5_1 8;
vpc v_conv7_i_i297_5_1@uint8 v_conv7_i_i297_5_1@uint32;
(*   %conv.i.i285.6.1 = zext i8 %conv5.i.i294.5.1 to i32 *)
cast v_conv_i_i285_6_1@uint32 v_conv5_i_i294_5_1@uint8;
(*   %and.i.i286.6.1 = and i32 %conv.i.i285.6.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i286_6_1 v_conv_i_i285_6_1 (0x1)@uint32;
(*   %conv1.i.i287.6.1 = zext i8 %conv7.i.i297.5.1 to i32 *)
cast v_conv1_i_i287_6_1@uint32 v_conv7_i_i297_5_1@uint8;
(*   %mul.i.i288.6.1 = mul nsw i32 %and.i.i286.6.1, %conv1.i.i287.6.1 *)
mul v_mul_i_i288_6_1 v_and_i_i286_6_1 v_conv1_i_i287_6_1;
(*   %conv2.i.i289.6.1 = zext i8 %conv3.i.i291.5.1 to i32 *)
cast v_conv2_i_i289_6_1@uint32 v_conv3_i_i291_5_1@uint8;
(*   %xor.i.i290.6.1 = xor i32 %conv2.i.i289.6.1, %mul.i.i288.6.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i290_6_1 v_conv2_i_i289_6_1 v_mul_i_i288_6_1;
(*   %conv3.i.i291.6.1 = trunc i32 %xor.i.i290.6.1 to i8 *)
split tmp_v_xor_i_i290_6_1 v_conv3_i_i291_6_1 v_xor_i_i290_6_1 8;
vpc v_conv3_i_i291_6_1@uint8 v_conv3_i_i291_6_1@uint32;
(*   %conv4.i.i292.6.1 = zext i8 %conv5.i.i294.5.1 to i32 *)
cast v_conv4_i_i292_6_1@uint32 v_conv5_i_i294_5_1@uint8;
(*   %shr.i.i293.6.1 = ashr i32 %conv4.i.i292.6.1, 1 *)
(* You may need to modify here *)
split v_shr_i_i293_6_1 tmp_to_be_used v_conv4_i_i292_6_1 1;
(*   %conv5.i.i294.6.1 = trunc i32 %shr.i.i293.6.1 to i8 *)
split tmp_v_shr_i_i293_6_1 v_conv5_i_i294_6_1 v_shr_i_i293_6_1 8;
vpc v_conv5_i_i294_6_1@uint8 v_conv5_i_i294_6_1@uint32;
(*   %conv6.i.i295.6.1 = zext i8 %conv7.i.i297.5.1 to i32 *)
cast v_conv6_i_i295_6_1@uint32 v_conv7_i_i297_5_1@uint8;
(*   %shl.i.i296.6.1 = shl i32 %conv6.i.i295.6.1, 1 *)
shls discard_27 v_shl_i_i296_6_1 v_conv6_i_i295_6_1 1;
(*   %conv7.i.i297.6.1 = trunc i32 %shl.i.i296.6.1 to i8 *)
split tmp_v_shl_i_i296_6_1 v_conv7_i_i297_6_1 v_shl_i_i296_6_1 8;
vpc v_conv7_i_i297_6_1@uint8 v_conv7_i_i297_6_1@uint32;
(*   %conv.i.i285.7.1 = zext i8 %conv5.i.i294.6.1 to i32 *)
cast v_conv_i_i285_7_1@uint32 v_conv5_i_i294_6_1@uint8;
(*   %and.i.i286.7.1 = and i32 %conv.i.i285.7.1, 1 *)
(* You may need to modify here *)
and uint32 v_and_i_i286_7_1 v_conv_i_i285_7_1 (0x1)@uint32;
(*   %conv1.i.i287.7.1 = zext i8 %conv7.i.i297.6.1 to i32 *)
cast v_conv1_i_i287_7_1@uint32 v_conv7_i_i297_6_1@uint8;
(*   %mul.i.i288.7.1 = mul nsw i32 %and.i.i286.7.1, %conv1.i.i287.7.1 *)
mul v_mul_i_i288_7_1 v_and_i_i286_7_1 v_conv1_i_i287_7_1;
(*   %conv2.i.i289.7.1 = zext i8 %conv3.i.i291.6.1 to i32 *)
cast v_conv2_i_i289_7_1@uint32 v_conv3_i_i291_6_1@uint8;
(*   %xor.i.i290.7.1 = xor i32 %conv2.i.i289.7.1, %mul.i.i288.7.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i290_7_1 v_conv2_i_i289_7_1 v_mul_i_i288_7_1;
(*   %conv3.i.i291.7.1 = trunc i32 %xor.i.i290.7.1 to i8 *)
split tmp_v_xor_i_i290_7_1 v_conv3_i_i291_7_1 v_xor_i_i290_7_1 8;
vpc v_conv3_i_i291_7_1@uint8 v_conv3_i_i291_7_1@uint32;
(*   %arrayidx6.i301.1 = getelementptr inbounds i8, i8* %arraydecay28, i64 1 *)
(*   store i8 %conv3.i.i291.7.1, i8* %arrayidx6.i301.1, align 1 *)
mov ab1_1 v_conv3_i_i291_7_1;
(*   %10 = load i8, i8* %c, align 1 *)
mov v10 c_0;
(*   %conv.i249 = zext i8 %10 to i32 *)
cast v_conv_i249@uint32 v10@uint8;
(*   %scevgep69 = getelementptr [2 x i8], [2 x i8]* %z, i64 0, i64 0 *)
(*   %11 = load i8, i8* %scevgep69, align 1 *)
mov v11 z_0;
(*   %conv5.i254 = zext i8 %11 to i32 *)
cast v_conv5_i254@uint32 v11@uint8;
(*   %xor.i255 = xor i32 %conv.i249, %conv5.i254 *)
(* You may need to modify here *)
xor uint32 v_xor_i255 v_conv_i249 v_conv5_i254;
(*   %conv6.i256 = trunc i32 %xor.i255 to i8 *)
split tmp_v_xor_i255 v_conv6_i256 v_xor_i255 8;
vpc v_conv6_i256@uint8 v_conv6_i256@uint32;
(*   store i8 %conv6.i256, i8* %c, align 1 *)
mov c_0 v_conv6_i256;
(*   %scevgep67.1 = getelementptr i8, i8* %c, i64 1 *)
(*   %12 = load i8, i8* %scevgep67.1, align 1 *)
mov v12 c_1;
(*   %conv.i249.1 = zext i8 %12 to i32 *)
cast v_conv_i249_1@uint32 v12@uint8;
(*   %scevgep69.1 = getelementptr [2 x i8], [2 x i8]* %z, i64 0, i64 1 *)
(*   %13 = load i8, i8* %scevgep69.1, align 1 *)
mov v13 z_1;
(*   %conv5.i254.1 = zext i8 %13 to i32 *)
cast v_conv5_i254_1@uint32 v13@uint8;
(*   %xor.i255.1 = xor i32 %conv.i249.1, %conv5.i254.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i255_1 v_conv_i249_1 v_conv5_i254_1;
(*   %conv6.i256.1 = trunc i32 %xor.i255.1 to i8 *)
split tmp_v_xor_i255_1 v_conv6_i256_1 v_xor_i255_1 8;
vpc v_conv6_i256_1@uint8 v_conv6_i256_1@uint32;
(*   %scevgep68.1 = getelementptr i8, i8* %c, i64 1 *)
(*   store i8 %conv6.i256.1, i8* %scevgep68.1, align 1 *)
mov c_1 v_conv6_i256_1;
(*   %14 = load i8, i8* %c, align 1 *)
mov v14 c_0;
(*   %conv.i227 = zext i8 %14 to i32 *)
cast v_conv_i227@uint32 v14@uint8;
(*   %scevgep63 = getelementptr [2 x i8], [2 x i8]* %ab1, i64 0, i64 0 *)
(*   %15 = load i8, i8* %scevgep63, align 1 *)
mov v15 ab1_0;
(*   %conv5.i232 = zext i8 %15 to i32 *)
cast v_conv5_i232@uint32 v15@uint8;
(*   %xor.i233 = xor i32 %conv.i227, %conv5.i232 *)
(* You may need to modify here *)
xor uint32 v_xor_i233 v_conv_i227 v_conv5_i232;
(*   %conv6.i234 = trunc i32 %xor.i233 to i8 *)
split tmp_v_xor_i233 v_conv6_i234 v_xor_i233 8;
vpc v_conv6_i234@uint8 v_conv6_i234@uint32;
(*   store i8 %conv6.i234, i8* %c, align 1 *)
mov c_0 v_conv6_i234;
(*   %scevgep61.1 = getelementptr i8, i8* %c, i64 1 *)
(*   %16 = load i8, i8* %scevgep61.1, align 1 *)
mov v16 c_1;
(*   %conv.i227.1 = zext i8 %16 to i32 *)
cast v_conv_i227_1@uint32 v16@uint8;
(*   %scevgep63.1 = getelementptr [2 x i8], [2 x i8]* %ab1, i64 0, i64 1 *)
(*   %17 = load i8, i8* %scevgep63.1, align 1 *)
mov v17 ab1_1;
(*   %conv5.i232.1 = zext i8 %17 to i32 *)
cast v_conv5_i232_1@uint32 v17@uint8;
(*   %xor.i233.1 = xor i32 %conv.i227.1, %conv5.i232.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i233_1 v_conv_i227_1 v_conv5_i232_1;
(*   %conv6.i234.1 = trunc i32 %xor.i233.1 to i8 *)
split tmp_v_xor_i233_1 v_conv6_i234_1 v_xor_i233_1 8;
vpc v_conv6_i234_1@uint8 v_conv6_i234_1@uint32;
(*   %scevgep62.1 = getelementptr i8, i8* %c, i64 1 *)
(*   store i8 %conv6.i234.1, i8* %scevgep62.1, align 1 *)
mov c_1 v_conv6_i234_1;
(*   %18 = load i8, i8* %a, align 1 *)
mov v18 a_0;
(*   %scevgep57.1 = getelementptr i8, i8* %a, i64 1 *)
(*   %19 = load i8, i8* %scevgep57.1, align 1 *)
mov v19 a_1;
(*   %conv.i.i165.1 = zext i8 %19 to i32 *)
cast v_conv_i_i165_1@uint32 v19@uint8;
(*   %conv1.i.i166.1 = zext i8 %18 to i32 *)
cast v_conv1_i_i166_1@uint32 v18@uint8;
(*   %xor.i.i167.1 = xor i32 %conv1.i.i166.1, %conv.i.i165.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i167_1 v_conv1_i_i166_1 v_conv_i_i165_1;
(*   %conv2.i.i168.1 = trunc i32 %xor.i.i167.1 to i8 *)
split tmp_v_xor_i_i167_1 v_conv2_i_i168_1 v_xor_i_i167_1 8;
vpc v_conv2_i_i168_1@uint8 v_conv2_i_i168_1@uint32;
(*   %20 = load i8, i8* %b, align 1 *)
mov v20 b_0;
(*   %scevgep53.1 = getelementptr i8, i8* %b, i64 1 *)
(*   %21 = load i8, i8* %scevgep53.1, align 1 *)
mov v21 b_1;
(*   %conv.i.i105.1 = zext i8 %21 to i32 *)
cast v_conv_i_i105_1@uint32 v21@uint8;
(*   %conv1.i.i106.1 = zext i8 %20 to i32 *)
cast v_conv1_i_i106_1@uint32 v20@uint8;
(*   %xor.i.i107.1 = xor i32 %conv1.i.i106.1, %conv.i.i105.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i107_1 v_conv1_i_i106_1 v_conv_i_i105_1;
(*   %conv2.i.i108.1 = trunc i32 %xor.i.i107.1 to i8 *)
split tmp_v_xor_i_i107_1 v_conv2_i_i108_1 v_xor_i_i107_1 8;
vpc v_conv2_i_i108_1@uint8 v_conv2_i_i108_1@uint32;
(*   %conv.i = zext i8 %conv2.i.i108.1 to i32 *)
cast v_conv_i@uint32 v_conv2_i_i108_1@uint8;
(*   %and.i = and i32 %conv.i, 1 *)
(* You may need to modify here *)
and uint32 v_and_i v_conv_i (0x1)@uint32;
(*   %conv1.i = zext i8 %conv2.i.i168.1 to i32 *)
cast v_conv1_i@uint32 v_conv2_i_i168_1@uint8;
(*   %mul.i = mul nsw i32 %and.i, %conv1.i *)
mul v_mul_i v_and_i v_conv1_i;
(*   %conv3.i = trunc i32 %mul.i to i8 *)
split tmp_v_mul_i v_conv3_i v_mul_i 8;
vpc v_conv3_i@uint8 v_conv3_i@uint32;
(*   %conv4.i = zext i8 %conv2.i.i108.1 to i32 *)
cast v_conv4_i@uint32 v_conv2_i_i108_1@uint8;
(*   %shr.i = ashr i32 %conv4.i, 1 *)
(* You may need to modify here *)
split v_shr_i tmp_to_be_used v_conv4_i 1;
(*   %conv5.i = trunc i32 %shr.i to i8 *)
split tmp_v_shr_i v_conv5_i v_shr_i 8;
vpc v_conv5_i@uint8 v_conv5_i@uint32;
(*   %conv6.i = zext i8 %conv2.i.i168.1 to i32 *)
cast v_conv6_i@uint32 v_conv2_i_i168_1@uint8;
(*   %shl.i = shl i32 %conv6.i, 1 *)
shls discard_28 v_shl_i v_conv6_i 1;
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
shls discard_29 v_shl_i_1 v_conv6_i_1 1;
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
shls discard_30 v_shl_i_2 v_conv6_i_2 1;
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
shls discard_31 v_shl_i_3 v_conv6_i_3 1;
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
shls discard_32 v_shl_i_4 v_conv6_i_4 1;
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
shls discard_33 v_shl_i_5 v_conv6_i_5 1;
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
shls discard_34 v_shl_i_6 v_conv6_i_6 1;
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
(*   %22 = load i8, i8* %c, align 1 *)
mov v22 c_0;
(*   %scevgep.1 = getelementptr i8, i8* %c, i64 1 *)
(*   %23 = load i8, i8* %scevgep.1, align 1 *)
mov v23 c_1;
(*   %conv.i.i39.1 = zext i8 %23 to i32 *)
cast v_conv_i_i39_1@uint32 v23@uint8;
(*   %conv1.i.i40.1 = zext i8 %22 to i32 *)
cast v_conv1_i_i40_1@uint32 v22@uint8;
(*   %xor.i.i41.1 = xor i32 %conv1.i.i40.1, %conv.i.i39.1 *)
(* You may need to modify here *)
xor uint32 v_xor_i_i41_1 v_conv1_i_i40_1 v_conv_i_i39_1;
(*   %conv2.i.i42.1 = trunc i32 %xor.i.i41.1 to i8 *)
split tmp_v_xor_i_i41_1 v_conv2_i_i42_1 v_xor_i_i41_1 8;
vpc v_conv2_i_i42_1@uint8 v_conv2_i_i42_1@uint32;
(*   store i8 %conv2.i.i42.1, i8* %C, align 1 *)
mov C_0 v_conv2_i_i42_1;
(*   ret void *)


(* Outputs *)

mov _ AB_0@uint8;
mov _ C_0@uint8;


{
  true
  &&
  true
}

