; ModuleID = '../examples/rivain-ches2010-sec-exp-affine.inline-4.ll'
source_filename = "../examples/rivain-ches2010-sec-exp-affine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 4, align 4
@.str = private unnamed_addr constant [7 x i8] c"verify\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [45 x i8] c"../examples/rivain-ches2010-sec-exp-affine.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [7 x i8] c"affine\00", section "llvm.metadata"
@llvm.global.annotations = appending global [9 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*, i8*)* @sec_mult to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 3 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*)* @refresh_masks to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 29 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @square to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 43 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp4 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 45 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp16 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 47 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*)* @sec_exp254 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 61 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*)* @sec_expd to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 91 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @af to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 114 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*)* @sec_sbox to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 120 }], section "llvm.metadata"

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @transform(i8* %from, i8* %to, i8 (i8)* %f) #0 {
entry:
  %0 = load i8, i8* %from, align 1
  %call = call zeroext i8 %f(i8 zeroext %0)
  store i8 %call, i8* %to, align 1
  %scevgep.1 = getelementptr i8, i8* %from, i64 1
  %1 = load i8, i8* %scevgep.1, align 1
  %call.1 = call zeroext i8 %f(i8 zeroext %1)
  %scevgep2.1 = getelementptr i8, i8* %to, i64 1
  store i8 %call.1, i8* %scevgep2.1, align 1
  %scevgep.2 = getelementptr i8, i8* %from, i64 2
  %2 = load i8, i8* %scevgep.2, align 1
  %call.2 = call zeroext i8 %f(i8 zeroext %2)
  %scevgep2.2 = getelementptr i8, i8* %to, i64 2
  store i8 %call.2, i8* %scevgep2.2, align 1
  %scevgep.3 = getelementptr i8, i8* %from, i64 3
  %3 = load i8, i8* %scevgep.3, align 1
  %call.3 = call zeroext i8 %f(i8 zeroext %3)
  %scevgep2.3 = getelementptr i8, i8* %to, i64 3
  store i8 %call.3, i8* %scevgep2.3, align 1
  %scevgep.4 = getelementptr i8, i8* %from, i64 4
  %4 = load i8, i8* %scevgep.4, align 1
  %call.4 = call zeroext i8 %f(i8 zeroext %4)
  %scevgep2.4 = getelementptr i8, i8* %to, i64 4
  store i8 %call.4, i8* %scevgep2.4, align 1
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @sigma(i8* %a, i8 (i8)* %f) #0 {
entry:
  %0 = load i8, i8* %a, align 1
  %call = call zeroext i8 %f(i8 zeroext %0)
  %scevgep.1 = getelementptr i8, i8* %a, i64 1
  %1 = load i8, i8* %scevgep.1, align 1
  %call.1 = call zeroext i8 %f(i8 zeroext %1)
  %conv.1 = zext i8 %call.1 to i32
  %conv1.1 = zext i8 %call to i32
  %xor.1 = xor i32 %conv1.1, %conv.1
  %conv2.1 = trunc i32 %xor.1 to i8
  %scevgep.2 = getelementptr i8, i8* %a, i64 2
  %2 = load i8, i8* %scevgep.2, align 1
  %call.2 = call zeroext i8 %f(i8 zeroext %2)
  %conv.2 = zext i8 %call.2 to i32
  %conv1.2 = zext i8 %conv2.1 to i32
  %xor.2 = xor i32 %conv1.2, %conv.2
  %conv2.2 = trunc i32 %xor.2 to i8
  %scevgep.3 = getelementptr i8, i8* %a, i64 3
  %3 = load i8, i8* %scevgep.3, align 1
  %call.3 = call zeroext i8 %f(i8 zeroext %3)
  %conv.3 = zext i8 %call.3 to i32
  %conv1.3 = zext i8 %conv2.2 to i32
  %xor.3 = xor i32 %conv1.3, %conv.3
  %conv2.3 = trunc i32 %xor.3 to i8
  %scevgep.4 = getelementptr i8, i8* %a, i64 4
  %4 = load i8, i8* %scevgep.4, align 1
  %call.4 = call zeroext i8 %f(i8 zeroext %4)
  %conv.4 = zext i8 %call.4 to i32
  %conv1.4 = zext i8 %conv2.3 to i32
  %xor.4 = xor i32 %conv1.4, %conv.4
  %conv2.4 = trunc i32 %xor.4 to i8
  ret i8 %conv2.4
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @id(i8 zeroext %x) #0 {
entry:
  ret i8 %x
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @xors(i8* %a) #0 {
entry:
  %0 = load i8, i8* %a, align 1
  %scevgep.1 = getelementptr i8, i8* %a, i64 1
  %1 = load i8, i8* %scevgep.1, align 1
  %conv.i.1 = zext i8 %1 to i32
  %conv1.i.1 = zext i8 %0 to i32
  %xor.i.1 = xor i32 %conv1.i.1, %conv.i.1
  %conv2.i.1 = trunc i32 %xor.i.1 to i8
  %scevgep.2 = getelementptr i8, i8* %a, i64 2
  %2 = load i8, i8* %scevgep.2, align 1
  %conv.i.2 = zext i8 %2 to i32
  %conv1.i.2 = zext i8 %conv2.i.1 to i32
  %xor.i.2 = xor i32 %conv1.i.2, %conv.i.2
  %conv2.i.2 = trunc i32 %xor.i.2 to i8
  %scevgep.3 = getelementptr i8, i8* %a, i64 3
  %3 = load i8, i8* %scevgep.3, align 1
  %conv.i.3 = zext i8 %3 to i32
  %conv1.i.3 = zext i8 %conv2.i.2 to i32
  %xor.i.3 = xor i32 %conv1.i.3, %conv.i.3
  %conv2.i.3 = trunc i32 %xor.i.3 to i8
  %scevgep.4 = getelementptr i8, i8* %a, i64 4
  %4 = load i8, i8* %scevgep.4, align 1
  %conv.i.4 = zext i8 %4 to i32
  %conv1.i.4 = zext i8 %conv2.i.3 to i32
  %xor.i.4 = xor i32 %conv1.i.4, %conv.i.4
  %conv2.i.4 = trunc i32 %xor.i.4 to i8
  ret i8 %conv2.i.4
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_mult(i8* %a, i8* %b, i8* %c) #0 {
entry:
  %r = alloca [5 x [5 x i8]], align 16
  %call = call zeroext i8 (...) @rand()
  %call1 = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %a, align 1
  %scevgep50.1 = getelementptr i8, i8* %a, i64 1
  %1 = load i8, i8* %scevgep50.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep50.2 = getelementptr i8, i8* %a, i64 2
  %2 = load i8, i8* %scevgep50.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %scevgep50.3 = getelementptr i8, i8* %a, i64 3
  %3 = load i8, i8* %scevgep50.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %scevgep50.4 = getelementptr i8, i8* %a, i64 4
  %4 = load i8, i8* %scevgep50.4, align 1
  %conv.i.i.4 = zext i8 %4 to i32
  %conv1.i.i.4 = zext i8 %conv2.i.i.3 to i32
  %xor.i.i.4 = xor i32 %conv1.i.i.4, %conv.i.i.4
  %conv2.i.i.4 = trunc i32 %xor.i.i.4 to i8
  %conv3 = zext i8 %conv2.i.i.4 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %5 = load i8, i8* %b, align 1
  %scevgep46.1 = getelementptr i8, i8* %b, i64 1
  %6 = load i8, i8* %scevgep46.1, align 1
  %conv.i.i96.1 = zext i8 %6 to i32
  %conv1.i.i97.1 = zext i8 %5 to i32
  %xor.i.i98.1 = xor i32 %conv1.i.i97.1, %conv.i.i96.1
  %conv2.i.i99.1 = trunc i32 %xor.i.i98.1 to i8
  %scevgep46.2 = getelementptr i8, i8* %b, i64 2
  %7 = load i8, i8* %scevgep46.2, align 1
  %conv.i.i96.2 = zext i8 %7 to i32
  %conv1.i.i97.2 = zext i8 %conv2.i.i99.1 to i32
  %xor.i.i98.2 = xor i32 %conv1.i.i97.2, %conv.i.i96.2
  %conv2.i.i99.2 = trunc i32 %xor.i.i98.2 to i8
  %scevgep46.3 = getelementptr i8, i8* %b, i64 3
  %8 = load i8, i8* %scevgep46.3, align 1
  %conv.i.i96.3 = zext i8 %8 to i32
  %conv1.i.i97.3 = zext i8 %conv2.i.i99.2 to i32
  %xor.i.i98.3 = xor i32 %conv1.i.i97.3, %conv.i.i96.3
  %conv2.i.i99.3 = trunc i32 %xor.i.i98.3 to i8
  %scevgep46.4 = getelementptr i8, i8* %b, i64 4
  %9 = load i8, i8* %scevgep46.4, align 1
  %conv.i.i96.4 = zext i8 %9 to i32
  %conv1.i.i97.4 = zext i8 %conv2.i.i99.3 to i32
  %xor.i.i98.4 = xor i32 %conv1.i.i97.4, %conv.i.i96.4
  %conv2.i.i99.4 = trunc i32 %xor.i.i98.4 to i8
  %conv7 = zext i8 %conv2.i.i99.4 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %scevgep23 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 0, i64 1
  %scevgep2324 = bitcast i8* %scevgep23 to [5 x [5 x i8]]*
  %scevgep36 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 1, i64 0
  %scevgep3637 = bitcast i8* %scevgep36 to [5 x [5 x i8]]*
  %call16 = call zeroext i8 (...) @rand()
  store i8 %call16, i8* %scevgep23, align 1
  %10 = load i8, i8* %scevgep23, align 1
  %conv23 = zext i8 %10 to i32
  %11 = load i8, i8* %a, align 1
  %scevgep34 = getelementptr i8, i8* %b, i64 1
  %12 = load i8, i8* %scevgep34, align 1
  %call28 = call zeroext i8 @mult(i8 zeroext %11, i8 zeroext %12)
  %conv29 = zext i8 %call28 to i32
  %xor = xor i32 %conv23, %conv29
  %scevgep35 = getelementptr i8, i8* %a, i64 1
  %13 = load i8, i8* %scevgep35, align 1
  %14 = load i8, i8* %b, align 1
  %call34 = call zeroext i8 @mult(i8 zeroext %13, i8 zeroext %14)
  %conv35 = zext i8 %call34 to i32
  %xor36 = xor i32 %xor, %conv35
  %conv37 = trunc i32 %xor36 to i8
  store i8 %conv37, i8* %scevgep36, align 1
  %scevgep28 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep2324, i64 0, i64 0, i64 1
  %15 = bitcast i8* %scevgep28 to [5 x [5 x i8]]*
  %scevgep41 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep3637, i64 0, i64 1, i64 0
  %16 = bitcast i8* %scevgep41 to [5 x [5 x i8]]*
  %call16.192 = call zeroext i8 (...) @rand()
  store i8 %call16.192, i8* %scevgep28, align 1
  %17 = load i8, i8* %scevgep28, align 1
  %conv23.193 = zext i8 %17 to i32
  %18 = load i8, i8* %a, align 1
  %scevgep34.194 = getelementptr i8, i8* %b, i64 2
  %19 = load i8, i8* %scevgep34.194, align 1
  %call28.195 = call zeroext i8 @mult(i8 zeroext %18, i8 zeroext %19)
  %conv29.196 = zext i8 %call28.195 to i32
  %xor.197 = xor i32 %conv23.193, %conv29.196
  %scevgep35.198 = getelementptr i8, i8* %a, i64 2
  %20 = load i8, i8* %scevgep35.198, align 1
  %21 = load i8, i8* %b, align 1
  %call34.199 = call zeroext i8 @mult(i8 zeroext %20, i8 zeroext %21)
  %conv35.1100 = zext i8 %call34.199 to i32
  %xor36.1101 = xor i32 %xor.197, %conv35.1100
  %conv37.1102 = trunc i32 %xor36.1101 to i8
  store i8 %conv37.1102, i8* %scevgep41, align 1
  %scevgep28.1103 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %15, i64 0, i64 0, i64 1
  %22 = bitcast i8* %scevgep28.1103 to [5 x [5 x i8]]*
  %scevgep41.1104 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %16, i64 0, i64 1, i64 0
  %23 = bitcast i8* %scevgep41.1104 to [5 x [5 x i8]]*
  %call16.2106 = call zeroext i8 (...) @rand()
  store i8 %call16.2106, i8* %scevgep28.1103, align 1
  %24 = load i8, i8* %scevgep28.1103, align 1
  %conv23.2107 = zext i8 %24 to i32
  %25 = load i8, i8* %a, align 1
  %scevgep34.2108 = getelementptr i8, i8* %b, i64 3
  %26 = load i8, i8* %scevgep34.2108, align 1
  %call28.2109 = call zeroext i8 @mult(i8 zeroext %25, i8 zeroext %26)
  %conv29.2110 = zext i8 %call28.2109 to i32
  %xor.2111 = xor i32 %conv23.2107, %conv29.2110
  %scevgep35.2112 = getelementptr i8, i8* %a, i64 3
  %27 = load i8, i8* %scevgep35.2112, align 1
  %28 = load i8, i8* %b, align 1
  %call34.2113 = call zeroext i8 @mult(i8 zeroext %27, i8 zeroext %28)
  %conv35.2114 = zext i8 %call34.2113 to i32
  %xor36.2115 = xor i32 %xor.2111, %conv35.2114
  %conv37.2116 = trunc i32 %xor36.2115 to i8
  store i8 %conv37.2116, i8* %scevgep41.1104, align 1
  %scevgep28.2117 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %22, i64 0, i64 0, i64 1
  %scevgep41.2118 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %23, i64 0, i64 1, i64 0
  %call16.3120 = call zeroext i8 (...) @rand()
  store i8 %call16.3120, i8* %scevgep28.2117, align 1
  %29 = load i8, i8* %scevgep28.2117, align 1
  %conv23.3121 = zext i8 %29 to i32
  %30 = load i8, i8* %a, align 1
  %scevgep34.3122 = getelementptr i8, i8* %b, i64 4
  %31 = load i8, i8* %scevgep34.3122, align 1
  %call28.3123 = call zeroext i8 @mult(i8 zeroext %30, i8 zeroext %31)
  %conv29.3124 = zext i8 %call28.3123 to i32
  %xor.3125 = xor i32 %conv23.3121, %conv29.3124
  %scevgep35.3126 = getelementptr i8, i8* %a, i64 4
  %32 = load i8, i8* %scevgep35.3126, align 1
  %33 = load i8, i8* %b, align 1
  %call34.3127 = call zeroext i8 @mult(i8 zeroext %32, i8 zeroext %33)
  %conv35.3128 = zext i8 %call34.3127 to i32
  %xor36.3129 = xor i32 %xor.3125, %conv35.3128
  %conv37.3130 = trunc i32 %xor36.3129 to i8
  store i8 %conv37.3130, i8* %scevgep41.2118, align 1
  %scevgep26 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep2324, i64 0, i64 1, i64 1
  %34 = bitcast i8* %scevgep26 to [5 x [5 x i8]]*
  %scevgep39 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep3637, i64 0, i64 1, i64 1
  %35 = bitcast i8* %scevgep39 to [5 x [5 x i8]]*
  %arrayidx25.1 = getelementptr inbounds i8, i8* %a, i64 1
  %arrayidx33.1 = getelementptr inbounds i8, i8* %b, i64 1
  %call16.1 = call zeroext i8 (...) @rand()
  store i8 %call16.1, i8* %scevgep26, align 1
  %36 = load i8, i8* %scevgep26, align 1
  %conv23.1 = zext i8 %36 to i32
  %37 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1 = getelementptr i8, i8* %b, i64 2
  %38 = load i8, i8* %scevgep34.1, align 1
  %call28.1 = call zeroext i8 @mult(i8 zeroext %37, i8 zeroext %38)
  %conv29.1 = zext i8 %call28.1 to i32
  %xor.1 = xor i32 %conv23.1, %conv29.1
  %scevgep35.1 = getelementptr i8, i8* %a, i64 2
  %39 = load i8, i8* %scevgep35.1, align 1
  %40 = load i8, i8* %arrayidx33.1, align 1
  %call34.1 = call zeroext i8 @mult(i8 zeroext %39, i8 zeroext %40)
  %conv35.1 = zext i8 %call34.1 to i32
  %xor36.1 = xor i32 %xor.1, %conv35.1
  %conv37.1 = trunc i32 %xor36.1 to i8
  store i8 %conv37.1, i8* %scevgep39, align 1
  %scevgep28.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %34, i64 0, i64 0, i64 1
  %41 = bitcast i8* %scevgep28.1 to [5 x [5 x i8]]*
  %scevgep41.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %35, i64 0, i64 1, i64 0
  %42 = bitcast i8* %scevgep41.1 to [5 x [5 x i8]]*
  %call16.1.1 = call zeroext i8 (...) @rand()
  store i8 %call16.1.1, i8* %scevgep28.1, align 1
  %43 = load i8, i8* %scevgep28.1, align 1
  %conv23.1.1 = zext i8 %43 to i32
  %44 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1.1 = getelementptr i8, i8* %b, i64 3
  %45 = load i8, i8* %scevgep34.1.1, align 1
  %call28.1.1 = call zeroext i8 @mult(i8 zeroext %44, i8 zeroext %45)
  %conv29.1.1 = zext i8 %call28.1.1 to i32
  %xor.1.1 = xor i32 %conv23.1.1, %conv29.1.1
  %scevgep35.1.1 = getelementptr i8, i8* %a, i64 3
  %46 = load i8, i8* %scevgep35.1.1, align 1
  %47 = load i8, i8* %arrayidx33.1, align 1
  %call34.1.1 = call zeroext i8 @mult(i8 zeroext %46, i8 zeroext %47)
  %conv35.1.1 = zext i8 %call34.1.1 to i32
  %xor36.1.1 = xor i32 %xor.1.1, %conv35.1.1
  %conv37.1.1 = trunc i32 %xor36.1.1 to i8
  store i8 %conv37.1.1, i8* %scevgep41.1, align 1
  %scevgep28.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %41, i64 0, i64 0, i64 1
  %scevgep41.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %42, i64 0, i64 1, i64 0
  %call16.1.2 = call zeroext i8 (...) @rand()
  store i8 %call16.1.2, i8* %scevgep28.1.1, align 1
  %48 = load i8, i8* %scevgep28.1.1, align 1
  %conv23.1.2 = zext i8 %48 to i32
  %49 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1.2 = getelementptr i8, i8* %b, i64 4
  %50 = load i8, i8* %scevgep34.1.2, align 1
  %call28.1.2 = call zeroext i8 @mult(i8 zeroext %49, i8 zeroext %50)
  %conv29.1.2 = zext i8 %call28.1.2 to i32
  %xor.1.2 = xor i32 %conv23.1.2, %conv29.1.2
  %scevgep35.1.2 = getelementptr i8, i8* %a, i64 4
  %51 = load i8, i8* %scevgep35.1.2, align 1
  %52 = load i8, i8* %arrayidx33.1, align 1
  %call34.1.2 = call zeroext i8 @mult(i8 zeroext %51, i8 zeroext %52)
  %conv35.1.2 = zext i8 %call34.1.2 to i32
  %xor36.1.2 = xor i32 %xor.1.2, %conv35.1.2
  %conv37.1.2 = trunc i32 %xor36.1.2 to i8
  store i8 %conv37.1.2, i8* %scevgep41.1.1, align 1
  %scevgep26.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %34, i64 0, i64 1, i64 1
  %53 = bitcast i8* %scevgep26.1 to [5 x [5 x i8]]*
  %scevgep39.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %35, i64 0, i64 1, i64 1
  %54 = bitcast i8* %scevgep39.1 to [5 x [5 x i8]]*
  %arrayidx25.2 = getelementptr inbounds i8, i8* %a, i64 2
  %arrayidx33.2 = getelementptr inbounds i8, i8* %b, i64 2
  %call16.2 = call zeroext i8 (...) @rand()
  store i8 %call16.2, i8* %scevgep26.1, align 1
  %55 = load i8, i8* %scevgep26.1, align 1
  %conv23.2 = zext i8 %55 to i32
  %56 = load i8, i8* %arrayidx25.2, align 1
  %scevgep34.2 = getelementptr i8, i8* %b, i64 3
  %57 = load i8, i8* %scevgep34.2, align 1
  %call28.2 = call zeroext i8 @mult(i8 zeroext %56, i8 zeroext %57)
  %conv29.2 = zext i8 %call28.2 to i32
  %xor.2 = xor i32 %conv23.2, %conv29.2
  %scevgep35.2 = getelementptr i8, i8* %a, i64 3
  %58 = load i8, i8* %scevgep35.2, align 1
  %59 = load i8, i8* %arrayidx33.2, align 1
  %call34.2 = call zeroext i8 @mult(i8 zeroext %58, i8 zeroext %59)
  %conv35.2 = zext i8 %call34.2 to i32
  %xor36.2 = xor i32 %xor.2, %conv35.2
  %conv37.2 = trunc i32 %xor36.2 to i8
  store i8 %conv37.2, i8* %scevgep39.1, align 1
  %scevgep28.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %53, i64 0, i64 0, i64 1
  %scevgep41.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %54, i64 0, i64 1, i64 0
  %call16.2.1 = call zeroext i8 (...) @rand()
  store i8 %call16.2.1, i8* %scevgep28.2, align 1
  %60 = load i8, i8* %scevgep28.2, align 1
  %conv23.2.1 = zext i8 %60 to i32
  %61 = load i8, i8* %arrayidx25.2, align 1
  %scevgep34.2.1 = getelementptr i8, i8* %b, i64 4
  %62 = load i8, i8* %scevgep34.2.1, align 1
  %call28.2.1 = call zeroext i8 @mult(i8 zeroext %61, i8 zeroext %62)
  %conv29.2.1 = zext i8 %call28.2.1 to i32
  %xor.2.1 = xor i32 %conv23.2.1, %conv29.2.1
  %scevgep35.2.1 = getelementptr i8, i8* %a, i64 4
  %63 = load i8, i8* %scevgep35.2.1, align 1
  %64 = load i8, i8* %arrayidx33.2, align 1
  %call34.2.1 = call zeroext i8 @mult(i8 zeroext %63, i8 zeroext %64)
  %conv35.2.1 = zext i8 %call34.2.1 to i32
  %xor36.2.1 = xor i32 %xor.2.1, %conv35.2.1
  %conv37.2.1 = trunc i32 %xor36.2.1 to i8
  store i8 %conv37.2.1, i8* %scevgep41.2, align 1
  %scevgep26.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %53, i64 0, i64 1, i64 1
  %scevgep39.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %54, i64 0, i64 1, i64 1
  %arrayidx25.3 = getelementptr inbounds i8, i8* %a, i64 3
  %arrayidx33.3 = getelementptr inbounds i8, i8* %b, i64 3
  %call16.3 = call zeroext i8 (...) @rand()
  store i8 %call16.3, i8* %scevgep26.2, align 1
  %65 = load i8, i8* %scevgep26.2, align 1
  %conv23.3 = zext i8 %65 to i32
  %66 = load i8, i8* %arrayidx25.3, align 1
  %scevgep34.3 = getelementptr i8, i8* %b, i64 4
  %67 = load i8, i8* %scevgep34.3, align 1
  %call28.3 = call zeroext i8 @mult(i8 zeroext %66, i8 zeroext %67)
  %conv29.3 = zext i8 %call28.3 to i32
  %xor.3 = xor i32 %conv23.3, %conv29.3
  %scevgep35.3 = getelementptr i8, i8* %a, i64 4
  %68 = load i8, i8* %scevgep35.3, align 1
  %69 = load i8, i8* %arrayidx33.3, align 1
  %call34.3 = call zeroext i8 @mult(i8 zeroext %68, i8 zeroext %69)
  %conv35.3 = zext i8 %call34.3 to i32
  %xor36.3 = xor i32 %xor.3, %conv35.3
  %conv37.3 = trunc i32 %xor36.3 to i8
  store i8 %conv37.3, i8* %scevgep39.2, align 1
  %70 = load i8, i8* %a, align 1
  %71 = load i8, i8* %b, align 1
  %call54 = call zeroext i8 @mult(i8 zeroext %70, i8 zeroext %71)
  store i8 %call54, i8* %c, align 1
  %scevgep20.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 0, i64 1
  %72 = load i8, i8* %scevgep20.1, align 1
  %conv68.1 = zext i8 %72 to i32
  %73 = load i8, i8* %c, align 1
  %conv71.1 = zext i8 %73 to i32
  %xor72.1 = xor i32 %conv71.1, %conv68.1
  %conv73.1 = trunc i32 %xor72.1 to i8
  store i8 %conv73.1, i8* %c, align 1
  %scevgep20.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 0, i64 2
  %74 = load i8, i8* %scevgep20.2, align 1
  %conv68.2 = zext i8 %74 to i32
  %75 = load i8, i8* %c, align 1
  %conv71.2 = zext i8 %75 to i32
  %xor72.2 = xor i32 %conv71.2, %conv68.2
  %conv73.2 = trunc i32 %xor72.2 to i8
  store i8 %conv73.2, i8* %c, align 1
  %scevgep20.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 0, i64 3
  %76 = load i8, i8* %scevgep20.3, align 1
  %conv68.3 = zext i8 %76 to i32
  %77 = load i8, i8* %c, align 1
  %conv71.3 = zext i8 %77 to i32
  %xor72.3 = xor i32 %conv71.3, %conv68.3
  %conv73.3 = trunc i32 %xor72.3 to i8
  store i8 %conv73.3, i8* %c, align 1
  %scevgep20.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 0, i64 4
  %78 = load i8, i8* %scevgep20.4, align 1
  %conv68.4 = zext i8 %78 to i32
  %79 = load i8, i8* %c, align 1
  %conv71.4 = zext i8 %79 to i32
  %xor72.4 = xor i32 %conv71.4, %conv68.4
  %conv73.4 = trunc i32 %xor72.4 to i8
  store i8 %conv73.4, i8* %c, align 1
  %scevgep19 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 1, i64 0
  %80 = bitcast i8* %scevgep19 to [5 x [5 x i8]]*
  %arrayidx51.1 = getelementptr inbounds i8, i8* %a, i64 1
  %81 = load i8, i8* %arrayidx51.1, align 1
  %arrayidx53.1 = getelementptr inbounds i8, i8* %b, i64 1
  %82 = load i8, i8* %arrayidx53.1, align 1
  %call54.1 = call zeroext i8 @mult(i8 zeroext %81, i8 zeroext %82)
  %arrayidx56.1 = getelementptr inbounds i8, i8* %c, i64 1
  store i8 %call54.1, i8* %arrayidx56.1, align 1
  %arrayidx70.1 = getelementptr inbounds i8, i8* %c, i64 1
  %scevgep20.154 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %80, i64 0, i64 0, i64 0
  %83 = load i8, i8* %scevgep20.154, align 1
  %conv68.155 = zext i8 %83 to i32
  %84 = load i8, i8* %arrayidx70.1, align 1
  %conv71.156 = zext i8 %84 to i32
  %xor72.157 = xor i32 %conv71.156, %conv68.155
  %conv73.158 = trunc i32 %xor72.157 to i8
  store i8 %conv73.158, i8* %arrayidx70.1, align 1
  %scevgep20.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %80, i64 0, i64 0, i64 2
  %85 = load i8, i8* %scevgep20.2.1, align 1
  %conv68.2.1 = zext i8 %85 to i32
  %86 = load i8, i8* %arrayidx70.1, align 1
  %conv71.2.1 = zext i8 %86 to i32
  %xor72.2.1 = xor i32 %conv71.2.1, %conv68.2.1
  %conv73.2.1 = trunc i32 %xor72.2.1 to i8
  store i8 %conv73.2.1, i8* %arrayidx70.1, align 1
  %scevgep20.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %80, i64 0, i64 0, i64 3
  %87 = load i8, i8* %scevgep20.3.1, align 1
  %conv68.3.1 = zext i8 %87 to i32
  %88 = load i8, i8* %arrayidx70.1, align 1
  %conv71.3.1 = zext i8 %88 to i32
  %xor72.3.1 = xor i32 %conv71.3.1, %conv68.3.1
  %conv73.3.1 = trunc i32 %xor72.3.1 to i8
  store i8 %conv73.3.1, i8* %arrayidx70.1, align 1
  %scevgep20.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %80, i64 0, i64 0, i64 4
  %89 = load i8, i8* %scevgep20.4.1, align 1
  %conv68.4.1 = zext i8 %89 to i32
  %90 = load i8, i8* %arrayidx70.1, align 1
  %conv71.4.1 = zext i8 %90 to i32
  %xor72.4.1 = xor i32 %conv71.4.1, %conv68.4.1
  %conv73.4.1 = trunc i32 %xor72.4.1 to i8
  store i8 %conv73.4.1, i8* %arrayidx70.1, align 1
  %scevgep19.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %80, i64 0, i64 1, i64 0
  %91 = bitcast i8* %scevgep19.1 to [5 x [5 x i8]]*
  %arrayidx51.2 = getelementptr inbounds i8, i8* %a, i64 2
  %92 = load i8, i8* %arrayidx51.2, align 1
  %arrayidx53.2 = getelementptr inbounds i8, i8* %b, i64 2
  %93 = load i8, i8* %arrayidx53.2, align 1
  %call54.2 = call zeroext i8 @mult(i8 zeroext %92, i8 zeroext %93)
  %arrayidx56.2 = getelementptr inbounds i8, i8* %c, i64 2
  store i8 %call54.2, i8* %arrayidx56.2, align 1
  %arrayidx70.2 = getelementptr inbounds i8, i8* %c, i64 2
  %scevgep20.264 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %91, i64 0, i64 0, i64 0
  %94 = load i8, i8* %scevgep20.264, align 1
  %conv68.265 = zext i8 %94 to i32
  %95 = load i8, i8* %arrayidx70.2, align 1
  %conv71.266 = zext i8 %95 to i32
  %xor72.267 = xor i32 %conv71.266, %conv68.265
  %conv73.268 = trunc i32 %xor72.267 to i8
  store i8 %conv73.268, i8* %arrayidx70.2, align 1
  %scevgep20.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %91, i64 0, i64 0, i64 1
  %96 = load i8, i8* %scevgep20.1.2, align 1
  %conv68.1.2 = zext i8 %96 to i32
  %97 = load i8, i8* %arrayidx70.2, align 1
  %conv71.1.2 = zext i8 %97 to i32
  %xor72.1.2 = xor i32 %conv71.1.2, %conv68.1.2
  %conv73.1.2 = trunc i32 %xor72.1.2 to i8
  store i8 %conv73.1.2, i8* %arrayidx70.2, align 1
  %scevgep20.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %91, i64 0, i64 0, i64 3
  %98 = load i8, i8* %scevgep20.3.2, align 1
  %conv68.3.2 = zext i8 %98 to i32
  %99 = load i8, i8* %arrayidx70.2, align 1
  %conv71.3.2 = zext i8 %99 to i32
  %xor72.3.2 = xor i32 %conv71.3.2, %conv68.3.2
  %conv73.3.2 = trunc i32 %xor72.3.2 to i8
  store i8 %conv73.3.2, i8* %arrayidx70.2, align 1
  %scevgep20.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %91, i64 0, i64 0, i64 4
  %100 = load i8, i8* %scevgep20.4.2, align 1
  %conv68.4.2 = zext i8 %100 to i32
  %101 = load i8, i8* %arrayidx70.2, align 1
  %conv71.4.2 = zext i8 %101 to i32
  %xor72.4.2 = xor i32 %conv71.4.2, %conv68.4.2
  %conv73.4.2 = trunc i32 %xor72.4.2 to i8
  store i8 %conv73.4.2, i8* %arrayidx70.2, align 1
  %scevgep19.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %91, i64 0, i64 1, i64 0
  %102 = bitcast i8* %scevgep19.2 to [5 x [5 x i8]]*
  %arrayidx51.3 = getelementptr inbounds i8, i8* %a, i64 3
  %103 = load i8, i8* %arrayidx51.3, align 1
  %arrayidx53.3 = getelementptr inbounds i8, i8* %b, i64 3
  %104 = load i8, i8* %arrayidx53.3, align 1
  %call54.3 = call zeroext i8 @mult(i8 zeroext %103, i8 zeroext %104)
  %arrayidx56.3 = getelementptr inbounds i8, i8* %c, i64 3
  store i8 %call54.3, i8* %arrayidx56.3, align 1
  %arrayidx70.3 = getelementptr inbounds i8, i8* %c, i64 3
  %scevgep20.374 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %102, i64 0, i64 0, i64 0
  %105 = load i8, i8* %scevgep20.374, align 1
  %conv68.375 = zext i8 %105 to i32
  %106 = load i8, i8* %arrayidx70.3, align 1
  %conv71.376 = zext i8 %106 to i32
  %xor72.377 = xor i32 %conv71.376, %conv68.375
  %conv73.378 = trunc i32 %xor72.377 to i8
  store i8 %conv73.378, i8* %arrayidx70.3, align 1
  %scevgep20.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %102, i64 0, i64 0, i64 1
  %107 = load i8, i8* %scevgep20.1.3, align 1
  %conv68.1.3 = zext i8 %107 to i32
  %108 = load i8, i8* %arrayidx70.3, align 1
  %conv71.1.3 = zext i8 %108 to i32
  %xor72.1.3 = xor i32 %conv71.1.3, %conv68.1.3
  %conv73.1.3 = trunc i32 %xor72.1.3 to i8
  store i8 %conv73.1.3, i8* %arrayidx70.3, align 1
  %scevgep20.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %102, i64 0, i64 0, i64 2
  %109 = load i8, i8* %scevgep20.2.3, align 1
  %conv68.2.3 = zext i8 %109 to i32
  %110 = load i8, i8* %arrayidx70.3, align 1
  %conv71.2.3 = zext i8 %110 to i32
  %xor72.2.3 = xor i32 %conv71.2.3, %conv68.2.3
  %conv73.2.3 = trunc i32 %xor72.2.3 to i8
  store i8 %conv73.2.3, i8* %arrayidx70.3, align 1
  %scevgep20.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %102, i64 0, i64 0, i64 4
  %111 = load i8, i8* %scevgep20.4.3, align 1
  %conv68.4.3 = zext i8 %111 to i32
  %112 = load i8, i8* %arrayidx70.3, align 1
  %conv71.4.3 = zext i8 %112 to i32
  %xor72.4.3 = xor i32 %conv71.4.3, %conv68.4.3
  %conv73.4.3 = trunc i32 %xor72.4.3 to i8
  store i8 %conv73.4.3, i8* %arrayidx70.3, align 1
  %scevgep19.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %102, i64 0, i64 1, i64 0
  %113 = bitcast i8* %scevgep19.3 to [5 x [5 x i8]]*
  %arrayidx51.4 = getelementptr inbounds i8, i8* %a, i64 4
  %114 = load i8, i8* %arrayidx51.4, align 1
  %arrayidx53.4 = getelementptr inbounds i8, i8* %b, i64 4
  %115 = load i8, i8* %arrayidx53.4, align 1
  %call54.4 = call zeroext i8 @mult(i8 zeroext %114, i8 zeroext %115)
  %arrayidx56.4 = getelementptr inbounds i8, i8* %c, i64 4
  store i8 %call54.4, i8* %arrayidx56.4, align 1
  %arrayidx70.4 = getelementptr inbounds i8, i8* %c, i64 4
  %scevgep20.484 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %113, i64 0, i64 0, i64 0
  %116 = load i8, i8* %scevgep20.484, align 1
  %conv68.485 = zext i8 %116 to i32
  %117 = load i8, i8* %arrayidx70.4, align 1
  %conv71.486 = zext i8 %117 to i32
  %xor72.487 = xor i32 %conv71.486, %conv68.485
  %conv73.488 = trunc i32 %xor72.487 to i8
  store i8 %conv73.488, i8* %arrayidx70.4, align 1
  %scevgep20.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %113, i64 0, i64 0, i64 1
  %118 = load i8, i8* %scevgep20.1.4, align 1
  %conv68.1.4 = zext i8 %118 to i32
  %119 = load i8, i8* %arrayidx70.4, align 1
  %conv71.1.4 = zext i8 %119 to i32
  %xor72.1.4 = xor i32 %conv71.1.4, %conv68.1.4
  %conv73.1.4 = trunc i32 %xor72.1.4 to i8
  store i8 %conv73.1.4, i8* %arrayidx70.4, align 1
  %scevgep20.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %113, i64 0, i64 0, i64 2
  %120 = load i8, i8* %scevgep20.2.4, align 1
  %conv68.2.4 = zext i8 %120 to i32
  %121 = load i8, i8* %arrayidx70.4, align 1
  %conv71.2.4 = zext i8 %121 to i32
  %xor72.2.4 = xor i32 %conv71.2.4, %conv68.2.4
  %conv73.2.4 = trunc i32 %xor72.2.4 to i8
  store i8 %conv73.2.4, i8* %arrayidx70.4, align 1
  %scevgep20.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %113, i64 0, i64 0, i64 3
  %122 = load i8, i8* %scevgep20.3.4, align 1
  %conv68.3.4 = zext i8 %122 to i32
  %123 = load i8, i8* %arrayidx70.4, align 1
  %conv71.3.4 = zext i8 %123 to i32
  %xor72.3.4 = xor i32 %conv71.3.4, %conv68.3.4
  %conv73.3.4 = trunc i32 %xor72.3.4 to i8
  store i8 %conv73.3.4, i8* %arrayidx70.4, align 1
  %call80 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv81 = zext i8 %call80 to i32
  %124 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %125 = load i8, i8* %scevgep.1, align 1
  %conv.i.i113.1 = zext i8 %125 to i32
  %conv1.i.i114.1 = zext i8 %124 to i32
  %xor.i.i115.1 = xor i32 %conv1.i.i114.1, %conv.i.i113.1
  %conv2.i.i116.1 = trunc i32 %xor.i.i115.1 to i8
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  %126 = load i8, i8* %scevgep.2, align 1
  %conv.i.i113.2 = zext i8 %126 to i32
  %conv1.i.i114.2 = zext i8 %conv2.i.i116.1 to i32
  %xor.i.i115.2 = xor i32 %conv1.i.i114.2, %conv.i.i113.2
  %conv2.i.i116.2 = trunc i32 %xor.i.i115.2 to i8
  %scevgep.3 = getelementptr i8, i8* %c, i64 3
  %127 = load i8, i8* %scevgep.3, align 1
  %conv.i.i113.3 = zext i8 %127 to i32
  %conv1.i.i114.3 = zext i8 %conv2.i.i116.2 to i32
  %xor.i.i115.3 = xor i32 %conv1.i.i114.3, %conv.i.i113.3
  %conv2.i.i116.3 = trunc i32 %xor.i.i115.3 to i8
  %scevgep.4 = getelementptr i8, i8* %c, i64 4
  %128 = load i8, i8* %scevgep.4, align 1
  %conv.i.i113.4 = zext i8 %128 to i32
  %conv1.i.i114.4 = zext i8 %conv2.i.i116.3 to i32
  %xor.i.i115.4 = xor i32 %conv1.i.i114.4, %conv.i.i113.4
  %conv2.i.i116.4 = trunc i32 %xor.i.i115.4 to i8
  %conv83 = zext i8 %conv2.i.i116.4 to i32
  %cmp84 = icmp eq i32 %conv81, %conv83
  call void @assert(i1 zeroext %cmp84)
  ret void
}

declare dso_local zeroext i8 @rand(...) #1

declare dso_local void @assume(i1 zeroext) #1

declare dso_local zeroext i8 @mult(i8 zeroext, i8 zeroext) #1

declare dso_local void @assert(i1 zeroext) #1

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @refresh_masks(i8* %x) #0 {
entry:
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %scevgep12.1 = getelementptr i8, i8* %x, i64 1
  %1 = load i8, i8* %scevgep12.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep12.2 = getelementptr i8, i8* %x, i64 2
  %2 = load i8, i8* %scevgep12.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %scevgep12.3 = getelementptr i8, i8* %x, i64 3
  %3 = load i8, i8* %scevgep12.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %scevgep12.4 = getelementptr i8, i8* %x, i64 4
  %4 = load i8, i8* %scevgep12.4, align 1
  %conv.i.i.4 = zext i8 %4 to i32
  %conv1.i.i.4 = zext i8 %conv2.i.i.3 to i32
  %xor.i.i.4 = xor i32 %conv1.i.i.4, %conv.i.i.4
  %conv2.i.i.4 = trunc i32 %xor.i.i.4 to i8
  %conv2 = zext i8 %conv2.i.i.4 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %call7 = call zeroext i8 (...) @rand()
  %conv8 = zext i8 %call7 to i32
  %5 = load i8, i8* %x, align 1
  %conv9 = zext i8 %5 to i32
  %xor = xor i32 %conv9, %conv8
  %conv10 = trunc i32 %xor to i8
  store i8 %conv10, i8* %x, align 1
  %conv11 = zext i8 %call7 to i32
  %scevgep8 = getelementptr i8, i8* %x, i64 1
  %6 = load i8, i8* %scevgep8, align 1
  %conv13 = zext i8 %6 to i32
  %xor14 = xor i32 %conv13, %conv11
  %conv15 = trunc i32 %xor14 to i8
  store i8 %conv15, i8* %scevgep8, align 1
  %call7.1 = call zeroext i8 (...) @rand()
  %conv8.1 = zext i8 %call7.1 to i32
  %7 = load i8, i8* %x, align 1
  %conv9.1 = zext i8 %7 to i32
  %xor.1 = xor i32 %conv9.1, %conv8.1
  %conv10.1 = trunc i32 %xor.1 to i8
  store i8 %conv10.1, i8* %x, align 1
  %conv11.1 = zext i8 %call7.1 to i32
  %scevgep8.1 = getelementptr i8, i8* %x, i64 2
  %8 = load i8, i8* %scevgep8.1, align 1
  %conv13.1 = zext i8 %8 to i32
  %xor14.1 = xor i32 %conv13.1, %conv11.1
  %conv15.1 = trunc i32 %xor14.1 to i8
  store i8 %conv15.1, i8* %scevgep8.1, align 1
  %call7.2 = call zeroext i8 (...) @rand()
  %conv8.2 = zext i8 %call7.2 to i32
  %9 = load i8, i8* %x, align 1
  %conv9.2 = zext i8 %9 to i32
  %xor.2 = xor i32 %conv9.2, %conv8.2
  %conv10.2 = trunc i32 %xor.2 to i8
  store i8 %conv10.2, i8* %x, align 1
  %conv11.2 = zext i8 %call7.2 to i32
  %scevgep8.2 = getelementptr i8, i8* %x, i64 3
  %10 = load i8, i8* %scevgep8.2, align 1
  %conv13.2 = zext i8 %10 to i32
  %xor14.2 = xor i32 %conv13.2, %conv11.2
  %conv15.2 = trunc i32 %xor14.2 to i8
  store i8 %conv15.2, i8* %scevgep8.2, align 1
  %call7.3 = call zeroext i8 (...) @rand()
  %conv8.3 = zext i8 %call7.3 to i32
  %11 = load i8, i8* %x, align 1
  %conv9.3 = zext i8 %11 to i32
  %xor.3 = xor i32 %conv9.3, %conv8.3
  %conv10.3 = trunc i32 %xor.3 to i8
  store i8 %conv10.3, i8* %x, align 1
  %conv11.3 = zext i8 %call7.3 to i32
  %scevgep8.3 = getelementptr i8, i8* %x, i64 4
  %12 = load i8, i8* %scevgep8.3, align 1
  %conv13.3 = zext i8 %12 to i32
  %xor14.3 = xor i32 %conv13.3, %conv11.3
  %conv15.3 = trunc i32 %xor14.3 to i8
  store i8 %conv15.3, i8* %scevgep8.3, align 1
  %conv16 = zext i8 %call to i32
  %13 = load i8, i8* %x, align 1
  %scevgep.1 = getelementptr i8, i8* %x, i64 1
  %14 = load i8, i8* %scevgep.1, align 1
  %conv.i.i31.1 = zext i8 %14 to i32
  %conv1.i.i32.1 = zext i8 %13 to i32
  %xor.i.i33.1 = xor i32 %conv1.i.i32.1, %conv.i.i31.1
  %conv2.i.i34.1 = trunc i32 %xor.i.i33.1 to i8
  %scevgep.2 = getelementptr i8, i8* %x, i64 2
  %15 = load i8, i8* %scevgep.2, align 1
  %conv.i.i31.2 = zext i8 %15 to i32
  %conv1.i.i32.2 = zext i8 %conv2.i.i34.1 to i32
  %xor.i.i33.2 = xor i32 %conv1.i.i32.2, %conv.i.i31.2
  %conv2.i.i34.2 = trunc i32 %xor.i.i33.2 to i8
  %scevgep.3 = getelementptr i8, i8* %x, i64 3
  %16 = load i8, i8* %scevgep.3, align 1
  %conv.i.i31.3 = zext i8 %16 to i32
  %conv1.i.i32.3 = zext i8 %conv2.i.i34.2 to i32
  %xor.i.i33.3 = xor i32 %conv1.i.i32.3, %conv.i.i31.3
  %conv2.i.i34.3 = trunc i32 %xor.i.i33.3 to i8
  %scevgep.4 = getelementptr i8, i8* %x, i64 4
  %17 = load i8, i8* %scevgep.4, align 1
  %conv.i.i31.4 = zext i8 %17 to i32
  %conv1.i.i32.4 = zext i8 %conv2.i.i34.3 to i32
  %xor.i.i33.4 = xor i32 %conv1.i.i32.4, %conv.i.i31.4
  %conv2.i.i34.4 = trunc i32 %xor.i.i33.4 to i8
  %conv18 = zext i8 %conv2.i.i34.4 to i32
  %cmp19 = icmp eq i32 %conv16, %conv18
  call void @assert(i1 zeroext %cmp19)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @square(i8 zeroext %x) #2 {
entry:
  %call = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x)
  ret i8 %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @exp4(i8 zeroext %x) #2 {
entry:
  %call = call zeroext i8 @square(i8 zeroext %x)
  %call1 = call zeroext i8 @square(i8 zeroext %call)
  ret i8 %call1
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @exp16(i8 zeroext %x) #2 {
entry:
  %call = call zeroext i8 @exp4(i8 zeroext %x)
  %call1 = call zeroext i8 @exp4(i8 zeroext %call)
  ret i8 %call1
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @exp254(i8 zeroext %x) #0 {
entry:
  %call = call zeroext i8 @square(i8 zeroext %x)
  %call1 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %x)
  %call2 = call zeroext i8 @exp4(i8 zeroext %call1)
  %call3 = call zeroext i8 @mult(i8 zeroext %call1, i8 zeroext %call2)
  %call4 = call zeroext i8 @exp16(i8 zeroext %call3)
  %call5 = call zeroext i8 @mult(i8 zeroext %call4, i8 zeroext %call2)
  %call6 = call zeroext i8 @mult(i8 zeroext %call5, i8 zeroext %call)
  ret i8 %call6
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_exp254(i8* %x, i8* %y) #0 {
entry:
  %r.i = alloca [5 x [5 x i8]], align 16
  %z = alloca [5 x i8], align 1
  %w = alloca [5 x i8], align 1
  %u = alloca [5 x i8], align 1
  %v = alloca [5 x i8], align 1
  %m = alloca [5 x i8], align 1
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %scevgep282.1 = getelementptr i8, i8* %x, i64 1
  %1 = load i8, i8* %scevgep282.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep282.2 = getelementptr i8, i8* %x, i64 2
  %2 = load i8, i8* %scevgep282.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %scevgep282.3 = getelementptr i8, i8* %x, i64 3
  %3 = load i8, i8* %scevgep282.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %scevgep282.4 = getelementptr i8, i8* %x, i64 4
  %4 = load i8, i8* %scevgep282.4, align 1
  %conv.i.i.4 = zext i8 %4 to i32
  %conv1.i.i.4 = zext i8 %conv2.i.i.3 to i32
  %xor.i.i.4 = xor i32 %conv1.i.i.4, %conv.i.i.4
  %conv2.i.i.4 = trunc i32 %xor.i.i.4 to i8
  %conv2 = zext i8 %conv2.i.i.4 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %5 = load i8, i8* %x, align 1
  %call.i = call zeroext i8 @square(i8 zeroext %5) #3
  %scevgep278 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 0
  store i8 %call.i, i8* %scevgep278, align 1
  %scevgep277.1 = getelementptr i8, i8* %x, i64 1
  %6 = load i8, i8* %scevgep277.1, align 1
  %call.i.1 = call zeroext i8 @square(i8 zeroext %6) #3
  %scevgep278.1 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 1
  store i8 %call.i.1, i8* %scevgep278.1, align 1
  %scevgep277.2 = getelementptr i8, i8* %x, i64 2
  %7 = load i8, i8* %scevgep277.2, align 1
  %call.i.2 = call zeroext i8 @square(i8 zeroext %7) #3
  %scevgep278.2 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 2
  store i8 %call.i.2, i8* %scevgep278.2, align 1
  %scevgep277.3 = getelementptr i8, i8* %x, i64 3
  %8 = load i8, i8* %scevgep277.3, align 1
  %call.i.3 = call zeroext i8 @square(i8 zeroext %8) #3
  %scevgep278.3 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 3
  store i8 %call.i.3, i8* %scevgep278.3, align 1
  %scevgep277.4 = getelementptr i8, i8* %x, i64 4
  %9 = load i8, i8* %scevgep277.4, align 1
  %call.i.4 = call zeroext i8 @square(i8 zeroext %9) #3
  %scevgep278.4 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 4
  store i8 %call.i.4, i8* %scevgep278.4, align 1
  %arraydecay4 = getelementptr inbounds [5 x i8], [5 x i8]* %z, i64 0, i64 0
  %call.i28 = call zeroext i8 (...) @rand() #3
  %conv.i = zext i8 %call.i28 to i32
  %scevgep273 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 0
  %10 = load i8, i8* %scevgep273, align 1
  %scevgep273.1 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 1
  %11 = load i8, i8* %scevgep273.1, align 1
  %conv.i.i.i.1 = zext i8 %11 to i32
  %conv1.i.i.i.1 = zext i8 %10 to i32
  %xor.i.i.i.1 = xor i32 %conv1.i.i.i.1, %conv.i.i.i.1
  %conv2.i.i.i.1 = trunc i32 %xor.i.i.i.1 to i8
  %scevgep273.2 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 2
  %12 = load i8, i8* %scevgep273.2, align 1
  %conv.i.i.i.2 = zext i8 %12 to i32
  %conv1.i.i.i.2 = zext i8 %conv2.i.i.i.1 to i32
  %xor.i.i.i.2 = xor i32 %conv1.i.i.i.2, %conv.i.i.i.2
  %conv2.i.i.i.2 = trunc i32 %xor.i.i.i.2 to i8
  %scevgep273.3 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 3
  %13 = load i8, i8* %scevgep273.3, align 1
  %conv.i.i.i.3 = zext i8 %13 to i32
  %conv1.i.i.i.3 = zext i8 %conv2.i.i.i.2 to i32
  %xor.i.i.i.3 = xor i32 %conv1.i.i.i.3, %conv.i.i.i.3
  %conv2.i.i.i.3 = trunc i32 %xor.i.i.i.3 to i8
  %scevgep273.4 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 4
  %14 = load i8, i8* %scevgep273.4, align 1
  %conv.i.i.i.4 = zext i8 %14 to i32
  %conv1.i.i.i.4 = zext i8 %conv2.i.i.i.3 to i32
  %xor.i.i.i.4 = xor i32 %conv1.i.i.i.4, %conv.i.i.i.4
  %conv2.i.i.i.4 = trunc i32 %xor.i.i.i.4 to i8
  %conv2.i = zext i8 %conv2.i.i.i.4 to i32
  %cmp.i29 = icmp eq i32 %conv.i, %conv2.i
  call void @assume(i1 zeroext %cmp.i29) #3
  %call7.i = call zeroext i8 (...) @rand() #3
  %conv8.i = zext i8 %call7.i to i32
  %15 = load i8, i8* %arraydecay4, align 1
  %conv9.i = zext i8 %15 to i32
  %xor.i = xor i32 %conv9.i, %conv8.i
  %conv10.i = trunc i32 %xor.i to i8
  store i8 %conv10.i, i8* %arraydecay4, align 1
  %conv11.i = zext i8 %call7.i to i32
  %scevgep269 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 1
  %16 = load i8, i8* %scevgep269, align 1
  %conv13.i = zext i8 %16 to i32
  %xor14.i = xor i32 %conv13.i, %conv11.i
  %conv15.i = trunc i32 %xor14.i to i8
  store i8 %conv15.i, i8* %scevgep269, align 1
  %call7.i.1 = call zeroext i8 (...) @rand() #3
  %conv8.i.1 = zext i8 %call7.i.1 to i32
  %17 = load i8, i8* %arraydecay4, align 1
  %conv9.i.1 = zext i8 %17 to i32
  %xor.i.1 = xor i32 %conv9.i.1, %conv8.i.1
  %conv10.i.1 = trunc i32 %xor.i.1 to i8
  store i8 %conv10.i.1, i8* %arraydecay4, align 1
  %conv11.i.1 = zext i8 %call7.i.1 to i32
  %scevgep269.1 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 2
  %18 = load i8, i8* %scevgep269.1, align 1
  %conv13.i.1 = zext i8 %18 to i32
  %xor14.i.1 = xor i32 %conv13.i.1, %conv11.i.1
  %conv15.i.1 = trunc i32 %xor14.i.1 to i8
  store i8 %conv15.i.1, i8* %scevgep269.1, align 1
  %call7.i.2 = call zeroext i8 (...) @rand() #3
  %conv8.i.2 = zext i8 %call7.i.2 to i32
  %19 = load i8, i8* %arraydecay4, align 1
  %conv9.i.2 = zext i8 %19 to i32
  %xor.i.2 = xor i32 %conv9.i.2, %conv8.i.2
  %conv10.i.2 = trunc i32 %xor.i.2 to i8
  store i8 %conv10.i.2, i8* %arraydecay4, align 1
  %conv11.i.2 = zext i8 %call7.i.2 to i32
  %scevgep269.2 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 3
  %20 = load i8, i8* %scevgep269.2, align 1
  %conv13.i.2 = zext i8 %20 to i32
  %xor14.i.2 = xor i32 %conv13.i.2, %conv11.i.2
  %conv15.i.2 = trunc i32 %xor14.i.2 to i8
  store i8 %conv15.i.2, i8* %scevgep269.2, align 1
  %call7.i.3 = call zeroext i8 (...) @rand() #3
  %conv8.i.3 = zext i8 %call7.i.3 to i32
  %21 = load i8, i8* %arraydecay4, align 1
  %conv9.i.3 = zext i8 %21 to i32
  %xor.i.3 = xor i32 %conv9.i.3, %conv8.i.3
  %conv10.i.3 = trunc i32 %xor.i.3 to i8
  store i8 %conv10.i.3, i8* %arraydecay4, align 1
  %conv11.i.3 = zext i8 %call7.i.3 to i32
  %scevgep269.3 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 4
  %22 = load i8, i8* %scevgep269.3, align 1
  %conv13.i.3 = zext i8 %22 to i32
  %xor14.i.3 = xor i32 %conv13.i.3, %conv11.i.3
  %conv15.i.3 = trunc i32 %xor14.i.3 to i8
  store i8 %conv15.i.3, i8* %scevgep269.3, align 1
  %conv16.i = zext i8 %call.i28 to i32
  %scevgep265 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 0
  %23 = load i8, i8* %scevgep265, align 1
  %scevgep265.1 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 1
  %24 = load i8, i8* %scevgep265.1, align 1
  %conv.i.i31.i.1 = zext i8 %24 to i32
  %conv1.i.i32.i.1 = zext i8 %23 to i32
  %xor.i.i33.i.1 = xor i32 %conv1.i.i32.i.1, %conv.i.i31.i.1
  %conv2.i.i34.i.1 = trunc i32 %xor.i.i33.i.1 to i8
  %scevgep265.2 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 2
  %25 = load i8, i8* %scevgep265.2, align 1
  %conv.i.i31.i.2 = zext i8 %25 to i32
  %conv1.i.i32.i.2 = zext i8 %conv2.i.i34.i.1 to i32
  %xor.i.i33.i.2 = xor i32 %conv1.i.i32.i.2, %conv.i.i31.i.2
  %conv2.i.i34.i.2 = trunc i32 %xor.i.i33.i.2 to i8
  %scevgep265.3 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 3
  %26 = load i8, i8* %scevgep265.3, align 1
  %conv.i.i31.i.3 = zext i8 %26 to i32
  %conv1.i.i32.i.3 = zext i8 %conv2.i.i34.i.2 to i32
  %xor.i.i33.i.3 = xor i32 %conv1.i.i32.i.3, %conv.i.i31.i.3
  %conv2.i.i34.i.3 = trunc i32 %xor.i.i33.i.3 to i8
  %scevgep265.4 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 4
  %27 = load i8, i8* %scevgep265.4, align 1
  %conv.i.i31.i.4 = zext i8 %27 to i32
  %conv1.i.i32.i.4 = zext i8 %conv2.i.i34.i.3 to i32
  %xor.i.i33.i.4 = xor i32 %conv1.i.i32.i.4, %conv.i.i31.i.4
  %conv2.i.i34.i.4 = trunc i32 %xor.i.i33.i.4 to i8
  %conv18.i = zext i8 %conv2.i.i34.i.4 to i32
  %cmp19.i = icmp eq i32 %conv16.i, %conv18.i
  call void @assert(i1 zeroext %cmp19.i) #3
  %arraydecay5 = getelementptr inbounds [5 x i8], [5 x i8]* %z, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [5 x i8], [5 x i8]* %u, i64 0, i64 0
  %call.i41 = call zeroext i8 (...) @rand() #3
  %call1.i = call zeroext i8 (...) @rand() #3
  %conv.i42 = zext i8 %call.i41 to i32
  %scevgep261 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 0
  %28 = load i8, i8* %scevgep261, align 1
  %scevgep261.1 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 1
  %29 = load i8, i8* %scevgep261.1, align 1
  %conv.i.i.i48.1 = zext i8 %29 to i32
  %conv1.i.i.i49.1 = zext i8 %28 to i32
  %xor.i.i.i50.1 = xor i32 %conv1.i.i.i49.1, %conv.i.i.i48.1
  %conv2.i.i.i51.1 = trunc i32 %xor.i.i.i50.1 to i8
  %scevgep261.2 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 2
  %30 = load i8, i8* %scevgep261.2, align 1
  %conv.i.i.i48.2 = zext i8 %30 to i32
  %conv1.i.i.i49.2 = zext i8 %conv2.i.i.i51.1 to i32
  %xor.i.i.i50.2 = xor i32 %conv1.i.i.i49.2, %conv.i.i.i48.2
  %conv2.i.i.i51.2 = trunc i32 %xor.i.i.i50.2 to i8
  %scevgep261.3 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 3
  %31 = load i8, i8* %scevgep261.3, align 1
  %conv.i.i.i48.3 = zext i8 %31 to i32
  %conv1.i.i.i49.3 = zext i8 %conv2.i.i.i51.2 to i32
  %xor.i.i.i50.3 = xor i32 %conv1.i.i.i49.3, %conv.i.i.i48.3
  %conv2.i.i.i51.3 = trunc i32 %xor.i.i.i50.3 to i8
  %scevgep261.4 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 4
  %32 = load i8, i8* %scevgep261.4, align 1
  %conv.i.i.i48.4 = zext i8 %32 to i32
  %conv1.i.i.i49.4 = zext i8 %conv2.i.i.i51.3 to i32
  %xor.i.i.i50.4 = xor i32 %conv1.i.i.i49.4, %conv.i.i.i48.4
  %conv2.i.i.i51.4 = trunc i32 %xor.i.i.i50.4 to i8
  %conv3.i = zext i8 %conv2.i.i.i51.4 to i32
  %cmp.i54 = icmp eq i32 %conv.i42, %conv3.i
  call void @assume(i1 zeroext %cmp.i54) #3
  %conv5.i = zext i8 %call1.i to i32
  %33 = load i8, i8* %x, align 1
  %scevgep257.1 = getelementptr i8, i8* %x, i64 1
  %34 = load i8, i8* %scevgep257.1, align 1
  %conv.i.i96.i.1 = zext i8 %34 to i32
  %conv1.i.i97.i.1 = zext i8 %33 to i32
  %xor.i.i98.i.1 = xor i32 %conv1.i.i97.i.1, %conv.i.i96.i.1
  %conv2.i.i99.i.1 = trunc i32 %xor.i.i98.i.1 to i8
  %scevgep257.2 = getelementptr i8, i8* %x, i64 2
  %35 = load i8, i8* %scevgep257.2, align 1
  %conv.i.i96.i.2 = zext i8 %35 to i32
  %conv1.i.i97.i.2 = zext i8 %conv2.i.i99.i.1 to i32
  %xor.i.i98.i.2 = xor i32 %conv1.i.i97.i.2, %conv.i.i96.i.2
  %conv2.i.i99.i.2 = trunc i32 %xor.i.i98.i.2 to i8
  %scevgep257.3 = getelementptr i8, i8* %x, i64 3
  %36 = load i8, i8* %scevgep257.3, align 1
  %conv.i.i96.i.3 = zext i8 %36 to i32
  %conv1.i.i97.i.3 = zext i8 %conv2.i.i99.i.2 to i32
  %xor.i.i98.i.3 = xor i32 %conv1.i.i97.i.3, %conv.i.i96.i.3
  %conv2.i.i99.i.3 = trunc i32 %xor.i.i98.i.3 to i8
  %scevgep257.4 = getelementptr i8, i8* %x, i64 4
  %37 = load i8, i8* %scevgep257.4, align 1
  %conv.i.i96.i.4 = zext i8 %37 to i32
  %conv1.i.i97.i.4 = zext i8 %conv2.i.i99.i.3 to i32
  %xor.i.i98.i.4 = xor i32 %conv1.i.i97.i.4, %conv.i.i96.i.4
  %conv2.i.i99.i.4 = trunc i32 %xor.i.i98.i.4 to i8
  %conv7.i = zext i8 %conv2.i.i99.i.4 to i32
  %cmp8.i = icmp eq i32 %conv5.i, %conv7.i
  call void @assume(i1 zeroext %cmp8.i) #3
  %scevgep234 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %scevgep234235 = bitcast i8* %scevgep234 to [5 x [5 x i8]]*
  %scevgep247 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 1, i64 0
  %scevgep247248 = bitcast i8* %scevgep247 to [5 x [5 x i8]]*
  %call16.i = call zeroext i8 (...) @rand() #3
  store i8 %call16.i, i8* %scevgep234, align 1
  %38 = load i8, i8* %scevgep234, align 1
  %conv23.i = zext i8 %38 to i32
  %39 = load i8, i8* %arraydecay5, align 1
  %scevgep245 = getelementptr i8, i8* %x, i64 1
  %40 = load i8, i8* %scevgep245, align 1
  %call28.i = call zeroext i8 @mult(i8 zeroext %39, i8 zeroext %40) #3
  %conv29.i = zext i8 %call28.i to i32
  %xor.i60 = xor i32 %conv23.i, %conv29.i
  %scevgep246 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 1
  %41 = load i8, i8* %scevgep246, align 1
  %42 = load i8, i8* %x, align 1
  %call34.i = call zeroext i8 @mult(i8 zeroext %41, i8 zeroext %42) #3
  %conv35.i = zext i8 %call34.i to i32
  %xor36.i = xor i32 %xor.i60, %conv35.i
  %conv37.i = trunc i32 %xor36.i to i8
  store i8 %conv37.i, i8* %scevgep247, align 1
  %scevgep239 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep234235, i64 0, i64 0, i64 1
  %43 = bitcast i8* %scevgep239 to [5 x [5 x i8]]*
  %scevgep252 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep247248, i64 0, i64 1, i64 0
  %44 = bitcast i8* %scevgep252 to [5 x [5 x i8]]*
  %call16.i.1545 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1545, i8* %scevgep239, align 1
  %45 = load i8, i8* %scevgep239, align 1
  %conv23.i.1546 = zext i8 %45 to i32
  %46 = load i8, i8* %arraydecay5, align 1
  %scevgep245.1547 = getelementptr i8, i8* %x, i64 2
  %47 = load i8, i8* %scevgep245.1547, align 1
  %call28.i.1548 = call zeroext i8 @mult(i8 zeroext %46, i8 zeroext %47) #3
  %conv29.i.1549 = zext i8 %call28.i.1548 to i32
  %xor.i60.1550 = xor i32 %conv23.i.1546, %conv29.i.1549
  %scevgep246.1551 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 2
  %48 = load i8, i8* %scevgep246.1551, align 1
  %49 = load i8, i8* %x, align 1
  %call34.i.1552 = call zeroext i8 @mult(i8 zeroext %48, i8 zeroext %49) #3
  %conv35.i.1553 = zext i8 %call34.i.1552 to i32
  %xor36.i.1554 = xor i32 %xor.i60.1550, %conv35.i.1553
  %conv37.i.1555 = trunc i32 %xor36.i.1554 to i8
  store i8 %conv37.i.1555, i8* %scevgep252, align 1
  %scevgep239.1556 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %43, i64 0, i64 0, i64 1
  %50 = bitcast i8* %scevgep239.1556 to [5 x [5 x i8]]*
  %scevgep252.1557 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %44, i64 0, i64 1, i64 0
  %51 = bitcast i8* %scevgep252.1557 to [5 x [5 x i8]]*
  %call16.i.2559 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.2559, i8* %scevgep239.1556, align 1
  %52 = load i8, i8* %scevgep239.1556, align 1
  %conv23.i.2560 = zext i8 %52 to i32
  %53 = load i8, i8* %arraydecay5, align 1
  %scevgep245.2561 = getelementptr i8, i8* %x, i64 3
  %54 = load i8, i8* %scevgep245.2561, align 1
  %call28.i.2562 = call zeroext i8 @mult(i8 zeroext %53, i8 zeroext %54) #3
  %conv29.i.2563 = zext i8 %call28.i.2562 to i32
  %xor.i60.2564 = xor i32 %conv23.i.2560, %conv29.i.2563
  %scevgep246.2565 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 3
  %55 = load i8, i8* %scevgep246.2565, align 1
  %56 = load i8, i8* %x, align 1
  %call34.i.2566 = call zeroext i8 @mult(i8 zeroext %55, i8 zeroext %56) #3
  %conv35.i.2567 = zext i8 %call34.i.2566 to i32
  %xor36.i.2568 = xor i32 %xor.i60.2564, %conv35.i.2567
  %conv37.i.2569 = trunc i32 %xor36.i.2568 to i8
  store i8 %conv37.i.2569, i8* %scevgep252.1557, align 1
  %scevgep239.2570 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %50, i64 0, i64 0, i64 1
  %scevgep252.2571 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %51, i64 0, i64 1, i64 0
  %call16.i.3573 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.3573, i8* %scevgep239.2570, align 1
  %57 = load i8, i8* %scevgep239.2570, align 1
  %conv23.i.3574 = zext i8 %57 to i32
  %58 = load i8, i8* %arraydecay5, align 1
  %scevgep245.3575 = getelementptr i8, i8* %x, i64 4
  %59 = load i8, i8* %scevgep245.3575, align 1
  %call28.i.3576 = call zeroext i8 @mult(i8 zeroext %58, i8 zeroext %59) #3
  %conv29.i.3577 = zext i8 %call28.i.3576 to i32
  %xor.i60.3578 = xor i32 %conv23.i.3574, %conv29.i.3577
  %scevgep246.3579 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 4
  %60 = load i8, i8* %scevgep246.3579, align 1
  %61 = load i8, i8* %x, align 1
  %call34.i.3580 = call zeroext i8 @mult(i8 zeroext %60, i8 zeroext %61) #3
  %conv35.i.3581 = zext i8 %call34.i.3580 to i32
  %xor36.i.3582 = xor i32 %xor.i60.3578, %conv35.i.3581
  %conv37.i.3583 = trunc i32 %xor36.i.3582 to i8
  store i8 %conv37.i.3583, i8* %scevgep252.2571, align 1
  %scevgep237 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep234235, i64 0, i64 1, i64 1
  %62 = bitcast i8* %scevgep237 to [5 x [5 x i8]]*
  %scevgep250 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep247248, i64 0, i64 1, i64 1
  %63 = bitcast i8* %scevgep250 to [5 x [5 x i8]]*
  %arrayidx25.i.1 = getelementptr inbounds i8, i8* %arraydecay5, i64 1
  %arrayidx33.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %call16.i.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1, i8* %scevgep237, align 1
  %64 = load i8, i8* %scevgep237, align 1
  %conv23.i.1 = zext i8 %64 to i32
  %65 = load i8, i8* %arrayidx25.i.1, align 1
  %scevgep245.1 = getelementptr i8, i8* %x, i64 2
  %66 = load i8, i8* %scevgep245.1, align 1
  %call28.i.1 = call zeroext i8 @mult(i8 zeroext %65, i8 zeroext %66) #3
  %conv29.i.1 = zext i8 %call28.i.1 to i32
  %xor.i60.1 = xor i32 %conv23.i.1, %conv29.i.1
  %scevgep246.1 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 2
  %67 = load i8, i8* %scevgep246.1, align 1
  %68 = load i8, i8* %arrayidx33.i.1, align 1
  %call34.i.1 = call zeroext i8 @mult(i8 zeroext %67, i8 zeroext %68) #3
  %conv35.i.1 = zext i8 %call34.i.1 to i32
  %xor36.i.1 = xor i32 %xor.i60.1, %conv35.i.1
  %conv37.i.1 = trunc i32 %xor36.i.1 to i8
  store i8 %conv37.i.1, i8* %scevgep250, align 1
  %scevgep239.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %62, i64 0, i64 0, i64 1
  %69 = bitcast i8* %scevgep239.1 to [5 x [5 x i8]]*
  %scevgep252.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %63, i64 0, i64 1, i64 0
  %70 = bitcast i8* %scevgep252.1 to [5 x [5 x i8]]*
  %call16.i.1.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1.1, i8* %scevgep239.1, align 1
  %71 = load i8, i8* %scevgep239.1, align 1
  %conv23.i.1.1 = zext i8 %71 to i32
  %72 = load i8, i8* %arrayidx25.i.1, align 1
  %scevgep245.1.1 = getelementptr i8, i8* %x, i64 3
  %73 = load i8, i8* %scevgep245.1.1, align 1
  %call28.i.1.1 = call zeroext i8 @mult(i8 zeroext %72, i8 zeroext %73) #3
  %conv29.i.1.1 = zext i8 %call28.i.1.1 to i32
  %xor.i60.1.1 = xor i32 %conv23.i.1.1, %conv29.i.1.1
  %scevgep246.1.1 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 3
  %74 = load i8, i8* %scevgep246.1.1, align 1
  %75 = load i8, i8* %arrayidx33.i.1, align 1
  %call34.i.1.1 = call zeroext i8 @mult(i8 zeroext %74, i8 zeroext %75) #3
  %conv35.i.1.1 = zext i8 %call34.i.1.1 to i32
  %xor36.i.1.1 = xor i32 %xor.i60.1.1, %conv35.i.1.1
  %conv37.i.1.1 = trunc i32 %xor36.i.1.1 to i8
  store i8 %conv37.i.1.1, i8* %scevgep252.1, align 1
  %scevgep239.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %69, i64 0, i64 0, i64 1
  %scevgep252.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %70, i64 0, i64 1, i64 0
  %call16.i.1.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1.2, i8* %scevgep239.1.1, align 1
  %76 = load i8, i8* %scevgep239.1.1, align 1
  %conv23.i.1.2 = zext i8 %76 to i32
  %77 = load i8, i8* %arrayidx25.i.1, align 1
  %scevgep245.1.2 = getelementptr i8, i8* %x, i64 4
  %78 = load i8, i8* %scevgep245.1.2, align 1
  %call28.i.1.2 = call zeroext i8 @mult(i8 zeroext %77, i8 zeroext %78) #3
  %conv29.i.1.2 = zext i8 %call28.i.1.2 to i32
  %xor.i60.1.2 = xor i32 %conv23.i.1.2, %conv29.i.1.2
  %scevgep246.1.2 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 4
  %79 = load i8, i8* %scevgep246.1.2, align 1
  %80 = load i8, i8* %arrayidx33.i.1, align 1
  %call34.i.1.2 = call zeroext i8 @mult(i8 zeroext %79, i8 zeroext %80) #3
  %conv35.i.1.2 = zext i8 %call34.i.1.2 to i32
  %xor36.i.1.2 = xor i32 %xor.i60.1.2, %conv35.i.1.2
  %conv37.i.1.2 = trunc i32 %xor36.i.1.2 to i8
  store i8 %conv37.i.1.2, i8* %scevgep252.1.1, align 1
  %scevgep237.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %62, i64 0, i64 1, i64 1
  %81 = bitcast i8* %scevgep237.1 to [5 x [5 x i8]]*
  %scevgep250.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %63, i64 0, i64 1, i64 1
  %82 = bitcast i8* %scevgep250.1 to [5 x [5 x i8]]*
  %arrayidx25.i.2 = getelementptr inbounds i8, i8* %arraydecay5, i64 2
  %arrayidx33.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %call16.i.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.2, i8* %scevgep237.1, align 1
  %83 = load i8, i8* %scevgep237.1, align 1
  %conv23.i.2 = zext i8 %83 to i32
  %84 = load i8, i8* %arrayidx25.i.2, align 1
  %scevgep245.2 = getelementptr i8, i8* %x, i64 3
  %85 = load i8, i8* %scevgep245.2, align 1
  %call28.i.2 = call zeroext i8 @mult(i8 zeroext %84, i8 zeroext %85) #3
  %conv29.i.2 = zext i8 %call28.i.2 to i32
  %xor.i60.2 = xor i32 %conv23.i.2, %conv29.i.2
  %scevgep246.2 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 3
  %86 = load i8, i8* %scevgep246.2, align 1
  %87 = load i8, i8* %arrayidx33.i.2, align 1
  %call34.i.2 = call zeroext i8 @mult(i8 zeroext %86, i8 zeroext %87) #3
  %conv35.i.2 = zext i8 %call34.i.2 to i32
  %xor36.i.2 = xor i32 %xor.i60.2, %conv35.i.2
  %conv37.i.2 = trunc i32 %xor36.i.2 to i8
  store i8 %conv37.i.2, i8* %scevgep250.1, align 1
  %scevgep239.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %81, i64 0, i64 0, i64 1
  %scevgep252.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %82, i64 0, i64 1, i64 0
  %call16.i.2.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.2.1, i8* %scevgep239.2, align 1
  %88 = load i8, i8* %scevgep239.2, align 1
  %conv23.i.2.1 = zext i8 %88 to i32
  %89 = load i8, i8* %arrayidx25.i.2, align 1
  %scevgep245.2.1 = getelementptr i8, i8* %x, i64 4
  %90 = load i8, i8* %scevgep245.2.1, align 1
  %call28.i.2.1 = call zeroext i8 @mult(i8 zeroext %89, i8 zeroext %90) #3
  %conv29.i.2.1 = zext i8 %call28.i.2.1 to i32
  %xor.i60.2.1 = xor i32 %conv23.i.2.1, %conv29.i.2.1
  %scevgep246.2.1 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 4
  %91 = load i8, i8* %scevgep246.2.1, align 1
  %92 = load i8, i8* %arrayidx33.i.2, align 1
  %call34.i.2.1 = call zeroext i8 @mult(i8 zeroext %91, i8 zeroext %92) #3
  %conv35.i.2.1 = zext i8 %call34.i.2.1 to i32
  %xor36.i.2.1 = xor i32 %xor.i60.2.1, %conv35.i.2.1
  %conv37.i.2.1 = trunc i32 %xor36.i.2.1 to i8
  store i8 %conv37.i.2.1, i8* %scevgep252.2, align 1
  %scevgep237.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %81, i64 0, i64 1, i64 1
  %scevgep250.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %82, i64 0, i64 1, i64 1
  %arrayidx25.i.3 = getelementptr inbounds i8, i8* %arraydecay5, i64 3
  %arrayidx33.i.3 = getelementptr inbounds i8, i8* %x, i64 3
  %call16.i.3 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.3, i8* %scevgep237.2, align 1
  %93 = load i8, i8* %scevgep237.2, align 1
  %conv23.i.3 = zext i8 %93 to i32
  %94 = load i8, i8* %arrayidx25.i.3, align 1
  %scevgep245.3 = getelementptr i8, i8* %x, i64 4
  %95 = load i8, i8* %scevgep245.3, align 1
  %call28.i.3 = call zeroext i8 @mult(i8 zeroext %94, i8 zeroext %95) #3
  %conv29.i.3 = zext i8 %call28.i.3 to i32
  %xor.i60.3 = xor i32 %conv23.i.3, %conv29.i.3
  %scevgep246.3 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 4
  %96 = load i8, i8* %scevgep246.3, align 1
  %97 = load i8, i8* %arrayidx33.i.3, align 1
  %call34.i.3 = call zeroext i8 @mult(i8 zeroext %96, i8 zeroext %97) #3
  %conv35.i.3 = zext i8 %call34.i.3 to i32
  %xor36.i.3 = xor i32 %xor.i60.3, %conv35.i.3
  %conv37.i.3 = trunc i32 %xor36.i.3 to i8
  store i8 %conv37.i.3, i8* %scevgep250.2, align 1
  %98 = load i8, i8* %arraydecay5, align 1
  %99 = load i8, i8* %x, align 1
  %call54.i = call zeroext i8 @mult(i8 zeroext %98, i8 zeroext %99) #3
  store i8 %call54.i, i8* %arraydecay6, align 1
  %scevgep230.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %100 = load i8, i8* %scevgep230.1, align 1
  %conv68.i.1 = zext i8 %100 to i32
  %101 = load i8, i8* %arraydecay6, align 1
  %conv71.i.1 = zext i8 %101 to i32
  %xor72.i.1 = xor i32 %conv71.i.1, %conv68.i.1
  %conv73.i.1 = trunc i32 %xor72.i.1 to i8
  store i8 %conv73.i.1, i8* %arraydecay6, align 1
  %scevgep230.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 2
  %102 = load i8, i8* %scevgep230.2, align 1
  %conv68.i.2 = zext i8 %102 to i32
  %103 = load i8, i8* %arraydecay6, align 1
  %conv71.i.2 = zext i8 %103 to i32
  %xor72.i.2 = xor i32 %conv71.i.2, %conv68.i.2
  %conv73.i.2 = trunc i32 %xor72.i.2 to i8
  store i8 %conv73.i.2, i8* %arraydecay6, align 1
  %scevgep230.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 3
  %104 = load i8, i8* %scevgep230.3, align 1
  %conv68.i.3 = zext i8 %104 to i32
  %105 = load i8, i8* %arraydecay6, align 1
  %conv71.i.3 = zext i8 %105 to i32
  %xor72.i.3 = xor i32 %conv71.i.3, %conv68.i.3
  %conv73.i.3 = trunc i32 %xor72.i.3 to i8
  store i8 %conv73.i.3, i8* %arraydecay6, align 1
  %scevgep230.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 4
  %106 = load i8, i8* %scevgep230.4, align 1
  %conv68.i.4 = zext i8 %106 to i32
  %107 = load i8, i8* %arraydecay6, align 1
  %conv71.i.4 = zext i8 %107 to i32
  %xor72.i.4 = xor i32 %conv71.i.4, %conv68.i.4
  %conv73.i.4 = trunc i32 %xor72.i.4 to i8
  store i8 %conv73.i.4, i8* %arraydecay6, align 1
  %scevgep229 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 1, i64 0
  %108 = bitcast i8* %scevgep229 to [5 x [5 x i8]]*
  %arrayidx51.i.1 = getelementptr inbounds i8, i8* %arraydecay5, i64 1
  %109 = load i8, i8* %arrayidx51.i.1, align 1
  %arrayidx53.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %110 = load i8, i8* %arrayidx53.i.1, align 1
  %call54.i.1 = call zeroext i8 @mult(i8 zeroext %109, i8 zeroext %110) #3
  %arrayidx56.i.1 = getelementptr inbounds i8, i8* %arraydecay6, i64 1
  store i8 %call54.i.1, i8* %arrayidx56.i.1, align 1
  %arrayidx70.i.1 = getelementptr inbounds i8, i8* %arraydecay6, i64 1
  %scevgep230.1394 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %108, i64 0, i64 0, i64 0
  %111 = load i8, i8* %scevgep230.1394, align 1
  %conv68.i.1395 = zext i8 %111 to i32
  %112 = load i8, i8* %arrayidx70.i.1, align 1
  %conv71.i.1396 = zext i8 %112 to i32
  %xor72.i.1397 = xor i32 %conv71.i.1396, %conv68.i.1395
  %conv73.i.1398 = trunc i32 %xor72.i.1397 to i8
  store i8 %conv73.i.1398, i8* %arrayidx70.i.1, align 1
  %scevgep230.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %108, i64 0, i64 0, i64 2
  %113 = load i8, i8* %scevgep230.2.1, align 1
  %conv68.i.2.1 = zext i8 %113 to i32
  %114 = load i8, i8* %arrayidx70.i.1, align 1
  %conv71.i.2.1 = zext i8 %114 to i32
  %xor72.i.2.1 = xor i32 %conv71.i.2.1, %conv68.i.2.1
  %conv73.i.2.1 = trunc i32 %xor72.i.2.1 to i8
  store i8 %conv73.i.2.1, i8* %arrayidx70.i.1, align 1
  %scevgep230.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %108, i64 0, i64 0, i64 3
  %115 = load i8, i8* %scevgep230.3.1, align 1
  %conv68.i.3.1 = zext i8 %115 to i32
  %116 = load i8, i8* %arrayidx70.i.1, align 1
  %conv71.i.3.1 = zext i8 %116 to i32
  %xor72.i.3.1 = xor i32 %conv71.i.3.1, %conv68.i.3.1
  %conv73.i.3.1 = trunc i32 %xor72.i.3.1 to i8
  store i8 %conv73.i.3.1, i8* %arrayidx70.i.1, align 1
  %scevgep230.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %108, i64 0, i64 0, i64 4
  %117 = load i8, i8* %scevgep230.4.1, align 1
  %conv68.i.4.1 = zext i8 %117 to i32
  %118 = load i8, i8* %arrayidx70.i.1, align 1
  %conv71.i.4.1 = zext i8 %118 to i32
  %xor72.i.4.1 = xor i32 %conv71.i.4.1, %conv68.i.4.1
  %conv73.i.4.1 = trunc i32 %xor72.i.4.1 to i8
  store i8 %conv73.i.4.1, i8* %arrayidx70.i.1, align 1
  %scevgep229.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %108, i64 0, i64 1, i64 0
  %119 = bitcast i8* %scevgep229.1 to [5 x [5 x i8]]*
  %arrayidx51.i.2 = getelementptr inbounds i8, i8* %arraydecay5, i64 2
  %120 = load i8, i8* %arrayidx51.i.2, align 1
  %arrayidx53.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %121 = load i8, i8* %arrayidx53.i.2, align 1
  %call54.i.2 = call zeroext i8 @mult(i8 zeroext %120, i8 zeroext %121) #3
  %arrayidx56.i.2 = getelementptr inbounds i8, i8* %arraydecay6, i64 2
  store i8 %call54.i.2, i8* %arrayidx56.i.2, align 1
  %arrayidx70.i.2 = getelementptr inbounds i8, i8* %arraydecay6, i64 2
  %scevgep230.2403 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %119, i64 0, i64 0, i64 0
  %122 = load i8, i8* %scevgep230.2403, align 1
  %conv68.i.2404 = zext i8 %122 to i32
  %123 = load i8, i8* %arrayidx70.i.2, align 1
  %conv71.i.2405 = zext i8 %123 to i32
  %xor72.i.2406 = xor i32 %conv71.i.2405, %conv68.i.2404
  %conv73.i.2407 = trunc i32 %xor72.i.2406 to i8
  store i8 %conv73.i.2407, i8* %arrayidx70.i.2, align 1
  %scevgep230.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %119, i64 0, i64 0, i64 1
  %124 = load i8, i8* %scevgep230.1.2, align 1
  %conv68.i.1.2 = zext i8 %124 to i32
  %125 = load i8, i8* %arrayidx70.i.2, align 1
  %conv71.i.1.2 = zext i8 %125 to i32
  %xor72.i.1.2 = xor i32 %conv71.i.1.2, %conv68.i.1.2
  %conv73.i.1.2 = trunc i32 %xor72.i.1.2 to i8
  store i8 %conv73.i.1.2, i8* %arrayidx70.i.2, align 1
  %scevgep230.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %119, i64 0, i64 0, i64 3
  %126 = load i8, i8* %scevgep230.3.2, align 1
  %conv68.i.3.2 = zext i8 %126 to i32
  %127 = load i8, i8* %arrayidx70.i.2, align 1
  %conv71.i.3.2 = zext i8 %127 to i32
  %xor72.i.3.2 = xor i32 %conv71.i.3.2, %conv68.i.3.2
  %conv73.i.3.2 = trunc i32 %xor72.i.3.2 to i8
  store i8 %conv73.i.3.2, i8* %arrayidx70.i.2, align 1
  %scevgep230.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %119, i64 0, i64 0, i64 4
  %128 = load i8, i8* %scevgep230.4.2, align 1
  %conv68.i.4.2 = zext i8 %128 to i32
  %129 = load i8, i8* %arrayidx70.i.2, align 1
  %conv71.i.4.2 = zext i8 %129 to i32
  %xor72.i.4.2 = xor i32 %conv71.i.4.2, %conv68.i.4.2
  %conv73.i.4.2 = trunc i32 %xor72.i.4.2 to i8
  store i8 %conv73.i.4.2, i8* %arrayidx70.i.2, align 1
  %scevgep229.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %119, i64 0, i64 1, i64 0
  %130 = bitcast i8* %scevgep229.2 to [5 x [5 x i8]]*
  %arrayidx51.i.3 = getelementptr inbounds i8, i8* %arraydecay5, i64 3
  %131 = load i8, i8* %arrayidx51.i.3, align 1
  %arrayidx53.i.3 = getelementptr inbounds i8, i8* %x, i64 3
  %132 = load i8, i8* %arrayidx53.i.3, align 1
  %call54.i.3 = call zeroext i8 @mult(i8 zeroext %131, i8 zeroext %132) #3
  %arrayidx56.i.3 = getelementptr inbounds i8, i8* %arraydecay6, i64 3
  store i8 %call54.i.3, i8* %arrayidx56.i.3, align 1
  %arrayidx70.i.3 = getelementptr inbounds i8, i8* %arraydecay6, i64 3
  %scevgep230.3412 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %130, i64 0, i64 0, i64 0
  %133 = load i8, i8* %scevgep230.3412, align 1
  %conv68.i.3413 = zext i8 %133 to i32
  %134 = load i8, i8* %arrayidx70.i.3, align 1
  %conv71.i.3414 = zext i8 %134 to i32
  %xor72.i.3415 = xor i32 %conv71.i.3414, %conv68.i.3413
  %conv73.i.3416 = trunc i32 %xor72.i.3415 to i8
  store i8 %conv73.i.3416, i8* %arrayidx70.i.3, align 1
  %scevgep230.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %130, i64 0, i64 0, i64 1
  %135 = load i8, i8* %scevgep230.1.3, align 1
  %conv68.i.1.3 = zext i8 %135 to i32
  %136 = load i8, i8* %arrayidx70.i.3, align 1
  %conv71.i.1.3 = zext i8 %136 to i32
  %xor72.i.1.3 = xor i32 %conv71.i.1.3, %conv68.i.1.3
  %conv73.i.1.3 = trunc i32 %xor72.i.1.3 to i8
  store i8 %conv73.i.1.3, i8* %arrayidx70.i.3, align 1
  %scevgep230.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %130, i64 0, i64 0, i64 2
  %137 = load i8, i8* %scevgep230.2.3, align 1
  %conv68.i.2.3 = zext i8 %137 to i32
  %138 = load i8, i8* %arrayidx70.i.3, align 1
  %conv71.i.2.3 = zext i8 %138 to i32
  %xor72.i.2.3 = xor i32 %conv71.i.2.3, %conv68.i.2.3
  %conv73.i.2.3 = trunc i32 %xor72.i.2.3 to i8
  store i8 %conv73.i.2.3, i8* %arrayidx70.i.3, align 1
  %scevgep230.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %130, i64 0, i64 0, i64 4
  %139 = load i8, i8* %scevgep230.4.3, align 1
  %conv68.i.4.3 = zext i8 %139 to i32
  %140 = load i8, i8* %arrayidx70.i.3, align 1
  %conv71.i.4.3 = zext i8 %140 to i32
  %xor72.i.4.3 = xor i32 %conv71.i.4.3, %conv68.i.4.3
  %conv73.i.4.3 = trunc i32 %xor72.i.4.3 to i8
  store i8 %conv73.i.4.3, i8* %arrayidx70.i.3, align 1
  %scevgep229.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %130, i64 0, i64 1, i64 0
  %141 = bitcast i8* %scevgep229.3 to [5 x [5 x i8]]*
  %arrayidx51.i.4 = getelementptr inbounds i8, i8* %arraydecay5, i64 4
  %142 = load i8, i8* %arrayidx51.i.4, align 1
  %arrayidx53.i.4 = getelementptr inbounds i8, i8* %x, i64 4
  %143 = load i8, i8* %arrayidx53.i.4, align 1
  %call54.i.4 = call zeroext i8 @mult(i8 zeroext %142, i8 zeroext %143) #3
  %arrayidx56.i.4 = getelementptr inbounds i8, i8* %arraydecay6, i64 4
  store i8 %call54.i.4, i8* %arrayidx56.i.4, align 1
  %arrayidx70.i.4 = getelementptr inbounds i8, i8* %arraydecay6, i64 4
  %scevgep230.4421 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %141, i64 0, i64 0, i64 0
  %144 = load i8, i8* %scevgep230.4421, align 1
  %conv68.i.4422 = zext i8 %144 to i32
  %145 = load i8, i8* %arrayidx70.i.4, align 1
  %conv71.i.4423 = zext i8 %145 to i32
  %xor72.i.4424 = xor i32 %conv71.i.4423, %conv68.i.4422
  %conv73.i.4425 = trunc i32 %xor72.i.4424 to i8
  store i8 %conv73.i.4425, i8* %arrayidx70.i.4, align 1
  %scevgep230.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %141, i64 0, i64 0, i64 1
  %146 = load i8, i8* %scevgep230.1.4, align 1
  %conv68.i.1.4 = zext i8 %146 to i32
  %147 = load i8, i8* %arrayidx70.i.4, align 1
  %conv71.i.1.4 = zext i8 %147 to i32
  %xor72.i.1.4 = xor i32 %conv71.i.1.4, %conv68.i.1.4
  %conv73.i.1.4 = trunc i32 %xor72.i.1.4 to i8
  store i8 %conv73.i.1.4, i8* %arrayidx70.i.4, align 1
  %scevgep230.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %141, i64 0, i64 0, i64 2
  %148 = load i8, i8* %scevgep230.2.4, align 1
  %conv68.i.2.4 = zext i8 %148 to i32
  %149 = load i8, i8* %arrayidx70.i.4, align 1
  %conv71.i.2.4 = zext i8 %149 to i32
  %xor72.i.2.4 = xor i32 %conv71.i.2.4, %conv68.i.2.4
  %conv73.i.2.4 = trunc i32 %xor72.i.2.4 to i8
  store i8 %conv73.i.2.4, i8* %arrayidx70.i.4, align 1
  %scevgep230.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %141, i64 0, i64 0, i64 3
  %150 = load i8, i8* %scevgep230.3.4, align 1
  %conv68.i.3.4 = zext i8 %150 to i32
  %151 = load i8, i8* %arrayidx70.i.4, align 1
  %conv71.i.3.4 = zext i8 %151 to i32
  %xor72.i.3.4 = xor i32 %conv71.i.3.4, %conv68.i.3.4
  %conv73.i.3.4 = trunc i32 %xor72.i.3.4 to i8
  store i8 %conv73.i.3.4, i8* %arrayidx70.i.4, align 1
  %call80.i = call zeroext i8 @mult(i8 zeroext %call.i41, i8 zeroext %call1.i) #3
  %conv81.i = zext i8 %call80.i to i32
  %scevgep220 = getelementptr [5 x i8], [5 x i8]* %u, i64 0, i64 0
  %152 = load i8, i8* %scevgep220, align 1
  %scevgep220.1 = getelementptr [5 x i8], [5 x i8]* %u, i64 0, i64 1
  %153 = load i8, i8* %scevgep220.1, align 1
  %conv.i.i113.i.1 = zext i8 %153 to i32
  %conv1.i.i114.i.1 = zext i8 %152 to i32
  %xor.i.i115.i.1 = xor i32 %conv1.i.i114.i.1, %conv.i.i113.i.1
  %conv2.i.i116.i.1 = trunc i32 %xor.i.i115.i.1 to i8
  %scevgep220.2 = getelementptr [5 x i8], [5 x i8]* %u, i64 0, i64 2
  %154 = load i8, i8* %scevgep220.2, align 1
  %conv.i.i113.i.2 = zext i8 %154 to i32
  %conv1.i.i114.i.2 = zext i8 %conv2.i.i116.i.1 to i32
  %xor.i.i115.i.2 = xor i32 %conv1.i.i114.i.2, %conv.i.i113.i.2
  %conv2.i.i116.i.2 = trunc i32 %xor.i.i115.i.2 to i8
  %scevgep220.3 = getelementptr [5 x i8], [5 x i8]* %u, i64 0, i64 3
  %155 = load i8, i8* %scevgep220.3, align 1
  %conv.i.i113.i.3 = zext i8 %155 to i32
  %conv1.i.i114.i.3 = zext i8 %conv2.i.i116.i.2 to i32
  %xor.i.i115.i.3 = xor i32 %conv1.i.i114.i.3, %conv.i.i113.i.3
  %conv2.i.i116.i.3 = trunc i32 %xor.i.i115.i.3 to i8
  %scevgep220.4 = getelementptr [5 x i8], [5 x i8]* %u, i64 0, i64 4
  %156 = load i8, i8* %scevgep220.4, align 1
  %conv.i.i113.i.4 = zext i8 %156 to i32
  %conv1.i.i114.i.4 = zext i8 %conv2.i.i116.i.3 to i32
  %xor.i.i115.i.4 = xor i32 %conv1.i.i114.i.4, %conv.i.i113.i.4
  %conv2.i.i116.i.4 = trunc i32 %xor.i.i115.i.4 to i8
  %conv83.i = zext i8 %conv2.i.i116.i.4 to i32
  %cmp84.i = icmp eq i32 %conv81.i, %conv83.i
  call void @assert(i1 zeroext %cmp84.i) #3
  %scevgep215 = getelementptr [5 x i8], [5 x i8]* %u, i64 0, i64 0
  %157 = load i8, i8* %scevgep215, align 1
  %call.i71 = call zeroext i8 @exp4(i8 zeroext %157) #3
  %scevgep216 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 0
  store i8 %call.i71, i8* %scevgep216, align 1
  %scevgep215.1 = getelementptr [5 x i8], [5 x i8]* %u, i64 0, i64 1
  %158 = load i8, i8* %scevgep215.1, align 1
  %call.i71.1 = call zeroext i8 @exp4(i8 zeroext %158) #3
  %scevgep216.1 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 1
  store i8 %call.i71.1, i8* %scevgep216.1, align 1
  %scevgep215.2 = getelementptr [5 x i8], [5 x i8]* %u, i64 0, i64 2
  %159 = load i8, i8* %scevgep215.2, align 1
  %call.i71.2 = call zeroext i8 @exp4(i8 zeroext %159) #3
  %scevgep216.2 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 2
  store i8 %call.i71.2, i8* %scevgep216.2, align 1
  %scevgep215.3 = getelementptr [5 x i8], [5 x i8]* %u, i64 0, i64 3
  %160 = load i8, i8* %scevgep215.3, align 1
  %call.i71.3 = call zeroext i8 @exp4(i8 zeroext %160) #3
  %scevgep216.3 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 3
  store i8 %call.i71.3, i8* %scevgep216.3, align 1
  %scevgep215.4 = getelementptr [5 x i8], [5 x i8]* %u, i64 0, i64 4
  %161 = load i8, i8* %scevgep215.4, align 1
  %call.i71.4 = call zeroext i8 @exp4(i8 zeroext %161) #3
  %scevgep216.4 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 4
  store i8 %call.i71.4, i8* %scevgep216.4, align 1
  %arraydecay9 = getelementptr inbounds [5 x i8], [5 x i8]* %w, i64 0, i64 0
  %call.i92 = call zeroext i8 (...) @rand() #3
  %conv.i93 = zext i8 %call.i92 to i32
  %scevgep211 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 0
  %162 = load i8, i8* %scevgep211, align 1
  %scevgep211.1 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 1
  %163 = load i8, i8* %scevgep211.1, align 1
  %conv.i.i.i99.1 = zext i8 %163 to i32
  %conv1.i.i.i100.1 = zext i8 %162 to i32
  %xor.i.i.i101.1 = xor i32 %conv1.i.i.i100.1, %conv.i.i.i99.1
  %conv2.i.i.i102.1 = trunc i32 %xor.i.i.i101.1 to i8
  %scevgep211.2 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 2
  %164 = load i8, i8* %scevgep211.2, align 1
  %conv.i.i.i99.2 = zext i8 %164 to i32
  %conv1.i.i.i100.2 = zext i8 %conv2.i.i.i102.1 to i32
  %xor.i.i.i101.2 = xor i32 %conv1.i.i.i100.2, %conv.i.i.i99.2
  %conv2.i.i.i102.2 = trunc i32 %xor.i.i.i101.2 to i8
  %scevgep211.3 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 3
  %165 = load i8, i8* %scevgep211.3, align 1
  %conv.i.i.i99.3 = zext i8 %165 to i32
  %conv1.i.i.i100.3 = zext i8 %conv2.i.i.i102.2 to i32
  %xor.i.i.i101.3 = xor i32 %conv1.i.i.i100.3, %conv.i.i.i99.3
  %conv2.i.i.i102.3 = trunc i32 %xor.i.i.i101.3 to i8
  %scevgep211.4 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 4
  %166 = load i8, i8* %scevgep211.4, align 1
  %conv.i.i.i99.4 = zext i8 %166 to i32
  %conv1.i.i.i100.4 = zext i8 %conv2.i.i.i102.3 to i32
  %xor.i.i.i101.4 = xor i32 %conv1.i.i.i100.4, %conv.i.i.i99.4
  %conv2.i.i.i102.4 = trunc i32 %xor.i.i.i101.4 to i8
  %conv2.i105 = zext i8 %conv2.i.i.i102.4 to i32
  %cmp.i106 = icmp eq i32 %conv.i93, %conv2.i105
  call void @assume(i1 zeroext %cmp.i106) #3
  %call7.i111 = call zeroext i8 (...) @rand() #3
  %conv8.i112 = zext i8 %call7.i111 to i32
  %167 = load i8, i8* %arraydecay9, align 1
  %conv9.i113 = zext i8 %167 to i32
  %xor.i114 = xor i32 %conv9.i113, %conv8.i112
  %conv10.i115 = trunc i32 %xor.i114 to i8
  store i8 %conv10.i115, i8* %arraydecay9, align 1
  %conv11.i116 = zext i8 %call7.i111 to i32
  %scevgep207 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 1
  %168 = load i8, i8* %scevgep207, align 1
  %conv13.i119 = zext i8 %168 to i32
  %xor14.i120 = xor i32 %conv13.i119, %conv11.i116
  %conv15.i121 = trunc i32 %xor14.i120 to i8
  store i8 %conv15.i121, i8* %scevgep207, align 1
  %call7.i111.1 = call zeroext i8 (...) @rand() #3
  %conv8.i112.1 = zext i8 %call7.i111.1 to i32
  %169 = load i8, i8* %arraydecay9, align 1
  %conv9.i113.1 = zext i8 %169 to i32
  %xor.i114.1 = xor i32 %conv9.i113.1, %conv8.i112.1
  %conv10.i115.1 = trunc i32 %xor.i114.1 to i8
  store i8 %conv10.i115.1, i8* %arraydecay9, align 1
  %conv11.i116.1 = zext i8 %call7.i111.1 to i32
  %scevgep207.1 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 2
  %170 = load i8, i8* %scevgep207.1, align 1
  %conv13.i119.1 = zext i8 %170 to i32
  %xor14.i120.1 = xor i32 %conv13.i119.1, %conv11.i116.1
  %conv15.i121.1 = trunc i32 %xor14.i120.1 to i8
  store i8 %conv15.i121.1, i8* %scevgep207.1, align 1
  %call7.i111.2 = call zeroext i8 (...) @rand() #3
  %conv8.i112.2 = zext i8 %call7.i111.2 to i32
  %171 = load i8, i8* %arraydecay9, align 1
  %conv9.i113.2 = zext i8 %171 to i32
  %xor.i114.2 = xor i32 %conv9.i113.2, %conv8.i112.2
  %conv10.i115.2 = trunc i32 %xor.i114.2 to i8
  store i8 %conv10.i115.2, i8* %arraydecay9, align 1
  %conv11.i116.2 = zext i8 %call7.i111.2 to i32
  %scevgep207.2 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 3
  %172 = load i8, i8* %scevgep207.2, align 1
  %conv13.i119.2 = zext i8 %172 to i32
  %xor14.i120.2 = xor i32 %conv13.i119.2, %conv11.i116.2
  %conv15.i121.2 = trunc i32 %xor14.i120.2 to i8
  store i8 %conv15.i121.2, i8* %scevgep207.2, align 1
  %call7.i111.3 = call zeroext i8 (...) @rand() #3
  %conv8.i112.3 = zext i8 %call7.i111.3 to i32
  %173 = load i8, i8* %arraydecay9, align 1
  %conv9.i113.3 = zext i8 %173 to i32
  %xor.i114.3 = xor i32 %conv9.i113.3, %conv8.i112.3
  %conv10.i115.3 = trunc i32 %xor.i114.3 to i8
  store i8 %conv10.i115.3, i8* %arraydecay9, align 1
  %conv11.i116.3 = zext i8 %call7.i111.3 to i32
  %scevgep207.3 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 4
  %174 = load i8, i8* %scevgep207.3, align 1
  %conv13.i119.3 = zext i8 %174 to i32
  %xor14.i120.3 = xor i32 %conv13.i119.3, %conv11.i116.3
  %conv15.i121.3 = trunc i32 %xor14.i120.3 to i8
  store i8 %conv15.i121.3, i8* %scevgep207.3, align 1
  %conv16.i124 = zext i8 %call.i92 to i32
  %scevgep203 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 0
  %175 = load i8, i8* %scevgep203, align 1
  %scevgep203.1 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 1
  %176 = load i8, i8* %scevgep203.1, align 1
  %conv.i.i31.i131.1 = zext i8 %176 to i32
  %conv1.i.i32.i132.1 = zext i8 %175 to i32
  %xor.i.i33.i133.1 = xor i32 %conv1.i.i32.i132.1, %conv.i.i31.i131.1
  %conv2.i.i34.i134.1 = trunc i32 %xor.i.i33.i133.1 to i8
  %scevgep203.2 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 2
  %177 = load i8, i8* %scevgep203.2, align 1
  %conv.i.i31.i131.2 = zext i8 %177 to i32
  %conv1.i.i32.i132.2 = zext i8 %conv2.i.i34.i134.1 to i32
  %xor.i.i33.i133.2 = xor i32 %conv1.i.i32.i132.2, %conv.i.i31.i131.2
  %conv2.i.i34.i134.2 = trunc i32 %xor.i.i33.i133.2 to i8
  %scevgep203.3 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 3
  %178 = load i8, i8* %scevgep203.3, align 1
  %conv.i.i31.i131.3 = zext i8 %178 to i32
  %conv1.i.i32.i132.3 = zext i8 %conv2.i.i34.i134.2 to i32
  %xor.i.i33.i133.3 = xor i32 %conv1.i.i32.i132.3, %conv.i.i31.i131.3
  %conv2.i.i34.i134.3 = trunc i32 %xor.i.i33.i133.3 to i8
  %scevgep203.4 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 4
  %179 = load i8, i8* %scevgep203.4, align 1
  %conv.i.i31.i131.4 = zext i8 %179 to i32
  %conv1.i.i32.i132.4 = zext i8 %conv2.i.i34.i134.3 to i32
  %xor.i.i33.i133.4 = xor i32 %conv1.i.i32.i132.4, %conv.i.i31.i131.4
  %conv2.i.i34.i134.4 = trunc i32 %xor.i.i33.i133.4 to i8
  %conv18.i137 = zext i8 %conv2.i.i34.i134.4 to i32
  %cmp19.i138 = icmp eq i32 %conv16.i124, %conv18.i137
  call void @assert(i1 zeroext %cmp19.i138) #3
  %arraydecay10 = getelementptr inbounds [5 x i8], [5 x i8]* %u, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [5 x i8], [5 x i8]* %w, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [5 x i8], [5 x i8]* %v, i64 0, i64 0
  %call.i165 = call zeroext i8 (...) @rand() #3
  %call1.i166 = call zeroext i8 (...) @rand() #3
  %conv.i167 = zext i8 %call.i165 to i32
  %scevgep199 = getelementptr [5 x i8], [5 x i8]* %u, i64 0, i64 0
  %180 = load i8, i8* %scevgep199, align 1
  %scevgep199.1 = getelementptr [5 x i8], [5 x i8]* %u, i64 0, i64 1
  %181 = load i8, i8* %scevgep199.1, align 1
  %conv.i.i.i173.1 = zext i8 %181 to i32
  %conv1.i.i.i174.1 = zext i8 %180 to i32
  %xor.i.i.i175.1 = xor i32 %conv1.i.i.i174.1, %conv.i.i.i173.1
  %conv2.i.i.i176.1 = trunc i32 %xor.i.i.i175.1 to i8
  %scevgep199.2 = getelementptr [5 x i8], [5 x i8]* %u, i64 0, i64 2
  %182 = load i8, i8* %scevgep199.2, align 1
  %conv.i.i.i173.2 = zext i8 %182 to i32
  %conv1.i.i.i174.2 = zext i8 %conv2.i.i.i176.1 to i32
  %xor.i.i.i175.2 = xor i32 %conv1.i.i.i174.2, %conv.i.i.i173.2
  %conv2.i.i.i176.2 = trunc i32 %xor.i.i.i175.2 to i8
  %scevgep199.3 = getelementptr [5 x i8], [5 x i8]* %u, i64 0, i64 3
  %183 = load i8, i8* %scevgep199.3, align 1
  %conv.i.i.i173.3 = zext i8 %183 to i32
  %conv1.i.i.i174.3 = zext i8 %conv2.i.i.i176.2 to i32
  %xor.i.i.i175.3 = xor i32 %conv1.i.i.i174.3, %conv.i.i.i173.3
  %conv2.i.i.i176.3 = trunc i32 %xor.i.i.i175.3 to i8
  %scevgep199.4 = getelementptr [5 x i8], [5 x i8]* %u, i64 0, i64 4
  %184 = load i8, i8* %scevgep199.4, align 1
  %conv.i.i.i173.4 = zext i8 %184 to i32
  %conv1.i.i.i174.4 = zext i8 %conv2.i.i.i176.3 to i32
  %xor.i.i.i175.4 = xor i32 %conv1.i.i.i174.4, %conv.i.i.i173.4
  %conv2.i.i.i176.4 = trunc i32 %xor.i.i.i175.4 to i8
  %conv3.i179 = zext i8 %conv2.i.i.i176.4 to i32
  %cmp.i180 = icmp eq i32 %conv.i167, %conv3.i179
  call void @assume(i1 zeroext %cmp.i180) #3
  %conv5.i181 = zext i8 %call1.i166 to i32
  %scevgep195 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 0
  %185 = load i8, i8* %scevgep195, align 1
  %scevgep195.1 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 1
  %186 = load i8, i8* %scevgep195.1, align 1
  %conv.i.i96.i188.1 = zext i8 %186 to i32
  %conv1.i.i97.i189.1 = zext i8 %185 to i32
  %xor.i.i98.i190.1 = xor i32 %conv1.i.i97.i189.1, %conv.i.i96.i188.1
  %conv2.i.i99.i191.1 = trunc i32 %xor.i.i98.i190.1 to i8
  %scevgep195.2 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 2
  %187 = load i8, i8* %scevgep195.2, align 1
  %conv.i.i96.i188.2 = zext i8 %187 to i32
  %conv1.i.i97.i189.2 = zext i8 %conv2.i.i99.i191.1 to i32
  %xor.i.i98.i190.2 = xor i32 %conv1.i.i97.i189.2, %conv.i.i96.i188.2
  %conv2.i.i99.i191.2 = trunc i32 %xor.i.i98.i190.2 to i8
  %scevgep195.3 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 3
  %188 = load i8, i8* %scevgep195.3, align 1
  %conv.i.i96.i188.3 = zext i8 %188 to i32
  %conv1.i.i97.i189.3 = zext i8 %conv2.i.i99.i191.2 to i32
  %xor.i.i98.i190.3 = xor i32 %conv1.i.i97.i189.3, %conv.i.i96.i188.3
  %conv2.i.i99.i191.3 = trunc i32 %xor.i.i98.i190.3 to i8
  %scevgep195.4 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 4
  %189 = load i8, i8* %scevgep195.4, align 1
  %conv.i.i96.i188.4 = zext i8 %189 to i32
  %conv1.i.i97.i189.4 = zext i8 %conv2.i.i99.i191.3 to i32
  %xor.i.i98.i190.4 = xor i32 %conv1.i.i97.i189.4, %conv.i.i96.i188.4
  %conv2.i.i99.i191.4 = trunc i32 %xor.i.i98.i190.4 to i8
  %conv7.i194 = zext i8 %conv2.i.i99.i191.4 to i32
  %cmp8.i195 = icmp eq i32 %conv5.i181, %conv7.i194
  call void @assume(i1 zeroext %cmp8.i195) #3
  %scevgep172 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %scevgep172173 = bitcast i8* %scevgep172 to [5 x [5 x i8]]*
  %scevgep185 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 1, i64 0
  %scevgep185186 = bitcast i8* %scevgep185 to [5 x [5 x i8]]*
  %call16.i203 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i203, i8* %scevgep172, align 1
  %190 = load i8, i8* %scevgep172, align 1
  %conv23.i212 = zext i8 %190 to i32
  %191 = load i8, i8* %arraydecay10, align 1
  %scevgep183 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 1
  %192 = load i8, i8* %scevgep183, align 1
  %call28.i217 = call zeroext i8 @mult(i8 zeroext %191, i8 zeroext %192) #3
  %conv29.i218 = zext i8 %call28.i217 to i32
  %xor.i219 = xor i32 %conv23.i212, %conv29.i218
  %scevgep184 = getelementptr [5 x i8], [5 x i8]* %u, i64 0, i64 1
  %193 = load i8, i8* %scevgep184, align 1
  %194 = load i8, i8* %arraydecay11, align 1
  %call34.i224 = call zeroext i8 @mult(i8 zeroext %193, i8 zeroext %194) #3
  %conv35.i225 = zext i8 %call34.i224 to i32
  %xor36.i226 = xor i32 %xor.i219, %conv35.i225
  %conv37.i227 = trunc i32 %xor36.i226 to i8
  store i8 %conv37.i227, i8* %scevgep185, align 1
  %scevgep177 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep172173, i64 0, i64 0, i64 1
  %195 = bitcast i8* %scevgep177 to [5 x [5 x i8]]*
  %scevgep190 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep185186, i64 0, i64 1, i64 0
  %196 = bitcast i8* %scevgep190 to [5 x [5 x i8]]*
  %call16.i203.1506 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i203.1506, i8* %scevgep177, align 1
  %197 = load i8, i8* %scevgep177, align 1
  %conv23.i212.1507 = zext i8 %197 to i32
  %198 = load i8, i8* %arraydecay10, align 1
  %scevgep183.1508 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 2
  %199 = load i8, i8* %scevgep183.1508, align 1
  %call28.i217.1509 = call zeroext i8 @mult(i8 zeroext %198, i8 zeroext %199) #3
  %conv29.i218.1510 = zext i8 %call28.i217.1509 to i32
  %xor.i219.1511 = xor i32 %conv23.i212.1507, %conv29.i218.1510
  %scevgep184.1512 = getelementptr [5 x i8], [5 x i8]* %u, i64 0, i64 2
  %200 = load i8, i8* %scevgep184.1512, align 1
  %201 = load i8, i8* %arraydecay11, align 1
  %call34.i224.1513 = call zeroext i8 @mult(i8 zeroext %200, i8 zeroext %201) #3
  %conv35.i225.1514 = zext i8 %call34.i224.1513 to i32
  %xor36.i226.1515 = xor i32 %xor.i219.1511, %conv35.i225.1514
  %conv37.i227.1516 = trunc i32 %xor36.i226.1515 to i8
  store i8 %conv37.i227.1516, i8* %scevgep190, align 1
  %scevgep177.1517 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %195, i64 0, i64 0, i64 1
  %202 = bitcast i8* %scevgep177.1517 to [5 x [5 x i8]]*
  %scevgep190.1518 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %196, i64 0, i64 1, i64 0
  %203 = bitcast i8* %scevgep190.1518 to [5 x [5 x i8]]*
  %call16.i203.2520 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i203.2520, i8* %scevgep177.1517, align 1
  %204 = load i8, i8* %scevgep177.1517, align 1
  %conv23.i212.2521 = zext i8 %204 to i32
  %205 = load i8, i8* %arraydecay10, align 1
  %scevgep183.2522 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 3
  %206 = load i8, i8* %scevgep183.2522, align 1
  %call28.i217.2523 = call zeroext i8 @mult(i8 zeroext %205, i8 zeroext %206) #3
  %conv29.i218.2524 = zext i8 %call28.i217.2523 to i32
  %xor.i219.2525 = xor i32 %conv23.i212.2521, %conv29.i218.2524
  %scevgep184.2526 = getelementptr [5 x i8], [5 x i8]* %u, i64 0, i64 3
  %207 = load i8, i8* %scevgep184.2526, align 1
  %208 = load i8, i8* %arraydecay11, align 1
  %call34.i224.2527 = call zeroext i8 @mult(i8 zeroext %207, i8 zeroext %208) #3
  %conv35.i225.2528 = zext i8 %call34.i224.2527 to i32
  %xor36.i226.2529 = xor i32 %xor.i219.2525, %conv35.i225.2528
  %conv37.i227.2530 = trunc i32 %xor36.i226.2529 to i8
  store i8 %conv37.i227.2530, i8* %scevgep190.1518, align 1
  %scevgep177.2531 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %202, i64 0, i64 0, i64 1
  %scevgep190.2532 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %203, i64 0, i64 1, i64 0
  %call16.i203.3534 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i203.3534, i8* %scevgep177.2531, align 1
  %209 = load i8, i8* %scevgep177.2531, align 1
  %conv23.i212.3535 = zext i8 %209 to i32
  %210 = load i8, i8* %arraydecay10, align 1
  %scevgep183.3536 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 4
  %211 = load i8, i8* %scevgep183.3536, align 1
  %call28.i217.3537 = call zeroext i8 @mult(i8 zeroext %210, i8 zeroext %211) #3
  %conv29.i218.3538 = zext i8 %call28.i217.3537 to i32
  %xor.i219.3539 = xor i32 %conv23.i212.3535, %conv29.i218.3538
  %scevgep184.3540 = getelementptr [5 x i8], [5 x i8]* %u, i64 0, i64 4
  %212 = load i8, i8* %scevgep184.3540, align 1
  %213 = load i8, i8* %arraydecay11, align 1
  %call34.i224.3541 = call zeroext i8 @mult(i8 zeroext %212, i8 zeroext %213) #3
  %conv35.i225.3542 = zext i8 %call34.i224.3541 to i32
  %xor36.i226.3543 = xor i32 %xor.i219.3539, %conv35.i225.3542
  %conv37.i227.3544 = trunc i32 %xor36.i226.3543 to i8
  store i8 %conv37.i227.3544, i8* %scevgep190.2532, align 1
  %scevgep175 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep172173, i64 0, i64 1, i64 1
  %214 = bitcast i8* %scevgep175 to [5 x [5 x i8]]*
  %scevgep188 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep185186, i64 0, i64 1, i64 1
  %215 = bitcast i8* %scevgep188 to [5 x [5 x i8]]*
  %arrayidx25.i214.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %arrayidx33.i223.1 = getelementptr inbounds i8, i8* %arraydecay11, i64 1
  %call16.i203.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i203.1, i8* %scevgep175, align 1
  %216 = load i8, i8* %scevgep175, align 1
  %conv23.i212.1 = zext i8 %216 to i32
  %217 = load i8, i8* %arrayidx25.i214.1, align 1
  %scevgep183.1 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 2
  %218 = load i8, i8* %scevgep183.1, align 1
  %call28.i217.1 = call zeroext i8 @mult(i8 zeroext %217, i8 zeroext %218) #3
  %conv29.i218.1 = zext i8 %call28.i217.1 to i32
  %xor.i219.1 = xor i32 %conv23.i212.1, %conv29.i218.1
  %scevgep184.1 = getelementptr [5 x i8], [5 x i8]* %u, i64 0, i64 2
  %219 = load i8, i8* %scevgep184.1, align 1
  %220 = load i8, i8* %arrayidx33.i223.1, align 1
  %call34.i224.1 = call zeroext i8 @mult(i8 zeroext %219, i8 zeroext %220) #3
  %conv35.i225.1 = zext i8 %call34.i224.1 to i32
  %xor36.i226.1 = xor i32 %xor.i219.1, %conv35.i225.1
  %conv37.i227.1 = trunc i32 %xor36.i226.1 to i8
  store i8 %conv37.i227.1, i8* %scevgep188, align 1
  %scevgep177.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %214, i64 0, i64 0, i64 1
  %221 = bitcast i8* %scevgep177.1 to [5 x [5 x i8]]*
  %scevgep190.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %215, i64 0, i64 1, i64 0
  %222 = bitcast i8* %scevgep190.1 to [5 x [5 x i8]]*
  %call16.i203.1.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i203.1.1, i8* %scevgep177.1, align 1
  %223 = load i8, i8* %scevgep177.1, align 1
  %conv23.i212.1.1 = zext i8 %223 to i32
  %224 = load i8, i8* %arrayidx25.i214.1, align 1
  %scevgep183.1.1 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 3
  %225 = load i8, i8* %scevgep183.1.1, align 1
  %call28.i217.1.1 = call zeroext i8 @mult(i8 zeroext %224, i8 zeroext %225) #3
  %conv29.i218.1.1 = zext i8 %call28.i217.1.1 to i32
  %xor.i219.1.1 = xor i32 %conv23.i212.1.1, %conv29.i218.1.1
  %scevgep184.1.1 = getelementptr [5 x i8], [5 x i8]* %u, i64 0, i64 3
  %226 = load i8, i8* %scevgep184.1.1, align 1
  %227 = load i8, i8* %arrayidx33.i223.1, align 1
  %call34.i224.1.1 = call zeroext i8 @mult(i8 zeroext %226, i8 zeroext %227) #3
  %conv35.i225.1.1 = zext i8 %call34.i224.1.1 to i32
  %xor36.i226.1.1 = xor i32 %xor.i219.1.1, %conv35.i225.1.1
  %conv37.i227.1.1 = trunc i32 %xor36.i226.1.1 to i8
  store i8 %conv37.i227.1.1, i8* %scevgep190.1, align 1
  %scevgep177.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %221, i64 0, i64 0, i64 1
  %scevgep190.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %222, i64 0, i64 1, i64 0
  %call16.i203.1.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i203.1.2, i8* %scevgep177.1.1, align 1
  %228 = load i8, i8* %scevgep177.1.1, align 1
  %conv23.i212.1.2 = zext i8 %228 to i32
  %229 = load i8, i8* %arrayidx25.i214.1, align 1
  %scevgep183.1.2 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 4
  %230 = load i8, i8* %scevgep183.1.2, align 1
  %call28.i217.1.2 = call zeroext i8 @mult(i8 zeroext %229, i8 zeroext %230) #3
  %conv29.i218.1.2 = zext i8 %call28.i217.1.2 to i32
  %xor.i219.1.2 = xor i32 %conv23.i212.1.2, %conv29.i218.1.2
  %scevgep184.1.2 = getelementptr [5 x i8], [5 x i8]* %u, i64 0, i64 4
  %231 = load i8, i8* %scevgep184.1.2, align 1
  %232 = load i8, i8* %arrayidx33.i223.1, align 1
  %call34.i224.1.2 = call zeroext i8 @mult(i8 zeroext %231, i8 zeroext %232) #3
  %conv35.i225.1.2 = zext i8 %call34.i224.1.2 to i32
  %xor36.i226.1.2 = xor i32 %xor.i219.1.2, %conv35.i225.1.2
  %conv37.i227.1.2 = trunc i32 %xor36.i226.1.2 to i8
  store i8 %conv37.i227.1.2, i8* %scevgep190.1.1, align 1
  %scevgep175.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %214, i64 0, i64 1, i64 1
  %233 = bitcast i8* %scevgep175.1 to [5 x [5 x i8]]*
  %scevgep188.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %215, i64 0, i64 1, i64 1
  %234 = bitcast i8* %scevgep188.1 to [5 x [5 x i8]]*
  %arrayidx25.i214.2 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  %arrayidx33.i223.2 = getelementptr inbounds i8, i8* %arraydecay11, i64 2
  %call16.i203.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i203.2, i8* %scevgep175.1, align 1
  %235 = load i8, i8* %scevgep175.1, align 1
  %conv23.i212.2 = zext i8 %235 to i32
  %236 = load i8, i8* %arrayidx25.i214.2, align 1
  %scevgep183.2 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 3
  %237 = load i8, i8* %scevgep183.2, align 1
  %call28.i217.2 = call zeroext i8 @mult(i8 zeroext %236, i8 zeroext %237) #3
  %conv29.i218.2 = zext i8 %call28.i217.2 to i32
  %xor.i219.2 = xor i32 %conv23.i212.2, %conv29.i218.2
  %scevgep184.2 = getelementptr [5 x i8], [5 x i8]* %u, i64 0, i64 3
  %238 = load i8, i8* %scevgep184.2, align 1
  %239 = load i8, i8* %arrayidx33.i223.2, align 1
  %call34.i224.2 = call zeroext i8 @mult(i8 zeroext %238, i8 zeroext %239) #3
  %conv35.i225.2 = zext i8 %call34.i224.2 to i32
  %xor36.i226.2 = xor i32 %xor.i219.2, %conv35.i225.2
  %conv37.i227.2 = trunc i32 %xor36.i226.2 to i8
  store i8 %conv37.i227.2, i8* %scevgep188.1, align 1
  %scevgep177.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %233, i64 0, i64 0, i64 1
  %scevgep190.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %234, i64 0, i64 1, i64 0
  %call16.i203.2.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i203.2.1, i8* %scevgep177.2, align 1
  %240 = load i8, i8* %scevgep177.2, align 1
  %conv23.i212.2.1 = zext i8 %240 to i32
  %241 = load i8, i8* %arrayidx25.i214.2, align 1
  %scevgep183.2.1 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 4
  %242 = load i8, i8* %scevgep183.2.1, align 1
  %call28.i217.2.1 = call zeroext i8 @mult(i8 zeroext %241, i8 zeroext %242) #3
  %conv29.i218.2.1 = zext i8 %call28.i217.2.1 to i32
  %xor.i219.2.1 = xor i32 %conv23.i212.2.1, %conv29.i218.2.1
  %scevgep184.2.1 = getelementptr [5 x i8], [5 x i8]* %u, i64 0, i64 4
  %243 = load i8, i8* %scevgep184.2.1, align 1
  %244 = load i8, i8* %arrayidx33.i223.2, align 1
  %call34.i224.2.1 = call zeroext i8 @mult(i8 zeroext %243, i8 zeroext %244) #3
  %conv35.i225.2.1 = zext i8 %call34.i224.2.1 to i32
  %xor36.i226.2.1 = xor i32 %xor.i219.2.1, %conv35.i225.2.1
  %conv37.i227.2.1 = trunc i32 %xor36.i226.2.1 to i8
  store i8 %conv37.i227.2.1, i8* %scevgep190.2, align 1
  %scevgep175.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %233, i64 0, i64 1, i64 1
  %scevgep188.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %234, i64 0, i64 1, i64 1
  %arrayidx25.i214.3 = getelementptr inbounds i8, i8* %arraydecay10, i64 3
  %arrayidx33.i223.3 = getelementptr inbounds i8, i8* %arraydecay11, i64 3
  %call16.i203.3 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i203.3, i8* %scevgep175.2, align 1
  %245 = load i8, i8* %scevgep175.2, align 1
  %conv23.i212.3 = zext i8 %245 to i32
  %246 = load i8, i8* %arrayidx25.i214.3, align 1
  %scevgep183.3 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 4
  %247 = load i8, i8* %scevgep183.3, align 1
  %call28.i217.3 = call zeroext i8 @mult(i8 zeroext %246, i8 zeroext %247) #3
  %conv29.i218.3 = zext i8 %call28.i217.3 to i32
  %xor.i219.3 = xor i32 %conv23.i212.3, %conv29.i218.3
  %scevgep184.3 = getelementptr [5 x i8], [5 x i8]* %u, i64 0, i64 4
  %248 = load i8, i8* %scevgep184.3, align 1
  %249 = load i8, i8* %arrayidx33.i223.3, align 1
  %call34.i224.3 = call zeroext i8 @mult(i8 zeroext %248, i8 zeroext %249) #3
  %conv35.i225.3 = zext i8 %call34.i224.3 to i32
  %xor36.i226.3 = xor i32 %xor.i219.3, %conv35.i225.3
  %conv37.i227.3 = trunc i32 %xor36.i226.3 to i8
  store i8 %conv37.i227.3, i8* %scevgep188.2, align 1
  %250 = load i8, i8* %arraydecay10, align 1
  %251 = load i8, i8* %arraydecay11, align 1
  %call54.i243 = call zeroext i8 @mult(i8 zeroext %250, i8 zeroext %251) #3
  store i8 %call54.i243, i8* %arraydecay12, align 1
  %scevgep168.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %252 = load i8, i8* %scevgep168.1, align 1
  %conv68.i255.1 = zext i8 %252 to i32
  %253 = load i8, i8* %arraydecay12, align 1
  %conv71.i258.1 = zext i8 %253 to i32
  %xor72.i259.1 = xor i32 %conv71.i258.1, %conv68.i255.1
  %conv73.i260.1 = trunc i32 %xor72.i259.1 to i8
  store i8 %conv73.i260.1, i8* %arraydecay12, align 1
  %scevgep168.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 2
  %254 = load i8, i8* %scevgep168.2, align 1
  %conv68.i255.2 = zext i8 %254 to i32
  %255 = load i8, i8* %arraydecay12, align 1
  %conv71.i258.2 = zext i8 %255 to i32
  %xor72.i259.2 = xor i32 %conv71.i258.2, %conv68.i255.2
  %conv73.i260.2 = trunc i32 %xor72.i259.2 to i8
  store i8 %conv73.i260.2, i8* %arraydecay12, align 1
  %scevgep168.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 3
  %256 = load i8, i8* %scevgep168.3, align 1
  %conv68.i255.3 = zext i8 %256 to i32
  %257 = load i8, i8* %arraydecay12, align 1
  %conv71.i258.3 = zext i8 %257 to i32
  %xor72.i259.3 = xor i32 %conv71.i258.3, %conv68.i255.3
  %conv73.i260.3 = trunc i32 %xor72.i259.3 to i8
  store i8 %conv73.i260.3, i8* %arraydecay12, align 1
  %scevgep168.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 4
  %258 = load i8, i8* %scevgep168.4, align 1
  %conv68.i255.4 = zext i8 %258 to i32
  %259 = load i8, i8* %arraydecay12, align 1
  %conv71.i258.4 = zext i8 %259 to i32
  %xor72.i259.4 = xor i32 %conv71.i258.4, %conv68.i255.4
  %conv73.i260.4 = trunc i32 %xor72.i259.4 to i8
  store i8 %conv73.i260.4, i8* %arraydecay12, align 1
  %scevgep167 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 1, i64 0
  %260 = bitcast i8* %scevgep167 to [5 x [5 x i8]]*
  %arrayidx51.i240.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %261 = load i8, i8* %arrayidx51.i240.1, align 1
  %arrayidx53.i242.1 = getelementptr inbounds i8, i8* %arraydecay11, i64 1
  %262 = load i8, i8* %arrayidx53.i242.1, align 1
  %call54.i243.1 = call zeroext i8 @mult(i8 zeroext %261, i8 zeroext %262) #3
  %arrayidx56.i245.1 = getelementptr inbounds i8, i8* %arraydecay12, i64 1
  store i8 %call54.i243.1, i8* %arrayidx56.i245.1, align 1
  %arrayidx70.i257.1 = getelementptr inbounds i8, i8* %arraydecay12, i64 1
  %scevgep168.1358 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %260, i64 0, i64 0, i64 0
  %263 = load i8, i8* %scevgep168.1358, align 1
  %conv68.i255.1359 = zext i8 %263 to i32
  %264 = load i8, i8* %arrayidx70.i257.1, align 1
  %conv71.i258.1360 = zext i8 %264 to i32
  %xor72.i259.1361 = xor i32 %conv71.i258.1360, %conv68.i255.1359
  %conv73.i260.1362 = trunc i32 %xor72.i259.1361 to i8
  store i8 %conv73.i260.1362, i8* %arrayidx70.i257.1, align 1
  %scevgep168.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %260, i64 0, i64 0, i64 2
  %265 = load i8, i8* %scevgep168.2.1, align 1
  %conv68.i255.2.1 = zext i8 %265 to i32
  %266 = load i8, i8* %arrayidx70.i257.1, align 1
  %conv71.i258.2.1 = zext i8 %266 to i32
  %xor72.i259.2.1 = xor i32 %conv71.i258.2.1, %conv68.i255.2.1
  %conv73.i260.2.1 = trunc i32 %xor72.i259.2.1 to i8
  store i8 %conv73.i260.2.1, i8* %arrayidx70.i257.1, align 1
  %scevgep168.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %260, i64 0, i64 0, i64 3
  %267 = load i8, i8* %scevgep168.3.1, align 1
  %conv68.i255.3.1 = zext i8 %267 to i32
  %268 = load i8, i8* %arrayidx70.i257.1, align 1
  %conv71.i258.3.1 = zext i8 %268 to i32
  %xor72.i259.3.1 = xor i32 %conv71.i258.3.1, %conv68.i255.3.1
  %conv73.i260.3.1 = trunc i32 %xor72.i259.3.1 to i8
  store i8 %conv73.i260.3.1, i8* %arrayidx70.i257.1, align 1
  %scevgep168.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %260, i64 0, i64 0, i64 4
  %269 = load i8, i8* %scevgep168.4.1, align 1
  %conv68.i255.4.1 = zext i8 %269 to i32
  %270 = load i8, i8* %arrayidx70.i257.1, align 1
  %conv71.i258.4.1 = zext i8 %270 to i32
  %xor72.i259.4.1 = xor i32 %conv71.i258.4.1, %conv68.i255.4.1
  %conv73.i260.4.1 = trunc i32 %xor72.i259.4.1 to i8
  store i8 %conv73.i260.4.1, i8* %arrayidx70.i257.1, align 1
  %scevgep167.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %260, i64 0, i64 1, i64 0
  %271 = bitcast i8* %scevgep167.1 to [5 x [5 x i8]]*
  %arrayidx51.i240.2 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  %272 = load i8, i8* %arrayidx51.i240.2, align 1
  %arrayidx53.i242.2 = getelementptr inbounds i8, i8* %arraydecay11, i64 2
  %273 = load i8, i8* %arrayidx53.i242.2, align 1
  %call54.i243.2 = call zeroext i8 @mult(i8 zeroext %272, i8 zeroext %273) #3
  %arrayidx56.i245.2 = getelementptr inbounds i8, i8* %arraydecay12, i64 2
  store i8 %call54.i243.2, i8* %arrayidx56.i245.2, align 1
  %arrayidx70.i257.2 = getelementptr inbounds i8, i8* %arraydecay12, i64 2
  %scevgep168.2367 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %271, i64 0, i64 0, i64 0
  %274 = load i8, i8* %scevgep168.2367, align 1
  %conv68.i255.2368 = zext i8 %274 to i32
  %275 = load i8, i8* %arrayidx70.i257.2, align 1
  %conv71.i258.2369 = zext i8 %275 to i32
  %xor72.i259.2370 = xor i32 %conv71.i258.2369, %conv68.i255.2368
  %conv73.i260.2371 = trunc i32 %xor72.i259.2370 to i8
  store i8 %conv73.i260.2371, i8* %arrayidx70.i257.2, align 1
  %scevgep168.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %271, i64 0, i64 0, i64 1
  %276 = load i8, i8* %scevgep168.1.2, align 1
  %conv68.i255.1.2 = zext i8 %276 to i32
  %277 = load i8, i8* %arrayidx70.i257.2, align 1
  %conv71.i258.1.2 = zext i8 %277 to i32
  %xor72.i259.1.2 = xor i32 %conv71.i258.1.2, %conv68.i255.1.2
  %conv73.i260.1.2 = trunc i32 %xor72.i259.1.2 to i8
  store i8 %conv73.i260.1.2, i8* %arrayidx70.i257.2, align 1
  %scevgep168.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %271, i64 0, i64 0, i64 3
  %278 = load i8, i8* %scevgep168.3.2, align 1
  %conv68.i255.3.2 = zext i8 %278 to i32
  %279 = load i8, i8* %arrayidx70.i257.2, align 1
  %conv71.i258.3.2 = zext i8 %279 to i32
  %xor72.i259.3.2 = xor i32 %conv71.i258.3.2, %conv68.i255.3.2
  %conv73.i260.3.2 = trunc i32 %xor72.i259.3.2 to i8
  store i8 %conv73.i260.3.2, i8* %arrayidx70.i257.2, align 1
  %scevgep168.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %271, i64 0, i64 0, i64 4
  %280 = load i8, i8* %scevgep168.4.2, align 1
  %conv68.i255.4.2 = zext i8 %280 to i32
  %281 = load i8, i8* %arrayidx70.i257.2, align 1
  %conv71.i258.4.2 = zext i8 %281 to i32
  %xor72.i259.4.2 = xor i32 %conv71.i258.4.2, %conv68.i255.4.2
  %conv73.i260.4.2 = trunc i32 %xor72.i259.4.2 to i8
  store i8 %conv73.i260.4.2, i8* %arrayidx70.i257.2, align 1
  %scevgep167.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %271, i64 0, i64 1, i64 0
  %282 = bitcast i8* %scevgep167.2 to [5 x [5 x i8]]*
  %arrayidx51.i240.3 = getelementptr inbounds i8, i8* %arraydecay10, i64 3
  %283 = load i8, i8* %arrayidx51.i240.3, align 1
  %arrayidx53.i242.3 = getelementptr inbounds i8, i8* %arraydecay11, i64 3
  %284 = load i8, i8* %arrayidx53.i242.3, align 1
  %call54.i243.3 = call zeroext i8 @mult(i8 zeroext %283, i8 zeroext %284) #3
  %arrayidx56.i245.3 = getelementptr inbounds i8, i8* %arraydecay12, i64 3
  store i8 %call54.i243.3, i8* %arrayidx56.i245.3, align 1
  %arrayidx70.i257.3 = getelementptr inbounds i8, i8* %arraydecay12, i64 3
  %scevgep168.3376 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %282, i64 0, i64 0, i64 0
  %285 = load i8, i8* %scevgep168.3376, align 1
  %conv68.i255.3377 = zext i8 %285 to i32
  %286 = load i8, i8* %arrayidx70.i257.3, align 1
  %conv71.i258.3378 = zext i8 %286 to i32
  %xor72.i259.3379 = xor i32 %conv71.i258.3378, %conv68.i255.3377
  %conv73.i260.3380 = trunc i32 %xor72.i259.3379 to i8
  store i8 %conv73.i260.3380, i8* %arrayidx70.i257.3, align 1
  %scevgep168.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %282, i64 0, i64 0, i64 1
  %287 = load i8, i8* %scevgep168.1.3, align 1
  %conv68.i255.1.3 = zext i8 %287 to i32
  %288 = load i8, i8* %arrayidx70.i257.3, align 1
  %conv71.i258.1.3 = zext i8 %288 to i32
  %xor72.i259.1.3 = xor i32 %conv71.i258.1.3, %conv68.i255.1.3
  %conv73.i260.1.3 = trunc i32 %xor72.i259.1.3 to i8
  store i8 %conv73.i260.1.3, i8* %arrayidx70.i257.3, align 1
  %scevgep168.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %282, i64 0, i64 0, i64 2
  %289 = load i8, i8* %scevgep168.2.3, align 1
  %conv68.i255.2.3 = zext i8 %289 to i32
  %290 = load i8, i8* %arrayidx70.i257.3, align 1
  %conv71.i258.2.3 = zext i8 %290 to i32
  %xor72.i259.2.3 = xor i32 %conv71.i258.2.3, %conv68.i255.2.3
  %conv73.i260.2.3 = trunc i32 %xor72.i259.2.3 to i8
  store i8 %conv73.i260.2.3, i8* %arrayidx70.i257.3, align 1
  %scevgep168.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %282, i64 0, i64 0, i64 4
  %291 = load i8, i8* %scevgep168.4.3, align 1
  %conv68.i255.4.3 = zext i8 %291 to i32
  %292 = load i8, i8* %arrayidx70.i257.3, align 1
  %conv71.i258.4.3 = zext i8 %292 to i32
  %xor72.i259.4.3 = xor i32 %conv71.i258.4.3, %conv68.i255.4.3
  %conv73.i260.4.3 = trunc i32 %xor72.i259.4.3 to i8
  store i8 %conv73.i260.4.3, i8* %arrayidx70.i257.3, align 1
  %scevgep167.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %282, i64 0, i64 1, i64 0
  %293 = bitcast i8* %scevgep167.3 to [5 x [5 x i8]]*
  %arrayidx51.i240.4 = getelementptr inbounds i8, i8* %arraydecay10, i64 4
  %294 = load i8, i8* %arrayidx51.i240.4, align 1
  %arrayidx53.i242.4 = getelementptr inbounds i8, i8* %arraydecay11, i64 4
  %295 = load i8, i8* %arrayidx53.i242.4, align 1
  %call54.i243.4 = call zeroext i8 @mult(i8 zeroext %294, i8 zeroext %295) #3
  %arrayidx56.i245.4 = getelementptr inbounds i8, i8* %arraydecay12, i64 4
  store i8 %call54.i243.4, i8* %arrayidx56.i245.4, align 1
  %arrayidx70.i257.4 = getelementptr inbounds i8, i8* %arraydecay12, i64 4
  %scevgep168.4385 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %293, i64 0, i64 0, i64 0
  %296 = load i8, i8* %scevgep168.4385, align 1
  %conv68.i255.4386 = zext i8 %296 to i32
  %297 = load i8, i8* %arrayidx70.i257.4, align 1
  %conv71.i258.4387 = zext i8 %297 to i32
  %xor72.i259.4388 = xor i32 %conv71.i258.4387, %conv68.i255.4386
  %conv73.i260.4389 = trunc i32 %xor72.i259.4388 to i8
  store i8 %conv73.i260.4389, i8* %arrayidx70.i257.4, align 1
  %scevgep168.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %293, i64 0, i64 0, i64 1
  %298 = load i8, i8* %scevgep168.1.4, align 1
  %conv68.i255.1.4 = zext i8 %298 to i32
  %299 = load i8, i8* %arrayidx70.i257.4, align 1
  %conv71.i258.1.4 = zext i8 %299 to i32
  %xor72.i259.1.4 = xor i32 %conv71.i258.1.4, %conv68.i255.1.4
  %conv73.i260.1.4 = trunc i32 %xor72.i259.1.4 to i8
  store i8 %conv73.i260.1.4, i8* %arrayidx70.i257.4, align 1
  %scevgep168.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %293, i64 0, i64 0, i64 2
  %300 = load i8, i8* %scevgep168.2.4, align 1
  %conv68.i255.2.4 = zext i8 %300 to i32
  %301 = load i8, i8* %arrayidx70.i257.4, align 1
  %conv71.i258.2.4 = zext i8 %301 to i32
  %xor72.i259.2.4 = xor i32 %conv71.i258.2.4, %conv68.i255.2.4
  %conv73.i260.2.4 = trunc i32 %xor72.i259.2.4 to i8
  store i8 %conv73.i260.2.4, i8* %arrayidx70.i257.4, align 1
  %scevgep168.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %293, i64 0, i64 0, i64 3
  %302 = load i8, i8* %scevgep168.3.4, align 1
  %conv68.i255.3.4 = zext i8 %302 to i32
  %303 = load i8, i8* %arrayidx70.i257.4, align 1
  %conv71.i258.3.4 = zext i8 %303 to i32
  %xor72.i259.3.4 = xor i32 %conv71.i258.3.4, %conv68.i255.3.4
  %conv73.i260.3.4 = trunc i32 %xor72.i259.3.4 to i8
  store i8 %conv73.i260.3.4, i8* %arrayidx70.i257.4, align 1
  %call80.i266 = call zeroext i8 @mult(i8 zeroext %call.i165, i8 zeroext %call1.i166) #3
  %conv81.i267 = zext i8 %call80.i266 to i32
  %scevgep158 = getelementptr [5 x i8], [5 x i8]* %v, i64 0, i64 0
  %304 = load i8, i8* %scevgep158, align 1
  %scevgep158.1 = getelementptr [5 x i8], [5 x i8]* %v, i64 0, i64 1
  %305 = load i8, i8* %scevgep158.1, align 1
  %conv.i.i113.i274.1 = zext i8 %305 to i32
  %conv1.i.i114.i275.1 = zext i8 %304 to i32
  %xor.i.i115.i276.1 = xor i32 %conv1.i.i114.i275.1, %conv.i.i113.i274.1
  %conv2.i.i116.i277.1 = trunc i32 %xor.i.i115.i276.1 to i8
  %scevgep158.2 = getelementptr [5 x i8], [5 x i8]* %v, i64 0, i64 2
  %306 = load i8, i8* %scevgep158.2, align 1
  %conv.i.i113.i274.2 = zext i8 %306 to i32
  %conv1.i.i114.i275.2 = zext i8 %conv2.i.i116.i277.1 to i32
  %xor.i.i115.i276.2 = xor i32 %conv1.i.i114.i275.2, %conv.i.i113.i274.2
  %conv2.i.i116.i277.2 = trunc i32 %xor.i.i115.i276.2 to i8
  %scevgep158.3 = getelementptr [5 x i8], [5 x i8]* %v, i64 0, i64 3
  %307 = load i8, i8* %scevgep158.3, align 1
  %conv.i.i113.i274.3 = zext i8 %307 to i32
  %conv1.i.i114.i275.3 = zext i8 %conv2.i.i116.i277.2 to i32
  %xor.i.i115.i276.3 = xor i32 %conv1.i.i114.i275.3, %conv.i.i113.i274.3
  %conv2.i.i116.i277.3 = trunc i32 %xor.i.i115.i276.3 to i8
  %scevgep158.4 = getelementptr [5 x i8], [5 x i8]* %v, i64 0, i64 4
  %308 = load i8, i8* %scevgep158.4, align 1
  %conv.i.i113.i274.4 = zext i8 %308 to i32
  %conv1.i.i114.i275.4 = zext i8 %conv2.i.i116.i277.3 to i32
  %xor.i.i115.i276.4 = xor i32 %conv1.i.i114.i275.4, %conv.i.i113.i274.4
  %conv2.i.i116.i277.4 = trunc i32 %xor.i.i115.i276.4 to i8
  %conv83.i280 = zext i8 %conv2.i.i116.i277.4 to i32
  %cmp84.i281 = icmp eq i32 %conv81.i267, %conv83.i280
  call void @assert(i1 zeroext %cmp84.i281) #3
  %scevgep153 = getelementptr [5 x i8], [5 x i8]* %v, i64 0, i64 0
  %309 = load i8, i8* %scevgep153, align 1
  %call.i291 = call zeroext i8 @exp16(i8 zeroext %309) #3
  %scevgep154 = getelementptr [5 x i8], [5 x i8]* %v, i64 0, i64 0
  store i8 %call.i291, i8* %scevgep154, align 1
  %scevgep153.1 = getelementptr [5 x i8], [5 x i8]* %v, i64 0, i64 1
  %310 = load i8, i8* %scevgep153.1, align 1
  %call.i291.1 = call zeroext i8 @exp16(i8 zeroext %310) #3
  %scevgep154.1 = getelementptr [5 x i8], [5 x i8]* %v, i64 0, i64 1
  store i8 %call.i291.1, i8* %scevgep154.1, align 1
  %scevgep153.2 = getelementptr [5 x i8], [5 x i8]* %v, i64 0, i64 2
  %311 = load i8, i8* %scevgep153.2, align 1
  %call.i291.2 = call zeroext i8 @exp16(i8 zeroext %311) #3
  %scevgep154.2 = getelementptr [5 x i8], [5 x i8]* %v, i64 0, i64 2
  store i8 %call.i291.2, i8* %scevgep154.2, align 1
  %scevgep153.3 = getelementptr [5 x i8], [5 x i8]* %v, i64 0, i64 3
  %312 = load i8, i8* %scevgep153.3, align 1
  %call.i291.3 = call zeroext i8 @exp16(i8 zeroext %312) #3
  %scevgep154.3 = getelementptr [5 x i8], [5 x i8]* %v, i64 0, i64 3
  store i8 %call.i291.3, i8* %scevgep154.3, align 1
  %scevgep153.4 = getelementptr [5 x i8], [5 x i8]* %v, i64 0, i64 4
  %313 = load i8, i8* %scevgep153.4, align 1
  %call.i291.4 = call zeroext i8 @exp16(i8 zeroext %313) #3
  %scevgep154.4 = getelementptr [5 x i8], [5 x i8]* %v, i64 0, i64 4
  store i8 %call.i291.4, i8* %scevgep154.4, align 1
  %arraydecay15 = getelementptr inbounds [5 x i8], [5 x i8]* %v, i64 0, i64 0
  %arraydecay16 = getelementptr inbounds [5 x i8], [5 x i8]* %w, i64 0, i64 0
  %arraydecay17 = getelementptr inbounds [5 x i8], [5 x i8]* %m, i64 0, i64 0
  %call.i323 = call zeroext i8 (...) @rand() #3
  %call1.i324 = call zeroext i8 (...) @rand() #3
  %conv.i325 = zext i8 %call.i323 to i32
  %scevgep149 = getelementptr [5 x i8], [5 x i8]* %v, i64 0, i64 0
  %314 = load i8, i8* %scevgep149, align 1
  %scevgep149.1 = getelementptr [5 x i8], [5 x i8]* %v, i64 0, i64 1
  %315 = load i8, i8* %scevgep149.1, align 1
  %conv.i.i.i331.1 = zext i8 %315 to i32
  %conv1.i.i.i332.1 = zext i8 %314 to i32
  %xor.i.i.i333.1 = xor i32 %conv1.i.i.i332.1, %conv.i.i.i331.1
  %conv2.i.i.i334.1 = trunc i32 %xor.i.i.i333.1 to i8
  %scevgep149.2 = getelementptr [5 x i8], [5 x i8]* %v, i64 0, i64 2
  %316 = load i8, i8* %scevgep149.2, align 1
  %conv.i.i.i331.2 = zext i8 %316 to i32
  %conv1.i.i.i332.2 = zext i8 %conv2.i.i.i334.1 to i32
  %xor.i.i.i333.2 = xor i32 %conv1.i.i.i332.2, %conv.i.i.i331.2
  %conv2.i.i.i334.2 = trunc i32 %xor.i.i.i333.2 to i8
  %scevgep149.3 = getelementptr [5 x i8], [5 x i8]* %v, i64 0, i64 3
  %317 = load i8, i8* %scevgep149.3, align 1
  %conv.i.i.i331.3 = zext i8 %317 to i32
  %conv1.i.i.i332.3 = zext i8 %conv2.i.i.i334.2 to i32
  %xor.i.i.i333.3 = xor i32 %conv1.i.i.i332.3, %conv.i.i.i331.3
  %conv2.i.i.i334.3 = trunc i32 %xor.i.i.i333.3 to i8
  %scevgep149.4 = getelementptr [5 x i8], [5 x i8]* %v, i64 0, i64 4
  %318 = load i8, i8* %scevgep149.4, align 1
  %conv.i.i.i331.4 = zext i8 %318 to i32
  %conv1.i.i.i332.4 = zext i8 %conv2.i.i.i334.3 to i32
  %xor.i.i.i333.4 = xor i32 %conv1.i.i.i332.4, %conv.i.i.i331.4
  %conv2.i.i.i334.4 = trunc i32 %xor.i.i.i333.4 to i8
  %conv3.i337 = zext i8 %conv2.i.i.i334.4 to i32
  %cmp.i338 = icmp eq i32 %conv.i325, %conv3.i337
  call void @assume(i1 zeroext %cmp.i338) #3
  %conv5.i339 = zext i8 %call1.i324 to i32
  %scevgep145 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 0
  %319 = load i8, i8* %scevgep145, align 1
  %scevgep145.1 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 1
  %320 = load i8, i8* %scevgep145.1, align 1
  %conv.i.i96.i346.1 = zext i8 %320 to i32
  %conv1.i.i97.i347.1 = zext i8 %319 to i32
  %xor.i.i98.i348.1 = xor i32 %conv1.i.i97.i347.1, %conv.i.i96.i346.1
  %conv2.i.i99.i349.1 = trunc i32 %xor.i.i98.i348.1 to i8
  %scevgep145.2 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 2
  %321 = load i8, i8* %scevgep145.2, align 1
  %conv.i.i96.i346.2 = zext i8 %321 to i32
  %conv1.i.i97.i347.2 = zext i8 %conv2.i.i99.i349.1 to i32
  %xor.i.i98.i348.2 = xor i32 %conv1.i.i97.i347.2, %conv.i.i96.i346.2
  %conv2.i.i99.i349.2 = trunc i32 %xor.i.i98.i348.2 to i8
  %scevgep145.3 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 3
  %322 = load i8, i8* %scevgep145.3, align 1
  %conv.i.i96.i346.3 = zext i8 %322 to i32
  %conv1.i.i97.i347.3 = zext i8 %conv2.i.i99.i349.2 to i32
  %xor.i.i98.i348.3 = xor i32 %conv1.i.i97.i347.3, %conv.i.i96.i346.3
  %conv2.i.i99.i349.3 = trunc i32 %xor.i.i98.i348.3 to i8
  %scevgep145.4 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 4
  %323 = load i8, i8* %scevgep145.4, align 1
  %conv.i.i96.i346.4 = zext i8 %323 to i32
  %conv1.i.i97.i347.4 = zext i8 %conv2.i.i99.i349.3 to i32
  %xor.i.i98.i348.4 = xor i32 %conv1.i.i97.i347.4, %conv.i.i96.i346.4
  %conv2.i.i99.i349.4 = trunc i32 %xor.i.i98.i348.4 to i8
  %conv7.i352 = zext i8 %conv2.i.i99.i349.4 to i32
  %cmp8.i353 = icmp eq i32 %conv5.i339, %conv7.i352
  call void @assume(i1 zeroext %cmp8.i353) #3
  %scevgep122 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %scevgep122123 = bitcast i8* %scevgep122 to [5 x [5 x i8]]*
  %scevgep135 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 1, i64 0
  %scevgep135136 = bitcast i8* %scevgep135 to [5 x [5 x i8]]*
  %call16.i361 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i361, i8* %scevgep122, align 1
  %324 = load i8, i8* %scevgep122, align 1
  %conv23.i370 = zext i8 %324 to i32
  %325 = load i8, i8* %arraydecay15, align 1
  %scevgep133 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 1
  %326 = load i8, i8* %scevgep133, align 1
  %call28.i375 = call zeroext i8 @mult(i8 zeroext %325, i8 zeroext %326) #3
  %conv29.i376 = zext i8 %call28.i375 to i32
  %xor.i377 = xor i32 %conv23.i370, %conv29.i376
  %scevgep134 = getelementptr [5 x i8], [5 x i8]* %v, i64 0, i64 1
  %327 = load i8, i8* %scevgep134, align 1
  %328 = load i8, i8* %arraydecay16, align 1
  %call34.i382 = call zeroext i8 @mult(i8 zeroext %327, i8 zeroext %328) #3
  %conv35.i383 = zext i8 %call34.i382 to i32
  %xor36.i384 = xor i32 %xor.i377, %conv35.i383
  %conv37.i385 = trunc i32 %xor36.i384 to i8
  store i8 %conv37.i385, i8* %scevgep135, align 1
  %scevgep127 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep122123, i64 0, i64 0, i64 1
  %329 = bitcast i8* %scevgep127 to [5 x [5 x i8]]*
  %scevgep140 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep135136, i64 0, i64 1, i64 0
  %330 = bitcast i8* %scevgep140 to [5 x [5 x i8]]*
  %call16.i361.1467 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i361.1467, i8* %scevgep127, align 1
  %331 = load i8, i8* %scevgep127, align 1
  %conv23.i370.1468 = zext i8 %331 to i32
  %332 = load i8, i8* %arraydecay15, align 1
  %scevgep133.1469 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 2
  %333 = load i8, i8* %scevgep133.1469, align 1
  %call28.i375.1470 = call zeroext i8 @mult(i8 zeroext %332, i8 zeroext %333) #3
  %conv29.i376.1471 = zext i8 %call28.i375.1470 to i32
  %xor.i377.1472 = xor i32 %conv23.i370.1468, %conv29.i376.1471
  %scevgep134.1473 = getelementptr [5 x i8], [5 x i8]* %v, i64 0, i64 2
  %334 = load i8, i8* %scevgep134.1473, align 1
  %335 = load i8, i8* %arraydecay16, align 1
  %call34.i382.1474 = call zeroext i8 @mult(i8 zeroext %334, i8 zeroext %335) #3
  %conv35.i383.1475 = zext i8 %call34.i382.1474 to i32
  %xor36.i384.1476 = xor i32 %xor.i377.1472, %conv35.i383.1475
  %conv37.i385.1477 = trunc i32 %xor36.i384.1476 to i8
  store i8 %conv37.i385.1477, i8* %scevgep140, align 1
  %scevgep127.1478 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %329, i64 0, i64 0, i64 1
  %336 = bitcast i8* %scevgep127.1478 to [5 x [5 x i8]]*
  %scevgep140.1479 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %330, i64 0, i64 1, i64 0
  %337 = bitcast i8* %scevgep140.1479 to [5 x [5 x i8]]*
  %call16.i361.2481 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i361.2481, i8* %scevgep127.1478, align 1
  %338 = load i8, i8* %scevgep127.1478, align 1
  %conv23.i370.2482 = zext i8 %338 to i32
  %339 = load i8, i8* %arraydecay15, align 1
  %scevgep133.2483 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 3
  %340 = load i8, i8* %scevgep133.2483, align 1
  %call28.i375.2484 = call zeroext i8 @mult(i8 zeroext %339, i8 zeroext %340) #3
  %conv29.i376.2485 = zext i8 %call28.i375.2484 to i32
  %xor.i377.2486 = xor i32 %conv23.i370.2482, %conv29.i376.2485
  %scevgep134.2487 = getelementptr [5 x i8], [5 x i8]* %v, i64 0, i64 3
  %341 = load i8, i8* %scevgep134.2487, align 1
  %342 = load i8, i8* %arraydecay16, align 1
  %call34.i382.2488 = call zeroext i8 @mult(i8 zeroext %341, i8 zeroext %342) #3
  %conv35.i383.2489 = zext i8 %call34.i382.2488 to i32
  %xor36.i384.2490 = xor i32 %xor.i377.2486, %conv35.i383.2489
  %conv37.i385.2491 = trunc i32 %xor36.i384.2490 to i8
  store i8 %conv37.i385.2491, i8* %scevgep140.1479, align 1
  %scevgep127.2492 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %336, i64 0, i64 0, i64 1
  %scevgep140.2493 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %337, i64 0, i64 1, i64 0
  %call16.i361.3495 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i361.3495, i8* %scevgep127.2492, align 1
  %343 = load i8, i8* %scevgep127.2492, align 1
  %conv23.i370.3496 = zext i8 %343 to i32
  %344 = load i8, i8* %arraydecay15, align 1
  %scevgep133.3497 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 4
  %345 = load i8, i8* %scevgep133.3497, align 1
  %call28.i375.3498 = call zeroext i8 @mult(i8 zeroext %344, i8 zeroext %345) #3
  %conv29.i376.3499 = zext i8 %call28.i375.3498 to i32
  %xor.i377.3500 = xor i32 %conv23.i370.3496, %conv29.i376.3499
  %scevgep134.3501 = getelementptr [5 x i8], [5 x i8]* %v, i64 0, i64 4
  %346 = load i8, i8* %scevgep134.3501, align 1
  %347 = load i8, i8* %arraydecay16, align 1
  %call34.i382.3502 = call zeroext i8 @mult(i8 zeroext %346, i8 zeroext %347) #3
  %conv35.i383.3503 = zext i8 %call34.i382.3502 to i32
  %xor36.i384.3504 = xor i32 %xor.i377.3500, %conv35.i383.3503
  %conv37.i385.3505 = trunc i32 %xor36.i384.3504 to i8
  store i8 %conv37.i385.3505, i8* %scevgep140.2493, align 1
  %scevgep125 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep122123, i64 0, i64 1, i64 1
  %348 = bitcast i8* %scevgep125 to [5 x [5 x i8]]*
  %scevgep138 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep135136, i64 0, i64 1, i64 1
  %349 = bitcast i8* %scevgep138 to [5 x [5 x i8]]*
  %arrayidx25.i372.1 = getelementptr inbounds i8, i8* %arraydecay15, i64 1
  %arrayidx33.i381.1 = getelementptr inbounds i8, i8* %arraydecay16, i64 1
  %call16.i361.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i361.1, i8* %scevgep125, align 1
  %350 = load i8, i8* %scevgep125, align 1
  %conv23.i370.1 = zext i8 %350 to i32
  %351 = load i8, i8* %arrayidx25.i372.1, align 1
  %scevgep133.1 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 2
  %352 = load i8, i8* %scevgep133.1, align 1
  %call28.i375.1 = call zeroext i8 @mult(i8 zeroext %351, i8 zeroext %352) #3
  %conv29.i376.1 = zext i8 %call28.i375.1 to i32
  %xor.i377.1 = xor i32 %conv23.i370.1, %conv29.i376.1
  %scevgep134.1 = getelementptr [5 x i8], [5 x i8]* %v, i64 0, i64 2
  %353 = load i8, i8* %scevgep134.1, align 1
  %354 = load i8, i8* %arrayidx33.i381.1, align 1
  %call34.i382.1 = call zeroext i8 @mult(i8 zeroext %353, i8 zeroext %354) #3
  %conv35.i383.1 = zext i8 %call34.i382.1 to i32
  %xor36.i384.1 = xor i32 %xor.i377.1, %conv35.i383.1
  %conv37.i385.1 = trunc i32 %xor36.i384.1 to i8
  store i8 %conv37.i385.1, i8* %scevgep138, align 1
  %scevgep127.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %348, i64 0, i64 0, i64 1
  %355 = bitcast i8* %scevgep127.1 to [5 x [5 x i8]]*
  %scevgep140.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %349, i64 0, i64 1, i64 0
  %356 = bitcast i8* %scevgep140.1 to [5 x [5 x i8]]*
  %call16.i361.1.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i361.1.1, i8* %scevgep127.1, align 1
  %357 = load i8, i8* %scevgep127.1, align 1
  %conv23.i370.1.1 = zext i8 %357 to i32
  %358 = load i8, i8* %arrayidx25.i372.1, align 1
  %scevgep133.1.1 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 3
  %359 = load i8, i8* %scevgep133.1.1, align 1
  %call28.i375.1.1 = call zeroext i8 @mult(i8 zeroext %358, i8 zeroext %359) #3
  %conv29.i376.1.1 = zext i8 %call28.i375.1.1 to i32
  %xor.i377.1.1 = xor i32 %conv23.i370.1.1, %conv29.i376.1.1
  %scevgep134.1.1 = getelementptr [5 x i8], [5 x i8]* %v, i64 0, i64 3
  %360 = load i8, i8* %scevgep134.1.1, align 1
  %361 = load i8, i8* %arrayidx33.i381.1, align 1
  %call34.i382.1.1 = call zeroext i8 @mult(i8 zeroext %360, i8 zeroext %361) #3
  %conv35.i383.1.1 = zext i8 %call34.i382.1.1 to i32
  %xor36.i384.1.1 = xor i32 %xor.i377.1.1, %conv35.i383.1.1
  %conv37.i385.1.1 = trunc i32 %xor36.i384.1.1 to i8
  store i8 %conv37.i385.1.1, i8* %scevgep140.1, align 1
  %scevgep127.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %355, i64 0, i64 0, i64 1
  %scevgep140.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %356, i64 0, i64 1, i64 0
  %call16.i361.1.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i361.1.2, i8* %scevgep127.1.1, align 1
  %362 = load i8, i8* %scevgep127.1.1, align 1
  %conv23.i370.1.2 = zext i8 %362 to i32
  %363 = load i8, i8* %arrayidx25.i372.1, align 1
  %scevgep133.1.2 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 4
  %364 = load i8, i8* %scevgep133.1.2, align 1
  %call28.i375.1.2 = call zeroext i8 @mult(i8 zeroext %363, i8 zeroext %364) #3
  %conv29.i376.1.2 = zext i8 %call28.i375.1.2 to i32
  %xor.i377.1.2 = xor i32 %conv23.i370.1.2, %conv29.i376.1.2
  %scevgep134.1.2 = getelementptr [5 x i8], [5 x i8]* %v, i64 0, i64 4
  %365 = load i8, i8* %scevgep134.1.2, align 1
  %366 = load i8, i8* %arrayidx33.i381.1, align 1
  %call34.i382.1.2 = call zeroext i8 @mult(i8 zeroext %365, i8 zeroext %366) #3
  %conv35.i383.1.2 = zext i8 %call34.i382.1.2 to i32
  %xor36.i384.1.2 = xor i32 %xor.i377.1.2, %conv35.i383.1.2
  %conv37.i385.1.2 = trunc i32 %xor36.i384.1.2 to i8
  store i8 %conv37.i385.1.2, i8* %scevgep140.1.1, align 1
  %scevgep125.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %348, i64 0, i64 1, i64 1
  %367 = bitcast i8* %scevgep125.1 to [5 x [5 x i8]]*
  %scevgep138.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %349, i64 0, i64 1, i64 1
  %368 = bitcast i8* %scevgep138.1 to [5 x [5 x i8]]*
  %arrayidx25.i372.2 = getelementptr inbounds i8, i8* %arraydecay15, i64 2
  %arrayidx33.i381.2 = getelementptr inbounds i8, i8* %arraydecay16, i64 2
  %call16.i361.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i361.2, i8* %scevgep125.1, align 1
  %369 = load i8, i8* %scevgep125.1, align 1
  %conv23.i370.2 = zext i8 %369 to i32
  %370 = load i8, i8* %arrayidx25.i372.2, align 1
  %scevgep133.2 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 3
  %371 = load i8, i8* %scevgep133.2, align 1
  %call28.i375.2 = call zeroext i8 @mult(i8 zeroext %370, i8 zeroext %371) #3
  %conv29.i376.2 = zext i8 %call28.i375.2 to i32
  %xor.i377.2 = xor i32 %conv23.i370.2, %conv29.i376.2
  %scevgep134.2 = getelementptr [5 x i8], [5 x i8]* %v, i64 0, i64 3
  %372 = load i8, i8* %scevgep134.2, align 1
  %373 = load i8, i8* %arrayidx33.i381.2, align 1
  %call34.i382.2 = call zeroext i8 @mult(i8 zeroext %372, i8 zeroext %373) #3
  %conv35.i383.2 = zext i8 %call34.i382.2 to i32
  %xor36.i384.2 = xor i32 %xor.i377.2, %conv35.i383.2
  %conv37.i385.2 = trunc i32 %xor36.i384.2 to i8
  store i8 %conv37.i385.2, i8* %scevgep138.1, align 1
  %scevgep127.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %367, i64 0, i64 0, i64 1
  %scevgep140.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %368, i64 0, i64 1, i64 0
  %call16.i361.2.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i361.2.1, i8* %scevgep127.2, align 1
  %374 = load i8, i8* %scevgep127.2, align 1
  %conv23.i370.2.1 = zext i8 %374 to i32
  %375 = load i8, i8* %arrayidx25.i372.2, align 1
  %scevgep133.2.1 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 4
  %376 = load i8, i8* %scevgep133.2.1, align 1
  %call28.i375.2.1 = call zeroext i8 @mult(i8 zeroext %375, i8 zeroext %376) #3
  %conv29.i376.2.1 = zext i8 %call28.i375.2.1 to i32
  %xor.i377.2.1 = xor i32 %conv23.i370.2.1, %conv29.i376.2.1
  %scevgep134.2.1 = getelementptr [5 x i8], [5 x i8]* %v, i64 0, i64 4
  %377 = load i8, i8* %scevgep134.2.1, align 1
  %378 = load i8, i8* %arrayidx33.i381.2, align 1
  %call34.i382.2.1 = call zeroext i8 @mult(i8 zeroext %377, i8 zeroext %378) #3
  %conv35.i383.2.1 = zext i8 %call34.i382.2.1 to i32
  %xor36.i384.2.1 = xor i32 %xor.i377.2.1, %conv35.i383.2.1
  %conv37.i385.2.1 = trunc i32 %xor36.i384.2.1 to i8
  store i8 %conv37.i385.2.1, i8* %scevgep140.2, align 1
  %scevgep125.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %367, i64 0, i64 1, i64 1
  %scevgep138.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %368, i64 0, i64 1, i64 1
  %arrayidx25.i372.3 = getelementptr inbounds i8, i8* %arraydecay15, i64 3
  %arrayidx33.i381.3 = getelementptr inbounds i8, i8* %arraydecay16, i64 3
  %call16.i361.3 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i361.3, i8* %scevgep125.2, align 1
  %379 = load i8, i8* %scevgep125.2, align 1
  %conv23.i370.3 = zext i8 %379 to i32
  %380 = load i8, i8* %arrayidx25.i372.3, align 1
  %scevgep133.3 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 4
  %381 = load i8, i8* %scevgep133.3, align 1
  %call28.i375.3 = call zeroext i8 @mult(i8 zeroext %380, i8 zeroext %381) #3
  %conv29.i376.3 = zext i8 %call28.i375.3 to i32
  %xor.i377.3 = xor i32 %conv23.i370.3, %conv29.i376.3
  %scevgep134.3 = getelementptr [5 x i8], [5 x i8]* %v, i64 0, i64 4
  %382 = load i8, i8* %scevgep134.3, align 1
  %383 = load i8, i8* %arrayidx33.i381.3, align 1
  %call34.i382.3 = call zeroext i8 @mult(i8 zeroext %382, i8 zeroext %383) #3
  %conv35.i383.3 = zext i8 %call34.i382.3 to i32
  %xor36.i384.3 = xor i32 %xor.i377.3, %conv35.i383.3
  %conv37.i385.3 = trunc i32 %xor36.i384.3 to i8
  store i8 %conv37.i385.3, i8* %scevgep138.2, align 1
  %384 = load i8, i8* %arraydecay15, align 1
  %385 = load i8, i8* %arraydecay16, align 1
  %call54.i401 = call zeroext i8 @mult(i8 zeroext %384, i8 zeroext %385) #3
  store i8 %call54.i401, i8* %arraydecay17, align 1
  %scevgep118.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %386 = load i8, i8* %scevgep118.1, align 1
  %conv68.i413.1 = zext i8 %386 to i32
  %387 = load i8, i8* %arraydecay17, align 1
  %conv71.i416.1 = zext i8 %387 to i32
  %xor72.i417.1 = xor i32 %conv71.i416.1, %conv68.i413.1
  %conv73.i418.1 = trunc i32 %xor72.i417.1 to i8
  store i8 %conv73.i418.1, i8* %arraydecay17, align 1
  %scevgep118.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 2
  %388 = load i8, i8* %scevgep118.2, align 1
  %conv68.i413.2 = zext i8 %388 to i32
  %389 = load i8, i8* %arraydecay17, align 1
  %conv71.i416.2 = zext i8 %389 to i32
  %xor72.i417.2 = xor i32 %conv71.i416.2, %conv68.i413.2
  %conv73.i418.2 = trunc i32 %xor72.i417.2 to i8
  store i8 %conv73.i418.2, i8* %arraydecay17, align 1
  %scevgep118.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 3
  %390 = load i8, i8* %scevgep118.3, align 1
  %conv68.i413.3 = zext i8 %390 to i32
  %391 = load i8, i8* %arraydecay17, align 1
  %conv71.i416.3 = zext i8 %391 to i32
  %xor72.i417.3 = xor i32 %conv71.i416.3, %conv68.i413.3
  %conv73.i418.3 = trunc i32 %xor72.i417.3 to i8
  store i8 %conv73.i418.3, i8* %arraydecay17, align 1
  %scevgep118.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 4
  %392 = load i8, i8* %scevgep118.4, align 1
  %conv68.i413.4 = zext i8 %392 to i32
  %393 = load i8, i8* %arraydecay17, align 1
  %conv71.i416.4 = zext i8 %393 to i32
  %xor72.i417.4 = xor i32 %conv71.i416.4, %conv68.i413.4
  %conv73.i418.4 = trunc i32 %xor72.i417.4 to i8
  store i8 %conv73.i418.4, i8* %arraydecay17, align 1
  %scevgep117 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 1, i64 0
  %394 = bitcast i8* %scevgep117 to [5 x [5 x i8]]*
  %arrayidx51.i398.1 = getelementptr inbounds i8, i8* %arraydecay15, i64 1
  %395 = load i8, i8* %arrayidx51.i398.1, align 1
  %arrayidx53.i400.1 = getelementptr inbounds i8, i8* %arraydecay16, i64 1
  %396 = load i8, i8* %arrayidx53.i400.1, align 1
  %call54.i401.1 = call zeroext i8 @mult(i8 zeroext %395, i8 zeroext %396) #3
  %arrayidx56.i403.1 = getelementptr inbounds i8, i8* %arraydecay17, i64 1
  store i8 %call54.i401.1, i8* %arrayidx56.i403.1, align 1
  %arrayidx70.i415.1 = getelementptr inbounds i8, i8* %arraydecay17, i64 1
  %scevgep118.1322 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %394, i64 0, i64 0, i64 0
  %397 = load i8, i8* %scevgep118.1322, align 1
  %conv68.i413.1323 = zext i8 %397 to i32
  %398 = load i8, i8* %arrayidx70.i415.1, align 1
  %conv71.i416.1324 = zext i8 %398 to i32
  %xor72.i417.1325 = xor i32 %conv71.i416.1324, %conv68.i413.1323
  %conv73.i418.1326 = trunc i32 %xor72.i417.1325 to i8
  store i8 %conv73.i418.1326, i8* %arrayidx70.i415.1, align 1
  %scevgep118.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %394, i64 0, i64 0, i64 2
  %399 = load i8, i8* %scevgep118.2.1, align 1
  %conv68.i413.2.1 = zext i8 %399 to i32
  %400 = load i8, i8* %arrayidx70.i415.1, align 1
  %conv71.i416.2.1 = zext i8 %400 to i32
  %xor72.i417.2.1 = xor i32 %conv71.i416.2.1, %conv68.i413.2.1
  %conv73.i418.2.1 = trunc i32 %xor72.i417.2.1 to i8
  store i8 %conv73.i418.2.1, i8* %arrayidx70.i415.1, align 1
  %scevgep118.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %394, i64 0, i64 0, i64 3
  %401 = load i8, i8* %scevgep118.3.1, align 1
  %conv68.i413.3.1 = zext i8 %401 to i32
  %402 = load i8, i8* %arrayidx70.i415.1, align 1
  %conv71.i416.3.1 = zext i8 %402 to i32
  %xor72.i417.3.1 = xor i32 %conv71.i416.3.1, %conv68.i413.3.1
  %conv73.i418.3.1 = trunc i32 %xor72.i417.3.1 to i8
  store i8 %conv73.i418.3.1, i8* %arrayidx70.i415.1, align 1
  %scevgep118.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %394, i64 0, i64 0, i64 4
  %403 = load i8, i8* %scevgep118.4.1, align 1
  %conv68.i413.4.1 = zext i8 %403 to i32
  %404 = load i8, i8* %arrayidx70.i415.1, align 1
  %conv71.i416.4.1 = zext i8 %404 to i32
  %xor72.i417.4.1 = xor i32 %conv71.i416.4.1, %conv68.i413.4.1
  %conv73.i418.4.1 = trunc i32 %xor72.i417.4.1 to i8
  store i8 %conv73.i418.4.1, i8* %arrayidx70.i415.1, align 1
  %scevgep117.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %394, i64 0, i64 1, i64 0
  %405 = bitcast i8* %scevgep117.1 to [5 x [5 x i8]]*
  %arrayidx51.i398.2 = getelementptr inbounds i8, i8* %arraydecay15, i64 2
  %406 = load i8, i8* %arrayidx51.i398.2, align 1
  %arrayidx53.i400.2 = getelementptr inbounds i8, i8* %arraydecay16, i64 2
  %407 = load i8, i8* %arrayidx53.i400.2, align 1
  %call54.i401.2 = call zeroext i8 @mult(i8 zeroext %406, i8 zeroext %407) #3
  %arrayidx56.i403.2 = getelementptr inbounds i8, i8* %arraydecay17, i64 2
  store i8 %call54.i401.2, i8* %arrayidx56.i403.2, align 1
  %arrayidx70.i415.2 = getelementptr inbounds i8, i8* %arraydecay17, i64 2
  %scevgep118.2331 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %405, i64 0, i64 0, i64 0
  %408 = load i8, i8* %scevgep118.2331, align 1
  %conv68.i413.2332 = zext i8 %408 to i32
  %409 = load i8, i8* %arrayidx70.i415.2, align 1
  %conv71.i416.2333 = zext i8 %409 to i32
  %xor72.i417.2334 = xor i32 %conv71.i416.2333, %conv68.i413.2332
  %conv73.i418.2335 = trunc i32 %xor72.i417.2334 to i8
  store i8 %conv73.i418.2335, i8* %arrayidx70.i415.2, align 1
  %scevgep118.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %405, i64 0, i64 0, i64 1
  %410 = load i8, i8* %scevgep118.1.2, align 1
  %conv68.i413.1.2 = zext i8 %410 to i32
  %411 = load i8, i8* %arrayidx70.i415.2, align 1
  %conv71.i416.1.2 = zext i8 %411 to i32
  %xor72.i417.1.2 = xor i32 %conv71.i416.1.2, %conv68.i413.1.2
  %conv73.i418.1.2 = trunc i32 %xor72.i417.1.2 to i8
  store i8 %conv73.i418.1.2, i8* %arrayidx70.i415.2, align 1
  %scevgep118.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %405, i64 0, i64 0, i64 3
  %412 = load i8, i8* %scevgep118.3.2, align 1
  %conv68.i413.3.2 = zext i8 %412 to i32
  %413 = load i8, i8* %arrayidx70.i415.2, align 1
  %conv71.i416.3.2 = zext i8 %413 to i32
  %xor72.i417.3.2 = xor i32 %conv71.i416.3.2, %conv68.i413.3.2
  %conv73.i418.3.2 = trunc i32 %xor72.i417.3.2 to i8
  store i8 %conv73.i418.3.2, i8* %arrayidx70.i415.2, align 1
  %scevgep118.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %405, i64 0, i64 0, i64 4
  %414 = load i8, i8* %scevgep118.4.2, align 1
  %conv68.i413.4.2 = zext i8 %414 to i32
  %415 = load i8, i8* %arrayidx70.i415.2, align 1
  %conv71.i416.4.2 = zext i8 %415 to i32
  %xor72.i417.4.2 = xor i32 %conv71.i416.4.2, %conv68.i413.4.2
  %conv73.i418.4.2 = trunc i32 %xor72.i417.4.2 to i8
  store i8 %conv73.i418.4.2, i8* %arrayidx70.i415.2, align 1
  %scevgep117.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %405, i64 0, i64 1, i64 0
  %416 = bitcast i8* %scevgep117.2 to [5 x [5 x i8]]*
  %arrayidx51.i398.3 = getelementptr inbounds i8, i8* %arraydecay15, i64 3
  %417 = load i8, i8* %arrayidx51.i398.3, align 1
  %arrayidx53.i400.3 = getelementptr inbounds i8, i8* %arraydecay16, i64 3
  %418 = load i8, i8* %arrayidx53.i400.3, align 1
  %call54.i401.3 = call zeroext i8 @mult(i8 zeroext %417, i8 zeroext %418) #3
  %arrayidx56.i403.3 = getelementptr inbounds i8, i8* %arraydecay17, i64 3
  store i8 %call54.i401.3, i8* %arrayidx56.i403.3, align 1
  %arrayidx70.i415.3 = getelementptr inbounds i8, i8* %arraydecay17, i64 3
  %scevgep118.3340 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %416, i64 0, i64 0, i64 0
  %419 = load i8, i8* %scevgep118.3340, align 1
  %conv68.i413.3341 = zext i8 %419 to i32
  %420 = load i8, i8* %arrayidx70.i415.3, align 1
  %conv71.i416.3342 = zext i8 %420 to i32
  %xor72.i417.3343 = xor i32 %conv71.i416.3342, %conv68.i413.3341
  %conv73.i418.3344 = trunc i32 %xor72.i417.3343 to i8
  store i8 %conv73.i418.3344, i8* %arrayidx70.i415.3, align 1
  %scevgep118.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %416, i64 0, i64 0, i64 1
  %421 = load i8, i8* %scevgep118.1.3, align 1
  %conv68.i413.1.3 = zext i8 %421 to i32
  %422 = load i8, i8* %arrayidx70.i415.3, align 1
  %conv71.i416.1.3 = zext i8 %422 to i32
  %xor72.i417.1.3 = xor i32 %conv71.i416.1.3, %conv68.i413.1.3
  %conv73.i418.1.3 = trunc i32 %xor72.i417.1.3 to i8
  store i8 %conv73.i418.1.3, i8* %arrayidx70.i415.3, align 1
  %scevgep118.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %416, i64 0, i64 0, i64 2
  %423 = load i8, i8* %scevgep118.2.3, align 1
  %conv68.i413.2.3 = zext i8 %423 to i32
  %424 = load i8, i8* %arrayidx70.i415.3, align 1
  %conv71.i416.2.3 = zext i8 %424 to i32
  %xor72.i417.2.3 = xor i32 %conv71.i416.2.3, %conv68.i413.2.3
  %conv73.i418.2.3 = trunc i32 %xor72.i417.2.3 to i8
  store i8 %conv73.i418.2.3, i8* %arrayidx70.i415.3, align 1
  %scevgep118.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %416, i64 0, i64 0, i64 4
  %425 = load i8, i8* %scevgep118.4.3, align 1
  %conv68.i413.4.3 = zext i8 %425 to i32
  %426 = load i8, i8* %arrayidx70.i415.3, align 1
  %conv71.i416.4.3 = zext i8 %426 to i32
  %xor72.i417.4.3 = xor i32 %conv71.i416.4.3, %conv68.i413.4.3
  %conv73.i418.4.3 = trunc i32 %xor72.i417.4.3 to i8
  store i8 %conv73.i418.4.3, i8* %arrayidx70.i415.3, align 1
  %scevgep117.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %416, i64 0, i64 1, i64 0
  %427 = bitcast i8* %scevgep117.3 to [5 x [5 x i8]]*
  %arrayidx51.i398.4 = getelementptr inbounds i8, i8* %arraydecay15, i64 4
  %428 = load i8, i8* %arrayidx51.i398.4, align 1
  %arrayidx53.i400.4 = getelementptr inbounds i8, i8* %arraydecay16, i64 4
  %429 = load i8, i8* %arrayidx53.i400.4, align 1
  %call54.i401.4 = call zeroext i8 @mult(i8 zeroext %428, i8 zeroext %429) #3
  %arrayidx56.i403.4 = getelementptr inbounds i8, i8* %arraydecay17, i64 4
  store i8 %call54.i401.4, i8* %arrayidx56.i403.4, align 1
  %arrayidx70.i415.4 = getelementptr inbounds i8, i8* %arraydecay17, i64 4
  %scevgep118.4349 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %427, i64 0, i64 0, i64 0
  %430 = load i8, i8* %scevgep118.4349, align 1
  %conv68.i413.4350 = zext i8 %430 to i32
  %431 = load i8, i8* %arrayidx70.i415.4, align 1
  %conv71.i416.4351 = zext i8 %431 to i32
  %xor72.i417.4352 = xor i32 %conv71.i416.4351, %conv68.i413.4350
  %conv73.i418.4353 = trunc i32 %xor72.i417.4352 to i8
  store i8 %conv73.i418.4353, i8* %arrayidx70.i415.4, align 1
  %scevgep118.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %427, i64 0, i64 0, i64 1
  %432 = load i8, i8* %scevgep118.1.4, align 1
  %conv68.i413.1.4 = zext i8 %432 to i32
  %433 = load i8, i8* %arrayidx70.i415.4, align 1
  %conv71.i416.1.4 = zext i8 %433 to i32
  %xor72.i417.1.4 = xor i32 %conv71.i416.1.4, %conv68.i413.1.4
  %conv73.i418.1.4 = trunc i32 %xor72.i417.1.4 to i8
  store i8 %conv73.i418.1.4, i8* %arrayidx70.i415.4, align 1
  %scevgep118.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %427, i64 0, i64 0, i64 2
  %434 = load i8, i8* %scevgep118.2.4, align 1
  %conv68.i413.2.4 = zext i8 %434 to i32
  %435 = load i8, i8* %arrayidx70.i415.4, align 1
  %conv71.i416.2.4 = zext i8 %435 to i32
  %xor72.i417.2.4 = xor i32 %conv71.i416.2.4, %conv68.i413.2.4
  %conv73.i418.2.4 = trunc i32 %xor72.i417.2.4 to i8
  store i8 %conv73.i418.2.4, i8* %arrayidx70.i415.4, align 1
  %scevgep118.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %427, i64 0, i64 0, i64 3
  %436 = load i8, i8* %scevgep118.3.4, align 1
  %conv68.i413.3.4 = zext i8 %436 to i32
  %437 = load i8, i8* %arrayidx70.i415.4, align 1
  %conv71.i416.3.4 = zext i8 %437 to i32
  %xor72.i417.3.4 = xor i32 %conv71.i416.3.4, %conv68.i413.3.4
  %conv73.i418.3.4 = trunc i32 %xor72.i417.3.4 to i8
  store i8 %conv73.i418.3.4, i8* %arrayidx70.i415.4, align 1
  %call80.i424 = call zeroext i8 @mult(i8 zeroext %call.i323, i8 zeroext %call1.i324) #3
  %conv81.i425 = zext i8 %call80.i424 to i32
  %scevgep108 = getelementptr [5 x i8], [5 x i8]* %m, i64 0, i64 0
  %438 = load i8, i8* %scevgep108, align 1
  %scevgep108.1 = getelementptr [5 x i8], [5 x i8]* %m, i64 0, i64 1
  %439 = load i8, i8* %scevgep108.1, align 1
  %conv.i.i113.i432.1 = zext i8 %439 to i32
  %conv1.i.i114.i433.1 = zext i8 %438 to i32
  %xor.i.i115.i434.1 = xor i32 %conv1.i.i114.i433.1, %conv.i.i113.i432.1
  %conv2.i.i116.i435.1 = trunc i32 %xor.i.i115.i434.1 to i8
  %scevgep108.2 = getelementptr [5 x i8], [5 x i8]* %m, i64 0, i64 2
  %440 = load i8, i8* %scevgep108.2, align 1
  %conv.i.i113.i432.2 = zext i8 %440 to i32
  %conv1.i.i114.i433.2 = zext i8 %conv2.i.i116.i435.1 to i32
  %xor.i.i115.i434.2 = xor i32 %conv1.i.i114.i433.2, %conv.i.i113.i432.2
  %conv2.i.i116.i435.2 = trunc i32 %xor.i.i115.i434.2 to i8
  %scevgep108.3 = getelementptr [5 x i8], [5 x i8]* %m, i64 0, i64 3
  %441 = load i8, i8* %scevgep108.3, align 1
  %conv.i.i113.i432.3 = zext i8 %441 to i32
  %conv1.i.i114.i433.3 = zext i8 %conv2.i.i116.i435.2 to i32
  %xor.i.i115.i434.3 = xor i32 %conv1.i.i114.i433.3, %conv.i.i113.i432.3
  %conv2.i.i116.i435.3 = trunc i32 %xor.i.i115.i434.3 to i8
  %scevgep108.4 = getelementptr [5 x i8], [5 x i8]* %m, i64 0, i64 4
  %442 = load i8, i8* %scevgep108.4, align 1
  %conv.i.i113.i432.4 = zext i8 %442 to i32
  %conv1.i.i114.i433.4 = zext i8 %conv2.i.i116.i435.3 to i32
  %xor.i.i115.i434.4 = xor i32 %conv1.i.i114.i433.4, %conv.i.i113.i432.4
  %conv2.i.i116.i435.4 = trunc i32 %xor.i.i115.i434.4 to i8
  %conv83.i438 = zext i8 %conv2.i.i116.i435.4 to i32
  %cmp84.i439 = icmp eq i32 %conv81.i425, %conv83.i438
  call void @assert(i1 zeroext %cmp84.i439) #3
  %arraydecay18 = getelementptr inbounds [5 x i8], [5 x i8]* %m, i64 0, i64 0
  %arraydecay19 = getelementptr inbounds [5 x i8], [5 x i8]* %z, i64 0, i64 0
  %call.i466 = call zeroext i8 (...) @rand() #3
  %call1.i467 = call zeroext i8 (...) @rand() #3
  %conv.i468 = zext i8 %call.i466 to i32
  %scevgep104 = getelementptr [5 x i8], [5 x i8]* %m, i64 0, i64 0
  %443 = load i8, i8* %scevgep104, align 1
  %scevgep104.1 = getelementptr [5 x i8], [5 x i8]* %m, i64 0, i64 1
  %444 = load i8, i8* %scevgep104.1, align 1
  %conv.i.i.i474.1 = zext i8 %444 to i32
  %conv1.i.i.i475.1 = zext i8 %443 to i32
  %xor.i.i.i476.1 = xor i32 %conv1.i.i.i475.1, %conv.i.i.i474.1
  %conv2.i.i.i477.1 = trunc i32 %xor.i.i.i476.1 to i8
  %scevgep104.2 = getelementptr [5 x i8], [5 x i8]* %m, i64 0, i64 2
  %445 = load i8, i8* %scevgep104.2, align 1
  %conv.i.i.i474.2 = zext i8 %445 to i32
  %conv1.i.i.i475.2 = zext i8 %conv2.i.i.i477.1 to i32
  %xor.i.i.i476.2 = xor i32 %conv1.i.i.i475.2, %conv.i.i.i474.2
  %conv2.i.i.i477.2 = trunc i32 %xor.i.i.i476.2 to i8
  %scevgep104.3 = getelementptr [5 x i8], [5 x i8]* %m, i64 0, i64 3
  %446 = load i8, i8* %scevgep104.3, align 1
  %conv.i.i.i474.3 = zext i8 %446 to i32
  %conv1.i.i.i475.3 = zext i8 %conv2.i.i.i477.2 to i32
  %xor.i.i.i476.3 = xor i32 %conv1.i.i.i475.3, %conv.i.i.i474.3
  %conv2.i.i.i477.3 = trunc i32 %xor.i.i.i476.3 to i8
  %scevgep104.4 = getelementptr [5 x i8], [5 x i8]* %m, i64 0, i64 4
  %447 = load i8, i8* %scevgep104.4, align 1
  %conv.i.i.i474.4 = zext i8 %447 to i32
  %conv1.i.i.i475.4 = zext i8 %conv2.i.i.i477.3 to i32
  %xor.i.i.i476.4 = xor i32 %conv1.i.i.i475.4, %conv.i.i.i474.4
  %conv2.i.i.i477.4 = trunc i32 %xor.i.i.i476.4 to i8
  %conv3.i480 = zext i8 %conv2.i.i.i477.4 to i32
  %cmp.i481 = icmp eq i32 %conv.i468, %conv3.i480
  call void @assume(i1 zeroext %cmp.i481) #3
  %conv5.i482 = zext i8 %call1.i467 to i32
  %scevgep100 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 0
  %448 = load i8, i8* %scevgep100, align 1
  %scevgep100.1 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 1
  %449 = load i8, i8* %scevgep100.1, align 1
  %conv.i.i96.i489.1 = zext i8 %449 to i32
  %conv1.i.i97.i490.1 = zext i8 %448 to i32
  %xor.i.i98.i491.1 = xor i32 %conv1.i.i97.i490.1, %conv.i.i96.i489.1
  %conv2.i.i99.i492.1 = trunc i32 %xor.i.i98.i491.1 to i8
  %scevgep100.2 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 2
  %450 = load i8, i8* %scevgep100.2, align 1
  %conv.i.i96.i489.2 = zext i8 %450 to i32
  %conv1.i.i97.i490.2 = zext i8 %conv2.i.i99.i492.1 to i32
  %xor.i.i98.i491.2 = xor i32 %conv1.i.i97.i490.2, %conv.i.i96.i489.2
  %conv2.i.i99.i492.2 = trunc i32 %xor.i.i98.i491.2 to i8
  %scevgep100.3 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 3
  %451 = load i8, i8* %scevgep100.3, align 1
  %conv.i.i96.i489.3 = zext i8 %451 to i32
  %conv1.i.i97.i490.3 = zext i8 %conv2.i.i99.i492.2 to i32
  %xor.i.i98.i491.3 = xor i32 %conv1.i.i97.i490.3, %conv.i.i96.i489.3
  %conv2.i.i99.i492.3 = trunc i32 %xor.i.i98.i491.3 to i8
  %scevgep100.4 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 4
  %452 = load i8, i8* %scevgep100.4, align 1
  %conv.i.i96.i489.4 = zext i8 %452 to i32
  %conv1.i.i97.i490.4 = zext i8 %conv2.i.i99.i492.3 to i32
  %xor.i.i98.i491.4 = xor i32 %conv1.i.i97.i490.4, %conv.i.i96.i489.4
  %conv2.i.i99.i492.4 = trunc i32 %xor.i.i98.i491.4 to i8
  %conv7.i495 = zext i8 %conv2.i.i99.i492.4 to i32
  %cmp8.i496 = icmp eq i32 %conv5.i482, %conv7.i495
  call void @assume(i1 zeroext %cmp8.i496) #3
  %scevgep77 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %scevgep7778 = bitcast i8* %scevgep77 to [5 x [5 x i8]]*
  %scevgep90 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 1, i64 0
  %scevgep9091 = bitcast i8* %scevgep90 to [5 x [5 x i8]]*
  %call16.i504 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i504, i8* %scevgep77, align 1
  %453 = load i8, i8* %scevgep77, align 1
  %conv23.i513 = zext i8 %453 to i32
  %454 = load i8, i8* %arraydecay18, align 1
  %scevgep88 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 1
  %455 = load i8, i8* %scevgep88, align 1
  %call28.i518 = call zeroext i8 @mult(i8 zeroext %454, i8 zeroext %455) #3
  %conv29.i519 = zext i8 %call28.i518 to i32
  %xor.i520 = xor i32 %conv23.i513, %conv29.i519
  %scevgep89 = getelementptr [5 x i8], [5 x i8]* %m, i64 0, i64 1
  %456 = load i8, i8* %scevgep89, align 1
  %457 = load i8, i8* %arraydecay19, align 1
  %call34.i525 = call zeroext i8 @mult(i8 zeroext %456, i8 zeroext %457) #3
  %conv35.i526 = zext i8 %call34.i525 to i32
  %xor36.i527 = xor i32 %xor.i520, %conv35.i526
  %conv37.i528 = trunc i32 %xor36.i527 to i8
  store i8 %conv37.i528, i8* %scevgep90, align 1
  %scevgep82 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep7778, i64 0, i64 0, i64 1
  %458 = bitcast i8* %scevgep82 to [5 x [5 x i8]]*
  %scevgep95 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep9091, i64 0, i64 1, i64 0
  %459 = bitcast i8* %scevgep95 to [5 x [5 x i8]]*
  %call16.i504.1428 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i504.1428, i8* %scevgep82, align 1
  %460 = load i8, i8* %scevgep82, align 1
  %conv23.i513.1429 = zext i8 %460 to i32
  %461 = load i8, i8* %arraydecay18, align 1
  %scevgep88.1430 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 2
  %462 = load i8, i8* %scevgep88.1430, align 1
  %call28.i518.1431 = call zeroext i8 @mult(i8 zeroext %461, i8 zeroext %462) #3
  %conv29.i519.1432 = zext i8 %call28.i518.1431 to i32
  %xor.i520.1433 = xor i32 %conv23.i513.1429, %conv29.i519.1432
  %scevgep89.1434 = getelementptr [5 x i8], [5 x i8]* %m, i64 0, i64 2
  %463 = load i8, i8* %scevgep89.1434, align 1
  %464 = load i8, i8* %arraydecay19, align 1
  %call34.i525.1435 = call zeroext i8 @mult(i8 zeroext %463, i8 zeroext %464) #3
  %conv35.i526.1436 = zext i8 %call34.i525.1435 to i32
  %xor36.i527.1437 = xor i32 %xor.i520.1433, %conv35.i526.1436
  %conv37.i528.1438 = trunc i32 %xor36.i527.1437 to i8
  store i8 %conv37.i528.1438, i8* %scevgep95, align 1
  %scevgep82.1439 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %458, i64 0, i64 0, i64 1
  %465 = bitcast i8* %scevgep82.1439 to [5 x [5 x i8]]*
  %scevgep95.1440 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %459, i64 0, i64 1, i64 0
  %466 = bitcast i8* %scevgep95.1440 to [5 x [5 x i8]]*
  %call16.i504.2442 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i504.2442, i8* %scevgep82.1439, align 1
  %467 = load i8, i8* %scevgep82.1439, align 1
  %conv23.i513.2443 = zext i8 %467 to i32
  %468 = load i8, i8* %arraydecay18, align 1
  %scevgep88.2444 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 3
  %469 = load i8, i8* %scevgep88.2444, align 1
  %call28.i518.2445 = call zeroext i8 @mult(i8 zeroext %468, i8 zeroext %469) #3
  %conv29.i519.2446 = zext i8 %call28.i518.2445 to i32
  %xor.i520.2447 = xor i32 %conv23.i513.2443, %conv29.i519.2446
  %scevgep89.2448 = getelementptr [5 x i8], [5 x i8]* %m, i64 0, i64 3
  %470 = load i8, i8* %scevgep89.2448, align 1
  %471 = load i8, i8* %arraydecay19, align 1
  %call34.i525.2449 = call zeroext i8 @mult(i8 zeroext %470, i8 zeroext %471) #3
  %conv35.i526.2450 = zext i8 %call34.i525.2449 to i32
  %xor36.i527.2451 = xor i32 %xor.i520.2447, %conv35.i526.2450
  %conv37.i528.2452 = trunc i32 %xor36.i527.2451 to i8
  store i8 %conv37.i528.2452, i8* %scevgep95.1440, align 1
  %scevgep82.2453 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %465, i64 0, i64 0, i64 1
  %scevgep95.2454 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %466, i64 0, i64 1, i64 0
  %call16.i504.3456 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i504.3456, i8* %scevgep82.2453, align 1
  %472 = load i8, i8* %scevgep82.2453, align 1
  %conv23.i513.3457 = zext i8 %472 to i32
  %473 = load i8, i8* %arraydecay18, align 1
  %scevgep88.3458 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 4
  %474 = load i8, i8* %scevgep88.3458, align 1
  %call28.i518.3459 = call zeroext i8 @mult(i8 zeroext %473, i8 zeroext %474) #3
  %conv29.i519.3460 = zext i8 %call28.i518.3459 to i32
  %xor.i520.3461 = xor i32 %conv23.i513.3457, %conv29.i519.3460
  %scevgep89.3462 = getelementptr [5 x i8], [5 x i8]* %m, i64 0, i64 4
  %475 = load i8, i8* %scevgep89.3462, align 1
  %476 = load i8, i8* %arraydecay19, align 1
  %call34.i525.3463 = call zeroext i8 @mult(i8 zeroext %475, i8 zeroext %476) #3
  %conv35.i526.3464 = zext i8 %call34.i525.3463 to i32
  %xor36.i527.3465 = xor i32 %xor.i520.3461, %conv35.i526.3464
  %conv37.i528.3466 = trunc i32 %xor36.i527.3465 to i8
  store i8 %conv37.i528.3466, i8* %scevgep95.2454, align 1
  %scevgep80 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep7778, i64 0, i64 1, i64 1
  %477 = bitcast i8* %scevgep80 to [5 x [5 x i8]]*
  %scevgep93 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep9091, i64 0, i64 1, i64 1
  %478 = bitcast i8* %scevgep93 to [5 x [5 x i8]]*
  %arrayidx25.i515.1 = getelementptr inbounds i8, i8* %arraydecay18, i64 1
  %arrayidx33.i524.1 = getelementptr inbounds i8, i8* %arraydecay19, i64 1
  %call16.i504.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i504.1, i8* %scevgep80, align 1
  %479 = load i8, i8* %scevgep80, align 1
  %conv23.i513.1 = zext i8 %479 to i32
  %480 = load i8, i8* %arrayidx25.i515.1, align 1
  %scevgep88.1 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 2
  %481 = load i8, i8* %scevgep88.1, align 1
  %call28.i518.1 = call zeroext i8 @mult(i8 zeroext %480, i8 zeroext %481) #3
  %conv29.i519.1 = zext i8 %call28.i518.1 to i32
  %xor.i520.1 = xor i32 %conv23.i513.1, %conv29.i519.1
  %scevgep89.1 = getelementptr [5 x i8], [5 x i8]* %m, i64 0, i64 2
  %482 = load i8, i8* %scevgep89.1, align 1
  %483 = load i8, i8* %arrayidx33.i524.1, align 1
  %call34.i525.1 = call zeroext i8 @mult(i8 zeroext %482, i8 zeroext %483) #3
  %conv35.i526.1 = zext i8 %call34.i525.1 to i32
  %xor36.i527.1 = xor i32 %xor.i520.1, %conv35.i526.1
  %conv37.i528.1 = trunc i32 %xor36.i527.1 to i8
  store i8 %conv37.i528.1, i8* %scevgep93, align 1
  %scevgep82.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %477, i64 0, i64 0, i64 1
  %484 = bitcast i8* %scevgep82.1 to [5 x [5 x i8]]*
  %scevgep95.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %478, i64 0, i64 1, i64 0
  %485 = bitcast i8* %scevgep95.1 to [5 x [5 x i8]]*
  %call16.i504.1.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i504.1.1, i8* %scevgep82.1, align 1
  %486 = load i8, i8* %scevgep82.1, align 1
  %conv23.i513.1.1 = zext i8 %486 to i32
  %487 = load i8, i8* %arrayidx25.i515.1, align 1
  %scevgep88.1.1 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 3
  %488 = load i8, i8* %scevgep88.1.1, align 1
  %call28.i518.1.1 = call zeroext i8 @mult(i8 zeroext %487, i8 zeroext %488) #3
  %conv29.i519.1.1 = zext i8 %call28.i518.1.1 to i32
  %xor.i520.1.1 = xor i32 %conv23.i513.1.1, %conv29.i519.1.1
  %scevgep89.1.1 = getelementptr [5 x i8], [5 x i8]* %m, i64 0, i64 3
  %489 = load i8, i8* %scevgep89.1.1, align 1
  %490 = load i8, i8* %arrayidx33.i524.1, align 1
  %call34.i525.1.1 = call zeroext i8 @mult(i8 zeroext %489, i8 zeroext %490) #3
  %conv35.i526.1.1 = zext i8 %call34.i525.1.1 to i32
  %xor36.i527.1.1 = xor i32 %xor.i520.1.1, %conv35.i526.1.1
  %conv37.i528.1.1 = trunc i32 %xor36.i527.1.1 to i8
  store i8 %conv37.i528.1.1, i8* %scevgep95.1, align 1
  %scevgep82.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %484, i64 0, i64 0, i64 1
  %scevgep95.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %485, i64 0, i64 1, i64 0
  %call16.i504.1.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i504.1.2, i8* %scevgep82.1.1, align 1
  %491 = load i8, i8* %scevgep82.1.1, align 1
  %conv23.i513.1.2 = zext i8 %491 to i32
  %492 = load i8, i8* %arrayidx25.i515.1, align 1
  %scevgep88.1.2 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 4
  %493 = load i8, i8* %scevgep88.1.2, align 1
  %call28.i518.1.2 = call zeroext i8 @mult(i8 zeroext %492, i8 zeroext %493) #3
  %conv29.i519.1.2 = zext i8 %call28.i518.1.2 to i32
  %xor.i520.1.2 = xor i32 %conv23.i513.1.2, %conv29.i519.1.2
  %scevgep89.1.2 = getelementptr [5 x i8], [5 x i8]* %m, i64 0, i64 4
  %494 = load i8, i8* %scevgep89.1.2, align 1
  %495 = load i8, i8* %arrayidx33.i524.1, align 1
  %call34.i525.1.2 = call zeroext i8 @mult(i8 zeroext %494, i8 zeroext %495) #3
  %conv35.i526.1.2 = zext i8 %call34.i525.1.2 to i32
  %xor36.i527.1.2 = xor i32 %xor.i520.1.2, %conv35.i526.1.2
  %conv37.i528.1.2 = trunc i32 %xor36.i527.1.2 to i8
  store i8 %conv37.i528.1.2, i8* %scevgep95.1.1, align 1
  %scevgep80.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %477, i64 0, i64 1, i64 1
  %496 = bitcast i8* %scevgep80.1 to [5 x [5 x i8]]*
  %scevgep93.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %478, i64 0, i64 1, i64 1
  %497 = bitcast i8* %scevgep93.1 to [5 x [5 x i8]]*
  %arrayidx25.i515.2 = getelementptr inbounds i8, i8* %arraydecay18, i64 2
  %arrayidx33.i524.2 = getelementptr inbounds i8, i8* %arraydecay19, i64 2
  %call16.i504.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i504.2, i8* %scevgep80.1, align 1
  %498 = load i8, i8* %scevgep80.1, align 1
  %conv23.i513.2 = zext i8 %498 to i32
  %499 = load i8, i8* %arrayidx25.i515.2, align 1
  %scevgep88.2 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 3
  %500 = load i8, i8* %scevgep88.2, align 1
  %call28.i518.2 = call zeroext i8 @mult(i8 zeroext %499, i8 zeroext %500) #3
  %conv29.i519.2 = zext i8 %call28.i518.2 to i32
  %xor.i520.2 = xor i32 %conv23.i513.2, %conv29.i519.2
  %scevgep89.2 = getelementptr [5 x i8], [5 x i8]* %m, i64 0, i64 3
  %501 = load i8, i8* %scevgep89.2, align 1
  %502 = load i8, i8* %arrayidx33.i524.2, align 1
  %call34.i525.2 = call zeroext i8 @mult(i8 zeroext %501, i8 zeroext %502) #3
  %conv35.i526.2 = zext i8 %call34.i525.2 to i32
  %xor36.i527.2 = xor i32 %xor.i520.2, %conv35.i526.2
  %conv37.i528.2 = trunc i32 %xor36.i527.2 to i8
  store i8 %conv37.i528.2, i8* %scevgep93.1, align 1
  %scevgep82.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %496, i64 0, i64 0, i64 1
  %scevgep95.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %497, i64 0, i64 1, i64 0
  %call16.i504.2.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i504.2.1, i8* %scevgep82.2, align 1
  %503 = load i8, i8* %scevgep82.2, align 1
  %conv23.i513.2.1 = zext i8 %503 to i32
  %504 = load i8, i8* %arrayidx25.i515.2, align 1
  %scevgep88.2.1 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 4
  %505 = load i8, i8* %scevgep88.2.1, align 1
  %call28.i518.2.1 = call zeroext i8 @mult(i8 zeroext %504, i8 zeroext %505) #3
  %conv29.i519.2.1 = zext i8 %call28.i518.2.1 to i32
  %xor.i520.2.1 = xor i32 %conv23.i513.2.1, %conv29.i519.2.1
  %scevgep89.2.1 = getelementptr [5 x i8], [5 x i8]* %m, i64 0, i64 4
  %506 = load i8, i8* %scevgep89.2.1, align 1
  %507 = load i8, i8* %arrayidx33.i524.2, align 1
  %call34.i525.2.1 = call zeroext i8 @mult(i8 zeroext %506, i8 zeroext %507) #3
  %conv35.i526.2.1 = zext i8 %call34.i525.2.1 to i32
  %xor36.i527.2.1 = xor i32 %xor.i520.2.1, %conv35.i526.2.1
  %conv37.i528.2.1 = trunc i32 %xor36.i527.2.1 to i8
  store i8 %conv37.i528.2.1, i8* %scevgep95.2, align 1
  %scevgep80.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %496, i64 0, i64 1, i64 1
  %scevgep93.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %497, i64 0, i64 1, i64 1
  %arrayidx25.i515.3 = getelementptr inbounds i8, i8* %arraydecay18, i64 3
  %arrayidx33.i524.3 = getelementptr inbounds i8, i8* %arraydecay19, i64 3
  %call16.i504.3 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i504.3, i8* %scevgep80.2, align 1
  %508 = load i8, i8* %scevgep80.2, align 1
  %conv23.i513.3 = zext i8 %508 to i32
  %509 = load i8, i8* %arrayidx25.i515.3, align 1
  %scevgep88.3 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 4
  %510 = load i8, i8* %scevgep88.3, align 1
  %call28.i518.3 = call zeroext i8 @mult(i8 zeroext %509, i8 zeroext %510) #3
  %conv29.i519.3 = zext i8 %call28.i518.3 to i32
  %xor.i520.3 = xor i32 %conv23.i513.3, %conv29.i519.3
  %scevgep89.3 = getelementptr [5 x i8], [5 x i8]* %m, i64 0, i64 4
  %511 = load i8, i8* %scevgep89.3, align 1
  %512 = load i8, i8* %arrayidx33.i524.3, align 1
  %call34.i525.3 = call zeroext i8 @mult(i8 zeroext %511, i8 zeroext %512) #3
  %conv35.i526.3 = zext i8 %call34.i525.3 to i32
  %xor36.i527.3 = xor i32 %xor.i520.3, %conv35.i526.3
  %conv37.i528.3 = trunc i32 %xor36.i527.3 to i8
  store i8 %conv37.i528.3, i8* %scevgep93.2, align 1
  %513 = load i8, i8* %arraydecay18, align 1
  %514 = load i8, i8* %arraydecay19, align 1
  %call54.i544 = call zeroext i8 @mult(i8 zeroext %513, i8 zeroext %514) #3
  store i8 %call54.i544, i8* %y, align 1
  %scevgep74.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %515 = load i8, i8* %scevgep74.1, align 1
  %conv68.i556.1 = zext i8 %515 to i32
  %516 = load i8, i8* %y, align 1
  %conv71.i559.1 = zext i8 %516 to i32
  %xor72.i560.1 = xor i32 %conv71.i559.1, %conv68.i556.1
  %conv73.i561.1 = trunc i32 %xor72.i560.1 to i8
  store i8 %conv73.i561.1, i8* %y, align 1
  %scevgep74.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 2
  %517 = load i8, i8* %scevgep74.2, align 1
  %conv68.i556.2 = zext i8 %517 to i32
  %518 = load i8, i8* %y, align 1
  %conv71.i559.2 = zext i8 %518 to i32
  %xor72.i560.2 = xor i32 %conv71.i559.2, %conv68.i556.2
  %conv73.i561.2 = trunc i32 %xor72.i560.2 to i8
  store i8 %conv73.i561.2, i8* %y, align 1
  %scevgep74.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 3
  %519 = load i8, i8* %scevgep74.3, align 1
  %conv68.i556.3 = zext i8 %519 to i32
  %520 = load i8, i8* %y, align 1
  %conv71.i559.3 = zext i8 %520 to i32
  %xor72.i560.3 = xor i32 %conv71.i559.3, %conv68.i556.3
  %conv73.i561.3 = trunc i32 %xor72.i560.3 to i8
  store i8 %conv73.i561.3, i8* %y, align 1
  %scevgep74.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 4
  %521 = load i8, i8* %scevgep74.4, align 1
  %conv68.i556.4 = zext i8 %521 to i32
  %522 = load i8, i8* %y, align 1
  %conv71.i559.4 = zext i8 %522 to i32
  %xor72.i560.4 = xor i32 %conv71.i559.4, %conv68.i556.4
  %conv73.i561.4 = trunc i32 %xor72.i560.4 to i8
  store i8 %conv73.i561.4, i8* %y, align 1
  %scevgep73 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 1, i64 0
  %523 = bitcast i8* %scevgep73 to [5 x [5 x i8]]*
  %arrayidx51.i541.1 = getelementptr inbounds i8, i8* %arraydecay18, i64 1
  %524 = load i8, i8* %arrayidx51.i541.1, align 1
  %arrayidx53.i543.1 = getelementptr inbounds i8, i8* %arraydecay19, i64 1
  %525 = load i8, i8* %arrayidx53.i543.1, align 1
  %call54.i544.1 = call zeroext i8 @mult(i8 zeroext %524, i8 zeroext %525) #3
  %arrayidx56.i546.1 = getelementptr inbounds i8, i8* %y, i64 1
  store i8 %call54.i544.1, i8* %arrayidx56.i546.1, align 1
  %arrayidx70.i558.1 = getelementptr inbounds i8, i8* %y, i64 1
  %scevgep74.1286 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %523, i64 0, i64 0, i64 0
  %526 = load i8, i8* %scevgep74.1286, align 1
  %conv68.i556.1287 = zext i8 %526 to i32
  %527 = load i8, i8* %arrayidx70.i558.1, align 1
  %conv71.i559.1288 = zext i8 %527 to i32
  %xor72.i560.1289 = xor i32 %conv71.i559.1288, %conv68.i556.1287
  %conv73.i561.1290 = trunc i32 %xor72.i560.1289 to i8
  store i8 %conv73.i561.1290, i8* %arrayidx70.i558.1, align 1
  %scevgep74.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %523, i64 0, i64 0, i64 2
  %528 = load i8, i8* %scevgep74.2.1, align 1
  %conv68.i556.2.1 = zext i8 %528 to i32
  %529 = load i8, i8* %arrayidx70.i558.1, align 1
  %conv71.i559.2.1 = zext i8 %529 to i32
  %xor72.i560.2.1 = xor i32 %conv71.i559.2.1, %conv68.i556.2.1
  %conv73.i561.2.1 = trunc i32 %xor72.i560.2.1 to i8
  store i8 %conv73.i561.2.1, i8* %arrayidx70.i558.1, align 1
  %scevgep74.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %523, i64 0, i64 0, i64 3
  %530 = load i8, i8* %scevgep74.3.1, align 1
  %conv68.i556.3.1 = zext i8 %530 to i32
  %531 = load i8, i8* %arrayidx70.i558.1, align 1
  %conv71.i559.3.1 = zext i8 %531 to i32
  %xor72.i560.3.1 = xor i32 %conv71.i559.3.1, %conv68.i556.3.1
  %conv73.i561.3.1 = trunc i32 %xor72.i560.3.1 to i8
  store i8 %conv73.i561.3.1, i8* %arrayidx70.i558.1, align 1
  %scevgep74.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %523, i64 0, i64 0, i64 4
  %532 = load i8, i8* %scevgep74.4.1, align 1
  %conv68.i556.4.1 = zext i8 %532 to i32
  %533 = load i8, i8* %arrayidx70.i558.1, align 1
  %conv71.i559.4.1 = zext i8 %533 to i32
  %xor72.i560.4.1 = xor i32 %conv71.i559.4.1, %conv68.i556.4.1
  %conv73.i561.4.1 = trunc i32 %xor72.i560.4.1 to i8
  store i8 %conv73.i561.4.1, i8* %arrayidx70.i558.1, align 1
  %scevgep73.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %523, i64 0, i64 1, i64 0
  %534 = bitcast i8* %scevgep73.1 to [5 x [5 x i8]]*
  %arrayidx51.i541.2 = getelementptr inbounds i8, i8* %arraydecay18, i64 2
  %535 = load i8, i8* %arrayidx51.i541.2, align 1
  %arrayidx53.i543.2 = getelementptr inbounds i8, i8* %arraydecay19, i64 2
  %536 = load i8, i8* %arrayidx53.i543.2, align 1
  %call54.i544.2 = call zeroext i8 @mult(i8 zeroext %535, i8 zeroext %536) #3
  %arrayidx56.i546.2 = getelementptr inbounds i8, i8* %y, i64 2
  store i8 %call54.i544.2, i8* %arrayidx56.i546.2, align 1
  %arrayidx70.i558.2 = getelementptr inbounds i8, i8* %y, i64 2
  %scevgep74.2295 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %534, i64 0, i64 0, i64 0
  %537 = load i8, i8* %scevgep74.2295, align 1
  %conv68.i556.2296 = zext i8 %537 to i32
  %538 = load i8, i8* %arrayidx70.i558.2, align 1
  %conv71.i559.2297 = zext i8 %538 to i32
  %xor72.i560.2298 = xor i32 %conv71.i559.2297, %conv68.i556.2296
  %conv73.i561.2299 = trunc i32 %xor72.i560.2298 to i8
  store i8 %conv73.i561.2299, i8* %arrayidx70.i558.2, align 1
  %scevgep74.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %534, i64 0, i64 0, i64 1
  %539 = load i8, i8* %scevgep74.1.2, align 1
  %conv68.i556.1.2 = zext i8 %539 to i32
  %540 = load i8, i8* %arrayidx70.i558.2, align 1
  %conv71.i559.1.2 = zext i8 %540 to i32
  %xor72.i560.1.2 = xor i32 %conv71.i559.1.2, %conv68.i556.1.2
  %conv73.i561.1.2 = trunc i32 %xor72.i560.1.2 to i8
  store i8 %conv73.i561.1.2, i8* %arrayidx70.i558.2, align 1
  %scevgep74.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %534, i64 0, i64 0, i64 3
  %541 = load i8, i8* %scevgep74.3.2, align 1
  %conv68.i556.3.2 = zext i8 %541 to i32
  %542 = load i8, i8* %arrayidx70.i558.2, align 1
  %conv71.i559.3.2 = zext i8 %542 to i32
  %xor72.i560.3.2 = xor i32 %conv71.i559.3.2, %conv68.i556.3.2
  %conv73.i561.3.2 = trunc i32 %xor72.i560.3.2 to i8
  store i8 %conv73.i561.3.2, i8* %arrayidx70.i558.2, align 1
  %scevgep74.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %534, i64 0, i64 0, i64 4
  %543 = load i8, i8* %scevgep74.4.2, align 1
  %conv68.i556.4.2 = zext i8 %543 to i32
  %544 = load i8, i8* %arrayidx70.i558.2, align 1
  %conv71.i559.4.2 = zext i8 %544 to i32
  %xor72.i560.4.2 = xor i32 %conv71.i559.4.2, %conv68.i556.4.2
  %conv73.i561.4.2 = trunc i32 %xor72.i560.4.2 to i8
  store i8 %conv73.i561.4.2, i8* %arrayidx70.i558.2, align 1
  %scevgep73.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %534, i64 0, i64 1, i64 0
  %545 = bitcast i8* %scevgep73.2 to [5 x [5 x i8]]*
  %arrayidx51.i541.3 = getelementptr inbounds i8, i8* %arraydecay18, i64 3
  %546 = load i8, i8* %arrayidx51.i541.3, align 1
  %arrayidx53.i543.3 = getelementptr inbounds i8, i8* %arraydecay19, i64 3
  %547 = load i8, i8* %arrayidx53.i543.3, align 1
  %call54.i544.3 = call zeroext i8 @mult(i8 zeroext %546, i8 zeroext %547) #3
  %arrayidx56.i546.3 = getelementptr inbounds i8, i8* %y, i64 3
  store i8 %call54.i544.3, i8* %arrayidx56.i546.3, align 1
  %arrayidx70.i558.3 = getelementptr inbounds i8, i8* %y, i64 3
  %scevgep74.3304 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %545, i64 0, i64 0, i64 0
  %548 = load i8, i8* %scevgep74.3304, align 1
  %conv68.i556.3305 = zext i8 %548 to i32
  %549 = load i8, i8* %arrayidx70.i558.3, align 1
  %conv71.i559.3306 = zext i8 %549 to i32
  %xor72.i560.3307 = xor i32 %conv71.i559.3306, %conv68.i556.3305
  %conv73.i561.3308 = trunc i32 %xor72.i560.3307 to i8
  store i8 %conv73.i561.3308, i8* %arrayidx70.i558.3, align 1
  %scevgep74.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %545, i64 0, i64 0, i64 1
  %550 = load i8, i8* %scevgep74.1.3, align 1
  %conv68.i556.1.3 = zext i8 %550 to i32
  %551 = load i8, i8* %arrayidx70.i558.3, align 1
  %conv71.i559.1.3 = zext i8 %551 to i32
  %xor72.i560.1.3 = xor i32 %conv71.i559.1.3, %conv68.i556.1.3
  %conv73.i561.1.3 = trunc i32 %xor72.i560.1.3 to i8
  store i8 %conv73.i561.1.3, i8* %arrayidx70.i558.3, align 1
  %scevgep74.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %545, i64 0, i64 0, i64 2
  %552 = load i8, i8* %scevgep74.2.3, align 1
  %conv68.i556.2.3 = zext i8 %552 to i32
  %553 = load i8, i8* %arrayidx70.i558.3, align 1
  %conv71.i559.2.3 = zext i8 %553 to i32
  %xor72.i560.2.3 = xor i32 %conv71.i559.2.3, %conv68.i556.2.3
  %conv73.i561.2.3 = trunc i32 %xor72.i560.2.3 to i8
  store i8 %conv73.i561.2.3, i8* %arrayidx70.i558.3, align 1
  %scevgep74.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %545, i64 0, i64 0, i64 4
  %554 = load i8, i8* %scevgep74.4.3, align 1
  %conv68.i556.4.3 = zext i8 %554 to i32
  %555 = load i8, i8* %arrayidx70.i558.3, align 1
  %conv71.i559.4.3 = zext i8 %555 to i32
  %xor72.i560.4.3 = xor i32 %conv71.i559.4.3, %conv68.i556.4.3
  %conv73.i561.4.3 = trunc i32 %xor72.i560.4.3 to i8
  store i8 %conv73.i561.4.3, i8* %arrayidx70.i558.3, align 1
  %scevgep73.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %545, i64 0, i64 1, i64 0
  %556 = bitcast i8* %scevgep73.3 to [5 x [5 x i8]]*
  %arrayidx51.i541.4 = getelementptr inbounds i8, i8* %arraydecay18, i64 4
  %557 = load i8, i8* %arrayidx51.i541.4, align 1
  %arrayidx53.i543.4 = getelementptr inbounds i8, i8* %arraydecay19, i64 4
  %558 = load i8, i8* %arrayidx53.i543.4, align 1
  %call54.i544.4 = call zeroext i8 @mult(i8 zeroext %557, i8 zeroext %558) #3
  %arrayidx56.i546.4 = getelementptr inbounds i8, i8* %y, i64 4
  store i8 %call54.i544.4, i8* %arrayidx56.i546.4, align 1
  %arrayidx70.i558.4 = getelementptr inbounds i8, i8* %y, i64 4
  %scevgep74.4313 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %556, i64 0, i64 0, i64 0
  %559 = load i8, i8* %scevgep74.4313, align 1
  %conv68.i556.4314 = zext i8 %559 to i32
  %560 = load i8, i8* %arrayidx70.i558.4, align 1
  %conv71.i559.4315 = zext i8 %560 to i32
  %xor72.i560.4316 = xor i32 %conv71.i559.4315, %conv68.i556.4314
  %conv73.i561.4317 = trunc i32 %xor72.i560.4316 to i8
  store i8 %conv73.i561.4317, i8* %arrayidx70.i558.4, align 1
  %scevgep74.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %556, i64 0, i64 0, i64 1
  %561 = load i8, i8* %scevgep74.1.4, align 1
  %conv68.i556.1.4 = zext i8 %561 to i32
  %562 = load i8, i8* %arrayidx70.i558.4, align 1
  %conv71.i559.1.4 = zext i8 %562 to i32
  %xor72.i560.1.4 = xor i32 %conv71.i559.1.4, %conv68.i556.1.4
  %conv73.i561.1.4 = trunc i32 %xor72.i560.1.4 to i8
  store i8 %conv73.i561.1.4, i8* %arrayidx70.i558.4, align 1
  %scevgep74.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %556, i64 0, i64 0, i64 2
  %563 = load i8, i8* %scevgep74.2.4, align 1
  %conv68.i556.2.4 = zext i8 %563 to i32
  %564 = load i8, i8* %arrayidx70.i558.4, align 1
  %conv71.i559.2.4 = zext i8 %564 to i32
  %xor72.i560.2.4 = xor i32 %conv71.i559.2.4, %conv68.i556.2.4
  %conv73.i561.2.4 = trunc i32 %xor72.i560.2.4 to i8
  store i8 %conv73.i561.2.4, i8* %arrayidx70.i558.4, align 1
  %scevgep74.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %556, i64 0, i64 0, i64 3
  %565 = load i8, i8* %scevgep74.3.4, align 1
  %conv68.i556.3.4 = zext i8 %565 to i32
  %566 = load i8, i8* %arrayidx70.i558.4, align 1
  %conv71.i559.3.4 = zext i8 %566 to i32
  %xor72.i560.3.4 = xor i32 %conv71.i559.3.4, %conv68.i556.3.4
  %conv73.i561.3.4 = trunc i32 %xor72.i560.3.4 to i8
  store i8 %conv73.i561.3.4, i8* %arrayidx70.i558.4, align 1
  %call80.i567 = call zeroext i8 @mult(i8 zeroext %call.i466, i8 zeroext %call1.i467) #3
  %conv81.i568 = zext i8 %call80.i567 to i32
  %567 = load i8, i8* %y, align 1
  %scevgep64.1 = getelementptr i8, i8* %y, i64 1
  %568 = load i8, i8* %scevgep64.1, align 1
  %conv.i.i113.i575.1 = zext i8 %568 to i32
  %conv1.i.i114.i576.1 = zext i8 %567 to i32
  %xor.i.i115.i577.1 = xor i32 %conv1.i.i114.i576.1, %conv.i.i113.i575.1
  %conv2.i.i116.i578.1 = trunc i32 %xor.i.i115.i577.1 to i8
  %scevgep64.2 = getelementptr i8, i8* %y, i64 2
  %569 = load i8, i8* %scevgep64.2, align 1
  %conv.i.i113.i575.2 = zext i8 %569 to i32
  %conv1.i.i114.i576.2 = zext i8 %conv2.i.i116.i578.1 to i32
  %xor.i.i115.i577.2 = xor i32 %conv1.i.i114.i576.2, %conv.i.i113.i575.2
  %conv2.i.i116.i578.2 = trunc i32 %xor.i.i115.i577.2 to i8
  %scevgep64.3 = getelementptr i8, i8* %y, i64 3
  %570 = load i8, i8* %scevgep64.3, align 1
  %conv.i.i113.i575.3 = zext i8 %570 to i32
  %conv1.i.i114.i576.3 = zext i8 %conv2.i.i116.i578.2 to i32
  %xor.i.i115.i577.3 = xor i32 %conv1.i.i114.i576.3, %conv.i.i113.i575.3
  %conv2.i.i116.i578.3 = trunc i32 %xor.i.i115.i577.3 to i8
  %scevgep64.4 = getelementptr i8, i8* %y, i64 4
  %571 = load i8, i8* %scevgep64.4, align 1
  %conv.i.i113.i575.4 = zext i8 %571 to i32
  %conv1.i.i114.i576.4 = zext i8 %conv2.i.i116.i578.3 to i32
  %xor.i.i115.i577.4 = xor i32 %conv1.i.i114.i576.4, %conv.i.i113.i575.4
  %conv2.i.i116.i578.4 = trunc i32 %xor.i.i115.i577.4 to i8
  %conv83.i581 = zext i8 %conv2.i.i116.i578.4 to i32
  %cmp84.i582 = icmp eq i32 %conv81.i568, %conv83.i581
  call void @assert(i1 zeroext %cmp84.i582) #3
  %call.i585 = call zeroext i8 @square(i8 zeroext %call) #3
  %call1.i586 = call zeroext i8 @mult(i8 zeroext %call.i585, i8 zeroext %call) #3
  %call2.i = call zeroext i8 @exp4(i8 zeroext %call1.i586) #3
  %call3.i = call zeroext i8 @mult(i8 zeroext %call1.i586, i8 zeroext %call2.i) #3
  %call4.i = call zeroext i8 @exp16(i8 zeroext %call3.i) #3
  %call5.i = call zeroext i8 @mult(i8 zeroext %call4.i, i8 zeroext %call2.i) #3
  %call6.i = call zeroext i8 @mult(i8 zeroext %call5.i, i8 zeroext %call.i585) #3
  %conv21 = zext i8 %call6.i to i32
  %572 = load i8, i8* %y, align 1
  %scevgep.1 = getelementptr i8, i8* %y, i64 1
  %573 = load i8, i8* %scevgep.1, align 1
  %conv.i.i597.1 = zext i8 %573 to i32
  %conv1.i.i598.1 = zext i8 %572 to i32
  %xor.i.i599.1 = xor i32 %conv1.i.i598.1, %conv.i.i597.1
  %conv2.i.i600.1 = trunc i32 %xor.i.i599.1 to i8
  %scevgep.2 = getelementptr i8, i8* %y, i64 2
  %574 = load i8, i8* %scevgep.2, align 1
  %conv.i.i597.2 = zext i8 %574 to i32
  %conv1.i.i598.2 = zext i8 %conv2.i.i600.1 to i32
  %xor.i.i599.2 = xor i32 %conv1.i.i598.2, %conv.i.i597.2
  %conv2.i.i600.2 = trunc i32 %xor.i.i599.2 to i8
  %scevgep.3 = getelementptr i8, i8* %y, i64 3
  %575 = load i8, i8* %scevgep.3, align 1
  %conv.i.i597.3 = zext i8 %575 to i32
  %conv1.i.i598.3 = zext i8 %conv2.i.i600.2 to i32
  %xor.i.i599.3 = xor i32 %conv1.i.i598.3, %conv.i.i597.3
  %conv2.i.i600.3 = trunc i32 %xor.i.i599.3 to i8
  %scevgep.4 = getelementptr i8, i8* %y, i64 4
  %576 = load i8, i8* %scevgep.4, align 1
  %conv.i.i597.4 = zext i8 %576 to i32
  %conv1.i.i598.4 = zext i8 %conv2.i.i600.3 to i32
  %xor.i.i599.4 = xor i32 %conv1.i.i598.4, %conv.i.i597.4
  %conv2.i.i600.4 = trunc i32 %xor.i.i599.4 to i8
  %conv23 = zext i8 %conv2.i.i600.4 to i32
  %cmp24 = icmp eq i32 %conv21, %conv23
  call void @assert(i1 zeroext %cmp24)
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @expd(i8 zeroext %x) #0 {
entry:
  %call = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x)
  %call.1 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %x)
  %call.2 = call zeroext i8 @mult(i8 zeroext %call.1, i8 zeroext %x)
  %call.3 = call zeroext i8 @mult(i8 zeroext %call.2, i8 zeroext %x)
  ret i8 %call.3
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_expd(i8* %x, i8* %y) #0 {
entry:
  %r.i = alloca [5 x [5 x i8]], align 16
  %z = alloca [5 x [5 x i8]], align 16
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %scevgep92.1 = getelementptr i8, i8* %x, i64 1
  %1 = load i8, i8* %scevgep92.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep92.2 = getelementptr i8, i8* %x, i64 2
  %2 = load i8, i8* %scevgep92.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %scevgep92.3 = getelementptr i8, i8* %x, i64 3
  %3 = load i8, i8* %scevgep92.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %scevgep92.4 = getelementptr i8, i8* %x, i64 4
  %4 = load i8, i8* %scevgep92.4, align 1
  %conv.i.i.4 = zext i8 %4 to i32
  %conv1.i.i.4 = zext i8 %conv2.i.i.3 to i32
  %xor.i.i.4 = xor i32 %conv1.i.i.4, %conv.i.i.4
  %conv2.i.i.4 = trunc i32 %xor.i.i.4 to i8
  %conv2 = zext i8 %conv2.i.i.4 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %5 = load i8, i8* %x, align 1
  %scevgep88 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 0
  store i8 %5, i8* %scevgep88, align 1
  %scevgep87.1 = getelementptr i8, i8* %x, i64 1
  %6 = load i8, i8* %scevgep87.1, align 1
  %scevgep88.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 1
  store i8 %6, i8* %scevgep88.1, align 1
  %scevgep87.2 = getelementptr i8, i8* %x, i64 2
  %7 = load i8, i8* %scevgep87.2, align 1
  %scevgep88.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 2
  store i8 %7, i8* %scevgep88.2, align 1
  %scevgep87.3 = getelementptr i8, i8* %x, i64 3
  %8 = load i8, i8* %scevgep87.3, align 1
  %scevgep88.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 3
  store i8 %8, i8* %scevgep88.3, align 1
  %scevgep87.4 = getelementptr i8, i8* %x, i64 4
  %9 = load i8, i8* %scevgep87.4, align 1
  %scevgep88.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 4
  store i8 %9, i8* %scevgep88.4, align 1
  %scevgep40 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %scevgep4041 = bitcast i8* %scevgep40 to [5 x [5 x i8]]*
  %scevgep48 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 1
  %scevgep4849 = bitcast i8* %scevgep48 to [5 x [5 x i8]]*
  %scevgep55 = getelementptr i8, i8* %x, i64 1
  %scevgep59 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 1, i64 0
  %scevgep5960 = bitcast i8* %scevgep59 to [5 x [5 x i8]]*
  %arrayidx6 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx6, i64 0, i64 0
  %arrayidx9 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 1
  %arraydecay10 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx9, i64 0, i64 0
  %call.i22 = call zeroext i8 (...) @rand() #3
  %call1.i = call zeroext i8 (...) @rand() #3
  %conv.i = zext i8 %call.i22 to i32
  %10 = load i8, i8* %x, align 1
  %scevgep32.1 = getelementptr i8, i8* %x, i64 1
  %11 = load i8, i8* %scevgep32.1, align 1
  %conv.i.i.i.1 = zext i8 %11 to i32
  %conv1.i.i.i.1 = zext i8 %10 to i32
  %xor.i.i.i.1 = xor i32 %conv1.i.i.i.1, %conv.i.i.i.1
  %conv2.i.i.i.1 = trunc i32 %xor.i.i.i.1 to i8
  %scevgep32.2 = getelementptr i8, i8* %x, i64 2
  %12 = load i8, i8* %scevgep32.2, align 1
  %conv.i.i.i.2 = zext i8 %12 to i32
  %conv1.i.i.i.2 = zext i8 %conv2.i.i.i.1 to i32
  %xor.i.i.i.2 = xor i32 %conv1.i.i.i.2, %conv.i.i.i.2
  %conv2.i.i.i.2 = trunc i32 %xor.i.i.i.2 to i8
  %scevgep32.3 = getelementptr i8, i8* %x, i64 3
  %13 = load i8, i8* %scevgep32.3, align 1
  %conv.i.i.i.3 = zext i8 %13 to i32
  %conv1.i.i.i.3 = zext i8 %conv2.i.i.i.2 to i32
  %xor.i.i.i.3 = xor i32 %conv1.i.i.i.3, %conv.i.i.i.3
  %conv2.i.i.i.3 = trunc i32 %xor.i.i.i.3 to i8
  %scevgep32.4 = getelementptr i8, i8* %x, i64 4
  %14 = load i8, i8* %scevgep32.4, align 1
  %conv.i.i.i.4 = zext i8 %14 to i32
  %conv1.i.i.i.4 = zext i8 %conv2.i.i.i.3 to i32
  %xor.i.i.i.4 = xor i32 %conv1.i.i.i.4, %conv.i.i.i.4
  %conv2.i.i.i.4 = trunc i32 %xor.i.i.i.4 to i8
  %conv3.i = zext i8 %conv2.i.i.i.4 to i32
  %cmp.i23 = icmp eq i32 %conv.i, %conv3.i
  call void @assume(i1 zeroext %cmp.i23) #3
  %conv5.i = zext i8 %call1.i to i32
  %scevgep38 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 0
  %15 = load i8, i8* %scevgep38, align 1
  %scevgep38.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 1
  %16 = load i8, i8* %scevgep38.1, align 1
  %conv.i.i96.i.1 = zext i8 %16 to i32
  %conv1.i.i97.i.1 = zext i8 %15 to i32
  %xor.i.i98.i.1 = xor i32 %conv1.i.i97.i.1, %conv.i.i96.i.1
  %conv2.i.i99.i.1 = trunc i32 %xor.i.i98.i.1 to i8
  %scevgep38.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 2
  %17 = load i8, i8* %scevgep38.2, align 1
  %conv.i.i96.i.2 = zext i8 %17 to i32
  %conv1.i.i97.i.2 = zext i8 %conv2.i.i99.i.1 to i32
  %xor.i.i98.i.2 = xor i32 %conv1.i.i97.i.2, %conv.i.i96.i.2
  %conv2.i.i99.i.2 = trunc i32 %xor.i.i98.i.2 to i8
  %scevgep38.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 3
  %18 = load i8, i8* %scevgep38.3, align 1
  %conv.i.i96.i.3 = zext i8 %18 to i32
  %conv1.i.i97.i.3 = zext i8 %conv2.i.i99.i.2 to i32
  %xor.i.i98.i.3 = xor i32 %conv1.i.i97.i.3, %conv.i.i96.i.3
  %conv2.i.i99.i.3 = trunc i32 %xor.i.i98.i.3 to i8
  %scevgep38.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 4
  %19 = load i8, i8* %scevgep38.4, align 1
  %conv.i.i96.i.4 = zext i8 %19 to i32
  %conv1.i.i97.i.4 = zext i8 %conv2.i.i99.i.3 to i32
  %xor.i.i98.i.4 = xor i32 %conv1.i.i97.i.4, %conv.i.i96.i.4
  %conv2.i.i99.i.4 = trunc i32 %xor.i.i98.i.4 to i8
  %conv7.i = zext i8 %conv2.i.i99.i.4 to i32
  %cmp8.i = icmp eq i32 %conv5.i, %conv7.i
  call void @assume(i1 zeroext %cmp8.i) #3
  %call16.i = call zeroext i8 (...) @rand() #3
  %scevgep46 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4041, i64 0, i64 0, i64 0
  store i8 %call16.i, i8* %scevgep46, align 1
  %scevgep47 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4041, i64 0, i64 0, i64 0
  %20 = load i8, i8* %scevgep47, align 1
  %conv23.i = zext i8 %20 to i32
  %21 = load i8, i8* %x, align 1
  %scevgep54 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4849, i64 0, i64 0, i64 0
  %22 = load i8, i8* %scevgep54, align 1
  %call28.i = call zeroext i8 @mult(i8 zeroext %21, i8 zeroext %22) #3
  %conv29.i = zext i8 %call28.i to i32
  %xor.i = xor i32 %conv23.i, %conv29.i
  %23 = load i8, i8* %scevgep55, align 1
  %24 = load i8, i8* %arraydecay7, align 1
  %call34.i = call zeroext i8 @mult(i8 zeroext %23, i8 zeroext %24) #3
  %conv35.i = zext i8 %call34.i to i32
  %xor36.i = xor i32 %xor.i, %conv35.i
  %conv37.i = trunc i32 %xor36.i to i8
  store i8 %conv37.i, i8* %scevgep59, align 1
  %scevgep64 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep5960, i64 0, i64 1, i64 0
  %25 = bitcast i8* %scevgep64 to [5 x [5 x i8]]*
  %call16.i.1424 = call zeroext i8 (...) @rand() #3
  %scevgep46.1425 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4041, i64 0, i64 0, i64 1
  store i8 %call16.i.1424, i8* %scevgep46.1425, align 1
  %scevgep47.1426 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4041, i64 0, i64 0, i64 1
  %26 = load i8, i8* %scevgep47.1426, align 1
  %conv23.i.1427 = zext i8 %26 to i32
  %27 = load i8, i8* %x, align 1
  %scevgep54.1428 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4849, i64 0, i64 0, i64 1
  %28 = load i8, i8* %scevgep54.1428, align 1
  %call28.i.1429 = call zeroext i8 @mult(i8 zeroext %27, i8 zeroext %28) #3
  %conv29.i.1430 = zext i8 %call28.i.1429 to i32
  %xor.i.1431 = xor i32 %conv23.i.1427, %conv29.i.1430
  %scevgep58.1 = getelementptr i8, i8* %scevgep55, i64 1
  %29 = load i8, i8* %scevgep58.1, align 1
  %30 = load i8, i8* %arraydecay7, align 1
  %call34.i.1432 = call zeroext i8 @mult(i8 zeroext %29, i8 zeroext %30) #3
  %conv35.i.1433 = zext i8 %call34.i.1432 to i32
  %xor36.i.1434 = xor i32 %xor.i.1431, %conv35.i.1433
  %conv37.i.1435 = trunc i32 %xor36.i.1434 to i8
  store i8 %conv37.i.1435, i8* %scevgep64, align 1
  %scevgep64.1436 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %25, i64 0, i64 1, i64 0
  %31 = bitcast i8* %scevgep64.1436 to [5 x [5 x i8]]*
  %call16.i.2438 = call zeroext i8 (...) @rand() #3
  %scevgep46.2439 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4041, i64 0, i64 0, i64 2
  store i8 %call16.i.2438, i8* %scevgep46.2439, align 1
  %scevgep47.2440 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4041, i64 0, i64 0, i64 2
  %32 = load i8, i8* %scevgep47.2440, align 1
  %conv23.i.2441 = zext i8 %32 to i32
  %33 = load i8, i8* %x, align 1
  %scevgep54.2442 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4849, i64 0, i64 0, i64 2
  %34 = load i8, i8* %scevgep54.2442, align 1
  %call28.i.2443 = call zeroext i8 @mult(i8 zeroext %33, i8 zeroext %34) #3
  %conv29.i.2444 = zext i8 %call28.i.2443 to i32
  %xor.i.2445 = xor i32 %conv23.i.2441, %conv29.i.2444
  %scevgep58.2 = getelementptr i8, i8* %scevgep55, i64 2
  %35 = load i8, i8* %scevgep58.2, align 1
  %36 = load i8, i8* %arraydecay7, align 1
  %call34.i.2446 = call zeroext i8 @mult(i8 zeroext %35, i8 zeroext %36) #3
  %conv35.i.2447 = zext i8 %call34.i.2446 to i32
  %xor36.i.2448 = xor i32 %xor.i.2445, %conv35.i.2447
  %conv37.i.2449 = trunc i32 %xor36.i.2448 to i8
  store i8 %conv37.i.2449, i8* %scevgep64.1436, align 1
  %scevgep64.2450 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %31, i64 0, i64 1, i64 0
  %call16.i.3452 = call zeroext i8 (...) @rand() #3
  %scevgep46.3453 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4041, i64 0, i64 0, i64 3
  store i8 %call16.i.3452, i8* %scevgep46.3453, align 1
  %scevgep47.3454 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4041, i64 0, i64 0, i64 3
  %37 = load i8, i8* %scevgep47.3454, align 1
  %conv23.i.3455 = zext i8 %37 to i32
  %38 = load i8, i8* %x, align 1
  %scevgep54.3456 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4849, i64 0, i64 0, i64 3
  %39 = load i8, i8* %scevgep54.3456, align 1
  %call28.i.3457 = call zeroext i8 @mult(i8 zeroext %38, i8 zeroext %39) #3
  %conv29.i.3458 = zext i8 %call28.i.3457 to i32
  %xor.i.3459 = xor i32 %conv23.i.3455, %conv29.i.3458
  %scevgep58.3 = getelementptr i8, i8* %scevgep55, i64 3
  %40 = load i8, i8* %scevgep58.3, align 1
  %41 = load i8, i8* %arraydecay7, align 1
  %call34.i.3460 = call zeroext i8 @mult(i8 zeroext %40, i8 zeroext %41) #3
  %conv35.i.3461 = zext i8 %call34.i.3460 to i32
  %xor36.i.3462 = xor i32 %xor.i.3459, %conv35.i.3461
  %conv37.i.3463 = trunc i32 %xor36.i.3462 to i8
  store i8 %conv37.i.3463, i8* %scevgep64.2450, align 1
  %scevgep43 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4041, i64 0, i64 1, i64 1
  %42 = bitcast i8* %scevgep43 to [5 x [5 x i8]]*
  %scevgep53 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4849, i64 0, i64 0, i64 1
  %43 = bitcast i8* %scevgep53 to [5 x [5 x i8]]*
  %scevgep57 = getelementptr i8, i8* %scevgep55, i64 1
  %scevgep62 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep5960, i64 0, i64 1, i64 1
  %44 = bitcast i8* %scevgep62 to [5 x [5 x i8]]*
  %arrayidx25.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %arrayidx33.i.1 = getelementptr inbounds i8, i8* %arraydecay7, i64 1
  %call16.i.1 = call zeroext i8 (...) @rand() #3
  %scevgep46.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %42, i64 0, i64 0, i64 0
  store i8 %call16.i.1, i8* %scevgep46.1, align 1
  %scevgep47.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %42, i64 0, i64 0, i64 0
  %45 = load i8, i8* %scevgep47.1, align 1
  %conv23.i.1 = zext i8 %45 to i32
  %46 = load i8, i8* %arrayidx25.i.1, align 1
  %scevgep54.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %43, i64 0, i64 0, i64 0
  %47 = load i8, i8* %scevgep54.1, align 1
  %call28.i.1 = call zeroext i8 @mult(i8 zeroext %46, i8 zeroext %47) #3
  %conv29.i.1 = zext i8 %call28.i.1 to i32
  %xor.i.1 = xor i32 %conv23.i.1, %conv29.i.1
  %48 = load i8, i8* %scevgep57, align 1
  %49 = load i8, i8* %arrayidx33.i.1, align 1
  %call34.i.1 = call zeroext i8 @mult(i8 zeroext %48, i8 zeroext %49) #3
  %conv35.i.1 = zext i8 %call34.i.1 to i32
  %xor36.i.1 = xor i32 %xor.i.1, %conv35.i.1
  %conv37.i.1 = trunc i32 %xor36.i.1 to i8
  store i8 %conv37.i.1, i8* %scevgep62, align 1
  %scevgep64.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %44, i64 0, i64 1, i64 0
  %50 = bitcast i8* %scevgep64.1 to [5 x [5 x i8]]*
  %call16.i.1.1396 = call zeroext i8 (...) @rand() #3
  %scevgep46.1.1397 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %42, i64 0, i64 0, i64 1
  store i8 %call16.i.1.1396, i8* %scevgep46.1.1397, align 1
  %scevgep47.1.1398 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %42, i64 0, i64 0, i64 1
  %51 = load i8, i8* %scevgep47.1.1398, align 1
  %conv23.i.1.1399 = zext i8 %51 to i32
  %52 = load i8, i8* %arrayidx25.i.1, align 1
  %scevgep54.1.1400 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %43, i64 0, i64 0, i64 1
  %53 = load i8, i8* %scevgep54.1.1400, align 1
  %call28.i.1.1401 = call zeroext i8 @mult(i8 zeroext %52, i8 zeroext %53) #3
  %conv29.i.1.1402 = zext i8 %call28.i.1.1401 to i32
  %xor.i.1.1403 = xor i32 %conv23.i.1.1399, %conv29.i.1.1402
  %scevgep58.1.1 = getelementptr i8, i8* %scevgep57, i64 1
  %54 = load i8, i8* %scevgep58.1.1, align 1
  %55 = load i8, i8* %arrayidx33.i.1, align 1
  %call34.i.1.1404 = call zeroext i8 @mult(i8 zeroext %54, i8 zeroext %55) #3
  %conv35.i.1.1405 = zext i8 %call34.i.1.1404 to i32
  %xor36.i.1.1406 = xor i32 %xor.i.1.1403, %conv35.i.1.1405
  %conv37.i.1.1407 = trunc i32 %xor36.i.1.1406 to i8
  store i8 %conv37.i.1.1407, i8* %scevgep64.1, align 1
  %scevgep64.1.1408 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %50, i64 0, i64 1, i64 0
  %call16.i.1.2410 = call zeroext i8 (...) @rand() #3
  %scevgep46.1.2411 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %42, i64 0, i64 0, i64 2
  store i8 %call16.i.1.2410, i8* %scevgep46.1.2411, align 1
  %scevgep47.1.2412 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %42, i64 0, i64 0, i64 2
  %56 = load i8, i8* %scevgep47.1.2412, align 1
  %conv23.i.1.2413 = zext i8 %56 to i32
  %57 = load i8, i8* %arrayidx25.i.1, align 1
  %scevgep54.1.2414 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %43, i64 0, i64 0, i64 2
  %58 = load i8, i8* %scevgep54.1.2414, align 1
  %call28.i.1.2415 = call zeroext i8 @mult(i8 zeroext %57, i8 zeroext %58) #3
  %conv29.i.1.2416 = zext i8 %call28.i.1.2415 to i32
  %xor.i.1.2417 = xor i32 %conv23.i.1.2413, %conv29.i.1.2416
  %scevgep58.1.2 = getelementptr i8, i8* %scevgep57, i64 2
  %59 = load i8, i8* %scevgep58.1.2, align 1
  %60 = load i8, i8* %arrayidx33.i.1, align 1
  %call34.i.1.2418 = call zeroext i8 @mult(i8 zeroext %59, i8 zeroext %60) #3
  %conv35.i.1.2419 = zext i8 %call34.i.1.2418 to i32
  %xor36.i.1.2420 = xor i32 %xor.i.1.2417, %conv35.i.1.2419
  %conv37.i.1.2421 = trunc i32 %xor36.i.1.2420 to i8
  store i8 %conv37.i.1.2421, i8* %scevgep64.1.1408, align 1
  %scevgep43.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %42, i64 0, i64 1, i64 1
  %61 = bitcast i8* %scevgep43.1 to [5 x [5 x i8]]*
  %scevgep53.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %43, i64 0, i64 0, i64 1
  %62 = bitcast i8* %scevgep53.1 to [5 x [5 x i8]]*
  %scevgep57.1 = getelementptr i8, i8* %scevgep57, i64 1
  %scevgep62.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %44, i64 0, i64 1, i64 1
  %63 = bitcast i8* %scevgep62.1 to [5 x [5 x i8]]*
  %arrayidx25.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %arrayidx33.i.2 = getelementptr inbounds i8, i8* %arraydecay7, i64 2
  %call16.i.2 = call zeroext i8 (...) @rand() #3
  %scevgep46.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %61, i64 0, i64 0, i64 0
  store i8 %call16.i.2, i8* %scevgep46.2, align 1
  %scevgep47.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %61, i64 0, i64 0, i64 0
  %64 = load i8, i8* %scevgep47.2, align 1
  %conv23.i.2 = zext i8 %64 to i32
  %65 = load i8, i8* %arrayidx25.i.2, align 1
  %scevgep54.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %62, i64 0, i64 0, i64 0
  %66 = load i8, i8* %scevgep54.2, align 1
  %call28.i.2 = call zeroext i8 @mult(i8 zeroext %65, i8 zeroext %66) #3
  %conv29.i.2 = zext i8 %call28.i.2 to i32
  %xor.i.2 = xor i32 %conv23.i.2, %conv29.i.2
  %67 = load i8, i8* %scevgep57.1, align 1
  %68 = load i8, i8* %arrayidx33.i.2, align 1
  %call34.i.2 = call zeroext i8 @mult(i8 zeroext %67, i8 zeroext %68) #3
  %conv35.i.2 = zext i8 %call34.i.2 to i32
  %xor36.i.2 = xor i32 %xor.i.2, %conv35.i.2
  %conv37.i.2 = trunc i32 %xor36.i.2 to i8
  store i8 %conv37.i.2, i8* %scevgep62.1, align 1
  %scevgep64.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %63, i64 0, i64 1, i64 0
  %call16.i.2.1382 = call zeroext i8 (...) @rand() #3
  %scevgep46.2.1383 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %61, i64 0, i64 0, i64 1
  store i8 %call16.i.2.1382, i8* %scevgep46.2.1383, align 1
  %scevgep47.2.1384 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %61, i64 0, i64 0, i64 1
  %69 = load i8, i8* %scevgep47.2.1384, align 1
  %conv23.i.2.1385 = zext i8 %69 to i32
  %70 = load i8, i8* %arrayidx25.i.2, align 1
  %scevgep54.2.1386 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %62, i64 0, i64 0, i64 1
  %71 = load i8, i8* %scevgep54.2.1386, align 1
  %call28.i.2.1387 = call zeroext i8 @mult(i8 zeroext %70, i8 zeroext %71) #3
  %conv29.i.2.1388 = zext i8 %call28.i.2.1387 to i32
  %xor.i.2.1389 = xor i32 %conv23.i.2.1385, %conv29.i.2.1388
  %scevgep58.2.1 = getelementptr i8, i8* %scevgep57.1, i64 1
  %72 = load i8, i8* %scevgep58.2.1, align 1
  %73 = load i8, i8* %arrayidx33.i.2, align 1
  %call34.i.2.1390 = call zeroext i8 @mult(i8 zeroext %72, i8 zeroext %73) #3
  %conv35.i.2.1391 = zext i8 %call34.i.2.1390 to i32
  %xor36.i.2.1392 = xor i32 %xor.i.2.1389, %conv35.i.2.1391
  %conv37.i.2.1393 = trunc i32 %xor36.i.2.1392 to i8
  store i8 %conv37.i.2.1393, i8* %scevgep64.2, align 1
  %scevgep43.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %61, i64 0, i64 1, i64 1
  %74 = bitcast i8* %scevgep43.2 to [5 x [5 x i8]]*
  %scevgep53.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %62, i64 0, i64 0, i64 1
  %75 = bitcast i8* %scevgep53.2 to [5 x [5 x i8]]*
  %scevgep57.2 = getelementptr i8, i8* %scevgep57.1, i64 1
  %scevgep62.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %63, i64 0, i64 1, i64 1
  %arrayidx25.i.3 = getelementptr inbounds i8, i8* %x, i64 3
  %arrayidx33.i.3 = getelementptr inbounds i8, i8* %arraydecay7, i64 3
  %call16.i.3 = call zeroext i8 (...) @rand() #3
  %scevgep46.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %74, i64 0, i64 0, i64 0
  store i8 %call16.i.3, i8* %scevgep46.3, align 1
  %scevgep47.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %74, i64 0, i64 0, i64 0
  %76 = load i8, i8* %scevgep47.3, align 1
  %conv23.i.3 = zext i8 %76 to i32
  %77 = load i8, i8* %arrayidx25.i.3, align 1
  %scevgep54.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %75, i64 0, i64 0, i64 0
  %78 = load i8, i8* %scevgep54.3, align 1
  %call28.i.3 = call zeroext i8 @mult(i8 zeroext %77, i8 zeroext %78) #3
  %conv29.i.3 = zext i8 %call28.i.3 to i32
  %xor.i.3 = xor i32 %conv23.i.3, %conv29.i.3
  %79 = load i8, i8* %scevgep57.2, align 1
  %80 = load i8, i8* %arrayidx33.i.3, align 1
  %call34.i.3 = call zeroext i8 @mult(i8 zeroext %79, i8 zeroext %80) #3
  %conv35.i.3 = zext i8 %call34.i.3 to i32
  %xor36.i.3 = xor i32 %xor.i.3, %conv35.i.3
  %conv37.i.3 = trunc i32 %xor36.i.3 to i8
  store i8 %conv37.i.3, i8* %scevgep62.2, align 1
  %81 = load i8, i8* %x, align 1
  %82 = load i8, i8* %arraydecay7, align 1
  %call54.i = call zeroext i8 @mult(i8 zeroext %81, i8 zeroext %82) #3
  store i8 %call54.i, i8* %arraydecay10, align 1
  %scevgep77.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %83 = load i8, i8* %scevgep77.1, align 1
  %conv68.i.1 = zext i8 %83 to i32
  %84 = load i8, i8* %arraydecay10, align 1
  %conv71.i.1 = zext i8 %84 to i32
  %xor72.i.1 = xor i32 %conv71.i.1, %conv68.i.1
  %conv73.i.1 = trunc i32 %xor72.i.1 to i8
  store i8 %conv73.i.1, i8* %arraydecay10, align 1
  %scevgep77.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 2
  %85 = load i8, i8* %scevgep77.2, align 1
  %conv68.i.2 = zext i8 %85 to i32
  %86 = load i8, i8* %arraydecay10, align 1
  %conv71.i.2 = zext i8 %86 to i32
  %xor72.i.2 = xor i32 %conv71.i.2, %conv68.i.2
  %conv73.i.2 = trunc i32 %xor72.i.2 to i8
  store i8 %conv73.i.2, i8* %arraydecay10, align 1
  %scevgep77.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 3
  %87 = load i8, i8* %scevgep77.3, align 1
  %conv68.i.3 = zext i8 %87 to i32
  %88 = load i8, i8* %arraydecay10, align 1
  %conv71.i.3 = zext i8 %88 to i32
  %xor72.i.3 = xor i32 %conv71.i.3, %conv68.i.3
  %conv73.i.3 = trunc i32 %xor72.i.3 to i8
  store i8 %conv73.i.3, i8* %arraydecay10, align 1
  %scevgep77.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 4
  %89 = load i8, i8* %scevgep77.4, align 1
  %conv68.i.4 = zext i8 %89 to i32
  %90 = load i8, i8* %arraydecay10, align 1
  %conv71.i.4 = zext i8 %90 to i32
  %xor72.i.4 = xor i32 %conv71.i.4, %conv68.i.4
  %conv73.i.4 = trunc i32 %xor72.i.4 to i8
  store i8 %conv73.i.4, i8* %arraydecay10, align 1
  %scevgep76 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 1, i64 0
  %91 = bitcast i8* %scevgep76 to [5 x [5 x i8]]*
  %arrayidx51.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %92 = load i8, i8* %arrayidx51.i.1, align 1
  %arrayidx53.i.1 = getelementptr inbounds i8, i8* %arraydecay7, i64 1
  %93 = load i8, i8* %arrayidx53.i.1, align 1
  %call54.i.1 = call zeroext i8 @mult(i8 zeroext %92, i8 zeroext %93) #3
  %arrayidx56.i.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  store i8 %call54.i.1, i8* %arrayidx56.i.1, align 1
  %arrayidx70.i.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %scevgep77.196 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %91, i64 0, i64 0, i64 0
  %94 = load i8, i8* %scevgep77.196, align 1
  %conv68.i.197 = zext i8 %94 to i32
  %95 = load i8, i8* %arrayidx70.i.1, align 1
  %conv71.i.198 = zext i8 %95 to i32
  %xor72.i.199 = xor i32 %conv71.i.198, %conv68.i.197
  %conv73.i.1100 = trunc i32 %xor72.i.199 to i8
  store i8 %conv73.i.1100, i8* %arrayidx70.i.1, align 1
  %scevgep77.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %91, i64 0, i64 0, i64 2
  %96 = load i8, i8* %scevgep77.2.1, align 1
  %conv68.i.2.1 = zext i8 %96 to i32
  %97 = load i8, i8* %arrayidx70.i.1, align 1
  %conv71.i.2.1 = zext i8 %97 to i32
  %xor72.i.2.1 = xor i32 %conv71.i.2.1, %conv68.i.2.1
  %conv73.i.2.1 = trunc i32 %xor72.i.2.1 to i8
  store i8 %conv73.i.2.1, i8* %arrayidx70.i.1, align 1
  %scevgep77.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %91, i64 0, i64 0, i64 3
  %98 = load i8, i8* %scevgep77.3.1, align 1
  %conv68.i.3.1 = zext i8 %98 to i32
  %99 = load i8, i8* %arrayidx70.i.1, align 1
  %conv71.i.3.1 = zext i8 %99 to i32
  %xor72.i.3.1 = xor i32 %conv71.i.3.1, %conv68.i.3.1
  %conv73.i.3.1 = trunc i32 %xor72.i.3.1 to i8
  store i8 %conv73.i.3.1, i8* %arrayidx70.i.1, align 1
  %scevgep77.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %91, i64 0, i64 0, i64 4
  %100 = load i8, i8* %scevgep77.4.1, align 1
  %conv68.i.4.1 = zext i8 %100 to i32
  %101 = load i8, i8* %arrayidx70.i.1, align 1
  %conv71.i.4.1 = zext i8 %101 to i32
  %xor72.i.4.1 = xor i32 %conv71.i.4.1, %conv68.i.4.1
  %conv73.i.4.1 = trunc i32 %xor72.i.4.1 to i8
  store i8 %conv73.i.4.1, i8* %arrayidx70.i.1, align 1
  %scevgep76.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %91, i64 0, i64 1, i64 0
  %102 = bitcast i8* %scevgep76.1 to [5 x [5 x i8]]*
  %arrayidx51.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %103 = load i8, i8* %arrayidx51.i.2, align 1
  %arrayidx53.i.2 = getelementptr inbounds i8, i8* %arraydecay7, i64 2
  %104 = load i8, i8* %arrayidx53.i.2, align 1
  %call54.i.2 = call zeroext i8 @mult(i8 zeroext %103, i8 zeroext %104) #3
  %arrayidx56.i.2 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  store i8 %call54.i.2, i8* %arrayidx56.i.2, align 1
  %arrayidx70.i.2 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  %scevgep77.2105 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %102, i64 0, i64 0, i64 0
  %105 = load i8, i8* %scevgep77.2105, align 1
  %conv68.i.2106 = zext i8 %105 to i32
  %106 = load i8, i8* %arrayidx70.i.2, align 1
  %conv71.i.2107 = zext i8 %106 to i32
  %xor72.i.2108 = xor i32 %conv71.i.2107, %conv68.i.2106
  %conv73.i.2109 = trunc i32 %xor72.i.2108 to i8
  store i8 %conv73.i.2109, i8* %arrayidx70.i.2, align 1
  %scevgep77.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %102, i64 0, i64 0, i64 1
  %107 = load i8, i8* %scevgep77.1.2, align 1
  %conv68.i.1.2 = zext i8 %107 to i32
  %108 = load i8, i8* %arrayidx70.i.2, align 1
  %conv71.i.1.2 = zext i8 %108 to i32
  %xor72.i.1.2 = xor i32 %conv71.i.1.2, %conv68.i.1.2
  %conv73.i.1.2 = trunc i32 %xor72.i.1.2 to i8
  store i8 %conv73.i.1.2, i8* %arrayidx70.i.2, align 1
  %scevgep77.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %102, i64 0, i64 0, i64 3
  %109 = load i8, i8* %scevgep77.3.2, align 1
  %conv68.i.3.2 = zext i8 %109 to i32
  %110 = load i8, i8* %arrayidx70.i.2, align 1
  %conv71.i.3.2 = zext i8 %110 to i32
  %xor72.i.3.2 = xor i32 %conv71.i.3.2, %conv68.i.3.2
  %conv73.i.3.2 = trunc i32 %xor72.i.3.2 to i8
  store i8 %conv73.i.3.2, i8* %arrayidx70.i.2, align 1
  %scevgep77.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %102, i64 0, i64 0, i64 4
  %111 = load i8, i8* %scevgep77.4.2, align 1
  %conv68.i.4.2 = zext i8 %111 to i32
  %112 = load i8, i8* %arrayidx70.i.2, align 1
  %conv71.i.4.2 = zext i8 %112 to i32
  %xor72.i.4.2 = xor i32 %conv71.i.4.2, %conv68.i.4.2
  %conv73.i.4.2 = trunc i32 %xor72.i.4.2 to i8
  store i8 %conv73.i.4.2, i8* %arrayidx70.i.2, align 1
  %scevgep76.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %102, i64 0, i64 1, i64 0
  %113 = bitcast i8* %scevgep76.2 to [5 x [5 x i8]]*
  %arrayidx51.i.3 = getelementptr inbounds i8, i8* %x, i64 3
  %114 = load i8, i8* %arrayidx51.i.3, align 1
  %arrayidx53.i.3 = getelementptr inbounds i8, i8* %arraydecay7, i64 3
  %115 = load i8, i8* %arrayidx53.i.3, align 1
  %call54.i.3 = call zeroext i8 @mult(i8 zeroext %114, i8 zeroext %115) #3
  %arrayidx56.i.3 = getelementptr inbounds i8, i8* %arraydecay10, i64 3
  store i8 %call54.i.3, i8* %arrayidx56.i.3, align 1
  %arrayidx70.i.3 = getelementptr inbounds i8, i8* %arraydecay10, i64 3
  %scevgep77.3114 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %113, i64 0, i64 0, i64 0
  %116 = load i8, i8* %scevgep77.3114, align 1
  %conv68.i.3115 = zext i8 %116 to i32
  %117 = load i8, i8* %arrayidx70.i.3, align 1
  %conv71.i.3116 = zext i8 %117 to i32
  %xor72.i.3117 = xor i32 %conv71.i.3116, %conv68.i.3115
  %conv73.i.3118 = trunc i32 %xor72.i.3117 to i8
  store i8 %conv73.i.3118, i8* %arrayidx70.i.3, align 1
  %scevgep77.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %113, i64 0, i64 0, i64 1
  %118 = load i8, i8* %scevgep77.1.3, align 1
  %conv68.i.1.3 = zext i8 %118 to i32
  %119 = load i8, i8* %arrayidx70.i.3, align 1
  %conv71.i.1.3 = zext i8 %119 to i32
  %xor72.i.1.3 = xor i32 %conv71.i.1.3, %conv68.i.1.3
  %conv73.i.1.3 = trunc i32 %xor72.i.1.3 to i8
  store i8 %conv73.i.1.3, i8* %arrayidx70.i.3, align 1
  %scevgep77.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %113, i64 0, i64 0, i64 2
  %120 = load i8, i8* %scevgep77.2.3, align 1
  %conv68.i.2.3 = zext i8 %120 to i32
  %121 = load i8, i8* %arrayidx70.i.3, align 1
  %conv71.i.2.3 = zext i8 %121 to i32
  %xor72.i.2.3 = xor i32 %conv71.i.2.3, %conv68.i.2.3
  %conv73.i.2.3 = trunc i32 %xor72.i.2.3 to i8
  store i8 %conv73.i.2.3, i8* %arrayidx70.i.3, align 1
  %scevgep77.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %113, i64 0, i64 0, i64 4
  %122 = load i8, i8* %scevgep77.4.3, align 1
  %conv68.i.4.3 = zext i8 %122 to i32
  %123 = load i8, i8* %arrayidx70.i.3, align 1
  %conv71.i.4.3 = zext i8 %123 to i32
  %xor72.i.4.3 = xor i32 %conv71.i.4.3, %conv68.i.4.3
  %conv73.i.4.3 = trunc i32 %xor72.i.4.3 to i8
  store i8 %conv73.i.4.3, i8* %arrayidx70.i.3, align 1
  %scevgep76.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %113, i64 0, i64 1, i64 0
  %124 = bitcast i8* %scevgep76.3 to [5 x [5 x i8]]*
  %arrayidx51.i.4 = getelementptr inbounds i8, i8* %x, i64 4
  %125 = load i8, i8* %arrayidx51.i.4, align 1
  %arrayidx53.i.4 = getelementptr inbounds i8, i8* %arraydecay7, i64 4
  %126 = load i8, i8* %arrayidx53.i.4, align 1
  %call54.i.4 = call zeroext i8 @mult(i8 zeroext %125, i8 zeroext %126) #3
  %arrayidx56.i.4 = getelementptr inbounds i8, i8* %arraydecay10, i64 4
  store i8 %call54.i.4, i8* %arrayidx56.i.4, align 1
  %arrayidx70.i.4 = getelementptr inbounds i8, i8* %arraydecay10, i64 4
  %scevgep77.4123 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %124, i64 0, i64 0, i64 0
  %127 = load i8, i8* %scevgep77.4123, align 1
  %conv68.i.4124 = zext i8 %127 to i32
  %128 = load i8, i8* %arrayidx70.i.4, align 1
  %conv71.i.4125 = zext i8 %128 to i32
  %xor72.i.4126 = xor i32 %conv71.i.4125, %conv68.i.4124
  %conv73.i.4127 = trunc i32 %xor72.i.4126 to i8
  store i8 %conv73.i.4127, i8* %arrayidx70.i.4, align 1
  %scevgep77.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %124, i64 0, i64 0, i64 1
  %129 = load i8, i8* %scevgep77.1.4, align 1
  %conv68.i.1.4 = zext i8 %129 to i32
  %130 = load i8, i8* %arrayidx70.i.4, align 1
  %conv71.i.1.4 = zext i8 %130 to i32
  %xor72.i.1.4 = xor i32 %conv71.i.1.4, %conv68.i.1.4
  %conv73.i.1.4 = trunc i32 %xor72.i.1.4 to i8
  store i8 %conv73.i.1.4, i8* %arrayidx70.i.4, align 1
  %scevgep77.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %124, i64 0, i64 0, i64 2
  %131 = load i8, i8* %scevgep77.2.4, align 1
  %conv68.i.2.4 = zext i8 %131 to i32
  %132 = load i8, i8* %arrayidx70.i.4, align 1
  %conv71.i.2.4 = zext i8 %132 to i32
  %xor72.i.2.4 = xor i32 %conv71.i.2.4, %conv68.i.2.4
  %conv73.i.2.4 = trunc i32 %xor72.i.2.4 to i8
  store i8 %conv73.i.2.4, i8* %arrayidx70.i.4, align 1
  %scevgep77.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %124, i64 0, i64 0, i64 3
  %133 = load i8, i8* %scevgep77.3.4, align 1
  %conv68.i.3.4 = zext i8 %133 to i32
  %134 = load i8, i8* %arrayidx70.i.4, align 1
  %conv71.i.3.4 = zext i8 %134 to i32
  %xor72.i.3.4 = xor i32 %conv71.i.3.4, %conv68.i.3.4
  %conv73.i.3.4 = trunc i32 %xor72.i.3.4 to i8
  store i8 %conv73.i.3.4, i8* %arrayidx70.i.4, align 1
  %call80.i = call zeroext i8 @mult(i8 zeroext %call.i22, i8 zeroext %call1.i) #3
  %conv81.i = zext i8 %call80.i to i32
  %scevgep82 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 0
  %scevgep83 = getelementptr i8, i8* %scevgep82, i64 5
  %135 = load i8, i8* %scevgep83, align 1
  %scevgep82.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 1
  %scevgep83.1 = getelementptr i8, i8* %scevgep82.1, i64 5
  %136 = load i8, i8* %scevgep83.1, align 1
  %conv.i.i113.i.1 = zext i8 %136 to i32
  %conv1.i.i114.i.1 = zext i8 %135 to i32
  %xor.i.i115.i.1 = xor i32 %conv1.i.i114.i.1, %conv.i.i113.i.1
  %conv2.i.i116.i.1 = trunc i32 %xor.i.i115.i.1 to i8
  %scevgep82.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 2
  %scevgep83.2 = getelementptr i8, i8* %scevgep82.2, i64 5
  %137 = load i8, i8* %scevgep83.2, align 1
  %conv.i.i113.i.2 = zext i8 %137 to i32
  %conv1.i.i114.i.2 = zext i8 %conv2.i.i116.i.1 to i32
  %xor.i.i115.i.2 = xor i32 %conv1.i.i114.i.2, %conv.i.i113.i.2
  %conv2.i.i116.i.2 = trunc i32 %xor.i.i115.i.2 to i8
  %scevgep82.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 3
  %scevgep83.3 = getelementptr i8, i8* %scevgep82.3, i64 5
  %138 = load i8, i8* %scevgep83.3, align 1
  %conv.i.i113.i.3 = zext i8 %138 to i32
  %conv1.i.i114.i.3 = zext i8 %conv2.i.i116.i.2 to i32
  %xor.i.i115.i.3 = xor i32 %conv1.i.i114.i.3, %conv.i.i113.i.3
  %conv2.i.i116.i.3 = trunc i32 %xor.i.i115.i.3 to i8
  %scevgep82.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 4
  %scevgep83.4 = getelementptr i8, i8* %scevgep82.4, i64 5
  %139 = load i8, i8* %scevgep83.4, align 1
  %conv.i.i113.i.4 = zext i8 %139 to i32
  %conv1.i.i114.i.4 = zext i8 %conv2.i.i116.i.3 to i32
  %xor.i.i115.i.4 = xor i32 %conv1.i.i114.i.4, %conv.i.i113.i.4
  %conv2.i.i116.i.4 = trunc i32 %xor.i.i115.i.4 to i8
  %conv83.i = zext i8 %conv2.i.i116.i.4 to i32
  %cmp84.i = icmp eq i32 %conv81.i, %conv83.i
  call void @assert(i1 zeroext %cmp84.i) #3
  %scevgep35 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 1, i64 0
  %140 = bitcast i8* %scevgep35 to [5 x [5 x i8]]*
  %scevgep51 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4849, i64 0, i64 1, i64 0
  %141 = bitcast i8* %scevgep51 to [5 x [5 x i8]]*
  %arrayidx6.1 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 1
  %arraydecay7.1 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx6.1, i64 0, i64 0
  %arrayidx9.1 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 2
  %arraydecay10.1 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx9.1, i64 0, i64 0
  %call.i22.1 = call zeroext i8 (...) @rand() #3
  %call1.i.1 = call zeroext i8 (...) @rand() #3
  %conv.i.1 = zext i8 %call.i22.1 to i32
  %142 = load i8, i8* %x, align 1
  %conv.i.i.i.1131 = zext i8 %142 to i32
  %conv1.i.i.i.1132 = zext i8 %conv2.i.i.i.4 to i32
  %xor.i.i.i.1133 = xor i32 %conv1.i.i.i.1132, %conv.i.i.i.1131
  %conv2.i.i.i.1134 = trunc i32 %xor.i.i.i.1133 to i8
  %scevgep32.1.1 = getelementptr i8, i8* %x, i64 1
  %143 = load i8, i8* %scevgep32.1.1, align 1
  %conv.i.i.i.1.1 = zext i8 %143 to i32
  %conv1.i.i.i.1.1 = zext i8 %conv2.i.i.i.1134 to i32
  %xor.i.i.i.1.1 = xor i32 %conv1.i.i.i.1.1, %conv.i.i.i.1.1
  %conv2.i.i.i.1.1 = trunc i32 %xor.i.i.i.1.1 to i8
  %scevgep32.2.1 = getelementptr i8, i8* %x, i64 2
  %144 = load i8, i8* %scevgep32.2.1, align 1
  %conv.i.i.i.2.1 = zext i8 %144 to i32
  %conv1.i.i.i.2.1 = zext i8 %conv2.i.i.i.1.1 to i32
  %xor.i.i.i.2.1 = xor i32 %conv1.i.i.i.2.1, %conv.i.i.i.2.1
  %conv2.i.i.i.2.1 = trunc i32 %xor.i.i.i.2.1 to i8
  %scevgep32.3.1 = getelementptr i8, i8* %x, i64 3
  %145 = load i8, i8* %scevgep32.3.1, align 1
  %conv.i.i.i.3.1 = zext i8 %145 to i32
  %conv1.i.i.i.3.1 = zext i8 %conv2.i.i.i.2.1 to i32
  %xor.i.i.i.3.1 = xor i32 %conv1.i.i.i.3.1, %conv.i.i.i.3.1
  %conv2.i.i.i.3.1 = trunc i32 %xor.i.i.i.3.1 to i8
  %scevgep32.4.1 = getelementptr i8, i8* %x, i64 4
  %146 = load i8, i8* %scevgep32.4.1, align 1
  %conv.i.i.i.4.1 = zext i8 %146 to i32
  %conv1.i.i.i.4.1 = zext i8 %conv2.i.i.i.3.1 to i32
  %xor.i.i.i.4.1 = xor i32 %conv1.i.i.i.4.1, %conv.i.i.i.4.1
  %conv2.i.i.i.4.1 = trunc i32 %xor.i.i.i.4.1 to i8
  %conv3.i.1 = zext i8 %conv2.i.i.i.4.1 to i32
  %cmp.i23.1 = icmp eq i32 %conv.i.1, %conv3.i.1
  call void @assume(i1 zeroext %cmp.i23.1) #3
  %conv5.i.1 = zext i8 %call1.i.1 to i32
  %scevgep38.1135 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %140, i64 0, i64 0, i64 0
  %147 = load i8, i8* %scevgep38.1135, align 1
  %conv.i.i96.i.1137 = zext i8 %147 to i32
  %conv1.i.i97.i.1138 = zext i8 %conv2.i.i99.i.4 to i32
  %xor.i.i98.i.1139 = xor i32 %conv1.i.i97.i.1138, %conv.i.i96.i.1137
  %conv2.i.i99.i.1140 = trunc i32 %xor.i.i98.i.1139 to i8
  %scevgep38.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %140, i64 0, i64 0, i64 1
  %148 = load i8, i8* %scevgep38.1.1, align 1
  %conv.i.i96.i.1.1 = zext i8 %148 to i32
  %conv1.i.i97.i.1.1 = zext i8 %conv2.i.i99.i.1140 to i32
  %xor.i.i98.i.1.1 = xor i32 %conv1.i.i97.i.1.1, %conv.i.i96.i.1.1
  %conv2.i.i99.i.1.1 = trunc i32 %xor.i.i98.i.1.1 to i8
  %scevgep38.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %140, i64 0, i64 0, i64 2
  %149 = load i8, i8* %scevgep38.2.1, align 1
  %conv.i.i96.i.2.1 = zext i8 %149 to i32
  %conv1.i.i97.i.2.1 = zext i8 %conv2.i.i99.i.1.1 to i32
  %xor.i.i98.i.2.1 = xor i32 %conv1.i.i97.i.2.1, %conv.i.i96.i.2.1
  %conv2.i.i99.i.2.1 = trunc i32 %xor.i.i98.i.2.1 to i8
  %scevgep38.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %140, i64 0, i64 0, i64 3
  %150 = load i8, i8* %scevgep38.3.1, align 1
  %conv.i.i96.i.3.1 = zext i8 %150 to i32
  %conv1.i.i97.i.3.1 = zext i8 %conv2.i.i99.i.2.1 to i32
  %xor.i.i98.i.3.1 = xor i32 %conv1.i.i97.i.3.1, %conv.i.i96.i.3.1
  %conv2.i.i99.i.3.1 = trunc i32 %xor.i.i98.i.3.1 to i8
  %scevgep38.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %140, i64 0, i64 0, i64 4
  %151 = load i8, i8* %scevgep38.4.1, align 1
  %conv.i.i96.i.4.1 = zext i8 %151 to i32
  %conv1.i.i97.i.4.1 = zext i8 %conv2.i.i99.i.3.1 to i32
  %xor.i.i98.i.4.1 = xor i32 %conv1.i.i97.i.4.1, %conv.i.i96.i.4.1
  %conv2.i.i99.i.4.1 = trunc i32 %xor.i.i98.i.4.1 to i8
  %conv7.i.1 = zext i8 %conv2.i.i99.i.4.1 to i32
  %cmp8.i.1 = icmp eq i32 %conv5.i.1, %conv7.i.1
  call void @assume(i1 zeroext %cmp8.i.1) #3
  %call16.i.1145 = call zeroext i8 (...) @rand() #3
  %scevgep46.1146 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4041, i64 0, i64 0, i64 0
  store i8 %call16.i.1145, i8* %scevgep46.1146, align 1
  %scevgep47.1147 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4041, i64 0, i64 0, i64 0
  %152 = load i8, i8* %scevgep47.1147, align 1
  %conv23.i.1148 = zext i8 %152 to i32
  %153 = load i8, i8* %x, align 1
  %scevgep54.1149 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %141, i64 0, i64 0, i64 0
  %154 = load i8, i8* %scevgep54.1149, align 1
  %call28.i.1150 = call zeroext i8 @mult(i8 zeroext %153, i8 zeroext %154) #3
  %conv29.i.1151 = zext i8 %call28.i.1150 to i32
  %xor.i.1152 = xor i32 %conv23.i.1148, %conv29.i.1151
  %155 = load i8, i8* %scevgep55, align 1
  %156 = load i8, i8* %arraydecay7.1, align 1
  %call34.i.1154 = call zeroext i8 @mult(i8 zeroext %155, i8 zeroext %156) #3
  %conv35.i.1155 = zext i8 %call34.i.1154 to i32
  %xor36.i.1156 = xor i32 %xor.i.1152, %conv35.i.1155
  %conv37.i.1157 = trunc i32 %xor36.i.1156 to i8
  store i8 %conv37.i.1157, i8* %scevgep59, align 1
  %scevgep64.1159 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep5960, i64 0, i64 1, i64 0
  %157 = bitcast i8* %scevgep64.1159 to [5 x [5 x i8]]*
  %call16.i.1145.1 = call zeroext i8 (...) @rand() #3
  %scevgep46.1146.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4041, i64 0, i64 0, i64 1
  store i8 %call16.i.1145.1, i8* %scevgep46.1146.1, align 1
  %scevgep47.1147.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4041, i64 0, i64 0, i64 1
  %158 = load i8, i8* %scevgep47.1147.1, align 1
  %conv23.i.1148.1 = zext i8 %158 to i32
  %159 = load i8, i8* %x, align 1
  %scevgep54.1149.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %141, i64 0, i64 0, i64 1
  %160 = load i8, i8* %scevgep54.1149.1, align 1
  %call28.i.1150.1 = call zeroext i8 @mult(i8 zeroext %159, i8 zeroext %160) #3
  %conv29.i.1151.1 = zext i8 %call28.i.1150.1 to i32
  %xor.i.1152.1 = xor i32 %conv23.i.1148.1, %conv29.i.1151.1
  %scevgep58.1153.1 = getelementptr i8, i8* %scevgep55, i64 1
  %161 = load i8, i8* %scevgep58.1153.1, align 1
  %162 = load i8, i8* %arraydecay7.1, align 1
  %call34.i.1154.1 = call zeroext i8 @mult(i8 zeroext %161, i8 zeroext %162) #3
  %conv35.i.1155.1 = zext i8 %call34.i.1154.1 to i32
  %xor36.i.1156.1 = xor i32 %xor.i.1152.1, %conv35.i.1155.1
  %conv37.i.1157.1 = trunc i32 %xor36.i.1156.1 to i8
  store i8 %conv37.i.1157.1, i8* %scevgep64.1159, align 1
  %scevgep64.1159.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %157, i64 0, i64 1, i64 0
  %163 = bitcast i8* %scevgep64.1159.1 to [5 x [5 x i8]]*
  %call16.i.1145.2 = call zeroext i8 (...) @rand() #3
  %scevgep46.1146.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4041, i64 0, i64 0, i64 2
  store i8 %call16.i.1145.2, i8* %scevgep46.1146.2, align 1
  %scevgep47.1147.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4041, i64 0, i64 0, i64 2
  %164 = load i8, i8* %scevgep47.1147.2, align 1
  %conv23.i.1148.2 = zext i8 %164 to i32
  %165 = load i8, i8* %x, align 1
  %scevgep54.1149.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %141, i64 0, i64 0, i64 2
  %166 = load i8, i8* %scevgep54.1149.2, align 1
  %call28.i.1150.2 = call zeroext i8 @mult(i8 zeroext %165, i8 zeroext %166) #3
  %conv29.i.1151.2 = zext i8 %call28.i.1150.2 to i32
  %xor.i.1152.2 = xor i32 %conv23.i.1148.2, %conv29.i.1151.2
  %scevgep58.1153.2 = getelementptr i8, i8* %scevgep55, i64 2
  %167 = load i8, i8* %scevgep58.1153.2, align 1
  %168 = load i8, i8* %arraydecay7.1, align 1
  %call34.i.1154.2 = call zeroext i8 @mult(i8 zeroext %167, i8 zeroext %168) #3
  %conv35.i.1155.2 = zext i8 %call34.i.1154.2 to i32
  %xor36.i.1156.2 = xor i32 %xor.i.1152.2, %conv35.i.1155.2
  %conv37.i.1157.2 = trunc i32 %xor36.i.1156.2 to i8
  store i8 %conv37.i.1157.2, i8* %scevgep64.1159.1, align 1
  %scevgep64.1159.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %163, i64 0, i64 1, i64 0
  %call16.i.1145.3 = call zeroext i8 (...) @rand() #3
  %scevgep46.1146.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4041, i64 0, i64 0, i64 3
  store i8 %call16.i.1145.3, i8* %scevgep46.1146.3, align 1
  %scevgep47.1147.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4041, i64 0, i64 0, i64 3
  %169 = load i8, i8* %scevgep47.1147.3, align 1
  %conv23.i.1148.3 = zext i8 %169 to i32
  %170 = load i8, i8* %x, align 1
  %scevgep54.1149.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %141, i64 0, i64 0, i64 3
  %171 = load i8, i8* %scevgep54.1149.3, align 1
  %call28.i.1150.3 = call zeroext i8 @mult(i8 zeroext %170, i8 zeroext %171) #3
  %conv29.i.1151.3 = zext i8 %call28.i.1150.3 to i32
  %xor.i.1152.3 = xor i32 %conv23.i.1148.3, %conv29.i.1151.3
  %scevgep58.1153.3 = getelementptr i8, i8* %scevgep55, i64 3
  %172 = load i8, i8* %scevgep58.1153.3, align 1
  %173 = load i8, i8* %arraydecay7.1, align 1
  %call34.i.1154.3 = call zeroext i8 @mult(i8 zeroext %172, i8 zeroext %173) #3
  %conv35.i.1155.3 = zext i8 %call34.i.1154.3 to i32
  %xor36.i.1156.3 = xor i32 %xor.i.1152.3, %conv35.i.1155.3
  %conv37.i.1157.3 = trunc i32 %xor36.i.1156.3 to i8
  store i8 %conv37.i.1157.3, i8* %scevgep64.1159.2, align 1
  %scevgep43.1164 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4041, i64 0, i64 1, i64 1
  %174 = bitcast i8* %scevgep43.1164 to [5 x [5 x i8]]*
  %scevgep53.1165 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %141, i64 0, i64 0, i64 1
  %175 = bitcast i8* %scevgep53.1165 to [5 x [5 x i8]]*
  %scevgep57.1166 = getelementptr i8, i8* %scevgep55, i64 1
  %scevgep62.1167 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep5960, i64 0, i64 1, i64 1
  %176 = bitcast i8* %scevgep62.1167 to [5 x [5 x i8]]*
  %arrayidx25.i.1.1 = getelementptr inbounds i8, i8* %x, i64 1
  %arrayidx33.i.1.1 = getelementptr inbounds i8, i8* %arraydecay7.1, i64 1
  %call16.i.1.1 = call zeroext i8 (...) @rand() #3
  %scevgep46.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %174, i64 0, i64 0, i64 0
  store i8 %call16.i.1.1, i8* %scevgep46.1.1, align 1
  %scevgep47.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %174, i64 0, i64 0, i64 0
  %177 = load i8, i8* %scevgep47.1.1, align 1
  %conv23.i.1.1 = zext i8 %177 to i32
  %178 = load i8, i8* %arrayidx25.i.1.1, align 1
  %scevgep54.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %175, i64 0, i64 0, i64 0
  %179 = load i8, i8* %scevgep54.1.1, align 1
  %call28.i.1.1 = call zeroext i8 @mult(i8 zeroext %178, i8 zeroext %179) #3
  %conv29.i.1.1 = zext i8 %call28.i.1.1 to i32
  %xor.i.1.1 = xor i32 %conv23.i.1.1, %conv29.i.1.1
  %180 = load i8, i8* %scevgep57.1166, align 1
  %181 = load i8, i8* %arrayidx33.i.1.1, align 1
  %call34.i.1.1 = call zeroext i8 @mult(i8 zeroext %180, i8 zeroext %181) #3
  %conv35.i.1.1 = zext i8 %call34.i.1.1 to i32
  %xor36.i.1.1 = xor i32 %xor.i.1.1, %conv35.i.1.1
  %conv37.i.1.1 = trunc i32 %xor36.i.1.1 to i8
  store i8 %conv37.i.1.1, i8* %scevgep62.1167, align 1
  %scevgep64.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %176, i64 0, i64 1, i64 0
  %182 = bitcast i8* %scevgep64.1.1 to [5 x [5 x i8]]*
  %call16.i.1.1.1 = call zeroext i8 (...) @rand() #3
  %scevgep46.1.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %174, i64 0, i64 0, i64 1
  store i8 %call16.i.1.1.1, i8* %scevgep46.1.1.1, align 1
  %scevgep47.1.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %174, i64 0, i64 0, i64 1
  %183 = load i8, i8* %scevgep47.1.1.1, align 1
  %conv23.i.1.1.1 = zext i8 %183 to i32
  %184 = load i8, i8* %arrayidx25.i.1.1, align 1
  %scevgep54.1.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %175, i64 0, i64 0, i64 1
  %185 = load i8, i8* %scevgep54.1.1.1, align 1
  %call28.i.1.1.1 = call zeroext i8 @mult(i8 zeroext %184, i8 zeroext %185) #3
  %conv29.i.1.1.1 = zext i8 %call28.i.1.1.1 to i32
  %xor.i.1.1.1 = xor i32 %conv23.i.1.1.1, %conv29.i.1.1.1
  %scevgep58.1.1.1 = getelementptr i8, i8* %scevgep57.1166, i64 1
  %186 = load i8, i8* %scevgep58.1.1.1, align 1
  %187 = load i8, i8* %arrayidx33.i.1.1, align 1
  %call34.i.1.1.1 = call zeroext i8 @mult(i8 zeroext %186, i8 zeroext %187) #3
  %conv35.i.1.1.1 = zext i8 %call34.i.1.1.1 to i32
  %xor36.i.1.1.1 = xor i32 %xor.i.1.1.1, %conv35.i.1.1.1
  %conv37.i.1.1.1 = trunc i32 %xor36.i.1.1.1 to i8
  store i8 %conv37.i.1.1.1, i8* %scevgep64.1.1, align 1
  %scevgep64.1.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %182, i64 0, i64 1, i64 0
  %call16.i.1.1.2 = call zeroext i8 (...) @rand() #3
  %scevgep46.1.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %174, i64 0, i64 0, i64 2
  store i8 %call16.i.1.1.2, i8* %scevgep46.1.1.2, align 1
  %scevgep47.1.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %174, i64 0, i64 0, i64 2
  %188 = load i8, i8* %scevgep47.1.1.2, align 1
  %conv23.i.1.1.2 = zext i8 %188 to i32
  %189 = load i8, i8* %arrayidx25.i.1.1, align 1
  %scevgep54.1.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %175, i64 0, i64 0, i64 2
  %190 = load i8, i8* %scevgep54.1.1.2, align 1
  %call28.i.1.1.2 = call zeroext i8 @mult(i8 zeroext %189, i8 zeroext %190) #3
  %conv29.i.1.1.2 = zext i8 %call28.i.1.1.2 to i32
  %xor.i.1.1.2 = xor i32 %conv23.i.1.1.2, %conv29.i.1.1.2
  %scevgep58.1.1.2 = getelementptr i8, i8* %scevgep57.1166, i64 2
  %191 = load i8, i8* %scevgep58.1.1.2, align 1
  %192 = load i8, i8* %arrayidx33.i.1.1, align 1
  %call34.i.1.1.2 = call zeroext i8 @mult(i8 zeroext %191, i8 zeroext %192) #3
  %conv35.i.1.1.2 = zext i8 %call34.i.1.1.2 to i32
  %xor36.i.1.1.2 = xor i32 %xor.i.1.1.2, %conv35.i.1.1.2
  %conv37.i.1.1.2 = trunc i32 %xor36.i.1.1.2 to i8
  store i8 %conv37.i.1.1.2, i8* %scevgep64.1.1.1, align 1
  %scevgep43.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %174, i64 0, i64 1, i64 1
  %193 = bitcast i8* %scevgep43.1.1 to [5 x [5 x i8]]*
  %scevgep53.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %175, i64 0, i64 0, i64 1
  %194 = bitcast i8* %scevgep53.1.1 to [5 x [5 x i8]]*
  %scevgep57.1.1 = getelementptr i8, i8* %scevgep57.1166, i64 1
  %scevgep62.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %176, i64 0, i64 1, i64 1
  %195 = bitcast i8* %scevgep62.1.1 to [5 x [5 x i8]]*
  %arrayidx25.i.2.1 = getelementptr inbounds i8, i8* %x, i64 2
  %arrayidx33.i.2.1 = getelementptr inbounds i8, i8* %arraydecay7.1, i64 2
  %call16.i.2.1 = call zeroext i8 (...) @rand() #3
  %scevgep46.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %193, i64 0, i64 0, i64 0
  store i8 %call16.i.2.1, i8* %scevgep46.2.1, align 1
  %scevgep47.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %193, i64 0, i64 0, i64 0
  %196 = load i8, i8* %scevgep47.2.1, align 1
  %conv23.i.2.1 = zext i8 %196 to i32
  %197 = load i8, i8* %arrayidx25.i.2.1, align 1
  %scevgep54.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %194, i64 0, i64 0, i64 0
  %198 = load i8, i8* %scevgep54.2.1, align 1
  %call28.i.2.1 = call zeroext i8 @mult(i8 zeroext %197, i8 zeroext %198) #3
  %conv29.i.2.1 = zext i8 %call28.i.2.1 to i32
  %xor.i.2.1 = xor i32 %conv23.i.2.1, %conv29.i.2.1
  %199 = load i8, i8* %scevgep57.1.1, align 1
  %200 = load i8, i8* %arrayidx33.i.2.1, align 1
  %call34.i.2.1 = call zeroext i8 @mult(i8 zeroext %199, i8 zeroext %200) #3
  %conv35.i.2.1 = zext i8 %call34.i.2.1 to i32
  %xor36.i.2.1 = xor i32 %xor.i.2.1, %conv35.i.2.1
  %conv37.i.2.1 = trunc i32 %xor36.i.2.1 to i8
  store i8 %conv37.i.2.1, i8* %scevgep62.1.1, align 1
  %scevgep64.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %195, i64 0, i64 1, i64 0
  %call16.i.2.1.1 = call zeroext i8 (...) @rand() #3
  %scevgep46.2.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %193, i64 0, i64 0, i64 1
  store i8 %call16.i.2.1.1, i8* %scevgep46.2.1.1, align 1
  %scevgep47.2.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %193, i64 0, i64 0, i64 1
  %201 = load i8, i8* %scevgep47.2.1.1, align 1
  %conv23.i.2.1.1 = zext i8 %201 to i32
  %202 = load i8, i8* %arrayidx25.i.2.1, align 1
  %scevgep54.2.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %194, i64 0, i64 0, i64 1
  %203 = load i8, i8* %scevgep54.2.1.1, align 1
  %call28.i.2.1.1 = call zeroext i8 @mult(i8 zeroext %202, i8 zeroext %203) #3
  %conv29.i.2.1.1 = zext i8 %call28.i.2.1.1 to i32
  %xor.i.2.1.1 = xor i32 %conv23.i.2.1.1, %conv29.i.2.1.1
  %scevgep58.2.1.1 = getelementptr i8, i8* %scevgep57.1.1, i64 1
  %204 = load i8, i8* %scevgep58.2.1.1, align 1
  %205 = load i8, i8* %arrayidx33.i.2.1, align 1
  %call34.i.2.1.1 = call zeroext i8 @mult(i8 zeroext %204, i8 zeroext %205) #3
  %conv35.i.2.1.1 = zext i8 %call34.i.2.1.1 to i32
  %xor36.i.2.1.1 = xor i32 %xor.i.2.1.1, %conv35.i.2.1.1
  %conv37.i.2.1.1 = trunc i32 %xor36.i.2.1.1 to i8
  store i8 %conv37.i.2.1.1, i8* %scevgep64.2.1, align 1
  %scevgep43.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %193, i64 0, i64 1, i64 1
  %206 = bitcast i8* %scevgep43.2.1 to [5 x [5 x i8]]*
  %scevgep53.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %194, i64 0, i64 0, i64 1
  %207 = bitcast i8* %scevgep53.2.1 to [5 x [5 x i8]]*
  %scevgep57.2.1 = getelementptr i8, i8* %scevgep57.1.1, i64 1
  %scevgep62.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %195, i64 0, i64 1, i64 1
  %arrayidx25.i.3.1 = getelementptr inbounds i8, i8* %x, i64 3
  %arrayidx33.i.3.1 = getelementptr inbounds i8, i8* %arraydecay7.1, i64 3
  %call16.i.3.1 = call zeroext i8 (...) @rand() #3
  %scevgep46.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %206, i64 0, i64 0, i64 0
  store i8 %call16.i.3.1, i8* %scevgep46.3.1, align 1
  %scevgep47.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %206, i64 0, i64 0, i64 0
  %208 = load i8, i8* %scevgep47.3.1, align 1
  %conv23.i.3.1 = zext i8 %208 to i32
  %209 = load i8, i8* %arrayidx25.i.3.1, align 1
  %scevgep54.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %207, i64 0, i64 0, i64 0
  %210 = load i8, i8* %scevgep54.3.1, align 1
  %call28.i.3.1 = call zeroext i8 @mult(i8 zeroext %209, i8 zeroext %210) #3
  %conv29.i.3.1 = zext i8 %call28.i.3.1 to i32
  %xor.i.3.1 = xor i32 %conv23.i.3.1, %conv29.i.3.1
  %211 = load i8, i8* %scevgep57.2.1, align 1
  %212 = load i8, i8* %arrayidx33.i.3.1, align 1
  %call34.i.3.1 = call zeroext i8 @mult(i8 zeroext %211, i8 zeroext %212) #3
  %conv35.i.3.1 = zext i8 %call34.i.3.1 to i32
  %xor36.i.3.1 = xor i32 %xor.i.3.1, %conv35.i.3.1
  %conv37.i.3.1 = trunc i32 %xor36.i.3.1 to i8
  store i8 %conv37.i.3.1, i8* %scevgep62.2.1, align 1
  %213 = load i8, i8* %x, align 1
  %214 = load i8, i8* %arraydecay7.1, align 1
  %call54.i.1169 = call zeroext i8 @mult(i8 zeroext %213, i8 zeroext %214) #3
  store i8 %call54.i.1169, i8* %arraydecay10.1, align 1
  %scevgep77.1.1178 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %215 = load i8, i8* %scevgep77.1.1178, align 1
  %conv68.i.1.1179 = zext i8 %215 to i32
  %216 = load i8, i8* %arraydecay10.1, align 1
  %conv71.i.1.1180 = zext i8 %216 to i32
  %xor72.i.1.1181 = xor i32 %conv71.i.1.1180, %conv68.i.1.1179
  %conv73.i.1.1182 = trunc i32 %xor72.i.1.1181 to i8
  store i8 %conv73.i.1.1182, i8* %arraydecay10.1, align 1
  %scevgep77.2.1185 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 2
  %217 = load i8, i8* %scevgep77.2.1185, align 1
  %conv68.i.2.1186 = zext i8 %217 to i32
  %218 = load i8, i8* %arraydecay10.1, align 1
  %conv71.i.2.1187 = zext i8 %218 to i32
  %xor72.i.2.1188 = xor i32 %conv71.i.2.1187, %conv68.i.2.1186
  %conv73.i.2.1189 = trunc i32 %xor72.i.2.1188 to i8
  store i8 %conv73.i.2.1189, i8* %arraydecay10.1, align 1
  %scevgep77.3.1192 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 3
  %219 = load i8, i8* %scevgep77.3.1192, align 1
  %conv68.i.3.1193 = zext i8 %219 to i32
  %220 = load i8, i8* %arraydecay10.1, align 1
  %conv71.i.3.1194 = zext i8 %220 to i32
  %xor72.i.3.1195 = xor i32 %conv71.i.3.1194, %conv68.i.3.1193
  %conv73.i.3.1196 = trunc i32 %xor72.i.3.1195 to i8
  store i8 %conv73.i.3.1196, i8* %arraydecay10.1, align 1
  %scevgep77.4.1199 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 4
  %221 = load i8, i8* %scevgep77.4.1199, align 1
  %conv68.i.4.1200 = zext i8 %221 to i32
  %222 = load i8, i8* %arraydecay10.1, align 1
  %conv71.i.4.1201 = zext i8 %222 to i32
  %xor72.i.4.1202 = xor i32 %conv71.i.4.1201, %conv68.i.4.1200
  %conv73.i.4.1203 = trunc i32 %xor72.i.4.1202 to i8
  store i8 %conv73.i.4.1203, i8* %arraydecay10.1, align 1
  %scevgep76.1205 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 1, i64 0
  %223 = bitcast i8* %scevgep76.1205 to [5 x [5 x i8]]*
  %arrayidx51.i.1.1 = getelementptr inbounds i8, i8* %x, i64 1
  %224 = load i8, i8* %arrayidx51.i.1.1, align 1
  %arrayidx53.i.1.1 = getelementptr inbounds i8, i8* %arraydecay7.1, i64 1
  %225 = load i8, i8* %arrayidx53.i.1.1, align 1
  %call54.i.1.1 = call zeroext i8 @mult(i8 zeroext %224, i8 zeroext %225) #3
  %arrayidx56.i.1.1 = getelementptr inbounds i8, i8* %arraydecay10.1, i64 1
  store i8 %call54.i.1.1, i8* %arrayidx56.i.1.1, align 1
  %arrayidx70.i.1.1 = getelementptr inbounds i8, i8* %arraydecay10.1, i64 1
  %scevgep77.196.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %223, i64 0, i64 0, i64 0
  %226 = load i8, i8* %scevgep77.196.1, align 1
  %conv68.i.197.1 = zext i8 %226 to i32
  %227 = load i8, i8* %arrayidx70.i.1.1, align 1
  %conv71.i.198.1 = zext i8 %227 to i32
  %xor72.i.199.1 = xor i32 %conv71.i.198.1, %conv68.i.197.1
  %conv73.i.1100.1 = trunc i32 %xor72.i.199.1 to i8
  store i8 %conv73.i.1100.1, i8* %arrayidx70.i.1.1, align 1
  %scevgep77.2.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %223, i64 0, i64 0, i64 2
  %228 = load i8, i8* %scevgep77.2.1.1, align 1
  %conv68.i.2.1.1 = zext i8 %228 to i32
  %229 = load i8, i8* %arrayidx70.i.1.1, align 1
  %conv71.i.2.1.1 = zext i8 %229 to i32
  %xor72.i.2.1.1 = xor i32 %conv71.i.2.1.1, %conv68.i.2.1.1
  %conv73.i.2.1.1 = trunc i32 %xor72.i.2.1.1 to i8
  store i8 %conv73.i.2.1.1, i8* %arrayidx70.i.1.1, align 1
  %scevgep77.3.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %223, i64 0, i64 0, i64 3
  %230 = load i8, i8* %scevgep77.3.1.1, align 1
  %conv68.i.3.1.1 = zext i8 %230 to i32
  %231 = load i8, i8* %arrayidx70.i.1.1, align 1
  %conv71.i.3.1.1 = zext i8 %231 to i32
  %xor72.i.3.1.1 = xor i32 %conv71.i.3.1.1, %conv68.i.3.1.1
  %conv73.i.3.1.1 = trunc i32 %xor72.i.3.1.1 to i8
  store i8 %conv73.i.3.1.1, i8* %arrayidx70.i.1.1, align 1
  %scevgep77.4.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %223, i64 0, i64 0, i64 4
  %232 = load i8, i8* %scevgep77.4.1.1, align 1
  %conv68.i.4.1.1 = zext i8 %232 to i32
  %233 = load i8, i8* %arrayidx70.i.1.1, align 1
  %conv71.i.4.1.1 = zext i8 %233 to i32
  %xor72.i.4.1.1 = xor i32 %conv71.i.4.1.1, %conv68.i.4.1.1
  %conv73.i.4.1.1 = trunc i32 %xor72.i.4.1.1 to i8
  store i8 %conv73.i.4.1.1, i8* %arrayidx70.i.1.1, align 1
  %scevgep76.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %223, i64 0, i64 1, i64 0
  %234 = bitcast i8* %scevgep76.1.1 to [5 x [5 x i8]]*
  %arrayidx51.i.2.1 = getelementptr inbounds i8, i8* %x, i64 2
  %235 = load i8, i8* %arrayidx51.i.2.1, align 1
  %arrayidx53.i.2.1 = getelementptr inbounds i8, i8* %arraydecay7.1, i64 2
  %236 = load i8, i8* %arrayidx53.i.2.1, align 1
  %call54.i.2.1 = call zeroext i8 @mult(i8 zeroext %235, i8 zeroext %236) #3
  %arrayidx56.i.2.1 = getelementptr inbounds i8, i8* %arraydecay10.1, i64 2
  store i8 %call54.i.2.1, i8* %arrayidx56.i.2.1, align 1
  %arrayidx70.i.2.1 = getelementptr inbounds i8, i8* %arraydecay10.1, i64 2
  %scevgep77.2105.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %234, i64 0, i64 0, i64 0
  %237 = load i8, i8* %scevgep77.2105.1, align 1
  %conv68.i.2106.1 = zext i8 %237 to i32
  %238 = load i8, i8* %arrayidx70.i.2.1, align 1
  %conv71.i.2107.1 = zext i8 %238 to i32
  %xor72.i.2108.1 = xor i32 %conv71.i.2107.1, %conv68.i.2106.1
  %conv73.i.2109.1 = trunc i32 %xor72.i.2108.1 to i8
  store i8 %conv73.i.2109.1, i8* %arrayidx70.i.2.1, align 1
  %scevgep77.1.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %234, i64 0, i64 0, i64 1
  %239 = load i8, i8* %scevgep77.1.2.1, align 1
  %conv68.i.1.2.1 = zext i8 %239 to i32
  %240 = load i8, i8* %arrayidx70.i.2.1, align 1
  %conv71.i.1.2.1 = zext i8 %240 to i32
  %xor72.i.1.2.1 = xor i32 %conv71.i.1.2.1, %conv68.i.1.2.1
  %conv73.i.1.2.1 = trunc i32 %xor72.i.1.2.1 to i8
  store i8 %conv73.i.1.2.1, i8* %arrayidx70.i.2.1, align 1
  %scevgep77.3.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %234, i64 0, i64 0, i64 3
  %241 = load i8, i8* %scevgep77.3.2.1, align 1
  %conv68.i.3.2.1 = zext i8 %241 to i32
  %242 = load i8, i8* %arrayidx70.i.2.1, align 1
  %conv71.i.3.2.1 = zext i8 %242 to i32
  %xor72.i.3.2.1 = xor i32 %conv71.i.3.2.1, %conv68.i.3.2.1
  %conv73.i.3.2.1 = trunc i32 %xor72.i.3.2.1 to i8
  store i8 %conv73.i.3.2.1, i8* %arrayidx70.i.2.1, align 1
  %scevgep77.4.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %234, i64 0, i64 0, i64 4
  %243 = load i8, i8* %scevgep77.4.2.1, align 1
  %conv68.i.4.2.1 = zext i8 %243 to i32
  %244 = load i8, i8* %arrayidx70.i.2.1, align 1
  %conv71.i.4.2.1 = zext i8 %244 to i32
  %xor72.i.4.2.1 = xor i32 %conv71.i.4.2.1, %conv68.i.4.2.1
  %conv73.i.4.2.1 = trunc i32 %xor72.i.4.2.1 to i8
  store i8 %conv73.i.4.2.1, i8* %arrayidx70.i.2.1, align 1
  %scevgep76.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %234, i64 0, i64 1, i64 0
  %245 = bitcast i8* %scevgep76.2.1 to [5 x [5 x i8]]*
  %arrayidx51.i.3.1 = getelementptr inbounds i8, i8* %x, i64 3
  %246 = load i8, i8* %arrayidx51.i.3.1, align 1
  %arrayidx53.i.3.1 = getelementptr inbounds i8, i8* %arraydecay7.1, i64 3
  %247 = load i8, i8* %arrayidx53.i.3.1, align 1
  %call54.i.3.1 = call zeroext i8 @mult(i8 zeroext %246, i8 zeroext %247) #3
  %arrayidx56.i.3.1 = getelementptr inbounds i8, i8* %arraydecay10.1, i64 3
  store i8 %call54.i.3.1, i8* %arrayidx56.i.3.1, align 1
  %arrayidx70.i.3.1 = getelementptr inbounds i8, i8* %arraydecay10.1, i64 3
  %scevgep77.3114.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %245, i64 0, i64 0, i64 0
  %248 = load i8, i8* %scevgep77.3114.1, align 1
  %conv68.i.3115.1 = zext i8 %248 to i32
  %249 = load i8, i8* %arrayidx70.i.3.1, align 1
  %conv71.i.3116.1 = zext i8 %249 to i32
  %xor72.i.3117.1 = xor i32 %conv71.i.3116.1, %conv68.i.3115.1
  %conv73.i.3118.1 = trunc i32 %xor72.i.3117.1 to i8
  store i8 %conv73.i.3118.1, i8* %arrayidx70.i.3.1, align 1
  %scevgep77.1.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %245, i64 0, i64 0, i64 1
  %250 = load i8, i8* %scevgep77.1.3.1, align 1
  %conv68.i.1.3.1 = zext i8 %250 to i32
  %251 = load i8, i8* %arrayidx70.i.3.1, align 1
  %conv71.i.1.3.1 = zext i8 %251 to i32
  %xor72.i.1.3.1 = xor i32 %conv71.i.1.3.1, %conv68.i.1.3.1
  %conv73.i.1.3.1 = trunc i32 %xor72.i.1.3.1 to i8
  store i8 %conv73.i.1.3.1, i8* %arrayidx70.i.3.1, align 1
  %scevgep77.2.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %245, i64 0, i64 0, i64 2
  %252 = load i8, i8* %scevgep77.2.3.1, align 1
  %conv68.i.2.3.1 = zext i8 %252 to i32
  %253 = load i8, i8* %arrayidx70.i.3.1, align 1
  %conv71.i.2.3.1 = zext i8 %253 to i32
  %xor72.i.2.3.1 = xor i32 %conv71.i.2.3.1, %conv68.i.2.3.1
  %conv73.i.2.3.1 = trunc i32 %xor72.i.2.3.1 to i8
  store i8 %conv73.i.2.3.1, i8* %arrayidx70.i.3.1, align 1
  %scevgep77.4.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %245, i64 0, i64 0, i64 4
  %254 = load i8, i8* %scevgep77.4.3.1, align 1
  %conv68.i.4.3.1 = zext i8 %254 to i32
  %255 = load i8, i8* %arrayidx70.i.3.1, align 1
  %conv71.i.4.3.1 = zext i8 %255 to i32
  %xor72.i.4.3.1 = xor i32 %conv71.i.4.3.1, %conv68.i.4.3.1
  %conv73.i.4.3.1 = trunc i32 %xor72.i.4.3.1 to i8
  store i8 %conv73.i.4.3.1, i8* %arrayidx70.i.3.1, align 1
  %scevgep76.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %245, i64 0, i64 1, i64 0
  %256 = bitcast i8* %scevgep76.3.1 to [5 x [5 x i8]]*
  %arrayidx51.i.4.1 = getelementptr inbounds i8, i8* %x, i64 4
  %257 = load i8, i8* %arrayidx51.i.4.1, align 1
  %arrayidx53.i.4.1 = getelementptr inbounds i8, i8* %arraydecay7.1, i64 4
  %258 = load i8, i8* %arrayidx53.i.4.1, align 1
  %call54.i.4.1 = call zeroext i8 @mult(i8 zeroext %257, i8 zeroext %258) #3
  %arrayidx56.i.4.1 = getelementptr inbounds i8, i8* %arraydecay10.1, i64 4
  store i8 %call54.i.4.1, i8* %arrayidx56.i.4.1, align 1
  %arrayidx70.i.4.1 = getelementptr inbounds i8, i8* %arraydecay10.1, i64 4
  %scevgep77.4123.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %256, i64 0, i64 0, i64 0
  %259 = load i8, i8* %scevgep77.4123.1, align 1
  %conv68.i.4124.1 = zext i8 %259 to i32
  %260 = load i8, i8* %arrayidx70.i.4.1, align 1
  %conv71.i.4125.1 = zext i8 %260 to i32
  %xor72.i.4126.1 = xor i32 %conv71.i.4125.1, %conv68.i.4124.1
  %conv73.i.4127.1 = trunc i32 %xor72.i.4126.1 to i8
  store i8 %conv73.i.4127.1, i8* %arrayidx70.i.4.1, align 1
  %scevgep77.1.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %256, i64 0, i64 0, i64 1
  %261 = load i8, i8* %scevgep77.1.4.1, align 1
  %conv68.i.1.4.1 = zext i8 %261 to i32
  %262 = load i8, i8* %arrayidx70.i.4.1, align 1
  %conv71.i.1.4.1 = zext i8 %262 to i32
  %xor72.i.1.4.1 = xor i32 %conv71.i.1.4.1, %conv68.i.1.4.1
  %conv73.i.1.4.1 = trunc i32 %xor72.i.1.4.1 to i8
  store i8 %conv73.i.1.4.1, i8* %arrayidx70.i.4.1, align 1
  %scevgep77.2.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %256, i64 0, i64 0, i64 2
  %263 = load i8, i8* %scevgep77.2.4.1, align 1
  %conv68.i.2.4.1 = zext i8 %263 to i32
  %264 = load i8, i8* %arrayidx70.i.4.1, align 1
  %conv71.i.2.4.1 = zext i8 %264 to i32
  %xor72.i.2.4.1 = xor i32 %conv71.i.2.4.1, %conv68.i.2.4.1
  %conv73.i.2.4.1 = trunc i32 %xor72.i.2.4.1 to i8
  store i8 %conv73.i.2.4.1, i8* %arrayidx70.i.4.1, align 1
  %scevgep77.3.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %256, i64 0, i64 0, i64 3
  %265 = load i8, i8* %scevgep77.3.4.1, align 1
  %conv68.i.3.4.1 = zext i8 %265 to i32
  %266 = load i8, i8* %arrayidx70.i.4.1, align 1
  %conv71.i.3.4.1 = zext i8 %266 to i32
  %xor72.i.3.4.1 = xor i32 %conv71.i.3.4.1, %conv68.i.3.4.1
  %conv73.i.3.4.1 = trunc i32 %xor72.i.3.4.1 to i8
  store i8 %conv73.i.3.4.1, i8* %arrayidx70.i.4.1, align 1
  %call80.i.1 = call zeroext i8 @mult(i8 zeroext %call.i22.1, i8 zeroext %call1.i.1) #3
  %conv81.i.1 = zext i8 %call80.i.1 to i32
  %scevgep82.1207 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %140, i64 0, i64 0, i64 0
  %scevgep83.1208 = getelementptr i8, i8* %scevgep82.1207, i64 5
  %267 = load i8, i8* %scevgep83.1208, align 1
  %conv.i.i113.i.1210 = zext i8 %267 to i32
  %conv1.i.i114.i.1211 = zext i8 %conv2.i.i116.i.4 to i32
  %xor.i.i115.i.1212 = xor i32 %conv1.i.i114.i.1211, %conv.i.i113.i.1210
  %conv2.i.i116.i.1213 = trunc i32 %xor.i.i115.i.1212 to i8
  %scevgep82.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %140, i64 0, i64 0, i64 1
  %scevgep83.1.1 = getelementptr i8, i8* %scevgep82.1.1, i64 5
  %268 = load i8, i8* %scevgep83.1.1, align 1
  %conv.i.i113.i.1.1 = zext i8 %268 to i32
  %conv1.i.i114.i.1.1 = zext i8 %conv2.i.i116.i.1213 to i32
  %xor.i.i115.i.1.1 = xor i32 %conv1.i.i114.i.1.1, %conv.i.i113.i.1.1
  %conv2.i.i116.i.1.1 = trunc i32 %xor.i.i115.i.1.1 to i8
  %scevgep82.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %140, i64 0, i64 0, i64 2
  %scevgep83.2.1 = getelementptr i8, i8* %scevgep82.2.1, i64 5
  %269 = load i8, i8* %scevgep83.2.1, align 1
  %conv.i.i113.i.2.1 = zext i8 %269 to i32
  %conv1.i.i114.i.2.1 = zext i8 %conv2.i.i116.i.1.1 to i32
  %xor.i.i115.i.2.1 = xor i32 %conv1.i.i114.i.2.1, %conv.i.i113.i.2.1
  %conv2.i.i116.i.2.1 = trunc i32 %xor.i.i115.i.2.1 to i8
  %scevgep82.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %140, i64 0, i64 0, i64 3
  %scevgep83.3.1 = getelementptr i8, i8* %scevgep82.3.1, i64 5
  %270 = load i8, i8* %scevgep83.3.1, align 1
  %conv.i.i113.i.3.1 = zext i8 %270 to i32
  %conv1.i.i114.i.3.1 = zext i8 %conv2.i.i116.i.2.1 to i32
  %xor.i.i115.i.3.1 = xor i32 %conv1.i.i114.i.3.1, %conv.i.i113.i.3.1
  %conv2.i.i116.i.3.1 = trunc i32 %xor.i.i115.i.3.1 to i8
  %scevgep82.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %140, i64 0, i64 0, i64 4
  %scevgep83.4.1 = getelementptr i8, i8* %scevgep82.4.1, i64 5
  %271 = load i8, i8* %scevgep83.4.1, align 1
  %conv.i.i113.i.4.1 = zext i8 %271 to i32
  %conv1.i.i114.i.4.1 = zext i8 %conv2.i.i116.i.3.1 to i32
  %xor.i.i115.i.4.1 = xor i32 %conv1.i.i114.i.4.1, %conv.i.i113.i.4.1
  %conv2.i.i116.i.4.1 = trunc i32 %xor.i.i115.i.4.1 to i8
  %conv83.i.1 = zext i8 %conv2.i.i116.i.4.1 to i32
  %cmp84.i.1 = icmp eq i32 %conv81.i.1, %conv83.i.1
  call void @assert(i1 zeroext %cmp84.i.1) #3
  %scevgep35.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %140, i64 0, i64 1, i64 0
  %272 = bitcast i8* %scevgep35.1 to [5 x [5 x i8]]*
  %scevgep51.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %141, i64 0, i64 1, i64 0
  %273 = bitcast i8* %scevgep51.1 to [5 x [5 x i8]]*
  %arrayidx6.2 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 2
  %arraydecay7.2 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx6.2, i64 0, i64 0
  %arrayidx9.2 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 3
  %arraydecay10.2 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx9.2, i64 0, i64 0
  %call.i22.2 = call zeroext i8 (...) @rand() #3
  %call1.i.2 = call zeroext i8 (...) @rand() #3
  %conv.i.2 = zext i8 %call.i22.2 to i32
  %274 = load i8, i8* %x, align 1
  %conv.i.i.i.2215 = zext i8 %274 to i32
  %conv1.i.i.i.2216 = zext i8 %conv2.i.i.i.4.1 to i32
  %xor.i.i.i.2217 = xor i32 %conv1.i.i.i.2216, %conv.i.i.i.2215
  %conv2.i.i.i.2218 = trunc i32 %xor.i.i.i.2217 to i8
  %scevgep32.1.2 = getelementptr i8, i8* %x, i64 1
  %275 = load i8, i8* %scevgep32.1.2, align 1
  %conv.i.i.i.1.2 = zext i8 %275 to i32
  %conv1.i.i.i.1.2 = zext i8 %conv2.i.i.i.2218 to i32
  %xor.i.i.i.1.2 = xor i32 %conv1.i.i.i.1.2, %conv.i.i.i.1.2
  %conv2.i.i.i.1.2 = trunc i32 %xor.i.i.i.1.2 to i8
  %scevgep32.2.2 = getelementptr i8, i8* %x, i64 2
  %276 = load i8, i8* %scevgep32.2.2, align 1
  %conv.i.i.i.2.2 = zext i8 %276 to i32
  %conv1.i.i.i.2.2 = zext i8 %conv2.i.i.i.1.2 to i32
  %xor.i.i.i.2.2 = xor i32 %conv1.i.i.i.2.2, %conv.i.i.i.2.2
  %conv2.i.i.i.2.2 = trunc i32 %xor.i.i.i.2.2 to i8
  %scevgep32.3.2 = getelementptr i8, i8* %x, i64 3
  %277 = load i8, i8* %scevgep32.3.2, align 1
  %conv.i.i.i.3.2 = zext i8 %277 to i32
  %conv1.i.i.i.3.2 = zext i8 %conv2.i.i.i.2.2 to i32
  %xor.i.i.i.3.2 = xor i32 %conv1.i.i.i.3.2, %conv.i.i.i.3.2
  %conv2.i.i.i.3.2 = trunc i32 %xor.i.i.i.3.2 to i8
  %scevgep32.4.2 = getelementptr i8, i8* %x, i64 4
  %278 = load i8, i8* %scevgep32.4.2, align 1
  %conv.i.i.i.4.2 = zext i8 %278 to i32
  %conv1.i.i.i.4.2 = zext i8 %conv2.i.i.i.3.2 to i32
  %xor.i.i.i.4.2 = xor i32 %conv1.i.i.i.4.2, %conv.i.i.i.4.2
  %conv2.i.i.i.4.2 = trunc i32 %xor.i.i.i.4.2 to i8
  %conv3.i.2 = zext i8 %conv2.i.i.i.4.2 to i32
  %cmp.i23.2 = icmp eq i32 %conv.i.2, %conv3.i.2
  call void @assume(i1 zeroext %cmp.i23.2) #3
  %conv5.i.2 = zext i8 %call1.i.2 to i32
  %scevgep38.2219 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %272, i64 0, i64 0, i64 0
  %279 = load i8, i8* %scevgep38.2219, align 1
  %conv.i.i96.i.2221 = zext i8 %279 to i32
  %conv1.i.i97.i.2222 = zext i8 %conv2.i.i99.i.4.1 to i32
  %xor.i.i98.i.2223 = xor i32 %conv1.i.i97.i.2222, %conv.i.i96.i.2221
  %conv2.i.i99.i.2224 = trunc i32 %xor.i.i98.i.2223 to i8
  %scevgep38.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %272, i64 0, i64 0, i64 1
  %280 = load i8, i8* %scevgep38.1.2, align 1
  %conv.i.i96.i.1.2 = zext i8 %280 to i32
  %conv1.i.i97.i.1.2 = zext i8 %conv2.i.i99.i.2224 to i32
  %xor.i.i98.i.1.2 = xor i32 %conv1.i.i97.i.1.2, %conv.i.i96.i.1.2
  %conv2.i.i99.i.1.2 = trunc i32 %xor.i.i98.i.1.2 to i8
  %scevgep38.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %272, i64 0, i64 0, i64 2
  %281 = load i8, i8* %scevgep38.2.2, align 1
  %conv.i.i96.i.2.2 = zext i8 %281 to i32
  %conv1.i.i97.i.2.2 = zext i8 %conv2.i.i99.i.1.2 to i32
  %xor.i.i98.i.2.2 = xor i32 %conv1.i.i97.i.2.2, %conv.i.i96.i.2.2
  %conv2.i.i99.i.2.2 = trunc i32 %xor.i.i98.i.2.2 to i8
  %scevgep38.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %272, i64 0, i64 0, i64 3
  %282 = load i8, i8* %scevgep38.3.2, align 1
  %conv.i.i96.i.3.2 = zext i8 %282 to i32
  %conv1.i.i97.i.3.2 = zext i8 %conv2.i.i99.i.2.2 to i32
  %xor.i.i98.i.3.2 = xor i32 %conv1.i.i97.i.3.2, %conv.i.i96.i.3.2
  %conv2.i.i99.i.3.2 = trunc i32 %xor.i.i98.i.3.2 to i8
  %scevgep38.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %272, i64 0, i64 0, i64 4
  %283 = load i8, i8* %scevgep38.4.2, align 1
  %conv.i.i96.i.4.2 = zext i8 %283 to i32
  %conv1.i.i97.i.4.2 = zext i8 %conv2.i.i99.i.3.2 to i32
  %xor.i.i98.i.4.2 = xor i32 %conv1.i.i97.i.4.2, %conv.i.i96.i.4.2
  %conv2.i.i99.i.4.2 = trunc i32 %xor.i.i98.i.4.2 to i8
  %conv7.i.2 = zext i8 %conv2.i.i99.i.4.2 to i32
  %cmp8.i.2 = icmp eq i32 %conv5.i.2, %conv7.i.2
  call void @assume(i1 zeroext %cmp8.i.2) #3
  %call16.i.2229 = call zeroext i8 (...) @rand() #3
  %scevgep46.2230 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4041, i64 0, i64 0, i64 0
  store i8 %call16.i.2229, i8* %scevgep46.2230, align 1
  %scevgep47.2231 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4041, i64 0, i64 0, i64 0
  %284 = load i8, i8* %scevgep47.2231, align 1
  %conv23.i.2232 = zext i8 %284 to i32
  %285 = load i8, i8* %x, align 1
  %scevgep54.2233 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %273, i64 0, i64 0, i64 0
  %286 = load i8, i8* %scevgep54.2233, align 1
  %call28.i.2234 = call zeroext i8 @mult(i8 zeroext %285, i8 zeroext %286) #3
  %conv29.i.2235 = zext i8 %call28.i.2234 to i32
  %xor.i.2236 = xor i32 %conv23.i.2232, %conv29.i.2235
  %287 = load i8, i8* %scevgep55, align 1
  %288 = load i8, i8* %arraydecay7.2, align 1
  %call34.i.2238 = call zeroext i8 @mult(i8 zeroext %287, i8 zeroext %288) #3
  %conv35.i.2239 = zext i8 %call34.i.2238 to i32
  %xor36.i.2240 = xor i32 %xor.i.2236, %conv35.i.2239
  %conv37.i.2241 = trunc i32 %xor36.i.2240 to i8
  store i8 %conv37.i.2241, i8* %scevgep59, align 1
  %scevgep64.2243 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep5960, i64 0, i64 1, i64 0
  %289 = bitcast i8* %scevgep64.2243 to [5 x [5 x i8]]*
  %call16.i.2229.1 = call zeroext i8 (...) @rand() #3
  %scevgep46.2230.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4041, i64 0, i64 0, i64 1
  store i8 %call16.i.2229.1, i8* %scevgep46.2230.1, align 1
  %scevgep47.2231.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4041, i64 0, i64 0, i64 1
  %290 = load i8, i8* %scevgep47.2231.1, align 1
  %conv23.i.2232.1 = zext i8 %290 to i32
  %291 = load i8, i8* %x, align 1
  %scevgep54.2233.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %273, i64 0, i64 0, i64 1
  %292 = load i8, i8* %scevgep54.2233.1, align 1
  %call28.i.2234.1 = call zeroext i8 @mult(i8 zeroext %291, i8 zeroext %292) #3
  %conv29.i.2235.1 = zext i8 %call28.i.2234.1 to i32
  %xor.i.2236.1 = xor i32 %conv23.i.2232.1, %conv29.i.2235.1
  %scevgep58.2237.1 = getelementptr i8, i8* %scevgep55, i64 1
  %293 = load i8, i8* %scevgep58.2237.1, align 1
  %294 = load i8, i8* %arraydecay7.2, align 1
  %call34.i.2238.1 = call zeroext i8 @mult(i8 zeroext %293, i8 zeroext %294) #3
  %conv35.i.2239.1 = zext i8 %call34.i.2238.1 to i32
  %xor36.i.2240.1 = xor i32 %xor.i.2236.1, %conv35.i.2239.1
  %conv37.i.2241.1 = trunc i32 %xor36.i.2240.1 to i8
  store i8 %conv37.i.2241.1, i8* %scevgep64.2243, align 1
  %scevgep64.2243.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %289, i64 0, i64 1, i64 0
  %295 = bitcast i8* %scevgep64.2243.1 to [5 x [5 x i8]]*
  %call16.i.2229.2 = call zeroext i8 (...) @rand() #3
  %scevgep46.2230.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4041, i64 0, i64 0, i64 2
  store i8 %call16.i.2229.2, i8* %scevgep46.2230.2, align 1
  %scevgep47.2231.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4041, i64 0, i64 0, i64 2
  %296 = load i8, i8* %scevgep47.2231.2, align 1
  %conv23.i.2232.2 = zext i8 %296 to i32
  %297 = load i8, i8* %x, align 1
  %scevgep54.2233.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %273, i64 0, i64 0, i64 2
  %298 = load i8, i8* %scevgep54.2233.2, align 1
  %call28.i.2234.2 = call zeroext i8 @mult(i8 zeroext %297, i8 zeroext %298) #3
  %conv29.i.2235.2 = zext i8 %call28.i.2234.2 to i32
  %xor.i.2236.2 = xor i32 %conv23.i.2232.2, %conv29.i.2235.2
  %scevgep58.2237.2 = getelementptr i8, i8* %scevgep55, i64 2
  %299 = load i8, i8* %scevgep58.2237.2, align 1
  %300 = load i8, i8* %arraydecay7.2, align 1
  %call34.i.2238.2 = call zeroext i8 @mult(i8 zeroext %299, i8 zeroext %300) #3
  %conv35.i.2239.2 = zext i8 %call34.i.2238.2 to i32
  %xor36.i.2240.2 = xor i32 %xor.i.2236.2, %conv35.i.2239.2
  %conv37.i.2241.2 = trunc i32 %xor36.i.2240.2 to i8
  store i8 %conv37.i.2241.2, i8* %scevgep64.2243.1, align 1
  %scevgep64.2243.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %295, i64 0, i64 1, i64 0
  %call16.i.2229.3 = call zeroext i8 (...) @rand() #3
  %scevgep46.2230.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4041, i64 0, i64 0, i64 3
  store i8 %call16.i.2229.3, i8* %scevgep46.2230.3, align 1
  %scevgep47.2231.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4041, i64 0, i64 0, i64 3
  %301 = load i8, i8* %scevgep47.2231.3, align 1
  %conv23.i.2232.3 = zext i8 %301 to i32
  %302 = load i8, i8* %x, align 1
  %scevgep54.2233.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %273, i64 0, i64 0, i64 3
  %303 = load i8, i8* %scevgep54.2233.3, align 1
  %call28.i.2234.3 = call zeroext i8 @mult(i8 zeroext %302, i8 zeroext %303) #3
  %conv29.i.2235.3 = zext i8 %call28.i.2234.3 to i32
  %xor.i.2236.3 = xor i32 %conv23.i.2232.3, %conv29.i.2235.3
  %scevgep58.2237.3 = getelementptr i8, i8* %scevgep55, i64 3
  %304 = load i8, i8* %scevgep58.2237.3, align 1
  %305 = load i8, i8* %arraydecay7.2, align 1
  %call34.i.2238.3 = call zeroext i8 @mult(i8 zeroext %304, i8 zeroext %305) #3
  %conv35.i.2239.3 = zext i8 %call34.i.2238.3 to i32
  %xor36.i.2240.3 = xor i32 %xor.i.2236.3, %conv35.i.2239.3
  %conv37.i.2241.3 = trunc i32 %xor36.i.2240.3 to i8
  store i8 %conv37.i.2241.3, i8* %scevgep64.2243.2, align 1
  %scevgep43.2248 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4041, i64 0, i64 1, i64 1
  %306 = bitcast i8* %scevgep43.2248 to [5 x [5 x i8]]*
  %scevgep53.2249 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %273, i64 0, i64 0, i64 1
  %307 = bitcast i8* %scevgep53.2249 to [5 x [5 x i8]]*
  %scevgep57.2250 = getelementptr i8, i8* %scevgep55, i64 1
  %scevgep62.2251 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep5960, i64 0, i64 1, i64 1
  %308 = bitcast i8* %scevgep62.2251 to [5 x [5 x i8]]*
  %arrayidx25.i.1.2 = getelementptr inbounds i8, i8* %x, i64 1
  %arrayidx33.i.1.2 = getelementptr inbounds i8, i8* %arraydecay7.2, i64 1
  %call16.i.1.2 = call zeroext i8 (...) @rand() #3
  %scevgep46.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %306, i64 0, i64 0, i64 0
  store i8 %call16.i.1.2, i8* %scevgep46.1.2, align 1
  %scevgep47.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %306, i64 0, i64 0, i64 0
  %309 = load i8, i8* %scevgep47.1.2, align 1
  %conv23.i.1.2 = zext i8 %309 to i32
  %310 = load i8, i8* %arrayidx25.i.1.2, align 1
  %scevgep54.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %307, i64 0, i64 0, i64 0
  %311 = load i8, i8* %scevgep54.1.2, align 1
  %call28.i.1.2 = call zeroext i8 @mult(i8 zeroext %310, i8 zeroext %311) #3
  %conv29.i.1.2 = zext i8 %call28.i.1.2 to i32
  %xor.i.1.2 = xor i32 %conv23.i.1.2, %conv29.i.1.2
  %312 = load i8, i8* %scevgep57.2250, align 1
  %313 = load i8, i8* %arrayidx33.i.1.2, align 1
  %call34.i.1.2 = call zeroext i8 @mult(i8 zeroext %312, i8 zeroext %313) #3
  %conv35.i.1.2 = zext i8 %call34.i.1.2 to i32
  %xor36.i.1.2 = xor i32 %xor.i.1.2, %conv35.i.1.2
  %conv37.i.1.2 = trunc i32 %xor36.i.1.2 to i8
  store i8 %conv37.i.1.2, i8* %scevgep62.2251, align 1
  %scevgep64.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %308, i64 0, i64 1, i64 0
  %314 = bitcast i8* %scevgep64.1.2 to [5 x [5 x i8]]*
  %call16.i.1.2.1 = call zeroext i8 (...) @rand() #3
  %scevgep46.1.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %306, i64 0, i64 0, i64 1
  store i8 %call16.i.1.2.1, i8* %scevgep46.1.2.1, align 1
  %scevgep47.1.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %306, i64 0, i64 0, i64 1
  %315 = load i8, i8* %scevgep47.1.2.1, align 1
  %conv23.i.1.2.1 = zext i8 %315 to i32
  %316 = load i8, i8* %arrayidx25.i.1.2, align 1
  %scevgep54.1.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %307, i64 0, i64 0, i64 1
  %317 = load i8, i8* %scevgep54.1.2.1, align 1
  %call28.i.1.2.1 = call zeroext i8 @mult(i8 zeroext %316, i8 zeroext %317) #3
  %conv29.i.1.2.1 = zext i8 %call28.i.1.2.1 to i32
  %xor.i.1.2.1 = xor i32 %conv23.i.1.2.1, %conv29.i.1.2.1
  %scevgep58.1.2.1 = getelementptr i8, i8* %scevgep57.2250, i64 1
  %318 = load i8, i8* %scevgep58.1.2.1, align 1
  %319 = load i8, i8* %arrayidx33.i.1.2, align 1
  %call34.i.1.2.1 = call zeroext i8 @mult(i8 zeroext %318, i8 zeroext %319) #3
  %conv35.i.1.2.1 = zext i8 %call34.i.1.2.1 to i32
  %xor36.i.1.2.1 = xor i32 %xor.i.1.2.1, %conv35.i.1.2.1
  %conv37.i.1.2.1 = trunc i32 %xor36.i.1.2.1 to i8
  store i8 %conv37.i.1.2.1, i8* %scevgep64.1.2, align 1
  %scevgep64.1.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %314, i64 0, i64 1, i64 0
  %call16.i.1.2.2 = call zeroext i8 (...) @rand() #3
  %scevgep46.1.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %306, i64 0, i64 0, i64 2
  store i8 %call16.i.1.2.2, i8* %scevgep46.1.2.2, align 1
  %scevgep47.1.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %306, i64 0, i64 0, i64 2
  %320 = load i8, i8* %scevgep47.1.2.2, align 1
  %conv23.i.1.2.2 = zext i8 %320 to i32
  %321 = load i8, i8* %arrayidx25.i.1.2, align 1
  %scevgep54.1.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %307, i64 0, i64 0, i64 2
  %322 = load i8, i8* %scevgep54.1.2.2, align 1
  %call28.i.1.2.2 = call zeroext i8 @mult(i8 zeroext %321, i8 zeroext %322) #3
  %conv29.i.1.2.2 = zext i8 %call28.i.1.2.2 to i32
  %xor.i.1.2.2 = xor i32 %conv23.i.1.2.2, %conv29.i.1.2.2
  %scevgep58.1.2.2 = getelementptr i8, i8* %scevgep57.2250, i64 2
  %323 = load i8, i8* %scevgep58.1.2.2, align 1
  %324 = load i8, i8* %arrayidx33.i.1.2, align 1
  %call34.i.1.2.2 = call zeroext i8 @mult(i8 zeroext %323, i8 zeroext %324) #3
  %conv35.i.1.2.2 = zext i8 %call34.i.1.2.2 to i32
  %xor36.i.1.2.2 = xor i32 %xor.i.1.2.2, %conv35.i.1.2.2
  %conv37.i.1.2.2 = trunc i32 %xor36.i.1.2.2 to i8
  store i8 %conv37.i.1.2.2, i8* %scevgep64.1.2.1, align 1
  %scevgep43.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %306, i64 0, i64 1, i64 1
  %325 = bitcast i8* %scevgep43.1.2 to [5 x [5 x i8]]*
  %scevgep53.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %307, i64 0, i64 0, i64 1
  %326 = bitcast i8* %scevgep53.1.2 to [5 x [5 x i8]]*
  %scevgep57.1.2 = getelementptr i8, i8* %scevgep57.2250, i64 1
  %scevgep62.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %308, i64 0, i64 1, i64 1
  %327 = bitcast i8* %scevgep62.1.2 to [5 x [5 x i8]]*
  %arrayidx25.i.2.2 = getelementptr inbounds i8, i8* %x, i64 2
  %arrayidx33.i.2.2 = getelementptr inbounds i8, i8* %arraydecay7.2, i64 2
  %call16.i.2.2 = call zeroext i8 (...) @rand() #3
  %scevgep46.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %325, i64 0, i64 0, i64 0
  store i8 %call16.i.2.2, i8* %scevgep46.2.2, align 1
  %scevgep47.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %325, i64 0, i64 0, i64 0
  %328 = load i8, i8* %scevgep47.2.2, align 1
  %conv23.i.2.2 = zext i8 %328 to i32
  %329 = load i8, i8* %arrayidx25.i.2.2, align 1
  %scevgep54.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %326, i64 0, i64 0, i64 0
  %330 = load i8, i8* %scevgep54.2.2, align 1
  %call28.i.2.2 = call zeroext i8 @mult(i8 zeroext %329, i8 zeroext %330) #3
  %conv29.i.2.2 = zext i8 %call28.i.2.2 to i32
  %xor.i.2.2 = xor i32 %conv23.i.2.2, %conv29.i.2.2
  %331 = load i8, i8* %scevgep57.1.2, align 1
  %332 = load i8, i8* %arrayidx33.i.2.2, align 1
  %call34.i.2.2 = call zeroext i8 @mult(i8 zeroext %331, i8 zeroext %332) #3
  %conv35.i.2.2 = zext i8 %call34.i.2.2 to i32
  %xor36.i.2.2 = xor i32 %xor.i.2.2, %conv35.i.2.2
  %conv37.i.2.2 = trunc i32 %xor36.i.2.2 to i8
  store i8 %conv37.i.2.2, i8* %scevgep62.1.2, align 1
  %scevgep64.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %327, i64 0, i64 1, i64 0
  %call16.i.2.2.1 = call zeroext i8 (...) @rand() #3
  %scevgep46.2.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %325, i64 0, i64 0, i64 1
  store i8 %call16.i.2.2.1, i8* %scevgep46.2.2.1, align 1
  %scevgep47.2.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %325, i64 0, i64 0, i64 1
  %333 = load i8, i8* %scevgep47.2.2.1, align 1
  %conv23.i.2.2.1 = zext i8 %333 to i32
  %334 = load i8, i8* %arrayidx25.i.2.2, align 1
  %scevgep54.2.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %326, i64 0, i64 0, i64 1
  %335 = load i8, i8* %scevgep54.2.2.1, align 1
  %call28.i.2.2.1 = call zeroext i8 @mult(i8 zeroext %334, i8 zeroext %335) #3
  %conv29.i.2.2.1 = zext i8 %call28.i.2.2.1 to i32
  %xor.i.2.2.1 = xor i32 %conv23.i.2.2.1, %conv29.i.2.2.1
  %scevgep58.2.2.1 = getelementptr i8, i8* %scevgep57.1.2, i64 1
  %336 = load i8, i8* %scevgep58.2.2.1, align 1
  %337 = load i8, i8* %arrayidx33.i.2.2, align 1
  %call34.i.2.2.1 = call zeroext i8 @mult(i8 zeroext %336, i8 zeroext %337) #3
  %conv35.i.2.2.1 = zext i8 %call34.i.2.2.1 to i32
  %xor36.i.2.2.1 = xor i32 %xor.i.2.2.1, %conv35.i.2.2.1
  %conv37.i.2.2.1 = trunc i32 %xor36.i.2.2.1 to i8
  store i8 %conv37.i.2.2.1, i8* %scevgep64.2.2, align 1
  %scevgep43.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %325, i64 0, i64 1, i64 1
  %338 = bitcast i8* %scevgep43.2.2 to [5 x [5 x i8]]*
  %scevgep53.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %326, i64 0, i64 0, i64 1
  %339 = bitcast i8* %scevgep53.2.2 to [5 x [5 x i8]]*
  %scevgep57.2.2 = getelementptr i8, i8* %scevgep57.1.2, i64 1
  %scevgep62.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %327, i64 0, i64 1, i64 1
  %arrayidx25.i.3.2 = getelementptr inbounds i8, i8* %x, i64 3
  %arrayidx33.i.3.2 = getelementptr inbounds i8, i8* %arraydecay7.2, i64 3
  %call16.i.3.2 = call zeroext i8 (...) @rand() #3
  %scevgep46.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %338, i64 0, i64 0, i64 0
  store i8 %call16.i.3.2, i8* %scevgep46.3.2, align 1
  %scevgep47.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %338, i64 0, i64 0, i64 0
  %340 = load i8, i8* %scevgep47.3.2, align 1
  %conv23.i.3.2 = zext i8 %340 to i32
  %341 = load i8, i8* %arrayidx25.i.3.2, align 1
  %scevgep54.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %339, i64 0, i64 0, i64 0
  %342 = load i8, i8* %scevgep54.3.2, align 1
  %call28.i.3.2 = call zeroext i8 @mult(i8 zeroext %341, i8 zeroext %342) #3
  %conv29.i.3.2 = zext i8 %call28.i.3.2 to i32
  %xor.i.3.2 = xor i32 %conv23.i.3.2, %conv29.i.3.2
  %343 = load i8, i8* %scevgep57.2.2, align 1
  %344 = load i8, i8* %arrayidx33.i.3.2, align 1
  %call34.i.3.2 = call zeroext i8 @mult(i8 zeroext %343, i8 zeroext %344) #3
  %conv35.i.3.2 = zext i8 %call34.i.3.2 to i32
  %xor36.i.3.2 = xor i32 %xor.i.3.2, %conv35.i.3.2
  %conv37.i.3.2 = trunc i32 %xor36.i.3.2 to i8
  store i8 %conv37.i.3.2, i8* %scevgep62.2.2, align 1
  %345 = load i8, i8* %x, align 1
  %346 = load i8, i8* %arraydecay7.2, align 1
  %call54.i.2253 = call zeroext i8 @mult(i8 zeroext %345, i8 zeroext %346) #3
  store i8 %call54.i.2253, i8* %arraydecay10.2, align 1
  %scevgep77.1.2262 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %347 = load i8, i8* %scevgep77.1.2262, align 1
  %conv68.i.1.2263 = zext i8 %347 to i32
  %348 = load i8, i8* %arraydecay10.2, align 1
  %conv71.i.1.2264 = zext i8 %348 to i32
  %xor72.i.1.2265 = xor i32 %conv71.i.1.2264, %conv68.i.1.2263
  %conv73.i.1.2266 = trunc i32 %xor72.i.1.2265 to i8
  store i8 %conv73.i.1.2266, i8* %arraydecay10.2, align 1
  %scevgep77.2.2269 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 2
  %349 = load i8, i8* %scevgep77.2.2269, align 1
  %conv68.i.2.2270 = zext i8 %349 to i32
  %350 = load i8, i8* %arraydecay10.2, align 1
  %conv71.i.2.2271 = zext i8 %350 to i32
  %xor72.i.2.2272 = xor i32 %conv71.i.2.2271, %conv68.i.2.2270
  %conv73.i.2.2273 = trunc i32 %xor72.i.2.2272 to i8
  store i8 %conv73.i.2.2273, i8* %arraydecay10.2, align 1
  %scevgep77.3.2276 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 3
  %351 = load i8, i8* %scevgep77.3.2276, align 1
  %conv68.i.3.2277 = zext i8 %351 to i32
  %352 = load i8, i8* %arraydecay10.2, align 1
  %conv71.i.3.2278 = zext i8 %352 to i32
  %xor72.i.3.2279 = xor i32 %conv71.i.3.2278, %conv68.i.3.2277
  %conv73.i.3.2280 = trunc i32 %xor72.i.3.2279 to i8
  store i8 %conv73.i.3.2280, i8* %arraydecay10.2, align 1
  %scevgep77.4.2283 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 4
  %353 = load i8, i8* %scevgep77.4.2283, align 1
  %conv68.i.4.2284 = zext i8 %353 to i32
  %354 = load i8, i8* %arraydecay10.2, align 1
  %conv71.i.4.2285 = zext i8 %354 to i32
  %xor72.i.4.2286 = xor i32 %conv71.i.4.2285, %conv68.i.4.2284
  %conv73.i.4.2287 = trunc i32 %xor72.i.4.2286 to i8
  store i8 %conv73.i.4.2287, i8* %arraydecay10.2, align 1
  %scevgep76.2289 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 1, i64 0
  %355 = bitcast i8* %scevgep76.2289 to [5 x [5 x i8]]*
  %arrayidx51.i.1.2 = getelementptr inbounds i8, i8* %x, i64 1
  %356 = load i8, i8* %arrayidx51.i.1.2, align 1
  %arrayidx53.i.1.2 = getelementptr inbounds i8, i8* %arraydecay7.2, i64 1
  %357 = load i8, i8* %arrayidx53.i.1.2, align 1
  %call54.i.1.2 = call zeroext i8 @mult(i8 zeroext %356, i8 zeroext %357) #3
  %arrayidx56.i.1.2 = getelementptr inbounds i8, i8* %arraydecay10.2, i64 1
  store i8 %call54.i.1.2, i8* %arrayidx56.i.1.2, align 1
  %arrayidx70.i.1.2 = getelementptr inbounds i8, i8* %arraydecay10.2, i64 1
  %scevgep77.196.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %355, i64 0, i64 0, i64 0
  %358 = load i8, i8* %scevgep77.196.2, align 1
  %conv68.i.197.2 = zext i8 %358 to i32
  %359 = load i8, i8* %arrayidx70.i.1.2, align 1
  %conv71.i.198.2 = zext i8 %359 to i32
  %xor72.i.199.2 = xor i32 %conv71.i.198.2, %conv68.i.197.2
  %conv73.i.1100.2 = trunc i32 %xor72.i.199.2 to i8
  store i8 %conv73.i.1100.2, i8* %arrayidx70.i.1.2, align 1
  %scevgep77.2.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %355, i64 0, i64 0, i64 2
  %360 = load i8, i8* %scevgep77.2.1.2, align 1
  %conv68.i.2.1.2 = zext i8 %360 to i32
  %361 = load i8, i8* %arrayidx70.i.1.2, align 1
  %conv71.i.2.1.2 = zext i8 %361 to i32
  %xor72.i.2.1.2 = xor i32 %conv71.i.2.1.2, %conv68.i.2.1.2
  %conv73.i.2.1.2 = trunc i32 %xor72.i.2.1.2 to i8
  store i8 %conv73.i.2.1.2, i8* %arrayidx70.i.1.2, align 1
  %scevgep77.3.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %355, i64 0, i64 0, i64 3
  %362 = load i8, i8* %scevgep77.3.1.2, align 1
  %conv68.i.3.1.2 = zext i8 %362 to i32
  %363 = load i8, i8* %arrayidx70.i.1.2, align 1
  %conv71.i.3.1.2 = zext i8 %363 to i32
  %xor72.i.3.1.2 = xor i32 %conv71.i.3.1.2, %conv68.i.3.1.2
  %conv73.i.3.1.2 = trunc i32 %xor72.i.3.1.2 to i8
  store i8 %conv73.i.3.1.2, i8* %arrayidx70.i.1.2, align 1
  %scevgep77.4.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %355, i64 0, i64 0, i64 4
  %364 = load i8, i8* %scevgep77.4.1.2, align 1
  %conv68.i.4.1.2 = zext i8 %364 to i32
  %365 = load i8, i8* %arrayidx70.i.1.2, align 1
  %conv71.i.4.1.2 = zext i8 %365 to i32
  %xor72.i.4.1.2 = xor i32 %conv71.i.4.1.2, %conv68.i.4.1.2
  %conv73.i.4.1.2 = trunc i32 %xor72.i.4.1.2 to i8
  store i8 %conv73.i.4.1.2, i8* %arrayidx70.i.1.2, align 1
  %scevgep76.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %355, i64 0, i64 1, i64 0
  %366 = bitcast i8* %scevgep76.1.2 to [5 x [5 x i8]]*
  %arrayidx51.i.2.2 = getelementptr inbounds i8, i8* %x, i64 2
  %367 = load i8, i8* %arrayidx51.i.2.2, align 1
  %arrayidx53.i.2.2 = getelementptr inbounds i8, i8* %arraydecay7.2, i64 2
  %368 = load i8, i8* %arrayidx53.i.2.2, align 1
  %call54.i.2.2 = call zeroext i8 @mult(i8 zeroext %367, i8 zeroext %368) #3
  %arrayidx56.i.2.2 = getelementptr inbounds i8, i8* %arraydecay10.2, i64 2
  store i8 %call54.i.2.2, i8* %arrayidx56.i.2.2, align 1
  %arrayidx70.i.2.2 = getelementptr inbounds i8, i8* %arraydecay10.2, i64 2
  %scevgep77.2105.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %366, i64 0, i64 0, i64 0
  %369 = load i8, i8* %scevgep77.2105.2, align 1
  %conv68.i.2106.2 = zext i8 %369 to i32
  %370 = load i8, i8* %arrayidx70.i.2.2, align 1
  %conv71.i.2107.2 = zext i8 %370 to i32
  %xor72.i.2108.2 = xor i32 %conv71.i.2107.2, %conv68.i.2106.2
  %conv73.i.2109.2 = trunc i32 %xor72.i.2108.2 to i8
  store i8 %conv73.i.2109.2, i8* %arrayidx70.i.2.2, align 1
  %scevgep77.1.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %366, i64 0, i64 0, i64 1
  %371 = load i8, i8* %scevgep77.1.2.2, align 1
  %conv68.i.1.2.2 = zext i8 %371 to i32
  %372 = load i8, i8* %arrayidx70.i.2.2, align 1
  %conv71.i.1.2.2 = zext i8 %372 to i32
  %xor72.i.1.2.2 = xor i32 %conv71.i.1.2.2, %conv68.i.1.2.2
  %conv73.i.1.2.2 = trunc i32 %xor72.i.1.2.2 to i8
  store i8 %conv73.i.1.2.2, i8* %arrayidx70.i.2.2, align 1
  %scevgep77.3.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %366, i64 0, i64 0, i64 3
  %373 = load i8, i8* %scevgep77.3.2.2, align 1
  %conv68.i.3.2.2 = zext i8 %373 to i32
  %374 = load i8, i8* %arrayidx70.i.2.2, align 1
  %conv71.i.3.2.2 = zext i8 %374 to i32
  %xor72.i.3.2.2 = xor i32 %conv71.i.3.2.2, %conv68.i.3.2.2
  %conv73.i.3.2.2 = trunc i32 %xor72.i.3.2.2 to i8
  store i8 %conv73.i.3.2.2, i8* %arrayidx70.i.2.2, align 1
  %scevgep77.4.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %366, i64 0, i64 0, i64 4
  %375 = load i8, i8* %scevgep77.4.2.2, align 1
  %conv68.i.4.2.2 = zext i8 %375 to i32
  %376 = load i8, i8* %arrayidx70.i.2.2, align 1
  %conv71.i.4.2.2 = zext i8 %376 to i32
  %xor72.i.4.2.2 = xor i32 %conv71.i.4.2.2, %conv68.i.4.2.2
  %conv73.i.4.2.2 = trunc i32 %xor72.i.4.2.2 to i8
  store i8 %conv73.i.4.2.2, i8* %arrayidx70.i.2.2, align 1
  %scevgep76.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %366, i64 0, i64 1, i64 0
  %377 = bitcast i8* %scevgep76.2.2 to [5 x [5 x i8]]*
  %arrayidx51.i.3.2 = getelementptr inbounds i8, i8* %x, i64 3
  %378 = load i8, i8* %arrayidx51.i.3.2, align 1
  %arrayidx53.i.3.2 = getelementptr inbounds i8, i8* %arraydecay7.2, i64 3
  %379 = load i8, i8* %arrayidx53.i.3.2, align 1
  %call54.i.3.2 = call zeroext i8 @mult(i8 zeroext %378, i8 zeroext %379) #3
  %arrayidx56.i.3.2 = getelementptr inbounds i8, i8* %arraydecay10.2, i64 3
  store i8 %call54.i.3.2, i8* %arrayidx56.i.3.2, align 1
  %arrayidx70.i.3.2 = getelementptr inbounds i8, i8* %arraydecay10.2, i64 3
  %scevgep77.3114.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %377, i64 0, i64 0, i64 0
  %380 = load i8, i8* %scevgep77.3114.2, align 1
  %conv68.i.3115.2 = zext i8 %380 to i32
  %381 = load i8, i8* %arrayidx70.i.3.2, align 1
  %conv71.i.3116.2 = zext i8 %381 to i32
  %xor72.i.3117.2 = xor i32 %conv71.i.3116.2, %conv68.i.3115.2
  %conv73.i.3118.2 = trunc i32 %xor72.i.3117.2 to i8
  store i8 %conv73.i.3118.2, i8* %arrayidx70.i.3.2, align 1
  %scevgep77.1.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %377, i64 0, i64 0, i64 1
  %382 = load i8, i8* %scevgep77.1.3.2, align 1
  %conv68.i.1.3.2 = zext i8 %382 to i32
  %383 = load i8, i8* %arrayidx70.i.3.2, align 1
  %conv71.i.1.3.2 = zext i8 %383 to i32
  %xor72.i.1.3.2 = xor i32 %conv71.i.1.3.2, %conv68.i.1.3.2
  %conv73.i.1.3.2 = trunc i32 %xor72.i.1.3.2 to i8
  store i8 %conv73.i.1.3.2, i8* %arrayidx70.i.3.2, align 1
  %scevgep77.2.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %377, i64 0, i64 0, i64 2
  %384 = load i8, i8* %scevgep77.2.3.2, align 1
  %conv68.i.2.3.2 = zext i8 %384 to i32
  %385 = load i8, i8* %arrayidx70.i.3.2, align 1
  %conv71.i.2.3.2 = zext i8 %385 to i32
  %xor72.i.2.3.2 = xor i32 %conv71.i.2.3.2, %conv68.i.2.3.2
  %conv73.i.2.3.2 = trunc i32 %xor72.i.2.3.2 to i8
  store i8 %conv73.i.2.3.2, i8* %arrayidx70.i.3.2, align 1
  %scevgep77.4.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %377, i64 0, i64 0, i64 4
  %386 = load i8, i8* %scevgep77.4.3.2, align 1
  %conv68.i.4.3.2 = zext i8 %386 to i32
  %387 = load i8, i8* %arrayidx70.i.3.2, align 1
  %conv71.i.4.3.2 = zext i8 %387 to i32
  %xor72.i.4.3.2 = xor i32 %conv71.i.4.3.2, %conv68.i.4.3.2
  %conv73.i.4.3.2 = trunc i32 %xor72.i.4.3.2 to i8
  store i8 %conv73.i.4.3.2, i8* %arrayidx70.i.3.2, align 1
  %scevgep76.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %377, i64 0, i64 1, i64 0
  %388 = bitcast i8* %scevgep76.3.2 to [5 x [5 x i8]]*
  %arrayidx51.i.4.2 = getelementptr inbounds i8, i8* %x, i64 4
  %389 = load i8, i8* %arrayidx51.i.4.2, align 1
  %arrayidx53.i.4.2 = getelementptr inbounds i8, i8* %arraydecay7.2, i64 4
  %390 = load i8, i8* %arrayidx53.i.4.2, align 1
  %call54.i.4.2 = call zeroext i8 @mult(i8 zeroext %389, i8 zeroext %390) #3
  %arrayidx56.i.4.2 = getelementptr inbounds i8, i8* %arraydecay10.2, i64 4
  store i8 %call54.i.4.2, i8* %arrayidx56.i.4.2, align 1
  %arrayidx70.i.4.2 = getelementptr inbounds i8, i8* %arraydecay10.2, i64 4
  %scevgep77.4123.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %388, i64 0, i64 0, i64 0
  %391 = load i8, i8* %scevgep77.4123.2, align 1
  %conv68.i.4124.2 = zext i8 %391 to i32
  %392 = load i8, i8* %arrayidx70.i.4.2, align 1
  %conv71.i.4125.2 = zext i8 %392 to i32
  %xor72.i.4126.2 = xor i32 %conv71.i.4125.2, %conv68.i.4124.2
  %conv73.i.4127.2 = trunc i32 %xor72.i.4126.2 to i8
  store i8 %conv73.i.4127.2, i8* %arrayidx70.i.4.2, align 1
  %scevgep77.1.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %388, i64 0, i64 0, i64 1
  %393 = load i8, i8* %scevgep77.1.4.2, align 1
  %conv68.i.1.4.2 = zext i8 %393 to i32
  %394 = load i8, i8* %arrayidx70.i.4.2, align 1
  %conv71.i.1.4.2 = zext i8 %394 to i32
  %xor72.i.1.4.2 = xor i32 %conv71.i.1.4.2, %conv68.i.1.4.2
  %conv73.i.1.4.2 = trunc i32 %xor72.i.1.4.2 to i8
  store i8 %conv73.i.1.4.2, i8* %arrayidx70.i.4.2, align 1
  %scevgep77.2.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %388, i64 0, i64 0, i64 2
  %395 = load i8, i8* %scevgep77.2.4.2, align 1
  %conv68.i.2.4.2 = zext i8 %395 to i32
  %396 = load i8, i8* %arrayidx70.i.4.2, align 1
  %conv71.i.2.4.2 = zext i8 %396 to i32
  %xor72.i.2.4.2 = xor i32 %conv71.i.2.4.2, %conv68.i.2.4.2
  %conv73.i.2.4.2 = trunc i32 %xor72.i.2.4.2 to i8
  store i8 %conv73.i.2.4.2, i8* %arrayidx70.i.4.2, align 1
  %scevgep77.3.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %388, i64 0, i64 0, i64 3
  %397 = load i8, i8* %scevgep77.3.4.2, align 1
  %conv68.i.3.4.2 = zext i8 %397 to i32
  %398 = load i8, i8* %arrayidx70.i.4.2, align 1
  %conv71.i.3.4.2 = zext i8 %398 to i32
  %xor72.i.3.4.2 = xor i32 %conv71.i.3.4.2, %conv68.i.3.4.2
  %conv73.i.3.4.2 = trunc i32 %xor72.i.3.4.2 to i8
  store i8 %conv73.i.3.4.2, i8* %arrayidx70.i.4.2, align 1
  %call80.i.2 = call zeroext i8 @mult(i8 zeroext %call.i22.2, i8 zeroext %call1.i.2) #3
  %conv81.i.2 = zext i8 %call80.i.2 to i32
  %scevgep82.2291 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %272, i64 0, i64 0, i64 0
  %scevgep83.2292 = getelementptr i8, i8* %scevgep82.2291, i64 5
  %399 = load i8, i8* %scevgep83.2292, align 1
  %conv.i.i113.i.2294 = zext i8 %399 to i32
  %conv1.i.i114.i.2295 = zext i8 %conv2.i.i116.i.4.1 to i32
  %xor.i.i115.i.2296 = xor i32 %conv1.i.i114.i.2295, %conv.i.i113.i.2294
  %conv2.i.i116.i.2297 = trunc i32 %xor.i.i115.i.2296 to i8
  %scevgep82.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %272, i64 0, i64 0, i64 1
  %scevgep83.1.2 = getelementptr i8, i8* %scevgep82.1.2, i64 5
  %400 = load i8, i8* %scevgep83.1.2, align 1
  %conv.i.i113.i.1.2 = zext i8 %400 to i32
  %conv1.i.i114.i.1.2 = zext i8 %conv2.i.i116.i.2297 to i32
  %xor.i.i115.i.1.2 = xor i32 %conv1.i.i114.i.1.2, %conv.i.i113.i.1.2
  %conv2.i.i116.i.1.2 = trunc i32 %xor.i.i115.i.1.2 to i8
  %scevgep82.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %272, i64 0, i64 0, i64 2
  %scevgep83.2.2 = getelementptr i8, i8* %scevgep82.2.2, i64 5
  %401 = load i8, i8* %scevgep83.2.2, align 1
  %conv.i.i113.i.2.2 = zext i8 %401 to i32
  %conv1.i.i114.i.2.2 = zext i8 %conv2.i.i116.i.1.2 to i32
  %xor.i.i115.i.2.2 = xor i32 %conv1.i.i114.i.2.2, %conv.i.i113.i.2.2
  %conv2.i.i116.i.2.2 = trunc i32 %xor.i.i115.i.2.2 to i8
  %scevgep82.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %272, i64 0, i64 0, i64 3
  %scevgep83.3.2 = getelementptr i8, i8* %scevgep82.3.2, i64 5
  %402 = load i8, i8* %scevgep83.3.2, align 1
  %conv.i.i113.i.3.2 = zext i8 %402 to i32
  %conv1.i.i114.i.3.2 = zext i8 %conv2.i.i116.i.2.2 to i32
  %xor.i.i115.i.3.2 = xor i32 %conv1.i.i114.i.3.2, %conv.i.i113.i.3.2
  %conv2.i.i116.i.3.2 = trunc i32 %xor.i.i115.i.3.2 to i8
  %scevgep82.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %272, i64 0, i64 0, i64 4
  %scevgep83.4.2 = getelementptr i8, i8* %scevgep82.4.2, i64 5
  %403 = load i8, i8* %scevgep83.4.2, align 1
  %conv.i.i113.i.4.2 = zext i8 %403 to i32
  %conv1.i.i114.i.4.2 = zext i8 %conv2.i.i116.i.3.2 to i32
  %xor.i.i115.i.4.2 = xor i32 %conv1.i.i114.i.4.2, %conv.i.i113.i.4.2
  %conv2.i.i116.i.4.2 = trunc i32 %xor.i.i115.i.4.2 to i8
  %conv83.i.2 = zext i8 %conv2.i.i116.i.4.2 to i32
  %cmp84.i.2 = icmp eq i32 %conv81.i.2, %conv83.i.2
  call void @assert(i1 zeroext %cmp84.i.2) #3
  %scevgep35.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %272, i64 0, i64 1, i64 0
  %404 = bitcast i8* %scevgep35.2 to [5 x [5 x i8]]*
  %scevgep51.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %273, i64 0, i64 1, i64 0
  %405 = bitcast i8* %scevgep51.2 to [5 x [5 x i8]]*
  %arrayidx6.3 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 3
  %arraydecay7.3 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx6.3, i64 0, i64 0
  %arrayidx9.3 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 4
  %arraydecay10.3 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx9.3, i64 0, i64 0
  %call.i22.3 = call zeroext i8 (...) @rand() #3
  %call1.i.3 = call zeroext i8 (...) @rand() #3
  %conv.i.3 = zext i8 %call.i22.3 to i32
  %406 = load i8, i8* %x, align 1
  %conv.i.i.i.3299 = zext i8 %406 to i32
  %conv1.i.i.i.3300 = zext i8 %conv2.i.i.i.4.2 to i32
  %xor.i.i.i.3301 = xor i32 %conv1.i.i.i.3300, %conv.i.i.i.3299
  %conv2.i.i.i.3302 = trunc i32 %xor.i.i.i.3301 to i8
  %scevgep32.1.3 = getelementptr i8, i8* %x, i64 1
  %407 = load i8, i8* %scevgep32.1.3, align 1
  %conv.i.i.i.1.3 = zext i8 %407 to i32
  %conv1.i.i.i.1.3 = zext i8 %conv2.i.i.i.3302 to i32
  %xor.i.i.i.1.3 = xor i32 %conv1.i.i.i.1.3, %conv.i.i.i.1.3
  %conv2.i.i.i.1.3 = trunc i32 %xor.i.i.i.1.3 to i8
  %scevgep32.2.3 = getelementptr i8, i8* %x, i64 2
  %408 = load i8, i8* %scevgep32.2.3, align 1
  %conv.i.i.i.2.3 = zext i8 %408 to i32
  %conv1.i.i.i.2.3 = zext i8 %conv2.i.i.i.1.3 to i32
  %xor.i.i.i.2.3 = xor i32 %conv1.i.i.i.2.3, %conv.i.i.i.2.3
  %conv2.i.i.i.2.3 = trunc i32 %xor.i.i.i.2.3 to i8
  %scevgep32.3.3 = getelementptr i8, i8* %x, i64 3
  %409 = load i8, i8* %scevgep32.3.3, align 1
  %conv.i.i.i.3.3 = zext i8 %409 to i32
  %conv1.i.i.i.3.3 = zext i8 %conv2.i.i.i.2.3 to i32
  %xor.i.i.i.3.3 = xor i32 %conv1.i.i.i.3.3, %conv.i.i.i.3.3
  %conv2.i.i.i.3.3 = trunc i32 %xor.i.i.i.3.3 to i8
  %scevgep32.4.3 = getelementptr i8, i8* %x, i64 4
  %410 = load i8, i8* %scevgep32.4.3, align 1
  %conv.i.i.i.4.3 = zext i8 %410 to i32
  %conv1.i.i.i.4.3 = zext i8 %conv2.i.i.i.3.3 to i32
  %xor.i.i.i.4.3 = xor i32 %conv1.i.i.i.4.3, %conv.i.i.i.4.3
  %conv2.i.i.i.4.3 = trunc i32 %xor.i.i.i.4.3 to i8
  %conv3.i.3 = zext i8 %conv2.i.i.i.4.3 to i32
  %cmp.i23.3 = icmp eq i32 %conv.i.3, %conv3.i.3
  call void @assume(i1 zeroext %cmp.i23.3) #3
  %conv5.i.3 = zext i8 %call1.i.3 to i32
  %scevgep38.3303 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %404, i64 0, i64 0, i64 0
  %411 = load i8, i8* %scevgep38.3303, align 1
  %conv.i.i96.i.3305 = zext i8 %411 to i32
  %conv1.i.i97.i.3306 = zext i8 %conv2.i.i99.i.4.2 to i32
  %xor.i.i98.i.3307 = xor i32 %conv1.i.i97.i.3306, %conv.i.i96.i.3305
  %conv2.i.i99.i.3308 = trunc i32 %xor.i.i98.i.3307 to i8
  %scevgep38.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %404, i64 0, i64 0, i64 1
  %412 = load i8, i8* %scevgep38.1.3, align 1
  %conv.i.i96.i.1.3 = zext i8 %412 to i32
  %conv1.i.i97.i.1.3 = zext i8 %conv2.i.i99.i.3308 to i32
  %xor.i.i98.i.1.3 = xor i32 %conv1.i.i97.i.1.3, %conv.i.i96.i.1.3
  %conv2.i.i99.i.1.3 = trunc i32 %xor.i.i98.i.1.3 to i8
  %scevgep38.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %404, i64 0, i64 0, i64 2
  %413 = load i8, i8* %scevgep38.2.3, align 1
  %conv.i.i96.i.2.3 = zext i8 %413 to i32
  %conv1.i.i97.i.2.3 = zext i8 %conv2.i.i99.i.1.3 to i32
  %xor.i.i98.i.2.3 = xor i32 %conv1.i.i97.i.2.3, %conv.i.i96.i.2.3
  %conv2.i.i99.i.2.3 = trunc i32 %xor.i.i98.i.2.3 to i8
  %scevgep38.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %404, i64 0, i64 0, i64 3
  %414 = load i8, i8* %scevgep38.3.3, align 1
  %conv.i.i96.i.3.3 = zext i8 %414 to i32
  %conv1.i.i97.i.3.3 = zext i8 %conv2.i.i99.i.2.3 to i32
  %xor.i.i98.i.3.3 = xor i32 %conv1.i.i97.i.3.3, %conv.i.i96.i.3.3
  %conv2.i.i99.i.3.3 = trunc i32 %xor.i.i98.i.3.3 to i8
  %scevgep38.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %404, i64 0, i64 0, i64 4
  %415 = load i8, i8* %scevgep38.4.3, align 1
  %conv.i.i96.i.4.3 = zext i8 %415 to i32
  %conv1.i.i97.i.4.3 = zext i8 %conv2.i.i99.i.3.3 to i32
  %xor.i.i98.i.4.3 = xor i32 %conv1.i.i97.i.4.3, %conv.i.i96.i.4.3
  %conv2.i.i99.i.4.3 = trunc i32 %xor.i.i98.i.4.3 to i8
  %conv7.i.3 = zext i8 %conv2.i.i99.i.4.3 to i32
  %cmp8.i.3 = icmp eq i32 %conv5.i.3, %conv7.i.3
  call void @assume(i1 zeroext %cmp8.i.3) #3
  %call16.i.3313 = call zeroext i8 (...) @rand() #3
  %scevgep46.3314 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4041, i64 0, i64 0, i64 0
  store i8 %call16.i.3313, i8* %scevgep46.3314, align 1
  %scevgep47.3315 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4041, i64 0, i64 0, i64 0
  %416 = load i8, i8* %scevgep47.3315, align 1
  %conv23.i.3316 = zext i8 %416 to i32
  %417 = load i8, i8* %x, align 1
  %scevgep54.3317 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %405, i64 0, i64 0, i64 0
  %418 = load i8, i8* %scevgep54.3317, align 1
  %call28.i.3318 = call zeroext i8 @mult(i8 zeroext %417, i8 zeroext %418) #3
  %conv29.i.3319 = zext i8 %call28.i.3318 to i32
  %xor.i.3320 = xor i32 %conv23.i.3316, %conv29.i.3319
  %419 = load i8, i8* %scevgep55, align 1
  %420 = load i8, i8* %arraydecay7.3, align 1
  %call34.i.3322 = call zeroext i8 @mult(i8 zeroext %419, i8 zeroext %420) #3
  %conv35.i.3323 = zext i8 %call34.i.3322 to i32
  %xor36.i.3324 = xor i32 %xor.i.3320, %conv35.i.3323
  %conv37.i.3325 = trunc i32 %xor36.i.3324 to i8
  store i8 %conv37.i.3325, i8* %scevgep59, align 1
  %scevgep64.3327 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep5960, i64 0, i64 1, i64 0
  %421 = bitcast i8* %scevgep64.3327 to [5 x [5 x i8]]*
  %call16.i.3313.1 = call zeroext i8 (...) @rand() #3
  %scevgep46.3314.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4041, i64 0, i64 0, i64 1
  store i8 %call16.i.3313.1, i8* %scevgep46.3314.1, align 1
  %scevgep47.3315.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4041, i64 0, i64 0, i64 1
  %422 = load i8, i8* %scevgep47.3315.1, align 1
  %conv23.i.3316.1 = zext i8 %422 to i32
  %423 = load i8, i8* %x, align 1
  %scevgep54.3317.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %405, i64 0, i64 0, i64 1
  %424 = load i8, i8* %scevgep54.3317.1, align 1
  %call28.i.3318.1 = call zeroext i8 @mult(i8 zeroext %423, i8 zeroext %424) #3
  %conv29.i.3319.1 = zext i8 %call28.i.3318.1 to i32
  %xor.i.3320.1 = xor i32 %conv23.i.3316.1, %conv29.i.3319.1
  %scevgep58.3321.1 = getelementptr i8, i8* %scevgep55, i64 1
  %425 = load i8, i8* %scevgep58.3321.1, align 1
  %426 = load i8, i8* %arraydecay7.3, align 1
  %call34.i.3322.1 = call zeroext i8 @mult(i8 zeroext %425, i8 zeroext %426) #3
  %conv35.i.3323.1 = zext i8 %call34.i.3322.1 to i32
  %xor36.i.3324.1 = xor i32 %xor.i.3320.1, %conv35.i.3323.1
  %conv37.i.3325.1 = trunc i32 %xor36.i.3324.1 to i8
  store i8 %conv37.i.3325.1, i8* %scevgep64.3327, align 1
  %scevgep64.3327.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %421, i64 0, i64 1, i64 0
  %427 = bitcast i8* %scevgep64.3327.1 to [5 x [5 x i8]]*
  %call16.i.3313.2 = call zeroext i8 (...) @rand() #3
  %scevgep46.3314.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4041, i64 0, i64 0, i64 2
  store i8 %call16.i.3313.2, i8* %scevgep46.3314.2, align 1
  %scevgep47.3315.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4041, i64 0, i64 0, i64 2
  %428 = load i8, i8* %scevgep47.3315.2, align 1
  %conv23.i.3316.2 = zext i8 %428 to i32
  %429 = load i8, i8* %x, align 1
  %scevgep54.3317.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %405, i64 0, i64 0, i64 2
  %430 = load i8, i8* %scevgep54.3317.2, align 1
  %call28.i.3318.2 = call zeroext i8 @mult(i8 zeroext %429, i8 zeroext %430) #3
  %conv29.i.3319.2 = zext i8 %call28.i.3318.2 to i32
  %xor.i.3320.2 = xor i32 %conv23.i.3316.2, %conv29.i.3319.2
  %scevgep58.3321.2 = getelementptr i8, i8* %scevgep55, i64 2
  %431 = load i8, i8* %scevgep58.3321.2, align 1
  %432 = load i8, i8* %arraydecay7.3, align 1
  %call34.i.3322.2 = call zeroext i8 @mult(i8 zeroext %431, i8 zeroext %432) #3
  %conv35.i.3323.2 = zext i8 %call34.i.3322.2 to i32
  %xor36.i.3324.2 = xor i32 %xor.i.3320.2, %conv35.i.3323.2
  %conv37.i.3325.2 = trunc i32 %xor36.i.3324.2 to i8
  store i8 %conv37.i.3325.2, i8* %scevgep64.3327.1, align 1
  %scevgep64.3327.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %427, i64 0, i64 1, i64 0
  %call16.i.3313.3 = call zeroext i8 (...) @rand() #3
  %scevgep46.3314.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4041, i64 0, i64 0, i64 3
  store i8 %call16.i.3313.3, i8* %scevgep46.3314.3, align 1
  %scevgep47.3315.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4041, i64 0, i64 0, i64 3
  %433 = load i8, i8* %scevgep47.3315.3, align 1
  %conv23.i.3316.3 = zext i8 %433 to i32
  %434 = load i8, i8* %x, align 1
  %scevgep54.3317.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %405, i64 0, i64 0, i64 3
  %435 = load i8, i8* %scevgep54.3317.3, align 1
  %call28.i.3318.3 = call zeroext i8 @mult(i8 zeroext %434, i8 zeroext %435) #3
  %conv29.i.3319.3 = zext i8 %call28.i.3318.3 to i32
  %xor.i.3320.3 = xor i32 %conv23.i.3316.3, %conv29.i.3319.3
  %scevgep58.3321.3 = getelementptr i8, i8* %scevgep55, i64 3
  %436 = load i8, i8* %scevgep58.3321.3, align 1
  %437 = load i8, i8* %arraydecay7.3, align 1
  %call34.i.3322.3 = call zeroext i8 @mult(i8 zeroext %436, i8 zeroext %437) #3
  %conv35.i.3323.3 = zext i8 %call34.i.3322.3 to i32
  %xor36.i.3324.3 = xor i32 %xor.i.3320.3, %conv35.i.3323.3
  %conv37.i.3325.3 = trunc i32 %xor36.i.3324.3 to i8
  store i8 %conv37.i.3325.3, i8* %scevgep64.3327.2, align 1
  %scevgep43.3332 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4041, i64 0, i64 1, i64 1
  %438 = bitcast i8* %scevgep43.3332 to [5 x [5 x i8]]*
  %scevgep53.3333 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %405, i64 0, i64 0, i64 1
  %439 = bitcast i8* %scevgep53.3333 to [5 x [5 x i8]]*
  %scevgep57.3334 = getelementptr i8, i8* %scevgep55, i64 1
  %scevgep62.3335 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep5960, i64 0, i64 1, i64 1
  %440 = bitcast i8* %scevgep62.3335 to [5 x [5 x i8]]*
  %arrayidx25.i.1.3 = getelementptr inbounds i8, i8* %x, i64 1
  %arrayidx33.i.1.3 = getelementptr inbounds i8, i8* %arraydecay7.3, i64 1
  %call16.i.1.3 = call zeroext i8 (...) @rand() #3
  %scevgep46.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %438, i64 0, i64 0, i64 0
  store i8 %call16.i.1.3, i8* %scevgep46.1.3, align 1
  %scevgep47.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %438, i64 0, i64 0, i64 0
  %441 = load i8, i8* %scevgep47.1.3, align 1
  %conv23.i.1.3 = zext i8 %441 to i32
  %442 = load i8, i8* %arrayidx25.i.1.3, align 1
  %scevgep54.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %439, i64 0, i64 0, i64 0
  %443 = load i8, i8* %scevgep54.1.3, align 1
  %call28.i.1.3 = call zeroext i8 @mult(i8 zeroext %442, i8 zeroext %443) #3
  %conv29.i.1.3 = zext i8 %call28.i.1.3 to i32
  %xor.i.1.3 = xor i32 %conv23.i.1.3, %conv29.i.1.3
  %444 = load i8, i8* %scevgep57.3334, align 1
  %445 = load i8, i8* %arrayidx33.i.1.3, align 1
  %call34.i.1.3 = call zeroext i8 @mult(i8 zeroext %444, i8 zeroext %445) #3
  %conv35.i.1.3 = zext i8 %call34.i.1.3 to i32
  %xor36.i.1.3 = xor i32 %xor.i.1.3, %conv35.i.1.3
  %conv37.i.1.3 = trunc i32 %xor36.i.1.3 to i8
  store i8 %conv37.i.1.3, i8* %scevgep62.3335, align 1
  %scevgep64.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %440, i64 0, i64 1, i64 0
  %446 = bitcast i8* %scevgep64.1.3 to [5 x [5 x i8]]*
  %call16.i.1.3.1 = call zeroext i8 (...) @rand() #3
  %scevgep46.1.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %438, i64 0, i64 0, i64 1
  store i8 %call16.i.1.3.1, i8* %scevgep46.1.3.1, align 1
  %scevgep47.1.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %438, i64 0, i64 0, i64 1
  %447 = load i8, i8* %scevgep47.1.3.1, align 1
  %conv23.i.1.3.1 = zext i8 %447 to i32
  %448 = load i8, i8* %arrayidx25.i.1.3, align 1
  %scevgep54.1.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %439, i64 0, i64 0, i64 1
  %449 = load i8, i8* %scevgep54.1.3.1, align 1
  %call28.i.1.3.1 = call zeroext i8 @mult(i8 zeroext %448, i8 zeroext %449) #3
  %conv29.i.1.3.1 = zext i8 %call28.i.1.3.1 to i32
  %xor.i.1.3.1 = xor i32 %conv23.i.1.3.1, %conv29.i.1.3.1
  %scevgep58.1.3.1 = getelementptr i8, i8* %scevgep57.3334, i64 1
  %450 = load i8, i8* %scevgep58.1.3.1, align 1
  %451 = load i8, i8* %arrayidx33.i.1.3, align 1
  %call34.i.1.3.1 = call zeroext i8 @mult(i8 zeroext %450, i8 zeroext %451) #3
  %conv35.i.1.3.1 = zext i8 %call34.i.1.3.1 to i32
  %xor36.i.1.3.1 = xor i32 %xor.i.1.3.1, %conv35.i.1.3.1
  %conv37.i.1.3.1 = trunc i32 %xor36.i.1.3.1 to i8
  store i8 %conv37.i.1.3.1, i8* %scevgep64.1.3, align 1
  %scevgep64.1.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %446, i64 0, i64 1, i64 0
  %call16.i.1.3.2 = call zeroext i8 (...) @rand() #3
  %scevgep46.1.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %438, i64 0, i64 0, i64 2
  store i8 %call16.i.1.3.2, i8* %scevgep46.1.3.2, align 1
  %scevgep47.1.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %438, i64 0, i64 0, i64 2
  %452 = load i8, i8* %scevgep47.1.3.2, align 1
  %conv23.i.1.3.2 = zext i8 %452 to i32
  %453 = load i8, i8* %arrayidx25.i.1.3, align 1
  %scevgep54.1.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %439, i64 0, i64 0, i64 2
  %454 = load i8, i8* %scevgep54.1.3.2, align 1
  %call28.i.1.3.2 = call zeroext i8 @mult(i8 zeroext %453, i8 zeroext %454) #3
  %conv29.i.1.3.2 = zext i8 %call28.i.1.3.2 to i32
  %xor.i.1.3.2 = xor i32 %conv23.i.1.3.2, %conv29.i.1.3.2
  %scevgep58.1.3.2 = getelementptr i8, i8* %scevgep57.3334, i64 2
  %455 = load i8, i8* %scevgep58.1.3.2, align 1
  %456 = load i8, i8* %arrayidx33.i.1.3, align 1
  %call34.i.1.3.2 = call zeroext i8 @mult(i8 zeroext %455, i8 zeroext %456) #3
  %conv35.i.1.3.2 = zext i8 %call34.i.1.3.2 to i32
  %xor36.i.1.3.2 = xor i32 %xor.i.1.3.2, %conv35.i.1.3.2
  %conv37.i.1.3.2 = trunc i32 %xor36.i.1.3.2 to i8
  store i8 %conv37.i.1.3.2, i8* %scevgep64.1.3.1, align 1
  %scevgep43.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %438, i64 0, i64 1, i64 1
  %457 = bitcast i8* %scevgep43.1.3 to [5 x [5 x i8]]*
  %scevgep53.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %439, i64 0, i64 0, i64 1
  %458 = bitcast i8* %scevgep53.1.3 to [5 x [5 x i8]]*
  %scevgep57.1.3 = getelementptr i8, i8* %scevgep57.3334, i64 1
  %scevgep62.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %440, i64 0, i64 1, i64 1
  %459 = bitcast i8* %scevgep62.1.3 to [5 x [5 x i8]]*
  %arrayidx25.i.2.3 = getelementptr inbounds i8, i8* %x, i64 2
  %arrayidx33.i.2.3 = getelementptr inbounds i8, i8* %arraydecay7.3, i64 2
  %call16.i.2.3 = call zeroext i8 (...) @rand() #3
  %scevgep46.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %457, i64 0, i64 0, i64 0
  store i8 %call16.i.2.3, i8* %scevgep46.2.3, align 1
  %scevgep47.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %457, i64 0, i64 0, i64 0
  %460 = load i8, i8* %scevgep47.2.3, align 1
  %conv23.i.2.3 = zext i8 %460 to i32
  %461 = load i8, i8* %arrayidx25.i.2.3, align 1
  %scevgep54.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %458, i64 0, i64 0, i64 0
  %462 = load i8, i8* %scevgep54.2.3, align 1
  %call28.i.2.3 = call zeroext i8 @mult(i8 zeroext %461, i8 zeroext %462) #3
  %conv29.i.2.3 = zext i8 %call28.i.2.3 to i32
  %xor.i.2.3 = xor i32 %conv23.i.2.3, %conv29.i.2.3
  %463 = load i8, i8* %scevgep57.1.3, align 1
  %464 = load i8, i8* %arrayidx33.i.2.3, align 1
  %call34.i.2.3 = call zeroext i8 @mult(i8 zeroext %463, i8 zeroext %464) #3
  %conv35.i.2.3 = zext i8 %call34.i.2.3 to i32
  %xor36.i.2.3 = xor i32 %xor.i.2.3, %conv35.i.2.3
  %conv37.i.2.3 = trunc i32 %xor36.i.2.3 to i8
  store i8 %conv37.i.2.3, i8* %scevgep62.1.3, align 1
  %scevgep64.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %459, i64 0, i64 1, i64 0
  %call16.i.2.3.1 = call zeroext i8 (...) @rand() #3
  %scevgep46.2.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %457, i64 0, i64 0, i64 1
  store i8 %call16.i.2.3.1, i8* %scevgep46.2.3.1, align 1
  %scevgep47.2.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %457, i64 0, i64 0, i64 1
  %465 = load i8, i8* %scevgep47.2.3.1, align 1
  %conv23.i.2.3.1 = zext i8 %465 to i32
  %466 = load i8, i8* %arrayidx25.i.2.3, align 1
  %scevgep54.2.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %458, i64 0, i64 0, i64 1
  %467 = load i8, i8* %scevgep54.2.3.1, align 1
  %call28.i.2.3.1 = call zeroext i8 @mult(i8 zeroext %466, i8 zeroext %467) #3
  %conv29.i.2.3.1 = zext i8 %call28.i.2.3.1 to i32
  %xor.i.2.3.1 = xor i32 %conv23.i.2.3.1, %conv29.i.2.3.1
  %scevgep58.2.3.1 = getelementptr i8, i8* %scevgep57.1.3, i64 1
  %468 = load i8, i8* %scevgep58.2.3.1, align 1
  %469 = load i8, i8* %arrayidx33.i.2.3, align 1
  %call34.i.2.3.1 = call zeroext i8 @mult(i8 zeroext %468, i8 zeroext %469) #3
  %conv35.i.2.3.1 = zext i8 %call34.i.2.3.1 to i32
  %xor36.i.2.3.1 = xor i32 %xor.i.2.3.1, %conv35.i.2.3.1
  %conv37.i.2.3.1 = trunc i32 %xor36.i.2.3.1 to i8
  store i8 %conv37.i.2.3.1, i8* %scevgep64.2.3, align 1
  %scevgep43.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %457, i64 0, i64 1, i64 1
  %470 = bitcast i8* %scevgep43.2.3 to [5 x [5 x i8]]*
  %scevgep53.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %458, i64 0, i64 0, i64 1
  %471 = bitcast i8* %scevgep53.2.3 to [5 x [5 x i8]]*
  %scevgep57.2.3 = getelementptr i8, i8* %scevgep57.1.3, i64 1
  %scevgep62.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %459, i64 0, i64 1, i64 1
  %arrayidx25.i.3.3 = getelementptr inbounds i8, i8* %x, i64 3
  %arrayidx33.i.3.3 = getelementptr inbounds i8, i8* %arraydecay7.3, i64 3
  %call16.i.3.3 = call zeroext i8 (...) @rand() #3
  %scevgep46.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %470, i64 0, i64 0, i64 0
  store i8 %call16.i.3.3, i8* %scevgep46.3.3, align 1
  %scevgep47.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %470, i64 0, i64 0, i64 0
  %472 = load i8, i8* %scevgep47.3.3, align 1
  %conv23.i.3.3 = zext i8 %472 to i32
  %473 = load i8, i8* %arrayidx25.i.3.3, align 1
  %scevgep54.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %471, i64 0, i64 0, i64 0
  %474 = load i8, i8* %scevgep54.3.3, align 1
  %call28.i.3.3 = call zeroext i8 @mult(i8 zeroext %473, i8 zeroext %474) #3
  %conv29.i.3.3 = zext i8 %call28.i.3.3 to i32
  %xor.i.3.3 = xor i32 %conv23.i.3.3, %conv29.i.3.3
  %475 = load i8, i8* %scevgep57.2.3, align 1
  %476 = load i8, i8* %arrayidx33.i.3.3, align 1
  %call34.i.3.3 = call zeroext i8 @mult(i8 zeroext %475, i8 zeroext %476) #3
  %conv35.i.3.3 = zext i8 %call34.i.3.3 to i32
  %xor36.i.3.3 = xor i32 %xor.i.3.3, %conv35.i.3.3
  %conv37.i.3.3 = trunc i32 %xor36.i.3.3 to i8
  store i8 %conv37.i.3.3, i8* %scevgep62.2.3, align 1
  %477 = load i8, i8* %x, align 1
  %478 = load i8, i8* %arraydecay7.3, align 1
  %call54.i.3337 = call zeroext i8 @mult(i8 zeroext %477, i8 zeroext %478) #3
  store i8 %call54.i.3337, i8* %arraydecay10.3, align 1
  %scevgep77.1.3346 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %479 = load i8, i8* %scevgep77.1.3346, align 1
  %conv68.i.1.3347 = zext i8 %479 to i32
  %480 = load i8, i8* %arraydecay10.3, align 1
  %conv71.i.1.3348 = zext i8 %480 to i32
  %xor72.i.1.3349 = xor i32 %conv71.i.1.3348, %conv68.i.1.3347
  %conv73.i.1.3350 = trunc i32 %xor72.i.1.3349 to i8
  store i8 %conv73.i.1.3350, i8* %arraydecay10.3, align 1
  %scevgep77.2.3353 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 2
  %481 = load i8, i8* %scevgep77.2.3353, align 1
  %conv68.i.2.3354 = zext i8 %481 to i32
  %482 = load i8, i8* %arraydecay10.3, align 1
  %conv71.i.2.3355 = zext i8 %482 to i32
  %xor72.i.2.3356 = xor i32 %conv71.i.2.3355, %conv68.i.2.3354
  %conv73.i.2.3357 = trunc i32 %xor72.i.2.3356 to i8
  store i8 %conv73.i.2.3357, i8* %arraydecay10.3, align 1
  %scevgep77.3.3360 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 3
  %483 = load i8, i8* %scevgep77.3.3360, align 1
  %conv68.i.3.3361 = zext i8 %483 to i32
  %484 = load i8, i8* %arraydecay10.3, align 1
  %conv71.i.3.3362 = zext i8 %484 to i32
  %xor72.i.3.3363 = xor i32 %conv71.i.3.3362, %conv68.i.3.3361
  %conv73.i.3.3364 = trunc i32 %xor72.i.3.3363 to i8
  store i8 %conv73.i.3.3364, i8* %arraydecay10.3, align 1
  %scevgep77.4.3367 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 4
  %485 = load i8, i8* %scevgep77.4.3367, align 1
  %conv68.i.4.3368 = zext i8 %485 to i32
  %486 = load i8, i8* %arraydecay10.3, align 1
  %conv71.i.4.3369 = zext i8 %486 to i32
  %xor72.i.4.3370 = xor i32 %conv71.i.4.3369, %conv68.i.4.3368
  %conv73.i.4.3371 = trunc i32 %xor72.i.4.3370 to i8
  store i8 %conv73.i.4.3371, i8* %arraydecay10.3, align 1
  %scevgep76.3373 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 1, i64 0
  %487 = bitcast i8* %scevgep76.3373 to [5 x [5 x i8]]*
  %arrayidx51.i.1.3 = getelementptr inbounds i8, i8* %x, i64 1
  %488 = load i8, i8* %arrayidx51.i.1.3, align 1
  %arrayidx53.i.1.3 = getelementptr inbounds i8, i8* %arraydecay7.3, i64 1
  %489 = load i8, i8* %arrayidx53.i.1.3, align 1
  %call54.i.1.3 = call zeroext i8 @mult(i8 zeroext %488, i8 zeroext %489) #3
  %arrayidx56.i.1.3 = getelementptr inbounds i8, i8* %arraydecay10.3, i64 1
  store i8 %call54.i.1.3, i8* %arrayidx56.i.1.3, align 1
  %arrayidx70.i.1.3 = getelementptr inbounds i8, i8* %arraydecay10.3, i64 1
  %scevgep77.196.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %487, i64 0, i64 0, i64 0
  %490 = load i8, i8* %scevgep77.196.3, align 1
  %conv68.i.197.3 = zext i8 %490 to i32
  %491 = load i8, i8* %arrayidx70.i.1.3, align 1
  %conv71.i.198.3 = zext i8 %491 to i32
  %xor72.i.199.3 = xor i32 %conv71.i.198.3, %conv68.i.197.3
  %conv73.i.1100.3 = trunc i32 %xor72.i.199.3 to i8
  store i8 %conv73.i.1100.3, i8* %arrayidx70.i.1.3, align 1
  %scevgep77.2.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %487, i64 0, i64 0, i64 2
  %492 = load i8, i8* %scevgep77.2.1.3, align 1
  %conv68.i.2.1.3 = zext i8 %492 to i32
  %493 = load i8, i8* %arrayidx70.i.1.3, align 1
  %conv71.i.2.1.3 = zext i8 %493 to i32
  %xor72.i.2.1.3 = xor i32 %conv71.i.2.1.3, %conv68.i.2.1.3
  %conv73.i.2.1.3 = trunc i32 %xor72.i.2.1.3 to i8
  store i8 %conv73.i.2.1.3, i8* %arrayidx70.i.1.3, align 1
  %scevgep77.3.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %487, i64 0, i64 0, i64 3
  %494 = load i8, i8* %scevgep77.3.1.3, align 1
  %conv68.i.3.1.3 = zext i8 %494 to i32
  %495 = load i8, i8* %arrayidx70.i.1.3, align 1
  %conv71.i.3.1.3 = zext i8 %495 to i32
  %xor72.i.3.1.3 = xor i32 %conv71.i.3.1.3, %conv68.i.3.1.3
  %conv73.i.3.1.3 = trunc i32 %xor72.i.3.1.3 to i8
  store i8 %conv73.i.3.1.3, i8* %arrayidx70.i.1.3, align 1
  %scevgep77.4.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %487, i64 0, i64 0, i64 4
  %496 = load i8, i8* %scevgep77.4.1.3, align 1
  %conv68.i.4.1.3 = zext i8 %496 to i32
  %497 = load i8, i8* %arrayidx70.i.1.3, align 1
  %conv71.i.4.1.3 = zext i8 %497 to i32
  %xor72.i.4.1.3 = xor i32 %conv71.i.4.1.3, %conv68.i.4.1.3
  %conv73.i.4.1.3 = trunc i32 %xor72.i.4.1.3 to i8
  store i8 %conv73.i.4.1.3, i8* %arrayidx70.i.1.3, align 1
  %scevgep76.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %487, i64 0, i64 1, i64 0
  %498 = bitcast i8* %scevgep76.1.3 to [5 x [5 x i8]]*
  %arrayidx51.i.2.3 = getelementptr inbounds i8, i8* %x, i64 2
  %499 = load i8, i8* %arrayidx51.i.2.3, align 1
  %arrayidx53.i.2.3 = getelementptr inbounds i8, i8* %arraydecay7.3, i64 2
  %500 = load i8, i8* %arrayidx53.i.2.3, align 1
  %call54.i.2.3 = call zeroext i8 @mult(i8 zeroext %499, i8 zeroext %500) #3
  %arrayidx56.i.2.3 = getelementptr inbounds i8, i8* %arraydecay10.3, i64 2
  store i8 %call54.i.2.3, i8* %arrayidx56.i.2.3, align 1
  %arrayidx70.i.2.3 = getelementptr inbounds i8, i8* %arraydecay10.3, i64 2
  %scevgep77.2105.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %498, i64 0, i64 0, i64 0
  %501 = load i8, i8* %scevgep77.2105.3, align 1
  %conv68.i.2106.3 = zext i8 %501 to i32
  %502 = load i8, i8* %arrayidx70.i.2.3, align 1
  %conv71.i.2107.3 = zext i8 %502 to i32
  %xor72.i.2108.3 = xor i32 %conv71.i.2107.3, %conv68.i.2106.3
  %conv73.i.2109.3 = trunc i32 %xor72.i.2108.3 to i8
  store i8 %conv73.i.2109.3, i8* %arrayidx70.i.2.3, align 1
  %scevgep77.1.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %498, i64 0, i64 0, i64 1
  %503 = load i8, i8* %scevgep77.1.2.3, align 1
  %conv68.i.1.2.3 = zext i8 %503 to i32
  %504 = load i8, i8* %arrayidx70.i.2.3, align 1
  %conv71.i.1.2.3 = zext i8 %504 to i32
  %xor72.i.1.2.3 = xor i32 %conv71.i.1.2.3, %conv68.i.1.2.3
  %conv73.i.1.2.3 = trunc i32 %xor72.i.1.2.3 to i8
  store i8 %conv73.i.1.2.3, i8* %arrayidx70.i.2.3, align 1
  %scevgep77.3.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %498, i64 0, i64 0, i64 3
  %505 = load i8, i8* %scevgep77.3.2.3, align 1
  %conv68.i.3.2.3 = zext i8 %505 to i32
  %506 = load i8, i8* %arrayidx70.i.2.3, align 1
  %conv71.i.3.2.3 = zext i8 %506 to i32
  %xor72.i.3.2.3 = xor i32 %conv71.i.3.2.3, %conv68.i.3.2.3
  %conv73.i.3.2.3 = trunc i32 %xor72.i.3.2.3 to i8
  store i8 %conv73.i.3.2.3, i8* %arrayidx70.i.2.3, align 1
  %scevgep77.4.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %498, i64 0, i64 0, i64 4
  %507 = load i8, i8* %scevgep77.4.2.3, align 1
  %conv68.i.4.2.3 = zext i8 %507 to i32
  %508 = load i8, i8* %arrayidx70.i.2.3, align 1
  %conv71.i.4.2.3 = zext i8 %508 to i32
  %xor72.i.4.2.3 = xor i32 %conv71.i.4.2.3, %conv68.i.4.2.3
  %conv73.i.4.2.3 = trunc i32 %xor72.i.4.2.3 to i8
  store i8 %conv73.i.4.2.3, i8* %arrayidx70.i.2.3, align 1
  %scevgep76.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %498, i64 0, i64 1, i64 0
  %509 = bitcast i8* %scevgep76.2.3 to [5 x [5 x i8]]*
  %arrayidx51.i.3.3 = getelementptr inbounds i8, i8* %x, i64 3
  %510 = load i8, i8* %arrayidx51.i.3.3, align 1
  %arrayidx53.i.3.3 = getelementptr inbounds i8, i8* %arraydecay7.3, i64 3
  %511 = load i8, i8* %arrayidx53.i.3.3, align 1
  %call54.i.3.3 = call zeroext i8 @mult(i8 zeroext %510, i8 zeroext %511) #3
  %arrayidx56.i.3.3 = getelementptr inbounds i8, i8* %arraydecay10.3, i64 3
  store i8 %call54.i.3.3, i8* %arrayidx56.i.3.3, align 1
  %arrayidx70.i.3.3 = getelementptr inbounds i8, i8* %arraydecay10.3, i64 3
  %scevgep77.3114.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %509, i64 0, i64 0, i64 0
  %512 = load i8, i8* %scevgep77.3114.3, align 1
  %conv68.i.3115.3 = zext i8 %512 to i32
  %513 = load i8, i8* %arrayidx70.i.3.3, align 1
  %conv71.i.3116.3 = zext i8 %513 to i32
  %xor72.i.3117.3 = xor i32 %conv71.i.3116.3, %conv68.i.3115.3
  %conv73.i.3118.3 = trunc i32 %xor72.i.3117.3 to i8
  store i8 %conv73.i.3118.3, i8* %arrayidx70.i.3.3, align 1
  %scevgep77.1.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %509, i64 0, i64 0, i64 1
  %514 = load i8, i8* %scevgep77.1.3.3, align 1
  %conv68.i.1.3.3 = zext i8 %514 to i32
  %515 = load i8, i8* %arrayidx70.i.3.3, align 1
  %conv71.i.1.3.3 = zext i8 %515 to i32
  %xor72.i.1.3.3 = xor i32 %conv71.i.1.3.3, %conv68.i.1.3.3
  %conv73.i.1.3.3 = trunc i32 %xor72.i.1.3.3 to i8
  store i8 %conv73.i.1.3.3, i8* %arrayidx70.i.3.3, align 1
  %scevgep77.2.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %509, i64 0, i64 0, i64 2
  %516 = load i8, i8* %scevgep77.2.3.3, align 1
  %conv68.i.2.3.3 = zext i8 %516 to i32
  %517 = load i8, i8* %arrayidx70.i.3.3, align 1
  %conv71.i.2.3.3 = zext i8 %517 to i32
  %xor72.i.2.3.3 = xor i32 %conv71.i.2.3.3, %conv68.i.2.3.3
  %conv73.i.2.3.3 = trunc i32 %xor72.i.2.3.3 to i8
  store i8 %conv73.i.2.3.3, i8* %arrayidx70.i.3.3, align 1
  %scevgep77.4.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %509, i64 0, i64 0, i64 4
  %518 = load i8, i8* %scevgep77.4.3.3, align 1
  %conv68.i.4.3.3 = zext i8 %518 to i32
  %519 = load i8, i8* %arrayidx70.i.3.3, align 1
  %conv71.i.4.3.3 = zext i8 %519 to i32
  %xor72.i.4.3.3 = xor i32 %conv71.i.4.3.3, %conv68.i.4.3.3
  %conv73.i.4.3.3 = trunc i32 %xor72.i.4.3.3 to i8
  store i8 %conv73.i.4.3.3, i8* %arrayidx70.i.3.3, align 1
  %scevgep76.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %509, i64 0, i64 1, i64 0
  %520 = bitcast i8* %scevgep76.3.3 to [5 x [5 x i8]]*
  %arrayidx51.i.4.3 = getelementptr inbounds i8, i8* %x, i64 4
  %521 = load i8, i8* %arrayidx51.i.4.3, align 1
  %arrayidx53.i.4.3 = getelementptr inbounds i8, i8* %arraydecay7.3, i64 4
  %522 = load i8, i8* %arrayidx53.i.4.3, align 1
  %call54.i.4.3 = call zeroext i8 @mult(i8 zeroext %521, i8 zeroext %522) #3
  %arrayidx56.i.4.3 = getelementptr inbounds i8, i8* %arraydecay10.3, i64 4
  store i8 %call54.i.4.3, i8* %arrayidx56.i.4.3, align 1
  %arrayidx70.i.4.3 = getelementptr inbounds i8, i8* %arraydecay10.3, i64 4
  %scevgep77.4123.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %520, i64 0, i64 0, i64 0
  %523 = load i8, i8* %scevgep77.4123.3, align 1
  %conv68.i.4124.3 = zext i8 %523 to i32
  %524 = load i8, i8* %arrayidx70.i.4.3, align 1
  %conv71.i.4125.3 = zext i8 %524 to i32
  %xor72.i.4126.3 = xor i32 %conv71.i.4125.3, %conv68.i.4124.3
  %conv73.i.4127.3 = trunc i32 %xor72.i.4126.3 to i8
  store i8 %conv73.i.4127.3, i8* %arrayidx70.i.4.3, align 1
  %scevgep77.1.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %520, i64 0, i64 0, i64 1
  %525 = load i8, i8* %scevgep77.1.4.3, align 1
  %conv68.i.1.4.3 = zext i8 %525 to i32
  %526 = load i8, i8* %arrayidx70.i.4.3, align 1
  %conv71.i.1.4.3 = zext i8 %526 to i32
  %xor72.i.1.4.3 = xor i32 %conv71.i.1.4.3, %conv68.i.1.4.3
  %conv73.i.1.4.3 = trunc i32 %xor72.i.1.4.3 to i8
  store i8 %conv73.i.1.4.3, i8* %arrayidx70.i.4.3, align 1
  %scevgep77.2.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %520, i64 0, i64 0, i64 2
  %527 = load i8, i8* %scevgep77.2.4.3, align 1
  %conv68.i.2.4.3 = zext i8 %527 to i32
  %528 = load i8, i8* %arrayidx70.i.4.3, align 1
  %conv71.i.2.4.3 = zext i8 %528 to i32
  %xor72.i.2.4.3 = xor i32 %conv71.i.2.4.3, %conv68.i.2.4.3
  %conv73.i.2.4.3 = trunc i32 %xor72.i.2.4.3 to i8
  store i8 %conv73.i.2.4.3, i8* %arrayidx70.i.4.3, align 1
  %scevgep77.3.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %520, i64 0, i64 0, i64 3
  %529 = load i8, i8* %scevgep77.3.4.3, align 1
  %conv68.i.3.4.3 = zext i8 %529 to i32
  %530 = load i8, i8* %arrayidx70.i.4.3, align 1
  %conv71.i.3.4.3 = zext i8 %530 to i32
  %xor72.i.3.4.3 = xor i32 %conv71.i.3.4.3, %conv68.i.3.4.3
  %conv73.i.3.4.3 = trunc i32 %xor72.i.3.4.3 to i8
  store i8 %conv73.i.3.4.3, i8* %arrayidx70.i.4.3, align 1
  %call80.i.3 = call zeroext i8 @mult(i8 zeroext %call.i22.3, i8 zeroext %call1.i.3) #3
  %conv81.i.3 = zext i8 %call80.i.3 to i32
  %scevgep82.3375 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %404, i64 0, i64 0, i64 0
  %scevgep83.3376 = getelementptr i8, i8* %scevgep82.3375, i64 5
  %531 = load i8, i8* %scevgep83.3376, align 1
  %conv.i.i113.i.3378 = zext i8 %531 to i32
  %conv1.i.i114.i.3379 = zext i8 %conv2.i.i116.i.4.2 to i32
  %xor.i.i115.i.3380 = xor i32 %conv1.i.i114.i.3379, %conv.i.i113.i.3378
  %conv2.i.i116.i.3381 = trunc i32 %xor.i.i115.i.3380 to i8
  %scevgep82.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %404, i64 0, i64 0, i64 1
  %scevgep83.1.3 = getelementptr i8, i8* %scevgep82.1.3, i64 5
  %532 = load i8, i8* %scevgep83.1.3, align 1
  %conv.i.i113.i.1.3 = zext i8 %532 to i32
  %conv1.i.i114.i.1.3 = zext i8 %conv2.i.i116.i.3381 to i32
  %xor.i.i115.i.1.3 = xor i32 %conv1.i.i114.i.1.3, %conv.i.i113.i.1.3
  %conv2.i.i116.i.1.3 = trunc i32 %xor.i.i115.i.1.3 to i8
  %scevgep82.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %404, i64 0, i64 0, i64 2
  %scevgep83.2.3 = getelementptr i8, i8* %scevgep82.2.3, i64 5
  %533 = load i8, i8* %scevgep83.2.3, align 1
  %conv.i.i113.i.2.3 = zext i8 %533 to i32
  %conv1.i.i114.i.2.3 = zext i8 %conv2.i.i116.i.1.3 to i32
  %xor.i.i115.i.2.3 = xor i32 %conv1.i.i114.i.2.3, %conv.i.i113.i.2.3
  %conv2.i.i116.i.2.3 = trunc i32 %xor.i.i115.i.2.3 to i8
  %scevgep82.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %404, i64 0, i64 0, i64 3
  %scevgep83.3.3 = getelementptr i8, i8* %scevgep82.3.3, i64 5
  %534 = load i8, i8* %scevgep83.3.3, align 1
  %conv.i.i113.i.3.3 = zext i8 %534 to i32
  %conv1.i.i114.i.3.3 = zext i8 %conv2.i.i116.i.2.3 to i32
  %xor.i.i115.i.3.3 = xor i32 %conv1.i.i114.i.3.3, %conv.i.i113.i.3.3
  %conv2.i.i116.i.3.3 = trunc i32 %xor.i.i115.i.3.3 to i8
  %scevgep82.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %404, i64 0, i64 0, i64 4
  %scevgep83.4.3 = getelementptr i8, i8* %scevgep82.4.3, i64 5
  %535 = load i8, i8* %scevgep83.4.3, align 1
  %conv.i.i113.i.4.3 = zext i8 %535 to i32
  %conv1.i.i114.i.4.3 = zext i8 %conv2.i.i116.i.3.3 to i32
  %xor.i.i115.i.4.3 = xor i32 %conv1.i.i114.i.4.3, %conv.i.i113.i.4.3
  %conv2.i.i116.i.4.3 = trunc i32 %xor.i.i115.i.4.3 to i8
  %conv83.i.3 = zext i8 %conv2.i.i116.i.4.3 to i32
  %cmp84.i.3 = icmp eq i32 %conv81.i.3, %conv83.i.3
  call void @assert(i1 zeroext %cmp84.i.3) #3
  %scevgep24 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 4, i64 0
  %536 = load i8, i8* %scevgep24, align 1
  store i8 %536, i8* %y, align 1
  %scevgep27.1 = getelementptr i8, i8* %scevgep24, i64 1
  %537 = load i8, i8* %scevgep27.1, align 1
  %scevgep28.1 = getelementptr i8, i8* %y, i64 1
  store i8 %537, i8* %scevgep28.1, align 1
  %scevgep27.2 = getelementptr i8, i8* %scevgep24, i64 2
  %538 = load i8, i8* %scevgep27.2, align 1
  %scevgep28.2 = getelementptr i8, i8* %y, i64 2
  store i8 %538, i8* %scevgep28.2, align 1
  %scevgep27.3 = getelementptr i8, i8* %scevgep24, i64 3
  %539 = load i8, i8* %scevgep27.3, align 1
  %scevgep28.3 = getelementptr i8, i8* %y, i64 3
  store i8 %539, i8* %scevgep28.3, align 1
  %scevgep27.4 = getelementptr i8, i8* %scevgep24, i64 4
  %540 = load i8, i8* %scevgep27.4, align 1
  %scevgep28.4 = getelementptr i8, i8* %y, i64 4
  store i8 %540, i8* %scevgep28.4, align 1
  %call.i48 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call) #3
  %call.i48.1 = call zeroext i8 @mult(i8 zeroext %call.i48, i8 zeroext %call) #3
  %call.i48.2 = call zeroext i8 @mult(i8 zeroext %call.i48.1, i8 zeroext %call) #3
  %call.i48.3 = call zeroext i8 @mult(i8 zeroext %call.i48.2, i8 zeroext %call) #3
  %conv14 = zext i8 %call.i48.3 to i32
  %541 = load i8, i8* %y, align 1
  %scevgep.1 = getelementptr i8, i8* %y, i64 1
  %542 = load i8, i8* %scevgep.1, align 1
  %conv.i.i62.1 = zext i8 %542 to i32
  %conv1.i.i63.1 = zext i8 %541 to i32
  %xor.i.i64.1 = xor i32 %conv1.i.i63.1, %conv.i.i62.1
  %conv2.i.i65.1 = trunc i32 %xor.i.i64.1 to i8
  %scevgep.2 = getelementptr i8, i8* %y, i64 2
  %543 = load i8, i8* %scevgep.2, align 1
  %conv.i.i62.2 = zext i8 %543 to i32
  %conv1.i.i63.2 = zext i8 %conv2.i.i65.1 to i32
  %xor.i.i64.2 = xor i32 %conv1.i.i63.2, %conv.i.i62.2
  %conv2.i.i65.2 = trunc i32 %xor.i.i64.2 to i8
  %scevgep.3 = getelementptr i8, i8* %y, i64 3
  %544 = load i8, i8* %scevgep.3, align 1
  %conv.i.i62.3 = zext i8 %544 to i32
  %conv1.i.i63.3 = zext i8 %conv2.i.i65.2 to i32
  %xor.i.i64.3 = xor i32 %conv1.i.i63.3, %conv.i.i62.3
  %conv2.i.i65.3 = trunc i32 %xor.i.i64.3 to i8
  %scevgep.4 = getelementptr i8, i8* %y, i64 4
  %545 = load i8, i8* %scevgep.4, align 1
  %conv.i.i62.4 = zext i8 %545 to i32
  %conv1.i.i63.4 = zext i8 %conv2.i.i65.3 to i32
  %xor.i.i64.4 = xor i32 %conv1.i.i63.4, %conv.i.i62.4
  %conv2.i.i65.4 = trunc i32 %xor.i.i64.4 to i8
  %conv16 = zext i8 %conv2.i.i65.4 to i32
  %cmp17 = icmp eq i32 %conv14, %conv16
  call void @assert(i1 zeroext %cmp17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @af(i8 zeroext %x) #2 {
entry:
  %conv = zext i8 %x to i32
  %call = call zeroext i8 @rotl1(i8 zeroext %x)
  %conv1 = zext i8 %call to i32
  %xor = xor i32 %conv, %conv1
  %call2 = call zeroext i8 @rotl2(i8 zeroext %x)
  %conv3 = zext i8 %call2 to i32
  %xor4 = xor i32 %xor, %conv3
  %call5 = call zeroext i8 @rotl3(i8 zeroext %x)
  %conv6 = zext i8 %call5 to i32
  %xor7 = xor i32 %xor4, %conv6
  %call8 = call zeroext i8 @rotl4(i8 zeroext %x)
  %conv9 = zext i8 %call8 to i32
  %xor10 = xor i32 %xor7, %conv9
  %xor11 = xor i32 %xor10, 99
  %conv12 = trunc i32 %xor11 to i8
  ret i8 %conv12
}

declare dso_local zeroext i8 @rotl1(i8 zeroext) #1

declare dso_local zeroext i8 @rotl2(i8 zeroext) #1

declare dso_local zeroext i8 @rotl3(i8 zeroext) #1

declare dso_local zeroext i8 @rotl4(i8 zeroext) #1

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @sbox(i8 zeroext %x) #0 {
entry:
  %call.i = call zeroext i8 @square(i8 zeroext %x) #3
  %call1.i = call zeroext i8 @mult(i8 zeroext %call.i, i8 zeroext %x) #3
  %call2.i = call zeroext i8 @exp4(i8 zeroext %call1.i) #3
  %call3.i = call zeroext i8 @mult(i8 zeroext %call1.i, i8 zeroext %call2.i) #3
  %call4.i = call zeroext i8 @exp16(i8 zeroext %call3.i) #3
  %call5.i = call zeroext i8 @mult(i8 zeroext %call4.i, i8 zeroext %call2.i) #3
  %call6.i = call zeroext i8 @mult(i8 zeroext %call5.i, i8 zeroext %call.i) #3
  %call1 = call zeroext i8 @af(i8 zeroext %call6.i)
  ret i8 %call1
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_sbox(i8* %x, i8* %y) #0 {
entry:
  %r.i.i = alloca [5 x [5 x i8]], align 16
  %z.i = alloca [5 x i8], align 1
  %w.i = alloca [5 x i8], align 1
  %u.i = alloca [5 x i8], align 1
  %v.i = alloca [5 x i8], align 1
  %m.i = alloca [5 x i8], align 1
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %scevgep300.1 = getelementptr i8, i8* %x, i64 1
  %1 = load i8, i8* %scevgep300.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep300.2 = getelementptr i8, i8* %x, i64 2
  %2 = load i8, i8* %scevgep300.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %scevgep300.3 = getelementptr i8, i8* %x, i64 3
  %3 = load i8, i8* %scevgep300.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %scevgep300.4 = getelementptr i8, i8* %x, i64 4
  %4 = load i8, i8* %scevgep300.4, align 1
  %conv.i.i.4 = zext i8 %4 to i32
  %conv1.i.i.4 = zext i8 %conv2.i.i.3 to i32
  %xor.i.i.4 = xor i32 %conv1.i.i.4, %conv.i.i.4
  %conv2.i.i.4 = trunc i32 %xor.i.i.4 to i8
  %conv2 = zext i8 %conv2.i.i.4 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %call.i = call zeroext i8 (...) @rand() #3
  %conv.i = zext i8 %call.i to i32
  %5 = load i8, i8* %x, align 1
  %scevgep296.1 = getelementptr i8, i8* %x, i64 1
  %6 = load i8, i8* %scevgep296.1, align 1
  %conv.i.i.i.1 = zext i8 %6 to i32
  %conv1.i.i.i.1 = zext i8 %5 to i32
  %xor.i.i.i.1 = xor i32 %conv1.i.i.i.1, %conv.i.i.i.1
  %conv2.i.i.i.1 = trunc i32 %xor.i.i.i.1 to i8
  %scevgep296.2 = getelementptr i8, i8* %x, i64 2
  %7 = load i8, i8* %scevgep296.2, align 1
  %conv.i.i.i.2 = zext i8 %7 to i32
  %conv1.i.i.i.2 = zext i8 %conv2.i.i.i.1 to i32
  %xor.i.i.i.2 = xor i32 %conv1.i.i.i.2, %conv.i.i.i.2
  %conv2.i.i.i.2 = trunc i32 %xor.i.i.i.2 to i8
  %scevgep296.3 = getelementptr i8, i8* %x, i64 3
  %8 = load i8, i8* %scevgep296.3, align 1
  %conv.i.i.i.3 = zext i8 %8 to i32
  %conv1.i.i.i.3 = zext i8 %conv2.i.i.i.2 to i32
  %xor.i.i.i.3 = xor i32 %conv1.i.i.i.3, %conv.i.i.i.3
  %conv2.i.i.i.3 = trunc i32 %xor.i.i.i.3 to i8
  %scevgep296.4 = getelementptr i8, i8* %x, i64 4
  %9 = load i8, i8* %scevgep296.4, align 1
  %conv.i.i.i.4 = zext i8 %9 to i32
  %conv1.i.i.i.4 = zext i8 %conv2.i.i.i.3 to i32
  %xor.i.i.i.4 = xor i32 %conv1.i.i.i.4, %conv.i.i.i.4
  %conv2.i.i.i.4 = trunc i32 %xor.i.i.i.4 to i8
  %conv2.i = zext i8 %conv2.i.i.i.4 to i32
  %cmp.i = icmp eq i32 %conv.i, %conv2.i
  call void @assume(i1 zeroext %cmp.i) #3
  %10 = load i8, i8* %x, align 1
  %call.i.i17 = call zeroext i8 @square(i8 zeroext %10) #3
  %scevgep292 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 0
  store i8 %call.i.i17, i8* %scevgep292, align 1
  %scevgep291.1 = getelementptr i8, i8* %x, i64 1
  %11 = load i8, i8* %scevgep291.1, align 1
  %call.i.i17.1 = call zeroext i8 @square(i8 zeroext %11) #3
  %scevgep292.1 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 1
  store i8 %call.i.i17.1, i8* %scevgep292.1, align 1
  %scevgep291.2 = getelementptr i8, i8* %x, i64 2
  %12 = load i8, i8* %scevgep291.2, align 1
  %call.i.i17.2 = call zeroext i8 @square(i8 zeroext %12) #3
  %scevgep292.2 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 2
  store i8 %call.i.i17.2, i8* %scevgep292.2, align 1
  %scevgep291.3 = getelementptr i8, i8* %x, i64 3
  %13 = load i8, i8* %scevgep291.3, align 1
  %call.i.i17.3 = call zeroext i8 @square(i8 zeroext %13) #3
  %scevgep292.3 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 3
  store i8 %call.i.i17.3, i8* %scevgep292.3, align 1
  %scevgep291.4 = getelementptr i8, i8* %x, i64 4
  %14 = load i8, i8* %scevgep291.4, align 1
  %call.i.i17.4 = call zeroext i8 @square(i8 zeroext %14) #3
  %scevgep292.4 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 4
  store i8 %call.i.i17.4, i8* %scevgep292.4, align 1
  %arraydecay4.i = getelementptr inbounds [5 x i8], [5 x i8]* %z.i, i64 0, i64 0
  %call.i28.i = call zeroext i8 (...) @rand() #3
  %conv.i.i20 = zext i8 %call.i28.i to i32
  %scevgep287 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 0
  %15 = load i8, i8* %scevgep287, align 1
  %scevgep287.1 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 1
  %16 = load i8, i8* %scevgep287.1, align 1
  %conv.i.i.i.i.1 = zext i8 %16 to i32
  %conv1.i.i.i.i.1 = zext i8 %15 to i32
  %xor.i.i.i.i.1 = xor i32 %conv1.i.i.i.i.1, %conv.i.i.i.i.1
  %conv2.i.i.i.i.1 = trunc i32 %xor.i.i.i.i.1 to i8
  %scevgep287.2 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 2
  %17 = load i8, i8* %scevgep287.2, align 1
  %conv.i.i.i.i.2 = zext i8 %17 to i32
  %conv1.i.i.i.i.2 = zext i8 %conv2.i.i.i.i.1 to i32
  %xor.i.i.i.i.2 = xor i32 %conv1.i.i.i.i.2, %conv.i.i.i.i.2
  %conv2.i.i.i.i.2 = trunc i32 %xor.i.i.i.i.2 to i8
  %scevgep287.3 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 3
  %18 = load i8, i8* %scevgep287.3, align 1
  %conv.i.i.i.i.3 = zext i8 %18 to i32
  %conv1.i.i.i.i.3 = zext i8 %conv2.i.i.i.i.2 to i32
  %xor.i.i.i.i.3 = xor i32 %conv1.i.i.i.i.3, %conv.i.i.i.i.3
  %conv2.i.i.i.i.3 = trunc i32 %xor.i.i.i.i.3 to i8
  %scevgep287.4 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 4
  %19 = load i8, i8* %scevgep287.4, align 1
  %conv.i.i.i.i.4 = zext i8 %19 to i32
  %conv1.i.i.i.i.4 = zext i8 %conv2.i.i.i.i.3 to i32
  %xor.i.i.i.i.4 = xor i32 %conv1.i.i.i.i.4, %conv.i.i.i.i.4
  %conv2.i.i.i.i.4 = trunc i32 %xor.i.i.i.i.4 to i8
  %conv2.i.i21 = zext i8 %conv2.i.i.i.i.4 to i32
  %cmp.i29.i = icmp eq i32 %conv.i.i20, %conv2.i.i21
  call void @assume(i1 zeroext %cmp.i29.i) #3
  %call7.i.i = call zeroext i8 (...) @rand() #3
  %conv8.i.i = zext i8 %call7.i.i to i32
  %20 = load i8, i8* %arraydecay4.i, align 1
  %conv9.i.i = zext i8 %20 to i32
  %xor.i.i22 = xor i32 %conv9.i.i, %conv8.i.i
  %conv10.i.i = trunc i32 %xor.i.i22 to i8
  store i8 %conv10.i.i, i8* %arraydecay4.i, align 1
  %conv11.i.i = zext i8 %call7.i.i to i32
  %scevgep283 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 1
  %21 = load i8, i8* %scevgep283, align 1
  %conv13.i.i = zext i8 %21 to i32
  %xor14.i.i = xor i32 %conv13.i.i, %conv11.i.i
  %conv15.i.i = trunc i32 %xor14.i.i to i8
  store i8 %conv15.i.i, i8* %scevgep283, align 1
  %call7.i.i.1 = call zeroext i8 (...) @rand() #3
  %conv8.i.i.1 = zext i8 %call7.i.i.1 to i32
  %22 = load i8, i8* %arraydecay4.i, align 1
  %conv9.i.i.1 = zext i8 %22 to i32
  %xor.i.i22.1 = xor i32 %conv9.i.i.1, %conv8.i.i.1
  %conv10.i.i.1 = trunc i32 %xor.i.i22.1 to i8
  store i8 %conv10.i.i.1, i8* %arraydecay4.i, align 1
  %conv11.i.i.1 = zext i8 %call7.i.i.1 to i32
  %scevgep283.1 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 2
  %23 = load i8, i8* %scevgep283.1, align 1
  %conv13.i.i.1 = zext i8 %23 to i32
  %xor14.i.i.1 = xor i32 %conv13.i.i.1, %conv11.i.i.1
  %conv15.i.i.1 = trunc i32 %xor14.i.i.1 to i8
  store i8 %conv15.i.i.1, i8* %scevgep283.1, align 1
  %call7.i.i.2 = call zeroext i8 (...) @rand() #3
  %conv8.i.i.2 = zext i8 %call7.i.i.2 to i32
  %24 = load i8, i8* %arraydecay4.i, align 1
  %conv9.i.i.2 = zext i8 %24 to i32
  %xor.i.i22.2 = xor i32 %conv9.i.i.2, %conv8.i.i.2
  %conv10.i.i.2 = trunc i32 %xor.i.i22.2 to i8
  store i8 %conv10.i.i.2, i8* %arraydecay4.i, align 1
  %conv11.i.i.2 = zext i8 %call7.i.i.2 to i32
  %scevgep283.2 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 3
  %25 = load i8, i8* %scevgep283.2, align 1
  %conv13.i.i.2 = zext i8 %25 to i32
  %xor14.i.i.2 = xor i32 %conv13.i.i.2, %conv11.i.i.2
  %conv15.i.i.2 = trunc i32 %xor14.i.i.2 to i8
  store i8 %conv15.i.i.2, i8* %scevgep283.2, align 1
  %call7.i.i.3 = call zeroext i8 (...) @rand() #3
  %conv8.i.i.3 = zext i8 %call7.i.i.3 to i32
  %26 = load i8, i8* %arraydecay4.i, align 1
  %conv9.i.i.3 = zext i8 %26 to i32
  %xor.i.i22.3 = xor i32 %conv9.i.i.3, %conv8.i.i.3
  %conv10.i.i.3 = trunc i32 %xor.i.i22.3 to i8
  store i8 %conv10.i.i.3, i8* %arraydecay4.i, align 1
  %conv11.i.i.3 = zext i8 %call7.i.i.3 to i32
  %scevgep283.3 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 4
  %27 = load i8, i8* %scevgep283.3, align 1
  %conv13.i.i.3 = zext i8 %27 to i32
  %xor14.i.i.3 = xor i32 %conv13.i.i.3, %conv11.i.i.3
  %conv15.i.i.3 = trunc i32 %xor14.i.i.3 to i8
  store i8 %conv15.i.i.3, i8* %scevgep283.3, align 1
  %conv16.i.i = zext i8 %call.i28.i to i32
  %scevgep279 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 0
  %28 = load i8, i8* %scevgep279, align 1
  %scevgep279.1 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 1
  %29 = load i8, i8* %scevgep279.1, align 1
  %conv.i.i31.i.i.1 = zext i8 %29 to i32
  %conv1.i.i32.i.i.1 = zext i8 %28 to i32
  %xor.i.i33.i.i.1 = xor i32 %conv1.i.i32.i.i.1, %conv.i.i31.i.i.1
  %conv2.i.i34.i.i.1 = trunc i32 %xor.i.i33.i.i.1 to i8
  %scevgep279.2 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 2
  %30 = load i8, i8* %scevgep279.2, align 1
  %conv.i.i31.i.i.2 = zext i8 %30 to i32
  %conv1.i.i32.i.i.2 = zext i8 %conv2.i.i34.i.i.1 to i32
  %xor.i.i33.i.i.2 = xor i32 %conv1.i.i32.i.i.2, %conv.i.i31.i.i.2
  %conv2.i.i34.i.i.2 = trunc i32 %xor.i.i33.i.i.2 to i8
  %scevgep279.3 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 3
  %31 = load i8, i8* %scevgep279.3, align 1
  %conv.i.i31.i.i.3 = zext i8 %31 to i32
  %conv1.i.i32.i.i.3 = zext i8 %conv2.i.i34.i.i.2 to i32
  %xor.i.i33.i.i.3 = xor i32 %conv1.i.i32.i.i.3, %conv.i.i31.i.i.3
  %conv2.i.i34.i.i.3 = trunc i32 %xor.i.i33.i.i.3 to i8
  %scevgep279.4 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 4
  %32 = load i8, i8* %scevgep279.4, align 1
  %conv.i.i31.i.i.4 = zext i8 %32 to i32
  %conv1.i.i32.i.i.4 = zext i8 %conv2.i.i34.i.i.3 to i32
  %xor.i.i33.i.i.4 = xor i32 %conv1.i.i32.i.i.4, %conv.i.i31.i.i.4
  %conv2.i.i34.i.i.4 = trunc i32 %xor.i.i33.i.i.4 to i8
  %conv18.i.i = zext i8 %conv2.i.i34.i.i.4 to i32
  %cmp19.i.i = icmp eq i32 %conv16.i.i, %conv18.i.i
  call void @assert(i1 zeroext %cmp19.i.i) #3
  %arraydecay5.i = getelementptr inbounds [5 x i8], [5 x i8]* %z.i, i64 0, i64 0
  %arraydecay6.i = getelementptr inbounds [5 x i8], [5 x i8]* %u.i, i64 0, i64 0
  %call.i41.i = call zeroext i8 (...) @rand() #3
  %call1.i.i = call zeroext i8 (...) @rand() #3
  %conv.i42.i = zext i8 %call.i41.i to i32
  %scevgep275 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 0
  %33 = load i8, i8* %scevgep275, align 1
  %scevgep275.1 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 1
  %34 = load i8, i8* %scevgep275.1, align 1
  %conv.i.i.i48.i.1 = zext i8 %34 to i32
  %conv1.i.i.i49.i.1 = zext i8 %33 to i32
  %xor.i.i.i50.i.1 = xor i32 %conv1.i.i.i49.i.1, %conv.i.i.i48.i.1
  %conv2.i.i.i51.i.1 = trunc i32 %xor.i.i.i50.i.1 to i8
  %scevgep275.2 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 2
  %35 = load i8, i8* %scevgep275.2, align 1
  %conv.i.i.i48.i.2 = zext i8 %35 to i32
  %conv1.i.i.i49.i.2 = zext i8 %conv2.i.i.i51.i.1 to i32
  %xor.i.i.i50.i.2 = xor i32 %conv1.i.i.i49.i.2, %conv.i.i.i48.i.2
  %conv2.i.i.i51.i.2 = trunc i32 %xor.i.i.i50.i.2 to i8
  %scevgep275.3 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 3
  %36 = load i8, i8* %scevgep275.3, align 1
  %conv.i.i.i48.i.3 = zext i8 %36 to i32
  %conv1.i.i.i49.i.3 = zext i8 %conv2.i.i.i51.i.2 to i32
  %xor.i.i.i50.i.3 = xor i32 %conv1.i.i.i49.i.3, %conv.i.i.i48.i.3
  %conv2.i.i.i51.i.3 = trunc i32 %xor.i.i.i50.i.3 to i8
  %scevgep275.4 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 4
  %37 = load i8, i8* %scevgep275.4, align 1
  %conv.i.i.i48.i.4 = zext i8 %37 to i32
  %conv1.i.i.i49.i.4 = zext i8 %conv2.i.i.i51.i.3 to i32
  %xor.i.i.i50.i.4 = xor i32 %conv1.i.i.i49.i.4, %conv.i.i.i48.i.4
  %conv2.i.i.i51.i.4 = trunc i32 %xor.i.i.i50.i.4 to i8
  %conv3.i.i = zext i8 %conv2.i.i.i51.i.4 to i32
  %cmp.i54.i = icmp eq i32 %conv.i42.i, %conv3.i.i
  call void @assume(i1 zeroext %cmp.i54.i) #3
  %conv5.i.i = zext i8 %call1.i.i to i32
  %38 = load i8, i8* %x, align 1
  %scevgep271.1 = getelementptr i8, i8* %x, i64 1
  %39 = load i8, i8* %scevgep271.1, align 1
  %conv.i.i96.i.i.1 = zext i8 %39 to i32
  %conv1.i.i97.i.i.1 = zext i8 %38 to i32
  %xor.i.i98.i.i.1 = xor i32 %conv1.i.i97.i.i.1, %conv.i.i96.i.i.1
  %conv2.i.i99.i.i.1 = trunc i32 %xor.i.i98.i.i.1 to i8
  %scevgep271.2 = getelementptr i8, i8* %x, i64 2
  %40 = load i8, i8* %scevgep271.2, align 1
  %conv.i.i96.i.i.2 = zext i8 %40 to i32
  %conv1.i.i97.i.i.2 = zext i8 %conv2.i.i99.i.i.1 to i32
  %xor.i.i98.i.i.2 = xor i32 %conv1.i.i97.i.i.2, %conv.i.i96.i.i.2
  %conv2.i.i99.i.i.2 = trunc i32 %xor.i.i98.i.i.2 to i8
  %scevgep271.3 = getelementptr i8, i8* %x, i64 3
  %41 = load i8, i8* %scevgep271.3, align 1
  %conv.i.i96.i.i.3 = zext i8 %41 to i32
  %conv1.i.i97.i.i.3 = zext i8 %conv2.i.i99.i.i.2 to i32
  %xor.i.i98.i.i.3 = xor i32 %conv1.i.i97.i.i.3, %conv.i.i96.i.i.3
  %conv2.i.i99.i.i.3 = trunc i32 %xor.i.i98.i.i.3 to i8
  %scevgep271.4 = getelementptr i8, i8* %x, i64 4
  %42 = load i8, i8* %scevgep271.4, align 1
  %conv.i.i96.i.i.4 = zext i8 %42 to i32
  %conv1.i.i97.i.i.4 = zext i8 %conv2.i.i99.i.i.3 to i32
  %xor.i.i98.i.i.4 = xor i32 %conv1.i.i97.i.i.4, %conv.i.i96.i.i.4
  %conv2.i.i99.i.i.4 = trunc i32 %xor.i.i98.i.i.4 to i8
  %conv7.i.i = zext i8 %conv2.i.i99.i.i.4 to i32
  %cmp8.i.i = icmp eq i32 %conv5.i.i, %conv7.i.i
  call void @assume(i1 zeroext %cmp8.i.i) #3
  %scevgep248 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %scevgep248249 = bitcast i8* %scevgep248 to [5 x [5 x i8]]*
  %scevgep261 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %scevgep261262 = bitcast i8* %scevgep261 to [5 x [5 x i8]]*
  %call16.i.i = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.i, i8* %scevgep248, align 1
  %43 = load i8, i8* %scevgep248, align 1
  %conv23.i.i = zext i8 %43 to i32
  %44 = load i8, i8* %arraydecay5.i, align 1
  %scevgep259 = getelementptr i8, i8* %x, i64 1
  %45 = load i8, i8* %scevgep259, align 1
  %call28.i.i = call zeroext i8 @mult(i8 zeroext %44, i8 zeroext %45) #3
  %conv29.i.i = zext i8 %call28.i.i to i32
  %xor.i60.i = xor i32 %conv23.i.i, %conv29.i.i
  %scevgep260 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 1
  %46 = load i8, i8* %scevgep260, align 1
  %47 = load i8, i8* %x, align 1
  %call34.i.i = call zeroext i8 @mult(i8 zeroext %46, i8 zeroext %47) #3
  %conv35.i.i = zext i8 %call34.i.i to i32
  %xor36.i.i = xor i32 %xor.i60.i, %conv35.i.i
  %conv37.i.i = trunc i32 %xor36.i.i to i8
  store i8 %conv37.i.i, i8* %scevgep261, align 1
  %scevgep253 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep248249, i64 0, i64 0, i64 1
  %48 = bitcast i8* %scevgep253 to [5 x [5 x i8]]*
  %scevgep266 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep261262, i64 0, i64 1, i64 0
  %49 = bitcast i8* %scevgep266 to [5 x [5 x i8]]*
  %call16.i.i.1563 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.i.1563, i8* %scevgep253, align 1
  %50 = load i8, i8* %scevgep253, align 1
  %conv23.i.i.1564 = zext i8 %50 to i32
  %51 = load i8, i8* %arraydecay5.i, align 1
  %scevgep259.1565 = getelementptr i8, i8* %x, i64 2
  %52 = load i8, i8* %scevgep259.1565, align 1
  %call28.i.i.1566 = call zeroext i8 @mult(i8 zeroext %51, i8 zeroext %52) #3
  %conv29.i.i.1567 = zext i8 %call28.i.i.1566 to i32
  %xor.i60.i.1568 = xor i32 %conv23.i.i.1564, %conv29.i.i.1567
  %scevgep260.1569 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 2
  %53 = load i8, i8* %scevgep260.1569, align 1
  %54 = load i8, i8* %x, align 1
  %call34.i.i.1570 = call zeroext i8 @mult(i8 zeroext %53, i8 zeroext %54) #3
  %conv35.i.i.1571 = zext i8 %call34.i.i.1570 to i32
  %xor36.i.i.1572 = xor i32 %xor.i60.i.1568, %conv35.i.i.1571
  %conv37.i.i.1573 = trunc i32 %xor36.i.i.1572 to i8
  store i8 %conv37.i.i.1573, i8* %scevgep266, align 1
  %scevgep253.1574 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %48, i64 0, i64 0, i64 1
  %55 = bitcast i8* %scevgep253.1574 to [5 x [5 x i8]]*
  %scevgep266.1575 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %49, i64 0, i64 1, i64 0
  %56 = bitcast i8* %scevgep266.1575 to [5 x [5 x i8]]*
  %call16.i.i.2577 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.i.2577, i8* %scevgep253.1574, align 1
  %57 = load i8, i8* %scevgep253.1574, align 1
  %conv23.i.i.2578 = zext i8 %57 to i32
  %58 = load i8, i8* %arraydecay5.i, align 1
  %scevgep259.2579 = getelementptr i8, i8* %x, i64 3
  %59 = load i8, i8* %scevgep259.2579, align 1
  %call28.i.i.2580 = call zeroext i8 @mult(i8 zeroext %58, i8 zeroext %59) #3
  %conv29.i.i.2581 = zext i8 %call28.i.i.2580 to i32
  %xor.i60.i.2582 = xor i32 %conv23.i.i.2578, %conv29.i.i.2581
  %scevgep260.2583 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 3
  %60 = load i8, i8* %scevgep260.2583, align 1
  %61 = load i8, i8* %x, align 1
  %call34.i.i.2584 = call zeroext i8 @mult(i8 zeroext %60, i8 zeroext %61) #3
  %conv35.i.i.2585 = zext i8 %call34.i.i.2584 to i32
  %xor36.i.i.2586 = xor i32 %xor.i60.i.2582, %conv35.i.i.2585
  %conv37.i.i.2587 = trunc i32 %xor36.i.i.2586 to i8
  store i8 %conv37.i.i.2587, i8* %scevgep266.1575, align 1
  %scevgep253.2588 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %55, i64 0, i64 0, i64 1
  %scevgep266.2589 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %56, i64 0, i64 1, i64 0
  %call16.i.i.3591 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.i.3591, i8* %scevgep253.2588, align 1
  %62 = load i8, i8* %scevgep253.2588, align 1
  %conv23.i.i.3592 = zext i8 %62 to i32
  %63 = load i8, i8* %arraydecay5.i, align 1
  %scevgep259.3593 = getelementptr i8, i8* %x, i64 4
  %64 = load i8, i8* %scevgep259.3593, align 1
  %call28.i.i.3594 = call zeroext i8 @mult(i8 zeroext %63, i8 zeroext %64) #3
  %conv29.i.i.3595 = zext i8 %call28.i.i.3594 to i32
  %xor.i60.i.3596 = xor i32 %conv23.i.i.3592, %conv29.i.i.3595
  %scevgep260.3597 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 4
  %65 = load i8, i8* %scevgep260.3597, align 1
  %66 = load i8, i8* %x, align 1
  %call34.i.i.3598 = call zeroext i8 @mult(i8 zeroext %65, i8 zeroext %66) #3
  %conv35.i.i.3599 = zext i8 %call34.i.i.3598 to i32
  %xor36.i.i.3600 = xor i32 %xor.i60.i.3596, %conv35.i.i.3599
  %conv37.i.i.3601 = trunc i32 %xor36.i.i.3600 to i8
  store i8 %conv37.i.i.3601, i8* %scevgep266.2589, align 1
  %scevgep251 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep248249, i64 0, i64 1, i64 1
  %67 = bitcast i8* %scevgep251 to [5 x [5 x i8]]*
  %scevgep264 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep261262, i64 0, i64 1, i64 1
  %68 = bitcast i8* %scevgep264 to [5 x [5 x i8]]*
  %arrayidx25.i.i.1 = getelementptr inbounds i8, i8* %arraydecay5.i, i64 1
  %arrayidx33.i.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %call16.i.i.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.i.1, i8* %scevgep251, align 1
  %69 = load i8, i8* %scevgep251, align 1
  %conv23.i.i.1 = zext i8 %69 to i32
  %70 = load i8, i8* %arrayidx25.i.i.1, align 1
  %scevgep259.1 = getelementptr i8, i8* %x, i64 2
  %71 = load i8, i8* %scevgep259.1, align 1
  %call28.i.i.1 = call zeroext i8 @mult(i8 zeroext %70, i8 zeroext %71) #3
  %conv29.i.i.1 = zext i8 %call28.i.i.1 to i32
  %xor.i60.i.1 = xor i32 %conv23.i.i.1, %conv29.i.i.1
  %scevgep260.1 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 2
  %72 = load i8, i8* %scevgep260.1, align 1
  %73 = load i8, i8* %arrayidx33.i.i.1, align 1
  %call34.i.i.1 = call zeroext i8 @mult(i8 zeroext %72, i8 zeroext %73) #3
  %conv35.i.i.1 = zext i8 %call34.i.i.1 to i32
  %xor36.i.i.1 = xor i32 %xor.i60.i.1, %conv35.i.i.1
  %conv37.i.i.1 = trunc i32 %xor36.i.i.1 to i8
  store i8 %conv37.i.i.1, i8* %scevgep264, align 1
  %scevgep253.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %67, i64 0, i64 0, i64 1
  %74 = bitcast i8* %scevgep253.1 to [5 x [5 x i8]]*
  %scevgep266.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %68, i64 0, i64 1, i64 0
  %75 = bitcast i8* %scevgep266.1 to [5 x [5 x i8]]*
  %call16.i.i.1.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.i.1.1, i8* %scevgep253.1, align 1
  %76 = load i8, i8* %scevgep253.1, align 1
  %conv23.i.i.1.1 = zext i8 %76 to i32
  %77 = load i8, i8* %arrayidx25.i.i.1, align 1
  %scevgep259.1.1 = getelementptr i8, i8* %x, i64 3
  %78 = load i8, i8* %scevgep259.1.1, align 1
  %call28.i.i.1.1 = call zeroext i8 @mult(i8 zeroext %77, i8 zeroext %78) #3
  %conv29.i.i.1.1 = zext i8 %call28.i.i.1.1 to i32
  %xor.i60.i.1.1 = xor i32 %conv23.i.i.1.1, %conv29.i.i.1.1
  %scevgep260.1.1 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 3
  %79 = load i8, i8* %scevgep260.1.1, align 1
  %80 = load i8, i8* %arrayidx33.i.i.1, align 1
  %call34.i.i.1.1 = call zeroext i8 @mult(i8 zeroext %79, i8 zeroext %80) #3
  %conv35.i.i.1.1 = zext i8 %call34.i.i.1.1 to i32
  %xor36.i.i.1.1 = xor i32 %xor.i60.i.1.1, %conv35.i.i.1.1
  %conv37.i.i.1.1 = trunc i32 %xor36.i.i.1.1 to i8
  store i8 %conv37.i.i.1.1, i8* %scevgep266.1, align 1
  %scevgep253.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %74, i64 0, i64 0, i64 1
  %scevgep266.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %75, i64 0, i64 1, i64 0
  %call16.i.i.1.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.i.1.2, i8* %scevgep253.1.1, align 1
  %81 = load i8, i8* %scevgep253.1.1, align 1
  %conv23.i.i.1.2 = zext i8 %81 to i32
  %82 = load i8, i8* %arrayidx25.i.i.1, align 1
  %scevgep259.1.2 = getelementptr i8, i8* %x, i64 4
  %83 = load i8, i8* %scevgep259.1.2, align 1
  %call28.i.i.1.2 = call zeroext i8 @mult(i8 zeroext %82, i8 zeroext %83) #3
  %conv29.i.i.1.2 = zext i8 %call28.i.i.1.2 to i32
  %xor.i60.i.1.2 = xor i32 %conv23.i.i.1.2, %conv29.i.i.1.2
  %scevgep260.1.2 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 4
  %84 = load i8, i8* %scevgep260.1.2, align 1
  %85 = load i8, i8* %arrayidx33.i.i.1, align 1
  %call34.i.i.1.2 = call zeroext i8 @mult(i8 zeroext %84, i8 zeroext %85) #3
  %conv35.i.i.1.2 = zext i8 %call34.i.i.1.2 to i32
  %xor36.i.i.1.2 = xor i32 %xor.i60.i.1.2, %conv35.i.i.1.2
  %conv37.i.i.1.2 = trunc i32 %xor36.i.i.1.2 to i8
  store i8 %conv37.i.i.1.2, i8* %scevgep266.1.1, align 1
  %scevgep251.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %67, i64 0, i64 1, i64 1
  %86 = bitcast i8* %scevgep251.1 to [5 x [5 x i8]]*
  %scevgep264.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %68, i64 0, i64 1, i64 1
  %87 = bitcast i8* %scevgep264.1 to [5 x [5 x i8]]*
  %arrayidx25.i.i.2 = getelementptr inbounds i8, i8* %arraydecay5.i, i64 2
  %arrayidx33.i.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %call16.i.i.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.i.2, i8* %scevgep251.1, align 1
  %88 = load i8, i8* %scevgep251.1, align 1
  %conv23.i.i.2 = zext i8 %88 to i32
  %89 = load i8, i8* %arrayidx25.i.i.2, align 1
  %scevgep259.2 = getelementptr i8, i8* %x, i64 3
  %90 = load i8, i8* %scevgep259.2, align 1
  %call28.i.i.2 = call zeroext i8 @mult(i8 zeroext %89, i8 zeroext %90) #3
  %conv29.i.i.2 = zext i8 %call28.i.i.2 to i32
  %xor.i60.i.2 = xor i32 %conv23.i.i.2, %conv29.i.i.2
  %scevgep260.2 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 3
  %91 = load i8, i8* %scevgep260.2, align 1
  %92 = load i8, i8* %arrayidx33.i.i.2, align 1
  %call34.i.i.2 = call zeroext i8 @mult(i8 zeroext %91, i8 zeroext %92) #3
  %conv35.i.i.2 = zext i8 %call34.i.i.2 to i32
  %xor36.i.i.2 = xor i32 %xor.i60.i.2, %conv35.i.i.2
  %conv37.i.i.2 = trunc i32 %xor36.i.i.2 to i8
  store i8 %conv37.i.i.2, i8* %scevgep264.1, align 1
  %scevgep253.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %86, i64 0, i64 0, i64 1
  %scevgep266.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %87, i64 0, i64 1, i64 0
  %call16.i.i.2.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.i.2.1, i8* %scevgep253.2, align 1
  %93 = load i8, i8* %scevgep253.2, align 1
  %conv23.i.i.2.1 = zext i8 %93 to i32
  %94 = load i8, i8* %arrayidx25.i.i.2, align 1
  %scevgep259.2.1 = getelementptr i8, i8* %x, i64 4
  %95 = load i8, i8* %scevgep259.2.1, align 1
  %call28.i.i.2.1 = call zeroext i8 @mult(i8 zeroext %94, i8 zeroext %95) #3
  %conv29.i.i.2.1 = zext i8 %call28.i.i.2.1 to i32
  %xor.i60.i.2.1 = xor i32 %conv23.i.i.2.1, %conv29.i.i.2.1
  %scevgep260.2.1 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 4
  %96 = load i8, i8* %scevgep260.2.1, align 1
  %97 = load i8, i8* %arrayidx33.i.i.2, align 1
  %call34.i.i.2.1 = call zeroext i8 @mult(i8 zeroext %96, i8 zeroext %97) #3
  %conv35.i.i.2.1 = zext i8 %call34.i.i.2.1 to i32
  %xor36.i.i.2.1 = xor i32 %xor.i60.i.2.1, %conv35.i.i.2.1
  %conv37.i.i.2.1 = trunc i32 %xor36.i.i.2.1 to i8
  store i8 %conv37.i.i.2.1, i8* %scevgep266.2, align 1
  %scevgep251.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %86, i64 0, i64 1, i64 1
  %scevgep264.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %87, i64 0, i64 1, i64 1
  %arrayidx25.i.i.3 = getelementptr inbounds i8, i8* %arraydecay5.i, i64 3
  %arrayidx33.i.i.3 = getelementptr inbounds i8, i8* %x, i64 3
  %call16.i.i.3 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.i.3, i8* %scevgep251.2, align 1
  %98 = load i8, i8* %scevgep251.2, align 1
  %conv23.i.i.3 = zext i8 %98 to i32
  %99 = load i8, i8* %arrayidx25.i.i.3, align 1
  %scevgep259.3 = getelementptr i8, i8* %x, i64 4
  %100 = load i8, i8* %scevgep259.3, align 1
  %call28.i.i.3 = call zeroext i8 @mult(i8 zeroext %99, i8 zeroext %100) #3
  %conv29.i.i.3 = zext i8 %call28.i.i.3 to i32
  %xor.i60.i.3 = xor i32 %conv23.i.i.3, %conv29.i.i.3
  %scevgep260.3 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 4
  %101 = load i8, i8* %scevgep260.3, align 1
  %102 = load i8, i8* %arrayidx33.i.i.3, align 1
  %call34.i.i.3 = call zeroext i8 @mult(i8 zeroext %101, i8 zeroext %102) #3
  %conv35.i.i.3 = zext i8 %call34.i.i.3 to i32
  %xor36.i.i.3 = xor i32 %xor.i60.i.3, %conv35.i.i.3
  %conv37.i.i.3 = trunc i32 %xor36.i.i.3 to i8
  store i8 %conv37.i.i.3, i8* %scevgep264.2, align 1
  %103 = load i8, i8* %arraydecay5.i, align 1
  %104 = load i8, i8* %x, align 1
  %call54.i.i = call zeroext i8 @mult(i8 zeroext %103, i8 zeroext %104) #3
  store i8 %call54.i.i, i8* %arraydecay6.i, align 1
  %scevgep244.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %105 = load i8, i8* %scevgep244.1, align 1
  %conv68.i.i.1 = zext i8 %105 to i32
  %106 = load i8, i8* %arraydecay6.i, align 1
  %conv71.i.i.1 = zext i8 %106 to i32
  %xor72.i.i.1 = xor i32 %conv71.i.i.1, %conv68.i.i.1
  %conv73.i.i.1 = trunc i32 %xor72.i.i.1 to i8
  store i8 %conv73.i.i.1, i8* %arraydecay6.i, align 1
  %scevgep244.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %107 = load i8, i8* %scevgep244.2, align 1
  %conv68.i.i.2 = zext i8 %107 to i32
  %108 = load i8, i8* %arraydecay6.i, align 1
  %conv71.i.i.2 = zext i8 %108 to i32
  %xor72.i.i.2 = xor i32 %conv71.i.i.2, %conv68.i.i.2
  %conv73.i.i.2 = trunc i32 %xor72.i.i.2 to i8
  store i8 %conv73.i.i.2, i8* %arraydecay6.i, align 1
  %scevgep244.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  %109 = load i8, i8* %scevgep244.3, align 1
  %conv68.i.i.3 = zext i8 %109 to i32
  %110 = load i8, i8* %arraydecay6.i, align 1
  %conv71.i.i.3 = zext i8 %110 to i32
  %xor72.i.i.3 = xor i32 %conv71.i.i.3, %conv68.i.i.3
  %conv73.i.i.3 = trunc i32 %xor72.i.i.3 to i8
  store i8 %conv73.i.i.3, i8* %arraydecay6.i, align 1
  %scevgep244.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 4
  %111 = load i8, i8* %scevgep244.4, align 1
  %conv68.i.i.4 = zext i8 %111 to i32
  %112 = load i8, i8* %arraydecay6.i, align 1
  %conv71.i.i.4 = zext i8 %112 to i32
  %xor72.i.i.4 = xor i32 %conv71.i.i.4, %conv68.i.i.4
  %conv73.i.i.4 = trunc i32 %xor72.i.i.4 to i8
  store i8 %conv73.i.i.4, i8* %arraydecay6.i, align 1
  %scevgep243 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %113 = bitcast i8* %scevgep243 to [5 x [5 x i8]]*
  %arrayidx51.i.i.1 = getelementptr inbounds i8, i8* %arraydecay5.i, i64 1
  %114 = load i8, i8* %arrayidx51.i.i.1, align 1
  %arrayidx53.i.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %115 = load i8, i8* %arrayidx53.i.i.1, align 1
  %call54.i.i.1 = call zeroext i8 @mult(i8 zeroext %114, i8 zeroext %115) #3
  %arrayidx56.i.i.1 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 1
  store i8 %call54.i.i.1, i8* %arrayidx56.i.i.1, align 1
  %arrayidx70.i.i.1 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 1
  %scevgep244.1412 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %113, i64 0, i64 0, i64 0
  %116 = load i8, i8* %scevgep244.1412, align 1
  %conv68.i.i.1413 = zext i8 %116 to i32
  %117 = load i8, i8* %arrayidx70.i.i.1, align 1
  %conv71.i.i.1414 = zext i8 %117 to i32
  %xor72.i.i.1415 = xor i32 %conv71.i.i.1414, %conv68.i.i.1413
  %conv73.i.i.1416 = trunc i32 %xor72.i.i.1415 to i8
  store i8 %conv73.i.i.1416, i8* %arrayidx70.i.i.1, align 1
  %scevgep244.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %113, i64 0, i64 0, i64 2
  %118 = load i8, i8* %scevgep244.2.1, align 1
  %conv68.i.i.2.1 = zext i8 %118 to i32
  %119 = load i8, i8* %arrayidx70.i.i.1, align 1
  %conv71.i.i.2.1 = zext i8 %119 to i32
  %xor72.i.i.2.1 = xor i32 %conv71.i.i.2.1, %conv68.i.i.2.1
  %conv73.i.i.2.1 = trunc i32 %xor72.i.i.2.1 to i8
  store i8 %conv73.i.i.2.1, i8* %arrayidx70.i.i.1, align 1
  %scevgep244.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %113, i64 0, i64 0, i64 3
  %120 = load i8, i8* %scevgep244.3.1, align 1
  %conv68.i.i.3.1 = zext i8 %120 to i32
  %121 = load i8, i8* %arrayidx70.i.i.1, align 1
  %conv71.i.i.3.1 = zext i8 %121 to i32
  %xor72.i.i.3.1 = xor i32 %conv71.i.i.3.1, %conv68.i.i.3.1
  %conv73.i.i.3.1 = trunc i32 %xor72.i.i.3.1 to i8
  store i8 %conv73.i.i.3.1, i8* %arrayidx70.i.i.1, align 1
  %scevgep244.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %113, i64 0, i64 0, i64 4
  %122 = load i8, i8* %scevgep244.4.1, align 1
  %conv68.i.i.4.1 = zext i8 %122 to i32
  %123 = load i8, i8* %arrayidx70.i.i.1, align 1
  %conv71.i.i.4.1 = zext i8 %123 to i32
  %xor72.i.i.4.1 = xor i32 %conv71.i.i.4.1, %conv68.i.i.4.1
  %conv73.i.i.4.1 = trunc i32 %xor72.i.i.4.1 to i8
  store i8 %conv73.i.i.4.1, i8* %arrayidx70.i.i.1, align 1
  %scevgep243.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %113, i64 0, i64 1, i64 0
  %124 = bitcast i8* %scevgep243.1 to [5 x [5 x i8]]*
  %arrayidx51.i.i.2 = getelementptr inbounds i8, i8* %arraydecay5.i, i64 2
  %125 = load i8, i8* %arrayidx51.i.i.2, align 1
  %arrayidx53.i.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %126 = load i8, i8* %arrayidx53.i.i.2, align 1
  %call54.i.i.2 = call zeroext i8 @mult(i8 zeroext %125, i8 zeroext %126) #3
  %arrayidx56.i.i.2 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 2
  store i8 %call54.i.i.2, i8* %arrayidx56.i.i.2, align 1
  %arrayidx70.i.i.2 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 2
  %scevgep244.2421 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %124, i64 0, i64 0, i64 0
  %127 = load i8, i8* %scevgep244.2421, align 1
  %conv68.i.i.2422 = zext i8 %127 to i32
  %128 = load i8, i8* %arrayidx70.i.i.2, align 1
  %conv71.i.i.2423 = zext i8 %128 to i32
  %xor72.i.i.2424 = xor i32 %conv71.i.i.2423, %conv68.i.i.2422
  %conv73.i.i.2425 = trunc i32 %xor72.i.i.2424 to i8
  store i8 %conv73.i.i.2425, i8* %arrayidx70.i.i.2, align 1
  %scevgep244.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %124, i64 0, i64 0, i64 1
  %129 = load i8, i8* %scevgep244.1.2, align 1
  %conv68.i.i.1.2 = zext i8 %129 to i32
  %130 = load i8, i8* %arrayidx70.i.i.2, align 1
  %conv71.i.i.1.2 = zext i8 %130 to i32
  %xor72.i.i.1.2 = xor i32 %conv71.i.i.1.2, %conv68.i.i.1.2
  %conv73.i.i.1.2 = trunc i32 %xor72.i.i.1.2 to i8
  store i8 %conv73.i.i.1.2, i8* %arrayidx70.i.i.2, align 1
  %scevgep244.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %124, i64 0, i64 0, i64 3
  %131 = load i8, i8* %scevgep244.3.2, align 1
  %conv68.i.i.3.2 = zext i8 %131 to i32
  %132 = load i8, i8* %arrayidx70.i.i.2, align 1
  %conv71.i.i.3.2 = zext i8 %132 to i32
  %xor72.i.i.3.2 = xor i32 %conv71.i.i.3.2, %conv68.i.i.3.2
  %conv73.i.i.3.2 = trunc i32 %xor72.i.i.3.2 to i8
  store i8 %conv73.i.i.3.2, i8* %arrayidx70.i.i.2, align 1
  %scevgep244.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %124, i64 0, i64 0, i64 4
  %133 = load i8, i8* %scevgep244.4.2, align 1
  %conv68.i.i.4.2 = zext i8 %133 to i32
  %134 = load i8, i8* %arrayidx70.i.i.2, align 1
  %conv71.i.i.4.2 = zext i8 %134 to i32
  %xor72.i.i.4.2 = xor i32 %conv71.i.i.4.2, %conv68.i.i.4.2
  %conv73.i.i.4.2 = trunc i32 %xor72.i.i.4.2 to i8
  store i8 %conv73.i.i.4.2, i8* %arrayidx70.i.i.2, align 1
  %scevgep243.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %124, i64 0, i64 1, i64 0
  %135 = bitcast i8* %scevgep243.2 to [5 x [5 x i8]]*
  %arrayidx51.i.i.3 = getelementptr inbounds i8, i8* %arraydecay5.i, i64 3
  %136 = load i8, i8* %arrayidx51.i.i.3, align 1
  %arrayidx53.i.i.3 = getelementptr inbounds i8, i8* %x, i64 3
  %137 = load i8, i8* %arrayidx53.i.i.3, align 1
  %call54.i.i.3 = call zeroext i8 @mult(i8 zeroext %136, i8 zeroext %137) #3
  %arrayidx56.i.i.3 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 3
  store i8 %call54.i.i.3, i8* %arrayidx56.i.i.3, align 1
  %arrayidx70.i.i.3 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 3
  %scevgep244.3430 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %135, i64 0, i64 0, i64 0
  %138 = load i8, i8* %scevgep244.3430, align 1
  %conv68.i.i.3431 = zext i8 %138 to i32
  %139 = load i8, i8* %arrayidx70.i.i.3, align 1
  %conv71.i.i.3432 = zext i8 %139 to i32
  %xor72.i.i.3433 = xor i32 %conv71.i.i.3432, %conv68.i.i.3431
  %conv73.i.i.3434 = trunc i32 %xor72.i.i.3433 to i8
  store i8 %conv73.i.i.3434, i8* %arrayidx70.i.i.3, align 1
  %scevgep244.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %135, i64 0, i64 0, i64 1
  %140 = load i8, i8* %scevgep244.1.3, align 1
  %conv68.i.i.1.3 = zext i8 %140 to i32
  %141 = load i8, i8* %arrayidx70.i.i.3, align 1
  %conv71.i.i.1.3 = zext i8 %141 to i32
  %xor72.i.i.1.3 = xor i32 %conv71.i.i.1.3, %conv68.i.i.1.3
  %conv73.i.i.1.3 = trunc i32 %xor72.i.i.1.3 to i8
  store i8 %conv73.i.i.1.3, i8* %arrayidx70.i.i.3, align 1
  %scevgep244.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %135, i64 0, i64 0, i64 2
  %142 = load i8, i8* %scevgep244.2.3, align 1
  %conv68.i.i.2.3 = zext i8 %142 to i32
  %143 = load i8, i8* %arrayidx70.i.i.3, align 1
  %conv71.i.i.2.3 = zext i8 %143 to i32
  %xor72.i.i.2.3 = xor i32 %conv71.i.i.2.3, %conv68.i.i.2.3
  %conv73.i.i.2.3 = trunc i32 %xor72.i.i.2.3 to i8
  store i8 %conv73.i.i.2.3, i8* %arrayidx70.i.i.3, align 1
  %scevgep244.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %135, i64 0, i64 0, i64 4
  %144 = load i8, i8* %scevgep244.4.3, align 1
  %conv68.i.i.4.3 = zext i8 %144 to i32
  %145 = load i8, i8* %arrayidx70.i.i.3, align 1
  %conv71.i.i.4.3 = zext i8 %145 to i32
  %xor72.i.i.4.3 = xor i32 %conv71.i.i.4.3, %conv68.i.i.4.3
  %conv73.i.i.4.3 = trunc i32 %xor72.i.i.4.3 to i8
  store i8 %conv73.i.i.4.3, i8* %arrayidx70.i.i.3, align 1
  %scevgep243.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %135, i64 0, i64 1, i64 0
  %146 = bitcast i8* %scevgep243.3 to [5 x [5 x i8]]*
  %arrayidx51.i.i.4 = getelementptr inbounds i8, i8* %arraydecay5.i, i64 4
  %147 = load i8, i8* %arrayidx51.i.i.4, align 1
  %arrayidx53.i.i.4 = getelementptr inbounds i8, i8* %x, i64 4
  %148 = load i8, i8* %arrayidx53.i.i.4, align 1
  %call54.i.i.4 = call zeroext i8 @mult(i8 zeroext %147, i8 zeroext %148) #3
  %arrayidx56.i.i.4 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 4
  store i8 %call54.i.i.4, i8* %arrayidx56.i.i.4, align 1
  %arrayidx70.i.i.4 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 4
  %scevgep244.4439 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %146, i64 0, i64 0, i64 0
  %149 = load i8, i8* %scevgep244.4439, align 1
  %conv68.i.i.4440 = zext i8 %149 to i32
  %150 = load i8, i8* %arrayidx70.i.i.4, align 1
  %conv71.i.i.4441 = zext i8 %150 to i32
  %xor72.i.i.4442 = xor i32 %conv71.i.i.4441, %conv68.i.i.4440
  %conv73.i.i.4443 = trunc i32 %xor72.i.i.4442 to i8
  store i8 %conv73.i.i.4443, i8* %arrayidx70.i.i.4, align 1
  %scevgep244.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %146, i64 0, i64 0, i64 1
  %151 = load i8, i8* %scevgep244.1.4, align 1
  %conv68.i.i.1.4 = zext i8 %151 to i32
  %152 = load i8, i8* %arrayidx70.i.i.4, align 1
  %conv71.i.i.1.4 = zext i8 %152 to i32
  %xor72.i.i.1.4 = xor i32 %conv71.i.i.1.4, %conv68.i.i.1.4
  %conv73.i.i.1.4 = trunc i32 %xor72.i.i.1.4 to i8
  store i8 %conv73.i.i.1.4, i8* %arrayidx70.i.i.4, align 1
  %scevgep244.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %146, i64 0, i64 0, i64 2
  %153 = load i8, i8* %scevgep244.2.4, align 1
  %conv68.i.i.2.4 = zext i8 %153 to i32
  %154 = load i8, i8* %arrayidx70.i.i.4, align 1
  %conv71.i.i.2.4 = zext i8 %154 to i32
  %xor72.i.i.2.4 = xor i32 %conv71.i.i.2.4, %conv68.i.i.2.4
  %conv73.i.i.2.4 = trunc i32 %xor72.i.i.2.4 to i8
  store i8 %conv73.i.i.2.4, i8* %arrayidx70.i.i.4, align 1
  %scevgep244.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %146, i64 0, i64 0, i64 3
  %155 = load i8, i8* %scevgep244.3.4, align 1
  %conv68.i.i.3.4 = zext i8 %155 to i32
  %156 = load i8, i8* %arrayidx70.i.i.4, align 1
  %conv71.i.i.3.4 = zext i8 %156 to i32
  %xor72.i.i.3.4 = xor i32 %conv71.i.i.3.4, %conv68.i.i.3.4
  %conv73.i.i.3.4 = trunc i32 %xor72.i.i.3.4 to i8
  store i8 %conv73.i.i.3.4, i8* %arrayidx70.i.i.4, align 1
  %call80.i.i = call zeroext i8 @mult(i8 zeroext %call.i41.i, i8 zeroext %call1.i.i) #3
  %conv81.i.i = zext i8 %call80.i.i to i32
  %scevgep234 = getelementptr [5 x i8], [5 x i8]* %u.i, i64 0, i64 0
  %157 = load i8, i8* %scevgep234, align 1
  %scevgep234.1 = getelementptr [5 x i8], [5 x i8]* %u.i, i64 0, i64 1
  %158 = load i8, i8* %scevgep234.1, align 1
  %conv.i.i113.i.i.1 = zext i8 %158 to i32
  %conv1.i.i114.i.i.1 = zext i8 %157 to i32
  %xor.i.i115.i.i.1 = xor i32 %conv1.i.i114.i.i.1, %conv.i.i113.i.i.1
  %conv2.i.i116.i.i.1 = trunc i32 %xor.i.i115.i.i.1 to i8
  %scevgep234.2 = getelementptr [5 x i8], [5 x i8]* %u.i, i64 0, i64 2
  %159 = load i8, i8* %scevgep234.2, align 1
  %conv.i.i113.i.i.2 = zext i8 %159 to i32
  %conv1.i.i114.i.i.2 = zext i8 %conv2.i.i116.i.i.1 to i32
  %xor.i.i115.i.i.2 = xor i32 %conv1.i.i114.i.i.2, %conv.i.i113.i.i.2
  %conv2.i.i116.i.i.2 = trunc i32 %xor.i.i115.i.i.2 to i8
  %scevgep234.3 = getelementptr [5 x i8], [5 x i8]* %u.i, i64 0, i64 3
  %160 = load i8, i8* %scevgep234.3, align 1
  %conv.i.i113.i.i.3 = zext i8 %160 to i32
  %conv1.i.i114.i.i.3 = zext i8 %conv2.i.i116.i.i.2 to i32
  %xor.i.i115.i.i.3 = xor i32 %conv1.i.i114.i.i.3, %conv.i.i113.i.i.3
  %conv2.i.i116.i.i.3 = trunc i32 %xor.i.i115.i.i.3 to i8
  %scevgep234.4 = getelementptr [5 x i8], [5 x i8]* %u.i, i64 0, i64 4
  %161 = load i8, i8* %scevgep234.4, align 1
  %conv.i.i113.i.i.4 = zext i8 %161 to i32
  %conv1.i.i114.i.i.4 = zext i8 %conv2.i.i116.i.i.3 to i32
  %xor.i.i115.i.i.4 = xor i32 %conv1.i.i114.i.i.4, %conv.i.i113.i.i.4
  %conv2.i.i116.i.i.4 = trunc i32 %xor.i.i115.i.i.4 to i8
  %conv83.i.i = zext i8 %conv2.i.i116.i.i.4 to i32
  %cmp84.i.i = icmp eq i32 %conv81.i.i, %conv83.i.i
  call void @assert(i1 zeroext %cmp84.i.i) #3
  %scevgep229 = getelementptr [5 x i8], [5 x i8]* %u.i, i64 0, i64 0
  %162 = load i8, i8* %scevgep229, align 1
  %call.i71.i = call zeroext i8 @exp4(i8 zeroext %162) #3
  %scevgep230 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 0
  store i8 %call.i71.i, i8* %scevgep230, align 1
  %scevgep229.1 = getelementptr [5 x i8], [5 x i8]* %u.i, i64 0, i64 1
  %163 = load i8, i8* %scevgep229.1, align 1
  %call.i71.i.1 = call zeroext i8 @exp4(i8 zeroext %163) #3
  %scevgep230.1 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 1
  store i8 %call.i71.i.1, i8* %scevgep230.1, align 1
  %scevgep229.2 = getelementptr [5 x i8], [5 x i8]* %u.i, i64 0, i64 2
  %164 = load i8, i8* %scevgep229.2, align 1
  %call.i71.i.2 = call zeroext i8 @exp4(i8 zeroext %164) #3
  %scevgep230.2 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 2
  store i8 %call.i71.i.2, i8* %scevgep230.2, align 1
  %scevgep229.3 = getelementptr [5 x i8], [5 x i8]* %u.i, i64 0, i64 3
  %165 = load i8, i8* %scevgep229.3, align 1
  %call.i71.i.3 = call zeroext i8 @exp4(i8 zeroext %165) #3
  %scevgep230.3 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 3
  store i8 %call.i71.i.3, i8* %scevgep230.3, align 1
  %scevgep229.4 = getelementptr [5 x i8], [5 x i8]* %u.i, i64 0, i64 4
  %166 = load i8, i8* %scevgep229.4, align 1
  %call.i71.i.4 = call zeroext i8 @exp4(i8 zeroext %166) #3
  %scevgep230.4 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 4
  store i8 %call.i71.i.4, i8* %scevgep230.4, align 1
  %arraydecay9.i = getelementptr inbounds [5 x i8], [5 x i8]* %w.i, i64 0, i64 0
  %call.i92.i = call zeroext i8 (...) @rand() #3
  %conv.i93.i = zext i8 %call.i92.i to i32
  %scevgep225 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 0
  %167 = load i8, i8* %scevgep225, align 1
  %scevgep225.1 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 1
  %168 = load i8, i8* %scevgep225.1, align 1
  %conv.i.i.i99.i.1 = zext i8 %168 to i32
  %conv1.i.i.i100.i.1 = zext i8 %167 to i32
  %xor.i.i.i101.i.1 = xor i32 %conv1.i.i.i100.i.1, %conv.i.i.i99.i.1
  %conv2.i.i.i102.i.1 = trunc i32 %xor.i.i.i101.i.1 to i8
  %scevgep225.2 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 2
  %169 = load i8, i8* %scevgep225.2, align 1
  %conv.i.i.i99.i.2 = zext i8 %169 to i32
  %conv1.i.i.i100.i.2 = zext i8 %conv2.i.i.i102.i.1 to i32
  %xor.i.i.i101.i.2 = xor i32 %conv1.i.i.i100.i.2, %conv.i.i.i99.i.2
  %conv2.i.i.i102.i.2 = trunc i32 %xor.i.i.i101.i.2 to i8
  %scevgep225.3 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 3
  %170 = load i8, i8* %scevgep225.3, align 1
  %conv.i.i.i99.i.3 = zext i8 %170 to i32
  %conv1.i.i.i100.i.3 = zext i8 %conv2.i.i.i102.i.2 to i32
  %xor.i.i.i101.i.3 = xor i32 %conv1.i.i.i100.i.3, %conv.i.i.i99.i.3
  %conv2.i.i.i102.i.3 = trunc i32 %xor.i.i.i101.i.3 to i8
  %scevgep225.4 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 4
  %171 = load i8, i8* %scevgep225.4, align 1
  %conv.i.i.i99.i.4 = zext i8 %171 to i32
  %conv1.i.i.i100.i.4 = zext i8 %conv2.i.i.i102.i.3 to i32
  %xor.i.i.i101.i.4 = xor i32 %conv1.i.i.i100.i.4, %conv.i.i.i99.i.4
  %conv2.i.i.i102.i.4 = trunc i32 %xor.i.i.i101.i.4 to i8
  %conv2.i105.i = zext i8 %conv2.i.i.i102.i.4 to i32
  %cmp.i106.i = icmp eq i32 %conv.i93.i, %conv2.i105.i
  call void @assume(i1 zeroext %cmp.i106.i) #3
  %call7.i111.i = call zeroext i8 (...) @rand() #3
  %conv8.i112.i = zext i8 %call7.i111.i to i32
  %172 = load i8, i8* %arraydecay9.i, align 1
  %conv9.i113.i = zext i8 %172 to i32
  %xor.i114.i = xor i32 %conv9.i113.i, %conv8.i112.i
  %conv10.i115.i = trunc i32 %xor.i114.i to i8
  store i8 %conv10.i115.i, i8* %arraydecay9.i, align 1
  %conv11.i116.i = zext i8 %call7.i111.i to i32
  %scevgep221 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 1
  %173 = load i8, i8* %scevgep221, align 1
  %conv13.i119.i = zext i8 %173 to i32
  %xor14.i120.i = xor i32 %conv13.i119.i, %conv11.i116.i
  %conv15.i121.i = trunc i32 %xor14.i120.i to i8
  store i8 %conv15.i121.i, i8* %scevgep221, align 1
  %call7.i111.i.1 = call zeroext i8 (...) @rand() #3
  %conv8.i112.i.1 = zext i8 %call7.i111.i.1 to i32
  %174 = load i8, i8* %arraydecay9.i, align 1
  %conv9.i113.i.1 = zext i8 %174 to i32
  %xor.i114.i.1 = xor i32 %conv9.i113.i.1, %conv8.i112.i.1
  %conv10.i115.i.1 = trunc i32 %xor.i114.i.1 to i8
  store i8 %conv10.i115.i.1, i8* %arraydecay9.i, align 1
  %conv11.i116.i.1 = zext i8 %call7.i111.i.1 to i32
  %scevgep221.1 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 2
  %175 = load i8, i8* %scevgep221.1, align 1
  %conv13.i119.i.1 = zext i8 %175 to i32
  %xor14.i120.i.1 = xor i32 %conv13.i119.i.1, %conv11.i116.i.1
  %conv15.i121.i.1 = trunc i32 %xor14.i120.i.1 to i8
  store i8 %conv15.i121.i.1, i8* %scevgep221.1, align 1
  %call7.i111.i.2 = call zeroext i8 (...) @rand() #3
  %conv8.i112.i.2 = zext i8 %call7.i111.i.2 to i32
  %176 = load i8, i8* %arraydecay9.i, align 1
  %conv9.i113.i.2 = zext i8 %176 to i32
  %xor.i114.i.2 = xor i32 %conv9.i113.i.2, %conv8.i112.i.2
  %conv10.i115.i.2 = trunc i32 %xor.i114.i.2 to i8
  store i8 %conv10.i115.i.2, i8* %arraydecay9.i, align 1
  %conv11.i116.i.2 = zext i8 %call7.i111.i.2 to i32
  %scevgep221.2 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 3
  %177 = load i8, i8* %scevgep221.2, align 1
  %conv13.i119.i.2 = zext i8 %177 to i32
  %xor14.i120.i.2 = xor i32 %conv13.i119.i.2, %conv11.i116.i.2
  %conv15.i121.i.2 = trunc i32 %xor14.i120.i.2 to i8
  store i8 %conv15.i121.i.2, i8* %scevgep221.2, align 1
  %call7.i111.i.3 = call zeroext i8 (...) @rand() #3
  %conv8.i112.i.3 = zext i8 %call7.i111.i.3 to i32
  %178 = load i8, i8* %arraydecay9.i, align 1
  %conv9.i113.i.3 = zext i8 %178 to i32
  %xor.i114.i.3 = xor i32 %conv9.i113.i.3, %conv8.i112.i.3
  %conv10.i115.i.3 = trunc i32 %xor.i114.i.3 to i8
  store i8 %conv10.i115.i.3, i8* %arraydecay9.i, align 1
  %conv11.i116.i.3 = zext i8 %call7.i111.i.3 to i32
  %scevgep221.3 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 4
  %179 = load i8, i8* %scevgep221.3, align 1
  %conv13.i119.i.3 = zext i8 %179 to i32
  %xor14.i120.i.3 = xor i32 %conv13.i119.i.3, %conv11.i116.i.3
  %conv15.i121.i.3 = trunc i32 %xor14.i120.i.3 to i8
  store i8 %conv15.i121.i.3, i8* %scevgep221.3, align 1
  %conv16.i124.i = zext i8 %call.i92.i to i32
  %scevgep217 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 0
  %180 = load i8, i8* %scevgep217, align 1
  %scevgep217.1 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 1
  %181 = load i8, i8* %scevgep217.1, align 1
  %conv.i.i31.i131.i.1 = zext i8 %181 to i32
  %conv1.i.i32.i132.i.1 = zext i8 %180 to i32
  %xor.i.i33.i133.i.1 = xor i32 %conv1.i.i32.i132.i.1, %conv.i.i31.i131.i.1
  %conv2.i.i34.i134.i.1 = trunc i32 %xor.i.i33.i133.i.1 to i8
  %scevgep217.2 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 2
  %182 = load i8, i8* %scevgep217.2, align 1
  %conv.i.i31.i131.i.2 = zext i8 %182 to i32
  %conv1.i.i32.i132.i.2 = zext i8 %conv2.i.i34.i134.i.1 to i32
  %xor.i.i33.i133.i.2 = xor i32 %conv1.i.i32.i132.i.2, %conv.i.i31.i131.i.2
  %conv2.i.i34.i134.i.2 = trunc i32 %xor.i.i33.i133.i.2 to i8
  %scevgep217.3 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 3
  %183 = load i8, i8* %scevgep217.3, align 1
  %conv.i.i31.i131.i.3 = zext i8 %183 to i32
  %conv1.i.i32.i132.i.3 = zext i8 %conv2.i.i34.i134.i.2 to i32
  %xor.i.i33.i133.i.3 = xor i32 %conv1.i.i32.i132.i.3, %conv.i.i31.i131.i.3
  %conv2.i.i34.i134.i.3 = trunc i32 %xor.i.i33.i133.i.3 to i8
  %scevgep217.4 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 4
  %184 = load i8, i8* %scevgep217.4, align 1
  %conv.i.i31.i131.i.4 = zext i8 %184 to i32
  %conv1.i.i32.i132.i.4 = zext i8 %conv2.i.i34.i134.i.3 to i32
  %xor.i.i33.i133.i.4 = xor i32 %conv1.i.i32.i132.i.4, %conv.i.i31.i131.i.4
  %conv2.i.i34.i134.i.4 = trunc i32 %xor.i.i33.i133.i.4 to i8
  %conv18.i137.i = zext i8 %conv2.i.i34.i134.i.4 to i32
  %cmp19.i138.i = icmp eq i32 %conv16.i124.i, %conv18.i137.i
  call void @assert(i1 zeroext %cmp19.i138.i) #3
  %arraydecay10.i = getelementptr inbounds [5 x i8], [5 x i8]* %u.i, i64 0, i64 0
  %arraydecay11.i = getelementptr inbounds [5 x i8], [5 x i8]* %w.i, i64 0, i64 0
  %arraydecay12.i = getelementptr inbounds [5 x i8], [5 x i8]* %v.i, i64 0, i64 0
  %call.i165.i = call zeroext i8 (...) @rand() #3
  %call1.i166.i = call zeroext i8 (...) @rand() #3
  %conv.i167.i = zext i8 %call.i165.i to i32
  %scevgep213 = getelementptr [5 x i8], [5 x i8]* %u.i, i64 0, i64 0
  %185 = load i8, i8* %scevgep213, align 1
  %scevgep213.1 = getelementptr [5 x i8], [5 x i8]* %u.i, i64 0, i64 1
  %186 = load i8, i8* %scevgep213.1, align 1
  %conv.i.i.i173.i.1 = zext i8 %186 to i32
  %conv1.i.i.i174.i.1 = zext i8 %185 to i32
  %xor.i.i.i175.i.1 = xor i32 %conv1.i.i.i174.i.1, %conv.i.i.i173.i.1
  %conv2.i.i.i176.i.1 = trunc i32 %xor.i.i.i175.i.1 to i8
  %scevgep213.2 = getelementptr [5 x i8], [5 x i8]* %u.i, i64 0, i64 2
  %187 = load i8, i8* %scevgep213.2, align 1
  %conv.i.i.i173.i.2 = zext i8 %187 to i32
  %conv1.i.i.i174.i.2 = zext i8 %conv2.i.i.i176.i.1 to i32
  %xor.i.i.i175.i.2 = xor i32 %conv1.i.i.i174.i.2, %conv.i.i.i173.i.2
  %conv2.i.i.i176.i.2 = trunc i32 %xor.i.i.i175.i.2 to i8
  %scevgep213.3 = getelementptr [5 x i8], [5 x i8]* %u.i, i64 0, i64 3
  %188 = load i8, i8* %scevgep213.3, align 1
  %conv.i.i.i173.i.3 = zext i8 %188 to i32
  %conv1.i.i.i174.i.3 = zext i8 %conv2.i.i.i176.i.2 to i32
  %xor.i.i.i175.i.3 = xor i32 %conv1.i.i.i174.i.3, %conv.i.i.i173.i.3
  %conv2.i.i.i176.i.3 = trunc i32 %xor.i.i.i175.i.3 to i8
  %scevgep213.4 = getelementptr [5 x i8], [5 x i8]* %u.i, i64 0, i64 4
  %189 = load i8, i8* %scevgep213.4, align 1
  %conv.i.i.i173.i.4 = zext i8 %189 to i32
  %conv1.i.i.i174.i.4 = zext i8 %conv2.i.i.i176.i.3 to i32
  %xor.i.i.i175.i.4 = xor i32 %conv1.i.i.i174.i.4, %conv.i.i.i173.i.4
  %conv2.i.i.i176.i.4 = trunc i32 %xor.i.i.i175.i.4 to i8
  %conv3.i179.i = zext i8 %conv2.i.i.i176.i.4 to i32
  %cmp.i180.i = icmp eq i32 %conv.i167.i, %conv3.i179.i
  call void @assume(i1 zeroext %cmp.i180.i) #3
  %conv5.i181.i = zext i8 %call1.i166.i to i32
  %scevgep209 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 0
  %190 = load i8, i8* %scevgep209, align 1
  %scevgep209.1 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 1
  %191 = load i8, i8* %scevgep209.1, align 1
  %conv.i.i96.i188.i.1 = zext i8 %191 to i32
  %conv1.i.i97.i189.i.1 = zext i8 %190 to i32
  %xor.i.i98.i190.i.1 = xor i32 %conv1.i.i97.i189.i.1, %conv.i.i96.i188.i.1
  %conv2.i.i99.i191.i.1 = trunc i32 %xor.i.i98.i190.i.1 to i8
  %scevgep209.2 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 2
  %192 = load i8, i8* %scevgep209.2, align 1
  %conv.i.i96.i188.i.2 = zext i8 %192 to i32
  %conv1.i.i97.i189.i.2 = zext i8 %conv2.i.i99.i191.i.1 to i32
  %xor.i.i98.i190.i.2 = xor i32 %conv1.i.i97.i189.i.2, %conv.i.i96.i188.i.2
  %conv2.i.i99.i191.i.2 = trunc i32 %xor.i.i98.i190.i.2 to i8
  %scevgep209.3 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 3
  %193 = load i8, i8* %scevgep209.3, align 1
  %conv.i.i96.i188.i.3 = zext i8 %193 to i32
  %conv1.i.i97.i189.i.3 = zext i8 %conv2.i.i99.i191.i.2 to i32
  %xor.i.i98.i190.i.3 = xor i32 %conv1.i.i97.i189.i.3, %conv.i.i96.i188.i.3
  %conv2.i.i99.i191.i.3 = trunc i32 %xor.i.i98.i190.i.3 to i8
  %scevgep209.4 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 4
  %194 = load i8, i8* %scevgep209.4, align 1
  %conv.i.i96.i188.i.4 = zext i8 %194 to i32
  %conv1.i.i97.i189.i.4 = zext i8 %conv2.i.i99.i191.i.3 to i32
  %xor.i.i98.i190.i.4 = xor i32 %conv1.i.i97.i189.i.4, %conv.i.i96.i188.i.4
  %conv2.i.i99.i191.i.4 = trunc i32 %xor.i.i98.i190.i.4 to i8
  %conv7.i194.i = zext i8 %conv2.i.i99.i191.i.4 to i32
  %cmp8.i195.i = icmp eq i32 %conv5.i181.i, %conv7.i194.i
  call void @assume(i1 zeroext %cmp8.i195.i) #3
  %scevgep186 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %scevgep186187 = bitcast i8* %scevgep186 to [5 x [5 x i8]]*
  %scevgep199 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %scevgep199200 = bitcast i8* %scevgep199 to [5 x [5 x i8]]*
  %call16.i203.i = call zeroext i8 (...) @rand() #3
  store i8 %call16.i203.i, i8* %scevgep186, align 1
  %195 = load i8, i8* %scevgep186, align 1
  %conv23.i212.i = zext i8 %195 to i32
  %196 = load i8, i8* %arraydecay10.i, align 1
  %scevgep197 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 1
  %197 = load i8, i8* %scevgep197, align 1
  %call28.i217.i = call zeroext i8 @mult(i8 zeroext %196, i8 zeroext %197) #3
  %conv29.i218.i = zext i8 %call28.i217.i to i32
  %xor.i219.i = xor i32 %conv23.i212.i, %conv29.i218.i
  %scevgep198 = getelementptr [5 x i8], [5 x i8]* %u.i, i64 0, i64 1
  %198 = load i8, i8* %scevgep198, align 1
  %199 = load i8, i8* %arraydecay11.i, align 1
  %call34.i224.i = call zeroext i8 @mult(i8 zeroext %198, i8 zeroext %199) #3
  %conv35.i225.i = zext i8 %call34.i224.i to i32
  %xor36.i226.i = xor i32 %xor.i219.i, %conv35.i225.i
  %conv37.i227.i = trunc i32 %xor36.i226.i to i8
  store i8 %conv37.i227.i, i8* %scevgep199, align 1
  %scevgep191 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep186187, i64 0, i64 0, i64 1
  %200 = bitcast i8* %scevgep191 to [5 x [5 x i8]]*
  %scevgep204 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep199200, i64 0, i64 1, i64 0
  %201 = bitcast i8* %scevgep204 to [5 x [5 x i8]]*
  %call16.i203.i.1524 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i203.i.1524, i8* %scevgep191, align 1
  %202 = load i8, i8* %scevgep191, align 1
  %conv23.i212.i.1525 = zext i8 %202 to i32
  %203 = load i8, i8* %arraydecay10.i, align 1
  %scevgep197.1526 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 2
  %204 = load i8, i8* %scevgep197.1526, align 1
  %call28.i217.i.1527 = call zeroext i8 @mult(i8 zeroext %203, i8 zeroext %204) #3
  %conv29.i218.i.1528 = zext i8 %call28.i217.i.1527 to i32
  %xor.i219.i.1529 = xor i32 %conv23.i212.i.1525, %conv29.i218.i.1528
  %scevgep198.1530 = getelementptr [5 x i8], [5 x i8]* %u.i, i64 0, i64 2
  %205 = load i8, i8* %scevgep198.1530, align 1
  %206 = load i8, i8* %arraydecay11.i, align 1
  %call34.i224.i.1531 = call zeroext i8 @mult(i8 zeroext %205, i8 zeroext %206) #3
  %conv35.i225.i.1532 = zext i8 %call34.i224.i.1531 to i32
  %xor36.i226.i.1533 = xor i32 %xor.i219.i.1529, %conv35.i225.i.1532
  %conv37.i227.i.1534 = trunc i32 %xor36.i226.i.1533 to i8
  store i8 %conv37.i227.i.1534, i8* %scevgep204, align 1
  %scevgep191.1535 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %200, i64 0, i64 0, i64 1
  %207 = bitcast i8* %scevgep191.1535 to [5 x [5 x i8]]*
  %scevgep204.1536 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %201, i64 0, i64 1, i64 0
  %208 = bitcast i8* %scevgep204.1536 to [5 x [5 x i8]]*
  %call16.i203.i.2538 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i203.i.2538, i8* %scevgep191.1535, align 1
  %209 = load i8, i8* %scevgep191.1535, align 1
  %conv23.i212.i.2539 = zext i8 %209 to i32
  %210 = load i8, i8* %arraydecay10.i, align 1
  %scevgep197.2540 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 3
  %211 = load i8, i8* %scevgep197.2540, align 1
  %call28.i217.i.2541 = call zeroext i8 @mult(i8 zeroext %210, i8 zeroext %211) #3
  %conv29.i218.i.2542 = zext i8 %call28.i217.i.2541 to i32
  %xor.i219.i.2543 = xor i32 %conv23.i212.i.2539, %conv29.i218.i.2542
  %scevgep198.2544 = getelementptr [5 x i8], [5 x i8]* %u.i, i64 0, i64 3
  %212 = load i8, i8* %scevgep198.2544, align 1
  %213 = load i8, i8* %arraydecay11.i, align 1
  %call34.i224.i.2545 = call zeroext i8 @mult(i8 zeroext %212, i8 zeroext %213) #3
  %conv35.i225.i.2546 = zext i8 %call34.i224.i.2545 to i32
  %xor36.i226.i.2547 = xor i32 %xor.i219.i.2543, %conv35.i225.i.2546
  %conv37.i227.i.2548 = trunc i32 %xor36.i226.i.2547 to i8
  store i8 %conv37.i227.i.2548, i8* %scevgep204.1536, align 1
  %scevgep191.2549 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %207, i64 0, i64 0, i64 1
  %scevgep204.2550 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %208, i64 0, i64 1, i64 0
  %call16.i203.i.3552 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i203.i.3552, i8* %scevgep191.2549, align 1
  %214 = load i8, i8* %scevgep191.2549, align 1
  %conv23.i212.i.3553 = zext i8 %214 to i32
  %215 = load i8, i8* %arraydecay10.i, align 1
  %scevgep197.3554 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 4
  %216 = load i8, i8* %scevgep197.3554, align 1
  %call28.i217.i.3555 = call zeroext i8 @mult(i8 zeroext %215, i8 zeroext %216) #3
  %conv29.i218.i.3556 = zext i8 %call28.i217.i.3555 to i32
  %xor.i219.i.3557 = xor i32 %conv23.i212.i.3553, %conv29.i218.i.3556
  %scevgep198.3558 = getelementptr [5 x i8], [5 x i8]* %u.i, i64 0, i64 4
  %217 = load i8, i8* %scevgep198.3558, align 1
  %218 = load i8, i8* %arraydecay11.i, align 1
  %call34.i224.i.3559 = call zeroext i8 @mult(i8 zeroext %217, i8 zeroext %218) #3
  %conv35.i225.i.3560 = zext i8 %call34.i224.i.3559 to i32
  %xor36.i226.i.3561 = xor i32 %xor.i219.i.3557, %conv35.i225.i.3560
  %conv37.i227.i.3562 = trunc i32 %xor36.i226.i.3561 to i8
  store i8 %conv37.i227.i.3562, i8* %scevgep204.2550, align 1
  %scevgep189 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep186187, i64 0, i64 1, i64 1
  %219 = bitcast i8* %scevgep189 to [5 x [5 x i8]]*
  %scevgep202 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep199200, i64 0, i64 1, i64 1
  %220 = bitcast i8* %scevgep202 to [5 x [5 x i8]]*
  %arrayidx25.i214.i.1 = getelementptr inbounds i8, i8* %arraydecay10.i, i64 1
  %arrayidx33.i223.i.1 = getelementptr inbounds i8, i8* %arraydecay11.i, i64 1
  %call16.i203.i.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i203.i.1, i8* %scevgep189, align 1
  %221 = load i8, i8* %scevgep189, align 1
  %conv23.i212.i.1 = zext i8 %221 to i32
  %222 = load i8, i8* %arrayidx25.i214.i.1, align 1
  %scevgep197.1 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 2
  %223 = load i8, i8* %scevgep197.1, align 1
  %call28.i217.i.1 = call zeroext i8 @mult(i8 zeroext %222, i8 zeroext %223) #3
  %conv29.i218.i.1 = zext i8 %call28.i217.i.1 to i32
  %xor.i219.i.1 = xor i32 %conv23.i212.i.1, %conv29.i218.i.1
  %scevgep198.1 = getelementptr [5 x i8], [5 x i8]* %u.i, i64 0, i64 2
  %224 = load i8, i8* %scevgep198.1, align 1
  %225 = load i8, i8* %arrayidx33.i223.i.1, align 1
  %call34.i224.i.1 = call zeroext i8 @mult(i8 zeroext %224, i8 zeroext %225) #3
  %conv35.i225.i.1 = zext i8 %call34.i224.i.1 to i32
  %xor36.i226.i.1 = xor i32 %xor.i219.i.1, %conv35.i225.i.1
  %conv37.i227.i.1 = trunc i32 %xor36.i226.i.1 to i8
  store i8 %conv37.i227.i.1, i8* %scevgep202, align 1
  %scevgep191.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %219, i64 0, i64 0, i64 1
  %226 = bitcast i8* %scevgep191.1 to [5 x [5 x i8]]*
  %scevgep204.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %220, i64 0, i64 1, i64 0
  %227 = bitcast i8* %scevgep204.1 to [5 x [5 x i8]]*
  %call16.i203.i.1.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i203.i.1.1, i8* %scevgep191.1, align 1
  %228 = load i8, i8* %scevgep191.1, align 1
  %conv23.i212.i.1.1 = zext i8 %228 to i32
  %229 = load i8, i8* %arrayidx25.i214.i.1, align 1
  %scevgep197.1.1 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 3
  %230 = load i8, i8* %scevgep197.1.1, align 1
  %call28.i217.i.1.1 = call zeroext i8 @mult(i8 zeroext %229, i8 zeroext %230) #3
  %conv29.i218.i.1.1 = zext i8 %call28.i217.i.1.1 to i32
  %xor.i219.i.1.1 = xor i32 %conv23.i212.i.1.1, %conv29.i218.i.1.1
  %scevgep198.1.1 = getelementptr [5 x i8], [5 x i8]* %u.i, i64 0, i64 3
  %231 = load i8, i8* %scevgep198.1.1, align 1
  %232 = load i8, i8* %arrayidx33.i223.i.1, align 1
  %call34.i224.i.1.1 = call zeroext i8 @mult(i8 zeroext %231, i8 zeroext %232) #3
  %conv35.i225.i.1.1 = zext i8 %call34.i224.i.1.1 to i32
  %xor36.i226.i.1.1 = xor i32 %xor.i219.i.1.1, %conv35.i225.i.1.1
  %conv37.i227.i.1.1 = trunc i32 %xor36.i226.i.1.1 to i8
  store i8 %conv37.i227.i.1.1, i8* %scevgep204.1, align 1
  %scevgep191.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %226, i64 0, i64 0, i64 1
  %scevgep204.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %227, i64 0, i64 1, i64 0
  %call16.i203.i.1.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i203.i.1.2, i8* %scevgep191.1.1, align 1
  %233 = load i8, i8* %scevgep191.1.1, align 1
  %conv23.i212.i.1.2 = zext i8 %233 to i32
  %234 = load i8, i8* %arrayidx25.i214.i.1, align 1
  %scevgep197.1.2 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 4
  %235 = load i8, i8* %scevgep197.1.2, align 1
  %call28.i217.i.1.2 = call zeroext i8 @mult(i8 zeroext %234, i8 zeroext %235) #3
  %conv29.i218.i.1.2 = zext i8 %call28.i217.i.1.2 to i32
  %xor.i219.i.1.2 = xor i32 %conv23.i212.i.1.2, %conv29.i218.i.1.2
  %scevgep198.1.2 = getelementptr [5 x i8], [5 x i8]* %u.i, i64 0, i64 4
  %236 = load i8, i8* %scevgep198.1.2, align 1
  %237 = load i8, i8* %arrayidx33.i223.i.1, align 1
  %call34.i224.i.1.2 = call zeroext i8 @mult(i8 zeroext %236, i8 zeroext %237) #3
  %conv35.i225.i.1.2 = zext i8 %call34.i224.i.1.2 to i32
  %xor36.i226.i.1.2 = xor i32 %xor.i219.i.1.2, %conv35.i225.i.1.2
  %conv37.i227.i.1.2 = trunc i32 %xor36.i226.i.1.2 to i8
  store i8 %conv37.i227.i.1.2, i8* %scevgep204.1.1, align 1
  %scevgep189.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %219, i64 0, i64 1, i64 1
  %238 = bitcast i8* %scevgep189.1 to [5 x [5 x i8]]*
  %scevgep202.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %220, i64 0, i64 1, i64 1
  %239 = bitcast i8* %scevgep202.1 to [5 x [5 x i8]]*
  %arrayidx25.i214.i.2 = getelementptr inbounds i8, i8* %arraydecay10.i, i64 2
  %arrayidx33.i223.i.2 = getelementptr inbounds i8, i8* %arraydecay11.i, i64 2
  %call16.i203.i.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i203.i.2, i8* %scevgep189.1, align 1
  %240 = load i8, i8* %scevgep189.1, align 1
  %conv23.i212.i.2 = zext i8 %240 to i32
  %241 = load i8, i8* %arrayidx25.i214.i.2, align 1
  %scevgep197.2 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 3
  %242 = load i8, i8* %scevgep197.2, align 1
  %call28.i217.i.2 = call zeroext i8 @mult(i8 zeroext %241, i8 zeroext %242) #3
  %conv29.i218.i.2 = zext i8 %call28.i217.i.2 to i32
  %xor.i219.i.2 = xor i32 %conv23.i212.i.2, %conv29.i218.i.2
  %scevgep198.2 = getelementptr [5 x i8], [5 x i8]* %u.i, i64 0, i64 3
  %243 = load i8, i8* %scevgep198.2, align 1
  %244 = load i8, i8* %arrayidx33.i223.i.2, align 1
  %call34.i224.i.2 = call zeroext i8 @mult(i8 zeroext %243, i8 zeroext %244) #3
  %conv35.i225.i.2 = zext i8 %call34.i224.i.2 to i32
  %xor36.i226.i.2 = xor i32 %xor.i219.i.2, %conv35.i225.i.2
  %conv37.i227.i.2 = trunc i32 %xor36.i226.i.2 to i8
  store i8 %conv37.i227.i.2, i8* %scevgep202.1, align 1
  %scevgep191.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %238, i64 0, i64 0, i64 1
  %scevgep204.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %239, i64 0, i64 1, i64 0
  %call16.i203.i.2.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i203.i.2.1, i8* %scevgep191.2, align 1
  %245 = load i8, i8* %scevgep191.2, align 1
  %conv23.i212.i.2.1 = zext i8 %245 to i32
  %246 = load i8, i8* %arrayidx25.i214.i.2, align 1
  %scevgep197.2.1 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 4
  %247 = load i8, i8* %scevgep197.2.1, align 1
  %call28.i217.i.2.1 = call zeroext i8 @mult(i8 zeroext %246, i8 zeroext %247) #3
  %conv29.i218.i.2.1 = zext i8 %call28.i217.i.2.1 to i32
  %xor.i219.i.2.1 = xor i32 %conv23.i212.i.2.1, %conv29.i218.i.2.1
  %scevgep198.2.1 = getelementptr [5 x i8], [5 x i8]* %u.i, i64 0, i64 4
  %248 = load i8, i8* %scevgep198.2.1, align 1
  %249 = load i8, i8* %arrayidx33.i223.i.2, align 1
  %call34.i224.i.2.1 = call zeroext i8 @mult(i8 zeroext %248, i8 zeroext %249) #3
  %conv35.i225.i.2.1 = zext i8 %call34.i224.i.2.1 to i32
  %xor36.i226.i.2.1 = xor i32 %xor.i219.i.2.1, %conv35.i225.i.2.1
  %conv37.i227.i.2.1 = trunc i32 %xor36.i226.i.2.1 to i8
  store i8 %conv37.i227.i.2.1, i8* %scevgep204.2, align 1
  %scevgep189.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %238, i64 0, i64 1, i64 1
  %scevgep202.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %239, i64 0, i64 1, i64 1
  %arrayidx25.i214.i.3 = getelementptr inbounds i8, i8* %arraydecay10.i, i64 3
  %arrayidx33.i223.i.3 = getelementptr inbounds i8, i8* %arraydecay11.i, i64 3
  %call16.i203.i.3 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i203.i.3, i8* %scevgep189.2, align 1
  %250 = load i8, i8* %scevgep189.2, align 1
  %conv23.i212.i.3 = zext i8 %250 to i32
  %251 = load i8, i8* %arrayidx25.i214.i.3, align 1
  %scevgep197.3 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 4
  %252 = load i8, i8* %scevgep197.3, align 1
  %call28.i217.i.3 = call zeroext i8 @mult(i8 zeroext %251, i8 zeroext %252) #3
  %conv29.i218.i.3 = zext i8 %call28.i217.i.3 to i32
  %xor.i219.i.3 = xor i32 %conv23.i212.i.3, %conv29.i218.i.3
  %scevgep198.3 = getelementptr [5 x i8], [5 x i8]* %u.i, i64 0, i64 4
  %253 = load i8, i8* %scevgep198.3, align 1
  %254 = load i8, i8* %arrayidx33.i223.i.3, align 1
  %call34.i224.i.3 = call zeroext i8 @mult(i8 zeroext %253, i8 zeroext %254) #3
  %conv35.i225.i.3 = zext i8 %call34.i224.i.3 to i32
  %xor36.i226.i.3 = xor i32 %xor.i219.i.3, %conv35.i225.i.3
  %conv37.i227.i.3 = trunc i32 %xor36.i226.i.3 to i8
  store i8 %conv37.i227.i.3, i8* %scevgep202.2, align 1
  %255 = load i8, i8* %arraydecay10.i, align 1
  %256 = load i8, i8* %arraydecay11.i, align 1
  %call54.i243.i = call zeroext i8 @mult(i8 zeroext %255, i8 zeroext %256) #3
  store i8 %call54.i243.i, i8* %arraydecay12.i, align 1
  %scevgep182.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %257 = load i8, i8* %scevgep182.1, align 1
  %conv68.i255.i.1 = zext i8 %257 to i32
  %258 = load i8, i8* %arraydecay12.i, align 1
  %conv71.i258.i.1 = zext i8 %258 to i32
  %xor72.i259.i.1 = xor i32 %conv71.i258.i.1, %conv68.i255.i.1
  %conv73.i260.i.1 = trunc i32 %xor72.i259.i.1 to i8
  store i8 %conv73.i260.i.1, i8* %arraydecay12.i, align 1
  %scevgep182.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %259 = load i8, i8* %scevgep182.2, align 1
  %conv68.i255.i.2 = zext i8 %259 to i32
  %260 = load i8, i8* %arraydecay12.i, align 1
  %conv71.i258.i.2 = zext i8 %260 to i32
  %xor72.i259.i.2 = xor i32 %conv71.i258.i.2, %conv68.i255.i.2
  %conv73.i260.i.2 = trunc i32 %xor72.i259.i.2 to i8
  store i8 %conv73.i260.i.2, i8* %arraydecay12.i, align 1
  %scevgep182.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  %261 = load i8, i8* %scevgep182.3, align 1
  %conv68.i255.i.3 = zext i8 %261 to i32
  %262 = load i8, i8* %arraydecay12.i, align 1
  %conv71.i258.i.3 = zext i8 %262 to i32
  %xor72.i259.i.3 = xor i32 %conv71.i258.i.3, %conv68.i255.i.3
  %conv73.i260.i.3 = trunc i32 %xor72.i259.i.3 to i8
  store i8 %conv73.i260.i.3, i8* %arraydecay12.i, align 1
  %scevgep182.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 4
  %263 = load i8, i8* %scevgep182.4, align 1
  %conv68.i255.i.4 = zext i8 %263 to i32
  %264 = load i8, i8* %arraydecay12.i, align 1
  %conv71.i258.i.4 = zext i8 %264 to i32
  %xor72.i259.i.4 = xor i32 %conv71.i258.i.4, %conv68.i255.i.4
  %conv73.i260.i.4 = trunc i32 %xor72.i259.i.4 to i8
  store i8 %conv73.i260.i.4, i8* %arraydecay12.i, align 1
  %scevgep181 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %265 = bitcast i8* %scevgep181 to [5 x [5 x i8]]*
  %arrayidx51.i240.i.1 = getelementptr inbounds i8, i8* %arraydecay10.i, i64 1
  %266 = load i8, i8* %arrayidx51.i240.i.1, align 1
  %arrayidx53.i242.i.1 = getelementptr inbounds i8, i8* %arraydecay11.i, i64 1
  %267 = load i8, i8* %arrayidx53.i242.i.1, align 1
  %call54.i243.i.1 = call zeroext i8 @mult(i8 zeroext %266, i8 zeroext %267) #3
  %arrayidx56.i245.i.1 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 1
  store i8 %call54.i243.i.1, i8* %arrayidx56.i245.i.1, align 1
  %arrayidx70.i257.i.1 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 1
  %scevgep182.1376 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %265, i64 0, i64 0, i64 0
  %268 = load i8, i8* %scevgep182.1376, align 1
  %conv68.i255.i.1377 = zext i8 %268 to i32
  %269 = load i8, i8* %arrayidx70.i257.i.1, align 1
  %conv71.i258.i.1378 = zext i8 %269 to i32
  %xor72.i259.i.1379 = xor i32 %conv71.i258.i.1378, %conv68.i255.i.1377
  %conv73.i260.i.1380 = trunc i32 %xor72.i259.i.1379 to i8
  store i8 %conv73.i260.i.1380, i8* %arrayidx70.i257.i.1, align 1
  %scevgep182.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %265, i64 0, i64 0, i64 2
  %270 = load i8, i8* %scevgep182.2.1, align 1
  %conv68.i255.i.2.1 = zext i8 %270 to i32
  %271 = load i8, i8* %arrayidx70.i257.i.1, align 1
  %conv71.i258.i.2.1 = zext i8 %271 to i32
  %xor72.i259.i.2.1 = xor i32 %conv71.i258.i.2.1, %conv68.i255.i.2.1
  %conv73.i260.i.2.1 = trunc i32 %xor72.i259.i.2.1 to i8
  store i8 %conv73.i260.i.2.1, i8* %arrayidx70.i257.i.1, align 1
  %scevgep182.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %265, i64 0, i64 0, i64 3
  %272 = load i8, i8* %scevgep182.3.1, align 1
  %conv68.i255.i.3.1 = zext i8 %272 to i32
  %273 = load i8, i8* %arrayidx70.i257.i.1, align 1
  %conv71.i258.i.3.1 = zext i8 %273 to i32
  %xor72.i259.i.3.1 = xor i32 %conv71.i258.i.3.1, %conv68.i255.i.3.1
  %conv73.i260.i.3.1 = trunc i32 %xor72.i259.i.3.1 to i8
  store i8 %conv73.i260.i.3.1, i8* %arrayidx70.i257.i.1, align 1
  %scevgep182.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %265, i64 0, i64 0, i64 4
  %274 = load i8, i8* %scevgep182.4.1, align 1
  %conv68.i255.i.4.1 = zext i8 %274 to i32
  %275 = load i8, i8* %arrayidx70.i257.i.1, align 1
  %conv71.i258.i.4.1 = zext i8 %275 to i32
  %xor72.i259.i.4.1 = xor i32 %conv71.i258.i.4.1, %conv68.i255.i.4.1
  %conv73.i260.i.4.1 = trunc i32 %xor72.i259.i.4.1 to i8
  store i8 %conv73.i260.i.4.1, i8* %arrayidx70.i257.i.1, align 1
  %scevgep181.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %265, i64 0, i64 1, i64 0
  %276 = bitcast i8* %scevgep181.1 to [5 x [5 x i8]]*
  %arrayidx51.i240.i.2 = getelementptr inbounds i8, i8* %arraydecay10.i, i64 2
  %277 = load i8, i8* %arrayidx51.i240.i.2, align 1
  %arrayidx53.i242.i.2 = getelementptr inbounds i8, i8* %arraydecay11.i, i64 2
  %278 = load i8, i8* %arrayidx53.i242.i.2, align 1
  %call54.i243.i.2 = call zeroext i8 @mult(i8 zeroext %277, i8 zeroext %278) #3
  %arrayidx56.i245.i.2 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 2
  store i8 %call54.i243.i.2, i8* %arrayidx56.i245.i.2, align 1
  %arrayidx70.i257.i.2 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 2
  %scevgep182.2385 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %276, i64 0, i64 0, i64 0
  %279 = load i8, i8* %scevgep182.2385, align 1
  %conv68.i255.i.2386 = zext i8 %279 to i32
  %280 = load i8, i8* %arrayidx70.i257.i.2, align 1
  %conv71.i258.i.2387 = zext i8 %280 to i32
  %xor72.i259.i.2388 = xor i32 %conv71.i258.i.2387, %conv68.i255.i.2386
  %conv73.i260.i.2389 = trunc i32 %xor72.i259.i.2388 to i8
  store i8 %conv73.i260.i.2389, i8* %arrayidx70.i257.i.2, align 1
  %scevgep182.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %276, i64 0, i64 0, i64 1
  %281 = load i8, i8* %scevgep182.1.2, align 1
  %conv68.i255.i.1.2 = zext i8 %281 to i32
  %282 = load i8, i8* %arrayidx70.i257.i.2, align 1
  %conv71.i258.i.1.2 = zext i8 %282 to i32
  %xor72.i259.i.1.2 = xor i32 %conv71.i258.i.1.2, %conv68.i255.i.1.2
  %conv73.i260.i.1.2 = trunc i32 %xor72.i259.i.1.2 to i8
  store i8 %conv73.i260.i.1.2, i8* %arrayidx70.i257.i.2, align 1
  %scevgep182.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %276, i64 0, i64 0, i64 3
  %283 = load i8, i8* %scevgep182.3.2, align 1
  %conv68.i255.i.3.2 = zext i8 %283 to i32
  %284 = load i8, i8* %arrayidx70.i257.i.2, align 1
  %conv71.i258.i.3.2 = zext i8 %284 to i32
  %xor72.i259.i.3.2 = xor i32 %conv71.i258.i.3.2, %conv68.i255.i.3.2
  %conv73.i260.i.3.2 = trunc i32 %xor72.i259.i.3.2 to i8
  store i8 %conv73.i260.i.3.2, i8* %arrayidx70.i257.i.2, align 1
  %scevgep182.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %276, i64 0, i64 0, i64 4
  %285 = load i8, i8* %scevgep182.4.2, align 1
  %conv68.i255.i.4.2 = zext i8 %285 to i32
  %286 = load i8, i8* %arrayidx70.i257.i.2, align 1
  %conv71.i258.i.4.2 = zext i8 %286 to i32
  %xor72.i259.i.4.2 = xor i32 %conv71.i258.i.4.2, %conv68.i255.i.4.2
  %conv73.i260.i.4.2 = trunc i32 %xor72.i259.i.4.2 to i8
  store i8 %conv73.i260.i.4.2, i8* %arrayidx70.i257.i.2, align 1
  %scevgep181.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %276, i64 0, i64 1, i64 0
  %287 = bitcast i8* %scevgep181.2 to [5 x [5 x i8]]*
  %arrayidx51.i240.i.3 = getelementptr inbounds i8, i8* %arraydecay10.i, i64 3
  %288 = load i8, i8* %arrayidx51.i240.i.3, align 1
  %arrayidx53.i242.i.3 = getelementptr inbounds i8, i8* %arraydecay11.i, i64 3
  %289 = load i8, i8* %arrayidx53.i242.i.3, align 1
  %call54.i243.i.3 = call zeroext i8 @mult(i8 zeroext %288, i8 zeroext %289) #3
  %arrayidx56.i245.i.3 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 3
  store i8 %call54.i243.i.3, i8* %arrayidx56.i245.i.3, align 1
  %arrayidx70.i257.i.3 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 3
  %scevgep182.3394 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %287, i64 0, i64 0, i64 0
  %290 = load i8, i8* %scevgep182.3394, align 1
  %conv68.i255.i.3395 = zext i8 %290 to i32
  %291 = load i8, i8* %arrayidx70.i257.i.3, align 1
  %conv71.i258.i.3396 = zext i8 %291 to i32
  %xor72.i259.i.3397 = xor i32 %conv71.i258.i.3396, %conv68.i255.i.3395
  %conv73.i260.i.3398 = trunc i32 %xor72.i259.i.3397 to i8
  store i8 %conv73.i260.i.3398, i8* %arrayidx70.i257.i.3, align 1
  %scevgep182.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %287, i64 0, i64 0, i64 1
  %292 = load i8, i8* %scevgep182.1.3, align 1
  %conv68.i255.i.1.3 = zext i8 %292 to i32
  %293 = load i8, i8* %arrayidx70.i257.i.3, align 1
  %conv71.i258.i.1.3 = zext i8 %293 to i32
  %xor72.i259.i.1.3 = xor i32 %conv71.i258.i.1.3, %conv68.i255.i.1.3
  %conv73.i260.i.1.3 = trunc i32 %xor72.i259.i.1.3 to i8
  store i8 %conv73.i260.i.1.3, i8* %arrayidx70.i257.i.3, align 1
  %scevgep182.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %287, i64 0, i64 0, i64 2
  %294 = load i8, i8* %scevgep182.2.3, align 1
  %conv68.i255.i.2.3 = zext i8 %294 to i32
  %295 = load i8, i8* %arrayidx70.i257.i.3, align 1
  %conv71.i258.i.2.3 = zext i8 %295 to i32
  %xor72.i259.i.2.3 = xor i32 %conv71.i258.i.2.3, %conv68.i255.i.2.3
  %conv73.i260.i.2.3 = trunc i32 %xor72.i259.i.2.3 to i8
  store i8 %conv73.i260.i.2.3, i8* %arrayidx70.i257.i.3, align 1
  %scevgep182.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %287, i64 0, i64 0, i64 4
  %296 = load i8, i8* %scevgep182.4.3, align 1
  %conv68.i255.i.4.3 = zext i8 %296 to i32
  %297 = load i8, i8* %arrayidx70.i257.i.3, align 1
  %conv71.i258.i.4.3 = zext i8 %297 to i32
  %xor72.i259.i.4.3 = xor i32 %conv71.i258.i.4.3, %conv68.i255.i.4.3
  %conv73.i260.i.4.3 = trunc i32 %xor72.i259.i.4.3 to i8
  store i8 %conv73.i260.i.4.3, i8* %arrayidx70.i257.i.3, align 1
  %scevgep181.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %287, i64 0, i64 1, i64 0
  %298 = bitcast i8* %scevgep181.3 to [5 x [5 x i8]]*
  %arrayidx51.i240.i.4 = getelementptr inbounds i8, i8* %arraydecay10.i, i64 4
  %299 = load i8, i8* %arrayidx51.i240.i.4, align 1
  %arrayidx53.i242.i.4 = getelementptr inbounds i8, i8* %arraydecay11.i, i64 4
  %300 = load i8, i8* %arrayidx53.i242.i.4, align 1
  %call54.i243.i.4 = call zeroext i8 @mult(i8 zeroext %299, i8 zeroext %300) #3
  %arrayidx56.i245.i.4 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 4
  store i8 %call54.i243.i.4, i8* %arrayidx56.i245.i.4, align 1
  %arrayidx70.i257.i.4 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 4
  %scevgep182.4403 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %298, i64 0, i64 0, i64 0
  %301 = load i8, i8* %scevgep182.4403, align 1
  %conv68.i255.i.4404 = zext i8 %301 to i32
  %302 = load i8, i8* %arrayidx70.i257.i.4, align 1
  %conv71.i258.i.4405 = zext i8 %302 to i32
  %xor72.i259.i.4406 = xor i32 %conv71.i258.i.4405, %conv68.i255.i.4404
  %conv73.i260.i.4407 = trunc i32 %xor72.i259.i.4406 to i8
  store i8 %conv73.i260.i.4407, i8* %arrayidx70.i257.i.4, align 1
  %scevgep182.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %298, i64 0, i64 0, i64 1
  %303 = load i8, i8* %scevgep182.1.4, align 1
  %conv68.i255.i.1.4 = zext i8 %303 to i32
  %304 = load i8, i8* %arrayidx70.i257.i.4, align 1
  %conv71.i258.i.1.4 = zext i8 %304 to i32
  %xor72.i259.i.1.4 = xor i32 %conv71.i258.i.1.4, %conv68.i255.i.1.4
  %conv73.i260.i.1.4 = trunc i32 %xor72.i259.i.1.4 to i8
  store i8 %conv73.i260.i.1.4, i8* %arrayidx70.i257.i.4, align 1
  %scevgep182.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %298, i64 0, i64 0, i64 2
  %305 = load i8, i8* %scevgep182.2.4, align 1
  %conv68.i255.i.2.4 = zext i8 %305 to i32
  %306 = load i8, i8* %arrayidx70.i257.i.4, align 1
  %conv71.i258.i.2.4 = zext i8 %306 to i32
  %xor72.i259.i.2.4 = xor i32 %conv71.i258.i.2.4, %conv68.i255.i.2.4
  %conv73.i260.i.2.4 = trunc i32 %xor72.i259.i.2.4 to i8
  store i8 %conv73.i260.i.2.4, i8* %arrayidx70.i257.i.4, align 1
  %scevgep182.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %298, i64 0, i64 0, i64 3
  %307 = load i8, i8* %scevgep182.3.4, align 1
  %conv68.i255.i.3.4 = zext i8 %307 to i32
  %308 = load i8, i8* %arrayidx70.i257.i.4, align 1
  %conv71.i258.i.3.4 = zext i8 %308 to i32
  %xor72.i259.i.3.4 = xor i32 %conv71.i258.i.3.4, %conv68.i255.i.3.4
  %conv73.i260.i.3.4 = trunc i32 %xor72.i259.i.3.4 to i8
  store i8 %conv73.i260.i.3.4, i8* %arrayidx70.i257.i.4, align 1
  %call80.i266.i = call zeroext i8 @mult(i8 zeroext %call.i165.i, i8 zeroext %call1.i166.i) #3
  %conv81.i267.i = zext i8 %call80.i266.i to i32
  %scevgep172 = getelementptr [5 x i8], [5 x i8]* %v.i, i64 0, i64 0
  %309 = load i8, i8* %scevgep172, align 1
  %scevgep172.1 = getelementptr [5 x i8], [5 x i8]* %v.i, i64 0, i64 1
  %310 = load i8, i8* %scevgep172.1, align 1
  %conv.i.i113.i274.i.1 = zext i8 %310 to i32
  %conv1.i.i114.i275.i.1 = zext i8 %309 to i32
  %xor.i.i115.i276.i.1 = xor i32 %conv1.i.i114.i275.i.1, %conv.i.i113.i274.i.1
  %conv2.i.i116.i277.i.1 = trunc i32 %xor.i.i115.i276.i.1 to i8
  %scevgep172.2 = getelementptr [5 x i8], [5 x i8]* %v.i, i64 0, i64 2
  %311 = load i8, i8* %scevgep172.2, align 1
  %conv.i.i113.i274.i.2 = zext i8 %311 to i32
  %conv1.i.i114.i275.i.2 = zext i8 %conv2.i.i116.i277.i.1 to i32
  %xor.i.i115.i276.i.2 = xor i32 %conv1.i.i114.i275.i.2, %conv.i.i113.i274.i.2
  %conv2.i.i116.i277.i.2 = trunc i32 %xor.i.i115.i276.i.2 to i8
  %scevgep172.3 = getelementptr [5 x i8], [5 x i8]* %v.i, i64 0, i64 3
  %312 = load i8, i8* %scevgep172.3, align 1
  %conv.i.i113.i274.i.3 = zext i8 %312 to i32
  %conv1.i.i114.i275.i.3 = zext i8 %conv2.i.i116.i277.i.2 to i32
  %xor.i.i115.i276.i.3 = xor i32 %conv1.i.i114.i275.i.3, %conv.i.i113.i274.i.3
  %conv2.i.i116.i277.i.3 = trunc i32 %xor.i.i115.i276.i.3 to i8
  %scevgep172.4 = getelementptr [5 x i8], [5 x i8]* %v.i, i64 0, i64 4
  %313 = load i8, i8* %scevgep172.4, align 1
  %conv.i.i113.i274.i.4 = zext i8 %313 to i32
  %conv1.i.i114.i275.i.4 = zext i8 %conv2.i.i116.i277.i.3 to i32
  %xor.i.i115.i276.i.4 = xor i32 %conv1.i.i114.i275.i.4, %conv.i.i113.i274.i.4
  %conv2.i.i116.i277.i.4 = trunc i32 %xor.i.i115.i276.i.4 to i8
  %conv83.i280.i = zext i8 %conv2.i.i116.i277.i.4 to i32
  %cmp84.i281.i = icmp eq i32 %conv81.i267.i, %conv83.i280.i
  call void @assert(i1 zeroext %cmp84.i281.i) #3
  %scevgep167 = getelementptr [5 x i8], [5 x i8]* %v.i, i64 0, i64 0
  %314 = load i8, i8* %scevgep167, align 1
  %call.i291.i = call zeroext i8 @exp16(i8 zeroext %314) #3
  %scevgep168 = getelementptr [5 x i8], [5 x i8]* %v.i, i64 0, i64 0
  store i8 %call.i291.i, i8* %scevgep168, align 1
  %scevgep167.1 = getelementptr [5 x i8], [5 x i8]* %v.i, i64 0, i64 1
  %315 = load i8, i8* %scevgep167.1, align 1
  %call.i291.i.1 = call zeroext i8 @exp16(i8 zeroext %315) #3
  %scevgep168.1 = getelementptr [5 x i8], [5 x i8]* %v.i, i64 0, i64 1
  store i8 %call.i291.i.1, i8* %scevgep168.1, align 1
  %scevgep167.2 = getelementptr [5 x i8], [5 x i8]* %v.i, i64 0, i64 2
  %316 = load i8, i8* %scevgep167.2, align 1
  %call.i291.i.2 = call zeroext i8 @exp16(i8 zeroext %316) #3
  %scevgep168.2 = getelementptr [5 x i8], [5 x i8]* %v.i, i64 0, i64 2
  store i8 %call.i291.i.2, i8* %scevgep168.2, align 1
  %scevgep167.3 = getelementptr [5 x i8], [5 x i8]* %v.i, i64 0, i64 3
  %317 = load i8, i8* %scevgep167.3, align 1
  %call.i291.i.3 = call zeroext i8 @exp16(i8 zeroext %317) #3
  %scevgep168.3 = getelementptr [5 x i8], [5 x i8]* %v.i, i64 0, i64 3
  store i8 %call.i291.i.3, i8* %scevgep168.3, align 1
  %scevgep167.4 = getelementptr [5 x i8], [5 x i8]* %v.i, i64 0, i64 4
  %318 = load i8, i8* %scevgep167.4, align 1
  %call.i291.i.4 = call zeroext i8 @exp16(i8 zeroext %318) #3
  %scevgep168.4 = getelementptr [5 x i8], [5 x i8]* %v.i, i64 0, i64 4
  store i8 %call.i291.i.4, i8* %scevgep168.4, align 1
  %arraydecay15.i = getelementptr inbounds [5 x i8], [5 x i8]* %v.i, i64 0, i64 0
  %arraydecay16.i = getelementptr inbounds [5 x i8], [5 x i8]* %w.i, i64 0, i64 0
  %arraydecay17.i = getelementptr inbounds [5 x i8], [5 x i8]* %m.i, i64 0, i64 0
  %call.i323.i = call zeroext i8 (...) @rand() #3
  %call1.i324.i = call zeroext i8 (...) @rand() #3
  %conv.i325.i = zext i8 %call.i323.i to i32
  %scevgep163 = getelementptr [5 x i8], [5 x i8]* %v.i, i64 0, i64 0
  %319 = load i8, i8* %scevgep163, align 1
  %scevgep163.1 = getelementptr [5 x i8], [5 x i8]* %v.i, i64 0, i64 1
  %320 = load i8, i8* %scevgep163.1, align 1
  %conv.i.i.i331.i.1 = zext i8 %320 to i32
  %conv1.i.i.i332.i.1 = zext i8 %319 to i32
  %xor.i.i.i333.i.1 = xor i32 %conv1.i.i.i332.i.1, %conv.i.i.i331.i.1
  %conv2.i.i.i334.i.1 = trunc i32 %xor.i.i.i333.i.1 to i8
  %scevgep163.2 = getelementptr [5 x i8], [5 x i8]* %v.i, i64 0, i64 2
  %321 = load i8, i8* %scevgep163.2, align 1
  %conv.i.i.i331.i.2 = zext i8 %321 to i32
  %conv1.i.i.i332.i.2 = zext i8 %conv2.i.i.i334.i.1 to i32
  %xor.i.i.i333.i.2 = xor i32 %conv1.i.i.i332.i.2, %conv.i.i.i331.i.2
  %conv2.i.i.i334.i.2 = trunc i32 %xor.i.i.i333.i.2 to i8
  %scevgep163.3 = getelementptr [5 x i8], [5 x i8]* %v.i, i64 0, i64 3
  %322 = load i8, i8* %scevgep163.3, align 1
  %conv.i.i.i331.i.3 = zext i8 %322 to i32
  %conv1.i.i.i332.i.3 = zext i8 %conv2.i.i.i334.i.2 to i32
  %xor.i.i.i333.i.3 = xor i32 %conv1.i.i.i332.i.3, %conv.i.i.i331.i.3
  %conv2.i.i.i334.i.3 = trunc i32 %xor.i.i.i333.i.3 to i8
  %scevgep163.4 = getelementptr [5 x i8], [5 x i8]* %v.i, i64 0, i64 4
  %323 = load i8, i8* %scevgep163.4, align 1
  %conv.i.i.i331.i.4 = zext i8 %323 to i32
  %conv1.i.i.i332.i.4 = zext i8 %conv2.i.i.i334.i.3 to i32
  %xor.i.i.i333.i.4 = xor i32 %conv1.i.i.i332.i.4, %conv.i.i.i331.i.4
  %conv2.i.i.i334.i.4 = trunc i32 %xor.i.i.i333.i.4 to i8
  %conv3.i337.i = zext i8 %conv2.i.i.i334.i.4 to i32
  %cmp.i338.i = icmp eq i32 %conv.i325.i, %conv3.i337.i
  call void @assume(i1 zeroext %cmp.i338.i) #3
  %conv5.i339.i = zext i8 %call1.i324.i to i32
  %scevgep159 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 0
  %324 = load i8, i8* %scevgep159, align 1
  %scevgep159.1 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 1
  %325 = load i8, i8* %scevgep159.1, align 1
  %conv.i.i96.i346.i.1 = zext i8 %325 to i32
  %conv1.i.i97.i347.i.1 = zext i8 %324 to i32
  %xor.i.i98.i348.i.1 = xor i32 %conv1.i.i97.i347.i.1, %conv.i.i96.i346.i.1
  %conv2.i.i99.i349.i.1 = trunc i32 %xor.i.i98.i348.i.1 to i8
  %scevgep159.2 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 2
  %326 = load i8, i8* %scevgep159.2, align 1
  %conv.i.i96.i346.i.2 = zext i8 %326 to i32
  %conv1.i.i97.i347.i.2 = zext i8 %conv2.i.i99.i349.i.1 to i32
  %xor.i.i98.i348.i.2 = xor i32 %conv1.i.i97.i347.i.2, %conv.i.i96.i346.i.2
  %conv2.i.i99.i349.i.2 = trunc i32 %xor.i.i98.i348.i.2 to i8
  %scevgep159.3 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 3
  %327 = load i8, i8* %scevgep159.3, align 1
  %conv.i.i96.i346.i.3 = zext i8 %327 to i32
  %conv1.i.i97.i347.i.3 = zext i8 %conv2.i.i99.i349.i.2 to i32
  %xor.i.i98.i348.i.3 = xor i32 %conv1.i.i97.i347.i.3, %conv.i.i96.i346.i.3
  %conv2.i.i99.i349.i.3 = trunc i32 %xor.i.i98.i348.i.3 to i8
  %scevgep159.4 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 4
  %328 = load i8, i8* %scevgep159.4, align 1
  %conv.i.i96.i346.i.4 = zext i8 %328 to i32
  %conv1.i.i97.i347.i.4 = zext i8 %conv2.i.i99.i349.i.3 to i32
  %xor.i.i98.i348.i.4 = xor i32 %conv1.i.i97.i347.i.4, %conv.i.i96.i346.i.4
  %conv2.i.i99.i349.i.4 = trunc i32 %xor.i.i98.i348.i.4 to i8
  %conv7.i352.i = zext i8 %conv2.i.i99.i349.i.4 to i32
  %cmp8.i353.i = icmp eq i32 %conv5.i339.i, %conv7.i352.i
  call void @assume(i1 zeroext %cmp8.i353.i) #3
  %scevgep136 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %scevgep136137 = bitcast i8* %scevgep136 to [5 x [5 x i8]]*
  %scevgep149 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %scevgep149150 = bitcast i8* %scevgep149 to [5 x [5 x i8]]*
  %call16.i361.i = call zeroext i8 (...) @rand() #3
  store i8 %call16.i361.i, i8* %scevgep136, align 1
  %329 = load i8, i8* %scevgep136, align 1
  %conv23.i370.i = zext i8 %329 to i32
  %330 = load i8, i8* %arraydecay15.i, align 1
  %scevgep147 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 1
  %331 = load i8, i8* %scevgep147, align 1
  %call28.i375.i = call zeroext i8 @mult(i8 zeroext %330, i8 zeroext %331) #3
  %conv29.i376.i = zext i8 %call28.i375.i to i32
  %xor.i377.i = xor i32 %conv23.i370.i, %conv29.i376.i
  %scevgep148 = getelementptr [5 x i8], [5 x i8]* %v.i, i64 0, i64 1
  %332 = load i8, i8* %scevgep148, align 1
  %333 = load i8, i8* %arraydecay16.i, align 1
  %call34.i382.i = call zeroext i8 @mult(i8 zeroext %332, i8 zeroext %333) #3
  %conv35.i383.i = zext i8 %call34.i382.i to i32
  %xor36.i384.i = xor i32 %xor.i377.i, %conv35.i383.i
  %conv37.i385.i = trunc i32 %xor36.i384.i to i8
  store i8 %conv37.i385.i, i8* %scevgep149, align 1
  %scevgep141 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep136137, i64 0, i64 0, i64 1
  %334 = bitcast i8* %scevgep141 to [5 x [5 x i8]]*
  %scevgep154 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep149150, i64 0, i64 1, i64 0
  %335 = bitcast i8* %scevgep154 to [5 x [5 x i8]]*
  %call16.i361.i.1485 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i361.i.1485, i8* %scevgep141, align 1
  %336 = load i8, i8* %scevgep141, align 1
  %conv23.i370.i.1486 = zext i8 %336 to i32
  %337 = load i8, i8* %arraydecay15.i, align 1
  %scevgep147.1487 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 2
  %338 = load i8, i8* %scevgep147.1487, align 1
  %call28.i375.i.1488 = call zeroext i8 @mult(i8 zeroext %337, i8 zeroext %338) #3
  %conv29.i376.i.1489 = zext i8 %call28.i375.i.1488 to i32
  %xor.i377.i.1490 = xor i32 %conv23.i370.i.1486, %conv29.i376.i.1489
  %scevgep148.1491 = getelementptr [5 x i8], [5 x i8]* %v.i, i64 0, i64 2
  %339 = load i8, i8* %scevgep148.1491, align 1
  %340 = load i8, i8* %arraydecay16.i, align 1
  %call34.i382.i.1492 = call zeroext i8 @mult(i8 zeroext %339, i8 zeroext %340) #3
  %conv35.i383.i.1493 = zext i8 %call34.i382.i.1492 to i32
  %xor36.i384.i.1494 = xor i32 %xor.i377.i.1490, %conv35.i383.i.1493
  %conv37.i385.i.1495 = trunc i32 %xor36.i384.i.1494 to i8
  store i8 %conv37.i385.i.1495, i8* %scevgep154, align 1
  %scevgep141.1496 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %334, i64 0, i64 0, i64 1
  %341 = bitcast i8* %scevgep141.1496 to [5 x [5 x i8]]*
  %scevgep154.1497 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %335, i64 0, i64 1, i64 0
  %342 = bitcast i8* %scevgep154.1497 to [5 x [5 x i8]]*
  %call16.i361.i.2499 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i361.i.2499, i8* %scevgep141.1496, align 1
  %343 = load i8, i8* %scevgep141.1496, align 1
  %conv23.i370.i.2500 = zext i8 %343 to i32
  %344 = load i8, i8* %arraydecay15.i, align 1
  %scevgep147.2501 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 3
  %345 = load i8, i8* %scevgep147.2501, align 1
  %call28.i375.i.2502 = call zeroext i8 @mult(i8 zeroext %344, i8 zeroext %345) #3
  %conv29.i376.i.2503 = zext i8 %call28.i375.i.2502 to i32
  %xor.i377.i.2504 = xor i32 %conv23.i370.i.2500, %conv29.i376.i.2503
  %scevgep148.2505 = getelementptr [5 x i8], [5 x i8]* %v.i, i64 0, i64 3
  %346 = load i8, i8* %scevgep148.2505, align 1
  %347 = load i8, i8* %arraydecay16.i, align 1
  %call34.i382.i.2506 = call zeroext i8 @mult(i8 zeroext %346, i8 zeroext %347) #3
  %conv35.i383.i.2507 = zext i8 %call34.i382.i.2506 to i32
  %xor36.i384.i.2508 = xor i32 %xor.i377.i.2504, %conv35.i383.i.2507
  %conv37.i385.i.2509 = trunc i32 %xor36.i384.i.2508 to i8
  store i8 %conv37.i385.i.2509, i8* %scevgep154.1497, align 1
  %scevgep141.2510 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %341, i64 0, i64 0, i64 1
  %scevgep154.2511 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %342, i64 0, i64 1, i64 0
  %call16.i361.i.3513 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i361.i.3513, i8* %scevgep141.2510, align 1
  %348 = load i8, i8* %scevgep141.2510, align 1
  %conv23.i370.i.3514 = zext i8 %348 to i32
  %349 = load i8, i8* %arraydecay15.i, align 1
  %scevgep147.3515 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 4
  %350 = load i8, i8* %scevgep147.3515, align 1
  %call28.i375.i.3516 = call zeroext i8 @mult(i8 zeroext %349, i8 zeroext %350) #3
  %conv29.i376.i.3517 = zext i8 %call28.i375.i.3516 to i32
  %xor.i377.i.3518 = xor i32 %conv23.i370.i.3514, %conv29.i376.i.3517
  %scevgep148.3519 = getelementptr [5 x i8], [5 x i8]* %v.i, i64 0, i64 4
  %351 = load i8, i8* %scevgep148.3519, align 1
  %352 = load i8, i8* %arraydecay16.i, align 1
  %call34.i382.i.3520 = call zeroext i8 @mult(i8 zeroext %351, i8 zeroext %352) #3
  %conv35.i383.i.3521 = zext i8 %call34.i382.i.3520 to i32
  %xor36.i384.i.3522 = xor i32 %xor.i377.i.3518, %conv35.i383.i.3521
  %conv37.i385.i.3523 = trunc i32 %xor36.i384.i.3522 to i8
  store i8 %conv37.i385.i.3523, i8* %scevgep154.2511, align 1
  %scevgep139 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep136137, i64 0, i64 1, i64 1
  %353 = bitcast i8* %scevgep139 to [5 x [5 x i8]]*
  %scevgep152 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep149150, i64 0, i64 1, i64 1
  %354 = bitcast i8* %scevgep152 to [5 x [5 x i8]]*
  %arrayidx25.i372.i.1 = getelementptr inbounds i8, i8* %arraydecay15.i, i64 1
  %arrayidx33.i381.i.1 = getelementptr inbounds i8, i8* %arraydecay16.i, i64 1
  %call16.i361.i.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i361.i.1, i8* %scevgep139, align 1
  %355 = load i8, i8* %scevgep139, align 1
  %conv23.i370.i.1 = zext i8 %355 to i32
  %356 = load i8, i8* %arrayidx25.i372.i.1, align 1
  %scevgep147.1 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 2
  %357 = load i8, i8* %scevgep147.1, align 1
  %call28.i375.i.1 = call zeroext i8 @mult(i8 zeroext %356, i8 zeroext %357) #3
  %conv29.i376.i.1 = zext i8 %call28.i375.i.1 to i32
  %xor.i377.i.1 = xor i32 %conv23.i370.i.1, %conv29.i376.i.1
  %scevgep148.1 = getelementptr [5 x i8], [5 x i8]* %v.i, i64 0, i64 2
  %358 = load i8, i8* %scevgep148.1, align 1
  %359 = load i8, i8* %arrayidx33.i381.i.1, align 1
  %call34.i382.i.1 = call zeroext i8 @mult(i8 zeroext %358, i8 zeroext %359) #3
  %conv35.i383.i.1 = zext i8 %call34.i382.i.1 to i32
  %xor36.i384.i.1 = xor i32 %xor.i377.i.1, %conv35.i383.i.1
  %conv37.i385.i.1 = trunc i32 %xor36.i384.i.1 to i8
  store i8 %conv37.i385.i.1, i8* %scevgep152, align 1
  %scevgep141.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %353, i64 0, i64 0, i64 1
  %360 = bitcast i8* %scevgep141.1 to [5 x [5 x i8]]*
  %scevgep154.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %354, i64 0, i64 1, i64 0
  %361 = bitcast i8* %scevgep154.1 to [5 x [5 x i8]]*
  %call16.i361.i.1.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i361.i.1.1, i8* %scevgep141.1, align 1
  %362 = load i8, i8* %scevgep141.1, align 1
  %conv23.i370.i.1.1 = zext i8 %362 to i32
  %363 = load i8, i8* %arrayidx25.i372.i.1, align 1
  %scevgep147.1.1 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 3
  %364 = load i8, i8* %scevgep147.1.1, align 1
  %call28.i375.i.1.1 = call zeroext i8 @mult(i8 zeroext %363, i8 zeroext %364) #3
  %conv29.i376.i.1.1 = zext i8 %call28.i375.i.1.1 to i32
  %xor.i377.i.1.1 = xor i32 %conv23.i370.i.1.1, %conv29.i376.i.1.1
  %scevgep148.1.1 = getelementptr [5 x i8], [5 x i8]* %v.i, i64 0, i64 3
  %365 = load i8, i8* %scevgep148.1.1, align 1
  %366 = load i8, i8* %arrayidx33.i381.i.1, align 1
  %call34.i382.i.1.1 = call zeroext i8 @mult(i8 zeroext %365, i8 zeroext %366) #3
  %conv35.i383.i.1.1 = zext i8 %call34.i382.i.1.1 to i32
  %xor36.i384.i.1.1 = xor i32 %xor.i377.i.1.1, %conv35.i383.i.1.1
  %conv37.i385.i.1.1 = trunc i32 %xor36.i384.i.1.1 to i8
  store i8 %conv37.i385.i.1.1, i8* %scevgep154.1, align 1
  %scevgep141.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %360, i64 0, i64 0, i64 1
  %scevgep154.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %361, i64 0, i64 1, i64 0
  %call16.i361.i.1.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i361.i.1.2, i8* %scevgep141.1.1, align 1
  %367 = load i8, i8* %scevgep141.1.1, align 1
  %conv23.i370.i.1.2 = zext i8 %367 to i32
  %368 = load i8, i8* %arrayidx25.i372.i.1, align 1
  %scevgep147.1.2 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 4
  %369 = load i8, i8* %scevgep147.1.2, align 1
  %call28.i375.i.1.2 = call zeroext i8 @mult(i8 zeroext %368, i8 zeroext %369) #3
  %conv29.i376.i.1.2 = zext i8 %call28.i375.i.1.2 to i32
  %xor.i377.i.1.2 = xor i32 %conv23.i370.i.1.2, %conv29.i376.i.1.2
  %scevgep148.1.2 = getelementptr [5 x i8], [5 x i8]* %v.i, i64 0, i64 4
  %370 = load i8, i8* %scevgep148.1.2, align 1
  %371 = load i8, i8* %arrayidx33.i381.i.1, align 1
  %call34.i382.i.1.2 = call zeroext i8 @mult(i8 zeroext %370, i8 zeroext %371) #3
  %conv35.i383.i.1.2 = zext i8 %call34.i382.i.1.2 to i32
  %xor36.i384.i.1.2 = xor i32 %xor.i377.i.1.2, %conv35.i383.i.1.2
  %conv37.i385.i.1.2 = trunc i32 %xor36.i384.i.1.2 to i8
  store i8 %conv37.i385.i.1.2, i8* %scevgep154.1.1, align 1
  %scevgep139.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %353, i64 0, i64 1, i64 1
  %372 = bitcast i8* %scevgep139.1 to [5 x [5 x i8]]*
  %scevgep152.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %354, i64 0, i64 1, i64 1
  %373 = bitcast i8* %scevgep152.1 to [5 x [5 x i8]]*
  %arrayidx25.i372.i.2 = getelementptr inbounds i8, i8* %arraydecay15.i, i64 2
  %arrayidx33.i381.i.2 = getelementptr inbounds i8, i8* %arraydecay16.i, i64 2
  %call16.i361.i.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i361.i.2, i8* %scevgep139.1, align 1
  %374 = load i8, i8* %scevgep139.1, align 1
  %conv23.i370.i.2 = zext i8 %374 to i32
  %375 = load i8, i8* %arrayidx25.i372.i.2, align 1
  %scevgep147.2 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 3
  %376 = load i8, i8* %scevgep147.2, align 1
  %call28.i375.i.2 = call zeroext i8 @mult(i8 zeroext %375, i8 zeroext %376) #3
  %conv29.i376.i.2 = zext i8 %call28.i375.i.2 to i32
  %xor.i377.i.2 = xor i32 %conv23.i370.i.2, %conv29.i376.i.2
  %scevgep148.2 = getelementptr [5 x i8], [5 x i8]* %v.i, i64 0, i64 3
  %377 = load i8, i8* %scevgep148.2, align 1
  %378 = load i8, i8* %arrayidx33.i381.i.2, align 1
  %call34.i382.i.2 = call zeroext i8 @mult(i8 zeroext %377, i8 zeroext %378) #3
  %conv35.i383.i.2 = zext i8 %call34.i382.i.2 to i32
  %xor36.i384.i.2 = xor i32 %xor.i377.i.2, %conv35.i383.i.2
  %conv37.i385.i.2 = trunc i32 %xor36.i384.i.2 to i8
  store i8 %conv37.i385.i.2, i8* %scevgep152.1, align 1
  %scevgep141.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %372, i64 0, i64 0, i64 1
  %scevgep154.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %373, i64 0, i64 1, i64 0
  %call16.i361.i.2.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i361.i.2.1, i8* %scevgep141.2, align 1
  %379 = load i8, i8* %scevgep141.2, align 1
  %conv23.i370.i.2.1 = zext i8 %379 to i32
  %380 = load i8, i8* %arrayidx25.i372.i.2, align 1
  %scevgep147.2.1 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 4
  %381 = load i8, i8* %scevgep147.2.1, align 1
  %call28.i375.i.2.1 = call zeroext i8 @mult(i8 zeroext %380, i8 zeroext %381) #3
  %conv29.i376.i.2.1 = zext i8 %call28.i375.i.2.1 to i32
  %xor.i377.i.2.1 = xor i32 %conv23.i370.i.2.1, %conv29.i376.i.2.1
  %scevgep148.2.1 = getelementptr [5 x i8], [5 x i8]* %v.i, i64 0, i64 4
  %382 = load i8, i8* %scevgep148.2.1, align 1
  %383 = load i8, i8* %arrayidx33.i381.i.2, align 1
  %call34.i382.i.2.1 = call zeroext i8 @mult(i8 zeroext %382, i8 zeroext %383) #3
  %conv35.i383.i.2.1 = zext i8 %call34.i382.i.2.1 to i32
  %xor36.i384.i.2.1 = xor i32 %xor.i377.i.2.1, %conv35.i383.i.2.1
  %conv37.i385.i.2.1 = trunc i32 %xor36.i384.i.2.1 to i8
  store i8 %conv37.i385.i.2.1, i8* %scevgep154.2, align 1
  %scevgep139.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %372, i64 0, i64 1, i64 1
  %scevgep152.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %373, i64 0, i64 1, i64 1
  %arrayidx25.i372.i.3 = getelementptr inbounds i8, i8* %arraydecay15.i, i64 3
  %arrayidx33.i381.i.3 = getelementptr inbounds i8, i8* %arraydecay16.i, i64 3
  %call16.i361.i.3 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i361.i.3, i8* %scevgep139.2, align 1
  %384 = load i8, i8* %scevgep139.2, align 1
  %conv23.i370.i.3 = zext i8 %384 to i32
  %385 = load i8, i8* %arrayidx25.i372.i.3, align 1
  %scevgep147.3 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 4
  %386 = load i8, i8* %scevgep147.3, align 1
  %call28.i375.i.3 = call zeroext i8 @mult(i8 zeroext %385, i8 zeroext %386) #3
  %conv29.i376.i.3 = zext i8 %call28.i375.i.3 to i32
  %xor.i377.i.3 = xor i32 %conv23.i370.i.3, %conv29.i376.i.3
  %scevgep148.3 = getelementptr [5 x i8], [5 x i8]* %v.i, i64 0, i64 4
  %387 = load i8, i8* %scevgep148.3, align 1
  %388 = load i8, i8* %arrayidx33.i381.i.3, align 1
  %call34.i382.i.3 = call zeroext i8 @mult(i8 zeroext %387, i8 zeroext %388) #3
  %conv35.i383.i.3 = zext i8 %call34.i382.i.3 to i32
  %xor36.i384.i.3 = xor i32 %xor.i377.i.3, %conv35.i383.i.3
  %conv37.i385.i.3 = trunc i32 %xor36.i384.i.3 to i8
  store i8 %conv37.i385.i.3, i8* %scevgep152.2, align 1
  %389 = load i8, i8* %arraydecay15.i, align 1
  %390 = load i8, i8* %arraydecay16.i, align 1
  %call54.i401.i = call zeroext i8 @mult(i8 zeroext %389, i8 zeroext %390) #3
  store i8 %call54.i401.i, i8* %arraydecay17.i, align 1
  %scevgep132.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %391 = load i8, i8* %scevgep132.1, align 1
  %conv68.i413.i.1 = zext i8 %391 to i32
  %392 = load i8, i8* %arraydecay17.i, align 1
  %conv71.i416.i.1 = zext i8 %392 to i32
  %xor72.i417.i.1 = xor i32 %conv71.i416.i.1, %conv68.i413.i.1
  %conv73.i418.i.1 = trunc i32 %xor72.i417.i.1 to i8
  store i8 %conv73.i418.i.1, i8* %arraydecay17.i, align 1
  %scevgep132.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %393 = load i8, i8* %scevgep132.2, align 1
  %conv68.i413.i.2 = zext i8 %393 to i32
  %394 = load i8, i8* %arraydecay17.i, align 1
  %conv71.i416.i.2 = zext i8 %394 to i32
  %xor72.i417.i.2 = xor i32 %conv71.i416.i.2, %conv68.i413.i.2
  %conv73.i418.i.2 = trunc i32 %xor72.i417.i.2 to i8
  store i8 %conv73.i418.i.2, i8* %arraydecay17.i, align 1
  %scevgep132.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  %395 = load i8, i8* %scevgep132.3, align 1
  %conv68.i413.i.3 = zext i8 %395 to i32
  %396 = load i8, i8* %arraydecay17.i, align 1
  %conv71.i416.i.3 = zext i8 %396 to i32
  %xor72.i417.i.3 = xor i32 %conv71.i416.i.3, %conv68.i413.i.3
  %conv73.i418.i.3 = trunc i32 %xor72.i417.i.3 to i8
  store i8 %conv73.i418.i.3, i8* %arraydecay17.i, align 1
  %scevgep132.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 4
  %397 = load i8, i8* %scevgep132.4, align 1
  %conv68.i413.i.4 = zext i8 %397 to i32
  %398 = load i8, i8* %arraydecay17.i, align 1
  %conv71.i416.i.4 = zext i8 %398 to i32
  %xor72.i417.i.4 = xor i32 %conv71.i416.i.4, %conv68.i413.i.4
  %conv73.i418.i.4 = trunc i32 %xor72.i417.i.4 to i8
  store i8 %conv73.i418.i.4, i8* %arraydecay17.i, align 1
  %scevgep131 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %399 = bitcast i8* %scevgep131 to [5 x [5 x i8]]*
  %arrayidx51.i398.i.1 = getelementptr inbounds i8, i8* %arraydecay15.i, i64 1
  %400 = load i8, i8* %arrayidx51.i398.i.1, align 1
  %arrayidx53.i400.i.1 = getelementptr inbounds i8, i8* %arraydecay16.i, i64 1
  %401 = load i8, i8* %arrayidx53.i400.i.1, align 1
  %call54.i401.i.1 = call zeroext i8 @mult(i8 zeroext %400, i8 zeroext %401) #3
  %arrayidx56.i403.i.1 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 1
  store i8 %call54.i401.i.1, i8* %arrayidx56.i403.i.1, align 1
  %arrayidx70.i415.i.1 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 1
  %scevgep132.1340 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %399, i64 0, i64 0, i64 0
  %402 = load i8, i8* %scevgep132.1340, align 1
  %conv68.i413.i.1341 = zext i8 %402 to i32
  %403 = load i8, i8* %arrayidx70.i415.i.1, align 1
  %conv71.i416.i.1342 = zext i8 %403 to i32
  %xor72.i417.i.1343 = xor i32 %conv71.i416.i.1342, %conv68.i413.i.1341
  %conv73.i418.i.1344 = trunc i32 %xor72.i417.i.1343 to i8
  store i8 %conv73.i418.i.1344, i8* %arrayidx70.i415.i.1, align 1
  %scevgep132.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %399, i64 0, i64 0, i64 2
  %404 = load i8, i8* %scevgep132.2.1, align 1
  %conv68.i413.i.2.1 = zext i8 %404 to i32
  %405 = load i8, i8* %arrayidx70.i415.i.1, align 1
  %conv71.i416.i.2.1 = zext i8 %405 to i32
  %xor72.i417.i.2.1 = xor i32 %conv71.i416.i.2.1, %conv68.i413.i.2.1
  %conv73.i418.i.2.1 = trunc i32 %xor72.i417.i.2.1 to i8
  store i8 %conv73.i418.i.2.1, i8* %arrayidx70.i415.i.1, align 1
  %scevgep132.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %399, i64 0, i64 0, i64 3
  %406 = load i8, i8* %scevgep132.3.1, align 1
  %conv68.i413.i.3.1 = zext i8 %406 to i32
  %407 = load i8, i8* %arrayidx70.i415.i.1, align 1
  %conv71.i416.i.3.1 = zext i8 %407 to i32
  %xor72.i417.i.3.1 = xor i32 %conv71.i416.i.3.1, %conv68.i413.i.3.1
  %conv73.i418.i.3.1 = trunc i32 %xor72.i417.i.3.1 to i8
  store i8 %conv73.i418.i.3.1, i8* %arrayidx70.i415.i.1, align 1
  %scevgep132.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %399, i64 0, i64 0, i64 4
  %408 = load i8, i8* %scevgep132.4.1, align 1
  %conv68.i413.i.4.1 = zext i8 %408 to i32
  %409 = load i8, i8* %arrayidx70.i415.i.1, align 1
  %conv71.i416.i.4.1 = zext i8 %409 to i32
  %xor72.i417.i.4.1 = xor i32 %conv71.i416.i.4.1, %conv68.i413.i.4.1
  %conv73.i418.i.4.1 = trunc i32 %xor72.i417.i.4.1 to i8
  store i8 %conv73.i418.i.4.1, i8* %arrayidx70.i415.i.1, align 1
  %scevgep131.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %399, i64 0, i64 1, i64 0
  %410 = bitcast i8* %scevgep131.1 to [5 x [5 x i8]]*
  %arrayidx51.i398.i.2 = getelementptr inbounds i8, i8* %arraydecay15.i, i64 2
  %411 = load i8, i8* %arrayidx51.i398.i.2, align 1
  %arrayidx53.i400.i.2 = getelementptr inbounds i8, i8* %arraydecay16.i, i64 2
  %412 = load i8, i8* %arrayidx53.i400.i.2, align 1
  %call54.i401.i.2 = call zeroext i8 @mult(i8 zeroext %411, i8 zeroext %412) #3
  %arrayidx56.i403.i.2 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 2
  store i8 %call54.i401.i.2, i8* %arrayidx56.i403.i.2, align 1
  %arrayidx70.i415.i.2 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 2
  %scevgep132.2349 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %410, i64 0, i64 0, i64 0
  %413 = load i8, i8* %scevgep132.2349, align 1
  %conv68.i413.i.2350 = zext i8 %413 to i32
  %414 = load i8, i8* %arrayidx70.i415.i.2, align 1
  %conv71.i416.i.2351 = zext i8 %414 to i32
  %xor72.i417.i.2352 = xor i32 %conv71.i416.i.2351, %conv68.i413.i.2350
  %conv73.i418.i.2353 = trunc i32 %xor72.i417.i.2352 to i8
  store i8 %conv73.i418.i.2353, i8* %arrayidx70.i415.i.2, align 1
  %scevgep132.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %410, i64 0, i64 0, i64 1
  %415 = load i8, i8* %scevgep132.1.2, align 1
  %conv68.i413.i.1.2 = zext i8 %415 to i32
  %416 = load i8, i8* %arrayidx70.i415.i.2, align 1
  %conv71.i416.i.1.2 = zext i8 %416 to i32
  %xor72.i417.i.1.2 = xor i32 %conv71.i416.i.1.2, %conv68.i413.i.1.2
  %conv73.i418.i.1.2 = trunc i32 %xor72.i417.i.1.2 to i8
  store i8 %conv73.i418.i.1.2, i8* %arrayidx70.i415.i.2, align 1
  %scevgep132.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %410, i64 0, i64 0, i64 3
  %417 = load i8, i8* %scevgep132.3.2, align 1
  %conv68.i413.i.3.2 = zext i8 %417 to i32
  %418 = load i8, i8* %arrayidx70.i415.i.2, align 1
  %conv71.i416.i.3.2 = zext i8 %418 to i32
  %xor72.i417.i.3.2 = xor i32 %conv71.i416.i.3.2, %conv68.i413.i.3.2
  %conv73.i418.i.3.2 = trunc i32 %xor72.i417.i.3.2 to i8
  store i8 %conv73.i418.i.3.2, i8* %arrayidx70.i415.i.2, align 1
  %scevgep132.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %410, i64 0, i64 0, i64 4
  %419 = load i8, i8* %scevgep132.4.2, align 1
  %conv68.i413.i.4.2 = zext i8 %419 to i32
  %420 = load i8, i8* %arrayidx70.i415.i.2, align 1
  %conv71.i416.i.4.2 = zext i8 %420 to i32
  %xor72.i417.i.4.2 = xor i32 %conv71.i416.i.4.2, %conv68.i413.i.4.2
  %conv73.i418.i.4.2 = trunc i32 %xor72.i417.i.4.2 to i8
  store i8 %conv73.i418.i.4.2, i8* %arrayidx70.i415.i.2, align 1
  %scevgep131.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %410, i64 0, i64 1, i64 0
  %421 = bitcast i8* %scevgep131.2 to [5 x [5 x i8]]*
  %arrayidx51.i398.i.3 = getelementptr inbounds i8, i8* %arraydecay15.i, i64 3
  %422 = load i8, i8* %arrayidx51.i398.i.3, align 1
  %arrayidx53.i400.i.3 = getelementptr inbounds i8, i8* %arraydecay16.i, i64 3
  %423 = load i8, i8* %arrayidx53.i400.i.3, align 1
  %call54.i401.i.3 = call zeroext i8 @mult(i8 zeroext %422, i8 zeroext %423) #3
  %arrayidx56.i403.i.3 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 3
  store i8 %call54.i401.i.3, i8* %arrayidx56.i403.i.3, align 1
  %arrayidx70.i415.i.3 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 3
  %scevgep132.3358 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %421, i64 0, i64 0, i64 0
  %424 = load i8, i8* %scevgep132.3358, align 1
  %conv68.i413.i.3359 = zext i8 %424 to i32
  %425 = load i8, i8* %arrayidx70.i415.i.3, align 1
  %conv71.i416.i.3360 = zext i8 %425 to i32
  %xor72.i417.i.3361 = xor i32 %conv71.i416.i.3360, %conv68.i413.i.3359
  %conv73.i418.i.3362 = trunc i32 %xor72.i417.i.3361 to i8
  store i8 %conv73.i418.i.3362, i8* %arrayidx70.i415.i.3, align 1
  %scevgep132.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %421, i64 0, i64 0, i64 1
  %426 = load i8, i8* %scevgep132.1.3, align 1
  %conv68.i413.i.1.3 = zext i8 %426 to i32
  %427 = load i8, i8* %arrayidx70.i415.i.3, align 1
  %conv71.i416.i.1.3 = zext i8 %427 to i32
  %xor72.i417.i.1.3 = xor i32 %conv71.i416.i.1.3, %conv68.i413.i.1.3
  %conv73.i418.i.1.3 = trunc i32 %xor72.i417.i.1.3 to i8
  store i8 %conv73.i418.i.1.3, i8* %arrayidx70.i415.i.3, align 1
  %scevgep132.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %421, i64 0, i64 0, i64 2
  %428 = load i8, i8* %scevgep132.2.3, align 1
  %conv68.i413.i.2.3 = zext i8 %428 to i32
  %429 = load i8, i8* %arrayidx70.i415.i.3, align 1
  %conv71.i416.i.2.3 = zext i8 %429 to i32
  %xor72.i417.i.2.3 = xor i32 %conv71.i416.i.2.3, %conv68.i413.i.2.3
  %conv73.i418.i.2.3 = trunc i32 %xor72.i417.i.2.3 to i8
  store i8 %conv73.i418.i.2.3, i8* %arrayidx70.i415.i.3, align 1
  %scevgep132.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %421, i64 0, i64 0, i64 4
  %430 = load i8, i8* %scevgep132.4.3, align 1
  %conv68.i413.i.4.3 = zext i8 %430 to i32
  %431 = load i8, i8* %arrayidx70.i415.i.3, align 1
  %conv71.i416.i.4.3 = zext i8 %431 to i32
  %xor72.i417.i.4.3 = xor i32 %conv71.i416.i.4.3, %conv68.i413.i.4.3
  %conv73.i418.i.4.3 = trunc i32 %xor72.i417.i.4.3 to i8
  store i8 %conv73.i418.i.4.3, i8* %arrayidx70.i415.i.3, align 1
  %scevgep131.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %421, i64 0, i64 1, i64 0
  %432 = bitcast i8* %scevgep131.3 to [5 x [5 x i8]]*
  %arrayidx51.i398.i.4 = getelementptr inbounds i8, i8* %arraydecay15.i, i64 4
  %433 = load i8, i8* %arrayidx51.i398.i.4, align 1
  %arrayidx53.i400.i.4 = getelementptr inbounds i8, i8* %arraydecay16.i, i64 4
  %434 = load i8, i8* %arrayidx53.i400.i.4, align 1
  %call54.i401.i.4 = call zeroext i8 @mult(i8 zeroext %433, i8 zeroext %434) #3
  %arrayidx56.i403.i.4 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 4
  store i8 %call54.i401.i.4, i8* %arrayidx56.i403.i.4, align 1
  %arrayidx70.i415.i.4 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 4
  %scevgep132.4367 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %432, i64 0, i64 0, i64 0
  %435 = load i8, i8* %scevgep132.4367, align 1
  %conv68.i413.i.4368 = zext i8 %435 to i32
  %436 = load i8, i8* %arrayidx70.i415.i.4, align 1
  %conv71.i416.i.4369 = zext i8 %436 to i32
  %xor72.i417.i.4370 = xor i32 %conv71.i416.i.4369, %conv68.i413.i.4368
  %conv73.i418.i.4371 = trunc i32 %xor72.i417.i.4370 to i8
  store i8 %conv73.i418.i.4371, i8* %arrayidx70.i415.i.4, align 1
  %scevgep132.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %432, i64 0, i64 0, i64 1
  %437 = load i8, i8* %scevgep132.1.4, align 1
  %conv68.i413.i.1.4 = zext i8 %437 to i32
  %438 = load i8, i8* %arrayidx70.i415.i.4, align 1
  %conv71.i416.i.1.4 = zext i8 %438 to i32
  %xor72.i417.i.1.4 = xor i32 %conv71.i416.i.1.4, %conv68.i413.i.1.4
  %conv73.i418.i.1.4 = trunc i32 %xor72.i417.i.1.4 to i8
  store i8 %conv73.i418.i.1.4, i8* %arrayidx70.i415.i.4, align 1
  %scevgep132.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %432, i64 0, i64 0, i64 2
  %439 = load i8, i8* %scevgep132.2.4, align 1
  %conv68.i413.i.2.4 = zext i8 %439 to i32
  %440 = load i8, i8* %arrayidx70.i415.i.4, align 1
  %conv71.i416.i.2.4 = zext i8 %440 to i32
  %xor72.i417.i.2.4 = xor i32 %conv71.i416.i.2.4, %conv68.i413.i.2.4
  %conv73.i418.i.2.4 = trunc i32 %xor72.i417.i.2.4 to i8
  store i8 %conv73.i418.i.2.4, i8* %arrayidx70.i415.i.4, align 1
  %scevgep132.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %432, i64 0, i64 0, i64 3
  %441 = load i8, i8* %scevgep132.3.4, align 1
  %conv68.i413.i.3.4 = zext i8 %441 to i32
  %442 = load i8, i8* %arrayidx70.i415.i.4, align 1
  %conv71.i416.i.3.4 = zext i8 %442 to i32
  %xor72.i417.i.3.4 = xor i32 %conv71.i416.i.3.4, %conv68.i413.i.3.4
  %conv73.i418.i.3.4 = trunc i32 %xor72.i417.i.3.4 to i8
  store i8 %conv73.i418.i.3.4, i8* %arrayidx70.i415.i.4, align 1
  %call80.i424.i = call zeroext i8 @mult(i8 zeroext %call.i323.i, i8 zeroext %call1.i324.i) #3
  %conv81.i425.i = zext i8 %call80.i424.i to i32
  %scevgep122 = getelementptr [5 x i8], [5 x i8]* %m.i, i64 0, i64 0
  %443 = load i8, i8* %scevgep122, align 1
  %scevgep122.1 = getelementptr [5 x i8], [5 x i8]* %m.i, i64 0, i64 1
  %444 = load i8, i8* %scevgep122.1, align 1
  %conv.i.i113.i432.i.1 = zext i8 %444 to i32
  %conv1.i.i114.i433.i.1 = zext i8 %443 to i32
  %xor.i.i115.i434.i.1 = xor i32 %conv1.i.i114.i433.i.1, %conv.i.i113.i432.i.1
  %conv2.i.i116.i435.i.1 = trunc i32 %xor.i.i115.i434.i.1 to i8
  %scevgep122.2 = getelementptr [5 x i8], [5 x i8]* %m.i, i64 0, i64 2
  %445 = load i8, i8* %scevgep122.2, align 1
  %conv.i.i113.i432.i.2 = zext i8 %445 to i32
  %conv1.i.i114.i433.i.2 = zext i8 %conv2.i.i116.i435.i.1 to i32
  %xor.i.i115.i434.i.2 = xor i32 %conv1.i.i114.i433.i.2, %conv.i.i113.i432.i.2
  %conv2.i.i116.i435.i.2 = trunc i32 %xor.i.i115.i434.i.2 to i8
  %scevgep122.3 = getelementptr [5 x i8], [5 x i8]* %m.i, i64 0, i64 3
  %446 = load i8, i8* %scevgep122.3, align 1
  %conv.i.i113.i432.i.3 = zext i8 %446 to i32
  %conv1.i.i114.i433.i.3 = zext i8 %conv2.i.i116.i435.i.2 to i32
  %xor.i.i115.i434.i.3 = xor i32 %conv1.i.i114.i433.i.3, %conv.i.i113.i432.i.3
  %conv2.i.i116.i435.i.3 = trunc i32 %xor.i.i115.i434.i.3 to i8
  %scevgep122.4 = getelementptr [5 x i8], [5 x i8]* %m.i, i64 0, i64 4
  %447 = load i8, i8* %scevgep122.4, align 1
  %conv.i.i113.i432.i.4 = zext i8 %447 to i32
  %conv1.i.i114.i433.i.4 = zext i8 %conv2.i.i116.i435.i.3 to i32
  %xor.i.i115.i434.i.4 = xor i32 %conv1.i.i114.i433.i.4, %conv.i.i113.i432.i.4
  %conv2.i.i116.i435.i.4 = trunc i32 %xor.i.i115.i434.i.4 to i8
  %conv83.i438.i = zext i8 %conv2.i.i116.i435.i.4 to i32
  %cmp84.i439.i = icmp eq i32 %conv81.i425.i, %conv83.i438.i
  call void @assert(i1 zeroext %cmp84.i439.i) #3
  %arraydecay18.i = getelementptr inbounds [5 x i8], [5 x i8]* %m.i, i64 0, i64 0
  %arraydecay19.i = getelementptr inbounds [5 x i8], [5 x i8]* %z.i, i64 0, i64 0
  %call.i466.i = call zeroext i8 (...) @rand() #3
  %call1.i467.i = call zeroext i8 (...) @rand() #3
  %conv.i468.i = zext i8 %call.i466.i to i32
  %scevgep118 = getelementptr [5 x i8], [5 x i8]* %m.i, i64 0, i64 0
  %448 = load i8, i8* %scevgep118, align 1
  %scevgep118.1 = getelementptr [5 x i8], [5 x i8]* %m.i, i64 0, i64 1
  %449 = load i8, i8* %scevgep118.1, align 1
  %conv.i.i.i474.i.1 = zext i8 %449 to i32
  %conv1.i.i.i475.i.1 = zext i8 %448 to i32
  %xor.i.i.i476.i.1 = xor i32 %conv1.i.i.i475.i.1, %conv.i.i.i474.i.1
  %conv2.i.i.i477.i.1 = trunc i32 %xor.i.i.i476.i.1 to i8
  %scevgep118.2 = getelementptr [5 x i8], [5 x i8]* %m.i, i64 0, i64 2
  %450 = load i8, i8* %scevgep118.2, align 1
  %conv.i.i.i474.i.2 = zext i8 %450 to i32
  %conv1.i.i.i475.i.2 = zext i8 %conv2.i.i.i477.i.1 to i32
  %xor.i.i.i476.i.2 = xor i32 %conv1.i.i.i475.i.2, %conv.i.i.i474.i.2
  %conv2.i.i.i477.i.2 = trunc i32 %xor.i.i.i476.i.2 to i8
  %scevgep118.3 = getelementptr [5 x i8], [5 x i8]* %m.i, i64 0, i64 3
  %451 = load i8, i8* %scevgep118.3, align 1
  %conv.i.i.i474.i.3 = zext i8 %451 to i32
  %conv1.i.i.i475.i.3 = zext i8 %conv2.i.i.i477.i.2 to i32
  %xor.i.i.i476.i.3 = xor i32 %conv1.i.i.i475.i.3, %conv.i.i.i474.i.3
  %conv2.i.i.i477.i.3 = trunc i32 %xor.i.i.i476.i.3 to i8
  %scevgep118.4 = getelementptr [5 x i8], [5 x i8]* %m.i, i64 0, i64 4
  %452 = load i8, i8* %scevgep118.4, align 1
  %conv.i.i.i474.i.4 = zext i8 %452 to i32
  %conv1.i.i.i475.i.4 = zext i8 %conv2.i.i.i477.i.3 to i32
  %xor.i.i.i476.i.4 = xor i32 %conv1.i.i.i475.i.4, %conv.i.i.i474.i.4
  %conv2.i.i.i477.i.4 = trunc i32 %xor.i.i.i476.i.4 to i8
  %conv3.i480.i = zext i8 %conv2.i.i.i477.i.4 to i32
  %cmp.i481.i = icmp eq i32 %conv.i468.i, %conv3.i480.i
  call void @assume(i1 zeroext %cmp.i481.i) #3
  %conv5.i482.i = zext i8 %call1.i467.i to i32
  %scevgep114 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 0
  %453 = load i8, i8* %scevgep114, align 1
  %scevgep114.1 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 1
  %454 = load i8, i8* %scevgep114.1, align 1
  %conv.i.i96.i489.i.1 = zext i8 %454 to i32
  %conv1.i.i97.i490.i.1 = zext i8 %453 to i32
  %xor.i.i98.i491.i.1 = xor i32 %conv1.i.i97.i490.i.1, %conv.i.i96.i489.i.1
  %conv2.i.i99.i492.i.1 = trunc i32 %xor.i.i98.i491.i.1 to i8
  %scevgep114.2 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 2
  %455 = load i8, i8* %scevgep114.2, align 1
  %conv.i.i96.i489.i.2 = zext i8 %455 to i32
  %conv1.i.i97.i490.i.2 = zext i8 %conv2.i.i99.i492.i.1 to i32
  %xor.i.i98.i491.i.2 = xor i32 %conv1.i.i97.i490.i.2, %conv.i.i96.i489.i.2
  %conv2.i.i99.i492.i.2 = trunc i32 %xor.i.i98.i491.i.2 to i8
  %scevgep114.3 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 3
  %456 = load i8, i8* %scevgep114.3, align 1
  %conv.i.i96.i489.i.3 = zext i8 %456 to i32
  %conv1.i.i97.i490.i.3 = zext i8 %conv2.i.i99.i492.i.2 to i32
  %xor.i.i98.i491.i.3 = xor i32 %conv1.i.i97.i490.i.3, %conv.i.i96.i489.i.3
  %conv2.i.i99.i492.i.3 = trunc i32 %xor.i.i98.i491.i.3 to i8
  %scevgep114.4 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 4
  %457 = load i8, i8* %scevgep114.4, align 1
  %conv.i.i96.i489.i.4 = zext i8 %457 to i32
  %conv1.i.i97.i490.i.4 = zext i8 %conv2.i.i99.i492.i.3 to i32
  %xor.i.i98.i491.i.4 = xor i32 %conv1.i.i97.i490.i.4, %conv.i.i96.i489.i.4
  %conv2.i.i99.i492.i.4 = trunc i32 %xor.i.i98.i491.i.4 to i8
  %conv7.i495.i = zext i8 %conv2.i.i99.i492.i.4 to i32
  %cmp8.i496.i = icmp eq i32 %conv5.i482.i, %conv7.i495.i
  call void @assume(i1 zeroext %cmp8.i496.i) #3
  %scevgep91 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %scevgep9192 = bitcast i8* %scevgep91 to [5 x [5 x i8]]*
  %scevgep104 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %scevgep104105 = bitcast i8* %scevgep104 to [5 x [5 x i8]]*
  %call16.i504.i = call zeroext i8 (...) @rand() #3
  store i8 %call16.i504.i, i8* %scevgep91, align 1
  %458 = load i8, i8* %scevgep91, align 1
  %conv23.i513.i = zext i8 %458 to i32
  %459 = load i8, i8* %arraydecay18.i, align 1
  %scevgep102 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 1
  %460 = load i8, i8* %scevgep102, align 1
  %call28.i518.i = call zeroext i8 @mult(i8 zeroext %459, i8 zeroext %460) #3
  %conv29.i519.i = zext i8 %call28.i518.i to i32
  %xor.i520.i = xor i32 %conv23.i513.i, %conv29.i519.i
  %scevgep103 = getelementptr [5 x i8], [5 x i8]* %m.i, i64 0, i64 1
  %461 = load i8, i8* %scevgep103, align 1
  %462 = load i8, i8* %arraydecay19.i, align 1
  %call34.i525.i = call zeroext i8 @mult(i8 zeroext %461, i8 zeroext %462) #3
  %conv35.i526.i = zext i8 %call34.i525.i to i32
  %xor36.i527.i = xor i32 %xor.i520.i, %conv35.i526.i
  %conv37.i528.i = trunc i32 %xor36.i527.i to i8
  store i8 %conv37.i528.i, i8* %scevgep104, align 1
  %scevgep96 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep9192, i64 0, i64 0, i64 1
  %463 = bitcast i8* %scevgep96 to [5 x [5 x i8]]*
  %scevgep109 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep104105, i64 0, i64 1, i64 0
  %464 = bitcast i8* %scevgep109 to [5 x [5 x i8]]*
  %call16.i504.i.1446 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i504.i.1446, i8* %scevgep96, align 1
  %465 = load i8, i8* %scevgep96, align 1
  %conv23.i513.i.1447 = zext i8 %465 to i32
  %466 = load i8, i8* %arraydecay18.i, align 1
  %scevgep102.1448 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 2
  %467 = load i8, i8* %scevgep102.1448, align 1
  %call28.i518.i.1449 = call zeroext i8 @mult(i8 zeroext %466, i8 zeroext %467) #3
  %conv29.i519.i.1450 = zext i8 %call28.i518.i.1449 to i32
  %xor.i520.i.1451 = xor i32 %conv23.i513.i.1447, %conv29.i519.i.1450
  %scevgep103.1452 = getelementptr [5 x i8], [5 x i8]* %m.i, i64 0, i64 2
  %468 = load i8, i8* %scevgep103.1452, align 1
  %469 = load i8, i8* %arraydecay19.i, align 1
  %call34.i525.i.1453 = call zeroext i8 @mult(i8 zeroext %468, i8 zeroext %469) #3
  %conv35.i526.i.1454 = zext i8 %call34.i525.i.1453 to i32
  %xor36.i527.i.1455 = xor i32 %xor.i520.i.1451, %conv35.i526.i.1454
  %conv37.i528.i.1456 = trunc i32 %xor36.i527.i.1455 to i8
  store i8 %conv37.i528.i.1456, i8* %scevgep109, align 1
  %scevgep96.1457 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %463, i64 0, i64 0, i64 1
  %470 = bitcast i8* %scevgep96.1457 to [5 x [5 x i8]]*
  %scevgep109.1458 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %464, i64 0, i64 1, i64 0
  %471 = bitcast i8* %scevgep109.1458 to [5 x [5 x i8]]*
  %call16.i504.i.2460 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i504.i.2460, i8* %scevgep96.1457, align 1
  %472 = load i8, i8* %scevgep96.1457, align 1
  %conv23.i513.i.2461 = zext i8 %472 to i32
  %473 = load i8, i8* %arraydecay18.i, align 1
  %scevgep102.2462 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 3
  %474 = load i8, i8* %scevgep102.2462, align 1
  %call28.i518.i.2463 = call zeroext i8 @mult(i8 zeroext %473, i8 zeroext %474) #3
  %conv29.i519.i.2464 = zext i8 %call28.i518.i.2463 to i32
  %xor.i520.i.2465 = xor i32 %conv23.i513.i.2461, %conv29.i519.i.2464
  %scevgep103.2466 = getelementptr [5 x i8], [5 x i8]* %m.i, i64 0, i64 3
  %475 = load i8, i8* %scevgep103.2466, align 1
  %476 = load i8, i8* %arraydecay19.i, align 1
  %call34.i525.i.2467 = call zeroext i8 @mult(i8 zeroext %475, i8 zeroext %476) #3
  %conv35.i526.i.2468 = zext i8 %call34.i525.i.2467 to i32
  %xor36.i527.i.2469 = xor i32 %xor.i520.i.2465, %conv35.i526.i.2468
  %conv37.i528.i.2470 = trunc i32 %xor36.i527.i.2469 to i8
  store i8 %conv37.i528.i.2470, i8* %scevgep109.1458, align 1
  %scevgep96.2471 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %470, i64 0, i64 0, i64 1
  %scevgep109.2472 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %471, i64 0, i64 1, i64 0
  %call16.i504.i.3474 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i504.i.3474, i8* %scevgep96.2471, align 1
  %477 = load i8, i8* %scevgep96.2471, align 1
  %conv23.i513.i.3475 = zext i8 %477 to i32
  %478 = load i8, i8* %arraydecay18.i, align 1
  %scevgep102.3476 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 4
  %479 = load i8, i8* %scevgep102.3476, align 1
  %call28.i518.i.3477 = call zeroext i8 @mult(i8 zeroext %478, i8 zeroext %479) #3
  %conv29.i519.i.3478 = zext i8 %call28.i518.i.3477 to i32
  %xor.i520.i.3479 = xor i32 %conv23.i513.i.3475, %conv29.i519.i.3478
  %scevgep103.3480 = getelementptr [5 x i8], [5 x i8]* %m.i, i64 0, i64 4
  %480 = load i8, i8* %scevgep103.3480, align 1
  %481 = load i8, i8* %arraydecay19.i, align 1
  %call34.i525.i.3481 = call zeroext i8 @mult(i8 zeroext %480, i8 zeroext %481) #3
  %conv35.i526.i.3482 = zext i8 %call34.i525.i.3481 to i32
  %xor36.i527.i.3483 = xor i32 %xor.i520.i.3479, %conv35.i526.i.3482
  %conv37.i528.i.3484 = trunc i32 %xor36.i527.i.3483 to i8
  store i8 %conv37.i528.i.3484, i8* %scevgep109.2472, align 1
  %scevgep94 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep9192, i64 0, i64 1, i64 1
  %482 = bitcast i8* %scevgep94 to [5 x [5 x i8]]*
  %scevgep107 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep104105, i64 0, i64 1, i64 1
  %483 = bitcast i8* %scevgep107 to [5 x [5 x i8]]*
  %arrayidx25.i515.i.1 = getelementptr inbounds i8, i8* %arraydecay18.i, i64 1
  %arrayidx33.i524.i.1 = getelementptr inbounds i8, i8* %arraydecay19.i, i64 1
  %call16.i504.i.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i504.i.1, i8* %scevgep94, align 1
  %484 = load i8, i8* %scevgep94, align 1
  %conv23.i513.i.1 = zext i8 %484 to i32
  %485 = load i8, i8* %arrayidx25.i515.i.1, align 1
  %scevgep102.1 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 2
  %486 = load i8, i8* %scevgep102.1, align 1
  %call28.i518.i.1 = call zeroext i8 @mult(i8 zeroext %485, i8 zeroext %486) #3
  %conv29.i519.i.1 = zext i8 %call28.i518.i.1 to i32
  %xor.i520.i.1 = xor i32 %conv23.i513.i.1, %conv29.i519.i.1
  %scevgep103.1 = getelementptr [5 x i8], [5 x i8]* %m.i, i64 0, i64 2
  %487 = load i8, i8* %scevgep103.1, align 1
  %488 = load i8, i8* %arrayidx33.i524.i.1, align 1
  %call34.i525.i.1 = call zeroext i8 @mult(i8 zeroext %487, i8 zeroext %488) #3
  %conv35.i526.i.1 = zext i8 %call34.i525.i.1 to i32
  %xor36.i527.i.1 = xor i32 %xor.i520.i.1, %conv35.i526.i.1
  %conv37.i528.i.1 = trunc i32 %xor36.i527.i.1 to i8
  store i8 %conv37.i528.i.1, i8* %scevgep107, align 1
  %scevgep96.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %482, i64 0, i64 0, i64 1
  %489 = bitcast i8* %scevgep96.1 to [5 x [5 x i8]]*
  %scevgep109.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %483, i64 0, i64 1, i64 0
  %490 = bitcast i8* %scevgep109.1 to [5 x [5 x i8]]*
  %call16.i504.i.1.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i504.i.1.1, i8* %scevgep96.1, align 1
  %491 = load i8, i8* %scevgep96.1, align 1
  %conv23.i513.i.1.1 = zext i8 %491 to i32
  %492 = load i8, i8* %arrayidx25.i515.i.1, align 1
  %scevgep102.1.1 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 3
  %493 = load i8, i8* %scevgep102.1.1, align 1
  %call28.i518.i.1.1 = call zeroext i8 @mult(i8 zeroext %492, i8 zeroext %493) #3
  %conv29.i519.i.1.1 = zext i8 %call28.i518.i.1.1 to i32
  %xor.i520.i.1.1 = xor i32 %conv23.i513.i.1.1, %conv29.i519.i.1.1
  %scevgep103.1.1 = getelementptr [5 x i8], [5 x i8]* %m.i, i64 0, i64 3
  %494 = load i8, i8* %scevgep103.1.1, align 1
  %495 = load i8, i8* %arrayidx33.i524.i.1, align 1
  %call34.i525.i.1.1 = call zeroext i8 @mult(i8 zeroext %494, i8 zeroext %495) #3
  %conv35.i526.i.1.1 = zext i8 %call34.i525.i.1.1 to i32
  %xor36.i527.i.1.1 = xor i32 %xor.i520.i.1.1, %conv35.i526.i.1.1
  %conv37.i528.i.1.1 = trunc i32 %xor36.i527.i.1.1 to i8
  store i8 %conv37.i528.i.1.1, i8* %scevgep109.1, align 1
  %scevgep96.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %489, i64 0, i64 0, i64 1
  %scevgep109.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %490, i64 0, i64 1, i64 0
  %call16.i504.i.1.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i504.i.1.2, i8* %scevgep96.1.1, align 1
  %496 = load i8, i8* %scevgep96.1.1, align 1
  %conv23.i513.i.1.2 = zext i8 %496 to i32
  %497 = load i8, i8* %arrayidx25.i515.i.1, align 1
  %scevgep102.1.2 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 4
  %498 = load i8, i8* %scevgep102.1.2, align 1
  %call28.i518.i.1.2 = call zeroext i8 @mult(i8 zeroext %497, i8 zeroext %498) #3
  %conv29.i519.i.1.2 = zext i8 %call28.i518.i.1.2 to i32
  %xor.i520.i.1.2 = xor i32 %conv23.i513.i.1.2, %conv29.i519.i.1.2
  %scevgep103.1.2 = getelementptr [5 x i8], [5 x i8]* %m.i, i64 0, i64 4
  %499 = load i8, i8* %scevgep103.1.2, align 1
  %500 = load i8, i8* %arrayidx33.i524.i.1, align 1
  %call34.i525.i.1.2 = call zeroext i8 @mult(i8 zeroext %499, i8 zeroext %500) #3
  %conv35.i526.i.1.2 = zext i8 %call34.i525.i.1.2 to i32
  %xor36.i527.i.1.2 = xor i32 %xor.i520.i.1.2, %conv35.i526.i.1.2
  %conv37.i528.i.1.2 = trunc i32 %xor36.i527.i.1.2 to i8
  store i8 %conv37.i528.i.1.2, i8* %scevgep109.1.1, align 1
  %scevgep94.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %482, i64 0, i64 1, i64 1
  %501 = bitcast i8* %scevgep94.1 to [5 x [5 x i8]]*
  %scevgep107.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %483, i64 0, i64 1, i64 1
  %502 = bitcast i8* %scevgep107.1 to [5 x [5 x i8]]*
  %arrayidx25.i515.i.2 = getelementptr inbounds i8, i8* %arraydecay18.i, i64 2
  %arrayidx33.i524.i.2 = getelementptr inbounds i8, i8* %arraydecay19.i, i64 2
  %call16.i504.i.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i504.i.2, i8* %scevgep94.1, align 1
  %503 = load i8, i8* %scevgep94.1, align 1
  %conv23.i513.i.2 = zext i8 %503 to i32
  %504 = load i8, i8* %arrayidx25.i515.i.2, align 1
  %scevgep102.2 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 3
  %505 = load i8, i8* %scevgep102.2, align 1
  %call28.i518.i.2 = call zeroext i8 @mult(i8 zeroext %504, i8 zeroext %505) #3
  %conv29.i519.i.2 = zext i8 %call28.i518.i.2 to i32
  %xor.i520.i.2 = xor i32 %conv23.i513.i.2, %conv29.i519.i.2
  %scevgep103.2 = getelementptr [5 x i8], [5 x i8]* %m.i, i64 0, i64 3
  %506 = load i8, i8* %scevgep103.2, align 1
  %507 = load i8, i8* %arrayidx33.i524.i.2, align 1
  %call34.i525.i.2 = call zeroext i8 @mult(i8 zeroext %506, i8 zeroext %507) #3
  %conv35.i526.i.2 = zext i8 %call34.i525.i.2 to i32
  %xor36.i527.i.2 = xor i32 %xor.i520.i.2, %conv35.i526.i.2
  %conv37.i528.i.2 = trunc i32 %xor36.i527.i.2 to i8
  store i8 %conv37.i528.i.2, i8* %scevgep107.1, align 1
  %scevgep96.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %501, i64 0, i64 0, i64 1
  %scevgep109.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %502, i64 0, i64 1, i64 0
  %call16.i504.i.2.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i504.i.2.1, i8* %scevgep96.2, align 1
  %508 = load i8, i8* %scevgep96.2, align 1
  %conv23.i513.i.2.1 = zext i8 %508 to i32
  %509 = load i8, i8* %arrayidx25.i515.i.2, align 1
  %scevgep102.2.1 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 4
  %510 = load i8, i8* %scevgep102.2.1, align 1
  %call28.i518.i.2.1 = call zeroext i8 @mult(i8 zeroext %509, i8 zeroext %510) #3
  %conv29.i519.i.2.1 = zext i8 %call28.i518.i.2.1 to i32
  %xor.i520.i.2.1 = xor i32 %conv23.i513.i.2.1, %conv29.i519.i.2.1
  %scevgep103.2.1 = getelementptr [5 x i8], [5 x i8]* %m.i, i64 0, i64 4
  %511 = load i8, i8* %scevgep103.2.1, align 1
  %512 = load i8, i8* %arrayidx33.i524.i.2, align 1
  %call34.i525.i.2.1 = call zeroext i8 @mult(i8 zeroext %511, i8 zeroext %512) #3
  %conv35.i526.i.2.1 = zext i8 %call34.i525.i.2.1 to i32
  %xor36.i527.i.2.1 = xor i32 %xor.i520.i.2.1, %conv35.i526.i.2.1
  %conv37.i528.i.2.1 = trunc i32 %xor36.i527.i.2.1 to i8
  store i8 %conv37.i528.i.2.1, i8* %scevgep109.2, align 1
  %scevgep94.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %501, i64 0, i64 1, i64 1
  %scevgep107.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %502, i64 0, i64 1, i64 1
  %arrayidx25.i515.i.3 = getelementptr inbounds i8, i8* %arraydecay18.i, i64 3
  %arrayidx33.i524.i.3 = getelementptr inbounds i8, i8* %arraydecay19.i, i64 3
  %call16.i504.i.3 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i504.i.3, i8* %scevgep94.2, align 1
  %513 = load i8, i8* %scevgep94.2, align 1
  %conv23.i513.i.3 = zext i8 %513 to i32
  %514 = load i8, i8* %arrayidx25.i515.i.3, align 1
  %scevgep102.3 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 4
  %515 = load i8, i8* %scevgep102.3, align 1
  %call28.i518.i.3 = call zeroext i8 @mult(i8 zeroext %514, i8 zeroext %515) #3
  %conv29.i519.i.3 = zext i8 %call28.i518.i.3 to i32
  %xor.i520.i.3 = xor i32 %conv23.i513.i.3, %conv29.i519.i.3
  %scevgep103.3 = getelementptr [5 x i8], [5 x i8]* %m.i, i64 0, i64 4
  %516 = load i8, i8* %scevgep103.3, align 1
  %517 = load i8, i8* %arrayidx33.i524.i.3, align 1
  %call34.i525.i.3 = call zeroext i8 @mult(i8 zeroext %516, i8 zeroext %517) #3
  %conv35.i526.i.3 = zext i8 %call34.i525.i.3 to i32
  %xor36.i527.i.3 = xor i32 %xor.i520.i.3, %conv35.i526.i.3
  %conv37.i528.i.3 = trunc i32 %xor36.i527.i.3 to i8
  store i8 %conv37.i528.i.3, i8* %scevgep107.2, align 1
  %518 = load i8, i8* %arraydecay18.i, align 1
  %519 = load i8, i8* %arraydecay19.i, align 1
  %call54.i544.i = call zeroext i8 @mult(i8 zeroext %518, i8 zeroext %519) #3
  store i8 %call54.i544.i, i8* %y, align 1
  %scevgep88.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %520 = load i8, i8* %scevgep88.1, align 1
  %conv68.i556.i.1 = zext i8 %520 to i32
  %521 = load i8, i8* %y, align 1
  %conv71.i559.i.1 = zext i8 %521 to i32
  %xor72.i560.i.1 = xor i32 %conv71.i559.i.1, %conv68.i556.i.1
  %conv73.i561.i.1 = trunc i32 %xor72.i560.i.1 to i8
  store i8 %conv73.i561.i.1, i8* %y, align 1
  %scevgep88.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %522 = load i8, i8* %scevgep88.2, align 1
  %conv68.i556.i.2 = zext i8 %522 to i32
  %523 = load i8, i8* %y, align 1
  %conv71.i559.i.2 = zext i8 %523 to i32
  %xor72.i560.i.2 = xor i32 %conv71.i559.i.2, %conv68.i556.i.2
  %conv73.i561.i.2 = trunc i32 %xor72.i560.i.2 to i8
  store i8 %conv73.i561.i.2, i8* %y, align 1
  %scevgep88.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  %524 = load i8, i8* %scevgep88.3, align 1
  %conv68.i556.i.3 = zext i8 %524 to i32
  %525 = load i8, i8* %y, align 1
  %conv71.i559.i.3 = zext i8 %525 to i32
  %xor72.i560.i.3 = xor i32 %conv71.i559.i.3, %conv68.i556.i.3
  %conv73.i561.i.3 = trunc i32 %xor72.i560.i.3 to i8
  store i8 %conv73.i561.i.3, i8* %y, align 1
  %scevgep88.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 4
  %526 = load i8, i8* %scevgep88.4, align 1
  %conv68.i556.i.4 = zext i8 %526 to i32
  %527 = load i8, i8* %y, align 1
  %conv71.i559.i.4 = zext i8 %527 to i32
  %xor72.i560.i.4 = xor i32 %conv71.i559.i.4, %conv68.i556.i.4
  %conv73.i561.i.4 = trunc i32 %xor72.i560.i.4 to i8
  store i8 %conv73.i561.i.4, i8* %y, align 1
  %scevgep87 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %528 = bitcast i8* %scevgep87 to [5 x [5 x i8]]*
  %arrayidx51.i541.i.1 = getelementptr inbounds i8, i8* %arraydecay18.i, i64 1
  %529 = load i8, i8* %arrayidx51.i541.i.1, align 1
  %arrayidx53.i543.i.1 = getelementptr inbounds i8, i8* %arraydecay19.i, i64 1
  %530 = load i8, i8* %arrayidx53.i543.i.1, align 1
  %call54.i544.i.1 = call zeroext i8 @mult(i8 zeroext %529, i8 zeroext %530) #3
  %arrayidx56.i546.i.1 = getelementptr inbounds i8, i8* %y, i64 1
  store i8 %call54.i544.i.1, i8* %arrayidx56.i546.i.1, align 1
  %arrayidx70.i558.i.1 = getelementptr inbounds i8, i8* %y, i64 1
  %scevgep88.1304 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %528, i64 0, i64 0, i64 0
  %531 = load i8, i8* %scevgep88.1304, align 1
  %conv68.i556.i.1305 = zext i8 %531 to i32
  %532 = load i8, i8* %arrayidx70.i558.i.1, align 1
  %conv71.i559.i.1306 = zext i8 %532 to i32
  %xor72.i560.i.1307 = xor i32 %conv71.i559.i.1306, %conv68.i556.i.1305
  %conv73.i561.i.1308 = trunc i32 %xor72.i560.i.1307 to i8
  store i8 %conv73.i561.i.1308, i8* %arrayidx70.i558.i.1, align 1
  %scevgep88.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %528, i64 0, i64 0, i64 2
  %533 = load i8, i8* %scevgep88.2.1, align 1
  %conv68.i556.i.2.1 = zext i8 %533 to i32
  %534 = load i8, i8* %arrayidx70.i558.i.1, align 1
  %conv71.i559.i.2.1 = zext i8 %534 to i32
  %xor72.i560.i.2.1 = xor i32 %conv71.i559.i.2.1, %conv68.i556.i.2.1
  %conv73.i561.i.2.1 = trunc i32 %xor72.i560.i.2.1 to i8
  store i8 %conv73.i561.i.2.1, i8* %arrayidx70.i558.i.1, align 1
  %scevgep88.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %528, i64 0, i64 0, i64 3
  %535 = load i8, i8* %scevgep88.3.1, align 1
  %conv68.i556.i.3.1 = zext i8 %535 to i32
  %536 = load i8, i8* %arrayidx70.i558.i.1, align 1
  %conv71.i559.i.3.1 = zext i8 %536 to i32
  %xor72.i560.i.3.1 = xor i32 %conv71.i559.i.3.1, %conv68.i556.i.3.1
  %conv73.i561.i.3.1 = trunc i32 %xor72.i560.i.3.1 to i8
  store i8 %conv73.i561.i.3.1, i8* %arrayidx70.i558.i.1, align 1
  %scevgep88.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %528, i64 0, i64 0, i64 4
  %537 = load i8, i8* %scevgep88.4.1, align 1
  %conv68.i556.i.4.1 = zext i8 %537 to i32
  %538 = load i8, i8* %arrayidx70.i558.i.1, align 1
  %conv71.i559.i.4.1 = zext i8 %538 to i32
  %xor72.i560.i.4.1 = xor i32 %conv71.i559.i.4.1, %conv68.i556.i.4.1
  %conv73.i561.i.4.1 = trunc i32 %xor72.i560.i.4.1 to i8
  store i8 %conv73.i561.i.4.1, i8* %arrayidx70.i558.i.1, align 1
  %scevgep87.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %528, i64 0, i64 1, i64 0
  %539 = bitcast i8* %scevgep87.1 to [5 x [5 x i8]]*
  %arrayidx51.i541.i.2 = getelementptr inbounds i8, i8* %arraydecay18.i, i64 2
  %540 = load i8, i8* %arrayidx51.i541.i.2, align 1
  %arrayidx53.i543.i.2 = getelementptr inbounds i8, i8* %arraydecay19.i, i64 2
  %541 = load i8, i8* %arrayidx53.i543.i.2, align 1
  %call54.i544.i.2 = call zeroext i8 @mult(i8 zeroext %540, i8 zeroext %541) #3
  %arrayidx56.i546.i.2 = getelementptr inbounds i8, i8* %y, i64 2
  store i8 %call54.i544.i.2, i8* %arrayidx56.i546.i.2, align 1
  %arrayidx70.i558.i.2 = getelementptr inbounds i8, i8* %y, i64 2
  %scevgep88.2313 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %539, i64 0, i64 0, i64 0
  %542 = load i8, i8* %scevgep88.2313, align 1
  %conv68.i556.i.2314 = zext i8 %542 to i32
  %543 = load i8, i8* %arrayidx70.i558.i.2, align 1
  %conv71.i559.i.2315 = zext i8 %543 to i32
  %xor72.i560.i.2316 = xor i32 %conv71.i559.i.2315, %conv68.i556.i.2314
  %conv73.i561.i.2317 = trunc i32 %xor72.i560.i.2316 to i8
  store i8 %conv73.i561.i.2317, i8* %arrayidx70.i558.i.2, align 1
  %scevgep88.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %539, i64 0, i64 0, i64 1
  %544 = load i8, i8* %scevgep88.1.2, align 1
  %conv68.i556.i.1.2 = zext i8 %544 to i32
  %545 = load i8, i8* %arrayidx70.i558.i.2, align 1
  %conv71.i559.i.1.2 = zext i8 %545 to i32
  %xor72.i560.i.1.2 = xor i32 %conv71.i559.i.1.2, %conv68.i556.i.1.2
  %conv73.i561.i.1.2 = trunc i32 %xor72.i560.i.1.2 to i8
  store i8 %conv73.i561.i.1.2, i8* %arrayidx70.i558.i.2, align 1
  %scevgep88.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %539, i64 0, i64 0, i64 3
  %546 = load i8, i8* %scevgep88.3.2, align 1
  %conv68.i556.i.3.2 = zext i8 %546 to i32
  %547 = load i8, i8* %arrayidx70.i558.i.2, align 1
  %conv71.i559.i.3.2 = zext i8 %547 to i32
  %xor72.i560.i.3.2 = xor i32 %conv71.i559.i.3.2, %conv68.i556.i.3.2
  %conv73.i561.i.3.2 = trunc i32 %xor72.i560.i.3.2 to i8
  store i8 %conv73.i561.i.3.2, i8* %arrayidx70.i558.i.2, align 1
  %scevgep88.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %539, i64 0, i64 0, i64 4
  %548 = load i8, i8* %scevgep88.4.2, align 1
  %conv68.i556.i.4.2 = zext i8 %548 to i32
  %549 = load i8, i8* %arrayidx70.i558.i.2, align 1
  %conv71.i559.i.4.2 = zext i8 %549 to i32
  %xor72.i560.i.4.2 = xor i32 %conv71.i559.i.4.2, %conv68.i556.i.4.2
  %conv73.i561.i.4.2 = trunc i32 %xor72.i560.i.4.2 to i8
  store i8 %conv73.i561.i.4.2, i8* %arrayidx70.i558.i.2, align 1
  %scevgep87.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %539, i64 0, i64 1, i64 0
  %550 = bitcast i8* %scevgep87.2 to [5 x [5 x i8]]*
  %arrayidx51.i541.i.3 = getelementptr inbounds i8, i8* %arraydecay18.i, i64 3
  %551 = load i8, i8* %arrayidx51.i541.i.3, align 1
  %arrayidx53.i543.i.3 = getelementptr inbounds i8, i8* %arraydecay19.i, i64 3
  %552 = load i8, i8* %arrayidx53.i543.i.3, align 1
  %call54.i544.i.3 = call zeroext i8 @mult(i8 zeroext %551, i8 zeroext %552) #3
  %arrayidx56.i546.i.3 = getelementptr inbounds i8, i8* %y, i64 3
  store i8 %call54.i544.i.3, i8* %arrayidx56.i546.i.3, align 1
  %arrayidx70.i558.i.3 = getelementptr inbounds i8, i8* %y, i64 3
  %scevgep88.3322 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %550, i64 0, i64 0, i64 0
  %553 = load i8, i8* %scevgep88.3322, align 1
  %conv68.i556.i.3323 = zext i8 %553 to i32
  %554 = load i8, i8* %arrayidx70.i558.i.3, align 1
  %conv71.i559.i.3324 = zext i8 %554 to i32
  %xor72.i560.i.3325 = xor i32 %conv71.i559.i.3324, %conv68.i556.i.3323
  %conv73.i561.i.3326 = trunc i32 %xor72.i560.i.3325 to i8
  store i8 %conv73.i561.i.3326, i8* %arrayidx70.i558.i.3, align 1
  %scevgep88.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %550, i64 0, i64 0, i64 1
  %555 = load i8, i8* %scevgep88.1.3, align 1
  %conv68.i556.i.1.3 = zext i8 %555 to i32
  %556 = load i8, i8* %arrayidx70.i558.i.3, align 1
  %conv71.i559.i.1.3 = zext i8 %556 to i32
  %xor72.i560.i.1.3 = xor i32 %conv71.i559.i.1.3, %conv68.i556.i.1.3
  %conv73.i561.i.1.3 = trunc i32 %xor72.i560.i.1.3 to i8
  store i8 %conv73.i561.i.1.3, i8* %arrayidx70.i558.i.3, align 1
  %scevgep88.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %550, i64 0, i64 0, i64 2
  %557 = load i8, i8* %scevgep88.2.3, align 1
  %conv68.i556.i.2.3 = zext i8 %557 to i32
  %558 = load i8, i8* %arrayidx70.i558.i.3, align 1
  %conv71.i559.i.2.3 = zext i8 %558 to i32
  %xor72.i560.i.2.3 = xor i32 %conv71.i559.i.2.3, %conv68.i556.i.2.3
  %conv73.i561.i.2.3 = trunc i32 %xor72.i560.i.2.3 to i8
  store i8 %conv73.i561.i.2.3, i8* %arrayidx70.i558.i.3, align 1
  %scevgep88.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %550, i64 0, i64 0, i64 4
  %559 = load i8, i8* %scevgep88.4.3, align 1
  %conv68.i556.i.4.3 = zext i8 %559 to i32
  %560 = load i8, i8* %arrayidx70.i558.i.3, align 1
  %conv71.i559.i.4.3 = zext i8 %560 to i32
  %xor72.i560.i.4.3 = xor i32 %conv71.i559.i.4.3, %conv68.i556.i.4.3
  %conv73.i561.i.4.3 = trunc i32 %xor72.i560.i.4.3 to i8
  store i8 %conv73.i561.i.4.3, i8* %arrayidx70.i558.i.3, align 1
  %scevgep87.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %550, i64 0, i64 1, i64 0
  %561 = bitcast i8* %scevgep87.3 to [5 x [5 x i8]]*
  %arrayidx51.i541.i.4 = getelementptr inbounds i8, i8* %arraydecay18.i, i64 4
  %562 = load i8, i8* %arrayidx51.i541.i.4, align 1
  %arrayidx53.i543.i.4 = getelementptr inbounds i8, i8* %arraydecay19.i, i64 4
  %563 = load i8, i8* %arrayidx53.i543.i.4, align 1
  %call54.i544.i.4 = call zeroext i8 @mult(i8 zeroext %562, i8 zeroext %563) #3
  %arrayidx56.i546.i.4 = getelementptr inbounds i8, i8* %y, i64 4
  store i8 %call54.i544.i.4, i8* %arrayidx56.i546.i.4, align 1
  %arrayidx70.i558.i.4 = getelementptr inbounds i8, i8* %y, i64 4
  %scevgep88.4331 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %561, i64 0, i64 0, i64 0
  %564 = load i8, i8* %scevgep88.4331, align 1
  %conv68.i556.i.4332 = zext i8 %564 to i32
  %565 = load i8, i8* %arrayidx70.i558.i.4, align 1
  %conv71.i559.i.4333 = zext i8 %565 to i32
  %xor72.i560.i.4334 = xor i32 %conv71.i559.i.4333, %conv68.i556.i.4332
  %conv73.i561.i.4335 = trunc i32 %xor72.i560.i.4334 to i8
  store i8 %conv73.i561.i.4335, i8* %arrayidx70.i558.i.4, align 1
  %scevgep88.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %561, i64 0, i64 0, i64 1
  %566 = load i8, i8* %scevgep88.1.4, align 1
  %conv68.i556.i.1.4 = zext i8 %566 to i32
  %567 = load i8, i8* %arrayidx70.i558.i.4, align 1
  %conv71.i559.i.1.4 = zext i8 %567 to i32
  %xor72.i560.i.1.4 = xor i32 %conv71.i559.i.1.4, %conv68.i556.i.1.4
  %conv73.i561.i.1.4 = trunc i32 %xor72.i560.i.1.4 to i8
  store i8 %conv73.i561.i.1.4, i8* %arrayidx70.i558.i.4, align 1
  %scevgep88.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %561, i64 0, i64 0, i64 2
  %568 = load i8, i8* %scevgep88.2.4, align 1
  %conv68.i556.i.2.4 = zext i8 %568 to i32
  %569 = load i8, i8* %arrayidx70.i558.i.4, align 1
  %conv71.i559.i.2.4 = zext i8 %569 to i32
  %xor72.i560.i.2.4 = xor i32 %conv71.i559.i.2.4, %conv68.i556.i.2.4
  %conv73.i561.i.2.4 = trunc i32 %xor72.i560.i.2.4 to i8
  store i8 %conv73.i561.i.2.4, i8* %arrayidx70.i558.i.4, align 1
  %scevgep88.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %561, i64 0, i64 0, i64 3
  %570 = load i8, i8* %scevgep88.3.4, align 1
  %conv68.i556.i.3.4 = zext i8 %570 to i32
  %571 = load i8, i8* %arrayidx70.i558.i.4, align 1
  %conv71.i559.i.3.4 = zext i8 %571 to i32
  %xor72.i560.i.3.4 = xor i32 %conv71.i559.i.3.4, %conv68.i556.i.3.4
  %conv73.i561.i.3.4 = trunc i32 %xor72.i560.i.3.4 to i8
  store i8 %conv73.i561.i.3.4, i8* %arrayidx70.i558.i.4, align 1
  %call80.i567.i = call zeroext i8 @mult(i8 zeroext %call.i466.i, i8 zeroext %call1.i467.i) #3
  %conv81.i568.i = zext i8 %call80.i567.i to i32
  %572 = load i8, i8* %y, align 1
  %scevgep78.1 = getelementptr i8, i8* %y, i64 1
  %573 = load i8, i8* %scevgep78.1, align 1
  %conv.i.i113.i575.i.1 = zext i8 %573 to i32
  %conv1.i.i114.i576.i.1 = zext i8 %572 to i32
  %xor.i.i115.i577.i.1 = xor i32 %conv1.i.i114.i576.i.1, %conv.i.i113.i575.i.1
  %conv2.i.i116.i578.i.1 = trunc i32 %xor.i.i115.i577.i.1 to i8
  %scevgep78.2 = getelementptr i8, i8* %y, i64 2
  %574 = load i8, i8* %scevgep78.2, align 1
  %conv.i.i113.i575.i.2 = zext i8 %574 to i32
  %conv1.i.i114.i576.i.2 = zext i8 %conv2.i.i116.i578.i.1 to i32
  %xor.i.i115.i577.i.2 = xor i32 %conv1.i.i114.i576.i.2, %conv.i.i113.i575.i.2
  %conv2.i.i116.i578.i.2 = trunc i32 %xor.i.i115.i577.i.2 to i8
  %scevgep78.3 = getelementptr i8, i8* %y, i64 3
  %575 = load i8, i8* %scevgep78.3, align 1
  %conv.i.i113.i575.i.3 = zext i8 %575 to i32
  %conv1.i.i114.i576.i.3 = zext i8 %conv2.i.i116.i578.i.2 to i32
  %xor.i.i115.i577.i.3 = xor i32 %conv1.i.i114.i576.i.3, %conv.i.i113.i575.i.3
  %conv2.i.i116.i578.i.3 = trunc i32 %xor.i.i115.i577.i.3 to i8
  %scevgep78.4 = getelementptr i8, i8* %y, i64 4
  %576 = load i8, i8* %scevgep78.4, align 1
  %conv.i.i113.i575.i.4 = zext i8 %576 to i32
  %conv1.i.i114.i576.i.4 = zext i8 %conv2.i.i116.i578.i.3 to i32
  %xor.i.i115.i577.i.4 = xor i32 %conv1.i.i114.i576.i.4, %conv.i.i113.i575.i.4
  %conv2.i.i116.i578.i.4 = trunc i32 %xor.i.i115.i577.i.4 to i8
  %conv83.i581.i = zext i8 %conv2.i.i116.i578.i.4 to i32
  %cmp84.i582.i = icmp eq i32 %conv81.i568.i, %conv83.i581.i
  call void @assert(i1 zeroext %cmp84.i582.i) #3
  %call.i585.i = call zeroext i8 @square(i8 zeroext %call.i) #3
  %call1.i586.i = call zeroext i8 @mult(i8 zeroext %call.i585.i, i8 zeroext %call.i) #3
  %call2.i.i = call zeroext i8 @exp4(i8 zeroext %call1.i586.i) #3
  %call3.i.i = call zeroext i8 @mult(i8 zeroext %call1.i586.i, i8 zeroext %call2.i.i) #3
  %call4.i.i = call zeroext i8 @exp16(i8 zeroext %call3.i.i) #3
  %call5.i.i = call zeroext i8 @mult(i8 zeroext %call4.i.i, i8 zeroext %call2.i.i) #3
  %call6.i.i = call zeroext i8 @mult(i8 zeroext %call5.i.i, i8 zeroext %call.i585.i) #3
  %conv21.i = zext i8 %call6.i.i to i32
  %577 = load i8, i8* %y, align 1
  %scevgep74.1 = getelementptr i8, i8* %y, i64 1
  %578 = load i8, i8* %scevgep74.1, align 1
  %conv.i.i597.i.1 = zext i8 %578 to i32
  %conv1.i.i598.i.1 = zext i8 %577 to i32
  %xor.i.i599.i.1 = xor i32 %conv1.i.i598.i.1, %conv.i.i597.i.1
  %conv2.i.i600.i.1 = trunc i32 %xor.i.i599.i.1 to i8
  %scevgep74.2 = getelementptr i8, i8* %y, i64 2
  %579 = load i8, i8* %scevgep74.2, align 1
  %conv.i.i597.i.2 = zext i8 %579 to i32
  %conv1.i.i598.i.2 = zext i8 %conv2.i.i600.i.1 to i32
  %xor.i.i599.i.2 = xor i32 %conv1.i.i598.i.2, %conv.i.i597.i.2
  %conv2.i.i600.i.2 = trunc i32 %xor.i.i599.i.2 to i8
  %scevgep74.3 = getelementptr i8, i8* %y, i64 3
  %580 = load i8, i8* %scevgep74.3, align 1
  %conv.i.i597.i.3 = zext i8 %580 to i32
  %conv1.i.i598.i.3 = zext i8 %conv2.i.i600.i.2 to i32
  %xor.i.i599.i.3 = xor i32 %conv1.i.i598.i.3, %conv.i.i597.i.3
  %conv2.i.i600.i.3 = trunc i32 %xor.i.i599.i.3 to i8
  %scevgep74.4 = getelementptr i8, i8* %y, i64 4
  %581 = load i8, i8* %scevgep74.4, align 1
  %conv.i.i597.i.4 = zext i8 %581 to i32
  %conv1.i.i598.i.4 = zext i8 %conv2.i.i600.i.3 to i32
  %xor.i.i599.i.4 = xor i32 %conv1.i.i598.i.4, %conv.i.i597.i.4
  %conv2.i.i600.i.4 = trunc i32 %xor.i.i599.i.4 to i8
  %conv23.i = zext i8 %conv2.i.i600.i.4 to i32
  %cmp24.i = icmp eq i32 %conv21.i, %conv23.i
  call void @assert(i1 zeroext %cmp24.i) #3
  %582 = load i8, i8* %y, align 1
  %call.i24 = call zeroext i8 @af(i8 zeroext %582) #3
  store i8 %call.i24, i8* %y, align 1
  %scevgep69.1 = getelementptr i8, i8* %y, i64 1
  %583 = load i8, i8* %scevgep69.1, align 1
  %call.i24.1 = call zeroext i8 @af(i8 zeroext %583) #3
  %scevgep70.1 = getelementptr i8, i8* %y, i64 1
  store i8 %call.i24.1, i8* %scevgep70.1, align 1
  %scevgep69.2 = getelementptr i8, i8* %y, i64 2
  %584 = load i8, i8* %scevgep69.2, align 1
  %call.i24.2 = call zeroext i8 @af(i8 zeroext %584) #3
  %scevgep70.2 = getelementptr i8, i8* %y, i64 2
  store i8 %call.i24.2, i8* %scevgep70.2, align 1
  %scevgep69.3 = getelementptr i8, i8* %y, i64 3
  %585 = load i8, i8* %scevgep69.3, align 1
  %call.i24.3 = call zeroext i8 @af(i8 zeroext %585) #3
  %scevgep70.3 = getelementptr i8, i8* %y, i64 3
  store i8 %call.i24.3, i8* %scevgep70.3, align 1
  %scevgep69.4 = getelementptr i8, i8* %y, i64 4
  %586 = load i8, i8* %scevgep69.4, align 1
  %call.i24.4 = call zeroext i8 @af(i8 zeroext %586) #3
  %scevgep70.4 = getelementptr i8, i8* %y, i64 4
  store i8 %call.i24.4, i8* %scevgep70.4, align 1
  %call.i.i30 = call zeroext i8 @square(i8 zeroext %call) #3
  %call1.i.i31 = call zeroext i8 @mult(i8 zeroext %call.i.i30, i8 zeroext %call) #3
  %call2.i.i32 = call zeroext i8 @exp4(i8 zeroext %call1.i.i31) #3
  %call3.i.i33 = call zeroext i8 @mult(i8 zeroext %call1.i.i31, i8 zeroext %call2.i.i32) #3
  %call4.i.i34 = call zeroext i8 @exp16(i8 zeroext %call3.i.i33) #3
  %call5.i.i35 = call zeroext i8 @mult(i8 zeroext %call4.i.i34, i8 zeroext %call2.i.i32) #3
  %call6.i.i36 = call zeroext i8 @mult(i8 zeroext %call5.i.i35, i8 zeroext %call.i.i30) #3
  %call1.i = call zeroext i8 @af(i8 zeroext %call6.i.i36) #3
  %conv5 = zext i8 %call1.i to i32
  %587 = load i8, i8* %y, align 1
  %scevgep.1 = getelementptr i8, i8* %y, i64 1
  %588 = load i8, i8* %scevgep.1, align 1
  %conv.i.i47.1 = zext i8 %588 to i32
  %conv1.i.i48.1 = zext i8 %587 to i32
  %xor.i.i49.1 = xor i32 %conv1.i.i48.1, %conv.i.i47.1
  %conv2.i.i50.1 = trunc i32 %xor.i.i49.1 to i8
  %scevgep.2 = getelementptr i8, i8* %y, i64 2
  %589 = load i8, i8* %scevgep.2, align 1
  %conv.i.i47.2 = zext i8 %589 to i32
  %conv1.i.i48.2 = zext i8 %conv2.i.i50.1 to i32
  %xor.i.i49.2 = xor i32 %conv1.i.i48.2, %conv.i.i47.2
  %conv2.i.i50.2 = trunc i32 %xor.i.i49.2 to i8
  %scevgep.3 = getelementptr i8, i8* %y, i64 3
  %590 = load i8, i8* %scevgep.3, align 1
  %conv.i.i47.3 = zext i8 %590 to i32
  %conv1.i.i48.3 = zext i8 %conv2.i.i50.2 to i32
  %xor.i.i49.3 = xor i32 %conv1.i.i48.3, %conv.i.i47.3
  %conv2.i.i50.3 = trunc i32 %xor.i.i49.3 to i8
  %scevgep.4 = getelementptr i8, i8* %y, i64 4
  %591 = load i8, i8* %scevgep.4, align 1
  %conv.i.i47.4 = zext i8 %591 to i32
  %conv1.i.i48.4 = zext i8 %conv2.i.i50.3 to i32
  %xor.i.i49.4 = xor i32 %conv1.i.i48.4, %conv.i.i47.4
  %conv2.i.i50.4 = trunc i32 %xor.i.i49.4 to i8
  %conv7 = zext i8 %conv2.i.i50.4 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assert(i1 zeroext %cmp8)
  ret void
}

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.1.0 (https://github.com/llvm/llvm-project.git 7e99bddfeaab2713a8bb6ca538da25b66e6efc59)"}
