; ModuleID = '../examples/rivain-ches2010-present-sbox.inline-3.ll'
source_filename = "../examples/rivain-ches2010-present-sbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 3, align 4
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
  ret i8 %conv2.3
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
  ret i8 %conv2.i.3
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_mult(i8* %a, i8* %b, i8* %c) #0 {
entry:
  %r = alloca [4 x [4 x i8]], align 16
  %call = call zeroext i8 (...) @rand()
  %call1 = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %a, align 1
  %scevgep47.1 = getelementptr i8, i8* %a, i64 1
  %1 = load i8, i8* %scevgep47.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep47.2 = getelementptr i8, i8* %a, i64 2
  %2 = load i8, i8* %scevgep47.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %scevgep47.3 = getelementptr i8, i8* %a, i64 3
  %3 = load i8, i8* %scevgep47.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %conv3 = zext i8 %conv2.i.i.3 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %4 = load i8, i8* %b, align 1
  %scevgep43.1 = getelementptr i8, i8* %b, i64 1
  %5 = load i8, i8* %scevgep43.1, align 1
  %conv.i.i96.1 = zext i8 %5 to i32
  %conv1.i.i97.1 = zext i8 %4 to i32
  %xor.i.i98.1 = xor i32 %conv1.i.i97.1, %conv.i.i96.1
  %conv2.i.i99.1 = trunc i32 %xor.i.i98.1 to i8
  %scevgep43.2 = getelementptr i8, i8* %b, i64 2
  %6 = load i8, i8* %scevgep43.2, align 1
  %conv.i.i96.2 = zext i8 %6 to i32
  %conv1.i.i97.2 = zext i8 %conv2.i.i99.1 to i32
  %xor.i.i98.2 = xor i32 %conv1.i.i97.2, %conv.i.i96.2
  %conv2.i.i99.2 = trunc i32 %xor.i.i98.2 to i8
  %scevgep43.3 = getelementptr i8, i8* %b, i64 3
  %7 = load i8, i8* %scevgep43.3, align 1
  %conv.i.i96.3 = zext i8 %7 to i32
  %conv1.i.i97.3 = zext i8 %conv2.i.i99.2 to i32
  %xor.i.i98.3 = xor i32 %conv1.i.i97.3, %conv.i.i96.3
  %conv2.i.i99.3 = trunc i32 %xor.i.i98.3 to i8
  %conv7 = zext i8 %conv2.i.i99.3 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %call16 = call zeroext i8 (...) @rand()
  %scevgep27 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 1
  store i8 %call16, i8* %scevgep27, align 1
  %scevgep28 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 1
  %8 = load i8, i8* %scevgep28, align 1
  %conv23 = zext i8 %8 to i32
  %9 = load i8, i8* %a, align 1
  %scevgep31 = getelementptr i8, i8* %b, i64 1
  %10 = load i8, i8* %scevgep31, align 1
  %call28 = call zeroext i8 @mult(i8 zeroext %9, i8 zeroext %10)
  %conv29 = zext i8 %call28 to i32
  %xor = xor i32 %conv23, %conv29
  %scevgep34 = getelementptr i8, i8* %a, i64 1
  %11 = load i8, i8* %scevgep34, align 1
  %12 = load i8, i8* %b, align 1
  %call34 = call zeroext i8 @mult(i8 zeroext %11, i8 zeroext %12)
  %conv35 = zext i8 %call34 to i32
  %xor36 = xor i32 %xor, %conv35
  %conv37 = trunc i32 %xor36 to i8
  %scevgep35 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 1, i64 0
  store i8 %conv37, i8* %scevgep35, align 1
  %call16.179 = call zeroext i8 (...) @rand()
  %scevgep27.180 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 2
  store i8 %call16.179, i8* %scevgep27.180, align 1
  %scevgep28.181 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 2
  %13 = load i8, i8* %scevgep28.181, align 1
  %conv23.182 = zext i8 %13 to i32
  %14 = load i8, i8* %a, align 1
  %scevgep31.183 = getelementptr i8, i8* %b, i64 2
  %15 = load i8, i8* %scevgep31.183, align 1
  %call28.184 = call zeroext i8 @mult(i8 zeroext %14, i8 zeroext %15)
  %conv29.185 = zext i8 %call28.184 to i32
  %xor.186 = xor i32 %conv23.182, %conv29.185
  %scevgep34.187 = getelementptr i8, i8* %a, i64 2
  %16 = load i8, i8* %scevgep34.187, align 1
  %17 = load i8, i8* %b, align 1
  %call34.188 = call zeroext i8 @mult(i8 zeroext %16, i8 zeroext %17)
  %conv35.189 = zext i8 %call34.188 to i32
  %xor36.190 = xor i32 %xor.186, %conv35.189
  %conv37.191 = trunc i32 %xor36.190 to i8
  %scevgep35.192 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 2, i64 0
  store i8 %conv37.191, i8* %scevgep35.192, align 1
  %call16.294 = call zeroext i8 (...) @rand()
  %scevgep27.295 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 3
  store i8 %call16.294, i8* %scevgep27.295, align 1
  %scevgep28.296 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 3
  %18 = load i8, i8* %scevgep28.296, align 1
  %conv23.297 = zext i8 %18 to i32
  %19 = load i8, i8* %a, align 1
  %scevgep31.298 = getelementptr i8, i8* %b, i64 3
  %20 = load i8, i8* %scevgep31.298, align 1
  %call28.299 = call zeroext i8 @mult(i8 zeroext %19, i8 zeroext %20)
  %conv29.2100 = zext i8 %call28.299 to i32
  %xor.2101 = xor i32 %conv23.297, %conv29.2100
  %scevgep34.2102 = getelementptr i8, i8* %a, i64 3
  %21 = load i8, i8* %scevgep34.2102, align 1
  %22 = load i8, i8* %b, align 1
  %call34.2103 = call zeroext i8 @mult(i8 zeroext %21, i8 zeroext %22)
  %conv35.2104 = zext i8 %call34.2103 to i32
  %xor36.2105 = xor i32 %xor.2101, %conv35.2104
  %conv37.2106 = trunc i32 %xor36.2105 to i8
  %scevgep35.2107 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 3, i64 0
  store i8 %conv37.2106, i8* %scevgep35.2107, align 1
  %scevgep24 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 1, i64 1
  %23 = bitcast i8* %scevgep24 to [4 x [4 x i8]]*
  %scevgep30 = getelementptr i8, i8* %b, i64 1
  %scevgep33 = getelementptr i8, i8* %a, i64 1
  %arrayidx25.1 = getelementptr inbounds i8, i8* %a, i64 1
  %arrayidx33.1 = getelementptr inbounds i8, i8* %b, i64 1
  %call16.1 = call zeroext i8 (...) @rand()
  %scevgep27.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %23, i64 0, i64 0, i64 1
  store i8 %call16.1, i8* %scevgep27.1, align 1
  %scevgep28.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %23, i64 0, i64 0, i64 1
  %24 = load i8, i8* %scevgep28.1, align 1
  %conv23.1 = zext i8 %24 to i32
  %25 = load i8, i8* %arrayidx25.1, align 1
  %scevgep31.1 = getelementptr i8, i8* %scevgep30, i64 1
  %26 = load i8, i8* %scevgep31.1, align 1
  %call28.1 = call zeroext i8 @mult(i8 zeroext %25, i8 zeroext %26)
  %conv29.1 = zext i8 %call28.1 to i32
  %xor.1 = xor i32 %conv23.1, %conv29.1
  %scevgep34.1 = getelementptr i8, i8* %scevgep33, i64 1
  %27 = load i8, i8* %scevgep34.1, align 1
  %28 = load i8, i8* %arrayidx33.1, align 1
  %call34.1 = call zeroext i8 @mult(i8 zeroext %27, i8 zeroext %28)
  %conv35.1 = zext i8 %call34.1 to i32
  %xor36.1 = xor i32 %xor.1, %conv35.1
  %conv37.1 = trunc i32 %xor36.1 to i8
  %scevgep35.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %23, i64 0, i64 1, i64 0
  store i8 %conv37.1, i8* %scevgep35.1, align 1
  %call16.1.1 = call zeroext i8 (...) @rand()
  %scevgep27.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %23, i64 0, i64 0, i64 2
  store i8 %call16.1.1, i8* %scevgep27.1.1, align 1
  %scevgep28.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %23, i64 0, i64 0, i64 2
  %29 = load i8, i8* %scevgep28.1.1, align 1
  %conv23.1.1 = zext i8 %29 to i32
  %30 = load i8, i8* %arrayidx25.1, align 1
  %scevgep31.1.1 = getelementptr i8, i8* %scevgep30, i64 2
  %31 = load i8, i8* %scevgep31.1.1, align 1
  %call28.1.1 = call zeroext i8 @mult(i8 zeroext %30, i8 zeroext %31)
  %conv29.1.1 = zext i8 %call28.1.1 to i32
  %xor.1.1 = xor i32 %conv23.1.1, %conv29.1.1
  %scevgep34.1.1 = getelementptr i8, i8* %scevgep33, i64 2
  %32 = load i8, i8* %scevgep34.1.1, align 1
  %33 = load i8, i8* %arrayidx33.1, align 1
  %call34.1.1 = call zeroext i8 @mult(i8 zeroext %32, i8 zeroext %33)
  %conv35.1.1 = zext i8 %call34.1.1 to i32
  %xor36.1.1 = xor i32 %xor.1.1, %conv35.1.1
  %conv37.1.1 = trunc i32 %xor36.1.1 to i8
  %scevgep35.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %23, i64 0, i64 2, i64 0
  store i8 %conv37.1.1, i8* %scevgep35.1.1, align 1
  %scevgep24.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %23, i64 0, i64 1, i64 1
  %34 = bitcast i8* %scevgep24.1 to [4 x [4 x i8]]*
  %scevgep30.1 = getelementptr i8, i8* %scevgep30, i64 1
  %scevgep33.1 = getelementptr i8, i8* %scevgep33, i64 1
  %arrayidx25.2 = getelementptr inbounds i8, i8* %a, i64 2
  %arrayidx33.2 = getelementptr inbounds i8, i8* %b, i64 2
  %call16.2 = call zeroext i8 (...) @rand()
  %scevgep27.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %34, i64 0, i64 0, i64 1
  store i8 %call16.2, i8* %scevgep27.2, align 1
  %scevgep28.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %34, i64 0, i64 0, i64 1
  %35 = load i8, i8* %scevgep28.2, align 1
  %conv23.2 = zext i8 %35 to i32
  %36 = load i8, i8* %arrayidx25.2, align 1
  %scevgep31.2 = getelementptr i8, i8* %scevgep30.1, i64 1
  %37 = load i8, i8* %scevgep31.2, align 1
  %call28.2 = call zeroext i8 @mult(i8 zeroext %36, i8 zeroext %37)
  %conv29.2 = zext i8 %call28.2 to i32
  %xor.2 = xor i32 %conv23.2, %conv29.2
  %scevgep34.2 = getelementptr i8, i8* %scevgep33.1, i64 1
  %38 = load i8, i8* %scevgep34.2, align 1
  %39 = load i8, i8* %arrayidx33.2, align 1
  %call34.2 = call zeroext i8 @mult(i8 zeroext %38, i8 zeroext %39)
  %conv35.2 = zext i8 %call34.2 to i32
  %xor36.2 = xor i32 %xor.2, %conv35.2
  %conv37.2 = trunc i32 %xor36.2 to i8
  %scevgep35.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %34, i64 0, i64 1, i64 0
  store i8 %conv37.2, i8* %scevgep35.2, align 1
  %40 = load i8, i8* %a, align 1
  %41 = load i8, i8* %b, align 1
  %call54 = call zeroext i8 @mult(i8 zeroext %40, i8 zeroext %41)
  store i8 %call54, i8* %c, align 1
  %scevgep20.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 1
  %42 = load i8, i8* %scevgep20.1, align 1
  %conv68.1 = zext i8 %42 to i32
  %43 = load i8, i8* %c, align 1
  %conv71.1 = zext i8 %43 to i32
  %xor72.1 = xor i32 %conv71.1, %conv68.1
  %conv73.1 = trunc i32 %xor72.1 to i8
  store i8 %conv73.1, i8* %c, align 1
  %scevgep20.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 2
  %44 = load i8, i8* %scevgep20.2, align 1
  %conv68.2 = zext i8 %44 to i32
  %45 = load i8, i8* %c, align 1
  %conv71.2 = zext i8 %45 to i32
  %xor72.2 = xor i32 %conv71.2, %conv68.2
  %conv73.2 = trunc i32 %xor72.2 to i8
  store i8 %conv73.2, i8* %c, align 1
  %scevgep20.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 3
  %46 = load i8, i8* %scevgep20.3, align 1
  %conv68.3 = zext i8 %46 to i32
  %47 = load i8, i8* %c, align 1
  %conv71.3 = zext i8 %47 to i32
  %xor72.3 = xor i32 %conv71.3, %conv68.3
  %conv73.3 = trunc i32 %xor72.3 to i8
  store i8 %conv73.3, i8* %c, align 1
  %scevgep19 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 1, i64 0
  %48 = bitcast i8* %scevgep19 to [4 x [4 x i8]]*
  %arrayidx51.1 = getelementptr inbounds i8, i8* %a, i64 1
  %49 = load i8, i8* %arrayidx51.1, align 1
  %arrayidx53.1 = getelementptr inbounds i8, i8* %b, i64 1
  %50 = load i8, i8* %arrayidx53.1, align 1
  %call54.1 = call zeroext i8 @mult(i8 zeroext %49, i8 zeroext %50)
  %arrayidx56.1 = getelementptr inbounds i8, i8* %c, i64 1
  store i8 %call54.1, i8* %arrayidx56.1, align 1
  %arrayidx70.1 = getelementptr inbounds i8, i8* %c, i64 1
  %scevgep20.151 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %48, i64 0, i64 0, i64 0
  %51 = load i8, i8* %scevgep20.151, align 1
  %conv68.152 = zext i8 %51 to i32
  %52 = load i8, i8* %arrayidx70.1, align 1
  %conv71.153 = zext i8 %52 to i32
  %xor72.154 = xor i32 %conv71.153, %conv68.152
  %conv73.155 = trunc i32 %xor72.154 to i8
  store i8 %conv73.155, i8* %arrayidx70.1, align 1
  %scevgep20.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %48, i64 0, i64 0, i64 2
  %53 = load i8, i8* %scevgep20.2.1, align 1
  %conv68.2.1 = zext i8 %53 to i32
  %54 = load i8, i8* %arrayidx70.1, align 1
  %conv71.2.1 = zext i8 %54 to i32
  %xor72.2.1 = xor i32 %conv71.2.1, %conv68.2.1
  %conv73.2.1 = trunc i32 %xor72.2.1 to i8
  store i8 %conv73.2.1, i8* %arrayidx70.1, align 1
  %scevgep20.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %48, i64 0, i64 0, i64 3
  %55 = load i8, i8* %scevgep20.3.1, align 1
  %conv68.3.1 = zext i8 %55 to i32
  %56 = load i8, i8* %arrayidx70.1, align 1
  %conv71.3.1 = zext i8 %56 to i32
  %xor72.3.1 = xor i32 %conv71.3.1, %conv68.3.1
  %conv73.3.1 = trunc i32 %xor72.3.1 to i8
  store i8 %conv73.3.1, i8* %arrayidx70.1, align 1
  %scevgep19.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %48, i64 0, i64 1, i64 0
  %57 = bitcast i8* %scevgep19.1 to [4 x [4 x i8]]*
  %arrayidx51.2 = getelementptr inbounds i8, i8* %a, i64 2
  %58 = load i8, i8* %arrayidx51.2, align 1
  %arrayidx53.2 = getelementptr inbounds i8, i8* %b, i64 2
  %59 = load i8, i8* %arrayidx53.2, align 1
  %call54.2 = call zeroext i8 @mult(i8 zeroext %58, i8 zeroext %59)
  %arrayidx56.2 = getelementptr inbounds i8, i8* %c, i64 2
  store i8 %call54.2, i8* %arrayidx56.2, align 1
  %arrayidx70.2 = getelementptr inbounds i8, i8* %c, i64 2
  %scevgep20.261 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %57, i64 0, i64 0, i64 0
  %60 = load i8, i8* %scevgep20.261, align 1
  %conv68.262 = zext i8 %60 to i32
  %61 = load i8, i8* %arrayidx70.2, align 1
  %conv71.263 = zext i8 %61 to i32
  %xor72.264 = xor i32 %conv71.263, %conv68.262
  %conv73.265 = trunc i32 %xor72.264 to i8
  store i8 %conv73.265, i8* %arrayidx70.2, align 1
  %scevgep20.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %57, i64 0, i64 0, i64 1
  %62 = load i8, i8* %scevgep20.1.2, align 1
  %conv68.1.2 = zext i8 %62 to i32
  %63 = load i8, i8* %arrayidx70.2, align 1
  %conv71.1.2 = zext i8 %63 to i32
  %xor72.1.2 = xor i32 %conv71.1.2, %conv68.1.2
  %conv73.1.2 = trunc i32 %xor72.1.2 to i8
  store i8 %conv73.1.2, i8* %arrayidx70.2, align 1
  %scevgep20.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %57, i64 0, i64 0, i64 3
  %64 = load i8, i8* %scevgep20.3.2, align 1
  %conv68.3.2 = zext i8 %64 to i32
  %65 = load i8, i8* %arrayidx70.2, align 1
  %conv71.3.2 = zext i8 %65 to i32
  %xor72.3.2 = xor i32 %conv71.3.2, %conv68.3.2
  %conv73.3.2 = trunc i32 %xor72.3.2 to i8
  store i8 %conv73.3.2, i8* %arrayidx70.2, align 1
  %scevgep19.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %57, i64 0, i64 1, i64 0
  %66 = bitcast i8* %scevgep19.2 to [4 x [4 x i8]]*
  %arrayidx51.3 = getelementptr inbounds i8, i8* %a, i64 3
  %67 = load i8, i8* %arrayidx51.3, align 1
  %arrayidx53.3 = getelementptr inbounds i8, i8* %b, i64 3
  %68 = load i8, i8* %arrayidx53.3, align 1
  %call54.3 = call zeroext i8 @mult(i8 zeroext %67, i8 zeroext %68)
  %arrayidx56.3 = getelementptr inbounds i8, i8* %c, i64 3
  store i8 %call54.3, i8* %arrayidx56.3, align 1
  %arrayidx70.3 = getelementptr inbounds i8, i8* %c, i64 3
  %scevgep20.371 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %66, i64 0, i64 0, i64 0
  %69 = load i8, i8* %scevgep20.371, align 1
  %conv68.372 = zext i8 %69 to i32
  %70 = load i8, i8* %arrayidx70.3, align 1
  %conv71.373 = zext i8 %70 to i32
  %xor72.374 = xor i32 %conv71.373, %conv68.372
  %conv73.375 = trunc i32 %xor72.374 to i8
  store i8 %conv73.375, i8* %arrayidx70.3, align 1
  %scevgep20.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %66, i64 0, i64 0, i64 1
  %71 = load i8, i8* %scevgep20.1.3, align 1
  %conv68.1.3 = zext i8 %71 to i32
  %72 = load i8, i8* %arrayidx70.3, align 1
  %conv71.1.3 = zext i8 %72 to i32
  %xor72.1.3 = xor i32 %conv71.1.3, %conv68.1.3
  %conv73.1.3 = trunc i32 %xor72.1.3 to i8
  store i8 %conv73.1.3, i8* %arrayidx70.3, align 1
  %scevgep20.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %66, i64 0, i64 0, i64 2
  %73 = load i8, i8* %scevgep20.2.3, align 1
  %conv68.2.3 = zext i8 %73 to i32
  %74 = load i8, i8* %arrayidx70.3, align 1
  %conv71.2.3 = zext i8 %74 to i32
  %xor72.2.3 = xor i32 %conv71.2.3, %conv68.2.3
  %conv73.2.3 = trunc i32 %xor72.2.3 to i8
  store i8 %conv73.2.3, i8* %arrayidx70.3, align 1
  %call80 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv81 = zext i8 %call80 to i32
  %75 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %76 = load i8, i8* %scevgep.1, align 1
  %conv.i.i113.1 = zext i8 %76 to i32
  %conv1.i.i114.1 = zext i8 %75 to i32
  %xor.i.i115.1 = xor i32 %conv1.i.i114.1, %conv.i.i113.1
  %conv2.i.i116.1 = trunc i32 %xor.i.i115.1 to i8
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  %77 = load i8, i8* %scevgep.2, align 1
  %conv.i.i113.2 = zext i8 %77 to i32
  %conv1.i.i114.2 = zext i8 %conv2.i.i116.1 to i32
  %xor.i.i115.2 = xor i32 %conv1.i.i114.2, %conv.i.i113.2
  %conv2.i.i116.2 = trunc i32 %xor.i.i115.2 to i8
  %scevgep.3 = getelementptr i8, i8* %c, i64 3
  %78 = load i8, i8* %scevgep.3, align 1
  %conv.i.i113.3 = zext i8 %78 to i32
  %conv1.i.i114.3 = zext i8 %conv2.i.i116.2 to i32
  %xor.i.i115.3 = xor i32 %conv1.i.i114.3, %conv.i.i113.3
  %conv2.i.i116.3 = trunc i32 %xor.i.i115.3 to i8
  %conv83 = zext i8 %conv2.i.i116.3 to i32
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
  %conv2 = zext i8 %conv2.i.i.3 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %call7 = call zeroext i8 (...) @rand()
  %conv8 = zext i8 %call7 to i32
  %4 = load i8, i8* %x, align 1
  %conv9 = zext i8 %4 to i32
  %xor = xor i32 %conv9, %conv8
  %conv10 = trunc i32 %xor to i8
  store i8 %conv10, i8* %x, align 1
  %conv11 = zext i8 %call7 to i32
  %scevgep8 = getelementptr i8, i8* %x, i64 1
  %5 = load i8, i8* %scevgep8, align 1
  %conv13 = zext i8 %5 to i32
  %xor14 = xor i32 %conv13, %conv11
  %conv15 = trunc i32 %xor14 to i8
  store i8 %conv15, i8* %scevgep8, align 1
  %call7.1 = call zeroext i8 (...) @rand()
  %conv8.1 = zext i8 %call7.1 to i32
  %6 = load i8, i8* %x, align 1
  %conv9.1 = zext i8 %6 to i32
  %xor.1 = xor i32 %conv9.1, %conv8.1
  %conv10.1 = trunc i32 %xor.1 to i8
  store i8 %conv10.1, i8* %x, align 1
  %conv11.1 = zext i8 %call7.1 to i32
  %scevgep8.1 = getelementptr i8, i8* %x, i64 2
  %7 = load i8, i8* %scevgep8.1, align 1
  %conv13.1 = zext i8 %7 to i32
  %xor14.1 = xor i32 %conv13.1, %conv11.1
  %conv15.1 = trunc i32 %xor14.1 to i8
  store i8 %conv15.1, i8* %scevgep8.1, align 1
  %call7.2 = call zeroext i8 (...) @rand()
  %conv8.2 = zext i8 %call7.2 to i32
  %8 = load i8, i8* %x, align 1
  %conv9.2 = zext i8 %8 to i32
  %xor.2 = xor i32 %conv9.2, %conv8.2
  %conv10.2 = trunc i32 %xor.2 to i8
  store i8 %conv10.2, i8* %x, align 1
  %conv11.2 = zext i8 %call7.2 to i32
  %scevgep8.2 = getelementptr i8, i8* %x, i64 3
  %9 = load i8, i8* %scevgep8.2, align 1
  %conv13.2 = zext i8 %9 to i32
  %xor14.2 = xor i32 %conv13.2, %conv11.2
  %conv15.2 = trunc i32 %xor14.2 to i8
  store i8 %conv15.2, i8* %scevgep8.2, align 1
  %conv16 = zext i8 %call to i32
  %10 = load i8, i8* %x, align 1
  %scevgep.1 = getelementptr i8, i8* %x, i64 1
  %11 = load i8, i8* %scevgep.1, align 1
  %conv.i.i31.1 = zext i8 %11 to i32
  %conv1.i.i32.1 = zext i8 %10 to i32
  %xor.i.i33.1 = xor i32 %conv1.i.i32.1, %conv.i.i31.1
  %conv2.i.i34.1 = trunc i32 %xor.i.i33.1 to i8
  %scevgep.2 = getelementptr i8, i8* %x, i64 2
  %12 = load i8, i8* %scevgep.2, align 1
  %conv.i.i31.2 = zext i8 %12 to i32
  %conv1.i.i32.2 = zext i8 %conv2.i.i34.1 to i32
  %xor.i.i33.2 = xor i32 %conv1.i.i32.2, %conv.i.i31.2
  %conv2.i.i34.2 = trunc i32 %xor.i.i33.2 to i8
  %scevgep.3 = getelementptr i8, i8* %x, i64 3
  %13 = load i8, i8* %scevgep.3, align 1
  %conv.i.i31.3 = zext i8 %13 to i32
  %conv1.i.i32.3 = zext i8 %conv2.i.i34.2 to i32
  %xor.i.i33.3 = xor i32 %conv1.i.i32.3, %conv.i.i31.3
  %conv2.i.i34.3 = trunc i32 %xor.i.i33.3 to i8
  %conv18 = zext i8 %conv2.i.i34.3 to i32
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
  %r.i = alloca [4 x [4 x i8]], align 16
  %l1 = alloca [4 x i8], align 1
  %l3 = alloca [4 x i8], align 1
  %l5 = alloca [4 x i8], align 1
  %l7 = alloca [4 x i8], align 1
  %e2 = alloca [4 x i8], align 1
  %e3 = alloca [4 x i8], align 1
  %e4 = alloca [4 x i8], align 1
  %e5 = alloca [4 x i8], align 1
  %e7 = alloca [4 x i8], align 1
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %scevgep210.1 = getelementptr i8, i8* %x, i64 1
  %1 = load i8, i8* %scevgep210.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep210.2 = getelementptr i8, i8* %x, i64 2
  %2 = load i8, i8* %scevgep210.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %scevgep210.3 = getelementptr i8, i8* %x, i64 3
  %3 = load i8, i8* %scevgep210.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %conv2 = zext i8 %conv2.i.i.3 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %4 = load i8, i8* %x, align 1
  %call.i = call zeroext i8 @L1(i8 zeroext %4) #3
  %scevgep206 = getelementptr [4 x i8], [4 x i8]* %l1, i64 0, i64 0
  store i8 %call.i, i8* %scevgep206, align 1
  %scevgep205.1 = getelementptr i8, i8* %x, i64 1
  %5 = load i8, i8* %scevgep205.1, align 1
  %call.i.1 = call zeroext i8 @L1(i8 zeroext %5) #3
  %scevgep206.1 = getelementptr [4 x i8], [4 x i8]* %l1, i64 0, i64 1
  store i8 %call.i.1, i8* %scevgep206.1, align 1
  %scevgep205.2 = getelementptr i8, i8* %x, i64 2
  %6 = load i8, i8* %scevgep205.2, align 1
  %call.i.2 = call zeroext i8 @L1(i8 zeroext %6) #3
  %scevgep206.2 = getelementptr [4 x i8], [4 x i8]* %l1, i64 0, i64 2
  store i8 %call.i.2, i8* %scevgep206.2, align 1
  %scevgep205.3 = getelementptr i8, i8* %x, i64 3
  %7 = load i8, i8* %scevgep205.3, align 1
  %call.i.3 = call zeroext i8 @L1(i8 zeroext %7) #3
  %scevgep206.3 = getelementptr [4 x i8], [4 x i8]* %l1, i64 0, i64 3
  store i8 %call.i.3, i8* %scevgep206.3, align 1
  %8 = load i8, i8* %x, align 1
  %call.i54 = call zeroext i8 @square(i8 zeroext %8) #3
  %scevgep201 = getelementptr [4 x i8], [4 x i8]* %e2, i64 0, i64 0
  store i8 %call.i54, i8* %scevgep201, align 1
  %scevgep200.1 = getelementptr i8, i8* %x, i64 1
  %9 = load i8, i8* %scevgep200.1, align 1
  %call.i54.1 = call zeroext i8 @square(i8 zeroext %9) #3
  %scevgep201.1 = getelementptr [4 x i8], [4 x i8]* %e2, i64 0, i64 1
  store i8 %call.i54.1, i8* %scevgep201.1, align 1
  %scevgep200.2 = getelementptr i8, i8* %x, i64 2
  %10 = load i8, i8* %scevgep200.2, align 1
  %call.i54.2 = call zeroext i8 @square(i8 zeroext %10) #3
  %scevgep201.2 = getelementptr [4 x i8], [4 x i8]* %e2, i64 0, i64 2
  store i8 %call.i54.2, i8* %scevgep201.2, align 1
  %scevgep200.3 = getelementptr i8, i8* %x, i64 3
  %11 = load i8, i8* %scevgep200.3, align 1
  %call.i54.3 = call zeroext i8 @square(i8 zeroext %11) #3
  %scevgep201.3 = getelementptr [4 x i8], [4 x i8]* %e2, i64 0, i64 3
  store i8 %call.i54.3, i8* %scevgep201.3, align 1
  %12 = load i8, i8* %x, align 1
  %call.i68 = call zeroext i8 @exp4(i8 zeroext %12) #3
  %scevgep196 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 0
  store i8 %call.i68, i8* %scevgep196, align 1
  %scevgep195.1 = getelementptr i8, i8* %x, i64 1
  %13 = load i8, i8* %scevgep195.1, align 1
  %call.i68.1 = call zeroext i8 @exp4(i8 zeroext %13) #3
  %scevgep196.1 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 1
  store i8 %call.i68.1, i8* %scevgep196.1, align 1
  %scevgep195.2 = getelementptr i8, i8* %x, i64 2
  %14 = load i8, i8* %scevgep195.2, align 1
  %call.i68.2 = call zeroext i8 @exp4(i8 zeroext %14) #3
  %scevgep196.2 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 2
  store i8 %call.i68.2, i8* %scevgep196.2, align 1
  %scevgep195.3 = getelementptr i8, i8* %x, i64 3
  %15 = load i8, i8* %scevgep195.3, align 1
  %call.i68.3 = call zeroext i8 @exp4(i8 zeroext %15) #3
  %scevgep196.3 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 3
  store i8 %call.i68.3, i8* %scevgep196.3, align 1
  %arraydecay6 = getelementptr inbounds [4 x i8], [4 x i8]* %e2, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [4 x i8], [4 x i8]* %e3, i64 0, i64 0
  %call.i77 = call zeroext i8 (...) @rand() #3
  %call1.i = call zeroext i8 (...) @rand() #3
  %conv.i = zext i8 %call.i77 to i32
  %16 = load i8, i8* %x, align 1
  %scevgep191.1 = getelementptr i8, i8* %x, i64 1
  %17 = load i8, i8* %scevgep191.1, align 1
  %conv.i.i.i.1 = zext i8 %17 to i32
  %conv1.i.i.i.1 = zext i8 %16 to i32
  %xor.i.i.i.1 = xor i32 %conv1.i.i.i.1, %conv.i.i.i.1
  %conv2.i.i.i.1 = trunc i32 %xor.i.i.i.1 to i8
  %scevgep191.2 = getelementptr i8, i8* %x, i64 2
  %18 = load i8, i8* %scevgep191.2, align 1
  %conv.i.i.i.2 = zext i8 %18 to i32
  %conv1.i.i.i.2 = zext i8 %conv2.i.i.i.1 to i32
  %xor.i.i.i.2 = xor i32 %conv1.i.i.i.2, %conv.i.i.i.2
  %conv2.i.i.i.2 = trunc i32 %xor.i.i.i.2 to i8
  %scevgep191.3 = getelementptr i8, i8* %x, i64 3
  %19 = load i8, i8* %scevgep191.3, align 1
  %conv.i.i.i.3 = zext i8 %19 to i32
  %conv1.i.i.i.3 = zext i8 %conv2.i.i.i.2 to i32
  %xor.i.i.i.3 = xor i32 %conv1.i.i.i.3, %conv.i.i.i.3
  %conv2.i.i.i.3 = trunc i32 %xor.i.i.i.3 to i8
  %conv3.i = zext i8 %conv2.i.i.i.3 to i32
  %cmp.i78 = icmp eq i32 %conv.i, %conv3.i
  call void @assume(i1 zeroext %cmp.i78) #3
  %conv5.i = zext i8 %call1.i to i32
  %scevgep187 = getelementptr [4 x i8], [4 x i8]* %e2, i64 0, i64 0
  %20 = load i8, i8* %scevgep187, align 1
  %scevgep187.1 = getelementptr [4 x i8], [4 x i8]* %e2, i64 0, i64 1
  %21 = load i8, i8* %scevgep187.1, align 1
  %conv.i.i96.i.1 = zext i8 %21 to i32
  %conv1.i.i97.i.1 = zext i8 %20 to i32
  %xor.i.i98.i.1 = xor i32 %conv1.i.i97.i.1, %conv.i.i96.i.1
  %conv2.i.i99.i.1 = trunc i32 %xor.i.i98.i.1 to i8
  %scevgep187.2 = getelementptr [4 x i8], [4 x i8]* %e2, i64 0, i64 2
  %22 = load i8, i8* %scevgep187.2, align 1
  %conv.i.i96.i.2 = zext i8 %22 to i32
  %conv1.i.i97.i.2 = zext i8 %conv2.i.i99.i.1 to i32
  %xor.i.i98.i.2 = xor i32 %conv1.i.i97.i.2, %conv.i.i96.i.2
  %conv2.i.i99.i.2 = trunc i32 %xor.i.i98.i.2 to i8
  %scevgep187.3 = getelementptr [4 x i8], [4 x i8]* %e2, i64 0, i64 3
  %23 = load i8, i8* %scevgep187.3, align 1
  %conv.i.i96.i.3 = zext i8 %23 to i32
  %conv1.i.i97.i.3 = zext i8 %conv2.i.i99.i.2 to i32
  %xor.i.i98.i.3 = xor i32 %conv1.i.i97.i.3, %conv.i.i96.i.3
  %conv2.i.i99.i.3 = trunc i32 %xor.i.i98.i.3 to i8
  %conv7.i = zext i8 %conv2.i.i99.i.3 to i32
  %cmp8.i = icmp eq i32 %conv5.i, %conv7.i
  call void @assume(i1 zeroext %cmp8.i) #3
  %call16.i = call zeroext i8 (...) @rand() #3
  %scevgep171 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i, i8* %scevgep171, align 1
  %scevgep172 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %24 = load i8, i8* %scevgep172, align 1
  %conv23.i = zext i8 %24 to i32
  %25 = load i8, i8* %x, align 1
  %scevgep175 = getelementptr [4 x i8], [4 x i8]* %e2, i64 0, i64 1
  %26 = load i8, i8* %scevgep175, align 1
  %call28.i = call zeroext i8 @mult(i8 zeroext %25, i8 zeroext %26) #3
  %conv29.i = zext i8 %call28.i to i32
  %xor.i = xor i32 %conv23.i, %conv29.i
  %scevgep178 = getelementptr i8, i8* %x, i64 1
  %27 = load i8, i8* %scevgep178, align 1
  %28 = load i8, i8* %arraydecay6, align 1
  %call34.i = call zeroext i8 @mult(i8 zeroext %27, i8 zeroext %28) #3
  %conv35.i = zext i8 %call34.i to i32
  %xor36.i = xor i32 %xor.i, %conv35.i
  %conv37.i = trunc i32 %xor36.i to i8
  %scevgep179 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %conv37.i, i8* %scevgep179, align 1
  %call16.i.1351 = call zeroext i8 (...) @rand() #3
  %scevgep171.1352 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  store i8 %call16.i.1351, i8* %scevgep171.1352, align 1
  %scevgep172.1353 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %29 = load i8, i8* %scevgep172.1353, align 1
  %conv23.i.1354 = zext i8 %29 to i32
  %30 = load i8, i8* %x, align 1
  %scevgep175.1355 = getelementptr [4 x i8], [4 x i8]* %e2, i64 0, i64 2
  %31 = load i8, i8* %scevgep175.1355, align 1
  %call28.i.1356 = call zeroext i8 @mult(i8 zeroext %30, i8 zeroext %31) #3
  %conv29.i.1357 = zext i8 %call28.i.1356 to i32
  %xor.i.1358 = xor i32 %conv23.i.1354, %conv29.i.1357
  %scevgep178.1359 = getelementptr i8, i8* %x, i64 2
  %32 = load i8, i8* %scevgep178.1359, align 1
  %33 = load i8, i8* %arraydecay6, align 1
  %call34.i.1360 = call zeroext i8 @mult(i8 zeroext %32, i8 zeroext %33) #3
  %conv35.i.1361 = zext i8 %call34.i.1360 to i32
  %xor36.i.1362 = xor i32 %xor.i.1358, %conv35.i.1361
  %conv37.i.1363 = trunc i32 %xor36.i.1362 to i8
  %scevgep179.1364 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 2, i64 0
  store i8 %conv37.i.1363, i8* %scevgep179.1364, align 1
  %call16.i.2366 = call zeroext i8 (...) @rand() #3
  %scevgep171.2367 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  store i8 %call16.i.2366, i8* %scevgep171.2367, align 1
  %scevgep172.2368 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %34 = load i8, i8* %scevgep172.2368, align 1
  %conv23.i.2369 = zext i8 %34 to i32
  %35 = load i8, i8* %x, align 1
  %scevgep175.2370 = getelementptr [4 x i8], [4 x i8]* %e2, i64 0, i64 3
  %36 = load i8, i8* %scevgep175.2370, align 1
  %call28.i.2371 = call zeroext i8 @mult(i8 zeroext %35, i8 zeroext %36) #3
  %conv29.i.2372 = zext i8 %call28.i.2371 to i32
  %xor.i.2373 = xor i32 %conv23.i.2369, %conv29.i.2372
  %scevgep178.2374 = getelementptr i8, i8* %x, i64 3
  %37 = load i8, i8* %scevgep178.2374, align 1
  %38 = load i8, i8* %arraydecay6, align 1
  %call34.i.2375 = call zeroext i8 @mult(i8 zeroext %37, i8 zeroext %38) #3
  %conv35.i.2376 = zext i8 %call34.i.2375 to i32
  %xor36.i.2377 = xor i32 %xor.i.2373, %conv35.i.2376
  %conv37.i.2378 = trunc i32 %xor36.i.2377 to i8
  %scevgep179.2379 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 3, i64 0
  store i8 %conv37.i.2378, i8* %scevgep179.2379, align 1
  %scevgep168 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 1
  %39 = bitcast i8* %scevgep168 to [4 x [4 x i8]]*
  %scevgep174 = getelementptr [4 x i8], [4 x i8]* %e2, i64 0, i64 1
  %40 = bitcast i8* %scevgep174 to [4 x i8]*
  %scevgep177 = getelementptr i8, i8* %x, i64 1
  %arrayidx25.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %arrayidx33.i.1 = getelementptr inbounds i8, i8* %arraydecay6, i64 1
  %call16.i.1 = call zeroext i8 (...) @rand() #3
  %scevgep171.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %39, i64 0, i64 0, i64 1
  store i8 %call16.i.1, i8* %scevgep171.1, align 1
  %scevgep172.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %39, i64 0, i64 0, i64 1
  %41 = load i8, i8* %scevgep172.1, align 1
  %conv23.i.1 = zext i8 %41 to i32
  %42 = load i8, i8* %arrayidx25.i.1, align 1
  %scevgep175.1 = getelementptr [4 x i8], [4 x i8]* %40, i64 0, i64 1
  %43 = load i8, i8* %scevgep175.1, align 1
  %call28.i.1 = call zeroext i8 @mult(i8 zeroext %42, i8 zeroext %43) #3
  %conv29.i.1 = zext i8 %call28.i.1 to i32
  %xor.i.1 = xor i32 %conv23.i.1, %conv29.i.1
  %scevgep178.1 = getelementptr i8, i8* %scevgep177, i64 1
  %44 = load i8, i8* %scevgep178.1, align 1
  %45 = load i8, i8* %arrayidx33.i.1, align 1
  %call34.i.1 = call zeroext i8 @mult(i8 zeroext %44, i8 zeroext %45) #3
  %conv35.i.1 = zext i8 %call34.i.1 to i32
  %xor36.i.1 = xor i32 %xor.i.1, %conv35.i.1
  %conv37.i.1 = trunc i32 %xor36.i.1 to i8
  %scevgep179.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %39, i64 0, i64 1, i64 0
  store i8 %conv37.i.1, i8* %scevgep179.1, align 1
  %call16.i.1.1 = call zeroext i8 (...) @rand() #3
  %scevgep171.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %39, i64 0, i64 0, i64 2
  store i8 %call16.i.1.1, i8* %scevgep171.1.1, align 1
  %scevgep172.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %39, i64 0, i64 0, i64 2
  %46 = load i8, i8* %scevgep172.1.1, align 1
  %conv23.i.1.1 = zext i8 %46 to i32
  %47 = load i8, i8* %arrayidx25.i.1, align 1
  %scevgep175.1.1 = getelementptr [4 x i8], [4 x i8]* %40, i64 0, i64 2
  %48 = load i8, i8* %scevgep175.1.1, align 1
  %call28.i.1.1 = call zeroext i8 @mult(i8 zeroext %47, i8 zeroext %48) #3
  %conv29.i.1.1 = zext i8 %call28.i.1.1 to i32
  %xor.i.1.1 = xor i32 %conv23.i.1.1, %conv29.i.1.1
  %scevgep178.1.1 = getelementptr i8, i8* %scevgep177, i64 2
  %49 = load i8, i8* %scevgep178.1.1, align 1
  %50 = load i8, i8* %arrayidx33.i.1, align 1
  %call34.i.1.1 = call zeroext i8 @mult(i8 zeroext %49, i8 zeroext %50) #3
  %conv35.i.1.1 = zext i8 %call34.i.1.1 to i32
  %xor36.i.1.1 = xor i32 %xor.i.1.1, %conv35.i.1.1
  %conv37.i.1.1 = trunc i32 %xor36.i.1.1 to i8
  %scevgep179.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %39, i64 0, i64 2, i64 0
  store i8 %conv37.i.1.1, i8* %scevgep179.1.1, align 1
  %scevgep168.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %39, i64 0, i64 1, i64 1
  %51 = bitcast i8* %scevgep168.1 to [4 x [4 x i8]]*
  %scevgep174.1 = getelementptr [4 x i8], [4 x i8]* %40, i64 0, i64 1
  %52 = bitcast i8* %scevgep174.1 to [4 x i8]*
  %scevgep177.1 = getelementptr i8, i8* %scevgep177, i64 1
  %arrayidx25.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %arrayidx33.i.2 = getelementptr inbounds i8, i8* %arraydecay6, i64 2
  %call16.i.2 = call zeroext i8 (...) @rand() #3
  %scevgep171.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %51, i64 0, i64 0, i64 1
  store i8 %call16.i.2, i8* %scevgep171.2, align 1
  %scevgep172.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %51, i64 0, i64 0, i64 1
  %53 = load i8, i8* %scevgep172.2, align 1
  %conv23.i.2 = zext i8 %53 to i32
  %54 = load i8, i8* %arrayidx25.i.2, align 1
  %scevgep175.2 = getelementptr [4 x i8], [4 x i8]* %52, i64 0, i64 1
  %55 = load i8, i8* %scevgep175.2, align 1
  %call28.i.2 = call zeroext i8 @mult(i8 zeroext %54, i8 zeroext %55) #3
  %conv29.i.2 = zext i8 %call28.i.2 to i32
  %xor.i.2 = xor i32 %conv23.i.2, %conv29.i.2
  %scevgep178.2 = getelementptr i8, i8* %scevgep177.1, i64 1
  %56 = load i8, i8* %scevgep178.2, align 1
  %57 = load i8, i8* %arrayidx33.i.2, align 1
  %call34.i.2 = call zeroext i8 @mult(i8 zeroext %56, i8 zeroext %57) #3
  %conv35.i.2 = zext i8 %call34.i.2 to i32
  %xor36.i.2 = xor i32 %xor.i.2, %conv35.i.2
  %conv37.i.2 = trunc i32 %xor36.i.2 to i8
  %scevgep179.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %51, i64 0, i64 1, i64 0
  store i8 %conv37.i.2, i8* %scevgep179.2, align 1
  %58 = load i8, i8* %x, align 1
  %59 = load i8, i8* %arraydecay6, align 1
  %call54.i = call zeroext i8 @mult(i8 zeroext %58, i8 zeroext %59) #3
  store i8 %call54.i, i8* %arraydecay7, align 1
  %scevgep163.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %60 = load i8, i8* %scevgep163.1, align 1
  %conv68.i.1 = zext i8 %60 to i32
  %61 = load i8, i8* %arraydecay7, align 1
  %conv71.i.1 = zext i8 %61 to i32
  %xor72.i.1 = xor i32 %conv71.i.1, %conv68.i.1
  %conv73.i.1 = trunc i32 %xor72.i.1 to i8
  store i8 %conv73.i.1, i8* %arraydecay7, align 1
  %scevgep163.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %62 = load i8, i8* %scevgep163.2, align 1
  %conv68.i.2 = zext i8 %62 to i32
  %63 = load i8, i8* %arraydecay7, align 1
  %conv71.i.2 = zext i8 %63 to i32
  %xor72.i.2 = xor i32 %conv71.i.2, %conv68.i.2
  %conv73.i.2 = trunc i32 %xor72.i.2 to i8
  store i8 %conv73.i.2, i8* %arraydecay7, align 1
  %scevgep163.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %64 = load i8, i8* %scevgep163.3, align 1
  %conv68.i.3 = zext i8 %64 to i32
  %65 = load i8, i8* %arraydecay7, align 1
  %conv71.i.3 = zext i8 %65 to i32
  %xor72.i.3 = xor i32 %conv71.i.3, %conv68.i.3
  %conv73.i.3 = trunc i32 %xor72.i.3 to i8
  store i8 %conv73.i.3, i8* %arraydecay7, align 1
  %scevgep162 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  %66 = bitcast i8* %scevgep162 to [4 x [4 x i8]]*
  %arrayidx51.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %67 = load i8, i8* %arrayidx51.i.1, align 1
  %arrayidx53.i.1 = getelementptr inbounds i8, i8* %arraydecay6, i64 1
  %68 = load i8, i8* %arrayidx53.i.1, align 1
  %call54.i.1 = call zeroext i8 @mult(i8 zeroext %67, i8 zeroext %68) #3
  %arrayidx56.i.1 = getelementptr inbounds i8, i8* %arraydecay7, i64 1
  store i8 %call54.i.1, i8* %arrayidx56.i.1, align 1
  %arrayidx70.i.1 = getelementptr inbounds i8, i8* %arraydecay7, i64 1
  %scevgep163.1268 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %66, i64 0, i64 0, i64 0
  %69 = load i8, i8* %scevgep163.1268, align 1
  %conv68.i.1269 = zext i8 %69 to i32
  %70 = load i8, i8* %arrayidx70.i.1, align 1
  %conv71.i.1270 = zext i8 %70 to i32
  %xor72.i.1271 = xor i32 %conv71.i.1270, %conv68.i.1269
  %conv73.i.1272 = trunc i32 %xor72.i.1271 to i8
  store i8 %conv73.i.1272, i8* %arrayidx70.i.1, align 1
  %scevgep163.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %66, i64 0, i64 0, i64 2
  %71 = load i8, i8* %scevgep163.2.1, align 1
  %conv68.i.2.1 = zext i8 %71 to i32
  %72 = load i8, i8* %arrayidx70.i.1, align 1
  %conv71.i.2.1 = zext i8 %72 to i32
  %xor72.i.2.1 = xor i32 %conv71.i.2.1, %conv68.i.2.1
  %conv73.i.2.1 = trunc i32 %xor72.i.2.1 to i8
  store i8 %conv73.i.2.1, i8* %arrayidx70.i.1, align 1
  %scevgep163.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %66, i64 0, i64 0, i64 3
  %73 = load i8, i8* %scevgep163.3.1, align 1
  %conv68.i.3.1 = zext i8 %73 to i32
  %74 = load i8, i8* %arrayidx70.i.1, align 1
  %conv71.i.3.1 = zext i8 %74 to i32
  %xor72.i.3.1 = xor i32 %conv71.i.3.1, %conv68.i.3.1
  %conv73.i.3.1 = trunc i32 %xor72.i.3.1 to i8
  store i8 %conv73.i.3.1, i8* %arrayidx70.i.1, align 1
  %scevgep162.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %66, i64 0, i64 1, i64 0
  %75 = bitcast i8* %scevgep162.1 to [4 x [4 x i8]]*
  %arrayidx51.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %76 = load i8, i8* %arrayidx51.i.2, align 1
  %arrayidx53.i.2 = getelementptr inbounds i8, i8* %arraydecay6, i64 2
  %77 = load i8, i8* %arrayidx53.i.2, align 1
  %call54.i.2 = call zeroext i8 @mult(i8 zeroext %76, i8 zeroext %77) #3
  %arrayidx56.i.2 = getelementptr inbounds i8, i8* %arraydecay7, i64 2
  store i8 %call54.i.2, i8* %arrayidx56.i.2, align 1
  %arrayidx70.i.2 = getelementptr inbounds i8, i8* %arraydecay7, i64 2
  %scevgep163.2277 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %75, i64 0, i64 0, i64 0
  %78 = load i8, i8* %scevgep163.2277, align 1
  %conv68.i.2278 = zext i8 %78 to i32
  %79 = load i8, i8* %arrayidx70.i.2, align 1
  %conv71.i.2279 = zext i8 %79 to i32
  %xor72.i.2280 = xor i32 %conv71.i.2279, %conv68.i.2278
  %conv73.i.2281 = trunc i32 %xor72.i.2280 to i8
  store i8 %conv73.i.2281, i8* %arrayidx70.i.2, align 1
  %scevgep163.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %75, i64 0, i64 0, i64 1
  %80 = load i8, i8* %scevgep163.1.2, align 1
  %conv68.i.1.2 = zext i8 %80 to i32
  %81 = load i8, i8* %arrayidx70.i.2, align 1
  %conv71.i.1.2 = zext i8 %81 to i32
  %xor72.i.1.2 = xor i32 %conv71.i.1.2, %conv68.i.1.2
  %conv73.i.1.2 = trunc i32 %xor72.i.1.2 to i8
  store i8 %conv73.i.1.2, i8* %arrayidx70.i.2, align 1
  %scevgep163.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %75, i64 0, i64 0, i64 3
  %82 = load i8, i8* %scevgep163.3.2, align 1
  %conv68.i.3.2 = zext i8 %82 to i32
  %83 = load i8, i8* %arrayidx70.i.2, align 1
  %conv71.i.3.2 = zext i8 %83 to i32
  %xor72.i.3.2 = xor i32 %conv71.i.3.2, %conv68.i.3.2
  %conv73.i.3.2 = trunc i32 %xor72.i.3.2 to i8
  store i8 %conv73.i.3.2, i8* %arrayidx70.i.2, align 1
  %scevgep162.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %75, i64 0, i64 1, i64 0
  %84 = bitcast i8* %scevgep162.2 to [4 x [4 x i8]]*
  %arrayidx51.i.3 = getelementptr inbounds i8, i8* %x, i64 3
  %85 = load i8, i8* %arrayidx51.i.3, align 1
  %arrayidx53.i.3 = getelementptr inbounds i8, i8* %arraydecay6, i64 3
  %86 = load i8, i8* %arrayidx53.i.3, align 1
  %call54.i.3 = call zeroext i8 @mult(i8 zeroext %85, i8 zeroext %86) #3
  %arrayidx56.i.3 = getelementptr inbounds i8, i8* %arraydecay7, i64 3
  store i8 %call54.i.3, i8* %arrayidx56.i.3, align 1
  %arrayidx70.i.3 = getelementptr inbounds i8, i8* %arraydecay7, i64 3
  %scevgep163.3286 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %84, i64 0, i64 0, i64 0
  %87 = load i8, i8* %scevgep163.3286, align 1
  %conv68.i.3287 = zext i8 %87 to i32
  %88 = load i8, i8* %arrayidx70.i.3, align 1
  %conv71.i.3288 = zext i8 %88 to i32
  %xor72.i.3289 = xor i32 %conv71.i.3288, %conv68.i.3287
  %conv73.i.3290 = trunc i32 %xor72.i.3289 to i8
  store i8 %conv73.i.3290, i8* %arrayidx70.i.3, align 1
  %scevgep163.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %84, i64 0, i64 0, i64 1
  %89 = load i8, i8* %scevgep163.1.3, align 1
  %conv68.i.1.3 = zext i8 %89 to i32
  %90 = load i8, i8* %arrayidx70.i.3, align 1
  %conv71.i.1.3 = zext i8 %90 to i32
  %xor72.i.1.3 = xor i32 %conv71.i.1.3, %conv68.i.1.3
  %conv73.i.1.3 = trunc i32 %xor72.i.1.3 to i8
  store i8 %conv73.i.1.3, i8* %arrayidx70.i.3, align 1
  %scevgep163.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %84, i64 0, i64 0, i64 2
  %91 = load i8, i8* %scevgep163.2.3, align 1
  %conv68.i.2.3 = zext i8 %91 to i32
  %92 = load i8, i8* %arrayidx70.i.3, align 1
  %conv71.i.2.3 = zext i8 %92 to i32
  %xor72.i.2.3 = xor i32 %conv71.i.2.3, %conv68.i.2.3
  %conv73.i.2.3 = trunc i32 %xor72.i.2.3 to i8
  store i8 %conv73.i.2.3, i8* %arrayidx70.i.3, align 1
  %call80.i = call zeroext i8 @mult(i8 zeroext %call.i77, i8 zeroext %call1.i) #3
  %conv81.i = zext i8 %call80.i to i32
  %scevgep153 = getelementptr [4 x i8], [4 x i8]* %e3, i64 0, i64 0
  %93 = load i8, i8* %scevgep153, align 1
  %scevgep153.1 = getelementptr [4 x i8], [4 x i8]* %e3, i64 0, i64 1
  %94 = load i8, i8* %scevgep153.1, align 1
  %conv.i.i113.i.1 = zext i8 %94 to i32
  %conv1.i.i114.i.1 = zext i8 %93 to i32
  %xor.i.i115.i.1 = xor i32 %conv1.i.i114.i.1, %conv.i.i113.i.1
  %conv2.i.i116.i.1 = trunc i32 %xor.i.i115.i.1 to i8
  %scevgep153.2 = getelementptr [4 x i8], [4 x i8]* %e3, i64 0, i64 2
  %95 = load i8, i8* %scevgep153.2, align 1
  %conv.i.i113.i.2 = zext i8 %95 to i32
  %conv1.i.i114.i.2 = zext i8 %conv2.i.i116.i.1 to i32
  %xor.i.i115.i.2 = xor i32 %conv1.i.i114.i.2, %conv.i.i113.i.2
  %conv2.i.i116.i.2 = trunc i32 %xor.i.i115.i.2 to i8
  %scevgep153.3 = getelementptr [4 x i8], [4 x i8]* %e3, i64 0, i64 3
  %96 = load i8, i8* %scevgep153.3, align 1
  %conv.i.i113.i.3 = zext i8 %96 to i32
  %conv1.i.i114.i.3 = zext i8 %conv2.i.i116.i.2 to i32
  %xor.i.i115.i.3 = xor i32 %conv1.i.i114.i.3, %conv.i.i113.i.3
  %conv2.i.i116.i.3 = trunc i32 %xor.i.i115.i.3 to i8
  %conv83.i = zext i8 %conv2.i.i116.i.3 to i32
  %cmp84.i = icmp eq i32 %conv81.i, %conv83.i
  call void @assert(i1 zeroext %cmp84.i) #3
  %arraydecay8 = getelementptr inbounds [4 x i8], [4 x i8]* %e4, i64 0, i64 0
  %arraydecay9 = getelementptr inbounds [4 x i8], [4 x i8]* %e5, i64 0, i64 0
  %call.i109 = call zeroext i8 (...) @rand() #3
  %call1.i110 = call zeroext i8 (...) @rand() #3
  %conv.i111 = zext i8 %call.i109 to i32
  %97 = load i8, i8* %x, align 1
  %scevgep149.1 = getelementptr i8, i8* %x, i64 1
  %98 = load i8, i8* %scevgep149.1, align 1
  %conv.i.i.i117.1 = zext i8 %98 to i32
  %conv1.i.i.i118.1 = zext i8 %97 to i32
  %xor.i.i.i119.1 = xor i32 %conv1.i.i.i118.1, %conv.i.i.i117.1
  %conv2.i.i.i120.1 = trunc i32 %xor.i.i.i119.1 to i8
  %scevgep149.2 = getelementptr i8, i8* %x, i64 2
  %99 = load i8, i8* %scevgep149.2, align 1
  %conv.i.i.i117.2 = zext i8 %99 to i32
  %conv1.i.i.i118.2 = zext i8 %conv2.i.i.i120.1 to i32
  %xor.i.i.i119.2 = xor i32 %conv1.i.i.i118.2, %conv.i.i.i117.2
  %conv2.i.i.i120.2 = trunc i32 %xor.i.i.i119.2 to i8
  %scevgep149.3 = getelementptr i8, i8* %x, i64 3
  %100 = load i8, i8* %scevgep149.3, align 1
  %conv.i.i.i117.3 = zext i8 %100 to i32
  %conv1.i.i.i118.3 = zext i8 %conv2.i.i.i120.2 to i32
  %xor.i.i.i119.3 = xor i32 %conv1.i.i.i118.3, %conv.i.i.i117.3
  %conv2.i.i.i120.3 = trunc i32 %xor.i.i.i119.3 to i8
  %conv3.i123 = zext i8 %conv2.i.i.i120.3 to i32
  %cmp.i124 = icmp eq i32 %conv.i111, %conv3.i123
  call void @assume(i1 zeroext %cmp.i124) #3
  %conv5.i125 = zext i8 %call1.i110 to i32
  %scevgep145 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 0
  %101 = load i8, i8* %scevgep145, align 1
  %scevgep145.1 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 1
  %102 = load i8, i8* %scevgep145.1, align 1
  %conv.i.i96.i132.1 = zext i8 %102 to i32
  %conv1.i.i97.i133.1 = zext i8 %101 to i32
  %xor.i.i98.i134.1 = xor i32 %conv1.i.i97.i133.1, %conv.i.i96.i132.1
  %conv2.i.i99.i135.1 = trunc i32 %xor.i.i98.i134.1 to i8
  %scevgep145.2 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 2
  %103 = load i8, i8* %scevgep145.2, align 1
  %conv.i.i96.i132.2 = zext i8 %103 to i32
  %conv1.i.i97.i133.2 = zext i8 %conv2.i.i99.i135.1 to i32
  %xor.i.i98.i134.2 = xor i32 %conv1.i.i97.i133.2, %conv.i.i96.i132.2
  %conv2.i.i99.i135.2 = trunc i32 %xor.i.i98.i134.2 to i8
  %scevgep145.3 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 3
  %104 = load i8, i8* %scevgep145.3, align 1
  %conv.i.i96.i132.3 = zext i8 %104 to i32
  %conv1.i.i97.i133.3 = zext i8 %conv2.i.i99.i135.2 to i32
  %xor.i.i98.i134.3 = xor i32 %conv1.i.i97.i133.3, %conv.i.i96.i132.3
  %conv2.i.i99.i135.3 = trunc i32 %xor.i.i98.i134.3 to i8
  %conv7.i138 = zext i8 %conv2.i.i99.i135.3 to i32
  %cmp8.i139 = icmp eq i32 %conv5.i125, %conv7.i138
  call void @assume(i1 zeroext %cmp8.i139) #3
  %call16.i147 = call zeroext i8 (...) @rand() #3
  %scevgep129 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i147, i8* %scevgep129, align 1
  %scevgep130 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %105 = load i8, i8* %scevgep130, align 1
  %conv23.i156 = zext i8 %105 to i32
  %106 = load i8, i8* %x, align 1
  %scevgep133 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 1
  %107 = load i8, i8* %scevgep133, align 1
  %call28.i161 = call zeroext i8 @mult(i8 zeroext %106, i8 zeroext %107) #3
  %conv29.i162 = zext i8 %call28.i161 to i32
  %xor.i163 = xor i32 %conv23.i156, %conv29.i162
  %scevgep136 = getelementptr i8, i8* %x, i64 1
  %108 = load i8, i8* %scevgep136, align 1
  %109 = load i8, i8* %arraydecay8, align 1
  %call34.i168 = call zeroext i8 @mult(i8 zeroext %108, i8 zeroext %109) #3
  %conv35.i169 = zext i8 %call34.i168 to i32
  %xor36.i170 = xor i32 %xor.i163, %conv35.i169
  %conv37.i171 = trunc i32 %xor36.i170 to i8
  %scevgep137 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %conv37.i171, i8* %scevgep137, align 1
  %call16.i147.1322 = call zeroext i8 (...) @rand() #3
  %scevgep129.1323 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  store i8 %call16.i147.1322, i8* %scevgep129.1323, align 1
  %scevgep130.1324 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %110 = load i8, i8* %scevgep130.1324, align 1
  %conv23.i156.1325 = zext i8 %110 to i32
  %111 = load i8, i8* %x, align 1
  %scevgep133.1326 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 2
  %112 = load i8, i8* %scevgep133.1326, align 1
  %call28.i161.1327 = call zeroext i8 @mult(i8 zeroext %111, i8 zeroext %112) #3
  %conv29.i162.1328 = zext i8 %call28.i161.1327 to i32
  %xor.i163.1329 = xor i32 %conv23.i156.1325, %conv29.i162.1328
  %scevgep136.1330 = getelementptr i8, i8* %x, i64 2
  %113 = load i8, i8* %scevgep136.1330, align 1
  %114 = load i8, i8* %arraydecay8, align 1
  %call34.i168.1331 = call zeroext i8 @mult(i8 zeroext %113, i8 zeroext %114) #3
  %conv35.i169.1332 = zext i8 %call34.i168.1331 to i32
  %xor36.i170.1333 = xor i32 %xor.i163.1329, %conv35.i169.1332
  %conv37.i171.1334 = trunc i32 %xor36.i170.1333 to i8
  %scevgep137.1335 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 2, i64 0
  store i8 %conv37.i171.1334, i8* %scevgep137.1335, align 1
  %call16.i147.2337 = call zeroext i8 (...) @rand() #3
  %scevgep129.2338 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  store i8 %call16.i147.2337, i8* %scevgep129.2338, align 1
  %scevgep130.2339 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %115 = load i8, i8* %scevgep130.2339, align 1
  %conv23.i156.2340 = zext i8 %115 to i32
  %116 = load i8, i8* %x, align 1
  %scevgep133.2341 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 3
  %117 = load i8, i8* %scevgep133.2341, align 1
  %call28.i161.2342 = call zeroext i8 @mult(i8 zeroext %116, i8 zeroext %117) #3
  %conv29.i162.2343 = zext i8 %call28.i161.2342 to i32
  %xor.i163.2344 = xor i32 %conv23.i156.2340, %conv29.i162.2343
  %scevgep136.2345 = getelementptr i8, i8* %x, i64 3
  %118 = load i8, i8* %scevgep136.2345, align 1
  %119 = load i8, i8* %arraydecay8, align 1
  %call34.i168.2346 = call zeroext i8 @mult(i8 zeroext %118, i8 zeroext %119) #3
  %conv35.i169.2347 = zext i8 %call34.i168.2346 to i32
  %xor36.i170.2348 = xor i32 %xor.i163.2344, %conv35.i169.2347
  %conv37.i171.2349 = trunc i32 %xor36.i170.2348 to i8
  %scevgep137.2350 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 3, i64 0
  store i8 %conv37.i171.2349, i8* %scevgep137.2350, align 1
  %scevgep126 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 1
  %120 = bitcast i8* %scevgep126 to [4 x [4 x i8]]*
  %scevgep132 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 1
  %121 = bitcast i8* %scevgep132 to [4 x i8]*
  %scevgep135 = getelementptr i8, i8* %x, i64 1
  %arrayidx25.i158.1 = getelementptr inbounds i8, i8* %x, i64 1
  %arrayidx33.i167.1 = getelementptr inbounds i8, i8* %arraydecay8, i64 1
  %call16.i147.1 = call zeroext i8 (...) @rand() #3
  %scevgep129.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %120, i64 0, i64 0, i64 1
  store i8 %call16.i147.1, i8* %scevgep129.1, align 1
  %scevgep130.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %120, i64 0, i64 0, i64 1
  %122 = load i8, i8* %scevgep130.1, align 1
  %conv23.i156.1 = zext i8 %122 to i32
  %123 = load i8, i8* %arrayidx25.i158.1, align 1
  %scevgep133.1 = getelementptr [4 x i8], [4 x i8]* %121, i64 0, i64 1
  %124 = load i8, i8* %scevgep133.1, align 1
  %call28.i161.1 = call zeroext i8 @mult(i8 zeroext %123, i8 zeroext %124) #3
  %conv29.i162.1 = zext i8 %call28.i161.1 to i32
  %xor.i163.1 = xor i32 %conv23.i156.1, %conv29.i162.1
  %scevgep136.1 = getelementptr i8, i8* %scevgep135, i64 1
  %125 = load i8, i8* %scevgep136.1, align 1
  %126 = load i8, i8* %arrayidx33.i167.1, align 1
  %call34.i168.1 = call zeroext i8 @mult(i8 zeroext %125, i8 zeroext %126) #3
  %conv35.i169.1 = zext i8 %call34.i168.1 to i32
  %xor36.i170.1 = xor i32 %xor.i163.1, %conv35.i169.1
  %conv37.i171.1 = trunc i32 %xor36.i170.1 to i8
  %scevgep137.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %120, i64 0, i64 1, i64 0
  store i8 %conv37.i171.1, i8* %scevgep137.1, align 1
  %call16.i147.1.1 = call zeroext i8 (...) @rand() #3
  %scevgep129.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %120, i64 0, i64 0, i64 2
  store i8 %call16.i147.1.1, i8* %scevgep129.1.1, align 1
  %scevgep130.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %120, i64 0, i64 0, i64 2
  %127 = load i8, i8* %scevgep130.1.1, align 1
  %conv23.i156.1.1 = zext i8 %127 to i32
  %128 = load i8, i8* %arrayidx25.i158.1, align 1
  %scevgep133.1.1 = getelementptr [4 x i8], [4 x i8]* %121, i64 0, i64 2
  %129 = load i8, i8* %scevgep133.1.1, align 1
  %call28.i161.1.1 = call zeroext i8 @mult(i8 zeroext %128, i8 zeroext %129) #3
  %conv29.i162.1.1 = zext i8 %call28.i161.1.1 to i32
  %xor.i163.1.1 = xor i32 %conv23.i156.1.1, %conv29.i162.1.1
  %scevgep136.1.1 = getelementptr i8, i8* %scevgep135, i64 2
  %130 = load i8, i8* %scevgep136.1.1, align 1
  %131 = load i8, i8* %arrayidx33.i167.1, align 1
  %call34.i168.1.1 = call zeroext i8 @mult(i8 zeroext %130, i8 zeroext %131) #3
  %conv35.i169.1.1 = zext i8 %call34.i168.1.1 to i32
  %xor36.i170.1.1 = xor i32 %xor.i163.1.1, %conv35.i169.1.1
  %conv37.i171.1.1 = trunc i32 %xor36.i170.1.1 to i8
  %scevgep137.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %120, i64 0, i64 2, i64 0
  store i8 %conv37.i171.1.1, i8* %scevgep137.1.1, align 1
  %scevgep126.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %120, i64 0, i64 1, i64 1
  %132 = bitcast i8* %scevgep126.1 to [4 x [4 x i8]]*
  %scevgep132.1 = getelementptr [4 x i8], [4 x i8]* %121, i64 0, i64 1
  %133 = bitcast i8* %scevgep132.1 to [4 x i8]*
  %scevgep135.1 = getelementptr i8, i8* %scevgep135, i64 1
  %arrayidx25.i158.2 = getelementptr inbounds i8, i8* %x, i64 2
  %arrayidx33.i167.2 = getelementptr inbounds i8, i8* %arraydecay8, i64 2
  %call16.i147.2 = call zeroext i8 (...) @rand() #3
  %scevgep129.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %132, i64 0, i64 0, i64 1
  store i8 %call16.i147.2, i8* %scevgep129.2, align 1
  %scevgep130.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %132, i64 0, i64 0, i64 1
  %134 = load i8, i8* %scevgep130.2, align 1
  %conv23.i156.2 = zext i8 %134 to i32
  %135 = load i8, i8* %arrayidx25.i158.2, align 1
  %scevgep133.2 = getelementptr [4 x i8], [4 x i8]* %133, i64 0, i64 1
  %136 = load i8, i8* %scevgep133.2, align 1
  %call28.i161.2 = call zeroext i8 @mult(i8 zeroext %135, i8 zeroext %136) #3
  %conv29.i162.2 = zext i8 %call28.i161.2 to i32
  %xor.i163.2 = xor i32 %conv23.i156.2, %conv29.i162.2
  %scevgep136.2 = getelementptr i8, i8* %scevgep135.1, i64 1
  %137 = load i8, i8* %scevgep136.2, align 1
  %138 = load i8, i8* %arrayidx33.i167.2, align 1
  %call34.i168.2 = call zeroext i8 @mult(i8 zeroext %137, i8 zeroext %138) #3
  %conv35.i169.2 = zext i8 %call34.i168.2 to i32
  %xor36.i170.2 = xor i32 %xor.i163.2, %conv35.i169.2
  %conv37.i171.2 = trunc i32 %xor36.i170.2 to i8
  %scevgep137.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %132, i64 0, i64 1, i64 0
  store i8 %conv37.i171.2, i8* %scevgep137.2, align 1
  %139 = load i8, i8* %x, align 1
  %140 = load i8, i8* %arraydecay8, align 1
  %call54.i187 = call zeroext i8 @mult(i8 zeroext %139, i8 zeroext %140) #3
  store i8 %call54.i187, i8* %arraydecay9, align 1
  %scevgep121.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %141 = load i8, i8* %scevgep121.1, align 1
  %conv68.i199.1 = zext i8 %141 to i32
  %142 = load i8, i8* %arraydecay9, align 1
  %conv71.i202.1 = zext i8 %142 to i32
  %xor72.i203.1 = xor i32 %conv71.i202.1, %conv68.i199.1
  %conv73.i204.1 = trunc i32 %xor72.i203.1 to i8
  store i8 %conv73.i204.1, i8* %arraydecay9, align 1
  %scevgep121.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %143 = load i8, i8* %scevgep121.2, align 1
  %conv68.i199.2 = zext i8 %143 to i32
  %144 = load i8, i8* %arraydecay9, align 1
  %conv71.i202.2 = zext i8 %144 to i32
  %xor72.i203.2 = xor i32 %conv71.i202.2, %conv68.i199.2
  %conv73.i204.2 = trunc i32 %xor72.i203.2 to i8
  store i8 %conv73.i204.2, i8* %arraydecay9, align 1
  %scevgep121.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %145 = load i8, i8* %scevgep121.3, align 1
  %conv68.i199.3 = zext i8 %145 to i32
  %146 = load i8, i8* %arraydecay9, align 1
  %conv71.i202.3 = zext i8 %146 to i32
  %xor72.i203.3 = xor i32 %conv71.i202.3, %conv68.i199.3
  %conv73.i204.3 = trunc i32 %xor72.i203.3 to i8
  store i8 %conv73.i204.3, i8* %arraydecay9, align 1
  %scevgep120 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  %147 = bitcast i8* %scevgep120 to [4 x [4 x i8]]*
  %arrayidx51.i184.1 = getelementptr inbounds i8, i8* %x, i64 1
  %148 = load i8, i8* %arrayidx51.i184.1, align 1
  %arrayidx53.i186.1 = getelementptr inbounds i8, i8* %arraydecay8, i64 1
  %149 = load i8, i8* %arrayidx53.i186.1, align 1
  %call54.i187.1 = call zeroext i8 @mult(i8 zeroext %148, i8 zeroext %149) #3
  %arrayidx56.i189.1 = getelementptr inbounds i8, i8* %arraydecay9, i64 1
  store i8 %call54.i187.1, i8* %arrayidx56.i189.1, align 1
  %arrayidx70.i201.1 = getelementptr inbounds i8, i8* %arraydecay9, i64 1
  %scevgep121.1241 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %147, i64 0, i64 0, i64 0
  %150 = load i8, i8* %scevgep121.1241, align 1
  %conv68.i199.1242 = zext i8 %150 to i32
  %151 = load i8, i8* %arrayidx70.i201.1, align 1
  %conv71.i202.1243 = zext i8 %151 to i32
  %xor72.i203.1244 = xor i32 %conv71.i202.1243, %conv68.i199.1242
  %conv73.i204.1245 = trunc i32 %xor72.i203.1244 to i8
  store i8 %conv73.i204.1245, i8* %arrayidx70.i201.1, align 1
  %scevgep121.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %147, i64 0, i64 0, i64 2
  %152 = load i8, i8* %scevgep121.2.1, align 1
  %conv68.i199.2.1 = zext i8 %152 to i32
  %153 = load i8, i8* %arrayidx70.i201.1, align 1
  %conv71.i202.2.1 = zext i8 %153 to i32
  %xor72.i203.2.1 = xor i32 %conv71.i202.2.1, %conv68.i199.2.1
  %conv73.i204.2.1 = trunc i32 %xor72.i203.2.1 to i8
  store i8 %conv73.i204.2.1, i8* %arrayidx70.i201.1, align 1
  %scevgep121.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %147, i64 0, i64 0, i64 3
  %154 = load i8, i8* %scevgep121.3.1, align 1
  %conv68.i199.3.1 = zext i8 %154 to i32
  %155 = load i8, i8* %arrayidx70.i201.1, align 1
  %conv71.i202.3.1 = zext i8 %155 to i32
  %xor72.i203.3.1 = xor i32 %conv71.i202.3.1, %conv68.i199.3.1
  %conv73.i204.3.1 = trunc i32 %xor72.i203.3.1 to i8
  store i8 %conv73.i204.3.1, i8* %arrayidx70.i201.1, align 1
  %scevgep120.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %147, i64 0, i64 1, i64 0
  %156 = bitcast i8* %scevgep120.1 to [4 x [4 x i8]]*
  %arrayidx51.i184.2 = getelementptr inbounds i8, i8* %x, i64 2
  %157 = load i8, i8* %arrayidx51.i184.2, align 1
  %arrayidx53.i186.2 = getelementptr inbounds i8, i8* %arraydecay8, i64 2
  %158 = load i8, i8* %arrayidx53.i186.2, align 1
  %call54.i187.2 = call zeroext i8 @mult(i8 zeroext %157, i8 zeroext %158) #3
  %arrayidx56.i189.2 = getelementptr inbounds i8, i8* %arraydecay9, i64 2
  store i8 %call54.i187.2, i8* %arrayidx56.i189.2, align 1
  %arrayidx70.i201.2 = getelementptr inbounds i8, i8* %arraydecay9, i64 2
  %scevgep121.2250 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %156, i64 0, i64 0, i64 0
  %159 = load i8, i8* %scevgep121.2250, align 1
  %conv68.i199.2251 = zext i8 %159 to i32
  %160 = load i8, i8* %arrayidx70.i201.2, align 1
  %conv71.i202.2252 = zext i8 %160 to i32
  %xor72.i203.2253 = xor i32 %conv71.i202.2252, %conv68.i199.2251
  %conv73.i204.2254 = trunc i32 %xor72.i203.2253 to i8
  store i8 %conv73.i204.2254, i8* %arrayidx70.i201.2, align 1
  %scevgep121.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %156, i64 0, i64 0, i64 1
  %161 = load i8, i8* %scevgep121.1.2, align 1
  %conv68.i199.1.2 = zext i8 %161 to i32
  %162 = load i8, i8* %arrayidx70.i201.2, align 1
  %conv71.i202.1.2 = zext i8 %162 to i32
  %xor72.i203.1.2 = xor i32 %conv71.i202.1.2, %conv68.i199.1.2
  %conv73.i204.1.2 = trunc i32 %xor72.i203.1.2 to i8
  store i8 %conv73.i204.1.2, i8* %arrayidx70.i201.2, align 1
  %scevgep121.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %156, i64 0, i64 0, i64 3
  %163 = load i8, i8* %scevgep121.3.2, align 1
  %conv68.i199.3.2 = zext i8 %163 to i32
  %164 = load i8, i8* %arrayidx70.i201.2, align 1
  %conv71.i202.3.2 = zext i8 %164 to i32
  %xor72.i203.3.2 = xor i32 %conv71.i202.3.2, %conv68.i199.3.2
  %conv73.i204.3.2 = trunc i32 %xor72.i203.3.2 to i8
  store i8 %conv73.i204.3.2, i8* %arrayidx70.i201.2, align 1
  %scevgep120.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %156, i64 0, i64 1, i64 0
  %165 = bitcast i8* %scevgep120.2 to [4 x [4 x i8]]*
  %arrayidx51.i184.3 = getelementptr inbounds i8, i8* %x, i64 3
  %166 = load i8, i8* %arrayidx51.i184.3, align 1
  %arrayidx53.i186.3 = getelementptr inbounds i8, i8* %arraydecay8, i64 3
  %167 = load i8, i8* %arrayidx53.i186.3, align 1
  %call54.i187.3 = call zeroext i8 @mult(i8 zeroext %166, i8 zeroext %167) #3
  %arrayidx56.i189.3 = getelementptr inbounds i8, i8* %arraydecay9, i64 3
  store i8 %call54.i187.3, i8* %arrayidx56.i189.3, align 1
  %arrayidx70.i201.3 = getelementptr inbounds i8, i8* %arraydecay9, i64 3
  %scevgep121.3259 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %165, i64 0, i64 0, i64 0
  %168 = load i8, i8* %scevgep121.3259, align 1
  %conv68.i199.3260 = zext i8 %168 to i32
  %169 = load i8, i8* %arrayidx70.i201.3, align 1
  %conv71.i202.3261 = zext i8 %169 to i32
  %xor72.i203.3262 = xor i32 %conv71.i202.3261, %conv68.i199.3260
  %conv73.i204.3263 = trunc i32 %xor72.i203.3262 to i8
  store i8 %conv73.i204.3263, i8* %arrayidx70.i201.3, align 1
  %scevgep121.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %165, i64 0, i64 0, i64 1
  %170 = load i8, i8* %scevgep121.1.3, align 1
  %conv68.i199.1.3 = zext i8 %170 to i32
  %171 = load i8, i8* %arrayidx70.i201.3, align 1
  %conv71.i202.1.3 = zext i8 %171 to i32
  %xor72.i203.1.3 = xor i32 %conv71.i202.1.3, %conv68.i199.1.3
  %conv73.i204.1.3 = trunc i32 %xor72.i203.1.3 to i8
  store i8 %conv73.i204.1.3, i8* %arrayidx70.i201.3, align 1
  %scevgep121.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %165, i64 0, i64 0, i64 2
  %172 = load i8, i8* %scevgep121.2.3, align 1
  %conv68.i199.2.3 = zext i8 %172 to i32
  %173 = load i8, i8* %arrayidx70.i201.3, align 1
  %conv71.i202.2.3 = zext i8 %173 to i32
  %xor72.i203.2.3 = xor i32 %conv71.i202.2.3, %conv68.i199.2.3
  %conv73.i204.2.3 = trunc i32 %xor72.i203.2.3 to i8
  store i8 %conv73.i204.2.3, i8* %arrayidx70.i201.3, align 1
  %call80.i210 = call zeroext i8 @mult(i8 zeroext %call.i109, i8 zeroext %call1.i110) #3
  %conv81.i211 = zext i8 %call80.i210 to i32
  %scevgep111 = getelementptr [4 x i8], [4 x i8]* %e5, i64 0, i64 0
  %174 = load i8, i8* %scevgep111, align 1
  %scevgep111.1 = getelementptr [4 x i8], [4 x i8]* %e5, i64 0, i64 1
  %175 = load i8, i8* %scevgep111.1, align 1
  %conv.i.i113.i218.1 = zext i8 %175 to i32
  %conv1.i.i114.i219.1 = zext i8 %174 to i32
  %xor.i.i115.i220.1 = xor i32 %conv1.i.i114.i219.1, %conv.i.i113.i218.1
  %conv2.i.i116.i221.1 = trunc i32 %xor.i.i115.i220.1 to i8
  %scevgep111.2 = getelementptr [4 x i8], [4 x i8]* %e5, i64 0, i64 2
  %176 = load i8, i8* %scevgep111.2, align 1
  %conv.i.i113.i218.2 = zext i8 %176 to i32
  %conv1.i.i114.i219.2 = zext i8 %conv2.i.i116.i221.1 to i32
  %xor.i.i115.i220.2 = xor i32 %conv1.i.i114.i219.2, %conv.i.i113.i218.2
  %conv2.i.i116.i221.2 = trunc i32 %xor.i.i115.i220.2 to i8
  %scevgep111.3 = getelementptr [4 x i8], [4 x i8]* %e5, i64 0, i64 3
  %177 = load i8, i8* %scevgep111.3, align 1
  %conv.i.i113.i218.3 = zext i8 %177 to i32
  %conv1.i.i114.i219.3 = zext i8 %conv2.i.i116.i221.2 to i32
  %xor.i.i115.i220.3 = xor i32 %conv1.i.i114.i219.3, %conv.i.i113.i218.3
  %conv2.i.i116.i221.3 = trunc i32 %xor.i.i115.i220.3 to i8
  %conv83.i224 = zext i8 %conv2.i.i116.i221.3 to i32
  %cmp84.i225 = icmp eq i32 %conv81.i211, %conv83.i224
  call void @assert(i1 zeroext %cmp84.i225) #3
  %arraydecay10 = getelementptr inbounds [4 x i8], [4 x i8]* %e3, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [4 x i8], [4 x i8]* %e4, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [4 x i8], [4 x i8]* %e7, i64 0, i64 0
  %call.i252 = call zeroext i8 (...) @rand() #3
  %call1.i253 = call zeroext i8 (...) @rand() #3
  %conv.i254 = zext i8 %call.i252 to i32
  %scevgep107 = getelementptr [4 x i8], [4 x i8]* %e3, i64 0, i64 0
  %178 = load i8, i8* %scevgep107, align 1
  %scevgep107.1 = getelementptr [4 x i8], [4 x i8]* %e3, i64 0, i64 1
  %179 = load i8, i8* %scevgep107.1, align 1
  %conv.i.i.i260.1 = zext i8 %179 to i32
  %conv1.i.i.i261.1 = zext i8 %178 to i32
  %xor.i.i.i262.1 = xor i32 %conv1.i.i.i261.1, %conv.i.i.i260.1
  %conv2.i.i.i263.1 = trunc i32 %xor.i.i.i262.1 to i8
  %scevgep107.2 = getelementptr [4 x i8], [4 x i8]* %e3, i64 0, i64 2
  %180 = load i8, i8* %scevgep107.2, align 1
  %conv.i.i.i260.2 = zext i8 %180 to i32
  %conv1.i.i.i261.2 = zext i8 %conv2.i.i.i263.1 to i32
  %xor.i.i.i262.2 = xor i32 %conv1.i.i.i261.2, %conv.i.i.i260.2
  %conv2.i.i.i263.2 = trunc i32 %xor.i.i.i262.2 to i8
  %scevgep107.3 = getelementptr [4 x i8], [4 x i8]* %e3, i64 0, i64 3
  %181 = load i8, i8* %scevgep107.3, align 1
  %conv.i.i.i260.3 = zext i8 %181 to i32
  %conv1.i.i.i261.3 = zext i8 %conv2.i.i.i263.2 to i32
  %xor.i.i.i262.3 = xor i32 %conv1.i.i.i261.3, %conv.i.i.i260.3
  %conv2.i.i.i263.3 = trunc i32 %xor.i.i.i262.3 to i8
  %conv3.i266 = zext i8 %conv2.i.i.i263.3 to i32
  %cmp.i267 = icmp eq i32 %conv.i254, %conv3.i266
  call void @assume(i1 zeroext %cmp.i267) #3
  %conv5.i268 = zext i8 %call1.i253 to i32
  %scevgep103 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 0
  %182 = load i8, i8* %scevgep103, align 1
  %scevgep103.1 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 1
  %183 = load i8, i8* %scevgep103.1, align 1
  %conv.i.i96.i275.1 = zext i8 %183 to i32
  %conv1.i.i97.i276.1 = zext i8 %182 to i32
  %xor.i.i98.i277.1 = xor i32 %conv1.i.i97.i276.1, %conv.i.i96.i275.1
  %conv2.i.i99.i278.1 = trunc i32 %xor.i.i98.i277.1 to i8
  %scevgep103.2 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 2
  %184 = load i8, i8* %scevgep103.2, align 1
  %conv.i.i96.i275.2 = zext i8 %184 to i32
  %conv1.i.i97.i276.2 = zext i8 %conv2.i.i99.i278.1 to i32
  %xor.i.i98.i277.2 = xor i32 %conv1.i.i97.i276.2, %conv.i.i96.i275.2
  %conv2.i.i99.i278.2 = trunc i32 %xor.i.i98.i277.2 to i8
  %scevgep103.3 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 3
  %185 = load i8, i8* %scevgep103.3, align 1
  %conv.i.i96.i275.3 = zext i8 %185 to i32
  %conv1.i.i97.i276.3 = zext i8 %conv2.i.i99.i278.2 to i32
  %xor.i.i98.i277.3 = xor i32 %conv1.i.i97.i276.3, %conv.i.i96.i275.3
  %conv2.i.i99.i278.3 = trunc i32 %xor.i.i98.i277.3 to i8
  %conv7.i281 = zext i8 %conv2.i.i99.i278.3 to i32
  %cmp8.i282 = icmp eq i32 %conv5.i268, %conv7.i281
  call void @assume(i1 zeroext %cmp8.i282) #3
  %call16.i290 = call zeroext i8 (...) @rand() #3
  %scevgep87 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i290, i8* %scevgep87, align 1
  %scevgep88 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %186 = load i8, i8* %scevgep88, align 1
  %conv23.i299 = zext i8 %186 to i32
  %187 = load i8, i8* %arraydecay10, align 1
  %scevgep91 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 1
  %188 = load i8, i8* %scevgep91, align 1
  %call28.i304 = call zeroext i8 @mult(i8 zeroext %187, i8 zeroext %188) #3
  %conv29.i305 = zext i8 %call28.i304 to i32
  %xor.i306 = xor i32 %conv23.i299, %conv29.i305
  %scevgep94 = getelementptr [4 x i8], [4 x i8]* %e3, i64 0, i64 1
  %189 = load i8, i8* %scevgep94, align 1
  %190 = load i8, i8* %arraydecay11, align 1
  %call34.i311 = call zeroext i8 @mult(i8 zeroext %189, i8 zeroext %190) #3
  %conv35.i312 = zext i8 %call34.i311 to i32
  %xor36.i313 = xor i32 %xor.i306, %conv35.i312
  %conv37.i314 = trunc i32 %xor36.i313 to i8
  %scevgep95 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %conv37.i314, i8* %scevgep95, align 1
  %call16.i290.1293 = call zeroext i8 (...) @rand() #3
  %scevgep87.1294 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  store i8 %call16.i290.1293, i8* %scevgep87.1294, align 1
  %scevgep88.1295 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %191 = load i8, i8* %scevgep88.1295, align 1
  %conv23.i299.1296 = zext i8 %191 to i32
  %192 = load i8, i8* %arraydecay10, align 1
  %scevgep91.1297 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 2
  %193 = load i8, i8* %scevgep91.1297, align 1
  %call28.i304.1298 = call zeroext i8 @mult(i8 zeroext %192, i8 zeroext %193) #3
  %conv29.i305.1299 = zext i8 %call28.i304.1298 to i32
  %xor.i306.1300 = xor i32 %conv23.i299.1296, %conv29.i305.1299
  %scevgep94.1301 = getelementptr [4 x i8], [4 x i8]* %e3, i64 0, i64 2
  %194 = load i8, i8* %scevgep94.1301, align 1
  %195 = load i8, i8* %arraydecay11, align 1
  %call34.i311.1302 = call zeroext i8 @mult(i8 zeroext %194, i8 zeroext %195) #3
  %conv35.i312.1303 = zext i8 %call34.i311.1302 to i32
  %xor36.i313.1304 = xor i32 %xor.i306.1300, %conv35.i312.1303
  %conv37.i314.1305 = trunc i32 %xor36.i313.1304 to i8
  %scevgep95.1306 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 2, i64 0
  store i8 %conv37.i314.1305, i8* %scevgep95.1306, align 1
  %call16.i290.2308 = call zeroext i8 (...) @rand() #3
  %scevgep87.2309 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  store i8 %call16.i290.2308, i8* %scevgep87.2309, align 1
  %scevgep88.2310 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %196 = load i8, i8* %scevgep88.2310, align 1
  %conv23.i299.2311 = zext i8 %196 to i32
  %197 = load i8, i8* %arraydecay10, align 1
  %scevgep91.2312 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 3
  %198 = load i8, i8* %scevgep91.2312, align 1
  %call28.i304.2313 = call zeroext i8 @mult(i8 zeroext %197, i8 zeroext %198) #3
  %conv29.i305.2314 = zext i8 %call28.i304.2313 to i32
  %xor.i306.2315 = xor i32 %conv23.i299.2311, %conv29.i305.2314
  %scevgep94.2316 = getelementptr [4 x i8], [4 x i8]* %e3, i64 0, i64 3
  %199 = load i8, i8* %scevgep94.2316, align 1
  %200 = load i8, i8* %arraydecay11, align 1
  %call34.i311.2317 = call zeroext i8 @mult(i8 zeroext %199, i8 zeroext %200) #3
  %conv35.i312.2318 = zext i8 %call34.i311.2317 to i32
  %xor36.i313.2319 = xor i32 %xor.i306.2315, %conv35.i312.2318
  %conv37.i314.2320 = trunc i32 %xor36.i313.2319 to i8
  %scevgep95.2321 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 3, i64 0
  store i8 %conv37.i314.2320, i8* %scevgep95.2321, align 1
  %scevgep84 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 1
  %201 = bitcast i8* %scevgep84 to [4 x [4 x i8]]*
  %scevgep90 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 1
  %202 = bitcast i8* %scevgep90 to [4 x i8]*
  %scevgep93 = getelementptr [4 x i8], [4 x i8]* %e3, i64 0, i64 1
  %203 = bitcast i8* %scevgep93 to [4 x i8]*
  %arrayidx25.i301.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %arrayidx33.i310.1 = getelementptr inbounds i8, i8* %arraydecay11, i64 1
  %call16.i290.1 = call zeroext i8 (...) @rand() #3
  %scevgep87.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %201, i64 0, i64 0, i64 1
  store i8 %call16.i290.1, i8* %scevgep87.1, align 1
  %scevgep88.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %201, i64 0, i64 0, i64 1
  %204 = load i8, i8* %scevgep88.1, align 1
  %conv23.i299.1 = zext i8 %204 to i32
  %205 = load i8, i8* %arrayidx25.i301.1, align 1
  %scevgep91.1 = getelementptr [4 x i8], [4 x i8]* %202, i64 0, i64 1
  %206 = load i8, i8* %scevgep91.1, align 1
  %call28.i304.1 = call zeroext i8 @mult(i8 zeroext %205, i8 zeroext %206) #3
  %conv29.i305.1 = zext i8 %call28.i304.1 to i32
  %xor.i306.1 = xor i32 %conv23.i299.1, %conv29.i305.1
  %scevgep94.1 = getelementptr [4 x i8], [4 x i8]* %203, i64 0, i64 1
  %207 = load i8, i8* %scevgep94.1, align 1
  %208 = load i8, i8* %arrayidx33.i310.1, align 1
  %call34.i311.1 = call zeroext i8 @mult(i8 zeroext %207, i8 zeroext %208) #3
  %conv35.i312.1 = zext i8 %call34.i311.1 to i32
  %xor36.i313.1 = xor i32 %xor.i306.1, %conv35.i312.1
  %conv37.i314.1 = trunc i32 %xor36.i313.1 to i8
  %scevgep95.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %201, i64 0, i64 1, i64 0
  store i8 %conv37.i314.1, i8* %scevgep95.1, align 1
  %call16.i290.1.1 = call zeroext i8 (...) @rand() #3
  %scevgep87.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %201, i64 0, i64 0, i64 2
  store i8 %call16.i290.1.1, i8* %scevgep87.1.1, align 1
  %scevgep88.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %201, i64 0, i64 0, i64 2
  %209 = load i8, i8* %scevgep88.1.1, align 1
  %conv23.i299.1.1 = zext i8 %209 to i32
  %210 = load i8, i8* %arrayidx25.i301.1, align 1
  %scevgep91.1.1 = getelementptr [4 x i8], [4 x i8]* %202, i64 0, i64 2
  %211 = load i8, i8* %scevgep91.1.1, align 1
  %call28.i304.1.1 = call zeroext i8 @mult(i8 zeroext %210, i8 zeroext %211) #3
  %conv29.i305.1.1 = zext i8 %call28.i304.1.1 to i32
  %xor.i306.1.1 = xor i32 %conv23.i299.1.1, %conv29.i305.1.1
  %scevgep94.1.1 = getelementptr [4 x i8], [4 x i8]* %203, i64 0, i64 2
  %212 = load i8, i8* %scevgep94.1.1, align 1
  %213 = load i8, i8* %arrayidx33.i310.1, align 1
  %call34.i311.1.1 = call zeroext i8 @mult(i8 zeroext %212, i8 zeroext %213) #3
  %conv35.i312.1.1 = zext i8 %call34.i311.1.1 to i32
  %xor36.i313.1.1 = xor i32 %xor.i306.1.1, %conv35.i312.1.1
  %conv37.i314.1.1 = trunc i32 %xor36.i313.1.1 to i8
  %scevgep95.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %201, i64 0, i64 2, i64 0
  store i8 %conv37.i314.1.1, i8* %scevgep95.1.1, align 1
  %scevgep84.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %201, i64 0, i64 1, i64 1
  %214 = bitcast i8* %scevgep84.1 to [4 x [4 x i8]]*
  %scevgep90.1 = getelementptr [4 x i8], [4 x i8]* %202, i64 0, i64 1
  %215 = bitcast i8* %scevgep90.1 to [4 x i8]*
  %scevgep93.1 = getelementptr [4 x i8], [4 x i8]* %203, i64 0, i64 1
  %216 = bitcast i8* %scevgep93.1 to [4 x i8]*
  %arrayidx25.i301.2 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  %arrayidx33.i310.2 = getelementptr inbounds i8, i8* %arraydecay11, i64 2
  %call16.i290.2 = call zeroext i8 (...) @rand() #3
  %scevgep87.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %214, i64 0, i64 0, i64 1
  store i8 %call16.i290.2, i8* %scevgep87.2, align 1
  %scevgep88.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %214, i64 0, i64 0, i64 1
  %217 = load i8, i8* %scevgep88.2, align 1
  %conv23.i299.2 = zext i8 %217 to i32
  %218 = load i8, i8* %arrayidx25.i301.2, align 1
  %scevgep91.2 = getelementptr [4 x i8], [4 x i8]* %215, i64 0, i64 1
  %219 = load i8, i8* %scevgep91.2, align 1
  %call28.i304.2 = call zeroext i8 @mult(i8 zeroext %218, i8 zeroext %219) #3
  %conv29.i305.2 = zext i8 %call28.i304.2 to i32
  %xor.i306.2 = xor i32 %conv23.i299.2, %conv29.i305.2
  %scevgep94.2 = getelementptr [4 x i8], [4 x i8]* %216, i64 0, i64 1
  %220 = load i8, i8* %scevgep94.2, align 1
  %221 = load i8, i8* %arrayidx33.i310.2, align 1
  %call34.i311.2 = call zeroext i8 @mult(i8 zeroext %220, i8 zeroext %221) #3
  %conv35.i312.2 = zext i8 %call34.i311.2 to i32
  %xor36.i313.2 = xor i32 %xor.i306.2, %conv35.i312.2
  %conv37.i314.2 = trunc i32 %xor36.i313.2 to i8
  %scevgep95.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %214, i64 0, i64 1, i64 0
  store i8 %conv37.i314.2, i8* %scevgep95.2, align 1
  %222 = load i8, i8* %arraydecay10, align 1
  %223 = load i8, i8* %arraydecay11, align 1
  %call54.i330 = call zeroext i8 @mult(i8 zeroext %222, i8 zeroext %223) #3
  store i8 %call54.i330, i8* %arraydecay12, align 1
  %scevgep80.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %224 = load i8, i8* %scevgep80.1, align 1
  %conv68.i342.1 = zext i8 %224 to i32
  %225 = load i8, i8* %arraydecay12, align 1
  %conv71.i345.1 = zext i8 %225 to i32
  %xor72.i346.1 = xor i32 %conv71.i345.1, %conv68.i342.1
  %conv73.i347.1 = trunc i32 %xor72.i346.1 to i8
  store i8 %conv73.i347.1, i8* %arraydecay12, align 1
  %scevgep80.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %226 = load i8, i8* %scevgep80.2, align 1
  %conv68.i342.2 = zext i8 %226 to i32
  %227 = load i8, i8* %arraydecay12, align 1
  %conv71.i345.2 = zext i8 %227 to i32
  %xor72.i346.2 = xor i32 %conv71.i345.2, %conv68.i342.2
  %conv73.i347.2 = trunc i32 %xor72.i346.2 to i8
  store i8 %conv73.i347.2, i8* %arraydecay12, align 1
  %scevgep80.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %228 = load i8, i8* %scevgep80.3, align 1
  %conv68.i342.3 = zext i8 %228 to i32
  %229 = load i8, i8* %arraydecay12, align 1
  %conv71.i345.3 = zext i8 %229 to i32
  %xor72.i346.3 = xor i32 %conv71.i345.3, %conv68.i342.3
  %conv73.i347.3 = trunc i32 %xor72.i346.3 to i8
  store i8 %conv73.i347.3, i8* %arraydecay12, align 1
  %scevgep79 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  %230 = bitcast i8* %scevgep79 to [4 x [4 x i8]]*
  %arrayidx51.i327.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %231 = load i8, i8* %arrayidx51.i327.1, align 1
  %arrayidx53.i329.1 = getelementptr inbounds i8, i8* %arraydecay11, i64 1
  %232 = load i8, i8* %arrayidx53.i329.1, align 1
  %call54.i330.1 = call zeroext i8 @mult(i8 zeroext %231, i8 zeroext %232) #3
  %arrayidx56.i332.1 = getelementptr inbounds i8, i8* %arraydecay12, i64 1
  store i8 %call54.i330.1, i8* %arrayidx56.i332.1, align 1
  %arrayidx70.i344.1 = getelementptr inbounds i8, i8* %arraydecay12, i64 1
  %scevgep80.1214 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %230, i64 0, i64 0, i64 0
  %233 = load i8, i8* %scevgep80.1214, align 1
  %conv68.i342.1215 = zext i8 %233 to i32
  %234 = load i8, i8* %arrayidx70.i344.1, align 1
  %conv71.i345.1216 = zext i8 %234 to i32
  %xor72.i346.1217 = xor i32 %conv71.i345.1216, %conv68.i342.1215
  %conv73.i347.1218 = trunc i32 %xor72.i346.1217 to i8
  store i8 %conv73.i347.1218, i8* %arrayidx70.i344.1, align 1
  %scevgep80.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %230, i64 0, i64 0, i64 2
  %235 = load i8, i8* %scevgep80.2.1, align 1
  %conv68.i342.2.1 = zext i8 %235 to i32
  %236 = load i8, i8* %arrayidx70.i344.1, align 1
  %conv71.i345.2.1 = zext i8 %236 to i32
  %xor72.i346.2.1 = xor i32 %conv71.i345.2.1, %conv68.i342.2.1
  %conv73.i347.2.1 = trunc i32 %xor72.i346.2.1 to i8
  store i8 %conv73.i347.2.1, i8* %arrayidx70.i344.1, align 1
  %scevgep80.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %230, i64 0, i64 0, i64 3
  %237 = load i8, i8* %scevgep80.3.1, align 1
  %conv68.i342.3.1 = zext i8 %237 to i32
  %238 = load i8, i8* %arrayidx70.i344.1, align 1
  %conv71.i345.3.1 = zext i8 %238 to i32
  %xor72.i346.3.1 = xor i32 %conv71.i345.3.1, %conv68.i342.3.1
  %conv73.i347.3.1 = trunc i32 %xor72.i346.3.1 to i8
  store i8 %conv73.i347.3.1, i8* %arrayidx70.i344.1, align 1
  %scevgep79.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %230, i64 0, i64 1, i64 0
  %239 = bitcast i8* %scevgep79.1 to [4 x [4 x i8]]*
  %arrayidx51.i327.2 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  %240 = load i8, i8* %arrayidx51.i327.2, align 1
  %arrayidx53.i329.2 = getelementptr inbounds i8, i8* %arraydecay11, i64 2
  %241 = load i8, i8* %arrayidx53.i329.2, align 1
  %call54.i330.2 = call zeroext i8 @mult(i8 zeroext %240, i8 zeroext %241) #3
  %arrayidx56.i332.2 = getelementptr inbounds i8, i8* %arraydecay12, i64 2
  store i8 %call54.i330.2, i8* %arrayidx56.i332.2, align 1
  %arrayidx70.i344.2 = getelementptr inbounds i8, i8* %arraydecay12, i64 2
  %scevgep80.2223 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %239, i64 0, i64 0, i64 0
  %242 = load i8, i8* %scevgep80.2223, align 1
  %conv68.i342.2224 = zext i8 %242 to i32
  %243 = load i8, i8* %arrayidx70.i344.2, align 1
  %conv71.i345.2225 = zext i8 %243 to i32
  %xor72.i346.2226 = xor i32 %conv71.i345.2225, %conv68.i342.2224
  %conv73.i347.2227 = trunc i32 %xor72.i346.2226 to i8
  store i8 %conv73.i347.2227, i8* %arrayidx70.i344.2, align 1
  %scevgep80.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %239, i64 0, i64 0, i64 1
  %244 = load i8, i8* %scevgep80.1.2, align 1
  %conv68.i342.1.2 = zext i8 %244 to i32
  %245 = load i8, i8* %arrayidx70.i344.2, align 1
  %conv71.i345.1.2 = zext i8 %245 to i32
  %xor72.i346.1.2 = xor i32 %conv71.i345.1.2, %conv68.i342.1.2
  %conv73.i347.1.2 = trunc i32 %xor72.i346.1.2 to i8
  store i8 %conv73.i347.1.2, i8* %arrayidx70.i344.2, align 1
  %scevgep80.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %239, i64 0, i64 0, i64 3
  %246 = load i8, i8* %scevgep80.3.2, align 1
  %conv68.i342.3.2 = zext i8 %246 to i32
  %247 = load i8, i8* %arrayidx70.i344.2, align 1
  %conv71.i345.3.2 = zext i8 %247 to i32
  %xor72.i346.3.2 = xor i32 %conv71.i345.3.2, %conv68.i342.3.2
  %conv73.i347.3.2 = trunc i32 %xor72.i346.3.2 to i8
  store i8 %conv73.i347.3.2, i8* %arrayidx70.i344.2, align 1
  %scevgep79.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %239, i64 0, i64 1, i64 0
  %248 = bitcast i8* %scevgep79.2 to [4 x [4 x i8]]*
  %arrayidx51.i327.3 = getelementptr inbounds i8, i8* %arraydecay10, i64 3
  %249 = load i8, i8* %arrayidx51.i327.3, align 1
  %arrayidx53.i329.3 = getelementptr inbounds i8, i8* %arraydecay11, i64 3
  %250 = load i8, i8* %arrayidx53.i329.3, align 1
  %call54.i330.3 = call zeroext i8 @mult(i8 zeroext %249, i8 zeroext %250) #3
  %arrayidx56.i332.3 = getelementptr inbounds i8, i8* %arraydecay12, i64 3
  store i8 %call54.i330.3, i8* %arrayidx56.i332.3, align 1
  %arrayidx70.i344.3 = getelementptr inbounds i8, i8* %arraydecay12, i64 3
  %scevgep80.3232 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %248, i64 0, i64 0, i64 0
  %251 = load i8, i8* %scevgep80.3232, align 1
  %conv68.i342.3233 = zext i8 %251 to i32
  %252 = load i8, i8* %arrayidx70.i344.3, align 1
  %conv71.i345.3234 = zext i8 %252 to i32
  %xor72.i346.3235 = xor i32 %conv71.i345.3234, %conv68.i342.3233
  %conv73.i347.3236 = trunc i32 %xor72.i346.3235 to i8
  store i8 %conv73.i347.3236, i8* %arrayidx70.i344.3, align 1
  %scevgep80.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %248, i64 0, i64 0, i64 1
  %253 = load i8, i8* %scevgep80.1.3, align 1
  %conv68.i342.1.3 = zext i8 %253 to i32
  %254 = load i8, i8* %arrayidx70.i344.3, align 1
  %conv71.i345.1.3 = zext i8 %254 to i32
  %xor72.i346.1.3 = xor i32 %conv71.i345.1.3, %conv68.i342.1.3
  %conv73.i347.1.3 = trunc i32 %xor72.i346.1.3 to i8
  store i8 %conv73.i347.1.3, i8* %arrayidx70.i344.3, align 1
  %scevgep80.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %248, i64 0, i64 0, i64 2
  %255 = load i8, i8* %scevgep80.2.3, align 1
  %conv68.i342.2.3 = zext i8 %255 to i32
  %256 = load i8, i8* %arrayidx70.i344.3, align 1
  %conv71.i345.2.3 = zext i8 %256 to i32
  %xor72.i346.2.3 = xor i32 %conv71.i345.2.3, %conv68.i342.2.3
  %conv73.i347.2.3 = trunc i32 %xor72.i346.2.3 to i8
  store i8 %conv73.i347.2.3, i8* %arrayidx70.i344.3, align 1
  %call80.i353 = call zeroext i8 @mult(i8 zeroext %call.i252, i8 zeroext %call1.i253) #3
  %conv81.i354 = zext i8 %call80.i353 to i32
  %scevgep70 = getelementptr [4 x i8], [4 x i8]* %e7, i64 0, i64 0
  %257 = load i8, i8* %scevgep70, align 1
  %scevgep70.1 = getelementptr [4 x i8], [4 x i8]* %e7, i64 0, i64 1
  %258 = load i8, i8* %scevgep70.1, align 1
  %conv.i.i113.i361.1 = zext i8 %258 to i32
  %conv1.i.i114.i362.1 = zext i8 %257 to i32
  %xor.i.i115.i363.1 = xor i32 %conv1.i.i114.i362.1, %conv.i.i113.i361.1
  %conv2.i.i116.i364.1 = trunc i32 %xor.i.i115.i363.1 to i8
  %scevgep70.2 = getelementptr [4 x i8], [4 x i8]* %e7, i64 0, i64 2
  %259 = load i8, i8* %scevgep70.2, align 1
  %conv.i.i113.i361.2 = zext i8 %259 to i32
  %conv1.i.i114.i362.2 = zext i8 %conv2.i.i116.i364.1 to i32
  %xor.i.i115.i363.2 = xor i32 %conv1.i.i114.i362.2, %conv.i.i113.i361.2
  %conv2.i.i116.i364.2 = trunc i32 %xor.i.i115.i363.2 to i8
  %scevgep70.3 = getelementptr [4 x i8], [4 x i8]* %e7, i64 0, i64 3
  %260 = load i8, i8* %scevgep70.3, align 1
  %conv.i.i113.i361.3 = zext i8 %260 to i32
  %conv1.i.i114.i362.3 = zext i8 %conv2.i.i116.i364.2 to i32
  %xor.i.i115.i363.3 = xor i32 %conv1.i.i114.i362.3, %conv.i.i113.i361.3
  %conv2.i.i116.i364.3 = trunc i32 %xor.i.i115.i363.3 to i8
  %conv83.i367 = zext i8 %conv2.i.i116.i364.3 to i32
  %cmp84.i368 = icmp eq i32 %conv81.i354, %conv83.i367
  call void @assert(i1 zeroext %cmp84.i368) #3
  %scevgep65 = getelementptr [4 x i8], [4 x i8]* %e3, i64 0, i64 0
  %261 = load i8, i8* %scevgep65, align 1
  %call.i378 = call zeroext i8 @L3(i8 zeroext %261) #3
  %scevgep66 = getelementptr [4 x i8], [4 x i8]* %l3, i64 0, i64 0
  store i8 %call.i378, i8* %scevgep66, align 1
  %scevgep65.1 = getelementptr [4 x i8], [4 x i8]* %e3, i64 0, i64 1
  %262 = load i8, i8* %scevgep65.1, align 1
  %call.i378.1 = call zeroext i8 @L3(i8 zeroext %262) #3
  %scevgep66.1 = getelementptr [4 x i8], [4 x i8]* %l3, i64 0, i64 1
  store i8 %call.i378.1, i8* %scevgep66.1, align 1
  %scevgep65.2 = getelementptr [4 x i8], [4 x i8]* %e3, i64 0, i64 2
  %263 = load i8, i8* %scevgep65.2, align 1
  %call.i378.2 = call zeroext i8 @L3(i8 zeroext %263) #3
  %scevgep66.2 = getelementptr [4 x i8], [4 x i8]* %l3, i64 0, i64 2
  store i8 %call.i378.2, i8* %scevgep66.2, align 1
  %scevgep65.3 = getelementptr [4 x i8], [4 x i8]* %e3, i64 0, i64 3
  %264 = load i8, i8* %scevgep65.3, align 1
  %call.i378.3 = call zeroext i8 @L3(i8 zeroext %264) #3
  %scevgep66.3 = getelementptr [4 x i8], [4 x i8]* %l3, i64 0, i64 3
  store i8 %call.i378.3, i8* %scevgep66.3, align 1
  %scevgep60 = getelementptr [4 x i8], [4 x i8]* %e5, i64 0, i64 0
  %265 = load i8, i8* %scevgep60, align 1
  %call.i393 = call zeroext i8 @L5(i8 zeroext %265) #3
  %scevgep61 = getelementptr [4 x i8], [4 x i8]* %l5, i64 0, i64 0
  store i8 %call.i393, i8* %scevgep61, align 1
  %scevgep60.1 = getelementptr [4 x i8], [4 x i8]* %e5, i64 0, i64 1
  %266 = load i8, i8* %scevgep60.1, align 1
  %call.i393.1 = call zeroext i8 @L5(i8 zeroext %266) #3
  %scevgep61.1 = getelementptr [4 x i8], [4 x i8]* %l5, i64 0, i64 1
  store i8 %call.i393.1, i8* %scevgep61.1, align 1
  %scevgep60.2 = getelementptr [4 x i8], [4 x i8]* %e5, i64 0, i64 2
  %267 = load i8, i8* %scevgep60.2, align 1
  %call.i393.2 = call zeroext i8 @L5(i8 zeroext %267) #3
  %scevgep61.2 = getelementptr [4 x i8], [4 x i8]* %l5, i64 0, i64 2
  store i8 %call.i393.2, i8* %scevgep61.2, align 1
  %scevgep60.3 = getelementptr [4 x i8], [4 x i8]* %e5, i64 0, i64 3
  %268 = load i8, i8* %scevgep60.3, align 1
  %call.i393.3 = call zeroext i8 @L5(i8 zeroext %268) #3
  %scevgep61.3 = getelementptr [4 x i8], [4 x i8]* %l5, i64 0, i64 3
  store i8 %call.i393.3, i8* %scevgep61.3, align 1
  %scevgep55 = getelementptr [4 x i8], [4 x i8]* %e7, i64 0, i64 0
  %269 = load i8, i8* %scevgep55, align 1
  %call.i408 = call zeroext i8 @L7(i8 zeroext %269) #3
  %scevgep56 = getelementptr [4 x i8], [4 x i8]* %l7, i64 0, i64 0
  store i8 %call.i408, i8* %scevgep56, align 1
  %scevgep55.1 = getelementptr [4 x i8], [4 x i8]* %e7, i64 0, i64 1
  %270 = load i8, i8* %scevgep55.1, align 1
  %call.i408.1 = call zeroext i8 @L7(i8 zeroext %270) #3
  %scevgep56.1 = getelementptr [4 x i8], [4 x i8]* %l7, i64 0, i64 1
  store i8 %call.i408.1, i8* %scevgep56.1, align 1
  %scevgep55.2 = getelementptr [4 x i8], [4 x i8]* %e7, i64 0, i64 2
  %271 = load i8, i8* %scevgep55.2, align 1
  %call.i408.2 = call zeroext i8 @L7(i8 zeroext %271) #3
  %scevgep56.2 = getelementptr [4 x i8], [4 x i8]* %l7, i64 0, i64 2
  store i8 %call.i408.2, i8* %scevgep56.2, align 1
  %scevgep55.3 = getelementptr [4 x i8], [4 x i8]* %e7, i64 0, i64 3
  %272 = load i8, i8* %scevgep55.3, align 1
  %call.i408.3 = call zeroext i8 @L7(i8 zeroext %272) #3
  %scevgep56.3 = getelementptr [4 x i8], [4 x i8]* %l7, i64 0, i64 3
  store i8 %call.i408.3, i8* %scevgep56.3, align 1
  %scevgep47 = getelementptr [4 x i8], [4 x i8]* %l1, i64 0, i64 0
  %273 = load i8, i8* %scevgep47, align 1
  %conv21 = zext i8 %273 to i32
  %scevgep48 = getelementptr [4 x i8], [4 x i8]* %l3, i64 0, i64 0
  %274 = load i8, i8* %scevgep48, align 1
  %conv24 = zext i8 %274 to i32
  %xor = xor i32 %conv21, %conv24
  %scevgep49 = getelementptr [4 x i8], [4 x i8]* %l5, i64 0, i64 0
  %275 = load i8, i8* %scevgep49, align 1
  %conv27 = zext i8 %275 to i32
  %xor28 = xor i32 %xor, %conv27
  %scevgep50 = getelementptr [4 x i8], [4 x i8]* %l7, i64 0, i64 0
  %276 = load i8, i8* %scevgep50, align 1
  %conv31 = zext i8 %276 to i32
  %xor32 = xor i32 %xor28, %conv31
  %conv33 = trunc i32 %xor32 to i8
  store i8 %conv33, i8* %y, align 1
  %scevgep47.1 = getelementptr [4 x i8], [4 x i8]* %l1, i64 0, i64 1
  %277 = load i8, i8* %scevgep47.1, align 1
  %conv21.1 = zext i8 %277 to i32
  %scevgep48.1 = getelementptr [4 x i8], [4 x i8]* %l3, i64 0, i64 1
  %278 = load i8, i8* %scevgep48.1, align 1
  %conv24.1 = zext i8 %278 to i32
  %xor.1 = xor i32 %conv21.1, %conv24.1
  %scevgep49.1 = getelementptr [4 x i8], [4 x i8]* %l5, i64 0, i64 1
  %279 = load i8, i8* %scevgep49.1, align 1
  %conv27.1 = zext i8 %279 to i32
  %xor28.1 = xor i32 %xor.1, %conv27.1
  %scevgep50.1 = getelementptr [4 x i8], [4 x i8]* %l7, i64 0, i64 1
  %280 = load i8, i8* %scevgep50.1, align 1
  %conv31.1 = zext i8 %280 to i32
  %xor32.1 = xor i32 %xor28.1, %conv31.1
  %conv33.1 = trunc i32 %xor32.1 to i8
  %scevgep51.1 = getelementptr i8, i8* %y, i64 1
  store i8 %conv33.1, i8* %scevgep51.1, align 1
  %scevgep47.2 = getelementptr [4 x i8], [4 x i8]* %l1, i64 0, i64 2
  %281 = load i8, i8* %scevgep47.2, align 1
  %conv21.2 = zext i8 %281 to i32
  %scevgep48.2 = getelementptr [4 x i8], [4 x i8]* %l3, i64 0, i64 2
  %282 = load i8, i8* %scevgep48.2, align 1
  %conv24.2 = zext i8 %282 to i32
  %xor.2 = xor i32 %conv21.2, %conv24.2
  %scevgep49.2 = getelementptr [4 x i8], [4 x i8]* %l5, i64 0, i64 2
  %283 = load i8, i8* %scevgep49.2, align 1
  %conv27.2 = zext i8 %283 to i32
  %xor28.2 = xor i32 %xor.2, %conv27.2
  %scevgep50.2 = getelementptr [4 x i8], [4 x i8]* %l7, i64 0, i64 2
  %284 = load i8, i8* %scevgep50.2, align 1
  %conv31.2 = zext i8 %284 to i32
  %xor32.2 = xor i32 %xor28.2, %conv31.2
  %conv33.2 = trunc i32 %xor32.2 to i8
  %scevgep51.2 = getelementptr i8, i8* %y, i64 2
  store i8 %conv33.2, i8* %scevgep51.2, align 1
  %scevgep47.3 = getelementptr [4 x i8], [4 x i8]* %l1, i64 0, i64 3
  %285 = load i8, i8* %scevgep47.3, align 1
  %conv21.3 = zext i8 %285 to i32
  %scevgep48.3 = getelementptr [4 x i8], [4 x i8]* %l3, i64 0, i64 3
  %286 = load i8, i8* %scevgep48.3, align 1
  %conv24.3 = zext i8 %286 to i32
  %xor.3 = xor i32 %conv21.3, %conv24.3
  %scevgep49.3 = getelementptr [4 x i8], [4 x i8]* %l5, i64 0, i64 3
  %287 = load i8, i8* %scevgep49.3, align 1
  %conv27.3 = zext i8 %287 to i32
  %xor28.3 = xor i32 %xor.3, %conv27.3
  %scevgep50.3 = getelementptr [4 x i8], [4 x i8]* %l7, i64 0, i64 3
  %288 = load i8, i8* %scevgep50.3, align 1
  %conv31.3 = zext i8 %288 to i32
  %xor32.3 = xor i32 %xor28.3, %conv31.3
  %conv33.3 = trunc i32 %xor32.3 to i8
  %scevgep51.3 = getelementptr i8, i8* %y, i64 3
  store i8 %conv33.3, i8* %scevgep51.3, align 1
  %289 = load i8, i8* %y, align 1
  %conv37 = zext i8 %289 to i32
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
  %290 = load i8, i8* %y, align 1
  %scevgep.1 = getelementptr i8, i8* %y, i64 1
  %291 = load i8, i8* %scevgep.1, align 1
  %conv.i.i432.1 = zext i8 %291 to i32
  %conv1.i.i433.1 = zext i8 %290 to i32
  %xor.i.i434.1 = xor i32 %conv1.i.i433.1, %conv.i.i432.1
  %conv2.i.i435.1 = trunc i32 %xor.i.i434.1 to i8
  %scevgep.2 = getelementptr i8, i8* %y, i64 2
  %292 = load i8, i8* %scevgep.2, align 1
  %conv.i.i432.2 = zext i8 %292 to i32
  %conv1.i.i433.2 = zext i8 %conv2.i.i435.1 to i32
  %xor.i.i434.2 = xor i32 %conv1.i.i433.2, %conv.i.i432.2
  %conv2.i.i435.2 = trunc i32 %xor.i.i434.2 to i8
  %scevgep.3 = getelementptr i8, i8* %y, i64 3
  %293 = load i8, i8* %scevgep.3, align 1
  %conv.i.i432.3 = zext i8 %293 to i32
  %conv1.i.i433.3 = zext i8 %conv2.i.i435.2 to i32
  %xor.i.i434.3 = xor i32 %conv1.i.i433.3, %conv.i.i432.3
  %conv2.i.i435.3 = trunc i32 %xor.i.i434.3 to i8
  %conv43 = zext i8 %conv2.i.i435.3 to i32
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
