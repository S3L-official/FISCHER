; ModuleID = '../examples/cassiers-tifs2020.inline-4.ll'
source_filename = "../examples/cassiers-tifs2020.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 4, align 4
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

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.1.0 (https://github.com/llvm/llvm-project.git 7e99bddfeaab2713a8bb6ca538da25b66e6efc59)"}
