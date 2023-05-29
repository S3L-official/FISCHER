; ModuleID = '../examples/rivain-ches2010-present-sbox.inline-4.ll'
source_filename = "../examples/rivain-ches2010-present-sbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 4, align 4
@.str = private unnamed_addr constant [7 x i8] c"verify\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [43 x i8] c"../examples/rivain-ches2010-present-sbox.c\00", section "llvm.metadata"
@a0 = dso_local constant i8 1, align 1
@a1 = dso_local constant i8 2, align 1
@a2 = dso_local constant i8 3, align 1
@a3 = dso_local constant i8 4, align 1
@a4 = dso_local constant i8 5, align 1
@a5 = dso_local constant i8 6, align 1
@a6 = dso_local constant i8 7, align 1
@a7 = dso_local constant i8 8, align 1
@a8 = dso_local constant i8 9, align 1
@a9 = dso_local constant i8 10, align 1
@a10 = dso_local constant i8 11, align 1
@a11 = dso_local constant i8 12, align 1
@a12 = dso_local constant i8 13, align 1
@a13 = dso_local constant i8 14, align 1
@a14 = dso_local constant i8 15, align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"affine\00", section "llvm.metadata"
@llvm.global.annotations = appending global [14 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*, i8*)* @sec_mult to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i32 3 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*)* @refresh_masks to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i32 29 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @square to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i32 59 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp4 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i32 61 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp8 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i32 63 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @L1 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i32 65 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @L3 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i32 69 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @L5 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i32 73 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @L7 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i32 77 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp3 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i32 81 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp5 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i32 85 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp7 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i32 89 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @S to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i32 93 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*)* @sec_S to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i32 97 }], section "llvm.metadata"

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
define dso_local zeroext i8 @exp8(i8 zeroext %x) #2 {
entry:
  %call = call zeroext i8 @exp4(i8 zeroext %x)
  %call1 = call zeroext i8 @square(i8 zeroext %call)
  ret i8 %call1
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @L1(i8 zeroext %x) #2 {
entry:
  %call = call zeroext i8 @mult(i8 zeroext 2, i8 zeroext %x)
  %conv = zext i8 %call to i32
  %call1 = call zeroext i8 @square(i8 zeroext %x)
  %call2 = call zeroext i8 @mult(i8 zeroext 3, i8 zeroext %call1)
  %conv3 = zext i8 %call2 to i32
  %xor = xor i32 %conv, %conv3
  %call4 = call zeroext i8 @exp4(i8 zeroext %x)
  %call5 = call zeroext i8 @mult(i8 zeroext 5, i8 zeroext %call4)
  %conv6 = zext i8 %call5 to i32
  %xor7 = xor i32 %xor, %conv6
  %call8 = call zeroext i8 @exp8(i8 zeroext %x)
  %call9 = call zeroext i8 @mult(i8 zeroext 9, i8 zeroext %call8)
  %conv10 = zext i8 %call9 to i32
  %xor11 = xor i32 %xor7, %conv10
  %conv12 = trunc i32 %xor11 to i8
  ret i8 %conv12
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @L3(i8 zeroext %x) #2 {
entry:
  %call = call zeroext i8 @mult(i8 zeroext 4, i8 zeroext %x)
  %conv = zext i8 %call to i32
  %call1 = call zeroext i8 @square(i8 zeroext %x)
  %call2 = call zeroext i8 @mult(i8 zeroext 7, i8 zeroext %call1)
  %conv3 = zext i8 %call2 to i32
  %xor = xor i32 %conv, %conv3
  %call4 = call zeroext i8 @exp4(i8 zeroext %x)
  %call5 = call zeroext i8 @mult(i8 zeroext 13, i8 zeroext %call4)
  %conv6 = zext i8 %call5 to i32
  %xor7 = xor i32 %xor, %conv6
  %call8 = call zeroext i8 @exp8(i8 zeroext %x)
  %call9 = call zeroext i8 @mult(i8 zeroext 10, i8 zeroext %call8)
  %conv10 = zext i8 %call9 to i32
  %xor11 = xor i32 %xor7, %conv10
  %conv12 = trunc i32 %xor11 to i8
  ret i8 %conv12
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @L5(i8 zeroext %x) #2 {
entry:
  %call = call zeroext i8 @mult(i8 zeroext 6, i8 zeroext %x)
  %conv = zext i8 %call to i32
  %call1 = call zeroext i8 @square(i8 zeroext %x)
  %call2 = call zeroext i8 @mult(i8 zeroext 11, i8 zeroext %call1)
  %conv3 = zext i8 %call2 to i32
  %xor = xor i32 %conv, %conv3
  %conv4 = trunc i32 %xor to i8
  ret i8 %conv4
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @L7(i8 zeroext %x) #2 {
entry:
  %call = call zeroext i8 @mult(i8 zeroext 8, i8 zeroext %x)
  %conv = zext i8 %call to i32
  %call1 = call zeroext i8 @square(i8 zeroext %x)
  %call2 = call zeroext i8 @mult(i8 zeroext 15, i8 zeroext %call1)
  %conv3 = zext i8 %call2 to i32
  %xor = xor i32 %conv, %conv3
  %call4 = call zeroext i8 @exp4(i8 zeroext %x)
  %call5 = call zeroext i8 @mult(i8 zeroext 14, i8 zeroext %call4)
  %conv6 = zext i8 %call5 to i32
  %xor7 = xor i32 %xor, %conv6
  %call8 = call zeroext i8 @exp8(i8 zeroext %x)
  %call9 = call zeroext i8 @mult(i8 zeroext 12, i8 zeroext %call8)
  %conv10 = zext i8 %call9 to i32
  %xor11 = xor i32 %xor7, %conv10
  %conv12 = trunc i32 %xor11 to i8
  ret i8 %conv12
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @exp3(i8 zeroext %x) #0 {
entry:
  %call = call zeroext i8 @square(i8 zeroext %x)
  %call1 = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %call)
  ret i8 %call1
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @exp5(i8 zeroext %x) #0 {
entry:
  %call = call zeroext i8 @exp4(i8 zeroext %x)
  %call1 = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %call)
  ret i8 %call1
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @exp7(i8 zeroext %x) #0 {
entry:
  %call.i = call zeroext i8 @square(i8 zeroext %x) #3
  %call1.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %call.i) #3
  %call1 = call zeroext i8 @exp4(i8 zeroext %x)
  %call2 = call zeroext i8 @mult(i8 zeroext %call1.i, i8 zeroext %call1)
  ret i8 %call2
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @S(i8 zeroext %x) #0 {
entry:
  %call = call zeroext i8 @L1(i8 zeroext %x)
  %conv = zext i8 %call to i32
  %xor = xor i32 1, %conv
  %call.i = call zeroext i8 @square(i8 zeroext %x) #3
  %call1.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %call.i) #3
  %call2 = call zeroext i8 @L3(i8 zeroext %call1.i)
  %conv3 = zext i8 %call2 to i32
  %xor4 = xor i32 %xor, %conv3
  %call.i15 = call zeroext i8 @exp4(i8 zeroext %x) #3
  %call1.i16 = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %call.i15) #3
  %call6 = call zeroext i8 @L5(i8 zeroext %call1.i16)
  %conv7 = zext i8 %call6 to i32
  %xor8 = xor i32 %xor4, %conv7
  %call.i.i = call zeroext i8 @square(i8 zeroext %x) #3
  %call1.i.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %call.i.i) #3
  %call1.i18 = call zeroext i8 @exp4(i8 zeroext %x) #3
  %call2.i = call zeroext i8 @mult(i8 zeroext %call1.i.i, i8 zeroext %call1.i18) #3
  %call10 = call zeroext i8 @L7(i8 zeroext %call2.i)
  %conv11 = zext i8 %call10 to i32
  %xor12 = xor i32 %xor8, %conv11
  %conv13 = trunc i32 %xor12 to i8
  ret i8 %conv13
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_S(i8* %x, i8* %y) #0 {
entry:
  %r.i = alloca [5 x [5 x i8]], align 16
  %l1 = alloca [5 x i8], align 1
  %l3 = alloca [5 x i8], align 1
  %l5 = alloca [5 x i8], align 1
  %l7 = alloca [5 x i8], align 1
  %e2 = alloca [5 x i8], align 1
  %e3 = alloca [5 x i8], align 1
  %e4 = alloca [5 x i8], align 1
  %e5 = alloca [5 x i8], align 1
  %e7 = alloca [5 x i8], align 1
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %scevgep219.1 = getelementptr i8, i8* %x, i64 1
  %1 = load i8, i8* %scevgep219.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep219.2 = getelementptr i8, i8* %x, i64 2
  %2 = load i8, i8* %scevgep219.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %scevgep219.3 = getelementptr i8, i8* %x, i64 3
  %3 = load i8, i8* %scevgep219.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %scevgep219.4 = getelementptr i8, i8* %x, i64 4
  %4 = load i8, i8* %scevgep219.4, align 1
  %conv.i.i.4 = zext i8 %4 to i32
  %conv1.i.i.4 = zext i8 %conv2.i.i.3 to i32
  %xor.i.i.4 = xor i32 %conv1.i.i.4, %conv.i.i.4
  %conv2.i.i.4 = trunc i32 %xor.i.i.4 to i8
  %conv2 = zext i8 %conv2.i.i.4 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %5 = load i8, i8* %x, align 1
  %call.i = call zeroext i8 @L1(i8 zeroext %5) #3
  %scevgep215 = getelementptr [5 x i8], [5 x i8]* %l1, i64 0, i64 0
  store i8 %call.i, i8* %scevgep215, align 1
  %scevgep214.1 = getelementptr i8, i8* %x, i64 1
  %6 = load i8, i8* %scevgep214.1, align 1
  %call.i.1 = call zeroext i8 @L1(i8 zeroext %6) #3
  %scevgep215.1 = getelementptr [5 x i8], [5 x i8]* %l1, i64 0, i64 1
  store i8 %call.i.1, i8* %scevgep215.1, align 1
  %scevgep214.2 = getelementptr i8, i8* %x, i64 2
  %7 = load i8, i8* %scevgep214.2, align 1
  %call.i.2 = call zeroext i8 @L1(i8 zeroext %7) #3
  %scevgep215.2 = getelementptr [5 x i8], [5 x i8]* %l1, i64 0, i64 2
  store i8 %call.i.2, i8* %scevgep215.2, align 1
  %scevgep214.3 = getelementptr i8, i8* %x, i64 3
  %8 = load i8, i8* %scevgep214.3, align 1
  %call.i.3 = call zeroext i8 @L1(i8 zeroext %8) #3
  %scevgep215.3 = getelementptr [5 x i8], [5 x i8]* %l1, i64 0, i64 3
  store i8 %call.i.3, i8* %scevgep215.3, align 1
  %scevgep214.4 = getelementptr i8, i8* %x, i64 4
  %9 = load i8, i8* %scevgep214.4, align 1
  %call.i.4 = call zeroext i8 @L1(i8 zeroext %9) #3
  %scevgep215.4 = getelementptr [5 x i8], [5 x i8]* %l1, i64 0, i64 4
  store i8 %call.i.4, i8* %scevgep215.4, align 1
  %10 = load i8, i8* %x, align 1
  %call.i54 = call zeroext i8 @square(i8 zeroext %10) #3
  %scevgep210 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 0
  store i8 %call.i54, i8* %scevgep210, align 1
  %scevgep209.1 = getelementptr i8, i8* %x, i64 1
  %11 = load i8, i8* %scevgep209.1, align 1
  %call.i54.1 = call zeroext i8 @square(i8 zeroext %11) #3
  %scevgep210.1 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 1
  store i8 %call.i54.1, i8* %scevgep210.1, align 1
  %scevgep209.2 = getelementptr i8, i8* %x, i64 2
  %12 = load i8, i8* %scevgep209.2, align 1
  %call.i54.2 = call zeroext i8 @square(i8 zeroext %12) #3
  %scevgep210.2 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 2
  store i8 %call.i54.2, i8* %scevgep210.2, align 1
  %scevgep209.3 = getelementptr i8, i8* %x, i64 3
  %13 = load i8, i8* %scevgep209.3, align 1
  %call.i54.3 = call zeroext i8 @square(i8 zeroext %13) #3
  %scevgep210.3 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 3
  store i8 %call.i54.3, i8* %scevgep210.3, align 1
  %scevgep209.4 = getelementptr i8, i8* %x, i64 4
  %14 = load i8, i8* %scevgep209.4, align 1
  %call.i54.4 = call zeroext i8 @square(i8 zeroext %14) #3
  %scevgep210.4 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 4
  store i8 %call.i54.4, i8* %scevgep210.4, align 1
  %15 = load i8, i8* %x, align 1
  %call.i68 = call zeroext i8 @exp4(i8 zeroext %15) #3
  %scevgep205 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 0
  store i8 %call.i68, i8* %scevgep205, align 1
  %scevgep204.1 = getelementptr i8, i8* %x, i64 1
  %16 = load i8, i8* %scevgep204.1, align 1
  %call.i68.1 = call zeroext i8 @exp4(i8 zeroext %16) #3
  %scevgep205.1 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 1
  store i8 %call.i68.1, i8* %scevgep205.1, align 1
  %scevgep204.2 = getelementptr i8, i8* %x, i64 2
  %17 = load i8, i8* %scevgep204.2, align 1
  %call.i68.2 = call zeroext i8 @exp4(i8 zeroext %17) #3
  %scevgep205.2 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 2
  store i8 %call.i68.2, i8* %scevgep205.2, align 1
  %scevgep204.3 = getelementptr i8, i8* %x, i64 3
  %18 = load i8, i8* %scevgep204.3, align 1
  %call.i68.3 = call zeroext i8 @exp4(i8 zeroext %18) #3
  %scevgep205.3 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 3
  store i8 %call.i68.3, i8* %scevgep205.3, align 1
  %scevgep204.4 = getelementptr i8, i8* %x, i64 4
  %19 = load i8, i8* %scevgep204.4, align 1
  %call.i68.4 = call zeroext i8 @exp4(i8 zeroext %19) #3
  %scevgep205.4 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 4
  store i8 %call.i68.4, i8* %scevgep205.4, align 1
  %arraydecay6 = getelementptr inbounds [5 x i8], [5 x i8]* %e2, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [5 x i8], [5 x i8]* %e3, i64 0, i64 0
  %call.i77 = call zeroext i8 (...) @rand() #3
  %call1.i = call zeroext i8 (...) @rand() #3
  %conv.i = zext i8 %call.i77 to i32
  %20 = load i8, i8* %x, align 1
  %scevgep200.1 = getelementptr i8, i8* %x, i64 1
  %21 = load i8, i8* %scevgep200.1, align 1
  %conv.i.i.i.1 = zext i8 %21 to i32
  %conv1.i.i.i.1 = zext i8 %20 to i32
  %xor.i.i.i.1 = xor i32 %conv1.i.i.i.1, %conv.i.i.i.1
  %conv2.i.i.i.1 = trunc i32 %xor.i.i.i.1 to i8
  %scevgep200.2 = getelementptr i8, i8* %x, i64 2
  %22 = load i8, i8* %scevgep200.2, align 1
  %conv.i.i.i.2 = zext i8 %22 to i32
  %conv1.i.i.i.2 = zext i8 %conv2.i.i.i.1 to i32
  %xor.i.i.i.2 = xor i32 %conv1.i.i.i.2, %conv.i.i.i.2
  %conv2.i.i.i.2 = trunc i32 %xor.i.i.i.2 to i8
  %scevgep200.3 = getelementptr i8, i8* %x, i64 3
  %23 = load i8, i8* %scevgep200.3, align 1
  %conv.i.i.i.3 = zext i8 %23 to i32
  %conv1.i.i.i.3 = zext i8 %conv2.i.i.i.2 to i32
  %xor.i.i.i.3 = xor i32 %conv1.i.i.i.3, %conv.i.i.i.3
  %conv2.i.i.i.3 = trunc i32 %xor.i.i.i.3 to i8
  %scevgep200.4 = getelementptr i8, i8* %x, i64 4
  %24 = load i8, i8* %scevgep200.4, align 1
  %conv.i.i.i.4 = zext i8 %24 to i32
  %conv1.i.i.i.4 = zext i8 %conv2.i.i.i.3 to i32
  %xor.i.i.i.4 = xor i32 %conv1.i.i.i.4, %conv.i.i.i.4
  %conv2.i.i.i.4 = trunc i32 %xor.i.i.i.4 to i8
  %conv3.i = zext i8 %conv2.i.i.i.4 to i32
  %cmp.i78 = icmp eq i32 %conv.i, %conv3.i
  call void @assume(i1 zeroext %cmp.i78) #3
  %conv5.i = zext i8 %call1.i to i32
  %scevgep196 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 0
  %25 = load i8, i8* %scevgep196, align 1
  %scevgep196.1 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 1
  %26 = load i8, i8* %scevgep196.1, align 1
  %conv.i.i96.i.1 = zext i8 %26 to i32
  %conv1.i.i97.i.1 = zext i8 %25 to i32
  %xor.i.i98.i.1 = xor i32 %conv1.i.i97.i.1, %conv.i.i96.i.1
  %conv2.i.i99.i.1 = trunc i32 %xor.i.i98.i.1 to i8
  %scevgep196.2 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 2
  %27 = load i8, i8* %scevgep196.2, align 1
  %conv.i.i96.i.2 = zext i8 %27 to i32
  %conv1.i.i97.i.2 = zext i8 %conv2.i.i99.i.1 to i32
  %xor.i.i98.i.2 = xor i32 %conv1.i.i97.i.2, %conv.i.i96.i.2
  %conv2.i.i99.i.2 = trunc i32 %xor.i.i98.i.2 to i8
  %scevgep196.3 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 3
  %28 = load i8, i8* %scevgep196.3, align 1
  %conv.i.i96.i.3 = zext i8 %28 to i32
  %conv1.i.i97.i.3 = zext i8 %conv2.i.i99.i.2 to i32
  %xor.i.i98.i.3 = xor i32 %conv1.i.i97.i.3, %conv.i.i96.i.3
  %conv2.i.i99.i.3 = trunc i32 %xor.i.i98.i.3 to i8
  %scevgep196.4 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 4
  %29 = load i8, i8* %scevgep196.4, align 1
  %conv.i.i96.i.4 = zext i8 %29 to i32
  %conv1.i.i97.i.4 = zext i8 %conv2.i.i99.i.3 to i32
  %xor.i.i98.i.4 = xor i32 %conv1.i.i97.i.4, %conv.i.i96.i.4
  %conv2.i.i99.i.4 = trunc i32 %xor.i.i98.i.4 to i8
  %conv7.i = zext i8 %conv2.i.i99.i.4 to i32
  %cmp8.i = icmp eq i32 %conv5.i, %conv7.i
  call void @assume(i1 zeroext %cmp8.i) #3
  %scevgep173 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %scevgep173174 = bitcast i8* %scevgep173 to [5 x [5 x i8]]*
  %scevgep186 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 1, i64 0
  %scevgep186187 = bitcast i8* %scevgep186 to [5 x [5 x i8]]*
  %call16.i = call zeroext i8 (...) @rand() #3
  store i8 %call16.i, i8* %scevgep173, align 1
  %30 = load i8, i8* %scevgep173, align 1
  %conv23.i = zext i8 %30 to i32
  %31 = load i8, i8* %x, align 1
  %scevgep184 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 1
  %32 = load i8, i8* %scevgep184, align 1
  %call28.i = call zeroext i8 @mult(i8 zeroext %31, i8 zeroext %32) #3
  %conv29.i = zext i8 %call28.i to i32
  %xor.i = xor i32 %conv23.i, %conv29.i
  %scevgep185 = getelementptr i8, i8* %x, i64 1
  %33 = load i8, i8* %scevgep185, align 1
  %34 = load i8, i8* %arraydecay6, align 1
  %call34.i = call zeroext i8 @mult(i8 zeroext %33, i8 zeroext %34) #3
  %conv35.i = zext i8 %call34.i to i32
  %xor36.i = xor i32 %xor.i, %conv35.i
  %conv37.i = trunc i32 %xor36.i to i8
  store i8 %conv37.i, i8* %scevgep186, align 1
  %scevgep178 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep173174, i64 0, i64 0, i64 1
  %35 = bitcast i8* %scevgep178 to [5 x [5 x i8]]*
  %scevgep191 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep186187, i64 0, i64 1, i64 0
  %36 = bitcast i8* %scevgep191 to [5 x [5 x i8]]*
  %call16.i.1407 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1407, i8* %scevgep178, align 1
  %37 = load i8, i8* %scevgep178, align 1
  %conv23.i.1408 = zext i8 %37 to i32
  %38 = load i8, i8* %x, align 1
  %scevgep184.1409 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 2
  %39 = load i8, i8* %scevgep184.1409, align 1
  %call28.i.1410 = call zeroext i8 @mult(i8 zeroext %38, i8 zeroext %39) #3
  %conv29.i.1411 = zext i8 %call28.i.1410 to i32
  %xor.i.1412 = xor i32 %conv23.i.1408, %conv29.i.1411
  %scevgep185.1413 = getelementptr i8, i8* %x, i64 2
  %40 = load i8, i8* %scevgep185.1413, align 1
  %41 = load i8, i8* %arraydecay6, align 1
  %call34.i.1414 = call zeroext i8 @mult(i8 zeroext %40, i8 zeroext %41) #3
  %conv35.i.1415 = zext i8 %call34.i.1414 to i32
  %xor36.i.1416 = xor i32 %xor.i.1412, %conv35.i.1415
  %conv37.i.1417 = trunc i32 %xor36.i.1416 to i8
  store i8 %conv37.i.1417, i8* %scevgep191, align 1
  %scevgep178.1418 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %35, i64 0, i64 0, i64 1
  %42 = bitcast i8* %scevgep178.1418 to [5 x [5 x i8]]*
  %scevgep191.1419 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %36, i64 0, i64 1, i64 0
  %43 = bitcast i8* %scevgep191.1419 to [5 x [5 x i8]]*
  %call16.i.2421 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.2421, i8* %scevgep178.1418, align 1
  %44 = load i8, i8* %scevgep178.1418, align 1
  %conv23.i.2422 = zext i8 %44 to i32
  %45 = load i8, i8* %x, align 1
  %scevgep184.2423 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 3
  %46 = load i8, i8* %scevgep184.2423, align 1
  %call28.i.2424 = call zeroext i8 @mult(i8 zeroext %45, i8 zeroext %46) #3
  %conv29.i.2425 = zext i8 %call28.i.2424 to i32
  %xor.i.2426 = xor i32 %conv23.i.2422, %conv29.i.2425
  %scevgep185.2427 = getelementptr i8, i8* %x, i64 3
  %47 = load i8, i8* %scevgep185.2427, align 1
  %48 = load i8, i8* %arraydecay6, align 1
  %call34.i.2428 = call zeroext i8 @mult(i8 zeroext %47, i8 zeroext %48) #3
  %conv35.i.2429 = zext i8 %call34.i.2428 to i32
  %xor36.i.2430 = xor i32 %xor.i.2426, %conv35.i.2429
  %conv37.i.2431 = trunc i32 %xor36.i.2430 to i8
  store i8 %conv37.i.2431, i8* %scevgep191.1419, align 1
  %scevgep178.2432 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %42, i64 0, i64 0, i64 1
  %scevgep191.2433 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %43, i64 0, i64 1, i64 0
  %call16.i.3435 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.3435, i8* %scevgep178.2432, align 1
  %49 = load i8, i8* %scevgep178.2432, align 1
  %conv23.i.3436 = zext i8 %49 to i32
  %50 = load i8, i8* %x, align 1
  %scevgep184.3437 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 4
  %51 = load i8, i8* %scevgep184.3437, align 1
  %call28.i.3438 = call zeroext i8 @mult(i8 zeroext %50, i8 zeroext %51) #3
  %conv29.i.3439 = zext i8 %call28.i.3438 to i32
  %xor.i.3440 = xor i32 %conv23.i.3436, %conv29.i.3439
  %scevgep185.3441 = getelementptr i8, i8* %x, i64 4
  %52 = load i8, i8* %scevgep185.3441, align 1
  %53 = load i8, i8* %arraydecay6, align 1
  %call34.i.3442 = call zeroext i8 @mult(i8 zeroext %52, i8 zeroext %53) #3
  %conv35.i.3443 = zext i8 %call34.i.3442 to i32
  %xor36.i.3444 = xor i32 %xor.i.3440, %conv35.i.3443
  %conv37.i.3445 = trunc i32 %xor36.i.3444 to i8
  store i8 %conv37.i.3445, i8* %scevgep191.2433, align 1
  %scevgep176 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep173174, i64 0, i64 1, i64 1
  %54 = bitcast i8* %scevgep176 to [5 x [5 x i8]]*
  %scevgep189 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep186187, i64 0, i64 1, i64 1
  %55 = bitcast i8* %scevgep189 to [5 x [5 x i8]]*
  %arrayidx25.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %arrayidx33.i.1 = getelementptr inbounds i8, i8* %arraydecay6, i64 1
  %call16.i.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1, i8* %scevgep176, align 1
  %56 = load i8, i8* %scevgep176, align 1
  %conv23.i.1 = zext i8 %56 to i32
  %57 = load i8, i8* %arrayidx25.i.1, align 1
  %scevgep184.1 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 2
  %58 = load i8, i8* %scevgep184.1, align 1
  %call28.i.1 = call zeroext i8 @mult(i8 zeroext %57, i8 zeroext %58) #3
  %conv29.i.1 = zext i8 %call28.i.1 to i32
  %xor.i.1 = xor i32 %conv23.i.1, %conv29.i.1
  %scevgep185.1 = getelementptr i8, i8* %x, i64 2
  %59 = load i8, i8* %scevgep185.1, align 1
  %60 = load i8, i8* %arrayidx33.i.1, align 1
  %call34.i.1 = call zeroext i8 @mult(i8 zeroext %59, i8 zeroext %60) #3
  %conv35.i.1 = zext i8 %call34.i.1 to i32
  %xor36.i.1 = xor i32 %xor.i.1, %conv35.i.1
  %conv37.i.1 = trunc i32 %xor36.i.1 to i8
  store i8 %conv37.i.1, i8* %scevgep189, align 1
  %scevgep178.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %54, i64 0, i64 0, i64 1
  %61 = bitcast i8* %scevgep178.1 to [5 x [5 x i8]]*
  %scevgep191.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %55, i64 0, i64 1, i64 0
  %62 = bitcast i8* %scevgep191.1 to [5 x [5 x i8]]*
  %call16.i.1.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1.1, i8* %scevgep178.1, align 1
  %63 = load i8, i8* %scevgep178.1, align 1
  %conv23.i.1.1 = zext i8 %63 to i32
  %64 = load i8, i8* %arrayidx25.i.1, align 1
  %scevgep184.1.1 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 3
  %65 = load i8, i8* %scevgep184.1.1, align 1
  %call28.i.1.1 = call zeroext i8 @mult(i8 zeroext %64, i8 zeroext %65) #3
  %conv29.i.1.1 = zext i8 %call28.i.1.1 to i32
  %xor.i.1.1 = xor i32 %conv23.i.1.1, %conv29.i.1.1
  %scevgep185.1.1 = getelementptr i8, i8* %x, i64 3
  %66 = load i8, i8* %scevgep185.1.1, align 1
  %67 = load i8, i8* %arrayidx33.i.1, align 1
  %call34.i.1.1 = call zeroext i8 @mult(i8 zeroext %66, i8 zeroext %67) #3
  %conv35.i.1.1 = zext i8 %call34.i.1.1 to i32
  %xor36.i.1.1 = xor i32 %xor.i.1.1, %conv35.i.1.1
  %conv37.i.1.1 = trunc i32 %xor36.i.1.1 to i8
  store i8 %conv37.i.1.1, i8* %scevgep191.1, align 1
  %scevgep178.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %61, i64 0, i64 0, i64 1
  %scevgep191.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %62, i64 0, i64 1, i64 0
  %call16.i.1.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1.2, i8* %scevgep178.1.1, align 1
  %68 = load i8, i8* %scevgep178.1.1, align 1
  %conv23.i.1.2 = zext i8 %68 to i32
  %69 = load i8, i8* %arrayidx25.i.1, align 1
  %scevgep184.1.2 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 4
  %70 = load i8, i8* %scevgep184.1.2, align 1
  %call28.i.1.2 = call zeroext i8 @mult(i8 zeroext %69, i8 zeroext %70) #3
  %conv29.i.1.2 = zext i8 %call28.i.1.2 to i32
  %xor.i.1.2 = xor i32 %conv23.i.1.2, %conv29.i.1.2
  %scevgep185.1.2 = getelementptr i8, i8* %x, i64 4
  %71 = load i8, i8* %scevgep185.1.2, align 1
  %72 = load i8, i8* %arrayidx33.i.1, align 1
  %call34.i.1.2 = call zeroext i8 @mult(i8 zeroext %71, i8 zeroext %72) #3
  %conv35.i.1.2 = zext i8 %call34.i.1.2 to i32
  %xor36.i.1.2 = xor i32 %xor.i.1.2, %conv35.i.1.2
  %conv37.i.1.2 = trunc i32 %xor36.i.1.2 to i8
  store i8 %conv37.i.1.2, i8* %scevgep191.1.1, align 1
  %scevgep176.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %54, i64 0, i64 1, i64 1
  %73 = bitcast i8* %scevgep176.1 to [5 x [5 x i8]]*
  %scevgep189.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %55, i64 0, i64 1, i64 1
  %74 = bitcast i8* %scevgep189.1 to [5 x [5 x i8]]*
  %arrayidx25.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %arrayidx33.i.2 = getelementptr inbounds i8, i8* %arraydecay6, i64 2
  %call16.i.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.2, i8* %scevgep176.1, align 1
  %75 = load i8, i8* %scevgep176.1, align 1
  %conv23.i.2 = zext i8 %75 to i32
  %76 = load i8, i8* %arrayidx25.i.2, align 1
  %scevgep184.2 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 3
  %77 = load i8, i8* %scevgep184.2, align 1
  %call28.i.2 = call zeroext i8 @mult(i8 zeroext %76, i8 zeroext %77) #3
  %conv29.i.2 = zext i8 %call28.i.2 to i32
  %xor.i.2 = xor i32 %conv23.i.2, %conv29.i.2
  %scevgep185.2 = getelementptr i8, i8* %x, i64 3
  %78 = load i8, i8* %scevgep185.2, align 1
  %79 = load i8, i8* %arrayidx33.i.2, align 1
  %call34.i.2 = call zeroext i8 @mult(i8 zeroext %78, i8 zeroext %79) #3
  %conv35.i.2 = zext i8 %call34.i.2 to i32
  %xor36.i.2 = xor i32 %xor.i.2, %conv35.i.2
  %conv37.i.2 = trunc i32 %xor36.i.2 to i8
  store i8 %conv37.i.2, i8* %scevgep189.1, align 1
  %scevgep178.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %73, i64 0, i64 0, i64 1
  %scevgep191.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %74, i64 0, i64 1, i64 0
  %call16.i.2.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.2.1, i8* %scevgep178.2, align 1
  %80 = load i8, i8* %scevgep178.2, align 1
  %conv23.i.2.1 = zext i8 %80 to i32
  %81 = load i8, i8* %arrayidx25.i.2, align 1
  %scevgep184.2.1 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 4
  %82 = load i8, i8* %scevgep184.2.1, align 1
  %call28.i.2.1 = call zeroext i8 @mult(i8 zeroext %81, i8 zeroext %82) #3
  %conv29.i.2.1 = zext i8 %call28.i.2.1 to i32
  %xor.i.2.1 = xor i32 %conv23.i.2.1, %conv29.i.2.1
  %scevgep185.2.1 = getelementptr i8, i8* %x, i64 4
  %83 = load i8, i8* %scevgep185.2.1, align 1
  %84 = load i8, i8* %arrayidx33.i.2, align 1
  %call34.i.2.1 = call zeroext i8 @mult(i8 zeroext %83, i8 zeroext %84) #3
  %conv35.i.2.1 = zext i8 %call34.i.2.1 to i32
  %xor36.i.2.1 = xor i32 %xor.i.2.1, %conv35.i.2.1
  %conv37.i.2.1 = trunc i32 %xor36.i.2.1 to i8
  store i8 %conv37.i.2.1, i8* %scevgep191.2, align 1
  %scevgep176.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %73, i64 0, i64 1, i64 1
  %scevgep189.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %74, i64 0, i64 1, i64 1
  %arrayidx25.i.3 = getelementptr inbounds i8, i8* %x, i64 3
  %arrayidx33.i.3 = getelementptr inbounds i8, i8* %arraydecay6, i64 3
  %call16.i.3 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.3, i8* %scevgep176.2, align 1
  %85 = load i8, i8* %scevgep176.2, align 1
  %conv23.i.3 = zext i8 %85 to i32
  %86 = load i8, i8* %arrayidx25.i.3, align 1
  %scevgep184.3 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 4
  %87 = load i8, i8* %scevgep184.3, align 1
  %call28.i.3 = call zeroext i8 @mult(i8 zeroext %86, i8 zeroext %87) #3
  %conv29.i.3 = zext i8 %call28.i.3 to i32
  %xor.i.3 = xor i32 %conv23.i.3, %conv29.i.3
  %scevgep185.3 = getelementptr i8, i8* %x, i64 4
  %88 = load i8, i8* %scevgep185.3, align 1
  %89 = load i8, i8* %arrayidx33.i.3, align 1
  %call34.i.3 = call zeroext i8 @mult(i8 zeroext %88, i8 zeroext %89) #3
  %conv35.i.3 = zext i8 %call34.i.3 to i32
  %xor36.i.3 = xor i32 %xor.i.3, %conv35.i.3
  %conv37.i.3 = trunc i32 %xor36.i.3 to i8
  store i8 %conv37.i.3, i8* %scevgep189.2, align 1
  %90 = load i8, i8* %x, align 1
  %91 = load i8, i8* %arraydecay6, align 1
  %call54.i = call zeroext i8 @mult(i8 zeroext %90, i8 zeroext %91) #3
  store i8 %call54.i, i8* %arraydecay7, align 1
  %scevgep169.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %92 = load i8, i8* %scevgep169.1, align 1
  %conv68.i.1 = zext i8 %92 to i32
  %93 = load i8, i8* %arraydecay7, align 1
  %conv71.i.1 = zext i8 %93 to i32
  %xor72.i.1 = xor i32 %conv71.i.1, %conv68.i.1
  %conv73.i.1 = trunc i32 %xor72.i.1 to i8
  store i8 %conv73.i.1, i8* %arraydecay7, align 1
  %scevgep169.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 2
  %94 = load i8, i8* %scevgep169.2, align 1
  %conv68.i.2 = zext i8 %94 to i32
  %95 = load i8, i8* %arraydecay7, align 1
  %conv71.i.2 = zext i8 %95 to i32
  %xor72.i.2 = xor i32 %conv71.i.2, %conv68.i.2
  %conv73.i.2 = trunc i32 %xor72.i.2 to i8
  store i8 %conv73.i.2, i8* %arraydecay7, align 1
  %scevgep169.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 3
  %96 = load i8, i8* %scevgep169.3, align 1
  %conv68.i.3 = zext i8 %96 to i32
  %97 = load i8, i8* %arraydecay7, align 1
  %conv71.i.3 = zext i8 %97 to i32
  %xor72.i.3 = xor i32 %conv71.i.3, %conv68.i.3
  %conv73.i.3 = trunc i32 %xor72.i.3 to i8
  store i8 %conv73.i.3, i8* %arraydecay7, align 1
  %scevgep169.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 4
  %98 = load i8, i8* %scevgep169.4, align 1
  %conv68.i.4 = zext i8 %98 to i32
  %99 = load i8, i8* %arraydecay7, align 1
  %conv71.i.4 = zext i8 %99 to i32
  %xor72.i.4 = xor i32 %conv71.i.4, %conv68.i.4
  %conv73.i.4 = trunc i32 %xor72.i.4 to i8
  store i8 %conv73.i.4, i8* %arraydecay7, align 1
  %scevgep168 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 1, i64 0
  %100 = bitcast i8* %scevgep168 to [5 x [5 x i8]]*
  %arrayidx51.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %101 = load i8, i8* %arrayidx51.i.1, align 1
  %arrayidx53.i.1 = getelementptr inbounds i8, i8* %arraydecay6, i64 1
  %102 = load i8, i8* %arrayidx53.i.1, align 1
  %call54.i.1 = call zeroext i8 @mult(i8 zeroext %101, i8 zeroext %102) #3
  %arrayidx56.i.1 = getelementptr inbounds i8, i8* %arraydecay7, i64 1
  store i8 %call54.i.1, i8* %arrayidx56.i.1, align 1
  %arrayidx70.i.1 = getelementptr inbounds i8, i8* %arraydecay7, i64 1
  %scevgep169.1295 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %100, i64 0, i64 0, i64 0
  %103 = load i8, i8* %scevgep169.1295, align 1
  %conv68.i.1296 = zext i8 %103 to i32
  %104 = load i8, i8* %arrayidx70.i.1, align 1
  %conv71.i.1297 = zext i8 %104 to i32
  %xor72.i.1298 = xor i32 %conv71.i.1297, %conv68.i.1296
  %conv73.i.1299 = trunc i32 %xor72.i.1298 to i8
  store i8 %conv73.i.1299, i8* %arrayidx70.i.1, align 1
  %scevgep169.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %100, i64 0, i64 0, i64 2
  %105 = load i8, i8* %scevgep169.2.1, align 1
  %conv68.i.2.1 = zext i8 %105 to i32
  %106 = load i8, i8* %arrayidx70.i.1, align 1
  %conv71.i.2.1 = zext i8 %106 to i32
  %xor72.i.2.1 = xor i32 %conv71.i.2.1, %conv68.i.2.1
  %conv73.i.2.1 = trunc i32 %xor72.i.2.1 to i8
  store i8 %conv73.i.2.1, i8* %arrayidx70.i.1, align 1
  %scevgep169.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %100, i64 0, i64 0, i64 3
  %107 = load i8, i8* %scevgep169.3.1, align 1
  %conv68.i.3.1 = zext i8 %107 to i32
  %108 = load i8, i8* %arrayidx70.i.1, align 1
  %conv71.i.3.1 = zext i8 %108 to i32
  %xor72.i.3.1 = xor i32 %conv71.i.3.1, %conv68.i.3.1
  %conv73.i.3.1 = trunc i32 %xor72.i.3.1 to i8
  store i8 %conv73.i.3.1, i8* %arrayidx70.i.1, align 1
  %scevgep169.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %100, i64 0, i64 0, i64 4
  %109 = load i8, i8* %scevgep169.4.1, align 1
  %conv68.i.4.1 = zext i8 %109 to i32
  %110 = load i8, i8* %arrayidx70.i.1, align 1
  %conv71.i.4.1 = zext i8 %110 to i32
  %xor72.i.4.1 = xor i32 %conv71.i.4.1, %conv68.i.4.1
  %conv73.i.4.1 = trunc i32 %xor72.i.4.1 to i8
  store i8 %conv73.i.4.1, i8* %arrayidx70.i.1, align 1
  %scevgep168.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %100, i64 0, i64 1, i64 0
  %111 = bitcast i8* %scevgep168.1 to [5 x [5 x i8]]*
  %arrayidx51.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %112 = load i8, i8* %arrayidx51.i.2, align 1
  %arrayidx53.i.2 = getelementptr inbounds i8, i8* %arraydecay6, i64 2
  %113 = load i8, i8* %arrayidx53.i.2, align 1
  %call54.i.2 = call zeroext i8 @mult(i8 zeroext %112, i8 zeroext %113) #3
  %arrayidx56.i.2 = getelementptr inbounds i8, i8* %arraydecay7, i64 2
  store i8 %call54.i.2, i8* %arrayidx56.i.2, align 1
  %arrayidx70.i.2 = getelementptr inbounds i8, i8* %arraydecay7, i64 2
  %scevgep169.2304 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %111, i64 0, i64 0, i64 0
  %114 = load i8, i8* %scevgep169.2304, align 1
  %conv68.i.2305 = zext i8 %114 to i32
  %115 = load i8, i8* %arrayidx70.i.2, align 1
  %conv71.i.2306 = zext i8 %115 to i32
  %xor72.i.2307 = xor i32 %conv71.i.2306, %conv68.i.2305
  %conv73.i.2308 = trunc i32 %xor72.i.2307 to i8
  store i8 %conv73.i.2308, i8* %arrayidx70.i.2, align 1
  %scevgep169.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %111, i64 0, i64 0, i64 1
  %116 = load i8, i8* %scevgep169.1.2, align 1
  %conv68.i.1.2 = zext i8 %116 to i32
  %117 = load i8, i8* %arrayidx70.i.2, align 1
  %conv71.i.1.2 = zext i8 %117 to i32
  %xor72.i.1.2 = xor i32 %conv71.i.1.2, %conv68.i.1.2
  %conv73.i.1.2 = trunc i32 %xor72.i.1.2 to i8
  store i8 %conv73.i.1.2, i8* %arrayidx70.i.2, align 1
  %scevgep169.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %111, i64 0, i64 0, i64 3
  %118 = load i8, i8* %scevgep169.3.2, align 1
  %conv68.i.3.2 = zext i8 %118 to i32
  %119 = load i8, i8* %arrayidx70.i.2, align 1
  %conv71.i.3.2 = zext i8 %119 to i32
  %xor72.i.3.2 = xor i32 %conv71.i.3.2, %conv68.i.3.2
  %conv73.i.3.2 = trunc i32 %xor72.i.3.2 to i8
  store i8 %conv73.i.3.2, i8* %arrayidx70.i.2, align 1
  %scevgep169.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %111, i64 0, i64 0, i64 4
  %120 = load i8, i8* %scevgep169.4.2, align 1
  %conv68.i.4.2 = zext i8 %120 to i32
  %121 = load i8, i8* %arrayidx70.i.2, align 1
  %conv71.i.4.2 = zext i8 %121 to i32
  %xor72.i.4.2 = xor i32 %conv71.i.4.2, %conv68.i.4.2
  %conv73.i.4.2 = trunc i32 %xor72.i.4.2 to i8
  store i8 %conv73.i.4.2, i8* %arrayidx70.i.2, align 1
  %scevgep168.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %111, i64 0, i64 1, i64 0
  %122 = bitcast i8* %scevgep168.2 to [5 x [5 x i8]]*
  %arrayidx51.i.3 = getelementptr inbounds i8, i8* %x, i64 3
  %123 = load i8, i8* %arrayidx51.i.3, align 1
  %arrayidx53.i.3 = getelementptr inbounds i8, i8* %arraydecay6, i64 3
  %124 = load i8, i8* %arrayidx53.i.3, align 1
  %call54.i.3 = call zeroext i8 @mult(i8 zeroext %123, i8 zeroext %124) #3
  %arrayidx56.i.3 = getelementptr inbounds i8, i8* %arraydecay7, i64 3
  store i8 %call54.i.3, i8* %arrayidx56.i.3, align 1
  %arrayidx70.i.3 = getelementptr inbounds i8, i8* %arraydecay7, i64 3
  %scevgep169.3313 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %122, i64 0, i64 0, i64 0
  %125 = load i8, i8* %scevgep169.3313, align 1
  %conv68.i.3314 = zext i8 %125 to i32
  %126 = load i8, i8* %arrayidx70.i.3, align 1
  %conv71.i.3315 = zext i8 %126 to i32
  %xor72.i.3316 = xor i32 %conv71.i.3315, %conv68.i.3314
  %conv73.i.3317 = trunc i32 %xor72.i.3316 to i8
  store i8 %conv73.i.3317, i8* %arrayidx70.i.3, align 1
  %scevgep169.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %122, i64 0, i64 0, i64 1
  %127 = load i8, i8* %scevgep169.1.3, align 1
  %conv68.i.1.3 = zext i8 %127 to i32
  %128 = load i8, i8* %arrayidx70.i.3, align 1
  %conv71.i.1.3 = zext i8 %128 to i32
  %xor72.i.1.3 = xor i32 %conv71.i.1.3, %conv68.i.1.3
  %conv73.i.1.3 = trunc i32 %xor72.i.1.3 to i8
  store i8 %conv73.i.1.3, i8* %arrayidx70.i.3, align 1
  %scevgep169.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %122, i64 0, i64 0, i64 2
  %129 = load i8, i8* %scevgep169.2.3, align 1
  %conv68.i.2.3 = zext i8 %129 to i32
  %130 = load i8, i8* %arrayidx70.i.3, align 1
  %conv71.i.2.3 = zext i8 %130 to i32
  %xor72.i.2.3 = xor i32 %conv71.i.2.3, %conv68.i.2.3
  %conv73.i.2.3 = trunc i32 %xor72.i.2.3 to i8
  store i8 %conv73.i.2.3, i8* %arrayidx70.i.3, align 1
  %scevgep169.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %122, i64 0, i64 0, i64 4
  %131 = load i8, i8* %scevgep169.4.3, align 1
  %conv68.i.4.3 = zext i8 %131 to i32
  %132 = load i8, i8* %arrayidx70.i.3, align 1
  %conv71.i.4.3 = zext i8 %132 to i32
  %xor72.i.4.3 = xor i32 %conv71.i.4.3, %conv68.i.4.3
  %conv73.i.4.3 = trunc i32 %xor72.i.4.3 to i8
  store i8 %conv73.i.4.3, i8* %arrayidx70.i.3, align 1
  %scevgep168.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %122, i64 0, i64 1, i64 0
  %133 = bitcast i8* %scevgep168.3 to [5 x [5 x i8]]*
  %arrayidx51.i.4 = getelementptr inbounds i8, i8* %x, i64 4
  %134 = load i8, i8* %arrayidx51.i.4, align 1
  %arrayidx53.i.4 = getelementptr inbounds i8, i8* %arraydecay6, i64 4
  %135 = load i8, i8* %arrayidx53.i.4, align 1
  %call54.i.4 = call zeroext i8 @mult(i8 zeroext %134, i8 zeroext %135) #3
  %arrayidx56.i.4 = getelementptr inbounds i8, i8* %arraydecay7, i64 4
  store i8 %call54.i.4, i8* %arrayidx56.i.4, align 1
  %arrayidx70.i.4 = getelementptr inbounds i8, i8* %arraydecay7, i64 4
  %scevgep169.4322 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %133, i64 0, i64 0, i64 0
  %136 = load i8, i8* %scevgep169.4322, align 1
  %conv68.i.4323 = zext i8 %136 to i32
  %137 = load i8, i8* %arrayidx70.i.4, align 1
  %conv71.i.4324 = zext i8 %137 to i32
  %xor72.i.4325 = xor i32 %conv71.i.4324, %conv68.i.4323
  %conv73.i.4326 = trunc i32 %xor72.i.4325 to i8
  store i8 %conv73.i.4326, i8* %arrayidx70.i.4, align 1
  %scevgep169.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %133, i64 0, i64 0, i64 1
  %138 = load i8, i8* %scevgep169.1.4, align 1
  %conv68.i.1.4 = zext i8 %138 to i32
  %139 = load i8, i8* %arrayidx70.i.4, align 1
  %conv71.i.1.4 = zext i8 %139 to i32
  %xor72.i.1.4 = xor i32 %conv71.i.1.4, %conv68.i.1.4
  %conv73.i.1.4 = trunc i32 %xor72.i.1.4 to i8
  store i8 %conv73.i.1.4, i8* %arrayidx70.i.4, align 1
  %scevgep169.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %133, i64 0, i64 0, i64 2
  %140 = load i8, i8* %scevgep169.2.4, align 1
  %conv68.i.2.4 = zext i8 %140 to i32
  %141 = load i8, i8* %arrayidx70.i.4, align 1
  %conv71.i.2.4 = zext i8 %141 to i32
  %xor72.i.2.4 = xor i32 %conv71.i.2.4, %conv68.i.2.4
  %conv73.i.2.4 = trunc i32 %xor72.i.2.4 to i8
  store i8 %conv73.i.2.4, i8* %arrayidx70.i.4, align 1
  %scevgep169.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %133, i64 0, i64 0, i64 3
  %142 = load i8, i8* %scevgep169.3.4, align 1
  %conv68.i.3.4 = zext i8 %142 to i32
  %143 = load i8, i8* %arrayidx70.i.4, align 1
  %conv71.i.3.4 = zext i8 %143 to i32
  %xor72.i.3.4 = xor i32 %conv71.i.3.4, %conv68.i.3.4
  %conv73.i.3.4 = trunc i32 %xor72.i.3.4 to i8
  store i8 %conv73.i.3.4, i8* %arrayidx70.i.4, align 1
  %call80.i = call zeroext i8 @mult(i8 zeroext %call.i77, i8 zeroext %call1.i) #3
  %conv81.i = zext i8 %call80.i to i32
  %scevgep159 = getelementptr [5 x i8], [5 x i8]* %e3, i64 0, i64 0
  %144 = load i8, i8* %scevgep159, align 1
  %scevgep159.1 = getelementptr [5 x i8], [5 x i8]* %e3, i64 0, i64 1
  %145 = load i8, i8* %scevgep159.1, align 1
  %conv.i.i113.i.1 = zext i8 %145 to i32
  %conv1.i.i114.i.1 = zext i8 %144 to i32
  %xor.i.i115.i.1 = xor i32 %conv1.i.i114.i.1, %conv.i.i113.i.1
  %conv2.i.i116.i.1 = trunc i32 %xor.i.i115.i.1 to i8
  %scevgep159.2 = getelementptr [5 x i8], [5 x i8]* %e3, i64 0, i64 2
  %146 = load i8, i8* %scevgep159.2, align 1
  %conv.i.i113.i.2 = zext i8 %146 to i32
  %conv1.i.i114.i.2 = zext i8 %conv2.i.i116.i.1 to i32
  %xor.i.i115.i.2 = xor i32 %conv1.i.i114.i.2, %conv.i.i113.i.2
  %conv2.i.i116.i.2 = trunc i32 %xor.i.i115.i.2 to i8
  %scevgep159.3 = getelementptr [5 x i8], [5 x i8]* %e3, i64 0, i64 3
  %147 = load i8, i8* %scevgep159.3, align 1
  %conv.i.i113.i.3 = zext i8 %147 to i32
  %conv1.i.i114.i.3 = zext i8 %conv2.i.i116.i.2 to i32
  %xor.i.i115.i.3 = xor i32 %conv1.i.i114.i.3, %conv.i.i113.i.3
  %conv2.i.i116.i.3 = trunc i32 %xor.i.i115.i.3 to i8
  %scevgep159.4 = getelementptr [5 x i8], [5 x i8]* %e3, i64 0, i64 4
  %148 = load i8, i8* %scevgep159.4, align 1
  %conv.i.i113.i.4 = zext i8 %148 to i32
  %conv1.i.i114.i.4 = zext i8 %conv2.i.i116.i.3 to i32
  %xor.i.i115.i.4 = xor i32 %conv1.i.i114.i.4, %conv.i.i113.i.4
  %conv2.i.i116.i.4 = trunc i32 %xor.i.i115.i.4 to i8
  %conv83.i = zext i8 %conv2.i.i116.i.4 to i32
  %cmp84.i = icmp eq i32 %conv81.i, %conv83.i
  call void @assert(i1 zeroext %cmp84.i) #3
  %arraydecay8 = getelementptr inbounds [5 x i8], [5 x i8]* %e4, i64 0, i64 0
  %arraydecay9 = getelementptr inbounds [5 x i8], [5 x i8]* %e5, i64 0, i64 0
  %call.i109 = call zeroext i8 (...) @rand() #3
  %call1.i110 = call zeroext i8 (...) @rand() #3
  %conv.i111 = zext i8 %call.i109 to i32
  %149 = load i8, i8* %x, align 1
  %scevgep155.1 = getelementptr i8, i8* %x, i64 1
  %150 = load i8, i8* %scevgep155.1, align 1
  %conv.i.i.i117.1 = zext i8 %150 to i32
  %conv1.i.i.i118.1 = zext i8 %149 to i32
  %xor.i.i.i119.1 = xor i32 %conv1.i.i.i118.1, %conv.i.i.i117.1
  %conv2.i.i.i120.1 = trunc i32 %xor.i.i.i119.1 to i8
  %scevgep155.2 = getelementptr i8, i8* %x, i64 2
  %151 = load i8, i8* %scevgep155.2, align 1
  %conv.i.i.i117.2 = zext i8 %151 to i32
  %conv1.i.i.i118.2 = zext i8 %conv2.i.i.i120.1 to i32
  %xor.i.i.i119.2 = xor i32 %conv1.i.i.i118.2, %conv.i.i.i117.2
  %conv2.i.i.i120.2 = trunc i32 %xor.i.i.i119.2 to i8
  %scevgep155.3 = getelementptr i8, i8* %x, i64 3
  %152 = load i8, i8* %scevgep155.3, align 1
  %conv.i.i.i117.3 = zext i8 %152 to i32
  %conv1.i.i.i118.3 = zext i8 %conv2.i.i.i120.2 to i32
  %xor.i.i.i119.3 = xor i32 %conv1.i.i.i118.3, %conv.i.i.i117.3
  %conv2.i.i.i120.3 = trunc i32 %xor.i.i.i119.3 to i8
  %scevgep155.4 = getelementptr i8, i8* %x, i64 4
  %153 = load i8, i8* %scevgep155.4, align 1
  %conv.i.i.i117.4 = zext i8 %153 to i32
  %conv1.i.i.i118.4 = zext i8 %conv2.i.i.i120.3 to i32
  %xor.i.i.i119.4 = xor i32 %conv1.i.i.i118.4, %conv.i.i.i117.4
  %conv2.i.i.i120.4 = trunc i32 %xor.i.i.i119.4 to i8
  %conv3.i123 = zext i8 %conv2.i.i.i120.4 to i32
  %cmp.i124 = icmp eq i32 %conv.i111, %conv3.i123
  call void @assume(i1 zeroext %cmp.i124) #3
  %conv5.i125 = zext i8 %call1.i110 to i32
  %scevgep151 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 0
  %154 = load i8, i8* %scevgep151, align 1
  %scevgep151.1 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 1
  %155 = load i8, i8* %scevgep151.1, align 1
  %conv.i.i96.i132.1 = zext i8 %155 to i32
  %conv1.i.i97.i133.1 = zext i8 %154 to i32
  %xor.i.i98.i134.1 = xor i32 %conv1.i.i97.i133.1, %conv.i.i96.i132.1
  %conv2.i.i99.i135.1 = trunc i32 %xor.i.i98.i134.1 to i8
  %scevgep151.2 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 2
  %156 = load i8, i8* %scevgep151.2, align 1
  %conv.i.i96.i132.2 = zext i8 %156 to i32
  %conv1.i.i97.i133.2 = zext i8 %conv2.i.i99.i135.1 to i32
  %xor.i.i98.i134.2 = xor i32 %conv1.i.i97.i133.2, %conv.i.i96.i132.2
  %conv2.i.i99.i135.2 = trunc i32 %xor.i.i98.i134.2 to i8
  %scevgep151.3 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 3
  %157 = load i8, i8* %scevgep151.3, align 1
  %conv.i.i96.i132.3 = zext i8 %157 to i32
  %conv1.i.i97.i133.3 = zext i8 %conv2.i.i99.i135.2 to i32
  %xor.i.i98.i134.3 = xor i32 %conv1.i.i97.i133.3, %conv.i.i96.i132.3
  %conv2.i.i99.i135.3 = trunc i32 %xor.i.i98.i134.3 to i8
  %scevgep151.4 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 4
  %158 = load i8, i8* %scevgep151.4, align 1
  %conv.i.i96.i132.4 = zext i8 %158 to i32
  %conv1.i.i97.i133.4 = zext i8 %conv2.i.i99.i135.3 to i32
  %xor.i.i98.i134.4 = xor i32 %conv1.i.i97.i133.4, %conv.i.i96.i132.4
  %conv2.i.i99.i135.4 = trunc i32 %xor.i.i98.i134.4 to i8
  %conv7.i138 = zext i8 %conv2.i.i99.i135.4 to i32
  %cmp8.i139 = icmp eq i32 %conv5.i125, %conv7.i138
  call void @assume(i1 zeroext %cmp8.i139) #3
  %scevgep128 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %scevgep128129 = bitcast i8* %scevgep128 to [5 x [5 x i8]]*
  %scevgep141 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 1, i64 0
  %scevgep141142 = bitcast i8* %scevgep141 to [5 x [5 x i8]]*
  %call16.i147 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i147, i8* %scevgep128, align 1
  %159 = load i8, i8* %scevgep128, align 1
  %conv23.i156 = zext i8 %159 to i32
  %160 = load i8, i8* %x, align 1
  %scevgep139 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 1
  %161 = load i8, i8* %scevgep139, align 1
  %call28.i161 = call zeroext i8 @mult(i8 zeroext %160, i8 zeroext %161) #3
  %conv29.i162 = zext i8 %call28.i161 to i32
  %xor.i163 = xor i32 %conv23.i156, %conv29.i162
  %scevgep140 = getelementptr i8, i8* %x, i64 1
  %162 = load i8, i8* %scevgep140, align 1
  %163 = load i8, i8* %arraydecay8, align 1
  %call34.i168 = call zeroext i8 @mult(i8 zeroext %162, i8 zeroext %163) #3
  %conv35.i169 = zext i8 %call34.i168 to i32
  %xor36.i170 = xor i32 %xor.i163, %conv35.i169
  %conv37.i171 = trunc i32 %xor36.i170 to i8
  store i8 %conv37.i171, i8* %scevgep141, align 1
  %scevgep133 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep128129, i64 0, i64 0, i64 1
  %164 = bitcast i8* %scevgep133 to [5 x [5 x i8]]*
  %scevgep146 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep141142, i64 0, i64 1, i64 0
  %165 = bitcast i8* %scevgep146 to [5 x [5 x i8]]*
  %call16.i147.1368 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i147.1368, i8* %scevgep133, align 1
  %166 = load i8, i8* %scevgep133, align 1
  %conv23.i156.1369 = zext i8 %166 to i32
  %167 = load i8, i8* %x, align 1
  %scevgep139.1370 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 2
  %168 = load i8, i8* %scevgep139.1370, align 1
  %call28.i161.1371 = call zeroext i8 @mult(i8 zeroext %167, i8 zeroext %168) #3
  %conv29.i162.1372 = zext i8 %call28.i161.1371 to i32
  %xor.i163.1373 = xor i32 %conv23.i156.1369, %conv29.i162.1372
  %scevgep140.1374 = getelementptr i8, i8* %x, i64 2
  %169 = load i8, i8* %scevgep140.1374, align 1
  %170 = load i8, i8* %arraydecay8, align 1
  %call34.i168.1375 = call zeroext i8 @mult(i8 zeroext %169, i8 zeroext %170) #3
  %conv35.i169.1376 = zext i8 %call34.i168.1375 to i32
  %xor36.i170.1377 = xor i32 %xor.i163.1373, %conv35.i169.1376
  %conv37.i171.1378 = trunc i32 %xor36.i170.1377 to i8
  store i8 %conv37.i171.1378, i8* %scevgep146, align 1
  %scevgep133.1379 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %164, i64 0, i64 0, i64 1
  %171 = bitcast i8* %scevgep133.1379 to [5 x [5 x i8]]*
  %scevgep146.1380 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %165, i64 0, i64 1, i64 0
  %172 = bitcast i8* %scevgep146.1380 to [5 x [5 x i8]]*
  %call16.i147.2382 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i147.2382, i8* %scevgep133.1379, align 1
  %173 = load i8, i8* %scevgep133.1379, align 1
  %conv23.i156.2383 = zext i8 %173 to i32
  %174 = load i8, i8* %x, align 1
  %scevgep139.2384 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 3
  %175 = load i8, i8* %scevgep139.2384, align 1
  %call28.i161.2385 = call zeroext i8 @mult(i8 zeroext %174, i8 zeroext %175) #3
  %conv29.i162.2386 = zext i8 %call28.i161.2385 to i32
  %xor.i163.2387 = xor i32 %conv23.i156.2383, %conv29.i162.2386
  %scevgep140.2388 = getelementptr i8, i8* %x, i64 3
  %176 = load i8, i8* %scevgep140.2388, align 1
  %177 = load i8, i8* %arraydecay8, align 1
  %call34.i168.2389 = call zeroext i8 @mult(i8 zeroext %176, i8 zeroext %177) #3
  %conv35.i169.2390 = zext i8 %call34.i168.2389 to i32
  %xor36.i170.2391 = xor i32 %xor.i163.2387, %conv35.i169.2390
  %conv37.i171.2392 = trunc i32 %xor36.i170.2391 to i8
  store i8 %conv37.i171.2392, i8* %scevgep146.1380, align 1
  %scevgep133.2393 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %171, i64 0, i64 0, i64 1
  %scevgep146.2394 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %172, i64 0, i64 1, i64 0
  %call16.i147.3396 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i147.3396, i8* %scevgep133.2393, align 1
  %178 = load i8, i8* %scevgep133.2393, align 1
  %conv23.i156.3397 = zext i8 %178 to i32
  %179 = load i8, i8* %x, align 1
  %scevgep139.3398 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 4
  %180 = load i8, i8* %scevgep139.3398, align 1
  %call28.i161.3399 = call zeroext i8 @mult(i8 zeroext %179, i8 zeroext %180) #3
  %conv29.i162.3400 = zext i8 %call28.i161.3399 to i32
  %xor.i163.3401 = xor i32 %conv23.i156.3397, %conv29.i162.3400
  %scevgep140.3402 = getelementptr i8, i8* %x, i64 4
  %181 = load i8, i8* %scevgep140.3402, align 1
  %182 = load i8, i8* %arraydecay8, align 1
  %call34.i168.3403 = call zeroext i8 @mult(i8 zeroext %181, i8 zeroext %182) #3
  %conv35.i169.3404 = zext i8 %call34.i168.3403 to i32
  %xor36.i170.3405 = xor i32 %xor.i163.3401, %conv35.i169.3404
  %conv37.i171.3406 = trunc i32 %xor36.i170.3405 to i8
  store i8 %conv37.i171.3406, i8* %scevgep146.2394, align 1
  %scevgep131 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep128129, i64 0, i64 1, i64 1
  %183 = bitcast i8* %scevgep131 to [5 x [5 x i8]]*
  %scevgep144 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep141142, i64 0, i64 1, i64 1
  %184 = bitcast i8* %scevgep144 to [5 x [5 x i8]]*
  %arrayidx25.i158.1 = getelementptr inbounds i8, i8* %x, i64 1
  %arrayidx33.i167.1 = getelementptr inbounds i8, i8* %arraydecay8, i64 1
  %call16.i147.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i147.1, i8* %scevgep131, align 1
  %185 = load i8, i8* %scevgep131, align 1
  %conv23.i156.1 = zext i8 %185 to i32
  %186 = load i8, i8* %arrayidx25.i158.1, align 1
  %scevgep139.1 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 2
  %187 = load i8, i8* %scevgep139.1, align 1
  %call28.i161.1 = call zeroext i8 @mult(i8 zeroext %186, i8 zeroext %187) #3
  %conv29.i162.1 = zext i8 %call28.i161.1 to i32
  %xor.i163.1 = xor i32 %conv23.i156.1, %conv29.i162.1
  %scevgep140.1 = getelementptr i8, i8* %x, i64 2
  %188 = load i8, i8* %scevgep140.1, align 1
  %189 = load i8, i8* %arrayidx33.i167.1, align 1
  %call34.i168.1 = call zeroext i8 @mult(i8 zeroext %188, i8 zeroext %189) #3
  %conv35.i169.1 = zext i8 %call34.i168.1 to i32
  %xor36.i170.1 = xor i32 %xor.i163.1, %conv35.i169.1
  %conv37.i171.1 = trunc i32 %xor36.i170.1 to i8
  store i8 %conv37.i171.1, i8* %scevgep144, align 1
  %scevgep133.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %183, i64 0, i64 0, i64 1
  %190 = bitcast i8* %scevgep133.1 to [5 x [5 x i8]]*
  %scevgep146.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %184, i64 0, i64 1, i64 0
  %191 = bitcast i8* %scevgep146.1 to [5 x [5 x i8]]*
  %call16.i147.1.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i147.1.1, i8* %scevgep133.1, align 1
  %192 = load i8, i8* %scevgep133.1, align 1
  %conv23.i156.1.1 = zext i8 %192 to i32
  %193 = load i8, i8* %arrayidx25.i158.1, align 1
  %scevgep139.1.1 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 3
  %194 = load i8, i8* %scevgep139.1.1, align 1
  %call28.i161.1.1 = call zeroext i8 @mult(i8 zeroext %193, i8 zeroext %194) #3
  %conv29.i162.1.1 = zext i8 %call28.i161.1.1 to i32
  %xor.i163.1.1 = xor i32 %conv23.i156.1.1, %conv29.i162.1.1
  %scevgep140.1.1 = getelementptr i8, i8* %x, i64 3
  %195 = load i8, i8* %scevgep140.1.1, align 1
  %196 = load i8, i8* %arrayidx33.i167.1, align 1
  %call34.i168.1.1 = call zeroext i8 @mult(i8 zeroext %195, i8 zeroext %196) #3
  %conv35.i169.1.1 = zext i8 %call34.i168.1.1 to i32
  %xor36.i170.1.1 = xor i32 %xor.i163.1.1, %conv35.i169.1.1
  %conv37.i171.1.1 = trunc i32 %xor36.i170.1.1 to i8
  store i8 %conv37.i171.1.1, i8* %scevgep146.1, align 1
  %scevgep133.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %190, i64 0, i64 0, i64 1
  %scevgep146.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %191, i64 0, i64 1, i64 0
  %call16.i147.1.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i147.1.2, i8* %scevgep133.1.1, align 1
  %197 = load i8, i8* %scevgep133.1.1, align 1
  %conv23.i156.1.2 = zext i8 %197 to i32
  %198 = load i8, i8* %arrayidx25.i158.1, align 1
  %scevgep139.1.2 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 4
  %199 = load i8, i8* %scevgep139.1.2, align 1
  %call28.i161.1.2 = call zeroext i8 @mult(i8 zeroext %198, i8 zeroext %199) #3
  %conv29.i162.1.2 = zext i8 %call28.i161.1.2 to i32
  %xor.i163.1.2 = xor i32 %conv23.i156.1.2, %conv29.i162.1.2
  %scevgep140.1.2 = getelementptr i8, i8* %x, i64 4
  %200 = load i8, i8* %scevgep140.1.2, align 1
  %201 = load i8, i8* %arrayidx33.i167.1, align 1
  %call34.i168.1.2 = call zeroext i8 @mult(i8 zeroext %200, i8 zeroext %201) #3
  %conv35.i169.1.2 = zext i8 %call34.i168.1.2 to i32
  %xor36.i170.1.2 = xor i32 %xor.i163.1.2, %conv35.i169.1.2
  %conv37.i171.1.2 = trunc i32 %xor36.i170.1.2 to i8
  store i8 %conv37.i171.1.2, i8* %scevgep146.1.1, align 1
  %scevgep131.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %183, i64 0, i64 1, i64 1
  %202 = bitcast i8* %scevgep131.1 to [5 x [5 x i8]]*
  %scevgep144.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %184, i64 0, i64 1, i64 1
  %203 = bitcast i8* %scevgep144.1 to [5 x [5 x i8]]*
  %arrayidx25.i158.2 = getelementptr inbounds i8, i8* %x, i64 2
  %arrayidx33.i167.2 = getelementptr inbounds i8, i8* %arraydecay8, i64 2
  %call16.i147.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i147.2, i8* %scevgep131.1, align 1
  %204 = load i8, i8* %scevgep131.1, align 1
  %conv23.i156.2 = zext i8 %204 to i32
  %205 = load i8, i8* %arrayidx25.i158.2, align 1
  %scevgep139.2 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 3
  %206 = load i8, i8* %scevgep139.2, align 1
  %call28.i161.2 = call zeroext i8 @mult(i8 zeroext %205, i8 zeroext %206) #3
  %conv29.i162.2 = zext i8 %call28.i161.2 to i32
  %xor.i163.2 = xor i32 %conv23.i156.2, %conv29.i162.2
  %scevgep140.2 = getelementptr i8, i8* %x, i64 3
  %207 = load i8, i8* %scevgep140.2, align 1
  %208 = load i8, i8* %arrayidx33.i167.2, align 1
  %call34.i168.2 = call zeroext i8 @mult(i8 zeroext %207, i8 zeroext %208) #3
  %conv35.i169.2 = zext i8 %call34.i168.2 to i32
  %xor36.i170.2 = xor i32 %xor.i163.2, %conv35.i169.2
  %conv37.i171.2 = trunc i32 %xor36.i170.2 to i8
  store i8 %conv37.i171.2, i8* %scevgep144.1, align 1
  %scevgep133.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %202, i64 0, i64 0, i64 1
  %scevgep146.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %203, i64 0, i64 1, i64 0
  %call16.i147.2.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i147.2.1, i8* %scevgep133.2, align 1
  %209 = load i8, i8* %scevgep133.2, align 1
  %conv23.i156.2.1 = zext i8 %209 to i32
  %210 = load i8, i8* %arrayidx25.i158.2, align 1
  %scevgep139.2.1 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 4
  %211 = load i8, i8* %scevgep139.2.1, align 1
  %call28.i161.2.1 = call zeroext i8 @mult(i8 zeroext %210, i8 zeroext %211) #3
  %conv29.i162.2.1 = zext i8 %call28.i161.2.1 to i32
  %xor.i163.2.1 = xor i32 %conv23.i156.2.1, %conv29.i162.2.1
  %scevgep140.2.1 = getelementptr i8, i8* %x, i64 4
  %212 = load i8, i8* %scevgep140.2.1, align 1
  %213 = load i8, i8* %arrayidx33.i167.2, align 1
  %call34.i168.2.1 = call zeroext i8 @mult(i8 zeroext %212, i8 zeroext %213) #3
  %conv35.i169.2.1 = zext i8 %call34.i168.2.1 to i32
  %xor36.i170.2.1 = xor i32 %xor.i163.2.1, %conv35.i169.2.1
  %conv37.i171.2.1 = trunc i32 %xor36.i170.2.1 to i8
  store i8 %conv37.i171.2.1, i8* %scevgep146.2, align 1
  %scevgep131.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %202, i64 0, i64 1, i64 1
  %scevgep144.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %203, i64 0, i64 1, i64 1
  %arrayidx25.i158.3 = getelementptr inbounds i8, i8* %x, i64 3
  %arrayidx33.i167.3 = getelementptr inbounds i8, i8* %arraydecay8, i64 3
  %call16.i147.3 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i147.3, i8* %scevgep131.2, align 1
  %214 = load i8, i8* %scevgep131.2, align 1
  %conv23.i156.3 = zext i8 %214 to i32
  %215 = load i8, i8* %arrayidx25.i158.3, align 1
  %scevgep139.3 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 4
  %216 = load i8, i8* %scevgep139.3, align 1
  %call28.i161.3 = call zeroext i8 @mult(i8 zeroext %215, i8 zeroext %216) #3
  %conv29.i162.3 = zext i8 %call28.i161.3 to i32
  %xor.i163.3 = xor i32 %conv23.i156.3, %conv29.i162.3
  %scevgep140.3 = getelementptr i8, i8* %x, i64 4
  %217 = load i8, i8* %scevgep140.3, align 1
  %218 = load i8, i8* %arrayidx33.i167.3, align 1
  %call34.i168.3 = call zeroext i8 @mult(i8 zeroext %217, i8 zeroext %218) #3
  %conv35.i169.3 = zext i8 %call34.i168.3 to i32
  %xor36.i170.3 = xor i32 %xor.i163.3, %conv35.i169.3
  %conv37.i171.3 = trunc i32 %xor36.i170.3 to i8
  store i8 %conv37.i171.3, i8* %scevgep144.2, align 1
  %219 = load i8, i8* %x, align 1
  %220 = load i8, i8* %arraydecay8, align 1
  %call54.i187 = call zeroext i8 @mult(i8 zeroext %219, i8 zeroext %220) #3
  store i8 %call54.i187, i8* %arraydecay9, align 1
  %scevgep124.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %221 = load i8, i8* %scevgep124.1, align 1
  %conv68.i199.1 = zext i8 %221 to i32
  %222 = load i8, i8* %arraydecay9, align 1
  %conv71.i202.1 = zext i8 %222 to i32
  %xor72.i203.1 = xor i32 %conv71.i202.1, %conv68.i199.1
  %conv73.i204.1 = trunc i32 %xor72.i203.1 to i8
  store i8 %conv73.i204.1, i8* %arraydecay9, align 1
  %scevgep124.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 2
  %223 = load i8, i8* %scevgep124.2, align 1
  %conv68.i199.2 = zext i8 %223 to i32
  %224 = load i8, i8* %arraydecay9, align 1
  %conv71.i202.2 = zext i8 %224 to i32
  %xor72.i203.2 = xor i32 %conv71.i202.2, %conv68.i199.2
  %conv73.i204.2 = trunc i32 %xor72.i203.2 to i8
  store i8 %conv73.i204.2, i8* %arraydecay9, align 1
  %scevgep124.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 3
  %225 = load i8, i8* %scevgep124.3, align 1
  %conv68.i199.3 = zext i8 %225 to i32
  %226 = load i8, i8* %arraydecay9, align 1
  %conv71.i202.3 = zext i8 %226 to i32
  %xor72.i203.3 = xor i32 %conv71.i202.3, %conv68.i199.3
  %conv73.i204.3 = trunc i32 %xor72.i203.3 to i8
  store i8 %conv73.i204.3, i8* %arraydecay9, align 1
  %scevgep124.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 4
  %227 = load i8, i8* %scevgep124.4, align 1
  %conv68.i199.4 = zext i8 %227 to i32
  %228 = load i8, i8* %arraydecay9, align 1
  %conv71.i202.4 = zext i8 %228 to i32
  %xor72.i203.4 = xor i32 %conv71.i202.4, %conv68.i199.4
  %conv73.i204.4 = trunc i32 %xor72.i203.4 to i8
  store i8 %conv73.i204.4, i8* %arraydecay9, align 1
  %scevgep123 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 1, i64 0
  %229 = bitcast i8* %scevgep123 to [5 x [5 x i8]]*
  %arrayidx51.i184.1 = getelementptr inbounds i8, i8* %x, i64 1
  %230 = load i8, i8* %arrayidx51.i184.1, align 1
  %arrayidx53.i186.1 = getelementptr inbounds i8, i8* %arraydecay8, i64 1
  %231 = load i8, i8* %arrayidx53.i186.1, align 1
  %call54.i187.1 = call zeroext i8 @mult(i8 zeroext %230, i8 zeroext %231) #3
  %arrayidx56.i189.1 = getelementptr inbounds i8, i8* %arraydecay9, i64 1
  store i8 %call54.i187.1, i8* %arrayidx56.i189.1, align 1
  %arrayidx70.i201.1 = getelementptr inbounds i8, i8* %arraydecay9, i64 1
  %scevgep124.1259 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %229, i64 0, i64 0, i64 0
  %232 = load i8, i8* %scevgep124.1259, align 1
  %conv68.i199.1260 = zext i8 %232 to i32
  %233 = load i8, i8* %arrayidx70.i201.1, align 1
  %conv71.i202.1261 = zext i8 %233 to i32
  %xor72.i203.1262 = xor i32 %conv71.i202.1261, %conv68.i199.1260
  %conv73.i204.1263 = trunc i32 %xor72.i203.1262 to i8
  store i8 %conv73.i204.1263, i8* %arrayidx70.i201.1, align 1
  %scevgep124.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %229, i64 0, i64 0, i64 2
  %234 = load i8, i8* %scevgep124.2.1, align 1
  %conv68.i199.2.1 = zext i8 %234 to i32
  %235 = load i8, i8* %arrayidx70.i201.1, align 1
  %conv71.i202.2.1 = zext i8 %235 to i32
  %xor72.i203.2.1 = xor i32 %conv71.i202.2.1, %conv68.i199.2.1
  %conv73.i204.2.1 = trunc i32 %xor72.i203.2.1 to i8
  store i8 %conv73.i204.2.1, i8* %arrayidx70.i201.1, align 1
  %scevgep124.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %229, i64 0, i64 0, i64 3
  %236 = load i8, i8* %scevgep124.3.1, align 1
  %conv68.i199.3.1 = zext i8 %236 to i32
  %237 = load i8, i8* %arrayidx70.i201.1, align 1
  %conv71.i202.3.1 = zext i8 %237 to i32
  %xor72.i203.3.1 = xor i32 %conv71.i202.3.1, %conv68.i199.3.1
  %conv73.i204.3.1 = trunc i32 %xor72.i203.3.1 to i8
  store i8 %conv73.i204.3.1, i8* %arrayidx70.i201.1, align 1
  %scevgep124.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %229, i64 0, i64 0, i64 4
  %238 = load i8, i8* %scevgep124.4.1, align 1
  %conv68.i199.4.1 = zext i8 %238 to i32
  %239 = load i8, i8* %arrayidx70.i201.1, align 1
  %conv71.i202.4.1 = zext i8 %239 to i32
  %xor72.i203.4.1 = xor i32 %conv71.i202.4.1, %conv68.i199.4.1
  %conv73.i204.4.1 = trunc i32 %xor72.i203.4.1 to i8
  store i8 %conv73.i204.4.1, i8* %arrayidx70.i201.1, align 1
  %scevgep123.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %229, i64 0, i64 1, i64 0
  %240 = bitcast i8* %scevgep123.1 to [5 x [5 x i8]]*
  %arrayidx51.i184.2 = getelementptr inbounds i8, i8* %x, i64 2
  %241 = load i8, i8* %arrayidx51.i184.2, align 1
  %arrayidx53.i186.2 = getelementptr inbounds i8, i8* %arraydecay8, i64 2
  %242 = load i8, i8* %arrayidx53.i186.2, align 1
  %call54.i187.2 = call zeroext i8 @mult(i8 zeroext %241, i8 zeroext %242) #3
  %arrayidx56.i189.2 = getelementptr inbounds i8, i8* %arraydecay9, i64 2
  store i8 %call54.i187.2, i8* %arrayidx56.i189.2, align 1
  %arrayidx70.i201.2 = getelementptr inbounds i8, i8* %arraydecay9, i64 2
  %scevgep124.2268 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %240, i64 0, i64 0, i64 0
  %243 = load i8, i8* %scevgep124.2268, align 1
  %conv68.i199.2269 = zext i8 %243 to i32
  %244 = load i8, i8* %arrayidx70.i201.2, align 1
  %conv71.i202.2270 = zext i8 %244 to i32
  %xor72.i203.2271 = xor i32 %conv71.i202.2270, %conv68.i199.2269
  %conv73.i204.2272 = trunc i32 %xor72.i203.2271 to i8
  store i8 %conv73.i204.2272, i8* %arrayidx70.i201.2, align 1
  %scevgep124.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %240, i64 0, i64 0, i64 1
  %245 = load i8, i8* %scevgep124.1.2, align 1
  %conv68.i199.1.2 = zext i8 %245 to i32
  %246 = load i8, i8* %arrayidx70.i201.2, align 1
  %conv71.i202.1.2 = zext i8 %246 to i32
  %xor72.i203.1.2 = xor i32 %conv71.i202.1.2, %conv68.i199.1.2
  %conv73.i204.1.2 = trunc i32 %xor72.i203.1.2 to i8
  store i8 %conv73.i204.1.2, i8* %arrayidx70.i201.2, align 1
  %scevgep124.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %240, i64 0, i64 0, i64 3
  %247 = load i8, i8* %scevgep124.3.2, align 1
  %conv68.i199.3.2 = zext i8 %247 to i32
  %248 = load i8, i8* %arrayidx70.i201.2, align 1
  %conv71.i202.3.2 = zext i8 %248 to i32
  %xor72.i203.3.2 = xor i32 %conv71.i202.3.2, %conv68.i199.3.2
  %conv73.i204.3.2 = trunc i32 %xor72.i203.3.2 to i8
  store i8 %conv73.i204.3.2, i8* %arrayidx70.i201.2, align 1
  %scevgep124.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %240, i64 0, i64 0, i64 4
  %249 = load i8, i8* %scevgep124.4.2, align 1
  %conv68.i199.4.2 = zext i8 %249 to i32
  %250 = load i8, i8* %arrayidx70.i201.2, align 1
  %conv71.i202.4.2 = zext i8 %250 to i32
  %xor72.i203.4.2 = xor i32 %conv71.i202.4.2, %conv68.i199.4.2
  %conv73.i204.4.2 = trunc i32 %xor72.i203.4.2 to i8
  store i8 %conv73.i204.4.2, i8* %arrayidx70.i201.2, align 1
  %scevgep123.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %240, i64 0, i64 1, i64 0
  %251 = bitcast i8* %scevgep123.2 to [5 x [5 x i8]]*
  %arrayidx51.i184.3 = getelementptr inbounds i8, i8* %x, i64 3
  %252 = load i8, i8* %arrayidx51.i184.3, align 1
  %arrayidx53.i186.3 = getelementptr inbounds i8, i8* %arraydecay8, i64 3
  %253 = load i8, i8* %arrayidx53.i186.3, align 1
  %call54.i187.3 = call zeroext i8 @mult(i8 zeroext %252, i8 zeroext %253) #3
  %arrayidx56.i189.3 = getelementptr inbounds i8, i8* %arraydecay9, i64 3
  store i8 %call54.i187.3, i8* %arrayidx56.i189.3, align 1
  %arrayidx70.i201.3 = getelementptr inbounds i8, i8* %arraydecay9, i64 3
  %scevgep124.3277 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %251, i64 0, i64 0, i64 0
  %254 = load i8, i8* %scevgep124.3277, align 1
  %conv68.i199.3278 = zext i8 %254 to i32
  %255 = load i8, i8* %arrayidx70.i201.3, align 1
  %conv71.i202.3279 = zext i8 %255 to i32
  %xor72.i203.3280 = xor i32 %conv71.i202.3279, %conv68.i199.3278
  %conv73.i204.3281 = trunc i32 %xor72.i203.3280 to i8
  store i8 %conv73.i204.3281, i8* %arrayidx70.i201.3, align 1
  %scevgep124.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %251, i64 0, i64 0, i64 1
  %256 = load i8, i8* %scevgep124.1.3, align 1
  %conv68.i199.1.3 = zext i8 %256 to i32
  %257 = load i8, i8* %arrayidx70.i201.3, align 1
  %conv71.i202.1.3 = zext i8 %257 to i32
  %xor72.i203.1.3 = xor i32 %conv71.i202.1.3, %conv68.i199.1.3
  %conv73.i204.1.3 = trunc i32 %xor72.i203.1.3 to i8
  store i8 %conv73.i204.1.3, i8* %arrayidx70.i201.3, align 1
  %scevgep124.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %251, i64 0, i64 0, i64 2
  %258 = load i8, i8* %scevgep124.2.3, align 1
  %conv68.i199.2.3 = zext i8 %258 to i32
  %259 = load i8, i8* %arrayidx70.i201.3, align 1
  %conv71.i202.2.3 = zext i8 %259 to i32
  %xor72.i203.2.3 = xor i32 %conv71.i202.2.3, %conv68.i199.2.3
  %conv73.i204.2.3 = trunc i32 %xor72.i203.2.3 to i8
  store i8 %conv73.i204.2.3, i8* %arrayidx70.i201.3, align 1
  %scevgep124.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %251, i64 0, i64 0, i64 4
  %260 = load i8, i8* %scevgep124.4.3, align 1
  %conv68.i199.4.3 = zext i8 %260 to i32
  %261 = load i8, i8* %arrayidx70.i201.3, align 1
  %conv71.i202.4.3 = zext i8 %261 to i32
  %xor72.i203.4.3 = xor i32 %conv71.i202.4.3, %conv68.i199.4.3
  %conv73.i204.4.3 = trunc i32 %xor72.i203.4.3 to i8
  store i8 %conv73.i204.4.3, i8* %arrayidx70.i201.3, align 1
  %scevgep123.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %251, i64 0, i64 1, i64 0
  %262 = bitcast i8* %scevgep123.3 to [5 x [5 x i8]]*
  %arrayidx51.i184.4 = getelementptr inbounds i8, i8* %x, i64 4
  %263 = load i8, i8* %arrayidx51.i184.4, align 1
  %arrayidx53.i186.4 = getelementptr inbounds i8, i8* %arraydecay8, i64 4
  %264 = load i8, i8* %arrayidx53.i186.4, align 1
  %call54.i187.4 = call zeroext i8 @mult(i8 zeroext %263, i8 zeroext %264) #3
  %arrayidx56.i189.4 = getelementptr inbounds i8, i8* %arraydecay9, i64 4
  store i8 %call54.i187.4, i8* %arrayidx56.i189.4, align 1
  %arrayidx70.i201.4 = getelementptr inbounds i8, i8* %arraydecay9, i64 4
  %scevgep124.4286 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %262, i64 0, i64 0, i64 0
  %265 = load i8, i8* %scevgep124.4286, align 1
  %conv68.i199.4287 = zext i8 %265 to i32
  %266 = load i8, i8* %arrayidx70.i201.4, align 1
  %conv71.i202.4288 = zext i8 %266 to i32
  %xor72.i203.4289 = xor i32 %conv71.i202.4288, %conv68.i199.4287
  %conv73.i204.4290 = trunc i32 %xor72.i203.4289 to i8
  store i8 %conv73.i204.4290, i8* %arrayidx70.i201.4, align 1
  %scevgep124.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %262, i64 0, i64 0, i64 1
  %267 = load i8, i8* %scevgep124.1.4, align 1
  %conv68.i199.1.4 = zext i8 %267 to i32
  %268 = load i8, i8* %arrayidx70.i201.4, align 1
  %conv71.i202.1.4 = zext i8 %268 to i32
  %xor72.i203.1.4 = xor i32 %conv71.i202.1.4, %conv68.i199.1.4
  %conv73.i204.1.4 = trunc i32 %xor72.i203.1.4 to i8
  store i8 %conv73.i204.1.4, i8* %arrayidx70.i201.4, align 1
  %scevgep124.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %262, i64 0, i64 0, i64 2
  %269 = load i8, i8* %scevgep124.2.4, align 1
  %conv68.i199.2.4 = zext i8 %269 to i32
  %270 = load i8, i8* %arrayidx70.i201.4, align 1
  %conv71.i202.2.4 = zext i8 %270 to i32
  %xor72.i203.2.4 = xor i32 %conv71.i202.2.4, %conv68.i199.2.4
  %conv73.i204.2.4 = trunc i32 %xor72.i203.2.4 to i8
  store i8 %conv73.i204.2.4, i8* %arrayidx70.i201.4, align 1
  %scevgep124.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %262, i64 0, i64 0, i64 3
  %271 = load i8, i8* %scevgep124.3.4, align 1
  %conv68.i199.3.4 = zext i8 %271 to i32
  %272 = load i8, i8* %arrayidx70.i201.4, align 1
  %conv71.i202.3.4 = zext i8 %272 to i32
  %xor72.i203.3.4 = xor i32 %conv71.i202.3.4, %conv68.i199.3.4
  %conv73.i204.3.4 = trunc i32 %xor72.i203.3.4 to i8
  store i8 %conv73.i204.3.4, i8* %arrayidx70.i201.4, align 1
  %call80.i210 = call zeroext i8 @mult(i8 zeroext %call.i109, i8 zeroext %call1.i110) #3
  %conv81.i211 = zext i8 %call80.i210 to i32
  %scevgep114 = getelementptr [5 x i8], [5 x i8]* %e5, i64 0, i64 0
  %273 = load i8, i8* %scevgep114, align 1
  %scevgep114.1 = getelementptr [5 x i8], [5 x i8]* %e5, i64 0, i64 1
  %274 = load i8, i8* %scevgep114.1, align 1
  %conv.i.i113.i218.1 = zext i8 %274 to i32
  %conv1.i.i114.i219.1 = zext i8 %273 to i32
  %xor.i.i115.i220.1 = xor i32 %conv1.i.i114.i219.1, %conv.i.i113.i218.1
  %conv2.i.i116.i221.1 = trunc i32 %xor.i.i115.i220.1 to i8
  %scevgep114.2 = getelementptr [5 x i8], [5 x i8]* %e5, i64 0, i64 2
  %275 = load i8, i8* %scevgep114.2, align 1
  %conv.i.i113.i218.2 = zext i8 %275 to i32
  %conv1.i.i114.i219.2 = zext i8 %conv2.i.i116.i221.1 to i32
  %xor.i.i115.i220.2 = xor i32 %conv1.i.i114.i219.2, %conv.i.i113.i218.2
  %conv2.i.i116.i221.2 = trunc i32 %xor.i.i115.i220.2 to i8
  %scevgep114.3 = getelementptr [5 x i8], [5 x i8]* %e5, i64 0, i64 3
  %276 = load i8, i8* %scevgep114.3, align 1
  %conv.i.i113.i218.3 = zext i8 %276 to i32
  %conv1.i.i114.i219.3 = zext i8 %conv2.i.i116.i221.2 to i32
  %xor.i.i115.i220.3 = xor i32 %conv1.i.i114.i219.3, %conv.i.i113.i218.3
  %conv2.i.i116.i221.3 = trunc i32 %xor.i.i115.i220.3 to i8
  %scevgep114.4 = getelementptr [5 x i8], [5 x i8]* %e5, i64 0, i64 4
  %277 = load i8, i8* %scevgep114.4, align 1
  %conv.i.i113.i218.4 = zext i8 %277 to i32
  %conv1.i.i114.i219.4 = zext i8 %conv2.i.i116.i221.3 to i32
  %xor.i.i115.i220.4 = xor i32 %conv1.i.i114.i219.4, %conv.i.i113.i218.4
  %conv2.i.i116.i221.4 = trunc i32 %xor.i.i115.i220.4 to i8
  %conv83.i224 = zext i8 %conv2.i.i116.i221.4 to i32
  %cmp84.i225 = icmp eq i32 %conv81.i211, %conv83.i224
  call void @assert(i1 zeroext %cmp84.i225) #3
  %arraydecay10 = getelementptr inbounds [5 x i8], [5 x i8]* %e3, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [5 x i8], [5 x i8]* %e4, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [5 x i8], [5 x i8]* %e7, i64 0, i64 0
  %call.i252 = call zeroext i8 (...) @rand() #3
  %call1.i253 = call zeroext i8 (...) @rand() #3
  %conv.i254 = zext i8 %call.i252 to i32
  %scevgep110 = getelementptr [5 x i8], [5 x i8]* %e3, i64 0, i64 0
  %278 = load i8, i8* %scevgep110, align 1
  %scevgep110.1 = getelementptr [5 x i8], [5 x i8]* %e3, i64 0, i64 1
  %279 = load i8, i8* %scevgep110.1, align 1
  %conv.i.i.i260.1 = zext i8 %279 to i32
  %conv1.i.i.i261.1 = zext i8 %278 to i32
  %xor.i.i.i262.1 = xor i32 %conv1.i.i.i261.1, %conv.i.i.i260.1
  %conv2.i.i.i263.1 = trunc i32 %xor.i.i.i262.1 to i8
  %scevgep110.2 = getelementptr [5 x i8], [5 x i8]* %e3, i64 0, i64 2
  %280 = load i8, i8* %scevgep110.2, align 1
  %conv.i.i.i260.2 = zext i8 %280 to i32
  %conv1.i.i.i261.2 = zext i8 %conv2.i.i.i263.1 to i32
  %xor.i.i.i262.2 = xor i32 %conv1.i.i.i261.2, %conv.i.i.i260.2
  %conv2.i.i.i263.2 = trunc i32 %xor.i.i.i262.2 to i8
  %scevgep110.3 = getelementptr [5 x i8], [5 x i8]* %e3, i64 0, i64 3
  %281 = load i8, i8* %scevgep110.3, align 1
  %conv.i.i.i260.3 = zext i8 %281 to i32
  %conv1.i.i.i261.3 = zext i8 %conv2.i.i.i263.2 to i32
  %xor.i.i.i262.3 = xor i32 %conv1.i.i.i261.3, %conv.i.i.i260.3
  %conv2.i.i.i263.3 = trunc i32 %xor.i.i.i262.3 to i8
  %scevgep110.4 = getelementptr [5 x i8], [5 x i8]* %e3, i64 0, i64 4
  %282 = load i8, i8* %scevgep110.4, align 1
  %conv.i.i.i260.4 = zext i8 %282 to i32
  %conv1.i.i.i261.4 = zext i8 %conv2.i.i.i263.3 to i32
  %xor.i.i.i262.4 = xor i32 %conv1.i.i.i261.4, %conv.i.i.i260.4
  %conv2.i.i.i263.4 = trunc i32 %xor.i.i.i262.4 to i8
  %conv3.i266 = zext i8 %conv2.i.i.i263.4 to i32
  %cmp.i267 = icmp eq i32 %conv.i254, %conv3.i266
  call void @assume(i1 zeroext %cmp.i267) #3
  %conv5.i268 = zext i8 %call1.i253 to i32
  %scevgep106 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 0
  %283 = load i8, i8* %scevgep106, align 1
  %scevgep106.1 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 1
  %284 = load i8, i8* %scevgep106.1, align 1
  %conv.i.i96.i275.1 = zext i8 %284 to i32
  %conv1.i.i97.i276.1 = zext i8 %283 to i32
  %xor.i.i98.i277.1 = xor i32 %conv1.i.i97.i276.1, %conv.i.i96.i275.1
  %conv2.i.i99.i278.1 = trunc i32 %xor.i.i98.i277.1 to i8
  %scevgep106.2 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 2
  %285 = load i8, i8* %scevgep106.2, align 1
  %conv.i.i96.i275.2 = zext i8 %285 to i32
  %conv1.i.i97.i276.2 = zext i8 %conv2.i.i99.i278.1 to i32
  %xor.i.i98.i277.2 = xor i32 %conv1.i.i97.i276.2, %conv.i.i96.i275.2
  %conv2.i.i99.i278.2 = trunc i32 %xor.i.i98.i277.2 to i8
  %scevgep106.3 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 3
  %286 = load i8, i8* %scevgep106.3, align 1
  %conv.i.i96.i275.3 = zext i8 %286 to i32
  %conv1.i.i97.i276.3 = zext i8 %conv2.i.i99.i278.2 to i32
  %xor.i.i98.i277.3 = xor i32 %conv1.i.i97.i276.3, %conv.i.i96.i275.3
  %conv2.i.i99.i278.3 = trunc i32 %xor.i.i98.i277.3 to i8
  %scevgep106.4 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 4
  %287 = load i8, i8* %scevgep106.4, align 1
  %conv.i.i96.i275.4 = zext i8 %287 to i32
  %conv1.i.i97.i276.4 = zext i8 %conv2.i.i99.i278.3 to i32
  %xor.i.i98.i277.4 = xor i32 %conv1.i.i97.i276.4, %conv.i.i96.i275.4
  %conv2.i.i99.i278.4 = trunc i32 %xor.i.i98.i277.4 to i8
  %conv7.i281 = zext i8 %conv2.i.i99.i278.4 to i32
  %cmp8.i282 = icmp eq i32 %conv5.i268, %conv7.i281
  call void @assume(i1 zeroext %cmp8.i282) #3
  %scevgep83 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %scevgep8384 = bitcast i8* %scevgep83 to [5 x [5 x i8]]*
  %scevgep96 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 1, i64 0
  %scevgep9697 = bitcast i8* %scevgep96 to [5 x [5 x i8]]*
  %call16.i290 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i290, i8* %scevgep83, align 1
  %288 = load i8, i8* %scevgep83, align 1
  %conv23.i299 = zext i8 %288 to i32
  %289 = load i8, i8* %arraydecay10, align 1
  %scevgep94 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 1
  %290 = load i8, i8* %scevgep94, align 1
  %call28.i304 = call zeroext i8 @mult(i8 zeroext %289, i8 zeroext %290) #3
  %conv29.i305 = zext i8 %call28.i304 to i32
  %xor.i306 = xor i32 %conv23.i299, %conv29.i305
  %scevgep95 = getelementptr [5 x i8], [5 x i8]* %e3, i64 0, i64 1
  %291 = load i8, i8* %scevgep95, align 1
  %292 = load i8, i8* %arraydecay11, align 1
  %call34.i311 = call zeroext i8 @mult(i8 zeroext %291, i8 zeroext %292) #3
  %conv35.i312 = zext i8 %call34.i311 to i32
  %xor36.i313 = xor i32 %xor.i306, %conv35.i312
  %conv37.i314 = trunc i32 %xor36.i313 to i8
  store i8 %conv37.i314, i8* %scevgep96, align 1
  %scevgep88 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep8384, i64 0, i64 0, i64 1
  %293 = bitcast i8* %scevgep88 to [5 x [5 x i8]]*
  %scevgep101 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep9697, i64 0, i64 1, i64 0
  %294 = bitcast i8* %scevgep101 to [5 x [5 x i8]]*
  %call16.i290.1329 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i290.1329, i8* %scevgep88, align 1
  %295 = load i8, i8* %scevgep88, align 1
  %conv23.i299.1330 = zext i8 %295 to i32
  %296 = load i8, i8* %arraydecay10, align 1
  %scevgep94.1331 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 2
  %297 = load i8, i8* %scevgep94.1331, align 1
  %call28.i304.1332 = call zeroext i8 @mult(i8 zeroext %296, i8 zeroext %297) #3
  %conv29.i305.1333 = zext i8 %call28.i304.1332 to i32
  %xor.i306.1334 = xor i32 %conv23.i299.1330, %conv29.i305.1333
  %scevgep95.1335 = getelementptr [5 x i8], [5 x i8]* %e3, i64 0, i64 2
  %298 = load i8, i8* %scevgep95.1335, align 1
  %299 = load i8, i8* %arraydecay11, align 1
  %call34.i311.1336 = call zeroext i8 @mult(i8 zeroext %298, i8 zeroext %299) #3
  %conv35.i312.1337 = zext i8 %call34.i311.1336 to i32
  %xor36.i313.1338 = xor i32 %xor.i306.1334, %conv35.i312.1337
  %conv37.i314.1339 = trunc i32 %xor36.i313.1338 to i8
  store i8 %conv37.i314.1339, i8* %scevgep101, align 1
  %scevgep88.1340 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %293, i64 0, i64 0, i64 1
  %300 = bitcast i8* %scevgep88.1340 to [5 x [5 x i8]]*
  %scevgep101.1341 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %294, i64 0, i64 1, i64 0
  %301 = bitcast i8* %scevgep101.1341 to [5 x [5 x i8]]*
  %call16.i290.2343 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i290.2343, i8* %scevgep88.1340, align 1
  %302 = load i8, i8* %scevgep88.1340, align 1
  %conv23.i299.2344 = zext i8 %302 to i32
  %303 = load i8, i8* %arraydecay10, align 1
  %scevgep94.2345 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 3
  %304 = load i8, i8* %scevgep94.2345, align 1
  %call28.i304.2346 = call zeroext i8 @mult(i8 zeroext %303, i8 zeroext %304) #3
  %conv29.i305.2347 = zext i8 %call28.i304.2346 to i32
  %xor.i306.2348 = xor i32 %conv23.i299.2344, %conv29.i305.2347
  %scevgep95.2349 = getelementptr [5 x i8], [5 x i8]* %e3, i64 0, i64 3
  %305 = load i8, i8* %scevgep95.2349, align 1
  %306 = load i8, i8* %arraydecay11, align 1
  %call34.i311.2350 = call zeroext i8 @mult(i8 zeroext %305, i8 zeroext %306) #3
  %conv35.i312.2351 = zext i8 %call34.i311.2350 to i32
  %xor36.i313.2352 = xor i32 %xor.i306.2348, %conv35.i312.2351
  %conv37.i314.2353 = trunc i32 %xor36.i313.2352 to i8
  store i8 %conv37.i314.2353, i8* %scevgep101.1341, align 1
  %scevgep88.2354 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %300, i64 0, i64 0, i64 1
  %scevgep101.2355 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %301, i64 0, i64 1, i64 0
  %call16.i290.3357 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i290.3357, i8* %scevgep88.2354, align 1
  %307 = load i8, i8* %scevgep88.2354, align 1
  %conv23.i299.3358 = zext i8 %307 to i32
  %308 = load i8, i8* %arraydecay10, align 1
  %scevgep94.3359 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 4
  %309 = load i8, i8* %scevgep94.3359, align 1
  %call28.i304.3360 = call zeroext i8 @mult(i8 zeroext %308, i8 zeroext %309) #3
  %conv29.i305.3361 = zext i8 %call28.i304.3360 to i32
  %xor.i306.3362 = xor i32 %conv23.i299.3358, %conv29.i305.3361
  %scevgep95.3363 = getelementptr [5 x i8], [5 x i8]* %e3, i64 0, i64 4
  %310 = load i8, i8* %scevgep95.3363, align 1
  %311 = load i8, i8* %arraydecay11, align 1
  %call34.i311.3364 = call zeroext i8 @mult(i8 zeroext %310, i8 zeroext %311) #3
  %conv35.i312.3365 = zext i8 %call34.i311.3364 to i32
  %xor36.i313.3366 = xor i32 %xor.i306.3362, %conv35.i312.3365
  %conv37.i314.3367 = trunc i32 %xor36.i313.3366 to i8
  store i8 %conv37.i314.3367, i8* %scevgep101.2355, align 1
  %scevgep86 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep8384, i64 0, i64 1, i64 1
  %312 = bitcast i8* %scevgep86 to [5 x [5 x i8]]*
  %scevgep99 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep9697, i64 0, i64 1, i64 1
  %313 = bitcast i8* %scevgep99 to [5 x [5 x i8]]*
  %arrayidx25.i301.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %arrayidx33.i310.1 = getelementptr inbounds i8, i8* %arraydecay11, i64 1
  %call16.i290.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i290.1, i8* %scevgep86, align 1
  %314 = load i8, i8* %scevgep86, align 1
  %conv23.i299.1 = zext i8 %314 to i32
  %315 = load i8, i8* %arrayidx25.i301.1, align 1
  %scevgep94.1 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 2
  %316 = load i8, i8* %scevgep94.1, align 1
  %call28.i304.1 = call zeroext i8 @mult(i8 zeroext %315, i8 zeroext %316) #3
  %conv29.i305.1 = zext i8 %call28.i304.1 to i32
  %xor.i306.1 = xor i32 %conv23.i299.1, %conv29.i305.1
  %scevgep95.1 = getelementptr [5 x i8], [5 x i8]* %e3, i64 0, i64 2
  %317 = load i8, i8* %scevgep95.1, align 1
  %318 = load i8, i8* %arrayidx33.i310.1, align 1
  %call34.i311.1 = call zeroext i8 @mult(i8 zeroext %317, i8 zeroext %318) #3
  %conv35.i312.1 = zext i8 %call34.i311.1 to i32
  %xor36.i313.1 = xor i32 %xor.i306.1, %conv35.i312.1
  %conv37.i314.1 = trunc i32 %xor36.i313.1 to i8
  store i8 %conv37.i314.1, i8* %scevgep99, align 1
  %scevgep88.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %312, i64 0, i64 0, i64 1
  %319 = bitcast i8* %scevgep88.1 to [5 x [5 x i8]]*
  %scevgep101.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %313, i64 0, i64 1, i64 0
  %320 = bitcast i8* %scevgep101.1 to [5 x [5 x i8]]*
  %call16.i290.1.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i290.1.1, i8* %scevgep88.1, align 1
  %321 = load i8, i8* %scevgep88.1, align 1
  %conv23.i299.1.1 = zext i8 %321 to i32
  %322 = load i8, i8* %arrayidx25.i301.1, align 1
  %scevgep94.1.1 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 3
  %323 = load i8, i8* %scevgep94.1.1, align 1
  %call28.i304.1.1 = call zeroext i8 @mult(i8 zeroext %322, i8 zeroext %323) #3
  %conv29.i305.1.1 = zext i8 %call28.i304.1.1 to i32
  %xor.i306.1.1 = xor i32 %conv23.i299.1.1, %conv29.i305.1.1
  %scevgep95.1.1 = getelementptr [5 x i8], [5 x i8]* %e3, i64 0, i64 3
  %324 = load i8, i8* %scevgep95.1.1, align 1
  %325 = load i8, i8* %arrayidx33.i310.1, align 1
  %call34.i311.1.1 = call zeroext i8 @mult(i8 zeroext %324, i8 zeroext %325) #3
  %conv35.i312.1.1 = zext i8 %call34.i311.1.1 to i32
  %xor36.i313.1.1 = xor i32 %xor.i306.1.1, %conv35.i312.1.1
  %conv37.i314.1.1 = trunc i32 %xor36.i313.1.1 to i8
  store i8 %conv37.i314.1.1, i8* %scevgep101.1, align 1
  %scevgep88.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %319, i64 0, i64 0, i64 1
  %scevgep101.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %320, i64 0, i64 1, i64 0
  %call16.i290.1.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i290.1.2, i8* %scevgep88.1.1, align 1
  %326 = load i8, i8* %scevgep88.1.1, align 1
  %conv23.i299.1.2 = zext i8 %326 to i32
  %327 = load i8, i8* %arrayidx25.i301.1, align 1
  %scevgep94.1.2 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 4
  %328 = load i8, i8* %scevgep94.1.2, align 1
  %call28.i304.1.2 = call zeroext i8 @mult(i8 zeroext %327, i8 zeroext %328) #3
  %conv29.i305.1.2 = zext i8 %call28.i304.1.2 to i32
  %xor.i306.1.2 = xor i32 %conv23.i299.1.2, %conv29.i305.1.2
  %scevgep95.1.2 = getelementptr [5 x i8], [5 x i8]* %e3, i64 0, i64 4
  %329 = load i8, i8* %scevgep95.1.2, align 1
  %330 = load i8, i8* %arrayidx33.i310.1, align 1
  %call34.i311.1.2 = call zeroext i8 @mult(i8 zeroext %329, i8 zeroext %330) #3
  %conv35.i312.1.2 = zext i8 %call34.i311.1.2 to i32
  %xor36.i313.1.2 = xor i32 %xor.i306.1.2, %conv35.i312.1.2
  %conv37.i314.1.2 = trunc i32 %xor36.i313.1.2 to i8
  store i8 %conv37.i314.1.2, i8* %scevgep101.1.1, align 1
  %scevgep86.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %312, i64 0, i64 1, i64 1
  %331 = bitcast i8* %scevgep86.1 to [5 x [5 x i8]]*
  %scevgep99.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %313, i64 0, i64 1, i64 1
  %332 = bitcast i8* %scevgep99.1 to [5 x [5 x i8]]*
  %arrayidx25.i301.2 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  %arrayidx33.i310.2 = getelementptr inbounds i8, i8* %arraydecay11, i64 2
  %call16.i290.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i290.2, i8* %scevgep86.1, align 1
  %333 = load i8, i8* %scevgep86.1, align 1
  %conv23.i299.2 = zext i8 %333 to i32
  %334 = load i8, i8* %arrayidx25.i301.2, align 1
  %scevgep94.2 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 3
  %335 = load i8, i8* %scevgep94.2, align 1
  %call28.i304.2 = call zeroext i8 @mult(i8 zeroext %334, i8 zeroext %335) #3
  %conv29.i305.2 = zext i8 %call28.i304.2 to i32
  %xor.i306.2 = xor i32 %conv23.i299.2, %conv29.i305.2
  %scevgep95.2 = getelementptr [5 x i8], [5 x i8]* %e3, i64 0, i64 3
  %336 = load i8, i8* %scevgep95.2, align 1
  %337 = load i8, i8* %arrayidx33.i310.2, align 1
  %call34.i311.2 = call zeroext i8 @mult(i8 zeroext %336, i8 zeroext %337) #3
  %conv35.i312.2 = zext i8 %call34.i311.2 to i32
  %xor36.i313.2 = xor i32 %xor.i306.2, %conv35.i312.2
  %conv37.i314.2 = trunc i32 %xor36.i313.2 to i8
  store i8 %conv37.i314.2, i8* %scevgep99.1, align 1
  %scevgep88.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %331, i64 0, i64 0, i64 1
  %scevgep101.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %332, i64 0, i64 1, i64 0
  %call16.i290.2.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i290.2.1, i8* %scevgep88.2, align 1
  %338 = load i8, i8* %scevgep88.2, align 1
  %conv23.i299.2.1 = zext i8 %338 to i32
  %339 = load i8, i8* %arrayidx25.i301.2, align 1
  %scevgep94.2.1 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 4
  %340 = load i8, i8* %scevgep94.2.1, align 1
  %call28.i304.2.1 = call zeroext i8 @mult(i8 zeroext %339, i8 zeroext %340) #3
  %conv29.i305.2.1 = zext i8 %call28.i304.2.1 to i32
  %xor.i306.2.1 = xor i32 %conv23.i299.2.1, %conv29.i305.2.1
  %scevgep95.2.1 = getelementptr [5 x i8], [5 x i8]* %e3, i64 0, i64 4
  %341 = load i8, i8* %scevgep95.2.1, align 1
  %342 = load i8, i8* %arrayidx33.i310.2, align 1
  %call34.i311.2.1 = call zeroext i8 @mult(i8 zeroext %341, i8 zeroext %342) #3
  %conv35.i312.2.1 = zext i8 %call34.i311.2.1 to i32
  %xor36.i313.2.1 = xor i32 %xor.i306.2.1, %conv35.i312.2.1
  %conv37.i314.2.1 = trunc i32 %xor36.i313.2.1 to i8
  store i8 %conv37.i314.2.1, i8* %scevgep101.2, align 1
  %scevgep86.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %331, i64 0, i64 1, i64 1
  %scevgep99.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %332, i64 0, i64 1, i64 1
  %arrayidx25.i301.3 = getelementptr inbounds i8, i8* %arraydecay10, i64 3
  %arrayidx33.i310.3 = getelementptr inbounds i8, i8* %arraydecay11, i64 3
  %call16.i290.3 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i290.3, i8* %scevgep86.2, align 1
  %343 = load i8, i8* %scevgep86.2, align 1
  %conv23.i299.3 = zext i8 %343 to i32
  %344 = load i8, i8* %arrayidx25.i301.3, align 1
  %scevgep94.3 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 4
  %345 = load i8, i8* %scevgep94.3, align 1
  %call28.i304.3 = call zeroext i8 @mult(i8 zeroext %344, i8 zeroext %345) #3
  %conv29.i305.3 = zext i8 %call28.i304.3 to i32
  %xor.i306.3 = xor i32 %conv23.i299.3, %conv29.i305.3
  %scevgep95.3 = getelementptr [5 x i8], [5 x i8]* %e3, i64 0, i64 4
  %346 = load i8, i8* %scevgep95.3, align 1
  %347 = load i8, i8* %arrayidx33.i310.3, align 1
  %call34.i311.3 = call zeroext i8 @mult(i8 zeroext %346, i8 zeroext %347) #3
  %conv35.i312.3 = zext i8 %call34.i311.3 to i32
  %xor36.i313.3 = xor i32 %xor.i306.3, %conv35.i312.3
  %conv37.i314.3 = trunc i32 %xor36.i313.3 to i8
  store i8 %conv37.i314.3, i8* %scevgep99.2, align 1
  %348 = load i8, i8* %arraydecay10, align 1
  %349 = load i8, i8* %arraydecay11, align 1
  %call54.i330 = call zeroext i8 @mult(i8 zeroext %348, i8 zeroext %349) #3
  store i8 %call54.i330, i8* %arraydecay12, align 1
  %scevgep80.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %350 = load i8, i8* %scevgep80.1, align 1
  %conv68.i342.1 = zext i8 %350 to i32
  %351 = load i8, i8* %arraydecay12, align 1
  %conv71.i345.1 = zext i8 %351 to i32
  %xor72.i346.1 = xor i32 %conv71.i345.1, %conv68.i342.1
  %conv73.i347.1 = trunc i32 %xor72.i346.1 to i8
  store i8 %conv73.i347.1, i8* %arraydecay12, align 1
  %scevgep80.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 2
  %352 = load i8, i8* %scevgep80.2, align 1
  %conv68.i342.2 = zext i8 %352 to i32
  %353 = load i8, i8* %arraydecay12, align 1
  %conv71.i345.2 = zext i8 %353 to i32
  %xor72.i346.2 = xor i32 %conv71.i345.2, %conv68.i342.2
  %conv73.i347.2 = trunc i32 %xor72.i346.2 to i8
  store i8 %conv73.i347.2, i8* %arraydecay12, align 1
  %scevgep80.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 3
  %354 = load i8, i8* %scevgep80.3, align 1
  %conv68.i342.3 = zext i8 %354 to i32
  %355 = load i8, i8* %arraydecay12, align 1
  %conv71.i345.3 = zext i8 %355 to i32
  %xor72.i346.3 = xor i32 %conv71.i345.3, %conv68.i342.3
  %conv73.i347.3 = trunc i32 %xor72.i346.3 to i8
  store i8 %conv73.i347.3, i8* %arraydecay12, align 1
  %scevgep80.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 4
  %356 = load i8, i8* %scevgep80.4, align 1
  %conv68.i342.4 = zext i8 %356 to i32
  %357 = load i8, i8* %arraydecay12, align 1
  %conv71.i345.4 = zext i8 %357 to i32
  %xor72.i346.4 = xor i32 %conv71.i345.4, %conv68.i342.4
  %conv73.i347.4 = trunc i32 %xor72.i346.4 to i8
  store i8 %conv73.i347.4, i8* %arraydecay12, align 1
  %scevgep79 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 1, i64 0
  %358 = bitcast i8* %scevgep79 to [5 x [5 x i8]]*
  %arrayidx51.i327.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %359 = load i8, i8* %arrayidx51.i327.1, align 1
  %arrayidx53.i329.1 = getelementptr inbounds i8, i8* %arraydecay11, i64 1
  %360 = load i8, i8* %arrayidx53.i329.1, align 1
  %call54.i330.1 = call zeroext i8 @mult(i8 zeroext %359, i8 zeroext %360) #3
  %arrayidx56.i332.1 = getelementptr inbounds i8, i8* %arraydecay12, i64 1
  store i8 %call54.i330.1, i8* %arrayidx56.i332.1, align 1
  %arrayidx70.i344.1 = getelementptr inbounds i8, i8* %arraydecay12, i64 1
  %scevgep80.1223 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %358, i64 0, i64 0, i64 0
  %361 = load i8, i8* %scevgep80.1223, align 1
  %conv68.i342.1224 = zext i8 %361 to i32
  %362 = load i8, i8* %arrayidx70.i344.1, align 1
  %conv71.i345.1225 = zext i8 %362 to i32
  %xor72.i346.1226 = xor i32 %conv71.i345.1225, %conv68.i342.1224
  %conv73.i347.1227 = trunc i32 %xor72.i346.1226 to i8
  store i8 %conv73.i347.1227, i8* %arrayidx70.i344.1, align 1
  %scevgep80.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %358, i64 0, i64 0, i64 2
  %363 = load i8, i8* %scevgep80.2.1, align 1
  %conv68.i342.2.1 = zext i8 %363 to i32
  %364 = load i8, i8* %arrayidx70.i344.1, align 1
  %conv71.i345.2.1 = zext i8 %364 to i32
  %xor72.i346.2.1 = xor i32 %conv71.i345.2.1, %conv68.i342.2.1
  %conv73.i347.2.1 = trunc i32 %xor72.i346.2.1 to i8
  store i8 %conv73.i347.2.1, i8* %arrayidx70.i344.1, align 1
  %scevgep80.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %358, i64 0, i64 0, i64 3
  %365 = load i8, i8* %scevgep80.3.1, align 1
  %conv68.i342.3.1 = zext i8 %365 to i32
  %366 = load i8, i8* %arrayidx70.i344.1, align 1
  %conv71.i345.3.1 = zext i8 %366 to i32
  %xor72.i346.3.1 = xor i32 %conv71.i345.3.1, %conv68.i342.3.1
  %conv73.i347.3.1 = trunc i32 %xor72.i346.3.1 to i8
  store i8 %conv73.i347.3.1, i8* %arrayidx70.i344.1, align 1
  %scevgep80.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %358, i64 0, i64 0, i64 4
  %367 = load i8, i8* %scevgep80.4.1, align 1
  %conv68.i342.4.1 = zext i8 %367 to i32
  %368 = load i8, i8* %arrayidx70.i344.1, align 1
  %conv71.i345.4.1 = zext i8 %368 to i32
  %xor72.i346.4.1 = xor i32 %conv71.i345.4.1, %conv68.i342.4.1
  %conv73.i347.4.1 = trunc i32 %xor72.i346.4.1 to i8
  store i8 %conv73.i347.4.1, i8* %arrayidx70.i344.1, align 1
  %scevgep79.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %358, i64 0, i64 1, i64 0
  %369 = bitcast i8* %scevgep79.1 to [5 x [5 x i8]]*
  %arrayidx51.i327.2 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  %370 = load i8, i8* %arrayidx51.i327.2, align 1
  %arrayidx53.i329.2 = getelementptr inbounds i8, i8* %arraydecay11, i64 2
  %371 = load i8, i8* %arrayidx53.i329.2, align 1
  %call54.i330.2 = call zeroext i8 @mult(i8 zeroext %370, i8 zeroext %371) #3
  %arrayidx56.i332.2 = getelementptr inbounds i8, i8* %arraydecay12, i64 2
  store i8 %call54.i330.2, i8* %arrayidx56.i332.2, align 1
  %arrayidx70.i344.2 = getelementptr inbounds i8, i8* %arraydecay12, i64 2
  %scevgep80.2232 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %369, i64 0, i64 0, i64 0
  %372 = load i8, i8* %scevgep80.2232, align 1
  %conv68.i342.2233 = zext i8 %372 to i32
  %373 = load i8, i8* %arrayidx70.i344.2, align 1
  %conv71.i345.2234 = zext i8 %373 to i32
  %xor72.i346.2235 = xor i32 %conv71.i345.2234, %conv68.i342.2233
  %conv73.i347.2236 = trunc i32 %xor72.i346.2235 to i8
  store i8 %conv73.i347.2236, i8* %arrayidx70.i344.2, align 1
  %scevgep80.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %369, i64 0, i64 0, i64 1
  %374 = load i8, i8* %scevgep80.1.2, align 1
  %conv68.i342.1.2 = zext i8 %374 to i32
  %375 = load i8, i8* %arrayidx70.i344.2, align 1
  %conv71.i345.1.2 = zext i8 %375 to i32
  %xor72.i346.1.2 = xor i32 %conv71.i345.1.2, %conv68.i342.1.2
  %conv73.i347.1.2 = trunc i32 %xor72.i346.1.2 to i8
  store i8 %conv73.i347.1.2, i8* %arrayidx70.i344.2, align 1
  %scevgep80.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %369, i64 0, i64 0, i64 3
  %376 = load i8, i8* %scevgep80.3.2, align 1
  %conv68.i342.3.2 = zext i8 %376 to i32
  %377 = load i8, i8* %arrayidx70.i344.2, align 1
  %conv71.i345.3.2 = zext i8 %377 to i32
  %xor72.i346.3.2 = xor i32 %conv71.i345.3.2, %conv68.i342.3.2
  %conv73.i347.3.2 = trunc i32 %xor72.i346.3.2 to i8
  store i8 %conv73.i347.3.2, i8* %arrayidx70.i344.2, align 1
  %scevgep80.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %369, i64 0, i64 0, i64 4
  %378 = load i8, i8* %scevgep80.4.2, align 1
  %conv68.i342.4.2 = zext i8 %378 to i32
  %379 = load i8, i8* %arrayidx70.i344.2, align 1
  %conv71.i345.4.2 = zext i8 %379 to i32
  %xor72.i346.4.2 = xor i32 %conv71.i345.4.2, %conv68.i342.4.2
  %conv73.i347.4.2 = trunc i32 %xor72.i346.4.2 to i8
  store i8 %conv73.i347.4.2, i8* %arrayidx70.i344.2, align 1
  %scevgep79.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %369, i64 0, i64 1, i64 0
  %380 = bitcast i8* %scevgep79.2 to [5 x [5 x i8]]*
  %arrayidx51.i327.3 = getelementptr inbounds i8, i8* %arraydecay10, i64 3
  %381 = load i8, i8* %arrayidx51.i327.3, align 1
  %arrayidx53.i329.3 = getelementptr inbounds i8, i8* %arraydecay11, i64 3
  %382 = load i8, i8* %arrayidx53.i329.3, align 1
  %call54.i330.3 = call zeroext i8 @mult(i8 zeroext %381, i8 zeroext %382) #3
  %arrayidx56.i332.3 = getelementptr inbounds i8, i8* %arraydecay12, i64 3
  store i8 %call54.i330.3, i8* %arrayidx56.i332.3, align 1
  %arrayidx70.i344.3 = getelementptr inbounds i8, i8* %arraydecay12, i64 3
  %scevgep80.3241 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %380, i64 0, i64 0, i64 0
  %383 = load i8, i8* %scevgep80.3241, align 1
  %conv68.i342.3242 = zext i8 %383 to i32
  %384 = load i8, i8* %arrayidx70.i344.3, align 1
  %conv71.i345.3243 = zext i8 %384 to i32
  %xor72.i346.3244 = xor i32 %conv71.i345.3243, %conv68.i342.3242
  %conv73.i347.3245 = trunc i32 %xor72.i346.3244 to i8
  store i8 %conv73.i347.3245, i8* %arrayidx70.i344.3, align 1
  %scevgep80.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %380, i64 0, i64 0, i64 1
  %385 = load i8, i8* %scevgep80.1.3, align 1
  %conv68.i342.1.3 = zext i8 %385 to i32
  %386 = load i8, i8* %arrayidx70.i344.3, align 1
  %conv71.i345.1.3 = zext i8 %386 to i32
  %xor72.i346.1.3 = xor i32 %conv71.i345.1.3, %conv68.i342.1.3
  %conv73.i347.1.3 = trunc i32 %xor72.i346.1.3 to i8
  store i8 %conv73.i347.1.3, i8* %arrayidx70.i344.3, align 1
  %scevgep80.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %380, i64 0, i64 0, i64 2
  %387 = load i8, i8* %scevgep80.2.3, align 1
  %conv68.i342.2.3 = zext i8 %387 to i32
  %388 = load i8, i8* %arrayidx70.i344.3, align 1
  %conv71.i345.2.3 = zext i8 %388 to i32
  %xor72.i346.2.3 = xor i32 %conv71.i345.2.3, %conv68.i342.2.3
  %conv73.i347.2.3 = trunc i32 %xor72.i346.2.3 to i8
  store i8 %conv73.i347.2.3, i8* %arrayidx70.i344.3, align 1
  %scevgep80.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %380, i64 0, i64 0, i64 4
  %389 = load i8, i8* %scevgep80.4.3, align 1
  %conv68.i342.4.3 = zext i8 %389 to i32
  %390 = load i8, i8* %arrayidx70.i344.3, align 1
  %conv71.i345.4.3 = zext i8 %390 to i32
  %xor72.i346.4.3 = xor i32 %conv71.i345.4.3, %conv68.i342.4.3
  %conv73.i347.4.3 = trunc i32 %xor72.i346.4.3 to i8
  store i8 %conv73.i347.4.3, i8* %arrayidx70.i344.3, align 1
  %scevgep79.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %380, i64 0, i64 1, i64 0
  %391 = bitcast i8* %scevgep79.3 to [5 x [5 x i8]]*
  %arrayidx51.i327.4 = getelementptr inbounds i8, i8* %arraydecay10, i64 4
  %392 = load i8, i8* %arrayidx51.i327.4, align 1
  %arrayidx53.i329.4 = getelementptr inbounds i8, i8* %arraydecay11, i64 4
  %393 = load i8, i8* %arrayidx53.i329.4, align 1
  %call54.i330.4 = call zeroext i8 @mult(i8 zeroext %392, i8 zeroext %393) #3
  %arrayidx56.i332.4 = getelementptr inbounds i8, i8* %arraydecay12, i64 4
  store i8 %call54.i330.4, i8* %arrayidx56.i332.4, align 1
  %arrayidx70.i344.4 = getelementptr inbounds i8, i8* %arraydecay12, i64 4
  %scevgep80.4250 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %391, i64 0, i64 0, i64 0
  %394 = load i8, i8* %scevgep80.4250, align 1
  %conv68.i342.4251 = zext i8 %394 to i32
  %395 = load i8, i8* %arrayidx70.i344.4, align 1
  %conv71.i345.4252 = zext i8 %395 to i32
  %xor72.i346.4253 = xor i32 %conv71.i345.4252, %conv68.i342.4251
  %conv73.i347.4254 = trunc i32 %xor72.i346.4253 to i8
  store i8 %conv73.i347.4254, i8* %arrayidx70.i344.4, align 1
  %scevgep80.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %391, i64 0, i64 0, i64 1
  %396 = load i8, i8* %scevgep80.1.4, align 1
  %conv68.i342.1.4 = zext i8 %396 to i32
  %397 = load i8, i8* %arrayidx70.i344.4, align 1
  %conv71.i345.1.4 = zext i8 %397 to i32
  %xor72.i346.1.4 = xor i32 %conv71.i345.1.4, %conv68.i342.1.4
  %conv73.i347.1.4 = trunc i32 %xor72.i346.1.4 to i8
  store i8 %conv73.i347.1.4, i8* %arrayidx70.i344.4, align 1
  %scevgep80.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %391, i64 0, i64 0, i64 2
  %398 = load i8, i8* %scevgep80.2.4, align 1
  %conv68.i342.2.4 = zext i8 %398 to i32
  %399 = load i8, i8* %arrayidx70.i344.4, align 1
  %conv71.i345.2.4 = zext i8 %399 to i32
  %xor72.i346.2.4 = xor i32 %conv71.i345.2.4, %conv68.i342.2.4
  %conv73.i347.2.4 = trunc i32 %xor72.i346.2.4 to i8
  store i8 %conv73.i347.2.4, i8* %arrayidx70.i344.4, align 1
  %scevgep80.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %391, i64 0, i64 0, i64 3
  %400 = load i8, i8* %scevgep80.3.4, align 1
  %conv68.i342.3.4 = zext i8 %400 to i32
  %401 = load i8, i8* %arrayidx70.i344.4, align 1
  %conv71.i345.3.4 = zext i8 %401 to i32
  %xor72.i346.3.4 = xor i32 %conv71.i345.3.4, %conv68.i342.3.4
  %conv73.i347.3.4 = trunc i32 %xor72.i346.3.4 to i8
  store i8 %conv73.i347.3.4, i8* %arrayidx70.i344.4, align 1
  %call80.i353 = call zeroext i8 @mult(i8 zeroext %call.i252, i8 zeroext %call1.i253) #3
  %conv81.i354 = zext i8 %call80.i353 to i32
  %scevgep70 = getelementptr [5 x i8], [5 x i8]* %e7, i64 0, i64 0
  %402 = load i8, i8* %scevgep70, align 1
  %scevgep70.1 = getelementptr [5 x i8], [5 x i8]* %e7, i64 0, i64 1
  %403 = load i8, i8* %scevgep70.1, align 1
  %conv.i.i113.i361.1 = zext i8 %403 to i32
  %conv1.i.i114.i362.1 = zext i8 %402 to i32
  %xor.i.i115.i363.1 = xor i32 %conv1.i.i114.i362.1, %conv.i.i113.i361.1
  %conv2.i.i116.i364.1 = trunc i32 %xor.i.i115.i363.1 to i8
  %scevgep70.2 = getelementptr [5 x i8], [5 x i8]* %e7, i64 0, i64 2
  %404 = load i8, i8* %scevgep70.2, align 1
  %conv.i.i113.i361.2 = zext i8 %404 to i32
  %conv1.i.i114.i362.2 = zext i8 %conv2.i.i116.i364.1 to i32
  %xor.i.i115.i363.2 = xor i32 %conv1.i.i114.i362.2, %conv.i.i113.i361.2
  %conv2.i.i116.i364.2 = trunc i32 %xor.i.i115.i363.2 to i8
  %scevgep70.3 = getelementptr [5 x i8], [5 x i8]* %e7, i64 0, i64 3
  %405 = load i8, i8* %scevgep70.3, align 1
  %conv.i.i113.i361.3 = zext i8 %405 to i32
  %conv1.i.i114.i362.3 = zext i8 %conv2.i.i116.i364.2 to i32
  %xor.i.i115.i363.3 = xor i32 %conv1.i.i114.i362.3, %conv.i.i113.i361.3
  %conv2.i.i116.i364.3 = trunc i32 %xor.i.i115.i363.3 to i8
  %scevgep70.4 = getelementptr [5 x i8], [5 x i8]* %e7, i64 0, i64 4
  %406 = load i8, i8* %scevgep70.4, align 1
  %conv.i.i113.i361.4 = zext i8 %406 to i32
  %conv1.i.i114.i362.4 = zext i8 %conv2.i.i116.i364.3 to i32
  %xor.i.i115.i363.4 = xor i32 %conv1.i.i114.i362.4, %conv.i.i113.i361.4
  %conv2.i.i116.i364.4 = trunc i32 %xor.i.i115.i363.4 to i8
  %conv83.i367 = zext i8 %conv2.i.i116.i364.4 to i32
  %cmp84.i368 = icmp eq i32 %conv81.i354, %conv83.i367
  call void @assert(i1 zeroext %cmp84.i368) #3
  %scevgep65 = getelementptr [5 x i8], [5 x i8]* %e3, i64 0, i64 0
  %407 = load i8, i8* %scevgep65, align 1
  %call.i378 = call zeroext i8 @L3(i8 zeroext %407) #3
  %scevgep66 = getelementptr [5 x i8], [5 x i8]* %l3, i64 0, i64 0
  store i8 %call.i378, i8* %scevgep66, align 1
  %scevgep65.1 = getelementptr [5 x i8], [5 x i8]* %e3, i64 0, i64 1
  %408 = load i8, i8* %scevgep65.1, align 1
  %call.i378.1 = call zeroext i8 @L3(i8 zeroext %408) #3
  %scevgep66.1 = getelementptr [5 x i8], [5 x i8]* %l3, i64 0, i64 1
  store i8 %call.i378.1, i8* %scevgep66.1, align 1
  %scevgep65.2 = getelementptr [5 x i8], [5 x i8]* %e3, i64 0, i64 2
  %409 = load i8, i8* %scevgep65.2, align 1
  %call.i378.2 = call zeroext i8 @L3(i8 zeroext %409) #3
  %scevgep66.2 = getelementptr [5 x i8], [5 x i8]* %l3, i64 0, i64 2
  store i8 %call.i378.2, i8* %scevgep66.2, align 1
  %scevgep65.3 = getelementptr [5 x i8], [5 x i8]* %e3, i64 0, i64 3
  %410 = load i8, i8* %scevgep65.3, align 1
  %call.i378.3 = call zeroext i8 @L3(i8 zeroext %410) #3
  %scevgep66.3 = getelementptr [5 x i8], [5 x i8]* %l3, i64 0, i64 3
  store i8 %call.i378.3, i8* %scevgep66.3, align 1
  %scevgep65.4 = getelementptr [5 x i8], [5 x i8]* %e3, i64 0, i64 4
  %411 = load i8, i8* %scevgep65.4, align 1
  %call.i378.4 = call zeroext i8 @L3(i8 zeroext %411) #3
  %scevgep66.4 = getelementptr [5 x i8], [5 x i8]* %l3, i64 0, i64 4
  store i8 %call.i378.4, i8* %scevgep66.4, align 1
  %scevgep60 = getelementptr [5 x i8], [5 x i8]* %e5, i64 0, i64 0
  %412 = load i8, i8* %scevgep60, align 1
  %call.i393 = call zeroext i8 @L5(i8 zeroext %412) #3
  %scevgep61 = getelementptr [5 x i8], [5 x i8]* %l5, i64 0, i64 0
  store i8 %call.i393, i8* %scevgep61, align 1
  %scevgep60.1 = getelementptr [5 x i8], [5 x i8]* %e5, i64 0, i64 1
  %413 = load i8, i8* %scevgep60.1, align 1
  %call.i393.1 = call zeroext i8 @L5(i8 zeroext %413) #3
  %scevgep61.1 = getelementptr [5 x i8], [5 x i8]* %l5, i64 0, i64 1
  store i8 %call.i393.1, i8* %scevgep61.1, align 1
  %scevgep60.2 = getelementptr [5 x i8], [5 x i8]* %e5, i64 0, i64 2
  %414 = load i8, i8* %scevgep60.2, align 1
  %call.i393.2 = call zeroext i8 @L5(i8 zeroext %414) #3
  %scevgep61.2 = getelementptr [5 x i8], [5 x i8]* %l5, i64 0, i64 2
  store i8 %call.i393.2, i8* %scevgep61.2, align 1
  %scevgep60.3 = getelementptr [5 x i8], [5 x i8]* %e5, i64 0, i64 3
  %415 = load i8, i8* %scevgep60.3, align 1
  %call.i393.3 = call zeroext i8 @L5(i8 zeroext %415) #3
  %scevgep61.3 = getelementptr [5 x i8], [5 x i8]* %l5, i64 0, i64 3
  store i8 %call.i393.3, i8* %scevgep61.3, align 1
  %scevgep60.4 = getelementptr [5 x i8], [5 x i8]* %e5, i64 0, i64 4
  %416 = load i8, i8* %scevgep60.4, align 1
  %call.i393.4 = call zeroext i8 @L5(i8 zeroext %416) #3
  %scevgep61.4 = getelementptr [5 x i8], [5 x i8]* %l5, i64 0, i64 4
  store i8 %call.i393.4, i8* %scevgep61.4, align 1
  %scevgep55 = getelementptr [5 x i8], [5 x i8]* %e7, i64 0, i64 0
  %417 = load i8, i8* %scevgep55, align 1
  %call.i408 = call zeroext i8 @L7(i8 zeroext %417) #3
  %scevgep56 = getelementptr [5 x i8], [5 x i8]* %l7, i64 0, i64 0
  store i8 %call.i408, i8* %scevgep56, align 1
  %scevgep55.1 = getelementptr [5 x i8], [5 x i8]* %e7, i64 0, i64 1
  %418 = load i8, i8* %scevgep55.1, align 1
  %call.i408.1 = call zeroext i8 @L7(i8 zeroext %418) #3
  %scevgep56.1 = getelementptr [5 x i8], [5 x i8]* %l7, i64 0, i64 1
  store i8 %call.i408.1, i8* %scevgep56.1, align 1
  %scevgep55.2 = getelementptr [5 x i8], [5 x i8]* %e7, i64 0, i64 2
  %419 = load i8, i8* %scevgep55.2, align 1
  %call.i408.2 = call zeroext i8 @L7(i8 zeroext %419) #3
  %scevgep56.2 = getelementptr [5 x i8], [5 x i8]* %l7, i64 0, i64 2
  store i8 %call.i408.2, i8* %scevgep56.2, align 1
  %scevgep55.3 = getelementptr [5 x i8], [5 x i8]* %e7, i64 0, i64 3
  %420 = load i8, i8* %scevgep55.3, align 1
  %call.i408.3 = call zeroext i8 @L7(i8 zeroext %420) #3
  %scevgep56.3 = getelementptr [5 x i8], [5 x i8]* %l7, i64 0, i64 3
  store i8 %call.i408.3, i8* %scevgep56.3, align 1
  %scevgep55.4 = getelementptr [5 x i8], [5 x i8]* %e7, i64 0, i64 4
  %421 = load i8, i8* %scevgep55.4, align 1
  %call.i408.4 = call zeroext i8 @L7(i8 zeroext %421) #3
  %scevgep56.4 = getelementptr [5 x i8], [5 x i8]* %l7, i64 0, i64 4
  store i8 %call.i408.4, i8* %scevgep56.4, align 1
  %scevgep47 = getelementptr [5 x i8], [5 x i8]* %l1, i64 0, i64 0
  %422 = load i8, i8* %scevgep47, align 1
  %conv21 = zext i8 %422 to i32
  %scevgep48 = getelementptr [5 x i8], [5 x i8]* %l3, i64 0, i64 0
  %423 = load i8, i8* %scevgep48, align 1
  %conv24 = zext i8 %423 to i32
  %xor = xor i32 %conv21, %conv24
  %scevgep49 = getelementptr [5 x i8], [5 x i8]* %l5, i64 0, i64 0
  %424 = load i8, i8* %scevgep49, align 1
  %conv27 = zext i8 %424 to i32
  %xor28 = xor i32 %xor, %conv27
  %scevgep50 = getelementptr [5 x i8], [5 x i8]* %l7, i64 0, i64 0
  %425 = load i8, i8* %scevgep50, align 1
  %conv31 = zext i8 %425 to i32
  %xor32 = xor i32 %xor28, %conv31
  %conv33 = trunc i32 %xor32 to i8
  store i8 %conv33, i8* %y, align 1
  %scevgep47.1 = getelementptr [5 x i8], [5 x i8]* %l1, i64 0, i64 1
  %426 = load i8, i8* %scevgep47.1, align 1
  %conv21.1 = zext i8 %426 to i32
  %scevgep48.1 = getelementptr [5 x i8], [5 x i8]* %l3, i64 0, i64 1
  %427 = load i8, i8* %scevgep48.1, align 1
  %conv24.1 = zext i8 %427 to i32
  %xor.1 = xor i32 %conv21.1, %conv24.1
  %scevgep49.1 = getelementptr [5 x i8], [5 x i8]* %l5, i64 0, i64 1
  %428 = load i8, i8* %scevgep49.1, align 1
  %conv27.1 = zext i8 %428 to i32
  %xor28.1 = xor i32 %xor.1, %conv27.1
  %scevgep50.1 = getelementptr [5 x i8], [5 x i8]* %l7, i64 0, i64 1
  %429 = load i8, i8* %scevgep50.1, align 1
  %conv31.1 = zext i8 %429 to i32
  %xor32.1 = xor i32 %xor28.1, %conv31.1
  %conv33.1 = trunc i32 %xor32.1 to i8
  %scevgep51.1 = getelementptr i8, i8* %y, i64 1
  store i8 %conv33.1, i8* %scevgep51.1, align 1
  %scevgep47.2 = getelementptr [5 x i8], [5 x i8]* %l1, i64 0, i64 2
  %430 = load i8, i8* %scevgep47.2, align 1
  %conv21.2 = zext i8 %430 to i32
  %scevgep48.2 = getelementptr [5 x i8], [5 x i8]* %l3, i64 0, i64 2
  %431 = load i8, i8* %scevgep48.2, align 1
  %conv24.2 = zext i8 %431 to i32
  %xor.2 = xor i32 %conv21.2, %conv24.2
  %scevgep49.2 = getelementptr [5 x i8], [5 x i8]* %l5, i64 0, i64 2
  %432 = load i8, i8* %scevgep49.2, align 1
  %conv27.2 = zext i8 %432 to i32
  %xor28.2 = xor i32 %xor.2, %conv27.2
  %scevgep50.2 = getelementptr [5 x i8], [5 x i8]* %l7, i64 0, i64 2
  %433 = load i8, i8* %scevgep50.2, align 1
  %conv31.2 = zext i8 %433 to i32
  %xor32.2 = xor i32 %xor28.2, %conv31.2
  %conv33.2 = trunc i32 %xor32.2 to i8
  %scevgep51.2 = getelementptr i8, i8* %y, i64 2
  store i8 %conv33.2, i8* %scevgep51.2, align 1
  %scevgep47.3 = getelementptr [5 x i8], [5 x i8]* %l1, i64 0, i64 3
  %434 = load i8, i8* %scevgep47.3, align 1
  %conv21.3 = zext i8 %434 to i32
  %scevgep48.3 = getelementptr [5 x i8], [5 x i8]* %l3, i64 0, i64 3
  %435 = load i8, i8* %scevgep48.3, align 1
  %conv24.3 = zext i8 %435 to i32
  %xor.3 = xor i32 %conv21.3, %conv24.3
  %scevgep49.3 = getelementptr [5 x i8], [5 x i8]* %l5, i64 0, i64 3
  %436 = load i8, i8* %scevgep49.3, align 1
  %conv27.3 = zext i8 %436 to i32
  %xor28.3 = xor i32 %xor.3, %conv27.3
  %scevgep50.3 = getelementptr [5 x i8], [5 x i8]* %l7, i64 0, i64 3
  %437 = load i8, i8* %scevgep50.3, align 1
  %conv31.3 = zext i8 %437 to i32
  %xor32.3 = xor i32 %xor28.3, %conv31.3
  %conv33.3 = trunc i32 %xor32.3 to i8
  %scevgep51.3 = getelementptr i8, i8* %y, i64 3
  store i8 %conv33.3, i8* %scevgep51.3, align 1
  %scevgep47.4 = getelementptr [5 x i8], [5 x i8]* %l1, i64 0, i64 4
  %438 = load i8, i8* %scevgep47.4, align 1
  %conv21.4 = zext i8 %438 to i32
  %scevgep48.4 = getelementptr [5 x i8], [5 x i8]* %l3, i64 0, i64 4
  %439 = load i8, i8* %scevgep48.4, align 1
  %conv24.4 = zext i8 %439 to i32
  %xor.4 = xor i32 %conv21.4, %conv24.4
  %scevgep49.4 = getelementptr [5 x i8], [5 x i8]* %l5, i64 0, i64 4
  %440 = load i8, i8* %scevgep49.4, align 1
  %conv27.4 = zext i8 %440 to i32
  %xor28.4 = xor i32 %xor.4, %conv27.4
  %scevgep50.4 = getelementptr [5 x i8], [5 x i8]* %l7, i64 0, i64 4
  %441 = load i8, i8* %scevgep50.4, align 1
  %conv31.4 = zext i8 %441 to i32
  %xor32.4 = xor i32 %xor28.4, %conv31.4
  %conv33.4 = trunc i32 %xor32.4 to i8
  %scevgep51.4 = getelementptr i8, i8* %y, i64 4
  store i8 %conv33.4, i8* %scevgep51.4, align 1
  %442 = load i8, i8* %y, align 1
  %conv37 = zext i8 %442 to i32
  %xor38 = xor i32 %conv37, 1
  %conv39 = trunc i32 %xor38 to i8
  store i8 %conv39, i8* %y, align 1
  %call.i415 = call zeroext i8 @L1(i8 zeroext %call) #3
  %conv.i416 = zext i8 %call.i415 to i32
  %xor.i417 = xor i32 1, %conv.i416
  %call.i.i418 = call zeroext i8 @square(i8 zeroext %call) #3
  %call1.i.i = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call.i.i418) #3
  %call2.i = call zeroext i8 @L3(i8 zeroext %call1.i.i) #3
  %conv3.i419 = zext i8 %call2.i to i32
  %xor4.i = xor i32 %xor.i417, %conv3.i419
  %call.i15.i = call zeroext i8 @exp4(i8 zeroext %call) #3
  %call1.i16.i = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call.i15.i) #3
  %call6.i = call zeroext i8 @L5(i8 zeroext %call1.i16.i) #3
  %conv7.i420 = zext i8 %call6.i to i32
  %xor8.i = xor i32 %xor4.i, %conv7.i420
  %call.i.i.i421 = call zeroext i8 @square(i8 zeroext %call) #3
  %call1.i.i.i = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call.i.i.i421) #3
  %call1.i18.i = call zeroext i8 @exp4(i8 zeroext %call) #3
  %call2.i.i = call zeroext i8 @mult(i8 zeroext %call1.i.i.i, i8 zeroext %call1.i18.i) #3
  %call10.i = call zeroext i8 @L7(i8 zeroext %call2.i.i) #3
  %conv11.i = zext i8 %call10.i to i32
  %xor12.i = xor i32 %xor8.i, %conv11.i
  %conv13.i = trunc i32 %xor12.i to i8
  %conv41 = zext i8 %conv13.i to i32
  %443 = load i8, i8* %y, align 1
  %scevgep.1 = getelementptr i8, i8* %y, i64 1
  %444 = load i8, i8* %scevgep.1, align 1
  %conv.i.i432.1 = zext i8 %444 to i32
  %conv1.i.i433.1 = zext i8 %443 to i32
  %xor.i.i434.1 = xor i32 %conv1.i.i433.1, %conv.i.i432.1
  %conv2.i.i435.1 = trunc i32 %xor.i.i434.1 to i8
  %scevgep.2 = getelementptr i8, i8* %y, i64 2
  %445 = load i8, i8* %scevgep.2, align 1
  %conv.i.i432.2 = zext i8 %445 to i32
  %conv1.i.i433.2 = zext i8 %conv2.i.i435.1 to i32
  %xor.i.i434.2 = xor i32 %conv1.i.i433.2, %conv.i.i432.2
  %conv2.i.i435.2 = trunc i32 %xor.i.i434.2 to i8
  %scevgep.3 = getelementptr i8, i8* %y, i64 3
  %446 = load i8, i8* %scevgep.3, align 1
  %conv.i.i432.3 = zext i8 %446 to i32
  %conv1.i.i433.3 = zext i8 %conv2.i.i435.2 to i32
  %xor.i.i434.3 = xor i32 %conv1.i.i433.3, %conv.i.i432.3
  %conv2.i.i435.3 = trunc i32 %xor.i.i434.3 to i8
  %scevgep.4 = getelementptr i8, i8* %y, i64 4
  %447 = load i8, i8* %scevgep.4, align 1
  %conv.i.i432.4 = zext i8 %447 to i32
  %conv1.i.i433.4 = zext i8 %conv2.i.i435.3 to i32
  %xor.i.i434.4 = xor i32 %conv1.i.i433.4, %conv.i.i432.4
  %conv2.i.i435.4 = trunc i32 %xor.i.i434.4 to i8
  %conv43 = zext i8 %conv2.i.i435.4 to i32
  %cmp44 = icmp eq i32 %conv41, %conv43
  call void @assert(i1 zeroext %cmp44)
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
