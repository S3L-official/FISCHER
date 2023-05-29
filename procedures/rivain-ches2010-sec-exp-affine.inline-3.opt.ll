; ModuleID = '../examples/rivain-ches2010-sec-exp-affine.inline-3.ll'
source_filename = "../examples/rivain-ches2010-sec-exp-affine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 3, align 4
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
  %r.i = alloca [4 x [4 x i8]], align 16
  %z = alloca [4 x i8], align 1
  %w = alloca [4 x i8], align 1
  %u = alloca [4 x i8], align 1
  %v = alloca [4 x i8], align 1
  %m = alloca [4 x i8], align 1
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %scevgep270.1 = getelementptr i8, i8* %x, i64 1
  %1 = load i8, i8* %scevgep270.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep270.2 = getelementptr i8, i8* %x, i64 2
  %2 = load i8, i8* %scevgep270.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %scevgep270.3 = getelementptr i8, i8* %x, i64 3
  %3 = load i8, i8* %scevgep270.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %conv2 = zext i8 %conv2.i.i.3 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %4 = load i8, i8* %x, align 1
  %call.i = call zeroext i8 @square(i8 zeroext %4) #3
  %scevgep266 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 0
  store i8 %call.i, i8* %scevgep266, align 1
  %scevgep265.1 = getelementptr i8, i8* %x, i64 1
  %5 = load i8, i8* %scevgep265.1, align 1
  %call.i.1 = call zeroext i8 @square(i8 zeroext %5) #3
  %scevgep266.1 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 1
  store i8 %call.i.1, i8* %scevgep266.1, align 1
  %scevgep265.2 = getelementptr i8, i8* %x, i64 2
  %6 = load i8, i8* %scevgep265.2, align 1
  %call.i.2 = call zeroext i8 @square(i8 zeroext %6) #3
  %scevgep266.2 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 2
  store i8 %call.i.2, i8* %scevgep266.2, align 1
  %scevgep265.3 = getelementptr i8, i8* %x, i64 3
  %7 = load i8, i8* %scevgep265.3, align 1
  %call.i.3 = call zeroext i8 @square(i8 zeroext %7) #3
  %scevgep266.3 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 3
  store i8 %call.i.3, i8* %scevgep266.3, align 1
  %arraydecay4 = getelementptr inbounds [4 x i8], [4 x i8]* %z, i64 0, i64 0
  %call.i28 = call zeroext i8 (...) @rand() #3
  %conv.i = zext i8 %call.i28 to i32
  %scevgep261 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 0
  %8 = load i8, i8* %scevgep261, align 1
  %scevgep261.1 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 1
  %9 = load i8, i8* %scevgep261.1, align 1
  %conv.i.i.i.1 = zext i8 %9 to i32
  %conv1.i.i.i.1 = zext i8 %8 to i32
  %xor.i.i.i.1 = xor i32 %conv1.i.i.i.1, %conv.i.i.i.1
  %conv2.i.i.i.1 = trunc i32 %xor.i.i.i.1 to i8
  %scevgep261.2 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 2
  %10 = load i8, i8* %scevgep261.2, align 1
  %conv.i.i.i.2 = zext i8 %10 to i32
  %conv1.i.i.i.2 = zext i8 %conv2.i.i.i.1 to i32
  %xor.i.i.i.2 = xor i32 %conv1.i.i.i.2, %conv.i.i.i.2
  %conv2.i.i.i.2 = trunc i32 %xor.i.i.i.2 to i8
  %scevgep261.3 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 3
  %11 = load i8, i8* %scevgep261.3, align 1
  %conv.i.i.i.3 = zext i8 %11 to i32
  %conv1.i.i.i.3 = zext i8 %conv2.i.i.i.2 to i32
  %xor.i.i.i.3 = xor i32 %conv1.i.i.i.3, %conv.i.i.i.3
  %conv2.i.i.i.3 = trunc i32 %xor.i.i.i.3 to i8
  %conv2.i = zext i8 %conv2.i.i.i.3 to i32
  %cmp.i29 = icmp eq i32 %conv.i, %conv2.i
  call void @assume(i1 zeroext %cmp.i29) #3
  %call7.i = call zeroext i8 (...) @rand() #3
  %conv8.i = zext i8 %call7.i to i32
  %12 = load i8, i8* %arraydecay4, align 1
  %conv9.i = zext i8 %12 to i32
  %xor.i = xor i32 %conv9.i, %conv8.i
  %conv10.i = trunc i32 %xor.i to i8
  store i8 %conv10.i, i8* %arraydecay4, align 1
  %conv11.i = zext i8 %call7.i to i32
  %scevgep257 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 1
  %13 = load i8, i8* %scevgep257, align 1
  %conv13.i = zext i8 %13 to i32
  %xor14.i = xor i32 %conv13.i, %conv11.i
  %conv15.i = trunc i32 %xor14.i to i8
  store i8 %conv15.i, i8* %scevgep257, align 1
  %call7.i.1 = call zeroext i8 (...) @rand() #3
  %conv8.i.1 = zext i8 %call7.i.1 to i32
  %14 = load i8, i8* %arraydecay4, align 1
  %conv9.i.1 = zext i8 %14 to i32
  %xor.i.1 = xor i32 %conv9.i.1, %conv8.i.1
  %conv10.i.1 = trunc i32 %xor.i.1 to i8
  store i8 %conv10.i.1, i8* %arraydecay4, align 1
  %conv11.i.1 = zext i8 %call7.i.1 to i32
  %scevgep257.1 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 2
  %15 = load i8, i8* %scevgep257.1, align 1
  %conv13.i.1 = zext i8 %15 to i32
  %xor14.i.1 = xor i32 %conv13.i.1, %conv11.i.1
  %conv15.i.1 = trunc i32 %xor14.i.1 to i8
  store i8 %conv15.i.1, i8* %scevgep257.1, align 1
  %call7.i.2 = call zeroext i8 (...) @rand() #3
  %conv8.i.2 = zext i8 %call7.i.2 to i32
  %16 = load i8, i8* %arraydecay4, align 1
  %conv9.i.2 = zext i8 %16 to i32
  %xor.i.2 = xor i32 %conv9.i.2, %conv8.i.2
  %conv10.i.2 = trunc i32 %xor.i.2 to i8
  store i8 %conv10.i.2, i8* %arraydecay4, align 1
  %conv11.i.2 = zext i8 %call7.i.2 to i32
  %scevgep257.2 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 3
  %17 = load i8, i8* %scevgep257.2, align 1
  %conv13.i.2 = zext i8 %17 to i32
  %xor14.i.2 = xor i32 %conv13.i.2, %conv11.i.2
  %conv15.i.2 = trunc i32 %xor14.i.2 to i8
  store i8 %conv15.i.2, i8* %scevgep257.2, align 1
  %conv16.i = zext i8 %call.i28 to i32
  %scevgep253 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 0
  %18 = load i8, i8* %scevgep253, align 1
  %scevgep253.1 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 1
  %19 = load i8, i8* %scevgep253.1, align 1
  %conv.i.i31.i.1 = zext i8 %19 to i32
  %conv1.i.i32.i.1 = zext i8 %18 to i32
  %xor.i.i33.i.1 = xor i32 %conv1.i.i32.i.1, %conv.i.i31.i.1
  %conv2.i.i34.i.1 = trunc i32 %xor.i.i33.i.1 to i8
  %scevgep253.2 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 2
  %20 = load i8, i8* %scevgep253.2, align 1
  %conv.i.i31.i.2 = zext i8 %20 to i32
  %conv1.i.i32.i.2 = zext i8 %conv2.i.i34.i.1 to i32
  %xor.i.i33.i.2 = xor i32 %conv1.i.i32.i.2, %conv.i.i31.i.2
  %conv2.i.i34.i.2 = trunc i32 %xor.i.i33.i.2 to i8
  %scevgep253.3 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 3
  %21 = load i8, i8* %scevgep253.3, align 1
  %conv.i.i31.i.3 = zext i8 %21 to i32
  %conv1.i.i32.i.3 = zext i8 %conv2.i.i34.i.2 to i32
  %xor.i.i33.i.3 = xor i32 %conv1.i.i32.i.3, %conv.i.i31.i.3
  %conv2.i.i34.i.3 = trunc i32 %xor.i.i33.i.3 to i8
  %conv18.i = zext i8 %conv2.i.i34.i.3 to i32
  %cmp19.i = icmp eq i32 %conv16.i, %conv18.i
  call void @assert(i1 zeroext %cmp19.i) #3
  %arraydecay5 = getelementptr inbounds [4 x i8], [4 x i8]* %z, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [4 x i8], [4 x i8]* %u, i64 0, i64 0
  %call.i41 = call zeroext i8 (...) @rand() #3
  %call1.i = call zeroext i8 (...) @rand() #3
  %conv.i42 = zext i8 %call.i41 to i32
  %scevgep249 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 0
  %22 = load i8, i8* %scevgep249, align 1
  %scevgep249.1 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 1
  %23 = load i8, i8* %scevgep249.1, align 1
  %conv.i.i.i48.1 = zext i8 %23 to i32
  %conv1.i.i.i49.1 = zext i8 %22 to i32
  %xor.i.i.i50.1 = xor i32 %conv1.i.i.i49.1, %conv.i.i.i48.1
  %conv2.i.i.i51.1 = trunc i32 %xor.i.i.i50.1 to i8
  %scevgep249.2 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 2
  %24 = load i8, i8* %scevgep249.2, align 1
  %conv.i.i.i48.2 = zext i8 %24 to i32
  %conv1.i.i.i49.2 = zext i8 %conv2.i.i.i51.1 to i32
  %xor.i.i.i50.2 = xor i32 %conv1.i.i.i49.2, %conv.i.i.i48.2
  %conv2.i.i.i51.2 = trunc i32 %xor.i.i.i50.2 to i8
  %scevgep249.3 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 3
  %25 = load i8, i8* %scevgep249.3, align 1
  %conv.i.i.i48.3 = zext i8 %25 to i32
  %conv1.i.i.i49.3 = zext i8 %conv2.i.i.i51.2 to i32
  %xor.i.i.i50.3 = xor i32 %conv1.i.i.i49.3, %conv.i.i.i48.3
  %conv2.i.i.i51.3 = trunc i32 %xor.i.i.i50.3 to i8
  %conv3.i = zext i8 %conv2.i.i.i51.3 to i32
  %cmp.i54 = icmp eq i32 %conv.i42, %conv3.i
  call void @assume(i1 zeroext %cmp.i54) #3
  %conv5.i = zext i8 %call1.i to i32
  %26 = load i8, i8* %x, align 1
  %scevgep245.1 = getelementptr i8, i8* %x, i64 1
  %27 = load i8, i8* %scevgep245.1, align 1
  %conv.i.i96.i.1 = zext i8 %27 to i32
  %conv1.i.i97.i.1 = zext i8 %26 to i32
  %xor.i.i98.i.1 = xor i32 %conv1.i.i97.i.1, %conv.i.i96.i.1
  %conv2.i.i99.i.1 = trunc i32 %xor.i.i98.i.1 to i8
  %scevgep245.2 = getelementptr i8, i8* %x, i64 2
  %28 = load i8, i8* %scevgep245.2, align 1
  %conv.i.i96.i.2 = zext i8 %28 to i32
  %conv1.i.i97.i.2 = zext i8 %conv2.i.i99.i.1 to i32
  %xor.i.i98.i.2 = xor i32 %conv1.i.i97.i.2, %conv.i.i96.i.2
  %conv2.i.i99.i.2 = trunc i32 %xor.i.i98.i.2 to i8
  %scevgep245.3 = getelementptr i8, i8* %x, i64 3
  %29 = load i8, i8* %scevgep245.3, align 1
  %conv.i.i96.i.3 = zext i8 %29 to i32
  %conv1.i.i97.i.3 = zext i8 %conv2.i.i99.i.2 to i32
  %xor.i.i98.i.3 = xor i32 %conv1.i.i97.i.3, %conv.i.i96.i.3
  %conv2.i.i99.i.3 = trunc i32 %xor.i.i98.i.3 to i8
  %conv7.i = zext i8 %conv2.i.i99.i.3 to i32
  %cmp8.i = icmp eq i32 %conv5.i, %conv7.i
  call void @assume(i1 zeroext %cmp8.i) #3
  %call16.i = call zeroext i8 (...) @rand() #3
  %scevgep229 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i, i8* %scevgep229, align 1
  %scevgep230 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %30 = load i8, i8* %scevgep230, align 1
  %conv23.i = zext i8 %30 to i32
  %31 = load i8, i8* %arraydecay5, align 1
  %scevgep233 = getelementptr i8, i8* %x, i64 1
  %32 = load i8, i8* %scevgep233, align 1
  %call28.i = call zeroext i8 @mult(i8 zeroext %31, i8 zeroext %32) #3
  %conv29.i = zext i8 %call28.i to i32
  %xor.i60 = xor i32 %conv23.i, %conv29.i
  %scevgep236 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 1
  %33 = load i8, i8* %scevgep236, align 1
  %34 = load i8, i8* %x, align 1
  %call34.i = call zeroext i8 @mult(i8 zeroext %33, i8 zeroext %34) #3
  %conv35.i = zext i8 %call34.i to i32
  %xor36.i = xor i32 %xor.i60, %conv35.i
  %conv37.i = trunc i32 %xor36.i to i8
  %scevgep237 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %conv37.i, i8* %scevgep237, align 1
  %call16.i.1467 = call zeroext i8 (...) @rand() #3
  %scevgep229.1468 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  store i8 %call16.i.1467, i8* %scevgep229.1468, align 1
  %scevgep230.1469 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %35 = load i8, i8* %scevgep230.1469, align 1
  %conv23.i.1470 = zext i8 %35 to i32
  %36 = load i8, i8* %arraydecay5, align 1
  %scevgep233.1471 = getelementptr i8, i8* %x, i64 2
  %37 = load i8, i8* %scevgep233.1471, align 1
  %call28.i.1472 = call zeroext i8 @mult(i8 zeroext %36, i8 zeroext %37) #3
  %conv29.i.1473 = zext i8 %call28.i.1472 to i32
  %xor.i60.1474 = xor i32 %conv23.i.1470, %conv29.i.1473
  %scevgep236.1475 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 2
  %38 = load i8, i8* %scevgep236.1475, align 1
  %39 = load i8, i8* %x, align 1
  %call34.i.1476 = call zeroext i8 @mult(i8 zeroext %38, i8 zeroext %39) #3
  %conv35.i.1477 = zext i8 %call34.i.1476 to i32
  %xor36.i.1478 = xor i32 %xor.i60.1474, %conv35.i.1477
  %conv37.i.1479 = trunc i32 %xor36.i.1478 to i8
  %scevgep237.1480 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 2, i64 0
  store i8 %conv37.i.1479, i8* %scevgep237.1480, align 1
  %call16.i.2482 = call zeroext i8 (...) @rand() #3
  %scevgep229.2483 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  store i8 %call16.i.2482, i8* %scevgep229.2483, align 1
  %scevgep230.2484 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %40 = load i8, i8* %scevgep230.2484, align 1
  %conv23.i.2485 = zext i8 %40 to i32
  %41 = load i8, i8* %arraydecay5, align 1
  %scevgep233.2486 = getelementptr i8, i8* %x, i64 3
  %42 = load i8, i8* %scevgep233.2486, align 1
  %call28.i.2487 = call zeroext i8 @mult(i8 zeroext %41, i8 zeroext %42) #3
  %conv29.i.2488 = zext i8 %call28.i.2487 to i32
  %xor.i60.2489 = xor i32 %conv23.i.2485, %conv29.i.2488
  %scevgep236.2490 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 3
  %43 = load i8, i8* %scevgep236.2490, align 1
  %44 = load i8, i8* %x, align 1
  %call34.i.2491 = call zeroext i8 @mult(i8 zeroext %43, i8 zeroext %44) #3
  %conv35.i.2492 = zext i8 %call34.i.2491 to i32
  %xor36.i.2493 = xor i32 %xor.i60.2489, %conv35.i.2492
  %conv37.i.2494 = trunc i32 %xor36.i.2493 to i8
  %scevgep237.2495 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 3, i64 0
  store i8 %conv37.i.2494, i8* %scevgep237.2495, align 1
  %scevgep226 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 1
  %45 = bitcast i8* %scevgep226 to [4 x [4 x i8]]*
  %scevgep232 = getelementptr i8, i8* %x, i64 1
  %scevgep235 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 1
  %46 = bitcast i8* %scevgep235 to [4 x i8]*
  %arrayidx25.i.1 = getelementptr inbounds i8, i8* %arraydecay5, i64 1
  %arrayidx33.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %call16.i.1 = call zeroext i8 (...) @rand() #3
  %scevgep229.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %45, i64 0, i64 0, i64 1
  store i8 %call16.i.1, i8* %scevgep229.1, align 1
  %scevgep230.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %45, i64 0, i64 0, i64 1
  %47 = load i8, i8* %scevgep230.1, align 1
  %conv23.i.1 = zext i8 %47 to i32
  %48 = load i8, i8* %arrayidx25.i.1, align 1
  %scevgep233.1 = getelementptr i8, i8* %scevgep232, i64 1
  %49 = load i8, i8* %scevgep233.1, align 1
  %call28.i.1 = call zeroext i8 @mult(i8 zeroext %48, i8 zeroext %49) #3
  %conv29.i.1 = zext i8 %call28.i.1 to i32
  %xor.i60.1 = xor i32 %conv23.i.1, %conv29.i.1
  %scevgep236.1 = getelementptr [4 x i8], [4 x i8]* %46, i64 0, i64 1
  %50 = load i8, i8* %scevgep236.1, align 1
  %51 = load i8, i8* %arrayidx33.i.1, align 1
  %call34.i.1 = call zeroext i8 @mult(i8 zeroext %50, i8 zeroext %51) #3
  %conv35.i.1 = zext i8 %call34.i.1 to i32
  %xor36.i.1 = xor i32 %xor.i60.1, %conv35.i.1
  %conv37.i.1 = trunc i32 %xor36.i.1 to i8
  %scevgep237.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %45, i64 0, i64 1, i64 0
  store i8 %conv37.i.1, i8* %scevgep237.1, align 1
  %call16.i.1.1 = call zeroext i8 (...) @rand() #3
  %scevgep229.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %45, i64 0, i64 0, i64 2
  store i8 %call16.i.1.1, i8* %scevgep229.1.1, align 1
  %scevgep230.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %45, i64 0, i64 0, i64 2
  %52 = load i8, i8* %scevgep230.1.1, align 1
  %conv23.i.1.1 = zext i8 %52 to i32
  %53 = load i8, i8* %arrayidx25.i.1, align 1
  %scevgep233.1.1 = getelementptr i8, i8* %scevgep232, i64 2
  %54 = load i8, i8* %scevgep233.1.1, align 1
  %call28.i.1.1 = call zeroext i8 @mult(i8 zeroext %53, i8 zeroext %54) #3
  %conv29.i.1.1 = zext i8 %call28.i.1.1 to i32
  %xor.i60.1.1 = xor i32 %conv23.i.1.1, %conv29.i.1.1
  %scevgep236.1.1 = getelementptr [4 x i8], [4 x i8]* %46, i64 0, i64 2
  %55 = load i8, i8* %scevgep236.1.1, align 1
  %56 = load i8, i8* %arrayidx33.i.1, align 1
  %call34.i.1.1 = call zeroext i8 @mult(i8 zeroext %55, i8 zeroext %56) #3
  %conv35.i.1.1 = zext i8 %call34.i.1.1 to i32
  %xor36.i.1.1 = xor i32 %xor.i60.1.1, %conv35.i.1.1
  %conv37.i.1.1 = trunc i32 %xor36.i.1.1 to i8
  %scevgep237.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %45, i64 0, i64 2, i64 0
  store i8 %conv37.i.1.1, i8* %scevgep237.1.1, align 1
  %scevgep226.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %45, i64 0, i64 1, i64 1
  %57 = bitcast i8* %scevgep226.1 to [4 x [4 x i8]]*
  %scevgep232.1 = getelementptr i8, i8* %scevgep232, i64 1
  %scevgep235.1 = getelementptr [4 x i8], [4 x i8]* %46, i64 0, i64 1
  %58 = bitcast i8* %scevgep235.1 to [4 x i8]*
  %arrayidx25.i.2 = getelementptr inbounds i8, i8* %arraydecay5, i64 2
  %arrayidx33.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %call16.i.2 = call zeroext i8 (...) @rand() #3
  %scevgep229.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %57, i64 0, i64 0, i64 1
  store i8 %call16.i.2, i8* %scevgep229.2, align 1
  %scevgep230.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %57, i64 0, i64 0, i64 1
  %59 = load i8, i8* %scevgep230.2, align 1
  %conv23.i.2 = zext i8 %59 to i32
  %60 = load i8, i8* %arrayidx25.i.2, align 1
  %scevgep233.2 = getelementptr i8, i8* %scevgep232.1, i64 1
  %61 = load i8, i8* %scevgep233.2, align 1
  %call28.i.2 = call zeroext i8 @mult(i8 zeroext %60, i8 zeroext %61) #3
  %conv29.i.2 = zext i8 %call28.i.2 to i32
  %xor.i60.2 = xor i32 %conv23.i.2, %conv29.i.2
  %scevgep236.2 = getelementptr [4 x i8], [4 x i8]* %58, i64 0, i64 1
  %62 = load i8, i8* %scevgep236.2, align 1
  %63 = load i8, i8* %arrayidx33.i.2, align 1
  %call34.i.2 = call zeroext i8 @mult(i8 zeroext %62, i8 zeroext %63) #3
  %conv35.i.2 = zext i8 %call34.i.2 to i32
  %xor36.i.2 = xor i32 %xor.i60.2, %conv35.i.2
  %conv37.i.2 = trunc i32 %xor36.i.2 to i8
  %scevgep237.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %57, i64 0, i64 1, i64 0
  store i8 %conv37.i.2, i8* %scevgep237.2, align 1
  %64 = load i8, i8* %arraydecay5, align 1
  %65 = load i8, i8* %x, align 1
  %call54.i = call zeroext i8 @mult(i8 zeroext %64, i8 zeroext %65) #3
  store i8 %call54.i, i8* %arraydecay6, align 1
  %scevgep221.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %66 = load i8, i8* %scevgep221.1, align 1
  %conv68.i.1 = zext i8 %66 to i32
  %67 = load i8, i8* %arraydecay6, align 1
  %conv71.i.1 = zext i8 %67 to i32
  %xor72.i.1 = xor i32 %conv71.i.1, %conv68.i.1
  %conv73.i.1 = trunc i32 %xor72.i.1 to i8
  store i8 %conv73.i.1, i8* %arraydecay6, align 1
  %scevgep221.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %68 = load i8, i8* %scevgep221.2, align 1
  %conv68.i.2 = zext i8 %68 to i32
  %69 = load i8, i8* %arraydecay6, align 1
  %conv71.i.2 = zext i8 %69 to i32
  %xor72.i.2 = xor i32 %conv71.i.2, %conv68.i.2
  %conv73.i.2 = trunc i32 %xor72.i.2 to i8
  store i8 %conv73.i.2, i8* %arraydecay6, align 1
  %scevgep221.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %70 = load i8, i8* %scevgep221.3, align 1
  %conv68.i.3 = zext i8 %70 to i32
  %71 = load i8, i8* %arraydecay6, align 1
  %conv71.i.3 = zext i8 %71 to i32
  %xor72.i.3 = xor i32 %conv71.i.3, %conv68.i.3
  %conv73.i.3 = trunc i32 %xor72.i.3 to i8
  store i8 %conv73.i.3, i8* %arraydecay6, align 1
  %scevgep220 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  %72 = bitcast i8* %scevgep220 to [4 x [4 x i8]]*
  %arrayidx51.i.1 = getelementptr inbounds i8, i8* %arraydecay5, i64 1
  %73 = load i8, i8* %arrayidx51.i.1, align 1
  %arrayidx53.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %74 = load i8, i8* %arrayidx53.i.1, align 1
  %call54.i.1 = call zeroext i8 @mult(i8 zeroext %73, i8 zeroext %74) #3
  %arrayidx56.i.1 = getelementptr inbounds i8, i8* %arraydecay6, i64 1
  store i8 %call54.i.1, i8* %arrayidx56.i.1, align 1
  %arrayidx70.i.1 = getelementptr inbounds i8, i8* %arraydecay6, i64 1
  %scevgep221.1355 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %72, i64 0, i64 0, i64 0
  %75 = load i8, i8* %scevgep221.1355, align 1
  %conv68.i.1356 = zext i8 %75 to i32
  %76 = load i8, i8* %arrayidx70.i.1, align 1
  %conv71.i.1357 = zext i8 %76 to i32
  %xor72.i.1358 = xor i32 %conv71.i.1357, %conv68.i.1356
  %conv73.i.1359 = trunc i32 %xor72.i.1358 to i8
  store i8 %conv73.i.1359, i8* %arrayidx70.i.1, align 1
  %scevgep221.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %72, i64 0, i64 0, i64 2
  %77 = load i8, i8* %scevgep221.2.1, align 1
  %conv68.i.2.1 = zext i8 %77 to i32
  %78 = load i8, i8* %arrayidx70.i.1, align 1
  %conv71.i.2.1 = zext i8 %78 to i32
  %xor72.i.2.1 = xor i32 %conv71.i.2.1, %conv68.i.2.1
  %conv73.i.2.1 = trunc i32 %xor72.i.2.1 to i8
  store i8 %conv73.i.2.1, i8* %arrayidx70.i.1, align 1
  %scevgep221.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %72, i64 0, i64 0, i64 3
  %79 = load i8, i8* %scevgep221.3.1, align 1
  %conv68.i.3.1 = zext i8 %79 to i32
  %80 = load i8, i8* %arrayidx70.i.1, align 1
  %conv71.i.3.1 = zext i8 %80 to i32
  %xor72.i.3.1 = xor i32 %conv71.i.3.1, %conv68.i.3.1
  %conv73.i.3.1 = trunc i32 %xor72.i.3.1 to i8
  store i8 %conv73.i.3.1, i8* %arrayidx70.i.1, align 1
  %scevgep220.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %72, i64 0, i64 1, i64 0
  %81 = bitcast i8* %scevgep220.1 to [4 x [4 x i8]]*
  %arrayidx51.i.2 = getelementptr inbounds i8, i8* %arraydecay5, i64 2
  %82 = load i8, i8* %arrayidx51.i.2, align 1
  %arrayidx53.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %83 = load i8, i8* %arrayidx53.i.2, align 1
  %call54.i.2 = call zeroext i8 @mult(i8 zeroext %82, i8 zeroext %83) #3
  %arrayidx56.i.2 = getelementptr inbounds i8, i8* %arraydecay6, i64 2
  store i8 %call54.i.2, i8* %arrayidx56.i.2, align 1
  %arrayidx70.i.2 = getelementptr inbounds i8, i8* %arraydecay6, i64 2
  %scevgep221.2364 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %81, i64 0, i64 0, i64 0
  %84 = load i8, i8* %scevgep221.2364, align 1
  %conv68.i.2365 = zext i8 %84 to i32
  %85 = load i8, i8* %arrayidx70.i.2, align 1
  %conv71.i.2366 = zext i8 %85 to i32
  %xor72.i.2367 = xor i32 %conv71.i.2366, %conv68.i.2365
  %conv73.i.2368 = trunc i32 %xor72.i.2367 to i8
  store i8 %conv73.i.2368, i8* %arrayidx70.i.2, align 1
  %scevgep221.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %81, i64 0, i64 0, i64 1
  %86 = load i8, i8* %scevgep221.1.2, align 1
  %conv68.i.1.2 = zext i8 %86 to i32
  %87 = load i8, i8* %arrayidx70.i.2, align 1
  %conv71.i.1.2 = zext i8 %87 to i32
  %xor72.i.1.2 = xor i32 %conv71.i.1.2, %conv68.i.1.2
  %conv73.i.1.2 = trunc i32 %xor72.i.1.2 to i8
  store i8 %conv73.i.1.2, i8* %arrayidx70.i.2, align 1
  %scevgep221.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %81, i64 0, i64 0, i64 3
  %88 = load i8, i8* %scevgep221.3.2, align 1
  %conv68.i.3.2 = zext i8 %88 to i32
  %89 = load i8, i8* %arrayidx70.i.2, align 1
  %conv71.i.3.2 = zext i8 %89 to i32
  %xor72.i.3.2 = xor i32 %conv71.i.3.2, %conv68.i.3.2
  %conv73.i.3.2 = trunc i32 %xor72.i.3.2 to i8
  store i8 %conv73.i.3.2, i8* %arrayidx70.i.2, align 1
  %scevgep220.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %81, i64 0, i64 1, i64 0
  %90 = bitcast i8* %scevgep220.2 to [4 x [4 x i8]]*
  %arrayidx51.i.3 = getelementptr inbounds i8, i8* %arraydecay5, i64 3
  %91 = load i8, i8* %arrayidx51.i.3, align 1
  %arrayidx53.i.3 = getelementptr inbounds i8, i8* %x, i64 3
  %92 = load i8, i8* %arrayidx53.i.3, align 1
  %call54.i.3 = call zeroext i8 @mult(i8 zeroext %91, i8 zeroext %92) #3
  %arrayidx56.i.3 = getelementptr inbounds i8, i8* %arraydecay6, i64 3
  store i8 %call54.i.3, i8* %arrayidx56.i.3, align 1
  %arrayidx70.i.3 = getelementptr inbounds i8, i8* %arraydecay6, i64 3
  %scevgep221.3373 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %90, i64 0, i64 0, i64 0
  %93 = load i8, i8* %scevgep221.3373, align 1
  %conv68.i.3374 = zext i8 %93 to i32
  %94 = load i8, i8* %arrayidx70.i.3, align 1
  %conv71.i.3375 = zext i8 %94 to i32
  %xor72.i.3376 = xor i32 %conv71.i.3375, %conv68.i.3374
  %conv73.i.3377 = trunc i32 %xor72.i.3376 to i8
  store i8 %conv73.i.3377, i8* %arrayidx70.i.3, align 1
  %scevgep221.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %90, i64 0, i64 0, i64 1
  %95 = load i8, i8* %scevgep221.1.3, align 1
  %conv68.i.1.3 = zext i8 %95 to i32
  %96 = load i8, i8* %arrayidx70.i.3, align 1
  %conv71.i.1.3 = zext i8 %96 to i32
  %xor72.i.1.3 = xor i32 %conv71.i.1.3, %conv68.i.1.3
  %conv73.i.1.3 = trunc i32 %xor72.i.1.3 to i8
  store i8 %conv73.i.1.3, i8* %arrayidx70.i.3, align 1
  %scevgep221.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %90, i64 0, i64 0, i64 2
  %97 = load i8, i8* %scevgep221.2.3, align 1
  %conv68.i.2.3 = zext i8 %97 to i32
  %98 = load i8, i8* %arrayidx70.i.3, align 1
  %conv71.i.2.3 = zext i8 %98 to i32
  %xor72.i.2.3 = xor i32 %conv71.i.2.3, %conv68.i.2.3
  %conv73.i.2.3 = trunc i32 %xor72.i.2.3 to i8
  store i8 %conv73.i.2.3, i8* %arrayidx70.i.3, align 1
  %call80.i = call zeroext i8 @mult(i8 zeroext %call.i41, i8 zeroext %call1.i) #3
  %conv81.i = zext i8 %call80.i to i32
  %scevgep211 = getelementptr [4 x i8], [4 x i8]* %u, i64 0, i64 0
  %99 = load i8, i8* %scevgep211, align 1
  %scevgep211.1 = getelementptr [4 x i8], [4 x i8]* %u, i64 0, i64 1
  %100 = load i8, i8* %scevgep211.1, align 1
  %conv.i.i113.i.1 = zext i8 %100 to i32
  %conv1.i.i114.i.1 = zext i8 %99 to i32
  %xor.i.i115.i.1 = xor i32 %conv1.i.i114.i.1, %conv.i.i113.i.1
  %conv2.i.i116.i.1 = trunc i32 %xor.i.i115.i.1 to i8
  %scevgep211.2 = getelementptr [4 x i8], [4 x i8]* %u, i64 0, i64 2
  %101 = load i8, i8* %scevgep211.2, align 1
  %conv.i.i113.i.2 = zext i8 %101 to i32
  %conv1.i.i114.i.2 = zext i8 %conv2.i.i116.i.1 to i32
  %xor.i.i115.i.2 = xor i32 %conv1.i.i114.i.2, %conv.i.i113.i.2
  %conv2.i.i116.i.2 = trunc i32 %xor.i.i115.i.2 to i8
  %scevgep211.3 = getelementptr [4 x i8], [4 x i8]* %u, i64 0, i64 3
  %102 = load i8, i8* %scevgep211.3, align 1
  %conv.i.i113.i.3 = zext i8 %102 to i32
  %conv1.i.i114.i.3 = zext i8 %conv2.i.i116.i.2 to i32
  %xor.i.i115.i.3 = xor i32 %conv1.i.i114.i.3, %conv.i.i113.i.3
  %conv2.i.i116.i.3 = trunc i32 %xor.i.i115.i.3 to i8
  %conv83.i = zext i8 %conv2.i.i116.i.3 to i32
  %cmp84.i = icmp eq i32 %conv81.i, %conv83.i
  call void @assert(i1 zeroext %cmp84.i) #3
  %scevgep206 = getelementptr [4 x i8], [4 x i8]* %u, i64 0, i64 0
  %103 = load i8, i8* %scevgep206, align 1
  %call.i71 = call zeroext i8 @exp4(i8 zeroext %103) #3
  %scevgep207 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 0
  store i8 %call.i71, i8* %scevgep207, align 1
  %scevgep206.1 = getelementptr [4 x i8], [4 x i8]* %u, i64 0, i64 1
  %104 = load i8, i8* %scevgep206.1, align 1
  %call.i71.1 = call zeroext i8 @exp4(i8 zeroext %104) #3
  %scevgep207.1 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 1
  store i8 %call.i71.1, i8* %scevgep207.1, align 1
  %scevgep206.2 = getelementptr [4 x i8], [4 x i8]* %u, i64 0, i64 2
  %105 = load i8, i8* %scevgep206.2, align 1
  %call.i71.2 = call zeroext i8 @exp4(i8 zeroext %105) #3
  %scevgep207.2 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 2
  store i8 %call.i71.2, i8* %scevgep207.2, align 1
  %scevgep206.3 = getelementptr [4 x i8], [4 x i8]* %u, i64 0, i64 3
  %106 = load i8, i8* %scevgep206.3, align 1
  %call.i71.3 = call zeroext i8 @exp4(i8 zeroext %106) #3
  %scevgep207.3 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 3
  store i8 %call.i71.3, i8* %scevgep207.3, align 1
  %arraydecay9 = getelementptr inbounds [4 x i8], [4 x i8]* %w, i64 0, i64 0
  %call.i92 = call zeroext i8 (...) @rand() #3
  %conv.i93 = zext i8 %call.i92 to i32
  %scevgep202 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 0
  %107 = load i8, i8* %scevgep202, align 1
  %scevgep202.1 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 1
  %108 = load i8, i8* %scevgep202.1, align 1
  %conv.i.i.i99.1 = zext i8 %108 to i32
  %conv1.i.i.i100.1 = zext i8 %107 to i32
  %xor.i.i.i101.1 = xor i32 %conv1.i.i.i100.1, %conv.i.i.i99.1
  %conv2.i.i.i102.1 = trunc i32 %xor.i.i.i101.1 to i8
  %scevgep202.2 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 2
  %109 = load i8, i8* %scevgep202.2, align 1
  %conv.i.i.i99.2 = zext i8 %109 to i32
  %conv1.i.i.i100.2 = zext i8 %conv2.i.i.i102.1 to i32
  %xor.i.i.i101.2 = xor i32 %conv1.i.i.i100.2, %conv.i.i.i99.2
  %conv2.i.i.i102.2 = trunc i32 %xor.i.i.i101.2 to i8
  %scevgep202.3 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 3
  %110 = load i8, i8* %scevgep202.3, align 1
  %conv.i.i.i99.3 = zext i8 %110 to i32
  %conv1.i.i.i100.3 = zext i8 %conv2.i.i.i102.2 to i32
  %xor.i.i.i101.3 = xor i32 %conv1.i.i.i100.3, %conv.i.i.i99.3
  %conv2.i.i.i102.3 = trunc i32 %xor.i.i.i101.3 to i8
  %conv2.i105 = zext i8 %conv2.i.i.i102.3 to i32
  %cmp.i106 = icmp eq i32 %conv.i93, %conv2.i105
  call void @assume(i1 zeroext %cmp.i106) #3
  %call7.i111 = call zeroext i8 (...) @rand() #3
  %conv8.i112 = zext i8 %call7.i111 to i32
  %111 = load i8, i8* %arraydecay9, align 1
  %conv9.i113 = zext i8 %111 to i32
  %xor.i114 = xor i32 %conv9.i113, %conv8.i112
  %conv10.i115 = trunc i32 %xor.i114 to i8
  store i8 %conv10.i115, i8* %arraydecay9, align 1
  %conv11.i116 = zext i8 %call7.i111 to i32
  %scevgep198 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 1
  %112 = load i8, i8* %scevgep198, align 1
  %conv13.i119 = zext i8 %112 to i32
  %xor14.i120 = xor i32 %conv13.i119, %conv11.i116
  %conv15.i121 = trunc i32 %xor14.i120 to i8
  store i8 %conv15.i121, i8* %scevgep198, align 1
  %call7.i111.1 = call zeroext i8 (...) @rand() #3
  %conv8.i112.1 = zext i8 %call7.i111.1 to i32
  %113 = load i8, i8* %arraydecay9, align 1
  %conv9.i113.1 = zext i8 %113 to i32
  %xor.i114.1 = xor i32 %conv9.i113.1, %conv8.i112.1
  %conv10.i115.1 = trunc i32 %xor.i114.1 to i8
  store i8 %conv10.i115.1, i8* %arraydecay9, align 1
  %conv11.i116.1 = zext i8 %call7.i111.1 to i32
  %scevgep198.1 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 2
  %114 = load i8, i8* %scevgep198.1, align 1
  %conv13.i119.1 = zext i8 %114 to i32
  %xor14.i120.1 = xor i32 %conv13.i119.1, %conv11.i116.1
  %conv15.i121.1 = trunc i32 %xor14.i120.1 to i8
  store i8 %conv15.i121.1, i8* %scevgep198.1, align 1
  %call7.i111.2 = call zeroext i8 (...) @rand() #3
  %conv8.i112.2 = zext i8 %call7.i111.2 to i32
  %115 = load i8, i8* %arraydecay9, align 1
  %conv9.i113.2 = zext i8 %115 to i32
  %xor.i114.2 = xor i32 %conv9.i113.2, %conv8.i112.2
  %conv10.i115.2 = trunc i32 %xor.i114.2 to i8
  store i8 %conv10.i115.2, i8* %arraydecay9, align 1
  %conv11.i116.2 = zext i8 %call7.i111.2 to i32
  %scevgep198.2 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 3
  %116 = load i8, i8* %scevgep198.2, align 1
  %conv13.i119.2 = zext i8 %116 to i32
  %xor14.i120.2 = xor i32 %conv13.i119.2, %conv11.i116.2
  %conv15.i121.2 = trunc i32 %xor14.i120.2 to i8
  store i8 %conv15.i121.2, i8* %scevgep198.2, align 1
  %conv16.i124 = zext i8 %call.i92 to i32
  %scevgep194 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 0
  %117 = load i8, i8* %scevgep194, align 1
  %scevgep194.1 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 1
  %118 = load i8, i8* %scevgep194.1, align 1
  %conv.i.i31.i131.1 = zext i8 %118 to i32
  %conv1.i.i32.i132.1 = zext i8 %117 to i32
  %xor.i.i33.i133.1 = xor i32 %conv1.i.i32.i132.1, %conv.i.i31.i131.1
  %conv2.i.i34.i134.1 = trunc i32 %xor.i.i33.i133.1 to i8
  %scevgep194.2 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 2
  %119 = load i8, i8* %scevgep194.2, align 1
  %conv.i.i31.i131.2 = zext i8 %119 to i32
  %conv1.i.i32.i132.2 = zext i8 %conv2.i.i34.i134.1 to i32
  %xor.i.i33.i133.2 = xor i32 %conv1.i.i32.i132.2, %conv.i.i31.i131.2
  %conv2.i.i34.i134.2 = trunc i32 %xor.i.i33.i133.2 to i8
  %scevgep194.3 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 3
  %120 = load i8, i8* %scevgep194.3, align 1
  %conv.i.i31.i131.3 = zext i8 %120 to i32
  %conv1.i.i32.i132.3 = zext i8 %conv2.i.i34.i134.2 to i32
  %xor.i.i33.i133.3 = xor i32 %conv1.i.i32.i132.3, %conv.i.i31.i131.3
  %conv2.i.i34.i134.3 = trunc i32 %xor.i.i33.i133.3 to i8
  %conv18.i137 = zext i8 %conv2.i.i34.i134.3 to i32
  %cmp19.i138 = icmp eq i32 %conv16.i124, %conv18.i137
  call void @assert(i1 zeroext %cmp19.i138) #3
  %arraydecay10 = getelementptr inbounds [4 x i8], [4 x i8]* %u, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [4 x i8], [4 x i8]* %w, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [4 x i8], [4 x i8]* %v, i64 0, i64 0
  %call.i165 = call zeroext i8 (...) @rand() #3
  %call1.i166 = call zeroext i8 (...) @rand() #3
  %conv.i167 = zext i8 %call.i165 to i32
  %scevgep190 = getelementptr [4 x i8], [4 x i8]* %u, i64 0, i64 0
  %121 = load i8, i8* %scevgep190, align 1
  %scevgep190.1 = getelementptr [4 x i8], [4 x i8]* %u, i64 0, i64 1
  %122 = load i8, i8* %scevgep190.1, align 1
  %conv.i.i.i173.1 = zext i8 %122 to i32
  %conv1.i.i.i174.1 = zext i8 %121 to i32
  %xor.i.i.i175.1 = xor i32 %conv1.i.i.i174.1, %conv.i.i.i173.1
  %conv2.i.i.i176.1 = trunc i32 %xor.i.i.i175.1 to i8
  %scevgep190.2 = getelementptr [4 x i8], [4 x i8]* %u, i64 0, i64 2
  %123 = load i8, i8* %scevgep190.2, align 1
  %conv.i.i.i173.2 = zext i8 %123 to i32
  %conv1.i.i.i174.2 = zext i8 %conv2.i.i.i176.1 to i32
  %xor.i.i.i175.2 = xor i32 %conv1.i.i.i174.2, %conv.i.i.i173.2
  %conv2.i.i.i176.2 = trunc i32 %xor.i.i.i175.2 to i8
  %scevgep190.3 = getelementptr [4 x i8], [4 x i8]* %u, i64 0, i64 3
  %124 = load i8, i8* %scevgep190.3, align 1
  %conv.i.i.i173.3 = zext i8 %124 to i32
  %conv1.i.i.i174.3 = zext i8 %conv2.i.i.i176.2 to i32
  %xor.i.i.i175.3 = xor i32 %conv1.i.i.i174.3, %conv.i.i.i173.3
  %conv2.i.i.i176.3 = trunc i32 %xor.i.i.i175.3 to i8
  %conv3.i179 = zext i8 %conv2.i.i.i176.3 to i32
  %cmp.i180 = icmp eq i32 %conv.i167, %conv3.i179
  call void @assume(i1 zeroext %cmp.i180) #3
  %conv5.i181 = zext i8 %call1.i166 to i32
  %scevgep186 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 0
  %125 = load i8, i8* %scevgep186, align 1
  %scevgep186.1 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 1
  %126 = load i8, i8* %scevgep186.1, align 1
  %conv.i.i96.i188.1 = zext i8 %126 to i32
  %conv1.i.i97.i189.1 = zext i8 %125 to i32
  %xor.i.i98.i190.1 = xor i32 %conv1.i.i97.i189.1, %conv.i.i96.i188.1
  %conv2.i.i99.i191.1 = trunc i32 %xor.i.i98.i190.1 to i8
  %scevgep186.2 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 2
  %127 = load i8, i8* %scevgep186.2, align 1
  %conv.i.i96.i188.2 = zext i8 %127 to i32
  %conv1.i.i97.i189.2 = zext i8 %conv2.i.i99.i191.1 to i32
  %xor.i.i98.i190.2 = xor i32 %conv1.i.i97.i189.2, %conv.i.i96.i188.2
  %conv2.i.i99.i191.2 = trunc i32 %xor.i.i98.i190.2 to i8
  %scevgep186.3 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 3
  %128 = load i8, i8* %scevgep186.3, align 1
  %conv.i.i96.i188.3 = zext i8 %128 to i32
  %conv1.i.i97.i189.3 = zext i8 %conv2.i.i99.i191.2 to i32
  %xor.i.i98.i190.3 = xor i32 %conv1.i.i97.i189.3, %conv.i.i96.i188.3
  %conv2.i.i99.i191.3 = trunc i32 %xor.i.i98.i190.3 to i8
  %conv7.i194 = zext i8 %conv2.i.i99.i191.3 to i32
  %cmp8.i195 = icmp eq i32 %conv5.i181, %conv7.i194
  call void @assume(i1 zeroext %cmp8.i195) #3
  %call16.i203 = call zeroext i8 (...) @rand() #3
  %scevgep170 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i203, i8* %scevgep170, align 1
  %scevgep171 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %129 = load i8, i8* %scevgep171, align 1
  %conv23.i212 = zext i8 %129 to i32
  %130 = load i8, i8* %arraydecay10, align 1
  %scevgep174 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 1
  %131 = load i8, i8* %scevgep174, align 1
  %call28.i217 = call zeroext i8 @mult(i8 zeroext %130, i8 zeroext %131) #3
  %conv29.i218 = zext i8 %call28.i217 to i32
  %xor.i219 = xor i32 %conv23.i212, %conv29.i218
  %scevgep177 = getelementptr [4 x i8], [4 x i8]* %u, i64 0, i64 1
  %132 = load i8, i8* %scevgep177, align 1
  %133 = load i8, i8* %arraydecay11, align 1
  %call34.i224 = call zeroext i8 @mult(i8 zeroext %132, i8 zeroext %133) #3
  %conv35.i225 = zext i8 %call34.i224 to i32
  %xor36.i226 = xor i32 %xor.i219, %conv35.i225
  %conv37.i227 = trunc i32 %xor36.i226 to i8
  %scevgep178 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %conv37.i227, i8* %scevgep178, align 1
  %call16.i203.1438 = call zeroext i8 (...) @rand() #3
  %scevgep170.1439 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  store i8 %call16.i203.1438, i8* %scevgep170.1439, align 1
  %scevgep171.1440 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %134 = load i8, i8* %scevgep171.1440, align 1
  %conv23.i212.1441 = zext i8 %134 to i32
  %135 = load i8, i8* %arraydecay10, align 1
  %scevgep174.1442 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 2
  %136 = load i8, i8* %scevgep174.1442, align 1
  %call28.i217.1443 = call zeroext i8 @mult(i8 zeroext %135, i8 zeroext %136) #3
  %conv29.i218.1444 = zext i8 %call28.i217.1443 to i32
  %xor.i219.1445 = xor i32 %conv23.i212.1441, %conv29.i218.1444
  %scevgep177.1446 = getelementptr [4 x i8], [4 x i8]* %u, i64 0, i64 2
  %137 = load i8, i8* %scevgep177.1446, align 1
  %138 = load i8, i8* %arraydecay11, align 1
  %call34.i224.1447 = call zeroext i8 @mult(i8 zeroext %137, i8 zeroext %138) #3
  %conv35.i225.1448 = zext i8 %call34.i224.1447 to i32
  %xor36.i226.1449 = xor i32 %xor.i219.1445, %conv35.i225.1448
  %conv37.i227.1450 = trunc i32 %xor36.i226.1449 to i8
  %scevgep178.1451 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 2, i64 0
  store i8 %conv37.i227.1450, i8* %scevgep178.1451, align 1
  %call16.i203.2453 = call zeroext i8 (...) @rand() #3
  %scevgep170.2454 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  store i8 %call16.i203.2453, i8* %scevgep170.2454, align 1
  %scevgep171.2455 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %139 = load i8, i8* %scevgep171.2455, align 1
  %conv23.i212.2456 = zext i8 %139 to i32
  %140 = load i8, i8* %arraydecay10, align 1
  %scevgep174.2457 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 3
  %141 = load i8, i8* %scevgep174.2457, align 1
  %call28.i217.2458 = call zeroext i8 @mult(i8 zeroext %140, i8 zeroext %141) #3
  %conv29.i218.2459 = zext i8 %call28.i217.2458 to i32
  %xor.i219.2460 = xor i32 %conv23.i212.2456, %conv29.i218.2459
  %scevgep177.2461 = getelementptr [4 x i8], [4 x i8]* %u, i64 0, i64 3
  %142 = load i8, i8* %scevgep177.2461, align 1
  %143 = load i8, i8* %arraydecay11, align 1
  %call34.i224.2462 = call zeroext i8 @mult(i8 zeroext %142, i8 zeroext %143) #3
  %conv35.i225.2463 = zext i8 %call34.i224.2462 to i32
  %xor36.i226.2464 = xor i32 %xor.i219.2460, %conv35.i225.2463
  %conv37.i227.2465 = trunc i32 %xor36.i226.2464 to i8
  %scevgep178.2466 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 3, i64 0
  store i8 %conv37.i227.2465, i8* %scevgep178.2466, align 1
  %scevgep167 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 1
  %144 = bitcast i8* %scevgep167 to [4 x [4 x i8]]*
  %scevgep173 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 1
  %145 = bitcast i8* %scevgep173 to [4 x i8]*
  %scevgep176 = getelementptr [4 x i8], [4 x i8]* %u, i64 0, i64 1
  %146 = bitcast i8* %scevgep176 to [4 x i8]*
  %arrayidx25.i214.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %arrayidx33.i223.1 = getelementptr inbounds i8, i8* %arraydecay11, i64 1
  %call16.i203.1 = call zeroext i8 (...) @rand() #3
  %scevgep170.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %144, i64 0, i64 0, i64 1
  store i8 %call16.i203.1, i8* %scevgep170.1, align 1
  %scevgep171.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %144, i64 0, i64 0, i64 1
  %147 = load i8, i8* %scevgep171.1, align 1
  %conv23.i212.1 = zext i8 %147 to i32
  %148 = load i8, i8* %arrayidx25.i214.1, align 1
  %scevgep174.1 = getelementptr [4 x i8], [4 x i8]* %145, i64 0, i64 1
  %149 = load i8, i8* %scevgep174.1, align 1
  %call28.i217.1 = call zeroext i8 @mult(i8 zeroext %148, i8 zeroext %149) #3
  %conv29.i218.1 = zext i8 %call28.i217.1 to i32
  %xor.i219.1 = xor i32 %conv23.i212.1, %conv29.i218.1
  %scevgep177.1 = getelementptr [4 x i8], [4 x i8]* %146, i64 0, i64 1
  %150 = load i8, i8* %scevgep177.1, align 1
  %151 = load i8, i8* %arrayidx33.i223.1, align 1
  %call34.i224.1 = call zeroext i8 @mult(i8 zeroext %150, i8 zeroext %151) #3
  %conv35.i225.1 = zext i8 %call34.i224.1 to i32
  %xor36.i226.1 = xor i32 %xor.i219.1, %conv35.i225.1
  %conv37.i227.1 = trunc i32 %xor36.i226.1 to i8
  %scevgep178.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %144, i64 0, i64 1, i64 0
  store i8 %conv37.i227.1, i8* %scevgep178.1, align 1
  %call16.i203.1.1 = call zeroext i8 (...) @rand() #3
  %scevgep170.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %144, i64 0, i64 0, i64 2
  store i8 %call16.i203.1.1, i8* %scevgep170.1.1, align 1
  %scevgep171.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %144, i64 0, i64 0, i64 2
  %152 = load i8, i8* %scevgep171.1.1, align 1
  %conv23.i212.1.1 = zext i8 %152 to i32
  %153 = load i8, i8* %arrayidx25.i214.1, align 1
  %scevgep174.1.1 = getelementptr [4 x i8], [4 x i8]* %145, i64 0, i64 2
  %154 = load i8, i8* %scevgep174.1.1, align 1
  %call28.i217.1.1 = call zeroext i8 @mult(i8 zeroext %153, i8 zeroext %154) #3
  %conv29.i218.1.1 = zext i8 %call28.i217.1.1 to i32
  %xor.i219.1.1 = xor i32 %conv23.i212.1.1, %conv29.i218.1.1
  %scevgep177.1.1 = getelementptr [4 x i8], [4 x i8]* %146, i64 0, i64 2
  %155 = load i8, i8* %scevgep177.1.1, align 1
  %156 = load i8, i8* %arrayidx33.i223.1, align 1
  %call34.i224.1.1 = call zeroext i8 @mult(i8 zeroext %155, i8 zeroext %156) #3
  %conv35.i225.1.1 = zext i8 %call34.i224.1.1 to i32
  %xor36.i226.1.1 = xor i32 %xor.i219.1.1, %conv35.i225.1.1
  %conv37.i227.1.1 = trunc i32 %xor36.i226.1.1 to i8
  %scevgep178.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %144, i64 0, i64 2, i64 0
  store i8 %conv37.i227.1.1, i8* %scevgep178.1.1, align 1
  %scevgep167.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %144, i64 0, i64 1, i64 1
  %157 = bitcast i8* %scevgep167.1 to [4 x [4 x i8]]*
  %scevgep173.1 = getelementptr [4 x i8], [4 x i8]* %145, i64 0, i64 1
  %158 = bitcast i8* %scevgep173.1 to [4 x i8]*
  %scevgep176.1 = getelementptr [4 x i8], [4 x i8]* %146, i64 0, i64 1
  %159 = bitcast i8* %scevgep176.1 to [4 x i8]*
  %arrayidx25.i214.2 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  %arrayidx33.i223.2 = getelementptr inbounds i8, i8* %arraydecay11, i64 2
  %call16.i203.2 = call zeroext i8 (...) @rand() #3
  %scevgep170.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %157, i64 0, i64 0, i64 1
  store i8 %call16.i203.2, i8* %scevgep170.2, align 1
  %scevgep171.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %157, i64 0, i64 0, i64 1
  %160 = load i8, i8* %scevgep171.2, align 1
  %conv23.i212.2 = zext i8 %160 to i32
  %161 = load i8, i8* %arrayidx25.i214.2, align 1
  %scevgep174.2 = getelementptr [4 x i8], [4 x i8]* %158, i64 0, i64 1
  %162 = load i8, i8* %scevgep174.2, align 1
  %call28.i217.2 = call zeroext i8 @mult(i8 zeroext %161, i8 zeroext %162) #3
  %conv29.i218.2 = zext i8 %call28.i217.2 to i32
  %xor.i219.2 = xor i32 %conv23.i212.2, %conv29.i218.2
  %scevgep177.2 = getelementptr [4 x i8], [4 x i8]* %159, i64 0, i64 1
  %163 = load i8, i8* %scevgep177.2, align 1
  %164 = load i8, i8* %arrayidx33.i223.2, align 1
  %call34.i224.2 = call zeroext i8 @mult(i8 zeroext %163, i8 zeroext %164) #3
  %conv35.i225.2 = zext i8 %call34.i224.2 to i32
  %xor36.i226.2 = xor i32 %xor.i219.2, %conv35.i225.2
  %conv37.i227.2 = trunc i32 %xor36.i226.2 to i8
  %scevgep178.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %157, i64 0, i64 1, i64 0
  store i8 %conv37.i227.2, i8* %scevgep178.2, align 1
  %165 = load i8, i8* %arraydecay10, align 1
  %166 = load i8, i8* %arraydecay11, align 1
  %call54.i243 = call zeroext i8 @mult(i8 zeroext %165, i8 zeroext %166) #3
  store i8 %call54.i243, i8* %arraydecay12, align 1
  %scevgep162.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %167 = load i8, i8* %scevgep162.1, align 1
  %conv68.i255.1 = zext i8 %167 to i32
  %168 = load i8, i8* %arraydecay12, align 1
  %conv71.i258.1 = zext i8 %168 to i32
  %xor72.i259.1 = xor i32 %conv71.i258.1, %conv68.i255.1
  %conv73.i260.1 = trunc i32 %xor72.i259.1 to i8
  store i8 %conv73.i260.1, i8* %arraydecay12, align 1
  %scevgep162.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %169 = load i8, i8* %scevgep162.2, align 1
  %conv68.i255.2 = zext i8 %169 to i32
  %170 = load i8, i8* %arraydecay12, align 1
  %conv71.i258.2 = zext i8 %170 to i32
  %xor72.i259.2 = xor i32 %conv71.i258.2, %conv68.i255.2
  %conv73.i260.2 = trunc i32 %xor72.i259.2 to i8
  store i8 %conv73.i260.2, i8* %arraydecay12, align 1
  %scevgep162.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %171 = load i8, i8* %scevgep162.3, align 1
  %conv68.i255.3 = zext i8 %171 to i32
  %172 = load i8, i8* %arraydecay12, align 1
  %conv71.i258.3 = zext i8 %172 to i32
  %xor72.i259.3 = xor i32 %conv71.i258.3, %conv68.i255.3
  %conv73.i260.3 = trunc i32 %xor72.i259.3 to i8
  store i8 %conv73.i260.3, i8* %arraydecay12, align 1
  %scevgep161 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  %173 = bitcast i8* %scevgep161 to [4 x [4 x i8]]*
  %arrayidx51.i240.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %174 = load i8, i8* %arrayidx51.i240.1, align 1
  %arrayidx53.i242.1 = getelementptr inbounds i8, i8* %arraydecay11, i64 1
  %175 = load i8, i8* %arrayidx53.i242.1, align 1
  %call54.i243.1 = call zeroext i8 @mult(i8 zeroext %174, i8 zeroext %175) #3
  %arrayidx56.i245.1 = getelementptr inbounds i8, i8* %arraydecay12, i64 1
  store i8 %call54.i243.1, i8* %arrayidx56.i245.1, align 1
  %arrayidx70.i257.1 = getelementptr inbounds i8, i8* %arraydecay12, i64 1
  %scevgep162.1328 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %173, i64 0, i64 0, i64 0
  %176 = load i8, i8* %scevgep162.1328, align 1
  %conv68.i255.1329 = zext i8 %176 to i32
  %177 = load i8, i8* %arrayidx70.i257.1, align 1
  %conv71.i258.1330 = zext i8 %177 to i32
  %xor72.i259.1331 = xor i32 %conv71.i258.1330, %conv68.i255.1329
  %conv73.i260.1332 = trunc i32 %xor72.i259.1331 to i8
  store i8 %conv73.i260.1332, i8* %arrayidx70.i257.1, align 1
  %scevgep162.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %173, i64 0, i64 0, i64 2
  %178 = load i8, i8* %scevgep162.2.1, align 1
  %conv68.i255.2.1 = zext i8 %178 to i32
  %179 = load i8, i8* %arrayidx70.i257.1, align 1
  %conv71.i258.2.1 = zext i8 %179 to i32
  %xor72.i259.2.1 = xor i32 %conv71.i258.2.1, %conv68.i255.2.1
  %conv73.i260.2.1 = trunc i32 %xor72.i259.2.1 to i8
  store i8 %conv73.i260.2.1, i8* %arrayidx70.i257.1, align 1
  %scevgep162.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %173, i64 0, i64 0, i64 3
  %180 = load i8, i8* %scevgep162.3.1, align 1
  %conv68.i255.3.1 = zext i8 %180 to i32
  %181 = load i8, i8* %arrayidx70.i257.1, align 1
  %conv71.i258.3.1 = zext i8 %181 to i32
  %xor72.i259.3.1 = xor i32 %conv71.i258.3.1, %conv68.i255.3.1
  %conv73.i260.3.1 = trunc i32 %xor72.i259.3.1 to i8
  store i8 %conv73.i260.3.1, i8* %arrayidx70.i257.1, align 1
  %scevgep161.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %173, i64 0, i64 1, i64 0
  %182 = bitcast i8* %scevgep161.1 to [4 x [4 x i8]]*
  %arrayidx51.i240.2 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  %183 = load i8, i8* %arrayidx51.i240.2, align 1
  %arrayidx53.i242.2 = getelementptr inbounds i8, i8* %arraydecay11, i64 2
  %184 = load i8, i8* %arrayidx53.i242.2, align 1
  %call54.i243.2 = call zeroext i8 @mult(i8 zeroext %183, i8 zeroext %184) #3
  %arrayidx56.i245.2 = getelementptr inbounds i8, i8* %arraydecay12, i64 2
  store i8 %call54.i243.2, i8* %arrayidx56.i245.2, align 1
  %arrayidx70.i257.2 = getelementptr inbounds i8, i8* %arraydecay12, i64 2
  %scevgep162.2337 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %182, i64 0, i64 0, i64 0
  %185 = load i8, i8* %scevgep162.2337, align 1
  %conv68.i255.2338 = zext i8 %185 to i32
  %186 = load i8, i8* %arrayidx70.i257.2, align 1
  %conv71.i258.2339 = zext i8 %186 to i32
  %xor72.i259.2340 = xor i32 %conv71.i258.2339, %conv68.i255.2338
  %conv73.i260.2341 = trunc i32 %xor72.i259.2340 to i8
  store i8 %conv73.i260.2341, i8* %arrayidx70.i257.2, align 1
  %scevgep162.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %182, i64 0, i64 0, i64 1
  %187 = load i8, i8* %scevgep162.1.2, align 1
  %conv68.i255.1.2 = zext i8 %187 to i32
  %188 = load i8, i8* %arrayidx70.i257.2, align 1
  %conv71.i258.1.2 = zext i8 %188 to i32
  %xor72.i259.1.2 = xor i32 %conv71.i258.1.2, %conv68.i255.1.2
  %conv73.i260.1.2 = trunc i32 %xor72.i259.1.2 to i8
  store i8 %conv73.i260.1.2, i8* %arrayidx70.i257.2, align 1
  %scevgep162.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %182, i64 0, i64 0, i64 3
  %189 = load i8, i8* %scevgep162.3.2, align 1
  %conv68.i255.3.2 = zext i8 %189 to i32
  %190 = load i8, i8* %arrayidx70.i257.2, align 1
  %conv71.i258.3.2 = zext i8 %190 to i32
  %xor72.i259.3.2 = xor i32 %conv71.i258.3.2, %conv68.i255.3.2
  %conv73.i260.3.2 = trunc i32 %xor72.i259.3.2 to i8
  store i8 %conv73.i260.3.2, i8* %arrayidx70.i257.2, align 1
  %scevgep161.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %182, i64 0, i64 1, i64 0
  %191 = bitcast i8* %scevgep161.2 to [4 x [4 x i8]]*
  %arrayidx51.i240.3 = getelementptr inbounds i8, i8* %arraydecay10, i64 3
  %192 = load i8, i8* %arrayidx51.i240.3, align 1
  %arrayidx53.i242.3 = getelementptr inbounds i8, i8* %arraydecay11, i64 3
  %193 = load i8, i8* %arrayidx53.i242.3, align 1
  %call54.i243.3 = call zeroext i8 @mult(i8 zeroext %192, i8 zeroext %193) #3
  %arrayidx56.i245.3 = getelementptr inbounds i8, i8* %arraydecay12, i64 3
  store i8 %call54.i243.3, i8* %arrayidx56.i245.3, align 1
  %arrayidx70.i257.3 = getelementptr inbounds i8, i8* %arraydecay12, i64 3
  %scevgep162.3346 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %191, i64 0, i64 0, i64 0
  %194 = load i8, i8* %scevgep162.3346, align 1
  %conv68.i255.3347 = zext i8 %194 to i32
  %195 = load i8, i8* %arrayidx70.i257.3, align 1
  %conv71.i258.3348 = zext i8 %195 to i32
  %xor72.i259.3349 = xor i32 %conv71.i258.3348, %conv68.i255.3347
  %conv73.i260.3350 = trunc i32 %xor72.i259.3349 to i8
  store i8 %conv73.i260.3350, i8* %arrayidx70.i257.3, align 1
  %scevgep162.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %191, i64 0, i64 0, i64 1
  %196 = load i8, i8* %scevgep162.1.3, align 1
  %conv68.i255.1.3 = zext i8 %196 to i32
  %197 = load i8, i8* %arrayidx70.i257.3, align 1
  %conv71.i258.1.3 = zext i8 %197 to i32
  %xor72.i259.1.3 = xor i32 %conv71.i258.1.3, %conv68.i255.1.3
  %conv73.i260.1.3 = trunc i32 %xor72.i259.1.3 to i8
  store i8 %conv73.i260.1.3, i8* %arrayidx70.i257.3, align 1
  %scevgep162.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %191, i64 0, i64 0, i64 2
  %198 = load i8, i8* %scevgep162.2.3, align 1
  %conv68.i255.2.3 = zext i8 %198 to i32
  %199 = load i8, i8* %arrayidx70.i257.3, align 1
  %conv71.i258.2.3 = zext i8 %199 to i32
  %xor72.i259.2.3 = xor i32 %conv71.i258.2.3, %conv68.i255.2.3
  %conv73.i260.2.3 = trunc i32 %xor72.i259.2.3 to i8
  store i8 %conv73.i260.2.3, i8* %arrayidx70.i257.3, align 1
  %call80.i266 = call zeroext i8 @mult(i8 zeroext %call.i165, i8 zeroext %call1.i166) #3
  %conv81.i267 = zext i8 %call80.i266 to i32
  %scevgep152 = getelementptr [4 x i8], [4 x i8]* %v, i64 0, i64 0
  %200 = load i8, i8* %scevgep152, align 1
  %scevgep152.1 = getelementptr [4 x i8], [4 x i8]* %v, i64 0, i64 1
  %201 = load i8, i8* %scevgep152.1, align 1
  %conv.i.i113.i274.1 = zext i8 %201 to i32
  %conv1.i.i114.i275.1 = zext i8 %200 to i32
  %xor.i.i115.i276.1 = xor i32 %conv1.i.i114.i275.1, %conv.i.i113.i274.1
  %conv2.i.i116.i277.1 = trunc i32 %xor.i.i115.i276.1 to i8
  %scevgep152.2 = getelementptr [4 x i8], [4 x i8]* %v, i64 0, i64 2
  %202 = load i8, i8* %scevgep152.2, align 1
  %conv.i.i113.i274.2 = zext i8 %202 to i32
  %conv1.i.i114.i275.2 = zext i8 %conv2.i.i116.i277.1 to i32
  %xor.i.i115.i276.2 = xor i32 %conv1.i.i114.i275.2, %conv.i.i113.i274.2
  %conv2.i.i116.i277.2 = trunc i32 %xor.i.i115.i276.2 to i8
  %scevgep152.3 = getelementptr [4 x i8], [4 x i8]* %v, i64 0, i64 3
  %203 = load i8, i8* %scevgep152.3, align 1
  %conv.i.i113.i274.3 = zext i8 %203 to i32
  %conv1.i.i114.i275.3 = zext i8 %conv2.i.i116.i277.2 to i32
  %xor.i.i115.i276.3 = xor i32 %conv1.i.i114.i275.3, %conv.i.i113.i274.3
  %conv2.i.i116.i277.3 = trunc i32 %xor.i.i115.i276.3 to i8
  %conv83.i280 = zext i8 %conv2.i.i116.i277.3 to i32
  %cmp84.i281 = icmp eq i32 %conv81.i267, %conv83.i280
  call void @assert(i1 zeroext %cmp84.i281) #3
  %scevgep147 = getelementptr [4 x i8], [4 x i8]* %v, i64 0, i64 0
  %204 = load i8, i8* %scevgep147, align 1
  %call.i291 = call zeroext i8 @exp16(i8 zeroext %204) #3
  %scevgep148 = getelementptr [4 x i8], [4 x i8]* %v, i64 0, i64 0
  store i8 %call.i291, i8* %scevgep148, align 1
  %scevgep147.1 = getelementptr [4 x i8], [4 x i8]* %v, i64 0, i64 1
  %205 = load i8, i8* %scevgep147.1, align 1
  %call.i291.1 = call zeroext i8 @exp16(i8 zeroext %205) #3
  %scevgep148.1 = getelementptr [4 x i8], [4 x i8]* %v, i64 0, i64 1
  store i8 %call.i291.1, i8* %scevgep148.1, align 1
  %scevgep147.2 = getelementptr [4 x i8], [4 x i8]* %v, i64 0, i64 2
  %206 = load i8, i8* %scevgep147.2, align 1
  %call.i291.2 = call zeroext i8 @exp16(i8 zeroext %206) #3
  %scevgep148.2 = getelementptr [4 x i8], [4 x i8]* %v, i64 0, i64 2
  store i8 %call.i291.2, i8* %scevgep148.2, align 1
  %scevgep147.3 = getelementptr [4 x i8], [4 x i8]* %v, i64 0, i64 3
  %207 = load i8, i8* %scevgep147.3, align 1
  %call.i291.3 = call zeroext i8 @exp16(i8 zeroext %207) #3
  %scevgep148.3 = getelementptr [4 x i8], [4 x i8]* %v, i64 0, i64 3
  store i8 %call.i291.3, i8* %scevgep148.3, align 1
  %arraydecay15 = getelementptr inbounds [4 x i8], [4 x i8]* %v, i64 0, i64 0
  %arraydecay16 = getelementptr inbounds [4 x i8], [4 x i8]* %w, i64 0, i64 0
  %arraydecay17 = getelementptr inbounds [4 x i8], [4 x i8]* %m, i64 0, i64 0
  %call.i323 = call zeroext i8 (...) @rand() #3
  %call1.i324 = call zeroext i8 (...) @rand() #3
  %conv.i325 = zext i8 %call.i323 to i32
  %scevgep143 = getelementptr [4 x i8], [4 x i8]* %v, i64 0, i64 0
  %208 = load i8, i8* %scevgep143, align 1
  %scevgep143.1 = getelementptr [4 x i8], [4 x i8]* %v, i64 0, i64 1
  %209 = load i8, i8* %scevgep143.1, align 1
  %conv.i.i.i331.1 = zext i8 %209 to i32
  %conv1.i.i.i332.1 = zext i8 %208 to i32
  %xor.i.i.i333.1 = xor i32 %conv1.i.i.i332.1, %conv.i.i.i331.1
  %conv2.i.i.i334.1 = trunc i32 %xor.i.i.i333.1 to i8
  %scevgep143.2 = getelementptr [4 x i8], [4 x i8]* %v, i64 0, i64 2
  %210 = load i8, i8* %scevgep143.2, align 1
  %conv.i.i.i331.2 = zext i8 %210 to i32
  %conv1.i.i.i332.2 = zext i8 %conv2.i.i.i334.1 to i32
  %xor.i.i.i333.2 = xor i32 %conv1.i.i.i332.2, %conv.i.i.i331.2
  %conv2.i.i.i334.2 = trunc i32 %xor.i.i.i333.2 to i8
  %scevgep143.3 = getelementptr [4 x i8], [4 x i8]* %v, i64 0, i64 3
  %211 = load i8, i8* %scevgep143.3, align 1
  %conv.i.i.i331.3 = zext i8 %211 to i32
  %conv1.i.i.i332.3 = zext i8 %conv2.i.i.i334.2 to i32
  %xor.i.i.i333.3 = xor i32 %conv1.i.i.i332.3, %conv.i.i.i331.3
  %conv2.i.i.i334.3 = trunc i32 %xor.i.i.i333.3 to i8
  %conv3.i337 = zext i8 %conv2.i.i.i334.3 to i32
  %cmp.i338 = icmp eq i32 %conv.i325, %conv3.i337
  call void @assume(i1 zeroext %cmp.i338) #3
  %conv5.i339 = zext i8 %call1.i324 to i32
  %scevgep139 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 0
  %212 = load i8, i8* %scevgep139, align 1
  %scevgep139.1 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 1
  %213 = load i8, i8* %scevgep139.1, align 1
  %conv.i.i96.i346.1 = zext i8 %213 to i32
  %conv1.i.i97.i347.1 = zext i8 %212 to i32
  %xor.i.i98.i348.1 = xor i32 %conv1.i.i97.i347.1, %conv.i.i96.i346.1
  %conv2.i.i99.i349.1 = trunc i32 %xor.i.i98.i348.1 to i8
  %scevgep139.2 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 2
  %214 = load i8, i8* %scevgep139.2, align 1
  %conv.i.i96.i346.2 = zext i8 %214 to i32
  %conv1.i.i97.i347.2 = zext i8 %conv2.i.i99.i349.1 to i32
  %xor.i.i98.i348.2 = xor i32 %conv1.i.i97.i347.2, %conv.i.i96.i346.2
  %conv2.i.i99.i349.2 = trunc i32 %xor.i.i98.i348.2 to i8
  %scevgep139.3 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 3
  %215 = load i8, i8* %scevgep139.3, align 1
  %conv.i.i96.i346.3 = zext i8 %215 to i32
  %conv1.i.i97.i347.3 = zext i8 %conv2.i.i99.i349.2 to i32
  %xor.i.i98.i348.3 = xor i32 %conv1.i.i97.i347.3, %conv.i.i96.i346.3
  %conv2.i.i99.i349.3 = trunc i32 %xor.i.i98.i348.3 to i8
  %conv7.i352 = zext i8 %conv2.i.i99.i349.3 to i32
  %cmp8.i353 = icmp eq i32 %conv5.i339, %conv7.i352
  call void @assume(i1 zeroext %cmp8.i353) #3
  %call16.i361 = call zeroext i8 (...) @rand() #3
  %scevgep123 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i361, i8* %scevgep123, align 1
  %scevgep124 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %216 = load i8, i8* %scevgep124, align 1
  %conv23.i370 = zext i8 %216 to i32
  %217 = load i8, i8* %arraydecay15, align 1
  %scevgep127 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 1
  %218 = load i8, i8* %scevgep127, align 1
  %call28.i375 = call zeroext i8 @mult(i8 zeroext %217, i8 zeroext %218) #3
  %conv29.i376 = zext i8 %call28.i375 to i32
  %xor.i377 = xor i32 %conv23.i370, %conv29.i376
  %scevgep130 = getelementptr [4 x i8], [4 x i8]* %v, i64 0, i64 1
  %219 = load i8, i8* %scevgep130, align 1
  %220 = load i8, i8* %arraydecay16, align 1
  %call34.i382 = call zeroext i8 @mult(i8 zeroext %219, i8 zeroext %220) #3
  %conv35.i383 = zext i8 %call34.i382 to i32
  %xor36.i384 = xor i32 %xor.i377, %conv35.i383
  %conv37.i385 = trunc i32 %xor36.i384 to i8
  %scevgep131 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %conv37.i385, i8* %scevgep131, align 1
  %call16.i361.1409 = call zeroext i8 (...) @rand() #3
  %scevgep123.1410 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  store i8 %call16.i361.1409, i8* %scevgep123.1410, align 1
  %scevgep124.1411 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %221 = load i8, i8* %scevgep124.1411, align 1
  %conv23.i370.1412 = zext i8 %221 to i32
  %222 = load i8, i8* %arraydecay15, align 1
  %scevgep127.1413 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 2
  %223 = load i8, i8* %scevgep127.1413, align 1
  %call28.i375.1414 = call zeroext i8 @mult(i8 zeroext %222, i8 zeroext %223) #3
  %conv29.i376.1415 = zext i8 %call28.i375.1414 to i32
  %xor.i377.1416 = xor i32 %conv23.i370.1412, %conv29.i376.1415
  %scevgep130.1417 = getelementptr [4 x i8], [4 x i8]* %v, i64 0, i64 2
  %224 = load i8, i8* %scevgep130.1417, align 1
  %225 = load i8, i8* %arraydecay16, align 1
  %call34.i382.1418 = call zeroext i8 @mult(i8 zeroext %224, i8 zeroext %225) #3
  %conv35.i383.1419 = zext i8 %call34.i382.1418 to i32
  %xor36.i384.1420 = xor i32 %xor.i377.1416, %conv35.i383.1419
  %conv37.i385.1421 = trunc i32 %xor36.i384.1420 to i8
  %scevgep131.1422 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 2, i64 0
  store i8 %conv37.i385.1421, i8* %scevgep131.1422, align 1
  %call16.i361.2424 = call zeroext i8 (...) @rand() #3
  %scevgep123.2425 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  store i8 %call16.i361.2424, i8* %scevgep123.2425, align 1
  %scevgep124.2426 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %226 = load i8, i8* %scevgep124.2426, align 1
  %conv23.i370.2427 = zext i8 %226 to i32
  %227 = load i8, i8* %arraydecay15, align 1
  %scevgep127.2428 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 3
  %228 = load i8, i8* %scevgep127.2428, align 1
  %call28.i375.2429 = call zeroext i8 @mult(i8 zeroext %227, i8 zeroext %228) #3
  %conv29.i376.2430 = zext i8 %call28.i375.2429 to i32
  %xor.i377.2431 = xor i32 %conv23.i370.2427, %conv29.i376.2430
  %scevgep130.2432 = getelementptr [4 x i8], [4 x i8]* %v, i64 0, i64 3
  %229 = load i8, i8* %scevgep130.2432, align 1
  %230 = load i8, i8* %arraydecay16, align 1
  %call34.i382.2433 = call zeroext i8 @mult(i8 zeroext %229, i8 zeroext %230) #3
  %conv35.i383.2434 = zext i8 %call34.i382.2433 to i32
  %xor36.i384.2435 = xor i32 %xor.i377.2431, %conv35.i383.2434
  %conv37.i385.2436 = trunc i32 %xor36.i384.2435 to i8
  %scevgep131.2437 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 3, i64 0
  store i8 %conv37.i385.2436, i8* %scevgep131.2437, align 1
  %scevgep120 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 1
  %231 = bitcast i8* %scevgep120 to [4 x [4 x i8]]*
  %scevgep126 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 1
  %232 = bitcast i8* %scevgep126 to [4 x i8]*
  %scevgep129 = getelementptr [4 x i8], [4 x i8]* %v, i64 0, i64 1
  %233 = bitcast i8* %scevgep129 to [4 x i8]*
  %arrayidx25.i372.1 = getelementptr inbounds i8, i8* %arraydecay15, i64 1
  %arrayidx33.i381.1 = getelementptr inbounds i8, i8* %arraydecay16, i64 1
  %call16.i361.1 = call zeroext i8 (...) @rand() #3
  %scevgep123.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %231, i64 0, i64 0, i64 1
  store i8 %call16.i361.1, i8* %scevgep123.1, align 1
  %scevgep124.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %231, i64 0, i64 0, i64 1
  %234 = load i8, i8* %scevgep124.1, align 1
  %conv23.i370.1 = zext i8 %234 to i32
  %235 = load i8, i8* %arrayidx25.i372.1, align 1
  %scevgep127.1 = getelementptr [4 x i8], [4 x i8]* %232, i64 0, i64 1
  %236 = load i8, i8* %scevgep127.1, align 1
  %call28.i375.1 = call zeroext i8 @mult(i8 zeroext %235, i8 zeroext %236) #3
  %conv29.i376.1 = zext i8 %call28.i375.1 to i32
  %xor.i377.1 = xor i32 %conv23.i370.1, %conv29.i376.1
  %scevgep130.1 = getelementptr [4 x i8], [4 x i8]* %233, i64 0, i64 1
  %237 = load i8, i8* %scevgep130.1, align 1
  %238 = load i8, i8* %arrayidx33.i381.1, align 1
  %call34.i382.1 = call zeroext i8 @mult(i8 zeroext %237, i8 zeroext %238) #3
  %conv35.i383.1 = zext i8 %call34.i382.1 to i32
  %xor36.i384.1 = xor i32 %xor.i377.1, %conv35.i383.1
  %conv37.i385.1 = trunc i32 %xor36.i384.1 to i8
  %scevgep131.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %231, i64 0, i64 1, i64 0
  store i8 %conv37.i385.1, i8* %scevgep131.1, align 1
  %call16.i361.1.1 = call zeroext i8 (...) @rand() #3
  %scevgep123.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %231, i64 0, i64 0, i64 2
  store i8 %call16.i361.1.1, i8* %scevgep123.1.1, align 1
  %scevgep124.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %231, i64 0, i64 0, i64 2
  %239 = load i8, i8* %scevgep124.1.1, align 1
  %conv23.i370.1.1 = zext i8 %239 to i32
  %240 = load i8, i8* %arrayidx25.i372.1, align 1
  %scevgep127.1.1 = getelementptr [4 x i8], [4 x i8]* %232, i64 0, i64 2
  %241 = load i8, i8* %scevgep127.1.1, align 1
  %call28.i375.1.1 = call zeroext i8 @mult(i8 zeroext %240, i8 zeroext %241) #3
  %conv29.i376.1.1 = zext i8 %call28.i375.1.1 to i32
  %xor.i377.1.1 = xor i32 %conv23.i370.1.1, %conv29.i376.1.1
  %scevgep130.1.1 = getelementptr [4 x i8], [4 x i8]* %233, i64 0, i64 2
  %242 = load i8, i8* %scevgep130.1.1, align 1
  %243 = load i8, i8* %arrayidx33.i381.1, align 1
  %call34.i382.1.1 = call zeroext i8 @mult(i8 zeroext %242, i8 zeroext %243) #3
  %conv35.i383.1.1 = zext i8 %call34.i382.1.1 to i32
  %xor36.i384.1.1 = xor i32 %xor.i377.1.1, %conv35.i383.1.1
  %conv37.i385.1.1 = trunc i32 %xor36.i384.1.1 to i8
  %scevgep131.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %231, i64 0, i64 2, i64 0
  store i8 %conv37.i385.1.1, i8* %scevgep131.1.1, align 1
  %scevgep120.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %231, i64 0, i64 1, i64 1
  %244 = bitcast i8* %scevgep120.1 to [4 x [4 x i8]]*
  %scevgep126.1 = getelementptr [4 x i8], [4 x i8]* %232, i64 0, i64 1
  %245 = bitcast i8* %scevgep126.1 to [4 x i8]*
  %scevgep129.1 = getelementptr [4 x i8], [4 x i8]* %233, i64 0, i64 1
  %246 = bitcast i8* %scevgep129.1 to [4 x i8]*
  %arrayidx25.i372.2 = getelementptr inbounds i8, i8* %arraydecay15, i64 2
  %arrayidx33.i381.2 = getelementptr inbounds i8, i8* %arraydecay16, i64 2
  %call16.i361.2 = call zeroext i8 (...) @rand() #3
  %scevgep123.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %244, i64 0, i64 0, i64 1
  store i8 %call16.i361.2, i8* %scevgep123.2, align 1
  %scevgep124.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %244, i64 0, i64 0, i64 1
  %247 = load i8, i8* %scevgep124.2, align 1
  %conv23.i370.2 = zext i8 %247 to i32
  %248 = load i8, i8* %arrayidx25.i372.2, align 1
  %scevgep127.2 = getelementptr [4 x i8], [4 x i8]* %245, i64 0, i64 1
  %249 = load i8, i8* %scevgep127.2, align 1
  %call28.i375.2 = call zeroext i8 @mult(i8 zeroext %248, i8 zeroext %249) #3
  %conv29.i376.2 = zext i8 %call28.i375.2 to i32
  %xor.i377.2 = xor i32 %conv23.i370.2, %conv29.i376.2
  %scevgep130.2 = getelementptr [4 x i8], [4 x i8]* %246, i64 0, i64 1
  %250 = load i8, i8* %scevgep130.2, align 1
  %251 = load i8, i8* %arrayidx33.i381.2, align 1
  %call34.i382.2 = call zeroext i8 @mult(i8 zeroext %250, i8 zeroext %251) #3
  %conv35.i383.2 = zext i8 %call34.i382.2 to i32
  %xor36.i384.2 = xor i32 %xor.i377.2, %conv35.i383.2
  %conv37.i385.2 = trunc i32 %xor36.i384.2 to i8
  %scevgep131.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %244, i64 0, i64 1, i64 0
  store i8 %conv37.i385.2, i8* %scevgep131.2, align 1
  %252 = load i8, i8* %arraydecay15, align 1
  %253 = load i8, i8* %arraydecay16, align 1
  %call54.i401 = call zeroext i8 @mult(i8 zeroext %252, i8 zeroext %253) #3
  store i8 %call54.i401, i8* %arraydecay17, align 1
  %scevgep115.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %254 = load i8, i8* %scevgep115.1, align 1
  %conv68.i413.1 = zext i8 %254 to i32
  %255 = load i8, i8* %arraydecay17, align 1
  %conv71.i416.1 = zext i8 %255 to i32
  %xor72.i417.1 = xor i32 %conv71.i416.1, %conv68.i413.1
  %conv73.i418.1 = trunc i32 %xor72.i417.1 to i8
  store i8 %conv73.i418.1, i8* %arraydecay17, align 1
  %scevgep115.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %256 = load i8, i8* %scevgep115.2, align 1
  %conv68.i413.2 = zext i8 %256 to i32
  %257 = load i8, i8* %arraydecay17, align 1
  %conv71.i416.2 = zext i8 %257 to i32
  %xor72.i417.2 = xor i32 %conv71.i416.2, %conv68.i413.2
  %conv73.i418.2 = trunc i32 %xor72.i417.2 to i8
  store i8 %conv73.i418.2, i8* %arraydecay17, align 1
  %scevgep115.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %258 = load i8, i8* %scevgep115.3, align 1
  %conv68.i413.3 = zext i8 %258 to i32
  %259 = load i8, i8* %arraydecay17, align 1
  %conv71.i416.3 = zext i8 %259 to i32
  %xor72.i417.3 = xor i32 %conv71.i416.3, %conv68.i413.3
  %conv73.i418.3 = trunc i32 %xor72.i417.3 to i8
  store i8 %conv73.i418.3, i8* %arraydecay17, align 1
  %scevgep114 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  %260 = bitcast i8* %scevgep114 to [4 x [4 x i8]]*
  %arrayidx51.i398.1 = getelementptr inbounds i8, i8* %arraydecay15, i64 1
  %261 = load i8, i8* %arrayidx51.i398.1, align 1
  %arrayidx53.i400.1 = getelementptr inbounds i8, i8* %arraydecay16, i64 1
  %262 = load i8, i8* %arrayidx53.i400.1, align 1
  %call54.i401.1 = call zeroext i8 @mult(i8 zeroext %261, i8 zeroext %262) #3
  %arrayidx56.i403.1 = getelementptr inbounds i8, i8* %arraydecay17, i64 1
  store i8 %call54.i401.1, i8* %arrayidx56.i403.1, align 1
  %arrayidx70.i415.1 = getelementptr inbounds i8, i8* %arraydecay17, i64 1
  %scevgep115.1301 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %260, i64 0, i64 0, i64 0
  %263 = load i8, i8* %scevgep115.1301, align 1
  %conv68.i413.1302 = zext i8 %263 to i32
  %264 = load i8, i8* %arrayidx70.i415.1, align 1
  %conv71.i416.1303 = zext i8 %264 to i32
  %xor72.i417.1304 = xor i32 %conv71.i416.1303, %conv68.i413.1302
  %conv73.i418.1305 = trunc i32 %xor72.i417.1304 to i8
  store i8 %conv73.i418.1305, i8* %arrayidx70.i415.1, align 1
  %scevgep115.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %260, i64 0, i64 0, i64 2
  %265 = load i8, i8* %scevgep115.2.1, align 1
  %conv68.i413.2.1 = zext i8 %265 to i32
  %266 = load i8, i8* %arrayidx70.i415.1, align 1
  %conv71.i416.2.1 = zext i8 %266 to i32
  %xor72.i417.2.1 = xor i32 %conv71.i416.2.1, %conv68.i413.2.1
  %conv73.i418.2.1 = trunc i32 %xor72.i417.2.1 to i8
  store i8 %conv73.i418.2.1, i8* %arrayidx70.i415.1, align 1
  %scevgep115.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %260, i64 0, i64 0, i64 3
  %267 = load i8, i8* %scevgep115.3.1, align 1
  %conv68.i413.3.1 = zext i8 %267 to i32
  %268 = load i8, i8* %arrayidx70.i415.1, align 1
  %conv71.i416.3.1 = zext i8 %268 to i32
  %xor72.i417.3.1 = xor i32 %conv71.i416.3.1, %conv68.i413.3.1
  %conv73.i418.3.1 = trunc i32 %xor72.i417.3.1 to i8
  store i8 %conv73.i418.3.1, i8* %arrayidx70.i415.1, align 1
  %scevgep114.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %260, i64 0, i64 1, i64 0
  %269 = bitcast i8* %scevgep114.1 to [4 x [4 x i8]]*
  %arrayidx51.i398.2 = getelementptr inbounds i8, i8* %arraydecay15, i64 2
  %270 = load i8, i8* %arrayidx51.i398.2, align 1
  %arrayidx53.i400.2 = getelementptr inbounds i8, i8* %arraydecay16, i64 2
  %271 = load i8, i8* %arrayidx53.i400.2, align 1
  %call54.i401.2 = call zeroext i8 @mult(i8 zeroext %270, i8 zeroext %271) #3
  %arrayidx56.i403.2 = getelementptr inbounds i8, i8* %arraydecay17, i64 2
  store i8 %call54.i401.2, i8* %arrayidx56.i403.2, align 1
  %arrayidx70.i415.2 = getelementptr inbounds i8, i8* %arraydecay17, i64 2
  %scevgep115.2310 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %269, i64 0, i64 0, i64 0
  %272 = load i8, i8* %scevgep115.2310, align 1
  %conv68.i413.2311 = zext i8 %272 to i32
  %273 = load i8, i8* %arrayidx70.i415.2, align 1
  %conv71.i416.2312 = zext i8 %273 to i32
  %xor72.i417.2313 = xor i32 %conv71.i416.2312, %conv68.i413.2311
  %conv73.i418.2314 = trunc i32 %xor72.i417.2313 to i8
  store i8 %conv73.i418.2314, i8* %arrayidx70.i415.2, align 1
  %scevgep115.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %269, i64 0, i64 0, i64 1
  %274 = load i8, i8* %scevgep115.1.2, align 1
  %conv68.i413.1.2 = zext i8 %274 to i32
  %275 = load i8, i8* %arrayidx70.i415.2, align 1
  %conv71.i416.1.2 = zext i8 %275 to i32
  %xor72.i417.1.2 = xor i32 %conv71.i416.1.2, %conv68.i413.1.2
  %conv73.i418.1.2 = trunc i32 %xor72.i417.1.2 to i8
  store i8 %conv73.i418.1.2, i8* %arrayidx70.i415.2, align 1
  %scevgep115.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %269, i64 0, i64 0, i64 3
  %276 = load i8, i8* %scevgep115.3.2, align 1
  %conv68.i413.3.2 = zext i8 %276 to i32
  %277 = load i8, i8* %arrayidx70.i415.2, align 1
  %conv71.i416.3.2 = zext i8 %277 to i32
  %xor72.i417.3.2 = xor i32 %conv71.i416.3.2, %conv68.i413.3.2
  %conv73.i418.3.2 = trunc i32 %xor72.i417.3.2 to i8
  store i8 %conv73.i418.3.2, i8* %arrayidx70.i415.2, align 1
  %scevgep114.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %269, i64 0, i64 1, i64 0
  %278 = bitcast i8* %scevgep114.2 to [4 x [4 x i8]]*
  %arrayidx51.i398.3 = getelementptr inbounds i8, i8* %arraydecay15, i64 3
  %279 = load i8, i8* %arrayidx51.i398.3, align 1
  %arrayidx53.i400.3 = getelementptr inbounds i8, i8* %arraydecay16, i64 3
  %280 = load i8, i8* %arrayidx53.i400.3, align 1
  %call54.i401.3 = call zeroext i8 @mult(i8 zeroext %279, i8 zeroext %280) #3
  %arrayidx56.i403.3 = getelementptr inbounds i8, i8* %arraydecay17, i64 3
  store i8 %call54.i401.3, i8* %arrayidx56.i403.3, align 1
  %arrayidx70.i415.3 = getelementptr inbounds i8, i8* %arraydecay17, i64 3
  %scevgep115.3319 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %278, i64 0, i64 0, i64 0
  %281 = load i8, i8* %scevgep115.3319, align 1
  %conv68.i413.3320 = zext i8 %281 to i32
  %282 = load i8, i8* %arrayidx70.i415.3, align 1
  %conv71.i416.3321 = zext i8 %282 to i32
  %xor72.i417.3322 = xor i32 %conv71.i416.3321, %conv68.i413.3320
  %conv73.i418.3323 = trunc i32 %xor72.i417.3322 to i8
  store i8 %conv73.i418.3323, i8* %arrayidx70.i415.3, align 1
  %scevgep115.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %278, i64 0, i64 0, i64 1
  %283 = load i8, i8* %scevgep115.1.3, align 1
  %conv68.i413.1.3 = zext i8 %283 to i32
  %284 = load i8, i8* %arrayidx70.i415.3, align 1
  %conv71.i416.1.3 = zext i8 %284 to i32
  %xor72.i417.1.3 = xor i32 %conv71.i416.1.3, %conv68.i413.1.3
  %conv73.i418.1.3 = trunc i32 %xor72.i417.1.3 to i8
  store i8 %conv73.i418.1.3, i8* %arrayidx70.i415.3, align 1
  %scevgep115.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %278, i64 0, i64 0, i64 2
  %285 = load i8, i8* %scevgep115.2.3, align 1
  %conv68.i413.2.3 = zext i8 %285 to i32
  %286 = load i8, i8* %arrayidx70.i415.3, align 1
  %conv71.i416.2.3 = zext i8 %286 to i32
  %xor72.i417.2.3 = xor i32 %conv71.i416.2.3, %conv68.i413.2.3
  %conv73.i418.2.3 = trunc i32 %xor72.i417.2.3 to i8
  store i8 %conv73.i418.2.3, i8* %arrayidx70.i415.3, align 1
  %call80.i424 = call zeroext i8 @mult(i8 zeroext %call.i323, i8 zeroext %call1.i324) #3
  %conv81.i425 = zext i8 %call80.i424 to i32
  %scevgep105 = getelementptr [4 x i8], [4 x i8]* %m, i64 0, i64 0
  %287 = load i8, i8* %scevgep105, align 1
  %scevgep105.1 = getelementptr [4 x i8], [4 x i8]* %m, i64 0, i64 1
  %288 = load i8, i8* %scevgep105.1, align 1
  %conv.i.i113.i432.1 = zext i8 %288 to i32
  %conv1.i.i114.i433.1 = zext i8 %287 to i32
  %xor.i.i115.i434.1 = xor i32 %conv1.i.i114.i433.1, %conv.i.i113.i432.1
  %conv2.i.i116.i435.1 = trunc i32 %xor.i.i115.i434.1 to i8
  %scevgep105.2 = getelementptr [4 x i8], [4 x i8]* %m, i64 0, i64 2
  %289 = load i8, i8* %scevgep105.2, align 1
  %conv.i.i113.i432.2 = zext i8 %289 to i32
  %conv1.i.i114.i433.2 = zext i8 %conv2.i.i116.i435.1 to i32
  %xor.i.i115.i434.2 = xor i32 %conv1.i.i114.i433.2, %conv.i.i113.i432.2
  %conv2.i.i116.i435.2 = trunc i32 %xor.i.i115.i434.2 to i8
  %scevgep105.3 = getelementptr [4 x i8], [4 x i8]* %m, i64 0, i64 3
  %290 = load i8, i8* %scevgep105.3, align 1
  %conv.i.i113.i432.3 = zext i8 %290 to i32
  %conv1.i.i114.i433.3 = zext i8 %conv2.i.i116.i435.2 to i32
  %xor.i.i115.i434.3 = xor i32 %conv1.i.i114.i433.3, %conv.i.i113.i432.3
  %conv2.i.i116.i435.3 = trunc i32 %xor.i.i115.i434.3 to i8
  %conv83.i438 = zext i8 %conv2.i.i116.i435.3 to i32
  %cmp84.i439 = icmp eq i32 %conv81.i425, %conv83.i438
  call void @assert(i1 zeroext %cmp84.i439) #3
  %arraydecay18 = getelementptr inbounds [4 x i8], [4 x i8]* %m, i64 0, i64 0
  %arraydecay19 = getelementptr inbounds [4 x i8], [4 x i8]* %z, i64 0, i64 0
  %call.i466 = call zeroext i8 (...) @rand() #3
  %call1.i467 = call zeroext i8 (...) @rand() #3
  %conv.i468 = zext i8 %call.i466 to i32
  %scevgep101 = getelementptr [4 x i8], [4 x i8]* %m, i64 0, i64 0
  %291 = load i8, i8* %scevgep101, align 1
  %scevgep101.1 = getelementptr [4 x i8], [4 x i8]* %m, i64 0, i64 1
  %292 = load i8, i8* %scevgep101.1, align 1
  %conv.i.i.i474.1 = zext i8 %292 to i32
  %conv1.i.i.i475.1 = zext i8 %291 to i32
  %xor.i.i.i476.1 = xor i32 %conv1.i.i.i475.1, %conv.i.i.i474.1
  %conv2.i.i.i477.1 = trunc i32 %xor.i.i.i476.1 to i8
  %scevgep101.2 = getelementptr [4 x i8], [4 x i8]* %m, i64 0, i64 2
  %293 = load i8, i8* %scevgep101.2, align 1
  %conv.i.i.i474.2 = zext i8 %293 to i32
  %conv1.i.i.i475.2 = zext i8 %conv2.i.i.i477.1 to i32
  %xor.i.i.i476.2 = xor i32 %conv1.i.i.i475.2, %conv.i.i.i474.2
  %conv2.i.i.i477.2 = trunc i32 %xor.i.i.i476.2 to i8
  %scevgep101.3 = getelementptr [4 x i8], [4 x i8]* %m, i64 0, i64 3
  %294 = load i8, i8* %scevgep101.3, align 1
  %conv.i.i.i474.3 = zext i8 %294 to i32
  %conv1.i.i.i475.3 = zext i8 %conv2.i.i.i477.2 to i32
  %xor.i.i.i476.3 = xor i32 %conv1.i.i.i475.3, %conv.i.i.i474.3
  %conv2.i.i.i477.3 = trunc i32 %xor.i.i.i476.3 to i8
  %conv3.i480 = zext i8 %conv2.i.i.i477.3 to i32
  %cmp.i481 = icmp eq i32 %conv.i468, %conv3.i480
  call void @assume(i1 zeroext %cmp.i481) #3
  %conv5.i482 = zext i8 %call1.i467 to i32
  %scevgep97 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 0
  %295 = load i8, i8* %scevgep97, align 1
  %scevgep97.1 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 1
  %296 = load i8, i8* %scevgep97.1, align 1
  %conv.i.i96.i489.1 = zext i8 %296 to i32
  %conv1.i.i97.i490.1 = zext i8 %295 to i32
  %xor.i.i98.i491.1 = xor i32 %conv1.i.i97.i490.1, %conv.i.i96.i489.1
  %conv2.i.i99.i492.1 = trunc i32 %xor.i.i98.i491.1 to i8
  %scevgep97.2 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 2
  %297 = load i8, i8* %scevgep97.2, align 1
  %conv.i.i96.i489.2 = zext i8 %297 to i32
  %conv1.i.i97.i490.2 = zext i8 %conv2.i.i99.i492.1 to i32
  %xor.i.i98.i491.2 = xor i32 %conv1.i.i97.i490.2, %conv.i.i96.i489.2
  %conv2.i.i99.i492.2 = trunc i32 %xor.i.i98.i491.2 to i8
  %scevgep97.3 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 3
  %298 = load i8, i8* %scevgep97.3, align 1
  %conv.i.i96.i489.3 = zext i8 %298 to i32
  %conv1.i.i97.i490.3 = zext i8 %conv2.i.i99.i492.2 to i32
  %xor.i.i98.i491.3 = xor i32 %conv1.i.i97.i490.3, %conv.i.i96.i489.3
  %conv2.i.i99.i492.3 = trunc i32 %xor.i.i98.i491.3 to i8
  %conv7.i495 = zext i8 %conv2.i.i99.i492.3 to i32
  %cmp8.i496 = icmp eq i32 %conv5.i482, %conv7.i495
  call void @assume(i1 zeroext %cmp8.i496) #3
  %call16.i504 = call zeroext i8 (...) @rand() #3
  %scevgep81 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i504, i8* %scevgep81, align 1
  %scevgep82 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %299 = load i8, i8* %scevgep82, align 1
  %conv23.i513 = zext i8 %299 to i32
  %300 = load i8, i8* %arraydecay18, align 1
  %scevgep85 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 1
  %301 = load i8, i8* %scevgep85, align 1
  %call28.i518 = call zeroext i8 @mult(i8 zeroext %300, i8 zeroext %301) #3
  %conv29.i519 = zext i8 %call28.i518 to i32
  %xor.i520 = xor i32 %conv23.i513, %conv29.i519
  %scevgep88 = getelementptr [4 x i8], [4 x i8]* %m, i64 0, i64 1
  %302 = load i8, i8* %scevgep88, align 1
  %303 = load i8, i8* %arraydecay19, align 1
  %call34.i525 = call zeroext i8 @mult(i8 zeroext %302, i8 zeroext %303) #3
  %conv35.i526 = zext i8 %call34.i525 to i32
  %xor36.i527 = xor i32 %xor.i520, %conv35.i526
  %conv37.i528 = trunc i32 %xor36.i527 to i8
  %scevgep89 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %conv37.i528, i8* %scevgep89, align 1
  %call16.i504.1380 = call zeroext i8 (...) @rand() #3
  %scevgep81.1381 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  store i8 %call16.i504.1380, i8* %scevgep81.1381, align 1
  %scevgep82.1382 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %304 = load i8, i8* %scevgep82.1382, align 1
  %conv23.i513.1383 = zext i8 %304 to i32
  %305 = load i8, i8* %arraydecay18, align 1
  %scevgep85.1384 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 2
  %306 = load i8, i8* %scevgep85.1384, align 1
  %call28.i518.1385 = call zeroext i8 @mult(i8 zeroext %305, i8 zeroext %306) #3
  %conv29.i519.1386 = zext i8 %call28.i518.1385 to i32
  %xor.i520.1387 = xor i32 %conv23.i513.1383, %conv29.i519.1386
  %scevgep88.1388 = getelementptr [4 x i8], [4 x i8]* %m, i64 0, i64 2
  %307 = load i8, i8* %scevgep88.1388, align 1
  %308 = load i8, i8* %arraydecay19, align 1
  %call34.i525.1389 = call zeroext i8 @mult(i8 zeroext %307, i8 zeroext %308) #3
  %conv35.i526.1390 = zext i8 %call34.i525.1389 to i32
  %xor36.i527.1391 = xor i32 %xor.i520.1387, %conv35.i526.1390
  %conv37.i528.1392 = trunc i32 %xor36.i527.1391 to i8
  %scevgep89.1393 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 2, i64 0
  store i8 %conv37.i528.1392, i8* %scevgep89.1393, align 1
  %call16.i504.2395 = call zeroext i8 (...) @rand() #3
  %scevgep81.2396 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  store i8 %call16.i504.2395, i8* %scevgep81.2396, align 1
  %scevgep82.2397 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %309 = load i8, i8* %scevgep82.2397, align 1
  %conv23.i513.2398 = zext i8 %309 to i32
  %310 = load i8, i8* %arraydecay18, align 1
  %scevgep85.2399 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 3
  %311 = load i8, i8* %scevgep85.2399, align 1
  %call28.i518.2400 = call zeroext i8 @mult(i8 zeroext %310, i8 zeroext %311) #3
  %conv29.i519.2401 = zext i8 %call28.i518.2400 to i32
  %xor.i520.2402 = xor i32 %conv23.i513.2398, %conv29.i519.2401
  %scevgep88.2403 = getelementptr [4 x i8], [4 x i8]* %m, i64 0, i64 3
  %312 = load i8, i8* %scevgep88.2403, align 1
  %313 = load i8, i8* %arraydecay19, align 1
  %call34.i525.2404 = call zeroext i8 @mult(i8 zeroext %312, i8 zeroext %313) #3
  %conv35.i526.2405 = zext i8 %call34.i525.2404 to i32
  %xor36.i527.2406 = xor i32 %xor.i520.2402, %conv35.i526.2405
  %conv37.i528.2407 = trunc i32 %xor36.i527.2406 to i8
  %scevgep89.2408 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 3, i64 0
  store i8 %conv37.i528.2407, i8* %scevgep89.2408, align 1
  %scevgep78 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 1
  %314 = bitcast i8* %scevgep78 to [4 x [4 x i8]]*
  %scevgep84 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 1
  %315 = bitcast i8* %scevgep84 to [4 x i8]*
  %scevgep87 = getelementptr [4 x i8], [4 x i8]* %m, i64 0, i64 1
  %316 = bitcast i8* %scevgep87 to [4 x i8]*
  %arrayidx25.i515.1 = getelementptr inbounds i8, i8* %arraydecay18, i64 1
  %arrayidx33.i524.1 = getelementptr inbounds i8, i8* %arraydecay19, i64 1
  %call16.i504.1 = call zeroext i8 (...) @rand() #3
  %scevgep81.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %314, i64 0, i64 0, i64 1
  store i8 %call16.i504.1, i8* %scevgep81.1, align 1
  %scevgep82.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %314, i64 0, i64 0, i64 1
  %317 = load i8, i8* %scevgep82.1, align 1
  %conv23.i513.1 = zext i8 %317 to i32
  %318 = load i8, i8* %arrayidx25.i515.1, align 1
  %scevgep85.1 = getelementptr [4 x i8], [4 x i8]* %315, i64 0, i64 1
  %319 = load i8, i8* %scevgep85.1, align 1
  %call28.i518.1 = call zeroext i8 @mult(i8 zeroext %318, i8 zeroext %319) #3
  %conv29.i519.1 = zext i8 %call28.i518.1 to i32
  %xor.i520.1 = xor i32 %conv23.i513.1, %conv29.i519.1
  %scevgep88.1 = getelementptr [4 x i8], [4 x i8]* %316, i64 0, i64 1
  %320 = load i8, i8* %scevgep88.1, align 1
  %321 = load i8, i8* %arrayidx33.i524.1, align 1
  %call34.i525.1 = call zeroext i8 @mult(i8 zeroext %320, i8 zeroext %321) #3
  %conv35.i526.1 = zext i8 %call34.i525.1 to i32
  %xor36.i527.1 = xor i32 %xor.i520.1, %conv35.i526.1
  %conv37.i528.1 = trunc i32 %xor36.i527.1 to i8
  %scevgep89.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %314, i64 0, i64 1, i64 0
  store i8 %conv37.i528.1, i8* %scevgep89.1, align 1
  %call16.i504.1.1 = call zeroext i8 (...) @rand() #3
  %scevgep81.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %314, i64 0, i64 0, i64 2
  store i8 %call16.i504.1.1, i8* %scevgep81.1.1, align 1
  %scevgep82.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %314, i64 0, i64 0, i64 2
  %322 = load i8, i8* %scevgep82.1.1, align 1
  %conv23.i513.1.1 = zext i8 %322 to i32
  %323 = load i8, i8* %arrayidx25.i515.1, align 1
  %scevgep85.1.1 = getelementptr [4 x i8], [4 x i8]* %315, i64 0, i64 2
  %324 = load i8, i8* %scevgep85.1.1, align 1
  %call28.i518.1.1 = call zeroext i8 @mult(i8 zeroext %323, i8 zeroext %324) #3
  %conv29.i519.1.1 = zext i8 %call28.i518.1.1 to i32
  %xor.i520.1.1 = xor i32 %conv23.i513.1.1, %conv29.i519.1.1
  %scevgep88.1.1 = getelementptr [4 x i8], [4 x i8]* %316, i64 0, i64 2
  %325 = load i8, i8* %scevgep88.1.1, align 1
  %326 = load i8, i8* %arrayidx33.i524.1, align 1
  %call34.i525.1.1 = call zeroext i8 @mult(i8 zeroext %325, i8 zeroext %326) #3
  %conv35.i526.1.1 = zext i8 %call34.i525.1.1 to i32
  %xor36.i527.1.1 = xor i32 %xor.i520.1.1, %conv35.i526.1.1
  %conv37.i528.1.1 = trunc i32 %xor36.i527.1.1 to i8
  %scevgep89.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %314, i64 0, i64 2, i64 0
  store i8 %conv37.i528.1.1, i8* %scevgep89.1.1, align 1
  %scevgep78.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %314, i64 0, i64 1, i64 1
  %327 = bitcast i8* %scevgep78.1 to [4 x [4 x i8]]*
  %scevgep84.1 = getelementptr [4 x i8], [4 x i8]* %315, i64 0, i64 1
  %328 = bitcast i8* %scevgep84.1 to [4 x i8]*
  %scevgep87.1 = getelementptr [4 x i8], [4 x i8]* %316, i64 0, i64 1
  %329 = bitcast i8* %scevgep87.1 to [4 x i8]*
  %arrayidx25.i515.2 = getelementptr inbounds i8, i8* %arraydecay18, i64 2
  %arrayidx33.i524.2 = getelementptr inbounds i8, i8* %arraydecay19, i64 2
  %call16.i504.2 = call zeroext i8 (...) @rand() #3
  %scevgep81.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %327, i64 0, i64 0, i64 1
  store i8 %call16.i504.2, i8* %scevgep81.2, align 1
  %scevgep82.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %327, i64 0, i64 0, i64 1
  %330 = load i8, i8* %scevgep82.2, align 1
  %conv23.i513.2 = zext i8 %330 to i32
  %331 = load i8, i8* %arrayidx25.i515.2, align 1
  %scevgep85.2 = getelementptr [4 x i8], [4 x i8]* %328, i64 0, i64 1
  %332 = load i8, i8* %scevgep85.2, align 1
  %call28.i518.2 = call zeroext i8 @mult(i8 zeroext %331, i8 zeroext %332) #3
  %conv29.i519.2 = zext i8 %call28.i518.2 to i32
  %xor.i520.2 = xor i32 %conv23.i513.2, %conv29.i519.2
  %scevgep88.2 = getelementptr [4 x i8], [4 x i8]* %329, i64 0, i64 1
  %333 = load i8, i8* %scevgep88.2, align 1
  %334 = load i8, i8* %arrayidx33.i524.2, align 1
  %call34.i525.2 = call zeroext i8 @mult(i8 zeroext %333, i8 zeroext %334) #3
  %conv35.i526.2 = zext i8 %call34.i525.2 to i32
  %xor36.i527.2 = xor i32 %xor.i520.2, %conv35.i526.2
  %conv37.i528.2 = trunc i32 %xor36.i527.2 to i8
  %scevgep89.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %327, i64 0, i64 1, i64 0
  store i8 %conv37.i528.2, i8* %scevgep89.2, align 1
  %335 = load i8, i8* %arraydecay18, align 1
  %336 = load i8, i8* %arraydecay19, align 1
  %call54.i544 = call zeroext i8 @mult(i8 zeroext %335, i8 zeroext %336) #3
  store i8 %call54.i544, i8* %y, align 1
  %scevgep74.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %337 = load i8, i8* %scevgep74.1, align 1
  %conv68.i556.1 = zext i8 %337 to i32
  %338 = load i8, i8* %y, align 1
  %conv71.i559.1 = zext i8 %338 to i32
  %xor72.i560.1 = xor i32 %conv71.i559.1, %conv68.i556.1
  %conv73.i561.1 = trunc i32 %xor72.i560.1 to i8
  store i8 %conv73.i561.1, i8* %y, align 1
  %scevgep74.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %339 = load i8, i8* %scevgep74.2, align 1
  %conv68.i556.2 = zext i8 %339 to i32
  %340 = load i8, i8* %y, align 1
  %conv71.i559.2 = zext i8 %340 to i32
  %xor72.i560.2 = xor i32 %conv71.i559.2, %conv68.i556.2
  %conv73.i561.2 = trunc i32 %xor72.i560.2 to i8
  store i8 %conv73.i561.2, i8* %y, align 1
  %scevgep74.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %341 = load i8, i8* %scevgep74.3, align 1
  %conv68.i556.3 = zext i8 %341 to i32
  %342 = load i8, i8* %y, align 1
  %conv71.i559.3 = zext i8 %342 to i32
  %xor72.i560.3 = xor i32 %conv71.i559.3, %conv68.i556.3
  %conv73.i561.3 = trunc i32 %xor72.i560.3 to i8
  store i8 %conv73.i561.3, i8* %y, align 1
  %scevgep73 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  %343 = bitcast i8* %scevgep73 to [4 x [4 x i8]]*
  %arrayidx51.i541.1 = getelementptr inbounds i8, i8* %arraydecay18, i64 1
  %344 = load i8, i8* %arrayidx51.i541.1, align 1
  %arrayidx53.i543.1 = getelementptr inbounds i8, i8* %arraydecay19, i64 1
  %345 = load i8, i8* %arrayidx53.i543.1, align 1
  %call54.i544.1 = call zeroext i8 @mult(i8 zeroext %344, i8 zeroext %345) #3
  %arrayidx56.i546.1 = getelementptr inbounds i8, i8* %y, i64 1
  store i8 %call54.i544.1, i8* %arrayidx56.i546.1, align 1
  %arrayidx70.i558.1 = getelementptr inbounds i8, i8* %y, i64 1
  %scevgep74.1274 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %343, i64 0, i64 0, i64 0
  %346 = load i8, i8* %scevgep74.1274, align 1
  %conv68.i556.1275 = zext i8 %346 to i32
  %347 = load i8, i8* %arrayidx70.i558.1, align 1
  %conv71.i559.1276 = zext i8 %347 to i32
  %xor72.i560.1277 = xor i32 %conv71.i559.1276, %conv68.i556.1275
  %conv73.i561.1278 = trunc i32 %xor72.i560.1277 to i8
  store i8 %conv73.i561.1278, i8* %arrayidx70.i558.1, align 1
  %scevgep74.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %343, i64 0, i64 0, i64 2
  %348 = load i8, i8* %scevgep74.2.1, align 1
  %conv68.i556.2.1 = zext i8 %348 to i32
  %349 = load i8, i8* %arrayidx70.i558.1, align 1
  %conv71.i559.2.1 = zext i8 %349 to i32
  %xor72.i560.2.1 = xor i32 %conv71.i559.2.1, %conv68.i556.2.1
  %conv73.i561.2.1 = trunc i32 %xor72.i560.2.1 to i8
  store i8 %conv73.i561.2.1, i8* %arrayidx70.i558.1, align 1
  %scevgep74.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %343, i64 0, i64 0, i64 3
  %350 = load i8, i8* %scevgep74.3.1, align 1
  %conv68.i556.3.1 = zext i8 %350 to i32
  %351 = load i8, i8* %arrayidx70.i558.1, align 1
  %conv71.i559.3.1 = zext i8 %351 to i32
  %xor72.i560.3.1 = xor i32 %conv71.i559.3.1, %conv68.i556.3.1
  %conv73.i561.3.1 = trunc i32 %xor72.i560.3.1 to i8
  store i8 %conv73.i561.3.1, i8* %arrayidx70.i558.1, align 1
  %scevgep73.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %343, i64 0, i64 1, i64 0
  %352 = bitcast i8* %scevgep73.1 to [4 x [4 x i8]]*
  %arrayidx51.i541.2 = getelementptr inbounds i8, i8* %arraydecay18, i64 2
  %353 = load i8, i8* %arrayidx51.i541.2, align 1
  %arrayidx53.i543.2 = getelementptr inbounds i8, i8* %arraydecay19, i64 2
  %354 = load i8, i8* %arrayidx53.i543.2, align 1
  %call54.i544.2 = call zeroext i8 @mult(i8 zeroext %353, i8 zeroext %354) #3
  %arrayidx56.i546.2 = getelementptr inbounds i8, i8* %y, i64 2
  store i8 %call54.i544.2, i8* %arrayidx56.i546.2, align 1
  %arrayidx70.i558.2 = getelementptr inbounds i8, i8* %y, i64 2
  %scevgep74.2283 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %352, i64 0, i64 0, i64 0
  %355 = load i8, i8* %scevgep74.2283, align 1
  %conv68.i556.2284 = zext i8 %355 to i32
  %356 = load i8, i8* %arrayidx70.i558.2, align 1
  %conv71.i559.2285 = zext i8 %356 to i32
  %xor72.i560.2286 = xor i32 %conv71.i559.2285, %conv68.i556.2284
  %conv73.i561.2287 = trunc i32 %xor72.i560.2286 to i8
  store i8 %conv73.i561.2287, i8* %arrayidx70.i558.2, align 1
  %scevgep74.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %352, i64 0, i64 0, i64 1
  %357 = load i8, i8* %scevgep74.1.2, align 1
  %conv68.i556.1.2 = zext i8 %357 to i32
  %358 = load i8, i8* %arrayidx70.i558.2, align 1
  %conv71.i559.1.2 = zext i8 %358 to i32
  %xor72.i560.1.2 = xor i32 %conv71.i559.1.2, %conv68.i556.1.2
  %conv73.i561.1.2 = trunc i32 %xor72.i560.1.2 to i8
  store i8 %conv73.i561.1.2, i8* %arrayidx70.i558.2, align 1
  %scevgep74.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %352, i64 0, i64 0, i64 3
  %359 = load i8, i8* %scevgep74.3.2, align 1
  %conv68.i556.3.2 = zext i8 %359 to i32
  %360 = load i8, i8* %arrayidx70.i558.2, align 1
  %conv71.i559.3.2 = zext i8 %360 to i32
  %xor72.i560.3.2 = xor i32 %conv71.i559.3.2, %conv68.i556.3.2
  %conv73.i561.3.2 = trunc i32 %xor72.i560.3.2 to i8
  store i8 %conv73.i561.3.2, i8* %arrayidx70.i558.2, align 1
  %scevgep73.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %352, i64 0, i64 1, i64 0
  %361 = bitcast i8* %scevgep73.2 to [4 x [4 x i8]]*
  %arrayidx51.i541.3 = getelementptr inbounds i8, i8* %arraydecay18, i64 3
  %362 = load i8, i8* %arrayidx51.i541.3, align 1
  %arrayidx53.i543.3 = getelementptr inbounds i8, i8* %arraydecay19, i64 3
  %363 = load i8, i8* %arrayidx53.i543.3, align 1
  %call54.i544.3 = call zeroext i8 @mult(i8 zeroext %362, i8 zeroext %363) #3
  %arrayidx56.i546.3 = getelementptr inbounds i8, i8* %y, i64 3
  store i8 %call54.i544.3, i8* %arrayidx56.i546.3, align 1
  %arrayidx70.i558.3 = getelementptr inbounds i8, i8* %y, i64 3
  %scevgep74.3292 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %361, i64 0, i64 0, i64 0
  %364 = load i8, i8* %scevgep74.3292, align 1
  %conv68.i556.3293 = zext i8 %364 to i32
  %365 = load i8, i8* %arrayidx70.i558.3, align 1
  %conv71.i559.3294 = zext i8 %365 to i32
  %xor72.i560.3295 = xor i32 %conv71.i559.3294, %conv68.i556.3293
  %conv73.i561.3296 = trunc i32 %xor72.i560.3295 to i8
  store i8 %conv73.i561.3296, i8* %arrayidx70.i558.3, align 1
  %scevgep74.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %361, i64 0, i64 0, i64 1
  %366 = load i8, i8* %scevgep74.1.3, align 1
  %conv68.i556.1.3 = zext i8 %366 to i32
  %367 = load i8, i8* %arrayidx70.i558.3, align 1
  %conv71.i559.1.3 = zext i8 %367 to i32
  %xor72.i560.1.3 = xor i32 %conv71.i559.1.3, %conv68.i556.1.3
  %conv73.i561.1.3 = trunc i32 %xor72.i560.1.3 to i8
  store i8 %conv73.i561.1.3, i8* %arrayidx70.i558.3, align 1
  %scevgep74.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %361, i64 0, i64 0, i64 2
  %368 = load i8, i8* %scevgep74.2.3, align 1
  %conv68.i556.2.3 = zext i8 %368 to i32
  %369 = load i8, i8* %arrayidx70.i558.3, align 1
  %conv71.i559.2.3 = zext i8 %369 to i32
  %xor72.i560.2.3 = xor i32 %conv71.i559.2.3, %conv68.i556.2.3
  %conv73.i561.2.3 = trunc i32 %xor72.i560.2.3 to i8
  store i8 %conv73.i561.2.3, i8* %arrayidx70.i558.3, align 1
  %call80.i567 = call zeroext i8 @mult(i8 zeroext %call.i466, i8 zeroext %call1.i467) #3
  %conv81.i568 = zext i8 %call80.i567 to i32
  %370 = load i8, i8* %y, align 1
  %scevgep64.1 = getelementptr i8, i8* %y, i64 1
  %371 = load i8, i8* %scevgep64.1, align 1
  %conv.i.i113.i575.1 = zext i8 %371 to i32
  %conv1.i.i114.i576.1 = zext i8 %370 to i32
  %xor.i.i115.i577.1 = xor i32 %conv1.i.i114.i576.1, %conv.i.i113.i575.1
  %conv2.i.i116.i578.1 = trunc i32 %xor.i.i115.i577.1 to i8
  %scevgep64.2 = getelementptr i8, i8* %y, i64 2
  %372 = load i8, i8* %scevgep64.2, align 1
  %conv.i.i113.i575.2 = zext i8 %372 to i32
  %conv1.i.i114.i576.2 = zext i8 %conv2.i.i116.i578.1 to i32
  %xor.i.i115.i577.2 = xor i32 %conv1.i.i114.i576.2, %conv.i.i113.i575.2
  %conv2.i.i116.i578.2 = trunc i32 %xor.i.i115.i577.2 to i8
  %scevgep64.3 = getelementptr i8, i8* %y, i64 3
  %373 = load i8, i8* %scevgep64.3, align 1
  %conv.i.i113.i575.3 = zext i8 %373 to i32
  %conv1.i.i114.i576.3 = zext i8 %conv2.i.i116.i578.2 to i32
  %xor.i.i115.i577.3 = xor i32 %conv1.i.i114.i576.3, %conv.i.i113.i575.3
  %conv2.i.i116.i578.3 = trunc i32 %xor.i.i115.i577.3 to i8
  %conv83.i581 = zext i8 %conv2.i.i116.i578.3 to i32
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
  %374 = load i8, i8* %y, align 1
  %scevgep.1 = getelementptr i8, i8* %y, i64 1
  %375 = load i8, i8* %scevgep.1, align 1
  %conv.i.i597.1 = zext i8 %375 to i32
  %conv1.i.i598.1 = zext i8 %374 to i32
  %xor.i.i599.1 = xor i32 %conv1.i.i598.1, %conv.i.i597.1
  %conv2.i.i600.1 = trunc i32 %xor.i.i599.1 to i8
  %scevgep.2 = getelementptr i8, i8* %y, i64 2
  %376 = load i8, i8* %scevgep.2, align 1
  %conv.i.i597.2 = zext i8 %376 to i32
  %conv1.i.i598.2 = zext i8 %conv2.i.i600.1 to i32
  %xor.i.i599.2 = xor i32 %conv1.i.i598.2, %conv.i.i597.2
  %conv2.i.i600.2 = trunc i32 %xor.i.i599.2 to i8
  %scevgep.3 = getelementptr i8, i8* %y, i64 3
  %377 = load i8, i8* %scevgep.3, align 1
  %conv.i.i597.3 = zext i8 %377 to i32
  %conv1.i.i598.3 = zext i8 %conv2.i.i600.2 to i32
  %xor.i.i599.3 = xor i32 %conv1.i.i598.3, %conv.i.i597.3
  %conv2.i.i600.3 = trunc i32 %xor.i.i599.3 to i8
  %conv23 = zext i8 %conv2.i.i600.3 to i32
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
  ret i8 %call.2
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_expd(i8* %x, i8* %y) #0 {
entry:
  %r.i = alloca [4 x [4 x i8]], align 16
  %z = alloca [4 x [4 x i8]], align 16
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %scevgep81.1 = getelementptr i8, i8* %x, i64 1
  %1 = load i8, i8* %scevgep81.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep81.2 = getelementptr i8, i8* %x, i64 2
  %2 = load i8, i8* %scevgep81.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %scevgep81.3 = getelementptr i8, i8* %x, i64 3
  %3 = load i8, i8* %scevgep81.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %conv2 = zext i8 %conv2.i.i.3 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %4 = load i8, i8* %x, align 1
  %scevgep77 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 0
  store i8 %4, i8* %scevgep77, align 1
  %scevgep76.1 = getelementptr i8, i8* %x, i64 1
  %5 = load i8, i8* %scevgep76.1, align 1
  %scevgep77.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 1
  store i8 %5, i8* %scevgep77.1, align 1
  %scevgep76.2 = getelementptr i8, i8* %x, i64 2
  %6 = load i8, i8* %scevgep76.2, align 1
  %scevgep77.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 2
  store i8 %6, i8* %scevgep77.2, align 1
  %scevgep76.3 = getelementptr i8, i8* %x, i64 3
  %7 = load i8, i8* %scevgep76.3, align 1
  %scevgep77.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 3
  store i8 %7, i8* %scevgep77.3, align 1
  %arrayidx6 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx6, i64 0, i64 0
  %arrayidx9 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 1
  %arraydecay10 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx9, i64 0, i64 0
  %call.i22 = call zeroext i8 (...) @rand() #3
  %call1.i = call zeroext i8 (...) @rand() #3
  %conv.i = zext i8 %call.i22 to i32
  %8 = load i8, i8* %x, align 1
  %scevgep32.1 = getelementptr i8, i8* %x, i64 1
  %9 = load i8, i8* %scevgep32.1, align 1
  %conv.i.i.i.1 = zext i8 %9 to i32
  %conv1.i.i.i.1 = zext i8 %8 to i32
  %xor.i.i.i.1 = xor i32 %conv1.i.i.i.1, %conv.i.i.i.1
  %conv2.i.i.i.1 = trunc i32 %xor.i.i.i.1 to i8
  %scevgep32.2 = getelementptr i8, i8* %x, i64 2
  %10 = load i8, i8* %scevgep32.2, align 1
  %conv.i.i.i.2 = zext i8 %10 to i32
  %conv1.i.i.i.2 = zext i8 %conv2.i.i.i.1 to i32
  %xor.i.i.i.2 = xor i32 %conv1.i.i.i.2, %conv.i.i.i.2
  %conv2.i.i.i.2 = trunc i32 %xor.i.i.i.2 to i8
  %scevgep32.3 = getelementptr i8, i8* %x, i64 3
  %11 = load i8, i8* %scevgep32.3, align 1
  %conv.i.i.i.3 = zext i8 %11 to i32
  %conv1.i.i.i.3 = zext i8 %conv2.i.i.i.2 to i32
  %xor.i.i.i.3 = xor i32 %conv1.i.i.i.3, %conv.i.i.i.3
  %conv2.i.i.i.3 = trunc i32 %xor.i.i.i.3 to i8
  %conv3.i = zext i8 %conv2.i.i.i.3 to i32
  %cmp.i23 = icmp eq i32 %conv.i, %conv3.i
  call void @assume(i1 zeroext %cmp.i23) #3
  %conv5.i = zext i8 %call1.i to i32
  %scevgep38 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 0
  %12 = load i8, i8* %scevgep38, align 1
  %scevgep38.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 1
  %13 = load i8, i8* %scevgep38.1, align 1
  %conv.i.i96.i.1 = zext i8 %13 to i32
  %conv1.i.i97.i.1 = zext i8 %12 to i32
  %xor.i.i98.i.1 = xor i32 %conv1.i.i97.i.1, %conv.i.i96.i.1
  %conv2.i.i99.i.1 = trunc i32 %xor.i.i98.i.1 to i8
  %scevgep38.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 2
  %14 = load i8, i8* %scevgep38.2, align 1
  %conv.i.i96.i.2 = zext i8 %14 to i32
  %conv1.i.i97.i.2 = zext i8 %conv2.i.i99.i.1 to i32
  %xor.i.i98.i.2 = xor i32 %conv1.i.i97.i.2, %conv.i.i96.i.2
  %conv2.i.i99.i.2 = trunc i32 %xor.i.i98.i.2 to i8
  %scevgep38.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 3
  %15 = load i8, i8* %scevgep38.3, align 1
  %conv.i.i96.i.3 = zext i8 %15 to i32
  %conv1.i.i97.i.3 = zext i8 %conv2.i.i99.i.2 to i32
  %xor.i.i98.i.3 = xor i32 %conv1.i.i97.i.3, %conv.i.i96.i.3
  %conv2.i.i99.i.3 = trunc i32 %xor.i.i98.i.3 to i8
  %conv7.i = zext i8 %conv2.i.i99.i.3 to i32
  %cmp8.i = icmp eq i32 %conv5.i, %conv7.i
  call void @assume(i1 zeroext %cmp8.i) #3
  %call16.i = call zeroext i8 (...) @rand() #3
  %scevgep44 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i, i8* %scevgep44, align 1
  %scevgep45 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %16 = load i8, i8* %scevgep45, align 1
  %conv23.i = zext i8 %16 to i32
  %17 = load i8, i8* %x, align 1
  %scevgep48 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 1
  %18 = load i8, i8* %scevgep48, align 1
  %call28.i = call zeroext i8 @mult(i8 zeroext %17, i8 zeroext %18) #3
  %conv29.i = zext i8 %call28.i to i32
  %xor.i = xor i32 %conv23.i, %conv29.i
  %scevgep51 = getelementptr i8, i8* %x, i64 1
  %19 = load i8, i8* %scevgep51, align 1
  %20 = load i8, i8* %arraydecay7, align 1
  %call34.i = call zeroext i8 @mult(i8 zeroext %19, i8 zeroext %20) #3
  %conv35.i = zext i8 %call34.i to i32
  %xor36.i = xor i32 %xor.i, %conv35.i
  %conv37.i = trunc i32 %xor36.i to i8
  %scevgep52 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %conv37.i, i8* %scevgep52, align 1
  %call16.i.1273 = call zeroext i8 (...) @rand() #3
  %scevgep44.1274 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  store i8 %call16.i.1273, i8* %scevgep44.1274, align 1
  %scevgep45.1275 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %21 = load i8, i8* %scevgep45.1275, align 1
  %conv23.i.1276 = zext i8 %21 to i32
  %22 = load i8, i8* %x, align 1
  %scevgep48.1277 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 2
  %23 = load i8, i8* %scevgep48.1277, align 1
  %call28.i.1278 = call zeroext i8 @mult(i8 zeroext %22, i8 zeroext %23) #3
  %conv29.i.1279 = zext i8 %call28.i.1278 to i32
  %xor.i.1280 = xor i32 %conv23.i.1276, %conv29.i.1279
  %scevgep51.1281 = getelementptr i8, i8* %x, i64 2
  %24 = load i8, i8* %scevgep51.1281, align 1
  %25 = load i8, i8* %arraydecay7, align 1
  %call34.i.1282 = call zeroext i8 @mult(i8 zeroext %24, i8 zeroext %25) #3
  %conv35.i.1283 = zext i8 %call34.i.1282 to i32
  %xor36.i.1284 = xor i32 %xor.i.1280, %conv35.i.1283
  %conv37.i.1285 = trunc i32 %xor36.i.1284 to i8
  %scevgep52.1286 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 2, i64 0
  store i8 %conv37.i.1285, i8* %scevgep52.1286, align 1
  %call16.i.2288 = call zeroext i8 (...) @rand() #3
  %scevgep44.2289 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  store i8 %call16.i.2288, i8* %scevgep44.2289, align 1
  %scevgep45.2290 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %26 = load i8, i8* %scevgep45.2290, align 1
  %conv23.i.2291 = zext i8 %26 to i32
  %27 = load i8, i8* %x, align 1
  %scevgep48.2292 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 3
  %28 = load i8, i8* %scevgep48.2292, align 1
  %call28.i.2293 = call zeroext i8 @mult(i8 zeroext %27, i8 zeroext %28) #3
  %conv29.i.2294 = zext i8 %call28.i.2293 to i32
  %xor.i.2295 = xor i32 %conv23.i.2291, %conv29.i.2294
  %scevgep51.2296 = getelementptr i8, i8* %x, i64 3
  %29 = load i8, i8* %scevgep51.2296, align 1
  %30 = load i8, i8* %arraydecay7, align 1
  %call34.i.2297 = call zeroext i8 @mult(i8 zeroext %29, i8 zeroext %30) #3
  %conv35.i.2298 = zext i8 %call34.i.2297 to i32
  %xor36.i.2299 = xor i32 %xor.i.2295, %conv35.i.2298
  %conv37.i.2300 = trunc i32 %xor36.i.2299 to i8
  %scevgep52.2301 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 3, i64 0
  store i8 %conv37.i.2300, i8* %scevgep52.2301, align 1
  %scevgep41 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 1
  %31 = bitcast i8* %scevgep41 to [4 x [4 x i8]]*
  %scevgep47 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 1
  %32 = bitcast i8* %scevgep47 to [4 x [4 x i8]]*
  %scevgep50 = getelementptr i8, i8* %x, i64 1
  %arrayidx25.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %arrayidx33.i.1 = getelementptr inbounds i8, i8* %arraydecay7, i64 1
  %call16.i.1 = call zeroext i8 (...) @rand() #3
  %scevgep44.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %31, i64 0, i64 0, i64 1
  store i8 %call16.i.1, i8* %scevgep44.1, align 1
  %scevgep45.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %31, i64 0, i64 0, i64 1
  %33 = load i8, i8* %scevgep45.1, align 1
  %conv23.i.1 = zext i8 %33 to i32
  %34 = load i8, i8* %arrayidx25.i.1, align 1
  %scevgep48.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %32, i64 0, i64 0, i64 1
  %35 = load i8, i8* %scevgep48.1, align 1
  %call28.i.1 = call zeroext i8 @mult(i8 zeroext %34, i8 zeroext %35) #3
  %conv29.i.1 = zext i8 %call28.i.1 to i32
  %xor.i.1 = xor i32 %conv23.i.1, %conv29.i.1
  %scevgep51.1 = getelementptr i8, i8* %scevgep50, i64 1
  %36 = load i8, i8* %scevgep51.1, align 1
  %37 = load i8, i8* %arrayidx33.i.1, align 1
  %call34.i.1 = call zeroext i8 @mult(i8 zeroext %36, i8 zeroext %37) #3
  %conv35.i.1 = zext i8 %call34.i.1 to i32
  %xor36.i.1 = xor i32 %xor.i.1, %conv35.i.1
  %conv37.i.1 = trunc i32 %xor36.i.1 to i8
  %scevgep52.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %31, i64 0, i64 1, i64 0
  store i8 %conv37.i.1, i8* %scevgep52.1, align 1
  %call16.i.1.1258 = call zeroext i8 (...) @rand() #3
  %scevgep44.1.1259 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %31, i64 0, i64 0, i64 2
  store i8 %call16.i.1.1258, i8* %scevgep44.1.1259, align 1
  %scevgep45.1.1260 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %31, i64 0, i64 0, i64 2
  %38 = load i8, i8* %scevgep45.1.1260, align 1
  %conv23.i.1.1261 = zext i8 %38 to i32
  %39 = load i8, i8* %arrayidx25.i.1, align 1
  %scevgep48.1.1262 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %32, i64 0, i64 0, i64 2
  %40 = load i8, i8* %scevgep48.1.1262, align 1
  %call28.i.1.1263 = call zeroext i8 @mult(i8 zeroext %39, i8 zeroext %40) #3
  %conv29.i.1.1264 = zext i8 %call28.i.1.1263 to i32
  %xor.i.1.1265 = xor i32 %conv23.i.1.1261, %conv29.i.1.1264
  %scevgep51.1.1266 = getelementptr i8, i8* %scevgep50, i64 2
  %41 = load i8, i8* %scevgep51.1.1266, align 1
  %42 = load i8, i8* %arrayidx33.i.1, align 1
  %call34.i.1.1267 = call zeroext i8 @mult(i8 zeroext %41, i8 zeroext %42) #3
  %conv35.i.1.1268 = zext i8 %call34.i.1.1267 to i32
  %xor36.i.1.1269 = xor i32 %xor.i.1.1265, %conv35.i.1.1268
  %conv37.i.1.1270 = trunc i32 %xor36.i.1.1269 to i8
  %scevgep52.1.1271 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %31, i64 0, i64 2, i64 0
  store i8 %conv37.i.1.1270, i8* %scevgep52.1.1271, align 1
  %scevgep41.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %31, i64 0, i64 1, i64 1
  %43 = bitcast i8* %scevgep41.1 to [4 x [4 x i8]]*
  %scevgep47.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %32, i64 0, i64 0, i64 1
  %44 = bitcast i8* %scevgep47.1 to [4 x [4 x i8]]*
  %scevgep50.1 = getelementptr i8, i8* %scevgep50, i64 1
  %arrayidx25.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %arrayidx33.i.2 = getelementptr inbounds i8, i8* %arraydecay7, i64 2
  %call16.i.2 = call zeroext i8 (...) @rand() #3
  %scevgep44.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %43, i64 0, i64 0, i64 1
  store i8 %call16.i.2, i8* %scevgep44.2, align 1
  %scevgep45.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %43, i64 0, i64 0, i64 1
  %45 = load i8, i8* %scevgep45.2, align 1
  %conv23.i.2 = zext i8 %45 to i32
  %46 = load i8, i8* %arrayidx25.i.2, align 1
  %scevgep48.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %44, i64 0, i64 0, i64 1
  %47 = load i8, i8* %scevgep48.2, align 1
  %call28.i.2 = call zeroext i8 @mult(i8 zeroext %46, i8 zeroext %47) #3
  %conv29.i.2 = zext i8 %call28.i.2 to i32
  %xor.i.2 = xor i32 %conv23.i.2, %conv29.i.2
  %scevgep51.2 = getelementptr i8, i8* %scevgep50.1, i64 1
  %48 = load i8, i8* %scevgep51.2, align 1
  %49 = load i8, i8* %arrayidx33.i.2, align 1
  %call34.i.2 = call zeroext i8 @mult(i8 zeroext %48, i8 zeroext %49) #3
  %conv35.i.2 = zext i8 %call34.i.2 to i32
  %xor36.i.2 = xor i32 %xor.i.2, %conv35.i.2
  %conv37.i.2 = trunc i32 %xor36.i.2 to i8
  %scevgep52.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %43, i64 0, i64 1, i64 0
  store i8 %conv37.i.2, i8* %scevgep52.2, align 1
  %50 = load i8, i8* %x, align 1
  %51 = load i8, i8* %arraydecay7, align 1
  %call54.i = call zeroext i8 @mult(i8 zeroext %50, i8 zeroext %51) #3
  store i8 %call54.i, i8* %arraydecay10, align 1
  %scevgep65.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %52 = load i8, i8* %scevgep65.1, align 1
  %conv68.i.1 = zext i8 %52 to i32
  %53 = load i8, i8* %arraydecay10, align 1
  %conv71.i.1 = zext i8 %53 to i32
  %xor72.i.1 = xor i32 %conv71.i.1, %conv68.i.1
  %conv73.i.1 = trunc i32 %xor72.i.1 to i8
  store i8 %conv73.i.1, i8* %arraydecay10, align 1
  %scevgep65.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %54 = load i8, i8* %scevgep65.2, align 1
  %conv68.i.2 = zext i8 %54 to i32
  %55 = load i8, i8* %arraydecay10, align 1
  %conv71.i.2 = zext i8 %55 to i32
  %xor72.i.2 = xor i32 %conv71.i.2, %conv68.i.2
  %conv73.i.2 = trunc i32 %xor72.i.2 to i8
  store i8 %conv73.i.2, i8* %arraydecay10, align 1
  %scevgep65.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %56 = load i8, i8* %scevgep65.3, align 1
  %conv68.i.3 = zext i8 %56 to i32
  %57 = load i8, i8* %arraydecay10, align 1
  %conv71.i.3 = zext i8 %57 to i32
  %xor72.i.3 = xor i32 %conv71.i.3, %conv68.i.3
  %conv73.i.3 = trunc i32 %xor72.i.3 to i8
  store i8 %conv73.i.3, i8* %arraydecay10, align 1
  %scevgep64 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  %58 = bitcast i8* %scevgep64 to [4 x [4 x i8]]*
  %arrayidx51.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %59 = load i8, i8* %arrayidx51.i.1, align 1
  %arrayidx53.i.1 = getelementptr inbounds i8, i8* %arraydecay7, i64 1
  %60 = load i8, i8* %arrayidx53.i.1, align 1
  %call54.i.1 = call zeroext i8 @mult(i8 zeroext %59, i8 zeroext %60) #3
  %arrayidx56.i.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  store i8 %call54.i.1, i8* %arrayidx56.i.1, align 1
  %arrayidx70.i.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %scevgep65.185 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %58, i64 0, i64 0, i64 0
  %61 = load i8, i8* %scevgep65.185, align 1
  %conv68.i.186 = zext i8 %61 to i32
  %62 = load i8, i8* %arrayidx70.i.1, align 1
  %conv71.i.187 = zext i8 %62 to i32
  %xor72.i.188 = xor i32 %conv71.i.187, %conv68.i.186
  %conv73.i.189 = trunc i32 %xor72.i.188 to i8
  store i8 %conv73.i.189, i8* %arrayidx70.i.1, align 1
  %scevgep65.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %58, i64 0, i64 0, i64 2
  %63 = load i8, i8* %scevgep65.2.1, align 1
  %conv68.i.2.1 = zext i8 %63 to i32
  %64 = load i8, i8* %arrayidx70.i.1, align 1
  %conv71.i.2.1 = zext i8 %64 to i32
  %xor72.i.2.1 = xor i32 %conv71.i.2.1, %conv68.i.2.1
  %conv73.i.2.1 = trunc i32 %xor72.i.2.1 to i8
  store i8 %conv73.i.2.1, i8* %arrayidx70.i.1, align 1
  %scevgep65.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %58, i64 0, i64 0, i64 3
  %65 = load i8, i8* %scevgep65.3.1, align 1
  %conv68.i.3.1 = zext i8 %65 to i32
  %66 = load i8, i8* %arrayidx70.i.1, align 1
  %conv71.i.3.1 = zext i8 %66 to i32
  %xor72.i.3.1 = xor i32 %conv71.i.3.1, %conv68.i.3.1
  %conv73.i.3.1 = trunc i32 %xor72.i.3.1 to i8
  store i8 %conv73.i.3.1, i8* %arrayidx70.i.1, align 1
  %scevgep64.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %58, i64 0, i64 1, i64 0
  %67 = bitcast i8* %scevgep64.1 to [4 x [4 x i8]]*
  %arrayidx51.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %68 = load i8, i8* %arrayidx51.i.2, align 1
  %arrayidx53.i.2 = getelementptr inbounds i8, i8* %arraydecay7, i64 2
  %69 = load i8, i8* %arrayidx53.i.2, align 1
  %call54.i.2 = call zeroext i8 @mult(i8 zeroext %68, i8 zeroext %69) #3
  %arrayidx56.i.2 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  store i8 %call54.i.2, i8* %arrayidx56.i.2, align 1
  %arrayidx70.i.2 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  %scevgep65.294 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %67, i64 0, i64 0, i64 0
  %70 = load i8, i8* %scevgep65.294, align 1
  %conv68.i.295 = zext i8 %70 to i32
  %71 = load i8, i8* %arrayidx70.i.2, align 1
  %conv71.i.296 = zext i8 %71 to i32
  %xor72.i.297 = xor i32 %conv71.i.296, %conv68.i.295
  %conv73.i.298 = trunc i32 %xor72.i.297 to i8
  store i8 %conv73.i.298, i8* %arrayidx70.i.2, align 1
  %scevgep65.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %67, i64 0, i64 0, i64 1
  %72 = load i8, i8* %scevgep65.1.2, align 1
  %conv68.i.1.2 = zext i8 %72 to i32
  %73 = load i8, i8* %arrayidx70.i.2, align 1
  %conv71.i.1.2 = zext i8 %73 to i32
  %xor72.i.1.2 = xor i32 %conv71.i.1.2, %conv68.i.1.2
  %conv73.i.1.2 = trunc i32 %xor72.i.1.2 to i8
  store i8 %conv73.i.1.2, i8* %arrayidx70.i.2, align 1
  %scevgep65.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %67, i64 0, i64 0, i64 3
  %74 = load i8, i8* %scevgep65.3.2, align 1
  %conv68.i.3.2 = zext i8 %74 to i32
  %75 = load i8, i8* %arrayidx70.i.2, align 1
  %conv71.i.3.2 = zext i8 %75 to i32
  %xor72.i.3.2 = xor i32 %conv71.i.3.2, %conv68.i.3.2
  %conv73.i.3.2 = trunc i32 %xor72.i.3.2 to i8
  store i8 %conv73.i.3.2, i8* %arrayidx70.i.2, align 1
  %scevgep64.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %67, i64 0, i64 1, i64 0
  %76 = bitcast i8* %scevgep64.2 to [4 x [4 x i8]]*
  %arrayidx51.i.3 = getelementptr inbounds i8, i8* %x, i64 3
  %77 = load i8, i8* %arrayidx51.i.3, align 1
  %arrayidx53.i.3 = getelementptr inbounds i8, i8* %arraydecay7, i64 3
  %78 = load i8, i8* %arrayidx53.i.3, align 1
  %call54.i.3 = call zeroext i8 @mult(i8 zeroext %77, i8 zeroext %78) #3
  %arrayidx56.i.3 = getelementptr inbounds i8, i8* %arraydecay10, i64 3
  store i8 %call54.i.3, i8* %arrayidx56.i.3, align 1
  %arrayidx70.i.3 = getelementptr inbounds i8, i8* %arraydecay10, i64 3
  %scevgep65.3103 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %76, i64 0, i64 0, i64 0
  %79 = load i8, i8* %scevgep65.3103, align 1
  %conv68.i.3104 = zext i8 %79 to i32
  %80 = load i8, i8* %arrayidx70.i.3, align 1
  %conv71.i.3105 = zext i8 %80 to i32
  %xor72.i.3106 = xor i32 %conv71.i.3105, %conv68.i.3104
  %conv73.i.3107 = trunc i32 %xor72.i.3106 to i8
  store i8 %conv73.i.3107, i8* %arrayidx70.i.3, align 1
  %scevgep65.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %76, i64 0, i64 0, i64 1
  %81 = load i8, i8* %scevgep65.1.3, align 1
  %conv68.i.1.3 = zext i8 %81 to i32
  %82 = load i8, i8* %arrayidx70.i.3, align 1
  %conv71.i.1.3 = zext i8 %82 to i32
  %xor72.i.1.3 = xor i32 %conv71.i.1.3, %conv68.i.1.3
  %conv73.i.1.3 = trunc i32 %xor72.i.1.3 to i8
  store i8 %conv73.i.1.3, i8* %arrayidx70.i.3, align 1
  %scevgep65.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %76, i64 0, i64 0, i64 2
  %83 = load i8, i8* %scevgep65.2.3, align 1
  %conv68.i.2.3 = zext i8 %83 to i32
  %84 = load i8, i8* %arrayidx70.i.3, align 1
  %conv71.i.2.3 = zext i8 %84 to i32
  %xor72.i.2.3 = xor i32 %conv71.i.2.3, %conv68.i.2.3
  %conv73.i.2.3 = trunc i32 %xor72.i.2.3 to i8
  store i8 %conv73.i.2.3, i8* %arrayidx70.i.3, align 1
  %call80.i = call zeroext i8 @mult(i8 zeroext %call.i22, i8 zeroext %call1.i) #3
  %conv81.i = zext i8 %call80.i to i32
  %scevgep71 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 0
  %scevgep72 = getelementptr i8, i8* %scevgep71, i64 4
  %85 = load i8, i8* %scevgep72, align 1
  %scevgep71.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 1
  %scevgep72.1 = getelementptr i8, i8* %scevgep71.1, i64 4
  %86 = load i8, i8* %scevgep72.1, align 1
  %conv.i.i113.i.1 = zext i8 %86 to i32
  %conv1.i.i114.i.1 = zext i8 %85 to i32
  %xor.i.i115.i.1 = xor i32 %conv1.i.i114.i.1, %conv.i.i113.i.1
  %conv2.i.i116.i.1 = trunc i32 %xor.i.i115.i.1 to i8
  %scevgep71.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 2
  %scevgep72.2 = getelementptr i8, i8* %scevgep71.2, i64 4
  %87 = load i8, i8* %scevgep72.2, align 1
  %conv.i.i113.i.2 = zext i8 %87 to i32
  %conv1.i.i114.i.2 = zext i8 %conv2.i.i116.i.1 to i32
  %xor.i.i115.i.2 = xor i32 %conv1.i.i114.i.2, %conv.i.i113.i.2
  %conv2.i.i116.i.2 = trunc i32 %xor.i.i115.i.2 to i8
  %scevgep71.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 3
  %scevgep72.3 = getelementptr i8, i8* %scevgep71.3, i64 4
  %88 = load i8, i8* %scevgep72.3, align 1
  %conv.i.i113.i.3 = zext i8 %88 to i32
  %conv1.i.i114.i.3 = zext i8 %conv2.i.i116.i.2 to i32
  %xor.i.i115.i.3 = xor i32 %conv1.i.i114.i.3, %conv.i.i113.i.3
  %conv2.i.i116.i.3 = trunc i32 %xor.i.i115.i.3 to i8
  %conv83.i = zext i8 %conv2.i.i116.i.3 to i32
  %cmp84.i = icmp eq i32 %conv81.i, %conv83.i
  call void @assert(i1 zeroext %cmp84.i) #3
  %scevgep35 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 1, i64 0
  %89 = bitcast i8* %scevgep35 to [4 x [4 x i8]]*
  %arrayidx6.1 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 1
  %arraydecay7.1 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx6.1, i64 0, i64 0
  %arrayidx9.1 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 2
  %arraydecay10.1 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx9.1, i64 0, i64 0
  %call.i22.1 = call zeroext i8 (...) @rand() #3
  %call1.i.1 = call zeroext i8 (...) @rand() #3
  %conv.i.1 = zext i8 %call.i22.1 to i32
  %90 = load i8, i8* %x, align 1
  %conv.i.i.i.1111 = zext i8 %90 to i32
  %conv1.i.i.i.1112 = zext i8 %conv2.i.i.i.3 to i32
  %xor.i.i.i.1113 = xor i32 %conv1.i.i.i.1112, %conv.i.i.i.1111
  %conv2.i.i.i.1114 = trunc i32 %xor.i.i.i.1113 to i8
  %scevgep32.1.1 = getelementptr i8, i8* %x, i64 1
  %91 = load i8, i8* %scevgep32.1.1, align 1
  %conv.i.i.i.1.1 = zext i8 %91 to i32
  %conv1.i.i.i.1.1 = zext i8 %conv2.i.i.i.1114 to i32
  %xor.i.i.i.1.1 = xor i32 %conv1.i.i.i.1.1, %conv.i.i.i.1.1
  %conv2.i.i.i.1.1 = trunc i32 %xor.i.i.i.1.1 to i8
  %scevgep32.2.1 = getelementptr i8, i8* %x, i64 2
  %92 = load i8, i8* %scevgep32.2.1, align 1
  %conv.i.i.i.2.1 = zext i8 %92 to i32
  %conv1.i.i.i.2.1 = zext i8 %conv2.i.i.i.1.1 to i32
  %xor.i.i.i.2.1 = xor i32 %conv1.i.i.i.2.1, %conv.i.i.i.2.1
  %conv2.i.i.i.2.1 = trunc i32 %xor.i.i.i.2.1 to i8
  %scevgep32.3.1 = getelementptr i8, i8* %x, i64 3
  %93 = load i8, i8* %scevgep32.3.1, align 1
  %conv.i.i.i.3.1 = zext i8 %93 to i32
  %conv1.i.i.i.3.1 = zext i8 %conv2.i.i.i.2.1 to i32
  %xor.i.i.i.3.1 = xor i32 %conv1.i.i.i.3.1, %conv.i.i.i.3.1
  %conv2.i.i.i.3.1 = trunc i32 %xor.i.i.i.3.1 to i8
  %conv3.i.1 = zext i8 %conv2.i.i.i.3.1 to i32
  %cmp.i23.1 = icmp eq i32 %conv.i.1, %conv3.i.1
  call void @assume(i1 zeroext %cmp.i23.1) #3
  %conv5.i.1 = zext i8 %call1.i.1 to i32
  %scevgep38.1115 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %89, i64 0, i64 0, i64 0
  %94 = load i8, i8* %scevgep38.1115, align 1
  %conv.i.i96.i.1117 = zext i8 %94 to i32
  %conv1.i.i97.i.1118 = zext i8 %conv2.i.i99.i.3 to i32
  %xor.i.i98.i.1119 = xor i32 %conv1.i.i97.i.1118, %conv.i.i96.i.1117
  %conv2.i.i99.i.1120 = trunc i32 %xor.i.i98.i.1119 to i8
  %scevgep38.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %89, i64 0, i64 0, i64 1
  %95 = load i8, i8* %scevgep38.1.1, align 1
  %conv.i.i96.i.1.1 = zext i8 %95 to i32
  %conv1.i.i97.i.1.1 = zext i8 %conv2.i.i99.i.1120 to i32
  %xor.i.i98.i.1.1 = xor i32 %conv1.i.i97.i.1.1, %conv.i.i96.i.1.1
  %conv2.i.i99.i.1.1 = trunc i32 %xor.i.i98.i.1.1 to i8
  %scevgep38.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %89, i64 0, i64 0, i64 2
  %96 = load i8, i8* %scevgep38.2.1, align 1
  %conv.i.i96.i.2.1 = zext i8 %96 to i32
  %conv1.i.i97.i.2.1 = zext i8 %conv2.i.i99.i.1.1 to i32
  %xor.i.i98.i.2.1 = xor i32 %conv1.i.i97.i.2.1, %conv.i.i96.i.2.1
  %conv2.i.i99.i.2.1 = trunc i32 %xor.i.i98.i.2.1 to i8
  %scevgep38.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %89, i64 0, i64 0, i64 3
  %97 = load i8, i8* %scevgep38.3.1, align 1
  %conv.i.i96.i.3.1 = zext i8 %97 to i32
  %conv1.i.i97.i.3.1 = zext i8 %conv2.i.i99.i.2.1 to i32
  %xor.i.i98.i.3.1 = xor i32 %conv1.i.i97.i.3.1, %conv.i.i96.i.3.1
  %conv2.i.i99.i.3.1 = trunc i32 %xor.i.i98.i.3.1 to i8
  %conv7.i.1 = zext i8 %conv2.i.i99.i.3.1 to i32
  %cmp8.i.1 = icmp eq i32 %conv5.i.1, %conv7.i.1
  call void @assume(i1 zeroext %cmp8.i.1) #3
  %call16.i.1123 = call zeroext i8 (...) @rand() #3
  %scevgep44.1124 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i.1123, i8* %scevgep44.1124, align 1
  %scevgep45.1125 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %98 = load i8, i8* %scevgep45.1125, align 1
  %conv23.i.1126 = zext i8 %98 to i32
  %99 = load i8, i8* %x, align 1
  %scevgep48.1127 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %89, i64 0, i64 0, i64 1
  %100 = load i8, i8* %scevgep48.1127, align 1
  %call28.i.1128 = call zeroext i8 @mult(i8 zeroext %99, i8 zeroext %100) #3
  %conv29.i.1129 = zext i8 %call28.i.1128 to i32
  %xor.i.1130 = xor i32 %conv23.i.1126, %conv29.i.1129
  %scevgep51.1131 = getelementptr i8, i8* %x, i64 1
  %101 = load i8, i8* %scevgep51.1131, align 1
  %102 = load i8, i8* %arraydecay7.1, align 1
  %call34.i.1132 = call zeroext i8 @mult(i8 zeroext %101, i8 zeroext %102) #3
  %conv35.i.1133 = zext i8 %call34.i.1132 to i32
  %xor36.i.1134 = xor i32 %xor.i.1130, %conv35.i.1133
  %conv37.i.1135 = trunc i32 %xor36.i.1134 to i8
  %scevgep52.1136 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %conv37.i.1135, i8* %scevgep52.1136, align 1
  %call16.i.1123.1 = call zeroext i8 (...) @rand() #3
  %scevgep44.1124.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  store i8 %call16.i.1123.1, i8* %scevgep44.1124.1, align 1
  %scevgep45.1125.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %103 = load i8, i8* %scevgep45.1125.1, align 1
  %conv23.i.1126.1 = zext i8 %103 to i32
  %104 = load i8, i8* %x, align 1
  %scevgep48.1127.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %89, i64 0, i64 0, i64 2
  %105 = load i8, i8* %scevgep48.1127.1, align 1
  %call28.i.1128.1 = call zeroext i8 @mult(i8 zeroext %104, i8 zeroext %105) #3
  %conv29.i.1129.1 = zext i8 %call28.i.1128.1 to i32
  %xor.i.1130.1 = xor i32 %conv23.i.1126.1, %conv29.i.1129.1
  %scevgep51.1131.1 = getelementptr i8, i8* %x, i64 2
  %106 = load i8, i8* %scevgep51.1131.1, align 1
  %107 = load i8, i8* %arraydecay7.1, align 1
  %call34.i.1132.1 = call zeroext i8 @mult(i8 zeroext %106, i8 zeroext %107) #3
  %conv35.i.1133.1 = zext i8 %call34.i.1132.1 to i32
  %xor36.i.1134.1 = xor i32 %xor.i.1130.1, %conv35.i.1133.1
  %conv37.i.1135.1 = trunc i32 %xor36.i.1134.1 to i8
  %scevgep52.1136.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 2, i64 0
  store i8 %conv37.i.1135.1, i8* %scevgep52.1136.1, align 1
  %call16.i.1123.2 = call zeroext i8 (...) @rand() #3
  %scevgep44.1124.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  store i8 %call16.i.1123.2, i8* %scevgep44.1124.2, align 1
  %scevgep45.1125.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %108 = load i8, i8* %scevgep45.1125.2, align 1
  %conv23.i.1126.2 = zext i8 %108 to i32
  %109 = load i8, i8* %x, align 1
  %scevgep48.1127.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %89, i64 0, i64 0, i64 3
  %110 = load i8, i8* %scevgep48.1127.2, align 1
  %call28.i.1128.2 = call zeroext i8 @mult(i8 zeroext %109, i8 zeroext %110) #3
  %conv29.i.1129.2 = zext i8 %call28.i.1128.2 to i32
  %xor.i.1130.2 = xor i32 %conv23.i.1126.2, %conv29.i.1129.2
  %scevgep51.1131.2 = getelementptr i8, i8* %x, i64 3
  %111 = load i8, i8* %scevgep51.1131.2, align 1
  %112 = load i8, i8* %arraydecay7.1, align 1
  %call34.i.1132.2 = call zeroext i8 @mult(i8 zeroext %111, i8 zeroext %112) #3
  %conv35.i.1133.2 = zext i8 %call34.i.1132.2 to i32
  %xor36.i.1134.2 = xor i32 %xor.i.1130.2, %conv35.i.1133.2
  %conv37.i.1135.2 = trunc i32 %xor36.i.1134.2 to i8
  %scevgep52.1136.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 3, i64 0
  store i8 %conv37.i.1135.2, i8* %scevgep52.1136.2, align 1
  %scevgep41.1142 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 1
  %113 = bitcast i8* %scevgep41.1142 to [4 x [4 x i8]]*
  %scevgep47.1143 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %89, i64 0, i64 0, i64 1
  %114 = bitcast i8* %scevgep47.1143 to [4 x [4 x i8]]*
  %scevgep50.1144 = getelementptr i8, i8* %x, i64 1
  %arrayidx25.i.1.1 = getelementptr inbounds i8, i8* %x, i64 1
  %arrayidx33.i.1.1 = getelementptr inbounds i8, i8* %arraydecay7.1, i64 1
  %call16.i.1.1 = call zeroext i8 (...) @rand() #3
  %scevgep44.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %113, i64 0, i64 0, i64 1
  store i8 %call16.i.1.1, i8* %scevgep44.1.1, align 1
  %scevgep45.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %113, i64 0, i64 0, i64 1
  %115 = load i8, i8* %scevgep45.1.1, align 1
  %conv23.i.1.1 = zext i8 %115 to i32
  %116 = load i8, i8* %arrayidx25.i.1.1, align 1
  %scevgep48.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %114, i64 0, i64 0, i64 1
  %117 = load i8, i8* %scevgep48.1.1, align 1
  %call28.i.1.1 = call zeroext i8 @mult(i8 zeroext %116, i8 zeroext %117) #3
  %conv29.i.1.1 = zext i8 %call28.i.1.1 to i32
  %xor.i.1.1 = xor i32 %conv23.i.1.1, %conv29.i.1.1
  %scevgep51.1.1 = getelementptr i8, i8* %scevgep50.1144, i64 1
  %118 = load i8, i8* %scevgep51.1.1, align 1
  %119 = load i8, i8* %arrayidx33.i.1.1, align 1
  %call34.i.1.1 = call zeroext i8 @mult(i8 zeroext %118, i8 zeroext %119) #3
  %conv35.i.1.1 = zext i8 %call34.i.1.1 to i32
  %xor36.i.1.1 = xor i32 %xor.i.1.1, %conv35.i.1.1
  %conv37.i.1.1 = trunc i32 %xor36.i.1.1 to i8
  %scevgep52.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %113, i64 0, i64 1, i64 0
  store i8 %conv37.i.1.1, i8* %scevgep52.1.1, align 1
  %call16.i.1.1.1 = call zeroext i8 (...) @rand() #3
  %scevgep44.1.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %113, i64 0, i64 0, i64 2
  store i8 %call16.i.1.1.1, i8* %scevgep44.1.1.1, align 1
  %scevgep45.1.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %113, i64 0, i64 0, i64 2
  %120 = load i8, i8* %scevgep45.1.1.1, align 1
  %conv23.i.1.1.1 = zext i8 %120 to i32
  %121 = load i8, i8* %arrayidx25.i.1.1, align 1
  %scevgep48.1.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %114, i64 0, i64 0, i64 2
  %122 = load i8, i8* %scevgep48.1.1.1, align 1
  %call28.i.1.1.1 = call zeroext i8 @mult(i8 zeroext %121, i8 zeroext %122) #3
  %conv29.i.1.1.1 = zext i8 %call28.i.1.1.1 to i32
  %xor.i.1.1.1 = xor i32 %conv23.i.1.1.1, %conv29.i.1.1.1
  %scevgep51.1.1.1 = getelementptr i8, i8* %scevgep50.1144, i64 2
  %123 = load i8, i8* %scevgep51.1.1.1, align 1
  %124 = load i8, i8* %arrayidx33.i.1.1, align 1
  %call34.i.1.1.1 = call zeroext i8 @mult(i8 zeroext %123, i8 zeroext %124) #3
  %conv35.i.1.1.1 = zext i8 %call34.i.1.1.1 to i32
  %xor36.i.1.1.1 = xor i32 %xor.i.1.1.1, %conv35.i.1.1.1
  %conv37.i.1.1.1 = trunc i32 %xor36.i.1.1.1 to i8
  %scevgep52.1.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %113, i64 0, i64 2, i64 0
  store i8 %conv37.i.1.1.1, i8* %scevgep52.1.1.1, align 1
  %scevgep41.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %113, i64 0, i64 1, i64 1
  %125 = bitcast i8* %scevgep41.1.1 to [4 x [4 x i8]]*
  %scevgep47.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %114, i64 0, i64 0, i64 1
  %126 = bitcast i8* %scevgep47.1.1 to [4 x [4 x i8]]*
  %scevgep50.1.1 = getelementptr i8, i8* %scevgep50.1144, i64 1
  %arrayidx25.i.2.1 = getelementptr inbounds i8, i8* %x, i64 2
  %arrayidx33.i.2.1 = getelementptr inbounds i8, i8* %arraydecay7.1, i64 2
  %call16.i.2.1 = call zeroext i8 (...) @rand() #3
  %scevgep44.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %125, i64 0, i64 0, i64 1
  store i8 %call16.i.2.1, i8* %scevgep44.2.1, align 1
  %scevgep45.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %125, i64 0, i64 0, i64 1
  %127 = load i8, i8* %scevgep45.2.1, align 1
  %conv23.i.2.1 = zext i8 %127 to i32
  %128 = load i8, i8* %arrayidx25.i.2.1, align 1
  %scevgep48.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %126, i64 0, i64 0, i64 1
  %129 = load i8, i8* %scevgep48.2.1, align 1
  %call28.i.2.1 = call zeroext i8 @mult(i8 zeroext %128, i8 zeroext %129) #3
  %conv29.i.2.1 = zext i8 %call28.i.2.1 to i32
  %xor.i.2.1 = xor i32 %conv23.i.2.1, %conv29.i.2.1
  %scevgep51.2.1 = getelementptr i8, i8* %scevgep50.1.1, i64 1
  %130 = load i8, i8* %scevgep51.2.1, align 1
  %131 = load i8, i8* %arrayidx33.i.2.1, align 1
  %call34.i.2.1 = call zeroext i8 @mult(i8 zeroext %130, i8 zeroext %131) #3
  %conv35.i.2.1 = zext i8 %call34.i.2.1 to i32
  %xor36.i.2.1 = xor i32 %xor.i.2.1, %conv35.i.2.1
  %conv37.i.2.1 = trunc i32 %xor36.i.2.1 to i8
  %scevgep52.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %125, i64 0, i64 1, i64 0
  store i8 %conv37.i.2.1, i8* %scevgep52.2.1, align 1
  %132 = load i8, i8* %x, align 1
  %133 = load i8, i8* %arraydecay7.1, align 1
  %call54.i.1146 = call zeroext i8 @mult(i8 zeroext %132, i8 zeroext %133) #3
  store i8 %call54.i.1146, i8* %arraydecay10.1, align 1
  %scevgep65.1.1155 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %134 = load i8, i8* %scevgep65.1.1155, align 1
  %conv68.i.1.1156 = zext i8 %134 to i32
  %135 = load i8, i8* %arraydecay10.1, align 1
  %conv71.i.1.1157 = zext i8 %135 to i32
  %xor72.i.1.1158 = xor i32 %conv71.i.1.1157, %conv68.i.1.1156
  %conv73.i.1.1159 = trunc i32 %xor72.i.1.1158 to i8
  store i8 %conv73.i.1.1159, i8* %arraydecay10.1, align 1
  %scevgep65.2.1162 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %136 = load i8, i8* %scevgep65.2.1162, align 1
  %conv68.i.2.1163 = zext i8 %136 to i32
  %137 = load i8, i8* %arraydecay10.1, align 1
  %conv71.i.2.1164 = zext i8 %137 to i32
  %xor72.i.2.1165 = xor i32 %conv71.i.2.1164, %conv68.i.2.1163
  %conv73.i.2.1166 = trunc i32 %xor72.i.2.1165 to i8
  store i8 %conv73.i.2.1166, i8* %arraydecay10.1, align 1
  %scevgep65.3.1169 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %138 = load i8, i8* %scevgep65.3.1169, align 1
  %conv68.i.3.1170 = zext i8 %138 to i32
  %139 = load i8, i8* %arraydecay10.1, align 1
  %conv71.i.3.1171 = zext i8 %139 to i32
  %xor72.i.3.1172 = xor i32 %conv71.i.3.1171, %conv68.i.3.1170
  %conv73.i.3.1173 = trunc i32 %xor72.i.3.1172 to i8
  store i8 %conv73.i.3.1173, i8* %arraydecay10.1, align 1
  %scevgep64.1175 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  %140 = bitcast i8* %scevgep64.1175 to [4 x [4 x i8]]*
  %arrayidx51.i.1.1 = getelementptr inbounds i8, i8* %x, i64 1
  %141 = load i8, i8* %arrayidx51.i.1.1, align 1
  %arrayidx53.i.1.1 = getelementptr inbounds i8, i8* %arraydecay7.1, i64 1
  %142 = load i8, i8* %arrayidx53.i.1.1, align 1
  %call54.i.1.1 = call zeroext i8 @mult(i8 zeroext %141, i8 zeroext %142) #3
  %arrayidx56.i.1.1 = getelementptr inbounds i8, i8* %arraydecay10.1, i64 1
  store i8 %call54.i.1.1, i8* %arrayidx56.i.1.1, align 1
  %arrayidx70.i.1.1 = getelementptr inbounds i8, i8* %arraydecay10.1, i64 1
  %scevgep65.185.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %140, i64 0, i64 0, i64 0
  %143 = load i8, i8* %scevgep65.185.1, align 1
  %conv68.i.186.1 = zext i8 %143 to i32
  %144 = load i8, i8* %arrayidx70.i.1.1, align 1
  %conv71.i.187.1 = zext i8 %144 to i32
  %xor72.i.188.1 = xor i32 %conv71.i.187.1, %conv68.i.186.1
  %conv73.i.189.1 = trunc i32 %xor72.i.188.1 to i8
  store i8 %conv73.i.189.1, i8* %arrayidx70.i.1.1, align 1
  %scevgep65.2.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %140, i64 0, i64 0, i64 2
  %145 = load i8, i8* %scevgep65.2.1.1, align 1
  %conv68.i.2.1.1 = zext i8 %145 to i32
  %146 = load i8, i8* %arrayidx70.i.1.1, align 1
  %conv71.i.2.1.1 = zext i8 %146 to i32
  %xor72.i.2.1.1 = xor i32 %conv71.i.2.1.1, %conv68.i.2.1.1
  %conv73.i.2.1.1 = trunc i32 %xor72.i.2.1.1 to i8
  store i8 %conv73.i.2.1.1, i8* %arrayidx70.i.1.1, align 1
  %scevgep65.3.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %140, i64 0, i64 0, i64 3
  %147 = load i8, i8* %scevgep65.3.1.1, align 1
  %conv68.i.3.1.1 = zext i8 %147 to i32
  %148 = load i8, i8* %arrayidx70.i.1.1, align 1
  %conv71.i.3.1.1 = zext i8 %148 to i32
  %xor72.i.3.1.1 = xor i32 %conv71.i.3.1.1, %conv68.i.3.1.1
  %conv73.i.3.1.1 = trunc i32 %xor72.i.3.1.1 to i8
  store i8 %conv73.i.3.1.1, i8* %arrayidx70.i.1.1, align 1
  %scevgep64.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %140, i64 0, i64 1, i64 0
  %149 = bitcast i8* %scevgep64.1.1 to [4 x [4 x i8]]*
  %arrayidx51.i.2.1 = getelementptr inbounds i8, i8* %x, i64 2
  %150 = load i8, i8* %arrayidx51.i.2.1, align 1
  %arrayidx53.i.2.1 = getelementptr inbounds i8, i8* %arraydecay7.1, i64 2
  %151 = load i8, i8* %arrayidx53.i.2.1, align 1
  %call54.i.2.1 = call zeroext i8 @mult(i8 zeroext %150, i8 zeroext %151) #3
  %arrayidx56.i.2.1 = getelementptr inbounds i8, i8* %arraydecay10.1, i64 2
  store i8 %call54.i.2.1, i8* %arrayidx56.i.2.1, align 1
  %arrayidx70.i.2.1 = getelementptr inbounds i8, i8* %arraydecay10.1, i64 2
  %scevgep65.294.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %149, i64 0, i64 0, i64 0
  %152 = load i8, i8* %scevgep65.294.1, align 1
  %conv68.i.295.1 = zext i8 %152 to i32
  %153 = load i8, i8* %arrayidx70.i.2.1, align 1
  %conv71.i.296.1 = zext i8 %153 to i32
  %xor72.i.297.1 = xor i32 %conv71.i.296.1, %conv68.i.295.1
  %conv73.i.298.1 = trunc i32 %xor72.i.297.1 to i8
  store i8 %conv73.i.298.1, i8* %arrayidx70.i.2.1, align 1
  %scevgep65.1.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %149, i64 0, i64 0, i64 1
  %154 = load i8, i8* %scevgep65.1.2.1, align 1
  %conv68.i.1.2.1 = zext i8 %154 to i32
  %155 = load i8, i8* %arrayidx70.i.2.1, align 1
  %conv71.i.1.2.1 = zext i8 %155 to i32
  %xor72.i.1.2.1 = xor i32 %conv71.i.1.2.1, %conv68.i.1.2.1
  %conv73.i.1.2.1 = trunc i32 %xor72.i.1.2.1 to i8
  store i8 %conv73.i.1.2.1, i8* %arrayidx70.i.2.1, align 1
  %scevgep65.3.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %149, i64 0, i64 0, i64 3
  %156 = load i8, i8* %scevgep65.3.2.1, align 1
  %conv68.i.3.2.1 = zext i8 %156 to i32
  %157 = load i8, i8* %arrayidx70.i.2.1, align 1
  %conv71.i.3.2.1 = zext i8 %157 to i32
  %xor72.i.3.2.1 = xor i32 %conv71.i.3.2.1, %conv68.i.3.2.1
  %conv73.i.3.2.1 = trunc i32 %xor72.i.3.2.1 to i8
  store i8 %conv73.i.3.2.1, i8* %arrayidx70.i.2.1, align 1
  %scevgep64.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %149, i64 0, i64 1, i64 0
  %158 = bitcast i8* %scevgep64.2.1 to [4 x [4 x i8]]*
  %arrayidx51.i.3.1 = getelementptr inbounds i8, i8* %x, i64 3
  %159 = load i8, i8* %arrayidx51.i.3.1, align 1
  %arrayidx53.i.3.1 = getelementptr inbounds i8, i8* %arraydecay7.1, i64 3
  %160 = load i8, i8* %arrayidx53.i.3.1, align 1
  %call54.i.3.1 = call zeroext i8 @mult(i8 zeroext %159, i8 zeroext %160) #3
  %arrayidx56.i.3.1 = getelementptr inbounds i8, i8* %arraydecay10.1, i64 3
  store i8 %call54.i.3.1, i8* %arrayidx56.i.3.1, align 1
  %arrayidx70.i.3.1 = getelementptr inbounds i8, i8* %arraydecay10.1, i64 3
  %scevgep65.3103.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %158, i64 0, i64 0, i64 0
  %161 = load i8, i8* %scevgep65.3103.1, align 1
  %conv68.i.3104.1 = zext i8 %161 to i32
  %162 = load i8, i8* %arrayidx70.i.3.1, align 1
  %conv71.i.3105.1 = zext i8 %162 to i32
  %xor72.i.3106.1 = xor i32 %conv71.i.3105.1, %conv68.i.3104.1
  %conv73.i.3107.1 = trunc i32 %xor72.i.3106.1 to i8
  store i8 %conv73.i.3107.1, i8* %arrayidx70.i.3.1, align 1
  %scevgep65.1.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %158, i64 0, i64 0, i64 1
  %163 = load i8, i8* %scevgep65.1.3.1, align 1
  %conv68.i.1.3.1 = zext i8 %163 to i32
  %164 = load i8, i8* %arrayidx70.i.3.1, align 1
  %conv71.i.1.3.1 = zext i8 %164 to i32
  %xor72.i.1.3.1 = xor i32 %conv71.i.1.3.1, %conv68.i.1.3.1
  %conv73.i.1.3.1 = trunc i32 %xor72.i.1.3.1 to i8
  store i8 %conv73.i.1.3.1, i8* %arrayidx70.i.3.1, align 1
  %scevgep65.2.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %158, i64 0, i64 0, i64 2
  %165 = load i8, i8* %scevgep65.2.3.1, align 1
  %conv68.i.2.3.1 = zext i8 %165 to i32
  %166 = load i8, i8* %arrayidx70.i.3.1, align 1
  %conv71.i.2.3.1 = zext i8 %166 to i32
  %xor72.i.2.3.1 = xor i32 %conv71.i.2.3.1, %conv68.i.2.3.1
  %conv73.i.2.3.1 = trunc i32 %xor72.i.2.3.1 to i8
  store i8 %conv73.i.2.3.1, i8* %arrayidx70.i.3.1, align 1
  %call80.i.1 = call zeroext i8 @mult(i8 zeroext %call.i22.1, i8 zeroext %call1.i.1) #3
  %conv81.i.1 = zext i8 %call80.i.1 to i32
  %scevgep71.1177 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %89, i64 0, i64 0, i64 0
  %scevgep72.1178 = getelementptr i8, i8* %scevgep71.1177, i64 4
  %167 = load i8, i8* %scevgep72.1178, align 1
  %conv.i.i113.i.1180 = zext i8 %167 to i32
  %conv1.i.i114.i.1181 = zext i8 %conv2.i.i116.i.3 to i32
  %xor.i.i115.i.1182 = xor i32 %conv1.i.i114.i.1181, %conv.i.i113.i.1180
  %conv2.i.i116.i.1183 = trunc i32 %xor.i.i115.i.1182 to i8
  %scevgep71.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %89, i64 0, i64 0, i64 1
  %scevgep72.1.1 = getelementptr i8, i8* %scevgep71.1.1, i64 4
  %168 = load i8, i8* %scevgep72.1.1, align 1
  %conv.i.i113.i.1.1 = zext i8 %168 to i32
  %conv1.i.i114.i.1.1 = zext i8 %conv2.i.i116.i.1183 to i32
  %xor.i.i115.i.1.1 = xor i32 %conv1.i.i114.i.1.1, %conv.i.i113.i.1.1
  %conv2.i.i116.i.1.1 = trunc i32 %xor.i.i115.i.1.1 to i8
  %scevgep71.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %89, i64 0, i64 0, i64 2
  %scevgep72.2.1 = getelementptr i8, i8* %scevgep71.2.1, i64 4
  %169 = load i8, i8* %scevgep72.2.1, align 1
  %conv.i.i113.i.2.1 = zext i8 %169 to i32
  %conv1.i.i114.i.2.1 = zext i8 %conv2.i.i116.i.1.1 to i32
  %xor.i.i115.i.2.1 = xor i32 %conv1.i.i114.i.2.1, %conv.i.i113.i.2.1
  %conv2.i.i116.i.2.1 = trunc i32 %xor.i.i115.i.2.1 to i8
  %scevgep71.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %89, i64 0, i64 0, i64 3
  %scevgep72.3.1 = getelementptr i8, i8* %scevgep71.3.1, i64 4
  %170 = load i8, i8* %scevgep72.3.1, align 1
  %conv.i.i113.i.3.1 = zext i8 %170 to i32
  %conv1.i.i114.i.3.1 = zext i8 %conv2.i.i116.i.2.1 to i32
  %xor.i.i115.i.3.1 = xor i32 %conv1.i.i114.i.3.1, %conv.i.i113.i.3.1
  %conv2.i.i116.i.3.1 = trunc i32 %xor.i.i115.i.3.1 to i8
  %conv83.i.1 = zext i8 %conv2.i.i116.i.3.1 to i32
  %cmp84.i.1 = icmp eq i32 %conv81.i.1, %conv83.i.1
  call void @assert(i1 zeroext %cmp84.i.1) #3
  %scevgep35.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %89, i64 0, i64 1, i64 0
  %171 = bitcast i8* %scevgep35.1 to [4 x [4 x i8]]*
  %arrayidx6.2 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 2
  %arraydecay7.2 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx6.2, i64 0, i64 0
  %arrayidx9.2 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 3
  %arraydecay10.2 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx9.2, i64 0, i64 0
  %call.i22.2 = call zeroext i8 (...) @rand() #3
  %call1.i.2 = call zeroext i8 (...) @rand() #3
  %conv.i.2 = zext i8 %call.i22.2 to i32
  %172 = load i8, i8* %x, align 1
  %conv.i.i.i.2185 = zext i8 %172 to i32
  %conv1.i.i.i.2186 = zext i8 %conv2.i.i.i.3.1 to i32
  %xor.i.i.i.2187 = xor i32 %conv1.i.i.i.2186, %conv.i.i.i.2185
  %conv2.i.i.i.2188 = trunc i32 %xor.i.i.i.2187 to i8
  %scevgep32.1.2 = getelementptr i8, i8* %x, i64 1
  %173 = load i8, i8* %scevgep32.1.2, align 1
  %conv.i.i.i.1.2 = zext i8 %173 to i32
  %conv1.i.i.i.1.2 = zext i8 %conv2.i.i.i.2188 to i32
  %xor.i.i.i.1.2 = xor i32 %conv1.i.i.i.1.2, %conv.i.i.i.1.2
  %conv2.i.i.i.1.2 = trunc i32 %xor.i.i.i.1.2 to i8
  %scevgep32.2.2 = getelementptr i8, i8* %x, i64 2
  %174 = load i8, i8* %scevgep32.2.2, align 1
  %conv.i.i.i.2.2 = zext i8 %174 to i32
  %conv1.i.i.i.2.2 = zext i8 %conv2.i.i.i.1.2 to i32
  %xor.i.i.i.2.2 = xor i32 %conv1.i.i.i.2.2, %conv.i.i.i.2.2
  %conv2.i.i.i.2.2 = trunc i32 %xor.i.i.i.2.2 to i8
  %scevgep32.3.2 = getelementptr i8, i8* %x, i64 3
  %175 = load i8, i8* %scevgep32.3.2, align 1
  %conv.i.i.i.3.2 = zext i8 %175 to i32
  %conv1.i.i.i.3.2 = zext i8 %conv2.i.i.i.2.2 to i32
  %xor.i.i.i.3.2 = xor i32 %conv1.i.i.i.3.2, %conv.i.i.i.3.2
  %conv2.i.i.i.3.2 = trunc i32 %xor.i.i.i.3.2 to i8
  %conv3.i.2 = zext i8 %conv2.i.i.i.3.2 to i32
  %cmp.i23.2 = icmp eq i32 %conv.i.2, %conv3.i.2
  call void @assume(i1 zeroext %cmp.i23.2) #3
  %conv5.i.2 = zext i8 %call1.i.2 to i32
  %scevgep38.2189 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %171, i64 0, i64 0, i64 0
  %176 = load i8, i8* %scevgep38.2189, align 1
  %conv.i.i96.i.2191 = zext i8 %176 to i32
  %conv1.i.i97.i.2192 = zext i8 %conv2.i.i99.i.3.1 to i32
  %xor.i.i98.i.2193 = xor i32 %conv1.i.i97.i.2192, %conv.i.i96.i.2191
  %conv2.i.i99.i.2194 = trunc i32 %xor.i.i98.i.2193 to i8
  %scevgep38.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %171, i64 0, i64 0, i64 1
  %177 = load i8, i8* %scevgep38.1.2, align 1
  %conv.i.i96.i.1.2 = zext i8 %177 to i32
  %conv1.i.i97.i.1.2 = zext i8 %conv2.i.i99.i.2194 to i32
  %xor.i.i98.i.1.2 = xor i32 %conv1.i.i97.i.1.2, %conv.i.i96.i.1.2
  %conv2.i.i99.i.1.2 = trunc i32 %xor.i.i98.i.1.2 to i8
  %scevgep38.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %171, i64 0, i64 0, i64 2
  %178 = load i8, i8* %scevgep38.2.2, align 1
  %conv.i.i96.i.2.2 = zext i8 %178 to i32
  %conv1.i.i97.i.2.2 = zext i8 %conv2.i.i99.i.1.2 to i32
  %xor.i.i98.i.2.2 = xor i32 %conv1.i.i97.i.2.2, %conv.i.i96.i.2.2
  %conv2.i.i99.i.2.2 = trunc i32 %xor.i.i98.i.2.2 to i8
  %scevgep38.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %171, i64 0, i64 0, i64 3
  %179 = load i8, i8* %scevgep38.3.2, align 1
  %conv.i.i96.i.3.2 = zext i8 %179 to i32
  %conv1.i.i97.i.3.2 = zext i8 %conv2.i.i99.i.2.2 to i32
  %xor.i.i98.i.3.2 = xor i32 %conv1.i.i97.i.3.2, %conv.i.i96.i.3.2
  %conv2.i.i99.i.3.2 = trunc i32 %xor.i.i98.i.3.2 to i8
  %conv7.i.2 = zext i8 %conv2.i.i99.i.3.2 to i32
  %cmp8.i.2 = icmp eq i32 %conv5.i.2, %conv7.i.2
  call void @assume(i1 zeroext %cmp8.i.2) #3
  %call16.i.2197 = call zeroext i8 (...) @rand() #3
  %scevgep44.2198 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i.2197, i8* %scevgep44.2198, align 1
  %scevgep45.2199 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %180 = load i8, i8* %scevgep45.2199, align 1
  %conv23.i.2200 = zext i8 %180 to i32
  %181 = load i8, i8* %x, align 1
  %scevgep48.2201 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %171, i64 0, i64 0, i64 1
  %182 = load i8, i8* %scevgep48.2201, align 1
  %call28.i.2202 = call zeroext i8 @mult(i8 zeroext %181, i8 zeroext %182) #3
  %conv29.i.2203 = zext i8 %call28.i.2202 to i32
  %xor.i.2204 = xor i32 %conv23.i.2200, %conv29.i.2203
  %scevgep51.2205 = getelementptr i8, i8* %x, i64 1
  %183 = load i8, i8* %scevgep51.2205, align 1
  %184 = load i8, i8* %arraydecay7.2, align 1
  %call34.i.2206 = call zeroext i8 @mult(i8 zeroext %183, i8 zeroext %184) #3
  %conv35.i.2207 = zext i8 %call34.i.2206 to i32
  %xor36.i.2208 = xor i32 %xor.i.2204, %conv35.i.2207
  %conv37.i.2209 = trunc i32 %xor36.i.2208 to i8
  %scevgep52.2210 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %conv37.i.2209, i8* %scevgep52.2210, align 1
  %call16.i.2197.1 = call zeroext i8 (...) @rand() #3
  %scevgep44.2198.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  store i8 %call16.i.2197.1, i8* %scevgep44.2198.1, align 1
  %scevgep45.2199.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %185 = load i8, i8* %scevgep45.2199.1, align 1
  %conv23.i.2200.1 = zext i8 %185 to i32
  %186 = load i8, i8* %x, align 1
  %scevgep48.2201.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %171, i64 0, i64 0, i64 2
  %187 = load i8, i8* %scevgep48.2201.1, align 1
  %call28.i.2202.1 = call zeroext i8 @mult(i8 zeroext %186, i8 zeroext %187) #3
  %conv29.i.2203.1 = zext i8 %call28.i.2202.1 to i32
  %xor.i.2204.1 = xor i32 %conv23.i.2200.1, %conv29.i.2203.1
  %scevgep51.2205.1 = getelementptr i8, i8* %x, i64 2
  %188 = load i8, i8* %scevgep51.2205.1, align 1
  %189 = load i8, i8* %arraydecay7.2, align 1
  %call34.i.2206.1 = call zeroext i8 @mult(i8 zeroext %188, i8 zeroext %189) #3
  %conv35.i.2207.1 = zext i8 %call34.i.2206.1 to i32
  %xor36.i.2208.1 = xor i32 %xor.i.2204.1, %conv35.i.2207.1
  %conv37.i.2209.1 = trunc i32 %xor36.i.2208.1 to i8
  %scevgep52.2210.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 2, i64 0
  store i8 %conv37.i.2209.1, i8* %scevgep52.2210.1, align 1
  %call16.i.2197.2 = call zeroext i8 (...) @rand() #3
  %scevgep44.2198.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  store i8 %call16.i.2197.2, i8* %scevgep44.2198.2, align 1
  %scevgep45.2199.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %190 = load i8, i8* %scevgep45.2199.2, align 1
  %conv23.i.2200.2 = zext i8 %190 to i32
  %191 = load i8, i8* %x, align 1
  %scevgep48.2201.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %171, i64 0, i64 0, i64 3
  %192 = load i8, i8* %scevgep48.2201.2, align 1
  %call28.i.2202.2 = call zeroext i8 @mult(i8 zeroext %191, i8 zeroext %192) #3
  %conv29.i.2203.2 = zext i8 %call28.i.2202.2 to i32
  %xor.i.2204.2 = xor i32 %conv23.i.2200.2, %conv29.i.2203.2
  %scevgep51.2205.2 = getelementptr i8, i8* %x, i64 3
  %193 = load i8, i8* %scevgep51.2205.2, align 1
  %194 = load i8, i8* %arraydecay7.2, align 1
  %call34.i.2206.2 = call zeroext i8 @mult(i8 zeroext %193, i8 zeroext %194) #3
  %conv35.i.2207.2 = zext i8 %call34.i.2206.2 to i32
  %xor36.i.2208.2 = xor i32 %xor.i.2204.2, %conv35.i.2207.2
  %conv37.i.2209.2 = trunc i32 %xor36.i.2208.2 to i8
  %scevgep52.2210.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 3, i64 0
  store i8 %conv37.i.2209.2, i8* %scevgep52.2210.2, align 1
  %scevgep41.2216 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 1
  %195 = bitcast i8* %scevgep41.2216 to [4 x [4 x i8]]*
  %scevgep47.2217 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %171, i64 0, i64 0, i64 1
  %196 = bitcast i8* %scevgep47.2217 to [4 x [4 x i8]]*
  %scevgep50.2218 = getelementptr i8, i8* %x, i64 1
  %arrayidx25.i.1.2 = getelementptr inbounds i8, i8* %x, i64 1
  %arrayidx33.i.1.2 = getelementptr inbounds i8, i8* %arraydecay7.2, i64 1
  %call16.i.1.2 = call zeroext i8 (...) @rand() #3
  %scevgep44.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %195, i64 0, i64 0, i64 1
  store i8 %call16.i.1.2, i8* %scevgep44.1.2, align 1
  %scevgep45.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %195, i64 0, i64 0, i64 1
  %197 = load i8, i8* %scevgep45.1.2, align 1
  %conv23.i.1.2 = zext i8 %197 to i32
  %198 = load i8, i8* %arrayidx25.i.1.2, align 1
  %scevgep48.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %196, i64 0, i64 0, i64 1
  %199 = load i8, i8* %scevgep48.1.2, align 1
  %call28.i.1.2 = call zeroext i8 @mult(i8 zeroext %198, i8 zeroext %199) #3
  %conv29.i.1.2 = zext i8 %call28.i.1.2 to i32
  %xor.i.1.2 = xor i32 %conv23.i.1.2, %conv29.i.1.2
  %scevgep51.1.2 = getelementptr i8, i8* %scevgep50.2218, i64 1
  %200 = load i8, i8* %scevgep51.1.2, align 1
  %201 = load i8, i8* %arrayidx33.i.1.2, align 1
  %call34.i.1.2 = call zeroext i8 @mult(i8 zeroext %200, i8 zeroext %201) #3
  %conv35.i.1.2 = zext i8 %call34.i.1.2 to i32
  %xor36.i.1.2 = xor i32 %xor.i.1.2, %conv35.i.1.2
  %conv37.i.1.2 = trunc i32 %xor36.i.1.2 to i8
  %scevgep52.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %195, i64 0, i64 1, i64 0
  store i8 %conv37.i.1.2, i8* %scevgep52.1.2, align 1
  %call16.i.1.2.1 = call zeroext i8 (...) @rand() #3
  %scevgep44.1.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %195, i64 0, i64 0, i64 2
  store i8 %call16.i.1.2.1, i8* %scevgep44.1.2.1, align 1
  %scevgep45.1.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %195, i64 0, i64 0, i64 2
  %202 = load i8, i8* %scevgep45.1.2.1, align 1
  %conv23.i.1.2.1 = zext i8 %202 to i32
  %203 = load i8, i8* %arrayidx25.i.1.2, align 1
  %scevgep48.1.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %196, i64 0, i64 0, i64 2
  %204 = load i8, i8* %scevgep48.1.2.1, align 1
  %call28.i.1.2.1 = call zeroext i8 @mult(i8 zeroext %203, i8 zeroext %204) #3
  %conv29.i.1.2.1 = zext i8 %call28.i.1.2.1 to i32
  %xor.i.1.2.1 = xor i32 %conv23.i.1.2.1, %conv29.i.1.2.1
  %scevgep51.1.2.1 = getelementptr i8, i8* %scevgep50.2218, i64 2
  %205 = load i8, i8* %scevgep51.1.2.1, align 1
  %206 = load i8, i8* %arrayidx33.i.1.2, align 1
  %call34.i.1.2.1 = call zeroext i8 @mult(i8 zeroext %205, i8 zeroext %206) #3
  %conv35.i.1.2.1 = zext i8 %call34.i.1.2.1 to i32
  %xor36.i.1.2.1 = xor i32 %xor.i.1.2.1, %conv35.i.1.2.1
  %conv37.i.1.2.1 = trunc i32 %xor36.i.1.2.1 to i8
  %scevgep52.1.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %195, i64 0, i64 2, i64 0
  store i8 %conv37.i.1.2.1, i8* %scevgep52.1.2.1, align 1
  %scevgep41.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %195, i64 0, i64 1, i64 1
  %207 = bitcast i8* %scevgep41.1.2 to [4 x [4 x i8]]*
  %scevgep47.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %196, i64 0, i64 0, i64 1
  %208 = bitcast i8* %scevgep47.1.2 to [4 x [4 x i8]]*
  %scevgep50.1.2 = getelementptr i8, i8* %scevgep50.2218, i64 1
  %arrayidx25.i.2.2 = getelementptr inbounds i8, i8* %x, i64 2
  %arrayidx33.i.2.2 = getelementptr inbounds i8, i8* %arraydecay7.2, i64 2
  %call16.i.2.2 = call zeroext i8 (...) @rand() #3
  %scevgep44.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %207, i64 0, i64 0, i64 1
  store i8 %call16.i.2.2, i8* %scevgep44.2.2, align 1
  %scevgep45.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %207, i64 0, i64 0, i64 1
  %209 = load i8, i8* %scevgep45.2.2, align 1
  %conv23.i.2.2 = zext i8 %209 to i32
  %210 = load i8, i8* %arrayidx25.i.2.2, align 1
  %scevgep48.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %208, i64 0, i64 0, i64 1
  %211 = load i8, i8* %scevgep48.2.2, align 1
  %call28.i.2.2 = call zeroext i8 @mult(i8 zeroext %210, i8 zeroext %211) #3
  %conv29.i.2.2 = zext i8 %call28.i.2.2 to i32
  %xor.i.2.2 = xor i32 %conv23.i.2.2, %conv29.i.2.2
  %scevgep51.2.2 = getelementptr i8, i8* %scevgep50.1.2, i64 1
  %212 = load i8, i8* %scevgep51.2.2, align 1
  %213 = load i8, i8* %arrayidx33.i.2.2, align 1
  %call34.i.2.2 = call zeroext i8 @mult(i8 zeroext %212, i8 zeroext %213) #3
  %conv35.i.2.2 = zext i8 %call34.i.2.2 to i32
  %xor36.i.2.2 = xor i32 %xor.i.2.2, %conv35.i.2.2
  %conv37.i.2.2 = trunc i32 %xor36.i.2.2 to i8
  %scevgep52.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %207, i64 0, i64 1, i64 0
  store i8 %conv37.i.2.2, i8* %scevgep52.2.2, align 1
  %214 = load i8, i8* %x, align 1
  %215 = load i8, i8* %arraydecay7.2, align 1
  %call54.i.2220 = call zeroext i8 @mult(i8 zeroext %214, i8 zeroext %215) #3
  store i8 %call54.i.2220, i8* %arraydecay10.2, align 1
  %scevgep65.1.2229 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %216 = load i8, i8* %scevgep65.1.2229, align 1
  %conv68.i.1.2230 = zext i8 %216 to i32
  %217 = load i8, i8* %arraydecay10.2, align 1
  %conv71.i.1.2231 = zext i8 %217 to i32
  %xor72.i.1.2232 = xor i32 %conv71.i.1.2231, %conv68.i.1.2230
  %conv73.i.1.2233 = trunc i32 %xor72.i.1.2232 to i8
  store i8 %conv73.i.1.2233, i8* %arraydecay10.2, align 1
  %scevgep65.2.2236 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %218 = load i8, i8* %scevgep65.2.2236, align 1
  %conv68.i.2.2237 = zext i8 %218 to i32
  %219 = load i8, i8* %arraydecay10.2, align 1
  %conv71.i.2.2238 = zext i8 %219 to i32
  %xor72.i.2.2239 = xor i32 %conv71.i.2.2238, %conv68.i.2.2237
  %conv73.i.2.2240 = trunc i32 %xor72.i.2.2239 to i8
  store i8 %conv73.i.2.2240, i8* %arraydecay10.2, align 1
  %scevgep65.3.2243 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %220 = load i8, i8* %scevgep65.3.2243, align 1
  %conv68.i.3.2244 = zext i8 %220 to i32
  %221 = load i8, i8* %arraydecay10.2, align 1
  %conv71.i.3.2245 = zext i8 %221 to i32
  %xor72.i.3.2246 = xor i32 %conv71.i.3.2245, %conv68.i.3.2244
  %conv73.i.3.2247 = trunc i32 %xor72.i.3.2246 to i8
  store i8 %conv73.i.3.2247, i8* %arraydecay10.2, align 1
  %scevgep64.2249 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  %222 = bitcast i8* %scevgep64.2249 to [4 x [4 x i8]]*
  %arrayidx51.i.1.2 = getelementptr inbounds i8, i8* %x, i64 1
  %223 = load i8, i8* %arrayidx51.i.1.2, align 1
  %arrayidx53.i.1.2 = getelementptr inbounds i8, i8* %arraydecay7.2, i64 1
  %224 = load i8, i8* %arrayidx53.i.1.2, align 1
  %call54.i.1.2 = call zeroext i8 @mult(i8 zeroext %223, i8 zeroext %224) #3
  %arrayidx56.i.1.2 = getelementptr inbounds i8, i8* %arraydecay10.2, i64 1
  store i8 %call54.i.1.2, i8* %arrayidx56.i.1.2, align 1
  %arrayidx70.i.1.2 = getelementptr inbounds i8, i8* %arraydecay10.2, i64 1
  %scevgep65.185.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %222, i64 0, i64 0, i64 0
  %225 = load i8, i8* %scevgep65.185.2, align 1
  %conv68.i.186.2 = zext i8 %225 to i32
  %226 = load i8, i8* %arrayidx70.i.1.2, align 1
  %conv71.i.187.2 = zext i8 %226 to i32
  %xor72.i.188.2 = xor i32 %conv71.i.187.2, %conv68.i.186.2
  %conv73.i.189.2 = trunc i32 %xor72.i.188.2 to i8
  store i8 %conv73.i.189.2, i8* %arrayidx70.i.1.2, align 1
  %scevgep65.2.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %222, i64 0, i64 0, i64 2
  %227 = load i8, i8* %scevgep65.2.1.2, align 1
  %conv68.i.2.1.2 = zext i8 %227 to i32
  %228 = load i8, i8* %arrayidx70.i.1.2, align 1
  %conv71.i.2.1.2 = zext i8 %228 to i32
  %xor72.i.2.1.2 = xor i32 %conv71.i.2.1.2, %conv68.i.2.1.2
  %conv73.i.2.1.2 = trunc i32 %xor72.i.2.1.2 to i8
  store i8 %conv73.i.2.1.2, i8* %arrayidx70.i.1.2, align 1
  %scevgep65.3.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %222, i64 0, i64 0, i64 3
  %229 = load i8, i8* %scevgep65.3.1.2, align 1
  %conv68.i.3.1.2 = zext i8 %229 to i32
  %230 = load i8, i8* %arrayidx70.i.1.2, align 1
  %conv71.i.3.1.2 = zext i8 %230 to i32
  %xor72.i.3.1.2 = xor i32 %conv71.i.3.1.2, %conv68.i.3.1.2
  %conv73.i.3.1.2 = trunc i32 %xor72.i.3.1.2 to i8
  store i8 %conv73.i.3.1.2, i8* %arrayidx70.i.1.2, align 1
  %scevgep64.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %222, i64 0, i64 1, i64 0
  %231 = bitcast i8* %scevgep64.1.2 to [4 x [4 x i8]]*
  %arrayidx51.i.2.2 = getelementptr inbounds i8, i8* %x, i64 2
  %232 = load i8, i8* %arrayidx51.i.2.2, align 1
  %arrayidx53.i.2.2 = getelementptr inbounds i8, i8* %arraydecay7.2, i64 2
  %233 = load i8, i8* %arrayidx53.i.2.2, align 1
  %call54.i.2.2 = call zeroext i8 @mult(i8 zeroext %232, i8 zeroext %233) #3
  %arrayidx56.i.2.2 = getelementptr inbounds i8, i8* %arraydecay10.2, i64 2
  store i8 %call54.i.2.2, i8* %arrayidx56.i.2.2, align 1
  %arrayidx70.i.2.2 = getelementptr inbounds i8, i8* %arraydecay10.2, i64 2
  %scevgep65.294.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %231, i64 0, i64 0, i64 0
  %234 = load i8, i8* %scevgep65.294.2, align 1
  %conv68.i.295.2 = zext i8 %234 to i32
  %235 = load i8, i8* %arrayidx70.i.2.2, align 1
  %conv71.i.296.2 = zext i8 %235 to i32
  %xor72.i.297.2 = xor i32 %conv71.i.296.2, %conv68.i.295.2
  %conv73.i.298.2 = trunc i32 %xor72.i.297.2 to i8
  store i8 %conv73.i.298.2, i8* %arrayidx70.i.2.2, align 1
  %scevgep65.1.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %231, i64 0, i64 0, i64 1
  %236 = load i8, i8* %scevgep65.1.2.2, align 1
  %conv68.i.1.2.2 = zext i8 %236 to i32
  %237 = load i8, i8* %arrayidx70.i.2.2, align 1
  %conv71.i.1.2.2 = zext i8 %237 to i32
  %xor72.i.1.2.2 = xor i32 %conv71.i.1.2.2, %conv68.i.1.2.2
  %conv73.i.1.2.2 = trunc i32 %xor72.i.1.2.2 to i8
  store i8 %conv73.i.1.2.2, i8* %arrayidx70.i.2.2, align 1
  %scevgep65.3.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %231, i64 0, i64 0, i64 3
  %238 = load i8, i8* %scevgep65.3.2.2, align 1
  %conv68.i.3.2.2 = zext i8 %238 to i32
  %239 = load i8, i8* %arrayidx70.i.2.2, align 1
  %conv71.i.3.2.2 = zext i8 %239 to i32
  %xor72.i.3.2.2 = xor i32 %conv71.i.3.2.2, %conv68.i.3.2.2
  %conv73.i.3.2.2 = trunc i32 %xor72.i.3.2.2 to i8
  store i8 %conv73.i.3.2.2, i8* %arrayidx70.i.2.2, align 1
  %scevgep64.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %231, i64 0, i64 1, i64 0
  %240 = bitcast i8* %scevgep64.2.2 to [4 x [4 x i8]]*
  %arrayidx51.i.3.2 = getelementptr inbounds i8, i8* %x, i64 3
  %241 = load i8, i8* %arrayidx51.i.3.2, align 1
  %arrayidx53.i.3.2 = getelementptr inbounds i8, i8* %arraydecay7.2, i64 3
  %242 = load i8, i8* %arrayidx53.i.3.2, align 1
  %call54.i.3.2 = call zeroext i8 @mult(i8 zeroext %241, i8 zeroext %242) #3
  %arrayidx56.i.3.2 = getelementptr inbounds i8, i8* %arraydecay10.2, i64 3
  store i8 %call54.i.3.2, i8* %arrayidx56.i.3.2, align 1
  %arrayidx70.i.3.2 = getelementptr inbounds i8, i8* %arraydecay10.2, i64 3
  %scevgep65.3103.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %240, i64 0, i64 0, i64 0
  %243 = load i8, i8* %scevgep65.3103.2, align 1
  %conv68.i.3104.2 = zext i8 %243 to i32
  %244 = load i8, i8* %arrayidx70.i.3.2, align 1
  %conv71.i.3105.2 = zext i8 %244 to i32
  %xor72.i.3106.2 = xor i32 %conv71.i.3105.2, %conv68.i.3104.2
  %conv73.i.3107.2 = trunc i32 %xor72.i.3106.2 to i8
  store i8 %conv73.i.3107.2, i8* %arrayidx70.i.3.2, align 1
  %scevgep65.1.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %240, i64 0, i64 0, i64 1
  %245 = load i8, i8* %scevgep65.1.3.2, align 1
  %conv68.i.1.3.2 = zext i8 %245 to i32
  %246 = load i8, i8* %arrayidx70.i.3.2, align 1
  %conv71.i.1.3.2 = zext i8 %246 to i32
  %xor72.i.1.3.2 = xor i32 %conv71.i.1.3.2, %conv68.i.1.3.2
  %conv73.i.1.3.2 = trunc i32 %xor72.i.1.3.2 to i8
  store i8 %conv73.i.1.3.2, i8* %arrayidx70.i.3.2, align 1
  %scevgep65.2.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %240, i64 0, i64 0, i64 2
  %247 = load i8, i8* %scevgep65.2.3.2, align 1
  %conv68.i.2.3.2 = zext i8 %247 to i32
  %248 = load i8, i8* %arrayidx70.i.3.2, align 1
  %conv71.i.2.3.2 = zext i8 %248 to i32
  %xor72.i.2.3.2 = xor i32 %conv71.i.2.3.2, %conv68.i.2.3.2
  %conv73.i.2.3.2 = trunc i32 %xor72.i.2.3.2 to i8
  store i8 %conv73.i.2.3.2, i8* %arrayidx70.i.3.2, align 1
  %call80.i.2 = call zeroext i8 @mult(i8 zeroext %call.i22.2, i8 zeroext %call1.i.2) #3
  %conv81.i.2 = zext i8 %call80.i.2 to i32
  %scevgep71.2251 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %171, i64 0, i64 0, i64 0
  %scevgep72.2252 = getelementptr i8, i8* %scevgep71.2251, i64 4
  %249 = load i8, i8* %scevgep72.2252, align 1
  %conv.i.i113.i.2254 = zext i8 %249 to i32
  %conv1.i.i114.i.2255 = zext i8 %conv2.i.i116.i.3.1 to i32
  %xor.i.i115.i.2256 = xor i32 %conv1.i.i114.i.2255, %conv.i.i113.i.2254
  %conv2.i.i116.i.2257 = trunc i32 %xor.i.i115.i.2256 to i8
  %scevgep71.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %171, i64 0, i64 0, i64 1
  %scevgep72.1.2 = getelementptr i8, i8* %scevgep71.1.2, i64 4
  %250 = load i8, i8* %scevgep72.1.2, align 1
  %conv.i.i113.i.1.2 = zext i8 %250 to i32
  %conv1.i.i114.i.1.2 = zext i8 %conv2.i.i116.i.2257 to i32
  %xor.i.i115.i.1.2 = xor i32 %conv1.i.i114.i.1.2, %conv.i.i113.i.1.2
  %conv2.i.i116.i.1.2 = trunc i32 %xor.i.i115.i.1.2 to i8
  %scevgep71.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %171, i64 0, i64 0, i64 2
  %scevgep72.2.2 = getelementptr i8, i8* %scevgep71.2.2, i64 4
  %251 = load i8, i8* %scevgep72.2.2, align 1
  %conv.i.i113.i.2.2 = zext i8 %251 to i32
  %conv1.i.i114.i.2.2 = zext i8 %conv2.i.i116.i.1.2 to i32
  %xor.i.i115.i.2.2 = xor i32 %conv1.i.i114.i.2.2, %conv.i.i113.i.2.2
  %conv2.i.i116.i.2.2 = trunc i32 %xor.i.i115.i.2.2 to i8
  %scevgep71.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %171, i64 0, i64 0, i64 3
  %scevgep72.3.2 = getelementptr i8, i8* %scevgep71.3.2, i64 4
  %252 = load i8, i8* %scevgep72.3.2, align 1
  %conv.i.i113.i.3.2 = zext i8 %252 to i32
  %conv1.i.i114.i.3.2 = zext i8 %conv2.i.i116.i.2.2 to i32
  %xor.i.i115.i.3.2 = xor i32 %conv1.i.i114.i.3.2, %conv.i.i113.i.3.2
  %conv2.i.i116.i.3.2 = trunc i32 %xor.i.i115.i.3.2 to i8
  %conv83.i.2 = zext i8 %conv2.i.i116.i.3.2 to i32
  %cmp84.i.2 = icmp eq i32 %conv81.i.2, %conv83.i.2
  call void @assert(i1 zeroext %cmp84.i.2) #3
  %scevgep24 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 3, i64 0
  %253 = load i8, i8* %scevgep24, align 1
  store i8 %253, i8* %y, align 1
  %scevgep27.1 = getelementptr i8, i8* %scevgep24, i64 1
  %254 = load i8, i8* %scevgep27.1, align 1
  %scevgep28.1 = getelementptr i8, i8* %y, i64 1
  store i8 %254, i8* %scevgep28.1, align 1
  %scevgep27.2 = getelementptr i8, i8* %scevgep24, i64 2
  %255 = load i8, i8* %scevgep27.2, align 1
  %scevgep28.2 = getelementptr i8, i8* %y, i64 2
  store i8 %255, i8* %scevgep28.2, align 1
  %scevgep27.3 = getelementptr i8, i8* %scevgep24, i64 3
  %256 = load i8, i8* %scevgep27.3, align 1
  %scevgep28.3 = getelementptr i8, i8* %y, i64 3
  store i8 %256, i8* %scevgep28.3, align 1
  %call.i48 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call) #3
  %call.i48.1 = call zeroext i8 @mult(i8 zeroext %call.i48, i8 zeroext %call) #3
  %call.i48.2 = call zeroext i8 @mult(i8 zeroext %call.i48.1, i8 zeroext %call) #3
  %conv14 = zext i8 %call.i48.2 to i32
  %257 = load i8, i8* %y, align 1
  %scevgep.1 = getelementptr i8, i8* %y, i64 1
  %258 = load i8, i8* %scevgep.1, align 1
  %conv.i.i62.1 = zext i8 %258 to i32
  %conv1.i.i63.1 = zext i8 %257 to i32
  %xor.i.i64.1 = xor i32 %conv1.i.i63.1, %conv.i.i62.1
  %conv2.i.i65.1 = trunc i32 %xor.i.i64.1 to i8
  %scevgep.2 = getelementptr i8, i8* %y, i64 2
  %259 = load i8, i8* %scevgep.2, align 1
  %conv.i.i62.2 = zext i8 %259 to i32
  %conv1.i.i63.2 = zext i8 %conv2.i.i65.1 to i32
  %xor.i.i64.2 = xor i32 %conv1.i.i63.2, %conv.i.i62.2
  %conv2.i.i65.2 = trunc i32 %xor.i.i64.2 to i8
  %scevgep.3 = getelementptr i8, i8* %y, i64 3
  %260 = load i8, i8* %scevgep.3, align 1
  %conv.i.i62.3 = zext i8 %260 to i32
  %conv1.i.i63.3 = zext i8 %conv2.i.i65.2 to i32
  %xor.i.i64.3 = xor i32 %conv1.i.i63.3, %conv.i.i62.3
  %conv2.i.i65.3 = trunc i32 %xor.i.i64.3 to i8
  %conv16 = zext i8 %conv2.i.i65.3 to i32
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
  %r.i.i = alloca [4 x [4 x i8]], align 16
  %z.i = alloca [4 x i8], align 1
  %w.i = alloca [4 x i8], align 1
  %u.i = alloca [4 x i8], align 1
  %v.i = alloca [4 x i8], align 1
  %m.i = alloca [4 x i8], align 1
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %scevgep288.1 = getelementptr i8, i8* %x, i64 1
  %1 = load i8, i8* %scevgep288.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep288.2 = getelementptr i8, i8* %x, i64 2
  %2 = load i8, i8* %scevgep288.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %scevgep288.3 = getelementptr i8, i8* %x, i64 3
  %3 = load i8, i8* %scevgep288.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %conv2 = zext i8 %conv2.i.i.3 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %call.i = call zeroext i8 (...) @rand() #3
  %conv.i = zext i8 %call.i to i32
  %4 = load i8, i8* %x, align 1
  %scevgep284.1 = getelementptr i8, i8* %x, i64 1
  %5 = load i8, i8* %scevgep284.1, align 1
  %conv.i.i.i.1 = zext i8 %5 to i32
  %conv1.i.i.i.1 = zext i8 %4 to i32
  %xor.i.i.i.1 = xor i32 %conv1.i.i.i.1, %conv.i.i.i.1
  %conv2.i.i.i.1 = trunc i32 %xor.i.i.i.1 to i8
  %scevgep284.2 = getelementptr i8, i8* %x, i64 2
  %6 = load i8, i8* %scevgep284.2, align 1
  %conv.i.i.i.2 = zext i8 %6 to i32
  %conv1.i.i.i.2 = zext i8 %conv2.i.i.i.1 to i32
  %xor.i.i.i.2 = xor i32 %conv1.i.i.i.2, %conv.i.i.i.2
  %conv2.i.i.i.2 = trunc i32 %xor.i.i.i.2 to i8
  %scevgep284.3 = getelementptr i8, i8* %x, i64 3
  %7 = load i8, i8* %scevgep284.3, align 1
  %conv.i.i.i.3 = zext i8 %7 to i32
  %conv1.i.i.i.3 = zext i8 %conv2.i.i.i.2 to i32
  %xor.i.i.i.3 = xor i32 %conv1.i.i.i.3, %conv.i.i.i.3
  %conv2.i.i.i.3 = trunc i32 %xor.i.i.i.3 to i8
  %conv2.i = zext i8 %conv2.i.i.i.3 to i32
  %cmp.i = icmp eq i32 %conv.i, %conv2.i
  call void @assume(i1 zeroext %cmp.i) #3
  %8 = load i8, i8* %x, align 1
  %call.i.i19 = call zeroext i8 @square(i8 zeroext %8) #3
  %scevgep280 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 0
  store i8 %call.i.i19, i8* %scevgep280, align 1
  %scevgep279.1 = getelementptr i8, i8* %x, i64 1
  %9 = load i8, i8* %scevgep279.1, align 1
  %call.i.i19.1 = call zeroext i8 @square(i8 zeroext %9) #3
  %scevgep280.1 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 1
  store i8 %call.i.i19.1, i8* %scevgep280.1, align 1
  %scevgep279.2 = getelementptr i8, i8* %x, i64 2
  %10 = load i8, i8* %scevgep279.2, align 1
  %call.i.i19.2 = call zeroext i8 @square(i8 zeroext %10) #3
  %scevgep280.2 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 2
  store i8 %call.i.i19.2, i8* %scevgep280.2, align 1
  %scevgep279.3 = getelementptr i8, i8* %x, i64 3
  %11 = load i8, i8* %scevgep279.3, align 1
  %call.i.i19.3 = call zeroext i8 @square(i8 zeroext %11) #3
  %scevgep280.3 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 3
  store i8 %call.i.i19.3, i8* %scevgep280.3, align 1
  %arraydecay4.i = getelementptr inbounds [4 x i8], [4 x i8]* %z.i, i64 0, i64 0
  %call.i28.i = call zeroext i8 (...) @rand() #3
  %conv.i.i22 = zext i8 %call.i28.i to i32
  %scevgep275 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 0
  %12 = load i8, i8* %scevgep275, align 1
  %scevgep275.1 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 1
  %13 = load i8, i8* %scevgep275.1, align 1
  %conv.i.i.i.i.1 = zext i8 %13 to i32
  %conv1.i.i.i.i.1 = zext i8 %12 to i32
  %xor.i.i.i.i.1 = xor i32 %conv1.i.i.i.i.1, %conv.i.i.i.i.1
  %conv2.i.i.i.i.1 = trunc i32 %xor.i.i.i.i.1 to i8
  %scevgep275.2 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 2
  %14 = load i8, i8* %scevgep275.2, align 1
  %conv.i.i.i.i.2 = zext i8 %14 to i32
  %conv1.i.i.i.i.2 = zext i8 %conv2.i.i.i.i.1 to i32
  %xor.i.i.i.i.2 = xor i32 %conv1.i.i.i.i.2, %conv.i.i.i.i.2
  %conv2.i.i.i.i.2 = trunc i32 %xor.i.i.i.i.2 to i8
  %scevgep275.3 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 3
  %15 = load i8, i8* %scevgep275.3, align 1
  %conv.i.i.i.i.3 = zext i8 %15 to i32
  %conv1.i.i.i.i.3 = zext i8 %conv2.i.i.i.i.2 to i32
  %xor.i.i.i.i.3 = xor i32 %conv1.i.i.i.i.3, %conv.i.i.i.i.3
  %conv2.i.i.i.i.3 = trunc i32 %xor.i.i.i.i.3 to i8
  %conv2.i.i23 = zext i8 %conv2.i.i.i.i.3 to i32
  %cmp.i29.i = icmp eq i32 %conv.i.i22, %conv2.i.i23
  call void @assume(i1 zeroext %cmp.i29.i) #3
  %call7.i.i = call zeroext i8 (...) @rand() #3
  %conv8.i.i = zext i8 %call7.i.i to i32
  %16 = load i8, i8* %arraydecay4.i, align 1
  %conv9.i.i = zext i8 %16 to i32
  %xor.i.i24 = xor i32 %conv9.i.i, %conv8.i.i
  %conv10.i.i = trunc i32 %xor.i.i24 to i8
  store i8 %conv10.i.i, i8* %arraydecay4.i, align 1
  %conv11.i.i = zext i8 %call7.i.i to i32
  %scevgep271 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 1
  %17 = load i8, i8* %scevgep271, align 1
  %conv13.i.i = zext i8 %17 to i32
  %xor14.i.i = xor i32 %conv13.i.i, %conv11.i.i
  %conv15.i.i = trunc i32 %xor14.i.i to i8
  store i8 %conv15.i.i, i8* %scevgep271, align 1
  %call7.i.i.1 = call zeroext i8 (...) @rand() #3
  %conv8.i.i.1 = zext i8 %call7.i.i.1 to i32
  %18 = load i8, i8* %arraydecay4.i, align 1
  %conv9.i.i.1 = zext i8 %18 to i32
  %xor.i.i24.1 = xor i32 %conv9.i.i.1, %conv8.i.i.1
  %conv10.i.i.1 = trunc i32 %xor.i.i24.1 to i8
  store i8 %conv10.i.i.1, i8* %arraydecay4.i, align 1
  %conv11.i.i.1 = zext i8 %call7.i.i.1 to i32
  %scevgep271.1 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 2
  %19 = load i8, i8* %scevgep271.1, align 1
  %conv13.i.i.1 = zext i8 %19 to i32
  %xor14.i.i.1 = xor i32 %conv13.i.i.1, %conv11.i.i.1
  %conv15.i.i.1 = trunc i32 %xor14.i.i.1 to i8
  store i8 %conv15.i.i.1, i8* %scevgep271.1, align 1
  %call7.i.i.2 = call zeroext i8 (...) @rand() #3
  %conv8.i.i.2 = zext i8 %call7.i.i.2 to i32
  %20 = load i8, i8* %arraydecay4.i, align 1
  %conv9.i.i.2 = zext i8 %20 to i32
  %xor.i.i24.2 = xor i32 %conv9.i.i.2, %conv8.i.i.2
  %conv10.i.i.2 = trunc i32 %xor.i.i24.2 to i8
  store i8 %conv10.i.i.2, i8* %arraydecay4.i, align 1
  %conv11.i.i.2 = zext i8 %call7.i.i.2 to i32
  %scevgep271.2 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 3
  %21 = load i8, i8* %scevgep271.2, align 1
  %conv13.i.i.2 = zext i8 %21 to i32
  %xor14.i.i.2 = xor i32 %conv13.i.i.2, %conv11.i.i.2
  %conv15.i.i.2 = trunc i32 %xor14.i.i.2 to i8
  store i8 %conv15.i.i.2, i8* %scevgep271.2, align 1
  %conv16.i.i = zext i8 %call.i28.i to i32
  %scevgep267 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 0
  %22 = load i8, i8* %scevgep267, align 1
  %scevgep267.1 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 1
  %23 = load i8, i8* %scevgep267.1, align 1
  %conv.i.i31.i.i.1 = zext i8 %23 to i32
  %conv1.i.i32.i.i.1 = zext i8 %22 to i32
  %xor.i.i33.i.i.1 = xor i32 %conv1.i.i32.i.i.1, %conv.i.i31.i.i.1
  %conv2.i.i34.i.i.1 = trunc i32 %xor.i.i33.i.i.1 to i8
  %scevgep267.2 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 2
  %24 = load i8, i8* %scevgep267.2, align 1
  %conv.i.i31.i.i.2 = zext i8 %24 to i32
  %conv1.i.i32.i.i.2 = zext i8 %conv2.i.i34.i.i.1 to i32
  %xor.i.i33.i.i.2 = xor i32 %conv1.i.i32.i.i.2, %conv.i.i31.i.i.2
  %conv2.i.i34.i.i.2 = trunc i32 %xor.i.i33.i.i.2 to i8
  %scevgep267.3 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 3
  %25 = load i8, i8* %scevgep267.3, align 1
  %conv.i.i31.i.i.3 = zext i8 %25 to i32
  %conv1.i.i32.i.i.3 = zext i8 %conv2.i.i34.i.i.2 to i32
  %xor.i.i33.i.i.3 = xor i32 %conv1.i.i32.i.i.3, %conv.i.i31.i.i.3
  %conv2.i.i34.i.i.3 = trunc i32 %xor.i.i33.i.i.3 to i8
  %conv18.i.i = zext i8 %conv2.i.i34.i.i.3 to i32
  %cmp19.i.i = icmp eq i32 %conv16.i.i, %conv18.i.i
  call void @assert(i1 zeroext %cmp19.i.i) #3
  %arraydecay5.i = getelementptr inbounds [4 x i8], [4 x i8]* %z.i, i64 0, i64 0
  %arraydecay6.i = getelementptr inbounds [4 x i8], [4 x i8]* %u.i, i64 0, i64 0
  %call.i41.i = call zeroext i8 (...) @rand() #3
  %call1.i.i = call zeroext i8 (...) @rand() #3
  %conv.i42.i = zext i8 %call.i41.i to i32
  %scevgep263 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 0
  %26 = load i8, i8* %scevgep263, align 1
  %scevgep263.1 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 1
  %27 = load i8, i8* %scevgep263.1, align 1
  %conv.i.i.i48.i.1 = zext i8 %27 to i32
  %conv1.i.i.i49.i.1 = zext i8 %26 to i32
  %xor.i.i.i50.i.1 = xor i32 %conv1.i.i.i49.i.1, %conv.i.i.i48.i.1
  %conv2.i.i.i51.i.1 = trunc i32 %xor.i.i.i50.i.1 to i8
  %scevgep263.2 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 2
  %28 = load i8, i8* %scevgep263.2, align 1
  %conv.i.i.i48.i.2 = zext i8 %28 to i32
  %conv1.i.i.i49.i.2 = zext i8 %conv2.i.i.i51.i.1 to i32
  %xor.i.i.i50.i.2 = xor i32 %conv1.i.i.i49.i.2, %conv.i.i.i48.i.2
  %conv2.i.i.i51.i.2 = trunc i32 %xor.i.i.i50.i.2 to i8
  %scevgep263.3 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 3
  %29 = load i8, i8* %scevgep263.3, align 1
  %conv.i.i.i48.i.3 = zext i8 %29 to i32
  %conv1.i.i.i49.i.3 = zext i8 %conv2.i.i.i51.i.2 to i32
  %xor.i.i.i50.i.3 = xor i32 %conv1.i.i.i49.i.3, %conv.i.i.i48.i.3
  %conv2.i.i.i51.i.3 = trunc i32 %xor.i.i.i50.i.3 to i8
  %conv3.i.i = zext i8 %conv2.i.i.i51.i.3 to i32
  %cmp.i54.i = icmp eq i32 %conv.i42.i, %conv3.i.i
  call void @assume(i1 zeroext %cmp.i54.i) #3
  %conv5.i.i = zext i8 %call1.i.i to i32
  %30 = load i8, i8* %x, align 1
  %scevgep259.1 = getelementptr i8, i8* %x, i64 1
  %31 = load i8, i8* %scevgep259.1, align 1
  %conv.i.i96.i.i.1 = zext i8 %31 to i32
  %conv1.i.i97.i.i.1 = zext i8 %30 to i32
  %xor.i.i98.i.i.1 = xor i32 %conv1.i.i97.i.i.1, %conv.i.i96.i.i.1
  %conv2.i.i99.i.i.1 = trunc i32 %xor.i.i98.i.i.1 to i8
  %scevgep259.2 = getelementptr i8, i8* %x, i64 2
  %32 = load i8, i8* %scevgep259.2, align 1
  %conv.i.i96.i.i.2 = zext i8 %32 to i32
  %conv1.i.i97.i.i.2 = zext i8 %conv2.i.i99.i.i.1 to i32
  %xor.i.i98.i.i.2 = xor i32 %conv1.i.i97.i.i.2, %conv.i.i96.i.i.2
  %conv2.i.i99.i.i.2 = trunc i32 %xor.i.i98.i.i.2 to i8
  %scevgep259.3 = getelementptr i8, i8* %x, i64 3
  %33 = load i8, i8* %scevgep259.3, align 1
  %conv.i.i96.i.i.3 = zext i8 %33 to i32
  %conv1.i.i97.i.i.3 = zext i8 %conv2.i.i99.i.i.2 to i32
  %xor.i.i98.i.i.3 = xor i32 %conv1.i.i97.i.i.3, %conv.i.i96.i.i.3
  %conv2.i.i99.i.i.3 = trunc i32 %xor.i.i98.i.i.3 to i8
  %conv7.i.i = zext i8 %conv2.i.i99.i.i.3 to i32
  %cmp8.i.i = icmp eq i32 %conv5.i.i, %conv7.i.i
  call void @assume(i1 zeroext %cmp8.i.i) #3
  %call16.i.i = call zeroext i8 (...) @rand() #3
  %scevgep243 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  store i8 %call16.i.i, i8* %scevgep243, align 1
  %scevgep244 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %34 = load i8, i8* %scevgep244, align 1
  %conv23.i.i = zext i8 %34 to i32
  %35 = load i8, i8* %arraydecay5.i, align 1
  %scevgep247 = getelementptr i8, i8* %x, i64 1
  %36 = load i8, i8* %scevgep247, align 1
  %call28.i.i = call zeroext i8 @mult(i8 zeroext %35, i8 zeroext %36) #3
  %conv29.i.i = zext i8 %call28.i.i to i32
  %xor.i60.i = xor i32 %conv23.i.i, %conv29.i.i
  %scevgep250 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 1
  %37 = load i8, i8* %scevgep250, align 1
  %38 = load i8, i8* %x, align 1
  %call34.i.i = call zeroext i8 @mult(i8 zeroext %37, i8 zeroext %38) #3
  %conv35.i.i = zext i8 %call34.i.i to i32
  %xor36.i.i = xor i32 %xor.i60.i, %conv35.i.i
  %conv37.i.i = trunc i32 %xor36.i.i to i8
  %scevgep251 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  store i8 %conv37.i.i, i8* %scevgep251, align 1
  %call16.i.i.1485 = call zeroext i8 (...) @rand() #3
  %scevgep243.1486 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  store i8 %call16.i.i.1485, i8* %scevgep243.1486, align 1
  %scevgep244.1487 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %39 = load i8, i8* %scevgep244.1487, align 1
  %conv23.i.i.1488 = zext i8 %39 to i32
  %40 = load i8, i8* %arraydecay5.i, align 1
  %scevgep247.1489 = getelementptr i8, i8* %x, i64 2
  %41 = load i8, i8* %scevgep247.1489, align 1
  %call28.i.i.1490 = call zeroext i8 @mult(i8 zeroext %40, i8 zeroext %41) #3
  %conv29.i.i.1491 = zext i8 %call28.i.i.1490 to i32
  %xor.i60.i.1492 = xor i32 %conv23.i.i.1488, %conv29.i.i.1491
  %scevgep250.1493 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 2
  %42 = load i8, i8* %scevgep250.1493, align 1
  %43 = load i8, i8* %x, align 1
  %call34.i.i.1494 = call zeroext i8 @mult(i8 zeroext %42, i8 zeroext %43) #3
  %conv35.i.i.1495 = zext i8 %call34.i.i.1494 to i32
  %xor36.i.i.1496 = xor i32 %xor.i60.i.1492, %conv35.i.i.1495
  %conv37.i.i.1497 = trunc i32 %xor36.i.i.1496 to i8
  %scevgep251.1498 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 2, i64 0
  store i8 %conv37.i.i.1497, i8* %scevgep251.1498, align 1
  %call16.i.i.2500 = call zeroext i8 (...) @rand() #3
  %scevgep243.2501 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  store i8 %call16.i.i.2500, i8* %scevgep243.2501, align 1
  %scevgep244.2502 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  %44 = load i8, i8* %scevgep244.2502, align 1
  %conv23.i.i.2503 = zext i8 %44 to i32
  %45 = load i8, i8* %arraydecay5.i, align 1
  %scevgep247.2504 = getelementptr i8, i8* %x, i64 3
  %46 = load i8, i8* %scevgep247.2504, align 1
  %call28.i.i.2505 = call zeroext i8 @mult(i8 zeroext %45, i8 zeroext %46) #3
  %conv29.i.i.2506 = zext i8 %call28.i.i.2505 to i32
  %xor.i60.i.2507 = xor i32 %conv23.i.i.2503, %conv29.i.i.2506
  %scevgep250.2508 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 3
  %47 = load i8, i8* %scevgep250.2508, align 1
  %48 = load i8, i8* %x, align 1
  %call34.i.i.2509 = call zeroext i8 @mult(i8 zeroext %47, i8 zeroext %48) #3
  %conv35.i.i.2510 = zext i8 %call34.i.i.2509 to i32
  %xor36.i.i.2511 = xor i32 %xor.i60.i.2507, %conv35.i.i.2510
  %conv37.i.i.2512 = trunc i32 %xor36.i.i.2511 to i8
  %scevgep251.2513 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 3, i64 0
  store i8 %conv37.i.i.2512, i8* %scevgep251.2513, align 1
  %scevgep240 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 1, i64 1
  %49 = bitcast i8* %scevgep240 to [4 x [4 x i8]]*
  %scevgep246 = getelementptr i8, i8* %x, i64 1
  %scevgep249 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 1
  %50 = bitcast i8* %scevgep249 to [4 x i8]*
  %arrayidx25.i.i.1 = getelementptr inbounds i8, i8* %arraydecay5.i, i64 1
  %arrayidx33.i.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %call16.i.i.1 = call zeroext i8 (...) @rand() #3
  %scevgep243.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %49, i64 0, i64 0, i64 1
  store i8 %call16.i.i.1, i8* %scevgep243.1, align 1
  %scevgep244.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %49, i64 0, i64 0, i64 1
  %51 = load i8, i8* %scevgep244.1, align 1
  %conv23.i.i.1 = zext i8 %51 to i32
  %52 = load i8, i8* %arrayidx25.i.i.1, align 1
  %scevgep247.1 = getelementptr i8, i8* %scevgep246, i64 1
  %53 = load i8, i8* %scevgep247.1, align 1
  %call28.i.i.1 = call zeroext i8 @mult(i8 zeroext %52, i8 zeroext %53) #3
  %conv29.i.i.1 = zext i8 %call28.i.i.1 to i32
  %xor.i60.i.1 = xor i32 %conv23.i.i.1, %conv29.i.i.1
  %scevgep250.1 = getelementptr [4 x i8], [4 x i8]* %50, i64 0, i64 1
  %54 = load i8, i8* %scevgep250.1, align 1
  %55 = load i8, i8* %arrayidx33.i.i.1, align 1
  %call34.i.i.1 = call zeroext i8 @mult(i8 zeroext %54, i8 zeroext %55) #3
  %conv35.i.i.1 = zext i8 %call34.i.i.1 to i32
  %xor36.i.i.1 = xor i32 %xor.i60.i.1, %conv35.i.i.1
  %conv37.i.i.1 = trunc i32 %xor36.i.i.1 to i8
  %scevgep251.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %49, i64 0, i64 1, i64 0
  store i8 %conv37.i.i.1, i8* %scevgep251.1, align 1
  %call16.i.i.1.1 = call zeroext i8 (...) @rand() #3
  %scevgep243.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %49, i64 0, i64 0, i64 2
  store i8 %call16.i.i.1.1, i8* %scevgep243.1.1, align 1
  %scevgep244.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %49, i64 0, i64 0, i64 2
  %56 = load i8, i8* %scevgep244.1.1, align 1
  %conv23.i.i.1.1 = zext i8 %56 to i32
  %57 = load i8, i8* %arrayidx25.i.i.1, align 1
  %scevgep247.1.1 = getelementptr i8, i8* %scevgep246, i64 2
  %58 = load i8, i8* %scevgep247.1.1, align 1
  %call28.i.i.1.1 = call zeroext i8 @mult(i8 zeroext %57, i8 zeroext %58) #3
  %conv29.i.i.1.1 = zext i8 %call28.i.i.1.1 to i32
  %xor.i60.i.1.1 = xor i32 %conv23.i.i.1.1, %conv29.i.i.1.1
  %scevgep250.1.1 = getelementptr [4 x i8], [4 x i8]* %50, i64 0, i64 2
  %59 = load i8, i8* %scevgep250.1.1, align 1
  %60 = load i8, i8* %arrayidx33.i.i.1, align 1
  %call34.i.i.1.1 = call zeroext i8 @mult(i8 zeroext %59, i8 zeroext %60) #3
  %conv35.i.i.1.1 = zext i8 %call34.i.i.1.1 to i32
  %xor36.i.i.1.1 = xor i32 %xor.i60.i.1.1, %conv35.i.i.1.1
  %conv37.i.i.1.1 = trunc i32 %xor36.i.i.1.1 to i8
  %scevgep251.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %49, i64 0, i64 2, i64 0
  store i8 %conv37.i.i.1.1, i8* %scevgep251.1.1, align 1
  %scevgep240.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %49, i64 0, i64 1, i64 1
  %61 = bitcast i8* %scevgep240.1 to [4 x [4 x i8]]*
  %scevgep246.1 = getelementptr i8, i8* %scevgep246, i64 1
  %scevgep249.1 = getelementptr [4 x i8], [4 x i8]* %50, i64 0, i64 1
  %62 = bitcast i8* %scevgep249.1 to [4 x i8]*
  %arrayidx25.i.i.2 = getelementptr inbounds i8, i8* %arraydecay5.i, i64 2
  %arrayidx33.i.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %call16.i.i.2 = call zeroext i8 (...) @rand() #3
  %scevgep243.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %61, i64 0, i64 0, i64 1
  store i8 %call16.i.i.2, i8* %scevgep243.2, align 1
  %scevgep244.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %61, i64 0, i64 0, i64 1
  %63 = load i8, i8* %scevgep244.2, align 1
  %conv23.i.i.2 = zext i8 %63 to i32
  %64 = load i8, i8* %arrayidx25.i.i.2, align 1
  %scevgep247.2 = getelementptr i8, i8* %scevgep246.1, i64 1
  %65 = load i8, i8* %scevgep247.2, align 1
  %call28.i.i.2 = call zeroext i8 @mult(i8 zeroext %64, i8 zeroext %65) #3
  %conv29.i.i.2 = zext i8 %call28.i.i.2 to i32
  %xor.i60.i.2 = xor i32 %conv23.i.i.2, %conv29.i.i.2
  %scevgep250.2 = getelementptr [4 x i8], [4 x i8]* %62, i64 0, i64 1
  %66 = load i8, i8* %scevgep250.2, align 1
  %67 = load i8, i8* %arrayidx33.i.i.2, align 1
  %call34.i.i.2 = call zeroext i8 @mult(i8 zeroext %66, i8 zeroext %67) #3
  %conv35.i.i.2 = zext i8 %call34.i.i.2 to i32
  %xor36.i.i.2 = xor i32 %xor.i60.i.2, %conv35.i.i.2
  %conv37.i.i.2 = trunc i32 %xor36.i.i.2 to i8
  %scevgep251.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %61, i64 0, i64 1, i64 0
  store i8 %conv37.i.i.2, i8* %scevgep251.2, align 1
  %68 = load i8, i8* %arraydecay5.i, align 1
  %69 = load i8, i8* %x, align 1
  %call54.i.i = call zeroext i8 @mult(i8 zeroext %68, i8 zeroext %69) #3
  store i8 %call54.i.i, i8* %arraydecay6.i, align 1
  %scevgep235.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %70 = load i8, i8* %scevgep235.1, align 1
  %conv68.i.i.1 = zext i8 %70 to i32
  %71 = load i8, i8* %arraydecay6.i, align 1
  %conv71.i.i.1 = zext i8 %71 to i32
  %xor72.i.i.1 = xor i32 %conv71.i.i.1, %conv68.i.i.1
  %conv73.i.i.1 = trunc i32 %xor72.i.i.1 to i8
  store i8 %conv73.i.i.1, i8* %arraydecay6.i, align 1
  %scevgep235.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %72 = load i8, i8* %scevgep235.2, align 1
  %conv68.i.i.2 = zext i8 %72 to i32
  %73 = load i8, i8* %arraydecay6.i, align 1
  %conv71.i.i.2 = zext i8 %73 to i32
  %xor72.i.i.2 = xor i32 %conv71.i.i.2, %conv68.i.i.2
  %conv73.i.i.2 = trunc i32 %xor72.i.i.2 to i8
  store i8 %conv73.i.i.2, i8* %arraydecay6.i, align 1
  %scevgep235.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  %74 = load i8, i8* %scevgep235.3, align 1
  %conv68.i.i.3 = zext i8 %74 to i32
  %75 = load i8, i8* %arraydecay6.i, align 1
  %conv71.i.i.3 = zext i8 %75 to i32
  %xor72.i.i.3 = xor i32 %conv71.i.i.3, %conv68.i.i.3
  %conv73.i.i.3 = trunc i32 %xor72.i.i.3 to i8
  store i8 %conv73.i.i.3, i8* %arraydecay6.i, align 1
  %scevgep234 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %76 = bitcast i8* %scevgep234 to [4 x [4 x i8]]*
  %arrayidx51.i.i.1 = getelementptr inbounds i8, i8* %arraydecay5.i, i64 1
  %77 = load i8, i8* %arrayidx51.i.i.1, align 1
  %arrayidx53.i.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %78 = load i8, i8* %arrayidx53.i.i.1, align 1
  %call54.i.i.1 = call zeroext i8 @mult(i8 zeroext %77, i8 zeroext %78) #3
  %arrayidx56.i.i.1 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 1
  store i8 %call54.i.i.1, i8* %arrayidx56.i.i.1, align 1
  %arrayidx70.i.i.1 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 1
  %scevgep235.1373 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %76, i64 0, i64 0, i64 0
  %79 = load i8, i8* %scevgep235.1373, align 1
  %conv68.i.i.1374 = zext i8 %79 to i32
  %80 = load i8, i8* %arrayidx70.i.i.1, align 1
  %conv71.i.i.1375 = zext i8 %80 to i32
  %xor72.i.i.1376 = xor i32 %conv71.i.i.1375, %conv68.i.i.1374
  %conv73.i.i.1377 = trunc i32 %xor72.i.i.1376 to i8
  store i8 %conv73.i.i.1377, i8* %arrayidx70.i.i.1, align 1
  %scevgep235.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %76, i64 0, i64 0, i64 2
  %81 = load i8, i8* %scevgep235.2.1, align 1
  %conv68.i.i.2.1 = zext i8 %81 to i32
  %82 = load i8, i8* %arrayidx70.i.i.1, align 1
  %conv71.i.i.2.1 = zext i8 %82 to i32
  %xor72.i.i.2.1 = xor i32 %conv71.i.i.2.1, %conv68.i.i.2.1
  %conv73.i.i.2.1 = trunc i32 %xor72.i.i.2.1 to i8
  store i8 %conv73.i.i.2.1, i8* %arrayidx70.i.i.1, align 1
  %scevgep235.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %76, i64 0, i64 0, i64 3
  %83 = load i8, i8* %scevgep235.3.1, align 1
  %conv68.i.i.3.1 = zext i8 %83 to i32
  %84 = load i8, i8* %arrayidx70.i.i.1, align 1
  %conv71.i.i.3.1 = zext i8 %84 to i32
  %xor72.i.i.3.1 = xor i32 %conv71.i.i.3.1, %conv68.i.i.3.1
  %conv73.i.i.3.1 = trunc i32 %xor72.i.i.3.1 to i8
  store i8 %conv73.i.i.3.1, i8* %arrayidx70.i.i.1, align 1
  %scevgep234.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %76, i64 0, i64 1, i64 0
  %85 = bitcast i8* %scevgep234.1 to [4 x [4 x i8]]*
  %arrayidx51.i.i.2 = getelementptr inbounds i8, i8* %arraydecay5.i, i64 2
  %86 = load i8, i8* %arrayidx51.i.i.2, align 1
  %arrayidx53.i.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %87 = load i8, i8* %arrayidx53.i.i.2, align 1
  %call54.i.i.2 = call zeroext i8 @mult(i8 zeroext %86, i8 zeroext %87) #3
  %arrayidx56.i.i.2 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 2
  store i8 %call54.i.i.2, i8* %arrayidx56.i.i.2, align 1
  %arrayidx70.i.i.2 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 2
  %scevgep235.2382 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %85, i64 0, i64 0, i64 0
  %88 = load i8, i8* %scevgep235.2382, align 1
  %conv68.i.i.2383 = zext i8 %88 to i32
  %89 = load i8, i8* %arrayidx70.i.i.2, align 1
  %conv71.i.i.2384 = zext i8 %89 to i32
  %xor72.i.i.2385 = xor i32 %conv71.i.i.2384, %conv68.i.i.2383
  %conv73.i.i.2386 = trunc i32 %xor72.i.i.2385 to i8
  store i8 %conv73.i.i.2386, i8* %arrayidx70.i.i.2, align 1
  %scevgep235.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %85, i64 0, i64 0, i64 1
  %90 = load i8, i8* %scevgep235.1.2, align 1
  %conv68.i.i.1.2 = zext i8 %90 to i32
  %91 = load i8, i8* %arrayidx70.i.i.2, align 1
  %conv71.i.i.1.2 = zext i8 %91 to i32
  %xor72.i.i.1.2 = xor i32 %conv71.i.i.1.2, %conv68.i.i.1.2
  %conv73.i.i.1.2 = trunc i32 %xor72.i.i.1.2 to i8
  store i8 %conv73.i.i.1.2, i8* %arrayidx70.i.i.2, align 1
  %scevgep235.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %85, i64 0, i64 0, i64 3
  %92 = load i8, i8* %scevgep235.3.2, align 1
  %conv68.i.i.3.2 = zext i8 %92 to i32
  %93 = load i8, i8* %arrayidx70.i.i.2, align 1
  %conv71.i.i.3.2 = zext i8 %93 to i32
  %xor72.i.i.3.2 = xor i32 %conv71.i.i.3.2, %conv68.i.i.3.2
  %conv73.i.i.3.2 = trunc i32 %xor72.i.i.3.2 to i8
  store i8 %conv73.i.i.3.2, i8* %arrayidx70.i.i.2, align 1
  %scevgep234.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %85, i64 0, i64 1, i64 0
  %94 = bitcast i8* %scevgep234.2 to [4 x [4 x i8]]*
  %arrayidx51.i.i.3 = getelementptr inbounds i8, i8* %arraydecay5.i, i64 3
  %95 = load i8, i8* %arrayidx51.i.i.3, align 1
  %arrayidx53.i.i.3 = getelementptr inbounds i8, i8* %x, i64 3
  %96 = load i8, i8* %arrayidx53.i.i.3, align 1
  %call54.i.i.3 = call zeroext i8 @mult(i8 zeroext %95, i8 zeroext %96) #3
  %arrayidx56.i.i.3 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 3
  store i8 %call54.i.i.3, i8* %arrayidx56.i.i.3, align 1
  %arrayidx70.i.i.3 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 3
  %scevgep235.3391 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %94, i64 0, i64 0, i64 0
  %97 = load i8, i8* %scevgep235.3391, align 1
  %conv68.i.i.3392 = zext i8 %97 to i32
  %98 = load i8, i8* %arrayidx70.i.i.3, align 1
  %conv71.i.i.3393 = zext i8 %98 to i32
  %xor72.i.i.3394 = xor i32 %conv71.i.i.3393, %conv68.i.i.3392
  %conv73.i.i.3395 = trunc i32 %xor72.i.i.3394 to i8
  store i8 %conv73.i.i.3395, i8* %arrayidx70.i.i.3, align 1
  %scevgep235.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %94, i64 0, i64 0, i64 1
  %99 = load i8, i8* %scevgep235.1.3, align 1
  %conv68.i.i.1.3 = zext i8 %99 to i32
  %100 = load i8, i8* %arrayidx70.i.i.3, align 1
  %conv71.i.i.1.3 = zext i8 %100 to i32
  %xor72.i.i.1.3 = xor i32 %conv71.i.i.1.3, %conv68.i.i.1.3
  %conv73.i.i.1.3 = trunc i32 %xor72.i.i.1.3 to i8
  store i8 %conv73.i.i.1.3, i8* %arrayidx70.i.i.3, align 1
  %scevgep235.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %94, i64 0, i64 0, i64 2
  %101 = load i8, i8* %scevgep235.2.3, align 1
  %conv68.i.i.2.3 = zext i8 %101 to i32
  %102 = load i8, i8* %arrayidx70.i.i.3, align 1
  %conv71.i.i.2.3 = zext i8 %102 to i32
  %xor72.i.i.2.3 = xor i32 %conv71.i.i.2.3, %conv68.i.i.2.3
  %conv73.i.i.2.3 = trunc i32 %xor72.i.i.2.3 to i8
  store i8 %conv73.i.i.2.3, i8* %arrayidx70.i.i.3, align 1
  %call80.i.i = call zeroext i8 @mult(i8 zeroext %call.i41.i, i8 zeroext %call1.i.i) #3
  %conv81.i.i = zext i8 %call80.i.i to i32
  %scevgep225 = getelementptr [4 x i8], [4 x i8]* %u.i, i64 0, i64 0
  %103 = load i8, i8* %scevgep225, align 1
  %scevgep225.1 = getelementptr [4 x i8], [4 x i8]* %u.i, i64 0, i64 1
  %104 = load i8, i8* %scevgep225.1, align 1
  %conv.i.i113.i.i.1 = zext i8 %104 to i32
  %conv1.i.i114.i.i.1 = zext i8 %103 to i32
  %xor.i.i115.i.i.1 = xor i32 %conv1.i.i114.i.i.1, %conv.i.i113.i.i.1
  %conv2.i.i116.i.i.1 = trunc i32 %xor.i.i115.i.i.1 to i8
  %scevgep225.2 = getelementptr [4 x i8], [4 x i8]* %u.i, i64 0, i64 2
  %105 = load i8, i8* %scevgep225.2, align 1
  %conv.i.i113.i.i.2 = zext i8 %105 to i32
  %conv1.i.i114.i.i.2 = zext i8 %conv2.i.i116.i.i.1 to i32
  %xor.i.i115.i.i.2 = xor i32 %conv1.i.i114.i.i.2, %conv.i.i113.i.i.2
  %conv2.i.i116.i.i.2 = trunc i32 %xor.i.i115.i.i.2 to i8
  %scevgep225.3 = getelementptr [4 x i8], [4 x i8]* %u.i, i64 0, i64 3
  %106 = load i8, i8* %scevgep225.3, align 1
  %conv.i.i113.i.i.3 = zext i8 %106 to i32
  %conv1.i.i114.i.i.3 = zext i8 %conv2.i.i116.i.i.2 to i32
  %xor.i.i115.i.i.3 = xor i32 %conv1.i.i114.i.i.3, %conv.i.i113.i.i.3
  %conv2.i.i116.i.i.3 = trunc i32 %xor.i.i115.i.i.3 to i8
  %conv83.i.i = zext i8 %conv2.i.i116.i.i.3 to i32
  %cmp84.i.i = icmp eq i32 %conv81.i.i, %conv83.i.i
  call void @assert(i1 zeroext %cmp84.i.i) #3
  %scevgep220 = getelementptr [4 x i8], [4 x i8]* %u.i, i64 0, i64 0
  %107 = load i8, i8* %scevgep220, align 1
  %call.i71.i = call zeroext i8 @exp4(i8 zeroext %107) #3
  %scevgep221 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 0
  store i8 %call.i71.i, i8* %scevgep221, align 1
  %scevgep220.1 = getelementptr [4 x i8], [4 x i8]* %u.i, i64 0, i64 1
  %108 = load i8, i8* %scevgep220.1, align 1
  %call.i71.i.1 = call zeroext i8 @exp4(i8 zeroext %108) #3
  %scevgep221.1 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 1
  store i8 %call.i71.i.1, i8* %scevgep221.1, align 1
  %scevgep220.2 = getelementptr [4 x i8], [4 x i8]* %u.i, i64 0, i64 2
  %109 = load i8, i8* %scevgep220.2, align 1
  %call.i71.i.2 = call zeroext i8 @exp4(i8 zeroext %109) #3
  %scevgep221.2 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 2
  store i8 %call.i71.i.2, i8* %scevgep221.2, align 1
  %scevgep220.3 = getelementptr [4 x i8], [4 x i8]* %u.i, i64 0, i64 3
  %110 = load i8, i8* %scevgep220.3, align 1
  %call.i71.i.3 = call zeroext i8 @exp4(i8 zeroext %110) #3
  %scevgep221.3 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 3
  store i8 %call.i71.i.3, i8* %scevgep221.3, align 1
  %arraydecay9.i = getelementptr inbounds [4 x i8], [4 x i8]* %w.i, i64 0, i64 0
  %call.i92.i = call zeroext i8 (...) @rand() #3
  %conv.i93.i = zext i8 %call.i92.i to i32
  %scevgep216 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 0
  %111 = load i8, i8* %scevgep216, align 1
  %scevgep216.1 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 1
  %112 = load i8, i8* %scevgep216.1, align 1
  %conv.i.i.i99.i.1 = zext i8 %112 to i32
  %conv1.i.i.i100.i.1 = zext i8 %111 to i32
  %xor.i.i.i101.i.1 = xor i32 %conv1.i.i.i100.i.1, %conv.i.i.i99.i.1
  %conv2.i.i.i102.i.1 = trunc i32 %xor.i.i.i101.i.1 to i8
  %scevgep216.2 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 2
  %113 = load i8, i8* %scevgep216.2, align 1
  %conv.i.i.i99.i.2 = zext i8 %113 to i32
  %conv1.i.i.i100.i.2 = zext i8 %conv2.i.i.i102.i.1 to i32
  %xor.i.i.i101.i.2 = xor i32 %conv1.i.i.i100.i.2, %conv.i.i.i99.i.2
  %conv2.i.i.i102.i.2 = trunc i32 %xor.i.i.i101.i.2 to i8
  %scevgep216.3 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 3
  %114 = load i8, i8* %scevgep216.3, align 1
  %conv.i.i.i99.i.3 = zext i8 %114 to i32
  %conv1.i.i.i100.i.3 = zext i8 %conv2.i.i.i102.i.2 to i32
  %xor.i.i.i101.i.3 = xor i32 %conv1.i.i.i100.i.3, %conv.i.i.i99.i.3
  %conv2.i.i.i102.i.3 = trunc i32 %xor.i.i.i101.i.3 to i8
  %conv2.i105.i = zext i8 %conv2.i.i.i102.i.3 to i32
  %cmp.i106.i = icmp eq i32 %conv.i93.i, %conv2.i105.i
  call void @assume(i1 zeroext %cmp.i106.i) #3
  %call7.i111.i = call zeroext i8 (...) @rand() #3
  %conv8.i112.i = zext i8 %call7.i111.i to i32
  %115 = load i8, i8* %arraydecay9.i, align 1
  %conv9.i113.i = zext i8 %115 to i32
  %xor.i114.i = xor i32 %conv9.i113.i, %conv8.i112.i
  %conv10.i115.i = trunc i32 %xor.i114.i to i8
  store i8 %conv10.i115.i, i8* %arraydecay9.i, align 1
  %conv11.i116.i = zext i8 %call7.i111.i to i32
  %scevgep212 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 1
  %116 = load i8, i8* %scevgep212, align 1
  %conv13.i119.i = zext i8 %116 to i32
  %xor14.i120.i = xor i32 %conv13.i119.i, %conv11.i116.i
  %conv15.i121.i = trunc i32 %xor14.i120.i to i8
  store i8 %conv15.i121.i, i8* %scevgep212, align 1
  %call7.i111.i.1 = call zeroext i8 (...) @rand() #3
  %conv8.i112.i.1 = zext i8 %call7.i111.i.1 to i32
  %117 = load i8, i8* %arraydecay9.i, align 1
  %conv9.i113.i.1 = zext i8 %117 to i32
  %xor.i114.i.1 = xor i32 %conv9.i113.i.1, %conv8.i112.i.1
  %conv10.i115.i.1 = trunc i32 %xor.i114.i.1 to i8
  store i8 %conv10.i115.i.1, i8* %arraydecay9.i, align 1
  %conv11.i116.i.1 = zext i8 %call7.i111.i.1 to i32
  %scevgep212.1 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 2
  %118 = load i8, i8* %scevgep212.1, align 1
  %conv13.i119.i.1 = zext i8 %118 to i32
  %xor14.i120.i.1 = xor i32 %conv13.i119.i.1, %conv11.i116.i.1
  %conv15.i121.i.1 = trunc i32 %xor14.i120.i.1 to i8
  store i8 %conv15.i121.i.1, i8* %scevgep212.1, align 1
  %call7.i111.i.2 = call zeroext i8 (...) @rand() #3
  %conv8.i112.i.2 = zext i8 %call7.i111.i.2 to i32
  %119 = load i8, i8* %arraydecay9.i, align 1
  %conv9.i113.i.2 = zext i8 %119 to i32
  %xor.i114.i.2 = xor i32 %conv9.i113.i.2, %conv8.i112.i.2
  %conv10.i115.i.2 = trunc i32 %xor.i114.i.2 to i8
  store i8 %conv10.i115.i.2, i8* %arraydecay9.i, align 1
  %conv11.i116.i.2 = zext i8 %call7.i111.i.2 to i32
  %scevgep212.2 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 3
  %120 = load i8, i8* %scevgep212.2, align 1
  %conv13.i119.i.2 = zext i8 %120 to i32
  %xor14.i120.i.2 = xor i32 %conv13.i119.i.2, %conv11.i116.i.2
  %conv15.i121.i.2 = trunc i32 %xor14.i120.i.2 to i8
  store i8 %conv15.i121.i.2, i8* %scevgep212.2, align 1
  %conv16.i124.i = zext i8 %call.i92.i to i32
  %scevgep208 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 0
  %121 = load i8, i8* %scevgep208, align 1
  %scevgep208.1 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 1
  %122 = load i8, i8* %scevgep208.1, align 1
  %conv.i.i31.i131.i.1 = zext i8 %122 to i32
  %conv1.i.i32.i132.i.1 = zext i8 %121 to i32
  %xor.i.i33.i133.i.1 = xor i32 %conv1.i.i32.i132.i.1, %conv.i.i31.i131.i.1
  %conv2.i.i34.i134.i.1 = trunc i32 %xor.i.i33.i133.i.1 to i8
  %scevgep208.2 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 2
  %123 = load i8, i8* %scevgep208.2, align 1
  %conv.i.i31.i131.i.2 = zext i8 %123 to i32
  %conv1.i.i32.i132.i.2 = zext i8 %conv2.i.i34.i134.i.1 to i32
  %xor.i.i33.i133.i.2 = xor i32 %conv1.i.i32.i132.i.2, %conv.i.i31.i131.i.2
  %conv2.i.i34.i134.i.2 = trunc i32 %xor.i.i33.i133.i.2 to i8
  %scevgep208.3 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 3
  %124 = load i8, i8* %scevgep208.3, align 1
  %conv.i.i31.i131.i.3 = zext i8 %124 to i32
  %conv1.i.i32.i132.i.3 = zext i8 %conv2.i.i34.i134.i.2 to i32
  %xor.i.i33.i133.i.3 = xor i32 %conv1.i.i32.i132.i.3, %conv.i.i31.i131.i.3
  %conv2.i.i34.i134.i.3 = trunc i32 %xor.i.i33.i133.i.3 to i8
  %conv18.i137.i = zext i8 %conv2.i.i34.i134.i.3 to i32
  %cmp19.i138.i = icmp eq i32 %conv16.i124.i, %conv18.i137.i
  call void @assert(i1 zeroext %cmp19.i138.i) #3
  %arraydecay10.i = getelementptr inbounds [4 x i8], [4 x i8]* %u.i, i64 0, i64 0
  %arraydecay11.i = getelementptr inbounds [4 x i8], [4 x i8]* %w.i, i64 0, i64 0
  %arraydecay12.i = getelementptr inbounds [4 x i8], [4 x i8]* %v.i, i64 0, i64 0
  %call.i165.i = call zeroext i8 (...) @rand() #3
  %call1.i166.i = call zeroext i8 (...) @rand() #3
  %conv.i167.i = zext i8 %call.i165.i to i32
  %scevgep204 = getelementptr [4 x i8], [4 x i8]* %u.i, i64 0, i64 0
  %125 = load i8, i8* %scevgep204, align 1
  %scevgep204.1 = getelementptr [4 x i8], [4 x i8]* %u.i, i64 0, i64 1
  %126 = load i8, i8* %scevgep204.1, align 1
  %conv.i.i.i173.i.1 = zext i8 %126 to i32
  %conv1.i.i.i174.i.1 = zext i8 %125 to i32
  %xor.i.i.i175.i.1 = xor i32 %conv1.i.i.i174.i.1, %conv.i.i.i173.i.1
  %conv2.i.i.i176.i.1 = trunc i32 %xor.i.i.i175.i.1 to i8
  %scevgep204.2 = getelementptr [4 x i8], [4 x i8]* %u.i, i64 0, i64 2
  %127 = load i8, i8* %scevgep204.2, align 1
  %conv.i.i.i173.i.2 = zext i8 %127 to i32
  %conv1.i.i.i174.i.2 = zext i8 %conv2.i.i.i176.i.1 to i32
  %xor.i.i.i175.i.2 = xor i32 %conv1.i.i.i174.i.2, %conv.i.i.i173.i.2
  %conv2.i.i.i176.i.2 = trunc i32 %xor.i.i.i175.i.2 to i8
  %scevgep204.3 = getelementptr [4 x i8], [4 x i8]* %u.i, i64 0, i64 3
  %128 = load i8, i8* %scevgep204.3, align 1
  %conv.i.i.i173.i.3 = zext i8 %128 to i32
  %conv1.i.i.i174.i.3 = zext i8 %conv2.i.i.i176.i.2 to i32
  %xor.i.i.i175.i.3 = xor i32 %conv1.i.i.i174.i.3, %conv.i.i.i173.i.3
  %conv2.i.i.i176.i.3 = trunc i32 %xor.i.i.i175.i.3 to i8
  %conv3.i179.i = zext i8 %conv2.i.i.i176.i.3 to i32
  %cmp.i180.i = icmp eq i32 %conv.i167.i, %conv3.i179.i
  call void @assume(i1 zeroext %cmp.i180.i) #3
  %conv5.i181.i = zext i8 %call1.i166.i to i32
  %scevgep200 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 0
  %129 = load i8, i8* %scevgep200, align 1
  %scevgep200.1 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 1
  %130 = load i8, i8* %scevgep200.1, align 1
  %conv.i.i96.i188.i.1 = zext i8 %130 to i32
  %conv1.i.i97.i189.i.1 = zext i8 %129 to i32
  %xor.i.i98.i190.i.1 = xor i32 %conv1.i.i97.i189.i.1, %conv.i.i96.i188.i.1
  %conv2.i.i99.i191.i.1 = trunc i32 %xor.i.i98.i190.i.1 to i8
  %scevgep200.2 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 2
  %131 = load i8, i8* %scevgep200.2, align 1
  %conv.i.i96.i188.i.2 = zext i8 %131 to i32
  %conv1.i.i97.i189.i.2 = zext i8 %conv2.i.i99.i191.i.1 to i32
  %xor.i.i98.i190.i.2 = xor i32 %conv1.i.i97.i189.i.2, %conv.i.i96.i188.i.2
  %conv2.i.i99.i191.i.2 = trunc i32 %xor.i.i98.i190.i.2 to i8
  %scevgep200.3 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 3
  %132 = load i8, i8* %scevgep200.3, align 1
  %conv.i.i96.i188.i.3 = zext i8 %132 to i32
  %conv1.i.i97.i189.i.3 = zext i8 %conv2.i.i99.i191.i.2 to i32
  %xor.i.i98.i190.i.3 = xor i32 %conv1.i.i97.i189.i.3, %conv.i.i96.i188.i.3
  %conv2.i.i99.i191.i.3 = trunc i32 %xor.i.i98.i190.i.3 to i8
  %conv7.i194.i = zext i8 %conv2.i.i99.i191.i.3 to i32
  %cmp8.i195.i = icmp eq i32 %conv5.i181.i, %conv7.i194.i
  call void @assume(i1 zeroext %cmp8.i195.i) #3
  %call16.i203.i = call zeroext i8 (...) @rand() #3
  %scevgep184 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  store i8 %call16.i203.i, i8* %scevgep184, align 1
  %scevgep185 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %133 = load i8, i8* %scevgep185, align 1
  %conv23.i212.i = zext i8 %133 to i32
  %134 = load i8, i8* %arraydecay10.i, align 1
  %scevgep188 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 1
  %135 = load i8, i8* %scevgep188, align 1
  %call28.i217.i = call zeroext i8 @mult(i8 zeroext %134, i8 zeroext %135) #3
  %conv29.i218.i = zext i8 %call28.i217.i to i32
  %xor.i219.i = xor i32 %conv23.i212.i, %conv29.i218.i
  %scevgep191 = getelementptr [4 x i8], [4 x i8]* %u.i, i64 0, i64 1
  %136 = load i8, i8* %scevgep191, align 1
  %137 = load i8, i8* %arraydecay11.i, align 1
  %call34.i224.i = call zeroext i8 @mult(i8 zeroext %136, i8 zeroext %137) #3
  %conv35.i225.i = zext i8 %call34.i224.i to i32
  %xor36.i226.i = xor i32 %xor.i219.i, %conv35.i225.i
  %conv37.i227.i = trunc i32 %xor36.i226.i to i8
  %scevgep192 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  store i8 %conv37.i227.i, i8* %scevgep192, align 1
  %call16.i203.i.1456 = call zeroext i8 (...) @rand() #3
  %scevgep184.1457 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  store i8 %call16.i203.i.1456, i8* %scevgep184.1457, align 1
  %scevgep185.1458 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %138 = load i8, i8* %scevgep185.1458, align 1
  %conv23.i212.i.1459 = zext i8 %138 to i32
  %139 = load i8, i8* %arraydecay10.i, align 1
  %scevgep188.1460 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 2
  %140 = load i8, i8* %scevgep188.1460, align 1
  %call28.i217.i.1461 = call zeroext i8 @mult(i8 zeroext %139, i8 zeroext %140) #3
  %conv29.i218.i.1462 = zext i8 %call28.i217.i.1461 to i32
  %xor.i219.i.1463 = xor i32 %conv23.i212.i.1459, %conv29.i218.i.1462
  %scevgep191.1464 = getelementptr [4 x i8], [4 x i8]* %u.i, i64 0, i64 2
  %141 = load i8, i8* %scevgep191.1464, align 1
  %142 = load i8, i8* %arraydecay11.i, align 1
  %call34.i224.i.1465 = call zeroext i8 @mult(i8 zeroext %141, i8 zeroext %142) #3
  %conv35.i225.i.1466 = zext i8 %call34.i224.i.1465 to i32
  %xor36.i226.i.1467 = xor i32 %xor.i219.i.1463, %conv35.i225.i.1466
  %conv37.i227.i.1468 = trunc i32 %xor36.i226.i.1467 to i8
  %scevgep192.1469 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 2, i64 0
  store i8 %conv37.i227.i.1468, i8* %scevgep192.1469, align 1
  %call16.i203.i.2471 = call zeroext i8 (...) @rand() #3
  %scevgep184.2472 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  store i8 %call16.i203.i.2471, i8* %scevgep184.2472, align 1
  %scevgep185.2473 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  %143 = load i8, i8* %scevgep185.2473, align 1
  %conv23.i212.i.2474 = zext i8 %143 to i32
  %144 = load i8, i8* %arraydecay10.i, align 1
  %scevgep188.2475 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 3
  %145 = load i8, i8* %scevgep188.2475, align 1
  %call28.i217.i.2476 = call zeroext i8 @mult(i8 zeroext %144, i8 zeroext %145) #3
  %conv29.i218.i.2477 = zext i8 %call28.i217.i.2476 to i32
  %xor.i219.i.2478 = xor i32 %conv23.i212.i.2474, %conv29.i218.i.2477
  %scevgep191.2479 = getelementptr [4 x i8], [4 x i8]* %u.i, i64 0, i64 3
  %146 = load i8, i8* %scevgep191.2479, align 1
  %147 = load i8, i8* %arraydecay11.i, align 1
  %call34.i224.i.2480 = call zeroext i8 @mult(i8 zeroext %146, i8 zeroext %147) #3
  %conv35.i225.i.2481 = zext i8 %call34.i224.i.2480 to i32
  %xor36.i226.i.2482 = xor i32 %xor.i219.i.2478, %conv35.i225.i.2481
  %conv37.i227.i.2483 = trunc i32 %xor36.i226.i.2482 to i8
  %scevgep192.2484 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 3, i64 0
  store i8 %conv37.i227.i.2483, i8* %scevgep192.2484, align 1
  %scevgep181 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 1, i64 1
  %148 = bitcast i8* %scevgep181 to [4 x [4 x i8]]*
  %scevgep187 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 1
  %149 = bitcast i8* %scevgep187 to [4 x i8]*
  %scevgep190 = getelementptr [4 x i8], [4 x i8]* %u.i, i64 0, i64 1
  %150 = bitcast i8* %scevgep190 to [4 x i8]*
  %arrayidx25.i214.i.1 = getelementptr inbounds i8, i8* %arraydecay10.i, i64 1
  %arrayidx33.i223.i.1 = getelementptr inbounds i8, i8* %arraydecay11.i, i64 1
  %call16.i203.i.1 = call zeroext i8 (...) @rand() #3
  %scevgep184.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %148, i64 0, i64 0, i64 1
  store i8 %call16.i203.i.1, i8* %scevgep184.1, align 1
  %scevgep185.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %148, i64 0, i64 0, i64 1
  %151 = load i8, i8* %scevgep185.1, align 1
  %conv23.i212.i.1 = zext i8 %151 to i32
  %152 = load i8, i8* %arrayidx25.i214.i.1, align 1
  %scevgep188.1 = getelementptr [4 x i8], [4 x i8]* %149, i64 0, i64 1
  %153 = load i8, i8* %scevgep188.1, align 1
  %call28.i217.i.1 = call zeroext i8 @mult(i8 zeroext %152, i8 zeroext %153) #3
  %conv29.i218.i.1 = zext i8 %call28.i217.i.1 to i32
  %xor.i219.i.1 = xor i32 %conv23.i212.i.1, %conv29.i218.i.1
  %scevgep191.1 = getelementptr [4 x i8], [4 x i8]* %150, i64 0, i64 1
  %154 = load i8, i8* %scevgep191.1, align 1
  %155 = load i8, i8* %arrayidx33.i223.i.1, align 1
  %call34.i224.i.1 = call zeroext i8 @mult(i8 zeroext %154, i8 zeroext %155) #3
  %conv35.i225.i.1 = zext i8 %call34.i224.i.1 to i32
  %xor36.i226.i.1 = xor i32 %xor.i219.i.1, %conv35.i225.i.1
  %conv37.i227.i.1 = trunc i32 %xor36.i226.i.1 to i8
  %scevgep192.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %148, i64 0, i64 1, i64 0
  store i8 %conv37.i227.i.1, i8* %scevgep192.1, align 1
  %call16.i203.i.1.1 = call zeroext i8 (...) @rand() #3
  %scevgep184.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %148, i64 0, i64 0, i64 2
  store i8 %call16.i203.i.1.1, i8* %scevgep184.1.1, align 1
  %scevgep185.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %148, i64 0, i64 0, i64 2
  %156 = load i8, i8* %scevgep185.1.1, align 1
  %conv23.i212.i.1.1 = zext i8 %156 to i32
  %157 = load i8, i8* %arrayidx25.i214.i.1, align 1
  %scevgep188.1.1 = getelementptr [4 x i8], [4 x i8]* %149, i64 0, i64 2
  %158 = load i8, i8* %scevgep188.1.1, align 1
  %call28.i217.i.1.1 = call zeroext i8 @mult(i8 zeroext %157, i8 zeroext %158) #3
  %conv29.i218.i.1.1 = zext i8 %call28.i217.i.1.1 to i32
  %xor.i219.i.1.1 = xor i32 %conv23.i212.i.1.1, %conv29.i218.i.1.1
  %scevgep191.1.1 = getelementptr [4 x i8], [4 x i8]* %150, i64 0, i64 2
  %159 = load i8, i8* %scevgep191.1.1, align 1
  %160 = load i8, i8* %arrayidx33.i223.i.1, align 1
  %call34.i224.i.1.1 = call zeroext i8 @mult(i8 zeroext %159, i8 zeroext %160) #3
  %conv35.i225.i.1.1 = zext i8 %call34.i224.i.1.1 to i32
  %xor36.i226.i.1.1 = xor i32 %xor.i219.i.1.1, %conv35.i225.i.1.1
  %conv37.i227.i.1.1 = trunc i32 %xor36.i226.i.1.1 to i8
  %scevgep192.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %148, i64 0, i64 2, i64 0
  store i8 %conv37.i227.i.1.1, i8* %scevgep192.1.1, align 1
  %scevgep181.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %148, i64 0, i64 1, i64 1
  %161 = bitcast i8* %scevgep181.1 to [4 x [4 x i8]]*
  %scevgep187.1 = getelementptr [4 x i8], [4 x i8]* %149, i64 0, i64 1
  %162 = bitcast i8* %scevgep187.1 to [4 x i8]*
  %scevgep190.1 = getelementptr [4 x i8], [4 x i8]* %150, i64 0, i64 1
  %163 = bitcast i8* %scevgep190.1 to [4 x i8]*
  %arrayidx25.i214.i.2 = getelementptr inbounds i8, i8* %arraydecay10.i, i64 2
  %arrayidx33.i223.i.2 = getelementptr inbounds i8, i8* %arraydecay11.i, i64 2
  %call16.i203.i.2 = call zeroext i8 (...) @rand() #3
  %scevgep184.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %161, i64 0, i64 0, i64 1
  store i8 %call16.i203.i.2, i8* %scevgep184.2, align 1
  %scevgep185.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %161, i64 0, i64 0, i64 1
  %164 = load i8, i8* %scevgep185.2, align 1
  %conv23.i212.i.2 = zext i8 %164 to i32
  %165 = load i8, i8* %arrayidx25.i214.i.2, align 1
  %scevgep188.2 = getelementptr [4 x i8], [4 x i8]* %162, i64 0, i64 1
  %166 = load i8, i8* %scevgep188.2, align 1
  %call28.i217.i.2 = call zeroext i8 @mult(i8 zeroext %165, i8 zeroext %166) #3
  %conv29.i218.i.2 = zext i8 %call28.i217.i.2 to i32
  %xor.i219.i.2 = xor i32 %conv23.i212.i.2, %conv29.i218.i.2
  %scevgep191.2 = getelementptr [4 x i8], [4 x i8]* %163, i64 0, i64 1
  %167 = load i8, i8* %scevgep191.2, align 1
  %168 = load i8, i8* %arrayidx33.i223.i.2, align 1
  %call34.i224.i.2 = call zeroext i8 @mult(i8 zeroext %167, i8 zeroext %168) #3
  %conv35.i225.i.2 = zext i8 %call34.i224.i.2 to i32
  %xor36.i226.i.2 = xor i32 %xor.i219.i.2, %conv35.i225.i.2
  %conv37.i227.i.2 = trunc i32 %xor36.i226.i.2 to i8
  %scevgep192.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %161, i64 0, i64 1, i64 0
  store i8 %conv37.i227.i.2, i8* %scevgep192.2, align 1
  %169 = load i8, i8* %arraydecay10.i, align 1
  %170 = load i8, i8* %arraydecay11.i, align 1
  %call54.i243.i = call zeroext i8 @mult(i8 zeroext %169, i8 zeroext %170) #3
  store i8 %call54.i243.i, i8* %arraydecay12.i, align 1
  %scevgep176.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %171 = load i8, i8* %scevgep176.1, align 1
  %conv68.i255.i.1 = zext i8 %171 to i32
  %172 = load i8, i8* %arraydecay12.i, align 1
  %conv71.i258.i.1 = zext i8 %172 to i32
  %xor72.i259.i.1 = xor i32 %conv71.i258.i.1, %conv68.i255.i.1
  %conv73.i260.i.1 = trunc i32 %xor72.i259.i.1 to i8
  store i8 %conv73.i260.i.1, i8* %arraydecay12.i, align 1
  %scevgep176.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %173 = load i8, i8* %scevgep176.2, align 1
  %conv68.i255.i.2 = zext i8 %173 to i32
  %174 = load i8, i8* %arraydecay12.i, align 1
  %conv71.i258.i.2 = zext i8 %174 to i32
  %xor72.i259.i.2 = xor i32 %conv71.i258.i.2, %conv68.i255.i.2
  %conv73.i260.i.2 = trunc i32 %xor72.i259.i.2 to i8
  store i8 %conv73.i260.i.2, i8* %arraydecay12.i, align 1
  %scevgep176.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  %175 = load i8, i8* %scevgep176.3, align 1
  %conv68.i255.i.3 = zext i8 %175 to i32
  %176 = load i8, i8* %arraydecay12.i, align 1
  %conv71.i258.i.3 = zext i8 %176 to i32
  %xor72.i259.i.3 = xor i32 %conv71.i258.i.3, %conv68.i255.i.3
  %conv73.i260.i.3 = trunc i32 %xor72.i259.i.3 to i8
  store i8 %conv73.i260.i.3, i8* %arraydecay12.i, align 1
  %scevgep175 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %177 = bitcast i8* %scevgep175 to [4 x [4 x i8]]*
  %arrayidx51.i240.i.1 = getelementptr inbounds i8, i8* %arraydecay10.i, i64 1
  %178 = load i8, i8* %arrayidx51.i240.i.1, align 1
  %arrayidx53.i242.i.1 = getelementptr inbounds i8, i8* %arraydecay11.i, i64 1
  %179 = load i8, i8* %arrayidx53.i242.i.1, align 1
  %call54.i243.i.1 = call zeroext i8 @mult(i8 zeroext %178, i8 zeroext %179) #3
  %arrayidx56.i245.i.1 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 1
  store i8 %call54.i243.i.1, i8* %arrayidx56.i245.i.1, align 1
  %arrayidx70.i257.i.1 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 1
  %scevgep176.1346 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %177, i64 0, i64 0, i64 0
  %180 = load i8, i8* %scevgep176.1346, align 1
  %conv68.i255.i.1347 = zext i8 %180 to i32
  %181 = load i8, i8* %arrayidx70.i257.i.1, align 1
  %conv71.i258.i.1348 = zext i8 %181 to i32
  %xor72.i259.i.1349 = xor i32 %conv71.i258.i.1348, %conv68.i255.i.1347
  %conv73.i260.i.1350 = trunc i32 %xor72.i259.i.1349 to i8
  store i8 %conv73.i260.i.1350, i8* %arrayidx70.i257.i.1, align 1
  %scevgep176.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %177, i64 0, i64 0, i64 2
  %182 = load i8, i8* %scevgep176.2.1, align 1
  %conv68.i255.i.2.1 = zext i8 %182 to i32
  %183 = load i8, i8* %arrayidx70.i257.i.1, align 1
  %conv71.i258.i.2.1 = zext i8 %183 to i32
  %xor72.i259.i.2.1 = xor i32 %conv71.i258.i.2.1, %conv68.i255.i.2.1
  %conv73.i260.i.2.1 = trunc i32 %xor72.i259.i.2.1 to i8
  store i8 %conv73.i260.i.2.1, i8* %arrayidx70.i257.i.1, align 1
  %scevgep176.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %177, i64 0, i64 0, i64 3
  %184 = load i8, i8* %scevgep176.3.1, align 1
  %conv68.i255.i.3.1 = zext i8 %184 to i32
  %185 = load i8, i8* %arrayidx70.i257.i.1, align 1
  %conv71.i258.i.3.1 = zext i8 %185 to i32
  %xor72.i259.i.3.1 = xor i32 %conv71.i258.i.3.1, %conv68.i255.i.3.1
  %conv73.i260.i.3.1 = trunc i32 %xor72.i259.i.3.1 to i8
  store i8 %conv73.i260.i.3.1, i8* %arrayidx70.i257.i.1, align 1
  %scevgep175.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %177, i64 0, i64 1, i64 0
  %186 = bitcast i8* %scevgep175.1 to [4 x [4 x i8]]*
  %arrayidx51.i240.i.2 = getelementptr inbounds i8, i8* %arraydecay10.i, i64 2
  %187 = load i8, i8* %arrayidx51.i240.i.2, align 1
  %arrayidx53.i242.i.2 = getelementptr inbounds i8, i8* %arraydecay11.i, i64 2
  %188 = load i8, i8* %arrayidx53.i242.i.2, align 1
  %call54.i243.i.2 = call zeroext i8 @mult(i8 zeroext %187, i8 zeroext %188) #3
  %arrayidx56.i245.i.2 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 2
  store i8 %call54.i243.i.2, i8* %arrayidx56.i245.i.2, align 1
  %arrayidx70.i257.i.2 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 2
  %scevgep176.2355 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %186, i64 0, i64 0, i64 0
  %189 = load i8, i8* %scevgep176.2355, align 1
  %conv68.i255.i.2356 = zext i8 %189 to i32
  %190 = load i8, i8* %arrayidx70.i257.i.2, align 1
  %conv71.i258.i.2357 = zext i8 %190 to i32
  %xor72.i259.i.2358 = xor i32 %conv71.i258.i.2357, %conv68.i255.i.2356
  %conv73.i260.i.2359 = trunc i32 %xor72.i259.i.2358 to i8
  store i8 %conv73.i260.i.2359, i8* %arrayidx70.i257.i.2, align 1
  %scevgep176.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %186, i64 0, i64 0, i64 1
  %191 = load i8, i8* %scevgep176.1.2, align 1
  %conv68.i255.i.1.2 = zext i8 %191 to i32
  %192 = load i8, i8* %arrayidx70.i257.i.2, align 1
  %conv71.i258.i.1.2 = zext i8 %192 to i32
  %xor72.i259.i.1.2 = xor i32 %conv71.i258.i.1.2, %conv68.i255.i.1.2
  %conv73.i260.i.1.2 = trunc i32 %xor72.i259.i.1.2 to i8
  store i8 %conv73.i260.i.1.2, i8* %arrayidx70.i257.i.2, align 1
  %scevgep176.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %186, i64 0, i64 0, i64 3
  %193 = load i8, i8* %scevgep176.3.2, align 1
  %conv68.i255.i.3.2 = zext i8 %193 to i32
  %194 = load i8, i8* %arrayidx70.i257.i.2, align 1
  %conv71.i258.i.3.2 = zext i8 %194 to i32
  %xor72.i259.i.3.2 = xor i32 %conv71.i258.i.3.2, %conv68.i255.i.3.2
  %conv73.i260.i.3.2 = trunc i32 %xor72.i259.i.3.2 to i8
  store i8 %conv73.i260.i.3.2, i8* %arrayidx70.i257.i.2, align 1
  %scevgep175.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %186, i64 0, i64 1, i64 0
  %195 = bitcast i8* %scevgep175.2 to [4 x [4 x i8]]*
  %arrayidx51.i240.i.3 = getelementptr inbounds i8, i8* %arraydecay10.i, i64 3
  %196 = load i8, i8* %arrayidx51.i240.i.3, align 1
  %arrayidx53.i242.i.3 = getelementptr inbounds i8, i8* %arraydecay11.i, i64 3
  %197 = load i8, i8* %arrayidx53.i242.i.3, align 1
  %call54.i243.i.3 = call zeroext i8 @mult(i8 zeroext %196, i8 zeroext %197) #3
  %arrayidx56.i245.i.3 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 3
  store i8 %call54.i243.i.3, i8* %arrayidx56.i245.i.3, align 1
  %arrayidx70.i257.i.3 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 3
  %scevgep176.3364 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %195, i64 0, i64 0, i64 0
  %198 = load i8, i8* %scevgep176.3364, align 1
  %conv68.i255.i.3365 = zext i8 %198 to i32
  %199 = load i8, i8* %arrayidx70.i257.i.3, align 1
  %conv71.i258.i.3366 = zext i8 %199 to i32
  %xor72.i259.i.3367 = xor i32 %conv71.i258.i.3366, %conv68.i255.i.3365
  %conv73.i260.i.3368 = trunc i32 %xor72.i259.i.3367 to i8
  store i8 %conv73.i260.i.3368, i8* %arrayidx70.i257.i.3, align 1
  %scevgep176.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %195, i64 0, i64 0, i64 1
  %200 = load i8, i8* %scevgep176.1.3, align 1
  %conv68.i255.i.1.3 = zext i8 %200 to i32
  %201 = load i8, i8* %arrayidx70.i257.i.3, align 1
  %conv71.i258.i.1.3 = zext i8 %201 to i32
  %xor72.i259.i.1.3 = xor i32 %conv71.i258.i.1.3, %conv68.i255.i.1.3
  %conv73.i260.i.1.3 = trunc i32 %xor72.i259.i.1.3 to i8
  store i8 %conv73.i260.i.1.3, i8* %arrayidx70.i257.i.3, align 1
  %scevgep176.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %195, i64 0, i64 0, i64 2
  %202 = load i8, i8* %scevgep176.2.3, align 1
  %conv68.i255.i.2.3 = zext i8 %202 to i32
  %203 = load i8, i8* %arrayidx70.i257.i.3, align 1
  %conv71.i258.i.2.3 = zext i8 %203 to i32
  %xor72.i259.i.2.3 = xor i32 %conv71.i258.i.2.3, %conv68.i255.i.2.3
  %conv73.i260.i.2.3 = trunc i32 %xor72.i259.i.2.3 to i8
  store i8 %conv73.i260.i.2.3, i8* %arrayidx70.i257.i.3, align 1
  %call80.i266.i = call zeroext i8 @mult(i8 zeroext %call.i165.i, i8 zeroext %call1.i166.i) #3
  %conv81.i267.i = zext i8 %call80.i266.i to i32
  %scevgep166 = getelementptr [4 x i8], [4 x i8]* %v.i, i64 0, i64 0
  %204 = load i8, i8* %scevgep166, align 1
  %scevgep166.1 = getelementptr [4 x i8], [4 x i8]* %v.i, i64 0, i64 1
  %205 = load i8, i8* %scevgep166.1, align 1
  %conv.i.i113.i274.i.1 = zext i8 %205 to i32
  %conv1.i.i114.i275.i.1 = zext i8 %204 to i32
  %xor.i.i115.i276.i.1 = xor i32 %conv1.i.i114.i275.i.1, %conv.i.i113.i274.i.1
  %conv2.i.i116.i277.i.1 = trunc i32 %xor.i.i115.i276.i.1 to i8
  %scevgep166.2 = getelementptr [4 x i8], [4 x i8]* %v.i, i64 0, i64 2
  %206 = load i8, i8* %scevgep166.2, align 1
  %conv.i.i113.i274.i.2 = zext i8 %206 to i32
  %conv1.i.i114.i275.i.2 = zext i8 %conv2.i.i116.i277.i.1 to i32
  %xor.i.i115.i276.i.2 = xor i32 %conv1.i.i114.i275.i.2, %conv.i.i113.i274.i.2
  %conv2.i.i116.i277.i.2 = trunc i32 %xor.i.i115.i276.i.2 to i8
  %scevgep166.3 = getelementptr [4 x i8], [4 x i8]* %v.i, i64 0, i64 3
  %207 = load i8, i8* %scevgep166.3, align 1
  %conv.i.i113.i274.i.3 = zext i8 %207 to i32
  %conv1.i.i114.i275.i.3 = zext i8 %conv2.i.i116.i277.i.2 to i32
  %xor.i.i115.i276.i.3 = xor i32 %conv1.i.i114.i275.i.3, %conv.i.i113.i274.i.3
  %conv2.i.i116.i277.i.3 = trunc i32 %xor.i.i115.i276.i.3 to i8
  %conv83.i280.i = zext i8 %conv2.i.i116.i277.i.3 to i32
  %cmp84.i281.i = icmp eq i32 %conv81.i267.i, %conv83.i280.i
  call void @assert(i1 zeroext %cmp84.i281.i) #3
  %scevgep161 = getelementptr [4 x i8], [4 x i8]* %v.i, i64 0, i64 0
  %208 = load i8, i8* %scevgep161, align 1
  %call.i291.i = call zeroext i8 @exp16(i8 zeroext %208) #3
  %scevgep162 = getelementptr [4 x i8], [4 x i8]* %v.i, i64 0, i64 0
  store i8 %call.i291.i, i8* %scevgep162, align 1
  %scevgep161.1 = getelementptr [4 x i8], [4 x i8]* %v.i, i64 0, i64 1
  %209 = load i8, i8* %scevgep161.1, align 1
  %call.i291.i.1 = call zeroext i8 @exp16(i8 zeroext %209) #3
  %scevgep162.1 = getelementptr [4 x i8], [4 x i8]* %v.i, i64 0, i64 1
  store i8 %call.i291.i.1, i8* %scevgep162.1, align 1
  %scevgep161.2 = getelementptr [4 x i8], [4 x i8]* %v.i, i64 0, i64 2
  %210 = load i8, i8* %scevgep161.2, align 1
  %call.i291.i.2 = call zeroext i8 @exp16(i8 zeroext %210) #3
  %scevgep162.2 = getelementptr [4 x i8], [4 x i8]* %v.i, i64 0, i64 2
  store i8 %call.i291.i.2, i8* %scevgep162.2, align 1
  %scevgep161.3 = getelementptr [4 x i8], [4 x i8]* %v.i, i64 0, i64 3
  %211 = load i8, i8* %scevgep161.3, align 1
  %call.i291.i.3 = call zeroext i8 @exp16(i8 zeroext %211) #3
  %scevgep162.3 = getelementptr [4 x i8], [4 x i8]* %v.i, i64 0, i64 3
  store i8 %call.i291.i.3, i8* %scevgep162.3, align 1
  %arraydecay15.i = getelementptr inbounds [4 x i8], [4 x i8]* %v.i, i64 0, i64 0
  %arraydecay16.i = getelementptr inbounds [4 x i8], [4 x i8]* %w.i, i64 0, i64 0
  %arraydecay17.i = getelementptr inbounds [4 x i8], [4 x i8]* %m.i, i64 0, i64 0
  %call.i323.i = call zeroext i8 (...) @rand() #3
  %call1.i324.i = call zeroext i8 (...) @rand() #3
  %conv.i325.i = zext i8 %call.i323.i to i32
  %scevgep157 = getelementptr [4 x i8], [4 x i8]* %v.i, i64 0, i64 0
  %212 = load i8, i8* %scevgep157, align 1
  %scevgep157.1 = getelementptr [4 x i8], [4 x i8]* %v.i, i64 0, i64 1
  %213 = load i8, i8* %scevgep157.1, align 1
  %conv.i.i.i331.i.1 = zext i8 %213 to i32
  %conv1.i.i.i332.i.1 = zext i8 %212 to i32
  %xor.i.i.i333.i.1 = xor i32 %conv1.i.i.i332.i.1, %conv.i.i.i331.i.1
  %conv2.i.i.i334.i.1 = trunc i32 %xor.i.i.i333.i.1 to i8
  %scevgep157.2 = getelementptr [4 x i8], [4 x i8]* %v.i, i64 0, i64 2
  %214 = load i8, i8* %scevgep157.2, align 1
  %conv.i.i.i331.i.2 = zext i8 %214 to i32
  %conv1.i.i.i332.i.2 = zext i8 %conv2.i.i.i334.i.1 to i32
  %xor.i.i.i333.i.2 = xor i32 %conv1.i.i.i332.i.2, %conv.i.i.i331.i.2
  %conv2.i.i.i334.i.2 = trunc i32 %xor.i.i.i333.i.2 to i8
  %scevgep157.3 = getelementptr [4 x i8], [4 x i8]* %v.i, i64 0, i64 3
  %215 = load i8, i8* %scevgep157.3, align 1
  %conv.i.i.i331.i.3 = zext i8 %215 to i32
  %conv1.i.i.i332.i.3 = zext i8 %conv2.i.i.i334.i.2 to i32
  %xor.i.i.i333.i.3 = xor i32 %conv1.i.i.i332.i.3, %conv.i.i.i331.i.3
  %conv2.i.i.i334.i.3 = trunc i32 %xor.i.i.i333.i.3 to i8
  %conv3.i337.i = zext i8 %conv2.i.i.i334.i.3 to i32
  %cmp.i338.i = icmp eq i32 %conv.i325.i, %conv3.i337.i
  call void @assume(i1 zeroext %cmp.i338.i) #3
  %conv5.i339.i = zext i8 %call1.i324.i to i32
  %scevgep153 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 0
  %216 = load i8, i8* %scevgep153, align 1
  %scevgep153.1 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 1
  %217 = load i8, i8* %scevgep153.1, align 1
  %conv.i.i96.i346.i.1 = zext i8 %217 to i32
  %conv1.i.i97.i347.i.1 = zext i8 %216 to i32
  %xor.i.i98.i348.i.1 = xor i32 %conv1.i.i97.i347.i.1, %conv.i.i96.i346.i.1
  %conv2.i.i99.i349.i.1 = trunc i32 %xor.i.i98.i348.i.1 to i8
  %scevgep153.2 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 2
  %218 = load i8, i8* %scevgep153.2, align 1
  %conv.i.i96.i346.i.2 = zext i8 %218 to i32
  %conv1.i.i97.i347.i.2 = zext i8 %conv2.i.i99.i349.i.1 to i32
  %xor.i.i98.i348.i.2 = xor i32 %conv1.i.i97.i347.i.2, %conv.i.i96.i346.i.2
  %conv2.i.i99.i349.i.2 = trunc i32 %xor.i.i98.i348.i.2 to i8
  %scevgep153.3 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 3
  %219 = load i8, i8* %scevgep153.3, align 1
  %conv.i.i96.i346.i.3 = zext i8 %219 to i32
  %conv1.i.i97.i347.i.3 = zext i8 %conv2.i.i99.i349.i.2 to i32
  %xor.i.i98.i348.i.3 = xor i32 %conv1.i.i97.i347.i.3, %conv.i.i96.i346.i.3
  %conv2.i.i99.i349.i.3 = trunc i32 %xor.i.i98.i348.i.3 to i8
  %conv7.i352.i = zext i8 %conv2.i.i99.i349.i.3 to i32
  %cmp8.i353.i = icmp eq i32 %conv5.i339.i, %conv7.i352.i
  call void @assume(i1 zeroext %cmp8.i353.i) #3
  %call16.i361.i = call zeroext i8 (...) @rand() #3
  %scevgep137 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  store i8 %call16.i361.i, i8* %scevgep137, align 1
  %scevgep138 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %220 = load i8, i8* %scevgep138, align 1
  %conv23.i370.i = zext i8 %220 to i32
  %221 = load i8, i8* %arraydecay15.i, align 1
  %scevgep141 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 1
  %222 = load i8, i8* %scevgep141, align 1
  %call28.i375.i = call zeroext i8 @mult(i8 zeroext %221, i8 zeroext %222) #3
  %conv29.i376.i = zext i8 %call28.i375.i to i32
  %xor.i377.i = xor i32 %conv23.i370.i, %conv29.i376.i
  %scevgep144 = getelementptr [4 x i8], [4 x i8]* %v.i, i64 0, i64 1
  %223 = load i8, i8* %scevgep144, align 1
  %224 = load i8, i8* %arraydecay16.i, align 1
  %call34.i382.i = call zeroext i8 @mult(i8 zeroext %223, i8 zeroext %224) #3
  %conv35.i383.i = zext i8 %call34.i382.i to i32
  %xor36.i384.i = xor i32 %xor.i377.i, %conv35.i383.i
  %conv37.i385.i = trunc i32 %xor36.i384.i to i8
  %scevgep145 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  store i8 %conv37.i385.i, i8* %scevgep145, align 1
  %call16.i361.i.1427 = call zeroext i8 (...) @rand() #3
  %scevgep137.1428 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  store i8 %call16.i361.i.1427, i8* %scevgep137.1428, align 1
  %scevgep138.1429 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %225 = load i8, i8* %scevgep138.1429, align 1
  %conv23.i370.i.1430 = zext i8 %225 to i32
  %226 = load i8, i8* %arraydecay15.i, align 1
  %scevgep141.1431 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 2
  %227 = load i8, i8* %scevgep141.1431, align 1
  %call28.i375.i.1432 = call zeroext i8 @mult(i8 zeroext %226, i8 zeroext %227) #3
  %conv29.i376.i.1433 = zext i8 %call28.i375.i.1432 to i32
  %xor.i377.i.1434 = xor i32 %conv23.i370.i.1430, %conv29.i376.i.1433
  %scevgep144.1435 = getelementptr [4 x i8], [4 x i8]* %v.i, i64 0, i64 2
  %228 = load i8, i8* %scevgep144.1435, align 1
  %229 = load i8, i8* %arraydecay16.i, align 1
  %call34.i382.i.1436 = call zeroext i8 @mult(i8 zeroext %228, i8 zeroext %229) #3
  %conv35.i383.i.1437 = zext i8 %call34.i382.i.1436 to i32
  %xor36.i384.i.1438 = xor i32 %xor.i377.i.1434, %conv35.i383.i.1437
  %conv37.i385.i.1439 = trunc i32 %xor36.i384.i.1438 to i8
  %scevgep145.1440 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 2, i64 0
  store i8 %conv37.i385.i.1439, i8* %scevgep145.1440, align 1
  %call16.i361.i.2442 = call zeroext i8 (...) @rand() #3
  %scevgep137.2443 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  store i8 %call16.i361.i.2442, i8* %scevgep137.2443, align 1
  %scevgep138.2444 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  %230 = load i8, i8* %scevgep138.2444, align 1
  %conv23.i370.i.2445 = zext i8 %230 to i32
  %231 = load i8, i8* %arraydecay15.i, align 1
  %scevgep141.2446 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 3
  %232 = load i8, i8* %scevgep141.2446, align 1
  %call28.i375.i.2447 = call zeroext i8 @mult(i8 zeroext %231, i8 zeroext %232) #3
  %conv29.i376.i.2448 = zext i8 %call28.i375.i.2447 to i32
  %xor.i377.i.2449 = xor i32 %conv23.i370.i.2445, %conv29.i376.i.2448
  %scevgep144.2450 = getelementptr [4 x i8], [4 x i8]* %v.i, i64 0, i64 3
  %233 = load i8, i8* %scevgep144.2450, align 1
  %234 = load i8, i8* %arraydecay16.i, align 1
  %call34.i382.i.2451 = call zeroext i8 @mult(i8 zeroext %233, i8 zeroext %234) #3
  %conv35.i383.i.2452 = zext i8 %call34.i382.i.2451 to i32
  %xor36.i384.i.2453 = xor i32 %xor.i377.i.2449, %conv35.i383.i.2452
  %conv37.i385.i.2454 = trunc i32 %xor36.i384.i.2453 to i8
  %scevgep145.2455 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 3, i64 0
  store i8 %conv37.i385.i.2454, i8* %scevgep145.2455, align 1
  %scevgep134 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 1, i64 1
  %235 = bitcast i8* %scevgep134 to [4 x [4 x i8]]*
  %scevgep140 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 1
  %236 = bitcast i8* %scevgep140 to [4 x i8]*
  %scevgep143 = getelementptr [4 x i8], [4 x i8]* %v.i, i64 0, i64 1
  %237 = bitcast i8* %scevgep143 to [4 x i8]*
  %arrayidx25.i372.i.1 = getelementptr inbounds i8, i8* %arraydecay15.i, i64 1
  %arrayidx33.i381.i.1 = getelementptr inbounds i8, i8* %arraydecay16.i, i64 1
  %call16.i361.i.1 = call zeroext i8 (...) @rand() #3
  %scevgep137.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %235, i64 0, i64 0, i64 1
  store i8 %call16.i361.i.1, i8* %scevgep137.1, align 1
  %scevgep138.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %235, i64 0, i64 0, i64 1
  %238 = load i8, i8* %scevgep138.1, align 1
  %conv23.i370.i.1 = zext i8 %238 to i32
  %239 = load i8, i8* %arrayidx25.i372.i.1, align 1
  %scevgep141.1 = getelementptr [4 x i8], [4 x i8]* %236, i64 0, i64 1
  %240 = load i8, i8* %scevgep141.1, align 1
  %call28.i375.i.1 = call zeroext i8 @mult(i8 zeroext %239, i8 zeroext %240) #3
  %conv29.i376.i.1 = zext i8 %call28.i375.i.1 to i32
  %xor.i377.i.1 = xor i32 %conv23.i370.i.1, %conv29.i376.i.1
  %scevgep144.1 = getelementptr [4 x i8], [4 x i8]* %237, i64 0, i64 1
  %241 = load i8, i8* %scevgep144.1, align 1
  %242 = load i8, i8* %arrayidx33.i381.i.1, align 1
  %call34.i382.i.1 = call zeroext i8 @mult(i8 zeroext %241, i8 zeroext %242) #3
  %conv35.i383.i.1 = zext i8 %call34.i382.i.1 to i32
  %xor36.i384.i.1 = xor i32 %xor.i377.i.1, %conv35.i383.i.1
  %conv37.i385.i.1 = trunc i32 %xor36.i384.i.1 to i8
  %scevgep145.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %235, i64 0, i64 1, i64 0
  store i8 %conv37.i385.i.1, i8* %scevgep145.1, align 1
  %call16.i361.i.1.1 = call zeroext i8 (...) @rand() #3
  %scevgep137.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %235, i64 0, i64 0, i64 2
  store i8 %call16.i361.i.1.1, i8* %scevgep137.1.1, align 1
  %scevgep138.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %235, i64 0, i64 0, i64 2
  %243 = load i8, i8* %scevgep138.1.1, align 1
  %conv23.i370.i.1.1 = zext i8 %243 to i32
  %244 = load i8, i8* %arrayidx25.i372.i.1, align 1
  %scevgep141.1.1 = getelementptr [4 x i8], [4 x i8]* %236, i64 0, i64 2
  %245 = load i8, i8* %scevgep141.1.1, align 1
  %call28.i375.i.1.1 = call zeroext i8 @mult(i8 zeroext %244, i8 zeroext %245) #3
  %conv29.i376.i.1.1 = zext i8 %call28.i375.i.1.1 to i32
  %xor.i377.i.1.1 = xor i32 %conv23.i370.i.1.1, %conv29.i376.i.1.1
  %scevgep144.1.1 = getelementptr [4 x i8], [4 x i8]* %237, i64 0, i64 2
  %246 = load i8, i8* %scevgep144.1.1, align 1
  %247 = load i8, i8* %arrayidx33.i381.i.1, align 1
  %call34.i382.i.1.1 = call zeroext i8 @mult(i8 zeroext %246, i8 zeroext %247) #3
  %conv35.i383.i.1.1 = zext i8 %call34.i382.i.1.1 to i32
  %xor36.i384.i.1.1 = xor i32 %xor.i377.i.1.1, %conv35.i383.i.1.1
  %conv37.i385.i.1.1 = trunc i32 %xor36.i384.i.1.1 to i8
  %scevgep145.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %235, i64 0, i64 2, i64 0
  store i8 %conv37.i385.i.1.1, i8* %scevgep145.1.1, align 1
  %scevgep134.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %235, i64 0, i64 1, i64 1
  %248 = bitcast i8* %scevgep134.1 to [4 x [4 x i8]]*
  %scevgep140.1 = getelementptr [4 x i8], [4 x i8]* %236, i64 0, i64 1
  %249 = bitcast i8* %scevgep140.1 to [4 x i8]*
  %scevgep143.1 = getelementptr [4 x i8], [4 x i8]* %237, i64 0, i64 1
  %250 = bitcast i8* %scevgep143.1 to [4 x i8]*
  %arrayidx25.i372.i.2 = getelementptr inbounds i8, i8* %arraydecay15.i, i64 2
  %arrayidx33.i381.i.2 = getelementptr inbounds i8, i8* %arraydecay16.i, i64 2
  %call16.i361.i.2 = call zeroext i8 (...) @rand() #3
  %scevgep137.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %248, i64 0, i64 0, i64 1
  store i8 %call16.i361.i.2, i8* %scevgep137.2, align 1
  %scevgep138.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %248, i64 0, i64 0, i64 1
  %251 = load i8, i8* %scevgep138.2, align 1
  %conv23.i370.i.2 = zext i8 %251 to i32
  %252 = load i8, i8* %arrayidx25.i372.i.2, align 1
  %scevgep141.2 = getelementptr [4 x i8], [4 x i8]* %249, i64 0, i64 1
  %253 = load i8, i8* %scevgep141.2, align 1
  %call28.i375.i.2 = call zeroext i8 @mult(i8 zeroext %252, i8 zeroext %253) #3
  %conv29.i376.i.2 = zext i8 %call28.i375.i.2 to i32
  %xor.i377.i.2 = xor i32 %conv23.i370.i.2, %conv29.i376.i.2
  %scevgep144.2 = getelementptr [4 x i8], [4 x i8]* %250, i64 0, i64 1
  %254 = load i8, i8* %scevgep144.2, align 1
  %255 = load i8, i8* %arrayidx33.i381.i.2, align 1
  %call34.i382.i.2 = call zeroext i8 @mult(i8 zeroext %254, i8 zeroext %255) #3
  %conv35.i383.i.2 = zext i8 %call34.i382.i.2 to i32
  %xor36.i384.i.2 = xor i32 %xor.i377.i.2, %conv35.i383.i.2
  %conv37.i385.i.2 = trunc i32 %xor36.i384.i.2 to i8
  %scevgep145.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %248, i64 0, i64 1, i64 0
  store i8 %conv37.i385.i.2, i8* %scevgep145.2, align 1
  %256 = load i8, i8* %arraydecay15.i, align 1
  %257 = load i8, i8* %arraydecay16.i, align 1
  %call54.i401.i = call zeroext i8 @mult(i8 zeroext %256, i8 zeroext %257) #3
  store i8 %call54.i401.i, i8* %arraydecay17.i, align 1
  %scevgep129.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %258 = load i8, i8* %scevgep129.1, align 1
  %conv68.i413.i.1 = zext i8 %258 to i32
  %259 = load i8, i8* %arraydecay17.i, align 1
  %conv71.i416.i.1 = zext i8 %259 to i32
  %xor72.i417.i.1 = xor i32 %conv71.i416.i.1, %conv68.i413.i.1
  %conv73.i418.i.1 = trunc i32 %xor72.i417.i.1 to i8
  store i8 %conv73.i418.i.1, i8* %arraydecay17.i, align 1
  %scevgep129.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %260 = load i8, i8* %scevgep129.2, align 1
  %conv68.i413.i.2 = zext i8 %260 to i32
  %261 = load i8, i8* %arraydecay17.i, align 1
  %conv71.i416.i.2 = zext i8 %261 to i32
  %xor72.i417.i.2 = xor i32 %conv71.i416.i.2, %conv68.i413.i.2
  %conv73.i418.i.2 = trunc i32 %xor72.i417.i.2 to i8
  store i8 %conv73.i418.i.2, i8* %arraydecay17.i, align 1
  %scevgep129.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  %262 = load i8, i8* %scevgep129.3, align 1
  %conv68.i413.i.3 = zext i8 %262 to i32
  %263 = load i8, i8* %arraydecay17.i, align 1
  %conv71.i416.i.3 = zext i8 %263 to i32
  %xor72.i417.i.3 = xor i32 %conv71.i416.i.3, %conv68.i413.i.3
  %conv73.i418.i.3 = trunc i32 %xor72.i417.i.3 to i8
  store i8 %conv73.i418.i.3, i8* %arraydecay17.i, align 1
  %scevgep128 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %264 = bitcast i8* %scevgep128 to [4 x [4 x i8]]*
  %arrayidx51.i398.i.1 = getelementptr inbounds i8, i8* %arraydecay15.i, i64 1
  %265 = load i8, i8* %arrayidx51.i398.i.1, align 1
  %arrayidx53.i400.i.1 = getelementptr inbounds i8, i8* %arraydecay16.i, i64 1
  %266 = load i8, i8* %arrayidx53.i400.i.1, align 1
  %call54.i401.i.1 = call zeroext i8 @mult(i8 zeroext %265, i8 zeroext %266) #3
  %arrayidx56.i403.i.1 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 1
  store i8 %call54.i401.i.1, i8* %arrayidx56.i403.i.1, align 1
  %arrayidx70.i415.i.1 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 1
  %scevgep129.1319 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %264, i64 0, i64 0, i64 0
  %267 = load i8, i8* %scevgep129.1319, align 1
  %conv68.i413.i.1320 = zext i8 %267 to i32
  %268 = load i8, i8* %arrayidx70.i415.i.1, align 1
  %conv71.i416.i.1321 = zext i8 %268 to i32
  %xor72.i417.i.1322 = xor i32 %conv71.i416.i.1321, %conv68.i413.i.1320
  %conv73.i418.i.1323 = trunc i32 %xor72.i417.i.1322 to i8
  store i8 %conv73.i418.i.1323, i8* %arrayidx70.i415.i.1, align 1
  %scevgep129.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %264, i64 0, i64 0, i64 2
  %269 = load i8, i8* %scevgep129.2.1, align 1
  %conv68.i413.i.2.1 = zext i8 %269 to i32
  %270 = load i8, i8* %arrayidx70.i415.i.1, align 1
  %conv71.i416.i.2.1 = zext i8 %270 to i32
  %xor72.i417.i.2.1 = xor i32 %conv71.i416.i.2.1, %conv68.i413.i.2.1
  %conv73.i418.i.2.1 = trunc i32 %xor72.i417.i.2.1 to i8
  store i8 %conv73.i418.i.2.1, i8* %arrayidx70.i415.i.1, align 1
  %scevgep129.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %264, i64 0, i64 0, i64 3
  %271 = load i8, i8* %scevgep129.3.1, align 1
  %conv68.i413.i.3.1 = zext i8 %271 to i32
  %272 = load i8, i8* %arrayidx70.i415.i.1, align 1
  %conv71.i416.i.3.1 = zext i8 %272 to i32
  %xor72.i417.i.3.1 = xor i32 %conv71.i416.i.3.1, %conv68.i413.i.3.1
  %conv73.i418.i.3.1 = trunc i32 %xor72.i417.i.3.1 to i8
  store i8 %conv73.i418.i.3.1, i8* %arrayidx70.i415.i.1, align 1
  %scevgep128.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %264, i64 0, i64 1, i64 0
  %273 = bitcast i8* %scevgep128.1 to [4 x [4 x i8]]*
  %arrayidx51.i398.i.2 = getelementptr inbounds i8, i8* %arraydecay15.i, i64 2
  %274 = load i8, i8* %arrayidx51.i398.i.2, align 1
  %arrayidx53.i400.i.2 = getelementptr inbounds i8, i8* %arraydecay16.i, i64 2
  %275 = load i8, i8* %arrayidx53.i400.i.2, align 1
  %call54.i401.i.2 = call zeroext i8 @mult(i8 zeroext %274, i8 zeroext %275) #3
  %arrayidx56.i403.i.2 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 2
  store i8 %call54.i401.i.2, i8* %arrayidx56.i403.i.2, align 1
  %arrayidx70.i415.i.2 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 2
  %scevgep129.2328 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %273, i64 0, i64 0, i64 0
  %276 = load i8, i8* %scevgep129.2328, align 1
  %conv68.i413.i.2329 = zext i8 %276 to i32
  %277 = load i8, i8* %arrayidx70.i415.i.2, align 1
  %conv71.i416.i.2330 = zext i8 %277 to i32
  %xor72.i417.i.2331 = xor i32 %conv71.i416.i.2330, %conv68.i413.i.2329
  %conv73.i418.i.2332 = trunc i32 %xor72.i417.i.2331 to i8
  store i8 %conv73.i418.i.2332, i8* %arrayidx70.i415.i.2, align 1
  %scevgep129.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %273, i64 0, i64 0, i64 1
  %278 = load i8, i8* %scevgep129.1.2, align 1
  %conv68.i413.i.1.2 = zext i8 %278 to i32
  %279 = load i8, i8* %arrayidx70.i415.i.2, align 1
  %conv71.i416.i.1.2 = zext i8 %279 to i32
  %xor72.i417.i.1.2 = xor i32 %conv71.i416.i.1.2, %conv68.i413.i.1.2
  %conv73.i418.i.1.2 = trunc i32 %xor72.i417.i.1.2 to i8
  store i8 %conv73.i418.i.1.2, i8* %arrayidx70.i415.i.2, align 1
  %scevgep129.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %273, i64 0, i64 0, i64 3
  %280 = load i8, i8* %scevgep129.3.2, align 1
  %conv68.i413.i.3.2 = zext i8 %280 to i32
  %281 = load i8, i8* %arrayidx70.i415.i.2, align 1
  %conv71.i416.i.3.2 = zext i8 %281 to i32
  %xor72.i417.i.3.2 = xor i32 %conv71.i416.i.3.2, %conv68.i413.i.3.2
  %conv73.i418.i.3.2 = trunc i32 %xor72.i417.i.3.2 to i8
  store i8 %conv73.i418.i.3.2, i8* %arrayidx70.i415.i.2, align 1
  %scevgep128.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %273, i64 0, i64 1, i64 0
  %282 = bitcast i8* %scevgep128.2 to [4 x [4 x i8]]*
  %arrayidx51.i398.i.3 = getelementptr inbounds i8, i8* %arraydecay15.i, i64 3
  %283 = load i8, i8* %arrayidx51.i398.i.3, align 1
  %arrayidx53.i400.i.3 = getelementptr inbounds i8, i8* %arraydecay16.i, i64 3
  %284 = load i8, i8* %arrayidx53.i400.i.3, align 1
  %call54.i401.i.3 = call zeroext i8 @mult(i8 zeroext %283, i8 zeroext %284) #3
  %arrayidx56.i403.i.3 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 3
  store i8 %call54.i401.i.3, i8* %arrayidx56.i403.i.3, align 1
  %arrayidx70.i415.i.3 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 3
  %scevgep129.3337 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %282, i64 0, i64 0, i64 0
  %285 = load i8, i8* %scevgep129.3337, align 1
  %conv68.i413.i.3338 = zext i8 %285 to i32
  %286 = load i8, i8* %arrayidx70.i415.i.3, align 1
  %conv71.i416.i.3339 = zext i8 %286 to i32
  %xor72.i417.i.3340 = xor i32 %conv71.i416.i.3339, %conv68.i413.i.3338
  %conv73.i418.i.3341 = trunc i32 %xor72.i417.i.3340 to i8
  store i8 %conv73.i418.i.3341, i8* %arrayidx70.i415.i.3, align 1
  %scevgep129.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %282, i64 0, i64 0, i64 1
  %287 = load i8, i8* %scevgep129.1.3, align 1
  %conv68.i413.i.1.3 = zext i8 %287 to i32
  %288 = load i8, i8* %arrayidx70.i415.i.3, align 1
  %conv71.i416.i.1.3 = zext i8 %288 to i32
  %xor72.i417.i.1.3 = xor i32 %conv71.i416.i.1.3, %conv68.i413.i.1.3
  %conv73.i418.i.1.3 = trunc i32 %xor72.i417.i.1.3 to i8
  store i8 %conv73.i418.i.1.3, i8* %arrayidx70.i415.i.3, align 1
  %scevgep129.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %282, i64 0, i64 0, i64 2
  %289 = load i8, i8* %scevgep129.2.3, align 1
  %conv68.i413.i.2.3 = zext i8 %289 to i32
  %290 = load i8, i8* %arrayidx70.i415.i.3, align 1
  %conv71.i416.i.2.3 = zext i8 %290 to i32
  %xor72.i417.i.2.3 = xor i32 %conv71.i416.i.2.3, %conv68.i413.i.2.3
  %conv73.i418.i.2.3 = trunc i32 %xor72.i417.i.2.3 to i8
  store i8 %conv73.i418.i.2.3, i8* %arrayidx70.i415.i.3, align 1
  %call80.i424.i = call zeroext i8 @mult(i8 zeroext %call.i323.i, i8 zeroext %call1.i324.i) #3
  %conv81.i425.i = zext i8 %call80.i424.i to i32
  %scevgep119 = getelementptr [4 x i8], [4 x i8]* %m.i, i64 0, i64 0
  %291 = load i8, i8* %scevgep119, align 1
  %scevgep119.1 = getelementptr [4 x i8], [4 x i8]* %m.i, i64 0, i64 1
  %292 = load i8, i8* %scevgep119.1, align 1
  %conv.i.i113.i432.i.1 = zext i8 %292 to i32
  %conv1.i.i114.i433.i.1 = zext i8 %291 to i32
  %xor.i.i115.i434.i.1 = xor i32 %conv1.i.i114.i433.i.1, %conv.i.i113.i432.i.1
  %conv2.i.i116.i435.i.1 = trunc i32 %xor.i.i115.i434.i.1 to i8
  %scevgep119.2 = getelementptr [4 x i8], [4 x i8]* %m.i, i64 0, i64 2
  %293 = load i8, i8* %scevgep119.2, align 1
  %conv.i.i113.i432.i.2 = zext i8 %293 to i32
  %conv1.i.i114.i433.i.2 = zext i8 %conv2.i.i116.i435.i.1 to i32
  %xor.i.i115.i434.i.2 = xor i32 %conv1.i.i114.i433.i.2, %conv.i.i113.i432.i.2
  %conv2.i.i116.i435.i.2 = trunc i32 %xor.i.i115.i434.i.2 to i8
  %scevgep119.3 = getelementptr [4 x i8], [4 x i8]* %m.i, i64 0, i64 3
  %294 = load i8, i8* %scevgep119.3, align 1
  %conv.i.i113.i432.i.3 = zext i8 %294 to i32
  %conv1.i.i114.i433.i.3 = zext i8 %conv2.i.i116.i435.i.2 to i32
  %xor.i.i115.i434.i.3 = xor i32 %conv1.i.i114.i433.i.3, %conv.i.i113.i432.i.3
  %conv2.i.i116.i435.i.3 = trunc i32 %xor.i.i115.i434.i.3 to i8
  %conv83.i438.i = zext i8 %conv2.i.i116.i435.i.3 to i32
  %cmp84.i439.i = icmp eq i32 %conv81.i425.i, %conv83.i438.i
  call void @assert(i1 zeroext %cmp84.i439.i) #3
  %arraydecay18.i = getelementptr inbounds [4 x i8], [4 x i8]* %m.i, i64 0, i64 0
  %arraydecay19.i = getelementptr inbounds [4 x i8], [4 x i8]* %z.i, i64 0, i64 0
  %call.i466.i = call zeroext i8 (...) @rand() #3
  %call1.i467.i = call zeroext i8 (...) @rand() #3
  %conv.i468.i = zext i8 %call.i466.i to i32
  %scevgep115 = getelementptr [4 x i8], [4 x i8]* %m.i, i64 0, i64 0
  %295 = load i8, i8* %scevgep115, align 1
  %scevgep115.1 = getelementptr [4 x i8], [4 x i8]* %m.i, i64 0, i64 1
  %296 = load i8, i8* %scevgep115.1, align 1
  %conv.i.i.i474.i.1 = zext i8 %296 to i32
  %conv1.i.i.i475.i.1 = zext i8 %295 to i32
  %xor.i.i.i476.i.1 = xor i32 %conv1.i.i.i475.i.1, %conv.i.i.i474.i.1
  %conv2.i.i.i477.i.1 = trunc i32 %xor.i.i.i476.i.1 to i8
  %scevgep115.2 = getelementptr [4 x i8], [4 x i8]* %m.i, i64 0, i64 2
  %297 = load i8, i8* %scevgep115.2, align 1
  %conv.i.i.i474.i.2 = zext i8 %297 to i32
  %conv1.i.i.i475.i.2 = zext i8 %conv2.i.i.i477.i.1 to i32
  %xor.i.i.i476.i.2 = xor i32 %conv1.i.i.i475.i.2, %conv.i.i.i474.i.2
  %conv2.i.i.i477.i.2 = trunc i32 %xor.i.i.i476.i.2 to i8
  %scevgep115.3 = getelementptr [4 x i8], [4 x i8]* %m.i, i64 0, i64 3
  %298 = load i8, i8* %scevgep115.3, align 1
  %conv.i.i.i474.i.3 = zext i8 %298 to i32
  %conv1.i.i.i475.i.3 = zext i8 %conv2.i.i.i477.i.2 to i32
  %xor.i.i.i476.i.3 = xor i32 %conv1.i.i.i475.i.3, %conv.i.i.i474.i.3
  %conv2.i.i.i477.i.3 = trunc i32 %xor.i.i.i476.i.3 to i8
  %conv3.i480.i = zext i8 %conv2.i.i.i477.i.3 to i32
  %cmp.i481.i = icmp eq i32 %conv.i468.i, %conv3.i480.i
  call void @assume(i1 zeroext %cmp.i481.i) #3
  %conv5.i482.i = zext i8 %call1.i467.i to i32
  %scevgep111 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 0
  %299 = load i8, i8* %scevgep111, align 1
  %scevgep111.1 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 1
  %300 = load i8, i8* %scevgep111.1, align 1
  %conv.i.i96.i489.i.1 = zext i8 %300 to i32
  %conv1.i.i97.i490.i.1 = zext i8 %299 to i32
  %xor.i.i98.i491.i.1 = xor i32 %conv1.i.i97.i490.i.1, %conv.i.i96.i489.i.1
  %conv2.i.i99.i492.i.1 = trunc i32 %xor.i.i98.i491.i.1 to i8
  %scevgep111.2 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 2
  %301 = load i8, i8* %scevgep111.2, align 1
  %conv.i.i96.i489.i.2 = zext i8 %301 to i32
  %conv1.i.i97.i490.i.2 = zext i8 %conv2.i.i99.i492.i.1 to i32
  %xor.i.i98.i491.i.2 = xor i32 %conv1.i.i97.i490.i.2, %conv.i.i96.i489.i.2
  %conv2.i.i99.i492.i.2 = trunc i32 %xor.i.i98.i491.i.2 to i8
  %scevgep111.3 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 3
  %302 = load i8, i8* %scevgep111.3, align 1
  %conv.i.i96.i489.i.3 = zext i8 %302 to i32
  %conv1.i.i97.i490.i.3 = zext i8 %conv2.i.i99.i492.i.2 to i32
  %xor.i.i98.i491.i.3 = xor i32 %conv1.i.i97.i490.i.3, %conv.i.i96.i489.i.3
  %conv2.i.i99.i492.i.3 = trunc i32 %xor.i.i98.i491.i.3 to i8
  %conv7.i495.i = zext i8 %conv2.i.i99.i492.i.3 to i32
  %cmp8.i496.i = icmp eq i32 %conv5.i482.i, %conv7.i495.i
  call void @assume(i1 zeroext %cmp8.i496.i) #3
  %call16.i504.i = call zeroext i8 (...) @rand() #3
  %scevgep95 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  store i8 %call16.i504.i, i8* %scevgep95, align 1
  %scevgep96 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %303 = load i8, i8* %scevgep96, align 1
  %conv23.i513.i = zext i8 %303 to i32
  %304 = load i8, i8* %arraydecay18.i, align 1
  %scevgep99 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 1
  %305 = load i8, i8* %scevgep99, align 1
  %call28.i518.i = call zeroext i8 @mult(i8 zeroext %304, i8 zeroext %305) #3
  %conv29.i519.i = zext i8 %call28.i518.i to i32
  %xor.i520.i = xor i32 %conv23.i513.i, %conv29.i519.i
  %scevgep102 = getelementptr [4 x i8], [4 x i8]* %m.i, i64 0, i64 1
  %306 = load i8, i8* %scevgep102, align 1
  %307 = load i8, i8* %arraydecay19.i, align 1
  %call34.i525.i = call zeroext i8 @mult(i8 zeroext %306, i8 zeroext %307) #3
  %conv35.i526.i = zext i8 %call34.i525.i to i32
  %xor36.i527.i = xor i32 %xor.i520.i, %conv35.i526.i
  %conv37.i528.i = trunc i32 %xor36.i527.i to i8
  %scevgep103 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  store i8 %conv37.i528.i, i8* %scevgep103, align 1
  %call16.i504.i.1398 = call zeroext i8 (...) @rand() #3
  %scevgep95.1399 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  store i8 %call16.i504.i.1398, i8* %scevgep95.1399, align 1
  %scevgep96.1400 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %308 = load i8, i8* %scevgep96.1400, align 1
  %conv23.i513.i.1401 = zext i8 %308 to i32
  %309 = load i8, i8* %arraydecay18.i, align 1
  %scevgep99.1402 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 2
  %310 = load i8, i8* %scevgep99.1402, align 1
  %call28.i518.i.1403 = call zeroext i8 @mult(i8 zeroext %309, i8 zeroext %310) #3
  %conv29.i519.i.1404 = zext i8 %call28.i518.i.1403 to i32
  %xor.i520.i.1405 = xor i32 %conv23.i513.i.1401, %conv29.i519.i.1404
  %scevgep102.1406 = getelementptr [4 x i8], [4 x i8]* %m.i, i64 0, i64 2
  %311 = load i8, i8* %scevgep102.1406, align 1
  %312 = load i8, i8* %arraydecay19.i, align 1
  %call34.i525.i.1407 = call zeroext i8 @mult(i8 zeroext %311, i8 zeroext %312) #3
  %conv35.i526.i.1408 = zext i8 %call34.i525.i.1407 to i32
  %xor36.i527.i.1409 = xor i32 %xor.i520.i.1405, %conv35.i526.i.1408
  %conv37.i528.i.1410 = trunc i32 %xor36.i527.i.1409 to i8
  %scevgep103.1411 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 2, i64 0
  store i8 %conv37.i528.i.1410, i8* %scevgep103.1411, align 1
  %call16.i504.i.2413 = call zeroext i8 (...) @rand() #3
  %scevgep95.2414 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  store i8 %call16.i504.i.2413, i8* %scevgep95.2414, align 1
  %scevgep96.2415 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  %313 = load i8, i8* %scevgep96.2415, align 1
  %conv23.i513.i.2416 = zext i8 %313 to i32
  %314 = load i8, i8* %arraydecay18.i, align 1
  %scevgep99.2417 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 3
  %315 = load i8, i8* %scevgep99.2417, align 1
  %call28.i518.i.2418 = call zeroext i8 @mult(i8 zeroext %314, i8 zeroext %315) #3
  %conv29.i519.i.2419 = zext i8 %call28.i518.i.2418 to i32
  %xor.i520.i.2420 = xor i32 %conv23.i513.i.2416, %conv29.i519.i.2419
  %scevgep102.2421 = getelementptr [4 x i8], [4 x i8]* %m.i, i64 0, i64 3
  %316 = load i8, i8* %scevgep102.2421, align 1
  %317 = load i8, i8* %arraydecay19.i, align 1
  %call34.i525.i.2422 = call zeroext i8 @mult(i8 zeroext %316, i8 zeroext %317) #3
  %conv35.i526.i.2423 = zext i8 %call34.i525.i.2422 to i32
  %xor36.i527.i.2424 = xor i32 %xor.i520.i.2420, %conv35.i526.i.2423
  %conv37.i528.i.2425 = trunc i32 %xor36.i527.i.2424 to i8
  %scevgep103.2426 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 3, i64 0
  store i8 %conv37.i528.i.2425, i8* %scevgep103.2426, align 1
  %scevgep92 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 1, i64 1
  %318 = bitcast i8* %scevgep92 to [4 x [4 x i8]]*
  %scevgep98 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 1
  %319 = bitcast i8* %scevgep98 to [4 x i8]*
  %scevgep101 = getelementptr [4 x i8], [4 x i8]* %m.i, i64 0, i64 1
  %320 = bitcast i8* %scevgep101 to [4 x i8]*
  %arrayidx25.i515.i.1 = getelementptr inbounds i8, i8* %arraydecay18.i, i64 1
  %arrayidx33.i524.i.1 = getelementptr inbounds i8, i8* %arraydecay19.i, i64 1
  %call16.i504.i.1 = call zeroext i8 (...) @rand() #3
  %scevgep95.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %318, i64 0, i64 0, i64 1
  store i8 %call16.i504.i.1, i8* %scevgep95.1, align 1
  %scevgep96.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %318, i64 0, i64 0, i64 1
  %321 = load i8, i8* %scevgep96.1, align 1
  %conv23.i513.i.1 = zext i8 %321 to i32
  %322 = load i8, i8* %arrayidx25.i515.i.1, align 1
  %scevgep99.1 = getelementptr [4 x i8], [4 x i8]* %319, i64 0, i64 1
  %323 = load i8, i8* %scevgep99.1, align 1
  %call28.i518.i.1 = call zeroext i8 @mult(i8 zeroext %322, i8 zeroext %323) #3
  %conv29.i519.i.1 = zext i8 %call28.i518.i.1 to i32
  %xor.i520.i.1 = xor i32 %conv23.i513.i.1, %conv29.i519.i.1
  %scevgep102.1 = getelementptr [4 x i8], [4 x i8]* %320, i64 0, i64 1
  %324 = load i8, i8* %scevgep102.1, align 1
  %325 = load i8, i8* %arrayidx33.i524.i.1, align 1
  %call34.i525.i.1 = call zeroext i8 @mult(i8 zeroext %324, i8 zeroext %325) #3
  %conv35.i526.i.1 = zext i8 %call34.i525.i.1 to i32
  %xor36.i527.i.1 = xor i32 %xor.i520.i.1, %conv35.i526.i.1
  %conv37.i528.i.1 = trunc i32 %xor36.i527.i.1 to i8
  %scevgep103.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %318, i64 0, i64 1, i64 0
  store i8 %conv37.i528.i.1, i8* %scevgep103.1, align 1
  %call16.i504.i.1.1 = call zeroext i8 (...) @rand() #3
  %scevgep95.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %318, i64 0, i64 0, i64 2
  store i8 %call16.i504.i.1.1, i8* %scevgep95.1.1, align 1
  %scevgep96.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %318, i64 0, i64 0, i64 2
  %326 = load i8, i8* %scevgep96.1.1, align 1
  %conv23.i513.i.1.1 = zext i8 %326 to i32
  %327 = load i8, i8* %arrayidx25.i515.i.1, align 1
  %scevgep99.1.1 = getelementptr [4 x i8], [4 x i8]* %319, i64 0, i64 2
  %328 = load i8, i8* %scevgep99.1.1, align 1
  %call28.i518.i.1.1 = call zeroext i8 @mult(i8 zeroext %327, i8 zeroext %328) #3
  %conv29.i519.i.1.1 = zext i8 %call28.i518.i.1.1 to i32
  %xor.i520.i.1.1 = xor i32 %conv23.i513.i.1.1, %conv29.i519.i.1.1
  %scevgep102.1.1 = getelementptr [4 x i8], [4 x i8]* %320, i64 0, i64 2
  %329 = load i8, i8* %scevgep102.1.1, align 1
  %330 = load i8, i8* %arrayidx33.i524.i.1, align 1
  %call34.i525.i.1.1 = call zeroext i8 @mult(i8 zeroext %329, i8 zeroext %330) #3
  %conv35.i526.i.1.1 = zext i8 %call34.i525.i.1.1 to i32
  %xor36.i527.i.1.1 = xor i32 %xor.i520.i.1.1, %conv35.i526.i.1.1
  %conv37.i528.i.1.1 = trunc i32 %xor36.i527.i.1.1 to i8
  %scevgep103.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %318, i64 0, i64 2, i64 0
  store i8 %conv37.i528.i.1.1, i8* %scevgep103.1.1, align 1
  %scevgep92.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %318, i64 0, i64 1, i64 1
  %331 = bitcast i8* %scevgep92.1 to [4 x [4 x i8]]*
  %scevgep98.1 = getelementptr [4 x i8], [4 x i8]* %319, i64 0, i64 1
  %332 = bitcast i8* %scevgep98.1 to [4 x i8]*
  %scevgep101.1 = getelementptr [4 x i8], [4 x i8]* %320, i64 0, i64 1
  %333 = bitcast i8* %scevgep101.1 to [4 x i8]*
  %arrayidx25.i515.i.2 = getelementptr inbounds i8, i8* %arraydecay18.i, i64 2
  %arrayidx33.i524.i.2 = getelementptr inbounds i8, i8* %arraydecay19.i, i64 2
  %call16.i504.i.2 = call zeroext i8 (...) @rand() #3
  %scevgep95.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %331, i64 0, i64 0, i64 1
  store i8 %call16.i504.i.2, i8* %scevgep95.2, align 1
  %scevgep96.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %331, i64 0, i64 0, i64 1
  %334 = load i8, i8* %scevgep96.2, align 1
  %conv23.i513.i.2 = zext i8 %334 to i32
  %335 = load i8, i8* %arrayidx25.i515.i.2, align 1
  %scevgep99.2 = getelementptr [4 x i8], [4 x i8]* %332, i64 0, i64 1
  %336 = load i8, i8* %scevgep99.2, align 1
  %call28.i518.i.2 = call zeroext i8 @mult(i8 zeroext %335, i8 zeroext %336) #3
  %conv29.i519.i.2 = zext i8 %call28.i518.i.2 to i32
  %xor.i520.i.2 = xor i32 %conv23.i513.i.2, %conv29.i519.i.2
  %scevgep102.2 = getelementptr [4 x i8], [4 x i8]* %333, i64 0, i64 1
  %337 = load i8, i8* %scevgep102.2, align 1
  %338 = load i8, i8* %arrayidx33.i524.i.2, align 1
  %call34.i525.i.2 = call zeroext i8 @mult(i8 zeroext %337, i8 zeroext %338) #3
  %conv35.i526.i.2 = zext i8 %call34.i525.i.2 to i32
  %xor36.i527.i.2 = xor i32 %xor.i520.i.2, %conv35.i526.i.2
  %conv37.i528.i.2 = trunc i32 %xor36.i527.i.2 to i8
  %scevgep103.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %331, i64 0, i64 1, i64 0
  store i8 %conv37.i528.i.2, i8* %scevgep103.2, align 1
  %339 = load i8, i8* %arraydecay18.i, align 1
  %340 = load i8, i8* %arraydecay19.i, align 1
  %call54.i544.i = call zeroext i8 @mult(i8 zeroext %339, i8 zeroext %340) #3
  store i8 %call54.i544.i, i8* %y, align 1
  %scevgep88.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %341 = load i8, i8* %scevgep88.1, align 1
  %conv68.i556.i.1 = zext i8 %341 to i32
  %342 = load i8, i8* %y, align 1
  %conv71.i559.i.1 = zext i8 %342 to i32
  %xor72.i560.i.1 = xor i32 %conv71.i559.i.1, %conv68.i556.i.1
  %conv73.i561.i.1 = trunc i32 %xor72.i560.i.1 to i8
  store i8 %conv73.i561.i.1, i8* %y, align 1
  %scevgep88.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %343 = load i8, i8* %scevgep88.2, align 1
  %conv68.i556.i.2 = zext i8 %343 to i32
  %344 = load i8, i8* %y, align 1
  %conv71.i559.i.2 = zext i8 %344 to i32
  %xor72.i560.i.2 = xor i32 %conv71.i559.i.2, %conv68.i556.i.2
  %conv73.i561.i.2 = trunc i32 %xor72.i560.i.2 to i8
  store i8 %conv73.i561.i.2, i8* %y, align 1
  %scevgep88.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  %345 = load i8, i8* %scevgep88.3, align 1
  %conv68.i556.i.3 = zext i8 %345 to i32
  %346 = load i8, i8* %y, align 1
  %conv71.i559.i.3 = zext i8 %346 to i32
  %xor72.i560.i.3 = xor i32 %conv71.i559.i.3, %conv68.i556.i.3
  %conv73.i561.i.3 = trunc i32 %xor72.i560.i.3 to i8
  store i8 %conv73.i561.i.3, i8* %y, align 1
  %scevgep87 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %347 = bitcast i8* %scevgep87 to [4 x [4 x i8]]*
  %arrayidx51.i541.i.1 = getelementptr inbounds i8, i8* %arraydecay18.i, i64 1
  %348 = load i8, i8* %arrayidx51.i541.i.1, align 1
  %arrayidx53.i543.i.1 = getelementptr inbounds i8, i8* %arraydecay19.i, i64 1
  %349 = load i8, i8* %arrayidx53.i543.i.1, align 1
  %call54.i544.i.1 = call zeroext i8 @mult(i8 zeroext %348, i8 zeroext %349) #3
  %arrayidx56.i546.i.1 = getelementptr inbounds i8, i8* %y, i64 1
  store i8 %call54.i544.i.1, i8* %arrayidx56.i546.i.1, align 1
  %arrayidx70.i558.i.1 = getelementptr inbounds i8, i8* %y, i64 1
  %scevgep88.1292 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %347, i64 0, i64 0, i64 0
  %350 = load i8, i8* %scevgep88.1292, align 1
  %conv68.i556.i.1293 = zext i8 %350 to i32
  %351 = load i8, i8* %arrayidx70.i558.i.1, align 1
  %conv71.i559.i.1294 = zext i8 %351 to i32
  %xor72.i560.i.1295 = xor i32 %conv71.i559.i.1294, %conv68.i556.i.1293
  %conv73.i561.i.1296 = trunc i32 %xor72.i560.i.1295 to i8
  store i8 %conv73.i561.i.1296, i8* %arrayidx70.i558.i.1, align 1
  %scevgep88.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %347, i64 0, i64 0, i64 2
  %352 = load i8, i8* %scevgep88.2.1, align 1
  %conv68.i556.i.2.1 = zext i8 %352 to i32
  %353 = load i8, i8* %arrayidx70.i558.i.1, align 1
  %conv71.i559.i.2.1 = zext i8 %353 to i32
  %xor72.i560.i.2.1 = xor i32 %conv71.i559.i.2.1, %conv68.i556.i.2.1
  %conv73.i561.i.2.1 = trunc i32 %xor72.i560.i.2.1 to i8
  store i8 %conv73.i561.i.2.1, i8* %arrayidx70.i558.i.1, align 1
  %scevgep88.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %347, i64 0, i64 0, i64 3
  %354 = load i8, i8* %scevgep88.3.1, align 1
  %conv68.i556.i.3.1 = zext i8 %354 to i32
  %355 = load i8, i8* %arrayidx70.i558.i.1, align 1
  %conv71.i559.i.3.1 = zext i8 %355 to i32
  %xor72.i560.i.3.1 = xor i32 %conv71.i559.i.3.1, %conv68.i556.i.3.1
  %conv73.i561.i.3.1 = trunc i32 %xor72.i560.i.3.1 to i8
  store i8 %conv73.i561.i.3.1, i8* %arrayidx70.i558.i.1, align 1
  %scevgep87.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %347, i64 0, i64 1, i64 0
  %356 = bitcast i8* %scevgep87.1 to [4 x [4 x i8]]*
  %arrayidx51.i541.i.2 = getelementptr inbounds i8, i8* %arraydecay18.i, i64 2
  %357 = load i8, i8* %arrayidx51.i541.i.2, align 1
  %arrayidx53.i543.i.2 = getelementptr inbounds i8, i8* %arraydecay19.i, i64 2
  %358 = load i8, i8* %arrayidx53.i543.i.2, align 1
  %call54.i544.i.2 = call zeroext i8 @mult(i8 zeroext %357, i8 zeroext %358) #3
  %arrayidx56.i546.i.2 = getelementptr inbounds i8, i8* %y, i64 2
  store i8 %call54.i544.i.2, i8* %arrayidx56.i546.i.2, align 1
  %arrayidx70.i558.i.2 = getelementptr inbounds i8, i8* %y, i64 2
  %scevgep88.2301 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %356, i64 0, i64 0, i64 0
  %359 = load i8, i8* %scevgep88.2301, align 1
  %conv68.i556.i.2302 = zext i8 %359 to i32
  %360 = load i8, i8* %arrayidx70.i558.i.2, align 1
  %conv71.i559.i.2303 = zext i8 %360 to i32
  %xor72.i560.i.2304 = xor i32 %conv71.i559.i.2303, %conv68.i556.i.2302
  %conv73.i561.i.2305 = trunc i32 %xor72.i560.i.2304 to i8
  store i8 %conv73.i561.i.2305, i8* %arrayidx70.i558.i.2, align 1
  %scevgep88.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %356, i64 0, i64 0, i64 1
  %361 = load i8, i8* %scevgep88.1.2, align 1
  %conv68.i556.i.1.2 = zext i8 %361 to i32
  %362 = load i8, i8* %arrayidx70.i558.i.2, align 1
  %conv71.i559.i.1.2 = zext i8 %362 to i32
  %xor72.i560.i.1.2 = xor i32 %conv71.i559.i.1.2, %conv68.i556.i.1.2
  %conv73.i561.i.1.2 = trunc i32 %xor72.i560.i.1.2 to i8
  store i8 %conv73.i561.i.1.2, i8* %arrayidx70.i558.i.2, align 1
  %scevgep88.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %356, i64 0, i64 0, i64 3
  %363 = load i8, i8* %scevgep88.3.2, align 1
  %conv68.i556.i.3.2 = zext i8 %363 to i32
  %364 = load i8, i8* %arrayidx70.i558.i.2, align 1
  %conv71.i559.i.3.2 = zext i8 %364 to i32
  %xor72.i560.i.3.2 = xor i32 %conv71.i559.i.3.2, %conv68.i556.i.3.2
  %conv73.i561.i.3.2 = trunc i32 %xor72.i560.i.3.2 to i8
  store i8 %conv73.i561.i.3.2, i8* %arrayidx70.i558.i.2, align 1
  %scevgep87.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %356, i64 0, i64 1, i64 0
  %365 = bitcast i8* %scevgep87.2 to [4 x [4 x i8]]*
  %arrayidx51.i541.i.3 = getelementptr inbounds i8, i8* %arraydecay18.i, i64 3
  %366 = load i8, i8* %arrayidx51.i541.i.3, align 1
  %arrayidx53.i543.i.3 = getelementptr inbounds i8, i8* %arraydecay19.i, i64 3
  %367 = load i8, i8* %arrayidx53.i543.i.3, align 1
  %call54.i544.i.3 = call zeroext i8 @mult(i8 zeroext %366, i8 zeroext %367) #3
  %arrayidx56.i546.i.3 = getelementptr inbounds i8, i8* %y, i64 3
  store i8 %call54.i544.i.3, i8* %arrayidx56.i546.i.3, align 1
  %arrayidx70.i558.i.3 = getelementptr inbounds i8, i8* %y, i64 3
  %scevgep88.3310 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %365, i64 0, i64 0, i64 0
  %368 = load i8, i8* %scevgep88.3310, align 1
  %conv68.i556.i.3311 = zext i8 %368 to i32
  %369 = load i8, i8* %arrayidx70.i558.i.3, align 1
  %conv71.i559.i.3312 = zext i8 %369 to i32
  %xor72.i560.i.3313 = xor i32 %conv71.i559.i.3312, %conv68.i556.i.3311
  %conv73.i561.i.3314 = trunc i32 %xor72.i560.i.3313 to i8
  store i8 %conv73.i561.i.3314, i8* %arrayidx70.i558.i.3, align 1
  %scevgep88.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %365, i64 0, i64 0, i64 1
  %370 = load i8, i8* %scevgep88.1.3, align 1
  %conv68.i556.i.1.3 = zext i8 %370 to i32
  %371 = load i8, i8* %arrayidx70.i558.i.3, align 1
  %conv71.i559.i.1.3 = zext i8 %371 to i32
  %xor72.i560.i.1.3 = xor i32 %conv71.i559.i.1.3, %conv68.i556.i.1.3
  %conv73.i561.i.1.3 = trunc i32 %xor72.i560.i.1.3 to i8
  store i8 %conv73.i561.i.1.3, i8* %arrayidx70.i558.i.3, align 1
  %scevgep88.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %365, i64 0, i64 0, i64 2
  %372 = load i8, i8* %scevgep88.2.3, align 1
  %conv68.i556.i.2.3 = zext i8 %372 to i32
  %373 = load i8, i8* %arrayidx70.i558.i.3, align 1
  %conv71.i559.i.2.3 = zext i8 %373 to i32
  %xor72.i560.i.2.3 = xor i32 %conv71.i559.i.2.3, %conv68.i556.i.2.3
  %conv73.i561.i.2.3 = trunc i32 %xor72.i560.i.2.3 to i8
  store i8 %conv73.i561.i.2.3, i8* %arrayidx70.i558.i.3, align 1
  %call80.i567.i = call zeroext i8 @mult(i8 zeroext %call.i466.i, i8 zeroext %call1.i467.i) #3
  %conv81.i568.i = zext i8 %call80.i567.i to i32
  %374 = load i8, i8* %y, align 1
  %scevgep78.1 = getelementptr i8, i8* %y, i64 1
  %375 = load i8, i8* %scevgep78.1, align 1
  %conv.i.i113.i575.i.1 = zext i8 %375 to i32
  %conv1.i.i114.i576.i.1 = zext i8 %374 to i32
  %xor.i.i115.i577.i.1 = xor i32 %conv1.i.i114.i576.i.1, %conv.i.i113.i575.i.1
  %conv2.i.i116.i578.i.1 = trunc i32 %xor.i.i115.i577.i.1 to i8
  %scevgep78.2 = getelementptr i8, i8* %y, i64 2
  %376 = load i8, i8* %scevgep78.2, align 1
  %conv.i.i113.i575.i.2 = zext i8 %376 to i32
  %conv1.i.i114.i576.i.2 = zext i8 %conv2.i.i116.i578.i.1 to i32
  %xor.i.i115.i577.i.2 = xor i32 %conv1.i.i114.i576.i.2, %conv.i.i113.i575.i.2
  %conv2.i.i116.i578.i.2 = trunc i32 %xor.i.i115.i577.i.2 to i8
  %scevgep78.3 = getelementptr i8, i8* %y, i64 3
  %377 = load i8, i8* %scevgep78.3, align 1
  %conv.i.i113.i575.i.3 = zext i8 %377 to i32
  %conv1.i.i114.i576.i.3 = zext i8 %conv2.i.i116.i578.i.2 to i32
  %xor.i.i115.i577.i.3 = xor i32 %conv1.i.i114.i576.i.3, %conv.i.i113.i575.i.3
  %conv2.i.i116.i578.i.3 = trunc i32 %xor.i.i115.i577.i.3 to i8
  %conv83.i581.i = zext i8 %conv2.i.i116.i578.i.3 to i32
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
  %378 = load i8, i8* %y, align 1
  %scevgep74.1 = getelementptr i8, i8* %y, i64 1
  %379 = load i8, i8* %scevgep74.1, align 1
  %conv.i.i597.i.1 = zext i8 %379 to i32
  %conv1.i.i598.i.1 = zext i8 %378 to i32
  %xor.i.i599.i.1 = xor i32 %conv1.i.i598.i.1, %conv.i.i597.i.1
  %conv2.i.i600.i.1 = trunc i32 %xor.i.i599.i.1 to i8
  %scevgep74.2 = getelementptr i8, i8* %y, i64 2
  %380 = load i8, i8* %scevgep74.2, align 1
  %conv.i.i597.i.2 = zext i8 %380 to i32
  %conv1.i.i598.i.2 = zext i8 %conv2.i.i600.i.1 to i32
  %xor.i.i599.i.2 = xor i32 %conv1.i.i598.i.2, %conv.i.i597.i.2
  %conv2.i.i600.i.2 = trunc i32 %xor.i.i599.i.2 to i8
  %scevgep74.3 = getelementptr i8, i8* %y, i64 3
  %381 = load i8, i8* %scevgep74.3, align 1
  %conv.i.i597.i.3 = zext i8 %381 to i32
  %conv1.i.i598.i.3 = zext i8 %conv2.i.i600.i.2 to i32
  %xor.i.i599.i.3 = xor i32 %conv1.i.i598.i.3, %conv.i.i597.i.3
  %conv2.i.i600.i.3 = trunc i32 %xor.i.i599.i.3 to i8
  %conv23.i = zext i8 %conv2.i.i600.i.3 to i32
  %cmp24.i = icmp eq i32 %conv21.i, %conv23.i
  call void @assert(i1 zeroext %cmp24.i) #3
  %382 = load i8, i8* %y, align 1
  %call.i26 = call zeroext i8 @af(i8 zeroext %382) #3
  store i8 %call.i26, i8* %y, align 1
  %scevgep69.1 = getelementptr i8, i8* %y, i64 1
  %383 = load i8, i8* %scevgep69.1, align 1
  %call.i26.1 = call zeroext i8 @af(i8 zeroext %383) #3
  %scevgep70.1 = getelementptr i8, i8* %y, i64 1
  store i8 %call.i26.1, i8* %scevgep70.1, align 1
  %scevgep69.2 = getelementptr i8, i8* %y, i64 2
  %384 = load i8, i8* %scevgep69.2, align 1
  %call.i26.2 = call zeroext i8 @af(i8 zeroext %384) #3
  %scevgep70.2 = getelementptr i8, i8* %y, i64 2
  store i8 %call.i26.2, i8* %scevgep70.2, align 1
  %scevgep69.3 = getelementptr i8, i8* %y, i64 3
  %385 = load i8, i8* %scevgep69.3, align 1
  %call.i26.3 = call zeroext i8 @af(i8 zeroext %385) #3
  %scevgep70.3 = getelementptr i8, i8* %y, i64 3
  store i8 %call.i26.3, i8* %scevgep70.3, align 1
  %386 = load i8, i8* %y, align 1
  %conv4 = zext i8 %386 to i32
  %xor = xor i32 %conv4, 99
  %conv5 = trunc i32 %xor to i8
  store i8 %conv5, i8* %y, align 1
  %call.i.i32 = call zeroext i8 @square(i8 zeroext %call) #3
  %call1.i.i33 = call zeroext i8 @mult(i8 zeroext %call.i.i32, i8 zeroext %call) #3
  %call2.i.i34 = call zeroext i8 @exp4(i8 zeroext %call1.i.i33) #3
  %call3.i.i35 = call zeroext i8 @mult(i8 zeroext %call1.i.i33, i8 zeroext %call2.i.i34) #3
  %call4.i.i36 = call zeroext i8 @exp16(i8 zeroext %call3.i.i35) #3
  %call5.i.i37 = call zeroext i8 @mult(i8 zeroext %call4.i.i36, i8 zeroext %call2.i.i34) #3
  %call6.i.i38 = call zeroext i8 @mult(i8 zeroext %call5.i.i37, i8 zeroext %call.i.i32) #3
  %call1.i = call zeroext i8 @af(i8 zeroext %call6.i.i38) #3
  %conv7 = zext i8 %call1.i to i32
  %387 = load i8, i8* %y, align 1
  %scevgep.1 = getelementptr i8, i8* %y, i64 1
  %388 = load i8, i8* %scevgep.1, align 1
  %conv.i.i49.1 = zext i8 %388 to i32
  %conv1.i.i50.1 = zext i8 %387 to i32
  %xor.i.i51.1 = xor i32 %conv1.i.i50.1, %conv.i.i49.1
  %conv2.i.i52.1 = trunc i32 %xor.i.i51.1 to i8
  %scevgep.2 = getelementptr i8, i8* %y, i64 2
  %389 = load i8, i8* %scevgep.2, align 1
  %conv.i.i49.2 = zext i8 %389 to i32
  %conv1.i.i50.2 = zext i8 %conv2.i.i52.1 to i32
  %xor.i.i51.2 = xor i32 %conv1.i.i50.2, %conv.i.i49.2
  %conv2.i.i52.2 = trunc i32 %xor.i.i51.2 to i8
  %scevgep.3 = getelementptr i8, i8* %y, i64 3
  %390 = load i8, i8* %scevgep.3, align 1
  %conv.i.i49.3 = zext i8 %390 to i32
  %conv1.i.i50.3 = zext i8 %conv2.i.i52.2 to i32
  %xor.i.i51.3 = xor i32 %conv1.i.i50.3, %conv.i.i49.3
  %conv2.i.i52.3 = trunc i32 %xor.i.i51.3 to i8
  %conv9 = zext i8 %conv2.i.i52.3 to i32
  %cmp10 = icmp eq i32 %conv7, %conv9
  call void @assert(i1 zeroext %cmp10)
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
