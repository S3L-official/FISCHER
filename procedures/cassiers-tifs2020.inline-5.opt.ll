; ModuleID = '../examples/cassiers-tifs2020.inline-5.ll'
source_filename = "../examples/cassiers-tifs2020.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 5, align 4
@.str = private unnamed_addr constant [7 x i8] c"verify\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [32 x i8] c"../examples/cassiers-tifs2020.c\00", section "llvm.metadata"
@llvm.global.annotations = appending global [1 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*, i8*)* @sec_mult to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0), i32 3 }], section "llvm.metadata"

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
  %scevgep.5 = getelementptr i8, i8* %from, i64 5
  %5 = load i8, i8* %scevgep.5, align 1
  %call.5 = call zeroext i8 %f(i8 zeroext %5)
  %scevgep2.5 = getelementptr i8, i8* %to, i64 5
  store i8 %call.5, i8* %scevgep2.5, align 1
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
  %scevgep.5 = getelementptr i8, i8* %a, i64 5
  %5 = load i8, i8* %scevgep.5, align 1
  %call.5 = call zeroext i8 %f(i8 zeroext %5)
  %conv.5 = zext i8 %call.5 to i32
  %conv1.5 = zext i8 %conv2.4 to i32
  %xor.5 = xor i32 %conv1.5, %conv.5
  %conv2.5 = trunc i32 %xor.5 to i8
  ret i8 %conv2.5
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
  %scevgep.5 = getelementptr i8, i8* %a, i64 5
  %5 = load i8, i8* %scevgep.5, align 1
  %conv.i.5 = zext i8 %5 to i32
  %conv1.i.5 = zext i8 %conv2.i.4 to i32
  %xor.i.5 = xor i32 %conv1.i.5, %conv.i.5
  %conv2.i.5 = trunc i32 %xor.i.5 to i8
  ret i8 %conv2.i.5
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_mult(i8* %a, i8* %b, i8* %c) #0 {
entry:
  %r = alloca [6 x [6 x i8]], align 16
  %s = alloca [6 x [6 x i8]], align 16
  %p0 = alloca [6 x [6 x i8]], align 16
  %p1 = alloca [6 x [6 x i8]], align 16
  %z = alloca [6 x [6 x i8]], align 16
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
  %scevgep74.5 = getelementptr i8, i8* %a, i64 5
  %5 = load i8, i8* %scevgep74.5, align 1
  %conv.i.i.5 = zext i8 %5 to i32
  %conv1.i.i.5 = zext i8 %conv2.i.i.4 to i32
  %xor.i.i.5 = xor i32 %conv1.i.i.5, %conv.i.i.5
  %conv2.i.i.5 = trunc i32 %xor.i.i.5 to i8
  %conv3 = zext i8 %conv2.i.i.5 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %6 = load i8, i8* %b, align 1
  %scevgep70.1 = getelementptr i8, i8* %b, i64 1
  %7 = load i8, i8* %scevgep70.1, align 1
  %conv.i.i155.1 = zext i8 %7 to i32
  %conv1.i.i156.1 = zext i8 %6 to i32
  %xor.i.i157.1 = xor i32 %conv1.i.i156.1, %conv.i.i155.1
  %conv2.i.i158.1 = trunc i32 %xor.i.i157.1 to i8
  %scevgep70.2 = getelementptr i8, i8* %b, i64 2
  %8 = load i8, i8* %scevgep70.2, align 1
  %conv.i.i155.2 = zext i8 %8 to i32
  %conv1.i.i156.2 = zext i8 %conv2.i.i158.1 to i32
  %xor.i.i157.2 = xor i32 %conv1.i.i156.2, %conv.i.i155.2
  %conv2.i.i158.2 = trunc i32 %xor.i.i157.2 to i8
  %scevgep70.3 = getelementptr i8, i8* %b, i64 3
  %9 = load i8, i8* %scevgep70.3, align 1
  %conv.i.i155.3 = zext i8 %9 to i32
  %conv1.i.i156.3 = zext i8 %conv2.i.i158.2 to i32
  %xor.i.i157.3 = xor i32 %conv1.i.i156.3, %conv.i.i155.3
  %conv2.i.i158.3 = trunc i32 %xor.i.i157.3 to i8
  %scevgep70.4 = getelementptr i8, i8* %b, i64 4
  %10 = load i8, i8* %scevgep70.4, align 1
  %conv.i.i155.4 = zext i8 %10 to i32
  %conv1.i.i156.4 = zext i8 %conv2.i.i158.3 to i32
  %xor.i.i157.4 = xor i32 %conv1.i.i156.4, %conv.i.i155.4
  %conv2.i.i158.4 = trunc i32 %xor.i.i157.4 to i8
  %scevgep70.5 = getelementptr i8, i8* %b, i64 5
  %11 = load i8, i8* %scevgep70.5, align 1
  %conv.i.i155.5 = zext i8 %11 to i32
  %conv1.i.i156.5 = zext i8 %conv2.i.i158.4 to i32
  %xor.i.i157.5 = xor i32 %conv1.i.i156.5, %conv.i.i155.5
  %conv2.i.i158.5 = trunc i32 %xor.i.i157.5 to i8
  %conv7 = zext i8 %conv2.i.i158.5 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %scevgep54 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 0, i64 1
  %scevgep5455 = bitcast i8* %scevgep54 to [6 x [6 x i8]]*
  %scevgep61 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 1, i64 0
  %scevgep6162 = bitcast i8* %scevgep61 to [6 x [6 x i8]]*
  %call16 = call zeroext i8 (...) @rand()
  store i8 %call16, i8* %scevgep54, align 1
  %12 = load i8, i8* %scevgep54, align 1
  store i8 %12, i8* %scevgep61, align 1
  %scevgep59 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %scevgep5455, i64 0, i64 0, i64 1
  %13 = bitcast i8* %scevgep59 to [6 x [6 x i8]]*
  %scevgep66 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %scevgep6162, i64 0, i64 1, i64 0
  %14 = bitcast i8* %scevgep66 to [6 x [6 x i8]]*
  %call16.1261 = call zeroext i8 (...) @rand()
  store i8 %call16.1261, i8* %scevgep59, align 1
  %15 = load i8, i8* %scevgep59, align 1
  store i8 %15, i8* %scevgep66, align 1
  %scevgep59.1262 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %13, i64 0, i64 0, i64 1
  %16 = bitcast i8* %scevgep59.1262 to [6 x [6 x i8]]*
  %scevgep66.1263 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %14, i64 0, i64 1, i64 0
  %17 = bitcast i8* %scevgep66.1263 to [6 x [6 x i8]]*
  %call16.2265 = call zeroext i8 (...) @rand()
  store i8 %call16.2265, i8* %scevgep59.1262, align 1
  %18 = load i8, i8* %scevgep59.1262, align 1
  store i8 %18, i8* %scevgep66.1263, align 1
  %scevgep59.2266 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %16, i64 0, i64 0, i64 1
  %19 = bitcast i8* %scevgep59.2266 to [6 x [6 x i8]]*
  %scevgep66.2267 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %17, i64 0, i64 1, i64 0
  %20 = bitcast i8* %scevgep66.2267 to [6 x [6 x i8]]*
  %call16.3269 = call zeroext i8 (...) @rand()
  store i8 %call16.3269, i8* %scevgep59.2266, align 1
  %21 = load i8, i8* %scevgep59.2266, align 1
  store i8 %21, i8* %scevgep66.2267, align 1
  %scevgep59.3270 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %19, i64 0, i64 0, i64 1
  %scevgep66.3271 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %20, i64 0, i64 1, i64 0
  %call16.4273 = call zeroext i8 (...) @rand()
  store i8 %call16.4273, i8* %scevgep59.3270, align 1
  %22 = load i8, i8* %scevgep59.3270, align 1
  store i8 %22, i8* %scevgep66.3271, align 1
  %scevgep57 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %scevgep5455, i64 0, i64 1, i64 1
  %23 = bitcast i8* %scevgep57 to [6 x [6 x i8]]*
  %scevgep64 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %scevgep6162, i64 0, i64 1, i64 1
  %24 = bitcast i8* %scevgep64 to [6 x [6 x i8]]*
  %call16.1 = call zeroext i8 (...) @rand()
  store i8 %call16.1, i8* %scevgep57, align 1
  %25 = load i8, i8* %scevgep57, align 1
  store i8 %25, i8* %scevgep64, align 1
  %scevgep59.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %23, i64 0, i64 0, i64 1
  %26 = bitcast i8* %scevgep59.1 to [6 x [6 x i8]]*
  %scevgep66.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %24, i64 0, i64 1, i64 0
  %27 = bitcast i8* %scevgep66.1 to [6 x [6 x i8]]*
  %call16.1.1 = call zeroext i8 (...) @rand()
  store i8 %call16.1.1, i8* %scevgep59.1, align 1
  %28 = load i8, i8* %scevgep59.1, align 1
  store i8 %28, i8* %scevgep66.1, align 1
  %scevgep59.1.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %26, i64 0, i64 0, i64 1
  %29 = bitcast i8* %scevgep59.1.1 to [6 x [6 x i8]]*
  %scevgep66.1.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %27, i64 0, i64 1, i64 0
  %30 = bitcast i8* %scevgep66.1.1 to [6 x [6 x i8]]*
  %call16.1.2 = call zeroext i8 (...) @rand()
  store i8 %call16.1.2, i8* %scevgep59.1.1, align 1
  %31 = load i8, i8* %scevgep59.1.1, align 1
  store i8 %31, i8* %scevgep66.1.1, align 1
  %scevgep59.1.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %29, i64 0, i64 0, i64 1
  %scevgep66.1.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %30, i64 0, i64 1, i64 0
  %call16.1.3 = call zeroext i8 (...) @rand()
  store i8 %call16.1.3, i8* %scevgep59.1.2, align 1
  %32 = load i8, i8* %scevgep59.1.2, align 1
  store i8 %32, i8* %scevgep66.1.2, align 1
  %scevgep57.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %23, i64 0, i64 1, i64 1
  %33 = bitcast i8* %scevgep57.1 to [6 x [6 x i8]]*
  %scevgep64.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %24, i64 0, i64 1, i64 1
  %34 = bitcast i8* %scevgep64.1 to [6 x [6 x i8]]*
  %call16.2 = call zeroext i8 (...) @rand()
  store i8 %call16.2, i8* %scevgep57.1, align 1
  %35 = load i8, i8* %scevgep57.1, align 1
  store i8 %35, i8* %scevgep64.1, align 1
  %scevgep59.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %33, i64 0, i64 0, i64 1
  %36 = bitcast i8* %scevgep59.2 to [6 x [6 x i8]]*
  %scevgep66.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %34, i64 0, i64 1, i64 0
  %37 = bitcast i8* %scevgep66.2 to [6 x [6 x i8]]*
  %call16.2.1 = call zeroext i8 (...) @rand()
  store i8 %call16.2.1, i8* %scevgep59.2, align 1
  %38 = load i8, i8* %scevgep59.2, align 1
  store i8 %38, i8* %scevgep66.2, align 1
  %scevgep59.2.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %36, i64 0, i64 0, i64 1
  %scevgep66.2.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %37, i64 0, i64 1, i64 0
  %call16.2.2 = call zeroext i8 (...) @rand()
  store i8 %call16.2.2, i8* %scevgep59.2.1, align 1
  %39 = load i8, i8* %scevgep59.2.1, align 1
  store i8 %39, i8* %scevgep66.2.1, align 1
  %scevgep57.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %33, i64 0, i64 1, i64 1
  %40 = bitcast i8* %scevgep57.2 to [6 x [6 x i8]]*
  %scevgep64.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %34, i64 0, i64 1, i64 1
  %41 = bitcast i8* %scevgep64.2 to [6 x [6 x i8]]*
  %call16.3 = call zeroext i8 (...) @rand()
  store i8 %call16.3, i8* %scevgep57.2, align 1
  %42 = load i8, i8* %scevgep57.2, align 1
  store i8 %42, i8* %scevgep64.2, align 1
  %scevgep59.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %40, i64 0, i64 0, i64 1
  %scevgep66.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %41, i64 0, i64 1, i64 0
  %call16.3.1 = call zeroext i8 (...) @rand()
  store i8 %call16.3.1, i8* %scevgep59.3, align 1
  %43 = load i8, i8* %scevgep59.3, align 1
  store i8 %43, i8* %scevgep66.3, align 1
  %scevgep57.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %40, i64 0, i64 1, i64 1
  %scevgep64.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %41, i64 0, i64 1, i64 1
  %call16.4 = call zeroext i8 (...) @rand()
  store i8 %call16.4, i8* %scevgep57.3, align 1
  %44 = load i8, i8* %scevgep57.3, align 1
  store i8 %44, i8* %scevgep64.3, align 1
  %scevgep31.1 = getelementptr i8, i8* %b, i64 1
  %45 = load i8, i8* %scevgep31.1, align 1
  %conv44.1 = zext i8 %45 to i32
  %scevgep34.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 0, i64 1
  %46 = load i8, i8* %scevgep34.1, align 1
  %conv49.1 = zext i8 %46 to i32
  %xor.1 = xor i32 %conv44.1, %conv49.1
  %conv50.1 = trunc i32 %xor.1 to i8
  %scevgep38.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %s, i64 0, i64 0, i64 1
  store i8 %conv50.1, i8* %scevgep38.1, align 1
  %47 = load i8, i8* %a, align 1
  %conv57.1 = zext i8 %47 to i32
  %xor58.1 = xor i32 %conv57.1, 1
  %conv59.1 = trunc i32 %xor58.1 to i8
  %scevgep35.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 0, i64 1
  %48 = load i8, i8* %scevgep35.1, align 1
  %call64.1 = call zeroext i8 @mult(i8 zeroext %conv59.1, i8 zeroext %48)
  %scevgep42.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %p0, i64 0, i64 0, i64 1
  store i8 %call64.1, i8* %scevgep42.1, align 1
  %49 = load i8, i8* %a, align 1
  %scevgep39.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %s, i64 0, i64 0, i64 1
  %50 = load i8, i8* %scevgep39.1, align 1
  %call75.1 = call zeroext i8 @mult(i8 zeroext %49, i8 zeroext %50)
  %scevgep46.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %p1, i64 0, i64 0, i64 1
  store i8 %call75.1, i8* %scevgep46.1, align 1
  %scevgep43.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %p0, i64 0, i64 0, i64 1
  %51 = load i8, i8* %scevgep43.1, align 1
  %conv84.1 = zext i8 %51 to i32
  %scevgep47.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %p1, i64 0, i64 0, i64 1
  %52 = load i8, i8* %scevgep47.1, align 1
  %conv89.1 = zext i8 %52 to i32
  %xor90.1 = xor i32 %conv84.1, %conv89.1
  %conv91.1 = trunc i32 %xor90.1 to i8
  %scevgep50.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %z, i64 0, i64 0, i64 1
  store i8 %conv91.1, i8* %scevgep50.1, align 1
  %scevgep31.2 = getelementptr i8, i8* %b, i64 2
  %53 = load i8, i8* %scevgep31.2, align 1
  %conv44.2 = zext i8 %53 to i32
  %scevgep34.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 0, i64 2
  %54 = load i8, i8* %scevgep34.2, align 1
  %conv49.2 = zext i8 %54 to i32
  %xor.2 = xor i32 %conv44.2, %conv49.2
  %conv50.2 = trunc i32 %xor.2 to i8
  %scevgep38.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %s, i64 0, i64 0, i64 2
  store i8 %conv50.2, i8* %scevgep38.2, align 1
  %55 = load i8, i8* %a, align 1
  %conv57.2 = zext i8 %55 to i32
  %xor58.2 = xor i32 %conv57.2, 1
  %conv59.2 = trunc i32 %xor58.2 to i8
  %scevgep35.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 0, i64 2
  %56 = load i8, i8* %scevgep35.2, align 1
  %call64.2 = call zeroext i8 @mult(i8 zeroext %conv59.2, i8 zeroext %56)
  %scevgep42.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %p0, i64 0, i64 0, i64 2
  store i8 %call64.2, i8* %scevgep42.2, align 1
  %57 = load i8, i8* %a, align 1
  %scevgep39.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %s, i64 0, i64 0, i64 2
  %58 = load i8, i8* %scevgep39.2, align 1
  %call75.2 = call zeroext i8 @mult(i8 zeroext %57, i8 zeroext %58)
  %scevgep46.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %p1, i64 0, i64 0, i64 2
  store i8 %call75.2, i8* %scevgep46.2, align 1
  %scevgep43.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %p0, i64 0, i64 0, i64 2
  %59 = load i8, i8* %scevgep43.2, align 1
  %conv84.2 = zext i8 %59 to i32
  %scevgep47.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %p1, i64 0, i64 0, i64 2
  %60 = load i8, i8* %scevgep47.2, align 1
  %conv89.2 = zext i8 %60 to i32
  %xor90.2 = xor i32 %conv84.2, %conv89.2
  %conv91.2 = trunc i32 %xor90.2 to i8
  %scevgep50.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %z, i64 0, i64 0, i64 2
  store i8 %conv91.2, i8* %scevgep50.2, align 1
  %scevgep31.3 = getelementptr i8, i8* %b, i64 3
  %61 = load i8, i8* %scevgep31.3, align 1
  %conv44.3 = zext i8 %61 to i32
  %scevgep34.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 0, i64 3
  %62 = load i8, i8* %scevgep34.3, align 1
  %conv49.3 = zext i8 %62 to i32
  %xor.3 = xor i32 %conv44.3, %conv49.3
  %conv50.3 = trunc i32 %xor.3 to i8
  %scevgep38.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %s, i64 0, i64 0, i64 3
  store i8 %conv50.3, i8* %scevgep38.3, align 1
  %63 = load i8, i8* %a, align 1
  %conv57.3 = zext i8 %63 to i32
  %xor58.3 = xor i32 %conv57.3, 1
  %conv59.3 = trunc i32 %xor58.3 to i8
  %scevgep35.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 0, i64 3
  %64 = load i8, i8* %scevgep35.3, align 1
  %call64.3 = call zeroext i8 @mult(i8 zeroext %conv59.3, i8 zeroext %64)
  %scevgep42.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %p0, i64 0, i64 0, i64 3
  store i8 %call64.3, i8* %scevgep42.3, align 1
  %65 = load i8, i8* %a, align 1
  %scevgep39.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %s, i64 0, i64 0, i64 3
  %66 = load i8, i8* %scevgep39.3, align 1
  %call75.3 = call zeroext i8 @mult(i8 zeroext %65, i8 zeroext %66)
  %scevgep46.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %p1, i64 0, i64 0, i64 3
  store i8 %call75.3, i8* %scevgep46.3, align 1
  %scevgep43.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %p0, i64 0, i64 0, i64 3
  %67 = load i8, i8* %scevgep43.3, align 1
  %conv84.3 = zext i8 %67 to i32
  %scevgep47.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %p1, i64 0, i64 0, i64 3
  %68 = load i8, i8* %scevgep47.3, align 1
  %conv89.3 = zext i8 %68 to i32
  %xor90.3 = xor i32 %conv84.3, %conv89.3
  %conv91.3 = trunc i32 %xor90.3 to i8
  %scevgep50.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %z, i64 0, i64 0, i64 3
  store i8 %conv91.3, i8* %scevgep50.3, align 1
  %scevgep31.4 = getelementptr i8, i8* %b, i64 4
  %69 = load i8, i8* %scevgep31.4, align 1
  %conv44.4 = zext i8 %69 to i32
  %scevgep34.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 0, i64 4
  %70 = load i8, i8* %scevgep34.4, align 1
  %conv49.4 = zext i8 %70 to i32
  %xor.4 = xor i32 %conv44.4, %conv49.4
  %conv50.4 = trunc i32 %xor.4 to i8
  %scevgep38.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %s, i64 0, i64 0, i64 4
  store i8 %conv50.4, i8* %scevgep38.4, align 1
  %71 = load i8, i8* %a, align 1
  %conv57.4 = zext i8 %71 to i32
  %xor58.4 = xor i32 %conv57.4, 1
  %conv59.4 = trunc i32 %xor58.4 to i8
  %scevgep35.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 0, i64 4
  %72 = load i8, i8* %scevgep35.4, align 1
  %call64.4 = call zeroext i8 @mult(i8 zeroext %conv59.4, i8 zeroext %72)
  %scevgep42.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %p0, i64 0, i64 0, i64 4
  store i8 %call64.4, i8* %scevgep42.4, align 1
  %73 = load i8, i8* %a, align 1
  %scevgep39.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %s, i64 0, i64 0, i64 4
  %74 = load i8, i8* %scevgep39.4, align 1
  %call75.4 = call zeroext i8 @mult(i8 zeroext %73, i8 zeroext %74)
  %scevgep46.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %p1, i64 0, i64 0, i64 4
  store i8 %call75.4, i8* %scevgep46.4, align 1
  %scevgep43.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %p0, i64 0, i64 0, i64 4
  %75 = load i8, i8* %scevgep43.4, align 1
  %conv84.4 = zext i8 %75 to i32
  %scevgep47.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %p1, i64 0, i64 0, i64 4
  %76 = load i8, i8* %scevgep47.4, align 1
  %conv89.4 = zext i8 %76 to i32
  %xor90.4 = xor i32 %conv84.4, %conv89.4
  %conv91.4 = trunc i32 %xor90.4 to i8
  %scevgep50.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %z, i64 0, i64 0, i64 4
  store i8 %conv91.4, i8* %scevgep50.4, align 1
  %scevgep31.5 = getelementptr i8, i8* %b, i64 5
  %77 = load i8, i8* %scevgep31.5, align 1
  %conv44.5 = zext i8 %77 to i32
  %scevgep34.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 0, i64 5
  %78 = load i8, i8* %scevgep34.5, align 1
  %conv49.5 = zext i8 %78 to i32
  %xor.5 = xor i32 %conv44.5, %conv49.5
  %conv50.5 = trunc i32 %xor.5 to i8
  %scevgep38.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %s, i64 0, i64 0, i64 5
  store i8 %conv50.5, i8* %scevgep38.5, align 1
  %79 = load i8, i8* %a, align 1
  %conv57.5 = zext i8 %79 to i32
  %xor58.5 = xor i32 %conv57.5, 1
  %conv59.5 = trunc i32 %xor58.5 to i8
  %scevgep35.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 0, i64 5
  %80 = load i8, i8* %scevgep35.5, align 1
  %call64.5 = call zeroext i8 @mult(i8 zeroext %conv59.5, i8 zeroext %80)
  %scevgep42.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %p0, i64 0, i64 0, i64 5
  store i8 %call64.5, i8* %scevgep42.5, align 1
  %81 = load i8, i8* %a, align 1
  %scevgep39.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %s, i64 0, i64 0, i64 5
  %82 = load i8, i8* %scevgep39.5, align 1
  %call75.5 = call zeroext i8 @mult(i8 zeroext %81, i8 zeroext %82)
  %scevgep46.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %p1, i64 0, i64 0, i64 5
  store i8 %call75.5, i8* %scevgep46.5, align 1
  %scevgep43.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %p0, i64 0, i64 0, i64 5
  %83 = load i8, i8* %scevgep43.5, align 1
  %conv84.5 = zext i8 %83 to i32
  %scevgep47.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %p1, i64 0, i64 0, i64 5
  %84 = load i8, i8* %scevgep47.5, align 1
  %conv89.5 = zext i8 %84 to i32
  %xor90.5 = xor i32 %conv84.5, %conv89.5
  %conv91.5 = trunc i32 %xor90.5 to i8
  %scevgep50.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %z, i64 0, i64 0, i64 5
  store i8 %conv91.5, i8* %scevgep50.5, align 1
  %scevgep33 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %r, i64 0, i64 1, i64 0
  %85 = bitcast i8* %scevgep33 to [6 x [6 x i8]]*
  %scevgep37 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %s, i64 0, i64 1, i64 0
  %86 = bitcast i8* %scevgep37 to [6 x [6 x i8]]*
  %scevgep41 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %p0, i64 0, i64 1, i64 0
  %87 = bitcast i8* %scevgep41 to [6 x [6 x i8]]*
  %scevgep45 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %p1, i64 0, i64 1, i64 0
  %88 = bitcast i8* %scevgep45 to [6 x [6 x i8]]*
  %scevgep49 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %z, i64 0, i64 1, i64 0
  %89 = bitcast i8* %scevgep49 to [6 x [6 x i8]]*
  %arrayidx56.1 = getelementptr inbounds i8, i8* %a, i64 1
  %arrayidx70.1 = getelementptr inbounds i8, i8* %a, i64 1
  %90 = load i8, i8* %b, align 1
  %conv44.1128 = zext i8 %90 to i32
  %scevgep34.1129 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %85, i64 0, i64 0, i64 0
  %91 = load i8, i8* %scevgep34.1129, align 1
  %conv49.1130 = zext i8 %91 to i32
  %xor.1131 = xor i32 %conv44.1128, %conv49.1130
  %conv50.1132 = trunc i32 %xor.1131 to i8
  %scevgep38.1133 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %86, i64 0, i64 0, i64 0
  store i8 %conv50.1132, i8* %scevgep38.1133, align 1
  %92 = load i8, i8* %arrayidx56.1, align 1
  %conv57.1134 = zext i8 %92 to i32
  %xor58.1135 = xor i32 %conv57.1134, 1
  %conv59.1136 = trunc i32 %xor58.1135 to i8
  %scevgep35.1137 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %85, i64 0, i64 0, i64 0
  %93 = load i8, i8* %scevgep35.1137, align 1
  %call64.1138 = call zeroext i8 @mult(i8 zeroext %conv59.1136, i8 zeroext %93)
  %scevgep42.1139 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %87, i64 0, i64 0, i64 0
  store i8 %call64.1138, i8* %scevgep42.1139, align 1
  %94 = load i8, i8* %arrayidx70.1, align 1
  %scevgep39.1140 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %86, i64 0, i64 0, i64 0
  %95 = load i8, i8* %scevgep39.1140, align 1
  %call75.1141 = call zeroext i8 @mult(i8 zeroext %94, i8 zeroext %95)
  %scevgep46.1142 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %88, i64 0, i64 0, i64 0
  store i8 %call75.1141, i8* %scevgep46.1142, align 1
  %scevgep43.1143 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %87, i64 0, i64 0, i64 0
  %96 = load i8, i8* %scevgep43.1143, align 1
  %conv84.1144 = zext i8 %96 to i32
  %scevgep47.1145 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %88, i64 0, i64 0, i64 0
  %97 = load i8, i8* %scevgep47.1145, align 1
  %conv89.1146 = zext i8 %97 to i32
  %xor90.1147 = xor i32 %conv84.1144, %conv89.1146
  %conv91.1148 = trunc i32 %xor90.1147 to i8
  %scevgep50.1149 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %89, i64 0, i64 0, i64 0
  store i8 %conv91.1148, i8* %scevgep50.1149, align 1
  %scevgep31.2.1 = getelementptr i8, i8* %b, i64 2
  %98 = load i8, i8* %scevgep31.2.1, align 1
  %conv44.2.1 = zext i8 %98 to i32
  %scevgep34.2.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %85, i64 0, i64 0, i64 2
  %99 = load i8, i8* %scevgep34.2.1, align 1
  %conv49.2.1 = zext i8 %99 to i32
  %xor.2.1 = xor i32 %conv44.2.1, %conv49.2.1
  %conv50.2.1 = trunc i32 %xor.2.1 to i8
  %scevgep38.2.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %86, i64 0, i64 0, i64 2
  store i8 %conv50.2.1, i8* %scevgep38.2.1, align 1
  %100 = load i8, i8* %arrayidx56.1, align 1
  %conv57.2.1 = zext i8 %100 to i32
  %xor58.2.1 = xor i32 %conv57.2.1, 1
  %conv59.2.1 = trunc i32 %xor58.2.1 to i8
  %scevgep35.2.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %85, i64 0, i64 0, i64 2
  %101 = load i8, i8* %scevgep35.2.1, align 1
  %call64.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.2.1, i8 zeroext %101)
  %scevgep42.2.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %87, i64 0, i64 0, i64 2
  store i8 %call64.2.1, i8* %scevgep42.2.1, align 1
  %102 = load i8, i8* %arrayidx70.1, align 1
  %scevgep39.2.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %86, i64 0, i64 0, i64 2
  %103 = load i8, i8* %scevgep39.2.1, align 1
  %call75.2.1 = call zeroext i8 @mult(i8 zeroext %102, i8 zeroext %103)
  %scevgep46.2.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %88, i64 0, i64 0, i64 2
  store i8 %call75.2.1, i8* %scevgep46.2.1, align 1
  %scevgep43.2.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %87, i64 0, i64 0, i64 2
  %104 = load i8, i8* %scevgep43.2.1, align 1
  %conv84.2.1 = zext i8 %104 to i32
  %scevgep47.2.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %88, i64 0, i64 0, i64 2
  %105 = load i8, i8* %scevgep47.2.1, align 1
  %conv89.2.1 = zext i8 %105 to i32
  %xor90.2.1 = xor i32 %conv84.2.1, %conv89.2.1
  %conv91.2.1 = trunc i32 %xor90.2.1 to i8
  %scevgep50.2.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %89, i64 0, i64 0, i64 2
  store i8 %conv91.2.1, i8* %scevgep50.2.1, align 1
  %scevgep31.3.1 = getelementptr i8, i8* %b, i64 3
  %106 = load i8, i8* %scevgep31.3.1, align 1
  %conv44.3.1 = zext i8 %106 to i32
  %scevgep34.3.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %85, i64 0, i64 0, i64 3
  %107 = load i8, i8* %scevgep34.3.1, align 1
  %conv49.3.1 = zext i8 %107 to i32
  %xor.3.1 = xor i32 %conv44.3.1, %conv49.3.1
  %conv50.3.1 = trunc i32 %xor.3.1 to i8
  %scevgep38.3.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %86, i64 0, i64 0, i64 3
  store i8 %conv50.3.1, i8* %scevgep38.3.1, align 1
  %108 = load i8, i8* %arrayidx56.1, align 1
  %conv57.3.1 = zext i8 %108 to i32
  %xor58.3.1 = xor i32 %conv57.3.1, 1
  %conv59.3.1 = trunc i32 %xor58.3.1 to i8
  %scevgep35.3.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %85, i64 0, i64 0, i64 3
  %109 = load i8, i8* %scevgep35.3.1, align 1
  %call64.3.1 = call zeroext i8 @mult(i8 zeroext %conv59.3.1, i8 zeroext %109)
  %scevgep42.3.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %87, i64 0, i64 0, i64 3
  store i8 %call64.3.1, i8* %scevgep42.3.1, align 1
  %110 = load i8, i8* %arrayidx70.1, align 1
  %scevgep39.3.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %86, i64 0, i64 0, i64 3
  %111 = load i8, i8* %scevgep39.3.1, align 1
  %call75.3.1 = call zeroext i8 @mult(i8 zeroext %110, i8 zeroext %111)
  %scevgep46.3.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %88, i64 0, i64 0, i64 3
  store i8 %call75.3.1, i8* %scevgep46.3.1, align 1
  %scevgep43.3.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %87, i64 0, i64 0, i64 3
  %112 = load i8, i8* %scevgep43.3.1, align 1
  %conv84.3.1 = zext i8 %112 to i32
  %scevgep47.3.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %88, i64 0, i64 0, i64 3
  %113 = load i8, i8* %scevgep47.3.1, align 1
  %conv89.3.1 = zext i8 %113 to i32
  %xor90.3.1 = xor i32 %conv84.3.1, %conv89.3.1
  %conv91.3.1 = trunc i32 %xor90.3.1 to i8
  %scevgep50.3.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %89, i64 0, i64 0, i64 3
  store i8 %conv91.3.1, i8* %scevgep50.3.1, align 1
  %scevgep31.4.1 = getelementptr i8, i8* %b, i64 4
  %114 = load i8, i8* %scevgep31.4.1, align 1
  %conv44.4.1 = zext i8 %114 to i32
  %scevgep34.4.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %85, i64 0, i64 0, i64 4
  %115 = load i8, i8* %scevgep34.4.1, align 1
  %conv49.4.1 = zext i8 %115 to i32
  %xor.4.1 = xor i32 %conv44.4.1, %conv49.4.1
  %conv50.4.1 = trunc i32 %xor.4.1 to i8
  %scevgep38.4.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %86, i64 0, i64 0, i64 4
  store i8 %conv50.4.1, i8* %scevgep38.4.1, align 1
  %116 = load i8, i8* %arrayidx56.1, align 1
  %conv57.4.1 = zext i8 %116 to i32
  %xor58.4.1 = xor i32 %conv57.4.1, 1
  %conv59.4.1 = trunc i32 %xor58.4.1 to i8
  %scevgep35.4.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %85, i64 0, i64 0, i64 4
  %117 = load i8, i8* %scevgep35.4.1, align 1
  %call64.4.1 = call zeroext i8 @mult(i8 zeroext %conv59.4.1, i8 zeroext %117)
  %scevgep42.4.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %87, i64 0, i64 0, i64 4
  store i8 %call64.4.1, i8* %scevgep42.4.1, align 1
  %118 = load i8, i8* %arrayidx70.1, align 1
  %scevgep39.4.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %86, i64 0, i64 0, i64 4
  %119 = load i8, i8* %scevgep39.4.1, align 1
  %call75.4.1 = call zeroext i8 @mult(i8 zeroext %118, i8 zeroext %119)
  %scevgep46.4.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %88, i64 0, i64 0, i64 4
  store i8 %call75.4.1, i8* %scevgep46.4.1, align 1
  %scevgep43.4.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %87, i64 0, i64 0, i64 4
  %120 = load i8, i8* %scevgep43.4.1, align 1
  %conv84.4.1 = zext i8 %120 to i32
  %scevgep47.4.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %88, i64 0, i64 0, i64 4
  %121 = load i8, i8* %scevgep47.4.1, align 1
  %conv89.4.1 = zext i8 %121 to i32
  %xor90.4.1 = xor i32 %conv84.4.1, %conv89.4.1
  %conv91.4.1 = trunc i32 %xor90.4.1 to i8
  %scevgep50.4.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %89, i64 0, i64 0, i64 4
  store i8 %conv91.4.1, i8* %scevgep50.4.1, align 1
  %scevgep31.5.1 = getelementptr i8, i8* %b, i64 5
  %122 = load i8, i8* %scevgep31.5.1, align 1
  %conv44.5.1 = zext i8 %122 to i32
  %scevgep34.5.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %85, i64 0, i64 0, i64 5
  %123 = load i8, i8* %scevgep34.5.1, align 1
  %conv49.5.1 = zext i8 %123 to i32
  %xor.5.1 = xor i32 %conv44.5.1, %conv49.5.1
  %conv50.5.1 = trunc i32 %xor.5.1 to i8
  %scevgep38.5.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %86, i64 0, i64 0, i64 5
  store i8 %conv50.5.1, i8* %scevgep38.5.1, align 1
  %124 = load i8, i8* %arrayidx56.1, align 1
  %conv57.5.1 = zext i8 %124 to i32
  %xor58.5.1 = xor i32 %conv57.5.1, 1
  %conv59.5.1 = trunc i32 %xor58.5.1 to i8
  %scevgep35.5.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %85, i64 0, i64 0, i64 5
  %125 = load i8, i8* %scevgep35.5.1, align 1
  %call64.5.1 = call zeroext i8 @mult(i8 zeroext %conv59.5.1, i8 zeroext %125)
  %scevgep42.5.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %87, i64 0, i64 0, i64 5
  store i8 %call64.5.1, i8* %scevgep42.5.1, align 1
  %126 = load i8, i8* %arrayidx70.1, align 1
  %scevgep39.5.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %86, i64 0, i64 0, i64 5
  %127 = load i8, i8* %scevgep39.5.1, align 1
  %call75.5.1 = call zeroext i8 @mult(i8 zeroext %126, i8 zeroext %127)
  %scevgep46.5.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %88, i64 0, i64 0, i64 5
  store i8 %call75.5.1, i8* %scevgep46.5.1, align 1
  %scevgep43.5.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %87, i64 0, i64 0, i64 5
  %128 = load i8, i8* %scevgep43.5.1, align 1
  %conv84.5.1 = zext i8 %128 to i32
  %scevgep47.5.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %88, i64 0, i64 0, i64 5
  %129 = load i8, i8* %scevgep47.5.1, align 1
  %conv89.5.1 = zext i8 %129 to i32
  %xor90.5.1 = xor i32 %conv84.5.1, %conv89.5.1
  %conv91.5.1 = trunc i32 %xor90.5.1 to i8
  %scevgep50.5.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %89, i64 0, i64 0, i64 5
  store i8 %conv91.5.1, i8* %scevgep50.5.1, align 1
  %scevgep33.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %85, i64 0, i64 1, i64 0
  %130 = bitcast i8* %scevgep33.1 to [6 x [6 x i8]]*
  %scevgep37.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %86, i64 0, i64 1, i64 0
  %131 = bitcast i8* %scevgep37.1 to [6 x [6 x i8]]*
  %scevgep41.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %87, i64 0, i64 1, i64 0
  %132 = bitcast i8* %scevgep41.1 to [6 x [6 x i8]]*
  %scevgep45.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %88, i64 0, i64 1, i64 0
  %133 = bitcast i8* %scevgep45.1 to [6 x [6 x i8]]*
  %scevgep49.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %89, i64 0, i64 1, i64 0
  %134 = bitcast i8* %scevgep49.1 to [6 x [6 x i8]]*
  %arrayidx56.2 = getelementptr inbounds i8, i8* %a, i64 2
  %arrayidx70.2 = getelementptr inbounds i8, i8* %a, i64 2
  %135 = load i8, i8* %b, align 1
  %conv44.2155 = zext i8 %135 to i32
  %scevgep34.2156 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %130, i64 0, i64 0, i64 0
  %136 = load i8, i8* %scevgep34.2156, align 1
  %conv49.2157 = zext i8 %136 to i32
  %xor.2158 = xor i32 %conv44.2155, %conv49.2157
  %conv50.2159 = trunc i32 %xor.2158 to i8
  %scevgep38.2160 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %131, i64 0, i64 0, i64 0
  store i8 %conv50.2159, i8* %scevgep38.2160, align 1
  %137 = load i8, i8* %arrayidx56.2, align 1
  %conv57.2161 = zext i8 %137 to i32
  %xor58.2162 = xor i32 %conv57.2161, 1
  %conv59.2163 = trunc i32 %xor58.2162 to i8
  %scevgep35.2164 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %130, i64 0, i64 0, i64 0
  %138 = load i8, i8* %scevgep35.2164, align 1
  %call64.2165 = call zeroext i8 @mult(i8 zeroext %conv59.2163, i8 zeroext %138)
  %scevgep42.2166 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %132, i64 0, i64 0, i64 0
  store i8 %call64.2165, i8* %scevgep42.2166, align 1
  %139 = load i8, i8* %arrayidx70.2, align 1
  %scevgep39.2167 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %131, i64 0, i64 0, i64 0
  %140 = load i8, i8* %scevgep39.2167, align 1
  %call75.2168 = call zeroext i8 @mult(i8 zeroext %139, i8 zeroext %140)
  %scevgep46.2169 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %133, i64 0, i64 0, i64 0
  store i8 %call75.2168, i8* %scevgep46.2169, align 1
  %scevgep43.2170 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %132, i64 0, i64 0, i64 0
  %141 = load i8, i8* %scevgep43.2170, align 1
  %conv84.2171 = zext i8 %141 to i32
  %scevgep47.2172 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %133, i64 0, i64 0, i64 0
  %142 = load i8, i8* %scevgep47.2172, align 1
  %conv89.2173 = zext i8 %142 to i32
  %xor90.2174 = xor i32 %conv84.2171, %conv89.2173
  %conv91.2175 = trunc i32 %xor90.2174 to i8
  %scevgep50.2176 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %134, i64 0, i64 0, i64 0
  store i8 %conv91.2175, i8* %scevgep50.2176, align 1
  %scevgep31.1.2 = getelementptr i8, i8* %b, i64 1
  %143 = load i8, i8* %scevgep31.1.2, align 1
  %conv44.1.2 = zext i8 %143 to i32
  %scevgep34.1.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %130, i64 0, i64 0, i64 1
  %144 = load i8, i8* %scevgep34.1.2, align 1
  %conv49.1.2 = zext i8 %144 to i32
  %xor.1.2 = xor i32 %conv44.1.2, %conv49.1.2
  %conv50.1.2 = trunc i32 %xor.1.2 to i8
  %scevgep38.1.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %131, i64 0, i64 0, i64 1
  store i8 %conv50.1.2, i8* %scevgep38.1.2, align 1
  %145 = load i8, i8* %arrayidx56.2, align 1
  %conv57.1.2 = zext i8 %145 to i32
  %xor58.1.2 = xor i32 %conv57.1.2, 1
  %conv59.1.2 = trunc i32 %xor58.1.2 to i8
  %scevgep35.1.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %130, i64 0, i64 0, i64 1
  %146 = load i8, i8* %scevgep35.1.2, align 1
  %call64.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.1.2, i8 zeroext %146)
  %scevgep42.1.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %132, i64 0, i64 0, i64 1
  store i8 %call64.1.2, i8* %scevgep42.1.2, align 1
  %147 = load i8, i8* %arrayidx70.2, align 1
  %scevgep39.1.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %131, i64 0, i64 0, i64 1
  %148 = load i8, i8* %scevgep39.1.2, align 1
  %call75.1.2 = call zeroext i8 @mult(i8 zeroext %147, i8 zeroext %148)
  %scevgep46.1.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %133, i64 0, i64 0, i64 1
  store i8 %call75.1.2, i8* %scevgep46.1.2, align 1
  %scevgep43.1.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %132, i64 0, i64 0, i64 1
  %149 = load i8, i8* %scevgep43.1.2, align 1
  %conv84.1.2 = zext i8 %149 to i32
  %scevgep47.1.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %133, i64 0, i64 0, i64 1
  %150 = load i8, i8* %scevgep47.1.2, align 1
  %conv89.1.2 = zext i8 %150 to i32
  %xor90.1.2 = xor i32 %conv84.1.2, %conv89.1.2
  %conv91.1.2 = trunc i32 %xor90.1.2 to i8
  %scevgep50.1.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %134, i64 0, i64 0, i64 1
  store i8 %conv91.1.2, i8* %scevgep50.1.2, align 1
  %scevgep31.3.2 = getelementptr i8, i8* %b, i64 3
  %151 = load i8, i8* %scevgep31.3.2, align 1
  %conv44.3.2 = zext i8 %151 to i32
  %scevgep34.3.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %130, i64 0, i64 0, i64 3
  %152 = load i8, i8* %scevgep34.3.2, align 1
  %conv49.3.2 = zext i8 %152 to i32
  %xor.3.2 = xor i32 %conv44.3.2, %conv49.3.2
  %conv50.3.2 = trunc i32 %xor.3.2 to i8
  %scevgep38.3.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %131, i64 0, i64 0, i64 3
  store i8 %conv50.3.2, i8* %scevgep38.3.2, align 1
  %153 = load i8, i8* %arrayidx56.2, align 1
  %conv57.3.2 = zext i8 %153 to i32
  %xor58.3.2 = xor i32 %conv57.3.2, 1
  %conv59.3.2 = trunc i32 %xor58.3.2 to i8
  %scevgep35.3.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %130, i64 0, i64 0, i64 3
  %154 = load i8, i8* %scevgep35.3.2, align 1
  %call64.3.2 = call zeroext i8 @mult(i8 zeroext %conv59.3.2, i8 zeroext %154)
  %scevgep42.3.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %132, i64 0, i64 0, i64 3
  store i8 %call64.3.2, i8* %scevgep42.3.2, align 1
  %155 = load i8, i8* %arrayidx70.2, align 1
  %scevgep39.3.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %131, i64 0, i64 0, i64 3
  %156 = load i8, i8* %scevgep39.3.2, align 1
  %call75.3.2 = call zeroext i8 @mult(i8 zeroext %155, i8 zeroext %156)
  %scevgep46.3.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %133, i64 0, i64 0, i64 3
  store i8 %call75.3.2, i8* %scevgep46.3.2, align 1
  %scevgep43.3.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %132, i64 0, i64 0, i64 3
  %157 = load i8, i8* %scevgep43.3.2, align 1
  %conv84.3.2 = zext i8 %157 to i32
  %scevgep47.3.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %133, i64 0, i64 0, i64 3
  %158 = load i8, i8* %scevgep47.3.2, align 1
  %conv89.3.2 = zext i8 %158 to i32
  %xor90.3.2 = xor i32 %conv84.3.2, %conv89.3.2
  %conv91.3.2 = trunc i32 %xor90.3.2 to i8
  %scevgep50.3.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %134, i64 0, i64 0, i64 3
  store i8 %conv91.3.2, i8* %scevgep50.3.2, align 1
  %scevgep31.4.2 = getelementptr i8, i8* %b, i64 4
  %159 = load i8, i8* %scevgep31.4.2, align 1
  %conv44.4.2 = zext i8 %159 to i32
  %scevgep34.4.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %130, i64 0, i64 0, i64 4
  %160 = load i8, i8* %scevgep34.4.2, align 1
  %conv49.4.2 = zext i8 %160 to i32
  %xor.4.2 = xor i32 %conv44.4.2, %conv49.4.2
  %conv50.4.2 = trunc i32 %xor.4.2 to i8
  %scevgep38.4.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %131, i64 0, i64 0, i64 4
  store i8 %conv50.4.2, i8* %scevgep38.4.2, align 1
  %161 = load i8, i8* %arrayidx56.2, align 1
  %conv57.4.2 = zext i8 %161 to i32
  %xor58.4.2 = xor i32 %conv57.4.2, 1
  %conv59.4.2 = trunc i32 %xor58.4.2 to i8
  %scevgep35.4.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %130, i64 0, i64 0, i64 4
  %162 = load i8, i8* %scevgep35.4.2, align 1
  %call64.4.2 = call zeroext i8 @mult(i8 zeroext %conv59.4.2, i8 zeroext %162)
  %scevgep42.4.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %132, i64 0, i64 0, i64 4
  store i8 %call64.4.2, i8* %scevgep42.4.2, align 1
  %163 = load i8, i8* %arrayidx70.2, align 1
  %scevgep39.4.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %131, i64 0, i64 0, i64 4
  %164 = load i8, i8* %scevgep39.4.2, align 1
  %call75.4.2 = call zeroext i8 @mult(i8 zeroext %163, i8 zeroext %164)
  %scevgep46.4.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %133, i64 0, i64 0, i64 4
  store i8 %call75.4.2, i8* %scevgep46.4.2, align 1
  %scevgep43.4.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %132, i64 0, i64 0, i64 4
  %165 = load i8, i8* %scevgep43.4.2, align 1
  %conv84.4.2 = zext i8 %165 to i32
  %scevgep47.4.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %133, i64 0, i64 0, i64 4
  %166 = load i8, i8* %scevgep47.4.2, align 1
  %conv89.4.2 = zext i8 %166 to i32
  %xor90.4.2 = xor i32 %conv84.4.2, %conv89.4.2
  %conv91.4.2 = trunc i32 %xor90.4.2 to i8
  %scevgep50.4.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %134, i64 0, i64 0, i64 4
  store i8 %conv91.4.2, i8* %scevgep50.4.2, align 1
  %scevgep31.5.2 = getelementptr i8, i8* %b, i64 5
  %167 = load i8, i8* %scevgep31.5.2, align 1
  %conv44.5.2 = zext i8 %167 to i32
  %scevgep34.5.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %130, i64 0, i64 0, i64 5
  %168 = load i8, i8* %scevgep34.5.2, align 1
  %conv49.5.2 = zext i8 %168 to i32
  %xor.5.2 = xor i32 %conv44.5.2, %conv49.5.2
  %conv50.5.2 = trunc i32 %xor.5.2 to i8
  %scevgep38.5.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %131, i64 0, i64 0, i64 5
  store i8 %conv50.5.2, i8* %scevgep38.5.2, align 1
  %169 = load i8, i8* %arrayidx56.2, align 1
  %conv57.5.2 = zext i8 %169 to i32
  %xor58.5.2 = xor i32 %conv57.5.2, 1
  %conv59.5.2 = trunc i32 %xor58.5.2 to i8
  %scevgep35.5.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %130, i64 0, i64 0, i64 5
  %170 = load i8, i8* %scevgep35.5.2, align 1
  %call64.5.2 = call zeroext i8 @mult(i8 zeroext %conv59.5.2, i8 zeroext %170)
  %scevgep42.5.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %132, i64 0, i64 0, i64 5
  store i8 %call64.5.2, i8* %scevgep42.5.2, align 1
  %171 = load i8, i8* %arrayidx70.2, align 1
  %scevgep39.5.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %131, i64 0, i64 0, i64 5
  %172 = load i8, i8* %scevgep39.5.2, align 1
  %call75.5.2 = call zeroext i8 @mult(i8 zeroext %171, i8 zeroext %172)
  %scevgep46.5.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %133, i64 0, i64 0, i64 5
  store i8 %call75.5.2, i8* %scevgep46.5.2, align 1
  %scevgep43.5.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %132, i64 0, i64 0, i64 5
  %173 = load i8, i8* %scevgep43.5.2, align 1
  %conv84.5.2 = zext i8 %173 to i32
  %scevgep47.5.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %133, i64 0, i64 0, i64 5
  %174 = load i8, i8* %scevgep47.5.2, align 1
  %conv89.5.2 = zext i8 %174 to i32
  %xor90.5.2 = xor i32 %conv84.5.2, %conv89.5.2
  %conv91.5.2 = trunc i32 %xor90.5.2 to i8
  %scevgep50.5.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %134, i64 0, i64 0, i64 5
  store i8 %conv91.5.2, i8* %scevgep50.5.2, align 1
  %scevgep33.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %130, i64 0, i64 1, i64 0
  %175 = bitcast i8* %scevgep33.2 to [6 x [6 x i8]]*
  %scevgep37.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %131, i64 0, i64 1, i64 0
  %176 = bitcast i8* %scevgep37.2 to [6 x [6 x i8]]*
  %scevgep41.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %132, i64 0, i64 1, i64 0
  %177 = bitcast i8* %scevgep41.2 to [6 x [6 x i8]]*
  %scevgep45.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %133, i64 0, i64 1, i64 0
  %178 = bitcast i8* %scevgep45.2 to [6 x [6 x i8]]*
  %scevgep49.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %134, i64 0, i64 1, i64 0
  %179 = bitcast i8* %scevgep49.2 to [6 x [6 x i8]]*
  %arrayidx56.3 = getelementptr inbounds i8, i8* %a, i64 3
  %arrayidx70.3 = getelementptr inbounds i8, i8* %a, i64 3
  %180 = load i8, i8* %b, align 1
  %conv44.3182 = zext i8 %180 to i32
  %scevgep34.3183 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %175, i64 0, i64 0, i64 0
  %181 = load i8, i8* %scevgep34.3183, align 1
  %conv49.3184 = zext i8 %181 to i32
  %xor.3185 = xor i32 %conv44.3182, %conv49.3184
  %conv50.3186 = trunc i32 %xor.3185 to i8
  %scevgep38.3187 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %176, i64 0, i64 0, i64 0
  store i8 %conv50.3186, i8* %scevgep38.3187, align 1
  %182 = load i8, i8* %arrayidx56.3, align 1
  %conv57.3188 = zext i8 %182 to i32
  %xor58.3189 = xor i32 %conv57.3188, 1
  %conv59.3190 = trunc i32 %xor58.3189 to i8
  %scevgep35.3191 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %175, i64 0, i64 0, i64 0
  %183 = load i8, i8* %scevgep35.3191, align 1
  %call64.3192 = call zeroext i8 @mult(i8 zeroext %conv59.3190, i8 zeroext %183)
  %scevgep42.3193 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %177, i64 0, i64 0, i64 0
  store i8 %call64.3192, i8* %scevgep42.3193, align 1
  %184 = load i8, i8* %arrayidx70.3, align 1
  %scevgep39.3194 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %176, i64 0, i64 0, i64 0
  %185 = load i8, i8* %scevgep39.3194, align 1
  %call75.3195 = call zeroext i8 @mult(i8 zeroext %184, i8 zeroext %185)
  %scevgep46.3196 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %178, i64 0, i64 0, i64 0
  store i8 %call75.3195, i8* %scevgep46.3196, align 1
  %scevgep43.3197 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %177, i64 0, i64 0, i64 0
  %186 = load i8, i8* %scevgep43.3197, align 1
  %conv84.3198 = zext i8 %186 to i32
  %scevgep47.3199 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %178, i64 0, i64 0, i64 0
  %187 = load i8, i8* %scevgep47.3199, align 1
  %conv89.3200 = zext i8 %187 to i32
  %xor90.3201 = xor i32 %conv84.3198, %conv89.3200
  %conv91.3202 = trunc i32 %xor90.3201 to i8
  %scevgep50.3203 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %179, i64 0, i64 0, i64 0
  store i8 %conv91.3202, i8* %scevgep50.3203, align 1
  %scevgep31.1.3 = getelementptr i8, i8* %b, i64 1
  %188 = load i8, i8* %scevgep31.1.3, align 1
  %conv44.1.3 = zext i8 %188 to i32
  %scevgep34.1.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %175, i64 0, i64 0, i64 1
  %189 = load i8, i8* %scevgep34.1.3, align 1
  %conv49.1.3 = zext i8 %189 to i32
  %xor.1.3 = xor i32 %conv44.1.3, %conv49.1.3
  %conv50.1.3 = trunc i32 %xor.1.3 to i8
  %scevgep38.1.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %176, i64 0, i64 0, i64 1
  store i8 %conv50.1.3, i8* %scevgep38.1.3, align 1
  %190 = load i8, i8* %arrayidx56.3, align 1
  %conv57.1.3 = zext i8 %190 to i32
  %xor58.1.3 = xor i32 %conv57.1.3, 1
  %conv59.1.3 = trunc i32 %xor58.1.3 to i8
  %scevgep35.1.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %175, i64 0, i64 0, i64 1
  %191 = load i8, i8* %scevgep35.1.3, align 1
  %call64.1.3 = call zeroext i8 @mult(i8 zeroext %conv59.1.3, i8 zeroext %191)
  %scevgep42.1.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %177, i64 0, i64 0, i64 1
  store i8 %call64.1.3, i8* %scevgep42.1.3, align 1
  %192 = load i8, i8* %arrayidx70.3, align 1
  %scevgep39.1.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %176, i64 0, i64 0, i64 1
  %193 = load i8, i8* %scevgep39.1.3, align 1
  %call75.1.3 = call zeroext i8 @mult(i8 zeroext %192, i8 zeroext %193)
  %scevgep46.1.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %178, i64 0, i64 0, i64 1
  store i8 %call75.1.3, i8* %scevgep46.1.3, align 1
  %scevgep43.1.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %177, i64 0, i64 0, i64 1
  %194 = load i8, i8* %scevgep43.1.3, align 1
  %conv84.1.3 = zext i8 %194 to i32
  %scevgep47.1.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %178, i64 0, i64 0, i64 1
  %195 = load i8, i8* %scevgep47.1.3, align 1
  %conv89.1.3 = zext i8 %195 to i32
  %xor90.1.3 = xor i32 %conv84.1.3, %conv89.1.3
  %conv91.1.3 = trunc i32 %xor90.1.3 to i8
  %scevgep50.1.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %179, i64 0, i64 0, i64 1
  store i8 %conv91.1.3, i8* %scevgep50.1.3, align 1
  %scevgep31.2.3 = getelementptr i8, i8* %b, i64 2
  %196 = load i8, i8* %scevgep31.2.3, align 1
  %conv44.2.3 = zext i8 %196 to i32
  %scevgep34.2.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %175, i64 0, i64 0, i64 2
  %197 = load i8, i8* %scevgep34.2.3, align 1
  %conv49.2.3 = zext i8 %197 to i32
  %xor.2.3 = xor i32 %conv44.2.3, %conv49.2.3
  %conv50.2.3 = trunc i32 %xor.2.3 to i8
  %scevgep38.2.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %176, i64 0, i64 0, i64 2
  store i8 %conv50.2.3, i8* %scevgep38.2.3, align 1
  %198 = load i8, i8* %arrayidx56.3, align 1
  %conv57.2.3 = zext i8 %198 to i32
  %xor58.2.3 = xor i32 %conv57.2.3, 1
  %conv59.2.3 = trunc i32 %xor58.2.3 to i8
  %scevgep35.2.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %175, i64 0, i64 0, i64 2
  %199 = load i8, i8* %scevgep35.2.3, align 1
  %call64.2.3 = call zeroext i8 @mult(i8 zeroext %conv59.2.3, i8 zeroext %199)
  %scevgep42.2.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %177, i64 0, i64 0, i64 2
  store i8 %call64.2.3, i8* %scevgep42.2.3, align 1
  %200 = load i8, i8* %arrayidx70.3, align 1
  %scevgep39.2.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %176, i64 0, i64 0, i64 2
  %201 = load i8, i8* %scevgep39.2.3, align 1
  %call75.2.3 = call zeroext i8 @mult(i8 zeroext %200, i8 zeroext %201)
  %scevgep46.2.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %178, i64 0, i64 0, i64 2
  store i8 %call75.2.3, i8* %scevgep46.2.3, align 1
  %scevgep43.2.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %177, i64 0, i64 0, i64 2
  %202 = load i8, i8* %scevgep43.2.3, align 1
  %conv84.2.3 = zext i8 %202 to i32
  %scevgep47.2.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %178, i64 0, i64 0, i64 2
  %203 = load i8, i8* %scevgep47.2.3, align 1
  %conv89.2.3 = zext i8 %203 to i32
  %xor90.2.3 = xor i32 %conv84.2.3, %conv89.2.3
  %conv91.2.3 = trunc i32 %xor90.2.3 to i8
  %scevgep50.2.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %179, i64 0, i64 0, i64 2
  store i8 %conv91.2.3, i8* %scevgep50.2.3, align 1
  %scevgep31.4.3 = getelementptr i8, i8* %b, i64 4
  %204 = load i8, i8* %scevgep31.4.3, align 1
  %conv44.4.3 = zext i8 %204 to i32
  %scevgep34.4.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %175, i64 0, i64 0, i64 4
  %205 = load i8, i8* %scevgep34.4.3, align 1
  %conv49.4.3 = zext i8 %205 to i32
  %xor.4.3 = xor i32 %conv44.4.3, %conv49.4.3
  %conv50.4.3 = trunc i32 %xor.4.3 to i8
  %scevgep38.4.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %176, i64 0, i64 0, i64 4
  store i8 %conv50.4.3, i8* %scevgep38.4.3, align 1
  %206 = load i8, i8* %arrayidx56.3, align 1
  %conv57.4.3 = zext i8 %206 to i32
  %xor58.4.3 = xor i32 %conv57.4.3, 1
  %conv59.4.3 = trunc i32 %xor58.4.3 to i8
  %scevgep35.4.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %175, i64 0, i64 0, i64 4
  %207 = load i8, i8* %scevgep35.4.3, align 1
  %call64.4.3 = call zeroext i8 @mult(i8 zeroext %conv59.4.3, i8 zeroext %207)
  %scevgep42.4.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %177, i64 0, i64 0, i64 4
  store i8 %call64.4.3, i8* %scevgep42.4.3, align 1
  %208 = load i8, i8* %arrayidx70.3, align 1
  %scevgep39.4.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %176, i64 0, i64 0, i64 4
  %209 = load i8, i8* %scevgep39.4.3, align 1
  %call75.4.3 = call zeroext i8 @mult(i8 zeroext %208, i8 zeroext %209)
  %scevgep46.4.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %178, i64 0, i64 0, i64 4
  store i8 %call75.4.3, i8* %scevgep46.4.3, align 1
  %scevgep43.4.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %177, i64 0, i64 0, i64 4
  %210 = load i8, i8* %scevgep43.4.3, align 1
  %conv84.4.3 = zext i8 %210 to i32
  %scevgep47.4.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %178, i64 0, i64 0, i64 4
  %211 = load i8, i8* %scevgep47.4.3, align 1
  %conv89.4.3 = zext i8 %211 to i32
  %xor90.4.3 = xor i32 %conv84.4.3, %conv89.4.3
  %conv91.4.3 = trunc i32 %xor90.4.3 to i8
  %scevgep50.4.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %179, i64 0, i64 0, i64 4
  store i8 %conv91.4.3, i8* %scevgep50.4.3, align 1
  %scevgep31.5.3 = getelementptr i8, i8* %b, i64 5
  %212 = load i8, i8* %scevgep31.5.3, align 1
  %conv44.5.3 = zext i8 %212 to i32
  %scevgep34.5.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %175, i64 0, i64 0, i64 5
  %213 = load i8, i8* %scevgep34.5.3, align 1
  %conv49.5.3 = zext i8 %213 to i32
  %xor.5.3 = xor i32 %conv44.5.3, %conv49.5.3
  %conv50.5.3 = trunc i32 %xor.5.3 to i8
  %scevgep38.5.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %176, i64 0, i64 0, i64 5
  store i8 %conv50.5.3, i8* %scevgep38.5.3, align 1
  %214 = load i8, i8* %arrayidx56.3, align 1
  %conv57.5.3 = zext i8 %214 to i32
  %xor58.5.3 = xor i32 %conv57.5.3, 1
  %conv59.5.3 = trunc i32 %xor58.5.3 to i8
  %scevgep35.5.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %175, i64 0, i64 0, i64 5
  %215 = load i8, i8* %scevgep35.5.3, align 1
  %call64.5.3 = call zeroext i8 @mult(i8 zeroext %conv59.5.3, i8 zeroext %215)
  %scevgep42.5.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %177, i64 0, i64 0, i64 5
  store i8 %call64.5.3, i8* %scevgep42.5.3, align 1
  %216 = load i8, i8* %arrayidx70.3, align 1
  %scevgep39.5.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %176, i64 0, i64 0, i64 5
  %217 = load i8, i8* %scevgep39.5.3, align 1
  %call75.5.3 = call zeroext i8 @mult(i8 zeroext %216, i8 zeroext %217)
  %scevgep46.5.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %178, i64 0, i64 0, i64 5
  store i8 %call75.5.3, i8* %scevgep46.5.3, align 1
  %scevgep43.5.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %177, i64 0, i64 0, i64 5
  %218 = load i8, i8* %scevgep43.5.3, align 1
  %conv84.5.3 = zext i8 %218 to i32
  %scevgep47.5.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %178, i64 0, i64 0, i64 5
  %219 = load i8, i8* %scevgep47.5.3, align 1
  %conv89.5.3 = zext i8 %219 to i32
  %xor90.5.3 = xor i32 %conv84.5.3, %conv89.5.3
  %conv91.5.3 = trunc i32 %xor90.5.3 to i8
  %scevgep50.5.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %179, i64 0, i64 0, i64 5
  store i8 %conv91.5.3, i8* %scevgep50.5.3, align 1
  %scevgep33.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %175, i64 0, i64 1, i64 0
  %220 = bitcast i8* %scevgep33.3 to [6 x [6 x i8]]*
  %scevgep37.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %176, i64 0, i64 1, i64 0
  %221 = bitcast i8* %scevgep37.3 to [6 x [6 x i8]]*
  %scevgep41.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %177, i64 0, i64 1, i64 0
  %222 = bitcast i8* %scevgep41.3 to [6 x [6 x i8]]*
  %scevgep45.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %178, i64 0, i64 1, i64 0
  %223 = bitcast i8* %scevgep45.3 to [6 x [6 x i8]]*
  %scevgep49.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %179, i64 0, i64 1, i64 0
  %224 = bitcast i8* %scevgep49.3 to [6 x [6 x i8]]*
  %arrayidx56.4 = getelementptr inbounds i8, i8* %a, i64 4
  %arrayidx70.4 = getelementptr inbounds i8, i8* %a, i64 4
  %225 = load i8, i8* %b, align 1
  %conv44.4209 = zext i8 %225 to i32
  %scevgep34.4210 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %220, i64 0, i64 0, i64 0
  %226 = load i8, i8* %scevgep34.4210, align 1
  %conv49.4211 = zext i8 %226 to i32
  %xor.4212 = xor i32 %conv44.4209, %conv49.4211
  %conv50.4213 = trunc i32 %xor.4212 to i8
  %scevgep38.4214 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %221, i64 0, i64 0, i64 0
  store i8 %conv50.4213, i8* %scevgep38.4214, align 1
  %227 = load i8, i8* %arrayidx56.4, align 1
  %conv57.4215 = zext i8 %227 to i32
  %xor58.4216 = xor i32 %conv57.4215, 1
  %conv59.4217 = trunc i32 %xor58.4216 to i8
  %scevgep35.4218 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %220, i64 0, i64 0, i64 0
  %228 = load i8, i8* %scevgep35.4218, align 1
  %call64.4219 = call zeroext i8 @mult(i8 zeroext %conv59.4217, i8 zeroext %228)
  %scevgep42.4220 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %222, i64 0, i64 0, i64 0
  store i8 %call64.4219, i8* %scevgep42.4220, align 1
  %229 = load i8, i8* %arrayidx70.4, align 1
  %scevgep39.4221 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %221, i64 0, i64 0, i64 0
  %230 = load i8, i8* %scevgep39.4221, align 1
  %call75.4222 = call zeroext i8 @mult(i8 zeroext %229, i8 zeroext %230)
  %scevgep46.4223 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %223, i64 0, i64 0, i64 0
  store i8 %call75.4222, i8* %scevgep46.4223, align 1
  %scevgep43.4224 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %222, i64 0, i64 0, i64 0
  %231 = load i8, i8* %scevgep43.4224, align 1
  %conv84.4225 = zext i8 %231 to i32
  %scevgep47.4226 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %223, i64 0, i64 0, i64 0
  %232 = load i8, i8* %scevgep47.4226, align 1
  %conv89.4227 = zext i8 %232 to i32
  %xor90.4228 = xor i32 %conv84.4225, %conv89.4227
  %conv91.4229 = trunc i32 %xor90.4228 to i8
  %scevgep50.4230 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %224, i64 0, i64 0, i64 0
  store i8 %conv91.4229, i8* %scevgep50.4230, align 1
  %scevgep31.1.4 = getelementptr i8, i8* %b, i64 1
  %233 = load i8, i8* %scevgep31.1.4, align 1
  %conv44.1.4 = zext i8 %233 to i32
  %scevgep34.1.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %220, i64 0, i64 0, i64 1
  %234 = load i8, i8* %scevgep34.1.4, align 1
  %conv49.1.4 = zext i8 %234 to i32
  %xor.1.4 = xor i32 %conv44.1.4, %conv49.1.4
  %conv50.1.4 = trunc i32 %xor.1.4 to i8
  %scevgep38.1.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %221, i64 0, i64 0, i64 1
  store i8 %conv50.1.4, i8* %scevgep38.1.4, align 1
  %235 = load i8, i8* %arrayidx56.4, align 1
  %conv57.1.4 = zext i8 %235 to i32
  %xor58.1.4 = xor i32 %conv57.1.4, 1
  %conv59.1.4 = trunc i32 %xor58.1.4 to i8
  %scevgep35.1.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %220, i64 0, i64 0, i64 1
  %236 = load i8, i8* %scevgep35.1.4, align 1
  %call64.1.4 = call zeroext i8 @mult(i8 zeroext %conv59.1.4, i8 zeroext %236)
  %scevgep42.1.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %222, i64 0, i64 0, i64 1
  store i8 %call64.1.4, i8* %scevgep42.1.4, align 1
  %237 = load i8, i8* %arrayidx70.4, align 1
  %scevgep39.1.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %221, i64 0, i64 0, i64 1
  %238 = load i8, i8* %scevgep39.1.4, align 1
  %call75.1.4 = call zeroext i8 @mult(i8 zeroext %237, i8 zeroext %238)
  %scevgep46.1.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %223, i64 0, i64 0, i64 1
  store i8 %call75.1.4, i8* %scevgep46.1.4, align 1
  %scevgep43.1.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %222, i64 0, i64 0, i64 1
  %239 = load i8, i8* %scevgep43.1.4, align 1
  %conv84.1.4 = zext i8 %239 to i32
  %scevgep47.1.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %223, i64 0, i64 0, i64 1
  %240 = load i8, i8* %scevgep47.1.4, align 1
  %conv89.1.4 = zext i8 %240 to i32
  %xor90.1.4 = xor i32 %conv84.1.4, %conv89.1.4
  %conv91.1.4 = trunc i32 %xor90.1.4 to i8
  %scevgep50.1.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %224, i64 0, i64 0, i64 1
  store i8 %conv91.1.4, i8* %scevgep50.1.4, align 1
  %scevgep31.2.4 = getelementptr i8, i8* %b, i64 2
  %241 = load i8, i8* %scevgep31.2.4, align 1
  %conv44.2.4 = zext i8 %241 to i32
  %scevgep34.2.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %220, i64 0, i64 0, i64 2
  %242 = load i8, i8* %scevgep34.2.4, align 1
  %conv49.2.4 = zext i8 %242 to i32
  %xor.2.4 = xor i32 %conv44.2.4, %conv49.2.4
  %conv50.2.4 = trunc i32 %xor.2.4 to i8
  %scevgep38.2.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %221, i64 0, i64 0, i64 2
  store i8 %conv50.2.4, i8* %scevgep38.2.4, align 1
  %243 = load i8, i8* %arrayidx56.4, align 1
  %conv57.2.4 = zext i8 %243 to i32
  %xor58.2.4 = xor i32 %conv57.2.4, 1
  %conv59.2.4 = trunc i32 %xor58.2.4 to i8
  %scevgep35.2.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %220, i64 0, i64 0, i64 2
  %244 = load i8, i8* %scevgep35.2.4, align 1
  %call64.2.4 = call zeroext i8 @mult(i8 zeroext %conv59.2.4, i8 zeroext %244)
  %scevgep42.2.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %222, i64 0, i64 0, i64 2
  store i8 %call64.2.4, i8* %scevgep42.2.4, align 1
  %245 = load i8, i8* %arrayidx70.4, align 1
  %scevgep39.2.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %221, i64 0, i64 0, i64 2
  %246 = load i8, i8* %scevgep39.2.4, align 1
  %call75.2.4 = call zeroext i8 @mult(i8 zeroext %245, i8 zeroext %246)
  %scevgep46.2.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %223, i64 0, i64 0, i64 2
  store i8 %call75.2.4, i8* %scevgep46.2.4, align 1
  %scevgep43.2.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %222, i64 0, i64 0, i64 2
  %247 = load i8, i8* %scevgep43.2.4, align 1
  %conv84.2.4 = zext i8 %247 to i32
  %scevgep47.2.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %223, i64 0, i64 0, i64 2
  %248 = load i8, i8* %scevgep47.2.4, align 1
  %conv89.2.4 = zext i8 %248 to i32
  %xor90.2.4 = xor i32 %conv84.2.4, %conv89.2.4
  %conv91.2.4 = trunc i32 %xor90.2.4 to i8
  %scevgep50.2.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %224, i64 0, i64 0, i64 2
  store i8 %conv91.2.4, i8* %scevgep50.2.4, align 1
  %scevgep31.3.4 = getelementptr i8, i8* %b, i64 3
  %249 = load i8, i8* %scevgep31.3.4, align 1
  %conv44.3.4 = zext i8 %249 to i32
  %scevgep34.3.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %220, i64 0, i64 0, i64 3
  %250 = load i8, i8* %scevgep34.3.4, align 1
  %conv49.3.4 = zext i8 %250 to i32
  %xor.3.4 = xor i32 %conv44.3.4, %conv49.3.4
  %conv50.3.4 = trunc i32 %xor.3.4 to i8
  %scevgep38.3.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %221, i64 0, i64 0, i64 3
  store i8 %conv50.3.4, i8* %scevgep38.3.4, align 1
  %251 = load i8, i8* %arrayidx56.4, align 1
  %conv57.3.4 = zext i8 %251 to i32
  %xor58.3.4 = xor i32 %conv57.3.4, 1
  %conv59.3.4 = trunc i32 %xor58.3.4 to i8
  %scevgep35.3.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %220, i64 0, i64 0, i64 3
  %252 = load i8, i8* %scevgep35.3.4, align 1
  %call64.3.4 = call zeroext i8 @mult(i8 zeroext %conv59.3.4, i8 zeroext %252)
  %scevgep42.3.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %222, i64 0, i64 0, i64 3
  store i8 %call64.3.4, i8* %scevgep42.3.4, align 1
  %253 = load i8, i8* %arrayidx70.4, align 1
  %scevgep39.3.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %221, i64 0, i64 0, i64 3
  %254 = load i8, i8* %scevgep39.3.4, align 1
  %call75.3.4 = call zeroext i8 @mult(i8 zeroext %253, i8 zeroext %254)
  %scevgep46.3.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %223, i64 0, i64 0, i64 3
  store i8 %call75.3.4, i8* %scevgep46.3.4, align 1
  %scevgep43.3.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %222, i64 0, i64 0, i64 3
  %255 = load i8, i8* %scevgep43.3.4, align 1
  %conv84.3.4 = zext i8 %255 to i32
  %scevgep47.3.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %223, i64 0, i64 0, i64 3
  %256 = load i8, i8* %scevgep47.3.4, align 1
  %conv89.3.4 = zext i8 %256 to i32
  %xor90.3.4 = xor i32 %conv84.3.4, %conv89.3.4
  %conv91.3.4 = trunc i32 %xor90.3.4 to i8
  %scevgep50.3.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %224, i64 0, i64 0, i64 3
  store i8 %conv91.3.4, i8* %scevgep50.3.4, align 1
  %scevgep31.5.4 = getelementptr i8, i8* %b, i64 5
  %257 = load i8, i8* %scevgep31.5.4, align 1
  %conv44.5.4 = zext i8 %257 to i32
  %scevgep34.5.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %220, i64 0, i64 0, i64 5
  %258 = load i8, i8* %scevgep34.5.4, align 1
  %conv49.5.4 = zext i8 %258 to i32
  %xor.5.4 = xor i32 %conv44.5.4, %conv49.5.4
  %conv50.5.4 = trunc i32 %xor.5.4 to i8
  %scevgep38.5.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %221, i64 0, i64 0, i64 5
  store i8 %conv50.5.4, i8* %scevgep38.5.4, align 1
  %259 = load i8, i8* %arrayidx56.4, align 1
  %conv57.5.4 = zext i8 %259 to i32
  %xor58.5.4 = xor i32 %conv57.5.4, 1
  %conv59.5.4 = trunc i32 %xor58.5.4 to i8
  %scevgep35.5.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %220, i64 0, i64 0, i64 5
  %260 = load i8, i8* %scevgep35.5.4, align 1
  %call64.5.4 = call zeroext i8 @mult(i8 zeroext %conv59.5.4, i8 zeroext %260)
  %scevgep42.5.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %222, i64 0, i64 0, i64 5
  store i8 %call64.5.4, i8* %scevgep42.5.4, align 1
  %261 = load i8, i8* %arrayidx70.4, align 1
  %scevgep39.5.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %221, i64 0, i64 0, i64 5
  %262 = load i8, i8* %scevgep39.5.4, align 1
  %call75.5.4 = call zeroext i8 @mult(i8 zeroext %261, i8 zeroext %262)
  %scevgep46.5.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %223, i64 0, i64 0, i64 5
  store i8 %call75.5.4, i8* %scevgep46.5.4, align 1
  %scevgep43.5.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %222, i64 0, i64 0, i64 5
  %263 = load i8, i8* %scevgep43.5.4, align 1
  %conv84.5.4 = zext i8 %263 to i32
  %scevgep47.5.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %223, i64 0, i64 0, i64 5
  %264 = load i8, i8* %scevgep47.5.4, align 1
  %conv89.5.4 = zext i8 %264 to i32
  %xor90.5.4 = xor i32 %conv84.5.4, %conv89.5.4
  %conv91.5.4 = trunc i32 %xor90.5.4 to i8
  %scevgep50.5.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %224, i64 0, i64 0, i64 5
  store i8 %conv91.5.4, i8* %scevgep50.5.4, align 1
  %scevgep33.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %220, i64 0, i64 1, i64 0
  %265 = bitcast i8* %scevgep33.4 to [6 x [6 x i8]]*
  %scevgep37.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %221, i64 0, i64 1, i64 0
  %266 = bitcast i8* %scevgep37.4 to [6 x [6 x i8]]*
  %scevgep41.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %222, i64 0, i64 1, i64 0
  %267 = bitcast i8* %scevgep41.4 to [6 x [6 x i8]]*
  %scevgep45.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %223, i64 0, i64 1, i64 0
  %268 = bitcast i8* %scevgep45.4 to [6 x [6 x i8]]*
  %scevgep49.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %224, i64 0, i64 1, i64 0
  %269 = bitcast i8* %scevgep49.4 to [6 x [6 x i8]]*
  %arrayidx56.5 = getelementptr inbounds i8, i8* %a, i64 5
  %arrayidx70.5 = getelementptr inbounds i8, i8* %a, i64 5
  %270 = load i8, i8* %b, align 1
  %conv44.5236 = zext i8 %270 to i32
  %scevgep34.5237 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %265, i64 0, i64 0, i64 0
  %271 = load i8, i8* %scevgep34.5237, align 1
  %conv49.5238 = zext i8 %271 to i32
  %xor.5239 = xor i32 %conv44.5236, %conv49.5238
  %conv50.5240 = trunc i32 %xor.5239 to i8
  %scevgep38.5241 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %266, i64 0, i64 0, i64 0
  store i8 %conv50.5240, i8* %scevgep38.5241, align 1
  %272 = load i8, i8* %arrayidx56.5, align 1
  %conv57.5242 = zext i8 %272 to i32
  %xor58.5243 = xor i32 %conv57.5242, 1
  %conv59.5244 = trunc i32 %xor58.5243 to i8
  %scevgep35.5245 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %265, i64 0, i64 0, i64 0
  %273 = load i8, i8* %scevgep35.5245, align 1
  %call64.5246 = call zeroext i8 @mult(i8 zeroext %conv59.5244, i8 zeroext %273)
  %scevgep42.5247 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %267, i64 0, i64 0, i64 0
  store i8 %call64.5246, i8* %scevgep42.5247, align 1
  %274 = load i8, i8* %arrayidx70.5, align 1
  %scevgep39.5248 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %266, i64 0, i64 0, i64 0
  %275 = load i8, i8* %scevgep39.5248, align 1
  %call75.5249 = call zeroext i8 @mult(i8 zeroext %274, i8 zeroext %275)
  %scevgep46.5250 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %268, i64 0, i64 0, i64 0
  store i8 %call75.5249, i8* %scevgep46.5250, align 1
  %scevgep43.5251 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %267, i64 0, i64 0, i64 0
  %276 = load i8, i8* %scevgep43.5251, align 1
  %conv84.5252 = zext i8 %276 to i32
  %scevgep47.5253 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %268, i64 0, i64 0, i64 0
  %277 = load i8, i8* %scevgep47.5253, align 1
  %conv89.5254 = zext i8 %277 to i32
  %xor90.5255 = xor i32 %conv84.5252, %conv89.5254
  %conv91.5256 = trunc i32 %xor90.5255 to i8
  %scevgep50.5257 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %269, i64 0, i64 0, i64 0
  store i8 %conv91.5256, i8* %scevgep50.5257, align 1
  %scevgep31.1.5 = getelementptr i8, i8* %b, i64 1
  %278 = load i8, i8* %scevgep31.1.5, align 1
  %conv44.1.5 = zext i8 %278 to i32
  %scevgep34.1.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %265, i64 0, i64 0, i64 1
  %279 = load i8, i8* %scevgep34.1.5, align 1
  %conv49.1.5 = zext i8 %279 to i32
  %xor.1.5 = xor i32 %conv44.1.5, %conv49.1.5
  %conv50.1.5 = trunc i32 %xor.1.5 to i8
  %scevgep38.1.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %266, i64 0, i64 0, i64 1
  store i8 %conv50.1.5, i8* %scevgep38.1.5, align 1
  %280 = load i8, i8* %arrayidx56.5, align 1
  %conv57.1.5 = zext i8 %280 to i32
  %xor58.1.5 = xor i32 %conv57.1.5, 1
  %conv59.1.5 = trunc i32 %xor58.1.5 to i8
  %scevgep35.1.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %265, i64 0, i64 0, i64 1
  %281 = load i8, i8* %scevgep35.1.5, align 1
  %call64.1.5 = call zeroext i8 @mult(i8 zeroext %conv59.1.5, i8 zeroext %281)
  %scevgep42.1.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %267, i64 0, i64 0, i64 1
  store i8 %call64.1.5, i8* %scevgep42.1.5, align 1
  %282 = load i8, i8* %arrayidx70.5, align 1
  %scevgep39.1.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %266, i64 0, i64 0, i64 1
  %283 = load i8, i8* %scevgep39.1.5, align 1
  %call75.1.5 = call zeroext i8 @mult(i8 zeroext %282, i8 zeroext %283)
  %scevgep46.1.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %268, i64 0, i64 0, i64 1
  store i8 %call75.1.5, i8* %scevgep46.1.5, align 1
  %scevgep43.1.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %267, i64 0, i64 0, i64 1
  %284 = load i8, i8* %scevgep43.1.5, align 1
  %conv84.1.5 = zext i8 %284 to i32
  %scevgep47.1.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %268, i64 0, i64 0, i64 1
  %285 = load i8, i8* %scevgep47.1.5, align 1
  %conv89.1.5 = zext i8 %285 to i32
  %xor90.1.5 = xor i32 %conv84.1.5, %conv89.1.5
  %conv91.1.5 = trunc i32 %xor90.1.5 to i8
  %scevgep50.1.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %269, i64 0, i64 0, i64 1
  store i8 %conv91.1.5, i8* %scevgep50.1.5, align 1
  %scevgep31.2.5 = getelementptr i8, i8* %b, i64 2
  %286 = load i8, i8* %scevgep31.2.5, align 1
  %conv44.2.5 = zext i8 %286 to i32
  %scevgep34.2.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %265, i64 0, i64 0, i64 2
  %287 = load i8, i8* %scevgep34.2.5, align 1
  %conv49.2.5 = zext i8 %287 to i32
  %xor.2.5 = xor i32 %conv44.2.5, %conv49.2.5
  %conv50.2.5 = trunc i32 %xor.2.5 to i8
  %scevgep38.2.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %266, i64 0, i64 0, i64 2
  store i8 %conv50.2.5, i8* %scevgep38.2.5, align 1
  %288 = load i8, i8* %arrayidx56.5, align 1
  %conv57.2.5 = zext i8 %288 to i32
  %xor58.2.5 = xor i32 %conv57.2.5, 1
  %conv59.2.5 = trunc i32 %xor58.2.5 to i8
  %scevgep35.2.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %265, i64 0, i64 0, i64 2
  %289 = load i8, i8* %scevgep35.2.5, align 1
  %call64.2.5 = call zeroext i8 @mult(i8 zeroext %conv59.2.5, i8 zeroext %289)
  %scevgep42.2.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %267, i64 0, i64 0, i64 2
  store i8 %call64.2.5, i8* %scevgep42.2.5, align 1
  %290 = load i8, i8* %arrayidx70.5, align 1
  %scevgep39.2.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %266, i64 0, i64 0, i64 2
  %291 = load i8, i8* %scevgep39.2.5, align 1
  %call75.2.5 = call zeroext i8 @mult(i8 zeroext %290, i8 zeroext %291)
  %scevgep46.2.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %268, i64 0, i64 0, i64 2
  store i8 %call75.2.5, i8* %scevgep46.2.5, align 1
  %scevgep43.2.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %267, i64 0, i64 0, i64 2
  %292 = load i8, i8* %scevgep43.2.5, align 1
  %conv84.2.5 = zext i8 %292 to i32
  %scevgep47.2.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %268, i64 0, i64 0, i64 2
  %293 = load i8, i8* %scevgep47.2.5, align 1
  %conv89.2.5 = zext i8 %293 to i32
  %xor90.2.5 = xor i32 %conv84.2.5, %conv89.2.5
  %conv91.2.5 = trunc i32 %xor90.2.5 to i8
  %scevgep50.2.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %269, i64 0, i64 0, i64 2
  store i8 %conv91.2.5, i8* %scevgep50.2.5, align 1
  %scevgep31.3.5 = getelementptr i8, i8* %b, i64 3
  %294 = load i8, i8* %scevgep31.3.5, align 1
  %conv44.3.5 = zext i8 %294 to i32
  %scevgep34.3.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %265, i64 0, i64 0, i64 3
  %295 = load i8, i8* %scevgep34.3.5, align 1
  %conv49.3.5 = zext i8 %295 to i32
  %xor.3.5 = xor i32 %conv44.3.5, %conv49.3.5
  %conv50.3.5 = trunc i32 %xor.3.5 to i8
  %scevgep38.3.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %266, i64 0, i64 0, i64 3
  store i8 %conv50.3.5, i8* %scevgep38.3.5, align 1
  %296 = load i8, i8* %arrayidx56.5, align 1
  %conv57.3.5 = zext i8 %296 to i32
  %xor58.3.5 = xor i32 %conv57.3.5, 1
  %conv59.3.5 = trunc i32 %xor58.3.5 to i8
  %scevgep35.3.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %265, i64 0, i64 0, i64 3
  %297 = load i8, i8* %scevgep35.3.5, align 1
  %call64.3.5 = call zeroext i8 @mult(i8 zeroext %conv59.3.5, i8 zeroext %297)
  %scevgep42.3.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %267, i64 0, i64 0, i64 3
  store i8 %call64.3.5, i8* %scevgep42.3.5, align 1
  %298 = load i8, i8* %arrayidx70.5, align 1
  %scevgep39.3.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %266, i64 0, i64 0, i64 3
  %299 = load i8, i8* %scevgep39.3.5, align 1
  %call75.3.5 = call zeroext i8 @mult(i8 zeroext %298, i8 zeroext %299)
  %scevgep46.3.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %268, i64 0, i64 0, i64 3
  store i8 %call75.3.5, i8* %scevgep46.3.5, align 1
  %scevgep43.3.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %267, i64 0, i64 0, i64 3
  %300 = load i8, i8* %scevgep43.3.5, align 1
  %conv84.3.5 = zext i8 %300 to i32
  %scevgep47.3.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %268, i64 0, i64 0, i64 3
  %301 = load i8, i8* %scevgep47.3.5, align 1
  %conv89.3.5 = zext i8 %301 to i32
  %xor90.3.5 = xor i32 %conv84.3.5, %conv89.3.5
  %conv91.3.5 = trunc i32 %xor90.3.5 to i8
  %scevgep50.3.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %269, i64 0, i64 0, i64 3
  store i8 %conv91.3.5, i8* %scevgep50.3.5, align 1
  %scevgep31.4.5 = getelementptr i8, i8* %b, i64 4
  %302 = load i8, i8* %scevgep31.4.5, align 1
  %conv44.4.5 = zext i8 %302 to i32
  %scevgep34.4.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %265, i64 0, i64 0, i64 4
  %303 = load i8, i8* %scevgep34.4.5, align 1
  %conv49.4.5 = zext i8 %303 to i32
  %xor.4.5 = xor i32 %conv44.4.5, %conv49.4.5
  %conv50.4.5 = trunc i32 %xor.4.5 to i8
  %scevgep38.4.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %266, i64 0, i64 0, i64 4
  store i8 %conv50.4.5, i8* %scevgep38.4.5, align 1
  %304 = load i8, i8* %arrayidx56.5, align 1
  %conv57.4.5 = zext i8 %304 to i32
  %xor58.4.5 = xor i32 %conv57.4.5, 1
  %conv59.4.5 = trunc i32 %xor58.4.5 to i8
  %scevgep35.4.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %265, i64 0, i64 0, i64 4
  %305 = load i8, i8* %scevgep35.4.5, align 1
  %call64.4.5 = call zeroext i8 @mult(i8 zeroext %conv59.4.5, i8 zeroext %305)
  %scevgep42.4.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %267, i64 0, i64 0, i64 4
  store i8 %call64.4.5, i8* %scevgep42.4.5, align 1
  %306 = load i8, i8* %arrayidx70.5, align 1
  %scevgep39.4.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %266, i64 0, i64 0, i64 4
  %307 = load i8, i8* %scevgep39.4.5, align 1
  %call75.4.5 = call zeroext i8 @mult(i8 zeroext %306, i8 zeroext %307)
  %scevgep46.4.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %268, i64 0, i64 0, i64 4
  store i8 %call75.4.5, i8* %scevgep46.4.5, align 1
  %scevgep43.4.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %267, i64 0, i64 0, i64 4
  %308 = load i8, i8* %scevgep43.4.5, align 1
  %conv84.4.5 = zext i8 %308 to i32
  %scevgep47.4.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %268, i64 0, i64 0, i64 4
  %309 = load i8, i8* %scevgep47.4.5, align 1
  %conv89.4.5 = zext i8 %309 to i32
  %xor90.4.5 = xor i32 %conv84.4.5, %conv89.4.5
  %conv91.4.5 = trunc i32 %xor90.4.5 to i8
  %scevgep50.4.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %269, i64 0, i64 0, i64 4
  store i8 %conv91.4.5, i8* %scevgep50.4.5, align 1
  %310 = load i8, i8* %a, align 1
  %311 = load i8, i8* %b, align 1
  %call111 = call zeroext i8 @mult(i8 zeroext %310, i8 zeroext %311)
  store i8 %call111, i8* %c, align 1
  %scevgep22.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %z, i64 0, i64 0, i64 1
  %312 = load i8, i8* %scevgep22.1, align 1
  %conv126.1 = zext i8 %312 to i32
  %313 = load i8, i8* %c, align 1
  %conv129.1 = zext i8 %313 to i32
  %xor130.1 = xor i32 %conv129.1, %conv126.1
  %conv131.1 = trunc i32 %xor130.1 to i8
  store i8 %conv131.1, i8* %c, align 1
  %scevgep22.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %z, i64 0, i64 0, i64 2
  %314 = load i8, i8* %scevgep22.2, align 1
  %conv126.2 = zext i8 %314 to i32
  %315 = load i8, i8* %c, align 1
  %conv129.2 = zext i8 %315 to i32
  %xor130.2 = xor i32 %conv129.2, %conv126.2
  %conv131.2 = trunc i32 %xor130.2 to i8
  store i8 %conv131.2, i8* %c, align 1
  %scevgep22.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %z, i64 0, i64 0, i64 3
  %316 = load i8, i8* %scevgep22.3, align 1
  %conv126.3 = zext i8 %316 to i32
  %317 = load i8, i8* %c, align 1
  %conv129.3 = zext i8 %317 to i32
  %xor130.3 = xor i32 %conv129.3, %conv126.3
  %conv131.3 = trunc i32 %xor130.3 to i8
  store i8 %conv131.3, i8* %c, align 1
  %scevgep22.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %z, i64 0, i64 0, i64 4
  %318 = load i8, i8* %scevgep22.4, align 1
  %conv126.4 = zext i8 %318 to i32
  %319 = load i8, i8* %c, align 1
  %conv129.4 = zext i8 %319 to i32
  %xor130.4 = xor i32 %conv129.4, %conv126.4
  %conv131.4 = trunc i32 %xor130.4 to i8
  store i8 %conv131.4, i8* %c, align 1
  %scevgep22.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %z, i64 0, i64 0, i64 5
  %320 = load i8, i8* %scevgep22.5, align 1
  %conv126.5 = zext i8 %320 to i32
  %321 = load i8, i8* %c, align 1
  %conv129.5 = zext i8 %321 to i32
  %xor130.5 = xor i32 %conv129.5, %conv126.5
  %conv131.5 = trunc i32 %xor130.5 to i8
  store i8 %conv131.5, i8* %c, align 1
  %scevgep21 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %z, i64 0, i64 1, i64 0
  %322 = bitcast i8* %scevgep21 to [6 x [6 x i8]]*
  %arrayidx108.1 = getelementptr inbounds i8, i8* %a, i64 1
  %323 = load i8, i8* %arrayidx108.1, align 1
  %arrayidx110.1 = getelementptr inbounds i8, i8* %b, i64 1
  %324 = load i8, i8* %arrayidx110.1, align 1
  %call111.1 = call zeroext i8 @mult(i8 zeroext %323, i8 zeroext %324)
  %arrayidx113.1 = getelementptr inbounds i8, i8* %c, i64 1
  store i8 %call111.1, i8* %arrayidx113.1, align 1
  %arrayidx128.1 = getelementptr inbounds i8, i8* %c, i64 1
  %scevgep22.178 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %322, i64 0, i64 0, i64 0
  %325 = load i8, i8* %scevgep22.178, align 1
  %conv126.179 = zext i8 %325 to i32
  %326 = load i8, i8* %arrayidx128.1, align 1
  %conv129.180 = zext i8 %326 to i32
  %xor130.181 = xor i32 %conv129.180, %conv126.179
  %conv131.182 = trunc i32 %xor130.181 to i8
  store i8 %conv131.182, i8* %arrayidx128.1, align 1
  %scevgep22.2.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %322, i64 0, i64 0, i64 2
  %327 = load i8, i8* %scevgep22.2.1, align 1
  %conv126.2.1 = zext i8 %327 to i32
  %328 = load i8, i8* %arrayidx128.1, align 1
  %conv129.2.1 = zext i8 %328 to i32
  %xor130.2.1 = xor i32 %conv129.2.1, %conv126.2.1
  %conv131.2.1 = trunc i32 %xor130.2.1 to i8
  store i8 %conv131.2.1, i8* %arrayidx128.1, align 1
  %scevgep22.3.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %322, i64 0, i64 0, i64 3
  %329 = load i8, i8* %scevgep22.3.1, align 1
  %conv126.3.1 = zext i8 %329 to i32
  %330 = load i8, i8* %arrayidx128.1, align 1
  %conv129.3.1 = zext i8 %330 to i32
  %xor130.3.1 = xor i32 %conv129.3.1, %conv126.3.1
  %conv131.3.1 = trunc i32 %xor130.3.1 to i8
  store i8 %conv131.3.1, i8* %arrayidx128.1, align 1
  %scevgep22.4.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %322, i64 0, i64 0, i64 4
  %331 = load i8, i8* %scevgep22.4.1, align 1
  %conv126.4.1 = zext i8 %331 to i32
  %332 = load i8, i8* %arrayidx128.1, align 1
  %conv129.4.1 = zext i8 %332 to i32
  %xor130.4.1 = xor i32 %conv129.4.1, %conv126.4.1
  %conv131.4.1 = trunc i32 %xor130.4.1 to i8
  store i8 %conv131.4.1, i8* %arrayidx128.1, align 1
  %scevgep22.5.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %322, i64 0, i64 0, i64 5
  %333 = load i8, i8* %scevgep22.5.1, align 1
  %conv126.5.1 = zext i8 %333 to i32
  %334 = load i8, i8* %arrayidx128.1, align 1
  %conv129.5.1 = zext i8 %334 to i32
  %xor130.5.1 = xor i32 %conv129.5.1, %conv126.5.1
  %conv131.5.1 = trunc i32 %xor130.5.1 to i8
  store i8 %conv131.5.1, i8* %arrayidx128.1, align 1
  %scevgep21.1 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %322, i64 0, i64 1, i64 0
  %335 = bitcast i8* %scevgep21.1 to [6 x [6 x i8]]*
  %arrayidx108.2 = getelementptr inbounds i8, i8* %a, i64 2
  %336 = load i8, i8* %arrayidx108.2, align 1
  %arrayidx110.2 = getelementptr inbounds i8, i8* %b, i64 2
  %337 = load i8, i8* %arrayidx110.2, align 1
  %call111.2 = call zeroext i8 @mult(i8 zeroext %336, i8 zeroext %337)
  %arrayidx113.2 = getelementptr inbounds i8, i8* %c, i64 2
  store i8 %call111.2, i8* %arrayidx113.2, align 1
  %arrayidx128.2 = getelementptr inbounds i8, i8* %c, i64 2
  %scevgep22.288 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %335, i64 0, i64 0, i64 0
  %338 = load i8, i8* %scevgep22.288, align 1
  %conv126.289 = zext i8 %338 to i32
  %339 = load i8, i8* %arrayidx128.2, align 1
  %conv129.290 = zext i8 %339 to i32
  %xor130.291 = xor i32 %conv129.290, %conv126.289
  %conv131.292 = trunc i32 %xor130.291 to i8
  store i8 %conv131.292, i8* %arrayidx128.2, align 1
  %scevgep22.1.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %335, i64 0, i64 0, i64 1
  %340 = load i8, i8* %scevgep22.1.2, align 1
  %conv126.1.2 = zext i8 %340 to i32
  %341 = load i8, i8* %arrayidx128.2, align 1
  %conv129.1.2 = zext i8 %341 to i32
  %xor130.1.2 = xor i32 %conv129.1.2, %conv126.1.2
  %conv131.1.2 = trunc i32 %xor130.1.2 to i8
  store i8 %conv131.1.2, i8* %arrayidx128.2, align 1
  %scevgep22.3.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %335, i64 0, i64 0, i64 3
  %342 = load i8, i8* %scevgep22.3.2, align 1
  %conv126.3.2 = zext i8 %342 to i32
  %343 = load i8, i8* %arrayidx128.2, align 1
  %conv129.3.2 = zext i8 %343 to i32
  %xor130.3.2 = xor i32 %conv129.3.2, %conv126.3.2
  %conv131.3.2 = trunc i32 %xor130.3.2 to i8
  store i8 %conv131.3.2, i8* %arrayidx128.2, align 1
  %scevgep22.4.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %335, i64 0, i64 0, i64 4
  %344 = load i8, i8* %scevgep22.4.2, align 1
  %conv126.4.2 = zext i8 %344 to i32
  %345 = load i8, i8* %arrayidx128.2, align 1
  %conv129.4.2 = zext i8 %345 to i32
  %xor130.4.2 = xor i32 %conv129.4.2, %conv126.4.2
  %conv131.4.2 = trunc i32 %xor130.4.2 to i8
  store i8 %conv131.4.2, i8* %arrayidx128.2, align 1
  %scevgep22.5.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %335, i64 0, i64 0, i64 5
  %346 = load i8, i8* %scevgep22.5.2, align 1
  %conv126.5.2 = zext i8 %346 to i32
  %347 = load i8, i8* %arrayidx128.2, align 1
  %conv129.5.2 = zext i8 %347 to i32
  %xor130.5.2 = xor i32 %conv129.5.2, %conv126.5.2
  %conv131.5.2 = trunc i32 %xor130.5.2 to i8
  store i8 %conv131.5.2, i8* %arrayidx128.2, align 1
  %scevgep21.2 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %335, i64 0, i64 1, i64 0
  %348 = bitcast i8* %scevgep21.2 to [6 x [6 x i8]]*
  %arrayidx108.3 = getelementptr inbounds i8, i8* %a, i64 3
  %349 = load i8, i8* %arrayidx108.3, align 1
  %arrayidx110.3 = getelementptr inbounds i8, i8* %b, i64 3
  %350 = load i8, i8* %arrayidx110.3, align 1
  %call111.3 = call zeroext i8 @mult(i8 zeroext %349, i8 zeroext %350)
  %arrayidx113.3 = getelementptr inbounds i8, i8* %c, i64 3
  store i8 %call111.3, i8* %arrayidx113.3, align 1
  %arrayidx128.3 = getelementptr inbounds i8, i8* %c, i64 3
  %scevgep22.398 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %348, i64 0, i64 0, i64 0
  %351 = load i8, i8* %scevgep22.398, align 1
  %conv126.399 = zext i8 %351 to i32
  %352 = load i8, i8* %arrayidx128.3, align 1
  %conv129.3100 = zext i8 %352 to i32
  %xor130.3101 = xor i32 %conv129.3100, %conv126.399
  %conv131.3102 = trunc i32 %xor130.3101 to i8
  store i8 %conv131.3102, i8* %arrayidx128.3, align 1
  %scevgep22.1.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %348, i64 0, i64 0, i64 1
  %353 = load i8, i8* %scevgep22.1.3, align 1
  %conv126.1.3 = zext i8 %353 to i32
  %354 = load i8, i8* %arrayidx128.3, align 1
  %conv129.1.3 = zext i8 %354 to i32
  %xor130.1.3 = xor i32 %conv129.1.3, %conv126.1.3
  %conv131.1.3 = trunc i32 %xor130.1.3 to i8
  store i8 %conv131.1.3, i8* %arrayidx128.3, align 1
  %scevgep22.2.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %348, i64 0, i64 0, i64 2
  %355 = load i8, i8* %scevgep22.2.3, align 1
  %conv126.2.3 = zext i8 %355 to i32
  %356 = load i8, i8* %arrayidx128.3, align 1
  %conv129.2.3 = zext i8 %356 to i32
  %xor130.2.3 = xor i32 %conv129.2.3, %conv126.2.3
  %conv131.2.3 = trunc i32 %xor130.2.3 to i8
  store i8 %conv131.2.3, i8* %arrayidx128.3, align 1
  %scevgep22.4.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %348, i64 0, i64 0, i64 4
  %357 = load i8, i8* %scevgep22.4.3, align 1
  %conv126.4.3 = zext i8 %357 to i32
  %358 = load i8, i8* %arrayidx128.3, align 1
  %conv129.4.3 = zext i8 %358 to i32
  %xor130.4.3 = xor i32 %conv129.4.3, %conv126.4.3
  %conv131.4.3 = trunc i32 %xor130.4.3 to i8
  store i8 %conv131.4.3, i8* %arrayidx128.3, align 1
  %scevgep22.5.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %348, i64 0, i64 0, i64 5
  %359 = load i8, i8* %scevgep22.5.3, align 1
  %conv126.5.3 = zext i8 %359 to i32
  %360 = load i8, i8* %arrayidx128.3, align 1
  %conv129.5.3 = zext i8 %360 to i32
  %xor130.5.3 = xor i32 %conv129.5.3, %conv126.5.3
  %conv131.5.3 = trunc i32 %xor130.5.3 to i8
  store i8 %conv131.5.3, i8* %arrayidx128.3, align 1
  %scevgep21.3 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %348, i64 0, i64 1, i64 0
  %361 = bitcast i8* %scevgep21.3 to [6 x [6 x i8]]*
  %arrayidx108.4 = getelementptr inbounds i8, i8* %a, i64 4
  %362 = load i8, i8* %arrayidx108.4, align 1
  %arrayidx110.4 = getelementptr inbounds i8, i8* %b, i64 4
  %363 = load i8, i8* %arrayidx110.4, align 1
  %call111.4 = call zeroext i8 @mult(i8 zeroext %362, i8 zeroext %363)
  %arrayidx113.4 = getelementptr inbounds i8, i8* %c, i64 4
  store i8 %call111.4, i8* %arrayidx113.4, align 1
  %arrayidx128.4 = getelementptr inbounds i8, i8* %c, i64 4
  %scevgep22.4108 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %361, i64 0, i64 0, i64 0
  %364 = load i8, i8* %scevgep22.4108, align 1
  %conv126.4109 = zext i8 %364 to i32
  %365 = load i8, i8* %arrayidx128.4, align 1
  %conv129.4110 = zext i8 %365 to i32
  %xor130.4111 = xor i32 %conv129.4110, %conv126.4109
  %conv131.4112 = trunc i32 %xor130.4111 to i8
  store i8 %conv131.4112, i8* %arrayidx128.4, align 1
  %scevgep22.1.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %361, i64 0, i64 0, i64 1
  %366 = load i8, i8* %scevgep22.1.4, align 1
  %conv126.1.4 = zext i8 %366 to i32
  %367 = load i8, i8* %arrayidx128.4, align 1
  %conv129.1.4 = zext i8 %367 to i32
  %xor130.1.4 = xor i32 %conv129.1.4, %conv126.1.4
  %conv131.1.4 = trunc i32 %xor130.1.4 to i8
  store i8 %conv131.1.4, i8* %arrayidx128.4, align 1
  %scevgep22.2.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %361, i64 0, i64 0, i64 2
  %368 = load i8, i8* %scevgep22.2.4, align 1
  %conv126.2.4 = zext i8 %368 to i32
  %369 = load i8, i8* %arrayidx128.4, align 1
  %conv129.2.4 = zext i8 %369 to i32
  %xor130.2.4 = xor i32 %conv129.2.4, %conv126.2.4
  %conv131.2.4 = trunc i32 %xor130.2.4 to i8
  store i8 %conv131.2.4, i8* %arrayidx128.4, align 1
  %scevgep22.3.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %361, i64 0, i64 0, i64 3
  %370 = load i8, i8* %scevgep22.3.4, align 1
  %conv126.3.4 = zext i8 %370 to i32
  %371 = load i8, i8* %arrayidx128.4, align 1
  %conv129.3.4 = zext i8 %371 to i32
  %xor130.3.4 = xor i32 %conv129.3.4, %conv126.3.4
  %conv131.3.4 = trunc i32 %xor130.3.4 to i8
  store i8 %conv131.3.4, i8* %arrayidx128.4, align 1
  %scevgep22.5.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %361, i64 0, i64 0, i64 5
  %372 = load i8, i8* %scevgep22.5.4, align 1
  %conv126.5.4 = zext i8 %372 to i32
  %373 = load i8, i8* %arrayidx128.4, align 1
  %conv129.5.4 = zext i8 %373 to i32
  %xor130.5.4 = xor i32 %conv129.5.4, %conv126.5.4
  %conv131.5.4 = trunc i32 %xor130.5.4 to i8
  store i8 %conv131.5.4, i8* %arrayidx128.4, align 1
  %scevgep21.4 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %361, i64 0, i64 1, i64 0
  %374 = bitcast i8* %scevgep21.4 to [6 x [6 x i8]]*
  %arrayidx108.5 = getelementptr inbounds i8, i8* %a, i64 5
  %375 = load i8, i8* %arrayidx108.5, align 1
  %arrayidx110.5 = getelementptr inbounds i8, i8* %b, i64 5
  %376 = load i8, i8* %arrayidx110.5, align 1
  %call111.5 = call zeroext i8 @mult(i8 zeroext %375, i8 zeroext %376)
  %arrayidx113.5 = getelementptr inbounds i8, i8* %c, i64 5
  store i8 %call111.5, i8* %arrayidx113.5, align 1
  %arrayidx128.5 = getelementptr inbounds i8, i8* %c, i64 5
  %scevgep22.5118 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %374, i64 0, i64 0, i64 0
  %377 = load i8, i8* %scevgep22.5118, align 1
  %conv126.5119 = zext i8 %377 to i32
  %378 = load i8, i8* %arrayidx128.5, align 1
  %conv129.5120 = zext i8 %378 to i32
  %xor130.5121 = xor i32 %conv129.5120, %conv126.5119
  %conv131.5122 = trunc i32 %xor130.5121 to i8
  store i8 %conv131.5122, i8* %arrayidx128.5, align 1
  %scevgep22.1.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %374, i64 0, i64 0, i64 1
  %379 = load i8, i8* %scevgep22.1.5, align 1
  %conv126.1.5 = zext i8 %379 to i32
  %380 = load i8, i8* %arrayidx128.5, align 1
  %conv129.1.5 = zext i8 %380 to i32
  %xor130.1.5 = xor i32 %conv129.1.5, %conv126.1.5
  %conv131.1.5 = trunc i32 %xor130.1.5 to i8
  store i8 %conv131.1.5, i8* %arrayidx128.5, align 1
  %scevgep22.2.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %374, i64 0, i64 0, i64 2
  %381 = load i8, i8* %scevgep22.2.5, align 1
  %conv126.2.5 = zext i8 %381 to i32
  %382 = load i8, i8* %arrayidx128.5, align 1
  %conv129.2.5 = zext i8 %382 to i32
  %xor130.2.5 = xor i32 %conv129.2.5, %conv126.2.5
  %conv131.2.5 = trunc i32 %xor130.2.5 to i8
  store i8 %conv131.2.5, i8* %arrayidx128.5, align 1
  %scevgep22.3.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %374, i64 0, i64 0, i64 3
  %383 = load i8, i8* %scevgep22.3.5, align 1
  %conv126.3.5 = zext i8 %383 to i32
  %384 = load i8, i8* %arrayidx128.5, align 1
  %conv129.3.5 = zext i8 %384 to i32
  %xor130.3.5 = xor i32 %conv129.3.5, %conv126.3.5
  %conv131.3.5 = trunc i32 %xor130.3.5 to i8
  store i8 %conv131.3.5, i8* %arrayidx128.5, align 1
  %scevgep22.4.5 = getelementptr [6 x [6 x i8]], [6 x [6 x i8]]* %374, i64 0, i64 0, i64 4
  %385 = load i8, i8* %scevgep22.4.5, align 1
  %conv126.4.5 = zext i8 %385 to i32
  %386 = load i8, i8* %arrayidx128.5, align 1
  %conv129.4.5 = zext i8 %386 to i32
  %xor130.4.5 = xor i32 %conv129.4.5, %conv126.4.5
  %conv131.4.5 = trunc i32 %xor130.4.5 to i8
  store i8 %conv131.4.5, i8* %arrayidx128.5, align 1
  %call139 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv140 = zext i8 %call139 to i32
  %387 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %388 = load i8, i8* %scevgep.1, align 1
  %conv.i.i172.1 = zext i8 %388 to i32
  %conv1.i.i173.1 = zext i8 %387 to i32
  %xor.i.i174.1 = xor i32 %conv1.i.i173.1, %conv.i.i172.1
  %conv2.i.i175.1 = trunc i32 %xor.i.i174.1 to i8
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  %389 = load i8, i8* %scevgep.2, align 1
  %conv.i.i172.2 = zext i8 %389 to i32
  %conv1.i.i173.2 = zext i8 %conv2.i.i175.1 to i32
  %xor.i.i174.2 = xor i32 %conv1.i.i173.2, %conv.i.i172.2
  %conv2.i.i175.2 = trunc i32 %xor.i.i174.2 to i8
  %scevgep.3 = getelementptr i8, i8* %c, i64 3
  %390 = load i8, i8* %scevgep.3, align 1
  %conv.i.i172.3 = zext i8 %390 to i32
  %conv1.i.i173.3 = zext i8 %conv2.i.i175.2 to i32
  %xor.i.i174.3 = xor i32 %conv1.i.i173.3, %conv.i.i172.3
  %conv2.i.i175.3 = trunc i32 %xor.i.i174.3 to i8
  %scevgep.4 = getelementptr i8, i8* %c, i64 4
  %391 = load i8, i8* %scevgep.4, align 1
  %conv.i.i172.4 = zext i8 %391 to i32
  %conv1.i.i173.4 = zext i8 %conv2.i.i175.3 to i32
  %xor.i.i174.4 = xor i32 %conv1.i.i173.4, %conv.i.i172.4
  %conv2.i.i175.4 = trunc i32 %xor.i.i174.4 to i8
  %scevgep.5 = getelementptr i8, i8* %c, i64 5
  %392 = load i8, i8* %scevgep.5, align 1
  %conv.i.i172.5 = zext i8 %392 to i32
  %conv1.i.i173.5 = zext i8 %conv2.i.i175.4 to i32
  %xor.i.i174.5 = xor i32 %conv1.i.i173.5, %conv.i.i172.5
  %conv2.i.i175.5 = trunc i32 %xor.i.i174.5 to i8
  %conv142 = zext i8 %conv2.i.i175.5 to i32
  %cmp143 = icmp eq i32 %conv140, %conv142
  call void @assert(i1 zeroext %cmp143)
  ret void
}

declare dso_local zeroext i8 @rand(...) #1

declare dso_local void @assume(i1 zeroext) #1

declare dso_local zeroext i8 @mult(i8 zeroext, i8 zeroext) #1

declare dso_local void @assert(i1 zeroext) #1

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.1.0 (https://github.com/llvm/llvm-project.git 7e99bddfeaab2713a8bb6ca538da25b66e6efc59)"}
