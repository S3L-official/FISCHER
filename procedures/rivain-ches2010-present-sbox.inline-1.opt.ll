; ModuleID = '../examples/rivain-ches2010-present-sbox.inline-1.ll'
source_filename = "../examples/rivain-ches2010-present-sbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 1, align 4
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
  ret i8 %conv2.1
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
  ret i8 %conv2.i.1
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_mult(i8* %a, i8* %b, i8* %c) #0 {
entry:
  %r = alloca [2 x [2 x i8]], align 1
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
  %conv3 = zext i8 %conv2.i.i.1 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %2 = load i8, i8* %b, align 1
  %scevgep43.1 = getelementptr i8, i8* %b, i64 1
  %3 = load i8, i8* %scevgep43.1, align 1
  %conv.i.i96.1 = zext i8 %3 to i32
  %conv1.i.i97.1 = zext i8 %2 to i32
  %xor.i.i98.1 = xor i32 %conv1.i.i97.1, %conv.i.i96.1
  %conv2.i.i99.1 = trunc i32 %xor.i.i98.1 to i8
  %conv7 = zext i8 %conv2.i.i99.1 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %call16 = call zeroext i8 (...) @rand()
  %scevgep27 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 0, i64 1
  store i8 %call16, i8* %scevgep27, align 1
  %scevgep28 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 0, i64 1
  %4 = load i8, i8* %scevgep28, align 1
  %conv23 = zext i8 %4 to i32
  %5 = load i8, i8* %a, align 1
  %scevgep31 = getelementptr i8, i8* %b, i64 1
  %6 = load i8, i8* %scevgep31, align 1
  %call28 = call zeroext i8 @mult(i8 zeroext %5, i8 zeroext %6)
  %conv29 = zext i8 %call28 to i32
  %xor = xor i32 %conv23, %conv29
  %scevgep34 = getelementptr i8, i8* %a, i64 1
  %7 = load i8, i8* %scevgep34, align 1
  %8 = load i8, i8* %b, align 1
  %call34 = call zeroext i8 @mult(i8 zeroext %7, i8 zeroext %8)
  %conv35 = zext i8 %call34 to i32
  %xor36 = xor i32 %xor, %conv35
  %conv37 = trunc i32 %xor36 to i8
  %scevgep35 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 1, i64 0
  store i8 %conv37, i8* %scevgep35, align 1
  %9 = load i8, i8* %a, align 1
  %10 = load i8, i8* %b, align 1
  %call54 = call zeroext i8 @mult(i8 zeroext %9, i8 zeroext %10)
  store i8 %call54, i8* %c, align 1
  %scevgep20.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 0, i64 1
  %11 = load i8, i8* %scevgep20.1, align 1
  %conv68.1 = zext i8 %11 to i32
  %12 = load i8, i8* %c, align 1
  %conv71.1 = zext i8 %12 to i32
  %xor72.1 = xor i32 %conv71.1, %conv68.1
  %conv73.1 = trunc i32 %xor72.1 to i8
  store i8 %conv73.1, i8* %c, align 1
  %scevgep19 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 1, i64 0
  %13 = bitcast i8* %scevgep19 to [2 x [2 x i8]]*
  %arrayidx51.1 = getelementptr inbounds i8, i8* %a, i64 1
  %14 = load i8, i8* %arrayidx51.1, align 1
  %arrayidx53.1 = getelementptr inbounds i8, i8* %b, i64 1
  %15 = load i8, i8* %arrayidx53.1, align 1
  %call54.1 = call zeroext i8 @mult(i8 zeroext %14, i8 zeroext %15)
  %arrayidx56.1 = getelementptr inbounds i8, i8* %c, i64 1
  store i8 %call54.1, i8* %arrayidx56.1, align 1
  %arrayidx70.1 = getelementptr inbounds i8, i8* %c, i64 1
  %scevgep20.151 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %13, i64 0, i64 0, i64 0
  %16 = load i8, i8* %scevgep20.151, align 1
  %conv68.152 = zext i8 %16 to i32
  %17 = load i8, i8* %arrayidx70.1, align 1
  %conv71.153 = zext i8 %17 to i32
  %xor72.154 = xor i32 %conv71.153, %conv68.152
  %conv73.155 = trunc i32 %xor72.154 to i8
  store i8 %conv73.155, i8* %arrayidx70.1, align 1
  %call80 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv81 = zext i8 %call80 to i32
  %18 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %19 = load i8, i8* %scevgep.1, align 1
  %conv.i.i113.1 = zext i8 %19 to i32
  %conv1.i.i114.1 = zext i8 %18 to i32
  %xor.i.i115.1 = xor i32 %conv1.i.i114.1, %conv.i.i113.1
  %conv2.i.i116.1 = trunc i32 %xor.i.i115.1 to i8
  %conv83 = zext i8 %conv2.i.i116.1 to i32
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
  %conv2 = zext i8 %conv2.i.i.1 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %call7 = call zeroext i8 (...) @rand()
  %conv8 = zext i8 %call7 to i32
  %2 = load i8, i8* %x, align 1
  %conv9 = zext i8 %2 to i32
  %xor = xor i32 %conv9, %conv8
  %conv10 = trunc i32 %xor to i8
  store i8 %conv10, i8* %x, align 1
  %conv11 = zext i8 %call7 to i32
  %scevgep8 = getelementptr i8, i8* %x, i64 1
  %3 = load i8, i8* %scevgep8, align 1
  %conv13 = zext i8 %3 to i32
  %xor14 = xor i32 %conv13, %conv11
  %conv15 = trunc i32 %xor14 to i8
  store i8 %conv15, i8* %scevgep8, align 1
  %conv16 = zext i8 %call to i32
  %4 = load i8, i8* %x, align 1
  %scevgep.1 = getelementptr i8, i8* %x, i64 1
  %5 = load i8, i8* %scevgep.1, align 1
  %conv.i.i31.1 = zext i8 %5 to i32
  %conv1.i.i32.1 = zext i8 %4 to i32
  %xor.i.i33.1 = xor i32 %conv1.i.i32.1, %conv.i.i31.1
  %conv2.i.i34.1 = trunc i32 %xor.i.i33.1 to i8
  %conv18 = zext i8 %conv2.i.i34.1 to i32
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
  %r.i = alloca [2 x [2 x i8]], align 1
  %l1 = alloca [2 x i8], align 1
  %l3 = alloca [2 x i8], align 1
  %l5 = alloca [2 x i8], align 1
  %l7 = alloca [2 x i8], align 1
  %e2 = alloca [2 x i8], align 1
  %e3 = alloca [2 x i8], align 1
  %e4 = alloca [2 x i8], align 1
  %e5 = alloca [2 x i8], align 1
  %e7 = alloca [2 x i8], align 1
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %scevgep210.1 = getelementptr i8, i8* %x, i64 1
  %1 = load i8, i8* %scevgep210.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %conv2 = zext i8 %conv2.i.i.1 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %2 = load i8, i8* %x, align 1
  %call.i = call zeroext i8 @L1(i8 zeroext %2) #3
  %scevgep206 = getelementptr [2 x i8], [2 x i8]* %l1, i64 0, i64 0
  store i8 %call.i, i8* %scevgep206, align 1
  %scevgep205.1 = getelementptr i8, i8* %x, i64 1
  %3 = load i8, i8* %scevgep205.1, align 1
  %call.i.1 = call zeroext i8 @L1(i8 zeroext %3) #3
  %scevgep206.1 = getelementptr [2 x i8], [2 x i8]* %l1, i64 0, i64 1
  store i8 %call.i.1, i8* %scevgep206.1, align 1
  %4 = load i8, i8* %x, align 1
  %call.i54 = call zeroext i8 @square(i8 zeroext %4) #3
  %scevgep201 = getelementptr [2 x i8], [2 x i8]* %e2, i64 0, i64 0
  store i8 %call.i54, i8* %scevgep201, align 1
  %scevgep200.1 = getelementptr i8, i8* %x, i64 1
  %5 = load i8, i8* %scevgep200.1, align 1
  %call.i54.1 = call zeroext i8 @square(i8 zeroext %5) #3
  %scevgep201.1 = getelementptr [2 x i8], [2 x i8]* %e2, i64 0, i64 1
  store i8 %call.i54.1, i8* %scevgep201.1, align 1
  %6 = load i8, i8* %x, align 1
  %call.i68 = call zeroext i8 @exp4(i8 zeroext %6) #3
  %scevgep196 = getelementptr [2 x i8], [2 x i8]* %e4, i64 0, i64 0
  store i8 %call.i68, i8* %scevgep196, align 1
  %scevgep195.1 = getelementptr i8, i8* %x, i64 1
  %7 = load i8, i8* %scevgep195.1, align 1
  %call.i68.1 = call zeroext i8 @exp4(i8 zeroext %7) #3
  %scevgep196.1 = getelementptr [2 x i8], [2 x i8]* %e4, i64 0, i64 1
  store i8 %call.i68.1, i8* %scevgep196.1, align 1
  %arraydecay6 = getelementptr inbounds [2 x i8], [2 x i8]* %e2, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [2 x i8], [2 x i8]* %e3, i64 0, i64 0
  %call.i77 = call zeroext i8 (...) @rand() #3
  %call1.i = call zeroext i8 (...) @rand() #3
  %conv.i = zext i8 %call.i77 to i32
  %8 = load i8, i8* %x, align 1
  %scevgep191.1 = getelementptr i8, i8* %x, i64 1
  %9 = load i8, i8* %scevgep191.1, align 1
  %conv.i.i.i.1 = zext i8 %9 to i32
  %conv1.i.i.i.1 = zext i8 %8 to i32
  %xor.i.i.i.1 = xor i32 %conv1.i.i.i.1, %conv.i.i.i.1
  %conv2.i.i.i.1 = trunc i32 %xor.i.i.i.1 to i8
  %conv3.i = zext i8 %conv2.i.i.i.1 to i32
  %cmp.i78 = icmp eq i32 %conv.i, %conv3.i
  call void @assume(i1 zeroext %cmp.i78) #3
  %conv5.i = zext i8 %call1.i to i32
  %scevgep187 = getelementptr [2 x i8], [2 x i8]* %e2, i64 0, i64 0
  %10 = load i8, i8* %scevgep187, align 1
  %scevgep187.1 = getelementptr [2 x i8], [2 x i8]* %e2, i64 0, i64 1
  %11 = load i8, i8* %scevgep187.1, align 1
  %conv.i.i96.i.1 = zext i8 %11 to i32
  %conv1.i.i97.i.1 = zext i8 %10 to i32
  %xor.i.i98.i.1 = xor i32 %conv1.i.i97.i.1, %conv.i.i96.i.1
  %conv2.i.i99.i.1 = trunc i32 %xor.i.i98.i.1 to i8
  %conv7.i = zext i8 %conv2.i.i99.i.1 to i32
  %cmp8.i = icmp eq i32 %conv5.i, %conv7.i
  call void @assume(i1 zeroext %cmp8.i) #3
  %call16.i = call zeroext i8 (...) @rand() #3
  %scevgep171 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i, i8* %scevgep171, align 1
  %scevgep172 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %12 = load i8, i8* %scevgep172, align 1
  %conv23.i = zext i8 %12 to i32
  %13 = load i8, i8* %x, align 1
  %scevgep175 = getelementptr [2 x i8], [2 x i8]* %e2, i64 0, i64 1
  %14 = load i8, i8* %scevgep175, align 1
  %call28.i = call zeroext i8 @mult(i8 zeroext %13, i8 zeroext %14) #3
  %conv29.i = zext i8 %call28.i to i32
  %xor.i = xor i32 %conv23.i, %conv29.i
  %scevgep178 = getelementptr i8, i8* %x, i64 1
  %15 = load i8, i8* %scevgep178, align 1
  %16 = load i8, i8* %arraydecay6, align 1
  %call34.i = call zeroext i8 @mult(i8 zeroext %15, i8 zeroext %16) #3
  %conv35.i = zext i8 %call34.i to i32
  %xor36.i = xor i32 %xor.i, %conv35.i
  %conv37.i = trunc i32 %xor36.i to i8
  %scevgep179 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %conv37.i, i8* %scevgep179, align 1
  %17 = load i8, i8* %x, align 1
  %18 = load i8, i8* %arraydecay6, align 1
  %call54.i = call zeroext i8 @mult(i8 zeroext %17, i8 zeroext %18) #3
  store i8 %call54.i, i8* %arraydecay7, align 1
  %scevgep163.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %19 = load i8, i8* %scevgep163.1, align 1
  %conv68.i.1 = zext i8 %19 to i32
  %20 = load i8, i8* %arraydecay7, align 1
  %conv71.i.1 = zext i8 %20 to i32
  %xor72.i.1 = xor i32 %conv71.i.1, %conv68.i.1
  %conv73.i.1 = trunc i32 %xor72.i.1 to i8
  store i8 %conv73.i.1, i8* %arraydecay7, align 1
  %scevgep162 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 1, i64 0
  %21 = bitcast i8* %scevgep162 to [2 x [2 x i8]]*
  %arrayidx51.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %22 = load i8, i8* %arrayidx51.i.1, align 1
  %arrayidx53.i.1 = getelementptr inbounds i8, i8* %arraydecay6, i64 1
  %23 = load i8, i8* %arrayidx53.i.1, align 1
  %call54.i.1 = call zeroext i8 @mult(i8 zeroext %22, i8 zeroext %23) #3
  %arrayidx56.i.1 = getelementptr inbounds i8, i8* %arraydecay7, i64 1
  store i8 %call54.i.1, i8* %arrayidx56.i.1, align 1
  %arrayidx70.i.1 = getelementptr inbounds i8, i8* %arraydecay7, i64 1
  %scevgep163.1232 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %21, i64 0, i64 0, i64 0
  %24 = load i8, i8* %scevgep163.1232, align 1
  %conv68.i.1233 = zext i8 %24 to i32
  %25 = load i8, i8* %arrayidx70.i.1, align 1
  %conv71.i.1234 = zext i8 %25 to i32
  %xor72.i.1235 = xor i32 %conv71.i.1234, %conv68.i.1233
  %conv73.i.1236 = trunc i32 %xor72.i.1235 to i8
  store i8 %conv73.i.1236, i8* %arrayidx70.i.1, align 1
  %call80.i = call zeroext i8 @mult(i8 zeroext %call.i77, i8 zeroext %call1.i) #3
  %conv81.i = zext i8 %call80.i to i32
  %scevgep153 = getelementptr [2 x i8], [2 x i8]* %e3, i64 0, i64 0
  %26 = load i8, i8* %scevgep153, align 1
  %scevgep153.1 = getelementptr [2 x i8], [2 x i8]* %e3, i64 0, i64 1
  %27 = load i8, i8* %scevgep153.1, align 1
  %conv.i.i113.i.1 = zext i8 %27 to i32
  %conv1.i.i114.i.1 = zext i8 %26 to i32
  %xor.i.i115.i.1 = xor i32 %conv1.i.i114.i.1, %conv.i.i113.i.1
  %conv2.i.i116.i.1 = trunc i32 %xor.i.i115.i.1 to i8
  %conv83.i = zext i8 %conv2.i.i116.i.1 to i32
  %cmp84.i = icmp eq i32 %conv81.i, %conv83.i
  call void @assert(i1 zeroext %cmp84.i) #3
  %arraydecay8 = getelementptr inbounds [2 x i8], [2 x i8]* %e4, i64 0, i64 0
  %arraydecay9 = getelementptr inbounds [2 x i8], [2 x i8]* %e5, i64 0, i64 0
  %call.i109 = call zeroext i8 (...) @rand() #3
  %call1.i110 = call zeroext i8 (...) @rand() #3
  %conv.i111 = zext i8 %call.i109 to i32
  %28 = load i8, i8* %x, align 1
  %scevgep149.1 = getelementptr i8, i8* %x, i64 1
  %29 = load i8, i8* %scevgep149.1, align 1
  %conv.i.i.i117.1 = zext i8 %29 to i32
  %conv1.i.i.i118.1 = zext i8 %28 to i32
  %xor.i.i.i119.1 = xor i32 %conv1.i.i.i118.1, %conv.i.i.i117.1
  %conv2.i.i.i120.1 = trunc i32 %xor.i.i.i119.1 to i8
  %conv3.i123 = zext i8 %conv2.i.i.i120.1 to i32
  %cmp.i124 = icmp eq i32 %conv.i111, %conv3.i123
  call void @assume(i1 zeroext %cmp.i124) #3
  %conv5.i125 = zext i8 %call1.i110 to i32
  %scevgep145 = getelementptr [2 x i8], [2 x i8]* %e4, i64 0, i64 0
  %30 = load i8, i8* %scevgep145, align 1
  %scevgep145.1 = getelementptr [2 x i8], [2 x i8]* %e4, i64 0, i64 1
  %31 = load i8, i8* %scevgep145.1, align 1
  %conv.i.i96.i132.1 = zext i8 %31 to i32
  %conv1.i.i97.i133.1 = zext i8 %30 to i32
  %xor.i.i98.i134.1 = xor i32 %conv1.i.i97.i133.1, %conv.i.i96.i132.1
  %conv2.i.i99.i135.1 = trunc i32 %xor.i.i98.i134.1 to i8
  %conv7.i138 = zext i8 %conv2.i.i99.i135.1 to i32
  %cmp8.i139 = icmp eq i32 %conv5.i125, %conv7.i138
  call void @assume(i1 zeroext %cmp8.i139) #3
  %call16.i147 = call zeroext i8 (...) @rand() #3
  %scevgep129 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i147, i8* %scevgep129, align 1
  %scevgep130 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %32 = load i8, i8* %scevgep130, align 1
  %conv23.i156 = zext i8 %32 to i32
  %33 = load i8, i8* %x, align 1
  %scevgep133 = getelementptr [2 x i8], [2 x i8]* %e4, i64 0, i64 1
  %34 = load i8, i8* %scevgep133, align 1
  %call28.i161 = call zeroext i8 @mult(i8 zeroext %33, i8 zeroext %34) #3
  %conv29.i162 = zext i8 %call28.i161 to i32
  %xor.i163 = xor i32 %conv23.i156, %conv29.i162
  %scevgep136 = getelementptr i8, i8* %x, i64 1
  %35 = load i8, i8* %scevgep136, align 1
  %36 = load i8, i8* %arraydecay8, align 1
  %call34.i168 = call zeroext i8 @mult(i8 zeroext %35, i8 zeroext %36) #3
  %conv35.i169 = zext i8 %call34.i168 to i32
  %xor36.i170 = xor i32 %xor.i163, %conv35.i169
  %conv37.i171 = trunc i32 %xor36.i170 to i8
  %scevgep137 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %conv37.i171, i8* %scevgep137, align 1
  %37 = load i8, i8* %x, align 1
  %38 = load i8, i8* %arraydecay8, align 1
  %call54.i187 = call zeroext i8 @mult(i8 zeroext %37, i8 zeroext %38) #3
  store i8 %call54.i187, i8* %arraydecay9, align 1
  %scevgep121.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %39 = load i8, i8* %scevgep121.1, align 1
  %conv68.i199.1 = zext i8 %39 to i32
  %40 = load i8, i8* %arraydecay9, align 1
  %conv71.i202.1 = zext i8 %40 to i32
  %xor72.i203.1 = xor i32 %conv71.i202.1, %conv68.i199.1
  %conv73.i204.1 = trunc i32 %xor72.i203.1 to i8
  store i8 %conv73.i204.1, i8* %arraydecay9, align 1
  %scevgep120 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 1, i64 0
  %41 = bitcast i8* %scevgep120 to [2 x [2 x i8]]*
  %arrayidx51.i184.1 = getelementptr inbounds i8, i8* %x, i64 1
  %42 = load i8, i8* %arrayidx51.i184.1, align 1
  %arrayidx53.i186.1 = getelementptr inbounds i8, i8* %arraydecay8, i64 1
  %43 = load i8, i8* %arrayidx53.i186.1, align 1
  %call54.i187.1 = call zeroext i8 @mult(i8 zeroext %42, i8 zeroext %43) #3
  %arrayidx56.i189.1 = getelementptr inbounds i8, i8* %arraydecay9, i64 1
  store i8 %call54.i187.1, i8* %arrayidx56.i189.1, align 1
  %arrayidx70.i201.1 = getelementptr inbounds i8, i8* %arraydecay9, i64 1
  %scevgep121.1223 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %41, i64 0, i64 0, i64 0
  %44 = load i8, i8* %scevgep121.1223, align 1
  %conv68.i199.1224 = zext i8 %44 to i32
  %45 = load i8, i8* %arrayidx70.i201.1, align 1
  %conv71.i202.1225 = zext i8 %45 to i32
  %xor72.i203.1226 = xor i32 %conv71.i202.1225, %conv68.i199.1224
  %conv73.i204.1227 = trunc i32 %xor72.i203.1226 to i8
  store i8 %conv73.i204.1227, i8* %arrayidx70.i201.1, align 1
  %call80.i210 = call zeroext i8 @mult(i8 zeroext %call.i109, i8 zeroext %call1.i110) #3
  %conv81.i211 = zext i8 %call80.i210 to i32
  %scevgep111 = getelementptr [2 x i8], [2 x i8]* %e5, i64 0, i64 0
  %46 = load i8, i8* %scevgep111, align 1
  %scevgep111.1 = getelementptr [2 x i8], [2 x i8]* %e5, i64 0, i64 1
  %47 = load i8, i8* %scevgep111.1, align 1
  %conv.i.i113.i218.1 = zext i8 %47 to i32
  %conv1.i.i114.i219.1 = zext i8 %46 to i32
  %xor.i.i115.i220.1 = xor i32 %conv1.i.i114.i219.1, %conv.i.i113.i218.1
  %conv2.i.i116.i221.1 = trunc i32 %xor.i.i115.i220.1 to i8
  %conv83.i224 = zext i8 %conv2.i.i116.i221.1 to i32
  %cmp84.i225 = icmp eq i32 %conv81.i211, %conv83.i224
  call void @assert(i1 zeroext %cmp84.i225) #3
  %arraydecay10 = getelementptr inbounds [2 x i8], [2 x i8]* %e3, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [2 x i8], [2 x i8]* %e4, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [2 x i8], [2 x i8]* %e7, i64 0, i64 0
  %call.i252 = call zeroext i8 (...) @rand() #3
  %call1.i253 = call zeroext i8 (...) @rand() #3
  %conv.i254 = zext i8 %call.i252 to i32
  %scevgep107 = getelementptr [2 x i8], [2 x i8]* %e3, i64 0, i64 0
  %48 = load i8, i8* %scevgep107, align 1
  %scevgep107.1 = getelementptr [2 x i8], [2 x i8]* %e3, i64 0, i64 1
  %49 = load i8, i8* %scevgep107.1, align 1
  %conv.i.i.i260.1 = zext i8 %49 to i32
  %conv1.i.i.i261.1 = zext i8 %48 to i32
  %xor.i.i.i262.1 = xor i32 %conv1.i.i.i261.1, %conv.i.i.i260.1
  %conv2.i.i.i263.1 = trunc i32 %xor.i.i.i262.1 to i8
  %conv3.i266 = zext i8 %conv2.i.i.i263.1 to i32
  %cmp.i267 = icmp eq i32 %conv.i254, %conv3.i266
  call void @assume(i1 zeroext %cmp.i267) #3
  %conv5.i268 = zext i8 %call1.i253 to i32
  %scevgep103 = getelementptr [2 x i8], [2 x i8]* %e4, i64 0, i64 0
  %50 = load i8, i8* %scevgep103, align 1
  %scevgep103.1 = getelementptr [2 x i8], [2 x i8]* %e4, i64 0, i64 1
  %51 = load i8, i8* %scevgep103.1, align 1
  %conv.i.i96.i275.1 = zext i8 %51 to i32
  %conv1.i.i97.i276.1 = zext i8 %50 to i32
  %xor.i.i98.i277.1 = xor i32 %conv1.i.i97.i276.1, %conv.i.i96.i275.1
  %conv2.i.i99.i278.1 = trunc i32 %xor.i.i98.i277.1 to i8
  %conv7.i281 = zext i8 %conv2.i.i99.i278.1 to i32
  %cmp8.i282 = icmp eq i32 %conv5.i268, %conv7.i281
  call void @assume(i1 zeroext %cmp8.i282) #3
  %call16.i290 = call zeroext i8 (...) @rand() #3
  %scevgep87 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i290, i8* %scevgep87, align 1
  %scevgep88 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %52 = load i8, i8* %scevgep88, align 1
  %conv23.i299 = zext i8 %52 to i32
  %53 = load i8, i8* %arraydecay10, align 1
  %scevgep91 = getelementptr [2 x i8], [2 x i8]* %e4, i64 0, i64 1
  %54 = load i8, i8* %scevgep91, align 1
  %call28.i304 = call zeroext i8 @mult(i8 zeroext %53, i8 zeroext %54) #3
  %conv29.i305 = zext i8 %call28.i304 to i32
  %xor.i306 = xor i32 %conv23.i299, %conv29.i305
  %scevgep94 = getelementptr [2 x i8], [2 x i8]* %e3, i64 0, i64 1
  %55 = load i8, i8* %scevgep94, align 1
  %56 = load i8, i8* %arraydecay11, align 1
  %call34.i311 = call zeroext i8 @mult(i8 zeroext %55, i8 zeroext %56) #3
  %conv35.i312 = zext i8 %call34.i311 to i32
  %xor36.i313 = xor i32 %xor.i306, %conv35.i312
  %conv37.i314 = trunc i32 %xor36.i313 to i8
  %scevgep95 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %conv37.i314, i8* %scevgep95, align 1
  %57 = load i8, i8* %arraydecay10, align 1
  %58 = load i8, i8* %arraydecay11, align 1
  %call54.i330 = call zeroext i8 @mult(i8 zeroext %57, i8 zeroext %58) #3
  store i8 %call54.i330, i8* %arraydecay12, align 1
  %scevgep80.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %59 = load i8, i8* %scevgep80.1, align 1
  %conv68.i342.1 = zext i8 %59 to i32
  %60 = load i8, i8* %arraydecay12, align 1
  %conv71.i345.1 = zext i8 %60 to i32
  %xor72.i346.1 = xor i32 %conv71.i345.1, %conv68.i342.1
  %conv73.i347.1 = trunc i32 %xor72.i346.1 to i8
  store i8 %conv73.i347.1, i8* %arraydecay12, align 1
  %scevgep79 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 1, i64 0
  %61 = bitcast i8* %scevgep79 to [2 x [2 x i8]]*
  %arrayidx51.i327.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %62 = load i8, i8* %arrayidx51.i327.1, align 1
  %arrayidx53.i329.1 = getelementptr inbounds i8, i8* %arraydecay11, i64 1
  %63 = load i8, i8* %arrayidx53.i329.1, align 1
  %call54.i330.1 = call zeroext i8 @mult(i8 zeroext %62, i8 zeroext %63) #3
  %arrayidx56.i332.1 = getelementptr inbounds i8, i8* %arraydecay12, i64 1
  store i8 %call54.i330.1, i8* %arrayidx56.i332.1, align 1
  %arrayidx70.i344.1 = getelementptr inbounds i8, i8* %arraydecay12, i64 1
  %scevgep80.1214 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %61, i64 0, i64 0, i64 0
  %64 = load i8, i8* %scevgep80.1214, align 1
  %conv68.i342.1215 = zext i8 %64 to i32
  %65 = load i8, i8* %arrayidx70.i344.1, align 1
  %conv71.i345.1216 = zext i8 %65 to i32
  %xor72.i346.1217 = xor i32 %conv71.i345.1216, %conv68.i342.1215
  %conv73.i347.1218 = trunc i32 %xor72.i346.1217 to i8
  store i8 %conv73.i347.1218, i8* %arrayidx70.i344.1, align 1
  %call80.i353 = call zeroext i8 @mult(i8 zeroext %call.i252, i8 zeroext %call1.i253) #3
  %conv81.i354 = zext i8 %call80.i353 to i32
  %scevgep70 = getelementptr [2 x i8], [2 x i8]* %e7, i64 0, i64 0
  %66 = load i8, i8* %scevgep70, align 1
  %scevgep70.1 = getelementptr [2 x i8], [2 x i8]* %e7, i64 0, i64 1
  %67 = load i8, i8* %scevgep70.1, align 1
  %conv.i.i113.i361.1 = zext i8 %67 to i32
  %conv1.i.i114.i362.1 = zext i8 %66 to i32
  %xor.i.i115.i363.1 = xor i32 %conv1.i.i114.i362.1, %conv.i.i113.i361.1
  %conv2.i.i116.i364.1 = trunc i32 %xor.i.i115.i363.1 to i8
  %conv83.i367 = zext i8 %conv2.i.i116.i364.1 to i32
  %cmp84.i368 = icmp eq i32 %conv81.i354, %conv83.i367
  call void @assert(i1 zeroext %cmp84.i368) #3
  %scevgep65 = getelementptr [2 x i8], [2 x i8]* %e3, i64 0, i64 0
  %68 = load i8, i8* %scevgep65, align 1
  %call.i378 = call zeroext i8 @L3(i8 zeroext %68) #3
  %scevgep66 = getelementptr [2 x i8], [2 x i8]* %l3, i64 0, i64 0
  store i8 %call.i378, i8* %scevgep66, align 1
  %scevgep65.1 = getelementptr [2 x i8], [2 x i8]* %e3, i64 0, i64 1
  %69 = load i8, i8* %scevgep65.1, align 1
  %call.i378.1 = call zeroext i8 @L3(i8 zeroext %69) #3
  %scevgep66.1 = getelementptr [2 x i8], [2 x i8]* %l3, i64 0, i64 1
  store i8 %call.i378.1, i8* %scevgep66.1, align 1
  %scevgep60 = getelementptr [2 x i8], [2 x i8]* %e5, i64 0, i64 0
  %70 = load i8, i8* %scevgep60, align 1
  %call.i393 = call zeroext i8 @L5(i8 zeroext %70) #3
  %scevgep61 = getelementptr [2 x i8], [2 x i8]* %l5, i64 0, i64 0
  store i8 %call.i393, i8* %scevgep61, align 1
  %scevgep60.1 = getelementptr [2 x i8], [2 x i8]* %e5, i64 0, i64 1
  %71 = load i8, i8* %scevgep60.1, align 1
  %call.i393.1 = call zeroext i8 @L5(i8 zeroext %71) #3
  %scevgep61.1 = getelementptr [2 x i8], [2 x i8]* %l5, i64 0, i64 1
  store i8 %call.i393.1, i8* %scevgep61.1, align 1
  %scevgep55 = getelementptr [2 x i8], [2 x i8]* %e7, i64 0, i64 0
  %72 = load i8, i8* %scevgep55, align 1
  %call.i408 = call zeroext i8 @L7(i8 zeroext %72) #3
  %scevgep56 = getelementptr [2 x i8], [2 x i8]* %l7, i64 0, i64 0
  store i8 %call.i408, i8* %scevgep56, align 1
  %scevgep55.1 = getelementptr [2 x i8], [2 x i8]* %e7, i64 0, i64 1
  %73 = load i8, i8* %scevgep55.1, align 1
  %call.i408.1 = call zeroext i8 @L7(i8 zeroext %73) #3
  %scevgep56.1 = getelementptr [2 x i8], [2 x i8]* %l7, i64 0, i64 1
  store i8 %call.i408.1, i8* %scevgep56.1, align 1
  %scevgep47 = getelementptr [2 x i8], [2 x i8]* %l1, i64 0, i64 0
  %74 = load i8, i8* %scevgep47, align 1
  %conv21 = zext i8 %74 to i32
  %scevgep48 = getelementptr [2 x i8], [2 x i8]* %l3, i64 0, i64 0
  %75 = load i8, i8* %scevgep48, align 1
  %conv24 = zext i8 %75 to i32
  %xor = xor i32 %conv21, %conv24
  %scevgep49 = getelementptr [2 x i8], [2 x i8]* %l5, i64 0, i64 0
  %76 = load i8, i8* %scevgep49, align 1
  %conv27 = zext i8 %76 to i32
  %xor28 = xor i32 %xor, %conv27
  %scevgep50 = getelementptr [2 x i8], [2 x i8]* %l7, i64 0, i64 0
  %77 = load i8, i8* %scevgep50, align 1
  %conv31 = zext i8 %77 to i32
  %xor32 = xor i32 %xor28, %conv31
  %conv33 = trunc i32 %xor32 to i8
  store i8 %conv33, i8* %y, align 1
  %scevgep47.1 = getelementptr [2 x i8], [2 x i8]* %l1, i64 0, i64 1
  %78 = load i8, i8* %scevgep47.1, align 1
  %conv21.1 = zext i8 %78 to i32
  %scevgep48.1 = getelementptr [2 x i8], [2 x i8]* %l3, i64 0, i64 1
  %79 = load i8, i8* %scevgep48.1, align 1
  %conv24.1 = zext i8 %79 to i32
  %xor.1 = xor i32 %conv21.1, %conv24.1
  %scevgep49.1 = getelementptr [2 x i8], [2 x i8]* %l5, i64 0, i64 1
  %80 = load i8, i8* %scevgep49.1, align 1
  %conv27.1 = zext i8 %80 to i32
  %xor28.1 = xor i32 %xor.1, %conv27.1
  %scevgep50.1 = getelementptr [2 x i8], [2 x i8]* %l7, i64 0, i64 1
  %81 = load i8, i8* %scevgep50.1, align 1
  %conv31.1 = zext i8 %81 to i32
  %xor32.1 = xor i32 %xor28.1, %conv31.1
  %conv33.1 = trunc i32 %xor32.1 to i8
  %scevgep51.1 = getelementptr i8, i8* %y, i64 1
  store i8 %conv33.1, i8* %scevgep51.1, align 1
  %82 = load i8, i8* %y, align 1
  %conv37 = zext i8 %82 to i32
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
  %83 = load i8, i8* %y, align 1
  %scevgep.1 = getelementptr i8, i8* %y, i64 1
  %84 = load i8, i8* %scevgep.1, align 1
  %conv.i.i432.1 = zext i8 %84 to i32
  %conv1.i.i433.1 = zext i8 %83 to i32
  %xor.i.i434.1 = xor i32 %conv1.i.i433.1, %conv.i.i432.1
  %conv2.i.i435.1 = trunc i32 %xor.i.i434.1 to i8
  %conv43 = zext i8 %conv2.i.i435.1 to i32
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
