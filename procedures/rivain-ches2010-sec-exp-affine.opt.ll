; ModuleID = '../examples/rivain-ches2010-sec-exp-affine.ll'
source_filename = "../examples/rivain-ches2010-sec-exp-affine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 2, align 4
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
  %r.i = alloca [3 x [3 x i8]], align 1
  %z = alloca [3 x i8], align 1
  %w = alloca [3 x i8], align 1
  %u = alloca [3 x i8], align 1
  %v = alloca [3 x i8], align 1
  %m = alloca [3 x i8], align 1
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
  %conv2 = zext i8 %conv2.i.i.2 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %3 = load i8, i8* %x, align 1
  %call.i = call zeroext i8 @square(i8 zeroext %3) #3
  %scevgep278 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 0
  store i8 %call.i, i8* %scevgep278, align 1
  %scevgep277.1 = getelementptr i8, i8* %x, i64 1
  %4 = load i8, i8* %scevgep277.1, align 1
  %call.i.1 = call zeroext i8 @square(i8 zeroext %4) #3
  %scevgep278.1 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 1
  store i8 %call.i.1, i8* %scevgep278.1, align 1
  %scevgep277.2 = getelementptr i8, i8* %x, i64 2
  %5 = load i8, i8* %scevgep277.2, align 1
  %call.i.2 = call zeroext i8 @square(i8 zeroext %5) #3
  %scevgep278.2 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 2
  store i8 %call.i.2, i8* %scevgep278.2, align 1
  %arraydecay4 = getelementptr inbounds [3 x i8], [3 x i8]* %z, i64 0, i64 0
  %call.i28 = call zeroext i8 (...) @rand() #3
  %conv.i = zext i8 %call.i28 to i32
  %scevgep273 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 0
  %6 = load i8, i8* %scevgep273, align 1
  %scevgep273.1 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 1
  %7 = load i8, i8* %scevgep273.1, align 1
  %conv.i.i.i.1 = zext i8 %7 to i32
  %conv1.i.i.i.1 = zext i8 %6 to i32
  %xor.i.i.i.1 = xor i32 %conv1.i.i.i.1, %conv.i.i.i.1
  %conv2.i.i.i.1 = trunc i32 %xor.i.i.i.1 to i8
  %scevgep273.2 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 2
  %8 = load i8, i8* %scevgep273.2, align 1
  %conv.i.i.i.2 = zext i8 %8 to i32
  %conv1.i.i.i.2 = zext i8 %conv2.i.i.i.1 to i32
  %xor.i.i.i.2 = xor i32 %conv1.i.i.i.2, %conv.i.i.i.2
  %conv2.i.i.i.2 = trunc i32 %xor.i.i.i.2 to i8
  %conv2.i = zext i8 %conv2.i.i.i.2 to i32
  %cmp.i29 = icmp eq i32 %conv.i, %conv2.i
  call void @assume(i1 zeroext %cmp.i29) #3
  %call7.i = call zeroext i8 (...) @rand() #3
  %conv8.i = zext i8 %call7.i to i32
  %9 = load i8, i8* %arraydecay4, align 1
  %conv9.i = zext i8 %9 to i32
  %xor.i = xor i32 %conv9.i, %conv8.i
  %conv10.i = trunc i32 %xor.i to i8
  store i8 %conv10.i, i8* %arraydecay4, align 1
  %conv11.i = zext i8 %call7.i to i32
  %scevgep269 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 1
  %10 = load i8, i8* %scevgep269, align 1
  %conv13.i = zext i8 %10 to i32
  %xor14.i = xor i32 %conv13.i, %conv11.i
  %conv15.i = trunc i32 %xor14.i to i8
  store i8 %conv15.i, i8* %scevgep269, align 1
  %call7.i.1 = call zeroext i8 (...) @rand() #3
  %conv8.i.1 = zext i8 %call7.i.1 to i32
  %11 = load i8, i8* %arraydecay4, align 1
  %conv9.i.1 = zext i8 %11 to i32
  %xor.i.1 = xor i32 %conv9.i.1, %conv8.i.1
  %conv10.i.1 = trunc i32 %xor.i.1 to i8
  store i8 %conv10.i.1, i8* %arraydecay4, align 1
  %conv11.i.1 = zext i8 %call7.i.1 to i32
  %scevgep269.1 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 2
  %12 = load i8, i8* %scevgep269.1, align 1
  %conv13.i.1 = zext i8 %12 to i32
  %xor14.i.1 = xor i32 %conv13.i.1, %conv11.i.1
  %conv15.i.1 = trunc i32 %xor14.i.1 to i8
  store i8 %conv15.i.1, i8* %scevgep269.1, align 1
  %conv16.i = zext i8 %call.i28 to i32
  %scevgep265 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 0
  %13 = load i8, i8* %scevgep265, align 1
  %scevgep265.1 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 1
  %14 = load i8, i8* %scevgep265.1, align 1
  %conv.i.i31.i.1 = zext i8 %14 to i32
  %conv1.i.i32.i.1 = zext i8 %13 to i32
  %xor.i.i33.i.1 = xor i32 %conv1.i.i32.i.1, %conv.i.i31.i.1
  %conv2.i.i34.i.1 = trunc i32 %xor.i.i33.i.1 to i8
  %scevgep265.2 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 2
  %15 = load i8, i8* %scevgep265.2, align 1
  %conv.i.i31.i.2 = zext i8 %15 to i32
  %conv1.i.i32.i.2 = zext i8 %conv2.i.i34.i.1 to i32
  %xor.i.i33.i.2 = xor i32 %conv1.i.i32.i.2, %conv.i.i31.i.2
  %conv2.i.i34.i.2 = trunc i32 %xor.i.i33.i.2 to i8
  %conv18.i = zext i8 %conv2.i.i34.i.2 to i32
  %cmp19.i = icmp eq i32 %conv16.i, %conv18.i
  call void @assert(i1 zeroext %cmp19.i) #3
  %arraydecay5 = getelementptr inbounds [3 x i8], [3 x i8]* %z, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [3 x i8], [3 x i8]* %u, i64 0, i64 0
  %call.i41 = call zeroext i8 (...) @rand() #3
  %call1.i = call zeroext i8 (...) @rand() #3
  %conv.i42 = zext i8 %call.i41 to i32
  %scevgep261 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 0
  %16 = load i8, i8* %scevgep261, align 1
  %scevgep261.1 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 1
  %17 = load i8, i8* %scevgep261.1, align 1
  %conv.i.i.i48.1 = zext i8 %17 to i32
  %conv1.i.i.i49.1 = zext i8 %16 to i32
  %xor.i.i.i50.1 = xor i32 %conv1.i.i.i49.1, %conv.i.i.i48.1
  %conv2.i.i.i51.1 = trunc i32 %xor.i.i.i50.1 to i8
  %scevgep261.2 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 2
  %18 = load i8, i8* %scevgep261.2, align 1
  %conv.i.i.i48.2 = zext i8 %18 to i32
  %conv1.i.i.i49.2 = zext i8 %conv2.i.i.i51.1 to i32
  %xor.i.i.i50.2 = xor i32 %conv1.i.i.i49.2, %conv.i.i.i48.2
  %conv2.i.i.i51.2 = trunc i32 %xor.i.i.i50.2 to i8
  %conv3.i = zext i8 %conv2.i.i.i51.2 to i32
  %cmp.i54 = icmp eq i32 %conv.i42, %conv3.i
  call void @assume(i1 zeroext %cmp.i54) #3
  %conv5.i = zext i8 %call1.i to i32
  %19 = load i8, i8* %x, align 1
  %scevgep257.1 = getelementptr i8, i8* %x, i64 1
  %20 = load i8, i8* %scevgep257.1, align 1
  %conv.i.i96.i.1 = zext i8 %20 to i32
  %conv1.i.i97.i.1 = zext i8 %19 to i32
  %xor.i.i98.i.1 = xor i32 %conv1.i.i97.i.1, %conv.i.i96.i.1
  %conv2.i.i99.i.1 = trunc i32 %xor.i.i98.i.1 to i8
  %scevgep257.2 = getelementptr i8, i8* %x, i64 2
  %21 = load i8, i8* %scevgep257.2, align 1
  %conv.i.i96.i.2 = zext i8 %21 to i32
  %conv1.i.i97.i.2 = zext i8 %conv2.i.i99.i.1 to i32
  %xor.i.i98.i.2 = xor i32 %conv1.i.i97.i.2, %conv.i.i96.i.2
  %conv2.i.i99.i.2 = trunc i32 %xor.i.i98.i.2 to i8
  %conv7.i = zext i8 %conv2.i.i99.i.2 to i32
  %cmp8.i = icmp eq i32 %conv5.i, %conv7.i
  call void @assume(i1 zeroext %cmp8.i) #3
  %scevgep234 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %scevgep234235 = bitcast i8* %scevgep234 to [3 x [3 x i8]]*
  %scevgep247 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 1, i64 0
  %scevgep247248 = bitcast i8* %scevgep247 to [3 x [3 x i8]]*
  %call16.i = call zeroext i8 (...) @rand() #3
  store i8 %call16.i, i8* %scevgep234, align 1
  %22 = load i8, i8* %scevgep234, align 1
  %conv23.i = zext i8 %22 to i32
  %23 = load i8, i8* %arraydecay5, align 1
  %scevgep245 = getelementptr i8, i8* %x, i64 1
  %24 = load i8, i8* %scevgep245, align 1
  %call28.i = call zeroext i8 @mult(i8 zeroext %23, i8 zeroext %24) #3
  %conv29.i = zext i8 %call28.i to i32
  %xor.i60 = xor i32 %conv23.i, %conv29.i
  %scevgep246 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 1
  %25 = load i8, i8* %scevgep246, align 1
  %26 = load i8, i8* %x, align 1
  %call34.i = call zeroext i8 @mult(i8 zeroext %25, i8 zeroext %26) #3
  %conv35.i = zext i8 %call34.i to i32
  %xor36.i = xor i32 %xor.i60, %conv35.i
  %conv37.i = trunc i32 %xor36.i to i8
  store i8 %conv37.i, i8* %scevgep247, align 1
  %scevgep239 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep234235, i64 0, i64 0, i64 1
  %scevgep252 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep247248, i64 0, i64 1, i64 0
  %call16.i.1397 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1397, i8* %scevgep239, align 1
  %27 = load i8, i8* %scevgep239, align 1
  %conv23.i.1398 = zext i8 %27 to i32
  %28 = load i8, i8* %arraydecay5, align 1
  %scevgep245.1399 = getelementptr i8, i8* %x, i64 2
  %29 = load i8, i8* %scevgep245.1399, align 1
  %call28.i.1400 = call zeroext i8 @mult(i8 zeroext %28, i8 zeroext %29) #3
  %conv29.i.1401 = zext i8 %call28.i.1400 to i32
  %xor.i60.1402 = xor i32 %conv23.i.1398, %conv29.i.1401
  %scevgep246.1403 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 2
  %30 = load i8, i8* %scevgep246.1403, align 1
  %31 = load i8, i8* %x, align 1
  %call34.i.1404 = call zeroext i8 @mult(i8 zeroext %30, i8 zeroext %31) #3
  %conv35.i.1405 = zext i8 %call34.i.1404 to i32
  %xor36.i.1406 = xor i32 %xor.i60.1402, %conv35.i.1405
  %conv37.i.1407 = trunc i32 %xor36.i.1406 to i8
  store i8 %conv37.i.1407, i8* %scevgep252, align 1
  %scevgep237 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep234235, i64 0, i64 1, i64 1
  %scevgep250 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep247248, i64 0, i64 1, i64 1
  %arrayidx25.i.1 = getelementptr inbounds i8, i8* %arraydecay5, i64 1
  %arrayidx33.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %call16.i.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1, i8* %scevgep237, align 1
  %32 = load i8, i8* %scevgep237, align 1
  %conv23.i.1 = zext i8 %32 to i32
  %33 = load i8, i8* %arrayidx25.i.1, align 1
  %scevgep245.1 = getelementptr i8, i8* %x, i64 2
  %34 = load i8, i8* %scevgep245.1, align 1
  %call28.i.1 = call zeroext i8 @mult(i8 zeroext %33, i8 zeroext %34) #3
  %conv29.i.1 = zext i8 %call28.i.1 to i32
  %xor.i60.1 = xor i32 %conv23.i.1, %conv29.i.1
  %scevgep246.1 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 2
  %35 = load i8, i8* %scevgep246.1, align 1
  %36 = load i8, i8* %arrayidx33.i.1, align 1
  %call34.i.1 = call zeroext i8 @mult(i8 zeroext %35, i8 zeroext %36) #3
  %conv35.i.1 = zext i8 %call34.i.1 to i32
  %xor36.i.1 = xor i32 %xor.i60.1, %conv35.i.1
  %conv37.i.1 = trunc i32 %xor36.i.1 to i8
  store i8 %conv37.i.1, i8* %scevgep250, align 1
  %37 = load i8, i8* %arraydecay5, align 1
  %38 = load i8, i8* %x, align 1
  %call54.i = call zeroext i8 @mult(i8 zeroext %37, i8 zeroext %38) #3
  store i8 %call54.i, i8* %arraydecay6, align 1
  %scevgep230.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %39 = load i8, i8* %scevgep230.1, align 1
  %conv68.i.1 = zext i8 %39 to i32
  %40 = load i8, i8* %arraydecay6, align 1
  %conv71.i.1 = zext i8 %40 to i32
  %xor72.i.1 = xor i32 %conv71.i.1, %conv68.i.1
  %conv73.i.1 = trunc i32 %xor72.i.1 to i8
  store i8 %conv73.i.1, i8* %arraydecay6, align 1
  %scevgep230.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 2
  %41 = load i8, i8* %scevgep230.2, align 1
  %conv68.i.2 = zext i8 %41 to i32
  %42 = load i8, i8* %arraydecay6, align 1
  %conv71.i.2 = zext i8 %42 to i32
  %xor72.i.2 = xor i32 %conv71.i.2, %conv68.i.2
  %conv73.i.2 = trunc i32 %xor72.i.2 to i8
  store i8 %conv73.i.2, i8* %arraydecay6, align 1
  %scevgep229 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 1, i64 0
  %43 = bitcast i8* %scevgep229 to [3 x [3 x i8]]*
  %arrayidx51.i.1 = getelementptr inbounds i8, i8* %arraydecay5, i64 1
  %44 = load i8, i8* %arrayidx51.i.1, align 1
  %arrayidx53.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %45 = load i8, i8* %arrayidx53.i.1, align 1
  %call54.i.1 = call zeroext i8 @mult(i8 zeroext %44, i8 zeroext %45) #3
  %arrayidx56.i.1 = getelementptr inbounds i8, i8* %arraydecay6, i64 1
  store i8 %call54.i.1, i8* %arrayidx56.i.1, align 1
  %arrayidx70.i.1 = getelementptr inbounds i8, i8* %arraydecay6, i64 1
  %scevgep230.1340 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %43, i64 0, i64 0, i64 0
  %46 = load i8, i8* %scevgep230.1340, align 1
  %conv68.i.1341 = zext i8 %46 to i32
  %47 = load i8, i8* %arrayidx70.i.1, align 1
  %conv71.i.1342 = zext i8 %47 to i32
  %xor72.i.1343 = xor i32 %conv71.i.1342, %conv68.i.1341
  %conv73.i.1344 = trunc i32 %xor72.i.1343 to i8
  store i8 %conv73.i.1344, i8* %arrayidx70.i.1, align 1
  %scevgep230.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %43, i64 0, i64 0, i64 2
  %48 = load i8, i8* %scevgep230.2.1, align 1
  %conv68.i.2.1 = zext i8 %48 to i32
  %49 = load i8, i8* %arrayidx70.i.1, align 1
  %conv71.i.2.1 = zext i8 %49 to i32
  %xor72.i.2.1 = xor i32 %conv71.i.2.1, %conv68.i.2.1
  %conv73.i.2.1 = trunc i32 %xor72.i.2.1 to i8
  store i8 %conv73.i.2.1, i8* %arrayidx70.i.1, align 1
  %scevgep229.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %43, i64 0, i64 1, i64 0
  %50 = bitcast i8* %scevgep229.1 to [3 x [3 x i8]]*
  %arrayidx51.i.2 = getelementptr inbounds i8, i8* %arraydecay5, i64 2
  %51 = load i8, i8* %arrayidx51.i.2, align 1
  %arrayidx53.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %52 = load i8, i8* %arrayidx53.i.2, align 1
  %call54.i.2 = call zeroext i8 @mult(i8 zeroext %51, i8 zeroext %52) #3
  %arrayidx56.i.2 = getelementptr inbounds i8, i8* %arraydecay6, i64 2
  store i8 %call54.i.2, i8* %arrayidx56.i.2, align 1
  %arrayidx70.i.2 = getelementptr inbounds i8, i8* %arraydecay6, i64 2
  %scevgep230.2349 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %50, i64 0, i64 0, i64 0
  %53 = load i8, i8* %scevgep230.2349, align 1
  %conv68.i.2350 = zext i8 %53 to i32
  %54 = load i8, i8* %arrayidx70.i.2, align 1
  %conv71.i.2351 = zext i8 %54 to i32
  %xor72.i.2352 = xor i32 %conv71.i.2351, %conv68.i.2350
  %conv73.i.2353 = trunc i32 %xor72.i.2352 to i8
  store i8 %conv73.i.2353, i8* %arrayidx70.i.2, align 1
  %scevgep230.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %50, i64 0, i64 0, i64 1
  %55 = load i8, i8* %scevgep230.1.2, align 1
  %conv68.i.1.2 = zext i8 %55 to i32
  %56 = load i8, i8* %arrayidx70.i.2, align 1
  %conv71.i.1.2 = zext i8 %56 to i32
  %xor72.i.1.2 = xor i32 %conv71.i.1.2, %conv68.i.1.2
  %conv73.i.1.2 = trunc i32 %xor72.i.1.2 to i8
  store i8 %conv73.i.1.2, i8* %arrayidx70.i.2, align 1
  %call80.i = call zeroext i8 @mult(i8 zeroext %call.i41, i8 zeroext %call1.i) #3
  %conv81.i = zext i8 %call80.i to i32
  %scevgep220 = getelementptr [3 x i8], [3 x i8]* %u, i64 0, i64 0
  %57 = load i8, i8* %scevgep220, align 1
  %scevgep220.1 = getelementptr [3 x i8], [3 x i8]* %u, i64 0, i64 1
  %58 = load i8, i8* %scevgep220.1, align 1
  %conv.i.i113.i.1 = zext i8 %58 to i32
  %conv1.i.i114.i.1 = zext i8 %57 to i32
  %xor.i.i115.i.1 = xor i32 %conv1.i.i114.i.1, %conv.i.i113.i.1
  %conv2.i.i116.i.1 = trunc i32 %xor.i.i115.i.1 to i8
  %scevgep220.2 = getelementptr [3 x i8], [3 x i8]* %u, i64 0, i64 2
  %59 = load i8, i8* %scevgep220.2, align 1
  %conv.i.i113.i.2 = zext i8 %59 to i32
  %conv1.i.i114.i.2 = zext i8 %conv2.i.i116.i.1 to i32
  %xor.i.i115.i.2 = xor i32 %conv1.i.i114.i.2, %conv.i.i113.i.2
  %conv2.i.i116.i.2 = trunc i32 %xor.i.i115.i.2 to i8
  %conv83.i = zext i8 %conv2.i.i116.i.2 to i32
  %cmp84.i = icmp eq i32 %conv81.i, %conv83.i
  call void @assert(i1 zeroext %cmp84.i) #3
  %scevgep215 = getelementptr [3 x i8], [3 x i8]* %u, i64 0, i64 0
  %60 = load i8, i8* %scevgep215, align 1
  %call.i71 = call zeroext i8 @exp4(i8 zeroext %60) #3
  %scevgep216 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 0
  store i8 %call.i71, i8* %scevgep216, align 1
  %scevgep215.1 = getelementptr [3 x i8], [3 x i8]* %u, i64 0, i64 1
  %61 = load i8, i8* %scevgep215.1, align 1
  %call.i71.1 = call zeroext i8 @exp4(i8 zeroext %61) #3
  %scevgep216.1 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 1
  store i8 %call.i71.1, i8* %scevgep216.1, align 1
  %scevgep215.2 = getelementptr [3 x i8], [3 x i8]* %u, i64 0, i64 2
  %62 = load i8, i8* %scevgep215.2, align 1
  %call.i71.2 = call zeroext i8 @exp4(i8 zeroext %62) #3
  %scevgep216.2 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 2
  store i8 %call.i71.2, i8* %scevgep216.2, align 1
  %arraydecay9 = getelementptr inbounds [3 x i8], [3 x i8]* %w, i64 0, i64 0
  %call.i92 = call zeroext i8 (...) @rand() #3
  %conv.i93 = zext i8 %call.i92 to i32
  %scevgep211 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 0
  %63 = load i8, i8* %scevgep211, align 1
  %scevgep211.1 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 1
  %64 = load i8, i8* %scevgep211.1, align 1
  %conv.i.i.i99.1 = zext i8 %64 to i32
  %conv1.i.i.i100.1 = zext i8 %63 to i32
  %xor.i.i.i101.1 = xor i32 %conv1.i.i.i100.1, %conv.i.i.i99.1
  %conv2.i.i.i102.1 = trunc i32 %xor.i.i.i101.1 to i8
  %scevgep211.2 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 2
  %65 = load i8, i8* %scevgep211.2, align 1
  %conv.i.i.i99.2 = zext i8 %65 to i32
  %conv1.i.i.i100.2 = zext i8 %conv2.i.i.i102.1 to i32
  %xor.i.i.i101.2 = xor i32 %conv1.i.i.i100.2, %conv.i.i.i99.2
  %conv2.i.i.i102.2 = trunc i32 %xor.i.i.i101.2 to i8
  %conv2.i105 = zext i8 %conv2.i.i.i102.2 to i32
  %cmp.i106 = icmp eq i32 %conv.i93, %conv2.i105
  call void @assume(i1 zeroext %cmp.i106) #3
  %call7.i111 = call zeroext i8 (...) @rand() #3
  %conv8.i112 = zext i8 %call7.i111 to i32
  %66 = load i8, i8* %arraydecay9, align 1
  %conv9.i113 = zext i8 %66 to i32
  %xor.i114 = xor i32 %conv9.i113, %conv8.i112
  %conv10.i115 = trunc i32 %xor.i114 to i8
  store i8 %conv10.i115, i8* %arraydecay9, align 1
  %conv11.i116 = zext i8 %call7.i111 to i32
  %scevgep207 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 1
  %67 = load i8, i8* %scevgep207, align 1
  %conv13.i119 = zext i8 %67 to i32
  %xor14.i120 = xor i32 %conv13.i119, %conv11.i116
  %conv15.i121 = trunc i32 %xor14.i120 to i8
  store i8 %conv15.i121, i8* %scevgep207, align 1
  %call7.i111.1 = call zeroext i8 (...) @rand() #3
  %conv8.i112.1 = zext i8 %call7.i111.1 to i32
  %68 = load i8, i8* %arraydecay9, align 1
  %conv9.i113.1 = zext i8 %68 to i32
  %xor.i114.1 = xor i32 %conv9.i113.1, %conv8.i112.1
  %conv10.i115.1 = trunc i32 %xor.i114.1 to i8
  store i8 %conv10.i115.1, i8* %arraydecay9, align 1
  %conv11.i116.1 = zext i8 %call7.i111.1 to i32
  %scevgep207.1 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 2
  %69 = load i8, i8* %scevgep207.1, align 1
  %conv13.i119.1 = zext i8 %69 to i32
  %xor14.i120.1 = xor i32 %conv13.i119.1, %conv11.i116.1
  %conv15.i121.1 = trunc i32 %xor14.i120.1 to i8
  store i8 %conv15.i121.1, i8* %scevgep207.1, align 1
  %conv16.i124 = zext i8 %call.i92 to i32
  %scevgep203 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 0
  %70 = load i8, i8* %scevgep203, align 1
  %scevgep203.1 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 1
  %71 = load i8, i8* %scevgep203.1, align 1
  %conv.i.i31.i131.1 = zext i8 %71 to i32
  %conv1.i.i32.i132.1 = zext i8 %70 to i32
  %xor.i.i33.i133.1 = xor i32 %conv1.i.i32.i132.1, %conv.i.i31.i131.1
  %conv2.i.i34.i134.1 = trunc i32 %xor.i.i33.i133.1 to i8
  %scevgep203.2 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 2
  %72 = load i8, i8* %scevgep203.2, align 1
  %conv.i.i31.i131.2 = zext i8 %72 to i32
  %conv1.i.i32.i132.2 = zext i8 %conv2.i.i34.i134.1 to i32
  %xor.i.i33.i133.2 = xor i32 %conv1.i.i32.i132.2, %conv.i.i31.i131.2
  %conv2.i.i34.i134.2 = trunc i32 %xor.i.i33.i133.2 to i8
  %conv18.i137 = zext i8 %conv2.i.i34.i134.2 to i32
  %cmp19.i138 = icmp eq i32 %conv16.i124, %conv18.i137
  call void @assert(i1 zeroext %cmp19.i138) #3
  %arraydecay10 = getelementptr inbounds [3 x i8], [3 x i8]* %u, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [3 x i8], [3 x i8]* %w, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [3 x i8], [3 x i8]* %v, i64 0, i64 0
  %call.i165 = call zeroext i8 (...) @rand() #3
  %call1.i166 = call zeroext i8 (...) @rand() #3
  %conv.i167 = zext i8 %call.i165 to i32
  %scevgep199 = getelementptr [3 x i8], [3 x i8]* %u, i64 0, i64 0
  %73 = load i8, i8* %scevgep199, align 1
  %scevgep199.1 = getelementptr [3 x i8], [3 x i8]* %u, i64 0, i64 1
  %74 = load i8, i8* %scevgep199.1, align 1
  %conv.i.i.i173.1 = zext i8 %74 to i32
  %conv1.i.i.i174.1 = zext i8 %73 to i32
  %xor.i.i.i175.1 = xor i32 %conv1.i.i.i174.1, %conv.i.i.i173.1
  %conv2.i.i.i176.1 = trunc i32 %xor.i.i.i175.1 to i8
  %scevgep199.2 = getelementptr [3 x i8], [3 x i8]* %u, i64 0, i64 2
  %75 = load i8, i8* %scevgep199.2, align 1
  %conv.i.i.i173.2 = zext i8 %75 to i32
  %conv1.i.i.i174.2 = zext i8 %conv2.i.i.i176.1 to i32
  %xor.i.i.i175.2 = xor i32 %conv1.i.i.i174.2, %conv.i.i.i173.2
  %conv2.i.i.i176.2 = trunc i32 %xor.i.i.i175.2 to i8
  %conv3.i179 = zext i8 %conv2.i.i.i176.2 to i32
  %cmp.i180 = icmp eq i32 %conv.i167, %conv3.i179
  call void @assume(i1 zeroext %cmp.i180) #3
  %conv5.i181 = zext i8 %call1.i166 to i32
  %scevgep195 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 0
  %76 = load i8, i8* %scevgep195, align 1
  %scevgep195.1 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 1
  %77 = load i8, i8* %scevgep195.1, align 1
  %conv.i.i96.i188.1 = zext i8 %77 to i32
  %conv1.i.i97.i189.1 = zext i8 %76 to i32
  %xor.i.i98.i190.1 = xor i32 %conv1.i.i97.i189.1, %conv.i.i96.i188.1
  %conv2.i.i99.i191.1 = trunc i32 %xor.i.i98.i190.1 to i8
  %scevgep195.2 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 2
  %78 = load i8, i8* %scevgep195.2, align 1
  %conv.i.i96.i188.2 = zext i8 %78 to i32
  %conv1.i.i97.i189.2 = zext i8 %conv2.i.i99.i191.1 to i32
  %xor.i.i98.i190.2 = xor i32 %conv1.i.i97.i189.2, %conv.i.i96.i188.2
  %conv2.i.i99.i191.2 = trunc i32 %xor.i.i98.i190.2 to i8
  %conv7.i194 = zext i8 %conv2.i.i99.i191.2 to i32
  %cmp8.i195 = icmp eq i32 %conv5.i181, %conv7.i194
  call void @assume(i1 zeroext %cmp8.i195) #3
  %scevgep172 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %scevgep172173 = bitcast i8* %scevgep172 to [3 x [3 x i8]]*
  %scevgep185 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 1, i64 0
  %scevgep185186 = bitcast i8* %scevgep185 to [3 x [3 x i8]]*
  %call16.i203 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i203, i8* %scevgep172, align 1
  %79 = load i8, i8* %scevgep172, align 1
  %conv23.i212 = zext i8 %79 to i32
  %80 = load i8, i8* %arraydecay10, align 1
  %scevgep183 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 1
  %81 = load i8, i8* %scevgep183, align 1
  %call28.i217 = call zeroext i8 @mult(i8 zeroext %80, i8 zeroext %81) #3
  %conv29.i218 = zext i8 %call28.i217 to i32
  %xor.i219 = xor i32 %conv23.i212, %conv29.i218
  %scevgep184 = getelementptr [3 x i8], [3 x i8]* %u, i64 0, i64 1
  %82 = load i8, i8* %scevgep184, align 1
  %83 = load i8, i8* %arraydecay11, align 1
  %call34.i224 = call zeroext i8 @mult(i8 zeroext %82, i8 zeroext %83) #3
  %conv35.i225 = zext i8 %call34.i224 to i32
  %xor36.i226 = xor i32 %xor.i219, %conv35.i225
  %conv37.i227 = trunc i32 %xor36.i226 to i8
  store i8 %conv37.i227, i8* %scevgep185, align 1
  %scevgep177 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep172173, i64 0, i64 0, i64 1
  %scevgep190 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep185186, i64 0, i64 1, i64 0
  %call16.i203.1384 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i203.1384, i8* %scevgep177, align 1
  %84 = load i8, i8* %scevgep177, align 1
  %conv23.i212.1385 = zext i8 %84 to i32
  %85 = load i8, i8* %arraydecay10, align 1
  %scevgep183.1386 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 2
  %86 = load i8, i8* %scevgep183.1386, align 1
  %call28.i217.1387 = call zeroext i8 @mult(i8 zeroext %85, i8 zeroext %86) #3
  %conv29.i218.1388 = zext i8 %call28.i217.1387 to i32
  %xor.i219.1389 = xor i32 %conv23.i212.1385, %conv29.i218.1388
  %scevgep184.1390 = getelementptr [3 x i8], [3 x i8]* %u, i64 0, i64 2
  %87 = load i8, i8* %scevgep184.1390, align 1
  %88 = load i8, i8* %arraydecay11, align 1
  %call34.i224.1391 = call zeroext i8 @mult(i8 zeroext %87, i8 zeroext %88) #3
  %conv35.i225.1392 = zext i8 %call34.i224.1391 to i32
  %xor36.i226.1393 = xor i32 %xor.i219.1389, %conv35.i225.1392
  %conv37.i227.1394 = trunc i32 %xor36.i226.1393 to i8
  store i8 %conv37.i227.1394, i8* %scevgep190, align 1
  %scevgep175 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep172173, i64 0, i64 1, i64 1
  %scevgep188 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep185186, i64 0, i64 1, i64 1
  %arrayidx25.i214.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %arrayidx33.i223.1 = getelementptr inbounds i8, i8* %arraydecay11, i64 1
  %call16.i203.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i203.1, i8* %scevgep175, align 1
  %89 = load i8, i8* %scevgep175, align 1
  %conv23.i212.1 = zext i8 %89 to i32
  %90 = load i8, i8* %arrayidx25.i214.1, align 1
  %scevgep183.1 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 2
  %91 = load i8, i8* %scevgep183.1, align 1
  %call28.i217.1 = call zeroext i8 @mult(i8 zeroext %90, i8 zeroext %91) #3
  %conv29.i218.1 = zext i8 %call28.i217.1 to i32
  %xor.i219.1 = xor i32 %conv23.i212.1, %conv29.i218.1
  %scevgep184.1 = getelementptr [3 x i8], [3 x i8]* %u, i64 0, i64 2
  %92 = load i8, i8* %scevgep184.1, align 1
  %93 = load i8, i8* %arrayidx33.i223.1, align 1
  %call34.i224.1 = call zeroext i8 @mult(i8 zeroext %92, i8 zeroext %93) #3
  %conv35.i225.1 = zext i8 %call34.i224.1 to i32
  %xor36.i226.1 = xor i32 %xor.i219.1, %conv35.i225.1
  %conv37.i227.1 = trunc i32 %xor36.i226.1 to i8
  store i8 %conv37.i227.1, i8* %scevgep188, align 1
  %94 = load i8, i8* %arraydecay10, align 1
  %95 = load i8, i8* %arraydecay11, align 1
  %call54.i243 = call zeroext i8 @mult(i8 zeroext %94, i8 zeroext %95) #3
  store i8 %call54.i243, i8* %arraydecay12, align 1
  %scevgep168.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %96 = load i8, i8* %scevgep168.1, align 1
  %conv68.i255.1 = zext i8 %96 to i32
  %97 = load i8, i8* %arraydecay12, align 1
  %conv71.i258.1 = zext i8 %97 to i32
  %xor72.i259.1 = xor i32 %conv71.i258.1, %conv68.i255.1
  %conv73.i260.1 = trunc i32 %xor72.i259.1 to i8
  store i8 %conv73.i260.1, i8* %arraydecay12, align 1
  %scevgep168.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 2
  %98 = load i8, i8* %scevgep168.2, align 1
  %conv68.i255.2 = zext i8 %98 to i32
  %99 = load i8, i8* %arraydecay12, align 1
  %conv71.i258.2 = zext i8 %99 to i32
  %xor72.i259.2 = xor i32 %conv71.i258.2, %conv68.i255.2
  %conv73.i260.2 = trunc i32 %xor72.i259.2 to i8
  store i8 %conv73.i260.2, i8* %arraydecay12, align 1
  %scevgep167 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 1, i64 0
  %100 = bitcast i8* %scevgep167 to [3 x [3 x i8]]*
  %arrayidx51.i240.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %101 = load i8, i8* %arrayidx51.i240.1, align 1
  %arrayidx53.i242.1 = getelementptr inbounds i8, i8* %arraydecay11, i64 1
  %102 = load i8, i8* %arrayidx53.i242.1, align 1
  %call54.i243.1 = call zeroext i8 @mult(i8 zeroext %101, i8 zeroext %102) #3
  %arrayidx56.i245.1 = getelementptr inbounds i8, i8* %arraydecay12, i64 1
  store i8 %call54.i243.1, i8* %arrayidx56.i245.1, align 1
  %arrayidx70.i257.1 = getelementptr inbounds i8, i8* %arraydecay12, i64 1
  %scevgep168.1322 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %100, i64 0, i64 0, i64 0
  %103 = load i8, i8* %scevgep168.1322, align 1
  %conv68.i255.1323 = zext i8 %103 to i32
  %104 = load i8, i8* %arrayidx70.i257.1, align 1
  %conv71.i258.1324 = zext i8 %104 to i32
  %xor72.i259.1325 = xor i32 %conv71.i258.1324, %conv68.i255.1323
  %conv73.i260.1326 = trunc i32 %xor72.i259.1325 to i8
  store i8 %conv73.i260.1326, i8* %arrayidx70.i257.1, align 1
  %scevgep168.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %100, i64 0, i64 0, i64 2
  %105 = load i8, i8* %scevgep168.2.1, align 1
  %conv68.i255.2.1 = zext i8 %105 to i32
  %106 = load i8, i8* %arrayidx70.i257.1, align 1
  %conv71.i258.2.1 = zext i8 %106 to i32
  %xor72.i259.2.1 = xor i32 %conv71.i258.2.1, %conv68.i255.2.1
  %conv73.i260.2.1 = trunc i32 %xor72.i259.2.1 to i8
  store i8 %conv73.i260.2.1, i8* %arrayidx70.i257.1, align 1
  %scevgep167.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %100, i64 0, i64 1, i64 0
  %107 = bitcast i8* %scevgep167.1 to [3 x [3 x i8]]*
  %arrayidx51.i240.2 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  %108 = load i8, i8* %arrayidx51.i240.2, align 1
  %arrayidx53.i242.2 = getelementptr inbounds i8, i8* %arraydecay11, i64 2
  %109 = load i8, i8* %arrayidx53.i242.2, align 1
  %call54.i243.2 = call zeroext i8 @mult(i8 zeroext %108, i8 zeroext %109) #3
  %arrayidx56.i245.2 = getelementptr inbounds i8, i8* %arraydecay12, i64 2
  store i8 %call54.i243.2, i8* %arrayidx56.i245.2, align 1
  %arrayidx70.i257.2 = getelementptr inbounds i8, i8* %arraydecay12, i64 2
  %scevgep168.2331 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %107, i64 0, i64 0, i64 0
  %110 = load i8, i8* %scevgep168.2331, align 1
  %conv68.i255.2332 = zext i8 %110 to i32
  %111 = load i8, i8* %arrayidx70.i257.2, align 1
  %conv71.i258.2333 = zext i8 %111 to i32
  %xor72.i259.2334 = xor i32 %conv71.i258.2333, %conv68.i255.2332
  %conv73.i260.2335 = trunc i32 %xor72.i259.2334 to i8
  store i8 %conv73.i260.2335, i8* %arrayidx70.i257.2, align 1
  %scevgep168.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %107, i64 0, i64 0, i64 1
  %112 = load i8, i8* %scevgep168.1.2, align 1
  %conv68.i255.1.2 = zext i8 %112 to i32
  %113 = load i8, i8* %arrayidx70.i257.2, align 1
  %conv71.i258.1.2 = zext i8 %113 to i32
  %xor72.i259.1.2 = xor i32 %conv71.i258.1.2, %conv68.i255.1.2
  %conv73.i260.1.2 = trunc i32 %xor72.i259.1.2 to i8
  store i8 %conv73.i260.1.2, i8* %arrayidx70.i257.2, align 1
  %call80.i266 = call zeroext i8 @mult(i8 zeroext %call.i165, i8 zeroext %call1.i166) #3
  %conv81.i267 = zext i8 %call80.i266 to i32
  %scevgep158 = getelementptr [3 x i8], [3 x i8]* %v, i64 0, i64 0
  %114 = load i8, i8* %scevgep158, align 1
  %scevgep158.1 = getelementptr [3 x i8], [3 x i8]* %v, i64 0, i64 1
  %115 = load i8, i8* %scevgep158.1, align 1
  %conv.i.i113.i274.1 = zext i8 %115 to i32
  %conv1.i.i114.i275.1 = zext i8 %114 to i32
  %xor.i.i115.i276.1 = xor i32 %conv1.i.i114.i275.1, %conv.i.i113.i274.1
  %conv2.i.i116.i277.1 = trunc i32 %xor.i.i115.i276.1 to i8
  %scevgep158.2 = getelementptr [3 x i8], [3 x i8]* %v, i64 0, i64 2
  %116 = load i8, i8* %scevgep158.2, align 1
  %conv.i.i113.i274.2 = zext i8 %116 to i32
  %conv1.i.i114.i275.2 = zext i8 %conv2.i.i116.i277.1 to i32
  %xor.i.i115.i276.2 = xor i32 %conv1.i.i114.i275.2, %conv.i.i113.i274.2
  %conv2.i.i116.i277.2 = trunc i32 %xor.i.i115.i276.2 to i8
  %conv83.i280 = zext i8 %conv2.i.i116.i277.2 to i32
  %cmp84.i281 = icmp eq i32 %conv81.i267, %conv83.i280
  call void @assert(i1 zeroext %cmp84.i281) #3
  %scevgep153 = getelementptr [3 x i8], [3 x i8]* %v, i64 0, i64 0
  %117 = load i8, i8* %scevgep153, align 1
  %call.i291 = call zeroext i8 @exp16(i8 zeroext %117) #3
  %scevgep154 = getelementptr [3 x i8], [3 x i8]* %v, i64 0, i64 0
  store i8 %call.i291, i8* %scevgep154, align 1
  %scevgep153.1 = getelementptr [3 x i8], [3 x i8]* %v, i64 0, i64 1
  %118 = load i8, i8* %scevgep153.1, align 1
  %call.i291.1 = call zeroext i8 @exp16(i8 zeroext %118) #3
  %scevgep154.1 = getelementptr [3 x i8], [3 x i8]* %v, i64 0, i64 1
  store i8 %call.i291.1, i8* %scevgep154.1, align 1
  %scevgep153.2 = getelementptr [3 x i8], [3 x i8]* %v, i64 0, i64 2
  %119 = load i8, i8* %scevgep153.2, align 1
  %call.i291.2 = call zeroext i8 @exp16(i8 zeroext %119) #3
  %scevgep154.2 = getelementptr [3 x i8], [3 x i8]* %v, i64 0, i64 2
  store i8 %call.i291.2, i8* %scevgep154.2, align 1
  %arraydecay15 = getelementptr inbounds [3 x i8], [3 x i8]* %v, i64 0, i64 0
  %arraydecay16 = getelementptr inbounds [3 x i8], [3 x i8]* %w, i64 0, i64 0
  %arraydecay17 = getelementptr inbounds [3 x i8], [3 x i8]* %m, i64 0, i64 0
  %call.i323 = call zeroext i8 (...) @rand() #3
  %call1.i324 = call zeroext i8 (...) @rand() #3
  %conv.i325 = zext i8 %call.i323 to i32
  %scevgep149 = getelementptr [3 x i8], [3 x i8]* %v, i64 0, i64 0
  %120 = load i8, i8* %scevgep149, align 1
  %scevgep149.1 = getelementptr [3 x i8], [3 x i8]* %v, i64 0, i64 1
  %121 = load i8, i8* %scevgep149.1, align 1
  %conv.i.i.i331.1 = zext i8 %121 to i32
  %conv1.i.i.i332.1 = zext i8 %120 to i32
  %xor.i.i.i333.1 = xor i32 %conv1.i.i.i332.1, %conv.i.i.i331.1
  %conv2.i.i.i334.1 = trunc i32 %xor.i.i.i333.1 to i8
  %scevgep149.2 = getelementptr [3 x i8], [3 x i8]* %v, i64 0, i64 2
  %122 = load i8, i8* %scevgep149.2, align 1
  %conv.i.i.i331.2 = zext i8 %122 to i32
  %conv1.i.i.i332.2 = zext i8 %conv2.i.i.i334.1 to i32
  %xor.i.i.i333.2 = xor i32 %conv1.i.i.i332.2, %conv.i.i.i331.2
  %conv2.i.i.i334.2 = trunc i32 %xor.i.i.i333.2 to i8
  %conv3.i337 = zext i8 %conv2.i.i.i334.2 to i32
  %cmp.i338 = icmp eq i32 %conv.i325, %conv3.i337
  call void @assume(i1 zeroext %cmp.i338) #3
  %conv5.i339 = zext i8 %call1.i324 to i32
  %scevgep145 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 0
  %123 = load i8, i8* %scevgep145, align 1
  %scevgep145.1 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 1
  %124 = load i8, i8* %scevgep145.1, align 1
  %conv.i.i96.i346.1 = zext i8 %124 to i32
  %conv1.i.i97.i347.1 = zext i8 %123 to i32
  %xor.i.i98.i348.1 = xor i32 %conv1.i.i97.i347.1, %conv.i.i96.i346.1
  %conv2.i.i99.i349.1 = trunc i32 %xor.i.i98.i348.1 to i8
  %scevgep145.2 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 2
  %125 = load i8, i8* %scevgep145.2, align 1
  %conv.i.i96.i346.2 = zext i8 %125 to i32
  %conv1.i.i97.i347.2 = zext i8 %conv2.i.i99.i349.1 to i32
  %xor.i.i98.i348.2 = xor i32 %conv1.i.i97.i347.2, %conv.i.i96.i346.2
  %conv2.i.i99.i349.2 = trunc i32 %xor.i.i98.i348.2 to i8
  %conv7.i352 = zext i8 %conv2.i.i99.i349.2 to i32
  %cmp8.i353 = icmp eq i32 %conv5.i339, %conv7.i352
  call void @assume(i1 zeroext %cmp8.i353) #3
  %scevgep122 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %scevgep122123 = bitcast i8* %scevgep122 to [3 x [3 x i8]]*
  %scevgep135 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 1, i64 0
  %scevgep135136 = bitcast i8* %scevgep135 to [3 x [3 x i8]]*
  %call16.i361 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i361, i8* %scevgep122, align 1
  %126 = load i8, i8* %scevgep122, align 1
  %conv23.i370 = zext i8 %126 to i32
  %127 = load i8, i8* %arraydecay15, align 1
  %scevgep133 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 1
  %128 = load i8, i8* %scevgep133, align 1
  %call28.i375 = call zeroext i8 @mult(i8 zeroext %127, i8 zeroext %128) #3
  %conv29.i376 = zext i8 %call28.i375 to i32
  %xor.i377 = xor i32 %conv23.i370, %conv29.i376
  %scevgep134 = getelementptr [3 x i8], [3 x i8]* %v, i64 0, i64 1
  %129 = load i8, i8* %scevgep134, align 1
  %130 = load i8, i8* %arraydecay16, align 1
  %call34.i382 = call zeroext i8 @mult(i8 zeroext %129, i8 zeroext %130) #3
  %conv35.i383 = zext i8 %call34.i382 to i32
  %xor36.i384 = xor i32 %xor.i377, %conv35.i383
  %conv37.i385 = trunc i32 %xor36.i384 to i8
  store i8 %conv37.i385, i8* %scevgep135, align 1
  %scevgep127 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep122123, i64 0, i64 0, i64 1
  %scevgep140 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep135136, i64 0, i64 1, i64 0
  %call16.i361.1371 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i361.1371, i8* %scevgep127, align 1
  %131 = load i8, i8* %scevgep127, align 1
  %conv23.i370.1372 = zext i8 %131 to i32
  %132 = load i8, i8* %arraydecay15, align 1
  %scevgep133.1373 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 2
  %133 = load i8, i8* %scevgep133.1373, align 1
  %call28.i375.1374 = call zeroext i8 @mult(i8 zeroext %132, i8 zeroext %133) #3
  %conv29.i376.1375 = zext i8 %call28.i375.1374 to i32
  %xor.i377.1376 = xor i32 %conv23.i370.1372, %conv29.i376.1375
  %scevgep134.1377 = getelementptr [3 x i8], [3 x i8]* %v, i64 0, i64 2
  %134 = load i8, i8* %scevgep134.1377, align 1
  %135 = load i8, i8* %arraydecay16, align 1
  %call34.i382.1378 = call zeroext i8 @mult(i8 zeroext %134, i8 zeroext %135) #3
  %conv35.i383.1379 = zext i8 %call34.i382.1378 to i32
  %xor36.i384.1380 = xor i32 %xor.i377.1376, %conv35.i383.1379
  %conv37.i385.1381 = trunc i32 %xor36.i384.1380 to i8
  store i8 %conv37.i385.1381, i8* %scevgep140, align 1
  %scevgep125 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep122123, i64 0, i64 1, i64 1
  %scevgep138 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep135136, i64 0, i64 1, i64 1
  %arrayidx25.i372.1 = getelementptr inbounds i8, i8* %arraydecay15, i64 1
  %arrayidx33.i381.1 = getelementptr inbounds i8, i8* %arraydecay16, i64 1
  %call16.i361.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i361.1, i8* %scevgep125, align 1
  %136 = load i8, i8* %scevgep125, align 1
  %conv23.i370.1 = zext i8 %136 to i32
  %137 = load i8, i8* %arrayidx25.i372.1, align 1
  %scevgep133.1 = getelementptr [3 x i8], [3 x i8]* %w, i64 0, i64 2
  %138 = load i8, i8* %scevgep133.1, align 1
  %call28.i375.1 = call zeroext i8 @mult(i8 zeroext %137, i8 zeroext %138) #3
  %conv29.i376.1 = zext i8 %call28.i375.1 to i32
  %xor.i377.1 = xor i32 %conv23.i370.1, %conv29.i376.1
  %scevgep134.1 = getelementptr [3 x i8], [3 x i8]* %v, i64 0, i64 2
  %139 = load i8, i8* %scevgep134.1, align 1
  %140 = load i8, i8* %arrayidx33.i381.1, align 1
  %call34.i382.1 = call zeroext i8 @mult(i8 zeroext %139, i8 zeroext %140) #3
  %conv35.i383.1 = zext i8 %call34.i382.1 to i32
  %xor36.i384.1 = xor i32 %xor.i377.1, %conv35.i383.1
  %conv37.i385.1 = trunc i32 %xor36.i384.1 to i8
  store i8 %conv37.i385.1, i8* %scevgep138, align 1
  %141 = load i8, i8* %arraydecay15, align 1
  %142 = load i8, i8* %arraydecay16, align 1
  %call54.i401 = call zeroext i8 @mult(i8 zeroext %141, i8 zeroext %142) #3
  store i8 %call54.i401, i8* %arraydecay17, align 1
  %scevgep118.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %143 = load i8, i8* %scevgep118.1, align 1
  %conv68.i413.1 = zext i8 %143 to i32
  %144 = load i8, i8* %arraydecay17, align 1
  %conv71.i416.1 = zext i8 %144 to i32
  %xor72.i417.1 = xor i32 %conv71.i416.1, %conv68.i413.1
  %conv73.i418.1 = trunc i32 %xor72.i417.1 to i8
  store i8 %conv73.i418.1, i8* %arraydecay17, align 1
  %scevgep118.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 2
  %145 = load i8, i8* %scevgep118.2, align 1
  %conv68.i413.2 = zext i8 %145 to i32
  %146 = load i8, i8* %arraydecay17, align 1
  %conv71.i416.2 = zext i8 %146 to i32
  %xor72.i417.2 = xor i32 %conv71.i416.2, %conv68.i413.2
  %conv73.i418.2 = trunc i32 %xor72.i417.2 to i8
  store i8 %conv73.i418.2, i8* %arraydecay17, align 1
  %scevgep117 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 1, i64 0
  %147 = bitcast i8* %scevgep117 to [3 x [3 x i8]]*
  %arrayidx51.i398.1 = getelementptr inbounds i8, i8* %arraydecay15, i64 1
  %148 = load i8, i8* %arrayidx51.i398.1, align 1
  %arrayidx53.i400.1 = getelementptr inbounds i8, i8* %arraydecay16, i64 1
  %149 = load i8, i8* %arrayidx53.i400.1, align 1
  %call54.i401.1 = call zeroext i8 @mult(i8 zeroext %148, i8 zeroext %149) #3
  %arrayidx56.i403.1 = getelementptr inbounds i8, i8* %arraydecay17, i64 1
  store i8 %call54.i401.1, i8* %arrayidx56.i403.1, align 1
  %arrayidx70.i415.1 = getelementptr inbounds i8, i8* %arraydecay17, i64 1
  %scevgep118.1304 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %147, i64 0, i64 0, i64 0
  %150 = load i8, i8* %scevgep118.1304, align 1
  %conv68.i413.1305 = zext i8 %150 to i32
  %151 = load i8, i8* %arrayidx70.i415.1, align 1
  %conv71.i416.1306 = zext i8 %151 to i32
  %xor72.i417.1307 = xor i32 %conv71.i416.1306, %conv68.i413.1305
  %conv73.i418.1308 = trunc i32 %xor72.i417.1307 to i8
  store i8 %conv73.i418.1308, i8* %arrayidx70.i415.1, align 1
  %scevgep118.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %147, i64 0, i64 0, i64 2
  %152 = load i8, i8* %scevgep118.2.1, align 1
  %conv68.i413.2.1 = zext i8 %152 to i32
  %153 = load i8, i8* %arrayidx70.i415.1, align 1
  %conv71.i416.2.1 = zext i8 %153 to i32
  %xor72.i417.2.1 = xor i32 %conv71.i416.2.1, %conv68.i413.2.1
  %conv73.i418.2.1 = trunc i32 %xor72.i417.2.1 to i8
  store i8 %conv73.i418.2.1, i8* %arrayidx70.i415.1, align 1
  %scevgep117.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %147, i64 0, i64 1, i64 0
  %154 = bitcast i8* %scevgep117.1 to [3 x [3 x i8]]*
  %arrayidx51.i398.2 = getelementptr inbounds i8, i8* %arraydecay15, i64 2
  %155 = load i8, i8* %arrayidx51.i398.2, align 1
  %arrayidx53.i400.2 = getelementptr inbounds i8, i8* %arraydecay16, i64 2
  %156 = load i8, i8* %arrayidx53.i400.2, align 1
  %call54.i401.2 = call zeroext i8 @mult(i8 zeroext %155, i8 zeroext %156) #3
  %arrayidx56.i403.2 = getelementptr inbounds i8, i8* %arraydecay17, i64 2
  store i8 %call54.i401.2, i8* %arrayidx56.i403.2, align 1
  %arrayidx70.i415.2 = getelementptr inbounds i8, i8* %arraydecay17, i64 2
  %scevgep118.2313 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %154, i64 0, i64 0, i64 0
  %157 = load i8, i8* %scevgep118.2313, align 1
  %conv68.i413.2314 = zext i8 %157 to i32
  %158 = load i8, i8* %arrayidx70.i415.2, align 1
  %conv71.i416.2315 = zext i8 %158 to i32
  %xor72.i417.2316 = xor i32 %conv71.i416.2315, %conv68.i413.2314
  %conv73.i418.2317 = trunc i32 %xor72.i417.2316 to i8
  store i8 %conv73.i418.2317, i8* %arrayidx70.i415.2, align 1
  %scevgep118.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %154, i64 0, i64 0, i64 1
  %159 = load i8, i8* %scevgep118.1.2, align 1
  %conv68.i413.1.2 = zext i8 %159 to i32
  %160 = load i8, i8* %arrayidx70.i415.2, align 1
  %conv71.i416.1.2 = zext i8 %160 to i32
  %xor72.i417.1.2 = xor i32 %conv71.i416.1.2, %conv68.i413.1.2
  %conv73.i418.1.2 = trunc i32 %xor72.i417.1.2 to i8
  store i8 %conv73.i418.1.2, i8* %arrayidx70.i415.2, align 1
  %call80.i424 = call zeroext i8 @mult(i8 zeroext %call.i323, i8 zeroext %call1.i324) #3
  %conv81.i425 = zext i8 %call80.i424 to i32
  %scevgep108 = getelementptr [3 x i8], [3 x i8]* %m, i64 0, i64 0
  %161 = load i8, i8* %scevgep108, align 1
  %scevgep108.1 = getelementptr [3 x i8], [3 x i8]* %m, i64 0, i64 1
  %162 = load i8, i8* %scevgep108.1, align 1
  %conv.i.i113.i432.1 = zext i8 %162 to i32
  %conv1.i.i114.i433.1 = zext i8 %161 to i32
  %xor.i.i115.i434.1 = xor i32 %conv1.i.i114.i433.1, %conv.i.i113.i432.1
  %conv2.i.i116.i435.1 = trunc i32 %xor.i.i115.i434.1 to i8
  %scevgep108.2 = getelementptr [3 x i8], [3 x i8]* %m, i64 0, i64 2
  %163 = load i8, i8* %scevgep108.2, align 1
  %conv.i.i113.i432.2 = zext i8 %163 to i32
  %conv1.i.i114.i433.2 = zext i8 %conv2.i.i116.i435.1 to i32
  %xor.i.i115.i434.2 = xor i32 %conv1.i.i114.i433.2, %conv.i.i113.i432.2
  %conv2.i.i116.i435.2 = trunc i32 %xor.i.i115.i434.2 to i8
  %conv83.i438 = zext i8 %conv2.i.i116.i435.2 to i32
  %cmp84.i439 = icmp eq i32 %conv81.i425, %conv83.i438
  call void @assert(i1 zeroext %cmp84.i439) #3
  %arraydecay18 = getelementptr inbounds [3 x i8], [3 x i8]* %m, i64 0, i64 0
  %arraydecay19 = getelementptr inbounds [3 x i8], [3 x i8]* %z, i64 0, i64 0
  %call.i466 = call zeroext i8 (...) @rand() #3
  %call1.i467 = call zeroext i8 (...) @rand() #3
  %conv.i468 = zext i8 %call.i466 to i32
  %scevgep104 = getelementptr [3 x i8], [3 x i8]* %m, i64 0, i64 0
  %164 = load i8, i8* %scevgep104, align 1
  %scevgep104.1 = getelementptr [3 x i8], [3 x i8]* %m, i64 0, i64 1
  %165 = load i8, i8* %scevgep104.1, align 1
  %conv.i.i.i474.1 = zext i8 %165 to i32
  %conv1.i.i.i475.1 = zext i8 %164 to i32
  %xor.i.i.i476.1 = xor i32 %conv1.i.i.i475.1, %conv.i.i.i474.1
  %conv2.i.i.i477.1 = trunc i32 %xor.i.i.i476.1 to i8
  %scevgep104.2 = getelementptr [3 x i8], [3 x i8]* %m, i64 0, i64 2
  %166 = load i8, i8* %scevgep104.2, align 1
  %conv.i.i.i474.2 = zext i8 %166 to i32
  %conv1.i.i.i475.2 = zext i8 %conv2.i.i.i477.1 to i32
  %xor.i.i.i476.2 = xor i32 %conv1.i.i.i475.2, %conv.i.i.i474.2
  %conv2.i.i.i477.2 = trunc i32 %xor.i.i.i476.2 to i8
  %conv3.i480 = zext i8 %conv2.i.i.i477.2 to i32
  %cmp.i481 = icmp eq i32 %conv.i468, %conv3.i480
  call void @assume(i1 zeroext %cmp.i481) #3
  %conv5.i482 = zext i8 %call1.i467 to i32
  %scevgep100 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 0
  %167 = load i8, i8* %scevgep100, align 1
  %scevgep100.1 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 1
  %168 = load i8, i8* %scevgep100.1, align 1
  %conv.i.i96.i489.1 = zext i8 %168 to i32
  %conv1.i.i97.i490.1 = zext i8 %167 to i32
  %xor.i.i98.i491.1 = xor i32 %conv1.i.i97.i490.1, %conv.i.i96.i489.1
  %conv2.i.i99.i492.1 = trunc i32 %xor.i.i98.i491.1 to i8
  %scevgep100.2 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 2
  %169 = load i8, i8* %scevgep100.2, align 1
  %conv.i.i96.i489.2 = zext i8 %169 to i32
  %conv1.i.i97.i490.2 = zext i8 %conv2.i.i99.i492.1 to i32
  %xor.i.i98.i491.2 = xor i32 %conv1.i.i97.i490.2, %conv.i.i96.i489.2
  %conv2.i.i99.i492.2 = trunc i32 %xor.i.i98.i491.2 to i8
  %conv7.i495 = zext i8 %conv2.i.i99.i492.2 to i32
  %cmp8.i496 = icmp eq i32 %conv5.i482, %conv7.i495
  call void @assume(i1 zeroext %cmp8.i496) #3
  %scevgep77 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %scevgep7778 = bitcast i8* %scevgep77 to [3 x [3 x i8]]*
  %scevgep90 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 1, i64 0
  %scevgep9091 = bitcast i8* %scevgep90 to [3 x [3 x i8]]*
  %call16.i504 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i504, i8* %scevgep77, align 1
  %170 = load i8, i8* %scevgep77, align 1
  %conv23.i513 = zext i8 %170 to i32
  %171 = load i8, i8* %arraydecay18, align 1
  %scevgep88 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 1
  %172 = load i8, i8* %scevgep88, align 1
  %call28.i518 = call zeroext i8 @mult(i8 zeroext %171, i8 zeroext %172) #3
  %conv29.i519 = zext i8 %call28.i518 to i32
  %xor.i520 = xor i32 %conv23.i513, %conv29.i519
  %scevgep89 = getelementptr [3 x i8], [3 x i8]* %m, i64 0, i64 1
  %173 = load i8, i8* %scevgep89, align 1
  %174 = load i8, i8* %arraydecay19, align 1
  %call34.i525 = call zeroext i8 @mult(i8 zeroext %173, i8 zeroext %174) #3
  %conv35.i526 = zext i8 %call34.i525 to i32
  %xor36.i527 = xor i32 %xor.i520, %conv35.i526
  %conv37.i528 = trunc i32 %xor36.i527 to i8
  store i8 %conv37.i528, i8* %scevgep90, align 1
  %scevgep82 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep7778, i64 0, i64 0, i64 1
  %scevgep95 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep9091, i64 0, i64 1, i64 0
  %call16.i504.1358 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i504.1358, i8* %scevgep82, align 1
  %175 = load i8, i8* %scevgep82, align 1
  %conv23.i513.1359 = zext i8 %175 to i32
  %176 = load i8, i8* %arraydecay18, align 1
  %scevgep88.1360 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 2
  %177 = load i8, i8* %scevgep88.1360, align 1
  %call28.i518.1361 = call zeroext i8 @mult(i8 zeroext %176, i8 zeroext %177) #3
  %conv29.i519.1362 = zext i8 %call28.i518.1361 to i32
  %xor.i520.1363 = xor i32 %conv23.i513.1359, %conv29.i519.1362
  %scevgep89.1364 = getelementptr [3 x i8], [3 x i8]* %m, i64 0, i64 2
  %178 = load i8, i8* %scevgep89.1364, align 1
  %179 = load i8, i8* %arraydecay19, align 1
  %call34.i525.1365 = call zeroext i8 @mult(i8 zeroext %178, i8 zeroext %179) #3
  %conv35.i526.1366 = zext i8 %call34.i525.1365 to i32
  %xor36.i527.1367 = xor i32 %xor.i520.1363, %conv35.i526.1366
  %conv37.i528.1368 = trunc i32 %xor36.i527.1367 to i8
  store i8 %conv37.i528.1368, i8* %scevgep95, align 1
  %scevgep80 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep7778, i64 0, i64 1, i64 1
  %scevgep93 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep9091, i64 0, i64 1, i64 1
  %arrayidx25.i515.1 = getelementptr inbounds i8, i8* %arraydecay18, i64 1
  %arrayidx33.i524.1 = getelementptr inbounds i8, i8* %arraydecay19, i64 1
  %call16.i504.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i504.1, i8* %scevgep80, align 1
  %180 = load i8, i8* %scevgep80, align 1
  %conv23.i513.1 = zext i8 %180 to i32
  %181 = load i8, i8* %arrayidx25.i515.1, align 1
  %scevgep88.1 = getelementptr [3 x i8], [3 x i8]* %z, i64 0, i64 2
  %182 = load i8, i8* %scevgep88.1, align 1
  %call28.i518.1 = call zeroext i8 @mult(i8 zeroext %181, i8 zeroext %182) #3
  %conv29.i519.1 = zext i8 %call28.i518.1 to i32
  %xor.i520.1 = xor i32 %conv23.i513.1, %conv29.i519.1
  %scevgep89.1 = getelementptr [3 x i8], [3 x i8]* %m, i64 0, i64 2
  %183 = load i8, i8* %scevgep89.1, align 1
  %184 = load i8, i8* %arrayidx33.i524.1, align 1
  %call34.i525.1 = call zeroext i8 @mult(i8 zeroext %183, i8 zeroext %184) #3
  %conv35.i526.1 = zext i8 %call34.i525.1 to i32
  %xor36.i527.1 = xor i32 %xor.i520.1, %conv35.i526.1
  %conv37.i528.1 = trunc i32 %xor36.i527.1 to i8
  store i8 %conv37.i528.1, i8* %scevgep93, align 1
  %185 = load i8, i8* %arraydecay18, align 1
  %186 = load i8, i8* %arraydecay19, align 1
  %call54.i544 = call zeroext i8 @mult(i8 zeroext %185, i8 zeroext %186) #3
  store i8 %call54.i544, i8* %y, align 1
  %scevgep74.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %187 = load i8, i8* %scevgep74.1, align 1
  %conv68.i556.1 = zext i8 %187 to i32
  %188 = load i8, i8* %y, align 1
  %conv71.i559.1 = zext i8 %188 to i32
  %xor72.i560.1 = xor i32 %conv71.i559.1, %conv68.i556.1
  %conv73.i561.1 = trunc i32 %xor72.i560.1 to i8
  store i8 %conv73.i561.1, i8* %y, align 1
  %scevgep74.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 2
  %189 = load i8, i8* %scevgep74.2, align 1
  %conv68.i556.2 = zext i8 %189 to i32
  %190 = load i8, i8* %y, align 1
  %conv71.i559.2 = zext i8 %190 to i32
  %xor72.i560.2 = xor i32 %conv71.i559.2, %conv68.i556.2
  %conv73.i561.2 = trunc i32 %xor72.i560.2 to i8
  store i8 %conv73.i561.2, i8* %y, align 1
  %scevgep73 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 1, i64 0
  %191 = bitcast i8* %scevgep73 to [3 x [3 x i8]]*
  %arrayidx51.i541.1 = getelementptr inbounds i8, i8* %arraydecay18, i64 1
  %192 = load i8, i8* %arrayidx51.i541.1, align 1
  %arrayidx53.i543.1 = getelementptr inbounds i8, i8* %arraydecay19, i64 1
  %193 = load i8, i8* %arrayidx53.i543.1, align 1
  %call54.i544.1 = call zeroext i8 @mult(i8 zeroext %192, i8 zeroext %193) #3
  %arrayidx56.i546.1 = getelementptr inbounds i8, i8* %y, i64 1
  store i8 %call54.i544.1, i8* %arrayidx56.i546.1, align 1
  %arrayidx70.i558.1 = getelementptr inbounds i8, i8* %y, i64 1
  %scevgep74.1286 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %191, i64 0, i64 0, i64 0
  %194 = load i8, i8* %scevgep74.1286, align 1
  %conv68.i556.1287 = zext i8 %194 to i32
  %195 = load i8, i8* %arrayidx70.i558.1, align 1
  %conv71.i559.1288 = zext i8 %195 to i32
  %xor72.i560.1289 = xor i32 %conv71.i559.1288, %conv68.i556.1287
  %conv73.i561.1290 = trunc i32 %xor72.i560.1289 to i8
  store i8 %conv73.i561.1290, i8* %arrayidx70.i558.1, align 1
  %scevgep74.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %191, i64 0, i64 0, i64 2
  %196 = load i8, i8* %scevgep74.2.1, align 1
  %conv68.i556.2.1 = zext i8 %196 to i32
  %197 = load i8, i8* %arrayidx70.i558.1, align 1
  %conv71.i559.2.1 = zext i8 %197 to i32
  %xor72.i560.2.1 = xor i32 %conv71.i559.2.1, %conv68.i556.2.1
  %conv73.i561.2.1 = trunc i32 %xor72.i560.2.1 to i8
  store i8 %conv73.i561.2.1, i8* %arrayidx70.i558.1, align 1
  %scevgep73.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %191, i64 0, i64 1, i64 0
  %198 = bitcast i8* %scevgep73.1 to [3 x [3 x i8]]*
  %arrayidx51.i541.2 = getelementptr inbounds i8, i8* %arraydecay18, i64 2
  %199 = load i8, i8* %arrayidx51.i541.2, align 1
  %arrayidx53.i543.2 = getelementptr inbounds i8, i8* %arraydecay19, i64 2
  %200 = load i8, i8* %arrayidx53.i543.2, align 1
  %call54.i544.2 = call zeroext i8 @mult(i8 zeroext %199, i8 zeroext %200) #3
  %arrayidx56.i546.2 = getelementptr inbounds i8, i8* %y, i64 2
  store i8 %call54.i544.2, i8* %arrayidx56.i546.2, align 1
  %arrayidx70.i558.2 = getelementptr inbounds i8, i8* %y, i64 2
  %scevgep74.2295 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %198, i64 0, i64 0, i64 0
  %201 = load i8, i8* %scevgep74.2295, align 1
  %conv68.i556.2296 = zext i8 %201 to i32
  %202 = load i8, i8* %arrayidx70.i558.2, align 1
  %conv71.i559.2297 = zext i8 %202 to i32
  %xor72.i560.2298 = xor i32 %conv71.i559.2297, %conv68.i556.2296
  %conv73.i561.2299 = trunc i32 %xor72.i560.2298 to i8
  store i8 %conv73.i561.2299, i8* %arrayidx70.i558.2, align 1
  %scevgep74.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %198, i64 0, i64 0, i64 1
  %203 = load i8, i8* %scevgep74.1.2, align 1
  %conv68.i556.1.2 = zext i8 %203 to i32
  %204 = load i8, i8* %arrayidx70.i558.2, align 1
  %conv71.i559.1.2 = zext i8 %204 to i32
  %xor72.i560.1.2 = xor i32 %conv71.i559.1.2, %conv68.i556.1.2
  %conv73.i561.1.2 = trunc i32 %xor72.i560.1.2 to i8
  store i8 %conv73.i561.1.2, i8* %arrayidx70.i558.2, align 1
  %call80.i567 = call zeroext i8 @mult(i8 zeroext %call.i466, i8 zeroext %call1.i467) #3
  %conv81.i568 = zext i8 %call80.i567 to i32
  %205 = load i8, i8* %y, align 1
  %scevgep64.1 = getelementptr i8, i8* %y, i64 1
  %206 = load i8, i8* %scevgep64.1, align 1
  %conv.i.i113.i575.1 = zext i8 %206 to i32
  %conv1.i.i114.i576.1 = zext i8 %205 to i32
  %xor.i.i115.i577.1 = xor i32 %conv1.i.i114.i576.1, %conv.i.i113.i575.1
  %conv2.i.i116.i578.1 = trunc i32 %xor.i.i115.i577.1 to i8
  %scevgep64.2 = getelementptr i8, i8* %y, i64 2
  %207 = load i8, i8* %scevgep64.2, align 1
  %conv.i.i113.i575.2 = zext i8 %207 to i32
  %conv1.i.i114.i576.2 = zext i8 %conv2.i.i116.i578.1 to i32
  %xor.i.i115.i577.2 = xor i32 %conv1.i.i114.i576.2, %conv.i.i113.i575.2
  %conv2.i.i116.i578.2 = trunc i32 %xor.i.i115.i577.2 to i8
  %conv83.i581 = zext i8 %conv2.i.i116.i578.2 to i32
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
  %208 = load i8, i8* %y, align 1
  %scevgep.1 = getelementptr i8, i8* %y, i64 1
  %209 = load i8, i8* %scevgep.1, align 1
  %conv.i.i597.1 = zext i8 %209 to i32
  %conv1.i.i598.1 = zext i8 %208 to i32
  %xor.i.i599.1 = xor i32 %conv1.i.i598.1, %conv.i.i597.1
  %conv2.i.i600.1 = trunc i32 %xor.i.i599.1 to i8
  %scevgep.2 = getelementptr i8, i8* %y, i64 2
  %210 = load i8, i8* %scevgep.2, align 1
  %conv.i.i597.2 = zext i8 %210 to i32
  %conv1.i.i598.2 = zext i8 %conv2.i.i600.1 to i32
  %xor.i.i599.2 = xor i32 %conv1.i.i598.2, %conv.i.i597.2
  %conv2.i.i600.2 = trunc i32 %xor.i.i599.2 to i8
  %conv23 = zext i8 %conv2.i.i600.2 to i32
  %cmp24 = icmp eq i32 %conv21, %conv23
  call void @assert(i1 zeroext %cmp24)
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @expd(i8 zeroext %x) #0 {
entry:
  %call = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x)
  %call.1 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %x)
  ret i8 %call.1
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_expd(i8* %x, i8* %y) #0 {
entry:
  %r.i = alloca [3 x [3 x i8]], align 1
  %z = alloca [3 x [3 x i8]], align 1
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
  %conv2 = zext i8 %conv2.i.i.2 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %3 = load i8, i8* %x, align 1
  %scevgep88 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 0
  store i8 %3, i8* %scevgep88, align 1
  %scevgep87.1 = getelementptr i8, i8* %x, i64 1
  %4 = load i8, i8* %scevgep87.1, align 1
  %scevgep88.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 1
  store i8 %4, i8* %scevgep88.1, align 1
  %scevgep87.2 = getelementptr i8, i8* %x, i64 2
  %5 = load i8, i8* %scevgep87.2, align 1
  %scevgep88.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 2
  store i8 %5, i8* %scevgep88.2, align 1
  %scevgep40 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %scevgep4041 = bitcast i8* %scevgep40 to [3 x [3 x i8]]*
  %scevgep48 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 1
  %scevgep4849 = bitcast i8* %scevgep48 to [3 x [3 x i8]]*
  %scevgep55 = getelementptr i8, i8* %x, i64 1
  %scevgep59 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 1, i64 0
  %scevgep5960 = bitcast i8* %scevgep59 to [3 x [3 x i8]]*
  %arrayidx6 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx6, i64 0, i64 0
  %arrayidx9 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 1
  %arraydecay10 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx9, i64 0, i64 0
  %call.i22 = call zeroext i8 (...) @rand() #3
  %call1.i = call zeroext i8 (...) @rand() #3
  %conv.i = zext i8 %call.i22 to i32
  %6 = load i8, i8* %x, align 1
  %scevgep32.1 = getelementptr i8, i8* %x, i64 1
  %7 = load i8, i8* %scevgep32.1, align 1
  %conv.i.i.i.1 = zext i8 %7 to i32
  %conv1.i.i.i.1 = zext i8 %6 to i32
  %xor.i.i.i.1 = xor i32 %conv1.i.i.i.1, %conv.i.i.i.1
  %conv2.i.i.i.1 = trunc i32 %xor.i.i.i.1 to i8
  %scevgep32.2 = getelementptr i8, i8* %x, i64 2
  %8 = load i8, i8* %scevgep32.2, align 1
  %conv.i.i.i.2 = zext i8 %8 to i32
  %conv1.i.i.i.2 = zext i8 %conv2.i.i.i.1 to i32
  %xor.i.i.i.2 = xor i32 %conv1.i.i.i.2, %conv.i.i.i.2
  %conv2.i.i.i.2 = trunc i32 %xor.i.i.i.2 to i8
  %conv3.i = zext i8 %conv2.i.i.i.2 to i32
  %cmp.i23 = icmp eq i32 %conv.i, %conv3.i
  call void @assume(i1 zeroext %cmp.i23) #3
  %conv5.i = zext i8 %call1.i to i32
  %scevgep38 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 0
  %9 = load i8, i8* %scevgep38, align 1
  %scevgep38.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 1
  %10 = load i8, i8* %scevgep38.1, align 1
  %conv.i.i96.i.1 = zext i8 %10 to i32
  %conv1.i.i97.i.1 = zext i8 %9 to i32
  %xor.i.i98.i.1 = xor i32 %conv1.i.i97.i.1, %conv.i.i96.i.1
  %conv2.i.i99.i.1 = trunc i32 %xor.i.i98.i.1 to i8
  %scevgep38.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 2
  %11 = load i8, i8* %scevgep38.2, align 1
  %conv.i.i96.i.2 = zext i8 %11 to i32
  %conv1.i.i97.i.2 = zext i8 %conv2.i.i99.i.1 to i32
  %xor.i.i98.i.2 = xor i32 %conv1.i.i97.i.2, %conv.i.i96.i.2
  %conv2.i.i99.i.2 = trunc i32 %xor.i.i98.i.2 to i8
  %conv7.i = zext i8 %conv2.i.i99.i.2 to i32
  %cmp8.i = icmp eq i32 %conv5.i, %conv7.i
  call void @assume(i1 zeroext %cmp8.i) #3
  %call16.i = call zeroext i8 (...) @rand() #3
  %scevgep46 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep4041, i64 0, i64 0, i64 0
  store i8 %call16.i, i8* %scevgep46, align 1
  %scevgep47 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep4041, i64 0, i64 0, i64 0
  %12 = load i8, i8* %scevgep47, align 1
  %conv23.i = zext i8 %12 to i32
  %13 = load i8, i8* %x, align 1
  %scevgep54 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep4849, i64 0, i64 0, i64 0
  %14 = load i8, i8* %scevgep54, align 1
  %call28.i = call zeroext i8 @mult(i8 zeroext %13, i8 zeroext %14) #3
  %conv29.i = zext i8 %call28.i to i32
  %xor.i = xor i32 %conv23.i, %conv29.i
  %15 = load i8, i8* %scevgep55, align 1
  %16 = load i8, i8* %arraydecay7, align 1
  %call34.i = call zeroext i8 @mult(i8 zeroext %15, i8 zeroext %16) #3
  %conv35.i = zext i8 %call34.i to i32
  %xor36.i = xor i32 %xor.i, %conv35.i
  %conv37.i = trunc i32 %xor36.i to i8
  store i8 %conv37.i, i8* %scevgep59, align 1
  %scevgep64 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep5960, i64 0, i64 1, i64 0
  %call16.i.1183 = call zeroext i8 (...) @rand() #3
  %scevgep46.1184 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep4041, i64 0, i64 0, i64 1
  store i8 %call16.i.1183, i8* %scevgep46.1184, align 1
  %scevgep47.1185 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep4041, i64 0, i64 0, i64 1
  %17 = load i8, i8* %scevgep47.1185, align 1
  %conv23.i.1186 = zext i8 %17 to i32
  %18 = load i8, i8* %x, align 1
  %scevgep54.1187 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep4849, i64 0, i64 0, i64 1
  %19 = load i8, i8* %scevgep54.1187, align 1
  %call28.i.1188 = call zeroext i8 @mult(i8 zeroext %18, i8 zeroext %19) #3
  %conv29.i.1189 = zext i8 %call28.i.1188 to i32
  %xor.i.1190 = xor i32 %conv23.i.1186, %conv29.i.1189
  %scevgep58.1191 = getelementptr i8, i8* %scevgep55, i64 1
  %20 = load i8, i8* %scevgep58.1191, align 1
  %21 = load i8, i8* %arraydecay7, align 1
  %call34.i.1192 = call zeroext i8 @mult(i8 zeroext %20, i8 zeroext %21) #3
  %conv35.i.1193 = zext i8 %call34.i.1192 to i32
  %xor36.i.1194 = xor i32 %xor.i.1190, %conv35.i.1193
  %conv37.i.1195 = trunc i32 %xor36.i.1194 to i8
  store i8 %conv37.i.1195, i8* %scevgep64, align 1
  %scevgep43 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep4041, i64 0, i64 1, i64 1
  %22 = bitcast i8* %scevgep43 to [3 x [3 x i8]]*
  %scevgep53 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep4849, i64 0, i64 0, i64 1
  %23 = bitcast i8* %scevgep53 to [3 x [3 x i8]]*
  %scevgep57 = getelementptr i8, i8* %scevgep55, i64 1
  %scevgep62 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep5960, i64 0, i64 1, i64 1
  %arrayidx25.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %arrayidx33.i.1 = getelementptr inbounds i8, i8* %arraydecay7, i64 1
  %call16.i.1 = call zeroext i8 (...) @rand() #3
  %scevgep46.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %22, i64 0, i64 0, i64 0
  store i8 %call16.i.1, i8* %scevgep46.1, align 1
  %scevgep47.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %22, i64 0, i64 0, i64 0
  %24 = load i8, i8* %scevgep47.1, align 1
  %conv23.i.1 = zext i8 %24 to i32
  %25 = load i8, i8* %arrayidx25.i.1, align 1
  %scevgep54.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %23, i64 0, i64 0, i64 0
  %26 = load i8, i8* %scevgep54.1, align 1
  %call28.i.1 = call zeroext i8 @mult(i8 zeroext %25, i8 zeroext %26) #3
  %conv29.i.1 = zext i8 %call28.i.1 to i32
  %xor.i.1 = xor i32 %conv23.i.1, %conv29.i.1
  %27 = load i8, i8* %scevgep57, align 1
  %28 = load i8, i8* %arrayidx33.i.1, align 1
  %call34.i.1 = call zeroext i8 @mult(i8 zeroext %27, i8 zeroext %28) #3
  %conv35.i.1 = zext i8 %call34.i.1 to i32
  %xor36.i.1 = xor i32 %xor.i.1, %conv35.i.1
  %conv37.i.1 = trunc i32 %xor36.i.1 to i8
  store i8 %conv37.i.1, i8* %scevgep62, align 1
  %29 = load i8, i8* %x, align 1
  %30 = load i8, i8* %arraydecay7, align 1
  %call54.i = call zeroext i8 @mult(i8 zeroext %29, i8 zeroext %30) #3
  store i8 %call54.i, i8* %arraydecay10, align 1
  %scevgep77.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %31 = load i8, i8* %scevgep77.1, align 1
  %conv68.i.1 = zext i8 %31 to i32
  %32 = load i8, i8* %arraydecay10, align 1
  %conv71.i.1 = zext i8 %32 to i32
  %xor72.i.1 = xor i32 %conv71.i.1, %conv68.i.1
  %conv73.i.1 = trunc i32 %xor72.i.1 to i8
  store i8 %conv73.i.1, i8* %arraydecay10, align 1
  %scevgep77.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 2
  %33 = load i8, i8* %scevgep77.2, align 1
  %conv68.i.2 = zext i8 %33 to i32
  %34 = load i8, i8* %arraydecay10, align 1
  %conv71.i.2 = zext i8 %34 to i32
  %xor72.i.2 = xor i32 %conv71.i.2, %conv68.i.2
  %conv73.i.2 = trunc i32 %xor72.i.2 to i8
  store i8 %conv73.i.2, i8* %arraydecay10, align 1
  %scevgep76 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 1, i64 0
  %35 = bitcast i8* %scevgep76 to [3 x [3 x i8]]*
  %arrayidx51.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %36 = load i8, i8* %arrayidx51.i.1, align 1
  %arrayidx53.i.1 = getelementptr inbounds i8, i8* %arraydecay7, i64 1
  %37 = load i8, i8* %arrayidx53.i.1, align 1
  %call54.i.1 = call zeroext i8 @mult(i8 zeroext %36, i8 zeroext %37) #3
  %arrayidx56.i.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  store i8 %call54.i.1, i8* %arrayidx56.i.1, align 1
  %arrayidx70.i.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %scevgep77.196 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %35, i64 0, i64 0, i64 0
  %38 = load i8, i8* %scevgep77.196, align 1
  %conv68.i.197 = zext i8 %38 to i32
  %39 = load i8, i8* %arrayidx70.i.1, align 1
  %conv71.i.198 = zext i8 %39 to i32
  %xor72.i.199 = xor i32 %conv71.i.198, %conv68.i.197
  %conv73.i.1100 = trunc i32 %xor72.i.199 to i8
  store i8 %conv73.i.1100, i8* %arrayidx70.i.1, align 1
  %scevgep77.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %35, i64 0, i64 0, i64 2
  %40 = load i8, i8* %scevgep77.2.1, align 1
  %conv68.i.2.1 = zext i8 %40 to i32
  %41 = load i8, i8* %arrayidx70.i.1, align 1
  %conv71.i.2.1 = zext i8 %41 to i32
  %xor72.i.2.1 = xor i32 %conv71.i.2.1, %conv68.i.2.1
  %conv73.i.2.1 = trunc i32 %xor72.i.2.1 to i8
  store i8 %conv73.i.2.1, i8* %arrayidx70.i.1, align 1
  %scevgep76.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %35, i64 0, i64 1, i64 0
  %42 = bitcast i8* %scevgep76.1 to [3 x [3 x i8]]*
  %arrayidx51.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %43 = load i8, i8* %arrayidx51.i.2, align 1
  %arrayidx53.i.2 = getelementptr inbounds i8, i8* %arraydecay7, i64 2
  %44 = load i8, i8* %arrayidx53.i.2, align 1
  %call54.i.2 = call zeroext i8 @mult(i8 zeroext %43, i8 zeroext %44) #3
  %arrayidx56.i.2 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  store i8 %call54.i.2, i8* %arrayidx56.i.2, align 1
  %arrayidx70.i.2 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  %scevgep77.2105 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %42, i64 0, i64 0, i64 0
  %45 = load i8, i8* %scevgep77.2105, align 1
  %conv68.i.2106 = zext i8 %45 to i32
  %46 = load i8, i8* %arrayidx70.i.2, align 1
  %conv71.i.2107 = zext i8 %46 to i32
  %xor72.i.2108 = xor i32 %conv71.i.2107, %conv68.i.2106
  %conv73.i.2109 = trunc i32 %xor72.i.2108 to i8
  store i8 %conv73.i.2109, i8* %arrayidx70.i.2, align 1
  %scevgep77.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %42, i64 0, i64 0, i64 1
  %47 = load i8, i8* %scevgep77.1.2, align 1
  %conv68.i.1.2 = zext i8 %47 to i32
  %48 = load i8, i8* %arrayidx70.i.2, align 1
  %conv71.i.1.2 = zext i8 %48 to i32
  %xor72.i.1.2 = xor i32 %conv71.i.1.2, %conv68.i.1.2
  %conv73.i.1.2 = trunc i32 %xor72.i.1.2 to i8
  store i8 %conv73.i.1.2, i8* %arrayidx70.i.2, align 1
  %call80.i = call zeroext i8 @mult(i8 zeroext %call.i22, i8 zeroext %call1.i) #3
  %conv81.i = zext i8 %call80.i to i32
  %scevgep82 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 0
  %scevgep83 = getelementptr i8, i8* %scevgep82, i64 3
  %49 = load i8, i8* %scevgep83, align 1
  %scevgep82.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 1
  %scevgep83.1 = getelementptr i8, i8* %scevgep82.1, i64 3
  %50 = load i8, i8* %scevgep83.1, align 1
  %conv.i.i113.i.1 = zext i8 %50 to i32
  %conv1.i.i114.i.1 = zext i8 %49 to i32
  %xor.i.i115.i.1 = xor i32 %conv1.i.i114.i.1, %conv.i.i113.i.1
  %conv2.i.i116.i.1 = trunc i32 %xor.i.i115.i.1 to i8
  %scevgep82.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 2
  %scevgep83.2 = getelementptr i8, i8* %scevgep82.2, i64 3
  %51 = load i8, i8* %scevgep83.2, align 1
  %conv.i.i113.i.2 = zext i8 %51 to i32
  %conv1.i.i114.i.2 = zext i8 %conv2.i.i116.i.1 to i32
  %xor.i.i115.i.2 = xor i32 %conv1.i.i114.i.2, %conv.i.i113.i.2
  %conv2.i.i116.i.2 = trunc i32 %xor.i.i115.i.2 to i8
  %conv83.i = zext i8 %conv2.i.i116.i.2 to i32
  %cmp84.i = icmp eq i32 %conv81.i, %conv83.i
  call void @assert(i1 zeroext %cmp84.i) #3
  %scevgep35 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 1, i64 0
  %52 = bitcast i8* %scevgep35 to [3 x [3 x i8]]*
  %scevgep51 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep4849, i64 0, i64 1, i64 0
  %53 = bitcast i8* %scevgep51 to [3 x [3 x i8]]*
  %arrayidx6.1 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 1
  %arraydecay7.1 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx6.1, i64 0, i64 0
  %arrayidx9.1 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 2
  %arraydecay10.1 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx9.1, i64 0, i64 0
  %call.i22.1 = call zeroext i8 (...) @rand() #3
  %call1.i.1 = call zeroext i8 (...) @rand() #3
  %conv.i.1 = zext i8 %call.i22.1 to i32
  %54 = load i8, i8* %x, align 1
  %conv.i.i.i.1113 = zext i8 %54 to i32
  %conv1.i.i.i.1114 = zext i8 %conv2.i.i.i.2 to i32
  %xor.i.i.i.1115 = xor i32 %conv1.i.i.i.1114, %conv.i.i.i.1113
  %conv2.i.i.i.1116 = trunc i32 %xor.i.i.i.1115 to i8
  %scevgep32.1.1 = getelementptr i8, i8* %x, i64 1
  %55 = load i8, i8* %scevgep32.1.1, align 1
  %conv.i.i.i.1.1 = zext i8 %55 to i32
  %conv1.i.i.i.1.1 = zext i8 %conv2.i.i.i.1116 to i32
  %xor.i.i.i.1.1 = xor i32 %conv1.i.i.i.1.1, %conv.i.i.i.1.1
  %conv2.i.i.i.1.1 = trunc i32 %xor.i.i.i.1.1 to i8
  %scevgep32.2.1 = getelementptr i8, i8* %x, i64 2
  %56 = load i8, i8* %scevgep32.2.1, align 1
  %conv.i.i.i.2.1 = zext i8 %56 to i32
  %conv1.i.i.i.2.1 = zext i8 %conv2.i.i.i.1.1 to i32
  %xor.i.i.i.2.1 = xor i32 %conv1.i.i.i.2.1, %conv.i.i.i.2.1
  %conv2.i.i.i.2.1 = trunc i32 %xor.i.i.i.2.1 to i8
  %conv3.i.1 = zext i8 %conv2.i.i.i.2.1 to i32
  %cmp.i23.1 = icmp eq i32 %conv.i.1, %conv3.i.1
  call void @assume(i1 zeroext %cmp.i23.1) #3
  %conv5.i.1 = zext i8 %call1.i.1 to i32
  %scevgep38.1117 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %52, i64 0, i64 0, i64 0
  %57 = load i8, i8* %scevgep38.1117, align 1
  %conv.i.i96.i.1119 = zext i8 %57 to i32
  %conv1.i.i97.i.1120 = zext i8 %conv2.i.i99.i.2 to i32
  %xor.i.i98.i.1121 = xor i32 %conv1.i.i97.i.1120, %conv.i.i96.i.1119
  %conv2.i.i99.i.1122 = trunc i32 %xor.i.i98.i.1121 to i8
  %scevgep38.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %52, i64 0, i64 0, i64 1
  %58 = load i8, i8* %scevgep38.1.1, align 1
  %conv.i.i96.i.1.1 = zext i8 %58 to i32
  %conv1.i.i97.i.1.1 = zext i8 %conv2.i.i99.i.1122 to i32
  %xor.i.i98.i.1.1 = xor i32 %conv1.i.i97.i.1.1, %conv.i.i96.i.1.1
  %conv2.i.i99.i.1.1 = trunc i32 %xor.i.i98.i.1.1 to i8
  %scevgep38.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %52, i64 0, i64 0, i64 2
  %59 = load i8, i8* %scevgep38.2.1, align 1
  %conv.i.i96.i.2.1 = zext i8 %59 to i32
  %conv1.i.i97.i.2.1 = zext i8 %conv2.i.i99.i.1.1 to i32
  %xor.i.i98.i.2.1 = xor i32 %conv1.i.i97.i.2.1, %conv.i.i96.i.2.1
  %conv2.i.i99.i.2.1 = trunc i32 %xor.i.i98.i.2.1 to i8
  %conv7.i.1 = zext i8 %conv2.i.i99.i.2.1 to i32
  %cmp8.i.1 = icmp eq i32 %conv5.i.1, %conv7.i.1
  call void @assume(i1 zeroext %cmp8.i.1) #3
  %call16.i.1127 = call zeroext i8 (...) @rand() #3
  %scevgep46.1128 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep4041, i64 0, i64 0, i64 0
  store i8 %call16.i.1127, i8* %scevgep46.1128, align 1
  %scevgep47.1129 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep4041, i64 0, i64 0, i64 0
  %60 = load i8, i8* %scevgep47.1129, align 1
  %conv23.i.1130 = zext i8 %60 to i32
  %61 = load i8, i8* %x, align 1
  %scevgep54.1131 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %53, i64 0, i64 0, i64 0
  %62 = load i8, i8* %scevgep54.1131, align 1
  %call28.i.1132 = call zeroext i8 @mult(i8 zeroext %61, i8 zeroext %62) #3
  %conv29.i.1133 = zext i8 %call28.i.1132 to i32
  %xor.i.1134 = xor i32 %conv23.i.1130, %conv29.i.1133
  %63 = load i8, i8* %scevgep55, align 1
  %64 = load i8, i8* %arraydecay7.1, align 1
  %call34.i.1136 = call zeroext i8 @mult(i8 zeroext %63, i8 zeroext %64) #3
  %conv35.i.1137 = zext i8 %call34.i.1136 to i32
  %xor36.i.1138 = xor i32 %xor.i.1134, %conv35.i.1137
  %conv37.i.1139 = trunc i32 %xor36.i.1138 to i8
  store i8 %conv37.i.1139, i8* %scevgep59, align 1
  %scevgep64.1141 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep5960, i64 0, i64 1, i64 0
  %call16.i.1127.1 = call zeroext i8 (...) @rand() #3
  %scevgep46.1128.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep4041, i64 0, i64 0, i64 1
  store i8 %call16.i.1127.1, i8* %scevgep46.1128.1, align 1
  %scevgep47.1129.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep4041, i64 0, i64 0, i64 1
  %65 = load i8, i8* %scevgep47.1129.1, align 1
  %conv23.i.1130.1 = zext i8 %65 to i32
  %66 = load i8, i8* %x, align 1
  %scevgep54.1131.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %53, i64 0, i64 0, i64 1
  %67 = load i8, i8* %scevgep54.1131.1, align 1
  %call28.i.1132.1 = call zeroext i8 @mult(i8 zeroext %66, i8 zeroext %67) #3
  %conv29.i.1133.1 = zext i8 %call28.i.1132.1 to i32
  %xor.i.1134.1 = xor i32 %conv23.i.1130.1, %conv29.i.1133.1
  %scevgep58.1135.1 = getelementptr i8, i8* %scevgep55, i64 1
  %68 = load i8, i8* %scevgep58.1135.1, align 1
  %69 = load i8, i8* %arraydecay7.1, align 1
  %call34.i.1136.1 = call zeroext i8 @mult(i8 zeroext %68, i8 zeroext %69) #3
  %conv35.i.1137.1 = zext i8 %call34.i.1136.1 to i32
  %xor36.i.1138.1 = xor i32 %xor.i.1134.1, %conv35.i.1137.1
  %conv37.i.1139.1 = trunc i32 %xor36.i.1138.1 to i8
  store i8 %conv37.i.1139.1, i8* %scevgep64.1141, align 1
  %scevgep43.1146 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep4041, i64 0, i64 1, i64 1
  %70 = bitcast i8* %scevgep43.1146 to [3 x [3 x i8]]*
  %scevgep53.1147 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %53, i64 0, i64 0, i64 1
  %71 = bitcast i8* %scevgep53.1147 to [3 x [3 x i8]]*
  %scevgep57.1148 = getelementptr i8, i8* %scevgep55, i64 1
  %scevgep62.1149 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep5960, i64 0, i64 1, i64 1
  %arrayidx25.i.1.1 = getelementptr inbounds i8, i8* %x, i64 1
  %arrayidx33.i.1.1 = getelementptr inbounds i8, i8* %arraydecay7.1, i64 1
  %call16.i.1.1 = call zeroext i8 (...) @rand() #3
  %scevgep46.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %70, i64 0, i64 0, i64 0
  store i8 %call16.i.1.1, i8* %scevgep46.1.1, align 1
  %scevgep47.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %70, i64 0, i64 0, i64 0
  %72 = load i8, i8* %scevgep47.1.1, align 1
  %conv23.i.1.1 = zext i8 %72 to i32
  %73 = load i8, i8* %arrayidx25.i.1.1, align 1
  %scevgep54.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %71, i64 0, i64 0, i64 0
  %74 = load i8, i8* %scevgep54.1.1, align 1
  %call28.i.1.1 = call zeroext i8 @mult(i8 zeroext %73, i8 zeroext %74) #3
  %conv29.i.1.1 = zext i8 %call28.i.1.1 to i32
  %xor.i.1.1 = xor i32 %conv23.i.1.1, %conv29.i.1.1
  %75 = load i8, i8* %scevgep57.1148, align 1
  %76 = load i8, i8* %arrayidx33.i.1.1, align 1
  %call34.i.1.1 = call zeroext i8 @mult(i8 zeroext %75, i8 zeroext %76) #3
  %conv35.i.1.1 = zext i8 %call34.i.1.1 to i32
  %xor36.i.1.1 = xor i32 %xor.i.1.1, %conv35.i.1.1
  %conv37.i.1.1 = trunc i32 %xor36.i.1.1 to i8
  store i8 %conv37.i.1.1, i8* %scevgep62.1149, align 1
  %77 = load i8, i8* %x, align 1
  %78 = load i8, i8* %arraydecay7.1, align 1
  %call54.i.1151 = call zeroext i8 @mult(i8 zeroext %77, i8 zeroext %78) #3
  store i8 %call54.i.1151, i8* %arraydecay10.1, align 1
  %scevgep77.1.1160 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %79 = load i8, i8* %scevgep77.1.1160, align 1
  %conv68.i.1.1161 = zext i8 %79 to i32
  %80 = load i8, i8* %arraydecay10.1, align 1
  %conv71.i.1.1162 = zext i8 %80 to i32
  %xor72.i.1.1163 = xor i32 %conv71.i.1.1162, %conv68.i.1.1161
  %conv73.i.1.1164 = trunc i32 %xor72.i.1.1163 to i8
  store i8 %conv73.i.1.1164, i8* %arraydecay10.1, align 1
  %scevgep77.2.1167 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 2
  %81 = load i8, i8* %scevgep77.2.1167, align 1
  %conv68.i.2.1168 = zext i8 %81 to i32
  %82 = load i8, i8* %arraydecay10.1, align 1
  %conv71.i.2.1169 = zext i8 %82 to i32
  %xor72.i.2.1170 = xor i32 %conv71.i.2.1169, %conv68.i.2.1168
  %conv73.i.2.1171 = trunc i32 %xor72.i.2.1170 to i8
  store i8 %conv73.i.2.1171, i8* %arraydecay10.1, align 1
  %scevgep76.1173 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 1, i64 0
  %83 = bitcast i8* %scevgep76.1173 to [3 x [3 x i8]]*
  %arrayidx51.i.1.1 = getelementptr inbounds i8, i8* %x, i64 1
  %84 = load i8, i8* %arrayidx51.i.1.1, align 1
  %arrayidx53.i.1.1 = getelementptr inbounds i8, i8* %arraydecay7.1, i64 1
  %85 = load i8, i8* %arrayidx53.i.1.1, align 1
  %call54.i.1.1 = call zeroext i8 @mult(i8 zeroext %84, i8 zeroext %85) #3
  %arrayidx56.i.1.1 = getelementptr inbounds i8, i8* %arraydecay10.1, i64 1
  store i8 %call54.i.1.1, i8* %arrayidx56.i.1.1, align 1
  %arrayidx70.i.1.1 = getelementptr inbounds i8, i8* %arraydecay10.1, i64 1
  %scevgep77.196.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %83, i64 0, i64 0, i64 0
  %86 = load i8, i8* %scevgep77.196.1, align 1
  %conv68.i.197.1 = zext i8 %86 to i32
  %87 = load i8, i8* %arrayidx70.i.1.1, align 1
  %conv71.i.198.1 = zext i8 %87 to i32
  %xor72.i.199.1 = xor i32 %conv71.i.198.1, %conv68.i.197.1
  %conv73.i.1100.1 = trunc i32 %xor72.i.199.1 to i8
  store i8 %conv73.i.1100.1, i8* %arrayidx70.i.1.1, align 1
  %scevgep77.2.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %83, i64 0, i64 0, i64 2
  %88 = load i8, i8* %scevgep77.2.1.1, align 1
  %conv68.i.2.1.1 = zext i8 %88 to i32
  %89 = load i8, i8* %arrayidx70.i.1.1, align 1
  %conv71.i.2.1.1 = zext i8 %89 to i32
  %xor72.i.2.1.1 = xor i32 %conv71.i.2.1.1, %conv68.i.2.1.1
  %conv73.i.2.1.1 = trunc i32 %xor72.i.2.1.1 to i8
  store i8 %conv73.i.2.1.1, i8* %arrayidx70.i.1.1, align 1
  %scevgep76.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %83, i64 0, i64 1, i64 0
  %90 = bitcast i8* %scevgep76.1.1 to [3 x [3 x i8]]*
  %arrayidx51.i.2.1 = getelementptr inbounds i8, i8* %x, i64 2
  %91 = load i8, i8* %arrayidx51.i.2.1, align 1
  %arrayidx53.i.2.1 = getelementptr inbounds i8, i8* %arraydecay7.1, i64 2
  %92 = load i8, i8* %arrayidx53.i.2.1, align 1
  %call54.i.2.1 = call zeroext i8 @mult(i8 zeroext %91, i8 zeroext %92) #3
  %arrayidx56.i.2.1 = getelementptr inbounds i8, i8* %arraydecay10.1, i64 2
  store i8 %call54.i.2.1, i8* %arrayidx56.i.2.1, align 1
  %arrayidx70.i.2.1 = getelementptr inbounds i8, i8* %arraydecay10.1, i64 2
  %scevgep77.2105.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %90, i64 0, i64 0, i64 0
  %93 = load i8, i8* %scevgep77.2105.1, align 1
  %conv68.i.2106.1 = zext i8 %93 to i32
  %94 = load i8, i8* %arrayidx70.i.2.1, align 1
  %conv71.i.2107.1 = zext i8 %94 to i32
  %xor72.i.2108.1 = xor i32 %conv71.i.2107.1, %conv68.i.2106.1
  %conv73.i.2109.1 = trunc i32 %xor72.i.2108.1 to i8
  store i8 %conv73.i.2109.1, i8* %arrayidx70.i.2.1, align 1
  %scevgep77.1.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %90, i64 0, i64 0, i64 1
  %95 = load i8, i8* %scevgep77.1.2.1, align 1
  %conv68.i.1.2.1 = zext i8 %95 to i32
  %96 = load i8, i8* %arrayidx70.i.2.1, align 1
  %conv71.i.1.2.1 = zext i8 %96 to i32
  %xor72.i.1.2.1 = xor i32 %conv71.i.1.2.1, %conv68.i.1.2.1
  %conv73.i.1.2.1 = trunc i32 %xor72.i.1.2.1 to i8
  store i8 %conv73.i.1.2.1, i8* %arrayidx70.i.2.1, align 1
  %call80.i.1 = call zeroext i8 @mult(i8 zeroext %call.i22.1, i8 zeroext %call1.i.1) #3
  %conv81.i.1 = zext i8 %call80.i.1 to i32
  %scevgep82.1175 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %52, i64 0, i64 0, i64 0
  %scevgep83.1176 = getelementptr i8, i8* %scevgep82.1175, i64 3
  %97 = load i8, i8* %scevgep83.1176, align 1
  %conv.i.i113.i.1178 = zext i8 %97 to i32
  %conv1.i.i114.i.1179 = zext i8 %conv2.i.i116.i.2 to i32
  %xor.i.i115.i.1180 = xor i32 %conv1.i.i114.i.1179, %conv.i.i113.i.1178
  %conv2.i.i116.i.1181 = trunc i32 %xor.i.i115.i.1180 to i8
  %scevgep82.1.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %52, i64 0, i64 0, i64 1
  %scevgep83.1.1 = getelementptr i8, i8* %scevgep82.1.1, i64 3
  %98 = load i8, i8* %scevgep83.1.1, align 1
  %conv.i.i113.i.1.1 = zext i8 %98 to i32
  %conv1.i.i114.i.1.1 = zext i8 %conv2.i.i116.i.1181 to i32
  %xor.i.i115.i.1.1 = xor i32 %conv1.i.i114.i.1.1, %conv.i.i113.i.1.1
  %conv2.i.i116.i.1.1 = trunc i32 %xor.i.i115.i.1.1 to i8
  %scevgep82.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %52, i64 0, i64 0, i64 2
  %scevgep83.2.1 = getelementptr i8, i8* %scevgep82.2.1, i64 3
  %99 = load i8, i8* %scevgep83.2.1, align 1
  %conv.i.i113.i.2.1 = zext i8 %99 to i32
  %conv1.i.i114.i.2.1 = zext i8 %conv2.i.i116.i.1.1 to i32
  %xor.i.i115.i.2.1 = xor i32 %conv1.i.i114.i.2.1, %conv.i.i113.i.2.1
  %conv2.i.i116.i.2.1 = trunc i32 %xor.i.i115.i.2.1 to i8
  %conv83.i.1 = zext i8 %conv2.i.i116.i.2.1 to i32
  %cmp84.i.1 = icmp eq i32 %conv81.i.1, %conv83.i.1
  call void @assert(i1 zeroext %cmp84.i.1) #3
  %scevgep24 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 2, i64 0
  %100 = load i8, i8* %scevgep24, align 1
  store i8 %100, i8* %y, align 1
  %scevgep27.1 = getelementptr i8, i8* %scevgep24, i64 1
  %101 = load i8, i8* %scevgep27.1, align 1
  %scevgep28.1 = getelementptr i8, i8* %y, i64 1
  store i8 %101, i8* %scevgep28.1, align 1
  %scevgep27.2 = getelementptr i8, i8* %scevgep24, i64 2
  %102 = load i8, i8* %scevgep27.2, align 1
  %scevgep28.2 = getelementptr i8, i8* %y, i64 2
  store i8 %102, i8* %scevgep28.2, align 1
  %call.i48 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call) #3
  %call.i48.1 = call zeroext i8 @mult(i8 zeroext %call.i48, i8 zeroext %call) #3
  %conv14 = zext i8 %call.i48.1 to i32
  %103 = load i8, i8* %y, align 1
  %scevgep.1 = getelementptr i8, i8* %y, i64 1
  %104 = load i8, i8* %scevgep.1, align 1
  %conv.i.i62.1 = zext i8 %104 to i32
  %conv1.i.i63.1 = zext i8 %103 to i32
  %xor.i.i64.1 = xor i32 %conv1.i.i63.1, %conv.i.i62.1
  %conv2.i.i65.1 = trunc i32 %xor.i.i64.1 to i8
  %scevgep.2 = getelementptr i8, i8* %y, i64 2
  %105 = load i8, i8* %scevgep.2, align 1
  %conv.i.i62.2 = zext i8 %105 to i32
  %conv1.i.i63.2 = zext i8 %conv2.i.i65.1 to i32
  %xor.i.i64.2 = xor i32 %conv1.i.i63.2, %conv.i.i62.2
  %conv2.i.i65.2 = trunc i32 %xor.i.i64.2 to i8
  %conv16 = zext i8 %conv2.i.i65.2 to i32
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
  %r.i.i = alloca [3 x [3 x i8]], align 1
  %z.i = alloca [3 x i8], align 1
  %w.i = alloca [3 x i8], align 1
  %u.i = alloca [3 x i8], align 1
  %v.i = alloca [3 x i8], align 1
  %m.i = alloca [3 x i8], align 1
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
  %conv2 = zext i8 %conv2.i.i.2 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %call.i = call zeroext i8 (...) @rand() #3
  %conv.i = zext i8 %call.i to i32
  %3 = load i8, i8* %x, align 1
  %scevgep296.1 = getelementptr i8, i8* %x, i64 1
  %4 = load i8, i8* %scevgep296.1, align 1
  %conv.i.i.i.1 = zext i8 %4 to i32
  %conv1.i.i.i.1 = zext i8 %3 to i32
  %xor.i.i.i.1 = xor i32 %conv1.i.i.i.1, %conv.i.i.i.1
  %conv2.i.i.i.1 = trunc i32 %xor.i.i.i.1 to i8
  %scevgep296.2 = getelementptr i8, i8* %x, i64 2
  %5 = load i8, i8* %scevgep296.2, align 1
  %conv.i.i.i.2 = zext i8 %5 to i32
  %conv1.i.i.i.2 = zext i8 %conv2.i.i.i.1 to i32
  %xor.i.i.i.2 = xor i32 %conv1.i.i.i.2, %conv.i.i.i.2
  %conv2.i.i.i.2 = trunc i32 %xor.i.i.i.2 to i8
  %conv2.i = zext i8 %conv2.i.i.i.2 to i32
  %cmp.i = icmp eq i32 %conv.i, %conv2.i
  call void @assume(i1 zeroext %cmp.i) #3
  %6 = load i8, i8* %x, align 1
  %call.i.i17 = call zeroext i8 @square(i8 zeroext %6) #3
  %scevgep292 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 0
  store i8 %call.i.i17, i8* %scevgep292, align 1
  %scevgep291.1 = getelementptr i8, i8* %x, i64 1
  %7 = load i8, i8* %scevgep291.1, align 1
  %call.i.i17.1 = call zeroext i8 @square(i8 zeroext %7) #3
  %scevgep292.1 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 1
  store i8 %call.i.i17.1, i8* %scevgep292.1, align 1
  %scevgep291.2 = getelementptr i8, i8* %x, i64 2
  %8 = load i8, i8* %scevgep291.2, align 1
  %call.i.i17.2 = call zeroext i8 @square(i8 zeroext %8) #3
  %scevgep292.2 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 2
  store i8 %call.i.i17.2, i8* %scevgep292.2, align 1
  %arraydecay4.i = getelementptr inbounds [3 x i8], [3 x i8]* %z.i, i64 0, i64 0
  %call.i28.i = call zeroext i8 (...) @rand() #3
  %conv.i.i20 = zext i8 %call.i28.i to i32
  %scevgep287 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 0
  %9 = load i8, i8* %scevgep287, align 1
  %scevgep287.1 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 1
  %10 = load i8, i8* %scevgep287.1, align 1
  %conv.i.i.i.i.1 = zext i8 %10 to i32
  %conv1.i.i.i.i.1 = zext i8 %9 to i32
  %xor.i.i.i.i.1 = xor i32 %conv1.i.i.i.i.1, %conv.i.i.i.i.1
  %conv2.i.i.i.i.1 = trunc i32 %xor.i.i.i.i.1 to i8
  %scevgep287.2 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 2
  %11 = load i8, i8* %scevgep287.2, align 1
  %conv.i.i.i.i.2 = zext i8 %11 to i32
  %conv1.i.i.i.i.2 = zext i8 %conv2.i.i.i.i.1 to i32
  %xor.i.i.i.i.2 = xor i32 %conv1.i.i.i.i.2, %conv.i.i.i.i.2
  %conv2.i.i.i.i.2 = trunc i32 %xor.i.i.i.i.2 to i8
  %conv2.i.i21 = zext i8 %conv2.i.i.i.i.2 to i32
  %cmp.i29.i = icmp eq i32 %conv.i.i20, %conv2.i.i21
  call void @assume(i1 zeroext %cmp.i29.i) #3
  %call7.i.i = call zeroext i8 (...) @rand() #3
  %conv8.i.i = zext i8 %call7.i.i to i32
  %12 = load i8, i8* %arraydecay4.i, align 1
  %conv9.i.i = zext i8 %12 to i32
  %xor.i.i22 = xor i32 %conv9.i.i, %conv8.i.i
  %conv10.i.i = trunc i32 %xor.i.i22 to i8
  store i8 %conv10.i.i, i8* %arraydecay4.i, align 1
  %conv11.i.i = zext i8 %call7.i.i to i32
  %scevgep283 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 1
  %13 = load i8, i8* %scevgep283, align 1
  %conv13.i.i = zext i8 %13 to i32
  %xor14.i.i = xor i32 %conv13.i.i, %conv11.i.i
  %conv15.i.i = trunc i32 %xor14.i.i to i8
  store i8 %conv15.i.i, i8* %scevgep283, align 1
  %call7.i.i.1 = call zeroext i8 (...) @rand() #3
  %conv8.i.i.1 = zext i8 %call7.i.i.1 to i32
  %14 = load i8, i8* %arraydecay4.i, align 1
  %conv9.i.i.1 = zext i8 %14 to i32
  %xor.i.i22.1 = xor i32 %conv9.i.i.1, %conv8.i.i.1
  %conv10.i.i.1 = trunc i32 %xor.i.i22.1 to i8
  store i8 %conv10.i.i.1, i8* %arraydecay4.i, align 1
  %conv11.i.i.1 = zext i8 %call7.i.i.1 to i32
  %scevgep283.1 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 2
  %15 = load i8, i8* %scevgep283.1, align 1
  %conv13.i.i.1 = zext i8 %15 to i32
  %xor14.i.i.1 = xor i32 %conv13.i.i.1, %conv11.i.i.1
  %conv15.i.i.1 = trunc i32 %xor14.i.i.1 to i8
  store i8 %conv15.i.i.1, i8* %scevgep283.1, align 1
  %conv16.i.i = zext i8 %call.i28.i to i32
  %scevgep279 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 0
  %16 = load i8, i8* %scevgep279, align 1
  %scevgep279.1 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 1
  %17 = load i8, i8* %scevgep279.1, align 1
  %conv.i.i31.i.i.1 = zext i8 %17 to i32
  %conv1.i.i32.i.i.1 = zext i8 %16 to i32
  %xor.i.i33.i.i.1 = xor i32 %conv1.i.i32.i.i.1, %conv.i.i31.i.i.1
  %conv2.i.i34.i.i.1 = trunc i32 %xor.i.i33.i.i.1 to i8
  %scevgep279.2 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 2
  %18 = load i8, i8* %scevgep279.2, align 1
  %conv.i.i31.i.i.2 = zext i8 %18 to i32
  %conv1.i.i32.i.i.2 = zext i8 %conv2.i.i34.i.i.1 to i32
  %xor.i.i33.i.i.2 = xor i32 %conv1.i.i32.i.i.2, %conv.i.i31.i.i.2
  %conv2.i.i34.i.i.2 = trunc i32 %xor.i.i33.i.i.2 to i8
  %conv18.i.i = zext i8 %conv2.i.i34.i.i.2 to i32
  %cmp19.i.i = icmp eq i32 %conv16.i.i, %conv18.i.i
  call void @assert(i1 zeroext %cmp19.i.i) #3
  %arraydecay5.i = getelementptr inbounds [3 x i8], [3 x i8]* %z.i, i64 0, i64 0
  %arraydecay6.i = getelementptr inbounds [3 x i8], [3 x i8]* %u.i, i64 0, i64 0
  %call.i41.i = call zeroext i8 (...) @rand() #3
  %call1.i.i = call zeroext i8 (...) @rand() #3
  %conv.i42.i = zext i8 %call.i41.i to i32
  %scevgep275 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 0
  %19 = load i8, i8* %scevgep275, align 1
  %scevgep275.1 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 1
  %20 = load i8, i8* %scevgep275.1, align 1
  %conv.i.i.i48.i.1 = zext i8 %20 to i32
  %conv1.i.i.i49.i.1 = zext i8 %19 to i32
  %xor.i.i.i50.i.1 = xor i32 %conv1.i.i.i49.i.1, %conv.i.i.i48.i.1
  %conv2.i.i.i51.i.1 = trunc i32 %xor.i.i.i50.i.1 to i8
  %scevgep275.2 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 2
  %21 = load i8, i8* %scevgep275.2, align 1
  %conv.i.i.i48.i.2 = zext i8 %21 to i32
  %conv1.i.i.i49.i.2 = zext i8 %conv2.i.i.i51.i.1 to i32
  %xor.i.i.i50.i.2 = xor i32 %conv1.i.i.i49.i.2, %conv.i.i.i48.i.2
  %conv2.i.i.i51.i.2 = trunc i32 %xor.i.i.i50.i.2 to i8
  %conv3.i.i = zext i8 %conv2.i.i.i51.i.2 to i32
  %cmp.i54.i = icmp eq i32 %conv.i42.i, %conv3.i.i
  call void @assume(i1 zeroext %cmp.i54.i) #3
  %conv5.i.i = zext i8 %call1.i.i to i32
  %22 = load i8, i8* %x, align 1
  %scevgep271.1 = getelementptr i8, i8* %x, i64 1
  %23 = load i8, i8* %scevgep271.1, align 1
  %conv.i.i96.i.i.1 = zext i8 %23 to i32
  %conv1.i.i97.i.i.1 = zext i8 %22 to i32
  %xor.i.i98.i.i.1 = xor i32 %conv1.i.i97.i.i.1, %conv.i.i96.i.i.1
  %conv2.i.i99.i.i.1 = trunc i32 %xor.i.i98.i.i.1 to i8
  %scevgep271.2 = getelementptr i8, i8* %x, i64 2
  %24 = load i8, i8* %scevgep271.2, align 1
  %conv.i.i96.i.i.2 = zext i8 %24 to i32
  %conv1.i.i97.i.i.2 = zext i8 %conv2.i.i99.i.i.1 to i32
  %xor.i.i98.i.i.2 = xor i32 %conv1.i.i97.i.i.2, %conv.i.i96.i.i.2
  %conv2.i.i99.i.i.2 = trunc i32 %xor.i.i98.i.i.2 to i8
  %conv7.i.i = zext i8 %conv2.i.i99.i.i.2 to i32
  %cmp8.i.i = icmp eq i32 %conv5.i.i, %conv7.i.i
  call void @assume(i1 zeroext %cmp8.i.i) #3
  %scevgep248 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %scevgep248249 = bitcast i8* %scevgep248 to [3 x [3 x i8]]*
  %scevgep261 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %scevgep261262 = bitcast i8* %scevgep261 to [3 x [3 x i8]]*
  %call16.i.i = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.i, i8* %scevgep248, align 1
  %25 = load i8, i8* %scevgep248, align 1
  %conv23.i.i = zext i8 %25 to i32
  %26 = load i8, i8* %arraydecay5.i, align 1
  %scevgep259 = getelementptr i8, i8* %x, i64 1
  %27 = load i8, i8* %scevgep259, align 1
  %call28.i.i = call zeroext i8 @mult(i8 zeroext %26, i8 zeroext %27) #3
  %conv29.i.i = zext i8 %call28.i.i to i32
  %xor.i60.i = xor i32 %conv23.i.i, %conv29.i.i
  %scevgep260 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 1
  %28 = load i8, i8* %scevgep260, align 1
  %29 = load i8, i8* %x, align 1
  %call34.i.i = call zeroext i8 @mult(i8 zeroext %28, i8 zeroext %29) #3
  %conv35.i.i = zext i8 %call34.i.i to i32
  %xor36.i.i = xor i32 %xor.i60.i, %conv35.i.i
  %conv37.i.i = trunc i32 %xor36.i.i to i8
  store i8 %conv37.i.i, i8* %scevgep261, align 1
  %scevgep253 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep248249, i64 0, i64 0, i64 1
  %scevgep266 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep261262, i64 0, i64 1, i64 0
  %call16.i.i.1415 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.i.1415, i8* %scevgep253, align 1
  %30 = load i8, i8* %scevgep253, align 1
  %conv23.i.i.1416 = zext i8 %30 to i32
  %31 = load i8, i8* %arraydecay5.i, align 1
  %scevgep259.1417 = getelementptr i8, i8* %x, i64 2
  %32 = load i8, i8* %scevgep259.1417, align 1
  %call28.i.i.1418 = call zeroext i8 @mult(i8 zeroext %31, i8 zeroext %32) #3
  %conv29.i.i.1419 = zext i8 %call28.i.i.1418 to i32
  %xor.i60.i.1420 = xor i32 %conv23.i.i.1416, %conv29.i.i.1419
  %scevgep260.1421 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 2
  %33 = load i8, i8* %scevgep260.1421, align 1
  %34 = load i8, i8* %x, align 1
  %call34.i.i.1422 = call zeroext i8 @mult(i8 zeroext %33, i8 zeroext %34) #3
  %conv35.i.i.1423 = zext i8 %call34.i.i.1422 to i32
  %xor36.i.i.1424 = xor i32 %xor.i60.i.1420, %conv35.i.i.1423
  %conv37.i.i.1425 = trunc i32 %xor36.i.i.1424 to i8
  store i8 %conv37.i.i.1425, i8* %scevgep266, align 1
  %scevgep251 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep248249, i64 0, i64 1, i64 1
  %scevgep264 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep261262, i64 0, i64 1, i64 1
  %arrayidx25.i.i.1 = getelementptr inbounds i8, i8* %arraydecay5.i, i64 1
  %arrayidx33.i.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %call16.i.i.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.i.1, i8* %scevgep251, align 1
  %35 = load i8, i8* %scevgep251, align 1
  %conv23.i.i.1 = zext i8 %35 to i32
  %36 = load i8, i8* %arrayidx25.i.i.1, align 1
  %scevgep259.1 = getelementptr i8, i8* %x, i64 2
  %37 = load i8, i8* %scevgep259.1, align 1
  %call28.i.i.1 = call zeroext i8 @mult(i8 zeroext %36, i8 zeroext %37) #3
  %conv29.i.i.1 = zext i8 %call28.i.i.1 to i32
  %xor.i60.i.1 = xor i32 %conv23.i.i.1, %conv29.i.i.1
  %scevgep260.1 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 2
  %38 = load i8, i8* %scevgep260.1, align 1
  %39 = load i8, i8* %arrayidx33.i.i.1, align 1
  %call34.i.i.1 = call zeroext i8 @mult(i8 zeroext %38, i8 zeroext %39) #3
  %conv35.i.i.1 = zext i8 %call34.i.i.1 to i32
  %xor36.i.i.1 = xor i32 %xor.i60.i.1, %conv35.i.i.1
  %conv37.i.i.1 = trunc i32 %xor36.i.i.1 to i8
  store i8 %conv37.i.i.1, i8* %scevgep264, align 1
  %40 = load i8, i8* %arraydecay5.i, align 1
  %41 = load i8, i8* %x, align 1
  %call54.i.i = call zeroext i8 @mult(i8 zeroext %40, i8 zeroext %41) #3
  store i8 %call54.i.i, i8* %arraydecay6.i, align 1
  %scevgep244.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %42 = load i8, i8* %scevgep244.1, align 1
  %conv68.i.i.1 = zext i8 %42 to i32
  %43 = load i8, i8* %arraydecay6.i, align 1
  %conv71.i.i.1 = zext i8 %43 to i32
  %xor72.i.i.1 = xor i32 %conv71.i.i.1, %conv68.i.i.1
  %conv73.i.i.1 = trunc i32 %xor72.i.i.1 to i8
  store i8 %conv73.i.i.1, i8* %arraydecay6.i, align 1
  %scevgep244.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %44 = load i8, i8* %scevgep244.2, align 1
  %conv68.i.i.2 = zext i8 %44 to i32
  %45 = load i8, i8* %arraydecay6.i, align 1
  %conv71.i.i.2 = zext i8 %45 to i32
  %xor72.i.i.2 = xor i32 %conv71.i.i.2, %conv68.i.i.2
  %conv73.i.i.2 = trunc i32 %xor72.i.i.2 to i8
  store i8 %conv73.i.i.2, i8* %arraydecay6.i, align 1
  %scevgep243 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %46 = bitcast i8* %scevgep243 to [3 x [3 x i8]]*
  %arrayidx51.i.i.1 = getelementptr inbounds i8, i8* %arraydecay5.i, i64 1
  %47 = load i8, i8* %arrayidx51.i.i.1, align 1
  %arrayidx53.i.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %48 = load i8, i8* %arrayidx53.i.i.1, align 1
  %call54.i.i.1 = call zeroext i8 @mult(i8 zeroext %47, i8 zeroext %48) #3
  %arrayidx56.i.i.1 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 1
  store i8 %call54.i.i.1, i8* %arrayidx56.i.i.1, align 1
  %arrayidx70.i.i.1 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 1
  %scevgep244.1358 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %46, i64 0, i64 0, i64 0
  %49 = load i8, i8* %scevgep244.1358, align 1
  %conv68.i.i.1359 = zext i8 %49 to i32
  %50 = load i8, i8* %arrayidx70.i.i.1, align 1
  %conv71.i.i.1360 = zext i8 %50 to i32
  %xor72.i.i.1361 = xor i32 %conv71.i.i.1360, %conv68.i.i.1359
  %conv73.i.i.1362 = trunc i32 %xor72.i.i.1361 to i8
  store i8 %conv73.i.i.1362, i8* %arrayidx70.i.i.1, align 1
  %scevgep244.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %46, i64 0, i64 0, i64 2
  %51 = load i8, i8* %scevgep244.2.1, align 1
  %conv68.i.i.2.1 = zext i8 %51 to i32
  %52 = load i8, i8* %arrayidx70.i.i.1, align 1
  %conv71.i.i.2.1 = zext i8 %52 to i32
  %xor72.i.i.2.1 = xor i32 %conv71.i.i.2.1, %conv68.i.i.2.1
  %conv73.i.i.2.1 = trunc i32 %xor72.i.i.2.1 to i8
  store i8 %conv73.i.i.2.1, i8* %arrayidx70.i.i.1, align 1
  %scevgep243.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %46, i64 0, i64 1, i64 0
  %53 = bitcast i8* %scevgep243.1 to [3 x [3 x i8]]*
  %arrayidx51.i.i.2 = getelementptr inbounds i8, i8* %arraydecay5.i, i64 2
  %54 = load i8, i8* %arrayidx51.i.i.2, align 1
  %arrayidx53.i.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %55 = load i8, i8* %arrayidx53.i.i.2, align 1
  %call54.i.i.2 = call zeroext i8 @mult(i8 zeroext %54, i8 zeroext %55) #3
  %arrayidx56.i.i.2 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 2
  store i8 %call54.i.i.2, i8* %arrayidx56.i.i.2, align 1
  %arrayidx70.i.i.2 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 2
  %scevgep244.2367 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %53, i64 0, i64 0, i64 0
  %56 = load i8, i8* %scevgep244.2367, align 1
  %conv68.i.i.2368 = zext i8 %56 to i32
  %57 = load i8, i8* %arrayidx70.i.i.2, align 1
  %conv71.i.i.2369 = zext i8 %57 to i32
  %xor72.i.i.2370 = xor i32 %conv71.i.i.2369, %conv68.i.i.2368
  %conv73.i.i.2371 = trunc i32 %xor72.i.i.2370 to i8
  store i8 %conv73.i.i.2371, i8* %arrayidx70.i.i.2, align 1
  %scevgep244.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %53, i64 0, i64 0, i64 1
  %58 = load i8, i8* %scevgep244.1.2, align 1
  %conv68.i.i.1.2 = zext i8 %58 to i32
  %59 = load i8, i8* %arrayidx70.i.i.2, align 1
  %conv71.i.i.1.2 = zext i8 %59 to i32
  %xor72.i.i.1.2 = xor i32 %conv71.i.i.1.2, %conv68.i.i.1.2
  %conv73.i.i.1.2 = trunc i32 %xor72.i.i.1.2 to i8
  store i8 %conv73.i.i.1.2, i8* %arrayidx70.i.i.2, align 1
  %call80.i.i = call zeroext i8 @mult(i8 zeroext %call.i41.i, i8 zeroext %call1.i.i) #3
  %conv81.i.i = zext i8 %call80.i.i to i32
  %scevgep234 = getelementptr [3 x i8], [3 x i8]* %u.i, i64 0, i64 0
  %60 = load i8, i8* %scevgep234, align 1
  %scevgep234.1 = getelementptr [3 x i8], [3 x i8]* %u.i, i64 0, i64 1
  %61 = load i8, i8* %scevgep234.1, align 1
  %conv.i.i113.i.i.1 = zext i8 %61 to i32
  %conv1.i.i114.i.i.1 = zext i8 %60 to i32
  %xor.i.i115.i.i.1 = xor i32 %conv1.i.i114.i.i.1, %conv.i.i113.i.i.1
  %conv2.i.i116.i.i.1 = trunc i32 %xor.i.i115.i.i.1 to i8
  %scevgep234.2 = getelementptr [3 x i8], [3 x i8]* %u.i, i64 0, i64 2
  %62 = load i8, i8* %scevgep234.2, align 1
  %conv.i.i113.i.i.2 = zext i8 %62 to i32
  %conv1.i.i114.i.i.2 = zext i8 %conv2.i.i116.i.i.1 to i32
  %xor.i.i115.i.i.2 = xor i32 %conv1.i.i114.i.i.2, %conv.i.i113.i.i.2
  %conv2.i.i116.i.i.2 = trunc i32 %xor.i.i115.i.i.2 to i8
  %conv83.i.i = zext i8 %conv2.i.i116.i.i.2 to i32
  %cmp84.i.i = icmp eq i32 %conv81.i.i, %conv83.i.i
  call void @assert(i1 zeroext %cmp84.i.i) #3
  %scevgep229 = getelementptr [3 x i8], [3 x i8]* %u.i, i64 0, i64 0
  %63 = load i8, i8* %scevgep229, align 1
  %call.i71.i = call zeroext i8 @exp4(i8 zeroext %63) #3
  %scevgep230 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 0
  store i8 %call.i71.i, i8* %scevgep230, align 1
  %scevgep229.1 = getelementptr [3 x i8], [3 x i8]* %u.i, i64 0, i64 1
  %64 = load i8, i8* %scevgep229.1, align 1
  %call.i71.i.1 = call zeroext i8 @exp4(i8 zeroext %64) #3
  %scevgep230.1 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 1
  store i8 %call.i71.i.1, i8* %scevgep230.1, align 1
  %scevgep229.2 = getelementptr [3 x i8], [3 x i8]* %u.i, i64 0, i64 2
  %65 = load i8, i8* %scevgep229.2, align 1
  %call.i71.i.2 = call zeroext i8 @exp4(i8 zeroext %65) #3
  %scevgep230.2 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 2
  store i8 %call.i71.i.2, i8* %scevgep230.2, align 1
  %arraydecay9.i = getelementptr inbounds [3 x i8], [3 x i8]* %w.i, i64 0, i64 0
  %call.i92.i = call zeroext i8 (...) @rand() #3
  %conv.i93.i = zext i8 %call.i92.i to i32
  %scevgep225 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 0
  %66 = load i8, i8* %scevgep225, align 1
  %scevgep225.1 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 1
  %67 = load i8, i8* %scevgep225.1, align 1
  %conv.i.i.i99.i.1 = zext i8 %67 to i32
  %conv1.i.i.i100.i.1 = zext i8 %66 to i32
  %xor.i.i.i101.i.1 = xor i32 %conv1.i.i.i100.i.1, %conv.i.i.i99.i.1
  %conv2.i.i.i102.i.1 = trunc i32 %xor.i.i.i101.i.1 to i8
  %scevgep225.2 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 2
  %68 = load i8, i8* %scevgep225.2, align 1
  %conv.i.i.i99.i.2 = zext i8 %68 to i32
  %conv1.i.i.i100.i.2 = zext i8 %conv2.i.i.i102.i.1 to i32
  %xor.i.i.i101.i.2 = xor i32 %conv1.i.i.i100.i.2, %conv.i.i.i99.i.2
  %conv2.i.i.i102.i.2 = trunc i32 %xor.i.i.i101.i.2 to i8
  %conv2.i105.i = zext i8 %conv2.i.i.i102.i.2 to i32
  %cmp.i106.i = icmp eq i32 %conv.i93.i, %conv2.i105.i
  call void @assume(i1 zeroext %cmp.i106.i) #3
  %call7.i111.i = call zeroext i8 (...) @rand() #3
  %conv8.i112.i = zext i8 %call7.i111.i to i32
  %69 = load i8, i8* %arraydecay9.i, align 1
  %conv9.i113.i = zext i8 %69 to i32
  %xor.i114.i = xor i32 %conv9.i113.i, %conv8.i112.i
  %conv10.i115.i = trunc i32 %xor.i114.i to i8
  store i8 %conv10.i115.i, i8* %arraydecay9.i, align 1
  %conv11.i116.i = zext i8 %call7.i111.i to i32
  %scevgep221 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 1
  %70 = load i8, i8* %scevgep221, align 1
  %conv13.i119.i = zext i8 %70 to i32
  %xor14.i120.i = xor i32 %conv13.i119.i, %conv11.i116.i
  %conv15.i121.i = trunc i32 %xor14.i120.i to i8
  store i8 %conv15.i121.i, i8* %scevgep221, align 1
  %call7.i111.i.1 = call zeroext i8 (...) @rand() #3
  %conv8.i112.i.1 = zext i8 %call7.i111.i.1 to i32
  %71 = load i8, i8* %arraydecay9.i, align 1
  %conv9.i113.i.1 = zext i8 %71 to i32
  %xor.i114.i.1 = xor i32 %conv9.i113.i.1, %conv8.i112.i.1
  %conv10.i115.i.1 = trunc i32 %xor.i114.i.1 to i8
  store i8 %conv10.i115.i.1, i8* %arraydecay9.i, align 1
  %conv11.i116.i.1 = zext i8 %call7.i111.i.1 to i32
  %scevgep221.1 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 2
  %72 = load i8, i8* %scevgep221.1, align 1
  %conv13.i119.i.1 = zext i8 %72 to i32
  %xor14.i120.i.1 = xor i32 %conv13.i119.i.1, %conv11.i116.i.1
  %conv15.i121.i.1 = trunc i32 %xor14.i120.i.1 to i8
  store i8 %conv15.i121.i.1, i8* %scevgep221.1, align 1
  %conv16.i124.i = zext i8 %call.i92.i to i32
  %scevgep217 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 0
  %73 = load i8, i8* %scevgep217, align 1
  %scevgep217.1 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 1
  %74 = load i8, i8* %scevgep217.1, align 1
  %conv.i.i31.i131.i.1 = zext i8 %74 to i32
  %conv1.i.i32.i132.i.1 = zext i8 %73 to i32
  %xor.i.i33.i133.i.1 = xor i32 %conv1.i.i32.i132.i.1, %conv.i.i31.i131.i.1
  %conv2.i.i34.i134.i.1 = trunc i32 %xor.i.i33.i133.i.1 to i8
  %scevgep217.2 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 2
  %75 = load i8, i8* %scevgep217.2, align 1
  %conv.i.i31.i131.i.2 = zext i8 %75 to i32
  %conv1.i.i32.i132.i.2 = zext i8 %conv2.i.i34.i134.i.1 to i32
  %xor.i.i33.i133.i.2 = xor i32 %conv1.i.i32.i132.i.2, %conv.i.i31.i131.i.2
  %conv2.i.i34.i134.i.2 = trunc i32 %xor.i.i33.i133.i.2 to i8
  %conv18.i137.i = zext i8 %conv2.i.i34.i134.i.2 to i32
  %cmp19.i138.i = icmp eq i32 %conv16.i124.i, %conv18.i137.i
  call void @assert(i1 zeroext %cmp19.i138.i) #3
  %arraydecay10.i = getelementptr inbounds [3 x i8], [3 x i8]* %u.i, i64 0, i64 0
  %arraydecay11.i = getelementptr inbounds [3 x i8], [3 x i8]* %w.i, i64 0, i64 0
  %arraydecay12.i = getelementptr inbounds [3 x i8], [3 x i8]* %v.i, i64 0, i64 0
  %call.i165.i = call zeroext i8 (...) @rand() #3
  %call1.i166.i = call zeroext i8 (...) @rand() #3
  %conv.i167.i = zext i8 %call.i165.i to i32
  %scevgep213 = getelementptr [3 x i8], [3 x i8]* %u.i, i64 0, i64 0
  %76 = load i8, i8* %scevgep213, align 1
  %scevgep213.1 = getelementptr [3 x i8], [3 x i8]* %u.i, i64 0, i64 1
  %77 = load i8, i8* %scevgep213.1, align 1
  %conv.i.i.i173.i.1 = zext i8 %77 to i32
  %conv1.i.i.i174.i.1 = zext i8 %76 to i32
  %xor.i.i.i175.i.1 = xor i32 %conv1.i.i.i174.i.1, %conv.i.i.i173.i.1
  %conv2.i.i.i176.i.1 = trunc i32 %xor.i.i.i175.i.1 to i8
  %scevgep213.2 = getelementptr [3 x i8], [3 x i8]* %u.i, i64 0, i64 2
  %78 = load i8, i8* %scevgep213.2, align 1
  %conv.i.i.i173.i.2 = zext i8 %78 to i32
  %conv1.i.i.i174.i.2 = zext i8 %conv2.i.i.i176.i.1 to i32
  %xor.i.i.i175.i.2 = xor i32 %conv1.i.i.i174.i.2, %conv.i.i.i173.i.2
  %conv2.i.i.i176.i.2 = trunc i32 %xor.i.i.i175.i.2 to i8
  %conv3.i179.i = zext i8 %conv2.i.i.i176.i.2 to i32
  %cmp.i180.i = icmp eq i32 %conv.i167.i, %conv3.i179.i
  call void @assume(i1 zeroext %cmp.i180.i) #3
  %conv5.i181.i = zext i8 %call1.i166.i to i32
  %scevgep209 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 0
  %79 = load i8, i8* %scevgep209, align 1
  %scevgep209.1 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 1
  %80 = load i8, i8* %scevgep209.1, align 1
  %conv.i.i96.i188.i.1 = zext i8 %80 to i32
  %conv1.i.i97.i189.i.1 = zext i8 %79 to i32
  %xor.i.i98.i190.i.1 = xor i32 %conv1.i.i97.i189.i.1, %conv.i.i96.i188.i.1
  %conv2.i.i99.i191.i.1 = trunc i32 %xor.i.i98.i190.i.1 to i8
  %scevgep209.2 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 2
  %81 = load i8, i8* %scevgep209.2, align 1
  %conv.i.i96.i188.i.2 = zext i8 %81 to i32
  %conv1.i.i97.i189.i.2 = zext i8 %conv2.i.i99.i191.i.1 to i32
  %xor.i.i98.i190.i.2 = xor i32 %conv1.i.i97.i189.i.2, %conv.i.i96.i188.i.2
  %conv2.i.i99.i191.i.2 = trunc i32 %xor.i.i98.i190.i.2 to i8
  %conv7.i194.i = zext i8 %conv2.i.i99.i191.i.2 to i32
  %cmp8.i195.i = icmp eq i32 %conv5.i181.i, %conv7.i194.i
  call void @assume(i1 zeroext %cmp8.i195.i) #3
  %scevgep186 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %scevgep186187 = bitcast i8* %scevgep186 to [3 x [3 x i8]]*
  %scevgep199 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %scevgep199200 = bitcast i8* %scevgep199 to [3 x [3 x i8]]*
  %call16.i203.i = call zeroext i8 (...) @rand() #3
  store i8 %call16.i203.i, i8* %scevgep186, align 1
  %82 = load i8, i8* %scevgep186, align 1
  %conv23.i212.i = zext i8 %82 to i32
  %83 = load i8, i8* %arraydecay10.i, align 1
  %scevgep197 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 1
  %84 = load i8, i8* %scevgep197, align 1
  %call28.i217.i = call zeroext i8 @mult(i8 zeroext %83, i8 zeroext %84) #3
  %conv29.i218.i = zext i8 %call28.i217.i to i32
  %xor.i219.i = xor i32 %conv23.i212.i, %conv29.i218.i
  %scevgep198 = getelementptr [3 x i8], [3 x i8]* %u.i, i64 0, i64 1
  %85 = load i8, i8* %scevgep198, align 1
  %86 = load i8, i8* %arraydecay11.i, align 1
  %call34.i224.i = call zeroext i8 @mult(i8 zeroext %85, i8 zeroext %86) #3
  %conv35.i225.i = zext i8 %call34.i224.i to i32
  %xor36.i226.i = xor i32 %xor.i219.i, %conv35.i225.i
  %conv37.i227.i = trunc i32 %xor36.i226.i to i8
  store i8 %conv37.i227.i, i8* %scevgep199, align 1
  %scevgep191 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep186187, i64 0, i64 0, i64 1
  %scevgep204 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep199200, i64 0, i64 1, i64 0
  %call16.i203.i.1402 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i203.i.1402, i8* %scevgep191, align 1
  %87 = load i8, i8* %scevgep191, align 1
  %conv23.i212.i.1403 = zext i8 %87 to i32
  %88 = load i8, i8* %arraydecay10.i, align 1
  %scevgep197.1404 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 2
  %89 = load i8, i8* %scevgep197.1404, align 1
  %call28.i217.i.1405 = call zeroext i8 @mult(i8 zeroext %88, i8 zeroext %89) #3
  %conv29.i218.i.1406 = zext i8 %call28.i217.i.1405 to i32
  %xor.i219.i.1407 = xor i32 %conv23.i212.i.1403, %conv29.i218.i.1406
  %scevgep198.1408 = getelementptr [3 x i8], [3 x i8]* %u.i, i64 0, i64 2
  %90 = load i8, i8* %scevgep198.1408, align 1
  %91 = load i8, i8* %arraydecay11.i, align 1
  %call34.i224.i.1409 = call zeroext i8 @mult(i8 zeroext %90, i8 zeroext %91) #3
  %conv35.i225.i.1410 = zext i8 %call34.i224.i.1409 to i32
  %xor36.i226.i.1411 = xor i32 %xor.i219.i.1407, %conv35.i225.i.1410
  %conv37.i227.i.1412 = trunc i32 %xor36.i226.i.1411 to i8
  store i8 %conv37.i227.i.1412, i8* %scevgep204, align 1
  %scevgep189 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep186187, i64 0, i64 1, i64 1
  %scevgep202 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep199200, i64 0, i64 1, i64 1
  %arrayidx25.i214.i.1 = getelementptr inbounds i8, i8* %arraydecay10.i, i64 1
  %arrayidx33.i223.i.1 = getelementptr inbounds i8, i8* %arraydecay11.i, i64 1
  %call16.i203.i.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i203.i.1, i8* %scevgep189, align 1
  %92 = load i8, i8* %scevgep189, align 1
  %conv23.i212.i.1 = zext i8 %92 to i32
  %93 = load i8, i8* %arrayidx25.i214.i.1, align 1
  %scevgep197.1 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 2
  %94 = load i8, i8* %scevgep197.1, align 1
  %call28.i217.i.1 = call zeroext i8 @mult(i8 zeroext %93, i8 zeroext %94) #3
  %conv29.i218.i.1 = zext i8 %call28.i217.i.1 to i32
  %xor.i219.i.1 = xor i32 %conv23.i212.i.1, %conv29.i218.i.1
  %scevgep198.1 = getelementptr [3 x i8], [3 x i8]* %u.i, i64 0, i64 2
  %95 = load i8, i8* %scevgep198.1, align 1
  %96 = load i8, i8* %arrayidx33.i223.i.1, align 1
  %call34.i224.i.1 = call zeroext i8 @mult(i8 zeroext %95, i8 zeroext %96) #3
  %conv35.i225.i.1 = zext i8 %call34.i224.i.1 to i32
  %xor36.i226.i.1 = xor i32 %xor.i219.i.1, %conv35.i225.i.1
  %conv37.i227.i.1 = trunc i32 %xor36.i226.i.1 to i8
  store i8 %conv37.i227.i.1, i8* %scevgep202, align 1
  %97 = load i8, i8* %arraydecay10.i, align 1
  %98 = load i8, i8* %arraydecay11.i, align 1
  %call54.i243.i = call zeroext i8 @mult(i8 zeroext %97, i8 zeroext %98) #3
  store i8 %call54.i243.i, i8* %arraydecay12.i, align 1
  %scevgep182.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %99 = load i8, i8* %scevgep182.1, align 1
  %conv68.i255.i.1 = zext i8 %99 to i32
  %100 = load i8, i8* %arraydecay12.i, align 1
  %conv71.i258.i.1 = zext i8 %100 to i32
  %xor72.i259.i.1 = xor i32 %conv71.i258.i.1, %conv68.i255.i.1
  %conv73.i260.i.1 = trunc i32 %xor72.i259.i.1 to i8
  store i8 %conv73.i260.i.1, i8* %arraydecay12.i, align 1
  %scevgep182.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %101 = load i8, i8* %scevgep182.2, align 1
  %conv68.i255.i.2 = zext i8 %101 to i32
  %102 = load i8, i8* %arraydecay12.i, align 1
  %conv71.i258.i.2 = zext i8 %102 to i32
  %xor72.i259.i.2 = xor i32 %conv71.i258.i.2, %conv68.i255.i.2
  %conv73.i260.i.2 = trunc i32 %xor72.i259.i.2 to i8
  store i8 %conv73.i260.i.2, i8* %arraydecay12.i, align 1
  %scevgep181 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %103 = bitcast i8* %scevgep181 to [3 x [3 x i8]]*
  %arrayidx51.i240.i.1 = getelementptr inbounds i8, i8* %arraydecay10.i, i64 1
  %104 = load i8, i8* %arrayidx51.i240.i.1, align 1
  %arrayidx53.i242.i.1 = getelementptr inbounds i8, i8* %arraydecay11.i, i64 1
  %105 = load i8, i8* %arrayidx53.i242.i.1, align 1
  %call54.i243.i.1 = call zeroext i8 @mult(i8 zeroext %104, i8 zeroext %105) #3
  %arrayidx56.i245.i.1 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 1
  store i8 %call54.i243.i.1, i8* %arrayidx56.i245.i.1, align 1
  %arrayidx70.i257.i.1 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 1
  %scevgep182.1340 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %103, i64 0, i64 0, i64 0
  %106 = load i8, i8* %scevgep182.1340, align 1
  %conv68.i255.i.1341 = zext i8 %106 to i32
  %107 = load i8, i8* %arrayidx70.i257.i.1, align 1
  %conv71.i258.i.1342 = zext i8 %107 to i32
  %xor72.i259.i.1343 = xor i32 %conv71.i258.i.1342, %conv68.i255.i.1341
  %conv73.i260.i.1344 = trunc i32 %xor72.i259.i.1343 to i8
  store i8 %conv73.i260.i.1344, i8* %arrayidx70.i257.i.1, align 1
  %scevgep182.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %103, i64 0, i64 0, i64 2
  %108 = load i8, i8* %scevgep182.2.1, align 1
  %conv68.i255.i.2.1 = zext i8 %108 to i32
  %109 = load i8, i8* %arrayidx70.i257.i.1, align 1
  %conv71.i258.i.2.1 = zext i8 %109 to i32
  %xor72.i259.i.2.1 = xor i32 %conv71.i258.i.2.1, %conv68.i255.i.2.1
  %conv73.i260.i.2.1 = trunc i32 %xor72.i259.i.2.1 to i8
  store i8 %conv73.i260.i.2.1, i8* %arrayidx70.i257.i.1, align 1
  %scevgep181.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %103, i64 0, i64 1, i64 0
  %110 = bitcast i8* %scevgep181.1 to [3 x [3 x i8]]*
  %arrayidx51.i240.i.2 = getelementptr inbounds i8, i8* %arraydecay10.i, i64 2
  %111 = load i8, i8* %arrayidx51.i240.i.2, align 1
  %arrayidx53.i242.i.2 = getelementptr inbounds i8, i8* %arraydecay11.i, i64 2
  %112 = load i8, i8* %arrayidx53.i242.i.2, align 1
  %call54.i243.i.2 = call zeroext i8 @mult(i8 zeroext %111, i8 zeroext %112) #3
  %arrayidx56.i245.i.2 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 2
  store i8 %call54.i243.i.2, i8* %arrayidx56.i245.i.2, align 1
  %arrayidx70.i257.i.2 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 2
  %scevgep182.2349 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %110, i64 0, i64 0, i64 0
  %113 = load i8, i8* %scevgep182.2349, align 1
  %conv68.i255.i.2350 = zext i8 %113 to i32
  %114 = load i8, i8* %arrayidx70.i257.i.2, align 1
  %conv71.i258.i.2351 = zext i8 %114 to i32
  %xor72.i259.i.2352 = xor i32 %conv71.i258.i.2351, %conv68.i255.i.2350
  %conv73.i260.i.2353 = trunc i32 %xor72.i259.i.2352 to i8
  store i8 %conv73.i260.i.2353, i8* %arrayidx70.i257.i.2, align 1
  %scevgep182.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %110, i64 0, i64 0, i64 1
  %115 = load i8, i8* %scevgep182.1.2, align 1
  %conv68.i255.i.1.2 = zext i8 %115 to i32
  %116 = load i8, i8* %arrayidx70.i257.i.2, align 1
  %conv71.i258.i.1.2 = zext i8 %116 to i32
  %xor72.i259.i.1.2 = xor i32 %conv71.i258.i.1.2, %conv68.i255.i.1.2
  %conv73.i260.i.1.2 = trunc i32 %xor72.i259.i.1.2 to i8
  store i8 %conv73.i260.i.1.2, i8* %arrayidx70.i257.i.2, align 1
  %call80.i266.i = call zeroext i8 @mult(i8 zeroext %call.i165.i, i8 zeroext %call1.i166.i) #3
  %conv81.i267.i = zext i8 %call80.i266.i to i32
  %scevgep172 = getelementptr [3 x i8], [3 x i8]* %v.i, i64 0, i64 0
  %117 = load i8, i8* %scevgep172, align 1
  %scevgep172.1 = getelementptr [3 x i8], [3 x i8]* %v.i, i64 0, i64 1
  %118 = load i8, i8* %scevgep172.1, align 1
  %conv.i.i113.i274.i.1 = zext i8 %118 to i32
  %conv1.i.i114.i275.i.1 = zext i8 %117 to i32
  %xor.i.i115.i276.i.1 = xor i32 %conv1.i.i114.i275.i.1, %conv.i.i113.i274.i.1
  %conv2.i.i116.i277.i.1 = trunc i32 %xor.i.i115.i276.i.1 to i8
  %scevgep172.2 = getelementptr [3 x i8], [3 x i8]* %v.i, i64 0, i64 2
  %119 = load i8, i8* %scevgep172.2, align 1
  %conv.i.i113.i274.i.2 = zext i8 %119 to i32
  %conv1.i.i114.i275.i.2 = zext i8 %conv2.i.i116.i277.i.1 to i32
  %xor.i.i115.i276.i.2 = xor i32 %conv1.i.i114.i275.i.2, %conv.i.i113.i274.i.2
  %conv2.i.i116.i277.i.2 = trunc i32 %xor.i.i115.i276.i.2 to i8
  %conv83.i280.i = zext i8 %conv2.i.i116.i277.i.2 to i32
  %cmp84.i281.i = icmp eq i32 %conv81.i267.i, %conv83.i280.i
  call void @assert(i1 zeroext %cmp84.i281.i) #3
  %scevgep167 = getelementptr [3 x i8], [3 x i8]* %v.i, i64 0, i64 0
  %120 = load i8, i8* %scevgep167, align 1
  %call.i291.i = call zeroext i8 @exp16(i8 zeroext %120) #3
  %scevgep168 = getelementptr [3 x i8], [3 x i8]* %v.i, i64 0, i64 0
  store i8 %call.i291.i, i8* %scevgep168, align 1
  %scevgep167.1 = getelementptr [3 x i8], [3 x i8]* %v.i, i64 0, i64 1
  %121 = load i8, i8* %scevgep167.1, align 1
  %call.i291.i.1 = call zeroext i8 @exp16(i8 zeroext %121) #3
  %scevgep168.1 = getelementptr [3 x i8], [3 x i8]* %v.i, i64 0, i64 1
  store i8 %call.i291.i.1, i8* %scevgep168.1, align 1
  %scevgep167.2 = getelementptr [3 x i8], [3 x i8]* %v.i, i64 0, i64 2
  %122 = load i8, i8* %scevgep167.2, align 1
  %call.i291.i.2 = call zeroext i8 @exp16(i8 zeroext %122) #3
  %scevgep168.2 = getelementptr [3 x i8], [3 x i8]* %v.i, i64 0, i64 2
  store i8 %call.i291.i.2, i8* %scevgep168.2, align 1
  %arraydecay15.i = getelementptr inbounds [3 x i8], [3 x i8]* %v.i, i64 0, i64 0
  %arraydecay16.i = getelementptr inbounds [3 x i8], [3 x i8]* %w.i, i64 0, i64 0
  %arraydecay17.i = getelementptr inbounds [3 x i8], [3 x i8]* %m.i, i64 0, i64 0
  %call.i323.i = call zeroext i8 (...) @rand() #3
  %call1.i324.i = call zeroext i8 (...) @rand() #3
  %conv.i325.i = zext i8 %call.i323.i to i32
  %scevgep163 = getelementptr [3 x i8], [3 x i8]* %v.i, i64 0, i64 0
  %123 = load i8, i8* %scevgep163, align 1
  %scevgep163.1 = getelementptr [3 x i8], [3 x i8]* %v.i, i64 0, i64 1
  %124 = load i8, i8* %scevgep163.1, align 1
  %conv.i.i.i331.i.1 = zext i8 %124 to i32
  %conv1.i.i.i332.i.1 = zext i8 %123 to i32
  %xor.i.i.i333.i.1 = xor i32 %conv1.i.i.i332.i.1, %conv.i.i.i331.i.1
  %conv2.i.i.i334.i.1 = trunc i32 %xor.i.i.i333.i.1 to i8
  %scevgep163.2 = getelementptr [3 x i8], [3 x i8]* %v.i, i64 0, i64 2
  %125 = load i8, i8* %scevgep163.2, align 1
  %conv.i.i.i331.i.2 = zext i8 %125 to i32
  %conv1.i.i.i332.i.2 = zext i8 %conv2.i.i.i334.i.1 to i32
  %xor.i.i.i333.i.2 = xor i32 %conv1.i.i.i332.i.2, %conv.i.i.i331.i.2
  %conv2.i.i.i334.i.2 = trunc i32 %xor.i.i.i333.i.2 to i8
  %conv3.i337.i = zext i8 %conv2.i.i.i334.i.2 to i32
  %cmp.i338.i = icmp eq i32 %conv.i325.i, %conv3.i337.i
  call void @assume(i1 zeroext %cmp.i338.i) #3
  %conv5.i339.i = zext i8 %call1.i324.i to i32
  %scevgep159 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 0
  %126 = load i8, i8* %scevgep159, align 1
  %scevgep159.1 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 1
  %127 = load i8, i8* %scevgep159.1, align 1
  %conv.i.i96.i346.i.1 = zext i8 %127 to i32
  %conv1.i.i97.i347.i.1 = zext i8 %126 to i32
  %xor.i.i98.i348.i.1 = xor i32 %conv1.i.i97.i347.i.1, %conv.i.i96.i346.i.1
  %conv2.i.i99.i349.i.1 = trunc i32 %xor.i.i98.i348.i.1 to i8
  %scevgep159.2 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 2
  %128 = load i8, i8* %scevgep159.2, align 1
  %conv.i.i96.i346.i.2 = zext i8 %128 to i32
  %conv1.i.i97.i347.i.2 = zext i8 %conv2.i.i99.i349.i.1 to i32
  %xor.i.i98.i348.i.2 = xor i32 %conv1.i.i97.i347.i.2, %conv.i.i96.i346.i.2
  %conv2.i.i99.i349.i.2 = trunc i32 %xor.i.i98.i348.i.2 to i8
  %conv7.i352.i = zext i8 %conv2.i.i99.i349.i.2 to i32
  %cmp8.i353.i = icmp eq i32 %conv5.i339.i, %conv7.i352.i
  call void @assume(i1 zeroext %cmp8.i353.i) #3
  %scevgep136 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %scevgep136137 = bitcast i8* %scevgep136 to [3 x [3 x i8]]*
  %scevgep149 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %scevgep149150 = bitcast i8* %scevgep149 to [3 x [3 x i8]]*
  %call16.i361.i = call zeroext i8 (...) @rand() #3
  store i8 %call16.i361.i, i8* %scevgep136, align 1
  %129 = load i8, i8* %scevgep136, align 1
  %conv23.i370.i = zext i8 %129 to i32
  %130 = load i8, i8* %arraydecay15.i, align 1
  %scevgep147 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 1
  %131 = load i8, i8* %scevgep147, align 1
  %call28.i375.i = call zeroext i8 @mult(i8 zeroext %130, i8 zeroext %131) #3
  %conv29.i376.i = zext i8 %call28.i375.i to i32
  %xor.i377.i = xor i32 %conv23.i370.i, %conv29.i376.i
  %scevgep148 = getelementptr [3 x i8], [3 x i8]* %v.i, i64 0, i64 1
  %132 = load i8, i8* %scevgep148, align 1
  %133 = load i8, i8* %arraydecay16.i, align 1
  %call34.i382.i = call zeroext i8 @mult(i8 zeroext %132, i8 zeroext %133) #3
  %conv35.i383.i = zext i8 %call34.i382.i to i32
  %xor36.i384.i = xor i32 %xor.i377.i, %conv35.i383.i
  %conv37.i385.i = trunc i32 %xor36.i384.i to i8
  store i8 %conv37.i385.i, i8* %scevgep149, align 1
  %scevgep141 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep136137, i64 0, i64 0, i64 1
  %scevgep154 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep149150, i64 0, i64 1, i64 0
  %call16.i361.i.1389 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i361.i.1389, i8* %scevgep141, align 1
  %134 = load i8, i8* %scevgep141, align 1
  %conv23.i370.i.1390 = zext i8 %134 to i32
  %135 = load i8, i8* %arraydecay15.i, align 1
  %scevgep147.1391 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 2
  %136 = load i8, i8* %scevgep147.1391, align 1
  %call28.i375.i.1392 = call zeroext i8 @mult(i8 zeroext %135, i8 zeroext %136) #3
  %conv29.i376.i.1393 = zext i8 %call28.i375.i.1392 to i32
  %xor.i377.i.1394 = xor i32 %conv23.i370.i.1390, %conv29.i376.i.1393
  %scevgep148.1395 = getelementptr [3 x i8], [3 x i8]* %v.i, i64 0, i64 2
  %137 = load i8, i8* %scevgep148.1395, align 1
  %138 = load i8, i8* %arraydecay16.i, align 1
  %call34.i382.i.1396 = call zeroext i8 @mult(i8 zeroext %137, i8 zeroext %138) #3
  %conv35.i383.i.1397 = zext i8 %call34.i382.i.1396 to i32
  %xor36.i384.i.1398 = xor i32 %xor.i377.i.1394, %conv35.i383.i.1397
  %conv37.i385.i.1399 = trunc i32 %xor36.i384.i.1398 to i8
  store i8 %conv37.i385.i.1399, i8* %scevgep154, align 1
  %scevgep139 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep136137, i64 0, i64 1, i64 1
  %scevgep152 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep149150, i64 0, i64 1, i64 1
  %arrayidx25.i372.i.1 = getelementptr inbounds i8, i8* %arraydecay15.i, i64 1
  %arrayidx33.i381.i.1 = getelementptr inbounds i8, i8* %arraydecay16.i, i64 1
  %call16.i361.i.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i361.i.1, i8* %scevgep139, align 1
  %139 = load i8, i8* %scevgep139, align 1
  %conv23.i370.i.1 = zext i8 %139 to i32
  %140 = load i8, i8* %arrayidx25.i372.i.1, align 1
  %scevgep147.1 = getelementptr [3 x i8], [3 x i8]* %w.i, i64 0, i64 2
  %141 = load i8, i8* %scevgep147.1, align 1
  %call28.i375.i.1 = call zeroext i8 @mult(i8 zeroext %140, i8 zeroext %141) #3
  %conv29.i376.i.1 = zext i8 %call28.i375.i.1 to i32
  %xor.i377.i.1 = xor i32 %conv23.i370.i.1, %conv29.i376.i.1
  %scevgep148.1 = getelementptr [3 x i8], [3 x i8]* %v.i, i64 0, i64 2
  %142 = load i8, i8* %scevgep148.1, align 1
  %143 = load i8, i8* %arrayidx33.i381.i.1, align 1
  %call34.i382.i.1 = call zeroext i8 @mult(i8 zeroext %142, i8 zeroext %143) #3
  %conv35.i383.i.1 = zext i8 %call34.i382.i.1 to i32
  %xor36.i384.i.1 = xor i32 %xor.i377.i.1, %conv35.i383.i.1
  %conv37.i385.i.1 = trunc i32 %xor36.i384.i.1 to i8
  store i8 %conv37.i385.i.1, i8* %scevgep152, align 1
  %144 = load i8, i8* %arraydecay15.i, align 1
  %145 = load i8, i8* %arraydecay16.i, align 1
  %call54.i401.i = call zeroext i8 @mult(i8 zeroext %144, i8 zeroext %145) #3
  store i8 %call54.i401.i, i8* %arraydecay17.i, align 1
  %scevgep132.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %146 = load i8, i8* %scevgep132.1, align 1
  %conv68.i413.i.1 = zext i8 %146 to i32
  %147 = load i8, i8* %arraydecay17.i, align 1
  %conv71.i416.i.1 = zext i8 %147 to i32
  %xor72.i417.i.1 = xor i32 %conv71.i416.i.1, %conv68.i413.i.1
  %conv73.i418.i.1 = trunc i32 %xor72.i417.i.1 to i8
  store i8 %conv73.i418.i.1, i8* %arraydecay17.i, align 1
  %scevgep132.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %148 = load i8, i8* %scevgep132.2, align 1
  %conv68.i413.i.2 = zext i8 %148 to i32
  %149 = load i8, i8* %arraydecay17.i, align 1
  %conv71.i416.i.2 = zext i8 %149 to i32
  %xor72.i417.i.2 = xor i32 %conv71.i416.i.2, %conv68.i413.i.2
  %conv73.i418.i.2 = trunc i32 %xor72.i417.i.2 to i8
  store i8 %conv73.i418.i.2, i8* %arraydecay17.i, align 1
  %scevgep131 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %150 = bitcast i8* %scevgep131 to [3 x [3 x i8]]*
  %arrayidx51.i398.i.1 = getelementptr inbounds i8, i8* %arraydecay15.i, i64 1
  %151 = load i8, i8* %arrayidx51.i398.i.1, align 1
  %arrayidx53.i400.i.1 = getelementptr inbounds i8, i8* %arraydecay16.i, i64 1
  %152 = load i8, i8* %arrayidx53.i400.i.1, align 1
  %call54.i401.i.1 = call zeroext i8 @mult(i8 zeroext %151, i8 zeroext %152) #3
  %arrayidx56.i403.i.1 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 1
  store i8 %call54.i401.i.1, i8* %arrayidx56.i403.i.1, align 1
  %arrayidx70.i415.i.1 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 1
  %scevgep132.1322 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %150, i64 0, i64 0, i64 0
  %153 = load i8, i8* %scevgep132.1322, align 1
  %conv68.i413.i.1323 = zext i8 %153 to i32
  %154 = load i8, i8* %arrayidx70.i415.i.1, align 1
  %conv71.i416.i.1324 = zext i8 %154 to i32
  %xor72.i417.i.1325 = xor i32 %conv71.i416.i.1324, %conv68.i413.i.1323
  %conv73.i418.i.1326 = trunc i32 %xor72.i417.i.1325 to i8
  store i8 %conv73.i418.i.1326, i8* %arrayidx70.i415.i.1, align 1
  %scevgep132.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %150, i64 0, i64 0, i64 2
  %155 = load i8, i8* %scevgep132.2.1, align 1
  %conv68.i413.i.2.1 = zext i8 %155 to i32
  %156 = load i8, i8* %arrayidx70.i415.i.1, align 1
  %conv71.i416.i.2.1 = zext i8 %156 to i32
  %xor72.i417.i.2.1 = xor i32 %conv71.i416.i.2.1, %conv68.i413.i.2.1
  %conv73.i418.i.2.1 = trunc i32 %xor72.i417.i.2.1 to i8
  store i8 %conv73.i418.i.2.1, i8* %arrayidx70.i415.i.1, align 1
  %scevgep131.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %150, i64 0, i64 1, i64 0
  %157 = bitcast i8* %scevgep131.1 to [3 x [3 x i8]]*
  %arrayidx51.i398.i.2 = getelementptr inbounds i8, i8* %arraydecay15.i, i64 2
  %158 = load i8, i8* %arrayidx51.i398.i.2, align 1
  %arrayidx53.i400.i.2 = getelementptr inbounds i8, i8* %arraydecay16.i, i64 2
  %159 = load i8, i8* %arrayidx53.i400.i.2, align 1
  %call54.i401.i.2 = call zeroext i8 @mult(i8 zeroext %158, i8 zeroext %159) #3
  %arrayidx56.i403.i.2 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 2
  store i8 %call54.i401.i.2, i8* %arrayidx56.i403.i.2, align 1
  %arrayidx70.i415.i.2 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 2
  %scevgep132.2331 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %157, i64 0, i64 0, i64 0
  %160 = load i8, i8* %scevgep132.2331, align 1
  %conv68.i413.i.2332 = zext i8 %160 to i32
  %161 = load i8, i8* %arrayidx70.i415.i.2, align 1
  %conv71.i416.i.2333 = zext i8 %161 to i32
  %xor72.i417.i.2334 = xor i32 %conv71.i416.i.2333, %conv68.i413.i.2332
  %conv73.i418.i.2335 = trunc i32 %xor72.i417.i.2334 to i8
  store i8 %conv73.i418.i.2335, i8* %arrayidx70.i415.i.2, align 1
  %scevgep132.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %157, i64 0, i64 0, i64 1
  %162 = load i8, i8* %scevgep132.1.2, align 1
  %conv68.i413.i.1.2 = zext i8 %162 to i32
  %163 = load i8, i8* %arrayidx70.i415.i.2, align 1
  %conv71.i416.i.1.2 = zext i8 %163 to i32
  %xor72.i417.i.1.2 = xor i32 %conv71.i416.i.1.2, %conv68.i413.i.1.2
  %conv73.i418.i.1.2 = trunc i32 %xor72.i417.i.1.2 to i8
  store i8 %conv73.i418.i.1.2, i8* %arrayidx70.i415.i.2, align 1
  %call80.i424.i = call zeroext i8 @mult(i8 zeroext %call.i323.i, i8 zeroext %call1.i324.i) #3
  %conv81.i425.i = zext i8 %call80.i424.i to i32
  %scevgep122 = getelementptr [3 x i8], [3 x i8]* %m.i, i64 0, i64 0
  %164 = load i8, i8* %scevgep122, align 1
  %scevgep122.1 = getelementptr [3 x i8], [3 x i8]* %m.i, i64 0, i64 1
  %165 = load i8, i8* %scevgep122.1, align 1
  %conv.i.i113.i432.i.1 = zext i8 %165 to i32
  %conv1.i.i114.i433.i.1 = zext i8 %164 to i32
  %xor.i.i115.i434.i.1 = xor i32 %conv1.i.i114.i433.i.1, %conv.i.i113.i432.i.1
  %conv2.i.i116.i435.i.1 = trunc i32 %xor.i.i115.i434.i.1 to i8
  %scevgep122.2 = getelementptr [3 x i8], [3 x i8]* %m.i, i64 0, i64 2
  %166 = load i8, i8* %scevgep122.2, align 1
  %conv.i.i113.i432.i.2 = zext i8 %166 to i32
  %conv1.i.i114.i433.i.2 = zext i8 %conv2.i.i116.i435.i.1 to i32
  %xor.i.i115.i434.i.2 = xor i32 %conv1.i.i114.i433.i.2, %conv.i.i113.i432.i.2
  %conv2.i.i116.i435.i.2 = trunc i32 %xor.i.i115.i434.i.2 to i8
  %conv83.i438.i = zext i8 %conv2.i.i116.i435.i.2 to i32
  %cmp84.i439.i = icmp eq i32 %conv81.i425.i, %conv83.i438.i
  call void @assert(i1 zeroext %cmp84.i439.i) #3
  %arraydecay18.i = getelementptr inbounds [3 x i8], [3 x i8]* %m.i, i64 0, i64 0
  %arraydecay19.i = getelementptr inbounds [3 x i8], [3 x i8]* %z.i, i64 0, i64 0
  %call.i466.i = call zeroext i8 (...) @rand() #3
  %call1.i467.i = call zeroext i8 (...) @rand() #3
  %conv.i468.i = zext i8 %call.i466.i to i32
  %scevgep118 = getelementptr [3 x i8], [3 x i8]* %m.i, i64 0, i64 0
  %167 = load i8, i8* %scevgep118, align 1
  %scevgep118.1 = getelementptr [3 x i8], [3 x i8]* %m.i, i64 0, i64 1
  %168 = load i8, i8* %scevgep118.1, align 1
  %conv.i.i.i474.i.1 = zext i8 %168 to i32
  %conv1.i.i.i475.i.1 = zext i8 %167 to i32
  %xor.i.i.i476.i.1 = xor i32 %conv1.i.i.i475.i.1, %conv.i.i.i474.i.1
  %conv2.i.i.i477.i.1 = trunc i32 %xor.i.i.i476.i.1 to i8
  %scevgep118.2 = getelementptr [3 x i8], [3 x i8]* %m.i, i64 0, i64 2
  %169 = load i8, i8* %scevgep118.2, align 1
  %conv.i.i.i474.i.2 = zext i8 %169 to i32
  %conv1.i.i.i475.i.2 = zext i8 %conv2.i.i.i477.i.1 to i32
  %xor.i.i.i476.i.2 = xor i32 %conv1.i.i.i475.i.2, %conv.i.i.i474.i.2
  %conv2.i.i.i477.i.2 = trunc i32 %xor.i.i.i476.i.2 to i8
  %conv3.i480.i = zext i8 %conv2.i.i.i477.i.2 to i32
  %cmp.i481.i = icmp eq i32 %conv.i468.i, %conv3.i480.i
  call void @assume(i1 zeroext %cmp.i481.i) #3
  %conv5.i482.i = zext i8 %call1.i467.i to i32
  %scevgep114 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 0
  %170 = load i8, i8* %scevgep114, align 1
  %scevgep114.1 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 1
  %171 = load i8, i8* %scevgep114.1, align 1
  %conv.i.i96.i489.i.1 = zext i8 %171 to i32
  %conv1.i.i97.i490.i.1 = zext i8 %170 to i32
  %xor.i.i98.i491.i.1 = xor i32 %conv1.i.i97.i490.i.1, %conv.i.i96.i489.i.1
  %conv2.i.i99.i492.i.1 = trunc i32 %xor.i.i98.i491.i.1 to i8
  %scevgep114.2 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 2
  %172 = load i8, i8* %scevgep114.2, align 1
  %conv.i.i96.i489.i.2 = zext i8 %172 to i32
  %conv1.i.i97.i490.i.2 = zext i8 %conv2.i.i99.i492.i.1 to i32
  %xor.i.i98.i491.i.2 = xor i32 %conv1.i.i97.i490.i.2, %conv.i.i96.i489.i.2
  %conv2.i.i99.i492.i.2 = trunc i32 %xor.i.i98.i491.i.2 to i8
  %conv7.i495.i = zext i8 %conv2.i.i99.i492.i.2 to i32
  %cmp8.i496.i = icmp eq i32 %conv5.i482.i, %conv7.i495.i
  call void @assume(i1 zeroext %cmp8.i496.i) #3
  %scevgep91 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %scevgep9192 = bitcast i8* %scevgep91 to [3 x [3 x i8]]*
  %scevgep104 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %scevgep104105 = bitcast i8* %scevgep104 to [3 x [3 x i8]]*
  %call16.i504.i = call zeroext i8 (...) @rand() #3
  store i8 %call16.i504.i, i8* %scevgep91, align 1
  %173 = load i8, i8* %scevgep91, align 1
  %conv23.i513.i = zext i8 %173 to i32
  %174 = load i8, i8* %arraydecay18.i, align 1
  %scevgep102 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 1
  %175 = load i8, i8* %scevgep102, align 1
  %call28.i518.i = call zeroext i8 @mult(i8 zeroext %174, i8 zeroext %175) #3
  %conv29.i519.i = zext i8 %call28.i518.i to i32
  %xor.i520.i = xor i32 %conv23.i513.i, %conv29.i519.i
  %scevgep103 = getelementptr [3 x i8], [3 x i8]* %m.i, i64 0, i64 1
  %176 = load i8, i8* %scevgep103, align 1
  %177 = load i8, i8* %arraydecay19.i, align 1
  %call34.i525.i = call zeroext i8 @mult(i8 zeroext %176, i8 zeroext %177) #3
  %conv35.i526.i = zext i8 %call34.i525.i to i32
  %xor36.i527.i = xor i32 %xor.i520.i, %conv35.i526.i
  %conv37.i528.i = trunc i32 %xor36.i527.i to i8
  store i8 %conv37.i528.i, i8* %scevgep104, align 1
  %scevgep96 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep9192, i64 0, i64 0, i64 1
  %scevgep109 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep104105, i64 0, i64 1, i64 0
  %call16.i504.i.1376 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i504.i.1376, i8* %scevgep96, align 1
  %178 = load i8, i8* %scevgep96, align 1
  %conv23.i513.i.1377 = zext i8 %178 to i32
  %179 = load i8, i8* %arraydecay18.i, align 1
  %scevgep102.1378 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 2
  %180 = load i8, i8* %scevgep102.1378, align 1
  %call28.i518.i.1379 = call zeroext i8 @mult(i8 zeroext %179, i8 zeroext %180) #3
  %conv29.i519.i.1380 = zext i8 %call28.i518.i.1379 to i32
  %xor.i520.i.1381 = xor i32 %conv23.i513.i.1377, %conv29.i519.i.1380
  %scevgep103.1382 = getelementptr [3 x i8], [3 x i8]* %m.i, i64 0, i64 2
  %181 = load i8, i8* %scevgep103.1382, align 1
  %182 = load i8, i8* %arraydecay19.i, align 1
  %call34.i525.i.1383 = call zeroext i8 @mult(i8 zeroext %181, i8 zeroext %182) #3
  %conv35.i526.i.1384 = zext i8 %call34.i525.i.1383 to i32
  %xor36.i527.i.1385 = xor i32 %xor.i520.i.1381, %conv35.i526.i.1384
  %conv37.i528.i.1386 = trunc i32 %xor36.i527.i.1385 to i8
  store i8 %conv37.i528.i.1386, i8* %scevgep109, align 1
  %scevgep94 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep9192, i64 0, i64 1, i64 1
  %scevgep107 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep104105, i64 0, i64 1, i64 1
  %arrayidx25.i515.i.1 = getelementptr inbounds i8, i8* %arraydecay18.i, i64 1
  %arrayidx33.i524.i.1 = getelementptr inbounds i8, i8* %arraydecay19.i, i64 1
  %call16.i504.i.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i504.i.1, i8* %scevgep94, align 1
  %183 = load i8, i8* %scevgep94, align 1
  %conv23.i513.i.1 = zext i8 %183 to i32
  %184 = load i8, i8* %arrayidx25.i515.i.1, align 1
  %scevgep102.1 = getelementptr [3 x i8], [3 x i8]* %z.i, i64 0, i64 2
  %185 = load i8, i8* %scevgep102.1, align 1
  %call28.i518.i.1 = call zeroext i8 @mult(i8 zeroext %184, i8 zeroext %185) #3
  %conv29.i519.i.1 = zext i8 %call28.i518.i.1 to i32
  %xor.i520.i.1 = xor i32 %conv23.i513.i.1, %conv29.i519.i.1
  %scevgep103.1 = getelementptr [3 x i8], [3 x i8]* %m.i, i64 0, i64 2
  %186 = load i8, i8* %scevgep103.1, align 1
  %187 = load i8, i8* %arrayidx33.i524.i.1, align 1
  %call34.i525.i.1 = call zeroext i8 @mult(i8 zeroext %186, i8 zeroext %187) #3
  %conv35.i526.i.1 = zext i8 %call34.i525.i.1 to i32
  %xor36.i527.i.1 = xor i32 %xor.i520.i.1, %conv35.i526.i.1
  %conv37.i528.i.1 = trunc i32 %xor36.i527.i.1 to i8
  store i8 %conv37.i528.i.1, i8* %scevgep107, align 1
  %188 = load i8, i8* %arraydecay18.i, align 1
  %189 = load i8, i8* %arraydecay19.i, align 1
  %call54.i544.i = call zeroext i8 @mult(i8 zeroext %188, i8 zeroext %189) #3
  store i8 %call54.i544.i, i8* %y, align 1
  %scevgep88.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %190 = load i8, i8* %scevgep88.1, align 1
  %conv68.i556.i.1 = zext i8 %190 to i32
  %191 = load i8, i8* %y, align 1
  %conv71.i559.i.1 = zext i8 %191 to i32
  %xor72.i560.i.1 = xor i32 %conv71.i559.i.1, %conv68.i556.i.1
  %conv73.i561.i.1 = trunc i32 %xor72.i560.i.1 to i8
  store i8 %conv73.i561.i.1, i8* %y, align 1
  %scevgep88.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %192 = load i8, i8* %scevgep88.2, align 1
  %conv68.i556.i.2 = zext i8 %192 to i32
  %193 = load i8, i8* %y, align 1
  %conv71.i559.i.2 = zext i8 %193 to i32
  %xor72.i560.i.2 = xor i32 %conv71.i559.i.2, %conv68.i556.i.2
  %conv73.i561.i.2 = trunc i32 %xor72.i560.i.2 to i8
  store i8 %conv73.i561.i.2, i8* %y, align 1
  %scevgep87 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %194 = bitcast i8* %scevgep87 to [3 x [3 x i8]]*
  %arrayidx51.i541.i.1 = getelementptr inbounds i8, i8* %arraydecay18.i, i64 1
  %195 = load i8, i8* %arrayidx51.i541.i.1, align 1
  %arrayidx53.i543.i.1 = getelementptr inbounds i8, i8* %arraydecay19.i, i64 1
  %196 = load i8, i8* %arrayidx53.i543.i.1, align 1
  %call54.i544.i.1 = call zeroext i8 @mult(i8 zeroext %195, i8 zeroext %196) #3
  %arrayidx56.i546.i.1 = getelementptr inbounds i8, i8* %y, i64 1
  store i8 %call54.i544.i.1, i8* %arrayidx56.i546.i.1, align 1
  %arrayidx70.i558.i.1 = getelementptr inbounds i8, i8* %y, i64 1
  %scevgep88.1304 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %194, i64 0, i64 0, i64 0
  %197 = load i8, i8* %scevgep88.1304, align 1
  %conv68.i556.i.1305 = zext i8 %197 to i32
  %198 = load i8, i8* %arrayidx70.i558.i.1, align 1
  %conv71.i559.i.1306 = zext i8 %198 to i32
  %xor72.i560.i.1307 = xor i32 %conv71.i559.i.1306, %conv68.i556.i.1305
  %conv73.i561.i.1308 = trunc i32 %xor72.i560.i.1307 to i8
  store i8 %conv73.i561.i.1308, i8* %arrayidx70.i558.i.1, align 1
  %scevgep88.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %194, i64 0, i64 0, i64 2
  %199 = load i8, i8* %scevgep88.2.1, align 1
  %conv68.i556.i.2.1 = zext i8 %199 to i32
  %200 = load i8, i8* %arrayidx70.i558.i.1, align 1
  %conv71.i559.i.2.1 = zext i8 %200 to i32
  %xor72.i560.i.2.1 = xor i32 %conv71.i559.i.2.1, %conv68.i556.i.2.1
  %conv73.i561.i.2.1 = trunc i32 %xor72.i560.i.2.1 to i8
  store i8 %conv73.i561.i.2.1, i8* %arrayidx70.i558.i.1, align 1
  %scevgep87.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %194, i64 0, i64 1, i64 0
  %201 = bitcast i8* %scevgep87.1 to [3 x [3 x i8]]*
  %arrayidx51.i541.i.2 = getelementptr inbounds i8, i8* %arraydecay18.i, i64 2
  %202 = load i8, i8* %arrayidx51.i541.i.2, align 1
  %arrayidx53.i543.i.2 = getelementptr inbounds i8, i8* %arraydecay19.i, i64 2
  %203 = load i8, i8* %arrayidx53.i543.i.2, align 1
  %call54.i544.i.2 = call zeroext i8 @mult(i8 zeroext %202, i8 zeroext %203) #3
  %arrayidx56.i546.i.2 = getelementptr inbounds i8, i8* %y, i64 2
  store i8 %call54.i544.i.2, i8* %arrayidx56.i546.i.2, align 1
  %arrayidx70.i558.i.2 = getelementptr inbounds i8, i8* %y, i64 2
  %scevgep88.2313 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %201, i64 0, i64 0, i64 0
  %204 = load i8, i8* %scevgep88.2313, align 1
  %conv68.i556.i.2314 = zext i8 %204 to i32
  %205 = load i8, i8* %arrayidx70.i558.i.2, align 1
  %conv71.i559.i.2315 = zext i8 %205 to i32
  %xor72.i560.i.2316 = xor i32 %conv71.i559.i.2315, %conv68.i556.i.2314
  %conv73.i561.i.2317 = trunc i32 %xor72.i560.i.2316 to i8
  store i8 %conv73.i561.i.2317, i8* %arrayidx70.i558.i.2, align 1
  %scevgep88.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %201, i64 0, i64 0, i64 1
  %206 = load i8, i8* %scevgep88.1.2, align 1
  %conv68.i556.i.1.2 = zext i8 %206 to i32
  %207 = load i8, i8* %arrayidx70.i558.i.2, align 1
  %conv71.i559.i.1.2 = zext i8 %207 to i32
  %xor72.i560.i.1.2 = xor i32 %conv71.i559.i.1.2, %conv68.i556.i.1.2
  %conv73.i561.i.1.2 = trunc i32 %xor72.i560.i.1.2 to i8
  store i8 %conv73.i561.i.1.2, i8* %arrayidx70.i558.i.2, align 1
  %call80.i567.i = call zeroext i8 @mult(i8 zeroext %call.i466.i, i8 zeroext %call1.i467.i) #3
  %conv81.i568.i = zext i8 %call80.i567.i to i32
  %208 = load i8, i8* %y, align 1
  %scevgep78.1 = getelementptr i8, i8* %y, i64 1
  %209 = load i8, i8* %scevgep78.1, align 1
  %conv.i.i113.i575.i.1 = zext i8 %209 to i32
  %conv1.i.i114.i576.i.1 = zext i8 %208 to i32
  %xor.i.i115.i577.i.1 = xor i32 %conv1.i.i114.i576.i.1, %conv.i.i113.i575.i.1
  %conv2.i.i116.i578.i.1 = trunc i32 %xor.i.i115.i577.i.1 to i8
  %scevgep78.2 = getelementptr i8, i8* %y, i64 2
  %210 = load i8, i8* %scevgep78.2, align 1
  %conv.i.i113.i575.i.2 = zext i8 %210 to i32
  %conv1.i.i114.i576.i.2 = zext i8 %conv2.i.i116.i578.i.1 to i32
  %xor.i.i115.i577.i.2 = xor i32 %conv1.i.i114.i576.i.2, %conv.i.i113.i575.i.2
  %conv2.i.i116.i578.i.2 = trunc i32 %xor.i.i115.i577.i.2 to i8
  %conv83.i581.i = zext i8 %conv2.i.i116.i578.i.2 to i32
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
  %211 = load i8, i8* %y, align 1
  %scevgep74.1 = getelementptr i8, i8* %y, i64 1
  %212 = load i8, i8* %scevgep74.1, align 1
  %conv.i.i597.i.1 = zext i8 %212 to i32
  %conv1.i.i598.i.1 = zext i8 %211 to i32
  %xor.i.i599.i.1 = xor i32 %conv1.i.i598.i.1, %conv.i.i597.i.1
  %conv2.i.i600.i.1 = trunc i32 %xor.i.i599.i.1 to i8
  %scevgep74.2 = getelementptr i8, i8* %y, i64 2
  %213 = load i8, i8* %scevgep74.2, align 1
  %conv.i.i597.i.2 = zext i8 %213 to i32
  %conv1.i.i598.i.2 = zext i8 %conv2.i.i600.i.1 to i32
  %xor.i.i599.i.2 = xor i32 %conv1.i.i598.i.2, %conv.i.i597.i.2
  %conv2.i.i600.i.2 = trunc i32 %xor.i.i599.i.2 to i8
  %conv23.i = zext i8 %conv2.i.i600.i.2 to i32
  %cmp24.i = icmp eq i32 %conv21.i, %conv23.i
  call void @assert(i1 zeroext %cmp24.i) #3
  %214 = load i8, i8* %y, align 1
  %call.i24 = call zeroext i8 @af(i8 zeroext %214) #3
  store i8 %call.i24, i8* %y, align 1
  %scevgep69.1 = getelementptr i8, i8* %y, i64 1
  %215 = load i8, i8* %scevgep69.1, align 1
  %call.i24.1 = call zeroext i8 @af(i8 zeroext %215) #3
  %scevgep70.1 = getelementptr i8, i8* %y, i64 1
  store i8 %call.i24.1, i8* %scevgep70.1, align 1
  %scevgep69.2 = getelementptr i8, i8* %y, i64 2
  %216 = load i8, i8* %scevgep69.2, align 1
  %call.i24.2 = call zeroext i8 @af(i8 zeroext %216) #3
  %scevgep70.2 = getelementptr i8, i8* %y, i64 2
  store i8 %call.i24.2, i8* %scevgep70.2, align 1
  %call.i.i30 = call zeroext i8 @square(i8 zeroext %call) #3
  %call1.i.i31 = call zeroext i8 @mult(i8 zeroext %call.i.i30, i8 zeroext %call) #3
  %call2.i.i32 = call zeroext i8 @exp4(i8 zeroext %call1.i.i31) #3
  %call3.i.i33 = call zeroext i8 @mult(i8 zeroext %call1.i.i31, i8 zeroext %call2.i.i32) #3
  %call4.i.i34 = call zeroext i8 @exp16(i8 zeroext %call3.i.i33) #3
  %call5.i.i35 = call zeroext i8 @mult(i8 zeroext %call4.i.i34, i8 zeroext %call2.i.i32) #3
  %call6.i.i36 = call zeroext i8 @mult(i8 zeroext %call5.i.i35, i8 zeroext %call.i.i30) #3
  %call1.i = call zeroext i8 @af(i8 zeroext %call6.i.i36) #3
  %conv5 = zext i8 %call1.i to i32
  %217 = load i8, i8* %y, align 1
  %scevgep.1 = getelementptr i8, i8* %y, i64 1
  %218 = load i8, i8* %scevgep.1, align 1
  %conv.i.i47.1 = zext i8 %218 to i32
  %conv1.i.i48.1 = zext i8 %217 to i32
  %xor.i.i49.1 = xor i32 %conv1.i.i48.1, %conv.i.i47.1
  %conv2.i.i50.1 = trunc i32 %xor.i.i49.1 to i8
  %scevgep.2 = getelementptr i8, i8* %y, i64 2
  %219 = load i8, i8* %scevgep.2, align 1
  %conv.i.i47.2 = zext i8 %219 to i32
  %conv1.i.i48.2 = zext i8 %conv2.i.i50.1 to i32
  %xor.i.i49.2 = xor i32 %conv1.i.i48.2, %conv.i.i47.2
  %conv2.i.i50.2 = trunc i32 %xor.i.i49.2 to i8
  %conv7 = zext i8 %conv2.i.i50.2 to i32
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
