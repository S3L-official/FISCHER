; ModuleID = '../examples/cassiers-tifs2020-present-sbox.inline-1.ll'
source_filename = "../examples/cassiers-tifs2020-present-sbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 1, align 4
@.str = private unnamed_addr constant [7 x i8] c"verify\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [45 x i8] c"../examples/cassiers-tifs2020-present-sbox.c\00", section "llvm.metadata"
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
@llvm.global.annotations = appending global [13 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*, i8*)* @sec_mult to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 3 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @square to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 56 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp4 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 58 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp8 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 60 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @L1 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 62 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @L3 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 66 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @L5 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 70 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @L7 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 74 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp3 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 78 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp5 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 82 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp7 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 86 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @S to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 90 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*)* @sec_S to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 94 }], section "llvm.metadata"

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
  %s = alloca [2 x [2 x i8]], align 1
  %p0 = alloca [2 x [2 x i8]], align 1
  %p1 = alloca [2 x [2 x i8]], align 1
  %z = alloca [2 x [2 x i8]], align 1
  %call = call zeroext i8 (...) @rand()
  %call1 = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %a, align 1
  %scevgep72.1 = getelementptr i8, i8* %a, i64 1
  %1 = load i8, i8* %scevgep72.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %conv3 = zext i8 %conv2.i.i.1 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %2 = load i8, i8* %b, align 1
  %scevgep68.1 = getelementptr i8, i8* %b, i64 1
  %3 = load i8, i8* %scevgep68.1, align 1
  %conv.i.i155.1 = zext i8 %3 to i32
  %conv1.i.i156.1 = zext i8 %2 to i32
  %xor.i.i157.1 = xor i32 %conv1.i.i156.1, %conv.i.i155.1
  %conv2.i.i158.1 = trunc i32 %xor.i.i157.1 to i8
  %conv7 = zext i8 %conv2.i.i158.1 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %call16 = call zeroext i8 (...) @rand()
  %scevgep58 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 0, i64 1
  store i8 %call16, i8* %scevgep58, align 1
  %scevgep59 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 0, i64 1
  %4 = load i8, i8* %scevgep59, align 1
  %scevgep60 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 1, i64 0
  store i8 %4, i8* %scevgep60, align 1
  %scevgep31.1 = getelementptr i8, i8* %b, i64 1
  %5 = load i8, i8* %scevgep31.1, align 1
  %conv44.1 = zext i8 %5 to i32
  %scevgep34.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 0, i64 1
  %6 = load i8, i8* %scevgep34.1, align 1
  %conv49.1 = zext i8 %6 to i32
  %xor.1 = xor i32 %conv44.1, %conv49.1
  %conv50.1 = trunc i32 %xor.1 to i8
  %scevgep38.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s, i64 0, i64 0, i64 1
  store i8 %conv50.1, i8* %scevgep38.1, align 1
  %7 = load i8, i8* %a, align 1
  %conv57.1 = zext i8 %7 to i32
  %xor58.1 = xor i32 %conv57.1, 1
  %conv59.1 = trunc i32 %xor58.1 to i8
  %scevgep35.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 0, i64 1
  %8 = load i8, i8* %scevgep35.1, align 1
  %call64.1 = call zeroext i8 @mult(i8 zeroext %conv59.1, i8 zeroext %8)
  %scevgep42.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0, i64 0, i64 0, i64 1
  store i8 %call64.1, i8* %scevgep42.1, align 1
  %9 = load i8, i8* %a, align 1
  %scevgep39.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s, i64 0, i64 0, i64 1
  %10 = load i8, i8* %scevgep39.1, align 1
  %call75.1 = call zeroext i8 @mult(i8 zeroext %9, i8 zeroext %10)
  %scevgep46.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1, i64 0, i64 0, i64 1
  store i8 %call75.1, i8* %scevgep46.1, align 1
  %scevgep43.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0, i64 0, i64 0, i64 1
  %11 = load i8, i8* %scevgep43.1, align 1
  %conv84.1 = zext i8 %11 to i32
  %scevgep47.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1, i64 0, i64 0, i64 1
  %12 = load i8, i8* %scevgep47.1, align 1
  %conv89.1 = zext i8 %12 to i32
  %xor90.1 = xor i32 %conv84.1, %conv89.1
  %conv91.1 = trunc i32 %xor90.1 to i8
  %scevgep50.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 0, i64 1
  store i8 %conv91.1, i8* %scevgep50.1, align 1
  %scevgep33 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r, i64 0, i64 1, i64 0
  %13 = bitcast i8* %scevgep33 to [2 x [2 x i8]]*
  %scevgep37 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s, i64 0, i64 1, i64 0
  %14 = bitcast i8* %scevgep37 to [2 x [2 x i8]]*
  %scevgep41 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0, i64 0, i64 1, i64 0
  %15 = bitcast i8* %scevgep41 to [2 x [2 x i8]]*
  %scevgep45 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1, i64 0, i64 1, i64 0
  %16 = bitcast i8* %scevgep45 to [2 x [2 x i8]]*
  %scevgep49 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 1, i64 0
  %17 = bitcast i8* %scevgep49 to [2 x [2 x i8]]*
  %arrayidx56.1 = getelementptr inbounds i8, i8* %a, i64 1
  %arrayidx70.1 = getelementptr inbounds i8, i8* %a, i64 1
  %18 = load i8, i8* %b, align 1
  %conv44.186 = zext i8 %18 to i32
  %scevgep34.187 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %13, i64 0, i64 0, i64 0
  %19 = load i8, i8* %scevgep34.187, align 1
  %conv49.188 = zext i8 %19 to i32
  %xor.189 = xor i32 %conv44.186, %conv49.188
  %conv50.190 = trunc i32 %xor.189 to i8
  %scevgep38.191 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %14, i64 0, i64 0, i64 0
  store i8 %conv50.190, i8* %scevgep38.191, align 1
  %20 = load i8, i8* %arrayidx56.1, align 1
  %conv57.192 = zext i8 %20 to i32
  %xor58.193 = xor i32 %conv57.192, 1
  %conv59.194 = trunc i32 %xor58.193 to i8
  %scevgep35.195 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %13, i64 0, i64 0, i64 0
  %21 = load i8, i8* %scevgep35.195, align 1
  %call64.196 = call zeroext i8 @mult(i8 zeroext %conv59.194, i8 zeroext %21)
  %scevgep42.197 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %15, i64 0, i64 0, i64 0
  store i8 %call64.196, i8* %scevgep42.197, align 1
  %22 = load i8, i8* %arrayidx70.1, align 1
  %scevgep39.198 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %14, i64 0, i64 0, i64 0
  %23 = load i8, i8* %scevgep39.198, align 1
  %call75.199 = call zeroext i8 @mult(i8 zeroext %22, i8 zeroext %23)
  %scevgep46.1100 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %16, i64 0, i64 0, i64 0
  store i8 %call75.199, i8* %scevgep46.1100, align 1
  %scevgep43.1101 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %15, i64 0, i64 0, i64 0
  %24 = load i8, i8* %scevgep43.1101, align 1
  %conv84.1102 = zext i8 %24 to i32
  %scevgep47.1103 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %16, i64 0, i64 0, i64 0
  %25 = load i8, i8* %scevgep47.1103, align 1
  %conv89.1104 = zext i8 %25 to i32
  %xor90.1105 = xor i32 %conv84.1102, %conv89.1104
  %conv91.1106 = trunc i32 %xor90.1105 to i8
  %scevgep50.1107 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %17, i64 0, i64 0, i64 0
  store i8 %conv91.1106, i8* %scevgep50.1107, align 1
  %26 = load i8, i8* %a, align 1
  %27 = load i8, i8* %b, align 1
  %call111 = call zeroext i8 @mult(i8 zeroext %26, i8 zeroext %27)
  store i8 %call111, i8* %c, align 1
  %scevgep22.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 0, i64 1
  %28 = load i8, i8* %scevgep22.1, align 1
  %conv126.1 = zext i8 %28 to i32
  %29 = load i8, i8* %c, align 1
  %conv129.1 = zext i8 %29 to i32
  %xor130.1 = xor i32 %conv129.1, %conv126.1
  %conv131.1 = trunc i32 %xor130.1 to i8
  store i8 %conv131.1, i8* %c, align 1
  %scevgep21 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z, i64 0, i64 1, i64 0
  %30 = bitcast i8* %scevgep21 to [2 x [2 x i8]]*
  %arrayidx108.1 = getelementptr inbounds i8, i8* %a, i64 1
  %31 = load i8, i8* %arrayidx108.1, align 1
  %arrayidx110.1 = getelementptr inbounds i8, i8* %b, i64 1
  %32 = load i8, i8* %arrayidx110.1, align 1
  %call111.1 = call zeroext i8 @mult(i8 zeroext %31, i8 zeroext %32)
  %arrayidx113.1 = getelementptr inbounds i8, i8* %c, i64 1
  store i8 %call111.1, i8* %arrayidx113.1, align 1
  %arrayidx128.1 = getelementptr inbounds i8, i8* %c, i64 1
  %scevgep22.176 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %30, i64 0, i64 0, i64 0
  %33 = load i8, i8* %scevgep22.176, align 1
  %conv126.177 = zext i8 %33 to i32
  %34 = load i8, i8* %arrayidx128.1, align 1
  %conv129.178 = zext i8 %34 to i32
  %xor130.179 = xor i32 %conv129.178, %conv126.177
  %conv131.180 = trunc i32 %xor130.179 to i8
  store i8 %conv131.180, i8* %arrayidx128.1, align 1
  %call139 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv140 = zext i8 %call139 to i32
  %35 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %36 = load i8, i8* %scevgep.1, align 1
  %conv.i.i172.1 = zext i8 %36 to i32
  %conv1.i.i173.1 = zext i8 %35 to i32
  %xor.i.i174.1 = xor i32 %conv1.i.i173.1, %conv.i.i172.1
  %conv2.i.i175.1 = trunc i32 %xor.i.i174.1 to i8
  %conv142 = zext i8 %conv2.i.i175.1 to i32
  %cmp143 = icmp eq i32 %conv140, %conv142
  call void @assert(i1 zeroext %cmp143)
  ret void
}

declare dso_local zeroext i8 @rand(...) #1

declare dso_local void @assume(i1 zeroext) #1

declare dso_local zeroext i8 @mult(i8 zeroext, i8 zeroext) #1

declare dso_local void @assert(i1 zeroext) #1

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
  %s.i = alloca [2 x [2 x i8]], align 1
  %p0.i = alloca [2 x [2 x i8]], align 1
  %p1.i = alloca [2 x [2 x i8]], align 1
  %z.i = alloca [2 x [2 x i8]], align 1
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
  %scevgep285.1 = getelementptr i8, i8* %x, i64 1
  %1 = load i8, i8* %scevgep285.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %conv2 = zext i8 %conv2.i.i.1 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %2 = load i8, i8* %x, align 1
  %call.i = call zeroext i8 @L1(i8 zeroext %2) #3
  %scevgep281 = getelementptr [2 x i8], [2 x i8]* %l1, i64 0, i64 0
  store i8 %call.i, i8* %scevgep281, align 1
  %scevgep280.1 = getelementptr i8, i8* %x, i64 1
  %3 = load i8, i8* %scevgep280.1, align 1
  %call.i.1 = call zeroext i8 @L1(i8 zeroext %3) #3
  %scevgep281.1 = getelementptr [2 x i8], [2 x i8]* %l1, i64 0, i64 1
  store i8 %call.i.1, i8* %scevgep281.1, align 1
  %4 = load i8, i8* %x, align 1
  %call.i54 = call zeroext i8 @square(i8 zeroext %4) #3
  %scevgep276 = getelementptr [2 x i8], [2 x i8]* %e2, i64 0, i64 0
  store i8 %call.i54, i8* %scevgep276, align 1
  %scevgep275.1 = getelementptr i8, i8* %x, i64 1
  %5 = load i8, i8* %scevgep275.1, align 1
  %call.i54.1 = call zeroext i8 @square(i8 zeroext %5) #3
  %scevgep276.1 = getelementptr [2 x i8], [2 x i8]* %e2, i64 0, i64 1
  store i8 %call.i54.1, i8* %scevgep276.1, align 1
  %6 = load i8, i8* %x, align 1
  %call.i68 = call zeroext i8 @exp4(i8 zeroext %6) #3
  %scevgep271 = getelementptr [2 x i8], [2 x i8]* %e4, i64 0, i64 0
  store i8 %call.i68, i8* %scevgep271, align 1
  %scevgep270.1 = getelementptr i8, i8* %x, i64 1
  %7 = load i8, i8* %scevgep270.1, align 1
  %call.i68.1 = call zeroext i8 @exp4(i8 zeroext %7) #3
  %scevgep271.1 = getelementptr [2 x i8], [2 x i8]* %e4, i64 0, i64 1
  store i8 %call.i68.1, i8* %scevgep271.1, align 1
  %arraydecay6 = getelementptr inbounds [2 x i8], [2 x i8]* %e2, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [2 x i8], [2 x i8]* %e3, i64 0, i64 0
  %call.i77 = call zeroext i8 (...) @rand() #3
  %call1.i = call zeroext i8 (...) @rand() #3
  %conv.i = zext i8 %call.i77 to i32
  %8 = load i8, i8* %x, align 1
  %scevgep266.1 = getelementptr i8, i8* %x, i64 1
  %9 = load i8, i8* %scevgep266.1, align 1
  %conv.i.i.i.1 = zext i8 %9 to i32
  %conv1.i.i.i.1 = zext i8 %8 to i32
  %xor.i.i.i.1 = xor i32 %conv1.i.i.i.1, %conv.i.i.i.1
  %conv2.i.i.i.1 = trunc i32 %xor.i.i.i.1 to i8
  %conv3.i = zext i8 %conv2.i.i.i.1 to i32
  %cmp.i78 = icmp eq i32 %conv.i, %conv3.i
  call void @assume(i1 zeroext %cmp.i78) #3
  %conv5.i = zext i8 %call1.i to i32
  %scevgep262 = getelementptr [2 x i8], [2 x i8]* %e2, i64 0, i64 0
  %10 = load i8, i8* %scevgep262, align 1
  %scevgep262.1 = getelementptr [2 x i8], [2 x i8]* %e2, i64 0, i64 1
  %11 = load i8, i8* %scevgep262.1, align 1
  %conv.i.i155.i.1 = zext i8 %11 to i32
  %conv1.i.i156.i.1 = zext i8 %10 to i32
  %xor.i.i157.i.1 = xor i32 %conv1.i.i156.i.1, %conv.i.i155.i.1
  %conv2.i.i158.i.1 = trunc i32 %xor.i.i157.i.1 to i8
  %conv7.i = zext i8 %conv2.i.i158.i.1 to i32
  %cmp8.i = icmp eq i32 %conv5.i, %conv7.i
  call void @assume(i1 zeroext %cmp8.i) #3
  %call16.i = call zeroext i8 (...) @rand() #3
  %scevgep252 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i, i8* %scevgep252, align 1
  %scevgep253 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %12 = load i8, i8* %scevgep253, align 1
  %scevgep254 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %12, i8* %scevgep254, align 1
  %scevgep225.1 = getelementptr [2 x i8], [2 x i8]* %e2, i64 0, i64 1
  %13 = load i8, i8* %scevgep225.1, align 1
  %conv44.i.1 = zext i8 %13 to i32
  %scevgep228.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %14 = load i8, i8* %scevgep228.1, align 1
  %conv49.i.1 = zext i8 %14 to i32
  %xor.i.1 = xor i32 %conv44.i.1, %conv49.i.1
  %conv50.i.1 = trunc i32 %xor.i.1 to i8
  %scevgep232.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i.1, i8* %scevgep232.1, align 1
  %15 = load i8, i8* %x, align 1
  %conv57.i.1 = zext i8 %15 to i32
  %xor58.i.1 = xor i32 %conv57.i.1, 1
  %conv59.i.1 = trunc i32 %xor58.i.1 to i8
  %scevgep229.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %16 = load i8, i8* %scevgep229.1, align 1
  %call64.i.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.1, i8 zeroext %16) #3
  %scevgep236.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i.1, i8* %scevgep236.1, align 1
  %17 = load i8, i8* %x, align 1
  %scevgep233.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i, i64 0, i64 0, i64 1
  %18 = load i8, i8* %scevgep233.1, align 1
  %call75.i.1 = call zeroext i8 @mult(i8 zeroext %17, i8 zeroext %18) #3
  %scevgep240.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i.1, i8* %scevgep240.1, align 1
  %scevgep237.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %19 = load i8, i8* %scevgep237.1, align 1
  %conv84.i.1 = zext i8 %19 to i32
  %scevgep241.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %20 = load i8, i8* %scevgep241.1, align 1
  %conv89.i.1 = zext i8 %20 to i32
  %xor90.i.1 = xor i32 %conv84.i.1, %conv89.i.1
  %conv91.i.1 = trunc i32 %xor90.i.1 to i8
  %scevgep244.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i.1, i8* %scevgep244.1, align 1
  %scevgep227 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 1, i64 0
  %21 = bitcast i8* %scevgep227 to [2 x [2 x i8]]*
  %scevgep231 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i, i64 0, i64 1, i64 0
  %22 = bitcast i8* %scevgep231 to [2 x [2 x i8]]*
  %scevgep235 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %23 = bitcast i8* %scevgep235 to [2 x [2 x i8]]*
  %scevgep239 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %24 = bitcast i8* %scevgep239 to [2 x [2 x i8]]*
  %scevgep243 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 1, i64 0
  %25 = bitcast i8* %scevgep243 to [2 x [2 x i8]]*
  %arrayidx56.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %arrayidx70.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %scevgep225.1370 = getelementptr [2 x i8], [2 x i8]* %e2, i64 0, i64 0
  %26 = load i8, i8* %scevgep225.1370, align 1
  %conv44.i.1371 = zext i8 %26 to i32
  %scevgep228.1372 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %21, i64 0, i64 0, i64 0
  %27 = load i8, i8* %scevgep228.1372, align 1
  %conv49.i.1373 = zext i8 %27 to i32
  %xor.i.1374 = xor i32 %conv44.i.1371, %conv49.i.1373
  %conv50.i.1375 = trunc i32 %xor.i.1374 to i8
  %scevgep232.1376 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %22, i64 0, i64 0, i64 0
  store i8 %conv50.i.1375, i8* %scevgep232.1376, align 1
  %28 = load i8, i8* %arrayidx56.i.1, align 1
  %conv57.i.1377 = zext i8 %28 to i32
  %xor58.i.1378 = xor i32 %conv57.i.1377, 1
  %conv59.i.1379 = trunc i32 %xor58.i.1378 to i8
  %scevgep229.1380 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %21, i64 0, i64 0, i64 0
  %29 = load i8, i8* %scevgep229.1380, align 1
  %call64.i.1381 = call zeroext i8 @mult(i8 zeroext %conv59.i.1379, i8 zeroext %29) #3
  %scevgep236.1382 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %23, i64 0, i64 0, i64 0
  store i8 %call64.i.1381, i8* %scevgep236.1382, align 1
  %30 = load i8, i8* %arrayidx70.i.1, align 1
  %scevgep233.1383 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %22, i64 0, i64 0, i64 0
  %31 = load i8, i8* %scevgep233.1383, align 1
  %call75.i.1384 = call zeroext i8 @mult(i8 zeroext %30, i8 zeroext %31) #3
  %scevgep240.1385 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %24, i64 0, i64 0, i64 0
  store i8 %call75.i.1384, i8* %scevgep240.1385, align 1
  %scevgep237.1386 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %23, i64 0, i64 0, i64 0
  %32 = load i8, i8* %scevgep237.1386, align 1
  %conv84.i.1387 = zext i8 %32 to i32
  %scevgep241.1388 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %24, i64 0, i64 0, i64 0
  %33 = load i8, i8* %scevgep241.1388, align 1
  %conv89.i.1389 = zext i8 %33 to i32
  %xor90.i.1390 = xor i32 %conv84.i.1387, %conv89.i.1389
  %conv91.i.1391 = trunc i32 %xor90.i.1390 to i8
  %scevgep244.1392 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %25, i64 0, i64 0, i64 0
  store i8 %conv91.i.1391, i8* %scevgep244.1392, align 1
  %34 = load i8, i8* %x, align 1
  %35 = load i8, i8* %arraydecay6, align 1
  %call111.i = call zeroext i8 @mult(i8 zeroext %34, i8 zeroext %35) #3
  store i8 %call111.i, i8* %arraydecay7, align 1
  %scevgep215.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 0, i64 1
  %36 = load i8, i8* %scevgep215.1, align 1
  %conv126.i.1 = zext i8 %36 to i32
  %37 = load i8, i8* %arraydecay7, align 1
  %conv129.i.1 = zext i8 %37 to i32
  %xor130.i.1 = xor i32 %conv129.i.1, %conv126.i.1
  %conv131.i.1 = trunc i32 %xor130.i.1 to i8
  store i8 %conv131.i.1, i8* %arraydecay7, align 1
  %scevgep214 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 1, i64 0
  %38 = bitcast i8* %scevgep214 to [2 x [2 x i8]]*
  %arrayidx108.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %39 = load i8, i8* %arrayidx108.i.1, align 1
  %arrayidx110.i.1 = getelementptr inbounds i8, i8* %arraydecay6, i64 1
  %40 = load i8, i8* %arrayidx110.i.1, align 1
  %call111.i.1 = call zeroext i8 @mult(i8 zeroext %39, i8 zeroext %40) #3
  %arrayidx113.i.1 = getelementptr inbounds i8, i8* %arraydecay7, i64 1
  store i8 %call111.i.1, i8* %arrayidx113.i.1, align 1
  %arrayidx128.i.1 = getelementptr inbounds i8, i8* %arraydecay7, i64 1
  %scevgep215.1361 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %38, i64 0, i64 0, i64 0
  %41 = load i8, i8* %scevgep215.1361, align 1
  %conv126.i.1362 = zext i8 %41 to i32
  %42 = load i8, i8* %arrayidx128.i.1, align 1
  %conv129.i.1363 = zext i8 %42 to i32
  %xor130.i.1364 = xor i32 %conv129.i.1363, %conv126.i.1362
  %conv131.i.1365 = trunc i32 %xor130.i.1364 to i8
  store i8 %conv131.i.1365, i8* %arrayidx128.i.1, align 1
  %call139.i = call zeroext i8 @mult(i8 zeroext %call.i77, i8 zeroext %call1.i) #3
  %conv140.i = zext i8 %call139.i to i32
  %scevgep205 = getelementptr [2 x i8], [2 x i8]* %e3, i64 0, i64 0
  %43 = load i8, i8* %scevgep205, align 1
  %scevgep205.1 = getelementptr [2 x i8], [2 x i8]* %e3, i64 0, i64 1
  %44 = load i8, i8* %scevgep205.1, align 1
  %conv.i.i172.i.1 = zext i8 %44 to i32
  %conv1.i.i173.i.1 = zext i8 %43 to i32
  %xor.i.i174.i.1 = xor i32 %conv1.i.i173.i.1, %conv.i.i172.i.1
  %conv2.i.i175.i.1 = trunc i32 %xor.i.i174.i.1 to i8
  %conv142.i = zext i8 %conv2.i.i175.i.1 to i32
  %cmp143.i = icmp eq i32 %conv140.i, %conv142.i
  call void @assert(i1 zeroext %cmp143.i) #3
  %arraydecay8 = getelementptr inbounds [2 x i8], [2 x i8]* %e4, i64 0, i64 0
  %arraydecay9 = getelementptr inbounds [2 x i8], [2 x i8]* %e5, i64 0, i64 0
  %call.i115 = call zeroext i8 (...) @rand() #3
  %call1.i116 = call zeroext i8 (...) @rand() #3
  %conv.i117 = zext i8 %call.i115 to i32
  %45 = load i8, i8* %x, align 1
  %scevgep201.1 = getelementptr i8, i8* %x, i64 1
  %46 = load i8, i8* %scevgep201.1, align 1
  %conv.i.i.i123.1 = zext i8 %46 to i32
  %conv1.i.i.i124.1 = zext i8 %45 to i32
  %xor.i.i.i125.1 = xor i32 %conv1.i.i.i124.1, %conv.i.i.i123.1
  %conv2.i.i.i126.1 = trunc i32 %xor.i.i.i125.1 to i8
  %conv3.i129 = zext i8 %conv2.i.i.i126.1 to i32
  %cmp.i130 = icmp eq i32 %conv.i117, %conv3.i129
  call void @assume(i1 zeroext %cmp.i130) #3
  %conv5.i131 = zext i8 %call1.i116 to i32
  %scevgep197 = getelementptr [2 x i8], [2 x i8]* %e4, i64 0, i64 0
  %47 = load i8, i8* %scevgep197, align 1
  %scevgep197.1 = getelementptr [2 x i8], [2 x i8]* %e4, i64 0, i64 1
  %48 = load i8, i8* %scevgep197.1, align 1
  %conv.i.i155.i138.1 = zext i8 %48 to i32
  %conv1.i.i156.i139.1 = zext i8 %47 to i32
  %xor.i.i157.i140.1 = xor i32 %conv1.i.i156.i139.1, %conv.i.i155.i138.1
  %conv2.i.i158.i141.1 = trunc i32 %xor.i.i157.i140.1 to i8
  %conv7.i144 = zext i8 %conv2.i.i158.i141.1 to i32
  %cmp8.i145 = icmp eq i32 %conv5.i131, %conv7.i144
  call void @assume(i1 zeroext %cmp8.i145) #3
  %call16.i153 = call zeroext i8 (...) @rand() #3
  %scevgep187 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i153, i8* %scevgep187, align 1
  %scevgep188 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %49 = load i8, i8* %scevgep188, align 1
  %scevgep189 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %49, i8* %scevgep189, align 1
  %scevgep160.1 = getelementptr [2 x i8], [2 x i8]* %e4, i64 0, i64 1
  %50 = load i8, i8* %scevgep160.1, align 1
  %conv44.i180.1 = zext i8 %50 to i32
  %scevgep163.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %51 = load i8, i8* %scevgep163.1, align 1
  %conv49.i185.1 = zext i8 %51 to i32
  %xor.i186.1 = xor i32 %conv44.i180.1, %conv49.i185.1
  %conv50.i187.1 = trunc i32 %xor.i186.1 to i8
  %scevgep167.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i187.1, i8* %scevgep167.1, align 1
  %52 = load i8, i8* %x, align 1
  %conv57.i194.1 = zext i8 %52 to i32
  %xor58.i195.1 = xor i32 %conv57.i194.1, 1
  %conv59.i196.1 = trunc i32 %xor58.i195.1 to i8
  %scevgep164.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %53 = load i8, i8* %scevgep164.1, align 1
  %call64.i201.1 = call zeroext i8 @mult(i8 zeroext %conv59.i196.1, i8 zeroext %53) #3
  %scevgep171.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i201.1, i8* %scevgep171.1, align 1
  %54 = load i8, i8* %x, align 1
  %scevgep168.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i, i64 0, i64 0, i64 1
  %55 = load i8, i8* %scevgep168.1, align 1
  %call75.i212.1 = call zeroext i8 @mult(i8 zeroext %54, i8 zeroext %55) #3
  %scevgep175.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i212.1, i8* %scevgep175.1, align 1
  %scevgep172.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %56 = load i8, i8* %scevgep172.1, align 1
  %conv84.i221.1 = zext i8 %56 to i32
  %scevgep176.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %57 = load i8, i8* %scevgep176.1, align 1
  %conv89.i226.1 = zext i8 %57 to i32
  %xor90.i227.1 = xor i32 %conv84.i221.1, %conv89.i226.1
  %conv91.i228.1 = trunc i32 %xor90.i227.1 to i8
  %scevgep179.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i228.1, i8* %scevgep179.1, align 1
  %scevgep162 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 1, i64 0
  %58 = bitcast i8* %scevgep162 to [2 x [2 x i8]]*
  %scevgep166 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i, i64 0, i64 1, i64 0
  %59 = bitcast i8* %scevgep166 to [2 x [2 x i8]]*
  %scevgep170 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %60 = bitcast i8* %scevgep170 to [2 x [2 x i8]]*
  %scevgep174 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %61 = bitcast i8* %scevgep174 to [2 x [2 x i8]]*
  %scevgep178 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 1, i64 0
  %62 = bitcast i8* %scevgep178 to [2 x [2 x i8]]*
  %arrayidx56.i193.1 = getelementptr inbounds i8, i8* %x, i64 1
  %arrayidx70.i207.1 = getelementptr inbounds i8, i8* %x, i64 1
  %scevgep160.1334 = getelementptr [2 x i8], [2 x i8]* %e4, i64 0, i64 0
  %63 = load i8, i8* %scevgep160.1334, align 1
  %conv44.i180.1335 = zext i8 %63 to i32
  %scevgep163.1336 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %58, i64 0, i64 0, i64 0
  %64 = load i8, i8* %scevgep163.1336, align 1
  %conv49.i185.1337 = zext i8 %64 to i32
  %xor.i186.1338 = xor i32 %conv44.i180.1335, %conv49.i185.1337
  %conv50.i187.1339 = trunc i32 %xor.i186.1338 to i8
  %scevgep167.1340 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %59, i64 0, i64 0, i64 0
  store i8 %conv50.i187.1339, i8* %scevgep167.1340, align 1
  %65 = load i8, i8* %arrayidx56.i193.1, align 1
  %conv57.i194.1341 = zext i8 %65 to i32
  %xor58.i195.1342 = xor i32 %conv57.i194.1341, 1
  %conv59.i196.1343 = trunc i32 %xor58.i195.1342 to i8
  %scevgep164.1344 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %58, i64 0, i64 0, i64 0
  %66 = load i8, i8* %scevgep164.1344, align 1
  %call64.i201.1345 = call zeroext i8 @mult(i8 zeroext %conv59.i196.1343, i8 zeroext %66) #3
  %scevgep171.1346 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %60, i64 0, i64 0, i64 0
  store i8 %call64.i201.1345, i8* %scevgep171.1346, align 1
  %67 = load i8, i8* %arrayidx70.i207.1, align 1
  %scevgep168.1347 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %59, i64 0, i64 0, i64 0
  %68 = load i8, i8* %scevgep168.1347, align 1
  %call75.i212.1348 = call zeroext i8 @mult(i8 zeroext %67, i8 zeroext %68) #3
  %scevgep175.1349 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %61, i64 0, i64 0, i64 0
  store i8 %call75.i212.1348, i8* %scevgep175.1349, align 1
  %scevgep172.1350 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %60, i64 0, i64 0, i64 0
  %69 = load i8, i8* %scevgep172.1350, align 1
  %conv84.i221.1351 = zext i8 %69 to i32
  %scevgep176.1352 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %61, i64 0, i64 0, i64 0
  %70 = load i8, i8* %scevgep176.1352, align 1
  %conv89.i226.1353 = zext i8 %70 to i32
  %xor90.i227.1354 = xor i32 %conv84.i221.1351, %conv89.i226.1353
  %conv91.i228.1355 = trunc i32 %xor90.i227.1354 to i8
  %scevgep179.1356 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %62, i64 0, i64 0, i64 0
  store i8 %conv91.i228.1355, i8* %scevgep179.1356, align 1
  %71 = load i8, i8* %x, align 1
  %72 = load i8, i8* %arraydecay8, align 1
  %call111.i245 = call zeroext i8 @mult(i8 zeroext %71, i8 zeroext %72) #3
  store i8 %call111.i245, i8* %arraydecay9, align 1
  %scevgep150.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 0, i64 1
  %73 = load i8, i8* %scevgep150.1, align 1
  %conv126.i257.1 = zext i8 %73 to i32
  %74 = load i8, i8* %arraydecay9, align 1
  %conv129.i260.1 = zext i8 %74 to i32
  %xor130.i261.1 = xor i32 %conv129.i260.1, %conv126.i257.1
  %conv131.i262.1 = trunc i32 %xor130.i261.1 to i8
  store i8 %conv131.i262.1, i8* %arraydecay9, align 1
  %scevgep149 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 1, i64 0
  %75 = bitcast i8* %scevgep149 to [2 x [2 x i8]]*
  %arrayidx108.i242.1 = getelementptr inbounds i8, i8* %x, i64 1
  %76 = load i8, i8* %arrayidx108.i242.1, align 1
  %arrayidx110.i244.1 = getelementptr inbounds i8, i8* %arraydecay8, i64 1
  %77 = load i8, i8* %arrayidx110.i244.1, align 1
  %call111.i245.1 = call zeroext i8 @mult(i8 zeroext %76, i8 zeroext %77) #3
  %arrayidx113.i247.1 = getelementptr inbounds i8, i8* %arraydecay9, i64 1
  store i8 %call111.i245.1, i8* %arrayidx113.i247.1, align 1
  %arrayidx128.i259.1 = getelementptr inbounds i8, i8* %arraydecay9, i64 1
  %scevgep150.1325 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %75, i64 0, i64 0, i64 0
  %78 = load i8, i8* %scevgep150.1325, align 1
  %conv126.i257.1326 = zext i8 %78 to i32
  %79 = load i8, i8* %arrayidx128.i259.1, align 1
  %conv129.i260.1327 = zext i8 %79 to i32
  %xor130.i261.1328 = xor i32 %conv129.i260.1327, %conv126.i257.1326
  %conv131.i262.1329 = trunc i32 %xor130.i261.1328 to i8
  store i8 %conv131.i262.1329, i8* %arrayidx128.i259.1, align 1
  %call139.i268 = call zeroext i8 @mult(i8 zeroext %call.i115, i8 zeroext %call1.i116) #3
  %conv140.i269 = zext i8 %call139.i268 to i32
  %scevgep140 = getelementptr [2 x i8], [2 x i8]* %e5, i64 0, i64 0
  %80 = load i8, i8* %scevgep140, align 1
  %scevgep140.1 = getelementptr [2 x i8], [2 x i8]* %e5, i64 0, i64 1
  %81 = load i8, i8* %scevgep140.1, align 1
  %conv.i.i172.i276.1 = zext i8 %81 to i32
  %conv1.i.i173.i277.1 = zext i8 %80 to i32
  %xor.i.i174.i278.1 = xor i32 %conv1.i.i173.i277.1, %conv.i.i172.i276.1
  %conv2.i.i175.i279.1 = trunc i32 %xor.i.i174.i278.1 to i8
  %conv142.i282 = zext i8 %conv2.i.i175.i279.1 to i32
  %cmp143.i283 = icmp eq i32 %conv140.i269, %conv142.i282
  call void @assert(i1 zeroext %cmp143.i283) #3
  %arraydecay10 = getelementptr inbounds [2 x i8], [2 x i8]* %e3, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [2 x i8], [2 x i8]* %e4, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [2 x i8], [2 x i8]* %e7, i64 0, i64 0
  %call.i316 = call zeroext i8 (...) @rand() #3
  %call1.i317 = call zeroext i8 (...) @rand() #3
  %conv.i318 = zext i8 %call.i316 to i32
  %scevgep136 = getelementptr [2 x i8], [2 x i8]* %e3, i64 0, i64 0
  %82 = load i8, i8* %scevgep136, align 1
  %scevgep136.1 = getelementptr [2 x i8], [2 x i8]* %e3, i64 0, i64 1
  %83 = load i8, i8* %scevgep136.1, align 1
  %conv.i.i.i324.1 = zext i8 %83 to i32
  %conv1.i.i.i325.1 = zext i8 %82 to i32
  %xor.i.i.i326.1 = xor i32 %conv1.i.i.i325.1, %conv.i.i.i324.1
  %conv2.i.i.i327.1 = trunc i32 %xor.i.i.i326.1 to i8
  %conv3.i330 = zext i8 %conv2.i.i.i327.1 to i32
  %cmp.i331 = icmp eq i32 %conv.i318, %conv3.i330
  call void @assume(i1 zeroext %cmp.i331) #3
  %conv5.i332 = zext i8 %call1.i317 to i32
  %scevgep132 = getelementptr [2 x i8], [2 x i8]* %e4, i64 0, i64 0
  %84 = load i8, i8* %scevgep132, align 1
  %scevgep132.1 = getelementptr [2 x i8], [2 x i8]* %e4, i64 0, i64 1
  %85 = load i8, i8* %scevgep132.1, align 1
  %conv.i.i155.i339.1 = zext i8 %85 to i32
  %conv1.i.i156.i340.1 = zext i8 %84 to i32
  %xor.i.i157.i341.1 = xor i32 %conv1.i.i156.i340.1, %conv.i.i155.i339.1
  %conv2.i.i158.i342.1 = trunc i32 %xor.i.i157.i341.1 to i8
  %conv7.i345 = zext i8 %conv2.i.i158.i342.1 to i32
  %cmp8.i346 = icmp eq i32 %conv5.i332, %conv7.i345
  call void @assume(i1 zeroext %cmp8.i346) #3
  %call16.i354 = call zeroext i8 (...) @rand() #3
  %scevgep122 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i354, i8* %scevgep122, align 1
  %scevgep123 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %86 = load i8, i8* %scevgep123, align 1
  %scevgep124 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %86, i8* %scevgep124, align 1
  %scevgep95.1 = getelementptr [2 x i8], [2 x i8]* %e4, i64 0, i64 1
  %87 = load i8, i8* %scevgep95.1, align 1
  %conv44.i381.1 = zext i8 %87 to i32
  %scevgep98.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %88 = load i8, i8* %scevgep98.1, align 1
  %conv49.i386.1 = zext i8 %88 to i32
  %xor.i387.1 = xor i32 %conv44.i381.1, %conv49.i386.1
  %conv50.i388.1 = trunc i32 %xor.i387.1 to i8
  %scevgep102.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i388.1, i8* %scevgep102.1, align 1
  %89 = load i8, i8* %arraydecay10, align 1
  %conv57.i395.1 = zext i8 %89 to i32
  %xor58.i396.1 = xor i32 %conv57.i395.1, 1
  %conv59.i397.1 = trunc i32 %xor58.i396.1 to i8
  %scevgep99.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 0, i64 1
  %90 = load i8, i8* %scevgep99.1, align 1
  %call64.i402.1 = call zeroext i8 @mult(i8 zeroext %conv59.i397.1, i8 zeroext %90) #3
  %scevgep106.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i402.1, i8* %scevgep106.1, align 1
  %91 = load i8, i8* %arraydecay10, align 1
  %scevgep103.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i, i64 0, i64 0, i64 1
  %92 = load i8, i8* %scevgep103.1, align 1
  %call75.i413.1 = call zeroext i8 @mult(i8 zeroext %91, i8 zeroext %92) #3
  %scevgep110.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i413.1, i8* %scevgep110.1, align 1
  %scevgep107.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %93 = load i8, i8* %scevgep107.1, align 1
  %conv84.i422.1 = zext i8 %93 to i32
  %scevgep111.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %94 = load i8, i8* %scevgep111.1, align 1
  %conv89.i427.1 = zext i8 %94 to i32
  %xor90.i428.1 = xor i32 %conv84.i422.1, %conv89.i427.1
  %conv91.i429.1 = trunc i32 %xor90.i428.1 to i8
  %scevgep114.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i429.1, i8* %scevgep114.1, align 1
  %scevgep97 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %r.i, i64 0, i64 1, i64 0
  %95 = bitcast i8* %scevgep97 to [2 x [2 x i8]]*
  %scevgep101 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %s.i, i64 0, i64 1, i64 0
  %96 = bitcast i8* %scevgep101 to [2 x [2 x i8]]*
  %scevgep105 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %97 = bitcast i8* %scevgep105 to [2 x [2 x i8]]*
  %scevgep109 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %98 = bitcast i8* %scevgep109 to [2 x [2 x i8]]*
  %scevgep113 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 1, i64 0
  %99 = bitcast i8* %scevgep113 to [2 x [2 x i8]]*
  %arrayidx56.i394.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %arrayidx70.i408.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %scevgep95.1298 = getelementptr [2 x i8], [2 x i8]* %e4, i64 0, i64 0
  %100 = load i8, i8* %scevgep95.1298, align 1
  %conv44.i381.1299 = zext i8 %100 to i32
  %scevgep98.1300 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %95, i64 0, i64 0, i64 0
  %101 = load i8, i8* %scevgep98.1300, align 1
  %conv49.i386.1301 = zext i8 %101 to i32
  %xor.i387.1302 = xor i32 %conv44.i381.1299, %conv49.i386.1301
  %conv50.i388.1303 = trunc i32 %xor.i387.1302 to i8
  %scevgep102.1304 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %96, i64 0, i64 0, i64 0
  store i8 %conv50.i388.1303, i8* %scevgep102.1304, align 1
  %102 = load i8, i8* %arrayidx56.i394.1, align 1
  %conv57.i395.1305 = zext i8 %102 to i32
  %xor58.i396.1306 = xor i32 %conv57.i395.1305, 1
  %conv59.i397.1307 = trunc i32 %xor58.i396.1306 to i8
  %scevgep99.1308 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %95, i64 0, i64 0, i64 0
  %103 = load i8, i8* %scevgep99.1308, align 1
  %call64.i402.1309 = call zeroext i8 @mult(i8 zeroext %conv59.i397.1307, i8 zeroext %103) #3
  %scevgep106.1310 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %97, i64 0, i64 0, i64 0
  store i8 %call64.i402.1309, i8* %scevgep106.1310, align 1
  %104 = load i8, i8* %arrayidx70.i408.1, align 1
  %scevgep103.1311 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %96, i64 0, i64 0, i64 0
  %105 = load i8, i8* %scevgep103.1311, align 1
  %call75.i413.1312 = call zeroext i8 @mult(i8 zeroext %104, i8 zeroext %105) #3
  %scevgep110.1313 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %98, i64 0, i64 0, i64 0
  store i8 %call75.i413.1312, i8* %scevgep110.1313, align 1
  %scevgep107.1314 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %97, i64 0, i64 0, i64 0
  %106 = load i8, i8* %scevgep107.1314, align 1
  %conv84.i422.1315 = zext i8 %106 to i32
  %scevgep111.1316 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %98, i64 0, i64 0, i64 0
  %107 = load i8, i8* %scevgep111.1316, align 1
  %conv89.i427.1317 = zext i8 %107 to i32
  %xor90.i428.1318 = xor i32 %conv84.i422.1315, %conv89.i427.1317
  %conv91.i429.1319 = trunc i32 %xor90.i428.1318 to i8
  %scevgep114.1320 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %99, i64 0, i64 0, i64 0
  store i8 %conv91.i429.1319, i8* %scevgep114.1320, align 1
  %108 = load i8, i8* %arraydecay10, align 1
  %109 = load i8, i8* %arraydecay11, align 1
  %call111.i446 = call zeroext i8 @mult(i8 zeroext %108, i8 zeroext %109) #3
  store i8 %call111.i446, i8* %arraydecay12, align 1
  %scevgep86.1 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 0, i64 1
  %110 = load i8, i8* %scevgep86.1, align 1
  %conv126.i458.1 = zext i8 %110 to i32
  %111 = load i8, i8* %arraydecay12, align 1
  %conv129.i461.1 = zext i8 %111 to i32
  %xor130.i462.1 = xor i32 %conv129.i461.1, %conv126.i458.1
  %conv131.i463.1 = trunc i32 %xor130.i462.1 to i8
  store i8 %conv131.i463.1, i8* %arraydecay12, align 1
  %scevgep85 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %z.i, i64 0, i64 1, i64 0
  %112 = bitcast i8* %scevgep85 to [2 x [2 x i8]]*
  %arrayidx108.i443.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %113 = load i8, i8* %arrayidx108.i443.1, align 1
  %arrayidx110.i445.1 = getelementptr inbounds i8, i8* %arraydecay11, i64 1
  %114 = load i8, i8* %arrayidx110.i445.1, align 1
  %call111.i446.1 = call zeroext i8 @mult(i8 zeroext %113, i8 zeroext %114) #3
  %arrayidx113.i448.1 = getelementptr inbounds i8, i8* %arraydecay12, i64 1
  store i8 %call111.i446.1, i8* %arrayidx113.i448.1, align 1
  %arrayidx128.i460.1 = getelementptr inbounds i8, i8* %arraydecay12, i64 1
  %scevgep86.1289 = getelementptr [2 x [2 x i8]], [2 x [2 x i8]]* %112, i64 0, i64 0, i64 0
  %115 = load i8, i8* %scevgep86.1289, align 1
  %conv126.i458.1290 = zext i8 %115 to i32
  %116 = load i8, i8* %arrayidx128.i460.1, align 1
  %conv129.i461.1291 = zext i8 %116 to i32
  %xor130.i462.1292 = xor i32 %conv129.i461.1291, %conv126.i458.1290
  %conv131.i463.1293 = trunc i32 %xor130.i462.1292 to i8
  store i8 %conv131.i463.1293, i8* %arrayidx128.i460.1, align 1
  %call139.i469 = call zeroext i8 @mult(i8 zeroext %call.i316, i8 zeroext %call1.i317) #3
  %conv140.i470 = zext i8 %call139.i469 to i32
  %scevgep76 = getelementptr [2 x i8], [2 x i8]* %e7, i64 0, i64 0
  %117 = load i8, i8* %scevgep76, align 1
  %scevgep76.1 = getelementptr [2 x i8], [2 x i8]* %e7, i64 0, i64 1
  %118 = load i8, i8* %scevgep76.1, align 1
  %conv.i.i172.i477.1 = zext i8 %118 to i32
  %conv1.i.i173.i478.1 = zext i8 %117 to i32
  %xor.i.i174.i479.1 = xor i32 %conv1.i.i173.i478.1, %conv.i.i172.i477.1
  %conv2.i.i175.i480.1 = trunc i32 %xor.i.i174.i479.1 to i8
  %conv142.i483 = zext i8 %conv2.i.i175.i480.1 to i32
  %cmp143.i484 = icmp eq i32 %conv140.i470, %conv142.i483
  call void @assert(i1 zeroext %cmp143.i484) #3
  %scevgep71 = getelementptr [2 x i8], [2 x i8]* %e3, i64 0, i64 0
  %119 = load i8, i8* %scevgep71, align 1
  %call.i494 = call zeroext i8 @L3(i8 zeroext %119) #3
  %scevgep72 = getelementptr [2 x i8], [2 x i8]* %l3, i64 0, i64 0
  store i8 %call.i494, i8* %scevgep72, align 1
  %scevgep71.1 = getelementptr [2 x i8], [2 x i8]* %e3, i64 0, i64 1
  %120 = load i8, i8* %scevgep71.1, align 1
  %call.i494.1 = call zeroext i8 @L3(i8 zeroext %120) #3
  %scevgep72.1 = getelementptr [2 x i8], [2 x i8]* %l3, i64 0, i64 1
  store i8 %call.i494.1, i8* %scevgep72.1, align 1
  %scevgep66 = getelementptr [2 x i8], [2 x i8]* %e5, i64 0, i64 0
  %121 = load i8, i8* %scevgep66, align 1
  %call.i509 = call zeroext i8 @L5(i8 zeroext %121) #3
  %scevgep67 = getelementptr [2 x i8], [2 x i8]* %l5, i64 0, i64 0
  store i8 %call.i509, i8* %scevgep67, align 1
  %scevgep66.1 = getelementptr [2 x i8], [2 x i8]* %e5, i64 0, i64 1
  %122 = load i8, i8* %scevgep66.1, align 1
  %call.i509.1 = call zeroext i8 @L5(i8 zeroext %122) #3
  %scevgep67.1 = getelementptr [2 x i8], [2 x i8]* %l5, i64 0, i64 1
  store i8 %call.i509.1, i8* %scevgep67.1, align 1
  %scevgep61 = getelementptr [2 x i8], [2 x i8]* %e7, i64 0, i64 0
  %123 = load i8, i8* %scevgep61, align 1
  %call.i524 = call zeroext i8 @L7(i8 zeroext %123) #3
  %scevgep62 = getelementptr [2 x i8], [2 x i8]* %l7, i64 0, i64 0
  store i8 %call.i524, i8* %scevgep62, align 1
  %scevgep61.1 = getelementptr [2 x i8], [2 x i8]* %e7, i64 0, i64 1
  %124 = load i8, i8* %scevgep61.1, align 1
  %call.i524.1 = call zeroext i8 @L7(i8 zeroext %124) #3
  %scevgep62.1 = getelementptr [2 x i8], [2 x i8]* %l7, i64 0, i64 1
  store i8 %call.i524.1, i8* %scevgep62.1, align 1
  %scevgep53 = getelementptr [2 x i8], [2 x i8]* %l1, i64 0, i64 0
  %125 = load i8, i8* %scevgep53, align 1
  %conv21 = zext i8 %125 to i32
  %scevgep54 = getelementptr [2 x i8], [2 x i8]* %l3, i64 0, i64 0
  %126 = load i8, i8* %scevgep54, align 1
  %conv24 = zext i8 %126 to i32
  %xor = xor i32 %conv21, %conv24
  %scevgep55 = getelementptr [2 x i8], [2 x i8]* %l5, i64 0, i64 0
  %127 = load i8, i8* %scevgep55, align 1
  %conv27 = zext i8 %127 to i32
  %xor28 = xor i32 %xor, %conv27
  %scevgep56 = getelementptr [2 x i8], [2 x i8]* %l7, i64 0, i64 0
  %128 = load i8, i8* %scevgep56, align 1
  %conv31 = zext i8 %128 to i32
  %xor32 = xor i32 %xor28, %conv31
  %conv33 = trunc i32 %xor32 to i8
  store i8 %conv33, i8* %y, align 1
  %scevgep53.1 = getelementptr [2 x i8], [2 x i8]* %l1, i64 0, i64 1
  %129 = load i8, i8* %scevgep53.1, align 1
  %conv21.1 = zext i8 %129 to i32
  %scevgep54.1 = getelementptr [2 x i8], [2 x i8]* %l3, i64 0, i64 1
  %130 = load i8, i8* %scevgep54.1, align 1
  %conv24.1 = zext i8 %130 to i32
  %xor.1 = xor i32 %conv21.1, %conv24.1
  %scevgep55.1 = getelementptr [2 x i8], [2 x i8]* %l5, i64 0, i64 1
  %131 = load i8, i8* %scevgep55.1, align 1
  %conv27.1 = zext i8 %131 to i32
  %xor28.1 = xor i32 %xor.1, %conv27.1
  %scevgep56.1 = getelementptr [2 x i8], [2 x i8]* %l7, i64 0, i64 1
  %132 = load i8, i8* %scevgep56.1, align 1
  %conv31.1 = zext i8 %132 to i32
  %xor32.1 = xor i32 %xor28.1, %conv31.1
  %conv33.1 = trunc i32 %xor32.1 to i8
  %scevgep57.1 = getelementptr i8, i8* %y, i64 1
  store i8 %conv33.1, i8* %scevgep57.1, align 1
  %133 = load i8, i8* %y, align 1
  %conv37 = zext i8 %133 to i32
  %xor38 = xor i32 %conv37, 1
  %conv39 = trunc i32 %xor38 to i8
  store i8 %conv39, i8* %y, align 1
  %call.i531 = call zeroext i8 @L1(i8 zeroext %call) #3
  %conv.i532 = zext i8 %call.i531 to i32
  %xor.i533 = xor i32 1, %conv.i532
  %call.i.i534 = call zeroext i8 @square(i8 zeroext %call) #3
  %call1.i.i = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call.i.i534) #3
  %call2.i = call zeroext i8 @L3(i8 zeroext %call1.i.i) #3
  %conv3.i535 = zext i8 %call2.i to i32
  %xor4.i = xor i32 %xor.i533, %conv3.i535
  %call.i15.i = call zeroext i8 @exp4(i8 zeroext %call) #3
  %call1.i16.i = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call.i15.i) #3
  %call6.i = call zeroext i8 @L5(i8 zeroext %call1.i16.i) #3
  %conv7.i536 = zext i8 %call6.i to i32
  %xor8.i = xor i32 %xor4.i, %conv7.i536
  %call.i.i.i537 = call zeroext i8 @square(i8 zeroext %call) #3
  %call1.i.i.i = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call.i.i.i537) #3
  %call1.i18.i = call zeroext i8 @exp4(i8 zeroext %call) #3
  %call2.i.i = call zeroext i8 @mult(i8 zeroext %call1.i.i.i, i8 zeroext %call1.i18.i) #3
  %call10.i = call zeroext i8 @L7(i8 zeroext %call2.i.i) #3
  %conv11.i = zext i8 %call10.i to i32
  %xor12.i = xor i32 %xor8.i, %conv11.i
  %conv13.i = trunc i32 %xor12.i to i8
  %conv41 = zext i8 %conv13.i to i32
  %134 = load i8, i8* %y, align 1
  %scevgep.1 = getelementptr i8, i8* %y, i64 1
  %135 = load i8, i8* %scevgep.1, align 1
  %conv.i.i548.1 = zext i8 %135 to i32
  %conv1.i.i549.1 = zext i8 %134 to i32
  %xor.i.i550.1 = xor i32 %conv1.i.i549.1, %conv.i.i548.1
  %conv2.i.i551.1 = trunc i32 %xor.i.i550.1 to i8
  %conv43 = zext i8 %conv2.i.i551.1 to i32
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
