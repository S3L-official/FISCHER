; ModuleID = '../examples/cassiers-tifs2020-present-sbox-noaffine.inline-2.ll'
source_filename = "../examples/cassiers-tifs2020-present-sbox-noaffine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 2, align 4
@.str = private unnamed_addr constant [7 x i8] c"verify\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [54 x i8] c"../examples/cassiers-tifs2020-present-sbox-noaffine.c\00", section "llvm.metadata"
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
@llvm.global.annotations = appending global [13 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*, i8*)* @sec_mult to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0), i32 3 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @square to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0), i32 59 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp4 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0), i32 61 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp8 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0), i32 63 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @L1 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0), i32 65 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @L3 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0), i32 69 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @L5 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0), i32 73 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @L7 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0), i32 77 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp3 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0), i32 81 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp5 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0), i32 85 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp7 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0), i32 89 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @S to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0), i32 93 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*)* @sec_S to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0), i32 97 }], section "llvm.metadata"

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
  %s = alloca [3 x [3 x i8]], align 1
  %p0 = alloca [3 x [3 x i8]], align 1
  %p1 = alloca [3 x [3 x i8]], align 1
  %z = alloca [3 x [3 x i8]], align 1
  %call = call zeroext i8 (...) @rand()
  %call1 = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %a, align 1
  %scevgep74.1 = getelementptr i8, i8* %a, i64 1
  %1 = load i8, i8* %scevgep74.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep74.2 = getelementptr i8, i8* %a, i64 2
  %2 = load i8, i8* %scevgep74.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %conv3 = zext i8 %conv2.i.i.2 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %3 = load i8, i8* %b, align 1
  %scevgep70.1 = getelementptr i8, i8* %b, i64 1
  %4 = load i8, i8* %scevgep70.1, align 1
  %conv.i.i155.1 = zext i8 %4 to i32
  %conv1.i.i156.1 = zext i8 %3 to i32
  %xor.i.i157.1 = xor i32 %conv1.i.i156.1, %conv.i.i155.1
  %conv2.i.i158.1 = trunc i32 %xor.i.i157.1 to i8
  %scevgep70.2 = getelementptr i8, i8* %b, i64 2
  %5 = load i8, i8* %scevgep70.2, align 1
  %conv.i.i155.2 = zext i8 %5 to i32
  %conv1.i.i156.2 = zext i8 %conv2.i.i158.1 to i32
  %xor.i.i157.2 = xor i32 %conv1.i.i156.2, %conv.i.i155.2
  %conv2.i.i158.2 = trunc i32 %xor.i.i157.2 to i8
  %conv7 = zext i8 %conv2.i.i158.2 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %scevgep54 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 0, i64 1
  %scevgep5455 = bitcast i8* %scevgep54 to [3 x [3 x i8]]*
  %scevgep61 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 1, i64 0
  %scevgep6162 = bitcast i8* %scevgep61 to [3 x [3 x i8]]*
  %call16 = call zeroext i8 (...) @rand()
  store i8 %call16, i8* %scevgep54, align 1
  %6 = load i8, i8* %scevgep54, align 1
  store i8 %6, i8* %scevgep61, align 1
  %scevgep59 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep5455, i64 0, i64 0, i64 1
  %scevgep66 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep6162, i64 0, i64 1, i64 0
  %call16.1152 = call zeroext i8 (...) @rand()
  store i8 %call16.1152, i8* %scevgep59, align 1
  %7 = load i8, i8* %scevgep59, align 1
  store i8 %7, i8* %scevgep66, align 1
  %scevgep57 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep5455, i64 0, i64 1, i64 1
  %scevgep64 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep6162, i64 0, i64 1, i64 1
  %call16.1 = call zeroext i8 (...) @rand()
  store i8 %call16.1, i8* %scevgep57, align 1
  %8 = load i8, i8* %scevgep57, align 1
  store i8 %8, i8* %scevgep64, align 1
  %scevgep31.1 = getelementptr i8, i8* %b, i64 1
  %9 = load i8, i8* %scevgep31.1, align 1
  %conv44.1 = zext i8 %9 to i32
  %scevgep34.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 0, i64 1
  %10 = load i8, i8* %scevgep34.1, align 1
  %conv49.1 = zext i8 %10 to i32
  %xor.1 = xor i32 %conv44.1, %conv49.1
  %conv50.1 = trunc i32 %xor.1 to i8
  %scevgep38.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s, i64 0, i64 0, i64 1
  store i8 %conv50.1, i8* %scevgep38.1, align 1
  %11 = load i8, i8* %a, align 1
  %conv57.1 = zext i8 %11 to i32
  %xor58.1 = xor i32 %conv57.1, 1
  %conv59.1 = trunc i32 %xor58.1 to i8
  %scevgep35.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 0, i64 1
  %12 = load i8, i8* %scevgep35.1, align 1
  %call64.1 = call zeroext i8 @mult(i8 zeroext %conv59.1, i8 zeroext %12)
  %scevgep42.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0, i64 0, i64 0, i64 1
  store i8 %call64.1, i8* %scevgep42.1, align 1
  %13 = load i8, i8* %a, align 1
  %scevgep39.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s, i64 0, i64 0, i64 1
  %14 = load i8, i8* %scevgep39.1, align 1
  %call75.1 = call zeroext i8 @mult(i8 zeroext %13, i8 zeroext %14)
  %scevgep46.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1, i64 0, i64 0, i64 1
  store i8 %call75.1, i8* %scevgep46.1, align 1
  %scevgep43.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0, i64 0, i64 0, i64 1
  %15 = load i8, i8* %scevgep43.1, align 1
  %conv84.1 = zext i8 %15 to i32
  %scevgep47.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1, i64 0, i64 0, i64 1
  %16 = load i8, i8* %scevgep47.1, align 1
  %conv89.1 = zext i8 %16 to i32
  %xor90.1 = xor i32 %conv84.1, %conv89.1
  %conv91.1 = trunc i32 %xor90.1 to i8
  %scevgep50.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 1
  store i8 %conv91.1, i8* %scevgep50.1, align 1
  %scevgep31.2 = getelementptr i8, i8* %b, i64 2
  %17 = load i8, i8* %scevgep31.2, align 1
  %conv44.2 = zext i8 %17 to i32
  %scevgep34.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 0, i64 2
  %18 = load i8, i8* %scevgep34.2, align 1
  %conv49.2 = zext i8 %18 to i32
  %xor.2 = xor i32 %conv44.2, %conv49.2
  %conv50.2 = trunc i32 %xor.2 to i8
  %scevgep38.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s, i64 0, i64 0, i64 2
  store i8 %conv50.2, i8* %scevgep38.2, align 1
  %19 = load i8, i8* %a, align 1
  %conv57.2 = zext i8 %19 to i32
  %xor58.2 = xor i32 %conv57.2, 1
  %conv59.2 = trunc i32 %xor58.2 to i8
  %scevgep35.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 0, i64 2
  %20 = load i8, i8* %scevgep35.2, align 1
  %call64.2 = call zeroext i8 @mult(i8 zeroext %conv59.2, i8 zeroext %20)
  %scevgep42.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0, i64 0, i64 0, i64 2
  store i8 %call64.2, i8* %scevgep42.2, align 1
  %21 = load i8, i8* %a, align 1
  %scevgep39.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s, i64 0, i64 0, i64 2
  %22 = load i8, i8* %scevgep39.2, align 1
  %call75.2 = call zeroext i8 @mult(i8 zeroext %21, i8 zeroext %22)
  %scevgep46.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1, i64 0, i64 0, i64 2
  store i8 %call75.2, i8* %scevgep46.2, align 1
  %scevgep43.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0, i64 0, i64 0, i64 2
  %23 = load i8, i8* %scevgep43.2, align 1
  %conv84.2 = zext i8 %23 to i32
  %scevgep47.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1, i64 0, i64 0, i64 2
  %24 = load i8, i8* %scevgep47.2, align 1
  %conv89.2 = zext i8 %24 to i32
  %xor90.2 = xor i32 %conv84.2, %conv89.2
  %conv91.2 = trunc i32 %xor90.2 to i8
  %scevgep50.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 2
  store i8 %conv91.2, i8* %scevgep50.2, align 1
  %scevgep33 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r, i64 0, i64 1, i64 0
  %25 = bitcast i8* %scevgep33 to [3 x [3 x i8]]*
  %scevgep37 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s, i64 0, i64 1, i64 0
  %26 = bitcast i8* %scevgep37 to [3 x [3 x i8]]*
  %scevgep41 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0, i64 0, i64 1, i64 0
  %27 = bitcast i8* %scevgep41 to [3 x [3 x i8]]*
  %scevgep45 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1, i64 0, i64 1, i64 0
  %28 = bitcast i8* %scevgep45 to [3 x [3 x i8]]*
  %scevgep49 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 1, i64 0
  %29 = bitcast i8* %scevgep49 to [3 x [3 x i8]]*
  %arrayidx56.1 = getelementptr inbounds i8, i8* %a, i64 1
  %arrayidx70.1 = getelementptr inbounds i8, i8* %a, i64 1
  %30 = load i8, i8* %b, align 1
  %conv44.198 = zext i8 %30 to i32
  %scevgep34.199 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %25, i64 0, i64 0, i64 0
  %31 = load i8, i8* %scevgep34.199, align 1
  %conv49.1100 = zext i8 %31 to i32
  %xor.1101 = xor i32 %conv44.198, %conv49.1100
  %conv50.1102 = trunc i32 %xor.1101 to i8
  %scevgep38.1103 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %26, i64 0, i64 0, i64 0
  store i8 %conv50.1102, i8* %scevgep38.1103, align 1
  %32 = load i8, i8* %arrayidx56.1, align 1
  %conv57.1104 = zext i8 %32 to i32
  %xor58.1105 = xor i32 %conv57.1104, 1
  %conv59.1106 = trunc i32 %xor58.1105 to i8
  %scevgep35.1107 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %25, i64 0, i64 0, i64 0
  %33 = load i8, i8* %scevgep35.1107, align 1
  %call64.1108 = call zeroext i8 @mult(i8 zeroext %conv59.1106, i8 zeroext %33)
  %scevgep42.1109 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %27, i64 0, i64 0, i64 0
  store i8 %call64.1108, i8* %scevgep42.1109, align 1
  %34 = load i8, i8* %arrayidx70.1, align 1
  %scevgep39.1110 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %26, i64 0, i64 0, i64 0
  %35 = load i8, i8* %scevgep39.1110, align 1
  %call75.1111 = call zeroext i8 @mult(i8 zeroext %34, i8 zeroext %35)
  %scevgep46.1112 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %28, i64 0, i64 0, i64 0
  store i8 %call75.1111, i8* %scevgep46.1112, align 1
  %scevgep43.1113 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %27, i64 0, i64 0, i64 0
  %36 = load i8, i8* %scevgep43.1113, align 1
  %conv84.1114 = zext i8 %36 to i32
  %scevgep47.1115 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %28, i64 0, i64 0, i64 0
  %37 = load i8, i8* %scevgep47.1115, align 1
  %conv89.1116 = zext i8 %37 to i32
  %xor90.1117 = xor i32 %conv84.1114, %conv89.1116
  %conv91.1118 = trunc i32 %xor90.1117 to i8
  %scevgep50.1119 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %29, i64 0, i64 0, i64 0
  store i8 %conv91.1118, i8* %scevgep50.1119, align 1
  %scevgep31.2.1 = getelementptr i8, i8* %b, i64 2
  %38 = load i8, i8* %scevgep31.2.1, align 1
  %conv44.2.1 = zext i8 %38 to i32
  %scevgep34.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %25, i64 0, i64 0, i64 2
  %39 = load i8, i8* %scevgep34.2.1, align 1
  %conv49.2.1 = zext i8 %39 to i32
  %xor.2.1 = xor i32 %conv44.2.1, %conv49.2.1
  %conv50.2.1 = trunc i32 %xor.2.1 to i8
  %scevgep38.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %26, i64 0, i64 0, i64 2
  store i8 %conv50.2.1, i8* %scevgep38.2.1, align 1
  %40 = load i8, i8* %arrayidx56.1, align 1
  %conv57.2.1 = zext i8 %40 to i32
  %xor58.2.1 = xor i32 %conv57.2.1, 1
  %conv59.2.1 = trunc i32 %xor58.2.1 to i8
  %scevgep35.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %25, i64 0, i64 0, i64 2
  %41 = load i8, i8* %scevgep35.2.1, align 1
  %call64.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.2.1, i8 zeroext %41)
  %scevgep42.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %27, i64 0, i64 0, i64 2
  store i8 %call64.2.1, i8* %scevgep42.2.1, align 1
  %42 = load i8, i8* %arrayidx70.1, align 1
  %scevgep39.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %26, i64 0, i64 0, i64 2
  %43 = load i8, i8* %scevgep39.2.1, align 1
  %call75.2.1 = call zeroext i8 @mult(i8 zeroext %42, i8 zeroext %43)
  %scevgep46.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %28, i64 0, i64 0, i64 2
  store i8 %call75.2.1, i8* %scevgep46.2.1, align 1
  %scevgep43.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %27, i64 0, i64 0, i64 2
  %44 = load i8, i8* %scevgep43.2.1, align 1
  %conv84.2.1 = zext i8 %44 to i32
  %scevgep47.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %28, i64 0, i64 0, i64 2
  %45 = load i8, i8* %scevgep47.2.1, align 1
  %conv89.2.1 = zext i8 %45 to i32
  %xor90.2.1 = xor i32 %conv84.2.1, %conv89.2.1
  %conv91.2.1 = trunc i32 %xor90.2.1 to i8
  %scevgep50.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %29, i64 0, i64 0, i64 2
  store i8 %conv91.2.1, i8* %scevgep50.2.1, align 1
  %scevgep33.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %25, i64 0, i64 1, i64 0
  %46 = bitcast i8* %scevgep33.1 to [3 x [3 x i8]]*
  %scevgep37.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %26, i64 0, i64 1, i64 0
  %47 = bitcast i8* %scevgep37.1 to [3 x [3 x i8]]*
  %scevgep41.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %27, i64 0, i64 1, i64 0
  %48 = bitcast i8* %scevgep41.1 to [3 x [3 x i8]]*
  %scevgep45.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %28, i64 0, i64 1, i64 0
  %49 = bitcast i8* %scevgep45.1 to [3 x [3 x i8]]*
  %scevgep49.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %29, i64 0, i64 1, i64 0
  %50 = bitcast i8* %scevgep49.1 to [3 x [3 x i8]]*
  %arrayidx56.2 = getelementptr inbounds i8, i8* %a, i64 2
  %arrayidx70.2 = getelementptr inbounds i8, i8* %a, i64 2
  %51 = load i8, i8* %b, align 1
  %conv44.2125 = zext i8 %51 to i32
  %scevgep34.2126 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %46, i64 0, i64 0, i64 0
  %52 = load i8, i8* %scevgep34.2126, align 1
  %conv49.2127 = zext i8 %52 to i32
  %xor.2128 = xor i32 %conv44.2125, %conv49.2127
  %conv50.2129 = trunc i32 %xor.2128 to i8
  %scevgep38.2130 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %47, i64 0, i64 0, i64 0
  store i8 %conv50.2129, i8* %scevgep38.2130, align 1
  %53 = load i8, i8* %arrayidx56.2, align 1
  %conv57.2131 = zext i8 %53 to i32
  %xor58.2132 = xor i32 %conv57.2131, 1
  %conv59.2133 = trunc i32 %xor58.2132 to i8
  %scevgep35.2134 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %46, i64 0, i64 0, i64 0
  %54 = load i8, i8* %scevgep35.2134, align 1
  %call64.2135 = call zeroext i8 @mult(i8 zeroext %conv59.2133, i8 zeroext %54)
  %scevgep42.2136 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %48, i64 0, i64 0, i64 0
  store i8 %call64.2135, i8* %scevgep42.2136, align 1
  %55 = load i8, i8* %arrayidx70.2, align 1
  %scevgep39.2137 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %47, i64 0, i64 0, i64 0
  %56 = load i8, i8* %scevgep39.2137, align 1
  %call75.2138 = call zeroext i8 @mult(i8 zeroext %55, i8 zeroext %56)
  %scevgep46.2139 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %49, i64 0, i64 0, i64 0
  store i8 %call75.2138, i8* %scevgep46.2139, align 1
  %scevgep43.2140 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %48, i64 0, i64 0, i64 0
  %57 = load i8, i8* %scevgep43.2140, align 1
  %conv84.2141 = zext i8 %57 to i32
  %scevgep47.2142 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %49, i64 0, i64 0, i64 0
  %58 = load i8, i8* %scevgep47.2142, align 1
  %conv89.2143 = zext i8 %58 to i32
  %xor90.2144 = xor i32 %conv84.2141, %conv89.2143
  %conv91.2145 = trunc i32 %xor90.2144 to i8
  %scevgep50.2146 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %50, i64 0, i64 0, i64 0
  store i8 %conv91.2145, i8* %scevgep50.2146, align 1
  %scevgep31.1.2 = getelementptr i8, i8* %b, i64 1
  %59 = load i8, i8* %scevgep31.1.2, align 1
  %conv44.1.2 = zext i8 %59 to i32
  %scevgep34.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %46, i64 0, i64 0, i64 1
  %60 = load i8, i8* %scevgep34.1.2, align 1
  %conv49.1.2 = zext i8 %60 to i32
  %xor.1.2 = xor i32 %conv44.1.2, %conv49.1.2
  %conv50.1.2 = trunc i32 %xor.1.2 to i8
  %scevgep38.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %47, i64 0, i64 0, i64 1
  store i8 %conv50.1.2, i8* %scevgep38.1.2, align 1
  %61 = load i8, i8* %arrayidx56.2, align 1
  %conv57.1.2 = zext i8 %61 to i32
  %xor58.1.2 = xor i32 %conv57.1.2, 1
  %conv59.1.2 = trunc i32 %xor58.1.2 to i8
  %scevgep35.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %46, i64 0, i64 0, i64 1
  %62 = load i8, i8* %scevgep35.1.2, align 1
  %call64.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.1.2, i8 zeroext %62)
  %scevgep42.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %48, i64 0, i64 0, i64 1
  store i8 %call64.1.2, i8* %scevgep42.1.2, align 1
  %63 = load i8, i8* %arrayidx70.2, align 1
  %scevgep39.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %47, i64 0, i64 0, i64 1
  %64 = load i8, i8* %scevgep39.1.2, align 1
  %call75.1.2 = call zeroext i8 @mult(i8 zeroext %63, i8 zeroext %64)
  %scevgep46.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %49, i64 0, i64 0, i64 1
  store i8 %call75.1.2, i8* %scevgep46.1.2, align 1
  %scevgep43.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %48, i64 0, i64 0, i64 1
  %65 = load i8, i8* %scevgep43.1.2, align 1
  %conv84.1.2 = zext i8 %65 to i32
  %scevgep47.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %49, i64 0, i64 0, i64 1
  %66 = load i8, i8* %scevgep47.1.2, align 1
  %conv89.1.2 = zext i8 %66 to i32
  %xor90.1.2 = xor i32 %conv84.1.2, %conv89.1.2
  %conv91.1.2 = trunc i32 %xor90.1.2 to i8
  %scevgep50.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %50, i64 0, i64 0, i64 1
  store i8 %conv91.1.2, i8* %scevgep50.1.2, align 1
  %67 = load i8, i8* %a, align 1
  %68 = load i8, i8* %b, align 1
  %call111 = call zeroext i8 @mult(i8 zeroext %67, i8 zeroext %68)
  store i8 %call111, i8* %c, align 1
  %scevgep22.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 1
  %69 = load i8, i8* %scevgep22.1, align 1
  %conv126.1 = zext i8 %69 to i32
  %70 = load i8, i8* %c, align 1
  %conv129.1 = zext i8 %70 to i32
  %xor130.1 = xor i32 %conv129.1, %conv126.1
  %conv131.1 = trunc i32 %xor130.1 to i8
  store i8 %conv131.1, i8* %c, align 1
  %scevgep22.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 0, i64 2
  %71 = load i8, i8* %scevgep22.2, align 1
  %conv126.2 = zext i8 %71 to i32
  %72 = load i8, i8* %c, align 1
  %conv129.2 = zext i8 %72 to i32
  %xor130.2 = xor i32 %conv129.2, %conv126.2
  %conv131.2 = trunc i32 %xor130.2 to i8
  store i8 %conv131.2, i8* %c, align 1
  %scevgep21 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z, i64 0, i64 1, i64 0
  %73 = bitcast i8* %scevgep21 to [3 x [3 x i8]]*
  %arrayidx108.1 = getelementptr inbounds i8, i8* %a, i64 1
  %74 = load i8, i8* %arrayidx108.1, align 1
  %arrayidx110.1 = getelementptr inbounds i8, i8* %b, i64 1
  %75 = load i8, i8* %arrayidx110.1, align 1
  %call111.1 = call zeroext i8 @mult(i8 zeroext %74, i8 zeroext %75)
  %arrayidx113.1 = getelementptr inbounds i8, i8* %c, i64 1
  store i8 %call111.1, i8* %arrayidx113.1, align 1
  %arrayidx128.1 = getelementptr inbounds i8, i8* %c, i64 1
  %scevgep22.178 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %73, i64 0, i64 0, i64 0
  %76 = load i8, i8* %scevgep22.178, align 1
  %conv126.179 = zext i8 %76 to i32
  %77 = load i8, i8* %arrayidx128.1, align 1
  %conv129.180 = zext i8 %77 to i32
  %xor130.181 = xor i32 %conv129.180, %conv126.179
  %conv131.182 = trunc i32 %xor130.181 to i8
  store i8 %conv131.182, i8* %arrayidx128.1, align 1
  %scevgep22.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %73, i64 0, i64 0, i64 2
  %78 = load i8, i8* %scevgep22.2.1, align 1
  %conv126.2.1 = zext i8 %78 to i32
  %79 = load i8, i8* %arrayidx128.1, align 1
  %conv129.2.1 = zext i8 %79 to i32
  %xor130.2.1 = xor i32 %conv129.2.1, %conv126.2.1
  %conv131.2.1 = trunc i32 %xor130.2.1 to i8
  store i8 %conv131.2.1, i8* %arrayidx128.1, align 1
  %scevgep21.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %73, i64 0, i64 1, i64 0
  %80 = bitcast i8* %scevgep21.1 to [3 x [3 x i8]]*
  %arrayidx108.2 = getelementptr inbounds i8, i8* %a, i64 2
  %81 = load i8, i8* %arrayidx108.2, align 1
  %arrayidx110.2 = getelementptr inbounds i8, i8* %b, i64 2
  %82 = load i8, i8* %arrayidx110.2, align 1
  %call111.2 = call zeroext i8 @mult(i8 zeroext %81, i8 zeroext %82)
  %arrayidx113.2 = getelementptr inbounds i8, i8* %c, i64 2
  store i8 %call111.2, i8* %arrayidx113.2, align 1
  %arrayidx128.2 = getelementptr inbounds i8, i8* %c, i64 2
  %scevgep22.288 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %80, i64 0, i64 0, i64 0
  %83 = load i8, i8* %scevgep22.288, align 1
  %conv126.289 = zext i8 %83 to i32
  %84 = load i8, i8* %arrayidx128.2, align 1
  %conv129.290 = zext i8 %84 to i32
  %xor130.291 = xor i32 %conv129.290, %conv126.289
  %conv131.292 = trunc i32 %xor130.291 to i8
  store i8 %conv131.292, i8* %arrayidx128.2, align 1
  %scevgep22.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %80, i64 0, i64 0, i64 1
  %85 = load i8, i8* %scevgep22.1.2, align 1
  %conv126.1.2 = zext i8 %85 to i32
  %86 = load i8, i8* %arrayidx128.2, align 1
  %conv129.1.2 = zext i8 %86 to i32
  %xor130.1.2 = xor i32 %conv129.1.2, %conv126.1.2
  %conv131.1.2 = trunc i32 %xor130.1.2 to i8
  store i8 %conv131.1.2, i8* %arrayidx128.2, align 1
  %call139 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv140 = zext i8 %call139 to i32
  %87 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %88 = load i8, i8* %scevgep.1, align 1
  %conv.i.i172.1 = zext i8 %88 to i32
  %conv1.i.i173.1 = zext i8 %87 to i32
  %xor.i.i174.1 = xor i32 %conv1.i.i173.1, %conv.i.i172.1
  %conv2.i.i175.1 = trunc i32 %xor.i.i174.1 to i8
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  %89 = load i8, i8* %scevgep.2, align 1
  %conv.i.i172.2 = zext i8 %89 to i32
  %conv1.i.i173.2 = zext i8 %conv2.i.i175.1 to i32
  %xor.i.i174.2 = xor i32 %conv1.i.i173.2, %conv.i.i172.2
  %conv2.i.i175.2 = trunc i32 %xor.i.i174.2 to i8
  %conv142 = zext i8 %conv2.i.i175.2 to i32
  %cmp143 = icmp eq i32 %conv140, %conv142
  call void @assert(i1 zeroext %cmp143)
  ret void
}

declare dso_local zeroext i8 @rand(...) #1

declare dso_local void @assume(i1 zeroext) #1

declare dso_local zeroext i8 @mult(i8 zeroext, i8 zeroext) #1

declare dso_local void @assert(i1 zeroext) #1

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @square(i8 zeroext %x) #0 {
entry:
  %call = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x)
  ret i8 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @exp4(i8 zeroext %x) #0 {
entry:
  %call.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #2
  %call.i3 = call zeroext i8 @mult(i8 zeroext %call.i, i8 zeroext %call.i) #2
  ret i8 %call.i3
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @exp8(i8 zeroext %x) #0 {
entry:
  %call.i.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #2
  %call.i3.i = call zeroext i8 @mult(i8 zeroext %call.i.i, i8 zeroext %call.i.i) #2
  %call.i = call zeroext i8 @mult(i8 zeroext %call.i3.i, i8 zeroext %call.i3.i) #2
  ret i8 %call.i
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @L1(i8 zeroext %x) #0 {
entry:
  %call = call zeroext i8 @mult(i8 zeroext 2, i8 zeroext %x)
  %conv = zext i8 %call to i32
  %call.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #2
  %call2 = call zeroext i8 @mult(i8 zeroext 3, i8 zeroext %call.i)
  %conv3 = zext i8 %call2 to i32
  %xor = xor i32 %conv, %conv3
  %call.i.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #2
  %call.i3.i = call zeroext i8 @mult(i8 zeroext %call.i.i, i8 zeroext %call.i.i) #2
  %call5 = call zeroext i8 @mult(i8 zeroext 5, i8 zeroext %call.i3.i)
  %conv6 = zext i8 %call5 to i32
  %xor7 = xor i32 %xor, %conv6
  %call.i.i.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #2
  %call.i3.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i, i8 zeroext %call.i.i.i) #2
  %call.i.i17 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i, i8 zeroext %call.i3.i.i) #2
  %call9 = call zeroext i8 @mult(i8 zeroext 9, i8 zeroext %call.i.i17)
  %conv10 = zext i8 %call9 to i32
  %xor11 = xor i32 %xor7, %conv10
  %conv12 = trunc i32 %xor11 to i8
  ret i8 %conv12
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @L3(i8 zeroext %x) #0 {
entry:
  %call = call zeroext i8 @mult(i8 zeroext 4, i8 zeroext %x)
  %conv = zext i8 %call to i32
  %call.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #2
  %call2 = call zeroext i8 @mult(i8 zeroext 7, i8 zeroext %call.i)
  %conv3 = zext i8 %call2 to i32
  %xor = xor i32 %conv, %conv3
  %call.i.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #2
  %call.i3.i = call zeroext i8 @mult(i8 zeroext %call.i.i, i8 zeroext %call.i.i) #2
  %call5 = call zeroext i8 @mult(i8 zeroext 13, i8 zeroext %call.i3.i)
  %conv6 = zext i8 %call5 to i32
  %xor7 = xor i32 %xor, %conv6
  %call.i.i.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #2
  %call.i3.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i, i8 zeroext %call.i.i.i) #2
  %call.i.i17 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i, i8 zeroext %call.i3.i.i) #2
  %call9 = call zeroext i8 @mult(i8 zeroext 10, i8 zeroext %call.i.i17)
  %conv10 = zext i8 %call9 to i32
  %xor11 = xor i32 %xor7, %conv10
  %conv12 = trunc i32 %xor11 to i8
  ret i8 %conv12
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @L5(i8 zeroext %x) #0 {
entry:
  %call = call zeroext i8 @mult(i8 zeroext 6, i8 zeroext %x)
  %conv = zext i8 %call to i32
  %call.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #2
  %call2 = call zeroext i8 @mult(i8 zeroext 11, i8 zeroext %call.i)
  %conv3 = zext i8 %call2 to i32
  %xor = xor i32 %conv, %conv3
  %conv4 = trunc i32 %xor to i8
  ret i8 %conv4
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @L7(i8 zeroext %x) #0 {
entry:
  %call = call zeroext i8 @mult(i8 zeroext 8, i8 zeroext %x)
  %conv = zext i8 %call to i32
  %call.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #2
  %call2 = call zeroext i8 @mult(i8 zeroext 15, i8 zeroext %call.i)
  %conv3 = zext i8 %call2 to i32
  %xor = xor i32 %conv, %conv3
  %call.i.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #2
  %call.i3.i = call zeroext i8 @mult(i8 zeroext %call.i.i, i8 zeroext %call.i.i) #2
  %call5 = call zeroext i8 @mult(i8 zeroext 14, i8 zeroext %call.i3.i)
  %conv6 = zext i8 %call5 to i32
  %xor7 = xor i32 %xor, %conv6
  %call.i.i.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #2
  %call.i3.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i, i8 zeroext %call.i.i.i) #2
  %call.i.i17 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i, i8 zeroext %call.i3.i.i) #2
  %call9 = call zeroext i8 @mult(i8 zeroext 12, i8 zeroext %call.i.i17)
  %conv10 = zext i8 %call9 to i32
  %xor11 = xor i32 %xor7, %conv10
  %conv12 = trunc i32 %xor11 to i8
  ret i8 %conv12
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @exp3(i8 zeroext %x) #0 {
entry:
  %call.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #2
  %call1 = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %call.i)
  ret i8 %call1
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @exp5(i8 zeroext %x) #0 {
entry:
  %call.i.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #2
  %call.i3.i = call zeroext i8 @mult(i8 zeroext %call.i.i, i8 zeroext %call.i.i) #2
  %call1 = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %call.i3.i)
  ret i8 %call1
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @exp7(i8 zeroext %x) #0 {
entry:
  %call.i.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #2
  %call1.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %call.i.i) #2
  %call.i.i5 = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #2
  %call.i3.i = call zeroext i8 @mult(i8 zeroext %call.i.i5, i8 zeroext %call.i.i5) #2
  %call2 = call zeroext i8 @mult(i8 zeroext %call1.i, i8 zeroext %call.i3.i)
  ret i8 %call2
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @S(i8 zeroext %x) #0 {
entry:
  %call.i = call zeroext i8 @mult(i8 zeroext 2, i8 zeroext %x) #2
  %conv.i = zext i8 %call.i to i32
  %call.i.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #2
  %call2.i = call zeroext i8 @mult(i8 zeroext 3, i8 zeroext %call.i.i) #2
  %conv3.i = zext i8 %call2.i to i32
  %xor.i = xor i32 %conv.i, %conv3.i
  %call.i.i.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #2
  %call.i3.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i, i8 zeroext %call.i.i.i) #2
  %call5.i = call zeroext i8 @mult(i8 zeroext 5, i8 zeroext %call.i3.i.i) #2
  %conv6.i = zext i8 %call5.i to i32
  %xor7.i = xor i32 %xor.i, %conv6.i
  %call.i.i.i.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #2
  %call.i3.i.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i, i8 zeroext %call.i.i.i.i) #2
  %call.i.i17.i = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i, i8 zeroext %call.i3.i.i.i) #2
  %call9.i = call zeroext i8 @mult(i8 zeroext 9, i8 zeroext %call.i.i17.i) #2
  %conv10.i = zext i8 %call9.i to i32
  %xor11.i = xor i32 %xor7.i, %conv10.i
  %conv12.i = trunc i32 %xor11.i to i8
  %conv = zext i8 %conv12.i to i32
  %xor = xor i32 1, %conv
  %call.i.i16 = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #2
  %call1.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %call.i.i16) #2
  %call.i27 = call zeroext i8 @mult(i8 zeroext 4, i8 zeroext %call1.i) #2
  %conv.i28 = zext i8 %call.i27 to i32
  %call.i.i29 = call zeroext i8 @mult(i8 zeroext %call1.i, i8 zeroext %call1.i) #2
  %call2.i30 = call zeroext i8 @mult(i8 zeroext 7, i8 zeroext %call.i.i29) #2
  %conv3.i31 = zext i8 %call2.i30 to i32
  %xor.i32 = xor i32 %conv.i28, %conv3.i31
  %call.i.i.i33 = call zeroext i8 @mult(i8 zeroext %call1.i, i8 zeroext %call1.i) #2
  %call.i3.i.i34 = call zeroext i8 @mult(i8 zeroext %call.i.i.i33, i8 zeroext %call.i.i.i33) #2
  %call5.i35 = call zeroext i8 @mult(i8 zeroext 13, i8 zeroext %call.i3.i.i34) #2
  %conv6.i36 = zext i8 %call5.i35 to i32
  %xor7.i37 = xor i32 %xor.i32, %conv6.i36
  %call.i.i.i.i38 = call zeroext i8 @mult(i8 zeroext %call1.i, i8 zeroext %call1.i) #2
  %call.i3.i.i.i39 = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i38, i8 zeroext %call.i.i.i.i38) #2
  %call.i.i17.i40 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i39, i8 zeroext %call.i3.i.i.i39) #2
  %call9.i41 = call zeroext i8 @mult(i8 zeroext 10, i8 zeroext %call.i.i17.i40) #2
  %conv10.i42 = zext i8 %call9.i41 to i32
  %xor11.i43 = xor i32 %xor7.i37, %conv10.i42
  %conv12.i44 = trunc i32 %xor11.i43 to i8
  %conv3 = zext i8 %conv12.i44 to i32
  %xor4 = xor i32 %xor, %conv3
  %call.i.i.i49 = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #2
  %call.i3.i.i50 = call zeroext i8 @mult(i8 zeroext %call.i.i.i49, i8 zeroext %call.i.i.i49) #2
  %call1.i51 = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %call.i3.i.i50) #2
  %call.i54 = call zeroext i8 @mult(i8 zeroext 6, i8 zeroext %call1.i51) #2
  %conv.i55 = zext i8 %call.i54 to i32
  %call.i.i56 = call zeroext i8 @mult(i8 zeroext %call1.i51, i8 zeroext %call1.i51) #2
  %call2.i57 = call zeroext i8 @mult(i8 zeroext 11, i8 zeroext %call.i.i56) #2
  %conv3.i58 = zext i8 %call2.i57 to i32
  %xor.i59 = xor i32 %conv.i55, %conv3.i58
  %conv4.i = trunc i32 %xor.i59 to i8
  %conv7 = zext i8 %conv4.i to i32
  %xor8 = xor i32 %xor4, %conv7
  %call.i.i.i64 = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #2
  %call1.i.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %call.i.i.i64) #2
  %call.i.i5.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #2
  %call.i3.i.i65 = call zeroext i8 @mult(i8 zeroext %call.i.i5.i, i8 zeroext %call.i.i5.i) #2
  %call2.i66 = call zeroext i8 @mult(i8 zeroext %call1.i.i, i8 zeroext %call.i3.i.i65) #2
  %call.i77 = call zeroext i8 @mult(i8 zeroext 8, i8 zeroext %call2.i66) #2
  %conv.i78 = zext i8 %call.i77 to i32
  %call.i.i79 = call zeroext i8 @mult(i8 zeroext %call2.i66, i8 zeroext %call2.i66) #2
  %call2.i80 = call zeroext i8 @mult(i8 zeroext 15, i8 zeroext %call.i.i79) #2
  %conv3.i81 = zext i8 %call2.i80 to i32
  %xor.i82 = xor i32 %conv.i78, %conv3.i81
  %call.i.i.i83 = call zeroext i8 @mult(i8 zeroext %call2.i66, i8 zeroext %call2.i66) #2
  %call.i3.i.i84 = call zeroext i8 @mult(i8 zeroext %call.i.i.i83, i8 zeroext %call.i.i.i83) #2
  %call5.i85 = call zeroext i8 @mult(i8 zeroext 14, i8 zeroext %call.i3.i.i84) #2
  %conv6.i86 = zext i8 %call5.i85 to i32
  %xor7.i87 = xor i32 %xor.i82, %conv6.i86
  %call.i.i.i.i88 = call zeroext i8 @mult(i8 zeroext %call2.i66, i8 zeroext %call2.i66) #2
  %call.i3.i.i.i89 = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i88, i8 zeroext %call.i.i.i.i88) #2
  %call.i.i17.i90 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i89, i8 zeroext %call.i3.i.i.i89) #2
  %call9.i91 = call zeroext i8 @mult(i8 zeroext 12, i8 zeroext %call.i.i17.i90) #2
  %conv10.i92 = zext i8 %call9.i91 to i32
  %xor11.i93 = xor i32 %xor7.i87, %conv10.i92
  %conv12.i94 = trunc i32 %xor11.i93 to i8
  %conv11 = zext i8 %conv12.i94 to i32
  %xor12 = xor i32 %xor8, %conv11
  %conv13 = trunc i32 %xor12 to i8
  ret i8 %conv13
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_S(i8* %x, i8* %y) #0 {
entry:
  %r.i = alloca [3 x [3 x i8]], align 1
  %s.i = alloca [3 x [3 x i8]], align 1
  %p0.i = alloca [3 x [3 x i8]], align 1
  %p1.i = alloca [3 x [3 x i8]], align 1
  %z.i = alloca [3 x [3 x i8]], align 1
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
  %scevgep291.1 = getelementptr i8, i8* %x, i64 1
  %1 = load i8, i8* %scevgep291.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep291.2 = getelementptr i8, i8* %x, i64 2
  %2 = load i8, i8* %scevgep291.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %conv2 = zext i8 %conv2.i.i.2 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %3 = load i8, i8* %x, align 1
  %call.i525 = call zeroext i8 @mult(i8 zeroext 2, i8 zeroext %3) #2
  %conv.i526 = zext i8 %call.i525 to i32
  %call.i.i527 = call zeroext i8 @mult(i8 zeroext %3, i8 zeroext %3) #2
  %call2.i528 = call zeroext i8 @mult(i8 zeroext 3, i8 zeroext %call.i.i527) #2
  %conv3.i529 = zext i8 %call2.i528 to i32
  %xor.i530 = xor i32 %conv.i526, %conv3.i529
  %call.i.i.i531 = call zeroext i8 @mult(i8 zeroext %3, i8 zeroext %3) #2
  %call.i3.i.i532 = call zeroext i8 @mult(i8 zeroext %call.i.i.i531, i8 zeroext %call.i.i.i531) #2
  %call5.i533 = call zeroext i8 @mult(i8 zeroext 5, i8 zeroext %call.i3.i.i532) #2
  %conv6.i534 = zext i8 %call5.i533 to i32
  %xor7.i535 = xor i32 %xor.i530, %conv6.i534
  %call.i.i.i.i536 = call zeroext i8 @mult(i8 zeroext %3, i8 zeroext %3) #2
  %call.i3.i.i.i537 = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i536, i8 zeroext %call.i.i.i.i536) #2
  %call.i.i17.i538 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i537, i8 zeroext %call.i3.i.i.i537) #2
  %call9.i539 = call zeroext i8 @mult(i8 zeroext 9, i8 zeroext %call.i.i17.i538) #2
  %conv10.i540 = zext i8 %call9.i539 to i32
  %xor11.i541 = xor i32 %xor7.i535, %conv10.i540
  %conv12.i542 = trunc i32 %xor11.i541 to i8
  %scevgep287 = getelementptr [3 x i8], [3 x i8]* %l1, i64 0, i64 0
  store i8 %conv12.i542, i8* %scevgep287, align 1
  %scevgep286.1 = getelementptr i8, i8* %x, i64 1
  %4 = load i8, i8* %scevgep286.1, align 1
  %call.i = call zeroext i8 @mult(i8 zeroext 2, i8 zeroext %4) #2
  %conv.i543 = zext i8 %call.i to i32
  %call.i.i544 = call zeroext i8 @mult(i8 zeroext %4, i8 zeroext %4) #2
  %call2.i545 = call zeroext i8 @mult(i8 zeroext 3, i8 zeroext %call.i.i544) #2
  %conv3.i546 = zext i8 %call2.i545 to i32
  %xor.i547 = xor i32 %conv.i543, %conv3.i546
  %call.i.i.i548 = call zeroext i8 @mult(i8 zeroext %4, i8 zeroext %4) #2
  %call.i3.i.i549 = call zeroext i8 @mult(i8 zeroext %call.i.i.i548, i8 zeroext %call.i.i.i548) #2
  %call5.i550 = call zeroext i8 @mult(i8 zeroext 5, i8 zeroext %call.i3.i.i549) #2
  %conv6.i551 = zext i8 %call5.i550 to i32
  %xor7.i552 = xor i32 %xor.i547, %conv6.i551
  %call.i.i.i.i553 = call zeroext i8 @mult(i8 zeroext %4, i8 zeroext %4) #2
  %call.i3.i.i.i554 = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i553, i8 zeroext %call.i.i.i.i553) #2
  %call.i.i17.i555 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i554, i8 zeroext %call.i3.i.i.i554) #2
  %call9.i556 = call zeroext i8 @mult(i8 zeroext 9, i8 zeroext %call.i.i17.i555) #2
  %conv10.i557 = zext i8 %call9.i556 to i32
  %xor11.i558 = xor i32 %xor7.i552, %conv10.i557
  %conv12.i559 = trunc i32 %xor11.i558 to i8
  %scevgep287.1 = getelementptr [3 x i8], [3 x i8]* %l1, i64 0, i64 1
  store i8 %conv12.i559, i8* %scevgep287.1, align 1
  %scevgep286.2 = getelementptr i8, i8* %x, i64 2
  %5 = load i8, i8* %scevgep286.2, align 1
  %call.i560 = call zeroext i8 @mult(i8 zeroext 2, i8 zeroext %5) #2
  %conv.i561 = zext i8 %call.i560 to i32
  %call.i.i562 = call zeroext i8 @mult(i8 zeroext %5, i8 zeroext %5) #2
  %call2.i563 = call zeroext i8 @mult(i8 zeroext 3, i8 zeroext %call.i.i562) #2
  %conv3.i564 = zext i8 %call2.i563 to i32
  %xor.i565 = xor i32 %conv.i561, %conv3.i564
  %call.i.i.i566 = call zeroext i8 @mult(i8 zeroext %5, i8 zeroext %5) #2
  %call.i3.i.i567 = call zeroext i8 @mult(i8 zeroext %call.i.i.i566, i8 zeroext %call.i.i.i566) #2
  %call5.i568 = call zeroext i8 @mult(i8 zeroext 5, i8 zeroext %call.i3.i.i567) #2
  %conv6.i569 = zext i8 %call5.i568 to i32
  %xor7.i570 = xor i32 %xor.i565, %conv6.i569
  %call.i.i.i.i571 = call zeroext i8 @mult(i8 zeroext %5, i8 zeroext %5) #2
  %call.i3.i.i.i572 = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i571, i8 zeroext %call.i.i.i.i571) #2
  %call.i.i17.i573 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i572, i8 zeroext %call.i3.i.i.i572) #2
  %call9.i574 = call zeroext i8 @mult(i8 zeroext 9, i8 zeroext %call.i.i17.i573) #2
  %conv10.i575 = zext i8 %call9.i574 to i32
  %xor11.i576 = xor i32 %xor7.i570, %conv10.i575
  %conv12.i577 = trunc i32 %xor11.i576 to i8
  %scevgep287.2 = getelementptr [3 x i8], [3 x i8]* %l1, i64 0, i64 2
  store i8 %conv12.i577, i8* %scevgep287.2, align 1
  %6 = load i8, i8* %x, align 1
  %call.i578 = call zeroext i8 @mult(i8 zeroext %6, i8 zeroext %6) #2
  %scevgep282 = getelementptr [3 x i8], [3 x i8]* %e2, i64 0, i64 0
  store i8 %call.i578, i8* %scevgep282, align 1
  %scevgep281.1 = getelementptr i8, i8* %x, i64 1
  %7 = load i8, i8* %scevgep281.1, align 1
  %call.i579 = call zeroext i8 @mult(i8 zeroext %7, i8 zeroext %7) #2
  %scevgep282.1 = getelementptr [3 x i8], [3 x i8]* %e2, i64 0, i64 1
  store i8 %call.i579, i8* %scevgep282.1, align 1
  %scevgep281.2 = getelementptr i8, i8* %x, i64 2
  %8 = load i8, i8* %scevgep281.2, align 1
  %call.i580 = call zeroext i8 @mult(i8 zeroext %8, i8 zeroext %8) #2
  %scevgep282.2 = getelementptr [3 x i8], [3 x i8]* %e2, i64 0, i64 2
  store i8 %call.i580, i8* %scevgep282.2, align 1
  %9 = load i8, i8* %x, align 1
  %call.i.i581 = call zeroext i8 @mult(i8 zeroext %9, i8 zeroext %9) #2
  %call.i3.i = call zeroext i8 @mult(i8 zeroext %call.i.i581, i8 zeroext %call.i.i581) #2
  %scevgep277 = getelementptr [3 x i8], [3 x i8]* %e4, i64 0, i64 0
  store i8 %call.i3.i, i8* %scevgep277, align 1
  %scevgep276.1 = getelementptr i8, i8* %x, i64 1
  %10 = load i8, i8* %scevgep276.1, align 1
  %call.i.i582 = call zeroext i8 @mult(i8 zeroext %10, i8 zeroext %10) #2
  %call.i3.i583 = call zeroext i8 @mult(i8 zeroext %call.i.i582, i8 zeroext %call.i.i582) #2
  %scevgep277.1 = getelementptr [3 x i8], [3 x i8]* %e4, i64 0, i64 1
  store i8 %call.i3.i583, i8* %scevgep277.1, align 1
  %scevgep276.2 = getelementptr i8, i8* %x, i64 2
  %11 = load i8, i8* %scevgep276.2, align 1
  %call.i.i584 = call zeroext i8 @mult(i8 zeroext %11, i8 zeroext %11) #2
  %call.i3.i585 = call zeroext i8 @mult(i8 zeroext %call.i.i584, i8 zeroext %call.i.i584) #2
  %scevgep277.2 = getelementptr [3 x i8], [3 x i8]* %e4, i64 0, i64 2
  store i8 %call.i3.i585, i8* %scevgep277.2, align 1
  %arraydecay6 = getelementptr inbounds [3 x i8], [3 x i8]* %e2, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [3 x i8], [3 x i8]* %e3, i64 0, i64 0
  %call.i77 = call zeroext i8 (...) @rand() #2
  %call1.i = call zeroext i8 (...) @rand() #2
  %conv.i = zext i8 %call.i77 to i32
  %12 = load i8, i8* %x, align 1
  %scevgep272.1 = getelementptr i8, i8* %x, i64 1
  %13 = load i8, i8* %scevgep272.1, align 1
  %conv.i.i.i.1 = zext i8 %13 to i32
  %conv1.i.i.i.1 = zext i8 %12 to i32
  %xor.i.i.i.1 = xor i32 %conv1.i.i.i.1, %conv.i.i.i.1
  %conv2.i.i.i.1 = trunc i32 %xor.i.i.i.1 to i8
  %scevgep272.2 = getelementptr i8, i8* %x, i64 2
  %14 = load i8, i8* %scevgep272.2, align 1
  %conv.i.i.i.2 = zext i8 %14 to i32
  %conv1.i.i.i.2 = zext i8 %conv2.i.i.i.1 to i32
  %xor.i.i.i.2 = xor i32 %conv1.i.i.i.2, %conv.i.i.i.2
  %conv2.i.i.i.2 = trunc i32 %xor.i.i.i.2 to i8
  %conv3.i = zext i8 %conv2.i.i.i.2 to i32
  %cmp.i78 = icmp eq i32 %conv.i, %conv3.i
  call void @assume(i1 zeroext %cmp.i78) #2
  %conv5.i = zext i8 %call1.i to i32
  %scevgep268 = getelementptr [3 x i8], [3 x i8]* %e2, i64 0, i64 0
  %15 = load i8, i8* %scevgep268, align 1
  %scevgep268.1 = getelementptr [3 x i8], [3 x i8]* %e2, i64 0, i64 1
  %16 = load i8, i8* %scevgep268.1, align 1
  %conv.i.i155.i.1 = zext i8 %16 to i32
  %conv1.i.i156.i.1 = zext i8 %15 to i32
  %xor.i.i157.i.1 = xor i32 %conv1.i.i156.i.1, %conv.i.i155.i.1
  %conv2.i.i158.i.1 = trunc i32 %xor.i.i157.i.1 to i8
  %scevgep268.2 = getelementptr [3 x i8], [3 x i8]* %e2, i64 0, i64 2
  %17 = load i8, i8* %scevgep268.2, align 1
  %conv.i.i155.i.2 = zext i8 %17 to i32
  %conv1.i.i156.i.2 = zext i8 %conv2.i.i158.i.1 to i32
  %xor.i.i157.i.2 = xor i32 %conv1.i.i156.i.2, %conv.i.i155.i.2
  %conv2.i.i158.i.2 = trunc i32 %xor.i.i157.i.2 to i8
  %conv7.i = zext i8 %conv2.i.i158.i.2 to i32
  %cmp8.i = icmp eq i32 %conv5.i, %conv7.i
  call void @assume(i1 zeroext %cmp8.i) #2
  %scevgep252 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %scevgep252253 = bitcast i8* %scevgep252 to [3 x [3 x i8]]*
  %scevgep259 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 1, i64 0
  %scevgep259260 = bitcast i8* %scevgep259 to [3 x [3 x i8]]*
  %call16.i = call zeroext i8 (...) @rand() #2
  store i8 %call16.i, i8* %scevgep252, align 1
  %18 = load i8, i8* %scevgep252, align 1
  store i8 %18, i8* %scevgep259, align 1
  %scevgep257 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep252253, i64 0, i64 0, i64 1
  %scevgep264 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep259260, i64 0, i64 1, i64 0
  %call16.i.1517 = call zeroext i8 (...) @rand() #2
  store i8 %call16.i.1517, i8* %scevgep257, align 1
  %19 = load i8, i8* %scevgep257, align 1
  store i8 %19, i8* %scevgep264, align 1
  %scevgep255 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep252253, i64 0, i64 1, i64 1
  %scevgep262 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep259260, i64 0, i64 1, i64 1
  %call16.i.1 = call zeroext i8 (...) @rand() #2
  store i8 %call16.i.1, i8* %scevgep255, align 1
  %20 = load i8, i8* %scevgep255, align 1
  store i8 %20, i8* %scevgep262, align 1
  %scevgep229.1 = getelementptr [3 x i8], [3 x i8]* %e2, i64 0, i64 1
  %21 = load i8, i8* %scevgep229.1, align 1
  %conv44.i.1 = zext i8 %21 to i32
  %scevgep232.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %22 = load i8, i8* %scevgep232.1, align 1
  %conv49.i.1 = zext i8 %22 to i32
  %xor.i.1 = xor i32 %conv44.i.1, %conv49.i.1
  %conv50.i.1 = trunc i32 %xor.i.1 to i8
  %scevgep236.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i.1, i8* %scevgep236.1, align 1
  %23 = load i8, i8* %x, align 1
  %conv57.i.1 = zext i8 %23 to i32
  %xor58.i.1 = xor i32 %conv57.i.1, 1
  %conv59.i.1 = trunc i32 %xor58.i.1 to i8
  %scevgep233.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %24 = load i8, i8* %scevgep233.1, align 1
  %call64.i.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.1, i8 zeroext %24) #2
  %scevgep240.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i.1, i8* %scevgep240.1, align 1
  %25 = load i8, i8* %x, align 1
  %scevgep237.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 1
  %26 = load i8, i8* %scevgep237.1, align 1
  %call75.i.1 = call zeroext i8 @mult(i8 zeroext %25, i8 zeroext %26) #2
  %scevgep244.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i.1, i8* %scevgep244.1, align 1
  %scevgep241.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %27 = load i8, i8* %scevgep241.1, align 1
  %conv84.i.1 = zext i8 %27 to i32
  %scevgep245.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %28 = load i8, i8* %scevgep245.1, align 1
  %conv89.i.1 = zext i8 %28 to i32
  %xor90.i.1 = xor i32 %conv84.i.1, %conv89.i.1
  %conv91.i.1 = trunc i32 %xor90.i.1 to i8
  %scevgep248.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i.1, i8* %scevgep248.1, align 1
  %scevgep229.2 = getelementptr [3 x i8], [3 x i8]* %e2, i64 0, i64 2
  %29 = load i8, i8* %scevgep229.2, align 1
  %conv44.i.2 = zext i8 %29 to i32
  %scevgep232.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 2
  %30 = load i8, i8* %scevgep232.2, align 1
  %conv49.i.2 = zext i8 %30 to i32
  %xor.i.2 = xor i32 %conv44.i.2, %conv49.i.2
  %conv50.i.2 = trunc i32 %xor.i.2 to i8
  %scevgep236.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 2
  store i8 %conv50.i.2, i8* %scevgep236.2, align 1
  %31 = load i8, i8* %x, align 1
  %conv57.i.2 = zext i8 %31 to i32
  %xor58.i.2 = xor i32 %conv57.i.2, 1
  %conv59.i.2 = trunc i32 %xor58.i.2 to i8
  %scevgep233.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 2
  %32 = load i8, i8* %scevgep233.2, align 1
  %call64.i.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.2, i8 zeroext %32) #2
  %scevgep240.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 2
  store i8 %call64.i.2, i8* %scevgep240.2, align 1
  %33 = load i8, i8* %x, align 1
  %scevgep237.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 2
  %34 = load i8, i8* %scevgep237.2, align 1
  %call75.i.2 = call zeroext i8 @mult(i8 zeroext %33, i8 zeroext %34) #2
  %scevgep244.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 2
  store i8 %call75.i.2, i8* %scevgep244.2, align 1
  %scevgep241.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 2
  %35 = load i8, i8* %scevgep241.2, align 1
  %conv84.i.2 = zext i8 %35 to i32
  %scevgep245.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 2
  %36 = load i8, i8* %scevgep245.2, align 1
  %conv89.i.2 = zext i8 %36 to i32
  %xor90.i.2 = xor i32 %conv84.i.2, %conv89.i.2
  %conv91.i.2 = trunc i32 %xor90.i.2 to i8
  %scevgep248.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 2
  store i8 %conv91.i.2, i8* %scevgep248.2, align 1
  %scevgep231 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 1, i64 0
  %37 = bitcast i8* %scevgep231 to [3 x [3 x i8]]*
  %scevgep235 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 1, i64 0
  %38 = bitcast i8* %scevgep235 to [3 x [3 x i8]]*
  %scevgep239 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %39 = bitcast i8* %scevgep239 to [3 x [3 x i8]]*
  %scevgep243 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %40 = bitcast i8* %scevgep243 to [3 x [3 x i8]]*
  %scevgep247 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 1, i64 0
  %41 = bitcast i8* %scevgep247 to [3 x [3 x i8]]*
  %arrayidx56.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %arrayidx70.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %scevgep229.1457 = getelementptr [3 x i8], [3 x i8]* %e2, i64 0, i64 0
  %42 = load i8, i8* %scevgep229.1457, align 1
  %conv44.i.1458 = zext i8 %42 to i32
  %scevgep232.1459 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %37, i64 0, i64 0, i64 0
  %43 = load i8, i8* %scevgep232.1459, align 1
  %conv49.i.1460 = zext i8 %43 to i32
  %xor.i.1461 = xor i32 %conv44.i.1458, %conv49.i.1460
  %conv50.i.1462 = trunc i32 %xor.i.1461 to i8
  %scevgep236.1463 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %38, i64 0, i64 0, i64 0
  store i8 %conv50.i.1462, i8* %scevgep236.1463, align 1
  %44 = load i8, i8* %arrayidx56.i.1, align 1
  %conv57.i.1464 = zext i8 %44 to i32
  %xor58.i.1465 = xor i32 %conv57.i.1464, 1
  %conv59.i.1466 = trunc i32 %xor58.i.1465 to i8
  %scevgep233.1467 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %37, i64 0, i64 0, i64 0
  %45 = load i8, i8* %scevgep233.1467, align 1
  %call64.i.1468 = call zeroext i8 @mult(i8 zeroext %conv59.i.1466, i8 zeroext %45) #2
  %scevgep240.1469 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %39, i64 0, i64 0, i64 0
  store i8 %call64.i.1468, i8* %scevgep240.1469, align 1
  %46 = load i8, i8* %arrayidx70.i.1, align 1
  %scevgep237.1470 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %38, i64 0, i64 0, i64 0
  %47 = load i8, i8* %scevgep237.1470, align 1
  %call75.i.1471 = call zeroext i8 @mult(i8 zeroext %46, i8 zeroext %47) #2
  %scevgep244.1472 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %40, i64 0, i64 0, i64 0
  store i8 %call75.i.1471, i8* %scevgep244.1472, align 1
  %scevgep241.1473 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %39, i64 0, i64 0, i64 0
  %48 = load i8, i8* %scevgep241.1473, align 1
  %conv84.i.1474 = zext i8 %48 to i32
  %scevgep245.1475 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %40, i64 0, i64 0, i64 0
  %49 = load i8, i8* %scevgep245.1475, align 1
  %conv89.i.1476 = zext i8 %49 to i32
  %xor90.i.1477 = xor i32 %conv84.i.1474, %conv89.i.1476
  %conv91.i.1478 = trunc i32 %xor90.i.1477 to i8
  %scevgep248.1479 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %41, i64 0, i64 0, i64 0
  store i8 %conv91.i.1478, i8* %scevgep248.1479, align 1
  %scevgep229.2.1 = getelementptr [3 x i8], [3 x i8]* %e2, i64 0, i64 2
  %50 = load i8, i8* %scevgep229.2.1, align 1
  %conv44.i.2.1 = zext i8 %50 to i32
  %scevgep232.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %37, i64 0, i64 0, i64 2
  %51 = load i8, i8* %scevgep232.2.1, align 1
  %conv49.i.2.1 = zext i8 %51 to i32
  %xor.i.2.1 = xor i32 %conv44.i.2.1, %conv49.i.2.1
  %conv50.i.2.1 = trunc i32 %xor.i.2.1 to i8
  %scevgep236.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %38, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.1, i8* %scevgep236.2.1, align 1
  %52 = load i8, i8* %arrayidx56.i.1, align 1
  %conv57.i.2.1 = zext i8 %52 to i32
  %xor58.i.2.1 = xor i32 %conv57.i.2.1, 1
  %conv59.i.2.1 = trunc i32 %xor58.i.2.1 to i8
  %scevgep233.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %37, i64 0, i64 0, i64 2
  %53 = load i8, i8* %scevgep233.2.1, align 1
  %call64.i.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.1, i8 zeroext %53) #2
  %scevgep240.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %39, i64 0, i64 0, i64 2
  store i8 %call64.i.2.1, i8* %scevgep240.2.1, align 1
  %54 = load i8, i8* %arrayidx70.i.1, align 1
  %scevgep237.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %38, i64 0, i64 0, i64 2
  %55 = load i8, i8* %scevgep237.2.1, align 1
  %call75.i.2.1 = call zeroext i8 @mult(i8 zeroext %54, i8 zeroext %55) #2
  %scevgep244.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %40, i64 0, i64 0, i64 2
  store i8 %call75.i.2.1, i8* %scevgep244.2.1, align 1
  %scevgep241.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %39, i64 0, i64 0, i64 2
  %56 = load i8, i8* %scevgep241.2.1, align 1
  %conv84.i.2.1 = zext i8 %56 to i32
  %scevgep245.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %40, i64 0, i64 0, i64 2
  %57 = load i8, i8* %scevgep245.2.1, align 1
  %conv89.i.2.1 = zext i8 %57 to i32
  %xor90.i.2.1 = xor i32 %conv84.i.2.1, %conv89.i.2.1
  %conv91.i.2.1 = trunc i32 %xor90.i.2.1 to i8
  %scevgep248.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %41, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.1, i8* %scevgep248.2.1, align 1
  %scevgep231.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %37, i64 0, i64 1, i64 0
  %58 = bitcast i8* %scevgep231.1 to [3 x [3 x i8]]*
  %scevgep235.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %38, i64 0, i64 1, i64 0
  %59 = bitcast i8* %scevgep235.1 to [3 x [3 x i8]]*
  %scevgep239.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %39, i64 0, i64 1, i64 0
  %60 = bitcast i8* %scevgep239.1 to [3 x [3 x i8]]*
  %scevgep243.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %40, i64 0, i64 1, i64 0
  %61 = bitcast i8* %scevgep243.1 to [3 x [3 x i8]]*
  %scevgep247.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %41, i64 0, i64 1, i64 0
  %62 = bitcast i8* %scevgep247.1 to [3 x [3 x i8]]*
  %arrayidx56.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %arrayidx70.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %scevgep229.2484 = getelementptr [3 x i8], [3 x i8]* %e2, i64 0, i64 0
  %63 = load i8, i8* %scevgep229.2484, align 1
  %conv44.i.2485 = zext i8 %63 to i32
  %scevgep232.2486 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %58, i64 0, i64 0, i64 0
  %64 = load i8, i8* %scevgep232.2486, align 1
  %conv49.i.2487 = zext i8 %64 to i32
  %xor.i.2488 = xor i32 %conv44.i.2485, %conv49.i.2487
  %conv50.i.2489 = trunc i32 %xor.i.2488 to i8
  %scevgep236.2490 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %59, i64 0, i64 0, i64 0
  store i8 %conv50.i.2489, i8* %scevgep236.2490, align 1
  %65 = load i8, i8* %arrayidx56.i.2, align 1
  %conv57.i.2491 = zext i8 %65 to i32
  %xor58.i.2492 = xor i32 %conv57.i.2491, 1
  %conv59.i.2493 = trunc i32 %xor58.i.2492 to i8
  %scevgep233.2494 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %58, i64 0, i64 0, i64 0
  %66 = load i8, i8* %scevgep233.2494, align 1
  %call64.i.2495 = call zeroext i8 @mult(i8 zeroext %conv59.i.2493, i8 zeroext %66) #2
  %scevgep240.2496 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %60, i64 0, i64 0, i64 0
  store i8 %call64.i.2495, i8* %scevgep240.2496, align 1
  %67 = load i8, i8* %arrayidx70.i.2, align 1
  %scevgep237.2497 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %59, i64 0, i64 0, i64 0
  %68 = load i8, i8* %scevgep237.2497, align 1
  %call75.i.2498 = call zeroext i8 @mult(i8 zeroext %67, i8 zeroext %68) #2
  %scevgep244.2499 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %61, i64 0, i64 0, i64 0
  store i8 %call75.i.2498, i8* %scevgep244.2499, align 1
  %scevgep241.2500 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %60, i64 0, i64 0, i64 0
  %69 = load i8, i8* %scevgep241.2500, align 1
  %conv84.i.2501 = zext i8 %69 to i32
  %scevgep245.2502 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %61, i64 0, i64 0, i64 0
  %70 = load i8, i8* %scevgep245.2502, align 1
  %conv89.i.2503 = zext i8 %70 to i32
  %xor90.i.2504 = xor i32 %conv84.i.2501, %conv89.i.2503
  %conv91.i.2505 = trunc i32 %xor90.i.2504 to i8
  %scevgep248.2506 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %62, i64 0, i64 0, i64 0
  store i8 %conv91.i.2505, i8* %scevgep248.2506, align 1
  %scevgep229.1.2 = getelementptr [3 x i8], [3 x i8]* %e2, i64 0, i64 1
  %71 = load i8, i8* %scevgep229.1.2, align 1
  %conv44.i.1.2 = zext i8 %71 to i32
  %scevgep232.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %58, i64 0, i64 0, i64 1
  %72 = load i8, i8* %scevgep232.1.2, align 1
  %conv49.i.1.2 = zext i8 %72 to i32
  %xor.i.1.2 = xor i32 %conv44.i.1.2, %conv49.i.1.2
  %conv50.i.1.2 = trunc i32 %xor.i.1.2 to i8
  %scevgep236.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %59, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.2, i8* %scevgep236.1.2, align 1
  %73 = load i8, i8* %arrayidx56.i.2, align 1
  %conv57.i.1.2 = zext i8 %73 to i32
  %xor58.i.1.2 = xor i32 %conv57.i.1.2, 1
  %conv59.i.1.2 = trunc i32 %xor58.i.1.2 to i8
  %scevgep233.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %58, i64 0, i64 0, i64 1
  %74 = load i8, i8* %scevgep233.1.2, align 1
  %call64.i.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.2, i8 zeroext %74) #2
  %scevgep240.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %60, i64 0, i64 0, i64 1
  store i8 %call64.i.1.2, i8* %scevgep240.1.2, align 1
  %75 = load i8, i8* %arrayidx70.i.2, align 1
  %scevgep237.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %59, i64 0, i64 0, i64 1
  %76 = load i8, i8* %scevgep237.1.2, align 1
  %call75.i.1.2 = call zeroext i8 @mult(i8 zeroext %75, i8 zeroext %76) #2
  %scevgep244.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %61, i64 0, i64 0, i64 1
  store i8 %call75.i.1.2, i8* %scevgep244.1.2, align 1
  %scevgep241.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %60, i64 0, i64 0, i64 1
  %77 = load i8, i8* %scevgep241.1.2, align 1
  %conv84.i.1.2 = zext i8 %77 to i32
  %scevgep245.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %61, i64 0, i64 0, i64 1
  %78 = load i8, i8* %scevgep245.1.2, align 1
  %conv89.i.1.2 = zext i8 %78 to i32
  %xor90.i.1.2 = xor i32 %conv84.i.1.2, %conv89.i.1.2
  %conv91.i.1.2 = trunc i32 %xor90.i.1.2 to i8
  %scevgep248.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %62, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.2, i8* %scevgep248.1.2, align 1
  %79 = load i8, i8* %x, align 1
  %80 = load i8, i8* %arraydecay6, align 1
  %call111.i = call zeroext i8 @mult(i8 zeroext %79, i8 zeroext %80) #2
  store i8 %call111.i, i8* %arraydecay7, align 1
  %scevgep219.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 1
  %81 = load i8, i8* %scevgep219.1, align 1
  %conv126.i.1 = zext i8 %81 to i32
  %82 = load i8, i8* %arraydecay7, align 1
  %conv129.i.1 = zext i8 %82 to i32
  %xor130.i.1 = xor i32 %conv129.i.1, %conv126.i.1
  %conv131.i.1 = trunc i32 %xor130.i.1 to i8
  store i8 %conv131.i.1, i8* %arraydecay7, align 1
  %scevgep219.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 2
  %83 = load i8, i8* %scevgep219.2, align 1
  %conv126.i.2 = zext i8 %83 to i32
  %84 = load i8, i8* %arraydecay7, align 1
  %conv129.i.2 = zext i8 %84 to i32
  %xor130.i.2 = xor i32 %conv129.i.2, %conv126.i.2
  %conv131.i.2 = trunc i32 %xor130.i.2 to i8
  store i8 %conv131.i.2, i8* %arraydecay7, align 1
  %scevgep218 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 1, i64 0
  %85 = bitcast i8* %scevgep218 to [3 x [3 x i8]]*
  %arrayidx108.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %86 = load i8, i8* %arrayidx108.i.1, align 1
  %arrayidx110.i.1 = getelementptr inbounds i8, i8* %arraydecay6, i64 1
  %87 = load i8, i8* %arrayidx110.i.1, align 1
  %call111.i.1 = call zeroext i8 @mult(i8 zeroext %86, i8 zeroext %87) #2
  %arrayidx113.i.1 = getelementptr inbounds i8, i8* %arraydecay7, i64 1
  store i8 %call111.i.1, i8* %arrayidx113.i.1, align 1
  %arrayidx128.i.1 = getelementptr inbounds i8, i8* %arraydecay7, i64 1
  %scevgep219.1439 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %85, i64 0, i64 0, i64 0
  %88 = load i8, i8* %scevgep219.1439, align 1
  %conv126.i.1440 = zext i8 %88 to i32
  %89 = load i8, i8* %arrayidx128.i.1, align 1
  %conv129.i.1441 = zext i8 %89 to i32
  %xor130.i.1442 = xor i32 %conv129.i.1441, %conv126.i.1440
  %conv131.i.1443 = trunc i32 %xor130.i.1442 to i8
  store i8 %conv131.i.1443, i8* %arrayidx128.i.1, align 1
  %scevgep219.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %85, i64 0, i64 0, i64 2
  %90 = load i8, i8* %scevgep219.2.1, align 1
  %conv126.i.2.1 = zext i8 %90 to i32
  %91 = load i8, i8* %arrayidx128.i.1, align 1
  %conv129.i.2.1 = zext i8 %91 to i32
  %xor130.i.2.1 = xor i32 %conv129.i.2.1, %conv126.i.2.1
  %conv131.i.2.1 = trunc i32 %xor130.i.2.1 to i8
  store i8 %conv131.i.2.1, i8* %arrayidx128.i.1, align 1
  %scevgep218.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %85, i64 0, i64 1, i64 0
  %92 = bitcast i8* %scevgep218.1 to [3 x [3 x i8]]*
  %arrayidx108.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %93 = load i8, i8* %arrayidx108.i.2, align 1
  %arrayidx110.i.2 = getelementptr inbounds i8, i8* %arraydecay6, i64 2
  %94 = load i8, i8* %arrayidx110.i.2, align 1
  %call111.i.2 = call zeroext i8 @mult(i8 zeroext %93, i8 zeroext %94) #2
  %arrayidx113.i.2 = getelementptr inbounds i8, i8* %arraydecay7, i64 2
  store i8 %call111.i.2, i8* %arrayidx113.i.2, align 1
  %arrayidx128.i.2 = getelementptr inbounds i8, i8* %arraydecay7, i64 2
  %scevgep219.2448 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %92, i64 0, i64 0, i64 0
  %95 = load i8, i8* %scevgep219.2448, align 1
  %conv126.i.2449 = zext i8 %95 to i32
  %96 = load i8, i8* %arrayidx128.i.2, align 1
  %conv129.i.2450 = zext i8 %96 to i32
  %xor130.i.2451 = xor i32 %conv129.i.2450, %conv126.i.2449
  %conv131.i.2452 = trunc i32 %xor130.i.2451 to i8
  store i8 %conv131.i.2452, i8* %arrayidx128.i.2, align 1
  %scevgep219.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %92, i64 0, i64 0, i64 1
  %97 = load i8, i8* %scevgep219.1.2, align 1
  %conv126.i.1.2 = zext i8 %97 to i32
  %98 = load i8, i8* %arrayidx128.i.2, align 1
  %conv129.i.1.2 = zext i8 %98 to i32
  %xor130.i.1.2 = xor i32 %conv129.i.1.2, %conv126.i.1.2
  %conv131.i.1.2 = trunc i32 %xor130.i.1.2 to i8
  store i8 %conv131.i.1.2, i8* %arrayidx128.i.2, align 1
  %call139.i = call zeroext i8 @mult(i8 zeroext %call.i77, i8 zeroext %call1.i) #2
  %conv140.i = zext i8 %call139.i to i32
  %scevgep209 = getelementptr [3 x i8], [3 x i8]* %e3, i64 0, i64 0
  %99 = load i8, i8* %scevgep209, align 1
  %scevgep209.1 = getelementptr [3 x i8], [3 x i8]* %e3, i64 0, i64 1
  %100 = load i8, i8* %scevgep209.1, align 1
  %conv.i.i172.i.1 = zext i8 %100 to i32
  %conv1.i.i173.i.1 = zext i8 %99 to i32
  %xor.i.i174.i.1 = xor i32 %conv1.i.i173.i.1, %conv.i.i172.i.1
  %conv2.i.i175.i.1 = trunc i32 %xor.i.i174.i.1 to i8
  %scevgep209.2 = getelementptr [3 x i8], [3 x i8]* %e3, i64 0, i64 2
  %101 = load i8, i8* %scevgep209.2, align 1
  %conv.i.i172.i.2 = zext i8 %101 to i32
  %conv1.i.i173.i.2 = zext i8 %conv2.i.i175.i.1 to i32
  %xor.i.i174.i.2 = xor i32 %conv1.i.i173.i.2, %conv.i.i172.i.2
  %conv2.i.i175.i.2 = trunc i32 %xor.i.i174.i.2 to i8
  %conv142.i = zext i8 %conv2.i.i175.i.2 to i32
  %cmp143.i = icmp eq i32 %conv140.i, %conv142.i
  call void @assert(i1 zeroext %cmp143.i) #2
  %arraydecay8 = getelementptr inbounds [3 x i8], [3 x i8]* %e4, i64 0, i64 0
  %arraydecay9 = getelementptr inbounds [3 x i8], [3 x i8]* %e5, i64 0, i64 0
  %call.i115 = call zeroext i8 (...) @rand() #2
  %call1.i116 = call zeroext i8 (...) @rand() #2
  %conv.i117 = zext i8 %call.i115 to i32
  %102 = load i8, i8* %x, align 1
  %scevgep205.1 = getelementptr i8, i8* %x, i64 1
  %103 = load i8, i8* %scevgep205.1, align 1
  %conv.i.i.i123.1 = zext i8 %103 to i32
  %conv1.i.i.i124.1 = zext i8 %102 to i32
  %xor.i.i.i125.1 = xor i32 %conv1.i.i.i124.1, %conv.i.i.i123.1
  %conv2.i.i.i126.1 = trunc i32 %xor.i.i.i125.1 to i8
  %scevgep205.2 = getelementptr i8, i8* %x, i64 2
  %104 = load i8, i8* %scevgep205.2, align 1
  %conv.i.i.i123.2 = zext i8 %104 to i32
  %conv1.i.i.i124.2 = zext i8 %conv2.i.i.i126.1 to i32
  %xor.i.i.i125.2 = xor i32 %conv1.i.i.i124.2, %conv.i.i.i123.2
  %conv2.i.i.i126.2 = trunc i32 %xor.i.i.i125.2 to i8
  %conv3.i129 = zext i8 %conv2.i.i.i126.2 to i32
  %cmp.i130 = icmp eq i32 %conv.i117, %conv3.i129
  call void @assume(i1 zeroext %cmp.i130) #2
  %conv5.i131 = zext i8 %call1.i116 to i32
  %scevgep201 = getelementptr [3 x i8], [3 x i8]* %e4, i64 0, i64 0
  %105 = load i8, i8* %scevgep201, align 1
  %scevgep201.1 = getelementptr [3 x i8], [3 x i8]* %e4, i64 0, i64 1
  %106 = load i8, i8* %scevgep201.1, align 1
  %conv.i.i155.i138.1 = zext i8 %106 to i32
  %conv1.i.i156.i139.1 = zext i8 %105 to i32
  %xor.i.i157.i140.1 = xor i32 %conv1.i.i156.i139.1, %conv.i.i155.i138.1
  %conv2.i.i158.i141.1 = trunc i32 %xor.i.i157.i140.1 to i8
  %scevgep201.2 = getelementptr [3 x i8], [3 x i8]* %e4, i64 0, i64 2
  %107 = load i8, i8* %scevgep201.2, align 1
  %conv.i.i155.i138.2 = zext i8 %107 to i32
  %conv1.i.i156.i139.2 = zext i8 %conv2.i.i158.i141.1 to i32
  %xor.i.i157.i140.2 = xor i32 %conv1.i.i156.i139.2, %conv.i.i155.i138.2
  %conv2.i.i158.i141.2 = trunc i32 %xor.i.i157.i140.2 to i8
  %conv7.i144 = zext i8 %conv2.i.i158.i141.2 to i32
  %cmp8.i145 = icmp eq i32 %conv5.i131, %conv7.i144
  call void @assume(i1 zeroext %cmp8.i145) #2
  %scevgep185 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %scevgep185186 = bitcast i8* %scevgep185 to [3 x [3 x i8]]*
  %scevgep192 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 1, i64 0
  %scevgep192193 = bitcast i8* %scevgep192 to [3 x [3 x i8]]*
  %call16.i153 = call zeroext i8 (...) @rand() #2
  store i8 %call16.i153, i8* %scevgep185, align 1
  %108 = load i8, i8* %scevgep185, align 1
  store i8 %108, i8* %scevgep192, align 1
  %scevgep190 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep185186, i64 0, i64 0, i64 1
  %scevgep197 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep192193, i64 0, i64 1, i64 0
  %call16.i153.1514 = call zeroext i8 (...) @rand() #2
  store i8 %call16.i153.1514, i8* %scevgep190, align 1
  %109 = load i8, i8* %scevgep190, align 1
  store i8 %109, i8* %scevgep197, align 1
  %scevgep188 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep185186, i64 0, i64 1, i64 1
  %scevgep195 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep192193, i64 0, i64 1, i64 1
  %call16.i153.1 = call zeroext i8 (...) @rand() #2
  store i8 %call16.i153.1, i8* %scevgep188, align 1
  %110 = load i8, i8* %scevgep188, align 1
  store i8 %110, i8* %scevgep195, align 1
  %scevgep162.1 = getelementptr [3 x i8], [3 x i8]* %e4, i64 0, i64 1
  %111 = load i8, i8* %scevgep162.1, align 1
  %conv44.i180.1 = zext i8 %111 to i32
  %scevgep165.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %112 = load i8, i8* %scevgep165.1, align 1
  %conv49.i185.1 = zext i8 %112 to i32
  %xor.i186.1 = xor i32 %conv44.i180.1, %conv49.i185.1
  %conv50.i187.1 = trunc i32 %xor.i186.1 to i8
  %scevgep169.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i187.1, i8* %scevgep169.1, align 1
  %113 = load i8, i8* %x, align 1
  %conv57.i194.1 = zext i8 %113 to i32
  %xor58.i195.1 = xor i32 %conv57.i194.1, 1
  %conv59.i196.1 = trunc i32 %xor58.i195.1 to i8
  %scevgep166.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %114 = load i8, i8* %scevgep166.1, align 1
  %call64.i201.1 = call zeroext i8 @mult(i8 zeroext %conv59.i196.1, i8 zeroext %114) #2
  %scevgep173.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i201.1, i8* %scevgep173.1, align 1
  %115 = load i8, i8* %x, align 1
  %scevgep170.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 1
  %116 = load i8, i8* %scevgep170.1, align 1
  %call75.i212.1 = call zeroext i8 @mult(i8 zeroext %115, i8 zeroext %116) #2
  %scevgep177.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i212.1, i8* %scevgep177.1, align 1
  %scevgep174.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %117 = load i8, i8* %scevgep174.1, align 1
  %conv84.i221.1 = zext i8 %117 to i32
  %scevgep178.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %118 = load i8, i8* %scevgep178.1, align 1
  %conv89.i226.1 = zext i8 %118 to i32
  %xor90.i227.1 = xor i32 %conv84.i221.1, %conv89.i226.1
  %conv91.i228.1 = trunc i32 %xor90.i227.1 to i8
  %scevgep181.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i228.1, i8* %scevgep181.1, align 1
  %scevgep162.2 = getelementptr [3 x i8], [3 x i8]* %e4, i64 0, i64 2
  %119 = load i8, i8* %scevgep162.2, align 1
  %conv44.i180.2 = zext i8 %119 to i32
  %scevgep165.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 2
  %120 = load i8, i8* %scevgep165.2, align 1
  %conv49.i185.2 = zext i8 %120 to i32
  %xor.i186.2 = xor i32 %conv44.i180.2, %conv49.i185.2
  %conv50.i187.2 = trunc i32 %xor.i186.2 to i8
  %scevgep169.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 2
  store i8 %conv50.i187.2, i8* %scevgep169.2, align 1
  %121 = load i8, i8* %x, align 1
  %conv57.i194.2 = zext i8 %121 to i32
  %xor58.i195.2 = xor i32 %conv57.i194.2, 1
  %conv59.i196.2 = trunc i32 %xor58.i195.2 to i8
  %scevgep166.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 2
  %122 = load i8, i8* %scevgep166.2, align 1
  %call64.i201.2 = call zeroext i8 @mult(i8 zeroext %conv59.i196.2, i8 zeroext %122) #2
  %scevgep173.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 2
  store i8 %call64.i201.2, i8* %scevgep173.2, align 1
  %123 = load i8, i8* %x, align 1
  %scevgep170.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 2
  %124 = load i8, i8* %scevgep170.2, align 1
  %call75.i212.2 = call zeroext i8 @mult(i8 zeroext %123, i8 zeroext %124) #2
  %scevgep177.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 2
  store i8 %call75.i212.2, i8* %scevgep177.2, align 1
  %scevgep174.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 2
  %125 = load i8, i8* %scevgep174.2, align 1
  %conv84.i221.2 = zext i8 %125 to i32
  %scevgep178.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 2
  %126 = load i8, i8* %scevgep178.2, align 1
  %conv89.i226.2 = zext i8 %126 to i32
  %xor90.i227.2 = xor i32 %conv84.i221.2, %conv89.i226.2
  %conv91.i228.2 = trunc i32 %xor90.i227.2 to i8
  %scevgep181.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 2
  store i8 %conv91.i228.2, i8* %scevgep181.2, align 1
  %scevgep164 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 1, i64 0
  %127 = bitcast i8* %scevgep164 to [3 x [3 x i8]]*
  %scevgep168 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 1, i64 0
  %128 = bitcast i8* %scevgep168 to [3 x [3 x i8]]*
  %scevgep172 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %129 = bitcast i8* %scevgep172 to [3 x [3 x i8]]*
  %scevgep176 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %130 = bitcast i8* %scevgep176 to [3 x [3 x i8]]*
  %scevgep180 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 1, i64 0
  %131 = bitcast i8* %scevgep180 to [3 x [3 x i8]]*
  %arrayidx56.i193.1 = getelementptr inbounds i8, i8* %x, i64 1
  %arrayidx70.i207.1 = getelementptr inbounds i8, i8* %x, i64 1
  %scevgep162.1385 = getelementptr [3 x i8], [3 x i8]* %e4, i64 0, i64 0
  %132 = load i8, i8* %scevgep162.1385, align 1
  %conv44.i180.1386 = zext i8 %132 to i32
  %scevgep165.1387 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %127, i64 0, i64 0, i64 0
  %133 = load i8, i8* %scevgep165.1387, align 1
  %conv49.i185.1388 = zext i8 %133 to i32
  %xor.i186.1389 = xor i32 %conv44.i180.1386, %conv49.i185.1388
  %conv50.i187.1390 = trunc i32 %xor.i186.1389 to i8
  %scevgep169.1391 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %128, i64 0, i64 0, i64 0
  store i8 %conv50.i187.1390, i8* %scevgep169.1391, align 1
  %134 = load i8, i8* %arrayidx56.i193.1, align 1
  %conv57.i194.1392 = zext i8 %134 to i32
  %xor58.i195.1393 = xor i32 %conv57.i194.1392, 1
  %conv59.i196.1394 = trunc i32 %xor58.i195.1393 to i8
  %scevgep166.1395 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %127, i64 0, i64 0, i64 0
  %135 = load i8, i8* %scevgep166.1395, align 1
  %call64.i201.1396 = call zeroext i8 @mult(i8 zeroext %conv59.i196.1394, i8 zeroext %135) #2
  %scevgep173.1397 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %129, i64 0, i64 0, i64 0
  store i8 %call64.i201.1396, i8* %scevgep173.1397, align 1
  %136 = load i8, i8* %arrayidx70.i207.1, align 1
  %scevgep170.1398 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %128, i64 0, i64 0, i64 0
  %137 = load i8, i8* %scevgep170.1398, align 1
  %call75.i212.1399 = call zeroext i8 @mult(i8 zeroext %136, i8 zeroext %137) #2
  %scevgep177.1400 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %130, i64 0, i64 0, i64 0
  store i8 %call75.i212.1399, i8* %scevgep177.1400, align 1
  %scevgep174.1401 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %129, i64 0, i64 0, i64 0
  %138 = load i8, i8* %scevgep174.1401, align 1
  %conv84.i221.1402 = zext i8 %138 to i32
  %scevgep178.1403 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %130, i64 0, i64 0, i64 0
  %139 = load i8, i8* %scevgep178.1403, align 1
  %conv89.i226.1404 = zext i8 %139 to i32
  %xor90.i227.1405 = xor i32 %conv84.i221.1402, %conv89.i226.1404
  %conv91.i228.1406 = trunc i32 %xor90.i227.1405 to i8
  %scevgep181.1407 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %131, i64 0, i64 0, i64 0
  store i8 %conv91.i228.1406, i8* %scevgep181.1407, align 1
  %scevgep162.2.1 = getelementptr [3 x i8], [3 x i8]* %e4, i64 0, i64 2
  %140 = load i8, i8* %scevgep162.2.1, align 1
  %conv44.i180.2.1 = zext i8 %140 to i32
  %scevgep165.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %127, i64 0, i64 0, i64 2
  %141 = load i8, i8* %scevgep165.2.1, align 1
  %conv49.i185.2.1 = zext i8 %141 to i32
  %xor.i186.2.1 = xor i32 %conv44.i180.2.1, %conv49.i185.2.1
  %conv50.i187.2.1 = trunc i32 %xor.i186.2.1 to i8
  %scevgep169.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %128, i64 0, i64 0, i64 2
  store i8 %conv50.i187.2.1, i8* %scevgep169.2.1, align 1
  %142 = load i8, i8* %arrayidx56.i193.1, align 1
  %conv57.i194.2.1 = zext i8 %142 to i32
  %xor58.i195.2.1 = xor i32 %conv57.i194.2.1, 1
  %conv59.i196.2.1 = trunc i32 %xor58.i195.2.1 to i8
  %scevgep166.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %127, i64 0, i64 0, i64 2
  %143 = load i8, i8* %scevgep166.2.1, align 1
  %call64.i201.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i196.2.1, i8 zeroext %143) #2
  %scevgep173.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %129, i64 0, i64 0, i64 2
  store i8 %call64.i201.2.1, i8* %scevgep173.2.1, align 1
  %144 = load i8, i8* %arrayidx70.i207.1, align 1
  %scevgep170.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %128, i64 0, i64 0, i64 2
  %145 = load i8, i8* %scevgep170.2.1, align 1
  %call75.i212.2.1 = call zeroext i8 @mult(i8 zeroext %144, i8 zeroext %145) #2
  %scevgep177.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %130, i64 0, i64 0, i64 2
  store i8 %call75.i212.2.1, i8* %scevgep177.2.1, align 1
  %scevgep174.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %129, i64 0, i64 0, i64 2
  %146 = load i8, i8* %scevgep174.2.1, align 1
  %conv84.i221.2.1 = zext i8 %146 to i32
  %scevgep178.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %130, i64 0, i64 0, i64 2
  %147 = load i8, i8* %scevgep178.2.1, align 1
  %conv89.i226.2.1 = zext i8 %147 to i32
  %xor90.i227.2.1 = xor i32 %conv84.i221.2.1, %conv89.i226.2.1
  %conv91.i228.2.1 = trunc i32 %xor90.i227.2.1 to i8
  %scevgep181.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %131, i64 0, i64 0, i64 2
  store i8 %conv91.i228.2.1, i8* %scevgep181.2.1, align 1
  %scevgep164.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %127, i64 0, i64 1, i64 0
  %148 = bitcast i8* %scevgep164.1 to [3 x [3 x i8]]*
  %scevgep168.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %128, i64 0, i64 1, i64 0
  %149 = bitcast i8* %scevgep168.1 to [3 x [3 x i8]]*
  %scevgep172.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %129, i64 0, i64 1, i64 0
  %150 = bitcast i8* %scevgep172.1 to [3 x [3 x i8]]*
  %scevgep176.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %130, i64 0, i64 1, i64 0
  %151 = bitcast i8* %scevgep176.1 to [3 x [3 x i8]]*
  %scevgep180.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %131, i64 0, i64 1, i64 0
  %152 = bitcast i8* %scevgep180.1 to [3 x [3 x i8]]*
  %arrayidx56.i193.2 = getelementptr inbounds i8, i8* %x, i64 2
  %arrayidx70.i207.2 = getelementptr inbounds i8, i8* %x, i64 2
  %scevgep162.2412 = getelementptr [3 x i8], [3 x i8]* %e4, i64 0, i64 0
  %153 = load i8, i8* %scevgep162.2412, align 1
  %conv44.i180.2413 = zext i8 %153 to i32
  %scevgep165.2414 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %148, i64 0, i64 0, i64 0
  %154 = load i8, i8* %scevgep165.2414, align 1
  %conv49.i185.2415 = zext i8 %154 to i32
  %xor.i186.2416 = xor i32 %conv44.i180.2413, %conv49.i185.2415
  %conv50.i187.2417 = trunc i32 %xor.i186.2416 to i8
  %scevgep169.2418 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %149, i64 0, i64 0, i64 0
  store i8 %conv50.i187.2417, i8* %scevgep169.2418, align 1
  %155 = load i8, i8* %arrayidx56.i193.2, align 1
  %conv57.i194.2419 = zext i8 %155 to i32
  %xor58.i195.2420 = xor i32 %conv57.i194.2419, 1
  %conv59.i196.2421 = trunc i32 %xor58.i195.2420 to i8
  %scevgep166.2422 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %148, i64 0, i64 0, i64 0
  %156 = load i8, i8* %scevgep166.2422, align 1
  %call64.i201.2423 = call zeroext i8 @mult(i8 zeroext %conv59.i196.2421, i8 zeroext %156) #2
  %scevgep173.2424 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %150, i64 0, i64 0, i64 0
  store i8 %call64.i201.2423, i8* %scevgep173.2424, align 1
  %157 = load i8, i8* %arrayidx70.i207.2, align 1
  %scevgep170.2425 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %149, i64 0, i64 0, i64 0
  %158 = load i8, i8* %scevgep170.2425, align 1
  %call75.i212.2426 = call zeroext i8 @mult(i8 zeroext %157, i8 zeroext %158) #2
  %scevgep177.2427 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %151, i64 0, i64 0, i64 0
  store i8 %call75.i212.2426, i8* %scevgep177.2427, align 1
  %scevgep174.2428 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %150, i64 0, i64 0, i64 0
  %159 = load i8, i8* %scevgep174.2428, align 1
  %conv84.i221.2429 = zext i8 %159 to i32
  %scevgep178.2430 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %151, i64 0, i64 0, i64 0
  %160 = load i8, i8* %scevgep178.2430, align 1
  %conv89.i226.2431 = zext i8 %160 to i32
  %xor90.i227.2432 = xor i32 %conv84.i221.2429, %conv89.i226.2431
  %conv91.i228.2433 = trunc i32 %xor90.i227.2432 to i8
  %scevgep181.2434 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %152, i64 0, i64 0, i64 0
  store i8 %conv91.i228.2433, i8* %scevgep181.2434, align 1
  %scevgep162.1.2 = getelementptr [3 x i8], [3 x i8]* %e4, i64 0, i64 1
  %161 = load i8, i8* %scevgep162.1.2, align 1
  %conv44.i180.1.2 = zext i8 %161 to i32
  %scevgep165.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %148, i64 0, i64 0, i64 1
  %162 = load i8, i8* %scevgep165.1.2, align 1
  %conv49.i185.1.2 = zext i8 %162 to i32
  %xor.i186.1.2 = xor i32 %conv44.i180.1.2, %conv49.i185.1.2
  %conv50.i187.1.2 = trunc i32 %xor.i186.1.2 to i8
  %scevgep169.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %149, i64 0, i64 0, i64 1
  store i8 %conv50.i187.1.2, i8* %scevgep169.1.2, align 1
  %163 = load i8, i8* %arrayidx56.i193.2, align 1
  %conv57.i194.1.2 = zext i8 %163 to i32
  %xor58.i195.1.2 = xor i32 %conv57.i194.1.2, 1
  %conv59.i196.1.2 = trunc i32 %xor58.i195.1.2 to i8
  %scevgep166.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %148, i64 0, i64 0, i64 1
  %164 = load i8, i8* %scevgep166.1.2, align 1
  %call64.i201.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i196.1.2, i8 zeroext %164) #2
  %scevgep173.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %150, i64 0, i64 0, i64 1
  store i8 %call64.i201.1.2, i8* %scevgep173.1.2, align 1
  %165 = load i8, i8* %arrayidx70.i207.2, align 1
  %scevgep170.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %149, i64 0, i64 0, i64 1
  %166 = load i8, i8* %scevgep170.1.2, align 1
  %call75.i212.1.2 = call zeroext i8 @mult(i8 zeroext %165, i8 zeroext %166) #2
  %scevgep177.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %151, i64 0, i64 0, i64 1
  store i8 %call75.i212.1.2, i8* %scevgep177.1.2, align 1
  %scevgep174.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %150, i64 0, i64 0, i64 1
  %167 = load i8, i8* %scevgep174.1.2, align 1
  %conv84.i221.1.2 = zext i8 %167 to i32
  %scevgep178.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %151, i64 0, i64 0, i64 1
  %168 = load i8, i8* %scevgep178.1.2, align 1
  %conv89.i226.1.2 = zext i8 %168 to i32
  %xor90.i227.1.2 = xor i32 %conv84.i221.1.2, %conv89.i226.1.2
  %conv91.i228.1.2 = trunc i32 %xor90.i227.1.2 to i8
  %scevgep181.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %152, i64 0, i64 0, i64 1
  store i8 %conv91.i228.1.2, i8* %scevgep181.1.2, align 1
  %169 = load i8, i8* %x, align 1
  %170 = load i8, i8* %arraydecay8, align 1
  %call111.i245 = call zeroext i8 @mult(i8 zeroext %169, i8 zeroext %170) #2
  store i8 %call111.i245, i8* %arraydecay9, align 1
  %scevgep152.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 1
  %171 = load i8, i8* %scevgep152.1, align 1
  %conv126.i257.1 = zext i8 %171 to i32
  %172 = load i8, i8* %arraydecay9, align 1
  %conv129.i260.1 = zext i8 %172 to i32
  %xor130.i261.1 = xor i32 %conv129.i260.1, %conv126.i257.1
  %conv131.i262.1 = trunc i32 %xor130.i261.1 to i8
  store i8 %conv131.i262.1, i8* %arraydecay9, align 1
  %scevgep152.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 2
  %173 = load i8, i8* %scevgep152.2, align 1
  %conv126.i257.2 = zext i8 %173 to i32
  %174 = load i8, i8* %arraydecay9, align 1
  %conv129.i260.2 = zext i8 %174 to i32
  %xor130.i261.2 = xor i32 %conv129.i260.2, %conv126.i257.2
  %conv131.i262.2 = trunc i32 %xor130.i261.2 to i8
  store i8 %conv131.i262.2, i8* %arraydecay9, align 1
  %scevgep151 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 1, i64 0
  %175 = bitcast i8* %scevgep151 to [3 x [3 x i8]]*
  %arrayidx108.i242.1 = getelementptr inbounds i8, i8* %x, i64 1
  %176 = load i8, i8* %arrayidx108.i242.1, align 1
  %arrayidx110.i244.1 = getelementptr inbounds i8, i8* %arraydecay8, i64 1
  %177 = load i8, i8* %arrayidx110.i244.1, align 1
  %call111.i245.1 = call zeroext i8 @mult(i8 zeroext %176, i8 zeroext %177) #2
  %arrayidx113.i247.1 = getelementptr inbounds i8, i8* %arraydecay9, i64 1
  store i8 %call111.i245.1, i8* %arrayidx113.i247.1, align 1
  %arrayidx128.i259.1 = getelementptr inbounds i8, i8* %arraydecay9, i64 1
  %scevgep152.1367 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %175, i64 0, i64 0, i64 0
  %178 = load i8, i8* %scevgep152.1367, align 1
  %conv126.i257.1368 = zext i8 %178 to i32
  %179 = load i8, i8* %arrayidx128.i259.1, align 1
  %conv129.i260.1369 = zext i8 %179 to i32
  %xor130.i261.1370 = xor i32 %conv129.i260.1369, %conv126.i257.1368
  %conv131.i262.1371 = trunc i32 %xor130.i261.1370 to i8
  store i8 %conv131.i262.1371, i8* %arrayidx128.i259.1, align 1
  %scevgep152.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %175, i64 0, i64 0, i64 2
  %180 = load i8, i8* %scevgep152.2.1, align 1
  %conv126.i257.2.1 = zext i8 %180 to i32
  %181 = load i8, i8* %arrayidx128.i259.1, align 1
  %conv129.i260.2.1 = zext i8 %181 to i32
  %xor130.i261.2.1 = xor i32 %conv129.i260.2.1, %conv126.i257.2.1
  %conv131.i262.2.1 = trunc i32 %xor130.i261.2.1 to i8
  store i8 %conv131.i262.2.1, i8* %arrayidx128.i259.1, align 1
  %scevgep151.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %175, i64 0, i64 1, i64 0
  %182 = bitcast i8* %scevgep151.1 to [3 x [3 x i8]]*
  %arrayidx108.i242.2 = getelementptr inbounds i8, i8* %x, i64 2
  %183 = load i8, i8* %arrayidx108.i242.2, align 1
  %arrayidx110.i244.2 = getelementptr inbounds i8, i8* %arraydecay8, i64 2
  %184 = load i8, i8* %arrayidx110.i244.2, align 1
  %call111.i245.2 = call zeroext i8 @mult(i8 zeroext %183, i8 zeroext %184) #2
  %arrayidx113.i247.2 = getelementptr inbounds i8, i8* %arraydecay9, i64 2
  store i8 %call111.i245.2, i8* %arrayidx113.i247.2, align 1
  %arrayidx128.i259.2 = getelementptr inbounds i8, i8* %arraydecay9, i64 2
  %scevgep152.2376 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %182, i64 0, i64 0, i64 0
  %185 = load i8, i8* %scevgep152.2376, align 1
  %conv126.i257.2377 = zext i8 %185 to i32
  %186 = load i8, i8* %arrayidx128.i259.2, align 1
  %conv129.i260.2378 = zext i8 %186 to i32
  %xor130.i261.2379 = xor i32 %conv129.i260.2378, %conv126.i257.2377
  %conv131.i262.2380 = trunc i32 %xor130.i261.2379 to i8
  store i8 %conv131.i262.2380, i8* %arrayidx128.i259.2, align 1
  %scevgep152.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %182, i64 0, i64 0, i64 1
  %187 = load i8, i8* %scevgep152.1.2, align 1
  %conv126.i257.1.2 = zext i8 %187 to i32
  %188 = load i8, i8* %arrayidx128.i259.2, align 1
  %conv129.i260.1.2 = zext i8 %188 to i32
  %xor130.i261.1.2 = xor i32 %conv129.i260.1.2, %conv126.i257.1.2
  %conv131.i262.1.2 = trunc i32 %xor130.i261.1.2 to i8
  store i8 %conv131.i262.1.2, i8* %arrayidx128.i259.2, align 1
  %call139.i268 = call zeroext i8 @mult(i8 zeroext %call.i115, i8 zeroext %call1.i116) #2
  %conv140.i269 = zext i8 %call139.i268 to i32
  %scevgep142 = getelementptr [3 x i8], [3 x i8]* %e5, i64 0, i64 0
  %189 = load i8, i8* %scevgep142, align 1
  %scevgep142.1 = getelementptr [3 x i8], [3 x i8]* %e5, i64 0, i64 1
  %190 = load i8, i8* %scevgep142.1, align 1
  %conv.i.i172.i276.1 = zext i8 %190 to i32
  %conv1.i.i173.i277.1 = zext i8 %189 to i32
  %xor.i.i174.i278.1 = xor i32 %conv1.i.i173.i277.1, %conv.i.i172.i276.1
  %conv2.i.i175.i279.1 = trunc i32 %xor.i.i174.i278.1 to i8
  %scevgep142.2 = getelementptr [3 x i8], [3 x i8]* %e5, i64 0, i64 2
  %191 = load i8, i8* %scevgep142.2, align 1
  %conv.i.i172.i276.2 = zext i8 %191 to i32
  %conv1.i.i173.i277.2 = zext i8 %conv2.i.i175.i279.1 to i32
  %xor.i.i174.i278.2 = xor i32 %conv1.i.i173.i277.2, %conv.i.i172.i276.2
  %conv2.i.i175.i279.2 = trunc i32 %xor.i.i174.i278.2 to i8
  %conv142.i282 = zext i8 %conv2.i.i175.i279.2 to i32
  %cmp143.i283 = icmp eq i32 %conv140.i269, %conv142.i282
  call void @assert(i1 zeroext %cmp143.i283) #2
  %arraydecay10 = getelementptr inbounds [3 x i8], [3 x i8]* %e3, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [3 x i8], [3 x i8]* %e4, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [3 x i8], [3 x i8]* %e7, i64 0, i64 0
  %call.i316 = call zeroext i8 (...) @rand() #2
  %call1.i317 = call zeroext i8 (...) @rand() #2
  %conv.i318 = zext i8 %call.i316 to i32
  %scevgep138 = getelementptr [3 x i8], [3 x i8]* %e3, i64 0, i64 0
  %192 = load i8, i8* %scevgep138, align 1
  %scevgep138.1 = getelementptr [3 x i8], [3 x i8]* %e3, i64 0, i64 1
  %193 = load i8, i8* %scevgep138.1, align 1
  %conv.i.i.i324.1 = zext i8 %193 to i32
  %conv1.i.i.i325.1 = zext i8 %192 to i32
  %xor.i.i.i326.1 = xor i32 %conv1.i.i.i325.1, %conv.i.i.i324.1
  %conv2.i.i.i327.1 = trunc i32 %xor.i.i.i326.1 to i8
  %scevgep138.2 = getelementptr [3 x i8], [3 x i8]* %e3, i64 0, i64 2
  %194 = load i8, i8* %scevgep138.2, align 1
  %conv.i.i.i324.2 = zext i8 %194 to i32
  %conv1.i.i.i325.2 = zext i8 %conv2.i.i.i327.1 to i32
  %xor.i.i.i326.2 = xor i32 %conv1.i.i.i325.2, %conv.i.i.i324.2
  %conv2.i.i.i327.2 = trunc i32 %xor.i.i.i326.2 to i8
  %conv3.i330 = zext i8 %conv2.i.i.i327.2 to i32
  %cmp.i331 = icmp eq i32 %conv.i318, %conv3.i330
  call void @assume(i1 zeroext %cmp.i331) #2
  %conv5.i332 = zext i8 %call1.i317 to i32
  %scevgep134 = getelementptr [3 x i8], [3 x i8]* %e4, i64 0, i64 0
  %195 = load i8, i8* %scevgep134, align 1
  %scevgep134.1 = getelementptr [3 x i8], [3 x i8]* %e4, i64 0, i64 1
  %196 = load i8, i8* %scevgep134.1, align 1
  %conv.i.i155.i339.1 = zext i8 %196 to i32
  %conv1.i.i156.i340.1 = zext i8 %195 to i32
  %xor.i.i157.i341.1 = xor i32 %conv1.i.i156.i340.1, %conv.i.i155.i339.1
  %conv2.i.i158.i342.1 = trunc i32 %xor.i.i157.i341.1 to i8
  %scevgep134.2 = getelementptr [3 x i8], [3 x i8]* %e4, i64 0, i64 2
  %197 = load i8, i8* %scevgep134.2, align 1
  %conv.i.i155.i339.2 = zext i8 %197 to i32
  %conv1.i.i156.i340.2 = zext i8 %conv2.i.i158.i342.1 to i32
  %xor.i.i157.i341.2 = xor i32 %conv1.i.i156.i340.2, %conv.i.i155.i339.2
  %conv2.i.i158.i342.2 = trunc i32 %xor.i.i157.i341.2 to i8
  %conv7.i345 = zext i8 %conv2.i.i158.i342.2 to i32
  %cmp8.i346 = icmp eq i32 %conv5.i332, %conv7.i345
  call void @assume(i1 zeroext %cmp8.i346) #2
  %scevgep118 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %scevgep118119 = bitcast i8* %scevgep118 to [3 x [3 x i8]]*
  %scevgep125 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 1, i64 0
  %scevgep125126 = bitcast i8* %scevgep125 to [3 x [3 x i8]]*
  %call16.i354 = call zeroext i8 (...) @rand() #2
  store i8 %call16.i354, i8* %scevgep118, align 1
  %198 = load i8, i8* %scevgep118, align 1
  store i8 %198, i8* %scevgep125, align 1
  %scevgep123 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep118119, i64 0, i64 0, i64 1
  %scevgep130 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep125126, i64 0, i64 1, i64 0
  %call16.i354.1511 = call zeroext i8 (...) @rand() #2
  store i8 %call16.i354.1511, i8* %scevgep123, align 1
  %199 = load i8, i8* %scevgep123, align 1
  store i8 %199, i8* %scevgep130, align 1
  %scevgep121 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep118119, i64 0, i64 1, i64 1
  %scevgep128 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %scevgep125126, i64 0, i64 1, i64 1
  %call16.i354.1 = call zeroext i8 (...) @rand() #2
  store i8 %call16.i354.1, i8* %scevgep121, align 1
  %200 = load i8, i8* %scevgep121, align 1
  store i8 %200, i8* %scevgep128, align 1
  %scevgep95.1 = getelementptr [3 x i8], [3 x i8]* %e4, i64 0, i64 1
  %201 = load i8, i8* %scevgep95.1, align 1
  %conv44.i381.1 = zext i8 %201 to i32
  %scevgep98.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %202 = load i8, i8* %scevgep98.1, align 1
  %conv49.i386.1 = zext i8 %202 to i32
  %xor.i387.1 = xor i32 %conv44.i381.1, %conv49.i386.1
  %conv50.i388.1 = trunc i32 %xor.i387.1 to i8
  %scevgep102.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i388.1, i8* %scevgep102.1, align 1
  %203 = load i8, i8* %arraydecay10, align 1
  %conv57.i395.1 = zext i8 %203 to i32
  %xor58.i396.1 = xor i32 %conv57.i395.1, 1
  %conv59.i397.1 = trunc i32 %xor58.i396.1 to i8
  %scevgep99.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 1
  %204 = load i8, i8* %scevgep99.1, align 1
  %call64.i402.1 = call zeroext i8 @mult(i8 zeroext %conv59.i397.1, i8 zeroext %204) #2
  %scevgep106.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i402.1, i8* %scevgep106.1, align 1
  %205 = load i8, i8* %arraydecay10, align 1
  %scevgep103.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 1
  %206 = load i8, i8* %scevgep103.1, align 1
  %call75.i413.1 = call zeroext i8 @mult(i8 zeroext %205, i8 zeroext %206) #2
  %scevgep110.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i413.1, i8* %scevgep110.1, align 1
  %scevgep107.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %207 = load i8, i8* %scevgep107.1, align 1
  %conv84.i422.1 = zext i8 %207 to i32
  %scevgep111.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %208 = load i8, i8* %scevgep111.1, align 1
  %conv89.i427.1 = zext i8 %208 to i32
  %xor90.i428.1 = xor i32 %conv84.i422.1, %conv89.i427.1
  %conv91.i429.1 = trunc i32 %xor90.i428.1 to i8
  %scevgep114.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i429.1, i8* %scevgep114.1, align 1
  %scevgep95.2 = getelementptr [3 x i8], [3 x i8]* %e4, i64 0, i64 2
  %209 = load i8, i8* %scevgep95.2, align 1
  %conv44.i381.2 = zext i8 %209 to i32
  %scevgep98.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 2
  %210 = load i8, i8* %scevgep98.2, align 1
  %conv49.i386.2 = zext i8 %210 to i32
  %xor.i387.2 = xor i32 %conv44.i381.2, %conv49.i386.2
  %conv50.i388.2 = trunc i32 %xor.i387.2 to i8
  %scevgep102.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 2
  store i8 %conv50.i388.2, i8* %scevgep102.2, align 1
  %211 = load i8, i8* %arraydecay10, align 1
  %conv57.i395.2 = zext i8 %211 to i32
  %xor58.i396.2 = xor i32 %conv57.i395.2, 1
  %conv59.i397.2 = trunc i32 %xor58.i396.2 to i8
  %scevgep99.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 0, i64 2
  %212 = load i8, i8* %scevgep99.2, align 1
  %call64.i402.2 = call zeroext i8 @mult(i8 zeroext %conv59.i397.2, i8 zeroext %212) #2
  %scevgep106.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 2
  store i8 %call64.i402.2, i8* %scevgep106.2, align 1
  %213 = load i8, i8* %arraydecay10, align 1
  %scevgep103.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 0, i64 2
  %214 = load i8, i8* %scevgep103.2, align 1
  %call75.i413.2 = call zeroext i8 @mult(i8 zeroext %213, i8 zeroext %214) #2
  %scevgep110.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 2
  store i8 %call75.i413.2, i8* %scevgep110.2, align 1
  %scevgep107.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 0, i64 2
  %215 = load i8, i8* %scevgep107.2, align 1
  %conv84.i422.2 = zext i8 %215 to i32
  %scevgep111.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 0, i64 2
  %216 = load i8, i8* %scevgep111.2, align 1
  %conv89.i427.2 = zext i8 %216 to i32
  %xor90.i428.2 = xor i32 %conv84.i422.2, %conv89.i427.2
  %conv91.i429.2 = trunc i32 %xor90.i428.2 to i8
  %scevgep114.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 2
  store i8 %conv91.i429.2, i8* %scevgep114.2, align 1
  %scevgep97 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %r.i, i64 0, i64 1, i64 0
  %217 = bitcast i8* %scevgep97 to [3 x [3 x i8]]*
  %scevgep101 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %s.i, i64 0, i64 1, i64 0
  %218 = bitcast i8* %scevgep101 to [3 x [3 x i8]]*
  %scevgep105 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %219 = bitcast i8* %scevgep105 to [3 x [3 x i8]]*
  %scevgep109 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %220 = bitcast i8* %scevgep109 to [3 x [3 x i8]]*
  %scevgep113 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 1, i64 0
  %221 = bitcast i8* %scevgep113 to [3 x [3 x i8]]*
  %arrayidx56.i394.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %arrayidx70.i408.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %scevgep95.1313 = getelementptr [3 x i8], [3 x i8]* %e4, i64 0, i64 0
  %222 = load i8, i8* %scevgep95.1313, align 1
  %conv44.i381.1314 = zext i8 %222 to i32
  %scevgep98.1315 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %217, i64 0, i64 0, i64 0
  %223 = load i8, i8* %scevgep98.1315, align 1
  %conv49.i386.1316 = zext i8 %223 to i32
  %xor.i387.1317 = xor i32 %conv44.i381.1314, %conv49.i386.1316
  %conv50.i388.1318 = trunc i32 %xor.i387.1317 to i8
  %scevgep102.1319 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %218, i64 0, i64 0, i64 0
  store i8 %conv50.i388.1318, i8* %scevgep102.1319, align 1
  %224 = load i8, i8* %arrayidx56.i394.1, align 1
  %conv57.i395.1320 = zext i8 %224 to i32
  %xor58.i396.1321 = xor i32 %conv57.i395.1320, 1
  %conv59.i397.1322 = trunc i32 %xor58.i396.1321 to i8
  %scevgep99.1323 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %217, i64 0, i64 0, i64 0
  %225 = load i8, i8* %scevgep99.1323, align 1
  %call64.i402.1324 = call zeroext i8 @mult(i8 zeroext %conv59.i397.1322, i8 zeroext %225) #2
  %scevgep106.1325 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %219, i64 0, i64 0, i64 0
  store i8 %call64.i402.1324, i8* %scevgep106.1325, align 1
  %226 = load i8, i8* %arrayidx70.i408.1, align 1
  %scevgep103.1326 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %218, i64 0, i64 0, i64 0
  %227 = load i8, i8* %scevgep103.1326, align 1
  %call75.i413.1327 = call zeroext i8 @mult(i8 zeroext %226, i8 zeroext %227) #2
  %scevgep110.1328 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %220, i64 0, i64 0, i64 0
  store i8 %call75.i413.1327, i8* %scevgep110.1328, align 1
  %scevgep107.1329 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %219, i64 0, i64 0, i64 0
  %228 = load i8, i8* %scevgep107.1329, align 1
  %conv84.i422.1330 = zext i8 %228 to i32
  %scevgep111.1331 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %220, i64 0, i64 0, i64 0
  %229 = load i8, i8* %scevgep111.1331, align 1
  %conv89.i427.1332 = zext i8 %229 to i32
  %xor90.i428.1333 = xor i32 %conv84.i422.1330, %conv89.i427.1332
  %conv91.i429.1334 = trunc i32 %xor90.i428.1333 to i8
  %scevgep114.1335 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %221, i64 0, i64 0, i64 0
  store i8 %conv91.i429.1334, i8* %scevgep114.1335, align 1
  %scevgep95.2.1 = getelementptr [3 x i8], [3 x i8]* %e4, i64 0, i64 2
  %230 = load i8, i8* %scevgep95.2.1, align 1
  %conv44.i381.2.1 = zext i8 %230 to i32
  %scevgep98.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %217, i64 0, i64 0, i64 2
  %231 = load i8, i8* %scevgep98.2.1, align 1
  %conv49.i386.2.1 = zext i8 %231 to i32
  %xor.i387.2.1 = xor i32 %conv44.i381.2.1, %conv49.i386.2.1
  %conv50.i388.2.1 = trunc i32 %xor.i387.2.1 to i8
  %scevgep102.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %218, i64 0, i64 0, i64 2
  store i8 %conv50.i388.2.1, i8* %scevgep102.2.1, align 1
  %232 = load i8, i8* %arrayidx56.i394.1, align 1
  %conv57.i395.2.1 = zext i8 %232 to i32
  %xor58.i396.2.1 = xor i32 %conv57.i395.2.1, 1
  %conv59.i397.2.1 = trunc i32 %xor58.i396.2.1 to i8
  %scevgep99.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %217, i64 0, i64 0, i64 2
  %233 = load i8, i8* %scevgep99.2.1, align 1
  %call64.i402.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i397.2.1, i8 zeroext %233) #2
  %scevgep106.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %219, i64 0, i64 0, i64 2
  store i8 %call64.i402.2.1, i8* %scevgep106.2.1, align 1
  %234 = load i8, i8* %arrayidx70.i408.1, align 1
  %scevgep103.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %218, i64 0, i64 0, i64 2
  %235 = load i8, i8* %scevgep103.2.1, align 1
  %call75.i413.2.1 = call zeroext i8 @mult(i8 zeroext %234, i8 zeroext %235) #2
  %scevgep110.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %220, i64 0, i64 0, i64 2
  store i8 %call75.i413.2.1, i8* %scevgep110.2.1, align 1
  %scevgep107.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %219, i64 0, i64 0, i64 2
  %236 = load i8, i8* %scevgep107.2.1, align 1
  %conv84.i422.2.1 = zext i8 %236 to i32
  %scevgep111.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %220, i64 0, i64 0, i64 2
  %237 = load i8, i8* %scevgep111.2.1, align 1
  %conv89.i427.2.1 = zext i8 %237 to i32
  %xor90.i428.2.1 = xor i32 %conv84.i422.2.1, %conv89.i427.2.1
  %conv91.i429.2.1 = trunc i32 %xor90.i428.2.1 to i8
  %scevgep114.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %221, i64 0, i64 0, i64 2
  store i8 %conv91.i429.2.1, i8* %scevgep114.2.1, align 1
  %scevgep97.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %217, i64 0, i64 1, i64 0
  %238 = bitcast i8* %scevgep97.1 to [3 x [3 x i8]]*
  %scevgep101.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %218, i64 0, i64 1, i64 0
  %239 = bitcast i8* %scevgep101.1 to [3 x [3 x i8]]*
  %scevgep105.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %219, i64 0, i64 1, i64 0
  %240 = bitcast i8* %scevgep105.1 to [3 x [3 x i8]]*
  %scevgep109.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %220, i64 0, i64 1, i64 0
  %241 = bitcast i8* %scevgep109.1 to [3 x [3 x i8]]*
  %scevgep113.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %221, i64 0, i64 1, i64 0
  %242 = bitcast i8* %scevgep113.1 to [3 x [3 x i8]]*
  %arrayidx56.i394.2 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  %arrayidx70.i408.2 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  %scevgep95.2340 = getelementptr [3 x i8], [3 x i8]* %e4, i64 0, i64 0
  %243 = load i8, i8* %scevgep95.2340, align 1
  %conv44.i381.2341 = zext i8 %243 to i32
  %scevgep98.2342 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %238, i64 0, i64 0, i64 0
  %244 = load i8, i8* %scevgep98.2342, align 1
  %conv49.i386.2343 = zext i8 %244 to i32
  %xor.i387.2344 = xor i32 %conv44.i381.2341, %conv49.i386.2343
  %conv50.i388.2345 = trunc i32 %xor.i387.2344 to i8
  %scevgep102.2346 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %239, i64 0, i64 0, i64 0
  store i8 %conv50.i388.2345, i8* %scevgep102.2346, align 1
  %245 = load i8, i8* %arrayidx56.i394.2, align 1
  %conv57.i395.2347 = zext i8 %245 to i32
  %xor58.i396.2348 = xor i32 %conv57.i395.2347, 1
  %conv59.i397.2349 = trunc i32 %xor58.i396.2348 to i8
  %scevgep99.2350 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %238, i64 0, i64 0, i64 0
  %246 = load i8, i8* %scevgep99.2350, align 1
  %call64.i402.2351 = call zeroext i8 @mult(i8 zeroext %conv59.i397.2349, i8 zeroext %246) #2
  %scevgep106.2352 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %240, i64 0, i64 0, i64 0
  store i8 %call64.i402.2351, i8* %scevgep106.2352, align 1
  %247 = load i8, i8* %arrayidx70.i408.2, align 1
  %scevgep103.2353 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %239, i64 0, i64 0, i64 0
  %248 = load i8, i8* %scevgep103.2353, align 1
  %call75.i413.2354 = call zeroext i8 @mult(i8 zeroext %247, i8 zeroext %248) #2
  %scevgep110.2355 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %241, i64 0, i64 0, i64 0
  store i8 %call75.i413.2354, i8* %scevgep110.2355, align 1
  %scevgep107.2356 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %240, i64 0, i64 0, i64 0
  %249 = load i8, i8* %scevgep107.2356, align 1
  %conv84.i422.2357 = zext i8 %249 to i32
  %scevgep111.2358 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %241, i64 0, i64 0, i64 0
  %250 = load i8, i8* %scevgep111.2358, align 1
  %conv89.i427.2359 = zext i8 %250 to i32
  %xor90.i428.2360 = xor i32 %conv84.i422.2357, %conv89.i427.2359
  %conv91.i429.2361 = trunc i32 %xor90.i428.2360 to i8
  %scevgep114.2362 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %242, i64 0, i64 0, i64 0
  store i8 %conv91.i429.2361, i8* %scevgep114.2362, align 1
  %scevgep95.1.2 = getelementptr [3 x i8], [3 x i8]* %e4, i64 0, i64 1
  %251 = load i8, i8* %scevgep95.1.2, align 1
  %conv44.i381.1.2 = zext i8 %251 to i32
  %scevgep98.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %238, i64 0, i64 0, i64 1
  %252 = load i8, i8* %scevgep98.1.2, align 1
  %conv49.i386.1.2 = zext i8 %252 to i32
  %xor.i387.1.2 = xor i32 %conv44.i381.1.2, %conv49.i386.1.2
  %conv50.i388.1.2 = trunc i32 %xor.i387.1.2 to i8
  %scevgep102.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %239, i64 0, i64 0, i64 1
  store i8 %conv50.i388.1.2, i8* %scevgep102.1.2, align 1
  %253 = load i8, i8* %arrayidx56.i394.2, align 1
  %conv57.i395.1.2 = zext i8 %253 to i32
  %xor58.i396.1.2 = xor i32 %conv57.i395.1.2, 1
  %conv59.i397.1.2 = trunc i32 %xor58.i396.1.2 to i8
  %scevgep99.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %238, i64 0, i64 0, i64 1
  %254 = load i8, i8* %scevgep99.1.2, align 1
  %call64.i402.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i397.1.2, i8 zeroext %254) #2
  %scevgep106.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %240, i64 0, i64 0, i64 1
  store i8 %call64.i402.1.2, i8* %scevgep106.1.2, align 1
  %255 = load i8, i8* %arrayidx70.i408.2, align 1
  %scevgep103.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %239, i64 0, i64 0, i64 1
  %256 = load i8, i8* %scevgep103.1.2, align 1
  %call75.i413.1.2 = call zeroext i8 @mult(i8 zeroext %255, i8 zeroext %256) #2
  %scevgep110.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %241, i64 0, i64 0, i64 1
  store i8 %call75.i413.1.2, i8* %scevgep110.1.2, align 1
  %scevgep107.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %240, i64 0, i64 0, i64 1
  %257 = load i8, i8* %scevgep107.1.2, align 1
  %conv84.i422.1.2 = zext i8 %257 to i32
  %scevgep111.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %241, i64 0, i64 0, i64 1
  %258 = load i8, i8* %scevgep111.1.2, align 1
  %conv89.i427.1.2 = zext i8 %258 to i32
  %xor90.i428.1.2 = xor i32 %conv84.i422.1.2, %conv89.i427.1.2
  %conv91.i429.1.2 = trunc i32 %xor90.i428.1.2 to i8
  %scevgep114.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %242, i64 0, i64 0, i64 1
  store i8 %conv91.i429.1.2, i8* %scevgep114.1.2, align 1
  %259 = load i8, i8* %arraydecay10, align 1
  %260 = load i8, i8* %arraydecay11, align 1
  %call111.i446 = call zeroext i8 @mult(i8 zeroext %259, i8 zeroext %260) #2
  store i8 %call111.i446, i8* %arraydecay12, align 1
  %scevgep86.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 1
  %261 = load i8, i8* %scevgep86.1, align 1
  %conv126.i458.1 = zext i8 %261 to i32
  %262 = load i8, i8* %arraydecay12, align 1
  %conv129.i461.1 = zext i8 %262 to i32
  %xor130.i462.1 = xor i32 %conv129.i461.1, %conv126.i458.1
  %conv131.i463.1 = trunc i32 %xor130.i462.1 to i8
  store i8 %conv131.i463.1, i8* %arraydecay12, align 1
  %scevgep86.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 0, i64 2
  %263 = load i8, i8* %scevgep86.2, align 1
  %conv126.i458.2 = zext i8 %263 to i32
  %264 = load i8, i8* %arraydecay12, align 1
  %conv129.i461.2 = zext i8 %264 to i32
  %xor130.i462.2 = xor i32 %conv129.i461.2, %conv126.i458.2
  %conv131.i463.2 = trunc i32 %xor130.i462.2 to i8
  store i8 %conv131.i463.2, i8* %arraydecay12, align 1
  %scevgep85 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %z.i, i64 0, i64 1, i64 0
  %265 = bitcast i8* %scevgep85 to [3 x [3 x i8]]*
  %arrayidx108.i443.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %266 = load i8, i8* %arrayidx108.i443.1, align 1
  %arrayidx110.i445.1 = getelementptr inbounds i8, i8* %arraydecay11, i64 1
  %267 = load i8, i8* %arrayidx110.i445.1, align 1
  %call111.i446.1 = call zeroext i8 @mult(i8 zeroext %266, i8 zeroext %267) #2
  %arrayidx113.i448.1 = getelementptr inbounds i8, i8* %arraydecay12, i64 1
  store i8 %call111.i446.1, i8* %arrayidx113.i448.1, align 1
  %arrayidx128.i460.1 = getelementptr inbounds i8, i8* %arraydecay12, i64 1
  %scevgep86.1295 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %265, i64 0, i64 0, i64 0
  %268 = load i8, i8* %scevgep86.1295, align 1
  %conv126.i458.1296 = zext i8 %268 to i32
  %269 = load i8, i8* %arrayidx128.i460.1, align 1
  %conv129.i461.1297 = zext i8 %269 to i32
  %xor130.i462.1298 = xor i32 %conv129.i461.1297, %conv126.i458.1296
  %conv131.i463.1299 = trunc i32 %xor130.i462.1298 to i8
  store i8 %conv131.i463.1299, i8* %arrayidx128.i460.1, align 1
  %scevgep86.2.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %265, i64 0, i64 0, i64 2
  %270 = load i8, i8* %scevgep86.2.1, align 1
  %conv126.i458.2.1 = zext i8 %270 to i32
  %271 = load i8, i8* %arrayidx128.i460.1, align 1
  %conv129.i461.2.1 = zext i8 %271 to i32
  %xor130.i462.2.1 = xor i32 %conv129.i461.2.1, %conv126.i458.2.1
  %conv131.i463.2.1 = trunc i32 %xor130.i462.2.1 to i8
  store i8 %conv131.i463.2.1, i8* %arrayidx128.i460.1, align 1
  %scevgep85.1 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %265, i64 0, i64 1, i64 0
  %272 = bitcast i8* %scevgep85.1 to [3 x [3 x i8]]*
  %arrayidx108.i443.2 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  %273 = load i8, i8* %arrayidx108.i443.2, align 1
  %arrayidx110.i445.2 = getelementptr inbounds i8, i8* %arraydecay11, i64 2
  %274 = load i8, i8* %arrayidx110.i445.2, align 1
  %call111.i446.2 = call zeroext i8 @mult(i8 zeroext %273, i8 zeroext %274) #2
  %arrayidx113.i448.2 = getelementptr inbounds i8, i8* %arraydecay12, i64 2
  store i8 %call111.i446.2, i8* %arrayidx113.i448.2, align 1
  %arrayidx128.i460.2 = getelementptr inbounds i8, i8* %arraydecay12, i64 2
  %scevgep86.2304 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %272, i64 0, i64 0, i64 0
  %275 = load i8, i8* %scevgep86.2304, align 1
  %conv126.i458.2305 = zext i8 %275 to i32
  %276 = load i8, i8* %arrayidx128.i460.2, align 1
  %conv129.i461.2306 = zext i8 %276 to i32
  %xor130.i462.2307 = xor i32 %conv129.i461.2306, %conv126.i458.2305
  %conv131.i463.2308 = trunc i32 %xor130.i462.2307 to i8
  store i8 %conv131.i463.2308, i8* %arrayidx128.i460.2, align 1
  %scevgep86.1.2 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %272, i64 0, i64 0, i64 1
  %277 = load i8, i8* %scevgep86.1.2, align 1
  %conv126.i458.1.2 = zext i8 %277 to i32
  %278 = load i8, i8* %arrayidx128.i460.2, align 1
  %conv129.i461.1.2 = zext i8 %278 to i32
  %xor130.i462.1.2 = xor i32 %conv129.i461.1.2, %conv126.i458.1.2
  %conv131.i463.1.2 = trunc i32 %xor130.i462.1.2 to i8
  store i8 %conv131.i463.1.2, i8* %arrayidx128.i460.2, align 1
  %call139.i469 = call zeroext i8 @mult(i8 zeroext %call.i316, i8 zeroext %call1.i317) #2
  %conv140.i470 = zext i8 %call139.i469 to i32
  %scevgep76 = getelementptr [3 x i8], [3 x i8]* %e7, i64 0, i64 0
  %279 = load i8, i8* %scevgep76, align 1
  %scevgep76.1 = getelementptr [3 x i8], [3 x i8]* %e7, i64 0, i64 1
  %280 = load i8, i8* %scevgep76.1, align 1
  %conv.i.i172.i477.1 = zext i8 %280 to i32
  %conv1.i.i173.i478.1 = zext i8 %279 to i32
  %xor.i.i174.i479.1 = xor i32 %conv1.i.i173.i478.1, %conv.i.i172.i477.1
  %conv2.i.i175.i480.1 = trunc i32 %xor.i.i174.i479.1 to i8
  %scevgep76.2 = getelementptr [3 x i8], [3 x i8]* %e7, i64 0, i64 2
  %281 = load i8, i8* %scevgep76.2, align 1
  %conv.i.i172.i477.2 = zext i8 %281 to i32
  %conv1.i.i173.i478.2 = zext i8 %conv2.i.i175.i480.1 to i32
  %xor.i.i174.i479.2 = xor i32 %conv1.i.i173.i478.2, %conv.i.i172.i477.2
  %conv2.i.i175.i480.2 = trunc i32 %xor.i.i174.i479.2 to i8
  %conv142.i483 = zext i8 %conv2.i.i175.i480.2 to i32
  %cmp143.i484 = icmp eq i32 %conv140.i470, %conv142.i483
  call void @assert(i1 zeroext %cmp143.i484) #2
  %scevgep71 = getelementptr [3 x i8], [3 x i8]* %e3, i64 0, i64 0
  %282 = load i8, i8* %scevgep71, align 1
  %call.i586 = call zeroext i8 @mult(i8 zeroext 4, i8 zeroext %282) #2
  %conv.i587 = zext i8 %call.i586 to i32
  %call.i.i588 = call zeroext i8 @mult(i8 zeroext %282, i8 zeroext %282) #2
  %call2.i589 = call zeroext i8 @mult(i8 zeroext 7, i8 zeroext %call.i.i588) #2
  %conv3.i590 = zext i8 %call2.i589 to i32
  %xor.i591 = xor i32 %conv.i587, %conv3.i590
  %call.i.i.i = call zeroext i8 @mult(i8 zeroext %282, i8 zeroext %282) #2
  %call.i3.i.i592 = call zeroext i8 @mult(i8 zeroext %call.i.i.i, i8 zeroext %call.i.i.i) #2
  %call5.i593 = call zeroext i8 @mult(i8 zeroext 13, i8 zeroext %call.i3.i.i592) #2
  %conv6.i594 = zext i8 %call5.i593 to i32
  %xor7.i595 = xor i32 %xor.i591, %conv6.i594
  %call.i.i.i.i596 = call zeroext i8 @mult(i8 zeroext %282, i8 zeroext %282) #2
  %call.i3.i.i.i597 = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i596, i8 zeroext %call.i.i.i.i596) #2
  %call.i.i17.i598 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i597, i8 zeroext %call.i3.i.i.i597) #2
  %call9.i599 = call zeroext i8 @mult(i8 zeroext 10, i8 zeroext %call.i.i17.i598) #2
  %conv10.i600 = zext i8 %call9.i599 to i32
  %xor11.i601 = xor i32 %xor7.i595, %conv10.i600
  %conv12.i602 = trunc i32 %xor11.i601 to i8
  %scevgep72 = getelementptr [3 x i8], [3 x i8]* %l3, i64 0, i64 0
  store i8 %conv12.i602, i8* %scevgep72, align 1
  %scevgep71.1 = getelementptr [3 x i8], [3 x i8]* %e3, i64 0, i64 1
  %283 = load i8, i8* %scevgep71.1, align 1
  %call.i603 = call zeroext i8 @mult(i8 zeroext 4, i8 zeroext %283) #2
  %conv.i604 = zext i8 %call.i603 to i32
  %call.i.i605 = call zeroext i8 @mult(i8 zeroext %283, i8 zeroext %283) #2
  %call2.i606 = call zeroext i8 @mult(i8 zeroext 7, i8 zeroext %call.i.i605) #2
  %conv3.i607 = zext i8 %call2.i606 to i32
  %xor.i608 = xor i32 %conv.i604, %conv3.i607
  %call.i.i.i609 = call zeroext i8 @mult(i8 zeroext %283, i8 zeroext %283) #2
  %call.i3.i.i610 = call zeroext i8 @mult(i8 zeroext %call.i.i.i609, i8 zeroext %call.i.i.i609) #2
  %call5.i611 = call zeroext i8 @mult(i8 zeroext 13, i8 zeroext %call.i3.i.i610) #2
  %conv6.i612 = zext i8 %call5.i611 to i32
  %xor7.i613 = xor i32 %xor.i608, %conv6.i612
  %call.i.i.i.i614 = call zeroext i8 @mult(i8 zeroext %283, i8 zeroext %283) #2
  %call.i3.i.i.i615 = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i614, i8 zeroext %call.i.i.i.i614) #2
  %call.i.i17.i616 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i615, i8 zeroext %call.i3.i.i.i615) #2
  %call9.i617 = call zeroext i8 @mult(i8 zeroext 10, i8 zeroext %call.i.i17.i616) #2
  %conv10.i618 = zext i8 %call9.i617 to i32
  %xor11.i619 = xor i32 %xor7.i613, %conv10.i618
  %conv12.i620 = trunc i32 %xor11.i619 to i8
  %scevgep72.1 = getelementptr [3 x i8], [3 x i8]* %l3, i64 0, i64 1
  store i8 %conv12.i620, i8* %scevgep72.1, align 1
  %scevgep71.2 = getelementptr [3 x i8], [3 x i8]* %e3, i64 0, i64 2
  %284 = load i8, i8* %scevgep71.2, align 1
  %call.i621 = call zeroext i8 @mult(i8 zeroext 4, i8 zeroext %284) #2
  %conv.i622 = zext i8 %call.i621 to i32
  %call.i.i623 = call zeroext i8 @mult(i8 zeroext %284, i8 zeroext %284) #2
  %call2.i624 = call zeroext i8 @mult(i8 zeroext 7, i8 zeroext %call.i.i623) #2
  %conv3.i625 = zext i8 %call2.i624 to i32
  %xor.i626 = xor i32 %conv.i622, %conv3.i625
  %call.i.i.i627 = call zeroext i8 @mult(i8 zeroext %284, i8 zeroext %284) #2
  %call.i3.i.i628 = call zeroext i8 @mult(i8 zeroext %call.i.i.i627, i8 zeroext %call.i.i.i627) #2
  %call5.i629 = call zeroext i8 @mult(i8 zeroext 13, i8 zeroext %call.i3.i.i628) #2
  %conv6.i630 = zext i8 %call5.i629 to i32
  %xor7.i631 = xor i32 %xor.i626, %conv6.i630
  %call.i.i.i.i632 = call zeroext i8 @mult(i8 zeroext %284, i8 zeroext %284) #2
  %call.i3.i.i.i633 = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i632, i8 zeroext %call.i.i.i.i632) #2
  %call.i.i17.i634 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i633, i8 zeroext %call.i3.i.i.i633) #2
  %call9.i635 = call zeroext i8 @mult(i8 zeroext 10, i8 zeroext %call.i.i17.i634) #2
  %conv10.i636 = zext i8 %call9.i635 to i32
  %xor11.i637 = xor i32 %xor7.i631, %conv10.i636
  %conv12.i638 = trunc i32 %xor11.i637 to i8
  %scevgep72.2 = getelementptr [3 x i8], [3 x i8]* %l3, i64 0, i64 2
  store i8 %conv12.i638, i8* %scevgep72.2, align 1
  %scevgep66 = getelementptr [3 x i8], [3 x i8]* %e5, i64 0, i64 0
  %285 = load i8, i8* %scevgep66, align 1
  %call.i639 = call zeroext i8 @mult(i8 zeroext 6, i8 zeroext %285) #2
  %conv.i640 = zext i8 %call.i639 to i32
  %call.i.i641 = call zeroext i8 @mult(i8 zeroext %285, i8 zeroext %285) #2
  %call2.i642 = call zeroext i8 @mult(i8 zeroext 11, i8 zeroext %call.i.i641) #2
  %conv3.i643 = zext i8 %call2.i642 to i32
  %xor.i644 = xor i32 %conv.i640, %conv3.i643
  %conv4.i = trunc i32 %xor.i644 to i8
  %scevgep67 = getelementptr [3 x i8], [3 x i8]* %l5, i64 0, i64 0
  store i8 %conv4.i, i8* %scevgep67, align 1
  %scevgep66.1 = getelementptr [3 x i8], [3 x i8]* %e5, i64 0, i64 1
  %286 = load i8, i8* %scevgep66.1, align 1
  %call.i645 = call zeroext i8 @mult(i8 zeroext 6, i8 zeroext %286) #2
  %conv.i646 = zext i8 %call.i645 to i32
  %call.i.i647 = call zeroext i8 @mult(i8 zeroext %286, i8 zeroext %286) #2
  %call2.i648 = call zeroext i8 @mult(i8 zeroext 11, i8 zeroext %call.i.i647) #2
  %conv3.i649 = zext i8 %call2.i648 to i32
  %xor.i650 = xor i32 %conv.i646, %conv3.i649
  %conv4.i651 = trunc i32 %xor.i650 to i8
  %scevgep67.1 = getelementptr [3 x i8], [3 x i8]* %l5, i64 0, i64 1
  store i8 %conv4.i651, i8* %scevgep67.1, align 1
  %scevgep66.2 = getelementptr [3 x i8], [3 x i8]* %e5, i64 0, i64 2
  %287 = load i8, i8* %scevgep66.2, align 1
  %call.i652 = call zeroext i8 @mult(i8 zeroext 6, i8 zeroext %287) #2
  %conv.i653 = zext i8 %call.i652 to i32
  %call.i.i654 = call zeroext i8 @mult(i8 zeroext %287, i8 zeroext %287) #2
  %call2.i655 = call zeroext i8 @mult(i8 zeroext 11, i8 zeroext %call.i.i654) #2
  %conv3.i656 = zext i8 %call2.i655 to i32
  %xor.i657 = xor i32 %conv.i653, %conv3.i656
  %conv4.i658 = trunc i32 %xor.i657 to i8
  %scevgep67.2 = getelementptr [3 x i8], [3 x i8]* %l5, i64 0, i64 2
  store i8 %conv4.i658, i8* %scevgep67.2, align 1
  %scevgep61 = getelementptr [3 x i8], [3 x i8]* %e7, i64 0, i64 0
  %288 = load i8, i8* %scevgep61, align 1
  %call.i659 = call zeroext i8 @mult(i8 zeroext 8, i8 zeroext %288) #2
  %conv.i660 = zext i8 %call.i659 to i32
  %call.i.i661 = call zeroext i8 @mult(i8 zeroext %288, i8 zeroext %288) #2
  %call2.i662 = call zeroext i8 @mult(i8 zeroext 15, i8 zeroext %call.i.i661) #2
  %conv3.i663 = zext i8 %call2.i662 to i32
  %xor.i664 = xor i32 %conv.i660, %conv3.i663
  %call.i.i.i665 = call zeroext i8 @mult(i8 zeroext %288, i8 zeroext %288) #2
  %call.i3.i.i666 = call zeroext i8 @mult(i8 zeroext %call.i.i.i665, i8 zeroext %call.i.i.i665) #2
  %call5.i667 = call zeroext i8 @mult(i8 zeroext 14, i8 zeroext %call.i3.i.i666) #2
  %conv6.i668 = zext i8 %call5.i667 to i32
  %xor7.i669 = xor i32 %xor.i664, %conv6.i668
  %call.i.i.i.i670 = call zeroext i8 @mult(i8 zeroext %288, i8 zeroext %288) #2
  %call.i3.i.i.i671 = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i670, i8 zeroext %call.i.i.i.i670) #2
  %call.i.i17.i672 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i671, i8 zeroext %call.i3.i.i.i671) #2
  %call9.i673 = call zeroext i8 @mult(i8 zeroext 12, i8 zeroext %call.i.i17.i672) #2
  %conv10.i674 = zext i8 %call9.i673 to i32
  %xor11.i675 = xor i32 %xor7.i669, %conv10.i674
  %conv12.i676 = trunc i32 %xor11.i675 to i8
  %scevgep62 = getelementptr [3 x i8], [3 x i8]* %l7, i64 0, i64 0
  store i8 %conv12.i676, i8* %scevgep62, align 1
  %scevgep61.1 = getelementptr [3 x i8], [3 x i8]* %e7, i64 0, i64 1
  %289 = load i8, i8* %scevgep61.1, align 1
  %call.i677 = call zeroext i8 @mult(i8 zeroext 8, i8 zeroext %289) #2
  %conv.i678 = zext i8 %call.i677 to i32
  %call.i.i679 = call zeroext i8 @mult(i8 zeroext %289, i8 zeroext %289) #2
  %call2.i680 = call zeroext i8 @mult(i8 zeroext 15, i8 zeroext %call.i.i679) #2
  %conv3.i681 = zext i8 %call2.i680 to i32
  %xor.i682 = xor i32 %conv.i678, %conv3.i681
  %call.i.i.i683 = call zeroext i8 @mult(i8 zeroext %289, i8 zeroext %289) #2
  %call.i3.i.i684 = call zeroext i8 @mult(i8 zeroext %call.i.i.i683, i8 zeroext %call.i.i.i683) #2
  %call5.i685 = call zeroext i8 @mult(i8 zeroext 14, i8 zeroext %call.i3.i.i684) #2
  %conv6.i686 = zext i8 %call5.i685 to i32
  %xor7.i687 = xor i32 %xor.i682, %conv6.i686
  %call.i.i.i.i688 = call zeroext i8 @mult(i8 zeroext %289, i8 zeroext %289) #2
  %call.i3.i.i.i689 = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i688, i8 zeroext %call.i.i.i.i688) #2
  %call.i.i17.i690 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i689, i8 zeroext %call.i3.i.i.i689) #2
  %call9.i691 = call zeroext i8 @mult(i8 zeroext 12, i8 zeroext %call.i.i17.i690) #2
  %conv10.i692 = zext i8 %call9.i691 to i32
  %xor11.i693 = xor i32 %xor7.i687, %conv10.i692
  %conv12.i694 = trunc i32 %xor11.i693 to i8
  %scevgep62.1 = getelementptr [3 x i8], [3 x i8]* %l7, i64 0, i64 1
  store i8 %conv12.i694, i8* %scevgep62.1, align 1
  %scevgep61.2 = getelementptr [3 x i8], [3 x i8]* %e7, i64 0, i64 2
  %290 = load i8, i8* %scevgep61.2, align 1
  %call.i518 = call zeroext i8 @mult(i8 zeroext 8, i8 zeroext %290) #2
  %conv.i519 = zext i8 %call.i518 to i32
  %call.i.i = call zeroext i8 @mult(i8 zeroext %290, i8 zeroext %290) #2
  %call2.i = call zeroext i8 @mult(i8 zeroext 15, i8 zeroext %call.i.i) #2
  %conv3.i520 = zext i8 %call2.i to i32
  %xor.i = xor i32 %conv.i519, %conv3.i520
  %call.i.i.i521 = call zeroext i8 @mult(i8 zeroext %290, i8 zeroext %290) #2
  %call.i3.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i521, i8 zeroext %call.i.i.i521) #2
  %call5.i = call zeroext i8 @mult(i8 zeroext 14, i8 zeroext %call.i3.i.i) #2
  %conv6.i = zext i8 %call5.i to i32
  %xor7.i = xor i32 %xor.i, %conv6.i
  %call.i.i.i.i522 = call zeroext i8 @mult(i8 zeroext %290, i8 zeroext %290) #2
  %call.i3.i.i.i523 = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i522, i8 zeroext %call.i.i.i.i522) #2
  %call.i.i17.i = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i523, i8 zeroext %call.i3.i.i.i523) #2
  %call9.i = call zeroext i8 @mult(i8 zeroext 12, i8 zeroext %call.i.i17.i) #2
  %conv10.i = zext i8 %call9.i to i32
  %xor11.i = xor i32 %xor7.i, %conv10.i
  %conv12.i = trunc i32 %xor11.i to i8
  %scevgep62.2 = getelementptr [3 x i8], [3 x i8]* %l7, i64 0, i64 2
  store i8 %conv12.i, i8* %scevgep62.2, align 1
  %scevgep53 = getelementptr [3 x i8], [3 x i8]* %l1, i64 0, i64 0
  %291 = load i8, i8* %scevgep53, align 1
  %conv21 = zext i8 %291 to i32
  %scevgep54 = getelementptr [3 x i8], [3 x i8]* %l3, i64 0, i64 0
  %292 = load i8, i8* %scevgep54, align 1
  %conv24 = zext i8 %292 to i32
  %xor = xor i32 %conv21, %conv24
  %scevgep55 = getelementptr [3 x i8], [3 x i8]* %l5, i64 0, i64 0
  %293 = load i8, i8* %scevgep55, align 1
  %conv27 = zext i8 %293 to i32
  %xor28 = xor i32 %xor, %conv27
  %scevgep56 = getelementptr [3 x i8], [3 x i8]* %l7, i64 0, i64 0
  %294 = load i8, i8* %scevgep56, align 1
  %conv31 = zext i8 %294 to i32
  %xor32 = xor i32 %xor28, %conv31
  %conv33 = trunc i32 %xor32 to i8
  store i8 %conv33, i8* %y, align 1
  %scevgep53.1 = getelementptr [3 x i8], [3 x i8]* %l1, i64 0, i64 1
  %295 = load i8, i8* %scevgep53.1, align 1
  %conv21.1 = zext i8 %295 to i32
  %scevgep54.1 = getelementptr [3 x i8], [3 x i8]* %l3, i64 0, i64 1
  %296 = load i8, i8* %scevgep54.1, align 1
  %conv24.1 = zext i8 %296 to i32
  %xor.1 = xor i32 %conv21.1, %conv24.1
  %scevgep55.1 = getelementptr [3 x i8], [3 x i8]* %l5, i64 0, i64 1
  %297 = load i8, i8* %scevgep55.1, align 1
  %conv27.1 = zext i8 %297 to i32
  %xor28.1 = xor i32 %xor.1, %conv27.1
  %scevgep56.1 = getelementptr [3 x i8], [3 x i8]* %l7, i64 0, i64 1
  %298 = load i8, i8* %scevgep56.1, align 1
  %conv31.1 = zext i8 %298 to i32
  %xor32.1 = xor i32 %xor28.1, %conv31.1
  %conv33.1 = trunc i32 %xor32.1 to i8
  %scevgep57.1 = getelementptr i8, i8* %y, i64 1
  store i8 %conv33.1, i8* %scevgep57.1, align 1
  %scevgep53.2 = getelementptr [3 x i8], [3 x i8]* %l1, i64 0, i64 2
  %299 = load i8, i8* %scevgep53.2, align 1
  %conv21.2 = zext i8 %299 to i32
  %scevgep54.2 = getelementptr [3 x i8], [3 x i8]* %l3, i64 0, i64 2
  %300 = load i8, i8* %scevgep54.2, align 1
  %conv24.2 = zext i8 %300 to i32
  %xor.2 = xor i32 %conv21.2, %conv24.2
  %scevgep55.2 = getelementptr [3 x i8], [3 x i8]* %l5, i64 0, i64 2
  %301 = load i8, i8* %scevgep55.2, align 1
  %conv27.2 = zext i8 %301 to i32
  %xor28.2 = xor i32 %xor.2, %conv27.2
  %scevgep56.2 = getelementptr [3 x i8], [3 x i8]* %l7, i64 0, i64 2
  %302 = load i8, i8* %scevgep56.2, align 1
  %conv31.2 = zext i8 %302 to i32
  %xor32.2 = xor i32 %xor28.2, %conv31.2
  %conv33.2 = trunc i32 %xor32.2 to i8
  %scevgep57.2 = getelementptr i8, i8* %y, i64 2
  store i8 %conv33.2, i8* %scevgep57.2, align 1
  %303 = load i8, i8* %y, align 1
  %conv37 = zext i8 %303 to i32
  %xor38 = xor i32 %conv37, 1
  %conv39 = trunc i32 %xor38 to i8
  store i8 %conv39, i8* %y, align 1
  %call.i.i531 = call zeroext i8 @mult(i8 zeroext 2, i8 zeroext %call) #2
  %conv.i.i532 = zext i8 %call.i.i531 to i32
  %call.i.i.i533 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call) #2
  %call2.i.i = call zeroext i8 @mult(i8 zeroext 3, i8 zeroext %call.i.i.i533) #2
  %conv3.i.i = zext i8 %call2.i.i to i32
  %xor.i.i534 = xor i32 %conv.i.i532, %conv3.i.i
  %call.i.i.i.i = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call) #2
  %call.i3.i.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i, i8 zeroext %call.i.i.i.i) #2
  %call5.i.i = call zeroext i8 @mult(i8 zeroext 5, i8 zeroext %call.i3.i.i.i) #2
  %conv6.i.i = zext i8 %call5.i.i to i32
  %xor7.i.i = xor i32 %xor.i.i534, %conv6.i.i
  %call.i.i.i.i.i = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call) #2
  %call.i3.i.i.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i.i, i8 zeroext %call.i.i.i.i.i) #2
  %call.i.i17.i.i = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i.i, i8 zeroext %call.i3.i.i.i.i) #2
  %call9.i.i = call zeroext i8 @mult(i8 zeroext 9, i8 zeroext %call.i.i17.i.i) #2
  %conv10.i.i = zext i8 %call9.i.i to i32
  %xor11.i.i = xor i32 %xor7.i.i, %conv10.i.i
  %conv12.i.i = trunc i32 %xor11.i.i to i8
  %conv.i535 = zext i8 %conv12.i.i to i32
  %xor.i536 = xor i32 1, %conv.i535
  %call.i.i16.i = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call) #2
  %call1.i.i = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call.i.i16.i) #2
  %call.i27.i = call zeroext i8 @mult(i8 zeroext 4, i8 zeroext %call1.i.i) #2
  %conv.i28.i = zext i8 %call.i27.i to i32
  %call.i.i29.i = call zeroext i8 @mult(i8 zeroext %call1.i.i, i8 zeroext %call1.i.i) #2
  %call2.i30.i = call zeroext i8 @mult(i8 zeroext 7, i8 zeroext %call.i.i29.i) #2
  %conv3.i31.i = zext i8 %call2.i30.i to i32
  %xor.i32.i = xor i32 %conv.i28.i, %conv3.i31.i
  %call.i.i.i33.i = call zeroext i8 @mult(i8 zeroext %call1.i.i, i8 zeroext %call1.i.i) #2
  %call.i3.i.i34.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i33.i, i8 zeroext %call.i.i.i33.i) #2
  %call5.i35.i = call zeroext i8 @mult(i8 zeroext 13, i8 zeroext %call.i3.i.i34.i) #2
  %conv6.i36.i = zext i8 %call5.i35.i to i32
  %xor7.i37.i = xor i32 %xor.i32.i, %conv6.i36.i
  %call.i.i.i.i38.i = call zeroext i8 @mult(i8 zeroext %call1.i.i, i8 zeroext %call1.i.i) #2
  %call.i3.i.i.i39.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i38.i, i8 zeroext %call.i.i.i.i38.i) #2
  %call.i.i17.i40.i = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i39.i, i8 zeroext %call.i3.i.i.i39.i) #2
  %call9.i41.i = call zeroext i8 @mult(i8 zeroext 10, i8 zeroext %call.i.i17.i40.i) #2
  %conv10.i42.i = zext i8 %call9.i41.i to i32
  %xor11.i43.i = xor i32 %xor7.i37.i, %conv10.i42.i
  %conv12.i44.i = trunc i32 %xor11.i43.i to i8
  %conv3.i537 = zext i8 %conv12.i44.i to i32
  %xor4.i = xor i32 %xor.i536, %conv3.i537
  %call.i.i.i49.i = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call) #2
  %call.i3.i.i50.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i49.i, i8 zeroext %call.i.i.i49.i) #2
  %call1.i51.i = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call.i3.i.i50.i) #2
  %call.i54.i = call zeroext i8 @mult(i8 zeroext 6, i8 zeroext %call1.i51.i) #2
  %conv.i55.i = zext i8 %call.i54.i to i32
  %call.i.i56.i = call zeroext i8 @mult(i8 zeroext %call1.i51.i, i8 zeroext %call1.i51.i) #2
  %call2.i57.i = call zeroext i8 @mult(i8 zeroext 11, i8 zeroext %call.i.i56.i) #2
  %conv3.i58.i = zext i8 %call2.i57.i to i32
  %xor.i59.i = xor i32 %conv.i55.i, %conv3.i58.i
  %conv4.i.i = trunc i32 %xor.i59.i to i8
  %conv7.i538 = zext i8 %conv4.i.i to i32
  %xor8.i = xor i32 %xor4.i, %conv7.i538
  %call.i.i.i64.i = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call) #2
  %call1.i.i.i = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call.i.i.i64.i) #2
  %call.i.i5.i.i = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call) #2
  %call.i3.i.i65.i = call zeroext i8 @mult(i8 zeroext %call.i.i5.i.i, i8 zeroext %call.i.i5.i.i) #2
  %call2.i66.i = call zeroext i8 @mult(i8 zeroext %call1.i.i.i, i8 zeroext %call.i3.i.i65.i) #2
  %call.i77.i = call zeroext i8 @mult(i8 zeroext 8, i8 zeroext %call2.i66.i) #2
  %conv.i78.i = zext i8 %call.i77.i to i32
  %call.i.i79.i = call zeroext i8 @mult(i8 zeroext %call2.i66.i, i8 zeroext %call2.i66.i) #2
  %call2.i80.i = call zeroext i8 @mult(i8 zeroext 15, i8 zeroext %call.i.i79.i) #2
  %conv3.i81.i = zext i8 %call2.i80.i to i32
  %xor.i82.i = xor i32 %conv.i78.i, %conv3.i81.i
  %call.i.i.i83.i = call zeroext i8 @mult(i8 zeroext %call2.i66.i, i8 zeroext %call2.i66.i) #2
  %call.i3.i.i84.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i83.i, i8 zeroext %call.i.i.i83.i) #2
  %call5.i85.i = call zeroext i8 @mult(i8 zeroext 14, i8 zeroext %call.i3.i.i84.i) #2
  %conv6.i86.i = zext i8 %call5.i85.i to i32
  %xor7.i87.i = xor i32 %xor.i82.i, %conv6.i86.i
  %call.i.i.i.i88.i = call zeroext i8 @mult(i8 zeroext %call2.i66.i, i8 zeroext %call2.i66.i) #2
  %call.i3.i.i.i89.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i88.i, i8 zeroext %call.i.i.i.i88.i) #2
  %call.i.i17.i90.i = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i89.i, i8 zeroext %call.i3.i.i.i89.i) #2
  %call9.i91.i = call zeroext i8 @mult(i8 zeroext 12, i8 zeroext %call.i.i17.i90.i) #2
  %conv10.i92.i = zext i8 %call9.i91.i to i32
  %xor11.i93.i = xor i32 %xor7.i87.i, %conv10.i92.i
  %conv12.i94.i = trunc i32 %xor11.i93.i to i8
  %conv11.i = zext i8 %conv12.i94.i to i32
  %xor12.i = xor i32 %xor8.i, %conv11.i
  %conv13.i = trunc i32 %xor12.i to i8
  %conv41 = zext i8 %conv13.i to i32
  %304 = load i8, i8* %y, align 1
  %scevgep.1 = getelementptr i8, i8* %y, i64 1
  %305 = load i8, i8* %scevgep.1, align 1
  %conv.i.i549.1 = zext i8 %305 to i32
  %conv1.i.i550.1 = zext i8 %304 to i32
  %xor.i.i551.1 = xor i32 %conv1.i.i550.1, %conv.i.i549.1
  %conv2.i.i552.1 = trunc i32 %xor.i.i551.1 to i8
  %scevgep.2 = getelementptr i8, i8* %y, i64 2
  %306 = load i8, i8* %scevgep.2, align 1
  %conv.i.i549.2 = zext i8 %306 to i32
  %conv1.i.i550.2 = zext i8 %conv2.i.i552.1 to i32
  %xor.i.i551.2 = xor i32 %conv1.i.i550.2, %conv.i.i549.2
  %conv2.i.i552.2 = trunc i32 %xor.i.i551.2 to i8
  %conv43 = zext i8 %conv2.i.i552.2 to i32
  %cmp44 = icmp eq i32 %conv41, %conv43
  call void @assert(i1 zeroext %cmp44)
  ret void
}

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.1.0 (https://github.com/llvm/llvm-project.git 7e99bddfeaab2713a8bb6ca538da25b66e6efc59)"}
