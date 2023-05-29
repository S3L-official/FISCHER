; ModuleID = '../examples/rivain-ches2010-mult.ll'
source_filename = "../examples/rivain-ches2010-mult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 2, align 4
@.str = private unnamed_addr constant [7 x i8] c"verify\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [35 x i8] c"../examples/rivain-ches2010-mult.c\00", section "llvm.metadata"
@llvm.global.annotations = appending global [2 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*, i8*)* @sec_mult to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0), i32 3 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*)* @refresh_masks to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0), i32 29 }], section "llvm.metadata"

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

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.1.0 (https://github.com/llvm/llvm-project.git 7e99bddfeaab2713a8bb6ca538da25b66e6efc59)"}
