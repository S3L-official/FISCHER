; ModuleID = '../examples/rivain-ches2010-present-sbox.inline-2.ll'
source_filename = "../examples/rivain-ches2010-present-sbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 2, align 4
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
  ret i8 %conv2.2
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
  ret i8 %conv2.i.2
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_mult(i8* %a, i8* %b, i8* %c) #0 {
entry:
  %r = alloca [3 x [3 x i8]], align 1
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
  %conv3 = zext i8 %conv2.i.i.2 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %3 = load i8, i8* %b, align 1
  %scevgep46.1 = getelementptr i8, i8* %b, i64 1
  %4 = load i8, i8* %scevgep46.1, align 1
  %conv.i.i96.1 = zext i8 %4 to i32
  %conv1.i.i97.1 = zext i8 %3 to i32
  %xor.i.i98.1 = xor i32 %conv1.i.i97.1, %conv.i.i96.1
  %conv2.i.i99.1 = trunc i32 %xor.i.i98.1 to i8
  %scevgep46.2 = getelementptr i8, i8* %b, i64 2
  %5 = load i8, i8* %scevgep46.2, align 1
  %conv.i.i96.2 = zext i8 %5 to i32
  %conv1.i.i97.2 = zext i8 %conv2.i.i99.1 to i32
  %xor.i.i98.2 = xor i32 %conv1.i.i97.2, %conv.i.i96.2
  %conv2.i.i99.2 = trunc i32 %xor.i.i98.2 to i8
  %conv7 = zext i8 %conv2.i.i99.2 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %scevgep23 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 0, i64 1
  %scevgep2324 = bitcast i8* %scevgep23 to [3 x [3 x i8]]*
  %scevgep36 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 1, i64 0
  %scevgep3637 = bitcast i8* %scevgep36 to [3 x [3 x i8]]*
  %call16 = call zeroext i8 (...) @rand()
  store i8 %call16, i8* %scevgep23, align 1
  %6 = load i8, i8* %scevgep23, align 1
  %conv23 = zext i8 %6 to i32
  %7 = load i8, i8* %a, align 1
  %scevgep34 = getelementptr i8, i8* %b, i64 1
  %8 = load i8, i8* %scevgep34, align 1
  %call28 = call zeroext i8 @mult(i8 zeroext %7, i8 zeroext %8)
  %conv29 = zext i8 %call28 to i32
  %xor = xor i32 %conv23, %conv29
  %scevgep35 = getelementptr i8, i8* %a, i64 1
  %9 = load i8, i8* %scevgep35, align 1
  %10 = load i8, i8* %b, align 1
  %call34 = call zeroext i8 @mult(i8 zeroext %9, i8 zeroext %10)
  %conv35 = zext i8 %call34 to i32
  %xor36 = xor i32 %xor, %conv35
  %conv37 = trunc i32 %xor36 to i8
  store i8 %conv37, i8* %scevgep36, align 1
  %scevgep28 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep2324, i64 0, i64 0, i64 1
  %scevgep41 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep3637, i64 0, i64 1, i64 0
  %call16.174 = call zeroext i8 (...) @rand()
  store i8 %call16.174, i8* %scevgep28, align 1
  %11 = load i8, i8* %scevgep28, align 1
  %conv23.175 = zext i8 %11 to i32
  %12 = load i8, i8* %a, align 1
  %scevgep34.176 = getelementptr i8, i8* %b, i64 2
  %13 = load i8, i8* %scevgep34.176, align 1
  %call28.177 = call zeroext i8 @mult(i8 zeroext %12, i8 zeroext %13)
  %conv29.178 = zext i8 %call28.177 to i32
  %xor.179 = xor i32 %conv23.175, %conv29.178
  %scevgep35.180 = getelementptr i8, i8* %a, i64 2
  %14 = load i8, i8* %scevgep35.180, align 1
  %15 = load i8, i8* %b, align 1
  %call34.181 = call zeroext i8 @mult(i8 zeroext %14, i8 zeroext %15)
  %conv35.182 = zext i8 %call34.181 to i32
  %xor36.183 = xor i32 %xor.179, %conv35.182
  %conv37.184 = trunc i32 %xor36.183 to i8
  store i8 %conv37.184, i8* %scevgep41, align 1
  %scevgep26 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep2324, i64 0, i64 1, i64 1
  %scevgep39 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep3637, i64 0, i64 1, i64 1
  %arrayidx25.1 = getelementptr inbounds i8, i8* %a, i64 1
  %arrayidx33.1 = getelementptr inbounds i8, i8* %b, i64 1
  %call16.1 = call zeroext i8 (...) @rand()
  store i8 %call16.1, i8* %scevgep26, align 1
  %16 = load i8, i8* %scevgep26, align 1
  %conv23.1 = zext i8 %16 to i32
  %17 = load i8, i8* %arrayidx25.1, align 1
  %scevgep34.1 = getelementptr i8, i8* %b, i64 2
  %18 = load i8, i8* %scevgep34.1, align 1
  %call28.1 = call zeroext i8 @mult(i8 zeroext %17, i8 zeroext %18)
  %conv29.1 = zext i8 %call28.1 to i32
  %xor.1 = xor i32 %conv23.1, %conv29.1
  %scevgep35.1 = getelementptr i8, i8* %a, i64 2
  %19 = load i8, i8* %scevgep35.1, align 1
  %20 = load i8, i8* %arrayidx33.1, align 1
  %call34.1 = call zeroext i8 @mult(i8 zeroext %19, i8 zeroext %20)
  %conv35.1 = zext i8 %call34.1 to i32
  %xor36.1 = xor i32 %xor.1, %conv35.1
  %conv37.1 = trunc i32 %xor36.1 to i8
  store i8 %conv37.1, i8* %scevgep39, align 1
  %21 = load i8, i8* %a, align 1
  %22 = load i8, i8* %b, align 1
  %call54 = call zeroext i8 @mult(i8 zeroext %21, i8 zeroext %22)
  store i8 %call54, i8* %c, align 1
  %scevgep20.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 0, i64 1
  %23 = load i8, i8* %scevgep20.1, align 1
  %conv68.1 = zext i8 %23 to i32
  %24 = load i8, i8* %c, align 1
  %conv71.1 = zext i8 %24 to i32
  %xor72.1 = xor i32 %conv71.1, %conv68.1
  %conv73.1 = trunc i32 %xor72.1 to i8
  store i8 %conv73.1, i8* %c, align 1
  %scevgep20.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 0, i64 2
  %25 = load i8, i8* %scevgep20.2, align 1
  %conv68.2 = zext i8 %25 to i32
  %26 = load i8, i8* %c, align 1
  %conv71.2 = zext i8 %26 to i32
  %xor72.2 = xor i32 %conv71.2, %conv68.2
  %conv73.2 = trunc i32 %xor72.2 to i8
  store i8 %conv73.2, i8* %c, align 1
  %scevgep19 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 1, i64 0
  %27 = bitcast i8* %scevgep19 to [3 x [3 x i8]]*
  %arrayidx51.1 = getelementptr inbounds i8, i8* %a, i64 1
  %28 = load i8, i8* %arrayidx51.1, align 1
  %arrayidx53.1 = getelementptr inbounds i8, i8* %b, i64 1
  %29 = load i8, i8* %arrayidx53.1, align 1
  %call54.1 = call zeroext i8 @mult(i8 zeroext %28, i8 zeroext %29)
  %arrayidx56.1 = getelementptr inbounds i8, i8* %c, i64 1
  store i8 %call54.1, i8* %arrayidx56.1, align 1
  %arrayidx70.1 = getelementptr inbounds i8, i8* %c, i64 1
  %scevgep20.154 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %27, i64 0, i64 0, i64 0
  %30 = load i8, i8* %scevgep20.154, align 1
  %conv68.155 = zext i8 %30 to i32
  %31 = load i8, i8* %arrayidx70.1, align 1
  %conv71.156 = zext i8 %31 to i32
  %xor72.157 = xor i32 %conv71.156, %conv68.155
  %conv73.158 = trunc i32 %xor72.157 to i8
  store i8 %conv73.158, i8* %arrayidx70.1, align 1
  %scevgep20.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %27, i64 0, i64 0, i64 2
  %32 = load i8, i8* %scevgep20.2.1, align 1
  %conv68.2.1 = zext i8 %32 to i32
  %33 = load i8, i8* %arrayidx70.1, align 1
  %conv71.2.1 = zext i8 %33 to i32
  %xor72.2.1 = xor i32 %conv71.2.1, %conv68.2.1
  %conv73.2.1 = trunc i32 %xor72.2.1 to i8
  store i8 %conv73.2.1, i8* %arrayidx70.1, align 1
  %scevgep19.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %27, i64 0, i64 1, i64 0
  %34 = bitcast i8* %scevgep19.1 to [3 x [3 x i8]]*
  %arrayidx51.2 = getelementptr inbounds i8, i8* %a, i64 2
  %35 = load i8, i8* %arrayidx51.2, align 1
  %arrayidx53.2 = getelementptr inbounds i8, i8* %b, i64 2
  %36 = load i8, i8* %arrayidx53.2, align 1
  %call54.2 = call zeroext i8 @mult(i8 zeroext %35, i8 zeroext %36)
  %arrayidx56.2 = getelementptr inbounds i8, i8* %c, i64 2
  store i8 %call54.2, i8* %arrayidx56.2, align 1
  %arrayidx70.2 = getelementptr inbounds i8, i8* %c, i64 2
  %scevgep20.264 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %34, i64 0, i64 0, i64 0
  %37 = load i8, i8* %scevgep20.264, align 1
  %conv68.265 = zext i8 %37 to i32
  %38 = load i8, i8* %arrayidx70.2, align 1
  %conv71.266 = zext i8 %38 to i32
  %xor72.267 = xor i32 %conv71.266, %conv68.265
  %conv73.268 = trunc i32 %xor72.267 to i8
  store i8 %conv73.268, i8* %arrayidx70.2, align 1
  %scevgep20.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %34, i64 0, i64 0, i64 1
  %39 = load i8, i8* %scevgep20.1.2, align 1
  %conv68.1.2 = zext i8 %39 to i32
  %40 = load i8, i8* %arrayidx70.2, align 1
  %conv71.1.2 = zext i8 %40 to i32
  %xor72.1.2 = xor i32 %conv71.1.2, %conv68.1.2
  %conv73.1.2 = trunc i32 %xor72.1.2 to i8
  store i8 %conv73.1.2, i8* %arrayidx70.2, align 1
  %call80 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv81 = zext i8 %call80 to i32
  %41 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %42 = load i8, i8* %scevgep.1, align 1
  %conv.i.i113.1 = zext i8 %42 to i32
  %conv1.i.i114.1 = zext i8 %41 to i32
  %xor.i.i115.1 = xor i32 %conv1.i.i114.1, %conv.i.i113.1
  %conv2.i.i116.1 = trunc i32 %xor.i.i115.1 to i8
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  %43 = load i8, i8* %scevgep.2, align 1
  %conv.i.i113.2 = zext i8 %43 to i32
  %conv1.i.i114.2 = zext i8 %conv2.i.i116.1 to i32
  %xor.i.i115.2 = xor i32 %conv1.i.i114.2, %conv.i.i113.2
  %conv2.i.i116.2 = trunc i32 %xor.i.i115.2 to i8
  %conv83 = zext i8 %conv2.i.i116.2 to i32
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
  %conv2 = zext i8 %conv2.i.i.2 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %call7 = call zeroext i8 (...) @rand()
  %conv8 = zext i8 %call7 to i32
  %3 = load i8, i8* %x, align 1
  %conv9 = zext i8 %3 to i32
  %xor = xor i32 %conv9, %conv8
  %conv10 = trunc i32 %xor to i8
  store i8 %conv10, i8* %x, align 1
  %conv11 = zext i8 %call7 to i32
  %scevgep8 = getelementptr i8, i8* %x, i64 1
  %4 = load i8, i8* %scevgep8, align 1
  %conv13 = zext i8 %4 to i32
  %xor14 = xor i32 %conv13, %conv11
  %conv15 = trunc i32 %xor14 to i8
  store i8 %conv15, i8* %scevgep8, align 1
  %call7.1 = call zeroext i8 (...) @rand()
  %conv8.1 = zext i8 %call7.1 to i32
  %5 = load i8, i8* %x, align 1
  %conv9.1 = zext i8 %5 to i32
  %xor.1 = xor i32 %conv9.1, %conv8.1
  %conv10.1 = trunc i32 %xor.1 to i8
  store i8 %conv10.1, i8* %x, align 1
  %conv11.1 = zext i8 %call7.1 to i32
  %scevgep8.1 = getelementptr i8, i8* %x, i64 2
  %6 = load i8, i8* %scevgep8.1, align 1
  %conv13.1 = zext i8 %6 to i32
  %xor14.1 = xor i32 %conv13.1, %conv11.1
  %conv15.1 = trunc i32 %xor14.1 to i8
  store i8 %conv15.1, i8* %scevgep8.1, align 1
  %conv16 = zext i8 %call to i32
  %7 = load i8, i8* %x, align 1
  %scevgep.1 = getelementptr i8, i8* %x, i64 1
  %8 = load i8, i8* %scevgep.1, align 1
  %conv.i.i31.1 = zext i8 %8 to i32
  %conv1.i.i32.1 = zext i8 %7 to i32
  %xor.i.i33.1 = xor i32 %conv1.i.i32.1, %conv.i.i31.1
  %conv2.i.i34.1 = trunc i32 %xor.i.i33.1 to i8
  %scevgep.2 = getelementptr i8, i8* %x, i64 2
  %9 = load i8, i8* %scevgep.2, align 1
  %conv.i.i31.2 = zext i8 %9 to i32
  %conv1.i.i32.2 = zext i8 %conv2.i.i34.1 to i32
  %xor.i.i33.2 = xor i32 %conv1.i.i32.2, %conv.i.i31.2
  %conv2.i.i34.2 = trunc i32 %xor.i.i33.2 to i8
  %conv18 = zext i8 %conv2.i.i34.2 to i32
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
  %r.i = alloca [3 x [3 x i8]], align 1
  %l1 = alloca [3 x i8], align 1
  %l3 = alloca [3 x i8], align 1
  %l5 = alloca [3 x i8], align 1
  %l7 = alloca [3 x i8], align 1
  %e2 = alloca [3 x i8], align 1
  %e3 = alloca [3 x i8], align 1
  %e4 = alloca [3 x i8], align 1
  %e5 = alloca [3 x i8], align 1
  %e7 = alloca [3 x i8], align 1
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
  %conv2 = zext i8 %conv2.i.i.2 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %3 = load i8, i8* %x, align 1
  %call.i = call zeroext i8 @L1(i8 zeroext %3) #3
  %scevgep215 = getelementptr [3 x i8], [3 x i8]* %l1, i64 0, i64 0
  store i8 %call.i, i8* %scevgep215, align 1
  %scevgep214.1 = getelementptr i8, i8* %x, i64 1
  %4 = load i8, i8* %scevgep214.1, align 1
  %call.i.1 = call zeroext i8 @L1(i8 zeroext %4) #3
  %scevgep215.1 = getelementptr [3 x i8], [3 x i8]* %l1, i64 0, i64 1
  store i8 %call.i.1, i8* %scevgep215.1, align 1
  %scevgep214.2 = getelementptr i8, i8* %x, i64 2
  %5 = load i8, i8* %scevgep214.2, align 1
  %call.i.2 = call zeroext i8 @L1(i8 zeroext %5) #3
  %scevgep215.2 = getelementptr [3 x i8], [3 x i8]* %l1, i64 0, i64 2
  store i8 %call.i.2, i8* %scevgep215.2, align 1
  %6 = load i8, i8* %x, align 1
  %call.i54 = call zeroext i8 @square(i8 zeroext %6) #3
  %scevgep210 = getelementptr [3 x i8], [3 x i8]* %e2, i64 0, i64 0
  store i8 %call.i54, i8* %scevgep210, align 1
  %scevgep209.1 = getelementptr i8, i8* %x, i64 1
  %7 = load i8, i8* %scevgep209.1, align 1
  %call.i54.1 = call zeroext i8 @square(i8 zeroext %7) #3
  %scevgep210.1 = getelementptr [3 x i8], [3 x i8]* %e2, i64 0, i64 1
  store i8 %call.i54.1, i8* %scevgep210.1, align 1
  %scevgep209.2 = getelementptr i8, i8* %x, i64 2
  %8 = load i8, i8* %scevgep209.2, align 1
  %call.i54.2 = call zeroext i8 @square(i8 zeroext %8) #3
  %scevgep210.2 = getelementptr [3 x i8], [3 x i8]* %e2, i64 0, i64 2
  store i8 %call.i54.2, i8* %scevgep210.2, align 1
  %9 = load i8, i8* %x, align 1
  %call.i68 = call zeroext i8 @exp4(i8 zeroext %9) #3
  %scevgep205 = getelementptr [3 x i8], [3 x i8]* %e4, i64 0, i64 0
  store i8 %call.i68, i8* %scevgep205, align 1
  %scevgep204.1 = getelementptr i8, i8* %x, i64 1
  %10 = load i8, i8* %scevgep204.1, align 1
  %call.i68.1 = call zeroext i8 @exp4(i8 zeroext %10) #3
  %scevgep205.1 = getelementptr [3 x i8], [3 x i8]* %e4, i64 0, i64 1
  store i8 %call.i68.1, i8* %scevgep205.1, align 1
  %scevgep204.2 = getelementptr i8, i8* %x, i64 2
  %11 = load i8, i8* %scevgep204.2, align 1
  %call.i68.2 = call zeroext i8 @exp4(i8 zeroext %11) #3
  %scevgep205.2 = getelementptr [3 x i8], [3 x i8]* %e4, i64 0, i64 2
  store i8 %call.i68.2, i8* %scevgep205.2, align 1
  %arraydecay6 = getelementptr inbounds [3 x i8], [3 x i8]* %e2, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [3 x i8], [3 x i8]* %e3, i64 0, i64 0
  %call.i77 = call zeroext i8 (...) @rand() #3
  %call1.i = call zeroext i8 (...) @rand() #3
  %conv.i = zext i8 %call.i77 to i32
  %12 = load i8, i8* %x, align 1
  %scevgep200.1 = getelementptr i8, i8* %x, i64 1
  %13 = load i8, i8* %scevgep200.1, align 1
  %conv.i.i.i.1 = zext i8 %13 to i32
  %conv1.i.i.i.1 = zext i8 %12 to i32
  %xor.i.i.i.1 = xor i32 %conv1.i.i.i.1, %conv.i.i.i.1
  %conv2.i.i.i.1 = trunc i32 %xor.i.i.i.1 to i8
  %scevgep200.2 = getelementptr i8, i8* %x, i64 2
  %14 = load i8, i8* %scevgep200.2, align 1
  %conv.i.i.i.2 = zext i8 %14 to i32
  %conv1.i.i.i.2 = zext i8 %conv2.i.i.i.1 to i32
  %xor.i.i.i.2 = xor i32 %conv1.i.i.i.2, %conv.i.i.i.2
  %conv2.i.i.i.2 = trunc i32 %xor.i.i.i.2 to i8
  %conv3.i = zext i8 %conv2.i.i.i.2 to i32
  %cmp.i78 = icmp eq i32 %conv.i, %conv3.i
  call void @assume(i1 zeroext %cmp.i78) #3
  %conv5.i = zext i8 %call1.i to i32
  %scevgep196 = getelementptr [3 x i8], [3 x i8]* %e2, i64 0, i64 0
  %15 = load i8, i8* %scevgep196, align 1
  %scevgep196.1 = getelementptr [3 x i8], [3 x i8]* %e2, i64 0, i64 1
  %16 = load i8, i8* %scevgep196.1, align 1
  %conv.i.i96.i.1 = zext i8 %16 to i32
  %conv1.i.i97.i.1 = zext i8 %15 to i32
  %xor.i.i98.i.1 = xor i32 %conv1.i.i97.i.1, %conv.i.i96.i.1
  %conv2.i.i99.i.1 = trunc i32 %xor.i.i98.i.1 to i8
  %scevgep196.2 = getelementptr [3 x i8], [3 x i8]* %e2, i64 0, i64 2
  %17 = load i8, i8* %scevgep196.2, align 1
  %conv.i.i96.i.2 = zext i8 %17 to i32
  %conv1.i.i97.i.2 = zext i8 %conv2.i.i99.i.1 to i32
  %xor.i.i98.i.2 = xor i32 %conv1.i.i97.i.2, %conv.i.i96.i.2
  %conv2.i.i99.i.2 = trunc i32 %xor.i.i98.i.2 to i8
  %conv7.i = zext i8 %conv2.i.i99.i.2 to i32
  %cmp8.i = icmp eq i32 %conv5.i, %conv7.i
  call void @assume(i1 zeroext %cmp8.i) #3
  %scevgep173 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %scevgep173174 = bitcast i8* %scevgep173 to [3 x [3 x i8]]*
  %scevgep186 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 1, i64 0
  %scevgep186187 = bitcast i8* %scevgep186 to [3 x [3 x i8]]*
  %call16.i = call zeroext i8 (...) @rand() #3
  store i8 %call16.i, i8* %scevgep173, align 1
  %18 = load i8, i8* %scevgep173, align 1
  %conv23.i = zext i8 %18 to i32
  %19 = load i8, i8* %x, align 1
  %scevgep184 = getelementptr [3 x i8], [3 x i8]* %e2, i64 0, i64 1
  %20 = load i8, i8* %scevgep184, align 1
  %call28.i = call zeroext i8 @mult(i8 zeroext %19, i8 zeroext %20) #3
  %conv29.i = zext i8 %call28.i to i32
  %xor.i = xor i32 %conv23.i, %conv29.i
  %scevgep185 = getelementptr i8, i8* %x, i64 1
  %21 = load i8, i8* %scevgep185, align 1
  %22 = load i8, i8* %arraydecay6, align 1
  %call34.i = call zeroext i8 @mult(i8 zeroext %21, i8 zeroext %22) #3
  %conv35.i = zext i8 %call34.i to i32
  %xor36.i = xor i32 %xor.i, %conv35.i
  %conv37.i = trunc i32 %xor36.i to i8
  store i8 %conv37.i, i8* %scevgep186, align 1
  %scevgep178 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep173174, i64 0, i64 0, i64 1
  %scevgep191 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep186187, i64 0, i64 1, i64 0
  %call16.i.1303 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1303, i8* %scevgep178, align 1
  %23 = load i8, i8* %scevgep178, align 1
  %conv23.i.1304 = zext i8 %23 to i32
  %24 = load i8, i8* %x, align 1
  %scevgep184.1305 = getelementptr [3 x i8], [3 x i8]* %e2, i64 0, i64 2
  %25 = load i8, i8* %scevgep184.1305, align 1
  %call28.i.1306 = call zeroext i8 @mult(i8 zeroext %24, i8 zeroext %25) #3
  %conv29.i.1307 = zext i8 %call28.i.1306 to i32
  %xor.i.1308 = xor i32 %conv23.i.1304, %conv29.i.1307
  %scevgep185.1309 = getelementptr i8, i8* %x, i64 2
  %26 = load i8, i8* %scevgep185.1309, align 1
  %27 = load i8, i8* %arraydecay6, align 1
  %call34.i.1310 = call zeroext i8 @mult(i8 zeroext %26, i8 zeroext %27) #3
  %conv35.i.1311 = zext i8 %call34.i.1310 to i32
  %xor36.i.1312 = xor i32 %xor.i.1308, %conv35.i.1311
  %conv37.i.1313 = trunc i32 %xor36.i.1312 to i8
  store i8 %conv37.i.1313, i8* %scevgep191, align 1
  %scevgep176 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep173174, i64 0, i64 1, i64 1
  %scevgep189 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep186187, i64 0, i64 1, i64 1
  %arrayidx25.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %arrayidx33.i.1 = getelementptr inbounds i8, i8* %arraydecay6, i64 1
  %call16.i.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1, i8* %scevgep176, align 1
  %28 = load i8, i8* %scevgep176, align 1
  %conv23.i.1 = zext i8 %28 to i32
  %29 = load i8, i8* %arrayidx25.i.1, align 1
  %scevgep184.1 = getelementptr [3 x i8], [3 x i8]* %e2, i64 0, i64 2
  %30 = load i8, i8* %scevgep184.1, align 1
  %call28.i.1 = call zeroext i8 @mult(i8 zeroext %29, i8 zeroext %30) #3
  %conv29.i.1 = zext i8 %call28.i.1 to i32
  %xor.i.1 = xor i32 %conv23.i.1, %conv29.i.1
  %scevgep185.1 = getelementptr i8, i8* %x, i64 2
  %31 = load i8, i8* %scevgep185.1, align 1
  %32 = load i8, i8* %arrayidx33.i.1, align 1
  %call34.i.1 = call zeroext i8 @mult(i8 zeroext %31, i8 zeroext %32) #3
  %conv35.i.1 = zext i8 %call34.i.1 to i32
  %xor36.i.1 = xor i32 %xor.i.1, %conv35.i.1
  %conv37.i.1 = trunc i32 %xor36.i.1 to i8
  store i8 %conv37.i.1, i8* %scevgep189, align 1
  %33 = load i8, i8* %x, align 1
  %34 = load i8, i8* %arraydecay6, align 1
  %call54.i = call zeroext i8 @mult(i8 zeroext %33, i8 zeroext %34) #3
  store i8 %call54.i, i8* %arraydecay7, align 1
  %scevgep169.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %35 = load i8, i8* %scevgep169.1, align 1
  %conv68.i.1 = zext i8 %35 to i32
  %36 = load i8, i8* %arraydecay7, align 1
  %conv71.i.1 = zext i8 %36 to i32
  %xor72.i.1 = xor i32 %conv71.i.1, %conv68.i.1
  %conv73.i.1 = trunc i32 %xor72.i.1 to i8
  store i8 %conv73.i.1, i8* %arraydecay7, align 1
  %scevgep169.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 2
  %37 = load i8, i8* %scevgep169.2, align 1
  %conv68.i.2 = zext i8 %37 to i32
  %38 = load i8, i8* %arraydecay7, align 1
  %conv71.i.2 = zext i8 %38 to i32
  %xor72.i.2 = xor i32 %conv71.i.2, %conv68.i.2
  %conv73.i.2 = trunc i32 %xor72.i.2 to i8
  store i8 %conv73.i.2, i8* %arraydecay7, align 1
  %scevgep168 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 1, i64 0
  %39 = bitcast i8* %scevgep168 to [3 x [3 x i8]]*
  %arrayidx51.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %40 = load i8, i8* %arrayidx51.i.1, align 1
  %arrayidx53.i.1 = getelementptr inbounds i8, i8* %arraydecay6, i64 1
  %41 = load i8, i8* %arrayidx53.i.1, align 1
  %call54.i.1 = call zeroext i8 @mult(i8 zeroext %40, i8 zeroext %41) #3
  %arrayidx56.i.1 = getelementptr inbounds i8, i8* %arraydecay7, i64 1
  store i8 %call54.i.1, i8* %arrayidx56.i.1, align 1
  %arrayidx70.i.1 = getelementptr inbounds i8, i8* %arraydecay7, i64 1
  %scevgep169.1259 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %39, i64 0, i64 0, i64 0
  %42 = load i8, i8* %scevgep169.1259, align 1
  %conv68.i.1260 = zext i8 %42 to i32
  %43 = load i8, i8* %arrayidx70.i.1, align 1
  %conv71.i.1261 = zext i8 %43 to i32
  %xor72.i.1262 = xor i32 %conv71.i.1261, %conv68.i.1260
  %conv73.i.1263 = trunc i32 %xor72.i.1262 to i8
  store i8 %conv73.i.1263, i8* %arrayidx70.i.1, align 1
  %scevgep169.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %39, i64 0, i64 0, i64 2
  %44 = load i8, i8* %scevgep169.2.1, align 1
  %conv68.i.2.1 = zext i8 %44 to i32
  %45 = load i8, i8* %arrayidx70.i.1, align 1
  %conv71.i.2.1 = zext i8 %45 to i32
  %xor72.i.2.1 = xor i32 %conv71.i.2.1, %conv68.i.2.1
  %conv73.i.2.1 = trunc i32 %xor72.i.2.1 to i8
  store i8 %conv73.i.2.1, i8* %arrayidx70.i.1, align 1
  %scevgep168.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %39, i64 0, i64 1, i64 0
  %46 = bitcast i8* %scevgep168.1 to [3 x [3 x i8]]*
  %arrayidx51.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %47 = load i8, i8* %arrayidx51.i.2, align 1
  %arrayidx53.i.2 = getelementptr inbounds i8, i8* %arraydecay6, i64 2
  %48 = load i8, i8* %arrayidx53.i.2, align 1
  %call54.i.2 = call zeroext i8 @mult(i8 zeroext %47, i8 zeroext %48) #3
  %arrayidx56.i.2 = getelementptr inbounds i8, i8* %arraydecay7, i64 2
  store i8 %call54.i.2, i8* %arrayidx56.i.2, align 1
  %arrayidx70.i.2 = getelementptr inbounds i8, i8* %arraydecay7, i64 2
  %scevgep169.2268 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %46, i64 0, i64 0, i64 0
  %49 = load i8, i8* %scevgep169.2268, align 1
  %conv68.i.2269 = zext i8 %49 to i32
  %50 = load i8, i8* %arrayidx70.i.2, align 1
  %conv71.i.2270 = zext i8 %50 to i32
  %xor72.i.2271 = xor i32 %conv71.i.2270, %conv68.i.2269
  %conv73.i.2272 = trunc i32 %xor72.i.2271 to i8
  store i8 %conv73.i.2272, i8* %arrayidx70.i.2, align 1
  %scevgep169.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %46, i64 0, i64 0, i64 1
  %51 = load i8, i8* %scevgep169.1.2, align 1
  %conv68.i.1.2 = zext i8 %51 to i32
  %52 = load i8, i8* %arrayidx70.i.2, align 1
  %conv71.i.1.2 = zext i8 %52 to i32
  %xor72.i.1.2 = xor i32 %conv71.i.1.2, %conv68.i.1.2
  %conv73.i.1.2 = trunc i32 %xor72.i.1.2 to i8
  store i8 %conv73.i.1.2, i8* %arrayidx70.i.2, align 1
  %call80.i = call zeroext i8 @mult(i8 zeroext %call.i77, i8 zeroext %call1.i) #3
  %conv81.i = zext i8 %call80.i to i32
  %scevgep159 = getelementptr [3 x i8], [3 x i8]* %e3, i64 0, i64 0
  %53 = load i8, i8* %scevgep159, align 1
  %scevgep159.1 = getelementptr [3 x i8], [3 x i8]* %e3, i64 0, i64 1
  %54 = load i8, i8* %scevgep159.1, align 1
  %conv.i.i113.i.1 = zext i8 %54 to i32
  %conv1.i.i114.i.1 = zext i8 %53 to i32
  %xor.i.i115.i.1 = xor i32 %conv1.i.i114.i.1, %conv.i.i113.i.1
  %conv2.i.i116.i.1 = trunc i32 %xor.i.i115.i.1 to i8
  %scevgep159.2 = getelementptr [3 x i8], [3 x i8]* %e3, i64 0, i64 2
  %55 = load i8, i8* %scevgep159.2, align 1
  %conv.i.i113.i.2 = zext i8 %55 to i32
  %conv1.i.i114.i.2 = zext i8 %conv2.i.i116.i.1 to i32
  %xor.i.i115.i.2 = xor i32 %conv1.i.i114.i.2, %conv.i.i113.i.2
  %conv2.i.i116.i.2 = trunc i32 %xor.i.i115.i.2 to i8
  %conv83.i = zext i8 %conv2.i.i116.i.2 to i32
  %cmp84.i = icmp eq i32 %conv81.i, %conv83.i
  call void @assert(i1 zeroext %cmp84.i) #3
  %arraydecay8 = getelementptr inbounds [3 x i8], [3 x i8]* %e4, i64 0, i64 0
  %arraydecay9 = getelementptr inbounds [3 x i8], [3 x i8]* %e5, i64 0, i64 0
  %call.i109 = call zeroext i8 (...) @rand() #3
  %call1.i110 = call zeroext i8 (...) @rand() #3
  %conv.i111 = zext i8 %call.i109 to i32
  %56 = load i8, i8* %x, align 1
  %scevgep155.1 = getelementptr i8, i8* %x, i64 1
  %57 = load i8, i8* %scevgep155.1, align 1
  %conv.i.i.i117.1 = zext i8 %57 to i32
  %conv1.i.i.i118.1 = zext i8 %56 to i32
  %xor.i.i.i119.1 = xor i32 %conv1.i.i.i118.1, %conv.i.i.i117.1
  %conv2.i.i.i120.1 = trunc i32 %xor.i.i.i119.1 to i8
  %scevgep155.2 = getelementptr i8, i8* %x, i64 2
  %58 = load i8, i8* %scevgep155.2, align 1
  %conv.i.i.i117.2 = zext i8 %58 to i32
  %conv1.i.i.i118.2 = zext i8 %conv2.i.i.i120.1 to i32
  %xor.i.i.i119.2 = xor i32 %conv1.i.i.i118.2, %conv.i.i.i117.2
  %conv2.i.i.i120.2 = trunc i32 %xor.i.i.i119.2 to i8
  %conv3.i123 = zext i8 %conv2.i.i.i120.2 to i32
  %cmp.i124 = icmp eq i32 %conv.i111, %conv3.i123
  call void @assume(i1 zeroext %cmp.i124) #3
  %conv5.i125 = zext i8 %call1.i110 to i32
  %scevgep151 = getelementptr [3 x i8], [3 x i8]* %e4, i64 0, i64 0
  %59 = load i8, i8* %scevgep151, align 1
  %scevgep151.1 = getelementptr [3 x i8], [3 x i8]* %e4, i64 0, i64 1
  %60 = load i8, i8* %scevgep151.1, align 1
  %conv.i.i96.i132.1 = zext i8 %60 to i32
  %conv1.i.i97.i133.1 = zext i8 %59 to i32
  %xor.i.i98.i134.1 = xor i32 %conv1.i.i97.i133.1, %conv.i.i96.i132.1
  %conv2.i.i99.i135.1 = trunc i32 %xor.i.i98.i134.1 to i8
  %scevgep151.2 = getelementptr [3 x i8], [3 x i8]* %e4, i64 0, i64 2
  %61 = load i8, i8* %scevgep151.2, align 1
  %conv.i.i96.i132.2 = zext i8 %61 to i32
  %conv1.i.i97.i133.2 = zext i8 %conv2.i.i99.i135.1 to i32
  %xor.i.i98.i134.2 = xor i32 %conv1.i.i97.i133.2, %conv.i.i96.i132.2
  %conv2.i.i99.i135.2 = trunc i32 %xor.i.i98.i134.2 to i8
  %conv7.i138 = zext i8 %conv2.i.i99.i135.2 to i32
  %cmp8.i139 = icmp eq i32 %conv5.i125, %conv7.i138
  call void @assume(i1 zeroext %cmp8.i139) #3
  %scevgep128 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %scevgep128129 = bitcast i8* %scevgep128 to [3 x [3 x i8]]*
  %scevgep141 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 1, i64 0
  %scevgep141142 = bitcast i8* %scevgep141 to [3 x [3 x i8]]*
  %call16.i147 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i147, i8* %scevgep128, align 1
  %62 = load i8, i8* %scevgep128, align 1
  %conv23.i156 = zext i8 %62 to i32
  %63 = load i8, i8* %x, align 1
  %scevgep139 = getelementptr [3 x i8], [3 x i8]* %e4, i64 0, i64 1
  %64 = load i8, i8* %scevgep139, align 1
  %call28.i161 = call zeroext i8 @mult(i8 zeroext %63, i8 zeroext %64) #3
  %conv29.i162 = zext i8 %call28.i161 to i32
  %xor.i163 = xor i32 %conv23.i156, %conv29.i162
  %scevgep140 = getelementptr i8, i8* %x, i64 1
  %65 = load i8, i8* %scevgep140, align 1
  %66 = load i8, i8* %arraydecay8, align 1
  %call34.i168 = call zeroext i8 @mult(i8 zeroext %65, i8 zeroext %66) #3
  %conv35.i169 = zext i8 %call34.i168 to i32
  %xor36.i170 = xor i32 %xor.i163, %conv35.i169
  %conv37.i171 = trunc i32 %xor36.i170 to i8
  store i8 %conv37.i171, i8* %scevgep141, align 1
  %scevgep133 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep128129, i64 0, i64 0, i64 1
  %scevgep146 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep141142, i64 0, i64 1, i64 0
  %call16.i147.1290 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i147.1290, i8* %scevgep133, align 1
  %67 = load i8, i8* %scevgep133, align 1
  %conv23.i156.1291 = zext i8 %67 to i32
  %68 = load i8, i8* %x, align 1
  %scevgep139.1292 = getelementptr [3 x i8], [3 x i8]* %e4, i64 0, i64 2
  %69 = load i8, i8* %scevgep139.1292, align 1
  %call28.i161.1293 = call zeroext i8 @mult(i8 zeroext %68, i8 zeroext %69) #3
  %conv29.i162.1294 = zext i8 %call28.i161.1293 to i32
  %xor.i163.1295 = xor i32 %conv23.i156.1291, %conv29.i162.1294
  %scevgep140.1296 = getelementptr i8, i8* %x, i64 2
  %70 = load i8, i8* %scevgep140.1296, align 1
  %71 = load i8, i8* %arraydecay8, align 1
  %call34.i168.1297 = call zeroext i8 @mult(i8 zeroext %70, i8 zeroext %71) #3
  %conv35.i169.1298 = zext i8 %call34.i168.1297 to i32
  %xor36.i170.1299 = xor i32 %xor.i163.1295, %conv35.i169.1298
  %conv37.i171.1300 = trunc i32 %xor36.i170.1299 to i8
  store i8 %conv37.i171.1300, i8* %scevgep146, align 1
  %scevgep131 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep128129, i64 0, i64 1, i64 1
  %scevgep144 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep141142, i64 0, i64 1, i64 1
  %arrayidx25.i158.1 = getelementptr inbounds i8, i8* %x, i64 1
  %arrayidx33.i167.1 = getelementptr inbounds i8, i8* %arraydecay8, i64 1
  %call16.i147.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i147.1, i8* %scevgep131, align 1
  %72 = load i8, i8* %scevgep131, align 1
  %conv23.i156.1 = zext i8 %72 to i32
  %73 = load i8, i8* %arrayidx25.i158.1, align 1
  %scevgep139.1 = getelementptr [3 x i8], [3 x i8]* %e4, i64 0, i64 2
  %74 = load i8, i8* %scevgep139.1, align 1
  %call28.i161.1 = call zeroext i8 @mult(i8 zeroext %73, i8 zeroext %74) #3
  %conv29.i162.1 = zext i8 %call28.i161.1 to i32
  %xor.i163.1 = xor i32 %conv23.i156.1, %conv29.i162.1
  %scevgep140.1 = getelementptr i8, i8* %x, i64 2
  %75 = load i8, i8* %scevgep140.1, align 1
  %76 = load i8, i8* %arrayidx33.i167.1, align 1
  %call34.i168.1 = call zeroext i8 @mult(i8 zeroext %75, i8 zeroext %76) #3
  %conv35.i169.1 = zext i8 %call34.i168.1 to i32
  %xor36.i170.1 = xor i32 %xor.i163.1, %conv35.i169.1
  %conv37.i171.1 = trunc i32 %xor36.i170.1 to i8
  store i8 %conv37.i171.1, i8* %scevgep144, align 1
  %77 = load i8, i8* %x, align 1
  %78 = load i8, i8* %arraydecay8, align 1
  %call54.i187 = call zeroext i8 @mult(i8 zeroext %77, i8 zeroext %78) #3
  store i8 %call54.i187, i8* %arraydecay9, align 1
  %scevgep124.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %79 = load i8, i8* %scevgep124.1, align 1
  %conv68.i199.1 = zext i8 %79 to i32
  %80 = load i8, i8* %arraydecay9, align 1
  %conv71.i202.1 = zext i8 %80 to i32
  %xor72.i203.1 = xor i32 %conv71.i202.1, %conv68.i199.1
  %conv73.i204.1 = trunc i32 %xor72.i203.1 to i8
  store i8 %conv73.i204.1, i8* %arraydecay9, align 1
  %scevgep124.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 2
  %81 = load i8, i8* %scevgep124.2, align 1
  %conv68.i199.2 = zext i8 %81 to i32
  %82 = load i8, i8* %arraydecay9, align 1
  %conv71.i202.2 = zext i8 %82 to i32
  %xor72.i203.2 = xor i32 %conv71.i202.2, %conv68.i199.2
  %conv73.i204.2 = trunc i32 %xor72.i203.2 to i8
  store i8 %conv73.i204.2, i8* %arraydecay9, align 1
  %scevgep123 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 1, i64 0
  %83 = bitcast i8* %scevgep123 to [3 x [3 x i8]]*
  %arrayidx51.i184.1 = getelementptr inbounds i8, i8* %x, i64 1
  %84 = load i8, i8* %arrayidx51.i184.1, align 1
  %arrayidx53.i186.1 = getelementptr inbounds i8, i8* %arraydecay8, i64 1
  %85 = load i8, i8* %arrayidx53.i186.1, align 1
  %call54.i187.1 = call zeroext i8 @mult(i8 zeroext %84, i8 zeroext %85) #3
  %arrayidx56.i189.1 = getelementptr inbounds i8, i8* %arraydecay9, i64 1
  store i8 %call54.i187.1, i8* %arrayidx56.i189.1, align 1
  %arrayidx70.i201.1 = getelementptr inbounds i8, i8* %arraydecay9, i64 1
  %scevgep124.1241 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %83, i64 0, i64 0, i64 0
  %86 = load i8, i8* %scevgep124.1241, align 1
  %conv68.i199.1242 = zext i8 %86 to i32
  %87 = load i8, i8* %arrayidx70.i201.1, align 1
  %conv71.i202.1243 = zext i8 %87 to i32
  %xor72.i203.1244 = xor i32 %conv71.i202.1243, %conv68.i199.1242
  %conv73.i204.1245 = trunc i32 %xor72.i203.1244 to i8
  store i8 %conv73.i204.1245, i8* %arrayidx70.i201.1, align 1
  %scevgep124.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %83, i64 0, i64 0, i64 2
  %88 = load i8, i8* %scevgep124.2.1, align 1
  %conv68.i199.2.1 = zext i8 %88 to i32
  %89 = load i8, i8* %arrayidx70.i201.1, align 1
  %conv71.i202.2.1 = zext i8 %89 to i32
  %xor72.i203.2.1 = xor i32 %conv71.i202.2.1, %conv68.i199.2.1
  %conv73.i204.2.1 = trunc i32 %xor72.i203.2.1 to i8
  store i8 %conv73.i204.2.1, i8* %arrayidx70.i201.1, align 1
  %scevgep123.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %83, i64 0, i64 1, i64 0
  %90 = bitcast i8* %scevgep123.1 to [3 x [3 x i8]]*
  %arrayidx51.i184.2 = getelementptr inbounds i8, i8* %x, i64 2
  %91 = load i8, i8* %arrayidx51.i184.2, align 1
  %arrayidx53.i186.2 = getelementptr inbounds i8, i8* %arraydecay8, i64 2
  %92 = load i8, i8* %arrayidx53.i186.2, align 1
  %call54.i187.2 = call zeroext i8 @mult(i8 zeroext %91, i8 zeroext %92) #3
  %arrayidx56.i189.2 = getelementptr inbounds i8, i8* %arraydecay9, i64 2
  store i8 %call54.i187.2, i8* %arrayidx56.i189.2, align 1
  %arrayidx70.i201.2 = getelementptr inbounds i8, i8* %arraydecay9, i64 2
  %scevgep124.2250 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %90, i64 0, i64 0, i64 0
  %93 = load i8, i8* %scevgep124.2250, align 1
  %conv68.i199.2251 = zext i8 %93 to i32
  %94 = load i8, i8* %arrayidx70.i201.2, align 1
  %conv71.i202.2252 = zext i8 %94 to i32
  %xor72.i203.2253 = xor i32 %conv71.i202.2252, %conv68.i199.2251
  %conv73.i204.2254 = trunc i32 %xor72.i203.2253 to i8
  store i8 %conv73.i204.2254, i8* %arrayidx70.i201.2, align 1
  %scevgep124.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %90, i64 0, i64 0, i64 1
  %95 = load i8, i8* %scevgep124.1.2, align 1
  %conv68.i199.1.2 = zext i8 %95 to i32
  %96 = load i8, i8* %arrayidx70.i201.2, align 1
  %conv71.i202.1.2 = zext i8 %96 to i32
  %xor72.i203.1.2 = xor i32 %conv71.i202.1.2, %conv68.i199.1.2
  %conv73.i204.1.2 = trunc i32 %xor72.i203.1.2 to i8
  store i8 %conv73.i204.1.2, i8* %arrayidx70.i201.2, align 1
  %call80.i210 = call zeroext i8 @mult(i8 zeroext %call.i109, i8 zeroext %call1.i110) #3
  %conv81.i211 = zext i8 %call80.i210 to i32
  %scevgep114 = getelementptr [3 x i8], [3 x i8]* %e5, i64 0, i64 0
  %97 = load i8, i8* %scevgep114, align 1
  %scevgep114.1 = getelementptr [3 x i8], [3 x i8]* %e5, i64 0, i64 1
  %98 = load i8, i8* %scevgep114.1, align 1
  %conv.i.i113.i218.1 = zext i8 %98 to i32
  %conv1.i.i114.i219.1 = zext i8 %97 to i32
  %xor.i.i115.i220.1 = xor i32 %conv1.i.i114.i219.1, %conv.i.i113.i218.1
  %conv2.i.i116.i221.1 = trunc i32 %xor.i.i115.i220.1 to i8
  %scevgep114.2 = getelementptr [3 x i8], [3 x i8]* %e5, i64 0, i64 2
  %99 = load i8, i8* %scevgep114.2, align 1
  %conv.i.i113.i218.2 = zext i8 %99 to i32
  %conv1.i.i114.i219.2 = zext i8 %conv2.i.i116.i221.1 to i32
  %xor.i.i115.i220.2 = xor i32 %conv1.i.i114.i219.2, %conv.i.i113.i218.2
  %conv2.i.i116.i221.2 = trunc i32 %xor.i.i115.i220.2 to i8
  %conv83.i224 = zext i8 %conv2.i.i116.i221.2 to i32
  %cmp84.i225 = icmp eq i32 %conv81.i211, %conv83.i224
  call void @assert(i1 zeroext %cmp84.i225) #3
  %arraydecay10 = getelementptr inbounds [3 x i8], [3 x i8]* %e3, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [3 x i8], [3 x i8]* %e4, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [3 x i8], [3 x i8]* %e7, i64 0, i64 0
  %call.i252 = call zeroext i8 (...) @rand() #3
  %call1.i253 = call zeroext i8 (...) @rand() #3
  %conv.i254 = zext i8 %call.i252 to i32
  %scevgep110 = getelementptr [3 x i8], [3 x i8]* %e3, i64 0, i64 0
  %100 = load i8, i8* %scevgep110, align 1
  %scevgep110.1 = getelementptr [3 x i8], [3 x i8]* %e3, i64 0, i64 1
  %101 = load i8, i8* %scevgep110.1, align 1
  %conv.i.i.i260.1 = zext i8 %101 to i32
  %conv1.i.i.i261.1 = zext i8 %100 to i32
  %xor.i.i.i262.1 = xor i32 %conv1.i.i.i261.1, %conv.i.i.i260.1
  %conv2.i.i.i263.1 = trunc i32 %xor.i.i.i262.1 to i8
  %scevgep110.2 = getelementptr [3 x i8], [3 x i8]* %e3, i64 0, i64 2
  %102 = load i8, i8* %scevgep110.2, align 1
  %conv.i.i.i260.2 = zext i8 %102 to i32
  %conv1.i.i.i261.2 = zext i8 %conv2.i.i.i263.1 to i32
  %xor.i.i.i262.2 = xor i32 %conv1.i.i.i261.2, %conv.i.i.i260.2
  %conv2.i.i.i263.2 = trunc i32 %xor.i.i.i262.2 to i8
  %conv3.i266 = zext i8 %conv2.i.i.i263.2 to i32
  %cmp.i267 = icmp eq i32 %conv.i254, %conv3.i266
  call void @assume(i1 zeroext %cmp.i267) #3
  %conv5.i268 = zext i8 %call1.i253 to i32
  %scevgep106 = getelementptr [3 x i8], [3 x i8]* %e4, i64 0, i64 0
  %103 = load i8, i8* %scevgep106, align 1
  %scevgep106.1 = getelementptr [3 x i8], [3 x i8]* %e4, i64 0, i64 1
  %104 = load i8, i8* %scevgep106.1, align 1
  %conv.i.i96.i275.1 = zext i8 %104 to i32
  %conv1.i.i97.i276.1 = zext i8 %103 to i32
  %xor.i.i98.i277.1 = xor i32 %conv1.i.i97.i276.1, %conv.i.i96.i275.1
  %conv2.i.i99.i278.1 = trunc i32 %xor.i.i98.i277.1 to i8
  %scevgep106.2 = getelementptr [3 x i8], [3 x i8]* %e4, i64 0, i64 2
  %105 = load i8, i8* %scevgep106.2, align 1
  %conv.i.i96.i275.2 = zext i8 %105 to i32
  %conv1.i.i97.i276.2 = zext i8 %conv2.i.i99.i278.1 to i32
  %xor.i.i98.i277.2 = xor i32 %conv1.i.i97.i276.2, %conv.i.i96.i275.2
  %conv2.i.i99.i278.2 = trunc i32 %xor.i.i98.i277.2 to i8
  %conv7.i281 = zext i8 %conv2.i.i99.i278.2 to i32
  %cmp8.i282 = icmp eq i32 %conv5.i268, %conv7.i281
  call void @assume(i1 zeroext %cmp8.i282) #3
  %scevgep83 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %scevgep8384 = bitcast i8* %scevgep83 to [3 x [3 x i8]]*
  %scevgep96 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 1, i64 0
  %scevgep9697 = bitcast i8* %scevgep96 to [3 x [3 x i8]]*
  %call16.i290 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i290, i8* %scevgep83, align 1
  %106 = load i8, i8* %scevgep83, align 1
  %conv23.i299 = zext i8 %106 to i32
  %107 = load i8, i8* %arraydecay10, align 1
  %scevgep94 = getelementptr [3 x i8], [3 x i8]* %e4, i64 0, i64 1
  %108 = load i8, i8* %scevgep94, align 1
  %call28.i304 = call zeroext i8 @mult(i8 zeroext %107, i8 zeroext %108) #3
  %conv29.i305 = zext i8 %call28.i304 to i32
  %xor.i306 = xor i32 %conv23.i299, %conv29.i305
  %scevgep95 = getelementptr [3 x i8], [3 x i8]* %e3, i64 0, i64 1
  %109 = load i8, i8* %scevgep95, align 1
  %110 = load i8, i8* %arraydecay11, align 1
  %call34.i311 = call zeroext i8 @mult(i8 zeroext %109, i8 zeroext %110) #3
  %conv35.i312 = zext i8 %call34.i311 to i32
  %xor36.i313 = xor i32 %xor.i306, %conv35.i312
  %conv37.i314 = trunc i32 %xor36.i313 to i8
  store i8 %conv37.i314, i8* %scevgep96, align 1
  %scevgep88 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep8384, i64 0, i64 0, i64 1
  %scevgep101 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep9697, i64 0, i64 1, i64 0
  %call16.i290.1277 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i290.1277, i8* %scevgep88, align 1
  %111 = load i8, i8* %scevgep88, align 1
  %conv23.i299.1278 = zext i8 %111 to i32
  %112 = load i8, i8* %arraydecay10, align 1
  %scevgep94.1279 = getelementptr [3 x i8], [3 x i8]* %e4, i64 0, i64 2
  %113 = load i8, i8* %scevgep94.1279, align 1
  %call28.i304.1280 = call zeroext i8 @mult(i8 zeroext %112, i8 zeroext %113) #3
  %conv29.i305.1281 = zext i8 %call28.i304.1280 to i32
  %xor.i306.1282 = xor i32 %conv23.i299.1278, %conv29.i305.1281
  %scevgep95.1283 = getelementptr [3 x i8], [3 x i8]* %e3, i64 0, i64 2
  %114 = load i8, i8* %scevgep95.1283, align 1
  %115 = load i8, i8* %arraydecay11, align 1
  %call34.i311.1284 = call zeroext i8 @mult(i8 zeroext %114, i8 zeroext %115) #3
  %conv35.i312.1285 = zext i8 %call34.i311.1284 to i32
  %xor36.i313.1286 = xor i32 %xor.i306.1282, %conv35.i312.1285
  %conv37.i314.1287 = trunc i32 %xor36.i313.1286 to i8
  store i8 %conv37.i314.1287, i8* %scevgep101, align 1
  %scevgep86 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep8384, i64 0, i64 1, i64 1
  %scevgep99 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep9697, i64 0, i64 1, i64 1
  %arrayidx25.i301.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %arrayidx33.i310.1 = getelementptr inbounds i8, i8* %arraydecay11, i64 1
  %call16.i290.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i290.1, i8* %scevgep86, align 1
  %116 = load i8, i8* %scevgep86, align 1
  %conv23.i299.1 = zext i8 %116 to i32
  %117 = load i8, i8* %arrayidx25.i301.1, align 1
  %scevgep94.1 = getelementptr [3 x i8], [3 x i8]* %e4, i64 0, i64 2
  %118 = load i8, i8* %scevgep94.1, align 1
  %call28.i304.1 = call zeroext i8 @mult(i8 zeroext %117, i8 zeroext %118) #3
  %conv29.i305.1 = zext i8 %call28.i304.1 to i32
  %xor.i306.1 = xor i32 %conv23.i299.1, %conv29.i305.1
  %scevgep95.1 = getelementptr [3 x i8], [3 x i8]* %e3, i64 0, i64 2
  %119 = load i8, i8* %scevgep95.1, align 1
  %120 = load i8, i8* %arrayidx33.i310.1, align 1
  %call34.i311.1 = call zeroext i8 @mult(i8 zeroext %119, i8 zeroext %120) #3
  %conv35.i312.1 = zext i8 %call34.i311.1 to i32
  %xor36.i313.1 = xor i32 %xor.i306.1, %conv35.i312.1
  %conv37.i314.1 = trunc i32 %xor36.i313.1 to i8
  store i8 %conv37.i314.1, i8* %scevgep99, align 1
  %121 = load i8, i8* %arraydecay10, align 1
  %122 = load i8, i8* %arraydecay11, align 1
  %call54.i330 = call zeroext i8 @mult(i8 zeroext %121, i8 zeroext %122) #3
  store i8 %call54.i330, i8* %arraydecay12, align 1
  %scevgep80.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %123 = load i8, i8* %scevgep80.1, align 1
  %conv68.i342.1 = zext i8 %123 to i32
  %124 = load i8, i8* %arraydecay12, align 1
  %conv71.i345.1 = zext i8 %124 to i32
  %xor72.i346.1 = xor i32 %conv71.i345.1, %conv68.i342.1
  %conv73.i347.1 = trunc i32 %xor72.i346.1 to i8
  store i8 %conv73.i347.1, i8* %arraydecay12, align 1
  %scevgep80.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 2
  %125 = load i8, i8* %scevgep80.2, align 1
  %conv68.i342.2 = zext i8 %125 to i32
  %126 = load i8, i8* %arraydecay12, align 1
  %conv71.i345.2 = zext i8 %126 to i32
  %xor72.i346.2 = xor i32 %conv71.i345.2, %conv68.i342.2
  %conv73.i347.2 = trunc i32 %xor72.i346.2 to i8
  store i8 %conv73.i347.2, i8* %arraydecay12, align 1
  %scevgep79 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 1, i64 0
  %127 = bitcast i8* %scevgep79 to [3 x [3 x i8]]*
  %arrayidx51.i327.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %128 = load i8, i8* %arrayidx51.i327.1, align 1
  %arrayidx53.i329.1 = getelementptr inbounds i8, i8* %arraydecay11, i64 1
  %129 = load i8, i8* %arrayidx53.i329.1, align 1
  %call54.i330.1 = call zeroext i8 @mult(i8 zeroext %128, i8 zeroext %129) #3
  %arrayidx56.i332.1 = getelementptr inbounds i8, i8* %arraydecay12, i64 1
  store i8 %call54.i330.1, i8* %arrayidx56.i332.1, align 1
  %arrayidx70.i344.1 = getelementptr inbounds i8, i8* %arraydecay12, i64 1
  %scevgep80.1223 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %127, i64 0, i64 0, i64 0
  %130 = load i8, i8* %scevgep80.1223, align 1
  %conv68.i342.1224 = zext i8 %130 to i32
  %131 = load i8, i8* %arrayidx70.i344.1, align 1
  %conv71.i345.1225 = zext i8 %131 to i32
  %xor72.i346.1226 = xor i32 %conv71.i345.1225, %conv68.i342.1224
  %conv73.i347.1227 = trunc i32 %xor72.i346.1226 to i8
  store i8 %conv73.i347.1227, i8* %arrayidx70.i344.1, align 1
  %scevgep80.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %127, i64 0, i64 0, i64 2
  %132 = load i8, i8* %scevgep80.2.1, align 1
  %conv68.i342.2.1 = zext i8 %132 to i32
  %133 = load i8, i8* %arrayidx70.i344.1, align 1
  %conv71.i345.2.1 = zext i8 %133 to i32
  %xor72.i346.2.1 = xor i32 %conv71.i345.2.1, %conv68.i342.2.1
  %conv73.i347.2.1 = trunc i32 %xor72.i346.2.1 to i8
  store i8 %conv73.i347.2.1, i8* %arrayidx70.i344.1, align 1
  %scevgep79.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %127, i64 0, i64 1, i64 0
  %134 = bitcast i8* %scevgep79.1 to [3 x [3 x i8]]*
  %arrayidx51.i327.2 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  %135 = load i8, i8* %arrayidx51.i327.2, align 1
  %arrayidx53.i329.2 = getelementptr inbounds i8, i8* %arraydecay11, i64 2
  %136 = load i8, i8* %arrayidx53.i329.2, align 1
  %call54.i330.2 = call zeroext i8 @mult(i8 zeroext %135, i8 zeroext %136) #3
  %arrayidx56.i332.2 = getelementptr inbounds i8, i8* %arraydecay12, i64 2
  store i8 %call54.i330.2, i8* %arrayidx56.i332.2, align 1
  %arrayidx70.i344.2 = getelementptr inbounds i8, i8* %arraydecay12, i64 2
  %scevgep80.2232 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %134, i64 0, i64 0, i64 0
  %137 = load i8, i8* %scevgep80.2232, align 1
  %conv68.i342.2233 = zext i8 %137 to i32
  %138 = load i8, i8* %arrayidx70.i344.2, align 1
  %conv71.i345.2234 = zext i8 %138 to i32
  %xor72.i346.2235 = xor i32 %conv71.i345.2234, %conv68.i342.2233
  %conv73.i347.2236 = trunc i32 %xor72.i346.2235 to i8
  store i8 %conv73.i347.2236, i8* %arrayidx70.i344.2, align 1
  %scevgep80.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %134, i64 0, i64 0, i64 1
  %139 = load i8, i8* %scevgep80.1.2, align 1
  %conv68.i342.1.2 = zext i8 %139 to i32
  %140 = load i8, i8* %arrayidx70.i344.2, align 1
  %conv71.i345.1.2 = zext i8 %140 to i32
  %xor72.i346.1.2 = xor i32 %conv71.i345.1.2, %conv68.i342.1.2
  %conv73.i347.1.2 = trunc i32 %xor72.i346.1.2 to i8
  store i8 %conv73.i347.1.2, i8* %arrayidx70.i344.2, align 1
  %call80.i353 = call zeroext i8 @mult(i8 zeroext %call.i252, i8 zeroext %call1.i253) #3
  %conv81.i354 = zext i8 %call80.i353 to i32
  %scevgep70 = getelementptr [3 x i8], [3 x i8]* %e7, i64 0, i64 0
  %141 = load i8, i8* %scevgep70, align 1
  %scevgep70.1 = getelementptr [3 x i8], [3 x i8]* %e7, i64 0, i64 1
  %142 = load i8, i8* %scevgep70.1, align 1
  %conv.i.i113.i361.1 = zext i8 %142 to i32
  %conv1.i.i114.i362.1 = zext i8 %141 to i32
  %xor.i.i115.i363.1 = xor i32 %conv1.i.i114.i362.1, %conv.i.i113.i361.1
  %conv2.i.i116.i364.1 = trunc i32 %xor.i.i115.i363.1 to i8
  %scevgep70.2 = getelementptr [3 x i8], [3 x i8]* %e7, i64 0, i64 2
  %143 = load i8, i8* %scevgep70.2, align 1
  %conv.i.i113.i361.2 = zext i8 %143 to i32
  %conv1.i.i114.i362.2 = zext i8 %conv2.i.i116.i364.1 to i32
  %xor.i.i115.i363.2 = xor i32 %conv1.i.i114.i362.2, %conv.i.i113.i361.2
  %conv2.i.i116.i364.2 = trunc i32 %xor.i.i115.i363.2 to i8
  %conv83.i367 = zext i8 %conv2.i.i116.i364.2 to i32
  %cmp84.i368 = icmp eq i32 %conv81.i354, %conv83.i367
  call void @assert(i1 zeroext %cmp84.i368) #3
  %scevgep65 = getelementptr [3 x i8], [3 x i8]* %e3, i64 0, i64 0
  %144 = load i8, i8* %scevgep65, align 1
  %call.i378 = call zeroext i8 @L3(i8 zeroext %144) #3
  %scevgep66 = getelementptr [3 x i8], [3 x i8]* %l3, i64 0, i64 0
  store i8 %call.i378, i8* %scevgep66, align 1
  %scevgep65.1 = getelementptr [3 x i8], [3 x i8]* %e3, i64 0, i64 1
  %145 = load i8, i8* %scevgep65.1, align 1
  %call.i378.1 = call zeroext i8 @L3(i8 zeroext %145) #3
  %scevgep66.1 = getelementptr [3 x i8], [3 x i8]* %l3, i64 0, i64 1
  store i8 %call.i378.1, i8* %scevgep66.1, align 1
  %scevgep65.2 = getelementptr [3 x i8], [3 x i8]* %e3, i64 0, i64 2
  %146 = load i8, i8* %scevgep65.2, align 1
  %call.i378.2 = call zeroext i8 @L3(i8 zeroext %146) #3
  %scevgep66.2 = getelementptr [3 x i8], [3 x i8]* %l3, i64 0, i64 2
  store i8 %call.i378.2, i8* %scevgep66.2, align 1
  %scevgep60 = getelementptr [3 x i8], [3 x i8]* %e5, i64 0, i64 0
  %147 = load i8, i8* %scevgep60, align 1
  %call.i393 = call zeroext i8 @L5(i8 zeroext %147) #3
  %scevgep61 = getelementptr [3 x i8], [3 x i8]* %l5, i64 0, i64 0
  store i8 %call.i393, i8* %scevgep61, align 1
  %scevgep60.1 = getelementptr [3 x i8], [3 x i8]* %e5, i64 0, i64 1
  %148 = load i8, i8* %scevgep60.1, align 1
  %call.i393.1 = call zeroext i8 @L5(i8 zeroext %148) #3
  %scevgep61.1 = getelementptr [3 x i8], [3 x i8]* %l5, i64 0, i64 1
  store i8 %call.i393.1, i8* %scevgep61.1, align 1
  %scevgep60.2 = getelementptr [3 x i8], [3 x i8]* %e5, i64 0, i64 2
  %149 = load i8, i8* %scevgep60.2, align 1
  %call.i393.2 = call zeroext i8 @L5(i8 zeroext %149) #3
  %scevgep61.2 = getelementptr [3 x i8], [3 x i8]* %l5, i64 0, i64 2
  store i8 %call.i393.2, i8* %scevgep61.2, align 1
  %scevgep55 = getelementptr [3 x i8], [3 x i8]* %e7, i64 0, i64 0
  %150 = load i8, i8* %scevgep55, align 1
  %call.i408 = call zeroext i8 @L7(i8 zeroext %150) #3
  %scevgep56 = getelementptr [3 x i8], [3 x i8]* %l7, i64 0, i64 0
  store i8 %call.i408, i8* %scevgep56, align 1
  %scevgep55.1 = getelementptr [3 x i8], [3 x i8]* %e7, i64 0, i64 1
  %151 = load i8, i8* %scevgep55.1, align 1
  %call.i408.1 = call zeroext i8 @L7(i8 zeroext %151) #3
  %scevgep56.1 = getelementptr [3 x i8], [3 x i8]* %l7, i64 0, i64 1
  store i8 %call.i408.1, i8* %scevgep56.1, align 1
  %scevgep55.2 = getelementptr [3 x i8], [3 x i8]* %e7, i64 0, i64 2
  %152 = load i8, i8* %scevgep55.2, align 1
  %call.i408.2 = call zeroext i8 @L7(i8 zeroext %152) #3
  %scevgep56.2 = getelementptr [3 x i8], [3 x i8]* %l7, i64 0, i64 2
  store i8 %call.i408.2, i8* %scevgep56.2, align 1
  %scevgep47 = getelementptr [3 x i8], [3 x i8]* %l1, i64 0, i64 0
  %153 = load i8, i8* %scevgep47, align 1
  %conv21 = zext i8 %153 to i32
  %scevgep48 = getelementptr [3 x i8], [3 x i8]* %l3, i64 0, i64 0
  %154 = load i8, i8* %scevgep48, align 1
  %conv24 = zext i8 %154 to i32
  %xor = xor i32 %conv21, %conv24
  %scevgep49 = getelementptr [3 x i8], [3 x i8]* %l5, i64 0, i64 0
  %155 = load i8, i8* %scevgep49, align 1
  %conv27 = zext i8 %155 to i32
  %xor28 = xor i32 %xor, %conv27
  %scevgep50 = getelementptr [3 x i8], [3 x i8]* %l7, i64 0, i64 0
  %156 = load i8, i8* %scevgep50, align 1
  %conv31 = zext i8 %156 to i32
  %xor32 = xor i32 %xor28, %conv31
  %conv33 = trunc i32 %xor32 to i8
  store i8 %conv33, i8* %y, align 1
  %scevgep47.1 = getelementptr [3 x i8], [3 x i8]* %l1, i64 0, i64 1
  %157 = load i8, i8* %scevgep47.1, align 1
  %conv21.1 = zext i8 %157 to i32
  %scevgep48.1 = getelementptr [3 x i8], [3 x i8]* %l3, i64 0, i64 1
  %158 = load i8, i8* %scevgep48.1, align 1
  %conv24.1 = zext i8 %158 to i32
  %xor.1 = xor i32 %conv21.1, %conv24.1
  %scevgep49.1 = getelementptr [3 x i8], [3 x i8]* %l5, i64 0, i64 1
  %159 = load i8, i8* %scevgep49.1, align 1
  %conv27.1 = zext i8 %159 to i32
  %xor28.1 = xor i32 %xor.1, %conv27.1
  %scevgep50.1 = getelementptr [3 x i8], [3 x i8]* %l7, i64 0, i64 1
  %160 = load i8, i8* %scevgep50.1, align 1
  %conv31.1 = zext i8 %160 to i32
  %xor32.1 = xor i32 %xor28.1, %conv31.1
  %conv33.1 = trunc i32 %xor32.1 to i8
  %scevgep51.1 = getelementptr i8, i8* %y, i64 1
  store i8 %conv33.1, i8* %scevgep51.1, align 1
  %scevgep47.2 = getelementptr [3 x i8], [3 x i8]* %l1, i64 0, i64 2
  %161 = load i8, i8* %scevgep47.2, align 1
  %conv21.2 = zext i8 %161 to i32
  %scevgep48.2 = getelementptr [3 x i8], [3 x i8]* %l3, i64 0, i64 2
  %162 = load i8, i8* %scevgep48.2, align 1
  %conv24.2 = zext i8 %162 to i32
  %xor.2 = xor i32 %conv21.2, %conv24.2
  %scevgep49.2 = getelementptr [3 x i8], [3 x i8]* %l5, i64 0, i64 2
  %163 = load i8, i8* %scevgep49.2, align 1
  %conv27.2 = zext i8 %163 to i32
  %xor28.2 = xor i32 %xor.2, %conv27.2
  %scevgep50.2 = getelementptr [3 x i8], [3 x i8]* %l7, i64 0, i64 2
  %164 = load i8, i8* %scevgep50.2, align 1
  %conv31.2 = zext i8 %164 to i32
  %xor32.2 = xor i32 %xor28.2, %conv31.2
  %conv33.2 = trunc i32 %xor32.2 to i8
  %scevgep51.2 = getelementptr i8, i8* %y, i64 2
  store i8 %conv33.2, i8* %scevgep51.2, align 1
  %165 = load i8, i8* %y, align 1
  %conv37 = zext i8 %165 to i32
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
  %166 = load i8, i8* %y, align 1
  %scevgep.1 = getelementptr i8, i8* %y, i64 1
  %167 = load i8, i8* %scevgep.1, align 1
  %conv.i.i432.1 = zext i8 %167 to i32
  %conv1.i.i433.1 = zext i8 %166 to i32
  %xor.i.i434.1 = xor i32 %conv1.i.i433.1, %conv.i.i432.1
  %conv2.i.i435.1 = trunc i32 %xor.i.i434.1 to i8
  %scevgep.2 = getelementptr i8, i8* %y, i64 2
  %168 = load i8, i8* %scevgep.2, align 1
  %conv.i.i432.2 = zext i8 %168 to i32
  %conv1.i.i433.2 = zext i8 %conv2.i.i435.1 to i32
  %xor.i.i434.2 = xor i32 %conv1.i.i433.2, %conv.i.i432.2
  %conv2.i.i435.2 = trunc i32 %xor.i.i434.2 to i8
  %conv43 = zext i8 %conv2.i.i435.2 to i32
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
