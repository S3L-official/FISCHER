; ModuleID = '../examples/cassiers-tifs2020-sbox-noaffine.inline-4.ll'
source_filename = "../examples/cassiers-tifs2020-sbox-noaffine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 4, align 4
@.str = private unnamed_addr constant [7 x i8] c"verify\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [46 x i8] c"../examples/cassiers-tifs2020-sbox-noaffine.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [7 x i8] c"affine\00", section "llvm.metadata"
@llvm.global.annotations = appending global [9 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*, i8*)* @sec_mult to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0), i32 3 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*)* @refresh_masks to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0), i32 40 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @square to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0), i32 56 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp4 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0), i32 58 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp16 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0), i32 60 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*)* @sec_exp254 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0), i32 74 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*)* @sec_expd to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0), i32 104 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @af to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0), i32 127 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*)* @sec_sbox to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0), i32 133 }], section "llvm.metadata"

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
define dso_local void @refresh_masks(i8* %x, i8* %y) #0 {
entry:
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %scevgep18.1 = getelementptr i8, i8* %x, i64 1
  %1 = load i8, i8* %scevgep18.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep18.2 = getelementptr i8, i8* %x, i64 2
  %2 = load i8, i8* %scevgep18.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %scevgep18.3 = getelementptr i8, i8* %x, i64 3
  %3 = load i8, i8* %scevgep18.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %scevgep18.4 = getelementptr i8, i8* %x, i64 4
  %4 = load i8, i8* %scevgep18.4, align 1
  %conv.i.i.4 = zext i8 %4 to i32
  %conv1.i.i.4 = zext i8 %conv2.i.i.3 to i32
  %xor.i.i.4 = xor i32 %conv1.i.i.4, %conv.i.i.4
  %conv2.i.i.4 = trunc i32 %xor.i.i.4 to i8
  %conv2 = zext i8 %conv2.i.i.4 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %5 = load i8, i8* %x, align 1
  store i8 %5, i8* %y, align 1
  %scevgep13.1 = getelementptr i8, i8* %x, i64 1
  %6 = load i8, i8* %scevgep13.1, align 1
  %scevgep14.1 = getelementptr i8, i8* %y, i64 1
  store i8 %6, i8* %scevgep14.1, align 1
  %scevgep13.2 = getelementptr i8, i8* %x, i64 2
  %7 = load i8, i8* %scevgep13.2, align 1
  %scevgep14.2 = getelementptr i8, i8* %y, i64 2
  store i8 %7, i8* %scevgep14.2, align 1
  %scevgep13.3 = getelementptr i8, i8* %x, i64 3
  %8 = load i8, i8* %scevgep13.3, align 1
  %scevgep14.3 = getelementptr i8, i8* %y, i64 3
  store i8 %8, i8* %scevgep14.3, align 1
  %scevgep13.4 = getelementptr i8, i8* %x, i64 4
  %9 = load i8, i8* %scevgep13.4, align 1
  %scevgep14.4 = getelementptr i8, i8* %y, i64 4
  store i8 %9, i8* %scevgep14.4, align 1
  %call7 = call zeroext i8 (...) @rand()
  %conv8 = zext i8 %call7 to i32
  %10 = load i8, i8* %y, align 1
  %conv9 = zext i8 %10 to i32
  %xor = xor i32 %conv9, %conv8
  %conv10 = trunc i32 %xor to i8
  store i8 %conv10, i8* %y, align 1
  %conv11 = zext i8 %call7 to i32
  %scevgep9 = getelementptr i8, i8* %y, i64 1
  %11 = load i8, i8* %scevgep9, align 1
  %conv13 = zext i8 %11 to i32
  %xor14 = xor i32 %conv13, %conv11
  %conv15 = trunc i32 %xor14 to i8
  store i8 %conv15, i8* %scevgep9, align 1
  %call7.1 = call zeroext i8 (...) @rand()
  %conv8.1 = zext i8 %call7.1 to i32
  %12 = load i8, i8* %y, align 1
  %conv9.1 = zext i8 %12 to i32
  %xor.1 = xor i32 %conv9.1, %conv8.1
  %conv10.1 = trunc i32 %xor.1 to i8
  store i8 %conv10.1, i8* %y, align 1
  %conv11.1 = zext i8 %call7.1 to i32
  %scevgep9.1 = getelementptr i8, i8* %y, i64 2
  %13 = load i8, i8* %scevgep9.1, align 1
  %conv13.1 = zext i8 %13 to i32
  %xor14.1 = xor i32 %conv13.1, %conv11.1
  %conv15.1 = trunc i32 %xor14.1 to i8
  store i8 %conv15.1, i8* %scevgep9.1, align 1
  %call7.2 = call zeroext i8 (...) @rand()
  %conv8.2 = zext i8 %call7.2 to i32
  %14 = load i8, i8* %y, align 1
  %conv9.2 = zext i8 %14 to i32
  %xor.2 = xor i32 %conv9.2, %conv8.2
  %conv10.2 = trunc i32 %xor.2 to i8
  store i8 %conv10.2, i8* %y, align 1
  %conv11.2 = zext i8 %call7.2 to i32
  %scevgep9.2 = getelementptr i8, i8* %y, i64 3
  %15 = load i8, i8* %scevgep9.2, align 1
  %conv13.2 = zext i8 %15 to i32
  %xor14.2 = xor i32 %conv13.2, %conv11.2
  %conv15.2 = trunc i32 %xor14.2 to i8
  store i8 %conv15.2, i8* %scevgep9.2, align 1
  %call7.3 = call zeroext i8 (...) @rand()
  %conv8.3 = zext i8 %call7.3 to i32
  %16 = load i8, i8* %y, align 1
  %conv9.3 = zext i8 %16 to i32
  %xor.3 = xor i32 %conv9.3, %conv8.3
  %conv10.3 = trunc i32 %xor.3 to i8
  store i8 %conv10.3, i8* %y, align 1
  %conv11.3 = zext i8 %call7.3 to i32
  %scevgep9.3 = getelementptr i8, i8* %y, i64 4
  %17 = load i8, i8* %scevgep9.3, align 1
  %conv13.3 = zext i8 %17 to i32
  %xor14.3 = xor i32 %conv13.3, %conv11.3
  %conv15.3 = trunc i32 %xor14.3 to i8
  store i8 %conv15.3, i8* %scevgep9.3, align 1
  %conv16 = zext i8 %call to i32
  %18 = load i8, i8* %y, align 1
  %scevgep.1 = getelementptr i8, i8* %y, i64 1
  %19 = load i8, i8* %scevgep.1, align 1
  %conv.i.i31.1 = zext i8 %19 to i32
  %conv1.i.i32.1 = zext i8 %18 to i32
  %xor.i.i33.1 = xor i32 %conv1.i.i32.1, %conv.i.i31.1
  %conv2.i.i34.1 = trunc i32 %xor.i.i33.1 to i8
  %scevgep.2 = getelementptr i8, i8* %y, i64 2
  %20 = load i8, i8* %scevgep.2, align 1
  %conv.i.i31.2 = zext i8 %20 to i32
  %conv1.i.i32.2 = zext i8 %conv2.i.i34.1 to i32
  %xor.i.i33.2 = xor i32 %conv1.i.i32.2, %conv.i.i31.2
  %conv2.i.i34.2 = trunc i32 %xor.i.i33.2 to i8
  %scevgep.3 = getelementptr i8, i8* %y, i64 3
  %21 = load i8, i8* %scevgep.3, align 1
  %conv.i.i31.3 = zext i8 %21 to i32
  %conv1.i.i32.3 = zext i8 %conv2.i.i34.2 to i32
  %xor.i.i33.3 = xor i32 %conv1.i.i32.3, %conv.i.i31.3
  %conv2.i.i34.3 = trunc i32 %xor.i.i33.3 to i8
  %scevgep.4 = getelementptr i8, i8* %y, i64 4
  %22 = load i8, i8* %scevgep.4, align 1
  %conv.i.i31.4 = zext i8 %22 to i32
  %conv1.i.i32.4 = zext i8 %conv2.i.i34.3 to i32
  %xor.i.i33.4 = xor i32 %conv1.i.i32.4, %conv.i.i31.4
  %conv2.i.i34.4 = trunc i32 %xor.i.i33.4 to i8
  %conv18 = zext i8 %conv2.i.i34.4 to i32
  %cmp19 = icmp eq i32 %conv16, %conv18
  call void @assert(i1 zeroext %cmp19)
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @square(i8 zeroext %x) #0 {
entry:
  %call = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x)
  ret i8 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @exp4(i8 zeroext %x) #0 {
entry:
  %call.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #3
  %call.i3 = call zeroext i8 @mult(i8 zeroext %call.i, i8 zeroext %call.i) #3
  ret i8 %call.i3
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @exp16(i8 zeroext %x) #0 {
entry:
  %call.i.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #3
  %call.i3.i = call zeroext i8 @mult(i8 zeroext %call.i.i, i8 zeroext %call.i.i) #3
  %call.i.i5 = call zeroext i8 @mult(i8 zeroext %call.i3.i, i8 zeroext %call.i3.i) #3
  %call.i3.i6 = call zeroext i8 @mult(i8 zeroext %call.i.i5, i8 zeroext %call.i.i5) #3
  ret i8 %call.i3.i6
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @exp254(i8 zeroext %x) #0 {
entry:
  %call.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #3
  %call1 = call zeroext i8 @mult(i8 zeroext %call.i, i8 zeroext %x)
  %call.i.i = call zeroext i8 @mult(i8 zeroext %call1, i8 zeroext %call1) #3
  %call.i3.i = call zeroext i8 @mult(i8 zeroext %call.i.i, i8 zeroext %call.i.i) #3
  %call3 = call zeroext i8 @mult(i8 zeroext %call1, i8 zeroext %call.i3.i)
  %call.i.i.i = call zeroext i8 @mult(i8 zeroext %call3, i8 zeroext %call3) #3
  %call.i3.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i, i8 zeroext %call.i.i.i) #3
  %call.i.i5.i = call zeroext i8 @mult(i8 zeroext %call.i3.i.i, i8 zeroext %call.i3.i.i) #3
  %call.i3.i6.i = call zeroext i8 @mult(i8 zeroext %call.i.i5.i, i8 zeroext %call.i.i5.i) #3
  %call5 = call zeroext i8 @mult(i8 zeroext %call.i3.i6.i, i8 zeroext %call.i3.i)
  %call6 = call zeroext i8 @mult(i8 zeroext %call5, i8 zeroext %call.i)
  ret i8 %call6
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_exp254(i8* %x, i8* %y) #0 {
entry:
  %r.i = alloca [5 x [5 x i8]], align 16
  %s.i = alloca [5 x [5 x i8]], align 16
  %p0.i = alloca [5 x [5 x i8]], align 16
  %p1.i = alloca [5 x [5 x i8]], align 16
  %z.i = alloca [5 x [5 x i8]], align 16
  %z = alloca [5 x i8], align 1
  %zr = alloca [5 x i8], align 1
  %w = alloca [5 x i8], align 1
  %wr = alloca [5 x i8], align 1
  %u = alloca [5 x i8], align 1
  %v = alloca [5 x i8], align 1
  %v16 = alloca [5 x i8], align 1
  %m = alloca [5 x i8], align 1
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %scevgep390.1 = getelementptr i8, i8* %x, i64 1
  %1 = load i8, i8* %scevgep390.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep390.2 = getelementptr i8, i8* %x, i64 2
  %2 = load i8, i8* %scevgep390.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %scevgep390.3 = getelementptr i8, i8* %x, i64 3
  %3 = load i8, i8* %scevgep390.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %scevgep390.4 = getelementptr i8, i8* %x, i64 4
  %4 = load i8, i8* %scevgep390.4, align 1
  %conv.i.i.4 = zext i8 %4 to i32
  %conv1.i.i.4 = zext i8 %conv2.i.i.3 to i32
  %xor.i.i.4 = xor i32 %conv1.i.i.4, %conv.i.i.4
  %conv2.i.i.4 = trunc i32 %xor.i.i.4 to i8
  %conv2 = zext i8 %conv2.i.i.4 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %5 = load i8, i8* %x, align 1
  %call.i1006 = call zeroext i8 @mult(i8 zeroext %5, i8 zeroext %5) #3
  %scevgep386 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 0
  store i8 %call.i1006, i8* %scevgep386, align 1
  %scevgep385.1 = getelementptr i8, i8* %x, i64 1
  %6 = load i8, i8* %scevgep385.1, align 1
  %call.i = call zeroext i8 @mult(i8 zeroext %6, i8 zeroext %6) #3
  %scevgep386.1 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 1
  store i8 %call.i, i8* %scevgep386.1, align 1
  %scevgep385.2 = getelementptr i8, i8* %x, i64 2
  %7 = load i8, i8* %scevgep385.2, align 1
  %call.i1007 = call zeroext i8 @mult(i8 zeroext %7, i8 zeroext %7) #3
  %scevgep386.2 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 2
  store i8 %call.i1007, i8* %scevgep386.2, align 1
  %scevgep385.3 = getelementptr i8, i8* %x, i64 3
  %8 = load i8, i8* %scevgep385.3, align 1
  %call.i1008 = call zeroext i8 @mult(i8 zeroext %8, i8 zeroext %8) #3
  %scevgep386.3 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 3
  store i8 %call.i1008, i8* %scevgep386.3, align 1
  %scevgep385.4 = getelementptr i8, i8* %x, i64 4
  %9 = load i8, i8* %scevgep385.4, align 1
  %call.i1009 = call zeroext i8 @mult(i8 zeroext %9, i8 zeroext %9) #3
  %scevgep386.4 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 4
  store i8 %call.i1009, i8* %scevgep386.4, align 1
  %arraydecay5 = getelementptr inbounds [5 x i8], [5 x i8]* %zr, i64 0, i64 0
  %call.i32 = call zeroext i8 (...) @rand() #3
  %conv.i = zext i8 %call.i32 to i32
  %scevgep381 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 0
  %10 = load i8, i8* %scevgep381, align 1
  %scevgep381.1 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 1
  %11 = load i8, i8* %scevgep381.1, align 1
  %conv.i.i.i.1 = zext i8 %11 to i32
  %conv1.i.i.i.1 = zext i8 %10 to i32
  %xor.i.i.i.1 = xor i32 %conv1.i.i.i.1, %conv.i.i.i.1
  %conv2.i.i.i.1 = trunc i32 %xor.i.i.i.1 to i8
  %scevgep381.2 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 2
  %12 = load i8, i8* %scevgep381.2, align 1
  %conv.i.i.i.2 = zext i8 %12 to i32
  %conv1.i.i.i.2 = zext i8 %conv2.i.i.i.1 to i32
  %xor.i.i.i.2 = xor i32 %conv1.i.i.i.2, %conv.i.i.i.2
  %conv2.i.i.i.2 = trunc i32 %xor.i.i.i.2 to i8
  %scevgep381.3 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 3
  %13 = load i8, i8* %scevgep381.3, align 1
  %conv.i.i.i.3 = zext i8 %13 to i32
  %conv1.i.i.i.3 = zext i8 %conv2.i.i.i.2 to i32
  %xor.i.i.i.3 = xor i32 %conv1.i.i.i.3, %conv.i.i.i.3
  %conv2.i.i.i.3 = trunc i32 %xor.i.i.i.3 to i8
  %scevgep381.4 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 4
  %14 = load i8, i8* %scevgep381.4, align 1
  %conv.i.i.i.4 = zext i8 %14 to i32
  %conv1.i.i.i.4 = zext i8 %conv2.i.i.i.3 to i32
  %xor.i.i.i.4 = xor i32 %conv1.i.i.i.4, %conv.i.i.i.4
  %conv2.i.i.i.4 = trunc i32 %xor.i.i.i.4 to i8
  %conv2.i = zext i8 %conv2.i.i.i.4 to i32
  %cmp.i33 = icmp eq i32 %conv.i, %conv2.i
  call void @assume(i1 zeroext %cmp.i33) #3
  %scevgep376 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 0
  %15 = load i8, i8* %scevgep376, align 1
  %scevgep377 = getelementptr [5 x i8], [5 x i8]* %zr, i64 0, i64 0
  store i8 %15, i8* %scevgep377, align 1
  %scevgep376.1 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 1
  %16 = load i8, i8* %scevgep376.1, align 1
  %scevgep377.1 = getelementptr [5 x i8], [5 x i8]* %zr, i64 0, i64 1
  store i8 %16, i8* %scevgep377.1, align 1
  %scevgep376.2 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 2
  %17 = load i8, i8* %scevgep376.2, align 1
  %scevgep377.2 = getelementptr [5 x i8], [5 x i8]* %zr, i64 0, i64 2
  store i8 %17, i8* %scevgep377.2, align 1
  %scevgep376.3 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 3
  %18 = load i8, i8* %scevgep376.3, align 1
  %scevgep377.3 = getelementptr [5 x i8], [5 x i8]* %zr, i64 0, i64 3
  store i8 %18, i8* %scevgep377.3, align 1
  %scevgep376.4 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 4
  %19 = load i8, i8* %scevgep376.4, align 1
  %scevgep377.4 = getelementptr [5 x i8], [5 x i8]* %zr, i64 0, i64 4
  store i8 %19, i8* %scevgep377.4, align 1
  %call7.i = call zeroext i8 (...) @rand() #3
  %conv8.i = zext i8 %call7.i to i32
  %20 = load i8, i8* %arraydecay5, align 1
  %conv9.i = zext i8 %20 to i32
  %xor.i = xor i32 %conv9.i, %conv8.i
  %conv10.i = trunc i32 %xor.i to i8
  store i8 %conv10.i, i8* %arraydecay5, align 1
  %conv11.i = zext i8 %call7.i to i32
  %scevgep372 = getelementptr [5 x i8], [5 x i8]* %zr, i64 0, i64 1
  %21 = load i8, i8* %scevgep372, align 1
  %conv13.i = zext i8 %21 to i32
  %xor14.i = xor i32 %conv13.i, %conv11.i
  %conv15.i = trunc i32 %xor14.i to i8
  store i8 %conv15.i, i8* %scevgep372, align 1
  %call7.i.1 = call zeroext i8 (...) @rand() #3
  %conv8.i.1 = zext i8 %call7.i.1 to i32
  %22 = load i8, i8* %arraydecay5, align 1
  %conv9.i.1 = zext i8 %22 to i32
  %xor.i.1 = xor i32 %conv9.i.1, %conv8.i.1
  %conv10.i.1 = trunc i32 %xor.i.1 to i8
  store i8 %conv10.i.1, i8* %arraydecay5, align 1
  %conv11.i.1 = zext i8 %call7.i.1 to i32
  %scevgep372.1 = getelementptr [5 x i8], [5 x i8]* %zr, i64 0, i64 2
  %23 = load i8, i8* %scevgep372.1, align 1
  %conv13.i.1 = zext i8 %23 to i32
  %xor14.i.1 = xor i32 %conv13.i.1, %conv11.i.1
  %conv15.i.1 = trunc i32 %xor14.i.1 to i8
  store i8 %conv15.i.1, i8* %scevgep372.1, align 1
  %call7.i.2 = call zeroext i8 (...) @rand() #3
  %conv8.i.2 = zext i8 %call7.i.2 to i32
  %24 = load i8, i8* %arraydecay5, align 1
  %conv9.i.2 = zext i8 %24 to i32
  %xor.i.2 = xor i32 %conv9.i.2, %conv8.i.2
  %conv10.i.2 = trunc i32 %xor.i.2 to i8
  store i8 %conv10.i.2, i8* %arraydecay5, align 1
  %conv11.i.2 = zext i8 %call7.i.2 to i32
  %scevgep372.2 = getelementptr [5 x i8], [5 x i8]* %zr, i64 0, i64 3
  %25 = load i8, i8* %scevgep372.2, align 1
  %conv13.i.2 = zext i8 %25 to i32
  %xor14.i.2 = xor i32 %conv13.i.2, %conv11.i.2
  %conv15.i.2 = trunc i32 %xor14.i.2 to i8
  store i8 %conv15.i.2, i8* %scevgep372.2, align 1
  %call7.i.3 = call zeroext i8 (...) @rand() #3
  %conv8.i.3 = zext i8 %call7.i.3 to i32
  %26 = load i8, i8* %arraydecay5, align 1
  %conv9.i.3 = zext i8 %26 to i32
  %xor.i.3 = xor i32 %conv9.i.3, %conv8.i.3
  %conv10.i.3 = trunc i32 %xor.i.3 to i8
  store i8 %conv10.i.3, i8* %arraydecay5, align 1
  %conv11.i.3 = zext i8 %call7.i.3 to i32
  %scevgep372.3 = getelementptr [5 x i8], [5 x i8]* %zr, i64 0, i64 4
  %27 = load i8, i8* %scevgep372.3, align 1
  %conv13.i.3 = zext i8 %27 to i32
  %xor14.i.3 = xor i32 %conv13.i.3, %conv11.i.3
  %conv15.i.3 = trunc i32 %xor14.i.3 to i8
  store i8 %conv15.i.3, i8* %scevgep372.3, align 1
  %conv16.i = zext i8 %call.i32 to i32
  %scevgep368 = getelementptr [5 x i8], [5 x i8]* %zr, i64 0, i64 0
  %28 = load i8, i8* %scevgep368, align 1
  %scevgep368.1 = getelementptr [5 x i8], [5 x i8]* %zr, i64 0, i64 1
  %29 = load i8, i8* %scevgep368.1, align 1
  %conv.i.i31.i.1 = zext i8 %29 to i32
  %conv1.i.i32.i.1 = zext i8 %28 to i32
  %xor.i.i33.i.1 = xor i32 %conv1.i.i32.i.1, %conv.i.i31.i.1
  %conv2.i.i34.i.1 = trunc i32 %xor.i.i33.i.1 to i8
  %scevgep368.2 = getelementptr [5 x i8], [5 x i8]* %zr, i64 0, i64 2
  %30 = load i8, i8* %scevgep368.2, align 1
  %conv.i.i31.i.2 = zext i8 %30 to i32
  %conv1.i.i32.i.2 = zext i8 %conv2.i.i34.i.1 to i32
  %xor.i.i33.i.2 = xor i32 %conv1.i.i32.i.2, %conv.i.i31.i.2
  %conv2.i.i34.i.2 = trunc i32 %xor.i.i33.i.2 to i8
  %scevgep368.3 = getelementptr [5 x i8], [5 x i8]* %zr, i64 0, i64 3
  %31 = load i8, i8* %scevgep368.3, align 1
  %conv.i.i31.i.3 = zext i8 %31 to i32
  %conv1.i.i32.i.3 = zext i8 %conv2.i.i34.i.2 to i32
  %xor.i.i33.i.3 = xor i32 %conv1.i.i32.i.3, %conv.i.i31.i.3
  %conv2.i.i34.i.3 = trunc i32 %xor.i.i33.i.3 to i8
  %scevgep368.4 = getelementptr [5 x i8], [5 x i8]* %zr, i64 0, i64 4
  %32 = load i8, i8* %scevgep368.4, align 1
  %conv.i.i31.i.4 = zext i8 %32 to i32
  %conv1.i.i32.i.4 = zext i8 %conv2.i.i34.i.3 to i32
  %xor.i.i33.i.4 = xor i32 %conv1.i.i32.i.4, %conv.i.i31.i.4
  %conv2.i.i34.i.4 = trunc i32 %xor.i.i33.i.4 to i8
  %conv18.i = zext i8 %conv2.i.i34.i.4 to i32
  %cmp19.i = icmp eq i32 %conv16.i, %conv18.i
  call void @assert(i1 zeroext %cmp19.i) #3
  %arraydecay6 = getelementptr inbounds [5 x i8], [5 x i8]* %zr, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [5 x i8], [5 x i8]* %u, i64 0, i64 0
  %call.i52 = call zeroext i8 (...) @rand() #3
  %call1.i = call zeroext i8 (...) @rand() #3
  %conv.i53 = zext i8 %call.i52 to i32
  %scevgep364 = getelementptr [5 x i8], [5 x i8]* %zr, i64 0, i64 0
  %33 = load i8, i8* %scevgep364, align 1
  %scevgep364.1 = getelementptr [5 x i8], [5 x i8]* %zr, i64 0, i64 1
  %34 = load i8, i8* %scevgep364.1, align 1
  %conv.i.i.i59.1 = zext i8 %34 to i32
  %conv1.i.i.i60.1 = zext i8 %33 to i32
  %xor.i.i.i61.1 = xor i32 %conv1.i.i.i60.1, %conv.i.i.i59.1
  %conv2.i.i.i62.1 = trunc i32 %xor.i.i.i61.1 to i8
  %scevgep364.2 = getelementptr [5 x i8], [5 x i8]* %zr, i64 0, i64 2
  %35 = load i8, i8* %scevgep364.2, align 1
  %conv.i.i.i59.2 = zext i8 %35 to i32
  %conv1.i.i.i60.2 = zext i8 %conv2.i.i.i62.1 to i32
  %xor.i.i.i61.2 = xor i32 %conv1.i.i.i60.2, %conv.i.i.i59.2
  %conv2.i.i.i62.2 = trunc i32 %xor.i.i.i61.2 to i8
  %scevgep364.3 = getelementptr [5 x i8], [5 x i8]* %zr, i64 0, i64 3
  %36 = load i8, i8* %scevgep364.3, align 1
  %conv.i.i.i59.3 = zext i8 %36 to i32
  %conv1.i.i.i60.3 = zext i8 %conv2.i.i.i62.2 to i32
  %xor.i.i.i61.3 = xor i32 %conv1.i.i.i60.3, %conv.i.i.i59.3
  %conv2.i.i.i62.3 = trunc i32 %xor.i.i.i61.3 to i8
  %scevgep364.4 = getelementptr [5 x i8], [5 x i8]* %zr, i64 0, i64 4
  %37 = load i8, i8* %scevgep364.4, align 1
  %conv.i.i.i59.4 = zext i8 %37 to i32
  %conv1.i.i.i60.4 = zext i8 %conv2.i.i.i62.3 to i32
  %xor.i.i.i61.4 = xor i32 %conv1.i.i.i60.4, %conv.i.i.i59.4
  %conv2.i.i.i62.4 = trunc i32 %xor.i.i.i61.4 to i8
  %conv3.i = zext i8 %conv2.i.i.i62.4 to i32
  %cmp.i65 = icmp eq i32 %conv.i53, %conv3.i
  call void @assume(i1 zeroext %cmp.i65) #3
  %conv5.i = zext i8 %call1.i to i32
  %38 = load i8, i8* %x, align 1
  %scevgep360.1 = getelementptr i8, i8* %x, i64 1
  %39 = load i8, i8* %scevgep360.1, align 1
  %conv.i.i155.i.1 = zext i8 %39 to i32
  %conv1.i.i156.i.1 = zext i8 %38 to i32
  %xor.i.i157.i.1 = xor i32 %conv1.i.i156.i.1, %conv.i.i155.i.1
  %conv2.i.i158.i.1 = trunc i32 %xor.i.i157.i.1 to i8
  %scevgep360.2 = getelementptr i8, i8* %x, i64 2
  %40 = load i8, i8* %scevgep360.2, align 1
  %conv.i.i155.i.2 = zext i8 %40 to i32
  %conv1.i.i156.i.2 = zext i8 %conv2.i.i158.i.1 to i32
  %xor.i.i157.i.2 = xor i32 %conv1.i.i156.i.2, %conv.i.i155.i.2
  %conv2.i.i158.i.2 = trunc i32 %xor.i.i157.i.2 to i8
  %scevgep360.3 = getelementptr i8, i8* %x, i64 3
  %41 = load i8, i8* %scevgep360.3, align 1
  %conv.i.i155.i.3 = zext i8 %41 to i32
  %conv1.i.i156.i.3 = zext i8 %conv2.i.i158.i.2 to i32
  %xor.i.i157.i.3 = xor i32 %conv1.i.i156.i.3, %conv.i.i155.i.3
  %conv2.i.i158.i.3 = trunc i32 %xor.i.i157.i.3 to i8
  %scevgep360.4 = getelementptr i8, i8* %x, i64 4
  %42 = load i8, i8* %scevgep360.4, align 1
  %conv.i.i155.i.4 = zext i8 %42 to i32
  %conv1.i.i156.i.4 = zext i8 %conv2.i.i158.i.3 to i32
  %xor.i.i157.i.4 = xor i32 %conv1.i.i156.i.4, %conv.i.i155.i.4
  %conv2.i.i158.i.4 = trunc i32 %xor.i.i157.i.4 to i8
  %conv7.i = zext i8 %conv2.i.i158.i.4 to i32
  %cmp8.i = icmp eq i32 %conv5.i, %conv7.i
  call void @assume(i1 zeroext %cmp8.i) #3
  %scevgep344 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %scevgep344345 = bitcast i8* %scevgep344 to [5 x [5 x i8]]*
  %scevgep351 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 1, i64 0
  %scevgep351352 = bitcast i8* %scevgep351 to [5 x [5 x i8]]*
  %call16.i = call zeroext i8 (...) @rand() #3
  store i8 %call16.i, i8* %scevgep344, align 1
  %43 = load i8, i8* %scevgep344, align 1
  store i8 %43, i8* %scevgep351, align 1
  %scevgep349 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep344345, i64 0, i64 0, i64 1
  %44 = bitcast i8* %scevgep349 to [5 x [5 x i8]]*
  %scevgep356 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep351352, i64 0, i64 1, i64 0
  %45 = bitcast i8* %scevgep356 to [5 x [5 x i8]]*
  %call16.i.1991 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1991, i8* %scevgep349, align 1
  %46 = load i8, i8* %scevgep349, align 1
  store i8 %46, i8* %scevgep356, align 1
  %scevgep349.1992 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %44, i64 0, i64 0, i64 1
  %47 = bitcast i8* %scevgep349.1992 to [5 x [5 x i8]]*
  %scevgep356.1993 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %45, i64 0, i64 1, i64 0
  %48 = bitcast i8* %scevgep356.1993 to [5 x [5 x i8]]*
  %call16.i.2995 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.2995, i8* %scevgep349.1992, align 1
  %49 = load i8, i8* %scevgep349.1992, align 1
  store i8 %49, i8* %scevgep356.1993, align 1
  %scevgep349.2996 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %47, i64 0, i64 0, i64 1
  %scevgep356.2997 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %48, i64 0, i64 1, i64 0
  %call16.i.3999 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.3999, i8* %scevgep349.2996, align 1
  %50 = load i8, i8* %scevgep349.2996, align 1
  store i8 %50, i8* %scevgep356.2997, align 1
  %scevgep347 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep344345, i64 0, i64 1, i64 1
  %51 = bitcast i8* %scevgep347 to [5 x [5 x i8]]*
  %scevgep354 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep351352, i64 0, i64 1, i64 1
  %52 = bitcast i8* %scevgep354 to [5 x [5 x i8]]*
  %call16.i.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1, i8* %scevgep347, align 1
  %53 = load i8, i8* %scevgep347, align 1
  store i8 %53, i8* %scevgep354, align 1
  %scevgep349.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %51, i64 0, i64 0, i64 1
  %54 = bitcast i8* %scevgep349.1 to [5 x [5 x i8]]*
  %scevgep356.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %52, i64 0, i64 1, i64 0
  %55 = bitcast i8* %scevgep356.1 to [5 x [5 x i8]]*
  %call16.i.1.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1.1, i8* %scevgep349.1, align 1
  %56 = load i8, i8* %scevgep349.1, align 1
  store i8 %56, i8* %scevgep356.1, align 1
  %scevgep349.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %54, i64 0, i64 0, i64 1
  %scevgep356.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %55, i64 0, i64 1, i64 0
  %call16.i.1.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1.2, i8* %scevgep349.1.1, align 1
  %57 = load i8, i8* %scevgep349.1.1, align 1
  store i8 %57, i8* %scevgep356.1.1, align 1
  %scevgep347.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %51, i64 0, i64 1, i64 1
  %58 = bitcast i8* %scevgep347.1 to [5 x [5 x i8]]*
  %scevgep354.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %52, i64 0, i64 1, i64 1
  %59 = bitcast i8* %scevgep354.1 to [5 x [5 x i8]]*
  %call16.i.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.2, i8* %scevgep347.1, align 1
  %60 = load i8, i8* %scevgep347.1, align 1
  store i8 %60, i8* %scevgep354.1, align 1
  %scevgep349.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %58, i64 0, i64 0, i64 1
  %scevgep356.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %59, i64 0, i64 1, i64 0
  %call16.i.2.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.2.1, i8* %scevgep349.2, align 1
  %61 = load i8, i8* %scevgep349.2, align 1
  store i8 %61, i8* %scevgep356.2, align 1
  %scevgep347.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %58, i64 0, i64 1, i64 1
  %scevgep354.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %59, i64 0, i64 1, i64 1
  %call16.i.3 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.3, i8* %scevgep347.2, align 1
  %62 = load i8, i8* %scevgep347.2, align 1
  store i8 %62, i8* %scevgep354.2, align 1
  %scevgep321.1 = getelementptr i8, i8* %x, i64 1
  %63 = load i8, i8* %scevgep321.1, align 1
  %conv44.i.1 = zext i8 %63 to i32
  %scevgep324.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %64 = load i8, i8* %scevgep324.1, align 1
  %conv49.i.1 = zext i8 %64 to i32
  %xor.i73.1 = xor i32 %conv44.i.1, %conv49.i.1
  %conv50.i.1 = trunc i32 %xor.i73.1 to i8
  %scevgep328.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i.1, i8* %scevgep328.1, align 1
  %65 = load i8, i8* %arraydecay6, align 1
  %conv57.i.1 = zext i8 %65 to i32
  %xor58.i.1 = xor i32 %conv57.i.1, 1
  %conv59.i.1 = trunc i32 %xor58.i.1 to i8
  %scevgep325.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %66 = load i8, i8* %scevgep325.1, align 1
  %call64.i.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.1, i8 zeroext %66) #3
  %scevgep332.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i.1, i8* %scevgep332.1, align 1
  %67 = load i8, i8* %arraydecay6, align 1
  %scevgep329.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 1
  %68 = load i8, i8* %scevgep329.1, align 1
  %call75.i.1 = call zeroext i8 @mult(i8 zeroext %67, i8 zeroext %68) #3
  %scevgep336.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i.1, i8* %scevgep336.1, align 1
  %scevgep333.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %69 = load i8, i8* %scevgep333.1, align 1
  %conv84.i.1 = zext i8 %69 to i32
  %scevgep337.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %70 = load i8, i8* %scevgep337.1, align 1
  %conv89.i.1 = zext i8 %70 to i32
  %xor90.i.1 = xor i32 %conv84.i.1, %conv89.i.1
  %conv91.i.1 = trunc i32 %xor90.i.1 to i8
  %scevgep340.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i.1, i8* %scevgep340.1, align 1
  %scevgep321.2 = getelementptr i8, i8* %x, i64 2
  %71 = load i8, i8* %scevgep321.2, align 1
  %conv44.i.2 = zext i8 %71 to i32
  %scevgep324.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 2
  %72 = load i8, i8* %scevgep324.2, align 1
  %conv49.i.2 = zext i8 %72 to i32
  %xor.i73.2 = xor i32 %conv44.i.2, %conv49.i.2
  %conv50.i.2 = trunc i32 %xor.i73.2 to i8
  %scevgep328.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 2
  store i8 %conv50.i.2, i8* %scevgep328.2, align 1
  %73 = load i8, i8* %arraydecay6, align 1
  %conv57.i.2 = zext i8 %73 to i32
  %xor58.i.2 = xor i32 %conv57.i.2, 1
  %conv59.i.2 = trunc i32 %xor58.i.2 to i8
  %scevgep325.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 2
  %74 = load i8, i8* %scevgep325.2, align 1
  %call64.i.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.2, i8 zeroext %74) #3
  %scevgep332.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 2
  store i8 %call64.i.2, i8* %scevgep332.2, align 1
  %75 = load i8, i8* %arraydecay6, align 1
  %scevgep329.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 2
  %76 = load i8, i8* %scevgep329.2, align 1
  %call75.i.2 = call zeroext i8 @mult(i8 zeroext %75, i8 zeroext %76) #3
  %scevgep336.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 2
  store i8 %call75.i.2, i8* %scevgep336.2, align 1
  %scevgep333.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 2
  %77 = load i8, i8* %scevgep333.2, align 1
  %conv84.i.2 = zext i8 %77 to i32
  %scevgep337.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 2
  %78 = load i8, i8* %scevgep337.2, align 1
  %conv89.i.2 = zext i8 %78 to i32
  %xor90.i.2 = xor i32 %conv84.i.2, %conv89.i.2
  %conv91.i.2 = trunc i32 %xor90.i.2 to i8
  %scevgep340.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 2
  store i8 %conv91.i.2, i8* %scevgep340.2, align 1
  %scevgep321.3 = getelementptr i8, i8* %x, i64 3
  %79 = load i8, i8* %scevgep321.3, align 1
  %conv44.i.3 = zext i8 %79 to i32
  %scevgep324.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 3
  %80 = load i8, i8* %scevgep324.3, align 1
  %conv49.i.3 = zext i8 %80 to i32
  %xor.i73.3 = xor i32 %conv44.i.3, %conv49.i.3
  %conv50.i.3 = trunc i32 %xor.i73.3 to i8
  %scevgep328.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 3
  store i8 %conv50.i.3, i8* %scevgep328.3, align 1
  %81 = load i8, i8* %arraydecay6, align 1
  %conv57.i.3 = zext i8 %81 to i32
  %xor58.i.3 = xor i32 %conv57.i.3, 1
  %conv59.i.3 = trunc i32 %xor58.i.3 to i8
  %scevgep325.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 3
  %82 = load i8, i8* %scevgep325.3, align 1
  %call64.i.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.3, i8 zeroext %82) #3
  %scevgep332.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 3
  store i8 %call64.i.3, i8* %scevgep332.3, align 1
  %83 = load i8, i8* %arraydecay6, align 1
  %scevgep329.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 3
  %84 = load i8, i8* %scevgep329.3, align 1
  %call75.i.3 = call zeroext i8 @mult(i8 zeroext %83, i8 zeroext %84) #3
  %scevgep336.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 3
  store i8 %call75.i.3, i8* %scevgep336.3, align 1
  %scevgep333.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 3
  %85 = load i8, i8* %scevgep333.3, align 1
  %conv84.i.3 = zext i8 %85 to i32
  %scevgep337.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 3
  %86 = load i8, i8* %scevgep337.3, align 1
  %conv89.i.3 = zext i8 %86 to i32
  %xor90.i.3 = xor i32 %conv84.i.3, %conv89.i.3
  %conv91.i.3 = trunc i32 %xor90.i.3 to i8
  %scevgep340.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 3
  store i8 %conv91.i.3, i8* %scevgep340.3, align 1
  %scevgep321.4 = getelementptr i8, i8* %x, i64 4
  %87 = load i8, i8* %scevgep321.4, align 1
  %conv44.i.4 = zext i8 %87 to i32
  %scevgep324.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 4
  %88 = load i8, i8* %scevgep324.4, align 1
  %conv49.i.4 = zext i8 %88 to i32
  %xor.i73.4 = xor i32 %conv44.i.4, %conv49.i.4
  %conv50.i.4 = trunc i32 %xor.i73.4 to i8
  %scevgep328.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 4
  store i8 %conv50.i.4, i8* %scevgep328.4, align 1
  %89 = load i8, i8* %arraydecay6, align 1
  %conv57.i.4 = zext i8 %89 to i32
  %xor58.i.4 = xor i32 %conv57.i.4, 1
  %conv59.i.4 = trunc i32 %xor58.i.4 to i8
  %scevgep325.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 4
  %90 = load i8, i8* %scevgep325.4, align 1
  %call64.i.4 = call zeroext i8 @mult(i8 zeroext %conv59.i.4, i8 zeroext %90) #3
  %scevgep332.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 4
  store i8 %call64.i.4, i8* %scevgep332.4, align 1
  %91 = load i8, i8* %arraydecay6, align 1
  %scevgep329.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 4
  %92 = load i8, i8* %scevgep329.4, align 1
  %call75.i.4 = call zeroext i8 @mult(i8 zeroext %91, i8 zeroext %92) #3
  %scevgep336.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 4
  store i8 %call75.i.4, i8* %scevgep336.4, align 1
  %scevgep333.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 4
  %93 = load i8, i8* %scevgep333.4, align 1
  %conv84.i.4 = zext i8 %93 to i32
  %scevgep337.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 4
  %94 = load i8, i8* %scevgep337.4, align 1
  %conv89.i.4 = zext i8 %94 to i32
  %xor90.i.4 = xor i32 %conv84.i.4, %conv89.i.4
  %conv91.i.4 = trunc i32 %xor90.i.4 to i8
  %scevgep340.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 4
  store i8 %conv91.i.4, i8* %scevgep340.4, align 1
  %scevgep323 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 1, i64 0
  %95 = bitcast i8* %scevgep323 to [5 x [5 x i8]]*
  %scevgep327 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 1, i64 0
  %96 = bitcast i8* %scevgep327 to [5 x [5 x i8]]*
  %scevgep331 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %97 = bitcast i8* %scevgep331 to [5 x [5 x i8]]*
  %scevgep335 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %98 = bitcast i8* %scevgep335 to [5 x [5 x i8]]*
  %scevgep339 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 1, i64 0
  %99 = bitcast i8* %scevgep339 to [5 x [5 x i8]]*
  %arrayidx56.i.1 = getelementptr inbounds i8, i8* %arraydecay6, i64 1
  %arrayidx70.i.1 = getelementptr inbounds i8, i8* %arraydecay6, i64 1
  %100 = load i8, i8* %x, align 1
  %conv44.i.1862 = zext i8 %100 to i32
  %scevgep324.1863 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %95, i64 0, i64 0, i64 0
  %101 = load i8, i8* %scevgep324.1863, align 1
  %conv49.i.1864 = zext i8 %101 to i32
  %xor.i73.1865 = xor i32 %conv44.i.1862, %conv49.i.1864
  %conv50.i.1866 = trunc i32 %xor.i73.1865 to i8
  %scevgep328.1867 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %96, i64 0, i64 0, i64 0
  store i8 %conv50.i.1866, i8* %scevgep328.1867, align 1
  %102 = load i8, i8* %arrayidx56.i.1, align 1
  %conv57.i.1868 = zext i8 %102 to i32
  %xor58.i.1869 = xor i32 %conv57.i.1868, 1
  %conv59.i.1870 = trunc i32 %xor58.i.1869 to i8
  %scevgep325.1871 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %95, i64 0, i64 0, i64 0
  %103 = load i8, i8* %scevgep325.1871, align 1
  %call64.i.1872 = call zeroext i8 @mult(i8 zeroext %conv59.i.1870, i8 zeroext %103) #3
  %scevgep332.1873 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %97, i64 0, i64 0, i64 0
  store i8 %call64.i.1872, i8* %scevgep332.1873, align 1
  %104 = load i8, i8* %arrayidx70.i.1, align 1
  %scevgep329.1874 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %96, i64 0, i64 0, i64 0
  %105 = load i8, i8* %scevgep329.1874, align 1
  %call75.i.1875 = call zeroext i8 @mult(i8 zeroext %104, i8 zeroext %105) #3
  %scevgep336.1876 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %98, i64 0, i64 0, i64 0
  store i8 %call75.i.1875, i8* %scevgep336.1876, align 1
  %scevgep333.1877 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %97, i64 0, i64 0, i64 0
  %106 = load i8, i8* %scevgep333.1877, align 1
  %conv84.i.1878 = zext i8 %106 to i32
  %scevgep337.1879 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %98, i64 0, i64 0, i64 0
  %107 = load i8, i8* %scevgep337.1879, align 1
  %conv89.i.1880 = zext i8 %107 to i32
  %xor90.i.1881 = xor i32 %conv84.i.1878, %conv89.i.1880
  %conv91.i.1882 = trunc i32 %xor90.i.1881 to i8
  %scevgep340.1883 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %99, i64 0, i64 0, i64 0
  store i8 %conv91.i.1882, i8* %scevgep340.1883, align 1
  %scevgep321.2.1 = getelementptr i8, i8* %x, i64 2
  %108 = load i8, i8* %scevgep321.2.1, align 1
  %conv44.i.2.1 = zext i8 %108 to i32
  %scevgep324.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %95, i64 0, i64 0, i64 2
  %109 = load i8, i8* %scevgep324.2.1, align 1
  %conv49.i.2.1 = zext i8 %109 to i32
  %xor.i73.2.1 = xor i32 %conv44.i.2.1, %conv49.i.2.1
  %conv50.i.2.1 = trunc i32 %xor.i73.2.1 to i8
  %scevgep328.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %96, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.1, i8* %scevgep328.2.1, align 1
  %110 = load i8, i8* %arrayidx56.i.1, align 1
  %conv57.i.2.1 = zext i8 %110 to i32
  %xor58.i.2.1 = xor i32 %conv57.i.2.1, 1
  %conv59.i.2.1 = trunc i32 %xor58.i.2.1 to i8
  %scevgep325.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %95, i64 0, i64 0, i64 2
  %111 = load i8, i8* %scevgep325.2.1, align 1
  %call64.i.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.1, i8 zeroext %111) #3
  %scevgep332.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %97, i64 0, i64 0, i64 2
  store i8 %call64.i.2.1, i8* %scevgep332.2.1, align 1
  %112 = load i8, i8* %arrayidx70.i.1, align 1
  %scevgep329.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %96, i64 0, i64 0, i64 2
  %113 = load i8, i8* %scevgep329.2.1, align 1
  %call75.i.2.1 = call zeroext i8 @mult(i8 zeroext %112, i8 zeroext %113) #3
  %scevgep336.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %98, i64 0, i64 0, i64 2
  store i8 %call75.i.2.1, i8* %scevgep336.2.1, align 1
  %scevgep333.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %97, i64 0, i64 0, i64 2
  %114 = load i8, i8* %scevgep333.2.1, align 1
  %conv84.i.2.1 = zext i8 %114 to i32
  %scevgep337.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %98, i64 0, i64 0, i64 2
  %115 = load i8, i8* %scevgep337.2.1, align 1
  %conv89.i.2.1 = zext i8 %115 to i32
  %xor90.i.2.1 = xor i32 %conv84.i.2.1, %conv89.i.2.1
  %conv91.i.2.1 = trunc i32 %xor90.i.2.1 to i8
  %scevgep340.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %99, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.1, i8* %scevgep340.2.1, align 1
  %scevgep321.3.1 = getelementptr i8, i8* %x, i64 3
  %116 = load i8, i8* %scevgep321.3.1, align 1
  %conv44.i.3.1 = zext i8 %116 to i32
  %scevgep324.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %95, i64 0, i64 0, i64 3
  %117 = load i8, i8* %scevgep324.3.1, align 1
  %conv49.i.3.1 = zext i8 %117 to i32
  %xor.i73.3.1 = xor i32 %conv44.i.3.1, %conv49.i.3.1
  %conv50.i.3.1 = trunc i32 %xor.i73.3.1 to i8
  %scevgep328.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %96, i64 0, i64 0, i64 3
  store i8 %conv50.i.3.1, i8* %scevgep328.3.1, align 1
  %118 = load i8, i8* %arrayidx56.i.1, align 1
  %conv57.i.3.1 = zext i8 %118 to i32
  %xor58.i.3.1 = xor i32 %conv57.i.3.1, 1
  %conv59.i.3.1 = trunc i32 %xor58.i.3.1 to i8
  %scevgep325.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %95, i64 0, i64 0, i64 3
  %119 = load i8, i8* %scevgep325.3.1, align 1
  %call64.i.3.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.3.1, i8 zeroext %119) #3
  %scevgep332.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %97, i64 0, i64 0, i64 3
  store i8 %call64.i.3.1, i8* %scevgep332.3.1, align 1
  %120 = load i8, i8* %arrayidx70.i.1, align 1
  %scevgep329.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %96, i64 0, i64 0, i64 3
  %121 = load i8, i8* %scevgep329.3.1, align 1
  %call75.i.3.1 = call zeroext i8 @mult(i8 zeroext %120, i8 zeroext %121) #3
  %scevgep336.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %98, i64 0, i64 0, i64 3
  store i8 %call75.i.3.1, i8* %scevgep336.3.1, align 1
  %scevgep333.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %97, i64 0, i64 0, i64 3
  %122 = load i8, i8* %scevgep333.3.1, align 1
  %conv84.i.3.1 = zext i8 %122 to i32
  %scevgep337.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %98, i64 0, i64 0, i64 3
  %123 = load i8, i8* %scevgep337.3.1, align 1
  %conv89.i.3.1 = zext i8 %123 to i32
  %xor90.i.3.1 = xor i32 %conv84.i.3.1, %conv89.i.3.1
  %conv91.i.3.1 = trunc i32 %xor90.i.3.1 to i8
  %scevgep340.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %99, i64 0, i64 0, i64 3
  store i8 %conv91.i.3.1, i8* %scevgep340.3.1, align 1
  %scevgep321.4.1 = getelementptr i8, i8* %x, i64 4
  %124 = load i8, i8* %scevgep321.4.1, align 1
  %conv44.i.4.1 = zext i8 %124 to i32
  %scevgep324.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %95, i64 0, i64 0, i64 4
  %125 = load i8, i8* %scevgep324.4.1, align 1
  %conv49.i.4.1 = zext i8 %125 to i32
  %xor.i73.4.1 = xor i32 %conv44.i.4.1, %conv49.i.4.1
  %conv50.i.4.1 = trunc i32 %xor.i73.4.1 to i8
  %scevgep328.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %96, i64 0, i64 0, i64 4
  store i8 %conv50.i.4.1, i8* %scevgep328.4.1, align 1
  %126 = load i8, i8* %arrayidx56.i.1, align 1
  %conv57.i.4.1 = zext i8 %126 to i32
  %xor58.i.4.1 = xor i32 %conv57.i.4.1, 1
  %conv59.i.4.1 = trunc i32 %xor58.i.4.1 to i8
  %scevgep325.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %95, i64 0, i64 0, i64 4
  %127 = load i8, i8* %scevgep325.4.1, align 1
  %call64.i.4.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.4.1, i8 zeroext %127) #3
  %scevgep332.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %97, i64 0, i64 0, i64 4
  store i8 %call64.i.4.1, i8* %scevgep332.4.1, align 1
  %128 = load i8, i8* %arrayidx70.i.1, align 1
  %scevgep329.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %96, i64 0, i64 0, i64 4
  %129 = load i8, i8* %scevgep329.4.1, align 1
  %call75.i.4.1 = call zeroext i8 @mult(i8 zeroext %128, i8 zeroext %129) #3
  %scevgep336.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %98, i64 0, i64 0, i64 4
  store i8 %call75.i.4.1, i8* %scevgep336.4.1, align 1
  %scevgep333.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %97, i64 0, i64 0, i64 4
  %130 = load i8, i8* %scevgep333.4.1, align 1
  %conv84.i.4.1 = zext i8 %130 to i32
  %scevgep337.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %98, i64 0, i64 0, i64 4
  %131 = load i8, i8* %scevgep337.4.1, align 1
  %conv89.i.4.1 = zext i8 %131 to i32
  %xor90.i.4.1 = xor i32 %conv84.i.4.1, %conv89.i.4.1
  %conv91.i.4.1 = trunc i32 %xor90.i.4.1 to i8
  %scevgep340.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %99, i64 0, i64 0, i64 4
  store i8 %conv91.i.4.1, i8* %scevgep340.4.1, align 1
  %scevgep323.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %95, i64 0, i64 1, i64 0
  %132 = bitcast i8* %scevgep323.1 to [5 x [5 x i8]]*
  %scevgep327.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %96, i64 0, i64 1, i64 0
  %133 = bitcast i8* %scevgep327.1 to [5 x [5 x i8]]*
  %scevgep331.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %97, i64 0, i64 1, i64 0
  %134 = bitcast i8* %scevgep331.1 to [5 x [5 x i8]]*
  %scevgep335.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %98, i64 0, i64 1, i64 0
  %135 = bitcast i8* %scevgep335.1 to [5 x [5 x i8]]*
  %scevgep339.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %99, i64 0, i64 1, i64 0
  %136 = bitcast i8* %scevgep339.1 to [5 x [5 x i8]]*
  %arrayidx56.i.2 = getelementptr inbounds i8, i8* %arraydecay6, i64 2
  %arrayidx70.i.2 = getelementptr inbounds i8, i8* %arraydecay6, i64 2
  %137 = load i8, i8* %x, align 1
  %conv44.i.2888 = zext i8 %137 to i32
  %scevgep324.2889 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %132, i64 0, i64 0, i64 0
  %138 = load i8, i8* %scevgep324.2889, align 1
  %conv49.i.2890 = zext i8 %138 to i32
  %xor.i73.2891 = xor i32 %conv44.i.2888, %conv49.i.2890
  %conv50.i.2892 = trunc i32 %xor.i73.2891 to i8
  %scevgep328.2893 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %133, i64 0, i64 0, i64 0
  store i8 %conv50.i.2892, i8* %scevgep328.2893, align 1
  %139 = load i8, i8* %arrayidx56.i.2, align 1
  %conv57.i.2894 = zext i8 %139 to i32
  %xor58.i.2895 = xor i32 %conv57.i.2894, 1
  %conv59.i.2896 = trunc i32 %xor58.i.2895 to i8
  %scevgep325.2897 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %132, i64 0, i64 0, i64 0
  %140 = load i8, i8* %scevgep325.2897, align 1
  %call64.i.2898 = call zeroext i8 @mult(i8 zeroext %conv59.i.2896, i8 zeroext %140) #3
  %scevgep332.2899 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %134, i64 0, i64 0, i64 0
  store i8 %call64.i.2898, i8* %scevgep332.2899, align 1
  %141 = load i8, i8* %arrayidx70.i.2, align 1
  %scevgep329.2900 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %133, i64 0, i64 0, i64 0
  %142 = load i8, i8* %scevgep329.2900, align 1
  %call75.i.2901 = call zeroext i8 @mult(i8 zeroext %141, i8 zeroext %142) #3
  %scevgep336.2902 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %135, i64 0, i64 0, i64 0
  store i8 %call75.i.2901, i8* %scevgep336.2902, align 1
  %scevgep333.2903 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %134, i64 0, i64 0, i64 0
  %143 = load i8, i8* %scevgep333.2903, align 1
  %conv84.i.2904 = zext i8 %143 to i32
  %scevgep337.2905 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %135, i64 0, i64 0, i64 0
  %144 = load i8, i8* %scevgep337.2905, align 1
  %conv89.i.2906 = zext i8 %144 to i32
  %xor90.i.2907 = xor i32 %conv84.i.2904, %conv89.i.2906
  %conv91.i.2908 = trunc i32 %xor90.i.2907 to i8
  %scevgep340.2909 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %136, i64 0, i64 0, i64 0
  store i8 %conv91.i.2908, i8* %scevgep340.2909, align 1
  %scevgep321.1.2 = getelementptr i8, i8* %x, i64 1
  %145 = load i8, i8* %scevgep321.1.2, align 1
  %conv44.i.1.2 = zext i8 %145 to i32
  %scevgep324.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %132, i64 0, i64 0, i64 1
  %146 = load i8, i8* %scevgep324.1.2, align 1
  %conv49.i.1.2 = zext i8 %146 to i32
  %xor.i73.1.2 = xor i32 %conv44.i.1.2, %conv49.i.1.2
  %conv50.i.1.2 = trunc i32 %xor.i73.1.2 to i8
  %scevgep328.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %133, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.2, i8* %scevgep328.1.2, align 1
  %147 = load i8, i8* %arrayidx56.i.2, align 1
  %conv57.i.1.2 = zext i8 %147 to i32
  %xor58.i.1.2 = xor i32 %conv57.i.1.2, 1
  %conv59.i.1.2 = trunc i32 %xor58.i.1.2 to i8
  %scevgep325.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %132, i64 0, i64 0, i64 1
  %148 = load i8, i8* %scevgep325.1.2, align 1
  %call64.i.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.2, i8 zeroext %148) #3
  %scevgep332.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %134, i64 0, i64 0, i64 1
  store i8 %call64.i.1.2, i8* %scevgep332.1.2, align 1
  %149 = load i8, i8* %arrayidx70.i.2, align 1
  %scevgep329.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %133, i64 0, i64 0, i64 1
  %150 = load i8, i8* %scevgep329.1.2, align 1
  %call75.i.1.2 = call zeroext i8 @mult(i8 zeroext %149, i8 zeroext %150) #3
  %scevgep336.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %135, i64 0, i64 0, i64 1
  store i8 %call75.i.1.2, i8* %scevgep336.1.2, align 1
  %scevgep333.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %134, i64 0, i64 0, i64 1
  %151 = load i8, i8* %scevgep333.1.2, align 1
  %conv84.i.1.2 = zext i8 %151 to i32
  %scevgep337.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %135, i64 0, i64 0, i64 1
  %152 = load i8, i8* %scevgep337.1.2, align 1
  %conv89.i.1.2 = zext i8 %152 to i32
  %xor90.i.1.2 = xor i32 %conv84.i.1.2, %conv89.i.1.2
  %conv91.i.1.2 = trunc i32 %xor90.i.1.2 to i8
  %scevgep340.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %136, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.2, i8* %scevgep340.1.2, align 1
  %scevgep321.3.2 = getelementptr i8, i8* %x, i64 3
  %153 = load i8, i8* %scevgep321.3.2, align 1
  %conv44.i.3.2 = zext i8 %153 to i32
  %scevgep324.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %132, i64 0, i64 0, i64 3
  %154 = load i8, i8* %scevgep324.3.2, align 1
  %conv49.i.3.2 = zext i8 %154 to i32
  %xor.i73.3.2 = xor i32 %conv44.i.3.2, %conv49.i.3.2
  %conv50.i.3.2 = trunc i32 %xor.i73.3.2 to i8
  %scevgep328.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %133, i64 0, i64 0, i64 3
  store i8 %conv50.i.3.2, i8* %scevgep328.3.2, align 1
  %155 = load i8, i8* %arrayidx56.i.2, align 1
  %conv57.i.3.2 = zext i8 %155 to i32
  %xor58.i.3.2 = xor i32 %conv57.i.3.2, 1
  %conv59.i.3.2 = trunc i32 %xor58.i.3.2 to i8
  %scevgep325.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %132, i64 0, i64 0, i64 3
  %156 = load i8, i8* %scevgep325.3.2, align 1
  %call64.i.3.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.3.2, i8 zeroext %156) #3
  %scevgep332.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %134, i64 0, i64 0, i64 3
  store i8 %call64.i.3.2, i8* %scevgep332.3.2, align 1
  %157 = load i8, i8* %arrayidx70.i.2, align 1
  %scevgep329.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %133, i64 0, i64 0, i64 3
  %158 = load i8, i8* %scevgep329.3.2, align 1
  %call75.i.3.2 = call zeroext i8 @mult(i8 zeroext %157, i8 zeroext %158) #3
  %scevgep336.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %135, i64 0, i64 0, i64 3
  store i8 %call75.i.3.2, i8* %scevgep336.3.2, align 1
  %scevgep333.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %134, i64 0, i64 0, i64 3
  %159 = load i8, i8* %scevgep333.3.2, align 1
  %conv84.i.3.2 = zext i8 %159 to i32
  %scevgep337.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %135, i64 0, i64 0, i64 3
  %160 = load i8, i8* %scevgep337.3.2, align 1
  %conv89.i.3.2 = zext i8 %160 to i32
  %xor90.i.3.2 = xor i32 %conv84.i.3.2, %conv89.i.3.2
  %conv91.i.3.2 = trunc i32 %xor90.i.3.2 to i8
  %scevgep340.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %136, i64 0, i64 0, i64 3
  store i8 %conv91.i.3.2, i8* %scevgep340.3.2, align 1
  %scevgep321.4.2 = getelementptr i8, i8* %x, i64 4
  %161 = load i8, i8* %scevgep321.4.2, align 1
  %conv44.i.4.2 = zext i8 %161 to i32
  %scevgep324.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %132, i64 0, i64 0, i64 4
  %162 = load i8, i8* %scevgep324.4.2, align 1
  %conv49.i.4.2 = zext i8 %162 to i32
  %xor.i73.4.2 = xor i32 %conv44.i.4.2, %conv49.i.4.2
  %conv50.i.4.2 = trunc i32 %xor.i73.4.2 to i8
  %scevgep328.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %133, i64 0, i64 0, i64 4
  store i8 %conv50.i.4.2, i8* %scevgep328.4.2, align 1
  %163 = load i8, i8* %arrayidx56.i.2, align 1
  %conv57.i.4.2 = zext i8 %163 to i32
  %xor58.i.4.2 = xor i32 %conv57.i.4.2, 1
  %conv59.i.4.2 = trunc i32 %xor58.i.4.2 to i8
  %scevgep325.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %132, i64 0, i64 0, i64 4
  %164 = load i8, i8* %scevgep325.4.2, align 1
  %call64.i.4.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.4.2, i8 zeroext %164) #3
  %scevgep332.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %134, i64 0, i64 0, i64 4
  store i8 %call64.i.4.2, i8* %scevgep332.4.2, align 1
  %165 = load i8, i8* %arrayidx70.i.2, align 1
  %scevgep329.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %133, i64 0, i64 0, i64 4
  %166 = load i8, i8* %scevgep329.4.2, align 1
  %call75.i.4.2 = call zeroext i8 @mult(i8 zeroext %165, i8 zeroext %166) #3
  %scevgep336.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %135, i64 0, i64 0, i64 4
  store i8 %call75.i.4.2, i8* %scevgep336.4.2, align 1
  %scevgep333.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %134, i64 0, i64 0, i64 4
  %167 = load i8, i8* %scevgep333.4.2, align 1
  %conv84.i.4.2 = zext i8 %167 to i32
  %scevgep337.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %135, i64 0, i64 0, i64 4
  %168 = load i8, i8* %scevgep337.4.2, align 1
  %conv89.i.4.2 = zext i8 %168 to i32
  %xor90.i.4.2 = xor i32 %conv84.i.4.2, %conv89.i.4.2
  %conv91.i.4.2 = trunc i32 %xor90.i.4.2 to i8
  %scevgep340.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %136, i64 0, i64 0, i64 4
  store i8 %conv91.i.4.2, i8* %scevgep340.4.2, align 1
  %scevgep323.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %132, i64 0, i64 1, i64 0
  %169 = bitcast i8* %scevgep323.2 to [5 x [5 x i8]]*
  %scevgep327.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %133, i64 0, i64 1, i64 0
  %170 = bitcast i8* %scevgep327.2 to [5 x [5 x i8]]*
  %scevgep331.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %134, i64 0, i64 1, i64 0
  %171 = bitcast i8* %scevgep331.2 to [5 x [5 x i8]]*
  %scevgep335.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %135, i64 0, i64 1, i64 0
  %172 = bitcast i8* %scevgep335.2 to [5 x [5 x i8]]*
  %scevgep339.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %136, i64 0, i64 1, i64 0
  %173 = bitcast i8* %scevgep339.2 to [5 x [5 x i8]]*
  %arrayidx56.i.3 = getelementptr inbounds i8, i8* %arraydecay6, i64 3
  %arrayidx70.i.3 = getelementptr inbounds i8, i8* %arraydecay6, i64 3
  %174 = load i8, i8* %x, align 1
  %conv44.i.3914 = zext i8 %174 to i32
  %scevgep324.3915 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %169, i64 0, i64 0, i64 0
  %175 = load i8, i8* %scevgep324.3915, align 1
  %conv49.i.3916 = zext i8 %175 to i32
  %xor.i73.3917 = xor i32 %conv44.i.3914, %conv49.i.3916
  %conv50.i.3918 = trunc i32 %xor.i73.3917 to i8
  %scevgep328.3919 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %170, i64 0, i64 0, i64 0
  store i8 %conv50.i.3918, i8* %scevgep328.3919, align 1
  %176 = load i8, i8* %arrayidx56.i.3, align 1
  %conv57.i.3920 = zext i8 %176 to i32
  %xor58.i.3921 = xor i32 %conv57.i.3920, 1
  %conv59.i.3922 = trunc i32 %xor58.i.3921 to i8
  %scevgep325.3923 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %169, i64 0, i64 0, i64 0
  %177 = load i8, i8* %scevgep325.3923, align 1
  %call64.i.3924 = call zeroext i8 @mult(i8 zeroext %conv59.i.3922, i8 zeroext %177) #3
  %scevgep332.3925 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %171, i64 0, i64 0, i64 0
  store i8 %call64.i.3924, i8* %scevgep332.3925, align 1
  %178 = load i8, i8* %arrayidx70.i.3, align 1
  %scevgep329.3926 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %170, i64 0, i64 0, i64 0
  %179 = load i8, i8* %scevgep329.3926, align 1
  %call75.i.3927 = call zeroext i8 @mult(i8 zeroext %178, i8 zeroext %179) #3
  %scevgep336.3928 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %172, i64 0, i64 0, i64 0
  store i8 %call75.i.3927, i8* %scevgep336.3928, align 1
  %scevgep333.3929 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %171, i64 0, i64 0, i64 0
  %180 = load i8, i8* %scevgep333.3929, align 1
  %conv84.i.3930 = zext i8 %180 to i32
  %scevgep337.3931 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %172, i64 0, i64 0, i64 0
  %181 = load i8, i8* %scevgep337.3931, align 1
  %conv89.i.3932 = zext i8 %181 to i32
  %xor90.i.3933 = xor i32 %conv84.i.3930, %conv89.i.3932
  %conv91.i.3934 = trunc i32 %xor90.i.3933 to i8
  %scevgep340.3935 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %173, i64 0, i64 0, i64 0
  store i8 %conv91.i.3934, i8* %scevgep340.3935, align 1
  %scevgep321.1.3 = getelementptr i8, i8* %x, i64 1
  %182 = load i8, i8* %scevgep321.1.3, align 1
  %conv44.i.1.3 = zext i8 %182 to i32
  %scevgep324.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %169, i64 0, i64 0, i64 1
  %183 = load i8, i8* %scevgep324.1.3, align 1
  %conv49.i.1.3 = zext i8 %183 to i32
  %xor.i73.1.3 = xor i32 %conv44.i.1.3, %conv49.i.1.3
  %conv50.i.1.3 = trunc i32 %xor.i73.1.3 to i8
  %scevgep328.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %170, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.3, i8* %scevgep328.1.3, align 1
  %184 = load i8, i8* %arrayidx56.i.3, align 1
  %conv57.i.1.3 = zext i8 %184 to i32
  %xor58.i.1.3 = xor i32 %conv57.i.1.3, 1
  %conv59.i.1.3 = trunc i32 %xor58.i.1.3 to i8
  %scevgep325.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %169, i64 0, i64 0, i64 1
  %185 = load i8, i8* %scevgep325.1.3, align 1
  %call64.i.1.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.3, i8 zeroext %185) #3
  %scevgep332.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %171, i64 0, i64 0, i64 1
  store i8 %call64.i.1.3, i8* %scevgep332.1.3, align 1
  %186 = load i8, i8* %arrayidx70.i.3, align 1
  %scevgep329.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %170, i64 0, i64 0, i64 1
  %187 = load i8, i8* %scevgep329.1.3, align 1
  %call75.i.1.3 = call zeroext i8 @mult(i8 zeroext %186, i8 zeroext %187) #3
  %scevgep336.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %172, i64 0, i64 0, i64 1
  store i8 %call75.i.1.3, i8* %scevgep336.1.3, align 1
  %scevgep333.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %171, i64 0, i64 0, i64 1
  %188 = load i8, i8* %scevgep333.1.3, align 1
  %conv84.i.1.3 = zext i8 %188 to i32
  %scevgep337.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %172, i64 0, i64 0, i64 1
  %189 = load i8, i8* %scevgep337.1.3, align 1
  %conv89.i.1.3 = zext i8 %189 to i32
  %xor90.i.1.3 = xor i32 %conv84.i.1.3, %conv89.i.1.3
  %conv91.i.1.3 = trunc i32 %xor90.i.1.3 to i8
  %scevgep340.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %173, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.3, i8* %scevgep340.1.3, align 1
  %scevgep321.2.3 = getelementptr i8, i8* %x, i64 2
  %190 = load i8, i8* %scevgep321.2.3, align 1
  %conv44.i.2.3 = zext i8 %190 to i32
  %scevgep324.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %169, i64 0, i64 0, i64 2
  %191 = load i8, i8* %scevgep324.2.3, align 1
  %conv49.i.2.3 = zext i8 %191 to i32
  %xor.i73.2.3 = xor i32 %conv44.i.2.3, %conv49.i.2.3
  %conv50.i.2.3 = trunc i32 %xor.i73.2.3 to i8
  %scevgep328.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %170, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.3, i8* %scevgep328.2.3, align 1
  %192 = load i8, i8* %arrayidx56.i.3, align 1
  %conv57.i.2.3 = zext i8 %192 to i32
  %xor58.i.2.3 = xor i32 %conv57.i.2.3, 1
  %conv59.i.2.3 = trunc i32 %xor58.i.2.3 to i8
  %scevgep325.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %169, i64 0, i64 0, i64 2
  %193 = load i8, i8* %scevgep325.2.3, align 1
  %call64.i.2.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.3, i8 zeroext %193) #3
  %scevgep332.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %171, i64 0, i64 0, i64 2
  store i8 %call64.i.2.3, i8* %scevgep332.2.3, align 1
  %194 = load i8, i8* %arrayidx70.i.3, align 1
  %scevgep329.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %170, i64 0, i64 0, i64 2
  %195 = load i8, i8* %scevgep329.2.3, align 1
  %call75.i.2.3 = call zeroext i8 @mult(i8 zeroext %194, i8 zeroext %195) #3
  %scevgep336.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %172, i64 0, i64 0, i64 2
  store i8 %call75.i.2.3, i8* %scevgep336.2.3, align 1
  %scevgep333.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %171, i64 0, i64 0, i64 2
  %196 = load i8, i8* %scevgep333.2.3, align 1
  %conv84.i.2.3 = zext i8 %196 to i32
  %scevgep337.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %172, i64 0, i64 0, i64 2
  %197 = load i8, i8* %scevgep337.2.3, align 1
  %conv89.i.2.3 = zext i8 %197 to i32
  %xor90.i.2.3 = xor i32 %conv84.i.2.3, %conv89.i.2.3
  %conv91.i.2.3 = trunc i32 %xor90.i.2.3 to i8
  %scevgep340.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %173, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.3, i8* %scevgep340.2.3, align 1
  %scevgep321.4.3 = getelementptr i8, i8* %x, i64 4
  %198 = load i8, i8* %scevgep321.4.3, align 1
  %conv44.i.4.3 = zext i8 %198 to i32
  %scevgep324.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %169, i64 0, i64 0, i64 4
  %199 = load i8, i8* %scevgep324.4.3, align 1
  %conv49.i.4.3 = zext i8 %199 to i32
  %xor.i73.4.3 = xor i32 %conv44.i.4.3, %conv49.i.4.3
  %conv50.i.4.3 = trunc i32 %xor.i73.4.3 to i8
  %scevgep328.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %170, i64 0, i64 0, i64 4
  store i8 %conv50.i.4.3, i8* %scevgep328.4.3, align 1
  %200 = load i8, i8* %arrayidx56.i.3, align 1
  %conv57.i.4.3 = zext i8 %200 to i32
  %xor58.i.4.3 = xor i32 %conv57.i.4.3, 1
  %conv59.i.4.3 = trunc i32 %xor58.i.4.3 to i8
  %scevgep325.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %169, i64 0, i64 0, i64 4
  %201 = load i8, i8* %scevgep325.4.3, align 1
  %call64.i.4.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.4.3, i8 zeroext %201) #3
  %scevgep332.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %171, i64 0, i64 0, i64 4
  store i8 %call64.i.4.3, i8* %scevgep332.4.3, align 1
  %202 = load i8, i8* %arrayidx70.i.3, align 1
  %scevgep329.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %170, i64 0, i64 0, i64 4
  %203 = load i8, i8* %scevgep329.4.3, align 1
  %call75.i.4.3 = call zeroext i8 @mult(i8 zeroext %202, i8 zeroext %203) #3
  %scevgep336.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %172, i64 0, i64 0, i64 4
  store i8 %call75.i.4.3, i8* %scevgep336.4.3, align 1
  %scevgep333.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %171, i64 0, i64 0, i64 4
  %204 = load i8, i8* %scevgep333.4.3, align 1
  %conv84.i.4.3 = zext i8 %204 to i32
  %scevgep337.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %172, i64 0, i64 0, i64 4
  %205 = load i8, i8* %scevgep337.4.3, align 1
  %conv89.i.4.3 = zext i8 %205 to i32
  %xor90.i.4.3 = xor i32 %conv84.i.4.3, %conv89.i.4.3
  %conv91.i.4.3 = trunc i32 %xor90.i.4.3 to i8
  %scevgep340.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %173, i64 0, i64 0, i64 4
  store i8 %conv91.i.4.3, i8* %scevgep340.4.3, align 1
  %scevgep323.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %169, i64 0, i64 1, i64 0
  %206 = bitcast i8* %scevgep323.3 to [5 x [5 x i8]]*
  %scevgep327.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %170, i64 0, i64 1, i64 0
  %207 = bitcast i8* %scevgep327.3 to [5 x [5 x i8]]*
  %scevgep331.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %171, i64 0, i64 1, i64 0
  %208 = bitcast i8* %scevgep331.3 to [5 x [5 x i8]]*
  %scevgep335.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %172, i64 0, i64 1, i64 0
  %209 = bitcast i8* %scevgep335.3 to [5 x [5 x i8]]*
  %scevgep339.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %173, i64 0, i64 1, i64 0
  %210 = bitcast i8* %scevgep339.3 to [5 x [5 x i8]]*
  %arrayidx56.i.4 = getelementptr inbounds i8, i8* %arraydecay6, i64 4
  %arrayidx70.i.4 = getelementptr inbounds i8, i8* %arraydecay6, i64 4
  %211 = load i8, i8* %x, align 1
  %conv44.i.4940 = zext i8 %211 to i32
  %scevgep324.4941 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %206, i64 0, i64 0, i64 0
  %212 = load i8, i8* %scevgep324.4941, align 1
  %conv49.i.4942 = zext i8 %212 to i32
  %xor.i73.4943 = xor i32 %conv44.i.4940, %conv49.i.4942
  %conv50.i.4944 = trunc i32 %xor.i73.4943 to i8
  %scevgep328.4945 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %207, i64 0, i64 0, i64 0
  store i8 %conv50.i.4944, i8* %scevgep328.4945, align 1
  %213 = load i8, i8* %arrayidx56.i.4, align 1
  %conv57.i.4946 = zext i8 %213 to i32
  %xor58.i.4947 = xor i32 %conv57.i.4946, 1
  %conv59.i.4948 = trunc i32 %xor58.i.4947 to i8
  %scevgep325.4949 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %206, i64 0, i64 0, i64 0
  %214 = load i8, i8* %scevgep325.4949, align 1
  %call64.i.4950 = call zeroext i8 @mult(i8 zeroext %conv59.i.4948, i8 zeroext %214) #3
  %scevgep332.4951 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %208, i64 0, i64 0, i64 0
  store i8 %call64.i.4950, i8* %scevgep332.4951, align 1
  %215 = load i8, i8* %arrayidx70.i.4, align 1
  %scevgep329.4952 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %207, i64 0, i64 0, i64 0
  %216 = load i8, i8* %scevgep329.4952, align 1
  %call75.i.4953 = call zeroext i8 @mult(i8 zeroext %215, i8 zeroext %216) #3
  %scevgep336.4954 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %209, i64 0, i64 0, i64 0
  store i8 %call75.i.4953, i8* %scevgep336.4954, align 1
  %scevgep333.4955 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %208, i64 0, i64 0, i64 0
  %217 = load i8, i8* %scevgep333.4955, align 1
  %conv84.i.4956 = zext i8 %217 to i32
  %scevgep337.4957 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %209, i64 0, i64 0, i64 0
  %218 = load i8, i8* %scevgep337.4957, align 1
  %conv89.i.4958 = zext i8 %218 to i32
  %xor90.i.4959 = xor i32 %conv84.i.4956, %conv89.i.4958
  %conv91.i.4960 = trunc i32 %xor90.i.4959 to i8
  %scevgep340.4961 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %210, i64 0, i64 0, i64 0
  store i8 %conv91.i.4960, i8* %scevgep340.4961, align 1
  %scevgep321.1.4 = getelementptr i8, i8* %x, i64 1
  %219 = load i8, i8* %scevgep321.1.4, align 1
  %conv44.i.1.4 = zext i8 %219 to i32
  %scevgep324.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %206, i64 0, i64 0, i64 1
  %220 = load i8, i8* %scevgep324.1.4, align 1
  %conv49.i.1.4 = zext i8 %220 to i32
  %xor.i73.1.4 = xor i32 %conv44.i.1.4, %conv49.i.1.4
  %conv50.i.1.4 = trunc i32 %xor.i73.1.4 to i8
  %scevgep328.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %207, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.4, i8* %scevgep328.1.4, align 1
  %221 = load i8, i8* %arrayidx56.i.4, align 1
  %conv57.i.1.4 = zext i8 %221 to i32
  %xor58.i.1.4 = xor i32 %conv57.i.1.4, 1
  %conv59.i.1.4 = trunc i32 %xor58.i.1.4 to i8
  %scevgep325.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %206, i64 0, i64 0, i64 1
  %222 = load i8, i8* %scevgep325.1.4, align 1
  %call64.i.1.4 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.4, i8 zeroext %222) #3
  %scevgep332.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %208, i64 0, i64 0, i64 1
  store i8 %call64.i.1.4, i8* %scevgep332.1.4, align 1
  %223 = load i8, i8* %arrayidx70.i.4, align 1
  %scevgep329.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %207, i64 0, i64 0, i64 1
  %224 = load i8, i8* %scevgep329.1.4, align 1
  %call75.i.1.4 = call zeroext i8 @mult(i8 zeroext %223, i8 zeroext %224) #3
  %scevgep336.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %209, i64 0, i64 0, i64 1
  store i8 %call75.i.1.4, i8* %scevgep336.1.4, align 1
  %scevgep333.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %208, i64 0, i64 0, i64 1
  %225 = load i8, i8* %scevgep333.1.4, align 1
  %conv84.i.1.4 = zext i8 %225 to i32
  %scevgep337.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %209, i64 0, i64 0, i64 1
  %226 = load i8, i8* %scevgep337.1.4, align 1
  %conv89.i.1.4 = zext i8 %226 to i32
  %xor90.i.1.4 = xor i32 %conv84.i.1.4, %conv89.i.1.4
  %conv91.i.1.4 = trunc i32 %xor90.i.1.4 to i8
  %scevgep340.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %210, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.4, i8* %scevgep340.1.4, align 1
  %scevgep321.2.4 = getelementptr i8, i8* %x, i64 2
  %227 = load i8, i8* %scevgep321.2.4, align 1
  %conv44.i.2.4 = zext i8 %227 to i32
  %scevgep324.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %206, i64 0, i64 0, i64 2
  %228 = load i8, i8* %scevgep324.2.4, align 1
  %conv49.i.2.4 = zext i8 %228 to i32
  %xor.i73.2.4 = xor i32 %conv44.i.2.4, %conv49.i.2.4
  %conv50.i.2.4 = trunc i32 %xor.i73.2.4 to i8
  %scevgep328.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %207, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.4, i8* %scevgep328.2.4, align 1
  %229 = load i8, i8* %arrayidx56.i.4, align 1
  %conv57.i.2.4 = zext i8 %229 to i32
  %xor58.i.2.4 = xor i32 %conv57.i.2.4, 1
  %conv59.i.2.4 = trunc i32 %xor58.i.2.4 to i8
  %scevgep325.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %206, i64 0, i64 0, i64 2
  %230 = load i8, i8* %scevgep325.2.4, align 1
  %call64.i.2.4 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.4, i8 zeroext %230) #3
  %scevgep332.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %208, i64 0, i64 0, i64 2
  store i8 %call64.i.2.4, i8* %scevgep332.2.4, align 1
  %231 = load i8, i8* %arrayidx70.i.4, align 1
  %scevgep329.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %207, i64 0, i64 0, i64 2
  %232 = load i8, i8* %scevgep329.2.4, align 1
  %call75.i.2.4 = call zeroext i8 @mult(i8 zeroext %231, i8 zeroext %232) #3
  %scevgep336.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %209, i64 0, i64 0, i64 2
  store i8 %call75.i.2.4, i8* %scevgep336.2.4, align 1
  %scevgep333.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %208, i64 0, i64 0, i64 2
  %233 = load i8, i8* %scevgep333.2.4, align 1
  %conv84.i.2.4 = zext i8 %233 to i32
  %scevgep337.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %209, i64 0, i64 0, i64 2
  %234 = load i8, i8* %scevgep337.2.4, align 1
  %conv89.i.2.4 = zext i8 %234 to i32
  %xor90.i.2.4 = xor i32 %conv84.i.2.4, %conv89.i.2.4
  %conv91.i.2.4 = trunc i32 %xor90.i.2.4 to i8
  %scevgep340.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %210, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.4, i8* %scevgep340.2.4, align 1
  %scevgep321.3.4 = getelementptr i8, i8* %x, i64 3
  %235 = load i8, i8* %scevgep321.3.4, align 1
  %conv44.i.3.4 = zext i8 %235 to i32
  %scevgep324.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %206, i64 0, i64 0, i64 3
  %236 = load i8, i8* %scevgep324.3.4, align 1
  %conv49.i.3.4 = zext i8 %236 to i32
  %xor.i73.3.4 = xor i32 %conv44.i.3.4, %conv49.i.3.4
  %conv50.i.3.4 = trunc i32 %xor.i73.3.4 to i8
  %scevgep328.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %207, i64 0, i64 0, i64 3
  store i8 %conv50.i.3.4, i8* %scevgep328.3.4, align 1
  %237 = load i8, i8* %arrayidx56.i.4, align 1
  %conv57.i.3.4 = zext i8 %237 to i32
  %xor58.i.3.4 = xor i32 %conv57.i.3.4, 1
  %conv59.i.3.4 = trunc i32 %xor58.i.3.4 to i8
  %scevgep325.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %206, i64 0, i64 0, i64 3
  %238 = load i8, i8* %scevgep325.3.4, align 1
  %call64.i.3.4 = call zeroext i8 @mult(i8 zeroext %conv59.i.3.4, i8 zeroext %238) #3
  %scevgep332.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %208, i64 0, i64 0, i64 3
  store i8 %call64.i.3.4, i8* %scevgep332.3.4, align 1
  %239 = load i8, i8* %arrayidx70.i.4, align 1
  %scevgep329.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %207, i64 0, i64 0, i64 3
  %240 = load i8, i8* %scevgep329.3.4, align 1
  %call75.i.3.4 = call zeroext i8 @mult(i8 zeroext %239, i8 zeroext %240) #3
  %scevgep336.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %209, i64 0, i64 0, i64 3
  store i8 %call75.i.3.4, i8* %scevgep336.3.4, align 1
  %scevgep333.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %208, i64 0, i64 0, i64 3
  %241 = load i8, i8* %scevgep333.3.4, align 1
  %conv84.i.3.4 = zext i8 %241 to i32
  %scevgep337.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %209, i64 0, i64 0, i64 3
  %242 = load i8, i8* %scevgep337.3.4, align 1
  %conv89.i.3.4 = zext i8 %242 to i32
  %xor90.i.3.4 = xor i32 %conv84.i.3.4, %conv89.i.3.4
  %conv91.i.3.4 = trunc i32 %xor90.i.3.4 to i8
  %scevgep340.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %210, i64 0, i64 0, i64 3
  store i8 %conv91.i.3.4, i8* %scevgep340.3.4, align 1
  %243 = load i8, i8* %arraydecay6, align 1
  %244 = load i8, i8* %x, align 1
  %call111.i = call zeroext i8 @mult(i8 zeroext %243, i8 zeroext %244) #3
  store i8 %call111.i, i8* %arraydecay7, align 1
  %scevgep311.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 1
  %245 = load i8, i8* %scevgep311.1, align 1
  %conv126.i.1 = zext i8 %245 to i32
  %246 = load i8, i8* %arraydecay7, align 1
  %conv129.i.1 = zext i8 %246 to i32
  %xor130.i.1 = xor i32 %conv129.i.1, %conv126.i.1
  %conv131.i.1 = trunc i32 %xor130.i.1 to i8
  store i8 %conv131.i.1, i8* %arraydecay7, align 1
  %scevgep311.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 2
  %247 = load i8, i8* %scevgep311.2, align 1
  %conv126.i.2 = zext i8 %247 to i32
  %248 = load i8, i8* %arraydecay7, align 1
  %conv129.i.2 = zext i8 %248 to i32
  %xor130.i.2 = xor i32 %conv129.i.2, %conv126.i.2
  %conv131.i.2 = trunc i32 %xor130.i.2 to i8
  store i8 %conv131.i.2, i8* %arraydecay7, align 1
  %scevgep311.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 3
  %249 = load i8, i8* %scevgep311.3, align 1
  %conv126.i.3 = zext i8 %249 to i32
  %250 = load i8, i8* %arraydecay7, align 1
  %conv129.i.3 = zext i8 %250 to i32
  %xor130.i.3 = xor i32 %conv129.i.3, %conv126.i.3
  %conv131.i.3 = trunc i32 %xor130.i.3 to i8
  store i8 %conv131.i.3, i8* %arraydecay7, align 1
  %scevgep311.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 4
  %251 = load i8, i8* %scevgep311.4, align 1
  %conv126.i.4 = zext i8 %251 to i32
  %252 = load i8, i8* %arraydecay7, align 1
  %conv129.i.4 = zext i8 %252 to i32
  %xor130.i.4 = xor i32 %conv129.i.4, %conv126.i.4
  %conv131.i.4 = trunc i32 %xor130.i.4 to i8
  store i8 %conv131.i.4, i8* %arraydecay7, align 1
  %scevgep310 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 1, i64 0
  %253 = bitcast i8* %scevgep310 to [5 x [5 x i8]]*
  %arrayidx108.i.1 = getelementptr inbounds i8, i8* %arraydecay6, i64 1
  %254 = load i8, i8* %arrayidx108.i.1, align 1
  %arrayidx110.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %255 = load i8, i8* %arrayidx110.i.1, align 1
  %call111.i.1 = call zeroext i8 @mult(i8 zeroext %254, i8 zeroext %255) #3
  %arrayidx113.i.1 = getelementptr inbounds i8, i8* %arraydecay7, i64 1
  store i8 %call111.i.1, i8* %arrayidx113.i.1, align 1
  %arrayidx128.i.1 = getelementptr inbounds i8, i8* %arraydecay7, i64 1
  %scevgep311.1826 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %253, i64 0, i64 0, i64 0
  %256 = load i8, i8* %scevgep311.1826, align 1
  %conv126.i.1827 = zext i8 %256 to i32
  %257 = load i8, i8* %arrayidx128.i.1, align 1
  %conv129.i.1828 = zext i8 %257 to i32
  %xor130.i.1829 = xor i32 %conv129.i.1828, %conv126.i.1827
  %conv131.i.1830 = trunc i32 %xor130.i.1829 to i8
  store i8 %conv131.i.1830, i8* %arrayidx128.i.1, align 1
  %scevgep311.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %253, i64 0, i64 0, i64 2
  %258 = load i8, i8* %scevgep311.2.1, align 1
  %conv126.i.2.1 = zext i8 %258 to i32
  %259 = load i8, i8* %arrayidx128.i.1, align 1
  %conv129.i.2.1 = zext i8 %259 to i32
  %xor130.i.2.1 = xor i32 %conv129.i.2.1, %conv126.i.2.1
  %conv131.i.2.1 = trunc i32 %xor130.i.2.1 to i8
  store i8 %conv131.i.2.1, i8* %arrayidx128.i.1, align 1
  %scevgep311.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %253, i64 0, i64 0, i64 3
  %260 = load i8, i8* %scevgep311.3.1, align 1
  %conv126.i.3.1 = zext i8 %260 to i32
  %261 = load i8, i8* %arrayidx128.i.1, align 1
  %conv129.i.3.1 = zext i8 %261 to i32
  %xor130.i.3.1 = xor i32 %conv129.i.3.1, %conv126.i.3.1
  %conv131.i.3.1 = trunc i32 %xor130.i.3.1 to i8
  store i8 %conv131.i.3.1, i8* %arrayidx128.i.1, align 1
  %scevgep311.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %253, i64 0, i64 0, i64 4
  %262 = load i8, i8* %scevgep311.4.1, align 1
  %conv126.i.4.1 = zext i8 %262 to i32
  %263 = load i8, i8* %arrayidx128.i.1, align 1
  %conv129.i.4.1 = zext i8 %263 to i32
  %xor130.i.4.1 = xor i32 %conv129.i.4.1, %conv126.i.4.1
  %conv131.i.4.1 = trunc i32 %xor130.i.4.1 to i8
  store i8 %conv131.i.4.1, i8* %arrayidx128.i.1, align 1
  %scevgep310.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %253, i64 0, i64 1, i64 0
  %264 = bitcast i8* %scevgep310.1 to [5 x [5 x i8]]*
  %arrayidx108.i.2 = getelementptr inbounds i8, i8* %arraydecay6, i64 2
  %265 = load i8, i8* %arrayidx108.i.2, align 1
  %arrayidx110.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %266 = load i8, i8* %arrayidx110.i.2, align 1
  %call111.i.2 = call zeroext i8 @mult(i8 zeroext %265, i8 zeroext %266) #3
  %arrayidx113.i.2 = getelementptr inbounds i8, i8* %arraydecay7, i64 2
  store i8 %call111.i.2, i8* %arrayidx113.i.2, align 1
  %arrayidx128.i.2 = getelementptr inbounds i8, i8* %arraydecay7, i64 2
  %scevgep311.2835 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %264, i64 0, i64 0, i64 0
  %267 = load i8, i8* %scevgep311.2835, align 1
  %conv126.i.2836 = zext i8 %267 to i32
  %268 = load i8, i8* %arrayidx128.i.2, align 1
  %conv129.i.2837 = zext i8 %268 to i32
  %xor130.i.2838 = xor i32 %conv129.i.2837, %conv126.i.2836
  %conv131.i.2839 = trunc i32 %xor130.i.2838 to i8
  store i8 %conv131.i.2839, i8* %arrayidx128.i.2, align 1
  %scevgep311.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %264, i64 0, i64 0, i64 1
  %269 = load i8, i8* %scevgep311.1.2, align 1
  %conv126.i.1.2 = zext i8 %269 to i32
  %270 = load i8, i8* %arrayidx128.i.2, align 1
  %conv129.i.1.2 = zext i8 %270 to i32
  %xor130.i.1.2 = xor i32 %conv129.i.1.2, %conv126.i.1.2
  %conv131.i.1.2 = trunc i32 %xor130.i.1.2 to i8
  store i8 %conv131.i.1.2, i8* %arrayidx128.i.2, align 1
  %scevgep311.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %264, i64 0, i64 0, i64 3
  %271 = load i8, i8* %scevgep311.3.2, align 1
  %conv126.i.3.2 = zext i8 %271 to i32
  %272 = load i8, i8* %arrayidx128.i.2, align 1
  %conv129.i.3.2 = zext i8 %272 to i32
  %xor130.i.3.2 = xor i32 %conv129.i.3.2, %conv126.i.3.2
  %conv131.i.3.2 = trunc i32 %xor130.i.3.2 to i8
  store i8 %conv131.i.3.2, i8* %arrayidx128.i.2, align 1
  %scevgep311.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %264, i64 0, i64 0, i64 4
  %273 = load i8, i8* %scevgep311.4.2, align 1
  %conv126.i.4.2 = zext i8 %273 to i32
  %274 = load i8, i8* %arrayidx128.i.2, align 1
  %conv129.i.4.2 = zext i8 %274 to i32
  %xor130.i.4.2 = xor i32 %conv129.i.4.2, %conv126.i.4.2
  %conv131.i.4.2 = trunc i32 %xor130.i.4.2 to i8
  store i8 %conv131.i.4.2, i8* %arrayidx128.i.2, align 1
  %scevgep310.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %264, i64 0, i64 1, i64 0
  %275 = bitcast i8* %scevgep310.2 to [5 x [5 x i8]]*
  %arrayidx108.i.3 = getelementptr inbounds i8, i8* %arraydecay6, i64 3
  %276 = load i8, i8* %arrayidx108.i.3, align 1
  %arrayidx110.i.3 = getelementptr inbounds i8, i8* %x, i64 3
  %277 = load i8, i8* %arrayidx110.i.3, align 1
  %call111.i.3 = call zeroext i8 @mult(i8 zeroext %276, i8 zeroext %277) #3
  %arrayidx113.i.3 = getelementptr inbounds i8, i8* %arraydecay7, i64 3
  store i8 %call111.i.3, i8* %arrayidx113.i.3, align 1
  %arrayidx128.i.3 = getelementptr inbounds i8, i8* %arraydecay7, i64 3
  %scevgep311.3844 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %275, i64 0, i64 0, i64 0
  %278 = load i8, i8* %scevgep311.3844, align 1
  %conv126.i.3845 = zext i8 %278 to i32
  %279 = load i8, i8* %arrayidx128.i.3, align 1
  %conv129.i.3846 = zext i8 %279 to i32
  %xor130.i.3847 = xor i32 %conv129.i.3846, %conv126.i.3845
  %conv131.i.3848 = trunc i32 %xor130.i.3847 to i8
  store i8 %conv131.i.3848, i8* %arrayidx128.i.3, align 1
  %scevgep311.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %275, i64 0, i64 0, i64 1
  %280 = load i8, i8* %scevgep311.1.3, align 1
  %conv126.i.1.3 = zext i8 %280 to i32
  %281 = load i8, i8* %arrayidx128.i.3, align 1
  %conv129.i.1.3 = zext i8 %281 to i32
  %xor130.i.1.3 = xor i32 %conv129.i.1.3, %conv126.i.1.3
  %conv131.i.1.3 = trunc i32 %xor130.i.1.3 to i8
  store i8 %conv131.i.1.3, i8* %arrayidx128.i.3, align 1
  %scevgep311.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %275, i64 0, i64 0, i64 2
  %282 = load i8, i8* %scevgep311.2.3, align 1
  %conv126.i.2.3 = zext i8 %282 to i32
  %283 = load i8, i8* %arrayidx128.i.3, align 1
  %conv129.i.2.3 = zext i8 %283 to i32
  %xor130.i.2.3 = xor i32 %conv129.i.2.3, %conv126.i.2.3
  %conv131.i.2.3 = trunc i32 %xor130.i.2.3 to i8
  store i8 %conv131.i.2.3, i8* %arrayidx128.i.3, align 1
  %scevgep311.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %275, i64 0, i64 0, i64 4
  %284 = load i8, i8* %scevgep311.4.3, align 1
  %conv126.i.4.3 = zext i8 %284 to i32
  %285 = load i8, i8* %arrayidx128.i.3, align 1
  %conv129.i.4.3 = zext i8 %285 to i32
  %xor130.i.4.3 = xor i32 %conv129.i.4.3, %conv126.i.4.3
  %conv131.i.4.3 = trunc i32 %xor130.i.4.3 to i8
  store i8 %conv131.i.4.3, i8* %arrayidx128.i.3, align 1
  %scevgep310.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %275, i64 0, i64 1, i64 0
  %286 = bitcast i8* %scevgep310.3 to [5 x [5 x i8]]*
  %arrayidx108.i.4 = getelementptr inbounds i8, i8* %arraydecay6, i64 4
  %287 = load i8, i8* %arrayidx108.i.4, align 1
  %arrayidx110.i.4 = getelementptr inbounds i8, i8* %x, i64 4
  %288 = load i8, i8* %arrayidx110.i.4, align 1
  %call111.i.4 = call zeroext i8 @mult(i8 zeroext %287, i8 zeroext %288) #3
  %arrayidx113.i.4 = getelementptr inbounds i8, i8* %arraydecay7, i64 4
  store i8 %call111.i.4, i8* %arrayidx113.i.4, align 1
  %arrayidx128.i.4 = getelementptr inbounds i8, i8* %arraydecay7, i64 4
  %scevgep311.4853 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %286, i64 0, i64 0, i64 0
  %289 = load i8, i8* %scevgep311.4853, align 1
  %conv126.i.4854 = zext i8 %289 to i32
  %290 = load i8, i8* %arrayidx128.i.4, align 1
  %conv129.i.4855 = zext i8 %290 to i32
  %xor130.i.4856 = xor i32 %conv129.i.4855, %conv126.i.4854
  %conv131.i.4857 = trunc i32 %xor130.i.4856 to i8
  store i8 %conv131.i.4857, i8* %arrayidx128.i.4, align 1
  %scevgep311.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %286, i64 0, i64 0, i64 1
  %291 = load i8, i8* %scevgep311.1.4, align 1
  %conv126.i.1.4 = zext i8 %291 to i32
  %292 = load i8, i8* %arrayidx128.i.4, align 1
  %conv129.i.1.4 = zext i8 %292 to i32
  %xor130.i.1.4 = xor i32 %conv129.i.1.4, %conv126.i.1.4
  %conv131.i.1.4 = trunc i32 %xor130.i.1.4 to i8
  store i8 %conv131.i.1.4, i8* %arrayidx128.i.4, align 1
  %scevgep311.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %286, i64 0, i64 0, i64 2
  %293 = load i8, i8* %scevgep311.2.4, align 1
  %conv126.i.2.4 = zext i8 %293 to i32
  %294 = load i8, i8* %arrayidx128.i.4, align 1
  %conv129.i.2.4 = zext i8 %294 to i32
  %xor130.i.2.4 = xor i32 %conv129.i.2.4, %conv126.i.2.4
  %conv131.i.2.4 = trunc i32 %xor130.i.2.4 to i8
  store i8 %conv131.i.2.4, i8* %arrayidx128.i.4, align 1
  %scevgep311.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %286, i64 0, i64 0, i64 3
  %295 = load i8, i8* %scevgep311.3.4, align 1
  %conv126.i.3.4 = zext i8 %295 to i32
  %296 = load i8, i8* %arrayidx128.i.4, align 1
  %conv129.i.3.4 = zext i8 %296 to i32
  %xor130.i.3.4 = xor i32 %conv129.i.3.4, %conv126.i.3.4
  %conv131.i.3.4 = trunc i32 %xor130.i.3.4 to i8
  store i8 %conv131.i.3.4, i8* %arrayidx128.i.4, align 1
  %call139.i = call zeroext i8 @mult(i8 zeroext %call.i52, i8 zeroext %call1.i) #3
  %conv140.i = zext i8 %call139.i to i32
  %scevgep301 = getelementptr [5 x i8], [5 x i8]* %u, i64 0, i64 0
  %297 = load i8, i8* %scevgep301, align 1
  %scevgep301.1 = getelementptr [5 x i8], [5 x i8]* %u, i64 0, i64 1
  %298 = load i8, i8* %scevgep301.1, align 1
  %conv.i.i172.i.1 = zext i8 %298 to i32
  %conv1.i.i173.i.1 = zext i8 %297 to i32
  %xor.i.i174.i.1 = xor i32 %conv1.i.i173.i.1, %conv.i.i172.i.1
  %conv2.i.i175.i.1 = trunc i32 %xor.i.i174.i.1 to i8
  %scevgep301.2 = getelementptr [5 x i8], [5 x i8]* %u, i64 0, i64 2
  %299 = load i8, i8* %scevgep301.2, align 1
  %conv.i.i172.i.2 = zext i8 %299 to i32
  %conv1.i.i173.i.2 = zext i8 %conv2.i.i175.i.1 to i32
  %xor.i.i174.i.2 = xor i32 %conv1.i.i173.i.2, %conv.i.i172.i.2
  %conv2.i.i175.i.2 = trunc i32 %xor.i.i174.i.2 to i8
  %scevgep301.3 = getelementptr [5 x i8], [5 x i8]* %u, i64 0, i64 3
  %300 = load i8, i8* %scevgep301.3, align 1
  %conv.i.i172.i.3 = zext i8 %300 to i32
  %conv1.i.i173.i.3 = zext i8 %conv2.i.i175.i.2 to i32
  %xor.i.i174.i.3 = xor i32 %conv1.i.i173.i.3, %conv.i.i172.i.3
  %conv2.i.i175.i.3 = trunc i32 %xor.i.i174.i.3 to i8
  %scevgep301.4 = getelementptr [5 x i8], [5 x i8]* %u, i64 0, i64 4
  %301 = load i8, i8* %scevgep301.4, align 1
  %conv.i.i172.i.4 = zext i8 %301 to i32
  %conv1.i.i173.i.4 = zext i8 %conv2.i.i175.i.3 to i32
  %xor.i.i174.i.4 = xor i32 %conv1.i.i173.i.4, %conv.i.i172.i.4
  %conv2.i.i175.i.4 = trunc i32 %xor.i.i174.i.4 to i8
  %conv142.i = zext i8 %conv2.i.i175.i.4 to i32
  %cmp143.i = icmp eq i32 %conv140.i, %conv142.i
  call void @assert(i1 zeroext %cmp143.i) #3
  %scevgep296 = getelementptr [5 x i8], [5 x i8]* %u, i64 0, i64 0
  %302 = load i8, i8* %scevgep296, align 1
  %call.i.i1027 = call zeroext i8 @mult(i8 zeroext %302, i8 zeroext %302) #3
  %call.i3.i1028 = call zeroext i8 @mult(i8 zeroext %call.i.i1027, i8 zeroext %call.i.i1027) #3
  %scevgep297 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 0
  store i8 %call.i3.i1028, i8* %scevgep297, align 1
  %scevgep296.1 = getelementptr [5 x i8], [5 x i8]* %u, i64 0, i64 1
  %303 = load i8, i8* %scevgep296.1, align 1
  %call.i.i1025 = call zeroext i8 @mult(i8 zeroext %303, i8 zeroext %303) #3
  %call.i3.i1026 = call zeroext i8 @mult(i8 zeroext %call.i.i1025, i8 zeroext %call.i.i1025) #3
  %scevgep297.1 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 1
  store i8 %call.i3.i1026, i8* %scevgep297.1, align 1
  %scevgep296.2 = getelementptr [5 x i8], [5 x i8]* %u, i64 0, i64 2
  %304 = load i8, i8* %scevgep296.2, align 1
  %call.i.i1023 = call zeroext i8 @mult(i8 zeroext %304, i8 zeroext %304) #3
  %call.i3.i1024 = call zeroext i8 @mult(i8 zeroext %call.i.i1023, i8 zeroext %call.i.i1023) #3
  %scevgep297.2 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 2
  store i8 %call.i3.i1024, i8* %scevgep297.2, align 1
  %scevgep296.3 = getelementptr [5 x i8], [5 x i8]* %u, i64 0, i64 3
  %305 = load i8, i8* %scevgep296.3, align 1
  %call.i.i1021 = call zeroext i8 @mult(i8 zeroext %305, i8 zeroext %305) #3
  %call.i3.i1022 = call zeroext i8 @mult(i8 zeroext %call.i.i1021, i8 zeroext %call.i.i1021) #3
  %scevgep297.3 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 3
  store i8 %call.i3.i1022, i8* %scevgep297.3, align 1
  %scevgep296.4 = getelementptr [5 x i8], [5 x i8]* %u, i64 0, i64 4
  %306 = load i8, i8* %scevgep296.4, align 1
  %call.i.i = call zeroext i8 @mult(i8 zeroext %306, i8 zeroext %306) #3
  %call.i3.i = call zeroext i8 @mult(i8 zeroext %call.i.i, i8 zeroext %call.i.i) #3
  %scevgep297.4 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 4
  store i8 %call.i3.i, i8* %scevgep297.4, align 1
  %arraydecay11 = getelementptr inbounds [5 x i8], [5 x i8]* %wr, i64 0, i64 0
  %call.i108 = call zeroext i8 (...) @rand() #3
  %conv.i109 = zext i8 %call.i108 to i32
  %scevgep292 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 0
  %307 = load i8, i8* %scevgep292, align 1
  %scevgep292.1 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 1
  %308 = load i8, i8* %scevgep292.1, align 1
  %conv.i.i.i115.1 = zext i8 %308 to i32
  %conv1.i.i.i116.1 = zext i8 %307 to i32
  %xor.i.i.i117.1 = xor i32 %conv1.i.i.i116.1, %conv.i.i.i115.1
  %conv2.i.i.i118.1 = trunc i32 %xor.i.i.i117.1 to i8
  %scevgep292.2 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 2
  %309 = load i8, i8* %scevgep292.2, align 1
  %conv.i.i.i115.2 = zext i8 %309 to i32
  %conv1.i.i.i116.2 = zext i8 %conv2.i.i.i118.1 to i32
  %xor.i.i.i117.2 = xor i32 %conv1.i.i.i116.2, %conv.i.i.i115.2
  %conv2.i.i.i118.2 = trunc i32 %xor.i.i.i117.2 to i8
  %scevgep292.3 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 3
  %310 = load i8, i8* %scevgep292.3, align 1
  %conv.i.i.i115.3 = zext i8 %310 to i32
  %conv1.i.i.i116.3 = zext i8 %conv2.i.i.i118.2 to i32
  %xor.i.i.i117.3 = xor i32 %conv1.i.i.i116.3, %conv.i.i.i115.3
  %conv2.i.i.i118.3 = trunc i32 %xor.i.i.i117.3 to i8
  %scevgep292.4 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 4
  %311 = load i8, i8* %scevgep292.4, align 1
  %conv.i.i.i115.4 = zext i8 %311 to i32
  %conv1.i.i.i116.4 = zext i8 %conv2.i.i.i118.3 to i32
  %xor.i.i.i117.4 = xor i32 %conv1.i.i.i116.4, %conv.i.i.i115.4
  %conv2.i.i.i118.4 = trunc i32 %xor.i.i.i117.4 to i8
  %conv2.i121 = zext i8 %conv2.i.i.i118.4 to i32
  %cmp.i122 = icmp eq i32 %conv.i109, %conv2.i121
  call void @assume(i1 zeroext %cmp.i122) #3
  %scevgep287 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 0
  %312 = load i8, i8* %scevgep287, align 1
  %scevgep288 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 0
  store i8 %312, i8* %scevgep288, align 1
  %scevgep287.1 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 1
  %313 = load i8, i8* %scevgep287.1, align 1
  %scevgep288.1 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 1
  store i8 %313, i8* %scevgep288.1, align 1
  %scevgep287.2 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 2
  %314 = load i8, i8* %scevgep287.2, align 1
  %scevgep288.2 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 2
  store i8 %314, i8* %scevgep288.2, align 1
  %scevgep287.3 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 3
  %315 = load i8, i8* %scevgep287.3, align 1
  %scevgep288.3 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 3
  store i8 %315, i8* %scevgep288.3, align 1
  %scevgep287.4 = getelementptr [5 x i8], [5 x i8]* %w, i64 0, i64 4
  %316 = load i8, i8* %scevgep287.4, align 1
  %scevgep288.4 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 4
  store i8 %316, i8* %scevgep288.4, align 1
  %call7.i137 = call zeroext i8 (...) @rand() #3
  %conv8.i138 = zext i8 %call7.i137 to i32
  %317 = load i8, i8* %arraydecay11, align 1
  %conv9.i139 = zext i8 %317 to i32
  %xor.i140 = xor i32 %conv9.i139, %conv8.i138
  %conv10.i141 = trunc i32 %xor.i140 to i8
  store i8 %conv10.i141, i8* %arraydecay11, align 1
  %conv11.i142 = zext i8 %call7.i137 to i32
  %scevgep283 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 1
  %318 = load i8, i8* %scevgep283, align 1
  %conv13.i145 = zext i8 %318 to i32
  %xor14.i146 = xor i32 %conv13.i145, %conv11.i142
  %conv15.i147 = trunc i32 %xor14.i146 to i8
  store i8 %conv15.i147, i8* %scevgep283, align 1
  %call7.i137.1 = call zeroext i8 (...) @rand() #3
  %conv8.i138.1 = zext i8 %call7.i137.1 to i32
  %319 = load i8, i8* %arraydecay11, align 1
  %conv9.i139.1 = zext i8 %319 to i32
  %xor.i140.1 = xor i32 %conv9.i139.1, %conv8.i138.1
  %conv10.i141.1 = trunc i32 %xor.i140.1 to i8
  store i8 %conv10.i141.1, i8* %arraydecay11, align 1
  %conv11.i142.1 = zext i8 %call7.i137.1 to i32
  %scevgep283.1 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 2
  %320 = load i8, i8* %scevgep283.1, align 1
  %conv13.i145.1 = zext i8 %320 to i32
  %xor14.i146.1 = xor i32 %conv13.i145.1, %conv11.i142.1
  %conv15.i147.1 = trunc i32 %xor14.i146.1 to i8
  store i8 %conv15.i147.1, i8* %scevgep283.1, align 1
  %call7.i137.2 = call zeroext i8 (...) @rand() #3
  %conv8.i138.2 = zext i8 %call7.i137.2 to i32
  %321 = load i8, i8* %arraydecay11, align 1
  %conv9.i139.2 = zext i8 %321 to i32
  %xor.i140.2 = xor i32 %conv9.i139.2, %conv8.i138.2
  %conv10.i141.2 = trunc i32 %xor.i140.2 to i8
  store i8 %conv10.i141.2, i8* %arraydecay11, align 1
  %conv11.i142.2 = zext i8 %call7.i137.2 to i32
  %scevgep283.2 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 3
  %322 = load i8, i8* %scevgep283.2, align 1
  %conv13.i145.2 = zext i8 %322 to i32
  %xor14.i146.2 = xor i32 %conv13.i145.2, %conv11.i142.2
  %conv15.i147.2 = trunc i32 %xor14.i146.2 to i8
  store i8 %conv15.i147.2, i8* %scevgep283.2, align 1
  %call7.i137.3 = call zeroext i8 (...) @rand() #3
  %conv8.i138.3 = zext i8 %call7.i137.3 to i32
  %323 = load i8, i8* %arraydecay11, align 1
  %conv9.i139.3 = zext i8 %323 to i32
  %xor.i140.3 = xor i32 %conv9.i139.3, %conv8.i138.3
  %conv10.i141.3 = trunc i32 %xor.i140.3 to i8
  store i8 %conv10.i141.3, i8* %arraydecay11, align 1
  %conv11.i142.3 = zext i8 %call7.i137.3 to i32
  %scevgep283.3 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 4
  %324 = load i8, i8* %scevgep283.3, align 1
  %conv13.i145.3 = zext i8 %324 to i32
  %xor14.i146.3 = xor i32 %conv13.i145.3, %conv11.i142.3
  %conv15.i147.3 = trunc i32 %xor14.i146.3 to i8
  store i8 %conv15.i147.3, i8* %scevgep283.3, align 1
  %conv16.i150 = zext i8 %call.i108 to i32
  %scevgep279 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 0
  %325 = load i8, i8* %scevgep279, align 1
  %scevgep279.1 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 1
  %326 = load i8, i8* %scevgep279.1, align 1
  %conv.i.i31.i157.1 = zext i8 %326 to i32
  %conv1.i.i32.i158.1 = zext i8 %325 to i32
  %xor.i.i33.i159.1 = xor i32 %conv1.i.i32.i158.1, %conv.i.i31.i157.1
  %conv2.i.i34.i160.1 = trunc i32 %xor.i.i33.i159.1 to i8
  %scevgep279.2 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 2
  %327 = load i8, i8* %scevgep279.2, align 1
  %conv.i.i31.i157.2 = zext i8 %327 to i32
  %conv1.i.i32.i158.2 = zext i8 %conv2.i.i34.i160.1 to i32
  %xor.i.i33.i159.2 = xor i32 %conv1.i.i32.i158.2, %conv.i.i31.i157.2
  %conv2.i.i34.i160.2 = trunc i32 %xor.i.i33.i159.2 to i8
  %scevgep279.3 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 3
  %328 = load i8, i8* %scevgep279.3, align 1
  %conv.i.i31.i157.3 = zext i8 %328 to i32
  %conv1.i.i32.i158.3 = zext i8 %conv2.i.i34.i160.2 to i32
  %xor.i.i33.i159.3 = xor i32 %conv1.i.i32.i158.3, %conv.i.i31.i157.3
  %conv2.i.i34.i160.3 = trunc i32 %xor.i.i33.i159.3 to i8
  %scevgep279.4 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 4
  %329 = load i8, i8* %scevgep279.4, align 1
  %conv.i.i31.i157.4 = zext i8 %329 to i32
  %conv1.i.i32.i158.4 = zext i8 %conv2.i.i34.i160.3 to i32
  %xor.i.i33.i159.4 = xor i32 %conv1.i.i32.i158.4, %conv.i.i31.i157.4
  %conv2.i.i34.i160.4 = trunc i32 %xor.i.i33.i159.4 to i8
  %conv18.i163 = zext i8 %conv2.i.i34.i160.4 to i32
  %cmp19.i164 = icmp eq i32 %conv16.i150, %conv18.i163
  call void @assert(i1 zeroext %cmp19.i164) #3
  %arraydecay12 = getelementptr inbounds [5 x i8], [5 x i8]* %u, i64 0, i64 0
  %arraydecay13 = getelementptr inbounds [5 x i8], [5 x i8]* %wr, i64 0, i64 0
  %arraydecay14 = getelementptr inbounds [5 x i8], [5 x i8]* %v, i64 0, i64 0
  %call.i197 = call zeroext i8 (...) @rand() #3
  %call1.i198 = call zeroext i8 (...) @rand() #3
  %conv.i199 = zext i8 %call.i197 to i32
  %scevgep275 = getelementptr [5 x i8], [5 x i8]* %u, i64 0, i64 0
  %330 = load i8, i8* %scevgep275, align 1
  %scevgep275.1 = getelementptr [5 x i8], [5 x i8]* %u, i64 0, i64 1
  %331 = load i8, i8* %scevgep275.1, align 1
  %conv.i.i.i205.1 = zext i8 %331 to i32
  %conv1.i.i.i206.1 = zext i8 %330 to i32
  %xor.i.i.i207.1 = xor i32 %conv1.i.i.i206.1, %conv.i.i.i205.1
  %conv2.i.i.i208.1 = trunc i32 %xor.i.i.i207.1 to i8
  %scevgep275.2 = getelementptr [5 x i8], [5 x i8]* %u, i64 0, i64 2
  %332 = load i8, i8* %scevgep275.2, align 1
  %conv.i.i.i205.2 = zext i8 %332 to i32
  %conv1.i.i.i206.2 = zext i8 %conv2.i.i.i208.1 to i32
  %xor.i.i.i207.2 = xor i32 %conv1.i.i.i206.2, %conv.i.i.i205.2
  %conv2.i.i.i208.2 = trunc i32 %xor.i.i.i207.2 to i8
  %scevgep275.3 = getelementptr [5 x i8], [5 x i8]* %u, i64 0, i64 3
  %333 = load i8, i8* %scevgep275.3, align 1
  %conv.i.i.i205.3 = zext i8 %333 to i32
  %conv1.i.i.i206.3 = zext i8 %conv2.i.i.i208.2 to i32
  %xor.i.i.i207.3 = xor i32 %conv1.i.i.i206.3, %conv.i.i.i205.3
  %conv2.i.i.i208.3 = trunc i32 %xor.i.i.i207.3 to i8
  %scevgep275.4 = getelementptr [5 x i8], [5 x i8]* %u, i64 0, i64 4
  %334 = load i8, i8* %scevgep275.4, align 1
  %conv.i.i.i205.4 = zext i8 %334 to i32
  %conv1.i.i.i206.4 = zext i8 %conv2.i.i.i208.3 to i32
  %xor.i.i.i207.4 = xor i32 %conv1.i.i.i206.4, %conv.i.i.i205.4
  %conv2.i.i.i208.4 = trunc i32 %xor.i.i.i207.4 to i8
  %conv3.i211 = zext i8 %conv2.i.i.i208.4 to i32
  %cmp.i212 = icmp eq i32 %conv.i199, %conv3.i211
  call void @assume(i1 zeroext %cmp.i212) #3
  %conv5.i213 = zext i8 %call1.i198 to i32
  %scevgep271 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 0
  %335 = load i8, i8* %scevgep271, align 1
  %scevgep271.1 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 1
  %336 = load i8, i8* %scevgep271.1, align 1
  %conv.i.i155.i220.1 = zext i8 %336 to i32
  %conv1.i.i156.i221.1 = zext i8 %335 to i32
  %xor.i.i157.i222.1 = xor i32 %conv1.i.i156.i221.1, %conv.i.i155.i220.1
  %conv2.i.i158.i223.1 = trunc i32 %xor.i.i157.i222.1 to i8
  %scevgep271.2 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 2
  %337 = load i8, i8* %scevgep271.2, align 1
  %conv.i.i155.i220.2 = zext i8 %337 to i32
  %conv1.i.i156.i221.2 = zext i8 %conv2.i.i158.i223.1 to i32
  %xor.i.i157.i222.2 = xor i32 %conv1.i.i156.i221.2, %conv.i.i155.i220.2
  %conv2.i.i158.i223.2 = trunc i32 %xor.i.i157.i222.2 to i8
  %scevgep271.3 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 3
  %338 = load i8, i8* %scevgep271.3, align 1
  %conv.i.i155.i220.3 = zext i8 %338 to i32
  %conv1.i.i156.i221.3 = zext i8 %conv2.i.i158.i223.2 to i32
  %xor.i.i157.i222.3 = xor i32 %conv1.i.i156.i221.3, %conv.i.i155.i220.3
  %conv2.i.i158.i223.3 = trunc i32 %xor.i.i157.i222.3 to i8
  %scevgep271.4 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 4
  %339 = load i8, i8* %scevgep271.4, align 1
  %conv.i.i155.i220.4 = zext i8 %339 to i32
  %conv1.i.i156.i221.4 = zext i8 %conv2.i.i158.i223.3 to i32
  %xor.i.i157.i222.4 = xor i32 %conv1.i.i156.i221.4, %conv.i.i155.i220.4
  %conv2.i.i158.i223.4 = trunc i32 %xor.i.i157.i222.4 to i8
  %conv7.i226 = zext i8 %conv2.i.i158.i223.4 to i32
  %cmp8.i227 = icmp eq i32 %conv5.i213, %conv7.i226
  call void @assume(i1 zeroext %cmp8.i227) #3
  %scevgep255 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %scevgep255256 = bitcast i8* %scevgep255 to [5 x [5 x i8]]*
  %scevgep262 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 1, i64 0
  %scevgep262263 = bitcast i8* %scevgep262 to [5 x [5 x i8]]*
  %call16.i235 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i235, i8* %scevgep255, align 1
  %340 = load i8, i8* %scevgep255, align 1
  store i8 %340, i8* %scevgep262, align 1
  %scevgep260 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep255256, i64 0, i64 0, i64 1
  %341 = bitcast i8* %scevgep260 to [5 x [5 x i8]]*
  %scevgep267 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep262263, i64 0, i64 1, i64 0
  %342 = bitcast i8* %scevgep267 to [5 x [5 x i8]]*
  %call16.i235.1982 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i235.1982, i8* %scevgep260, align 1
  %343 = load i8, i8* %scevgep260, align 1
  store i8 %343, i8* %scevgep267, align 1
  %scevgep260.1983 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %341, i64 0, i64 0, i64 1
  %344 = bitcast i8* %scevgep260.1983 to [5 x [5 x i8]]*
  %scevgep267.1984 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %342, i64 0, i64 1, i64 0
  %345 = bitcast i8* %scevgep267.1984 to [5 x [5 x i8]]*
  %call16.i235.2986 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i235.2986, i8* %scevgep260.1983, align 1
  %346 = load i8, i8* %scevgep260.1983, align 1
  store i8 %346, i8* %scevgep267.1984, align 1
  %scevgep260.2987 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %344, i64 0, i64 0, i64 1
  %scevgep267.2988 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %345, i64 0, i64 1, i64 0
  %call16.i235.3990 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i235.3990, i8* %scevgep260.2987, align 1
  %347 = load i8, i8* %scevgep260.2987, align 1
  store i8 %347, i8* %scevgep267.2988, align 1
  %scevgep258 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep255256, i64 0, i64 1, i64 1
  %348 = bitcast i8* %scevgep258 to [5 x [5 x i8]]*
  %scevgep265 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep262263, i64 0, i64 1, i64 1
  %349 = bitcast i8* %scevgep265 to [5 x [5 x i8]]*
  %call16.i235.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i235.1, i8* %scevgep258, align 1
  %350 = load i8, i8* %scevgep258, align 1
  store i8 %350, i8* %scevgep265, align 1
  %scevgep260.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %348, i64 0, i64 0, i64 1
  %351 = bitcast i8* %scevgep260.1 to [5 x [5 x i8]]*
  %scevgep267.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %349, i64 0, i64 1, i64 0
  %352 = bitcast i8* %scevgep267.1 to [5 x [5 x i8]]*
  %call16.i235.1.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i235.1.1, i8* %scevgep260.1, align 1
  %353 = load i8, i8* %scevgep260.1, align 1
  store i8 %353, i8* %scevgep267.1, align 1
  %scevgep260.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %351, i64 0, i64 0, i64 1
  %scevgep267.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %352, i64 0, i64 1, i64 0
  %call16.i235.1.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i235.1.2, i8* %scevgep260.1.1, align 1
  %354 = load i8, i8* %scevgep260.1.1, align 1
  store i8 %354, i8* %scevgep267.1.1, align 1
  %scevgep258.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %348, i64 0, i64 1, i64 1
  %355 = bitcast i8* %scevgep258.1 to [5 x [5 x i8]]*
  %scevgep265.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %349, i64 0, i64 1, i64 1
  %356 = bitcast i8* %scevgep265.1 to [5 x [5 x i8]]*
  %call16.i235.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i235.2, i8* %scevgep258.1, align 1
  %357 = load i8, i8* %scevgep258.1, align 1
  store i8 %357, i8* %scevgep265.1, align 1
  %scevgep260.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %355, i64 0, i64 0, i64 1
  %scevgep267.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %356, i64 0, i64 1, i64 0
  %call16.i235.2.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i235.2.1, i8* %scevgep260.2, align 1
  %358 = load i8, i8* %scevgep260.2, align 1
  store i8 %358, i8* %scevgep267.2, align 1
  %scevgep258.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %355, i64 0, i64 1, i64 1
  %scevgep265.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %356, i64 0, i64 1, i64 1
  %call16.i235.3 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i235.3, i8* %scevgep258.2, align 1
  %359 = load i8, i8* %scevgep258.2, align 1
  store i8 %359, i8* %scevgep265.2, align 1
  %scevgep232.1 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 1
  %360 = load i8, i8* %scevgep232.1, align 1
  %conv44.i262.1 = zext i8 %360 to i32
  %scevgep235.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %361 = load i8, i8* %scevgep235.1, align 1
  %conv49.i267.1 = zext i8 %361 to i32
  %xor.i268.1 = xor i32 %conv44.i262.1, %conv49.i267.1
  %conv50.i269.1 = trunc i32 %xor.i268.1 to i8
  %scevgep239.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i269.1, i8* %scevgep239.1, align 1
  %362 = load i8, i8* %arraydecay12, align 1
  %conv57.i276.1 = zext i8 %362 to i32
  %xor58.i277.1 = xor i32 %conv57.i276.1, 1
  %conv59.i278.1 = trunc i32 %xor58.i277.1 to i8
  %scevgep236.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %363 = load i8, i8* %scevgep236.1, align 1
  %call64.i283.1 = call zeroext i8 @mult(i8 zeroext %conv59.i278.1, i8 zeroext %363) #3
  %scevgep243.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i283.1, i8* %scevgep243.1, align 1
  %364 = load i8, i8* %arraydecay12, align 1
  %scevgep240.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 1
  %365 = load i8, i8* %scevgep240.1, align 1
  %call75.i294.1 = call zeroext i8 @mult(i8 zeroext %364, i8 zeroext %365) #3
  %scevgep247.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i294.1, i8* %scevgep247.1, align 1
  %scevgep244.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %366 = load i8, i8* %scevgep244.1, align 1
  %conv84.i303.1 = zext i8 %366 to i32
  %scevgep248.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %367 = load i8, i8* %scevgep248.1, align 1
  %conv89.i308.1 = zext i8 %367 to i32
  %xor90.i309.1 = xor i32 %conv84.i303.1, %conv89.i308.1
  %conv91.i310.1 = trunc i32 %xor90.i309.1 to i8
  %scevgep251.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i310.1, i8* %scevgep251.1, align 1
  %scevgep232.2 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 2
  %368 = load i8, i8* %scevgep232.2, align 1
  %conv44.i262.2 = zext i8 %368 to i32
  %scevgep235.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 2
  %369 = load i8, i8* %scevgep235.2, align 1
  %conv49.i267.2 = zext i8 %369 to i32
  %xor.i268.2 = xor i32 %conv44.i262.2, %conv49.i267.2
  %conv50.i269.2 = trunc i32 %xor.i268.2 to i8
  %scevgep239.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 2
  store i8 %conv50.i269.2, i8* %scevgep239.2, align 1
  %370 = load i8, i8* %arraydecay12, align 1
  %conv57.i276.2 = zext i8 %370 to i32
  %xor58.i277.2 = xor i32 %conv57.i276.2, 1
  %conv59.i278.2 = trunc i32 %xor58.i277.2 to i8
  %scevgep236.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 2
  %371 = load i8, i8* %scevgep236.2, align 1
  %call64.i283.2 = call zeroext i8 @mult(i8 zeroext %conv59.i278.2, i8 zeroext %371) #3
  %scevgep243.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 2
  store i8 %call64.i283.2, i8* %scevgep243.2, align 1
  %372 = load i8, i8* %arraydecay12, align 1
  %scevgep240.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 2
  %373 = load i8, i8* %scevgep240.2, align 1
  %call75.i294.2 = call zeroext i8 @mult(i8 zeroext %372, i8 zeroext %373) #3
  %scevgep247.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 2
  store i8 %call75.i294.2, i8* %scevgep247.2, align 1
  %scevgep244.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 2
  %374 = load i8, i8* %scevgep244.2, align 1
  %conv84.i303.2 = zext i8 %374 to i32
  %scevgep248.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 2
  %375 = load i8, i8* %scevgep248.2, align 1
  %conv89.i308.2 = zext i8 %375 to i32
  %xor90.i309.2 = xor i32 %conv84.i303.2, %conv89.i308.2
  %conv91.i310.2 = trunc i32 %xor90.i309.2 to i8
  %scevgep251.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 2
  store i8 %conv91.i310.2, i8* %scevgep251.2, align 1
  %scevgep232.3 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 3
  %376 = load i8, i8* %scevgep232.3, align 1
  %conv44.i262.3 = zext i8 %376 to i32
  %scevgep235.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 3
  %377 = load i8, i8* %scevgep235.3, align 1
  %conv49.i267.3 = zext i8 %377 to i32
  %xor.i268.3 = xor i32 %conv44.i262.3, %conv49.i267.3
  %conv50.i269.3 = trunc i32 %xor.i268.3 to i8
  %scevgep239.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 3
  store i8 %conv50.i269.3, i8* %scevgep239.3, align 1
  %378 = load i8, i8* %arraydecay12, align 1
  %conv57.i276.3 = zext i8 %378 to i32
  %xor58.i277.3 = xor i32 %conv57.i276.3, 1
  %conv59.i278.3 = trunc i32 %xor58.i277.3 to i8
  %scevgep236.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 3
  %379 = load i8, i8* %scevgep236.3, align 1
  %call64.i283.3 = call zeroext i8 @mult(i8 zeroext %conv59.i278.3, i8 zeroext %379) #3
  %scevgep243.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 3
  store i8 %call64.i283.3, i8* %scevgep243.3, align 1
  %380 = load i8, i8* %arraydecay12, align 1
  %scevgep240.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 3
  %381 = load i8, i8* %scevgep240.3, align 1
  %call75.i294.3 = call zeroext i8 @mult(i8 zeroext %380, i8 zeroext %381) #3
  %scevgep247.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 3
  store i8 %call75.i294.3, i8* %scevgep247.3, align 1
  %scevgep244.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 3
  %382 = load i8, i8* %scevgep244.3, align 1
  %conv84.i303.3 = zext i8 %382 to i32
  %scevgep248.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 3
  %383 = load i8, i8* %scevgep248.3, align 1
  %conv89.i308.3 = zext i8 %383 to i32
  %xor90.i309.3 = xor i32 %conv84.i303.3, %conv89.i308.3
  %conv91.i310.3 = trunc i32 %xor90.i309.3 to i8
  %scevgep251.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 3
  store i8 %conv91.i310.3, i8* %scevgep251.3, align 1
  %scevgep232.4 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 4
  %384 = load i8, i8* %scevgep232.4, align 1
  %conv44.i262.4 = zext i8 %384 to i32
  %scevgep235.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 4
  %385 = load i8, i8* %scevgep235.4, align 1
  %conv49.i267.4 = zext i8 %385 to i32
  %xor.i268.4 = xor i32 %conv44.i262.4, %conv49.i267.4
  %conv50.i269.4 = trunc i32 %xor.i268.4 to i8
  %scevgep239.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 4
  store i8 %conv50.i269.4, i8* %scevgep239.4, align 1
  %386 = load i8, i8* %arraydecay12, align 1
  %conv57.i276.4 = zext i8 %386 to i32
  %xor58.i277.4 = xor i32 %conv57.i276.4, 1
  %conv59.i278.4 = trunc i32 %xor58.i277.4 to i8
  %scevgep236.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 4
  %387 = load i8, i8* %scevgep236.4, align 1
  %call64.i283.4 = call zeroext i8 @mult(i8 zeroext %conv59.i278.4, i8 zeroext %387) #3
  %scevgep243.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 4
  store i8 %call64.i283.4, i8* %scevgep243.4, align 1
  %388 = load i8, i8* %arraydecay12, align 1
  %scevgep240.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 4
  %389 = load i8, i8* %scevgep240.4, align 1
  %call75.i294.4 = call zeroext i8 @mult(i8 zeroext %388, i8 zeroext %389) #3
  %scevgep247.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 4
  store i8 %call75.i294.4, i8* %scevgep247.4, align 1
  %scevgep244.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 4
  %390 = load i8, i8* %scevgep244.4, align 1
  %conv84.i303.4 = zext i8 %390 to i32
  %scevgep248.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 4
  %391 = load i8, i8* %scevgep248.4, align 1
  %conv89.i308.4 = zext i8 %391 to i32
  %xor90.i309.4 = xor i32 %conv84.i303.4, %conv89.i308.4
  %conv91.i310.4 = trunc i32 %xor90.i309.4 to i8
  %scevgep251.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 4
  store i8 %conv91.i310.4, i8* %scevgep251.4, align 1
  %scevgep234 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 1, i64 0
  %392 = bitcast i8* %scevgep234 to [5 x [5 x i8]]*
  %scevgep238 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 1, i64 0
  %393 = bitcast i8* %scevgep238 to [5 x [5 x i8]]*
  %scevgep242 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %394 = bitcast i8* %scevgep242 to [5 x [5 x i8]]*
  %scevgep246 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %395 = bitcast i8* %scevgep246 to [5 x [5 x i8]]*
  %scevgep250 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 1, i64 0
  %396 = bitcast i8* %scevgep250 to [5 x [5 x i8]]*
  %arrayidx56.i275.1 = getelementptr inbounds i8, i8* %arraydecay12, i64 1
  %arrayidx70.i289.1 = getelementptr inbounds i8, i8* %arraydecay12, i64 1
  %scevgep232.1718 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 0
  %397 = load i8, i8* %scevgep232.1718, align 1
  %conv44.i262.1719 = zext i8 %397 to i32
  %scevgep235.1720 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %392, i64 0, i64 0, i64 0
  %398 = load i8, i8* %scevgep235.1720, align 1
  %conv49.i267.1721 = zext i8 %398 to i32
  %xor.i268.1722 = xor i32 %conv44.i262.1719, %conv49.i267.1721
  %conv50.i269.1723 = trunc i32 %xor.i268.1722 to i8
  %scevgep239.1724 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %393, i64 0, i64 0, i64 0
  store i8 %conv50.i269.1723, i8* %scevgep239.1724, align 1
  %399 = load i8, i8* %arrayidx56.i275.1, align 1
  %conv57.i276.1725 = zext i8 %399 to i32
  %xor58.i277.1726 = xor i32 %conv57.i276.1725, 1
  %conv59.i278.1727 = trunc i32 %xor58.i277.1726 to i8
  %scevgep236.1728 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %392, i64 0, i64 0, i64 0
  %400 = load i8, i8* %scevgep236.1728, align 1
  %call64.i283.1729 = call zeroext i8 @mult(i8 zeroext %conv59.i278.1727, i8 zeroext %400) #3
  %scevgep243.1730 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %394, i64 0, i64 0, i64 0
  store i8 %call64.i283.1729, i8* %scevgep243.1730, align 1
  %401 = load i8, i8* %arrayidx70.i289.1, align 1
  %scevgep240.1731 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %393, i64 0, i64 0, i64 0
  %402 = load i8, i8* %scevgep240.1731, align 1
  %call75.i294.1732 = call zeroext i8 @mult(i8 zeroext %401, i8 zeroext %402) #3
  %scevgep247.1733 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %395, i64 0, i64 0, i64 0
  store i8 %call75.i294.1732, i8* %scevgep247.1733, align 1
  %scevgep244.1734 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %394, i64 0, i64 0, i64 0
  %403 = load i8, i8* %scevgep244.1734, align 1
  %conv84.i303.1735 = zext i8 %403 to i32
  %scevgep248.1736 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %395, i64 0, i64 0, i64 0
  %404 = load i8, i8* %scevgep248.1736, align 1
  %conv89.i308.1737 = zext i8 %404 to i32
  %xor90.i309.1738 = xor i32 %conv84.i303.1735, %conv89.i308.1737
  %conv91.i310.1739 = trunc i32 %xor90.i309.1738 to i8
  %scevgep251.1740 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %396, i64 0, i64 0, i64 0
  store i8 %conv91.i310.1739, i8* %scevgep251.1740, align 1
  %scevgep232.2.1 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 2
  %405 = load i8, i8* %scevgep232.2.1, align 1
  %conv44.i262.2.1 = zext i8 %405 to i32
  %scevgep235.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %392, i64 0, i64 0, i64 2
  %406 = load i8, i8* %scevgep235.2.1, align 1
  %conv49.i267.2.1 = zext i8 %406 to i32
  %xor.i268.2.1 = xor i32 %conv44.i262.2.1, %conv49.i267.2.1
  %conv50.i269.2.1 = trunc i32 %xor.i268.2.1 to i8
  %scevgep239.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %393, i64 0, i64 0, i64 2
  store i8 %conv50.i269.2.1, i8* %scevgep239.2.1, align 1
  %407 = load i8, i8* %arrayidx56.i275.1, align 1
  %conv57.i276.2.1 = zext i8 %407 to i32
  %xor58.i277.2.1 = xor i32 %conv57.i276.2.1, 1
  %conv59.i278.2.1 = trunc i32 %xor58.i277.2.1 to i8
  %scevgep236.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %392, i64 0, i64 0, i64 2
  %408 = load i8, i8* %scevgep236.2.1, align 1
  %call64.i283.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i278.2.1, i8 zeroext %408) #3
  %scevgep243.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %394, i64 0, i64 0, i64 2
  store i8 %call64.i283.2.1, i8* %scevgep243.2.1, align 1
  %409 = load i8, i8* %arrayidx70.i289.1, align 1
  %scevgep240.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %393, i64 0, i64 0, i64 2
  %410 = load i8, i8* %scevgep240.2.1, align 1
  %call75.i294.2.1 = call zeroext i8 @mult(i8 zeroext %409, i8 zeroext %410) #3
  %scevgep247.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %395, i64 0, i64 0, i64 2
  store i8 %call75.i294.2.1, i8* %scevgep247.2.1, align 1
  %scevgep244.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %394, i64 0, i64 0, i64 2
  %411 = load i8, i8* %scevgep244.2.1, align 1
  %conv84.i303.2.1 = zext i8 %411 to i32
  %scevgep248.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %395, i64 0, i64 0, i64 2
  %412 = load i8, i8* %scevgep248.2.1, align 1
  %conv89.i308.2.1 = zext i8 %412 to i32
  %xor90.i309.2.1 = xor i32 %conv84.i303.2.1, %conv89.i308.2.1
  %conv91.i310.2.1 = trunc i32 %xor90.i309.2.1 to i8
  %scevgep251.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %396, i64 0, i64 0, i64 2
  store i8 %conv91.i310.2.1, i8* %scevgep251.2.1, align 1
  %scevgep232.3.1 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 3
  %413 = load i8, i8* %scevgep232.3.1, align 1
  %conv44.i262.3.1 = zext i8 %413 to i32
  %scevgep235.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %392, i64 0, i64 0, i64 3
  %414 = load i8, i8* %scevgep235.3.1, align 1
  %conv49.i267.3.1 = zext i8 %414 to i32
  %xor.i268.3.1 = xor i32 %conv44.i262.3.1, %conv49.i267.3.1
  %conv50.i269.3.1 = trunc i32 %xor.i268.3.1 to i8
  %scevgep239.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %393, i64 0, i64 0, i64 3
  store i8 %conv50.i269.3.1, i8* %scevgep239.3.1, align 1
  %415 = load i8, i8* %arrayidx56.i275.1, align 1
  %conv57.i276.3.1 = zext i8 %415 to i32
  %xor58.i277.3.1 = xor i32 %conv57.i276.3.1, 1
  %conv59.i278.3.1 = trunc i32 %xor58.i277.3.1 to i8
  %scevgep236.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %392, i64 0, i64 0, i64 3
  %416 = load i8, i8* %scevgep236.3.1, align 1
  %call64.i283.3.1 = call zeroext i8 @mult(i8 zeroext %conv59.i278.3.1, i8 zeroext %416) #3
  %scevgep243.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %394, i64 0, i64 0, i64 3
  store i8 %call64.i283.3.1, i8* %scevgep243.3.1, align 1
  %417 = load i8, i8* %arrayidx70.i289.1, align 1
  %scevgep240.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %393, i64 0, i64 0, i64 3
  %418 = load i8, i8* %scevgep240.3.1, align 1
  %call75.i294.3.1 = call zeroext i8 @mult(i8 zeroext %417, i8 zeroext %418) #3
  %scevgep247.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %395, i64 0, i64 0, i64 3
  store i8 %call75.i294.3.1, i8* %scevgep247.3.1, align 1
  %scevgep244.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %394, i64 0, i64 0, i64 3
  %419 = load i8, i8* %scevgep244.3.1, align 1
  %conv84.i303.3.1 = zext i8 %419 to i32
  %scevgep248.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %395, i64 0, i64 0, i64 3
  %420 = load i8, i8* %scevgep248.3.1, align 1
  %conv89.i308.3.1 = zext i8 %420 to i32
  %xor90.i309.3.1 = xor i32 %conv84.i303.3.1, %conv89.i308.3.1
  %conv91.i310.3.1 = trunc i32 %xor90.i309.3.1 to i8
  %scevgep251.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %396, i64 0, i64 0, i64 3
  store i8 %conv91.i310.3.1, i8* %scevgep251.3.1, align 1
  %scevgep232.4.1 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 4
  %421 = load i8, i8* %scevgep232.4.1, align 1
  %conv44.i262.4.1 = zext i8 %421 to i32
  %scevgep235.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %392, i64 0, i64 0, i64 4
  %422 = load i8, i8* %scevgep235.4.1, align 1
  %conv49.i267.4.1 = zext i8 %422 to i32
  %xor.i268.4.1 = xor i32 %conv44.i262.4.1, %conv49.i267.4.1
  %conv50.i269.4.1 = trunc i32 %xor.i268.4.1 to i8
  %scevgep239.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %393, i64 0, i64 0, i64 4
  store i8 %conv50.i269.4.1, i8* %scevgep239.4.1, align 1
  %423 = load i8, i8* %arrayidx56.i275.1, align 1
  %conv57.i276.4.1 = zext i8 %423 to i32
  %xor58.i277.4.1 = xor i32 %conv57.i276.4.1, 1
  %conv59.i278.4.1 = trunc i32 %xor58.i277.4.1 to i8
  %scevgep236.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %392, i64 0, i64 0, i64 4
  %424 = load i8, i8* %scevgep236.4.1, align 1
  %call64.i283.4.1 = call zeroext i8 @mult(i8 zeroext %conv59.i278.4.1, i8 zeroext %424) #3
  %scevgep243.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %394, i64 0, i64 0, i64 4
  store i8 %call64.i283.4.1, i8* %scevgep243.4.1, align 1
  %425 = load i8, i8* %arrayidx70.i289.1, align 1
  %scevgep240.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %393, i64 0, i64 0, i64 4
  %426 = load i8, i8* %scevgep240.4.1, align 1
  %call75.i294.4.1 = call zeroext i8 @mult(i8 zeroext %425, i8 zeroext %426) #3
  %scevgep247.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %395, i64 0, i64 0, i64 4
  store i8 %call75.i294.4.1, i8* %scevgep247.4.1, align 1
  %scevgep244.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %394, i64 0, i64 0, i64 4
  %427 = load i8, i8* %scevgep244.4.1, align 1
  %conv84.i303.4.1 = zext i8 %427 to i32
  %scevgep248.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %395, i64 0, i64 0, i64 4
  %428 = load i8, i8* %scevgep248.4.1, align 1
  %conv89.i308.4.1 = zext i8 %428 to i32
  %xor90.i309.4.1 = xor i32 %conv84.i303.4.1, %conv89.i308.4.1
  %conv91.i310.4.1 = trunc i32 %xor90.i309.4.1 to i8
  %scevgep251.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %396, i64 0, i64 0, i64 4
  store i8 %conv91.i310.4.1, i8* %scevgep251.4.1, align 1
  %scevgep234.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %392, i64 0, i64 1, i64 0
  %429 = bitcast i8* %scevgep234.1 to [5 x [5 x i8]]*
  %scevgep238.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %393, i64 0, i64 1, i64 0
  %430 = bitcast i8* %scevgep238.1 to [5 x [5 x i8]]*
  %scevgep242.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %394, i64 0, i64 1, i64 0
  %431 = bitcast i8* %scevgep242.1 to [5 x [5 x i8]]*
  %scevgep246.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %395, i64 0, i64 1, i64 0
  %432 = bitcast i8* %scevgep246.1 to [5 x [5 x i8]]*
  %scevgep250.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %396, i64 0, i64 1, i64 0
  %433 = bitcast i8* %scevgep250.1 to [5 x [5 x i8]]*
  %arrayidx56.i275.2 = getelementptr inbounds i8, i8* %arraydecay12, i64 2
  %arrayidx70.i289.2 = getelementptr inbounds i8, i8* %arraydecay12, i64 2
  %scevgep232.2745 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 0
  %434 = load i8, i8* %scevgep232.2745, align 1
  %conv44.i262.2746 = zext i8 %434 to i32
  %scevgep235.2747 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %429, i64 0, i64 0, i64 0
  %435 = load i8, i8* %scevgep235.2747, align 1
  %conv49.i267.2748 = zext i8 %435 to i32
  %xor.i268.2749 = xor i32 %conv44.i262.2746, %conv49.i267.2748
  %conv50.i269.2750 = trunc i32 %xor.i268.2749 to i8
  %scevgep239.2751 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %430, i64 0, i64 0, i64 0
  store i8 %conv50.i269.2750, i8* %scevgep239.2751, align 1
  %436 = load i8, i8* %arrayidx56.i275.2, align 1
  %conv57.i276.2752 = zext i8 %436 to i32
  %xor58.i277.2753 = xor i32 %conv57.i276.2752, 1
  %conv59.i278.2754 = trunc i32 %xor58.i277.2753 to i8
  %scevgep236.2755 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %429, i64 0, i64 0, i64 0
  %437 = load i8, i8* %scevgep236.2755, align 1
  %call64.i283.2756 = call zeroext i8 @mult(i8 zeroext %conv59.i278.2754, i8 zeroext %437) #3
  %scevgep243.2757 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %431, i64 0, i64 0, i64 0
  store i8 %call64.i283.2756, i8* %scevgep243.2757, align 1
  %438 = load i8, i8* %arrayidx70.i289.2, align 1
  %scevgep240.2758 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %430, i64 0, i64 0, i64 0
  %439 = load i8, i8* %scevgep240.2758, align 1
  %call75.i294.2759 = call zeroext i8 @mult(i8 zeroext %438, i8 zeroext %439) #3
  %scevgep247.2760 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %432, i64 0, i64 0, i64 0
  store i8 %call75.i294.2759, i8* %scevgep247.2760, align 1
  %scevgep244.2761 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %431, i64 0, i64 0, i64 0
  %440 = load i8, i8* %scevgep244.2761, align 1
  %conv84.i303.2762 = zext i8 %440 to i32
  %scevgep248.2763 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %432, i64 0, i64 0, i64 0
  %441 = load i8, i8* %scevgep248.2763, align 1
  %conv89.i308.2764 = zext i8 %441 to i32
  %xor90.i309.2765 = xor i32 %conv84.i303.2762, %conv89.i308.2764
  %conv91.i310.2766 = trunc i32 %xor90.i309.2765 to i8
  %scevgep251.2767 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %433, i64 0, i64 0, i64 0
  store i8 %conv91.i310.2766, i8* %scevgep251.2767, align 1
  %scevgep232.1.2 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 1
  %442 = load i8, i8* %scevgep232.1.2, align 1
  %conv44.i262.1.2 = zext i8 %442 to i32
  %scevgep235.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %429, i64 0, i64 0, i64 1
  %443 = load i8, i8* %scevgep235.1.2, align 1
  %conv49.i267.1.2 = zext i8 %443 to i32
  %xor.i268.1.2 = xor i32 %conv44.i262.1.2, %conv49.i267.1.2
  %conv50.i269.1.2 = trunc i32 %xor.i268.1.2 to i8
  %scevgep239.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %430, i64 0, i64 0, i64 1
  store i8 %conv50.i269.1.2, i8* %scevgep239.1.2, align 1
  %444 = load i8, i8* %arrayidx56.i275.2, align 1
  %conv57.i276.1.2 = zext i8 %444 to i32
  %xor58.i277.1.2 = xor i32 %conv57.i276.1.2, 1
  %conv59.i278.1.2 = trunc i32 %xor58.i277.1.2 to i8
  %scevgep236.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %429, i64 0, i64 0, i64 1
  %445 = load i8, i8* %scevgep236.1.2, align 1
  %call64.i283.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i278.1.2, i8 zeroext %445) #3
  %scevgep243.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %431, i64 0, i64 0, i64 1
  store i8 %call64.i283.1.2, i8* %scevgep243.1.2, align 1
  %446 = load i8, i8* %arrayidx70.i289.2, align 1
  %scevgep240.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %430, i64 0, i64 0, i64 1
  %447 = load i8, i8* %scevgep240.1.2, align 1
  %call75.i294.1.2 = call zeroext i8 @mult(i8 zeroext %446, i8 zeroext %447) #3
  %scevgep247.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %432, i64 0, i64 0, i64 1
  store i8 %call75.i294.1.2, i8* %scevgep247.1.2, align 1
  %scevgep244.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %431, i64 0, i64 0, i64 1
  %448 = load i8, i8* %scevgep244.1.2, align 1
  %conv84.i303.1.2 = zext i8 %448 to i32
  %scevgep248.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %432, i64 0, i64 0, i64 1
  %449 = load i8, i8* %scevgep248.1.2, align 1
  %conv89.i308.1.2 = zext i8 %449 to i32
  %xor90.i309.1.2 = xor i32 %conv84.i303.1.2, %conv89.i308.1.2
  %conv91.i310.1.2 = trunc i32 %xor90.i309.1.2 to i8
  %scevgep251.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %433, i64 0, i64 0, i64 1
  store i8 %conv91.i310.1.2, i8* %scevgep251.1.2, align 1
  %scevgep232.3.2 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 3
  %450 = load i8, i8* %scevgep232.3.2, align 1
  %conv44.i262.3.2 = zext i8 %450 to i32
  %scevgep235.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %429, i64 0, i64 0, i64 3
  %451 = load i8, i8* %scevgep235.3.2, align 1
  %conv49.i267.3.2 = zext i8 %451 to i32
  %xor.i268.3.2 = xor i32 %conv44.i262.3.2, %conv49.i267.3.2
  %conv50.i269.3.2 = trunc i32 %xor.i268.3.2 to i8
  %scevgep239.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %430, i64 0, i64 0, i64 3
  store i8 %conv50.i269.3.2, i8* %scevgep239.3.2, align 1
  %452 = load i8, i8* %arrayidx56.i275.2, align 1
  %conv57.i276.3.2 = zext i8 %452 to i32
  %xor58.i277.3.2 = xor i32 %conv57.i276.3.2, 1
  %conv59.i278.3.2 = trunc i32 %xor58.i277.3.2 to i8
  %scevgep236.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %429, i64 0, i64 0, i64 3
  %453 = load i8, i8* %scevgep236.3.2, align 1
  %call64.i283.3.2 = call zeroext i8 @mult(i8 zeroext %conv59.i278.3.2, i8 zeroext %453) #3
  %scevgep243.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %431, i64 0, i64 0, i64 3
  store i8 %call64.i283.3.2, i8* %scevgep243.3.2, align 1
  %454 = load i8, i8* %arrayidx70.i289.2, align 1
  %scevgep240.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %430, i64 0, i64 0, i64 3
  %455 = load i8, i8* %scevgep240.3.2, align 1
  %call75.i294.3.2 = call zeroext i8 @mult(i8 zeroext %454, i8 zeroext %455) #3
  %scevgep247.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %432, i64 0, i64 0, i64 3
  store i8 %call75.i294.3.2, i8* %scevgep247.3.2, align 1
  %scevgep244.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %431, i64 0, i64 0, i64 3
  %456 = load i8, i8* %scevgep244.3.2, align 1
  %conv84.i303.3.2 = zext i8 %456 to i32
  %scevgep248.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %432, i64 0, i64 0, i64 3
  %457 = load i8, i8* %scevgep248.3.2, align 1
  %conv89.i308.3.2 = zext i8 %457 to i32
  %xor90.i309.3.2 = xor i32 %conv84.i303.3.2, %conv89.i308.3.2
  %conv91.i310.3.2 = trunc i32 %xor90.i309.3.2 to i8
  %scevgep251.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %433, i64 0, i64 0, i64 3
  store i8 %conv91.i310.3.2, i8* %scevgep251.3.2, align 1
  %scevgep232.4.2 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 4
  %458 = load i8, i8* %scevgep232.4.2, align 1
  %conv44.i262.4.2 = zext i8 %458 to i32
  %scevgep235.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %429, i64 0, i64 0, i64 4
  %459 = load i8, i8* %scevgep235.4.2, align 1
  %conv49.i267.4.2 = zext i8 %459 to i32
  %xor.i268.4.2 = xor i32 %conv44.i262.4.2, %conv49.i267.4.2
  %conv50.i269.4.2 = trunc i32 %xor.i268.4.2 to i8
  %scevgep239.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %430, i64 0, i64 0, i64 4
  store i8 %conv50.i269.4.2, i8* %scevgep239.4.2, align 1
  %460 = load i8, i8* %arrayidx56.i275.2, align 1
  %conv57.i276.4.2 = zext i8 %460 to i32
  %xor58.i277.4.2 = xor i32 %conv57.i276.4.2, 1
  %conv59.i278.4.2 = trunc i32 %xor58.i277.4.2 to i8
  %scevgep236.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %429, i64 0, i64 0, i64 4
  %461 = load i8, i8* %scevgep236.4.2, align 1
  %call64.i283.4.2 = call zeroext i8 @mult(i8 zeroext %conv59.i278.4.2, i8 zeroext %461) #3
  %scevgep243.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %431, i64 0, i64 0, i64 4
  store i8 %call64.i283.4.2, i8* %scevgep243.4.2, align 1
  %462 = load i8, i8* %arrayidx70.i289.2, align 1
  %scevgep240.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %430, i64 0, i64 0, i64 4
  %463 = load i8, i8* %scevgep240.4.2, align 1
  %call75.i294.4.2 = call zeroext i8 @mult(i8 zeroext %462, i8 zeroext %463) #3
  %scevgep247.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %432, i64 0, i64 0, i64 4
  store i8 %call75.i294.4.2, i8* %scevgep247.4.2, align 1
  %scevgep244.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %431, i64 0, i64 0, i64 4
  %464 = load i8, i8* %scevgep244.4.2, align 1
  %conv84.i303.4.2 = zext i8 %464 to i32
  %scevgep248.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %432, i64 0, i64 0, i64 4
  %465 = load i8, i8* %scevgep248.4.2, align 1
  %conv89.i308.4.2 = zext i8 %465 to i32
  %xor90.i309.4.2 = xor i32 %conv84.i303.4.2, %conv89.i308.4.2
  %conv91.i310.4.2 = trunc i32 %xor90.i309.4.2 to i8
  %scevgep251.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %433, i64 0, i64 0, i64 4
  store i8 %conv91.i310.4.2, i8* %scevgep251.4.2, align 1
  %scevgep234.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %429, i64 0, i64 1, i64 0
  %466 = bitcast i8* %scevgep234.2 to [5 x [5 x i8]]*
  %scevgep238.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %430, i64 0, i64 1, i64 0
  %467 = bitcast i8* %scevgep238.2 to [5 x [5 x i8]]*
  %scevgep242.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %431, i64 0, i64 1, i64 0
  %468 = bitcast i8* %scevgep242.2 to [5 x [5 x i8]]*
  %scevgep246.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %432, i64 0, i64 1, i64 0
  %469 = bitcast i8* %scevgep246.2 to [5 x [5 x i8]]*
  %scevgep250.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %433, i64 0, i64 1, i64 0
  %470 = bitcast i8* %scevgep250.2 to [5 x [5 x i8]]*
  %arrayidx56.i275.3 = getelementptr inbounds i8, i8* %arraydecay12, i64 3
  %arrayidx70.i289.3 = getelementptr inbounds i8, i8* %arraydecay12, i64 3
  %scevgep232.3772 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 0
  %471 = load i8, i8* %scevgep232.3772, align 1
  %conv44.i262.3773 = zext i8 %471 to i32
  %scevgep235.3774 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %466, i64 0, i64 0, i64 0
  %472 = load i8, i8* %scevgep235.3774, align 1
  %conv49.i267.3775 = zext i8 %472 to i32
  %xor.i268.3776 = xor i32 %conv44.i262.3773, %conv49.i267.3775
  %conv50.i269.3777 = trunc i32 %xor.i268.3776 to i8
  %scevgep239.3778 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %467, i64 0, i64 0, i64 0
  store i8 %conv50.i269.3777, i8* %scevgep239.3778, align 1
  %473 = load i8, i8* %arrayidx56.i275.3, align 1
  %conv57.i276.3779 = zext i8 %473 to i32
  %xor58.i277.3780 = xor i32 %conv57.i276.3779, 1
  %conv59.i278.3781 = trunc i32 %xor58.i277.3780 to i8
  %scevgep236.3782 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %466, i64 0, i64 0, i64 0
  %474 = load i8, i8* %scevgep236.3782, align 1
  %call64.i283.3783 = call zeroext i8 @mult(i8 zeroext %conv59.i278.3781, i8 zeroext %474) #3
  %scevgep243.3784 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %468, i64 0, i64 0, i64 0
  store i8 %call64.i283.3783, i8* %scevgep243.3784, align 1
  %475 = load i8, i8* %arrayidx70.i289.3, align 1
  %scevgep240.3785 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %467, i64 0, i64 0, i64 0
  %476 = load i8, i8* %scevgep240.3785, align 1
  %call75.i294.3786 = call zeroext i8 @mult(i8 zeroext %475, i8 zeroext %476) #3
  %scevgep247.3787 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %469, i64 0, i64 0, i64 0
  store i8 %call75.i294.3786, i8* %scevgep247.3787, align 1
  %scevgep244.3788 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %468, i64 0, i64 0, i64 0
  %477 = load i8, i8* %scevgep244.3788, align 1
  %conv84.i303.3789 = zext i8 %477 to i32
  %scevgep248.3790 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %469, i64 0, i64 0, i64 0
  %478 = load i8, i8* %scevgep248.3790, align 1
  %conv89.i308.3791 = zext i8 %478 to i32
  %xor90.i309.3792 = xor i32 %conv84.i303.3789, %conv89.i308.3791
  %conv91.i310.3793 = trunc i32 %xor90.i309.3792 to i8
  %scevgep251.3794 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %470, i64 0, i64 0, i64 0
  store i8 %conv91.i310.3793, i8* %scevgep251.3794, align 1
  %scevgep232.1.3 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 1
  %479 = load i8, i8* %scevgep232.1.3, align 1
  %conv44.i262.1.3 = zext i8 %479 to i32
  %scevgep235.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %466, i64 0, i64 0, i64 1
  %480 = load i8, i8* %scevgep235.1.3, align 1
  %conv49.i267.1.3 = zext i8 %480 to i32
  %xor.i268.1.3 = xor i32 %conv44.i262.1.3, %conv49.i267.1.3
  %conv50.i269.1.3 = trunc i32 %xor.i268.1.3 to i8
  %scevgep239.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %467, i64 0, i64 0, i64 1
  store i8 %conv50.i269.1.3, i8* %scevgep239.1.3, align 1
  %481 = load i8, i8* %arrayidx56.i275.3, align 1
  %conv57.i276.1.3 = zext i8 %481 to i32
  %xor58.i277.1.3 = xor i32 %conv57.i276.1.3, 1
  %conv59.i278.1.3 = trunc i32 %xor58.i277.1.3 to i8
  %scevgep236.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %466, i64 0, i64 0, i64 1
  %482 = load i8, i8* %scevgep236.1.3, align 1
  %call64.i283.1.3 = call zeroext i8 @mult(i8 zeroext %conv59.i278.1.3, i8 zeroext %482) #3
  %scevgep243.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %468, i64 0, i64 0, i64 1
  store i8 %call64.i283.1.3, i8* %scevgep243.1.3, align 1
  %483 = load i8, i8* %arrayidx70.i289.3, align 1
  %scevgep240.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %467, i64 0, i64 0, i64 1
  %484 = load i8, i8* %scevgep240.1.3, align 1
  %call75.i294.1.3 = call zeroext i8 @mult(i8 zeroext %483, i8 zeroext %484) #3
  %scevgep247.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %469, i64 0, i64 0, i64 1
  store i8 %call75.i294.1.3, i8* %scevgep247.1.3, align 1
  %scevgep244.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %468, i64 0, i64 0, i64 1
  %485 = load i8, i8* %scevgep244.1.3, align 1
  %conv84.i303.1.3 = zext i8 %485 to i32
  %scevgep248.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %469, i64 0, i64 0, i64 1
  %486 = load i8, i8* %scevgep248.1.3, align 1
  %conv89.i308.1.3 = zext i8 %486 to i32
  %xor90.i309.1.3 = xor i32 %conv84.i303.1.3, %conv89.i308.1.3
  %conv91.i310.1.3 = trunc i32 %xor90.i309.1.3 to i8
  %scevgep251.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %470, i64 0, i64 0, i64 1
  store i8 %conv91.i310.1.3, i8* %scevgep251.1.3, align 1
  %scevgep232.2.3 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 2
  %487 = load i8, i8* %scevgep232.2.3, align 1
  %conv44.i262.2.3 = zext i8 %487 to i32
  %scevgep235.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %466, i64 0, i64 0, i64 2
  %488 = load i8, i8* %scevgep235.2.3, align 1
  %conv49.i267.2.3 = zext i8 %488 to i32
  %xor.i268.2.3 = xor i32 %conv44.i262.2.3, %conv49.i267.2.3
  %conv50.i269.2.3 = trunc i32 %xor.i268.2.3 to i8
  %scevgep239.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %467, i64 0, i64 0, i64 2
  store i8 %conv50.i269.2.3, i8* %scevgep239.2.3, align 1
  %489 = load i8, i8* %arrayidx56.i275.3, align 1
  %conv57.i276.2.3 = zext i8 %489 to i32
  %xor58.i277.2.3 = xor i32 %conv57.i276.2.3, 1
  %conv59.i278.2.3 = trunc i32 %xor58.i277.2.3 to i8
  %scevgep236.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %466, i64 0, i64 0, i64 2
  %490 = load i8, i8* %scevgep236.2.3, align 1
  %call64.i283.2.3 = call zeroext i8 @mult(i8 zeroext %conv59.i278.2.3, i8 zeroext %490) #3
  %scevgep243.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %468, i64 0, i64 0, i64 2
  store i8 %call64.i283.2.3, i8* %scevgep243.2.3, align 1
  %491 = load i8, i8* %arrayidx70.i289.3, align 1
  %scevgep240.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %467, i64 0, i64 0, i64 2
  %492 = load i8, i8* %scevgep240.2.3, align 1
  %call75.i294.2.3 = call zeroext i8 @mult(i8 zeroext %491, i8 zeroext %492) #3
  %scevgep247.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %469, i64 0, i64 0, i64 2
  store i8 %call75.i294.2.3, i8* %scevgep247.2.3, align 1
  %scevgep244.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %468, i64 0, i64 0, i64 2
  %493 = load i8, i8* %scevgep244.2.3, align 1
  %conv84.i303.2.3 = zext i8 %493 to i32
  %scevgep248.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %469, i64 0, i64 0, i64 2
  %494 = load i8, i8* %scevgep248.2.3, align 1
  %conv89.i308.2.3 = zext i8 %494 to i32
  %xor90.i309.2.3 = xor i32 %conv84.i303.2.3, %conv89.i308.2.3
  %conv91.i310.2.3 = trunc i32 %xor90.i309.2.3 to i8
  %scevgep251.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %470, i64 0, i64 0, i64 2
  store i8 %conv91.i310.2.3, i8* %scevgep251.2.3, align 1
  %scevgep232.4.3 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 4
  %495 = load i8, i8* %scevgep232.4.3, align 1
  %conv44.i262.4.3 = zext i8 %495 to i32
  %scevgep235.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %466, i64 0, i64 0, i64 4
  %496 = load i8, i8* %scevgep235.4.3, align 1
  %conv49.i267.4.3 = zext i8 %496 to i32
  %xor.i268.4.3 = xor i32 %conv44.i262.4.3, %conv49.i267.4.3
  %conv50.i269.4.3 = trunc i32 %xor.i268.4.3 to i8
  %scevgep239.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %467, i64 0, i64 0, i64 4
  store i8 %conv50.i269.4.3, i8* %scevgep239.4.3, align 1
  %497 = load i8, i8* %arrayidx56.i275.3, align 1
  %conv57.i276.4.3 = zext i8 %497 to i32
  %xor58.i277.4.3 = xor i32 %conv57.i276.4.3, 1
  %conv59.i278.4.3 = trunc i32 %xor58.i277.4.3 to i8
  %scevgep236.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %466, i64 0, i64 0, i64 4
  %498 = load i8, i8* %scevgep236.4.3, align 1
  %call64.i283.4.3 = call zeroext i8 @mult(i8 zeroext %conv59.i278.4.3, i8 zeroext %498) #3
  %scevgep243.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %468, i64 0, i64 0, i64 4
  store i8 %call64.i283.4.3, i8* %scevgep243.4.3, align 1
  %499 = load i8, i8* %arrayidx70.i289.3, align 1
  %scevgep240.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %467, i64 0, i64 0, i64 4
  %500 = load i8, i8* %scevgep240.4.3, align 1
  %call75.i294.4.3 = call zeroext i8 @mult(i8 zeroext %499, i8 zeroext %500) #3
  %scevgep247.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %469, i64 0, i64 0, i64 4
  store i8 %call75.i294.4.3, i8* %scevgep247.4.3, align 1
  %scevgep244.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %468, i64 0, i64 0, i64 4
  %501 = load i8, i8* %scevgep244.4.3, align 1
  %conv84.i303.4.3 = zext i8 %501 to i32
  %scevgep248.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %469, i64 0, i64 0, i64 4
  %502 = load i8, i8* %scevgep248.4.3, align 1
  %conv89.i308.4.3 = zext i8 %502 to i32
  %xor90.i309.4.3 = xor i32 %conv84.i303.4.3, %conv89.i308.4.3
  %conv91.i310.4.3 = trunc i32 %xor90.i309.4.3 to i8
  %scevgep251.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %470, i64 0, i64 0, i64 4
  store i8 %conv91.i310.4.3, i8* %scevgep251.4.3, align 1
  %scevgep234.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %466, i64 0, i64 1, i64 0
  %503 = bitcast i8* %scevgep234.3 to [5 x [5 x i8]]*
  %scevgep238.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %467, i64 0, i64 1, i64 0
  %504 = bitcast i8* %scevgep238.3 to [5 x [5 x i8]]*
  %scevgep242.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %468, i64 0, i64 1, i64 0
  %505 = bitcast i8* %scevgep242.3 to [5 x [5 x i8]]*
  %scevgep246.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %469, i64 0, i64 1, i64 0
  %506 = bitcast i8* %scevgep246.3 to [5 x [5 x i8]]*
  %scevgep250.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %470, i64 0, i64 1, i64 0
  %507 = bitcast i8* %scevgep250.3 to [5 x [5 x i8]]*
  %arrayidx56.i275.4 = getelementptr inbounds i8, i8* %arraydecay12, i64 4
  %arrayidx70.i289.4 = getelementptr inbounds i8, i8* %arraydecay12, i64 4
  %scevgep232.4799 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 0
  %508 = load i8, i8* %scevgep232.4799, align 1
  %conv44.i262.4800 = zext i8 %508 to i32
  %scevgep235.4801 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %503, i64 0, i64 0, i64 0
  %509 = load i8, i8* %scevgep235.4801, align 1
  %conv49.i267.4802 = zext i8 %509 to i32
  %xor.i268.4803 = xor i32 %conv44.i262.4800, %conv49.i267.4802
  %conv50.i269.4804 = trunc i32 %xor.i268.4803 to i8
  %scevgep239.4805 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %504, i64 0, i64 0, i64 0
  store i8 %conv50.i269.4804, i8* %scevgep239.4805, align 1
  %510 = load i8, i8* %arrayidx56.i275.4, align 1
  %conv57.i276.4806 = zext i8 %510 to i32
  %xor58.i277.4807 = xor i32 %conv57.i276.4806, 1
  %conv59.i278.4808 = trunc i32 %xor58.i277.4807 to i8
  %scevgep236.4809 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %503, i64 0, i64 0, i64 0
  %511 = load i8, i8* %scevgep236.4809, align 1
  %call64.i283.4810 = call zeroext i8 @mult(i8 zeroext %conv59.i278.4808, i8 zeroext %511) #3
  %scevgep243.4811 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %505, i64 0, i64 0, i64 0
  store i8 %call64.i283.4810, i8* %scevgep243.4811, align 1
  %512 = load i8, i8* %arrayidx70.i289.4, align 1
  %scevgep240.4812 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %504, i64 0, i64 0, i64 0
  %513 = load i8, i8* %scevgep240.4812, align 1
  %call75.i294.4813 = call zeroext i8 @mult(i8 zeroext %512, i8 zeroext %513) #3
  %scevgep247.4814 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %506, i64 0, i64 0, i64 0
  store i8 %call75.i294.4813, i8* %scevgep247.4814, align 1
  %scevgep244.4815 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %505, i64 0, i64 0, i64 0
  %514 = load i8, i8* %scevgep244.4815, align 1
  %conv84.i303.4816 = zext i8 %514 to i32
  %scevgep248.4817 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %506, i64 0, i64 0, i64 0
  %515 = load i8, i8* %scevgep248.4817, align 1
  %conv89.i308.4818 = zext i8 %515 to i32
  %xor90.i309.4819 = xor i32 %conv84.i303.4816, %conv89.i308.4818
  %conv91.i310.4820 = trunc i32 %xor90.i309.4819 to i8
  %scevgep251.4821 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %507, i64 0, i64 0, i64 0
  store i8 %conv91.i310.4820, i8* %scevgep251.4821, align 1
  %scevgep232.1.4 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 1
  %516 = load i8, i8* %scevgep232.1.4, align 1
  %conv44.i262.1.4 = zext i8 %516 to i32
  %scevgep235.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %503, i64 0, i64 0, i64 1
  %517 = load i8, i8* %scevgep235.1.4, align 1
  %conv49.i267.1.4 = zext i8 %517 to i32
  %xor.i268.1.4 = xor i32 %conv44.i262.1.4, %conv49.i267.1.4
  %conv50.i269.1.4 = trunc i32 %xor.i268.1.4 to i8
  %scevgep239.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %504, i64 0, i64 0, i64 1
  store i8 %conv50.i269.1.4, i8* %scevgep239.1.4, align 1
  %518 = load i8, i8* %arrayidx56.i275.4, align 1
  %conv57.i276.1.4 = zext i8 %518 to i32
  %xor58.i277.1.4 = xor i32 %conv57.i276.1.4, 1
  %conv59.i278.1.4 = trunc i32 %xor58.i277.1.4 to i8
  %scevgep236.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %503, i64 0, i64 0, i64 1
  %519 = load i8, i8* %scevgep236.1.4, align 1
  %call64.i283.1.4 = call zeroext i8 @mult(i8 zeroext %conv59.i278.1.4, i8 zeroext %519) #3
  %scevgep243.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %505, i64 0, i64 0, i64 1
  store i8 %call64.i283.1.4, i8* %scevgep243.1.4, align 1
  %520 = load i8, i8* %arrayidx70.i289.4, align 1
  %scevgep240.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %504, i64 0, i64 0, i64 1
  %521 = load i8, i8* %scevgep240.1.4, align 1
  %call75.i294.1.4 = call zeroext i8 @mult(i8 zeroext %520, i8 zeroext %521) #3
  %scevgep247.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %506, i64 0, i64 0, i64 1
  store i8 %call75.i294.1.4, i8* %scevgep247.1.4, align 1
  %scevgep244.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %505, i64 0, i64 0, i64 1
  %522 = load i8, i8* %scevgep244.1.4, align 1
  %conv84.i303.1.4 = zext i8 %522 to i32
  %scevgep248.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %506, i64 0, i64 0, i64 1
  %523 = load i8, i8* %scevgep248.1.4, align 1
  %conv89.i308.1.4 = zext i8 %523 to i32
  %xor90.i309.1.4 = xor i32 %conv84.i303.1.4, %conv89.i308.1.4
  %conv91.i310.1.4 = trunc i32 %xor90.i309.1.4 to i8
  %scevgep251.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %507, i64 0, i64 0, i64 1
  store i8 %conv91.i310.1.4, i8* %scevgep251.1.4, align 1
  %scevgep232.2.4 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 2
  %524 = load i8, i8* %scevgep232.2.4, align 1
  %conv44.i262.2.4 = zext i8 %524 to i32
  %scevgep235.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %503, i64 0, i64 0, i64 2
  %525 = load i8, i8* %scevgep235.2.4, align 1
  %conv49.i267.2.4 = zext i8 %525 to i32
  %xor.i268.2.4 = xor i32 %conv44.i262.2.4, %conv49.i267.2.4
  %conv50.i269.2.4 = trunc i32 %xor.i268.2.4 to i8
  %scevgep239.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %504, i64 0, i64 0, i64 2
  store i8 %conv50.i269.2.4, i8* %scevgep239.2.4, align 1
  %526 = load i8, i8* %arrayidx56.i275.4, align 1
  %conv57.i276.2.4 = zext i8 %526 to i32
  %xor58.i277.2.4 = xor i32 %conv57.i276.2.4, 1
  %conv59.i278.2.4 = trunc i32 %xor58.i277.2.4 to i8
  %scevgep236.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %503, i64 0, i64 0, i64 2
  %527 = load i8, i8* %scevgep236.2.4, align 1
  %call64.i283.2.4 = call zeroext i8 @mult(i8 zeroext %conv59.i278.2.4, i8 zeroext %527) #3
  %scevgep243.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %505, i64 0, i64 0, i64 2
  store i8 %call64.i283.2.4, i8* %scevgep243.2.4, align 1
  %528 = load i8, i8* %arrayidx70.i289.4, align 1
  %scevgep240.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %504, i64 0, i64 0, i64 2
  %529 = load i8, i8* %scevgep240.2.4, align 1
  %call75.i294.2.4 = call zeroext i8 @mult(i8 zeroext %528, i8 zeroext %529) #3
  %scevgep247.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %506, i64 0, i64 0, i64 2
  store i8 %call75.i294.2.4, i8* %scevgep247.2.4, align 1
  %scevgep244.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %505, i64 0, i64 0, i64 2
  %530 = load i8, i8* %scevgep244.2.4, align 1
  %conv84.i303.2.4 = zext i8 %530 to i32
  %scevgep248.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %506, i64 0, i64 0, i64 2
  %531 = load i8, i8* %scevgep248.2.4, align 1
  %conv89.i308.2.4 = zext i8 %531 to i32
  %xor90.i309.2.4 = xor i32 %conv84.i303.2.4, %conv89.i308.2.4
  %conv91.i310.2.4 = trunc i32 %xor90.i309.2.4 to i8
  %scevgep251.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %507, i64 0, i64 0, i64 2
  store i8 %conv91.i310.2.4, i8* %scevgep251.2.4, align 1
  %scevgep232.3.4 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 3
  %532 = load i8, i8* %scevgep232.3.4, align 1
  %conv44.i262.3.4 = zext i8 %532 to i32
  %scevgep235.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %503, i64 0, i64 0, i64 3
  %533 = load i8, i8* %scevgep235.3.4, align 1
  %conv49.i267.3.4 = zext i8 %533 to i32
  %xor.i268.3.4 = xor i32 %conv44.i262.3.4, %conv49.i267.3.4
  %conv50.i269.3.4 = trunc i32 %xor.i268.3.4 to i8
  %scevgep239.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %504, i64 0, i64 0, i64 3
  store i8 %conv50.i269.3.4, i8* %scevgep239.3.4, align 1
  %534 = load i8, i8* %arrayidx56.i275.4, align 1
  %conv57.i276.3.4 = zext i8 %534 to i32
  %xor58.i277.3.4 = xor i32 %conv57.i276.3.4, 1
  %conv59.i278.3.4 = trunc i32 %xor58.i277.3.4 to i8
  %scevgep236.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %503, i64 0, i64 0, i64 3
  %535 = load i8, i8* %scevgep236.3.4, align 1
  %call64.i283.3.4 = call zeroext i8 @mult(i8 zeroext %conv59.i278.3.4, i8 zeroext %535) #3
  %scevgep243.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %505, i64 0, i64 0, i64 3
  store i8 %call64.i283.3.4, i8* %scevgep243.3.4, align 1
  %536 = load i8, i8* %arrayidx70.i289.4, align 1
  %scevgep240.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %504, i64 0, i64 0, i64 3
  %537 = load i8, i8* %scevgep240.3.4, align 1
  %call75.i294.3.4 = call zeroext i8 @mult(i8 zeroext %536, i8 zeroext %537) #3
  %scevgep247.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %506, i64 0, i64 0, i64 3
  store i8 %call75.i294.3.4, i8* %scevgep247.3.4, align 1
  %scevgep244.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %505, i64 0, i64 0, i64 3
  %538 = load i8, i8* %scevgep244.3.4, align 1
  %conv84.i303.3.4 = zext i8 %538 to i32
  %scevgep248.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %506, i64 0, i64 0, i64 3
  %539 = load i8, i8* %scevgep248.3.4, align 1
  %conv89.i308.3.4 = zext i8 %539 to i32
  %xor90.i309.3.4 = xor i32 %conv84.i303.3.4, %conv89.i308.3.4
  %conv91.i310.3.4 = trunc i32 %xor90.i309.3.4 to i8
  %scevgep251.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %507, i64 0, i64 0, i64 3
  store i8 %conv91.i310.3.4, i8* %scevgep251.3.4, align 1
  %540 = load i8, i8* %arraydecay12, align 1
  %541 = load i8, i8* %arraydecay13, align 1
  %call111.i327 = call zeroext i8 @mult(i8 zeroext %540, i8 zeroext %541) #3
  store i8 %call111.i327, i8* %arraydecay14, align 1
  %scevgep222.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 1
  %542 = load i8, i8* %scevgep222.1, align 1
  %conv126.i339.1 = zext i8 %542 to i32
  %543 = load i8, i8* %arraydecay14, align 1
  %conv129.i342.1 = zext i8 %543 to i32
  %xor130.i343.1 = xor i32 %conv129.i342.1, %conv126.i339.1
  %conv131.i344.1 = trunc i32 %xor130.i343.1 to i8
  store i8 %conv131.i344.1, i8* %arraydecay14, align 1
  %scevgep222.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 2
  %544 = load i8, i8* %scevgep222.2, align 1
  %conv126.i339.2 = zext i8 %544 to i32
  %545 = load i8, i8* %arraydecay14, align 1
  %conv129.i342.2 = zext i8 %545 to i32
  %xor130.i343.2 = xor i32 %conv129.i342.2, %conv126.i339.2
  %conv131.i344.2 = trunc i32 %xor130.i343.2 to i8
  store i8 %conv131.i344.2, i8* %arraydecay14, align 1
  %scevgep222.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 3
  %546 = load i8, i8* %scevgep222.3, align 1
  %conv126.i339.3 = zext i8 %546 to i32
  %547 = load i8, i8* %arraydecay14, align 1
  %conv129.i342.3 = zext i8 %547 to i32
  %xor130.i343.3 = xor i32 %conv129.i342.3, %conv126.i339.3
  %conv131.i344.3 = trunc i32 %xor130.i343.3 to i8
  store i8 %conv131.i344.3, i8* %arraydecay14, align 1
  %scevgep222.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 4
  %548 = load i8, i8* %scevgep222.4, align 1
  %conv126.i339.4 = zext i8 %548 to i32
  %549 = load i8, i8* %arraydecay14, align 1
  %conv129.i342.4 = zext i8 %549 to i32
  %xor130.i343.4 = xor i32 %conv129.i342.4, %conv126.i339.4
  %conv131.i344.4 = trunc i32 %xor130.i343.4 to i8
  store i8 %conv131.i344.4, i8* %arraydecay14, align 1
  %scevgep221 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 1, i64 0
  %550 = bitcast i8* %scevgep221 to [5 x [5 x i8]]*
  %arrayidx108.i324.1 = getelementptr inbounds i8, i8* %arraydecay12, i64 1
  %551 = load i8, i8* %arrayidx108.i324.1, align 1
  %arrayidx110.i326.1 = getelementptr inbounds i8, i8* %arraydecay13, i64 1
  %552 = load i8, i8* %arrayidx110.i326.1, align 1
  %call111.i327.1 = call zeroext i8 @mult(i8 zeroext %551, i8 zeroext %552) #3
  %arrayidx113.i329.1 = getelementptr inbounds i8, i8* %arraydecay14, i64 1
  store i8 %call111.i327.1, i8* %arrayidx113.i329.1, align 1
  %arrayidx128.i341.1 = getelementptr inbounds i8, i8* %arraydecay14, i64 1
  %scevgep222.1682 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %550, i64 0, i64 0, i64 0
  %553 = load i8, i8* %scevgep222.1682, align 1
  %conv126.i339.1683 = zext i8 %553 to i32
  %554 = load i8, i8* %arrayidx128.i341.1, align 1
  %conv129.i342.1684 = zext i8 %554 to i32
  %xor130.i343.1685 = xor i32 %conv129.i342.1684, %conv126.i339.1683
  %conv131.i344.1686 = trunc i32 %xor130.i343.1685 to i8
  store i8 %conv131.i344.1686, i8* %arrayidx128.i341.1, align 1
  %scevgep222.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %550, i64 0, i64 0, i64 2
  %555 = load i8, i8* %scevgep222.2.1, align 1
  %conv126.i339.2.1 = zext i8 %555 to i32
  %556 = load i8, i8* %arrayidx128.i341.1, align 1
  %conv129.i342.2.1 = zext i8 %556 to i32
  %xor130.i343.2.1 = xor i32 %conv129.i342.2.1, %conv126.i339.2.1
  %conv131.i344.2.1 = trunc i32 %xor130.i343.2.1 to i8
  store i8 %conv131.i344.2.1, i8* %arrayidx128.i341.1, align 1
  %scevgep222.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %550, i64 0, i64 0, i64 3
  %557 = load i8, i8* %scevgep222.3.1, align 1
  %conv126.i339.3.1 = zext i8 %557 to i32
  %558 = load i8, i8* %arrayidx128.i341.1, align 1
  %conv129.i342.3.1 = zext i8 %558 to i32
  %xor130.i343.3.1 = xor i32 %conv129.i342.3.1, %conv126.i339.3.1
  %conv131.i344.3.1 = trunc i32 %xor130.i343.3.1 to i8
  store i8 %conv131.i344.3.1, i8* %arrayidx128.i341.1, align 1
  %scevgep222.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %550, i64 0, i64 0, i64 4
  %559 = load i8, i8* %scevgep222.4.1, align 1
  %conv126.i339.4.1 = zext i8 %559 to i32
  %560 = load i8, i8* %arrayidx128.i341.1, align 1
  %conv129.i342.4.1 = zext i8 %560 to i32
  %xor130.i343.4.1 = xor i32 %conv129.i342.4.1, %conv126.i339.4.1
  %conv131.i344.4.1 = trunc i32 %xor130.i343.4.1 to i8
  store i8 %conv131.i344.4.1, i8* %arrayidx128.i341.1, align 1
  %scevgep221.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %550, i64 0, i64 1, i64 0
  %561 = bitcast i8* %scevgep221.1 to [5 x [5 x i8]]*
  %arrayidx108.i324.2 = getelementptr inbounds i8, i8* %arraydecay12, i64 2
  %562 = load i8, i8* %arrayidx108.i324.2, align 1
  %arrayidx110.i326.2 = getelementptr inbounds i8, i8* %arraydecay13, i64 2
  %563 = load i8, i8* %arrayidx110.i326.2, align 1
  %call111.i327.2 = call zeroext i8 @mult(i8 zeroext %562, i8 zeroext %563) #3
  %arrayidx113.i329.2 = getelementptr inbounds i8, i8* %arraydecay14, i64 2
  store i8 %call111.i327.2, i8* %arrayidx113.i329.2, align 1
  %arrayidx128.i341.2 = getelementptr inbounds i8, i8* %arraydecay14, i64 2
  %scevgep222.2691 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %561, i64 0, i64 0, i64 0
  %564 = load i8, i8* %scevgep222.2691, align 1
  %conv126.i339.2692 = zext i8 %564 to i32
  %565 = load i8, i8* %arrayidx128.i341.2, align 1
  %conv129.i342.2693 = zext i8 %565 to i32
  %xor130.i343.2694 = xor i32 %conv129.i342.2693, %conv126.i339.2692
  %conv131.i344.2695 = trunc i32 %xor130.i343.2694 to i8
  store i8 %conv131.i344.2695, i8* %arrayidx128.i341.2, align 1
  %scevgep222.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %561, i64 0, i64 0, i64 1
  %566 = load i8, i8* %scevgep222.1.2, align 1
  %conv126.i339.1.2 = zext i8 %566 to i32
  %567 = load i8, i8* %arrayidx128.i341.2, align 1
  %conv129.i342.1.2 = zext i8 %567 to i32
  %xor130.i343.1.2 = xor i32 %conv129.i342.1.2, %conv126.i339.1.2
  %conv131.i344.1.2 = trunc i32 %xor130.i343.1.2 to i8
  store i8 %conv131.i344.1.2, i8* %arrayidx128.i341.2, align 1
  %scevgep222.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %561, i64 0, i64 0, i64 3
  %568 = load i8, i8* %scevgep222.3.2, align 1
  %conv126.i339.3.2 = zext i8 %568 to i32
  %569 = load i8, i8* %arrayidx128.i341.2, align 1
  %conv129.i342.3.2 = zext i8 %569 to i32
  %xor130.i343.3.2 = xor i32 %conv129.i342.3.2, %conv126.i339.3.2
  %conv131.i344.3.2 = trunc i32 %xor130.i343.3.2 to i8
  store i8 %conv131.i344.3.2, i8* %arrayidx128.i341.2, align 1
  %scevgep222.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %561, i64 0, i64 0, i64 4
  %570 = load i8, i8* %scevgep222.4.2, align 1
  %conv126.i339.4.2 = zext i8 %570 to i32
  %571 = load i8, i8* %arrayidx128.i341.2, align 1
  %conv129.i342.4.2 = zext i8 %571 to i32
  %xor130.i343.4.2 = xor i32 %conv129.i342.4.2, %conv126.i339.4.2
  %conv131.i344.4.2 = trunc i32 %xor130.i343.4.2 to i8
  store i8 %conv131.i344.4.2, i8* %arrayidx128.i341.2, align 1
  %scevgep221.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %561, i64 0, i64 1, i64 0
  %572 = bitcast i8* %scevgep221.2 to [5 x [5 x i8]]*
  %arrayidx108.i324.3 = getelementptr inbounds i8, i8* %arraydecay12, i64 3
  %573 = load i8, i8* %arrayidx108.i324.3, align 1
  %arrayidx110.i326.3 = getelementptr inbounds i8, i8* %arraydecay13, i64 3
  %574 = load i8, i8* %arrayidx110.i326.3, align 1
  %call111.i327.3 = call zeroext i8 @mult(i8 zeroext %573, i8 zeroext %574) #3
  %arrayidx113.i329.3 = getelementptr inbounds i8, i8* %arraydecay14, i64 3
  store i8 %call111.i327.3, i8* %arrayidx113.i329.3, align 1
  %arrayidx128.i341.3 = getelementptr inbounds i8, i8* %arraydecay14, i64 3
  %scevgep222.3700 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %572, i64 0, i64 0, i64 0
  %575 = load i8, i8* %scevgep222.3700, align 1
  %conv126.i339.3701 = zext i8 %575 to i32
  %576 = load i8, i8* %arrayidx128.i341.3, align 1
  %conv129.i342.3702 = zext i8 %576 to i32
  %xor130.i343.3703 = xor i32 %conv129.i342.3702, %conv126.i339.3701
  %conv131.i344.3704 = trunc i32 %xor130.i343.3703 to i8
  store i8 %conv131.i344.3704, i8* %arrayidx128.i341.3, align 1
  %scevgep222.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %572, i64 0, i64 0, i64 1
  %577 = load i8, i8* %scevgep222.1.3, align 1
  %conv126.i339.1.3 = zext i8 %577 to i32
  %578 = load i8, i8* %arrayidx128.i341.3, align 1
  %conv129.i342.1.3 = zext i8 %578 to i32
  %xor130.i343.1.3 = xor i32 %conv129.i342.1.3, %conv126.i339.1.3
  %conv131.i344.1.3 = trunc i32 %xor130.i343.1.3 to i8
  store i8 %conv131.i344.1.3, i8* %arrayidx128.i341.3, align 1
  %scevgep222.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %572, i64 0, i64 0, i64 2
  %579 = load i8, i8* %scevgep222.2.3, align 1
  %conv126.i339.2.3 = zext i8 %579 to i32
  %580 = load i8, i8* %arrayidx128.i341.3, align 1
  %conv129.i342.2.3 = zext i8 %580 to i32
  %xor130.i343.2.3 = xor i32 %conv129.i342.2.3, %conv126.i339.2.3
  %conv131.i344.2.3 = trunc i32 %xor130.i343.2.3 to i8
  store i8 %conv131.i344.2.3, i8* %arrayidx128.i341.3, align 1
  %scevgep222.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %572, i64 0, i64 0, i64 4
  %581 = load i8, i8* %scevgep222.4.3, align 1
  %conv126.i339.4.3 = zext i8 %581 to i32
  %582 = load i8, i8* %arrayidx128.i341.3, align 1
  %conv129.i342.4.3 = zext i8 %582 to i32
  %xor130.i343.4.3 = xor i32 %conv129.i342.4.3, %conv126.i339.4.3
  %conv131.i344.4.3 = trunc i32 %xor130.i343.4.3 to i8
  store i8 %conv131.i344.4.3, i8* %arrayidx128.i341.3, align 1
  %scevgep221.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %572, i64 0, i64 1, i64 0
  %583 = bitcast i8* %scevgep221.3 to [5 x [5 x i8]]*
  %arrayidx108.i324.4 = getelementptr inbounds i8, i8* %arraydecay12, i64 4
  %584 = load i8, i8* %arrayidx108.i324.4, align 1
  %arrayidx110.i326.4 = getelementptr inbounds i8, i8* %arraydecay13, i64 4
  %585 = load i8, i8* %arrayidx110.i326.4, align 1
  %call111.i327.4 = call zeroext i8 @mult(i8 zeroext %584, i8 zeroext %585) #3
  %arrayidx113.i329.4 = getelementptr inbounds i8, i8* %arraydecay14, i64 4
  store i8 %call111.i327.4, i8* %arrayidx113.i329.4, align 1
  %arrayidx128.i341.4 = getelementptr inbounds i8, i8* %arraydecay14, i64 4
  %scevgep222.4709 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %583, i64 0, i64 0, i64 0
  %586 = load i8, i8* %scevgep222.4709, align 1
  %conv126.i339.4710 = zext i8 %586 to i32
  %587 = load i8, i8* %arrayidx128.i341.4, align 1
  %conv129.i342.4711 = zext i8 %587 to i32
  %xor130.i343.4712 = xor i32 %conv129.i342.4711, %conv126.i339.4710
  %conv131.i344.4713 = trunc i32 %xor130.i343.4712 to i8
  store i8 %conv131.i344.4713, i8* %arrayidx128.i341.4, align 1
  %scevgep222.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %583, i64 0, i64 0, i64 1
  %588 = load i8, i8* %scevgep222.1.4, align 1
  %conv126.i339.1.4 = zext i8 %588 to i32
  %589 = load i8, i8* %arrayidx128.i341.4, align 1
  %conv129.i342.1.4 = zext i8 %589 to i32
  %xor130.i343.1.4 = xor i32 %conv129.i342.1.4, %conv126.i339.1.4
  %conv131.i344.1.4 = trunc i32 %xor130.i343.1.4 to i8
  store i8 %conv131.i344.1.4, i8* %arrayidx128.i341.4, align 1
  %scevgep222.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %583, i64 0, i64 0, i64 2
  %590 = load i8, i8* %scevgep222.2.4, align 1
  %conv126.i339.2.4 = zext i8 %590 to i32
  %591 = load i8, i8* %arrayidx128.i341.4, align 1
  %conv129.i342.2.4 = zext i8 %591 to i32
  %xor130.i343.2.4 = xor i32 %conv129.i342.2.4, %conv126.i339.2.4
  %conv131.i344.2.4 = trunc i32 %xor130.i343.2.4 to i8
  store i8 %conv131.i344.2.4, i8* %arrayidx128.i341.4, align 1
  %scevgep222.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %583, i64 0, i64 0, i64 3
  %592 = load i8, i8* %scevgep222.3.4, align 1
  %conv126.i339.3.4 = zext i8 %592 to i32
  %593 = load i8, i8* %arrayidx128.i341.4, align 1
  %conv129.i342.3.4 = zext i8 %593 to i32
  %xor130.i343.3.4 = xor i32 %conv129.i342.3.4, %conv126.i339.3.4
  %conv131.i344.3.4 = trunc i32 %xor130.i343.3.4 to i8
  store i8 %conv131.i344.3.4, i8* %arrayidx128.i341.4, align 1
  %call139.i350 = call zeroext i8 @mult(i8 zeroext %call.i197, i8 zeroext %call1.i198) #3
  %conv140.i351 = zext i8 %call139.i350 to i32
  %scevgep212 = getelementptr [5 x i8], [5 x i8]* %v, i64 0, i64 0
  %594 = load i8, i8* %scevgep212, align 1
  %scevgep212.1 = getelementptr [5 x i8], [5 x i8]* %v, i64 0, i64 1
  %595 = load i8, i8* %scevgep212.1, align 1
  %conv.i.i172.i358.1 = zext i8 %595 to i32
  %conv1.i.i173.i359.1 = zext i8 %594 to i32
  %xor.i.i174.i360.1 = xor i32 %conv1.i.i173.i359.1, %conv.i.i172.i358.1
  %conv2.i.i175.i361.1 = trunc i32 %xor.i.i174.i360.1 to i8
  %scevgep212.2 = getelementptr [5 x i8], [5 x i8]* %v, i64 0, i64 2
  %596 = load i8, i8* %scevgep212.2, align 1
  %conv.i.i172.i358.2 = zext i8 %596 to i32
  %conv1.i.i173.i359.2 = zext i8 %conv2.i.i175.i361.1 to i32
  %xor.i.i174.i360.2 = xor i32 %conv1.i.i173.i359.2, %conv.i.i172.i358.2
  %conv2.i.i175.i361.2 = trunc i32 %xor.i.i174.i360.2 to i8
  %scevgep212.3 = getelementptr [5 x i8], [5 x i8]* %v, i64 0, i64 3
  %597 = load i8, i8* %scevgep212.3, align 1
  %conv.i.i172.i358.3 = zext i8 %597 to i32
  %conv1.i.i173.i359.3 = zext i8 %conv2.i.i175.i361.2 to i32
  %xor.i.i174.i360.3 = xor i32 %conv1.i.i173.i359.3, %conv.i.i172.i358.3
  %conv2.i.i175.i361.3 = trunc i32 %xor.i.i174.i360.3 to i8
  %scevgep212.4 = getelementptr [5 x i8], [5 x i8]* %v, i64 0, i64 4
  %598 = load i8, i8* %scevgep212.4, align 1
  %conv.i.i172.i358.4 = zext i8 %598 to i32
  %conv1.i.i173.i359.4 = zext i8 %conv2.i.i175.i361.3 to i32
  %xor.i.i174.i360.4 = xor i32 %conv1.i.i173.i359.4, %conv.i.i172.i358.4
  %conv2.i.i175.i361.4 = trunc i32 %xor.i.i174.i360.4 to i8
  %conv142.i364 = zext i8 %conv2.i.i175.i361.4 to i32
  %cmp143.i365 = icmp eq i32 %conv140.i351, %conv142.i364
  call void @assert(i1 zeroext %cmp143.i365) #3
  %scevgep207 = getelementptr [5 x i8], [5 x i8]* %v, i64 0, i64 0
  %599 = load i8, i8* %scevgep207, align 1
  %call.i.i.i1017 = call zeroext i8 @mult(i8 zeroext %599, i8 zeroext %599) #3
  %call.i3.i.i1018 = call zeroext i8 @mult(i8 zeroext %call.i.i.i1017, i8 zeroext %call.i.i.i1017) #3
  %call.i.i5.i1019 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i1018, i8 zeroext %call.i3.i.i1018) #3
  %call.i3.i6.i1020 = call zeroext i8 @mult(i8 zeroext %call.i.i5.i1019, i8 zeroext %call.i.i5.i1019) #3
  %scevgep208 = getelementptr [5 x i8], [5 x i8]* %v16, i64 0, i64 0
  store i8 %call.i3.i6.i1020, i8* %scevgep208, align 1
  %scevgep207.1 = getelementptr [5 x i8], [5 x i8]* %v, i64 0, i64 1
  %600 = load i8, i8* %scevgep207.1, align 1
  %call.i.i.i1013 = call zeroext i8 @mult(i8 zeroext %600, i8 zeroext %600) #3
  %call.i3.i.i1014 = call zeroext i8 @mult(i8 zeroext %call.i.i.i1013, i8 zeroext %call.i.i.i1013) #3
  %call.i.i5.i1015 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i1014, i8 zeroext %call.i3.i.i1014) #3
  %call.i3.i6.i1016 = call zeroext i8 @mult(i8 zeroext %call.i.i5.i1015, i8 zeroext %call.i.i5.i1015) #3
  %scevgep208.1 = getelementptr [5 x i8], [5 x i8]* %v16, i64 0, i64 1
  store i8 %call.i3.i6.i1016, i8* %scevgep208.1, align 1
  %scevgep207.2 = getelementptr [5 x i8], [5 x i8]* %v, i64 0, i64 2
  %601 = load i8, i8* %scevgep207.2, align 1
  %call.i.i.i = call zeroext i8 @mult(i8 zeroext %601, i8 zeroext %601) #3
  %call.i3.i.i1010 = call zeroext i8 @mult(i8 zeroext %call.i.i.i, i8 zeroext %call.i.i.i) #3
  %call.i.i5.i1011 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i1010, i8 zeroext %call.i3.i.i1010) #3
  %call.i3.i6.i1012 = call zeroext i8 @mult(i8 zeroext %call.i.i5.i1011, i8 zeroext %call.i.i5.i1011) #3
  %scevgep208.2 = getelementptr [5 x i8], [5 x i8]* %v16, i64 0, i64 2
  store i8 %call.i3.i6.i1012, i8* %scevgep208.2, align 1
  %scevgep207.3 = getelementptr [5 x i8], [5 x i8]* %v, i64 0, i64 3
  %602 = load i8, i8* %scevgep207.3, align 1
  %call.i.i.i1002 = call zeroext i8 @mult(i8 zeroext %602, i8 zeroext %602) #3
  %call.i3.i.i1003 = call zeroext i8 @mult(i8 zeroext %call.i.i.i1002, i8 zeroext %call.i.i.i1002) #3
  %call.i.i5.i1004 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i1003, i8 zeroext %call.i3.i.i1003) #3
  %call.i3.i6.i1005 = call zeroext i8 @mult(i8 zeroext %call.i.i5.i1004, i8 zeroext %call.i.i5.i1004) #3
  %scevgep208.3 = getelementptr [5 x i8], [5 x i8]* %v16, i64 0, i64 3
  store i8 %call.i3.i6.i1005, i8* %scevgep208.3, align 1
  %scevgep207.4 = getelementptr [5 x i8], [5 x i8]* %v, i64 0, i64 4
  %603 = load i8, i8* %scevgep207.4, align 1
  %call.i.i.i1000 = call zeroext i8 @mult(i8 zeroext %603, i8 zeroext %603) #3
  %call.i3.i.i1001 = call zeroext i8 @mult(i8 zeroext %call.i.i.i1000, i8 zeroext %call.i.i.i1000) #3
  %call.i.i5.i = call zeroext i8 @mult(i8 zeroext %call.i3.i.i1001, i8 zeroext %call.i3.i.i1001) #3
  %call.i3.i6.i = call zeroext i8 @mult(i8 zeroext %call.i.i5.i, i8 zeroext %call.i.i5.i) #3
  %scevgep208.4 = getelementptr [5 x i8], [5 x i8]* %v16, i64 0, i64 4
  store i8 %call.i3.i6.i, i8* %scevgep208.4, align 1
  %arraydecay17 = getelementptr inbounds [5 x i8], [5 x i8]* %v16, i64 0, i64 0
  %arraydecay18 = getelementptr inbounds [5 x i8], [5 x i8]* %wr, i64 0, i64 0
  %arraydecay19 = getelementptr inbounds [5 x i8], [5 x i8]* %m, i64 0, i64 0
  %call.i413 = call zeroext i8 (...) @rand() #3
  %call1.i414 = call zeroext i8 (...) @rand() #3
  %conv.i415 = zext i8 %call.i413 to i32
  %scevgep203 = getelementptr [5 x i8], [5 x i8]* %v16, i64 0, i64 0
  %604 = load i8, i8* %scevgep203, align 1
  %scevgep203.1 = getelementptr [5 x i8], [5 x i8]* %v16, i64 0, i64 1
  %605 = load i8, i8* %scevgep203.1, align 1
  %conv.i.i.i421.1 = zext i8 %605 to i32
  %conv1.i.i.i422.1 = zext i8 %604 to i32
  %xor.i.i.i423.1 = xor i32 %conv1.i.i.i422.1, %conv.i.i.i421.1
  %conv2.i.i.i424.1 = trunc i32 %xor.i.i.i423.1 to i8
  %scevgep203.2 = getelementptr [5 x i8], [5 x i8]* %v16, i64 0, i64 2
  %606 = load i8, i8* %scevgep203.2, align 1
  %conv.i.i.i421.2 = zext i8 %606 to i32
  %conv1.i.i.i422.2 = zext i8 %conv2.i.i.i424.1 to i32
  %xor.i.i.i423.2 = xor i32 %conv1.i.i.i422.2, %conv.i.i.i421.2
  %conv2.i.i.i424.2 = trunc i32 %xor.i.i.i423.2 to i8
  %scevgep203.3 = getelementptr [5 x i8], [5 x i8]* %v16, i64 0, i64 3
  %607 = load i8, i8* %scevgep203.3, align 1
  %conv.i.i.i421.3 = zext i8 %607 to i32
  %conv1.i.i.i422.3 = zext i8 %conv2.i.i.i424.2 to i32
  %xor.i.i.i423.3 = xor i32 %conv1.i.i.i422.3, %conv.i.i.i421.3
  %conv2.i.i.i424.3 = trunc i32 %xor.i.i.i423.3 to i8
  %scevgep203.4 = getelementptr [5 x i8], [5 x i8]* %v16, i64 0, i64 4
  %608 = load i8, i8* %scevgep203.4, align 1
  %conv.i.i.i421.4 = zext i8 %608 to i32
  %conv1.i.i.i422.4 = zext i8 %conv2.i.i.i424.3 to i32
  %xor.i.i.i423.4 = xor i32 %conv1.i.i.i422.4, %conv.i.i.i421.4
  %conv2.i.i.i424.4 = trunc i32 %xor.i.i.i423.4 to i8
  %conv3.i427 = zext i8 %conv2.i.i.i424.4 to i32
  %cmp.i428 = icmp eq i32 %conv.i415, %conv3.i427
  call void @assume(i1 zeroext %cmp.i428) #3
  %conv5.i429 = zext i8 %call1.i414 to i32
  %scevgep199 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 0
  %609 = load i8, i8* %scevgep199, align 1
  %scevgep199.1 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 1
  %610 = load i8, i8* %scevgep199.1, align 1
  %conv.i.i155.i436.1 = zext i8 %610 to i32
  %conv1.i.i156.i437.1 = zext i8 %609 to i32
  %xor.i.i157.i438.1 = xor i32 %conv1.i.i156.i437.1, %conv.i.i155.i436.1
  %conv2.i.i158.i439.1 = trunc i32 %xor.i.i157.i438.1 to i8
  %scevgep199.2 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 2
  %611 = load i8, i8* %scevgep199.2, align 1
  %conv.i.i155.i436.2 = zext i8 %611 to i32
  %conv1.i.i156.i437.2 = zext i8 %conv2.i.i158.i439.1 to i32
  %xor.i.i157.i438.2 = xor i32 %conv1.i.i156.i437.2, %conv.i.i155.i436.2
  %conv2.i.i158.i439.2 = trunc i32 %xor.i.i157.i438.2 to i8
  %scevgep199.3 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 3
  %612 = load i8, i8* %scevgep199.3, align 1
  %conv.i.i155.i436.3 = zext i8 %612 to i32
  %conv1.i.i156.i437.3 = zext i8 %conv2.i.i158.i439.2 to i32
  %xor.i.i157.i438.3 = xor i32 %conv1.i.i156.i437.3, %conv.i.i155.i436.3
  %conv2.i.i158.i439.3 = trunc i32 %xor.i.i157.i438.3 to i8
  %scevgep199.4 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 4
  %613 = load i8, i8* %scevgep199.4, align 1
  %conv.i.i155.i436.4 = zext i8 %613 to i32
  %conv1.i.i156.i437.4 = zext i8 %conv2.i.i158.i439.3 to i32
  %xor.i.i157.i438.4 = xor i32 %conv1.i.i156.i437.4, %conv.i.i155.i436.4
  %conv2.i.i158.i439.4 = trunc i32 %xor.i.i157.i438.4 to i8
  %conv7.i442 = zext i8 %conv2.i.i158.i439.4 to i32
  %cmp8.i443 = icmp eq i32 %conv5.i429, %conv7.i442
  call void @assume(i1 zeroext %cmp8.i443) #3
  %scevgep183 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %scevgep183184 = bitcast i8* %scevgep183 to [5 x [5 x i8]]*
  %scevgep190 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 1, i64 0
  %scevgep190191 = bitcast i8* %scevgep190 to [5 x [5 x i8]]*
  %call16.i451 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i451, i8* %scevgep183, align 1
  %614 = load i8, i8* %scevgep183, align 1
  store i8 %614, i8* %scevgep190, align 1
  %scevgep188 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep183184, i64 0, i64 0, i64 1
  %615 = bitcast i8* %scevgep188 to [5 x [5 x i8]]*
  %scevgep195 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep190191, i64 0, i64 1, i64 0
  %616 = bitcast i8* %scevgep195 to [5 x [5 x i8]]*
  %call16.i451.1973 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i451.1973, i8* %scevgep188, align 1
  %617 = load i8, i8* %scevgep188, align 1
  store i8 %617, i8* %scevgep195, align 1
  %scevgep188.1974 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %615, i64 0, i64 0, i64 1
  %618 = bitcast i8* %scevgep188.1974 to [5 x [5 x i8]]*
  %scevgep195.1975 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %616, i64 0, i64 1, i64 0
  %619 = bitcast i8* %scevgep195.1975 to [5 x [5 x i8]]*
  %call16.i451.2977 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i451.2977, i8* %scevgep188.1974, align 1
  %620 = load i8, i8* %scevgep188.1974, align 1
  store i8 %620, i8* %scevgep195.1975, align 1
  %scevgep188.2978 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %618, i64 0, i64 0, i64 1
  %scevgep195.2979 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %619, i64 0, i64 1, i64 0
  %call16.i451.3981 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i451.3981, i8* %scevgep188.2978, align 1
  %621 = load i8, i8* %scevgep188.2978, align 1
  store i8 %621, i8* %scevgep195.2979, align 1
  %scevgep186 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep183184, i64 0, i64 1, i64 1
  %622 = bitcast i8* %scevgep186 to [5 x [5 x i8]]*
  %scevgep193 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep190191, i64 0, i64 1, i64 1
  %623 = bitcast i8* %scevgep193 to [5 x [5 x i8]]*
  %call16.i451.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i451.1, i8* %scevgep186, align 1
  %624 = load i8, i8* %scevgep186, align 1
  store i8 %624, i8* %scevgep193, align 1
  %scevgep188.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %622, i64 0, i64 0, i64 1
  %625 = bitcast i8* %scevgep188.1 to [5 x [5 x i8]]*
  %scevgep195.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %623, i64 0, i64 1, i64 0
  %626 = bitcast i8* %scevgep195.1 to [5 x [5 x i8]]*
  %call16.i451.1.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i451.1.1, i8* %scevgep188.1, align 1
  %627 = load i8, i8* %scevgep188.1, align 1
  store i8 %627, i8* %scevgep195.1, align 1
  %scevgep188.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %625, i64 0, i64 0, i64 1
  %scevgep195.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %626, i64 0, i64 1, i64 0
  %call16.i451.1.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i451.1.2, i8* %scevgep188.1.1, align 1
  %628 = load i8, i8* %scevgep188.1.1, align 1
  store i8 %628, i8* %scevgep195.1.1, align 1
  %scevgep186.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %622, i64 0, i64 1, i64 1
  %629 = bitcast i8* %scevgep186.1 to [5 x [5 x i8]]*
  %scevgep193.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %623, i64 0, i64 1, i64 1
  %630 = bitcast i8* %scevgep193.1 to [5 x [5 x i8]]*
  %call16.i451.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i451.2, i8* %scevgep186.1, align 1
  %631 = load i8, i8* %scevgep186.1, align 1
  store i8 %631, i8* %scevgep193.1, align 1
  %scevgep188.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %629, i64 0, i64 0, i64 1
  %scevgep195.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %630, i64 0, i64 1, i64 0
  %call16.i451.2.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i451.2.1, i8* %scevgep188.2, align 1
  %632 = load i8, i8* %scevgep188.2, align 1
  store i8 %632, i8* %scevgep195.2, align 1
  %scevgep186.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %629, i64 0, i64 1, i64 1
  %scevgep193.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %630, i64 0, i64 1, i64 1
  %call16.i451.3 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i451.3, i8* %scevgep186.2, align 1
  %633 = load i8, i8* %scevgep186.2, align 1
  store i8 %633, i8* %scevgep193.2, align 1
  %scevgep160.1 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 1
  %634 = load i8, i8* %scevgep160.1, align 1
  %conv44.i478.1 = zext i8 %634 to i32
  %scevgep163.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %635 = load i8, i8* %scevgep163.1, align 1
  %conv49.i483.1 = zext i8 %635 to i32
  %xor.i484.1 = xor i32 %conv44.i478.1, %conv49.i483.1
  %conv50.i485.1 = trunc i32 %xor.i484.1 to i8
  %scevgep167.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i485.1, i8* %scevgep167.1, align 1
  %636 = load i8, i8* %arraydecay17, align 1
  %conv57.i492.1 = zext i8 %636 to i32
  %xor58.i493.1 = xor i32 %conv57.i492.1, 1
  %conv59.i494.1 = trunc i32 %xor58.i493.1 to i8
  %scevgep164.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %637 = load i8, i8* %scevgep164.1, align 1
  %call64.i499.1 = call zeroext i8 @mult(i8 zeroext %conv59.i494.1, i8 zeroext %637) #3
  %scevgep171.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i499.1, i8* %scevgep171.1, align 1
  %638 = load i8, i8* %arraydecay17, align 1
  %scevgep168.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 1
  %639 = load i8, i8* %scevgep168.1, align 1
  %call75.i510.1 = call zeroext i8 @mult(i8 zeroext %638, i8 zeroext %639) #3
  %scevgep175.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i510.1, i8* %scevgep175.1, align 1
  %scevgep172.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %640 = load i8, i8* %scevgep172.1, align 1
  %conv84.i519.1 = zext i8 %640 to i32
  %scevgep176.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %641 = load i8, i8* %scevgep176.1, align 1
  %conv89.i524.1 = zext i8 %641 to i32
  %xor90.i525.1 = xor i32 %conv84.i519.1, %conv89.i524.1
  %conv91.i526.1 = trunc i32 %xor90.i525.1 to i8
  %scevgep179.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i526.1, i8* %scevgep179.1, align 1
  %scevgep160.2 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 2
  %642 = load i8, i8* %scevgep160.2, align 1
  %conv44.i478.2 = zext i8 %642 to i32
  %scevgep163.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 2
  %643 = load i8, i8* %scevgep163.2, align 1
  %conv49.i483.2 = zext i8 %643 to i32
  %xor.i484.2 = xor i32 %conv44.i478.2, %conv49.i483.2
  %conv50.i485.2 = trunc i32 %xor.i484.2 to i8
  %scevgep167.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 2
  store i8 %conv50.i485.2, i8* %scevgep167.2, align 1
  %644 = load i8, i8* %arraydecay17, align 1
  %conv57.i492.2 = zext i8 %644 to i32
  %xor58.i493.2 = xor i32 %conv57.i492.2, 1
  %conv59.i494.2 = trunc i32 %xor58.i493.2 to i8
  %scevgep164.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 2
  %645 = load i8, i8* %scevgep164.2, align 1
  %call64.i499.2 = call zeroext i8 @mult(i8 zeroext %conv59.i494.2, i8 zeroext %645) #3
  %scevgep171.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 2
  store i8 %call64.i499.2, i8* %scevgep171.2, align 1
  %646 = load i8, i8* %arraydecay17, align 1
  %scevgep168.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 2
  %647 = load i8, i8* %scevgep168.2, align 1
  %call75.i510.2 = call zeroext i8 @mult(i8 zeroext %646, i8 zeroext %647) #3
  %scevgep175.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 2
  store i8 %call75.i510.2, i8* %scevgep175.2, align 1
  %scevgep172.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 2
  %648 = load i8, i8* %scevgep172.2, align 1
  %conv84.i519.2 = zext i8 %648 to i32
  %scevgep176.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 2
  %649 = load i8, i8* %scevgep176.2, align 1
  %conv89.i524.2 = zext i8 %649 to i32
  %xor90.i525.2 = xor i32 %conv84.i519.2, %conv89.i524.2
  %conv91.i526.2 = trunc i32 %xor90.i525.2 to i8
  %scevgep179.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 2
  store i8 %conv91.i526.2, i8* %scevgep179.2, align 1
  %scevgep160.3 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 3
  %650 = load i8, i8* %scevgep160.3, align 1
  %conv44.i478.3 = zext i8 %650 to i32
  %scevgep163.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 3
  %651 = load i8, i8* %scevgep163.3, align 1
  %conv49.i483.3 = zext i8 %651 to i32
  %xor.i484.3 = xor i32 %conv44.i478.3, %conv49.i483.3
  %conv50.i485.3 = trunc i32 %xor.i484.3 to i8
  %scevgep167.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 3
  store i8 %conv50.i485.3, i8* %scevgep167.3, align 1
  %652 = load i8, i8* %arraydecay17, align 1
  %conv57.i492.3 = zext i8 %652 to i32
  %xor58.i493.3 = xor i32 %conv57.i492.3, 1
  %conv59.i494.3 = trunc i32 %xor58.i493.3 to i8
  %scevgep164.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 3
  %653 = load i8, i8* %scevgep164.3, align 1
  %call64.i499.3 = call zeroext i8 @mult(i8 zeroext %conv59.i494.3, i8 zeroext %653) #3
  %scevgep171.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 3
  store i8 %call64.i499.3, i8* %scevgep171.3, align 1
  %654 = load i8, i8* %arraydecay17, align 1
  %scevgep168.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 3
  %655 = load i8, i8* %scevgep168.3, align 1
  %call75.i510.3 = call zeroext i8 @mult(i8 zeroext %654, i8 zeroext %655) #3
  %scevgep175.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 3
  store i8 %call75.i510.3, i8* %scevgep175.3, align 1
  %scevgep172.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 3
  %656 = load i8, i8* %scevgep172.3, align 1
  %conv84.i519.3 = zext i8 %656 to i32
  %scevgep176.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 3
  %657 = load i8, i8* %scevgep176.3, align 1
  %conv89.i524.3 = zext i8 %657 to i32
  %xor90.i525.3 = xor i32 %conv84.i519.3, %conv89.i524.3
  %conv91.i526.3 = trunc i32 %xor90.i525.3 to i8
  %scevgep179.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 3
  store i8 %conv91.i526.3, i8* %scevgep179.3, align 1
  %scevgep160.4 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 4
  %658 = load i8, i8* %scevgep160.4, align 1
  %conv44.i478.4 = zext i8 %658 to i32
  %scevgep163.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 4
  %659 = load i8, i8* %scevgep163.4, align 1
  %conv49.i483.4 = zext i8 %659 to i32
  %xor.i484.4 = xor i32 %conv44.i478.4, %conv49.i483.4
  %conv50.i485.4 = trunc i32 %xor.i484.4 to i8
  %scevgep167.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 4
  store i8 %conv50.i485.4, i8* %scevgep167.4, align 1
  %660 = load i8, i8* %arraydecay17, align 1
  %conv57.i492.4 = zext i8 %660 to i32
  %xor58.i493.4 = xor i32 %conv57.i492.4, 1
  %conv59.i494.4 = trunc i32 %xor58.i493.4 to i8
  %scevgep164.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 4
  %661 = load i8, i8* %scevgep164.4, align 1
  %call64.i499.4 = call zeroext i8 @mult(i8 zeroext %conv59.i494.4, i8 zeroext %661) #3
  %scevgep171.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 4
  store i8 %call64.i499.4, i8* %scevgep171.4, align 1
  %662 = load i8, i8* %arraydecay17, align 1
  %scevgep168.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 4
  %663 = load i8, i8* %scevgep168.4, align 1
  %call75.i510.4 = call zeroext i8 @mult(i8 zeroext %662, i8 zeroext %663) #3
  %scevgep175.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 4
  store i8 %call75.i510.4, i8* %scevgep175.4, align 1
  %scevgep172.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 4
  %664 = load i8, i8* %scevgep172.4, align 1
  %conv84.i519.4 = zext i8 %664 to i32
  %scevgep176.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 4
  %665 = load i8, i8* %scevgep176.4, align 1
  %conv89.i524.4 = zext i8 %665 to i32
  %xor90.i525.4 = xor i32 %conv84.i519.4, %conv89.i524.4
  %conv91.i526.4 = trunc i32 %xor90.i525.4 to i8
  %scevgep179.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 4
  store i8 %conv91.i526.4, i8* %scevgep179.4, align 1
  %scevgep162 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 1, i64 0
  %666 = bitcast i8* %scevgep162 to [5 x [5 x i8]]*
  %scevgep166 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 1, i64 0
  %667 = bitcast i8* %scevgep166 to [5 x [5 x i8]]*
  %scevgep170 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %668 = bitcast i8* %scevgep170 to [5 x [5 x i8]]*
  %scevgep174 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %669 = bitcast i8* %scevgep174 to [5 x [5 x i8]]*
  %scevgep178 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 1, i64 0
  %670 = bitcast i8* %scevgep178 to [5 x [5 x i8]]*
  %arrayidx56.i491.1 = getelementptr inbounds i8, i8* %arraydecay17, i64 1
  %arrayidx70.i505.1 = getelementptr inbounds i8, i8* %arraydecay17, i64 1
  %scevgep160.1574 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 0
  %671 = load i8, i8* %scevgep160.1574, align 1
  %conv44.i478.1575 = zext i8 %671 to i32
  %scevgep163.1576 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %666, i64 0, i64 0, i64 0
  %672 = load i8, i8* %scevgep163.1576, align 1
  %conv49.i483.1577 = zext i8 %672 to i32
  %xor.i484.1578 = xor i32 %conv44.i478.1575, %conv49.i483.1577
  %conv50.i485.1579 = trunc i32 %xor.i484.1578 to i8
  %scevgep167.1580 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %667, i64 0, i64 0, i64 0
  store i8 %conv50.i485.1579, i8* %scevgep167.1580, align 1
  %673 = load i8, i8* %arrayidx56.i491.1, align 1
  %conv57.i492.1581 = zext i8 %673 to i32
  %xor58.i493.1582 = xor i32 %conv57.i492.1581, 1
  %conv59.i494.1583 = trunc i32 %xor58.i493.1582 to i8
  %scevgep164.1584 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %666, i64 0, i64 0, i64 0
  %674 = load i8, i8* %scevgep164.1584, align 1
  %call64.i499.1585 = call zeroext i8 @mult(i8 zeroext %conv59.i494.1583, i8 zeroext %674) #3
  %scevgep171.1586 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %668, i64 0, i64 0, i64 0
  store i8 %call64.i499.1585, i8* %scevgep171.1586, align 1
  %675 = load i8, i8* %arrayidx70.i505.1, align 1
  %scevgep168.1587 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %667, i64 0, i64 0, i64 0
  %676 = load i8, i8* %scevgep168.1587, align 1
  %call75.i510.1588 = call zeroext i8 @mult(i8 zeroext %675, i8 zeroext %676) #3
  %scevgep175.1589 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %669, i64 0, i64 0, i64 0
  store i8 %call75.i510.1588, i8* %scevgep175.1589, align 1
  %scevgep172.1590 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %668, i64 0, i64 0, i64 0
  %677 = load i8, i8* %scevgep172.1590, align 1
  %conv84.i519.1591 = zext i8 %677 to i32
  %scevgep176.1592 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %669, i64 0, i64 0, i64 0
  %678 = load i8, i8* %scevgep176.1592, align 1
  %conv89.i524.1593 = zext i8 %678 to i32
  %xor90.i525.1594 = xor i32 %conv84.i519.1591, %conv89.i524.1593
  %conv91.i526.1595 = trunc i32 %xor90.i525.1594 to i8
  %scevgep179.1596 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %670, i64 0, i64 0, i64 0
  store i8 %conv91.i526.1595, i8* %scevgep179.1596, align 1
  %scevgep160.2.1 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 2
  %679 = load i8, i8* %scevgep160.2.1, align 1
  %conv44.i478.2.1 = zext i8 %679 to i32
  %scevgep163.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %666, i64 0, i64 0, i64 2
  %680 = load i8, i8* %scevgep163.2.1, align 1
  %conv49.i483.2.1 = zext i8 %680 to i32
  %xor.i484.2.1 = xor i32 %conv44.i478.2.1, %conv49.i483.2.1
  %conv50.i485.2.1 = trunc i32 %xor.i484.2.1 to i8
  %scevgep167.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %667, i64 0, i64 0, i64 2
  store i8 %conv50.i485.2.1, i8* %scevgep167.2.1, align 1
  %681 = load i8, i8* %arrayidx56.i491.1, align 1
  %conv57.i492.2.1 = zext i8 %681 to i32
  %xor58.i493.2.1 = xor i32 %conv57.i492.2.1, 1
  %conv59.i494.2.1 = trunc i32 %xor58.i493.2.1 to i8
  %scevgep164.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %666, i64 0, i64 0, i64 2
  %682 = load i8, i8* %scevgep164.2.1, align 1
  %call64.i499.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i494.2.1, i8 zeroext %682) #3
  %scevgep171.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %668, i64 0, i64 0, i64 2
  store i8 %call64.i499.2.1, i8* %scevgep171.2.1, align 1
  %683 = load i8, i8* %arrayidx70.i505.1, align 1
  %scevgep168.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %667, i64 0, i64 0, i64 2
  %684 = load i8, i8* %scevgep168.2.1, align 1
  %call75.i510.2.1 = call zeroext i8 @mult(i8 zeroext %683, i8 zeroext %684) #3
  %scevgep175.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %669, i64 0, i64 0, i64 2
  store i8 %call75.i510.2.1, i8* %scevgep175.2.1, align 1
  %scevgep172.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %668, i64 0, i64 0, i64 2
  %685 = load i8, i8* %scevgep172.2.1, align 1
  %conv84.i519.2.1 = zext i8 %685 to i32
  %scevgep176.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %669, i64 0, i64 0, i64 2
  %686 = load i8, i8* %scevgep176.2.1, align 1
  %conv89.i524.2.1 = zext i8 %686 to i32
  %xor90.i525.2.1 = xor i32 %conv84.i519.2.1, %conv89.i524.2.1
  %conv91.i526.2.1 = trunc i32 %xor90.i525.2.1 to i8
  %scevgep179.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %670, i64 0, i64 0, i64 2
  store i8 %conv91.i526.2.1, i8* %scevgep179.2.1, align 1
  %scevgep160.3.1 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 3
  %687 = load i8, i8* %scevgep160.3.1, align 1
  %conv44.i478.3.1 = zext i8 %687 to i32
  %scevgep163.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %666, i64 0, i64 0, i64 3
  %688 = load i8, i8* %scevgep163.3.1, align 1
  %conv49.i483.3.1 = zext i8 %688 to i32
  %xor.i484.3.1 = xor i32 %conv44.i478.3.1, %conv49.i483.3.1
  %conv50.i485.3.1 = trunc i32 %xor.i484.3.1 to i8
  %scevgep167.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %667, i64 0, i64 0, i64 3
  store i8 %conv50.i485.3.1, i8* %scevgep167.3.1, align 1
  %689 = load i8, i8* %arrayidx56.i491.1, align 1
  %conv57.i492.3.1 = zext i8 %689 to i32
  %xor58.i493.3.1 = xor i32 %conv57.i492.3.1, 1
  %conv59.i494.3.1 = trunc i32 %xor58.i493.3.1 to i8
  %scevgep164.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %666, i64 0, i64 0, i64 3
  %690 = load i8, i8* %scevgep164.3.1, align 1
  %call64.i499.3.1 = call zeroext i8 @mult(i8 zeroext %conv59.i494.3.1, i8 zeroext %690) #3
  %scevgep171.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %668, i64 0, i64 0, i64 3
  store i8 %call64.i499.3.1, i8* %scevgep171.3.1, align 1
  %691 = load i8, i8* %arrayidx70.i505.1, align 1
  %scevgep168.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %667, i64 0, i64 0, i64 3
  %692 = load i8, i8* %scevgep168.3.1, align 1
  %call75.i510.3.1 = call zeroext i8 @mult(i8 zeroext %691, i8 zeroext %692) #3
  %scevgep175.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %669, i64 0, i64 0, i64 3
  store i8 %call75.i510.3.1, i8* %scevgep175.3.1, align 1
  %scevgep172.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %668, i64 0, i64 0, i64 3
  %693 = load i8, i8* %scevgep172.3.1, align 1
  %conv84.i519.3.1 = zext i8 %693 to i32
  %scevgep176.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %669, i64 0, i64 0, i64 3
  %694 = load i8, i8* %scevgep176.3.1, align 1
  %conv89.i524.3.1 = zext i8 %694 to i32
  %xor90.i525.3.1 = xor i32 %conv84.i519.3.1, %conv89.i524.3.1
  %conv91.i526.3.1 = trunc i32 %xor90.i525.3.1 to i8
  %scevgep179.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %670, i64 0, i64 0, i64 3
  store i8 %conv91.i526.3.1, i8* %scevgep179.3.1, align 1
  %scevgep160.4.1 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 4
  %695 = load i8, i8* %scevgep160.4.1, align 1
  %conv44.i478.4.1 = zext i8 %695 to i32
  %scevgep163.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %666, i64 0, i64 0, i64 4
  %696 = load i8, i8* %scevgep163.4.1, align 1
  %conv49.i483.4.1 = zext i8 %696 to i32
  %xor.i484.4.1 = xor i32 %conv44.i478.4.1, %conv49.i483.4.1
  %conv50.i485.4.1 = trunc i32 %xor.i484.4.1 to i8
  %scevgep167.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %667, i64 0, i64 0, i64 4
  store i8 %conv50.i485.4.1, i8* %scevgep167.4.1, align 1
  %697 = load i8, i8* %arrayidx56.i491.1, align 1
  %conv57.i492.4.1 = zext i8 %697 to i32
  %xor58.i493.4.1 = xor i32 %conv57.i492.4.1, 1
  %conv59.i494.4.1 = trunc i32 %xor58.i493.4.1 to i8
  %scevgep164.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %666, i64 0, i64 0, i64 4
  %698 = load i8, i8* %scevgep164.4.1, align 1
  %call64.i499.4.1 = call zeroext i8 @mult(i8 zeroext %conv59.i494.4.1, i8 zeroext %698) #3
  %scevgep171.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %668, i64 0, i64 0, i64 4
  store i8 %call64.i499.4.1, i8* %scevgep171.4.1, align 1
  %699 = load i8, i8* %arrayidx70.i505.1, align 1
  %scevgep168.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %667, i64 0, i64 0, i64 4
  %700 = load i8, i8* %scevgep168.4.1, align 1
  %call75.i510.4.1 = call zeroext i8 @mult(i8 zeroext %699, i8 zeroext %700) #3
  %scevgep175.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %669, i64 0, i64 0, i64 4
  store i8 %call75.i510.4.1, i8* %scevgep175.4.1, align 1
  %scevgep172.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %668, i64 0, i64 0, i64 4
  %701 = load i8, i8* %scevgep172.4.1, align 1
  %conv84.i519.4.1 = zext i8 %701 to i32
  %scevgep176.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %669, i64 0, i64 0, i64 4
  %702 = load i8, i8* %scevgep176.4.1, align 1
  %conv89.i524.4.1 = zext i8 %702 to i32
  %xor90.i525.4.1 = xor i32 %conv84.i519.4.1, %conv89.i524.4.1
  %conv91.i526.4.1 = trunc i32 %xor90.i525.4.1 to i8
  %scevgep179.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %670, i64 0, i64 0, i64 4
  store i8 %conv91.i526.4.1, i8* %scevgep179.4.1, align 1
  %scevgep162.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %666, i64 0, i64 1, i64 0
  %703 = bitcast i8* %scevgep162.1 to [5 x [5 x i8]]*
  %scevgep166.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %667, i64 0, i64 1, i64 0
  %704 = bitcast i8* %scevgep166.1 to [5 x [5 x i8]]*
  %scevgep170.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %668, i64 0, i64 1, i64 0
  %705 = bitcast i8* %scevgep170.1 to [5 x [5 x i8]]*
  %scevgep174.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %669, i64 0, i64 1, i64 0
  %706 = bitcast i8* %scevgep174.1 to [5 x [5 x i8]]*
  %scevgep178.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %670, i64 0, i64 1, i64 0
  %707 = bitcast i8* %scevgep178.1 to [5 x [5 x i8]]*
  %arrayidx56.i491.2 = getelementptr inbounds i8, i8* %arraydecay17, i64 2
  %arrayidx70.i505.2 = getelementptr inbounds i8, i8* %arraydecay17, i64 2
  %scevgep160.2601 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 0
  %708 = load i8, i8* %scevgep160.2601, align 1
  %conv44.i478.2602 = zext i8 %708 to i32
  %scevgep163.2603 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %703, i64 0, i64 0, i64 0
  %709 = load i8, i8* %scevgep163.2603, align 1
  %conv49.i483.2604 = zext i8 %709 to i32
  %xor.i484.2605 = xor i32 %conv44.i478.2602, %conv49.i483.2604
  %conv50.i485.2606 = trunc i32 %xor.i484.2605 to i8
  %scevgep167.2607 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %704, i64 0, i64 0, i64 0
  store i8 %conv50.i485.2606, i8* %scevgep167.2607, align 1
  %710 = load i8, i8* %arrayidx56.i491.2, align 1
  %conv57.i492.2608 = zext i8 %710 to i32
  %xor58.i493.2609 = xor i32 %conv57.i492.2608, 1
  %conv59.i494.2610 = trunc i32 %xor58.i493.2609 to i8
  %scevgep164.2611 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %703, i64 0, i64 0, i64 0
  %711 = load i8, i8* %scevgep164.2611, align 1
  %call64.i499.2612 = call zeroext i8 @mult(i8 zeroext %conv59.i494.2610, i8 zeroext %711) #3
  %scevgep171.2613 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %705, i64 0, i64 0, i64 0
  store i8 %call64.i499.2612, i8* %scevgep171.2613, align 1
  %712 = load i8, i8* %arrayidx70.i505.2, align 1
  %scevgep168.2614 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %704, i64 0, i64 0, i64 0
  %713 = load i8, i8* %scevgep168.2614, align 1
  %call75.i510.2615 = call zeroext i8 @mult(i8 zeroext %712, i8 zeroext %713) #3
  %scevgep175.2616 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %706, i64 0, i64 0, i64 0
  store i8 %call75.i510.2615, i8* %scevgep175.2616, align 1
  %scevgep172.2617 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %705, i64 0, i64 0, i64 0
  %714 = load i8, i8* %scevgep172.2617, align 1
  %conv84.i519.2618 = zext i8 %714 to i32
  %scevgep176.2619 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %706, i64 0, i64 0, i64 0
  %715 = load i8, i8* %scevgep176.2619, align 1
  %conv89.i524.2620 = zext i8 %715 to i32
  %xor90.i525.2621 = xor i32 %conv84.i519.2618, %conv89.i524.2620
  %conv91.i526.2622 = trunc i32 %xor90.i525.2621 to i8
  %scevgep179.2623 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %707, i64 0, i64 0, i64 0
  store i8 %conv91.i526.2622, i8* %scevgep179.2623, align 1
  %scevgep160.1.2 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 1
  %716 = load i8, i8* %scevgep160.1.2, align 1
  %conv44.i478.1.2 = zext i8 %716 to i32
  %scevgep163.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %703, i64 0, i64 0, i64 1
  %717 = load i8, i8* %scevgep163.1.2, align 1
  %conv49.i483.1.2 = zext i8 %717 to i32
  %xor.i484.1.2 = xor i32 %conv44.i478.1.2, %conv49.i483.1.2
  %conv50.i485.1.2 = trunc i32 %xor.i484.1.2 to i8
  %scevgep167.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %704, i64 0, i64 0, i64 1
  store i8 %conv50.i485.1.2, i8* %scevgep167.1.2, align 1
  %718 = load i8, i8* %arrayidx56.i491.2, align 1
  %conv57.i492.1.2 = zext i8 %718 to i32
  %xor58.i493.1.2 = xor i32 %conv57.i492.1.2, 1
  %conv59.i494.1.2 = trunc i32 %xor58.i493.1.2 to i8
  %scevgep164.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %703, i64 0, i64 0, i64 1
  %719 = load i8, i8* %scevgep164.1.2, align 1
  %call64.i499.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i494.1.2, i8 zeroext %719) #3
  %scevgep171.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %705, i64 0, i64 0, i64 1
  store i8 %call64.i499.1.2, i8* %scevgep171.1.2, align 1
  %720 = load i8, i8* %arrayidx70.i505.2, align 1
  %scevgep168.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %704, i64 0, i64 0, i64 1
  %721 = load i8, i8* %scevgep168.1.2, align 1
  %call75.i510.1.2 = call zeroext i8 @mult(i8 zeroext %720, i8 zeroext %721) #3
  %scevgep175.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %706, i64 0, i64 0, i64 1
  store i8 %call75.i510.1.2, i8* %scevgep175.1.2, align 1
  %scevgep172.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %705, i64 0, i64 0, i64 1
  %722 = load i8, i8* %scevgep172.1.2, align 1
  %conv84.i519.1.2 = zext i8 %722 to i32
  %scevgep176.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %706, i64 0, i64 0, i64 1
  %723 = load i8, i8* %scevgep176.1.2, align 1
  %conv89.i524.1.2 = zext i8 %723 to i32
  %xor90.i525.1.2 = xor i32 %conv84.i519.1.2, %conv89.i524.1.2
  %conv91.i526.1.2 = trunc i32 %xor90.i525.1.2 to i8
  %scevgep179.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %707, i64 0, i64 0, i64 1
  store i8 %conv91.i526.1.2, i8* %scevgep179.1.2, align 1
  %scevgep160.3.2 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 3
  %724 = load i8, i8* %scevgep160.3.2, align 1
  %conv44.i478.3.2 = zext i8 %724 to i32
  %scevgep163.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %703, i64 0, i64 0, i64 3
  %725 = load i8, i8* %scevgep163.3.2, align 1
  %conv49.i483.3.2 = zext i8 %725 to i32
  %xor.i484.3.2 = xor i32 %conv44.i478.3.2, %conv49.i483.3.2
  %conv50.i485.3.2 = trunc i32 %xor.i484.3.2 to i8
  %scevgep167.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %704, i64 0, i64 0, i64 3
  store i8 %conv50.i485.3.2, i8* %scevgep167.3.2, align 1
  %726 = load i8, i8* %arrayidx56.i491.2, align 1
  %conv57.i492.3.2 = zext i8 %726 to i32
  %xor58.i493.3.2 = xor i32 %conv57.i492.3.2, 1
  %conv59.i494.3.2 = trunc i32 %xor58.i493.3.2 to i8
  %scevgep164.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %703, i64 0, i64 0, i64 3
  %727 = load i8, i8* %scevgep164.3.2, align 1
  %call64.i499.3.2 = call zeroext i8 @mult(i8 zeroext %conv59.i494.3.2, i8 zeroext %727) #3
  %scevgep171.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %705, i64 0, i64 0, i64 3
  store i8 %call64.i499.3.2, i8* %scevgep171.3.2, align 1
  %728 = load i8, i8* %arrayidx70.i505.2, align 1
  %scevgep168.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %704, i64 0, i64 0, i64 3
  %729 = load i8, i8* %scevgep168.3.2, align 1
  %call75.i510.3.2 = call zeroext i8 @mult(i8 zeroext %728, i8 zeroext %729) #3
  %scevgep175.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %706, i64 0, i64 0, i64 3
  store i8 %call75.i510.3.2, i8* %scevgep175.3.2, align 1
  %scevgep172.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %705, i64 0, i64 0, i64 3
  %730 = load i8, i8* %scevgep172.3.2, align 1
  %conv84.i519.3.2 = zext i8 %730 to i32
  %scevgep176.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %706, i64 0, i64 0, i64 3
  %731 = load i8, i8* %scevgep176.3.2, align 1
  %conv89.i524.3.2 = zext i8 %731 to i32
  %xor90.i525.3.2 = xor i32 %conv84.i519.3.2, %conv89.i524.3.2
  %conv91.i526.3.2 = trunc i32 %xor90.i525.3.2 to i8
  %scevgep179.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %707, i64 0, i64 0, i64 3
  store i8 %conv91.i526.3.2, i8* %scevgep179.3.2, align 1
  %scevgep160.4.2 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 4
  %732 = load i8, i8* %scevgep160.4.2, align 1
  %conv44.i478.4.2 = zext i8 %732 to i32
  %scevgep163.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %703, i64 0, i64 0, i64 4
  %733 = load i8, i8* %scevgep163.4.2, align 1
  %conv49.i483.4.2 = zext i8 %733 to i32
  %xor.i484.4.2 = xor i32 %conv44.i478.4.2, %conv49.i483.4.2
  %conv50.i485.4.2 = trunc i32 %xor.i484.4.2 to i8
  %scevgep167.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %704, i64 0, i64 0, i64 4
  store i8 %conv50.i485.4.2, i8* %scevgep167.4.2, align 1
  %734 = load i8, i8* %arrayidx56.i491.2, align 1
  %conv57.i492.4.2 = zext i8 %734 to i32
  %xor58.i493.4.2 = xor i32 %conv57.i492.4.2, 1
  %conv59.i494.4.2 = trunc i32 %xor58.i493.4.2 to i8
  %scevgep164.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %703, i64 0, i64 0, i64 4
  %735 = load i8, i8* %scevgep164.4.2, align 1
  %call64.i499.4.2 = call zeroext i8 @mult(i8 zeroext %conv59.i494.4.2, i8 zeroext %735) #3
  %scevgep171.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %705, i64 0, i64 0, i64 4
  store i8 %call64.i499.4.2, i8* %scevgep171.4.2, align 1
  %736 = load i8, i8* %arrayidx70.i505.2, align 1
  %scevgep168.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %704, i64 0, i64 0, i64 4
  %737 = load i8, i8* %scevgep168.4.2, align 1
  %call75.i510.4.2 = call zeroext i8 @mult(i8 zeroext %736, i8 zeroext %737) #3
  %scevgep175.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %706, i64 0, i64 0, i64 4
  store i8 %call75.i510.4.2, i8* %scevgep175.4.2, align 1
  %scevgep172.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %705, i64 0, i64 0, i64 4
  %738 = load i8, i8* %scevgep172.4.2, align 1
  %conv84.i519.4.2 = zext i8 %738 to i32
  %scevgep176.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %706, i64 0, i64 0, i64 4
  %739 = load i8, i8* %scevgep176.4.2, align 1
  %conv89.i524.4.2 = zext i8 %739 to i32
  %xor90.i525.4.2 = xor i32 %conv84.i519.4.2, %conv89.i524.4.2
  %conv91.i526.4.2 = trunc i32 %xor90.i525.4.2 to i8
  %scevgep179.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %707, i64 0, i64 0, i64 4
  store i8 %conv91.i526.4.2, i8* %scevgep179.4.2, align 1
  %scevgep162.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %703, i64 0, i64 1, i64 0
  %740 = bitcast i8* %scevgep162.2 to [5 x [5 x i8]]*
  %scevgep166.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %704, i64 0, i64 1, i64 0
  %741 = bitcast i8* %scevgep166.2 to [5 x [5 x i8]]*
  %scevgep170.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %705, i64 0, i64 1, i64 0
  %742 = bitcast i8* %scevgep170.2 to [5 x [5 x i8]]*
  %scevgep174.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %706, i64 0, i64 1, i64 0
  %743 = bitcast i8* %scevgep174.2 to [5 x [5 x i8]]*
  %scevgep178.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %707, i64 0, i64 1, i64 0
  %744 = bitcast i8* %scevgep178.2 to [5 x [5 x i8]]*
  %arrayidx56.i491.3 = getelementptr inbounds i8, i8* %arraydecay17, i64 3
  %arrayidx70.i505.3 = getelementptr inbounds i8, i8* %arraydecay17, i64 3
  %scevgep160.3628 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 0
  %745 = load i8, i8* %scevgep160.3628, align 1
  %conv44.i478.3629 = zext i8 %745 to i32
  %scevgep163.3630 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %740, i64 0, i64 0, i64 0
  %746 = load i8, i8* %scevgep163.3630, align 1
  %conv49.i483.3631 = zext i8 %746 to i32
  %xor.i484.3632 = xor i32 %conv44.i478.3629, %conv49.i483.3631
  %conv50.i485.3633 = trunc i32 %xor.i484.3632 to i8
  %scevgep167.3634 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %741, i64 0, i64 0, i64 0
  store i8 %conv50.i485.3633, i8* %scevgep167.3634, align 1
  %747 = load i8, i8* %arrayidx56.i491.3, align 1
  %conv57.i492.3635 = zext i8 %747 to i32
  %xor58.i493.3636 = xor i32 %conv57.i492.3635, 1
  %conv59.i494.3637 = trunc i32 %xor58.i493.3636 to i8
  %scevgep164.3638 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %740, i64 0, i64 0, i64 0
  %748 = load i8, i8* %scevgep164.3638, align 1
  %call64.i499.3639 = call zeroext i8 @mult(i8 zeroext %conv59.i494.3637, i8 zeroext %748) #3
  %scevgep171.3640 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %742, i64 0, i64 0, i64 0
  store i8 %call64.i499.3639, i8* %scevgep171.3640, align 1
  %749 = load i8, i8* %arrayidx70.i505.3, align 1
  %scevgep168.3641 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %741, i64 0, i64 0, i64 0
  %750 = load i8, i8* %scevgep168.3641, align 1
  %call75.i510.3642 = call zeroext i8 @mult(i8 zeroext %749, i8 zeroext %750) #3
  %scevgep175.3643 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %743, i64 0, i64 0, i64 0
  store i8 %call75.i510.3642, i8* %scevgep175.3643, align 1
  %scevgep172.3644 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %742, i64 0, i64 0, i64 0
  %751 = load i8, i8* %scevgep172.3644, align 1
  %conv84.i519.3645 = zext i8 %751 to i32
  %scevgep176.3646 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %743, i64 0, i64 0, i64 0
  %752 = load i8, i8* %scevgep176.3646, align 1
  %conv89.i524.3647 = zext i8 %752 to i32
  %xor90.i525.3648 = xor i32 %conv84.i519.3645, %conv89.i524.3647
  %conv91.i526.3649 = trunc i32 %xor90.i525.3648 to i8
  %scevgep179.3650 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %744, i64 0, i64 0, i64 0
  store i8 %conv91.i526.3649, i8* %scevgep179.3650, align 1
  %scevgep160.1.3 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 1
  %753 = load i8, i8* %scevgep160.1.3, align 1
  %conv44.i478.1.3 = zext i8 %753 to i32
  %scevgep163.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %740, i64 0, i64 0, i64 1
  %754 = load i8, i8* %scevgep163.1.3, align 1
  %conv49.i483.1.3 = zext i8 %754 to i32
  %xor.i484.1.3 = xor i32 %conv44.i478.1.3, %conv49.i483.1.3
  %conv50.i485.1.3 = trunc i32 %xor.i484.1.3 to i8
  %scevgep167.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %741, i64 0, i64 0, i64 1
  store i8 %conv50.i485.1.3, i8* %scevgep167.1.3, align 1
  %755 = load i8, i8* %arrayidx56.i491.3, align 1
  %conv57.i492.1.3 = zext i8 %755 to i32
  %xor58.i493.1.3 = xor i32 %conv57.i492.1.3, 1
  %conv59.i494.1.3 = trunc i32 %xor58.i493.1.3 to i8
  %scevgep164.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %740, i64 0, i64 0, i64 1
  %756 = load i8, i8* %scevgep164.1.3, align 1
  %call64.i499.1.3 = call zeroext i8 @mult(i8 zeroext %conv59.i494.1.3, i8 zeroext %756) #3
  %scevgep171.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %742, i64 0, i64 0, i64 1
  store i8 %call64.i499.1.3, i8* %scevgep171.1.3, align 1
  %757 = load i8, i8* %arrayidx70.i505.3, align 1
  %scevgep168.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %741, i64 0, i64 0, i64 1
  %758 = load i8, i8* %scevgep168.1.3, align 1
  %call75.i510.1.3 = call zeroext i8 @mult(i8 zeroext %757, i8 zeroext %758) #3
  %scevgep175.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %743, i64 0, i64 0, i64 1
  store i8 %call75.i510.1.3, i8* %scevgep175.1.3, align 1
  %scevgep172.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %742, i64 0, i64 0, i64 1
  %759 = load i8, i8* %scevgep172.1.3, align 1
  %conv84.i519.1.3 = zext i8 %759 to i32
  %scevgep176.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %743, i64 0, i64 0, i64 1
  %760 = load i8, i8* %scevgep176.1.3, align 1
  %conv89.i524.1.3 = zext i8 %760 to i32
  %xor90.i525.1.3 = xor i32 %conv84.i519.1.3, %conv89.i524.1.3
  %conv91.i526.1.3 = trunc i32 %xor90.i525.1.3 to i8
  %scevgep179.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %744, i64 0, i64 0, i64 1
  store i8 %conv91.i526.1.3, i8* %scevgep179.1.3, align 1
  %scevgep160.2.3 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 2
  %761 = load i8, i8* %scevgep160.2.3, align 1
  %conv44.i478.2.3 = zext i8 %761 to i32
  %scevgep163.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %740, i64 0, i64 0, i64 2
  %762 = load i8, i8* %scevgep163.2.3, align 1
  %conv49.i483.2.3 = zext i8 %762 to i32
  %xor.i484.2.3 = xor i32 %conv44.i478.2.3, %conv49.i483.2.3
  %conv50.i485.2.3 = trunc i32 %xor.i484.2.3 to i8
  %scevgep167.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %741, i64 0, i64 0, i64 2
  store i8 %conv50.i485.2.3, i8* %scevgep167.2.3, align 1
  %763 = load i8, i8* %arrayidx56.i491.3, align 1
  %conv57.i492.2.3 = zext i8 %763 to i32
  %xor58.i493.2.3 = xor i32 %conv57.i492.2.3, 1
  %conv59.i494.2.3 = trunc i32 %xor58.i493.2.3 to i8
  %scevgep164.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %740, i64 0, i64 0, i64 2
  %764 = load i8, i8* %scevgep164.2.3, align 1
  %call64.i499.2.3 = call zeroext i8 @mult(i8 zeroext %conv59.i494.2.3, i8 zeroext %764) #3
  %scevgep171.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %742, i64 0, i64 0, i64 2
  store i8 %call64.i499.2.3, i8* %scevgep171.2.3, align 1
  %765 = load i8, i8* %arrayidx70.i505.3, align 1
  %scevgep168.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %741, i64 0, i64 0, i64 2
  %766 = load i8, i8* %scevgep168.2.3, align 1
  %call75.i510.2.3 = call zeroext i8 @mult(i8 zeroext %765, i8 zeroext %766) #3
  %scevgep175.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %743, i64 0, i64 0, i64 2
  store i8 %call75.i510.2.3, i8* %scevgep175.2.3, align 1
  %scevgep172.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %742, i64 0, i64 0, i64 2
  %767 = load i8, i8* %scevgep172.2.3, align 1
  %conv84.i519.2.3 = zext i8 %767 to i32
  %scevgep176.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %743, i64 0, i64 0, i64 2
  %768 = load i8, i8* %scevgep176.2.3, align 1
  %conv89.i524.2.3 = zext i8 %768 to i32
  %xor90.i525.2.3 = xor i32 %conv84.i519.2.3, %conv89.i524.2.3
  %conv91.i526.2.3 = trunc i32 %xor90.i525.2.3 to i8
  %scevgep179.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %744, i64 0, i64 0, i64 2
  store i8 %conv91.i526.2.3, i8* %scevgep179.2.3, align 1
  %scevgep160.4.3 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 4
  %769 = load i8, i8* %scevgep160.4.3, align 1
  %conv44.i478.4.3 = zext i8 %769 to i32
  %scevgep163.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %740, i64 0, i64 0, i64 4
  %770 = load i8, i8* %scevgep163.4.3, align 1
  %conv49.i483.4.3 = zext i8 %770 to i32
  %xor.i484.4.3 = xor i32 %conv44.i478.4.3, %conv49.i483.4.3
  %conv50.i485.4.3 = trunc i32 %xor.i484.4.3 to i8
  %scevgep167.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %741, i64 0, i64 0, i64 4
  store i8 %conv50.i485.4.3, i8* %scevgep167.4.3, align 1
  %771 = load i8, i8* %arrayidx56.i491.3, align 1
  %conv57.i492.4.3 = zext i8 %771 to i32
  %xor58.i493.4.3 = xor i32 %conv57.i492.4.3, 1
  %conv59.i494.4.3 = trunc i32 %xor58.i493.4.3 to i8
  %scevgep164.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %740, i64 0, i64 0, i64 4
  %772 = load i8, i8* %scevgep164.4.3, align 1
  %call64.i499.4.3 = call zeroext i8 @mult(i8 zeroext %conv59.i494.4.3, i8 zeroext %772) #3
  %scevgep171.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %742, i64 0, i64 0, i64 4
  store i8 %call64.i499.4.3, i8* %scevgep171.4.3, align 1
  %773 = load i8, i8* %arrayidx70.i505.3, align 1
  %scevgep168.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %741, i64 0, i64 0, i64 4
  %774 = load i8, i8* %scevgep168.4.3, align 1
  %call75.i510.4.3 = call zeroext i8 @mult(i8 zeroext %773, i8 zeroext %774) #3
  %scevgep175.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %743, i64 0, i64 0, i64 4
  store i8 %call75.i510.4.3, i8* %scevgep175.4.3, align 1
  %scevgep172.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %742, i64 0, i64 0, i64 4
  %775 = load i8, i8* %scevgep172.4.3, align 1
  %conv84.i519.4.3 = zext i8 %775 to i32
  %scevgep176.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %743, i64 0, i64 0, i64 4
  %776 = load i8, i8* %scevgep176.4.3, align 1
  %conv89.i524.4.3 = zext i8 %776 to i32
  %xor90.i525.4.3 = xor i32 %conv84.i519.4.3, %conv89.i524.4.3
  %conv91.i526.4.3 = trunc i32 %xor90.i525.4.3 to i8
  %scevgep179.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %744, i64 0, i64 0, i64 4
  store i8 %conv91.i526.4.3, i8* %scevgep179.4.3, align 1
  %scevgep162.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %740, i64 0, i64 1, i64 0
  %777 = bitcast i8* %scevgep162.3 to [5 x [5 x i8]]*
  %scevgep166.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %741, i64 0, i64 1, i64 0
  %778 = bitcast i8* %scevgep166.3 to [5 x [5 x i8]]*
  %scevgep170.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %742, i64 0, i64 1, i64 0
  %779 = bitcast i8* %scevgep170.3 to [5 x [5 x i8]]*
  %scevgep174.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %743, i64 0, i64 1, i64 0
  %780 = bitcast i8* %scevgep174.3 to [5 x [5 x i8]]*
  %scevgep178.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %744, i64 0, i64 1, i64 0
  %781 = bitcast i8* %scevgep178.3 to [5 x [5 x i8]]*
  %arrayidx56.i491.4 = getelementptr inbounds i8, i8* %arraydecay17, i64 4
  %arrayidx70.i505.4 = getelementptr inbounds i8, i8* %arraydecay17, i64 4
  %scevgep160.4655 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 0
  %782 = load i8, i8* %scevgep160.4655, align 1
  %conv44.i478.4656 = zext i8 %782 to i32
  %scevgep163.4657 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %777, i64 0, i64 0, i64 0
  %783 = load i8, i8* %scevgep163.4657, align 1
  %conv49.i483.4658 = zext i8 %783 to i32
  %xor.i484.4659 = xor i32 %conv44.i478.4656, %conv49.i483.4658
  %conv50.i485.4660 = trunc i32 %xor.i484.4659 to i8
  %scevgep167.4661 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %778, i64 0, i64 0, i64 0
  store i8 %conv50.i485.4660, i8* %scevgep167.4661, align 1
  %784 = load i8, i8* %arrayidx56.i491.4, align 1
  %conv57.i492.4662 = zext i8 %784 to i32
  %xor58.i493.4663 = xor i32 %conv57.i492.4662, 1
  %conv59.i494.4664 = trunc i32 %xor58.i493.4663 to i8
  %scevgep164.4665 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %777, i64 0, i64 0, i64 0
  %785 = load i8, i8* %scevgep164.4665, align 1
  %call64.i499.4666 = call zeroext i8 @mult(i8 zeroext %conv59.i494.4664, i8 zeroext %785) #3
  %scevgep171.4667 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %779, i64 0, i64 0, i64 0
  store i8 %call64.i499.4666, i8* %scevgep171.4667, align 1
  %786 = load i8, i8* %arrayidx70.i505.4, align 1
  %scevgep168.4668 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %778, i64 0, i64 0, i64 0
  %787 = load i8, i8* %scevgep168.4668, align 1
  %call75.i510.4669 = call zeroext i8 @mult(i8 zeroext %786, i8 zeroext %787) #3
  %scevgep175.4670 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %780, i64 0, i64 0, i64 0
  store i8 %call75.i510.4669, i8* %scevgep175.4670, align 1
  %scevgep172.4671 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %779, i64 0, i64 0, i64 0
  %788 = load i8, i8* %scevgep172.4671, align 1
  %conv84.i519.4672 = zext i8 %788 to i32
  %scevgep176.4673 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %780, i64 0, i64 0, i64 0
  %789 = load i8, i8* %scevgep176.4673, align 1
  %conv89.i524.4674 = zext i8 %789 to i32
  %xor90.i525.4675 = xor i32 %conv84.i519.4672, %conv89.i524.4674
  %conv91.i526.4676 = trunc i32 %xor90.i525.4675 to i8
  %scevgep179.4677 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %781, i64 0, i64 0, i64 0
  store i8 %conv91.i526.4676, i8* %scevgep179.4677, align 1
  %scevgep160.1.4 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 1
  %790 = load i8, i8* %scevgep160.1.4, align 1
  %conv44.i478.1.4 = zext i8 %790 to i32
  %scevgep163.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %777, i64 0, i64 0, i64 1
  %791 = load i8, i8* %scevgep163.1.4, align 1
  %conv49.i483.1.4 = zext i8 %791 to i32
  %xor.i484.1.4 = xor i32 %conv44.i478.1.4, %conv49.i483.1.4
  %conv50.i485.1.4 = trunc i32 %xor.i484.1.4 to i8
  %scevgep167.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %778, i64 0, i64 0, i64 1
  store i8 %conv50.i485.1.4, i8* %scevgep167.1.4, align 1
  %792 = load i8, i8* %arrayidx56.i491.4, align 1
  %conv57.i492.1.4 = zext i8 %792 to i32
  %xor58.i493.1.4 = xor i32 %conv57.i492.1.4, 1
  %conv59.i494.1.4 = trunc i32 %xor58.i493.1.4 to i8
  %scevgep164.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %777, i64 0, i64 0, i64 1
  %793 = load i8, i8* %scevgep164.1.4, align 1
  %call64.i499.1.4 = call zeroext i8 @mult(i8 zeroext %conv59.i494.1.4, i8 zeroext %793) #3
  %scevgep171.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %779, i64 0, i64 0, i64 1
  store i8 %call64.i499.1.4, i8* %scevgep171.1.4, align 1
  %794 = load i8, i8* %arrayidx70.i505.4, align 1
  %scevgep168.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %778, i64 0, i64 0, i64 1
  %795 = load i8, i8* %scevgep168.1.4, align 1
  %call75.i510.1.4 = call zeroext i8 @mult(i8 zeroext %794, i8 zeroext %795) #3
  %scevgep175.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %780, i64 0, i64 0, i64 1
  store i8 %call75.i510.1.4, i8* %scevgep175.1.4, align 1
  %scevgep172.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %779, i64 0, i64 0, i64 1
  %796 = load i8, i8* %scevgep172.1.4, align 1
  %conv84.i519.1.4 = zext i8 %796 to i32
  %scevgep176.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %780, i64 0, i64 0, i64 1
  %797 = load i8, i8* %scevgep176.1.4, align 1
  %conv89.i524.1.4 = zext i8 %797 to i32
  %xor90.i525.1.4 = xor i32 %conv84.i519.1.4, %conv89.i524.1.4
  %conv91.i526.1.4 = trunc i32 %xor90.i525.1.4 to i8
  %scevgep179.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %781, i64 0, i64 0, i64 1
  store i8 %conv91.i526.1.4, i8* %scevgep179.1.4, align 1
  %scevgep160.2.4 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 2
  %798 = load i8, i8* %scevgep160.2.4, align 1
  %conv44.i478.2.4 = zext i8 %798 to i32
  %scevgep163.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %777, i64 0, i64 0, i64 2
  %799 = load i8, i8* %scevgep163.2.4, align 1
  %conv49.i483.2.4 = zext i8 %799 to i32
  %xor.i484.2.4 = xor i32 %conv44.i478.2.4, %conv49.i483.2.4
  %conv50.i485.2.4 = trunc i32 %xor.i484.2.4 to i8
  %scevgep167.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %778, i64 0, i64 0, i64 2
  store i8 %conv50.i485.2.4, i8* %scevgep167.2.4, align 1
  %800 = load i8, i8* %arrayidx56.i491.4, align 1
  %conv57.i492.2.4 = zext i8 %800 to i32
  %xor58.i493.2.4 = xor i32 %conv57.i492.2.4, 1
  %conv59.i494.2.4 = trunc i32 %xor58.i493.2.4 to i8
  %scevgep164.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %777, i64 0, i64 0, i64 2
  %801 = load i8, i8* %scevgep164.2.4, align 1
  %call64.i499.2.4 = call zeroext i8 @mult(i8 zeroext %conv59.i494.2.4, i8 zeroext %801) #3
  %scevgep171.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %779, i64 0, i64 0, i64 2
  store i8 %call64.i499.2.4, i8* %scevgep171.2.4, align 1
  %802 = load i8, i8* %arrayidx70.i505.4, align 1
  %scevgep168.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %778, i64 0, i64 0, i64 2
  %803 = load i8, i8* %scevgep168.2.4, align 1
  %call75.i510.2.4 = call zeroext i8 @mult(i8 zeroext %802, i8 zeroext %803) #3
  %scevgep175.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %780, i64 0, i64 0, i64 2
  store i8 %call75.i510.2.4, i8* %scevgep175.2.4, align 1
  %scevgep172.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %779, i64 0, i64 0, i64 2
  %804 = load i8, i8* %scevgep172.2.4, align 1
  %conv84.i519.2.4 = zext i8 %804 to i32
  %scevgep176.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %780, i64 0, i64 0, i64 2
  %805 = load i8, i8* %scevgep176.2.4, align 1
  %conv89.i524.2.4 = zext i8 %805 to i32
  %xor90.i525.2.4 = xor i32 %conv84.i519.2.4, %conv89.i524.2.4
  %conv91.i526.2.4 = trunc i32 %xor90.i525.2.4 to i8
  %scevgep179.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %781, i64 0, i64 0, i64 2
  store i8 %conv91.i526.2.4, i8* %scevgep179.2.4, align 1
  %scevgep160.3.4 = getelementptr [5 x i8], [5 x i8]* %wr, i64 0, i64 3
  %806 = load i8, i8* %scevgep160.3.4, align 1
  %conv44.i478.3.4 = zext i8 %806 to i32
  %scevgep163.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %777, i64 0, i64 0, i64 3
  %807 = load i8, i8* %scevgep163.3.4, align 1
  %conv49.i483.3.4 = zext i8 %807 to i32
  %xor.i484.3.4 = xor i32 %conv44.i478.3.4, %conv49.i483.3.4
  %conv50.i485.3.4 = trunc i32 %xor.i484.3.4 to i8
  %scevgep167.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %778, i64 0, i64 0, i64 3
  store i8 %conv50.i485.3.4, i8* %scevgep167.3.4, align 1
  %808 = load i8, i8* %arrayidx56.i491.4, align 1
  %conv57.i492.3.4 = zext i8 %808 to i32
  %xor58.i493.3.4 = xor i32 %conv57.i492.3.4, 1
  %conv59.i494.3.4 = trunc i32 %xor58.i493.3.4 to i8
  %scevgep164.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %777, i64 0, i64 0, i64 3
  %809 = load i8, i8* %scevgep164.3.4, align 1
  %call64.i499.3.4 = call zeroext i8 @mult(i8 zeroext %conv59.i494.3.4, i8 zeroext %809) #3
  %scevgep171.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %779, i64 0, i64 0, i64 3
  store i8 %call64.i499.3.4, i8* %scevgep171.3.4, align 1
  %810 = load i8, i8* %arrayidx70.i505.4, align 1
  %scevgep168.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %778, i64 0, i64 0, i64 3
  %811 = load i8, i8* %scevgep168.3.4, align 1
  %call75.i510.3.4 = call zeroext i8 @mult(i8 zeroext %810, i8 zeroext %811) #3
  %scevgep175.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %780, i64 0, i64 0, i64 3
  store i8 %call75.i510.3.4, i8* %scevgep175.3.4, align 1
  %scevgep172.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %779, i64 0, i64 0, i64 3
  %812 = load i8, i8* %scevgep172.3.4, align 1
  %conv84.i519.3.4 = zext i8 %812 to i32
  %scevgep176.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %780, i64 0, i64 0, i64 3
  %813 = load i8, i8* %scevgep176.3.4, align 1
  %conv89.i524.3.4 = zext i8 %813 to i32
  %xor90.i525.3.4 = xor i32 %conv84.i519.3.4, %conv89.i524.3.4
  %conv91.i526.3.4 = trunc i32 %xor90.i525.3.4 to i8
  %scevgep179.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %781, i64 0, i64 0, i64 3
  store i8 %conv91.i526.3.4, i8* %scevgep179.3.4, align 1
  %814 = load i8, i8* %arraydecay17, align 1
  %815 = load i8, i8* %arraydecay18, align 1
  %call111.i543 = call zeroext i8 @mult(i8 zeroext %814, i8 zeroext %815) #3
  store i8 %call111.i543, i8* %arraydecay19, align 1
  %scevgep150.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 1
  %816 = load i8, i8* %scevgep150.1, align 1
  %conv126.i555.1 = zext i8 %816 to i32
  %817 = load i8, i8* %arraydecay19, align 1
  %conv129.i558.1 = zext i8 %817 to i32
  %xor130.i559.1 = xor i32 %conv129.i558.1, %conv126.i555.1
  %conv131.i560.1 = trunc i32 %xor130.i559.1 to i8
  store i8 %conv131.i560.1, i8* %arraydecay19, align 1
  %scevgep150.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 2
  %818 = load i8, i8* %scevgep150.2, align 1
  %conv126.i555.2 = zext i8 %818 to i32
  %819 = load i8, i8* %arraydecay19, align 1
  %conv129.i558.2 = zext i8 %819 to i32
  %xor130.i559.2 = xor i32 %conv129.i558.2, %conv126.i555.2
  %conv131.i560.2 = trunc i32 %xor130.i559.2 to i8
  store i8 %conv131.i560.2, i8* %arraydecay19, align 1
  %scevgep150.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 3
  %820 = load i8, i8* %scevgep150.3, align 1
  %conv126.i555.3 = zext i8 %820 to i32
  %821 = load i8, i8* %arraydecay19, align 1
  %conv129.i558.3 = zext i8 %821 to i32
  %xor130.i559.3 = xor i32 %conv129.i558.3, %conv126.i555.3
  %conv131.i560.3 = trunc i32 %xor130.i559.3 to i8
  store i8 %conv131.i560.3, i8* %arraydecay19, align 1
  %scevgep150.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 4
  %822 = load i8, i8* %scevgep150.4, align 1
  %conv126.i555.4 = zext i8 %822 to i32
  %823 = load i8, i8* %arraydecay19, align 1
  %conv129.i558.4 = zext i8 %823 to i32
  %xor130.i559.4 = xor i32 %conv129.i558.4, %conv126.i555.4
  %conv131.i560.4 = trunc i32 %xor130.i559.4 to i8
  store i8 %conv131.i560.4, i8* %arraydecay19, align 1
  %scevgep149 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 1, i64 0
  %824 = bitcast i8* %scevgep149 to [5 x [5 x i8]]*
  %arrayidx108.i540.1 = getelementptr inbounds i8, i8* %arraydecay17, i64 1
  %825 = load i8, i8* %arrayidx108.i540.1, align 1
  %arrayidx110.i542.1 = getelementptr inbounds i8, i8* %arraydecay18, i64 1
  %826 = load i8, i8* %arrayidx110.i542.1, align 1
  %call111.i543.1 = call zeroext i8 @mult(i8 zeroext %825, i8 zeroext %826) #3
  %arrayidx113.i545.1 = getelementptr inbounds i8, i8* %arraydecay19, i64 1
  store i8 %call111.i543.1, i8* %arrayidx113.i545.1, align 1
  %arrayidx128.i557.1 = getelementptr inbounds i8, i8* %arraydecay19, i64 1
  %scevgep150.1538 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %824, i64 0, i64 0, i64 0
  %827 = load i8, i8* %scevgep150.1538, align 1
  %conv126.i555.1539 = zext i8 %827 to i32
  %828 = load i8, i8* %arrayidx128.i557.1, align 1
  %conv129.i558.1540 = zext i8 %828 to i32
  %xor130.i559.1541 = xor i32 %conv129.i558.1540, %conv126.i555.1539
  %conv131.i560.1542 = trunc i32 %xor130.i559.1541 to i8
  store i8 %conv131.i560.1542, i8* %arrayidx128.i557.1, align 1
  %scevgep150.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %824, i64 0, i64 0, i64 2
  %829 = load i8, i8* %scevgep150.2.1, align 1
  %conv126.i555.2.1 = zext i8 %829 to i32
  %830 = load i8, i8* %arrayidx128.i557.1, align 1
  %conv129.i558.2.1 = zext i8 %830 to i32
  %xor130.i559.2.1 = xor i32 %conv129.i558.2.1, %conv126.i555.2.1
  %conv131.i560.2.1 = trunc i32 %xor130.i559.2.1 to i8
  store i8 %conv131.i560.2.1, i8* %arrayidx128.i557.1, align 1
  %scevgep150.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %824, i64 0, i64 0, i64 3
  %831 = load i8, i8* %scevgep150.3.1, align 1
  %conv126.i555.3.1 = zext i8 %831 to i32
  %832 = load i8, i8* %arrayidx128.i557.1, align 1
  %conv129.i558.3.1 = zext i8 %832 to i32
  %xor130.i559.3.1 = xor i32 %conv129.i558.3.1, %conv126.i555.3.1
  %conv131.i560.3.1 = trunc i32 %xor130.i559.3.1 to i8
  store i8 %conv131.i560.3.1, i8* %arrayidx128.i557.1, align 1
  %scevgep150.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %824, i64 0, i64 0, i64 4
  %833 = load i8, i8* %scevgep150.4.1, align 1
  %conv126.i555.4.1 = zext i8 %833 to i32
  %834 = load i8, i8* %arrayidx128.i557.1, align 1
  %conv129.i558.4.1 = zext i8 %834 to i32
  %xor130.i559.4.1 = xor i32 %conv129.i558.4.1, %conv126.i555.4.1
  %conv131.i560.4.1 = trunc i32 %xor130.i559.4.1 to i8
  store i8 %conv131.i560.4.1, i8* %arrayidx128.i557.1, align 1
  %scevgep149.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %824, i64 0, i64 1, i64 0
  %835 = bitcast i8* %scevgep149.1 to [5 x [5 x i8]]*
  %arrayidx108.i540.2 = getelementptr inbounds i8, i8* %arraydecay17, i64 2
  %836 = load i8, i8* %arrayidx108.i540.2, align 1
  %arrayidx110.i542.2 = getelementptr inbounds i8, i8* %arraydecay18, i64 2
  %837 = load i8, i8* %arrayidx110.i542.2, align 1
  %call111.i543.2 = call zeroext i8 @mult(i8 zeroext %836, i8 zeroext %837) #3
  %arrayidx113.i545.2 = getelementptr inbounds i8, i8* %arraydecay19, i64 2
  store i8 %call111.i543.2, i8* %arrayidx113.i545.2, align 1
  %arrayidx128.i557.2 = getelementptr inbounds i8, i8* %arraydecay19, i64 2
  %scevgep150.2547 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %835, i64 0, i64 0, i64 0
  %838 = load i8, i8* %scevgep150.2547, align 1
  %conv126.i555.2548 = zext i8 %838 to i32
  %839 = load i8, i8* %arrayidx128.i557.2, align 1
  %conv129.i558.2549 = zext i8 %839 to i32
  %xor130.i559.2550 = xor i32 %conv129.i558.2549, %conv126.i555.2548
  %conv131.i560.2551 = trunc i32 %xor130.i559.2550 to i8
  store i8 %conv131.i560.2551, i8* %arrayidx128.i557.2, align 1
  %scevgep150.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %835, i64 0, i64 0, i64 1
  %840 = load i8, i8* %scevgep150.1.2, align 1
  %conv126.i555.1.2 = zext i8 %840 to i32
  %841 = load i8, i8* %arrayidx128.i557.2, align 1
  %conv129.i558.1.2 = zext i8 %841 to i32
  %xor130.i559.1.2 = xor i32 %conv129.i558.1.2, %conv126.i555.1.2
  %conv131.i560.1.2 = trunc i32 %xor130.i559.1.2 to i8
  store i8 %conv131.i560.1.2, i8* %arrayidx128.i557.2, align 1
  %scevgep150.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %835, i64 0, i64 0, i64 3
  %842 = load i8, i8* %scevgep150.3.2, align 1
  %conv126.i555.3.2 = zext i8 %842 to i32
  %843 = load i8, i8* %arrayidx128.i557.2, align 1
  %conv129.i558.3.2 = zext i8 %843 to i32
  %xor130.i559.3.2 = xor i32 %conv129.i558.3.2, %conv126.i555.3.2
  %conv131.i560.3.2 = trunc i32 %xor130.i559.3.2 to i8
  store i8 %conv131.i560.3.2, i8* %arrayidx128.i557.2, align 1
  %scevgep150.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %835, i64 0, i64 0, i64 4
  %844 = load i8, i8* %scevgep150.4.2, align 1
  %conv126.i555.4.2 = zext i8 %844 to i32
  %845 = load i8, i8* %arrayidx128.i557.2, align 1
  %conv129.i558.4.2 = zext i8 %845 to i32
  %xor130.i559.4.2 = xor i32 %conv129.i558.4.2, %conv126.i555.4.2
  %conv131.i560.4.2 = trunc i32 %xor130.i559.4.2 to i8
  store i8 %conv131.i560.4.2, i8* %arrayidx128.i557.2, align 1
  %scevgep149.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %835, i64 0, i64 1, i64 0
  %846 = bitcast i8* %scevgep149.2 to [5 x [5 x i8]]*
  %arrayidx108.i540.3 = getelementptr inbounds i8, i8* %arraydecay17, i64 3
  %847 = load i8, i8* %arrayidx108.i540.3, align 1
  %arrayidx110.i542.3 = getelementptr inbounds i8, i8* %arraydecay18, i64 3
  %848 = load i8, i8* %arrayidx110.i542.3, align 1
  %call111.i543.3 = call zeroext i8 @mult(i8 zeroext %847, i8 zeroext %848) #3
  %arrayidx113.i545.3 = getelementptr inbounds i8, i8* %arraydecay19, i64 3
  store i8 %call111.i543.3, i8* %arrayidx113.i545.3, align 1
  %arrayidx128.i557.3 = getelementptr inbounds i8, i8* %arraydecay19, i64 3
  %scevgep150.3556 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %846, i64 0, i64 0, i64 0
  %849 = load i8, i8* %scevgep150.3556, align 1
  %conv126.i555.3557 = zext i8 %849 to i32
  %850 = load i8, i8* %arrayidx128.i557.3, align 1
  %conv129.i558.3558 = zext i8 %850 to i32
  %xor130.i559.3559 = xor i32 %conv129.i558.3558, %conv126.i555.3557
  %conv131.i560.3560 = trunc i32 %xor130.i559.3559 to i8
  store i8 %conv131.i560.3560, i8* %arrayidx128.i557.3, align 1
  %scevgep150.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %846, i64 0, i64 0, i64 1
  %851 = load i8, i8* %scevgep150.1.3, align 1
  %conv126.i555.1.3 = zext i8 %851 to i32
  %852 = load i8, i8* %arrayidx128.i557.3, align 1
  %conv129.i558.1.3 = zext i8 %852 to i32
  %xor130.i559.1.3 = xor i32 %conv129.i558.1.3, %conv126.i555.1.3
  %conv131.i560.1.3 = trunc i32 %xor130.i559.1.3 to i8
  store i8 %conv131.i560.1.3, i8* %arrayidx128.i557.3, align 1
  %scevgep150.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %846, i64 0, i64 0, i64 2
  %853 = load i8, i8* %scevgep150.2.3, align 1
  %conv126.i555.2.3 = zext i8 %853 to i32
  %854 = load i8, i8* %arrayidx128.i557.3, align 1
  %conv129.i558.2.3 = zext i8 %854 to i32
  %xor130.i559.2.3 = xor i32 %conv129.i558.2.3, %conv126.i555.2.3
  %conv131.i560.2.3 = trunc i32 %xor130.i559.2.3 to i8
  store i8 %conv131.i560.2.3, i8* %arrayidx128.i557.3, align 1
  %scevgep150.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %846, i64 0, i64 0, i64 4
  %855 = load i8, i8* %scevgep150.4.3, align 1
  %conv126.i555.4.3 = zext i8 %855 to i32
  %856 = load i8, i8* %arrayidx128.i557.3, align 1
  %conv129.i558.4.3 = zext i8 %856 to i32
  %xor130.i559.4.3 = xor i32 %conv129.i558.4.3, %conv126.i555.4.3
  %conv131.i560.4.3 = trunc i32 %xor130.i559.4.3 to i8
  store i8 %conv131.i560.4.3, i8* %arrayidx128.i557.3, align 1
  %scevgep149.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %846, i64 0, i64 1, i64 0
  %857 = bitcast i8* %scevgep149.3 to [5 x [5 x i8]]*
  %arrayidx108.i540.4 = getelementptr inbounds i8, i8* %arraydecay17, i64 4
  %858 = load i8, i8* %arrayidx108.i540.4, align 1
  %arrayidx110.i542.4 = getelementptr inbounds i8, i8* %arraydecay18, i64 4
  %859 = load i8, i8* %arrayidx110.i542.4, align 1
  %call111.i543.4 = call zeroext i8 @mult(i8 zeroext %858, i8 zeroext %859) #3
  %arrayidx113.i545.4 = getelementptr inbounds i8, i8* %arraydecay19, i64 4
  store i8 %call111.i543.4, i8* %arrayidx113.i545.4, align 1
  %arrayidx128.i557.4 = getelementptr inbounds i8, i8* %arraydecay19, i64 4
  %scevgep150.4565 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %857, i64 0, i64 0, i64 0
  %860 = load i8, i8* %scevgep150.4565, align 1
  %conv126.i555.4566 = zext i8 %860 to i32
  %861 = load i8, i8* %arrayidx128.i557.4, align 1
  %conv129.i558.4567 = zext i8 %861 to i32
  %xor130.i559.4568 = xor i32 %conv129.i558.4567, %conv126.i555.4566
  %conv131.i560.4569 = trunc i32 %xor130.i559.4568 to i8
  store i8 %conv131.i560.4569, i8* %arrayidx128.i557.4, align 1
  %scevgep150.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %857, i64 0, i64 0, i64 1
  %862 = load i8, i8* %scevgep150.1.4, align 1
  %conv126.i555.1.4 = zext i8 %862 to i32
  %863 = load i8, i8* %arrayidx128.i557.4, align 1
  %conv129.i558.1.4 = zext i8 %863 to i32
  %xor130.i559.1.4 = xor i32 %conv129.i558.1.4, %conv126.i555.1.4
  %conv131.i560.1.4 = trunc i32 %xor130.i559.1.4 to i8
  store i8 %conv131.i560.1.4, i8* %arrayidx128.i557.4, align 1
  %scevgep150.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %857, i64 0, i64 0, i64 2
  %864 = load i8, i8* %scevgep150.2.4, align 1
  %conv126.i555.2.4 = zext i8 %864 to i32
  %865 = load i8, i8* %arrayidx128.i557.4, align 1
  %conv129.i558.2.4 = zext i8 %865 to i32
  %xor130.i559.2.4 = xor i32 %conv129.i558.2.4, %conv126.i555.2.4
  %conv131.i560.2.4 = trunc i32 %xor130.i559.2.4 to i8
  store i8 %conv131.i560.2.4, i8* %arrayidx128.i557.4, align 1
  %scevgep150.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %857, i64 0, i64 0, i64 3
  %866 = load i8, i8* %scevgep150.3.4, align 1
  %conv126.i555.3.4 = zext i8 %866 to i32
  %867 = load i8, i8* %arrayidx128.i557.4, align 1
  %conv129.i558.3.4 = zext i8 %867 to i32
  %xor130.i559.3.4 = xor i32 %conv129.i558.3.4, %conv126.i555.3.4
  %conv131.i560.3.4 = trunc i32 %xor130.i559.3.4 to i8
  store i8 %conv131.i560.3.4, i8* %arrayidx128.i557.4, align 1
  %call139.i566 = call zeroext i8 @mult(i8 zeroext %call.i413, i8 zeroext %call1.i414) #3
  %conv140.i567 = zext i8 %call139.i566 to i32
  %scevgep140 = getelementptr [5 x i8], [5 x i8]* %m, i64 0, i64 0
  %868 = load i8, i8* %scevgep140, align 1
  %scevgep140.1 = getelementptr [5 x i8], [5 x i8]* %m, i64 0, i64 1
  %869 = load i8, i8* %scevgep140.1, align 1
  %conv.i.i172.i574.1 = zext i8 %869 to i32
  %conv1.i.i173.i575.1 = zext i8 %868 to i32
  %xor.i.i174.i576.1 = xor i32 %conv1.i.i173.i575.1, %conv.i.i172.i574.1
  %conv2.i.i175.i577.1 = trunc i32 %xor.i.i174.i576.1 to i8
  %scevgep140.2 = getelementptr [5 x i8], [5 x i8]* %m, i64 0, i64 2
  %870 = load i8, i8* %scevgep140.2, align 1
  %conv.i.i172.i574.2 = zext i8 %870 to i32
  %conv1.i.i173.i575.2 = zext i8 %conv2.i.i175.i577.1 to i32
  %xor.i.i174.i576.2 = xor i32 %conv1.i.i173.i575.2, %conv.i.i172.i574.2
  %conv2.i.i175.i577.2 = trunc i32 %xor.i.i174.i576.2 to i8
  %scevgep140.3 = getelementptr [5 x i8], [5 x i8]* %m, i64 0, i64 3
  %871 = load i8, i8* %scevgep140.3, align 1
  %conv.i.i172.i574.3 = zext i8 %871 to i32
  %conv1.i.i173.i575.3 = zext i8 %conv2.i.i175.i577.2 to i32
  %xor.i.i174.i576.3 = xor i32 %conv1.i.i173.i575.3, %conv.i.i172.i574.3
  %conv2.i.i175.i577.3 = trunc i32 %xor.i.i174.i576.3 to i8
  %scevgep140.4 = getelementptr [5 x i8], [5 x i8]* %m, i64 0, i64 4
  %872 = load i8, i8* %scevgep140.4, align 1
  %conv.i.i172.i574.4 = zext i8 %872 to i32
  %conv1.i.i173.i575.4 = zext i8 %conv2.i.i175.i577.3 to i32
  %xor.i.i174.i576.4 = xor i32 %conv1.i.i173.i575.4, %conv.i.i172.i574.4
  %conv2.i.i175.i577.4 = trunc i32 %xor.i.i174.i576.4 to i8
  %conv142.i580 = zext i8 %conv2.i.i175.i577.4 to i32
  %cmp143.i581 = icmp eq i32 %conv140.i567, %conv142.i580
  call void @assert(i1 zeroext %cmp143.i581) #3
  %arraydecay20 = getelementptr inbounds [5 x i8], [5 x i8]* %m, i64 0, i64 0
  %arraydecay21 = getelementptr inbounds [5 x i8], [5 x i8]* %z, i64 0, i64 0
  %call.i614 = call zeroext i8 (...) @rand() #3
  %call1.i615 = call zeroext i8 (...) @rand() #3
  %conv.i616 = zext i8 %call.i614 to i32
  %scevgep136 = getelementptr [5 x i8], [5 x i8]* %m, i64 0, i64 0
  %873 = load i8, i8* %scevgep136, align 1
  %scevgep136.1 = getelementptr [5 x i8], [5 x i8]* %m, i64 0, i64 1
  %874 = load i8, i8* %scevgep136.1, align 1
  %conv.i.i.i622.1 = zext i8 %874 to i32
  %conv1.i.i.i623.1 = zext i8 %873 to i32
  %xor.i.i.i624.1 = xor i32 %conv1.i.i.i623.1, %conv.i.i.i622.1
  %conv2.i.i.i625.1 = trunc i32 %xor.i.i.i624.1 to i8
  %scevgep136.2 = getelementptr [5 x i8], [5 x i8]* %m, i64 0, i64 2
  %875 = load i8, i8* %scevgep136.2, align 1
  %conv.i.i.i622.2 = zext i8 %875 to i32
  %conv1.i.i.i623.2 = zext i8 %conv2.i.i.i625.1 to i32
  %xor.i.i.i624.2 = xor i32 %conv1.i.i.i623.2, %conv.i.i.i622.2
  %conv2.i.i.i625.2 = trunc i32 %xor.i.i.i624.2 to i8
  %scevgep136.3 = getelementptr [5 x i8], [5 x i8]* %m, i64 0, i64 3
  %876 = load i8, i8* %scevgep136.3, align 1
  %conv.i.i.i622.3 = zext i8 %876 to i32
  %conv1.i.i.i623.3 = zext i8 %conv2.i.i.i625.2 to i32
  %xor.i.i.i624.3 = xor i32 %conv1.i.i.i623.3, %conv.i.i.i622.3
  %conv2.i.i.i625.3 = trunc i32 %xor.i.i.i624.3 to i8
  %scevgep136.4 = getelementptr [5 x i8], [5 x i8]* %m, i64 0, i64 4
  %877 = load i8, i8* %scevgep136.4, align 1
  %conv.i.i.i622.4 = zext i8 %877 to i32
  %conv1.i.i.i623.4 = zext i8 %conv2.i.i.i625.3 to i32
  %xor.i.i.i624.4 = xor i32 %conv1.i.i.i623.4, %conv.i.i.i622.4
  %conv2.i.i.i625.4 = trunc i32 %xor.i.i.i624.4 to i8
  %conv3.i628 = zext i8 %conv2.i.i.i625.4 to i32
  %cmp.i629 = icmp eq i32 %conv.i616, %conv3.i628
  call void @assume(i1 zeroext %cmp.i629) #3
  %conv5.i630 = zext i8 %call1.i615 to i32
  %scevgep132 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 0
  %878 = load i8, i8* %scevgep132, align 1
  %scevgep132.1 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 1
  %879 = load i8, i8* %scevgep132.1, align 1
  %conv.i.i155.i637.1 = zext i8 %879 to i32
  %conv1.i.i156.i638.1 = zext i8 %878 to i32
  %xor.i.i157.i639.1 = xor i32 %conv1.i.i156.i638.1, %conv.i.i155.i637.1
  %conv2.i.i158.i640.1 = trunc i32 %xor.i.i157.i639.1 to i8
  %scevgep132.2 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 2
  %880 = load i8, i8* %scevgep132.2, align 1
  %conv.i.i155.i637.2 = zext i8 %880 to i32
  %conv1.i.i156.i638.2 = zext i8 %conv2.i.i158.i640.1 to i32
  %xor.i.i157.i639.2 = xor i32 %conv1.i.i156.i638.2, %conv.i.i155.i637.2
  %conv2.i.i158.i640.2 = trunc i32 %xor.i.i157.i639.2 to i8
  %scevgep132.3 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 3
  %881 = load i8, i8* %scevgep132.3, align 1
  %conv.i.i155.i637.3 = zext i8 %881 to i32
  %conv1.i.i156.i638.3 = zext i8 %conv2.i.i158.i640.2 to i32
  %xor.i.i157.i639.3 = xor i32 %conv1.i.i156.i638.3, %conv.i.i155.i637.3
  %conv2.i.i158.i640.3 = trunc i32 %xor.i.i157.i639.3 to i8
  %scevgep132.4 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 4
  %882 = load i8, i8* %scevgep132.4, align 1
  %conv.i.i155.i637.4 = zext i8 %882 to i32
  %conv1.i.i156.i638.4 = zext i8 %conv2.i.i158.i640.3 to i32
  %xor.i.i157.i639.4 = xor i32 %conv1.i.i156.i638.4, %conv.i.i155.i637.4
  %conv2.i.i158.i640.4 = trunc i32 %xor.i.i157.i639.4 to i8
  %conv7.i643 = zext i8 %conv2.i.i158.i640.4 to i32
  %cmp8.i644 = icmp eq i32 %conv5.i630, %conv7.i643
  call void @assume(i1 zeroext %cmp8.i644) #3
  %scevgep116 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %scevgep116117 = bitcast i8* %scevgep116 to [5 x [5 x i8]]*
  %scevgep123 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 1, i64 0
  %scevgep123124 = bitcast i8* %scevgep123 to [5 x [5 x i8]]*
  %call16.i652 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i652, i8* %scevgep116, align 1
  %883 = load i8, i8* %scevgep116, align 1
  store i8 %883, i8* %scevgep123, align 1
  %scevgep121 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep116117, i64 0, i64 0, i64 1
  %884 = bitcast i8* %scevgep121 to [5 x [5 x i8]]*
  %scevgep128 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep123124, i64 0, i64 1, i64 0
  %885 = bitcast i8* %scevgep128 to [5 x [5 x i8]]*
  %call16.i652.1964 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i652.1964, i8* %scevgep121, align 1
  %886 = load i8, i8* %scevgep121, align 1
  store i8 %886, i8* %scevgep128, align 1
  %scevgep121.1965 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %884, i64 0, i64 0, i64 1
  %887 = bitcast i8* %scevgep121.1965 to [5 x [5 x i8]]*
  %scevgep128.1966 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %885, i64 0, i64 1, i64 0
  %888 = bitcast i8* %scevgep128.1966 to [5 x [5 x i8]]*
  %call16.i652.2968 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i652.2968, i8* %scevgep121.1965, align 1
  %889 = load i8, i8* %scevgep121.1965, align 1
  store i8 %889, i8* %scevgep128.1966, align 1
  %scevgep121.2969 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %887, i64 0, i64 0, i64 1
  %scevgep128.2970 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %888, i64 0, i64 1, i64 0
  %call16.i652.3972 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i652.3972, i8* %scevgep121.2969, align 1
  %890 = load i8, i8* %scevgep121.2969, align 1
  store i8 %890, i8* %scevgep128.2970, align 1
  %scevgep119 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep116117, i64 0, i64 1, i64 1
  %891 = bitcast i8* %scevgep119 to [5 x [5 x i8]]*
  %scevgep126 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep123124, i64 0, i64 1, i64 1
  %892 = bitcast i8* %scevgep126 to [5 x [5 x i8]]*
  %call16.i652.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i652.1, i8* %scevgep119, align 1
  %893 = load i8, i8* %scevgep119, align 1
  store i8 %893, i8* %scevgep126, align 1
  %scevgep121.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %891, i64 0, i64 0, i64 1
  %894 = bitcast i8* %scevgep121.1 to [5 x [5 x i8]]*
  %scevgep128.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %892, i64 0, i64 1, i64 0
  %895 = bitcast i8* %scevgep128.1 to [5 x [5 x i8]]*
  %call16.i652.1.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i652.1.1, i8* %scevgep121.1, align 1
  %896 = load i8, i8* %scevgep121.1, align 1
  store i8 %896, i8* %scevgep128.1, align 1
  %scevgep121.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %894, i64 0, i64 0, i64 1
  %scevgep128.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %895, i64 0, i64 1, i64 0
  %call16.i652.1.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i652.1.2, i8* %scevgep121.1.1, align 1
  %897 = load i8, i8* %scevgep121.1.1, align 1
  store i8 %897, i8* %scevgep128.1.1, align 1
  %scevgep119.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %891, i64 0, i64 1, i64 1
  %898 = bitcast i8* %scevgep119.1 to [5 x [5 x i8]]*
  %scevgep126.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %892, i64 0, i64 1, i64 1
  %899 = bitcast i8* %scevgep126.1 to [5 x [5 x i8]]*
  %call16.i652.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i652.2, i8* %scevgep119.1, align 1
  %900 = load i8, i8* %scevgep119.1, align 1
  store i8 %900, i8* %scevgep126.1, align 1
  %scevgep121.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %898, i64 0, i64 0, i64 1
  %scevgep128.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %899, i64 0, i64 1, i64 0
  %call16.i652.2.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i652.2.1, i8* %scevgep121.2, align 1
  %901 = load i8, i8* %scevgep121.2, align 1
  store i8 %901, i8* %scevgep128.2, align 1
  %scevgep119.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %898, i64 0, i64 1, i64 1
  %scevgep126.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %899, i64 0, i64 1, i64 1
  %call16.i652.3 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i652.3, i8* %scevgep119.2, align 1
  %902 = load i8, i8* %scevgep119.2, align 1
  store i8 %902, i8* %scevgep126.2, align 1
  %scevgep93.1 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 1
  %903 = load i8, i8* %scevgep93.1, align 1
  %conv44.i679.1 = zext i8 %903 to i32
  %scevgep96.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %904 = load i8, i8* %scevgep96.1, align 1
  %conv49.i684.1 = zext i8 %904 to i32
  %xor.i685.1 = xor i32 %conv44.i679.1, %conv49.i684.1
  %conv50.i686.1 = trunc i32 %xor.i685.1 to i8
  %scevgep100.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i686.1, i8* %scevgep100.1, align 1
  %905 = load i8, i8* %arraydecay20, align 1
  %conv57.i693.1 = zext i8 %905 to i32
  %xor58.i694.1 = xor i32 %conv57.i693.1, 1
  %conv59.i695.1 = trunc i32 %xor58.i694.1 to i8
  %scevgep97.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %906 = load i8, i8* %scevgep97.1, align 1
  %call64.i700.1 = call zeroext i8 @mult(i8 zeroext %conv59.i695.1, i8 zeroext %906) #3
  %scevgep104.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i700.1, i8* %scevgep104.1, align 1
  %907 = load i8, i8* %arraydecay20, align 1
  %scevgep101.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 1
  %908 = load i8, i8* %scevgep101.1, align 1
  %call75.i711.1 = call zeroext i8 @mult(i8 zeroext %907, i8 zeroext %908) #3
  %scevgep108.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i711.1, i8* %scevgep108.1, align 1
  %scevgep105.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %909 = load i8, i8* %scevgep105.1, align 1
  %conv84.i720.1 = zext i8 %909 to i32
  %scevgep109.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %910 = load i8, i8* %scevgep109.1, align 1
  %conv89.i725.1 = zext i8 %910 to i32
  %xor90.i726.1 = xor i32 %conv84.i720.1, %conv89.i725.1
  %conv91.i727.1 = trunc i32 %xor90.i726.1 to i8
  %scevgep112.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i727.1, i8* %scevgep112.1, align 1
  %scevgep93.2 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 2
  %911 = load i8, i8* %scevgep93.2, align 1
  %conv44.i679.2 = zext i8 %911 to i32
  %scevgep96.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 2
  %912 = load i8, i8* %scevgep96.2, align 1
  %conv49.i684.2 = zext i8 %912 to i32
  %xor.i685.2 = xor i32 %conv44.i679.2, %conv49.i684.2
  %conv50.i686.2 = trunc i32 %xor.i685.2 to i8
  %scevgep100.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 2
  store i8 %conv50.i686.2, i8* %scevgep100.2, align 1
  %913 = load i8, i8* %arraydecay20, align 1
  %conv57.i693.2 = zext i8 %913 to i32
  %xor58.i694.2 = xor i32 %conv57.i693.2, 1
  %conv59.i695.2 = trunc i32 %xor58.i694.2 to i8
  %scevgep97.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 2
  %914 = load i8, i8* %scevgep97.2, align 1
  %call64.i700.2 = call zeroext i8 @mult(i8 zeroext %conv59.i695.2, i8 zeroext %914) #3
  %scevgep104.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 2
  store i8 %call64.i700.2, i8* %scevgep104.2, align 1
  %915 = load i8, i8* %arraydecay20, align 1
  %scevgep101.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 2
  %916 = load i8, i8* %scevgep101.2, align 1
  %call75.i711.2 = call zeroext i8 @mult(i8 zeroext %915, i8 zeroext %916) #3
  %scevgep108.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 2
  store i8 %call75.i711.2, i8* %scevgep108.2, align 1
  %scevgep105.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 2
  %917 = load i8, i8* %scevgep105.2, align 1
  %conv84.i720.2 = zext i8 %917 to i32
  %scevgep109.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 2
  %918 = load i8, i8* %scevgep109.2, align 1
  %conv89.i725.2 = zext i8 %918 to i32
  %xor90.i726.2 = xor i32 %conv84.i720.2, %conv89.i725.2
  %conv91.i727.2 = trunc i32 %xor90.i726.2 to i8
  %scevgep112.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 2
  store i8 %conv91.i727.2, i8* %scevgep112.2, align 1
  %scevgep93.3 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 3
  %919 = load i8, i8* %scevgep93.3, align 1
  %conv44.i679.3 = zext i8 %919 to i32
  %scevgep96.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 3
  %920 = load i8, i8* %scevgep96.3, align 1
  %conv49.i684.3 = zext i8 %920 to i32
  %xor.i685.3 = xor i32 %conv44.i679.3, %conv49.i684.3
  %conv50.i686.3 = trunc i32 %xor.i685.3 to i8
  %scevgep100.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 3
  store i8 %conv50.i686.3, i8* %scevgep100.3, align 1
  %921 = load i8, i8* %arraydecay20, align 1
  %conv57.i693.3 = zext i8 %921 to i32
  %xor58.i694.3 = xor i32 %conv57.i693.3, 1
  %conv59.i695.3 = trunc i32 %xor58.i694.3 to i8
  %scevgep97.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 3
  %922 = load i8, i8* %scevgep97.3, align 1
  %call64.i700.3 = call zeroext i8 @mult(i8 zeroext %conv59.i695.3, i8 zeroext %922) #3
  %scevgep104.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 3
  store i8 %call64.i700.3, i8* %scevgep104.3, align 1
  %923 = load i8, i8* %arraydecay20, align 1
  %scevgep101.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 3
  %924 = load i8, i8* %scevgep101.3, align 1
  %call75.i711.3 = call zeroext i8 @mult(i8 zeroext %923, i8 zeroext %924) #3
  %scevgep108.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 3
  store i8 %call75.i711.3, i8* %scevgep108.3, align 1
  %scevgep105.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 3
  %925 = load i8, i8* %scevgep105.3, align 1
  %conv84.i720.3 = zext i8 %925 to i32
  %scevgep109.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 3
  %926 = load i8, i8* %scevgep109.3, align 1
  %conv89.i725.3 = zext i8 %926 to i32
  %xor90.i726.3 = xor i32 %conv84.i720.3, %conv89.i725.3
  %conv91.i727.3 = trunc i32 %xor90.i726.3 to i8
  %scevgep112.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 3
  store i8 %conv91.i727.3, i8* %scevgep112.3, align 1
  %scevgep93.4 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 4
  %927 = load i8, i8* %scevgep93.4, align 1
  %conv44.i679.4 = zext i8 %927 to i32
  %scevgep96.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 4
  %928 = load i8, i8* %scevgep96.4, align 1
  %conv49.i684.4 = zext i8 %928 to i32
  %xor.i685.4 = xor i32 %conv44.i679.4, %conv49.i684.4
  %conv50.i686.4 = trunc i32 %xor.i685.4 to i8
  %scevgep100.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 4
  store i8 %conv50.i686.4, i8* %scevgep100.4, align 1
  %929 = load i8, i8* %arraydecay20, align 1
  %conv57.i693.4 = zext i8 %929 to i32
  %xor58.i694.4 = xor i32 %conv57.i693.4, 1
  %conv59.i695.4 = trunc i32 %xor58.i694.4 to i8
  %scevgep97.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 4
  %930 = load i8, i8* %scevgep97.4, align 1
  %call64.i700.4 = call zeroext i8 @mult(i8 zeroext %conv59.i695.4, i8 zeroext %930) #3
  %scevgep104.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 4
  store i8 %call64.i700.4, i8* %scevgep104.4, align 1
  %931 = load i8, i8* %arraydecay20, align 1
  %scevgep101.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 4
  %932 = load i8, i8* %scevgep101.4, align 1
  %call75.i711.4 = call zeroext i8 @mult(i8 zeroext %931, i8 zeroext %932) #3
  %scevgep108.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 4
  store i8 %call75.i711.4, i8* %scevgep108.4, align 1
  %scevgep105.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 4
  %933 = load i8, i8* %scevgep105.4, align 1
  %conv84.i720.4 = zext i8 %933 to i32
  %scevgep109.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 4
  %934 = load i8, i8* %scevgep109.4, align 1
  %conv89.i725.4 = zext i8 %934 to i32
  %xor90.i726.4 = xor i32 %conv84.i720.4, %conv89.i725.4
  %conv91.i727.4 = trunc i32 %xor90.i726.4 to i8
  %scevgep112.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 4
  store i8 %conv91.i727.4, i8* %scevgep112.4, align 1
  %scevgep95 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 1, i64 0
  %935 = bitcast i8* %scevgep95 to [5 x [5 x i8]]*
  %scevgep99 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 1, i64 0
  %936 = bitcast i8* %scevgep99 to [5 x [5 x i8]]*
  %scevgep103 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %937 = bitcast i8* %scevgep103 to [5 x [5 x i8]]*
  %scevgep107 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %938 = bitcast i8* %scevgep107 to [5 x [5 x i8]]*
  %scevgep111 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 1, i64 0
  %939 = bitcast i8* %scevgep111 to [5 x [5 x i8]]*
  %arrayidx56.i692.1 = getelementptr inbounds i8, i8* %arraydecay20, i64 1
  %arrayidx70.i706.1 = getelementptr inbounds i8, i8* %arraydecay20, i64 1
  %scevgep93.1430 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 0
  %940 = load i8, i8* %scevgep93.1430, align 1
  %conv44.i679.1431 = zext i8 %940 to i32
  %scevgep96.1432 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %935, i64 0, i64 0, i64 0
  %941 = load i8, i8* %scevgep96.1432, align 1
  %conv49.i684.1433 = zext i8 %941 to i32
  %xor.i685.1434 = xor i32 %conv44.i679.1431, %conv49.i684.1433
  %conv50.i686.1435 = trunc i32 %xor.i685.1434 to i8
  %scevgep100.1436 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %936, i64 0, i64 0, i64 0
  store i8 %conv50.i686.1435, i8* %scevgep100.1436, align 1
  %942 = load i8, i8* %arrayidx56.i692.1, align 1
  %conv57.i693.1437 = zext i8 %942 to i32
  %xor58.i694.1438 = xor i32 %conv57.i693.1437, 1
  %conv59.i695.1439 = trunc i32 %xor58.i694.1438 to i8
  %scevgep97.1440 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %935, i64 0, i64 0, i64 0
  %943 = load i8, i8* %scevgep97.1440, align 1
  %call64.i700.1441 = call zeroext i8 @mult(i8 zeroext %conv59.i695.1439, i8 zeroext %943) #3
  %scevgep104.1442 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %937, i64 0, i64 0, i64 0
  store i8 %call64.i700.1441, i8* %scevgep104.1442, align 1
  %944 = load i8, i8* %arrayidx70.i706.1, align 1
  %scevgep101.1443 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %936, i64 0, i64 0, i64 0
  %945 = load i8, i8* %scevgep101.1443, align 1
  %call75.i711.1444 = call zeroext i8 @mult(i8 zeroext %944, i8 zeroext %945) #3
  %scevgep108.1445 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %938, i64 0, i64 0, i64 0
  store i8 %call75.i711.1444, i8* %scevgep108.1445, align 1
  %scevgep105.1446 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %937, i64 0, i64 0, i64 0
  %946 = load i8, i8* %scevgep105.1446, align 1
  %conv84.i720.1447 = zext i8 %946 to i32
  %scevgep109.1448 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %938, i64 0, i64 0, i64 0
  %947 = load i8, i8* %scevgep109.1448, align 1
  %conv89.i725.1449 = zext i8 %947 to i32
  %xor90.i726.1450 = xor i32 %conv84.i720.1447, %conv89.i725.1449
  %conv91.i727.1451 = trunc i32 %xor90.i726.1450 to i8
  %scevgep112.1452 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %939, i64 0, i64 0, i64 0
  store i8 %conv91.i727.1451, i8* %scevgep112.1452, align 1
  %scevgep93.2.1 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 2
  %948 = load i8, i8* %scevgep93.2.1, align 1
  %conv44.i679.2.1 = zext i8 %948 to i32
  %scevgep96.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %935, i64 0, i64 0, i64 2
  %949 = load i8, i8* %scevgep96.2.1, align 1
  %conv49.i684.2.1 = zext i8 %949 to i32
  %xor.i685.2.1 = xor i32 %conv44.i679.2.1, %conv49.i684.2.1
  %conv50.i686.2.1 = trunc i32 %xor.i685.2.1 to i8
  %scevgep100.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %936, i64 0, i64 0, i64 2
  store i8 %conv50.i686.2.1, i8* %scevgep100.2.1, align 1
  %950 = load i8, i8* %arrayidx56.i692.1, align 1
  %conv57.i693.2.1 = zext i8 %950 to i32
  %xor58.i694.2.1 = xor i32 %conv57.i693.2.1, 1
  %conv59.i695.2.1 = trunc i32 %xor58.i694.2.1 to i8
  %scevgep97.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %935, i64 0, i64 0, i64 2
  %951 = load i8, i8* %scevgep97.2.1, align 1
  %call64.i700.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i695.2.1, i8 zeroext %951) #3
  %scevgep104.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %937, i64 0, i64 0, i64 2
  store i8 %call64.i700.2.1, i8* %scevgep104.2.1, align 1
  %952 = load i8, i8* %arrayidx70.i706.1, align 1
  %scevgep101.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %936, i64 0, i64 0, i64 2
  %953 = load i8, i8* %scevgep101.2.1, align 1
  %call75.i711.2.1 = call zeroext i8 @mult(i8 zeroext %952, i8 zeroext %953) #3
  %scevgep108.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %938, i64 0, i64 0, i64 2
  store i8 %call75.i711.2.1, i8* %scevgep108.2.1, align 1
  %scevgep105.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %937, i64 0, i64 0, i64 2
  %954 = load i8, i8* %scevgep105.2.1, align 1
  %conv84.i720.2.1 = zext i8 %954 to i32
  %scevgep109.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %938, i64 0, i64 0, i64 2
  %955 = load i8, i8* %scevgep109.2.1, align 1
  %conv89.i725.2.1 = zext i8 %955 to i32
  %xor90.i726.2.1 = xor i32 %conv84.i720.2.1, %conv89.i725.2.1
  %conv91.i727.2.1 = trunc i32 %xor90.i726.2.1 to i8
  %scevgep112.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %939, i64 0, i64 0, i64 2
  store i8 %conv91.i727.2.1, i8* %scevgep112.2.1, align 1
  %scevgep93.3.1 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 3
  %956 = load i8, i8* %scevgep93.3.1, align 1
  %conv44.i679.3.1 = zext i8 %956 to i32
  %scevgep96.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %935, i64 0, i64 0, i64 3
  %957 = load i8, i8* %scevgep96.3.1, align 1
  %conv49.i684.3.1 = zext i8 %957 to i32
  %xor.i685.3.1 = xor i32 %conv44.i679.3.1, %conv49.i684.3.1
  %conv50.i686.3.1 = trunc i32 %xor.i685.3.1 to i8
  %scevgep100.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %936, i64 0, i64 0, i64 3
  store i8 %conv50.i686.3.1, i8* %scevgep100.3.1, align 1
  %958 = load i8, i8* %arrayidx56.i692.1, align 1
  %conv57.i693.3.1 = zext i8 %958 to i32
  %xor58.i694.3.1 = xor i32 %conv57.i693.3.1, 1
  %conv59.i695.3.1 = trunc i32 %xor58.i694.3.1 to i8
  %scevgep97.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %935, i64 0, i64 0, i64 3
  %959 = load i8, i8* %scevgep97.3.1, align 1
  %call64.i700.3.1 = call zeroext i8 @mult(i8 zeroext %conv59.i695.3.1, i8 zeroext %959) #3
  %scevgep104.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %937, i64 0, i64 0, i64 3
  store i8 %call64.i700.3.1, i8* %scevgep104.3.1, align 1
  %960 = load i8, i8* %arrayidx70.i706.1, align 1
  %scevgep101.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %936, i64 0, i64 0, i64 3
  %961 = load i8, i8* %scevgep101.3.1, align 1
  %call75.i711.3.1 = call zeroext i8 @mult(i8 zeroext %960, i8 zeroext %961) #3
  %scevgep108.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %938, i64 0, i64 0, i64 3
  store i8 %call75.i711.3.1, i8* %scevgep108.3.1, align 1
  %scevgep105.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %937, i64 0, i64 0, i64 3
  %962 = load i8, i8* %scevgep105.3.1, align 1
  %conv84.i720.3.1 = zext i8 %962 to i32
  %scevgep109.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %938, i64 0, i64 0, i64 3
  %963 = load i8, i8* %scevgep109.3.1, align 1
  %conv89.i725.3.1 = zext i8 %963 to i32
  %xor90.i726.3.1 = xor i32 %conv84.i720.3.1, %conv89.i725.3.1
  %conv91.i727.3.1 = trunc i32 %xor90.i726.3.1 to i8
  %scevgep112.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %939, i64 0, i64 0, i64 3
  store i8 %conv91.i727.3.1, i8* %scevgep112.3.1, align 1
  %scevgep93.4.1 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 4
  %964 = load i8, i8* %scevgep93.4.1, align 1
  %conv44.i679.4.1 = zext i8 %964 to i32
  %scevgep96.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %935, i64 0, i64 0, i64 4
  %965 = load i8, i8* %scevgep96.4.1, align 1
  %conv49.i684.4.1 = zext i8 %965 to i32
  %xor.i685.4.1 = xor i32 %conv44.i679.4.1, %conv49.i684.4.1
  %conv50.i686.4.1 = trunc i32 %xor.i685.4.1 to i8
  %scevgep100.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %936, i64 0, i64 0, i64 4
  store i8 %conv50.i686.4.1, i8* %scevgep100.4.1, align 1
  %966 = load i8, i8* %arrayidx56.i692.1, align 1
  %conv57.i693.4.1 = zext i8 %966 to i32
  %xor58.i694.4.1 = xor i32 %conv57.i693.4.1, 1
  %conv59.i695.4.1 = trunc i32 %xor58.i694.4.1 to i8
  %scevgep97.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %935, i64 0, i64 0, i64 4
  %967 = load i8, i8* %scevgep97.4.1, align 1
  %call64.i700.4.1 = call zeroext i8 @mult(i8 zeroext %conv59.i695.4.1, i8 zeroext %967) #3
  %scevgep104.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %937, i64 0, i64 0, i64 4
  store i8 %call64.i700.4.1, i8* %scevgep104.4.1, align 1
  %968 = load i8, i8* %arrayidx70.i706.1, align 1
  %scevgep101.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %936, i64 0, i64 0, i64 4
  %969 = load i8, i8* %scevgep101.4.1, align 1
  %call75.i711.4.1 = call zeroext i8 @mult(i8 zeroext %968, i8 zeroext %969) #3
  %scevgep108.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %938, i64 0, i64 0, i64 4
  store i8 %call75.i711.4.1, i8* %scevgep108.4.1, align 1
  %scevgep105.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %937, i64 0, i64 0, i64 4
  %970 = load i8, i8* %scevgep105.4.1, align 1
  %conv84.i720.4.1 = zext i8 %970 to i32
  %scevgep109.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %938, i64 0, i64 0, i64 4
  %971 = load i8, i8* %scevgep109.4.1, align 1
  %conv89.i725.4.1 = zext i8 %971 to i32
  %xor90.i726.4.1 = xor i32 %conv84.i720.4.1, %conv89.i725.4.1
  %conv91.i727.4.1 = trunc i32 %xor90.i726.4.1 to i8
  %scevgep112.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %939, i64 0, i64 0, i64 4
  store i8 %conv91.i727.4.1, i8* %scevgep112.4.1, align 1
  %scevgep95.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %935, i64 0, i64 1, i64 0
  %972 = bitcast i8* %scevgep95.1 to [5 x [5 x i8]]*
  %scevgep99.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %936, i64 0, i64 1, i64 0
  %973 = bitcast i8* %scevgep99.1 to [5 x [5 x i8]]*
  %scevgep103.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %937, i64 0, i64 1, i64 0
  %974 = bitcast i8* %scevgep103.1 to [5 x [5 x i8]]*
  %scevgep107.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %938, i64 0, i64 1, i64 0
  %975 = bitcast i8* %scevgep107.1 to [5 x [5 x i8]]*
  %scevgep111.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %939, i64 0, i64 1, i64 0
  %976 = bitcast i8* %scevgep111.1 to [5 x [5 x i8]]*
  %arrayidx56.i692.2 = getelementptr inbounds i8, i8* %arraydecay20, i64 2
  %arrayidx70.i706.2 = getelementptr inbounds i8, i8* %arraydecay20, i64 2
  %scevgep93.2457 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 0
  %977 = load i8, i8* %scevgep93.2457, align 1
  %conv44.i679.2458 = zext i8 %977 to i32
  %scevgep96.2459 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %972, i64 0, i64 0, i64 0
  %978 = load i8, i8* %scevgep96.2459, align 1
  %conv49.i684.2460 = zext i8 %978 to i32
  %xor.i685.2461 = xor i32 %conv44.i679.2458, %conv49.i684.2460
  %conv50.i686.2462 = trunc i32 %xor.i685.2461 to i8
  %scevgep100.2463 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %973, i64 0, i64 0, i64 0
  store i8 %conv50.i686.2462, i8* %scevgep100.2463, align 1
  %979 = load i8, i8* %arrayidx56.i692.2, align 1
  %conv57.i693.2464 = zext i8 %979 to i32
  %xor58.i694.2465 = xor i32 %conv57.i693.2464, 1
  %conv59.i695.2466 = trunc i32 %xor58.i694.2465 to i8
  %scevgep97.2467 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %972, i64 0, i64 0, i64 0
  %980 = load i8, i8* %scevgep97.2467, align 1
  %call64.i700.2468 = call zeroext i8 @mult(i8 zeroext %conv59.i695.2466, i8 zeroext %980) #3
  %scevgep104.2469 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %974, i64 0, i64 0, i64 0
  store i8 %call64.i700.2468, i8* %scevgep104.2469, align 1
  %981 = load i8, i8* %arrayidx70.i706.2, align 1
  %scevgep101.2470 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %973, i64 0, i64 0, i64 0
  %982 = load i8, i8* %scevgep101.2470, align 1
  %call75.i711.2471 = call zeroext i8 @mult(i8 zeroext %981, i8 zeroext %982) #3
  %scevgep108.2472 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %975, i64 0, i64 0, i64 0
  store i8 %call75.i711.2471, i8* %scevgep108.2472, align 1
  %scevgep105.2473 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %974, i64 0, i64 0, i64 0
  %983 = load i8, i8* %scevgep105.2473, align 1
  %conv84.i720.2474 = zext i8 %983 to i32
  %scevgep109.2475 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %975, i64 0, i64 0, i64 0
  %984 = load i8, i8* %scevgep109.2475, align 1
  %conv89.i725.2476 = zext i8 %984 to i32
  %xor90.i726.2477 = xor i32 %conv84.i720.2474, %conv89.i725.2476
  %conv91.i727.2478 = trunc i32 %xor90.i726.2477 to i8
  %scevgep112.2479 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %976, i64 0, i64 0, i64 0
  store i8 %conv91.i727.2478, i8* %scevgep112.2479, align 1
  %scevgep93.1.2 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 1
  %985 = load i8, i8* %scevgep93.1.2, align 1
  %conv44.i679.1.2 = zext i8 %985 to i32
  %scevgep96.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %972, i64 0, i64 0, i64 1
  %986 = load i8, i8* %scevgep96.1.2, align 1
  %conv49.i684.1.2 = zext i8 %986 to i32
  %xor.i685.1.2 = xor i32 %conv44.i679.1.2, %conv49.i684.1.2
  %conv50.i686.1.2 = trunc i32 %xor.i685.1.2 to i8
  %scevgep100.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %973, i64 0, i64 0, i64 1
  store i8 %conv50.i686.1.2, i8* %scevgep100.1.2, align 1
  %987 = load i8, i8* %arrayidx56.i692.2, align 1
  %conv57.i693.1.2 = zext i8 %987 to i32
  %xor58.i694.1.2 = xor i32 %conv57.i693.1.2, 1
  %conv59.i695.1.2 = trunc i32 %xor58.i694.1.2 to i8
  %scevgep97.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %972, i64 0, i64 0, i64 1
  %988 = load i8, i8* %scevgep97.1.2, align 1
  %call64.i700.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i695.1.2, i8 zeroext %988) #3
  %scevgep104.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %974, i64 0, i64 0, i64 1
  store i8 %call64.i700.1.2, i8* %scevgep104.1.2, align 1
  %989 = load i8, i8* %arrayidx70.i706.2, align 1
  %scevgep101.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %973, i64 0, i64 0, i64 1
  %990 = load i8, i8* %scevgep101.1.2, align 1
  %call75.i711.1.2 = call zeroext i8 @mult(i8 zeroext %989, i8 zeroext %990) #3
  %scevgep108.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %975, i64 0, i64 0, i64 1
  store i8 %call75.i711.1.2, i8* %scevgep108.1.2, align 1
  %scevgep105.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %974, i64 0, i64 0, i64 1
  %991 = load i8, i8* %scevgep105.1.2, align 1
  %conv84.i720.1.2 = zext i8 %991 to i32
  %scevgep109.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %975, i64 0, i64 0, i64 1
  %992 = load i8, i8* %scevgep109.1.2, align 1
  %conv89.i725.1.2 = zext i8 %992 to i32
  %xor90.i726.1.2 = xor i32 %conv84.i720.1.2, %conv89.i725.1.2
  %conv91.i727.1.2 = trunc i32 %xor90.i726.1.2 to i8
  %scevgep112.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %976, i64 0, i64 0, i64 1
  store i8 %conv91.i727.1.2, i8* %scevgep112.1.2, align 1
  %scevgep93.3.2 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 3
  %993 = load i8, i8* %scevgep93.3.2, align 1
  %conv44.i679.3.2 = zext i8 %993 to i32
  %scevgep96.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %972, i64 0, i64 0, i64 3
  %994 = load i8, i8* %scevgep96.3.2, align 1
  %conv49.i684.3.2 = zext i8 %994 to i32
  %xor.i685.3.2 = xor i32 %conv44.i679.3.2, %conv49.i684.3.2
  %conv50.i686.3.2 = trunc i32 %xor.i685.3.2 to i8
  %scevgep100.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %973, i64 0, i64 0, i64 3
  store i8 %conv50.i686.3.2, i8* %scevgep100.3.2, align 1
  %995 = load i8, i8* %arrayidx56.i692.2, align 1
  %conv57.i693.3.2 = zext i8 %995 to i32
  %xor58.i694.3.2 = xor i32 %conv57.i693.3.2, 1
  %conv59.i695.3.2 = trunc i32 %xor58.i694.3.2 to i8
  %scevgep97.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %972, i64 0, i64 0, i64 3
  %996 = load i8, i8* %scevgep97.3.2, align 1
  %call64.i700.3.2 = call zeroext i8 @mult(i8 zeroext %conv59.i695.3.2, i8 zeroext %996) #3
  %scevgep104.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %974, i64 0, i64 0, i64 3
  store i8 %call64.i700.3.2, i8* %scevgep104.3.2, align 1
  %997 = load i8, i8* %arrayidx70.i706.2, align 1
  %scevgep101.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %973, i64 0, i64 0, i64 3
  %998 = load i8, i8* %scevgep101.3.2, align 1
  %call75.i711.3.2 = call zeroext i8 @mult(i8 zeroext %997, i8 zeroext %998) #3
  %scevgep108.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %975, i64 0, i64 0, i64 3
  store i8 %call75.i711.3.2, i8* %scevgep108.3.2, align 1
  %scevgep105.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %974, i64 0, i64 0, i64 3
  %999 = load i8, i8* %scevgep105.3.2, align 1
  %conv84.i720.3.2 = zext i8 %999 to i32
  %scevgep109.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %975, i64 0, i64 0, i64 3
  %1000 = load i8, i8* %scevgep109.3.2, align 1
  %conv89.i725.3.2 = zext i8 %1000 to i32
  %xor90.i726.3.2 = xor i32 %conv84.i720.3.2, %conv89.i725.3.2
  %conv91.i727.3.2 = trunc i32 %xor90.i726.3.2 to i8
  %scevgep112.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %976, i64 0, i64 0, i64 3
  store i8 %conv91.i727.3.2, i8* %scevgep112.3.2, align 1
  %scevgep93.4.2 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 4
  %1001 = load i8, i8* %scevgep93.4.2, align 1
  %conv44.i679.4.2 = zext i8 %1001 to i32
  %scevgep96.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %972, i64 0, i64 0, i64 4
  %1002 = load i8, i8* %scevgep96.4.2, align 1
  %conv49.i684.4.2 = zext i8 %1002 to i32
  %xor.i685.4.2 = xor i32 %conv44.i679.4.2, %conv49.i684.4.2
  %conv50.i686.4.2 = trunc i32 %xor.i685.4.2 to i8
  %scevgep100.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %973, i64 0, i64 0, i64 4
  store i8 %conv50.i686.4.2, i8* %scevgep100.4.2, align 1
  %1003 = load i8, i8* %arrayidx56.i692.2, align 1
  %conv57.i693.4.2 = zext i8 %1003 to i32
  %xor58.i694.4.2 = xor i32 %conv57.i693.4.2, 1
  %conv59.i695.4.2 = trunc i32 %xor58.i694.4.2 to i8
  %scevgep97.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %972, i64 0, i64 0, i64 4
  %1004 = load i8, i8* %scevgep97.4.2, align 1
  %call64.i700.4.2 = call zeroext i8 @mult(i8 zeroext %conv59.i695.4.2, i8 zeroext %1004) #3
  %scevgep104.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %974, i64 0, i64 0, i64 4
  store i8 %call64.i700.4.2, i8* %scevgep104.4.2, align 1
  %1005 = load i8, i8* %arrayidx70.i706.2, align 1
  %scevgep101.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %973, i64 0, i64 0, i64 4
  %1006 = load i8, i8* %scevgep101.4.2, align 1
  %call75.i711.4.2 = call zeroext i8 @mult(i8 zeroext %1005, i8 zeroext %1006) #3
  %scevgep108.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %975, i64 0, i64 0, i64 4
  store i8 %call75.i711.4.2, i8* %scevgep108.4.2, align 1
  %scevgep105.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %974, i64 0, i64 0, i64 4
  %1007 = load i8, i8* %scevgep105.4.2, align 1
  %conv84.i720.4.2 = zext i8 %1007 to i32
  %scevgep109.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %975, i64 0, i64 0, i64 4
  %1008 = load i8, i8* %scevgep109.4.2, align 1
  %conv89.i725.4.2 = zext i8 %1008 to i32
  %xor90.i726.4.2 = xor i32 %conv84.i720.4.2, %conv89.i725.4.2
  %conv91.i727.4.2 = trunc i32 %xor90.i726.4.2 to i8
  %scevgep112.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %976, i64 0, i64 0, i64 4
  store i8 %conv91.i727.4.2, i8* %scevgep112.4.2, align 1
  %scevgep95.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %972, i64 0, i64 1, i64 0
  %1009 = bitcast i8* %scevgep95.2 to [5 x [5 x i8]]*
  %scevgep99.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %973, i64 0, i64 1, i64 0
  %1010 = bitcast i8* %scevgep99.2 to [5 x [5 x i8]]*
  %scevgep103.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %974, i64 0, i64 1, i64 0
  %1011 = bitcast i8* %scevgep103.2 to [5 x [5 x i8]]*
  %scevgep107.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %975, i64 0, i64 1, i64 0
  %1012 = bitcast i8* %scevgep107.2 to [5 x [5 x i8]]*
  %scevgep111.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %976, i64 0, i64 1, i64 0
  %1013 = bitcast i8* %scevgep111.2 to [5 x [5 x i8]]*
  %arrayidx56.i692.3 = getelementptr inbounds i8, i8* %arraydecay20, i64 3
  %arrayidx70.i706.3 = getelementptr inbounds i8, i8* %arraydecay20, i64 3
  %scevgep93.3484 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 0
  %1014 = load i8, i8* %scevgep93.3484, align 1
  %conv44.i679.3485 = zext i8 %1014 to i32
  %scevgep96.3486 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1009, i64 0, i64 0, i64 0
  %1015 = load i8, i8* %scevgep96.3486, align 1
  %conv49.i684.3487 = zext i8 %1015 to i32
  %xor.i685.3488 = xor i32 %conv44.i679.3485, %conv49.i684.3487
  %conv50.i686.3489 = trunc i32 %xor.i685.3488 to i8
  %scevgep100.3490 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1010, i64 0, i64 0, i64 0
  store i8 %conv50.i686.3489, i8* %scevgep100.3490, align 1
  %1016 = load i8, i8* %arrayidx56.i692.3, align 1
  %conv57.i693.3491 = zext i8 %1016 to i32
  %xor58.i694.3492 = xor i32 %conv57.i693.3491, 1
  %conv59.i695.3493 = trunc i32 %xor58.i694.3492 to i8
  %scevgep97.3494 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1009, i64 0, i64 0, i64 0
  %1017 = load i8, i8* %scevgep97.3494, align 1
  %call64.i700.3495 = call zeroext i8 @mult(i8 zeroext %conv59.i695.3493, i8 zeroext %1017) #3
  %scevgep104.3496 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1011, i64 0, i64 0, i64 0
  store i8 %call64.i700.3495, i8* %scevgep104.3496, align 1
  %1018 = load i8, i8* %arrayidx70.i706.3, align 1
  %scevgep101.3497 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1010, i64 0, i64 0, i64 0
  %1019 = load i8, i8* %scevgep101.3497, align 1
  %call75.i711.3498 = call zeroext i8 @mult(i8 zeroext %1018, i8 zeroext %1019) #3
  %scevgep108.3499 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1012, i64 0, i64 0, i64 0
  store i8 %call75.i711.3498, i8* %scevgep108.3499, align 1
  %scevgep105.3500 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1011, i64 0, i64 0, i64 0
  %1020 = load i8, i8* %scevgep105.3500, align 1
  %conv84.i720.3501 = zext i8 %1020 to i32
  %scevgep109.3502 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1012, i64 0, i64 0, i64 0
  %1021 = load i8, i8* %scevgep109.3502, align 1
  %conv89.i725.3503 = zext i8 %1021 to i32
  %xor90.i726.3504 = xor i32 %conv84.i720.3501, %conv89.i725.3503
  %conv91.i727.3505 = trunc i32 %xor90.i726.3504 to i8
  %scevgep112.3506 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1013, i64 0, i64 0, i64 0
  store i8 %conv91.i727.3505, i8* %scevgep112.3506, align 1
  %scevgep93.1.3 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 1
  %1022 = load i8, i8* %scevgep93.1.3, align 1
  %conv44.i679.1.3 = zext i8 %1022 to i32
  %scevgep96.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1009, i64 0, i64 0, i64 1
  %1023 = load i8, i8* %scevgep96.1.3, align 1
  %conv49.i684.1.3 = zext i8 %1023 to i32
  %xor.i685.1.3 = xor i32 %conv44.i679.1.3, %conv49.i684.1.3
  %conv50.i686.1.3 = trunc i32 %xor.i685.1.3 to i8
  %scevgep100.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1010, i64 0, i64 0, i64 1
  store i8 %conv50.i686.1.3, i8* %scevgep100.1.3, align 1
  %1024 = load i8, i8* %arrayidx56.i692.3, align 1
  %conv57.i693.1.3 = zext i8 %1024 to i32
  %xor58.i694.1.3 = xor i32 %conv57.i693.1.3, 1
  %conv59.i695.1.3 = trunc i32 %xor58.i694.1.3 to i8
  %scevgep97.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1009, i64 0, i64 0, i64 1
  %1025 = load i8, i8* %scevgep97.1.3, align 1
  %call64.i700.1.3 = call zeroext i8 @mult(i8 zeroext %conv59.i695.1.3, i8 zeroext %1025) #3
  %scevgep104.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1011, i64 0, i64 0, i64 1
  store i8 %call64.i700.1.3, i8* %scevgep104.1.3, align 1
  %1026 = load i8, i8* %arrayidx70.i706.3, align 1
  %scevgep101.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1010, i64 0, i64 0, i64 1
  %1027 = load i8, i8* %scevgep101.1.3, align 1
  %call75.i711.1.3 = call zeroext i8 @mult(i8 zeroext %1026, i8 zeroext %1027) #3
  %scevgep108.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1012, i64 0, i64 0, i64 1
  store i8 %call75.i711.1.3, i8* %scevgep108.1.3, align 1
  %scevgep105.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1011, i64 0, i64 0, i64 1
  %1028 = load i8, i8* %scevgep105.1.3, align 1
  %conv84.i720.1.3 = zext i8 %1028 to i32
  %scevgep109.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1012, i64 0, i64 0, i64 1
  %1029 = load i8, i8* %scevgep109.1.3, align 1
  %conv89.i725.1.3 = zext i8 %1029 to i32
  %xor90.i726.1.3 = xor i32 %conv84.i720.1.3, %conv89.i725.1.3
  %conv91.i727.1.3 = trunc i32 %xor90.i726.1.3 to i8
  %scevgep112.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1013, i64 0, i64 0, i64 1
  store i8 %conv91.i727.1.3, i8* %scevgep112.1.3, align 1
  %scevgep93.2.3 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 2
  %1030 = load i8, i8* %scevgep93.2.3, align 1
  %conv44.i679.2.3 = zext i8 %1030 to i32
  %scevgep96.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1009, i64 0, i64 0, i64 2
  %1031 = load i8, i8* %scevgep96.2.3, align 1
  %conv49.i684.2.3 = zext i8 %1031 to i32
  %xor.i685.2.3 = xor i32 %conv44.i679.2.3, %conv49.i684.2.3
  %conv50.i686.2.3 = trunc i32 %xor.i685.2.3 to i8
  %scevgep100.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1010, i64 0, i64 0, i64 2
  store i8 %conv50.i686.2.3, i8* %scevgep100.2.3, align 1
  %1032 = load i8, i8* %arrayidx56.i692.3, align 1
  %conv57.i693.2.3 = zext i8 %1032 to i32
  %xor58.i694.2.3 = xor i32 %conv57.i693.2.3, 1
  %conv59.i695.2.3 = trunc i32 %xor58.i694.2.3 to i8
  %scevgep97.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1009, i64 0, i64 0, i64 2
  %1033 = load i8, i8* %scevgep97.2.3, align 1
  %call64.i700.2.3 = call zeroext i8 @mult(i8 zeroext %conv59.i695.2.3, i8 zeroext %1033) #3
  %scevgep104.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1011, i64 0, i64 0, i64 2
  store i8 %call64.i700.2.3, i8* %scevgep104.2.3, align 1
  %1034 = load i8, i8* %arrayidx70.i706.3, align 1
  %scevgep101.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1010, i64 0, i64 0, i64 2
  %1035 = load i8, i8* %scevgep101.2.3, align 1
  %call75.i711.2.3 = call zeroext i8 @mult(i8 zeroext %1034, i8 zeroext %1035) #3
  %scevgep108.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1012, i64 0, i64 0, i64 2
  store i8 %call75.i711.2.3, i8* %scevgep108.2.3, align 1
  %scevgep105.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1011, i64 0, i64 0, i64 2
  %1036 = load i8, i8* %scevgep105.2.3, align 1
  %conv84.i720.2.3 = zext i8 %1036 to i32
  %scevgep109.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1012, i64 0, i64 0, i64 2
  %1037 = load i8, i8* %scevgep109.2.3, align 1
  %conv89.i725.2.3 = zext i8 %1037 to i32
  %xor90.i726.2.3 = xor i32 %conv84.i720.2.3, %conv89.i725.2.3
  %conv91.i727.2.3 = trunc i32 %xor90.i726.2.3 to i8
  %scevgep112.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1013, i64 0, i64 0, i64 2
  store i8 %conv91.i727.2.3, i8* %scevgep112.2.3, align 1
  %scevgep93.4.3 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 4
  %1038 = load i8, i8* %scevgep93.4.3, align 1
  %conv44.i679.4.3 = zext i8 %1038 to i32
  %scevgep96.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1009, i64 0, i64 0, i64 4
  %1039 = load i8, i8* %scevgep96.4.3, align 1
  %conv49.i684.4.3 = zext i8 %1039 to i32
  %xor.i685.4.3 = xor i32 %conv44.i679.4.3, %conv49.i684.4.3
  %conv50.i686.4.3 = trunc i32 %xor.i685.4.3 to i8
  %scevgep100.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1010, i64 0, i64 0, i64 4
  store i8 %conv50.i686.4.3, i8* %scevgep100.4.3, align 1
  %1040 = load i8, i8* %arrayidx56.i692.3, align 1
  %conv57.i693.4.3 = zext i8 %1040 to i32
  %xor58.i694.4.3 = xor i32 %conv57.i693.4.3, 1
  %conv59.i695.4.3 = trunc i32 %xor58.i694.4.3 to i8
  %scevgep97.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1009, i64 0, i64 0, i64 4
  %1041 = load i8, i8* %scevgep97.4.3, align 1
  %call64.i700.4.3 = call zeroext i8 @mult(i8 zeroext %conv59.i695.4.3, i8 zeroext %1041) #3
  %scevgep104.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1011, i64 0, i64 0, i64 4
  store i8 %call64.i700.4.3, i8* %scevgep104.4.3, align 1
  %1042 = load i8, i8* %arrayidx70.i706.3, align 1
  %scevgep101.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1010, i64 0, i64 0, i64 4
  %1043 = load i8, i8* %scevgep101.4.3, align 1
  %call75.i711.4.3 = call zeroext i8 @mult(i8 zeroext %1042, i8 zeroext %1043) #3
  %scevgep108.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1012, i64 0, i64 0, i64 4
  store i8 %call75.i711.4.3, i8* %scevgep108.4.3, align 1
  %scevgep105.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1011, i64 0, i64 0, i64 4
  %1044 = load i8, i8* %scevgep105.4.3, align 1
  %conv84.i720.4.3 = zext i8 %1044 to i32
  %scevgep109.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1012, i64 0, i64 0, i64 4
  %1045 = load i8, i8* %scevgep109.4.3, align 1
  %conv89.i725.4.3 = zext i8 %1045 to i32
  %xor90.i726.4.3 = xor i32 %conv84.i720.4.3, %conv89.i725.4.3
  %conv91.i727.4.3 = trunc i32 %xor90.i726.4.3 to i8
  %scevgep112.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1013, i64 0, i64 0, i64 4
  store i8 %conv91.i727.4.3, i8* %scevgep112.4.3, align 1
  %scevgep95.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1009, i64 0, i64 1, i64 0
  %1046 = bitcast i8* %scevgep95.3 to [5 x [5 x i8]]*
  %scevgep99.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1010, i64 0, i64 1, i64 0
  %1047 = bitcast i8* %scevgep99.3 to [5 x [5 x i8]]*
  %scevgep103.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1011, i64 0, i64 1, i64 0
  %1048 = bitcast i8* %scevgep103.3 to [5 x [5 x i8]]*
  %scevgep107.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1012, i64 0, i64 1, i64 0
  %1049 = bitcast i8* %scevgep107.3 to [5 x [5 x i8]]*
  %scevgep111.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1013, i64 0, i64 1, i64 0
  %1050 = bitcast i8* %scevgep111.3 to [5 x [5 x i8]]*
  %arrayidx56.i692.4 = getelementptr inbounds i8, i8* %arraydecay20, i64 4
  %arrayidx70.i706.4 = getelementptr inbounds i8, i8* %arraydecay20, i64 4
  %scevgep93.4511 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 0
  %1051 = load i8, i8* %scevgep93.4511, align 1
  %conv44.i679.4512 = zext i8 %1051 to i32
  %scevgep96.4513 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1046, i64 0, i64 0, i64 0
  %1052 = load i8, i8* %scevgep96.4513, align 1
  %conv49.i684.4514 = zext i8 %1052 to i32
  %xor.i685.4515 = xor i32 %conv44.i679.4512, %conv49.i684.4514
  %conv50.i686.4516 = trunc i32 %xor.i685.4515 to i8
  %scevgep100.4517 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1047, i64 0, i64 0, i64 0
  store i8 %conv50.i686.4516, i8* %scevgep100.4517, align 1
  %1053 = load i8, i8* %arrayidx56.i692.4, align 1
  %conv57.i693.4518 = zext i8 %1053 to i32
  %xor58.i694.4519 = xor i32 %conv57.i693.4518, 1
  %conv59.i695.4520 = trunc i32 %xor58.i694.4519 to i8
  %scevgep97.4521 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1046, i64 0, i64 0, i64 0
  %1054 = load i8, i8* %scevgep97.4521, align 1
  %call64.i700.4522 = call zeroext i8 @mult(i8 zeroext %conv59.i695.4520, i8 zeroext %1054) #3
  %scevgep104.4523 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1048, i64 0, i64 0, i64 0
  store i8 %call64.i700.4522, i8* %scevgep104.4523, align 1
  %1055 = load i8, i8* %arrayidx70.i706.4, align 1
  %scevgep101.4524 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1047, i64 0, i64 0, i64 0
  %1056 = load i8, i8* %scevgep101.4524, align 1
  %call75.i711.4525 = call zeroext i8 @mult(i8 zeroext %1055, i8 zeroext %1056) #3
  %scevgep108.4526 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1049, i64 0, i64 0, i64 0
  store i8 %call75.i711.4525, i8* %scevgep108.4526, align 1
  %scevgep105.4527 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1048, i64 0, i64 0, i64 0
  %1057 = load i8, i8* %scevgep105.4527, align 1
  %conv84.i720.4528 = zext i8 %1057 to i32
  %scevgep109.4529 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1049, i64 0, i64 0, i64 0
  %1058 = load i8, i8* %scevgep109.4529, align 1
  %conv89.i725.4530 = zext i8 %1058 to i32
  %xor90.i726.4531 = xor i32 %conv84.i720.4528, %conv89.i725.4530
  %conv91.i727.4532 = trunc i32 %xor90.i726.4531 to i8
  %scevgep112.4533 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1050, i64 0, i64 0, i64 0
  store i8 %conv91.i727.4532, i8* %scevgep112.4533, align 1
  %scevgep93.1.4 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 1
  %1059 = load i8, i8* %scevgep93.1.4, align 1
  %conv44.i679.1.4 = zext i8 %1059 to i32
  %scevgep96.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1046, i64 0, i64 0, i64 1
  %1060 = load i8, i8* %scevgep96.1.4, align 1
  %conv49.i684.1.4 = zext i8 %1060 to i32
  %xor.i685.1.4 = xor i32 %conv44.i679.1.4, %conv49.i684.1.4
  %conv50.i686.1.4 = trunc i32 %xor.i685.1.4 to i8
  %scevgep100.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1047, i64 0, i64 0, i64 1
  store i8 %conv50.i686.1.4, i8* %scevgep100.1.4, align 1
  %1061 = load i8, i8* %arrayidx56.i692.4, align 1
  %conv57.i693.1.4 = zext i8 %1061 to i32
  %xor58.i694.1.4 = xor i32 %conv57.i693.1.4, 1
  %conv59.i695.1.4 = trunc i32 %xor58.i694.1.4 to i8
  %scevgep97.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1046, i64 0, i64 0, i64 1
  %1062 = load i8, i8* %scevgep97.1.4, align 1
  %call64.i700.1.4 = call zeroext i8 @mult(i8 zeroext %conv59.i695.1.4, i8 zeroext %1062) #3
  %scevgep104.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1048, i64 0, i64 0, i64 1
  store i8 %call64.i700.1.4, i8* %scevgep104.1.4, align 1
  %1063 = load i8, i8* %arrayidx70.i706.4, align 1
  %scevgep101.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1047, i64 0, i64 0, i64 1
  %1064 = load i8, i8* %scevgep101.1.4, align 1
  %call75.i711.1.4 = call zeroext i8 @mult(i8 zeroext %1063, i8 zeroext %1064) #3
  %scevgep108.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1049, i64 0, i64 0, i64 1
  store i8 %call75.i711.1.4, i8* %scevgep108.1.4, align 1
  %scevgep105.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1048, i64 0, i64 0, i64 1
  %1065 = load i8, i8* %scevgep105.1.4, align 1
  %conv84.i720.1.4 = zext i8 %1065 to i32
  %scevgep109.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1049, i64 0, i64 0, i64 1
  %1066 = load i8, i8* %scevgep109.1.4, align 1
  %conv89.i725.1.4 = zext i8 %1066 to i32
  %xor90.i726.1.4 = xor i32 %conv84.i720.1.4, %conv89.i725.1.4
  %conv91.i727.1.4 = trunc i32 %xor90.i726.1.4 to i8
  %scevgep112.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1050, i64 0, i64 0, i64 1
  store i8 %conv91.i727.1.4, i8* %scevgep112.1.4, align 1
  %scevgep93.2.4 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 2
  %1067 = load i8, i8* %scevgep93.2.4, align 1
  %conv44.i679.2.4 = zext i8 %1067 to i32
  %scevgep96.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1046, i64 0, i64 0, i64 2
  %1068 = load i8, i8* %scevgep96.2.4, align 1
  %conv49.i684.2.4 = zext i8 %1068 to i32
  %xor.i685.2.4 = xor i32 %conv44.i679.2.4, %conv49.i684.2.4
  %conv50.i686.2.4 = trunc i32 %xor.i685.2.4 to i8
  %scevgep100.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1047, i64 0, i64 0, i64 2
  store i8 %conv50.i686.2.4, i8* %scevgep100.2.4, align 1
  %1069 = load i8, i8* %arrayidx56.i692.4, align 1
  %conv57.i693.2.4 = zext i8 %1069 to i32
  %xor58.i694.2.4 = xor i32 %conv57.i693.2.4, 1
  %conv59.i695.2.4 = trunc i32 %xor58.i694.2.4 to i8
  %scevgep97.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1046, i64 0, i64 0, i64 2
  %1070 = load i8, i8* %scevgep97.2.4, align 1
  %call64.i700.2.4 = call zeroext i8 @mult(i8 zeroext %conv59.i695.2.4, i8 zeroext %1070) #3
  %scevgep104.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1048, i64 0, i64 0, i64 2
  store i8 %call64.i700.2.4, i8* %scevgep104.2.4, align 1
  %1071 = load i8, i8* %arrayidx70.i706.4, align 1
  %scevgep101.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1047, i64 0, i64 0, i64 2
  %1072 = load i8, i8* %scevgep101.2.4, align 1
  %call75.i711.2.4 = call zeroext i8 @mult(i8 zeroext %1071, i8 zeroext %1072) #3
  %scevgep108.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1049, i64 0, i64 0, i64 2
  store i8 %call75.i711.2.4, i8* %scevgep108.2.4, align 1
  %scevgep105.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1048, i64 0, i64 0, i64 2
  %1073 = load i8, i8* %scevgep105.2.4, align 1
  %conv84.i720.2.4 = zext i8 %1073 to i32
  %scevgep109.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1049, i64 0, i64 0, i64 2
  %1074 = load i8, i8* %scevgep109.2.4, align 1
  %conv89.i725.2.4 = zext i8 %1074 to i32
  %xor90.i726.2.4 = xor i32 %conv84.i720.2.4, %conv89.i725.2.4
  %conv91.i727.2.4 = trunc i32 %xor90.i726.2.4 to i8
  %scevgep112.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1050, i64 0, i64 0, i64 2
  store i8 %conv91.i727.2.4, i8* %scevgep112.2.4, align 1
  %scevgep93.3.4 = getelementptr [5 x i8], [5 x i8]* %z, i64 0, i64 3
  %1075 = load i8, i8* %scevgep93.3.4, align 1
  %conv44.i679.3.4 = zext i8 %1075 to i32
  %scevgep96.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1046, i64 0, i64 0, i64 3
  %1076 = load i8, i8* %scevgep96.3.4, align 1
  %conv49.i684.3.4 = zext i8 %1076 to i32
  %xor.i685.3.4 = xor i32 %conv44.i679.3.4, %conv49.i684.3.4
  %conv50.i686.3.4 = trunc i32 %xor.i685.3.4 to i8
  %scevgep100.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1047, i64 0, i64 0, i64 3
  store i8 %conv50.i686.3.4, i8* %scevgep100.3.4, align 1
  %1077 = load i8, i8* %arrayidx56.i692.4, align 1
  %conv57.i693.3.4 = zext i8 %1077 to i32
  %xor58.i694.3.4 = xor i32 %conv57.i693.3.4, 1
  %conv59.i695.3.4 = trunc i32 %xor58.i694.3.4 to i8
  %scevgep97.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1046, i64 0, i64 0, i64 3
  %1078 = load i8, i8* %scevgep97.3.4, align 1
  %call64.i700.3.4 = call zeroext i8 @mult(i8 zeroext %conv59.i695.3.4, i8 zeroext %1078) #3
  %scevgep104.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1048, i64 0, i64 0, i64 3
  store i8 %call64.i700.3.4, i8* %scevgep104.3.4, align 1
  %1079 = load i8, i8* %arrayidx70.i706.4, align 1
  %scevgep101.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1047, i64 0, i64 0, i64 3
  %1080 = load i8, i8* %scevgep101.3.4, align 1
  %call75.i711.3.4 = call zeroext i8 @mult(i8 zeroext %1079, i8 zeroext %1080) #3
  %scevgep108.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1049, i64 0, i64 0, i64 3
  store i8 %call75.i711.3.4, i8* %scevgep108.3.4, align 1
  %scevgep105.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1048, i64 0, i64 0, i64 3
  %1081 = load i8, i8* %scevgep105.3.4, align 1
  %conv84.i720.3.4 = zext i8 %1081 to i32
  %scevgep109.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1049, i64 0, i64 0, i64 3
  %1082 = load i8, i8* %scevgep109.3.4, align 1
  %conv89.i725.3.4 = zext i8 %1082 to i32
  %xor90.i726.3.4 = xor i32 %conv84.i720.3.4, %conv89.i725.3.4
  %conv91.i727.3.4 = trunc i32 %xor90.i726.3.4 to i8
  %scevgep112.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1050, i64 0, i64 0, i64 3
  store i8 %conv91.i727.3.4, i8* %scevgep112.3.4, align 1
  %1083 = load i8, i8* %arraydecay20, align 1
  %1084 = load i8, i8* %arraydecay21, align 1
  %call111.i744 = call zeroext i8 @mult(i8 zeroext %1083, i8 zeroext %1084) #3
  store i8 %call111.i744, i8* %y, align 1
  %scevgep84.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 1
  %1085 = load i8, i8* %scevgep84.1, align 1
  %conv126.i756.1 = zext i8 %1085 to i32
  %1086 = load i8, i8* %y, align 1
  %conv129.i759.1 = zext i8 %1086 to i32
  %xor130.i760.1 = xor i32 %conv129.i759.1, %conv126.i756.1
  %conv131.i761.1 = trunc i32 %xor130.i760.1 to i8
  store i8 %conv131.i761.1, i8* %y, align 1
  %scevgep84.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 2
  %1087 = load i8, i8* %scevgep84.2, align 1
  %conv126.i756.2 = zext i8 %1087 to i32
  %1088 = load i8, i8* %y, align 1
  %conv129.i759.2 = zext i8 %1088 to i32
  %xor130.i760.2 = xor i32 %conv129.i759.2, %conv126.i756.2
  %conv131.i761.2 = trunc i32 %xor130.i760.2 to i8
  store i8 %conv131.i761.2, i8* %y, align 1
  %scevgep84.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 3
  %1089 = load i8, i8* %scevgep84.3, align 1
  %conv126.i756.3 = zext i8 %1089 to i32
  %1090 = load i8, i8* %y, align 1
  %conv129.i759.3 = zext i8 %1090 to i32
  %xor130.i760.3 = xor i32 %conv129.i759.3, %conv126.i756.3
  %conv131.i761.3 = trunc i32 %xor130.i760.3 to i8
  store i8 %conv131.i761.3, i8* %y, align 1
  %scevgep84.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 4
  %1091 = load i8, i8* %scevgep84.4, align 1
  %conv126.i756.4 = zext i8 %1091 to i32
  %1092 = load i8, i8* %y, align 1
  %conv129.i759.4 = zext i8 %1092 to i32
  %xor130.i760.4 = xor i32 %conv129.i759.4, %conv126.i756.4
  %conv131.i761.4 = trunc i32 %xor130.i760.4 to i8
  store i8 %conv131.i761.4, i8* %y, align 1
  %scevgep83 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 1, i64 0
  %1093 = bitcast i8* %scevgep83 to [5 x [5 x i8]]*
  %arrayidx108.i741.1 = getelementptr inbounds i8, i8* %arraydecay20, i64 1
  %1094 = load i8, i8* %arrayidx108.i741.1, align 1
  %arrayidx110.i743.1 = getelementptr inbounds i8, i8* %arraydecay21, i64 1
  %1095 = load i8, i8* %arrayidx110.i743.1, align 1
  %call111.i744.1 = call zeroext i8 @mult(i8 zeroext %1094, i8 zeroext %1095) #3
  %arrayidx113.i746.1 = getelementptr inbounds i8, i8* %y, i64 1
  store i8 %call111.i744.1, i8* %arrayidx113.i746.1, align 1
  %arrayidx128.i758.1 = getelementptr inbounds i8, i8* %y, i64 1
  %scevgep84.1394 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1093, i64 0, i64 0, i64 0
  %1096 = load i8, i8* %scevgep84.1394, align 1
  %conv126.i756.1395 = zext i8 %1096 to i32
  %1097 = load i8, i8* %arrayidx128.i758.1, align 1
  %conv129.i759.1396 = zext i8 %1097 to i32
  %xor130.i760.1397 = xor i32 %conv129.i759.1396, %conv126.i756.1395
  %conv131.i761.1398 = trunc i32 %xor130.i760.1397 to i8
  store i8 %conv131.i761.1398, i8* %arrayidx128.i758.1, align 1
  %scevgep84.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1093, i64 0, i64 0, i64 2
  %1098 = load i8, i8* %scevgep84.2.1, align 1
  %conv126.i756.2.1 = zext i8 %1098 to i32
  %1099 = load i8, i8* %arrayidx128.i758.1, align 1
  %conv129.i759.2.1 = zext i8 %1099 to i32
  %xor130.i760.2.1 = xor i32 %conv129.i759.2.1, %conv126.i756.2.1
  %conv131.i761.2.1 = trunc i32 %xor130.i760.2.1 to i8
  store i8 %conv131.i761.2.1, i8* %arrayidx128.i758.1, align 1
  %scevgep84.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1093, i64 0, i64 0, i64 3
  %1100 = load i8, i8* %scevgep84.3.1, align 1
  %conv126.i756.3.1 = zext i8 %1100 to i32
  %1101 = load i8, i8* %arrayidx128.i758.1, align 1
  %conv129.i759.3.1 = zext i8 %1101 to i32
  %xor130.i760.3.1 = xor i32 %conv129.i759.3.1, %conv126.i756.3.1
  %conv131.i761.3.1 = trunc i32 %xor130.i760.3.1 to i8
  store i8 %conv131.i761.3.1, i8* %arrayidx128.i758.1, align 1
  %scevgep84.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1093, i64 0, i64 0, i64 4
  %1102 = load i8, i8* %scevgep84.4.1, align 1
  %conv126.i756.4.1 = zext i8 %1102 to i32
  %1103 = load i8, i8* %arrayidx128.i758.1, align 1
  %conv129.i759.4.1 = zext i8 %1103 to i32
  %xor130.i760.4.1 = xor i32 %conv129.i759.4.1, %conv126.i756.4.1
  %conv131.i761.4.1 = trunc i32 %xor130.i760.4.1 to i8
  store i8 %conv131.i761.4.1, i8* %arrayidx128.i758.1, align 1
  %scevgep83.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1093, i64 0, i64 1, i64 0
  %1104 = bitcast i8* %scevgep83.1 to [5 x [5 x i8]]*
  %arrayidx108.i741.2 = getelementptr inbounds i8, i8* %arraydecay20, i64 2
  %1105 = load i8, i8* %arrayidx108.i741.2, align 1
  %arrayidx110.i743.2 = getelementptr inbounds i8, i8* %arraydecay21, i64 2
  %1106 = load i8, i8* %arrayidx110.i743.2, align 1
  %call111.i744.2 = call zeroext i8 @mult(i8 zeroext %1105, i8 zeroext %1106) #3
  %arrayidx113.i746.2 = getelementptr inbounds i8, i8* %y, i64 2
  store i8 %call111.i744.2, i8* %arrayidx113.i746.2, align 1
  %arrayidx128.i758.2 = getelementptr inbounds i8, i8* %y, i64 2
  %scevgep84.2403 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1104, i64 0, i64 0, i64 0
  %1107 = load i8, i8* %scevgep84.2403, align 1
  %conv126.i756.2404 = zext i8 %1107 to i32
  %1108 = load i8, i8* %arrayidx128.i758.2, align 1
  %conv129.i759.2405 = zext i8 %1108 to i32
  %xor130.i760.2406 = xor i32 %conv129.i759.2405, %conv126.i756.2404
  %conv131.i761.2407 = trunc i32 %xor130.i760.2406 to i8
  store i8 %conv131.i761.2407, i8* %arrayidx128.i758.2, align 1
  %scevgep84.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1104, i64 0, i64 0, i64 1
  %1109 = load i8, i8* %scevgep84.1.2, align 1
  %conv126.i756.1.2 = zext i8 %1109 to i32
  %1110 = load i8, i8* %arrayidx128.i758.2, align 1
  %conv129.i759.1.2 = zext i8 %1110 to i32
  %xor130.i760.1.2 = xor i32 %conv129.i759.1.2, %conv126.i756.1.2
  %conv131.i761.1.2 = trunc i32 %xor130.i760.1.2 to i8
  store i8 %conv131.i761.1.2, i8* %arrayidx128.i758.2, align 1
  %scevgep84.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1104, i64 0, i64 0, i64 3
  %1111 = load i8, i8* %scevgep84.3.2, align 1
  %conv126.i756.3.2 = zext i8 %1111 to i32
  %1112 = load i8, i8* %arrayidx128.i758.2, align 1
  %conv129.i759.3.2 = zext i8 %1112 to i32
  %xor130.i760.3.2 = xor i32 %conv129.i759.3.2, %conv126.i756.3.2
  %conv131.i761.3.2 = trunc i32 %xor130.i760.3.2 to i8
  store i8 %conv131.i761.3.2, i8* %arrayidx128.i758.2, align 1
  %scevgep84.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1104, i64 0, i64 0, i64 4
  %1113 = load i8, i8* %scevgep84.4.2, align 1
  %conv126.i756.4.2 = zext i8 %1113 to i32
  %1114 = load i8, i8* %arrayidx128.i758.2, align 1
  %conv129.i759.4.2 = zext i8 %1114 to i32
  %xor130.i760.4.2 = xor i32 %conv129.i759.4.2, %conv126.i756.4.2
  %conv131.i761.4.2 = trunc i32 %xor130.i760.4.2 to i8
  store i8 %conv131.i761.4.2, i8* %arrayidx128.i758.2, align 1
  %scevgep83.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1104, i64 0, i64 1, i64 0
  %1115 = bitcast i8* %scevgep83.2 to [5 x [5 x i8]]*
  %arrayidx108.i741.3 = getelementptr inbounds i8, i8* %arraydecay20, i64 3
  %1116 = load i8, i8* %arrayidx108.i741.3, align 1
  %arrayidx110.i743.3 = getelementptr inbounds i8, i8* %arraydecay21, i64 3
  %1117 = load i8, i8* %arrayidx110.i743.3, align 1
  %call111.i744.3 = call zeroext i8 @mult(i8 zeroext %1116, i8 zeroext %1117) #3
  %arrayidx113.i746.3 = getelementptr inbounds i8, i8* %y, i64 3
  store i8 %call111.i744.3, i8* %arrayidx113.i746.3, align 1
  %arrayidx128.i758.3 = getelementptr inbounds i8, i8* %y, i64 3
  %scevgep84.3412 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1115, i64 0, i64 0, i64 0
  %1118 = load i8, i8* %scevgep84.3412, align 1
  %conv126.i756.3413 = zext i8 %1118 to i32
  %1119 = load i8, i8* %arrayidx128.i758.3, align 1
  %conv129.i759.3414 = zext i8 %1119 to i32
  %xor130.i760.3415 = xor i32 %conv129.i759.3414, %conv126.i756.3413
  %conv131.i761.3416 = trunc i32 %xor130.i760.3415 to i8
  store i8 %conv131.i761.3416, i8* %arrayidx128.i758.3, align 1
  %scevgep84.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1115, i64 0, i64 0, i64 1
  %1120 = load i8, i8* %scevgep84.1.3, align 1
  %conv126.i756.1.3 = zext i8 %1120 to i32
  %1121 = load i8, i8* %arrayidx128.i758.3, align 1
  %conv129.i759.1.3 = zext i8 %1121 to i32
  %xor130.i760.1.3 = xor i32 %conv129.i759.1.3, %conv126.i756.1.3
  %conv131.i761.1.3 = trunc i32 %xor130.i760.1.3 to i8
  store i8 %conv131.i761.1.3, i8* %arrayidx128.i758.3, align 1
  %scevgep84.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1115, i64 0, i64 0, i64 2
  %1122 = load i8, i8* %scevgep84.2.3, align 1
  %conv126.i756.2.3 = zext i8 %1122 to i32
  %1123 = load i8, i8* %arrayidx128.i758.3, align 1
  %conv129.i759.2.3 = zext i8 %1123 to i32
  %xor130.i760.2.3 = xor i32 %conv129.i759.2.3, %conv126.i756.2.3
  %conv131.i761.2.3 = trunc i32 %xor130.i760.2.3 to i8
  store i8 %conv131.i761.2.3, i8* %arrayidx128.i758.3, align 1
  %scevgep84.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1115, i64 0, i64 0, i64 4
  %1124 = load i8, i8* %scevgep84.4.3, align 1
  %conv126.i756.4.3 = zext i8 %1124 to i32
  %1125 = load i8, i8* %arrayidx128.i758.3, align 1
  %conv129.i759.4.3 = zext i8 %1125 to i32
  %xor130.i760.4.3 = xor i32 %conv129.i759.4.3, %conv126.i756.4.3
  %conv131.i761.4.3 = trunc i32 %xor130.i760.4.3 to i8
  store i8 %conv131.i761.4.3, i8* %arrayidx128.i758.3, align 1
  %scevgep83.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1115, i64 0, i64 1, i64 0
  %1126 = bitcast i8* %scevgep83.3 to [5 x [5 x i8]]*
  %arrayidx108.i741.4 = getelementptr inbounds i8, i8* %arraydecay20, i64 4
  %1127 = load i8, i8* %arrayidx108.i741.4, align 1
  %arrayidx110.i743.4 = getelementptr inbounds i8, i8* %arraydecay21, i64 4
  %1128 = load i8, i8* %arrayidx110.i743.4, align 1
  %call111.i744.4 = call zeroext i8 @mult(i8 zeroext %1127, i8 zeroext %1128) #3
  %arrayidx113.i746.4 = getelementptr inbounds i8, i8* %y, i64 4
  store i8 %call111.i744.4, i8* %arrayidx113.i746.4, align 1
  %arrayidx128.i758.4 = getelementptr inbounds i8, i8* %y, i64 4
  %scevgep84.4421 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1126, i64 0, i64 0, i64 0
  %1129 = load i8, i8* %scevgep84.4421, align 1
  %conv126.i756.4422 = zext i8 %1129 to i32
  %1130 = load i8, i8* %arrayidx128.i758.4, align 1
  %conv129.i759.4423 = zext i8 %1130 to i32
  %xor130.i760.4424 = xor i32 %conv129.i759.4423, %conv126.i756.4422
  %conv131.i761.4425 = trunc i32 %xor130.i760.4424 to i8
  store i8 %conv131.i761.4425, i8* %arrayidx128.i758.4, align 1
  %scevgep84.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1126, i64 0, i64 0, i64 1
  %1131 = load i8, i8* %scevgep84.1.4, align 1
  %conv126.i756.1.4 = zext i8 %1131 to i32
  %1132 = load i8, i8* %arrayidx128.i758.4, align 1
  %conv129.i759.1.4 = zext i8 %1132 to i32
  %xor130.i760.1.4 = xor i32 %conv129.i759.1.4, %conv126.i756.1.4
  %conv131.i761.1.4 = trunc i32 %xor130.i760.1.4 to i8
  store i8 %conv131.i761.1.4, i8* %arrayidx128.i758.4, align 1
  %scevgep84.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1126, i64 0, i64 0, i64 2
  %1133 = load i8, i8* %scevgep84.2.4, align 1
  %conv126.i756.2.4 = zext i8 %1133 to i32
  %1134 = load i8, i8* %arrayidx128.i758.4, align 1
  %conv129.i759.2.4 = zext i8 %1134 to i32
  %xor130.i760.2.4 = xor i32 %conv129.i759.2.4, %conv126.i756.2.4
  %conv131.i761.2.4 = trunc i32 %xor130.i760.2.4 to i8
  store i8 %conv131.i761.2.4, i8* %arrayidx128.i758.4, align 1
  %scevgep84.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1126, i64 0, i64 0, i64 3
  %1135 = load i8, i8* %scevgep84.3.4, align 1
  %conv126.i756.3.4 = zext i8 %1135 to i32
  %1136 = load i8, i8* %arrayidx128.i758.4, align 1
  %conv129.i759.3.4 = zext i8 %1136 to i32
  %xor130.i760.3.4 = xor i32 %conv129.i759.3.4, %conv126.i756.3.4
  %conv131.i761.3.4 = trunc i32 %xor130.i760.3.4 to i8
  store i8 %conv131.i761.3.4, i8* %arrayidx128.i758.4, align 1
  %call139.i767 = call zeroext i8 @mult(i8 zeroext %call.i614, i8 zeroext %call1.i615) #3
  %conv140.i768 = zext i8 %call139.i767 to i32
  %1137 = load i8, i8* %y, align 1
  %scevgep74.1 = getelementptr i8, i8* %y, i64 1
  %1138 = load i8, i8* %scevgep74.1, align 1
  %conv.i.i172.i775.1 = zext i8 %1138 to i32
  %conv1.i.i173.i776.1 = zext i8 %1137 to i32
  %xor.i.i174.i777.1 = xor i32 %conv1.i.i173.i776.1, %conv.i.i172.i775.1
  %conv2.i.i175.i778.1 = trunc i32 %xor.i.i174.i777.1 to i8
  %scevgep74.2 = getelementptr i8, i8* %y, i64 2
  %1139 = load i8, i8* %scevgep74.2, align 1
  %conv.i.i172.i775.2 = zext i8 %1139 to i32
  %conv1.i.i173.i776.2 = zext i8 %conv2.i.i175.i778.1 to i32
  %xor.i.i174.i777.2 = xor i32 %conv1.i.i173.i776.2, %conv.i.i172.i775.2
  %conv2.i.i175.i778.2 = trunc i32 %xor.i.i174.i777.2 to i8
  %scevgep74.3 = getelementptr i8, i8* %y, i64 3
  %1140 = load i8, i8* %scevgep74.3, align 1
  %conv.i.i172.i775.3 = zext i8 %1140 to i32
  %conv1.i.i173.i776.3 = zext i8 %conv2.i.i175.i778.2 to i32
  %xor.i.i174.i777.3 = xor i32 %conv1.i.i173.i776.3, %conv.i.i172.i775.3
  %conv2.i.i175.i778.3 = trunc i32 %xor.i.i174.i777.3 to i8
  %scevgep74.4 = getelementptr i8, i8* %y, i64 4
  %1141 = load i8, i8* %scevgep74.4, align 1
  %conv.i.i172.i775.4 = zext i8 %1141 to i32
  %conv1.i.i173.i776.4 = zext i8 %conv2.i.i175.i778.3 to i32
  %xor.i.i174.i777.4 = xor i32 %conv1.i.i173.i776.4, %conv.i.i172.i775.4
  %conv2.i.i175.i778.4 = trunc i32 %xor.i.i174.i777.4 to i8
  %conv142.i781 = zext i8 %conv2.i.i175.i778.4 to i32
  %cmp143.i782 = icmp eq i32 %conv140.i768, %conv142.i781
  call void @assert(i1 zeroext %cmp143.i782) #3
  %call.i.i786 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call) #3
  %call1.i787 = call zeroext i8 @mult(i8 zeroext %call.i.i786, i8 zeroext %call) #3
  %call.i.i.i788 = call zeroext i8 @mult(i8 zeroext %call1.i787, i8 zeroext %call1.i787) #3
  %call.i3.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i788, i8 zeroext %call.i.i.i788) #3
  %call3.i = call zeroext i8 @mult(i8 zeroext %call1.i787, i8 zeroext %call.i3.i.i) #3
  %call.i.i.i.i = call zeroext i8 @mult(i8 zeroext %call3.i, i8 zeroext %call3.i) #3
  %call.i3.i.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i, i8 zeroext %call.i.i.i.i) #3
  %call.i.i5.i.i = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i, i8 zeroext %call.i3.i.i.i) #3
  %call.i3.i6.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i5.i.i, i8 zeroext %call.i.i5.i.i) #3
  %call5.i = call zeroext i8 @mult(i8 zeroext %call.i3.i6.i.i, i8 zeroext %call.i3.i.i) #3
  %call6.i = call zeroext i8 @mult(i8 zeroext %call5.i, i8 zeroext %call.i.i786) #3
  %conv23 = zext i8 %call6.i to i32
  %1142 = load i8, i8* %y, align 1
  %scevgep.1 = getelementptr i8, i8* %y, i64 1
  %1143 = load i8, i8* %scevgep.1, align 1
  %conv.i.i799.1 = zext i8 %1143 to i32
  %conv1.i.i800.1 = zext i8 %1142 to i32
  %xor.i.i801.1 = xor i32 %conv1.i.i800.1, %conv.i.i799.1
  %conv2.i.i802.1 = trunc i32 %xor.i.i801.1 to i8
  %scevgep.2 = getelementptr i8, i8* %y, i64 2
  %1144 = load i8, i8* %scevgep.2, align 1
  %conv.i.i799.2 = zext i8 %1144 to i32
  %conv1.i.i800.2 = zext i8 %conv2.i.i802.1 to i32
  %xor.i.i801.2 = xor i32 %conv1.i.i800.2, %conv.i.i799.2
  %conv2.i.i802.2 = trunc i32 %xor.i.i801.2 to i8
  %scevgep.3 = getelementptr i8, i8* %y, i64 3
  %1145 = load i8, i8* %scevgep.3, align 1
  %conv.i.i799.3 = zext i8 %1145 to i32
  %conv1.i.i800.3 = zext i8 %conv2.i.i802.2 to i32
  %xor.i.i801.3 = xor i32 %conv1.i.i800.3, %conv.i.i799.3
  %conv2.i.i802.3 = trunc i32 %xor.i.i801.3 to i8
  %scevgep.4 = getelementptr i8, i8* %y, i64 4
  %1146 = load i8, i8* %scevgep.4, align 1
  %conv.i.i799.4 = zext i8 %1146 to i32
  %conv1.i.i800.4 = zext i8 %conv2.i.i802.3 to i32
  %xor.i.i801.4 = xor i32 %conv1.i.i800.4, %conv.i.i799.4
  %conv2.i.i802.4 = trunc i32 %xor.i.i801.4 to i8
  %conv25 = zext i8 %conv2.i.i802.4 to i32
  %cmp26 = icmp eq i32 %conv23, %conv25
  call void @assert(i1 zeroext %cmp26)
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i8 @expd(i8 zeroext %x) #0 {
entry:
  %call = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x)
  %call.1 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %x)
  %call.2 = call zeroext i8 @mult(i8 zeroext %call.1, i8 zeroext %x)
  %call.3 = call zeroext i8 @mult(i8 zeroext %call.2, i8 zeroext %x)
  ret i8 %call.3
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_expd(i8* %x, i8* %y) #0 {
entry:
  %r.i = alloca [5 x [5 x i8]], align 16
  %s.i = alloca [5 x [5 x i8]], align 16
  %p0.i = alloca [5 x [5 x i8]], align 16
  %p1.i = alloca [5 x [5 x i8]], align 16
  %z.i = alloca [5 x [5 x i8]], align 16
  %z = alloca [5 x [5 x i8]], align 16
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %scevgep105.1 = getelementptr i8, i8* %x, i64 1
  %1 = load i8, i8* %scevgep105.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep105.2 = getelementptr i8, i8* %x, i64 2
  %2 = load i8, i8* %scevgep105.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %scevgep105.3 = getelementptr i8, i8* %x, i64 3
  %3 = load i8, i8* %scevgep105.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %scevgep105.4 = getelementptr i8, i8* %x, i64 4
  %4 = load i8, i8* %scevgep105.4, align 1
  %conv.i.i.4 = zext i8 %4 to i32
  %conv1.i.i.4 = zext i8 %conv2.i.i.3 to i32
  %xor.i.i.4 = xor i32 %conv1.i.i.4, %conv.i.i.4
  %conv2.i.i.4 = trunc i32 %xor.i.i.4 to i8
  %conv2 = zext i8 %conv2.i.i.4 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %5 = load i8, i8* %x, align 1
  %scevgep101 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 0
  store i8 %5, i8* %scevgep101, align 1
  %scevgep100.1 = getelementptr i8, i8* %x, i64 1
  %6 = load i8, i8* %scevgep100.1, align 1
  %scevgep101.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 1
  store i8 %6, i8* %scevgep101.1, align 1
  %scevgep100.2 = getelementptr i8, i8* %x, i64 2
  %7 = load i8, i8* %scevgep100.2, align 1
  %scevgep101.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 2
  store i8 %7, i8* %scevgep101.2, align 1
  %scevgep100.3 = getelementptr i8, i8* %x, i64 3
  %8 = load i8, i8* %scevgep100.3, align 1
  %scevgep101.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 3
  store i8 %8, i8* %scevgep101.3, align 1
  %scevgep100.4 = getelementptr i8, i8* %x, i64 4
  %9 = load i8, i8* %scevgep100.4, align 1
  %scevgep101.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 4
  store i8 %9, i8* %scevgep101.4, align 1
  %scevgep39 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %scevgep3940 = bitcast i8* %scevgep39 to [5 x [5 x i8]]*
  %scevgep46 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 1, i64 0
  %scevgep4647 = bitcast i8* %scevgep46 to [5 x [5 x i8]]*
  %arrayidx6 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx6, i64 0, i64 0
  %arrayidx9 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 1
  %arraydecay10 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx9, i64 0, i64 0
  %call.i22 = call zeroext i8 (...) @rand() #3
  %call1.i = call zeroext i8 (...) @rand() #3
  %conv.i = zext i8 %call.i22 to i32
  %10 = load i8, i8* %x, align 1
  %scevgep31.1 = getelementptr i8, i8* %x, i64 1
  %11 = load i8, i8* %scevgep31.1, align 1
  %conv.i.i.i.1 = zext i8 %11 to i32
  %conv1.i.i.i.1 = zext i8 %10 to i32
  %xor.i.i.i.1 = xor i32 %conv1.i.i.i.1, %conv.i.i.i.1
  %conv2.i.i.i.1 = trunc i32 %xor.i.i.i.1 to i8
  %scevgep31.2 = getelementptr i8, i8* %x, i64 2
  %12 = load i8, i8* %scevgep31.2, align 1
  %conv.i.i.i.2 = zext i8 %12 to i32
  %conv1.i.i.i.2 = zext i8 %conv2.i.i.i.1 to i32
  %xor.i.i.i.2 = xor i32 %conv1.i.i.i.2, %conv.i.i.i.2
  %conv2.i.i.i.2 = trunc i32 %xor.i.i.i.2 to i8
  %scevgep31.3 = getelementptr i8, i8* %x, i64 3
  %13 = load i8, i8* %scevgep31.3, align 1
  %conv.i.i.i.3 = zext i8 %13 to i32
  %conv1.i.i.i.3 = zext i8 %conv2.i.i.i.2 to i32
  %xor.i.i.i.3 = xor i32 %conv1.i.i.i.3, %conv.i.i.i.3
  %conv2.i.i.i.3 = trunc i32 %xor.i.i.i.3 to i8
  %scevgep31.4 = getelementptr i8, i8* %x, i64 4
  %14 = load i8, i8* %scevgep31.4, align 1
  %conv.i.i.i.4 = zext i8 %14 to i32
  %conv1.i.i.i.4 = zext i8 %conv2.i.i.i.3 to i32
  %xor.i.i.i.4 = xor i32 %conv1.i.i.i.4, %conv.i.i.i.4
  %conv2.i.i.i.4 = trunc i32 %xor.i.i.i.4 to i8
  %conv3.i = zext i8 %conv2.i.i.i.4 to i32
  %cmp.i23 = icmp eq i32 %conv.i, %conv3.i
  call void @assume(i1 zeroext %cmp.i23) #3
  %conv5.i = zext i8 %call1.i to i32
  %scevgep37 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 0
  %15 = load i8, i8* %scevgep37, align 1
  %scevgep37.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 1
  %16 = load i8, i8* %scevgep37.1, align 1
  %conv.i.i155.i.1 = zext i8 %16 to i32
  %conv1.i.i156.i.1 = zext i8 %15 to i32
  %xor.i.i157.i.1 = xor i32 %conv1.i.i156.i.1, %conv.i.i155.i.1
  %conv2.i.i158.i.1 = trunc i32 %xor.i.i157.i.1 to i8
  %scevgep37.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 2
  %17 = load i8, i8* %scevgep37.2, align 1
  %conv.i.i155.i.2 = zext i8 %17 to i32
  %conv1.i.i156.i.2 = zext i8 %conv2.i.i158.i.1 to i32
  %xor.i.i157.i.2 = xor i32 %conv1.i.i156.i.2, %conv.i.i155.i.2
  %conv2.i.i158.i.2 = trunc i32 %xor.i.i157.i.2 to i8
  %scevgep37.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 3
  %18 = load i8, i8* %scevgep37.3, align 1
  %conv.i.i155.i.3 = zext i8 %18 to i32
  %conv1.i.i156.i.3 = zext i8 %conv2.i.i158.i.2 to i32
  %xor.i.i157.i.3 = xor i32 %conv1.i.i156.i.3, %conv.i.i155.i.3
  %conv2.i.i158.i.3 = trunc i32 %xor.i.i157.i.3 to i8
  %scevgep37.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 4
  %19 = load i8, i8* %scevgep37.4, align 1
  %conv.i.i155.i.4 = zext i8 %19 to i32
  %conv1.i.i156.i.4 = zext i8 %conv2.i.i158.i.3 to i32
  %xor.i.i157.i.4 = xor i32 %conv1.i.i156.i.4, %conv.i.i155.i.4
  %conv2.i.i158.i.4 = trunc i32 %xor.i.i157.i.4 to i8
  %conv7.i = zext i8 %conv2.i.i158.i.4 to i32
  %cmp8.i = icmp eq i32 %conv5.i, %conv7.i
  call void @assume(i1 zeroext %cmp8.i) #3
  %call16.i = call zeroext i8 (...) @rand() #3
  store i8 %call16.i, i8* %scevgep39, align 1
  %20 = load i8, i8* %scevgep39, align 1
  store i8 %20, i8* %scevgep46, align 1
  %scevgep44 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep3940, i64 0, i64 0, i64 1
  %21 = bitcast i8* %scevgep44 to [5 x [5 x i8]]*
  %scevgep51 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4647, i64 0, i64 1, i64 0
  %22 = bitcast i8* %scevgep51 to [5 x [5 x i8]]*
  %call16.i.1845 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1845, i8* %scevgep44, align 1
  %23 = load i8, i8* %scevgep44, align 1
  store i8 %23, i8* %scevgep51, align 1
  %scevgep44.1846 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %21, i64 0, i64 0, i64 1
  %24 = bitcast i8* %scevgep44.1846 to [5 x [5 x i8]]*
  %scevgep51.1847 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %22, i64 0, i64 1, i64 0
  %25 = bitcast i8* %scevgep51.1847 to [5 x [5 x i8]]*
  %call16.i.2849 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.2849, i8* %scevgep44.1846, align 1
  %26 = load i8, i8* %scevgep44.1846, align 1
  store i8 %26, i8* %scevgep51.1847, align 1
  %scevgep44.2850 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %24, i64 0, i64 0, i64 1
  %scevgep51.2851 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %25, i64 0, i64 1, i64 0
  %call16.i.3853 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.3853, i8* %scevgep44.2850, align 1
  %27 = load i8, i8* %scevgep44.2850, align 1
  store i8 %27, i8* %scevgep51.2851, align 1
  %scevgep42 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep3940, i64 0, i64 1, i64 1
  %28 = bitcast i8* %scevgep42 to [5 x [5 x i8]]*
  %scevgep49 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4647, i64 0, i64 1, i64 1
  %29 = bitcast i8* %scevgep49 to [5 x [5 x i8]]*
  %call16.i.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1, i8* %scevgep42, align 1
  %30 = load i8, i8* %scevgep42, align 1
  store i8 %30, i8* %scevgep49, align 1
  %scevgep44.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %28, i64 0, i64 0, i64 1
  %31 = bitcast i8* %scevgep44.1 to [5 x [5 x i8]]*
  %scevgep51.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %29, i64 0, i64 1, i64 0
  %32 = bitcast i8* %scevgep51.1 to [5 x [5 x i8]]*
  %call16.i.1.1837 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1.1837, i8* %scevgep44.1, align 1
  %33 = load i8, i8* %scevgep44.1, align 1
  store i8 %33, i8* %scevgep51.1, align 1
  %scevgep44.1.1838 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %31, i64 0, i64 0, i64 1
  %scevgep51.1.1839 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %32, i64 0, i64 1, i64 0
  %call16.i.1.2841 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1.2841, i8* %scevgep44.1.1838, align 1
  %34 = load i8, i8* %scevgep44.1.1838, align 1
  store i8 %34, i8* %scevgep51.1.1839, align 1
  %scevgep42.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %28, i64 0, i64 1, i64 1
  %35 = bitcast i8* %scevgep42.1 to [5 x [5 x i8]]*
  %scevgep49.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %29, i64 0, i64 1, i64 1
  %36 = bitcast i8* %scevgep49.1 to [5 x [5 x i8]]*
  %call16.i.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.2, i8* %scevgep42.1, align 1
  %37 = load i8, i8* %scevgep42.1, align 1
  store i8 %37, i8* %scevgep49.1, align 1
  %scevgep44.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %35, i64 0, i64 0, i64 1
  %scevgep51.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %36, i64 0, i64 1, i64 0
  %call16.i.2.1833 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.2.1833, i8* %scevgep44.2, align 1
  %38 = load i8, i8* %scevgep44.2, align 1
  store i8 %38, i8* %scevgep51.2, align 1
  %scevgep42.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %35, i64 0, i64 1, i64 1
  %scevgep49.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %36, i64 0, i64 1, i64 1
  %call16.i.3 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.3, i8* %scevgep42.2, align 1
  %39 = load i8, i8* %scevgep42.2, align 1
  store i8 %39, i8* %scevgep49.2, align 1
  %scevgep59.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 1
  %40 = load i8, i8* %scevgep59.1, align 1
  %conv44.i.1 = zext i8 %40 to i32
  %scevgep62.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %41 = load i8, i8* %scevgep62.1, align 1
  %conv49.i.1 = zext i8 %41 to i32
  %xor.i.1 = xor i32 %conv44.i.1, %conv49.i.1
  %conv50.i.1 = trunc i32 %xor.i.1 to i8
  %scevgep66.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i.1, i8* %scevgep66.1, align 1
  %42 = load i8, i8* %x, align 1
  %conv57.i.1 = zext i8 %42 to i32
  %xor58.i.1 = xor i32 %conv57.i.1, 1
  %conv59.i.1 = trunc i32 %xor58.i.1 to i8
  %scevgep63.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %43 = load i8, i8* %scevgep63.1, align 1
  %call64.i.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.1, i8 zeroext %43) #3
  %scevgep70.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i.1, i8* %scevgep70.1, align 1
  %44 = load i8, i8* %x, align 1
  %scevgep67.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 1
  %45 = load i8, i8* %scevgep67.1, align 1
  %call75.i.1 = call zeroext i8 @mult(i8 zeroext %44, i8 zeroext %45) #3
  %scevgep74.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i.1, i8* %scevgep74.1, align 1
  %scevgep71.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %46 = load i8, i8* %scevgep71.1, align 1
  %conv84.i.1 = zext i8 %46 to i32
  %scevgep75.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %47 = load i8, i8* %scevgep75.1, align 1
  %conv89.i.1 = zext i8 %47 to i32
  %xor90.i.1 = xor i32 %conv84.i.1, %conv89.i.1
  %conv91.i.1 = trunc i32 %xor90.i.1 to i8
  %scevgep78.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i.1, i8* %scevgep78.1, align 1
  %scevgep59.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 2
  %48 = load i8, i8* %scevgep59.2, align 1
  %conv44.i.2 = zext i8 %48 to i32
  %scevgep62.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 2
  %49 = load i8, i8* %scevgep62.2, align 1
  %conv49.i.2 = zext i8 %49 to i32
  %xor.i.2 = xor i32 %conv44.i.2, %conv49.i.2
  %conv50.i.2 = trunc i32 %xor.i.2 to i8
  %scevgep66.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 2
  store i8 %conv50.i.2, i8* %scevgep66.2, align 1
  %50 = load i8, i8* %x, align 1
  %conv57.i.2 = zext i8 %50 to i32
  %xor58.i.2 = xor i32 %conv57.i.2, 1
  %conv59.i.2 = trunc i32 %xor58.i.2 to i8
  %scevgep63.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 2
  %51 = load i8, i8* %scevgep63.2, align 1
  %call64.i.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.2, i8 zeroext %51) #3
  %scevgep70.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 2
  store i8 %call64.i.2, i8* %scevgep70.2, align 1
  %52 = load i8, i8* %x, align 1
  %scevgep67.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 2
  %53 = load i8, i8* %scevgep67.2, align 1
  %call75.i.2 = call zeroext i8 @mult(i8 zeroext %52, i8 zeroext %53) #3
  %scevgep74.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 2
  store i8 %call75.i.2, i8* %scevgep74.2, align 1
  %scevgep71.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 2
  %54 = load i8, i8* %scevgep71.2, align 1
  %conv84.i.2 = zext i8 %54 to i32
  %scevgep75.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 2
  %55 = load i8, i8* %scevgep75.2, align 1
  %conv89.i.2 = zext i8 %55 to i32
  %xor90.i.2 = xor i32 %conv84.i.2, %conv89.i.2
  %conv91.i.2 = trunc i32 %xor90.i.2 to i8
  %scevgep78.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 2
  store i8 %conv91.i.2, i8* %scevgep78.2, align 1
  %scevgep59.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 3
  %56 = load i8, i8* %scevgep59.3, align 1
  %conv44.i.3 = zext i8 %56 to i32
  %scevgep62.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 3
  %57 = load i8, i8* %scevgep62.3, align 1
  %conv49.i.3 = zext i8 %57 to i32
  %xor.i.3 = xor i32 %conv44.i.3, %conv49.i.3
  %conv50.i.3 = trunc i32 %xor.i.3 to i8
  %scevgep66.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 3
  store i8 %conv50.i.3, i8* %scevgep66.3, align 1
  %58 = load i8, i8* %x, align 1
  %conv57.i.3 = zext i8 %58 to i32
  %xor58.i.3 = xor i32 %conv57.i.3, 1
  %conv59.i.3 = trunc i32 %xor58.i.3 to i8
  %scevgep63.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 3
  %59 = load i8, i8* %scevgep63.3, align 1
  %call64.i.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.3, i8 zeroext %59) #3
  %scevgep70.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 3
  store i8 %call64.i.3, i8* %scevgep70.3, align 1
  %60 = load i8, i8* %x, align 1
  %scevgep67.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 3
  %61 = load i8, i8* %scevgep67.3, align 1
  %call75.i.3 = call zeroext i8 @mult(i8 zeroext %60, i8 zeroext %61) #3
  %scevgep74.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 3
  store i8 %call75.i.3, i8* %scevgep74.3, align 1
  %scevgep71.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 3
  %62 = load i8, i8* %scevgep71.3, align 1
  %conv84.i.3 = zext i8 %62 to i32
  %scevgep75.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 3
  %63 = load i8, i8* %scevgep75.3, align 1
  %conv89.i.3 = zext i8 %63 to i32
  %xor90.i.3 = xor i32 %conv84.i.3, %conv89.i.3
  %conv91.i.3 = trunc i32 %xor90.i.3 to i8
  %scevgep78.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 3
  store i8 %conv91.i.3, i8* %scevgep78.3, align 1
  %scevgep59.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 4
  %64 = load i8, i8* %scevgep59.4, align 1
  %conv44.i.4 = zext i8 %64 to i32
  %scevgep62.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 4
  %65 = load i8, i8* %scevgep62.4, align 1
  %conv49.i.4 = zext i8 %65 to i32
  %xor.i.4 = xor i32 %conv44.i.4, %conv49.i.4
  %conv50.i.4 = trunc i32 %xor.i.4 to i8
  %scevgep66.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 4
  store i8 %conv50.i.4, i8* %scevgep66.4, align 1
  %66 = load i8, i8* %x, align 1
  %conv57.i.4 = zext i8 %66 to i32
  %xor58.i.4 = xor i32 %conv57.i.4, 1
  %conv59.i.4 = trunc i32 %xor58.i.4 to i8
  %scevgep63.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 4
  %67 = load i8, i8* %scevgep63.4, align 1
  %call64.i.4 = call zeroext i8 @mult(i8 zeroext %conv59.i.4, i8 zeroext %67) #3
  %scevgep70.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 4
  store i8 %call64.i.4, i8* %scevgep70.4, align 1
  %68 = load i8, i8* %x, align 1
  %scevgep67.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 4
  %69 = load i8, i8* %scevgep67.4, align 1
  %call75.i.4 = call zeroext i8 @mult(i8 zeroext %68, i8 zeroext %69) #3
  %scevgep74.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 4
  store i8 %call75.i.4, i8* %scevgep74.4, align 1
  %scevgep71.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 4
  %70 = load i8, i8* %scevgep71.4, align 1
  %conv84.i.4 = zext i8 %70 to i32
  %scevgep75.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 4
  %71 = load i8, i8* %scevgep75.4, align 1
  %conv89.i.4 = zext i8 %71 to i32
  %xor90.i.4 = xor i32 %conv84.i.4, %conv89.i.4
  %conv91.i.4 = trunc i32 %xor90.i.4 to i8
  %scevgep78.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 4
  store i8 %conv91.i.4, i8* %scevgep78.4, align 1
  %scevgep61 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 1, i64 0
  %72 = bitcast i8* %scevgep61 to [5 x [5 x i8]]*
  %scevgep65 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 1, i64 0
  %73 = bitcast i8* %scevgep65 to [5 x [5 x i8]]*
  %scevgep69 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %74 = bitcast i8* %scevgep69 to [5 x [5 x i8]]*
  %scevgep73 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %75 = bitcast i8* %scevgep73 to [5 x [5 x i8]]*
  %scevgep77 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 1, i64 0
  %76 = bitcast i8* %scevgep77 to [5 x [5 x i8]]*
  %arrayidx56.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %arrayidx70.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %scevgep59.1109 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 0
  %77 = load i8, i8* %scevgep59.1109, align 1
  %conv44.i.1110 = zext i8 %77 to i32
  %scevgep62.1111 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %72, i64 0, i64 0, i64 0
  %78 = load i8, i8* %scevgep62.1111, align 1
  %conv49.i.1112 = zext i8 %78 to i32
  %xor.i.1113 = xor i32 %conv44.i.1110, %conv49.i.1112
  %conv50.i.1114 = trunc i32 %xor.i.1113 to i8
  %scevgep66.1115 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %73, i64 0, i64 0, i64 0
  store i8 %conv50.i.1114, i8* %scevgep66.1115, align 1
  %79 = load i8, i8* %arrayidx56.i.1, align 1
  %conv57.i.1116 = zext i8 %79 to i32
  %xor58.i.1117 = xor i32 %conv57.i.1116, 1
  %conv59.i.1118 = trunc i32 %xor58.i.1117 to i8
  %scevgep63.1119 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %72, i64 0, i64 0, i64 0
  %80 = load i8, i8* %scevgep63.1119, align 1
  %call64.i.1120 = call zeroext i8 @mult(i8 zeroext %conv59.i.1118, i8 zeroext %80) #3
  %scevgep70.1121 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %74, i64 0, i64 0, i64 0
  store i8 %call64.i.1120, i8* %scevgep70.1121, align 1
  %81 = load i8, i8* %arrayidx70.i.1, align 1
  %scevgep67.1122 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %73, i64 0, i64 0, i64 0
  %82 = load i8, i8* %scevgep67.1122, align 1
  %call75.i.1123 = call zeroext i8 @mult(i8 zeroext %81, i8 zeroext %82) #3
  %scevgep74.1124 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %75, i64 0, i64 0, i64 0
  store i8 %call75.i.1123, i8* %scevgep74.1124, align 1
  %scevgep71.1125 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %74, i64 0, i64 0, i64 0
  %83 = load i8, i8* %scevgep71.1125, align 1
  %conv84.i.1126 = zext i8 %83 to i32
  %scevgep75.1127 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %75, i64 0, i64 0, i64 0
  %84 = load i8, i8* %scevgep75.1127, align 1
  %conv89.i.1128 = zext i8 %84 to i32
  %xor90.i.1129 = xor i32 %conv84.i.1126, %conv89.i.1128
  %conv91.i.1130 = trunc i32 %xor90.i.1129 to i8
  %scevgep78.1131 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %76, i64 0, i64 0, i64 0
  store i8 %conv91.i.1130, i8* %scevgep78.1131, align 1
  %scevgep59.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 2
  %85 = load i8, i8* %scevgep59.2.1, align 1
  %conv44.i.2.1 = zext i8 %85 to i32
  %scevgep62.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %72, i64 0, i64 0, i64 2
  %86 = load i8, i8* %scevgep62.2.1, align 1
  %conv49.i.2.1 = zext i8 %86 to i32
  %xor.i.2.1 = xor i32 %conv44.i.2.1, %conv49.i.2.1
  %conv50.i.2.1 = trunc i32 %xor.i.2.1 to i8
  %scevgep66.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %73, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.1, i8* %scevgep66.2.1, align 1
  %87 = load i8, i8* %arrayidx56.i.1, align 1
  %conv57.i.2.1 = zext i8 %87 to i32
  %xor58.i.2.1 = xor i32 %conv57.i.2.1, 1
  %conv59.i.2.1 = trunc i32 %xor58.i.2.1 to i8
  %scevgep63.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %72, i64 0, i64 0, i64 2
  %88 = load i8, i8* %scevgep63.2.1, align 1
  %call64.i.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.1, i8 zeroext %88) #3
  %scevgep70.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %74, i64 0, i64 0, i64 2
  store i8 %call64.i.2.1, i8* %scevgep70.2.1, align 1
  %89 = load i8, i8* %arrayidx70.i.1, align 1
  %scevgep67.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %73, i64 0, i64 0, i64 2
  %90 = load i8, i8* %scevgep67.2.1, align 1
  %call75.i.2.1 = call zeroext i8 @mult(i8 zeroext %89, i8 zeroext %90) #3
  %scevgep74.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %75, i64 0, i64 0, i64 2
  store i8 %call75.i.2.1, i8* %scevgep74.2.1, align 1
  %scevgep71.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %74, i64 0, i64 0, i64 2
  %91 = load i8, i8* %scevgep71.2.1, align 1
  %conv84.i.2.1 = zext i8 %91 to i32
  %scevgep75.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %75, i64 0, i64 0, i64 2
  %92 = load i8, i8* %scevgep75.2.1, align 1
  %conv89.i.2.1 = zext i8 %92 to i32
  %xor90.i.2.1 = xor i32 %conv84.i.2.1, %conv89.i.2.1
  %conv91.i.2.1 = trunc i32 %xor90.i.2.1 to i8
  %scevgep78.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %76, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.1, i8* %scevgep78.2.1, align 1
  %scevgep59.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 3
  %93 = load i8, i8* %scevgep59.3.1, align 1
  %conv44.i.3.1 = zext i8 %93 to i32
  %scevgep62.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %72, i64 0, i64 0, i64 3
  %94 = load i8, i8* %scevgep62.3.1, align 1
  %conv49.i.3.1 = zext i8 %94 to i32
  %xor.i.3.1 = xor i32 %conv44.i.3.1, %conv49.i.3.1
  %conv50.i.3.1 = trunc i32 %xor.i.3.1 to i8
  %scevgep66.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %73, i64 0, i64 0, i64 3
  store i8 %conv50.i.3.1, i8* %scevgep66.3.1, align 1
  %95 = load i8, i8* %arrayidx56.i.1, align 1
  %conv57.i.3.1 = zext i8 %95 to i32
  %xor58.i.3.1 = xor i32 %conv57.i.3.1, 1
  %conv59.i.3.1 = trunc i32 %xor58.i.3.1 to i8
  %scevgep63.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %72, i64 0, i64 0, i64 3
  %96 = load i8, i8* %scevgep63.3.1, align 1
  %call64.i.3.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.3.1, i8 zeroext %96) #3
  %scevgep70.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %74, i64 0, i64 0, i64 3
  store i8 %call64.i.3.1, i8* %scevgep70.3.1, align 1
  %97 = load i8, i8* %arrayidx70.i.1, align 1
  %scevgep67.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %73, i64 0, i64 0, i64 3
  %98 = load i8, i8* %scevgep67.3.1, align 1
  %call75.i.3.1 = call zeroext i8 @mult(i8 zeroext %97, i8 zeroext %98) #3
  %scevgep74.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %75, i64 0, i64 0, i64 3
  store i8 %call75.i.3.1, i8* %scevgep74.3.1, align 1
  %scevgep71.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %74, i64 0, i64 0, i64 3
  %99 = load i8, i8* %scevgep71.3.1, align 1
  %conv84.i.3.1 = zext i8 %99 to i32
  %scevgep75.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %75, i64 0, i64 0, i64 3
  %100 = load i8, i8* %scevgep75.3.1, align 1
  %conv89.i.3.1 = zext i8 %100 to i32
  %xor90.i.3.1 = xor i32 %conv84.i.3.1, %conv89.i.3.1
  %conv91.i.3.1 = trunc i32 %xor90.i.3.1 to i8
  %scevgep78.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %76, i64 0, i64 0, i64 3
  store i8 %conv91.i.3.1, i8* %scevgep78.3.1, align 1
  %scevgep59.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 4
  %101 = load i8, i8* %scevgep59.4.1, align 1
  %conv44.i.4.1 = zext i8 %101 to i32
  %scevgep62.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %72, i64 0, i64 0, i64 4
  %102 = load i8, i8* %scevgep62.4.1, align 1
  %conv49.i.4.1 = zext i8 %102 to i32
  %xor.i.4.1 = xor i32 %conv44.i.4.1, %conv49.i.4.1
  %conv50.i.4.1 = trunc i32 %xor.i.4.1 to i8
  %scevgep66.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %73, i64 0, i64 0, i64 4
  store i8 %conv50.i.4.1, i8* %scevgep66.4.1, align 1
  %103 = load i8, i8* %arrayidx56.i.1, align 1
  %conv57.i.4.1 = zext i8 %103 to i32
  %xor58.i.4.1 = xor i32 %conv57.i.4.1, 1
  %conv59.i.4.1 = trunc i32 %xor58.i.4.1 to i8
  %scevgep63.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %72, i64 0, i64 0, i64 4
  %104 = load i8, i8* %scevgep63.4.1, align 1
  %call64.i.4.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.4.1, i8 zeroext %104) #3
  %scevgep70.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %74, i64 0, i64 0, i64 4
  store i8 %call64.i.4.1, i8* %scevgep70.4.1, align 1
  %105 = load i8, i8* %arrayidx70.i.1, align 1
  %scevgep67.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %73, i64 0, i64 0, i64 4
  %106 = load i8, i8* %scevgep67.4.1, align 1
  %call75.i.4.1 = call zeroext i8 @mult(i8 zeroext %105, i8 zeroext %106) #3
  %scevgep74.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %75, i64 0, i64 0, i64 4
  store i8 %call75.i.4.1, i8* %scevgep74.4.1, align 1
  %scevgep71.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %74, i64 0, i64 0, i64 4
  %107 = load i8, i8* %scevgep71.4.1, align 1
  %conv84.i.4.1 = zext i8 %107 to i32
  %scevgep75.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %75, i64 0, i64 0, i64 4
  %108 = load i8, i8* %scevgep75.4.1, align 1
  %conv89.i.4.1 = zext i8 %108 to i32
  %xor90.i.4.1 = xor i32 %conv84.i.4.1, %conv89.i.4.1
  %conv91.i.4.1 = trunc i32 %xor90.i.4.1 to i8
  %scevgep78.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %76, i64 0, i64 0, i64 4
  store i8 %conv91.i.4.1, i8* %scevgep78.4.1, align 1
  %scevgep61.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %72, i64 0, i64 1, i64 0
  %109 = bitcast i8* %scevgep61.1 to [5 x [5 x i8]]*
  %scevgep65.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %73, i64 0, i64 1, i64 0
  %110 = bitcast i8* %scevgep65.1 to [5 x [5 x i8]]*
  %scevgep69.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %74, i64 0, i64 1, i64 0
  %111 = bitcast i8* %scevgep69.1 to [5 x [5 x i8]]*
  %scevgep73.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %75, i64 0, i64 1, i64 0
  %112 = bitcast i8* %scevgep73.1 to [5 x [5 x i8]]*
  %scevgep77.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %76, i64 0, i64 1, i64 0
  %113 = bitcast i8* %scevgep77.1 to [5 x [5 x i8]]*
  %arrayidx56.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %arrayidx70.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %scevgep59.2136 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 0
  %114 = load i8, i8* %scevgep59.2136, align 1
  %conv44.i.2137 = zext i8 %114 to i32
  %scevgep62.2138 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %109, i64 0, i64 0, i64 0
  %115 = load i8, i8* %scevgep62.2138, align 1
  %conv49.i.2139 = zext i8 %115 to i32
  %xor.i.2140 = xor i32 %conv44.i.2137, %conv49.i.2139
  %conv50.i.2141 = trunc i32 %xor.i.2140 to i8
  %scevgep66.2142 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %110, i64 0, i64 0, i64 0
  store i8 %conv50.i.2141, i8* %scevgep66.2142, align 1
  %116 = load i8, i8* %arrayidx56.i.2, align 1
  %conv57.i.2143 = zext i8 %116 to i32
  %xor58.i.2144 = xor i32 %conv57.i.2143, 1
  %conv59.i.2145 = trunc i32 %xor58.i.2144 to i8
  %scevgep63.2146 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %109, i64 0, i64 0, i64 0
  %117 = load i8, i8* %scevgep63.2146, align 1
  %call64.i.2147 = call zeroext i8 @mult(i8 zeroext %conv59.i.2145, i8 zeroext %117) #3
  %scevgep70.2148 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %111, i64 0, i64 0, i64 0
  store i8 %call64.i.2147, i8* %scevgep70.2148, align 1
  %118 = load i8, i8* %arrayidx70.i.2, align 1
  %scevgep67.2149 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %110, i64 0, i64 0, i64 0
  %119 = load i8, i8* %scevgep67.2149, align 1
  %call75.i.2150 = call zeroext i8 @mult(i8 zeroext %118, i8 zeroext %119) #3
  %scevgep74.2151 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %112, i64 0, i64 0, i64 0
  store i8 %call75.i.2150, i8* %scevgep74.2151, align 1
  %scevgep71.2152 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %111, i64 0, i64 0, i64 0
  %120 = load i8, i8* %scevgep71.2152, align 1
  %conv84.i.2153 = zext i8 %120 to i32
  %scevgep75.2154 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %112, i64 0, i64 0, i64 0
  %121 = load i8, i8* %scevgep75.2154, align 1
  %conv89.i.2155 = zext i8 %121 to i32
  %xor90.i.2156 = xor i32 %conv84.i.2153, %conv89.i.2155
  %conv91.i.2157 = trunc i32 %xor90.i.2156 to i8
  %scevgep78.2158 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %113, i64 0, i64 0, i64 0
  store i8 %conv91.i.2157, i8* %scevgep78.2158, align 1
  %scevgep59.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 1
  %122 = load i8, i8* %scevgep59.1.2, align 1
  %conv44.i.1.2 = zext i8 %122 to i32
  %scevgep62.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %109, i64 0, i64 0, i64 1
  %123 = load i8, i8* %scevgep62.1.2, align 1
  %conv49.i.1.2 = zext i8 %123 to i32
  %xor.i.1.2 = xor i32 %conv44.i.1.2, %conv49.i.1.2
  %conv50.i.1.2 = trunc i32 %xor.i.1.2 to i8
  %scevgep66.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %110, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.2, i8* %scevgep66.1.2, align 1
  %124 = load i8, i8* %arrayidx56.i.2, align 1
  %conv57.i.1.2 = zext i8 %124 to i32
  %xor58.i.1.2 = xor i32 %conv57.i.1.2, 1
  %conv59.i.1.2 = trunc i32 %xor58.i.1.2 to i8
  %scevgep63.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %109, i64 0, i64 0, i64 1
  %125 = load i8, i8* %scevgep63.1.2, align 1
  %call64.i.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.2, i8 zeroext %125) #3
  %scevgep70.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %111, i64 0, i64 0, i64 1
  store i8 %call64.i.1.2, i8* %scevgep70.1.2, align 1
  %126 = load i8, i8* %arrayidx70.i.2, align 1
  %scevgep67.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %110, i64 0, i64 0, i64 1
  %127 = load i8, i8* %scevgep67.1.2, align 1
  %call75.i.1.2 = call zeroext i8 @mult(i8 zeroext %126, i8 zeroext %127) #3
  %scevgep74.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %112, i64 0, i64 0, i64 1
  store i8 %call75.i.1.2, i8* %scevgep74.1.2, align 1
  %scevgep71.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %111, i64 0, i64 0, i64 1
  %128 = load i8, i8* %scevgep71.1.2, align 1
  %conv84.i.1.2 = zext i8 %128 to i32
  %scevgep75.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %112, i64 0, i64 0, i64 1
  %129 = load i8, i8* %scevgep75.1.2, align 1
  %conv89.i.1.2 = zext i8 %129 to i32
  %xor90.i.1.2 = xor i32 %conv84.i.1.2, %conv89.i.1.2
  %conv91.i.1.2 = trunc i32 %xor90.i.1.2 to i8
  %scevgep78.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %113, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.2, i8* %scevgep78.1.2, align 1
  %scevgep59.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 3
  %130 = load i8, i8* %scevgep59.3.2, align 1
  %conv44.i.3.2 = zext i8 %130 to i32
  %scevgep62.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %109, i64 0, i64 0, i64 3
  %131 = load i8, i8* %scevgep62.3.2, align 1
  %conv49.i.3.2 = zext i8 %131 to i32
  %xor.i.3.2 = xor i32 %conv44.i.3.2, %conv49.i.3.2
  %conv50.i.3.2 = trunc i32 %xor.i.3.2 to i8
  %scevgep66.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %110, i64 0, i64 0, i64 3
  store i8 %conv50.i.3.2, i8* %scevgep66.3.2, align 1
  %132 = load i8, i8* %arrayidx56.i.2, align 1
  %conv57.i.3.2 = zext i8 %132 to i32
  %xor58.i.3.2 = xor i32 %conv57.i.3.2, 1
  %conv59.i.3.2 = trunc i32 %xor58.i.3.2 to i8
  %scevgep63.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %109, i64 0, i64 0, i64 3
  %133 = load i8, i8* %scevgep63.3.2, align 1
  %call64.i.3.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.3.2, i8 zeroext %133) #3
  %scevgep70.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %111, i64 0, i64 0, i64 3
  store i8 %call64.i.3.2, i8* %scevgep70.3.2, align 1
  %134 = load i8, i8* %arrayidx70.i.2, align 1
  %scevgep67.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %110, i64 0, i64 0, i64 3
  %135 = load i8, i8* %scevgep67.3.2, align 1
  %call75.i.3.2 = call zeroext i8 @mult(i8 zeroext %134, i8 zeroext %135) #3
  %scevgep74.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %112, i64 0, i64 0, i64 3
  store i8 %call75.i.3.2, i8* %scevgep74.3.2, align 1
  %scevgep71.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %111, i64 0, i64 0, i64 3
  %136 = load i8, i8* %scevgep71.3.2, align 1
  %conv84.i.3.2 = zext i8 %136 to i32
  %scevgep75.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %112, i64 0, i64 0, i64 3
  %137 = load i8, i8* %scevgep75.3.2, align 1
  %conv89.i.3.2 = zext i8 %137 to i32
  %xor90.i.3.2 = xor i32 %conv84.i.3.2, %conv89.i.3.2
  %conv91.i.3.2 = trunc i32 %xor90.i.3.2 to i8
  %scevgep78.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %113, i64 0, i64 0, i64 3
  store i8 %conv91.i.3.2, i8* %scevgep78.3.2, align 1
  %scevgep59.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 4
  %138 = load i8, i8* %scevgep59.4.2, align 1
  %conv44.i.4.2 = zext i8 %138 to i32
  %scevgep62.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %109, i64 0, i64 0, i64 4
  %139 = load i8, i8* %scevgep62.4.2, align 1
  %conv49.i.4.2 = zext i8 %139 to i32
  %xor.i.4.2 = xor i32 %conv44.i.4.2, %conv49.i.4.2
  %conv50.i.4.2 = trunc i32 %xor.i.4.2 to i8
  %scevgep66.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %110, i64 0, i64 0, i64 4
  store i8 %conv50.i.4.2, i8* %scevgep66.4.2, align 1
  %140 = load i8, i8* %arrayidx56.i.2, align 1
  %conv57.i.4.2 = zext i8 %140 to i32
  %xor58.i.4.2 = xor i32 %conv57.i.4.2, 1
  %conv59.i.4.2 = trunc i32 %xor58.i.4.2 to i8
  %scevgep63.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %109, i64 0, i64 0, i64 4
  %141 = load i8, i8* %scevgep63.4.2, align 1
  %call64.i.4.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.4.2, i8 zeroext %141) #3
  %scevgep70.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %111, i64 0, i64 0, i64 4
  store i8 %call64.i.4.2, i8* %scevgep70.4.2, align 1
  %142 = load i8, i8* %arrayidx70.i.2, align 1
  %scevgep67.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %110, i64 0, i64 0, i64 4
  %143 = load i8, i8* %scevgep67.4.2, align 1
  %call75.i.4.2 = call zeroext i8 @mult(i8 zeroext %142, i8 zeroext %143) #3
  %scevgep74.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %112, i64 0, i64 0, i64 4
  store i8 %call75.i.4.2, i8* %scevgep74.4.2, align 1
  %scevgep71.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %111, i64 0, i64 0, i64 4
  %144 = load i8, i8* %scevgep71.4.2, align 1
  %conv84.i.4.2 = zext i8 %144 to i32
  %scevgep75.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %112, i64 0, i64 0, i64 4
  %145 = load i8, i8* %scevgep75.4.2, align 1
  %conv89.i.4.2 = zext i8 %145 to i32
  %xor90.i.4.2 = xor i32 %conv84.i.4.2, %conv89.i.4.2
  %conv91.i.4.2 = trunc i32 %xor90.i.4.2 to i8
  %scevgep78.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %113, i64 0, i64 0, i64 4
  store i8 %conv91.i.4.2, i8* %scevgep78.4.2, align 1
  %scevgep61.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %109, i64 0, i64 1, i64 0
  %146 = bitcast i8* %scevgep61.2 to [5 x [5 x i8]]*
  %scevgep65.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %110, i64 0, i64 1, i64 0
  %147 = bitcast i8* %scevgep65.2 to [5 x [5 x i8]]*
  %scevgep69.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %111, i64 0, i64 1, i64 0
  %148 = bitcast i8* %scevgep69.2 to [5 x [5 x i8]]*
  %scevgep73.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %112, i64 0, i64 1, i64 0
  %149 = bitcast i8* %scevgep73.2 to [5 x [5 x i8]]*
  %scevgep77.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %113, i64 0, i64 1, i64 0
  %150 = bitcast i8* %scevgep77.2 to [5 x [5 x i8]]*
  %arrayidx56.i.3 = getelementptr inbounds i8, i8* %x, i64 3
  %arrayidx70.i.3 = getelementptr inbounds i8, i8* %x, i64 3
  %scevgep59.3163 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 0
  %151 = load i8, i8* %scevgep59.3163, align 1
  %conv44.i.3164 = zext i8 %151 to i32
  %scevgep62.3165 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %146, i64 0, i64 0, i64 0
  %152 = load i8, i8* %scevgep62.3165, align 1
  %conv49.i.3166 = zext i8 %152 to i32
  %xor.i.3167 = xor i32 %conv44.i.3164, %conv49.i.3166
  %conv50.i.3168 = trunc i32 %xor.i.3167 to i8
  %scevgep66.3169 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %147, i64 0, i64 0, i64 0
  store i8 %conv50.i.3168, i8* %scevgep66.3169, align 1
  %153 = load i8, i8* %arrayidx56.i.3, align 1
  %conv57.i.3170 = zext i8 %153 to i32
  %xor58.i.3171 = xor i32 %conv57.i.3170, 1
  %conv59.i.3172 = trunc i32 %xor58.i.3171 to i8
  %scevgep63.3173 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %146, i64 0, i64 0, i64 0
  %154 = load i8, i8* %scevgep63.3173, align 1
  %call64.i.3174 = call zeroext i8 @mult(i8 zeroext %conv59.i.3172, i8 zeroext %154) #3
  %scevgep70.3175 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %148, i64 0, i64 0, i64 0
  store i8 %call64.i.3174, i8* %scevgep70.3175, align 1
  %155 = load i8, i8* %arrayidx70.i.3, align 1
  %scevgep67.3176 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %147, i64 0, i64 0, i64 0
  %156 = load i8, i8* %scevgep67.3176, align 1
  %call75.i.3177 = call zeroext i8 @mult(i8 zeroext %155, i8 zeroext %156) #3
  %scevgep74.3178 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %149, i64 0, i64 0, i64 0
  store i8 %call75.i.3177, i8* %scevgep74.3178, align 1
  %scevgep71.3179 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %148, i64 0, i64 0, i64 0
  %157 = load i8, i8* %scevgep71.3179, align 1
  %conv84.i.3180 = zext i8 %157 to i32
  %scevgep75.3181 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %149, i64 0, i64 0, i64 0
  %158 = load i8, i8* %scevgep75.3181, align 1
  %conv89.i.3182 = zext i8 %158 to i32
  %xor90.i.3183 = xor i32 %conv84.i.3180, %conv89.i.3182
  %conv91.i.3184 = trunc i32 %xor90.i.3183 to i8
  %scevgep78.3185 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %150, i64 0, i64 0, i64 0
  store i8 %conv91.i.3184, i8* %scevgep78.3185, align 1
  %scevgep59.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 1
  %159 = load i8, i8* %scevgep59.1.3, align 1
  %conv44.i.1.3 = zext i8 %159 to i32
  %scevgep62.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %146, i64 0, i64 0, i64 1
  %160 = load i8, i8* %scevgep62.1.3, align 1
  %conv49.i.1.3 = zext i8 %160 to i32
  %xor.i.1.3 = xor i32 %conv44.i.1.3, %conv49.i.1.3
  %conv50.i.1.3 = trunc i32 %xor.i.1.3 to i8
  %scevgep66.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %147, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.3, i8* %scevgep66.1.3, align 1
  %161 = load i8, i8* %arrayidx56.i.3, align 1
  %conv57.i.1.3 = zext i8 %161 to i32
  %xor58.i.1.3 = xor i32 %conv57.i.1.3, 1
  %conv59.i.1.3 = trunc i32 %xor58.i.1.3 to i8
  %scevgep63.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %146, i64 0, i64 0, i64 1
  %162 = load i8, i8* %scevgep63.1.3, align 1
  %call64.i.1.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.3, i8 zeroext %162) #3
  %scevgep70.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %148, i64 0, i64 0, i64 1
  store i8 %call64.i.1.3, i8* %scevgep70.1.3, align 1
  %163 = load i8, i8* %arrayidx70.i.3, align 1
  %scevgep67.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %147, i64 0, i64 0, i64 1
  %164 = load i8, i8* %scevgep67.1.3, align 1
  %call75.i.1.3 = call zeroext i8 @mult(i8 zeroext %163, i8 zeroext %164) #3
  %scevgep74.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %149, i64 0, i64 0, i64 1
  store i8 %call75.i.1.3, i8* %scevgep74.1.3, align 1
  %scevgep71.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %148, i64 0, i64 0, i64 1
  %165 = load i8, i8* %scevgep71.1.3, align 1
  %conv84.i.1.3 = zext i8 %165 to i32
  %scevgep75.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %149, i64 0, i64 0, i64 1
  %166 = load i8, i8* %scevgep75.1.3, align 1
  %conv89.i.1.3 = zext i8 %166 to i32
  %xor90.i.1.3 = xor i32 %conv84.i.1.3, %conv89.i.1.3
  %conv91.i.1.3 = trunc i32 %xor90.i.1.3 to i8
  %scevgep78.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %150, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.3, i8* %scevgep78.1.3, align 1
  %scevgep59.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 2
  %167 = load i8, i8* %scevgep59.2.3, align 1
  %conv44.i.2.3 = zext i8 %167 to i32
  %scevgep62.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %146, i64 0, i64 0, i64 2
  %168 = load i8, i8* %scevgep62.2.3, align 1
  %conv49.i.2.3 = zext i8 %168 to i32
  %xor.i.2.3 = xor i32 %conv44.i.2.3, %conv49.i.2.3
  %conv50.i.2.3 = trunc i32 %xor.i.2.3 to i8
  %scevgep66.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %147, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.3, i8* %scevgep66.2.3, align 1
  %169 = load i8, i8* %arrayidx56.i.3, align 1
  %conv57.i.2.3 = zext i8 %169 to i32
  %xor58.i.2.3 = xor i32 %conv57.i.2.3, 1
  %conv59.i.2.3 = trunc i32 %xor58.i.2.3 to i8
  %scevgep63.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %146, i64 0, i64 0, i64 2
  %170 = load i8, i8* %scevgep63.2.3, align 1
  %call64.i.2.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.3, i8 zeroext %170) #3
  %scevgep70.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %148, i64 0, i64 0, i64 2
  store i8 %call64.i.2.3, i8* %scevgep70.2.3, align 1
  %171 = load i8, i8* %arrayidx70.i.3, align 1
  %scevgep67.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %147, i64 0, i64 0, i64 2
  %172 = load i8, i8* %scevgep67.2.3, align 1
  %call75.i.2.3 = call zeroext i8 @mult(i8 zeroext %171, i8 zeroext %172) #3
  %scevgep74.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %149, i64 0, i64 0, i64 2
  store i8 %call75.i.2.3, i8* %scevgep74.2.3, align 1
  %scevgep71.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %148, i64 0, i64 0, i64 2
  %173 = load i8, i8* %scevgep71.2.3, align 1
  %conv84.i.2.3 = zext i8 %173 to i32
  %scevgep75.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %149, i64 0, i64 0, i64 2
  %174 = load i8, i8* %scevgep75.2.3, align 1
  %conv89.i.2.3 = zext i8 %174 to i32
  %xor90.i.2.3 = xor i32 %conv84.i.2.3, %conv89.i.2.3
  %conv91.i.2.3 = trunc i32 %xor90.i.2.3 to i8
  %scevgep78.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %150, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.3, i8* %scevgep78.2.3, align 1
  %scevgep59.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 4
  %175 = load i8, i8* %scevgep59.4.3, align 1
  %conv44.i.4.3 = zext i8 %175 to i32
  %scevgep62.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %146, i64 0, i64 0, i64 4
  %176 = load i8, i8* %scevgep62.4.3, align 1
  %conv49.i.4.3 = zext i8 %176 to i32
  %xor.i.4.3 = xor i32 %conv44.i.4.3, %conv49.i.4.3
  %conv50.i.4.3 = trunc i32 %xor.i.4.3 to i8
  %scevgep66.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %147, i64 0, i64 0, i64 4
  store i8 %conv50.i.4.3, i8* %scevgep66.4.3, align 1
  %177 = load i8, i8* %arrayidx56.i.3, align 1
  %conv57.i.4.3 = zext i8 %177 to i32
  %xor58.i.4.3 = xor i32 %conv57.i.4.3, 1
  %conv59.i.4.3 = trunc i32 %xor58.i.4.3 to i8
  %scevgep63.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %146, i64 0, i64 0, i64 4
  %178 = load i8, i8* %scevgep63.4.3, align 1
  %call64.i.4.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.4.3, i8 zeroext %178) #3
  %scevgep70.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %148, i64 0, i64 0, i64 4
  store i8 %call64.i.4.3, i8* %scevgep70.4.3, align 1
  %179 = load i8, i8* %arrayidx70.i.3, align 1
  %scevgep67.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %147, i64 0, i64 0, i64 4
  %180 = load i8, i8* %scevgep67.4.3, align 1
  %call75.i.4.3 = call zeroext i8 @mult(i8 zeroext %179, i8 zeroext %180) #3
  %scevgep74.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %149, i64 0, i64 0, i64 4
  store i8 %call75.i.4.3, i8* %scevgep74.4.3, align 1
  %scevgep71.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %148, i64 0, i64 0, i64 4
  %181 = load i8, i8* %scevgep71.4.3, align 1
  %conv84.i.4.3 = zext i8 %181 to i32
  %scevgep75.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %149, i64 0, i64 0, i64 4
  %182 = load i8, i8* %scevgep75.4.3, align 1
  %conv89.i.4.3 = zext i8 %182 to i32
  %xor90.i.4.3 = xor i32 %conv84.i.4.3, %conv89.i.4.3
  %conv91.i.4.3 = trunc i32 %xor90.i.4.3 to i8
  %scevgep78.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %150, i64 0, i64 0, i64 4
  store i8 %conv91.i.4.3, i8* %scevgep78.4.3, align 1
  %scevgep61.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %146, i64 0, i64 1, i64 0
  %183 = bitcast i8* %scevgep61.3 to [5 x [5 x i8]]*
  %scevgep65.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %147, i64 0, i64 1, i64 0
  %184 = bitcast i8* %scevgep65.3 to [5 x [5 x i8]]*
  %scevgep69.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %148, i64 0, i64 1, i64 0
  %185 = bitcast i8* %scevgep69.3 to [5 x [5 x i8]]*
  %scevgep73.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %149, i64 0, i64 1, i64 0
  %186 = bitcast i8* %scevgep73.3 to [5 x [5 x i8]]*
  %scevgep77.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %150, i64 0, i64 1, i64 0
  %187 = bitcast i8* %scevgep77.3 to [5 x [5 x i8]]*
  %arrayidx56.i.4 = getelementptr inbounds i8, i8* %x, i64 4
  %arrayidx70.i.4 = getelementptr inbounds i8, i8* %x, i64 4
  %scevgep59.4190 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 0
  %188 = load i8, i8* %scevgep59.4190, align 1
  %conv44.i.4191 = zext i8 %188 to i32
  %scevgep62.4192 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %183, i64 0, i64 0, i64 0
  %189 = load i8, i8* %scevgep62.4192, align 1
  %conv49.i.4193 = zext i8 %189 to i32
  %xor.i.4194 = xor i32 %conv44.i.4191, %conv49.i.4193
  %conv50.i.4195 = trunc i32 %xor.i.4194 to i8
  %scevgep66.4196 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %184, i64 0, i64 0, i64 0
  store i8 %conv50.i.4195, i8* %scevgep66.4196, align 1
  %190 = load i8, i8* %arrayidx56.i.4, align 1
  %conv57.i.4197 = zext i8 %190 to i32
  %xor58.i.4198 = xor i32 %conv57.i.4197, 1
  %conv59.i.4199 = trunc i32 %xor58.i.4198 to i8
  %scevgep63.4200 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %183, i64 0, i64 0, i64 0
  %191 = load i8, i8* %scevgep63.4200, align 1
  %call64.i.4201 = call zeroext i8 @mult(i8 zeroext %conv59.i.4199, i8 zeroext %191) #3
  %scevgep70.4202 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %185, i64 0, i64 0, i64 0
  store i8 %call64.i.4201, i8* %scevgep70.4202, align 1
  %192 = load i8, i8* %arrayidx70.i.4, align 1
  %scevgep67.4203 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %184, i64 0, i64 0, i64 0
  %193 = load i8, i8* %scevgep67.4203, align 1
  %call75.i.4204 = call zeroext i8 @mult(i8 zeroext %192, i8 zeroext %193) #3
  %scevgep74.4205 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %186, i64 0, i64 0, i64 0
  store i8 %call75.i.4204, i8* %scevgep74.4205, align 1
  %scevgep71.4206 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %185, i64 0, i64 0, i64 0
  %194 = load i8, i8* %scevgep71.4206, align 1
  %conv84.i.4207 = zext i8 %194 to i32
  %scevgep75.4208 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %186, i64 0, i64 0, i64 0
  %195 = load i8, i8* %scevgep75.4208, align 1
  %conv89.i.4209 = zext i8 %195 to i32
  %xor90.i.4210 = xor i32 %conv84.i.4207, %conv89.i.4209
  %conv91.i.4211 = trunc i32 %xor90.i.4210 to i8
  %scevgep78.4212 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %187, i64 0, i64 0, i64 0
  store i8 %conv91.i.4211, i8* %scevgep78.4212, align 1
  %scevgep59.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 1
  %196 = load i8, i8* %scevgep59.1.4, align 1
  %conv44.i.1.4 = zext i8 %196 to i32
  %scevgep62.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %183, i64 0, i64 0, i64 1
  %197 = load i8, i8* %scevgep62.1.4, align 1
  %conv49.i.1.4 = zext i8 %197 to i32
  %xor.i.1.4 = xor i32 %conv44.i.1.4, %conv49.i.1.4
  %conv50.i.1.4 = trunc i32 %xor.i.1.4 to i8
  %scevgep66.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %184, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.4, i8* %scevgep66.1.4, align 1
  %198 = load i8, i8* %arrayidx56.i.4, align 1
  %conv57.i.1.4 = zext i8 %198 to i32
  %xor58.i.1.4 = xor i32 %conv57.i.1.4, 1
  %conv59.i.1.4 = trunc i32 %xor58.i.1.4 to i8
  %scevgep63.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %183, i64 0, i64 0, i64 1
  %199 = load i8, i8* %scevgep63.1.4, align 1
  %call64.i.1.4 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.4, i8 zeroext %199) #3
  %scevgep70.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %185, i64 0, i64 0, i64 1
  store i8 %call64.i.1.4, i8* %scevgep70.1.4, align 1
  %200 = load i8, i8* %arrayidx70.i.4, align 1
  %scevgep67.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %184, i64 0, i64 0, i64 1
  %201 = load i8, i8* %scevgep67.1.4, align 1
  %call75.i.1.4 = call zeroext i8 @mult(i8 zeroext %200, i8 zeroext %201) #3
  %scevgep74.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %186, i64 0, i64 0, i64 1
  store i8 %call75.i.1.4, i8* %scevgep74.1.4, align 1
  %scevgep71.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %185, i64 0, i64 0, i64 1
  %202 = load i8, i8* %scevgep71.1.4, align 1
  %conv84.i.1.4 = zext i8 %202 to i32
  %scevgep75.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %186, i64 0, i64 0, i64 1
  %203 = load i8, i8* %scevgep75.1.4, align 1
  %conv89.i.1.4 = zext i8 %203 to i32
  %xor90.i.1.4 = xor i32 %conv84.i.1.4, %conv89.i.1.4
  %conv91.i.1.4 = trunc i32 %xor90.i.1.4 to i8
  %scevgep78.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %187, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.4, i8* %scevgep78.1.4, align 1
  %scevgep59.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 2
  %204 = load i8, i8* %scevgep59.2.4, align 1
  %conv44.i.2.4 = zext i8 %204 to i32
  %scevgep62.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %183, i64 0, i64 0, i64 2
  %205 = load i8, i8* %scevgep62.2.4, align 1
  %conv49.i.2.4 = zext i8 %205 to i32
  %xor.i.2.4 = xor i32 %conv44.i.2.4, %conv49.i.2.4
  %conv50.i.2.4 = trunc i32 %xor.i.2.4 to i8
  %scevgep66.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %184, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.4, i8* %scevgep66.2.4, align 1
  %206 = load i8, i8* %arrayidx56.i.4, align 1
  %conv57.i.2.4 = zext i8 %206 to i32
  %xor58.i.2.4 = xor i32 %conv57.i.2.4, 1
  %conv59.i.2.4 = trunc i32 %xor58.i.2.4 to i8
  %scevgep63.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %183, i64 0, i64 0, i64 2
  %207 = load i8, i8* %scevgep63.2.4, align 1
  %call64.i.2.4 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.4, i8 zeroext %207) #3
  %scevgep70.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %185, i64 0, i64 0, i64 2
  store i8 %call64.i.2.4, i8* %scevgep70.2.4, align 1
  %208 = load i8, i8* %arrayidx70.i.4, align 1
  %scevgep67.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %184, i64 0, i64 0, i64 2
  %209 = load i8, i8* %scevgep67.2.4, align 1
  %call75.i.2.4 = call zeroext i8 @mult(i8 zeroext %208, i8 zeroext %209) #3
  %scevgep74.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %186, i64 0, i64 0, i64 2
  store i8 %call75.i.2.4, i8* %scevgep74.2.4, align 1
  %scevgep71.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %185, i64 0, i64 0, i64 2
  %210 = load i8, i8* %scevgep71.2.4, align 1
  %conv84.i.2.4 = zext i8 %210 to i32
  %scevgep75.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %186, i64 0, i64 0, i64 2
  %211 = load i8, i8* %scevgep75.2.4, align 1
  %conv89.i.2.4 = zext i8 %211 to i32
  %xor90.i.2.4 = xor i32 %conv84.i.2.4, %conv89.i.2.4
  %conv91.i.2.4 = trunc i32 %xor90.i.2.4 to i8
  %scevgep78.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %187, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.4, i8* %scevgep78.2.4, align 1
  %scevgep59.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 3
  %212 = load i8, i8* %scevgep59.3.4, align 1
  %conv44.i.3.4 = zext i8 %212 to i32
  %scevgep62.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %183, i64 0, i64 0, i64 3
  %213 = load i8, i8* %scevgep62.3.4, align 1
  %conv49.i.3.4 = zext i8 %213 to i32
  %xor.i.3.4 = xor i32 %conv44.i.3.4, %conv49.i.3.4
  %conv50.i.3.4 = trunc i32 %xor.i.3.4 to i8
  %scevgep66.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %184, i64 0, i64 0, i64 3
  store i8 %conv50.i.3.4, i8* %scevgep66.3.4, align 1
  %214 = load i8, i8* %arrayidx56.i.4, align 1
  %conv57.i.3.4 = zext i8 %214 to i32
  %xor58.i.3.4 = xor i32 %conv57.i.3.4, 1
  %conv59.i.3.4 = trunc i32 %xor58.i.3.4 to i8
  %scevgep63.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %183, i64 0, i64 0, i64 3
  %215 = load i8, i8* %scevgep63.3.4, align 1
  %call64.i.3.4 = call zeroext i8 @mult(i8 zeroext %conv59.i.3.4, i8 zeroext %215) #3
  %scevgep70.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %185, i64 0, i64 0, i64 3
  store i8 %call64.i.3.4, i8* %scevgep70.3.4, align 1
  %216 = load i8, i8* %arrayidx70.i.4, align 1
  %scevgep67.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %184, i64 0, i64 0, i64 3
  %217 = load i8, i8* %scevgep67.3.4, align 1
  %call75.i.3.4 = call zeroext i8 @mult(i8 zeroext %216, i8 zeroext %217) #3
  %scevgep74.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %186, i64 0, i64 0, i64 3
  store i8 %call75.i.3.4, i8* %scevgep74.3.4, align 1
  %scevgep71.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %185, i64 0, i64 0, i64 3
  %218 = load i8, i8* %scevgep71.3.4, align 1
  %conv84.i.3.4 = zext i8 %218 to i32
  %scevgep75.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %186, i64 0, i64 0, i64 3
  %219 = load i8, i8* %scevgep75.3.4, align 1
  %conv89.i.3.4 = zext i8 %219 to i32
  %xor90.i.3.4 = xor i32 %conv84.i.3.4, %conv89.i.3.4
  %conv91.i.3.4 = trunc i32 %xor90.i.3.4 to i8
  %scevgep78.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %187, i64 0, i64 0, i64 3
  store i8 %conv91.i.3.4, i8* %scevgep78.3.4, align 1
  %220 = load i8, i8* %x, align 1
  %221 = load i8, i8* %arraydecay7, align 1
  %call111.i = call zeroext i8 @mult(i8 zeroext %220, i8 zeroext %221) #3
  store i8 %call111.i, i8* %arraydecay10, align 1
  %scevgep89.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 1
  %222 = load i8, i8* %scevgep89.1, align 1
  %conv126.i.1 = zext i8 %222 to i32
  %223 = load i8, i8* %arraydecay10, align 1
  %conv129.i.1 = zext i8 %223 to i32
  %xor130.i.1 = xor i32 %conv129.i.1, %conv126.i.1
  %conv131.i.1 = trunc i32 %xor130.i.1 to i8
  store i8 %conv131.i.1, i8* %arraydecay10, align 1
  %scevgep89.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 2
  %224 = load i8, i8* %scevgep89.2, align 1
  %conv126.i.2 = zext i8 %224 to i32
  %225 = load i8, i8* %arraydecay10, align 1
  %conv129.i.2 = zext i8 %225 to i32
  %xor130.i.2 = xor i32 %conv129.i.2, %conv126.i.2
  %conv131.i.2 = trunc i32 %xor130.i.2 to i8
  store i8 %conv131.i.2, i8* %arraydecay10, align 1
  %scevgep89.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 3
  %226 = load i8, i8* %scevgep89.3, align 1
  %conv126.i.3 = zext i8 %226 to i32
  %227 = load i8, i8* %arraydecay10, align 1
  %conv129.i.3 = zext i8 %227 to i32
  %xor130.i.3 = xor i32 %conv129.i.3, %conv126.i.3
  %conv131.i.3 = trunc i32 %xor130.i.3 to i8
  store i8 %conv131.i.3, i8* %arraydecay10, align 1
  %scevgep89.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 4
  %228 = load i8, i8* %scevgep89.4, align 1
  %conv126.i.4 = zext i8 %228 to i32
  %229 = load i8, i8* %arraydecay10, align 1
  %conv129.i.4 = zext i8 %229 to i32
  %xor130.i.4 = xor i32 %conv129.i.4, %conv126.i.4
  %conv131.i.4 = trunc i32 %xor130.i.4 to i8
  store i8 %conv131.i.4, i8* %arraydecay10, align 1
  %scevgep88 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 1, i64 0
  %230 = bitcast i8* %scevgep88 to [5 x [5 x i8]]*
  %arrayidx108.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %231 = load i8, i8* %arrayidx108.i.1, align 1
  %arrayidx110.i.1 = getelementptr inbounds i8, i8* %arraydecay7, i64 1
  %232 = load i8, i8* %arrayidx110.i.1, align 1
  %call111.i.1 = call zeroext i8 @mult(i8 zeroext %231, i8 zeroext %232) #3
  %arrayidx113.i.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  store i8 %call111.i.1, i8* %arrayidx113.i.1, align 1
  %arrayidx128.i.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %scevgep89.1217 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %230, i64 0, i64 0, i64 0
  %233 = load i8, i8* %scevgep89.1217, align 1
  %conv126.i.1218 = zext i8 %233 to i32
  %234 = load i8, i8* %arrayidx128.i.1, align 1
  %conv129.i.1219 = zext i8 %234 to i32
  %xor130.i.1220 = xor i32 %conv129.i.1219, %conv126.i.1218
  %conv131.i.1221 = trunc i32 %xor130.i.1220 to i8
  store i8 %conv131.i.1221, i8* %arrayidx128.i.1, align 1
  %scevgep89.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %230, i64 0, i64 0, i64 2
  %235 = load i8, i8* %scevgep89.2.1, align 1
  %conv126.i.2.1 = zext i8 %235 to i32
  %236 = load i8, i8* %arrayidx128.i.1, align 1
  %conv129.i.2.1 = zext i8 %236 to i32
  %xor130.i.2.1 = xor i32 %conv129.i.2.1, %conv126.i.2.1
  %conv131.i.2.1 = trunc i32 %xor130.i.2.1 to i8
  store i8 %conv131.i.2.1, i8* %arrayidx128.i.1, align 1
  %scevgep89.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %230, i64 0, i64 0, i64 3
  %237 = load i8, i8* %scevgep89.3.1, align 1
  %conv126.i.3.1 = zext i8 %237 to i32
  %238 = load i8, i8* %arrayidx128.i.1, align 1
  %conv129.i.3.1 = zext i8 %238 to i32
  %xor130.i.3.1 = xor i32 %conv129.i.3.1, %conv126.i.3.1
  %conv131.i.3.1 = trunc i32 %xor130.i.3.1 to i8
  store i8 %conv131.i.3.1, i8* %arrayidx128.i.1, align 1
  %scevgep89.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %230, i64 0, i64 0, i64 4
  %239 = load i8, i8* %scevgep89.4.1, align 1
  %conv126.i.4.1 = zext i8 %239 to i32
  %240 = load i8, i8* %arrayidx128.i.1, align 1
  %conv129.i.4.1 = zext i8 %240 to i32
  %xor130.i.4.1 = xor i32 %conv129.i.4.1, %conv126.i.4.1
  %conv131.i.4.1 = trunc i32 %xor130.i.4.1 to i8
  store i8 %conv131.i.4.1, i8* %arrayidx128.i.1, align 1
  %scevgep88.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %230, i64 0, i64 1, i64 0
  %241 = bitcast i8* %scevgep88.1 to [5 x [5 x i8]]*
  %arrayidx108.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %242 = load i8, i8* %arrayidx108.i.2, align 1
  %arrayidx110.i.2 = getelementptr inbounds i8, i8* %arraydecay7, i64 2
  %243 = load i8, i8* %arrayidx110.i.2, align 1
  %call111.i.2 = call zeroext i8 @mult(i8 zeroext %242, i8 zeroext %243) #3
  %arrayidx113.i.2 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  store i8 %call111.i.2, i8* %arrayidx113.i.2, align 1
  %arrayidx128.i.2 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  %scevgep89.2226 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %241, i64 0, i64 0, i64 0
  %244 = load i8, i8* %scevgep89.2226, align 1
  %conv126.i.2227 = zext i8 %244 to i32
  %245 = load i8, i8* %arrayidx128.i.2, align 1
  %conv129.i.2228 = zext i8 %245 to i32
  %xor130.i.2229 = xor i32 %conv129.i.2228, %conv126.i.2227
  %conv131.i.2230 = trunc i32 %xor130.i.2229 to i8
  store i8 %conv131.i.2230, i8* %arrayidx128.i.2, align 1
  %scevgep89.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %241, i64 0, i64 0, i64 1
  %246 = load i8, i8* %scevgep89.1.2, align 1
  %conv126.i.1.2 = zext i8 %246 to i32
  %247 = load i8, i8* %arrayidx128.i.2, align 1
  %conv129.i.1.2 = zext i8 %247 to i32
  %xor130.i.1.2 = xor i32 %conv129.i.1.2, %conv126.i.1.2
  %conv131.i.1.2 = trunc i32 %xor130.i.1.2 to i8
  store i8 %conv131.i.1.2, i8* %arrayidx128.i.2, align 1
  %scevgep89.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %241, i64 0, i64 0, i64 3
  %248 = load i8, i8* %scevgep89.3.2, align 1
  %conv126.i.3.2 = zext i8 %248 to i32
  %249 = load i8, i8* %arrayidx128.i.2, align 1
  %conv129.i.3.2 = zext i8 %249 to i32
  %xor130.i.3.2 = xor i32 %conv129.i.3.2, %conv126.i.3.2
  %conv131.i.3.2 = trunc i32 %xor130.i.3.2 to i8
  store i8 %conv131.i.3.2, i8* %arrayidx128.i.2, align 1
  %scevgep89.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %241, i64 0, i64 0, i64 4
  %250 = load i8, i8* %scevgep89.4.2, align 1
  %conv126.i.4.2 = zext i8 %250 to i32
  %251 = load i8, i8* %arrayidx128.i.2, align 1
  %conv129.i.4.2 = zext i8 %251 to i32
  %xor130.i.4.2 = xor i32 %conv129.i.4.2, %conv126.i.4.2
  %conv131.i.4.2 = trunc i32 %xor130.i.4.2 to i8
  store i8 %conv131.i.4.2, i8* %arrayidx128.i.2, align 1
  %scevgep88.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %241, i64 0, i64 1, i64 0
  %252 = bitcast i8* %scevgep88.2 to [5 x [5 x i8]]*
  %arrayidx108.i.3 = getelementptr inbounds i8, i8* %x, i64 3
  %253 = load i8, i8* %arrayidx108.i.3, align 1
  %arrayidx110.i.3 = getelementptr inbounds i8, i8* %arraydecay7, i64 3
  %254 = load i8, i8* %arrayidx110.i.3, align 1
  %call111.i.3 = call zeroext i8 @mult(i8 zeroext %253, i8 zeroext %254) #3
  %arrayidx113.i.3 = getelementptr inbounds i8, i8* %arraydecay10, i64 3
  store i8 %call111.i.3, i8* %arrayidx113.i.3, align 1
  %arrayidx128.i.3 = getelementptr inbounds i8, i8* %arraydecay10, i64 3
  %scevgep89.3235 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %252, i64 0, i64 0, i64 0
  %255 = load i8, i8* %scevgep89.3235, align 1
  %conv126.i.3236 = zext i8 %255 to i32
  %256 = load i8, i8* %arrayidx128.i.3, align 1
  %conv129.i.3237 = zext i8 %256 to i32
  %xor130.i.3238 = xor i32 %conv129.i.3237, %conv126.i.3236
  %conv131.i.3239 = trunc i32 %xor130.i.3238 to i8
  store i8 %conv131.i.3239, i8* %arrayidx128.i.3, align 1
  %scevgep89.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %252, i64 0, i64 0, i64 1
  %257 = load i8, i8* %scevgep89.1.3, align 1
  %conv126.i.1.3 = zext i8 %257 to i32
  %258 = load i8, i8* %arrayidx128.i.3, align 1
  %conv129.i.1.3 = zext i8 %258 to i32
  %xor130.i.1.3 = xor i32 %conv129.i.1.3, %conv126.i.1.3
  %conv131.i.1.3 = trunc i32 %xor130.i.1.3 to i8
  store i8 %conv131.i.1.3, i8* %arrayidx128.i.3, align 1
  %scevgep89.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %252, i64 0, i64 0, i64 2
  %259 = load i8, i8* %scevgep89.2.3, align 1
  %conv126.i.2.3 = zext i8 %259 to i32
  %260 = load i8, i8* %arrayidx128.i.3, align 1
  %conv129.i.2.3 = zext i8 %260 to i32
  %xor130.i.2.3 = xor i32 %conv129.i.2.3, %conv126.i.2.3
  %conv131.i.2.3 = trunc i32 %xor130.i.2.3 to i8
  store i8 %conv131.i.2.3, i8* %arrayidx128.i.3, align 1
  %scevgep89.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %252, i64 0, i64 0, i64 4
  %261 = load i8, i8* %scevgep89.4.3, align 1
  %conv126.i.4.3 = zext i8 %261 to i32
  %262 = load i8, i8* %arrayidx128.i.3, align 1
  %conv129.i.4.3 = zext i8 %262 to i32
  %xor130.i.4.3 = xor i32 %conv129.i.4.3, %conv126.i.4.3
  %conv131.i.4.3 = trunc i32 %xor130.i.4.3 to i8
  store i8 %conv131.i.4.3, i8* %arrayidx128.i.3, align 1
  %scevgep88.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %252, i64 0, i64 1, i64 0
  %263 = bitcast i8* %scevgep88.3 to [5 x [5 x i8]]*
  %arrayidx108.i.4 = getelementptr inbounds i8, i8* %x, i64 4
  %264 = load i8, i8* %arrayidx108.i.4, align 1
  %arrayidx110.i.4 = getelementptr inbounds i8, i8* %arraydecay7, i64 4
  %265 = load i8, i8* %arrayidx110.i.4, align 1
  %call111.i.4 = call zeroext i8 @mult(i8 zeroext %264, i8 zeroext %265) #3
  %arrayidx113.i.4 = getelementptr inbounds i8, i8* %arraydecay10, i64 4
  store i8 %call111.i.4, i8* %arrayidx113.i.4, align 1
  %arrayidx128.i.4 = getelementptr inbounds i8, i8* %arraydecay10, i64 4
  %scevgep89.4244 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %263, i64 0, i64 0, i64 0
  %266 = load i8, i8* %scevgep89.4244, align 1
  %conv126.i.4245 = zext i8 %266 to i32
  %267 = load i8, i8* %arrayidx128.i.4, align 1
  %conv129.i.4246 = zext i8 %267 to i32
  %xor130.i.4247 = xor i32 %conv129.i.4246, %conv126.i.4245
  %conv131.i.4248 = trunc i32 %xor130.i.4247 to i8
  store i8 %conv131.i.4248, i8* %arrayidx128.i.4, align 1
  %scevgep89.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %263, i64 0, i64 0, i64 1
  %268 = load i8, i8* %scevgep89.1.4, align 1
  %conv126.i.1.4 = zext i8 %268 to i32
  %269 = load i8, i8* %arrayidx128.i.4, align 1
  %conv129.i.1.4 = zext i8 %269 to i32
  %xor130.i.1.4 = xor i32 %conv129.i.1.4, %conv126.i.1.4
  %conv131.i.1.4 = trunc i32 %xor130.i.1.4 to i8
  store i8 %conv131.i.1.4, i8* %arrayidx128.i.4, align 1
  %scevgep89.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %263, i64 0, i64 0, i64 2
  %270 = load i8, i8* %scevgep89.2.4, align 1
  %conv126.i.2.4 = zext i8 %270 to i32
  %271 = load i8, i8* %arrayidx128.i.4, align 1
  %conv129.i.2.4 = zext i8 %271 to i32
  %xor130.i.2.4 = xor i32 %conv129.i.2.4, %conv126.i.2.4
  %conv131.i.2.4 = trunc i32 %xor130.i.2.4 to i8
  store i8 %conv131.i.2.4, i8* %arrayidx128.i.4, align 1
  %scevgep89.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %263, i64 0, i64 0, i64 3
  %272 = load i8, i8* %scevgep89.3.4, align 1
  %conv126.i.3.4 = zext i8 %272 to i32
  %273 = load i8, i8* %arrayidx128.i.4, align 1
  %conv129.i.3.4 = zext i8 %273 to i32
  %xor130.i.3.4 = xor i32 %conv129.i.3.4, %conv126.i.3.4
  %conv131.i.3.4 = trunc i32 %xor130.i.3.4 to i8
  store i8 %conv131.i.3.4, i8* %arrayidx128.i.4, align 1
  %call139.i = call zeroext i8 @mult(i8 zeroext %call.i22, i8 zeroext %call1.i) #3
  %conv140.i = zext i8 %call139.i to i32
  %scevgep95 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 0
  %scevgep96 = getelementptr i8, i8* %scevgep95, i64 5
  %274 = load i8, i8* %scevgep96, align 1
  %scevgep95.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 1
  %scevgep96.1 = getelementptr i8, i8* %scevgep95.1, i64 5
  %275 = load i8, i8* %scevgep96.1, align 1
  %conv.i.i172.i.1 = zext i8 %275 to i32
  %conv1.i.i173.i.1 = zext i8 %274 to i32
  %xor.i.i174.i.1 = xor i32 %conv1.i.i173.i.1, %conv.i.i172.i.1
  %conv2.i.i175.i.1 = trunc i32 %xor.i.i174.i.1 to i8
  %scevgep95.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 2
  %scevgep96.2 = getelementptr i8, i8* %scevgep95.2, i64 5
  %276 = load i8, i8* %scevgep96.2, align 1
  %conv.i.i172.i.2 = zext i8 %276 to i32
  %conv1.i.i173.i.2 = zext i8 %conv2.i.i175.i.1 to i32
  %xor.i.i174.i.2 = xor i32 %conv1.i.i173.i.2, %conv.i.i172.i.2
  %conv2.i.i175.i.2 = trunc i32 %xor.i.i174.i.2 to i8
  %scevgep95.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 3
  %scevgep96.3 = getelementptr i8, i8* %scevgep95.3, i64 5
  %277 = load i8, i8* %scevgep96.3, align 1
  %conv.i.i172.i.3 = zext i8 %277 to i32
  %conv1.i.i173.i.3 = zext i8 %conv2.i.i175.i.2 to i32
  %xor.i.i174.i.3 = xor i32 %conv1.i.i173.i.3, %conv.i.i172.i.3
  %conv2.i.i175.i.3 = trunc i32 %xor.i.i174.i.3 to i8
  %scevgep95.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 0, i64 4
  %scevgep96.4 = getelementptr i8, i8* %scevgep95.4, i64 5
  %278 = load i8, i8* %scevgep96.4, align 1
  %conv.i.i172.i.4 = zext i8 %278 to i32
  %conv1.i.i173.i.4 = zext i8 %conv2.i.i175.i.3 to i32
  %xor.i.i174.i.4 = xor i32 %conv1.i.i173.i.4, %conv.i.i172.i.4
  %conv2.i.i175.i.4 = trunc i32 %xor.i.i174.i.4 to i8
  %conv142.i = zext i8 %conv2.i.i175.i.4 to i32
  %cmp143.i = icmp eq i32 %conv140.i, %conv142.i
  call void @assert(i1 zeroext %cmp143.i) #3
  %scevgep34 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 1, i64 0
  %279 = bitcast i8* %scevgep34 to [5 x [5 x i8]]*
  %arrayidx6.1 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 1
  %arraydecay7.1 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx6.1, i64 0, i64 0
  %arrayidx9.1 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 2
  %arraydecay10.1 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx9.1, i64 0, i64 0
  %call.i22.1 = call zeroext i8 (...) @rand() #3
  %call1.i.1 = call zeroext i8 (...) @rand() #3
  %conv.i.1 = zext i8 %call.i22.1 to i32
  %280 = load i8, i8* %x, align 1
  %scevgep31.1.1 = getelementptr i8, i8* %x, i64 1
  %281 = load i8, i8* %scevgep31.1.1, align 1
  %conv.i.i.i.1.1 = zext i8 %281 to i32
  %conv1.i.i.i.1.1 = zext i8 %280 to i32
  %xor.i.i.i.1.1 = xor i32 %conv1.i.i.i.1.1, %conv.i.i.i.1.1
  %conv2.i.i.i.1.1 = trunc i32 %xor.i.i.i.1.1 to i8
  %scevgep31.2.1 = getelementptr i8, i8* %x, i64 2
  %282 = load i8, i8* %scevgep31.2.1, align 1
  %conv.i.i.i.2.1 = zext i8 %282 to i32
  %conv1.i.i.i.2.1 = zext i8 %conv2.i.i.i.1.1 to i32
  %xor.i.i.i.2.1 = xor i32 %conv1.i.i.i.2.1, %conv.i.i.i.2.1
  %conv2.i.i.i.2.1 = trunc i32 %xor.i.i.i.2.1 to i8
  %scevgep31.3.1 = getelementptr i8, i8* %x, i64 3
  %283 = load i8, i8* %scevgep31.3.1, align 1
  %conv.i.i.i.3.1 = zext i8 %283 to i32
  %conv1.i.i.i.3.1 = zext i8 %conv2.i.i.i.2.1 to i32
  %xor.i.i.i.3.1 = xor i32 %conv1.i.i.i.3.1, %conv.i.i.i.3.1
  %conv2.i.i.i.3.1 = trunc i32 %xor.i.i.i.3.1 to i8
  %scevgep31.4.1 = getelementptr i8, i8* %x, i64 4
  %284 = load i8, i8* %scevgep31.4.1, align 1
  %conv.i.i.i.4.1 = zext i8 %284 to i32
  %conv1.i.i.i.4.1 = zext i8 %conv2.i.i.i.3.1 to i32
  %xor.i.i.i.4.1 = xor i32 %conv1.i.i.i.4.1, %conv.i.i.i.4.1
  %conv2.i.i.i.4.1 = trunc i32 %xor.i.i.i.4.1 to i8
  %conv3.i.1 = zext i8 %conv2.i.i.i.4.1 to i32
  %cmp.i23.1 = icmp eq i32 %conv.i.1, %conv3.i.1
  call void @assume(i1 zeroext %cmp.i23.1) #3
  %conv5.i.1 = zext i8 %call1.i.1 to i32
  %scevgep37.1253 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %279, i64 0, i64 0, i64 0
  %285 = load i8, i8* %scevgep37.1253, align 1
  %scevgep37.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %279, i64 0, i64 0, i64 1
  %286 = load i8, i8* %scevgep37.1.1, align 1
  %conv.i.i155.i.1.1 = zext i8 %286 to i32
  %conv1.i.i156.i.1.1 = zext i8 %285 to i32
  %xor.i.i157.i.1.1 = xor i32 %conv1.i.i156.i.1.1, %conv.i.i155.i.1.1
  %conv2.i.i158.i.1.1 = trunc i32 %xor.i.i157.i.1.1 to i8
  %scevgep37.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %279, i64 0, i64 0, i64 2
  %287 = load i8, i8* %scevgep37.2.1, align 1
  %conv.i.i155.i.2.1 = zext i8 %287 to i32
  %conv1.i.i156.i.2.1 = zext i8 %conv2.i.i158.i.1.1 to i32
  %xor.i.i157.i.2.1 = xor i32 %conv1.i.i156.i.2.1, %conv.i.i155.i.2.1
  %conv2.i.i158.i.2.1 = trunc i32 %xor.i.i157.i.2.1 to i8
  %scevgep37.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %279, i64 0, i64 0, i64 3
  %288 = load i8, i8* %scevgep37.3.1, align 1
  %conv.i.i155.i.3.1 = zext i8 %288 to i32
  %conv1.i.i156.i.3.1 = zext i8 %conv2.i.i158.i.2.1 to i32
  %xor.i.i157.i.3.1 = xor i32 %conv1.i.i156.i.3.1, %conv.i.i155.i.3.1
  %conv2.i.i158.i.3.1 = trunc i32 %xor.i.i157.i.3.1 to i8
  %scevgep37.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %279, i64 0, i64 0, i64 4
  %289 = load i8, i8* %scevgep37.4.1, align 1
  %conv.i.i155.i.4.1 = zext i8 %289 to i32
  %conv1.i.i156.i.4.1 = zext i8 %conv2.i.i158.i.3.1 to i32
  %xor.i.i157.i.4.1 = xor i32 %conv1.i.i156.i.4.1, %conv.i.i155.i.4.1
  %conv2.i.i158.i.4.1 = trunc i32 %xor.i.i157.i.4.1 to i8
  %conv7.i.1 = zext i8 %conv2.i.i158.i.4.1 to i32
  %cmp8.i.1 = icmp eq i32 %conv5.i.1, %conv7.i.1
  call void @assume(i1 zeroext %cmp8.i.1) #3
  %call16.i.1262 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1262, i8* %scevgep39, align 1
  %290 = load i8, i8* %scevgep39, align 1
  store i8 %290, i8* %scevgep46, align 1
  %scevgep44.1264 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep3940, i64 0, i64 0, i64 1
  %291 = bitcast i8* %scevgep44.1264 to [5 x [5 x i8]]*
  %scevgep51.1265 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4647, i64 0, i64 1, i64 0
  %292 = bitcast i8* %scevgep51.1265 to [5 x [5 x i8]]*
  %call16.i.1262.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1262.1, i8* %scevgep44.1264, align 1
  %293 = load i8, i8* %scevgep44.1264, align 1
  store i8 %293, i8* %scevgep51.1265, align 1
  %scevgep44.1264.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %291, i64 0, i64 0, i64 1
  %294 = bitcast i8* %scevgep44.1264.1 to [5 x [5 x i8]]*
  %scevgep51.1265.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %292, i64 0, i64 1, i64 0
  %295 = bitcast i8* %scevgep51.1265.1 to [5 x [5 x i8]]*
  %call16.i.1262.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1262.2, i8* %scevgep44.1264.1, align 1
  %296 = load i8, i8* %scevgep44.1264.1, align 1
  store i8 %296, i8* %scevgep51.1265.1, align 1
  %scevgep44.1264.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %294, i64 0, i64 0, i64 1
  %scevgep51.1265.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %295, i64 0, i64 1, i64 0
  %call16.i.1262.3 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1262.3, i8* %scevgep44.1264.2, align 1
  %297 = load i8, i8* %scevgep44.1264.2, align 1
  store i8 %297, i8* %scevgep51.1265.2, align 1
  %scevgep42.1269 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep3940, i64 0, i64 1, i64 1
  %298 = bitcast i8* %scevgep42.1269 to [5 x [5 x i8]]*
  %scevgep49.1270 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4647, i64 0, i64 1, i64 1
  %299 = bitcast i8* %scevgep49.1270 to [5 x [5 x i8]]*
  %call16.i.1.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1.1, i8* %scevgep42.1269, align 1
  %300 = load i8, i8* %scevgep42.1269, align 1
  store i8 %300, i8* %scevgep49.1270, align 1
  %scevgep44.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %298, i64 0, i64 0, i64 1
  %301 = bitcast i8* %scevgep44.1.1 to [5 x [5 x i8]]*
  %scevgep51.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %299, i64 0, i64 1, i64 0
  %302 = bitcast i8* %scevgep51.1.1 to [5 x [5 x i8]]*
  %call16.i.1.1.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1.1.1, i8* %scevgep44.1.1, align 1
  %303 = load i8, i8* %scevgep44.1.1, align 1
  store i8 %303, i8* %scevgep51.1.1, align 1
  %scevgep44.1.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %301, i64 0, i64 0, i64 1
  %scevgep51.1.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %302, i64 0, i64 1, i64 0
  %call16.i.1.1.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1.1.2, i8* %scevgep44.1.1.1, align 1
  %304 = load i8, i8* %scevgep44.1.1.1, align 1
  store i8 %304, i8* %scevgep51.1.1.1, align 1
  %scevgep42.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %298, i64 0, i64 1, i64 1
  %305 = bitcast i8* %scevgep42.1.1 to [5 x [5 x i8]]*
  %scevgep49.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %299, i64 0, i64 1, i64 1
  %306 = bitcast i8* %scevgep49.1.1 to [5 x [5 x i8]]*
  %call16.i.2.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.2.1, i8* %scevgep42.1.1, align 1
  %307 = load i8, i8* %scevgep42.1.1, align 1
  store i8 %307, i8* %scevgep49.1.1, align 1
  %scevgep44.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %305, i64 0, i64 0, i64 1
  %scevgep51.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %306, i64 0, i64 1, i64 0
  %call16.i.2.1.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.2.1.1, i8* %scevgep44.2.1, align 1
  %308 = load i8, i8* %scevgep44.2.1, align 1
  store i8 %308, i8* %scevgep51.2.1, align 1
  %scevgep42.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %305, i64 0, i64 1, i64 1
  %scevgep49.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %306, i64 0, i64 1, i64 1
  %call16.i.3.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.3.1, i8* %scevgep42.2.1, align 1
  %309 = load i8, i8* %scevgep42.2.1, align 1
  store i8 %309, i8* %scevgep49.2.1, align 1
  %scevgep59.1.1298 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %279, i64 0, i64 0, i64 1
  %310 = load i8, i8* %scevgep59.1.1298, align 1
  %conv44.i.1.1299 = zext i8 %310 to i32
  %scevgep62.1.1300 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %311 = load i8, i8* %scevgep62.1.1300, align 1
  %conv49.i.1.1301 = zext i8 %311 to i32
  %xor.i.1.1302 = xor i32 %conv44.i.1.1299, %conv49.i.1.1301
  %conv50.i.1.1303 = trunc i32 %xor.i.1.1302 to i8
  %scevgep66.1.1304 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.1303, i8* %scevgep66.1.1304, align 1
  %312 = load i8, i8* %x, align 1
  %conv57.i.1.1305 = zext i8 %312 to i32
  %xor58.i.1.1306 = xor i32 %conv57.i.1.1305, 1
  %conv59.i.1.1307 = trunc i32 %xor58.i.1.1306 to i8
  %scevgep63.1.1308 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %313 = load i8, i8* %scevgep63.1.1308, align 1
  %call64.i.1.1309 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.1307, i8 zeroext %313) #3
  %scevgep70.1.1310 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i.1.1309, i8* %scevgep70.1.1310, align 1
  %314 = load i8, i8* %x, align 1
  %scevgep67.1.1311 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 1
  %315 = load i8, i8* %scevgep67.1.1311, align 1
  %call75.i.1.1312 = call zeroext i8 @mult(i8 zeroext %314, i8 zeroext %315) #3
  %scevgep74.1.1313 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i.1.1312, i8* %scevgep74.1.1313, align 1
  %scevgep71.1.1314 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %316 = load i8, i8* %scevgep71.1.1314, align 1
  %conv84.i.1.1315 = zext i8 %316 to i32
  %scevgep75.1.1316 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %317 = load i8, i8* %scevgep75.1.1316, align 1
  %conv89.i.1.1317 = zext i8 %317 to i32
  %xor90.i.1.1318 = xor i32 %conv84.i.1.1315, %conv89.i.1.1317
  %conv91.i.1.1319 = trunc i32 %xor90.i.1.1318 to i8
  %scevgep78.1.1320 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.1319, i8* %scevgep78.1.1320, align 1
  %scevgep59.2.1323 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %279, i64 0, i64 0, i64 2
  %318 = load i8, i8* %scevgep59.2.1323, align 1
  %conv44.i.2.1324 = zext i8 %318 to i32
  %scevgep62.2.1325 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 2
  %319 = load i8, i8* %scevgep62.2.1325, align 1
  %conv49.i.2.1326 = zext i8 %319 to i32
  %xor.i.2.1327 = xor i32 %conv44.i.2.1324, %conv49.i.2.1326
  %conv50.i.2.1328 = trunc i32 %xor.i.2.1327 to i8
  %scevgep66.2.1329 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.1328, i8* %scevgep66.2.1329, align 1
  %320 = load i8, i8* %x, align 1
  %conv57.i.2.1330 = zext i8 %320 to i32
  %xor58.i.2.1331 = xor i32 %conv57.i.2.1330, 1
  %conv59.i.2.1332 = trunc i32 %xor58.i.2.1331 to i8
  %scevgep63.2.1333 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 2
  %321 = load i8, i8* %scevgep63.2.1333, align 1
  %call64.i.2.1334 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.1332, i8 zeroext %321) #3
  %scevgep70.2.1335 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 2
  store i8 %call64.i.2.1334, i8* %scevgep70.2.1335, align 1
  %322 = load i8, i8* %x, align 1
  %scevgep67.2.1336 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 2
  %323 = load i8, i8* %scevgep67.2.1336, align 1
  %call75.i.2.1337 = call zeroext i8 @mult(i8 zeroext %322, i8 zeroext %323) #3
  %scevgep74.2.1338 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 2
  store i8 %call75.i.2.1337, i8* %scevgep74.2.1338, align 1
  %scevgep71.2.1339 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 2
  %324 = load i8, i8* %scevgep71.2.1339, align 1
  %conv84.i.2.1340 = zext i8 %324 to i32
  %scevgep75.2.1341 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 2
  %325 = load i8, i8* %scevgep75.2.1341, align 1
  %conv89.i.2.1342 = zext i8 %325 to i32
  %xor90.i.2.1343 = xor i32 %conv84.i.2.1340, %conv89.i.2.1342
  %conv91.i.2.1344 = trunc i32 %xor90.i.2.1343 to i8
  %scevgep78.2.1345 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.1344, i8* %scevgep78.2.1345, align 1
  %scevgep59.3.1348 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %279, i64 0, i64 0, i64 3
  %326 = load i8, i8* %scevgep59.3.1348, align 1
  %conv44.i.3.1349 = zext i8 %326 to i32
  %scevgep62.3.1350 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 3
  %327 = load i8, i8* %scevgep62.3.1350, align 1
  %conv49.i.3.1351 = zext i8 %327 to i32
  %xor.i.3.1352 = xor i32 %conv44.i.3.1349, %conv49.i.3.1351
  %conv50.i.3.1353 = trunc i32 %xor.i.3.1352 to i8
  %scevgep66.3.1354 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 3
  store i8 %conv50.i.3.1353, i8* %scevgep66.3.1354, align 1
  %328 = load i8, i8* %x, align 1
  %conv57.i.3.1355 = zext i8 %328 to i32
  %xor58.i.3.1356 = xor i32 %conv57.i.3.1355, 1
  %conv59.i.3.1357 = trunc i32 %xor58.i.3.1356 to i8
  %scevgep63.3.1358 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 3
  %329 = load i8, i8* %scevgep63.3.1358, align 1
  %call64.i.3.1359 = call zeroext i8 @mult(i8 zeroext %conv59.i.3.1357, i8 zeroext %329) #3
  %scevgep70.3.1360 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 3
  store i8 %call64.i.3.1359, i8* %scevgep70.3.1360, align 1
  %330 = load i8, i8* %x, align 1
  %scevgep67.3.1361 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 3
  %331 = load i8, i8* %scevgep67.3.1361, align 1
  %call75.i.3.1362 = call zeroext i8 @mult(i8 zeroext %330, i8 zeroext %331) #3
  %scevgep74.3.1363 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 3
  store i8 %call75.i.3.1362, i8* %scevgep74.3.1363, align 1
  %scevgep71.3.1364 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 3
  %332 = load i8, i8* %scevgep71.3.1364, align 1
  %conv84.i.3.1365 = zext i8 %332 to i32
  %scevgep75.3.1366 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 3
  %333 = load i8, i8* %scevgep75.3.1366, align 1
  %conv89.i.3.1367 = zext i8 %333 to i32
  %xor90.i.3.1368 = xor i32 %conv84.i.3.1365, %conv89.i.3.1367
  %conv91.i.3.1369 = trunc i32 %xor90.i.3.1368 to i8
  %scevgep78.3.1370 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 3
  store i8 %conv91.i.3.1369, i8* %scevgep78.3.1370, align 1
  %scevgep59.4.1373 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %279, i64 0, i64 0, i64 4
  %334 = load i8, i8* %scevgep59.4.1373, align 1
  %conv44.i.4.1374 = zext i8 %334 to i32
  %scevgep62.4.1375 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 4
  %335 = load i8, i8* %scevgep62.4.1375, align 1
  %conv49.i.4.1376 = zext i8 %335 to i32
  %xor.i.4.1377 = xor i32 %conv44.i.4.1374, %conv49.i.4.1376
  %conv50.i.4.1378 = trunc i32 %xor.i.4.1377 to i8
  %scevgep66.4.1379 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 4
  store i8 %conv50.i.4.1378, i8* %scevgep66.4.1379, align 1
  %336 = load i8, i8* %x, align 1
  %conv57.i.4.1380 = zext i8 %336 to i32
  %xor58.i.4.1381 = xor i32 %conv57.i.4.1380, 1
  %conv59.i.4.1382 = trunc i32 %xor58.i.4.1381 to i8
  %scevgep63.4.1383 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 4
  %337 = load i8, i8* %scevgep63.4.1383, align 1
  %call64.i.4.1384 = call zeroext i8 @mult(i8 zeroext %conv59.i.4.1382, i8 zeroext %337) #3
  %scevgep70.4.1385 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 4
  store i8 %call64.i.4.1384, i8* %scevgep70.4.1385, align 1
  %338 = load i8, i8* %x, align 1
  %scevgep67.4.1386 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 4
  %339 = load i8, i8* %scevgep67.4.1386, align 1
  %call75.i.4.1387 = call zeroext i8 @mult(i8 zeroext %338, i8 zeroext %339) #3
  %scevgep74.4.1388 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 4
  store i8 %call75.i.4.1387, i8* %scevgep74.4.1388, align 1
  %scevgep71.4.1389 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 4
  %340 = load i8, i8* %scevgep71.4.1389, align 1
  %conv84.i.4.1390 = zext i8 %340 to i32
  %scevgep75.4.1391 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 4
  %341 = load i8, i8* %scevgep75.4.1391, align 1
  %conv89.i.4.1392 = zext i8 %341 to i32
  %xor90.i.4.1393 = xor i32 %conv84.i.4.1390, %conv89.i.4.1392
  %conv91.i.4.1394 = trunc i32 %xor90.i.4.1393 to i8
  %scevgep78.4.1395 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 4
  store i8 %conv91.i.4.1394, i8* %scevgep78.4.1395, align 1
  %scevgep61.1397 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 1, i64 0
  %342 = bitcast i8* %scevgep61.1397 to [5 x [5 x i8]]*
  %scevgep65.1398 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 1, i64 0
  %343 = bitcast i8* %scevgep65.1398 to [5 x [5 x i8]]*
  %scevgep69.1399 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %344 = bitcast i8* %scevgep69.1399 to [5 x [5 x i8]]*
  %scevgep73.1400 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %345 = bitcast i8* %scevgep73.1400 to [5 x [5 x i8]]*
  %scevgep77.1401 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 1, i64 0
  %346 = bitcast i8* %scevgep77.1401 to [5 x [5 x i8]]*
  %arrayidx56.i.1.1 = getelementptr inbounds i8, i8* %x, i64 1
  %arrayidx70.i.1.1 = getelementptr inbounds i8, i8* %x, i64 1
  %scevgep59.1109.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %279, i64 0, i64 0, i64 0
  %347 = load i8, i8* %scevgep59.1109.1, align 1
  %conv44.i.1110.1 = zext i8 %347 to i32
  %scevgep62.1111.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %342, i64 0, i64 0, i64 0
  %348 = load i8, i8* %scevgep62.1111.1, align 1
  %conv49.i.1112.1 = zext i8 %348 to i32
  %xor.i.1113.1 = xor i32 %conv44.i.1110.1, %conv49.i.1112.1
  %conv50.i.1114.1 = trunc i32 %xor.i.1113.1 to i8
  %scevgep66.1115.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %343, i64 0, i64 0, i64 0
  store i8 %conv50.i.1114.1, i8* %scevgep66.1115.1, align 1
  %349 = load i8, i8* %arrayidx56.i.1.1, align 1
  %conv57.i.1116.1 = zext i8 %349 to i32
  %xor58.i.1117.1 = xor i32 %conv57.i.1116.1, 1
  %conv59.i.1118.1 = trunc i32 %xor58.i.1117.1 to i8
  %scevgep63.1119.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %342, i64 0, i64 0, i64 0
  %350 = load i8, i8* %scevgep63.1119.1, align 1
  %call64.i.1120.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.1118.1, i8 zeroext %350) #3
  %scevgep70.1121.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %344, i64 0, i64 0, i64 0
  store i8 %call64.i.1120.1, i8* %scevgep70.1121.1, align 1
  %351 = load i8, i8* %arrayidx70.i.1.1, align 1
  %scevgep67.1122.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %343, i64 0, i64 0, i64 0
  %352 = load i8, i8* %scevgep67.1122.1, align 1
  %call75.i.1123.1 = call zeroext i8 @mult(i8 zeroext %351, i8 zeroext %352) #3
  %scevgep74.1124.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %345, i64 0, i64 0, i64 0
  store i8 %call75.i.1123.1, i8* %scevgep74.1124.1, align 1
  %scevgep71.1125.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %344, i64 0, i64 0, i64 0
  %353 = load i8, i8* %scevgep71.1125.1, align 1
  %conv84.i.1126.1 = zext i8 %353 to i32
  %scevgep75.1127.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %345, i64 0, i64 0, i64 0
  %354 = load i8, i8* %scevgep75.1127.1, align 1
  %conv89.i.1128.1 = zext i8 %354 to i32
  %xor90.i.1129.1 = xor i32 %conv84.i.1126.1, %conv89.i.1128.1
  %conv91.i.1130.1 = trunc i32 %xor90.i.1129.1 to i8
  %scevgep78.1131.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %346, i64 0, i64 0, i64 0
  store i8 %conv91.i.1130.1, i8* %scevgep78.1131.1, align 1
  %scevgep59.2.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %279, i64 0, i64 0, i64 2
  %355 = load i8, i8* %scevgep59.2.1.1, align 1
  %conv44.i.2.1.1 = zext i8 %355 to i32
  %scevgep62.2.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %342, i64 0, i64 0, i64 2
  %356 = load i8, i8* %scevgep62.2.1.1, align 1
  %conv49.i.2.1.1 = zext i8 %356 to i32
  %xor.i.2.1.1 = xor i32 %conv44.i.2.1.1, %conv49.i.2.1.1
  %conv50.i.2.1.1 = trunc i32 %xor.i.2.1.1 to i8
  %scevgep66.2.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %343, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.1.1, i8* %scevgep66.2.1.1, align 1
  %357 = load i8, i8* %arrayidx56.i.1.1, align 1
  %conv57.i.2.1.1 = zext i8 %357 to i32
  %xor58.i.2.1.1 = xor i32 %conv57.i.2.1.1, 1
  %conv59.i.2.1.1 = trunc i32 %xor58.i.2.1.1 to i8
  %scevgep63.2.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %342, i64 0, i64 0, i64 2
  %358 = load i8, i8* %scevgep63.2.1.1, align 1
  %call64.i.2.1.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.1.1, i8 zeroext %358) #3
  %scevgep70.2.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %344, i64 0, i64 0, i64 2
  store i8 %call64.i.2.1.1, i8* %scevgep70.2.1.1, align 1
  %359 = load i8, i8* %arrayidx70.i.1.1, align 1
  %scevgep67.2.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %343, i64 0, i64 0, i64 2
  %360 = load i8, i8* %scevgep67.2.1.1, align 1
  %call75.i.2.1.1 = call zeroext i8 @mult(i8 zeroext %359, i8 zeroext %360) #3
  %scevgep74.2.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %345, i64 0, i64 0, i64 2
  store i8 %call75.i.2.1.1, i8* %scevgep74.2.1.1, align 1
  %scevgep71.2.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %344, i64 0, i64 0, i64 2
  %361 = load i8, i8* %scevgep71.2.1.1, align 1
  %conv84.i.2.1.1 = zext i8 %361 to i32
  %scevgep75.2.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %345, i64 0, i64 0, i64 2
  %362 = load i8, i8* %scevgep75.2.1.1, align 1
  %conv89.i.2.1.1 = zext i8 %362 to i32
  %xor90.i.2.1.1 = xor i32 %conv84.i.2.1.1, %conv89.i.2.1.1
  %conv91.i.2.1.1 = trunc i32 %xor90.i.2.1.1 to i8
  %scevgep78.2.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %346, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.1.1, i8* %scevgep78.2.1.1, align 1
  %scevgep59.3.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %279, i64 0, i64 0, i64 3
  %363 = load i8, i8* %scevgep59.3.1.1, align 1
  %conv44.i.3.1.1 = zext i8 %363 to i32
  %scevgep62.3.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %342, i64 0, i64 0, i64 3
  %364 = load i8, i8* %scevgep62.3.1.1, align 1
  %conv49.i.3.1.1 = zext i8 %364 to i32
  %xor.i.3.1.1 = xor i32 %conv44.i.3.1.1, %conv49.i.3.1.1
  %conv50.i.3.1.1 = trunc i32 %xor.i.3.1.1 to i8
  %scevgep66.3.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %343, i64 0, i64 0, i64 3
  store i8 %conv50.i.3.1.1, i8* %scevgep66.3.1.1, align 1
  %365 = load i8, i8* %arrayidx56.i.1.1, align 1
  %conv57.i.3.1.1 = zext i8 %365 to i32
  %xor58.i.3.1.1 = xor i32 %conv57.i.3.1.1, 1
  %conv59.i.3.1.1 = trunc i32 %xor58.i.3.1.1 to i8
  %scevgep63.3.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %342, i64 0, i64 0, i64 3
  %366 = load i8, i8* %scevgep63.3.1.1, align 1
  %call64.i.3.1.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.3.1.1, i8 zeroext %366) #3
  %scevgep70.3.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %344, i64 0, i64 0, i64 3
  store i8 %call64.i.3.1.1, i8* %scevgep70.3.1.1, align 1
  %367 = load i8, i8* %arrayidx70.i.1.1, align 1
  %scevgep67.3.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %343, i64 0, i64 0, i64 3
  %368 = load i8, i8* %scevgep67.3.1.1, align 1
  %call75.i.3.1.1 = call zeroext i8 @mult(i8 zeroext %367, i8 zeroext %368) #3
  %scevgep74.3.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %345, i64 0, i64 0, i64 3
  store i8 %call75.i.3.1.1, i8* %scevgep74.3.1.1, align 1
  %scevgep71.3.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %344, i64 0, i64 0, i64 3
  %369 = load i8, i8* %scevgep71.3.1.1, align 1
  %conv84.i.3.1.1 = zext i8 %369 to i32
  %scevgep75.3.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %345, i64 0, i64 0, i64 3
  %370 = load i8, i8* %scevgep75.3.1.1, align 1
  %conv89.i.3.1.1 = zext i8 %370 to i32
  %xor90.i.3.1.1 = xor i32 %conv84.i.3.1.1, %conv89.i.3.1.1
  %conv91.i.3.1.1 = trunc i32 %xor90.i.3.1.1 to i8
  %scevgep78.3.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %346, i64 0, i64 0, i64 3
  store i8 %conv91.i.3.1.1, i8* %scevgep78.3.1.1, align 1
  %scevgep59.4.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %279, i64 0, i64 0, i64 4
  %371 = load i8, i8* %scevgep59.4.1.1, align 1
  %conv44.i.4.1.1 = zext i8 %371 to i32
  %scevgep62.4.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %342, i64 0, i64 0, i64 4
  %372 = load i8, i8* %scevgep62.4.1.1, align 1
  %conv49.i.4.1.1 = zext i8 %372 to i32
  %xor.i.4.1.1 = xor i32 %conv44.i.4.1.1, %conv49.i.4.1.1
  %conv50.i.4.1.1 = trunc i32 %xor.i.4.1.1 to i8
  %scevgep66.4.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %343, i64 0, i64 0, i64 4
  store i8 %conv50.i.4.1.1, i8* %scevgep66.4.1.1, align 1
  %373 = load i8, i8* %arrayidx56.i.1.1, align 1
  %conv57.i.4.1.1 = zext i8 %373 to i32
  %xor58.i.4.1.1 = xor i32 %conv57.i.4.1.1, 1
  %conv59.i.4.1.1 = trunc i32 %xor58.i.4.1.1 to i8
  %scevgep63.4.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %342, i64 0, i64 0, i64 4
  %374 = load i8, i8* %scevgep63.4.1.1, align 1
  %call64.i.4.1.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.4.1.1, i8 zeroext %374) #3
  %scevgep70.4.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %344, i64 0, i64 0, i64 4
  store i8 %call64.i.4.1.1, i8* %scevgep70.4.1.1, align 1
  %375 = load i8, i8* %arrayidx70.i.1.1, align 1
  %scevgep67.4.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %343, i64 0, i64 0, i64 4
  %376 = load i8, i8* %scevgep67.4.1.1, align 1
  %call75.i.4.1.1 = call zeroext i8 @mult(i8 zeroext %375, i8 zeroext %376) #3
  %scevgep74.4.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %345, i64 0, i64 0, i64 4
  store i8 %call75.i.4.1.1, i8* %scevgep74.4.1.1, align 1
  %scevgep71.4.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %344, i64 0, i64 0, i64 4
  %377 = load i8, i8* %scevgep71.4.1.1, align 1
  %conv84.i.4.1.1 = zext i8 %377 to i32
  %scevgep75.4.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %345, i64 0, i64 0, i64 4
  %378 = load i8, i8* %scevgep75.4.1.1, align 1
  %conv89.i.4.1.1 = zext i8 %378 to i32
  %xor90.i.4.1.1 = xor i32 %conv84.i.4.1.1, %conv89.i.4.1.1
  %conv91.i.4.1.1 = trunc i32 %xor90.i.4.1.1 to i8
  %scevgep78.4.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %346, i64 0, i64 0, i64 4
  store i8 %conv91.i.4.1.1, i8* %scevgep78.4.1.1, align 1
  %scevgep61.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %342, i64 0, i64 1, i64 0
  %379 = bitcast i8* %scevgep61.1.1 to [5 x [5 x i8]]*
  %scevgep65.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %343, i64 0, i64 1, i64 0
  %380 = bitcast i8* %scevgep65.1.1 to [5 x [5 x i8]]*
  %scevgep69.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %344, i64 0, i64 1, i64 0
  %381 = bitcast i8* %scevgep69.1.1 to [5 x [5 x i8]]*
  %scevgep73.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %345, i64 0, i64 1, i64 0
  %382 = bitcast i8* %scevgep73.1.1 to [5 x [5 x i8]]*
  %scevgep77.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %346, i64 0, i64 1, i64 0
  %383 = bitcast i8* %scevgep77.1.1 to [5 x [5 x i8]]*
  %arrayidx56.i.2.1 = getelementptr inbounds i8, i8* %x, i64 2
  %arrayidx70.i.2.1 = getelementptr inbounds i8, i8* %x, i64 2
  %scevgep59.2136.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %279, i64 0, i64 0, i64 0
  %384 = load i8, i8* %scevgep59.2136.1, align 1
  %conv44.i.2137.1 = zext i8 %384 to i32
  %scevgep62.2138.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %379, i64 0, i64 0, i64 0
  %385 = load i8, i8* %scevgep62.2138.1, align 1
  %conv49.i.2139.1 = zext i8 %385 to i32
  %xor.i.2140.1 = xor i32 %conv44.i.2137.1, %conv49.i.2139.1
  %conv50.i.2141.1 = trunc i32 %xor.i.2140.1 to i8
  %scevgep66.2142.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %380, i64 0, i64 0, i64 0
  store i8 %conv50.i.2141.1, i8* %scevgep66.2142.1, align 1
  %386 = load i8, i8* %arrayidx56.i.2.1, align 1
  %conv57.i.2143.1 = zext i8 %386 to i32
  %xor58.i.2144.1 = xor i32 %conv57.i.2143.1, 1
  %conv59.i.2145.1 = trunc i32 %xor58.i.2144.1 to i8
  %scevgep63.2146.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %379, i64 0, i64 0, i64 0
  %387 = load i8, i8* %scevgep63.2146.1, align 1
  %call64.i.2147.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.2145.1, i8 zeroext %387) #3
  %scevgep70.2148.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %381, i64 0, i64 0, i64 0
  store i8 %call64.i.2147.1, i8* %scevgep70.2148.1, align 1
  %388 = load i8, i8* %arrayidx70.i.2.1, align 1
  %scevgep67.2149.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %380, i64 0, i64 0, i64 0
  %389 = load i8, i8* %scevgep67.2149.1, align 1
  %call75.i.2150.1 = call zeroext i8 @mult(i8 zeroext %388, i8 zeroext %389) #3
  %scevgep74.2151.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %382, i64 0, i64 0, i64 0
  store i8 %call75.i.2150.1, i8* %scevgep74.2151.1, align 1
  %scevgep71.2152.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %381, i64 0, i64 0, i64 0
  %390 = load i8, i8* %scevgep71.2152.1, align 1
  %conv84.i.2153.1 = zext i8 %390 to i32
  %scevgep75.2154.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %382, i64 0, i64 0, i64 0
  %391 = load i8, i8* %scevgep75.2154.1, align 1
  %conv89.i.2155.1 = zext i8 %391 to i32
  %xor90.i.2156.1 = xor i32 %conv84.i.2153.1, %conv89.i.2155.1
  %conv91.i.2157.1 = trunc i32 %xor90.i.2156.1 to i8
  %scevgep78.2158.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %383, i64 0, i64 0, i64 0
  store i8 %conv91.i.2157.1, i8* %scevgep78.2158.1, align 1
  %scevgep59.1.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %279, i64 0, i64 0, i64 1
  %392 = load i8, i8* %scevgep59.1.2.1, align 1
  %conv44.i.1.2.1 = zext i8 %392 to i32
  %scevgep62.1.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %379, i64 0, i64 0, i64 1
  %393 = load i8, i8* %scevgep62.1.2.1, align 1
  %conv49.i.1.2.1 = zext i8 %393 to i32
  %xor.i.1.2.1 = xor i32 %conv44.i.1.2.1, %conv49.i.1.2.1
  %conv50.i.1.2.1 = trunc i32 %xor.i.1.2.1 to i8
  %scevgep66.1.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %380, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.2.1, i8* %scevgep66.1.2.1, align 1
  %394 = load i8, i8* %arrayidx56.i.2.1, align 1
  %conv57.i.1.2.1 = zext i8 %394 to i32
  %xor58.i.1.2.1 = xor i32 %conv57.i.1.2.1, 1
  %conv59.i.1.2.1 = trunc i32 %xor58.i.1.2.1 to i8
  %scevgep63.1.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %379, i64 0, i64 0, i64 1
  %395 = load i8, i8* %scevgep63.1.2.1, align 1
  %call64.i.1.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.2.1, i8 zeroext %395) #3
  %scevgep70.1.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %381, i64 0, i64 0, i64 1
  store i8 %call64.i.1.2.1, i8* %scevgep70.1.2.1, align 1
  %396 = load i8, i8* %arrayidx70.i.2.1, align 1
  %scevgep67.1.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %380, i64 0, i64 0, i64 1
  %397 = load i8, i8* %scevgep67.1.2.1, align 1
  %call75.i.1.2.1 = call zeroext i8 @mult(i8 zeroext %396, i8 zeroext %397) #3
  %scevgep74.1.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %382, i64 0, i64 0, i64 1
  store i8 %call75.i.1.2.1, i8* %scevgep74.1.2.1, align 1
  %scevgep71.1.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %381, i64 0, i64 0, i64 1
  %398 = load i8, i8* %scevgep71.1.2.1, align 1
  %conv84.i.1.2.1 = zext i8 %398 to i32
  %scevgep75.1.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %382, i64 0, i64 0, i64 1
  %399 = load i8, i8* %scevgep75.1.2.1, align 1
  %conv89.i.1.2.1 = zext i8 %399 to i32
  %xor90.i.1.2.1 = xor i32 %conv84.i.1.2.1, %conv89.i.1.2.1
  %conv91.i.1.2.1 = trunc i32 %xor90.i.1.2.1 to i8
  %scevgep78.1.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %383, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.2.1, i8* %scevgep78.1.2.1, align 1
  %scevgep59.3.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %279, i64 0, i64 0, i64 3
  %400 = load i8, i8* %scevgep59.3.2.1, align 1
  %conv44.i.3.2.1 = zext i8 %400 to i32
  %scevgep62.3.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %379, i64 0, i64 0, i64 3
  %401 = load i8, i8* %scevgep62.3.2.1, align 1
  %conv49.i.3.2.1 = zext i8 %401 to i32
  %xor.i.3.2.1 = xor i32 %conv44.i.3.2.1, %conv49.i.3.2.1
  %conv50.i.3.2.1 = trunc i32 %xor.i.3.2.1 to i8
  %scevgep66.3.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %380, i64 0, i64 0, i64 3
  store i8 %conv50.i.3.2.1, i8* %scevgep66.3.2.1, align 1
  %402 = load i8, i8* %arrayidx56.i.2.1, align 1
  %conv57.i.3.2.1 = zext i8 %402 to i32
  %xor58.i.3.2.1 = xor i32 %conv57.i.3.2.1, 1
  %conv59.i.3.2.1 = trunc i32 %xor58.i.3.2.1 to i8
  %scevgep63.3.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %379, i64 0, i64 0, i64 3
  %403 = load i8, i8* %scevgep63.3.2.1, align 1
  %call64.i.3.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.3.2.1, i8 zeroext %403) #3
  %scevgep70.3.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %381, i64 0, i64 0, i64 3
  store i8 %call64.i.3.2.1, i8* %scevgep70.3.2.1, align 1
  %404 = load i8, i8* %arrayidx70.i.2.1, align 1
  %scevgep67.3.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %380, i64 0, i64 0, i64 3
  %405 = load i8, i8* %scevgep67.3.2.1, align 1
  %call75.i.3.2.1 = call zeroext i8 @mult(i8 zeroext %404, i8 zeroext %405) #3
  %scevgep74.3.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %382, i64 0, i64 0, i64 3
  store i8 %call75.i.3.2.1, i8* %scevgep74.3.2.1, align 1
  %scevgep71.3.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %381, i64 0, i64 0, i64 3
  %406 = load i8, i8* %scevgep71.3.2.1, align 1
  %conv84.i.3.2.1 = zext i8 %406 to i32
  %scevgep75.3.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %382, i64 0, i64 0, i64 3
  %407 = load i8, i8* %scevgep75.3.2.1, align 1
  %conv89.i.3.2.1 = zext i8 %407 to i32
  %xor90.i.3.2.1 = xor i32 %conv84.i.3.2.1, %conv89.i.3.2.1
  %conv91.i.3.2.1 = trunc i32 %xor90.i.3.2.1 to i8
  %scevgep78.3.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %383, i64 0, i64 0, i64 3
  store i8 %conv91.i.3.2.1, i8* %scevgep78.3.2.1, align 1
  %scevgep59.4.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %279, i64 0, i64 0, i64 4
  %408 = load i8, i8* %scevgep59.4.2.1, align 1
  %conv44.i.4.2.1 = zext i8 %408 to i32
  %scevgep62.4.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %379, i64 0, i64 0, i64 4
  %409 = load i8, i8* %scevgep62.4.2.1, align 1
  %conv49.i.4.2.1 = zext i8 %409 to i32
  %xor.i.4.2.1 = xor i32 %conv44.i.4.2.1, %conv49.i.4.2.1
  %conv50.i.4.2.1 = trunc i32 %xor.i.4.2.1 to i8
  %scevgep66.4.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %380, i64 0, i64 0, i64 4
  store i8 %conv50.i.4.2.1, i8* %scevgep66.4.2.1, align 1
  %410 = load i8, i8* %arrayidx56.i.2.1, align 1
  %conv57.i.4.2.1 = zext i8 %410 to i32
  %xor58.i.4.2.1 = xor i32 %conv57.i.4.2.1, 1
  %conv59.i.4.2.1 = trunc i32 %xor58.i.4.2.1 to i8
  %scevgep63.4.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %379, i64 0, i64 0, i64 4
  %411 = load i8, i8* %scevgep63.4.2.1, align 1
  %call64.i.4.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.4.2.1, i8 zeroext %411) #3
  %scevgep70.4.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %381, i64 0, i64 0, i64 4
  store i8 %call64.i.4.2.1, i8* %scevgep70.4.2.1, align 1
  %412 = load i8, i8* %arrayidx70.i.2.1, align 1
  %scevgep67.4.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %380, i64 0, i64 0, i64 4
  %413 = load i8, i8* %scevgep67.4.2.1, align 1
  %call75.i.4.2.1 = call zeroext i8 @mult(i8 zeroext %412, i8 zeroext %413) #3
  %scevgep74.4.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %382, i64 0, i64 0, i64 4
  store i8 %call75.i.4.2.1, i8* %scevgep74.4.2.1, align 1
  %scevgep71.4.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %381, i64 0, i64 0, i64 4
  %414 = load i8, i8* %scevgep71.4.2.1, align 1
  %conv84.i.4.2.1 = zext i8 %414 to i32
  %scevgep75.4.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %382, i64 0, i64 0, i64 4
  %415 = load i8, i8* %scevgep75.4.2.1, align 1
  %conv89.i.4.2.1 = zext i8 %415 to i32
  %xor90.i.4.2.1 = xor i32 %conv84.i.4.2.1, %conv89.i.4.2.1
  %conv91.i.4.2.1 = trunc i32 %xor90.i.4.2.1 to i8
  %scevgep78.4.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %383, i64 0, i64 0, i64 4
  store i8 %conv91.i.4.2.1, i8* %scevgep78.4.2.1, align 1
  %scevgep61.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %379, i64 0, i64 1, i64 0
  %416 = bitcast i8* %scevgep61.2.1 to [5 x [5 x i8]]*
  %scevgep65.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %380, i64 0, i64 1, i64 0
  %417 = bitcast i8* %scevgep65.2.1 to [5 x [5 x i8]]*
  %scevgep69.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %381, i64 0, i64 1, i64 0
  %418 = bitcast i8* %scevgep69.2.1 to [5 x [5 x i8]]*
  %scevgep73.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %382, i64 0, i64 1, i64 0
  %419 = bitcast i8* %scevgep73.2.1 to [5 x [5 x i8]]*
  %scevgep77.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %383, i64 0, i64 1, i64 0
  %420 = bitcast i8* %scevgep77.2.1 to [5 x [5 x i8]]*
  %arrayidx56.i.3.1 = getelementptr inbounds i8, i8* %x, i64 3
  %arrayidx70.i.3.1 = getelementptr inbounds i8, i8* %x, i64 3
  %scevgep59.3163.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %279, i64 0, i64 0, i64 0
  %421 = load i8, i8* %scevgep59.3163.1, align 1
  %conv44.i.3164.1 = zext i8 %421 to i32
  %scevgep62.3165.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %416, i64 0, i64 0, i64 0
  %422 = load i8, i8* %scevgep62.3165.1, align 1
  %conv49.i.3166.1 = zext i8 %422 to i32
  %xor.i.3167.1 = xor i32 %conv44.i.3164.1, %conv49.i.3166.1
  %conv50.i.3168.1 = trunc i32 %xor.i.3167.1 to i8
  %scevgep66.3169.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %417, i64 0, i64 0, i64 0
  store i8 %conv50.i.3168.1, i8* %scevgep66.3169.1, align 1
  %423 = load i8, i8* %arrayidx56.i.3.1, align 1
  %conv57.i.3170.1 = zext i8 %423 to i32
  %xor58.i.3171.1 = xor i32 %conv57.i.3170.1, 1
  %conv59.i.3172.1 = trunc i32 %xor58.i.3171.1 to i8
  %scevgep63.3173.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %416, i64 0, i64 0, i64 0
  %424 = load i8, i8* %scevgep63.3173.1, align 1
  %call64.i.3174.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.3172.1, i8 zeroext %424) #3
  %scevgep70.3175.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %418, i64 0, i64 0, i64 0
  store i8 %call64.i.3174.1, i8* %scevgep70.3175.1, align 1
  %425 = load i8, i8* %arrayidx70.i.3.1, align 1
  %scevgep67.3176.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %417, i64 0, i64 0, i64 0
  %426 = load i8, i8* %scevgep67.3176.1, align 1
  %call75.i.3177.1 = call zeroext i8 @mult(i8 zeroext %425, i8 zeroext %426) #3
  %scevgep74.3178.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %419, i64 0, i64 0, i64 0
  store i8 %call75.i.3177.1, i8* %scevgep74.3178.1, align 1
  %scevgep71.3179.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %418, i64 0, i64 0, i64 0
  %427 = load i8, i8* %scevgep71.3179.1, align 1
  %conv84.i.3180.1 = zext i8 %427 to i32
  %scevgep75.3181.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %419, i64 0, i64 0, i64 0
  %428 = load i8, i8* %scevgep75.3181.1, align 1
  %conv89.i.3182.1 = zext i8 %428 to i32
  %xor90.i.3183.1 = xor i32 %conv84.i.3180.1, %conv89.i.3182.1
  %conv91.i.3184.1 = trunc i32 %xor90.i.3183.1 to i8
  %scevgep78.3185.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %420, i64 0, i64 0, i64 0
  store i8 %conv91.i.3184.1, i8* %scevgep78.3185.1, align 1
  %scevgep59.1.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %279, i64 0, i64 0, i64 1
  %429 = load i8, i8* %scevgep59.1.3.1, align 1
  %conv44.i.1.3.1 = zext i8 %429 to i32
  %scevgep62.1.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %416, i64 0, i64 0, i64 1
  %430 = load i8, i8* %scevgep62.1.3.1, align 1
  %conv49.i.1.3.1 = zext i8 %430 to i32
  %xor.i.1.3.1 = xor i32 %conv44.i.1.3.1, %conv49.i.1.3.1
  %conv50.i.1.3.1 = trunc i32 %xor.i.1.3.1 to i8
  %scevgep66.1.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %417, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.3.1, i8* %scevgep66.1.3.1, align 1
  %431 = load i8, i8* %arrayidx56.i.3.1, align 1
  %conv57.i.1.3.1 = zext i8 %431 to i32
  %xor58.i.1.3.1 = xor i32 %conv57.i.1.3.1, 1
  %conv59.i.1.3.1 = trunc i32 %xor58.i.1.3.1 to i8
  %scevgep63.1.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %416, i64 0, i64 0, i64 1
  %432 = load i8, i8* %scevgep63.1.3.1, align 1
  %call64.i.1.3.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.3.1, i8 zeroext %432) #3
  %scevgep70.1.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %418, i64 0, i64 0, i64 1
  store i8 %call64.i.1.3.1, i8* %scevgep70.1.3.1, align 1
  %433 = load i8, i8* %arrayidx70.i.3.1, align 1
  %scevgep67.1.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %417, i64 0, i64 0, i64 1
  %434 = load i8, i8* %scevgep67.1.3.1, align 1
  %call75.i.1.3.1 = call zeroext i8 @mult(i8 zeroext %433, i8 zeroext %434) #3
  %scevgep74.1.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %419, i64 0, i64 0, i64 1
  store i8 %call75.i.1.3.1, i8* %scevgep74.1.3.1, align 1
  %scevgep71.1.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %418, i64 0, i64 0, i64 1
  %435 = load i8, i8* %scevgep71.1.3.1, align 1
  %conv84.i.1.3.1 = zext i8 %435 to i32
  %scevgep75.1.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %419, i64 0, i64 0, i64 1
  %436 = load i8, i8* %scevgep75.1.3.1, align 1
  %conv89.i.1.3.1 = zext i8 %436 to i32
  %xor90.i.1.3.1 = xor i32 %conv84.i.1.3.1, %conv89.i.1.3.1
  %conv91.i.1.3.1 = trunc i32 %xor90.i.1.3.1 to i8
  %scevgep78.1.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %420, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.3.1, i8* %scevgep78.1.3.1, align 1
  %scevgep59.2.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %279, i64 0, i64 0, i64 2
  %437 = load i8, i8* %scevgep59.2.3.1, align 1
  %conv44.i.2.3.1 = zext i8 %437 to i32
  %scevgep62.2.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %416, i64 0, i64 0, i64 2
  %438 = load i8, i8* %scevgep62.2.3.1, align 1
  %conv49.i.2.3.1 = zext i8 %438 to i32
  %xor.i.2.3.1 = xor i32 %conv44.i.2.3.1, %conv49.i.2.3.1
  %conv50.i.2.3.1 = trunc i32 %xor.i.2.3.1 to i8
  %scevgep66.2.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %417, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.3.1, i8* %scevgep66.2.3.1, align 1
  %439 = load i8, i8* %arrayidx56.i.3.1, align 1
  %conv57.i.2.3.1 = zext i8 %439 to i32
  %xor58.i.2.3.1 = xor i32 %conv57.i.2.3.1, 1
  %conv59.i.2.3.1 = trunc i32 %xor58.i.2.3.1 to i8
  %scevgep63.2.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %416, i64 0, i64 0, i64 2
  %440 = load i8, i8* %scevgep63.2.3.1, align 1
  %call64.i.2.3.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.3.1, i8 zeroext %440) #3
  %scevgep70.2.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %418, i64 0, i64 0, i64 2
  store i8 %call64.i.2.3.1, i8* %scevgep70.2.3.1, align 1
  %441 = load i8, i8* %arrayidx70.i.3.1, align 1
  %scevgep67.2.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %417, i64 0, i64 0, i64 2
  %442 = load i8, i8* %scevgep67.2.3.1, align 1
  %call75.i.2.3.1 = call zeroext i8 @mult(i8 zeroext %441, i8 zeroext %442) #3
  %scevgep74.2.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %419, i64 0, i64 0, i64 2
  store i8 %call75.i.2.3.1, i8* %scevgep74.2.3.1, align 1
  %scevgep71.2.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %418, i64 0, i64 0, i64 2
  %443 = load i8, i8* %scevgep71.2.3.1, align 1
  %conv84.i.2.3.1 = zext i8 %443 to i32
  %scevgep75.2.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %419, i64 0, i64 0, i64 2
  %444 = load i8, i8* %scevgep75.2.3.1, align 1
  %conv89.i.2.3.1 = zext i8 %444 to i32
  %xor90.i.2.3.1 = xor i32 %conv84.i.2.3.1, %conv89.i.2.3.1
  %conv91.i.2.3.1 = trunc i32 %xor90.i.2.3.1 to i8
  %scevgep78.2.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %420, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.3.1, i8* %scevgep78.2.3.1, align 1
  %scevgep59.4.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %279, i64 0, i64 0, i64 4
  %445 = load i8, i8* %scevgep59.4.3.1, align 1
  %conv44.i.4.3.1 = zext i8 %445 to i32
  %scevgep62.4.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %416, i64 0, i64 0, i64 4
  %446 = load i8, i8* %scevgep62.4.3.1, align 1
  %conv49.i.4.3.1 = zext i8 %446 to i32
  %xor.i.4.3.1 = xor i32 %conv44.i.4.3.1, %conv49.i.4.3.1
  %conv50.i.4.3.1 = trunc i32 %xor.i.4.3.1 to i8
  %scevgep66.4.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %417, i64 0, i64 0, i64 4
  store i8 %conv50.i.4.3.1, i8* %scevgep66.4.3.1, align 1
  %447 = load i8, i8* %arrayidx56.i.3.1, align 1
  %conv57.i.4.3.1 = zext i8 %447 to i32
  %xor58.i.4.3.1 = xor i32 %conv57.i.4.3.1, 1
  %conv59.i.4.3.1 = trunc i32 %xor58.i.4.3.1 to i8
  %scevgep63.4.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %416, i64 0, i64 0, i64 4
  %448 = load i8, i8* %scevgep63.4.3.1, align 1
  %call64.i.4.3.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.4.3.1, i8 zeroext %448) #3
  %scevgep70.4.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %418, i64 0, i64 0, i64 4
  store i8 %call64.i.4.3.1, i8* %scevgep70.4.3.1, align 1
  %449 = load i8, i8* %arrayidx70.i.3.1, align 1
  %scevgep67.4.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %417, i64 0, i64 0, i64 4
  %450 = load i8, i8* %scevgep67.4.3.1, align 1
  %call75.i.4.3.1 = call zeroext i8 @mult(i8 zeroext %449, i8 zeroext %450) #3
  %scevgep74.4.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %419, i64 0, i64 0, i64 4
  store i8 %call75.i.4.3.1, i8* %scevgep74.4.3.1, align 1
  %scevgep71.4.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %418, i64 0, i64 0, i64 4
  %451 = load i8, i8* %scevgep71.4.3.1, align 1
  %conv84.i.4.3.1 = zext i8 %451 to i32
  %scevgep75.4.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %419, i64 0, i64 0, i64 4
  %452 = load i8, i8* %scevgep75.4.3.1, align 1
  %conv89.i.4.3.1 = zext i8 %452 to i32
  %xor90.i.4.3.1 = xor i32 %conv84.i.4.3.1, %conv89.i.4.3.1
  %conv91.i.4.3.1 = trunc i32 %xor90.i.4.3.1 to i8
  %scevgep78.4.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %420, i64 0, i64 0, i64 4
  store i8 %conv91.i.4.3.1, i8* %scevgep78.4.3.1, align 1
  %scevgep61.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %416, i64 0, i64 1, i64 0
  %453 = bitcast i8* %scevgep61.3.1 to [5 x [5 x i8]]*
  %scevgep65.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %417, i64 0, i64 1, i64 0
  %454 = bitcast i8* %scevgep65.3.1 to [5 x [5 x i8]]*
  %scevgep69.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %418, i64 0, i64 1, i64 0
  %455 = bitcast i8* %scevgep69.3.1 to [5 x [5 x i8]]*
  %scevgep73.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %419, i64 0, i64 1, i64 0
  %456 = bitcast i8* %scevgep73.3.1 to [5 x [5 x i8]]*
  %scevgep77.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %420, i64 0, i64 1, i64 0
  %457 = bitcast i8* %scevgep77.3.1 to [5 x [5 x i8]]*
  %arrayidx56.i.4.1 = getelementptr inbounds i8, i8* %x, i64 4
  %arrayidx70.i.4.1 = getelementptr inbounds i8, i8* %x, i64 4
  %scevgep59.4190.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %279, i64 0, i64 0, i64 0
  %458 = load i8, i8* %scevgep59.4190.1, align 1
  %conv44.i.4191.1 = zext i8 %458 to i32
  %scevgep62.4192.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %453, i64 0, i64 0, i64 0
  %459 = load i8, i8* %scevgep62.4192.1, align 1
  %conv49.i.4193.1 = zext i8 %459 to i32
  %xor.i.4194.1 = xor i32 %conv44.i.4191.1, %conv49.i.4193.1
  %conv50.i.4195.1 = trunc i32 %xor.i.4194.1 to i8
  %scevgep66.4196.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %454, i64 0, i64 0, i64 0
  store i8 %conv50.i.4195.1, i8* %scevgep66.4196.1, align 1
  %460 = load i8, i8* %arrayidx56.i.4.1, align 1
  %conv57.i.4197.1 = zext i8 %460 to i32
  %xor58.i.4198.1 = xor i32 %conv57.i.4197.1, 1
  %conv59.i.4199.1 = trunc i32 %xor58.i.4198.1 to i8
  %scevgep63.4200.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %453, i64 0, i64 0, i64 0
  %461 = load i8, i8* %scevgep63.4200.1, align 1
  %call64.i.4201.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.4199.1, i8 zeroext %461) #3
  %scevgep70.4202.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %455, i64 0, i64 0, i64 0
  store i8 %call64.i.4201.1, i8* %scevgep70.4202.1, align 1
  %462 = load i8, i8* %arrayidx70.i.4.1, align 1
  %scevgep67.4203.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %454, i64 0, i64 0, i64 0
  %463 = load i8, i8* %scevgep67.4203.1, align 1
  %call75.i.4204.1 = call zeroext i8 @mult(i8 zeroext %462, i8 zeroext %463) #3
  %scevgep74.4205.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %456, i64 0, i64 0, i64 0
  store i8 %call75.i.4204.1, i8* %scevgep74.4205.1, align 1
  %scevgep71.4206.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %455, i64 0, i64 0, i64 0
  %464 = load i8, i8* %scevgep71.4206.1, align 1
  %conv84.i.4207.1 = zext i8 %464 to i32
  %scevgep75.4208.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %456, i64 0, i64 0, i64 0
  %465 = load i8, i8* %scevgep75.4208.1, align 1
  %conv89.i.4209.1 = zext i8 %465 to i32
  %xor90.i.4210.1 = xor i32 %conv84.i.4207.1, %conv89.i.4209.1
  %conv91.i.4211.1 = trunc i32 %xor90.i.4210.1 to i8
  %scevgep78.4212.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %457, i64 0, i64 0, i64 0
  store i8 %conv91.i.4211.1, i8* %scevgep78.4212.1, align 1
  %scevgep59.1.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %279, i64 0, i64 0, i64 1
  %466 = load i8, i8* %scevgep59.1.4.1, align 1
  %conv44.i.1.4.1 = zext i8 %466 to i32
  %scevgep62.1.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %453, i64 0, i64 0, i64 1
  %467 = load i8, i8* %scevgep62.1.4.1, align 1
  %conv49.i.1.4.1 = zext i8 %467 to i32
  %xor.i.1.4.1 = xor i32 %conv44.i.1.4.1, %conv49.i.1.4.1
  %conv50.i.1.4.1 = trunc i32 %xor.i.1.4.1 to i8
  %scevgep66.1.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %454, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.4.1, i8* %scevgep66.1.4.1, align 1
  %468 = load i8, i8* %arrayidx56.i.4.1, align 1
  %conv57.i.1.4.1 = zext i8 %468 to i32
  %xor58.i.1.4.1 = xor i32 %conv57.i.1.4.1, 1
  %conv59.i.1.4.1 = trunc i32 %xor58.i.1.4.1 to i8
  %scevgep63.1.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %453, i64 0, i64 0, i64 1
  %469 = load i8, i8* %scevgep63.1.4.1, align 1
  %call64.i.1.4.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.4.1, i8 zeroext %469) #3
  %scevgep70.1.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %455, i64 0, i64 0, i64 1
  store i8 %call64.i.1.4.1, i8* %scevgep70.1.4.1, align 1
  %470 = load i8, i8* %arrayidx70.i.4.1, align 1
  %scevgep67.1.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %454, i64 0, i64 0, i64 1
  %471 = load i8, i8* %scevgep67.1.4.1, align 1
  %call75.i.1.4.1 = call zeroext i8 @mult(i8 zeroext %470, i8 zeroext %471) #3
  %scevgep74.1.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %456, i64 0, i64 0, i64 1
  store i8 %call75.i.1.4.1, i8* %scevgep74.1.4.1, align 1
  %scevgep71.1.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %455, i64 0, i64 0, i64 1
  %472 = load i8, i8* %scevgep71.1.4.1, align 1
  %conv84.i.1.4.1 = zext i8 %472 to i32
  %scevgep75.1.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %456, i64 0, i64 0, i64 1
  %473 = load i8, i8* %scevgep75.1.4.1, align 1
  %conv89.i.1.4.1 = zext i8 %473 to i32
  %xor90.i.1.4.1 = xor i32 %conv84.i.1.4.1, %conv89.i.1.4.1
  %conv91.i.1.4.1 = trunc i32 %xor90.i.1.4.1 to i8
  %scevgep78.1.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %457, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.4.1, i8* %scevgep78.1.4.1, align 1
  %scevgep59.2.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %279, i64 0, i64 0, i64 2
  %474 = load i8, i8* %scevgep59.2.4.1, align 1
  %conv44.i.2.4.1 = zext i8 %474 to i32
  %scevgep62.2.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %453, i64 0, i64 0, i64 2
  %475 = load i8, i8* %scevgep62.2.4.1, align 1
  %conv49.i.2.4.1 = zext i8 %475 to i32
  %xor.i.2.4.1 = xor i32 %conv44.i.2.4.1, %conv49.i.2.4.1
  %conv50.i.2.4.1 = trunc i32 %xor.i.2.4.1 to i8
  %scevgep66.2.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %454, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.4.1, i8* %scevgep66.2.4.1, align 1
  %476 = load i8, i8* %arrayidx56.i.4.1, align 1
  %conv57.i.2.4.1 = zext i8 %476 to i32
  %xor58.i.2.4.1 = xor i32 %conv57.i.2.4.1, 1
  %conv59.i.2.4.1 = trunc i32 %xor58.i.2.4.1 to i8
  %scevgep63.2.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %453, i64 0, i64 0, i64 2
  %477 = load i8, i8* %scevgep63.2.4.1, align 1
  %call64.i.2.4.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.4.1, i8 zeroext %477) #3
  %scevgep70.2.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %455, i64 0, i64 0, i64 2
  store i8 %call64.i.2.4.1, i8* %scevgep70.2.4.1, align 1
  %478 = load i8, i8* %arrayidx70.i.4.1, align 1
  %scevgep67.2.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %454, i64 0, i64 0, i64 2
  %479 = load i8, i8* %scevgep67.2.4.1, align 1
  %call75.i.2.4.1 = call zeroext i8 @mult(i8 zeroext %478, i8 zeroext %479) #3
  %scevgep74.2.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %456, i64 0, i64 0, i64 2
  store i8 %call75.i.2.4.1, i8* %scevgep74.2.4.1, align 1
  %scevgep71.2.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %455, i64 0, i64 0, i64 2
  %480 = load i8, i8* %scevgep71.2.4.1, align 1
  %conv84.i.2.4.1 = zext i8 %480 to i32
  %scevgep75.2.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %456, i64 0, i64 0, i64 2
  %481 = load i8, i8* %scevgep75.2.4.1, align 1
  %conv89.i.2.4.1 = zext i8 %481 to i32
  %xor90.i.2.4.1 = xor i32 %conv84.i.2.4.1, %conv89.i.2.4.1
  %conv91.i.2.4.1 = trunc i32 %xor90.i.2.4.1 to i8
  %scevgep78.2.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %457, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.4.1, i8* %scevgep78.2.4.1, align 1
  %scevgep59.3.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %279, i64 0, i64 0, i64 3
  %482 = load i8, i8* %scevgep59.3.4.1, align 1
  %conv44.i.3.4.1 = zext i8 %482 to i32
  %scevgep62.3.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %453, i64 0, i64 0, i64 3
  %483 = load i8, i8* %scevgep62.3.4.1, align 1
  %conv49.i.3.4.1 = zext i8 %483 to i32
  %xor.i.3.4.1 = xor i32 %conv44.i.3.4.1, %conv49.i.3.4.1
  %conv50.i.3.4.1 = trunc i32 %xor.i.3.4.1 to i8
  %scevgep66.3.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %454, i64 0, i64 0, i64 3
  store i8 %conv50.i.3.4.1, i8* %scevgep66.3.4.1, align 1
  %484 = load i8, i8* %arrayidx56.i.4.1, align 1
  %conv57.i.3.4.1 = zext i8 %484 to i32
  %xor58.i.3.4.1 = xor i32 %conv57.i.3.4.1, 1
  %conv59.i.3.4.1 = trunc i32 %xor58.i.3.4.1 to i8
  %scevgep63.3.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %453, i64 0, i64 0, i64 3
  %485 = load i8, i8* %scevgep63.3.4.1, align 1
  %call64.i.3.4.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.3.4.1, i8 zeroext %485) #3
  %scevgep70.3.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %455, i64 0, i64 0, i64 3
  store i8 %call64.i.3.4.1, i8* %scevgep70.3.4.1, align 1
  %486 = load i8, i8* %arrayidx70.i.4.1, align 1
  %scevgep67.3.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %454, i64 0, i64 0, i64 3
  %487 = load i8, i8* %scevgep67.3.4.1, align 1
  %call75.i.3.4.1 = call zeroext i8 @mult(i8 zeroext %486, i8 zeroext %487) #3
  %scevgep74.3.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %456, i64 0, i64 0, i64 3
  store i8 %call75.i.3.4.1, i8* %scevgep74.3.4.1, align 1
  %scevgep71.3.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %455, i64 0, i64 0, i64 3
  %488 = load i8, i8* %scevgep71.3.4.1, align 1
  %conv84.i.3.4.1 = zext i8 %488 to i32
  %scevgep75.3.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %456, i64 0, i64 0, i64 3
  %489 = load i8, i8* %scevgep75.3.4.1, align 1
  %conv89.i.3.4.1 = zext i8 %489 to i32
  %xor90.i.3.4.1 = xor i32 %conv84.i.3.4.1, %conv89.i.3.4.1
  %conv91.i.3.4.1 = trunc i32 %xor90.i.3.4.1 to i8
  %scevgep78.3.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %457, i64 0, i64 0, i64 3
  store i8 %conv91.i.3.4.1, i8* %scevgep78.3.4.1, align 1
  %490 = load i8, i8* %x, align 1
  %491 = load i8, i8* %arraydecay7.1, align 1
  %call111.i.1403 = call zeroext i8 @mult(i8 zeroext %490, i8 zeroext %491) #3
  store i8 %call111.i.1403, i8* %arraydecay10.1, align 1
  %scevgep89.1.1412 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 1
  %492 = load i8, i8* %scevgep89.1.1412, align 1
  %conv126.i.1.1413 = zext i8 %492 to i32
  %493 = load i8, i8* %arraydecay10.1, align 1
  %conv129.i.1.1414 = zext i8 %493 to i32
  %xor130.i.1.1415 = xor i32 %conv129.i.1.1414, %conv126.i.1.1413
  %conv131.i.1.1416 = trunc i32 %xor130.i.1.1415 to i8
  store i8 %conv131.i.1.1416, i8* %arraydecay10.1, align 1
  %scevgep89.2.1419 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 2
  %494 = load i8, i8* %scevgep89.2.1419, align 1
  %conv126.i.2.1420 = zext i8 %494 to i32
  %495 = load i8, i8* %arraydecay10.1, align 1
  %conv129.i.2.1421 = zext i8 %495 to i32
  %xor130.i.2.1422 = xor i32 %conv129.i.2.1421, %conv126.i.2.1420
  %conv131.i.2.1423 = trunc i32 %xor130.i.2.1422 to i8
  store i8 %conv131.i.2.1423, i8* %arraydecay10.1, align 1
  %scevgep89.3.1426 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 3
  %496 = load i8, i8* %scevgep89.3.1426, align 1
  %conv126.i.3.1427 = zext i8 %496 to i32
  %497 = load i8, i8* %arraydecay10.1, align 1
  %conv129.i.3.1428 = zext i8 %497 to i32
  %xor130.i.3.1429 = xor i32 %conv129.i.3.1428, %conv126.i.3.1427
  %conv131.i.3.1430 = trunc i32 %xor130.i.3.1429 to i8
  store i8 %conv131.i.3.1430, i8* %arraydecay10.1, align 1
  %scevgep89.4.1433 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 4
  %498 = load i8, i8* %scevgep89.4.1433, align 1
  %conv126.i.4.1434 = zext i8 %498 to i32
  %499 = load i8, i8* %arraydecay10.1, align 1
  %conv129.i.4.1435 = zext i8 %499 to i32
  %xor130.i.4.1436 = xor i32 %conv129.i.4.1435, %conv126.i.4.1434
  %conv131.i.4.1437 = trunc i32 %xor130.i.4.1436 to i8
  store i8 %conv131.i.4.1437, i8* %arraydecay10.1, align 1
  %scevgep88.1439 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 1, i64 0
  %500 = bitcast i8* %scevgep88.1439 to [5 x [5 x i8]]*
  %arrayidx108.i.1.1 = getelementptr inbounds i8, i8* %x, i64 1
  %501 = load i8, i8* %arrayidx108.i.1.1, align 1
  %arrayidx110.i.1.1 = getelementptr inbounds i8, i8* %arraydecay7.1, i64 1
  %502 = load i8, i8* %arrayidx110.i.1.1, align 1
  %call111.i.1.1 = call zeroext i8 @mult(i8 zeroext %501, i8 zeroext %502) #3
  %arrayidx113.i.1.1 = getelementptr inbounds i8, i8* %arraydecay10.1, i64 1
  store i8 %call111.i.1.1, i8* %arrayidx113.i.1.1, align 1
  %arrayidx128.i.1.1 = getelementptr inbounds i8, i8* %arraydecay10.1, i64 1
  %scevgep89.1217.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %500, i64 0, i64 0, i64 0
  %503 = load i8, i8* %scevgep89.1217.1, align 1
  %conv126.i.1218.1 = zext i8 %503 to i32
  %504 = load i8, i8* %arrayidx128.i.1.1, align 1
  %conv129.i.1219.1 = zext i8 %504 to i32
  %xor130.i.1220.1 = xor i32 %conv129.i.1219.1, %conv126.i.1218.1
  %conv131.i.1221.1 = trunc i32 %xor130.i.1220.1 to i8
  store i8 %conv131.i.1221.1, i8* %arrayidx128.i.1.1, align 1
  %scevgep89.2.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %500, i64 0, i64 0, i64 2
  %505 = load i8, i8* %scevgep89.2.1.1, align 1
  %conv126.i.2.1.1 = zext i8 %505 to i32
  %506 = load i8, i8* %arrayidx128.i.1.1, align 1
  %conv129.i.2.1.1 = zext i8 %506 to i32
  %xor130.i.2.1.1 = xor i32 %conv129.i.2.1.1, %conv126.i.2.1.1
  %conv131.i.2.1.1 = trunc i32 %xor130.i.2.1.1 to i8
  store i8 %conv131.i.2.1.1, i8* %arrayidx128.i.1.1, align 1
  %scevgep89.3.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %500, i64 0, i64 0, i64 3
  %507 = load i8, i8* %scevgep89.3.1.1, align 1
  %conv126.i.3.1.1 = zext i8 %507 to i32
  %508 = load i8, i8* %arrayidx128.i.1.1, align 1
  %conv129.i.3.1.1 = zext i8 %508 to i32
  %xor130.i.3.1.1 = xor i32 %conv129.i.3.1.1, %conv126.i.3.1.1
  %conv131.i.3.1.1 = trunc i32 %xor130.i.3.1.1 to i8
  store i8 %conv131.i.3.1.1, i8* %arrayidx128.i.1.1, align 1
  %scevgep89.4.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %500, i64 0, i64 0, i64 4
  %509 = load i8, i8* %scevgep89.4.1.1, align 1
  %conv126.i.4.1.1 = zext i8 %509 to i32
  %510 = load i8, i8* %arrayidx128.i.1.1, align 1
  %conv129.i.4.1.1 = zext i8 %510 to i32
  %xor130.i.4.1.1 = xor i32 %conv129.i.4.1.1, %conv126.i.4.1.1
  %conv131.i.4.1.1 = trunc i32 %xor130.i.4.1.1 to i8
  store i8 %conv131.i.4.1.1, i8* %arrayidx128.i.1.1, align 1
  %scevgep88.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %500, i64 0, i64 1, i64 0
  %511 = bitcast i8* %scevgep88.1.1 to [5 x [5 x i8]]*
  %arrayidx108.i.2.1 = getelementptr inbounds i8, i8* %x, i64 2
  %512 = load i8, i8* %arrayidx108.i.2.1, align 1
  %arrayidx110.i.2.1 = getelementptr inbounds i8, i8* %arraydecay7.1, i64 2
  %513 = load i8, i8* %arrayidx110.i.2.1, align 1
  %call111.i.2.1 = call zeroext i8 @mult(i8 zeroext %512, i8 zeroext %513) #3
  %arrayidx113.i.2.1 = getelementptr inbounds i8, i8* %arraydecay10.1, i64 2
  store i8 %call111.i.2.1, i8* %arrayidx113.i.2.1, align 1
  %arrayidx128.i.2.1 = getelementptr inbounds i8, i8* %arraydecay10.1, i64 2
  %scevgep89.2226.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %511, i64 0, i64 0, i64 0
  %514 = load i8, i8* %scevgep89.2226.1, align 1
  %conv126.i.2227.1 = zext i8 %514 to i32
  %515 = load i8, i8* %arrayidx128.i.2.1, align 1
  %conv129.i.2228.1 = zext i8 %515 to i32
  %xor130.i.2229.1 = xor i32 %conv129.i.2228.1, %conv126.i.2227.1
  %conv131.i.2230.1 = trunc i32 %xor130.i.2229.1 to i8
  store i8 %conv131.i.2230.1, i8* %arrayidx128.i.2.1, align 1
  %scevgep89.1.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %511, i64 0, i64 0, i64 1
  %516 = load i8, i8* %scevgep89.1.2.1, align 1
  %conv126.i.1.2.1 = zext i8 %516 to i32
  %517 = load i8, i8* %arrayidx128.i.2.1, align 1
  %conv129.i.1.2.1 = zext i8 %517 to i32
  %xor130.i.1.2.1 = xor i32 %conv129.i.1.2.1, %conv126.i.1.2.1
  %conv131.i.1.2.1 = trunc i32 %xor130.i.1.2.1 to i8
  store i8 %conv131.i.1.2.1, i8* %arrayidx128.i.2.1, align 1
  %scevgep89.3.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %511, i64 0, i64 0, i64 3
  %518 = load i8, i8* %scevgep89.3.2.1, align 1
  %conv126.i.3.2.1 = zext i8 %518 to i32
  %519 = load i8, i8* %arrayidx128.i.2.1, align 1
  %conv129.i.3.2.1 = zext i8 %519 to i32
  %xor130.i.3.2.1 = xor i32 %conv129.i.3.2.1, %conv126.i.3.2.1
  %conv131.i.3.2.1 = trunc i32 %xor130.i.3.2.1 to i8
  store i8 %conv131.i.3.2.1, i8* %arrayidx128.i.2.1, align 1
  %scevgep89.4.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %511, i64 0, i64 0, i64 4
  %520 = load i8, i8* %scevgep89.4.2.1, align 1
  %conv126.i.4.2.1 = zext i8 %520 to i32
  %521 = load i8, i8* %arrayidx128.i.2.1, align 1
  %conv129.i.4.2.1 = zext i8 %521 to i32
  %xor130.i.4.2.1 = xor i32 %conv129.i.4.2.1, %conv126.i.4.2.1
  %conv131.i.4.2.1 = trunc i32 %xor130.i.4.2.1 to i8
  store i8 %conv131.i.4.2.1, i8* %arrayidx128.i.2.1, align 1
  %scevgep88.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %511, i64 0, i64 1, i64 0
  %522 = bitcast i8* %scevgep88.2.1 to [5 x [5 x i8]]*
  %arrayidx108.i.3.1 = getelementptr inbounds i8, i8* %x, i64 3
  %523 = load i8, i8* %arrayidx108.i.3.1, align 1
  %arrayidx110.i.3.1 = getelementptr inbounds i8, i8* %arraydecay7.1, i64 3
  %524 = load i8, i8* %arrayidx110.i.3.1, align 1
  %call111.i.3.1 = call zeroext i8 @mult(i8 zeroext %523, i8 zeroext %524) #3
  %arrayidx113.i.3.1 = getelementptr inbounds i8, i8* %arraydecay10.1, i64 3
  store i8 %call111.i.3.1, i8* %arrayidx113.i.3.1, align 1
  %arrayidx128.i.3.1 = getelementptr inbounds i8, i8* %arraydecay10.1, i64 3
  %scevgep89.3235.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %522, i64 0, i64 0, i64 0
  %525 = load i8, i8* %scevgep89.3235.1, align 1
  %conv126.i.3236.1 = zext i8 %525 to i32
  %526 = load i8, i8* %arrayidx128.i.3.1, align 1
  %conv129.i.3237.1 = zext i8 %526 to i32
  %xor130.i.3238.1 = xor i32 %conv129.i.3237.1, %conv126.i.3236.1
  %conv131.i.3239.1 = trunc i32 %xor130.i.3238.1 to i8
  store i8 %conv131.i.3239.1, i8* %arrayidx128.i.3.1, align 1
  %scevgep89.1.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %522, i64 0, i64 0, i64 1
  %527 = load i8, i8* %scevgep89.1.3.1, align 1
  %conv126.i.1.3.1 = zext i8 %527 to i32
  %528 = load i8, i8* %arrayidx128.i.3.1, align 1
  %conv129.i.1.3.1 = zext i8 %528 to i32
  %xor130.i.1.3.1 = xor i32 %conv129.i.1.3.1, %conv126.i.1.3.1
  %conv131.i.1.3.1 = trunc i32 %xor130.i.1.3.1 to i8
  store i8 %conv131.i.1.3.1, i8* %arrayidx128.i.3.1, align 1
  %scevgep89.2.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %522, i64 0, i64 0, i64 2
  %529 = load i8, i8* %scevgep89.2.3.1, align 1
  %conv126.i.2.3.1 = zext i8 %529 to i32
  %530 = load i8, i8* %arrayidx128.i.3.1, align 1
  %conv129.i.2.3.1 = zext i8 %530 to i32
  %xor130.i.2.3.1 = xor i32 %conv129.i.2.3.1, %conv126.i.2.3.1
  %conv131.i.2.3.1 = trunc i32 %xor130.i.2.3.1 to i8
  store i8 %conv131.i.2.3.1, i8* %arrayidx128.i.3.1, align 1
  %scevgep89.4.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %522, i64 0, i64 0, i64 4
  %531 = load i8, i8* %scevgep89.4.3.1, align 1
  %conv126.i.4.3.1 = zext i8 %531 to i32
  %532 = load i8, i8* %arrayidx128.i.3.1, align 1
  %conv129.i.4.3.1 = zext i8 %532 to i32
  %xor130.i.4.3.1 = xor i32 %conv129.i.4.3.1, %conv126.i.4.3.1
  %conv131.i.4.3.1 = trunc i32 %xor130.i.4.3.1 to i8
  store i8 %conv131.i.4.3.1, i8* %arrayidx128.i.3.1, align 1
  %scevgep88.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %522, i64 0, i64 1, i64 0
  %533 = bitcast i8* %scevgep88.3.1 to [5 x [5 x i8]]*
  %arrayidx108.i.4.1 = getelementptr inbounds i8, i8* %x, i64 4
  %534 = load i8, i8* %arrayidx108.i.4.1, align 1
  %arrayidx110.i.4.1 = getelementptr inbounds i8, i8* %arraydecay7.1, i64 4
  %535 = load i8, i8* %arrayidx110.i.4.1, align 1
  %call111.i.4.1 = call zeroext i8 @mult(i8 zeroext %534, i8 zeroext %535) #3
  %arrayidx113.i.4.1 = getelementptr inbounds i8, i8* %arraydecay10.1, i64 4
  store i8 %call111.i.4.1, i8* %arrayidx113.i.4.1, align 1
  %arrayidx128.i.4.1 = getelementptr inbounds i8, i8* %arraydecay10.1, i64 4
  %scevgep89.4244.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %533, i64 0, i64 0, i64 0
  %536 = load i8, i8* %scevgep89.4244.1, align 1
  %conv126.i.4245.1 = zext i8 %536 to i32
  %537 = load i8, i8* %arrayidx128.i.4.1, align 1
  %conv129.i.4246.1 = zext i8 %537 to i32
  %xor130.i.4247.1 = xor i32 %conv129.i.4246.1, %conv126.i.4245.1
  %conv131.i.4248.1 = trunc i32 %xor130.i.4247.1 to i8
  store i8 %conv131.i.4248.1, i8* %arrayidx128.i.4.1, align 1
  %scevgep89.1.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %533, i64 0, i64 0, i64 1
  %538 = load i8, i8* %scevgep89.1.4.1, align 1
  %conv126.i.1.4.1 = zext i8 %538 to i32
  %539 = load i8, i8* %arrayidx128.i.4.1, align 1
  %conv129.i.1.4.1 = zext i8 %539 to i32
  %xor130.i.1.4.1 = xor i32 %conv129.i.1.4.1, %conv126.i.1.4.1
  %conv131.i.1.4.1 = trunc i32 %xor130.i.1.4.1 to i8
  store i8 %conv131.i.1.4.1, i8* %arrayidx128.i.4.1, align 1
  %scevgep89.2.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %533, i64 0, i64 0, i64 2
  %540 = load i8, i8* %scevgep89.2.4.1, align 1
  %conv126.i.2.4.1 = zext i8 %540 to i32
  %541 = load i8, i8* %arrayidx128.i.4.1, align 1
  %conv129.i.2.4.1 = zext i8 %541 to i32
  %xor130.i.2.4.1 = xor i32 %conv129.i.2.4.1, %conv126.i.2.4.1
  %conv131.i.2.4.1 = trunc i32 %xor130.i.2.4.1 to i8
  store i8 %conv131.i.2.4.1, i8* %arrayidx128.i.4.1, align 1
  %scevgep89.3.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %533, i64 0, i64 0, i64 3
  %542 = load i8, i8* %scevgep89.3.4.1, align 1
  %conv126.i.3.4.1 = zext i8 %542 to i32
  %543 = load i8, i8* %arrayidx128.i.4.1, align 1
  %conv129.i.3.4.1 = zext i8 %543 to i32
  %xor130.i.3.4.1 = xor i32 %conv129.i.3.4.1, %conv126.i.3.4.1
  %conv131.i.3.4.1 = trunc i32 %xor130.i.3.4.1 to i8
  store i8 %conv131.i.3.4.1, i8* %arrayidx128.i.4.1, align 1
  %call139.i.1 = call zeroext i8 @mult(i8 zeroext %call.i22.1, i8 zeroext %call1.i.1) #3
  %conv140.i.1 = zext i8 %call139.i.1 to i32
  %scevgep95.1441 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %279, i64 0, i64 0, i64 0
  %scevgep96.1442 = getelementptr i8, i8* %scevgep95.1441, i64 5
  %544 = load i8, i8* %scevgep96.1442, align 1
  %scevgep95.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %279, i64 0, i64 0, i64 1
  %scevgep96.1.1 = getelementptr i8, i8* %scevgep95.1.1, i64 5
  %545 = load i8, i8* %scevgep96.1.1, align 1
  %conv.i.i172.i.1.1 = zext i8 %545 to i32
  %conv1.i.i173.i.1.1 = zext i8 %544 to i32
  %xor.i.i174.i.1.1 = xor i32 %conv1.i.i173.i.1.1, %conv.i.i172.i.1.1
  %conv2.i.i175.i.1.1 = trunc i32 %xor.i.i174.i.1.1 to i8
  %scevgep95.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %279, i64 0, i64 0, i64 2
  %scevgep96.2.1 = getelementptr i8, i8* %scevgep95.2.1, i64 5
  %546 = load i8, i8* %scevgep96.2.1, align 1
  %conv.i.i172.i.2.1 = zext i8 %546 to i32
  %conv1.i.i173.i.2.1 = zext i8 %conv2.i.i175.i.1.1 to i32
  %xor.i.i174.i.2.1 = xor i32 %conv1.i.i173.i.2.1, %conv.i.i172.i.2.1
  %conv2.i.i175.i.2.1 = trunc i32 %xor.i.i174.i.2.1 to i8
  %scevgep95.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %279, i64 0, i64 0, i64 3
  %scevgep96.3.1 = getelementptr i8, i8* %scevgep95.3.1, i64 5
  %547 = load i8, i8* %scevgep96.3.1, align 1
  %conv.i.i172.i.3.1 = zext i8 %547 to i32
  %conv1.i.i173.i.3.1 = zext i8 %conv2.i.i175.i.2.1 to i32
  %xor.i.i174.i.3.1 = xor i32 %conv1.i.i173.i.3.1, %conv.i.i172.i.3.1
  %conv2.i.i175.i.3.1 = trunc i32 %xor.i.i174.i.3.1 to i8
  %scevgep95.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %279, i64 0, i64 0, i64 4
  %scevgep96.4.1 = getelementptr i8, i8* %scevgep95.4.1, i64 5
  %548 = load i8, i8* %scevgep96.4.1, align 1
  %conv.i.i172.i.4.1 = zext i8 %548 to i32
  %conv1.i.i173.i.4.1 = zext i8 %conv2.i.i175.i.3.1 to i32
  %xor.i.i174.i.4.1 = xor i32 %conv1.i.i173.i.4.1, %conv.i.i172.i.4.1
  %conv2.i.i175.i.4.1 = trunc i32 %xor.i.i174.i.4.1 to i8
  %conv142.i.1 = zext i8 %conv2.i.i175.i.4.1 to i32
  %cmp143.i.1 = icmp eq i32 %conv140.i.1, %conv142.i.1
  call void @assert(i1 zeroext %cmp143.i.1) #3
  %scevgep34.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %279, i64 0, i64 1, i64 0
  %549 = bitcast i8* %scevgep34.1 to [5 x [5 x i8]]*
  %arrayidx6.2 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 2
  %arraydecay7.2 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx6.2, i64 0, i64 0
  %arrayidx9.2 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 3
  %arraydecay10.2 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx9.2, i64 0, i64 0
  %call.i22.2 = call zeroext i8 (...) @rand() #3
  %call1.i.2 = call zeroext i8 (...) @rand() #3
  %conv.i.2 = zext i8 %call.i22.2 to i32
  %550 = load i8, i8* %x, align 1
  %scevgep31.1.2 = getelementptr i8, i8* %x, i64 1
  %551 = load i8, i8* %scevgep31.1.2, align 1
  %conv.i.i.i.1.2 = zext i8 %551 to i32
  %conv1.i.i.i.1.2 = zext i8 %550 to i32
  %xor.i.i.i.1.2 = xor i32 %conv1.i.i.i.1.2, %conv.i.i.i.1.2
  %conv2.i.i.i.1.2 = trunc i32 %xor.i.i.i.1.2 to i8
  %scevgep31.2.2 = getelementptr i8, i8* %x, i64 2
  %552 = load i8, i8* %scevgep31.2.2, align 1
  %conv.i.i.i.2.2 = zext i8 %552 to i32
  %conv1.i.i.i.2.2 = zext i8 %conv2.i.i.i.1.2 to i32
  %xor.i.i.i.2.2 = xor i32 %conv1.i.i.i.2.2, %conv.i.i.i.2.2
  %conv2.i.i.i.2.2 = trunc i32 %xor.i.i.i.2.2 to i8
  %scevgep31.3.2 = getelementptr i8, i8* %x, i64 3
  %553 = load i8, i8* %scevgep31.3.2, align 1
  %conv.i.i.i.3.2 = zext i8 %553 to i32
  %conv1.i.i.i.3.2 = zext i8 %conv2.i.i.i.2.2 to i32
  %xor.i.i.i.3.2 = xor i32 %conv1.i.i.i.3.2, %conv.i.i.i.3.2
  %conv2.i.i.i.3.2 = trunc i32 %xor.i.i.i.3.2 to i8
  %scevgep31.4.2 = getelementptr i8, i8* %x, i64 4
  %554 = load i8, i8* %scevgep31.4.2, align 1
  %conv.i.i.i.4.2 = zext i8 %554 to i32
  %conv1.i.i.i.4.2 = zext i8 %conv2.i.i.i.3.2 to i32
  %xor.i.i.i.4.2 = xor i32 %conv1.i.i.i.4.2, %conv.i.i.i.4.2
  %conv2.i.i.i.4.2 = trunc i32 %xor.i.i.i.4.2 to i8
  %conv3.i.2 = zext i8 %conv2.i.i.i.4.2 to i32
  %cmp.i23.2 = icmp eq i32 %conv.i.2, %conv3.i.2
  call void @assume(i1 zeroext %cmp.i23.2) #3
  %conv5.i.2 = zext i8 %call1.i.2 to i32
  %scevgep37.2447 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %549, i64 0, i64 0, i64 0
  %555 = load i8, i8* %scevgep37.2447, align 1
  %scevgep37.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %549, i64 0, i64 0, i64 1
  %556 = load i8, i8* %scevgep37.1.2, align 1
  %conv.i.i155.i.1.2 = zext i8 %556 to i32
  %conv1.i.i156.i.1.2 = zext i8 %555 to i32
  %xor.i.i157.i.1.2 = xor i32 %conv1.i.i156.i.1.2, %conv.i.i155.i.1.2
  %conv2.i.i158.i.1.2 = trunc i32 %xor.i.i157.i.1.2 to i8
  %scevgep37.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %549, i64 0, i64 0, i64 2
  %557 = load i8, i8* %scevgep37.2.2, align 1
  %conv.i.i155.i.2.2 = zext i8 %557 to i32
  %conv1.i.i156.i.2.2 = zext i8 %conv2.i.i158.i.1.2 to i32
  %xor.i.i157.i.2.2 = xor i32 %conv1.i.i156.i.2.2, %conv.i.i155.i.2.2
  %conv2.i.i158.i.2.2 = trunc i32 %xor.i.i157.i.2.2 to i8
  %scevgep37.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %549, i64 0, i64 0, i64 3
  %558 = load i8, i8* %scevgep37.3.2, align 1
  %conv.i.i155.i.3.2 = zext i8 %558 to i32
  %conv1.i.i156.i.3.2 = zext i8 %conv2.i.i158.i.2.2 to i32
  %xor.i.i157.i.3.2 = xor i32 %conv1.i.i156.i.3.2, %conv.i.i155.i.3.2
  %conv2.i.i158.i.3.2 = trunc i32 %xor.i.i157.i.3.2 to i8
  %scevgep37.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %549, i64 0, i64 0, i64 4
  %559 = load i8, i8* %scevgep37.4.2, align 1
  %conv.i.i155.i.4.2 = zext i8 %559 to i32
  %conv1.i.i156.i.4.2 = zext i8 %conv2.i.i158.i.3.2 to i32
  %xor.i.i157.i.4.2 = xor i32 %conv1.i.i156.i.4.2, %conv.i.i155.i.4.2
  %conv2.i.i158.i.4.2 = trunc i32 %xor.i.i157.i.4.2 to i8
  %conv7.i.2 = zext i8 %conv2.i.i158.i.4.2 to i32
  %cmp8.i.2 = icmp eq i32 %conv5.i.2, %conv7.i.2
  call void @assume(i1 zeroext %cmp8.i.2) #3
  %call16.i.2456 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.2456, i8* %scevgep39, align 1
  %560 = load i8, i8* %scevgep39, align 1
  store i8 %560, i8* %scevgep46, align 1
  %scevgep44.2458 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep3940, i64 0, i64 0, i64 1
  %561 = bitcast i8* %scevgep44.2458 to [5 x [5 x i8]]*
  %scevgep51.2459 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4647, i64 0, i64 1, i64 0
  %562 = bitcast i8* %scevgep51.2459 to [5 x [5 x i8]]*
  %call16.i.2456.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.2456.1, i8* %scevgep44.2458, align 1
  %563 = load i8, i8* %scevgep44.2458, align 1
  store i8 %563, i8* %scevgep51.2459, align 1
  %scevgep44.2458.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %561, i64 0, i64 0, i64 1
  %564 = bitcast i8* %scevgep44.2458.1 to [5 x [5 x i8]]*
  %scevgep51.2459.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %562, i64 0, i64 1, i64 0
  %565 = bitcast i8* %scevgep51.2459.1 to [5 x [5 x i8]]*
  %call16.i.2456.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.2456.2, i8* %scevgep44.2458.1, align 1
  %566 = load i8, i8* %scevgep44.2458.1, align 1
  store i8 %566, i8* %scevgep51.2459.1, align 1
  %scevgep44.2458.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %564, i64 0, i64 0, i64 1
  %scevgep51.2459.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %565, i64 0, i64 1, i64 0
  %call16.i.2456.3 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.2456.3, i8* %scevgep44.2458.2, align 1
  %567 = load i8, i8* %scevgep44.2458.2, align 1
  store i8 %567, i8* %scevgep51.2459.2, align 1
  %scevgep42.2463 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep3940, i64 0, i64 1, i64 1
  %568 = bitcast i8* %scevgep42.2463 to [5 x [5 x i8]]*
  %scevgep49.2464 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4647, i64 0, i64 1, i64 1
  %569 = bitcast i8* %scevgep49.2464 to [5 x [5 x i8]]*
  %call16.i.1.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1.2, i8* %scevgep42.2463, align 1
  %570 = load i8, i8* %scevgep42.2463, align 1
  store i8 %570, i8* %scevgep49.2464, align 1
  %scevgep44.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %568, i64 0, i64 0, i64 1
  %571 = bitcast i8* %scevgep44.1.2 to [5 x [5 x i8]]*
  %scevgep51.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %569, i64 0, i64 1, i64 0
  %572 = bitcast i8* %scevgep51.1.2 to [5 x [5 x i8]]*
  %call16.i.1.2.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1.2.1, i8* %scevgep44.1.2, align 1
  %573 = load i8, i8* %scevgep44.1.2, align 1
  store i8 %573, i8* %scevgep51.1.2, align 1
  %scevgep44.1.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %571, i64 0, i64 0, i64 1
  %scevgep51.1.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %572, i64 0, i64 1, i64 0
  %call16.i.1.2.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1.2.2, i8* %scevgep44.1.2.1, align 1
  %574 = load i8, i8* %scevgep44.1.2.1, align 1
  store i8 %574, i8* %scevgep51.1.2.1, align 1
  %scevgep42.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %568, i64 0, i64 1, i64 1
  %575 = bitcast i8* %scevgep42.1.2 to [5 x [5 x i8]]*
  %scevgep49.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %569, i64 0, i64 1, i64 1
  %576 = bitcast i8* %scevgep49.1.2 to [5 x [5 x i8]]*
  %call16.i.2.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.2.2, i8* %scevgep42.1.2, align 1
  %577 = load i8, i8* %scevgep42.1.2, align 1
  store i8 %577, i8* %scevgep49.1.2, align 1
  %scevgep44.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %575, i64 0, i64 0, i64 1
  %scevgep51.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %576, i64 0, i64 1, i64 0
  %call16.i.2.2.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.2.2.1, i8* %scevgep44.2.2, align 1
  %578 = load i8, i8* %scevgep44.2.2, align 1
  store i8 %578, i8* %scevgep51.2.2, align 1
  %scevgep42.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %575, i64 0, i64 1, i64 1
  %scevgep49.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %576, i64 0, i64 1, i64 1
  %call16.i.3.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.3.2, i8* %scevgep42.2.2, align 1
  %579 = load i8, i8* %scevgep42.2.2, align 1
  store i8 %579, i8* %scevgep49.2.2, align 1
  %scevgep59.1.2492 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %549, i64 0, i64 0, i64 1
  %580 = load i8, i8* %scevgep59.1.2492, align 1
  %conv44.i.1.2493 = zext i8 %580 to i32
  %scevgep62.1.2494 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %581 = load i8, i8* %scevgep62.1.2494, align 1
  %conv49.i.1.2495 = zext i8 %581 to i32
  %xor.i.1.2496 = xor i32 %conv44.i.1.2493, %conv49.i.1.2495
  %conv50.i.1.2497 = trunc i32 %xor.i.1.2496 to i8
  %scevgep66.1.2498 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.2497, i8* %scevgep66.1.2498, align 1
  %582 = load i8, i8* %x, align 1
  %conv57.i.1.2499 = zext i8 %582 to i32
  %xor58.i.1.2500 = xor i32 %conv57.i.1.2499, 1
  %conv59.i.1.2501 = trunc i32 %xor58.i.1.2500 to i8
  %scevgep63.1.2502 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %583 = load i8, i8* %scevgep63.1.2502, align 1
  %call64.i.1.2503 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.2501, i8 zeroext %583) #3
  %scevgep70.1.2504 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i.1.2503, i8* %scevgep70.1.2504, align 1
  %584 = load i8, i8* %x, align 1
  %scevgep67.1.2505 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 1
  %585 = load i8, i8* %scevgep67.1.2505, align 1
  %call75.i.1.2506 = call zeroext i8 @mult(i8 zeroext %584, i8 zeroext %585) #3
  %scevgep74.1.2507 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i.1.2506, i8* %scevgep74.1.2507, align 1
  %scevgep71.1.2508 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %586 = load i8, i8* %scevgep71.1.2508, align 1
  %conv84.i.1.2509 = zext i8 %586 to i32
  %scevgep75.1.2510 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %587 = load i8, i8* %scevgep75.1.2510, align 1
  %conv89.i.1.2511 = zext i8 %587 to i32
  %xor90.i.1.2512 = xor i32 %conv84.i.1.2509, %conv89.i.1.2511
  %conv91.i.1.2513 = trunc i32 %xor90.i.1.2512 to i8
  %scevgep78.1.2514 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.2513, i8* %scevgep78.1.2514, align 1
  %scevgep59.2.2517 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %549, i64 0, i64 0, i64 2
  %588 = load i8, i8* %scevgep59.2.2517, align 1
  %conv44.i.2.2518 = zext i8 %588 to i32
  %scevgep62.2.2519 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 2
  %589 = load i8, i8* %scevgep62.2.2519, align 1
  %conv49.i.2.2520 = zext i8 %589 to i32
  %xor.i.2.2521 = xor i32 %conv44.i.2.2518, %conv49.i.2.2520
  %conv50.i.2.2522 = trunc i32 %xor.i.2.2521 to i8
  %scevgep66.2.2523 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.2522, i8* %scevgep66.2.2523, align 1
  %590 = load i8, i8* %x, align 1
  %conv57.i.2.2524 = zext i8 %590 to i32
  %xor58.i.2.2525 = xor i32 %conv57.i.2.2524, 1
  %conv59.i.2.2526 = trunc i32 %xor58.i.2.2525 to i8
  %scevgep63.2.2527 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 2
  %591 = load i8, i8* %scevgep63.2.2527, align 1
  %call64.i.2.2528 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.2526, i8 zeroext %591) #3
  %scevgep70.2.2529 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 2
  store i8 %call64.i.2.2528, i8* %scevgep70.2.2529, align 1
  %592 = load i8, i8* %x, align 1
  %scevgep67.2.2530 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 2
  %593 = load i8, i8* %scevgep67.2.2530, align 1
  %call75.i.2.2531 = call zeroext i8 @mult(i8 zeroext %592, i8 zeroext %593) #3
  %scevgep74.2.2532 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 2
  store i8 %call75.i.2.2531, i8* %scevgep74.2.2532, align 1
  %scevgep71.2.2533 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 2
  %594 = load i8, i8* %scevgep71.2.2533, align 1
  %conv84.i.2.2534 = zext i8 %594 to i32
  %scevgep75.2.2535 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 2
  %595 = load i8, i8* %scevgep75.2.2535, align 1
  %conv89.i.2.2536 = zext i8 %595 to i32
  %xor90.i.2.2537 = xor i32 %conv84.i.2.2534, %conv89.i.2.2536
  %conv91.i.2.2538 = trunc i32 %xor90.i.2.2537 to i8
  %scevgep78.2.2539 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.2538, i8* %scevgep78.2.2539, align 1
  %scevgep59.3.2542 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %549, i64 0, i64 0, i64 3
  %596 = load i8, i8* %scevgep59.3.2542, align 1
  %conv44.i.3.2543 = zext i8 %596 to i32
  %scevgep62.3.2544 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 3
  %597 = load i8, i8* %scevgep62.3.2544, align 1
  %conv49.i.3.2545 = zext i8 %597 to i32
  %xor.i.3.2546 = xor i32 %conv44.i.3.2543, %conv49.i.3.2545
  %conv50.i.3.2547 = trunc i32 %xor.i.3.2546 to i8
  %scevgep66.3.2548 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 3
  store i8 %conv50.i.3.2547, i8* %scevgep66.3.2548, align 1
  %598 = load i8, i8* %x, align 1
  %conv57.i.3.2549 = zext i8 %598 to i32
  %xor58.i.3.2550 = xor i32 %conv57.i.3.2549, 1
  %conv59.i.3.2551 = trunc i32 %xor58.i.3.2550 to i8
  %scevgep63.3.2552 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 3
  %599 = load i8, i8* %scevgep63.3.2552, align 1
  %call64.i.3.2553 = call zeroext i8 @mult(i8 zeroext %conv59.i.3.2551, i8 zeroext %599) #3
  %scevgep70.3.2554 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 3
  store i8 %call64.i.3.2553, i8* %scevgep70.3.2554, align 1
  %600 = load i8, i8* %x, align 1
  %scevgep67.3.2555 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 3
  %601 = load i8, i8* %scevgep67.3.2555, align 1
  %call75.i.3.2556 = call zeroext i8 @mult(i8 zeroext %600, i8 zeroext %601) #3
  %scevgep74.3.2557 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 3
  store i8 %call75.i.3.2556, i8* %scevgep74.3.2557, align 1
  %scevgep71.3.2558 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 3
  %602 = load i8, i8* %scevgep71.3.2558, align 1
  %conv84.i.3.2559 = zext i8 %602 to i32
  %scevgep75.3.2560 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 3
  %603 = load i8, i8* %scevgep75.3.2560, align 1
  %conv89.i.3.2561 = zext i8 %603 to i32
  %xor90.i.3.2562 = xor i32 %conv84.i.3.2559, %conv89.i.3.2561
  %conv91.i.3.2563 = trunc i32 %xor90.i.3.2562 to i8
  %scevgep78.3.2564 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 3
  store i8 %conv91.i.3.2563, i8* %scevgep78.3.2564, align 1
  %scevgep59.4.2567 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %549, i64 0, i64 0, i64 4
  %604 = load i8, i8* %scevgep59.4.2567, align 1
  %conv44.i.4.2568 = zext i8 %604 to i32
  %scevgep62.4.2569 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 4
  %605 = load i8, i8* %scevgep62.4.2569, align 1
  %conv49.i.4.2570 = zext i8 %605 to i32
  %xor.i.4.2571 = xor i32 %conv44.i.4.2568, %conv49.i.4.2570
  %conv50.i.4.2572 = trunc i32 %xor.i.4.2571 to i8
  %scevgep66.4.2573 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 4
  store i8 %conv50.i.4.2572, i8* %scevgep66.4.2573, align 1
  %606 = load i8, i8* %x, align 1
  %conv57.i.4.2574 = zext i8 %606 to i32
  %xor58.i.4.2575 = xor i32 %conv57.i.4.2574, 1
  %conv59.i.4.2576 = trunc i32 %xor58.i.4.2575 to i8
  %scevgep63.4.2577 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 4
  %607 = load i8, i8* %scevgep63.4.2577, align 1
  %call64.i.4.2578 = call zeroext i8 @mult(i8 zeroext %conv59.i.4.2576, i8 zeroext %607) #3
  %scevgep70.4.2579 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 4
  store i8 %call64.i.4.2578, i8* %scevgep70.4.2579, align 1
  %608 = load i8, i8* %x, align 1
  %scevgep67.4.2580 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 4
  %609 = load i8, i8* %scevgep67.4.2580, align 1
  %call75.i.4.2581 = call zeroext i8 @mult(i8 zeroext %608, i8 zeroext %609) #3
  %scevgep74.4.2582 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 4
  store i8 %call75.i.4.2581, i8* %scevgep74.4.2582, align 1
  %scevgep71.4.2583 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 4
  %610 = load i8, i8* %scevgep71.4.2583, align 1
  %conv84.i.4.2584 = zext i8 %610 to i32
  %scevgep75.4.2585 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 4
  %611 = load i8, i8* %scevgep75.4.2585, align 1
  %conv89.i.4.2586 = zext i8 %611 to i32
  %xor90.i.4.2587 = xor i32 %conv84.i.4.2584, %conv89.i.4.2586
  %conv91.i.4.2588 = trunc i32 %xor90.i.4.2587 to i8
  %scevgep78.4.2589 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 4
  store i8 %conv91.i.4.2588, i8* %scevgep78.4.2589, align 1
  %scevgep61.2591 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 1, i64 0
  %612 = bitcast i8* %scevgep61.2591 to [5 x [5 x i8]]*
  %scevgep65.2592 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 1, i64 0
  %613 = bitcast i8* %scevgep65.2592 to [5 x [5 x i8]]*
  %scevgep69.2593 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %614 = bitcast i8* %scevgep69.2593 to [5 x [5 x i8]]*
  %scevgep73.2594 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %615 = bitcast i8* %scevgep73.2594 to [5 x [5 x i8]]*
  %scevgep77.2595 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 1, i64 0
  %616 = bitcast i8* %scevgep77.2595 to [5 x [5 x i8]]*
  %arrayidx56.i.1.2 = getelementptr inbounds i8, i8* %x, i64 1
  %arrayidx70.i.1.2 = getelementptr inbounds i8, i8* %x, i64 1
  %scevgep59.1109.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %549, i64 0, i64 0, i64 0
  %617 = load i8, i8* %scevgep59.1109.2, align 1
  %conv44.i.1110.2 = zext i8 %617 to i32
  %scevgep62.1111.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %612, i64 0, i64 0, i64 0
  %618 = load i8, i8* %scevgep62.1111.2, align 1
  %conv49.i.1112.2 = zext i8 %618 to i32
  %xor.i.1113.2 = xor i32 %conv44.i.1110.2, %conv49.i.1112.2
  %conv50.i.1114.2 = trunc i32 %xor.i.1113.2 to i8
  %scevgep66.1115.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %613, i64 0, i64 0, i64 0
  store i8 %conv50.i.1114.2, i8* %scevgep66.1115.2, align 1
  %619 = load i8, i8* %arrayidx56.i.1.2, align 1
  %conv57.i.1116.2 = zext i8 %619 to i32
  %xor58.i.1117.2 = xor i32 %conv57.i.1116.2, 1
  %conv59.i.1118.2 = trunc i32 %xor58.i.1117.2 to i8
  %scevgep63.1119.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %612, i64 0, i64 0, i64 0
  %620 = load i8, i8* %scevgep63.1119.2, align 1
  %call64.i.1120.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.1118.2, i8 zeroext %620) #3
  %scevgep70.1121.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %614, i64 0, i64 0, i64 0
  store i8 %call64.i.1120.2, i8* %scevgep70.1121.2, align 1
  %621 = load i8, i8* %arrayidx70.i.1.2, align 1
  %scevgep67.1122.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %613, i64 0, i64 0, i64 0
  %622 = load i8, i8* %scevgep67.1122.2, align 1
  %call75.i.1123.2 = call zeroext i8 @mult(i8 zeroext %621, i8 zeroext %622) #3
  %scevgep74.1124.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %615, i64 0, i64 0, i64 0
  store i8 %call75.i.1123.2, i8* %scevgep74.1124.2, align 1
  %scevgep71.1125.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %614, i64 0, i64 0, i64 0
  %623 = load i8, i8* %scevgep71.1125.2, align 1
  %conv84.i.1126.2 = zext i8 %623 to i32
  %scevgep75.1127.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %615, i64 0, i64 0, i64 0
  %624 = load i8, i8* %scevgep75.1127.2, align 1
  %conv89.i.1128.2 = zext i8 %624 to i32
  %xor90.i.1129.2 = xor i32 %conv84.i.1126.2, %conv89.i.1128.2
  %conv91.i.1130.2 = trunc i32 %xor90.i.1129.2 to i8
  %scevgep78.1131.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %616, i64 0, i64 0, i64 0
  store i8 %conv91.i.1130.2, i8* %scevgep78.1131.2, align 1
  %scevgep59.2.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %549, i64 0, i64 0, i64 2
  %625 = load i8, i8* %scevgep59.2.1.2, align 1
  %conv44.i.2.1.2 = zext i8 %625 to i32
  %scevgep62.2.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %612, i64 0, i64 0, i64 2
  %626 = load i8, i8* %scevgep62.2.1.2, align 1
  %conv49.i.2.1.2 = zext i8 %626 to i32
  %xor.i.2.1.2 = xor i32 %conv44.i.2.1.2, %conv49.i.2.1.2
  %conv50.i.2.1.2 = trunc i32 %xor.i.2.1.2 to i8
  %scevgep66.2.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %613, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.1.2, i8* %scevgep66.2.1.2, align 1
  %627 = load i8, i8* %arrayidx56.i.1.2, align 1
  %conv57.i.2.1.2 = zext i8 %627 to i32
  %xor58.i.2.1.2 = xor i32 %conv57.i.2.1.2, 1
  %conv59.i.2.1.2 = trunc i32 %xor58.i.2.1.2 to i8
  %scevgep63.2.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %612, i64 0, i64 0, i64 2
  %628 = load i8, i8* %scevgep63.2.1.2, align 1
  %call64.i.2.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.1.2, i8 zeroext %628) #3
  %scevgep70.2.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %614, i64 0, i64 0, i64 2
  store i8 %call64.i.2.1.2, i8* %scevgep70.2.1.2, align 1
  %629 = load i8, i8* %arrayidx70.i.1.2, align 1
  %scevgep67.2.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %613, i64 0, i64 0, i64 2
  %630 = load i8, i8* %scevgep67.2.1.2, align 1
  %call75.i.2.1.2 = call zeroext i8 @mult(i8 zeroext %629, i8 zeroext %630) #3
  %scevgep74.2.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %615, i64 0, i64 0, i64 2
  store i8 %call75.i.2.1.2, i8* %scevgep74.2.1.2, align 1
  %scevgep71.2.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %614, i64 0, i64 0, i64 2
  %631 = load i8, i8* %scevgep71.2.1.2, align 1
  %conv84.i.2.1.2 = zext i8 %631 to i32
  %scevgep75.2.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %615, i64 0, i64 0, i64 2
  %632 = load i8, i8* %scevgep75.2.1.2, align 1
  %conv89.i.2.1.2 = zext i8 %632 to i32
  %xor90.i.2.1.2 = xor i32 %conv84.i.2.1.2, %conv89.i.2.1.2
  %conv91.i.2.1.2 = trunc i32 %xor90.i.2.1.2 to i8
  %scevgep78.2.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %616, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.1.2, i8* %scevgep78.2.1.2, align 1
  %scevgep59.3.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %549, i64 0, i64 0, i64 3
  %633 = load i8, i8* %scevgep59.3.1.2, align 1
  %conv44.i.3.1.2 = zext i8 %633 to i32
  %scevgep62.3.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %612, i64 0, i64 0, i64 3
  %634 = load i8, i8* %scevgep62.3.1.2, align 1
  %conv49.i.3.1.2 = zext i8 %634 to i32
  %xor.i.3.1.2 = xor i32 %conv44.i.3.1.2, %conv49.i.3.1.2
  %conv50.i.3.1.2 = trunc i32 %xor.i.3.1.2 to i8
  %scevgep66.3.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %613, i64 0, i64 0, i64 3
  store i8 %conv50.i.3.1.2, i8* %scevgep66.3.1.2, align 1
  %635 = load i8, i8* %arrayidx56.i.1.2, align 1
  %conv57.i.3.1.2 = zext i8 %635 to i32
  %xor58.i.3.1.2 = xor i32 %conv57.i.3.1.2, 1
  %conv59.i.3.1.2 = trunc i32 %xor58.i.3.1.2 to i8
  %scevgep63.3.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %612, i64 0, i64 0, i64 3
  %636 = load i8, i8* %scevgep63.3.1.2, align 1
  %call64.i.3.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.3.1.2, i8 zeroext %636) #3
  %scevgep70.3.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %614, i64 0, i64 0, i64 3
  store i8 %call64.i.3.1.2, i8* %scevgep70.3.1.2, align 1
  %637 = load i8, i8* %arrayidx70.i.1.2, align 1
  %scevgep67.3.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %613, i64 0, i64 0, i64 3
  %638 = load i8, i8* %scevgep67.3.1.2, align 1
  %call75.i.3.1.2 = call zeroext i8 @mult(i8 zeroext %637, i8 zeroext %638) #3
  %scevgep74.3.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %615, i64 0, i64 0, i64 3
  store i8 %call75.i.3.1.2, i8* %scevgep74.3.1.2, align 1
  %scevgep71.3.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %614, i64 0, i64 0, i64 3
  %639 = load i8, i8* %scevgep71.3.1.2, align 1
  %conv84.i.3.1.2 = zext i8 %639 to i32
  %scevgep75.3.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %615, i64 0, i64 0, i64 3
  %640 = load i8, i8* %scevgep75.3.1.2, align 1
  %conv89.i.3.1.2 = zext i8 %640 to i32
  %xor90.i.3.1.2 = xor i32 %conv84.i.3.1.2, %conv89.i.3.1.2
  %conv91.i.3.1.2 = trunc i32 %xor90.i.3.1.2 to i8
  %scevgep78.3.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %616, i64 0, i64 0, i64 3
  store i8 %conv91.i.3.1.2, i8* %scevgep78.3.1.2, align 1
  %scevgep59.4.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %549, i64 0, i64 0, i64 4
  %641 = load i8, i8* %scevgep59.4.1.2, align 1
  %conv44.i.4.1.2 = zext i8 %641 to i32
  %scevgep62.4.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %612, i64 0, i64 0, i64 4
  %642 = load i8, i8* %scevgep62.4.1.2, align 1
  %conv49.i.4.1.2 = zext i8 %642 to i32
  %xor.i.4.1.2 = xor i32 %conv44.i.4.1.2, %conv49.i.4.1.2
  %conv50.i.4.1.2 = trunc i32 %xor.i.4.1.2 to i8
  %scevgep66.4.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %613, i64 0, i64 0, i64 4
  store i8 %conv50.i.4.1.2, i8* %scevgep66.4.1.2, align 1
  %643 = load i8, i8* %arrayidx56.i.1.2, align 1
  %conv57.i.4.1.2 = zext i8 %643 to i32
  %xor58.i.4.1.2 = xor i32 %conv57.i.4.1.2, 1
  %conv59.i.4.1.2 = trunc i32 %xor58.i.4.1.2 to i8
  %scevgep63.4.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %612, i64 0, i64 0, i64 4
  %644 = load i8, i8* %scevgep63.4.1.2, align 1
  %call64.i.4.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.4.1.2, i8 zeroext %644) #3
  %scevgep70.4.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %614, i64 0, i64 0, i64 4
  store i8 %call64.i.4.1.2, i8* %scevgep70.4.1.2, align 1
  %645 = load i8, i8* %arrayidx70.i.1.2, align 1
  %scevgep67.4.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %613, i64 0, i64 0, i64 4
  %646 = load i8, i8* %scevgep67.4.1.2, align 1
  %call75.i.4.1.2 = call zeroext i8 @mult(i8 zeroext %645, i8 zeroext %646) #3
  %scevgep74.4.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %615, i64 0, i64 0, i64 4
  store i8 %call75.i.4.1.2, i8* %scevgep74.4.1.2, align 1
  %scevgep71.4.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %614, i64 0, i64 0, i64 4
  %647 = load i8, i8* %scevgep71.4.1.2, align 1
  %conv84.i.4.1.2 = zext i8 %647 to i32
  %scevgep75.4.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %615, i64 0, i64 0, i64 4
  %648 = load i8, i8* %scevgep75.4.1.2, align 1
  %conv89.i.4.1.2 = zext i8 %648 to i32
  %xor90.i.4.1.2 = xor i32 %conv84.i.4.1.2, %conv89.i.4.1.2
  %conv91.i.4.1.2 = trunc i32 %xor90.i.4.1.2 to i8
  %scevgep78.4.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %616, i64 0, i64 0, i64 4
  store i8 %conv91.i.4.1.2, i8* %scevgep78.4.1.2, align 1
  %scevgep61.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %612, i64 0, i64 1, i64 0
  %649 = bitcast i8* %scevgep61.1.2 to [5 x [5 x i8]]*
  %scevgep65.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %613, i64 0, i64 1, i64 0
  %650 = bitcast i8* %scevgep65.1.2 to [5 x [5 x i8]]*
  %scevgep69.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %614, i64 0, i64 1, i64 0
  %651 = bitcast i8* %scevgep69.1.2 to [5 x [5 x i8]]*
  %scevgep73.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %615, i64 0, i64 1, i64 0
  %652 = bitcast i8* %scevgep73.1.2 to [5 x [5 x i8]]*
  %scevgep77.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %616, i64 0, i64 1, i64 0
  %653 = bitcast i8* %scevgep77.1.2 to [5 x [5 x i8]]*
  %arrayidx56.i.2.2 = getelementptr inbounds i8, i8* %x, i64 2
  %arrayidx70.i.2.2 = getelementptr inbounds i8, i8* %x, i64 2
  %scevgep59.2136.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %549, i64 0, i64 0, i64 0
  %654 = load i8, i8* %scevgep59.2136.2, align 1
  %conv44.i.2137.2 = zext i8 %654 to i32
  %scevgep62.2138.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %649, i64 0, i64 0, i64 0
  %655 = load i8, i8* %scevgep62.2138.2, align 1
  %conv49.i.2139.2 = zext i8 %655 to i32
  %xor.i.2140.2 = xor i32 %conv44.i.2137.2, %conv49.i.2139.2
  %conv50.i.2141.2 = trunc i32 %xor.i.2140.2 to i8
  %scevgep66.2142.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %650, i64 0, i64 0, i64 0
  store i8 %conv50.i.2141.2, i8* %scevgep66.2142.2, align 1
  %656 = load i8, i8* %arrayidx56.i.2.2, align 1
  %conv57.i.2143.2 = zext i8 %656 to i32
  %xor58.i.2144.2 = xor i32 %conv57.i.2143.2, 1
  %conv59.i.2145.2 = trunc i32 %xor58.i.2144.2 to i8
  %scevgep63.2146.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %649, i64 0, i64 0, i64 0
  %657 = load i8, i8* %scevgep63.2146.2, align 1
  %call64.i.2147.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.2145.2, i8 zeroext %657) #3
  %scevgep70.2148.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %651, i64 0, i64 0, i64 0
  store i8 %call64.i.2147.2, i8* %scevgep70.2148.2, align 1
  %658 = load i8, i8* %arrayidx70.i.2.2, align 1
  %scevgep67.2149.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %650, i64 0, i64 0, i64 0
  %659 = load i8, i8* %scevgep67.2149.2, align 1
  %call75.i.2150.2 = call zeroext i8 @mult(i8 zeroext %658, i8 zeroext %659) #3
  %scevgep74.2151.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %652, i64 0, i64 0, i64 0
  store i8 %call75.i.2150.2, i8* %scevgep74.2151.2, align 1
  %scevgep71.2152.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %651, i64 0, i64 0, i64 0
  %660 = load i8, i8* %scevgep71.2152.2, align 1
  %conv84.i.2153.2 = zext i8 %660 to i32
  %scevgep75.2154.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %652, i64 0, i64 0, i64 0
  %661 = load i8, i8* %scevgep75.2154.2, align 1
  %conv89.i.2155.2 = zext i8 %661 to i32
  %xor90.i.2156.2 = xor i32 %conv84.i.2153.2, %conv89.i.2155.2
  %conv91.i.2157.2 = trunc i32 %xor90.i.2156.2 to i8
  %scevgep78.2158.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %653, i64 0, i64 0, i64 0
  store i8 %conv91.i.2157.2, i8* %scevgep78.2158.2, align 1
  %scevgep59.1.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %549, i64 0, i64 0, i64 1
  %662 = load i8, i8* %scevgep59.1.2.2, align 1
  %conv44.i.1.2.2 = zext i8 %662 to i32
  %scevgep62.1.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %649, i64 0, i64 0, i64 1
  %663 = load i8, i8* %scevgep62.1.2.2, align 1
  %conv49.i.1.2.2 = zext i8 %663 to i32
  %xor.i.1.2.2 = xor i32 %conv44.i.1.2.2, %conv49.i.1.2.2
  %conv50.i.1.2.2 = trunc i32 %xor.i.1.2.2 to i8
  %scevgep66.1.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %650, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.2.2, i8* %scevgep66.1.2.2, align 1
  %664 = load i8, i8* %arrayidx56.i.2.2, align 1
  %conv57.i.1.2.2 = zext i8 %664 to i32
  %xor58.i.1.2.2 = xor i32 %conv57.i.1.2.2, 1
  %conv59.i.1.2.2 = trunc i32 %xor58.i.1.2.2 to i8
  %scevgep63.1.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %649, i64 0, i64 0, i64 1
  %665 = load i8, i8* %scevgep63.1.2.2, align 1
  %call64.i.1.2.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.2.2, i8 zeroext %665) #3
  %scevgep70.1.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %651, i64 0, i64 0, i64 1
  store i8 %call64.i.1.2.2, i8* %scevgep70.1.2.2, align 1
  %666 = load i8, i8* %arrayidx70.i.2.2, align 1
  %scevgep67.1.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %650, i64 0, i64 0, i64 1
  %667 = load i8, i8* %scevgep67.1.2.2, align 1
  %call75.i.1.2.2 = call zeroext i8 @mult(i8 zeroext %666, i8 zeroext %667) #3
  %scevgep74.1.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %652, i64 0, i64 0, i64 1
  store i8 %call75.i.1.2.2, i8* %scevgep74.1.2.2, align 1
  %scevgep71.1.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %651, i64 0, i64 0, i64 1
  %668 = load i8, i8* %scevgep71.1.2.2, align 1
  %conv84.i.1.2.2 = zext i8 %668 to i32
  %scevgep75.1.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %652, i64 0, i64 0, i64 1
  %669 = load i8, i8* %scevgep75.1.2.2, align 1
  %conv89.i.1.2.2 = zext i8 %669 to i32
  %xor90.i.1.2.2 = xor i32 %conv84.i.1.2.2, %conv89.i.1.2.2
  %conv91.i.1.2.2 = trunc i32 %xor90.i.1.2.2 to i8
  %scevgep78.1.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %653, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.2.2, i8* %scevgep78.1.2.2, align 1
  %scevgep59.3.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %549, i64 0, i64 0, i64 3
  %670 = load i8, i8* %scevgep59.3.2.2, align 1
  %conv44.i.3.2.2 = zext i8 %670 to i32
  %scevgep62.3.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %649, i64 0, i64 0, i64 3
  %671 = load i8, i8* %scevgep62.3.2.2, align 1
  %conv49.i.3.2.2 = zext i8 %671 to i32
  %xor.i.3.2.2 = xor i32 %conv44.i.3.2.2, %conv49.i.3.2.2
  %conv50.i.3.2.2 = trunc i32 %xor.i.3.2.2 to i8
  %scevgep66.3.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %650, i64 0, i64 0, i64 3
  store i8 %conv50.i.3.2.2, i8* %scevgep66.3.2.2, align 1
  %672 = load i8, i8* %arrayidx56.i.2.2, align 1
  %conv57.i.3.2.2 = zext i8 %672 to i32
  %xor58.i.3.2.2 = xor i32 %conv57.i.3.2.2, 1
  %conv59.i.3.2.2 = trunc i32 %xor58.i.3.2.2 to i8
  %scevgep63.3.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %649, i64 0, i64 0, i64 3
  %673 = load i8, i8* %scevgep63.3.2.2, align 1
  %call64.i.3.2.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.3.2.2, i8 zeroext %673) #3
  %scevgep70.3.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %651, i64 0, i64 0, i64 3
  store i8 %call64.i.3.2.2, i8* %scevgep70.3.2.2, align 1
  %674 = load i8, i8* %arrayidx70.i.2.2, align 1
  %scevgep67.3.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %650, i64 0, i64 0, i64 3
  %675 = load i8, i8* %scevgep67.3.2.2, align 1
  %call75.i.3.2.2 = call zeroext i8 @mult(i8 zeroext %674, i8 zeroext %675) #3
  %scevgep74.3.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %652, i64 0, i64 0, i64 3
  store i8 %call75.i.3.2.2, i8* %scevgep74.3.2.2, align 1
  %scevgep71.3.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %651, i64 0, i64 0, i64 3
  %676 = load i8, i8* %scevgep71.3.2.2, align 1
  %conv84.i.3.2.2 = zext i8 %676 to i32
  %scevgep75.3.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %652, i64 0, i64 0, i64 3
  %677 = load i8, i8* %scevgep75.3.2.2, align 1
  %conv89.i.3.2.2 = zext i8 %677 to i32
  %xor90.i.3.2.2 = xor i32 %conv84.i.3.2.2, %conv89.i.3.2.2
  %conv91.i.3.2.2 = trunc i32 %xor90.i.3.2.2 to i8
  %scevgep78.3.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %653, i64 0, i64 0, i64 3
  store i8 %conv91.i.3.2.2, i8* %scevgep78.3.2.2, align 1
  %scevgep59.4.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %549, i64 0, i64 0, i64 4
  %678 = load i8, i8* %scevgep59.4.2.2, align 1
  %conv44.i.4.2.2 = zext i8 %678 to i32
  %scevgep62.4.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %649, i64 0, i64 0, i64 4
  %679 = load i8, i8* %scevgep62.4.2.2, align 1
  %conv49.i.4.2.2 = zext i8 %679 to i32
  %xor.i.4.2.2 = xor i32 %conv44.i.4.2.2, %conv49.i.4.2.2
  %conv50.i.4.2.2 = trunc i32 %xor.i.4.2.2 to i8
  %scevgep66.4.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %650, i64 0, i64 0, i64 4
  store i8 %conv50.i.4.2.2, i8* %scevgep66.4.2.2, align 1
  %680 = load i8, i8* %arrayidx56.i.2.2, align 1
  %conv57.i.4.2.2 = zext i8 %680 to i32
  %xor58.i.4.2.2 = xor i32 %conv57.i.4.2.2, 1
  %conv59.i.4.2.2 = trunc i32 %xor58.i.4.2.2 to i8
  %scevgep63.4.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %649, i64 0, i64 0, i64 4
  %681 = load i8, i8* %scevgep63.4.2.2, align 1
  %call64.i.4.2.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.4.2.2, i8 zeroext %681) #3
  %scevgep70.4.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %651, i64 0, i64 0, i64 4
  store i8 %call64.i.4.2.2, i8* %scevgep70.4.2.2, align 1
  %682 = load i8, i8* %arrayidx70.i.2.2, align 1
  %scevgep67.4.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %650, i64 0, i64 0, i64 4
  %683 = load i8, i8* %scevgep67.4.2.2, align 1
  %call75.i.4.2.2 = call zeroext i8 @mult(i8 zeroext %682, i8 zeroext %683) #3
  %scevgep74.4.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %652, i64 0, i64 0, i64 4
  store i8 %call75.i.4.2.2, i8* %scevgep74.4.2.2, align 1
  %scevgep71.4.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %651, i64 0, i64 0, i64 4
  %684 = load i8, i8* %scevgep71.4.2.2, align 1
  %conv84.i.4.2.2 = zext i8 %684 to i32
  %scevgep75.4.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %652, i64 0, i64 0, i64 4
  %685 = load i8, i8* %scevgep75.4.2.2, align 1
  %conv89.i.4.2.2 = zext i8 %685 to i32
  %xor90.i.4.2.2 = xor i32 %conv84.i.4.2.2, %conv89.i.4.2.2
  %conv91.i.4.2.2 = trunc i32 %xor90.i.4.2.2 to i8
  %scevgep78.4.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %653, i64 0, i64 0, i64 4
  store i8 %conv91.i.4.2.2, i8* %scevgep78.4.2.2, align 1
  %scevgep61.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %649, i64 0, i64 1, i64 0
  %686 = bitcast i8* %scevgep61.2.2 to [5 x [5 x i8]]*
  %scevgep65.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %650, i64 0, i64 1, i64 0
  %687 = bitcast i8* %scevgep65.2.2 to [5 x [5 x i8]]*
  %scevgep69.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %651, i64 0, i64 1, i64 0
  %688 = bitcast i8* %scevgep69.2.2 to [5 x [5 x i8]]*
  %scevgep73.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %652, i64 0, i64 1, i64 0
  %689 = bitcast i8* %scevgep73.2.2 to [5 x [5 x i8]]*
  %scevgep77.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %653, i64 0, i64 1, i64 0
  %690 = bitcast i8* %scevgep77.2.2 to [5 x [5 x i8]]*
  %arrayidx56.i.3.2 = getelementptr inbounds i8, i8* %x, i64 3
  %arrayidx70.i.3.2 = getelementptr inbounds i8, i8* %x, i64 3
  %scevgep59.3163.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %549, i64 0, i64 0, i64 0
  %691 = load i8, i8* %scevgep59.3163.2, align 1
  %conv44.i.3164.2 = zext i8 %691 to i32
  %scevgep62.3165.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %686, i64 0, i64 0, i64 0
  %692 = load i8, i8* %scevgep62.3165.2, align 1
  %conv49.i.3166.2 = zext i8 %692 to i32
  %xor.i.3167.2 = xor i32 %conv44.i.3164.2, %conv49.i.3166.2
  %conv50.i.3168.2 = trunc i32 %xor.i.3167.2 to i8
  %scevgep66.3169.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %687, i64 0, i64 0, i64 0
  store i8 %conv50.i.3168.2, i8* %scevgep66.3169.2, align 1
  %693 = load i8, i8* %arrayidx56.i.3.2, align 1
  %conv57.i.3170.2 = zext i8 %693 to i32
  %xor58.i.3171.2 = xor i32 %conv57.i.3170.2, 1
  %conv59.i.3172.2 = trunc i32 %xor58.i.3171.2 to i8
  %scevgep63.3173.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %686, i64 0, i64 0, i64 0
  %694 = load i8, i8* %scevgep63.3173.2, align 1
  %call64.i.3174.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.3172.2, i8 zeroext %694) #3
  %scevgep70.3175.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %688, i64 0, i64 0, i64 0
  store i8 %call64.i.3174.2, i8* %scevgep70.3175.2, align 1
  %695 = load i8, i8* %arrayidx70.i.3.2, align 1
  %scevgep67.3176.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %687, i64 0, i64 0, i64 0
  %696 = load i8, i8* %scevgep67.3176.2, align 1
  %call75.i.3177.2 = call zeroext i8 @mult(i8 zeroext %695, i8 zeroext %696) #3
  %scevgep74.3178.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %689, i64 0, i64 0, i64 0
  store i8 %call75.i.3177.2, i8* %scevgep74.3178.2, align 1
  %scevgep71.3179.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %688, i64 0, i64 0, i64 0
  %697 = load i8, i8* %scevgep71.3179.2, align 1
  %conv84.i.3180.2 = zext i8 %697 to i32
  %scevgep75.3181.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %689, i64 0, i64 0, i64 0
  %698 = load i8, i8* %scevgep75.3181.2, align 1
  %conv89.i.3182.2 = zext i8 %698 to i32
  %xor90.i.3183.2 = xor i32 %conv84.i.3180.2, %conv89.i.3182.2
  %conv91.i.3184.2 = trunc i32 %xor90.i.3183.2 to i8
  %scevgep78.3185.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %690, i64 0, i64 0, i64 0
  store i8 %conv91.i.3184.2, i8* %scevgep78.3185.2, align 1
  %scevgep59.1.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %549, i64 0, i64 0, i64 1
  %699 = load i8, i8* %scevgep59.1.3.2, align 1
  %conv44.i.1.3.2 = zext i8 %699 to i32
  %scevgep62.1.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %686, i64 0, i64 0, i64 1
  %700 = load i8, i8* %scevgep62.1.3.2, align 1
  %conv49.i.1.3.2 = zext i8 %700 to i32
  %xor.i.1.3.2 = xor i32 %conv44.i.1.3.2, %conv49.i.1.3.2
  %conv50.i.1.3.2 = trunc i32 %xor.i.1.3.2 to i8
  %scevgep66.1.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %687, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.3.2, i8* %scevgep66.1.3.2, align 1
  %701 = load i8, i8* %arrayidx56.i.3.2, align 1
  %conv57.i.1.3.2 = zext i8 %701 to i32
  %xor58.i.1.3.2 = xor i32 %conv57.i.1.3.2, 1
  %conv59.i.1.3.2 = trunc i32 %xor58.i.1.3.2 to i8
  %scevgep63.1.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %686, i64 0, i64 0, i64 1
  %702 = load i8, i8* %scevgep63.1.3.2, align 1
  %call64.i.1.3.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.3.2, i8 zeroext %702) #3
  %scevgep70.1.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %688, i64 0, i64 0, i64 1
  store i8 %call64.i.1.3.2, i8* %scevgep70.1.3.2, align 1
  %703 = load i8, i8* %arrayidx70.i.3.2, align 1
  %scevgep67.1.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %687, i64 0, i64 0, i64 1
  %704 = load i8, i8* %scevgep67.1.3.2, align 1
  %call75.i.1.3.2 = call zeroext i8 @mult(i8 zeroext %703, i8 zeroext %704) #3
  %scevgep74.1.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %689, i64 0, i64 0, i64 1
  store i8 %call75.i.1.3.2, i8* %scevgep74.1.3.2, align 1
  %scevgep71.1.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %688, i64 0, i64 0, i64 1
  %705 = load i8, i8* %scevgep71.1.3.2, align 1
  %conv84.i.1.3.2 = zext i8 %705 to i32
  %scevgep75.1.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %689, i64 0, i64 0, i64 1
  %706 = load i8, i8* %scevgep75.1.3.2, align 1
  %conv89.i.1.3.2 = zext i8 %706 to i32
  %xor90.i.1.3.2 = xor i32 %conv84.i.1.3.2, %conv89.i.1.3.2
  %conv91.i.1.3.2 = trunc i32 %xor90.i.1.3.2 to i8
  %scevgep78.1.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %690, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.3.2, i8* %scevgep78.1.3.2, align 1
  %scevgep59.2.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %549, i64 0, i64 0, i64 2
  %707 = load i8, i8* %scevgep59.2.3.2, align 1
  %conv44.i.2.3.2 = zext i8 %707 to i32
  %scevgep62.2.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %686, i64 0, i64 0, i64 2
  %708 = load i8, i8* %scevgep62.2.3.2, align 1
  %conv49.i.2.3.2 = zext i8 %708 to i32
  %xor.i.2.3.2 = xor i32 %conv44.i.2.3.2, %conv49.i.2.3.2
  %conv50.i.2.3.2 = trunc i32 %xor.i.2.3.2 to i8
  %scevgep66.2.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %687, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.3.2, i8* %scevgep66.2.3.2, align 1
  %709 = load i8, i8* %arrayidx56.i.3.2, align 1
  %conv57.i.2.3.2 = zext i8 %709 to i32
  %xor58.i.2.3.2 = xor i32 %conv57.i.2.3.2, 1
  %conv59.i.2.3.2 = trunc i32 %xor58.i.2.3.2 to i8
  %scevgep63.2.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %686, i64 0, i64 0, i64 2
  %710 = load i8, i8* %scevgep63.2.3.2, align 1
  %call64.i.2.3.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.3.2, i8 zeroext %710) #3
  %scevgep70.2.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %688, i64 0, i64 0, i64 2
  store i8 %call64.i.2.3.2, i8* %scevgep70.2.3.2, align 1
  %711 = load i8, i8* %arrayidx70.i.3.2, align 1
  %scevgep67.2.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %687, i64 0, i64 0, i64 2
  %712 = load i8, i8* %scevgep67.2.3.2, align 1
  %call75.i.2.3.2 = call zeroext i8 @mult(i8 zeroext %711, i8 zeroext %712) #3
  %scevgep74.2.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %689, i64 0, i64 0, i64 2
  store i8 %call75.i.2.3.2, i8* %scevgep74.2.3.2, align 1
  %scevgep71.2.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %688, i64 0, i64 0, i64 2
  %713 = load i8, i8* %scevgep71.2.3.2, align 1
  %conv84.i.2.3.2 = zext i8 %713 to i32
  %scevgep75.2.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %689, i64 0, i64 0, i64 2
  %714 = load i8, i8* %scevgep75.2.3.2, align 1
  %conv89.i.2.3.2 = zext i8 %714 to i32
  %xor90.i.2.3.2 = xor i32 %conv84.i.2.3.2, %conv89.i.2.3.2
  %conv91.i.2.3.2 = trunc i32 %xor90.i.2.3.2 to i8
  %scevgep78.2.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %690, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.3.2, i8* %scevgep78.2.3.2, align 1
  %scevgep59.4.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %549, i64 0, i64 0, i64 4
  %715 = load i8, i8* %scevgep59.4.3.2, align 1
  %conv44.i.4.3.2 = zext i8 %715 to i32
  %scevgep62.4.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %686, i64 0, i64 0, i64 4
  %716 = load i8, i8* %scevgep62.4.3.2, align 1
  %conv49.i.4.3.2 = zext i8 %716 to i32
  %xor.i.4.3.2 = xor i32 %conv44.i.4.3.2, %conv49.i.4.3.2
  %conv50.i.4.3.2 = trunc i32 %xor.i.4.3.2 to i8
  %scevgep66.4.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %687, i64 0, i64 0, i64 4
  store i8 %conv50.i.4.3.2, i8* %scevgep66.4.3.2, align 1
  %717 = load i8, i8* %arrayidx56.i.3.2, align 1
  %conv57.i.4.3.2 = zext i8 %717 to i32
  %xor58.i.4.3.2 = xor i32 %conv57.i.4.3.2, 1
  %conv59.i.4.3.2 = trunc i32 %xor58.i.4.3.2 to i8
  %scevgep63.4.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %686, i64 0, i64 0, i64 4
  %718 = load i8, i8* %scevgep63.4.3.2, align 1
  %call64.i.4.3.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.4.3.2, i8 zeroext %718) #3
  %scevgep70.4.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %688, i64 0, i64 0, i64 4
  store i8 %call64.i.4.3.2, i8* %scevgep70.4.3.2, align 1
  %719 = load i8, i8* %arrayidx70.i.3.2, align 1
  %scevgep67.4.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %687, i64 0, i64 0, i64 4
  %720 = load i8, i8* %scevgep67.4.3.2, align 1
  %call75.i.4.3.2 = call zeroext i8 @mult(i8 zeroext %719, i8 zeroext %720) #3
  %scevgep74.4.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %689, i64 0, i64 0, i64 4
  store i8 %call75.i.4.3.2, i8* %scevgep74.4.3.2, align 1
  %scevgep71.4.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %688, i64 0, i64 0, i64 4
  %721 = load i8, i8* %scevgep71.4.3.2, align 1
  %conv84.i.4.3.2 = zext i8 %721 to i32
  %scevgep75.4.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %689, i64 0, i64 0, i64 4
  %722 = load i8, i8* %scevgep75.4.3.2, align 1
  %conv89.i.4.3.2 = zext i8 %722 to i32
  %xor90.i.4.3.2 = xor i32 %conv84.i.4.3.2, %conv89.i.4.3.2
  %conv91.i.4.3.2 = trunc i32 %xor90.i.4.3.2 to i8
  %scevgep78.4.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %690, i64 0, i64 0, i64 4
  store i8 %conv91.i.4.3.2, i8* %scevgep78.4.3.2, align 1
  %scevgep61.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %686, i64 0, i64 1, i64 0
  %723 = bitcast i8* %scevgep61.3.2 to [5 x [5 x i8]]*
  %scevgep65.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %687, i64 0, i64 1, i64 0
  %724 = bitcast i8* %scevgep65.3.2 to [5 x [5 x i8]]*
  %scevgep69.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %688, i64 0, i64 1, i64 0
  %725 = bitcast i8* %scevgep69.3.2 to [5 x [5 x i8]]*
  %scevgep73.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %689, i64 0, i64 1, i64 0
  %726 = bitcast i8* %scevgep73.3.2 to [5 x [5 x i8]]*
  %scevgep77.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %690, i64 0, i64 1, i64 0
  %727 = bitcast i8* %scevgep77.3.2 to [5 x [5 x i8]]*
  %arrayidx56.i.4.2 = getelementptr inbounds i8, i8* %x, i64 4
  %arrayidx70.i.4.2 = getelementptr inbounds i8, i8* %x, i64 4
  %scevgep59.4190.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %549, i64 0, i64 0, i64 0
  %728 = load i8, i8* %scevgep59.4190.2, align 1
  %conv44.i.4191.2 = zext i8 %728 to i32
  %scevgep62.4192.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %723, i64 0, i64 0, i64 0
  %729 = load i8, i8* %scevgep62.4192.2, align 1
  %conv49.i.4193.2 = zext i8 %729 to i32
  %xor.i.4194.2 = xor i32 %conv44.i.4191.2, %conv49.i.4193.2
  %conv50.i.4195.2 = trunc i32 %xor.i.4194.2 to i8
  %scevgep66.4196.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %724, i64 0, i64 0, i64 0
  store i8 %conv50.i.4195.2, i8* %scevgep66.4196.2, align 1
  %730 = load i8, i8* %arrayidx56.i.4.2, align 1
  %conv57.i.4197.2 = zext i8 %730 to i32
  %xor58.i.4198.2 = xor i32 %conv57.i.4197.2, 1
  %conv59.i.4199.2 = trunc i32 %xor58.i.4198.2 to i8
  %scevgep63.4200.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %723, i64 0, i64 0, i64 0
  %731 = load i8, i8* %scevgep63.4200.2, align 1
  %call64.i.4201.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.4199.2, i8 zeroext %731) #3
  %scevgep70.4202.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %725, i64 0, i64 0, i64 0
  store i8 %call64.i.4201.2, i8* %scevgep70.4202.2, align 1
  %732 = load i8, i8* %arrayidx70.i.4.2, align 1
  %scevgep67.4203.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %724, i64 0, i64 0, i64 0
  %733 = load i8, i8* %scevgep67.4203.2, align 1
  %call75.i.4204.2 = call zeroext i8 @mult(i8 zeroext %732, i8 zeroext %733) #3
  %scevgep74.4205.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %726, i64 0, i64 0, i64 0
  store i8 %call75.i.4204.2, i8* %scevgep74.4205.2, align 1
  %scevgep71.4206.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %725, i64 0, i64 0, i64 0
  %734 = load i8, i8* %scevgep71.4206.2, align 1
  %conv84.i.4207.2 = zext i8 %734 to i32
  %scevgep75.4208.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %726, i64 0, i64 0, i64 0
  %735 = load i8, i8* %scevgep75.4208.2, align 1
  %conv89.i.4209.2 = zext i8 %735 to i32
  %xor90.i.4210.2 = xor i32 %conv84.i.4207.2, %conv89.i.4209.2
  %conv91.i.4211.2 = trunc i32 %xor90.i.4210.2 to i8
  %scevgep78.4212.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %727, i64 0, i64 0, i64 0
  store i8 %conv91.i.4211.2, i8* %scevgep78.4212.2, align 1
  %scevgep59.1.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %549, i64 0, i64 0, i64 1
  %736 = load i8, i8* %scevgep59.1.4.2, align 1
  %conv44.i.1.4.2 = zext i8 %736 to i32
  %scevgep62.1.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %723, i64 0, i64 0, i64 1
  %737 = load i8, i8* %scevgep62.1.4.2, align 1
  %conv49.i.1.4.2 = zext i8 %737 to i32
  %xor.i.1.4.2 = xor i32 %conv44.i.1.4.2, %conv49.i.1.4.2
  %conv50.i.1.4.2 = trunc i32 %xor.i.1.4.2 to i8
  %scevgep66.1.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %724, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.4.2, i8* %scevgep66.1.4.2, align 1
  %738 = load i8, i8* %arrayidx56.i.4.2, align 1
  %conv57.i.1.4.2 = zext i8 %738 to i32
  %xor58.i.1.4.2 = xor i32 %conv57.i.1.4.2, 1
  %conv59.i.1.4.2 = trunc i32 %xor58.i.1.4.2 to i8
  %scevgep63.1.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %723, i64 0, i64 0, i64 1
  %739 = load i8, i8* %scevgep63.1.4.2, align 1
  %call64.i.1.4.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.4.2, i8 zeroext %739) #3
  %scevgep70.1.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %725, i64 0, i64 0, i64 1
  store i8 %call64.i.1.4.2, i8* %scevgep70.1.4.2, align 1
  %740 = load i8, i8* %arrayidx70.i.4.2, align 1
  %scevgep67.1.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %724, i64 0, i64 0, i64 1
  %741 = load i8, i8* %scevgep67.1.4.2, align 1
  %call75.i.1.4.2 = call zeroext i8 @mult(i8 zeroext %740, i8 zeroext %741) #3
  %scevgep74.1.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %726, i64 0, i64 0, i64 1
  store i8 %call75.i.1.4.2, i8* %scevgep74.1.4.2, align 1
  %scevgep71.1.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %725, i64 0, i64 0, i64 1
  %742 = load i8, i8* %scevgep71.1.4.2, align 1
  %conv84.i.1.4.2 = zext i8 %742 to i32
  %scevgep75.1.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %726, i64 0, i64 0, i64 1
  %743 = load i8, i8* %scevgep75.1.4.2, align 1
  %conv89.i.1.4.2 = zext i8 %743 to i32
  %xor90.i.1.4.2 = xor i32 %conv84.i.1.4.2, %conv89.i.1.4.2
  %conv91.i.1.4.2 = trunc i32 %xor90.i.1.4.2 to i8
  %scevgep78.1.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %727, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.4.2, i8* %scevgep78.1.4.2, align 1
  %scevgep59.2.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %549, i64 0, i64 0, i64 2
  %744 = load i8, i8* %scevgep59.2.4.2, align 1
  %conv44.i.2.4.2 = zext i8 %744 to i32
  %scevgep62.2.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %723, i64 0, i64 0, i64 2
  %745 = load i8, i8* %scevgep62.2.4.2, align 1
  %conv49.i.2.4.2 = zext i8 %745 to i32
  %xor.i.2.4.2 = xor i32 %conv44.i.2.4.2, %conv49.i.2.4.2
  %conv50.i.2.4.2 = trunc i32 %xor.i.2.4.2 to i8
  %scevgep66.2.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %724, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.4.2, i8* %scevgep66.2.4.2, align 1
  %746 = load i8, i8* %arrayidx56.i.4.2, align 1
  %conv57.i.2.4.2 = zext i8 %746 to i32
  %xor58.i.2.4.2 = xor i32 %conv57.i.2.4.2, 1
  %conv59.i.2.4.2 = trunc i32 %xor58.i.2.4.2 to i8
  %scevgep63.2.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %723, i64 0, i64 0, i64 2
  %747 = load i8, i8* %scevgep63.2.4.2, align 1
  %call64.i.2.4.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.4.2, i8 zeroext %747) #3
  %scevgep70.2.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %725, i64 0, i64 0, i64 2
  store i8 %call64.i.2.4.2, i8* %scevgep70.2.4.2, align 1
  %748 = load i8, i8* %arrayidx70.i.4.2, align 1
  %scevgep67.2.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %724, i64 0, i64 0, i64 2
  %749 = load i8, i8* %scevgep67.2.4.2, align 1
  %call75.i.2.4.2 = call zeroext i8 @mult(i8 zeroext %748, i8 zeroext %749) #3
  %scevgep74.2.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %726, i64 0, i64 0, i64 2
  store i8 %call75.i.2.4.2, i8* %scevgep74.2.4.2, align 1
  %scevgep71.2.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %725, i64 0, i64 0, i64 2
  %750 = load i8, i8* %scevgep71.2.4.2, align 1
  %conv84.i.2.4.2 = zext i8 %750 to i32
  %scevgep75.2.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %726, i64 0, i64 0, i64 2
  %751 = load i8, i8* %scevgep75.2.4.2, align 1
  %conv89.i.2.4.2 = zext i8 %751 to i32
  %xor90.i.2.4.2 = xor i32 %conv84.i.2.4.2, %conv89.i.2.4.2
  %conv91.i.2.4.2 = trunc i32 %xor90.i.2.4.2 to i8
  %scevgep78.2.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %727, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.4.2, i8* %scevgep78.2.4.2, align 1
  %scevgep59.3.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %549, i64 0, i64 0, i64 3
  %752 = load i8, i8* %scevgep59.3.4.2, align 1
  %conv44.i.3.4.2 = zext i8 %752 to i32
  %scevgep62.3.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %723, i64 0, i64 0, i64 3
  %753 = load i8, i8* %scevgep62.3.4.2, align 1
  %conv49.i.3.4.2 = zext i8 %753 to i32
  %xor.i.3.4.2 = xor i32 %conv44.i.3.4.2, %conv49.i.3.4.2
  %conv50.i.3.4.2 = trunc i32 %xor.i.3.4.2 to i8
  %scevgep66.3.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %724, i64 0, i64 0, i64 3
  store i8 %conv50.i.3.4.2, i8* %scevgep66.3.4.2, align 1
  %754 = load i8, i8* %arrayidx56.i.4.2, align 1
  %conv57.i.3.4.2 = zext i8 %754 to i32
  %xor58.i.3.4.2 = xor i32 %conv57.i.3.4.2, 1
  %conv59.i.3.4.2 = trunc i32 %xor58.i.3.4.2 to i8
  %scevgep63.3.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %723, i64 0, i64 0, i64 3
  %755 = load i8, i8* %scevgep63.3.4.2, align 1
  %call64.i.3.4.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.3.4.2, i8 zeroext %755) #3
  %scevgep70.3.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %725, i64 0, i64 0, i64 3
  store i8 %call64.i.3.4.2, i8* %scevgep70.3.4.2, align 1
  %756 = load i8, i8* %arrayidx70.i.4.2, align 1
  %scevgep67.3.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %724, i64 0, i64 0, i64 3
  %757 = load i8, i8* %scevgep67.3.4.2, align 1
  %call75.i.3.4.2 = call zeroext i8 @mult(i8 zeroext %756, i8 zeroext %757) #3
  %scevgep74.3.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %726, i64 0, i64 0, i64 3
  store i8 %call75.i.3.4.2, i8* %scevgep74.3.4.2, align 1
  %scevgep71.3.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %725, i64 0, i64 0, i64 3
  %758 = load i8, i8* %scevgep71.3.4.2, align 1
  %conv84.i.3.4.2 = zext i8 %758 to i32
  %scevgep75.3.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %726, i64 0, i64 0, i64 3
  %759 = load i8, i8* %scevgep75.3.4.2, align 1
  %conv89.i.3.4.2 = zext i8 %759 to i32
  %xor90.i.3.4.2 = xor i32 %conv84.i.3.4.2, %conv89.i.3.4.2
  %conv91.i.3.4.2 = trunc i32 %xor90.i.3.4.2 to i8
  %scevgep78.3.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %727, i64 0, i64 0, i64 3
  store i8 %conv91.i.3.4.2, i8* %scevgep78.3.4.2, align 1
  %760 = load i8, i8* %x, align 1
  %761 = load i8, i8* %arraydecay7.2, align 1
  %call111.i.2597 = call zeroext i8 @mult(i8 zeroext %760, i8 zeroext %761) #3
  store i8 %call111.i.2597, i8* %arraydecay10.2, align 1
  %scevgep89.1.2606 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 1
  %762 = load i8, i8* %scevgep89.1.2606, align 1
  %conv126.i.1.2607 = zext i8 %762 to i32
  %763 = load i8, i8* %arraydecay10.2, align 1
  %conv129.i.1.2608 = zext i8 %763 to i32
  %xor130.i.1.2609 = xor i32 %conv129.i.1.2608, %conv126.i.1.2607
  %conv131.i.1.2610 = trunc i32 %xor130.i.1.2609 to i8
  store i8 %conv131.i.1.2610, i8* %arraydecay10.2, align 1
  %scevgep89.2.2613 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 2
  %764 = load i8, i8* %scevgep89.2.2613, align 1
  %conv126.i.2.2614 = zext i8 %764 to i32
  %765 = load i8, i8* %arraydecay10.2, align 1
  %conv129.i.2.2615 = zext i8 %765 to i32
  %xor130.i.2.2616 = xor i32 %conv129.i.2.2615, %conv126.i.2.2614
  %conv131.i.2.2617 = trunc i32 %xor130.i.2.2616 to i8
  store i8 %conv131.i.2.2617, i8* %arraydecay10.2, align 1
  %scevgep89.3.2620 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 3
  %766 = load i8, i8* %scevgep89.3.2620, align 1
  %conv126.i.3.2621 = zext i8 %766 to i32
  %767 = load i8, i8* %arraydecay10.2, align 1
  %conv129.i.3.2622 = zext i8 %767 to i32
  %xor130.i.3.2623 = xor i32 %conv129.i.3.2622, %conv126.i.3.2621
  %conv131.i.3.2624 = trunc i32 %xor130.i.3.2623 to i8
  store i8 %conv131.i.3.2624, i8* %arraydecay10.2, align 1
  %scevgep89.4.2627 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 4
  %768 = load i8, i8* %scevgep89.4.2627, align 1
  %conv126.i.4.2628 = zext i8 %768 to i32
  %769 = load i8, i8* %arraydecay10.2, align 1
  %conv129.i.4.2629 = zext i8 %769 to i32
  %xor130.i.4.2630 = xor i32 %conv129.i.4.2629, %conv126.i.4.2628
  %conv131.i.4.2631 = trunc i32 %xor130.i.4.2630 to i8
  store i8 %conv131.i.4.2631, i8* %arraydecay10.2, align 1
  %scevgep88.2633 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 1, i64 0
  %770 = bitcast i8* %scevgep88.2633 to [5 x [5 x i8]]*
  %arrayidx108.i.1.2 = getelementptr inbounds i8, i8* %x, i64 1
  %771 = load i8, i8* %arrayidx108.i.1.2, align 1
  %arrayidx110.i.1.2 = getelementptr inbounds i8, i8* %arraydecay7.2, i64 1
  %772 = load i8, i8* %arrayidx110.i.1.2, align 1
  %call111.i.1.2 = call zeroext i8 @mult(i8 zeroext %771, i8 zeroext %772) #3
  %arrayidx113.i.1.2 = getelementptr inbounds i8, i8* %arraydecay10.2, i64 1
  store i8 %call111.i.1.2, i8* %arrayidx113.i.1.2, align 1
  %arrayidx128.i.1.2 = getelementptr inbounds i8, i8* %arraydecay10.2, i64 1
  %scevgep89.1217.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %770, i64 0, i64 0, i64 0
  %773 = load i8, i8* %scevgep89.1217.2, align 1
  %conv126.i.1218.2 = zext i8 %773 to i32
  %774 = load i8, i8* %arrayidx128.i.1.2, align 1
  %conv129.i.1219.2 = zext i8 %774 to i32
  %xor130.i.1220.2 = xor i32 %conv129.i.1219.2, %conv126.i.1218.2
  %conv131.i.1221.2 = trunc i32 %xor130.i.1220.2 to i8
  store i8 %conv131.i.1221.2, i8* %arrayidx128.i.1.2, align 1
  %scevgep89.2.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %770, i64 0, i64 0, i64 2
  %775 = load i8, i8* %scevgep89.2.1.2, align 1
  %conv126.i.2.1.2 = zext i8 %775 to i32
  %776 = load i8, i8* %arrayidx128.i.1.2, align 1
  %conv129.i.2.1.2 = zext i8 %776 to i32
  %xor130.i.2.1.2 = xor i32 %conv129.i.2.1.2, %conv126.i.2.1.2
  %conv131.i.2.1.2 = trunc i32 %xor130.i.2.1.2 to i8
  store i8 %conv131.i.2.1.2, i8* %arrayidx128.i.1.2, align 1
  %scevgep89.3.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %770, i64 0, i64 0, i64 3
  %777 = load i8, i8* %scevgep89.3.1.2, align 1
  %conv126.i.3.1.2 = zext i8 %777 to i32
  %778 = load i8, i8* %arrayidx128.i.1.2, align 1
  %conv129.i.3.1.2 = zext i8 %778 to i32
  %xor130.i.3.1.2 = xor i32 %conv129.i.3.1.2, %conv126.i.3.1.2
  %conv131.i.3.1.2 = trunc i32 %xor130.i.3.1.2 to i8
  store i8 %conv131.i.3.1.2, i8* %arrayidx128.i.1.2, align 1
  %scevgep89.4.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %770, i64 0, i64 0, i64 4
  %779 = load i8, i8* %scevgep89.4.1.2, align 1
  %conv126.i.4.1.2 = zext i8 %779 to i32
  %780 = load i8, i8* %arrayidx128.i.1.2, align 1
  %conv129.i.4.1.2 = zext i8 %780 to i32
  %xor130.i.4.1.2 = xor i32 %conv129.i.4.1.2, %conv126.i.4.1.2
  %conv131.i.4.1.2 = trunc i32 %xor130.i.4.1.2 to i8
  store i8 %conv131.i.4.1.2, i8* %arrayidx128.i.1.2, align 1
  %scevgep88.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %770, i64 0, i64 1, i64 0
  %781 = bitcast i8* %scevgep88.1.2 to [5 x [5 x i8]]*
  %arrayidx108.i.2.2 = getelementptr inbounds i8, i8* %x, i64 2
  %782 = load i8, i8* %arrayidx108.i.2.2, align 1
  %arrayidx110.i.2.2 = getelementptr inbounds i8, i8* %arraydecay7.2, i64 2
  %783 = load i8, i8* %arrayidx110.i.2.2, align 1
  %call111.i.2.2 = call zeroext i8 @mult(i8 zeroext %782, i8 zeroext %783) #3
  %arrayidx113.i.2.2 = getelementptr inbounds i8, i8* %arraydecay10.2, i64 2
  store i8 %call111.i.2.2, i8* %arrayidx113.i.2.2, align 1
  %arrayidx128.i.2.2 = getelementptr inbounds i8, i8* %arraydecay10.2, i64 2
  %scevgep89.2226.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %781, i64 0, i64 0, i64 0
  %784 = load i8, i8* %scevgep89.2226.2, align 1
  %conv126.i.2227.2 = zext i8 %784 to i32
  %785 = load i8, i8* %arrayidx128.i.2.2, align 1
  %conv129.i.2228.2 = zext i8 %785 to i32
  %xor130.i.2229.2 = xor i32 %conv129.i.2228.2, %conv126.i.2227.2
  %conv131.i.2230.2 = trunc i32 %xor130.i.2229.2 to i8
  store i8 %conv131.i.2230.2, i8* %arrayidx128.i.2.2, align 1
  %scevgep89.1.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %781, i64 0, i64 0, i64 1
  %786 = load i8, i8* %scevgep89.1.2.2, align 1
  %conv126.i.1.2.2 = zext i8 %786 to i32
  %787 = load i8, i8* %arrayidx128.i.2.2, align 1
  %conv129.i.1.2.2 = zext i8 %787 to i32
  %xor130.i.1.2.2 = xor i32 %conv129.i.1.2.2, %conv126.i.1.2.2
  %conv131.i.1.2.2 = trunc i32 %xor130.i.1.2.2 to i8
  store i8 %conv131.i.1.2.2, i8* %arrayidx128.i.2.2, align 1
  %scevgep89.3.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %781, i64 0, i64 0, i64 3
  %788 = load i8, i8* %scevgep89.3.2.2, align 1
  %conv126.i.3.2.2 = zext i8 %788 to i32
  %789 = load i8, i8* %arrayidx128.i.2.2, align 1
  %conv129.i.3.2.2 = zext i8 %789 to i32
  %xor130.i.3.2.2 = xor i32 %conv129.i.3.2.2, %conv126.i.3.2.2
  %conv131.i.3.2.2 = trunc i32 %xor130.i.3.2.2 to i8
  store i8 %conv131.i.3.2.2, i8* %arrayidx128.i.2.2, align 1
  %scevgep89.4.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %781, i64 0, i64 0, i64 4
  %790 = load i8, i8* %scevgep89.4.2.2, align 1
  %conv126.i.4.2.2 = zext i8 %790 to i32
  %791 = load i8, i8* %arrayidx128.i.2.2, align 1
  %conv129.i.4.2.2 = zext i8 %791 to i32
  %xor130.i.4.2.2 = xor i32 %conv129.i.4.2.2, %conv126.i.4.2.2
  %conv131.i.4.2.2 = trunc i32 %xor130.i.4.2.2 to i8
  store i8 %conv131.i.4.2.2, i8* %arrayidx128.i.2.2, align 1
  %scevgep88.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %781, i64 0, i64 1, i64 0
  %792 = bitcast i8* %scevgep88.2.2 to [5 x [5 x i8]]*
  %arrayidx108.i.3.2 = getelementptr inbounds i8, i8* %x, i64 3
  %793 = load i8, i8* %arrayidx108.i.3.2, align 1
  %arrayidx110.i.3.2 = getelementptr inbounds i8, i8* %arraydecay7.2, i64 3
  %794 = load i8, i8* %arrayidx110.i.3.2, align 1
  %call111.i.3.2 = call zeroext i8 @mult(i8 zeroext %793, i8 zeroext %794) #3
  %arrayidx113.i.3.2 = getelementptr inbounds i8, i8* %arraydecay10.2, i64 3
  store i8 %call111.i.3.2, i8* %arrayidx113.i.3.2, align 1
  %arrayidx128.i.3.2 = getelementptr inbounds i8, i8* %arraydecay10.2, i64 3
  %scevgep89.3235.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %792, i64 0, i64 0, i64 0
  %795 = load i8, i8* %scevgep89.3235.2, align 1
  %conv126.i.3236.2 = zext i8 %795 to i32
  %796 = load i8, i8* %arrayidx128.i.3.2, align 1
  %conv129.i.3237.2 = zext i8 %796 to i32
  %xor130.i.3238.2 = xor i32 %conv129.i.3237.2, %conv126.i.3236.2
  %conv131.i.3239.2 = trunc i32 %xor130.i.3238.2 to i8
  store i8 %conv131.i.3239.2, i8* %arrayidx128.i.3.2, align 1
  %scevgep89.1.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %792, i64 0, i64 0, i64 1
  %797 = load i8, i8* %scevgep89.1.3.2, align 1
  %conv126.i.1.3.2 = zext i8 %797 to i32
  %798 = load i8, i8* %arrayidx128.i.3.2, align 1
  %conv129.i.1.3.2 = zext i8 %798 to i32
  %xor130.i.1.3.2 = xor i32 %conv129.i.1.3.2, %conv126.i.1.3.2
  %conv131.i.1.3.2 = trunc i32 %xor130.i.1.3.2 to i8
  store i8 %conv131.i.1.3.2, i8* %arrayidx128.i.3.2, align 1
  %scevgep89.2.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %792, i64 0, i64 0, i64 2
  %799 = load i8, i8* %scevgep89.2.3.2, align 1
  %conv126.i.2.3.2 = zext i8 %799 to i32
  %800 = load i8, i8* %arrayidx128.i.3.2, align 1
  %conv129.i.2.3.2 = zext i8 %800 to i32
  %xor130.i.2.3.2 = xor i32 %conv129.i.2.3.2, %conv126.i.2.3.2
  %conv131.i.2.3.2 = trunc i32 %xor130.i.2.3.2 to i8
  store i8 %conv131.i.2.3.2, i8* %arrayidx128.i.3.2, align 1
  %scevgep89.4.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %792, i64 0, i64 0, i64 4
  %801 = load i8, i8* %scevgep89.4.3.2, align 1
  %conv126.i.4.3.2 = zext i8 %801 to i32
  %802 = load i8, i8* %arrayidx128.i.3.2, align 1
  %conv129.i.4.3.2 = zext i8 %802 to i32
  %xor130.i.4.3.2 = xor i32 %conv129.i.4.3.2, %conv126.i.4.3.2
  %conv131.i.4.3.2 = trunc i32 %xor130.i.4.3.2 to i8
  store i8 %conv131.i.4.3.2, i8* %arrayidx128.i.3.2, align 1
  %scevgep88.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %792, i64 0, i64 1, i64 0
  %803 = bitcast i8* %scevgep88.3.2 to [5 x [5 x i8]]*
  %arrayidx108.i.4.2 = getelementptr inbounds i8, i8* %x, i64 4
  %804 = load i8, i8* %arrayidx108.i.4.2, align 1
  %arrayidx110.i.4.2 = getelementptr inbounds i8, i8* %arraydecay7.2, i64 4
  %805 = load i8, i8* %arrayidx110.i.4.2, align 1
  %call111.i.4.2 = call zeroext i8 @mult(i8 zeroext %804, i8 zeroext %805) #3
  %arrayidx113.i.4.2 = getelementptr inbounds i8, i8* %arraydecay10.2, i64 4
  store i8 %call111.i.4.2, i8* %arrayidx113.i.4.2, align 1
  %arrayidx128.i.4.2 = getelementptr inbounds i8, i8* %arraydecay10.2, i64 4
  %scevgep89.4244.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %803, i64 0, i64 0, i64 0
  %806 = load i8, i8* %scevgep89.4244.2, align 1
  %conv126.i.4245.2 = zext i8 %806 to i32
  %807 = load i8, i8* %arrayidx128.i.4.2, align 1
  %conv129.i.4246.2 = zext i8 %807 to i32
  %xor130.i.4247.2 = xor i32 %conv129.i.4246.2, %conv126.i.4245.2
  %conv131.i.4248.2 = trunc i32 %xor130.i.4247.2 to i8
  store i8 %conv131.i.4248.2, i8* %arrayidx128.i.4.2, align 1
  %scevgep89.1.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %803, i64 0, i64 0, i64 1
  %808 = load i8, i8* %scevgep89.1.4.2, align 1
  %conv126.i.1.4.2 = zext i8 %808 to i32
  %809 = load i8, i8* %arrayidx128.i.4.2, align 1
  %conv129.i.1.4.2 = zext i8 %809 to i32
  %xor130.i.1.4.2 = xor i32 %conv129.i.1.4.2, %conv126.i.1.4.2
  %conv131.i.1.4.2 = trunc i32 %xor130.i.1.4.2 to i8
  store i8 %conv131.i.1.4.2, i8* %arrayidx128.i.4.2, align 1
  %scevgep89.2.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %803, i64 0, i64 0, i64 2
  %810 = load i8, i8* %scevgep89.2.4.2, align 1
  %conv126.i.2.4.2 = zext i8 %810 to i32
  %811 = load i8, i8* %arrayidx128.i.4.2, align 1
  %conv129.i.2.4.2 = zext i8 %811 to i32
  %xor130.i.2.4.2 = xor i32 %conv129.i.2.4.2, %conv126.i.2.4.2
  %conv131.i.2.4.2 = trunc i32 %xor130.i.2.4.2 to i8
  store i8 %conv131.i.2.4.2, i8* %arrayidx128.i.4.2, align 1
  %scevgep89.3.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %803, i64 0, i64 0, i64 3
  %812 = load i8, i8* %scevgep89.3.4.2, align 1
  %conv126.i.3.4.2 = zext i8 %812 to i32
  %813 = load i8, i8* %arrayidx128.i.4.2, align 1
  %conv129.i.3.4.2 = zext i8 %813 to i32
  %xor130.i.3.4.2 = xor i32 %conv129.i.3.4.2, %conv126.i.3.4.2
  %conv131.i.3.4.2 = trunc i32 %xor130.i.3.4.2 to i8
  store i8 %conv131.i.3.4.2, i8* %arrayidx128.i.4.2, align 1
  %call139.i.2 = call zeroext i8 @mult(i8 zeroext %call.i22.2, i8 zeroext %call1.i.2) #3
  %conv140.i.2 = zext i8 %call139.i.2 to i32
  %scevgep95.2635 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %549, i64 0, i64 0, i64 0
  %scevgep96.2636 = getelementptr i8, i8* %scevgep95.2635, i64 5
  %814 = load i8, i8* %scevgep96.2636, align 1
  %scevgep95.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %549, i64 0, i64 0, i64 1
  %scevgep96.1.2 = getelementptr i8, i8* %scevgep95.1.2, i64 5
  %815 = load i8, i8* %scevgep96.1.2, align 1
  %conv.i.i172.i.1.2 = zext i8 %815 to i32
  %conv1.i.i173.i.1.2 = zext i8 %814 to i32
  %xor.i.i174.i.1.2 = xor i32 %conv1.i.i173.i.1.2, %conv.i.i172.i.1.2
  %conv2.i.i175.i.1.2 = trunc i32 %xor.i.i174.i.1.2 to i8
  %scevgep95.2.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %549, i64 0, i64 0, i64 2
  %scevgep96.2.2 = getelementptr i8, i8* %scevgep95.2.2, i64 5
  %816 = load i8, i8* %scevgep96.2.2, align 1
  %conv.i.i172.i.2.2 = zext i8 %816 to i32
  %conv1.i.i173.i.2.2 = zext i8 %conv2.i.i175.i.1.2 to i32
  %xor.i.i174.i.2.2 = xor i32 %conv1.i.i173.i.2.2, %conv.i.i172.i.2.2
  %conv2.i.i175.i.2.2 = trunc i32 %xor.i.i174.i.2.2 to i8
  %scevgep95.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %549, i64 0, i64 0, i64 3
  %scevgep96.3.2 = getelementptr i8, i8* %scevgep95.3.2, i64 5
  %817 = load i8, i8* %scevgep96.3.2, align 1
  %conv.i.i172.i.3.2 = zext i8 %817 to i32
  %conv1.i.i173.i.3.2 = zext i8 %conv2.i.i175.i.2.2 to i32
  %xor.i.i174.i.3.2 = xor i32 %conv1.i.i173.i.3.2, %conv.i.i172.i.3.2
  %conv2.i.i175.i.3.2 = trunc i32 %xor.i.i174.i.3.2 to i8
  %scevgep95.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %549, i64 0, i64 0, i64 4
  %scevgep96.4.2 = getelementptr i8, i8* %scevgep95.4.2, i64 5
  %818 = load i8, i8* %scevgep96.4.2, align 1
  %conv.i.i172.i.4.2 = zext i8 %818 to i32
  %conv1.i.i173.i.4.2 = zext i8 %conv2.i.i175.i.3.2 to i32
  %xor.i.i174.i.4.2 = xor i32 %conv1.i.i173.i.4.2, %conv.i.i172.i.4.2
  %conv2.i.i175.i.4.2 = trunc i32 %xor.i.i174.i.4.2 to i8
  %conv142.i.2 = zext i8 %conv2.i.i175.i.4.2 to i32
  %cmp143.i.2 = icmp eq i32 %conv140.i.2, %conv142.i.2
  call void @assert(i1 zeroext %cmp143.i.2) #3
  %scevgep34.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %549, i64 0, i64 1, i64 0
  %819 = bitcast i8* %scevgep34.2 to [5 x [5 x i8]]*
  %arrayidx6.3 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 3
  %arraydecay7.3 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx6.3, i64 0, i64 0
  %arrayidx9.3 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 4
  %arraydecay10.3 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx9.3, i64 0, i64 0
  %call.i22.3 = call zeroext i8 (...) @rand() #3
  %call1.i.3 = call zeroext i8 (...) @rand() #3
  %conv.i.3 = zext i8 %call.i22.3 to i32
  %820 = load i8, i8* %x, align 1
  %scevgep31.1.3 = getelementptr i8, i8* %x, i64 1
  %821 = load i8, i8* %scevgep31.1.3, align 1
  %conv.i.i.i.1.3 = zext i8 %821 to i32
  %conv1.i.i.i.1.3 = zext i8 %820 to i32
  %xor.i.i.i.1.3 = xor i32 %conv1.i.i.i.1.3, %conv.i.i.i.1.3
  %conv2.i.i.i.1.3 = trunc i32 %xor.i.i.i.1.3 to i8
  %scevgep31.2.3 = getelementptr i8, i8* %x, i64 2
  %822 = load i8, i8* %scevgep31.2.3, align 1
  %conv.i.i.i.2.3 = zext i8 %822 to i32
  %conv1.i.i.i.2.3 = zext i8 %conv2.i.i.i.1.3 to i32
  %xor.i.i.i.2.3 = xor i32 %conv1.i.i.i.2.3, %conv.i.i.i.2.3
  %conv2.i.i.i.2.3 = trunc i32 %xor.i.i.i.2.3 to i8
  %scevgep31.3.3 = getelementptr i8, i8* %x, i64 3
  %823 = load i8, i8* %scevgep31.3.3, align 1
  %conv.i.i.i.3.3 = zext i8 %823 to i32
  %conv1.i.i.i.3.3 = zext i8 %conv2.i.i.i.2.3 to i32
  %xor.i.i.i.3.3 = xor i32 %conv1.i.i.i.3.3, %conv.i.i.i.3.3
  %conv2.i.i.i.3.3 = trunc i32 %xor.i.i.i.3.3 to i8
  %scevgep31.4.3 = getelementptr i8, i8* %x, i64 4
  %824 = load i8, i8* %scevgep31.4.3, align 1
  %conv.i.i.i.4.3 = zext i8 %824 to i32
  %conv1.i.i.i.4.3 = zext i8 %conv2.i.i.i.3.3 to i32
  %xor.i.i.i.4.3 = xor i32 %conv1.i.i.i.4.3, %conv.i.i.i.4.3
  %conv2.i.i.i.4.3 = trunc i32 %xor.i.i.i.4.3 to i8
  %conv3.i.3 = zext i8 %conv2.i.i.i.4.3 to i32
  %cmp.i23.3 = icmp eq i32 %conv.i.3, %conv3.i.3
  call void @assume(i1 zeroext %cmp.i23.3) #3
  %conv5.i.3 = zext i8 %call1.i.3 to i32
  %scevgep37.3641 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %819, i64 0, i64 0, i64 0
  %825 = load i8, i8* %scevgep37.3641, align 1
  %scevgep37.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %819, i64 0, i64 0, i64 1
  %826 = load i8, i8* %scevgep37.1.3, align 1
  %conv.i.i155.i.1.3 = zext i8 %826 to i32
  %conv1.i.i156.i.1.3 = zext i8 %825 to i32
  %xor.i.i157.i.1.3 = xor i32 %conv1.i.i156.i.1.3, %conv.i.i155.i.1.3
  %conv2.i.i158.i.1.3 = trunc i32 %xor.i.i157.i.1.3 to i8
  %scevgep37.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %819, i64 0, i64 0, i64 2
  %827 = load i8, i8* %scevgep37.2.3, align 1
  %conv.i.i155.i.2.3 = zext i8 %827 to i32
  %conv1.i.i156.i.2.3 = zext i8 %conv2.i.i158.i.1.3 to i32
  %xor.i.i157.i.2.3 = xor i32 %conv1.i.i156.i.2.3, %conv.i.i155.i.2.3
  %conv2.i.i158.i.2.3 = trunc i32 %xor.i.i157.i.2.3 to i8
  %scevgep37.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %819, i64 0, i64 0, i64 3
  %828 = load i8, i8* %scevgep37.3.3, align 1
  %conv.i.i155.i.3.3 = zext i8 %828 to i32
  %conv1.i.i156.i.3.3 = zext i8 %conv2.i.i158.i.2.3 to i32
  %xor.i.i157.i.3.3 = xor i32 %conv1.i.i156.i.3.3, %conv.i.i155.i.3.3
  %conv2.i.i158.i.3.3 = trunc i32 %xor.i.i157.i.3.3 to i8
  %scevgep37.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %819, i64 0, i64 0, i64 4
  %829 = load i8, i8* %scevgep37.4.3, align 1
  %conv.i.i155.i.4.3 = zext i8 %829 to i32
  %conv1.i.i156.i.4.3 = zext i8 %conv2.i.i158.i.3.3 to i32
  %xor.i.i157.i.4.3 = xor i32 %conv1.i.i156.i.4.3, %conv.i.i155.i.4.3
  %conv2.i.i158.i.4.3 = trunc i32 %xor.i.i157.i.4.3 to i8
  %conv7.i.3 = zext i8 %conv2.i.i158.i.4.3 to i32
  %cmp8.i.3 = icmp eq i32 %conv5.i.3, %conv7.i.3
  call void @assume(i1 zeroext %cmp8.i.3) #3
  %call16.i.3650 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.3650, i8* %scevgep39, align 1
  %830 = load i8, i8* %scevgep39, align 1
  store i8 %830, i8* %scevgep46, align 1
  %scevgep44.3652 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep3940, i64 0, i64 0, i64 1
  %831 = bitcast i8* %scevgep44.3652 to [5 x [5 x i8]]*
  %scevgep51.3653 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4647, i64 0, i64 1, i64 0
  %832 = bitcast i8* %scevgep51.3653 to [5 x [5 x i8]]*
  %call16.i.3650.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.3650.1, i8* %scevgep44.3652, align 1
  %833 = load i8, i8* %scevgep44.3652, align 1
  store i8 %833, i8* %scevgep51.3653, align 1
  %scevgep44.3652.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %831, i64 0, i64 0, i64 1
  %834 = bitcast i8* %scevgep44.3652.1 to [5 x [5 x i8]]*
  %scevgep51.3653.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %832, i64 0, i64 1, i64 0
  %835 = bitcast i8* %scevgep51.3653.1 to [5 x [5 x i8]]*
  %call16.i.3650.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.3650.2, i8* %scevgep44.3652.1, align 1
  %836 = load i8, i8* %scevgep44.3652.1, align 1
  store i8 %836, i8* %scevgep51.3653.1, align 1
  %scevgep44.3652.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %834, i64 0, i64 0, i64 1
  %scevgep51.3653.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %835, i64 0, i64 1, i64 0
  %call16.i.3650.3 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.3650.3, i8* %scevgep44.3652.2, align 1
  %837 = load i8, i8* %scevgep44.3652.2, align 1
  store i8 %837, i8* %scevgep51.3653.2, align 1
  %scevgep42.3657 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep3940, i64 0, i64 1, i64 1
  %838 = bitcast i8* %scevgep42.3657 to [5 x [5 x i8]]*
  %scevgep49.3658 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep4647, i64 0, i64 1, i64 1
  %839 = bitcast i8* %scevgep49.3658 to [5 x [5 x i8]]*
  %call16.i.1.3 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1.3, i8* %scevgep42.3657, align 1
  %840 = load i8, i8* %scevgep42.3657, align 1
  store i8 %840, i8* %scevgep49.3658, align 1
  %scevgep44.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %838, i64 0, i64 0, i64 1
  %841 = bitcast i8* %scevgep44.1.3 to [5 x [5 x i8]]*
  %scevgep51.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %839, i64 0, i64 1, i64 0
  %842 = bitcast i8* %scevgep51.1.3 to [5 x [5 x i8]]*
  %call16.i.1.3.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1.3.1, i8* %scevgep44.1.3, align 1
  %843 = load i8, i8* %scevgep44.1.3, align 1
  store i8 %843, i8* %scevgep51.1.3, align 1
  %scevgep44.1.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %841, i64 0, i64 0, i64 1
  %scevgep51.1.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %842, i64 0, i64 1, i64 0
  %call16.i.1.3.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.1.3.2, i8* %scevgep44.1.3.1, align 1
  %844 = load i8, i8* %scevgep44.1.3.1, align 1
  store i8 %844, i8* %scevgep51.1.3.1, align 1
  %scevgep42.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %838, i64 0, i64 1, i64 1
  %845 = bitcast i8* %scevgep42.1.3 to [5 x [5 x i8]]*
  %scevgep49.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %839, i64 0, i64 1, i64 1
  %846 = bitcast i8* %scevgep49.1.3 to [5 x [5 x i8]]*
  %call16.i.2.3 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.2.3, i8* %scevgep42.1.3, align 1
  %847 = load i8, i8* %scevgep42.1.3, align 1
  store i8 %847, i8* %scevgep49.1.3, align 1
  %scevgep44.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %845, i64 0, i64 0, i64 1
  %scevgep51.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %846, i64 0, i64 1, i64 0
  %call16.i.2.3.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.2.3.1, i8* %scevgep44.2.3, align 1
  %848 = load i8, i8* %scevgep44.2.3, align 1
  store i8 %848, i8* %scevgep51.2.3, align 1
  %scevgep42.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %845, i64 0, i64 1, i64 1
  %scevgep49.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %846, i64 0, i64 1, i64 1
  %call16.i.3.3 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.3.3, i8* %scevgep42.2.3, align 1
  %849 = load i8, i8* %scevgep42.2.3, align 1
  store i8 %849, i8* %scevgep49.2.3, align 1
  %scevgep59.1.3686 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %819, i64 0, i64 0, i64 1
  %850 = load i8, i8* %scevgep59.1.3686, align 1
  %conv44.i.1.3687 = zext i8 %850 to i32
  %scevgep62.1.3688 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %851 = load i8, i8* %scevgep62.1.3688, align 1
  %conv49.i.1.3689 = zext i8 %851 to i32
  %xor.i.1.3690 = xor i32 %conv44.i.1.3687, %conv49.i.1.3689
  %conv50.i.1.3691 = trunc i32 %xor.i.1.3690 to i8
  %scevgep66.1.3692 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.3691, i8* %scevgep66.1.3692, align 1
  %852 = load i8, i8* %x, align 1
  %conv57.i.1.3693 = zext i8 %852 to i32
  %xor58.i.1.3694 = xor i32 %conv57.i.1.3693, 1
  %conv59.i.1.3695 = trunc i32 %xor58.i.1.3694 to i8
  %scevgep63.1.3696 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 1
  %853 = load i8, i8* %scevgep63.1.3696, align 1
  %call64.i.1.3697 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.3695, i8 zeroext %853) #3
  %scevgep70.1.3698 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i.1.3697, i8* %scevgep70.1.3698, align 1
  %854 = load i8, i8* %x, align 1
  %scevgep67.1.3699 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 1
  %855 = load i8, i8* %scevgep67.1.3699, align 1
  %call75.i.1.3700 = call zeroext i8 @mult(i8 zeroext %854, i8 zeroext %855) #3
  %scevgep74.1.3701 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i.1.3700, i8* %scevgep74.1.3701, align 1
  %scevgep71.1.3702 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %856 = load i8, i8* %scevgep71.1.3702, align 1
  %conv84.i.1.3703 = zext i8 %856 to i32
  %scevgep75.1.3704 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %857 = load i8, i8* %scevgep75.1.3704, align 1
  %conv89.i.1.3705 = zext i8 %857 to i32
  %xor90.i.1.3706 = xor i32 %conv84.i.1.3703, %conv89.i.1.3705
  %conv91.i.1.3707 = trunc i32 %xor90.i.1.3706 to i8
  %scevgep78.1.3708 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.3707, i8* %scevgep78.1.3708, align 1
  %scevgep59.2.3711 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %819, i64 0, i64 0, i64 2
  %858 = load i8, i8* %scevgep59.2.3711, align 1
  %conv44.i.2.3712 = zext i8 %858 to i32
  %scevgep62.2.3713 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 2
  %859 = load i8, i8* %scevgep62.2.3713, align 1
  %conv49.i.2.3714 = zext i8 %859 to i32
  %xor.i.2.3715 = xor i32 %conv44.i.2.3712, %conv49.i.2.3714
  %conv50.i.2.3716 = trunc i32 %xor.i.2.3715 to i8
  %scevgep66.2.3717 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.3716, i8* %scevgep66.2.3717, align 1
  %860 = load i8, i8* %x, align 1
  %conv57.i.2.3718 = zext i8 %860 to i32
  %xor58.i.2.3719 = xor i32 %conv57.i.2.3718, 1
  %conv59.i.2.3720 = trunc i32 %xor58.i.2.3719 to i8
  %scevgep63.2.3721 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 2
  %861 = load i8, i8* %scevgep63.2.3721, align 1
  %call64.i.2.3722 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.3720, i8 zeroext %861) #3
  %scevgep70.2.3723 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 2
  store i8 %call64.i.2.3722, i8* %scevgep70.2.3723, align 1
  %862 = load i8, i8* %x, align 1
  %scevgep67.2.3724 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 2
  %863 = load i8, i8* %scevgep67.2.3724, align 1
  %call75.i.2.3725 = call zeroext i8 @mult(i8 zeroext %862, i8 zeroext %863) #3
  %scevgep74.2.3726 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 2
  store i8 %call75.i.2.3725, i8* %scevgep74.2.3726, align 1
  %scevgep71.2.3727 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 2
  %864 = load i8, i8* %scevgep71.2.3727, align 1
  %conv84.i.2.3728 = zext i8 %864 to i32
  %scevgep75.2.3729 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 2
  %865 = load i8, i8* %scevgep75.2.3729, align 1
  %conv89.i.2.3730 = zext i8 %865 to i32
  %xor90.i.2.3731 = xor i32 %conv84.i.2.3728, %conv89.i.2.3730
  %conv91.i.2.3732 = trunc i32 %xor90.i.2.3731 to i8
  %scevgep78.2.3733 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.3732, i8* %scevgep78.2.3733, align 1
  %scevgep59.3.3736 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %819, i64 0, i64 0, i64 3
  %866 = load i8, i8* %scevgep59.3.3736, align 1
  %conv44.i.3.3737 = zext i8 %866 to i32
  %scevgep62.3.3738 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 3
  %867 = load i8, i8* %scevgep62.3.3738, align 1
  %conv49.i.3.3739 = zext i8 %867 to i32
  %xor.i.3.3740 = xor i32 %conv44.i.3.3737, %conv49.i.3.3739
  %conv50.i.3.3741 = trunc i32 %xor.i.3.3740 to i8
  %scevgep66.3.3742 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 3
  store i8 %conv50.i.3.3741, i8* %scevgep66.3.3742, align 1
  %868 = load i8, i8* %x, align 1
  %conv57.i.3.3743 = zext i8 %868 to i32
  %xor58.i.3.3744 = xor i32 %conv57.i.3.3743, 1
  %conv59.i.3.3745 = trunc i32 %xor58.i.3.3744 to i8
  %scevgep63.3.3746 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 3
  %869 = load i8, i8* %scevgep63.3.3746, align 1
  %call64.i.3.3747 = call zeroext i8 @mult(i8 zeroext %conv59.i.3.3745, i8 zeroext %869) #3
  %scevgep70.3.3748 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 3
  store i8 %call64.i.3.3747, i8* %scevgep70.3.3748, align 1
  %870 = load i8, i8* %x, align 1
  %scevgep67.3.3749 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 3
  %871 = load i8, i8* %scevgep67.3.3749, align 1
  %call75.i.3.3750 = call zeroext i8 @mult(i8 zeroext %870, i8 zeroext %871) #3
  %scevgep74.3.3751 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 3
  store i8 %call75.i.3.3750, i8* %scevgep74.3.3751, align 1
  %scevgep71.3.3752 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 3
  %872 = load i8, i8* %scevgep71.3.3752, align 1
  %conv84.i.3.3753 = zext i8 %872 to i32
  %scevgep75.3.3754 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 3
  %873 = load i8, i8* %scevgep75.3.3754, align 1
  %conv89.i.3.3755 = zext i8 %873 to i32
  %xor90.i.3.3756 = xor i32 %conv84.i.3.3753, %conv89.i.3.3755
  %conv91.i.3.3757 = trunc i32 %xor90.i.3.3756 to i8
  %scevgep78.3.3758 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 3
  store i8 %conv91.i.3.3757, i8* %scevgep78.3.3758, align 1
  %scevgep59.4.3761 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %819, i64 0, i64 0, i64 4
  %874 = load i8, i8* %scevgep59.4.3761, align 1
  %conv44.i.4.3762 = zext i8 %874 to i32
  %scevgep62.4.3763 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 4
  %875 = load i8, i8* %scevgep62.4.3763, align 1
  %conv49.i.4.3764 = zext i8 %875 to i32
  %xor.i.4.3765 = xor i32 %conv44.i.4.3762, %conv49.i.4.3764
  %conv50.i.4.3766 = trunc i32 %xor.i.4.3765 to i8
  %scevgep66.4.3767 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 4
  store i8 %conv50.i.4.3766, i8* %scevgep66.4.3767, align 1
  %876 = load i8, i8* %x, align 1
  %conv57.i.4.3768 = zext i8 %876 to i32
  %xor58.i.4.3769 = xor i32 %conv57.i.4.3768, 1
  %conv59.i.4.3770 = trunc i32 %xor58.i.4.3769 to i8
  %scevgep63.4.3771 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 0, i64 4
  %877 = load i8, i8* %scevgep63.4.3771, align 1
  %call64.i.4.3772 = call zeroext i8 @mult(i8 zeroext %conv59.i.4.3770, i8 zeroext %877) #3
  %scevgep70.4.3773 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 4
  store i8 %call64.i.4.3772, i8* %scevgep70.4.3773, align 1
  %878 = load i8, i8* %x, align 1
  %scevgep67.4.3774 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 0, i64 4
  %879 = load i8, i8* %scevgep67.4.3774, align 1
  %call75.i.4.3775 = call zeroext i8 @mult(i8 zeroext %878, i8 zeroext %879) #3
  %scevgep74.4.3776 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 4
  store i8 %call75.i.4.3775, i8* %scevgep74.4.3776, align 1
  %scevgep71.4.3777 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 0, i64 4
  %880 = load i8, i8* %scevgep71.4.3777, align 1
  %conv84.i.4.3778 = zext i8 %880 to i32
  %scevgep75.4.3779 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 0, i64 4
  %881 = load i8, i8* %scevgep75.4.3779, align 1
  %conv89.i.4.3780 = zext i8 %881 to i32
  %xor90.i.4.3781 = xor i32 %conv84.i.4.3778, %conv89.i.4.3780
  %conv91.i.4.3782 = trunc i32 %xor90.i.4.3781 to i8
  %scevgep78.4.3783 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 4
  store i8 %conv91.i.4.3782, i8* %scevgep78.4.3783, align 1
  %scevgep61.3785 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i, i64 0, i64 1, i64 0
  %882 = bitcast i8* %scevgep61.3785 to [5 x [5 x i8]]*
  %scevgep65.3786 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i, i64 0, i64 1, i64 0
  %883 = bitcast i8* %scevgep65.3786 to [5 x [5 x i8]]*
  %scevgep69.3787 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %884 = bitcast i8* %scevgep69.3787 to [5 x [5 x i8]]*
  %scevgep73.3788 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %885 = bitcast i8* %scevgep73.3788 to [5 x [5 x i8]]*
  %scevgep77.3789 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 1, i64 0
  %886 = bitcast i8* %scevgep77.3789 to [5 x [5 x i8]]*
  %arrayidx56.i.1.3 = getelementptr inbounds i8, i8* %x, i64 1
  %arrayidx70.i.1.3 = getelementptr inbounds i8, i8* %x, i64 1
  %scevgep59.1109.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %819, i64 0, i64 0, i64 0
  %887 = load i8, i8* %scevgep59.1109.3, align 1
  %conv44.i.1110.3 = zext i8 %887 to i32
  %scevgep62.1111.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %882, i64 0, i64 0, i64 0
  %888 = load i8, i8* %scevgep62.1111.3, align 1
  %conv49.i.1112.3 = zext i8 %888 to i32
  %xor.i.1113.3 = xor i32 %conv44.i.1110.3, %conv49.i.1112.3
  %conv50.i.1114.3 = trunc i32 %xor.i.1113.3 to i8
  %scevgep66.1115.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %883, i64 0, i64 0, i64 0
  store i8 %conv50.i.1114.3, i8* %scevgep66.1115.3, align 1
  %889 = load i8, i8* %arrayidx56.i.1.3, align 1
  %conv57.i.1116.3 = zext i8 %889 to i32
  %xor58.i.1117.3 = xor i32 %conv57.i.1116.3, 1
  %conv59.i.1118.3 = trunc i32 %xor58.i.1117.3 to i8
  %scevgep63.1119.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %882, i64 0, i64 0, i64 0
  %890 = load i8, i8* %scevgep63.1119.3, align 1
  %call64.i.1120.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.1118.3, i8 zeroext %890) #3
  %scevgep70.1121.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %884, i64 0, i64 0, i64 0
  store i8 %call64.i.1120.3, i8* %scevgep70.1121.3, align 1
  %891 = load i8, i8* %arrayidx70.i.1.3, align 1
  %scevgep67.1122.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %883, i64 0, i64 0, i64 0
  %892 = load i8, i8* %scevgep67.1122.3, align 1
  %call75.i.1123.3 = call zeroext i8 @mult(i8 zeroext %891, i8 zeroext %892) #3
  %scevgep74.1124.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %885, i64 0, i64 0, i64 0
  store i8 %call75.i.1123.3, i8* %scevgep74.1124.3, align 1
  %scevgep71.1125.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %884, i64 0, i64 0, i64 0
  %893 = load i8, i8* %scevgep71.1125.3, align 1
  %conv84.i.1126.3 = zext i8 %893 to i32
  %scevgep75.1127.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %885, i64 0, i64 0, i64 0
  %894 = load i8, i8* %scevgep75.1127.3, align 1
  %conv89.i.1128.3 = zext i8 %894 to i32
  %xor90.i.1129.3 = xor i32 %conv84.i.1126.3, %conv89.i.1128.3
  %conv91.i.1130.3 = trunc i32 %xor90.i.1129.3 to i8
  %scevgep78.1131.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %886, i64 0, i64 0, i64 0
  store i8 %conv91.i.1130.3, i8* %scevgep78.1131.3, align 1
  %scevgep59.2.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %819, i64 0, i64 0, i64 2
  %895 = load i8, i8* %scevgep59.2.1.3, align 1
  %conv44.i.2.1.3 = zext i8 %895 to i32
  %scevgep62.2.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %882, i64 0, i64 0, i64 2
  %896 = load i8, i8* %scevgep62.2.1.3, align 1
  %conv49.i.2.1.3 = zext i8 %896 to i32
  %xor.i.2.1.3 = xor i32 %conv44.i.2.1.3, %conv49.i.2.1.3
  %conv50.i.2.1.3 = trunc i32 %xor.i.2.1.3 to i8
  %scevgep66.2.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %883, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.1.3, i8* %scevgep66.2.1.3, align 1
  %897 = load i8, i8* %arrayidx56.i.1.3, align 1
  %conv57.i.2.1.3 = zext i8 %897 to i32
  %xor58.i.2.1.3 = xor i32 %conv57.i.2.1.3, 1
  %conv59.i.2.1.3 = trunc i32 %xor58.i.2.1.3 to i8
  %scevgep63.2.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %882, i64 0, i64 0, i64 2
  %898 = load i8, i8* %scevgep63.2.1.3, align 1
  %call64.i.2.1.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.1.3, i8 zeroext %898) #3
  %scevgep70.2.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %884, i64 0, i64 0, i64 2
  store i8 %call64.i.2.1.3, i8* %scevgep70.2.1.3, align 1
  %899 = load i8, i8* %arrayidx70.i.1.3, align 1
  %scevgep67.2.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %883, i64 0, i64 0, i64 2
  %900 = load i8, i8* %scevgep67.2.1.3, align 1
  %call75.i.2.1.3 = call zeroext i8 @mult(i8 zeroext %899, i8 zeroext %900) #3
  %scevgep74.2.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %885, i64 0, i64 0, i64 2
  store i8 %call75.i.2.1.3, i8* %scevgep74.2.1.3, align 1
  %scevgep71.2.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %884, i64 0, i64 0, i64 2
  %901 = load i8, i8* %scevgep71.2.1.3, align 1
  %conv84.i.2.1.3 = zext i8 %901 to i32
  %scevgep75.2.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %885, i64 0, i64 0, i64 2
  %902 = load i8, i8* %scevgep75.2.1.3, align 1
  %conv89.i.2.1.3 = zext i8 %902 to i32
  %xor90.i.2.1.3 = xor i32 %conv84.i.2.1.3, %conv89.i.2.1.3
  %conv91.i.2.1.3 = trunc i32 %xor90.i.2.1.3 to i8
  %scevgep78.2.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %886, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.1.3, i8* %scevgep78.2.1.3, align 1
  %scevgep59.3.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %819, i64 0, i64 0, i64 3
  %903 = load i8, i8* %scevgep59.3.1.3, align 1
  %conv44.i.3.1.3 = zext i8 %903 to i32
  %scevgep62.3.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %882, i64 0, i64 0, i64 3
  %904 = load i8, i8* %scevgep62.3.1.3, align 1
  %conv49.i.3.1.3 = zext i8 %904 to i32
  %xor.i.3.1.3 = xor i32 %conv44.i.3.1.3, %conv49.i.3.1.3
  %conv50.i.3.1.3 = trunc i32 %xor.i.3.1.3 to i8
  %scevgep66.3.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %883, i64 0, i64 0, i64 3
  store i8 %conv50.i.3.1.3, i8* %scevgep66.3.1.3, align 1
  %905 = load i8, i8* %arrayidx56.i.1.3, align 1
  %conv57.i.3.1.3 = zext i8 %905 to i32
  %xor58.i.3.1.3 = xor i32 %conv57.i.3.1.3, 1
  %conv59.i.3.1.3 = trunc i32 %xor58.i.3.1.3 to i8
  %scevgep63.3.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %882, i64 0, i64 0, i64 3
  %906 = load i8, i8* %scevgep63.3.1.3, align 1
  %call64.i.3.1.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.3.1.3, i8 zeroext %906) #3
  %scevgep70.3.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %884, i64 0, i64 0, i64 3
  store i8 %call64.i.3.1.3, i8* %scevgep70.3.1.3, align 1
  %907 = load i8, i8* %arrayidx70.i.1.3, align 1
  %scevgep67.3.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %883, i64 0, i64 0, i64 3
  %908 = load i8, i8* %scevgep67.3.1.3, align 1
  %call75.i.3.1.3 = call zeroext i8 @mult(i8 zeroext %907, i8 zeroext %908) #3
  %scevgep74.3.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %885, i64 0, i64 0, i64 3
  store i8 %call75.i.3.1.3, i8* %scevgep74.3.1.3, align 1
  %scevgep71.3.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %884, i64 0, i64 0, i64 3
  %909 = load i8, i8* %scevgep71.3.1.3, align 1
  %conv84.i.3.1.3 = zext i8 %909 to i32
  %scevgep75.3.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %885, i64 0, i64 0, i64 3
  %910 = load i8, i8* %scevgep75.3.1.3, align 1
  %conv89.i.3.1.3 = zext i8 %910 to i32
  %xor90.i.3.1.3 = xor i32 %conv84.i.3.1.3, %conv89.i.3.1.3
  %conv91.i.3.1.3 = trunc i32 %xor90.i.3.1.3 to i8
  %scevgep78.3.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %886, i64 0, i64 0, i64 3
  store i8 %conv91.i.3.1.3, i8* %scevgep78.3.1.3, align 1
  %scevgep59.4.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %819, i64 0, i64 0, i64 4
  %911 = load i8, i8* %scevgep59.4.1.3, align 1
  %conv44.i.4.1.3 = zext i8 %911 to i32
  %scevgep62.4.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %882, i64 0, i64 0, i64 4
  %912 = load i8, i8* %scevgep62.4.1.3, align 1
  %conv49.i.4.1.3 = zext i8 %912 to i32
  %xor.i.4.1.3 = xor i32 %conv44.i.4.1.3, %conv49.i.4.1.3
  %conv50.i.4.1.3 = trunc i32 %xor.i.4.1.3 to i8
  %scevgep66.4.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %883, i64 0, i64 0, i64 4
  store i8 %conv50.i.4.1.3, i8* %scevgep66.4.1.3, align 1
  %913 = load i8, i8* %arrayidx56.i.1.3, align 1
  %conv57.i.4.1.3 = zext i8 %913 to i32
  %xor58.i.4.1.3 = xor i32 %conv57.i.4.1.3, 1
  %conv59.i.4.1.3 = trunc i32 %xor58.i.4.1.3 to i8
  %scevgep63.4.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %882, i64 0, i64 0, i64 4
  %914 = load i8, i8* %scevgep63.4.1.3, align 1
  %call64.i.4.1.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.4.1.3, i8 zeroext %914) #3
  %scevgep70.4.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %884, i64 0, i64 0, i64 4
  store i8 %call64.i.4.1.3, i8* %scevgep70.4.1.3, align 1
  %915 = load i8, i8* %arrayidx70.i.1.3, align 1
  %scevgep67.4.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %883, i64 0, i64 0, i64 4
  %916 = load i8, i8* %scevgep67.4.1.3, align 1
  %call75.i.4.1.3 = call zeroext i8 @mult(i8 zeroext %915, i8 zeroext %916) #3
  %scevgep74.4.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %885, i64 0, i64 0, i64 4
  store i8 %call75.i.4.1.3, i8* %scevgep74.4.1.3, align 1
  %scevgep71.4.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %884, i64 0, i64 0, i64 4
  %917 = load i8, i8* %scevgep71.4.1.3, align 1
  %conv84.i.4.1.3 = zext i8 %917 to i32
  %scevgep75.4.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %885, i64 0, i64 0, i64 4
  %918 = load i8, i8* %scevgep75.4.1.3, align 1
  %conv89.i.4.1.3 = zext i8 %918 to i32
  %xor90.i.4.1.3 = xor i32 %conv84.i.4.1.3, %conv89.i.4.1.3
  %conv91.i.4.1.3 = trunc i32 %xor90.i.4.1.3 to i8
  %scevgep78.4.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %886, i64 0, i64 0, i64 4
  store i8 %conv91.i.4.1.3, i8* %scevgep78.4.1.3, align 1
  %scevgep61.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %882, i64 0, i64 1, i64 0
  %919 = bitcast i8* %scevgep61.1.3 to [5 x [5 x i8]]*
  %scevgep65.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %883, i64 0, i64 1, i64 0
  %920 = bitcast i8* %scevgep65.1.3 to [5 x [5 x i8]]*
  %scevgep69.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %884, i64 0, i64 1, i64 0
  %921 = bitcast i8* %scevgep69.1.3 to [5 x [5 x i8]]*
  %scevgep73.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %885, i64 0, i64 1, i64 0
  %922 = bitcast i8* %scevgep73.1.3 to [5 x [5 x i8]]*
  %scevgep77.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %886, i64 0, i64 1, i64 0
  %923 = bitcast i8* %scevgep77.1.3 to [5 x [5 x i8]]*
  %arrayidx56.i.2.3 = getelementptr inbounds i8, i8* %x, i64 2
  %arrayidx70.i.2.3 = getelementptr inbounds i8, i8* %x, i64 2
  %scevgep59.2136.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %819, i64 0, i64 0, i64 0
  %924 = load i8, i8* %scevgep59.2136.3, align 1
  %conv44.i.2137.3 = zext i8 %924 to i32
  %scevgep62.2138.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %919, i64 0, i64 0, i64 0
  %925 = load i8, i8* %scevgep62.2138.3, align 1
  %conv49.i.2139.3 = zext i8 %925 to i32
  %xor.i.2140.3 = xor i32 %conv44.i.2137.3, %conv49.i.2139.3
  %conv50.i.2141.3 = trunc i32 %xor.i.2140.3 to i8
  %scevgep66.2142.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %920, i64 0, i64 0, i64 0
  store i8 %conv50.i.2141.3, i8* %scevgep66.2142.3, align 1
  %926 = load i8, i8* %arrayidx56.i.2.3, align 1
  %conv57.i.2143.3 = zext i8 %926 to i32
  %xor58.i.2144.3 = xor i32 %conv57.i.2143.3, 1
  %conv59.i.2145.3 = trunc i32 %xor58.i.2144.3 to i8
  %scevgep63.2146.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %919, i64 0, i64 0, i64 0
  %927 = load i8, i8* %scevgep63.2146.3, align 1
  %call64.i.2147.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.2145.3, i8 zeroext %927) #3
  %scevgep70.2148.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %921, i64 0, i64 0, i64 0
  store i8 %call64.i.2147.3, i8* %scevgep70.2148.3, align 1
  %928 = load i8, i8* %arrayidx70.i.2.3, align 1
  %scevgep67.2149.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %920, i64 0, i64 0, i64 0
  %929 = load i8, i8* %scevgep67.2149.3, align 1
  %call75.i.2150.3 = call zeroext i8 @mult(i8 zeroext %928, i8 zeroext %929) #3
  %scevgep74.2151.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %922, i64 0, i64 0, i64 0
  store i8 %call75.i.2150.3, i8* %scevgep74.2151.3, align 1
  %scevgep71.2152.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %921, i64 0, i64 0, i64 0
  %930 = load i8, i8* %scevgep71.2152.3, align 1
  %conv84.i.2153.3 = zext i8 %930 to i32
  %scevgep75.2154.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %922, i64 0, i64 0, i64 0
  %931 = load i8, i8* %scevgep75.2154.3, align 1
  %conv89.i.2155.3 = zext i8 %931 to i32
  %xor90.i.2156.3 = xor i32 %conv84.i.2153.3, %conv89.i.2155.3
  %conv91.i.2157.3 = trunc i32 %xor90.i.2156.3 to i8
  %scevgep78.2158.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %923, i64 0, i64 0, i64 0
  store i8 %conv91.i.2157.3, i8* %scevgep78.2158.3, align 1
  %scevgep59.1.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %819, i64 0, i64 0, i64 1
  %932 = load i8, i8* %scevgep59.1.2.3, align 1
  %conv44.i.1.2.3 = zext i8 %932 to i32
  %scevgep62.1.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %919, i64 0, i64 0, i64 1
  %933 = load i8, i8* %scevgep62.1.2.3, align 1
  %conv49.i.1.2.3 = zext i8 %933 to i32
  %xor.i.1.2.3 = xor i32 %conv44.i.1.2.3, %conv49.i.1.2.3
  %conv50.i.1.2.3 = trunc i32 %xor.i.1.2.3 to i8
  %scevgep66.1.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %920, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.2.3, i8* %scevgep66.1.2.3, align 1
  %934 = load i8, i8* %arrayidx56.i.2.3, align 1
  %conv57.i.1.2.3 = zext i8 %934 to i32
  %xor58.i.1.2.3 = xor i32 %conv57.i.1.2.3, 1
  %conv59.i.1.2.3 = trunc i32 %xor58.i.1.2.3 to i8
  %scevgep63.1.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %919, i64 0, i64 0, i64 1
  %935 = load i8, i8* %scevgep63.1.2.3, align 1
  %call64.i.1.2.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.2.3, i8 zeroext %935) #3
  %scevgep70.1.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %921, i64 0, i64 0, i64 1
  store i8 %call64.i.1.2.3, i8* %scevgep70.1.2.3, align 1
  %936 = load i8, i8* %arrayidx70.i.2.3, align 1
  %scevgep67.1.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %920, i64 0, i64 0, i64 1
  %937 = load i8, i8* %scevgep67.1.2.3, align 1
  %call75.i.1.2.3 = call zeroext i8 @mult(i8 zeroext %936, i8 zeroext %937) #3
  %scevgep74.1.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %922, i64 0, i64 0, i64 1
  store i8 %call75.i.1.2.3, i8* %scevgep74.1.2.3, align 1
  %scevgep71.1.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %921, i64 0, i64 0, i64 1
  %938 = load i8, i8* %scevgep71.1.2.3, align 1
  %conv84.i.1.2.3 = zext i8 %938 to i32
  %scevgep75.1.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %922, i64 0, i64 0, i64 1
  %939 = load i8, i8* %scevgep75.1.2.3, align 1
  %conv89.i.1.2.3 = zext i8 %939 to i32
  %xor90.i.1.2.3 = xor i32 %conv84.i.1.2.3, %conv89.i.1.2.3
  %conv91.i.1.2.3 = trunc i32 %xor90.i.1.2.3 to i8
  %scevgep78.1.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %923, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.2.3, i8* %scevgep78.1.2.3, align 1
  %scevgep59.3.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %819, i64 0, i64 0, i64 3
  %940 = load i8, i8* %scevgep59.3.2.3, align 1
  %conv44.i.3.2.3 = zext i8 %940 to i32
  %scevgep62.3.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %919, i64 0, i64 0, i64 3
  %941 = load i8, i8* %scevgep62.3.2.3, align 1
  %conv49.i.3.2.3 = zext i8 %941 to i32
  %xor.i.3.2.3 = xor i32 %conv44.i.3.2.3, %conv49.i.3.2.3
  %conv50.i.3.2.3 = trunc i32 %xor.i.3.2.3 to i8
  %scevgep66.3.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %920, i64 0, i64 0, i64 3
  store i8 %conv50.i.3.2.3, i8* %scevgep66.3.2.3, align 1
  %942 = load i8, i8* %arrayidx56.i.2.3, align 1
  %conv57.i.3.2.3 = zext i8 %942 to i32
  %xor58.i.3.2.3 = xor i32 %conv57.i.3.2.3, 1
  %conv59.i.3.2.3 = trunc i32 %xor58.i.3.2.3 to i8
  %scevgep63.3.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %919, i64 0, i64 0, i64 3
  %943 = load i8, i8* %scevgep63.3.2.3, align 1
  %call64.i.3.2.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.3.2.3, i8 zeroext %943) #3
  %scevgep70.3.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %921, i64 0, i64 0, i64 3
  store i8 %call64.i.3.2.3, i8* %scevgep70.3.2.3, align 1
  %944 = load i8, i8* %arrayidx70.i.2.3, align 1
  %scevgep67.3.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %920, i64 0, i64 0, i64 3
  %945 = load i8, i8* %scevgep67.3.2.3, align 1
  %call75.i.3.2.3 = call zeroext i8 @mult(i8 zeroext %944, i8 zeroext %945) #3
  %scevgep74.3.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %922, i64 0, i64 0, i64 3
  store i8 %call75.i.3.2.3, i8* %scevgep74.3.2.3, align 1
  %scevgep71.3.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %921, i64 0, i64 0, i64 3
  %946 = load i8, i8* %scevgep71.3.2.3, align 1
  %conv84.i.3.2.3 = zext i8 %946 to i32
  %scevgep75.3.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %922, i64 0, i64 0, i64 3
  %947 = load i8, i8* %scevgep75.3.2.3, align 1
  %conv89.i.3.2.3 = zext i8 %947 to i32
  %xor90.i.3.2.3 = xor i32 %conv84.i.3.2.3, %conv89.i.3.2.3
  %conv91.i.3.2.3 = trunc i32 %xor90.i.3.2.3 to i8
  %scevgep78.3.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %923, i64 0, i64 0, i64 3
  store i8 %conv91.i.3.2.3, i8* %scevgep78.3.2.3, align 1
  %scevgep59.4.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %819, i64 0, i64 0, i64 4
  %948 = load i8, i8* %scevgep59.4.2.3, align 1
  %conv44.i.4.2.3 = zext i8 %948 to i32
  %scevgep62.4.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %919, i64 0, i64 0, i64 4
  %949 = load i8, i8* %scevgep62.4.2.3, align 1
  %conv49.i.4.2.3 = zext i8 %949 to i32
  %xor.i.4.2.3 = xor i32 %conv44.i.4.2.3, %conv49.i.4.2.3
  %conv50.i.4.2.3 = trunc i32 %xor.i.4.2.3 to i8
  %scevgep66.4.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %920, i64 0, i64 0, i64 4
  store i8 %conv50.i.4.2.3, i8* %scevgep66.4.2.3, align 1
  %950 = load i8, i8* %arrayidx56.i.2.3, align 1
  %conv57.i.4.2.3 = zext i8 %950 to i32
  %xor58.i.4.2.3 = xor i32 %conv57.i.4.2.3, 1
  %conv59.i.4.2.3 = trunc i32 %xor58.i.4.2.3 to i8
  %scevgep63.4.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %919, i64 0, i64 0, i64 4
  %951 = load i8, i8* %scevgep63.4.2.3, align 1
  %call64.i.4.2.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.4.2.3, i8 zeroext %951) #3
  %scevgep70.4.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %921, i64 0, i64 0, i64 4
  store i8 %call64.i.4.2.3, i8* %scevgep70.4.2.3, align 1
  %952 = load i8, i8* %arrayidx70.i.2.3, align 1
  %scevgep67.4.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %920, i64 0, i64 0, i64 4
  %953 = load i8, i8* %scevgep67.4.2.3, align 1
  %call75.i.4.2.3 = call zeroext i8 @mult(i8 zeroext %952, i8 zeroext %953) #3
  %scevgep74.4.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %922, i64 0, i64 0, i64 4
  store i8 %call75.i.4.2.3, i8* %scevgep74.4.2.3, align 1
  %scevgep71.4.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %921, i64 0, i64 0, i64 4
  %954 = load i8, i8* %scevgep71.4.2.3, align 1
  %conv84.i.4.2.3 = zext i8 %954 to i32
  %scevgep75.4.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %922, i64 0, i64 0, i64 4
  %955 = load i8, i8* %scevgep75.4.2.3, align 1
  %conv89.i.4.2.3 = zext i8 %955 to i32
  %xor90.i.4.2.3 = xor i32 %conv84.i.4.2.3, %conv89.i.4.2.3
  %conv91.i.4.2.3 = trunc i32 %xor90.i.4.2.3 to i8
  %scevgep78.4.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %923, i64 0, i64 0, i64 4
  store i8 %conv91.i.4.2.3, i8* %scevgep78.4.2.3, align 1
  %scevgep61.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %919, i64 0, i64 1, i64 0
  %956 = bitcast i8* %scevgep61.2.3 to [5 x [5 x i8]]*
  %scevgep65.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %920, i64 0, i64 1, i64 0
  %957 = bitcast i8* %scevgep65.2.3 to [5 x [5 x i8]]*
  %scevgep69.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %921, i64 0, i64 1, i64 0
  %958 = bitcast i8* %scevgep69.2.3 to [5 x [5 x i8]]*
  %scevgep73.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %922, i64 0, i64 1, i64 0
  %959 = bitcast i8* %scevgep73.2.3 to [5 x [5 x i8]]*
  %scevgep77.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %923, i64 0, i64 1, i64 0
  %960 = bitcast i8* %scevgep77.2.3 to [5 x [5 x i8]]*
  %arrayidx56.i.3.3 = getelementptr inbounds i8, i8* %x, i64 3
  %arrayidx70.i.3.3 = getelementptr inbounds i8, i8* %x, i64 3
  %scevgep59.3163.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %819, i64 0, i64 0, i64 0
  %961 = load i8, i8* %scevgep59.3163.3, align 1
  %conv44.i.3164.3 = zext i8 %961 to i32
  %scevgep62.3165.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %956, i64 0, i64 0, i64 0
  %962 = load i8, i8* %scevgep62.3165.3, align 1
  %conv49.i.3166.3 = zext i8 %962 to i32
  %xor.i.3167.3 = xor i32 %conv44.i.3164.3, %conv49.i.3166.3
  %conv50.i.3168.3 = trunc i32 %xor.i.3167.3 to i8
  %scevgep66.3169.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %957, i64 0, i64 0, i64 0
  store i8 %conv50.i.3168.3, i8* %scevgep66.3169.3, align 1
  %963 = load i8, i8* %arrayidx56.i.3.3, align 1
  %conv57.i.3170.3 = zext i8 %963 to i32
  %xor58.i.3171.3 = xor i32 %conv57.i.3170.3, 1
  %conv59.i.3172.3 = trunc i32 %xor58.i.3171.3 to i8
  %scevgep63.3173.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %956, i64 0, i64 0, i64 0
  %964 = load i8, i8* %scevgep63.3173.3, align 1
  %call64.i.3174.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.3172.3, i8 zeroext %964) #3
  %scevgep70.3175.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %958, i64 0, i64 0, i64 0
  store i8 %call64.i.3174.3, i8* %scevgep70.3175.3, align 1
  %965 = load i8, i8* %arrayidx70.i.3.3, align 1
  %scevgep67.3176.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %957, i64 0, i64 0, i64 0
  %966 = load i8, i8* %scevgep67.3176.3, align 1
  %call75.i.3177.3 = call zeroext i8 @mult(i8 zeroext %965, i8 zeroext %966) #3
  %scevgep74.3178.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %959, i64 0, i64 0, i64 0
  store i8 %call75.i.3177.3, i8* %scevgep74.3178.3, align 1
  %scevgep71.3179.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %958, i64 0, i64 0, i64 0
  %967 = load i8, i8* %scevgep71.3179.3, align 1
  %conv84.i.3180.3 = zext i8 %967 to i32
  %scevgep75.3181.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %959, i64 0, i64 0, i64 0
  %968 = load i8, i8* %scevgep75.3181.3, align 1
  %conv89.i.3182.3 = zext i8 %968 to i32
  %xor90.i.3183.3 = xor i32 %conv84.i.3180.3, %conv89.i.3182.3
  %conv91.i.3184.3 = trunc i32 %xor90.i.3183.3 to i8
  %scevgep78.3185.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %960, i64 0, i64 0, i64 0
  store i8 %conv91.i.3184.3, i8* %scevgep78.3185.3, align 1
  %scevgep59.1.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %819, i64 0, i64 0, i64 1
  %969 = load i8, i8* %scevgep59.1.3.3, align 1
  %conv44.i.1.3.3 = zext i8 %969 to i32
  %scevgep62.1.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %956, i64 0, i64 0, i64 1
  %970 = load i8, i8* %scevgep62.1.3.3, align 1
  %conv49.i.1.3.3 = zext i8 %970 to i32
  %xor.i.1.3.3 = xor i32 %conv44.i.1.3.3, %conv49.i.1.3.3
  %conv50.i.1.3.3 = trunc i32 %xor.i.1.3.3 to i8
  %scevgep66.1.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %957, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.3.3, i8* %scevgep66.1.3.3, align 1
  %971 = load i8, i8* %arrayidx56.i.3.3, align 1
  %conv57.i.1.3.3 = zext i8 %971 to i32
  %xor58.i.1.3.3 = xor i32 %conv57.i.1.3.3, 1
  %conv59.i.1.3.3 = trunc i32 %xor58.i.1.3.3 to i8
  %scevgep63.1.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %956, i64 0, i64 0, i64 1
  %972 = load i8, i8* %scevgep63.1.3.3, align 1
  %call64.i.1.3.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.3.3, i8 zeroext %972) #3
  %scevgep70.1.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %958, i64 0, i64 0, i64 1
  store i8 %call64.i.1.3.3, i8* %scevgep70.1.3.3, align 1
  %973 = load i8, i8* %arrayidx70.i.3.3, align 1
  %scevgep67.1.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %957, i64 0, i64 0, i64 1
  %974 = load i8, i8* %scevgep67.1.3.3, align 1
  %call75.i.1.3.3 = call zeroext i8 @mult(i8 zeroext %973, i8 zeroext %974) #3
  %scevgep74.1.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %959, i64 0, i64 0, i64 1
  store i8 %call75.i.1.3.3, i8* %scevgep74.1.3.3, align 1
  %scevgep71.1.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %958, i64 0, i64 0, i64 1
  %975 = load i8, i8* %scevgep71.1.3.3, align 1
  %conv84.i.1.3.3 = zext i8 %975 to i32
  %scevgep75.1.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %959, i64 0, i64 0, i64 1
  %976 = load i8, i8* %scevgep75.1.3.3, align 1
  %conv89.i.1.3.3 = zext i8 %976 to i32
  %xor90.i.1.3.3 = xor i32 %conv84.i.1.3.3, %conv89.i.1.3.3
  %conv91.i.1.3.3 = trunc i32 %xor90.i.1.3.3 to i8
  %scevgep78.1.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %960, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.3.3, i8* %scevgep78.1.3.3, align 1
  %scevgep59.2.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %819, i64 0, i64 0, i64 2
  %977 = load i8, i8* %scevgep59.2.3.3, align 1
  %conv44.i.2.3.3 = zext i8 %977 to i32
  %scevgep62.2.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %956, i64 0, i64 0, i64 2
  %978 = load i8, i8* %scevgep62.2.3.3, align 1
  %conv49.i.2.3.3 = zext i8 %978 to i32
  %xor.i.2.3.3 = xor i32 %conv44.i.2.3.3, %conv49.i.2.3.3
  %conv50.i.2.3.3 = trunc i32 %xor.i.2.3.3 to i8
  %scevgep66.2.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %957, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.3.3, i8* %scevgep66.2.3.3, align 1
  %979 = load i8, i8* %arrayidx56.i.3.3, align 1
  %conv57.i.2.3.3 = zext i8 %979 to i32
  %xor58.i.2.3.3 = xor i32 %conv57.i.2.3.3, 1
  %conv59.i.2.3.3 = trunc i32 %xor58.i.2.3.3 to i8
  %scevgep63.2.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %956, i64 0, i64 0, i64 2
  %980 = load i8, i8* %scevgep63.2.3.3, align 1
  %call64.i.2.3.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.3.3, i8 zeroext %980) #3
  %scevgep70.2.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %958, i64 0, i64 0, i64 2
  store i8 %call64.i.2.3.3, i8* %scevgep70.2.3.3, align 1
  %981 = load i8, i8* %arrayidx70.i.3.3, align 1
  %scevgep67.2.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %957, i64 0, i64 0, i64 2
  %982 = load i8, i8* %scevgep67.2.3.3, align 1
  %call75.i.2.3.3 = call zeroext i8 @mult(i8 zeroext %981, i8 zeroext %982) #3
  %scevgep74.2.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %959, i64 0, i64 0, i64 2
  store i8 %call75.i.2.3.3, i8* %scevgep74.2.3.3, align 1
  %scevgep71.2.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %958, i64 0, i64 0, i64 2
  %983 = load i8, i8* %scevgep71.2.3.3, align 1
  %conv84.i.2.3.3 = zext i8 %983 to i32
  %scevgep75.2.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %959, i64 0, i64 0, i64 2
  %984 = load i8, i8* %scevgep75.2.3.3, align 1
  %conv89.i.2.3.3 = zext i8 %984 to i32
  %xor90.i.2.3.3 = xor i32 %conv84.i.2.3.3, %conv89.i.2.3.3
  %conv91.i.2.3.3 = trunc i32 %xor90.i.2.3.3 to i8
  %scevgep78.2.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %960, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.3.3, i8* %scevgep78.2.3.3, align 1
  %scevgep59.4.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %819, i64 0, i64 0, i64 4
  %985 = load i8, i8* %scevgep59.4.3.3, align 1
  %conv44.i.4.3.3 = zext i8 %985 to i32
  %scevgep62.4.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %956, i64 0, i64 0, i64 4
  %986 = load i8, i8* %scevgep62.4.3.3, align 1
  %conv49.i.4.3.3 = zext i8 %986 to i32
  %xor.i.4.3.3 = xor i32 %conv44.i.4.3.3, %conv49.i.4.3.3
  %conv50.i.4.3.3 = trunc i32 %xor.i.4.3.3 to i8
  %scevgep66.4.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %957, i64 0, i64 0, i64 4
  store i8 %conv50.i.4.3.3, i8* %scevgep66.4.3.3, align 1
  %987 = load i8, i8* %arrayidx56.i.3.3, align 1
  %conv57.i.4.3.3 = zext i8 %987 to i32
  %xor58.i.4.3.3 = xor i32 %conv57.i.4.3.3, 1
  %conv59.i.4.3.3 = trunc i32 %xor58.i.4.3.3 to i8
  %scevgep63.4.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %956, i64 0, i64 0, i64 4
  %988 = load i8, i8* %scevgep63.4.3.3, align 1
  %call64.i.4.3.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.4.3.3, i8 zeroext %988) #3
  %scevgep70.4.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %958, i64 0, i64 0, i64 4
  store i8 %call64.i.4.3.3, i8* %scevgep70.4.3.3, align 1
  %989 = load i8, i8* %arrayidx70.i.3.3, align 1
  %scevgep67.4.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %957, i64 0, i64 0, i64 4
  %990 = load i8, i8* %scevgep67.4.3.3, align 1
  %call75.i.4.3.3 = call zeroext i8 @mult(i8 zeroext %989, i8 zeroext %990) #3
  %scevgep74.4.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %959, i64 0, i64 0, i64 4
  store i8 %call75.i.4.3.3, i8* %scevgep74.4.3.3, align 1
  %scevgep71.4.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %958, i64 0, i64 0, i64 4
  %991 = load i8, i8* %scevgep71.4.3.3, align 1
  %conv84.i.4.3.3 = zext i8 %991 to i32
  %scevgep75.4.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %959, i64 0, i64 0, i64 4
  %992 = load i8, i8* %scevgep75.4.3.3, align 1
  %conv89.i.4.3.3 = zext i8 %992 to i32
  %xor90.i.4.3.3 = xor i32 %conv84.i.4.3.3, %conv89.i.4.3.3
  %conv91.i.4.3.3 = trunc i32 %xor90.i.4.3.3 to i8
  %scevgep78.4.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %960, i64 0, i64 0, i64 4
  store i8 %conv91.i.4.3.3, i8* %scevgep78.4.3.3, align 1
  %scevgep61.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %956, i64 0, i64 1, i64 0
  %993 = bitcast i8* %scevgep61.3.3 to [5 x [5 x i8]]*
  %scevgep65.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %957, i64 0, i64 1, i64 0
  %994 = bitcast i8* %scevgep65.3.3 to [5 x [5 x i8]]*
  %scevgep69.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %958, i64 0, i64 1, i64 0
  %995 = bitcast i8* %scevgep69.3.3 to [5 x [5 x i8]]*
  %scevgep73.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %959, i64 0, i64 1, i64 0
  %996 = bitcast i8* %scevgep73.3.3 to [5 x [5 x i8]]*
  %scevgep77.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %960, i64 0, i64 1, i64 0
  %997 = bitcast i8* %scevgep77.3.3 to [5 x [5 x i8]]*
  %arrayidx56.i.4.3 = getelementptr inbounds i8, i8* %x, i64 4
  %arrayidx70.i.4.3 = getelementptr inbounds i8, i8* %x, i64 4
  %scevgep59.4190.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %819, i64 0, i64 0, i64 0
  %998 = load i8, i8* %scevgep59.4190.3, align 1
  %conv44.i.4191.3 = zext i8 %998 to i32
  %scevgep62.4192.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %993, i64 0, i64 0, i64 0
  %999 = load i8, i8* %scevgep62.4192.3, align 1
  %conv49.i.4193.3 = zext i8 %999 to i32
  %xor.i.4194.3 = xor i32 %conv44.i.4191.3, %conv49.i.4193.3
  %conv50.i.4195.3 = trunc i32 %xor.i.4194.3 to i8
  %scevgep66.4196.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %994, i64 0, i64 0, i64 0
  store i8 %conv50.i.4195.3, i8* %scevgep66.4196.3, align 1
  %1000 = load i8, i8* %arrayidx56.i.4.3, align 1
  %conv57.i.4197.3 = zext i8 %1000 to i32
  %xor58.i.4198.3 = xor i32 %conv57.i.4197.3, 1
  %conv59.i.4199.3 = trunc i32 %xor58.i.4198.3 to i8
  %scevgep63.4200.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %993, i64 0, i64 0, i64 0
  %1001 = load i8, i8* %scevgep63.4200.3, align 1
  %call64.i.4201.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.4199.3, i8 zeroext %1001) #3
  %scevgep70.4202.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %995, i64 0, i64 0, i64 0
  store i8 %call64.i.4201.3, i8* %scevgep70.4202.3, align 1
  %1002 = load i8, i8* %arrayidx70.i.4.3, align 1
  %scevgep67.4203.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %994, i64 0, i64 0, i64 0
  %1003 = load i8, i8* %scevgep67.4203.3, align 1
  %call75.i.4204.3 = call zeroext i8 @mult(i8 zeroext %1002, i8 zeroext %1003) #3
  %scevgep74.4205.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %996, i64 0, i64 0, i64 0
  store i8 %call75.i.4204.3, i8* %scevgep74.4205.3, align 1
  %scevgep71.4206.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %995, i64 0, i64 0, i64 0
  %1004 = load i8, i8* %scevgep71.4206.3, align 1
  %conv84.i.4207.3 = zext i8 %1004 to i32
  %scevgep75.4208.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %996, i64 0, i64 0, i64 0
  %1005 = load i8, i8* %scevgep75.4208.3, align 1
  %conv89.i.4209.3 = zext i8 %1005 to i32
  %xor90.i.4210.3 = xor i32 %conv84.i.4207.3, %conv89.i.4209.3
  %conv91.i.4211.3 = trunc i32 %xor90.i.4210.3 to i8
  %scevgep78.4212.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %997, i64 0, i64 0, i64 0
  store i8 %conv91.i.4211.3, i8* %scevgep78.4212.3, align 1
  %scevgep59.1.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %819, i64 0, i64 0, i64 1
  %1006 = load i8, i8* %scevgep59.1.4.3, align 1
  %conv44.i.1.4.3 = zext i8 %1006 to i32
  %scevgep62.1.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %993, i64 0, i64 0, i64 1
  %1007 = load i8, i8* %scevgep62.1.4.3, align 1
  %conv49.i.1.4.3 = zext i8 %1007 to i32
  %xor.i.1.4.3 = xor i32 %conv44.i.1.4.3, %conv49.i.1.4.3
  %conv50.i.1.4.3 = trunc i32 %xor.i.1.4.3 to i8
  %scevgep66.1.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %994, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.4.3, i8* %scevgep66.1.4.3, align 1
  %1008 = load i8, i8* %arrayidx56.i.4.3, align 1
  %conv57.i.1.4.3 = zext i8 %1008 to i32
  %xor58.i.1.4.3 = xor i32 %conv57.i.1.4.3, 1
  %conv59.i.1.4.3 = trunc i32 %xor58.i.1.4.3 to i8
  %scevgep63.1.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %993, i64 0, i64 0, i64 1
  %1009 = load i8, i8* %scevgep63.1.4.3, align 1
  %call64.i.1.4.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.4.3, i8 zeroext %1009) #3
  %scevgep70.1.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %995, i64 0, i64 0, i64 1
  store i8 %call64.i.1.4.3, i8* %scevgep70.1.4.3, align 1
  %1010 = load i8, i8* %arrayidx70.i.4.3, align 1
  %scevgep67.1.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %994, i64 0, i64 0, i64 1
  %1011 = load i8, i8* %scevgep67.1.4.3, align 1
  %call75.i.1.4.3 = call zeroext i8 @mult(i8 zeroext %1010, i8 zeroext %1011) #3
  %scevgep74.1.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %996, i64 0, i64 0, i64 1
  store i8 %call75.i.1.4.3, i8* %scevgep74.1.4.3, align 1
  %scevgep71.1.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %995, i64 0, i64 0, i64 1
  %1012 = load i8, i8* %scevgep71.1.4.3, align 1
  %conv84.i.1.4.3 = zext i8 %1012 to i32
  %scevgep75.1.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %996, i64 0, i64 0, i64 1
  %1013 = load i8, i8* %scevgep75.1.4.3, align 1
  %conv89.i.1.4.3 = zext i8 %1013 to i32
  %xor90.i.1.4.3 = xor i32 %conv84.i.1.4.3, %conv89.i.1.4.3
  %conv91.i.1.4.3 = trunc i32 %xor90.i.1.4.3 to i8
  %scevgep78.1.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %997, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.4.3, i8* %scevgep78.1.4.3, align 1
  %scevgep59.2.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %819, i64 0, i64 0, i64 2
  %1014 = load i8, i8* %scevgep59.2.4.3, align 1
  %conv44.i.2.4.3 = zext i8 %1014 to i32
  %scevgep62.2.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %993, i64 0, i64 0, i64 2
  %1015 = load i8, i8* %scevgep62.2.4.3, align 1
  %conv49.i.2.4.3 = zext i8 %1015 to i32
  %xor.i.2.4.3 = xor i32 %conv44.i.2.4.3, %conv49.i.2.4.3
  %conv50.i.2.4.3 = trunc i32 %xor.i.2.4.3 to i8
  %scevgep66.2.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %994, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.4.3, i8* %scevgep66.2.4.3, align 1
  %1016 = load i8, i8* %arrayidx56.i.4.3, align 1
  %conv57.i.2.4.3 = zext i8 %1016 to i32
  %xor58.i.2.4.3 = xor i32 %conv57.i.2.4.3, 1
  %conv59.i.2.4.3 = trunc i32 %xor58.i.2.4.3 to i8
  %scevgep63.2.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %993, i64 0, i64 0, i64 2
  %1017 = load i8, i8* %scevgep63.2.4.3, align 1
  %call64.i.2.4.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.4.3, i8 zeroext %1017) #3
  %scevgep70.2.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %995, i64 0, i64 0, i64 2
  store i8 %call64.i.2.4.3, i8* %scevgep70.2.4.3, align 1
  %1018 = load i8, i8* %arrayidx70.i.4.3, align 1
  %scevgep67.2.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %994, i64 0, i64 0, i64 2
  %1019 = load i8, i8* %scevgep67.2.4.3, align 1
  %call75.i.2.4.3 = call zeroext i8 @mult(i8 zeroext %1018, i8 zeroext %1019) #3
  %scevgep74.2.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %996, i64 0, i64 0, i64 2
  store i8 %call75.i.2.4.3, i8* %scevgep74.2.4.3, align 1
  %scevgep71.2.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %995, i64 0, i64 0, i64 2
  %1020 = load i8, i8* %scevgep71.2.4.3, align 1
  %conv84.i.2.4.3 = zext i8 %1020 to i32
  %scevgep75.2.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %996, i64 0, i64 0, i64 2
  %1021 = load i8, i8* %scevgep75.2.4.3, align 1
  %conv89.i.2.4.3 = zext i8 %1021 to i32
  %xor90.i.2.4.3 = xor i32 %conv84.i.2.4.3, %conv89.i.2.4.3
  %conv91.i.2.4.3 = trunc i32 %xor90.i.2.4.3 to i8
  %scevgep78.2.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %997, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.4.3, i8* %scevgep78.2.4.3, align 1
  %scevgep59.3.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %819, i64 0, i64 0, i64 3
  %1022 = load i8, i8* %scevgep59.3.4.3, align 1
  %conv44.i.3.4.3 = zext i8 %1022 to i32
  %scevgep62.3.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %993, i64 0, i64 0, i64 3
  %1023 = load i8, i8* %scevgep62.3.4.3, align 1
  %conv49.i.3.4.3 = zext i8 %1023 to i32
  %xor.i.3.4.3 = xor i32 %conv44.i.3.4.3, %conv49.i.3.4.3
  %conv50.i.3.4.3 = trunc i32 %xor.i.3.4.3 to i8
  %scevgep66.3.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %994, i64 0, i64 0, i64 3
  store i8 %conv50.i.3.4.3, i8* %scevgep66.3.4.3, align 1
  %1024 = load i8, i8* %arrayidx56.i.4.3, align 1
  %conv57.i.3.4.3 = zext i8 %1024 to i32
  %xor58.i.3.4.3 = xor i32 %conv57.i.3.4.3, 1
  %conv59.i.3.4.3 = trunc i32 %xor58.i.3.4.3 to i8
  %scevgep63.3.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %993, i64 0, i64 0, i64 3
  %1025 = load i8, i8* %scevgep63.3.4.3, align 1
  %call64.i.3.4.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.3.4.3, i8 zeroext %1025) #3
  %scevgep70.3.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %995, i64 0, i64 0, i64 3
  store i8 %call64.i.3.4.3, i8* %scevgep70.3.4.3, align 1
  %1026 = load i8, i8* %arrayidx70.i.4.3, align 1
  %scevgep67.3.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %994, i64 0, i64 0, i64 3
  %1027 = load i8, i8* %scevgep67.3.4.3, align 1
  %call75.i.3.4.3 = call zeroext i8 @mult(i8 zeroext %1026, i8 zeroext %1027) #3
  %scevgep74.3.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %996, i64 0, i64 0, i64 3
  store i8 %call75.i.3.4.3, i8* %scevgep74.3.4.3, align 1
  %scevgep71.3.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %995, i64 0, i64 0, i64 3
  %1028 = load i8, i8* %scevgep71.3.4.3, align 1
  %conv84.i.3.4.3 = zext i8 %1028 to i32
  %scevgep75.3.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %996, i64 0, i64 0, i64 3
  %1029 = load i8, i8* %scevgep75.3.4.3, align 1
  %conv89.i.3.4.3 = zext i8 %1029 to i32
  %xor90.i.3.4.3 = xor i32 %conv84.i.3.4.3, %conv89.i.3.4.3
  %conv91.i.3.4.3 = trunc i32 %xor90.i.3.4.3 to i8
  %scevgep78.3.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %997, i64 0, i64 0, i64 3
  store i8 %conv91.i.3.4.3, i8* %scevgep78.3.4.3, align 1
  %1030 = load i8, i8* %x, align 1
  %1031 = load i8, i8* %arraydecay7.3, align 1
  %call111.i.3791 = call zeroext i8 @mult(i8 zeroext %1030, i8 zeroext %1031) #3
  store i8 %call111.i.3791, i8* %arraydecay10.3, align 1
  %scevgep89.1.3800 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 1
  %1032 = load i8, i8* %scevgep89.1.3800, align 1
  %conv126.i.1.3801 = zext i8 %1032 to i32
  %1033 = load i8, i8* %arraydecay10.3, align 1
  %conv129.i.1.3802 = zext i8 %1033 to i32
  %xor130.i.1.3803 = xor i32 %conv129.i.1.3802, %conv126.i.1.3801
  %conv131.i.1.3804 = trunc i32 %xor130.i.1.3803 to i8
  store i8 %conv131.i.1.3804, i8* %arraydecay10.3, align 1
  %scevgep89.2.3807 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 2
  %1034 = load i8, i8* %scevgep89.2.3807, align 1
  %conv126.i.2.3808 = zext i8 %1034 to i32
  %1035 = load i8, i8* %arraydecay10.3, align 1
  %conv129.i.2.3809 = zext i8 %1035 to i32
  %xor130.i.2.3810 = xor i32 %conv129.i.2.3809, %conv126.i.2.3808
  %conv131.i.2.3811 = trunc i32 %xor130.i.2.3810 to i8
  store i8 %conv131.i.2.3811, i8* %arraydecay10.3, align 1
  %scevgep89.3.3814 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 3
  %1036 = load i8, i8* %scevgep89.3.3814, align 1
  %conv126.i.3.3815 = zext i8 %1036 to i32
  %1037 = load i8, i8* %arraydecay10.3, align 1
  %conv129.i.3.3816 = zext i8 %1037 to i32
  %xor130.i.3.3817 = xor i32 %conv129.i.3.3816, %conv126.i.3.3815
  %conv131.i.3.3818 = trunc i32 %xor130.i.3.3817 to i8
  store i8 %conv131.i.3.3818, i8* %arraydecay10.3, align 1
  %scevgep89.4.3821 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 0, i64 4
  %1038 = load i8, i8* %scevgep89.4.3821, align 1
  %conv126.i.4.3822 = zext i8 %1038 to i32
  %1039 = load i8, i8* %arraydecay10.3, align 1
  %conv129.i.4.3823 = zext i8 %1039 to i32
  %xor130.i.4.3824 = xor i32 %conv129.i.4.3823, %conv126.i.4.3822
  %conv131.i.4.3825 = trunc i32 %xor130.i.4.3824 to i8
  store i8 %conv131.i.4.3825, i8* %arraydecay10.3, align 1
  %scevgep88.3827 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i, i64 0, i64 1, i64 0
  %1040 = bitcast i8* %scevgep88.3827 to [5 x [5 x i8]]*
  %arrayidx108.i.1.3 = getelementptr inbounds i8, i8* %x, i64 1
  %1041 = load i8, i8* %arrayidx108.i.1.3, align 1
  %arrayidx110.i.1.3 = getelementptr inbounds i8, i8* %arraydecay7.3, i64 1
  %1042 = load i8, i8* %arrayidx110.i.1.3, align 1
  %call111.i.1.3 = call zeroext i8 @mult(i8 zeroext %1041, i8 zeroext %1042) #3
  %arrayidx113.i.1.3 = getelementptr inbounds i8, i8* %arraydecay10.3, i64 1
  store i8 %call111.i.1.3, i8* %arrayidx113.i.1.3, align 1
  %arrayidx128.i.1.3 = getelementptr inbounds i8, i8* %arraydecay10.3, i64 1
  %scevgep89.1217.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1040, i64 0, i64 0, i64 0
  %1043 = load i8, i8* %scevgep89.1217.3, align 1
  %conv126.i.1218.3 = zext i8 %1043 to i32
  %1044 = load i8, i8* %arrayidx128.i.1.3, align 1
  %conv129.i.1219.3 = zext i8 %1044 to i32
  %xor130.i.1220.3 = xor i32 %conv129.i.1219.3, %conv126.i.1218.3
  %conv131.i.1221.3 = trunc i32 %xor130.i.1220.3 to i8
  store i8 %conv131.i.1221.3, i8* %arrayidx128.i.1.3, align 1
  %scevgep89.2.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1040, i64 0, i64 0, i64 2
  %1045 = load i8, i8* %scevgep89.2.1.3, align 1
  %conv126.i.2.1.3 = zext i8 %1045 to i32
  %1046 = load i8, i8* %arrayidx128.i.1.3, align 1
  %conv129.i.2.1.3 = zext i8 %1046 to i32
  %xor130.i.2.1.3 = xor i32 %conv129.i.2.1.3, %conv126.i.2.1.3
  %conv131.i.2.1.3 = trunc i32 %xor130.i.2.1.3 to i8
  store i8 %conv131.i.2.1.3, i8* %arrayidx128.i.1.3, align 1
  %scevgep89.3.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1040, i64 0, i64 0, i64 3
  %1047 = load i8, i8* %scevgep89.3.1.3, align 1
  %conv126.i.3.1.3 = zext i8 %1047 to i32
  %1048 = load i8, i8* %arrayidx128.i.1.3, align 1
  %conv129.i.3.1.3 = zext i8 %1048 to i32
  %xor130.i.3.1.3 = xor i32 %conv129.i.3.1.3, %conv126.i.3.1.3
  %conv131.i.3.1.3 = trunc i32 %xor130.i.3.1.3 to i8
  store i8 %conv131.i.3.1.3, i8* %arrayidx128.i.1.3, align 1
  %scevgep89.4.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1040, i64 0, i64 0, i64 4
  %1049 = load i8, i8* %scevgep89.4.1.3, align 1
  %conv126.i.4.1.3 = zext i8 %1049 to i32
  %1050 = load i8, i8* %arrayidx128.i.1.3, align 1
  %conv129.i.4.1.3 = zext i8 %1050 to i32
  %xor130.i.4.1.3 = xor i32 %conv129.i.4.1.3, %conv126.i.4.1.3
  %conv131.i.4.1.3 = trunc i32 %xor130.i.4.1.3 to i8
  store i8 %conv131.i.4.1.3, i8* %arrayidx128.i.1.3, align 1
  %scevgep88.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1040, i64 0, i64 1, i64 0
  %1051 = bitcast i8* %scevgep88.1.3 to [5 x [5 x i8]]*
  %arrayidx108.i.2.3 = getelementptr inbounds i8, i8* %x, i64 2
  %1052 = load i8, i8* %arrayidx108.i.2.3, align 1
  %arrayidx110.i.2.3 = getelementptr inbounds i8, i8* %arraydecay7.3, i64 2
  %1053 = load i8, i8* %arrayidx110.i.2.3, align 1
  %call111.i.2.3 = call zeroext i8 @mult(i8 zeroext %1052, i8 zeroext %1053) #3
  %arrayidx113.i.2.3 = getelementptr inbounds i8, i8* %arraydecay10.3, i64 2
  store i8 %call111.i.2.3, i8* %arrayidx113.i.2.3, align 1
  %arrayidx128.i.2.3 = getelementptr inbounds i8, i8* %arraydecay10.3, i64 2
  %scevgep89.2226.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1051, i64 0, i64 0, i64 0
  %1054 = load i8, i8* %scevgep89.2226.3, align 1
  %conv126.i.2227.3 = zext i8 %1054 to i32
  %1055 = load i8, i8* %arrayidx128.i.2.3, align 1
  %conv129.i.2228.3 = zext i8 %1055 to i32
  %xor130.i.2229.3 = xor i32 %conv129.i.2228.3, %conv126.i.2227.3
  %conv131.i.2230.3 = trunc i32 %xor130.i.2229.3 to i8
  store i8 %conv131.i.2230.3, i8* %arrayidx128.i.2.3, align 1
  %scevgep89.1.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1051, i64 0, i64 0, i64 1
  %1056 = load i8, i8* %scevgep89.1.2.3, align 1
  %conv126.i.1.2.3 = zext i8 %1056 to i32
  %1057 = load i8, i8* %arrayidx128.i.2.3, align 1
  %conv129.i.1.2.3 = zext i8 %1057 to i32
  %xor130.i.1.2.3 = xor i32 %conv129.i.1.2.3, %conv126.i.1.2.3
  %conv131.i.1.2.3 = trunc i32 %xor130.i.1.2.3 to i8
  store i8 %conv131.i.1.2.3, i8* %arrayidx128.i.2.3, align 1
  %scevgep89.3.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1051, i64 0, i64 0, i64 3
  %1058 = load i8, i8* %scevgep89.3.2.3, align 1
  %conv126.i.3.2.3 = zext i8 %1058 to i32
  %1059 = load i8, i8* %arrayidx128.i.2.3, align 1
  %conv129.i.3.2.3 = zext i8 %1059 to i32
  %xor130.i.3.2.3 = xor i32 %conv129.i.3.2.3, %conv126.i.3.2.3
  %conv131.i.3.2.3 = trunc i32 %xor130.i.3.2.3 to i8
  store i8 %conv131.i.3.2.3, i8* %arrayidx128.i.2.3, align 1
  %scevgep89.4.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1051, i64 0, i64 0, i64 4
  %1060 = load i8, i8* %scevgep89.4.2.3, align 1
  %conv126.i.4.2.3 = zext i8 %1060 to i32
  %1061 = load i8, i8* %arrayidx128.i.2.3, align 1
  %conv129.i.4.2.3 = zext i8 %1061 to i32
  %xor130.i.4.2.3 = xor i32 %conv129.i.4.2.3, %conv126.i.4.2.3
  %conv131.i.4.2.3 = trunc i32 %xor130.i.4.2.3 to i8
  store i8 %conv131.i.4.2.3, i8* %arrayidx128.i.2.3, align 1
  %scevgep88.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1051, i64 0, i64 1, i64 0
  %1062 = bitcast i8* %scevgep88.2.3 to [5 x [5 x i8]]*
  %arrayidx108.i.3.3 = getelementptr inbounds i8, i8* %x, i64 3
  %1063 = load i8, i8* %arrayidx108.i.3.3, align 1
  %arrayidx110.i.3.3 = getelementptr inbounds i8, i8* %arraydecay7.3, i64 3
  %1064 = load i8, i8* %arrayidx110.i.3.3, align 1
  %call111.i.3.3 = call zeroext i8 @mult(i8 zeroext %1063, i8 zeroext %1064) #3
  %arrayidx113.i.3.3 = getelementptr inbounds i8, i8* %arraydecay10.3, i64 3
  store i8 %call111.i.3.3, i8* %arrayidx113.i.3.3, align 1
  %arrayidx128.i.3.3 = getelementptr inbounds i8, i8* %arraydecay10.3, i64 3
  %scevgep89.3235.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1062, i64 0, i64 0, i64 0
  %1065 = load i8, i8* %scevgep89.3235.3, align 1
  %conv126.i.3236.3 = zext i8 %1065 to i32
  %1066 = load i8, i8* %arrayidx128.i.3.3, align 1
  %conv129.i.3237.3 = zext i8 %1066 to i32
  %xor130.i.3238.3 = xor i32 %conv129.i.3237.3, %conv126.i.3236.3
  %conv131.i.3239.3 = trunc i32 %xor130.i.3238.3 to i8
  store i8 %conv131.i.3239.3, i8* %arrayidx128.i.3.3, align 1
  %scevgep89.1.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1062, i64 0, i64 0, i64 1
  %1067 = load i8, i8* %scevgep89.1.3.3, align 1
  %conv126.i.1.3.3 = zext i8 %1067 to i32
  %1068 = load i8, i8* %arrayidx128.i.3.3, align 1
  %conv129.i.1.3.3 = zext i8 %1068 to i32
  %xor130.i.1.3.3 = xor i32 %conv129.i.1.3.3, %conv126.i.1.3.3
  %conv131.i.1.3.3 = trunc i32 %xor130.i.1.3.3 to i8
  store i8 %conv131.i.1.3.3, i8* %arrayidx128.i.3.3, align 1
  %scevgep89.2.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1062, i64 0, i64 0, i64 2
  %1069 = load i8, i8* %scevgep89.2.3.3, align 1
  %conv126.i.2.3.3 = zext i8 %1069 to i32
  %1070 = load i8, i8* %arrayidx128.i.3.3, align 1
  %conv129.i.2.3.3 = zext i8 %1070 to i32
  %xor130.i.2.3.3 = xor i32 %conv129.i.2.3.3, %conv126.i.2.3.3
  %conv131.i.2.3.3 = trunc i32 %xor130.i.2.3.3 to i8
  store i8 %conv131.i.2.3.3, i8* %arrayidx128.i.3.3, align 1
  %scevgep89.4.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1062, i64 0, i64 0, i64 4
  %1071 = load i8, i8* %scevgep89.4.3.3, align 1
  %conv126.i.4.3.3 = zext i8 %1071 to i32
  %1072 = load i8, i8* %arrayidx128.i.3.3, align 1
  %conv129.i.4.3.3 = zext i8 %1072 to i32
  %xor130.i.4.3.3 = xor i32 %conv129.i.4.3.3, %conv126.i.4.3.3
  %conv131.i.4.3.3 = trunc i32 %xor130.i.4.3.3 to i8
  store i8 %conv131.i.4.3.3, i8* %arrayidx128.i.3.3, align 1
  %scevgep88.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1062, i64 0, i64 1, i64 0
  %1073 = bitcast i8* %scevgep88.3.3 to [5 x [5 x i8]]*
  %arrayidx108.i.4.3 = getelementptr inbounds i8, i8* %x, i64 4
  %1074 = load i8, i8* %arrayidx108.i.4.3, align 1
  %arrayidx110.i.4.3 = getelementptr inbounds i8, i8* %arraydecay7.3, i64 4
  %1075 = load i8, i8* %arrayidx110.i.4.3, align 1
  %call111.i.4.3 = call zeroext i8 @mult(i8 zeroext %1074, i8 zeroext %1075) #3
  %arrayidx113.i.4.3 = getelementptr inbounds i8, i8* %arraydecay10.3, i64 4
  store i8 %call111.i.4.3, i8* %arrayidx113.i.4.3, align 1
  %arrayidx128.i.4.3 = getelementptr inbounds i8, i8* %arraydecay10.3, i64 4
  %scevgep89.4244.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1073, i64 0, i64 0, i64 0
  %1076 = load i8, i8* %scevgep89.4244.3, align 1
  %conv126.i.4245.3 = zext i8 %1076 to i32
  %1077 = load i8, i8* %arrayidx128.i.4.3, align 1
  %conv129.i.4246.3 = zext i8 %1077 to i32
  %xor130.i.4247.3 = xor i32 %conv129.i.4246.3, %conv126.i.4245.3
  %conv131.i.4248.3 = trunc i32 %xor130.i.4247.3 to i8
  store i8 %conv131.i.4248.3, i8* %arrayidx128.i.4.3, align 1
  %scevgep89.1.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1073, i64 0, i64 0, i64 1
  %1078 = load i8, i8* %scevgep89.1.4.3, align 1
  %conv126.i.1.4.3 = zext i8 %1078 to i32
  %1079 = load i8, i8* %arrayidx128.i.4.3, align 1
  %conv129.i.1.4.3 = zext i8 %1079 to i32
  %xor130.i.1.4.3 = xor i32 %conv129.i.1.4.3, %conv126.i.1.4.3
  %conv131.i.1.4.3 = trunc i32 %xor130.i.1.4.3 to i8
  store i8 %conv131.i.1.4.3, i8* %arrayidx128.i.4.3, align 1
  %scevgep89.2.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1073, i64 0, i64 0, i64 2
  %1080 = load i8, i8* %scevgep89.2.4.3, align 1
  %conv126.i.2.4.3 = zext i8 %1080 to i32
  %1081 = load i8, i8* %arrayidx128.i.4.3, align 1
  %conv129.i.2.4.3 = zext i8 %1081 to i32
  %xor130.i.2.4.3 = xor i32 %conv129.i.2.4.3, %conv126.i.2.4.3
  %conv131.i.2.4.3 = trunc i32 %xor130.i.2.4.3 to i8
  store i8 %conv131.i.2.4.3, i8* %arrayidx128.i.4.3, align 1
  %scevgep89.3.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1073, i64 0, i64 0, i64 3
  %1082 = load i8, i8* %scevgep89.3.4.3, align 1
  %conv126.i.3.4.3 = zext i8 %1082 to i32
  %1083 = load i8, i8* %arrayidx128.i.4.3, align 1
  %conv129.i.3.4.3 = zext i8 %1083 to i32
  %xor130.i.3.4.3 = xor i32 %conv129.i.3.4.3, %conv126.i.3.4.3
  %conv131.i.3.4.3 = trunc i32 %xor130.i.3.4.3 to i8
  store i8 %conv131.i.3.4.3, i8* %arrayidx128.i.4.3, align 1
  %call139.i.3 = call zeroext i8 @mult(i8 zeroext %call.i22.3, i8 zeroext %call1.i.3) #3
  %conv140.i.3 = zext i8 %call139.i.3 to i32
  %scevgep95.3829 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %819, i64 0, i64 0, i64 0
  %scevgep96.3830 = getelementptr i8, i8* %scevgep95.3829, i64 5
  %1084 = load i8, i8* %scevgep96.3830, align 1
  %scevgep95.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %819, i64 0, i64 0, i64 1
  %scevgep96.1.3 = getelementptr i8, i8* %scevgep95.1.3, i64 5
  %1085 = load i8, i8* %scevgep96.1.3, align 1
  %conv.i.i172.i.1.3 = zext i8 %1085 to i32
  %conv1.i.i173.i.1.3 = zext i8 %1084 to i32
  %xor.i.i174.i.1.3 = xor i32 %conv1.i.i173.i.1.3, %conv.i.i172.i.1.3
  %conv2.i.i175.i.1.3 = trunc i32 %xor.i.i174.i.1.3 to i8
  %scevgep95.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %819, i64 0, i64 0, i64 2
  %scevgep96.2.3 = getelementptr i8, i8* %scevgep95.2.3, i64 5
  %1086 = load i8, i8* %scevgep96.2.3, align 1
  %conv.i.i172.i.2.3 = zext i8 %1086 to i32
  %conv1.i.i173.i.2.3 = zext i8 %conv2.i.i175.i.1.3 to i32
  %xor.i.i174.i.2.3 = xor i32 %conv1.i.i173.i.2.3, %conv.i.i172.i.2.3
  %conv2.i.i175.i.2.3 = trunc i32 %xor.i.i174.i.2.3 to i8
  %scevgep95.3.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %819, i64 0, i64 0, i64 3
  %scevgep96.3.3 = getelementptr i8, i8* %scevgep95.3.3, i64 5
  %1087 = load i8, i8* %scevgep96.3.3, align 1
  %conv.i.i172.i.3.3 = zext i8 %1087 to i32
  %conv1.i.i173.i.3.3 = zext i8 %conv2.i.i175.i.2.3 to i32
  %xor.i.i174.i.3.3 = xor i32 %conv1.i.i173.i.3.3, %conv.i.i172.i.3.3
  %conv2.i.i175.i.3.3 = trunc i32 %xor.i.i174.i.3.3 to i8
  %scevgep95.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %819, i64 0, i64 0, i64 4
  %scevgep96.4.3 = getelementptr i8, i8* %scevgep95.4.3, i64 5
  %1088 = load i8, i8* %scevgep96.4.3, align 1
  %conv.i.i172.i.4.3 = zext i8 %1088 to i32
  %conv1.i.i173.i.4.3 = zext i8 %conv2.i.i175.i.3.3 to i32
  %xor.i.i174.i.4.3 = xor i32 %conv1.i.i173.i.4.3, %conv.i.i172.i.4.3
  %conv2.i.i175.i.4.3 = trunc i32 %xor.i.i174.i.4.3 to i8
  %conv142.i.3 = zext i8 %conv2.i.i175.i.4.3 to i32
  %cmp143.i.3 = icmp eq i32 %conv140.i.3, %conv142.i.3
  call void @assert(i1 zeroext %cmp143.i.3) #3
  %scevgep23 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z, i64 0, i64 4, i64 0
  %1089 = load i8, i8* %scevgep23, align 1
  store i8 %1089, i8* %y, align 1
  %scevgep26.1 = getelementptr i8, i8* %scevgep23, i64 1
  %1090 = load i8, i8* %scevgep26.1, align 1
  %scevgep27.1 = getelementptr i8, i8* %y, i64 1
  store i8 %1090, i8* %scevgep27.1, align 1
  %scevgep26.2 = getelementptr i8, i8* %scevgep23, i64 2
  %1091 = load i8, i8* %scevgep26.2, align 1
  %scevgep27.2 = getelementptr i8, i8* %y, i64 2
  store i8 %1091, i8* %scevgep27.2, align 1
  %scevgep26.3 = getelementptr i8, i8* %scevgep23, i64 3
  %1092 = load i8, i8* %scevgep26.3, align 1
  %scevgep27.3 = getelementptr i8, i8* %y, i64 3
  store i8 %1092, i8* %scevgep27.3, align 1
  %scevgep26.4 = getelementptr i8, i8* %scevgep23, i64 4
  %1093 = load i8, i8* %scevgep26.4, align 1
  %scevgep27.4 = getelementptr i8, i8* %y, i64 4
  store i8 %1093, i8* %scevgep27.4, align 1
  %call.i48 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call) #3
  %call.i48.1 = call zeroext i8 @mult(i8 zeroext %call.i48, i8 zeroext %call) #3
  %call.i48.2 = call zeroext i8 @mult(i8 zeroext %call.i48.1, i8 zeroext %call) #3
  %call.i48.3 = call zeroext i8 @mult(i8 zeroext %call.i48.2, i8 zeroext %call) #3
  %conv14 = zext i8 %call.i48.3 to i32
  %1094 = load i8, i8* %y, align 1
  %scevgep.1 = getelementptr i8, i8* %y, i64 1
  %1095 = load i8, i8* %scevgep.1, align 1
  %conv.i.i62.1 = zext i8 %1095 to i32
  %conv1.i.i63.1 = zext i8 %1094 to i32
  %xor.i.i64.1 = xor i32 %conv1.i.i63.1, %conv.i.i62.1
  %conv2.i.i65.1 = trunc i32 %xor.i.i64.1 to i8
  %scevgep.2 = getelementptr i8, i8* %y, i64 2
  %1096 = load i8, i8* %scevgep.2, align 1
  %conv.i.i62.2 = zext i8 %1096 to i32
  %conv1.i.i63.2 = zext i8 %conv2.i.i65.1 to i32
  %xor.i.i64.2 = xor i32 %conv1.i.i63.2, %conv.i.i62.2
  %conv2.i.i65.2 = trunc i32 %xor.i.i64.2 to i8
  %scevgep.3 = getelementptr i8, i8* %y, i64 3
  %1097 = load i8, i8* %scevgep.3, align 1
  %conv.i.i62.3 = zext i8 %1097 to i32
  %conv1.i.i63.3 = zext i8 %conv2.i.i65.2 to i32
  %xor.i.i64.3 = xor i32 %conv1.i.i63.3, %conv.i.i62.3
  %conv2.i.i65.3 = trunc i32 %xor.i.i64.3 to i8
  %scevgep.4 = getelementptr i8, i8* %y, i64 4
  %1098 = load i8, i8* %scevgep.4, align 1
  %conv.i.i62.4 = zext i8 %1098 to i32
  %conv1.i.i63.4 = zext i8 %conv2.i.i65.3 to i32
  %xor.i.i64.4 = xor i32 %conv1.i.i63.4, %conv.i.i62.4
  %conv2.i.i65.4 = trunc i32 %xor.i.i64.4 to i8
  %conv16 = zext i8 %conv2.i.i65.4 to i32
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
  %call.i.i = call zeroext i8 @mult(i8 zeroext %x, i8 zeroext %x) #3
  %call1.i = call zeroext i8 @mult(i8 zeroext %call.i.i, i8 zeroext %x) #3
  %call.i.i.i = call zeroext i8 @mult(i8 zeroext %call1.i, i8 zeroext %call1.i) #3
  %call.i3.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i, i8 zeroext %call.i.i.i) #3
  %call3.i = call zeroext i8 @mult(i8 zeroext %call1.i, i8 zeroext %call.i3.i.i) #3
  %call.i.i.i.i = call zeroext i8 @mult(i8 zeroext %call3.i, i8 zeroext %call3.i) #3
  %call.i3.i.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i, i8 zeroext %call.i.i.i.i) #3
  %call.i.i5.i.i = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i, i8 zeroext %call.i3.i.i.i) #3
  %call.i3.i6.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i5.i.i, i8 zeroext %call.i.i5.i.i) #3
  %call5.i = call zeroext i8 @mult(i8 zeroext %call.i3.i6.i.i, i8 zeroext %call.i3.i.i) #3
  %call6.i = call zeroext i8 @mult(i8 zeroext %call5.i, i8 zeroext %call.i.i) #3
  %call1 = call zeroext i8 @af(i8 zeroext %call6.i)
  ret i8 %call1
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_sbox(i8* %x, i8* %y) #0 {
entry:
  %r.i.i = alloca [5 x [5 x i8]], align 16
  %s.i.i = alloca [5 x [5 x i8]], align 16
  %p0.i.i = alloca [5 x [5 x i8]], align 16
  %p1.i.i = alloca [5 x [5 x i8]], align 16
  %z.i.i = alloca [5 x [5 x i8]], align 16
  %z.i = alloca [5 x i8], align 1
  %zr.i = alloca [5 x i8], align 1
  %w.i = alloca [5 x i8], align 1
  %wr.i = alloca [5 x i8], align 1
  %u.i = alloca [5 x i8], align 1
  %v.i = alloca [5 x i8], align 1
  %v16.i = alloca [5 x i8], align 1
  %m.i = alloca [5 x i8], align 1
  %x254 = alloca [5 x i8], align 1
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %scevgep408.1 = getelementptr i8, i8* %x, i64 1
  %1 = load i8, i8* %scevgep408.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep408.2 = getelementptr i8, i8* %x, i64 2
  %2 = load i8, i8* %scevgep408.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %scevgep408.3 = getelementptr i8, i8* %x, i64 3
  %3 = load i8, i8* %scevgep408.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %scevgep408.4 = getelementptr i8, i8* %x, i64 4
  %4 = load i8, i8* %scevgep408.4, align 1
  %conv.i.i.4 = zext i8 %4 to i32
  %conv1.i.i.4 = zext i8 %conv2.i.i.3 to i32
  %xor.i.i.4 = xor i32 %conv1.i.i.4, %conv.i.i.4
  %conv2.i.i.4 = trunc i32 %xor.i.i.4 to i8
  %conv2 = zext i8 %conv2.i.i.4 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %x254, i64 0, i64 0
  %call.i = call zeroext i8 (...) @rand() #3
  %conv.i = zext i8 %call.i to i32
  %5 = load i8, i8* %x, align 1
  %scevgep404.1 = getelementptr i8, i8* %x, i64 1
  %6 = load i8, i8* %scevgep404.1, align 1
  %conv.i.i.i.1 = zext i8 %6 to i32
  %conv1.i.i.i.1 = zext i8 %5 to i32
  %xor.i.i.i.1 = xor i32 %conv1.i.i.i.1, %conv.i.i.i.1
  %conv2.i.i.i.1 = trunc i32 %xor.i.i.i.1 to i8
  %scevgep404.2 = getelementptr i8, i8* %x, i64 2
  %7 = load i8, i8* %scevgep404.2, align 1
  %conv.i.i.i.2 = zext i8 %7 to i32
  %conv1.i.i.i.2 = zext i8 %conv2.i.i.i.1 to i32
  %xor.i.i.i.2 = xor i32 %conv1.i.i.i.2, %conv.i.i.i.2
  %conv2.i.i.i.2 = trunc i32 %xor.i.i.i.2 to i8
  %scevgep404.3 = getelementptr i8, i8* %x, i64 3
  %8 = load i8, i8* %scevgep404.3, align 1
  %conv.i.i.i.3 = zext i8 %8 to i32
  %conv1.i.i.i.3 = zext i8 %conv2.i.i.i.2 to i32
  %xor.i.i.i.3 = xor i32 %conv1.i.i.i.3, %conv.i.i.i.3
  %conv2.i.i.i.3 = trunc i32 %xor.i.i.i.3 to i8
  %scevgep404.4 = getelementptr i8, i8* %x, i64 4
  %9 = load i8, i8* %scevgep404.4, align 1
  %conv.i.i.i.4 = zext i8 %9 to i32
  %conv1.i.i.i.4 = zext i8 %conv2.i.i.i.3 to i32
  %xor.i.i.i.4 = xor i32 %conv1.i.i.i.4, %conv.i.i.i.4
  %conv2.i.i.i.4 = trunc i32 %xor.i.i.i.4 to i8
  %conv2.i = zext i8 %conv2.i.i.i.4 to i32
  %cmp.i = icmp eq i32 %conv.i, %conv2.i
  call void @assume(i1 zeroext %cmp.i) #3
  %10 = load i8, i8* %x, align 1
  %call.i1018 = call zeroext i8 @mult(i8 zeroext %10, i8 zeroext %10) #3
  %scevgep400 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 0
  store i8 %call.i1018, i8* %scevgep400, align 1
  %scevgep399.1 = getelementptr i8, i8* %x, i64 1
  %11 = load i8, i8* %scevgep399.1, align 1
  %call.i1019 = call zeroext i8 @mult(i8 zeroext %11, i8 zeroext %11) #3
  %scevgep400.1 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 1
  store i8 %call.i1019, i8* %scevgep400.1, align 1
  %scevgep399.2 = getelementptr i8, i8* %x, i64 2
  %12 = load i8, i8* %scevgep399.2, align 1
  %call.i1020 = call zeroext i8 @mult(i8 zeroext %12, i8 zeroext %12) #3
  %scevgep400.2 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 2
  store i8 %call.i1020, i8* %scevgep400.2, align 1
  %scevgep399.3 = getelementptr i8, i8* %x, i64 3
  %13 = load i8, i8* %scevgep399.3, align 1
  %call.i1021 = call zeroext i8 @mult(i8 zeroext %13, i8 zeroext %13) #3
  %scevgep400.3 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 3
  store i8 %call.i1021, i8* %scevgep400.3, align 1
  %scevgep399.4 = getelementptr i8, i8* %x, i64 4
  %14 = load i8, i8* %scevgep399.4, align 1
  %call.i1022 = call zeroext i8 @mult(i8 zeroext %14, i8 zeroext %14) #3
  %scevgep400.4 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 4
  store i8 %call.i1022, i8* %scevgep400.4, align 1
  %arraydecay5.i = getelementptr inbounds [5 x i8], [5 x i8]* %zr.i, i64 0, i64 0
  %call.i32.i = call zeroext i8 (...) @rand() #3
  %conv.i.i21 = zext i8 %call.i32.i to i32
  %scevgep395 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 0
  %15 = load i8, i8* %scevgep395, align 1
  %scevgep395.1 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 1
  %16 = load i8, i8* %scevgep395.1, align 1
  %conv.i.i.i.i.1 = zext i8 %16 to i32
  %conv1.i.i.i.i.1 = zext i8 %15 to i32
  %xor.i.i.i.i.1 = xor i32 %conv1.i.i.i.i.1, %conv.i.i.i.i.1
  %conv2.i.i.i.i.1 = trunc i32 %xor.i.i.i.i.1 to i8
  %scevgep395.2 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 2
  %17 = load i8, i8* %scevgep395.2, align 1
  %conv.i.i.i.i.2 = zext i8 %17 to i32
  %conv1.i.i.i.i.2 = zext i8 %conv2.i.i.i.i.1 to i32
  %xor.i.i.i.i.2 = xor i32 %conv1.i.i.i.i.2, %conv.i.i.i.i.2
  %conv2.i.i.i.i.2 = trunc i32 %xor.i.i.i.i.2 to i8
  %scevgep395.3 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 3
  %18 = load i8, i8* %scevgep395.3, align 1
  %conv.i.i.i.i.3 = zext i8 %18 to i32
  %conv1.i.i.i.i.3 = zext i8 %conv2.i.i.i.i.2 to i32
  %xor.i.i.i.i.3 = xor i32 %conv1.i.i.i.i.3, %conv.i.i.i.i.3
  %conv2.i.i.i.i.3 = trunc i32 %xor.i.i.i.i.3 to i8
  %scevgep395.4 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 4
  %19 = load i8, i8* %scevgep395.4, align 1
  %conv.i.i.i.i.4 = zext i8 %19 to i32
  %conv1.i.i.i.i.4 = zext i8 %conv2.i.i.i.i.3 to i32
  %xor.i.i.i.i.4 = xor i32 %conv1.i.i.i.i.4, %conv.i.i.i.i.4
  %conv2.i.i.i.i.4 = trunc i32 %xor.i.i.i.i.4 to i8
  %conv2.i.i22 = zext i8 %conv2.i.i.i.i.4 to i32
  %cmp.i33.i = icmp eq i32 %conv.i.i21, %conv2.i.i22
  call void @assume(i1 zeroext %cmp.i33.i) #3
  %scevgep390 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 0
  %20 = load i8, i8* %scevgep390, align 1
  %scevgep391 = getelementptr [5 x i8], [5 x i8]* %zr.i, i64 0, i64 0
  store i8 %20, i8* %scevgep391, align 1
  %scevgep390.1 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 1
  %21 = load i8, i8* %scevgep390.1, align 1
  %scevgep391.1 = getelementptr [5 x i8], [5 x i8]* %zr.i, i64 0, i64 1
  store i8 %21, i8* %scevgep391.1, align 1
  %scevgep390.2 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 2
  %22 = load i8, i8* %scevgep390.2, align 1
  %scevgep391.2 = getelementptr [5 x i8], [5 x i8]* %zr.i, i64 0, i64 2
  store i8 %22, i8* %scevgep391.2, align 1
  %scevgep390.3 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 3
  %23 = load i8, i8* %scevgep390.3, align 1
  %scevgep391.3 = getelementptr [5 x i8], [5 x i8]* %zr.i, i64 0, i64 3
  store i8 %23, i8* %scevgep391.3, align 1
  %scevgep390.4 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 4
  %24 = load i8, i8* %scevgep390.4, align 1
  %scevgep391.4 = getelementptr [5 x i8], [5 x i8]* %zr.i, i64 0, i64 4
  store i8 %24, i8* %scevgep391.4, align 1
  %call7.i.i = call zeroext i8 (...) @rand() #3
  %conv8.i.i = zext i8 %call7.i.i to i32
  %25 = load i8, i8* %arraydecay5.i, align 1
  %conv9.i.i = zext i8 %25 to i32
  %xor.i.i23 = xor i32 %conv9.i.i, %conv8.i.i
  %conv10.i.i = trunc i32 %xor.i.i23 to i8
  store i8 %conv10.i.i, i8* %arraydecay5.i, align 1
  %conv11.i.i = zext i8 %call7.i.i to i32
  %scevgep386 = getelementptr [5 x i8], [5 x i8]* %zr.i, i64 0, i64 1
  %26 = load i8, i8* %scevgep386, align 1
  %conv13.i.i = zext i8 %26 to i32
  %xor14.i.i = xor i32 %conv13.i.i, %conv11.i.i
  %conv15.i.i = trunc i32 %xor14.i.i to i8
  store i8 %conv15.i.i, i8* %scevgep386, align 1
  %call7.i.i.1 = call zeroext i8 (...) @rand() #3
  %conv8.i.i.1 = zext i8 %call7.i.i.1 to i32
  %27 = load i8, i8* %arraydecay5.i, align 1
  %conv9.i.i.1 = zext i8 %27 to i32
  %xor.i.i23.1 = xor i32 %conv9.i.i.1, %conv8.i.i.1
  %conv10.i.i.1 = trunc i32 %xor.i.i23.1 to i8
  store i8 %conv10.i.i.1, i8* %arraydecay5.i, align 1
  %conv11.i.i.1 = zext i8 %call7.i.i.1 to i32
  %scevgep386.1 = getelementptr [5 x i8], [5 x i8]* %zr.i, i64 0, i64 2
  %28 = load i8, i8* %scevgep386.1, align 1
  %conv13.i.i.1 = zext i8 %28 to i32
  %xor14.i.i.1 = xor i32 %conv13.i.i.1, %conv11.i.i.1
  %conv15.i.i.1 = trunc i32 %xor14.i.i.1 to i8
  store i8 %conv15.i.i.1, i8* %scevgep386.1, align 1
  %call7.i.i.2 = call zeroext i8 (...) @rand() #3
  %conv8.i.i.2 = zext i8 %call7.i.i.2 to i32
  %29 = load i8, i8* %arraydecay5.i, align 1
  %conv9.i.i.2 = zext i8 %29 to i32
  %xor.i.i23.2 = xor i32 %conv9.i.i.2, %conv8.i.i.2
  %conv10.i.i.2 = trunc i32 %xor.i.i23.2 to i8
  store i8 %conv10.i.i.2, i8* %arraydecay5.i, align 1
  %conv11.i.i.2 = zext i8 %call7.i.i.2 to i32
  %scevgep386.2 = getelementptr [5 x i8], [5 x i8]* %zr.i, i64 0, i64 3
  %30 = load i8, i8* %scevgep386.2, align 1
  %conv13.i.i.2 = zext i8 %30 to i32
  %xor14.i.i.2 = xor i32 %conv13.i.i.2, %conv11.i.i.2
  %conv15.i.i.2 = trunc i32 %xor14.i.i.2 to i8
  store i8 %conv15.i.i.2, i8* %scevgep386.2, align 1
  %call7.i.i.3 = call zeroext i8 (...) @rand() #3
  %conv8.i.i.3 = zext i8 %call7.i.i.3 to i32
  %31 = load i8, i8* %arraydecay5.i, align 1
  %conv9.i.i.3 = zext i8 %31 to i32
  %xor.i.i23.3 = xor i32 %conv9.i.i.3, %conv8.i.i.3
  %conv10.i.i.3 = trunc i32 %xor.i.i23.3 to i8
  store i8 %conv10.i.i.3, i8* %arraydecay5.i, align 1
  %conv11.i.i.3 = zext i8 %call7.i.i.3 to i32
  %scevgep386.3 = getelementptr [5 x i8], [5 x i8]* %zr.i, i64 0, i64 4
  %32 = load i8, i8* %scevgep386.3, align 1
  %conv13.i.i.3 = zext i8 %32 to i32
  %xor14.i.i.3 = xor i32 %conv13.i.i.3, %conv11.i.i.3
  %conv15.i.i.3 = trunc i32 %xor14.i.i.3 to i8
  store i8 %conv15.i.i.3, i8* %scevgep386.3, align 1
  %conv16.i.i = zext i8 %call.i32.i to i32
  %scevgep382 = getelementptr [5 x i8], [5 x i8]* %zr.i, i64 0, i64 0
  %33 = load i8, i8* %scevgep382, align 1
  %scevgep382.1 = getelementptr [5 x i8], [5 x i8]* %zr.i, i64 0, i64 1
  %34 = load i8, i8* %scevgep382.1, align 1
  %conv.i.i31.i.i.1 = zext i8 %34 to i32
  %conv1.i.i32.i.i.1 = zext i8 %33 to i32
  %xor.i.i33.i.i.1 = xor i32 %conv1.i.i32.i.i.1, %conv.i.i31.i.i.1
  %conv2.i.i34.i.i.1 = trunc i32 %xor.i.i33.i.i.1 to i8
  %scevgep382.2 = getelementptr [5 x i8], [5 x i8]* %zr.i, i64 0, i64 2
  %35 = load i8, i8* %scevgep382.2, align 1
  %conv.i.i31.i.i.2 = zext i8 %35 to i32
  %conv1.i.i32.i.i.2 = zext i8 %conv2.i.i34.i.i.1 to i32
  %xor.i.i33.i.i.2 = xor i32 %conv1.i.i32.i.i.2, %conv.i.i31.i.i.2
  %conv2.i.i34.i.i.2 = trunc i32 %xor.i.i33.i.i.2 to i8
  %scevgep382.3 = getelementptr [5 x i8], [5 x i8]* %zr.i, i64 0, i64 3
  %36 = load i8, i8* %scevgep382.3, align 1
  %conv.i.i31.i.i.3 = zext i8 %36 to i32
  %conv1.i.i32.i.i.3 = zext i8 %conv2.i.i34.i.i.2 to i32
  %xor.i.i33.i.i.3 = xor i32 %conv1.i.i32.i.i.3, %conv.i.i31.i.i.3
  %conv2.i.i34.i.i.3 = trunc i32 %xor.i.i33.i.i.3 to i8
  %scevgep382.4 = getelementptr [5 x i8], [5 x i8]* %zr.i, i64 0, i64 4
  %37 = load i8, i8* %scevgep382.4, align 1
  %conv.i.i31.i.i.4 = zext i8 %37 to i32
  %conv1.i.i32.i.i.4 = zext i8 %conv2.i.i34.i.i.3 to i32
  %xor.i.i33.i.i.4 = xor i32 %conv1.i.i32.i.i.4, %conv.i.i31.i.i.4
  %conv2.i.i34.i.i.4 = trunc i32 %xor.i.i33.i.i.4 to i8
  %conv18.i.i = zext i8 %conv2.i.i34.i.i.4 to i32
  %cmp19.i.i = icmp eq i32 %conv16.i.i, %conv18.i.i
  call void @assert(i1 zeroext %cmp19.i.i) #3
  %arraydecay6.i = getelementptr inbounds [5 x i8], [5 x i8]* %zr.i, i64 0, i64 0
  %arraydecay7.i = getelementptr inbounds [5 x i8], [5 x i8]* %u.i, i64 0, i64 0
  %call.i52.i = call zeroext i8 (...) @rand() #3
  %call1.i.i = call zeroext i8 (...) @rand() #3
  %conv.i53.i = zext i8 %call.i52.i to i32
  %scevgep378 = getelementptr [5 x i8], [5 x i8]* %zr.i, i64 0, i64 0
  %38 = load i8, i8* %scevgep378, align 1
  %scevgep378.1 = getelementptr [5 x i8], [5 x i8]* %zr.i, i64 0, i64 1
  %39 = load i8, i8* %scevgep378.1, align 1
  %conv.i.i.i59.i.1 = zext i8 %39 to i32
  %conv1.i.i.i60.i.1 = zext i8 %38 to i32
  %xor.i.i.i61.i.1 = xor i32 %conv1.i.i.i60.i.1, %conv.i.i.i59.i.1
  %conv2.i.i.i62.i.1 = trunc i32 %xor.i.i.i61.i.1 to i8
  %scevgep378.2 = getelementptr [5 x i8], [5 x i8]* %zr.i, i64 0, i64 2
  %40 = load i8, i8* %scevgep378.2, align 1
  %conv.i.i.i59.i.2 = zext i8 %40 to i32
  %conv1.i.i.i60.i.2 = zext i8 %conv2.i.i.i62.i.1 to i32
  %xor.i.i.i61.i.2 = xor i32 %conv1.i.i.i60.i.2, %conv.i.i.i59.i.2
  %conv2.i.i.i62.i.2 = trunc i32 %xor.i.i.i61.i.2 to i8
  %scevgep378.3 = getelementptr [5 x i8], [5 x i8]* %zr.i, i64 0, i64 3
  %41 = load i8, i8* %scevgep378.3, align 1
  %conv.i.i.i59.i.3 = zext i8 %41 to i32
  %conv1.i.i.i60.i.3 = zext i8 %conv2.i.i.i62.i.2 to i32
  %xor.i.i.i61.i.3 = xor i32 %conv1.i.i.i60.i.3, %conv.i.i.i59.i.3
  %conv2.i.i.i62.i.3 = trunc i32 %xor.i.i.i61.i.3 to i8
  %scevgep378.4 = getelementptr [5 x i8], [5 x i8]* %zr.i, i64 0, i64 4
  %42 = load i8, i8* %scevgep378.4, align 1
  %conv.i.i.i59.i.4 = zext i8 %42 to i32
  %conv1.i.i.i60.i.4 = zext i8 %conv2.i.i.i62.i.3 to i32
  %xor.i.i.i61.i.4 = xor i32 %conv1.i.i.i60.i.4, %conv.i.i.i59.i.4
  %conv2.i.i.i62.i.4 = trunc i32 %xor.i.i.i61.i.4 to i8
  %conv3.i.i = zext i8 %conv2.i.i.i62.i.4 to i32
  %cmp.i65.i = icmp eq i32 %conv.i53.i, %conv3.i.i
  call void @assume(i1 zeroext %cmp.i65.i) #3
  %conv5.i.i = zext i8 %call1.i.i to i32
  %43 = load i8, i8* %x, align 1
  %scevgep374.1 = getelementptr i8, i8* %x, i64 1
  %44 = load i8, i8* %scevgep374.1, align 1
  %conv.i.i155.i.i.1 = zext i8 %44 to i32
  %conv1.i.i156.i.i.1 = zext i8 %43 to i32
  %xor.i.i157.i.i.1 = xor i32 %conv1.i.i156.i.i.1, %conv.i.i155.i.i.1
  %conv2.i.i158.i.i.1 = trunc i32 %xor.i.i157.i.i.1 to i8
  %scevgep374.2 = getelementptr i8, i8* %x, i64 2
  %45 = load i8, i8* %scevgep374.2, align 1
  %conv.i.i155.i.i.2 = zext i8 %45 to i32
  %conv1.i.i156.i.i.2 = zext i8 %conv2.i.i158.i.i.1 to i32
  %xor.i.i157.i.i.2 = xor i32 %conv1.i.i156.i.i.2, %conv.i.i155.i.i.2
  %conv2.i.i158.i.i.2 = trunc i32 %xor.i.i157.i.i.2 to i8
  %scevgep374.3 = getelementptr i8, i8* %x, i64 3
  %46 = load i8, i8* %scevgep374.3, align 1
  %conv.i.i155.i.i.3 = zext i8 %46 to i32
  %conv1.i.i156.i.i.3 = zext i8 %conv2.i.i158.i.i.2 to i32
  %xor.i.i157.i.i.3 = xor i32 %conv1.i.i156.i.i.3, %conv.i.i155.i.i.3
  %conv2.i.i158.i.i.3 = trunc i32 %xor.i.i157.i.i.3 to i8
  %scevgep374.4 = getelementptr i8, i8* %x, i64 4
  %47 = load i8, i8* %scevgep374.4, align 1
  %conv.i.i155.i.i.4 = zext i8 %47 to i32
  %conv1.i.i156.i.i.4 = zext i8 %conv2.i.i158.i.i.3 to i32
  %xor.i.i157.i.i.4 = xor i32 %conv1.i.i156.i.i.4, %conv.i.i155.i.i.4
  %conv2.i.i158.i.i.4 = trunc i32 %xor.i.i157.i.i.4 to i8
  %conv7.i.i = zext i8 %conv2.i.i158.i.i.4 to i32
  %cmp8.i.i = icmp eq i32 %conv5.i.i, %conv7.i.i
  call void @assume(i1 zeroext %cmp8.i.i) #3
  %scevgep358 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %scevgep358359 = bitcast i8* %scevgep358 to [5 x [5 x i8]]*
  %scevgep365 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %scevgep365366 = bitcast i8* %scevgep365 to [5 x [5 x i8]]*
  %call16.i.i = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.i, i8* %scevgep358, align 1
  %48 = load i8, i8* %scevgep358, align 1
  store i8 %48, i8* %scevgep365, align 1
  %scevgep363 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep358359, i64 0, i64 0, i64 1
  %49 = bitcast i8* %scevgep363 to [5 x [5 x i8]]*
  %scevgep370 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep365366, i64 0, i64 1, i64 0
  %50 = bitcast i8* %scevgep370 to [5 x [5 x i8]]*
  %call16.i.i.11009 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.i.11009, i8* %scevgep363, align 1
  %51 = load i8, i8* %scevgep363, align 1
  store i8 %51, i8* %scevgep370, align 1
  %scevgep363.11010 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %49, i64 0, i64 0, i64 1
  %52 = bitcast i8* %scevgep363.11010 to [5 x [5 x i8]]*
  %scevgep370.11011 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %50, i64 0, i64 1, i64 0
  %53 = bitcast i8* %scevgep370.11011 to [5 x [5 x i8]]*
  %call16.i.i.21013 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.i.21013, i8* %scevgep363.11010, align 1
  %54 = load i8, i8* %scevgep363.11010, align 1
  store i8 %54, i8* %scevgep370.11011, align 1
  %scevgep363.21014 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %52, i64 0, i64 0, i64 1
  %scevgep370.21015 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %53, i64 0, i64 1, i64 0
  %call16.i.i.31017 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.i.31017, i8* %scevgep363.21014, align 1
  %55 = load i8, i8* %scevgep363.21014, align 1
  store i8 %55, i8* %scevgep370.21015, align 1
  %scevgep361 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep358359, i64 0, i64 1, i64 1
  %56 = bitcast i8* %scevgep361 to [5 x [5 x i8]]*
  %scevgep368 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep365366, i64 0, i64 1, i64 1
  %57 = bitcast i8* %scevgep368 to [5 x [5 x i8]]*
  %call16.i.i.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.i.1, i8* %scevgep361, align 1
  %58 = load i8, i8* %scevgep361, align 1
  store i8 %58, i8* %scevgep368, align 1
  %scevgep363.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %56, i64 0, i64 0, i64 1
  %59 = bitcast i8* %scevgep363.1 to [5 x [5 x i8]]*
  %scevgep370.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %57, i64 0, i64 1, i64 0
  %60 = bitcast i8* %scevgep370.1 to [5 x [5 x i8]]*
  %call16.i.i.1.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.i.1.1, i8* %scevgep363.1, align 1
  %61 = load i8, i8* %scevgep363.1, align 1
  store i8 %61, i8* %scevgep370.1, align 1
  %scevgep363.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %59, i64 0, i64 0, i64 1
  %scevgep370.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %60, i64 0, i64 1, i64 0
  %call16.i.i.1.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.i.1.2, i8* %scevgep363.1.1, align 1
  %62 = load i8, i8* %scevgep363.1.1, align 1
  store i8 %62, i8* %scevgep370.1.1, align 1
  %scevgep361.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %56, i64 0, i64 1, i64 1
  %63 = bitcast i8* %scevgep361.1 to [5 x [5 x i8]]*
  %scevgep368.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %57, i64 0, i64 1, i64 1
  %64 = bitcast i8* %scevgep368.1 to [5 x [5 x i8]]*
  %call16.i.i.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.i.2, i8* %scevgep361.1, align 1
  %65 = load i8, i8* %scevgep361.1, align 1
  store i8 %65, i8* %scevgep368.1, align 1
  %scevgep363.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %63, i64 0, i64 0, i64 1
  %scevgep370.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %64, i64 0, i64 1, i64 0
  %call16.i.i.2.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.i.2.1, i8* %scevgep363.2, align 1
  %66 = load i8, i8* %scevgep363.2, align 1
  store i8 %66, i8* %scevgep370.2, align 1
  %scevgep361.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %63, i64 0, i64 1, i64 1
  %scevgep368.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %64, i64 0, i64 1, i64 1
  %call16.i.i.3 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i.i.3, i8* %scevgep361.2, align 1
  %67 = load i8, i8* %scevgep361.2, align 1
  store i8 %67, i8* %scevgep368.2, align 1
  %scevgep335.1 = getelementptr i8, i8* %x, i64 1
  %68 = load i8, i8* %scevgep335.1, align 1
  %conv44.i.i.1 = zext i8 %68 to i32
  %scevgep338.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %69 = load i8, i8* %scevgep338.1, align 1
  %conv49.i.i.1 = zext i8 %69 to i32
  %xor.i73.i.1 = xor i32 %conv44.i.i.1, %conv49.i.i.1
  %conv50.i.i.1 = trunc i32 %xor.i73.i.1 to i8
  %scevgep342.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  store i8 %conv50.i.i.1, i8* %scevgep342.1, align 1
  %70 = load i8, i8* %arraydecay6.i, align 1
  %conv57.i.i.1 = zext i8 %70 to i32
  %xor58.i.i.1 = xor i32 %conv57.i.i.1, 1
  %conv59.i.i.1 = trunc i32 %xor58.i.i.1 to i8
  %scevgep339.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %71 = load i8, i8* %scevgep339.1, align 1
  %call64.i.i.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.1, i8 zeroext %71) #3
  %scevgep346.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  store i8 %call64.i.i.1, i8* %scevgep346.1, align 1
  %72 = load i8, i8* %arraydecay6.i, align 1
  %scevgep343.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  %73 = load i8, i8* %scevgep343.1, align 1
  %call75.i.i.1 = call zeroext i8 @mult(i8 zeroext %72, i8 zeroext %73) #3
  %scevgep350.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  store i8 %call75.i.i.1, i8* %scevgep350.1, align 1
  %scevgep347.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  %74 = load i8, i8* %scevgep347.1, align 1
  %conv84.i.i.1 = zext i8 %74 to i32
  %scevgep351.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  %75 = load i8, i8* %scevgep351.1, align 1
  %conv89.i.i.1 = zext i8 %75 to i32
  %xor90.i.i.1 = xor i32 %conv84.i.i.1, %conv89.i.i.1
  %conv91.i.i.1 = trunc i32 %xor90.i.i.1 to i8
  %scevgep354.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  store i8 %conv91.i.i.1, i8* %scevgep354.1, align 1
  %scevgep335.2 = getelementptr i8, i8* %x, i64 2
  %76 = load i8, i8* %scevgep335.2, align 1
  %conv44.i.i.2 = zext i8 %76 to i32
  %scevgep338.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %77 = load i8, i8* %scevgep338.2, align 1
  %conv49.i.i.2 = zext i8 %77 to i32
  %xor.i73.i.2 = xor i32 %conv44.i.i.2, %conv49.i.i.2
  %conv50.i.i.2 = trunc i32 %xor.i73.i.2 to i8
  %scevgep342.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i.i, i64 0, i64 0, i64 2
  store i8 %conv50.i.i.2, i8* %scevgep342.2, align 1
  %78 = load i8, i8* %arraydecay6.i, align 1
  %conv57.i.i.2 = zext i8 %78 to i32
  %xor58.i.i.2 = xor i32 %conv57.i.i.2, 1
  %conv59.i.i.2 = trunc i32 %xor58.i.i.2 to i8
  %scevgep339.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %79 = load i8, i8* %scevgep339.2, align 1
  %call64.i.i.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.2, i8 zeroext %79) #3
  %scevgep346.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i.i, i64 0, i64 0, i64 2
  store i8 %call64.i.i.2, i8* %scevgep346.2, align 1
  %80 = load i8, i8* %arraydecay6.i, align 1
  %scevgep343.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i.i, i64 0, i64 0, i64 2
  %81 = load i8, i8* %scevgep343.2, align 1
  %call75.i.i.2 = call zeroext i8 @mult(i8 zeroext %80, i8 zeroext %81) #3
  %scevgep350.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i.i, i64 0, i64 0, i64 2
  store i8 %call75.i.i.2, i8* %scevgep350.2, align 1
  %scevgep347.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i.i, i64 0, i64 0, i64 2
  %82 = load i8, i8* %scevgep347.2, align 1
  %conv84.i.i.2 = zext i8 %82 to i32
  %scevgep351.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i.i, i64 0, i64 0, i64 2
  %83 = load i8, i8* %scevgep351.2, align 1
  %conv89.i.i.2 = zext i8 %83 to i32
  %xor90.i.i.2 = xor i32 %conv84.i.i.2, %conv89.i.i.2
  %conv91.i.i.2 = trunc i32 %xor90.i.i.2 to i8
  %scevgep354.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i.i, i64 0, i64 0, i64 2
  store i8 %conv91.i.i.2, i8* %scevgep354.2, align 1
  %scevgep335.3 = getelementptr i8, i8* %x, i64 3
  %84 = load i8, i8* %scevgep335.3, align 1
  %conv44.i.i.3 = zext i8 %84 to i32
  %scevgep338.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  %85 = load i8, i8* %scevgep338.3, align 1
  %conv49.i.i.3 = zext i8 %85 to i32
  %xor.i73.i.3 = xor i32 %conv44.i.i.3, %conv49.i.i.3
  %conv50.i.i.3 = trunc i32 %xor.i73.i.3 to i8
  %scevgep342.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i.i, i64 0, i64 0, i64 3
  store i8 %conv50.i.i.3, i8* %scevgep342.3, align 1
  %86 = load i8, i8* %arraydecay6.i, align 1
  %conv57.i.i.3 = zext i8 %86 to i32
  %xor58.i.i.3 = xor i32 %conv57.i.i.3, 1
  %conv59.i.i.3 = trunc i32 %xor58.i.i.3 to i8
  %scevgep339.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  %87 = load i8, i8* %scevgep339.3, align 1
  %call64.i.i.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.3, i8 zeroext %87) #3
  %scevgep346.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i.i, i64 0, i64 0, i64 3
  store i8 %call64.i.i.3, i8* %scevgep346.3, align 1
  %88 = load i8, i8* %arraydecay6.i, align 1
  %scevgep343.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i.i, i64 0, i64 0, i64 3
  %89 = load i8, i8* %scevgep343.3, align 1
  %call75.i.i.3 = call zeroext i8 @mult(i8 zeroext %88, i8 zeroext %89) #3
  %scevgep350.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i.i, i64 0, i64 0, i64 3
  store i8 %call75.i.i.3, i8* %scevgep350.3, align 1
  %scevgep347.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i.i, i64 0, i64 0, i64 3
  %90 = load i8, i8* %scevgep347.3, align 1
  %conv84.i.i.3 = zext i8 %90 to i32
  %scevgep351.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i.i, i64 0, i64 0, i64 3
  %91 = load i8, i8* %scevgep351.3, align 1
  %conv89.i.i.3 = zext i8 %91 to i32
  %xor90.i.i.3 = xor i32 %conv84.i.i.3, %conv89.i.i.3
  %conv91.i.i.3 = trunc i32 %xor90.i.i.3 to i8
  %scevgep354.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i.i, i64 0, i64 0, i64 3
  store i8 %conv91.i.i.3, i8* %scevgep354.3, align 1
  %scevgep335.4 = getelementptr i8, i8* %x, i64 4
  %92 = load i8, i8* %scevgep335.4, align 1
  %conv44.i.i.4 = zext i8 %92 to i32
  %scevgep338.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 4
  %93 = load i8, i8* %scevgep338.4, align 1
  %conv49.i.i.4 = zext i8 %93 to i32
  %xor.i73.i.4 = xor i32 %conv44.i.i.4, %conv49.i.i.4
  %conv50.i.i.4 = trunc i32 %xor.i73.i.4 to i8
  %scevgep342.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i.i, i64 0, i64 0, i64 4
  store i8 %conv50.i.i.4, i8* %scevgep342.4, align 1
  %94 = load i8, i8* %arraydecay6.i, align 1
  %conv57.i.i.4 = zext i8 %94 to i32
  %xor58.i.i.4 = xor i32 %conv57.i.i.4, 1
  %conv59.i.i.4 = trunc i32 %xor58.i.i.4 to i8
  %scevgep339.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 4
  %95 = load i8, i8* %scevgep339.4, align 1
  %call64.i.i.4 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.4, i8 zeroext %95) #3
  %scevgep346.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i.i, i64 0, i64 0, i64 4
  store i8 %call64.i.i.4, i8* %scevgep346.4, align 1
  %96 = load i8, i8* %arraydecay6.i, align 1
  %scevgep343.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i.i, i64 0, i64 0, i64 4
  %97 = load i8, i8* %scevgep343.4, align 1
  %call75.i.i.4 = call zeroext i8 @mult(i8 zeroext %96, i8 zeroext %97) #3
  %scevgep350.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i.i, i64 0, i64 0, i64 4
  store i8 %call75.i.i.4, i8* %scevgep350.4, align 1
  %scevgep347.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i.i, i64 0, i64 0, i64 4
  %98 = load i8, i8* %scevgep347.4, align 1
  %conv84.i.i.4 = zext i8 %98 to i32
  %scevgep351.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i.i, i64 0, i64 0, i64 4
  %99 = load i8, i8* %scevgep351.4, align 1
  %conv89.i.i.4 = zext i8 %99 to i32
  %xor90.i.i.4 = xor i32 %conv84.i.i.4, %conv89.i.i.4
  %conv91.i.i.4 = trunc i32 %xor90.i.i.4 to i8
  %scevgep354.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i.i, i64 0, i64 0, i64 4
  store i8 %conv91.i.i.4, i8* %scevgep354.4, align 1
  %scevgep337 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %100 = bitcast i8* %scevgep337 to [5 x [5 x i8]]*
  %scevgep341 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i.i, i64 0, i64 1, i64 0
  %101 = bitcast i8* %scevgep341 to [5 x [5 x i8]]*
  %scevgep345 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i.i, i64 0, i64 1, i64 0
  %102 = bitcast i8* %scevgep345 to [5 x [5 x i8]]*
  %scevgep349 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i.i, i64 0, i64 1, i64 0
  %103 = bitcast i8* %scevgep349 to [5 x [5 x i8]]*
  %scevgep353 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %104 = bitcast i8* %scevgep353 to [5 x [5 x i8]]*
  %arrayidx56.i.i.1 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 1
  %arrayidx70.i.i.1 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 1
  %105 = load i8, i8* %x, align 1
  %conv44.i.i.1880 = zext i8 %105 to i32
  %scevgep338.1881 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %100, i64 0, i64 0, i64 0
  %106 = load i8, i8* %scevgep338.1881, align 1
  %conv49.i.i.1882 = zext i8 %106 to i32
  %xor.i73.i.1883 = xor i32 %conv44.i.i.1880, %conv49.i.i.1882
  %conv50.i.i.1884 = trunc i32 %xor.i73.i.1883 to i8
  %scevgep342.1885 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %101, i64 0, i64 0, i64 0
  store i8 %conv50.i.i.1884, i8* %scevgep342.1885, align 1
  %107 = load i8, i8* %arrayidx56.i.i.1, align 1
  %conv57.i.i.1886 = zext i8 %107 to i32
  %xor58.i.i.1887 = xor i32 %conv57.i.i.1886, 1
  %conv59.i.i.1888 = trunc i32 %xor58.i.i.1887 to i8
  %scevgep339.1889 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %100, i64 0, i64 0, i64 0
  %108 = load i8, i8* %scevgep339.1889, align 1
  %call64.i.i.1890 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.1888, i8 zeroext %108) #3
  %scevgep346.1891 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %102, i64 0, i64 0, i64 0
  store i8 %call64.i.i.1890, i8* %scevgep346.1891, align 1
  %109 = load i8, i8* %arrayidx70.i.i.1, align 1
  %scevgep343.1892 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %101, i64 0, i64 0, i64 0
  %110 = load i8, i8* %scevgep343.1892, align 1
  %call75.i.i.1893 = call zeroext i8 @mult(i8 zeroext %109, i8 zeroext %110) #3
  %scevgep350.1894 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %103, i64 0, i64 0, i64 0
  store i8 %call75.i.i.1893, i8* %scevgep350.1894, align 1
  %scevgep347.1895 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %102, i64 0, i64 0, i64 0
  %111 = load i8, i8* %scevgep347.1895, align 1
  %conv84.i.i.1896 = zext i8 %111 to i32
  %scevgep351.1897 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %103, i64 0, i64 0, i64 0
  %112 = load i8, i8* %scevgep351.1897, align 1
  %conv89.i.i.1898 = zext i8 %112 to i32
  %xor90.i.i.1899 = xor i32 %conv84.i.i.1896, %conv89.i.i.1898
  %conv91.i.i.1900 = trunc i32 %xor90.i.i.1899 to i8
  %scevgep354.1901 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %104, i64 0, i64 0, i64 0
  store i8 %conv91.i.i.1900, i8* %scevgep354.1901, align 1
  %scevgep335.2.1 = getelementptr i8, i8* %x, i64 2
  %113 = load i8, i8* %scevgep335.2.1, align 1
  %conv44.i.i.2.1 = zext i8 %113 to i32
  %scevgep338.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %100, i64 0, i64 0, i64 2
  %114 = load i8, i8* %scevgep338.2.1, align 1
  %conv49.i.i.2.1 = zext i8 %114 to i32
  %xor.i73.i.2.1 = xor i32 %conv44.i.i.2.1, %conv49.i.i.2.1
  %conv50.i.i.2.1 = trunc i32 %xor.i73.i.2.1 to i8
  %scevgep342.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %101, i64 0, i64 0, i64 2
  store i8 %conv50.i.i.2.1, i8* %scevgep342.2.1, align 1
  %115 = load i8, i8* %arrayidx56.i.i.1, align 1
  %conv57.i.i.2.1 = zext i8 %115 to i32
  %xor58.i.i.2.1 = xor i32 %conv57.i.i.2.1, 1
  %conv59.i.i.2.1 = trunc i32 %xor58.i.i.2.1 to i8
  %scevgep339.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %100, i64 0, i64 0, i64 2
  %116 = load i8, i8* %scevgep339.2.1, align 1
  %call64.i.i.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.2.1, i8 zeroext %116) #3
  %scevgep346.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %102, i64 0, i64 0, i64 2
  store i8 %call64.i.i.2.1, i8* %scevgep346.2.1, align 1
  %117 = load i8, i8* %arrayidx70.i.i.1, align 1
  %scevgep343.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %101, i64 0, i64 0, i64 2
  %118 = load i8, i8* %scevgep343.2.1, align 1
  %call75.i.i.2.1 = call zeroext i8 @mult(i8 zeroext %117, i8 zeroext %118) #3
  %scevgep350.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %103, i64 0, i64 0, i64 2
  store i8 %call75.i.i.2.1, i8* %scevgep350.2.1, align 1
  %scevgep347.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %102, i64 0, i64 0, i64 2
  %119 = load i8, i8* %scevgep347.2.1, align 1
  %conv84.i.i.2.1 = zext i8 %119 to i32
  %scevgep351.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %103, i64 0, i64 0, i64 2
  %120 = load i8, i8* %scevgep351.2.1, align 1
  %conv89.i.i.2.1 = zext i8 %120 to i32
  %xor90.i.i.2.1 = xor i32 %conv84.i.i.2.1, %conv89.i.i.2.1
  %conv91.i.i.2.1 = trunc i32 %xor90.i.i.2.1 to i8
  %scevgep354.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %104, i64 0, i64 0, i64 2
  store i8 %conv91.i.i.2.1, i8* %scevgep354.2.1, align 1
  %scevgep335.3.1 = getelementptr i8, i8* %x, i64 3
  %121 = load i8, i8* %scevgep335.3.1, align 1
  %conv44.i.i.3.1 = zext i8 %121 to i32
  %scevgep338.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %100, i64 0, i64 0, i64 3
  %122 = load i8, i8* %scevgep338.3.1, align 1
  %conv49.i.i.3.1 = zext i8 %122 to i32
  %xor.i73.i.3.1 = xor i32 %conv44.i.i.3.1, %conv49.i.i.3.1
  %conv50.i.i.3.1 = trunc i32 %xor.i73.i.3.1 to i8
  %scevgep342.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %101, i64 0, i64 0, i64 3
  store i8 %conv50.i.i.3.1, i8* %scevgep342.3.1, align 1
  %123 = load i8, i8* %arrayidx56.i.i.1, align 1
  %conv57.i.i.3.1 = zext i8 %123 to i32
  %xor58.i.i.3.1 = xor i32 %conv57.i.i.3.1, 1
  %conv59.i.i.3.1 = trunc i32 %xor58.i.i.3.1 to i8
  %scevgep339.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %100, i64 0, i64 0, i64 3
  %124 = load i8, i8* %scevgep339.3.1, align 1
  %call64.i.i.3.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.3.1, i8 zeroext %124) #3
  %scevgep346.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %102, i64 0, i64 0, i64 3
  store i8 %call64.i.i.3.1, i8* %scevgep346.3.1, align 1
  %125 = load i8, i8* %arrayidx70.i.i.1, align 1
  %scevgep343.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %101, i64 0, i64 0, i64 3
  %126 = load i8, i8* %scevgep343.3.1, align 1
  %call75.i.i.3.1 = call zeroext i8 @mult(i8 zeroext %125, i8 zeroext %126) #3
  %scevgep350.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %103, i64 0, i64 0, i64 3
  store i8 %call75.i.i.3.1, i8* %scevgep350.3.1, align 1
  %scevgep347.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %102, i64 0, i64 0, i64 3
  %127 = load i8, i8* %scevgep347.3.1, align 1
  %conv84.i.i.3.1 = zext i8 %127 to i32
  %scevgep351.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %103, i64 0, i64 0, i64 3
  %128 = load i8, i8* %scevgep351.3.1, align 1
  %conv89.i.i.3.1 = zext i8 %128 to i32
  %xor90.i.i.3.1 = xor i32 %conv84.i.i.3.1, %conv89.i.i.3.1
  %conv91.i.i.3.1 = trunc i32 %xor90.i.i.3.1 to i8
  %scevgep354.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %104, i64 0, i64 0, i64 3
  store i8 %conv91.i.i.3.1, i8* %scevgep354.3.1, align 1
  %scevgep335.4.1 = getelementptr i8, i8* %x, i64 4
  %129 = load i8, i8* %scevgep335.4.1, align 1
  %conv44.i.i.4.1 = zext i8 %129 to i32
  %scevgep338.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %100, i64 0, i64 0, i64 4
  %130 = load i8, i8* %scevgep338.4.1, align 1
  %conv49.i.i.4.1 = zext i8 %130 to i32
  %xor.i73.i.4.1 = xor i32 %conv44.i.i.4.1, %conv49.i.i.4.1
  %conv50.i.i.4.1 = trunc i32 %xor.i73.i.4.1 to i8
  %scevgep342.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %101, i64 0, i64 0, i64 4
  store i8 %conv50.i.i.4.1, i8* %scevgep342.4.1, align 1
  %131 = load i8, i8* %arrayidx56.i.i.1, align 1
  %conv57.i.i.4.1 = zext i8 %131 to i32
  %xor58.i.i.4.1 = xor i32 %conv57.i.i.4.1, 1
  %conv59.i.i.4.1 = trunc i32 %xor58.i.i.4.1 to i8
  %scevgep339.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %100, i64 0, i64 0, i64 4
  %132 = load i8, i8* %scevgep339.4.1, align 1
  %call64.i.i.4.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.4.1, i8 zeroext %132) #3
  %scevgep346.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %102, i64 0, i64 0, i64 4
  store i8 %call64.i.i.4.1, i8* %scevgep346.4.1, align 1
  %133 = load i8, i8* %arrayidx70.i.i.1, align 1
  %scevgep343.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %101, i64 0, i64 0, i64 4
  %134 = load i8, i8* %scevgep343.4.1, align 1
  %call75.i.i.4.1 = call zeroext i8 @mult(i8 zeroext %133, i8 zeroext %134) #3
  %scevgep350.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %103, i64 0, i64 0, i64 4
  store i8 %call75.i.i.4.1, i8* %scevgep350.4.1, align 1
  %scevgep347.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %102, i64 0, i64 0, i64 4
  %135 = load i8, i8* %scevgep347.4.1, align 1
  %conv84.i.i.4.1 = zext i8 %135 to i32
  %scevgep351.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %103, i64 0, i64 0, i64 4
  %136 = load i8, i8* %scevgep351.4.1, align 1
  %conv89.i.i.4.1 = zext i8 %136 to i32
  %xor90.i.i.4.1 = xor i32 %conv84.i.i.4.1, %conv89.i.i.4.1
  %conv91.i.i.4.1 = trunc i32 %xor90.i.i.4.1 to i8
  %scevgep354.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %104, i64 0, i64 0, i64 4
  store i8 %conv91.i.i.4.1, i8* %scevgep354.4.1, align 1
  %scevgep337.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %100, i64 0, i64 1, i64 0
  %137 = bitcast i8* %scevgep337.1 to [5 x [5 x i8]]*
  %scevgep341.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %101, i64 0, i64 1, i64 0
  %138 = bitcast i8* %scevgep341.1 to [5 x [5 x i8]]*
  %scevgep345.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %102, i64 0, i64 1, i64 0
  %139 = bitcast i8* %scevgep345.1 to [5 x [5 x i8]]*
  %scevgep349.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %103, i64 0, i64 1, i64 0
  %140 = bitcast i8* %scevgep349.1 to [5 x [5 x i8]]*
  %scevgep353.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %104, i64 0, i64 1, i64 0
  %141 = bitcast i8* %scevgep353.1 to [5 x [5 x i8]]*
  %arrayidx56.i.i.2 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 2
  %arrayidx70.i.i.2 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 2
  %142 = load i8, i8* %x, align 1
  %conv44.i.i.2906 = zext i8 %142 to i32
  %scevgep338.2907 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %137, i64 0, i64 0, i64 0
  %143 = load i8, i8* %scevgep338.2907, align 1
  %conv49.i.i.2908 = zext i8 %143 to i32
  %xor.i73.i.2909 = xor i32 %conv44.i.i.2906, %conv49.i.i.2908
  %conv50.i.i.2910 = trunc i32 %xor.i73.i.2909 to i8
  %scevgep342.2911 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %138, i64 0, i64 0, i64 0
  store i8 %conv50.i.i.2910, i8* %scevgep342.2911, align 1
  %144 = load i8, i8* %arrayidx56.i.i.2, align 1
  %conv57.i.i.2912 = zext i8 %144 to i32
  %xor58.i.i.2913 = xor i32 %conv57.i.i.2912, 1
  %conv59.i.i.2914 = trunc i32 %xor58.i.i.2913 to i8
  %scevgep339.2915 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %137, i64 0, i64 0, i64 0
  %145 = load i8, i8* %scevgep339.2915, align 1
  %call64.i.i.2916 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.2914, i8 zeroext %145) #3
  %scevgep346.2917 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %139, i64 0, i64 0, i64 0
  store i8 %call64.i.i.2916, i8* %scevgep346.2917, align 1
  %146 = load i8, i8* %arrayidx70.i.i.2, align 1
  %scevgep343.2918 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %138, i64 0, i64 0, i64 0
  %147 = load i8, i8* %scevgep343.2918, align 1
  %call75.i.i.2919 = call zeroext i8 @mult(i8 zeroext %146, i8 zeroext %147) #3
  %scevgep350.2920 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %140, i64 0, i64 0, i64 0
  store i8 %call75.i.i.2919, i8* %scevgep350.2920, align 1
  %scevgep347.2921 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %139, i64 0, i64 0, i64 0
  %148 = load i8, i8* %scevgep347.2921, align 1
  %conv84.i.i.2922 = zext i8 %148 to i32
  %scevgep351.2923 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %140, i64 0, i64 0, i64 0
  %149 = load i8, i8* %scevgep351.2923, align 1
  %conv89.i.i.2924 = zext i8 %149 to i32
  %xor90.i.i.2925 = xor i32 %conv84.i.i.2922, %conv89.i.i.2924
  %conv91.i.i.2926 = trunc i32 %xor90.i.i.2925 to i8
  %scevgep354.2927 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %141, i64 0, i64 0, i64 0
  store i8 %conv91.i.i.2926, i8* %scevgep354.2927, align 1
  %scevgep335.1.2 = getelementptr i8, i8* %x, i64 1
  %150 = load i8, i8* %scevgep335.1.2, align 1
  %conv44.i.i.1.2 = zext i8 %150 to i32
  %scevgep338.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %137, i64 0, i64 0, i64 1
  %151 = load i8, i8* %scevgep338.1.2, align 1
  %conv49.i.i.1.2 = zext i8 %151 to i32
  %xor.i73.i.1.2 = xor i32 %conv44.i.i.1.2, %conv49.i.i.1.2
  %conv50.i.i.1.2 = trunc i32 %xor.i73.i.1.2 to i8
  %scevgep342.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %138, i64 0, i64 0, i64 1
  store i8 %conv50.i.i.1.2, i8* %scevgep342.1.2, align 1
  %152 = load i8, i8* %arrayidx56.i.i.2, align 1
  %conv57.i.i.1.2 = zext i8 %152 to i32
  %xor58.i.i.1.2 = xor i32 %conv57.i.i.1.2, 1
  %conv59.i.i.1.2 = trunc i32 %xor58.i.i.1.2 to i8
  %scevgep339.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %137, i64 0, i64 0, i64 1
  %153 = load i8, i8* %scevgep339.1.2, align 1
  %call64.i.i.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.1.2, i8 zeroext %153) #3
  %scevgep346.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %139, i64 0, i64 0, i64 1
  store i8 %call64.i.i.1.2, i8* %scevgep346.1.2, align 1
  %154 = load i8, i8* %arrayidx70.i.i.2, align 1
  %scevgep343.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %138, i64 0, i64 0, i64 1
  %155 = load i8, i8* %scevgep343.1.2, align 1
  %call75.i.i.1.2 = call zeroext i8 @mult(i8 zeroext %154, i8 zeroext %155) #3
  %scevgep350.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %140, i64 0, i64 0, i64 1
  store i8 %call75.i.i.1.2, i8* %scevgep350.1.2, align 1
  %scevgep347.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %139, i64 0, i64 0, i64 1
  %156 = load i8, i8* %scevgep347.1.2, align 1
  %conv84.i.i.1.2 = zext i8 %156 to i32
  %scevgep351.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %140, i64 0, i64 0, i64 1
  %157 = load i8, i8* %scevgep351.1.2, align 1
  %conv89.i.i.1.2 = zext i8 %157 to i32
  %xor90.i.i.1.2 = xor i32 %conv84.i.i.1.2, %conv89.i.i.1.2
  %conv91.i.i.1.2 = trunc i32 %xor90.i.i.1.2 to i8
  %scevgep354.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %141, i64 0, i64 0, i64 1
  store i8 %conv91.i.i.1.2, i8* %scevgep354.1.2, align 1
  %scevgep335.3.2 = getelementptr i8, i8* %x, i64 3
  %158 = load i8, i8* %scevgep335.3.2, align 1
  %conv44.i.i.3.2 = zext i8 %158 to i32
  %scevgep338.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %137, i64 0, i64 0, i64 3
  %159 = load i8, i8* %scevgep338.3.2, align 1
  %conv49.i.i.3.2 = zext i8 %159 to i32
  %xor.i73.i.3.2 = xor i32 %conv44.i.i.3.2, %conv49.i.i.3.2
  %conv50.i.i.3.2 = trunc i32 %xor.i73.i.3.2 to i8
  %scevgep342.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %138, i64 0, i64 0, i64 3
  store i8 %conv50.i.i.3.2, i8* %scevgep342.3.2, align 1
  %160 = load i8, i8* %arrayidx56.i.i.2, align 1
  %conv57.i.i.3.2 = zext i8 %160 to i32
  %xor58.i.i.3.2 = xor i32 %conv57.i.i.3.2, 1
  %conv59.i.i.3.2 = trunc i32 %xor58.i.i.3.2 to i8
  %scevgep339.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %137, i64 0, i64 0, i64 3
  %161 = load i8, i8* %scevgep339.3.2, align 1
  %call64.i.i.3.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.3.2, i8 zeroext %161) #3
  %scevgep346.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %139, i64 0, i64 0, i64 3
  store i8 %call64.i.i.3.2, i8* %scevgep346.3.2, align 1
  %162 = load i8, i8* %arrayidx70.i.i.2, align 1
  %scevgep343.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %138, i64 0, i64 0, i64 3
  %163 = load i8, i8* %scevgep343.3.2, align 1
  %call75.i.i.3.2 = call zeroext i8 @mult(i8 zeroext %162, i8 zeroext %163) #3
  %scevgep350.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %140, i64 0, i64 0, i64 3
  store i8 %call75.i.i.3.2, i8* %scevgep350.3.2, align 1
  %scevgep347.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %139, i64 0, i64 0, i64 3
  %164 = load i8, i8* %scevgep347.3.2, align 1
  %conv84.i.i.3.2 = zext i8 %164 to i32
  %scevgep351.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %140, i64 0, i64 0, i64 3
  %165 = load i8, i8* %scevgep351.3.2, align 1
  %conv89.i.i.3.2 = zext i8 %165 to i32
  %xor90.i.i.3.2 = xor i32 %conv84.i.i.3.2, %conv89.i.i.3.2
  %conv91.i.i.3.2 = trunc i32 %xor90.i.i.3.2 to i8
  %scevgep354.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %141, i64 0, i64 0, i64 3
  store i8 %conv91.i.i.3.2, i8* %scevgep354.3.2, align 1
  %scevgep335.4.2 = getelementptr i8, i8* %x, i64 4
  %166 = load i8, i8* %scevgep335.4.2, align 1
  %conv44.i.i.4.2 = zext i8 %166 to i32
  %scevgep338.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %137, i64 0, i64 0, i64 4
  %167 = load i8, i8* %scevgep338.4.2, align 1
  %conv49.i.i.4.2 = zext i8 %167 to i32
  %xor.i73.i.4.2 = xor i32 %conv44.i.i.4.2, %conv49.i.i.4.2
  %conv50.i.i.4.2 = trunc i32 %xor.i73.i.4.2 to i8
  %scevgep342.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %138, i64 0, i64 0, i64 4
  store i8 %conv50.i.i.4.2, i8* %scevgep342.4.2, align 1
  %168 = load i8, i8* %arrayidx56.i.i.2, align 1
  %conv57.i.i.4.2 = zext i8 %168 to i32
  %xor58.i.i.4.2 = xor i32 %conv57.i.i.4.2, 1
  %conv59.i.i.4.2 = trunc i32 %xor58.i.i.4.2 to i8
  %scevgep339.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %137, i64 0, i64 0, i64 4
  %169 = load i8, i8* %scevgep339.4.2, align 1
  %call64.i.i.4.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.4.2, i8 zeroext %169) #3
  %scevgep346.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %139, i64 0, i64 0, i64 4
  store i8 %call64.i.i.4.2, i8* %scevgep346.4.2, align 1
  %170 = load i8, i8* %arrayidx70.i.i.2, align 1
  %scevgep343.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %138, i64 0, i64 0, i64 4
  %171 = load i8, i8* %scevgep343.4.2, align 1
  %call75.i.i.4.2 = call zeroext i8 @mult(i8 zeroext %170, i8 zeroext %171) #3
  %scevgep350.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %140, i64 0, i64 0, i64 4
  store i8 %call75.i.i.4.2, i8* %scevgep350.4.2, align 1
  %scevgep347.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %139, i64 0, i64 0, i64 4
  %172 = load i8, i8* %scevgep347.4.2, align 1
  %conv84.i.i.4.2 = zext i8 %172 to i32
  %scevgep351.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %140, i64 0, i64 0, i64 4
  %173 = load i8, i8* %scevgep351.4.2, align 1
  %conv89.i.i.4.2 = zext i8 %173 to i32
  %xor90.i.i.4.2 = xor i32 %conv84.i.i.4.2, %conv89.i.i.4.2
  %conv91.i.i.4.2 = trunc i32 %xor90.i.i.4.2 to i8
  %scevgep354.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %141, i64 0, i64 0, i64 4
  store i8 %conv91.i.i.4.2, i8* %scevgep354.4.2, align 1
  %scevgep337.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %137, i64 0, i64 1, i64 0
  %174 = bitcast i8* %scevgep337.2 to [5 x [5 x i8]]*
  %scevgep341.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %138, i64 0, i64 1, i64 0
  %175 = bitcast i8* %scevgep341.2 to [5 x [5 x i8]]*
  %scevgep345.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %139, i64 0, i64 1, i64 0
  %176 = bitcast i8* %scevgep345.2 to [5 x [5 x i8]]*
  %scevgep349.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %140, i64 0, i64 1, i64 0
  %177 = bitcast i8* %scevgep349.2 to [5 x [5 x i8]]*
  %scevgep353.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %141, i64 0, i64 1, i64 0
  %178 = bitcast i8* %scevgep353.2 to [5 x [5 x i8]]*
  %arrayidx56.i.i.3 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 3
  %arrayidx70.i.i.3 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 3
  %179 = load i8, i8* %x, align 1
  %conv44.i.i.3932 = zext i8 %179 to i32
  %scevgep338.3933 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %174, i64 0, i64 0, i64 0
  %180 = load i8, i8* %scevgep338.3933, align 1
  %conv49.i.i.3934 = zext i8 %180 to i32
  %xor.i73.i.3935 = xor i32 %conv44.i.i.3932, %conv49.i.i.3934
  %conv50.i.i.3936 = trunc i32 %xor.i73.i.3935 to i8
  %scevgep342.3937 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %175, i64 0, i64 0, i64 0
  store i8 %conv50.i.i.3936, i8* %scevgep342.3937, align 1
  %181 = load i8, i8* %arrayidx56.i.i.3, align 1
  %conv57.i.i.3938 = zext i8 %181 to i32
  %xor58.i.i.3939 = xor i32 %conv57.i.i.3938, 1
  %conv59.i.i.3940 = trunc i32 %xor58.i.i.3939 to i8
  %scevgep339.3941 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %174, i64 0, i64 0, i64 0
  %182 = load i8, i8* %scevgep339.3941, align 1
  %call64.i.i.3942 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.3940, i8 zeroext %182) #3
  %scevgep346.3943 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %176, i64 0, i64 0, i64 0
  store i8 %call64.i.i.3942, i8* %scevgep346.3943, align 1
  %183 = load i8, i8* %arrayidx70.i.i.3, align 1
  %scevgep343.3944 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %175, i64 0, i64 0, i64 0
  %184 = load i8, i8* %scevgep343.3944, align 1
  %call75.i.i.3945 = call zeroext i8 @mult(i8 zeroext %183, i8 zeroext %184) #3
  %scevgep350.3946 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %177, i64 0, i64 0, i64 0
  store i8 %call75.i.i.3945, i8* %scevgep350.3946, align 1
  %scevgep347.3947 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %176, i64 0, i64 0, i64 0
  %185 = load i8, i8* %scevgep347.3947, align 1
  %conv84.i.i.3948 = zext i8 %185 to i32
  %scevgep351.3949 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %177, i64 0, i64 0, i64 0
  %186 = load i8, i8* %scevgep351.3949, align 1
  %conv89.i.i.3950 = zext i8 %186 to i32
  %xor90.i.i.3951 = xor i32 %conv84.i.i.3948, %conv89.i.i.3950
  %conv91.i.i.3952 = trunc i32 %xor90.i.i.3951 to i8
  %scevgep354.3953 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %178, i64 0, i64 0, i64 0
  store i8 %conv91.i.i.3952, i8* %scevgep354.3953, align 1
  %scevgep335.1.3 = getelementptr i8, i8* %x, i64 1
  %187 = load i8, i8* %scevgep335.1.3, align 1
  %conv44.i.i.1.3 = zext i8 %187 to i32
  %scevgep338.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %174, i64 0, i64 0, i64 1
  %188 = load i8, i8* %scevgep338.1.3, align 1
  %conv49.i.i.1.3 = zext i8 %188 to i32
  %xor.i73.i.1.3 = xor i32 %conv44.i.i.1.3, %conv49.i.i.1.3
  %conv50.i.i.1.3 = trunc i32 %xor.i73.i.1.3 to i8
  %scevgep342.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %175, i64 0, i64 0, i64 1
  store i8 %conv50.i.i.1.3, i8* %scevgep342.1.3, align 1
  %189 = load i8, i8* %arrayidx56.i.i.3, align 1
  %conv57.i.i.1.3 = zext i8 %189 to i32
  %xor58.i.i.1.3 = xor i32 %conv57.i.i.1.3, 1
  %conv59.i.i.1.3 = trunc i32 %xor58.i.i.1.3 to i8
  %scevgep339.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %174, i64 0, i64 0, i64 1
  %190 = load i8, i8* %scevgep339.1.3, align 1
  %call64.i.i.1.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.1.3, i8 zeroext %190) #3
  %scevgep346.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %176, i64 0, i64 0, i64 1
  store i8 %call64.i.i.1.3, i8* %scevgep346.1.3, align 1
  %191 = load i8, i8* %arrayidx70.i.i.3, align 1
  %scevgep343.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %175, i64 0, i64 0, i64 1
  %192 = load i8, i8* %scevgep343.1.3, align 1
  %call75.i.i.1.3 = call zeroext i8 @mult(i8 zeroext %191, i8 zeroext %192) #3
  %scevgep350.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %177, i64 0, i64 0, i64 1
  store i8 %call75.i.i.1.3, i8* %scevgep350.1.3, align 1
  %scevgep347.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %176, i64 0, i64 0, i64 1
  %193 = load i8, i8* %scevgep347.1.3, align 1
  %conv84.i.i.1.3 = zext i8 %193 to i32
  %scevgep351.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %177, i64 0, i64 0, i64 1
  %194 = load i8, i8* %scevgep351.1.3, align 1
  %conv89.i.i.1.3 = zext i8 %194 to i32
  %xor90.i.i.1.3 = xor i32 %conv84.i.i.1.3, %conv89.i.i.1.3
  %conv91.i.i.1.3 = trunc i32 %xor90.i.i.1.3 to i8
  %scevgep354.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %178, i64 0, i64 0, i64 1
  store i8 %conv91.i.i.1.3, i8* %scevgep354.1.3, align 1
  %scevgep335.2.3 = getelementptr i8, i8* %x, i64 2
  %195 = load i8, i8* %scevgep335.2.3, align 1
  %conv44.i.i.2.3 = zext i8 %195 to i32
  %scevgep338.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %174, i64 0, i64 0, i64 2
  %196 = load i8, i8* %scevgep338.2.3, align 1
  %conv49.i.i.2.3 = zext i8 %196 to i32
  %xor.i73.i.2.3 = xor i32 %conv44.i.i.2.3, %conv49.i.i.2.3
  %conv50.i.i.2.3 = trunc i32 %xor.i73.i.2.3 to i8
  %scevgep342.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %175, i64 0, i64 0, i64 2
  store i8 %conv50.i.i.2.3, i8* %scevgep342.2.3, align 1
  %197 = load i8, i8* %arrayidx56.i.i.3, align 1
  %conv57.i.i.2.3 = zext i8 %197 to i32
  %xor58.i.i.2.3 = xor i32 %conv57.i.i.2.3, 1
  %conv59.i.i.2.3 = trunc i32 %xor58.i.i.2.3 to i8
  %scevgep339.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %174, i64 0, i64 0, i64 2
  %198 = load i8, i8* %scevgep339.2.3, align 1
  %call64.i.i.2.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.2.3, i8 zeroext %198) #3
  %scevgep346.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %176, i64 0, i64 0, i64 2
  store i8 %call64.i.i.2.3, i8* %scevgep346.2.3, align 1
  %199 = load i8, i8* %arrayidx70.i.i.3, align 1
  %scevgep343.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %175, i64 0, i64 0, i64 2
  %200 = load i8, i8* %scevgep343.2.3, align 1
  %call75.i.i.2.3 = call zeroext i8 @mult(i8 zeroext %199, i8 zeroext %200) #3
  %scevgep350.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %177, i64 0, i64 0, i64 2
  store i8 %call75.i.i.2.3, i8* %scevgep350.2.3, align 1
  %scevgep347.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %176, i64 0, i64 0, i64 2
  %201 = load i8, i8* %scevgep347.2.3, align 1
  %conv84.i.i.2.3 = zext i8 %201 to i32
  %scevgep351.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %177, i64 0, i64 0, i64 2
  %202 = load i8, i8* %scevgep351.2.3, align 1
  %conv89.i.i.2.3 = zext i8 %202 to i32
  %xor90.i.i.2.3 = xor i32 %conv84.i.i.2.3, %conv89.i.i.2.3
  %conv91.i.i.2.3 = trunc i32 %xor90.i.i.2.3 to i8
  %scevgep354.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %178, i64 0, i64 0, i64 2
  store i8 %conv91.i.i.2.3, i8* %scevgep354.2.3, align 1
  %scevgep335.4.3 = getelementptr i8, i8* %x, i64 4
  %203 = load i8, i8* %scevgep335.4.3, align 1
  %conv44.i.i.4.3 = zext i8 %203 to i32
  %scevgep338.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %174, i64 0, i64 0, i64 4
  %204 = load i8, i8* %scevgep338.4.3, align 1
  %conv49.i.i.4.3 = zext i8 %204 to i32
  %xor.i73.i.4.3 = xor i32 %conv44.i.i.4.3, %conv49.i.i.4.3
  %conv50.i.i.4.3 = trunc i32 %xor.i73.i.4.3 to i8
  %scevgep342.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %175, i64 0, i64 0, i64 4
  store i8 %conv50.i.i.4.3, i8* %scevgep342.4.3, align 1
  %205 = load i8, i8* %arrayidx56.i.i.3, align 1
  %conv57.i.i.4.3 = zext i8 %205 to i32
  %xor58.i.i.4.3 = xor i32 %conv57.i.i.4.3, 1
  %conv59.i.i.4.3 = trunc i32 %xor58.i.i.4.3 to i8
  %scevgep339.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %174, i64 0, i64 0, i64 4
  %206 = load i8, i8* %scevgep339.4.3, align 1
  %call64.i.i.4.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.4.3, i8 zeroext %206) #3
  %scevgep346.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %176, i64 0, i64 0, i64 4
  store i8 %call64.i.i.4.3, i8* %scevgep346.4.3, align 1
  %207 = load i8, i8* %arrayidx70.i.i.3, align 1
  %scevgep343.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %175, i64 0, i64 0, i64 4
  %208 = load i8, i8* %scevgep343.4.3, align 1
  %call75.i.i.4.3 = call zeroext i8 @mult(i8 zeroext %207, i8 zeroext %208) #3
  %scevgep350.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %177, i64 0, i64 0, i64 4
  store i8 %call75.i.i.4.3, i8* %scevgep350.4.3, align 1
  %scevgep347.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %176, i64 0, i64 0, i64 4
  %209 = load i8, i8* %scevgep347.4.3, align 1
  %conv84.i.i.4.3 = zext i8 %209 to i32
  %scevgep351.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %177, i64 0, i64 0, i64 4
  %210 = load i8, i8* %scevgep351.4.3, align 1
  %conv89.i.i.4.3 = zext i8 %210 to i32
  %xor90.i.i.4.3 = xor i32 %conv84.i.i.4.3, %conv89.i.i.4.3
  %conv91.i.i.4.3 = trunc i32 %xor90.i.i.4.3 to i8
  %scevgep354.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %178, i64 0, i64 0, i64 4
  store i8 %conv91.i.i.4.3, i8* %scevgep354.4.3, align 1
  %scevgep337.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %174, i64 0, i64 1, i64 0
  %211 = bitcast i8* %scevgep337.3 to [5 x [5 x i8]]*
  %scevgep341.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %175, i64 0, i64 1, i64 0
  %212 = bitcast i8* %scevgep341.3 to [5 x [5 x i8]]*
  %scevgep345.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %176, i64 0, i64 1, i64 0
  %213 = bitcast i8* %scevgep345.3 to [5 x [5 x i8]]*
  %scevgep349.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %177, i64 0, i64 1, i64 0
  %214 = bitcast i8* %scevgep349.3 to [5 x [5 x i8]]*
  %scevgep353.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %178, i64 0, i64 1, i64 0
  %215 = bitcast i8* %scevgep353.3 to [5 x [5 x i8]]*
  %arrayidx56.i.i.4 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 4
  %arrayidx70.i.i.4 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 4
  %216 = load i8, i8* %x, align 1
  %conv44.i.i.4958 = zext i8 %216 to i32
  %scevgep338.4959 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %211, i64 0, i64 0, i64 0
  %217 = load i8, i8* %scevgep338.4959, align 1
  %conv49.i.i.4960 = zext i8 %217 to i32
  %xor.i73.i.4961 = xor i32 %conv44.i.i.4958, %conv49.i.i.4960
  %conv50.i.i.4962 = trunc i32 %xor.i73.i.4961 to i8
  %scevgep342.4963 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %212, i64 0, i64 0, i64 0
  store i8 %conv50.i.i.4962, i8* %scevgep342.4963, align 1
  %218 = load i8, i8* %arrayidx56.i.i.4, align 1
  %conv57.i.i.4964 = zext i8 %218 to i32
  %xor58.i.i.4965 = xor i32 %conv57.i.i.4964, 1
  %conv59.i.i.4966 = trunc i32 %xor58.i.i.4965 to i8
  %scevgep339.4967 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %211, i64 0, i64 0, i64 0
  %219 = load i8, i8* %scevgep339.4967, align 1
  %call64.i.i.4968 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.4966, i8 zeroext %219) #3
  %scevgep346.4969 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %213, i64 0, i64 0, i64 0
  store i8 %call64.i.i.4968, i8* %scevgep346.4969, align 1
  %220 = load i8, i8* %arrayidx70.i.i.4, align 1
  %scevgep343.4970 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %212, i64 0, i64 0, i64 0
  %221 = load i8, i8* %scevgep343.4970, align 1
  %call75.i.i.4971 = call zeroext i8 @mult(i8 zeroext %220, i8 zeroext %221) #3
  %scevgep350.4972 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %214, i64 0, i64 0, i64 0
  store i8 %call75.i.i.4971, i8* %scevgep350.4972, align 1
  %scevgep347.4973 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %213, i64 0, i64 0, i64 0
  %222 = load i8, i8* %scevgep347.4973, align 1
  %conv84.i.i.4974 = zext i8 %222 to i32
  %scevgep351.4975 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %214, i64 0, i64 0, i64 0
  %223 = load i8, i8* %scevgep351.4975, align 1
  %conv89.i.i.4976 = zext i8 %223 to i32
  %xor90.i.i.4977 = xor i32 %conv84.i.i.4974, %conv89.i.i.4976
  %conv91.i.i.4978 = trunc i32 %xor90.i.i.4977 to i8
  %scevgep354.4979 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %215, i64 0, i64 0, i64 0
  store i8 %conv91.i.i.4978, i8* %scevgep354.4979, align 1
  %scevgep335.1.4 = getelementptr i8, i8* %x, i64 1
  %224 = load i8, i8* %scevgep335.1.4, align 1
  %conv44.i.i.1.4 = zext i8 %224 to i32
  %scevgep338.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %211, i64 0, i64 0, i64 1
  %225 = load i8, i8* %scevgep338.1.4, align 1
  %conv49.i.i.1.4 = zext i8 %225 to i32
  %xor.i73.i.1.4 = xor i32 %conv44.i.i.1.4, %conv49.i.i.1.4
  %conv50.i.i.1.4 = trunc i32 %xor.i73.i.1.4 to i8
  %scevgep342.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %212, i64 0, i64 0, i64 1
  store i8 %conv50.i.i.1.4, i8* %scevgep342.1.4, align 1
  %226 = load i8, i8* %arrayidx56.i.i.4, align 1
  %conv57.i.i.1.4 = zext i8 %226 to i32
  %xor58.i.i.1.4 = xor i32 %conv57.i.i.1.4, 1
  %conv59.i.i.1.4 = trunc i32 %xor58.i.i.1.4 to i8
  %scevgep339.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %211, i64 0, i64 0, i64 1
  %227 = load i8, i8* %scevgep339.1.4, align 1
  %call64.i.i.1.4 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.1.4, i8 zeroext %227) #3
  %scevgep346.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %213, i64 0, i64 0, i64 1
  store i8 %call64.i.i.1.4, i8* %scevgep346.1.4, align 1
  %228 = load i8, i8* %arrayidx70.i.i.4, align 1
  %scevgep343.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %212, i64 0, i64 0, i64 1
  %229 = load i8, i8* %scevgep343.1.4, align 1
  %call75.i.i.1.4 = call zeroext i8 @mult(i8 zeroext %228, i8 zeroext %229) #3
  %scevgep350.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %214, i64 0, i64 0, i64 1
  store i8 %call75.i.i.1.4, i8* %scevgep350.1.4, align 1
  %scevgep347.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %213, i64 0, i64 0, i64 1
  %230 = load i8, i8* %scevgep347.1.4, align 1
  %conv84.i.i.1.4 = zext i8 %230 to i32
  %scevgep351.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %214, i64 0, i64 0, i64 1
  %231 = load i8, i8* %scevgep351.1.4, align 1
  %conv89.i.i.1.4 = zext i8 %231 to i32
  %xor90.i.i.1.4 = xor i32 %conv84.i.i.1.4, %conv89.i.i.1.4
  %conv91.i.i.1.4 = trunc i32 %xor90.i.i.1.4 to i8
  %scevgep354.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %215, i64 0, i64 0, i64 1
  store i8 %conv91.i.i.1.4, i8* %scevgep354.1.4, align 1
  %scevgep335.2.4 = getelementptr i8, i8* %x, i64 2
  %232 = load i8, i8* %scevgep335.2.4, align 1
  %conv44.i.i.2.4 = zext i8 %232 to i32
  %scevgep338.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %211, i64 0, i64 0, i64 2
  %233 = load i8, i8* %scevgep338.2.4, align 1
  %conv49.i.i.2.4 = zext i8 %233 to i32
  %xor.i73.i.2.4 = xor i32 %conv44.i.i.2.4, %conv49.i.i.2.4
  %conv50.i.i.2.4 = trunc i32 %xor.i73.i.2.4 to i8
  %scevgep342.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %212, i64 0, i64 0, i64 2
  store i8 %conv50.i.i.2.4, i8* %scevgep342.2.4, align 1
  %234 = load i8, i8* %arrayidx56.i.i.4, align 1
  %conv57.i.i.2.4 = zext i8 %234 to i32
  %xor58.i.i.2.4 = xor i32 %conv57.i.i.2.4, 1
  %conv59.i.i.2.4 = trunc i32 %xor58.i.i.2.4 to i8
  %scevgep339.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %211, i64 0, i64 0, i64 2
  %235 = load i8, i8* %scevgep339.2.4, align 1
  %call64.i.i.2.4 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.2.4, i8 zeroext %235) #3
  %scevgep346.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %213, i64 0, i64 0, i64 2
  store i8 %call64.i.i.2.4, i8* %scevgep346.2.4, align 1
  %236 = load i8, i8* %arrayidx70.i.i.4, align 1
  %scevgep343.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %212, i64 0, i64 0, i64 2
  %237 = load i8, i8* %scevgep343.2.4, align 1
  %call75.i.i.2.4 = call zeroext i8 @mult(i8 zeroext %236, i8 zeroext %237) #3
  %scevgep350.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %214, i64 0, i64 0, i64 2
  store i8 %call75.i.i.2.4, i8* %scevgep350.2.4, align 1
  %scevgep347.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %213, i64 0, i64 0, i64 2
  %238 = load i8, i8* %scevgep347.2.4, align 1
  %conv84.i.i.2.4 = zext i8 %238 to i32
  %scevgep351.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %214, i64 0, i64 0, i64 2
  %239 = load i8, i8* %scevgep351.2.4, align 1
  %conv89.i.i.2.4 = zext i8 %239 to i32
  %xor90.i.i.2.4 = xor i32 %conv84.i.i.2.4, %conv89.i.i.2.4
  %conv91.i.i.2.4 = trunc i32 %xor90.i.i.2.4 to i8
  %scevgep354.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %215, i64 0, i64 0, i64 2
  store i8 %conv91.i.i.2.4, i8* %scevgep354.2.4, align 1
  %scevgep335.3.4 = getelementptr i8, i8* %x, i64 3
  %240 = load i8, i8* %scevgep335.3.4, align 1
  %conv44.i.i.3.4 = zext i8 %240 to i32
  %scevgep338.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %211, i64 0, i64 0, i64 3
  %241 = load i8, i8* %scevgep338.3.4, align 1
  %conv49.i.i.3.4 = zext i8 %241 to i32
  %xor.i73.i.3.4 = xor i32 %conv44.i.i.3.4, %conv49.i.i.3.4
  %conv50.i.i.3.4 = trunc i32 %xor.i73.i.3.4 to i8
  %scevgep342.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %212, i64 0, i64 0, i64 3
  store i8 %conv50.i.i.3.4, i8* %scevgep342.3.4, align 1
  %242 = load i8, i8* %arrayidx56.i.i.4, align 1
  %conv57.i.i.3.4 = zext i8 %242 to i32
  %xor58.i.i.3.4 = xor i32 %conv57.i.i.3.4, 1
  %conv59.i.i.3.4 = trunc i32 %xor58.i.i.3.4 to i8
  %scevgep339.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %211, i64 0, i64 0, i64 3
  %243 = load i8, i8* %scevgep339.3.4, align 1
  %call64.i.i.3.4 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.3.4, i8 zeroext %243) #3
  %scevgep346.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %213, i64 0, i64 0, i64 3
  store i8 %call64.i.i.3.4, i8* %scevgep346.3.4, align 1
  %244 = load i8, i8* %arrayidx70.i.i.4, align 1
  %scevgep343.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %212, i64 0, i64 0, i64 3
  %245 = load i8, i8* %scevgep343.3.4, align 1
  %call75.i.i.3.4 = call zeroext i8 @mult(i8 zeroext %244, i8 zeroext %245) #3
  %scevgep350.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %214, i64 0, i64 0, i64 3
  store i8 %call75.i.i.3.4, i8* %scevgep350.3.4, align 1
  %scevgep347.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %213, i64 0, i64 0, i64 3
  %246 = load i8, i8* %scevgep347.3.4, align 1
  %conv84.i.i.3.4 = zext i8 %246 to i32
  %scevgep351.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %214, i64 0, i64 0, i64 3
  %247 = load i8, i8* %scevgep351.3.4, align 1
  %conv89.i.i.3.4 = zext i8 %247 to i32
  %xor90.i.i.3.4 = xor i32 %conv84.i.i.3.4, %conv89.i.i.3.4
  %conv91.i.i.3.4 = trunc i32 %xor90.i.i.3.4 to i8
  %scevgep354.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %215, i64 0, i64 0, i64 3
  store i8 %conv91.i.i.3.4, i8* %scevgep354.3.4, align 1
  %248 = load i8, i8* %arraydecay6.i, align 1
  %249 = load i8, i8* %x, align 1
  %call111.i.i = call zeroext i8 @mult(i8 zeroext %248, i8 zeroext %249) #3
  store i8 %call111.i.i, i8* %arraydecay7.i, align 1
  %scevgep325.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  %250 = load i8, i8* %scevgep325.1, align 1
  %conv126.i.i.1 = zext i8 %250 to i32
  %251 = load i8, i8* %arraydecay7.i, align 1
  %conv129.i.i.1 = zext i8 %251 to i32
  %xor130.i.i.1 = xor i32 %conv129.i.i.1, %conv126.i.i.1
  %conv131.i.i.1 = trunc i32 %xor130.i.i.1 to i8
  store i8 %conv131.i.i.1, i8* %arraydecay7.i, align 1
  %scevgep325.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i.i, i64 0, i64 0, i64 2
  %252 = load i8, i8* %scevgep325.2, align 1
  %conv126.i.i.2 = zext i8 %252 to i32
  %253 = load i8, i8* %arraydecay7.i, align 1
  %conv129.i.i.2 = zext i8 %253 to i32
  %xor130.i.i.2 = xor i32 %conv129.i.i.2, %conv126.i.i.2
  %conv131.i.i.2 = trunc i32 %xor130.i.i.2 to i8
  store i8 %conv131.i.i.2, i8* %arraydecay7.i, align 1
  %scevgep325.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i.i, i64 0, i64 0, i64 3
  %254 = load i8, i8* %scevgep325.3, align 1
  %conv126.i.i.3 = zext i8 %254 to i32
  %255 = load i8, i8* %arraydecay7.i, align 1
  %conv129.i.i.3 = zext i8 %255 to i32
  %xor130.i.i.3 = xor i32 %conv129.i.i.3, %conv126.i.i.3
  %conv131.i.i.3 = trunc i32 %xor130.i.i.3 to i8
  store i8 %conv131.i.i.3, i8* %arraydecay7.i, align 1
  %scevgep325.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i.i, i64 0, i64 0, i64 4
  %256 = load i8, i8* %scevgep325.4, align 1
  %conv126.i.i.4 = zext i8 %256 to i32
  %257 = load i8, i8* %arraydecay7.i, align 1
  %conv129.i.i.4 = zext i8 %257 to i32
  %xor130.i.i.4 = xor i32 %conv129.i.i.4, %conv126.i.i.4
  %conv131.i.i.4 = trunc i32 %xor130.i.i.4 to i8
  store i8 %conv131.i.i.4, i8* %arraydecay7.i, align 1
  %scevgep324 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %258 = bitcast i8* %scevgep324 to [5 x [5 x i8]]*
  %arrayidx108.i.i.1 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 1
  %259 = load i8, i8* %arrayidx108.i.i.1, align 1
  %arrayidx110.i.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %260 = load i8, i8* %arrayidx110.i.i.1, align 1
  %call111.i.i.1 = call zeroext i8 @mult(i8 zeroext %259, i8 zeroext %260) #3
  %arrayidx113.i.i.1 = getelementptr inbounds i8, i8* %arraydecay7.i, i64 1
  store i8 %call111.i.i.1, i8* %arrayidx113.i.i.1, align 1
  %arrayidx128.i.i.1 = getelementptr inbounds i8, i8* %arraydecay7.i, i64 1
  %scevgep325.1844 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %258, i64 0, i64 0, i64 0
  %261 = load i8, i8* %scevgep325.1844, align 1
  %conv126.i.i.1845 = zext i8 %261 to i32
  %262 = load i8, i8* %arrayidx128.i.i.1, align 1
  %conv129.i.i.1846 = zext i8 %262 to i32
  %xor130.i.i.1847 = xor i32 %conv129.i.i.1846, %conv126.i.i.1845
  %conv131.i.i.1848 = trunc i32 %xor130.i.i.1847 to i8
  store i8 %conv131.i.i.1848, i8* %arrayidx128.i.i.1, align 1
  %scevgep325.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %258, i64 0, i64 0, i64 2
  %263 = load i8, i8* %scevgep325.2.1, align 1
  %conv126.i.i.2.1 = zext i8 %263 to i32
  %264 = load i8, i8* %arrayidx128.i.i.1, align 1
  %conv129.i.i.2.1 = zext i8 %264 to i32
  %xor130.i.i.2.1 = xor i32 %conv129.i.i.2.1, %conv126.i.i.2.1
  %conv131.i.i.2.1 = trunc i32 %xor130.i.i.2.1 to i8
  store i8 %conv131.i.i.2.1, i8* %arrayidx128.i.i.1, align 1
  %scevgep325.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %258, i64 0, i64 0, i64 3
  %265 = load i8, i8* %scevgep325.3.1, align 1
  %conv126.i.i.3.1 = zext i8 %265 to i32
  %266 = load i8, i8* %arrayidx128.i.i.1, align 1
  %conv129.i.i.3.1 = zext i8 %266 to i32
  %xor130.i.i.3.1 = xor i32 %conv129.i.i.3.1, %conv126.i.i.3.1
  %conv131.i.i.3.1 = trunc i32 %xor130.i.i.3.1 to i8
  store i8 %conv131.i.i.3.1, i8* %arrayidx128.i.i.1, align 1
  %scevgep325.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %258, i64 0, i64 0, i64 4
  %267 = load i8, i8* %scevgep325.4.1, align 1
  %conv126.i.i.4.1 = zext i8 %267 to i32
  %268 = load i8, i8* %arrayidx128.i.i.1, align 1
  %conv129.i.i.4.1 = zext i8 %268 to i32
  %xor130.i.i.4.1 = xor i32 %conv129.i.i.4.1, %conv126.i.i.4.1
  %conv131.i.i.4.1 = trunc i32 %xor130.i.i.4.1 to i8
  store i8 %conv131.i.i.4.1, i8* %arrayidx128.i.i.1, align 1
  %scevgep324.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %258, i64 0, i64 1, i64 0
  %269 = bitcast i8* %scevgep324.1 to [5 x [5 x i8]]*
  %arrayidx108.i.i.2 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 2
  %270 = load i8, i8* %arrayidx108.i.i.2, align 1
  %arrayidx110.i.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %271 = load i8, i8* %arrayidx110.i.i.2, align 1
  %call111.i.i.2 = call zeroext i8 @mult(i8 zeroext %270, i8 zeroext %271) #3
  %arrayidx113.i.i.2 = getelementptr inbounds i8, i8* %arraydecay7.i, i64 2
  store i8 %call111.i.i.2, i8* %arrayidx113.i.i.2, align 1
  %arrayidx128.i.i.2 = getelementptr inbounds i8, i8* %arraydecay7.i, i64 2
  %scevgep325.2853 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %269, i64 0, i64 0, i64 0
  %272 = load i8, i8* %scevgep325.2853, align 1
  %conv126.i.i.2854 = zext i8 %272 to i32
  %273 = load i8, i8* %arrayidx128.i.i.2, align 1
  %conv129.i.i.2855 = zext i8 %273 to i32
  %xor130.i.i.2856 = xor i32 %conv129.i.i.2855, %conv126.i.i.2854
  %conv131.i.i.2857 = trunc i32 %xor130.i.i.2856 to i8
  store i8 %conv131.i.i.2857, i8* %arrayidx128.i.i.2, align 1
  %scevgep325.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %269, i64 0, i64 0, i64 1
  %274 = load i8, i8* %scevgep325.1.2, align 1
  %conv126.i.i.1.2 = zext i8 %274 to i32
  %275 = load i8, i8* %arrayidx128.i.i.2, align 1
  %conv129.i.i.1.2 = zext i8 %275 to i32
  %xor130.i.i.1.2 = xor i32 %conv129.i.i.1.2, %conv126.i.i.1.2
  %conv131.i.i.1.2 = trunc i32 %xor130.i.i.1.2 to i8
  store i8 %conv131.i.i.1.2, i8* %arrayidx128.i.i.2, align 1
  %scevgep325.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %269, i64 0, i64 0, i64 3
  %276 = load i8, i8* %scevgep325.3.2, align 1
  %conv126.i.i.3.2 = zext i8 %276 to i32
  %277 = load i8, i8* %arrayidx128.i.i.2, align 1
  %conv129.i.i.3.2 = zext i8 %277 to i32
  %xor130.i.i.3.2 = xor i32 %conv129.i.i.3.2, %conv126.i.i.3.2
  %conv131.i.i.3.2 = trunc i32 %xor130.i.i.3.2 to i8
  store i8 %conv131.i.i.3.2, i8* %arrayidx128.i.i.2, align 1
  %scevgep325.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %269, i64 0, i64 0, i64 4
  %278 = load i8, i8* %scevgep325.4.2, align 1
  %conv126.i.i.4.2 = zext i8 %278 to i32
  %279 = load i8, i8* %arrayidx128.i.i.2, align 1
  %conv129.i.i.4.2 = zext i8 %279 to i32
  %xor130.i.i.4.2 = xor i32 %conv129.i.i.4.2, %conv126.i.i.4.2
  %conv131.i.i.4.2 = trunc i32 %xor130.i.i.4.2 to i8
  store i8 %conv131.i.i.4.2, i8* %arrayidx128.i.i.2, align 1
  %scevgep324.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %269, i64 0, i64 1, i64 0
  %280 = bitcast i8* %scevgep324.2 to [5 x [5 x i8]]*
  %arrayidx108.i.i.3 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 3
  %281 = load i8, i8* %arrayidx108.i.i.3, align 1
  %arrayidx110.i.i.3 = getelementptr inbounds i8, i8* %x, i64 3
  %282 = load i8, i8* %arrayidx110.i.i.3, align 1
  %call111.i.i.3 = call zeroext i8 @mult(i8 zeroext %281, i8 zeroext %282) #3
  %arrayidx113.i.i.3 = getelementptr inbounds i8, i8* %arraydecay7.i, i64 3
  store i8 %call111.i.i.3, i8* %arrayidx113.i.i.3, align 1
  %arrayidx128.i.i.3 = getelementptr inbounds i8, i8* %arraydecay7.i, i64 3
  %scevgep325.3862 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %280, i64 0, i64 0, i64 0
  %283 = load i8, i8* %scevgep325.3862, align 1
  %conv126.i.i.3863 = zext i8 %283 to i32
  %284 = load i8, i8* %arrayidx128.i.i.3, align 1
  %conv129.i.i.3864 = zext i8 %284 to i32
  %xor130.i.i.3865 = xor i32 %conv129.i.i.3864, %conv126.i.i.3863
  %conv131.i.i.3866 = trunc i32 %xor130.i.i.3865 to i8
  store i8 %conv131.i.i.3866, i8* %arrayidx128.i.i.3, align 1
  %scevgep325.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %280, i64 0, i64 0, i64 1
  %285 = load i8, i8* %scevgep325.1.3, align 1
  %conv126.i.i.1.3 = zext i8 %285 to i32
  %286 = load i8, i8* %arrayidx128.i.i.3, align 1
  %conv129.i.i.1.3 = zext i8 %286 to i32
  %xor130.i.i.1.3 = xor i32 %conv129.i.i.1.3, %conv126.i.i.1.3
  %conv131.i.i.1.3 = trunc i32 %xor130.i.i.1.3 to i8
  store i8 %conv131.i.i.1.3, i8* %arrayidx128.i.i.3, align 1
  %scevgep325.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %280, i64 0, i64 0, i64 2
  %287 = load i8, i8* %scevgep325.2.3, align 1
  %conv126.i.i.2.3 = zext i8 %287 to i32
  %288 = load i8, i8* %arrayidx128.i.i.3, align 1
  %conv129.i.i.2.3 = zext i8 %288 to i32
  %xor130.i.i.2.3 = xor i32 %conv129.i.i.2.3, %conv126.i.i.2.3
  %conv131.i.i.2.3 = trunc i32 %xor130.i.i.2.3 to i8
  store i8 %conv131.i.i.2.3, i8* %arrayidx128.i.i.3, align 1
  %scevgep325.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %280, i64 0, i64 0, i64 4
  %289 = load i8, i8* %scevgep325.4.3, align 1
  %conv126.i.i.4.3 = zext i8 %289 to i32
  %290 = load i8, i8* %arrayidx128.i.i.3, align 1
  %conv129.i.i.4.3 = zext i8 %290 to i32
  %xor130.i.i.4.3 = xor i32 %conv129.i.i.4.3, %conv126.i.i.4.3
  %conv131.i.i.4.3 = trunc i32 %xor130.i.i.4.3 to i8
  store i8 %conv131.i.i.4.3, i8* %arrayidx128.i.i.3, align 1
  %scevgep324.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %280, i64 0, i64 1, i64 0
  %291 = bitcast i8* %scevgep324.3 to [5 x [5 x i8]]*
  %arrayidx108.i.i.4 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 4
  %292 = load i8, i8* %arrayidx108.i.i.4, align 1
  %arrayidx110.i.i.4 = getelementptr inbounds i8, i8* %x, i64 4
  %293 = load i8, i8* %arrayidx110.i.i.4, align 1
  %call111.i.i.4 = call zeroext i8 @mult(i8 zeroext %292, i8 zeroext %293) #3
  %arrayidx113.i.i.4 = getelementptr inbounds i8, i8* %arraydecay7.i, i64 4
  store i8 %call111.i.i.4, i8* %arrayidx113.i.i.4, align 1
  %arrayidx128.i.i.4 = getelementptr inbounds i8, i8* %arraydecay7.i, i64 4
  %scevgep325.4871 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %291, i64 0, i64 0, i64 0
  %294 = load i8, i8* %scevgep325.4871, align 1
  %conv126.i.i.4872 = zext i8 %294 to i32
  %295 = load i8, i8* %arrayidx128.i.i.4, align 1
  %conv129.i.i.4873 = zext i8 %295 to i32
  %xor130.i.i.4874 = xor i32 %conv129.i.i.4873, %conv126.i.i.4872
  %conv131.i.i.4875 = trunc i32 %xor130.i.i.4874 to i8
  store i8 %conv131.i.i.4875, i8* %arrayidx128.i.i.4, align 1
  %scevgep325.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %291, i64 0, i64 0, i64 1
  %296 = load i8, i8* %scevgep325.1.4, align 1
  %conv126.i.i.1.4 = zext i8 %296 to i32
  %297 = load i8, i8* %arrayidx128.i.i.4, align 1
  %conv129.i.i.1.4 = zext i8 %297 to i32
  %xor130.i.i.1.4 = xor i32 %conv129.i.i.1.4, %conv126.i.i.1.4
  %conv131.i.i.1.4 = trunc i32 %xor130.i.i.1.4 to i8
  store i8 %conv131.i.i.1.4, i8* %arrayidx128.i.i.4, align 1
  %scevgep325.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %291, i64 0, i64 0, i64 2
  %298 = load i8, i8* %scevgep325.2.4, align 1
  %conv126.i.i.2.4 = zext i8 %298 to i32
  %299 = load i8, i8* %arrayidx128.i.i.4, align 1
  %conv129.i.i.2.4 = zext i8 %299 to i32
  %xor130.i.i.2.4 = xor i32 %conv129.i.i.2.4, %conv126.i.i.2.4
  %conv131.i.i.2.4 = trunc i32 %xor130.i.i.2.4 to i8
  store i8 %conv131.i.i.2.4, i8* %arrayidx128.i.i.4, align 1
  %scevgep325.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %291, i64 0, i64 0, i64 3
  %300 = load i8, i8* %scevgep325.3.4, align 1
  %conv126.i.i.3.4 = zext i8 %300 to i32
  %301 = load i8, i8* %arrayidx128.i.i.4, align 1
  %conv129.i.i.3.4 = zext i8 %301 to i32
  %xor130.i.i.3.4 = xor i32 %conv129.i.i.3.4, %conv126.i.i.3.4
  %conv131.i.i.3.4 = trunc i32 %xor130.i.i.3.4 to i8
  store i8 %conv131.i.i.3.4, i8* %arrayidx128.i.i.4, align 1
  %call139.i.i = call zeroext i8 @mult(i8 zeroext %call.i52.i, i8 zeroext %call1.i.i) #3
  %conv140.i.i = zext i8 %call139.i.i to i32
  %scevgep315 = getelementptr [5 x i8], [5 x i8]* %u.i, i64 0, i64 0
  %302 = load i8, i8* %scevgep315, align 1
  %scevgep315.1 = getelementptr [5 x i8], [5 x i8]* %u.i, i64 0, i64 1
  %303 = load i8, i8* %scevgep315.1, align 1
  %conv.i.i172.i.i.1 = zext i8 %303 to i32
  %conv1.i.i173.i.i.1 = zext i8 %302 to i32
  %xor.i.i174.i.i.1 = xor i32 %conv1.i.i173.i.i.1, %conv.i.i172.i.i.1
  %conv2.i.i175.i.i.1 = trunc i32 %xor.i.i174.i.i.1 to i8
  %scevgep315.2 = getelementptr [5 x i8], [5 x i8]* %u.i, i64 0, i64 2
  %304 = load i8, i8* %scevgep315.2, align 1
  %conv.i.i172.i.i.2 = zext i8 %304 to i32
  %conv1.i.i173.i.i.2 = zext i8 %conv2.i.i175.i.i.1 to i32
  %xor.i.i174.i.i.2 = xor i32 %conv1.i.i173.i.i.2, %conv.i.i172.i.i.2
  %conv2.i.i175.i.i.2 = trunc i32 %xor.i.i174.i.i.2 to i8
  %scevgep315.3 = getelementptr [5 x i8], [5 x i8]* %u.i, i64 0, i64 3
  %305 = load i8, i8* %scevgep315.3, align 1
  %conv.i.i172.i.i.3 = zext i8 %305 to i32
  %conv1.i.i173.i.i.3 = zext i8 %conv2.i.i175.i.i.2 to i32
  %xor.i.i174.i.i.3 = xor i32 %conv1.i.i173.i.i.3, %conv.i.i172.i.i.3
  %conv2.i.i175.i.i.3 = trunc i32 %xor.i.i174.i.i.3 to i8
  %scevgep315.4 = getelementptr [5 x i8], [5 x i8]* %u.i, i64 0, i64 4
  %306 = load i8, i8* %scevgep315.4, align 1
  %conv.i.i172.i.i.4 = zext i8 %306 to i32
  %conv1.i.i173.i.i.4 = zext i8 %conv2.i.i175.i.i.3 to i32
  %xor.i.i174.i.i.4 = xor i32 %conv1.i.i173.i.i.4, %conv.i.i172.i.i.4
  %conv2.i.i175.i.i.4 = trunc i32 %xor.i.i174.i.i.4 to i8
  %conv142.i.i = zext i8 %conv2.i.i175.i.i.4 to i32
  %cmp143.i.i = icmp eq i32 %conv140.i.i, %conv142.i.i
  call void @assert(i1 zeroext %cmp143.i.i) #3
  %scevgep310 = getelementptr [5 x i8], [5 x i8]* %u.i, i64 0, i64 0
  %307 = load i8, i8* %scevgep310, align 1
  %call.i.i1045 = call zeroext i8 @mult(i8 zeroext %307, i8 zeroext %307) #3
  %call.i3.i1046 = call zeroext i8 @mult(i8 zeroext %call.i.i1045, i8 zeroext %call.i.i1045) #3
  %scevgep311 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 0
  store i8 %call.i3.i1046, i8* %scevgep311, align 1
  %scevgep310.1 = getelementptr [5 x i8], [5 x i8]* %u.i, i64 0, i64 1
  %308 = load i8, i8* %scevgep310.1, align 1
  %call.i.i1043 = call zeroext i8 @mult(i8 zeroext %308, i8 zeroext %308) #3
  %call.i3.i1044 = call zeroext i8 @mult(i8 zeroext %call.i.i1043, i8 zeroext %call.i.i1043) #3
  %scevgep311.1 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 1
  store i8 %call.i3.i1044, i8* %scevgep311.1, align 1
  %scevgep310.2 = getelementptr [5 x i8], [5 x i8]* %u.i, i64 0, i64 2
  %309 = load i8, i8* %scevgep310.2, align 1
  %call.i.i1041 = call zeroext i8 @mult(i8 zeroext %309, i8 zeroext %309) #3
  %call.i3.i1042 = call zeroext i8 @mult(i8 zeroext %call.i.i1041, i8 zeroext %call.i.i1041) #3
  %scevgep311.2 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 2
  store i8 %call.i3.i1042, i8* %scevgep311.2, align 1
  %scevgep310.3 = getelementptr [5 x i8], [5 x i8]* %u.i, i64 0, i64 3
  %310 = load i8, i8* %scevgep310.3, align 1
  %call.i.i1039 = call zeroext i8 @mult(i8 zeroext %310, i8 zeroext %310) #3
  %call.i3.i1040 = call zeroext i8 @mult(i8 zeroext %call.i.i1039, i8 zeroext %call.i.i1039) #3
  %scevgep311.3 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 3
  store i8 %call.i3.i1040, i8* %scevgep311.3, align 1
  %scevgep310.4 = getelementptr [5 x i8], [5 x i8]* %u.i, i64 0, i64 4
  %311 = load i8, i8* %scevgep310.4, align 1
  %call.i.i = call zeroext i8 @mult(i8 zeroext %311, i8 zeroext %311) #3
  %call.i3.i = call zeroext i8 @mult(i8 zeroext %call.i.i, i8 zeroext %call.i.i) #3
  %scevgep311.4 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 4
  store i8 %call.i3.i, i8* %scevgep311.4, align 1
  %arraydecay11.i = getelementptr inbounds [5 x i8], [5 x i8]* %wr.i, i64 0, i64 0
  %call.i108.i = call zeroext i8 (...) @rand() #3
  %conv.i109.i = zext i8 %call.i108.i to i32
  %scevgep306 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 0
  %312 = load i8, i8* %scevgep306, align 1
  %scevgep306.1 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 1
  %313 = load i8, i8* %scevgep306.1, align 1
  %conv.i.i.i115.i.1 = zext i8 %313 to i32
  %conv1.i.i.i116.i.1 = zext i8 %312 to i32
  %xor.i.i.i117.i.1 = xor i32 %conv1.i.i.i116.i.1, %conv.i.i.i115.i.1
  %conv2.i.i.i118.i.1 = trunc i32 %xor.i.i.i117.i.1 to i8
  %scevgep306.2 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 2
  %314 = load i8, i8* %scevgep306.2, align 1
  %conv.i.i.i115.i.2 = zext i8 %314 to i32
  %conv1.i.i.i116.i.2 = zext i8 %conv2.i.i.i118.i.1 to i32
  %xor.i.i.i117.i.2 = xor i32 %conv1.i.i.i116.i.2, %conv.i.i.i115.i.2
  %conv2.i.i.i118.i.2 = trunc i32 %xor.i.i.i117.i.2 to i8
  %scevgep306.3 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 3
  %315 = load i8, i8* %scevgep306.3, align 1
  %conv.i.i.i115.i.3 = zext i8 %315 to i32
  %conv1.i.i.i116.i.3 = zext i8 %conv2.i.i.i118.i.2 to i32
  %xor.i.i.i117.i.3 = xor i32 %conv1.i.i.i116.i.3, %conv.i.i.i115.i.3
  %conv2.i.i.i118.i.3 = trunc i32 %xor.i.i.i117.i.3 to i8
  %scevgep306.4 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 4
  %316 = load i8, i8* %scevgep306.4, align 1
  %conv.i.i.i115.i.4 = zext i8 %316 to i32
  %conv1.i.i.i116.i.4 = zext i8 %conv2.i.i.i118.i.3 to i32
  %xor.i.i.i117.i.4 = xor i32 %conv1.i.i.i116.i.4, %conv.i.i.i115.i.4
  %conv2.i.i.i118.i.4 = trunc i32 %xor.i.i.i117.i.4 to i8
  %conv2.i121.i = zext i8 %conv2.i.i.i118.i.4 to i32
  %cmp.i122.i = icmp eq i32 %conv.i109.i, %conv2.i121.i
  call void @assume(i1 zeroext %cmp.i122.i) #3
  %scevgep301 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 0
  %317 = load i8, i8* %scevgep301, align 1
  %scevgep302 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 0
  store i8 %317, i8* %scevgep302, align 1
  %scevgep301.1 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 1
  %318 = load i8, i8* %scevgep301.1, align 1
  %scevgep302.1 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 1
  store i8 %318, i8* %scevgep302.1, align 1
  %scevgep301.2 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 2
  %319 = load i8, i8* %scevgep301.2, align 1
  %scevgep302.2 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 2
  store i8 %319, i8* %scevgep302.2, align 1
  %scevgep301.3 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 3
  %320 = load i8, i8* %scevgep301.3, align 1
  %scevgep302.3 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 3
  store i8 %320, i8* %scevgep302.3, align 1
  %scevgep301.4 = getelementptr [5 x i8], [5 x i8]* %w.i, i64 0, i64 4
  %321 = load i8, i8* %scevgep301.4, align 1
  %scevgep302.4 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 4
  store i8 %321, i8* %scevgep302.4, align 1
  %call7.i137.i = call zeroext i8 (...) @rand() #3
  %conv8.i138.i = zext i8 %call7.i137.i to i32
  %322 = load i8, i8* %arraydecay11.i, align 1
  %conv9.i139.i = zext i8 %322 to i32
  %xor.i140.i = xor i32 %conv9.i139.i, %conv8.i138.i
  %conv10.i141.i = trunc i32 %xor.i140.i to i8
  store i8 %conv10.i141.i, i8* %arraydecay11.i, align 1
  %conv11.i142.i = zext i8 %call7.i137.i to i32
  %scevgep297 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 1
  %323 = load i8, i8* %scevgep297, align 1
  %conv13.i145.i = zext i8 %323 to i32
  %xor14.i146.i = xor i32 %conv13.i145.i, %conv11.i142.i
  %conv15.i147.i = trunc i32 %xor14.i146.i to i8
  store i8 %conv15.i147.i, i8* %scevgep297, align 1
  %call7.i137.i.1 = call zeroext i8 (...) @rand() #3
  %conv8.i138.i.1 = zext i8 %call7.i137.i.1 to i32
  %324 = load i8, i8* %arraydecay11.i, align 1
  %conv9.i139.i.1 = zext i8 %324 to i32
  %xor.i140.i.1 = xor i32 %conv9.i139.i.1, %conv8.i138.i.1
  %conv10.i141.i.1 = trunc i32 %xor.i140.i.1 to i8
  store i8 %conv10.i141.i.1, i8* %arraydecay11.i, align 1
  %conv11.i142.i.1 = zext i8 %call7.i137.i.1 to i32
  %scevgep297.1 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 2
  %325 = load i8, i8* %scevgep297.1, align 1
  %conv13.i145.i.1 = zext i8 %325 to i32
  %xor14.i146.i.1 = xor i32 %conv13.i145.i.1, %conv11.i142.i.1
  %conv15.i147.i.1 = trunc i32 %xor14.i146.i.1 to i8
  store i8 %conv15.i147.i.1, i8* %scevgep297.1, align 1
  %call7.i137.i.2 = call zeroext i8 (...) @rand() #3
  %conv8.i138.i.2 = zext i8 %call7.i137.i.2 to i32
  %326 = load i8, i8* %arraydecay11.i, align 1
  %conv9.i139.i.2 = zext i8 %326 to i32
  %xor.i140.i.2 = xor i32 %conv9.i139.i.2, %conv8.i138.i.2
  %conv10.i141.i.2 = trunc i32 %xor.i140.i.2 to i8
  store i8 %conv10.i141.i.2, i8* %arraydecay11.i, align 1
  %conv11.i142.i.2 = zext i8 %call7.i137.i.2 to i32
  %scevgep297.2 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 3
  %327 = load i8, i8* %scevgep297.2, align 1
  %conv13.i145.i.2 = zext i8 %327 to i32
  %xor14.i146.i.2 = xor i32 %conv13.i145.i.2, %conv11.i142.i.2
  %conv15.i147.i.2 = trunc i32 %xor14.i146.i.2 to i8
  store i8 %conv15.i147.i.2, i8* %scevgep297.2, align 1
  %call7.i137.i.3 = call zeroext i8 (...) @rand() #3
  %conv8.i138.i.3 = zext i8 %call7.i137.i.3 to i32
  %328 = load i8, i8* %arraydecay11.i, align 1
  %conv9.i139.i.3 = zext i8 %328 to i32
  %xor.i140.i.3 = xor i32 %conv9.i139.i.3, %conv8.i138.i.3
  %conv10.i141.i.3 = trunc i32 %xor.i140.i.3 to i8
  store i8 %conv10.i141.i.3, i8* %arraydecay11.i, align 1
  %conv11.i142.i.3 = zext i8 %call7.i137.i.3 to i32
  %scevgep297.3 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 4
  %329 = load i8, i8* %scevgep297.3, align 1
  %conv13.i145.i.3 = zext i8 %329 to i32
  %xor14.i146.i.3 = xor i32 %conv13.i145.i.3, %conv11.i142.i.3
  %conv15.i147.i.3 = trunc i32 %xor14.i146.i.3 to i8
  store i8 %conv15.i147.i.3, i8* %scevgep297.3, align 1
  %conv16.i150.i = zext i8 %call.i108.i to i32
  %scevgep293 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 0
  %330 = load i8, i8* %scevgep293, align 1
  %scevgep293.1 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 1
  %331 = load i8, i8* %scevgep293.1, align 1
  %conv.i.i31.i157.i.1 = zext i8 %331 to i32
  %conv1.i.i32.i158.i.1 = zext i8 %330 to i32
  %xor.i.i33.i159.i.1 = xor i32 %conv1.i.i32.i158.i.1, %conv.i.i31.i157.i.1
  %conv2.i.i34.i160.i.1 = trunc i32 %xor.i.i33.i159.i.1 to i8
  %scevgep293.2 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 2
  %332 = load i8, i8* %scevgep293.2, align 1
  %conv.i.i31.i157.i.2 = zext i8 %332 to i32
  %conv1.i.i32.i158.i.2 = zext i8 %conv2.i.i34.i160.i.1 to i32
  %xor.i.i33.i159.i.2 = xor i32 %conv1.i.i32.i158.i.2, %conv.i.i31.i157.i.2
  %conv2.i.i34.i160.i.2 = trunc i32 %xor.i.i33.i159.i.2 to i8
  %scevgep293.3 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 3
  %333 = load i8, i8* %scevgep293.3, align 1
  %conv.i.i31.i157.i.3 = zext i8 %333 to i32
  %conv1.i.i32.i158.i.3 = zext i8 %conv2.i.i34.i160.i.2 to i32
  %xor.i.i33.i159.i.3 = xor i32 %conv1.i.i32.i158.i.3, %conv.i.i31.i157.i.3
  %conv2.i.i34.i160.i.3 = trunc i32 %xor.i.i33.i159.i.3 to i8
  %scevgep293.4 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 4
  %334 = load i8, i8* %scevgep293.4, align 1
  %conv.i.i31.i157.i.4 = zext i8 %334 to i32
  %conv1.i.i32.i158.i.4 = zext i8 %conv2.i.i34.i160.i.3 to i32
  %xor.i.i33.i159.i.4 = xor i32 %conv1.i.i32.i158.i.4, %conv.i.i31.i157.i.4
  %conv2.i.i34.i160.i.4 = trunc i32 %xor.i.i33.i159.i.4 to i8
  %conv18.i163.i = zext i8 %conv2.i.i34.i160.i.4 to i32
  %cmp19.i164.i = icmp eq i32 %conv16.i150.i, %conv18.i163.i
  call void @assert(i1 zeroext %cmp19.i164.i) #3
  %arraydecay12.i = getelementptr inbounds [5 x i8], [5 x i8]* %u.i, i64 0, i64 0
  %arraydecay13.i = getelementptr inbounds [5 x i8], [5 x i8]* %wr.i, i64 0, i64 0
  %arraydecay14.i = getelementptr inbounds [5 x i8], [5 x i8]* %v.i, i64 0, i64 0
  %call.i197.i = call zeroext i8 (...) @rand() #3
  %call1.i198.i = call zeroext i8 (...) @rand() #3
  %conv.i199.i = zext i8 %call.i197.i to i32
  %scevgep289 = getelementptr [5 x i8], [5 x i8]* %u.i, i64 0, i64 0
  %335 = load i8, i8* %scevgep289, align 1
  %scevgep289.1 = getelementptr [5 x i8], [5 x i8]* %u.i, i64 0, i64 1
  %336 = load i8, i8* %scevgep289.1, align 1
  %conv.i.i.i205.i.1 = zext i8 %336 to i32
  %conv1.i.i.i206.i.1 = zext i8 %335 to i32
  %xor.i.i.i207.i.1 = xor i32 %conv1.i.i.i206.i.1, %conv.i.i.i205.i.1
  %conv2.i.i.i208.i.1 = trunc i32 %xor.i.i.i207.i.1 to i8
  %scevgep289.2 = getelementptr [5 x i8], [5 x i8]* %u.i, i64 0, i64 2
  %337 = load i8, i8* %scevgep289.2, align 1
  %conv.i.i.i205.i.2 = zext i8 %337 to i32
  %conv1.i.i.i206.i.2 = zext i8 %conv2.i.i.i208.i.1 to i32
  %xor.i.i.i207.i.2 = xor i32 %conv1.i.i.i206.i.2, %conv.i.i.i205.i.2
  %conv2.i.i.i208.i.2 = trunc i32 %xor.i.i.i207.i.2 to i8
  %scevgep289.3 = getelementptr [5 x i8], [5 x i8]* %u.i, i64 0, i64 3
  %338 = load i8, i8* %scevgep289.3, align 1
  %conv.i.i.i205.i.3 = zext i8 %338 to i32
  %conv1.i.i.i206.i.3 = zext i8 %conv2.i.i.i208.i.2 to i32
  %xor.i.i.i207.i.3 = xor i32 %conv1.i.i.i206.i.3, %conv.i.i.i205.i.3
  %conv2.i.i.i208.i.3 = trunc i32 %xor.i.i.i207.i.3 to i8
  %scevgep289.4 = getelementptr [5 x i8], [5 x i8]* %u.i, i64 0, i64 4
  %339 = load i8, i8* %scevgep289.4, align 1
  %conv.i.i.i205.i.4 = zext i8 %339 to i32
  %conv1.i.i.i206.i.4 = zext i8 %conv2.i.i.i208.i.3 to i32
  %xor.i.i.i207.i.4 = xor i32 %conv1.i.i.i206.i.4, %conv.i.i.i205.i.4
  %conv2.i.i.i208.i.4 = trunc i32 %xor.i.i.i207.i.4 to i8
  %conv3.i211.i = zext i8 %conv2.i.i.i208.i.4 to i32
  %cmp.i212.i = icmp eq i32 %conv.i199.i, %conv3.i211.i
  call void @assume(i1 zeroext %cmp.i212.i) #3
  %conv5.i213.i = zext i8 %call1.i198.i to i32
  %scevgep285 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 0
  %340 = load i8, i8* %scevgep285, align 1
  %scevgep285.1 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 1
  %341 = load i8, i8* %scevgep285.1, align 1
  %conv.i.i155.i220.i.1 = zext i8 %341 to i32
  %conv1.i.i156.i221.i.1 = zext i8 %340 to i32
  %xor.i.i157.i222.i.1 = xor i32 %conv1.i.i156.i221.i.1, %conv.i.i155.i220.i.1
  %conv2.i.i158.i223.i.1 = trunc i32 %xor.i.i157.i222.i.1 to i8
  %scevgep285.2 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 2
  %342 = load i8, i8* %scevgep285.2, align 1
  %conv.i.i155.i220.i.2 = zext i8 %342 to i32
  %conv1.i.i156.i221.i.2 = zext i8 %conv2.i.i158.i223.i.1 to i32
  %xor.i.i157.i222.i.2 = xor i32 %conv1.i.i156.i221.i.2, %conv.i.i155.i220.i.2
  %conv2.i.i158.i223.i.2 = trunc i32 %xor.i.i157.i222.i.2 to i8
  %scevgep285.3 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 3
  %343 = load i8, i8* %scevgep285.3, align 1
  %conv.i.i155.i220.i.3 = zext i8 %343 to i32
  %conv1.i.i156.i221.i.3 = zext i8 %conv2.i.i158.i223.i.2 to i32
  %xor.i.i157.i222.i.3 = xor i32 %conv1.i.i156.i221.i.3, %conv.i.i155.i220.i.3
  %conv2.i.i158.i223.i.3 = trunc i32 %xor.i.i157.i222.i.3 to i8
  %scevgep285.4 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 4
  %344 = load i8, i8* %scevgep285.4, align 1
  %conv.i.i155.i220.i.4 = zext i8 %344 to i32
  %conv1.i.i156.i221.i.4 = zext i8 %conv2.i.i158.i223.i.3 to i32
  %xor.i.i157.i222.i.4 = xor i32 %conv1.i.i156.i221.i.4, %conv.i.i155.i220.i.4
  %conv2.i.i158.i223.i.4 = trunc i32 %xor.i.i157.i222.i.4 to i8
  %conv7.i226.i = zext i8 %conv2.i.i158.i223.i.4 to i32
  %cmp8.i227.i = icmp eq i32 %conv5.i213.i, %conv7.i226.i
  call void @assume(i1 zeroext %cmp8.i227.i) #3
  %scevgep269 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %scevgep269270 = bitcast i8* %scevgep269 to [5 x [5 x i8]]*
  %scevgep276 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %scevgep276277 = bitcast i8* %scevgep276 to [5 x [5 x i8]]*
  %call16.i235.i = call zeroext i8 (...) @rand() #3
  store i8 %call16.i235.i, i8* %scevgep269, align 1
  %345 = load i8, i8* %scevgep269, align 1
  store i8 %345, i8* %scevgep276, align 1
  %scevgep274 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep269270, i64 0, i64 0, i64 1
  %346 = bitcast i8* %scevgep274 to [5 x [5 x i8]]*
  %scevgep281 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep276277, i64 0, i64 1, i64 0
  %347 = bitcast i8* %scevgep281 to [5 x [5 x i8]]*
  %call16.i235.i.11000 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i235.i.11000, i8* %scevgep274, align 1
  %348 = load i8, i8* %scevgep274, align 1
  store i8 %348, i8* %scevgep281, align 1
  %scevgep274.11001 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %346, i64 0, i64 0, i64 1
  %349 = bitcast i8* %scevgep274.11001 to [5 x [5 x i8]]*
  %scevgep281.11002 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %347, i64 0, i64 1, i64 0
  %350 = bitcast i8* %scevgep281.11002 to [5 x [5 x i8]]*
  %call16.i235.i.21004 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i235.i.21004, i8* %scevgep274.11001, align 1
  %351 = load i8, i8* %scevgep274.11001, align 1
  store i8 %351, i8* %scevgep281.11002, align 1
  %scevgep274.21005 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %349, i64 0, i64 0, i64 1
  %scevgep281.21006 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %350, i64 0, i64 1, i64 0
  %call16.i235.i.31008 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i235.i.31008, i8* %scevgep274.21005, align 1
  %352 = load i8, i8* %scevgep274.21005, align 1
  store i8 %352, i8* %scevgep281.21006, align 1
  %scevgep272 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep269270, i64 0, i64 1, i64 1
  %353 = bitcast i8* %scevgep272 to [5 x [5 x i8]]*
  %scevgep279 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep276277, i64 0, i64 1, i64 1
  %354 = bitcast i8* %scevgep279 to [5 x [5 x i8]]*
  %call16.i235.i.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i235.i.1, i8* %scevgep272, align 1
  %355 = load i8, i8* %scevgep272, align 1
  store i8 %355, i8* %scevgep279, align 1
  %scevgep274.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %353, i64 0, i64 0, i64 1
  %356 = bitcast i8* %scevgep274.1 to [5 x [5 x i8]]*
  %scevgep281.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %354, i64 0, i64 1, i64 0
  %357 = bitcast i8* %scevgep281.1 to [5 x [5 x i8]]*
  %call16.i235.i.1.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i235.i.1.1, i8* %scevgep274.1, align 1
  %358 = load i8, i8* %scevgep274.1, align 1
  store i8 %358, i8* %scevgep281.1, align 1
  %scevgep274.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %356, i64 0, i64 0, i64 1
  %scevgep281.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %357, i64 0, i64 1, i64 0
  %call16.i235.i.1.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i235.i.1.2, i8* %scevgep274.1.1, align 1
  %359 = load i8, i8* %scevgep274.1.1, align 1
  store i8 %359, i8* %scevgep281.1.1, align 1
  %scevgep272.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %353, i64 0, i64 1, i64 1
  %360 = bitcast i8* %scevgep272.1 to [5 x [5 x i8]]*
  %scevgep279.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %354, i64 0, i64 1, i64 1
  %361 = bitcast i8* %scevgep279.1 to [5 x [5 x i8]]*
  %call16.i235.i.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i235.i.2, i8* %scevgep272.1, align 1
  %362 = load i8, i8* %scevgep272.1, align 1
  store i8 %362, i8* %scevgep279.1, align 1
  %scevgep274.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %360, i64 0, i64 0, i64 1
  %scevgep281.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %361, i64 0, i64 1, i64 0
  %call16.i235.i.2.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i235.i.2.1, i8* %scevgep274.2, align 1
  %363 = load i8, i8* %scevgep274.2, align 1
  store i8 %363, i8* %scevgep281.2, align 1
  %scevgep272.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %360, i64 0, i64 1, i64 1
  %scevgep279.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %361, i64 0, i64 1, i64 1
  %call16.i235.i.3 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i235.i.3, i8* %scevgep272.2, align 1
  %364 = load i8, i8* %scevgep272.2, align 1
  store i8 %364, i8* %scevgep279.2, align 1
  %scevgep246.1 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 1
  %365 = load i8, i8* %scevgep246.1, align 1
  %conv44.i262.i.1 = zext i8 %365 to i32
  %scevgep249.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %366 = load i8, i8* %scevgep249.1, align 1
  %conv49.i267.i.1 = zext i8 %366 to i32
  %xor.i268.i.1 = xor i32 %conv44.i262.i.1, %conv49.i267.i.1
  %conv50.i269.i.1 = trunc i32 %xor.i268.i.1 to i8
  %scevgep253.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  store i8 %conv50.i269.i.1, i8* %scevgep253.1, align 1
  %367 = load i8, i8* %arraydecay12.i, align 1
  %conv57.i276.i.1 = zext i8 %367 to i32
  %xor58.i277.i.1 = xor i32 %conv57.i276.i.1, 1
  %conv59.i278.i.1 = trunc i32 %xor58.i277.i.1 to i8
  %scevgep250.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %368 = load i8, i8* %scevgep250.1, align 1
  %call64.i283.i.1 = call zeroext i8 @mult(i8 zeroext %conv59.i278.i.1, i8 zeroext %368) #3
  %scevgep257.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  store i8 %call64.i283.i.1, i8* %scevgep257.1, align 1
  %369 = load i8, i8* %arraydecay12.i, align 1
  %scevgep254.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  %370 = load i8, i8* %scevgep254.1, align 1
  %call75.i294.i.1 = call zeroext i8 @mult(i8 zeroext %369, i8 zeroext %370) #3
  %scevgep261.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  store i8 %call75.i294.i.1, i8* %scevgep261.1, align 1
  %scevgep258.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  %371 = load i8, i8* %scevgep258.1, align 1
  %conv84.i303.i.1 = zext i8 %371 to i32
  %scevgep262.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  %372 = load i8, i8* %scevgep262.1, align 1
  %conv89.i308.i.1 = zext i8 %372 to i32
  %xor90.i309.i.1 = xor i32 %conv84.i303.i.1, %conv89.i308.i.1
  %conv91.i310.i.1 = trunc i32 %xor90.i309.i.1 to i8
  %scevgep265.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  store i8 %conv91.i310.i.1, i8* %scevgep265.1, align 1
  %scevgep246.2 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 2
  %373 = load i8, i8* %scevgep246.2, align 1
  %conv44.i262.i.2 = zext i8 %373 to i32
  %scevgep249.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %374 = load i8, i8* %scevgep249.2, align 1
  %conv49.i267.i.2 = zext i8 %374 to i32
  %xor.i268.i.2 = xor i32 %conv44.i262.i.2, %conv49.i267.i.2
  %conv50.i269.i.2 = trunc i32 %xor.i268.i.2 to i8
  %scevgep253.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i.i, i64 0, i64 0, i64 2
  store i8 %conv50.i269.i.2, i8* %scevgep253.2, align 1
  %375 = load i8, i8* %arraydecay12.i, align 1
  %conv57.i276.i.2 = zext i8 %375 to i32
  %xor58.i277.i.2 = xor i32 %conv57.i276.i.2, 1
  %conv59.i278.i.2 = trunc i32 %xor58.i277.i.2 to i8
  %scevgep250.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %376 = load i8, i8* %scevgep250.2, align 1
  %call64.i283.i.2 = call zeroext i8 @mult(i8 zeroext %conv59.i278.i.2, i8 zeroext %376) #3
  %scevgep257.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i.i, i64 0, i64 0, i64 2
  store i8 %call64.i283.i.2, i8* %scevgep257.2, align 1
  %377 = load i8, i8* %arraydecay12.i, align 1
  %scevgep254.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i.i, i64 0, i64 0, i64 2
  %378 = load i8, i8* %scevgep254.2, align 1
  %call75.i294.i.2 = call zeroext i8 @mult(i8 zeroext %377, i8 zeroext %378) #3
  %scevgep261.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i.i, i64 0, i64 0, i64 2
  store i8 %call75.i294.i.2, i8* %scevgep261.2, align 1
  %scevgep258.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i.i, i64 0, i64 0, i64 2
  %379 = load i8, i8* %scevgep258.2, align 1
  %conv84.i303.i.2 = zext i8 %379 to i32
  %scevgep262.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i.i, i64 0, i64 0, i64 2
  %380 = load i8, i8* %scevgep262.2, align 1
  %conv89.i308.i.2 = zext i8 %380 to i32
  %xor90.i309.i.2 = xor i32 %conv84.i303.i.2, %conv89.i308.i.2
  %conv91.i310.i.2 = trunc i32 %xor90.i309.i.2 to i8
  %scevgep265.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i.i, i64 0, i64 0, i64 2
  store i8 %conv91.i310.i.2, i8* %scevgep265.2, align 1
  %scevgep246.3 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 3
  %381 = load i8, i8* %scevgep246.3, align 1
  %conv44.i262.i.3 = zext i8 %381 to i32
  %scevgep249.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  %382 = load i8, i8* %scevgep249.3, align 1
  %conv49.i267.i.3 = zext i8 %382 to i32
  %xor.i268.i.3 = xor i32 %conv44.i262.i.3, %conv49.i267.i.3
  %conv50.i269.i.3 = trunc i32 %xor.i268.i.3 to i8
  %scevgep253.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i.i, i64 0, i64 0, i64 3
  store i8 %conv50.i269.i.3, i8* %scevgep253.3, align 1
  %383 = load i8, i8* %arraydecay12.i, align 1
  %conv57.i276.i.3 = zext i8 %383 to i32
  %xor58.i277.i.3 = xor i32 %conv57.i276.i.3, 1
  %conv59.i278.i.3 = trunc i32 %xor58.i277.i.3 to i8
  %scevgep250.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  %384 = load i8, i8* %scevgep250.3, align 1
  %call64.i283.i.3 = call zeroext i8 @mult(i8 zeroext %conv59.i278.i.3, i8 zeroext %384) #3
  %scevgep257.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i.i, i64 0, i64 0, i64 3
  store i8 %call64.i283.i.3, i8* %scevgep257.3, align 1
  %385 = load i8, i8* %arraydecay12.i, align 1
  %scevgep254.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i.i, i64 0, i64 0, i64 3
  %386 = load i8, i8* %scevgep254.3, align 1
  %call75.i294.i.3 = call zeroext i8 @mult(i8 zeroext %385, i8 zeroext %386) #3
  %scevgep261.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i.i, i64 0, i64 0, i64 3
  store i8 %call75.i294.i.3, i8* %scevgep261.3, align 1
  %scevgep258.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i.i, i64 0, i64 0, i64 3
  %387 = load i8, i8* %scevgep258.3, align 1
  %conv84.i303.i.3 = zext i8 %387 to i32
  %scevgep262.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i.i, i64 0, i64 0, i64 3
  %388 = load i8, i8* %scevgep262.3, align 1
  %conv89.i308.i.3 = zext i8 %388 to i32
  %xor90.i309.i.3 = xor i32 %conv84.i303.i.3, %conv89.i308.i.3
  %conv91.i310.i.3 = trunc i32 %xor90.i309.i.3 to i8
  %scevgep265.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i.i, i64 0, i64 0, i64 3
  store i8 %conv91.i310.i.3, i8* %scevgep265.3, align 1
  %scevgep246.4 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 4
  %389 = load i8, i8* %scevgep246.4, align 1
  %conv44.i262.i.4 = zext i8 %389 to i32
  %scevgep249.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 4
  %390 = load i8, i8* %scevgep249.4, align 1
  %conv49.i267.i.4 = zext i8 %390 to i32
  %xor.i268.i.4 = xor i32 %conv44.i262.i.4, %conv49.i267.i.4
  %conv50.i269.i.4 = trunc i32 %xor.i268.i.4 to i8
  %scevgep253.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i.i, i64 0, i64 0, i64 4
  store i8 %conv50.i269.i.4, i8* %scevgep253.4, align 1
  %391 = load i8, i8* %arraydecay12.i, align 1
  %conv57.i276.i.4 = zext i8 %391 to i32
  %xor58.i277.i.4 = xor i32 %conv57.i276.i.4, 1
  %conv59.i278.i.4 = trunc i32 %xor58.i277.i.4 to i8
  %scevgep250.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 4
  %392 = load i8, i8* %scevgep250.4, align 1
  %call64.i283.i.4 = call zeroext i8 @mult(i8 zeroext %conv59.i278.i.4, i8 zeroext %392) #3
  %scevgep257.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i.i, i64 0, i64 0, i64 4
  store i8 %call64.i283.i.4, i8* %scevgep257.4, align 1
  %393 = load i8, i8* %arraydecay12.i, align 1
  %scevgep254.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i.i, i64 0, i64 0, i64 4
  %394 = load i8, i8* %scevgep254.4, align 1
  %call75.i294.i.4 = call zeroext i8 @mult(i8 zeroext %393, i8 zeroext %394) #3
  %scevgep261.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i.i, i64 0, i64 0, i64 4
  store i8 %call75.i294.i.4, i8* %scevgep261.4, align 1
  %scevgep258.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i.i, i64 0, i64 0, i64 4
  %395 = load i8, i8* %scevgep258.4, align 1
  %conv84.i303.i.4 = zext i8 %395 to i32
  %scevgep262.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i.i, i64 0, i64 0, i64 4
  %396 = load i8, i8* %scevgep262.4, align 1
  %conv89.i308.i.4 = zext i8 %396 to i32
  %xor90.i309.i.4 = xor i32 %conv84.i303.i.4, %conv89.i308.i.4
  %conv91.i310.i.4 = trunc i32 %xor90.i309.i.4 to i8
  %scevgep265.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i.i, i64 0, i64 0, i64 4
  store i8 %conv91.i310.i.4, i8* %scevgep265.4, align 1
  %scevgep248 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %397 = bitcast i8* %scevgep248 to [5 x [5 x i8]]*
  %scevgep252 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i.i, i64 0, i64 1, i64 0
  %398 = bitcast i8* %scevgep252 to [5 x [5 x i8]]*
  %scevgep256 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i.i, i64 0, i64 1, i64 0
  %399 = bitcast i8* %scevgep256 to [5 x [5 x i8]]*
  %scevgep260 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i.i, i64 0, i64 1, i64 0
  %400 = bitcast i8* %scevgep260 to [5 x [5 x i8]]*
  %scevgep264 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %401 = bitcast i8* %scevgep264 to [5 x [5 x i8]]*
  %arrayidx56.i275.i.1 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 1
  %arrayidx70.i289.i.1 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 1
  %scevgep246.1736 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 0
  %402 = load i8, i8* %scevgep246.1736, align 1
  %conv44.i262.i.1737 = zext i8 %402 to i32
  %scevgep249.1738 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %397, i64 0, i64 0, i64 0
  %403 = load i8, i8* %scevgep249.1738, align 1
  %conv49.i267.i.1739 = zext i8 %403 to i32
  %xor.i268.i.1740 = xor i32 %conv44.i262.i.1737, %conv49.i267.i.1739
  %conv50.i269.i.1741 = trunc i32 %xor.i268.i.1740 to i8
  %scevgep253.1742 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %398, i64 0, i64 0, i64 0
  store i8 %conv50.i269.i.1741, i8* %scevgep253.1742, align 1
  %404 = load i8, i8* %arrayidx56.i275.i.1, align 1
  %conv57.i276.i.1743 = zext i8 %404 to i32
  %xor58.i277.i.1744 = xor i32 %conv57.i276.i.1743, 1
  %conv59.i278.i.1745 = trunc i32 %xor58.i277.i.1744 to i8
  %scevgep250.1746 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %397, i64 0, i64 0, i64 0
  %405 = load i8, i8* %scevgep250.1746, align 1
  %call64.i283.i.1747 = call zeroext i8 @mult(i8 zeroext %conv59.i278.i.1745, i8 zeroext %405) #3
  %scevgep257.1748 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %399, i64 0, i64 0, i64 0
  store i8 %call64.i283.i.1747, i8* %scevgep257.1748, align 1
  %406 = load i8, i8* %arrayidx70.i289.i.1, align 1
  %scevgep254.1749 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %398, i64 0, i64 0, i64 0
  %407 = load i8, i8* %scevgep254.1749, align 1
  %call75.i294.i.1750 = call zeroext i8 @mult(i8 zeroext %406, i8 zeroext %407) #3
  %scevgep261.1751 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %400, i64 0, i64 0, i64 0
  store i8 %call75.i294.i.1750, i8* %scevgep261.1751, align 1
  %scevgep258.1752 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %399, i64 0, i64 0, i64 0
  %408 = load i8, i8* %scevgep258.1752, align 1
  %conv84.i303.i.1753 = zext i8 %408 to i32
  %scevgep262.1754 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %400, i64 0, i64 0, i64 0
  %409 = load i8, i8* %scevgep262.1754, align 1
  %conv89.i308.i.1755 = zext i8 %409 to i32
  %xor90.i309.i.1756 = xor i32 %conv84.i303.i.1753, %conv89.i308.i.1755
  %conv91.i310.i.1757 = trunc i32 %xor90.i309.i.1756 to i8
  %scevgep265.1758 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %401, i64 0, i64 0, i64 0
  store i8 %conv91.i310.i.1757, i8* %scevgep265.1758, align 1
  %scevgep246.2.1 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 2
  %410 = load i8, i8* %scevgep246.2.1, align 1
  %conv44.i262.i.2.1 = zext i8 %410 to i32
  %scevgep249.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %397, i64 0, i64 0, i64 2
  %411 = load i8, i8* %scevgep249.2.1, align 1
  %conv49.i267.i.2.1 = zext i8 %411 to i32
  %xor.i268.i.2.1 = xor i32 %conv44.i262.i.2.1, %conv49.i267.i.2.1
  %conv50.i269.i.2.1 = trunc i32 %xor.i268.i.2.1 to i8
  %scevgep253.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %398, i64 0, i64 0, i64 2
  store i8 %conv50.i269.i.2.1, i8* %scevgep253.2.1, align 1
  %412 = load i8, i8* %arrayidx56.i275.i.1, align 1
  %conv57.i276.i.2.1 = zext i8 %412 to i32
  %xor58.i277.i.2.1 = xor i32 %conv57.i276.i.2.1, 1
  %conv59.i278.i.2.1 = trunc i32 %xor58.i277.i.2.1 to i8
  %scevgep250.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %397, i64 0, i64 0, i64 2
  %413 = load i8, i8* %scevgep250.2.1, align 1
  %call64.i283.i.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i278.i.2.1, i8 zeroext %413) #3
  %scevgep257.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %399, i64 0, i64 0, i64 2
  store i8 %call64.i283.i.2.1, i8* %scevgep257.2.1, align 1
  %414 = load i8, i8* %arrayidx70.i289.i.1, align 1
  %scevgep254.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %398, i64 0, i64 0, i64 2
  %415 = load i8, i8* %scevgep254.2.1, align 1
  %call75.i294.i.2.1 = call zeroext i8 @mult(i8 zeroext %414, i8 zeroext %415) #3
  %scevgep261.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %400, i64 0, i64 0, i64 2
  store i8 %call75.i294.i.2.1, i8* %scevgep261.2.1, align 1
  %scevgep258.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %399, i64 0, i64 0, i64 2
  %416 = load i8, i8* %scevgep258.2.1, align 1
  %conv84.i303.i.2.1 = zext i8 %416 to i32
  %scevgep262.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %400, i64 0, i64 0, i64 2
  %417 = load i8, i8* %scevgep262.2.1, align 1
  %conv89.i308.i.2.1 = zext i8 %417 to i32
  %xor90.i309.i.2.1 = xor i32 %conv84.i303.i.2.1, %conv89.i308.i.2.1
  %conv91.i310.i.2.1 = trunc i32 %xor90.i309.i.2.1 to i8
  %scevgep265.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %401, i64 0, i64 0, i64 2
  store i8 %conv91.i310.i.2.1, i8* %scevgep265.2.1, align 1
  %scevgep246.3.1 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 3
  %418 = load i8, i8* %scevgep246.3.1, align 1
  %conv44.i262.i.3.1 = zext i8 %418 to i32
  %scevgep249.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %397, i64 0, i64 0, i64 3
  %419 = load i8, i8* %scevgep249.3.1, align 1
  %conv49.i267.i.3.1 = zext i8 %419 to i32
  %xor.i268.i.3.1 = xor i32 %conv44.i262.i.3.1, %conv49.i267.i.3.1
  %conv50.i269.i.3.1 = trunc i32 %xor.i268.i.3.1 to i8
  %scevgep253.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %398, i64 0, i64 0, i64 3
  store i8 %conv50.i269.i.3.1, i8* %scevgep253.3.1, align 1
  %420 = load i8, i8* %arrayidx56.i275.i.1, align 1
  %conv57.i276.i.3.1 = zext i8 %420 to i32
  %xor58.i277.i.3.1 = xor i32 %conv57.i276.i.3.1, 1
  %conv59.i278.i.3.1 = trunc i32 %xor58.i277.i.3.1 to i8
  %scevgep250.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %397, i64 0, i64 0, i64 3
  %421 = load i8, i8* %scevgep250.3.1, align 1
  %call64.i283.i.3.1 = call zeroext i8 @mult(i8 zeroext %conv59.i278.i.3.1, i8 zeroext %421) #3
  %scevgep257.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %399, i64 0, i64 0, i64 3
  store i8 %call64.i283.i.3.1, i8* %scevgep257.3.1, align 1
  %422 = load i8, i8* %arrayidx70.i289.i.1, align 1
  %scevgep254.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %398, i64 0, i64 0, i64 3
  %423 = load i8, i8* %scevgep254.3.1, align 1
  %call75.i294.i.3.1 = call zeroext i8 @mult(i8 zeroext %422, i8 zeroext %423) #3
  %scevgep261.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %400, i64 0, i64 0, i64 3
  store i8 %call75.i294.i.3.1, i8* %scevgep261.3.1, align 1
  %scevgep258.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %399, i64 0, i64 0, i64 3
  %424 = load i8, i8* %scevgep258.3.1, align 1
  %conv84.i303.i.3.1 = zext i8 %424 to i32
  %scevgep262.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %400, i64 0, i64 0, i64 3
  %425 = load i8, i8* %scevgep262.3.1, align 1
  %conv89.i308.i.3.1 = zext i8 %425 to i32
  %xor90.i309.i.3.1 = xor i32 %conv84.i303.i.3.1, %conv89.i308.i.3.1
  %conv91.i310.i.3.1 = trunc i32 %xor90.i309.i.3.1 to i8
  %scevgep265.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %401, i64 0, i64 0, i64 3
  store i8 %conv91.i310.i.3.1, i8* %scevgep265.3.1, align 1
  %scevgep246.4.1 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 4
  %426 = load i8, i8* %scevgep246.4.1, align 1
  %conv44.i262.i.4.1 = zext i8 %426 to i32
  %scevgep249.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %397, i64 0, i64 0, i64 4
  %427 = load i8, i8* %scevgep249.4.1, align 1
  %conv49.i267.i.4.1 = zext i8 %427 to i32
  %xor.i268.i.4.1 = xor i32 %conv44.i262.i.4.1, %conv49.i267.i.4.1
  %conv50.i269.i.4.1 = trunc i32 %xor.i268.i.4.1 to i8
  %scevgep253.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %398, i64 0, i64 0, i64 4
  store i8 %conv50.i269.i.4.1, i8* %scevgep253.4.1, align 1
  %428 = load i8, i8* %arrayidx56.i275.i.1, align 1
  %conv57.i276.i.4.1 = zext i8 %428 to i32
  %xor58.i277.i.4.1 = xor i32 %conv57.i276.i.4.1, 1
  %conv59.i278.i.4.1 = trunc i32 %xor58.i277.i.4.1 to i8
  %scevgep250.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %397, i64 0, i64 0, i64 4
  %429 = load i8, i8* %scevgep250.4.1, align 1
  %call64.i283.i.4.1 = call zeroext i8 @mult(i8 zeroext %conv59.i278.i.4.1, i8 zeroext %429) #3
  %scevgep257.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %399, i64 0, i64 0, i64 4
  store i8 %call64.i283.i.4.1, i8* %scevgep257.4.1, align 1
  %430 = load i8, i8* %arrayidx70.i289.i.1, align 1
  %scevgep254.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %398, i64 0, i64 0, i64 4
  %431 = load i8, i8* %scevgep254.4.1, align 1
  %call75.i294.i.4.1 = call zeroext i8 @mult(i8 zeroext %430, i8 zeroext %431) #3
  %scevgep261.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %400, i64 0, i64 0, i64 4
  store i8 %call75.i294.i.4.1, i8* %scevgep261.4.1, align 1
  %scevgep258.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %399, i64 0, i64 0, i64 4
  %432 = load i8, i8* %scevgep258.4.1, align 1
  %conv84.i303.i.4.1 = zext i8 %432 to i32
  %scevgep262.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %400, i64 0, i64 0, i64 4
  %433 = load i8, i8* %scevgep262.4.1, align 1
  %conv89.i308.i.4.1 = zext i8 %433 to i32
  %xor90.i309.i.4.1 = xor i32 %conv84.i303.i.4.1, %conv89.i308.i.4.1
  %conv91.i310.i.4.1 = trunc i32 %xor90.i309.i.4.1 to i8
  %scevgep265.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %401, i64 0, i64 0, i64 4
  store i8 %conv91.i310.i.4.1, i8* %scevgep265.4.1, align 1
  %scevgep248.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %397, i64 0, i64 1, i64 0
  %434 = bitcast i8* %scevgep248.1 to [5 x [5 x i8]]*
  %scevgep252.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %398, i64 0, i64 1, i64 0
  %435 = bitcast i8* %scevgep252.1 to [5 x [5 x i8]]*
  %scevgep256.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %399, i64 0, i64 1, i64 0
  %436 = bitcast i8* %scevgep256.1 to [5 x [5 x i8]]*
  %scevgep260.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %400, i64 0, i64 1, i64 0
  %437 = bitcast i8* %scevgep260.1 to [5 x [5 x i8]]*
  %scevgep264.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %401, i64 0, i64 1, i64 0
  %438 = bitcast i8* %scevgep264.1 to [5 x [5 x i8]]*
  %arrayidx56.i275.i.2 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 2
  %arrayidx70.i289.i.2 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 2
  %scevgep246.2763 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 0
  %439 = load i8, i8* %scevgep246.2763, align 1
  %conv44.i262.i.2764 = zext i8 %439 to i32
  %scevgep249.2765 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %434, i64 0, i64 0, i64 0
  %440 = load i8, i8* %scevgep249.2765, align 1
  %conv49.i267.i.2766 = zext i8 %440 to i32
  %xor.i268.i.2767 = xor i32 %conv44.i262.i.2764, %conv49.i267.i.2766
  %conv50.i269.i.2768 = trunc i32 %xor.i268.i.2767 to i8
  %scevgep253.2769 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %435, i64 0, i64 0, i64 0
  store i8 %conv50.i269.i.2768, i8* %scevgep253.2769, align 1
  %441 = load i8, i8* %arrayidx56.i275.i.2, align 1
  %conv57.i276.i.2770 = zext i8 %441 to i32
  %xor58.i277.i.2771 = xor i32 %conv57.i276.i.2770, 1
  %conv59.i278.i.2772 = trunc i32 %xor58.i277.i.2771 to i8
  %scevgep250.2773 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %434, i64 0, i64 0, i64 0
  %442 = load i8, i8* %scevgep250.2773, align 1
  %call64.i283.i.2774 = call zeroext i8 @mult(i8 zeroext %conv59.i278.i.2772, i8 zeroext %442) #3
  %scevgep257.2775 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %436, i64 0, i64 0, i64 0
  store i8 %call64.i283.i.2774, i8* %scevgep257.2775, align 1
  %443 = load i8, i8* %arrayidx70.i289.i.2, align 1
  %scevgep254.2776 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %435, i64 0, i64 0, i64 0
  %444 = load i8, i8* %scevgep254.2776, align 1
  %call75.i294.i.2777 = call zeroext i8 @mult(i8 zeroext %443, i8 zeroext %444) #3
  %scevgep261.2778 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %437, i64 0, i64 0, i64 0
  store i8 %call75.i294.i.2777, i8* %scevgep261.2778, align 1
  %scevgep258.2779 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %436, i64 0, i64 0, i64 0
  %445 = load i8, i8* %scevgep258.2779, align 1
  %conv84.i303.i.2780 = zext i8 %445 to i32
  %scevgep262.2781 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %437, i64 0, i64 0, i64 0
  %446 = load i8, i8* %scevgep262.2781, align 1
  %conv89.i308.i.2782 = zext i8 %446 to i32
  %xor90.i309.i.2783 = xor i32 %conv84.i303.i.2780, %conv89.i308.i.2782
  %conv91.i310.i.2784 = trunc i32 %xor90.i309.i.2783 to i8
  %scevgep265.2785 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %438, i64 0, i64 0, i64 0
  store i8 %conv91.i310.i.2784, i8* %scevgep265.2785, align 1
  %scevgep246.1.2 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 1
  %447 = load i8, i8* %scevgep246.1.2, align 1
  %conv44.i262.i.1.2 = zext i8 %447 to i32
  %scevgep249.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %434, i64 0, i64 0, i64 1
  %448 = load i8, i8* %scevgep249.1.2, align 1
  %conv49.i267.i.1.2 = zext i8 %448 to i32
  %xor.i268.i.1.2 = xor i32 %conv44.i262.i.1.2, %conv49.i267.i.1.2
  %conv50.i269.i.1.2 = trunc i32 %xor.i268.i.1.2 to i8
  %scevgep253.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %435, i64 0, i64 0, i64 1
  store i8 %conv50.i269.i.1.2, i8* %scevgep253.1.2, align 1
  %449 = load i8, i8* %arrayidx56.i275.i.2, align 1
  %conv57.i276.i.1.2 = zext i8 %449 to i32
  %xor58.i277.i.1.2 = xor i32 %conv57.i276.i.1.2, 1
  %conv59.i278.i.1.2 = trunc i32 %xor58.i277.i.1.2 to i8
  %scevgep250.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %434, i64 0, i64 0, i64 1
  %450 = load i8, i8* %scevgep250.1.2, align 1
  %call64.i283.i.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i278.i.1.2, i8 zeroext %450) #3
  %scevgep257.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %436, i64 0, i64 0, i64 1
  store i8 %call64.i283.i.1.2, i8* %scevgep257.1.2, align 1
  %451 = load i8, i8* %arrayidx70.i289.i.2, align 1
  %scevgep254.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %435, i64 0, i64 0, i64 1
  %452 = load i8, i8* %scevgep254.1.2, align 1
  %call75.i294.i.1.2 = call zeroext i8 @mult(i8 zeroext %451, i8 zeroext %452) #3
  %scevgep261.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %437, i64 0, i64 0, i64 1
  store i8 %call75.i294.i.1.2, i8* %scevgep261.1.2, align 1
  %scevgep258.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %436, i64 0, i64 0, i64 1
  %453 = load i8, i8* %scevgep258.1.2, align 1
  %conv84.i303.i.1.2 = zext i8 %453 to i32
  %scevgep262.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %437, i64 0, i64 0, i64 1
  %454 = load i8, i8* %scevgep262.1.2, align 1
  %conv89.i308.i.1.2 = zext i8 %454 to i32
  %xor90.i309.i.1.2 = xor i32 %conv84.i303.i.1.2, %conv89.i308.i.1.2
  %conv91.i310.i.1.2 = trunc i32 %xor90.i309.i.1.2 to i8
  %scevgep265.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %438, i64 0, i64 0, i64 1
  store i8 %conv91.i310.i.1.2, i8* %scevgep265.1.2, align 1
  %scevgep246.3.2 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 3
  %455 = load i8, i8* %scevgep246.3.2, align 1
  %conv44.i262.i.3.2 = zext i8 %455 to i32
  %scevgep249.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %434, i64 0, i64 0, i64 3
  %456 = load i8, i8* %scevgep249.3.2, align 1
  %conv49.i267.i.3.2 = zext i8 %456 to i32
  %xor.i268.i.3.2 = xor i32 %conv44.i262.i.3.2, %conv49.i267.i.3.2
  %conv50.i269.i.3.2 = trunc i32 %xor.i268.i.3.2 to i8
  %scevgep253.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %435, i64 0, i64 0, i64 3
  store i8 %conv50.i269.i.3.2, i8* %scevgep253.3.2, align 1
  %457 = load i8, i8* %arrayidx56.i275.i.2, align 1
  %conv57.i276.i.3.2 = zext i8 %457 to i32
  %xor58.i277.i.3.2 = xor i32 %conv57.i276.i.3.2, 1
  %conv59.i278.i.3.2 = trunc i32 %xor58.i277.i.3.2 to i8
  %scevgep250.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %434, i64 0, i64 0, i64 3
  %458 = load i8, i8* %scevgep250.3.2, align 1
  %call64.i283.i.3.2 = call zeroext i8 @mult(i8 zeroext %conv59.i278.i.3.2, i8 zeroext %458) #3
  %scevgep257.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %436, i64 0, i64 0, i64 3
  store i8 %call64.i283.i.3.2, i8* %scevgep257.3.2, align 1
  %459 = load i8, i8* %arrayidx70.i289.i.2, align 1
  %scevgep254.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %435, i64 0, i64 0, i64 3
  %460 = load i8, i8* %scevgep254.3.2, align 1
  %call75.i294.i.3.2 = call zeroext i8 @mult(i8 zeroext %459, i8 zeroext %460) #3
  %scevgep261.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %437, i64 0, i64 0, i64 3
  store i8 %call75.i294.i.3.2, i8* %scevgep261.3.2, align 1
  %scevgep258.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %436, i64 0, i64 0, i64 3
  %461 = load i8, i8* %scevgep258.3.2, align 1
  %conv84.i303.i.3.2 = zext i8 %461 to i32
  %scevgep262.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %437, i64 0, i64 0, i64 3
  %462 = load i8, i8* %scevgep262.3.2, align 1
  %conv89.i308.i.3.2 = zext i8 %462 to i32
  %xor90.i309.i.3.2 = xor i32 %conv84.i303.i.3.2, %conv89.i308.i.3.2
  %conv91.i310.i.3.2 = trunc i32 %xor90.i309.i.3.2 to i8
  %scevgep265.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %438, i64 0, i64 0, i64 3
  store i8 %conv91.i310.i.3.2, i8* %scevgep265.3.2, align 1
  %scevgep246.4.2 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 4
  %463 = load i8, i8* %scevgep246.4.2, align 1
  %conv44.i262.i.4.2 = zext i8 %463 to i32
  %scevgep249.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %434, i64 0, i64 0, i64 4
  %464 = load i8, i8* %scevgep249.4.2, align 1
  %conv49.i267.i.4.2 = zext i8 %464 to i32
  %xor.i268.i.4.2 = xor i32 %conv44.i262.i.4.2, %conv49.i267.i.4.2
  %conv50.i269.i.4.2 = trunc i32 %xor.i268.i.4.2 to i8
  %scevgep253.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %435, i64 0, i64 0, i64 4
  store i8 %conv50.i269.i.4.2, i8* %scevgep253.4.2, align 1
  %465 = load i8, i8* %arrayidx56.i275.i.2, align 1
  %conv57.i276.i.4.2 = zext i8 %465 to i32
  %xor58.i277.i.4.2 = xor i32 %conv57.i276.i.4.2, 1
  %conv59.i278.i.4.2 = trunc i32 %xor58.i277.i.4.2 to i8
  %scevgep250.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %434, i64 0, i64 0, i64 4
  %466 = load i8, i8* %scevgep250.4.2, align 1
  %call64.i283.i.4.2 = call zeroext i8 @mult(i8 zeroext %conv59.i278.i.4.2, i8 zeroext %466) #3
  %scevgep257.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %436, i64 0, i64 0, i64 4
  store i8 %call64.i283.i.4.2, i8* %scevgep257.4.2, align 1
  %467 = load i8, i8* %arrayidx70.i289.i.2, align 1
  %scevgep254.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %435, i64 0, i64 0, i64 4
  %468 = load i8, i8* %scevgep254.4.2, align 1
  %call75.i294.i.4.2 = call zeroext i8 @mult(i8 zeroext %467, i8 zeroext %468) #3
  %scevgep261.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %437, i64 0, i64 0, i64 4
  store i8 %call75.i294.i.4.2, i8* %scevgep261.4.2, align 1
  %scevgep258.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %436, i64 0, i64 0, i64 4
  %469 = load i8, i8* %scevgep258.4.2, align 1
  %conv84.i303.i.4.2 = zext i8 %469 to i32
  %scevgep262.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %437, i64 0, i64 0, i64 4
  %470 = load i8, i8* %scevgep262.4.2, align 1
  %conv89.i308.i.4.2 = zext i8 %470 to i32
  %xor90.i309.i.4.2 = xor i32 %conv84.i303.i.4.2, %conv89.i308.i.4.2
  %conv91.i310.i.4.2 = trunc i32 %xor90.i309.i.4.2 to i8
  %scevgep265.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %438, i64 0, i64 0, i64 4
  store i8 %conv91.i310.i.4.2, i8* %scevgep265.4.2, align 1
  %scevgep248.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %434, i64 0, i64 1, i64 0
  %471 = bitcast i8* %scevgep248.2 to [5 x [5 x i8]]*
  %scevgep252.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %435, i64 0, i64 1, i64 0
  %472 = bitcast i8* %scevgep252.2 to [5 x [5 x i8]]*
  %scevgep256.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %436, i64 0, i64 1, i64 0
  %473 = bitcast i8* %scevgep256.2 to [5 x [5 x i8]]*
  %scevgep260.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %437, i64 0, i64 1, i64 0
  %474 = bitcast i8* %scevgep260.2 to [5 x [5 x i8]]*
  %scevgep264.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %438, i64 0, i64 1, i64 0
  %475 = bitcast i8* %scevgep264.2 to [5 x [5 x i8]]*
  %arrayidx56.i275.i.3 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 3
  %arrayidx70.i289.i.3 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 3
  %scevgep246.3790 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 0
  %476 = load i8, i8* %scevgep246.3790, align 1
  %conv44.i262.i.3791 = zext i8 %476 to i32
  %scevgep249.3792 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %471, i64 0, i64 0, i64 0
  %477 = load i8, i8* %scevgep249.3792, align 1
  %conv49.i267.i.3793 = zext i8 %477 to i32
  %xor.i268.i.3794 = xor i32 %conv44.i262.i.3791, %conv49.i267.i.3793
  %conv50.i269.i.3795 = trunc i32 %xor.i268.i.3794 to i8
  %scevgep253.3796 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %472, i64 0, i64 0, i64 0
  store i8 %conv50.i269.i.3795, i8* %scevgep253.3796, align 1
  %478 = load i8, i8* %arrayidx56.i275.i.3, align 1
  %conv57.i276.i.3797 = zext i8 %478 to i32
  %xor58.i277.i.3798 = xor i32 %conv57.i276.i.3797, 1
  %conv59.i278.i.3799 = trunc i32 %xor58.i277.i.3798 to i8
  %scevgep250.3800 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %471, i64 0, i64 0, i64 0
  %479 = load i8, i8* %scevgep250.3800, align 1
  %call64.i283.i.3801 = call zeroext i8 @mult(i8 zeroext %conv59.i278.i.3799, i8 zeroext %479) #3
  %scevgep257.3802 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %473, i64 0, i64 0, i64 0
  store i8 %call64.i283.i.3801, i8* %scevgep257.3802, align 1
  %480 = load i8, i8* %arrayidx70.i289.i.3, align 1
  %scevgep254.3803 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %472, i64 0, i64 0, i64 0
  %481 = load i8, i8* %scevgep254.3803, align 1
  %call75.i294.i.3804 = call zeroext i8 @mult(i8 zeroext %480, i8 zeroext %481) #3
  %scevgep261.3805 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %474, i64 0, i64 0, i64 0
  store i8 %call75.i294.i.3804, i8* %scevgep261.3805, align 1
  %scevgep258.3806 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %473, i64 0, i64 0, i64 0
  %482 = load i8, i8* %scevgep258.3806, align 1
  %conv84.i303.i.3807 = zext i8 %482 to i32
  %scevgep262.3808 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %474, i64 0, i64 0, i64 0
  %483 = load i8, i8* %scevgep262.3808, align 1
  %conv89.i308.i.3809 = zext i8 %483 to i32
  %xor90.i309.i.3810 = xor i32 %conv84.i303.i.3807, %conv89.i308.i.3809
  %conv91.i310.i.3811 = trunc i32 %xor90.i309.i.3810 to i8
  %scevgep265.3812 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %475, i64 0, i64 0, i64 0
  store i8 %conv91.i310.i.3811, i8* %scevgep265.3812, align 1
  %scevgep246.1.3 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 1
  %484 = load i8, i8* %scevgep246.1.3, align 1
  %conv44.i262.i.1.3 = zext i8 %484 to i32
  %scevgep249.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %471, i64 0, i64 0, i64 1
  %485 = load i8, i8* %scevgep249.1.3, align 1
  %conv49.i267.i.1.3 = zext i8 %485 to i32
  %xor.i268.i.1.3 = xor i32 %conv44.i262.i.1.3, %conv49.i267.i.1.3
  %conv50.i269.i.1.3 = trunc i32 %xor.i268.i.1.3 to i8
  %scevgep253.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %472, i64 0, i64 0, i64 1
  store i8 %conv50.i269.i.1.3, i8* %scevgep253.1.3, align 1
  %486 = load i8, i8* %arrayidx56.i275.i.3, align 1
  %conv57.i276.i.1.3 = zext i8 %486 to i32
  %xor58.i277.i.1.3 = xor i32 %conv57.i276.i.1.3, 1
  %conv59.i278.i.1.3 = trunc i32 %xor58.i277.i.1.3 to i8
  %scevgep250.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %471, i64 0, i64 0, i64 1
  %487 = load i8, i8* %scevgep250.1.3, align 1
  %call64.i283.i.1.3 = call zeroext i8 @mult(i8 zeroext %conv59.i278.i.1.3, i8 zeroext %487) #3
  %scevgep257.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %473, i64 0, i64 0, i64 1
  store i8 %call64.i283.i.1.3, i8* %scevgep257.1.3, align 1
  %488 = load i8, i8* %arrayidx70.i289.i.3, align 1
  %scevgep254.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %472, i64 0, i64 0, i64 1
  %489 = load i8, i8* %scevgep254.1.3, align 1
  %call75.i294.i.1.3 = call zeroext i8 @mult(i8 zeroext %488, i8 zeroext %489) #3
  %scevgep261.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %474, i64 0, i64 0, i64 1
  store i8 %call75.i294.i.1.3, i8* %scevgep261.1.3, align 1
  %scevgep258.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %473, i64 0, i64 0, i64 1
  %490 = load i8, i8* %scevgep258.1.3, align 1
  %conv84.i303.i.1.3 = zext i8 %490 to i32
  %scevgep262.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %474, i64 0, i64 0, i64 1
  %491 = load i8, i8* %scevgep262.1.3, align 1
  %conv89.i308.i.1.3 = zext i8 %491 to i32
  %xor90.i309.i.1.3 = xor i32 %conv84.i303.i.1.3, %conv89.i308.i.1.3
  %conv91.i310.i.1.3 = trunc i32 %xor90.i309.i.1.3 to i8
  %scevgep265.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %475, i64 0, i64 0, i64 1
  store i8 %conv91.i310.i.1.3, i8* %scevgep265.1.3, align 1
  %scevgep246.2.3 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 2
  %492 = load i8, i8* %scevgep246.2.3, align 1
  %conv44.i262.i.2.3 = zext i8 %492 to i32
  %scevgep249.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %471, i64 0, i64 0, i64 2
  %493 = load i8, i8* %scevgep249.2.3, align 1
  %conv49.i267.i.2.3 = zext i8 %493 to i32
  %xor.i268.i.2.3 = xor i32 %conv44.i262.i.2.3, %conv49.i267.i.2.3
  %conv50.i269.i.2.3 = trunc i32 %xor.i268.i.2.3 to i8
  %scevgep253.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %472, i64 0, i64 0, i64 2
  store i8 %conv50.i269.i.2.3, i8* %scevgep253.2.3, align 1
  %494 = load i8, i8* %arrayidx56.i275.i.3, align 1
  %conv57.i276.i.2.3 = zext i8 %494 to i32
  %xor58.i277.i.2.3 = xor i32 %conv57.i276.i.2.3, 1
  %conv59.i278.i.2.3 = trunc i32 %xor58.i277.i.2.3 to i8
  %scevgep250.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %471, i64 0, i64 0, i64 2
  %495 = load i8, i8* %scevgep250.2.3, align 1
  %call64.i283.i.2.3 = call zeroext i8 @mult(i8 zeroext %conv59.i278.i.2.3, i8 zeroext %495) #3
  %scevgep257.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %473, i64 0, i64 0, i64 2
  store i8 %call64.i283.i.2.3, i8* %scevgep257.2.3, align 1
  %496 = load i8, i8* %arrayidx70.i289.i.3, align 1
  %scevgep254.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %472, i64 0, i64 0, i64 2
  %497 = load i8, i8* %scevgep254.2.3, align 1
  %call75.i294.i.2.3 = call zeroext i8 @mult(i8 zeroext %496, i8 zeroext %497) #3
  %scevgep261.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %474, i64 0, i64 0, i64 2
  store i8 %call75.i294.i.2.3, i8* %scevgep261.2.3, align 1
  %scevgep258.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %473, i64 0, i64 0, i64 2
  %498 = load i8, i8* %scevgep258.2.3, align 1
  %conv84.i303.i.2.3 = zext i8 %498 to i32
  %scevgep262.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %474, i64 0, i64 0, i64 2
  %499 = load i8, i8* %scevgep262.2.3, align 1
  %conv89.i308.i.2.3 = zext i8 %499 to i32
  %xor90.i309.i.2.3 = xor i32 %conv84.i303.i.2.3, %conv89.i308.i.2.3
  %conv91.i310.i.2.3 = trunc i32 %xor90.i309.i.2.3 to i8
  %scevgep265.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %475, i64 0, i64 0, i64 2
  store i8 %conv91.i310.i.2.3, i8* %scevgep265.2.3, align 1
  %scevgep246.4.3 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 4
  %500 = load i8, i8* %scevgep246.4.3, align 1
  %conv44.i262.i.4.3 = zext i8 %500 to i32
  %scevgep249.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %471, i64 0, i64 0, i64 4
  %501 = load i8, i8* %scevgep249.4.3, align 1
  %conv49.i267.i.4.3 = zext i8 %501 to i32
  %xor.i268.i.4.3 = xor i32 %conv44.i262.i.4.3, %conv49.i267.i.4.3
  %conv50.i269.i.4.3 = trunc i32 %xor.i268.i.4.3 to i8
  %scevgep253.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %472, i64 0, i64 0, i64 4
  store i8 %conv50.i269.i.4.3, i8* %scevgep253.4.3, align 1
  %502 = load i8, i8* %arrayidx56.i275.i.3, align 1
  %conv57.i276.i.4.3 = zext i8 %502 to i32
  %xor58.i277.i.4.3 = xor i32 %conv57.i276.i.4.3, 1
  %conv59.i278.i.4.3 = trunc i32 %xor58.i277.i.4.3 to i8
  %scevgep250.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %471, i64 0, i64 0, i64 4
  %503 = load i8, i8* %scevgep250.4.3, align 1
  %call64.i283.i.4.3 = call zeroext i8 @mult(i8 zeroext %conv59.i278.i.4.3, i8 zeroext %503) #3
  %scevgep257.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %473, i64 0, i64 0, i64 4
  store i8 %call64.i283.i.4.3, i8* %scevgep257.4.3, align 1
  %504 = load i8, i8* %arrayidx70.i289.i.3, align 1
  %scevgep254.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %472, i64 0, i64 0, i64 4
  %505 = load i8, i8* %scevgep254.4.3, align 1
  %call75.i294.i.4.3 = call zeroext i8 @mult(i8 zeroext %504, i8 zeroext %505) #3
  %scevgep261.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %474, i64 0, i64 0, i64 4
  store i8 %call75.i294.i.4.3, i8* %scevgep261.4.3, align 1
  %scevgep258.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %473, i64 0, i64 0, i64 4
  %506 = load i8, i8* %scevgep258.4.3, align 1
  %conv84.i303.i.4.3 = zext i8 %506 to i32
  %scevgep262.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %474, i64 0, i64 0, i64 4
  %507 = load i8, i8* %scevgep262.4.3, align 1
  %conv89.i308.i.4.3 = zext i8 %507 to i32
  %xor90.i309.i.4.3 = xor i32 %conv84.i303.i.4.3, %conv89.i308.i.4.3
  %conv91.i310.i.4.3 = trunc i32 %xor90.i309.i.4.3 to i8
  %scevgep265.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %475, i64 0, i64 0, i64 4
  store i8 %conv91.i310.i.4.3, i8* %scevgep265.4.3, align 1
  %scevgep248.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %471, i64 0, i64 1, i64 0
  %508 = bitcast i8* %scevgep248.3 to [5 x [5 x i8]]*
  %scevgep252.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %472, i64 0, i64 1, i64 0
  %509 = bitcast i8* %scevgep252.3 to [5 x [5 x i8]]*
  %scevgep256.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %473, i64 0, i64 1, i64 0
  %510 = bitcast i8* %scevgep256.3 to [5 x [5 x i8]]*
  %scevgep260.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %474, i64 0, i64 1, i64 0
  %511 = bitcast i8* %scevgep260.3 to [5 x [5 x i8]]*
  %scevgep264.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %475, i64 0, i64 1, i64 0
  %512 = bitcast i8* %scevgep264.3 to [5 x [5 x i8]]*
  %arrayidx56.i275.i.4 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 4
  %arrayidx70.i289.i.4 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 4
  %scevgep246.4817 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 0
  %513 = load i8, i8* %scevgep246.4817, align 1
  %conv44.i262.i.4818 = zext i8 %513 to i32
  %scevgep249.4819 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %508, i64 0, i64 0, i64 0
  %514 = load i8, i8* %scevgep249.4819, align 1
  %conv49.i267.i.4820 = zext i8 %514 to i32
  %xor.i268.i.4821 = xor i32 %conv44.i262.i.4818, %conv49.i267.i.4820
  %conv50.i269.i.4822 = trunc i32 %xor.i268.i.4821 to i8
  %scevgep253.4823 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %509, i64 0, i64 0, i64 0
  store i8 %conv50.i269.i.4822, i8* %scevgep253.4823, align 1
  %515 = load i8, i8* %arrayidx56.i275.i.4, align 1
  %conv57.i276.i.4824 = zext i8 %515 to i32
  %xor58.i277.i.4825 = xor i32 %conv57.i276.i.4824, 1
  %conv59.i278.i.4826 = trunc i32 %xor58.i277.i.4825 to i8
  %scevgep250.4827 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %508, i64 0, i64 0, i64 0
  %516 = load i8, i8* %scevgep250.4827, align 1
  %call64.i283.i.4828 = call zeroext i8 @mult(i8 zeroext %conv59.i278.i.4826, i8 zeroext %516) #3
  %scevgep257.4829 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %510, i64 0, i64 0, i64 0
  store i8 %call64.i283.i.4828, i8* %scevgep257.4829, align 1
  %517 = load i8, i8* %arrayidx70.i289.i.4, align 1
  %scevgep254.4830 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %509, i64 0, i64 0, i64 0
  %518 = load i8, i8* %scevgep254.4830, align 1
  %call75.i294.i.4831 = call zeroext i8 @mult(i8 zeroext %517, i8 zeroext %518) #3
  %scevgep261.4832 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %511, i64 0, i64 0, i64 0
  store i8 %call75.i294.i.4831, i8* %scevgep261.4832, align 1
  %scevgep258.4833 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %510, i64 0, i64 0, i64 0
  %519 = load i8, i8* %scevgep258.4833, align 1
  %conv84.i303.i.4834 = zext i8 %519 to i32
  %scevgep262.4835 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %511, i64 0, i64 0, i64 0
  %520 = load i8, i8* %scevgep262.4835, align 1
  %conv89.i308.i.4836 = zext i8 %520 to i32
  %xor90.i309.i.4837 = xor i32 %conv84.i303.i.4834, %conv89.i308.i.4836
  %conv91.i310.i.4838 = trunc i32 %xor90.i309.i.4837 to i8
  %scevgep265.4839 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %512, i64 0, i64 0, i64 0
  store i8 %conv91.i310.i.4838, i8* %scevgep265.4839, align 1
  %scevgep246.1.4 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 1
  %521 = load i8, i8* %scevgep246.1.4, align 1
  %conv44.i262.i.1.4 = zext i8 %521 to i32
  %scevgep249.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %508, i64 0, i64 0, i64 1
  %522 = load i8, i8* %scevgep249.1.4, align 1
  %conv49.i267.i.1.4 = zext i8 %522 to i32
  %xor.i268.i.1.4 = xor i32 %conv44.i262.i.1.4, %conv49.i267.i.1.4
  %conv50.i269.i.1.4 = trunc i32 %xor.i268.i.1.4 to i8
  %scevgep253.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %509, i64 0, i64 0, i64 1
  store i8 %conv50.i269.i.1.4, i8* %scevgep253.1.4, align 1
  %523 = load i8, i8* %arrayidx56.i275.i.4, align 1
  %conv57.i276.i.1.4 = zext i8 %523 to i32
  %xor58.i277.i.1.4 = xor i32 %conv57.i276.i.1.4, 1
  %conv59.i278.i.1.4 = trunc i32 %xor58.i277.i.1.4 to i8
  %scevgep250.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %508, i64 0, i64 0, i64 1
  %524 = load i8, i8* %scevgep250.1.4, align 1
  %call64.i283.i.1.4 = call zeroext i8 @mult(i8 zeroext %conv59.i278.i.1.4, i8 zeroext %524) #3
  %scevgep257.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %510, i64 0, i64 0, i64 1
  store i8 %call64.i283.i.1.4, i8* %scevgep257.1.4, align 1
  %525 = load i8, i8* %arrayidx70.i289.i.4, align 1
  %scevgep254.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %509, i64 0, i64 0, i64 1
  %526 = load i8, i8* %scevgep254.1.4, align 1
  %call75.i294.i.1.4 = call zeroext i8 @mult(i8 zeroext %525, i8 zeroext %526) #3
  %scevgep261.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %511, i64 0, i64 0, i64 1
  store i8 %call75.i294.i.1.4, i8* %scevgep261.1.4, align 1
  %scevgep258.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %510, i64 0, i64 0, i64 1
  %527 = load i8, i8* %scevgep258.1.4, align 1
  %conv84.i303.i.1.4 = zext i8 %527 to i32
  %scevgep262.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %511, i64 0, i64 0, i64 1
  %528 = load i8, i8* %scevgep262.1.4, align 1
  %conv89.i308.i.1.4 = zext i8 %528 to i32
  %xor90.i309.i.1.4 = xor i32 %conv84.i303.i.1.4, %conv89.i308.i.1.4
  %conv91.i310.i.1.4 = trunc i32 %xor90.i309.i.1.4 to i8
  %scevgep265.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %512, i64 0, i64 0, i64 1
  store i8 %conv91.i310.i.1.4, i8* %scevgep265.1.4, align 1
  %scevgep246.2.4 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 2
  %529 = load i8, i8* %scevgep246.2.4, align 1
  %conv44.i262.i.2.4 = zext i8 %529 to i32
  %scevgep249.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %508, i64 0, i64 0, i64 2
  %530 = load i8, i8* %scevgep249.2.4, align 1
  %conv49.i267.i.2.4 = zext i8 %530 to i32
  %xor.i268.i.2.4 = xor i32 %conv44.i262.i.2.4, %conv49.i267.i.2.4
  %conv50.i269.i.2.4 = trunc i32 %xor.i268.i.2.4 to i8
  %scevgep253.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %509, i64 0, i64 0, i64 2
  store i8 %conv50.i269.i.2.4, i8* %scevgep253.2.4, align 1
  %531 = load i8, i8* %arrayidx56.i275.i.4, align 1
  %conv57.i276.i.2.4 = zext i8 %531 to i32
  %xor58.i277.i.2.4 = xor i32 %conv57.i276.i.2.4, 1
  %conv59.i278.i.2.4 = trunc i32 %xor58.i277.i.2.4 to i8
  %scevgep250.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %508, i64 0, i64 0, i64 2
  %532 = load i8, i8* %scevgep250.2.4, align 1
  %call64.i283.i.2.4 = call zeroext i8 @mult(i8 zeroext %conv59.i278.i.2.4, i8 zeroext %532) #3
  %scevgep257.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %510, i64 0, i64 0, i64 2
  store i8 %call64.i283.i.2.4, i8* %scevgep257.2.4, align 1
  %533 = load i8, i8* %arrayidx70.i289.i.4, align 1
  %scevgep254.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %509, i64 0, i64 0, i64 2
  %534 = load i8, i8* %scevgep254.2.4, align 1
  %call75.i294.i.2.4 = call zeroext i8 @mult(i8 zeroext %533, i8 zeroext %534) #3
  %scevgep261.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %511, i64 0, i64 0, i64 2
  store i8 %call75.i294.i.2.4, i8* %scevgep261.2.4, align 1
  %scevgep258.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %510, i64 0, i64 0, i64 2
  %535 = load i8, i8* %scevgep258.2.4, align 1
  %conv84.i303.i.2.4 = zext i8 %535 to i32
  %scevgep262.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %511, i64 0, i64 0, i64 2
  %536 = load i8, i8* %scevgep262.2.4, align 1
  %conv89.i308.i.2.4 = zext i8 %536 to i32
  %xor90.i309.i.2.4 = xor i32 %conv84.i303.i.2.4, %conv89.i308.i.2.4
  %conv91.i310.i.2.4 = trunc i32 %xor90.i309.i.2.4 to i8
  %scevgep265.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %512, i64 0, i64 0, i64 2
  store i8 %conv91.i310.i.2.4, i8* %scevgep265.2.4, align 1
  %scevgep246.3.4 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 3
  %537 = load i8, i8* %scevgep246.3.4, align 1
  %conv44.i262.i.3.4 = zext i8 %537 to i32
  %scevgep249.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %508, i64 0, i64 0, i64 3
  %538 = load i8, i8* %scevgep249.3.4, align 1
  %conv49.i267.i.3.4 = zext i8 %538 to i32
  %xor.i268.i.3.4 = xor i32 %conv44.i262.i.3.4, %conv49.i267.i.3.4
  %conv50.i269.i.3.4 = trunc i32 %xor.i268.i.3.4 to i8
  %scevgep253.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %509, i64 0, i64 0, i64 3
  store i8 %conv50.i269.i.3.4, i8* %scevgep253.3.4, align 1
  %539 = load i8, i8* %arrayidx56.i275.i.4, align 1
  %conv57.i276.i.3.4 = zext i8 %539 to i32
  %xor58.i277.i.3.4 = xor i32 %conv57.i276.i.3.4, 1
  %conv59.i278.i.3.4 = trunc i32 %xor58.i277.i.3.4 to i8
  %scevgep250.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %508, i64 0, i64 0, i64 3
  %540 = load i8, i8* %scevgep250.3.4, align 1
  %call64.i283.i.3.4 = call zeroext i8 @mult(i8 zeroext %conv59.i278.i.3.4, i8 zeroext %540) #3
  %scevgep257.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %510, i64 0, i64 0, i64 3
  store i8 %call64.i283.i.3.4, i8* %scevgep257.3.4, align 1
  %541 = load i8, i8* %arrayidx70.i289.i.4, align 1
  %scevgep254.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %509, i64 0, i64 0, i64 3
  %542 = load i8, i8* %scevgep254.3.4, align 1
  %call75.i294.i.3.4 = call zeroext i8 @mult(i8 zeroext %541, i8 zeroext %542) #3
  %scevgep261.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %511, i64 0, i64 0, i64 3
  store i8 %call75.i294.i.3.4, i8* %scevgep261.3.4, align 1
  %scevgep258.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %510, i64 0, i64 0, i64 3
  %543 = load i8, i8* %scevgep258.3.4, align 1
  %conv84.i303.i.3.4 = zext i8 %543 to i32
  %scevgep262.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %511, i64 0, i64 0, i64 3
  %544 = load i8, i8* %scevgep262.3.4, align 1
  %conv89.i308.i.3.4 = zext i8 %544 to i32
  %xor90.i309.i.3.4 = xor i32 %conv84.i303.i.3.4, %conv89.i308.i.3.4
  %conv91.i310.i.3.4 = trunc i32 %xor90.i309.i.3.4 to i8
  %scevgep265.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %512, i64 0, i64 0, i64 3
  store i8 %conv91.i310.i.3.4, i8* %scevgep265.3.4, align 1
  %545 = load i8, i8* %arraydecay12.i, align 1
  %546 = load i8, i8* %arraydecay13.i, align 1
  %call111.i327.i = call zeroext i8 @mult(i8 zeroext %545, i8 zeroext %546) #3
  store i8 %call111.i327.i, i8* %arraydecay14.i, align 1
  %scevgep236.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  %547 = load i8, i8* %scevgep236.1, align 1
  %conv126.i339.i.1 = zext i8 %547 to i32
  %548 = load i8, i8* %arraydecay14.i, align 1
  %conv129.i342.i.1 = zext i8 %548 to i32
  %xor130.i343.i.1 = xor i32 %conv129.i342.i.1, %conv126.i339.i.1
  %conv131.i344.i.1 = trunc i32 %xor130.i343.i.1 to i8
  store i8 %conv131.i344.i.1, i8* %arraydecay14.i, align 1
  %scevgep236.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i.i, i64 0, i64 0, i64 2
  %549 = load i8, i8* %scevgep236.2, align 1
  %conv126.i339.i.2 = zext i8 %549 to i32
  %550 = load i8, i8* %arraydecay14.i, align 1
  %conv129.i342.i.2 = zext i8 %550 to i32
  %xor130.i343.i.2 = xor i32 %conv129.i342.i.2, %conv126.i339.i.2
  %conv131.i344.i.2 = trunc i32 %xor130.i343.i.2 to i8
  store i8 %conv131.i344.i.2, i8* %arraydecay14.i, align 1
  %scevgep236.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i.i, i64 0, i64 0, i64 3
  %551 = load i8, i8* %scevgep236.3, align 1
  %conv126.i339.i.3 = zext i8 %551 to i32
  %552 = load i8, i8* %arraydecay14.i, align 1
  %conv129.i342.i.3 = zext i8 %552 to i32
  %xor130.i343.i.3 = xor i32 %conv129.i342.i.3, %conv126.i339.i.3
  %conv131.i344.i.3 = trunc i32 %xor130.i343.i.3 to i8
  store i8 %conv131.i344.i.3, i8* %arraydecay14.i, align 1
  %scevgep236.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i.i, i64 0, i64 0, i64 4
  %553 = load i8, i8* %scevgep236.4, align 1
  %conv126.i339.i.4 = zext i8 %553 to i32
  %554 = load i8, i8* %arraydecay14.i, align 1
  %conv129.i342.i.4 = zext i8 %554 to i32
  %xor130.i343.i.4 = xor i32 %conv129.i342.i.4, %conv126.i339.i.4
  %conv131.i344.i.4 = trunc i32 %xor130.i343.i.4 to i8
  store i8 %conv131.i344.i.4, i8* %arraydecay14.i, align 1
  %scevgep235 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %555 = bitcast i8* %scevgep235 to [5 x [5 x i8]]*
  %arrayidx108.i324.i.1 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 1
  %556 = load i8, i8* %arrayidx108.i324.i.1, align 1
  %arrayidx110.i326.i.1 = getelementptr inbounds i8, i8* %arraydecay13.i, i64 1
  %557 = load i8, i8* %arrayidx110.i326.i.1, align 1
  %call111.i327.i.1 = call zeroext i8 @mult(i8 zeroext %556, i8 zeroext %557) #3
  %arrayidx113.i329.i.1 = getelementptr inbounds i8, i8* %arraydecay14.i, i64 1
  store i8 %call111.i327.i.1, i8* %arrayidx113.i329.i.1, align 1
  %arrayidx128.i341.i.1 = getelementptr inbounds i8, i8* %arraydecay14.i, i64 1
  %scevgep236.1700 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %555, i64 0, i64 0, i64 0
  %558 = load i8, i8* %scevgep236.1700, align 1
  %conv126.i339.i.1701 = zext i8 %558 to i32
  %559 = load i8, i8* %arrayidx128.i341.i.1, align 1
  %conv129.i342.i.1702 = zext i8 %559 to i32
  %xor130.i343.i.1703 = xor i32 %conv129.i342.i.1702, %conv126.i339.i.1701
  %conv131.i344.i.1704 = trunc i32 %xor130.i343.i.1703 to i8
  store i8 %conv131.i344.i.1704, i8* %arrayidx128.i341.i.1, align 1
  %scevgep236.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %555, i64 0, i64 0, i64 2
  %560 = load i8, i8* %scevgep236.2.1, align 1
  %conv126.i339.i.2.1 = zext i8 %560 to i32
  %561 = load i8, i8* %arrayidx128.i341.i.1, align 1
  %conv129.i342.i.2.1 = zext i8 %561 to i32
  %xor130.i343.i.2.1 = xor i32 %conv129.i342.i.2.1, %conv126.i339.i.2.1
  %conv131.i344.i.2.1 = trunc i32 %xor130.i343.i.2.1 to i8
  store i8 %conv131.i344.i.2.1, i8* %arrayidx128.i341.i.1, align 1
  %scevgep236.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %555, i64 0, i64 0, i64 3
  %562 = load i8, i8* %scevgep236.3.1, align 1
  %conv126.i339.i.3.1 = zext i8 %562 to i32
  %563 = load i8, i8* %arrayidx128.i341.i.1, align 1
  %conv129.i342.i.3.1 = zext i8 %563 to i32
  %xor130.i343.i.3.1 = xor i32 %conv129.i342.i.3.1, %conv126.i339.i.3.1
  %conv131.i344.i.3.1 = trunc i32 %xor130.i343.i.3.1 to i8
  store i8 %conv131.i344.i.3.1, i8* %arrayidx128.i341.i.1, align 1
  %scevgep236.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %555, i64 0, i64 0, i64 4
  %564 = load i8, i8* %scevgep236.4.1, align 1
  %conv126.i339.i.4.1 = zext i8 %564 to i32
  %565 = load i8, i8* %arrayidx128.i341.i.1, align 1
  %conv129.i342.i.4.1 = zext i8 %565 to i32
  %xor130.i343.i.4.1 = xor i32 %conv129.i342.i.4.1, %conv126.i339.i.4.1
  %conv131.i344.i.4.1 = trunc i32 %xor130.i343.i.4.1 to i8
  store i8 %conv131.i344.i.4.1, i8* %arrayidx128.i341.i.1, align 1
  %scevgep235.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %555, i64 0, i64 1, i64 0
  %566 = bitcast i8* %scevgep235.1 to [5 x [5 x i8]]*
  %arrayidx108.i324.i.2 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 2
  %567 = load i8, i8* %arrayidx108.i324.i.2, align 1
  %arrayidx110.i326.i.2 = getelementptr inbounds i8, i8* %arraydecay13.i, i64 2
  %568 = load i8, i8* %arrayidx110.i326.i.2, align 1
  %call111.i327.i.2 = call zeroext i8 @mult(i8 zeroext %567, i8 zeroext %568) #3
  %arrayidx113.i329.i.2 = getelementptr inbounds i8, i8* %arraydecay14.i, i64 2
  store i8 %call111.i327.i.2, i8* %arrayidx113.i329.i.2, align 1
  %arrayidx128.i341.i.2 = getelementptr inbounds i8, i8* %arraydecay14.i, i64 2
  %scevgep236.2709 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %566, i64 0, i64 0, i64 0
  %569 = load i8, i8* %scevgep236.2709, align 1
  %conv126.i339.i.2710 = zext i8 %569 to i32
  %570 = load i8, i8* %arrayidx128.i341.i.2, align 1
  %conv129.i342.i.2711 = zext i8 %570 to i32
  %xor130.i343.i.2712 = xor i32 %conv129.i342.i.2711, %conv126.i339.i.2710
  %conv131.i344.i.2713 = trunc i32 %xor130.i343.i.2712 to i8
  store i8 %conv131.i344.i.2713, i8* %arrayidx128.i341.i.2, align 1
  %scevgep236.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %566, i64 0, i64 0, i64 1
  %571 = load i8, i8* %scevgep236.1.2, align 1
  %conv126.i339.i.1.2 = zext i8 %571 to i32
  %572 = load i8, i8* %arrayidx128.i341.i.2, align 1
  %conv129.i342.i.1.2 = zext i8 %572 to i32
  %xor130.i343.i.1.2 = xor i32 %conv129.i342.i.1.2, %conv126.i339.i.1.2
  %conv131.i344.i.1.2 = trunc i32 %xor130.i343.i.1.2 to i8
  store i8 %conv131.i344.i.1.2, i8* %arrayidx128.i341.i.2, align 1
  %scevgep236.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %566, i64 0, i64 0, i64 3
  %573 = load i8, i8* %scevgep236.3.2, align 1
  %conv126.i339.i.3.2 = zext i8 %573 to i32
  %574 = load i8, i8* %arrayidx128.i341.i.2, align 1
  %conv129.i342.i.3.2 = zext i8 %574 to i32
  %xor130.i343.i.3.2 = xor i32 %conv129.i342.i.3.2, %conv126.i339.i.3.2
  %conv131.i344.i.3.2 = trunc i32 %xor130.i343.i.3.2 to i8
  store i8 %conv131.i344.i.3.2, i8* %arrayidx128.i341.i.2, align 1
  %scevgep236.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %566, i64 0, i64 0, i64 4
  %575 = load i8, i8* %scevgep236.4.2, align 1
  %conv126.i339.i.4.2 = zext i8 %575 to i32
  %576 = load i8, i8* %arrayidx128.i341.i.2, align 1
  %conv129.i342.i.4.2 = zext i8 %576 to i32
  %xor130.i343.i.4.2 = xor i32 %conv129.i342.i.4.2, %conv126.i339.i.4.2
  %conv131.i344.i.4.2 = trunc i32 %xor130.i343.i.4.2 to i8
  store i8 %conv131.i344.i.4.2, i8* %arrayidx128.i341.i.2, align 1
  %scevgep235.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %566, i64 0, i64 1, i64 0
  %577 = bitcast i8* %scevgep235.2 to [5 x [5 x i8]]*
  %arrayidx108.i324.i.3 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 3
  %578 = load i8, i8* %arrayidx108.i324.i.3, align 1
  %arrayidx110.i326.i.3 = getelementptr inbounds i8, i8* %arraydecay13.i, i64 3
  %579 = load i8, i8* %arrayidx110.i326.i.3, align 1
  %call111.i327.i.3 = call zeroext i8 @mult(i8 zeroext %578, i8 zeroext %579) #3
  %arrayidx113.i329.i.3 = getelementptr inbounds i8, i8* %arraydecay14.i, i64 3
  store i8 %call111.i327.i.3, i8* %arrayidx113.i329.i.3, align 1
  %arrayidx128.i341.i.3 = getelementptr inbounds i8, i8* %arraydecay14.i, i64 3
  %scevgep236.3718 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %577, i64 0, i64 0, i64 0
  %580 = load i8, i8* %scevgep236.3718, align 1
  %conv126.i339.i.3719 = zext i8 %580 to i32
  %581 = load i8, i8* %arrayidx128.i341.i.3, align 1
  %conv129.i342.i.3720 = zext i8 %581 to i32
  %xor130.i343.i.3721 = xor i32 %conv129.i342.i.3720, %conv126.i339.i.3719
  %conv131.i344.i.3722 = trunc i32 %xor130.i343.i.3721 to i8
  store i8 %conv131.i344.i.3722, i8* %arrayidx128.i341.i.3, align 1
  %scevgep236.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %577, i64 0, i64 0, i64 1
  %582 = load i8, i8* %scevgep236.1.3, align 1
  %conv126.i339.i.1.3 = zext i8 %582 to i32
  %583 = load i8, i8* %arrayidx128.i341.i.3, align 1
  %conv129.i342.i.1.3 = zext i8 %583 to i32
  %xor130.i343.i.1.3 = xor i32 %conv129.i342.i.1.3, %conv126.i339.i.1.3
  %conv131.i344.i.1.3 = trunc i32 %xor130.i343.i.1.3 to i8
  store i8 %conv131.i344.i.1.3, i8* %arrayidx128.i341.i.3, align 1
  %scevgep236.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %577, i64 0, i64 0, i64 2
  %584 = load i8, i8* %scevgep236.2.3, align 1
  %conv126.i339.i.2.3 = zext i8 %584 to i32
  %585 = load i8, i8* %arrayidx128.i341.i.3, align 1
  %conv129.i342.i.2.3 = zext i8 %585 to i32
  %xor130.i343.i.2.3 = xor i32 %conv129.i342.i.2.3, %conv126.i339.i.2.3
  %conv131.i344.i.2.3 = trunc i32 %xor130.i343.i.2.3 to i8
  store i8 %conv131.i344.i.2.3, i8* %arrayidx128.i341.i.3, align 1
  %scevgep236.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %577, i64 0, i64 0, i64 4
  %586 = load i8, i8* %scevgep236.4.3, align 1
  %conv126.i339.i.4.3 = zext i8 %586 to i32
  %587 = load i8, i8* %arrayidx128.i341.i.3, align 1
  %conv129.i342.i.4.3 = zext i8 %587 to i32
  %xor130.i343.i.4.3 = xor i32 %conv129.i342.i.4.3, %conv126.i339.i.4.3
  %conv131.i344.i.4.3 = trunc i32 %xor130.i343.i.4.3 to i8
  store i8 %conv131.i344.i.4.3, i8* %arrayidx128.i341.i.3, align 1
  %scevgep235.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %577, i64 0, i64 1, i64 0
  %588 = bitcast i8* %scevgep235.3 to [5 x [5 x i8]]*
  %arrayidx108.i324.i.4 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 4
  %589 = load i8, i8* %arrayidx108.i324.i.4, align 1
  %arrayidx110.i326.i.4 = getelementptr inbounds i8, i8* %arraydecay13.i, i64 4
  %590 = load i8, i8* %arrayidx110.i326.i.4, align 1
  %call111.i327.i.4 = call zeroext i8 @mult(i8 zeroext %589, i8 zeroext %590) #3
  %arrayidx113.i329.i.4 = getelementptr inbounds i8, i8* %arraydecay14.i, i64 4
  store i8 %call111.i327.i.4, i8* %arrayidx113.i329.i.4, align 1
  %arrayidx128.i341.i.4 = getelementptr inbounds i8, i8* %arraydecay14.i, i64 4
  %scevgep236.4727 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %588, i64 0, i64 0, i64 0
  %591 = load i8, i8* %scevgep236.4727, align 1
  %conv126.i339.i.4728 = zext i8 %591 to i32
  %592 = load i8, i8* %arrayidx128.i341.i.4, align 1
  %conv129.i342.i.4729 = zext i8 %592 to i32
  %xor130.i343.i.4730 = xor i32 %conv129.i342.i.4729, %conv126.i339.i.4728
  %conv131.i344.i.4731 = trunc i32 %xor130.i343.i.4730 to i8
  store i8 %conv131.i344.i.4731, i8* %arrayidx128.i341.i.4, align 1
  %scevgep236.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %588, i64 0, i64 0, i64 1
  %593 = load i8, i8* %scevgep236.1.4, align 1
  %conv126.i339.i.1.4 = zext i8 %593 to i32
  %594 = load i8, i8* %arrayidx128.i341.i.4, align 1
  %conv129.i342.i.1.4 = zext i8 %594 to i32
  %xor130.i343.i.1.4 = xor i32 %conv129.i342.i.1.4, %conv126.i339.i.1.4
  %conv131.i344.i.1.4 = trunc i32 %xor130.i343.i.1.4 to i8
  store i8 %conv131.i344.i.1.4, i8* %arrayidx128.i341.i.4, align 1
  %scevgep236.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %588, i64 0, i64 0, i64 2
  %595 = load i8, i8* %scevgep236.2.4, align 1
  %conv126.i339.i.2.4 = zext i8 %595 to i32
  %596 = load i8, i8* %arrayidx128.i341.i.4, align 1
  %conv129.i342.i.2.4 = zext i8 %596 to i32
  %xor130.i343.i.2.4 = xor i32 %conv129.i342.i.2.4, %conv126.i339.i.2.4
  %conv131.i344.i.2.4 = trunc i32 %xor130.i343.i.2.4 to i8
  store i8 %conv131.i344.i.2.4, i8* %arrayidx128.i341.i.4, align 1
  %scevgep236.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %588, i64 0, i64 0, i64 3
  %597 = load i8, i8* %scevgep236.3.4, align 1
  %conv126.i339.i.3.4 = zext i8 %597 to i32
  %598 = load i8, i8* %arrayidx128.i341.i.4, align 1
  %conv129.i342.i.3.4 = zext i8 %598 to i32
  %xor130.i343.i.3.4 = xor i32 %conv129.i342.i.3.4, %conv126.i339.i.3.4
  %conv131.i344.i.3.4 = trunc i32 %xor130.i343.i.3.4 to i8
  store i8 %conv131.i344.i.3.4, i8* %arrayidx128.i341.i.4, align 1
  %call139.i350.i = call zeroext i8 @mult(i8 zeroext %call.i197.i, i8 zeroext %call1.i198.i) #3
  %conv140.i351.i = zext i8 %call139.i350.i to i32
  %scevgep226 = getelementptr [5 x i8], [5 x i8]* %v.i, i64 0, i64 0
  %599 = load i8, i8* %scevgep226, align 1
  %scevgep226.1 = getelementptr [5 x i8], [5 x i8]* %v.i, i64 0, i64 1
  %600 = load i8, i8* %scevgep226.1, align 1
  %conv.i.i172.i358.i.1 = zext i8 %600 to i32
  %conv1.i.i173.i359.i.1 = zext i8 %599 to i32
  %xor.i.i174.i360.i.1 = xor i32 %conv1.i.i173.i359.i.1, %conv.i.i172.i358.i.1
  %conv2.i.i175.i361.i.1 = trunc i32 %xor.i.i174.i360.i.1 to i8
  %scevgep226.2 = getelementptr [5 x i8], [5 x i8]* %v.i, i64 0, i64 2
  %601 = load i8, i8* %scevgep226.2, align 1
  %conv.i.i172.i358.i.2 = zext i8 %601 to i32
  %conv1.i.i173.i359.i.2 = zext i8 %conv2.i.i175.i361.i.1 to i32
  %xor.i.i174.i360.i.2 = xor i32 %conv1.i.i173.i359.i.2, %conv.i.i172.i358.i.2
  %conv2.i.i175.i361.i.2 = trunc i32 %xor.i.i174.i360.i.2 to i8
  %scevgep226.3 = getelementptr [5 x i8], [5 x i8]* %v.i, i64 0, i64 3
  %602 = load i8, i8* %scevgep226.3, align 1
  %conv.i.i172.i358.i.3 = zext i8 %602 to i32
  %conv1.i.i173.i359.i.3 = zext i8 %conv2.i.i175.i361.i.2 to i32
  %xor.i.i174.i360.i.3 = xor i32 %conv1.i.i173.i359.i.3, %conv.i.i172.i358.i.3
  %conv2.i.i175.i361.i.3 = trunc i32 %xor.i.i174.i360.i.3 to i8
  %scevgep226.4 = getelementptr [5 x i8], [5 x i8]* %v.i, i64 0, i64 4
  %603 = load i8, i8* %scevgep226.4, align 1
  %conv.i.i172.i358.i.4 = zext i8 %603 to i32
  %conv1.i.i173.i359.i.4 = zext i8 %conv2.i.i175.i361.i.3 to i32
  %xor.i.i174.i360.i.4 = xor i32 %conv1.i.i173.i359.i.4, %conv.i.i172.i358.i.4
  %conv2.i.i175.i361.i.4 = trunc i32 %xor.i.i174.i360.i.4 to i8
  %conv142.i364.i = zext i8 %conv2.i.i175.i361.i.4 to i32
  %cmp143.i365.i = icmp eq i32 %conv140.i351.i, %conv142.i364.i
  call void @assert(i1 zeroext %cmp143.i365.i) #3
  %scevgep221 = getelementptr [5 x i8], [5 x i8]* %v.i, i64 0, i64 0
  %604 = load i8, i8* %scevgep221, align 1
  %call.i.i.i1035 = call zeroext i8 @mult(i8 zeroext %604, i8 zeroext %604) #3
  %call.i3.i.i1036 = call zeroext i8 @mult(i8 zeroext %call.i.i.i1035, i8 zeroext %call.i.i.i1035) #3
  %call.i.i5.i1037 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i1036, i8 zeroext %call.i3.i.i1036) #3
  %call.i3.i6.i1038 = call zeroext i8 @mult(i8 zeroext %call.i.i5.i1037, i8 zeroext %call.i.i5.i1037) #3
  %scevgep222 = getelementptr [5 x i8], [5 x i8]* %v16.i, i64 0, i64 0
  store i8 %call.i3.i6.i1038, i8* %scevgep222, align 1
  %scevgep221.1 = getelementptr [5 x i8], [5 x i8]* %v.i, i64 0, i64 1
  %605 = load i8, i8* %scevgep221.1, align 1
  %call.i.i.i1031 = call zeroext i8 @mult(i8 zeroext %605, i8 zeroext %605) #3
  %call.i3.i.i1032 = call zeroext i8 @mult(i8 zeroext %call.i.i.i1031, i8 zeroext %call.i.i.i1031) #3
  %call.i.i5.i1033 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i1032, i8 zeroext %call.i3.i.i1032) #3
  %call.i3.i6.i1034 = call zeroext i8 @mult(i8 zeroext %call.i.i5.i1033, i8 zeroext %call.i.i5.i1033) #3
  %scevgep222.1 = getelementptr [5 x i8], [5 x i8]* %v16.i, i64 0, i64 1
  store i8 %call.i3.i6.i1034, i8* %scevgep222.1, align 1
  %scevgep221.2 = getelementptr [5 x i8], [5 x i8]* %v.i, i64 0, i64 2
  %606 = load i8, i8* %scevgep221.2, align 1
  %call.i.i.i1027 = call zeroext i8 @mult(i8 zeroext %606, i8 zeroext %606) #3
  %call.i3.i.i1028 = call zeroext i8 @mult(i8 zeroext %call.i.i.i1027, i8 zeroext %call.i.i.i1027) #3
  %call.i.i5.i1029 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i1028, i8 zeroext %call.i3.i.i1028) #3
  %call.i3.i6.i1030 = call zeroext i8 @mult(i8 zeroext %call.i.i5.i1029, i8 zeroext %call.i.i5.i1029) #3
  %scevgep222.2 = getelementptr [5 x i8], [5 x i8]* %v16.i, i64 0, i64 2
  store i8 %call.i3.i6.i1030, i8* %scevgep222.2, align 1
  %scevgep221.3 = getelementptr [5 x i8], [5 x i8]* %v.i, i64 0, i64 3
  %607 = load i8, i8* %scevgep221.3, align 1
  %call.i.i.i1023 = call zeroext i8 @mult(i8 zeroext %607, i8 zeroext %607) #3
  %call.i3.i.i1024 = call zeroext i8 @mult(i8 zeroext %call.i.i.i1023, i8 zeroext %call.i.i.i1023) #3
  %call.i.i5.i1025 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i1024, i8 zeroext %call.i3.i.i1024) #3
  %call.i3.i6.i1026 = call zeroext i8 @mult(i8 zeroext %call.i.i5.i1025, i8 zeroext %call.i.i5.i1025) #3
  %scevgep222.3 = getelementptr [5 x i8], [5 x i8]* %v16.i, i64 0, i64 3
  store i8 %call.i3.i6.i1026, i8* %scevgep222.3, align 1
  %scevgep221.4 = getelementptr [5 x i8], [5 x i8]* %v.i, i64 0, i64 4
  %608 = load i8, i8* %scevgep221.4, align 1
  %call.i.i.i = call zeroext i8 @mult(i8 zeroext %608, i8 zeroext %608) #3
  %call.i3.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i, i8 zeroext %call.i.i.i) #3
  %call.i.i5.i = call zeroext i8 @mult(i8 zeroext %call.i3.i.i, i8 zeroext %call.i3.i.i) #3
  %call.i3.i6.i = call zeroext i8 @mult(i8 zeroext %call.i.i5.i, i8 zeroext %call.i.i5.i) #3
  %scevgep222.4 = getelementptr [5 x i8], [5 x i8]* %v16.i, i64 0, i64 4
  store i8 %call.i3.i6.i, i8* %scevgep222.4, align 1
  %arraydecay17.i = getelementptr inbounds [5 x i8], [5 x i8]* %v16.i, i64 0, i64 0
  %arraydecay18.i = getelementptr inbounds [5 x i8], [5 x i8]* %wr.i, i64 0, i64 0
  %arraydecay19.i = getelementptr inbounds [5 x i8], [5 x i8]* %m.i, i64 0, i64 0
  %call.i413.i = call zeroext i8 (...) @rand() #3
  %call1.i414.i = call zeroext i8 (...) @rand() #3
  %conv.i415.i = zext i8 %call.i413.i to i32
  %scevgep217 = getelementptr [5 x i8], [5 x i8]* %v16.i, i64 0, i64 0
  %609 = load i8, i8* %scevgep217, align 1
  %scevgep217.1 = getelementptr [5 x i8], [5 x i8]* %v16.i, i64 0, i64 1
  %610 = load i8, i8* %scevgep217.1, align 1
  %conv.i.i.i421.i.1 = zext i8 %610 to i32
  %conv1.i.i.i422.i.1 = zext i8 %609 to i32
  %xor.i.i.i423.i.1 = xor i32 %conv1.i.i.i422.i.1, %conv.i.i.i421.i.1
  %conv2.i.i.i424.i.1 = trunc i32 %xor.i.i.i423.i.1 to i8
  %scevgep217.2 = getelementptr [5 x i8], [5 x i8]* %v16.i, i64 0, i64 2
  %611 = load i8, i8* %scevgep217.2, align 1
  %conv.i.i.i421.i.2 = zext i8 %611 to i32
  %conv1.i.i.i422.i.2 = zext i8 %conv2.i.i.i424.i.1 to i32
  %xor.i.i.i423.i.2 = xor i32 %conv1.i.i.i422.i.2, %conv.i.i.i421.i.2
  %conv2.i.i.i424.i.2 = trunc i32 %xor.i.i.i423.i.2 to i8
  %scevgep217.3 = getelementptr [5 x i8], [5 x i8]* %v16.i, i64 0, i64 3
  %612 = load i8, i8* %scevgep217.3, align 1
  %conv.i.i.i421.i.3 = zext i8 %612 to i32
  %conv1.i.i.i422.i.3 = zext i8 %conv2.i.i.i424.i.2 to i32
  %xor.i.i.i423.i.3 = xor i32 %conv1.i.i.i422.i.3, %conv.i.i.i421.i.3
  %conv2.i.i.i424.i.3 = trunc i32 %xor.i.i.i423.i.3 to i8
  %scevgep217.4 = getelementptr [5 x i8], [5 x i8]* %v16.i, i64 0, i64 4
  %613 = load i8, i8* %scevgep217.4, align 1
  %conv.i.i.i421.i.4 = zext i8 %613 to i32
  %conv1.i.i.i422.i.4 = zext i8 %conv2.i.i.i424.i.3 to i32
  %xor.i.i.i423.i.4 = xor i32 %conv1.i.i.i422.i.4, %conv.i.i.i421.i.4
  %conv2.i.i.i424.i.4 = trunc i32 %xor.i.i.i423.i.4 to i8
  %conv3.i427.i = zext i8 %conv2.i.i.i424.i.4 to i32
  %cmp.i428.i = icmp eq i32 %conv.i415.i, %conv3.i427.i
  call void @assume(i1 zeroext %cmp.i428.i) #3
  %conv5.i429.i = zext i8 %call1.i414.i to i32
  %scevgep213 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 0
  %614 = load i8, i8* %scevgep213, align 1
  %scevgep213.1 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 1
  %615 = load i8, i8* %scevgep213.1, align 1
  %conv.i.i155.i436.i.1 = zext i8 %615 to i32
  %conv1.i.i156.i437.i.1 = zext i8 %614 to i32
  %xor.i.i157.i438.i.1 = xor i32 %conv1.i.i156.i437.i.1, %conv.i.i155.i436.i.1
  %conv2.i.i158.i439.i.1 = trunc i32 %xor.i.i157.i438.i.1 to i8
  %scevgep213.2 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 2
  %616 = load i8, i8* %scevgep213.2, align 1
  %conv.i.i155.i436.i.2 = zext i8 %616 to i32
  %conv1.i.i156.i437.i.2 = zext i8 %conv2.i.i158.i439.i.1 to i32
  %xor.i.i157.i438.i.2 = xor i32 %conv1.i.i156.i437.i.2, %conv.i.i155.i436.i.2
  %conv2.i.i158.i439.i.2 = trunc i32 %xor.i.i157.i438.i.2 to i8
  %scevgep213.3 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 3
  %617 = load i8, i8* %scevgep213.3, align 1
  %conv.i.i155.i436.i.3 = zext i8 %617 to i32
  %conv1.i.i156.i437.i.3 = zext i8 %conv2.i.i158.i439.i.2 to i32
  %xor.i.i157.i438.i.3 = xor i32 %conv1.i.i156.i437.i.3, %conv.i.i155.i436.i.3
  %conv2.i.i158.i439.i.3 = trunc i32 %xor.i.i157.i438.i.3 to i8
  %scevgep213.4 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 4
  %618 = load i8, i8* %scevgep213.4, align 1
  %conv.i.i155.i436.i.4 = zext i8 %618 to i32
  %conv1.i.i156.i437.i.4 = zext i8 %conv2.i.i158.i439.i.3 to i32
  %xor.i.i157.i438.i.4 = xor i32 %conv1.i.i156.i437.i.4, %conv.i.i155.i436.i.4
  %conv2.i.i158.i439.i.4 = trunc i32 %xor.i.i157.i438.i.4 to i8
  %conv7.i442.i = zext i8 %conv2.i.i158.i439.i.4 to i32
  %cmp8.i443.i = icmp eq i32 %conv5.i429.i, %conv7.i442.i
  call void @assume(i1 zeroext %cmp8.i443.i) #3
  %scevgep197 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %scevgep197198 = bitcast i8* %scevgep197 to [5 x [5 x i8]]*
  %scevgep204 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %scevgep204205 = bitcast i8* %scevgep204 to [5 x [5 x i8]]*
  %call16.i451.i = call zeroext i8 (...) @rand() #3
  store i8 %call16.i451.i, i8* %scevgep197, align 1
  %619 = load i8, i8* %scevgep197, align 1
  store i8 %619, i8* %scevgep204, align 1
  %scevgep202 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep197198, i64 0, i64 0, i64 1
  %620 = bitcast i8* %scevgep202 to [5 x [5 x i8]]*
  %scevgep209 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep204205, i64 0, i64 1, i64 0
  %621 = bitcast i8* %scevgep209 to [5 x [5 x i8]]*
  %call16.i451.i.1991 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i451.i.1991, i8* %scevgep202, align 1
  %622 = load i8, i8* %scevgep202, align 1
  store i8 %622, i8* %scevgep209, align 1
  %scevgep202.1992 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %620, i64 0, i64 0, i64 1
  %623 = bitcast i8* %scevgep202.1992 to [5 x [5 x i8]]*
  %scevgep209.1993 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %621, i64 0, i64 1, i64 0
  %624 = bitcast i8* %scevgep209.1993 to [5 x [5 x i8]]*
  %call16.i451.i.2995 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i451.i.2995, i8* %scevgep202.1992, align 1
  %625 = load i8, i8* %scevgep202.1992, align 1
  store i8 %625, i8* %scevgep209.1993, align 1
  %scevgep202.2996 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %623, i64 0, i64 0, i64 1
  %scevgep209.2997 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %624, i64 0, i64 1, i64 0
  %call16.i451.i.3999 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i451.i.3999, i8* %scevgep202.2996, align 1
  %626 = load i8, i8* %scevgep202.2996, align 1
  store i8 %626, i8* %scevgep209.2997, align 1
  %scevgep200 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep197198, i64 0, i64 1, i64 1
  %627 = bitcast i8* %scevgep200 to [5 x [5 x i8]]*
  %scevgep207 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep204205, i64 0, i64 1, i64 1
  %628 = bitcast i8* %scevgep207 to [5 x [5 x i8]]*
  %call16.i451.i.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i451.i.1, i8* %scevgep200, align 1
  %629 = load i8, i8* %scevgep200, align 1
  store i8 %629, i8* %scevgep207, align 1
  %scevgep202.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %627, i64 0, i64 0, i64 1
  %630 = bitcast i8* %scevgep202.1 to [5 x [5 x i8]]*
  %scevgep209.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %628, i64 0, i64 1, i64 0
  %631 = bitcast i8* %scevgep209.1 to [5 x [5 x i8]]*
  %call16.i451.i.1.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i451.i.1.1, i8* %scevgep202.1, align 1
  %632 = load i8, i8* %scevgep202.1, align 1
  store i8 %632, i8* %scevgep209.1, align 1
  %scevgep202.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %630, i64 0, i64 0, i64 1
  %scevgep209.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %631, i64 0, i64 1, i64 0
  %call16.i451.i.1.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i451.i.1.2, i8* %scevgep202.1.1, align 1
  %633 = load i8, i8* %scevgep202.1.1, align 1
  store i8 %633, i8* %scevgep209.1.1, align 1
  %scevgep200.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %627, i64 0, i64 1, i64 1
  %634 = bitcast i8* %scevgep200.1 to [5 x [5 x i8]]*
  %scevgep207.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %628, i64 0, i64 1, i64 1
  %635 = bitcast i8* %scevgep207.1 to [5 x [5 x i8]]*
  %call16.i451.i.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i451.i.2, i8* %scevgep200.1, align 1
  %636 = load i8, i8* %scevgep200.1, align 1
  store i8 %636, i8* %scevgep207.1, align 1
  %scevgep202.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %634, i64 0, i64 0, i64 1
  %scevgep209.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %635, i64 0, i64 1, i64 0
  %call16.i451.i.2.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i451.i.2.1, i8* %scevgep202.2, align 1
  %637 = load i8, i8* %scevgep202.2, align 1
  store i8 %637, i8* %scevgep209.2, align 1
  %scevgep200.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %634, i64 0, i64 1, i64 1
  %scevgep207.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %635, i64 0, i64 1, i64 1
  %call16.i451.i.3 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i451.i.3, i8* %scevgep200.2, align 1
  %638 = load i8, i8* %scevgep200.2, align 1
  store i8 %638, i8* %scevgep207.2, align 1
  %scevgep174.1 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 1
  %639 = load i8, i8* %scevgep174.1, align 1
  %conv44.i478.i.1 = zext i8 %639 to i32
  %scevgep177.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %640 = load i8, i8* %scevgep177.1, align 1
  %conv49.i483.i.1 = zext i8 %640 to i32
  %xor.i484.i.1 = xor i32 %conv44.i478.i.1, %conv49.i483.i.1
  %conv50.i485.i.1 = trunc i32 %xor.i484.i.1 to i8
  %scevgep181.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  store i8 %conv50.i485.i.1, i8* %scevgep181.1, align 1
  %641 = load i8, i8* %arraydecay17.i, align 1
  %conv57.i492.i.1 = zext i8 %641 to i32
  %xor58.i493.i.1 = xor i32 %conv57.i492.i.1, 1
  %conv59.i494.i.1 = trunc i32 %xor58.i493.i.1 to i8
  %scevgep178.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %642 = load i8, i8* %scevgep178.1, align 1
  %call64.i499.i.1 = call zeroext i8 @mult(i8 zeroext %conv59.i494.i.1, i8 zeroext %642) #3
  %scevgep185.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  store i8 %call64.i499.i.1, i8* %scevgep185.1, align 1
  %643 = load i8, i8* %arraydecay17.i, align 1
  %scevgep182.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  %644 = load i8, i8* %scevgep182.1, align 1
  %call75.i510.i.1 = call zeroext i8 @mult(i8 zeroext %643, i8 zeroext %644) #3
  %scevgep189.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  store i8 %call75.i510.i.1, i8* %scevgep189.1, align 1
  %scevgep186.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  %645 = load i8, i8* %scevgep186.1, align 1
  %conv84.i519.i.1 = zext i8 %645 to i32
  %scevgep190.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  %646 = load i8, i8* %scevgep190.1, align 1
  %conv89.i524.i.1 = zext i8 %646 to i32
  %xor90.i525.i.1 = xor i32 %conv84.i519.i.1, %conv89.i524.i.1
  %conv91.i526.i.1 = trunc i32 %xor90.i525.i.1 to i8
  %scevgep193.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  store i8 %conv91.i526.i.1, i8* %scevgep193.1, align 1
  %scevgep174.2 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 2
  %647 = load i8, i8* %scevgep174.2, align 1
  %conv44.i478.i.2 = zext i8 %647 to i32
  %scevgep177.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %648 = load i8, i8* %scevgep177.2, align 1
  %conv49.i483.i.2 = zext i8 %648 to i32
  %xor.i484.i.2 = xor i32 %conv44.i478.i.2, %conv49.i483.i.2
  %conv50.i485.i.2 = trunc i32 %xor.i484.i.2 to i8
  %scevgep181.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i.i, i64 0, i64 0, i64 2
  store i8 %conv50.i485.i.2, i8* %scevgep181.2, align 1
  %649 = load i8, i8* %arraydecay17.i, align 1
  %conv57.i492.i.2 = zext i8 %649 to i32
  %xor58.i493.i.2 = xor i32 %conv57.i492.i.2, 1
  %conv59.i494.i.2 = trunc i32 %xor58.i493.i.2 to i8
  %scevgep178.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %650 = load i8, i8* %scevgep178.2, align 1
  %call64.i499.i.2 = call zeroext i8 @mult(i8 zeroext %conv59.i494.i.2, i8 zeroext %650) #3
  %scevgep185.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i.i, i64 0, i64 0, i64 2
  store i8 %call64.i499.i.2, i8* %scevgep185.2, align 1
  %651 = load i8, i8* %arraydecay17.i, align 1
  %scevgep182.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i.i, i64 0, i64 0, i64 2
  %652 = load i8, i8* %scevgep182.2, align 1
  %call75.i510.i.2 = call zeroext i8 @mult(i8 zeroext %651, i8 zeroext %652) #3
  %scevgep189.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i.i, i64 0, i64 0, i64 2
  store i8 %call75.i510.i.2, i8* %scevgep189.2, align 1
  %scevgep186.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i.i, i64 0, i64 0, i64 2
  %653 = load i8, i8* %scevgep186.2, align 1
  %conv84.i519.i.2 = zext i8 %653 to i32
  %scevgep190.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i.i, i64 0, i64 0, i64 2
  %654 = load i8, i8* %scevgep190.2, align 1
  %conv89.i524.i.2 = zext i8 %654 to i32
  %xor90.i525.i.2 = xor i32 %conv84.i519.i.2, %conv89.i524.i.2
  %conv91.i526.i.2 = trunc i32 %xor90.i525.i.2 to i8
  %scevgep193.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i.i, i64 0, i64 0, i64 2
  store i8 %conv91.i526.i.2, i8* %scevgep193.2, align 1
  %scevgep174.3 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 3
  %655 = load i8, i8* %scevgep174.3, align 1
  %conv44.i478.i.3 = zext i8 %655 to i32
  %scevgep177.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  %656 = load i8, i8* %scevgep177.3, align 1
  %conv49.i483.i.3 = zext i8 %656 to i32
  %xor.i484.i.3 = xor i32 %conv44.i478.i.3, %conv49.i483.i.3
  %conv50.i485.i.3 = trunc i32 %xor.i484.i.3 to i8
  %scevgep181.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i.i, i64 0, i64 0, i64 3
  store i8 %conv50.i485.i.3, i8* %scevgep181.3, align 1
  %657 = load i8, i8* %arraydecay17.i, align 1
  %conv57.i492.i.3 = zext i8 %657 to i32
  %xor58.i493.i.3 = xor i32 %conv57.i492.i.3, 1
  %conv59.i494.i.3 = trunc i32 %xor58.i493.i.3 to i8
  %scevgep178.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  %658 = load i8, i8* %scevgep178.3, align 1
  %call64.i499.i.3 = call zeroext i8 @mult(i8 zeroext %conv59.i494.i.3, i8 zeroext %658) #3
  %scevgep185.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i.i, i64 0, i64 0, i64 3
  store i8 %call64.i499.i.3, i8* %scevgep185.3, align 1
  %659 = load i8, i8* %arraydecay17.i, align 1
  %scevgep182.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i.i, i64 0, i64 0, i64 3
  %660 = load i8, i8* %scevgep182.3, align 1
  %call75.i510.i.3 = call zeroext i8 @mult(i8 zeroext %659, i8 zeroext %660) #3
  %scevgep189.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i.i, i64 0, i64 0, i64 3
  store i8 %call75.i510.i.3, i8* %scevgep189.3, align 1
  %scevgep186.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i.i, i64 0, i64 0, i64 3
  %661 = load i8, i8* %scevgep186.3, align 1
  %conv84.i519.i.3 = zext i8 %661 to i32
  %scevgep190.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i.i, i64 0, i64 0, i64 3
  %662 = load i8, i8* %scevgep190.3, align 1
  %conv89.i524.i.3 = zext i8 %662 to i32
  %xor90.i525.i.3 = xor i32 %conv84.i519.i.3, %conv89.i524.i.3
  %conv91.i526.i.3 = trunc i32 %xor90.i525.i.3 to i8
  %scevgep193.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i.i, i64 0, i64 0, i64 3
  store i8 %conv91.i526.i.3, i8* %scevgep193.3, align 1
  %scevgep174.4 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 4
  %663 = load i8, i8* %scevgep174.4, align 1
  %conv44.i478.i.4 = zext i8 %663 to i32
  %scevgep177.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 4
  %664 = load i8, i8* %scevgep177.4, align 1
  %conv49.i483.i.4 = zext i8 %664 to i32
  %xor.i484.i.4 = xor i32 %conv44.i478.i.4, %conv49.i483.i.4
  %conv50.i485.i.4 = trunc i32 %xor.i484.i.4 to i8
  %scevgep181.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i.i, i64 0, i64 0, i64 4
  store i8 %conv50.i485.i.4, i8* %scevgep181.4, align 1
  %665 = load i8, i8* %arraydecay17.i, align 1
  %conv57.i492.i.4 = zext i8 %665 to i32
  %xor58.i493.i.4 = xor i32 %conv57.i492.i.4, 1
  %conv59.i494.i.4 = trunc i32 %xor58.i493.i.4 to i8
  %scevgep178.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 4
  %666 = load i8, i8* %scevgep178.4, align 1
  %call64.i499.i.4 = call zeroext i8 @mult(i8 zeroext %conv59.i494.i.4, i8 zeroext %666) #3
  %scevgep185.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i.i, i64 0, i64 0, i64 4
  store i8 %call64.i499.i.4, i8* %scevgep185.4, align 1
  %667 = load i8, i8* %arraydecay17.i, align 1
  %scevgep182.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i.i, i64 0, i64 0, i64 4
  %668 = load i8, i8* %scevgep182.4, align 1
  %call75.i510.i.4 = call zeroext i8 @mult(i8 zeroext %667, i8 zeroext %668) #3
  %scevgep189.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i.i, i64 0, i64 0, i64 4
  store i8 %call75.i510.i.4, i8* %scevgep189.4, align 1
  %scevgep186.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i.i, i64 0, i64 0, i64 4
  %669 = load i8, i8* %scevgep186.4, align 1
  %conv84.i519.i.4 = zext i8 %669 to i32
  %scevgep190.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i.i, i64 0, i64 0, i64 4
  %670 = load i8, i8* %scevgep190.4, align 1
  %conv89.i524.i.4 = zext i8 %670 to i32
  %xor90.i525.i.4 = xor i32 %conv84.i519.i.4, %conv89.i524.i.4
  %conv91.i526.i.4 = trunc i32 %xor90.i525.i.4 to i8
  %scevgep193.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i.i, i64 0, i64 0, i64 4
  store i8 %conv91.i526.i.4, i8* %scevgep193.4, align 1
  %scevgep176 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %671 = bitcast i8* %scevgep176 to [5 x [5 x i8]]*
  %scevgep180 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i.i, i64 0, i64 1, i64 0
  %672 = bitcast i8* %scevgep180 to [5 x [5 x i8]]*
  %scevgep184 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i.i, i64 0, i64 1, i64 0
  %673 = bitcast i8* %scevgep184 to [5 x [5 x i8]]*
  %scevgep188 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i.i, i64 0, i64 1, i64 0
  %674 = bitcast i8* %scevgep188 to [5 x [5 x i8]]*
  %scevgep192 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %675 = bitcast i8* %scevgep192 to [5 x [5 x i8]]*
  %arrayidx56.i491.i.1 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 1
  %arrayidx70.i505.i.1 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 1
  %scevgep174.1592 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 0
  %676 = load i8, i8* %scevgep174.1592, align 1
  %conv44.i478.i.1593 = zext i8 %676 to i32
  %scevgep177.1594 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %671, i64 0, i64 0, i64 0
  %677 = load i8, i8* %scevgep177.1594, align 1
  %conv49.i483.i.1595 = zext i8 %677 to i32
  %xor.i484.i.1596 = xor i32 %conv44.i478.i.1593, %conv49.i483.i.1595
  %conv50.i485.i.1597 = trunc i32 %xor.i484.i.1596 to i8
  %scevgep181.1598 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %672, i64 0, i64 0, i64 0
  store i8 %conv50.i485.i.1597, i8* %scevgep181.1598, align 1
  %678 = load i8, i8* %arrayidx56.i491.i.1, align 1
  %conv57.i492.i.1599 = zext i8 %678 to i32
  %xor58.i493.i.1600 = xor i32 %conv57.i492.i.1599, 1
  %conv59.i494.i.1601 = trunc i32 %xor58.i493.i.1600 to i8
  %scevgep178.1602 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %671, i64 0, i64 0, i64 0
  %679 = load i8, i8* %scevgep178.1602, align 1
  %call64.i499.i.1603 = call zeroext i8 @mult(i8 zeroext %conv59.i494.i.1601, i8 zeroext %679) #3
  %scevgep185.1604 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %673, i64 0, i64 0, i64 0
  store i8 %call64.i499.i.1603, i8* %scevgep185.1604, align 1
  %680 = load i8, i8* %arrayidx70.i505.i.1, align 1
  %scevgep182.1605 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %672, i64 0, i64 0, i64 0
  %681 = load i8, i8* %scevgep182.1605, align 1
  %call75.i510.i.1606 = call zeroext i8 @mult(i8 zeroext %680, i8 zeroext %681) #3
  %scevgep189.1607 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %674, i64 0, i64 0, i64 0
  store i8 %call75.i510.i.1606, i8* %scevgep189.1607, align 1
  %scevgep186.1608 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %673, i64 0, i64 0, i64 0
  %682 = load i8, i8* %scevgep186.1608, align 1
  %conv84.i519.i.1609 = zext i8 %682 to i32
  %scevgep190.1610 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %674, i64 0, i64 0, i64 0
  %683 = load i8, i8* %scevgep190.1610, align 1
  %conv89.i524.i.1611 = zext i8 %683 to i32
  %xor90.i525.i.1612 = xor i32 %conv84.i519.i.1609, %conv89.i524.i.1611
  %conv91.i526.i.1613 = trunc i32 %xor90.i525.i.1612 to i8
  %scevgep193.1614 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %675, i64 0, i64 0, i64 0
  store i8 %conv91.i526.i.1613, i8* %scevgep193.1614, align 1
  %scevgep174.2.1 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 2
  %684 = load i8, i8* %scevgep174.2.1, align 1
  %conv44.i478.i.2.1 = zext i8 %684 to i32
  %scevgep177.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %671, i64 0, i64 0, i64 2
  %685 = load i8, i8* %scevgep177.2.1, align 1
  %conv49.i483.i.2.1 = zext i8 %685 to i32
  %xor.i484.i.2.1 = xor i32 %conv44.i478.i.2.1, %conv49.i483.i.2.1
  %conv50.i485.i.2.1 = trunc i32 %xor.i484.i.2.1 to i8
  %scevgep181.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %672, i64 0, i64 0, i64 2
  store i8 %conv50.i485.i.2.1, i8* %scevgep181.2.1, align 1
  %686 = load i8, i8* %arrayidx56.i491.i.1, align 1
  %conv57.i492.i.2.1 = zext i8 %686 to i32
  %xor58.i493.i.2.1 = xor i32 %conv57.i492.i.2.1, 1
  %conv59.i494.i.2.1 = trunc i32 %xor58.i493.i.2.1 to i8
  %scevgep178.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %671, i64 0, i64 0, i64 2
  %687 = load i8, i8* %scevgep178.2.1, align 1
  %call64.i499.i.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i494.i.2.1, i8 zeroext %687) #3
  %scevgep185.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %673, i64 0, i64 0, i64 2
  store i8 %call64.i499.i.2.1, i8* %scevgep185.2.1, align 1
  %688 = load i8, i8* %arrayidx70.i505.i.1, align 1
  %scevgep182.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %672, i64 0, i64 0, i64 2
  %689 = load i8, i8* %scevgep182.2.1, align 1
  %call75.i510.i.2.1 = call zeroext i8 @mult(i8 zeroext %688, i8 zeroext %689) #3
  %scevgep189.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %674, i64 0, i64 0, i64 2
  store i8 %call75.i510.i.2.1, i8* %scevgep189.2.1, align 1
  %scevgep186.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %673, i64 0, i64 0, i64 2
  %690 = load i8, i8* %scevgep186.2.1, align 1
  %conv84.i519.i.2.1 = zext i8 %690 to i32
  %scevgep190.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %674, i64 0, i64 0, i64 2
  %691 = load i8, i8* %scevgep190.2.1, align 1
  %conv89.i524.i.2.1 = zext i8 %691 to i32
  %xor90.i525.i.2.1 = xor i32 %conv84.i519.i.2.1, %conv89.i524.i.2.1
  %conv91.i526.i.2.1 = trunc i32 %xor90.i525.i.2.1 to i8
  %scevgep193.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %675, i64 0, i64 0, i64 2
  store i8 %conv91.i526.i.2.1, i8* %scevgep193.2.1, align 1
  %scevgep174.3.1 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 3
  %692 = load i8, i8* %scevgep174.3.1, align 1
  %conv44.i478.i.3.1 = zext i8 %692 to i32
  %scevgep177.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %671, i64 0, i64 0, i64 3
  %693 = load i8, i8* %scevgep177.3.1, align 1
  %conv49.i483.i.3.1 = zext i8 %693 to i32
  %xor.i484.i.3.1 = xor i32 %conv44.i478.i.3.1, %conv49.i483.i.3.1
  %conv50.i485.i.3.1 = trunc i32 %xor.i484.i.3.1 to i8
  %scevgep181.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %672, i64 0, i64 0, i64 3
  store i8 %conv50.i485.i.3.1, i8* %scevgep181.3.1, align 1
  %694 = load i8, i8* %arrayidx56.i491.i.1, align 1
  %conv57.i492.i.3.1 = zext i8 %694 to i32
  %xor58.i493.i.3.1 = xor i32 %conv57.i492.i.3.1, 1
  %conv59.i494.i.3.1 = trunc i32 %xor58.i493.i.3.1 to i8
  %scevgep178.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %671, i64 0, i64 0, i64 3
  %695 = load i8, i8* %scevgep178.3.1, align 1
  %call64.i499.i.3.1 = call zeroext i8 @mult(i8 zeroext %conv59.i494.i.3.1, i8 zeroext %695) #3
  %scevgep185.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %673, i64 0, i64 0, i64 3
  store i8 %call64.i499.i.3.1, i8* %scevgep185.3.1, align 1
  %696 = load i8, i8* %arrayidx70.i505.i.1, align 1
  %scevgep182.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %672, i64 0, i64 0, i64 3
  %697 = load i8, i8* %scevgep182.3.1, align 1
  %call75.i510.i.3.1 = call zeroext i8 @mult(i8 zeroext %696, i8 zeroext %697) #3
  %scevgep189.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %674, i64 0, i64 0, i64 3
  store i8 %call75.i510.i.3.1, i8* %scevgep189.3.1, align 1
  %scevgep186.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %673, i64 0, i64 0, i64 3
  %698 = load i8, i8* %scevgep186.3.1, align 1
  %conv84.i519.i.3.1 = zext i8 %698 to i32
  %scevgep190.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %674, i64 0, i64 0, i64 3
  %699 = load i8, i8* %scevgep190.3.1, align 1
  %conv89.i524.i.3.1 = zext i8 %699 to i32
  %xor90.i525.i.3.1 = xor i32 %conv84.i519.i.3.1, %conv89.i524.i.3.1
  %conv91.i526.i.3.1 = trunc i32 %xor90.i525.i.3.1 to i8
  %scevgep193.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %675, i64 0, i64 0, i64 3
  store i8 %conv91.i526.i.3.1, i8* %scevgep193.3.1, align 1
  %scevgep174.4.1 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 4
  %700 = load i8, i8* %scevgep174.4.1, align 1
  %conv44.i478.i.4.1 = zext i8 %700 to i32
  %scevgep177.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %671, i64 0, i64 0, i64 4
  %701 = load i8, i8* %scevgep177.4.1, align 1
  %conv49.i483.i.4.1 = zext i8 %701 to i32
  %xor.i484.i.4.1 = xor i32 %conv44.i478.i.4.1, %conv49.i483.i.4.1
  %conv50.i485.i.4.1 = trunc i32 %xor.i484.i.4.1 to i8
  %scevgep181.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %672, i64 0, i64 0, i64 4
  store i8 %conv50.i485.i.4.1, i8* %scevgep181.4.1, align 1
  %702 = load i8, i8* %arrayidx56.i491.i.1, align 1
  %conv57.i492.i.4.1 = zext i8 %702 to i32
  %xor58.i493.i.4.1 = xor i32 %conv57.i492.i.4.1, 1
  %conv59.i494.i.4.1 = trunc i32 %xor58.i493.i.4.1 to i8
  %scevgep178.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %671, i64 0, i64 0, i64 4
  %703 = load i8, i8* %scevgep178.4.1, align 1
  %call64.i499.i.4.1 = call zeroext i8 @mult(i8 zeroext %conv59.i494.i.4.1, i8 zeroext %703) #3
  %scevgep185.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %673, i64 0, i64 0, i64 4
  store i8 %call64.i499.i.4.1, i8* %scevgep185.4.1, align 1
  %704 = load i8, i8* %arrayidx70.i505.i.1, align 1
  %scevgep182.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %672, i64 0, i64 0, i64 4
  %705 = load i8, i8* %scevgep182.4.1, align 1
  %call75.i510.i.4.1 = call zeroext i8 @mult(i8 zeroext %704, i8 zeroext %705) #3
  %scevgep189.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %674, i64 0, i64 0, i64 4
  store i8 %call75.i510.i.4.1, i8* %scevgep189.4.1, align 1
  %scevgep186.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %673, i64 0, i64 0, i64 4
  %706 = load i8, i8* %scevgep186.4.1, align 1
  %conv84.i519.i.4.1 = zext i8 %706 to i32
  %scevgep190.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %674, i64 0, i64 0, i64 4
  %707 = load i8, i8* %scevgep190.4.1, align 1
  %conv89.i524.i.4.1 = zext i8 %707 to i32
  %xor90.i525.i.4.1 = xor i32 %conv84.i519.i.4.1, %conv89.i524.i.4.1
  %conv91.i526.i.4.1 = trunc i32 %xor90.i525.i.4.1 to i8
  %scevgep193.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %675, i64 0, i64 0, i64 4
  store i8 %conv91.i526.i.4.1, i8* %scevgep193.4.1, align 1
  %scevgep176.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %671, i64 0, i64 1, i64 0
  %708 = bitcast i8* %scevgep176.1 to [5 x [5 x i8]]*
  %scevgep180.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %672, i64 0, i64 1, i64 0
  %709 = bitcast i8* %scevgep180.1 to [5 x [5 x i8]]*
  %scevgep184.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %673, i64 0, i64 1, i64 0
  %710 = bitcast i8* %scevgep184.1 to [5 x [5 x i8]]*
  %scevgep188.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %674, i64 0, i64 1, i64 0
  %711 = bitcast i8* %scevgep188.1 to [5 x [5 x i8]]*
  %scevgep192.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %675, i64 0, i64 1, i64 0
  %712 = bitcast i8* %scevgep192.1 to [5 x [5 x i8]]*
  %arrayidx56.i491.i.2 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 2
  %arrayidx70.i505.i.2 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 2
  %scevgep174.2619 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 0
  %713 = load i8, i8* %scevgep174.2619, align 1
  %conv44.i478.i.2620 = zext i8 %713 to i32
  %scevgep177.2621 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %708, i64 0, i64 0, i64 0
  %714 = load i8, i8* %scevgep177.2621, align 1
  %conv49.i483.i.2622 = zext i8 %714 to i32
  %xor.i484.i.2623 = xor i32 %conv44.i478.i.2620, %conv49.i483.i.2622
  %conv50.i485.i.2624 = trunc i32 %xor.i484.i.2623 to i8
  %scevgep181.2625 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %709, i64 0, i64 0, i64 0
  store i8 %conv50.i485.i.2624, i8* %scevgep181.2625, align 1
  %715 = load i8, i8* %arrayidx56.i491.i.2, align 1
  %conv57.i492.i.2626 = zext i8 %715 to i32
  %xor58.i493.i.2627 = xor i32 %conv57.i492.i.2626, 1
  %conv59.i494.i.2628 = trunc i32 %xor58.i493.i.2627 to i8
  %scevgep178.2629 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %708, i64 0, i64 0, i64 0
  %716 = load i8, i8* %scevgep178.2629, align 1
  %call64.i499.i.2630 = call zeroext i8 @mult(i8 zeroext %conv59.i494.i.2628, i8 zeroext %716) #3
  %scevgep185.2631 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %710, i64 0, i64 0, i64 0
  store i8 %call64.i499.i.2630, i8* %scevgep185.2631, align 1
  %717 = load i8, i8* %arrayidx70.i505.i.2, align 1
  %scevgep182.2632 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %709, i64 0, i64 0, i64 0
  %718 = load i8, i8* %scevgep182.2632, align 1
  %call75.i510.i.2633 = call zeroext i8 @mult(i8 zeroext %717, i8 zeroext %718) #3
  %scevgep189.2634 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %711, i64 0, i64 0, i64 0
  store i8 %call75.i510.i.2633, i8* %scevgep189.2634, align 1
  %scevgep186.2635 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %710, i64 0, i64 0, i64 0
  %719 = load i8, i8* %scevgep186.2635, align 1
  %conv84.i519.i.2636 = zext i8 %719 to i32
  %scevgep190.2637 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %711, i64 0, i64 0, i64 0
  %720 = load i8, i8* %scevgep190.2637, align 1
  %conv89.i524.i.2638 = zext i8 %720 to i32
  %xor90.i525.i.2639 = xor i32 %conv84.i519.i.2636, %conv89.i524.i.2638
  %conv91.i526.i.2640 = trunc i32 %xor90.i525.i.2639 to i8
  %scevgep193.2641 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %712, i64 0, i64 0, i64 0
  store i8 %conv91.i526.i.2640, i8* %scevgep193.2641, align 1
  %scevgep174.1.2 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 1
  %721 = load i8, i8* %scevgep174.1.2, align 1
  %conv44.i478.i.1.2 = zext i8 %721 to i32
  %scevgep177.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %708, i64 0, i64 0, i64 1
  %722 = load i8, i8* %scevgep177.1.2, align 1
  %conv49.i483.i.1.2 = zext i8 %722 to i32
  %xor.i484.i.1.2 = xor i32 %conv44.i478.i.1.2, %conv49.i483.i.1.2
  %conv50.i485.i.1.2 = trunc i32 %xor.i484.i.1.2 to i8
  %scevgep181.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %709, i64 0, i64 0, i64 1
  store i8 %conv50.i485.i.1.2, i8* %scevgep181.1.2, align 1
  %723 = load i8, i8* %arrayidx56.i491.i.2, align 1
  %conv57.i492.i.1.2 = zext i8 %723 to i32
  %xor58.i493.i.1.2 = xor i32 %conv57.i492.i.1.2, 1
  %conv59.i494.i.1.2 = trunc i32 %xor58.i493.i.1.2 to i8
  %scevgep178.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %708, i64 0, i64 0, i64 1
  %724 = load i8, i8* %scevgep178.1.2, align 1
  %call64.i499.i.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i494.i.1.2, i8 zeroext %724) #3
  %scevgep185.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %710, i64 0, i64 0, i64 1
  store i8 %call64.i499.i.1.2, i8* %scevgep185.1.2, align 1
  %725 = load i8, i8* %arrayidx70.i505.i.2, align 1
  %scevgep182.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %709, i64 0, i64 0, i64 1
  %726 = load i8, i8* %scevgep182.1.2, align 1
  %call75.i510.i.1.2 = call zeroext i8 @mult(i8 zeroext %725, i8 zeroext %726) #3
  %scevgep189.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %711, i64 0, i64 0, i64 1
  store i8 %call75.i510.i.1.2, i8* %scevgep189.1.2, align 1
  %scevgep186.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %710, i64 0, i64 0, i64 1
  %727 = load i8, i8* %scevgep186.1.2, align 1
  %conv84.i519.i.1.2 = zext i8 %727 to i32
  %scevgep190.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %711, i64 0, i64 0, i64 1
  %728 = load i8, i8* %scevgep190.1.2, align 1
  %conv89.i524.i.1.2 = zext i8 %728 to i32
  %xor90.i525.i.1.2 = xor i32 %conv84.i519.i.1.2, %conv89.i524.i.1.2
  %conv91.i526.i.1.2 = trunc i32 %xor90.i525.i.1.2 to i8
  %scevgep193.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %712, i64 0, i64 0, i64 1
  store i8 %conv91.i526.i.1.2, i8* %scevgep193.1.2, align 1
  %scevgep174.3.2 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 3
  %729 = load i8, i8* %scevgep174.3.2, align 1
  %conv44.i478.i.3.2 = zext i8 %729 to i32
  %scevgep177.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %708, i64 0, i64 0, i64 3
  %730 = load i8, i8* %scevgep177.3.2, align 1
  %conv49.i483.i.3.2 = zext i8 %730 to i32
  %xor.i484.i.3.2 = xor i32 %conv44.i478.i.3.2, %conv49.i483.i.3.2
  %conv50.i485.i.3.2 = trunc i32 %xor.i484.i.3.2 to i8
  %scevgep181.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %709, i64 0, i64 0, i64 3
  store i8 %conv50.i485.i.3.2, i8* %scevgep181.3.2, align 1
  %731 = load i8, i8* %arrayidx56.i491.i.2, align 1
  %conv57.i492.i.3.2 = zext i8 %731 to i32
  %xor58.i493.i.3.2 = xor i32 %conv57.i492.i.3.2, 1
  %conv59.i494.i.3.2 = trunc i32 %xor58.i493.i.3.2 to i8
  %scevgep178.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %708, i64 0, i64 0, i64 3
  %732 = load i8, i8* %scevgep178.3.2, align 1
  %call64.i499.i.3.2 = call zeroext i8 @mult(i8 zeroext %conv59.i494.i.3.2, i8 zeroext %732) #3
  %scevgep185.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %710, i64 0, i64 0, i64 3
  store i8 %call64.i499.i.3.2, i8* %scevgep185.3.2, align 1
  %733 = load i8, i8* %arrayidx70.i505.i.2, align 1
  %scevgep182.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %709, i64 0, i64 0, i64 3
  %734 = load i8, i8* %scevgep182.3.2, align 1
  %call75.i510.i.3.2 = call zeroext i8 @mult(i8 zeroext %733, i8 zeroext %734) #3
  %scevgep189.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %711, i64 0, i64 0, i64 3
  store i8 %call75.i510.i.3.2, i8* %scevgep189.3.2, align 1
  %scevgep186.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %710, i64 0, i64 0, i64 3
  %735 = load i8, i8* %scevgep186.3.2, align 1
  %conv84.i519.i.3.2 = zext i8 %735 to i32
  %scevgep190.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %711, i64 0, i64 0, i64 3
  %736 = load i8, i8* %scevgep190.3.2, align 1
  %conv89.i524.i.3.2 = zext i8 %736 to i32
  %xor90.i525.i.3.2 = xor i32 %conv84.i519.i.3.2, %conv89.i524.i.3.2
  %conv91.i526.i.3.2 = trunc i32 %xor90.i525.i.3.2 to i8
  %scevgep193.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %712, i64 0, i64 0, i64 3
  store i8 %conv91.i526.i.3.2, i8* %scevgep193.3.2, align 1
  %scevgep174.4.2 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 4
  %737 = load i8, i8* %scevgep174.4.2, align 1
  %conv44.i478.i.4.2 = zext i8 %737 to i32
  %scevgep177.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %708, i64 0, i64 0, i64 4
  %738 = load i8, i8* %scevgep177.4.2, align 1
  %conv49.i483.i.4.2 = zext i8 %738 to i32
  %xor.i484.i.4.2 = xor i32 %conv44.i478.i.4.2, %conv49.i483.i.4.2
  %conv50.i485.i.4.2 = trunc i32 %xor.i484.i.4.2 to i8
  %scevgep181.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %709, i64 0, i64 0, i64 4
  store i8 %conv50.i485.i.4.2, i8* %scevgep181.4.2, align 1
  %739 = load i8, i8* %arrayidx56.i491.i.2, align 1
  %conv57.i492.i.4.2 = zext i8 %739 to i32
  %xor58.i493.i.4.2 = xor i32 %conv57.i492.i.4.2, 1
  %conv59.i494.i.4.2 = trunc i32 %xor58.i493.i.4.2 to i8
  %scevgep178.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %708, i64 0, i64 0, i64 4
  %740 = load i8, i8* %scevgep178.4.2, align 1
  %call64.i499.i.4.2 = call zeroext i8 @mult(i8 zeroext %conv59.i494.i.4.2, i8 zeroext %740) #3
  %scevgep185.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %710, i64 0, i64 0, i64 4
  store i8 %call64.i499.i.4.2, i8* %scevgep185.4.2, align 1
  %741 = load i8, i8* %arrayidx70.i505.i.2, align 1
  %scevgep182.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %709, i64 0, i64 0, i64 4
  %742 = load i8, i8* %scevgep182.4.2, align 1
  %call75.i510.i.4.2 = call zeroext i8 @mult(i8 zeroext %741, i8 zeroext %742) #3
  %scevgep189.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %711, i64 0, i64 0, i64 4
  store i8 %call75.i510.i.4.2, i8* %scevgep189.4.2, align 1
  %scevgep186.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %710, i64 0, i64 0, i64 4
  %743 = load i8, i8* %scevgep186.4.2, align 1
  %conv84.i519.i.4.2 = zext i8 %743 to i32
  %scevgep190.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %711, i64 0, i64 0, i64 4
  %744 = load i8, i8* %scevgep190.4.2, align 1
  %conv89.i524.i.4.2 = zext i8 %744 to i32
  %xor90.i525.i.4.2 = xor i32 %conv84.i519.i.4.2, %conv89.i524.i.4.2
  %conv91.i526.i.4.2 = trunc i32 %xor90.i525.i.4.2 to i8
  %scevgep193.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %712, i64 0, i64 0, i64 4
  store i8 %conv91.i526.i.4.2, i8* %scevgep193.4.2, align 1
  %scevgep176.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %708, i64 0, i64 1, i64 0
  %745 = bitcast i8* %scevgep176.2 to [5 x [5 x i8]]*
  %scevgep180.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %709, i64 0, i64 1, i64 0
  %746 = bitcast i8* %scevgep180.2 to [5 x [5 x i8]]*
  %scevgep184.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %710, i64 0, i64 1, i64 0
  %747 = bitcast i8* %scevgep184.2 to [5 x [5 x i8]]*
  %scevgep188.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %711, i64 0, i64 1, i64 0
  %748 = bitcast i8* %scevgep188.2 to [5 x [5 x i8]]*
  %scevgep192.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %712, i64 0, i64 1, i64 0
  %749 = bitcast i8* %scevgep192.2 to [5 x [5 x i8]]*
  %arrayidx56.i491.i.3 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 3
  %arrayidx70.i505.i.3 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 3
  %scevgep174.3646 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 0
  %750 = load i8, i8* %scevgep174.3646, align 1
  %conv44.i478.i.3647 = zext i8 %750 to i32
  %scevgep177.3648 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %745, i64 0, i64 0, i64 0
  %751 = load i8, i8* %scevgep177.3648, align 1
  %conv49.i483.i.3649 = zext i8 %751 to i32
  %xor.i484.i.3650 = xor i32 %conv44.i478.i.3647, %conv49.i483.i.3649
  %conv50.i485.i.3651 = trunc i32 %xor.i484.i.3650 to i8
  %scevgep181.3652 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %746, i64 0, i64 0, i64 0
  store i8 %conv50.i485.i.3651, i8* %scevgep181.3652, align 1
  %752 = load i8, i8* %arrayidx56.i491.i.3, align 1
  %conv57.i492.i.3653 = zext i8 %752 to i32
  %xor58.i493.i.3654 = xor i32 %conv57.i492.i.3653, 1
  %conv59.i494.i.3655 = trunc i32 %xor58.i493.i.3654 to i8
  %scevgep178.3656 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %745, i64 0, i64 0, i64 0
  %753 = load i8, i8* %scevgep178.3656, align 1
  %call64.i499.i.3657 = call zeroext i8 @mult(i8 zeroext %conv59.i494.i.3655, i8 zeroext %753) #3
  %scevgep185.3658 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %747, i64 0, i64 0, i64 0
  store i8 %call64.i499.i.3657, i8* %scevgep185.3658, align 1
  %754 = load i8, i8* %arrayidx70.i505.i.3, align 1
  %scevgep182.3659 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %746, i64 0, i64 0, i64 0
  %755 = load i8, i8* %scevgep182.3659, align 1
  %call75.i510.i.3660 = call zeroext i8 @mult(i8 zeroext %754, i8 zeroext %755) #3
  %scevgep189.3661 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %748, i64 0, i64 0, i64 0
  store i8 %call75.i510.i.3660, i8* %scevgep189.3661, align 1
  %scevgep186.3662 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %747, i64 0, i64 0, i64 0
  %756 = load i8, i8* %scevgep186.3662, align 1
  %conv84.i519.i.3663 = zext i8 %756 to i32
  %scevgep190.3664 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %748, i64 0, i64 0, i64 0
  %757 = load i8, i8* %scevgep190.3664, align 1
  %conv89.i524.i.3665 = zext i8 %757 to i32
  %xor90.i525.i.3666 = xor i32 %conv84.i519.i.3663, %conv89.i524.i.3665
  %conv91.i526.i.3667 = trunc i32 %xor90.i525.i.3666 to i8
  %scevgep193.3668 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %749, i64 0, i64 0, i64 0
  store i8 %conv91.i526.i.3667, i8* %scevgep193.3668, align 1
  %scevgep174.1.3 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 1
  %758 = load i8, i8* %scevgep174.1.3, align 1
  %conv44.i478.i.1.3 = zext i8 %758 to i32
  %scevgep177.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %745, i64 0, i64 0, i64 1
  %759 = load i8, i8* %scevgep177.1.3, align 1
  %conv49.i483.i.1.3 = zext i8 %759 to i32
  %xor.i484.i.1.3 = xor i32 %conv44.i478.i.1.3, %conv49.i483.i.1.3
  %conv50.i485.i.1.3 = trunc i32 %xor.i484.i.1.3 to i8
  %scevgep181.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %746, i64 0, i64 0, i64 1
  store i8 %conv50.i485.i.1.3, i8* %scevgep181.1.3, align 1
  %760 = load i8, i8* %arrayidx56.i491.i.3, align 1
  %conv57.i492.i.1.3 = zext i8 %760 to i32
  %xor58.i493.i.1.3 = xor i32 %conv57.i492.i.1.3, 1
  %conv59.i494.i.1.3 = trunc i32 %xor58.i493.i.1.3 to i8
  %scevgep178.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %745, i64 0, i64 0, i64 1
  %761 = load i8, i8* %scevgep178.1.3, align 1
  %call64.i499.i.1.3 = call zeroext i8 @mult(i8 zeroext %conv59.i494.i.1.3, i8 zeroext %761) #3
  %scevgep185.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %747, i64 0, i64 0, i64 1
  store i8 %call64.i499.i.1.3, i8* %scevgep185.1.3, align 1
  %762 = load i8, i8* %arrayidx70.i505.i.3, align 1
  %scevgep182.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %746, i64 0, i64 0, i64 1
  %763 = load i8, i8* %scevgep182.1.3, align 1
  %call75.i510.i.1.3 = call zeroext i8 @mult(i8 zeroext %762, i8 zeroext %763) #3
  %scevgep189.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %748, i64 0, i64 0, i64 1
  store i8 %call75.i510.i.1.3, i8* %scevgep189.1.3, align 1
  %scevgep186.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %747, i64 0, i64 0, i64 1
  %764 = load i8, i8* %scevgep186.1.3, align 1
  %conv84.i519.i.1.3 = zext i8 %764 to i32
  %scevgep190.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %748, i64 0, i64 0, i64 1
  %765 = load i8, i8* %scevgep190.1.3, align 1
  %conv89.i524.i.1.3 = zext i8 %765 to i32
  %xor90.i525.i.1.3 = xor i32 %conv84.i519.i.1.3, %conv89.i524.i.1.3
  %conv91.i526.i.1.3 = trunc i32 %xor90.i525.i.1.3 to i8
  %scevgep193.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %749, i64 0, i64 0, i64 1
  store i8 %conv91.i526.i.1.3, i8* %scevgep193.1.3, align 1
  %scevgep174.2.3 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 2
  %766 = load i8, i8* %scevgep174.2.3, align 1
  %conv44.i478.i.2.3 = zext i8 %766 to i32
  %scevgep177.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %745, i64 0, i64 0, i64 2
  %767 = load i8, i8* %scevgep177.2.3, align 1
  %conv49.i483.i.2.3 = zext i8 %767 to i32
  %xor.i484.i.2.3 = xor i32 %conv44.i478.i.2.3, %conv49.i483.i.2.3
  %conv50.i485.i.2.3 = trunc i32 %xor.i484.i.2.3 to i8
  %scevgep181.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %746, i64 0, i64 0, i64 2
  store i8 %conv50.i485.i.2.3, i8* %scevgep181.2.3, align 1
  %768 = load i8, i8* %arrayidx56.i491.i.3, align 1
  %conv57.i492.i.2.3 = zext i8 %768 to i32
  %xor58.i493.i.2.3 = xor i32 %conv57.i492.i.2.3, 1
  %conv59.i494.i.2.3 = trunc i32 %xor58.i493.i.2.3 to i8
  %scevgep178.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %745, i64 0, i64 0, i64 2
  %769 = load i8, i8* %scevgep178.2.3, align 1
  %call64.i499.i.2.3 = call zeroext i8 @mult(i8 zeroext %conv59.i494.i.2.3, i8 zeroext %769) #3
  %scevgep185.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %747, i64 0, i64 0, i64 2
  store i8 %call64.i499.i.2.3, i8* %scevgep185.2.3, align 1
  %770 = load i8, i8* %arrayidx70.i505.i.3, align 1
  %scevgep182.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %746, i64 0, i64 0, i64 2
  %771 = load i8, i8* %scevgep182.2.3, align 1
  %call75.i510.i.2.3 = call zeroext i8 @mult(i8 zeroext %770, i8 zeroext %771) #3
  %scevgep189.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %748, i64 0, i64 0, i64 2
  store i8 %call75.i510.i.2.3, i8* %scevgep189.2.3, align 1
  %scevgep186.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %747, i64 0, i64 0, i64 2
  %772 = load i8, i8* %scevgep186.2.3, align 1
  %conv84.i519.i.2.3 = zext i8 %772 to i32
  %scevgep190.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %748, i64 0, i64 0, i64 2
  %773 = load i8, i8* %scevgep190.2.3, align 1
  %conv89.i524.i.2.3 = zext i8 %773 to i32
  %xor90.i525.i.2.3 = xor i32 %conv84.i519.i.2.3, %conv89.i524.i.2.3
  %conv91.i526.i.2.3 = trunc i32 %xor90.i525.i.2.3 to i8
  %scevgep193.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %749, i64 0, i64 0, i64 2
  store i8 %conv91.i526.i.2.3, i8* %scevgep193.2.3, align 1
  %scevgep174.4.3 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 4
  %774 = load i8, i8* %scevgep174.4.3, align 1
  %conv44.i478.i.4.3 = zext i8 %774 to i32
  %scevgep177.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %745, i64 0, i64 0, i64 4
  %775 = load i8, i8* %scevgep177.4.3, align 1
  %conv49.i483.i.4.3 = zext i8 %775 to i32
  %xor.i484.i.4.3 = xor i32 %conv44.i478.i.4.3, %conv49.i483.i.4.3
  %conv50.i485.i.4.3 = trunc i32 %xor.i484.i.4.3 to i8
  %scevgep181.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %746, i64 0, i64 0, i64 4
  store i8 %conv50.i485.i.4.3, i8* %scevgep181.4.3, align 1
  %776 = load i8, i8* %arrayidx56.i491.i.3, align 1
  %conv57.i492.i.4.3 = zext i8 %776 to i32
  %xor58.i493.i.4.3 = xor i32 %conv57.i492.i.4.3, 1
  %conv59.i494.i.4.3 = trunc i32 %xor58.i493.i.4.3 to i8
  %scevgep178.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %745, i64 0, i64 0, i64 4
  %777 = load i8, i8* %scevgep178.4.3, align 1
  %call64.i499.i.4.3 = call zeroext i8 @mult(i8 zeroext %conv59.i494.i.4.3, i8 zeroext %777) #3
  %scevgep185.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %747, i64 0, i64 0, i64 4
  store i8 %call64.i499.i.4.3, i8* %scevgep185.4.3, align 1
  %778 = load i8, i8* %arrayidx70.i505.i.3, align 1
  %scevgep182.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %746, i64 0, i64 0, i64 4
  %779 = load i8, i8* %scevgep182.4.3, align 1
  %call75.i510.i.4.3 = call zeroext i8 @mult(i8 zeroext %778, i8 zeroext %779) #3
  %scevgep189.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %748, i64 0, i64 0, i64 4
  store i8 %call75.i510.i.4.3, i8* %scevgep189.4.3, align 1
  %scevgep186.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %747, i64 0, i64 0, i64 4
  %780 = load i8, i8* %scevgep186.4.3, align 1
  %conv84.i519.i.4.3 = zext i8 %780 to i32
  %scevgep190.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %748, i64 0, i64 0, i64 4
  %781 = load i8, i8* %scevgep190.4.3, align 1
  %conv89.i524.i.4.3 = zext i8 %781 to i32
  %xor90.i525.i.4.3 = xor i32 %conv84.i519.i.4.3, %conv89.i524.i.4.3
  %conv91.i526.i.4.3 = trunc i32 %xor90.i525.i.4.3 to i8
  %scevgep193.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %749, i64 0, i64 0, i64 4
  store i8 %conv91.i526.i.4.3, i8* %scevgep193.4.3, align 1
  %scevgep176.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %745, i64 0, i64 1, i64 0
  %782 = bitcast i8* %scevgep176.3 to [5 x [5 x i8]]*
  %scevgep180.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %746, i64 0, i64 1, i64 0
  %783 = bitcast i8* %scevgep180.3 to [5 x [5 x i8]]*
  %scevgep184.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %747, i64 0, i64 1, i64 0
  %784 = bitcast i8* %scevgep184.3 to [5 x [5 x i8]]*
  %scevgep188.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %748, i64 0, i64 1, i64 0
  %785 = bitcast i8* %scevgep188.3 to [5 x [5 x i8]]*
  %scevgep192.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %749, i64 0, i64 1, i64 0
  %786 = bitcast i8* %scevgep192.3 to [5 x [5 x i8]]*
  %arrayidx56.i491.i.4 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 4
  %arrayidx70.i505.i.4 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 4
  %scevgep174.4673 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 0
  %787 = load i8, i8* %scevgep174.4673, align 1
  %conv44.i478.i.4674 = zext i8 %787 to i32
  %scevgep177.4675 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %782, i64 0, i64 0, i64 0
  %788 = load i8, i8* %scevgep177.4675, align 1
  %conv49.i483.i.4676 = zext i8 %788 to i32
  %xor.i484.i.4677 = xor i32 %conv44.i478.i.4674, %conv49.i483.i.4676
  %conv50.i485.i.4678 = trunc i32 %xor.i484.i.4677 to i8
  %scevgep181.4679 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %783, i64 0, i64 0, i64 0
  store i8 %conv50.i485.i.4678, i8* %scevgep181.4679, align 1
  %789 = load i8, i8* %arrayidx56.i491.i.4, align 1
  %conv57.i492.i.4680 = zext i8 %789 to i32
  %xor58.i493.i.4681 = xor i32 %conv57.i492.i.4680, 1
  %conv59.i494.i.4682 = trunc i32 %xor58.i493.i.4681 to i8
  %scevgep178.4683 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %782, i64 0, i64 0, i64 0
  %790 = load i8, i8* %scevgep178.4683, align 1
  %call64.i499.i.4684 = call zeroext i8 @mult(i8 zeroext %conv59.i494.i.4682, i8 zeroext %790) #3
  %scevgep185.4685 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %784, i64 0, i64 0, i64 0
  store i8 %call64.i499.i.4684, i8* %scevgep185.4685, align 1
  %791 = load i8, i8* %arrayidx70.i505.i.4, align 1
  %scevgep182.4686 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %783, i64 0, i64 0, i64 0
  %792 = load i8, i8* %scevgep182.4686, align 1
  %call75.i510.i.4687 = call zeroext i8 @mult(i8 zeroext %791, i8 zeroext %792) #3
  %scevgep189.4688 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %785, i64 0, i64 0, i64 0
  store i8 %call75.i510.i.4687, i8* %scevgep189.4688, align 1
  %scevgep186.4689 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %784, i64 0, i64 0, i64 0
  %793 = load i8, i8* %scevgep186.4689, align 1
  %conv84.i519.i.4690 = zext i8 %793 to i32
  %scevgep190.4691 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %785, i64 0, i64 0, i64 0
  %794 = load i8, i8* %scevgep190.4691, align 1
  %conv89.i524.i.4692 = zext i8 %794 to i32
  %xor90.i525.i.4693 = xor i32 %conv84.i519.i.4690, %conv89.i524.i.4692
  %conv91.i526.i.4694 = trunc i32 %xor90.i525.i.4693 to i8
  %scevgep193.4695 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %786, i64 0, i64 0, i64 0
  store i8 %conv91.i526.i.4694, i8* %scevgep193.4695, align 1
  %scevgep174.1.4 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 1
  %795 = load i8, i8* %scevgep174.1.4, align 1
  %conv44.i478.i.1.4 = zext i8 %795 to i32
  %scevgep177.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %782, i64 0, i64 0, i64 1
  %796 = load i8, i8* %scevgep177.1.4, align 1
  %conv49.i483.i.1.4 = zext i8 %796 to i32
  %xor.i484.i.1.4 = xor i32 %conv44.i478.i.1.4, %conv49.i483.i.1.4
  %conv50.i485.i.1.4 = trunc i32 %xor.i484.i.1.4 to i8
  %scevgep181.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %783, i64 0, i64 0, i64 1
  store i8 %conv50.i485.i.1.4, i8* %scevgep181.1.4, align 1
  %797 = load i8, i8* %arrayidx56.i491.i.4, align 1
  %conv57.i492.i.1.4 = zext i8 %797 to i32
  %xor58.i493.i.1.4 = xor i32 %conv57.i492.i.1.4, 1
  %conv59.i494.i.1.4 = trunc i32 %xor58.i493.i.1.4 to i8
  %scevgep178.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %782, i64 0, i64 0, i64 1
  %798 = load i8, i8* %scevgep178.1.4, align 1
  %call64.i499.i.1.4 = call zeroext i8 @mult(i8 zeroext %conv59.i494.i.1.4, i8 zeroext %798) #3
  %scevgep185.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %784, i64 0, i64 0, i64 1
  store i8 %call64.i499.i.1.4, i8* %scevgep185.1.4, align 1
  %799 = load i8, i8* %arrayidx70.i505.i.4, align 1
  %scevgep182.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %783, i64 0, i64 0, i64 1
  %800 = load i8, i8* %scevgep182.1.4, align 1
  %call75.i510.i.1.4 = call zeroext i8 @mult(i8 zeroext %799, i8 zeroext %800) #3
  %scevgep189.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %785, i64 0, i64 0, i64 1
  store i8 %call75.i510.i.1.4, i8* %scevgep189.1.4, align 1
  %scevgep186.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %784, i64 0, i64 0, i64 1
  %801 = load i8, i8* %scevgep186.1.4, align 1
  %conv84.i519.i.1.4 = zext i8 %801 to i32
  %scevgep190.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %785, i64 0, i64 0, i64 1
  %802 = load i8, i8* %scevgep190.1.4, align 1
  %conv89.i524.i.1.4 = zext i8 %802 to i32
  %xor90.i525.i.1.4 = xor i32 %conv84.i519.i.1.4, %conv89.i524.i.1.4
  %conv91.i526.i.1.4 = trunc i32 %xor90.i525.i.1.4 to i8
  %scevgep193.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %786, i64 0, i64 0, i64 1
  store i8 %conv91.i526.i.1.4, i8* %scevgep193.1.4, align 1
  %scevgep174.2.4 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 2
  %803 = load i8, i8* %scevgep174.2.4, align 1
  %conv44.i478.i.2.4 = zext i8 %803 to i32
  %scevgep177.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %782, i64 0, i64 0, i64 2
  %804 = load i8, i8* %scevgep177.2.4, align 1
  %conv49.i483.i.2.4 = zext i8 %804 to i32
  %xor.i484.i.2.4 = xor i32 %conv44.i478.i.2.4, %conv49.i483.i.2.4
  %conv50.i485.i.2.4 = trunc i32 %xor.i484.i.2.4 to i8
  %scevgep181.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %783, i64 0, i64 0, i64 2
  store i8 %conv50.i485.i.2.4, i8* %scevgep181.2.4, align 1
  %805 = load i8, i8* %arrayidx56.i491.i.4, align 1
  %conv57.i492.i.2.4 = zext i8 %805 to i32
  %xor58.i493.i.2.4 = xor i32 %conv57.i492.i.2.4, 1
  %conv59.i494.i.2.4 = trunc i32 %xor58.i493.i.2.4 to i8
  %scevgep178.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %782, i64 0, i64 0, i64 2
  %806 = load i8, i8* %scevgep178.2.4, align 1
  %call64.i499.i.2.4 = call zeroext i8 @mult(i8 zeroext %conv59.i494.i.2.4, i8 zeroext %806) #3
  %scevgep185.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %784, i64 0, i64 0, i64 2
  store i8 %call64.i499.i.2.4, i8* %scevgep185.2.4, align 1
  %807 = load i8, i8* %arrayidx70.i505.i.4, align 1
  %scevgep182.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %783, i64 0, i64 0, i64 2
  %808 = load i8, i8* %scevgep182.2.4, align 1
  %call75.i510.i.2.4 = call zeroext i8 @mult(i8 zeroext %807, i8 zeroext %808) #3
  %scevgep189.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %785, i64 0, i64 0, i64 2
  store i8 %call75.i510.i.2.4, i8* %scevgep189.2.4, align 1
  %scevgep186.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %784, i64 0, i64 0, i64 2
  %809 = load i8, i8* %scevgep186.2.4, align 1
  %conv84.i519.i.2.4 = zext i8 %809 to i32
  %scevgep190.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %785, i64 0, i64 0, i64 2
  %810 = load i8, i8* %scevgep190.2.4, align 1
  %conv89.i524.i.2.4 = zext i8 %810 to i32
  %xor90.i525.i.2.4 = xor i32 %conv84.i519.i.2.4, %conv89.i524.i.2.4
  %conv91.i526.i.2.4 = trunc i32 %xor90.i525.i.2.4 to i8
  %scevgep193.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %786, i64 0, i64 0, i64 2
  store i8 %conv91.i526.i.2.4, i8* %scevgep193.2.4, align 1
  %scevgep174.3.4 = getelementptr [5 x i8], [5 x i8]* %wr.i, i64 0, i64 3
  %811 = load i8, i8* %scevgep174.3.4, align 1
  %conv44.i478.i.3.4 = zext i8 %811 to i32
  %scevgep177.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %782, i64 0, i64 0, i64 3
  %812 = load i8, i8* %scevgep177.3.4, align 1
  %conv49.i483.i.3.4 = zext i8 %812 to i32
  %xor.i484.i.3.4 = xor i32 %conv44.i478.i.3.4, %conv49.i483.i.3.4
  %conv50.i485.i.3.4 = trunc i32 %xor.i484.i.3.4 to i8
  %scevgep181.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %783, i64 0, i64 0, i64 3
  store i8 %conv50.i485.i.3.4, i8* %scevgep181.3.4, align 1
  %813 = load i8, i8* %arrayidx56.i491.i.4, align 1
  %conv57.i492.i.3.4 = zext i8 %813 to i32
  %xor58.i493.i.3.4 = xor i32 %conv57.i492.i.3.4, 1
  %conv59.i494.i.3.4 = trunc i32 %xor58.i493.i.3.4 to i8
  %scevgep178.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %782, i64 0, i64 0, i64 3
  %814 = load i8, i8* %scevgep178.3.4, align 1
  %call64.i499.i.3.4 = call zeroext i8 @mult(i8 zeroext %conv59.i494.i.3.4, i8 zeroext %814) #3
  %scevgep185.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %784, i64 0, i64 0, i64 3
  store i8 %call64.i499.i.3.4, i8* %scevgep185.3.4, align 1
  %815 = load i8, i8* %arrayidx70.i505.i.4, align 1
  %scevgep182.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %783, i64 0, i64 0, i64 3
  %816 = load i8, i8* %scevgep182.3.4, align 1
  %call75.i510.i.3.4 = call zeroext i8 @mult(i8 zeroext %815, i8 zeroext %816) #3
  %scevgep189.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %785, i64 0, i64 0, i64 3
  store i8 %call75.i510.i.3.4, i8* %scevgep189.3.4, align 1
  %scevgep186.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %784, i64 0, i64 0, i64 3
  %817 = load i8, i8* %scevgep186.3.4, align 1
  %conv84.i519.i.3.4 = zext i8 %817 to i32
  %scevgep190.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %785, i64 0, i64 0, i64 3
  %818 = load i8, i8* %scevgep190.3.4, align 1
  %conv89.i524.i.3.4 = zext i8 %818 to i32
  %xor90.i525.i.3.4 = xor i32 %conv84.i519.i.3.4, %conv89.i524.i.3.4
  %conv91.i526.i.3.4 = trunc i32 %xor90.i525.i.3.4 to i8
  %scevgep193.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %786, i64 0, i64 0, i64 3
  store i8 %conv91.i526.i.3.4, i8* %scevgep193.3.4, align 1
  %819 = load i8, i8* %arraydecay17.i, align 1
  %820 = load i8, i8* %arraydecay18.i, align 1
  %call111.i543.i = call zeroext i8 @mult(i8 zeroext %819, i8 zeroext %820) #3
  store i8 %call111.i543.i, i8* %arraydecay19.i, align 1
  %scevgep164.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  %821 = load i8, i8* %scevgep164.1, align 1
  %conv126.i555.i.1 = zext i8 %821 to i32
  %822 = load i8, i8* %arraydecay19.i, align 1
  %conv129.i558.i.1 = zext i8 %822 to i32
  %xor130.i559.i.1 = xor i32 %conv129.i558.i.1, %conv126.i555.i.1
  %conv131.i560.i.1 = trunc i32 %xor130.i559.i.1 to i8
  store i8 %conv131.i560.i.1, i8* %arraydecay19.i, align 1
  %scevgep164.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i.i, i64 0, i64 0, i64 2
  %823 = load i8, i8* %scevgep164.2, align 1
  %conv126.i555.i.2 = zext i8 %823 to i32
  %824 = load i8, i8* %arraydecay19.i, align 1
  %conv129.i558.i.2 = zext i8 %824 to i32
  %xor130.i559.i.2 = xor i32 %conv129.i558.i.2, %conv126.i555.i.2
  %conv131.i560.i.2 = trunc i32 %xor130.i559.i.2 to i8
  store i8 %conv131.i560.i.2, i8* %arraydecay19.i, align 1
  %scevgep164.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i.i, i64 0, i64 0, i64 3
  %825 = load i8, i8* %scevgep164.3, align 1
  %conv126.i555.i.3 = zext i8 %825 to i32
  %826 = load i8, i8* %arraydecay19.i, align 1
  %conv129.i558.i.3 = zext i8 %826 to i32
  %xor130.i559.i.3 = xor i32 %conv129.i558.i.3, %conv126.i555.i.3
  %conv131.i560.i.3 = trunc i32 %xor130.i559.i.3 to i8
  store i8 %conv131.i560.i.3, i8* %arraydecay19.i, align 1
  %scevgep164.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i.i, i64 0, i64 0, i64 4
  %827 = load i8, i8* %scevgep164.4, align 1
  %conv126.i555.i.4 = zext i8 %827 to i32
  %828 = load i8, i8* %arraydecay19.i, align 1
  %conv129.i558.i.4 = zext i8 %828 to i32
  %xor130.i559.i.4 = xor i32 %conv129.i558.i.4, %conv126.i555.i.4
  %conv131.i560.i.4 = trunc i32 %xor130.i559.i.4 to i8
  store i8 %conv131.i560.i.4, i8* %arraydecay19.i, align 1
  %scevgep163 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %829 = bitcast i8* %scevgep163 to [5 x [5 x i8]]*
  %arrayidx108.i540.i.1 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 1
  %830 = load i8, i8* %arrayidx108.i540.i.1, align 1
  %arrayidx110.i542.i.1 = getelementptr inbounds i8, i8* %arraydecay18.i, i64 1
  %831 = load i8, i8* %arrayidx110.i542.i.1, align 1
  %call111.i543.i.1 = call zeroext i8 @mult(i8 zeroext %830, i8 zeroext %831) #3
  %arrayidx113.i545.i.1 = getelementptr inbounds i8, i8* %arraydecay19.i, i64 1
  store i8 %call111.i543.i.1, i8* %arrayidx113.i545.i.1, align 1
  %arrayidx128.i557.i.1 = getelementptr inbounds i8, i8* %arraydecay19.i, i64 1
  %scevgep164.1556 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %829, i64 0, i64 0, i64 0
  %832 = load i8, i8* %scevgep164.1556, align 1
  %conv126.i555.i.1557 = zext i8 %832 to i32
  %833 = load i8, i8* %arrayidx128.i557.i.1, align 1
  %conv129.i558.i.1558 = zext i8 %833 to i32
  %xor130.i559.i.1559 = xor i32 %conv129.i558.i.1558, %conv126.i555.i.1557
  %conv131.i560.i.1560 = trunc i32 %xor130.i559.i.1559 to i8
  store i8 %conv131.i560.i.1560, i8* %arrayidx128.i557.i.1, align 1
  %scevgep164.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %829, i64 0, i64 0, i64 2
  %834 = load i8, i8* %scevgep164.2.1, align 1
  %conv126.i555.i.2.1 = zext i8 %834 to i32
  %835 = load i8, i8* %arrayidx128.i557.i.1, align 1
  %conv129.i558.i.2.1 = zext i8 %835 to i32
  %xor130.i559.i.2.1 = xor i32 %conv129.i558.i.2.1, %conv126.i555.i.2.1
  %conv131.i560.i.2.1 = trunc i32 %xor130.i559.i.2.1 to i8
  store i8 %conv131.i560.i.2.1, i8* %arrayidx128.i557.i.1, align 1
  %scevgep164.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %829, i64 0, i64 0, i64 3
  %836 = load i8, i8* %scevgep164.3.1, align 1
  %conv126.i555.i.3.1 = zext i8 %836 to i32
  %837 = load i8, i8* %arrayidx128.i557.i.1, align 1
  %conv129.i558.i.3.1 = zext i8 %837 to i32
  %xor130.i559.i.3.1 = xor i32 %conv129.i558.i.3.1, %conv126.i555.i.3.1
  %conv131.i560.i.3.1 = trunc i32 %xor130.i559.i.3.1 to i8
  store i8 %conv131.i560.i.3.1, i8* %arrayidx128.i557.i.1, align 1
  %scevgep164.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %829, i64 0, i64 0, i64 4
  %838 = load i8, i8* %scevgep164.4.1, align 1
  %conv126.i555.i.4.1 = zext i8 %838 to i32
  %839 = load i8, i8* %arrayidx128.i557.i.1, align 1
  %conv129.i558.i.4.1 = zext i8 %839 to i32
  %xor130.i559.i.4.1 = xor i32 %conv129.i558.i.4.1, %conv126.i555.i.4.1
  %conv131.i560.i.4.1 = trunc i32 %xor130.i559.i.4.1 to i8
  store i8 %conv131.i560.i.4.1, i8* %arrayidx128.i557.i.1, align 1
  %scevgep163.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %829, i64 0, i64 1, i64 0
  %840 = bitcast i8* %scevgep163.1 to [5 x [5 x i8]]*
  %arrayidx108.i540.i.2 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 2
  %841 = load i8, i8* %arrayidx108.i540.i.2, align 1
  %arrayidx110.i542.i.2 = getelementptr inbounds i8, i8* %arraydecay18.i, i64 2
  %842 = load i8, i8* %arrayidx110.i542.i.2, align 1
  %call111.i543.i.2 = call zeroext i8 @mult(i8 zeroext %841, i8 zeroext %842) #3
  %arrayidx113.i545.i.2 = getelementptr inbounds i8, i8* %arraydecay19.i, i64 2
  store i8 %call111.i543.i.2, i8* %arrayidx113.i545.i.2, align 1
  %arrayidx128.i557.i.2 = getelementptr inbounds i8, i8* %arraydecay19.i, i64 2
  %scevgep164.2565 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %840, i64 0, i64 0, i64 0
  %843 = load i8, i8* %scevgep164.2565, align 1
  %conv126.i555.i.2566 = zext i8 %843 to i32
  %844 = load i8, i8* %arrayidx128.i557.i.2, align 1
  %conv129.i558.i.2567 = zext i8 %844 to i32
  %xor130.i559.i.2568 = xor i32 %conv129.i558.i.2567, %conv126.i555.i.2566
  %conv131.i560.i.2569 = trunc i32 %xor130.i559.i.2568 to i8
  store i8 %conv131.i560.i.2569, i8* %arrayidx128.i557.i.2, align 1
  %scevgep164.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %840, i64 0, i64 0, i64 1
  %845 = load i8, i8* %scevgep164.1.2, align 1
  %conv126.i555.i.1.2 = zext i8 %845 to i32
  %846 = load i8, i8* %arrayidx128.i557.i.2, align 1
  %conv129.i558.i.1.2 = zext i8 %846 to i32
  %xor130.i559.i.1.2 = xor i32 %conv129.i558.i.1.2, %conv126.i555.i.1.2
  %conv131.i560.i.1.2 = trunc i32 %xor130.i559.i.1.2 to i8
  store i8 %conv131.i560.i.1.2, i8* %arrayidx128.i557.i.2, align 1
  %scevgep164.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %840, i64 0, i64 0, i64 3
  %847 = load i8, i8* %scevgep164.3.2, align 1
  %conv126.i555.i.3.2 = zext i8 %847 to i32
  %848 = load i8, i8* %arrayidx128.i557.i.2, align 1
  %conv129.i558.i.3.2 = zext i8 %848 to i32
  %xor130.i559.i.3.2 = xor i32 %conv129.i558.i.3.2, %conv126.i555.i.3.2
  %conv131.i560.i.3.2 = trunc i32 %xor130.i559.i.3.2 to i8
  store i8 %conv131.i560.i.3.2, i8* %arrayidx128.i557.i.2, align 1
  %scevgep164.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %840, i64 0, i64 0, i64 4
  %849 = load i8, i8* %scevgep164.4.2, align 1
  %conv126.i555.i.4.2 = zext i8 %849 to i32
  %850 = load i8, i8* %arrayidx128.i557.i.2, align 1
  %conv129.i558.i.4.2 = zext i8 %850 to i32
  %xor130.i559.i.4.2 = xor i32 %conv129.i558.i.4.2, %conv126.i555.i.4.2
  %conv131.i560.i.4.2 = trunc i32 %xor130.i559.i.4.2 to i8
  store i8 %conv131.i560.i.4.2, i8* %arrayidx128.i557.i.2, align 1
  %scevgep163.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %840, i64 0, i64 1, i64 0
  %851 = bitcast i8* %scevgep163.2 to [5 x [5 x i8]]*
  %arrayidx108.i540.i.3 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 3
  %852 = load i8, i8* %arrayidx108.i540.i.3, align 1
  %arrayidx110.i542.i.3 = getelementptr inbounds i8, i8* %arraydecay18.i, i64 3
  %853 = load i8, i8* %arrayidx110.i542.i.3, align 1
  %call111.i543.i.3 = call zeroext i8 @mult(i8 zeroext %852, i8 zeroext %853) #3
  %arrayidx113.i545.i.3 = getelementptr inbounds i8, i8* %arraydecay19.i, i64 3
  store i8 %call111.i543.i.3, i8* %arrayidx113.i545.i.3, align 1
  %arrayidx128.i557.i.3 = getelementptr inbounds i8, i8* %arraydecay19.i, i64 3
  %scevgep164.3574 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %851, i64 0, i64 0, i64 0
  %854 = load i8, i8* %scevgep164.3574, align 1
  %conv126.i555.i.3575 = zext i8 %854 to i32
  %855 = load i8, i8* %arrayidx128.i557.i.3, align 1
  %conv129.i558.i.3576 = zext i8 %855 to i32
  %xor130.i559.i.3577 = xor i32 %conv129.i558.i.3576, %conv126.i555.i.3575
  %conv131.i560.i.3578 = trunc i32 %xor130.i559.i.3577 to i8
  store i8 %conv131.i560.i.3578, i8* %arrayidx128.i557.i.3, align 1
  %scevgep164.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %851, i64 0, i64 0, i64 1
  %856 = load i8, i8* %scevgep164.1.3, align 1
  %conv126.i555.i.1.3 = zext i8 %856 to i32
  %857 = load i8, i8* %arrayidx128.i557.i.3, align 1
  %conv129.i558.i.1.3 = zext i8 %857 to i32
  %xor130.i559.i.1.3 = xor i32 %conv129.i558.i.1.3, %conv126.i555.i.1.3
  %conv131.i560.i.1.3 = trunc i32 %xor130.i559.i.1.3 to i8
  store i8 %conv131.i560.i.1.3, i8* %arrayidx128.i557.i.3, align 1
  %scevgep164.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %851, i64 0, i64 0, i64 2
  %858 = load i8, i8* %scevgep164.2.3, align 1
  %conv126.i555.i.2.3 = zext i8 %858 to i32
  %859 = load i8, i8* %arrayidx128.i557.i.3, align 1
  %conv129.i558.i.2.3 = zext i8 %859 to i32
  %xor130.i559.i.2.3 = xor i32 %conv129.i558.i.2.3, %conv126.i555.i.2.3
  %conv131.i560.i.2.3 = trunc i32 %xor130.i559.i.2.3 to i8
  store i8 %conv131.i560.i.2.3, i8* %arrayidx128.i557.i.3, align 1
  %scevgep164.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %851, i64 0, i64 0, i64 4
  %860 = load i8, i8* %scevgep164.4.3, align 1
  %conv126.i555.i.4.3 = zext i8 %860 to i32
  %861 = load i8, i8* %arrayidx128.i557.i.3, align 1
  %conv129.i558.i.4.3 = zext i8 %861 to i32
  %xor130.i559.i.4.3 = xor i32 %conv129.i558.i.4.3, %conv126.i555.i.4.3
  %conv131.i560.i.4.3 = trunc i32 %xor130.i559.i.4.3 to i8
  store i8 %conv131.i560.i.4.3, i8* %arrayidx128.i557.i.3, align 1
  %scevgep163.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %851, i64 0, i64 1, i64 0
  %862 = bitcast i8* %scevgep163.3 to [5 x [5 x i8]]*
  %arrayidx108.i540.i.4 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 4
  %863 = load i8, i8* %arrayidx108.i540.i.4, align 1
  %arrayidx110.i542.i.4 = getelementptr inbounds i8, i8* %arraydecay18.i, i64 4
  %864 = load i8, i8* %arrayidx110.i542.i.4, align 1
  %call111.i543.i.4 = call zeroext i8 @mult(i8 zeroext %863, i8 zeroext %864) #3
  %arrayidx113.i545.i.4 = getelementptr inbounds i8, i8* %arraydecay19.i, i64 4
  store i8 %call111.i543.i.4, i8* %arrayidx113.i545.i.4, align 1
  %arrayidx128.i557.i.4 = getelementptr inbounds i8, i8* %arraydecay19.i, i64 4
  %scevgep164.4583 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %862, i64 0, i64 0, i64 0
  %865 = load i8, i8* %scevgep164.4583, align 1
  %conv126.i555.i.4584 = zext i8 %865 to i32
  %866 = load i8, i8* %arrayidx128.i557.i.4, align 1
  %conv129.i558.i.4585 = zext i8 %866 to i32
  %xor130.i559.i.4586 = xor i32 %conv129.i558.i.4585, %conv126.i555.i.4584
  %conv131.i560.i.4587 = trunc i32 %xor130.i559.i.4586 to i8
  store i8 %conv131.i560.i.4587, i8* %arrayidx128.i557.i.4, align 1
  %scevgep164.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %862, i64 0, i64 0, i64 1
  %867 = load i8, i8* %scevgep164.1.4, align 1
  %conv126.i555.i.1.4 = zext i8 %867 to i32
  %868 = load i8, i8* %arrayidx128.i557.i.4, align 1
  %conv129.i558.i.1.4 = zext i8 %868 to i32
  %xor130.i559.i.1.4 = xor i32 %conv129.i558.i.1.4, %conv126.i555.i.1.4
  %conv131.i560.i.1.4 = trunc i32 %xor130.i559.i.1.4 to i8
  store i8 %conv131.i560.i.1.4, i8* %arrayidx128.i557.i.4, align 1
  %scevgep164.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %862, i64 0, i64 0, i64 2
  %869 = load i8, i8* %scevgep164.2.4, align 1
  %conv126.i555.i.2.4 = zext i8 %869 to i32
  %870 = load i8, i8* %arrayidx128.i557.i.4, align 1
  %conv129.i558.i.2.4 = zext i8 %870 to i32
  %xor130.i559.i.2.4 = xor i32 %conv129.i558.i.2.4, %conv126.i555.i.2.4
  %conv131.i560.i.2.4 = trunc i32 %xor130.i559.i.2.4 to i8
  store i8 %conv131.i560.i.2.4, i8* %arrayidx128.i557.i.4, align 1
  %scevgep164.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %862, i64 0, i64 0, i64 3
  %871 = load i8, i8* %scevgep164.3.4, align 1
  %conv126.i555.i.3.4 = zext i8 %871 to i32
  %872 = load i8, i8* %arrayidx128.i557.i.4, align 1
  %conv129.i558.i.3.4 = zext i8 %872 to i32
  %xor130.i559.i.3.4 = xor i32 %conv129.i558.i.3.4, %conv126.i555.i.3.4
  %conv131.i560.i.3.4 = trunc i32 %xor130.i559.i.3.4 to i8
  store i8 %conv131.i560.i.3.4, i8* %arrayidx128.i557.i.4, align 1
  %call139.i566.i = call zeroext i8 @mult(i8 zeroext %call.i413.i, i8 zeroext %call1.i414.i) #3
  %conv140.i567.i = zext i8 %call139.i566.i to i32
  %scevgep154 = getelementptr [5 x i8], [5 x i8]* %m.i, i64 0, i64 0
  %873 = load i8, i8* %scevgep154, align 1
  %scevgep154.1 = getelementptr [5 x i8], [5 x i8]* %m.i, i64 0, i64 1
  %874 = load i8, i8* %scevgep154.1, align 1
  %conv.i.i172.i574.i.1 = zext i8 %874 to i32
  %conv1.i.i173.i575.i.1 = zext i8 %873 to i32
  %xor.i.i174.i576.i.1 = xor i32 %conv1.i.i173.i575.i.1, %conv.i.i172.i574.i.1
  %conv2.i.i175.i577.i.1 = trunc i32 %xor.i.i174.i576.i.1 to i8
  %scevgep154.2 = getelementptr [5 x i8], [5 x i8]* %m.i, i64 0, i64 2
  %875 = load i8, i8* %scevgep154.2, align 1
  %conv.i.i172.i574.i.2 = zext i8 %875 to i32
  %conv1.i.i173.i575.i.2 = zext i8 %conv2.i.i175.i577.i.1 to i32
  %xor.i.i174.i576.i.2 = xor i32 %conv1.i.i173.i575.i.2, %conv.i.i172.i574.i.2
  %conv2.i.i175.i577.i.2 = trunc i32 %xor.i.i174.i576.i.2 to i8
  %scevgep154.3 = getelementptr [5 x i8], [5 x i8]* %m.i, i64 0, i64 3
  %876 = load i8, i8* %scevgep154.3, align 1
  %conv.i.i172.i574.i.3 = zext i8 %876 to i32
  %conv1.i.i173.i575.i.3 = zext i8 %conv2.i.i175.i577.i.2 to i32
  %xor.i.i174.i576.i.3 = xor i32 %conv1.i.i173.i575.i.3, %conv.i.i172.i574.i.3
  %conv2.i.i175.i577.i.3 = trunc i32 %xor.i.i174.i576.i.3 to i8
  %scevgep154.4 = getelementptr [5 x i8], [5 x i8]* %m.i, i64 0, i64 4
  %877 = load i8, i8* %scevgep154.4, align 1
  %conv.i.i172.i574.i.4 = zext i8 %877 to i32
  %conv1.i.i173.i575.i.4 = zext i8 %conv2.i.i175.i577.i.3 to i32
  %xor.i.i174.i576.i.4 = xor i32 %conv1.i.i173.i575.i.4, %conv.i.i172.i574.i.4
  %conv2.i.i175.i577.i.4 = trunc i32 %xor.i.i174.i576.i.4 to i8
  %conv142.i580.i = zext i8 %conv2.i.i175.i577.i.4 to i32
  %cmp143.i581.i = icmp eq i32 %conv140.i567.i, %conv142.i580.i
  call void @assert(i1 zeroext %cmp143.i581.i) #3
  %arraydecay20.i = getelementptr inbounds [5 x i8], [5 x i8]* %m.i, i64 0, i64 0
  %arraydecay21.i = getelementptr inbounds [5 x i8], [5 x i8]* %z.i, i64 0, i64 0
  %call.i614.i = call zeroext i8 (...) @rand() #3
  %call1.i615.i = call zeroext i8 (...) @rand() #3
  %conv.i616.i = zext i8 %call.i614.i to i32
  %scevgep150 = getelementptr [5 x i8], [5 x i8]* %m.i, i64 0, i64 0
  %878 = load i8, i8* %scevgep150, align 1
  %scevgep150.1 = getelementptr [5 x i8], [5 x i8]* %m.i, i64 0, i64 1
  %879 = load i8, i8* %scevgep150.1, align 1
  %conv.i.i.i622.i.1 = zext i8 %879 to i32
  %conv1.i.i.i623.i.1 = zext i8 %878 to i32
  %xor.i.i.i624.i.1 = xor i32 %conv1.i.i.i623.i.1, %conv.i.i.i622.i.1
  %conv2.i.i.i625.i.1 = trunc i32 %xor.i.i.i624.i.1 to i8
  %scevgep150.2 = getelementptr [5 x i8], [5 x i8]* %m.i, i64 0, i64 2
  %880 = load i8, i8* %scevgep150.2, align 1
  %conv.i.i.i622.i.2 = zext i8 %880 to i32
  %conv1.i.i.i623.i.2 = zext i8 %conv2.i.i.i625.i.1 to i32
  %xor.i.i.i624.i.2 = xor i32 %conv1.i.i.i623.i.2, %conv.i.i.i622.i.2
  %conv2.i.i.i625.i.2 = trunc i32 %xor.i.i.i624.i.2 to i8
  %scevgep150.3 = getelementptr [5 x i8], [5 x i8]* %m.i, i64 0, i64 3
  %881 = load i8, i8* %scevgep150.3, align 1
  %conv.i.i.i622.i.3 = zext i8 %881 to i32
  %conv1.i.i.i623.i.3 = zext i8 %conv2.i.i.i625.i.2 to i32
  %xor.i.i.i624.i.3 = xor i32 %conv1.i.i.i623.i.3, %conv.i.i.i622.i.3
  %conv2.i.i.i625.i.3 = trunc i32 %xor.i.i.i624.i.3 to i8
  %scevgep150.4 = getelementptr [5 x i8], [5 x i8]* %m.i, i64 0, i64 4
  %882 = load i8, i8* %scevgep150.4, align 1
  %conv.i.i.i622.i.4 = zext i8 %882 to i32
  %conv1.i.i.i623.i.4 = zext i8 %conv2.i.i.i625.i.3 to i32
  %xor.i.i.i624.i.4 = xor i32 %conv1.i.i.i623.i.4, %conv.i.i.i622.i.4
  %conv2.i.i.i625.i.4 = trunc i32 %xor.i.i.i624.i.4 to i8
  %conv3.i628.i = zext i8 %conv2.i.i.i625.i.4 to i32
  %cmp.i629.i = icmp eq i32 %conv.i616.i, %conv3.i628.i
  call void @assume(i1 zeroext %cmp.i629.i) #3
  %conv5.i630.i = zext i8 %call1.i615.i to i32
  %scevgep146 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 0
  %883 = load i8, i8* %scevgep146, align 1
  %scevgep146.1 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 1
  %884 = load i8, i8* %scevgep146.1, align 1
  %conv.i.i155.i637.i.1 = zext i8 %884 to i32
  %conv1.i.i156.i638.i.1 = zext i8 %883 to i32
  %xor.i.i157.i639.i.1 = xor i32 %conv1.i.i156.i638.i.1, %conv.i.i155.i637.i.1
  %conv2.i.i158.i640.i.1 = trunc i32 %xor.i.i157.i639.i.1 to i8
  %scevgep146.2 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 2
  %885 = load i8, i8* %scevgep146.2, align 1
  %conv.i.i155.i637.i.2 = zext i8 %885 to i32
  %conv1.i.i156.i638.i.2 = zext i8 %conv2.i.i158.i640.i.1 to i32
  %xor.i.i157.i639.i.2 = xor i32 %conv1.i.i156.i638.i.2, %conv.i.i155.i637.i.2
  %conv2.i.i158.i640.i.2 = trunc i32 %xor.i.i157.i639.i.2 to i8
  %scevgep146.3 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 3
  %886 = load i8, i8* %scevgep146.3, align 1
  %conv.i.i155.i637.i.3 = zext i8 %886 to i32
  %conv1.i.i156.i638.i.3 = zext i8 %conv2.i.i158.i640.i.2 to i32
  %xor.i.i157.i639.i.3 = xor i32 %conv1.i.i156.i638.i.3, %conv.i.i155.i637.i.3
  %conv2.i.i158.i640.i.3 = trunc i32 %xor.i.i157.i639.i.3 to i8
  %scevgep146.4 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 4
  %887 = load i8, i8* %scevgep146.4, align 1
  %conv.i.i155.i637.i.4 = zext i8 %887 to i32
  %conv1.i.i156.i638.i.4 = zext i8 %conv2.i.i158.i640.i.3 to i32
  %xor.i.i157.i639.i.4 = xor i32 %conv1.i.i156.i638.i.4, %conv.i.i155.i637.i.4
  %conv2.i.i158.i640.i.4 = trunc i32 %xor.i.i157.i639.i.4 to i8
  %conv7.i643.i = zext i8 %conv2.i.i158.i640.i.4 to i32
  %cmp8.i644.i = icmp eq i32 %conv5.i630.i, %conv7.i643.i
  call void @assume(i1 zeroext %cmp8.i644.i) #3
  %scevgep130 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %scevgep130131 = bitcast i8* %scevgep130 to [5 x [5 x i8]]*
  %scevgep137 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %scevgep137138 = bitcast i8* %scevgep137 to [5 x [5 x i8]]*
  %call16.i652.i = call zeroext i8 (...) @rand() #3
  store i8 %call16.i652.i, i8* %scevgep130, align 1
  %888 = load i8, i8* %scevgep130, align 1
  store i8 %888, i8* %scevgep137, align 1
  %scevgep135 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep130131, i64 0, i64 0, i64 1
  %889 = bitcast i8* %scevgep135 to [5 x [5 x i8]]*
  %scevgep142 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep137138, i64 0, i64 1, i64 0
  %890 = bitcast i8* %scevgep142 to [5 x [5 x i8]]*
  %call16.i652.i.1982 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i652.i.1982, i8* %scevgep135, align 1
  %891 = load i8, i8* %scevgep135, align 1
  store i8 %891, i8* %scevgep142, align 1
  %scevgep135.1983 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %889, i64 0, i64 0, i64 1
  %892 = bitcast i8* %scevgep135.1983 to [5 x [5 x i8]]*
  %scevgep142.1984 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %890, i64 0, i64 1, i64 0
  %893 = bitcast i8* %scevgep142.1984 to [5 x [5 x i8]]*
  %call16.i652.i.2986 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i652.i.2986, i8* %scevgep135.1983, align 1
  %894 = load i8, i8* %scevgep135.1983, align 1
  store i8 %894, i8* %scevgep142.1984, align 1
  %scevgep135.2987 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %892, i64 0, i64 0, i64 1
  %scevgep142.2988 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %893, i64 0, i64 1, i64 0
  %call16.i652.i.3990 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i652.i.3990, i8* %scevgep135.2987, align 1
  %895 = load i8, i8* %scevgep135.2987, align 1
  store i8 %895, i8* %scevgep142.2988, align 1
  %scevgep133 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep130131, i64 0, i64 1, i64 1
  %896 = bitcast i8* %scevgep133 to [5 x [5 x i8]]*
  %scevgep140 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %scevgep137138, i64 0, i64 1, i64 1
  %897 = bitcast i8* %scevgep140 to [5 x [5 x i8]]*
  %call16.i652.i.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i652.i.1, i8* %scevgep133, align 1
  %898 = load i8, i8* %scevgep133, align 1
  store i8 %898, i8* %scevgep140, align 1
  %scevgep135.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %896, i64 0, i64 0, i64 1
  %899 = bitcast i8* %scevgep135.1 to [5 x [5 x i8]]*
  %scevgep142.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %897, i64 0, i64 1, i64 0
  %900 = bitcast i8* %scevgep142.1 to [5 x [5 x i8]]*
  %call16.i652.i.1.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i652.i.1.1, i8* %scevgep135.1, align 1
  %901 = load i8, i8* %scevgep135.1, align 1
  store i8 %901, i8* %scevgep142.1, align 1
  %scevgep135.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %899, i64 0, i64 0, i64 1
  %scevgep142.1.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %900, i64 0, i64 1, i64 0
  %call16.i652.i.1.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i652.i.1.2, i8* %scevgep135.1.1, align 1
  %902 = load i8, i8* %scevgep135.1.1, align 1
  store i8 %902, i8* %scevgep142.1.1, align 1
  %scevgep133.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %896, i64 0, i64 1, i64 1
  %903 = bitcast i8* %scevgep133.1 to [5 x [5 x i8]]*
  %scevgep140.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %897, i64 0, i64 1, i64 1
  %904 = bitcast i8* %scevgep140.1 to [5 x [5 x i8]]*
  %call16.i652.i.2 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i652.i.2, i8* %scevgep133.1, align 1
  %905 = load i8, i8* %scevgep133.1, align 1
  store i8 %905, i8* %scevgep140.1, align 1
  %scevgep135.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %903, i64 0, i64 0, i64 1
  %scevgep142.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %904, i64 0, i64 1, i64 0
  %call16.i652.i.2.1 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i652.i.2.1, i8* %scevgep135.2, align 1
  %906 = load i8, i8* %scevgep135.2, align 1
  store i8 %906, i8* %scevgep142.2, align 1
  %scevgep133.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %903, i64 0, i64 1, i64 1
  %scevgep140.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %904, i64 0, i64 1, i64 1
  %call16.i652.i.3 = call zeroext i8 (...) @rand() #3
  store i8 %call16.i652.i.3, i8* %scevgep133.2, align 1
  %907 = load i8, i8* %scevgep133.2, align 1
  store i8 %907, i8* %scevgep140.2, align 1
  %scevgep107.1 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 1
  %908 = load i8, i8* %scevgep107.1, align 1
  %conv44.i679.i.1 = zext i8 %908 to i32
  %scevgep110.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %909 = load i8, i8* %scevgep110.1, align 1
  %conv49.i684.i.1 = zext i8 %909 to i32
  %xor.i685.i.1 = xor i32 %conv44.i679.i.1, %conv49.i684.i.1
  %conv50.i686.i.1 = trunc i32 %xor.i685.i.1 to i8
  %scevgep114.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  store i8 %conv50.i686.i.1, i8* %scevgep114.1, align 1
  %910 = load i8, i8* %arraydecay20.i, align 1
  %conv57.i693.i.1 = zext i8 %910 to i32
  %xor58.i694.i.1 = xor i32 %conv57.i693.i.1, 1
  %conv59.i695.i.1 = trunc i32 %xor58.i694.i.1 to i8
  %scevgep111.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %911 = load i8, i8* %scevgep111.1, align 1
  %call64.i700.i.1 = call zeroext i8 @mult(i8 zeroext %conv59.i695.i.1, i8 zeroext %911) #3
  %scevgep118.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  store i8 %call64.i700.i.1, i8* %scevgep118.1, align 1
  %912 = load i8, i8* %arraydecay20.i, align 1
  %scevgep115.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  %913 = load i8, i8* %scevgep115.1, align 1
  %call75.i711.i.1 = call zeroext i8 @mult(i8 zeroext %912, i8 zeroext %913) #3
  %scevgep122.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  store i8 %call75.i711.i.1, i8* %scevgep122.1, align 1
  %scevgep119.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  %914 = load i8, i8* %scevgep119.1, align 1
  %conv84.i720.i.1 = zext i8 %914 to i32
  %scevgep123.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  %915 = load i8, i8* %scevgep123.1, align 1
  %conv89.i725.i.1 = zext i8 %915 to i32
  %xor90.i726.i.1 = xor i32 %conv84.i720.i.1, %conv89.i725.i.1
  %conv91.i727.i.1 = trunc i32 %xor90.i726.i.1 to i8
  %scevgep126.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  store i8 %conv91.i727.i.1, i8* %scevgep126.1, align 1
  %scevgep107.2 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 2
  %916 = load i8, i8* %scevgep107.2, align 1
  %conv44.i679.i.2 = zext i8 %916 to i32
  %scevgep110.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %917 = load i8, i8* %scevgep110.2, align 1
  %conv49.i684.i.2 = zext i8 %917 to i32
  %xor.i685.i.2 = xor i32 %conv44.i679.i.2, %conv49.i684.i.2
  %conv50.i686.i.2 = trunc i32 %xor.i685.i.2 to i8
  %scevgep114.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i.i, i64 0, i64 0, i64 2
  store i8 %conv50.i686.i.2, i8* %scevgep114.2, align 1
  %918 = load i8, i8* %arraydecay20.i, align 1
  %conv57.i693.i.2 = zext i8 %918 to i32
  %xor58.i694.i.2 = xor i32 %conv57.i693.i.2, 1
  %conv59.i695.i.2 = trunc i32 %xor58.i694.i.2 to i8
  %scevgep111.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %919 = load i8, i8* %scevgep111.2, align 1
  %call64.i700.i.2 = call zeroext i8 @mult(i8 zeroext %conv59.i695.i.2, i8 zeroext %919) #3
  %scevgep118.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i.i, i64 0, i64 0, i64 2
  store i8 %call64.i700.i.2, i8* %scevgep118.2, align 1
  %920 = load i8, i8* %arraydecay20.i, align 1
  %scevgep115.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i.i, i64 0, i64 0, i64 2
  %921 = load i8, i8* %scevgep115.2, align 1
  %call75.i711.i.2 = call zeroext i8 @mult(i8 zeroext %920, i8 zeroext %921) #3
  %scevgep122.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i.i, i64 0, i64 0, i64 2
  store i8 %call75.i711.i.2, i8* %scevgep122.2, align 1
  %scevgep119.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i.i, i64 0, i64 0, i64 2
  %922 = load i8, i8* %scevgep119.2, align 1
  %conv84.i720.i.2 = zext i8 %922 to i32
  %scevgep123.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i.i, i64 0, i64 0, i64 2
  %923 = load i8, i8* %scevgep123.2, align 1
  %conv89.i725.i.2 = zext i8 %923 to i32
  %xor90.i726.i.2 = xor i32 %conv84.i720.i.2, %conv89.i725.i.2
  %conv91.i727.i.2 = trunc i32 %xor90.i726.i.2 to i8
  %scevgep126.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i.i, i64 0, i64 0, i64 2
  store i8 %conv91.i727.i.2, i8* %scevgep126.2, align 1
  %scevgep107.3 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 3
  %924 = load i8, i8* %scevgep107.3, align 1
  %conv44.i679.i.3 = zext i8 %924 to i32
  %scevgep110.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  %925 = load i8, i8* %scevgep110.3, align 1
  %conv49.i684.i.3 = zext i8 %925 to i32
  %xor.i685.i.3 = xor i32 %conv44.i679.i.3, %conv49.i684.i.3
  %conv50.i686.i.3 = trunc i32 %xor.i685.i.3 to i8
  %scevgep114.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i.i, i64 0, i64 0, i64 3
  store i8 %conv50.i686.i.3, i8* %scevgep114.3, align 1
  %926 = load i8, i8* %arraydecay20.i, align 1
  %conv57.i693.i.3 = zext i8 %926 to i32
  %xor58.i694.i.3 = xor i32 %conv57.i693.i.3, 1
  %conv59.i695.i.3 = trunc i32 %xor58.i694.i.3 to i8
  %scevgep111.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  %927 = load i8, i8* %scevgep111.3, align 1
  %call64.i700.i.3 = call zeroext i8 @mult(i8 zeroext %conv59.i695.i.3, i8 zeroext %927) #3
  %scevgep118.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i.i, i64 0, i64 0, i64 3
  store i8 %call64.i700.i.3, i8* %scevgep118.3, align 1
  %928 = load i8, i8* %arraydecay20.i, align 1
  %scevgep115.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i.i, i64 0, i64 0, i64 3
  %929 = load i8, i8* %scevgep115.3, align 1
  %call75.i711.i.3 = call zeroext i8 @mult(i8 zeroext %928, i8 zeroext %929) #3
  %scevgep122.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i.i, i64 0, i64 0, i64 3
  store i8 %call75.i711.i.3, i8* %scevgep122.3, align 1
  %scevgep119.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i.i, i64 0, i64 0, i64 3
  %930 = load i8, i8* %scevgep119.3, align 1
  %conv84.i720.i.3 = zext i8 %930 to i32
  %scevgep123.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i.i, i64 0, i64 0, i64 3
  %931 = load i8, i8* %scevgep123.3, align 1
  %conv89.i725.i.3 = zext i8 %931 to i32
  %xor90.i726.i.3 = xor i32 %conv84.i720.i.3, %conv89.i725.i.3
  %conv91.i727.i.3 = trunc i32 %xor90.i726.i.3 to i8
  %scevgep126.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i.i, i64 0, i64 0, i64 3
  store i8 %conv91.i727.i.3, i8* %scevgep126.3, align 1
  %scevgep107.4 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 4
  %932 = load i8, i8* %scevgep107.4, align 1
  %conv44.i679.i.4 = zext i8 %932 to i32
  %scevgep110.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 4
  %933 = load i8, i8* %scevgep110.4, align 1
  %conv49.i684.i.4 = zext i8 %933 to i32
  %xor.i685.i.4 = xor i32 %conv44.i679.i.4, %conv49.i684.i.4
  %conv50.i686.i.4 = trunc i32 %xor.i685.i.4 to i8
  %scevgep114.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i.i, i64 0, i64 0, i64 4
  store i8 %conv50.i686.i.4, i8* %scevgep114.4, align 1
  %934 = load i8, i8* %arraydecay20.i, align 1
  %conv57.i693.i.4 = zext i8 %934 to i32
  %xor58.i694.i.4 = xor i32 %conv57.i693.i.4, 1
  %conv59.i695.i.4 = trunc i32 %xor58.i694.i.4 to i8
  %scevgep111.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 0, i64 4
  %935 = load i8, i8* %scevgep111.4, align 1
  %call64.i700.i.4 = call zeroext i8 @mult(i8 zeroext %conv59.i695.i.4, i8 zeroext %935) #3
  %scevgep118.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i.i, i64 0, i64 0, i64 4
  store i8 %call64.i700.i.4, i8* %scevgep118.4, align 1
  %936 = load i8, i8* %arraydecay20.i, align 1
  %scevgep115.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i.i, i64 0, i64 0, i64 4
  %937 = load i8, i8* %scevgep115.4, align 1
  %call75.i711.i.4 = call zeroext i8 @mult(i8 zeroext %936, i8 zeroext %937) #3
  %scevgep122.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i.i, i64 0, i64 0, i64 4
  store i8 %call75.i711.i.4, i8* %scevgep122.4, align 1
  %scevgep119.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i.i, i64 0, i64 0, i64 4
  %938 = load i8, i8* %scevgep119.4, align 1
  %conv84.i720.i.4 = zext i8 %938 to i32
  %scevgep123.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i.i, i64 0, i64 0, i64 4
  %939 = load i8, i8* %scevgep123.4, align 1
  %conv89.i725.i.4 = zext i8 %939 to i32
  %xor90.i726.i.4 = xor i32 %conv84.i720.i.4, %conv89.i725.i.4
  %conv91.i727.i.4 = trunc i32 %xor90.i726.i.4 to i8
  %scevgep126.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i.i, i64 0, i64 0, i64 4
  store i8 %conv91.i727.i.4, i8* %scevgep126.4, align 1
  %scevgep109 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %940 = bitcast i8* %scevgep109 to [5 x [5 x i8]]*
  %scevgep113 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %s.i.i, i64 0, i64 1, i64 0
  %941 = bitcast i8* %scevgep113 to [5 x [5 x i8]]*
  %scevgep117 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p0.i.i, i64 0, i64 1, i64 0
  %942 = bitcast i8* %scevgep117 to [5 x [5 x i8]]*
  %scevgep121 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %p1.i.i, i64 0, i64 1, i64 0
  %943 = bitcast i8* %scevgep121 to [5 x [5 x i8]]*
  %scevgep125 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %944 = bitcast i8* %scevgep125 to [5 x [5 x i8]]*
  %arrayidx56.i692.i.1 = getelementptr inbounds i8, i8* %arraydecay20.i, i64 1
  %arrayidx70.i706.i.1 = getelementptr inbounds i8, i8* %arraydecay20.i, i64 1
  %scevgep107.1448 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 0
  %945 = load i8, i8* %scevgep107.1448, align 1
  %conv44.i679.i.1449 = zext i8 %945 to i32
  %scevgep110.1450 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %940, i64 0, i64 0, i64 0
  %946 = load i8, i8* %scevgep110.1450, align 1
  %conv49.i684.i.1451 = zext i8 %946 to i32
  %xor.i685.i.1452 = xor i32 %conv44.i679.i.1449, %conv49.i684.i.1451
  %conv50.i686.i.1453 = trunc i32 %xor.i685.i.1452 to i8
  %scevgep114.1454 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %941, i64 0, i64 0, i64 0
  store i8 %conv50.i686.i.1453, i8* %scevgep114.1454, align 1
  %947 = load i8, i8* %arrayidx56.i692.i.1, align 1
  %conv57.i693.i.1455 = zext i8 %947 to i32
  %xor58.i694.i.1456 = xor i32 %conv57.i693.i.1455, 1
  %conv59.i695.i.1457 = trunc i32 %xor58.i694.i.1456 to i8
  %scevgep111.1458 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %940, i64 0, i64 0, i64 0
  %948 = load i8, i8* %scevgep111.1458, align 1
  %call64.i700.i.1459 = call zeroext i8 @mult(i8 zeroext %conv59.i695.i.1457, i8 zeroext %948) #3
  %scevgep118.1460 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %942, i64 0, i64 0, i64 0
  store i8 %call64.i700.i.1459, i8* %scevgep118.1460, align 1
  %949 = load i8, i8* %arrayidx70.i706.i.1, align 1
  %scevgep115.1461 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %941, i64 0, i64 0, i64 0
  %950 = load i8, i8* %scevgep115.1461, align 1
  %call75.i711.i.1462 = call zeroext i8 @mult(i8 zeroext %949, i8 zeroext %950) #3
  %scevgep122.1463 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %943, i64 0, i64 0, i64 0
  store i8 %call75.i711.i.1462, i8* %scevgep122.1463, align 1
  %scevgep119.1464 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %942, i64 0, i64 0, i64 0
  %951 = load i8, i8* %scevgep119.1464, align 1
  %conv84.i720.i.1465 = zext i8 %951 to i32
  %scevgep123.1466 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %943, i64 0, i64 0, i64 0
  %952 = load i8, i8* %scevgep123.1466, align 1
  %conv89.i725.i.1467 = zext i8 %952 to i32
  %xor90.i726.i.1468 = xor i32 %conv84.i720.i.1465, %conv89.i725.i.1467
  %conv91.i727.i.1469 = trunc i32 %xor90.i726.i.1468 to i8
  %scevgep126.1470 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %944, i64 0, i64 0, i64 0
  store i8 %conv91.i727.i.1469, i8* %scevgep126.1470, align 1
  %scevgep107.2.1 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 2
  %953 = load i8, i8* %scevgep107.2.1, align 1
  %conv44.i679.i.2.1 = zext i8 %953 to i32
  %scevgep110.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %940, i64 0, i64 0, i64 2
  %954 = load i8, i8* %scevgep110.2.1, align 1
  %conv49.i684.i.2.1 = zext i8 %954 to i32
  %xor.i685.i.2.1 = xor i32 %conv44.i679.i.2.1, %conv49.i684.i.2.1
  %conv50.i686.i.2.1 = trunc i32 %xor.i685.i.2.1 to i8
  %scevgep114.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %941, i64 0, i64 0, i64 2
  store i8 %conv50.i686.i.2.1, i8* %scevgep114.2.1, align 1
  %955 = load i8, i8* %arrayidx56.i692.i.1, align 1
  %conv57.i693.i.2.1 = zext i8 %955 to i32
  %xor58.i694.i.2.1 = xor i32 %conv57.i693.i.2.1, 1
  %conv59.i695.i.2.1 = trunc i32 %xor58.i694.i.2.1 to i8
  %scevgep111.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %940, i64 0, i64 0, i64 2
  %956 = load i8, i8* %scevgep111.2.1, align 1
  %call64.i700.i.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i695.i.2.1, i8 zeroext %956) #3
  %scevgep118.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %942, i64 0, i64 0, i64 2
  store i8 %call64.i700.i.2.1, i8* %scevgep118.2.1, align 1
  %957 = load i8, i8* %arrayidx70.i706.i.1, align 1
  %scevgep115.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %941, i64 0, i64 0, i64 2
  %958 = load i8, i8* %scevgep115.2.1, align 1
  %call75.i711.i.2.1 = call zeroext i8 @mult(i8 zeroext %957, i8 zeroext %958) #3
  %scevgep122.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %943, i64 0, i64 0, i64 2
  store i8 %call75.i711.i.2.1, i8* %scevgep122.2.1, align 1
  %scevgep119.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %942, i64 0, i64 0, i64 2
  %959 = load i8, i8* %scevgep119.2.1, align 1
  %conv84.i720.i.2.1 = zext i8 %959 to i32
  %scevgep123.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %943, i64 0, i64 0, i64 2
  %960 = load i8, i8* %scevgep123.2.1, align 1
  %conv89.i725.i.2.1 = zext i8 %960 to i32
  %xor90.i726.i.2.1 = xor i32 %conv84.i720.i.2.1, %conv89.i725.i.2.1
  %conv91.i727.i.2.1 = trunc i32 %xor90.i726.i.2.1 to i8
  %scevgep126.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %944, i64 0, i64 0, i64 2
  store i8 %conv91.i727.i.2.1, i8* %scevgep126.2.1, align 1
  %scevgep107.3.1 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 3
  %961 = load i8, i8* %scevgep107.3.1, align 1
  %conv44.i679.i.3.1 = zext i8 %961 to i32
  %scevgep110.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %940, i64 0, i64 0, i64 3
  %962 = load i8, i8* %scevgep110.3.1, align 1
  %conv49.i684.i.3.1 = zext i8 %962 to i32
  %xor.i685.i.3.1 = xor i32 %conv44.i679.i.3.1, %conv49.i684.i.3.1
  %conv50.i686.i.3.1 = trunc i32 %xor.i685.i.3.1 to i8
  %scevgep114.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %941, i64 0, i64 0, i64 3
  store i8 %conv50.i686.i.3.1, i8* %scevgep114.3.1, align 1
  %963 = load i8, i8* %arrayidx56.i692.i.1, align 1
  %conv57.i693.i.3.1 = zext i8 %963 to i32
  %xor58.i694.i.3.1 = xor i32 %conv57.i693.i.3.1, 1
  %conv59.i695.i.3.1 = trunc i32 %xor58.i694.i.3.1 to i8
  %scevgep111.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %940, i64 0, i64 0, i64 3
  %964 = load i8, i8* %scevgep111.3.1, align 1
  %call64.i700.i.3.1 = call zeroext i8 @mult(i8 zeroext %conv59.i695.i.3.1, i8 zeroext %964) #3
  %scevgep118.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %942, i64 0, i64 0, i64 3
  store i8 %call64.i700.i.3.1, i8* %scevgep118.3.1, align 1
  %965 = load i8, i8* %arrayidx70.i706.i.1, align 1
  %scevgep115.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %941, i64 0, i64 0, i64 3
  %966 = load i8, i8* %scevgep115.3.1, align 1
  %call75.i711.i.3.1 = call zeroext i8 @mult(i8 zeroext %965, i8 zeroext %966) #3
  %scevgep122.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %943, i64 0, i64 0, i64 3
  store i8 %call75.i711.i.3.1, i8* %scevgep122.3.1, align 1
  %scevgep119.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %942, i64 0, i64 0, i64 3
  %967 = load i8, i8* %scevgep119.3.1, align 1
  %conv84.i720.i.3.1 = zext i8 %967 to i32
  %scevgep123.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %943, i64 0, i64 0, i64 3
  %968 = load i8, i8* %scevgep123.3.1, align 1
  %conv89.i725.i.3.1 = zext i8 %968 to i32
  %xor90.i726.i.3.1 = xor i32 %conv84.i720.i.3.1, %conv89.i725.i.3.1
  %conv91.i727.i.3.1 = trunc i32 %xor90.i726.i.3.1 to i8
  %scevgep126.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %944, i64 0, i64 0, i64 3
  store i8 %conv91.i727.i.3.1, i8* %scevgep126.3.1, align 1
  %scevgep107.4.1 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 4
  %969 = load i8, i8* %scevgep107.4.1, align 1
  %conv44.i679.i.4.1 = zext i8 %969 to i32
  %scevgep110.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %940, i64 0, i64 0, i64 4
  %970 = load i8, i8* %scevgep110.4.1, align 1
  %conv49.i684.i.4.1 = zext i8 %970 to i32
  %xor.i685.i.4.1 = xor i32 %conv44.i679.i.4.1, %conv49.i684.i.4.1
  %conv50.i686.i.4.1 = trunc i32 %xor.i685.i.4.1 to i8
  %scevgep114.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %941, i64 0, i64 0, i64 4
  store i8 %conv50.i686.i.4.1, i8* %scevgep114.4.1, align 1
  %971 = load i8, i8* %arrayidx56.i692.i.1, align 1
  %conv57.i693.i.4.1 = zext i8 %971 to i32
  %xor58.i694.i.4.1 = xor i32 %conv57.i693.i.4.1, 1
  %conv59.i695.i.4.1 = trunc i32 %xor58.i694.i.4.1 to i8
  %scevgep111.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %940, i64 0, i64 0, i64 4
  %972 = load i8, i8* %scevgep111.4.1, align 1
  %call64.i700.i.4.1 = call zeroext i8 @mult(i8 zeroext %conv59.i695.i.4.1, i8 zeroext %972) #3
  %scevgep118.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %942, i64 0, i64 0, i64 4
  store i8 %call64.i700.i.4.1, i8* %scevgep118.4.1, align 1
  %973 = load i8, i8* %arrayidx70.i706.i.1, align 1
  %scevgep115.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %941, i64 0, i64 0, i64 4
  %974 = load i8, i8* %scevgep115.4.1, align 1
  %call75.i711.i.4.1 = call zeroext i8 @mult(i8 zeroext %973, i8 zeroext %974) #3
  %scevgep122.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %943, i64 0, i64 0, i64 4
  store i8 %call75.i711.i.4.1, i8* %scevgep122.4.1, align 1
  %scevgep119.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %942, i64 0, i64 0, i64 4
  %975 = load i8, i8* %scevgep119.4.1, align 1
  %conv84.i720.i.4.1 = zext i8 %975 to i32
  %scevgep123.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %943, i64 0, i64 0, i64 4
  %976 = load i8, i8* %scevgep123.4.1, align 1
  %conv89.i725.i.4.1 = zext i8 %976 to i32
  %xor90.i726.i.4.1 = xor i32 %conv84.i720.i.4.1, %conv89.i725.i.4.1
  %conv91.i727.i.4.1 = trunc i32 %xor90.i726.i.4.1 to i8
  %scevgep126.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %944, i64 0, i64 0, i64 4
  store i8 %conv91.i727.i.4.1, i8* %scevgep126.4.1, align 1
  %scevgep109.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %940, i64 0, i64 1, i64 0
  %977 = bitcast i8* %scevgep109.1 to [5 x [5 x i8]]*
  %scevgep113.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %941, i64 0, i64 1, i64 0
  %978 = bitcast i8* %scevgep113.1 to [5 x [5 x i8]]*
  %scevgep117.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %942, i64 0, i64 1, i64 0
  %979 = bitcast i8* %scevgep117.1 to [5 x [5 x i8]]*
  %scevgep121.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %943, i64 0, i64 1, i64 0
  %980 = bitcast i8* %scevgep121.1 to [5 x [5 x i8]]*
  %scevgep125.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %944, i64 0, i64 1, i64 0
  %981 = bitcast i8* %scevgep125.1 to [5 x [5 x i8]]*
  %arrayidx56.i692.i.2 = getelementptr inbounds i8, i8* %arraydecay20.i, i64 2
  %arrayidx70.i706.i.2 = getelementptr inbounds i8, i8* %arraydecay20.i, i64 2
  %scevgep107.2475 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 0
  %982 = load i8, i8* %scevgep107.2475, align 1
  %conv44.i679.i.2476 = zext i8 %982 to i32
  %scevgep110.2477 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %977, i64 0, i64 0, i64 0
  %983 = load i8, i8* %scevgep110.2477, align 1
  %conv49.i684.i.2478 = zext i8 %983 to i32
  %xor.i685.i.2479 = xor i32 %conv44.i679.i.2476, %conv49.i684.i.2478
  %conv50.i686.i.2480 = trunc i32 %xor.i685.i.2479 to i8
  %scevgep114.2481 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %978, i64 0, i64 0, i64 0
  store i8 %conv50.i686.i.2480, i8* %scevgep114.2481, align 1
  %984 = load i8, i8* %arrayidx56.i692.i.2, align 1
  %conv57.i693.i.2482 = zext i8 %984 to i32
  %xor58.i694.i.2483 = xor i32 %conv57.i693.i.2482, 1
  %conv59.i695.i.2484 = trunc i32 %xor58.i694.i.2483 to i8
  %scevgep111.2485 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %977, i64 0, i64 0, i64 0
  %985 = load i8, i8* %scevgep111.2485, align 1
  %call64.i700.i.2486 = call zeroext i8 @mult(i8 zeroext %conv59.i695.i.2484, i8 zeroext %985) #3
  %scevgep118.2487 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %979, i64 0, i64 0, i64 0
  store i8 %call64.i700.i.2486, i8* %scevgep118.2487, align 1
  %986 = load i8, i8* %arrayidx70.i706.i.2, align 1
  %scevgep115.2488 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %978, i64 0, i64 0, i64 0
  %987 = load i8, i8* %scevgep115.2488, align 1
  %call75.i711.i.2489 = call zeroext i8 @mult(i8 zeroext %986, i8 zeroext %987) #3
  %scevgep122.2490 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %980, i64 0, i64 0, i64 0
  store i8 %call75.i711.i.2489, i8* %scevgep122.2490, align 1
  %scevgep119.2491 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %979, i64 0, i64 0, i64 0
  %988 = load i8, i8* %scevgep119.2491, align 1
  %conv84.i720.i.2492 = zext i8 %988 to i32
  %scevgep123.2493 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %980, i64 0, i64 0, i64 0
  %989 = load i8, i8* %scevgep123.2493, align 1
  %conv89.i725.i.2494 = zext i8 %989 to i32
  %xor90.i726.i.2495 = xor i32 %conv84.i720.i.2492, %conv89.i725.i.2494
  %conv91.i727.i.2496 = trunc i32 %xor90.i726.i.2495 to i8
  %scevgep126.2497 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %981, i64 0, i64 0, i64 0
  store i8 %conv91.i727.i.2496, i8* %scevgep126.2497, align 1
  %scevgep107.1.2 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 1
  %990 = load i8, i8* %scevgep107.1.2, align 1
  %conv44.i679.i.1.2 = zext i8 %990 to i32
  %scevgep110.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %977, i64 0, i64 0, i64 1
  %991 = load i8, i8* %scevgep110.1.2, align 1
  %conv49.i684.i.1.2 = zext i8 %991 to i32
  %xor.i685.i.1.2 = xor i32 %conv44.i679.i.1.2, %conv49.i684.i.1.2
  %conv50.i686.i.1.2 = trunc i32 %xor.i685.i.1.2 to i8
  %scevgep114.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %978, i64 0, i64 0, i64 1
  store i8 %conv50.i686.i.1.2, i8* %scevgep114.1.2, align 1
  %992 = load i8, i8* %arrayidx56.i692.i.2, align 1
  %conv57.i693.i.1.2 = zext i8 %992 to i32
  %xor58.i694.i.1.2 = xor i32 %conv57.i693.i.1.2, 1
  %conv59.i695.i.1.2 = trunc i32 %xor58.i694.i.1.2 to i8
  %scevgep111.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %977, i64 0, i64 0, i64 1
  %993 = load i8, i8* %scevgep111.1.2, align 1
  %call64.i700.i.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i695.i.1.2, i8 zeroext %993) #3
  %scevgep118.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %979, i64 0, i64 0, i64 1
  store i8 %call64.i700.i.1.2, i8* %scevgep118.1.2, align 1
  %994 = load i8, i8* %arrayidx70.i706.i.2, align 1
  %scevgep115.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %978, i64 0, i64 0, i64 1
  %995 = load i8, i8* %scevgep115.1.2, align 1
  %call75.i711.i.1.2 = call zeroext i8 @mult(i8 zeroext %994, i8 zeroext %995) #3
  %scevgep122.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %980, i64 0, i64 0, i64 1
  store i8 %call75.i711.i.1.2, i8* %scevgep122.1.2, align 1
  %scevgep119.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %979, i64 0, i64 0, i64 1
  %996 = load i8, i8* %scevgep119.1.2, align 1
  %conv84.i720.i.1.2 = zext i8 %996 to i32
  %scevgep123.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %980, i64 0, i64 0, i64 1
  %997 = load i8, i8* %scevgep123.1.2, align 1
  %conv89.i725.i.1.2 = zext i8 %997 to i32
  %xor90.i726.i.1.2 = xor i32 %conv84.i720.i.1.2, %conv89.i725.i.1.2
  %conv91.i727.i.1.2 = trunc i32 %xor90.i726.i.1.2 to i8
  %scevgep126.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %981, i64 0, i64 0, i64 1
  store i8 %conv91.i727.i.1.2, i8* %scevgep126.1.2, align 1
  %scevgep107.3.2 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 3
  %998 = load i8, i8* %scevgep107.3.2, align 1
  %conv44.i679.i.3.2 = zext i8 %998 to i32
  %scevgep110.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %977, i64 0, i64 0, i64 3
  %999 = load i8, i8* %scevgep110.3.2, align 1
  %conv49.i684.i.3.2 = zext i8 %999 to i32
  %xor.i685.i.3.2 = xor i32 %conv44.i679.i.3.2, %conv49.i684.i.3.2
  %conv50.i686.i.3.2 = trunc i32 %xor.i685.i.3.2 to i8
  %scevgep114.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %978, i64 0, i64 0, i64 3
  store i8 %conv50.i686.i.3.2, i8* %scevgep114.3.2, align 1
  %1000 = load i8, i8* %arrayidx56.i692.i.2, align 1
  %conv57.i693.i.3.2 = zext i8 %1000 to i32
  %xor58.i694.i.3.2 = xor i32 %conv57.i693.i.3.2, 1
  %conv59.i695.i.3.2 = trunc i32 %xor58.i694.i.3.2 to i8
  %scevgep111.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %977, i64 0, i64 0, i64 3
  %1001 = load i8, i8* %scevgep111.3.2, align 1
  %call64.i700.i.3.2 = call zeroext i8 @mult(i8 zeroext %conv59.i695.i.3.2, i8 zeroext %1001) #3
  %scevgep118.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %979, i64 0, i64 0, i64 3
  store i8 %call64.i700.i.3.2, i8* %scevgep118.3.2, align 1
  %1002 = load i8, i8* %arrayidx70.i706.i.2, align 1
  %scevgep115.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %978, i64 0, i64 0, i64 3
  %1003 = load i8, i8* %scevgep115.3.2, align 1
  %call75.i711.i.3.2 = call zeroext i8 @mult(i8 zeroext %1002, i8 zeroext %1003) #3
  %scevgep122.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %980, i64 0, i64 0, i64 3
  store i8 %call75.i711.i.3.2, i8* %scevgep122.3.2, align 1
  %scevgep119.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %979, i64 0, i64 0, i64 3
  %1004 = load i8, i8* %scevgep119.3.2, align 1
  %conv84.i720.i.3.2 = zext i8 %1004 to i32
  %scevgep123.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %980, i64 0, i64 0, i64 3
  %1005 = load i8, i8* %scevgep123.3.2, align 1
  %conv89.i725.i.3.2 = zext i8 %1005 to i32
  %xor90.i726.i.3.2 = xor i32 %conv84.i720.i.3.2, %conv89.i725.i.3.2
  %conv91.i727.i.3.2 = trunc i32 %xor90.i726.i.3.2 to i8
  %scevgep126.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %981, i64 0, i64 0, i64 3
  store i8 %conv91.i727.i.3.2, i8* %scevgep126.3.2, align 1
  %scevgep107.4.2 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 4
  %1006 = load i8, i8* %scevgep107.4.2, align 1
  %conv44.i679.i.4.2 = zext i8 %1006 to i32
  %scevgep110.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %977, i64 0, i64 0, i64 4
  %1007 = load i8, i8* %scevgep110.4.2, align 1
  %conv49.i684.i.4.2 = zext i8 %1007 to i32
  %xor.i685.i.4.2 = xor i32 %conv44.i679.i.4.2, %conv49.i684.i.4.2
  %conv50.i686.i.4.2 = trunc i32 %xor.i685.i.4.2 to i8
  %scevgep114.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %978, i64 0, i64 0, i64 4
  store i8 %conv50.i686.i.4.2, i8* %scevgep114.4.2, align 1
  %1008 = load i8, i8* %arrayidx56.i692.i.2, align 1
  %conv57.i693.i.4.2 = zext i8 %1008 to i32
  %xor58.i694.i.4.2 = xor i32 %conv57.i693.i.4.2, 1
  %conv59.i695.i.4.2 = trunc i32 %xor58.i694.i.4.2 to i8
  %scevgep111.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %977, i64 0, i64 0, i64 4
  %1009 = load i8, i8* %scevgep111.4.2, align 1
  %call64.i700.i.4.2 = call zeroext i8 @mult(i8 zeroext %conv59.i695.i.4.2, i8 zeroext %1009) #3
  %scevgep118.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %979, i64 0, i64 0, i64 4
  store i8 %call64.i700.i.4.2, i8* %scevgep118.4.2, align 1
  %1010 = load i8, i8* %arrayidx70.i706.i.2, align 1
  %scevgep115.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %978, i64 0, i64 0, i64 4
  %1011 = load i8, i8* %scevgep115.4.2, align 1
  %call75.i711.i.4.2 = call zeroext i8 @mult(i8 zeroext %1010, i8 zeroext %1011) #3
  %scevgep122.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %980, i64 0, i64 0, i64 4
  store i8 %call75.i711.i.4.2, i8* %scevgep122.4.2, align 1
  %scevgep119.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %979, i64 0, i64 0, i64 4
  %1012 = load i8, i8* %scevgep119.4.2, align 1
  %conv84.i720.i.4.2 = zext i8 %1012 to i32
  %scevgep123.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %980, i64 0, i64 0, i64 4
  %1013 = load i8, i8* %scevgep123.4.2, align 1
  %conv89.i725.i.4.2 = zext i8 %1013 to i32
  %xor90.i726.i.4.2 = xor i32 %conv84.i720.i.4.2, %conv89.i725.i.4.2
  %conv91.i727.i.4.2 = trunc i32 %xor90.i726.i.4.2 to i8
  %scevgep126.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %981, i64 0, i64 0, i64 4
  store i8 %conv91.i727.i.4.2, i8* %scevgep126.4.2, align 1
  %scevgep109.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %977, i64 0, i64 1, i64 0
  %1014 = bitcast i8* %scevgep109.2 to [5 x [5 x i8]]*
  %scevgep113.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %978, i64 0, i64 1, i64 0
  %1015 = bitcast i8* %scevgep113.2 to [5 x [5 x i8]]*
  %scevgep117.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %979, i64 0, i64 1, i64 0
  %1016 = bitcast i8* %scevgep117.2 to [5 x [5 x i8]]*
  %scevgep121.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %980, i64 0, i64 1, i64 0
  %1017 = bitcast i8* %scevgep121.2 to [5 x [5 x i8]]*
  %scevgep125.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %981, i64 0, i64 1, i64 0
  %1018 = bitcast i8* %scevgep125.2 to [5 x [5 x i8]]*
  %arrayidx56.i692.i.3 = getelementptr inbounds i8, i8* %arraydecay20.i, i64 3
  %arrayidx70.i706.i.3 = getelementptr inbounds i8, i8* %arraydecay20.i, i64 3
  %scevgep107.3502 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 0
  %1019 = load i8, i8* %scevgep107.3502, align 1
  %conv44.i679.i.3503 = zext i8 %1019 to i32
  %scevgep110.3504 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1014, i64 0, i64 0, i64 0
  %1020 = load i8, i8* %scevgep110.3504, align 1
  %conv49.i684.i.3505 = zext i8 %1020 to i32
  %xor.i685.i.3506 = xor i32 %conv44.i679.i.3503, %conv49.i684.i.3505
  %conv50.i686.i.3507 = trunc i32 %xor.i685.i.3506 to i8
  %scevgep114.3508 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1015, i64 0, i64 0, i64 0
  store i8 %conv50.i686.i.3507, i8* %scevgep114.3508, align 1
  %1021 = load i8, i8* %arrayidx56.i692.i.3, align 1
  %conv57.i693.i.3509 = zext i8 %1021 to i32
  %xor58.i694.i.3510 = xor i32 %conv57.i693.i.3509, 1
  %conv59.i695.i.3511 = trunc i32 %xor58.i694.i.3510 to i8
  %scevgep111.3512 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1014, i64 0, i64 0, i64 0
  %1022 = load i8, i8* %scevgep111.3512, align 1
  %call64.i700.i.3513 = call zeroext i8 @mult(i8 zeroext %conv59.i695.i.3511, i8 zeroext %1022) #3
  %scevgep118.3514 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1016, i64 0, i64 0, i64 0
  store i8 %call64.i700.i.3513, i8* %scevgep118.3514, align 1
  %1023 = load i8, i8* %arrayidx70.i706.i.3, align 1
  %scevgep115.3515 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1015, i64 0, i64 0, i64 0
  %1024 = load i8, i8* %scevgep115.3515, align 1
  %call75.i711.i.3516 = call zeroext i8 @mult(i8 zeroext %1023, i8 zeroext %1024) #3
  %scevgep122.3517 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1017, i64 0, i64 0, i64 0
  store i8 %call75.i711.i.3516, i8* %scevgep122.3517, align 1
  %scevgep119.3518 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1016, i64 0, i64 0, i64 0
  %1025 = load i8, i8* %scevgep119.3518, align 1
  %conv84.i720.i.3519 = zext i8 %1025 to i32
  %scevgep123.3520 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1017, i64 0, i64 0, i64 0
  %1026 = load i8, i8* %scevgep123.3520, align 1
  %conv89.i725.i.3521 = zext i8 %1026 to i32
  %xor90.i726.i.3522 = xor i32 %conv84.i720.i.3519, %conv89.i725.i.3521
  %conv91.i727.i.3523 = trunc i32 %xor90.i726.i.3522 to i8
  %scevgep126.3524 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1018, i64 0, i64 0, i64 0
  store i8 %conv91.i727.i.3523, i8* %scevgep126.3524, align 1
  %scevgep107.1.3 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 1
  %1027 = load i8, i8* %scevgep107.1.3, align 1
  %conv44.i679.i.1.3 = zext i8 %1027 to i32
  %scevgep110.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1014, i64 0, i64 0, i64 1
  %1028 = load i8, i8* %scevgep110.1.3, align 1
  %conv49.i684.i.1.3 = zext i8 %1028 to i32
  %xor.i685.i.1.3 = xor i32 %conv44.i679.i.1.3, %conv49.i684.i.1.3
  %conv50.i686.i.1.3 = trunc i32 %xor.i685.i.1.3 to i8
  %scevgep114.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1015, i64 0, i64 0, i64 1
  store i8 %conv50.i686.i.1.3, i8* %scevgep114.1.3, align 1
  %1029 = load i8, i8* %arrayidx56.i692.i.3, align 1
  %conv57.i693.i.1.3 = zext i8 %1029 to i32
  %xor58.i694.i.1.3 = xor i32 %conv57.i693.i.1.3, 1
  %conv59.i695.i.1.3 = trunc i32 %xor58.i694.i.1.3 to i8
  %scevgep111.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1014, i64 0, i64 0, i64 1
  %1030 = load i8, i8* %scevgep111.1.3, align 1
  %call64.i700.i.1.3 = call zeroext i8 @mult(i8 zeroext %conv59.i695.i.1.3, i8 zeroext %1030) #3
  %scevgep118.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1016, i64 0, i64 0, i64 1
  store i8 %call64.i700.i.1.3, i8* %scevgep118.1.3, align 1
  %1031 = load i8, i8* %arrayidx70.i706.i.3, align 1
  %scevgep115.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1015, i64 0, i64 0, i64 1
  %1032 = load i8, i8* %scevgep115.1.3, align 1
  %call75.i711.i.1.3 = call zeroext i8 @mult(i8 zeroext %1031, i8 zeroext %1032) #3
  %scevgep122.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1017, i64 0, i64 0, i64 1
  store i8 %call75.i711.i.1.3, i8* %scevgep122.1.3, align 1
  %scevgep119.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1016, i64 0, i64 0, i64 1
  %1033 = load i8, i8* %scevgep119.1.3, align 1
  %conv84.i720.i.1.3 = zext i8 %1033 to i32
  %scevgep123.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1017, i64 0, i64 0, i64 1
  %1034 = load i8, i8* %scevgep123.1.3, align 1
  %conv89.i725.i.1.3 = zext i8 %1034 to i32
  %xor90.i726.i.1.3 = xor i32 %conv84.i720.i.1.3, %conv89.i725.i.1.3
  %conv91.i727.i.1.3 = trunc i32 %xor90.i726.i.1.3 to i8
  %scevgep126.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1018, i64 0, i64 0, i64 1
  store i8 %conv91.i727.i.1.3, i8* %scevgep126.1.3, align 1
  %scevgep107.2.3 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 2
  %1035 = load i8, i8* %scevgep107.2.3, align 1
  %conv44.i679.i.2.3 = zext i8 %1035 to i32
  %scevgep110.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1014, i64 0, i64 0, i64 2
  %1036 = load i8, i8* %scevgep110.2.3, align 1
  %conv49.i684.i.2.3 = zext i8 %1036 to i32
  %xor.i685.i.2.3 = xor i32 %conv44.i679.i.2.3, %conv49.i684.i.2.3
  %conv50.i686.i.2.3 = trunc i32 %xor.i685.i.2.3 to i8
  %scevgep114.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1015, i64 0, i64 0, i64 2
  store i8 %conv50.i686.i.2.3, i8* %scevgep114.2.3, align 1
  %1037 = load i8, i8* %arrayidx56.i692.i.3, align 1
  %conv57.i693.i.2.3 = zext i8 %1037 to i32
  %xor58.i694.i.2.3 = xor i32 %conv57.i693.i.2.3, 1
  %conv59.i695.i.2.3 = trunc i32 %xor58.i694.i.2.3 to i8
  %scevgep111.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1014, i64 0, i64 0, i64 2
  %1038 = load i8, i8* %scevgep111.2.3, align 1
  %call64.i700.i.2.3 = call zeroext i8 @mult(i8 zeroext %conv59.i695.i.2.3, i8 zeroext %1038) #3
  %scevgep118.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1016, i64 0, i64 0, i64 2
  store i8 %call64.i700.i.2.3, i8* %scevgep118.2.3, align 1
  %1039 = load i8, i8* %arrayidx70.i706.i.3, align 1
  %scevgep115.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1015, i64 0, i64 0, i64 2
  %1040 = load i8, i8* %scevgep115.2.3, align 1
  %call75.i711.i.2.3 = call zeroext i8 @mult(i8 zeroext %1039, i8 zeroext %1040) #3
  %scevgep122.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1017, i64 0, i64 0, i64 2
  store i8 %call75.i711.i.2.3, i8* %scevgep122.2.3, align 1
  %scevgep119.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1016, i64 0, i64 0, i64 2
  %1041 = load i8, i8* %scevgep119.2.3, align 1
  %conv84.i720.i.2.3 = zext i8 %1041 to i32
  %scevgep123.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1017, i64 0, i64 0, i64 2
  %1042 = load i8, i8* %scevgep123.2.3, align 1
  %conv89.i725.i.2.3 = zext i8 %1042 to i32
  %xor90.i726.i.2.3 = xor i32 %conv84.i720.i.2.3, %conv89.i725.i.2.3
  %conv91.i727.i.2.3 = trunc i32 %xor90.i726.i.2.3 to i8
  %scevgep126.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1018, i64 0, i64 0, i64 2
  store i8 %conv91.i727.i.2.3, i8* %scevgep126.2.3, align 1
  %scevgep107.4.3 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 4
  %1043 = load i8, i8* %scevgep107.4.3, align 1
  %conv44.i679.i.4.3 = zext i8 %1043 to i32
  %scevgep110.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1014, i64 0, i64 0, i64 4
  %1044 = load i8, i8* %scevgep110.4.3, align 1
  %conv49.i684.i.4.3 = zext i8 %1044 to i32
  %xor.i685.i.4.3 = xor i32 %conv44.i679.i.4.3, %conv49.i684.i.4.3
  %conv50.i686.i.4.3 = trunc i32 %xor.i685.i.4.3 to i8
  %scevgep114.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1015, i64 0, i64 0, i64 4
  store i8 %conv50.i686.i.4.3, i8* %scevgep114.4.3, align 1
  %1045 = load i8, i8* %arrayidx56.i692.i.3, align 1
  %conv57.i693.i.4.3 = zext i8 %1045 to i32
  %xor58.i694.i.4.3 = xor i32 %conv57.i693.i.4.3, 1
  %conv59.i695.i.4.3 = trunc i32 %xor58.i694.i.4.3 to i8
  %scevgep111.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1014, i64 0, i64 0, i64 4
  %1046 = load i8, i8* %scevgep111.4.3, align 1
  %call64.i700.i.4.3 = call zeroext i8 @mult(i8 zeroext %conv59.i695.i.4.3, i8 zeroext %1046) #3
  %scevgep118.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1016, i64 0, i64 0, i64 4
  store i8 %call64.i700.i.4.3, i8* %scevgep118.4.3, align 1
  %1047 = load i8, i8* %arrayidx70.i706.i.3, align 1
  %scevgep115.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1015, i64 0, i64 0, i64 4
  %1048 = load i8, i8* %scevgep115.4.3, align 1
  %call75.i711.i.4.3 = call zeroext i8 @mult(i8 zeroext %1047, i8 zeroext %1048) #3
  %scevgep122.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1017, i64 0, i64 0, i64 4
  store i8 %call75.i711.i.4.3, i8* %scevgep122.4.3, align 1
  %scevgep119.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1016, i64 0, i64 0, i64 4
  %1049 = load i8, i8* %scevgep119.4.3, align 1
  %conv84.i720.i.4.3 = zext i8 %1049 to i32
  %scevgep123.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1017, i64 0, i64 0, i64 4
  %1050 = load i8, i8* %scevgep123.4.3, align 1
  %conv89.i725.i.4.3 = zext i8 %1050 to i32
  %xor90.i726.i.4.3 = xor i32 %conv84.i720.i.4.3, %conv89.i725.i.4.3
  %conv91.i727.i.4.3 = trunc i32 %xor90.i726.i.4.3 to i8
  %scevgep126.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1018, i64 0, i64 0, i64 4
  store i8 %conv91.i727.i.4.3, i8* %scevgep126.4.3, align 1
  %scevgep109.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1014, i64 0, i64 1, i64 0
  %1051 = bitcast i8* %scevgep109.3 to [5 x [5 x i8]]*
  %scevgep113.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1015, i64 0, i64 1, i64 0
  %1052 = bitcast i8* %scevgep113.3 to [5 x [5 x i8]]*
  %scevgep117.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1016, i64 0, i64 1, i64 0
  %1053 = bitcast i8* %scevgep117.3 to [5 x [5 x i8]]*
  %scevgep121.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1017, i64 0, i64 1, i64 0
  %1054 = bitcast i8* %scevgep121.3 to [5 x [5 x i8]]*
  %scevgep125.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1018, i64 0, i64 1, i64 0
  %1055 = bitcast i8* %scevgep125.3 to [5 x [5 x i8]]*
  %arrayidx56.i692.i.4 = getelementptr inbounds i8, i8* %arraydecay20.i, i64 4
  %arrayidx70.i706.i.4 = getelementptr inbounds i8, i8* %arraydecay20.i, i64 4
  %scevgep107.4529 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 0
  %1056 = load i8, i8* %scevgep107.4529, align 1
  %conv44.i679.i.4530 = zext i8 %1056 to i32
  %scevgep110.4531 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1051, i64 0, i64 0, i64 0
  %1057 = load i8, i8* %scevgep110.4531, align 1
  %conv49.i684.i.4532 = zext i8 %1057 to i32
  %xor.i685.i.4533 = xor i32 %conv44.i679.i.4530, %conv49.i684.i.4532
  %conv50.i686.i.4534 = trunc i32 %xor.i685.i.4533 to i8
  %scevgep114.4535 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1052, i64 0, i64 0, i64 0
  store i8 %conv50.i686.i.4534, i8* %scevgep114.4535, align 1
  %1058 = load i8, i8* %arrayidx56.i692.i.4, align 1
  %conv57.i693.i.4536 = zext i8 %1058 to i32
  %xor58.i694.i.4537 = xor i32 %conv57.i693.i.4536, 1
  %conv59.i695.i.4538 = trunc i32 %xor58.i694.i.4537 to i8
  %scevgep111.4539 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1051, i64 0, i64 0, i64 0
  %1059 = load i8, i8* %scevgep111.4539, align 1
  %call64.i700.i.4540 = call zeroext i8 @mult(i8 zeroext %conv59.i695.i.4538, i8 zeroext %1059) #3
  %scevgep118.4541 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1053, i64 0, i64 0, i64 0
  store i8 %call64.i700.i.4540, i8* %scevgep118.4541, align 1
  %1060 = load i8, i8* %arrayidx70.i706.i.4, align 1
  %scevgep115.4542 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1052, i64 0, i64 0, i64 0
  %1061 = load i8, i8* %scevgep115.4542, align 1
  %call75.i711.i.4543 = call zeroext i8 @mult(i8 zeroext %1060, i8 zeroext %1061) #3
  %scevgep122.4544 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1054, i64 0, i64 0, i64 0
  store i8 %call75.i711.i.4543, i8* %scevgep122.4544, align 1
  %scevgep119.4545 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1053, i64 0, i64 0, i64 0
  %1062 = load i8, i8* %scevgep119.4545, align 1
  %conv84.i720.i.4546 = zext i8 %1062 to i32
  %scevgep123.4547 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1054, i64 0, i64 0, i64 0
  %1063 = load i8, i8* %scevgep123.4547, align 1
  %conv89.i725.i.4548 = zext i8 %1063 to i32
  %xor90.i726.i.4549 = xor i32 %conv84.i720.i.4546, %conv89.i725.i.4548
  %conv91.i727.i.4550 = trunc i32 %xor90.i726.i.4549 to i8
  %scevgep126.4551 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1055, i64 0, i64 0, i64 0
  store i8 %conv91.i727.i.4550, i8* %scevgep126.4551, align 1
  %scevgep107.1.4 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 1
  %1064 = load i8, i8* %scevgep107.1.4, align 1
  %conv44.i679.i.1.4 = zext i8 %1064 to i32
  %scevgep110.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1051, i64 0, i64 0, i64 1
  %1065 = load i8, i8* %scevgep110.1.4, align 1
  %conv49.i684.i.1.4 = zext i8 %1065 to i32
  %xor.i685.i.1.4 = xor i32 %conv44.i679.i.1.4, %conv49.i684.i.1.4
  %conv50.i686.i.1.4 = trunc i32 %xor.i685.i.1.4 to i8
  %scevgep114.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1052, i64 0, i64 0, i64 1
  store i8 %conv50.i686.i.1.4, i8* %scevgep114.1.4, align 1
  %1066 = load i8, i8* %arrayidx56.i692.i.4, align 1
  %conv57.i693.i.1.4 = zext i8 %1066 to i32
  %xor58.i694.i.1.4 = xor i32 %conv57.i693.i.1.4, 1
  %conv59.i695.i.1.4 = trunc i32 %xor58.i694.i.1.4 to i8
  %scevgep111.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1051, i64 0, i64 0, i64 1
  %1067 = load i8, i8* %scevgep111.1.4, align 1
  %call64.i700.i.1.4 = call zeroext i8 @mult(i8 zeroext %conv59.i695.i.1.4, i8 zeroext %1067) #3
  %scevgep118.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1053, i64 0, i64 0, i64 1
  store i8 %call64.i700.i.1.4, i8* %scevgep118.1.4, align 1
  %1068 = load i8, i8* %arrayidx70.i706.i.4, align 1
  %scevgep115.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1052, i64 0, i64 0, i64 1
  %1069 = load i8, i8* %scevgep115.1.4, align 1
  %call75.i711.i.1.4 = call zeroext i8 @mult(i8 zeroext %1068, i8 zeroext %1069) #3
  %scevgep122.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1054, i64 0, i64 0, i64 1
  store i8 %call75.i711.i.1.4, i8* %scevgep122.1.4, align 1
  %scevgep119.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1053, i64 0, i64 0, i64 1
  %1070 = load i8, i8* %scevgep119.1.4, align 1
  %conv84.i720.i.1.4 = zext i8 %1070 to i32
  %scevgep123.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1054, i64 0, i64 0, i64 1
  %1071 = load i8, i8* %scevgep123.1.4, align 1
  %conv89.i725.i.1.4 = zext i8 %1071 to i32
  %xor90.i726.i.1.4 = xor i32 %conv84.i720.i.1.4, %conv89.i725.i.1.4
  %conv91.i727.i.1.4 = trunc i32 %xor90.i726.i.1.4 to i8
  %scevgep126.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1055, i64 0, i64 0, i64 1
  store i8 %conv91.i727.i.1.4, i8* %scevgep126.1.4, align 1
  %scevgep107.2.4 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 2
  %1072 = load i8, i8* %scevgep107.2.4, align 1
  %conv44.i679.i.2.4 = zext i8 %1072 to i32
  %scevgep110.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1051, i64 0, i64 0, i64 2
  %1073 = load i8, i8* %scevgep110.2.4, align 1
  %conv49.i684.i.2.4 = zext i8 %1073 to i32
  %xor.i685.i.2.4 = xor i32 %conv44.i679.i.2.4, %conv49.i684.i.2.4
  %conv50.i686.i.2.4 = trunc i32 %xor.i685.i.2.4 to i8
  %scevgep114.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1052, i64 0, i64 0, i64 2
  store i8 %conv50.i686.i.2.4, i8* %scevgep114.2.4, align 1
  %1074 = load i8, i8* %arrayidx56.i692.i.4, align 1
  %conv57.i693.i.2.4 = zext i8 %1074 to i32
  %xor58.i694.i.2.4 = xor i32 %conv57.i693.i.2.4, 1
  %conv59.i695.i.2.4 = trunc i32 %xor58.i694.i.2.4 to i8
  %scevgep111.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1051, i64 0, i64 0, i64 2
  %1075 = load i8, i8* %scevgep111.2.4, align 1
  %call64.i700.i.2.4 = call zeroext i8 @mult(i8 zeroext %conv59.i695.i.2.4, i8 zeroext %1075) #3
  %scevgep118.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1053, i64 0, i64 0, i64 2
  store i8 %call64.i700.i.2.4, i8* %scevgep118.2.4, align 1
  %1076 = load i8, i8* %arrayidx70.i706.i.4, align 1
  %scevgep115.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1052, i64 0, i64 0, i64 2
  %1077 = load i8, i8* %scevgep115.2.4, align 1
  %call75.i711.i.2.4 = call zeroext i8 @mult(i8 zeroext %1076, i8 zeroext %1077) #3
  %scevgep122.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1054, i64 0, i64 0, i64 2
  store i8 %call75.i711.i.2.4, i8* %scevgep122.2.4, align 1
  %scevgep119.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1053, i64 0, i64 0, i64 2
  %1078 = load i8, i8* %scevgep119.2.4, align 1
  %conv84.i720.i.2.4 = zext i8 %1078 to i32
  %scevgep123.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1054, i64 0, i64 0, i64 2
  %1079 = load i8, i8* %scevgep123.2.4, align 1
  %conv89.i725.i.2.4 = zext i8 %1079 to i32
  %xor90.i726.i.2.4 = xor i32 %conv84.i720.i.2.4, %conv89.i725.i.2.4
  %conv91.i727.i.2.4 = trunc i32 %xor90.i726.i.2.4 to i8
  %scevgep126.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1055, i64 0, i64 0, i64 2
  store i8 %conv91.i727.i.2.4, i8* %scevgep126.2.4, align 1
  %scevgep107.3.4 = getelementptr [5 x i8], [5 x i8]* %z.i, i64 0, i64 3
  %1080 = load i8, i8* %scevgep107.3.4, align 1
  %conv44.i679.i.3.4 = zext i8 %1080 to i32
  %scevgep110.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1051, i64 0, i64 0, i64 3
  %1081 = load i8, i8* %scevgep110.3.4, align 1
  %conv49.i684.i.3.4 = zext i8 %1081 to i32
  %xor.i685.i.3.4 = xor i32 %conv44.i679.i.3.4, %conv49.i684.i.3.4
  %conv50.i686.i.3.4 = trunc i32 %xor.i685.i.3.4 to i8
  %scevgep114.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1052, i64 0, i64 0, i64 3
  store i8 %conv50.i686.i.3.4, i8* %scevgep114.3.4, align 1
  %1082 = load i8, i8* %arrayidx56.i692.i.4, align 1
  %conv57.i693.i.3.4 = zext i8 %1082 to i32
  %xor58.i694.i.3.4 = xor i32 %conv57.i693.i.3.4, 1
  %conv59.i695.i.3.4 = trunc i32 %xor58.i694.i.3.4 to i8
  %scevgep111.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1051, i64 0, i64 0, i64 3
  %1083 = load i8, i8* %scevgep111.3.4, align 1
  %call64.i700.i.3.4 = call zeroext i8 @mult(i8 zeroext %conv59.i695.i.3.4, i8 zeroext %1083) #3
  %scevgep118.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1053, i64 0, i64 0, i64 3
  store i8 %call64.i700.i.3.4, i8* %scevgep118.3.4, align 1
  %1084 = load i8, i8* %arrayidx70.i706.i.4, align 1
  %scevgep115.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1052, i64 0, i64 0, i64 3
  %1085 = load i8, i8* %scevgep115.3.4, align 1
  %call75.i711.i.3.4 = call zeroext i8 @mult(i8 zeroext %1084, i8 zeroext %1085) #3
  %scevgep122.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1054, i64 0, i64 0, i64 3
  store i8 %call75.i711.i.3.4, i8* %scevgep122.3.4, align 1
  %scevgep119.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1053, i64 0, i64 0, i64 3
  %1086 = load i8, i8* %scevgep119.3.4, align 1
  %conv84.i720.i.3.4 = zext i8 %1086 to i32
  %scevgep123.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1054, i64 0, i64 0, i64 3
  %1087 = load i8, i8* %scevgep123.3.4, align 1
  %conv89.i725.i.3.4 = zext i8 %1087 to i32
  %xor90.i726.i.3.4 = xor i32 %conv84.i720.i.3.4, %conv89.i725.i.3.4
  %conv91.i727.i.3.4 = trunc i32 %xor90.i726.i.3.4 to i8
  %scevgep126.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1055, i64 0, i64 0, i64 3
  store i8 %conv91.i727.i.3.4, i8* %scevgep126.3.4, align 1
  %1088 = load i8, i8* %arraydecay20.i, align 1
  %1089 = load i8, i8* %arraydecay21.i, align 1
  %call111.i744.i = call zeroext i8 @mult(i8 zeroext %1088, i8 zeroext %1089) #3
  store i8 %call111.i744.i, i8* %arraydecay, align 1
  %scevgep98.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  %1090 = load i8, i8* %scevgep98.1, align 1
  %conv126.i756.i.1 = zext i8 %1090 to i32
  %1091 = load i8, i8* %arraydecay, align 1
  %conv129.i759.i.1 = zext i8 %1091 to i32
  %xor130.i760.i.1 = xor i32 %conv129.i759.i.1, %conv126.i756.i.1
  %conv131.i761.i.1 = trunc i32 %xor130.i760.i.1 to i8
  store i8 %conv131.i761.i.1, i8* %arraydecay, align 1
  %scevgep98.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i.i, i64 0, i64 0, i64 2
  %1092 = load i8, i8* %scevgep98.2, align 1
  %conv126.i756.i.2 = zext i8 %1092 to i32
  %1093 = load i8, i8* %arraydecay, align 1
  %conv129.i759.i.2 = zext i8 %1093 to i32
  %xor130.i760.i.2 = xor i32 %conv129.i759.i.2, %conv126.i756.i.2
  %conv131.i761.i.2 = trunc i32 %xor130.i760.i.2 to i8
  store i8 %conv131.i761.i.2, i8* %arraydecay, align 1
  %scevgep98.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i.i, i64 0, i64 0, i64 3
  %1094 = load i8, i8* %scevgep98.3, align 1
  %conv126.i756.i.3 = zext i8 %1094 to i32
  %1095 = load i8, i8* %arraydecay, align 1
  %conv129.i759.i.3 = zext i8 %1095 to i32
  %xor130.i760.i.3 = xor i32 %conv129.i759.i.3, %conv126.i756.i.3
  %conv131.i761.i.3 = trunc i32 %xor130.i760.i.3 to i8
  store i8 %conv131.i761.i.3, i8* %arraydecay, align 1
  %scevgep98.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i.i, i64 0, i64 0, i64 4
  %1096 = load i8, i8* %scevgep98.4, align 1
  %conv126.i756.i.4 = zext i8 %1096 to i32
  %1097 = load i8, i8* %arraydecay, align 1
  %conv129.i759.i.4 = zext i8 %1097 to i32
  %xor130.i760.i.4 = xor i32 %conv129.i759.i.4, %conv126.i756.i.4
  %conv131.i761.i.4 = trunc i32 %xor130.i760.i.4 to i8
  store i8 %conv131.i761.i.4, i8* %arraydecay, align 1
  %scevgep97 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %1098 = bitcast i8* %scevgep97 to [5 x [5 x i8]]*
  %arrayidx108.i741.i.1 = getelementptr inbounds i8, i8* %arraydecay20.i, i64 1
  %1099 = load i8, i8* %arrayidx108.i741.i.1, align 1
  %arrayidx110.i743.i.1 = getelementptr inbounds i8, i8* %arraydecay21.i, i64 1
  %1100 = load i8, i8* %arrayidx110.i743.i.1, align 1
  %call111.i744.i.1 = call zeroext i8 @mult(i8 zeroext %1099, i8 zeroext %1100) #3
  %arrayidx113.i746.i.1 = getelementptr inbounds i8, i8* %arraydecay, i64 1
  store i8 %call111.i744.i.1, i8* %arrayidx113.i746.i.1, align 1
  %arrayidx128.i758.i.1 = getelementptr inbounds i8, i8* %arraydecay, i64 1
  %scevgep98.1412 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1098, i64 0, i64 0, i64 0
  %1101 = load i8, i8* %scevgep98.1412, align 1
  %conv126.i756.i.1413 = zext i8 %1101 to i32
  %1102 = load i8, i8* %arrayidx128.i758.i.1, align 1
  %conv129.i759.i.1414 = zext i8 %1102 to i32
  %xor130.i760.i.1415 = xor i32 %conv129.i759.i.1414, %conv126.i756.i.1413
  %conv131.i761.i.1416 = trunc i32 %xor130.i760.i.1415 to i8
  store i8 %conv131.i761.i.1416, i8* %arrayidx128.i758.i.1, align 1
  %scevgep98.2.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1098, i64 0, i64 0, i64 2
  %1103 = load i8, i8* %scevgep98.2.1, align 1
  %conv126.i756.i.2.1 = zext i8 %1103 to i32
  %1104 = load i8, i8* %arrayidx128.i758.i.1, align 1
  %conv129.i759.i.2.1 = zext i8 %1104 to i32
  %xor130.i760.i.2.1 = xor i32 %conv129.i759.i.2.1, %conv126.i756.i.2.1
  %conv131.i761.i.2.1 = trunc i32 %xor130.i760.i.2.1 to i8
  store i8 %conv131.i761.i.2.1, i8* %arrayidx128.i758.i.1, align 1
  %scevgep98.3.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1098, i64 0, i64 0, i64 3
  %1105 = load i8, i8* %scevgep98.3.1, align 1
  %conv126.i756.i.3.1 = zext i8 %1105 to i32
  %1106 = load i8, i8* %arrayidx128.i758.i.1, align 1
  %conv129.i759.i.3.1 = zext i8 %1106 to i32
  %xor130.i760.i.3.1 = xor i32 %conv129.i759.i.3.1, %conv126.i756.i.3.1
  %conv131.i761.i.3.1 = trunc i32 %xor130.i760.i.3.1 to i8
  store i8 %conv131.i761.i.3.1, i8* %arrayidx128.i758.i.1, align 1
  %scevgep98.4.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1098, i64 0, i64 0, i64 4
  %1107 = load i8, i8* %scevgep98.4.1, align 1
  %conv126.i756.i.4.1 = zext i8 %1107 to i32
  %1108 = load i8, i8* %arrayidx128.i758.i.1, align 1
  %conv129.i759.i.4.1 = zext i8 %1108 to i32
  %xor130.i760.i.4.1 = xor i32 %conv129.i759.i.4.1, %conv126.i756.i.4.1
  %conv131.i761.i.4.1 = trunc i32 %xor130.i760.i.4.1 to i8
  store i8 %conv131.i761.i.4.1, i8* %arrayidx128.i758.i.1, align 1
  %scevgep97.1 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1098, i64 0, i64 1, i64 0
  %1109 = bitcast i8* %scevgep97.1 to [5 x [5 x i8]]*
  %arrayidx108.i741.i.2 = getelementptr inbounds i8, i8* %arraydecay20.i, i64 2
  %1110 = load i8, i8* %arrayidx108.i741.i.2, align 1
  %arrayidx110.i743.i.2 = getelementptr inbounds i8, i8* %arraydecay21.i, i64 2
  %1111 = load i8, i8* %arrayidx110.i743.i.2, align 1
  %call111.i744.i.2 = call zeroext i8 @mult(i8 zeroext %1110, i8 zeroext %1111) #3
  %arrayidx113.i746.i.2 = getelementptr inbounds i8, i8* %arraydecay, i64 2
  store i8 %call111.i744.i.2, i8* %arrayidx113.i746.i.2, align 1
  %arrayidx128.i758.i.2 = getelementptr inbounds i8, i8* %arraydecay, i64 2
  %scevgep98.2421 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1109, i64 0, i64 0, i64 0
  %1112 = load i8, i8* %scevgep98.2421, align 1
  %conv126.i756.i.2422 = zext i8 %1112 to i32
  %1113 = load i8, i8* %arrayidx128.i758.i.2, align 1
  %conv129.i759.i.2423 = zext i8 %1113 to i32
  %xor130.i760.i.2424 = xor i32 %conv129.i759.i.2423, %conv126.i756.i.2422
  %conv131.i761.i.2425 = trunc i32 %xor130.i760.i.2424 to i8
  store i8 %conv131.i761.i.2425, i8* %arrayidx128.i758.i.2, align 1
  %scevgep98.1.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1109, i64 0, i64 0, i64 1
  %1114 = load i8, i8* %scevgep98.1.2, align 1
  %conv126.i756.i.1.2 = zext i8 %1114 to i32
  %1115 = load i8, i8* %arrayidx128.i758.i.2, align 1
  %conv129.i759.i.1.2 = zext i8 %1115 to i32
  %xor130.i760.i.1.2 = xor i32 %conv129.i759.i.1.2, %conv126.i756.i.1.2
  %conv131.i761.i.1.2 = trunc i32 %xor130.i760.i.1.2 to i8
  store i8 %conv131.i761.i.1.2, i8* %arrayidx128.i758.i.2, align 1
  %scevgep98.3.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1109, i64 0, i64 0, i64 3
  %1116 = load i8, i8* %scevgep98.3.2, align 1
  %conv126.i756.i.3.2 = zext i8 %1116 to i32
  %1117 = load i8, i8* %arrayidx128.i758.i.2, align 1
  %conv129.i759.i.3.2 = zext i8 %1117 to i32
  %xor130.i760.i.3.2 = xor i32 %conv129.i759.i.3.2, %conv126.i756.i.3.2
  %conv131.i761.i.3.2 = trunc i32 %xor130.i760.i.3.2 to i8
  store i8 %conv131.i761.i.3.2, i8* %arrayidx128.i758.i.2, align 1
  %scevgep98.4.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1109, i64 0, i64 0, i64 4
  %1118 = load i8, i8* %scevgep98.4.2, align 1
  %conv126.i756.i.4.2 = zext i8 %1118 to i32
  %1119 = load i8, i8* %arrayidx128.i758.i.2, align 1
  %conv129.i759.i.4.2 = zext i8 %1119 to i32
  %xor130.i760.i.4.2 = xor i32 %conv129.i759.i.4.2, %conv126.i756.i.4.2
  %conv131.i761.i.4.2 = trunc i32 %xor130.i760.i.4.2 to i8
  store i8 %conv131.i761.i.4.2, i8* %arrayidx128.i758.i.2, align 1
  %scevgep97.2 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1109, i64 0, i64 1, i64 0
  %1120 = bitcast i8* %scevgep97.2 to [5 x [5 x i8]]*
  %arrayidx108.i741.i.3 = getelementptr inbounds i8, i8* %arraydecay20.i, i64 3
  %1121 = load i8, i8* %arrayidx108.i741.i.3, align 1
  %arrayidx110.i743.i.3 = getelementptr inbounds i8, i8* %arraydecay21.i, i64 3
  %1122 = load i8, i8* %arrayidx110.i743.i.3, align 1
  %call111.i744.i.3 = call zeroext i8 @mult(i8 zeroext %1121, i8 zeroext %1122) #3
  %arrayidx113.i746.i.3 = getelementptr inbounds i8, i8* %arraydecay, i64 3
  store i8 %call111.i744.i.3, i8* %arrayidx113.i746.i.3, align 1
  %arrayidx128.i758.i.3 = getelementptr inbounds i8, i8* %arraydecay, i64 3
  %scevgep98.3430 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1120, i64 0, i64 0, i64 0
  %1123 = load i8, i8* %scevgep98.3430, align 1
  %conv126.i756.i.3431 = zext i8 %1123 to i32
  %1124 = load i8, i8* %arrayidx128.i758.i.3, align 1
  %conv129.i759.i.3432 = zext i8 %1124 to i32
  %xor130.i760.i.3433 = xor i32 %conv129.i759.i.3432, %conv126.i756.i.3431
  %conv131.i761.i.3434 = trunc i32 %xor130.i760.i.3433 to i8
  store i8 %conv131.i761.i.3434, i8* %arrayidx128.i758.i.3, align 1
  %scevgep98.1.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1120, i64 0, i64 0, i64 1
  %1125 = load i8, i8* %scevgep98.1.3, align 1
  %conv126.i756.i.1.3 = zext i8 %1125 to i32
  %1126 = load i8, i8* %arrayidx128.i758.i.3, align 1
  %conv129.i759.i.1.3 = zext i8 %1126 to i32
  %xor130.i760.i.1.3 = xor i32 %conv129.i759.i.1.3, %conv126.i756.i.1.3
  %conv131.i761.i.1.3 = trunc i32 %xor130.i760.i.1.3 to i8
  store i8 %conv131.i761.i.1.3, i8* %arrayidx128.i758.i.3, align 1
  %scevgep98.2.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1120, i64 0, i64 0, i64 2
  %1127 = load i8, i8* %scevgep98.2.3, align 1
  %conv126.i756.i.2.3 = zext i8 %1127 to i32
  %1128 = load i8, i8* %arrayidx128.i758.i.3, align 1
  %conv129.i759.i.2.3 = zext i8 %1128 to i32
  %xor130.i760.i.2.3 = xor i32 %conv129.i759.i.2.3, %conv126.i756.i.2.3
  %conv131.i761.i.2.3 = trunc i32 %xor130.i760.i.2.3 to i8
  store i8 %conv131.i761.i.2.3, i8* %arrayidx128.i758.i.3, align 1
  %scevgep98.4.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1120, i64 0, i64 0, i64 4
  %1129 = load i8, i8* %scevgep98.4.3, align 1
  %conv126.i756.i.4.3 = zext i8 %1129 to i32
  %1130 = load i8, i8* %arrayidx128.i758.i.3, align 1
  %conv129.i759.i.4.3 = zext i8 %1130 to i32
  %xor130.i760.i.4.3 = xor i32 %conv129.i759.i.4.3, %conv126.i756.i.4.3
  %conv131.i761.i.4.3 = trunc i32 %xor130.i760.i.4.3 to i8
  store i8 %conv131.i761.i.4.3, i8* %arrayidx128.i758.i.3, align 1
  %scevgep97.3 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1120, i64 0, i64 1, i64 0
  %1131 = bitcast i8* %scevgep97.3 to [5 x [5 x i8]]*
  %arrayidx108.i741.i.4 = getelementptr inbounds i8, i8* %arraydecay20.i, i64 4
  %1132 = load i8, i8* %arrayidx108.i741.i.4, align 1
  %arrayidx110.i743.i.4 = getelementptr inbounds i8, i8* %arraydecay21.i, i64 4
  %1133 = load i8, i8* %arrayidx110.i743.i.4, align 1
  %call111.i744.i.4 = call zeroext i8 @mult(i8 zeroext %1132, i8 zeroext %1133) #3
  %arrayidx113.i746.i.4 = getelementptr inbounds i8, i8* %arraydecay, i64 4
  store i8 %call111.i744.i.4, i8* %arrayidx113.i746.i.4, align 1
  %arrayidx128.i758.i.4 = getelementptr inbounds i8, i8* %arraydecay, i64 4
  %scevgep98.4439 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1131, i64 0, i64 0, i64 0
  %1134 = load i8, i8* %scevgep98.4439, align 1
  %conv126.i756.i.4440 = zext i8 %1134 to i32
  %1135 = load i8, i8* %arrayidx128.i758.i.4, align 1
  %conv129.i759.i.4441 = zext i8 %1135 to i32
  %xor130.i760.i.4442 = xor i32 %conv129.i759.i.4441, %conv126.i756.i.4440
  %conv131.i761.i.4443 = trunc i32 %xor130.i760.i.4442 to i8
  store i8 %conv131.i761.i.4443, i8* %arrayidx128.i758.i.4, align 1
  %scevgep98.1.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1131, i64 0, i64 0, i64 1
  %1136 = load i8, i8* %scevgep98.1.4, align 1
  %conv126.i756.i.1.4 = zext i8 %1136 to i32
  %1137 = load i8, i8* %arrayidx128.i758.i.4, align 1
  %conv129.i759.i.1.4 = zext i8 %1137 to i32
  %xor130.i760.i.1.4 = xor i32 %conv129.i759.i.1.4, %conv126.i756.i.1.4
  %conv131.i761.i.1.4 = trunc i32 %xor130.i760.i.1.4 to i8
  store i8 %conv131.i761.i.1.4, i8* %arrayidx128.i758.i.4, align 1
  %scevgep98.2.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1131, i64 0, i64 0, i64 2
  %1138 = load i8, i8* %scevgep98.2.4, align 1
  %conv126.i756.i.2.4 = zext i8 %1138 to i32
  %1139 = load i8, i8* %arrayidx128.i758.i.4, align 1
  %conv129.i759.i.2.4 = zext i8 %1139 to i32
  %xor130.i760.i.2.4 = xor i32 %conv129.i759.i.2.4, %conv126.i756.i.2.4
  %conv131.i761.i.2.4 = trunc i32 %xor130.i760.i.2.4 to i8
  store i8 %conv131.i761.i.2.4, i8* %arrayidx128.i758.i.4, align 1
  %scevgep98.3.4 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1131, i64 0, i64 0, i64 3
  %1140 = load i8, i8* %scevgep98.3.4, align 1
  %conv126.i756.i.3.4 = zext i8 %1140 to i32
  %1141 = load i8, i8* %arrayidx128.i758.i.4, align 1
  %conv129.i759.i.3.4 = zext i8 %1141 to i32
  %xor130.i760.i.3.4 = xor i32 %conv129.i759.i.3.4, %conv126.i756.i.3.4
  %conv131.i761.i.3.4 = trunc i32 %xor130.i760.i.3.4 to i8
  store i8 %conv131.i761.i.3.4, i8* %arrayidx128.i758.i.4, align 1
  %call139.i767.i = call zeroext i8 @mult(i8 zeroext %call.i614.i, i8 zeroext %call1.i615.i) #3
  %conv140.i768.i = zext i8 %call139.i767.i to i32
  %scevgep88 = getelementptr [5 x i8], [5 x i8]* %x254, i64 0, i64 0
  %1142 = load i8, i8* %scevgep88, align 1
  %scevgep88.1 = getelementptr [5 x i8], [5 x i8]* %x254, i64 0, i64 1
  %1143 = load i8, i8* %scevgep88.1, align 1
  %conv.i.i172.i775.i.1 = zext i8 %1143 to i32
  %conv1.i.i173.i776.i.1 = zext i8 %1142 to i32
  %xor.i.i174.i777.i.1 = xor i32 %conv1.i.i173.i776.i.1, %conv.i.i172.i775.i.1
  %conv2.i.i175.i778.i.1 = trunc i32 %xor.i.i174.i777.i.1 to i8
  %scevgep88.2 = getelementptr [5 x i8], [5 x i8]* %x254, i64 0, i64 2
  %1144 = load i8, i8* %scevgep88.2, align 1
  %conv.i.i172.i775.i.2 = zext i8 %1144 to i32
  %conv1.i.i173.i776.i.2 = zext i8 %conv2.i.i175.i778.i.1 to i32
  %xor.i.i174.i777.i.2 = xor i32 %conv1.i.i173.i776.i.2, %conv.i.i172.i775.i.2
  %conv2.i.i175.i778.i.2 = trunc i32 %xor.i.i174.i777.i.2 to i8
  %scevgep88.3 = getelementptr [5 x i8], [5 x i8]* %x254, i64 0, i64 3
  %1145 = load i8, i8* %scevgep88.3, align 1
  %conv.i.i172.i775.i.3 = zext i8 %1145 to i32
  %conv1.i.i173.i776.i.3 = zext i8 %conv2.i.i175.i778.i.2 to i32
  %xor.i.i174.i777.i.3 = xor i32 %conv1.i.i173.i776.i.3, %conv.i.i172.i775.i.3
  %conv2.i.i175.i778.i.3 = trunc i32 %xor.i.i174.i777.i.3 to i8
  %scevgep88.4 = getelementptr [5 x i8], [5 x i8]* %x254, i64 0, i64 4
  %1146 = load i8, i8* %scevgep88.4, align 1
  %conv.i.i172.i775.i.4 = zext i8 %1146 to i32
  %conv1.i.i173.i776.i.4 = zext i8 %conv2.i.i175.i778.i.3 to i32
  %xor.i.i174.i777.i.4 = xor i32 %conv1.i.i173.i776.i.4, %conv.i.i172.i775.i.4
  %conv2.i.i175.i778.i.4 = trunc i32 %xor.i.i174.i777.i.4 to i8
  %conv142.i781.i = zext i8 %conv2.i.i175.i778.i.4 to i32
  %cmp143.i782.i = icmp eq i32 %conv140.i768.i, %conv142.i781.i
  call void @assert(i1 zeroext %cmp143.i782.i) #3
  %call.i.i786.i = call zeroext i8 @mult(i8 zeroext %call.i, i8 zeroext %call.i) #3
  %call1.i787.i = call zeroext i8 @mult(i8 zeroext %call.i.i786.i, i8 zeroext %call.i) #3
  %call.i.i.i788.i = call zeroext i8 @mult(i8 zeroext %call1.i787.i, i8 zeroext %call1.i787.i) #3
  %call.i3.i.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i788.i, i8 zeroext %call.i.i.i788.i) #3
  %call3.i.i = call zeroext i8 @mult(i8 zeroext %call1.i787.i, i8 zeroext %call.i3.i.i.i) #3
  %call.i.i.i.i.i = call zeroext i8 @mult(i8 zeroext %call3.i.i, i8 zeroext %call3.i.i) #3
  %call.i3.i.i.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i.i, i8 zeroext %call.i.i.i.i.i) #3
  %call.i.i5.i.i.i = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i.i, i8 zeroext %call.i3.i.i.i.i) #3
  %call.i3.i6.i.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i5.i.i.i, i8 zeroext %call.i.i5.i.i.i) #3
  %call5.i.i = call zeroext i8 @mult(i8 zeroext %call.i3.i6.i.i.i, i8 zeroext %call.i3.i.i.i) #3
  %call6.i.i = call zeroext i8 @mult(i8 zeroext %call5.i.i, i8 zeroext %call.i.i786.i) #3
  %conv23.i = zext i8 %call6.i.i to i32
  %scevgep84 = getelementptr [5 x i8], [5 x i8]* %x254, i64 0, i64 0
  %1147 = load i8, i8* %scevgep84, align 1
  %scevgep84.1 = getelementptr [5 x i8], [5 x i8]* %x254, i64 0, i64 1
  %1148 = load i8, i8* %scevgep84.1, align 1
  %conv.i.i799.i.1 = zext i8 %1148 to i32
  %conv1.i.i800.i.1 = zext i8 %1147 to i32
  %xor.i.i801.i.1 = xor i32 %conv1.i.i800.i.1, %conv.i.i799.i.1
  %conv2.i.i802.i.1 = trunc i32 %xor.i.i801.i.1 to i8
  %scevgep84.2 = getelementptr [5 x i8], [5 x i8]* %x254, i64 0, i64 2
  %1149 = load i8, i8* %scevgep84.2, align 1
  %conv.i.i799.i.2 = zext i8 %1149 to i32
  %conv1.i.i800.i.2 = zext i8 %conv2.i.i802.i.1 to i32
  %xor.i.i801.i.2 = xor i32 %conv1.i.i800.i.2, %conv.i.i799.i.2
  %conv2.i.i802.i.2 = trunc i32 %xor.i.i801.i.2 to i8
  %scevgep84.3 = getelementptr [5 x i8], [5 x i8]* %x254, i64 0, i64 3
  %1150 = load i8, i8* %scevgep84.3, align 1
  %conv.i.i799.i.3 = zext i8 %1150 to i32
  %conv1.i.i800.i.3 = zext i8 %conv2.i.i802.i.2 to i32
  %xor.i.i801.i.3 = xor i32 %conv1.i.i800.i.3, %conv.i.i799.i.3
  %conv2.i.i802.i.3 = trunc i32 %xor.i.i801.i.3 to i8
  %scevgep84.4 = getelementptr [5 x i8], [5 x i8]* %x254, i64 0, i64 4
  %1151 = load i8, i8* %scevgep84.4, align 1
  %conv.i.i799.i.4 = zext i8 %1151 to i32
  %conv1.i.i800.i.4 = zext i8 %conv2.i.i802.i.3 to i32
  %xor.i.i801.i.4 = xor i32 %conv1.i.i800.i.4, %conv.i.i799.i.4
  %conv2.i.i802.i.4 = trunc i32 %xor.i.i801.i.4 to i8
  %conv25.i = zext i8 %conv2.i.i802.i.4 to i32
  %cmp26.i = icmp eq i32 %conv23.i, %conv25.i
  call void @assert(i1 zeroext %cmp26.i) #3
  %scevgep79 = getelementptr [5 x i8], [5 x i8]* %x254, i64 0, i64 0
  %1152 = load i8, i8* %scevgep79, align 1
  %call.i25 = call zeroext i8 @af(i8 zeroext %1152) #3
  store i8 %call.i25, i8* %y, align 1
  %scevgep79.1 = getelementptr [5 x i8], [5 x i8]* %x254, i64 0, i64 1
  %1153 = load i8, i8* %scevgep79.1, align 1
  %call.i25.1 = call zeroext i8 @af(i8 zeroext %1153) #3
  %scevgep80.1 = getelementptr i8, i8* %y, i64 1
  store i8 %call.i25.1, i8* %scevgep80.1, align 1
  %scevgep79.2 = getelementptr [5 x i8], [5 x i8]* %x254, i64 0, i64 2
  %1154 = load i8, i8* %scevgep79.2, align 1
  %call.i25.2 = call zeroext i8 @af(i8 zeroext %1154) #3
  %scevgep80.2 = getelementptr i8, i8* %y, i64 2
  store i8 %call.i25.2, i8* %scevgep80.2, align 1
  %scevgep79.3 = getelementptr [5 x i8], [5 x i8]* %x254, i64 0, i64 3
  %1155 = load i8, i8* %scevgep79.3, align 1
  %call.i25.3 = call zeroext i8 @af(i8 zeroext %1155) #3
  %scevgep80.3 = getelementptr i8, i8* %y, i64 3
  store i8 %call.i25.3, i8* %scevgep80.3, align 1
  %scevgep79.4 = getelementptr [5 x i8], [5 x i8]* %x254, i64 0, i64 4
  %1156 = load i8, i8* %scevgep79.4, align 1
  %call.i25.4 = call zeroext i8 @af(i8 zeroext %1156) #3
  %scevgep80.4 = getelementptr i8, i8* %y, i64 4
  store i8 %call.i25.4, i8* %scevgep80.4, align 1
  %call.i.i.i42 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call) #3
  %call1.i.i43 = call zeroext i8 @mult(i8 zeroext %call.i.i.i42, i8 zeroext %call) #3
  %call.i.i.i.i44 = call zeroext i8 @mult(i8 zeroext %call1.i.i43, i8 zeroext %call1.i.i43) #3
  %call.i3.i.i.i45 = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i44, i8 zeroext %call.i.i.i.i44) #3
  %call3.i.i46 = call zeroext i8 @mult(i8 zeroext %call1.i.i43, i8 zeroext %call.i3.i.i.i45) #3
  %call.i.i.i.i.i47 = call zeroext i8 @mult(i8 zeroext %call3.i.i46, i8 zeroext %call3.i.i46) #3
  %call.i3.i.i.i.i48 = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i.i47, i8 zeroext %call.i.i.i.i.i47) #3
  %call.i.i5.i.i.i49 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i.i48, i8 zeroext %call.i3.i.i.i.i48) #3
  %call.i3.i6.i.i.i50 = call zeroext i8 @mult(i8 zeroext %call.i.i5.i.i.i49, i8 zeroext %call.i.i5.i.i.i49) #3
  %call5.i.i51 = call zeroext i8 @mult(i8 zeroext %call.i3.i6.i.i.i50, i8 zeroext %call.i3.i.i.i45) #3
  %call6.i.i52 = call zeroext i8 @mult(i8 zeroext %call5.i.i51, i8 zeroext %call.i.i.i42) #3
  %call1.i = call zeroext i8 @af(i8 zeroext %call6.i.i52) #3
  %conv6 = zext i8 %call1.i to i32
  %1157 = load i8, i8* %y, align 1
  %scevgep.1 = getelementptr i8, i8* %y, i64 1
  %1158 = load i8, i8* %scevgep.1, align 1
  %conv.i.i63.1 = zext i8 %1158 to i32
  %conv1.i.i64.1 = zext i8 %1157 to i32
  %xor.i.i65.1 = xor i32 %conv1.i.i64.1, %conv.i.i63.1
  %conv2.i.i66.1 = trunc i32 %xor.i.i65.1 to i8
  %scevgep.2 = getelementptr i8, i8* %y, i64 2
  %1159 = load i8, i8* %scevgep.2, align 1
  %conv.i.i63.2 = zext i8 %1159 to i32
  %conv1.i.i64.2 = zext i8 %conv2.i.i66.1 to i32
  %xor.i.i65.2 = xor i32 %conv1.i.i64.2, %conv.i.i63.2
  %conv2.i.i66.2 = trunc i32 %xor.i.i65.2 to i8
  %scevgep.3 = getelementptr i8, i8* %y, i64 3
  %1160 = load i8, i8* %scevgep.3, align 1
  %conv.i.i63.3 = zext i8 %1160 to i32
  %conv1.i.i64.3 = zext i8 %conv2.i.i66.2 to i32
  %xor.i.i65.3 = xor i32 %conv1.i.i64.3, %conv.i.i63.3
  %conv2.i.i66.3 = trunc i32 %xor.i.i65.3 to i8
  %scevgep.4 = getelementptr i8, i8* %y, i64 4
  %1161 = load i8, i8* %scevgep.4, align 1
  %conv.i.i63.4 = zext i8 %1161 to i32
  %conv1.i.i64.4 = zext i8 %conv2.i.i66.3 to i32
  %xor.i.i65.4 = xor i32 %conv1.i.i64.4, %conv.i.i63.4
  %conv2.i.i66.4 = trunc i32 %xor.i.i65.4 to i8
  %conv8 = zext i8 %conv2.i.i66.4 to i32
  %cmp9 = icmp eq i32 %conv6, %conv8
  call void @assert(i1 zeroext %cmp9)
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
