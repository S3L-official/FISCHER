; ModuleID = '../examples/rivain-ches2010-mult.inline-3.ll'
source_filename = "../examples/rivain-ches2010-mult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 3, align 4
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

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.1.0 (https://github.com/llvm/llvm-project.git 7e99bddfeaab2713a8bb6ca538da25b66e6efc59)"}
