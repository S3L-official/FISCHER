; ModuleID = '../examples/cassiers-tifs2020-present-sbox-noaffine.inline-4.ll'
source_filename = "../examples/cassiers-tifs2020-present-sbox-noaffine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 4, align 4
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
  %s = alloca [5 x [5 x i8]], align 16
  %p0 = alloca [5 x [5 x i8]], align 16
  %p1 = alloca [5 x [5 x i8]], align 16
  %z = alloca [5 x [5 x i8]], align 16
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
  %scevgep74.3 = getelementptr i8, i8* %a, i64 3
  %3 = load i8, i8* %scevgep74.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %scevgep74.4 = getelementptr i8, i8* %a, i64 4
  %4 = load i8, i8* %scevgep74.4, align 1
  %conv.i.i.4 = zext i8 %4 to i32
  %conv1.i.i.4 = zext i8 %conv2.i.i.3 to i32
  %xor.i.i.4 = xor i32 %conv1.i.i.4, %conv.i.i.4
  %conv2.i.i.4 = trunc i32 %xor.i.i.4 to i8
  %conv3 = zext i8 %conv2.i.i.4 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %5 = load i8, i8* %b, align 1
  %scevgep70.1 = getelementptr i8, i8* %b, i64 1
  %6 = load i8, i8* %scevgep70.1, align 1
  %conv.i.i155.1 = zext i8 %6 to i32
  %conv1.i.i156.1 = zext i8 %5 to i32
  %xor.i.i157.1 = xor i32 %conv1.i.i156.1, %conv.i.i155.1
  %conv2.i.i158.1 = trunc i32 %xor.i.i157.1 to i8
  %scevgep70.2 = getelementptr i8, i8* %b, i64 2
  %7 = load i8, i8* %scevgep70.2, align 1
  %conv.i.i155.2 = zext i8 %7 to i32
  %conv1.i.i156.2 = zext i8 %conv2.i.i158.1 to i32
  %xor.i.i157.2 = xor i32 %conv1.i.i156.2, %conv.i.i155.2
  %conv2.i.i158.2 = trunc i32 %xor.i.i157.2 to i8
  %scevgep70.3 = getelementptr i8, i8* %b, i64 3
  %8 = load i8, i8* %scevgep70.3, align 1
  %conv.i.i155.3 = zext i8 %8 to i32
  %conv1.i.i156.3 = zext i8 %conv2.i.i158.2 to i32
  %xor.i.i157.3 = xor i32 %conv1.i.i156.3, %conv.i.i155.3
  %conv2.i.i158.3 = trunc i32 %xor.i.i157.3 to i8
  %scevgep70.4 = getelementptr i8, i8* %b, i64 4
  %9 = load i8, i8* %scevgep70.4, align 1
  %conv.i.i155.4 = zext i8 %9 to i32
  %conv1.i.i156.4 = zext i8 %conv2.i.i158.3 to i32
  %xor.i.i157.4 = xor i32 %conv1.i.i156.4, %conv.i.i155.4
  %conv2.i.i158.4 = trunc i32 %xor.i.i157.4 to i8
  %conv7 = zext i8 %conv2.i.i158.4 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %scevgep54 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 0, i64 1
  %scevgep5455 = bitcast i8* %scevgep54 to [5 x [5 x i8]]*
  %scevgep61 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 1, i64 0
  %scevgep6162 = bitcast i8* %scevgep61 to [5 x [5 x i8]]*
  %call16 = call zeroext i8 (...) @rand()
  store i8 %call16, i8* %scevgep54, align 1
  %10 = load i8, i8* %scevgep54, align 1
  store i8 %10, i8* %scevgep61, align 1
  %scevgep59 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep5455, i64 0, i64 0, i64 1
  %11 = bitcast i8* %scevgep59 to [5 x [5 x i8]]*
  %scevgep66 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep6162, i64 0, i64 1, i64 0
  %12 = bitcast i8* %scevgep66 to [5 x [5 x i8]]*
  %call16.1224 = call zeroext i8 (...) @rand()
  store i8 %call16.1224, i8* %scevgep59, align 1
  %13 = load i8, i8* %scevgep59, align 1
  store i8 %13, i8* %scevgep66, align 1
  %scevgep59.1225 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %11, i64 0, i64 0, i64 1
  %14 = bitcast i8* %scevgep59.1225 to [5 x [5 x i8]]*
  %scevgep66.1226 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %12, i64 0, i64 1, i64 0
  %15 = bitcast i8* %scevgep66.1226 to [5 x [5 x i8]]*
  %call16.2228 = call zeroext i8 (...) @rand()
  store i8 %call16.2228, i8* %scevgep59.1225, align 1
  %16 = load i8, i8* %scevgep59.1225, align 1
  store i8 %16, i8* %scevgep66.1226, align 1
  %scevgep59.2229 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %14, i64 0, i64 0, i64 1
  %scevgep66.2230 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %15, i64 0, i64 1, i64 0
  %call16.3232 = call zeroext i8 (...) @rand()
  store i8 %call16.3232, i8* %scevgep59.2229, align 1
  %17 = load i8, i8* %scevgep59.2229, align 1
  store i8 %17, i8* %scevgep66.2230, align 1
  %scevgep57 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep5455, i64 0, i64 1, i64 1
  %18 = bitcast i8* %scevgep57 to [5 x [5 x i8]]*
  %scevgep64 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep6162, i64 0, i64 1, i64 1
  %19 = bitcast i8* %scevgep64 to [5 x [5 x i8]]*
  %call16.1 = call zeroext i8 (...) @rand()
  store i8 %call16.1, i8* %scevgep57, align 1
  %20 = load i8, i8* %scevgep57, align 1
  store i8 %20, i8* %scevgep64, align 1
  %scevgep59.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %18, i64 0, i64 0, i64 1
  %21 = bitcast i8* %scevgep59.1 to [5 x [5 x i8]]*
  %scevgep66.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %19, i64 0, i64 1, i64 0
  %22 = bitcast i8* %scevgep66.1 to [5 x [5 x i8]]*
  %call16.1.1 = call zeroext i8 (...) @rand()
  store i8 %call16.1.1, i8* %scevgep59.1, align 1
  %23 = load i8, i8* %scevgep59.1, align 1
  store i8 %23, i8* %scevgep66.1, align 1
  %scevgep59.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %21, i64 0, i64 0, i64 1
  %scevgep66.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %22, i64 0, i64 1, i64 0
  %call16.1.2 = call zeroext i8 (...) @rand()
  store i8 %call16.1.2, i8* %scevgep59.1.1, align 1
  %24 = load i8, i8* %scevgep59.1.1, align 1
  store i8 %24, i8* %scevgep66.1.1, align 1
  %scevgep57.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %18, i64 0, i64 1, i64 1
  %25 = bitcast i8* %scevgep57.1 to [5 x [5 x i8]]*
  %scevgep64.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %19, i64 0, i64 1, i64 1
  %26 = bitcast i8* %scevgep64.1 to [5 x [5 x i8]]*
  %call16.2 = call zeroext i8 (...) @rand()
  store i8 %call16.2, i8* %scevgep57.1, align 1
  %27 = load i8, i8* %scevgep57.1, align 1
  store i8 %27, i8* %scevgep64.1, align 1
  %scevgep59.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %25, i64 0, i64 0, i64 1
  %scevgep66.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %26, i64 0, i64 1, i64 0
  %call16.2.1 = call zeroext i8 (...) @rand()
  store i8 %call16.2.1, i8* %scevgep59.2, align 1
  %28 = load i8, i8* %scevgep59.2, align 1
  store i8 %28, i8* %scevgep66.2, align 1
  %scevgep57.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %25, i64 0, i64 1, i64 1
  %scevgep64.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %26, i64 0, i64 1, i64 1
  %call16.3 = call zeroext i8 (...) @rand()
  store i8 %call16.3, i8* %scevgep57.2, align 1
  %29 = load i8, i8* %scevgep57.2, align 1
  store i8 %29, i8* %scevgep64.2, align 1
  %scevgep31.1 = getelementptr i8, i8* %b, i64 1
  %30 = load i8, i8* %scevgep31.1, align 1
  %conv44.1 = zext i8 %30 to i32
  %scevgep34.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 0, i64 1
  %31 = load i8, i8* %scevgep34.1, align 1
  %conv49.1 = zext i8 %31 to i32
  %xor.1 = xor i32 %conv44.1, %conv49.1
  %conv50.1 = trunc i32 %xor.1 to i8
  %scevgep38.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s, i64 0, i64 0, i64 1
  store i8 %conv50.1, i8* %scevgep38.1, align 1
  %32 = load i8, i8* %a, align 1
  %conv57.1 = zext i8 %32 to i32
  %xor58.1 = xor i32 %conv57.1, 1
  %conv59.1 = trunc i32 %xor58.1 to i8
  %scevgep35.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 0, i64 1
  %33 = load i8, i8* %scevgep35.1, align 1
  %call64.1 = call zeroext i8 @mult(i8 zeroext %conv59.1, i8 zeroext %33)
  %scevgep42.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0, i64 0, i64 0, i64 1
  store i8 %call64.1, i8* %scevgep42.1, align 1
  %34 = load i8, i8* %a, align 1
  %scevgep39.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s, i64 0, i64 0, i64 1
  %35 = load i8, i8* %scevgep39.1, align 1
  %call75.1 = call zeroext i8 @mult(i8 zeroext %34, i8 zeroext %35)
  %scevgep46.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1, i64 0, i64 0, i64 1
  store i8 %call75.1, i8* %scevgep46.1, align 1
  %scevgep43.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0, i64 0, i64 0, i64 1
  %36 = load i8, i8* %scevgep43.1, align 1
  %conv84.1 = zext i8 %36 to i32
  %scevgep47.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1, i64 0, i64 0, i64 1
  %37 = load i8, i8* %scevgep47.1, align 1
  %conv89.1 = zext i8 %37 to i32
  %xor90.1 = xor i32 %conv84.1, %conv89.1
  %conv91.1 = trunc i32 %xor90.1 to i8
  %scevgep50.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 1
  store i8 %conv91.1, i8* %scevgep50.1, align 1
  %scevgep31.2 = getelementptr i8, i8* %b, i64 2
  %38 = load i8, i8* %scevgep31.2, align 1
  %conv44.2 = zext i8 %38 to i32
  %scevgep34.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 0, i64 2
  %39 = load i8, i8* %scevgep34.2, align 1
  %conv49.2 = zext i8 %39 to i32
  %xor.2 = xor i32 %conv44.2, %conv49.2
  %conv50.2 = trunc i32 %xor.2 to i8
  %scevgep38.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s, i64 0, i64 0, i64 2
  store i8 %conv50.2, i8* %scevgep38.2, align 1
  %40 = load i8, i8* %a, align 1
  %conv57.2 = zext i8 %40 to i32
  %xor58.2 = xor i32 %conv57.2, 1
  %conv59.2 = trunc i32 %xor58.2 to i8
  %scevgep35.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 0, i64 2
  %41 = load i8, i8* %scevgep35.2, align 1
  %call64.2 = call zeroext i8 @mult(i8 zeroext %conv59.2, i8 zeroext %41)
  %scevgep42.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0, i64 0, i64 0, i64 2
  store i8 %call64.2, i8* %scevgep42.2, align 1
  %42 = load i8, i8* %a, align 1
  %scevgep39.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s, i64 0, i64 0, i64 2
  %43 = load i8, i8* %scevgep39.2, align 1
  %call75.2 = call zeroext i8 @mult(i8 zeroext %42, i8 zeroext %43)
  %scevgep46.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1, i64 0, i64 0, i64 2
  store i8 %call75.2, i8* %scevgep46.2, align 1
  %scevgep43.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0, i64 0, i64 0, i64 2
  %44 = load i8, i8* %scevgep43.2, align 1
  %conv84.2 = zext i8 %44 to i32
  %scevgep47.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1, i64 0, i64 0, i64 2
  %45 = load i8, i8* %scevgep47.2, align 1
  %conv89.2 = zext i8 %45 to i32
  %xor90.2 = xor i32 %conv84.2, %conv89.2
  %conv91.2 = trunc i32 %xor90.2 to i8
  %scevgep50.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 2
  store i8 %conv91.2, i8* %scevgep50.2, align 1
  %scevgep31.3 = getelementptr i8, i8* %b, i64 3
  %46 = load i8, i8* %scevgep31.3, align 1
  %conv44.3 = zext i8 %46 to i32
  %scevgep34.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 0, i64 3
  %47 = load i8, i8* %scevgep34.3, align 1
  %conv49.3 = zext i8 %47 to i32
  %xor.3 = xor i32 %conv44.3, %conv49.3
  %conv50.3 = trunc i32 %xor.3 to i8
  %scevgep38.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s, i64 0, i64 0, i64 3
  store i8 %conv50.3, i8* %scevgep38.3, align 1
  %48 = load i8, i8* %a, align 1
  %conv57.3 = zext i8 %48 to i32
  %xor58.3 = xor i32 %conv57.3, 1
  %conv59.3 = trunc i32 %xor58.3 to i8
  %scevgep35.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 0, i64 3
  %49 = load i8, i8* %scevgep35.3, align 1
  %call64.3 = call zeroext i8 @mult(i8 zeroext %conv59.3, i8 zeroext %49)
  %scevgep42.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0, i64 0, i64 0, i64 3
  store i8 %call64.3, i8* %scevgep42.3, align 1
  %50 = load i8, i8* %a, align 1
  %scevgep39.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s, i64 0, i64 0, i64 3
  %51 = load i8, i8* %scevgep39.3, align 1
  %call75.3 = call zeroext i8 @mult(i8 zeroext %50, i8 zeroext %51)
  %scevgep46.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1, i64 0, i64 0, i64 3
  store i8 %call75.3, i8* %scevgep46.3, align 1
  %scevgep43.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0, i64 0, i64 0, i64 3
  %52 = load i8, i8* %scevgep43.3, align 1
  %conv84.3 = zext i8 %52 to i32
  %scevgep47.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1, i64 0, i64 0, i64 3
  %53 = load i8, i8* %scevgep47.3, align 1
  %conv89.3 = zext i8 %53 to i32
  %xor90.3 = xor i32 %conv84.3, %conv89.3
  %conv91.3 = trunc i32 %xor90.3 to i8
  %scevgep50.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 3
  store i8 %conv91.3, i8* %scevgep50.3, align 1
  %scevgep31.4 = getelementptr i8, i8* %b, i64 4
  %54 = load i8, i8* %scevgep31.4, align 1
  %conv44.4 = zext i8 %54 to i32
  %scevgep34.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 0, i64 4
  %55 = load i8, i8* %scevgep34.4, align 1
  %conv49.4 = zext i8 %55 to i32
  %xor.4 = xor i32 %conv44.4, %conv49.4
  %conv50.4 = trunc i32 %xor.4 to i8
  %scevgep38.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s, i64 0, i64 0, i64 4
  store i8 %conv50.4, i8* %scevgep38.4, align 1
  %56 = load i8, i8* %a, align 1
  %conv57.4 = zext i8 %56 to i32
  %xor58.4 = xor i32 %conv57.4, 1
  %conv59.4 = trunc i32 %xor58.4 to i8
  %scevgep35.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 0, i64 4
  %57 = load i8, i8* %scevgep35.4, align 1
  %call64.4 = call zeroext i8 @mult(i8 zeroext %conv59.4, i8 zeroext %57)
  %scevgep42.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0, i64 0, i64 0, i64 4
  store i8 %call64.4, i8* %scevgep42.4, align 1
  %58 = load i8, i8* %a, align 1
  %scevgep39.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s, i64 0, i64 0, i64 4
  %59 = load i8, i8* %scevgep39.4, align 1
  %call75.4 = call zeroext i8 @mult(i8 zeroext %58, i8 zeroext %59)
  %scevgep46.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1, i64 0, i64 0, i64 4
  store i8 %call75.4, i8* %scevgep46.4, align 1
  %scevgep43.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0, i64 0, i64 0, i64 4
  %60 = load i8, i8* %scevgep43.4, align 1
  %conv84.4 = zext i8 %60 to i32
  %scevgep47.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1, i64 0, i64 0, i64 4
  %61 = load i8, i8* %scevgep47.4, align 1
  %conv89.4 = zext i8 %61 to i32
  %xor90.4 = xor i32 %conv84.4, %conv89.4
  %conv91.4 = trunc i32 %xor90.4 to i8
  %scevgep50.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 4
  store i8 %conv91.4, i8* %scevgep50.4, align 1
  %scevgep33 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r, i64 0, i64 1, i64 0
  %62 = bitcast i8* %scevgep33 to [5 x [5 x i8]]*
  %scevgep37 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s, i64 0, i64 1, i64 0
  %63 = bitcast i8* %scevgep37 to [5 x [5 x i8]]*
  %scevgep41 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0, i64 0, i64 1, i64 0
  %64 = bitcast i8* %scevgep41 to [5 x [5 x i8]]*
  %scevgep45 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1, i64 0, i64 1, i64 0
  %65 = bitcast i8* %scevgep45 to [5 x [5 x i8]]*
  %scevgep49 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 1, i64 0
  %66 = bitcast i8* %scevgep49 to [5 x [5 x i8]]*
  %arrayidx56.1 = getelementptr inbounds i8, i8* %a, i64 1
  %arrayidx70.1 = getelementptr inbounds i8, i8* %a, i64 1
  %67 = load i8, i8* %b, align 1
  %conv44.1118 = zext i8 %67 to i32
  %scevgep34.1119 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %62, i64 0, i64 0, i64 0
  %68 = load i8, i8* %scevgep34.1119, align 1
  %conv49.1120 = zext i8 %68 to i32
  %xor.1121 = xor i32 %conv44.1118, %conv49.1120
  %conv50.1122 = trunc i32 %xor.1121 to i8
  %scevgep38.1123 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %63, i64 0, i64 0, i64 0
  store i8 %conv50.1122, i8* %scevgep38.1123, align 1
  %69 = load i8, i8* %arrayidx56.1, align 1
  %conv57.1124 = zext i8 %69 to i32
  %xor58.1125 = xor i32 %conv57.1124, 1
  %conv59.1126 = trunc i32 %xor58.1125 to i8
  %scevgep35.1127 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %62, i64 0, i64 0, i64 0
  %70 = load i8, i8* %scevgep35.1127, align 1
  %call64.1128 = call zeroext i8 @mult(i8 zeroext %conv59.1126, i8 zeroext %70)
  %scevgep42.1129 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %64, i64 0, i64 0, i64 0
  store i8 %call64.1128, i8* %scevgep42.1129, align 1
  %71 = load i8, i8* %arrayidx70.1, align 1
  %scevgep39.1130 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %63, i64 0, i64 0, i64 0
  %72 = load i8, i8* %scevgep39.1130, align 1
  %call75.1131 = call zeroext i8 @mult(i8 zeroext %71, i8 zeroext %72)
  %scevgep46.1132 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %65, i64 0, i64 0, i64 0
  store i8 %call75.1131, i8* %scevgep46.1132, align 1
  %scevgep43.1133 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %64, i64 0, i64 0, i64 0
  %73 = load i8, i8* %scevgep43.1133, align 1
  %conv84.1134 = zext i8 %73 to i32
  %scevgep47.1135 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %65, i64 0, i64 0, i64 0
  %74 = load i8, i8* %scevgep47.1135, align 1
  %conv89.1136 = zext i8 %74 to i32
  %xor90.1137 = xor i32 %conv84.1134, %conv89.1136
  %conv91.1138 = trunc i32 %xor90.1137 to i8
  %scevgep50.1139 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %66, i64 0, i64 0, i64 0
  store i8 %conv91.1138, i8* %scevgep50.1139, align 1
  %scevgep31.2.1 = getelementptr i8, i8* %b, i64 2
  %75 = load i8, i8* %scevgep31.2.1, align 1
  %conv44.2.1 = zext i8 %75 to i32
  %scevgep34.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %62, i64 0, i64 0, i64 2
  %76 = load i8, i8* %scevgep34.2.1, align 1
  %conv49.2.1 = zext i8 %76 to i32
  %xor.2.1 = xor i32 %conv44.2.1, %conv49.2.1
  %conv50.2.1 = trunc i32 %xor.2.1 to i8
  %scevgep38.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %63, i64 0, i64 0, i64 2
  store i8 %conv50.2.1, i8* %scevgep38.2.1, align 1
  %77 = load i8, i8* %arrayidx56.1, align 1
  %conv57.2.1 = zext i8 %77 to i32
  %xor58.2.1 = xor i32 %conv57.2.1, 1
  %conv59.2.1 = trunc i32 %xor58.2.1 to i8
  %scevgep35.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %62, i64 0, i64 0, i64 2
  %78 = load i8, i8* %scevgep35.2.1, align 1
  %call64.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.2.1, i8 zeroext %78)
  %scevgep42.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %64, i64 0, i64 0, i64 2
  store i8 %call64.2.1, i8* %scevgep42.2.1, align 1
  %79 = load i8, i8* %arrayidx70.1, align 1
  %scevgep39.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %63, i64 0, i64 0, i64 2
  %80 = load i8, i8* %scevgep39.2.1, align 1
  %call75.2.1 = call zeroext i8 @mult(i8 zeroext %79, i8 zeroext %80)
  %scevgep46.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %65, i64 0, i64 0, i64 2
  store i8 %call75.2.1, i8* %scevgep46.2.1, align 1
  %scevgep43.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %64, i64 0, i64 0, i64 2
  %81 = load i8, i8* %scevgep43.2.1, align 1
  %conv84.2.1 = zext i8 %81 to i32
  %scevgep47.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %65, i64 0, i64 0, i64 2
  %82 = load i8, i8* %scevgep47.2.1, align 1
  %conv89.2.1 = zext i8 %82 to i32
  %xor90.2.1 = xor i32 %conv84.2.1, %conv89.2.1
  %conv91.2.1 = trunc i32 %xor90.2.1 to i8
  %scevgep50.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %66, i64 0, i64 0, i64 2
  store i8 %conv91.2.1, i8* %scevgep50.2.1, align 1
  %scevgep31.3.1 = getelementptr i8, i8* %b, i64 3
  %83 = load i8, i8* %scevgep31.3.1, align 1
  %conv44.3.1 = zext i8 %83 to i32
  %scevgep34.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %62, i64 0, i64 0, i64 3
  %84 = load i8, i8* %scevgep34.3.1, align 1
  %conv49.3.1 = zext i8 %84 to i32
  %xor.3.1 = xor i32 %conv44.3.1, %conv49.3.1
  %conv50.3.1 = trunc i32 %xor.3.1 to i8
  %scevgep38.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %63, i64 0, i64 0, i64 3
  store i8 %conv50.3.1, i8* %scevgep38.3.1, align 1
  %85 = load i8, i8* %arrayidx56.1, align 1
  %conv57.3.1 = zext i8 %85 to i32
  %xor58.3.1 = xor i32 %conv57.3.1, 1
  %conv59.3.1 = trunc i32 %xor58.3.1 to i8
  %scevgep35.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %62, i64 0, i64 0, i64 3
  %86 = load i8, i8* %scevgep35.3.1, align 1
  %call64.3.1 = call zeroext i8 @mult(i8 zeroext %conv59.3.1, i8 zeroext %86)
  %scevgep42.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %64, i64 0, i64 0, i64 3
  store i8 %call64.3.1, i8* %scevgep42.3.1, align 1
  %87 = load i8, i8* %arrayidx70.1, align 1
  %scevgep39.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %63, i64 0, i64 0, i64 3
  %88 = load i8, i8* %scevgep39.3.1, align 1
  %call75.3.1 = call zeroext i8 @mult(i8 zeroext %87, i8 zeroext %88)
  %scevgep46.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %65, i64 0, i64 0, i64 3
  store i8 %call75.3.1, i8* %scevgep46.3.1, align 1
  %scevgep43.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %64, i64 0, i64 0, i64 3
  %89 = load i8, i8* %scevgep43.3.1, align 1
  %conv84.3.1 = zext i8 %89 to i32
  %scevgep47.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %65, i64 0, i64 0, i64 3
  %90 = load i8, i8* %scevgep47.3.1, align 1
  %conv89.3.1 = zext i8 %90 to i32
  %xor90.3.1 = xor i32 %conv84.3.1, %conv89.3.1
  %conv91.3.1 = trunc i32 %xor90.3.1 to i8
  %scevgep50.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %66, i64 0, i64 0, i64 3
  store i8 %conv91.3.1, i8* %scevgep50.3.1, align 1
  %scevgep31.4.1 = getelementptr i8, i8* %b, i64 4
  %91 = load i8, i8* %scevgep31.4.1, align 1
  %conv44.4.1 = zext i8 %91 to i32
  %scevgep34.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %62, i64 0, i64 0, i64 4
  %92 = load i8, i8* %scevgep34.4.1, align 1
  %conv49.4.1 = zext i8 %92 to i32
  %xor.4.1 = xor i32 %conv44.4.1, %conv49.4.1
  %conv50.4.1 = trunc i32 %xor.4.1 to i8
  %scevgep38.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %63, i64 0, i64 0, i64 4
  store i8 %conv50.4.1, i8* %scevgep38.4.1, align 1
  %93 = load i8, i8* %arrayidx56.1, align 1
  %conv57.4.1 = zext i8 %93 to i32
  %xor58.4.1 = xor i32 %conv57.4.1, 1
  %conv59.4.1 = trunc i32 %xor58.4.1 to i8
  %scevgep35.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %62, i64 0, i64 0, i64 4
  %94 = load i8, i8* %scevgep35.4.1, align 1
  %call64.4.1 = call zeroext i8 @mult(i8 zeroext %conv59.4.1, i8 zeroext %94)
  %scevgep42.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %64, i64 0, i64 0, i64 4
  store i8 %call64.4.1, i8* %scevgep42.4.1, align 1
  %95 = load i8, i8* %arrayidx70.1, align 1
  %scevgep39.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %63, i64 0, i64 0, i64 4
  %96 = load i8, i8* %scevgep39.4.1, align 1
  %call75.4.1 = call zeroext i8 @mult(i8 zeroext %95, i8 zeroext %96)
  %scevgep46.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %65, i64 0, i64 0, i64 4
  store i8 %call75.4.1, i8* %scevgep46.4.1, align 1
  %scevgep43.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %64, i64 0, i64 0, i64 4
  %97 = load i8, i8* %scevgep43.4.1, align 1
  %conv84.4.1 = zext i8 %97 to i32
  %scevgep47.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %65, i64 0, i64 0, i64 4
  %98 = load i8, i8* %scevgep47.4.1, align 1
  %conv89.4.1 = zext i8 %98 to i32
  %xor90.4.1 = xor i32 %conv84.4.1, %conv89.4.1
  %conv91.4.1 = trunc i32 %xor90.4.1 to i8
  %scevgep50.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %66, i64 0, i64 0, i64 4
  store i8 %conv91.4.1, i8* %scevgep50.4.1, align 1
  %scevgep33.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %62, i64 0, i64 1, i64 0
  %99 = bitcast i8* %scevgep33.1 to [5 x [5 x i8]]*
  %scevgep37.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %63, i64 0, i64 1, i64 0
  %100 = bitcast i8* %scevgep37.1 to [5 x [5 x i8]]*
  %scevgep41.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %64, i64 0, i64 1, i64 0
  %101 = bitcast i8* %scevgep41.1 to [5 x [5 x i8]]*
  %scevgep45.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %65, i64 0, i64 1, i64 0
  %102 = bitcast i8* %scevgep45.1 to [5 x [5 x i8]]*
  %scevgep49.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %66, i64 0, i64 1, i64 0
  %103 = bitcast i8* %scevgep49.1 to [5 x [5 x i8]]*
  %arrayidx56.2 = getelementptr inbounds i8, i8* %a, i64 2
  %arrayidx70.2 = getelementptr inbounds i8, i8* %a, i64 2
  %104 = load i8, i8* %b, align 1
  %conv44.2145 = zext i8 %104 to i32
  %scevgep34.2146 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %99, i64 0, i64 0, i64 0
  %105 = load i8, i8* %scevgep34.2146, align 1
  %conv49.2147 = zext i8 %105 to i32
  %xor.2148 = xor i32 %conv44.2145, %conv49.2147
  %conv50.2149 = trunc i32 %xor.2148 to i8
  %scevgep38.2150 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %100, i64 0, i64 0, i64 0
  store i8 %conv50.2149, i8* %scevgep38.2150, align 1
  %106 = load i8, i8* %arrayidx56.2, align 1
  %conv57.2151 = zext i8 %106 to i32
  %xor58.2152 = xor i32 %conv57.2151, 1
  %conv59.2153 = trunc i32 %xor58.2152 to i8
  %scevgep35.2154 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %99, i64 0, i64 0, i64 0
  %107 = load i8, i8* %scevgep35.2154, align 1
  %call64.2155 = call zeroext i8 @mult(i8 zeroext %conv59.2153, i8 zeroext %107)
  %scevgep42.2156 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %101, i64 0, i64 0, i64 0
  store i8 %call64.2155, i8* %scevgep42.2156, align 1
  %108 = load i8, i8* %arrayidx70.2, align 1
  %scevgep39.2157 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %100, i64 0, i64 0, i64 0
  %109 = load i8, i8* %scevgep39.2157, align 1
  %call75.2158 = call zeroext i8 @mult(i8 zeroext %108, i8 zeroext %109)
  %scevgep46.2159 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %102, i64 0, i64 0, i64 0
  store i8 %call75.2158, i8* %scevgep46.2159, align 1
  %scevgep43.2160 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %101, i64 0, i64 0, i64 0
  %110 = load i8, i8* %scevgep43.2160, align 1
  %conv84.2161 = zext i8 %110 to i32
  %scevgep47.2162 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %102, i64 0, i64 0, i64 0
  %111 = load i8, i8* %scevgep47.2162, align 1
  %conv89.2163 = zext i8 %111 to i32
  %xor90.2164 = xor i32 %conv84.2161, %conv89.2163
  %conv91.2165 = trunc i32 %xor90.2164 to i8
  %scevgep50.2166 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %103, i64 0, i64 0, i64 0
  store i8 %conv91.2165, i8* %scevgep50.2166, align 1
  %scevgep31.1.2 = getelementptr i8, i8* %b, i64 1
  %112 = load i8, i8* %scevgep31.1.2, align 1
  %conv44.1.2 = zext i8 %112 to i32
  %scevgep34.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %99, i64 0, i64 0, i64 1
  %113 = load i8, i8* %scevgep34.1.2, align 1
  %conv49.1.2 = zext i8 %113 to i32
  %xor.1.2 = xor i32 %conv44.1.2, %conv49.1.2
  %conv50.1.2 = trunc i32 %xor.1.2 to i8
  %scevgep38.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %100, i64 0, i64 0, i64 1
  store i8 %conv50.1.2, i8* %scevgep38.1.2, align 1
  %114 = load i8, i8* %arrayidx56.2, align 1
  %conv57.1.2 = zext i8 %114 to i32
  %xor58.1.2 = xor i32 %conv57.1.2, 1
  %conv59.1.2 = trunc i32 %xor58.1.2 to i8
  %scevgep35.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %99, i64 0, i64 0, i64 1
  %115 = load i8, i8* %scevgep35.1.2, align 1
  %call64.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.1.2, i8 zeroext %115)
  %scevgep42.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %101, i64 0, i64 0, i64 1
  store i8 %call64.1.2, i8* %scevgep42.1.2, align 1
  %116 = load i8, i8* %arrayidx70.2, align 1
  %scevgep39.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %100, i64 0, i64 0, i64 1
  %117 = load i8, i8* %scevgep39.1.2, align 1
  %call75.1.2 = call zeroext i8 @mult(i8 zeroext %116, i8 zeroext %117)
  %scevgep46.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %102, i64 0, i64 0, i64 1
  store i8 %call75.1.2, i8* %scevgep46.1.2, align 1
  %scevgep43.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %101, i64 0, i64 0, i64 1
  %118 = load i8, i8* %scevgep43.1.2, align 1
  %conv84.1.2 = zext i8 %118 to i32
  %scevgep47.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %102, i64 0, i64 0, i64 1
  %119 = load i8, i8* %scevgep47.1.2, align 1
  %conv89.1.2 = zext i8 %119 to i32
  %xor90.1.2 = xor i32 %conv84.1.2, %conv89.1.2
  %conv91.1.2 = trunc i32 %xor90.1.2 to i8
  %scevgep50.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %103, i64 0, i64 0, i64 1
  store i8 %conv91.1.2, i8* %scevgep50.1.2, align 1
  %scevgep31.3.2 = getelementptr i8, i8* %b, i64 3
  %120 = load i8, i8* %scevgep31.3.2, align 1
  %conv44.3.2 = zext i8 %120 to i32
  %scevgep34.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %99, i64 0, i64 0, i64 3
  %121 = load i8, i8* %scevgep34.3.2, align 1
  %conv49.3.2 = zext i8 %121 to i32
  %xor.3.2 = xor i32 %conv44.3.2, %conv49.3.2
  %conv50.3.2 = trunc i32 %xor.3.2 to i8
  %scevgep38.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %100, i64 0, i64 0, i64 3
  store i8 %conv50.3.2, i8* %scevgep38.3.2, align 1
  %122 = load i8, i8* %arrayidx56.2, align 1
  %conv57.3.2 = zext i8 %122 to i32
  %xor58.3.2 = xor i32 %conv57.3.2, 1
  %conv59.3.2 = trunc i32 %xor58.3.2 to i8
  %scevgep35.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %99, i64 0, i64 0, i64 3
  %123 = load i8, i8* %scevgep35.3.2, align 1
  %call64.3.2 = call zeroext i8 @mult(i8 zeroext %conv59.3.2, i8 zeroext %123)
  %scevgep42.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %101, i64 0, i64 0, i64 3
  store i8 %call64.3.2, i8* %scevgep42.3.2, align 1
  %124 = load i8, i8* %arrayidx70.2, align 1
  %scevgep39.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %100, i64 0, i64 0, i64 3
  %125 = load i8, i8* %scevgep39.3.2, align 1
  %call75.3.2 = call zeroext i8 @mult(i8 zeroext %124, i8 zeroext %125)
  %scevgep46.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %102, i64 0, i64 0, i64 3
  store i8 %call75.3.2, i8* %scevgep46.3.2, align 1
  %scevgep43.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %101, i64 0, i64 0, i64 3
  %126 = load i8, i8* %scevgep43.3.2, align 1
  %conv84.3.2 = zext i8 %126 to i32
  %scevgep47.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %102, i64 0, i64 0, i64 3
  %127 = load i8, i8* %scevgep47.3.2, align 1
  %conv89.3.2 = zext i8 %127 to i32
  %xor90.3.2 = xor i32 %conv84.3.2, %conv89.3.2
  %conv91.3.2 = trunc i32 %xor90.3.2 to i8
  %scevgep50.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %103, i64 0, i64 0, i64 3
  store i8 %conv91.3.2, i8* %scevgep50.3.2, align 1
  %scevgep31.4.2 = getelementptr i8, i8* %b, i64 4
  %128 = load i8, i8* %scevgep31.4.2, align 1
  %conv44.4.2 = zext i8 %128 to i32
  %scevgep34.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %99, i64 0, i64 0, i64 4
  %129 = load i8, i8* %scevgep34.4.2, align 1
  %conv49.4.2 = zext i8 %129 to i32
  %xor.4.2 = xor i32 %conv44.4.2, %conv49.4.2
  %conv50.4.2 = trunc i32 %xor.4.2 to i8
  %scevgep38.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %100, i64 0, i64 0, i64 4
  store i8 %conv50.4.2, i8* %scevgep38.4.2, align 1
  %130 = load i8, i8* %arrayidx56.2, align 1
  %conv57.4.2 = zext i8 %130 to i32
  %xor58.4.2 = xor i32 %conv57.4.2, 1
  %conv59.4.2 = trunc i32 %xor58.4.2 to i8
  %scevgep35.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %99, i64 0, i64 0, i64 4
  %131 = load i8, i8* %scevgep35.4.2, align 1
  %call64.4.2 = call zeroext i8 @mult(i8 zeroext %conv59.4.2, i8 zeroext %131)
  %scevgep42.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %101, i64 0, i64 0, i64 4
  store i8 %call64.4.2, i8* %scevgep42.4.2, align 1
  %132 = load i8, i8* %arrayidx70.2, align 1
  %scevgep39.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %100, i64 0, i64 0, i64 4
  %133 = load i8, i8* %scevgep39.4.2, align 1
  %call75.4.2 = call zeroext i8 @mult(i8 zeroext %132, i8 zeroext %133)
  %scevgep46.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %102, i64 0, i64 0, i64 4
  store i8 %call75.4.2, i8* %scevgep46.4.2, align 1
  %scevgep43.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %101, i64 0, i64 0, i64 4
  %134 = load i8, i8* %scevgep43.4.2, align 1
  %conv84.4.2 = zext i8 %134 to i32
  %scevgep47.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %102, i64 0, i64 0, i64 4
  %135 = load i8, i8* %scevgep47.4.2, align 1
  %conv89.4.2 = zext i8 %135 to i32
  %xor90.4.2 = xor i32 %conv84.4.2, %conv89.4.2
  %conv91.4.2 = trunc i32 %xor90.4.2 to i8
  %scevgep50.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %103, i64 0, i64 0, i64 4
  store i8 %conv91.4.2, i8* %scevgep50.4.2, align 1
  %scevgep33.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %99, i64 0, i64 1, i64 0
  %136 = bitcast i8* %scevgep33.2 to [5 x [5 x i8]]*
  %scevgep37.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %100, i64 0, i64 1, i64 0
  %137 = bitcast i8* %scevgep37.2 to [5 x [5 x i8]]*
  %scevgep41.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %101, i64 0, i64 1, i64 0
  %138 = bitcast i8* %scevgep41.2 to [5 x [5 x i8]]*
  %scevgep45.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %102, i64 0, i64 1, i64 0
  %139 = bitcast i8* %scevgep45.2 to [5 x [5 x i8]]*
  %scevgep49.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %103, i64 0, i64 1, i64 0
  %140 = bitcast i8* %scevgep49.2 to [5 x [5 x i8]]*
  %arrayidx56.3 = getelementptr inbounds i8, i8* %a, i64 3
  %arrayidx70.3 = getelementptr inbounds i8, i8* %a, i64 3
  %141 = load i8, i8* %b, align 1
  %conv44.3172 = zext i8 %141 to i32
  %scevgep34.3173 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %136, i64 0, i64 0, i64 0
  %142 = load i8, i8* %scevgep34.3173, align 1
  %conv49.3174 = zext i8 %142 to i32
  %xor.3175 = xor i32 %conv44.3172, %conv49.3174
  %conv50.3176 = trunc i32 %xor.3175 to i8
  %scevgep38.3177 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %137, i64 0, i64 0, i64 0
  store i8 %conv50.3176, i8* %scevgep38.3177, align 1
  %143 = load i8, i8* %arrayidx56.3, align 1
  %conv57.3178 = zext i8 %143 to i32
  %xor58.3179 = xor i32 %conv57.3178, 1
  %conv59.3180 = trunc i32 %xor58.3179 to i8
  %scevgep35.3181 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %136, i64 0, i64 0, i64 0
  %144 = load i8, i8* %scevgep35.3181, align 1
  %call64.3182 = call zeroext i8 @mult(i8 zeroext %conv59.3180, i8 zeroext %144)
  %scevgep42.3183 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %138, i64 0, i64 0, i64 0
  store i8 %call64.3182, i8* %scevgep42.3183, align 1
  %145 = load i8, i8* %arrayidx70.3, align 1
  %scevgep39.3184 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %137, i64 0, i64 0, i64 0
  %146 = load i8, i8* %scevgep39.3184, align 1
  %call75.3185 = call zeroext i8 @mult(i8 zeroext %145, i8 zeroext %146)
  %scevgep46.3186 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %139, i64 0, i64 0, i64 0
  store i8 %call75.3185, i8* %scevgep46.3186, align 1
  %scevgep43.3187 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %138, i64 0, i64 0, i64 0
  %147 = load i8, i8* %scevgep43.3187, align 1
  %conv84.3188 = zext i8 %147 to i32
  %scevgep47.3189 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %139, i64 0, i64 0, i64 0
  %148 = load i8, i8* %scevgep47.3189, align 1
  %conv89.3190 = zext i8 %148 to i32
  %xor90.3191 = xor i32 %conv84.3188, %conv89.3190
  %conv91.3192 = trunc i32 %xor90.3191 to i8
  %scevgep50.3193 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %140, i64 0, i64 0, i64 0
  store i8 %conv91.3192, i8* %scevgep50.3193, align 1
  %scevgep31.1.3 = getelementptr i8, i8* %b, i64 1
  %149 = load i8, i8* %scevgep31.1.3, align 1
  %conv44.1.3 = zext i8 %149 to i32
  %scevgep34.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %136, i64 0, i64 0, i64 1
  %150 = load i8, i8* %scevgep34.1.3, align 1
  %conv49.1.3 = zext i8 %150 to i32
  %xor.1.3 = xor i32 %conv44.1.3, %conv49.1.3
  %conv50.1.3 = trunc i32 %xor.1.3 to i8
  %scevgep38.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %137, i64 0, i64 0, i64 1
  store i8 %conv50.1.3, i8* %scevgep38.1.3, align 1
  %151 = load i8, i8* %arrayidx56.3, align 1
  %conv57.1.3 = zext i8 %151 to i32
  %xor58.1.3 = xor i32 %conv57.1.3, 1
  %conv59.1.3 = trunc i32 %xor58.1.3 to i8
  %scevgep35.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %136, i64 0, i64 0, i64 1
  %152 = load i8, i8* %scevgep35.1.3, align 1
  %call64.1.3 = call zeroext i8 @mult(i8 zeroext %conv59.1.3, i8 zeroext %152)
  %scevgep42.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %138, i64 0, i64 0, i64 1
  store i8 %call64.1.3, i8* %scevgep42.1.3, align 1
  %153 = load i8, i8* %arrayidx70.3, align 1
  %scevgep39.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %137, i64 0, i64 0, i64 1
  %154 = load i8, i8* %scevgep39.1.3, align 1
  %call75.1.3 = call zeroext i8 @mult(i8 zeroext %153, i8 zeroext %154)
  %scevgep46.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %139, i64 0, i64 0, i64 1
  store i8 %call75.1.3, i8* %scevgep46.1.3, align 1
  %scevgep43.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %138, i64 0, i64 0, i64 1
  %155 = load i8, i8* %scevgep43.1.3, align 1
  %conv84.1.3 = zext i8 %155 to i32
  %scevgep47.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %139, i64 0, i64 0, i64 1
  %156 = load i8, i8* %scevgep47.1.3, align 1
  %conv89.1.3 = zext i8 %156 to i32
  %xor90.1.3 = xor i32 %conv84.1.3, %conv89.1.3
  %conv91.1.3 = trunc i32 %xor90.1.3 to i8
  %scevgep50.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %140, i64 0, i64 0, i64 1
  store i8 %conv91.1.3, i8* %scevgep50.1.3, align 1
  %scevgep31.2.3 = getelementptr i8, i8* %b, i64 2
  %157 = load i8, i8* %scevgep31.2.3, align 1
  %conv44.2.3 = zext i8 %157 to i32
  %scevgep34.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %136, i64 0, i64 0, i64 2
  %158 = load i8, i8* %scevgep34.2.3, align 1
  %conv49.2.3 = zext i8 %158 to i32
  %xor.2.3 = xor i32 %conv44.2.3, %conv49.2.3
  %conv50.2.3 = trunc i32 %xor.2.3 to i8
  %scevgep38.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %137, i64 0, i64 0, i64 2
  store i8 %conv50.2.3, i8* %scevgep38.2.3, align 1
  %159 = load i8, i8* %arrayidx56.3, align 1
  %conv57.2.3 = zext i8 %159 to i32
  %xor58.2.3 = xor i32 %conv57.2.3, 1
  %conv59.2.3 = trunc i32 %xor58.2.3 to i8
  %scevgep35.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %136, i64 0, i64 0, i64 2
  %160 = load i8, i8* %scevgep35.2.3, align 1
  %call64.2.3 = call zeroext i8 @mult(i8 zeroext %conv59.2.3, i8 zeroext %160)
  %scevgep42.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %138, i64 0, i64 0, i64 2
  store i8 %call64.2.3, i8* %scevgep42.2.3, align 1
  %161 = load i8, i8* %arrayidx70.3, align 1
  %scevgep39.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %137, i64 0, i64 0, i64 2
  %162 = load i8, i8* %scevgep39.2.3, align 1
  %call75.2.3 = call zeroext i8 @mult(i8 zeroext %161, i8 zeroext %162)
  %scevgep46.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %139, i64 0, i64 0, i64 2
  store i8 %call75.2.3, i8* %scevgep46.2.3, align 1
  %scevgep43.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %138, i64 0, i64 0, i64 2
  %163 = load i8, i8* %scevgep43.2.3, align 1
  %conv84.2.3 = zext i8 %163 to i32
  %scevgep47.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %139, i64 0, i64 0, i64 2
  %164 = load i8, i8* %scevgep47.2.3, align 1
  %conv89.2.3 = zext i8 %164 to i32
  %xor90.2.3 = xor i32 %conv84.2.3, %conv89.2.3
  %conv91.2.3 = trunc i32 %xor90.2.3 to i8
  %scevgep50.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %140, i64 0, i64 0, i64 2
  store i8 %conv91.2.3, i8* %scevgep50.2.3, align 1
  %scevgep31.4.3 = getelementptr i8, i8* %b, i64 4
  %165 = load i8, i8* %scevgep31.4.3, align 1
  %conv44.4.3 = zext i8 %165 to i32
  %scevgep34.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %136, i64 0, i64 0, i64 4
  %166 = load i8, i8* %scevgep34.4.3, align 1
  %conv49.4.3 = zext i8 %166 to i32
  %xor.4.3 = xor i32 %conv44.4.3, %conv49.4.3
  %conv50.4.3 = trunc i32 %xor.4.3 to i8
  %scevgep38.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %137, i64 0, i64 0, i64 4
  store i8 %conv50.4.3, i8* %scevgep38.4.3, align 1
  %167 = load i8, i8* %arrayidx56.3, align 1
  %conv57.4.3 = zext i8 %167 to i32
  %xor58.4.3 = xor i32 %conv57.4.3, 1
  %conv59.4.3 = trunc i32 %xor58.4.3 to i8
  %scevgep35.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %136, i64 0, i64 0, i64 4
  %168 = load i8, i8* %scevgep35.4.3, align 1
  %call64.4.3 = call zeroext i8 @mult(i8 zeroext %conv59.4.3, i8 zeroext %168)
  %scevgep42.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %138, i64 0, i64 0, i64 4
  store i8 %call64.4.3, i8* %scevgep42.4.3, align 1
  %169 = load i8, i8* %arrayidx70.3, align 1
  %scevgep39.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %137, i64 0, i64 0, i64 4
  %170 = load i8, i8* %scevgep39.4.3, align 1
  %call75.4.3 = call zeroext i8 @mult(i8 zeroext %169, i8 zeroext %170)
  %scevgep46.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %139, i64 0, i64 0, i64 4
  store i8 %call75.4.3, i8* %scevgep46.4.3, align 1
  %scevgep43.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %138, i64 0, i64 0, i64 4
  %171 = load i8, i8* %scevgep43.4.3, align 1
  %conv84.4.3 = zext i8 %171 to i32
  %scevgep47.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %139, i64 0, i64 0, i64 4
  %172 = load i8, i8* %scevgep47.4.3, align 1
  %conv89.4.3 = zext i8 %172 to i32
  %xor90.4.3 = xor i32 %conv84.4.3, %conv89.4.3
  %conv91.4.3 = trunc i32 %xor90.4.3 to i8
  %scevgep50.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %140, i64 0, i64 0, i64 4
  store i8 %conv91.4.3, i8* %scevgep50.4.3, align 1
  %scevgep33.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %136, i64 0, i64 1, i64 0
  %173 = bitcast i8* %scevgep33.3 to [5 x [5 x i8]]*
  %scevgep37.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %137, i64 0, i64 1, i64 0
  %174 = bitcast i8* %scevgep37.3 to [5 x [5 x i8]]*
  %scevgep41.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %138, i64 0, i64 1, i64 0
  %175 = bitcast i8* %scevgep41.3 to [5 x [5 x i8]]*
  %scevgep45.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %139, i64 0, i64 1, i64 0
  %176 = bitcast i8* %scevgep45.3 to [5 x [5 x i8]]*
  %scevgep49.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %140, i64 0, i64 1, i64 0
  %177 = bitcast i8* %scevgep49.3 to [5 x [5 x i8]]*
  %arrayidx56.4 = getelementptr inbounds i8, i8* %a, i64 4
  %arrayidx70.4 = getelementptr inbounds i8, i8* %a, i64 4
  %178 = load i8, i8* %b, align 1
  %conv44.4199 = zext i8 %178 to i32
  %scevgep34.4200 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %173, i64 0, i64 0, i64 0
  %179 = load i8, i8* %scevgep34.4200, align 1
  %conv49.4201 = zext i8 %179 to i32
  %xor.4202 = xor i32 %conv44.4199, %conv49.4201
  %conv50.4203 = trunc i32 %xor.4202 to i8
  %scevgep38.4204 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %174, i64 0, i64 0, i64 0
  store i8 %conv50.4203, i8* %scevgep38.4204, align 1
  %180 = load i8, i8* %arrayidx56.4, align 1
  %conv57.4205 = zext i8 %180 to i32
  %xor58.4206 = xor i32 %conv57.4205, 1
  %conv59.4207 = trunc i32 %xor58.4206 to i8
  %scevgep35.4208 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %173, i64 0, i64 0, i64 0
  %181 = load i8, i8* %scevgep35.4208, align 1
  %call64.4209 = call zeroext i8 @mult(i8 zeroext %conv59.4207, i8 zeroext %181)
  %scevgep42.4210 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %175, i64 0, i64 0, i64 0
  store i8 %call64.4209, i8* %scevgep42.4210, align 1
  %182 = load i8, i8* %arrayidx70.4, align 1
  %scevgep39.4211 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %174, i64 0, i64 0, i64 0
  %183 = load i8, i8* %scevgep39.4211, align 1
  %call75.4212 = call zeroext i8 @mult(i8 zeroext %182, i8 zeroext %183)
  %scevgep46.4213 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %176, i64 0, i64 0, i64 0
  store i8 %call75.4212, i8* %scevgep46.4213, align 1
  %scevgep43.4214 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %175, i64 0, i64 0, i64 0
  %184 = load i8, i8* %scevgep43.4214, align 1
  %conv84.4215 = zext i8 %184 to i32
  %scevgep47.4216 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %176, i64 0, i64 0, i64 0
  %185 = load i8, i8* %scevgep47.4216, align 1
  %conv89.4217 = zext i8 %185 to i32
  %xor90.4218 = xor i32 %conv84.4215, %conv89.4217
  %conv91.4219 = trunc i32 %xor90.4218 to i8
  %scevgep50.4220 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %177, i64 0, i64 0, i64 0
  store i8 %conv91.4219, i8* %scevgep50.4220, align 1
  %scevgep31.1.4 = getelementptr i8, i8* %b, i64 1
  %186 = load i8, i8* %scevgep31.1.4, align 1
  %conv44.1.4 = zext i8 %186 to i32
  %scevgep34.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %173, i64 0, i64 0, i64 1
  %187 = load i8, i8* %scevgep34.1.4, align 1
  %conv49.1.4 = zext i8 %187 to i32
  %xor.1.4 = xor i32 %conv44.1.4, %conv49.1.4
  %conv50.1.4 = trunc i32 %xor.1.4 to i8
  %scevgep38.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %174, i64 0, i64 0, i64 1
  store i8 %conv50.1.4, i8* %scevgep38.1.4, align 1
  %188 = load i8, i8* %arrayidx56.4, align 1
  %conv57.1.4 = zext i8 %188 to i32
  %xor58.1.4 = xor i32 %conv57.1.4, 1
  %conv59.1.4 = trunc i32 %xor58.1.4 to i8
  %scevgep35.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %173, i64 0, i64 0, i64 1
  %189 = load i8, i8* %scevgep35.1.4, align 1
  %call64.1.4 = call zeroext i8 @mult(i8 zeroext %conv59.1.4, i8 zeroext %189)
  %scevgep42.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %175, i64 0, i64 0, i64 1
  store i8 %call64.1.4, i8* %scevgep42.1.4, align 1
  %190 = load i8, i8* %arrayidx70.4, align 1
  %scevgep39.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %174, i64 0, i64 0, i64 1
  %191 = load i8, i8* %scevgep39.1.4, align 1
  %call75.1.4 = call zeroext i8 @mult(i8 zeroext %190, i8 zeroext %191)
  %scevgep46.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %176, i64 0, i64 0, i64 1
  store i8 %call75.1.4, i8* %scevgep46.1.4, align 1
  %scevgep43.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %175, i64 0, i64 0, i64 1
  %192 = load i8, i8* %scevgep43.1.4, align 1
  %conv84.1.4 = zext i8 %192 to i32
  %scevgep47.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %176, i64 0, i64 0, i64 1
  %193 = load i8, i8* %scevgep47.1.4, align 1
  %conv89.1.4 = zext i8 %193 to i32
  %xor90.1.4 = xor i32 %conv84.1.4, %conv89.1.4
  %conv91.1.4 = trunc i32 %xor90.1.4 to i8
  %scevgep50.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %177, i64 0, i64 0, i64 1
  store i8 %conv91.1.4, i8* %scevgep50.1.4, align 1
  %scevgep31.2.4 = getelementptr i8, i8* %b, i64 2
  %194 = load i8, i8* %scevgep31.2.4, align 1
  %conv44.2.4 = zext i8 %194 to i32
  %scevgep34.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %173, i64 0, i64 0, i64 2
  %195 = load i8, i8* %scevgep34.2.4, align 1
  %conv49.2.4 = zext i8 %195 to i32
  %xor.2.4 = xor i32 %conv44.2.4, %conv49.2.4
  %conv50.2.4 = trunc i32 %xor.2.4 to i8
  %scevgep38.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %174, i64 0, i64 0, i64 2
  store i8 %conv50.2.4, i8* %scevgep38.2.4, align 1
  %196 = load i8, i8* %arrayidx56.4, align 1
  %conv57.2.4 = zext i8 %196 to i32
  %xor58.2.4 = xor i32 %conv57.2.4, 1
  %conv59.2.4 = trunc i32 %xor58.2.4 to i8
  %scevgep35.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %173, i64 0, i64 0, i64 2
  %197 = load i8, i8* %scevgep35.2.4, align 1
  %call64.2.4 = call zeroext i8 @mult(i8 zeroext %conv59.2.4, i8 zeroext %197)
  %scevgep42.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %175, i64 0, i64 0, i64 2
  store i8 %call64.2.4, i8* %scevgep42.2.4, align 1
  %198 = load i8, i8* %arrayidx70.4, align 1
  %scevgep39.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %174, i64 0, i64 0, i64 2
  %199 = load i8, i8* %scevgep39.2.4, align 1
  %call75.2.4 = call zeroext i8 @mult(i8 zeroext %198, i8 zeroext %199)
  %scevgep46.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %176, i64 0, i64 0, i64 2
  store i8 %call75.2.4, i8* %scevgep46.2.4, align 1
  %scevgep43.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %175, i64 0, i64 0, i64 2
  %200 = load i8, i8* %scevgep43.2.4, align 1
  %conv84.2.4 = zext i8 %200 to i32
  %scevgep47.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %176, i64 0, i64 0, i64 2
  %201 = load i8, i8* %scevgep47.2.4, align 1
  %conv89.2.4 = zext i8 %201 to i32
  %xor90.2.4 = xor i32 %conv84.2.4, %conv89.2.4
  %conv91.2.4 = trunc i32 %xor90.2.4 to i8
  %scevgep50.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %177, i64 0, i64 0, i64 2
  store i8 %conv91.2.4, i8* %scevgep50.2.4, align 1
  %scevgep31.3.4 = getelementptr i8, i8* %b, i64 3
  %202 = load i8, i8* %scevgep31.3.4, align 1
  %conv44.3.4 = zext i8 %202 to i32
  %scevgep34.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %173, i64 0, i64 0, i64 3
  %203 = load i8, i8* %scevgep34.3.4, align 1
  %conv49.3.4 = zext i8 %203 to i32
  %xor.3.4 = xor i32 %conv44.3.4, %conv49.3.4
  %conv50.3.4 = trunc i32 %xor.3.4 to i8
  %scevgep38.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %174, i64 0, i64 0, i64 3
  store i8 %conv50.3.4, i8* %scevgep38.3.4, align 1
  %204 = load i8, i8* %arrayidx56.4, align 1
  %conv57.3.4 = zext i8 %204 to i32
  %xor58.3.4 = xor i32 %conv57.3.4, 1
  %conv59.3.4 = trunc i32 %xor58.3.4 to i8
  %scevgep35.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %173, i64 0, i64 0, i64 3
  %205 = load i8, i8* %scevgep35.3.4, align 1
  %call64.3.4 = call zeroext i8 @mult(i8 zeroext %conv59.3.4, i8 zeroext %205)
  %scevgep42.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %175, i64 0, i64 0, i64 3
  store i8 %call64.3.4, i8* %scevgep42.3.4, align 1
  %206 = load i8, i8* %arrayidx70.4, align 1
  %scevgep39.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %174, i64 0, i64 0, i64 3
  %207 = load i8, i8* %scevgep39.3.4, align 1
  %call75.3.4 = call zeroext i8 @mult(i8 zeroext %206, i8 zeroext %207)
  %scevgep46.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %176, i64 0, i64 0, i64 3
  store i8 %call75.3.4, i8* %scevgep46.3.4, align 1
  %scevgep43.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %175, i64 0, i64 0, i64 3
  %208 = load i8, i8* %scevgep43.3.4, align 1
  %conv84.3.4 = zext i8 %208 to i32
  %scevgep47.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %176, i64 0, i64 0, i64 3
  %209 = load i8, i8* %scevgep47.3.4, align 1
  %conv89.3.4 = zext i8 %209 to i32
  %xor90.3.4 = xor i32 %conv84.3.4, %conv89.3.4
  %conv91.3.4 = trunc i32 %xor90.3.4 to i8
  %scevgep50.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %177, i64 0, i64 0, i64 3
  store i8 %conv91.3.4, i8* %scevgep50.3.4, align 1
  %210 = load i8, i8* %a, align 1
  %211 = load i8, i8* %b, align 1
  %call111 = call zeroext i8 @mult(i8 zeroext %210, i8 zeroext %211)
  store i8 %call111, i8* %c, align 1
  %scevgep22.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 1
  %212 = load i8, i8* %scevgep22.1, align 1
  %conv126.1 = zext i8 %212 to i32
  %213 = load i8, i8* %c, align 1
  %conv129.1 = zext i8 %213 to i32
  %xor130.1 = xor i32 %conv129.1, %conv126.1
  %conv131.1 = trunc i32 %xor130.1 to i8
  store i8 %conv131.1, i8* %c, align 1
  %scevgep22.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 2
  %214 = load i8, i8* %scevgep22.2, align 1
  %conv126.2 = zext i8 %214 to i32
  %215 = load i8, i8* %c, align 1
  %conv129.2 = zext i8 %215 to i32
  %xor130.2 = xor i32 %conv129.2, %conv126.2
  %conv131.2 = trunc i32 %xor130.2 to i8
  store i8 %conv131.2, i8* %c, align 1
  %scevgep22.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 3
  %216 = load i8, i8* %scevgep22.3, align 1
  %conv126.3 = zext i8 %216 to i32
  %217 = load i8, i8* %c, align 1
  %conv129.3 = zext i8 %217 to i32
  %xor130.3 = xor i32 %conv129.3, %conv126.3
  %conv131.3 = trunc i32 %xor130.3 to i8
  store i8 %conv131.3, i8* %c, align 1
  %scevgep22.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 4
  %218 = load i8, i8* %scevgep22.4, align 1
  %conv126.4 = zext i8 %218 to i32
  %219 = load i8, i8* %c, align 1
  %conv129.4 = zext i8 %219 to i32
  %xor130.4 = xor i32 %conv129.4, %conv126.4
  %conv131.4 = trunc i32 %xor130.4 to i8
  store i8 %conv131.4, i8* %c, align 1
  %scevgep21 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 1, i64 0
  %220 = bitcast i8* %scevgep21 to [5 x [5 x i8]]*
  %arrayidx108.1 = getelementptr inbounds i8, i8* %a, i64 1
  %221 = load i8, i8* %arrayidx108.1, align 1
  %arrayidx110.1 = getelementptr inbounds i8, i8* %b, i64 1
  %222 = load i8, i8* %arrayidx110.1, align 1
  %call111.1 = call zeroext i8 @mult(i8 zeroext %221, i8 zeroext %222)
  %arrayidx113.1 = getelementptr inbounds i8, i8* %c, i64 1
  store i8 %call111.1, i8* %arrayidx113.1, align 1
  %arrayidx128.1 = getelementptr inbounds i8, i8* %c, i64 1
  %scevgep22.178 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %220, i64 0, i64 0, i64 0
  %223 = load i8, i8* %scevgep22.178, align 1
  %conv126.179 = zext i8 %223 to i32
  %224 = load i8, i8* %arrayidx128.1, align 1
  %conv129.180 = zext i8 %224 to i32
  %xor130.181 = xor i32 %conv129.180, %conv126.179
  %conv131.182 = trunc i32 %xor130.181 to i8
  store i8 %conv131.182, i8* %arrayidx128.1, align 1
  %scevgep22.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %220, i64 0, i64 0, i64 2
  %225 = load i8, i8* %scevgep22.2.1, align 1
  %conv126.2.1 = zext i8 %225 to i32
  %226 = load i8, i8* %arrayidx128.1, align 1
  %conv129.2.1 = zext i8 %226 to i32
  %xor130.2.1 = xor i32 %conv129.2.1, %conv126.2.1
  %conv131.2.1 = trunc i32 %xor130.2.1 to i8
  store i8 %conv131.2.1, i8* %arrayidx128.1, align 1
  %scevgep22.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %220, i64 0, i64 0, i64 3
  %227 = load i8, i8* %scevgep22.3.1, align 1
  %conv126.3.1 = zext i8 %227 to i32
  %228 = load i8, i8* %arrayidx128.1, align 1
  %conv129.3.1 = zext i8 %228 to i32
  %xor130.3.1 = xor i32 %conv129.3.1, %conv126.3.1
  %conv131.3.1 = trunc i32 %xor130.3.1 to i8
  store i8 %conv131.3.1, i8* %arrayidx128.1, align 1
  %scevgep22.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %220, i64 0, i64 0, i64 4
  %229 = load i8, i8* %scevgep22.4.1, align 1
  %conv126.4.1 = zext i8 %229 to i32
  %230 = load i8, i8* %arrayidx128.1, align 1
  %conv129.4.1 = zext i8 %230 to i32
  %xor130.4.1 = xor i32 %conv129.4.1, %conv126.4.1
  %conv131.4.1 = trunc i32 %xor130.4.1 to i8
  store i8 %conv131.4.1, i8* %arrayidx128.1, align 1
  %scevgep21.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %220, i64 0, i64 1, i64 0
  %231 = bitcast i8* %scevgep21.1 to [5 x [5 x i8]]*
  %arrayidx108.2 = getelementptr inbounds i8, i8* %a, i64 2
  %232 = load i8, i8* %arrayidx108.2, align 1
  %arrayidx110.2 = getelementptr inbounds i8, i8* %b, i64 2
  %233 = load i8, i8* %arrayidx110.2, align 1
  %call111.2 = call zeroext i8 @mult(i8 zeroext %232, i8 zeroext %233)
  %arrayidx113.2 = getelementptr inbounds i8, i8* %c, i64 2
  store i8 %call111.2, i8* %arrayidx113.2, align 1
  %arrayidx128.2 = getelementptr inbounds i8, i8* %c, i64 2
  %scevgep22.288 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %231, i64 0, i64 0, i64 0
  %234 = load i8, i8* %scevgep22.288, align 1
  %conv126.289 = zext i8 %234 to i32
  %235 = load i8, i8* %arrayidx128.2, align 1
  %conv129.290 = zext i8 %235 to i32
  %xor130.291 = xor i32 %conv129.290, %conv126.289
  %conv131.292 = trunc i32 %xor130.291 to i8
  store i8 %conv131.292, i8* %arrayidx128.2, align 1
  %scevgep22.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %231, i64 0, i64 0, i64 1
  %236 = load i8, i8* %scevgep22.1.2, align 1
  %conv126.1.2 = zext i8 %236 to i32
  %237 = load i8, i8* %arrayidx128.2, align 1
  %conv129.1.2 = zext i8 %237 to i32
  %xor130.1.2 = xor i32 %conv129.1.2, %conv126.1.2
  %conv131.1.2 = trunc i32 %xor130.1.2 to i8
  store i8 %conv131.1.2, i8* %arrayidx128.2, align 1
  %scevgep22.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %231, i64 0, i64 0, i64 3
  %238 = load i8, i8* %scevgep22.3.2, align 1
  %conv126.3.2 = zext i8 %238 to i32
  %239 = load i8, i8* %arrayidx128.2, align 1
  %conv129.3.2 = zext i8 %239 to i32
  %xor130.3.2 = xor i32 %conv129.3.2, %conv126.3.2
  %conv131.3.2 = trunc i32 %xor130.3.2 to i8
  store i8 %conv131.3.2, i8* %arrayidx128.2, align 1
  %scevgep22.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %231, i64 0, i64 0, i64 4
  %240 = load i8, i8* %scevgep22.4.2, align 1
  %conv126.4.2 = zext i8 %240 to i32
  %241 = load i8, i8* %arrayidx128.2, align 1
  %conv129.4.2 = zext i8 %241 to i32
  %xor130.4.2 = xor i32 %conv129.4.2, %conv126.4.2
  %conv131.4.2 = trunc i32 %xor130.4.2 to i8
  store i8 %conv131.4.2, i8* %arrayidx128.2, align 1
  %scevgep21.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %231, i64 0, i64 1, i64 0
  %242 = bitcast i8* %scevgep21.2 to [5 x [5 x i8]]*
  %arrayidx108.3 = getelementptr inbounds i8, i8* %a, i64 3
  %243 = load i8, i8* %arrayidx108.3, align 1
  %arrayidx110.3 = getelementptr inbounds i8, i8* %b, i64 3
  %244 = load i8, i8* %arrayidx110.3, align 1
  %call111.3 = call zeroext i8 @mult(i8 zeroext %243, i8 zeroext %244)
  %arrayidx113.3 = getelementptr inbounds i8, i8* %c, i64 3
  store i8 %call111.3, i8* %arrayidx113.3, align 1
  %arrayidx128.3 = getelementptr inbounds i8, i8* %c, i64 3
  %scevgep22.398 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %242, i64 0, i64 0, i64 0
  %245 = load i8, i8* %scevgep22.398, align 1
  %conv126.399 = zext i8 %245 to i32
  %246 = load i8, i8* %arrayidx128.3, align 1
  %conv129.3100 = zext i8 %246 to i32
  %xor130.3101 = xor i32 %conv129.3100, %conv126.399
  %conv131.3102 = trunc i32 %xor130.3101 to i8
  store i8 %conv131.3102, i8* %arrayidx128.3, align 1
  %scevgep22.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %242, i64 0, i64 0, i64 1
  %247 = load i8, i8* %scevgep22.1.3, align 1
  %conv126.1.3 = zext i8 %247 to i32
  %248 = load i8, i8* %arrayidx128.3, align 1
  %conv129.1.3 = zext i8 %248 to i32
  %xor130.1.3 = xor i32 %conv129.1.3, %conv126.1.3
  %conv131.1.3 = trunc i32 %xor130.1.3 to i8
  store i8 %conv131.1.3, i8* %arrayidx128.3, align 1
  %scevgep22.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %242, i64 0, i64 0, i64 2
  %249 = load i8, i8* %scevgep22.2.3, align 1
  %conv126.2.3 = zext i8 %249 to i32
  %250 = load i8, i8* %arrayidx128.3, align 1
  %conv129.2.3 = zext i8 %250 to i32
  %xor130.2.3 = xor i32 %conv129.2.3, %conv126.2.3
  %conv131.2.3 = trunc i32 %xor130.2.3 to i8
  store i8 %conv131.2.3, i8* %arrayidx128.3, align 1
  %scevgep22.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %242, i64 0, i64 0, i64 4
  %251 = load i8, i8* %scevgep22.4.3, align 1
  %conv126.4.3 = zext i8 %251 to i32
  %252 = load i8, i8* %arrayidx128.3, align 1
  %conv129.4.3 = zext i8 %252 to i32
  %xor130.4.3 = xor i32 %conv129.4.3, %conv126.4.3
  %conv131.4.3 = trunc i32 %xor130.4.3 to i8
  store i8 %conv131.4.3, i8* %arrayidx128.3, align 1
  %scevgep21.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %242, i64 0, i64 1, i64 0
  %253 = bitcast i8* %scevgep21.3 to [5 x [5 x i8]]*
  %arrayidx108.4 = getelementptr inbounds i8, i8* %a, i64 4
  %254 = load i8, i8* %arrayidx108.4, align 1
  %arrayidx110.4 = getelementptr inbounds i8, i8* %b, i64 4
  %255 = load i8, i8* %arrayidx110.4, align 1
  %call111.4 = call zeroext i8 @mult(i8 zeroext %254, i8 zeroext %255)
  %arrayidx113.4 = getelementptr inbounds i8, i8* %c, i64 4
  store i8 %call111.4, i8* %arrayidx113.4, align 1
  %arrayidx128.4 = getelementptr inbounds i8, i8* %c, i64 4
  %scevgep22.4108 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %253, i64 0, i64 0, i64 0
  %256 = load i8, i8* %scevgep22.4108, align 1
  %conv126.4109 = zext i8 %256 to i32
  %257 = load i8, i8* %arrayidx128.4, align 1
  %conv129.4110 = zext i8 %257 to i32
  %xor130.4111 = xor i32 %conv129.4110, %conv126.4109
  %conv131.4112 = trunc i32 %xor130.4111 to i8
  store i8 %conv131.4112, i8* %arrayidx128.4, align 1
  %scevgep22.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %253, i64 0, i64 0, i64 1
  %258 = load i8, i8* %scevgep22.1.4, align 1
  %conv126.1.4 = zext i8 %258 to i32
  %259 = load i8, i8* %arrayidx128.4, align 1
  %conv129.1.4 = zext i8 %259 to i32
  %xor130.1.4 = xor i32 %conv129.1.4, %conv126.1.4
  %conv131.1.4 = trunc i32 %xor130.1.4 to i8
  store i8 %conv131.1.4, i8* %arrayidx128.4, align 1
  %scevgep22.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %253, i64 0, i64 0, i64 2
  %260 = load i8, i8* %scevgep22.2.4, align 1
  %conv126.2.4 = zext i8 %260 to i32
  %261 = load i8, i8* %arrayidx128.4, align 1
  %conv129.2.4 = zext i8 %261 to i32
  %xor130.2.4 = xor i32 %conv129.2.4, %conv126.2.4
  %conv131.2.4 = trunc i32 %xor130.2.4 to i8
  store i8 %conv131.2.4, i8* %arrayidx128.4, align 1
  %scevgep22.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %253, i64 0, i64 0, i64 3
  %262 = load i8, i8* %scevgep22.3.4, align 1
  %conv126.3.4 = zext i8 %262 to i32
  %263 = load i8, i8* %arrayidx128.4, align 1
  %conv129.3.4 = zext i8 %263 to i32
  %xor130.3.4 = xor i32 %conv129.3.4, %conv126.3.4
  %conv131.3.4 = trunc i32 %xor130.3.4 to i8
  store i8 %conv131.3.4, i8* %arrayidx128.4, align 1
  %call139 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv140 = zext i8 %call139 to i32
  %264 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %265 = load i8, i8* %scevgep.1, align 1
  %conv.i.i172.1 = zext i8 %265 to i32
  %conv1.i.i173.1 = zext i8 %264 to i32
  %xor.i.i174.1 = xor i32 %conv1.i.i173.1, %conv.i.i172.1
  %conv2.i.i175.1 = trunc i32 %xor.i.i174.1 to i8
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  %266 = load i8, i8* %scevgep.2, align 1
  %conv.i.i172.2 = zext i8 %266 to i32
  %conv1.i.i173.2 = zext i8 %conv2.i.i175.1 to i32
  %xor.i.i174.2 = xor i32 %conv1.i.i173.2, %conv.i.i172.2
  %conv2.i.i175.2 = trunc i32 %xor.i.i174.2 to i8
  %scevgep.3 = getelementptr i8, i8* %c, i64 3
  %267 = load i8, i8* %scevgep.3, align 1
  %conv.i.i172.3 = zext i8 %267 to i32
  %conv1.i.i173.3 = zext i8 %conv2.i.i175.2 to i32
  %xor.i.i174.3 = xor i32 %conv1.i.i173.3, %conv.i.i172.3
  %conv2.i.i175.3 = trunc i32 %xor.i.i174.3 to i8
  %scevgep.4 = getelementptr i8, i8* %c, i64 4
  %268 = load i8, i8* %scevgep.4, align 1
  %conv.i.i172.4 = zext i8 %268 to i32
  %conv1.i.i173.4 = zext i8 %conv2.i.i175.3 to i32
  %xor.i.i174.4 = xor i32 %conv1.i.i173.4, %conv.i.i172.4
  %conv2.i.i175.4 = trunc i32 %xor.i.i174.4 to i8
  %conv142 = zext i8 %conv2.i.i175.4 to i32
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
  %r.i = alloca [5 x [5 x i8]], align 16
  %s.i = alloca [5 x [5 x i8]], align 16
  %p0.i = alloca [5 x [5 x i8]], align 16
  %p1.i = alloca [5 x [5 x i8]], align 16
  %z.i = alloca [5 x [5 x i8]], align 16
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
  %scevgep291.3 = getelementptr i8, i8* %x, i64 3
  %3 = load i8, i8* %scevgep291.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %scevgep291.4 = getelementptr i8, i8* %x, i64 4
  %4 = load i8, i8* %scevgep291.4, align 1
  %conv.i.i.4 = zext i8 %4 to i32
  %conv1.i.i.4 = zext i8 %conv2.i.i.3 to i32
  %xor.i.i.4 = xor i32 %conv1.i.i.4, %conv.i.i.4
  %conv2.i.i.4 = trunc i32 %xor.i.i.4 to i8
  %conv2 = zext i8 %conv2.i.i.4 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %5 = load i8, i8* %x, align 1
  %call.i758 = call zeroext i8 @mult(i8 zeroext 2, i8 zeroext %5) #2
  %conv.i759 = zext i8 %call.i758 to i32
  %call.i.i760 = call zeroext i8 @mult(i8 zeroext %5, i8 zeroext %5) #2
  %call2.i761 = call zeroext i8 @mult(i8 zeroext 3, i8 zeroext %call.i.i760) #2
  %conv3.i762 = zext i8 %call2.i761 to i32
  %xor.i763 = xor i32 %conv.i759, %conv3.i762
  %call.i.i.i764 = call zeroext i8 @mult(i8 zeroext %5, i8 zeroext %5) #2
  %call.i3.i.i765 = call zeroext i8 @mult(i8 zeroext %call.i.i.i764, i8 zeroext %call.i.i.i764) #2
  %call5.i766 = call zeroext i8 @mult(i8 zeroext 5, i8 zeroext %call.i3.i.i765) #2
  %conv6.i767 = zext i8 %call5.i766 to i32
  %xor7.i768 = xor i32 %xor.i763, %conv6.i767
  %call.i.i.i.i769 = call zeroext i8 @mult(i8 zeroext %5, i8 zeroext %5) #2
  %call.i3.i.i.i770 = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i769, i8 zeroext %call.i.i.i.i769) #2
  %call.i.i17.i771 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i770, i8 zeroext %call.i3.i.i.i770) #2
  %call9.i772 = call zeroext i8 @mult(i8 zeroext 9, i8 zeroext %call.i.i17.i771) #2
  %conv10.i773 = zext i8 %call9.i772 to i32
  %xor11.i774 = xor i32 %xor7.i768, %conv10.i773
  %conv12.i775 = trunc i32 %xor11.i774 to i8
  %scevgep287 = getelementptr [5 x i8], [5 x i8]* %l1, i64 0, i64 0
  store i8 %conv12.i775, i8* %scevgep287, align 1
  %scevgep286.1 = getelementptr i8, i8* %x, i64 1
  %6 = load i8, i8* %scevgep286.1, align 1
  %call.i = call zeroext i8 @mult(i8 zeroext 2, i8 zeroext %6) #2
  %conv.i776 = zext i8 %call.i to i32
  %call.i.i777 = call zeroext i8 @mult(i8 zeroext %6, i8 zeroext %6) #2
  %call2.i778 = call zeroext i8 @mult(i8 zeroext 3, i8 zeroext %call.i.i777) #2
  %conv3.i779 = zext i8 %call2.i778 to i32
  %xor.i780 = xor i32 %conv.i776, %conv3.i779
  %call.i.i.i781 = call zeroext i8 @mult(i8 zeroext %6, i8 zeroext %6) #2
  %call.i3.i.i782 = call zeroext i8 @mult(i8 zeroext %call.i.i.i781, i8 zeroext %call.i.i.i781) #2
  %call5.i783 = call zeroext i8 @mult(i8 zeroext 5, i8 zeroext %call.i3.i.i782) #2
  %conv6.i784 = zext i8 %call5.i783 to i32
  %xor7.i785 = xor i32 %xor.i780, %conv6.i784
  %call.i.i.i.i786 = call zeroext i8 @mult(i8 zeroext %6, i8 zeroext %6) #2
  %call.i3.i.i.i787 = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i786, i8 zeroext %call.i.i.i.i786) #2
  %call.i.i17.i788 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i787, i8 zeroext %call.i3.i.i.i787) #2
  %call9.i789 = call zeroext i8 @mult(i8 zeroext 9, i8 zeroext %call.i.i17.i788) #2
  %conv10.i790 = zext i8 %call9.i789 to i32
  %xor11.i791 = xor i32 %xor7.i785, %conv10.i790
  %conv12.i792 = trunc i32 %xor11.i791 to i8
  %scevgep287.1 = getelementptr [5 x i8], [5 x i8]* %l1, i64 0, i64 1
  store i8 %conv12.i792, i8* %scevgep287.1, align 1
  %scevgep286.2 = getelementptr i8, i8* %x, i64 2
  %7 = load i8, i8* %scevgep286.2, align 1
  %call.i793 = call zeroext i8 @mult(i8 zeroext 2, i8 zeroext %7) #2
  %conv.i794 = zext i8 %call.i793 to i32
  %call.i.i795 = call zeroext i8 @mult(i8 zeroext %7, i8 zeroext %7) #2
  %call2.i796 = call zeroext i8 @mult(i8 zeroext 3, i8 zeroext %call.i.i795) #2
  %conv3.i797 = zext i8 %call2.i796 to i32
  %xor.i798 = xor i32 %conv.i794, %conv3.i797
  %call.i.i.i799 = call zeroext i8 @mult(i8 zeroext %7, i8 zeroext %7) #2
  %call.i3.i.i800 = call zeroext i8 @mult(i8 zeroext %call.i.i.i799, i8 zeroext %call.i.i.i799) #2
  %call5.i801 = call zeroext i8 @mult(i8 zeroext 5, i8 zeroext %call.i3.i.i800) #2
  %conv6.i802 = zext i8 %call5.i801 to i32
  %xor7.i803 = xor i32 %xor.i798, %conv6.i802
  %call.i.i.i.i804 = call zeroext i8 @mult(i8 zeroext %7, i8 zeroext %7) #2
  %call.i3.i.i.i805 = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i804, i8 zeroext %call.i.i.i.i804) #2
  %call.i.i17.i806 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i805, i8 zeroext %call.i3.i.i.i805) #2
  %call9.i807 = call zeroext i8 @mult(i8 zeroext 9, i8 zeroext %call.i.i17.i806) #2
  %conv10.i808 = zext i8 %call9.i807 to i32
  %xor11.i809 = xor i32 %xor7.i803, %conv10.i808
  %conv12.i810 = trunc i32 %xor11.i809 to i8
  %scevgep287.2 = getelementptr [5 x i8], [5 x i8]* %l1, i64 0, i64 2
  store i8 %conv12.i810, i8* %scevgep287.2, align 1
  %scevgep286.3 = getelementptr i8, i8* %x, i64 3
  %8 = load i8, i8* %scevgep286.3, align 1
  %call.i811 = call zeroext i8 @mult(i8 zeroext 2, i8 zeroext %8) #2
  %conv.i812 = zext i8 %call.i811 to i32
  %call.i.i813 = call zeroext i8 @mult(i8 zeroext %8, i8 zeroext %8) #2
  %call2.i814 = call zeroext i8 @mult(i8 zeroext 3, i8 zeroext %call.i.i813) #2
  %conv3.i815 = zext i8 %call2.i814 to i32
  %xor.i816 = xor i32 %conv.i812, %conv3.i815
  %call.i.i.i817 = call zeroext i8 @mult(i8 zeroext %8, i8 zeroext %8) #2
  %call.i3.i.i818 = call zeroext i8 @mult(i8 zeroext %call.i.i.i817, i8 zeroext %call.i.i.i817) #2
  %call5.i819 = call zeroext i8 @mult(i8 zeroext 5, i8 zeroext %call.i3.i.i818) #2
  %conv6.i820 = zext i8 %call5.i819 to i32
  %xor7.i821 = xor i32 %xor.i816, %conv6.i820
  %call.i.i.i.i822 = call zeroext i8 @mult(i8 zeroext %8, i8 zeroext %8) #2
  %call.i3.i.i.i823 = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i822, i8 zeroext %call.i.i.i.i822) #2
  %call.i.i17.i824 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i823, i8 zeroext %call.i3.i.i.i823) #2
  %call9.i825 = call zeroext i8 @mult(i8 zeroext 9, i8 zeroext %call.i.i17.i824) #2
  %conv10.i826 = zext i8 %call9.i825 to i32
  %xor11.i827 = xor i32 %xor7.i821, %conv10.i826
  %conv12.i828 = trunc i32 %xor11.i827 to i8
  %scevgep287.3 = getelementptr [5 x i8], [5 x i8]* %l1, i64 0, i64 3
  store i8 %conv12.i828, i8* %scevgep287.3, align 1
  %scevgep286.4 = getelementptr i8, i8* %x, i64 4
  %9 = load i8, i8* %scevgep286.4, align 1
  %call.i829 = call zeroext i8 @mult(i8 zeroext 2, i8 zeroext %9) #2
  %conv.i830 = zext i8 %call.i829 to i32
  %call.i.i831 = call zeroext i8 @mult(i8 zeroext %9, i8 zeroext %9) #2
  %call2.i832 = call zeroext i8 @mult(i8 zeroext 3, i8 zeroext %call.i.i831) #2
  %conv3.i833 = zext i8 %call2.i832 to i32
  %xor.i834 = xor i32 %conv.i830, %conv3.i833
  %call.i.i.i835 = call zeroext i8 @mult(i8 zeroext %9, i8 zeroext %9) #2
  %call.i3.i.i836 = call zeroext i8 @mult(i8 zeroext %call.i.i.i835, i8 zeroext %call.i.i.i835) #2
  %call5.i837 = call zeroext i8 @mult(i8 zeroext 5, i8 zeroext %call.i3.i.i836) #2
  %conv6.i838 = zext i8 %call5.i837 to i32
  %xor7.i839 = xor i32 %xor.i834, %conv6.i838
  %call.i.i.i.i840 = call zeroext i8 @mult(i8 zeroext %9, i8 zeroext %9) #2
  %call.i3.i.i.i841 = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i840, i8 zeroext %call.i.i.i.i840) #2
  %call.i.i17.i842 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i841, i8 zeroext %call.i3.i.i.i841) #2
  %call9.i843 = call zeroext i8 @mult(i8 zeroext 9, i8 zeroext %call.i.i17.i842) #2
  %conv10.i844 = zext i8 %call9.i843 to i32
  %xor11.i845 = xor i32 %xor7.i839, %conv10.i844
  %conv12.i846 = trunc i32 %xor11.i845 to i8
  %scevgep287.4 = getelementptr [5 x i8], [5 x i8]* %l1, i64 0, i64 4
  store i8 %conv12.i846, i8* %scevgep287.4, align 1
  %10 = load i8, i8* %x, align 1
  %call.i847 = call zeroext i8 @mult(i8 zeroext %10, i8 zeroext %10) #2
  %scevgep282 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 0
  store i8 %call.i847, i8* %scevgep282, align 1
  %scevgep281.1 = getelementptr i8, i8* %x, i64 1
  %11 = load i8, i8* %scevgep281.1, align 1
  %call.i848 = call zeroext i8 @mult(i8 zeroext %11, i8 zeroext %11) #2
  %scevgep282.1 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 1
  store i8 %call.i848, i8* %scevgep282.1, align 1
  %scevgep281.2 = getelementptr i8, i8* %x, i64 2
  %12 = load i8, i8* %scevgep281.2, align 1
  %call.i849 = call zeroext i8 @mult(i8 zeroext %12, i8 zeroext %12) #2
  %scevgep282.2 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 2
  store i8 %call.i849, i8* %scevgep282.2, align 1
  %scevgep281.3 = getelementptr i8, i8* %x, i64 3
  %13 = load i8, i8* %scevgep281.3, align 1
  %call.i850 = call zeroext i8 @mult(i8 zeroext %13, i8 zeroext %13) #2
  %scevgep282.3 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 3
  store i8 %call.i850, i8* %scevgep282.3, align 1
  %scevgep281.4 = getelementptr i8, i8* %x, i64 4
  %14 = load i8, i8* %scevgep281.4, align 1
  %call.i851 = call zeroext i8 @mult(i8 zeroext %14, i8 zeroext %14) #2
  %scevgep282.4 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 4
  store i8 %call.i851, i8* %scevgep282.4, align 1
  %15 = load i8, i8* %x, align 1
  %call.i.i852 = call zeroext i8 @mult(i8 zeroext %15, i8 zeroext %15) #2
  %call.i3.i = call zeroext i8 @mult(i8 zeroext %call.i.i852, i8 zeroext %call.i.i852) #2
  %scevgep277 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 0
  store i8 %call.i3.i, i8* %scevgep277, align 1
  %scevgep276.1 = getelementptr i8, i8* %x, i64 1
  %16 = load i8, i8* %scevgep276.1, align 1
  %call.i.i853 = call zeroext i8 @mult(i8 zeroext %16, i8 zeroext %16) #2
  %call.i3.i854 = call zeroext i8 @mult(i8 zeroext %call.i.i853, i8 zeroext %call.i.i853) #2
  %scevgep277.1 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 1
  store i8 %call.i3.i854, i8* %scevgep277.1, align 1
  %scevgep276.2 = getelementptr i8, i8* %x, i64 2
  %17 = load i8, i8* %scevgep276.2, align 1
  %call.i.i855 = call zeroext i8 @mult(i8 zeroext %17, i8 zeroext %17) #2
  %call.i3.i856 = call zeroext i8 @mult(i8 zeroext %call.i.i855, i8 zeroext %call.i.i855) #2
  %scevgep277.2 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 2
  store i8 %call.i3.i856, i8* %scevgep277.2, align 1
  %scevgep276.3 = getelementptr i8, i8* %x, i64 3
  %18 = load i8, i8* %scevgep276.3, align 1
  %call.i.i857 = call zeroext i8 @mult(i8 zeroext %18, i8 zeroext %18) #2
  %call.i3.i858 = call zeroext i8 @mult(i8 zeroext %call.i.i857, i8 zeroext %call.i.i857) #2
  %scevgep277.3 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 3
  store i8 %call.i3.i858, i8* %scevgep277.3, align 1
  %scevgep276.4 = getelementptr i8, i8* %x, i64 4
  %19 = load i8, i8* %scevgep276.4, align 1
  %call.i.i859 = call zeroext i8 @mult(i8 zeroext %19, i8 zeroext %19) #2
  %call.i3.i860 = call zeroext i8 @mult(i8 zeroext %call.i.i859, i8 zeroext %call.i.i859) #2
  %scevgep277.4 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 4
  store i8 %call.i3.i860, i8* %scevgep277.4, align 1
  %arraydecay6 = getelementptr inbounds [5 x i8], [5 x i8]* %e2, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [5 x i8], [5 x i8]* %e3, i64 0, i64 0
  %call.i77 = call zeroext i8 (...) @rand() #2
  %call1.i = call zeroext i8 (...) @rand() #2
  %conv.i = zext i8 %call.i77 to i32
  %20 = load i8, i8* %x, align 1
  %scevgep272.1 = getelementptr i8, i8* %x, i64 1
  %21 = load i8, i8* %scevgep272.1, align 1
  %conv.i.i.i.1 = zext i8 %21 to i32
  %conv1.i.i.i.1 = zext i8 %20 to i32
  %xor.i.i.i.1 = xor i32 %conv1.i.i.i.1, %conv.i.i.i.1
  %conv2.i.i.i.1 = trunc i32 %xor.i.i.i.1 to i8
  %scevgep272.2 = getelementptr i8, i8* %x, i64 2
  %22 = load i8, i8* %scevgep272.2, align 1
  %conv.i.i.i.2 = zext i8 %22 to i32
  %conv1.i.i.i.2 = zext i8 %conv2.i.i.i.1 to i32
  %xor.i.i.i.2 = xor i32 %conv1.i.i.i.2, %conv.i.i.i.2
  %conv2.i.i.i.2 = trunc i32 %xor.i.i.i.2 to i8
  %scevgep272.3 = getelementptr i8, i8* %x, i64 3
  %23 = load i8, i8* %scevgep272.3, align 1
  %conv.i.i.i.3 = zext i8 %23 to i32
  %conv1.i.i.i.3 = zext i8 %conv2.i.i.i.2 to i32
  %xor.i.i.i.3 = xor i32 %conv1.i.i.i.3, %conv.i.i.i.3
  %conv2.i.i.i.3 = trunc i32 %xor.i.i.i.3 to i8
  %scevgep272.4 = getelementptr i8, i8* %x, i64 4
  %24 = load i8, i8* %scevgep272.4, align 1
  %conv.i.i.i.4 = zext i8 %24 to i32
  %conv1.i.i.i.4 = zext i8 %conv2.i.i.i.3 to i32
  %xor.i.i.i.4 = xor i32 %conv1.i.i.i.4, %conv.i.i.i.4
  %conv2.i.i.i.4 = trunc i32 %xor.i.i.i.4 to i8
  %conv3.i = zext i8 %conv2.i.i.i.4 to i32
  %cmp.i78 = icmp eq i32 %conv.i, %conv3.i
  call void @assume(i1 zeroext %cmp.i78) #2
  %conv5.i = zext i8 %call1.i to i32
  %scevgep268 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 0
  %25 = load i8, i8* %scevgep268, align 1
  %scevgep268.1 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 1
  %26 = load i8, i8* %scevgep268.1, align 1
  %conv.i.i155.i.1 = zext i8 %26 to i32
  %conv1.i.i156.i.1 = zext i8 %25 to i32
  %xor.i.i157.i.1 = xor i32 %conv1.i.i156.i.1, %conv.i.i155.i.1
  %conv2.i.i158.i.1 = trunc i32 %xor.i.i157.i.1 to i8
  %scevgep268.2 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 2
  %27 = load i8, i8* %scevgep268.2, align 1
  %conv.i.i155.i.2 = zext i8 %27 to i32
  %conv1.i.i156.i.2 = zext i8 %conv2.i.i158.i.1 to i32
  %xor.i.i157.i.2 = xor i32 %conv1.i.i156.i.2, %conv.i.i155.i.2
  %conv2.i.i158.i.2 = trunc i32 %xor.i.i157.i.2 to i8
  %scevgep268.3 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 3
  %28 = load i8, i8* %scevgep268.3, align 1
  %conv.i.i155.i.3 = zext i8 %28 to i32
  %conv1.i.i156.i.3 = zext i8 %conv2.i.i158.i.2 to i32
  %xor.i.i157.i.3 = xor i32 %conv1.i.i156.i.3, %conv.i.i155.i.3
  %conv2.i.i158.i.3 = trunc i32 %xor.i.i157.i.3 to i8
  %scevgep268.4 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 4
  %29 = load i8, i8* %scevgep268.4, align 1
  %conv.i.i155.i.4 = zext i8 %29 to i32
  %conv1.i.i156.i.4 = zext i8 %conv2.i.i158.i.3 to i32
  %xor.i.i157.i.4 = xor i32 %conv1.i.i156.i.4, %conv.i.i155.i.4
  %conv2.i.i158.i.4 = trunc i32 %xor.i.i157.i.4 to i8
  %conv7.i = zext i8 %conv2.i.i158.i.4 to i32
  %cmp8.i = icmp eq i32 %conv5.i, %conv7.i
  call void @assume(i1 zeroext %cmp8.i) #2
  %scevgep252 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %scevgep252253 = bitcast i8* %scevgep252 to [5 x [5 x i8]]*
  %scevgep259 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 1, i64 0
  %scevgep259260 = bitcast i8* %scevgep259 to [5 x [5 x i8]]*
  %call16.i = call zeroext i8 (...) @rand() #2
  store i8 %call16.i, i8* %scevgep252, align 1
  %30 = load i8, i8* %scevgep252, align 1
  store i8 %30, i8* %scevgep259, align 1
  %scevgep257 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep252253, i64 0, i64 0, i64 1
  %31 = bitcast i8* %scevgep257 to [5 x [5 x i8]]*
  %scevgep264 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep259260, i64 0, i64 1, i64 0
  %32 = bitcast i8* %scevgep264 to [5 x [5 x i8]]*
  %call16.i.1743 = call zeroext i8 (...) @rand() #2
  store i8 %call16.i.1743, i8* %scevgep257, align 1
  %33 = load i8, i8* %scevgep257, align 1
  store i8 %33, i8* %scevgep264, align 1
  %scevgep257.1744 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %31, i64 0, i64 0, i64 1
  %34 = bitcast i8* %scevgep257.1744 to [5 x [5 x i8]]*
  %scevgep264.1745 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %32, i64 0, i64 1, i64 0
  %35 = bitcast i8* %scevgep264.1745 to [5 x [5 x i8]]*
  %call16.i.2747 = call zeroext i8 (...) @rand() #2
  store i8 %call16.i.2747, i8* %scevgep257.1744, align 1
  %36 = load i8, i8* %scevgep257.1744, align 1
  store i8 %36, i8* %scevgep264.1745, align 1
  %scevgep257.2748 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %34, i64 0, i64 0, i64 1
  %scevgep264.2749 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %35, i64 0, i64 1, i64 0
  %call16.i.3751 = call zeroext i8 (...) @rand() #2
  store i8 %call16.i.3751, i8* %scevgep257.2748, align 1
  %37 = load i8, i8* %scevgep257.2748, align 1
  store i8 %37, i8* %scevgep264.2749, align 1
  %scevgep255 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep252253, i64 0, i64 1, i64 1
  %38 = bitcast i8* %scevgep255 to [5 x [5 x i8]]*
  %scevgep262 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep259260, i64 0, i64 1, i64 1
  %39 = bitcast i8* %scevgep262 to [5 x [5 x i8]]*
  %call16.i.1 = call zeroext i8 (...) @rand() #2
  store i8 %call16.i.1, i8* %scevgep255, align 1
  %40 = load i8, i8* %scevgep255, align 1
  store i8 %40, i8* %scevgep262, align 1
  %scevgep257.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %38, i64 0, i64 0, i64 1
  %41 = bitcast i8* %scevgep257.1 to [5 x [5 x i8]]*
  %scevgep264.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %39, i64 0, i64 1, i64 0
  %42 = bitcast i8* %scevgep264.1 to [5 x [5 x i8]]*
  %call16.i.1.1 = call zeroext i8 (...) @rand() #2
  store i8 %call16.i.1.1, i8* %scevgep257.1, align 1
  %43 = load i8, i8* %scevgep257.1, align 1
  store i8 %43, i8* %scevgep264.1, align 1
  %scevgep257.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %41, i64 0, i64 0, i64 1
  %scevgep264.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %42, i64 0, i64 1, i64 0
  %call16.i.1.2 = call zeroext i8 (...) @rand() #2
  store i8 %call16.i.1.2, i8* %scevgep257.1.1, align 1
  %44 = load i8, i8* %scevgep257.1.1, align 1
  store i8 %44, i8* %scevgep264.1.1, align 1
  %scevgep255.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %38, i64 0, i64 1, i64 1
  %45 = bitcast i8* %scevgep255.1 to [5 x [5 x i8]]*
  %scevgep262.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %39, i64 0, i64 1, i64 1
  %46 = bitcast i8* %scevgep262.1 to [5 x [5 x i8]]*
  %call16.i.2 = call zeroext i8 (...) @rand() #2
  store i8 %call16.i.2, i8* %scevgep255.1, align 1
  %47 = load i8, i8* %scevgep255.1, align 1
  store i8 %47, i8* %scevgep262.1, align 1
  %scevgep257.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %45, i64 0, i64 0, i64 1
  %scevgep264.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %46, i64 0, i64 1, i64 0
  %call16.i.2.1 = call zeroext i8 (...) @rand() #2
  store i8 %call16.i.2.1, i8* %scevgep257.2, align 1
  %48 = load i8, i8* %scevgep257.2, align 1
  store i8 %48, i8* %scevgep264.2, align 1
  %scevgep255.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %45, i64 0, i64 1, i64 1
  %scevgep262.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %46, i64 0, i64 1, i64 1
  %call16.i.3 = call zeroext i8 (...) @rand() #2
  store i8 %call16.i.3, i8* %scevgep255.2, align 1
  %49 = load i8, i8* %scevgep255.2, align 1
  store i8 %49, i8* %scevgep262.2, align 1
  %scevgep229.1 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 1
  %50 = load i8, i8* %scevgep229.1, align 1
  %conv44.i.1 = zext i8 %50 to i32
  %scevgep232.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %51 = load i8, i8* %scevgep232.1, align 1
  %conv49.i.1 = zext i8 %51 to i32
  %xor.i.1 = xor i32 %conv44.i.1, %conv49.i.1
  %conv50.i.1 = trunc i32 %xor.i.1 to i8
  %scevgep236.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i.1, i8* %scevgep236.1, align 1
  %52 = load i8, i8* %x, align 1
  %conv57.i.1 = zext i8 %52 to i32
  %xor58.i.1 = xor i32 %conv57.i.1, 1
  %conv59.i.1 = trunc i32 %xor58.i.1 to i8
  %scevgep233.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %53 = load i8, i8* %scevgep233.1, align 1
  %call64.i.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.1, i8 zeroext %53) #2
  %scevgep240.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i.1, i8* %scevgep240.1, align 1
  %54 = load i8, i8* %x, align 1
  %scevgep237.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 1
  %55 = load i8, i8* %scevgep237.1, align 1
  %call75.i.1 = call zeroext i8 @mult(i8 zeroext %54, i8 zeroext %55) #2
  %scevgep244.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i.1, i8* %scevgep244.1, align 1
  %scevgep241.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %56 = load i8, i8* %scevgep241.1, align 1
  %conv84.i.1 = zext i8 %56 to i32
  %scevgep245.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %57 = load i8, i8* %scevgep245.1, align 1
  %conv89.i.1 = zext i8 %57 to i32
  %xor90.i.1 = xor i32 %conv84.i.1, %conv89.i.1
  %conv91.i.1 = trunc i32 %xor90.i.1 to i8
  %scevgep248.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i.1, i8* %scevgep248.1, align 1
  %scevgep229.2 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 2
  %58 = load i8, i8* %scevgep229.2, align 1
  %conv44.i.2 = zext i8 %58 to i32
  %scevgep232.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 2
  %59 = load i8, i8* %scevgep232.2, align 1
  %conv49.i.2 = zext i8 %59 to i32
  %xor.i.2 = xor i32 %conv44.i.2, %conv49.i.2
  %conv50.i.2 = trunc i32 %xor.i.2 to i8
  %scevgep236.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 2
  store i8 %conv50.i.2, i8* %scevgep236.2, align 1
  %60 = load i8, i8* %x, align 1
  %conv57.i.2 = zext i8 %60 to i32
  %xor58.i.2 = xor i32 %conv57.i.2, 1
  %conv59.i.2 = trunc i32 %xor58.i.2 to i8
  %scevgep233.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 2
  %61 = load i8, i8* %scevgep233.2, align 1
  %call64.i.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.2, i8 zeroext %61) #2
  %scevgep240.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 2
  store i8 %call64.i.2, i8* %scevgep240.2, align 1
  %62 = load i8, i8* %x, align 1
  %scevgep237.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 2
  %63 = load i8, i8* %scevgep237.2, align 1
  %call75.i.2 = call zeroext i8 @mult(i8 zeroext %62, i8 zeroext %63) #2
  %scevgep244.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 2
  store i8 %call75.i.2, i8* %scevgep244.2, align 1
  %scevgep241.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 2
  %64 = load i8, i8* %scevgep241.2, align 1
  %conv84.i.2 = zext i8 %64 to i32
  %scevgep245.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 2
  %65 = load i8, i8* %scevgep245.2, align 1
  %conv89.i.2 = zext i8 %65 to i32
  %xor90.i.2 = xor i32 %conv84.i.2, %conv89.i.2
  %conv91.i.2 = trunc i32 %xor90.i.2 to i8
  %scevgep248.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 2
  store i8 %conv91.i.2, i8* %scevgep248.2, align 1
  %scevgep229.3 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 3
  %66 = load i8, i8* %scevgep229.3, align 1
  %conv44.i.3 = zext i8 %66 to i32
  %scevgep232.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 3
  %67 = load i8, i8* %scevgep232.3, align 1
  %conv49.i.3 = zext i8 %67 to i32
  %xor.i.3 = xor i32 %conv44.i.3, %conv49.i.3
  %conv50.i.3 = trunc i32 %xor.i.3 to i8
  %scevgep236.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 3
  store i8 %conv50.i.3, i8* %scevgep236.3, align 1
  %68 = load i8, i8* %x, align 1
  %conv57.i.3 = zext i8 %68 to i32
  %xor58.i.3 = xor i32 %conv57.i.3, 1
  %conv59.i.3 = trunc i32 %xor58.i.3 to i8
  %scevgep233.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 3
  %69 = load i8, i8* %scevgep233.3, align 1
  %call64.i.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.3, i8 zeroext %69) #2
  %scevgep240.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 3
  store i8 %call64.i.3, i8* %scevgep240.3, align 1
  %70 = load i8, i8* %x, align 1
  %scevgep237.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 3
  %71 = load i8, i8* %scevgep237.3, align 1
  %call75.i.3 = call zeroext i8 @mult(i8 zeroext %70, i8 zeroext %71) #2
  %scevgep244.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 3
  store i8 %call75.i.3, i8* %scevgep244.3, align 1
  %scevgep241.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 3
  %72 = load i8, i8* %scevgep241.3, align 1
  %conv84.i.3 = zext i8 %72 to i32
  %scevgep245.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 3
  %73 = load i8, i8* %scevgep245.3, align 1
  %conv89.i.3 = zext i8 %73 to i32
  %xor90.i.3 = xor i32 %conv84.i.3, %conv89.i.3
  %conv91.i.3 = trunc i32 %xor90.i.3 to i8
  %scevgep248.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 3
  store i8 %conv91.i.3, i8* %scevgep248.3, align 1
  %scevgep229.4 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 4
  %74 = load i8, i8* %scevgep229.4, align 1
  %conv44.i.4 = zext i8 %74 to i32
  %scevgep232.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 4
  %75 = load i8, i8* %scevgep232.4, align 1
  %conv49.i.4 = zext i8 %75 to i32
  %xor.i.4 = xor i32 %conv44.i.4, %conv49.i.4
  %conv50.i.4 = trunc i32 %xor.i.4 to i8
  %scevgep236.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 4
  store i8 %conv50.i.4, i8* %scevgep236.4, align 1
  %76 = load i8, i8* %x, align 1
  %conv57.i.4 = zext i8 %76 to i32
  %xor58.i.4 = xor i32 %conv57.i.4, 1
  %conv59.i.4 = trunc i32 %xor58.i.4 to i8
  %scevgep233.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 4
  %77 = load i8, i8* %scevgep233.4, align 1
  %call64.i.4 = call zeroext i8 @mult(i8 zeroext %conv59.i.4, i8 zeroext %77) #2
  %scevgep240.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 4
  store i8 %call64.i.4, i8* %scevgep240.4, align 1
  %78 = load i8, i8* %x, align 1
  %scevgep237.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 4
  %79 = load i8, i8* %scevgep237.4, align 1
  %call75.i.4 = call zeroext i8 @mult(i8 zeroext %78, i8 zeroext %79) #2
  %scevgep244.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 4
  store i8 %call75.i.4, i8* %scevgep244.4, align 1
  %scevgep241.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 4
  %80 = load i8, i8* %scevgep241.4, align 1
  %conv84.i.4 = zext i8 %80 to i32
  %scevgep245.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 4
  %81 = load i8, i8* %scevgep245.4, align 1
  %conv89.i.4 = zext i8 %81 to i32
  %xor90.i.4 = xor i32 %conv84.i.4, %conv89.i.4
  %conv91.i.4 = trunc i32 %xor90.i.4 to i8
  %scevgep248.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 4
  store i8 %conv91.i.4, i8* %scevgep248.4, align 1
  %scevgep231 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 1, i64 0
  %82 = bitcast i8* %scevgep231 to [5 x [5 x i8]]*
  %scevgep235 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 1, i64 0
  %83 = bitcast i8* %scevgep235 to [5 x [5 x i8]]*
  %scevgep239 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %84 = bitcast i8* %scevgep239 to [5 x [5 x i8]]*
  %scevgep243 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %85 = bitcast i8* %scevgep243 to [5 x [5 x i8]]*
  %scevgep247 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 1, i64 0
  %86 = bitcast i8* %scevgep247 to [5 x [5 x i8]]*
  %arrayidx56.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %arrayidx70.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %scevgep229.1619 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 0
  %87 = load i8, i8* %scevgep229.1619, align 1
  %conv44.i.1620 = zext i8 %87 to i32
  %scevgep232.1621 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %82, i64 0, i64 0, i64 0
  %88 = load i8, i8* %scevgep232.1621, align 1
  %conv49.i.1622 = zext i8 %88 to i32
  %xor.i.1623 = xor i32 %conv44.i.1620, %conv49.i.1622
  %conv50.i.1624 = trunc i32 %xor.i.1623 to i8
  %scevgep236.1625 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %83, i64 0, i64 0, i64 0
  store i8 %conv50.i.1624, i8* %scevgep236.1625, align 1
  %89 = load i8, i8* %arrayidx56.i.1, align 1
  %conv57.i.1626 = zext i8 %89 to i32
  %xor58.i.1627 = xor i32 %conv57.i.1626, 1
  %conv59.i.1628 = trunc i32 %xor58.i.1627 to i8
  %scevgep233.1629 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %82, i64 0, i64 0, i64 0
  %90 = load i8, i8* %scevgep233.1629, align 1
  %call64.i.1630 = call zeroext i8 @mult(i8 zeroext %conv59.i.1628, i8 zeroext %90) #2
  %scevgep240.1631 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %84, i64 0, i64 0, i64 0
  store i8 %call64.i.1630, i8* %scevgep240.1631, align 1
  %91 = load i8, i8* %arrayidx70.i.1, align 1
  %scevgep237.1632 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %83, i64 0, i64 0, i64 0
  %92 = load i8, i8* %scevgep237.1632, align 1
  %call75.i.1633 = call zeroext i8 @mult(i8 zeroext %91, i8 zeroext %92) #2
  %scevgep244.1634 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %85, i64 0, i64 0, i64 0
  store i8 %call75.i.1633, i8* %scevgep244.1634, align 1
  %scevgep241.1635 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %84, i64 0, i64 0, i64 0
  %93 = load i8, i8* %scevgep241.1635, align 1
  %conv84.i.1636 = zext i8 %93 to i32
  %scevgep245.1637 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %85, i64 0, i64 0, i64 0
  %94 = load i8, i8* %scevgep245.1637, align 1
  %conv89.i.1638 = zext i8 %94 to i32
  %xor90.i.1639 = xor i32 %conv84.i.1636, %conv89.i.1638
  %conv91.i.1640 = trunc i32 %xor90.i.1639 to i8
  %scevgep248.1641 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %86, i64 0, i64 0, i64 0
  store i8 %conv91.i.1640, i8* %scevgep248.1641, align 1
  %scevgep229.2.1 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 2
  %95 = load i8, i8* %scevgep229.2.1, align 1
  %conv44.i.2.1 = zext i8 %95 to i32
  %scevgep232.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %82, i64 0, i64 0, i64 2
  %96 = load i8, i8* %scevgep232.2.1, align 1
  %conv49.i.2.1 = zext i8 %96 to i32
  %xor.i.2.1 = xor i32 %conv44.i.2.1, %conv49.i.2.1
  %conv50.i.2.1 = trunc i32 %xor.i.2.1 to i8
  %scevgep236.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %83, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.1, i8* %scevgep236.2.1, align 1
  %97 = load i8, i8* %arrayidx56.i.1, align 1
  %conv57.i.2.1 = zext i8 %97 to i32
  %xor58.i.2.1 = xor i32 %conv57.i.2.1, 1
  %conv59.i.2.1 = trunc i32 %xor58.i.2.1 to i8
  %scevgep233.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %82, i64 0, i64 0, i64 2
  %98 = load i8, i8* %scevgep233.2.1, align 1
  %call64.i.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.1, i8 zeroext %98) #2
  %scevgep240.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %84, i64 0, i64 0, i64 2
  store i8 %call64.i.2.1, i8* %scevgep240.2.1, align 1
  %99 = load i8, i8* %arrayidx70.i.1, align 1
  %scevgep237.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %83, i64 0, i64 0, i64 2
  %100 = load i8, i8* %scevgep237.2.1, align 1
  %call75.i.2.1 = call zeroext i8 @mult(i8 zeroext %99, i8 zeroext %100) #2
  %scevgep244.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %85, i64 0, i64 0, i64 2
  store i8 %call75.i.2.1, i8* %scevgep244.2.1, align 1
  %scevgep241.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %84, i64 0, i64 0, i64 2
  %101 = load i8, i8* %scevgep241.2.1, align 1
  %conv84.i.2.1 = zext i8 %101 to i32
  %scevgep245.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %85, i64 0, i64 0, i64 2
  %102 = load i8, i8* %scevgep245.2.1, align 1
  %conv89.i.2.1 = zext i8 %102 to i32
  %xor90.i.2.1 = xor i32 %conv84.i.2.1, %conv89.i.2.1
  %conv91.i.2.1 = trunc i32 %xor90.i.2.1 to i8
  %scevgep248.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %86, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.1, i8* %scevgep248.2.1, align 1
  %scevgep229.3.1 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 3
  %103 = load i8, i8* %scevgep229.3.1, align 1
  %conv44.i.3.1 = zext i8 %103 to i32
  %scevgep232.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %82, i64 0, i64 0, i64 3
  %104 = load i8, i8* %scevgep232.3.1, align 1
  %conv49.i.3.1 = zext i8 %104 to i32
  %xor.i.3.1 = xor i32 %conv44.i.3.1, %conv49.i.3.1
  %conv50.i.3.1 = trunc i32 %xor.i.3.1 to i8
  %scevgep236.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %83, i64 0, i64 0, i64 3
  store i8 %conv50.i.3.1, i8* %scevgep236.3.1, align 1
  %105 = load i8, i8* %arrayidx56.i.1, align 1
  %conv57.i.3.1 = zext i8 %105 to i32
  %xor58.i.3.1 = xor i32 %conv57.i.3.1, 1
  %conv59.i.3.1 = trunc i32 %xor58.i.3.1 to i8
  %scevgep233.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %82, i64 0, i64 0, i64 3
  %106 = load i8, i8* %scevgep233.3.1, align 1
  %call64.i.3.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.3.1, i8 zeroext %106) #2
  %scevgep240.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %84, i64 0, i64 0, i64 3
  store i8 %call64.i.3.1, i8* %scevgep240.3.1, align 1
  %107 = load i8, i8* %arrayidx70.i.1, align 1
  %scevgep237.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %83, i64 0, i64 0, i64 3
  %108 = load i8, i8* %scevgep237.3.1, align 1
  %call75.i.3.1 = call zeroext i8 @mult(i8 zeroext %107, i8 zeroext %108) #2
  %scevgep244.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %85, i64 0, i64 0, i64 3
  store i8 %call75.i.3.1, i8* %scevgep244.3.1, align 1
  %scevgep241.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %84, i64 0, i64 0, i64 3
  %109 = load i8, i8* %scevgep241.3.1, align 1
  %conv84.i.3.1 = zext i8 %109 to i32
  %scevgep245.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %85, i64 0, i64 0, i64 3
  %110 = load i8, i8* %scevgep245.3.1, align 1
  %conv89.i.3.1 = zext i8 %110 to i32
  %xor90.i.3.1 = xor i32 %conv84.i.3.1, %conv89.i.3.1
  %conv91.i.3.1 = trunc i32 %xor90.i.3.1 to i8
  %scevgep248.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %86, i64 0, i64 0, i64 3
  store i8 %conv91.i.3.1, i8* %scevgep248.3.1, align 1
  %scevgep229.4.1 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 4
  %111 = load i8, i8* %scevgep229.4.1, align 1
  %conv44.i.4.1 = zext i8 %111 to i32
  %scevgep232.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %82, i64 0, i64 0, i64 4
  %112 = load i8, i8* %scevgep232.4.1, align 1
  %conv49.i.4.1 = zext i8 %112 to i32
  %xor.i.4.1 = xor i32 %conv44.i.4.1, %conv49.i.4.1
  %conv50.i.4.1 = trunc i32 %xor.i.4.1 to i8
  %scevgep236.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %83, i64 0, i64 0, i64 4
  store i8 %conv50.i.4.1, i8* %scevgep236.4.1, align 1
  %113 = load i8, i8* %arrayidx56.i.1, align 1
  %conv57.i.4.1 = zext i8 %113 to i32
  %xor58.i.4.1 = xor i32 %conv57.i.4.1, 1
  %conv59.i.4.1 = trunc i32 %xor58.i.4.1 to i8
  %scevgep233.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %82, i64 0, i64 0, i64 4
  %114 = load i8, i8* %scevgep233.4.1, align 1
  %call64.i.4.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.4.1, i8 zeroext %114) #2
  %scevgep240.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %84, i64 0, i64 0, i64 4
  store i8 %call64.i.4.1, i8* %scevgep240.4.1, align 1
  %115 = load i8, i8* %arrayidx70.i.1, align 1
  %scevgep237.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %83, i64 0, i64 0, i64 4
  %116 = load i8, i8* %scevgep237.4.1, align 1
  %call75.i.4.1 = call zeroext i8 @mult(i8 zeroext %115, i8 zeroext %116) #2
  %scevgep244.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %85, i64 0, i64 0, i64 4
  store i8 %call75.i.4.1, i8* %scevgep244.4.1, align 1
  %scevgep241.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %84, i64 0, i64 0, i64 4
  %117 = load i8, i8* %scevgep241.4.1, align 1
  %conv84.i.4.1 = zext i8 %117 to i32
  %scevgep245.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %85, i64 0, i64 0, i64 4
  %118 = load i8, i8* %scevgep245.4.1, align 1
  %conv89.i.4.1 = zext i8 %118 to i32
  %xor90.i.4.1 = xor i32 %conv84.i.4.1, %conv89.i.4.1
  %conv91.i.4.1 = trunc i32 %xor90.i.4.1 to i8
  %scevgep248.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %86, i64 0, i64 0, i64 4
  store i8 %conv91.i.4.1, i8* %scevgep248.4.1, align 1
  %scevgep231.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %82, i64 0, i64 1, i64 0
  %119 = bitcast i8* %scevgep231.1 to [5 x [5 x i8]]*
  %scevgep235.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %83, i64 0, i64 1, i64 0
  %120 = bitcast i8* %scevgep235.1 to [5 x [5 x i8]]*
  %scevgep239.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %84, i64 0, i64 1, i64 0
  %121 = bitcast i8* %scevgep239.1 to [5 x [5 x i8]]*
  %scevgep243.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %85, i64 0, i64 1, i64 0
  %122 = bitcast i8* %scevgep243.1 to [5 x [5 x i8]]*
  %scevgep247.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %86, i64 0, i64 1, i64 0
  %123 = bitcast i8* %scevgep247.1 to [5 x [5 x i8]]*
  %arrayidx56.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %arrayidx70.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %scevgep229.2646 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 0
  %124 = load i8, i8* %scevgep229.2646, align 1
  %conv44.i.2647 = zext i8 %124 to i32
  %scevgep232.2648 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %119, i64 0, i64 0, i64 0
  %125 = load i8, i8* %scevgep232.2648, align 1
  %conv49.i.2649 = zext i8 %125 to i32
  %xor.i.2650 = xor i32 %conv44.i.2647, %conv49.i.2649
  %conv50.i.2651 = trunc i32 %xor.i.2650 to i8
  %scevgep236.2652 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %120, i64 0, i64 0, i64 0
  store i8 %conv50.i.2651, i8* %scevgep236.2652, align 1
  %126 = load i8, i8* %arrayidx56.i.2, align 1
  %conv57.i.2653 = zext i8 %126 to i32
  %xor58.i.2654 = xor i32 %conv57.i.2653, 1
  %conv59.i.2655 = trunc i32 %xor58.i.2654 to i8
  %scevgep233.2656 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %119, i64 0, i64 0, i64 0
  %127 = load i8, i8* %scevgep233.2656, align 1
  %call64.i.2657 = call zeroext i8 @mult(i8 zeroext %conv59.i.2655, i8 zeroext %127) #2
  %scevgep240.2658 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %121, i64 0, i64 0, i64 0
  store i8 %call64.i.2657, i8* %scevgep240.2658, align 1
  %128 = load i8, i8* %arrayidx70.i.2, align 1
  %scevgep237.2659 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %120, i64 0, i64 0, i64 0
  %129 = load i8, i8* %scevgep237.2659, align 1
  %call75.i.2660 = call zeroext i8 @mult(i8 zeroext %128, i8 zeroext %129) #2
  %scevgep244.2661 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %122, i64 0, i64 0, i64 0
  store i8 %call75.i.2660, i8* %scevgep244.2661, align 1
  %scevgep241.2662 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %121, i64 0, i64 0, i64 0
  %130 = load i8, i8* %scevgep241.2662, align 1
  %conv84.i.2663 = zext i8 %130 to i32
  %scevgep245.2664 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %122, i64 0, i64 0, i64 0
  %131 = load i8, i8* %scevgep245.2664, align 1
  %conv89.i.2665 = zext i8 %131 to i32
  %xor90.i.2666 = xor i32 %conv84.i.2663, %conv89.i.2665
  %conv91.i.2667 = trunc i32 %xor90.i.2666 to i8
  %scevgep248.2668 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %123, i64 0, i64 0, i64 0
  store i8 %conv91.i.2667, i8* %scevgep248.2668, align 1
  %scevgep229.1.2 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 1
  %132 = load i8, i8* %scevgep229.1.2, align 1
  %conv44.i.1.2 = zext i8 %132 to i32
  %scevgep232.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %119, i64 0, i64 0, i64 1
  %133 = load i8, i8* %scevgep232.1.2, align 1
  %conv49.i.1.2 = zext i8 %133 to i32
  %xor.i.1.2 = xor i32 %conv44.i.1.2, %conv49.i.1.2
  %conv50.i.1.2 = trunc i32 %xor.i.1.2 to i8
  %scevgep236.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %120, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.2, i8* %scevgep236.1.2, align 1
  %134 = load i8, i8* %arrayidx56.i.2, align 1
  %conv57.i.1.2 = zext i8 %134 to i32
  %xor58.i.1.2 = xor i32 %conv57.i.1.2, 1
  %conv59.i.1.2 = trunc i32 %xor58.i.1.2 to i8
  %scevgep233.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %119, i64 0, i64 0, i64 1
  %135 = load i8, i8* %scevgep233.1.2, align 1
  %call64.i.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.2, i8 zeroext %135) #2
  %scevgep240.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %121, i64 0, i64 0, i64 1
  store i8 %call64.i.1.2, i8* %scevgep240.1.2, align 1
  %136 = load i8, i8* %arrayidx70.i.2, align 1
  %scevgep237.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %120, i64 0, i64 0, i64 1
  %137 = load i8, i8* %scevgep237.1.2, align 1
  %call75.i.1.2 = call zeroext i8 @mult(i8 zeroext %136, i8 zeroext %137) #2
  %scevgep244.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %122, i64 0, i64 0, i64 1
  store i8 %call75.i.1.2, i8* %scevgep244.1.2, align 1
  %scevgep241.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %121, i64 0, i64 0, i64 1
  %138 = load i8, i8* %scevgep241.1.2, align 1
  %conv84.i.1.2 = zext i8 %138 to i32
  %scevgep245.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %122, i64 0, i64 0, i64 1
  %139 = load i8, i8* %scevgep245.1.2, align 1
  %conv89.i.1.2 = zext i8 %139 to i32
  %xor90.i.1.2 = xor i32 %conv84.i.1.2, %conv89.i.1.2
  %conv91.i.1.2 = trunc i32 %xor90.i.1.2 to i8
  %scevgep248.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %123, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.2, i8* %scevgep248.1.2, align 1
  %scevgep229.3.2 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 3
  %140 = load i8, i8* %scevgep229.3.2, align 1
  %conv44.i.3.2 = zext i8 %140 to i32
  %scevgep232.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %119, i64 0, i64 0, i64 3
  %141 = load i8, i8* %scevgep232.3.2, align 1
  %conv49.i.3.2 = zext i8 %141 to i32
  %xor.i.3.2 = xor i32 %conv44.i.3.2, %conv49.i.3.2
  %conv50.i.3.2 = trunc i32 %xor.i.3.2 to i8
  %scevgep236.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %120, i64 0, i64 0, i64 3
  store i8 %conv50.i.3.2, i8* %scevgep236.3.2, align 1
  %142 = load i8, i8* %arrayidx56.i.2, align 1
  %conv57.i.3.2 = zext i8 %142 to i32
  %xor58.i.3.2 = xor i32 %conv57.i.3.2, 1
  %conv59.i.3.2 = trunc i32 %xor58.i.3.2 to i8
  %scevgep233.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %119, i64 0, i64 0, i64 3
  %143 = load i8, i8* %scevgep233.3.2, align 1
  %call64.i.3.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.3.2, i8 zeroext %143) #2
  %scevgep240.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %121, i64 0, i64 0, i64 3
  store i8 %call64.i.3.2, i8* %scevgep240.3.2, align 1
  %144 = load i8, i8* %arrayidx70.i.2, align 1
  %scevgep237.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %120, i64 0, i64 0, i64 3
  %145 = load i8, i8* %scevgep237.3.2, align 1
  %call75.i.3.2 = call zeroext i8 @mult(i8 zeroext %144, i8 zeroext %145) #2
  %scevgep244.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %122, i64 0, i64 0, i64 3
  store i8 %call75.i.3.2, i8* %scevgep244.3.2, align 1
  %scevgep241.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %121, i64 0, i64 0, i64 3
  %146 = load i8, i8* %scevgep241.3.2, align 1
  %conv84.i.3.2 = zext i8 %146 to i32
  %scevgep245.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %122, i64 0, i64 0, i64 3
  %147 = load i8, i8* %scevgep245.3.2, align 1
  %conv89.i.3.2 = zext i8 %147 to i32
  %xor90.i.3.2 = xor i32 %conv84.i.3.2, %conv89.i.3.2
  %conv91.i.3.2 = trunc i32 %xor90.i.3.2 to i8
  %scevgep248.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %123, i64 0, i64 0, i64 3
  store i8 %conv91.i.3.2, i8* %scevgep248.3.2, align 1
  %scevgep229.4.2 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 4
  %148 = load i8, i8* %scevgep229.4.2, align 1
  %conv44.i.4.2 = zext i8 %148 to i32
  %scevgep232.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %119, i64 0, i64 0, i64 4
  %149 = load i8, i8* %scevgep232.4.2, align 1
  %conv49.i.4.2 = zext i8 %149 to i32
  %xor.i.4.2 = xor i32 %conv44.i.4.2, %conv49.i.4.2
  %conv50.i.4.2 = trunc i32 %xor.i.4.2 to i8
  %scevgep236.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %120, i64 0, i64 0, i64 4
  store i8 %conv50.i.4.2, i8* %scevgep236.4.2, align 1
  %150 = load i8, i8* %arrayidx56.i.2, align 1
  %conv57.i.4.2 = zext i8 %150 to i32
  %xor58.i.4.2 = xor i32 %conv57.i.4.2, 1
  %conv59.i.4.2 = trunc i32 %xor58.i.4.2 to i8
  %scevgep233.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %119, i64 0, i64 0, i64 4
  %151 = load i8, i8* %scevgep233.4.2, align 1
  %call64.i.4.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.4.2, i8 zeroext %151) #2
  %scevgep240.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %121, i64 0, i64 0, i64 4
  store i8 %call64.i.4.2, i8* %scevgep240.4.2, align 1
  %152 = load i8, i8* %arrayidx70.i.2, align 1
  %scevgep237.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %120, i64 0, i64 0, i64 4
  %153 = load i8, i8* %scevgep237.4.2, align 1
  %call75.i.4.2 = call zeroext i8 @mult(i8 zeroext %152, i8 zeroext %153) #2
  %scevgep244.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %122, i64 0, i64 0, i64 4
  store i8 %call75.i.4.2, i8* %scevgep244.4.2, align 1
  %scevgep241.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %121, i64 0, i64 0, i64 4
  %154 = load i8, i8* %scevgep241.4.2, align 1
  %conv84.i.4.2 = zext i8 %154 to i32
  %scevgep245.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %122, i64 0, i64 0, i64 4
  %155 = load i8, i8* %scevgep245.4.2, align 1
  %conv89.i.4.2 = zext i8 %155 to i32
  %xor90.i.4.2 = xor i32 %conv84.i.4.2, %conv89.i.4.2
  %conv91.i.4.2 = trunc i32 %xor90.i.4.2 to i8
  %scevgep248.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %123, i64 0, i64 0, i64 4
  store i8 %conv91.i.4.2, i8* %scevgep248.4.2, align 1
  %scevgep231.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %119, i64 0, i64 1, i64 0
  %156 = bitcast i8* %scevgep231.2 to [5 x [5 x i8]]*
  %scevgep235.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %120, i64 0, i64 1, i64 0
  %157 = bitcast i8* %scevgep235.2 to [5 x [5 x i8]]*
  %scevgep239.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %121, i64 0, i64 1, i64 0
  %158 = bitcast i8* %scevgep239.2 to [5 x [5 x i8]]*
  %scevgep243.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %122, i64 0, i64 1, i64 0
  %159 = bitcast i8* %scevgep243.2 to [5 x [5 x i8]]*
  %scevgep247.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %123, i64 0, i64 1, i64 0
  %160 = bitcast i8* %scevgep247.2 to [5 x [5 x i8]]*
  %arrayidx56.i.3 = getelementptr inbounds i8, i8* %x, i64 3
  %arrayidx70.i.3 = getelementptr inbounds i8, i8* %x, i64 3
  %scevgep229.3673 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 0
  %161 = load i8, i8* %scevgep229.3673, align 1
  %conv44.i.3674 = zext i8 %161 to i32
  %scevgep232.3675 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %156, i64 0, i64 0, i64 0
  %162 = load i8, i8* %scevgep232.3675, align 1
  %conv49.i.3676 = zext i8 %162 to i32
  %xor.i.3677 = xor i32 %conv44.i.3674, %conv49.i.3676
  %conv50.i.3678 = trunc i32 %xor.i.3677 to i8
  %scevgep236.3679 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %157, i64 0, i64 0, i64 0
  store i8 %conv50.i.3678, i8* %scevgep236.3679, align 1
  %163 = load i8, i8* %arrayidx56.i.3, align 1
  %conv57.i.3680 = zext i8 %163 to i32
  %xor58.i.3681 = xor i32 %conv57.i.3680, 1
  %conv59.i.3682 = trunc i32 %xor58.i.3681 to i8
  %scevgep233.3683 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %156, i64 0, i64 0, i64 0
  %164 = load i8, i8* %scevgep233.3683, align 1
  %call64.i.3684 = call zeroext i8 @mult(i8 zeroext %conv59.i.3682, i8 zeroext %164) #2
  %scevgep240.3685 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %158, i64 0, i64 0, i64 0
  store i8 %call64.i.3684, i8* %scevgep240.3685, align 1
  %165 = load i8, i8* %arrayidx70.i.3, align 1
  %scevgep237.3686 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %157, i64 0, i64 0, i64 0
  %166 = load i8, i8* %scevgep237.3686, align 1
  %call75.i.3687 = call zeroext i8 @mult(i8 zeroext %165, i8 zeroext %166) #2
  %scevgep244.3688 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %159, i64 0, i64 0, i64 0
  store i8 %call75.i.3687, i8* %scevgep244.3688, align 1
  %scevgep241.3689 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %158, i64 0, i64 0, i64 0
  %167 = load i8, i8* %scevgep241.3689, align 1
  %conv84.i.3690 = zext i8 %167 to i32
  %scevgep245.3691 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %159, i64 0, i64 0, i64 0
  %168 = load i8, i8* %scevgep245.3691, align 1
  %conv89.i.3692 = zext i8 %168 to i32
  %xor90.i.3693 = xor i32 %conv84.i.3690, %conv89.i.3692
  %conv91.i.3694 = trunc i32 %xor90.i.3693 to i8
  %scevgep248.3695 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %160, i64 0, i64 0, i64 0
  store i8 %conv91.i.3694, i8* %scevgep248.3695, align 1
  %scevgep229.1.3 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 1
  %169 = load i8, i8* %scevgep229.1.3, align 1
  %conv44.i.1.3 = zext i8 %169 to i32
  %scevgep232.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %156, i64 0, i64 0, i64 1
  %170 = load i8, i8* %scevgep232.1.3, align 1
  %conv49.i.1.3 = zext i8 %170 to i32
  %xor.i.1.3 = xor i32 %conv44.i.1.3, %conv49.i.1.3
  %conv50.i.1.3 = trunc i32 %xor.i.1.3 to i8
  %scevgep236.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %157, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.3, i8* %scevgep236.1.3, align 1
  %171 = load i8, i8* %arrayidx56.i.3, align 1
  %conv57.i.1.3 = zext i8 %171 to i32
  %xor58.i.1.3 = xor i32 %conv57.i.1.3, 1
  %conv59.i.1.3 = trunc i32 %xor58.i.1.3 to i8
  %scevgep233.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %156, i64 0, i64 0, i64 1
  %172 = load i8, i8* %scevgep233.1.3, align 1
  %call64.i.1.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.3, i8 zeroext %172) #2
  %scevgep240.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %158, i64 0, i64 0, i64 1
  store i8 %call64.i.1.3, i8* %scevgep240.1.3, align 1
  %173 = load i8, i8* %arrayidx70.i.3, align 1
  %scevgep237.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %157, i64 0, i64 0, i64 1
  %174 = load i8, i8* %scevgep237.1.3, align 1
  %call75.i.1.3 = call zeroext i8 @mult(i8 zeroext %173, i8 zeroext %174) #2
  %scevgep244.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %159, i64 0, i64 0, i64 1
  store i8 %call75.i.1.3, i8* %scevgep244.1.3, align 1
  %scevgep241.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %158, i64 0, i64 0, i64 1
  %175 = load i8, i8* %scevgep241.1.3, align 1
  %conv84.i.1.3 = zext i8 %175 to i32
  %scevgep245.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %159, i64 0, i64 0, i64 1
  %176 = load i8, i8* %scevgep245.1.3, align 1
  %conv89.i.1.3 = zext i8 %176 to i32
  %xor90.i.1.3 = xor i32 %conv84.i.1.3, %conv89.i.1.3
  %conv91.i.1.3 = trunc i32 %xor90.i.1.3 to i8
  %scevgep248.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %160, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.3, i8* %scevgep248.1.3, align 1
  %scevgep229.2.3 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 2
  %177 = load i8, i8* %scevgep229.2.3, align 1
  %conv44.i.2.3 = zext i8 %177 to i32
  %scevgep232.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %156, i64 0, i64 0, i64 2
  %178 = load i8, i8* %scevgep232.2.3, align 1
  %conv49.i.2.3 = zext i8 %178 to i32
  %xor.i.2.3 = xor i32 %conv44.i.2.3, %conv49.i.2.3
  %conv50.i.2.3 = trunc i32 %xor.i.2.3 to i8
  %scevgep236.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %157, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.3, i8* %scevgep236.2.3, align 1
  %179 = load i8, i8* %arrayidx56.i.3, align 1
  %conv57.i.2.3 = zext i8 %179 to i32
  %xor58.i.2.3 = xor i32 %conv57.i.2.3, 1
  %conv59.i.2.3 = trunc i32 %xor58.i.2.3 to i8
  %scevgep233.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %156, i64 0, i64 0, i64 2
  %180 = load i8, i8* %scevgep233.2.3, align 1
  %call64.i.2.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.3, i8 zeroext %180) #2
  %scevgep240.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %158, i64 0, i64 0, i64 2
  store i8 %call64.i.2.3, i8* %scevgep240.2.3, align 1
  %181 = load i8, i8* %arrayidx70.i.3, align 1
  %scevgep237.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %157, i64 0, i64 0, i64 2
  %182 = load i8, i8* %scevgep237.2.3, align 1
  %call75.i.2.3 = call zeroext i8 @mult(i8 zeroext %181, i8 zeroext %182) #2
  %scevgep244.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %159, i64 0, i64 0, i64 2
  store i8 %call75.i.2.3, i8* %scevgep244.2.3, align 1
  %scevgep241.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %158, i64 0, i64 0, i64 2
  %183 = load i8, i8* %scevgep241.2.3, align 1
  %conv84.i.2.3 = zext i8 %183 to i32
  %scevgep245.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %159, i64 0, i64 0, i64 2
  %184 = load i8, i8* %scevgep245.2.3, align 1
  %conv89.i.2.3 = zext i8 %184 to i32
  %xor90.i.2.3 = xor i32 %conv84.i.2.3, %conv89.i.2.3
  %conv91.i.2.3 = trunc i32 %xor90.i.2.3 to i8
  %scevgep248.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %160, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.3, i8* %scevgep248.2.3, align 1
  %scevgep229.4.3 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 4
  %185 = load i8, i8* %scevgep229.4.3, align 1
  %conv44.i.4.3 = zext i8 %185 to i32
  %scevgep232.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %156, i64 0, i64 0, i64 4
  %186 = load i8, i8* %scevgep232.4.3, align 1
  %conv49.i.4.3 = zext i8 %186 to i32
  %xor.i.4.3 = xor i32 %conv44.i.4.3, %conv49.i.4.3
  %conv50.i.4.3 = trunc i32 %xor.i.4.3 to i8
  %scevgep236.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %157, i64 0, i64 0, i64 4
  store i8 %conv50.i.4.3, i8* %scevgep236.4.3, align 1
  %187 = load i8, i8* %arrayidx56.i.3, align 1
  %conv57.i.4.3 = zext i8 %187 to i32
  %xor58.i.4.3 = xor i32 %conv57.i.4.3, 1
  %conv59.i.4.3 = trunc i32 %xor58.i.4.3 to i8
  %scevgep233.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %156, i64 0, i64 0, i64 4
  %188 = load i8, i8* %scevgep233.4.3, align 1
  %call64.i.4.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.4.3, i8 zeroext %188) #2
  %scevgep240.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %158, i64 0, i64 0, i64 4
  store i8 %call64.i.4.3, i8* %scevgep240.4.3, align 1
  %189 = load i8, i8* %arrayidx70.i.3, align 1
  %scevgep237.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %157, i64 0, i64 0, i64 4
  %190 = load i8, i8* %scevgep237.4.3, align 1
  %call75.i.4.3 = call zeroext i8 @mult(i8 zeroext %189, i8 zeroext %190) #2
  %scevgep244.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %159, i64 0, i64 0, i64 4
  store i8 %call75.i.4.3, i8* %scevgep244.4.3, align 1
  %scevgep241.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %158, i64 0, i64 0, i64 4
  %191 = load i8, i8* %scevgep241.4.3, align 1
  %conv84.i.4.3 = zext i8 %191 to i32
  %scevgep245.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %159, i64 0, i64 0, i64 4
  %192 = load i8, i8* %scevgep245.4.3, align 1
  %conv89.i.4.3 = zext i8 %192 to i32
  %xor90.i.4.3 = xor i32 %conv84.i.4.3, %conv89.i.4.3
  %conv91.i.4.3 = trunc i32 %xor90.i.4.3 to i8
  %scevgep248.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %160, i64 0, i64 0, i64 4
  store i8 %conv91.i.4.3, i8* %scevgep248.4.3, align 1
  %scevgep231.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %156, i64 0, i64 1, i64 0
  %193 = bitcast i8* %scevgep231.3 to [5 x [5 x i8]]*
  %scevgep235.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %157, i64 0, i64 1, i64 0
  %194 = bitcast i8* %scevgep235.3 to [5 x [5 x i8]]*
  %scevgep239.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %158, i64 0, i64 1, i64 0
  %195 = bitcast i8* %scevgep239.3 to [5 x [5 x i8]]*
  %scevgep243.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %159, i64 0, i64 1, i64 0
  %196 = bitcast i8* %scevgep243.3 to [5 x [5 x i8]]*
  %scevgep247.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %160, i64 0, i64 1, i64 0
  %197 = bitcast i8* %scevgep247.3 to [5 x [5 x i8]]*
  %arrayidx56.i.4 = getelementptr inbounds i8, i8* %x, i64 4
  %arrayidx70.i.4 = getelementptr inbounds i8, i8* %x, i64 4
  %scevgep229.4700 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 0
  %198 = load i8, i8* %scevgep229.4700, align 1
  %conv44.i.4701 = zext i8 %198 to i32
  %scevgep232.4702 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %193, i64 0, i64 0, i64 0
  %199 = load i8, i8* %scevgep232.4702, align 1
  %conv49.i.4703 = zext i8 %199 to i32
  %xor.i.4704 = xor i32 %conv44.i.4701, %conv49.i.4703
  %conv50.i.4705 = trunc i32 %xor.i.4704 to i8
  %scevgep236.4706 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %194, i64 0, i64 0, i64 0
  store i8 %conv50.i.4705, i8* %scevgep236.4706, align 1
  %200 = load i8, i8* %arrayidx56.i.4, align 1
  %conv57.i.4707 = zext i8 %200 to i32
  %xor58.i.4708 = xor i32 %conv57.i.4707, 1
  %conv59.i.4709 = trunc i32 %xor58.i.4708 to i8
  %scevgep233.4710 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %193, i64 0, i64 0, i64 0
  %201 = load i8, i8* %scevgep233.4710, align 1
  %call64.i.4711 = call zeroext i8 @mult(i8 zeroext %conv59.i.4709, i8 zeroext %201) #2
  %scevgep240.4712 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %195, i64 0, i64 0, i64 0
  store i8 %call64.i.4711, i8* %scevgep240.4712, align 1
  %202 = load i8, i8* %arrayidx70.i.4, align 1
  %scevgep237.4713 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %194, i64 0, i64 0, i64 0
  %203 = load i8, i8* %scevgep237.4713, align 1
  %call75.i.4714 = call zeroext i8 @mult(i8 zeroext %202, i8 zeroext %203) #2
  %scevgep244.4715 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %196, i64 0, i64 0, i64 0
  store i8 %call75.i.4714, i8* %scevgep244.4715, align 1
  %scevgep241.4716 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %195, i64 0, i64 0, i64 0
  %204 = load i8, i8* %scevgep241.4716, align 1
  %conv84.i.4717 = zext i8 %204 to i32
  %scevgep245.4718 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %196, i64 0, i64 0, i64 0
  %205 = load i8, i8* %scevgep245.4718, align 1
  %conv89.i.4719 = zext i8 %205 to i32
  %xor90.i.4720 = xor i32 %conv84.i.4717, %conv89.i.4719
  %conv91.i.4721 = trunc i32 %xor90.i.4720 to i8
  %scevgep248.4722 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %197, i64 0, i64 0, i64 0
  store i8 %conv91.i.4721, i8* %scevgep248.4722, align 1
  %scevgep229.1.4 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 1
  %206 = load i8, i8* %scevgep229.1.4, align 1
  %conv44.i.1.4 = zext i8 %206 to i32
  %scevgep232.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %193, i64 0, i64 0, i64 1
  %207 = load i8, i8* %scevgep232.1.4, align 1
  %conv49.i.1.4 = zext i8 %207 to i32
  %xor.i.1.4 = xor i32 %conv44.i.1.4, %conv49.i.1.4
  %conv50.i.1.4 = trunc i32 %xor.i.1.4 to i8
  %scevgep236.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %194, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.4, i8* %scevgep236.1.4, align 1
  %208 = load i8, i8* %arrayidx56.i.4, align 1
  %conv57.i.1.4 = zext i8 %208 to i32
  %xor58.i.1.4 = xor i32 %conv57.i.1.4, 1
  %conv59.i.1.4 = trunc i32 %xor58.i.1.4 to i8
  %scevgep233.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %193, i64 0, i64 0, i64 1
  %209 = load i8, i8* %scevgep233.1.4, align 1
  %call64.i.1.4 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.4, i8 zeroext %209) #2
  %scevgep240.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %195, i64 0, i64 0, i64 1
  store i8 %call64.i.1.4, i8* %scevgep240.1.4, align 1
  %210 = load i8, i8* %arrayidx70.i.4, align 1
  %scevgep237.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %194, i64 0, i64 0, i64 1
  %211 = load i8, i8* %scevgep237.1.4, align 1
  %call75.i.1.4 = call zeroext i8 @mult(i8 zeroext %210, i8 zeroext %211) #2
  %scevgep244.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %196, i64 0, i64 0, i64 1
  store i8 %call75.i.1.4, i8* %scevgep244.1.4, align 1
  %scevgep241.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %195, i64 0, i64 0, i64 1
  %212 = load i8, i8* %scevgep241.1.4, align 1
  %conv84.i.1.4 = zext i8 %212 to i32
  %scevgep245.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %196, i64 0, i64 0, i64 1
  %213 = load i8, i8* %scevgep245.1.4, align 1
  %conv89.i.1.4 = zext i8 %213 to i32
  %xor90.i.1.4 = xor i32 %conv84.i.1.4, %conv89.i.1.4
  %conv91.i.1.4 = trunc i32 %xor90.i.1.4 to i8
  %scevgep248.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %197, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.4, i8* %scevgep248.1.4, align 1
  %scevgep229.2.4 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 2
  %214 = load i8, i8* %scevgep229.2.4, align 1
  %conv44.i.2.4 = zext i8 %214 to i32
  %scevgep232.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %193, i64 0, i64 0, i64 2
  %215 = load i8, i8* %scevgep232.2.4, align 1
  %conv49.i.2.4 = zext i8 %215 to i32
  %xor.i.2.4 = xor i32 %conv44.i.2.4, %conv49.i.2.4
  %conv50.i.2.4 = trunc i32 %xor.i.2.4 to i8
  %scevgep236.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %194, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.4, i8* %scevgep236.2.4, align 1
  %216 = load i8, i8* %arrayidx56.i.4, align 1
  %conv57.i.2.4 = zext i8 %216 to i32
  %xor58.i.2.4 = xor i32 %conv57.i.2.4, 1
  %conv59.i.2.4 = trunc i32 %xor58.i.2.4 to i8
  %scevgep233.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %193, i64 0, i64 0, i64 2
  %217 = load i8, i8* %scevgep233.2.4, align 1
  %call64.i.2.4 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.4, i8 zeroext %217) #2
  %scevgep240.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %195, i64 0, i64 0, i64 2
  store i8 %call64.i.2.4, i8* %scevgep240.2.4, align 1
  %218 = load i8, i8* %arrayidx70.i.4, align 1
  %scevgep237.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %194, i64 0, i64 0, i64 2
  %219 = load i8, i8* %scevgep237.2.4, align 1
  %call75.i.2.4 = call zeroext i8 @mult(i8 zeroext %218, i8 zeroext %219) #2
  %scevgep244.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %196, i64 0, i64 0, i64 2
  store i8 %call75.i.2.4, i8* %scevgep244.2.4, align 1
  %scevgep241.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %195, i64 0, i64 0, i64 2
  %220 = load i8, i8* %scevgep241.2.4, align 1
  %conv84.i.2.4 = zext i8 %220 to i32
  %scevgep245.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %196, i64 0, i64 0, i64 2
  %221 = load i8, i8* %scevgep245.2.4, align 1
  %conv89.i.2.4 = zext i8 %221 to i32
  %xor90.i.2.4 = xor i32 %conv84.i.2.4, %conv89.i.2.4
  %conv91.i.2.4 = trunc i32 %xor90.i.2.4 to i8
  %scevgep248.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %197, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.4, i8* %scevgep248.2.4, align 1
  %scevgep229.3.4 = getelementptr [5 x i8], [5 x i8]* %e2, i64 0, i64 3
  %222 = load i8, i8* %scevgep229.3.4, align 1
  %conv44.i.3.4 = zext i8 %222 to i32
  %scevgep232.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %193, i64 0, i64 0, i64 3
  %223 = load i8, i8* %scevgep232.3.4, align 1
  %conv49.i.3.4 = zext i8 %223 to i32
  %xor.i.3.4 = xor i32 %conv44.i.3.4, %conv49.i.3.4
  %conv50.i.3.4 = trunc i32 %xor.i.3.4 to i8
  %scevgep236.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %194, i64 0, i64 0, i64 3
  store i8 %conv50.i.3.4, i8* %scevgep236.3.4, align 1
  %224 = load i8, i8* %arrayidx56.i.4, align 1
  %conv57.i.3.4 = zext i8 %224 to i32
  %xor58.i.3.4 = xor i32 %conv57.i.3.4, 1
  %conv59.i.3.4 = trunc i32 %xor58.i.3.4 to i8
  %scevgep233.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %193, i64 0, i64 0, i64 3
  %225 = load i8, i8* %scevgep233.3.4, align 1
  %call64.i.3.4 = call zeroext i8 @mult(i8 zeroext %conv59.i.3.4, i8 zeroext %225) #2
  %scevgep240.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %195, i64 0, i64 0, i64 3
  store i8 %call64.i.3.4, i8* %scevgep240.3.4, align 1
  %226 = load i8, i8* %arrayidx70.i.4, align 1
  %scevgep237.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %194, i64 0, i64 0, i64 3
  %227 = load i8, i8* %scevgep237.3.4, align 1
  %call75.i.3.4 = call zeroext i8 @mult(i8 zeroext %226, i8 zeroext %227) #2
  %scevgep244.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %196, i64 0, i64 0, i64 3
  store i8 %call75.i.3.4, i8* %scevgep244.3.4, align 1
  %scevgep241.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %195, i64 0, i64 0, i64 3
  %228 = load i8, i8* %scevgep241.3.4, align 1
  %conv84.i.3.4 = zext i8 %228 to i32
  %scevgep245.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %196, i64 0, i64 0, i64 3
  %229 = load i8, i8* %scevgep245.3.4, align 1
  %conv89.i.3.4 = zext i8 %229 to i32
  %xor90.i.3.4 = xor i32 %conv84.i.3.4, %conv89.i.3.4
  %conv91.i.3.4 = trunc i32 %xor90.i.3.4 to i8
  %scevgep248.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %197, i64 0, i64 0, i64 3
  store i8 %conv91.i.3.4, i8* %scevgep248.3.4, align 1
  %230 = load i8, i8* %x, align 1
  %231 = load i8, i8* %arraydecay6, align 1
  %call111.i = call zeroext i8 @mult(i8 zeroext %230, i8 zeroext %231) #2
  store i8 %call111.i, i8* %arraydecay7, align 1
  %scevgep219.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 1
  %232 = load i8, i8* %scevgep219.1, align 1
  %conv126.i.1 = zext i8 %232 to i32
  %233 = load i8, i8* %arraydecay7, align 1
  %conv129.i.1 = zext i8 %233 to i32
  %xor130.i.1 = xor i32 %conv129.i.1, %conv126.i.1
  %conv131.i.1 = trunc i32 %xor130.i.1 to i8
  store i8 %conv131.i.1, i8* %arraydecay7, align 1
  %scevgep219.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 2
  %234 = load i8, i8* %scevgep219.2, align 1
  %conv126.i.2 = zext i8 %234 to i32
  %235 = load i8, i8* %arraydecay7, align 1
  %conv129.i.2 = zext i8 %235 to i32
  %xor130.i.2 = xor i32 %conv129.i.2, %conv126.i.2
  %conv131.i.2 = trunc i32 %xor130.i.2 to i8
  store i8 %conv131.i.2, i8* %arraydecay7, align 1
  %scevgep219.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 3
  %236 = load i8, i8* %scevgep219.3, align 1
  %conv126.i.3 = zext i8 %236 to i32
  %237 = load i8, i8* %arraydecay7, align 1
  %conv129.i.3 = zext i8 %237 to i32
  %xor130.i.3 = xor i32 %conv129.i.3, %conv126.i.3
  %conv131.i.3 = trunc i32 %xor130.i.3 to i8
  store i8 %conv131.i.3, i8* %arraydecay7, align 1
  %scevgep219.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 4
  %238 = load i8, i8* %scevgep219.4, align 1
  %conv126.i.4 = zext i8 %238 to i32
  %239 = load i8, i8* %arraydecay7, align 1
  %conv129.i.4 = zext i8 %239 to i32
  %xor130.i.4 = xor i32 %conv129.i.4, %conv126.i.4
  %conv131.i.4 = trunc i32 %xor130.i.4 to i8
  store i8 %conv131.i.4, i8* %arraydecay7, align 1
  %scevgep218 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 1, i64 0
  %240 = bitcast i8* %scevgep218 to [5 x [5 x i8]]*
  %arrayidx108.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %241 = load i8, i8* %arrayidx108.i.1, align 1
  %arrayidx110.i.1 = getelementptr inbounds i8, i8* %arraydecay6, i64 1
  %242 = load i8, i8* %arrayidx110.i.1, align 1
  %call111.i.1 = call zeroext i8 @mult(i8 zeroext %241, i8 zeroext %242) #2
  %arrayidx113.i.1 = getelementptr inbounds i8, i8* %arraydecay7, i64 1
  store i8 %call111.i.1, i8* %arrayidx113.i.1, align 1
  %arrayidx128.i.1 = getelementptr inbounds i8, i8* %arraydecay7, i64 1
  %scevgep219.1583 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %240, i64 0, i64 0, i64 0
  %243 = load i8, i8* %scevgep219.1583, align 1
  %conv126.i.1584 = zext i8 %243 to i32
  %244 = load i8, i8* %arrayidx128.i.1, align 1
  %conv129.i.1585 = zext i8 %244 to i32
  %xor130.i.1586 = xor i32 %conv129.i.1585, %conv126.i.1584
  %conv131.i.1587 = trunc i32 %xor130.i.1586 to i8
  store i8 %conv131.i.1587, i8* %arrayidx128.i.1, align 1
  %scevgep219.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %240, i64 0, i64 0, i64 2
  %245 = load i8, i8* %scevgep219.2.1, align 1
  %conv126.i.2.1 = zext i8 %245 to i32
  %246 = load i8, i8* %arrayidx128.i.1, align 1
  %conv129.i.2.1 = zext i8 %246 to i32
  %xor130.i.2.1 = xor i32 %conv129.i.2.1, %conv126.i.2.1
  %conv131.i.2.1 = trunc i32 %xor130.i.2.1 to i8
  store i8 %conv131.i.2.1, i8* %arrayidx128.i.1, align 1
  %scevgep219.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %240, i64 0, i64 0, i64 3
  %247 = load i8, i8* %scevgep219.3.1, align 1
  %conv126.i.3.1 = zext i8 %247 to i32
  %248 = load i8, i8* %arrayidx128.i.1, align 1
  %conv129.i.3.1 = zext i8 %248 to i32
  %xor130.i.3.1 = xor i32 %conv129.i.3.1, %conv126.i.3.1
  %conv131.i.3.1 = trunc i32 %xor130.i.3.1 to i8
  store i8 %conv131.i.3.1, i8* %arrayidx128.i.1, align 1
  %scevgep219.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %240, i64 0, i64 0, i64 4
  %249 = load i8, i8* %scevgep219.4.1, align 1
  %conv126.i.4.1 = zext i8 %249 to i32
  %250 = load i8, i8* %arrayidx128.i.1, align 1
  %conv129.i.4.1 = zext i8 %250 to i32
  %xor130.i.4.1 = xor i32 %conv129.i.4.1, %conv126.i.4.1
  %conv131.i.4.1 = trunc i32 %xor130.i.4.1 to i8
  store i8 %conv131.i.4.1, i8* %arrayidx128.i.1, align 1
  %scevgep218.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %240, i64 0, i64 1, i64 0
  %251 = bitcast i8* %scevgep218.1 to [5 x [5 x i8]]*
  %arrayidx108.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %252 = load i8, i8* %arrayidx108.i.2, align 1
  %arrayidx110.i.2 = getelementptr inbounds i8, i8* %arraydecay6, i64 2
  %253 = load i8, i8* %arrayidx110.i.2, align 1
  %call111.i.2 = call zeroext i8 @mult(i8 zeroext %252, i8 zeroext %253) #2
  %arrayidx113.i.2 = getelementptr inbounds i8, i8* %arraydecay7, i64 2
  store i8 %call111.i.2, i8* %arrayidx113.i.2, align 1
  %arrayidx128.i.2 = getelementptr inbounds i8, i8* %arraydecay7, i64 2
  %scevgep219.2592 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %251, i64 0, i64 0, i64 0
  %254 = load i8, i8* %scevgep219.2592, align 1
  %conv126.i.2593 = zext i8 %254 to i32
  %255 = load i8, i8* %arrayidx128.i.2, align 1
  %conv129.i.2594 = zext i8 %255 to i32
  %xor130.i.2595 = xor i32 %conv129.i.2594, %conv126.i.2593
  %conv131.i.2596 = trunc i32 %xor130.i.2595 to i8
  store i8 %conv131.i.2596, i8* %arrayidx128.i.2, align 1
  %scevgep219.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %251, i64 0, i64 0, i64 1
  %256 = load i8, i8* %scevgep219.1.2, align 1
  %conv126.i.1.2 = zext i8 %256 to i32
  %257 = load i8, i8* %arrayidx128.i.2, align 1
  %conv129.i.1.2 = zext i8 %257 to i32
  %xor130.i.1.2 = xor i32 %conv129.i.1.2, %conv126.i.1.2
  %conv131.i.1.2 = trunc i32 %xor130.i.1.2 to i8
  store i8 %conv131.i.1.2, i8* %arrayidx128.i.2, align 1
  %scevgep219.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %251, i64 0, i64 0, i64 3
  %258 = load i8, i8* %scevgep219.3.2, align 1
  %conv126.i.3.2 = zext i8 %258 to i32
  %259 = load i8, i8* %arrayidx128.i.2, align 1
  %conv129.i.3.2 = zext i8 %259 to i32
  %xor130.i.3.2 = xor i32 %conv129.i.3.2, %conv126.i.3.2
  %conv131.i.3.2 = trunc i32 %xor130.i.3.2 to i8
  store i8 %conv131.i.3.2, i8* %arrayidx128.i.2, align 1
  %scevgep219.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %251, i64 0, i64 0, i64 4
  %260 = load i8, i8* %scevgep219.4.2, align 1
  %conv126.i.4.2 = zext i8 %260 to i32
  %261 = load i8, i8* %arrayidx128.i.2, align 1
  %conv129.i.4.2 = zext i8 %261 to i32
  %xor130.i.4.2 = xor i32 %conv129.i.4.2, %conv126.i.4.2
  %conv131.i.4.2 = trunc i32 %xor130.i.4.2 to i8
  store i8 %conv131.i.4.2, i8* %arrayidx128.i.2, align 1
  %scevgep218.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %251, i64 0, i64 1, i64 0
  %262 = bitcast i8* %scevgep218.2 to [5 x [5 x i8]]*
  %arrayidx108.i.3 = getelementptr inbounds i8, i8* %x, i64 3
  %263 = load i8, i8* %arrayidx108.i.3, align 1
  %arrayidx110.i.3 = getelementptr inbounds i8, i8* %arraydecay6, i64 3
  %264 = load i8, i8* %arrayidx110.i.3, align 1
  %call111.i.3 = call zeroext i8 @mult(i8 zeroext %263, i8 zeroext %264) #2
  %arrayidx113.i.3 = getelementptr inbounds i8, i8* %arraydecay7, i64 3
  store i8 %call111.i.3, i8* %arrayidx113.i.3, align 1
  %arrayidx128.i.3 = getelementptr inbounds i8, i8* %arraydecay7, i64 3
  %scevgep219.3601 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %262, i64 0, i64 0, i64 0
  %265 = load i8, i8* %scevgep219.3601, align 1
  %conv126.i.3602 = zext i8 %265 to i32
  %266 = load i8, i8* %arrayidx128.i.3, align 1
  %conv129.i.3603 = zext i8 %266 to i32
  %xor130.i.3604 = xor i32 %conv129.i.3603, %conv126.i.3602
  %conv131.i.3605 = trunc i32 %xor130.i.3604 to i8
  store i8 %conv131.i.3605, i8* %arrayidx128.i.3, align 1
  %scevgep219.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %262, i64 0, i64 0, i64 1
  %267 = load i8, i8* %scevgep219.1.3, align 1
  %conv126.i.1.3 = zext i8 %267 to i32
  %268 = load i8, i8* %arrayidx128.i.3, align 1
  %conv129.i.1.3 = zext i8 %268 to i32
  %xor130.i.1.3 = xor i32 %conv129.i.1.3, %conv126.i.1.3
  %conv131.i.1.3 = trunc i32 %xor130.i.1.3 to i8
  store i8 %conv131.i.1.3, i8* %arrayidx128.i.3, align 1
  %scevgep219.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %262, i64 0, i64 0, i64 2
  %269 = load i8, i8* %scevgep219.2.3, align 1
  %conv126.i.2.3 = zext i8 %269 to i32
  %270 = load i8, i8* %arrayidx128.i.3, align 1
  %conv129.i.2.3 = zext i8 %270 to i32
  %xor130.i.2.3 = xor i32 %conv129.i.2.3, %conv126.i.2.3
  %conv131.i.2.3 = trunc i32 %xor130.i.2.3 to i8
  store i8 %conv131.i.2.3, i8* %arrayidx128.i.3, align 1
  %scevgep219.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %262, i64 0, i64 0, i64 4
  %271 = load i8, i8* %scevgep219.4.3, align 1
  %conv126.i.4.3 = zext i8 %271 to i32
  %272 = load i8, i8* %arrayidx128.i.3, align 1
  %conv129.i.4.3 = zext i8 %272 to i32
  %xor130.i.4.3 = xor i32 %conv129.i.4.3, %conv126.i.4.3
  %conv131.i.4.3 = trunc i32 %xor130.i.4.3 to i8
  store i8 %conv131.i.4.3, i8* %arrayidx128.i.3, align 1
  %scevgep218.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %262, i64 0, i64 1, i64 0
  %273 = bitcast i8* %scevgep218.3 to [5 x [5 x i8]]*
  %arrayidx108.i.4 = getelementptr inbounds i8, i8* %x, i64 4
  %274 = load i8, i8* %arrayidx108.i.4, align 1
  %arrayidx110.i.4 = getelementptr inbounds i8, i8* %arraydecay6, i64 4
  %275 = load i8, i8* %arrayidx110.i.4, align 1
  %call111.i.4 = call zeroext i8 @mult(i8 zeroext %274, i8 zeroext %275) #2
  %arrayidx113.i.4 = getelementptr inbounds i8, i8* %arraydecay7, i64 4
  store i8 %call111.i.4, i8* %arrayidx113.i.4, align 1
  %arrayidx128.i.4 = getelementptr inbounds i8, i8* %arraydecay7, i64 4
  %scevgep219.4610 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %273, i64 0, i64 0, i64 0
  %276 = load i8, i8* %scevgep219.4610, align 1
  %conv126.i.4611 = zext i8 %276 to i32
  %277 = load i8, i8* %arrayidx128.i.4, align 1
  %conv129.i.4612 = zext i8 %277 to i32
  %xor130.i.4613 = xor i32 %conv129.i.4612, %conv126.i.4611
  %conv131.i.4614 = trunc i32 %xor130.i.4613 to i8
  store i8 %conv131.i.4614, i8* %arrayidx128.i.4, align 1
  %scevgep219.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %273, i64 0, i64 0, i64 1
  %278 = load i8, i8* %scevgep219.1.4, align 1
  %conv126.i.1.4 = zext i8 %278 to i32
  %279 = load i8, i8* %arrayidx128.i.4, align 1
  %conv129.i.1.4 = zext i8 %279 to i32
  %xor130.i.1.4 = xor i32 %conv129.i.1.4, %conv126.i.1.4
  %conv131.i.1.4 = trunc i32 %xor130.i.1.4 to i8
  store i8 %conv131.i.1.4, i8* %arrayidx128.i.4, align 1
  %scevgep219.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %273, i64 0, i64 0, i64 2
  %280 = load i8, i8* %scevgep219.2.4, align 1
  %conv126.i.2.4 = zext i8 %280 to i32
  %281 = load i8, i8* %arrayidx128.i.4, align 1
  %conv129.i.2.4 = zext i8 %281 to i32
  %xor130.i.2.4 = xor i32 %conv129.i.2.4, %conv126.i.2.4
  %conv131.i.2.4 = trunc i32 %xor130.i.2.4 to i8
  store i8 %conv131.i.2.4, i8* %arrayidx128.i.4, align 1
  %scevgep219.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %273, i64 0, i64 0, i64 3
  %282 = load i8, i8* %scevgep219.3.4, align 1
  %conv126.i.3.4 = zext i8 %282 to i32
  %283 = load i8, i8* %arrayidx128.i.4, align 1
  %conv129.i.3.4 = zext i8 %283 to i32
  %xor130.i.3.4 = xor i32 %conv129.i.3.4, %conv126.i.3.4
  %conv131.i.3.4 = trunc i32 %xor130.i.3.4 to i8
  store i8 %conv131.i.3.4, i8* %arrayidx128.i.4, align 1
  %call139.i = call zeroext i8 @mult(i8 zeroext %call.i77, i8 zeroext %call1.i) #2
  %conv140.i = zext i8 %call139.i to i32
  %scevgep209 = getelementptr [5 x i8], [5 x i8]* %e3, i64 0, i64 0
  %284 = load i8, i8* %scevgep209, align 1
  %scevgep209.1 = getelementptr [5 x i8], [5 x i8]* %e3, i64 0, i64 1
  %285 = load i8, i8* %scevgep209.1, align 1
  %conv.i.i172.i.1 = zext i8 %285 to i32
  %conv1.i.i173.i.1 = zext i8 %284 to i32
  %xor.i.i174.i.1 = xor i32 %conv1.i.i173.i.1, %conv.i.i172.i.1
  %conv2.i.i175.i.1 = trunc i32 %xor.i.i174.i.1 to i8
  %scevgep209.2 = getelementptr [5 x i8], [5 x i8]* %e3, i64 0, i64 2
  %286 = load i8, i8* %scevgep209.2, align 1
  %conv.i.i172.i.2 = zext i8 %286 to i32
  %conv1.i.i173.i.2 = zext i8 %conv2.i.i175.i.1 to i32
  %xor.i.i174.i.2 = xor i32 %conv1.i.i173.i.2, %conv.i.i172.i.2
  %conv2.i.i175.i.2 = trunc i32 %xor.i.i174.i.2 to i8
  %scevgep209.3 = getelementptr [5 x i8], [5 x i8]* %e3, i64 0, i64 3
  %287 = load i8, i8* %scevgep209.3, align 1
  %conv.i.i172.i.3 = zext i8 %287 to i32
  %conv1.i.i173.i.3 = zext i8 %conv2.i.i175.i.2 to i32
  %xor.i.i174.i.3 = xor i32 %conv1.i.i173.i.3, %conv.i.i172.i.3
  %conv2.i.i175.i.3 = trunc i32 %xor.i.i174.i.3 to i8
  %scevgep209.4 = getelementptr [5 x i8], [5 x i8]* %e3, i64 0, i64 4
  %288 = load i8, i8* %scevgep209.4, align 1
  %conv.i.i172.i.4 = zext i8 %288 to i32
  %conv1.i.i173.i.4 = zext i8 %conv2.i.i175.i.3 to i32
  %xor.i.i174.i.4 = xor i32 %conv1.i.i173.i.4, %conv.i.i172.i.4
  %conv2.i.i175.i.4 = trunc i32 %xor.i.i174.i.4 to i8
  %conv142.i = zext i8 %conv2.i.i175.i.4 to i32
  %cmp143.i = icmp eq i32 %conv140.i, %conv142.i
  call void @assert(i1 zeroext %cmp143.i) #2
  %arraydecay8 = getelementptr inbounds [5 x i8], [5 x i8]* %e4, i64 0, i64 0
  %arraydecay9 = getelementptr inbounds [5 x i8], [5 x i8]* %e5, i64 0, i64 0
  %call.i115 = call zeroext i8 (...) @rand() #2
  %call1.i116 = call zeroext i8 (...) @rand() #2
  %conv.i117 = zext i8 %call.i115 to i32
  %289 = load i8, i8* %x, align 1
  %scevgep205.1 = getelementptr i8, i8* %x, i64 1
  %290 = load i8, i8* %scevgep205.1, align 1
  %conv.i.i.i123.1 = zext i8 %290 to i32
  %conv1.i.i.i124.1 = zext i8 %289 to i32
  %xor.i.i.i125.1 = xor i32 %conv1.i.i.i124.1, %conv.i.i.i123.1
  %conv2.i.i.i126.1 = trunc i32 %xor.i.i.i125.1 to i8
  %scevgep205.2 = getelementptr i8, i8* %x, i64 2
  %291 = load i8, i8* %scevgep205.2, align 1
  %conv.i.i.i123.2 = zext i8 %291 to i32
  %conv1.i.i.i124.2 = zext i8 %conv2.i.i.i126.1 to i32
  %xor.i.i.i125.2 = xor i32 %conv1.i.i.i124.2, %conv.i.i.i123.2
  %conv2.i.i.i126.2 = trunc i32 %xor.i.i.i125.2 to i8
  %scevgep205.3 = getelementptr i8, i8* %x, i64 3
  %292 = load i8, i8* %scevgep205.3, align 1
  %conv.i.i.i123.3 = zext i8 %292 to i32
  %conv1.i.i.i124.3 = zext i8 %conv2.i.i.i126.2 to i32
  %xor.i.i.i125.3 = xor i32 %conv1.i.i.i124.3, %conv.i.i.i123.3
  %conv2.i.i.i126.3 = trunc i32 %xor.i.i.i125.3 to i8
  %scevgep205.4 = getelementptr i8, i8* %x, i64 4
  %293 = load i8, i8* %scevgep205.4, align 1
  %conv.i.i.i123.4 = zext i8 %293 to i32
  %conv1.i.i.i124.4 = zext i8 %conv2.i.i.i126.3 to i32
  %xor.i.i.i125.4 = xor i32 %conv1.i.i.i124.4, %conv.i.i.i123.4
  %conv2.i.i.i126.4 = trunc i32 %xor.i.i.i125.4 to i8
  %conv3.i129 = zext i8 %conv2.i.i.i126.4 to i32
  %cmp.i130 = icmp eq i32 %conv.i117, %conv3.i129
  call void @assume(i1 zeroext %cmp.i130) #2
  %conv5.i131 = zext i8 %call1.i116 to i32
  %scevgep201 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 0
  %294 = load i8, i8* %scevgep201, align 1
  %scevgep201.1 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 1
  %295 = load i8, i8* %scevgep201.1, align 1
  %conv.i.i155.i138.1 = zext i8 %295 to i32
  %conv1.i.i156.i139.1 = zext i8 %294 to i32
  %xor.i.i157.i140.1 = xor i32 %conv1.i.i156.i139.1, %conv.i.i155.i138.1
  %conv2.i.i158.i141.1 = trunc i32 %xor.i.i157.i140.1 to i8
  %scevgep201.2 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 2
  %296 = load i8, i8* %scevgep201.2, align 1
  %conv.i.i155.i138.2 = zext i8 %296 to i32
  %conv1.i.i156.i139.2 = zext i8 %conv2.i.i158.i141.1 to i32
  %xor.i.i157.i140.2 = xor i32 %conv1.i.i156.i139.2, %conv.i.i155.i138.2
  %conv2.i.i158.i141.2 = trunc i32 %xor.i.i157.i140.2 to i8
  %scevgep201.3 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 3
  %297 = load i8, i8* %scevgep201.3, align 1
  %conv.i.i155.i138.3 = zext i8 %297 to i32
  %conv1.i.i156.i139.3 = zext i8 %conv2.i.i158.i141.2 to i32
  %xor.i.i157.i140.3 = xor i32 %conv1.i.i156.i139.3, %conv.i.i155.i138.3
  %conv2.i.i158.i141.3 = trunc i32 %xor.i.i157.i140.3 to i8
  %scevgep201.4 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 4
  %298 = load i8, i8* %scevgep201.4, align 1
  %conv.i.i155.i138.4 = zext i8 %298 to i32
  %conv1.i.i156.i139.4 = zext i8 %conv2.i.i158.i141.3 to i32
  %xor.i.i157.i140.4 = xor i32 %conv1.i.i156.i139.4, %conv.i.i155.i138.4
  %conv2.i.i158.i141.4 = trunc i32 %xor.i.i157.i140.4 to i8
  %conv7.i144 = zext i8 %conv2.i.i158.i141.4 to i32
  %cmp8.i145 = icmp eq i32 %conv5.i131, %conv7.i144
  call void @assume(i1 zeroext %cmp8.i145) #2
  %scevgep185 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %scevgep185186 = bitcast i8* %scevgep185 to [5 x [5 x i8]]*
  %scevgep192 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 1, i64 0
  %scevgep192193 = bitcast i8* %scevgep192 to [5 x [5 x i8]]*
  %call16.i153 = call zeroext i8 (...) @rand() #2
  store i8 %call16.i153, i8* %scevgep185, align 1
  %299 = load i8, i8* %scevgep185, align 1
  store i8 %299, i8* %scevgep192, align 1
  %scevgep190 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep185186, i64 0, i64 0, i64 1
  %300 = bitcast i8* %scevgep190 to [5 x [5 x i8]]*
  %scevgep197 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep192193, i64 0, i64 1, i64 0
  %301 = bitcast i8* %scevgep197 to [5 x [5 x i8]]*
  %call16.i153.1734 = call zeroext i8 (...) @rand() #2
  store i8 %call16.i153.1734, i8* %scevgep190, align 1
  %302 = load i8, i8* %scevgep190, align 1
  store i8 %302, i8* %scevgep197, align 1
  %scevgep190.1735 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %300, i64 0, i64 0, i64 1
  %303 = bitcast i8* %scevgep190.1735 to [5 x [5 x i8]]*
  %scevgep197.1736 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %301, i64 0, i64 1, i64 0
  %304 = bitcast i8* %scevgep197.1736 to [5 x [5 x i8]]*
  %call16.i153.2738 = call zeroext i8 (...) @rand() #2
  store i8 %call16.i153.2738, i8* %scevgep190.1735, align 1
  %305 = load i8, i8* %scevgep190.1735, align 1
  store i8 %305, i8* %scevgep197.1736, align 1
  %scevgep190.2739 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %303, i64 0, i64 0, i64 1
  %scevgep197.2740 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %304, i64 0, i64 1, i64 0
  %call16.i153.3742 = call zeroext i8 (...) @rand() #2
  store i8 %call16.i153.3742, i8* %scevgep190.2739, align 1
  %306 = load i8, i8* %scevgep190.2739, align 1
  store i8 %306, i8* %scevgep197.2740, align 1
  %scevgep188 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep185186, i64 0, i64 1, i64 1
  %307 = bitcast i8* %scevgep188 to [5 x [5 x i8]]*
  %scevgep195 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep192193, i64 0, i64 1, i64 1
  %308 = bitcast i8* %scevgep195 to [5 x [5 x i8]]*
  %call16.i153.1 = call zeroext i8 (...) @rand() #2
  store i8 %call16.i153.1, i8* %scevgep188, align 1
  %309 = load i8, i8* %scevgep188, align 1
  store i8 %309, i8* %scevgep195, align 1
  %scevgep190.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %307, i64 0, i64 0, i64 1
  %310 = bitcast i8* %scevgep190.1 to [5 x [5 x i8]]*
  %scevgep197.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %308, i64 0, i64 1, i64 0
  %311 = bitcast i8* %scevgep197.1 to [5 x [5 x i8]]*
  %call16.i153.1.1 = call zeroext i8 (...) @rand() #2
  store i8 %call16.i153.1.1, i8* %scevgep190.1, align 1
  %312 = load i8, i8* %scevgep190.1, align 1
  store i8 %312, i8* %scevgep197.1, align 1
  %scevgep190.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %310, i64 0, i64 0, i64 1
  %scevgep197.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %311, i64 0, i64 1, i64 0
  %call16.i153.1.2 = call zeroext i8 (...) @rand() #2
  store i8 %call16.i153.1.2, i8* %scevgep190.1.1, align 1
  %313 = load i8, i8* %scevgep190.1.1, align 1
  store i8 %313, i8* %scevgep197.1.1, align 1
  %scevgep188.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %307, i64 0, i64 1, i64 1
  %314 = bitcast i8* %scevgep188.1 to [5 x [5 x i8]]*
  %scevgep195.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %308, i64 0, i64 1, i64 1
  %315 = bitcast i8* %scevgep195.1 to [5 x [5 x i8]]*
  %call16.i153.2 = call zeroext i8 (...) @rand() #2
  store i8 %call16.i153.2, i8* %scevgep188.1, align 1
  %316 = load i8, i8* %scevgep188.1, align 1
  store i8 %316, i8* %scevgep195.1, align 1
  %scevgep190.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %314, i64 0, i64 0, i64 1
  %scevgep197.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %315, i64 0, i64 1, i64 0
  %call16.i153.2.1 = call zeroext i8 (...) @rand() #2
  store i8 %call16.i153.2.1, i8* %scevgep190.2, align 1
  %317 = load i8, i8* %scevgep190.2, align 1
  store i8 %317, i8* %scevgep197.2, align 1
  %scevgep188.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %314, i64 0, i64 1, i64 1
  %scevgep195.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %315, i64 0, i64 1, i64 1
  %call16.i153.3 = call zeroext i8 (...) @rand() #2
  store i8 %call16.i153.3, i8* %scevgep188.2, align 1
  %318 = load i8, i8* %scevgep188.2, align 1
  store i8 %318, i8* %scevgep195.2, align 1
  %scevgep162.1 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 1
  %319 = load i8, i8* %scevgep162.1, align 1
  %conv44.i180.1 = zext i8 %319 to i32
  %scevgep165.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %320 = load i8, i8* %scevgep165.1, align 1
  %conv49.i185.1 = zext i8 %320 to i32
  %xor.i186.1 = xor i32 %conv44.i180.1, %conv49.i185.1
  %conv50.i187.1 = trunc i32 %xor.i186.1 to i8
  %scevgep169.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i187.1, i8* %scevgep169.1, align 1
  %321 = load i8, i8* %x, align 1
  %conv57.i194.1 = zext i8 %321 to i32
  %xor58.i195.1 = xor i32 %conv57.i194.1, 1
  %conv59.i196.1 = trunc i32 %xor58.i195.1 to i8
  %scevgep166.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %322 = load i8, i8* %scevgep166.1, align 1
  %call64.i201.1 = call zeroext i8 @mult(i8 zeroext %conv59.i196.1, i8 zeroext %322) #2
  %scevgep173.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i201.1, i8* %scevgep173.1, align 1
  %323 = load i8, i8* %x, align 1
  %scevgep170.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 1
  %324 = load i8, i8* %scevgep170.1, align 1
  %call75.i212.1 = call zeroext i8 @mult(i8 zeroext %323, i8 zeroext %324) #2
  %scevgep177.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i212.1, i8* %scevgep177.1, align 1
  %scevgep174.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %325 = load i8, i8* %scevgep174.1, align 1
  %conv84.i221.1 = zext i8 %325 to i32
  %scevgep178.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %326 = load i8, i8* %scevgep178.1, align 1
  %conv89.i226.1 = zext i8 %326 to i32
  %xor90.i227.1 = xor i32 %conv84.i221.1, %conv89.i226.1
  %conv91.i228.1 = trunc i32 %xor90.i227.1 to i8
  %scevgep181.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i228.1, i8* %scevgep181.1, align 1
  %scevgep162.2 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 2
  %327 = load i8, i8* %scevgep162.2, align 1
  %conv44.i180.2 = zext i8 %327 to i32
  %scevgep165.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 2
  %328 = load i8, i8* %scevgep165.2, align 1
  %conv49.i185.2 = zext i8 %328 to i32
  %xor.i186.2 = xor i32 %conv44.i180.2, %conv49.i185.2
  %conv50.i187.2 = trunc i32 %xor.i186.2 to i8
  %scevgep169.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 2
  store i8 %conv50.i187.2, i8* %scevgep169.2, align 1
  %329 = load i8, i8* %x, align 1
  %conv57.i194.2 = zext i8 %329 to i32
  %xor58.i195.2 = xor i32 %conv57.i194.2, 1
  %conv59.i196.2 = trunc i32 %xor58.i195.2 to i8
  %scevgep166.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 2
  %330 = load i8, i8* %scevgep166.2, align 1
  %call64.i201.2 = call zeroext i8 @mult(i8 zeroext %conv59.i196.2, i8 zeroext %330) #2
  %scevgep173.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 2
  store i8 %call64.i201.2, i8* %scevgep173.2, align 1
  %331 = load i8, i8* %x, align 1
  %scevgep170.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 2
  %332 = load i8, i8* %scevgep170.2, align 1
  %call75.i212.2 = call zeroext i8 @mult(i8 zeroext %331, i8 zeroext %332) #2
  %scevgep177.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 2
  store i8 %call75.i212.2, i8* %scevgep177.2, align 1
  %scevgep174.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 2
  %333 = load i8, i8* %scevgep174.2, align 1
  %conv84.i221.2 = zext i8 %333 to i32
  %scevgep178.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 2
  %334 = load i8, i8* %scevgep178.2, align 1
  %conv89.i226.2 = zext i8 %334 to i32
  %xor90.i227.2 = xor i32 %conv84.i221.2, %conv89.i226.2
  %conv91.i228.2 = trunc i32 %xor90.i227.2 to i8
  %scevgep181.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 2
  store i8 %conv91.i228.2, i8* %scevgep181.2, align 1
  %scevgep162.3 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 3
  %335 = load i8, i8* %scevgep162.3, align 1
  %conv44.i180.3 = zext i8 %335 to i32
  %scevgep165.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 3
  %336 = load i8, i8* %scevgep165.3, align 1
  %conv49.i185.3 = zext i8 %336 to i32
  %xor.i186.3 = xor i32 %conv44.i180.3, %conv49.i185.3
  %conv50.i187.3 = trunc i32 %xor.i186.3 to i8
  %scevgep169.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 3
  store i8 %conv50.i187.3, i8* %scevgep169.3, align 1
  %337 = load i8, i8* %x, align 1
  %conv57.i194.3 = zext i8 %337 to i32
  %xor58.i195.3 = xor i32 %conv57.i194.3, 1
  %conv59.i196.3 = trunc i32 %xor58.i195.3 to i8
  %scevgep166.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 3
  %338 = load i8, i8* %scevgep166.3, align 1
  %call64.i201.3 = call zeroext i8 @mult(i8 zeroext %conv59.i196.3, i8 zeroext %338) #2
  %scevgep173.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 3
  store i8 %call64.i201.3, i8* %scevgep173.3, align 1
  %339 = load i8, i8* %x, align 1
  %scevgep170.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 3
  %340 = load i8, i8* %scevgep170.3, align 1
  %call75.i212.3 = call zeroext i8 @mult(i8 zeroext %339, i8 zeroext %340) #2
  %scevgep177.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 3
  store i8 %call75.i212.3, i8* %scevgep177.3, align 1
  %scevgep174.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 3
  %341 = load i8, i8* %scevgep174.3, align 1
  %conv84.i221.3 = zext i8 %341 to i32
  %scevgep178.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 3
  %342 = load i8, i8* %scevgep178.3, align 1
  %conv89.i226.3 = zext i8 %342 to i32
  %xor90.i227.3 = xor i32 %conv84.i221.3, %conv89.i226.3
  %conv91.i228.3 = trunc i32 %xor90.i227.3 to i8
  %scevgep181.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 3
  store i8 %conv91.i228.3, i8* %scevgep181.3, align 1
  %scevgep162.4 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 4
  %343 = load i8, i8* %scevgep162.4, align 1
  %conv44.i180.4 = zext i8 %343 to i32
  %scevgep165.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 4
  %344 = load i8, i8* %scevgep165.4, align 1
  %conv49.i185.4 = zext i8 %344 to i32
  %xor.i186.4 = xor i32 %conv44.i180.4, %conv49.i185.4
  %conv50.i187.4 = trunc i32 %xor.i186.4 to i8
  %scevgep169.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 4
  store i8 %conv50.i187.4, i8* %scevgep169.4, align 1
  %345 = load i8, i8* %x, align 1
  %conv57.i194.4 = zext i8 %345 to i32
  %xor58.i195.4 = xor i32 %conv57.i194.4, 1
  %conv59.i196.4 = trunc i32 %xor58.i195.4 to i8
  %scevgep166.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 4
  %346 = load i8, i8* %scevgep166.4, align 1
  %call64.i201.4 = call zeroext i8 @mult(i8 zeroext %conv59.i196.4, i8 zeroext %346) #2
  %scevgep173.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 4
  store i8 %call64.i201.4, i8* %scevgep173.4, align 1
  %347 = load i8, i8* %x, align 1
  %scevgep170.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 4
  %348 = load i8, i8* %scevgep170.4, align 1
  %call75.i212.4 = call zeroext i8 @mult(i8 zeroext %347, i8 zeroext %348) #2
  %scevgep177.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 4
  store i8 %call75.i212.4, i8* %scevgep177.4, align 1
  %scevgep174.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 4
  %349 = load i8, i8* %scevgep174.4, align 1
  %conv84.i221.4 = zext i8 %349 to i32
  %scevgep178.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 4
  %350 = load i8, i8* %scevgep178.4, align 1
  %conv89.i226.4 = zext i8 %350 to i32
  %xor90.i227.4 = xor i32 %conv84.i221.4, %conv89.i226.4
  %conv91.i228.4 = trunc i32 %xor90.i227.4 to i8
  %scevgep181.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 4
  store i8 %conv91.i228.4, i8* %scevgep181.4, align 1
  %scevgep164 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 1, i64 0
  %351 = bitcast i8* %scevgep164 to [5 x [5 x i8]]*
  %scevgep168 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 1, i64 0
  %352 = bitcast i8* %scevgep168 to [5 x [5 x i8]]*
  %scevgep172 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %353 = bitcast i8* %scevgep172 to [5 x [5 x i8]]*
  %scevgep176 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %354 = bitcast i8* %scevgep176 to [5 x [5 x i8]]*
  %scevgep180 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 1, i64 0
  %355 = bitcast i8* %scevgep180 to [5 x [5 x i8]]*
  %arrayidx56.i193.1 = getelementptr inbounds i8, i8* %x, i64 1
  %arrayidx70.i207.1 = getelementptr inbounds i8, i8* %x, i64 1
  %scevgep162.1475 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 0
  %356 = load i8, i8* %scevgep162.1475, align 1
  %conv44.i180.1476 = zext i8 %356 to i32
  %scevgep165.1477 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %351, i64 0, i64 0, i64 0
  %357 = load i8, i8* %scevgep165.1477, align 1
  %conv49.i185.1478 = zext i8 %357 to i32
  %xor.i186.1479 = xor i32 %conv44.i180.1476, %conv49.i185.1478
  %conv50.i187.1480 = trunc i32 %xor.i186.1479 to i8
  %scevgep169.1481 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %352, i64 0, i64 0, i64 0
  store i8 %conv50.i187.1480, i8* %scevgep169.1481, align 1
  %358 = load i8, i8* %arrayidx56.i193.1, align 1
  %conv57.i194.1482 = zext i8 %358 to i32
  %xor58.i195.1483 = xor i32 %conv57.i194.1482, 1
  %conv59.i196.1484 = trunc i32 %xor58.i195.1483 to i8
  %scevgep166.1485 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %351, i64 0, i64 0, i64 0
  %359 = load i8, i8* %scevgep166.1485, align 1
  %call64.i201.1486 = call zeroext i8 @mult(i8 zeroext %conv59.i196.1484, i8 zeroext %359) #2
  %scevgep173.1487 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %353, i64 0, i64 0, i64 0
  store i8 %call64.i201.1486, i8* %scevgep173.1487, align 1
  %360 = load i8, i8* %arrayidx70.i207.1, align 1
  %scevgep170.1488 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %352, i64 0, i64 0, i64 0
  %361 = load i8, i8* %scevgep170.1488, align 1
  %call75.i212.1489 = call zeroext i8 @mult(i8 zeroext %360, i8 zeroext %361) #2
  %scevgep177.1490 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %354, i64 0, i64 0, i64 0
  store i8 %call75.i212.1489, i8* %scevgep177.1490, align 1
  %scevgep174.1491 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %353, i64 0, i64 0, i64 0
  %362 = load i8, i8* %scevgep174.1491, align 1
  %conv84.i221.1492 = zext i8 %362 to i32
  %scevgep178.1493 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %354, i64 0, i64 0, i64 0
  %363 = load i8, i8* %scevgep178.1493, align 1
  %conv89.i226.1494 = zext i8 %363 to i32
  %xor90.i227.1495 = xor i32 %conv84.i221.1492, %conv89.i226.1494
  %conv91.i228.1496 = trunc i32 %xor90.i227.1495 to i8
  %scevgep181.1497 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %355, i64 0, i64 0, i64 0
  store i8 %conv91.i228.1496, i8* %scevgep181.1497, align 1
  %scevgep162.2.1 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 2
  %364 = load i8, i8* %scevgep162.2.1, align 1
  %conv44.i180.2.1 = zext i8 %364 to i32
  %scevgep165.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %351, i64 0, i64 0, i64 2
  %365 = load i8, i8* %scevgep165.2.1, align 1
  %conv49.i185.2.1 = zext i8 %365 to i32
  %xor.i186.2.1 = xor i32 %conv44.i180.2.1, %conv49.i185.2.1
  %conv50.i187.2.1 = trunc i32 %xor.i186.2.1 to i8
  %scevgep169.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %352, i64 0, i64 0, i64 2
  store i8 %conv50.i187.2.1, i8* %scevgep169.2.1, align 1
  %366 = load i8, i8* %arrayidx56.i193.1, align 1
  %conv57.i194.2.1 = zext i8 %366 to i32
  %xor58.i195.2.1 = xor i32 %conv57.i194.2.1, 1
  %conv59.i196.2.1 = trunc i32 %xor58.i195.2.1 to i8
  %scevgep166.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %351, i64 0, i64 0, i64 2
  %367 = load i8, i8* %scevgep166.2.1, align 1
  %call64.i201.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i196.2.1, i8 zeroext %367) #2
  %scevgep173.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %353, i64 0, i64 0, i64 2
  store i8 %call64.i201.2.1, i8* %scevgep173.2.1, align 1
  %368 = load i8, i8* %arrayidx70.i207.1, align 1
  %scevgep170.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %352, i64 0, i64 0, i64 2
  %369 = load i8, i8* %scevgep170.2.1, align 1
  %call75.i212.2.1 = call zeroext i8 @mult(i8 zeroext %368, i8 zeroext %369) #2
  %scevgep177.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %354, i64 0, i64 0, i64 2
  store i8 %call75.i212.2.1, i8* %scevgep177.2.1, align 1
  %scevgep174.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %353, i64 0, i64 0, i64 2
  %370 = load i8, i8* %scevgep174.2.1, align 1
  %conv84.i221.2.1 = zext i8 %370 to i32
  %scevgep178.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %354, i64 0, i64 0, i64 2
  %371 = load i8, i8* %scevgep178.2.1, align 1
  %conv89.i226.2.1 = zext i8 %371 to i32
  %xor90.i227.2.1 = xor i32 %conv84.i221.2.1, %conv89.i226.2.1
  %conv91.i228.2.1 = trunc i32 %xor90.i227.2.1 to i8
  %scevgep181.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %355, i64 0, i64 0, i64 2
  store i8 %conv91.i228.2.1, i8* %scevgep181.2.1, align 1
  %scevgep162.3.1 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 3
  %372 = load i8, i8* %scevgep162.3.1, align 1
  %conv44.i180.3.1 = zext i8 %372 to i32
  %scevgep165.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %351, i64 0, i64 0, i64 3
  %373 = load i8, i8* %scevgep165.3.1, align 1
  %conv49.i185.3.1 = zext i8 %373 to i32
  %xor.i186.3.1 = xor i32 %conv44.i180.3.1, %conv49.i185.3.1
  %conv50.i187.3.1 = trunc i32 %xor.i186.3.1 to i8
  %scevgep169.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %352, i64 0, i64 0, i64 3
  store i8 %conv50.i187.3.1, i8* %scevgep169.3.1, align 1
  %374 = load i8, i8* %arrayidx56.i193.1, align 1
  %conv57.i194.3.1 = zext i8 %374 to i32
  %xor58.i195.3.1 = xor i32 %conv57.i194.3.1, 1
  %conv59.i196.3.1 = trunc i32 %xor58.i195.3.1 to i8
  %scevgep166.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %351, i64 0, i64 0, i64 3
  %375 = load i8, i8* %scevgep166.3.1, align 1
  %call64.i201.3.1 = call zeroext i8 @mult(i8 zeroext %conv59.i196.3.1, i8 zeroext %375) #2
  %scevgep173.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %353, i64 0, i64 0, i64 3
  store i8 %call64.i201.3.1, i8* %scevgep173.3.1, align 1
  %376 = load i8, i8* %arrayidx70.i207.1, align 1
  %scevgep170.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %352, i64 0, i64 0, i64 3
  %377 = load i8, i8* %scevgep170.3.1, align 1
  %call75.i212.3.1 = call zeroext i8 @mult(i8 zeroext %376, i8 zeroext %377) #2
  %scevgep177.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %354, i64 0, i64 0, i64 3
  store i8 %call75.i212.3.1, i8* %scevgep177.3.1, align 1
  %scevgep174.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %353, i64 0, i64 0, i64 3
  %378 = load i8, i8* %scevgep174.3.1, align 1
  %conv84.i221.3.1 = zext i8 %378 to i32
  %scevgep178.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %354, i64 0, i64 0, i64 3
  %379 = load i8, i8* %scevgep178.3.1, align 1
  %conv89.i226.3.1 = zext i8 %379 to i32
  %xor90.i227.3.1 = xor i32 %conv84.i221.3.1, %conv89.i226.3.1
  %conv91.i228.3.1 = trunc i32 %xor90.i227.3.1 to i8
  %scevgep181.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %355, i64 0, i64 0, i64 3
  store i8 %conv91.i228.3.1, i8* %scevgep181.3.1, align 1
  %scevgep162.4.1 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 4
  %380 = load i8, i8* %scevgep162.4.1, align 1
  %conv44.i180.4.1 = zext i8 %380 to i32
  %scevgep165.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %351, i64 0, i64 0, i64 4
  %381 = load i8, i8* %scevgep165.4.1, align 1
  %conv49.i185.4.1 = zext i8 %381 to i32
  %xor.i186.4.1 = xor i32 %conv44.i180.4.1, %conv49.i185.4.1
  %conv50.i187.4.1 = trunc i32 %xor.i186.4.1 to i8
  %scevgep169.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %352, i64 0, i64 0, i64 4
  store i8 %conv50.i187.4.1, i8* %scevgep169.4.1, align 1
  %382 = load i8, i8* %arrayidx56.i193.1, align 1
  %conv57.i194.4.1 = zext i8 %382 to i32
  %xor58.i195.4.1 = xor i32 %conv57.i194.4.1, 1
  %conv59.i196.4.1 = trunc i32 %xor58.i195.4.1 to i8
  %scevgep166.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %351, i64 0, i64 0, i64 4
  %383 = load i8, i8* %scevgep166.4.1, align 1
  %call64.i201.4.1 = call zeroext i8 @mult(i8 zeroext %conv59.i196.4.1, i8 zeroext %383) #2
  %scevgep173.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %353, i64 0, i64 0, i64 4
  store i8 %call64.i201.4.1, i8* %scevgep173.4.1, align 1
  %384 = load i8, i8* %arrayidx70.i207.1, align 1
  %scevgep170.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %352, i64 0, i64 0, i64 4
  %385 = load i8, i8* %scevgep170.4.1, align 1
  %call75.i212.4.1 = call zeroext i8 @mult(i8 zeroext %384, i8 zeroext %385) #2
  %scevgep177.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %354, i64 0, i64 0, i64 4
  store i8 %call75.i212.4.1, i8* %scevgep177.4.1, align 1
  %scevgep174.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %353, i64 0, i64 0, i64 4
  %386 = load i8, i8* %scevgep174.4.1, align 1
  %conv84.i221.4.1 = zext i8 %386 to i32
  %scevgep178.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %354, i64 0, i64 0, i64 4
  %387 = load i8, i8* %scevgep178.4.1, align 1
  %conv89.i226.4.1 = zext i8 %387 to i32
  %xor90.i227.4.1 = xor i32 %conv84.i221.4.1, %conv89.i226.4.1
  %conv91.i228.4.1 = trunc i32 %xor90.i227.4.1 to i8
  %scevgep181.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %355, i64 0, i64 0, i64 4
  store i8 %conv91.i228.4.1, i8* %scevgep181.4.1, align 1
  %scevgep164.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %351, i64 0, i64 1, i64 0
  %388 = bitcast i8* %scevgep164.1 to [5 x [5 x i8]]*
  %scevgep168.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %352, i64 0, i64 1, i64 0
  %389 = bitcast i8* %scevgep168.1 to [5 x [5 x i8]]*
  %scevgep172.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %353, i64 0, i64 1, i64 0
  %390 = bitcast i8* %scevgep172.1 to [5 x [5 x i8]]*
  %scevgep176.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %354, i64 0, i64 1, i64 0
  %391 = bitcast i8* %scevgep176.1 to [5 x [5 x i8]]*
  %scevgep180.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %355, i64 0, i64 1, i64 0
  %392 = bitcast i8* %scevgep180.1 to [5 x [5 x i8]]*
  %arrayidx56.i193.2 = getelementptr inbounds i8, i8* %x, i64 2
  %arrayidx70.i207.2 = getelementptr inbounds i8, i8* %x, i64 2
  %scevgep162.2502 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 0
  %393 = load i8, i8* %scevgep162.2502, align 1
  %conv44.i180.2503 = zext i8 %393 to i32
  %scevgep165.2504 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %388, i64 0, i64 0, i64 0
  %394 = load i8, i8* %scevgep165.2504, align 1
  %conv49.i185.2505 = zext i8 %394 to i32
  %xor.i186.2506 = xor i32 %conv44.i180.2503, %conv49.i185.2505
  %conv50.i187.2507 = trunc i32 %xor.i186.2506 to i8
  %scevgep169.2508 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %389, i64 0, i64 0, i64 0
  store i8 %conv50.i187.2507, i8* %scevgep169.2508, align 1
  %395 = load i8, i8* %arrayidx56.i193.2, align 1
  %conv57.i194.2509 = zext i8 %395 to i32
  %xor58.i195.2510 = xor i32 %conv57.i194.2509, 1
  %conv59.i196.2511 = trunc i32 %xor58.i195.2510 to i8
  %scevgep166.2512 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %388, i64 0, i64 0, i64 0
  %396 = load i8, i8* %scevgep166.2512, align 1
  %call64.i201.2513 = call zeroext i8 @mult(i8 zeroext %conv59.i196.2511, i8 zeroext %396) #2
  %scevgep173.2514 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %390, i64 0, i64 0, i64 0
  store i8 %call64.i201.2513, i8* %scevgep173.2514, align 1
  %397 = load i8, i8* %arrayidx70.i207.2, align 1
  %scevgep170.2515 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %389, i64 0, i64 0, i64 0
  %398 = load i8, i8* %scevgep170.2515, align 1
  %call75.i212.2516 = call zeroext i8 @mult(i8 zeroext %397, i8 zeroext %398) #2
  %scevgep177.2517 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %391, i64 0, i64 0, i64 0
  store i8 %call75.i212.2516, i8* %scevgep177.2517, align 1
  %scevgep174.2518 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %390, i64 0, i64 0, i64 0
  %399 = load i8, i8* %scevgep174.2518, align 1
  %conv84.i221.2519 = zext i8 %399 to i32
  %scevgep178.2520 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %391, i64 0, i64 0, i64 0
  %400 = load i8, i8* %scevgep178.2520, align 1
  %conv89.i226.2521 = zext i8 %400 to i32
  %xor90.i227.2522 = xor i32 %conv84.i221.2519, %conv89.i226.2521
  %conv91.i228.2523 = trunc i32 %xor90.i227.2522 to i8
  %scevgep181.2524 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %392, i64 0, i64 0, i64 0
  store i8 %conv91.i228.2523, i8* %scevgep181.2524, align 1
  %scevgep162.1.2 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 1
  %401 = load i8, i8* %scevgep162.1.2, align 1
  %conv44.i180.1.2 = zext i8 %401 to i32
  %scevgep165.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %388, i64 0, i64 0, i64 1
  %402 = load i8, i8* %scevgep165.1.2, align 1
  %conv49.i185.1.2 = zext i8 %402 to i32
  %xor.i186.1.2 = xor i32 %conv44.i180.1.2, %conv49.i185.1.2
  %conv50.i187.1.2 = trunc i32 %xor.i186.1.2 to i8
  %scevgep169.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %389, i64 0, i64 0, i64 1
  store i8 %conv50.i187.1.2, i8* %scevgep169.1.2, align 1
  %403 = load i8, i8* %arrayidx56.i193.2, align 1
  %conv57.i194.1.2 = zext i8 %403 to i32
  %xor58.i195.1.2 = xor i32 %conv57.i194.1.2, 1
  %conv59.i196.1.2 = trunc i32 %xor58.i195.1.2 to i8
  %scevgep166.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %388, i64 0, i64 0, i64 1
  %404 = load i8, i8* %scevgep166.1.2, align 1
  %call64.i201.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i196.1.2, i8 zeroext %404) #2
  %scevgep173.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %390, i64 0, i64 0, i64 1
  store i8 %call64.i201.1.2, i8* %scevgep173.1.2, align 1
  %405 = load i8, i8* %arrayidx70.i207.2, align 1
  %scevgep170.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %389, i64 0, i64 0, i64 1
  %406 = load i8, i8* %scevgep170.1.2, align 1
  %call75.i212.1.2 = call zeroext i8 @mult(i8 zeroext %405, i8 zeroext %406) #2
  %scevgep177.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %391, i64 0, i64 0, i64 1
  store i8 %call75.i212.1.2, i8* %scevgep177.1.2, align 1
  %scevgep174.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %390, i64 0, i64 0, i64 1
  %407 = load i8, i8* %scevgep174.1.2, align 1
  %conv84.i221.1.2 = zext i8 %407 to i32
  %scevgep178.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %391, i64 0, i64 0, i64 1
  %408 = load i8, i8* %scevgep178.1.2, align 1
  %conv89.i226.1.2 = zext i8 %408 to i32
  %xor90.i227.1.2 = xor i32 %conv84.i221.1.2, %conv89.i226.1.2
  %conv91.i228.1.2 = trunc i32 %xor90.i227.1.2 to i8
  %scevgep181.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %392, i64 0, i64 0, i64 1
  store i8 %conv91.i228.1.2, i8* %scevgep181.1.2, align 1
  %scevgep162.3.2 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 3
  %409 = load i8, i8* %scevgep162.3.2, align 1
  %conv44.i180.3.2 = zext i8 %409 to i32
  %scevgep165.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %388, i64 0, i64 0, i64 3
  %410 = load i8, i8* %scevgep165.3.2, align 1
  %conv49.i185.3.2 = zext i8 %410 to i32
  %xor.i186.3.2 = xor i32 %conv44.i180.3.2, %conv49.i185.3.2
  %conv50.i187.3.2 = trunc i32 %xor.i186.3.2 to i8
  %scevgep169.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %389, i64 0, i64 0, i64 3
  store i8 %conv50.i187.3.2, i8* %scevgep169.3.2, align 1
  %411 = load i8, i8* %arrayidx56.i193.2, align 1
  %conv57.i194.3.2 = zext i8 %411 to i32
  %xor58.i195.3.2 = xor i32 %conv57.i194.3.2, 1
  %conv59.i196.3.2 = trunc i32 %xor58.i195.3.2 to i8
  %scevgep166.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %388, i64 0, i64 0, i64 3
  %412 = load i8, i8* %scevgep166.3.2, align 1
  %call64.i201.3.2 = call zeroext i8 @mult(i8 zeroext %conv59.i196.3.2, i8 zeroext %412) #2
  %scevgep173.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %390, i64 0, i64 0, i64 3
  store i8 %call64.i201.3.2, i8* %scevgep173.3.2, align 1
  %413 = load i8, i8* %arrayidx70.i207.2, align 1
  %scevgep170.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %389, i64 0, i64 0, i64 3
  %414 = load i8, i8* %scevgep170.3.2, align 1
  %call75.i212.3.2 = call zeroext i8 @mult(i8 zeroext %413, i8 zeroext %414) #2
  %scevgep177.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %391, i64 0, i64 0, i64 3
  store i8 %call75.i212.3.2, i8* %scevgep177.3.2, align 1
  %scevgep174.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %390, i64 0, i64 0, i64 3
  %415 = load i8, i8* %scevgep174.3.2, align 1
  %conv84.i221.3.2 = zext i8 %415 to i32
  %scevgep178.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %391, i64 0, i64 0, i64 3
  %416 = load i8, i8* %scevgep178.3.2, align 1
  %conv89.i226.3.2 = zext i8 %416 to i32
  %xor90.i227.3.2 = xor i32 %conv84.i221.3.2, %conv89.i226.3.2
  %conv91.i228.3.2 = trunc i32 %xor90.i227.3.2 to i8
  %scevgep181.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %392, i64 0, i64 0, i64 3
  store i8 %conv91.i228.3.2, i8* %scevgep181.3.2, align 1
  %scevgep162.4.2 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 4
  %417 = load i8, i8* %scevgep162.4.2, align 1
  %conv44.i180.4.2 = zext i8 %417 to i32
  %scevgep165.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %388, i64 0, i64 0, i64 4
  %418 = load i8, i8* %scevgep165.4.2, align 1
  %conv49.i185.4.2 = zext i8 %418 to i32
  %xor.i186.4.2 = xor i32 %conv44.i180.4.2, %conv49.i185.4.2
  %conv50.i187.4.2 = trunc i32 %xor.i186.4.2 to i8
  %scevgep169.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %389, i64 0, i64 0, i64 4
  store i8 %conv50.i187.4.2, i8* %scevgep169.4.2, align 1
  %419 = load i8, i8* %arrayidx56.i193.2, align 1
  %conv57.i194.4.2 = zext i8 %419 to i32
  %xor58.i195.4.2 = xor i32 %conv57.i194.4.2, 1
  %conv59.i196.4.2 = trunc i32 %xor58.i195.4.2 to i8
  %scevgep166.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %388, i64 0, i64 0, i64 4
  %420 = load i8, i8* %scevgep166.4.2, align 1
  %call64.i201.4.2 = call zeroext i8 @mult(i8 zeroext %conv59.i196.4.2, i8 zeroext %420) #2
  %scevgep173.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %390, i64 0, i64 0, i64 4
  store i8 %call64.i201.4.2, i8* %scevgep173.4.2, align 1
  %421 = load i8, i8* %arrayidx70.i207.2, align 1
  %scevgep170.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %389, i64 0, i64 0, i64 4
  %422 = load i8, i8* %scevgep170.4.2, align 1
  %call75.i212.4.2 = call zeroext i8 @mult(i8 zeroext %421, i8 zeroext %422) #2
  %scevgep177.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %391, i64 0, i64 0, i64 4
  store i8 %call75.i212.4.2, i8* %scevgep177.4.2, align 1
  %scevgep174.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %390, i64 0, i64 0, i64 4
  %423 = load i8, i8* %scevgep174.4.2, align 1
  %conv84.i221.4.2 = zext i8 %423 to i32
  %scevgep178.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %391, i64 0, i64 0, i64 4
  %424 = load i8, i8* %scevgep178.4.2, align 1
  %conv89.i226.4.2 = zext i8 %424 to i32
  %xor90.i227.4.2 = xor i32 %conv84.i221.4.2, %conv89.i226.4.2
  %conv91.i228.4.2 = trunc i32 %xor90.i227.4.2 to i8
  %scevgep181.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %392, i64 0, i64 0, i64 4
  store i8 %conv91.i228.4.2, i8* %scevgep181.4.2, align 1
  %scevgep164.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %388, i64 0, i64 1, i64 0
  %425 = bitcast i8* %scevgep164.2 to [5 x [5 x i8]]*
  %scevgep168.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %389, i64 0, i64 1, i64 0
  %426 = bitcast i8* %scevgep168.2 to [5 x [5 x i8]]*
  %scevgep172.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %390, i64 0, i64 1, i64 0
  %427 = bitcast i8* %scevgep172.2 to [5 x [5 x i8]]*
  %scevgep176.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %391, i64 0, i64 1, i64 0
  %428 = bitcast i8* %scevgep176.2 to [5 x [5 x i8]]*
  %scevgep180.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %392, i64 0, i64 1, i64 0
  %429 = bitcast i8* %scevgep180.2 to [5 x [5 x i8]]*
  %arrayidx56.i193.3 = getelementptr inbounds i8, i8* %x, i64 3
  %arrayidx70.i207.3 = getelementptr inbounds i8, i8* %x, i64 3
  %scevgep162.3529 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 0
  %430 = load i8, i8* %scevgep162.3529, align 1
  %conv44.i180.3530 = zext i8 %430 to i32
  %scevgep165.3531 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %425, i64 0, i64 0, i64 0
  %431 = load i8, i8* %scevgep165.3531, align 1
  %conv49.i185.3532 = zext i8 %431 to i32
  %xor.i186.3533 = xor i32 %conv44.i180.3530, %conv49.i185.3532
  %conv50.i187.3534 = trunc i32 %xor.i186.3533 to i8
  %scevgep169.3535 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %426, i64 0, i64 0, i64 0
  store i8 %conv50.i187.3534, i8* %scevgep169.3535, align 1
  %432 = load i8, i8* %arrayidx56.i193.3, align 1
  %conv57.i194.3536 = zext i8 %432 to i32
  %xor58.i195.3537 = xor i32 %conv57.i194.3536, 1
  %conv59.i196.3538 = trunc i32 %xor58.i195.3537 to i8
  %scevgep166.3539 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %425, i64 0, i64 0, i64 0
  %433 = load i8, i8* %scevgep166.3539, align 1
  %call64.i201.3540 = call zeroext i8 @mult(i8 zeroext %conv59.i196.3538, i8 zeroext %433) #2
  %scevgep173.3541 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %427, i64 0, i64 0, i64 0
  store i8 %call64.i201.3540, i8* %scevgep173.3541, align 1
  %434 = load i8, i8* %arrayidx70.i207.3, align 1
  %scevgep170.3542 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %426, i64 0, i64 0, i64 0
  %435 = load i8, i8* %scevgep170.3542, align 1
  %call75.i212.3543 = call zeroext i8 @mult(i8 zeroext %434, i8 zeroext %435) #2
  %scevgep177.3544 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %428, i64 0, i64 0, i64 0
  store i8 %call75.i212.3543, i8* %scevgep177.3544, align 1
  %scevgep174.3545 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %427, i64 0, i64 0, i64 0
  %436 = load i8, i8* %scevgep174.3545, align 1
  %conv84.i221.3546 = zext i8 %436 to i32
  %scevgep178.3547 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %428, i64 0, i64 0, i64 0
  %437 = load i8, i8* %scevgep178.3547, align 1
  %conv89.i226.3548 = zext i8 %437 to i32
  %xor90.i227.3549 = xor i32 %conv84.i221.3546, %conv89.i226.3548
  %conv91.i228.3550 = trunc i32 %xor90.i227.3549 to i8
  %scevgep181.3551 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %429, i64 0, i64 0, i64 0
  store i8 %conv91.i228.3550, i8* %scevgep181.3551, align 1
  %scevgep162.1.3 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 1
  %438 = load i8, i8* %scevgep162.1.3, align 1
  %conv44.i180.1.3 = zext i8 %438 to i32
  %scevgep165.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %425, i64 0, i64 0, i64 1
  %439 = load i8, i8* %scevgep165.1.3, align 1
  %conv49.i185.1.3 = zext i8 %439 to i32
  %xor.i186.1.3 = xor i32 %conv44.i180.1.3, %conv49.i185.1.3
  %conv50.i187.1.3 = trunc i32 %xor.i186.1.3 to i8
  %scevgep169.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %426, i64 0, i64 0, i64 1
  store i8 %conv50.i187.1.3, i8* %scevgep169.1.3, align 1
  %440 = load i8, i8* %arrayidx56.i193.3, align 1
  %conv57.i194.1.3 = zext i8 %440 to i32
  %xor58.i195.1.3 = xor i32 %conv57.i194.1.3, 1
  %conv59.i196.1.3 = trunc i32 %xor58.i195.1.3 to i8
  %scevgep166.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %425, i64 0, i64 0, i64 1
  %441 = load i8, i8* %scevgep166.1.3, align 1
  %call64.i201.1.3 = call zeroext i8 @mult(i8 zeroext %conv59.i196.1.3, i8 zeroext %441) #2
  %scevgep173.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %427, i64 0, i64 0, i64 1
  store i8 %call64.i201.1.3, i8* %scevgep173.1.3, align 1
  %442 = load i8, i8* %arrayidx70.i207.3, align 1
  %scevgep170.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %426, i64 0, i64 0, i64 1
  %443 = load i8, i8* %scevgep170.1.3, align 1
  %call75.i212.1.3 = call zeroext i8 @mult(i8 zeroext %442, i8 zeroext %443) #2
  %scevgep177.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %428, i64 0, i64 0, i64 1
  store i8 %call75.i212.1.3, i8* %scevgep177.1.3, align 1
  %scevgep174.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %427, i64 0, i64 0, i64 1
  %444 = load i8, i8* %scevgep174.1.3, align 1
  %conv84.i221.1.3 = zext i8 %444 to i32
  %scevgep178.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %428, i64 0, i64 0, i64 1
  %445 = load i8, i8* %scevgep178.1.3, align 1
  %conv89.i226.1.3 = zext i8 %445 to i32
  %xor90.i227.1.3 = xor i32 %conv84.i221.1.3, %conv89.i226.1.3
  %conv91.i228.1.3 = trunc i32 %xor90.i227.1.3 to i8
  %scevgep181.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %429, i64 0, i64 0, i64 1
  store i8 %conv91.i228.1.3, i8* %scevgep181.1.3, align 1
  %scevgep162.2.3 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 2
  %446 = load i8, i8* %scevgep162.2.3, align 1
  %conv44.i180.2.3 = zext i8 %446 to i32
  %scevgep165.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %425, i64 0, i64 0, i64 2
  %447 = load i8, i8* %scevgep165.2.3, align 1
  %conv49.i185.2.3 = zext i8 %447 to i32
  %xor.i186.2.3 = xor i32 %conv44.i180.2.3, %conv49.i185.2.3
  %conv50.i187.2.3 = trunc i32 %xor.i186.2.3 to i8
  %scevgep169.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %426, i64 0, i64 0, i64 2
  store i8 %conv50.i187.2.3, i8* %scevgep169.2.3, align 1
  %448 = load i8, i8* %arrayidx56.i193.3, align 1
  %conv57.i194.2.3 = zext i8 %448 to i32
  %xor58.i195.2.3 = xor i32 %conv57.i194.2.3, 1
  %conv59.i196.2.3 = trunc i32 %xor58.i195.2.3 to i8
  %scevgep166.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %425, i64 0, i64 0, i64 2
  %449 = load i8, i8* %scevgep166.2.3, align 1
  %call64.i201.2.3 = call zeroext i8 @mult(i8 zeroext %conv59.i196.2.3, i8 zeroext %449) #2
  %scevgep173.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %427, i64 0, i64 0, i64 2
  store i8 %call64.i201.2.3, i8* %scevgep173.2.3, align 1
  %450 = load i8, i8* %arrayidx70.i207.3, align 1
  %scevgep170.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %426, i64 0, i64 0, i64 2
  %451 = load i8, i8* %scevgep170.2.3, align 1
  %call75.i212.2.3 = call zeroext i8 @mult(i8 zeroext %450, i8 zeroext %451) #2
  %scevgep177.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %428, i64 0, i64 0, i64 2
  store i8 %call75.i212.2.3, i8* %scevgep177.2.3, align 1
  %scevgep174.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %427, i64 0, i64 0, i64 2
  %452 = load i8, i8* %scevgep174.2.3, align 1
  %conv84.i221.2.3 = zext i8 %452 to i32
  %scevgep178.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %428, i64 0, i64 0, i64 2
  %453 = load i8, i8* %scevgep178.2.3, align 1
  %conv89.i226.2.3 = zext i8 %453 to i32
  %xor90.i227.2.3 = xor i32 %conv84.i221.2.3, %conv89.i226.2.3
  %conv91.i228.2.3 = trunc i32 %xor90.i227.2.3 to i8
  %scevgep181.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %429, i64 0, i64 0, i64 2
  store i8 %conv91.i228.2.3, i8* %scevgep181.2.3, align 1
  %scevgep162.4.3 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 4
  %454 = load i8, i8* %scevgep162.4.3, align 1
  %conv44.i180.4.3 = zext i8 %454 to i32
  %scevgep165.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %425, i64 0, i64 0, i64 4
  %455 = load i8, i8* %scevgep165.4.3, align 1
  %conv49.i185.4.3 = zext i8 %455 to i32
  %xor.i186.4.3 = xor i32 %conv44.i180.4.3, %conv49.i185.4.3
  %conv50.i187.4.3 = trunc i32 %xor.i186.4.3 to i8
  %scevgep169.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %426, i64 0, i64 0, i64 4
  store i8 %conv50.i187.4.3, i8* %scevgep169.4.3, align 1
  %456 = load i8, i8* %arrayidx56.i193.3, align 1
  %conv57.i194.4.3 = zext i8 %456 to i32
  %xor58.i195.4.3 = xor i32 %conv57.i194.4.3, 1
  %conv59.i196.4.3 = trunc i32 %xor58.i195.4.3 to i8
  %scevgep166.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %425, i64 0, i64 0, i64 4
  %457 = load i8, i8* %scevgep166.4.3, align 1
  %call64.i201.4.3 = call zeroext i8 @mult(i8 zeroext %conv59.i196.4.3, i8 zeroext %457) #2
  %scevgep173.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %427, i64 0, i64 0, i64 4
  store i8 %call64.i201.4.3, i8* %scevgep173.4.3, align 1
  %458 = load i8, i8* %arrayidx70.i207.3, align 1
  %scevgep170.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %426, i64 0, i64 0, i64 4
  %459 = load i8, i8* %scevgep170.4.3, align 1
  %call75.i212.4.3 = call zeroext i8 @mult(i8 zeroext %458, i8 zeroext %459) #2
  %scevgep177.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %428, i64 0, i64 0, i64 4
  store i8 %call75.i212.4.3, i8* %scevgep177.4.3, align 1
  %scevgep174.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %427, i64 0, i64 0, i64 4
  %460 = load i8, i8* %scevgep174.4.3, align 1
  %conv84.i221.4.3 = zext i8 %460 to i32
  %scevgep178.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %428, i64 0, i64 0, i64 4
  %461 = load i8, i8* %scevgep178.4.3, align 1
  %conv89.i226.4.3 = zext i8 %461 to i32
  %xor90.i227.4.3 = xor i32 %conv84.i221.4.3, %conv89.i226.4.3
  %conv91.i228.4.3 = trunc i32 %xor90.i227.4.3 to i8
  %scevgep181.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %429, i64 0, i64 0, i64 4
  store i8 %conv91.i228.4.3, i8* %scevgep181.4.3, align 1
  %scevgep164.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %425, i64 0, i64 1, i64 0
  %462 = bitcast i8* %scevgep164.3 to [5 x [5 x i8]]*
  %scevgep168.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %426, i64 0, i64 1, i64 0
  %463 = bitcast i8* %scevgep168.3 to [5 x [5 x i8]]*
  %scevgep172.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %427, i64 0, i64 1, i64 0
  %464 = bitcast i8* %scevgep172.3 to [5 x [5 x i8]]*
  %scevgep176.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %428, i64 0, i64 1, i64 0
  %465 = bitcast i8* %scevgep176.3 to [5 x [5 x i8]]*
  %scevgep180.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %429, i64 0, i64 1, i64 0
  %466 = bitcast i8* %scevgep180.3 to [5 x [5 x i8]]*
  %arrayidx56.i193.4 = getelementptr inbounds i8, i8* %x, i64 4
  %arrayidx70.i207.4 = getelementptr inbounds i8, i8* %x, i64 4
  %scevgep162.4556 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 0
  %467 = load i8, i8* %scevgep162.4556, align 1
  %conv44.i180.4557 = zext i8 %467 to i32
  %scevgep165.4558 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %462, i64 0, i64 0, i64 0
  %468 = load i8, i8* %scevgep165.4558, align 1
  %conv49.i185.4559 = zext i8 %468 to i32
  %xor.i186.4560 = xor i32 %conv44.i180.4557, %conv49.i185.4559
  %conv50.i187.4561 = trunc i32 %xor.i186.4560 to i8
  %scevgep169.4562 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %463, i64 0, i64 0, i64 0
  store i8 %conv50.i187.4561, i8* %scevgep169.4562, align 1
  %469 = load i8, i8* %arrayidx56.i193.4, align 1
  %conv57.i194.4563 = zext i8 %469 to i32
  %xor58.i195.4564 = xor i32 %conv57.i194.4563, 1
  %conv59.i196.4565 = trunc i32 %xor58.i195.4564 to i8
  %scevgep166.4566 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %462, i64 0, i64 0, i64 0
  %470 = load i8, i8* %scevgep166.4566, align 1
  %call64.i201.4567 = call zeroext i8 @mult(i8 zeroext %conv59.i196.4565, i8 zeroext %470) #2
  %scevgep173.4568 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %464, i64 0, i64 0, i64 0
  store i8 %call64.i201.4567, i8* %scevgep173.4568, align 1
  %471 = load i8, i8* %arrayidx70.i207.4, align 1
  %scevgep170.4569 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %463, i64 0, i64 0, i64 0
  %472 = load i8, i8* %scevgep170.4569, align 1
  %call75.i212.4570 = call zeroext i8 @mult(i8 zeroext %471, i8 zeroext %472) #2
  %scevgep177.4571 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %465, i64 0, i64 0, i64 0
  store i8 %call75.i212.4570, i8* %scevgep177.4571, align 1
  %scevgep174.4572 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %464, i64 0, i64 0, i64 0
  %473 = load i8, i8* %scevgep174.4572, align 1
  %conv84.i221.4573 = zext i8 %473 to i32
  %scevgep178.4574 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %465, i64 0, i64 0, i64 0
  %474 = load i8, i8* %scevgep178.4574, align 1
  %conv89.i226.4575 = zext i8 %474 to i32
  %xor90.i227.4576 = xor i32 %conv84.i221.4573, %conv89.i226.4575
  %conv91.i228.4577 = trunc i32 %xor90.i227.4576 to i8
  %scevgep181.4578 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %466, i64 0, i64 0, i64 0
  store i8 %conv91.i228.4577, i8* %scevgep181.4578, align 1
  %scevgep162.1.4 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 1
  %475 = load i8, i8* %scevgep162.1.4, align 1
  %conv44.i180.1.4 = zext i8 %475 to i32
  %scevgep165.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %462, i64 0, i64 0, i64 1
  %476 = load i8, i8* %scevgep165.1.4, align 1
  %conv49.i185.1.4 = zext i8 %476 to i32
  %xor.i186.1.4 = xor i32 %conv44.i180.1.4, %conv49.i185.1.4
  %conv50.i187.1.4 = trunc i32 %xor.i186.1.4 to i8
  %scevgep169.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %463, i64 0, i64 0, i64 1
  store i8 %conv50.i187.1.4, i8* %scevgep169.1.4, align 1
  %477 = load i8, i8* %arrayidx56.i193.4, align 1
  %conv57.i194.1.4 = zext i8 %477 to i32
  %xor58.i195.1.4 = xor i32 %conv57.i194.1.4, 1
  %conv59.i196.1.4 = trunc i32 %xor58.i195.1.4 to i8
  %scevgep166.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %462, i64 0, i64 0, i64 1
  %478 = load i8, i8* %scevgep166.1.4, align 1
  %call64.i201.1.4 = call zeroext i8 @mult(i8 zeroext %conv59.i196.1.4, i8 zeroext %478) #2
  %scevgep173.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %464, i64 0, i64 0, i64 1
  store i8 %call64.i201.1.4, i8* %scevgep173.1.4, align 1
  %479 = load i8, i8* %arrayidx70.i207.4, align 1
  %scevgep170.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %463, i64 0, i64 0, i64 1
  %480 = load i8, i8* %scevgep170.1.4, align 1
  %call75.i212.1.4 = call zeroext i8 @mult(i8 zeroext %479, i8 zeroext %480) #2
  %scevgep177.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %465, i64 0, i64 0, i64 1
  store i8 %call75.i212.1.4, i8* %scevgep177.1.4, align 1
  %scevgep174.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %464, i64 0, i64 0, i64 1
  %481 = load i8, i8* %scevgep174.1.4, align 1
  %conv84.i221.1.4 = zext i8 %481 to i32
  %scevgep178.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %465, i64 0, i64 0, i64 1
  %482 = load i8, i8* %scevgep178.1.4, align 1
  %conv89.i226.1.4 = zext i8 %482 to i32
  %xor90.i227.1.4 = xor i32 %conv84.i221.1.4, %conv89.i226.1.4
  %conv91.i228.1.4 = trunc i32 %xor90.i227.1.4 to i8
  %scevgep181.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %466, i64 0, i64 0, i64 1
  store i8 %conv91.i228.1.4, i8* %scevgep181.1.4, align 1
  %scevgep162.2.4 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 2
  %483 = load i8, i8* %scevgep162.2.4, align 1
  %conv44.i180.2.4 = zext i8 %483 to i32
  %scevgep165.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %462, i64 0, i64 0, i64 2
  %484 = load i8, i8* %scevgep165.2.4, align 1
  %conv49.i185.2.4 = zext i8 %484 to i32
  %xor.i186.2.4 = xor i32 %conv44.i180.2.4, %conv49.i185.2.4
  %conv50.i187.2.4 = trunc i32 %xor.i186.2.4 to i8
  %scevgep169.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %463, i64 0, i64 0, i64 2
  store i8 %conv50.i187.2.4, i8* %scevgep169.2.4, align 1
  %485 = load i8, i8* %arrayidx56.i193.4, align 1
  %conv57.i194.2.4 = zext i8 %485 to i32
  %xor58.i195.2.4 = xor i32 %conv57.i194.2.4, 1
  %conv59.i196.2.4 = trunc i32 %xor58.i195.2.4 to i8
  %scevgep166.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %462, i64 0, i64 0, i64 2
  %486 = load i8, i8* %scevgep166.2.4, align 1
  %call64.i201.2.4 = call zeroext i8 @mult(i8 zeroext %conv59.i196.2.4, i8 zeroext %486) #2
  %scevgep173.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %464, i64 0, i64 0, i64 2
  store i8 %call64.i201.2.4, i8* %scevgep173.2.4, align 1
  %487 = load i8, i8* %arrayidx70.i207.4, align 1
  %scevgep170.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %463, i64 0, i64 0, i64 2
  %488 = load i8, i8* %scevgep170.2.4, align 1
  %call75.i212.2.4 = call zeroext i8 @mult(i8 zeroext %487, i8 zeroext %488) #2
  %scevgep177.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %465, i64 0, i64 0, i64 2
  store i8 %call75.i212.2.4, i8* %scevgep177.2.4, align 1
  %scevgep174.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %464, i64 0, i64 0, i64 2
  %489 = load i8, i8* %scevgep174.2.4, align 1
  %conv84.i221.2.4 = zext i8 %489 to i32
  %scevgep178.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %465, i64 0, i64 0, i64 2
  %490 = load i8, i8* %scevgep178.2.4, align 1
  %conv89.i226.2.4 = zext i8 %490 to i32
  %xor90.i227.2.4 = xor i32 %conv84.i221.2.4, %conv89.i226.2.4
  %conv91.i228.2.4 = trunc i32 %xor90.i227.2.4 to i8
  %scevgep181.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %466, i64 0, i64 0, i64 2
  store i8 %conv91.i228.2.4, i8* %scevgep181.2.4, align 1
  %scevgep162.3.4 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 3
  %491 = load i8, i8* %scevgep162.3.4, align 1
  %conv44.i180.3.4 = zext i8 %491 to i32
  %scevgep165.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %462, i64 0, i64 0, i64 3
  %492 = load i8, i8* %scevgep165.3.4, align 1
  %conv49.i185.3.4 = zext i8 %492 to i32
  %xor.i186.3.4 = xor i32 %conv44.i180.3.4, %conv49.i185.3.4
  %conv50.i187.3.4 = trunc i32 %xor.i186.3.4 to i8
  %scevgep169.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %463, i64 0, i64 0, i64 3
  store i8 %conv50.i187.3.4, i8* %scevgep169.3.4, align 1
  %493 = load i8, i8* %arrayidx56.i193.4, align 1
  %conv57.i194.3.4 = zext i8 %493 to i32
  %xor58.i195.3.4 = xor i32 %conv57.i194.3.4, 1
  %conv59.i196.3.4 = trunc i32 %xor58.i195.3.4 to i8
  %scevgep166.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %462, i64 0, i64 0, i64 3
  %494 = load i8, i8* %scevgep166.3.4, align 1
  %call64.i201.3.4 = call zeroext i8 @mult(i8 zeroext %conv59.i196.3.4, i8 zeroext %494) #2
  %scevgep173.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %464, i64 0, i64 0, i64 3
  store i8 %call64.i201.3.4, i8* %scevgep173.3.4, align 1
  %495 = load i8, i8* %arrayidx70.i207.4, align 1
  %scevgep170.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %463, i64 0, i64 0, i64 3
  %496 = load i8, i8* %scevgep170.3.4, align 1
  %call75.i212.3.4 = call zeroext i8 @mult(i8 zeroext %495, i8 zeroext %496) #2
  %scevgep177.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %465, i64 0, i64 0, i64 3
  store i8 %call75.i212.3.4, i8* %scevgep177.3.4, align 1
  %scevgep174.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %464, i64 0, i64 0, i64 3
  %497 = load i8, i8* %scevgep174.3.4, align 1
  %conv84.i221.3.4 = zext i8 %497 to i32
  %scevgep178.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %465, i64 0, i64 0, i64 3
  %498 = load i8, i8* %scevgep178.3.4, align 1
  %conv89.i226.3.4 = zext i8 %498 to i32
  %xor90.i227.3.4 = xor i32 %conv84.i221.3.4, %conv89.i226.3.4
  %conv91.i228.3.4 = trunc i32 %xor90.i227.3.4 to i8
  %scevgep181.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %466, i64 0, i64 0, i64 3
  store i8 %conv91.i228.3.4, i8* %scevgep181.3.4, align 1
  %499 = load i8, i8* %x, align 1
  %500 = load i8, i8* %arraydecay8, align 1
  %call111.i245 = call zeroext i8 @mult(i8 zeroext %499, i8 zeroext %500) #2
  store i8 %call111.i245, i8* %arraydecay9, align 1
  %scevgep152.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 1
  %501 = load i8, i8* %scevgep152.1, align 1
  %conv126.i257.1 = zext i8 %501 to i32
  %502 = load i8, i8* %arraydecay9, align 1
  %conv129.i260.1 = zext i8 %502 to i32
  %xor130.i261.1 = xor i32 %conv129.i260.1, %conv126.i257.1
  %conv131.i262.1 = trunc i32 %xor130.i261.1 to i8
  store i8 %conv131.i262.1, i8* %arraydecay9, align 1
  %scevgep152.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 2
  %503 = load i8, i8* %scevgep152.2, align 1
  %conv126.i257.2 = zext i8 %503 to i32
  %504 = load i8, i8* %arraydecay9, align 1
  %conv129.i260.2 = zext i8 %504 to i32
  %xor130.i261.2 = xor i32 %conv129.i260.2, %conv126.i257.2
  %conv131.i262.2 = trunc i32 %xor130.i261.2 to i8
  store i8 %conv131.i262.2, i8* %arraydecay9, align 1
  %scevgep152.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 3
  %505 = load i8, i8* %scevgep152.3, align 1
  %conv126.i257.3 = zext i8 %505 to i32
  %506 = load i8, i8* %arraydecay9, align 1
  %conv129.i260.3 = zext i8 %506 to i32
  %xor130.i261.3 = xor i32 %conv129.i260.3, %conv126.i257.3
  %conv131.i262.3 = trunc i32 %xor130.i261.3 to i8
  store i8 %conv131.i262.3, i8* %arraydecay9, align 1
  %scevgep152.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 4
  %507 = load i8, i8* %scevgep152.4, align 1
  %conv126.i257.4 = zext i8 %507 to i32
  %508 = load i8, i8* %arraydecay9, align 1
  %conv129.i260.4 = zext i8 %508 to i32
  %xor130.i261.4 = xor i32 %conv129.i260.4, %conv126.i257.4
  %conv131.i262.4 = trunc i32 %xor130.i261.4 to i8
  store i8 %conv131.i262.4, i8* %arraydecay9, align 1
  %scevgep151 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 1, i64 0
  %509 = bitcast i8* %scevgep151 to [5 x [5 x i8]]*
  %arrayidx108.i242.1 = getelementptr inbounds i8, i8* %x, i64 1
  %510 = load i8, i8* %arrayidx108.i242.1, align 1
  %arrayidx110.i244.1 = getelementptr inbounds i8, i8* %arraydecay8, i64 1
  %511 = load i8, i8* %arrayidx110.i244.1, align 1
  %call111.i245.1 = call zeroext i8 @mult(i8 zeroext %510, i8 zeroext %511) #2
  %arrayidx113.i247.1 = getelementptr inbounds i8, i8* %arraydecay9, i64 1
  store i8 %call111.i245.1, i8* %arrayidx113.i247.1, align 1
  %arrayidx128.i259.1 = getelementptr inbounds i8, i8* %arraydecay9, i64 1
  %scevgep152.1439 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %509, i64 0, i64 0, i64 0
  %512 = load i8, i8* %scevgep152.1439, align 1
  %conv126.i257.1440 = zext i8 %512 to i32
  %513 = load i8, i8* %arrayidx128.i259.1, align 1
  %conv129.i260.1441 = zext i8 %513 to i32
  %xor130.i261.1442 = xor i32 %conv129.i260.1441, %conv126.i257.1440
  %conv131.i262.1443 = trunc i32 %xor130.i261.1442 to i8
  store i8 %conv131.i262.1443, i8* %arrayidx128.i259.1, align 1
  %scevgep152.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %509, i64 0, i64 0, i64 2
  %514 = load i8, i8* %scevgep152.2.1, align 1
  %conv126.i257.2.1 = zext i8 %514 to i32
  %515 = load i8, i8* %arrayidx128.i259.1, align 1
  %conv129.i260.2.1 = zext i8 %515 to i32
  %xor130.i261.2.1 = xor i32 %conv129.i260.2.1, %conv126.i257.2.1
  %conv131.i262.2.1 = trunc i32 %xor130.i261.2.1 to i8
  store i8 %conv131.i262.2.1, i8* %arrayidx128.i259.1, align 1
  %scevgep152.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %509, i64 0, i64 0, i64 3
  %516 = load i8, i8* %scevgep152.3.1, align 1
  %conv126.i257.3.1 = zext i8 %516 to i32
  %517 = load i8, i8* %arrayidx128.i259.1, align 1
  %conv129.i260.3.1 = zext i8 %517 to i32
  %xor130.i261.3.1 = xor i32 %conv129.i260.3.1, %conv126.i257.3.1
  %conv131.i262.3.1 = trunc i32 %xor130.i261.3.1 to i8
  store i8 %conv131.i262.3.1, i8* %arrayidx128.i259.1, align 1
  %scevgep152.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %509, i64 0, i64 0, i64 4
  %518 = load i8, i8* %scevgep152.4.1, align 1
  %conv126.i257.4.1 = zext i8 %518 to i32
  %519 = load i8, i8* %arrayidx128.i259.1, align 1
  %conv129.i260.4.1 = zext i8 %519 to i32
  %xor130.i261.4.1 = xor i32 %conv129.i260.4.1, %conv126.i257.4.1
  %conv131.i262.4.1 = trunc i32 %xor130.i261.4.1 to i8
  store i8 %conv131.i262.4.1, i8* %arrayidx128.i259.1, align 1
  %scevgep151.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %509, i64 0, i64 1, i64 0
  %520 = bitcast i8* %scevgep151.1 to [5 x [5 x i8]]*
  %arrayidx108.i242.2 = getelementptr inbounds i8, i8* %x, i64 2
  %521 = load i8, i8* %arrayidx108.i242.2, align 1
  %arrayidx110.i244.2 = getelementptr inbounds i8, i8* %arraydecay8, i64 2
  %522 = load i8, i8* %arrayidx110.i244.2, align 1
  %call111.i245.2 = call zeroext i8 @mult(i8 zeroext %521, i8 zeroext %522) #2
  %arrayidx113.i247.2 = getelementptr inbounds i8, i8* %arraydecay9, i64 2
  store i8 %call111.i245.2, i8* %arrayidx113.i247.2, align 1
  %arrayidx128.i259.2 = getelementptr inbounds i8, i8* %arraydecay9, i64 2
  %scevgep152.2448 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %520, i64 0, i64 0, i64 0
  %523 = load i8, i8* %scevgep152.2448, align 1
  %conv126.i257.2449 = zext i8 %523 to i32
  %524 = load i8, i8* %arrayidx128.i259.2, align 1
  %conv129.i260.2450 = zext i8 %524 to i32
  %xor130.i261.2451 = xor i32 %conv129.i260.2450, %conv126.i257.2449
  %conv131.i262.2452 = trunc i32 %xor130.i261.2451 to i8
  store i8 %conv131.i262.2452, i8* %arrayidx128.i259.2, align 1
  %scevgep152.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %520, i64 0, i64 0, i64 1
  %525 = load i8, i8* %scevgep152.1.2, align 1
  %conv126.i257.1.2 = zext i8 %525 to i32
  %526 = load i8, i8* %arrayidx128.i259.2, align 1
  %conv129.i260.1.2 = zext i8 %526 to i32
  %xor130.i261.1.2 = xor i32 %conv129.i260.1.2, %conv126.i257.1.2
  %conv131.i262.1.2 = trunc i32 %xor130.i261.1.2 to i8
  store i8 %conv131.i262.1.2, i8* %arrayidx128.i259.2, align 1
  %scevgep152.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %520, i64 0, i64 0, i64 3
  %527 = load i8, i8* %scevgep152.3.2, align 1
  %conv126.i257.3.2 = zext i8 %527 to i32
  %528 = load i8, i8* %arrayidx128.i259.2, align 1
  %conv129.i260.3.2 = zext i8 %528 to i32
  %xor130.i261.3.2 = xor i32 %conv129.i260.3.2, %conv126.i257.3.2
  %conv131.i262.3.2 = trunc i32 %xor130.i261.3.2 to i8
  store i8 %conv131.i262.3.2, i8* %arrayidx128.i259.2, align 1
  %scevgep152.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %520, i64 0, i64 0, i64 4
  %529 = load i8, i8* %scevgep152.4.2, align 1
  %conv126.i257.4.2 = zext i8 %529 to i32
  %530 = load i8, i8* %arrayidx128.i259.2, align 1
  %conv129.i260.4.2 = zext i8 %530 to i32
  %xor130.i261.4.2 = xor i32 %conv129.i260.4.2, %conv126.i257.4.2
  %conv131.i262.4.2 = trunc i32 %xor130.i261.4.2 to i8
  store i8 %conv131.i262.4.2, i8* %arrayidx128.i259.2, align 1
  %scevgep151.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %520, i64 0, i64 1, i64 0
  %531 = bitcast i8* %scevgep151.2 to [5 x [5 x i8]]*
  %arrayidx108.i242.3 = getelementptr inbounds i8, i8* %x, i64 3
  %532 = load i8, i8* %arrayidx108.i242.3, align 1
  %arrayidx110.i244.3 = getelementptr inbounds i8, i8* %arraydecay8, i64 3
  %533 = load i8, i8* %arrayidx110.i244.3, align 1
  %call111.i245.3 = call zeroext i8 @mult(i8 zeroext %532, i8 zeroext %533) #2
  %arrayidx113.i247.3 = getelementptr inbounds i8, i8* %arraydecay9, i64 3
  store i8 %call111.i245.3, i8* %arrayidx113.i247.3, align 1
  %arrayidx128.i259.3 = getelementptr inbounds i8, i8* %arraydecay9, i64 3
  %scevgep152.3457 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %531, i64 0, i64 0, i64 0
  %534 = load i8, i8* %scevgep152.3457, align 1
  %conv126.i257.3458 = zext i8 %534 to i32
  %535 = load i8, i8* %arrayidx128.i259.3, align 1
  %conv129.i260.3459 = zext i8 %535 to i32
  %xor130.i261.3460 = xor i32 %conv129.i260.3459, %conv126.i257.3458
  %conv131.i262.3461 = trunc i32 %xor130.i261.3460 to i8
  store i8 %conv131.i262.3461, i8* %arrayidx128.i259.3, align 1
  %scevgep152.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %531, i64 0, i64 0, i64 1
  %536 = load i8, i8* %scevgep152.1.3, align 1
  %conv126.i257.1.3 = zext i8 %536 to i32
  %537 = load i8, i8* %arrayidx128.i259.3, align 1
  %conv129.i260.1.3 = zext i8 %537 to i32
  %xor130.i261.1.3 = xor i32 %conv129.i260.1.3, %conv126.i257.1.3
  %conv131.i262.1.3 = trunc i32 %xor130.i261.1.3 to i8
  store i8 %conv131.i262.1.3, i8* %arrayidx128.i259.3, align 1
  %scevgep152.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %531, i64 0, i64 0, i64 2
  %538 = load i8, i8* %scevgep152.2.3, align 1
  %conv126.i257.2.3 = zext i8 %538 to i32
  %539 = load i8, i8* %arrayidx128.i259.3, align 1
  %conv129.i260.2.3 = zext i8 %539 to i32
  %xor130.i261.2.3 = xor i32 %conv129.i260.2.3, %conv126.i257.2.3
  %conv131.i262.2.3 = trunc i32 %xor130.i261.2.3 to i8
  store i8 %conv131.i262.2.3, i8* %arrayidx128.i259.3, align 1
  %scevgep152.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %531, i64 0, i64 0, i64 4
  %540 = load i8, i8* %scevgep152.4.3, align 1
  %conv126.i257.4.3 = zext i8 %540 to i32
  %541 = load i8, i8* %arrayidx128.i259.3, align 1
  %conv129.i260.4.3 = zext i8 %541 to i32
  %xor130.i261.4.3 = xor i32 %conv129.i260.4.3, %conv126.i257.4.3
  %conv131.i262.4.3 = trunc i32 %xor130.i261.4.3 to i8
  store i8 %conv131.i262.4.3, i8* %arrayidx128.i259.3, align 1
  %scevgep151.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %531, i64 0, i64 1, i64 0
  %542 = bitcast i8* %scevgep151.3 to [5 x [5 x i8]]*
  %arrayidx108.i242.4 = getelementptr inbounds i8, i8* %x, i64 4
  %543 = load i8, i8* %arrayidx108.i242.4, align 1
  %arrayidx110.i244.4 = getelementptr inbounds i8, i8* %arraydecay8, i64 4
  %544 = load i8, i8* %arrayidx110.i244.4, align 1
  %call111.i245.4 = call zeroext i8 @mult(i8 zeroext %543, i8 zeroext %544) #2
  %arrayidx113.i247.4 = getelementptr inbounds i8, i8* %arraydecay9, i64 4
  store i8 %call111.i245.4, i8* %arrayidx113.i247.4, align 1
  %arrayidx128.i259.4 = getelementptr inbounds i8, i8* %arraydecay9, i64 4
  %scevgep152.4466 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %542, i64 0, i64 0, i64 0
  %545 = load i8, i8* %scevgep152.4466, align 1
  %conv126.i257.4467 = zext i8 %545 to i32
  %546 = load i8, i8* %arrayidx128.i259.4, align 1
  %conv129.i260.4468 = zext i8 %546 to i32
  %xor130.i261.4469 = xor i32 %conv129.i260.4468, %conv126.i257.4467
  %conv131.i262.4470 = trunc i32 %xor130.i261.4469 to i8
  store i8 %conv131.i262.4470, i8* %arrayidx128.i259.4, align 1
  %scevgep152.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %542, i64 0, i64 0, i64 1
  %547 = load i8, i8* %scevgep152.1.4, align 1
  %conv126.i257.1.4 = zext i8 %547 to i32
  %548 = load i8, i8* %arrayidx128.i259.4, align 1
  %conv129.i260.1.4 = zext i8 %548 to i32
  %xor130.i261.1.4 = xor i32 %conv129.i260.1.4, %conv126.i257.1.4
  %conv131.i262.1.4 = trunc i32 %xor130.i261.1.4 to i8
  store i8 %conv131.i262.1.4, i8* %arrayidx128.i259.4, align 1
  %scevgep152.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %542, i64 0, i64 0, i64 2
  %549 = load i8, i8* %scevgep152.2.4, align 1
  %conv126.i257.2.4 = zext i8 %549 to i32
  %550 = load i8, i8* %arrayidx128.i259.4, align 1
  %conv129.i260.2.4 = zext i8 %550 to i32
  %xor130.i261.2.4 = xor i32 %conv129.i260.2.4, %conv126.i257.2.4
  %conv131.i262.2.4 = trunc i32 %xor130.i261.2.4 to i8
  store i8 %conv131.i262.2.4, i8* %arrayidx128.i259.4, align 1
  %scevgep152.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %542, i64 0, i64 0, i64 3
  %551 = load i8, i8* %scevgep152.3.4, align 1
  %conv126.i257.3.4 = zext i8 %551 to i32
  %552 = load i8, i8* %arrayidx128.i259.4, align 1
  %conv129.i260.3.4 = zext i8 %552 to i32
  %xor130.i261.3.4 = xor i32 %conv129.i260.3.4, %conv126.i257.3.4
  %conv131.i262.3.4 = trunc i32 %xor130.i261.3.4 to i8
  store i8 %conv131.i262.3.4, i8* %arrayidx128.i259.4, align 1
  %call139.i268 = call zeroext i8 @mult(i8 zeroext %call.i115, i8 zeroext %call1.i116) #2
  %conv140.i269 = zext i8 %call139.i268 to i32
  %scevgep142 = getelementptr [5 x i8], [5 x i8]* %e5, i64 0, i64 0
  %553 = load i8, i8* %scevgep142, align 1
  %scevgep142.1 = getelementptr [5 x i8], [5 x i8]* %e5, i64 0, i64 1
  %554 = load i8, i8* %scevgep142.1, align 1
  %conv.i.i172.i276.1 = zext i8 %554 to i32
  %conv1.i.i173.i277.1 = zext i8 %553 to i32
  %xor.i.i174.i278.1 = xor i32 %conv1.i.i173.i277.1, %conv.i.i172.i276.1
  %conv2.i.i175.i279.1 = trunc i32 %xor.i.i174.i278.1 to i8
  %scevgep142.2 = getelementptr [5 x i8], [5 x i8]* %e5, i64 0, i64 2
  %555 = load i8, i8* %scevgep142.2, align 1
  %conv.i.i172.i276.2 = zext i8 %555 to i32
  %conv1.i.i173.i277.2 = zext i8 %conv2.i.i175.i279.1 to i32
  %xor.i.i174.i278.2 = xor i32 %conv1.i.i173.i277.2, %conv.i.i172.i276.2
  %conv2.i.i175.i279.2 = trunc i32 %xor.i.i174.i278.2 to i8
  %scevgep142.3 = getelementptr [5 x i8], [5 x i8]* %e5, i64 0, i64 3
  %556 = load i8, i8* %scevgep142.3, align 1
  %conv.i.i172.i276.3 = zext i8 %556 to i32
  %conv1.i.i173.i277.3 = zext i8 %conv2.i.i175.i279.2 to i32
  %xor.i.i174.i278.3 = xor i32 %conv1.i.i173.i277.3, %conv.i.i172.i276.3
  %conv2.i.i175.i279.3 = trunc i32 %xor.i.i174.i278.3 to i8
  %scevgep142.4 = getelementptr [5 x i8], [5 x i8]* %e5, i64 0, i64 4
  %557 = load i8, i8* %scevgep142.4, align 1
  %conv.i.i172.i276.4 = zext i8 %557 to i32
  %conv1.i.i173.i277.4 = zext i8 %conv2.i.i175.i279.3 to i32
  %xor.i.i174.i278.4 = xor i32 %conv1.i.i173.i277.4, %conv.i.i172.i276.4
  %conv2.i.i175.i279.4 = trunc i32 %xor.i.i174.i278.4 to i8
  %conv142.i282 = zext i8 %conv2.i.i175.i279.4 to i32
  %cmp143.i283 = icmp eq i32 %conv140.i269, %conv142.i282
  call void @assert(i1 zeroext %cmp143.i283) #2
  %arraydecay10 = getelementptr inbounds [5 x i8], [5 x i8]* %e3, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [5 x i8], [5 x i8]* %e4, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [5 x i8], [5 x i8]* %e7, i64 0, i64 0
  %call.i316 = call zeroext i8 (...) @rand() #2
  %call1.i317 = call zeroext i8 (...) @rand() #2
  %conv.i318 = zext i8 %call.i316 to i32
  %scevgep138 = getelementptr [5 x i8], [5 x i8]* %e3, i64 0, i64 0
  %558 = load i8, i8* %scevgep138, align 1
  %scevgep138.1 = getelementptr [5 x i8], [5 x i8]* %e3, i64 0, i64 1
  %559 = load i8, i8* %scevgep138.1, align 1
  %conv.i.i.i324.1 = zext i8 %559 to i32
  %conv1.i.i.i325.1 = zext i8 %558 to i32
  %xor.i.i.i326.1 = xor i32 %conv1.i.i.i325.1, %conv.i.i.i324.1
  %conv2.i.i.i327.1 = trunc i32 %xor.i.i.i326.1 to i8
  %scevgep138.2 = getelementptr [5 x i8], [5 x i8]* %e3, i64 0, i64 2
  %560 = load i8, i8* %scevgep138.2, align 1
  %conv.i.i.i324.2 = zext i8 %560 to i32
  %conv1.i.i.i325.2 = zext i8 %conv2.i.i.i327.1 to i32
  %xor.i.i.i326.2 = xor i32 %conv1.i.i.i325.2, %conv.i.i.i324.2
  %conv2.i.i.i327.2 = trunc i32 %xor.i.i.i326.2 to i8
  %scevgep138.3 = getelementptr [5 x i8], [5 x i8]* %e3, i64 0, i64 3
  %561 = load i8, i8* %scevgep138.3, align 1
  %conv.i.i.i324.3 = zext i8 %561 to i32
  %conv1.i.i.i325.3 = zext i8 %conv2.i.i.i327.2 to i32
  %xor.i.i.i326.3 = xor i32 %conv1.i.i.i325.3, %conv.i.i.i324.3
  %conv2.i.i.i327.3 = trunc i32 %xor.i.i.i326.3 to i8
  %scevgep138.4 = getelementptr [5 x i8], [5 x i8]* %e3, i64 0, i64 4
  %562 = load i8, i8* %scevgep138.4, align 1
  %conv.i.i.i324.4 = zext i8 %562 to i32
  %conv1.i.i.i325.4 = zext i8 %conv2.i.i.i327.3 to i32
  %xor.i.i.i326.4 = xor i32 %conv1.i.i.i325.4, %conv.i.i.i324.4
  %conv2.i.i.i327.4 = trunc i32 %xor.i.i.i326.4 to i8
  %conv3.i330 = zext i8 %conv2.i.i.i327.4 to i32
  %cmp.i331 = icmp eq i32 %conv.i318, %conv3.i330
  call void @assume(i1 zeroext %cmp.i331) #2
  %conv5.i332 = zext i8 %call1.i317 to i32
  %scevgep134 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 0
  %563 = load i8, i8* %scevgep134, align 1
  %scevgep134.1 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 1
  %564 = load i8, i8* %scevgep134.1, align 1
  %conv.i.i155.i339.1 = zext i8 %564 to i32
  %conv1.i.i156.i340.1 = zext i8 %563 to i32
  %xor.i.i157.i341.1 = xor i32 %conv1.i.i156.i340.1, %conv.i.i155.i339.1
  %conv2.i.i158.i342.1 = trunc i32 %xor.i.i157.i341.1 to i8
  %scevgep134.2 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 2
  %565 = load i8, i8* %scevgep134.2, align 1
  %conv.i.i155.i339.2 = zext i8 %565 to i32
  %conv1.i.i156.i340.2 = zext i8 %conv2.i.i158.i342.1 to i32
  %xor.i.i157.i341.2 = xor i32 %conv1.i.i156.i340.2, %conv.i.i155.i339.2
  %conv2.i.i158.i342.2 = trunc i32 %xor.i.i157.i341.2 to i8
  %scevgep134.3 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 3
  %566 = load i8, i8* %scevgep134.3, align 1
  %conv.i.i155.i339.3 = zext i8 %566 to i32
  %conv1.i.i156.i340.3 = zext i8 %conv2.i.i158.i342.2 to i32
  %xor.i.i157.i341.3 = xor i32 %conv1.i.i156.i340.3, %conv.i.i155.i339.3
  %conv2.i.i158.i342.3 = trunc i32 %xor.i.i157.i341.3 to i8
  %scevgep134.4 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 4
  %567 = load i8, i8* %scevgep134.4, align 1
  %conv.i.i155.i339.4 = zext i8 %567 to i32
  %conv1.i.i156.i340.4 = zext i8 %conv2.i.i158.i342.3 to i32
  %xor.i.i157.i341.4 = xor i32 %conv1.i.i156.i340.4, %conv.i.i155.i339.4
  %conv2.i.i158.i342.4 = trunc i32 %xor.i.i157.i341.4 to i8
  %conv7.i345 = zext i8 %conv2.i.i158.i342.4 to i32
  %cmp8.i346 = icmp eq i32 %conv5.i332, %conv7.i345
  call void @assume(i1 zeroext %cmp8.i346) #2
  %scevgep118 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %scevgep118119 = bitcast i8* %scevgep118 to [5 x [5 x i8]]*
  %scevgep125 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 1, i64 0
  %scevgep125126 = bitcast i8* %scevgep125 to [5 x [5 x i8]]*
  %call16.i354 = call zeroext i8 (...) @rand() #2
  store i8 %call16.i354, i8* %scevgep118, align 1
  %568 = load i8, i8* %scevgep118, align 1
  store i8 %568, i8* %scevgep125, align 1
  %scevgep123 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep118119, i64 0, i64 0, i64 1
  %569 = bitcast i8* %scevgep123 to [5 x [5 x i8]]*
  %scevgep130 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep125126, i64 0, i64 1, i64 0
  %570 = bitcast i8* %scevgep130 to [5 x [5 x i8]]*
  %call16.i354.1725 = call zeroext i8 (...) @rand() #2
  store i8 %call16.i354.1725, i8* %scevgep123, align 1
  %571 = load i8, i8* %scevgep123, align 1
  store i8 %571, i8* %scevgep130, align 1
  %scevgep123.1726 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %569, i64 0, i64 0, i64 1
  %572 = bitcast i8* %scevgep123.1726 to [5 x [5 x i8]]*
  %scevgep130.1727 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %570, i64 0, i64 1, i64 0
  %573 = bitcast i8* %scevgep130.1727 to [5 x [5 x i8]]*
  %call16.i354.2729 = call zeroext i8 (...) @rand() #2
  store i8 %call16.i354.2729, i8* %scevgep123.1726, align 1
  %574 = load i8, i8* %scevgep123.1726, align 1
  store i8 %574, i8* %scevgep130.1727, align 1
  %scevgep123.2730 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %572, i64 0, i64 0, i64 1
  %scevgep130.2731 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %573, i64 0, i64 1, i64 0
  %call16.i354.3733 = call zeroext i8 (...) @rand() #2
  store i8 %call16.i354.3733, i8* %scevgep123.2730, align 1
  %575 = load i8, i8* %scevgep123.2730, align 1
  store i8 %575, i8* %scevgep130.2731, align 1
  %scevgep121 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep118119, i64 0, i64 1, i64 1
  %576 = bitcast i8* %scevgep121 to [5 x [5 x i8]]*
  %scevgep128 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep125126, i64 0, i64 1, i64 1
  %577 = bitcast i8* %scevgep128 to [5 x [5 x i8]]*
  %call16.i354.1 = call zeroext i8 (...) @rand() #2
  store i8 %call16.i354.1, i8* %scevgep121, align 1
  %578 = load i8, i8* %scevgep121, align 1
  store i8 %578, i8* %scevgep128, align 1
  %scevgep123.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %576, i64 0, i64 0, i64 1
  %579 = bitcast i8* %scevgep123.1 to [5 x [5 x i8]]*
  %scevgep130.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %577, i64 0, i64 1, i64 0
  %580 = bitcast i8* %scevgep130.1 to [5 x [5 x i8]]*
  %call16.i354.1.1 = call zeroext i8 (...) @rand() #2
  store i8 %call16.i354.1.1, i8* %scevgep123.1, align 1
  %581 = load i8, i8* %scevgep123.1, align 1
  store i8 %581, i8* %scevgep130.1, align 1
  %scevgep123.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %579, i64 0, i64 0, i64 1
  %scevgep130.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %580, i64 0, i64 1, i64 0
  %call16.i354.1.2 = call zeroext i8 (...) @rand() #2
  store i8 %call16.i354.1.2, i8* %scevgep123.1.1, align 1
  %582 = load i8, i8* %scevgep123.1.1, align 1
  store i8 %582, i8* %scevgep130.1.1, align 1
  %scevgep121.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %576, i64 0, i64 1, i64 1
  %583 = bitcast i8* %scevgep121.1 to [5 x [5 x i8]]*
  %scevgep128.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %577, i64 0, i64 1, i64 1
  %584 = bitcast i8* %scevgep128.1 to [5 x [5 x i8]]*
  %call16.i354.2 = call zeroext i8 (...) @rand() #2
  store i8 %call16.i354.2, i8* %scevgep121.1, align 1
  %585 = load i8, i8* %scevgep121.1, align 1
  store i8 %585, i8* %scevgep128.1, align 1
  %scevgep123.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %583, i64 0, i64 0, i64 1
  %scevgep130.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %584, i64 0, i64 1, i64 0
  %call16.i354.2.1 = call zeroext i8 (...) @rand() #2
  store i8 %call16.i354.2.1, i8* %scevgep123.2, align 1
  %586 = load i8, i8* %scevgep123.2, align 1
  store i8 %586, i8* %scevgep130.2, align 1
  %scevgep121.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %583, i64 0, i64 1, i64 1
  %scevgep128.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %584, i64 0, i64 1, i64 1
  %call16.i354.3 = call zeroext i8 (...) @rand() #2
  store i8 %call16.i354.3, i8* %scevgep121.2, align 1
  %587 = load i8, i8* %scevgep121.2, align 1
  store i8 %587, i8* %scevgep128.2, align 1
  %scevgep95.1 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 1
  %588 = load i8, i8* %scevgep95.1, align 1
  %conv44.i381.1 = zext i8 %588 to i32
  %scevgep98.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %589 = load i8, i8* %scevgep98.1, align 1
  %conv49.i386.1 = zext i8 %589 to i32
  %xor.i387.1 = xor i32 %conv44.i381.1, %conv49.i386.1
  %conv50.i388.1 = trunc i32 %xor.i387.1 to i8
  %scevgep102.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i388.1, i8* %scevgep102.1, align 1
  %590 = load i8, i8* %arraydecay10, align 1
  %conv57.i395.1 = zext i8 %590 to i32
  %xor58.i396.1 = xor i32 %conv57.i395.1, 1
  %conv59.i397.1 = trunc i32 %xor58.i396.1 to i8
  %scevgep99.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %591 = load i8, i8* %scevgep99.1, align 1
  %call64.i402.1 = call zeroext i8 @mult(i8 zeroext %conv59.i397.1, i8 zeroext %591) #2
  %scevgep106.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i402.1, i8* %scevgep106.1, align 1
  %592 = load i8, i8* %arraydecay10, align 1
  %scevgep103.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 1
  %593 = load i8, i8* %scevgep103.1, align 1
  %call75.i413.1 = call zeroext i8 @mult(i8 zeroext %592, i8 zeroext %593) #2
  %scevgep110.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i413.1, i8* %scevgep110.1, align 1
  %scevgep107.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %594 = load i8, i8* %scevgep107.1, align 1
  %conv84.i422.1 = zext i8 %594 to i32
  %scevgep111.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %595 = load i8, i8* %scevgep111.1, align 1
  %conv89.i427.1 = zext i8 %595 to i32
  %xor90.i428.1 = xor i32 %conv84.i422.1, %conv89.i427.1
  %conv91.i429.1 = trunc i32 %xor90.i428.1 to i8
  %scevgep114.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i429.1, i8* %scevgep114.1, align 1
  %scevgep95.2 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 2
  %596 = load i8, i8* %scevgep95.2, align 1
  %conv44.i381.2 = zext i8 %596 to i32
  %scevgep98.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 2
  %597 = load i8, i8* %scevgep98.2, align 1
  %conv49.i386.2 = zext i8 %597 to i32
  %xor.i387.2 = xor i32 %conv44.i381.2, %conv49.i386.2
  %conv50.i388.2 = trunc i32 %xor.i387.2 to i8
  %scevgep102.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 2
  store i8 %conv50.i388.2, i8* %scevgep102.2, align 1
  %598 = load i8, i8* %arraydecay10, align 1
  %conv57.i395.2 = zext i8 %598 to i32
  %xor58.i396.2 = xor i32 %conv57.i395.2, 1
  %conv59.i397.2 = trunc i32 %xor58.i396.2 to i8
  %scevgep99.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 2
  %599 = load i8, i8* %scevgep99.2, align 1
  %call64.i402.2 = call zeroext i8 @mult(i8 zeroext %conv59.i397.2, i8 zeroext %599) #2
  %scevgep106.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 2
  store i8 %call64.i402.2, i8* %scevgep106.2, align 1
  %600 = load i8, i8* %arraydecay10, align 1
  %scevgep103.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 2
  %601 = load i8, i8* %scevgep103.2, align 1
  %call75.i413.2 = call zeroext i8 @mult(i8 zeroext %600, i8 zeroext %601) #2
  %scevgep110.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 2
  store i8 %call75.i413.2, i8* %scevgep110.2, align 1
  %scevgep107.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 2
  %602 = load i8, i8* %scevgep107.2, align 1
  %conv84.i422.2 = zext i8 %602 to i32
  %scevgep111.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 2
  %603 = load i8, i8* %scevgep111.2, align 1
  %conv89.i427.2 = zext i8 %603 to i32
  %xor90.i428.2 = xor i32 %conv84.i422.2, %conv89.i427.2
  %conv91.i429.2 = trunc i32 %xor90.i428.2 to i8
  %scevgep114.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 2
  store i8 %conv91.i429.2, i8* %scevgep114.2, align 1
  %scevgep95.3 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 3
  %604 = load i8, i8* %scevgep95.3, align 1
  %conv44.i381.3 = zext i8 %604 to i32
  %scevgep98.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 3
  %605 = load i8, i8* %scevgep98.3, align 1
  %conv49.i386.3 = zext i8 %605 to i32
  %xor.i387.3 = xor i32 %conv44.i381.3, %conv49.i386.3
  %conv50.i388.3 = trunc i32 %xor.i387.3 to i8
  %scevgep102.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 3
  store i8 %conv50.i388.3, i8* %scevgep102.3, align 1
  %606 = load i8, i8* %arraydecay10, align 1
  %conv57.i395.3 = zext i8 %606 to i32
  %xor58.i396.3 = xor i32 %conv57.i395.3, 1
  %conv59.i397.3 = trunc i32 %xor58.i396.3 to i8
  %scevgep99.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 3
  %607 = load i8, i8* %scevgep99.3, align 1
  %call64.i402.3 = call zeroext i8 @mult(i8 zeroext %conv59.i397.3, i8 zeroext %607) #2
  %scevgep106.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 3
  store i8 %call64.i402.3, i8* %scevgep106.3, align 1
  %608 = load i8, i8* %arraydecay10, align 1
  %scevgep103.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 3
  %609 = load i8, i8* %scevgep103.3, align 1
  %call75.i413.3 = call zeroext i8 @mult(i8 zeroext %608, i8 zeroext %609) #2
  %scevgep110.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 3
  store i8 %call75.i413.3, i8* %scevgep110.3, align 1
  %scevgep107.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 3
  %610 = load i8, i8* %scevgep107.3, align 1
  %conv84.i422.3 = zext i8 %610 to i32
  %scevgep111.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 3
  %611 = load i8, i8* %scevgep111.3, align 1
  %conv89.i427.3 = zext i8 %611 to i32
  %xor90.i428.3 = xor i32 %conv84.i422.3, %conv89.i427.3
  %conv91.i429.3 = trunc i32 %xor90.i428.3 to i8
  %scevgep114.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 3
  store i8 %conv91.i429.3, i8* %scevgep114.3, align 1
  %scevgep95.4 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 4
  %612 = load i8, i8* %scevgep95.4, align 1
  %conv44.i381.4 = zext i8 %612 to i32
  %scevgep98.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 4
  %613 = load i8, i8* %scevgep98.4, align 1
  %conv49.i386.4 = zext i8 %613 to i32
  %xor.i387.4 = xor i32 %conv44.i381.4, %conv49.i386.4
  %conv50.i388.4 = trunc i32 %xor.i387.4 to i8
  %scevgep102.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 4
  store i8 %conv50.i388.4, i8* %scevgep102.4, align 1
  %614 = load i8, i8* %arraydecay10, align 1
  %conv57.i395.4 = zext i8 %614 to i32
  %xor58.i396.4 = xor i32 %conv57.i395.4, 1
  %conv59.i397.4 = trunc i32 %xor58.i396.4 to i8
  %scevgep99.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 4
  %615 = load i8, i8* %scevgep99.4, align 1
  %call64.i402.4 = call zeroext i8 @mult(i8 zeroext %conv59.i397.4, i8 zeroext %615) #2
  %scevgep106.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 4
  store i8 %call64.i402.4, i8* %scevgep106.4, align 1
  %616 = load i8, i8* %arraydecay10, align 1
  %scevgep103.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 4
  %617 = load i8, i8* %scevgep103.4, align 1
  %call75.i413.4 = call zeroext i8 @mult(i8 zeroext %616, i8 zeroext %617) #2
  %scevgep110.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 4
  store i8 %call75.i413.4, i8* %scevgep110.4, align 1
  %scevgep107.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 4
  %618 = load i8, i8* %scevgep107.4, align 1
  %conv84.i422.4 = zext i8 %618 to i32
  %scevgep111.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 4
  %619 = load i8, i8* %scevgep111.4, align 1
  %conv89.i427.4 = zext i8 %619 to i32
  %xor90.i428.4 = xor i32 %conv84.i422.4, %conv89.i427.4
  %conv91.i429.4 = trunc i32 %xor90.i428.4 to i8
  %scevgep114.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 4
  store i8 %conv91.i429.4, i8* %scevgep114.4, align 1
  %scevgep97 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 1, i64 0
  %620 = bitcast i8* %scevgep97 to [5 x [5 x i8]]*
  %scevgep101 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 1, i64 0
  %621 = bitcast i8* %scevgep101 to [5 x [5 x i8]]*
  %scevgep105 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %622 = bitcast i8* %scevgep105 to [5 x [5 x i8]]*
  %scevgep109 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %623 = bitcast i8* %scevgep109 to [5 x [5 x i8]]*
  %scevgep113 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 1, i64 0
  %624 = bitcast i8* %scevgep113 to [5 x [5 x i8]]*
  %arrayidx56.i394.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %arrayidx70.i408.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %scevgep95.1331 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 0
  %625 = load i8, i8* %scevgep95.1331, align 1
  %conv44.i381.1332 = zext i8 %625 to i32
  %scevgep98.1333 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %620, i64 0, i64 0, i64 0
  %626 = load i8, i8* %scevgep98.1333, align 1
  %conv49.i386.1334 = zext i8 %626 to i32
  %xor.i387.1335 = xor i32 %conv44.i381.1332, %conv49.i386.1334
  %conv50.i388.1336 = trunc i32 %xor.i387.1335 to i8
  %scevgep102.1337 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %621, i64 0, i64 0, i64 0
  store i8 %conv50.i388.1336, i8* %scevgep102.1337, align 1
  %627 = load i8, i8* %arrayidx56.i394.1, align 1
  %conv57.i395.1338 = zext i8 %627 to i32
  %xor58.i396.1339 = xor i32 %conv57.i395.1338, 1
  %conv59.i397.1340 = trunc i32 %xor58.i396.1339 to i8
  %scevgep99.1341 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %620, i64 0, i64 0, i64 0
  %628 = load i8, i8* %scevgep99.1341, align 1
  %call64.i402.1342 = call zeroext i8 @mult(i8 zeroext %conv59.i397.1340, i8 zeroext %628) #2
  %scevgep106.1343 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %622, i64 0, i64 0, i64 0
  store i8 %call64.i402.1342, i8* %scevgep106.1343, align 1
  %629 = load i8, i8* %arrayidx70.i408.1, align 1
  %scevgep103.1344 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %621, i64 0, i64 0, i64 0
  %630 = load i8, i8* %scevgep103.1344, align 1
  %call75.i413.1345 = call zeroext i8 @mult(i8 zeroext %629, i8 zeroext %630) #2
  %scevgep110.1346 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %623, i64 0, i64 0, i64 0
  store i8 %call75.i413.1345, i8* %scevgep110.1346, align 1
  %scevgep107.1347 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %622, i64 0, i64 0, i64 0
  %631 = load i8, i8* %scevgep107.1347, align 1
  %conv84.i422.1348 = zext i8 %631 to i32
  %scevgep111.1349 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %623, i64 0, i64 0, i64 0
  %632 = load i8, i8* %scevgep111.1349, align 1
  %conv89.i427.1350 = zext i8 %632 to i32
  %xor90.i428.1351 = xor i32 %conv84.i422.1348, %conv89.i427.1350
  %conv91.i429.1352 = trunc i32 %xor90.i428.1351 to i8
  %scevgep114.1353 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %624, i64 0, i64 0, i64 0
  store i8 %conv91.i429.1352, i8* %scevgep114.1353, align 1
  %scevgep95.2.1 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 2
  %633 = load i8, i8* %scevgep95.2.1, align 1
  %conv44.i381.2.1 = zext i8 %633 to i32
  %scevgep98.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %620, i64 0, i64 0, i64 2
  %634 = load i8, i8* %scevgep98.2.1, align 1
  %conv49.i386.2.1 = zext i8 %634 to i32
  %xor.i387.2.1 = xor i32 %conv44.i381.2.1, %conv49.i386.2.1
  %conv50.i388.2.1 = trunc i32 %xor.i387.2.1 to i8
  %scevgep102.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %621, i64 0, i64 0, i64 2
  store i8 %conv50.i388.2.1, i8* %scevgep102.2.1, align 1
  %635 = load i8, i8* %arrayidx56.i394.1, align 1
  %conv57.i395.2.1 = zext i8 %635 to i32
  %xor58.i396.2.1 = xor i32 %conv57.i395.2.1, 1
  %conv59.i397.2.1 = trunc i32 %xor58.i396.2.1 to i8
  %scevgep99.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %620, i64 0, i64 0, i64 2
  %636 = load i8, i8* %scevgep99.2.1, align 1
  %call64.i402.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i397.2.1, i8 zeroext %636) #2
  %scevgep106.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %622, i64 0, i64 0, i64 2
  store i8 %call64.i402.2.1, i8* %scevgep106.2.1, align 1
  %637 = load i8, i8* %arrayidx70.i408.1, align 1
  %scevgep103.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %621, i64 0, i64 0, i64 2
  %638 = load i8, i8* %scevgep103.2.1, align 1
  %call75.i413.2.1 = call zeroext i8 @mult(i8 zeroext %637, i8 zeroext %638) #2
  %scevgep110.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %623, i64 0, i64 0, i64 2
  store i8 %call75.i413.2.1, i8* %scevgep110.2.1, align 1
  %scevgep107.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %622, i64 0, i64 0, i64 2
  %639 = load i8, i8* %scevgep107.2.1, align 1
  %conv84.i422.2.1 = zext i8 %639 to i32
  %scevgep111.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %623, i64 0, i64 0, i64 2
  %640 = load i8, i8* %scevgep111.2.1, align 1
  %conv89.i427.2.1 = zext i8 %640 to i32
  %xor90.i428.2.1 = xor i32 %conv84.i422.2.1, %conv89.i427.2.1
  %conv91.i429.2.1 = trunc i32 %xor90.i428.2.1 to i8
  %scevgep114.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %624, i64 0, i64 0, i64 2
  store i8 %conv91.i429.2.1, i8* %scevgep114.2.1, align 1
  %scevgep95.3.1 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 3
  %641 = load i8, i8* %scevgep95.3.1, align 1
  %conv44.i381.3.1 = zext i8 %641 to i32
  %scevgep98.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %620, i64 0, i64 0, i64 3
  %642 = load i8, i8* %scevgep98.3.1, align 1
  %conv49.i386.3.1 = zext i8 %642 to i32
  %xor.i387.3.1 = xor i32 %conv44.i381.3.1, %conv49.i386.3.1
  %conv50.i388.3.1 = trunc i32 %xor.i387.3.1 to i8
  %scevgep102.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %621, i64 0, i64 0, i64 3
  store i8 %conv50.i388.3.1, i8* %scevgep102.3.1, align 1
  %643 = load i8, i8* %arrayidx56.i394.1, align 1
  %conv57.i395.3.1 = zext i8 %643 to i32
  %xor58.i396.3.1 = xor i32 %conv57.i395.3.1, 1
  %conv59.i397.3.1 = trunc i32 %xor58.i396.3.1 to i8
  %scevgep99.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %620, i64 0, i64 0, i64 3
  %644 = load i8, i8* %scevgep99.3.1, align 1
  %call64.i402.3.1 = call zeroext i8 @mult(i8 zeroext %conv59.i397.3.1, i8 zeroext %644) #2
  %scevgep106.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %622, i64 0, i64 0, i64 3
  store i8 %call64.i402.3.1, i8* %scevgep106.3.1, align 1
  %645 = load i8, i8* %arrayidx70.i408.1, align 1
  %scevgep103.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %621, i64 0, i64 0, i64 3
  %646 = load i8, i8* %scevgep103.3.1, align 1
  %call75.i413.3.1 = call zeroext i8 @mult(i8 zeroext %645, i8 zeroext %646) #2
  %scevgep110.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %623, i64 0, i64 0, i64 3
  store i8 %call75.i413.3.1, i8* %scevgep110.3.1, align 1
  %scevgep107.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %622, i64 0, i64 0, i64 3
  %647 = load i8, i8* %scevgep107.3.1, align 1
  %conv84.i422.3.1 = zext i8 %647 to i32
  %scevgep111.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %623, i64 0, i64 0, i64 3
  %648 = load i8, i8* %scevgep111.3.1, align 1
  %conv89.i427.3.1 = zext i8 %648 to i32
  %xor90.i428.3.1 = xor i32 %conv84.i422.3.1, %conv89.i427.3.1
  %conv91.i429.3.1 = trunc i32 %xor90.i428.3.1 to i8
  %scevgep114.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %624, i64 0, i64 0, i64 3
  store i8 %conv91.i429.3.1, i8* %scevgep114.3.1, align 1
  %scevgep95.4.1 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 4
  %649 = load i8, i8* %scevgep95.4.1, align 1
  %conv44.i381.4.1 = zext i8 %649 to i32
  %scevgep98.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %620, i64 0, i64 0, i64 4
  %650 = load i8, i8* %scevgep98.4.1, align 1
  %conv49.i386.4.1 = zext i8 %650 to i32
  %xor.i387.4.1 = xor i32 %conv44.i381.4.1, %conv49.i386.4.1
  %conv50.i388.4.1 = trunc i32 %xor.i387.4.1 to i8
  %scevgep102.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %621, i64 0, i64 0, i64 4
  store i8 %conv50.i388.4.1, i8* %scevgep102.4.1, align 1
  %651 = load i8, i8* %arrayidx56.i394.1, align 1
  %conv57.i395.4.1 = zext i8 %651 to i32
  %xor58.i396.4.1 = xor i32 %conv57.i395.4.1, 1
  %conv59.i397.4.1 = trunc i32 %xor58.i396.4.1 to i8
  %scevgep99.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %620, i64 0, i64 0, i64 4
  %652 = load i8, i8* %scevgep99.4.1, align 1
  %call64.i402.4.1 = call zeroext i8 @mult(i8 zeroext %conv59.i397.4.1, i8 zeroext %652) #2
  %scevgep106.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %622, i64 0, i64 0, i64 4
  store i8 %call64.i402.4.1, i8* %scevgep106.4.1, align 1
  %653 = load i8, i8* %arrayidx70.i408.1, align 1
  %scevgep103.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %621, i64 0, i64 0, i64 4
  %654 = load i8, i8* %scevgep103.4.1, align 1
  %call75.i413.4.1 = call zeroext i8 @mult(i8 zeroext %653, i8 zeroext %654) #2
  %scevgep110.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %623, i64 0, i64 0, i64 4
  store i8 %call75.i413.4.1, i8* %scevgep110.4.1, align 1
  %scevgep107.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %622, i64 0, i64 0, i64 4
  %655 = load i8, i8* %scevgep107.4.1, align 1
  %conv84.i422.4.1 = zext i8 %655 to i32
  %scevgep111.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %623, i64 0, i64 0, i64 4
  %656 = load i8, i8* %scevgep111.4.1, align 1
  %conv89.i427.4.1 = zext i8 %656 to i32
  %xor90.i428.4.1 = xor i32 %conv84.i422.4.1, %conv89.i427.4.1
  %conv91.i429.4.1 = trunc i32 %xor90.i428.4.1 to i8
  %scevgep114.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %624, i64 0, i64 0, i64 4
  store i8 %conv91.i429.4.1, i8* %scevgep114.4.1, align 1
  %scevgep97.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %620, i64 0, i64 1, i64 0
  %657 = bitcast i8* %scevgep97.1 to [5 x [5 x i8]]*
  %scevgep101.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %621, i64 0, i64 1, i64 0
  %658 = bitcast i8* %scevgep101.1 to [5 x [5 x i8]]*
  %scevgep105.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %622, i64 0, i64 1, i64 0
  %659 = bitcast i8* %scevgep105.1 to [5 x [5 x i8]]*
  %scevgep109.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %623, i64 0, i64 1, i64 0
  %660 = bitcast i8* %scevgep109.1 to [5 x [5 x i8]]*
  %scevgep113.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %624, i64 0, i64 1, i64 0
  %661 = bitcast i8* %scevgep113.1 to [5 x [5 x i8]]*
  %arrayidx56.i394.2 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  %arrayidx70.i408.2 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  %scevgep95.2358 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 0
  %662 = load i8, i8* %scevgep95.2358, align 1
  %conv44.i381.2359 = zext i8 %662 to i32
  %scevgep98.2360 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %657, i64 0, i64 0, i64 0
  %663 = load i8, i8* %scevgep98.2360, align 1
  %conv49.i386.2361 = zext i8 %663 to i32
  %xor.i387.2362 = xor i32 %conv44.i381.2359, %conv49.i386.2361
  %conv50.i388.2363 = trunc i32 %xor.i387.2362 to i8
  %scevgep102.2364 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %658, i64 0, i64 0, i64 0
  store i8 %conv50.i388.2363, i8* %scevgep102.2364, align 1
  %664 = load i8, i8* %arrayidx56.i394.2, align 1
  %conv57.i395.2365 = zext i8 %664 to i32
  %xor58.i396.2366 = xor i32 %conv57.i395.2365, 1
  %conv59.i397.2367 = trunc i32 %xor58.i396.2366 to i8
  %scevgep99.2368 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %657, i64 0, i64 0, i64 0
  %665 = load i8, i8* %scevgep99.2368, align 1
  %call64.i402.2369 = call zeroext i8 @mult(i8 zeroext %conv59.i397.2367, i8 zeroext %665) #2
  %scevgep106.2370 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %659, i64 0, i64 0, i64 0
  store i8 %call64.i402.2369, i8* %scevgep106.2370, align 1
  %666 = load i8, i8* %arrayidx70.i408.2, align 1
  %scevgep103.2371 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %658, i64 0, i64 0, i64 0
  %667 = load i8, i8* %scevgep103.2371, align 1
  %call75.i413.2372 = call zeroext i8 @mult(i8 zeroext %666, i8 zeroext %667) #2
  %scevgep110.2373 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %660, i64 0, i64 0, i64 0
  store i8 %call75.i413.2372, i8* %scevgep110.2373, align 1
  %scevgep107.2374 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %659, i64 0, i64 0, i64 0
  %668 = load i8, i8* %scevgep107.2374, align 1
  %conv84.i422.2375 = zext i8 %668 to i32
  %scevgep111.2376 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %660, i64 0, i64 0, i64 0
  %669 = load i8, i8* %scevgep111.2376, align 1
  %conv89.i427.2377 = zext i8 %669 to i32
  %xor90.i428.2378 = xor i32 %conv84.i422.2375, %conv89.i427.2377
  %conv91.i429.2379 = trunc i32 %xor90.i428.2378 to i8
  %scevgep114.2380 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %661, i64 0, i64 0, i64 0
  store i8 %conv91.i429.2379, i8* %scevgep114.2380, align 1
  %scevgep95.1.2 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 1
  %670 = load i8, i8* %scevgep95.1.2, align 1
  %conv44.i381.1.2 = zext i8 %670 to i32
  %scevgep98.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %657, i64 0, i64 0, i64 1
  %671 = load i8, i8* %scevgep98.1.2, align 1
  %conv49.i386.1.2 = zext i8 %671 to i32
  %xor.i387.1.2 = xor i32 %conv44.i381.1.2, %conv49.i386.1.2
  %conv50.i388.1.2 = trunc i32 %xor.i387.1.2 to i8
  %scevgep102.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %658, i64 0, i64 0, i64 1
  store i8 %conv50.i388.1.2, i8* %scevgep102.1.2, align 1
  %672 = load i8, i8* %arrayidx56.i394.2, align 1
  %conv57.i395.1.2 = zext i8 %672 to i32
  %xor58.i396.1.2 = xor i32 %conv57.i395.1.2, 1
  %conv59.i397.1.2 = trunc i32 %xor58.i396.1.2 to i8
  %scevgep99.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %657, i64 0, i64 0, i64 1
  %673 = load i8, i8* %scevgep99.1.2, align 1
  %call64.i402.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i397.1.2, i8 zeroext %673) #2
  %scevgep106.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %659, i64 0, i64 0, i64 1
  store i8 %call64.i402.1.2, i8* %scevgep106.1.2, align 1
  %674 = load i8, i8* %arrayidx70.i408.2, align 1
  %scevgep103.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %658, i64 0, i64 0, i64 1
  %675 = load i8, i8* %scevgep103.1.2, align 1
  %call75.i413.1.2 = call zeroext i8 @mult(i8 zeroext %674, i8 zeroext %675) #2
  %scevgep110.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %660, i64 0, i64 0, i64 1
  store i8 %call75.i413.1.2, i8* %scevgep110.1.2, align 1
  %scevgep107.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %659, i64 0, i64 0, i64 1
  %676 = load i8, i8* %scevgep107.1.2, align 1
  %conv84.i422.1.2 = zext i8 %676 to i32
  %scevgep111.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %660, i64 0, i64 0, i64 1
  %677 = load i8, i8* %scevgep111.1.2, align 1
  %conv89.i427.1.2 = zext i8 %677 to i32
  %xor90.i428.1.2 = xor i32 %conv84.i422.1.2, %conv89.i427.1.2
  %conv91.i429.1.2 = trunc i32 %xor90.i428.1.2 to i8
  %scevgep114.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %661, i64 0, i64 0, i64 1
  store i8 %conv91.i429.1.2, i8* %scevgep114.1.2, align 1
  %scevgep95.3.2 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 3
  %678 = load i8, i8* %scevgep95.3.2, align 1
  %conv44.i381.3.2 = zext i8 %678 to i32
  %scevgep98.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %657, i64 0, i64 0, i64 3
  %679 = load i8, i8* %scevgep98.3.2, align 1
  %conv49.i386.3.2 = zext i8 %679 to i32
  %xor.i387.3.2 = xor i32 %conv44.i381.3.2, %conv49.i386.3.2
  %conv50.i388.3.2 = trunc i32 %xor.i387.3.2 to i8
  %scevgep102.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %658, i64 0, i64 0, i64 3
  store i8 %conv50.i388.3.2, i8* %scevgep102.3.2, align 1
  %680 = load i8, i8* %arrayidx56.i394.2, align 1
  %conv57.i395.3.2 = zext i8 %680 to i32
  %xor58.i396.3.2 = xor i32 %conv57.i395.3.2, 1
  %conv59.i397.3.2 = trunc i32 %xor58.i396.3.2 to i8
  %scevgep99.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %657, i64 0, i64 0, i64 3
  %681 = load i8, i8* %scevgep99.3.2, align 1
  %call64.i402.3.2 = call zeroext i8 @mult(i8 zeroext %conv59.i397.3.2, i8 zeroext %681) #2
  %scevgep106.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %659, i64 0, i64 0, i64 3
  store i8 %call64.i402.3.2, i8* %scevgep106.3.2, align 1
  %682 = load i8, i8* %arrayidx70.i408.2, align 1
  %scevgep103.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %658, i64 0, i64 0, i64 3
  %683 = load i8, i8* %scevgep103.3.2, align 1
  %call75.i413.3.2 = call zeroext i8 @mult(i8 zeroext %682, i8 zeroext %683) #2
  %scevgep110.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %660, i64 0, i64 0, i64 3
  store i8 %call75.i413.3.2, i8* %scevgep110.3.2, align 1
  %scevgep107.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %659, i64 0, i64 0, i64 3
  %684 = load i8, i8* %scevgep107.3.2, align 1
  %conv84.i422.3.2 = zext i8 %684 to i32
  %scevgep111.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %660, i64 0, i64 0, i64 3
  %685 = load i8, i8* %scevgep111.3.2, align 1
  %conv89.i427.3.2 = zext i8 %685 to i32
  %xor90.i428.3.2 = xor i32 %conv84.i422.3.2, %conv89.i427.3.2
  %conv91.i429.3.2 = trunc i32 %xor90.i428.3.2 to i8
  %scevgep114.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %661, i64 0, i64 0, i64 3
  store i8 %conv91.i429.3.2, i8* %scevgep114.3.2, align 1
  %scevgep95.4.2 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 4
  %686 = load i8, i8* %scevgep95.4.2, align 1
  %conv44.i381.4.2 = zext i8 %686 to i32
  %scevgep98.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %657, i64 0, i64 0, i64 4
  %687 = load i8, i8* %scevgep98.4.2, align 1
  %conv49.i386.4.2 = zext i8 %687 to i32
  %xor.i387.4.2 = xor i32 %conv44.i381.4.2, %conv49.i386.4.2
  %conv50.i388.4.2 = trunc i32 %xor.i387.4.2 to i8
  %scevgep102.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %658, i64 0, i64 0, i64 4
  store i8 %conv50.i388.4.2, i8* %scevgep102.4.2, align 1
  %688 = load i8, i8* %arrayidx56.i394.2, align 1
  %conv57.i395.4.2 = zext i8 %688 to i32
  %xor58.i396.4.2 = xor i32 %conv57.i395.4.2, 1
  %conv59.i397.4.2 = trunc i32 %xor58.i396.4.2 to i8
  %scevgep99.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %657, i64 0, i64 0, i64 4
  %689 = load i8, i8* %scevgep99.4.2, align 1
  %call64.i402.4.2 = call zeroext i8 @mult(i8 zeroext %conv59.i397.4.2, i8 zeroext %689) #2
  %scevgep106.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %659, i64 0, i64 0, i64 4
  store i8 %call64.i402.4.2, i8* %scevgep106.4.2, align 1
  %690 = load i8, i8* %arrayidx70.i408.2, align 1
  %scevgep103.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %658, i64 0, i64 0, i64 4
  %691 = load i8, i8* %scevgep103.4.2, align 1
  %call75.i413.4.2 = call zeroext i8 @mult(i8 zeroext %690, i8 zeroext %691) #2
  %scevgep110.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %660, i64 0, i64 0, i64 4
  store i8 %call75.i413.4.2, i8* %scevgep110.4.2, align 1
  %scevgep107.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %659, i64 0, i64 0, i64 4
  %692 = load i8, i8* %scevgep107.4.2, align 1
  %conv84.i422.4.2 = zext i8 %692 to i32
  %scevgep111.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %660, i64 0, i64 0, i64 4
  %693 = load i8, i8* %scevgep111.4.2, align 1
  %conv89.i427.4.2 = zext i8 %693 to i32
  %xor90.i428.4.2 = xor i32 %conv84.i422.4.2, %conv89.i427.4.2
  %conv91.i429.4.2 = trunc i32 %xor90.i428.4.2 to i8
  %scevgep114.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %661, i64 0, i64 0, i64 4
  store i8 %conv91.i429.4.2, i8* %scevgep114.4.2, align 1
  %scevgep97.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %657, i64 0, i64 1, i64 0
  %694 = bitcast i8* %scevgep97.2 to [5 x [5 x i8]]*
  %scevgep101.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %658, i64 0, i64 1, i64 0
  %695 = bitcast i8* %scevgep101.2 to [5 x [5 x i8]]*
  %scevgep105.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %659, i64 0, i64 1, i64 0
  %696 = bitcast i8* %scevgep105.2 to [5 x [5 x i8]]*
  %scevgep109.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %660, i64 0, i64 1, i64 0
  %697 = bitcast i8* %scevgep109.2 to [5 x [5 x i8]]*
  %scevgep113.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %661, i64 0, i64 1, i64 0
  %698 = bitcast i8* %scevgep113.2 to [5 x [5 x i8]]*
  %arrayidx56.i394.3 = getelementptr inbounds i8, i8* %arraydecay10, i64 3
  %arrayidx70.i408.3 = getelementptr inbounds i8, i8* %arraydecay10, i64 3
  %scevgep95.3385 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 0
  %699 = load i8, i8* %scevgep95.3385, align 1
  %conv44.i381.3386 = zext i8 %699 to i32
  %scevgep98.3387 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %694, i64 0, i64 0, i64 0
  %700 = load i8, i8* %scevgep98.3387, align 1
  %conv49.i386.3388 = zext i8 %700 to i32
  %xor.i387.3389 = xor i32 %conv44.i381.3386, %conv49.i386.3388
  %conv50.i388.3390 = trunc i32 %xor.i387.3389 to i8
  %scevgep102.3391 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %695, i64 0, i64 0, i64 0
  store i8 %conv50.i388.3390, i8* %scevgep102.3391, align 1
  %701 = load i8, i8* %arrayidx56.i394.3, align 1
  %conv57.i395.3392 = zext i8 %701 to i32
  %xor58.i396.3393 = xor i32 %conv57.i395.3392, 1
  %conv59.i397.3394 = trunc i32 %xor58.i396.3393 to i8
  %scevgep99.3395 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %694, i64 0, i64 0, i64 0
  %702 = load i8, i8* %scevgep99.3395, align 1
  %call64.i402.3396 = call zeroext i8 @mult(i8 zeroext %conv59.i397.3394, i8 zeroext %702) #2
  %scevgep106.3397 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %696, i64 0, i64 0, i64 0
  store i8 %call64.i402.3396, i8* %scevgep106.3397, align 1
  %703 = load i8, i8* %arrayidx70.i408.3, align 1
  %scevgep103.3398 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %695, i64 0, i64 0, i64 0
  %704 = load i8, i8* %scevgep103.3398, align 1
  %call75.i413.3399 = call zeroext i8 @mult(i8 zeroext %703, i8 zeroext %704) #2
  %scevgep110.3400 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %697, i64 0, i64 0, i64 0
  store i8 %call75.i413.3399, i8* %scevgep110.3400, align 1
  %scevgep107.3401 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %696, i64 0, i64 0, i64 0
  %705 = load i8, i8* %scevgep107.3401, align 1
  %conv84.i422.3402 = zext i8 %705 to i32
  %scevgep111.3403 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %697, i64 0, i64 0, i64 0
  %706 = load i8, i8* %scevgep111.3403, align 1
  %conv89.i427.3404 = zext i8 %706 to i32
  %xor90.i428.3405 = xor i32 %conv84.i422.3402, %conv89.i427.3404
  %conv91.i429.3406 = trunc i32 %xor90.i428.3405 to i8
  %scevgep114.3407 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %698, i64 0, i64 0, i64 0
  store i8 %conv91.i429.3406, i8* %scevgep114.3407, align 1
  %scevgep95.1.3 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 1
  %707 = load i8, i8* %scevgep95.1.3, align 1
  %conv44.i381.1.3 = zext i8 %707 to i32
  %scevgep98.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %694, i64 0, i64 0, i64 1
  %708 = load i8, i8* %scevgep98.1.3, align 1
  %conv49.i386.1.3 = zext i8 %708 to i32
  %xor.i387.1.3 = xor i32 %conv44.i381.1.3, %conv49.i386.1.3
  %conv50.i388.1.3 = trunc i32 %xor.i387.1.3 to i8
  %scevgep102.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %695, i64 0, i64 0, i64 1
  store i8 %conv50.i388.1.3, i8* %scevgep102.1.3, align 1
  %709 = load i8, i8* %arrayidx56.i394.3, align 1
  %conv57.i395.1.3 = zext i8 %709 to i32
  %xor58.i396.1.3 = xor i32 %conv57.i395.1.3, 1
  %conv59.i397.1.3 = trunc i32 %xor58.i396.1.3 to i8
  %scevgep99.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %694, i64 0, i64 0, i64 1
  %710 = load i8, i8* %scevgep99.1.3, align 1
  %call64.i402.1.3 = call zeroext i8 @mult(i8 zeroext %conv59.i397.1.3, i8 zeroext %710) #2
  %scevgep106.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %696, i64 0, i64 0, i64 1
  store i8 %call64.i402.1.3, i8* %scevgep106.1.3, align 1
  %711 = load i8, i8* %arrayidx70.i408.3, align 1
  %scevgep103.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %695, i64 0, i64 0, i64 1
  %712 = load i8, i8* %scevgep103.1.3, align 1
  %call75.i413.1.3 = call zeroext i8 @mult(i8 zeroext %711, i8 zeroext %712) #2
  %scevgep110.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %697, i64 0, i64 0, i64 1
  store i8 %call75.i413.1.3, i8* %scevgep110.1.3, align 1
  %scevgep107.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %696, i64 0, i64 0, i64 1
  %713 = load i8, i8* %scevgep107.1.3, align 1
  %conv84.i422.1.3 = zext i8 %713 to i32
  %scevgep111.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %697, i64 0, i64 0, i64 1
  %714 = load i8, i8* %scevgep111.1.3, align 1
  %conv89.i427.1.3 = zext i8 %714 to i32
  %xor90.i428.1.3 = xor i32 %conv84.i422.1.3, %conv89.i427.1.3
  %conv91.i429.1.3 = trunc i32 %xor90.i428.1.3 to i8
  %scevgep114.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %698, i64 0, i64 0, i64 1
  store i8 %conv91.i429.1.3, i8* %scevgep114.1.3, align 1
  %scevgep95.2.3 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 2
  %715 = load i8, i8* %scevgep95.2.3, align 1
  %conv44.i381.2.3 = zext i8 %715 to i32
  %scevgep98.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %694, i64 0, i64 0, i64 2
  %716 = load i8, i8* %scevgep98.2.3, align 1
  %conv49.i386.2.3 = zext i8 %716 to i32
  %xor.i387.2.3 = xor i32 %conv44.i381.2.3, %conv49.i386.2.3
  %conv50.i388.2.3 = trunc i32 %xor.i387.2.3 to i8
  %scevgep102.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %695, i64 0, i64 0, i64 2
  store i8 %conv50.i388.2.3, i8* %scevgep102.2.3, align 1
  %717 = load i8, i8* %arrayidx56.i394.3, align 1
  %conv57.i395.2.3 = zext i8 %717 to i32
  %xor58.i396.2.3 = xor i32 %conv57.i395.2.3, 1
  %conv59.i397.2.3 = trunc i32 %xor58.i396.2.3 to i8
  %scevgep99.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %694, i64 0, i64 0, i64 2
  %718 = load i8, i8* %scevgep99.2.3, align 1
  %call64.i402.2.3 = call zeroext i8 @mult(i8 zeroext %conv59.i397.2.3, i8 zeroext %718) #2
  %scevgep106.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %696, i64 0, i64 0, i64 2
  store i8 %call64.i402.2.3, i8* %scevgep106.2.3, align 1
  %719 = load i8, i8* %arrayidx70.i408.3, align 1
  %scevgep103.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %695, i64 0, i64 0, i64 2
  %720 = load i8, i8* %scevgep103.2.3, align 1
  %call75.i413.2.3 = call zeroext i8 @mult(i8 zeroext %719, i8 zeroext %720) #2
  %scevgep110.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %697, i64 0, i64 0, i64 2
  store i8 %call75.i413.2.3, i8* %scevgep110.2.3, align 1
  %scevgep107.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %696, i64 0, i64 0, i64 2
  %721 = load i8, i8* %scevgep107.2.3, align 1
  %conv84.i422.2.3 = zext i8 %721 to i32
  %scevgep111.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %697, i64 0, i64 0, i64 2
  %722 = load i8, i8* %scevgep111.2.3, align 1
  %conv89.i427.2.3 = zext i8 %722 to i32
  %xor90.i428.2.3 = xor i32 %conv84.i422.2.3, %conv89.i427.2.3
  %conv91.i429.2.3 = trunc i32 %xor90.i428.2.3 to i8
  %scevgep114.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %698, i64 0, i64 0, i64 2
  store i8 %conv91.i429.2.3, i8* %scevgep114.2.3, align 1
  %scevgep95.4.3 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 4
  %723 = load i8, i8* %scevgep95.4.3, align 1
  %conv44.i381.4.3 = zext i8 %723 to i32
  %scevgep98.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %694, i64 0, i64 0, i64 4
  %724 = load i8, i8* %scevgep98.4.3, align 1
  %conv49.i386.4.3 = zext i8 %724 to i32
  %xor.i387.4.3 = xor i32 %conv44.i381.4.3, %conv49.i386.4.3
  %conv50.i388.4.3 = trunc i32 %xor.i387.4.3 to i8
  %scevgep102.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %695, i64 0, i64 0, i64 4
  store i8 %conv50.i388.4.3, i8* %scevgep102.4.3, align 1
  %725 = load i8, i8* %arrayidx56.i394.3, align 1
  %conv57.i395.4.3 = zext i8 %725 to i32
  %xor58.i396.4.3 = xor i32 %conv57.i395.4.3, 1
  %conv59.i397.4.3 = trunc i32 %xor58.i396.4.3 to i8
  %scevgep99.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %694, i64 0, i64 0, i64 4
  %726 = load i8, i8* %scevgep99.4.3, align 1
  %call64.i402.4.3 = call zeroext i8 @mult(i8 zeroext %conv59.i397.4.3, i8 zeroext %726) #2
  %scevgep106.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %696, i64 0, i64 0, i64 4
  store i8 %call64.i402.4.3, i8* %scevgep106.4.3, align 1
  %727 = load i8, i8* %arrayidx70.i408.3, align 1
  %scevgep103.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %695, i64 0, i64 0, i64 4
  %728 = load i8, i8* %scevgep103.4.3, align 1
  %call75.i413.4.3 = call zeroext i8 @mult(i8 zeroext %727, i8 zeroext %728) #2
  %scevgep110.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %697, i64 0, i64 0, i64 4
  store i8 %call75.i413.4.3, i8* %scevgep110.4.3, align 1
  %scevgep107.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %696, i64 0, i64 0, i64 4
  %729 = load i8, i8* %scevgep107.4.3, align 1
  %conv84.i422.4.3 = zext i8 %729 to i32
  %scevgep111.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %697, i64 0, i64 0, i64 4
  %730 = load i8, i8* %scevgep111.4.3, align 1
  %conv89.i427.4.3 = zext i8 %730 to i32
  %xor90.i428.4.3 = xor i32 %conv84.i422.4.3, %conv89.i427.4.3
  %conv91.i429.4.3 = trunc i32 %xor90.i428.4.3 to i8
  %scevgep114.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %698, i64 0, i64 0, i64 4
  store i8 %conv91.i429.4.3, i8* %scevgep114.4.3, align 1
  %scevgep97.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %694, i64 0, i64 1, i64 0
  %731 = bitcast i8* %scevgep97.3 to [5 x [5 x i8]]*
  %scevgep101.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %695, i64 0, i64 1, i64 0
  %732 = bitcast i8* %scevgep101.3 to [5 x [5 x i8]]*
  %scevgep105.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %696, i64 0, i64 1, i64 0
  %733 = bitcast i8* %scevgep105.3 to [5 x [5 x i8]]*
  %scevgep109.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %697, i64 0, i64 1, i64 0
  %734 = bitcast i8* %scevgep109.3 to [5 x [5 x i8]]*
  %scevgep113.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %698, i64 0, i64 1, i64 0
  %735 = bitcast i8* %scevgep113.3 to [5 x [5 x i8]]*
  %arrayidx56.i394.4 = getelementptr inbounds i8, i8* %arraydecay10, i64 4
  %arrayidx70.i408.4 = getelementptr inbounds i8, i8* %arraydecay10, i64 4
  %scevgep95.4412 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 0
  %736 = load i8, i8* %scevgep95.4412, align 1
  %conv44.i381.4413 = zext i8 %736 to i32
  %scevgep98.4414 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %731, i64 0, i64 0, i64 0
  %737 = load i8, i8* %scevgep98.4414, align 1
  %conv49.i386.4415 = zext i8 %737 to i32
  %xor.i387.4416 = xor i32 %conv44.i381.4413, %conv49.i386.4415
  %conv50.i388.4417 = trunc i32 %xor.i387.4416 to i8
  %scevgep102.4418 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %732, i64 0, i64 0, i64 0
  store i8 %conv50.i388.4417, i8* %scevgep102.4418, align 1
  %738 = load i8, i8* %arrayidx56.i394.4, align 1
  %conv57.i395.4419 = zext i8 %738 to i32
  %xor58.i396.4420 = xor i32 %conv57.i395.4419, 1
  %conv59.i397.4421 = trunc i32 %xor58.i396.4420 to i8
  %scevgep99.4422 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %731, i64 0, i64 0, i64 0
  %739 = load i8, i8* %scevgep99.4422, align 1
  %call64.i402.4423 = call zeroext i8 @mult(i8 zeroext %conv59.i397.4421, i8 zeroext %739) #2
  %scevgep106.4424 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %733, i64 0, i64 0, i64 0
  store i8 %call64.i402.4423, i8* %scevgep106.4424, align 1
  %740 = load i8, i8* %arrayidx70.i408.4, align 1
  %scevgep103.4425 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %732, i64 0, i64 0, i64 0
  %741 = load i8, i8* %scevgep103.4425, align 1
  %call75.i413.4426 = call zeroext i8 @mult(i8 zeroext %740, i8 zeroext %741) #2
  %scevgep110.4427 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %734, i64 0, i64 0, i64 0
  store i8 %call75.i413.4426, i8* %scevgep110.4427, align 1
  %scevgep107.4428 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %733, i64 0, i64 0, i64 0
  %742 = load i8, i8* %scevgep107.4428, align 1
  %conv84.i422.4429 = zext i8 %742 to i32
  %scevgep111.4430 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %734, i64 0, i64 0, i64 0
  %743 = load i8, i8* %scevgep111.4430, align 1
  %conv89.i427.4431 = zext i8 %743 to i32
  %xor90.i428.4432 = xor i32 %conv84.i422.4429, %conv89.i427.4431
  %conv91.i429.4433 = trunc i32 %xor90.i428.4432 to i8
  %scevgep114.4434 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %735, i64 0, i64 0, i64 0
  store i8 %conv91.i429.4433, i8* %scevgep114.4434, align 1
  %scevgep95.1.4 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 1
  %744 = load i8, i8* %scevgep95.1.4, align 1
  %conv44.i381.1.4 = zext i8 %744 to i32
  %scevgep98.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %731, i64 0, i64 0, i64 1
  %745 = load i8, i8* %scevgep98.1.4, align 1
  %conv49.i386.1.4 = zext i8 %745 to i32
  %xor.i387.1.4 = xor i32 %conv44.i381.1.4, %conv49.i386.1.4
  %conv50.i388.1.4 = trunc i32 %xor.i387.1.4 to i8
  %scevgep102.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %732, i64 0, i64 0, i64 1
  store i8 %conv50.i388.1.4, i8* %scevgep102.1.4, align 1
  %746 = load i8, i8* %arrayidx56.i394.4, align 1
  %conv57.i395.1.4 = zext i8 %746 to i32
  %xor58.i396.1.4 = xor i32 %conv57.i395.1.4, 1
  %conv59.i397.1.4 = trunc i32 %xor58.i396.1.4 to i8
  %scevgep99.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %731, i64 0, i64 0, i64 1
  %747 = load i8, i8* %scevgep99.1.4, align 1
  %call64.i402.1.4 = call zeroext i8 @mult(i8 zeroext %conv59.i397.1.4, i8 zeroext %747) #2
  %scevgep106.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %733, i64 0, i64 0, i64 1
  store i8 %call64.i402.1.4, i8* %scevgep106.1.4, align 1
  %748 = load i8, i8* %arrayidx70.i408.4, align 1
  %scevgep103.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %732, i64 0, i64 0, i64 1
  %749 = load i8, i8* %scevgep103.1.4, align 1
  %call75.i413.1.4 = call zeroext i8 @mult(i8 zeroext %748, i8 zeroext %749) #2
  %scevgep110.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %734, i64 0, i64 0, i64 1
  store i8 %call75.i413.1.4, i8* %scevgep110.1.4, align 1
  %scevgep107.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %733, i64 0, i64 0, i64 1
  %750 = load i8, i8* %scevgep107.1.4, align 1
  %conv84.i422.1.4 = zext i8 %750 to i32
  %scevgep111.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %734, i64 0, i64 0, i64 1
  %751 = load i8, i8* %scevgep111.1.4, align 1
  %conv89.i427.1.4 = zext i8 %751 to i32
  %xor90.i428.1.4 = xor i32 %conv84.i422.1.4, %conv89.i427.1.4
  %conv91.i429.1.4 = trunc i32 %xor90.i428.1.4 to i8
  %scevgep114.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %735, i64 0, i64 0, i64 1
  store i8 %conv91.i429.1.4, i8* %scevgep114.1.4, align 1
  %scevgep95.2.4 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 2
  %752 = load i8, i8* %scevgep95.2.4, align 1
  %conv44.i381.2.4 = zext i8 %752 to i32
  %scevgep98.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %731, i64 0, i64 0, i64 2
  %753 = load i8, i8* %scevgep98.2.4, align 1
  %conv49.i386.2.4 = zext i8 %753 to i32
  %xor.i387.2.4 = xor i32 %conv44.i381.2.4, %conv49.i386.2.4
  %conv50.i388.2.4 = trunc i32 %xor.i387.2.4 to i8
  %scevgep102.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %732, i64 0, i64 0, i64 2
  store i8 %conv50.i388.2.4, i8* %scevgep102.2.4, align 1
  %754 = load i8, i8* %arrayidx56.i394.4, align 1
  %conv57.i395.2.4 = zext i8 %754 to i32
  %xor58.i396.2.4 = xor i32 %conv57.i395.2.4, 1
  %conv59.i397.2.4 = trunc i32 %xor58.i396.2.4 to i8
  %scevgep99.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %731, i64 0, i64 0, i64 2
  %755 = load i8, i8* %scevgep99.2.4, align 1
  %call64.i402.2.4 = call zeroext i8 @mult(i8 zeroext %conv59.i397.2.4, i8 zeroext %755) #2
  %scevgep106.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %733, i64 0, i64 0, i64 2
  store i8 %call64.i402.2.4, i8* %scevgep106.2.4, align 1
  %756 = load i8, i8* %arrayidx70.i408.4, align 1
  %scevgep103.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %732, i64 0, i64 0, i64 2
  %757 = load i8, i8* %scevgep103.2.4, align 1
  %call75.i413.2.4 = call zeroext i8 @mult(i8 zeroext %756, i8 zeroext %757) #2
  %scevgep110.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %734, i64 0, i64 0, i64 2
  store i8 %call75.i413.2.4, i8* %scevgep110.2.4, align 1
  %scevgep107.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %733, i64 0, i64 0, i64 2
  %758 = load i8, i8* %scevgep107.2.4, align 1
  %conv84.i422.2.4 = zext i8 %758 to i32
  %scevgep111.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %734, i64 0, i64 0, i64 2
  %759 = load i8, i8* %scevgep111.2.4, align 1
  %conv89.i427.2.4 = zext i8 %759 to i32
  %xor90.i428.2.4 = xor i32 %conv84.i422.2.4, %conv89.i427.2.4
  %conv91.i429.2.4 = trunc i32 %xor90.i428.2.4 to i8
  %scevgep114.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %735, i64 0, i64 0, i64 2
  store i8 %conv91.i429.2.4, i8* %scevgep114.2.4, align 1
  %scevgep95.3.4 = getelementptr [5 x i8], [5 x i8]* %e4, i64 0, i64 3
  %760 = load i8, i8* %scevgep95.3.4, align 1
  %conv44.i381.3.4 = zext i8 %760 to i32
  %scevgep98.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %731, i64 0, i64 0, i64 3
  %761 = load i8, i8* %scevgep98.3.4, align 1
  %conv49.i386.3.4 = zext i8 %761 to i32
  %xor.i387.3.4 = xor i32 %conv44.i381.3.4, %conv49.i386.3.4
  %conv50.i388.3.4 = trunc i32 %xor.i387.3.4 to i8
  %scevgep102.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %732, i64 0, i64 0, i64 3
  store i8 %conv50.i388.3.4, i8* %scevgep102.3.4, align 1
  %762 = load i8, i8* %arrayidx56.i394.4, align 1
  %conv57.i395.3.4 = zext i8 %762 to i32
  %xor58.i396.3.4 = xor i32 %conv57.i395.3.4, 1
  %conv59.i397.3.4 = trunc i32 %xor58.i396.3.4 to i8
  %scevgep99.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %731, i64 0, i64 0, i64 3
  %763 = load i8, i8* %scevgep99.3.4, align 1
  %call64.i402.3.4 = call zeroext i8 @mult(i8 zeroext %conv59.i397.3.4, i8 zeroext %763) #2
  %scevgep106.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %733, i64 0, i64 0, i64 3
  store i8 %call64.i402.3.4, i8* %scevgep106.3.4, align 1
  %764 = load i8, i8* %arrayidx70.i408.4, align 1
  %scevgep103.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %732, i64 0, i64 0, i64 3
  %765 = load i8, i8* %scevgep103.3.4, align 1
  %call75.i413.3.4 = call zeroext i8 @mult(i8 zeroext %764, i8 zeroext %765) #2
  %scevgep110.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %734, i64 0, i64 0, i64 3
  store i8 %call75.i413.3.4, i8* %scevgep110.3.4, align 1
  %scevgep107.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %733, i64 0, i64 0, i64 3
  %766 = load i8, i8* %scevgep107.3.4, align 1
  %conv84.i422.3.4 = zext i8 %766 to i32
  %scevgep111.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %734, i64 0, i64 0, i64 3
  %767 = load i8, i8* %scevgep111.3.4, align 1
  %conv89.i427.3.4 = zext i8 %767 to i32
  %xor90.i428.3.4 = xor i32 %conv84.i422.3.4, %conv89.i427.3.4
  %conv91.i429.3.4 = trunc i32 %xor90.i428.3.4 to i8
  %scevgep114.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %735, i64 0, i64 0, i64 3
  store i8 %conv91.i429.3.4, i8* %scevgep114.3.4, align 1
  %768 = load i8, i8* %arraydecay10, align 1
  %769 = load i8, i8* %arraydecay11, align 1
  %call111.i446 = call zeroext i8 @mult(i8 zeroext %768, i8 zeroext %769) #2
  store i8 %call111.i446, i8* %arraydecay12, align 1
  %scevgep86.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 1
  %770 = load i8, i8* %scevgep86.1, align 1
  %conv126.i458.1 = zext i8 %770 to i32
  %771 = load i8, i8* %arraydecay12, align 1
  %conv129.i461.1 = zext i8 %771 to i32
  %xor130.i462.1 = xor i32 %conv129.i461.1, %conv126.i458.1
  %conv131.i463.1 = trunc i32 %xor130.i462.1 to i8
  store i8 %conv131.i463.1, i8* %arraydecay12, align 1
  %scevgep86.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 2
  %772 = load i8, i8* %scevgep86.2, align 1
  %conv126.i458.2 = zext i8 %772 to i32
  %773 = load i8, i8* %arraydecay12, align 1
  %conv129.i461.2 = zext i8 %773 to i32
  %xor130.i462.2 = xor i32 %conv129.i461.2, %conv126.i458.2
  %conv131.i463.2 = trunc i32 %xor130.i462.2 to i8
  store i8 %conv131.i463.2, i8* %arraydecay12, align 1
  %scevgep86.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 3
  %774 = load i8, i8* %scevgep86.3, align 1
  %conv126.i458.3 = zext i8 %774 to i32
  %775 = load i8, i8* %arraydecay12, align 1
  %conv129.i461.3 = zext i8 %775 to i32
  %xor130.i462.3 = xor i32 %conv129.i461.3, %conv126.i458.3
  %conv131.i463.3 = trunc i32 %xor130.i462.3 to i8
  store i8 %conv131.i463.3, i8* %arraydecay12, align 1
  %scevgep86.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 4
  %776 = load i8, i8* %scevgep86.4, align 1
  %conv126.i458.4 = zext i8 %776 to i32
  %777 = load i8, i8* %arraydecay12, align 1
  %conv129.i461.4 = zext i8 %777 to i32
  %xor130.i462.4 = xor i32 %conv129.i461.4, %conv126.i458.4
  %conv131.i463.4 = trunc i32 %xor130.i462.4 to i8
  store i8 %conv131.i463.4, i8* %arraydecay12, align 1
  %scevgep85 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 1, i64 0
  %778 = bitcast i8* %scevgep85 to [5 x [5 x i8]]*
  %arrayidx108.i443.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %779 = load i8, i8* %arrayidx108.i443.1, align 1
  %arrayidx110.i445.1 = getelementptr inbounds i8, i8* %arraydecay11, i64 1
  %780 = load i8, i8* %arrayidx110.i445.1, align 1
  %call111.i446.1 = call zeroext i8 @mult(i8 zeroext %779, i8 zeroext %780) #2
  %arrayidx113.i448.1 = getelementptr inbounds i8, i8* %arraydecay12, i64 1
  store i8 %call111.i446.1, i8* %arrayidx113.i448.1, align 1
  %arrayidx128.i460.1 = getelementptr inbounds i8, i8* %arraydecay12, i64 1
  %scevgep86.1295 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %778, i64 0, i64 0, i64 0
  %781 = load i8, i8* %scevgep86.1295, align 1
  %conv126.i458.1296 = zext i8 %781 to i32
  %782 = load i8, i8* %arrayidx128.i460.1, align 1
  %conv129.i461.1297 = zext i8 %782 to i32
  %xor130.i462.1298 = xor i32 %conv129.i461.1297, %conv126.i458.1296
  %conv131.i463.1299 = trunc i32 %xor130.i462.1298 to i8
  store i8 %conv131.i463.1299, i8* %arrayidx128.i460.1, align 1
  %scevgep86.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %778, i64 0, i64 0, i64 2
  %783 = load i8, i8* %scevgep86.2.1, align 1
  %conv126.i458.2.1 = zext i8 %783 to i32
  %784 = load i8, i8* %arrayidx128.i460.1, align 1
  %conv129.i461.2.1 = zext i8 %784 to i32
  %xor130.i462.2.1 = xor i32 %conv129.i461.2.1, %conv126.i458.2.1
  %conv131.i463.2.1 = trunc i32 %xor130.i462.2.1 to i8
  store i8 %conv131.i463.2.1, i8* %arrayidx128.i460.1, align 1
  %scevgep86.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %778, i64 0, i64 0, i64 3
  %785 = load i8, i8* %scevgep86.3.1, align 1
  %conv126.i458.3.1 = zext i8 %785 to i32
  %786 = load i8, i8* %arrayidx128.i460.1, align 1
  %conv129.i461.3.1 = zext i8 %786 to i32
  %xor130.i462.3.1 = xor i32 %conv129.i461.3.1, %conv126.i458.3.1
  %conv131.i463.3.1 = trunc i32 %xor130.i462.3.1 to i8
  store i8 %conv131.i463.3.1, i8* %arrayidx128.i460.1, align 1
  %scevgep86.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %778, i64 0, i64 0, i64 4
  %787 = load i8, i8* %scevgep86.4.1, align 1
  %conv126.i458.4.1 = zext i8 %787 to i32
  %788 = load i8, i8* %arrayidx128.i460.1, align 1
  %conv129.i461.4.1 = zext i8 %788 to i32
  %xor130.i462.4.1 = xor i32 %conv129.i461.4.1, %conv126.i458.4.1
  %conv131.i463.4.1 = trunc i32 %xor130.i462.4.1 to i8
  store i8 %conv131.i463.4.1, i8* %arrayidx128.i460.1, align 1
  %scevgep85.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %778, i64 0, i64 1, i64 0
  %789 = bitcast i8* %scevgep85.1 to [5 x [5 x i8]]*
  %arrayidx108.i443.2 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  %790 = load i8, i8* %arrayidx108.i443.2, align 1
  %arrayidx110.i445.2 = getelementptr inbounds i8, i8* %arraydecay11, i64 2
  %791 = load i8, i8* %arrayidx110.i445.2, align 1
  %call111.i446.2 = call zeroext i8 @mult(i8 zeroext %790, i8 zeroext %791) #2
  %arrayidx113.i448.2 = getelementptr inbounds i8, i8* %arraydecay12, i64 2
  store i8 %call111.i446.2, i8* %arrayidx113.i448.2, align 1
  %arrayidx128.i460.2 = getelementptr inbounds i8, i8* %arraydecay12, i64 2
  %scevgep86.2304 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %789, i64 0, i64 0, i64 0
  %792 = load i8, i8* %scevgep86.2304, align 1
  %conv126.i458.2305 = zext i8 %792 to i32
  %793 = load i8, i8* %arrayidx128.i460.2, align 1
  %conv129.i461.2306 = zext i8 %793 to i32
  %xor130.i462.2307 = xor i32 %conv129.i461.2306, %conv126.i458.2305
  %conv131.i463.2308 = trunc i32 %xor130.i462.2307 to i8
  store i8 %conv131.i463.2308, i8* %arrayidx128.i460.2, align 1
  %scevgep86.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %789, i64 0, i64 0, i64 1
  %794 = load i8, i8* %scevgep86.1.2, align 1
  %conv126.i458.1.2 = zext i8 %794 to i32
  %795 = load i8, i8* %arrayidx128.i460.2, align 1
  %conv129.i461.1.2 = zext i8 %795 to i32
  %xor130.i462.1.2 = xor i32 %conv129.i461.1.2, %conv126.i458.1.2
  %conv131.i463.1.2 = trunc i32 %xor130.i462.1.2 to i8
  store i8 %conv131.i463.1.2, i8* %arrayidx128.i460.2, align 1
  %scevgep86.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %789, i64 0, i64 0, i64 3
  %796 = load i8, i8* %scevgep86.3.2, align 1
  %conv126.i458.3.2 = zext i8 %796 to i32
  %797 = load i8, i8* %arrayidx128.i460.2, align 1
  %conv129.i461.3.2 = zext i8 %797 to i32
  %xor130.i462.3.2 = xor i32 %conv129.i461.3.2, %conv126.i458.3.2
  %conv131.i463.3.2 = trunc i32 %xor130.i462.3.2 to i8
  store i8 %conv131.i463.3.2, i8* %arrayidx128.i460.2, align 1
  %scevgep86.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %789, i64 0, i64 0, i64 4
  %798 = load i8, i8* %scevgep86.4.2, align 1
  %conv126.i458.4.2 = zext i8 %798 to i32
  %799 = load i8, i8* %arrayidx128.i460.2, align 1
  %conv129.i461.4.2 = zext i8 %799 to i32
  %xor130.i462.4.2 = xor i32 %conv129.i461.4.2, %conv126.i458.4.2
  %conv131.i463.4.2 = trunc i32 %xor130.i462.4.2 to i8
  store i8 %conv131.i463.4.2, i8* %arrayidx128.i460.2, align 1
  %scevgep85.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %789, i64 0, i64 1, i64 0
  %800 = bitcast i8* %scevgep85.2 to [5 x [5 x i8]]*
  %arrayidx108.i443.3 = getelementptr inbounds i8, i8* %arraydecay10, i64 3
  %801 = load i8, i8* %arrayidx108.i443.3, align 1
  %arrayidx110.i445.3 = getelementptr inbounds i8, i8* %arraydecay11, i64 3
  %802 = load i8, i8* %arrayidx110.i445.3, align 1
  %call111.i446.3 = call zeroext i8 @mult(i8 zeroext %801, i8 zeroext %802) #2
  %arrayidx113.i448.3 = getelementptr inbounds i8, i8* %arraydecay12, i64 3
  store i8 %call111.i446.3, i8* %arrayidx113.i448.3, align 1
  %arrayidx128.i460.3 = getelementptr inbounds i8, i8* %arraydecay12, i64 3
  %scevgep86.3313 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %800, i64 0, i64 0, i64 0
  %803 = load i8, i8* %scevgep86.3313, align 1
  %conv126.i458.3314 = zext i8 %803 to i32
  %804 = load i8, i8* %arrayidx128.i460.3, align 1
  %conv129.i461.3315 = zext i8 %804 to i32
  %xor130.i462.3316 = xor i32 %conv129.i461.3315, %conv126.i458.3314
  %conv131.i463.3317 = trunc i32 %xor130.i462.3316 to i8
  store i8 %conv131.i463.3317, i8* %arrayidx128.i460.3, align 1
  %scevgep86.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %800, i64 0, i64 0, i64 1
  %805 = load i8, i8* %scevgep86.1.3, align 1
  %conv126.i458.1.3 = zext i8 %805 to i32
  %806 = load i8, i8* %arrayidx128.i460.3, align 1
  %conv129.i461.1.3 = zext i8 %806 to i32
  %xor130.i462.1.3 = xor i32 %conv129.i461.1.3, %conv126.i458.1.3
  %conv131.i463.1.3 = trunc i32 %xor130.i462.1.3 to i8
  store i8 %conv131.i463.1.3, i8* %arrayidx128.i460.3, align 1
  %scevgep86.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %800, i64 0, i64 0, i64 2
  %807 = load i8, i8* %scevgep86.2.3, align 1
  %conv126.i458.2.3 = zext i8 %807 to i32
  %808 = load i8, i8* %arrayidx128.i460.3, align 1
  %conv129.i461.2.3 = zext i8 %808 to i32
  %xor130.i462.2.3 = xor i32 %conv129.i461.2.3, %conv126.i458.2.3
  %conv131.i463.2.3 = trunc i32 %xor130.i462.2.3 to i8
  store i8 %conv131.i463.2.3, i8* %arrayidx128.i460.3, align 1
  %scevgep86.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %800, i64 0, i64 0, i64 4
  %809 = load i8, i8* %scevgep86.4.3, align 1
  %conv126.i458.4.3 = zext i8 %809 to i32
  %810 = load i8, i8* %arrayidx128.i460.3, align 1
  %conv129.i461.4.3 = zext i8 %810 to i32
  %xor130.i462.4.3 = xor i32 %conv129.i461.4.3, %conv126.i458.4.3
  %conv131.i463.4.3 = trunc i32 %xor130.i462.4.3 to i8
  store i8 %conv131.i463.4.3, i8* %arrayidx128.i460.3, align 1
  %scevgep85.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %800, i64 0, i64 1, i64 0
  %811 = bitcast i8* %scevgep85.3 to [5 x [5 x i8]]*
  %arrayidx108.i443.4 = getelementptr inbounds i8, i8* %arraydecay10, i64 4
  %812 = load i8, i8* %arrayidx108.i443.4, align 1
  %arrayidx110.i445.4 = getelementptr inbounds i8, i8* %arraydecay11, i64 4
  %813 = load i8, i8* %arrayidx110.i445.4, align 1
  %call111.i446.4 = call zeroext i8 @mult(i8 zeroext %812, i8 zeroext %813) #2
  %arrayidx113.i448.4 = getelementptr inbounds i8, i8* %arraydecay12, i64 4
  store i8 %call111.i446.4, i8* %arrayidx113.i448.4, align 1
  %arrayidx128.i460.4 = getelementptr inbounds i8, i8* %arraydecay12, i64 4
  %scevgep86.4322 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %811, i64 0, i64 0, i64 0
  %814 = load i8, i8* %scevgep86.4322, align 1
  %conv126.i458.4323 = zext i8 %814 to i32
  %815 = load i8, i8* %arrayidx128.i460.4, align 1
  %conv129.i461.4324 = zext i8 %815 to i32
  %xor130.i462.4325 = xor i32 %conv129.i461.4324, %conv126.i458.4323
  %conv131.i463.4326 = trunc i32 %xor130.i462.4325 to i8
  store i8 %conv131.i463.4326, i8* %arrayidx128.i460.4, align 1
  %scevgep86.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %811, i64 0, i64 0, i64 1
  %816 = load i8, i8* %scevgep86.1.4, align 1
  %conv126.i458.1.4 = zext i8 %816 to i32
  %817 = load i8, i8* %arrayidx128.i460.4, align 1
  %conv129.i461.1.4 = zext i8 %817 to i32
  %xor130.i462.1.4 = xor i32 %conv129.i461.1.4, %conv126.i458.1.4
  %conv131.i463.1.4 = trunc i32 %xor130.i462.1.4 to i8
  store i8 %conv131.i463.1.4, i8* %arrayidx128.i460.4, align 1
  %scevgep86.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %811, i64 0, i64 0, i64 2
  %818 = load i8, i8* %scevgep86.2.4, align 1
  %conv126.i458.2.4 = zext i8 %818 to i32
  %819 = load i8, i8* %arrayidx128.i460.4, align 1
  %conv129.i461.2.4 = zext i8 %819 to i32
  %xor130.i462.2.4 = xor i32 %conv129.i461.2.4, %conv126.i458.2.4
  %conv131.i463.2.4 = trunc i32 %xor130.i462.2.4 to i8
  store i8 %conv131.i463.2.4, i8* %arrayidx128.i460.4, align 1
  %scevgep86.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %811, i64 0, i64 0, i64 3
  %820 = load i8, i8* %scevgep86.3.4, align 1
  %conv126.i458.3.4 = zext i8 %820 to i32
  %821 = load i8, i8* %arrayidx128.i460.4, align 1
  %conv129.i461.3.4 = zext i8 %821 to i32
  %xor130.i462.3.4 = xor i32 %conv129.i461.3.4, %conv126.i458.3.4
  %conv131.i463.3.4 = trunc i32 %xor130.i462.3.4 to i8
  store i8 %conv131.i463.3.4, i8* %arrayidx128.i460.4, align 1
  %call139.i469 = call zeroext i8 @mult(i8 zeroext %call.i316, i8 zeroext %call1.i317) #2
  %conv140.i470 = zext i8 %call139.i469 to i32
  %scevgep76 = getelementptr [5 x i8], [5 x i8]* %e7, i64 0, i64 0
  %822 = load i8, i8* %scevgep76, align 1
  %scevgep76.1 = getelementptr [5 x i8], [5 x i8]* %e7, i64 0, i64 1
  %823 = load i8, i8* %scevgep76.1, align 1
  %conv.i.i172.i477.1 = zext i8 %823 to i32
  %conv1.i.i173.i478.1 = zext i8 %822 to i32
  %xor.i.i174.i479.1 = xor i32 %conv1.i.i173.i478.1, %conv.i.i172.i477.1
  %conv2.i.i175.i480.1 = trunc i32 %xor.i.i174.i479.1 to i8
  %scevgep76.2 = getelementptr [5 x i8], [5 x i8]* %e7, i64 0, i64 2
  %824 = load i8, i8* %scevgep76.2, align 1
  %conv.i.i172.i477.2 = zext i8 %824 to i32
  %conv1.i.i173.i478.2 = zext i8 %conv2.i.i175.i480.1 to i32
  %xor.i.i174.i479.2 = xor i32 %conv1.i.i173.i478.2, %conv.i.i172.i477.2
  %conv2.i.i175.i480.2 = trunc i32 %xor.i.i174.i479.2 to i8
  %scevgep76.3 = getelementptr [5 x i8], [5 x i8]* %e7, i64 0, i64 3
  %825 = load i8, i8* %scevgep76.3, align 1
  %conv.i.i172.i477.3 = zext i8 %825 to i32
  %conv1.i.i173.i478.3 = zext i8 %conv2.i.i175.i480.2 to i32
  %xor.i.i174.i479.3 = xor i32 %conv1.i.i173.i478.3, %conv.i.i172.i477.3
  %conv2.i.i175.i480.3 = trunc i32 %xor.i.i174.i479.3 to i8
  %scevgep76.4 = getelementptr [5 x i8], [5 x i8]* %e7, i64 0, i64 4
  %826 = load i8, i8* %scevgep76.4, align 1
  %conv.i.i172.i477.4 = zext i8 %826 to i32
  %conv1.i.i173.i478.4 = zext i8 %conv2.i.i175.i480.3 to i32
  %xor.i.i174.i479.4 = xor i32 %conv1.i.i173.i478.4, %conv.i.i172.i477.4
  %conv2.i.i175.i480.4 = trunc i32 %xor.i.i174.i479.4 to i8
  %conv142.i483 = zext i8 %conv2.i.i175.i480.4 to i32
  %cmp143.i484 = icmp eq i32 %conv140.i470, %conv142.i483
  call void @assert(i1 zeroext %cmp143.i484) #2
  %scevgep71 = getelementptr [5 x i8], [5 x i8]* %e3, i64 0, i64 0
  %827 = load i8, i8* %scevgep71, align 1
  %call.i861 = call zeroext i8 @mult(i8 zeroext 4, i8 zeroext %827) #2
  %conv.i862 = zext i8 %call.i861 to i32
  %call.i.i863 = call zeroext i8 @mult(i8 zeroext %827, i8 zeroext %827) #2
  %call2.i864 = call zeroext i8 @mult(i8 zeroext 7, i8 zeroext %call.i.i863) #2
  %conv3.i865 = zext i8 %call2.i864 to i32
  %xor.i866 = xor i32 %conv.i862, %conv3.i865
  %call.i.i.i = call zeroext i8 @mult(i8 zeroext %827, i8 zeroext %827) #2
  %call.i3.i.i867 = call zeroext i8 @mult(i8 zeroext %call.i.i.i, i8 zeroext %call.i.i.i) #2
  %call5.i868 = call zeroext i8 @mult(i8 zeroext 13, i8 zeroext %call.i3.i.i867) #2
  %conv6.i869 = zext i8 %call5.i868 to i32
  %xor7.i870 = xor i32 %xor.i866, %conv6.i869
  %call.i.i.i.i871 = call zeroext i8 @mult(i8 zeroext %827, i8 zeroext %827) #2
  %call.i3.i.i.i872 = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i871, i8 zeroext %call.i.i.i.i871) #2
  %call.i.i17.i873 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i872, i8 zeroext %call.i3.i.i.i872) #2
  %call9.i874 = call zeroext i8 @mult(i8 zeroext 10, i8 zeroext %call.i.i17.i873) #2
  %conv10.i875 = zext i8 %call9.i874 to i32
  %xor11.i876 = xor i32 %xor7.i870, %conv10.i875
  %conv12.i877 = trunc i32 %xor11.i876 to i8
  %scevgep72 = getelementptr [5 x i8], [5 x i8]* %l3, i64 0, i64 0
  store i8 %conv12.i877, i8* %scevgep72, align 1
  %scevgep71.1 = getelementptr [5 x i8], [5 x i8]* %e3, i64 0, i64 1
  %828 = load i8, i8* %scevgep71.1, align 1
  %call.i878 = call zeroext i8 @mult(i8 zeroext 4, i8 zeroext %828) #2
  %conv.i879 = zext i8 %call.i878 to i32
  %call.i.i880 = call zeroext i8 @mult(i8 zeroext %828, i8 zeroext %828) #2
  %call2.i881 = call zeroext i8 @mult(i8 zeroext 7, i8 zeroext %call.i.i880) #2
  %conv3.i882 = zext i8 %call2.i881 to i32
  %xor.i883 = xor i32 %conv.i879, %conv3.i882
  %call.i.i.i884 = call zeroext i8 @mult(i8 zeroext %828, i8 zeroext %828) #2
  %call.i3.i.i885 = call zeroext i8 @mult(i8 zeroext %call.i.i.i884, i8 zeroext %call.i.i.i884) #2
  %call5.i886 = call zeroext i8 @mult(i8 zeroext 13, i8 zeroext %call.i3.i.i885) #2
  %conv6.i887 = zext i8 %call5.i886 to i32
  %xor7.i888 = xor i32 %xor.i883, %conv6.i887
  %call.i.i.i.i889 = call zeroext i8 @mult(i8 zeroext %828, i8 zeroext %828) #2
  %call.i3.i.i.i890 = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i889, i8 zeroext %call.i.i.i.i889) #2
  %call.i.i17.i891 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i890, i8 zeroext %call.i3.i.i.i890) #2
  %call9.i892 = call zeroext i8 @mult(i8 zeroext 10, i8 zeroext %call.i.i17.i891) #2
  %conv10.i893 = zext i8 %call9.i892 to i32
  %xor11.i894 = xor i32 %xor7.i888, %conv10.i893
  %conv12.i895 = trunc i32 %xor11.i894 to i8
  %scevgep72.1 = getelementptr [5 x i8], [5 x i8]* %l3, i64 0, i64 1
  store i8 %conv12.i895, i8* %scevgep72.1, align 1
  %scevgep71.2 = getelementptr [5 x i8], [5 x i8]* %e3, i64 0, i64 2
  %829 = load i8, i8* %scevgep71.2, align 1
  %call.i896 = call zeroext i8 @mult(i8 zeroext 4, i8 zeroext %829) #2
  %conv.i897 = zext i8 %call.i896 to i32
  %call.i.i898 = call zeroext i8 @mult(i8 zeroext %829, i8 zeroext %829) #2
  %call2.i899 = call zeroext i8 @mult(i8 zeroext 7, i8 zeroext %call.i.i898) #2
  %conv3.i900 = zext i8 %call2.i899 to i32
  %xor.i901 = xor i32 %conv.i897, %conv3.i900
  %call.i.i.i902 = call zeroext i8 @mult(i8 zeroext %829, i8 zeroext %829) #2
  %call.i3.i.i903 = call zeroext i8 @mult(i8 zeroext %call.i.i.i902, i8 zeroext %call.i.i.i902) #2
  %call5.i904 = call zeroext i8 @mult(i8 zeroext 13, i8 zeroext %call.i3.i.i903) #2
  %conv6.i905 = zext i8 %call5.i904 to i32
  %xor7.i906 = xor i32 %xor.i901, %conv6.i905
  %call.i.i.i.i907 = call zeroext i8 @mult(i8 zeroext %829, i8 zeroext %829) #2
  %call.i3.i.i.i908 = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i907, i8 zeroext %call.i.i.i.i907) #2
  %call.i.i17.i909 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i908, i8 zeroext %call.i3.i.i.i908) #2
  %call9.i910 = call zeroext i8 @mult(i8 zeroext 10, i8 zeroext %call.i.i17.i909) #2
  %conv10.i911 = zext i8 %call9.i910 to i32
  %xor11.i912 = xor i32 %xor7.i906, %conv10.i911
  %conv12.i913 = trunc i32 %xor11.i912 to i8
  %scevgep72.2 = getelementptr [5 x i8], [5 x i8]* %l3, i64 0, i64 2
  store i8 %conv12.i913, i8* %scevgep72.2, align 1
  %scevgep71.3 = getelementptr [5 x i8], [5 x i8]* %e3, i64 0, i64 3
  %830 = load i8, i8* %scevgep71.3, align 1
  %call.i914 = call zeroext i8 @mult(i8 zeroext 4, i8 zeroext %830) #2
  %conv.i915 = zext i8 %call.i914 to i32
  %call.i.i916 = call zeroext i8 @mult(i8 zeroext %830, i8 zeroext %830) #2
  %call2.i917 = call zeroext i8 @mult(i8 zeroext 7, i8 zeroext %call.i.i916) #2
  %conv3.i918 = zext i8 %call2.i917 to i32
  %xor.i919 = xor i32 %conv.i915, %conv3.i918
  %call.i.i.i920 = call zeroext i8 @mult(i8 zeroext %830, i8 zeroext %830) #2
  %call.i3.i.i921 = call zeroext i8 @mult(i8 zeroext %call.i.i.i920, i8 zeroext %call.i.i.i920) #2
  %call5.i922 = call zeroext i8 @mult(i8 zeroext 13, i8 zeroext %call.i3.i.i921) #2
  %conv6.i923 = zext i8 %call5.i922 to i32
  %xor7.i924 = xor i32 %xor.i919, %conv6.i923
  %call.i.i.i.i925 = call zeroext i8 @mult(i8 zeroext %830, i8 zeroext %830) #2
  %call.i3.i.i.i926 = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i925, i8 zeroext %call.i.i.i.i925) #2
  %call.i.i17.i927 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i926, i8 zeroext %call.i3.i.i.i926) #2
  %call9.i928 = call zeroext i8 @mult(i8 zeroext 10, i8 zeroext %call.i.i17.i927) #2
  %conv10.i929 = zext i8 %call9.i928 to i32
  %xor11.i930 = xor i32 %xor7.i924, %conv10.i929
  %conv12.i931 = trunc i32 %xor11.i930 to i8
  %scevgep72.3 = getelementptr [5 x i8], [5 x i8]* %l3, i64 0, i64 3
  store i8 %conv12.i931, i8* %scevgep72.3, align 1
  %scevgep71.4 = getelementptr [5 x i8], [5 x i8]* %e3, i64 0, i64 4
  %831 = load i8, i8* %scevgep71.4, align 1
  %call.i932 = call zeroext i8 @mult(i8 zeroext 4, i8 zeroext %831) #2
  %conv.i933 = zext i8 %call.i932 to i32
  %call.i.i934 = call zeroext i8 @mult(i8 zeroext %831, i8 zeroext %831) #2
  %call2.i935 = call zeroext i8 @mult(i8 zeroext 7, i8 zeroext %call.i.i934) #2
  %conv3.i936 = zext i8 %call2.i935 to i32
  %xor.i937 = xor i32 %conv.i933, %conv3.i936
  %call.i.i.i938 = call zeroext i8 @mult(i8 zeroext %831, i8 zeroext %831) #2
  %call.i3.i.i939 = call zeroext i8 @mult(i8 zeroext %call.i.i.i938, i8 zeroext %call.i.i.i938) #2
  %call5.i940 = call zeroext i8 @mult(i8 zeroext 13, i8 zeroext %call.i3.i.i939) #2
  %conv6.i941 = zext i8 %call5.i940 to i32
  %xor7.i942 = xor i32 %xor.i937, %conv6.i941
  %call.i.i.i.i943 = call zeroext i8 @mult(i8 zeroext %831, i8 zeroext %831) #2
  %call.i3.i.i.i944 = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i943, i8 zeroext %call.i.i.i.i943) #2
  %call.i.i17.i945 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i944, i8 zeroext %call.i3.i.i.i944) #2
  %call9.i946 = call zeroext i8 @mult(i8 zeroext 10, i8 zeroext %call.i.i17.i945) #2
  %conv10.i947 = zext i8 %call9.i946 to i32
  %xor11.i948 = xor i32 %xor7.i942, %conv10.i947
  %conv12.i949 = trunc i32 %xor11.i948 to i8
  %scevgep72.4 = getelementptr [5 x i8], [5 x i8]* %l3, i64 0, i64 4
  store i8 %conv12.i949, i8* %scevgep72.4, align 1
  %scevgep66 = getelementptr [5 x i8], [5 x i8]* %e5, i64 0, i64 0
  %832 = load i8, i8* %scevgep66, align 1
  %call.i950 = call zeroext i8 @mult(i8 zeroext 6, i8 zeroext %832) #2
  %conv.i951 = zext i8 %call.i950 to i32
  %call.i.i952 = call zeroext i8 @mult(i8 zeroext %832, i8 zeroext %832) #2
  %call2.i953 = call zeroext i8 @mult(i8 zeroext 11, i8 zeroext %call.i.i952) #2
  %conv3.i954 = zext i8 %call2.i953 to i32
  %xor.i955 = xor i32 %conv.i951, %conv3.i954
  %conv4.i = trunc i32 %xor.i955 to i8
  %scevgep67 = getelementptr [5 x i8], [5 x i8]* %l5, i64 0, i64 0
  store i8 %conv4.i, i8* %scevgep67, align 1
  %scevgep66.1 = getelementptr [5 x i8], [5 x i8]* %e5, i64 0, i64 1
  %833 = load i8, i8* %scevgep66.1, align 1
  %call.i956 = call zeroext i8 @mult(i8 zeroext 6, i8 zeroext %833) #2
  %conv.i957 = zext i8 %call.i956 to i32
  %call.i.i958 = call zeroext i8 @mult(i8 zeroext %833, i8 zeroext %833) #2
  %call2.i959 = call zeroext i8 @mult(i8 zeroext 11, i8 zeroext %call.i.i958) #2
  %conv3.i960 = zext i8 %call2.i959 to i32
  %xor.i961 = xor i32 %conv.i957, %conv3.i960
  %conv4.i962 = trunc i32 %xor.i961 to i8
  %scevgep67.1 = getelementptr [5 x i8], [5 x i8]* %l5, i64 0, i64 1
  store i8 %conv4.i962, i8* %scevgep67.1, align 1
  %scevgep66.2 = getelementptr [5 x i8], [5 x i8]* %e5, i64 0, i64 2
  %834 = load i8, i8* %scevgep66.2, align 1
  %call.i963 = call zeroext i8 @mult(i8 zeroext 6, i8 zeroext %834) #2
  %conv.i964 = zext i8 %call.i963 to i32
  %call.i.i965 = call zeroext i8 @mult(i8 zeroext %834, i8 zeroext %834) #2
  %call2.i966 = call zeroext i8 @mult(i8 zeroext 11, i8 zeroext %call.i.i965) #2
  %conv3.i967 = zext i8 %call2.i966 to i32
  %xor.i968 = xor i32 %conv.i964, %conv3.i967
  %conv4.i969 = trunc i32 %xor.i968 to i8
  %scevgep67.2 = getelementptr [5 x i8], [5 x i8]* %l5, i64 0, i64 2
  store i8 %conv4.i969, i8* %scevgep67.2, align 1
  %scevgep66.3 = getelementptr [5 x i8], [5 x i8]* %e5, i64 0, i64 3
  %835 = load i8, i8* %scevgep66.3, align 1
  %call.i970 = call zeroext i8 @mult(i8 zeroext 6, i8 zeroext %835) #2
  %conv.i971 = zext i8 %call.i970 to i32
  %call.i.i972 = call zeroext i8 @mult(i8 zeroext %835, i8 zeroext %835) #2
  %call2.i973 = call zeroext i8 @mult(i8 zeroext 11, i8 zeroext %call.i.i972) #2
  %conv3.i974 = zext i8 %call2.i973 to i32
  %xor.i975 = xor i32 %conv.i971, %conv3.i974
  %conv4.i976 = trunc i32 %xor.i975 to i8
  %scevgep67.3 = getelementptr [5 x i8], [5 x i8]* %l5, i64 0, i64 3
  store i8 %conv4.i976, i8* %scevgep67.3, align 1
  %scevgep66.4 = getelementptr [5 x i8], [5 x i8]* %e5, i64 0, i64 4
  %836 = load i8, i8* %scevgep66.4, align 1
  %call.i977 = call zeroext i8 @mult(i8 zeroext 6, i8 zeroext %836) #2
  %conv.i978 = zext i8 %call.i977 to i32
  %call.i.i979 = call zeroext i8 @mult(i8 zeroext %836, i8 zeroext %836) #2
  %call2.i980 = call zeroext i8 @mult(i8 zeroext 11, i8 zeroext %call.i.i979) #2
  %conv3.i981 = zext i8 %call2.i980 to i32
  %xor.i982 = xor i32 %conv.i978, %conv3.i981
  %conv4.i983 = trunc i32 %xor.i982 to i8
  %scevgep67.4 = getelementptr [5 x i8], [5 x i8]* %l5, i64 0, i64 4
  store i8 %conv4.i983, i8* %scevgep67.4, align 1
  %scevgep61 = getelementptr [5 x i8], [5 x i8]* %e7, i64 0, i64 0
  %837 = load i8, i8* %scevgep61, align 1
  %call.i984 = call zeroext i8 @mult(i8 zeroext 8, i8 zeroext %837) #2
  %conv.i985 = zext i8 %call.i984 to i32
  %call.i.i986 = call zeroext i8 @mult(i8 zeroext %837, i8 zeroext %837) #2
  %call2.i987 = call zeroext i8 @mult(i8 zeroext 15, i8 zeroext %call.i.i986) #2
  %conv3.i988 = zext i8 %call2.i987 to i32
  %xor.i989 = xor i32 %conv.i985, %conv3.i988
  %call.i.i.i990 = call zeroext i8 @mult(i8 zeroext %837, i8 zeroext %837) #2
  %call.i3.i.i991 = call zeroext i8 @mult(i8 zeroext %call.i.i.i990, i8 zeroext %call.i.i.i990) #2
  %call5.i992 = call zeroext i8 @mult(i8 zeroext 14, i8 zeroext %call.i3.i.i991) #2
  %conv6.i993 = zext i8 %call5.i992 to i32
  %xor7.i994 = xor i32 %xor.i989, %conv6.i993
  %call.i.i.i.i995 = call zeroext i8 @mult(i8 zeroext %837, i8 zeroext %837) #2
  %call.i3.i.i.i996 = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i995, i8 zeroext %call.i.i.i.i995) #2
  %call.i.i17.i997 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i996, i8 zeroext %call.i3.i.i.i996) #2
  %call9.i998 = call zeroext i8 @mult(i8 zeroext 12, i8 zeroext %call.i.i17.i997) #2
  %conv10.i999 = zext i8 %call9.i998 to i32
  %xor11.i1000 = xor i32 %xor7.i994, %conv10.i999
  %conv12.i1001 = trunc i32 %xor11.i1000 to i8
  %scevgep62 = getelementptr [5 x i8], [5 x i8]* %l7, i64 0, i64 0
  store i8 %conv12.i1001, i8* %scevgep62, align 1
  %scevgep61.1 = getelementptr [5 x i8], [5 x i8]* %e7, i64 0, i64 1
  %838 = load i8, i8* %scevgep61.1, align 1
  %call.i1002 = call zeroext i8 @mult(i8 zeroext 8, i8 zeroext %838) #2
  %conv.i1003 = zext i8 %call.i1002 to i32
  %call.i.i1004 = call zeroext i8 @mult(i8 zeroext %838, i8 zeroext %838) #2
  %call2.i1005 = call zeroext i8 @mult(i8 zeroext 15, i8 zeroext %call.i.i1004) #2
  %conv3.i1006 = zext i8 %call2.i1005 to i32
  %xor.i1007 = xor i32 %conv.i1003, %conv3.i1006
  %call.i.i.i1008 = call zeroext i8 @mult(i8 zeroext %838, i8 zeroext %838) #2
  %call.i3.i.i1009 = call zeroext i8 @mult(i8 zeroext %call.i.i.i1008, i8 zeroext %call.i.i.i1008) #2
  %call5.i1010 = call zeroext i8 @mult(i8 zeroext 14, i8 zeroext %call.i3.i.i1009) #2
  %conv6.i1011 = zext i8 %call5.i1010 to i32
  %xor7.i1012 = xor i32 %xor.i1007, %conv6.i1011
  %call.i.i.i.i1013 = call zeroext i8 @mult(i8 zeroext %838, i8 zeroext %838) #2
  %call.i3.i.i.i1014 = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i1013, i8 zeroext %call.i.i.i.i1013) #2
  %call.i.i17.i1015 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i1014, i8 zeroext %call.i3.i.i.i1014) #2
  %call9.i1016 = call zeroext i8 @mult(i8 zeroext 12, i8 zeroext %call.i.i17.i1015) #2
  %conv10.i1017 = zext i8 %call9.i1016 to i32
  %xor11.i1018 = xor i32 %xor7.i1012, %conv10.i1017
  %conv12.i1019 = trunc i32 %xor11.i1018 to i8
  %scevgep62.1 = getelementptr [5 x i8], [5 x i8]* %l7, i64 0, i64 1
  store i8 %conv12.i1019, i8* %scevgep62.1, align 1
  %scevgep61.2 = getelementptr [5 x i8], [5 x i8]* %e7, i64 0, i64 2
  %839 = load i8, i8* %scevgep61.2, align 1
  %call.i1020 = call zeroext i8 @mult(i8 zeroext 8, i8 zeroext %839) #2
  %conv.i1021 = zext i8 %call.i1020 to i32
  %call.i.i1022 = call zeroext i8 @mult(i8 zeroext %839, i8 zeroext %839) #2
  %call2.i1023 = call zeroext i8 @mult(i8 zeroext 15, i8 zeroext %call.i.i1022) #2
  %conv3.i1024 = zext i8 %call2.i1023 to i32
  %xor.i1025 = xor i32 %conv.i1021, %conv3.i1024
  %call.i.i.i1026 = call zeroext i8 @mult(i8 zeroext %839, i8 zeroext %839) #2
  %call.i3.i.i1027 = call zeroext i8 @mult(i8 zeroext %call.i.i.i1026, i8 zeroext %call.i.i.i1026) #2
  %call5.i1028 = call zeroext i8 @mult(i8 zeroext 14, i8 zeroext %call.i3.i.i1027) #2
  %conv6.i1029 = zext i8 %call5.i1028 to i32
  %xor7.i1030 = xor i32 %xor.i1025, %conv6.i1029
  %call.i.i.i.i1031 = call zeroext i8 @mult(i8 zeroext %839, i8 zeroext %839) #2
  %call.i3.i.i.i1032 = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i1031, i8 zeroext %call.i.i.i.i1031) #2
  %call.i.i17.i1033 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i1032, i8 zeroext %call.i3.i.i.i1032) #2
  %call9.i1034 = call zeroext i8 @mult(i8 zeroext 12, i8 zeroext %call.i.i17.i1033) #2
  %conv10.i1035 = zext i8 %call9.i1034 to i32
  %xor11.i1036 = xor i32 %xor7.i1030, %conv10.i1035
  %conv12.i1037 = trunc i32 %xor11.i1036 to i8
  %scevgep62.2 = getelementptr [5 x i8], [5 x i8]* %l7, i64 0, i64 2
  store i8 %conv12.i1037, i8* %scevgep62.2, align 1
  %scevgep61.3 = getelementptr [5 x i8], [5 x i8]* %e7, i64 0, i64 3
  %840 = load i8, i8* %scevgep61.3, align 1
  %call.i1038 = call zeroext i8 @mult(i8 zeroext 8, i8 zeroext %840) #2
  %conv.i1039 = zext i8 %call.i1038 to i32
  %call.i.i1040 = call zeroext i8 @mult(i8 zeroext %840, i8 zeroext %840) #2
  %call2.i1041 = call zeroext i8 @mult(i8 zeroext 15, i8 zeroext %call.i.i1040) #2
  %conv3.i1042 = zext i8 %call2.i1041 to i32
  %xor.i1043 = xor i32 %conv.i1039, %conv3.i1042
  %call.i.i.i1044 = call zeroext i8 @mult(i8 zeroext %840, i8 zeroext %840) #2
  %call.i3.i.i1045 = call zeroext i8 @mult(i8 zeroext %call.i.i.i1044, i8 zeroext %call.i.i.i1044) #2
  %call5.i1046 = call zeroext i8 @mult(i8 zeroext 14, i8 zeroext %call.i3.i.i1045) #2
  %conv6.i1047 = zext i8 %call5.i1046 to i32
  %xor7.i1048 = xor i32 %xor.i1043, %conv6.i1047
  %call.i.i.i.i1049 = call zeroext i8 @mult(i8 zeroext %840, i8 zeroext %840) #2
  %call.i3.i.i.i1050 = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i1049, i8 zeroext %call.i.i.i.i1049) #2
  %call.i.i17.i1051 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i1050, i8 zeroext %call.i3.i.i.i1050) #2
  %call9.i1052 = call zeroext i8 @mult(i8 zeroext 12, i8 zeroext %call.i.i17.i1051) #2
  %conv10.i1053 = zext i8 %call9.i1052 to i32
  %xor11.i1054 = xor i32 %xor7.i1048, %conv10.i1053
  %conv12.i1055 = trunc i32 %xor11.i1054 to i8
  %scevgep62.3 = getelementptr [5 x i8], [5 x i8]* %l7, i64 0, i64 3
  store i8 %conv12.i1055, i8* %scevgep62.3, align 1
  %scevgep61.4 = getelementptr [5 x i8], [5 x i8]* %e7, i64 0, i64 4
  %841 = load i8, i8* %scevgep61.4, align 1
  %call.i752 = call zeroext i8 @mult(i8 zeroext 8, i8 zeroext %841) #2
  %conv.i753 = zext i8 %call.i752 to i32
  %call.i.i = call zeroext i8 @mult(i8 zeroext %841, i8 zeroext %841) #2
  %call2.i = call zeroext i8 @mult(i8 zeroext 15, i8 zeroext %call.i.i) #2
  %conv3.i754 = zext i8 %call2.i to i32
  %xor.i = xor i32 %conv.i753, %conv3.i754
  %call.i.i.i755 = call zeroext i8 @mult(i8 zeroext %841, i8 zeroext %841) #2
  %call.i3.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i755, i8 zeroext %call.i.i.i755) #2
  %call5.i = call zeroext i8 @mult(i8 zeroext 14, i8 zeroext %call.i3.i.i) #2
  %conv6.i = zext i8 %call5.i to i32
  %xor7.i = xor i32 %xor.i, %conv6.i
  %call.i.i.i.i756 = call zeroext i8 @mult(i8 zeroext %841, i8 zeroext %841) #2
  %call.i3.i.i.i757 = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i756, i8 zeroext %call.i.i.i.i756) #2
  %call.i.i17.i = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i757, i8 zeroext %call.i3.i.i.i757) #2
  %call9.i = call zeroext i8 @mult(i8 zeroext 12, i8 zeroext %call.i.i17.i) #2
  %conv10.i = zext i8 %call9.i to i32
  %xor11.i = xor i32 %xor7.i, %conv10.i
  %conv12.i = trunc i32 %xor11.i to i8
  %scevgep62.4 = getelementptr [5 x i8], [5 x i8]* %l7, i64 0, i64 4
  store i8 %conv12.i, i8* %scevgep62.4, align 1
  %scevgep53 = getelementptr [5 x i8], [5 x i8]* %l1, i64 0, i64 0
  %842 = load i8, i8* %scevgep53, align 1
  %conv21 = zext i8 %842 to i32
  %scevgep54 = getelementptr [5 x i8], [5 x i8]* %l3, i64 0, i64 0
  %843 = load i8, i8* %scevgep54, align 1
  %conv24 = zext i8 %843 to i32
  %xor = xor i32 %conv21, %conv24
  %scevgep55 = getelementptr [5 x i8], [5 x i8]* %l5, i64 0, i64 0
  %844 = load i8, i8* %scevgep55, align 1
  %conv27 = zext i8 %844 to i32
  %xor28 = xor i32 %xor, %conv27
  %scevgep56 = getelementptr [5 x i8], [5 x i8]* %l7, i64 0, i64 0
  %845 = load i8, i8* %scevgep56, align 1
  %conv31 = zext i8 %845 to i32
  %xor32 = xor i32 %xor28, %conv31
  %conv33 = trunc i32 %xor32 to i8
  store i8 %conv33, i8* %y, align 1
  %scevgep53.1 = getelementptr [5 x i8], [5 x i8]* %l1, i64 0, i64 1
  %846 = load i8, i8* %scevgep53.1, align 1
  %conv21.1 = zext i8 %846 to i32
  %scevgep54.1 = getelementptr [5 x i8], [5 x i8]* %l3, i64 0, i64 1
  %847 = load i8, i8* %scevgep54.1, align 1
  %conv24.1 = zext i8 %847 to i32
  %xor.1 = xor i32 %conv21.1, %conv24.1
  %scevgep55.1 = getelementptr [5 x i8], [5 x i8]* %l5, i64 0, i64 1
  %848 = load i8, i8* %scevgep55.1, align 1
  %conv27.1 = zext i8 %848 to i32
  %xor28.1 = xor i32 %xor.1, %conv27.1
  %scevgep56.1 = getelementptr [5 x i8], [5 x i8]* %l7, i64 0, i64 1
  %849 = load i8, i8* %scevgep56.1, align 1
  %conv31.1 = zext i8 %849 to i32
  %xor32.1 = xor i32 %xor28.1, %conv31.1
  %conv33.1 = trunc i32 %xor32.1 to i8
  %scevgep57.1 = getelementptr i8, i8* %y, i64 1
  store i8 %conv33.1, i8* %scevgep57.1, align 1
  %scevgep53.2 = getelementptr [5 x i8], [5 x i8]* %l1, i64 0, i64 2
  %850 = load i8, i8* %scevgep53.2, align 1
  %conv21.2 = zext i8 %850 to i32
  %scevgep54.2 = getelementptr [5 x i8], [5 x i8]* %l3, i64 0, i64 2
  %851 = load i8, i8* %scevgep54.2, align 1
  %conv24.2 = zext i8 %851 to i32
  %xor.2 = xor i32 %conv21.2, %conv24.2
  %scevgep55.2 = getelementptr [5 x i8], [5 x i8]* %l5, i64 0, i64 2
  %852 = load i8, i8* %scevgep55.2, align 1
  %conv27.2 = zext i8 %852 to i32
  %xor28.2 = xor i32 %xor.2, %conv27.2
  %scevgep56.2 = getelementptr [5 x i8], [5 x i8]* %l7, i64 0, i64 2
  %853 = load i8, i8* %scevgep56.2, align 1
  %conv31.2 = zext i8 %853 to i32
  %xor32.2 = xor i32 %xor28.2, %conv31.2
  %conv33.2 = trunc i32 %xor32.2 to i8
  %scevgep57.2 = getelementptr i8, i8* %y, i64 2
  store i8 %conv33.2, i8* %scevgep57.2, align 1
  %scevgep53.3 = getelementptr [5 x i8], [5 x i8]* %l1, i64 0, i64 3
  %854 = load i8, i8* %scevgep53.3, align 1
  %conv21.3 = zext i8 %854 to i32
  %scevgep54.3 = getelementptr [5 x i8], [5 x i8]* %l3, i64 0, i64 3
  %855 = load i8, i8* %scevgep54.3, align 1
  %conv24.3 = zext i8 %855 to i32
  %xor.3 = xor i32 %conv21.3, %conv24.3
  %scevgep55.3 = getelementptr [5 x i8], [5 x i8]* %l5, i64 0, i64 3
  %856 = load i8, i8* %scevgep55.3, align 1
  %conv27.3 = zext i8 %856 to i32
  %xor28.3 = xor i32 %xor.3, %conv27.3
  %scevgep56.3 = getelementptr [5 x i8], [5 x i8]* %l7, i64 0, i64 3
  %857 = load i8, i8* %scevgep56.3, align 1
  %conv31.3 = zext i8 %857 to i32
  %xor32.3 = xor i32 %xor28.3, %conv31.3
  %conv33.3 = trunc i32 %xor32.3 to i8
  %scevgep57.3 = getelementptr i8, i8* %y, i64 3
  store i8 %conv33.3, i8* %scevgep57.3, align 1
  %scevgep53.4 = getelementptr [5 x i8], [5 x i8]* %l1, i64 0, i64 4
  %858 = load i8, i8* %scevgep53.4, align 1
  %conv21.4 = zext i8 %858 to i32
  %scevgep54.4 = getelementptr [5 x i8], [5 x i8]* %l3, i64 0, i64 4
  %859 = load i8, i8* %scevgep54.4, align 1
  %conv24.4 = zext i8 %859 to i32
  %xor.4 = xor i32 %conv21.4, %conv24.4
  %scevgep55.4 = getelementptr [5 x i8], [5 x i8]* %l5, i64 0, i64 4
  %860 = load i8, i8* %scevgep55.4, align 1
  %conv27.4 = zext i8 %860 to i32
  %xor28.4 = xor i32 %xor.4, %conv27.4
  %scevgep56.4 = getelementptr [5 x i8], [5 x i8]* %l7, i64 0, i64 4
  %861 = load i8, i8* %scevgep56.4, align 1
  %conv31.4 = zext i8 %861 to i32
  %xor32.4 = xor i32 %xor28.4, %conv31.4
  %conv33.4 = trunc i32 %xor32.4 to i8
  %scevgep57.4 = getelementptr i8, i8* %y, i64 4
  store i8 %conv33.4, i8* %scevgep57.4, align 1
  %862 = load i8, i8* %y, align 1
  %conv37 = zext i8 %862 to i32
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
  %863 = load i8, i8* %y, align 1
  %scevgep.1 = getelementptr i8, i8* %y, i64 1
  %864 = load i8, i8* %scevgep.1, align 1
  %conv.i.i549.1 = zext i8 %864 to i32
  %conv1.i.i550.1 = zext i8 %863 to i32
  %xor.i.i551.1 = xor i32 %conv1.i.i550.1, %conv.i.i549.1
  %conv2.i.i552.1 = trunc i32 %xor.i.i551.1 to i8
  %scevgep.2 = getelementptr i8, i8* %y, i64 2
  %865 = load i8, i8* %scevgep.2, align 1
  %conv.i.i549.2 = zext i8 %865 to i32
  %conv1.i.i550.2 = zext i8 %conv2.i.i552.1 to i32
  %xor.i.i551.2 = xor i32 %conv1.i.i550.2, %conv.i.i549.2
  %conv2.i.i552.2 = trunc i32 %xor.i.i551.2 to i8
  %scevgep.3 = getelementptr i8, i8* %y, i64 3
  %866 = load i8, i8* %scevgep.3, align 1
  %conv.i.i549.3 = zext i8 %866 to i32
  %conv1.i.i550.3 = zext i8 %conv2.i.i552.2 to i32
  %xor.i.i551.3 = xor i32 %conv1.i.i550.3, %conv.i.i549.3
  %conv2.i.i552.3 = trunc i32 %xor.i.i551.3 to i8
  %scevgep.4 = getelementptr i8, i8* %y, i64 4
  %867 = load i8, i8* %scevgep.4, align 1
  %conv.i.i549.4 = zext i8 %867 to i32
  %conv1.i.i550.4 = zext i8 %conv2.i.i552.3 to i32
  %xor.i.i551.4 = xor i32 %conv1.i.i550.4, %conv.i.i549.4
  %conv2.i.i552.4 = trunc i32 %xor.i.i551.4 to i8
  %conv43 = zext i8 %conv2.i.i552.4 to i32
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
