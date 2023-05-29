; ModuleID = '../examples/cassiers-tifs2020-sbox-noaffine.inline-3.ll'
source_filename = "../examples/cassiers-tifs2020-sbox-noaffine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 3, align 4
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
  %s = alloca [4 x [4 x i8]], align 16
  %p0 = alloca [4 x [4 x i8]], align 16
  %p1 = alloca [4 x [4 x i8]], align 16
  %z = alloca [4 x [4 x i8]], align 16
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
  %scevgep72.2 = getelementptr i8, i8* %a, i64 2
  %2 = load i8, i8* %scevgep72.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %scevgep72.3 = getelementptr i8, i8* %a, i64 3
  %3 = load i8, i8* %scevgep72.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %conv3 = zext i8 %conv2.i.i.3 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %4 = load i8, i8* %b, align 1
  %scevgep68.1 = getelementptr i8, i8* %b, i64 1
  %5 = load i8, i8* %scevgep68.1, align 1
  %conv.i.i155.1 = zext i8 %5 to i32
  %conv1.i.i156.1 = zext i8 %4 to i32
  %xor.i.i157.1 = xor i32 %conv1.i.i156.1, %conv.i.i155.1
  %conv2.i.i158.1 = trunc i32 %xor.i.i157.1 to i8
  %scevgep68.2 = getelementptr i8, i8* %b, i64 2
  %6 = load i8, i8* %scevgep68.2, align 1
  %conv.i.i155.2 = zext i8 %6 to i32
  %conv1.i.i156.2 = zext i8 %conv2.i.i158.1 to i32
  %xor.i.i157.2 = xor i32 %conv1.i.i156.2, %conv.i.i155.2
  %conv2.i.i158.2 = trunc i32 %xor.i.i157.2 to i8
  %scevgep68.3 = getelementptr i8, i8* %b, i64 3
  %7 = load i8, i8* %scevgep68.3, align 1
  %conv.i.i155.3 = zext i8 %7 to i32
  %conv1.i.i156.3 = zext i8 %conv2.i.i158.2 to i32
  %xor.i.i157.3 = xor i32 %conv1.i.i156.3, %conv.i.i155.3
  %conv2.i.i158.3 = trunc i32 %xor.i.i157.3 to i8
  %conv7 = zext i8 %conv2.i.i158.3 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %call16 = call zeroext i8 (...) @rand()
  %scevgep58 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 1
  store i8 %call16, i8* %scevgep58, align 1
  %scevgep59 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 1
  %8 = load i8, i8* %scevgep59, align 1
  %scevgep60 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 1, i64 0
  store i8 %8, i8* %scevgep60, align 1
  %call16.1185 = call zeroext i8 (...) @rand()
  %scevgep58.1186 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 2
  store i8 %call16.1185, i8* %scevgep58.1186, align 1
  %scevgep59.1187 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 2
  %9 = load i8, i8* %scevgep59.1187, align 1
  %scevgep60.1188 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 2, i64 0
  store i8 %9, i8* %scevgep60.1188, align 1
  %call16.2190 = call zeroext i8 (...) @rand()
  %scevgep58.2191 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 3
  store i8 %call16.2190, i8* %scevgep58.2191, align 1
  %scevgep59.2192 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 3
  %10 = load i8, i8* %scevgep59.2192, align 1
  %scevgep60.2193 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 3, i64 0
  store i8 %10, i8* %scevgep60.2193, align 1
  %scevgep55 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 1, i64 1
  %11 = bitcast i8* %scevgep55 to [4 x [4 x i8]]*
  %call16.1 = call zeroext i8 (...) @rand()
  %scevgep58.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %11, i64 0, i64 0, i64 1
  store i8 %call16.1, i8* %scevgep58.1, align 1
  %scevgep59.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %11, i64 0, i64 0, i64 1
  %12 = load i8, i8* %scevgep59.1, align 1
  %scevgep60.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %11, i64 0, i64 1, i64 0
  store i8 %12, i8* %scevgep60.1, align 1
  %call16.1.1 = call zeroext i8 (...) @rand()
  %scevgep58.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %11, i64 0, i64 0, i64 2
  store i8 %call16.1.1, i8* %scevgep58.1.1, align 1
  %scevgep59.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %11, i64 0, i64 0, i64 2
  %13 = load i8, i8* %scevgep59.1.1, align 1
  %scevgep60.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %11, i64 0, i64 2, i64 0
  store i8 %13, i8* %scevgep60.1.1, align 1
  %scevgep55.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %11, i64 0, i64 1, i64 1
  %14 = bitcast i8* %scevgep55.1 to [4 x [4 x i8]]*
  %call16.2 = call zeroext i8 (...) @rand()
  %scevgep58.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %14, i64 0, i64 0, i64 1
  store i8 %call16.2, i8* %scevgep58.2, align 1
  %scevgep59.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %14, i64 0, i64 0, i64 1
  %15 = load i8, i8* %scevgep59.2, align 1
  %scevgep60.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %14, i64 0, i64 1, i64 0
  store i8 %15, i8* %scevgep60.2, align 1
  %scevgep31.1 = getelementptr i8, i8* %b, i64 1
  %16 = load i8, i8* %scevgep31.1, align 1
  %conv44.1 = zext i8 %16 to i32
  %scevgep34.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 1
  %17 = load i8, i8* %scevgep34.1, align 1
  %conv49.1 = zext i8 %17 to i32
  %xor.1 = xor i32 %conv44.1, %conv49.1
  %conv50.1 = trunc i32 %xor.1 to i8
  %scevgep38.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s, i64 0, i64 0, i64 1
  store i8 %conv50.1, i8* %scevgep38.1, align 1
  %18 = load i8, i8* %a, align 1
  %conv57.1 = zext i8 %18 to i32
  %xor58.1 = xor i32 %conv57.1, 1
  %conv59.1 = trunc i32 %xor58.1 to i8
  %scevgep35.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 1
  %19 = load i8, i8* %scevgep35.1, align 1
  %call64.1 = call zeroext i8 @mult(i8 zeroext %conv59.1, i8 zeroext %19)
  %scevgep42.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0, i64 0, i64 0, i64 1
  store i8 %call64.1, i8* %scevgep42.1, align 1
  %20 = load i8, i8* %a, align 1
  %scevgep39.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s, i64 0, i64 0, i64 1
  %21 = load i8, i8* %scevgep39.1, align 1
  %call75.1 = call zeroext i8 @mult(i8 zeroext %20, i8 zeroext %21)
  %scevgep46.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1, i64 0, i64 0, i64 1
  store i8 %call75.1, i8* %scevgep46.1, align 1
  %scevgep43.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0, i64 0, i64 0, i64 1
  %22 = load i8, i8* %scevgep43.1, align 1
  %conv84.1 = zext i8 %22 to i32
  %scevgep47.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1, i64 0, i64 0, i64 1
  %23 = load i8, i8* %scevgep47.1, align 1
  %conv89.1 = zext i8 %23 to i32
  %xor90.1 = xor i32 %conv84.1, %conv89.1
  %conv91.1 = trunc i32 %xor90.1 to i8
  %scevgep50.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 1
  store i8 %conv91.1, i8* %scevgep50.1, align 1
  %scevgep31.2 = getelementptr i8, i8* %b, i64 2
  %24 = load i8, i8* %scevgep31.2, align 1
  %conv44.2 = zext i8 %24 to i32
  %scevgep34.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 2
  %25 = load i8, i8* %scevgep34.2, align 1
  %conv49.2 = zext i8 %25 to i32
  %xor.2 = xor i32 %conv44.2, %conv49.2
  %conv50.2 = trunc i32 %xor.2 to i8
  %scevgep38.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s, i64 0, i64 0, i64 2
  store i8 %conv50.2, i8* %scevgep38.2, align 1
  %26 = load i8, i8* %a, align 1
  %conv57.2 = zext i8 %26 to i32
  %xor58.2 = xor i32 %conv57.2, 1
  %conv59.2 = trunc i32 %xor58.2 to i8
  %scevgep35.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 2
  %27 = load i8, i8* %scevgep35.2, align 1
  %call64.2 = call zeroext i8 @mult(i8 zeroext %conv59.2, i8 zeroext %27)
  %scevgep42.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0, i64 0, i64 0, i64 2
  store i8 %call64.2, i8* %scevgep42.2, align 1
  %28 = load i8, i8* %a, align 1
  %scevgep39.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s, i64 0, i64 0, i64 2
  %29 = load i8, i8* %scevgep39.2, align 1
  %call75.2 = call zeroext i8 @mult(i8 zeroext %28, i8 zeroext %29)
  %scevgep46.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1, i64 0, i64 0, i64 2
  store i8 %call75.2, i8* %scevgep46.2, align 1
  %scevgep43.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0, i64 0, i64 0, i64 2
  %30 = load i8, i8* %scevgep43.2, align 1
  %conv84.2 = zext i8 %30 to i32
  %scevgep47.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1, i64 0, i64 0, i64 2
  %31 = load i8, i8* %scevgep47.2, align 1
  %conv89.2 = zext i8 %31 to i32
  %xor90.2 = xor i32 %conv84.2, %conv89.2
  %conv91.2 = trunc i32 %xor90.2 to i8
  %scevgep50.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 2
  store i8 %conv91.2, i8* %scevgep50.2, align 1
  %scevgep31.3 = getelementptr i8, i8* %b, i64 3
  %32 = load i8, i8* %scevgep31.3, align 1
  %conv44.3 = zext i8 %32 to i32
  %scevgep34.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 3
  %33 = load i8, i8* %scevgep34.3, align 1
  %conv49.3 = zext i8 %33 to i32
  %xor.3 = xor i32 %conv44.3, %conv49.3
  %conv50.3 = trunc i32 %xor.3 to i8
  %scevgep38.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s, i64 0, i64 0, i64 3
  store i8 %conv50.3, i8* %scevgep38.3, align 1
  %34 = load i8, i8* %a, align 1
  %conv57.3 = zext i8 %34 to i32
  %xor58.3 = xor i32 %conv57.3, 1
  %conv59.3 = trunc i32 %xor58.3 to i8
  %scevgep35.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 0, i64 3
  %35 = load i8, i8* %scevgep35.3, align 1
  %call64.3 = call zeroext i8 @mult(i8 zeroext %conv59.3, i8 zeroext %35)
  %scevgep42.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0, i64 0, i64 0, i64 3
  store i8 %call64.3, i8* %scevgep42.3, align 1
  %36 = load i8, i8* %a, align 1
  %scevgep39.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s, i64 0, i64 0, i64 3
  %37 = load i8, i8* %scevgep39.3, align 1
  %call75.3 = call zeroext i8 @mult(i8 zeroext %36, i8 zeroext %37)
  %scevgep46.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1, i64 0, i64 0, i64 3
  store i8 %call75.3, i8* %scevgep46.3, align 1
  %scevgep43.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0, i64 0, i64 0, i64 3
  %38 = load i8, i8* %scevgep43.3, align 1
  %conv84.3 = zext i8 %38 to i32
  %scevgep47.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1, i64 0, i64 0, i64 3
  %39 = load i8, i8* %scevgep47.3, align 1
  %conv89.3 = zext i8 %39 to i32
  %xor90.3 = xor i32 %conv84.3, %conv89.3
  %conv91.3 = trunc i32 %xor90.3 to i8
  %scevgep50.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 3
  store i8 %conv91.3, i8* %scevgep50.3, align 1
  %scevgep33 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r, i64 0, i64 1, i64 0
  %40 = bitcast i8* %scevgep33 to [4 x [4 x i8]]*
  %scevgep37 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s, i64 0, i64 1, i64 0
  %41 = bitcast i8* %scevgep37 to [4 x [4 x i8]]*
  %scevgep41 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0, i64 0, i64 1, i64 0
  %42 = bitcast i8* %scevgep41 to [4 x [4 x i8]]*
  %scevgep45 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1, i64 0, i64 1, i64 0
  %43 = bitcast i8* %scevgep45 to [4 x [4 x i8]]*
  %scevgep49 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 1, i64 0
  %44 = bitcast i8* %scevgep49 to [4 x [4 x i8]]*
  %arrayidx56.1 = getelementptr inbounds i8, i8* %a, i64 1
  %arrayidx70.1 = getelementptr inbounds i8, i8* %a, i64 1
  %45 = load i8, i8* %b, align 1
  %conv44.1106 = zext i8 %45 to i32
  %scevgep34.1107 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %40, i64 0, i64 0, i64 0
  %46 = load i8, i8* %scevgep34.1107, align 1
  %conv49.1108 = zext i8 %46 to i32
  %xor.1109 = xor i32 %conv44.1106, %conv49.1108
  %conv50.1110 = trunc i32 %xor.1109 to i8
  %scevgep38.1111 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %41, i64 0, i64 0, i64 0
  store i8 %conv50.1110, i8* %scevgep38.1111, align 1
  %47 = load i8, i8* %arrayidx56.1, align 1
  %conv57.1112 = zext i8 %47 to i32
  %xor58.1113 = xor i32 %conv57.1112, 1
  %conv59.1114 = trunc i32 %xor58.1113 to i8
  %scevgep35.1115 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %40, i64 0, i64 0, i64 0
  %48 = load i8, i8* %scevgep35.1115, align 1
  %call64.1116 = call zeroext i8 @mult(i8 zeroext %conv59.1114, i8 zeroext %48)
  %scevgep42.1117 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %42, i64 0, i64 0, i64 0
  store i8 %call64.1116, i8* %scevgep42.1117, align 1
  %49 = load i8, i8* %arrayidx70.1, align 1
  %scevgep39.1118 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %41, i64 0, i64 0, i64 0
  %50 = load i8, i8* %scevgep39.1118, align 1
  %call75.1119 = call zeroext i8 @mult(i8 zeroext %49, i8 zeroext %50)
  %scevgep46.1120 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %43, i64 0, i64 0, i64 0
  store i8 %call75.1119, i8* %scevgep46.1120, align 1
  %scevgep43.1121 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %42, i64 0, i64 0, i64 0
  %51 = load i8, i8* %scevgep43.1121, align 1
  %conv84.1122 = zext i8 %51 to i32
  %scevgep47.1123 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %43, i64 0, i64 0, i64 0
  %52 = load i8, i8* %scevgep47.1123, align 1
  %conv89.1124 = zext i8 %52 to i32
  %xor90.1125 = xor i32 %conv84.1122, %conv89.1124
  %conv91.1126 = trunc i32 %xor90.1125 to i8
  %scevgep50.1127 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %44, i64 0, i64 0, i64 0
  store i8 %conv91.1126, i8* %scevgep50.1127, align 1
  %scevgep31.2.1 = getelementptr i8, i8* %b, i64 2
  %53 = load i8, i8* %scevgep31.2.1, align 1
  %conv44.2.1 = zext i8 %53 to i32
  %scevgep34.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %40, i64 0, i64 0, i64 2
  %54 = load i8, i8* %scevgep34.2.1, align 1
  %conv49.2.1 = zext i8 %54 to i32
  %xor.2.1 = xor i32 %conv44.2.1, %conv49.2.1
  %conv50.2.1 = trunc i32 %xor.2.1 to i8
  %scevgep38.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %41, i64 0, i64 0, i64 2
  store i8 %conv50.2.1, i8* %scevgep38.2.1, align 1
  %55 = load i8, i8* %arrayidx56.1, align 1
  %conv57.2.1 = zext i8 %55 to i32
  %xor58.2.1 = xor i32 %conv57.2.1, 1
  %conv59.2.1 = trunc i32 %xor58.2.1 to i8
  %scevgep35.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %40, i64 0, i64 0, i64 2
  %56 = load i8, i8* %scevgep35.2.1, align 1
  %call64.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.2.1, i8 zeroext %56)
  %scevgep42.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %42, i64 0, i64 0, i64 2
  store i8 %call64.2.1, i8* %scevgep42.2.1, align 1
  %57 = load i8, i8* %arrayidx70.1, align 1
  %scevgep39.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %41, i64 0, i64 0, i64 2
  %58 = load i8, i8* %scevgep39.2.1, align 1
  %call75.2.1 = call zeroext i8 @mult(i8 zeroext %57, i8 zeroext %58)
  %scevgep46.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %43, i64 0, i64 0, i64 2
  store i8 %call75.2.1, i8* %scevgep46.2.1, align 1
  %scevgep43.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %42, i64 0, i64 0, i64 2
  %59 = load i8, i8* %scevgep43.2.1, align 1
  %conv84.2.1 = zext i8 %59 to i32
  %scevgep47.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %43, i64 0, i64 0, i64 2
  %60 = load i8, i8* %scevgep47.2.1, align 1
  %conv89.2.1 = zext i8 %60 to i32
  %xor90.2.1 = xor i32 %conv84.2.1, %conv89.2.1
  %conv91.2.1 = trunc i32 %xor90.2.1 to i8
  %scevgep50.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %44, i64 0, i64 0, i64 2
  store i8 %conv91.2.1, i8* %scevgep50.2.1, align 1
  %scevgep31.3.1 = getelementptr i8, i8* %b, i64 3
  %61 = load i8, i8* %scevgep31.3.1, align 1
  %conv44.3.1 = zext i8 %61 to i32
  %scevgep34.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %40, i64 0, i64 0, i64 3
  %62 = load i8, i8* %scevgep34.3.1, align 1
  %conv49.3.1 = zext i8 %62 to i32
  %xor.3.1 = xor i32 %conv44.3.1, %conv49.3.1
  %conv50.3.1 = trunc i32 %xor.3.1 to i8
  %scevgep38.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %41, i64 0, i64 0, i64 3
  store i8 %conv50.3.1, i8* %scevgep38.3.1, align 1
  %63 = load i8, i8* %arrayidx56.1, align 1
  %conv57.3.1 = zext i8 %63 to i32
  %xor58.3.1 = xor i32 %conv57.3.1, 1
  %conv59.3.1 = trunc i32 %xor58.3.1 to i8
  %scevgep35.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %40, i64 0, i64 0, i64 3
  %64 = load i8, i8* %scevgep35.3.1, align 1
  %call64.3.1 = call zeroext i8 @mult(i8 zeroext %conv59.3.1, i8 zeroext %64)
  %scevgep42.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %42, i64 0, i64 0, i64 3
  store i8 %call64.3.1, i8* %scevgep42.3.1, align 1
  %65 = load i8, i8* %arrayidx70.1, align 1
  %scevgep39.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %41, i64 0, i64 0, i64 3
  %66 = load i8, i8* %scevgep39.3.1, align 1
  %call75.3.1 = call zeroext i8 @mult(i8 zeroext %65, i8 zeroext %66)
  %scevgep46.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %43, i64 0, i64 0, i64 3
  store i8 %call75.3.1, i8* %scevgep46.3.1, align 1
  %scevgep43.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %42, i64 0, i64 0, i64 3
  %67 = load i8, i8* %scevgep43.3.1, align 1
  %conv84.3.1 = zext i8 %67 to i32
  %scevgep47.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %43, i64 0, i64 0, i64 3
  %68 = load i8, i8* %scevgep47.3.1, align 1
  %conv89.3.1 = zext i8 %68 to i32
  %xor90.3.1 = xor i32 %conv84.3.1, %conv89.3.1
  %conv91.3.1 = trunc i32 %xor90.3.1 to i8
  %scevgep50.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %44, i64 0, i64 0, i64 3
  store i8 %conv91.3.1, i8* %scevgep50.3.1, align 1
  %scevgep33.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %40, i64 0, i64 1, i64 0
  %69 = bitcast i8* %scevgep33.1 to [4 x [4 x i8]]*
  %scevgep37.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %41, i64 0, i64 1, i64 0
  %70 = bitcast i8* %scevgep37.1 to [4 x [4 x i8]]*
  %scevgep41.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %42, i64 0, i64 1, i64 0
  %71 = bitcast i8* %scevgep41.1 to [4 x [4 x i8]]*
  %scevgep45.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %43, i64 0, i64 1, i64 0
  %72 = bitcast i8* %scevgep45.1 to [4 x [4 x i8]]*
  %scevgep49.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %44, i64 0, i64 1, i64 0
  %73 = bitcast i8* %scevgep49.1 to [4 x [4 x i8]]*
  %arrayidx56.2 = getelementptr inbounds i8, i8* %a, i64 2
  %arrayidx70.2 = getelementptr inbounds i8, i8* %a, i64 2
  %74 = load i8, i8* %b, align 1
  %conv44.2133 = zext i8 %74 to i32
  %scevgep34.2134 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %69, i64 0, i64 0, i64 0
  %75 = load i8, i8* %scevgep34.2134, align 1
  %conv49.2135 = zext i8 %75 to i32
  %xor.2136 = xor i32 %conv44.2133, %conv49.2135
  %conv50.2137 = trunc i32 %xor.2136 to i8
  %scevgep38.2138 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %70, i64 0, i64 0, i64 0
  store i8 %conv50.2137, i8* %scevgep38.2138, align 1
  %76 = load i8, i8* %arrayidx56.2, align 1
  %conv57.2139 = zext i8 %76 to i32
  %xor58.2140 = xor i32 %conv57.2139, 1
  %conv59.2141 = trunc i32 %xor58.2140 to i8
  %scevgep35.2142 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %69, i64 0, i64 0, i64 0
  %77 = load i8, i8* %scevgep35.2142, align 1
  %call64.2143 = call zeroext i8 @mult(i8 zeroext %conv59.2141, i8 zeroext %77)
  %scevgep42.2144 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %71, i64 0, i64 0, i64 0
  store i8 %call64.2143, i8* %scevgep42.2144, align 1
  %78 = load i8, i8* %arrayidx70.2, align 1
  %scevgep39.2145 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %70, i64 0, i64 0, i64 0
  %79 = load i8, i8* %scevgep39.2145, align 1
  %call75.2146 = call zeroext i8 @mult(i8 zeroext %78, i8 zeroext %79)
  %scevgep46.2147 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %72, i64 0, i64 0, i64 0
  store i8 %call75.2146, i8* %scevgep46.2147, align 1
  %scevgep43.2148 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %71, i64 0, i64 0, i64 0
  %80 = load i8, i8* %scevgep43.2148, align 1
  %conv84.2149 = zext i8 %80 to i32
  %scevgep47.2150 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %72, i64 0, i64 0, i64 0
  %81 = load i8, i8* %scevgep47.2150, align 1
  %conv89.2151 = zext i8 %81 to i32
  %xor90.2152 = xor i32 %conv84.2149, %conv89.2151
  %conv91.2153 = trunc i32 %xor90.2152 to i8
  %scevgep50.2154 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %73, i64 0, i64 0, i64 0
  store i8 %conv91.2153, i8* %scevgep50.2154, align 1
  %scevgep31.1.2 = getelementptr i8, i8* %b, i64 1
  %82 = load i8, i8* %scevgep31.1.2, align 1
  %conv44.1.2 = zext i8 %82 to i32
  %scevgep34.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %69, i64 0, i64 0, i64 1
  %83 = load i8, i8* %scevgep34.1.2, align 1
  %conv49.1.2 = zext i8 %83 to i32
  %xor.1.2 = xor i32 %conv44.1.2, %conv49.1.2
  %conv50.1.2 = trunc i32 %xor.1.2 to i8
  %scevgep38.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %70, i64 0, i64 0, i64 1
  store i8 %conv50.1.2, i8* %scevgep38.1.2, align 1
  %84 = load i8, i8* %arrayidx56.2, align 1
  %conv57.1.2 = zext i8 %84 to i32
  %xor58.1.2 = xor i32 %conv57.1.2, 1
  %conv59.1.2 = trunc i32 %xor58.1.2 to i8
  %scevgep35.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %69, i64 0, i64 0, i64 1
  %85 = load i8, i8* %scevgep35.1.2, align 1
  %call64.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.1.2, i8 zeroext %85)
  %scevgep42.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %71, i64 0, i64 0, i64 1
  store i8 %call64.1.2, i8* %scevgep42.1.2, align 1
  %86 = load i8, i8* %arrayidx70.2, align 1
  %scevgep39.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %70, i64 0, i64 0, i64 1
  %87 = load i8, i8* %scevgep39.1.2, align 1
  %call75.1.2 = call zeroext i8 @mult(i8 zeroext %86, i8 zeroext %87)
  %scevgep46.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %72, i64 0, i64 0, i64 1
  store i8 %call75.1.2, i8* %scevgep46.1.2, align 1
  %scevgep43.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %71, i64 0, i64 0, i64 1
  %88 = load i8, i8* %scevgep43.1.2, align 1
  %conv84.1.2 = zext i8 %88 to i32
  %scevgep47.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %72, i64 0, i64 0, i64 1
  %89 = load i8, i8* %scevgep47.1.2, align 1
  %conv89.1.2 = zext i8 %89 to i32
  %xor90.1.2 = xor i32 %conv84.1.2, %conv89.1.2
  %conv91.1.2 = trunc i32 %xor90.1.2 to i8
  %scevgep50.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %73, i64 0, i64 0, i64 1
  store i8 %conv91.1.2, i8* %scevgep50.1.2, align 1
  %scevgep31.3.2 = getelementptr i8, i8* %b, i64 3
  %90 = load i8, i8* %scevgep31.3.2, align 1
  %conv44.3.2 = zext i8 %90 to i32
  %scevgep34.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %69, i64 0, i64 0, i64 3
  %91 = load i8, i8* %scevgep34.3.2, align 1
  %conv49.3.2 = zext i8 %91 to i32
  %xor.3.2 = xor i32 %conv44.3.2, %conv49.3.2
  %conv50.3.2 = trunc i32 %xor.3.2 to i8
  %scevgep38.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %70, i64 0, i64 0, i64 3
  store i8 %conv50.3.2, i8* %scevgep38.3.2, align 1
  %92 = load i8, i8* %arrayidx56.2, align 1
  %conv57.3.2 = zext i8 %92 to i32
  %xor58.3.2 = xor i32 %conv57.3.2, 1
  %conv59.3.2 = trunc i32 %xor58.3.2 to i8
  %scevgep35.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %69, i64 0, i64 0, i64 3
  %93 = load i8, i8* %scevgep35.3.2, align 1
  %call64.3.2 = call zeroext i8 @mult(i8 zeroext %conv59.3.2, i8 zeroext %93)
  %scevgep42.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %71, i64 0, i64 0, i64 3
  store i8 %call64.3.2, i8* %scevgep42.3.2, align 1
  %94 = load i8, i8* %arrayidx70.2, align 1
  %scevgep39.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %70, i64 0, i64 0, i64 3
  %95 = load i8, i8* %scevgep39.3.2, align 1
  %call75.3.2 = call zeroext i8 @mult(i8 zeroext %94, i8 zeroext %95)
  %scevgep46.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %72, i64 0, i64 0, i64 3
  store i8 %call75.3.2, i8* %scevgep46.3.2, align 1
  %scevgep43.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %71, i64 0, i64 0, i64 3
  %96 = load i8, i8* %scevgep43.3.2, align 1
  %conv84.3.2 = zext i8 %96 to i32
  %scevgep47.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %72, i64 0, i64 0, i64 3
  %97 = load i8, i8* %scevgep47.3.2, align 1
  %conv89.3.2 = zext i8 %97 to i32
  %xor90.3.2 = xor i32 %conv84.3.2, %conv89.3.2
  %conv91.3.2 = trunc i32 %xor90.3.2 to i8
  %scevgep50.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %73, i64 0, i64 0, i64 3
  store i8 %conv91.3.2, i8* %scevgep50.3.2, align 1
  %scevgep33.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %69, i64 0, i64 1, i64 0
  %98 = bitcast i8* %scevgep33.2 to [4 x [4 x i8]]*
  %scevgep37.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %70, i64 0, i64 1, i64 0
  %99 = bitcast i8* %scevgep37.2 to [4 x [4 x i8]]*
  %scevgep41.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %71, i64 0, i64 1, i64 0
  %100 = bitcast i8* %scevgep41.2 to [4 x [4 x i8]]*
  %scevgep45.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %72, i64 0, i64 1, i64 0
  %101 = bitcast i8* %scevgep45.2 to [4 x [4 x i8]]*
  %scevgep49.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %73, i64 0, i64 1, i64 0
  %102 = bitcast i8* %scevgep49.2 to [4 x [4 x i8]]*
  %arrayidx56.3 = getelementptr inbounds i8, i8* %a, i64 3
  %arrayidx70.3 = getelementptr inbounds i8, i8* %a, i64 3
  %103 = load i8, i8* %b, align 1
  %conv44.3160 = zext i8 %103 to i32
  %scevgep34.3161 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %98, i64 0, i64 0, i64 0
  %104 = load i8, i8* %scevgep34.3161, align 1
  %conv49.3162 = zext i8 %104 to i32
  %xor.3163 = xor i32 %conv44.3160, %conv49.3162
  %conv50.3164 = trunc i32 %xor.3163 to i8
  %scevgep38.3165 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %99, i64 0, i64 0, i64 0
  store i8 %conv50.3164, i8* %scevgep38.3165, align 1
  %105 = load i8, i8* %arrayidx56.3, align 1
  %conv57.3166 = zext i8 %105 to i32
  %xor58.3167 = xor i32 %conv57.3166, 1
  %conv59.3168 = trunc i32 %xor58.3167 to i8
  %scevgep35.3169 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %98, i64 0, i64 0, i64 0
  %106 = load i8, i8* %scevgep35.3169, align 1
  %call64.3170 = call zeroext i8 @mult(i8 zeroext %conv59.3168, i8 zeroext %106)
  %scevgep42.3171 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %100, i64 0, i64 0, i64 0
  store i8 %call64.3170, i8* %scevgep42.3171, align 1
  %107 = load i8, i8* %arrayidx70.3, align 1
  %scevgep39.3172 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %99, i64 0, i64 0, i64 0
  %108 = load i8, i8* %scevgep39.3172, align 1
  %call75.3173 = call zeroext i8 @mult(i8 zeroext %107, i8 zeroext %108)
  %scevgep46.3174 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %101, i64 0, i64 0, i64 0
  store i8 %call75.3173, i8* %scevgep46.3174, align 1
  %scevgep43.3175 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %100, i64 0, i64 0, i64 0
  %109 = load i8, i8* %scevgep43.3175, align 1
  %conv84.3176 = zext i8 %109 to i32
  %scevgep47.3177 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %101, i64 0, i64 0, i64 0
  %110 = load i8, i8* %scevgep47.3177, align 1
  %conv89.3178 = zext i8 %110 to i32
  %xor90.3179 = xor i32 %conv84.3176, %conv89.3178
  %conv91.3180 = trunc i32 %xor90.3179 to i8
  %scevgep50.3181 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %102, i64 0, i64 0, i64 0
  store i8 %conv91.3180, i8* %scevgep50.3181, align 1
  %scevgep31.1.3 = getelementptr i8, i8* %b, i64 1
  %111 = load i8, i8* %scevgep31.1.3, align 1
  %conv44.1.3 = zext i8 %111 to i32
  %scevgep34.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %98, i64 0, i64 0, i64 1
  %112 = load i8, i8* %scevgep34.1.3, align 1
  %conv49.1.3 = zext i8 %112 to i32
  %xor.1.3 = xor i32 %conv44.1.3, %conv49.1.3
  %conv50.1.3 = trunc i32 %xor.1.3 to i8
  %scevgep38.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %99, i64 0, i64 0, i64 1
  store i8 %conv50.1.3, i8* %scevgep38.1.3, align 1
  %113 = load i8, i8* %arrayidx56.3, align 1
  %conv57.1.3 = zext i8 %113 to i32
  %xor58.1.3 = xor i32 %conv57.1.3, 1
  %conv59.1.3 = trunc i32 %xor58.1.3 to i8
  %scevgep35.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %98, i64 0, i64 0, i64 1
  %114 = load i8, i8* %scevgep35.1.3, align 1
  %call64.1.3 = call zeroext i8 @mult(i8 zeroext %conv59.1.3, i8 zeroext %114)
  %scevgep42.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %100, i64 0, i64 0, i64 1
  store i8 %call64.1.3, i8* %scevgep42.1.3, align 1
  %115 = load i8, i8* %arrayidx70.3, align 1
  %scevgep39.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %99, i64 0, i64 0, i64 1
  %116 = load i8, i8* %scevgep39.1.3, align 1
  %call75.1.3 = call zeroext i8 @mult(i8 zeroext %115, i8 zeroext %116)
  %scevgep46.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %101, i64 0, i64 0, i64 1
  store i8 %call75.1.3, i8* %scevgep46.1.3, align 1
  %scevgep43.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %100, i64 0, i64 0, i64 1
  %117 = load i8, i8* %scevgep43.1.3, align 1
  %conv84.1.3 = zext i8 %117 to i32
  %scevgep47.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %101, i64 0, i64 0, i64 1
  %118 = load i8, i8* %scevgep47.1.3, align 1
  %conv89.1.3 = zext i8 %118 to i32
  %xor90.1.3 = xor i32 %conv84.1.3, %conv89.1.3
  %conv91.1.3 = trunc i32 %xor90.1.3 to i8
  %scevgep50.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %102, i64 0, i64 0, i64 1
  store i8 %conv91.1.3, i8* %scevgep50.1.3, align 1
  %scevgep31.2.3 = getelementptr i8, i8* %b, i64 2
  %119 = load i8, i8* %scevgep31.2.3, align 1
  %conv44.2.3 = zext i8 %119 to i32
  %scevgep34.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %98, i64 0, i64 0, i64 2
  %120 = load i8, i8* %scevgep34.2.3, align 1
  %conv49.2.3 = zext i8 %120 to i32
  %xor.2.3 = xor i32 %conv44.2.3, %conv49.2.3
  %conv50.2.3 = trunc i32 %xor.2.3 to i8
  %scevgep38.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %99, i64 0, i64 0, i64 2
  store i8 %conv50.2.3, i8* %scevgep38.2.3, align 1
  %121 = load i8, i8* %arrayidx56.3, align 1
  %conv57.2.3 = zext i8 %121 to i32
  %xor58.2.3 = xor i32 %conv57.2.3, 1
  %conv59.2.3 = trunc i32 %xor58.2.3 to i8
  %scevgep35.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %98, i64 0, i64 0, i64 2
  %122 = load i8, i8* %scevgep35.2.3, align 1
  %call64.2.3 = call zeroext i8 @mult(i8 zeroext %conv59.2.3, i8 zeroext %122)
  %scevgep42.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %100, i64 0, i64 0, i64 2
  store i8 %call64.2.3, i8* %scevgep42.2.3, align 1
  %123 = load i8, i8* %arrayidx70.3, align 1
  %scevgep39.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %99, i64 0, i64 0, i64 2
  %124 = load i8, i8* %scevgep39.2.3, align 1
  %call75.2.3 = call zeroext i8 @mult(i8 zeroext %123, i8 zeroext %124)
  %scevgep46.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %101, i64 0, i64 0, i64 2
  store i8 %call75.2.3, i8* %scevgep46.2.3, align 1
  %scevgep43.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %100, i64 0, i64 0, i64 2
  %125 = load i8, i8* %scevgep43.2.3, align 1
  %conv84.2.3 = zext i8 %125 to i32
  %scevgep47.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %101, i64 0, i64 0, i64 2
  %126 = load i8, i8* %scevgep47.2.3, align 1
  %conv89.2.3 = zext i8 %126 to i32
  %xor90.2.3 = xor i32 %conv84.2.3, %conv89.2.3
  %conv91.2.3 = trunc i32 %xor90.2.3 to i8
  %scevgep50.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %102, i64 0, i64 0, i64 2
  store i8 %conv91.2.3, i8* %scevgep50.2.3, align 1
  %127 = load i8, i8* %a, align 1
  %128 = load i8, i8* %b, align 1
  %call111 = call zeroext i8 @mult(i8 zeroext %127, i8 zeroext %128)
  store i8 %call111, i8* %c, align 1
  %scevgep22.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 1
  %129 = load i8, i8* %scevgep22.1, align 1
  %conv126.1 = zext i8 %129 to i32
  %130 = load i8, i8* %c, align 1
  %conv129.1 = zext i8 %130 to i32
  %xor130.1 = xor i32 %conv129.1, %conv126.1
  %conv131.1 = trunc i32 %xor130.1 to i8
  store i8 %conv131.1, i8* %c, align 1
  %scevgep22.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 2
  %131 = load i8, i8* %scevgep22.2, align 1
  %conv126.2 = zext i8 %131 to i32
  %132 = load i8, i8* %c, align 1
  %conv129.2 = zext i8 %132 to i32
  %xor130.2 = xor i32 %conv129.2, %conv126.2
  %conv131.2 = trunc i32 %xor130.2 to i8
  store i8 %conv131.2, i8* %c, align 1
  %scevgep22.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 3
  %133 = load i8, i8* %scevgep22.3, align 1
  %conv126.3 = zext i8 %133 to i32
  %134 = load i8, i8* %c, align 1
  %conv129.3 = zext i8 %134 to i32
  %xor130.3 = xor i32 %conv129.3, %conv126.3
  %conv131.3 = trunc i32 %xor130.3 to i8
  store i8 %conv131.3, i8* %c, align 1
  %scevgep21 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 1, i64 0
  %135 = bitcast i8* %scevgep21 to [4 x [4 x i8]]*
  %arrayidx108.1 = getelementptr inbounds i8, i8* %a, i64 1
  %136 = load i8, i8* %arrayidx108.1, align 1
  %arrayidx110.1 = getelementptr inbounds i8, i8* %b, i64 1
  %137 = load i8, i8* %arrayidx110.1, align 1
  %call111.1 = call zeroext i8 @mult(i8 zeroext %136, i8 zeroext %137)
  %arrayidx113.1 = getelementptr inbounds i8, i8* %c, i64 1
  store i8 %call111.1, i8* %arrayidx113.1, align 1
  %arrayidx128.1 = getelementptr inbounds i8, i8* %c, i64 1
  %scevgep22.176 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %135, i64 0, i64 0, i64 0
  %138 = load i8, i8* %scevgep22.176, align 1
  %conv126.177 = zext i8 %138 to i32
  %139 = load i8, i8* %arrayidx128.1, align 1
  %conv129.178 = zext i8 %139 to i32
  %xor130.179 = xor i32 %conv129.178, %conv126.177
  %conv131.180 = trunc i32 %xor130.179 to i8
  store i8 %conv131.180, i8* %arrayidx128.1, align 1
  %scevgep22.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %135, i64 0, i64 0, i64 2
  %140 = load i8, i8* %scevgep22.2.1, align 1
  %conv126.2.1 = zext i8 %140 to i32
  %141 = load i8, i8* %arrayidx128.1, align 1
  %conv129.2.1 = zext i8 %141 to i32
  %xor130.2.1 = xor i32 %conv129.2.1, %conv126.2.1
  %conv131.2.1 = trunc i32 %xor130.2.1 to i8
  store i8 %conv131.2.1, i8* %arrayidx128.1, align 1
  %scevgep22.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %135, i64 0, i64 0, i64 3
  %142 = load i8, i8* %scevgep22.3.1, align 1
  %conv126.3.1 = zext i8 %142 to i32
  %143 = load i8, i8* %arrayidx128.1, align 1
  %conv129.3.1 = zext i8 %143 to i32
  %xor130.3.1 = xor i32 %conv129.3.1, %conv126.3.1
  %conv131.3.1 = trunc i32 %xor130.3.1 to i8
  store i8 %conv131.3.1, i8* %arrayidx128.1, align 1
  %scevgep21.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %135, i64 0, i64 1, i64 0
  %144 = bitcast i8* %scevgep21.1 to [4 x [4 x i8]]*
  %arrayidx108.2 = getelementptr inbounds i8, i8* %a, i64 2
  %145 = load i8, i8* %arrayidx108.2, align 1
  %arrayidx110.2 = getelementptr inbounds i8, i8* %b, i64 2
  %146 = load i8, i8* %arrayidx110.2, align 1
  %call111.2 = call zeroext i8 @mult(i8 zeroext %145, i8 zeroext %146)
  %arrayidx113.2 = getelementptr inbounds i8, i8* %c, i64 2
  store i8 %call111.2, i8* %arrayidx113.2, align 1
  %arrayidx128.2 = getelementptr inbounds i8, i8* %c, i64 2
  %scevgep22.286 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %144, i64 0, i64 0, i64 0
  %147 = load i8, i8* %scevgep22.286, align 1
  %conv126.287 = zext i8 %147 to i32
  %148 = load i8, i8* %arrayidx128.2, align 1
  %conv129.288 = zext i8 %148 to i32
  %xor130.289 = xor i32 %conv129.288, %conv126.287
  %conv131.290 = trunc i32 %xor130.289 to i8
  store i8 %conv131.290, i8* %arrayidx128.2, align 1
  %scevgep22.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %144, i64 0, i64 0, i64 1
  %149 = load i8, i8* %scevgep22.1.2, align 1
  %conv126.1.2 = zext i8 %149 to i32
  %150 = load i8, i8* %arrayidx128.2, align 1
  %conv129.1.2 = zext i8 %150 to i32
  %xor130.1.2 = xor i32 %conv129.1.2, %conv126.1.2
  %conv131.1.2 = trunc i32 %xor130.1.2 to i8
  store i8 %conv131.1.2, i8* %arrayidx128.2, align 1
  %scevgep22.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %144, i64 0, i64 0, i64 3
  %151 = load i8, i8* %scevgep22.3.2, align 1
  %conv126.3.2 = zext i8 %151 to i32
  %152 = load i8, i8* %arrayidx128.2, align 1
  %conv129.3.2 = zext i8 %152 to i32
  %xor130.3.2 = xor i32 %conv129.3.2, %conv126.3.2
  %conv131.3.2 = trunc i32 %xor130.3.2 to i8
  store i8 %conv131.3.2, i8* %arrayidx128.2, align 1
  %scevgep21.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %144, i64 0, i64 1, i64 0
  %153 = bitcast i8* %scevgep21.2 to [4 x [4 x i8]]*
  %arrayidx108.3 = getelementptr inbounds i8, i8* %a, i64 3
  %154 = load i8, i8* %arrayidx108.3, align 1
  %arrayidx110.3 = getelementptr inbounds i8, i8* %b, i64 3
  %155 = load i8, i8* %arrayidx110.3, align 1
  %call111.3 = call zeroext i8 @mult(i8 zeroext %154, i8 zeroext %155)
  %arrayidx113.3 = getelementptr inbounds i8, i8* %c, i64 3
  store i8 %call111.3, i8* %arrayidx113.3, align 1
  %arrayidx128.3 = getelementptr inbounds i8, i8* %c, i64 3
  %scevgep22.396 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %153, i64 0, i64 0, i64 0
  %156 = load i8, i8* %scevgep22.396, align 1
  %conv126.397 = zext i8 %156 to i32
  %157 = load i8, i8* %arrayidx128.3, align 1
  %conv129.398 = zext i8 %157 to i32
  %xor130.399 = xor i32 %conv129.398, %conv126.397
  %conv131.3100 = trunc i32 %xor130.399 to i8
  store i8 %conv131.3100, i8* %arrayidx128.3, align 1
  %scevgep22.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %153, i64 0, i64 0, i64 1
  %158 = load i8, i8* %scevgep22.1.3, align 1
  %conv126.1.3 = zext i8 %158 to i32
  %159 = load i8, i8* %arrayidx128.3, align 1
  %conv129.1.3 = zext i8 %159 to i32
  %xor130.1.3 = xor i32 %conv129.1.3, %conv126.1.3
  %conv131.1.3 = trunc i32 %xor130.1.3 to i8
  store i8 %conv131.1.3, i8* %arrayidx128.3, align 1
  %scevgep22.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %153, i64 0, i64 0, i64 2
  %160 = load i8, i8* %scevgep22.2.3, align 1
  %conv126.2.3 = zext i8 %160 to i32
  %161 = load i8, i8* %arrayidx128.3, align 1
  %conv129.2.3 = zext i8 %161 to i32
  %xor130.2.3 = xor i32 %conv129.2.3, %conv126.2.3
  %conv131.2.3 = trunc i32 %xor130.2.3 to i8
  store i8 %conv131.2.3, i8* %arrayidx128.3, align 1
  %call139 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv140 = zext i8 %call139 to i32
  %162 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %163 = load i8, i8* %scevgep.1, align 1
  %conv.i.i172.1 = zext i8 %163 to i32
  %conv1.i.i173.1 = zext i8 %162 to i32
  %xor.i.i174.1 = xor i32 %conv1.i.i173.1, %conv.i.i172.1
  %conv2.i.i175.1 = trunc i32 %xor.i.i174.1 to i8
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  %164 = load i8, i8* %scevgep.2, align 1
  %conv.i.i172.2 = zext i8 %164 to i32
  %conv1.i.i173.2 = zext i8 %conv2.i.i175.1 to i32
  %xor.i.i174.2 = xor i32 %conv1.i.i173.2, %conv.i.i172.2
  %conv2.i.i175.2 = trunc i32 %xor.i.i174.2 to i8
  %scevgep.3 = getelementptr i8, i8* %c, i64 3
  %165 = load i8, i8* %scevgep.3, align 1
  %conv.i.i172.3 = zext i8 %165 to i32
  %conv1.i.i173.3 = zext i8 %conv2.i.i175.2 to i32
  %xor.i.i174.3 = xor i32 %conv1.i.i173.3, %conv.i.i172.3
  %conv2.i.i175.3 = trunc i32 %xor.i.i174.3 to i8
  %conv142 = zext i8 %conv2.i.i175.3 to i32
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
  %conv2 = zext i8 %conv2.i.i.3 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %4 = load i8, i8* %x, align 1
  store i8 %4, i8* %y, align 1
  %scevgep13.1 = getelementptr i8, i8* %x, i64 1
  %5 = load i8, i8* %scevgep13.1, align 1
  %scevgep14.1 = getelementptr i8, i8* %y, i64 1
  store i8 %5, i8* %scevgep14.1, align 1
  %scevgep13.2 = getelementptr i8, i8* %x, i64 2
  %6 = load i8, i8* %scevgep13.2, align 1
  %scevgep14.2 = getelementptr i8, i8* %y, i64 2
  store i8 %6, i8* %scevgep14.2, align 1
  %scevgep13.3 = getelementptr i8, i8* %x, i64 3
  %7 = load i8, i8* %scevgep13.3, align 1
  %scevgep14.3 = getelementptr i8, i8* %y, i64 3
  store i8 %7, i8* %scevgep14.3, align 1
  %call7 = call zeroext i8 (...) @rand()
  %conv8 = zext i8 %call7 to i32
  %8 = load i8, i8* %y, align 1
  %conv9 = zext i8 %8 to i32
  %xor = xor i32 %conv9, %conv8
  %conv10 = trunc i32 %xor to i8
  store i8 %conv10, i8* %y, align 1
  %conv11 = zext i8 %call7 to i32
  %scevgep9 = getelementptr i8, i8* %y, i64 1
  %9 = load i8, i8* %scevgep9, align 1
  %conv13 = zext i8 %9 to i32
  %xor14 = xor i32 %conv13, %conv11
  %conv15 = trunc i32 %xor14 to i8
  store i8 %conv15, i8* %scevgep9, align 1
  %call7.1 = call zeroext i8 (...) @rand()
  %conv8.1 = zext i8 %call7.1 to i32
  %10 = load i8, i8* %y, align 1
  %conv9.1 = zext i8 %10 to i32
  %xor.1 = xor i32 %conv9.1, %conv8.1
  %conv10.1 = trunc i32 %xor.1 to i8
  store i8 %conv10.1, i8* %y, align 1
  %conv11.1 = zext i8 %call7.1 to i32
  %scevgep9.1 = getelementptr i8, i8* %y, i64 2
  %11 = load i8, i8* %scevgep9.1, align 1
  %conv13.1 = zext i8 %11 to i32
  %xor14.1 = xor i32 %conv13.1, %conv11.1
  %conv15.1 = trunc i32 %xor14.1 to i8
  store i8 %conv15.1, i8* %scevgep9.1, align 1
  %call7.2 = call zeroext i8 (...) @rand()
  %conv8.2 = zext i8 %call7.2 to i32
  %12 = load i8, i8* %y, align 1
  %conv9.2 = zext i8 %12 to i32
  %xor.2 = xor i32 %conv9.2, %conv8.2
  %conv10.2 = trunc i32 %xor.2 to i8
  store i8 %conv10.2, i8* %y, align 1
  %conv11.2 = zext i8 %call7.2 to i32
  %scevgep9.2 = getelementptr i8, i8* %y, i64 3
  %13 = load i8, i8* %scevgep9.2, align 1
  %conv13.2 = zext i8 %13 to i32
  %xor14.2 = xor i32 %conv13.2, %conv11.2
  %conv15.2 = trunc i32 %xor14.2 to i8
  store i8 %conv15.2, i8* %scevgep9.2, align 1
  %conv16 = zext i8 %call to i32
  %14 = load i8, i8* %y, align 1
  %scevgep.1 = getelementptr i8, i8* %y, i64 1
  %15 = load i8, i8* %scevgep.1, align 1
  %conv.i.i31.1 = zext i8 %15 to i32
  %conv1.i.i32.1 = zext i8 %14 to i32
  %xor.i.i33.1 = xor i32 %conv1.i.i32.1, %conv.i.i31.1
  %conv2.i.i34.1 = trunc i32 %xor.i.i33.1 to i8
  %scevgep.2 = getelementptr i8, i8* %y, i64 2
  %16 = load i8, i8* %scevgep.2, align 1
  %conv.i.i31.2 = zext i8 %16 to i32
  %conv1.i.i32.2 = zext i8 %conv2.i.i34.1 to i32
  %xor.i.i33.2 = xor i32 %conv1.i.i32.2, %conv.i.i31.2
  %conv2.i.i34.2 = trunc i32 %xor.i.i33.2 to i8
  %scevgep.3 = getelementptr i8, i8* %y, i64 3
  %17 = load i8, i8* %scevgep.3, align 1
  %conv.i.i31.3 = zext i8 %17 to i32
  %conv1.i.i32.3 = zext i8 %conv2.i.i34.2 to i32
  %xor.i.i33.3 = xor i32 %conv1.i.i32.3, %conv.i.i31.3
  %conv2.i.i34.3 = trunc i32 %xor.i.i33.3 to i8
  %conv18 = zext i8 %conv2.i.i34.3 to i32
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
  %r.i = alloca [4 x [4 x i8]], align 16
  %s.i = alloca [4 x [4 x i8]], align 16
  %p0.i = alloca [4 x [4 x i8]], align 16
  %p1.i = alloca [4 x [4 x i8]], align 16
  %z.i = alloca [4 x [4 x i8]], align 16
  %z = alloca [4 x i8], align 1
  %zr = alloca [4 x i8], align 1
  %w = alloca [4 x i8], align 1
  %wr = alloca [4 x i8], align 1
  %u = alloca [4 x i8], align 1
  %v = alloca [4 x i8], align 1
  %v16 = alloca [4 x i8], align 1
  %m = alloca [4 x i8], align 1
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %scevgep382.1 = getelementptr i8, i8* %x, i64 1
  %1 = load i8, i8* %scevgep382.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep382.2 = getelementptr i8, i8* %x, i64 2
  %2 = load i8, i8* %scevgep382.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %scevgep382.3 = getelementptr i8, i8* %x, i64 3
  %3 = load i8, i8* %scevgep382.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %conv2 = zext i8 %conv2.i.i.3 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %4 = load i8, i8* %x, align 1
  %call.i851 = call zeroext i8 @mult(i8 zeroext %4, i8 zeroext %4) #3
  %scevgep378 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 0
  store i8 %call.i851, i8* %scevgep378, align 1
  %scevgep377.1 = getelementptr i8, i8* %x, i64 1
  %5 = load i8, i8* %scevgep377.1, align 1
  %call.i = call zeroext i8 @mult(i8 zeroext %5, i8 zeroext %5) #3
  %scevgep378.1 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 1
  store i8 %call.i, i8* %scevgep378.1, align 1
  %scevgep377.2 = getelementptr i8, i8* %x, i64 2
  %6 = load i8, i8* %scevgep377.2, align 1
  %call.i852 = call zeroext i8 @mult(i8 zeroext %6, i8 zeroext %6) #3
  %scevgep378.2 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 2
  store i8 %call.i852, i8* %scevgep378.2, align 1
  %scevgep377.3 = getelementptr i8, i8* %x, i64 3
  %7 = load i8, i8* %scevgep377.3, align 1
  %call.i853 = call zeroext i8 @mult(i8 zeroext %7, i8 zeroext %7) #3
  %scevgep378.3 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 3
  store i8 %call.i853, i8* %scevgep378.3, align 1
  %arraydecay5 = getelementptr inbounds [4 x i8], [4 x i8]* %zr, i64 0, i64 0
  %call.i32 = call zeroext i8 (...) @rand() #3
  %conv.i = zext i8 %call.i32 to i32
  %scevgep373 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 0
  %8 = load i8, i8* %scevgep373, align 1
  %scevgep373.1 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 1
  %9 = load i8, i8* %scevgep373.1, align 1
  %conv.i.i.i.1 = zext i8 %9 to i32
  %conv1.i.i.i.1 = zext i8 %8 to i32
  %xor.i.i.i.1 = xor i32 %conv1.i.i.i.1, %conv.i.i.i.1
  %conv2.i.i.i.1 = trunc i32 %xor.i.i.i.1 to i8
  %scevgep373.2 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 2
  %10 = load i8, i8* %scevgep373.2, align 1
  %conv.i.i.i.2 = zext i8 %10 to i32
  %conv1.i.i.i.2 = zext i8 %conv2.i.i.i.1 to i32
  %xor.i.i.i.2 = xor i32 %conv1.i.i.i.2, %conv.i.i.i.2
  %conv2.i.i.i.2 = trunc i32 %xor.i.i.i.2 to i8
  %scevgep373.3 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 3
  %11 = load i8, i8* %scevgep373.3, align 1
  %conv.i.i.i.3 = zext i8 %11 to i32
  %conv1.i.i.i.3 = zext i8 %conv2.i.i.i.2 to i32
  %xor.i.i.i.3 = xor i32 %conv1.i.i.i.3, %conv.i.i.i.3
  %conv2.i.i.i.3 = trunc i32 %xor.i.i.i.3 to i8
  %conv2.i = zext i8 %conv2.i.i.i.3 to i32
  %cmp.i33 = icmp eq i32 %conv.i, %conv2.i
  call void @assume(i1 zeroext %cmp.i33) #3
  %scevgep368 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 0
  %12 = load i8, i8* %scevgep368, align 1
  %scevgep369 = getelementptr [4 x i8], [4 x i8]* %zr, i64 0, i64 0
  store i8 %12, i8* %scevgep369, align 1
  %scevgep368.1 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 1
  %13 = load i8, i8* %scevgep368.1, align 1
  %scevgep369.1 = getelementptr [4 x i8], [4 x i8]* %zr, i64 0, i64 1
  store i8 %13, i8* %scevgep369.1, align 1
  %scevgep368.2 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 2
  %14 = load i8, i8* %scevgep368.2, align 1
  %scevgep369.2 = getelementptr [4 x i8], [4 x i8]* %zr, i64 0, i64 2
  store i8 %14, i8* %scevgep369.2, align 1
  %scevgep368.3 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 3
  %15 = load i8, i8* %scevgep368.3, align 1
  %scevgep369.3 = getelementptr [4 x i8], [4 x i8]* %zr, i64 0, i64 3
  store i8 %15, i8* %scevgep369.3, align 1
  %call7.i = call zeroext i8 (...) @rand() #3
  %conv8.i = zext i8 %call7.i to i32
  %16 = load i8, i8* %arraydecay5, align 1
  %conv9.i = zext i8 %16 to i32
  %xor.i = xor i32 %conv9.i, %conv8.i
  %conv10.i = trunc i32 %xor.i to i8
  store i8 %conv10.i, i8* %arraydecay5, align 1
  %conv11.i = zext i8 %call7.i to i32
  %scevgep364 = getelementptr [4 x i8], [4 x i8]* %zr, i64 0, i64 1
  %17 = load i8, i8* %scevgep364, align 1
  %conv13.i = zext i8 %17 to i32
  %xor14.i = xor i32 %conv13.i, %conv11.i
  %conv15.i = trunc i32 %xor14.i to i8
  store i8 %conv15.i, i8* %scevgep364, align 1
  %call7.i.1 = call zeroext i8 (...) @rand() #3
  %conv8.i.1 = zext i8 %call7.i.1 to i32
  %18 = load i8, i8* %arraydecay5, align 1
  %conv9.i.1 = zext i8 %18 to i32
  %xor.i.1 = xor i32 %conv9.i.1, %conv8.i.1
  %conv10.i.1 = trunc i32 %xor.i.1 to i8
  store i8 %conv10.i.1, i8* %arraydecay5, align 1
  %conv11.i.1 = zext i8 %call7.i.1 to i32
  %scevgep364.1 = getelementptr [4 x i8], [4 x i8]* %zr, i64 0, i64 2
  %19 = load i8, i8* %scevgep364.1, align 1
  %conv13.i.1 = zext i8 %19 to i32
  %xor14.i.1 = xor i32 %conv13.i.1, %conv11.i.1
  %conv15.i.1 = trunc i32 %xor14.i.1 to i8
  store i8 %conv15.i.1, i8* %scevgep364.1, align 1
  %call7.i.2 = call zeroext i8 (...) @rand() #3
  %conv8.i.2 = zext i8 %call7.i.2 to i32
  %20 = load i8, i8* %arraydecay5, align 1
  %conv9.i.2 = zext i8 %20 to i32
  %xor.i.2 = xor i32 %conv9.i.2, %conv8.i.2
  %conv10.i.2 = trunc i32 %xor.i.2 to i8
  store i8 %conv10.i.2, i8* %arraydecay5, align 1
  %conv11.i.2 = zext i8 %call7.i.2 to i32
  %scevgep364.2 = getelementptr [4 x i8], [4 x i8]* %zr, i64 0, i64 3
  %21 = load i8, i8* %scevgep364.2, align 1
  %conv13.i.2 = zext i8 %21 to i32
  %xor14.i.2 = xor i32 %conv13.i.2, %conv11.i.2
  %conv15.i.2 = trunc i32 %xor14.i.2 to i8
  store i8 %conv15.i.2, i8* %scevgep364.2, align 1
  %conv16.i = zext i8 %call.i32 to i32
  %scevgep360 = getelementptr [4 x i8], [4 x i8]* %zr, i64 0, i64 0
  %22 = load i8, i8* %scevgep360, align 1
  %scevgep360.1 = getelementptr [4 x i8], [4 x i8]* %zr, i64 0, i64 1
  %23 = load i8, i8* %scevgep360.1, align 1
  %conv.i.i31.i.1 = zext i8 %23 to i32
  %conv1.i.i32.i.1 = zext i8 %22 to i32
  %xor.i.i33.i.1 = xor i32 %conv1.i.i32.i.1, %conv.i.i31.i.1
  %conv2.i.i34.i.1 = trunc i32 %xor.i.i33.i.1 to i8
  %scevgep360.2 = getelementptr [4 x i8], [4 x i8]* %zr, i64 0, i64 2
  %24 = load i8, i8* %scevgep360.2, align 1
  %conv.i.i31.i.2 = zext i8 %24 to i32
  %conv1.i.i32.i.2 = zext i8 %conv2.i.i34.i.1 to i32
  %xor.i.i33.i.2 = xor i32 %conv1.i.i32.i.2, %conv.i.i31.i.2
  %conv2.i.i34.i.2 = trunc i32 %xor.i.i33.i.2 to i8
  %scevgep360.3 = getelementptr [4 x i8], [4 x i8]* %zr, i64 0, i64 3
  %25 = load i8, i8* %scevgep360.3, align 1
  %conv.i.i31.i.3 = zext i8 %25 to i32
  %conv1.i.i32.i.3 = zext i8 %conv2.i.i34.i.2 to i32
  %xor.i.i33.i.3 = xor i32 %conv1.i.i32.i.3, %conv.i.i31.i.3
  %conv2.i.i34.i.3 = trunc i32 %xor.i.i33.i.3 to i8
  %conv18.i = zext i8 %conv2.i.i34.i.3 to i32
  %cmp19.i = icmp eq i32 %conv16.i, %conv18.i
  call void @assert(i1 zeroext %cmp19.i) #3
  %arraydecay6 = getelementptr inbounds [4 x i8], [4 x i8]* %zr, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [4 x i8], [4 x i8]* %u, i64 0, i64 0
  %call.i52 = call zeroext i8 (...) @rand() #3
  %call1.i = call zeroext i8 (...) @rand() #3
  %conv.i53 = zext i8 %call.i52 to i32
  %scevgep356 = getelementptr [4 x i8], [4 x i8]* %zr, i64 0, i64 0
  %26 = load i8, i8* %scevgep356, align 1
  %scevgep356.1 = getelementptr [4 x i8], [4 x i8]* %zr, i64 0, i64 1
  %27 = load i8, i8* %scevgep356.1, align 1
  %conv.i.i.i59.1 = zext i8 %27 to i32
  %conv1.i.i.i60.1 = zext i8 %26 to i32
  %xor.i.i.i61.1 = xor i32 %conv1.i.i.i60.1, %conv.i.i.i59.1
  %conv2.i.i.i62.1 = trunc i32 %xor.i.i.i61.1 to i8
  %scevgep356.2 = getelementptr [4 x i8], [4 x i8]* %zr, i64 0, i64 2
  %28 = load i8, i8* %scevgep356.2, align 1
  %conv.i.i.i59.2 = zext i8 %28 to i32
  %conv1.i.i.i60.2 = zext i8 %conv2.i.i.i62.1 to i32
  %xor.i.i.i61.2 = xor i32 %conv1.i.i.i60.2, %conv.i.i.i59.2
  %conv2.i.i.i62.2 = trunc i32 %xor.i.i.i61.2 to i8
  %scevgep356.3 = getelementptr [4 x i8], [4 x i8]* %zr, i64 0, i64 3
  %29 = load i8, i8* %scevgep356.3, align 1
  %conv.i.i.i59.3 = zext i8 %29 to i32
  %conv1.i.i.i60.3 = zext i8 %conv2.i.i.i62.2 to i32
  %xor.i.i.i61.3 = xor i32 %conv1.i.i.i60.3, %conv.i.i.i59.3
  %conv2.i.i.i62.3 = trunc i32 %xor.i.i.i61.3 to i8
  %conv3.i = zext i8 %conv2.i.i.i62.3 to i32
  %cmp.i65 = icmp eq i32 %conv.i53, %conv3.i
  call void @assume(i1 zeroext %cmp.i65) #3
  %conv5.i = zext i8 %call1.i to i32
  %30 = load i8, i8* %x, align 1
  %scevgep352.1 = getelementptr i8, i8* %x, i64 1
  %31 = load i8, i8* %scevgep352.1, align 1
  %conv.i.i155.i.1 = zext i8 %31 to i32
  %conv1.i.i156.i.1 = zext i8 %30 to i32
  %xor.i.i157.i.1 = xor i32 %conv1.i.i156.i.1, %conv.i.i155.i.1
  %conv2.i.i158.i.1 = trunc i32 %xor.i.i157.i.1 to i8
  %scevgep352.2 = getelementptr i8, i8* %x, i64 2
  %32 = load i8, i8* %scevgep352.2, align 1
  %conv.i.i155.i.2 = zext i8 %32 to i32
  %conv1.i.i156.i.2 = zext i8 %conv2.i.i158.i.1 to i32
  %xor.i.i157.i.2 = xor i32 %conv1.i.i156.i.2, %conv.i.i155.i.2
  %conv2.i.i158.i.2 = trunc i32 %xor.i.i157.i.2 to i8
  %scevgep352.3 = getelementptr i8, i8* %x, i64 3
  %33 = load i8, i8* %scevgep352.3, align 1
  %conv.i.i155.i.3 = zext i8 %33 to i32
  %conv1.i.i156.i.3 = zext i8 %conv2.i.i158.i.2 to i32
  %xor.i.i157.i.3 = xor i32 %conv1.i.i156.i.3, %conv.i.i155.i.3
  %conv2.i.i158.i.3 = trunc i32 %xor.i.i157.i.3 to i8
  %conv7.i = zext i8 %conv2.i.i158.i.3 to i32
  %cmp8.i = icmp eq i32 %conv5.i, %conv7.i
  call void @assume(i1 zeroext %cmp8.i) #3
  %call16.i = call zeroext i8 (...) @rand() #3
  %scevgep342 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i, i8* %scevgep342, align 1
  %scevgep343 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %34 = load i8, i8* %scevgep343, align 1
  %scevgep344 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %34, i8* %scevgep344, align 1
  %call16.i.1840 = call zeroext i8 (...) @rand() #3
  %scevgep342.1841 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  store i8 %call16.i.1840, i8* %scevgep342.1841, align 1
  %scevgep343.1842 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %35 = load i8, i8* %scevgep343.1842, align 1
  %scevgep344.1843 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 2, i64 0
  store i8 %35, i8* %scevgep344.1843, align 1
  %call16.i.2845 = call zeroext i8 (...) @rand() #3
  %scevgep342.2846 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  store i8 %call16.i.2845, i8* %scevgep342.2846, align 1
  %scevgep343.2847 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %36 = load i8, i8* %scevgep343.2847, align 1
  %scevgep344.2848 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 3, i64 0
  store i8 %36, i8* %scevgep344.2848, align 1
  %scevgep339 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 1
  %37 = bitcast i8* %scevgep339 to [4 x [4 x i8]]*
  %call16.i.1 = call zeroext i8 (...) @rand() #3
  %scevgep342.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %37, i64 0, i64 0, i64 1
  store i8 %call16.i.1, i8* %scevgep342.1, align 1
  %scevgep343.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %37, i64 0, i64 0, i64 1
  %38 = load i8, i8* %scevgep343.1, align 1
  %scevgep344.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %37, i64 0, i64 1, i64 0
  store i8 %38, i8* %scevgep344.1, align 1
  %call16.i.1.1 = call zeroext i8 (...) @rand() #3
  %scevgep342.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %37, i64 0, i64 0, i64 2
  store i8 %call16.i.1.1, i8* %scevgep342.1.1, align 1
  %scevgep343.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %37, i64 0, i64 0, i64 2
  %39 = load i8, i8* %scevgep343.1.1, align 1
  %scevgep344.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %37, i64 0, i64 2, i64 0
  store i8 %39, i8* %scevgep344.1.1, align 1
  %scevgep339.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %37, i64 0, i64 1, i64 1
  %40 = bitcast i8* %scevgep339.1 to [4 x [4 x i8]]*
  %call16.i.2 = call zeroext i8 (...) @rand() #3
  %scevgep342.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %40, i64 0, i64 0, i64 1
  store i8 %call16.i.2, i8* %scevgep342.2, align 1
  %scevgep343.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %40, i64 0, i64 0, i64 1
  %41 = load i8, i8* %scevgep343.2, align 1
  %scevgep344.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %40, i64 0, i64 1, i64 0
  store i8 %41, i8* %scevgep344.2, align 1
  %scevgep315.1 = getelementptr i8, i8* %x, i64 1
  %42 = load i8, i8* %scevgep315.1, align 1
  %conv44.i.1 = zext i8 %42 to i32
  %scevgep318.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %43 = load i8, i8* %scevgep318.1, align 1
  %conv49.i.1 = zext i8 %43 to i32
  %xor.i73.1 = xor i32 %conv44.i.1, %conv49.i.1
  %conv50.i.1 = trunc i32 %xor.i73.1 to i8
  %scevgep322.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i.1, i8* %scevgep322.1, align 1
  %44 = load i8, i8* %arraydecay6, align 1
  %conv57.i.1 = zext i8 %44 to i32
  %xor58.i.1 = xor i32 %conv57.i.1, 1
  %conv59.i.1 = trunc i32 %xor58.i.1 to i8
  %scevgep319.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %45 = load i8, i8* %scevgep319.1, align 1
  %call64.i.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.1, i8 zeroext %45) #3
  %scevgep326.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i.1, i8* %scevgep326.1, align 1
  %46 = load i8, i8* %arraydecay6, align 1
  %scevgep323.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 1
  %47 = load i8, i8* %scevgep323.1, align 1
  %call75.i.1 = call zeroext i8 @mult(i8 zeroext %46, i8 zeroext %47) #3
  %scevgep330.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i.1, i8* %scevgep330.1, align 1
  %scevgep327.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %48 = load i8, i8* %scevgep327.1, align 1
  %conv84.i.1 = zext i8 %48 to i32
  %scevgep331.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %49 = load i8, i8* %scevgep331.1, align 1
  %conv89.i.1 = zext i8 %49 to i32
  %xor90.i.1 = xor i32 %conv84.i.1, %conv89.i.1
  %conv91.i.1 = trunc i32 %xor90.i.1 to i8
  %scevgep334.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i.1, i8* %scevgep334.1, align 1
  %scevgep315.2 = getelementptr i8, i8* %x, i64 2
  %50 = load i8, i8* %scevgep315.2, align 1
  %conv44.i.2 = zext i8 %50 to i32
  %scevgep318.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %51 = load i8, i8* %scevgep318.2, align 1
  %conv49.i.2 = zext i8 %51 to i32
  %xor.i73.2 = xor i32 %conv44.i.2, %conv49.i.2
  %conv50.i.2 = trunc i32 %xor.i73.2 to i8
  %scevgep322.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 2
  store i8 %conv50.i.2, i8* %scevgep322.2, align 1
  %52 = load i8, i8* %arraydecay6, align 1
  %conv57.i.2 = zext i8 %52 to i32
  %xor58.i.2 = xor i32 %conv57.i.2, 1
  %conv59.i.2 = trunc i32 %xor58.i.2 to i8
  %scevgep319.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %53 = load i8, i8* %scevgep319.2, align 1
  %call64.i.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.2, i8 zeroext %53) #3
  %scevgep326.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 2
  store i8 %call64.i.2, i8* %scevgep326.2, align 1
  %54 = load i8, i8* %arraydecay6, align 1
  %scevgep323.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 2
  %55 = load i8, i8* %scevgep323.2, align 1
  %call75.i.2 = call zeroext i8 @mult(i8 zeroext %54, i8 zeroext %55) #3
  %scevgep330.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 2
  store i8 %call75.i.2, i8* %scevgep330.2, align 1
  %scevgep327.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 2
  %56 = load i8, i8* %scevgep327.2, align 1
  %conv84.i.2 = zext i8 %56 to i32
  %scevgep331.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 2
  %57 = load i8, i8* %scevgep331.2, align 1
  %conv89.i.2 = zext i8 %57 to i32
  %xor90.i.2 = xor i32 %conv84.i.2, %conv89.i.2
  %conv91.i.2 = trunc i32 %xor90.i.2 to i8
  %scevgep334.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 2
  store i8 %conv91.i.2, i8* %scevgep334.2, align 1
  %scevgep315.3 = getelementptr i8, i8* %x, i64 3
  %58 = load i8, i8* %scevgep315.3, align 1
  %conv44.i.3 = zext i8 %58 to i32
  %scevgep318.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %59 = load i8, i8* %scevgep318.3, align 1
  %conv49.i.3 = zext i8 %59 to i32
  %xor.i73.3 = xor i32 %conv44.i.3, %conv49.i.3
  %conv50.i.3 = trunc i32 %xor.i73.3 to i8
  %scevgep322.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 3
  store i8 %conv50.i.3, i8* %scevgep322.3, align 1
  %60 = load i8, i8* %arraydecay6, align 1
  %conv57.i.3 = zext i8 %60 to i32
  %xor58.i.3 = xor i32 %conv57.i.3, 1
  %conv59.i.3 = trunc i32 %xor58.i.3 to i8
  %scevgep319.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %61 = load i8, i8* %scevgep319.3, align 1
  %call64.i.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.3, i8 zeroext %61) #3
  %scevgep326.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 3
  store i8 %call64.i.3, i8* %scevgep326.3, align 1
  %62 = load i8, i8* %arraydecay6, align 1
  %scevgep323.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 3
  %63 = load i8, i8* %scevgep323.3, align 1
  %call75.i.3 = call zeroext i8 @mult(i8 zeroext %62, i8 zeroext %63) #3
  %scevgep330.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 3
  store i8 %call75.i.3, i8* %scevgep330.3, align 1
  %scevgep327.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 3
  %64 = load i8, i8* %scevgep327.3, align 1
  %conv84.i.3 = zext i8 %64 to i32
  %scevgep331.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 3
  %65 = load i8, i8* %scevgep331.3, align 1
  %conv89.i.3 = zext i8 %65 to i32
  %xor90.i.3 = xor i32 %conv84.i.3, %conv89.i.3
  %conv91.i.3 = trunc i32 %xor90.i.3 to i8
  %scevgep334.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 3
  store i8 %conv91.i.3, i8* %scevgep334.3, align 1
  %scevgep317 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  %66 = bitcast i8* %scevgep317 to [4 x [4 x i8]]*
  %scevgep321 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 1, i64 0
  %67 = bitcast i8* %scevgep321 to [4 x [4 x i8]]*
  %scevgep325 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %68 = bitcast i8* %scevgep325 to [4 x [4 x i8]]*
  %scevgep329 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %69 = bitcast i8* %scevgep329 to [4 x [4 x i8]]*
  %scevgep333 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 1, i64 0
  %70 = bitcast i8* %scevgep333 to [4 x [4 x i8]]*
  %arrayidx56.i.1 = getelementptr inbounds i8, i8* %arraydecay6, i64 1
  %arrayidx70.i.1 = getelementptr inbounds i8, i8* %arraydecay6, i64 1
  %71 = load i8, i8* %x, align 1
  %conv44.i.1737 = zext i8 %71 to i32
  %scevgep318.1738 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %66, i64 0, i64 0, i64 0
  %72 = load i8, i8* %scevgep318.1738, align 1
  %conv49.i.1739 = zext i8 %72 to i32
  %xor.i73.1740 = xor i32 %conv44.i.1737, %conv49.i.1739
  %conv50.i.1741 = trunc i32 %xor.i73.1740 to i8
  %scevgep322.1742 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %67, i64 0, i64 0, i64 0
  store i8 %conv50.i.1741, i8* %scevgep322.1742, align 1
  %73 = load i8, i8* %arrayidx56.i.1, align 1
  %conv57.i.1743 = zext i8 %73 to i32
  %xor58.i.1744 = xor i32 %conv57.i.1743, 1
  %conv59.i.1745 = trunc i32 %xor58.i.1744 to i8
  %scevgep319.1746 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %66, i64 0, i64 0, i64 0
  %74 = load i8, i8* %scevgep319.1746, align 1
  %call64.i.1747 = call zeroext i8 @mult(i8 zeroext %conv59.i.1745, i8 zeroext %74) #3
  %scevgep326.1748 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %68, i64 0, i64 0, i64 0
  store i8 %call64.i.1747, i8* %scevgep326.1748, align 1
  %75 = load i8, i8* %arrayidx70.i.1, align 1
  %scevgep323.1749 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %67, i64 0, i64 0, i64 0
  %76 = load i8, i8* %scevgep323.1749, align 1
  %call75.i.1750 = call zeroext i8 @mult(i8 zeroext %75, i8 zeroext %76) #3
  %scevgep330.1751 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %69, i64 0, i64 0, i64 0
  store i8 %call75.i.1750, i8* %scevgep330.1751, align 1
  %scevgep327.1752 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %68, i64 0, i64 0, i64 0
  %77 = load i8, i8* %scevgep327.1752, align 1
  %conv84.i.1753 = zext i8 %77 to i32
  %scevgep331.1754 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %69, i64 0, i64 0, i64 0
  %78 = load i8, i8* %scevgep331.1754, align 1
  %conv89.i.1755 = zext i8 %78 to i32
  %xor90.i.1756 = xor i32 %conv84.i.1753, %conv89.i.1755
  %conv91.i.1757 = trunc i32 %xor90.i.1756 to i8
  %scevgep334.1758 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %70, i64 0, i64 0, i64 0
  store i8 %conv91.i.1757, i8* %scevgep334.1758, align 1
  %scevgep315.2.1 = getelementptr i8, i8* %x, i64 2
  %79 = load i8, i8* %scevgep315.2.1, align 1
  %conv44.i.2.1 = zext i8 %79 to i32
  %scevgep318.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %66, i64 0, i64 0, i64 2
  %80 = load i8, i8* %scevgep318.2.1, align 1
  %conv49.i.2.1 = zext i8 %80 to i32
  %xor.i73.2.1 = xor i32 %conv44.i.2.1, %conv49.i.2.1
  %conv50.i.2.1 = trunc i32 %xor.i73.2.1 to i8
  %scevgep322.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %67, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.1, i8* %scevgep322.2.1, align 1
  %81 = load i8, i8* %arrayidx56.i.1, align 1
  %conv57.i.2.1 = zext i8 %81 to i32
  %xor58.i.2.1 = xor i32 %conv57.i.2.1, 1
  %conv59.i.2.1 = trunc i32 %xor58.i.2.1 to i8
  %scevgep319.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %66, i64 0, i64 0, i64 2
  %82 = load i8, i8* %scevgep319.2.1, align 1
  %call64.i.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.1, i8 zeroext %82) #3
  %scevgep326.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %68, i64 0, i64 0, i64 2
  store i8 %call64.i.2.1, i8* %scevgep326.2.1, align 1
  %83 = load i8, i8* %arrayidx70.i.1, align 1
  %scevgep323.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %67, i64 0, i64 0, i64 2
  %84 = load i8, i8* %scevgep323.2.1, align 1
  %call75.i.2.1 = call zeroext i8 @mult(i8 zeroext %83, i8 zeroext %84) #3
  %scevgep330.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %69, i64 0, i64 0, i64 2
  store i8 %call75.i.2.1, i8* %scevgep330.2.1, align 1
  %scevgep327.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %68, i64 0, i64 0, i64 2
  %85 = load i8, i8* %scevgep327.2.1, align 1
  %conv84.i.2.1 = zext i8 %85 to i32
  %scevgep331.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %69, i64 0, i64 0, i64 2
  %86 = load i8, i8* %scevgep331.2.1, align 1
  %conv89.i.2.1 = zext i8 %86 to i32
  %xor90.i.2.1 = xor i32 %conv84.i.2.1, %conv89.i.2.1
  %conv91.i.2.1 = trunc i32 %xor90.i.2.1 to i8
  %scevgep334.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %70, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.1, i8* %scevgep334.2.1, align 1
  %scevgep315.3.1 = getelementptr i8, i8* %x, i64 3
  %87 = load i8, i8* %scevgep315.3.1, align 1
  %conv44.i.3.1 = zext i8 %87 to i32
  %scevgep318.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %66, i64 0, i64 0, i64 3
  %88 = load i8, i8* %scevgep318.3.1, align 1
  %conv49.i.3.1 = zext i8 %88 to i32
  %xor.i73.3.1 = xor i32 %conv44.i.3.1, %conv49.i.3.1
  %conv50.i.3.1 = trunc i32 %xor.i73.3.1 to i8
  %scevgep322.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %67, i64 0, i64 0, i64 3
  store i8 %conv50.i.3.1, i8* %scevgep322.3.1, align 1
  %89 = load i8, i8* %arrayidx56.i.1, align 1
  %conv57.i.3.1 = zext i8 %89 to i32
  %xor58.i.3.1 = xor i32 %conv57.i.3.1, 1
  %conv59.i.3.1 = trunc i32 %xor58.i.3.1 to i8
  %scevgep319.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %66, i64 0, i64 0, i64 3
  %90 = load i8, i8* %scevgep319.3.1, align 1
  %call64.i.3.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.3.1, i8 zeroext %90) #3
  %scevgep326.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %68, i64 0, i64 0, i64 3
  store i8 %call64.i.3.1, i8* %scevgep326.3.1, align 1
  %91 = load i8, i8* %arrayidx70.i.1, align 1
  %scevgep323.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %67, i64 0, i64 0, i64 3
  %92 = load i8, i8* %scevgep323.3.1, align 1
  %call75.i.3.1 = call zeroext i8 @mult(i8 zeroext %91, i8 zeroext %92) #3
  %scevgep330.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %69, i64 0, i64 0, i64 3
  store i8 %call75.i.3.1, i8* %scevgep330.3.1, align 1
  %scevgep327.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %68, i64 0, i64 0, i64 3
  %93 = load i8, i8* %scevgep327.3.1, align 1
  %conv84.i.3.1 = zext i8 %93 to i32
  %scevgep331.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %69, i64 0, i64 0, i64 3
  %94 = load i8, i8* %scevgep331.3.1, align 1
  %conv89.i.3.1 = zext i8 %94 to i32
  %xor90.i.3.1 = xor i32 %conv84.i.3.1, %conv89.i.3.1
  %conv91.i.3.1 = trunc i32 %xor90.i.3.1 to i8
  %scevgep334.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %70, i64 0, i64 0, i64 3
  store i8 %conv91.i.3.1, i8* %scevgep334.3.1, align 1
  %scevgep317.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %66, i64 0, i64 1, i64 0
  %95 = bitcast i8* %scevgep317.1 to [4 x [4 x i8]]*
  %scevgep321.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %67, i64 0, i64 1, i64 0
  %96 = bitcast i8* %scevgep321.1 to [4 x [4 x i8]]*
  %scevgep325.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %68, i64 0, i64 1, i64 0
  %97 = bitcast i8* %scevgep325.1 to [4 x [4 x i8]]*
  %scevgep329.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %69, i64 0, i64 1, i64 0
  %98 = bitcast i8* %scevgep329.1 to [4 x [4 x i8]]*
  %scevgep333.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %70, i64 0, i64 1, i64 0
  %99 = bitcast i8* %scevgep333.1 to [4 x [4 x i8]]*
  %arrayidx56.i.2 = getelementptr inbounds i8, i8* %arraydecay6, i64 2
  %arrayidx70.i.2 = getelementptr inbounds i8, i8* %arraydecay6, i64 2
  %100 = load i8, i8* %x, align 1
  %conv44.i.2763 = zext i8 %100 to i32
  %scevgep318.2764 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %95, i64 0, i64 0, i64 0
  %101 = load i8, i8* %scevgep318.2764, align 1
  %conv49.i.2765 = zext i8 %101 to i32
  %xor.i73.2766 = xor i32 %conv44.i.2763, %conv49.i.2765
  %conv50.i.2767 = trunc i32 %xor.i73.2766 to i8
  %scevgep322.2768 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %96, i64 0, i64 0, i64 0
  store i8 %conv50.i.2767, i8* %scevgep322.2768, align 1
  %102 = load i8, i8* %arrayidx56.i.2, align 1
  %conv57.i.2769 = zext i8 %102 to i32
  %xor58.i.2770 = xor i32 %conv57.i.2769, 1
  %conv59.i.2771 = trunc i32 %xor58.i.2770 to i8
  %scevgep319.2772 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %95, i64 0, i64 0, i64 0
  %103 = load i8, i8* %scevgep319.2772, align 1
  %call64.i.2773 = call zeroext i8 @mult(i8 zeroext %conv59.i.2771, i8 zeroext %103) #3
  %scevgep326.2774 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %97, i64 0, i64 0, i64 0
  store i8 %call64.i.2773, i8* %scevgep326.2774, align 1
  %104 = load i8, i8* %arrayidx70.i.2, align 1
  %scevgep323.2775 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %96, i64 0, i64 0, i64 0
  %105 = load i8, i8* %scevgep323.2775, align 1
  %call75.i.2776 = call zeroext i8 @mult(i8 zeroext %104, i8 zeroext %105) #3
  %scevgep330.2777 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %98, i64 0, i64 0, i64 0
  store i8 %call75.i.2776, i8* %scevgep330.2777, align 1
  %scevgep327.2778 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %97, i64 0, i64 0, i64 0
  %106 = load i8, i8* %scevgep327.2778, align 1
  %conv84.i.2779 = zext i8 %106 to i32
  %scevgep331.2780 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %98, i64 0, i64 0, i64 0
  %107 = load i8, i8* %scevgep331.2780, align 1
  %conv89.i.2781 = zext i8 %107 to i32
  %xor90.i.2782 = xor i32 %conv84.i.2779, %conv89.i.2781
  %conv91.i.2783 = trunc i32 %xor90.i.2782 to i8
  %scevgep334.2784 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %99, i64 0, i64 0, i64 0
  store i8 %conv91.i.2783, i8* %scevgep334.2784, align 1
  %scevgep315.1.2 = getelementptr i8, i8* %x, i64 1
  %108 = load i8, i8* %scevgep315.1.2, align 1
  %conv44.i.1.2 = zext i8 %108 to i32
  %scevgep318.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %95, i64 0, i64 0, i64 1
  %109 = load i8, i8* %scevgep318.1.2, align 1
  %conv49.i.1.2 = zext i8 %109 to i32
  %xor.i73.1.2 = xor i32 %conv44.i.1.2, %conv49.i.1.2
  %conv50.i.1.2 = trunc i32 %xor.i73.1.2 to i8
  %scevgep322.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %96, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.2, i8* %scevgep322.1.2, align 1
  %110 = load i8, i8* %arrayidx56.i.2, align 1
  %conv57.i.1.2 = zext i8 %110 to i32
  %xor58.i.1.2 = xor i32 %conv57.i.1.2, 1
  %conv59.i.1.2 = trunc i32 %xor58.i.1.2 to i8
  %scevgep319.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %95, i64 0, i64 0, i64 1
  %111 = load i8, i8* %scevgep319.1.2, align 1
  %call64.i.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.2, i8 zeroext %111) #3
  %scevgep326.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %97, i64 0, i64 0, i64 1
  store i8 %call64.i.1.2, i8* %scevgep326.1.2, align 1
  %112 = load i8, i8* %arrayidx70.i.2, align 1
  %scevgep323.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %96, i64 0, i64 0, i64 1
  %113 = load i8, i8* %scevgep323.1.2, align 1
  %call75.i.1.2 = call zeroext i8 @mult(i8 zeroext %112, i8 zeroext %113) #3
  %scevgep330.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %98, i64 0, i64 0, i64 1
  store i8 %call75.i.1.2, i8* %scevgep330.1.2, align 1
  %scevgep327.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %97, i64 0, i64 0, i64 1
  %114 = load i8, i8* %scevgep327.1.2, align 1
  %conv84.i.1.2 = zext i8 %114 to i32
  %scevgep331.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %98, i64 0, i64 0, i64 1
  %115 = load i8, i8* %scevgep331.1.2, align 1
  %conv89.i.1.2 = zext i8 %115 to i32
  %xor90.i.1.2 = xor i32 %conv84.i.1.2, %conv89.i.1.2
  %conv91.i.1.2 = trunc i32 %xor90.i.1.2 to i8
  %scevgep334.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %99, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.2, i8* %scevgep334.1.2, align 1
  %scevgep315.3.2 = getelementptr i8, i8* %x, i64 3
  %116 = load i8, i8* %scevgep315.3.2, align 1
  %conv44.i.3.2 = zext i8 %116 to i32
  %scevgep318.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %95, i64 0, i64 0, i64 3
  %117 = load i8, i8* %scevgep318.3.2, align 1
  %conv49.i.3.2 = zext i8 %117 to i32
  %xor.i73.3.2 = xor i32 %conv44.i.3.2, %conv49.i.3.2
  %conv50.i.3.2 = trunc i32 %xor.i73.3.2 to i8
  %scevgep322.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %96, i64 0, i64 0, i64 3
  store i8 %conv50.i.3.2, i8* %scevgep322.3.2, align 1
  %118 = load i8, i8* %arrayidx56.i.2, align 1
  %conv57.i.3.2 = zext i8 %118 to i32
  %xor58.i.3.2 = xor i32 %conv57.i.3.2, 1
  %conv59.i.3.2 = trunc i32 %xor58.i.3.2 to i8
  %scevgep319.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %95, i64 0, i64 0, i64 3
  %119 = load i8, i8* %scevgep319.3.2, align 1
  %call64.i.3.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.3.2, i8 zeroext %119) #3
  %scevgep326.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %97, i64 0, i64 0, i64 3
  store i8 %call64.i.3.2, i8* %scevgep326.3.2, align 1
  %120 = load i8, i8* %arrayidx70.i.2, align 1
  %scevgep323.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %96, i64 0, i64 0, i64 3
  %121 = load i8, i8* %scevgep323.3.2, align 1
  %call75.i.3.2 = call zeroext i8 @mult(i8 zeroext %120, i8 zeroext %121) #3
  %scevgep330.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %98, i64 0, i64 0, i64 3
  store i8 %call75.i.3.2, i8* %scevgep330.3.2, align 1
  %scevgep327.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %97, i64 0, i64 0, i64 3
  %122 = load i8, i8* %scevgep327.3.2, align 1
  %conv84.i.3.2 = zext i8 %122 to i32
  %scevgep331.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %98, i64 0, i64 0, i64 3
  %123 = load i8, i8* %scevgep331.3.2, align 1
  %conv89.i.3.2 = zext i8 %123 to i32
  %xor90.i.3.2 = xor i32 %conv84.i.3.2, %conv89.i.3.2
  %conv91.i.3.2 = trunc i32 %xor90.i.3.2 to i8
  %scevgep334.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %99, i64 0, i64 0, i64 3
  store i8 %conv91.i.3.2, i8* %scevgep334.3.2, align 1
  %scevgep317.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %95, i64 0, i64 1, i64 0
  %124 = bitcast i8* %scevgep317.2 to [4 x [4 x i8]]*
  %scevgep321.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %96, i64 0, i64 1, i64 0
  %125 = bitcast i8* %scevgep321.2 to [4 x [4 x i8]]*
  %scevgep325.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %97, i64 0, i64 1, i64 0
  %126 = bitcast i8* %scevgep325.2 to [4 x [4 x i8]]*
  %scevgep329.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %98, i64 0, i64 1, i64 0
  %127 = bitcast i8* %scevgep329.2 to [4 x [4 x i8]]*
  %scevgep333.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %99, i64 0, i64 1, i64 0
  %128 = bitcast i8* %scevgep333.2 to [4 x [4 x i8]]*
  %arrayidx56.i.3 = getelementptr inbounds i8, i8* %arraydecay6, i64 3
  %arrayidx70.i.3 = getelementptr inbounds i8, i8* %arraydecay6, i64 3
  %129 = load i8, i8* %x, align 1
  %conv44.i.3789 = zext i8 %129 to i32
  %scevgep318.3790 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %124, i64 0, i64 0, i64 0
  %130 = load i8, i8* %scevgep318.3790, align 1
  %conv49.i.3791 = zext i8 %130 to i32
  %xor.i73.3792 = xor i32 %conv44.i.3789, %conv49.i.3791
  %conv50.i.3793 = trunc i32 %xor.i73.3792 to i8
  %scevgep322.3794 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %125, i64 0, i64 0, i64 0
  store i8 %conv50.i.3793, i8* %scevgep322.3794, align 1
  %131 = load i8, i8* %arrayidx56.i.3, align 1
  %conv57.i.3795 = zext i8 %131 to i32
  %xor58.i.3796 = xor i32 %conv57.i.3795, 1
  %conv59.i.3797 = trunc i32 %xor58.i.3796 to i8
  %scevgep319.3798 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %124, i64 0, i64 0, i64 0
  %132 = load i8, i8* %scevgep319.3798, align 1
  %call64.i.3799 = call zeroext i8 @mult(i8 zeroext %conv59.i.3797, i8 zeroext %132) #3
  %scevgep326.3800 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %126, i64 0, i64 0, i64 0
  store i8 %call64.i.3799, i8* %scevgep326.3800, align 1
  %133 = load i8, i8* %arrayidx70.i.3, align 1
  %scevgep323.3801 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %125, i64 0, i64 0, i64 0
  %134 = load i8, i8* %scevgep323.3801, align 1
  %call75.i.3802 = call zeroext i8 @mult(i8 zeroext %133, i8 zeroext %134) #3
  %scevgep330.3803 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %127, i64 0, i64 0, i64 0
  store i8 %call75.i.3802, i8* %scevgep330.3803, align 1
  %scevgep327.3804 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %126, i64 0, i64 0, i64 0
  %135 = load i8, i8* %scevgep327.3804, align 1
  %conv84.i.3805 = zext i8 %135 to i32
  %scevgep331.3806 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %127, i64 0, i64 0, i64 0
  %136 = load i8, i8* %scevgep331.3806, align 1
  %conv89.i.3807 = zext i8 %136 to i32
  %xor90.i.3808 = xor i32 %conv84.i.3805, %conv89.i.3807
  %conv91.i.3809 = trunc i32 %xor90.i.3808 to i8
  %scevgep334.3810 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %128, i64 0, i64 0, i64 0
  store i8 %conv91.i.3809, i8* %scevgep334.3810, align 1
  %scevgep315.1.3 = getelementptr i8, i8* %x, i64 1
  %137 = load i8, i8* %scevgep315.1.3, align 1
  %conv44.i.1.3 = zext i8 %137 to i32
  %scevgep318.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %124, i64 0, i64 0, i64 1
  %138 = load i8, i8* %scevgep318.1.3, align 1
  %conv49.i.1.3 = zext i8 %138 to i32
  %xor.i73.1.3 = xor i32 %conv44.i.1.3, %conv49.i.1.3
  %conv50.i.1.3 = trunc i32 %xor.i73.1.3 to i8
  %scevgep322.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %125, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.3, i8* %scevgep322.1.3, align 1
  %139 = load i8, i8* %arrayidx56.i.3, align 1
  %conv57.i.1.3 = zext i8 %139 to i32
  %xor58.i.1.3 = xor i32 %conv57.i.1.3, 1
  %conv59.i.1.3 = trunc i32 %xor58.i.1.3 to i8
  %scevgep319.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %124, i64 0, i64 0, i64 1
  %140 = load i8, i8* %scevgep319.1.3, align 1
  %call64.i.1.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.3, i8 zeroext %140) #3
  %scevgep326.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %126, i64 0, i64 0, i64 1
  store i8 %call64.i.1.3, i8* %scevgep326.1.3, align 1
  %141 = load i8, i8* %arrayidx70.i.3, align 1
  %scevgep323.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %125, i64 0, i64 0, i64 1
  %142 = load i8, i8* %scevgep323.1.3, align 1
  %call75.i.1.3 = call zeroext i8 @mult(i8 zeroext %141, i8 zeroext %142) #3
  %scevgep330.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %127, i64 0, i64 0, i64 1
  store i8 %call75.i.1.3, i8* %scevgep330.1.3, align 1
  %scevgep327.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %126, i64 0, i64 0, i64 1
  %143 = load i8, i8* %scevgep327.1.3, align 1
  %conv84.i.1.3 = zext i8 %143 to i32
  %scevgep331.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %127, i64 0, i64 0, i64 1
  %144 = load i8, i8* %scevgep331.1.3, align 1
  %conv89.i.1.3 = zext i8 %144 to i32
  %xor90.i.1.3 = xor i32 %conv84.i.1.3, %conv89.i.1.3
  %conv91.i.1.3 = trunc i32 %xor90.i.1.3 to i8
  %scevgep334.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %128, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.3, i8* %scevgep334.1.3, align 1
  %scevgep315.2.3 = getelementptr i8, i8* %x, i64 2
  %145 = load i8, i8* %scevgep315.2.3, align 1
  %conv44.i.2.3 = zext i8 %145 to i32
  %scevgep318.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %124, i64 0, i64 0, i64 2
  %146 = load i8, i8* %scevgep318.2.3, align 1
  %conv49.i.2.3 = zext i8 %146 to i32
  %xor.i73.2.3 = xor i32 %conv44.i.2.3, %conv49.i.2.3
  %conv50.i.2.3 = trunc i32 %xor.i73.2.3 to i8
  %scevgep322.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %125, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.3, i8* %scevgep322.2.3, align 1
  %147 = load i8, i8* %arrayidx56.i.3, align 1
  %conv57.i.2.3 = zext i8 %147 to i32
  %xor58.i.2.3 = xor i32 %conv57.i.2.3, 1
  %conv59.i.2.3 = trunc i32 %xor58.i.2.3 to i8
  %scevgep319.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %124, i64 0, i64 0, i64 2
  %148 = load i8, i8* %scevgep319.2.3, align 1
  %call64.i.2.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.3, i8 zeroext %148) #3
  %scevgep326.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %126, i64 0, i64 0, i64 2
  store i8 %call64.i.2.3, i8* %scevgep326.2.3, align 1
  %149 = load i8, i8* %arrayidx70.i.3, align 1
  %scevgep323.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %125, i64 0, i64 0, i64 2
  %150 = load i8, i8* %scevgep323.2.3, align 1
  %call75.i.2.3 = call zeroext i8 @mult(i8 zeroext %149, i8 zeroext %150) #3
  %scevgep330.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %127, i64 0, i64 0, i64 2
  store i8 %call75.i.2.3, i8* %scevgep330.2.3, align 1
  %scevgep327.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %126, i64 0, i64 0, i64 2
  %151 = load i8, i8* %scevgep327.2.3, align 1
  %conv84.i.2.3 = zext i8 %151 to i32
  %scevgep331.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %127, i64 0, i64 0, i64 2
  %152 = load i8, i8* %scevgep331.2.3, align 1
  %conv89.i.2.3 = zext i8 %152 to i32
  %xor90.i.2.3 = xor i32 %conv84.i.2.3, %conv89.i.2.3
  %conv91.i.2.3 = trunc i32 %xor90.i.2.3 to i8
  %scevgep334.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %128, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.3, i8* %scevgep334.2.3, align 1
  %153 = load i8, i8* %arraydecay6, align 1
  %154 = load i8, i8* %x, align 1
  %call111.i = call zeroext i8 @mult(i8 zeroext %153, i8 zeroext %154) #3
  store i8 %call111.i, i8* %arraydecay7, align 1
  %scevgep305.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 1
  %155 = load i8, i8* %scevgep305.1, align 1
  %conv126.i.1 = zext i8 %155 to i32
  %156 = load i8, i8* %arraydecay7, align 1
  %conv129.i.1 = zext i8 %156 to i32
  %xor130.i.1 = xor i32 %conv129.i.1, %conv126.i.1
  %conv131.i.1 = trunc i32 %xor130.i.1 to i8
  store i8 %conv131.i.1, i8* %arraydecay7, align 1
  %scevgep305.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 2
  %157 = load i8, i8* %scevgep305.2, align 1
  %conv126.i.2 = zext i8 %157 to i32
  %158 = load i8, i8* %arraydecay7, align 1
  %conv129.i.2 = zext i8 %158 to i32
  %xor130.i.2 = xor i32 %conv129.i.2, %conv126.i.2
  %conv131.i.2 = trunc i32 %xor130.i.2 to i8
  store i8 %conv131.i.2, i8* %arraydecay7, align 1
  %scevgep305.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 3
  %159 = load i8, i8* %scevgep305.3, align 1
  %conv126.i.3 = zext i8 %159 to i32
  %160 = load i8, i8* %arraydecay7, align 1
  %conv129.i.3 = zext i8 %160 to i32
  %xor130.i.3 = xor i32 %conv129.i.3, %conv126.i.3
  %conv131.i.3 = trunc i32 %xor130.i.3 to i8
  store i8 %conv131.i.3, i8* %arraydecay7, align 1
  %scevgep304 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 1, i64 0
  %161 = bitcast i8* %scevgep304 to [4 x [4 x i8]]*
  %arrayidx108.i.1 = getelementptr inbounds i8, i8* %arraydecay6, i64 1
  %162 = load i8, i8* %arrayidx108.i.1, align 1
  %arrayidx110.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %163 = load i8, i8* %arrayidx110.i.1, align 1
  %call111.i.1 = call zeroext i8 @mult(i8 zeroext %162, i8 zeroext %163) #3
  %arrayidx113.i.1 = getelementptr inbounds i8, i8* %arraydecay7, i64 1
  store i8 %call111.i.1, i8* %arrayidx113.i.1, align 1
  %arrayidx128.i.1 = getelementptr inbounds i8, i8* %arraydecay7, i64 1
  %scevgep305.1710 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %161, i64 0, i64 0, i64 0
  %164 = load i8, i8* %scevgep305.1710, align 1
  %conv126.i.1711 = zext i8 %164 to i32
  %165 = load i8, i8* %arrayidx128.i.1, align 1
  %conv129.i.1712 = zext i8 %165 to i32
  %xor130.i.1713 = xor i32 %conv129.i.1712, %conv126.i.1711
  %conv131.i.1714 = trunc i32 %xor130.i.1713 to i8
  store i8 %conv131.i.1714, i8* %arrayidx128.i.1, align 1
  %scevgep305.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %161, i64 0, i64 0, i64 2
  %166 = load i8, i8* %scevgep305.2.1, align 1
  %conv126.i.2.1 = zext i8 %166 to i32
  %167 = load i8, i8* %arrayidx128.i.1, align 1
  %conv129.i.2.1 = zext i8 %167 to i32
  %xor130.i.2.1 = xor i32 %conv129.i.2.1, %conv126.i.2.1
  %conv131.i.2.1 = trunc i32 %xor130.i.2.1 to i8
  store i8 %conv131.i.2.1, i8* %arrayidx128.i.1, align 1
  %scevgep305.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %161, i64 0, i64 0, i64 3
  %168 = load i8, i8* %scevgep305.3.1, align 1
  %conv126.i.3.1 = zext i8 %168 to i32
  %169 = load i8, i8* %arrayidx128.i.1, align 1
  %conv129.i.3.1 = zext i8 %169 to i32
  %xor130.i.3.1 = xor i32 %conv129.i.3.1, %conv126.i.3.1
  %conv131.i.3.1 = trunc i32 %xor130.i.3.1 to i8
  store i8 %conv131.i.3.1, i8* %arrayidx128.i.1, align 1
  %scevgep304.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %161, i64 0, i64 1, i64 0
  %170 = bitcast i8* %scevgep304.1 to [4 x [4 x i8]]*
  %arrayidx108.i.2 = getelementptr inbounds i8, i8* %arraydecay6, i64 2
  %171 = load i8, i8* %arrayidx108.i.2, align 1
  %arrayidx110.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %172 = load i8, i8* %arrayidx110.i.2, align 1
  %call111.i.2 = call zeroext i8 @mult(i8 zeroext %171, i8 zeroext %172) #3
  %arrayidx113.i.2 = getelementptr inbounds i8, i8* %arraydecay7, i64 2
  store i8 %call111.i.2, i8* %arrayidx113.i.2, align 1
  %arrayidx128.i.2 = getelementptr inbounds i8, i8* %arraydecay7, i64 2
  %scevgep305.2719 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %170, i64 0, i64 0, i64 0
  %173 = load i8, i8* %scevgep305.2719, align 1
  %conv126.i.2720 = zext i8 %173 to i32
  %174 = load i8, i8* %arrayidx128.i.2, align 1
  %conv129.i.2721 = zext i8 %174 to i32
  %xor130.i.2722 = xor i32 %conv129.i.2721, %conv126.i.2720
  %conv131.i.2723 = trunc i32 %xor130.i.2722 to i8
  store i8 %conv131.i.2723, i8* %arrayidx128.i.2, align 1
  %scevgep305.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %170, i64 0, i64 0, i64 1
  %175 = load i8, i8* %scevgep305.1.2, align 1
  %conv126.i.1.2 = zext i8 %175 to i32
  %176 = load i8, i8* %arrayidx128.i.2, align 1
  %conv129.i.1.2 = zext i8 %176 to i32
  %xor130.i.1.2 = xor i32 %conv129.i.1.2, %conv126.i.1.2
  %conv131.i.1.2 = trunc i32 %xor130.i.1.2 to i8
  store i8 %conv131.i.1.2, i8* %arrayidx128.i.2, align 1
  %scevgep305.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %170, i64 0, i64 0, i64 3
  %177 = load i8, i8* %scevgep305.3.2, align 1
  %conv126.i.3.2 = zext i8 %177 to i32
  %178 = load i8, i8* %arrayidx128.i.2, align 1
  %conv129.i.3.2 = zext i8 %178 to i32
  %xor130.i.3.2 = xor i32 %conv129.i.3.2, %conv126.i.3.2
  %conv131.i.3.2 = trunc i32 %xor130.i.3.2 to i8
  store i8 %conv131.i.3.2, i8* %arrayidx128.i.2, align 1
  %scevgep304.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %170, i64 0, i64 1, i64 0
  %179 = bitcast i8* %scevgep304.2 to [4 x [4 x i8]]*
  %arrayidx108.i.3 = getelementptr inbounds i8, i8* %arraydecay6, i64 3
  %180 = load i8, i8* %arrayidx108.i.3, align 1
  %arrayidx110.i.3 = getelementptr inbounds i8, i8* %x, i64 3
  %181 = load i8, i8* %arrayidx110.i.3, align 1
  %call111.i.3 = call zeroext i8 @mult(i8 zeroext %180, i8 zeroext %181) #3
  %arrayidx113.i.3 = getelementptr inbounds i8, i8* %arraydecay7, i64 3
  store i8 %call111.i.3, i8* %arrayidx113.i.3, align 1
  %arrayidx128.i.3 = getelementptr inbounds i8, i8* %arraydecay7, i64 3
  %scevgep305.3728 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %179, i64 0, i64 0, i64 0
  %182 = load i8, i8* %scevgep305.3728, align 1
  %conv126.i.3729 = zext i8 %182 to i32
  %183 = load i8, i8* %arrayidx128.i.3, align 1
  %conv129.i.3730 = zext i8 %183 to i32
  %xor130.i.3731 = xor i32 %conv129.i.3730, %conv126.i.3729
  %conv131.i.3732 = trunc i32 %xor130.i.3731 to i8
  store i8 %conv131.i.3732, i8* %arrayidx128.i.3, align 1
  %scevgep305.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %179, i64 0, i64 0, i64 1
  %184 = load i8, i8* %scevgep305.1.3, align 1
  %conv126.i.1.3 = zext i8 %184 to i32
  %185 = load i8, i8* %arrayidx128.i.3, align 1
  %conv129.i.1.3 = zext i8 %185 to i32
  %xor130.i.1.3 = xor i32 %conv129.i.1.3, %conv126.i.1.3
  %conv131.i.1.3 = trunc i32 %xor130.i.1.3 to i8
  store i8 %conv131.i.1.3, i8* %arrayidx128.i.3, align 1
  %scevgep305.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %179, i64 0, i64 0, i64 2
  %186 = load i8, i8* %scevgep305.2.3, align 1
  %conv126.i.2.3 = zext i8 %186 to i32
  %187 = load i8, i8* %arrayidx128.i.3, align 1
  %conv129.i.2.3 = zext i8 %187 to i32
  %xor130.i.2.3 = xor i32 %conv129.i.2.3, %conv126.i.2.3
  %conv131.i.2.3 = trunc i32 %xor130.i.2.3 to i8
  store i8 %conv131.i.2.3, i8* %arrayidx128.i.3, align 1
  %call139.i = call zeroext i8 @mult(i8 zeroext %call.i52, i8 zeroext %call1.i) #3
  %conv140.i = zext i8 %call139.i to i32
  %scevgep295 = getelementptr [4 x i8], [4 x i8]* %u, i64 0, i64 0
  %188 = load i8, i8* %scevgep295, align 1
  %scevgep295.1 = getelementptr [4 x i8], [4 x i8]* %u, i64 0, i64 1
  %189 = load i8, i8* %scevgep295.1, align 1
  %conv.i.i172.i.1 = zext i8 %189 to i32
  %conv1.i.i173.i.1 = zext i8 %188 to i32
  %xor.i.i174.i.1 = xor i32 %conv1.i.i173.i.1, %conv.i.i172.i.1
  %conv2.i.i175.i.1 = trunc i32 %xor.i.i174.i.1 to i8
  %scevgep295.2 = getelementptr [4 x i8], [4 x i8]* %u, i64 0, i64 2
  %190 = load i8, i8* %scevgep295.2, align 1
  %conv.i.i172.i.2 = zext i8 %190 to i32
  %conv1.i.i173.i.2 = zext i8 %conv2.i.i175.i.1 to i32
  %xor.i.i174.i.2 = xor i32 %conv1.i.i173.i.2, %conv.i.i172.i.2
  %conv2.i.i175.i.2 = trunc i32 %xor.i.i174.i.2 to i8
  %scevgep295.3 = getelementptr [4 x i8], [4 x i8]* %u, i64 0, i64 3
  %191 = load i8, i8* %scevgep295.3, align 1
  %conv.i.i172.i.3 = zext i8 %191 to i32
  %conv1.i.i173.i.3 = zext i8 %conv2.i.i175.i.2 to i32
  %xor.i.i174.i.3 = xor i32 %conv1.i.i173.i.3, %conv.i.i172.i.3
  %conv2.i.i175.i.3 = trunc i32 %xor.i.i174.i.3 to i8
  %conv142.i = zext i8 %conv2.i.i175.i.3 to i32
  %cmp143.i = icmp eq i32 %conv140.i, %conv142.i
  call void @assert(i1 zeroext %cmp143.i) #3
  %scevgep290 = getelementptr [4 x i8], [4 x i8]* %u, i64 0, i64 0
  %192 = load i8, i8* %scevgep290, align 1
  %call.i.i869 = call zeroext i8 @mult(i8 zeroext %192, i8 zeroext %192) #3
  %call.i3.i870 = call zeroext i8 @mult(i8 zeroext %call.i.i869, i8 zeroext %call.i.i869) #3
  %scevgep291 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 0
  store i8 %call.i3.i870, i8* %scevgep291, align 1
  %scevgep290.1 = getelementptr [4 x i8], [4 x i8]* %u, i64 0, i64 1
  %193 = load i8, i8* %scevgep290.1, align 1
  %call.i.i867 = call zeroext i8 @mult(i8 zeroext %193, i8 zeroext %193) #3
  %call.i3.i868 = call zeroext i8 @mult(i8 zeroext %call.i.i867, i8 zeroext %call.i.i867) #3
  %scevgep291.1 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 1
  store i8 %call.i3.i868, i8* %scevgep291.1, align 1
  %scevgep290.2 = getelementptr [4 x i8], [4 x i8]* %u, i64 0, i64 2
  %194 = load i8, i8* %scevgep290.2, align 1
  %call.i.i865 = call zeroext i8 @mult(i8 zeroext %194, i8 zeroext %194) #3
  %call.i3.i866 = call zeroext i8 @mult(i8 zeroext %call.i.i865, i8 zeroext %call.i.i865) #3
  %scevgep291.2 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 2
  store i8 %call.i3.i866, i8* %scevgep291.2, align 1
  %scevgep290.3 = getelementptr [4 x i8], [4 x i8]* %u, i64 0, i64 3
  %195 = load i8, i8* %scevgep290.3, align 1
  %call.i.i = call zeroext i8 @mult(i8 zeroext %195, i8 zeroext %195) #3
  %call.i3.i = call zeroext i8 @mult(i8 zeroext %call.i.i, i8 zeroext %call.i.i) #3
  %scevgep291.3 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 3
  store i8 %call.i3.i, i8* %scevgep291.3, align 1
  %arraydecay11 = getelementptr inbounds [4 x i8], [4 x i8]* %wr, i64 0, i64 0
  %call.i108 = call zeroext i8 (...) @rand() #3
  %conv.i109 = zext i8 %call.i108 to i32
  %scevgep286 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 0
  %196 = load i8, i8* %scevgep286, align 1
  %scevgep286.1 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 1
  %197 = load i8, i8* %scevgep286.1, align 1
  %conv.i.i.i115.1 = zext i8 %197 to i32
  %conv1.i.i.i116.1 = zext i8 %196 to i32
  %xor.i.i.i117.1 = xor i32 %conv1.i.i.i116.1, %conv.i.i.i115.1
  %conv2.i.i.i118.1 = trunc i32 %xor.i.i.i117.1 to i8
  %scevgep286.2 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 2
  %198 = load i8, i8* %scevgep286.2, align 1
  %conv.i.i.i115.2 = zext i8 %198 to i32
  %conv1.i.i.i116.2 = zext i8 %conv2.i.i.i118.1 to i32
  %xor.i.i.i117.2 = xor i32 %conv1.i.i.i116.2, %conv.i.i.i115.2
  %conv2.i.i.i118.2 = trunc i32 %xor.i.i.i117.2 to i8
  %scevgep286.3 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 3
  %199 = load i8, i8* %scevgep286.3, align 1
  %conv.i.i.i115.3 = zext i8 %199 to i32
  %conv1.i.i.i116.3 = zext i8 %conv2.i.i.i118.2 to i32
  %xor.i.i.i117.3 = xor i32 %conv1.i.i.i116.3, %conv.i.i.i115.3
  %conv2.i.i.i118.3 = trunc i32 %xor.i.i.i117.3 to i8
  %conv2.i121 = zext i8 %conv2.i.i.i118.3 to i32
  %cmp.i122 = icmp eq i32 %conv.i109, %conv2.i121
  call void @assume(i1 zeroext %cmp.i122) #3
  %scevgep281 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 0
  %200 = load i8, i8* %scevgep281, align 1
  %scevgep282 = getelementptr [4 x i8], [4 x i8]* %wr, i64 0, i64 0
  store i8 %200, i8* %scevgep282, align 1
  %scevgep281.1 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 1
  %201 = load i8, i8* %scevgep281.1, align 1
  %scevgep282.1 = getelementptr [4 x i8], [4 x i8]* %wr, i64 0, i64 1
  store i8 %201, i8* %scevgep282.1, align 1
  %scevgep281.2 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 2
  %202 = load i8, i8* %scevgep281.2, align 1
  %scevgep282.2 = getelementptr [4 x i8], [4 x i8]* %wr, i64 0, i64 2
  store i8 %202, i8* %scevgep282.2, align 1
  %scevgep281.3 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 3
  %203 = load i8, i8* %scevgep281.3, align 1
  %scevgep282.3 = getelementptr [4 x i8], [4 x i8]* %wr, i64 0, i64 3
  store i8 %203, i8* %scevgep282.3, align 1
  %call7.i137 = call zeroext i8 (...) @rand() #3
  %conv8.i138 = zext i8 %call7.i137 to i32
  %204 = load i8, i8* %arraydecay11, align 1
  %conv9.i139 = zext i8 %204 to i32
  %xor.i140 = xor i32 %conv9.i139, %conv8.i138
  %conv10.i141 = trunc i32 %xor.i140 to i8
  store i8 %conv10.i141, i8* %arraydecay11, align 1
  %conv11.i142 = zext i8 %call7.i137 to i32
  %scevgep277 = getelementptr [4 x i8], [4 x i8]* %wr, i64 0, i64 1
  %205 = load i8, i8* %scevgep277, align 1
  %conv13.i145 = zext i8 %205 to i32
  %xor14.i146 = xor i32 %conv13.i145, %conv11.i142
  %conv15.i147 = trunc i32 %xor14.i146 to i8
  store i8 %conv15.i147, i8* %scevgep277, align 1
  %call7.i137.1 = call zeroext i8 (...) @rand() #3
  %conv8.i138.1 = zext i8 %call7.i137.1 to i32
  %206 = load i8, i8* %arraydecay11, align 1
  %conv9.i139.1 = zext i8 %206 to i32
  %xor.i140.1 = xor i32 %conv9.i139.1, %conv8.i138.1
  %conv10.i141.1 = trunc i32 %xor.i140.1 to i8
  store i8 %conv10.i141.1, i8* %arraydecay11, align 1
  %conv11.i142.1 = zext i8 %call7.i137.1 to i32
  %scevgep277.1 = getelementptr [4 x i8], [4 x i8]* %wr, i64 0, i64 2
  %207 = load i8, i8* %scevgep277.1, align 1
  %conv13.i145.1 = zext i8 %207 to i32
  %xor14.i146.1 = xor i32 %conv13.i145.1, %conv11.i142.1
  %conv15.i147.1 = trunc i32 %xor14.i146.1 to i8
  store i8 %conv15.i147.1, i8* %scevgep277.1, align 1
  %call7.i137.2 = call zeroext i8 (...) @rand() #3
  %conv8.i138.2 = zext i8 %call7.i137.2 to i32
  %208 = load i8, i8* %arraydecay11, align 1
  %conv9.i139.2 = zext i8 %208 to i32
  %xor.i140.2 = xor i32 %conv9.i139.2, %conv8.i138.2
  %conv10.i141.2 = trunc i32 %xor.i140.2 to i8
  store i8 %conv10.i141.2, i8* %arraydecay11, align 1
  %conv11.i142.2 = zext i8 %call7.i137.2 to i32
  %scevgep277.2 = getelementptr [4 x i8], [4 x i8]* %wr, i64 0, i64 3
  %209 = load i8, i8* %scevgep277.2, align 1
  %conv13.i145.2 = zext i8 %209 to i32
  %xor14.i146.2 = xor i32 %conv13.i145.2, %conv11.i142.2
  %conv15.i147.2 = trunc i32 %xor14.i146.2 to i8
  store i8 %conv15.i147.2, i8* %scevgep277.2, align 1
  %conv16.i150 = zext i8 %call.i108 to i32
  %scevgep273 = getelementptr [4 x i8], [4 x i8]* %wr, i64 0, i64 0
  %210 = load i8, i8* %scevgep273, align 1
  %scevgep273.1 = getelementptr [4 x i8], [4 x i8]* %wr, i64 0, i64 1
  %211 = load i8, i8* %scevgep273.1, align 1
  %conv.i.i31.i157.1 = zext i8 %211 to i32
  %conv1.i.i32.i158.1 = zext i8 %210 to i32
  %xor.i.i33.i159.1 = xor i32 %conv1.i.i32.i158.1, %conv.i.i31.i157.1
  %conv2.i.i34.i160.1 = trunc i32 %xor.i.i33.i159.1 to i8
  %scevgep273.2 = getelementptr [4 x i8], [4 x i8]* %wr, i64 0, i64 2
  %212 = load i8, i8* %scevgep273.2, align 1
  %conv.i.i31.i157.2 = zext i8 %212 to i32
  %conv1.i.i32.i158.2 = zext i8 %conv2.i.i34.i160.1 to i32
  %xor.i.i33.i159.2 = xor i32 %conv1.i.i32.i158.2, %conv.i.i31.i157.2
  %conv2.i.i34.i160.2 = trunc i32 %xor.i.i33.i159.2 to i8
  %scevgep273.3 = getelementptr [4 x i8], [4 x i8]* %wr, i64 0, i64 3
  %213 = load i8, i8* %scevgep273.3, align 1
  %conv.i.i31.i157.3 = zext i8 %213 to i32
  %conv1.i.i32.i158.3 = zext i8 %conv2.i.i34.i160.2 to i32
  %xor.i.i33.i159.3 = xor i32 %conv1.i.i32.i158.3, %conv.i.i31.i157.3
  %conv2.i.i34.i160.3 = trunc i32 %xor.i.i33.i159.3 to i8
  %conv18.i163 = zext i8 %conv2.i.i34.i160.3 to i32
  %cmp19.i164 = icmp eq i32 %conv16.i150, %conv18.i163
  call void @assert(i1 zeroext %cmp19.i164) #3
  %arraydecay12 = getelementptr inbounds [4 x i8], [4 x i8]* %u, i64 0, i64 0
  %arraydecay13 = getelementptr inbounds [4 x i8], [4 x i8]* %wr, i64 0, i64 0
  %arraydecay14 = getelementptr inbounds [4 x i8], [4 x i8]* %v, i64 0, i64 0
  %call.i197 = call zeroext i8 (...) @rand() #3
  %call1.i198 = call zeroext i8 (...) @rand() #3
  %conv.i199 = zext i8 %call.i197 to i32
  %scevgep269 = getelementptr [4 x i8], [4 x i8]* %u, i64 0, i64 0
  %214 = load i8, i8* %scevgep269, align 1
  %scevgep269.1 = getelementptr [4 x i8], [4 x i8]* %u, i64 0, i64 1
  %215 = load i8, i8* %scevgep269.1, align 1
  %conv.i.i.i205.1 = zext i8 %215 to i32
  %conv1.i.i.i206.1 = zext i8 %214 to i32
  %xor.i.i.i207.1 = xor i32 %conv1.i.i.i206.1, %conv.i.i.i205.1
  %conv2.i.i.i208.1 = trunc i32 %xor.i.i.i207.1 to i8
  %scevgep269.2 = getelementptr [4 x i8], [4 x i8]* %u, i64 0, i64 2
  %216 = load i8, i8* %scevgep269.2, align 1
  %conv.i.i.i205.2 = zext i8 %216 to i32
  %conv1.i.i.i206.2 = zext i8 %conv2.i.i.i208.1 to i32
  %xor.i.i.i207.2 = xor i32 %conv1.i.i.i206.2, %conv.i.i.i205.2
  %conv2.i.i.i208.2 = trunc i32 %xor.i.i.i207.2 to i8
  %scevgep269.3 = getelementptr [4 x i8], [4 x i8]* %u, i64 0, i64 3
  %217 = load i8, i8* %scevgep269.3, align 1
  %conv.i.i.i205.3 = zext i8 %217 to i32
  %conv1.i.i.i206.3 = zext i8 %conv2.i.i.i208.2 to i32
  %xor.i.i.i207.3 = xor i32 %conv1.i.i.i206.3, %conv.i.i.i205.3
  %conv2.i.i.i208.3 = trunc i32 %xor.i.i.i207.3 to i8
  %conv3.i211 = zext i8 %conv2.i.i.i208.3 to i32
  %cmp.i212 = icmp eq i32 %conv.i199, %conv3.i211
  call void @assume(i1 zeroext %cmp.i212) #3
  %conv5.i213 = zext i8 %call1.i198 to i32
  %scevgep265 = getelementptr [4 x i8], [4 x i8]* %wr, i64 0, i64 0
  %218 = load i8, i8* %scevgep265, align 1
  %scevgep265.1 = getelementptr [4 x i8], [4 x i8]* %wr, i64 0, i64 1
  %219 = load i8, i8* %scevgep265.1, align 1
  %conv.i.i155.i220.1 = zext i8 %219 to i32
  %conv1.i.i156.i221.1 = zext i8 %218 to i32
  %xor.i.i157.i222.1 = xor i32 %conv1.i.i156.i221.1, %conv.i.i155.i220.1
  %conv2.i.i158.i223.1 = trunc i32 %xor.i.i157.i222.1 to i8
  %scevgep265.2 = getelementptr [4 x i8], [4 x i8]* %wr, i64 0, i64 2
  %220 = load i8, i8* %scevgep265.2, align 1
  %conv.i.i155.i220.2 = zext i8 %220 to i32
  %conv1.i.i156.i221.2 = zext i8 %conv2.i.i158.i223.1 to i32
  %xor.i.i157.i222.2 = xor i32 %conv1.i.i156.i221.2, %conv.i.i155.i220.2
  %conv2.i.i158.i223.2 = trunc i32 %xor.i.i157.i222.2 to i8
  %scevgep265.3 = getelementptr [4 x i8], [4 x i8]* %wr, i64 0, i64 3
  %221 = load i8, i8* %scevgep265.3, align 1
  %conv.i.i155.i220.3 = zext i8 %221 to i32
  %conv1.i.i156.i221.3 = zext i8 %conv2.i.i158.i223.2 to i32
  %xor.i.i157.i222.3 = xor i32 %conv1.i.i156.i221.3, %conv.i.i155.i220.3
  %conv2.i.i158.i223.3 = trunc i32 %xor.i.i157.i222.3 to i8
  %conv7.i226 = zext i8 %conv2.i.i158.i223.3 to i32
  %cmp8.i227 = icmp eq i32 %conv5.i213, %conv7.i226
  call void @assume(i1 zeroext %cmp8.i227) #3
  %call16.i235 = call zeroext i8 (...) @rand() #3
  %scevgep255 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i235, i8* %scevgep255, align 1
  %scevgep256 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %222 = load i8, i8* %scevgep256, align 1
  %scevgep257 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %222, i8* %scevgep257, align 1
  %call16.i235.1831 = call zeroext i8 (...) @rand() #3
  %scevgep255.1832 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  store i8 %call16.i235.1831, i8* %scevgep255.1832, align 1
  %scevgep256.1833 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %223 = load i8, i8* %scevgep256.1833, align 1
  %scevgep257.1834 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 2, i64 0
  store i8 %223, i8* %scevgep257.1834, align 1
  %call16.i235.2836 = call zeroext i8 (...) @rand() #3
  %scevgep255.2837 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  store i8 %call16.i235.2836, i8* %scevgep255.2837, align 1
  %scevgep256.2838 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %224 = load i8, i8* %scevgep256.2838, align 1
  %scevgep257.2839 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 3, i64 0
  store i8 %224, i8* %scevgep257.2839, align 1
  %scevgep252 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 1
  %225 = bitcast i8* %scevgep252 to [4 x [4 x i8]]*
  %call16.i235.1 = call zeroext i8 (...) @rand() #3
  %scevgep255.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %225, i64 0, i64 0, i64 1
  store i8 %call16.i235.1, i8* %scevgep255.1, align 1
  %scevgep256.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %225, i64 0, i64 0, i64 1
  %226 = load i8, i8* %scevgep256.1, align 1
  %scevgep257.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %225, i64 0, i64 1, i64 0
  store i8 %226, i8* %scevgep257.1, align 1
  %call16.i235.1.1 = call zeroext i8 (...) @rand() #3
  %scevgep255.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %225, i64 0, i64 0, i64 2
  store i8 %call16.i235.1.1, i8* %scevgep255.1.1, align 1
  %scevgep256.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %225, i64 0, i64 0, i64 2
  %227 = load i8, i8* %scevgep256.1.1, align 1
  %scevgep257.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %225, i64 0, i64 2, i64 0
  store i8 %227, i8* %scevgep257.1.1, align 1
  %scevgep252.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %225, i64 0, i64 1, i64 1
  %228 = bitcast i8* %scevgep252.1 to [4 x [4 x i8]]*
  %call16.i235.2 = call zeroext i8 (...) @rand() #3
  %scevgep255.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %228, i64 0, i64 0, i64 1
  store i8 %call16.i235.2, i8* %scevgep255.2, align 1
  %scevgep256.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %228, i64 0, i64 0, i64 1
  %229 = load i8, i8* %scevgep256.2, align 1
  %scevgep257.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %228, i64 0, i64 1, i64 0
  store i8 %229, i8* %scevgep257.2, align 1
  %scevgep228.1 = getelementptr [4 x i8], [4 x i8]* %wr, i64 0, i64 1
  %230 = load i8, i8* %scevgep228.1, align 1
  %conv44.i262.1 = zext i8 %230 to i32
  %scevgep231.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %231 = load i8, i8* %scevgep231.1, align 1
  %conv49.i267.1 = zext i8 %231 to i32
  %xor.i268.1 = xor i32 %conv44.i262.1, %conv49.i267.1
  %conv50.i269.1 = trunc i32 %xor.i268.1 to i8
  %scevgep235.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i269.1, i8* %scevgep235.1, align 1
  %232 = load i8, i8* %arraydecay12, align 1
  %conv57.i276.1 = zext i8 %232 to i32
  %xor58.i277.1 = xor i32 %conv57.i276.1, 1
  %conv59.i278.1 = trunc i32 %xor58.i277.1 to i8
  %scevgep232.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %233 = load i8, i8* %scevgep232.1, align 1
  %call64.i283.1 = call zeroext i8 @mult(i8 zeroext %conv59.i278.1, i8 zeroext %233) #3
  %scevgep239.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i283.1, i8* %scevgep239.1, align 1
  %234 = load i8, i8* %arraydecay12, align 1
  %scevgep236.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 1
  %235 = load i8, i8* %scevgep236.1, align 1
  %call75.i294.1 = call zeroext i8 @mult(i8 zeroext %234, i8 zeroext %235) #3
  %scevgep243.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i294.1, i8* %scevgep243.1, align 1
  %scevgep240.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %236 = load i8, i8* %scevgep240.1, align 1
  %conv84.i303.1 = zext i8 %236 to i32
  %scevgep244.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %237 = load i8, i8* %scevgep244.1, align 1
  %conv89.i308.1 = zext i8 %237 to i32
  %xor90.i309.1 = xor i32 %conv84.i303.1, %conv89.i308.1
  %conv91.i310.1 = trunc i32 %xor90.i309.1 to i8
  %scevgep247.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i310.1, i8* %scevgep247.1, align 1
  %scevgep228.2 = getelementptr [4 x i8], [4 x i8]* %wr, i64 0, i64 2
  %238 = load i8, i8* %scevgep228.2, align 1
  %conv44.i262.2 = zext i8 %238 to i32
  %scevgep231.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %239 = load i8, i8* %scevgep231.2, align 1
  %conv49.i267.2 = zext i8 %239 to i32
  %xor.i268.2 = xor i32 %conv44.i262.2, %conv49.i267.2
  %conv50.i269.2 = trunc i32 %xor.i268.2 to i8
  %scevgep235.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 2
  store i8 %conv50.i269.2, i8* %scevgep235.2, align 1
  %240 = load i8, i8* %arraydecay12, align 1
  %conv57.i276.2 = zext i8 %240 to i32
  %xor58.i277.2 = xor i32 %conv57.i276.2, 1
  %conv59.i278.2 = trunc i32 %xor58.i277.2 to i8
  %scevgep232.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %241 = load i8, i8* %scevgep232.2, align 1
  %call64.i283.2 = call zeroext i8 @mult(i8 zeroext %conv59.i278.2, i8 zeroext %241) #3
  %scevgep239.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 2
  store i8 %call64.i283.2, i8* %scevgep239.2, align 1
  %242 = load i8, i8* %arraydecay12, align 1
  %scevgep236.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 2
  %243 = load i8, i8* %scevgep236.2, align 1
  %call75.i294.2 = call zeroext i8 @mult(i8 zeroext %242, i8 zeroext %243) #3
  %scevgep243.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 2
  store i8 %call75.i294.2, i8* %scevgep243.2, align 1
  %scevgep240.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 2
  %244 = load i8, i8* %scevgep240.2, align 1
  %conv84.i303.2 = zext i8 %244 to i32
  %scevgep244.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 2
  %245 = load i8, i8* %scevgep244.2, align 1
  %conv89.i308.2 = zext i8 %245 to i32
  %xor90.i309.2 = xor i32 %conv84.i303.2, %conv89.i308.2
  %conv91.i310.2 = trunc i32 %xor90.i309.2 to i8
  %scevgep247.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 2
  store i8 %conv91.i310.2, i8* %scevgep247.2, align 1
  %scevgep228.3 = getelementptr [4 x i8], [4 x i8]* %wr, i64 0, i64 3
  %246 = load i8, i8* %scevgep228.3, align 1
  %conv44.i262.3 = zext i8 %246 to i32
  %scevgep231.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %247 = load i8, i8* %scevgep231.3, align 1
  %conv49.i267.3 = zext i8 %247 to i32
  %xor.i268.3 = xor i32 %conv44.i262.3, %conv49.i267.3
  %conv50.i269.3 = trunc i32 %xor.i268.3 to i8
  %scevgep235.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 3
  store i8 %conv50.i269.3, i8* %scevgep235.3, align 1
  %248 = load i8, i8* %arraydecay12, align 1
  %conv57.i276.3 = zext i8 %248 to i32
  %xor58.i277.3 = xor i32 %conv57.i276.3, 1
  %conv59.i278.3 = trunc i32 %xor58.i277.3 to i8
  %scevgep232.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %249 = load i8, i8* %scevgep232.3, align 1
  %call64.i283.3 = call zeroext i8 @mult(i8 zeroext %conv59.i278.3, i8 zeroext %249) #3
  %scevgep239.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 3
  store i8 %call64.i283.3, i8* %scevgep239.3, align 1
  %250 = load i8, i8* %arraydecay12, align 1
  %scevgep236.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 3
  %251 = load i8, i8* %scevgep236.3, align 1
  %call75.i294.3 = call zeroext i8 @mult(i8 zeroext %250, i8 zeroext %251) #3
  %scevgep243.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 3
  store i8 %call75.i294.3, i8* %scevgep243.3, align 1
  %scevgep240.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 3
  %252 = load i8, i8* %scevgep240.3, align 1
  %conv84.i303.3 = zext i8 %252 to i32
  %scevgep244.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 3
  %253 = load i8, i8* %scevgep244.3, align 1
  %conv89.i308.3 = zext i8 %253 to i32
  %xor90.i309.3 = xor i32 %conv84.i303.3, %conv89.i308.3
  %conv91.i310.3 = trunc i32 %xor90.i309.3 to i8
  %scevgep247.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 3
  store i8 %conv91.i310.3, i8* %scevgep247.3, align 1
  %scevgep230 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  %254 = bitcast i8* %scevgep230 to [4 x [4 x i8]]*
  %scevgep234 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 1, i64 0
  %255 = bitcast i8* %scevgep234 to [4 x [4 x i8]]*
  %scevgep238 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %256 = bitcast i8* %scevgep238 to [4 x [4 x i8]]*
  %scevgep242 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %257 = bitcast i8* %scevgep242 to [4 x [4 x i8]]*
  %scevgep246 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 1, i64 0
  %258 = bitcast i8* %scevgep246 to [4 x [4 x i8]]*
  %arrayidx56.i275.1 = getelementptr inbounds i8, i8* %arraydecay12, i64 1
  %arrayidx70.i289.1 = getelementptr inbounds i8, i8* %arraydecay12, i64 1
  %scevgep228.1629 = getelementptr [4 x i8], [4 x i8]* %wr, i64 0, i64 0
  %259 = load i8, i8* %scevgep228.1629, align 1
  %conv44.i262.1630 = zext i8 %259 to i32
  %scevgep231.1631 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %254, i64 0, i64 0, i64 0
  %260 = load i8, i8* %scevgep231.1631, align 1
  %conv49.i267.1632 = zext i8 %260 to i32
  %xor.i268.1633 = xor i32 %conv44.i262.1630, %conv49.i267.1632
  %conv50.i269.1634 = trunc i32 %xor.i268.1633 to i8
  %scevgep235.1635 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %255, i64 0, i64 0, i64 0
  store i8 %conv50.i269.1634, i8* %scevgep235.1635, align 1
  %261 = load i8, i8* %arrayidx56.i275.1, align 1
  %conv57.i276.1636 = zext i8 %261 to i32
  %xor58.i277.1637 = xor i32 %conv57.i276.1636, 1
  %conv59.i278.1638 = trunc i32 %xor58.i277.1637 to i8
  %scevgep232.1639 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %254, i64 0, i64 0, i64 0
  %262 = load i8, i8* %scevgep232.1639, align 1
  %call64.i283.1640 = call zeroext i8 @mult(i8 zeroext %conv59.i278.1638, i8 zeroext %262) #3
  %scevgep239.1641 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %256, i64 0, i64 0, i64 0
  store i8 %call64.i283.1640, i8* %scevgep239.1641, align 1
  %263 = load i8, i8* %arrayidx70.i289.1, align 1
  %scevgep236.1642 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %255, i64 0, i64 0, i64 0
  %264 = load i8, i8* %scevgep236.1642, align 1
  %call75.i294.1643 = call zeroext i8 @mult(i8 zeroext %263, i8 zeroext %264) #3
  %scevgep243.1644 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %257, i64 0, i64 0, i64 0
  store i8 %call75.i294.1643, i8* %scevgep243.1644, align 1
  %scevgep240.1645 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %256, i64 0, i64 0, i64 0
  %265 = load i8, i8* %scevgep240.1645, align 1
  %conv84.i303.1646 = zext i8 %265 to i32
  %scevgep244.1647 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %257, i64 0, i64 0, i64 0
  %266 = load i8, i8* %scevgep244.1647, align 1
  %conv89.i308.1648 = zext i8 %266 to i32
  %xor90.i309.1649 = xor i32 %conv84.i303.1646, %conv89.i308.1648
  %conv91.i310.1650 = trunc i32 %xor90.i309.1649 to i8
  %scevgep247.1651 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %258, i64 0, i64 0, i64 0
  store i8 %conv91.i310.1650, i8* %scevgep247.1651, align 1
  %scevgep228.2.1 = getelementptr [4 x i8], [4 x i8]* %wr, i64 0, i64 2
  %267 = load i8, i8* %scevgep228.2.1, align 1
  %conv44.i262.2.1 = zext i8 %267 to i32
  %scevgep231.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %254, i64 0, i64 0, i64 2
  %268 = load i8, i8* %scevgep231.2.1, align 1
  %conv49.i267.2.1 = zext i8 %268 to i32
  %xor.i268.2.1 = xor i32 %conv44.i262.2.1, %conv49.i267.2.1
  %conv50.i269.2.1 = trunc i32 %xor.i268.2.1 to i8
  %scevgep235.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %255, i64 0, i64 0, i64 2
  store i8 %conv50.i269.2.1, i8* %scevgep235.2.1, align 1
  %269 = load i8, i8* %arrayidx56.i275.1, align 1
  %conv57.i276.2.1 = zext i8 %269 to i32
  %xor58.i277.2.1 = xor i32 %conv57.i276.2.1, 1
  %conv59.i278.2.1 = trunc i32 %xor58.i277.2.1 to i8
  %scevgep232.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %254, i64 0, i64 0, i64 2
  %270 = load i8, i8* %scevgep232.2.1, align 1
  %call64.i283.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i278.2.1, i8 zeroext %270) #3
  %scevgep239.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %256, i64 0, i64 0, i64 2
  store i8 %call64.i283.2.1, i8* %scevgep239.2.1, align 1
  %271 = load i8, i8* %arrayidx70.i289.1, align 1
  %scevgep236.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %255, i64 0, i64 0, i64 2
  %272 = load i8, i8* %scevgep236.2.1, align 1
  %call75.i294.2.1 = call zeroext i8 @mult(i8 zeroext %271, i8 zeroext %272) #3
  %scevgep243.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %257, i64 0, i64 0, i64 2
  store i8 %call75.i294.2.1, i8* %scevgep243.2.1, align 1
  %scevgep240.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %256, i64 0, i64 0, i64 2
  %273 = load i8, i8* %scevgep240.2.1, align 1
  %conv84.i303.2.1 = zext i8 %273 to i32
  %scevgep244.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %257, i64 0, i64 0, i64 2
  %274 = load i8, i8* %scevgep244.2.1, align 1
  %conv89.i308.2.1 = zext i8 %274 to i32
  %xor90.i309.2.1 = xor i32 %conv84.i303.2.1, %conv89.i308.2.1
  %conv91.i310.2.1 = trunc i32 %xor90.i309.2.1 to i8
  %scevgep247.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %258, i64 0, i64 0, i64 2
  store i8 %conv91.i310.2.1, i8* %scevgep247.2.1, align 1
  %scevgep228.3.1 = getelementptr [4 x i8], [4 x i8]* %wr, i64 0, i64 3
  %275 = load i8, i8* %scevgep228.3.1, align 1
  %conv44.i262.3.1 = zext i8 %275 to i32
  %scevgep231.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %254, i64 0, i64 0, i64 3
  %276 = load i8, i8* %scevgep231.3.1, align 1
  %conv49.i267.3.1 = zext i8 %276 to i32
  %xor.i268.3.1 = xor i32 %conv44.i262.3.1, %conv49.i267.3.1
  %conv50.i269.3.1 = trunc i32 %xor.i268.3.1 to i8
  %scevgep235.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %255, i64 0, i64 0, i64 3
  store i8 %conv50.i269.3.1, i8* %scevgep235.3.1, align 1
  %277 = load i8, i8* %arrayidx56.i275.1, align 1
  %conv57.i276.3.1 = zext i8 %277 to i32
  %xor58.i277.3.1 = xor i32 %conv57.i276.3.1, 1
  %conv59.i278.3.1 = trunc i32 %xor58.i277.3.1 to i8
  %scevgep232.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %254, i64 0, i64 0, i64 3
  %278 = load i8, i8* %scevgep232.3.1, align 1
  %call64.i283.3.1 = call zeroext i8 @mult(i8 zeroext %conv59.i278.3.1, i8 zeroext %278) #3
  %scevgep239.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %256, i64 0, i64 0, i64 3
  store i8 %call64.i283.3.1, i8* %scevgep239.3.1, align 1
  %279 = load i8, i8* %arrayidx70.i289.1, align 1
  %scevgep236.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %255, i64 0, i64 0, i64 3
  %280 = load i8, i8* %scevgep236.3.1, align 1
  %call75.i294.3.1 = call zeroext i8 @mult(i8 zeroext %279, i8 zeroext %280) #3
  %scevgep243.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %257, i64 0, i64 0, i64 3
  store i8 %call75.i294.3.1, i8* %scevgep243.3.1, align 1
  %scevgep240.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %256, i64 0, i64 0, i64 3
  %281 = load i8, i8* %scevgep240.3.1, align 1
  %conv84.i303.3.1 = zext i8 %281 to i32
  %scevgep244.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %257, i64 0, i64 0, i64 3
  %282 = load i8, i8* %scevgep244.3.1, align 1
  %conv89.i308.3.1 = zext i8 %282 to i32
  %xor90.i309.3.1 = xor i32 %conv84.i303.3.1, %conv89.i308.3.1
  %conv91.i310.3.1 = trunc i32 %xor90.i309.3.1 to i8
  %scevgep247.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %258, i64 0, i64 0, i64 3
  store i8 %conv91.i310.3.1, i8* %scevgep247.3.1, align 1
  %scevgep230.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %254, i64 0, i64 1, i64 0
  %283 = bitcast i8* %scevgep230.1 to [4 x [4 x i8]]*
  %scevgep234.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %255, i64 0, i64 1, i64 0
  %284 = bitcast i8* %scevgep234.1 to [4 x [4 x i8]]*
  %scevgep238.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %256, i64 0, i64 1, i64 0
  %285 = bitcast i8* %scevgep238.1 to [4 x [4 x i8]]*
  %scevgep242.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %257, i64 0, i64 1, i64 0
  %286 = bitcast i8* %scevgep242.1 to [4 x [4 x i8]]*
  %scevgep246.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %258, i64 0, i64 1, i64 0
  %287 = bitcast i8* %scevgep246.1 to [4 x [4 x i8]]*
  %arrayidx56.i275.2 = getelementptr inbounds i8, i8* %arraydecay12, i64 2
  %arrayidx70.i289.2 = getelementptr inbounds i8, i8* %arraydecay12, i64 2
  %scevgep228.2656 = getelementptr [4 x i8], [4 x i8]* %wr, i64 0, i64 0
  %288 = load i8, i8* %scevgep228.2656, align 1
  %conv44.i262.2657 = zext i8 %288 to i32
  %scevgep231.2658 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %283, i64 0, i64 0, i64 0
  %289 = load i8, i8* %scevgep231.2658, align 1
  %conv49.i267.2659 = zext i8 %289 to i32
  %xor.i268.2660 = xor i32 %conv44.i262.2657, %conv49.i267.2659
  %conv50.i269.2661 = trunc i32 %xor.i268.2660 to i8
  %scevgep235.2662 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %284, i64 0, i64 0, i64 0
  store i8 %conv50.i269.2661, i8* %scevgep235.2662, align 1
  %290 = load i8, i8* %arrayidx56.i275.2, align 1
  %conv57.i276.2663 = zext i8 %290 to i32
  %xor58.i277.2664 = xor i32 %conv57.i276.2663, 1
  %conv59.i278.2665 = trunc i32 %xor58.i277.2664 to i8
  %scevgep232.2666 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %283, i64 0, i64 0, i64 0
  %291 = load i8, i8* %scevgep232.2666, align 1
  %call64.i283.2667 = call zeroext i8 @mult(i8 zeroext %conv59.i278.2665, i8 zeroext %291) #3
  %scevgep239.2668 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %285, i64 0, i64 0, i64 0
  store i8 %call64.i283.2667, i8* %scevgep239.2668, align 1
  %292 = load i8, i8* %arrayidx70.i289.2, align 1
  %scevgep236.2669 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %284, i64 0, i64 0, i64 0
  %293 = load i8, i8* %scevgep236.2669, align 1
  %call75.i294.2670 = call zeroext i8 @mult(i8 zeroext %292, i8 zeroext %293) #3
  %scevgep243.2671 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %286, i64 0, i64 0, i64 0
  store i8 %call75.i294.2670, i8* %scevgep243.2671, align 1
  %scevgep240.2672 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %285, i64 0, i64 0, i64 0
  %294 = load i8, i8* %scevgep240.2672, align 1
  %conv84.i303.2673 = zext i8 %294 to i32
  %scevgep244.2674 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %286, i64 0, i64 0, i64 0
  %295 = load i8, i8* %scevgep244.2674, align 1
  %conv89.i308.2675 = zext i8 %295 to i32
  %xor90.i309.2676 = xor i32 %conv84.i303.2673, %conv89.i308.2675
  %conv91.i310.2677 = trunc i32 %xor90.i309.2676 to i8
  %scevgep247.2678 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %287, i64 0, i64 0, i64 0
  store i8 %conv91.i310.2677, i8* %scevgep247.2678, align 1
  %scevgep228.1.2 = getelementptr [4 x i8], [4 x i8]* %wr, i64 0, i64 1
  %296 = load i8, i8* %scevgep228.1.2, align 1
  %conv44.i262.1.2 = zext i8 %296 to i32
  %scevgep231.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %283, i64 0, i64 0, i64 1
  %297 = load i8, i8* %scevgep231.1.2, align 1
  %conv49.i267.1.2 = zext i8 %297 to i32
  %xor.i268.1.2 = xor i32 %conv44.i262.1.2, %conv49.i267.1.2
  %conv50.i269.1.2 = trunc i32 %xor.i268.1.2 to i8
  %scevgep235.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %284, i64 0, i64 0, i64 1
  store i8 %conv50.i269.1.2, i8* %scevgep235.1.2, align 1
  %298 = load i8, i8* %arrayidx56.i275.2, align 1
  %conv57.i276.1.2 = zext i8 %298 to i32
  %xor58.i277.1.2 = xor i32 %conv57.i276.1.2, 1
  %conv59.i278.1.2 = trunc i32 %xor58.i277.1.2 to i8
  %scevgep232.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %283, i64 0, i64 0, i64 1
  %299 = load i8, i8* %scevgep232.1.2, align 1
  %call64.i283.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i278.1.2, i8 zeroext %299) #3
  %scevgep239.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %285, i64 0, i64 0, i64 1
  store i8 %call64.i283.1.2, i8* %scevgep239.1.2, align 1
  %300 = load i8, i8* %arrayidx70.i289.2, align 1
  %scevgep236.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %284, i64 0, i64 0, i64 1
  %301 = load i8, i8* %scevgep236.1.2, align 1
  %call75.i294.1.2 = call zeroext i8 @mult(i8 zeroext %300, i8 zeroext %301) #3
  %scevgep243.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %286, i64 0, i64 0, i64 1
  store i8 %call75.i294.1.2, i8* %scevgep243.1.2, align 1
  %scevgep240.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %285, i64 0, i64 0, i64 1
  %302 = load i8, i8* %scevgep240.1.2, align 1
  %conv84.i303.1.2 = zext i8 %302 to i32
  %scevgep244.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %286, i64 0, i64 0, i64 1
  %303 = load i8, i8* %scevgep244.1.2, align 1
  %conv89.i308.1.2 = zext i8 %303 to i32
  %xor90.i309.1.2 = xor i32 %conv84.i303.1.2, %conv89.i308.1.2
  %conv91.i310.1.2 = trunc i32 %xor90.i309.1.2 to i8
  %scevgep247.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %287, i64 0, i64 0, i64 1
  store i8 %conv91.i310.1.2, i8* %scevgep247.1.2, align 1
  %scevgep228.3.2 = getelementptr [4 x i8], [4 x i8]* %wr, i64 0, i64 3
  %304 = load i8, i8* %scevgep228.3.2, align 1
  %conv44.i262.3.2 = zext i8 %304 to i32
  %scevgep231.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %283, i64 0, i64 0, i64 3
  %305 = load i8, i8* %scevgep231.3.2, align 1
  %conv49.i267.3.2 = zext i8 %305 to i32
  %xor.i268.3.2 = xor i32 %conv44.i262.3.2, %conv49.i267.3.2
  %conv50.i269.3.2 = trunc i32 %xor.i268.3.2 to i8
  %scevgep235.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %284, i64 0, i64 0, i64 3
  store i8 %conv50.i269.3.2, i8* %scevgep235.3.2, align 1
  %306 = load i8, i8* %arrayidx56.i275.2, align 1
  %conv57.i276.3.2 = zext i8 %306 to i32
  %xor58.i277.3.2 = xor i32 %conv57.i276.3.2, 1
  %conv59.i278.3.2 = trunc i32 %xor58.i277.3.2 to i8
  %scevgep232.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %283, i64 0, i64 0, i64 3
  %307 = load i8, i8* %scevgep232.3.2, align 1
  %call64.i283.3.2 = call zeroext i8 @mult(i8 zeroext %conv59.i278.3.2, i8 zeroext %307) #3
  %scevgep239.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %285, i64 0, i64 0, i64 3
  store i8 %call64.i283.3.2, i8* %scevgep239.3.2, align 1
  %308 = load i8, i8* %arrayidx70.i289.2, align 1
  %scevgep236.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %284, i64 0, i64 0, i64 3
  %309 = load i8, i8* %scevgep236.3.2, align 1
  %call75.i294.3.2 = call zeroext i8 @mult(i8 zeroext %308, i8 zeroext %309) #3
  %scevgep243.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %286, i64 0, i64 0, i64 3
  store i8 %call75.i294.3.2, i8* %scevgep243.3.2, align 1
  %scevgep240.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %285, i64 0, i64 0, i64 3
  %310 = load i8, i8* %scevgep240.3.2, align 1
  %conv84.i303.3.2 = zext i8 %310 to i32
  %scevgep244.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %286, i64 0, i64 0, i64 3
  %311 = load i8, i8* %scevgep244.3.2, align 1
  %conv89.i308.3.2 = zext i8 %311 to i32
  %xor90.i309.3.2 = xor i32 %conv84.i303.3.2, %conv89.i308.3.2
  %conv91.i310.3.2 = trunc i32 %xor90.i309.3.2 to i8
  %scevgep247.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %287, i64 0, i64 0, i64 3
  store i8 %conv91.i310.3.2, i8* %scevgep247.3.2, align 1
  %scevgep230.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %283, i64 0, i64 1, i64 0
  %312 = bitcast i8* %scevgep230.2 to [4 x [4 x i8]]*
  %scevgep234.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %284, i64 0, i64 1, i64 0
  %313 = bitcast i8* %scevgep234.2 to [4 x [4 x i8]]*
  %scevgep238.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %285, i64 0, i64 1, i64 0
  %314 = bitcast i8* %scevgep238.2 to [4 x [4 x i8]]*
  %scevgep242.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %286, i64 0, i64 1, i64 0
  %315 = bitcast i8* %scevgep242.2 to [4 x [4 x i8]]*
  %scevgep246.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %287, i64 0, i64 1, i64 0
  %316 = bitcast i8* %scevgep246.2 to [4 x [4 x i8]]*
  %arrayidx56.i275.3 = getelementptr inbounds i8, i8* %arraydecay12, i64 3
  %arrayidx70.i289.3 = getelementptr inbounds i8, i8* %arraydecay12, i64 3
  %scevgep228.3683 = getelementptr [4 x i8], [4 x i8]* %wr, i64 0, i64 0
  %317 = load i8, i8* %scevgep228.3683, align 1
  %conv44.i262.3684 = zext i8 %317 to i32
  %scevgep231.3685 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %312, i64 0, i64 0, i64 0
  %318 = load i8, i8* %scevgep231.3685, align 1
  %conv49.i267.3686 = zext i8 %318 to i32
  %xor.i268.3687 = xor i32 %conv44.i262.3684, %conv49.i267.3686
  %conv50.i269.3688 = trunc i32 %xor.i268.3687 to i8
  %scevgep235.3689 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %313, i64 0, i64 0, i64 0
  store i8 %conv50.i269.3688, i8* %scevgep235.3689, align 1
  %319 = load i8, i8* %arrayidx56.i275.3, align 1
  %conv57.i276.3690 = zext i8 %319 to i32
  %xor58.i277.3691 = xor i32 %conv57.i276.3690, 1
  %conv59.i278.3692 = trunc i32 %xor58.i277.3691 to i8
  %scevgep232.3693 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %312, i64 0, i64 0, i64 0
  %320 = load i8, i8* %scevgep232.3693, align 1
  %call64.i283.3694 = call zeroext i8 @mult(i8 zeroext %conv59.i278.3692, i8 zeroext %320) #3
  %scevgep239.3695 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %314, i64 0, i64 0, i64 0
  store i8 %call64.i283.3694, i8* %scevgep239.3695, align 1
  %321 = load i8, i8* %arrayidx70.i289.3, align 1
  %scevgep236.3696 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %313, i64 0, i64 0, i64 0
  %322 = load i8, i8* %scevgep236.3696, align 1
  %call75.i294.3697 = call zeroext i8 @mult(i8 zeroext %321, i8 zeroext %322) #3
  %scevgep243.3698 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %315, i64 0, i64 0, i64 0
  store i8 %call75.i294.3697, i8* %scevgep243.3698, align 1
  %scevgep240.3699 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %314, i64 0, i64 0, i64 0
  %323 = load i8, i8* %scevgep240.3699, align 1
  %conv84.i303.3700 = zext i8 %323 to i32
  %scevgep244.3701 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %315, i64 0, i64 0, i64 0
  %324 = load i8, i8* %scevgep244.3701, align 1
  %conv89.i308.3702 = zext i8 %324 to i32
  %xor90.i309.3703 = xor i32 %conv84.i303.3700, %conv89.i308.3702
  %conv91.i310.3704 = trunc i32 %xor90.i309.3703 to i8
  %scevgep247.3705 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %316, i64 0, i64 0, i64 0
  store i8 %conv91.i310.3704, i8* %scevgep247.3705, align 1
  %scevgep228.1.3 = getelementptr [4 x i8], [4 x i8]* %wr, i64 0, i64 1
  %325 = load i8, i8* %scevgep228.1.3, align 1
  %conv44.i262.1.3 = zext i8 %325 to i32
  %scevgep231.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %312, i64 0, i64 0, i64 1
  %326 = load i8, i8* %scevgep231.1.3, align 1
  %conv49.i267.1.3 = zext i8 %326 to i32
  %xor.i268.1.3 = xor i32 %conv44.i262.1.3, %conv49.i267.1.3
  %conv50.i269.1.3 = trunc i32 %xor.i268.1.3 to i8
  %scevgep235.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %313, i64 0, i64 0, i64 1
  store i8 %conv50.i269.1.3, i8* %scevgep235.1.3, align 1
  %327 = load i8, i8* %arrayidx56.i275.3, align 1
  %conv57.i276.1.3 = zext i8 %327 to i32
  %xor58.i277.1.3 = xor i32 %conv57.i276.1.3, 1
  %conv59.i278.1.3 = trunc i32 %xor58.i277.1.3 to i8
  %scevgep232.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %312, i64 0, i64 0, i64 1
  %328 = load i8, i8* %scevgep232.1.3, align 1
  %call64.i283.1.3 = call zeroext i8 @mult(i8 zeroext %conv59.i278.1.3, i8 zeroext %328) #3
  %scevgep239.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %314, i64 0, i64 0, i64 1
  store i8 %call64.i283.1.3, i8* %scevgep239.1.3, align 1
  %329 = load i8, i8* %arrayidx70.i289.3, align 1
  %scevgep236.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %313, i64 0, i64 0, i64 1
  %330 = load i8, i8* %scevgep236.1.3, align 1
  %call75.i294.1.3 = call zeroext i8 @mult(i8 zeroext %329, i8 zeroext %330) #3
  %scevgep243.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %315, i64 0, i64 0, i64 1
  store i8 %call75.i294.1.3, i8* %scevgep243.1.3, align 1
  %scevgep240.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %314, i64 0, i64 0, i64 1
  %331 = load i8, i8* %scevgep240.1.3, align 1
  %conv84.i303.1.3 = zext i8 %331 to i32
  %scevgep244.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %315, i64 0, i64 0, i64 1
  %332 = load i8, i8* %scevgep244.1.3, align 1
  %conv89.i308.1.3 = zext i8 %332 to i32
  %xor90.i309.1.3 = xor i32 %conv84.i303.1.3, %conv89.i308.1.3
  %conv91.i310.1.3 = trunc i32 %xor90.i309.1.3 to i8
  %scevgep247.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %316, i64 0, i64 0, i64 1
  store i8 %conv91.i310.1.3, i8* %scevgep247.1.3, align 1
  %scevgep228.2.3 = getelementptr [4 x i8], [4 x i8]* %wr, i64 0, i64 2
  %333 = load i8, i8* %scevgep228.2.3, align 1
  %conv44.i262.2.3 = zext i8 %333 to i32
  %scevgep231.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %312, i64 0, i64 0, i64 2
  %334 = load i8, i8* %scevgep231.2.3, align 1
  %conv49.i267.2.3 = zext i8 %334 to i32
  %xor.i268.2.3 = xor i32 %conv44.i262.2.3, %conv49.i267.2.3
  %conv50.i269.2.3 = trunc i32 %xor.i268.2.3 to i8
  %scevgep235.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %313, i64 0, i64 0, i64 2
  store i8 %conv50.i269.2.3, i8* %scevgep235.2.3, align 1
  %335 = load i8, i8* %arrayidx56.i275.3, align 1
  %conv57.i276.2.3 = zext i8 %335 to i32
  %xor58.i277.2.3 = xor i32 %conv57.i276.2.3, 1
  %conv59.i278.2.3 = trunc i32 %xor58.i277.2.3 to i8
  %scevgep232.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %312, i64 0, i64 0, i64 2
  %336 = load i8, i8* %scevgep232.2.3, align 1
  %call64.i283.2.3 = call zeroext i8 @mult(i8 zeroext %conv59.i278.2.3, i8 zeroext %336) #3
  %scevgep239.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %314, i64 0, i64 0, i64 2
  store i8 %call64.i283.2.3, i8* %scevgep239.2.3, align 1
  %337 = load i8, i8* %arrayidx70.i289.3, align 1
  %scevgep236.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %313, i64 0, i64 0, i64 2
  %338 = load i8, i8* %scevgep236.2.3, align 1
  %call75.i294.2.3 = call zeroext i8 @mult(i8 zeroext %337, i8 zeroext %338) #3
  %scevgep243.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %315, i64 0, i64 0, i64 2
  store i8 %call75.i294.2.3, i8* %scevgep243.2.3, align 1
  %scevgep240.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %314, i64 0, i64 0, i64 2
  %339 = load i8, i8* %scevgep240.2.3, align 1
  %conv84.i303.2.3 = zext i8 %339 to i32
  %scevgep244.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %315, i64 0, i64 0, i64 2
  %340 = load i8, i8* %scevgep244.2.3, align 1
  %conv89.i308.2.3 = zext i8 %340 to i32
  %xor90.i309.2.3 = xor i32 %conv84.i303.2.3, %conv89.i308.2.3
  %conv91.i310.2.3 = trunc i32 %xor90.i309.2.3 to i8
  %scevgep247.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %316, i64 0, i64 0, i64 2
  store i8 %conv91.i310.2.3, i8* %scevgep247.2.3, align 1
  %341 = load i8, i8* %arraydecay12, align 1
  %342 = load i8, i8* %arraydecay13, align 1
  %call111.i327 = call zeroext i8 @mult(i8 zeroext %341, i8 zeroext %342) #3
  store i8 %call111.i327, i8* %arraydecay14, align 1
  %scevgep218.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 1
  %343 = load i8, i8* %scevgep218.1, align 1
  %conv126.i339.1 = zext i8 %343 to i32
  %344 = load i8, i8* %arraydecay14, align 1
  %conv129.i342.1 = zext i8 %344 to i32
  %xor130.i343.1 = xor i32 %conv129.i342.1, %conv126.i339.1
  %conv131.i344.1 = trunc i32 %xor130.i343.1 to i8
  store i8 %conv131.i344.1, i8* %arraydecay14, align 1
  %scevgep218.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 2
  %345 = load i8, i8* %scevgep218.2, align 1
  %conv126.i339.2 = zext i8 %345 to i32
  %346 = load i8, i8* %arraydecay14, align 1
  %conv129.i342.2 = zext i8 %346 to i32
  %xor130.i343.2 = xor i32 %conv129.i342.2, %conv126.i339.2
  %conv131.i344.2 = trunc i32 %xor130.i343.2 to i8
  store i8 %conv131.i344.2, i8* %arraydecay14, align 1
  %scevgep218.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 3
  %347 = load i8, i8* %scevgep218.3, align 1
  %conv126.i339.3 = zext i8 %347 to i32
  %348 = load i8, i8* %arraydecay14, align 1
  %conv129.i342.3 = zext i8 %348 to i32
  %xor130.i343.3 = xor i32 %conv129.i342.3, %conv126.i339.3
  %conv131.i344.3 = trunc i32 %xor130.i343.3 to i8
  store i8 %conv131.i344.3, i8* %arraydecay14, align 1
  %scevgep217 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 1, i64 0
  %349 = bitcast i8* %scevgep217 to [4 x [4 x i8]]*
  %arrayidx108.i324.1 = getelementptr inbounds i8, i8* %arraydecay12, i64 1
  %350 = load i8, i8* %arrayidx108.i324.1, align 1
  %arrayidx110.i326.1 = getelementptr inbounds i8, i8* %arraydecay13, i64 1
  %351 = load i8, i8* %arrayidx110.i326.1, align 1
  %call111.i327.1 = call zeroext i8 @mult(i8 zeroext %350, i8 zeroext %351) #3
  %arrayidx113.i329.1 = getelementptr inbounds i8, i8* %arraydecay14, i64 1
  store i8 %call111.i327.1, i8* %arrayidx113.i329.1, align 1
  %arrayidx128.i341.1 = getelementptr inbounds i8, i8* %arraydecay14, i64 1
  %scevgep218.1602 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %349, i64 0, i64 0, i64 0
  %352 = load i8, i8* %scevgep218.1602, align 1
  %conv126.i339.1603 = zext i8 %352 to i32
  %353 = load i8, i8* %arrayidx128.i341.1, align 1
  %conv129.i342.1604 = zext i8 %353 to i32
  %xor130.i343.1605 = xor i32 %conv129.i342.1604, %conv126.i339.1603
  %conv131.i344.1606 = trunc i32 %xor130.i343.1605 to i8
  store i8 %conv131.i344.1606, i8* %arrayidx128.i341.1, align 1
  %scevgep218.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %349, i64 0, i64 0, i64 2
  %354 = load i8, i8* %scevgep218.2.1, align 1
  %conv126.i339.2.1 = zext i8 %354 to i32
  %355 = load i8, i8* %arrayidx128.i341.1, align 1
  %conv129.i342.2.1 = zext i8 %355 to i32
  %xor130.i343.2.1 = xor i32 %conv129.i342.2.1, %conv126.i339.2.1
  %conv131.i344.2.1 = trunc i32 %xor130.i343.2.1 to i8
  store i8 %conv131.i344.2.1, i8* %arrayidx128.i341.1, align 1
  %scevgep218.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %349, i64 0, i64 0, i64 3
  %356 = load i8, i8* %scevgep218.3.1, align 1
  %conv126.i339.3.1 = zext i8 %356 to i32
  %357 = load i8, i8* %arrayidx128.i341.1, align 1
  %conv129.i342.3.1 = zext i8 %357 to i32
  %xor130.i343.3.1 = xor i32 %conv129.i342.3.1, %conv126.i339.3.1
  %conv131.i344.3.1 = trunc i32 %xor130.i343.3.1 to i8
  store i8 %conv131.i344.3.1, i8* %arrayidx128.i341.1, align 1
  %scevgep217.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %349, i64 0, i64 1, i64 0
  %358 = bitcast i8* %scevgep217.1 to [4 x [4 x i8]]*
  %arrayidx108.i324.2 = getelementptr inbounds i8, i8* %arraydecay12, i64 2
  %359 = load i8, i8* %arrayidx108.i324.2, align 1
  %arrayidx110.i326.2 = getelementptr inbounds i8, i8* %arraydecay13, i64 2
  %360 = load i8, i8* %arrayidx110.i326.2, align 1
  %call111.i327.2 = call zeroext i8 @mult(i8 zeroext %359, i8 zeroext %360) #3
  %arrayidx113.i329.2 = getelementptr inbounds i8, i8* %arraydecay14, i64 2
  store i8 %call111.i327.2, i8* %arrayidx113.i329.2, align 1
  %arrayidx128.i341.2 = getelementptr inbounds i8, i8* %arraydecay14, i64 2
  %scevgep218.2611 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %358, i64 0, i64 0, i64 0
  %361 = load i8, i8* %scevgep218.2611, align 1
  %conv126.i339.2612 = zext i8 %361 to i32
  %362 = load i8, i8* %arrayidx128.i341.2, align 1
  %conv129.i342.2613 = zext i8 %362 to i32
  %xor130.i343.2614 = xor i32 %conv129.i342.2613, %conv126.i339.2612
  %conv131.i344.2615 = trunc i32 %xor130.i343.2614 to i8
  store i8 %conv131.i344.2615, i8* %arrayidx128.i341.2, align 1
  %scevgep218.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %358, i64 0, i64 0, i64 1
  %363 = load i8, i8* %scevgep218.1.2, align 1
  %conv126.i339.1.2 = zext i8 %363 to i32
  %364 = load i8, i8* %arrayidx128.i341.2, align 1
  %conv129.i342.1.2 = zext i8 %364 to i32
  %xor130.i343.1.2 = xor i32 %conv129.i342.1.2, %conv126.i339.1.2
  %conv131.i344.1.2 = trunc i32 %xor130.i343.1.2 to i8
  store i8 %conv131.i344.1.2, i8* %arrayidx128.i341.2, align 1
  %scevgep218.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %358, i64 0, i64 0, i64 3
  %365 = load i8, i8* %scevgep218.3.2, align 1
  %conv126.i339.3.2 = zext i8 %365 to i32
  %366 = load i8, i8* %arrayidx128.i341.2, align 1
  %conv129.i342.3.2 = zext i8 %366 to i32
  %xor130.i343.3.2 = xor i32 %conv129.i342.3.2, %conv126.i339.3.2
  %conv131.i344.3.2 = trunc i32 %xor130.i343.3.2 to i8
  store i8 %conv131.i344.3.2, i8* %arrayidx128.i341.2, align 1
  %scevgep217.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %358, i64 0, i64 1, i64 0
  %367 = bitcast i8* %scevgep217.2 to [4 x [4 x i8]]*
  %arrayidx108.i324.3 = getelementptr inbounds i8, i8* %arraydecay12, i64 3
  %368 = load i8, i8* %arrayidx108.i324.3, align 1
  %arrayidx110.i326.3 = getelementptr inbounds i8, i8* %arraydecay13, i64 3
  %369 = load i8, i8* %arrayidx110.i326.3, align 1
  %call111.i327.3 = call zeroext i8 @mult(i8 zeroext %368, i8 zeroext %369) #3
  %arrayidx113.i329.3 = getelementptr inbounds i8, i8* %arraydecay14, i64 3
  store i8 %call111.i327.3, i8* %arrayidx113.i329.3, align 1
  %arrayidx128.i341.3 = getelementptr inbounds i8, i8* %arraydecay14, i64 3
  %scevgep218.3620 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %367, i64 0, i64 0, i64 0
  %370 = load i8, i8* %scevgep218.3620, align 1
  %conv126.i339.3621 = zext i8 %370 to i32
  %371 = load i8, i8* %arrayidx128.i341.3, align 1
  %conv129.i342.3622 = zext i8 %371 to i32
  %xor130.i343.3623 = xor i32 %conv129.i342.3622, %conv126.i339.3621
  %conv131.i344.3624 = trunc i32 %xor130.i343.3623 to i8
  store i8 %conv131.i344.3624, i8* %arrayidx128.i341.3, align 1
  %scevgep218.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %367, i64 0, i64 0, i64 1
  %372 = load i8, i8* %scevgep218.1.3, align 1
  %conv126.i339.1.3 = zext i8 %372 to i32
  %373 = load i8, i8* %arrayidx128.i341.3, align 1
  %conv129.i342.1.3 = zext i8 %373 to i32
  %xor130.i343.1.3 = xor i32 %conv129.i342.1.3, %conv126.i339.1.3
  %conv131.i344.1.3 = trunc i32 %xor130.i343.1.3 to i8
  store i8 %conv131.i344.1.3, i8* %arrayidx128.i341.3, align 1
  %scevgep218.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %367, i64 0, i64 0, i64 2
  %374 = load i8, i8* %scevgep218.2.3, align 1
  %conv126.i339.2.3 = zext i8 %374 to i32
  %375 = load i8, i8* %arrayidx128.i341.3, align 1
  %conv129.i342.2.3 = zext i8 %375 to i32
  %xor130.i343.2.3 = xor i32 %conv129.i342.2.3, %conv126.i339.2.3
  %conv131.i344.2.3 = trunc i32 %xor130.i343.2.3 to i8
  store i8 %conv131.i344.2.3, i8* %arrayidx128.i341.3, align 1
  %call139.i350 = call zeroext i8 @mult(i8 zeroext %call.i197, i8 zeroext %call1.i198) #3
  %conv140.i351 = zext i8 %call139.i350 to i32
  %scevgep208 = getelementptr [4 x i8], [4 x i8]* %v, i64 0, i64 0
  %376 = load i8, i8* %scevgep208, align 1
  %scevgep208.1 = getelementptr [4 x i8], [4 x i8]* %v, i64 0, i64 1
  %377 = load i8, i8* %scevgep208.1, align 1
  %conv.i.i172.i358.1 = zext i8 %377 to i32
  %conv1.i.i173.i359.1 = zext i8 %376 to i32
  %xor.i.i174.i360.1 = xor i32 %conv1.i.i173.i359.1, %conv.i.i172.i358.1
  %conv2.i.i175.i361.1 = trunc i32 %xor.i.i174.i360.1 to i8
  %scevgep208.2 = getelementptr [4 x i8], [4 x i8]* %v, i64 0, i64 2
  %378 = load i8, i8* %scevgep208.2, align 1
  %conv.i.i172.i358.2 = zext i8 %378 to i32
  %conv1.i.i173.i359.2 = zext i8 %conv2.i.i175.i361.1 to i32
  %xor.i.i174.i360.2 = xor i32 %conv1.i.i173.i359.2, %conv.i.i172.i358.2
  %conv2.i.i175.i361.2 = trunc i32 %xor.i.i174.i360.2 to i8
  %scevgep208.3 = getelementptr [4 x i8], [4 x i8]* %v, i64 0, i64 3
  %379 = load i8, i8* %scevgep208.3, align 1
  %conv.i.i172.i358.3 = zext i8 %379 to i32
  %conv1.i.i173.i359.3 = zext i8 %conv2.i.i175.i361.2 to i32
  %xor.i.i174.i360.3 = xor i32 %conv1.i.i173.i359.3, %conv.i.i172.i358.3
  %conv2.i.i175.i361.3 = trunc i32 %xor.i.i174.i360.3 to i8
  %conv142.i364 = zext i8 %conv2.i.i175.i361.3 to i32
  %cmp143.i365 = icmp eq i32 %conv140.i351, %conv142.i364
  call void @assert(i1 zeroext %cmp143.i365) #3
  %scevgep203 = getelementptr [4 x i8], [4 x i8]* %v, i64 0, i64 0
  %380 = load i8, i8* %scevgep203, align 1
  %call.i.i.i861 = call zeroext i8 @mult(i8 zeroext %380, i8 zeroext %380) #3
  %call.i3.i.i862 = call zeroext i8 @mult(i8 zeroext %call.i.i.i861, i8 zeroext %call.i.i.i861) #3
  %call.i.i5.i863 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i862, i8 zeroext %call.i3.i.i862) #3
  %call.i3.i6.i864 = call zeroext i8 @mult(i8 zeroext %call.i.i5.i863, i8 zeroext %call.i.i5.i863) #3
  %scevgep204 = getelementptr [4 x i8], [4 x i8]* %v16, i64 0, i64 0
  store i8 %call.i3.i6.i864, i8* %scevgep204, align 1
  %scevgep203.1 = getelementptr [4 x i8], [4 x i8]* %v, i64 0, i64 1
  %381 = load i8, i8* %scevgep203.1, align 1
  %call.i.i.i857 = call zeroext i8 @mult(i8 zeroext %381, i8 zeroext %381) #3
  %call.i3.i.i858 = call zeroext i8 @mult(i8 zeroext %call.i.i.i857, i8 zeroext %call.i.i.i857) #3
  %call.i.i5.i859 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i858, i8 zeroext %call.i3.i.i858) #3
  %call.i3.i6.i860 = call zeroext i8 @mult(i8 zeroext %call.i.i5.i859, i8 zeroext %call.i.i5.i859) #3
  %scevgep204.1 = getelementptr [4 x i8], [4 x i8]* %v16, i64 0, i64 1
  store i8 %call.i3.i6.i860, i8* %scevgep204.1, align 1
  %scevgep203.2 = getelementptr [4 x i8], [4 x i8]* %v, i64 0, i64 2
  %382 = load i8, i8* %scevgep203.2, align 1
  %call.i.i.i = call zeroext i8 @mult(i8 zeroext %382, i8 zeroext %382) #3
  %call.i3.i.i854 = call zeroext i8 @mult(i8 zeroext %call.i.i.i, i8 zeroext %call.i.i.i) #3
  %call.i.i5.i855 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i854, i8 zeroext %call.i3.i.i854) #3
  %call.i3.i6.i856 = call zeroext i8 @mult(i8 zeroext %call.i.i5.i855, i8 zeroext %call.i.i5.i855) #3
  %scevgep204.2 = getelementptr [4 x i8], [4 x i8]* %v16, i64 0, i64 2
  store i8 %call.i3.i6.i856, i8* %scevgep204.2, align 1
  %scevgep203.3 = getelementptr [4 x i8], [4 x i8]* %v, i64 0, i64 3
  %383 = load i8, i8* %scevgep203.3, align 1
  %call.i.i.i849 = call zeroext i8 @mult(i8 zeroext %383, i8 zeroext %383) #3
  %call.i3.i.i850 = call zeroext i8 @mult(i8 zeroext %call.i.i.i849, i8 zeroext %call.i.i.i849) #3
  %call.i.i5.i = call zeroext i8 @mult(i8 zeroext %call.i3.i.i850, i8 zeroext %call.i3.i.i850) #3
  %call.i3.i6.i = call zeroext i8 @mult(i8 zeroext %call.i.i5.i, i8 zeroext %call.i.i5.i) #3
  %scevgep204.3 = getelementptr [4 x i8], [4 x i8]* %v16, i64 0, i64 3
  store i8 %call.i3.i6.i, i8* %scevgep204.3, align 1
  %arraydecay17 = getelementptr inbounds [4 x i8], [4 x i8]* %v16, i64 0, i64 0
  %arraydecay18 = getelementptr inbounds [4 x i8], [4 x i8]* %wr, i64 0, i64 0
  %arraydecay19 = getelementptr inbounds [4 x i8], [4 x i8]* %m, i64 0, i64 0
  %call.i413 = call zeroext i8 (...) @rand() #3
  %call1.i414 = call zeroext i8 (...) @rand() #3
  %conv.i415 = zext i8 %call.i413 to i32
  %scevgep199 = getelementptr [4 x i8], [4 x i8]* %v16, i64 0, i64 0
  %384 = load i8, i8* %scevgep199, align 1
  %scevgep199.1 = getelementptr [4 x i8], [4 x i8]* %v16, i64 0, i64 1
  %385 = load i8, i8* %scevgep199.1, align 1
  %conv.i.i.i421.1 = zext i8 %385 to i32
  %conv1.i.i.i422.1 = zext i8 %384 to i32
  %xor.i.i.i423.1 = xor i32 %conv1.i.i.i422.1, %conv.i.i.i421.1
  %conv2.i.i.i424.1 = trunc i32 %xor.i.i.i423.1 to i8
  %scevgep199.2 = getelementptr [4 x i8], [4 x i8]* %v16, i64 0, i64 2
  %386 = load i8, i8* %scevgep199.2, align 1
  %conv.i.i.i421.2 = zext i8 %386 to i32
  %conv1.i.i.i422.2 = zext i8 %conv2.i.i.i424.1 to i32
  %xor.i.i.i423.2 = xor i32 %conv1.i.i.i422.2, %conv.i.i.i421.2
  %conv2.i.i.i424.2 = trunc i32 %xor.i.i.i423.2 to i8
  %scevgep199.3 = getelementptr [4 x i8], [4 x i8]* %v16, i64 0, i64 3
  %387 = load i8, i8* %scevgep199.3, align 1
  %conv.i.i.i421.3 = zext i8 %387 to i32
  %conv1.i.i.i422.3 = zext i8 %conv2.i.i.i424.2 to i32
  %xor.i.i.i423.3 = xor i32 %conv1.i.i.i422.3, %conv.i.i.i421.3
  %conv2.i.i.i424.3 = trunc i32 %xor.i.i.i423.3 to i8
  %conv3.i427 = zext i8 %conv2.i.i.i424.3 to i32
  %cmp.i428 = icmp eq i32 %conv.i415, %conv3.i427
  call void @assume(i1 zeroext %cmp.i428) #3
  %conv5.i429 = zext i8 %call1.i414 to i32
  %scevgep195 = getelementptr [4 x i8], [4 x i8]* %wr, i64 0, i64 0
  %388 = load i8, i8* %scevgep195, align 1
  %scevgep195.1 = getelementptr [4 x i8], [4 x i8]* %wr, i64 0, i64 1
  %389 = load i8, i8* %scevgep195.1, align 1
  %conv.i.i155.i436.1 = zext i8 %389 to i32
  %conv1.i.i156.i437.1 = zext i8 %388 to i32
  %xor.i.i157.i438.1 = xor i32 %conv1.i.i156.i437.1, %conv.i.i155.i436.1
  %conv2.i.i158.i439.1 = trunc i32 %xor.i.i157.i438.1 to i8
  %scevgep195.2 = getelementptr [4 x i8], [4 x i8]* %wr, i64 0, i64 2
  %390 = load i8, i8* %scevgep195.2, align 1
  %conv.i.i155.i436.2 = zext i8 %390 to i32
  %conv1.i.i156.i437.2 = zext i8 %conv2.i.i158.i439.1 to i32
  %xor.i.i157.i438.2 = xor i32 %conv1.i.i156.i437.2, %conv.i.i155.i436.2
  %conv2.i.i158.i439.2 = trunc i32 %xor.i.i157.i438.2 to i8
  %scevgep195.3 = getelementptr [4 x i8], [4 x i8]* %wr, i64 0, i64 3
  %391 = load i8, i8* %scevgep195.3, align 1
  %conv.i.i155.i436.3 = zext i8 %391 to i32
  %conv1.i.i156.i437.3 = zext i8 %conv2.i.i158.i439.2 to i32
  %xor.i.i157.i438.3 = xor i32 %conv1.i.i156.i437.3, %conv.i.i155.i436.3
  %conv2.i.i158.i439.3 = trunc i32 %xor.i.i157.i438.3 to i8
  %conv7.i442 = zext i8 %conv2.i.i158.i439.3 to i32
  %cmp8.i443 = icmp eq i32 %conv5.i429, %conv7.i442
  call void @assume(i1 zeroext %cmp8.i443) #3
  %call16.i451 = call zeroext i8 (...) @rand() #3
  %scevgep185 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i451, i8* %scevgep185, align 1
  %scevgep186 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %392 = load i8, i8* %scevgep186, align 1
  %scevgep187 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %392, i8* %scevgep187, align 1
  %call16.i451.1822 = call zeroext i8 (...) @rand() #3
  %scevgep185.1823 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  store i8 %call16.i451.1822, i8* %scevgep185.1823, align 1
  %scevgep186.1824 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %393 = load i8, i8* %scevgep186.1824, align 1
  %scevgep187.1825 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 2, i64 0
  store i8 %393, i8* %scevgep187.1825, align 1
  %call16.i451.2827 = call zeroext i8 (...) @rand() #3
  %scevgep185.2828 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  store i8 %call16.i451.2827, i8* %scevgep185.2828, align 1
  %scevgep186.2829 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %394 = load i8, i8* %scevgep186.2829, align 1
  %scevgep187.2830 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 3, i64 0
  store i8 %394, i8* %scevgep187.2830, align 1
  %scevgep182 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 1
  %395 = bitcast i8* %scevgep182 to [4 x [4 x i8]]*
  %call16.i451.1 = call zeroext i8 (...) @rand() #3
  %scevgep185.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %395, i64 0, i64 0, i64 1
  store i8 %call16.i451.1, i8* %scevgep185.1, align 1
  %scevgep186.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %395, i64 0, i64 0, i64 1
  %396 = load i8, i8* %scevgep186.1, align 1
  %scevgep187.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %395, i64 0, i64 1, i64 0
  store i8 %396, i8* %scevgep187.1, align 1
  %call16.i451.1.1 = call zeroext i8 (...) @rand() #3
  %scevgep185.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %395, i64 0, i64 0, i64 2
  store i8 %call16.i451.1.1, i8* %scevgep185.1.1, align 1
  %scevgep186.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %395, i64 0, i64 0, i64 2
  %397 = load i8, i8* %scevgep186.1.1, align 1
  %scevgep187.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %395, i64 0, i64 2, i64 0
  store i8 %397, i8* %scevgep187.1.1, align 1
  %scevgep182.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %395, i64 0, i64 1, i64 1
  %398 = bitcast i8* %scevgep182.1 to [4 x [4 x i8]]*
  %call16.i451.2 = call zeroext i8 (...) @rand() #3
  %scevgep185.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %398, i64 0, i64 0, i64 1
  store i8 %call16.i451.2, i8* %scevgep185.2, align 1
  %scevgep186.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %398, i64 0, i64 0, i64 1
  %399 = load i8, i8* %scevgep186.2, align 1
  %scevgep187.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %398, i64 0, i64 1, i64 0
  store i8 %399, i8* %scevgep187.2, align 1
  %scevgep158.1 = getelementptr [4 x i8], [4 x i8]* %wr, i64 0, i64 1
  %400 = load i8, i8* %scevgep158.1, align 1
  %conv44.i478.1 = zext i8 %400 to i32
  %scevgep161.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %401 = load i8, i8* %scevgep161.1, align 1
  %conv49.i483.1 = zext i8 %401 to i32
  %xor.i484.1 = xor i32 %conv44.i478.1, %conv49.i483.1
  %conv50.i485.1 = trunc i32 %xor.i484.1 to i8
  %scevgep165.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i485.1, i8* %scevgep165.1, align 1
  %402 = load i8, i8* %arraydecay17, align 1
  %conv57.i492.1 = zext i8 %402 to i32
  %xor58.i493.1 = xor i32 %conv57.i492.1, 1
  %conv59.i494.1 = trunc i32 %xor58.i493.1 to i8
  %scevgep162.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %403 = load i8, i8* %scevgep162.1, align 1
  %call64.i499.1 = call zeroext i8 @mult(i8 zeroext %conv59.i494.1, i8 zeroext %403) #3
  %scevgep169.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i499.1, i8* %scevgep169.1, align 1
  %404 = load i8, i8* %arraydecay17, align 1
  %scevgep166.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 1
  %405 = load i8, i8* %scevgep166.1, align 1
  %call75.i510.1 = call zeroext i8 @mult(i8 zeroext %404, i8 zeroext %405) #3
  %scevgep173.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i510.1, i8* %scevgep173.1, align 1
  %scevgep170.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %406 = load i8, i8* %scevgep170.1, align 1
  %conv84.i519.1 = zext i8 %406 to i32
  %scevgep174.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %407 = load i8, i8* %scevgep174.1, align 1
  %conv89.i524.1 = zext i8 %407 to i32
  %xor90.i525.1 = xor i32 %conv84.i519.1, %conv89.i524.1
  %conv91.i526.1 = trunc i32 %xor90.i525.1 to i8
  %scevgep177.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i526.1, i8* %scevgep177.1, align 1
  %scevgep158.2 = getelementptr [4 x i8], [4 x i8]* %wr, i64 0, i64 2
  %408 = load i8, i8* %scevgep158.2, align 1
  %conv44.i478.2 = zext i8 %408 to i32
  %scevgep161.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %409 = load i8, i8* %scevgep161.2, align 1
  %conv49.i483.2 = zext i8 %409 to i32
  %xor.i484.2 = xor i32 %conv44.i478.2, %conv49.i483.2
  %conv50.i485.2 = trunc i32 %xor.i484.2 to i8
  %scevgep165.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 2
  store i8 %conv50.i485.2, i8* %scevgep165.2, align 1
  %410 = load i8, i8* %arraydecay17, align 1
  %conv57.i492.2 = zext i8 %410 to i32
  %xor58.i493.2 = xor i32 %conv57.i492.2, 1
  %conv59.i494.2 = trunc i32 %xor58.i493.2 to i8
  %scevgep162.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %411 = load i8, i8* %scevgep162.2, align 1
  %call64.i499.2 = call zeroext i8 @mult(i8 zeroext %conv59.i494.2, i8 zeroext %411) #3
  %scevgep169.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 2
  store i8 %call64.i499.2, i8* %scevgep169.2, align 1
  %412 = load i8, i8* %arraydecay17, align 1
  %scevgep166.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 2
  %413 = load i8, i8* %scevgep166.2, align 1
  %call75.i510.2 = call zeroext i8 @mult(i8 zeroext %412, i8 zeroext %413) #3
  %scevgep173.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 2
  store i8 %call75.i510.2, i8* %scevgep173.2, align 1
  %scevgep170.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 2
  %414 = load i8, i8* %scevgep170.2, align 1
  %conv84.i519.2 = zext i8 %414 to i32
  %scevgep174.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 2
  %415 = load i8, i8* %scevgep174.2, align 1
  %conv89.i524.2 = zext i8 %415 to i32
  %xor90.i525.2 = xor i32 %conv84.i519.2, %conv89.i524.2
  %conv91.i526.2 = trunc i32 %xor90.i525.2 to i8
  %scevgep177.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 2
  store i8 %conv91.i526.2, i8* %scevgep177.2, align 1
  %scevgep158.3 = getelementptr [4 x i8], [4 x i8]* %wr, i64 0, i64 3
  %416 = load i8, i8* %scevgep158.3, align 1
  %conv44.i478.3 = zext i8 %416 to i32
  %scevgep161.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %417 = load i8, i8* %scevgep161.3, align 1
  %conv49.i483.3 = zext i8 %417 to i32
  %xor.i484.3 = xor i32 %conv44.i478.3, %conv49.i483.3
  %conv50.i485.3 = trunc i32 %xor.i484.3 to i8
  %scevgep165.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 3
  store i8 %conv50.i485.3, i8* %scevgep165.3, align 1
  %418 = load i8, i8* %arraydecay17, align 1
  %conv57.i492.3 = zext i8 %418 to i32
  %xor58.i493.3 = xor i32 %conv57.i492.3, 1
  %conv59.i494.3 = trunc i32 %xor58.i493.3 to i8
  %scevgep162.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %419 = load i8, i8* %scevgep162.3, align 1
  %call64.i499.3 = call zeroext i8 @mult(i8 zeroext %conv59.i494.3, i8 zeroext %419) #3
  %scevgep169.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 3
  store i8 %call64.i499.3, i8* %scevgep169.3, align 1
  %420 = load i8, i8* %arraydecay17, align 1
  %scevgep166.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 3
  %421 = load i8, i8* %scevgep166.3, align 1
  %call75.i510.3 = call zeroext i8 @mult(i8 zeroext %420, i8 zeroext %421) #3
  %scevgep173.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 3
  store i8 %call75.i510.3, i8* %scevgep173.3, align 1
  %scevgep170.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 3
  %422 = load i8, i8* %scevgep170.3, align 1
  %conv84.i519.3 = zext i8 %422 to i32
  %scevgep174.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 3
  %423 = load i8, i8* %scevgep174.3, align 1
  %conv89.i524.3 = zext i8 %423 to i32
  %xor90.i525.3 = xor i32 %conv84.i519.3, %conv89.i524.3
  %conv91.i526.3 = trunc i32 %xor90.i525.3 to i8
  %scevgep177.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 3
  store i8 %conv91.i526.3, i8* %scevgep177.3, align 1
  %scevgep160 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  %424 = bitcast i8* %scevgep160 to [4 x [4 x i8]]*
  %scevgep164 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 1, i64 0
  %425 = bitcast i8* %scevgep164 to [4 x [4 x i8]]*
  %scevgep168 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %426 = bitcast i8* %scevgep168 to [4 x [4 x i8]]*
  %scevgep172 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %427 = bitcast i8* %scevgep172 to [4 x [4 x i8]]*
  %scevgep176 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 1, i64 0
  %428 = bitcast i8* %scevgep176 to [4 x [4 x i8]]*
  %arrayidx56.i491.1 = getelementptr inbounds i8, i8* %arraydecay17, i64 1
  %arrayidx70.i505.1 = getelementptr inbounds i8, i8* %arraydecay17, i64 1
  %scevgep158.1521 = getelementptr [4 x i8], [4 x i8]* %wr, i64 0, i64 0
  %429 = load i8, i8* %scevgep158.1521, align 1
  %conv44.i478.1522 = zext i8 %429 to i32
  %scevgep161.1523 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %424, i64 0, i64 0, i64 0
  %430 = load i8, i8* %scevgep161.1523, align 1
  %conv49.i483.1524 = zext i8 %430 to i32
  %xor.i484.1525 = xor i32 %conv44.i478.1522, %conv49.i483.1524
  %conv50.i485.1526 = trunc i32 %xor.i484.1525 to i8
  %scevgep165.1527 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %425, i64 0, i64 0, i64 0
  store i8 %conv50.i485.1526, i8* %scevgep165.1527, align 1
  %431 = load i8, i8* %arrayidx56.i491.1, align 1
  %conv57.i492.1528 = zext i8 %431 to i32
  %xor58.i493.1529 = xor i32 %conv57.i492.1528, 1
  %conv59.i494.1530 = trunc i32 %xor58.i493.1529 to i8
  %scevgep162.1531 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %424, i64 0, i64 0, i64 0
  %432 = load i8, i8* %scevgep162.1531, align 1
  %call64.i499.1532 = call zeroext i8 @mult(i8 zeroext %conv59.i494.1530, i8 zeroext %432) #3
  %scevgep169.1533 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %426, i64 0, i64 0, i64 0
  store i8 %call64.i499.1532, i8* %scevgep169.1533, align 1
  %433 = load i8, i8* %arrayidx70.i505.1, align 1
  %scevgep166.1534 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %425, i64 0, i64 0, i64 0
  %434 = load i8, i8* %scevgep166.1534, align 1
  %call75.i510.1535 = call zeroext i8 @mult(i8 zeroext %433, i8 zeroext %434) #3
  %scevgep173.1536 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %427, i64 0, i64 0, i64 0
  store i8 %call75.i510.1535, i8* %scevgep173.1536, align 1
  %scevgep170.1537 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %426, i64 0, i64 0, i64 0
  %435 = load i8, i8* %scevgep170.1537, align 1
  %conv84.i519.1538 = zext i8 %435 to i32
  %scevgep174.1539 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %427, i64 0, i64 0, i64 0
  %436 = load i8, i8* %scevgep174.1539, align 1
  %conv89.i524.1540 = zext i8 %436 to i32
  %xor90.i525.1541 = xor i32 %conv84.i519.1538, %conv89.i524.1540
  %conv91.i526.1542 = trunc i32 %xor90.i525.1541 to i8
  %scevgep177.1543 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %428, i64 0, i64 0, i64 0
  store i8 %conv91.i526.1542, i8* %scevgep177.1543, align 1
  %scevgep158.2.1 = getelementptr [4 x i8], [4 x i8]* %wr, i64 0, i64 2
  %437 = load i8, i8* %scevgep158.2.1, align 1
  %conv44.i478.2.1 = zext i8 %437 to i32
  %scevgep161.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %424, i64 0, i64 0, i64 2
  %438 = load i8, i8* %scevgep161.2.1, align 1
  %conv49.i483.2.1 = zext i8 %438 to i32
  %xor.i484.2.1 = xor i32 %conv44.i478.2.1, %conv49.i483.2.1
  %conv50.i485.2.1 = trunc i32 %xor.i484.2.1 to i8
  %scevgep165.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %425, i64 0, i64 0, i64 2
  store i8 %conv50.i485.2.1, i8* %scevgep165.2.1, align 1
  %439 = load i8, i8* %arrayidx56.i491.1, align 1
  %conv57.i492.2.1 = zext i8 %439 to i32
  %xor58.i493.2.1 = xor i32 %conv57.i492.2.1, 1
  %conv59.i494.2.1 = trunc i32 %xor58.i493.2.1 to i8
  %scevgep162.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %424, i64 0, i64 0, i64 2
  %440 = load i8, i8* %scevgep162.2.1, align 1
  %call64.i499.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i494.2.1, i8 zeroext %440) #3
  %scevgep169.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %426, i64 0, i64 0, i64 2
  store i8 %call64.i499.2.1, i8* %scevgep169.2.1, align 1
  %441 = load i8, i8* %arrayidx70.i505.1, align 1
  %scevgep166.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %425, i64 0, i64 0, i64 2
  %442 = load i8, i8* %scevgep166.2.1, align 1
  %call75.i510.2.1 = call zeroext i8 @mult(i8 zeroext %441, i8 zeroext %442) #3
  %scevgep173.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %427, i64 0, i64 0, i64 2
  store i8 %call75.i510.2.1, i8* %scevgep173.2.1, align 1
  %scevgep170.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %426, i64 0, i64 0, i64 2
  %443 = load i8, i8* %scevgep170.2.1, align 1
  %conv84.i519.2.1 = zext i8 %443 to i32
  %scevgep174.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %427, i64 0, i64 0, i64 2
  %444 = load i8, i8* %scevgep174.2.1, align 1
  %conv89.i524.2.1 = zext i8 %444 to i32
  %xor90.i525.2.1 = xor i32 %conv84.i519.2.1, %conv89.i524.2.1
  %conv91.i526.2.1 = trunc i32 %xor90.i525.2.1 to i8
  %scevgep177.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %428, i64 0, i64 0, i64 2
  store i8 %conv91.i526.2.1, i8* %scevgep177.2.1, align 1
  %scevgep158.3.1 = getelementptr [4 x i8], [4 x i8]* %wr, i64 0, i64 3
  %445 = load i8, i8* %scevgep158.3.1, align 1
  %conv44.i478.3.1 = zext i8 %445 to i32
  %scevgep161.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %424, i64 0, i64 0, i64 3
  %446 = load i8, i8* %scevgep161.3.1, align 1
  %conv49.i483.3.1 = zext i8 %446 to i32
  %xor.i484.3.1 = xor i32 %conv44.i478.3.1, %conv49.i483.3.1
  %conv50.i485.3.1 = trunc i32 %xor.i484.3.1 to i8
  %scevgep165.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %425, i64 0, i64 0, i64 3
  store i8 %conv50.i485.3.1, i8* %scevgep165.3.1, align 1
  %447 = load i8, i8* %arrayidx56.i491.1, align 1
  %conv57.i492.3.1 = zext i8 %447 to i32
  %xor58.i493.3.1 = xor i32 %conv57.i492.3.1, 1
  %conv59.i494.3.1 = trunc i32 %xor58.i493.3.1 to i8
  %scevgep162.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %424, i64 0, i64 0, i64 3
  %448 = load i8, i8* %scevgep162.3.1, align 1
  %call64.i499.3.1 = call zeroext i8 @mult(i8 zeroext %conv59.i494.3.1, i8 zeroext %448) #3
  %scevgep169.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %426, i64 0, i64 0, i64 3
  store i8 %call64.i499.3.1, i8* %scevgep169.3.1, align 1
  %449 = load i8, i8* %arrayidx70.i505.1, align 1
  %scevgep166.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %425, i64 0, i64 0, i64 3
  %450 = load i8, i8* %scevgep166.3.1, align 1
  %call75.i510.3.1 = call zeroext i8 @mult(i8 zeroext %449, i8 zeroext %450) #3
  %scevgep173.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %427, i64 0, i64 0, i64 3
  store i8 %call75.i510.3.1, i8* %scevgep173.3.1, align 1
  %scevgep170.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %426, i64 0, i64 0, i64 3
  %451 = load i8, i8* %scevgep170.3.1, align 1
  %conv84.i519.3.1 = zext i8 %451 to i32
  %scevgep174.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %427, i64 0, i64 0, i64 3
  %452 = load i8, i8* %scevgep174.3.1, align 1
  %conv89.i524.3.1 = zext i8 %452 to i32
  %xor90.i525.3.1 = xor i32 %conv84.i519.3.1, %conv89.i524.3.1
  %conv91.i526.3.1 = trunc i32 %xor90.i525.3.1 to i8
  %scevgep177.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %428, i64 0, i64 0, i64 3
  store i8 %conv91.i526.3.1, i8* %scevgep177.3.1, align 1
  %scevgep160.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %424, i64 0, i64 1, i64 0
  %453 = bitcast i8* %scevgep160.1 to [4 x [4 x i8]]*
  %scevgep164.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %425, i64 0, i64 1, i64 0
  %454 = bitcast i8* %scevgep164.1 to [4 x [4 x i8]]*
  %scevgep168.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %426, i64 0, i64 1, i64 0
  %455 = bitcast i8* %scevgep168.1 to [4 x [4 x i8]]*
  %scevgep172.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %427, i64 0, i64 1, i64 0
  %456 = bitcast i8* %scevgep172.1 to [4 x [4 x i8]]*
  %scevgep176.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %428, i64 0, i64 1, i64 0
  %457 = bitcast i8* %scevgep176.1 to [4 x [4 x i8]]*
  %arrayidx56.i491.2 = getelementptr inbounds i8, i8* %arraydecay17, i64 2
  %arrayidx70.i505.2 = getelementptr inbounds i8, i8* %arraydecay17, i64 2
  %scevgep158.2548 = getelementptr [4 x i8], [4 x i8]* %wr, i64 0, i64 0
  %458 = load i8, i8* %scevgep158.2548, align 1
  %conv44.i478.2549 = zext i8 %458 to i32
  %scevgep161.2550 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %453, i64 0, i64 0, i64 0
  %459 = load i8, i8* %scevgep161.2550, align 1
  %conv49.i483.2551 = zext i8 %459 to i32
  %xor.i484.2552 = xor i32 %conv44.i478.2549, %conv49.i483.2551
  %conv50.i485.2553 = trunc i32 %xor.i484.2552 to i8
  %scevgep165.2554 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %454, i64 0, i64 0, i64 0
  store i8 %conv50.i485.2553, i8* %scevgep165.2554, align 1
  %460 = load i8, i8* %arrayidx56.i491.2, align 1
  %conv57.i492.2555 = zext i8 %460 to i32
  %xor58.i493.2556 = xor i32 %conv57.i492.2555, 1
  %conv59.i494.2557 = trunc i32 %xor58.i493.2556 to i8
  %scevgep162.2558 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %453, i64 0, i64 0, i64 0
  %461 = load i8, i8* %scevgep162.2558, align 1
  %call64.i499.2559 = call zeroext i8 @mult(i8 zeroext %conv59.i494.2557, i8 zeroext %461) #3
  %scevgep169.2560 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %455, i64 0, i64 0, i64 0
  store i8 %call64.i499.2559, i8* %scevgep169.2560, align 1
  %462 = load i8, i8* %arrayidx70.i505.2, align 1
  %scevgep166.2561 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %454, i64 0, i64 0, i64 0
  %463 = load i8, i8* %scevgep166.2561, align 1
  %call75.i510.2562 = call zeroext i8 @mult(i8 zeroext %462, i8 zeroext %463) #3
  %scevgep173.2563 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %456, i64 0, i64 0, i64 0
  store i8 %call75.i510.2562, i8* %scevgep173.2563, align 1
  %scevgep170.2564 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %455, i64 0, i64 0, i64 0
  %464 = load i8, i8* %scevgep170.2564, align 1
  %conv84.i519.2565 = zext i8 %464 to i32
  %scevgep174.2566 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %456, i64 0, i64 0, i64 0
  %465 = load i8, i8* %scevgep174.2566, align 1
  %conv89.i524.2567 = zext i8 %465 to i32
  %xor90.i525.2568 = xor i32 %conv84.i519.2565, %conv89.i524.2567
  %conv91.i526.2569 = trunc i32 %xor90.i525.2568 to i8
  %scevgep177.2570 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %457, i64 0, i64 0, i64 0
  store i8 %conv91.i526.2569, i8* %scevgep177.2570, align 1
  %scevgep158.1.2 = getelementptr [4 x i8], [4 x i8]* %wr, i64 0, i64 1
  %466 = load i8, i8* %scevgep158.1.2, align 1
  %conv44.i478.1.2 = zext i8 %466 to i32
  %scevgep161.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %453, i64 0, i64 0, i64 1
  %467 = load i8, i8* %scevgep161.1.2, align 1
  %conv49.i483.1.2 = zext i8 %467 to i32
  %xor.i484.1.2 = xor i32 %conv44.i478.1.2, %conv49.i483.1.2
  %conv50.i485.1.2 = trunc i32 %xor.i484.1.2 to i8
  %scevgep165.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %454, i64 0, i64 0, i64 1
  store i8 %conv50.i485.1.2, i8* %scevgep165.1.2, align 1
  %468 = load i8, i8* %arrayidx56.i491.2, align 1
  %conv57.i492.1.2 = zext i8 %468 to i32
  %xor58.i493.1.2 = xor i32 %conv57.i492.1.2, 1
  %conv59.i494.1.2 = trunc i32 %xor58.i493.1.2 to i8
  %scevgep162.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %453, i64 0, i64 0, i64 1
  %469 = load i8, i8* %scevgep162.1.2, align 1
  %call64.i499.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i494.1.2, i8 zeroext %469) #3
  %scevgep169.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %455, i64 0, i64 0, i64 1
  store i8 %call64.i499.1.2, i8* %scevgep169.1.2, align 1
  %470 = load i8, i8* %arrayidx70.i505.2, align 1
  %scevgep166.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %454, i64 0, i64 0, i64 1
  %471 = load i8, i8* %scevgep166.1.2, align 1
  %call75.i510.1.2 = call zeroext i8 @mult(i8 zeroext %470, i8 zeroext %471) #3
  %scevgep173.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %456, i64 0, i64 0, i64 1
  store i8 %call75.i510.1.2, i8* %scevgep173.1.2, align 1
  %scevgep170.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %455, i64 0, i64 0, i64 1
  %472 = load i8, i8* %scevgep170.1.2, align 1
  %conv84.i519.1.2 = zext i8 %472 to i32
  %scevgep174.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %456, i64 0, i64 0, i64 1
  %473 = load i8, i8* %scevgep174.1.2, align 1
  %conv89.i524.1.2 = zext i8 %473 to i32
  %xor90.i525.1.2 = xor i32 %conv84.i519.1.2, %conv89.i524.1.2
  %conv91.i526.1.2 = trunc i32 %xor90.i525.1.2 to i8
  %scevgep177.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %457, i64 0, i64 0, i64 1
  store i8 %conv91.i526.1.2, i8* %scevgep177.1.2, align 1
  %scevgep158.3.2 = getelementptr [4 x i8], [4 x i8]* %wr, i64 0, i64 3
  %474 = load i8, i8* %scevgep158.3.2, align 1
  %conv44.i478.3.2 = zext i8 %474 to i32
  %scevgep161.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %453, i64 0, i64 0, i64 3
  %475 = load i8, i8* %scevgep161.3.2, align 1
  %conv49.i483.3.2 = zext i8 %475 to i32
  %xor.i484.3.2 = xor i32 %conv44.i478.3.2, %conv49.i483.3.2
  %conv50.i485.3.2 = trunc i32 %xor.i484.3.2 to i8
  %scevgep165.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %454, i64 0, i64 0, i64 3
  store i8 %conv50.i485.3.2, i8* %scevgep165.3.2, align 1
  %476 = load i8, i8* %arrayidx56.i491.2, align 1
  %conv57.i492.3.2 = zext i8 %476 to i32
  %xor58.i493.3.2 = xor i32 %conv57.i492.3.2, 1
  %conv59.i494.3.2 = trunc i32 %xor58.i493.3.2 to i8
  %scevgep162.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %453, i64 0, i64 0, i64 3
  %477 = load i8, i8* %scevgep162.3.2, align 1
  %call64.i499.3.2 = call zeroext i8 @mult(i8 zeroext %conv59.i494.3.2, i8 zeroext %477) #3
  %scevgep169.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %455, i64 0, i64 0, i64 3
  store i8 %call64.i499.3.2, i8* %scevgep169.3.2, align 1
  %478 = load i8, i8* %arrayidx70.i505.2, align 1
  %scevgep166.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %454, i64 0, i64 0, i64 3
  %479 = load i8, i8* %scevgep166.3.2, align 1
  %call75.i510.3.2 = call zeroext i8 @mult(i8 zeroext %478, i8 zeroext %479) #3
  %scevgep173.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %456, i64 0, i64 0, i64 3
  store i8 %call75.i510.3.2, i8* %scevgep173.3.2, align 1
  %scevgep170.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %455, i64 0, i64 0, i64 3
  %480 = load i8, i8* %scevgep170.3.2, align 1
  %conv84.i519.3.2 = zext i8 %480 to i32
  %scevgep174.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %456, i64 0, i64 0, i64 3
  %481 = load i8, i8* %scevgep174.3.2, align 1
  %conv89.i524.3.2 = zext i8 %481 to i32
  %xor90.i525.3.2 = xor i32 %conv84.i519.3.2, %conv89.i524.3.2
  %conv91.i526.3.2 = trunc i32 %xor90.i525.3.2 to i8
  %scevgep177.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %457, i64 0, i64 0, i64 3
  store i8 %conv91.i526.3.2, i8* %scevgep177.3.2, align 1
  %scevgep160.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %453, i64 0, i64 1, i64 0
  %482 = bitcast i8* %scevgep160.2 to [4 x [4 x i8]]*
  %scevgep164.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %454, i64 0, i64 1, i64 0
  %483 = bitcast i8* %scevgep164.2 to [4 x [4 x i8]]*
  %scevgep168.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %455, i64 0, i64 1, i64 0
  %484 = bitcast i8* %scevgep168.2 to [4 x [4 x i8]]*
  %scevgep172.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %456, i64 0, i64 1, i64 0
  %485 = bitcast i8* %scevgep172.2 to [4 x [4 x i8]]*
  %scevgep176.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %457, i64 0, i64 1, i64 0
  %486 = bitcast i8* %scevgep176.2 to [4 x [4 x i8]]*
  %arrayidx56.i491.3 = getelementptr inbounds i8, i8* %arraydecay17, i64 3
  %arrayidx70.i505.3 = getelementptr inbounds i8, i8* %arraydecay17, i64 3
  %scevgep158.3575 = getelementptr [4 x i8], [4 x i8]* %wr, i64 0, i64 0
  %487 = load i8, i8* %scevgep158.3575, align 1
  %conv44.i478.3576 = zext i8 %487 to i32
  %scevgep161.3577 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %482, i64 0, i64 0, i64 0
  %488 = load i8, i8* %scevgep161.3577, align 1
  %conv49.i483.3578 = zext i8 %488 to i32
  %xor.i484.3579 = xor i32 %conv44.i478.3576, %conv49.i483.3578
  %conv50.i485.3580 = trunc i32 %xor.i484.3579 to i8
  %scevgep165.3581 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %483, i64 0, i64 0, i64 0
  store i8 %conv50.i485.3580, i8* %scevgep165.3581, align 1
  %489 = load i8, i8* %arrayidx56.i491.3, align 1
  %conv57.i492.3582 = zext i8 %489 to i32
  %xor58.i493.3583 = xor i32 %conv57.i492.3582, 1
  %conv59.i494.3584 = trunc i32 %xor58.i493.3583 to i8
  %scevgep162.3585 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %482, i64 0, i64 0, i64 0
  %490 = load i8, i8* %scevgep162.3585, align 1
  %call64.i499.3586 = call zeroext i8 @mult(i8 zeroext %conv59.i494.3584, i8 zeroext %490) #3
  %scevgep169.3587 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %484, i64 0, i64 0, i64 0
  store i8 %call64.i499.3586, i8* %scevgep169.3587, align 1
  %491 = load i8, i8* %arrayidx70.i505.3, align 1
  %scevgep166.3588 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %483, i64 0, i64 0, i64 0
  %492 = load i8, i8* %scevgep166.3588, align 1
  %call75.i510.3589 = call zeroext i8 @mult(i8 zeroext %491, i8 zeroext %492) #3
  %scevgep173.3590 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %485, i64 0, i64 0, i64 0
  store i8 %call75.i510.3589, i8* %scevgep173.3590, align 1
  %scevgep170.3591 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %484, i64 0, i64 0, i64 0
  %493 = load i8, i8* %scevgep170.3591, align 1
  %conv84.i519.3592 = zext i8 %493 to i32
  %scevgep174.3593 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %485, i64 0, i64 0, i64 0
  %494 = load i8, i8* %scevgep174.3593, align 1
  %conv89.i524.3594 = zext i8 %494 to i32
  %xor90.i525.3595 = xor i32 %conv84.i519.3592, %conv89.i524.3594
  %conv91.i526.3596 = trunc i32 %xor90.i525.3595 to i8
  %scevgep177.3597 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %486, i64 0, i64 0, i64 0
  store i8 %conv91.i526.3596, i8* %scevgep177.3597, align 1
  %scevgep158.1.3 = getelementptr [4 x i8], [4 x i8]* %wr, i64 0, i64 1
  %495 = load i8, i8* %scevgep158.1.3, align 1
  %conv44.i478.1.3 = zext i8 %495 to i32
  %scevgep161.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %482, i64 0, i64 0, i64 1
  %496 = load i8, i8* %scevgep161.1.3, align 1
  %conv49.i483.1.3 = zext i8 %496 to i32
  %xor.i484.1.3 = xor i32 %conv44.i478.1.3, %conv49.i483.1.3
  %conv50.i485.1.3 = trunc i32 %xor.i484.1.3 to i8
  %scevgep165.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %483, i64 0, i64 0, i64 1
  store i8 %conv50.i485.1.3, i8* %scevgep165.1.3, align 1
  %497 = load i8, i8* %arrayidx56.i491.3, align 1
  %conv57.i492.1.3 = zext i8 %497 to i32
  %xor58.i493.1.3 = xor i32 %conv57.i492.1.3, 1
  %conv59.i494.1.3 = trunc i32 %xor58.i493.1.3 to i8
  %scevgep162.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %482, i64 0, i64 0, i64 1
  %498 = load i8, i8* %scevgep162.1.3, align 1
  %call64.i499.1.3 = call zeroext i8 @mult(i8 zeroext %conv59.i494.1.3, i8 zeroext %498) #3
  %scevgep169.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %484, i64 0, i64 0, i64 1
  store i8 %call64.i499.1.3, i8* %scevgep169.1.3, align 1
  %499 = load i8, i8* %arrayidx70.i505.3, align 1
  %scevgep166.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %483, i64 0, i64 0, i64 1
  %500 = load i8, i8* %scevgep166.1.3, align 1
  %call75.i510.1.3 = call zeroext i8 @mult(i8 zeroext %499, i8 zeroext %500) #3
  %scevgep173.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %485, i64 0, i64 0, i64 1
  store i8 %call75.i510.1.3, i8* %scevgep173.1.3, align 1
  %scevgep170.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %484, i64 0, i64 0, i64 1
  %501 = load i8, i8* %scevgep170.1.3, align 1
  %conv84.i519.1.3 = zext i8 %501 to i32
  %scevgep174.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %485, i64 0, i64 0, i64 1
  %502 = load i8, i8* %scevgep174.1.3, align 1
  %conv89.i524.1.3 = zext i8 %502 to i32
  %xor90.i525.1.3 = xor i32 %conv84.i519.1.3, %conv89.i524.1.3
  %conv91.i526.1.3 = trunc i32 %xor90.i525.1.3 to i8
  %scevgep177.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %486, i64 0, i64 0, i64 1
  store i8 %conv91.i526.1.3, i8* %scevgep177.1.3, align 1
  %scevgep158.2.3 = getelementptr [4 x i8], [4 x i8]* %wr, i64 0, i64 2
  %503 = load i8, i8* %scevgep158.2.3, align 1
  %conv44.i478.2.3 = zext i8 %503 to i32
  %scevgep161.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %482, i64 0, i64 0, i64 2
  %504 = load i8, i8* %scevgep161.2.3, align 1
  %conv49.i483.2.3 = zext i8 %504 to i32
  %xor.i484.2.3 = xor i32 %conv44.i478.2.3, %conv49.i483.2.3
  %conv50.i485.2.3 = trunc i32 %xor.i484.2.3 to i8
  %scevgep165.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %483, i64 0, i64 0, i64 2
  store i8 %conv50.i485.2.3, i8* %scevgep165.2.3, align 1
  %505 = load i8, i8* %arrayidx56.i491.3, align 1
  %conv57.i492.2.3 = zext i8 %505 to i32
  %xor58.i493.2.3 = xor i32 %conv57.i492.2.3, 1
  %conv59.i494.2.3 = trunc i32 %xor58.i493.2.3 to i8
  %scevgep162.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %482, i64 0, i64 0, i64 2
  %506 = load i8, i8* %scevgep162.2.3, align 1
  %call64.i499.2.3 = call zeroext i8 @mult(i8 zeroext %conv59.i494.2.3, i8 zeroext %506) #3
  %scevgep169.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %484, i64 0, i64 0, i64 2
  store i8 %call64.i499.2.3, i8* %scevgep169.2.3, align 1
  %507 = load i8, i8* %arrayidx70.i505.3, align 1
  %scevgep166.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %483, i64 0, i64 0, i64 2
  %508 = load i8, i8* %scevgep166.2.3, align 1
  %call75.i510.2.3 = call zeroext i8 @mult(i8 zeroext %507, i8 zeroext %508) #3
  %scevgep173.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %485, i64 0, i64 0, i64 2
  store i8 %call75.i510.2.3, i8* %scevgep173.2.3, align 1
  %scevgep170.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %484, i64 0, i64 0, i64 2
  %509 = load i8, i8* %scevgep170.2.3, align 1
  %conv84.i519.2.3 = zext i8 %509 to i32
  %scevgep174.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %485, i64 0, i64 0, i64 2
  %510 = load i8, i8* %scevgep174.2.3, align 1
  %conv89.i524.2.3 = zext i8 %510 to i32
  %xor90.i525.2.3 = xor i32 %conv84.i519.2.3, %conv89.i524.2.3
  %conv91.i526.2.3 = trunc i32 %xor90.i525.2.3 to i8
  %scevgep177.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %486, i64 0, i64 0, i64 2
  store i8 %conv91.i526.2.3, i8* %scevgep177.2.3, align 1
  %511 = load i8, i8* %arraydecay17, align 1
  %512 = load i8, i8* %arraydecay18, align 1
  %call111.i543 = call zeroext i8 @mult(i8 zeroext %511, i8 zeroext %512) #3
  store i8 %call111.i543, i8* %arraydecay19, align 1
  %scevgep148.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 1
  %513 = load i8, i8* %scevgep148.1, align 1
  %conv126.i555.1 = zext i8 %513 to i32
  %514 = load i8, i8* %arraydecay19, align 1
  %conv129.i558.1 = zext i8 %514 to i32
  %xor130.i559.1 = xor i32 %conv129.i558.1, %conv126.i555.1
  %conv131.i560.1 = trunc i32 %xor130.i559.1 to i8
  store i8 %conv131.i560.1, i8* %arraydecay19, align 1
  %scevgep148.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 2
  %515 = load i8, i8* %scevgep148.2, align 1
  %conv126.i555.2 = zext i8 %515 to i32
  %516 = load i8, i8* %arraydecay19, align 1
  %conv129.i558.2 = zext i8 %516 to i32
  %xor130.i559.2 = xor i32 %conv129.i558.2, %conv126.i555.2
  %conv131.i560.2 = trunc i32 %xor130.i559.2 to i8
  store i8 %conv131.i560.2, i8* %arraydecay19, align 1
  %scevgep148.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 3
  %517 = load i8, i8* %scevgep148.3, align 1
  %conv126.i555.3 = zext i8 %517 to i32
  %518 = load i8, i8* %arraydecay19, align 1
  %conv129.i558.3 = zext i8 %518 to i32
  %xor130.i559.3 = xor i32 %conv129.i558.3, %conv126.i555.3
  %conv131.i560.3 = trunc i32 %xor130.i559.3 to i8
  store i8 %conv131.i560.3, i8* %arraydecay19, align 1
  %scevgep147 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 1, i64 0
  %519 = bitcast i8* %scevgep147 to [4 x [4 x i8]]*
  %arrayidx108.i540.1 = getelementptr inbounds i8, i8* %arraydecay17, i64 1
  %520 = load i8, i8* %arrayidx108.i540.1, align 1
  %arrayidx110.i542.1 = getelementptr inbounds i8, i8* %arraydecay18, i64 1
  %521 = load i8, i8* %arrayidx110.i542.1, align 1
  %call111.i543.1 = call zeroext i8 @mult(i8 zeroext %520, i8 zeroext %521) #3
  %arrayidx113.i545.1 = getelementptr inbounds i8, i8* %arraydecay19, i64 1
  store i8 %call111.i543.1, i8* %arrayidx113.i545.1, align 1
  %arrayidx128.i557.1 = getelementptr inbounds i8, i8* %arraydecay19, i64 1
  %scevgep148.1494 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %519, i64 0, i64 0, i64 0
  %522 = load i8, i8* %scevgep148.1494, align 1
  %conv126.i555.1495 = zext i8 %522 to i32
  %523 = load i8, i8* %arrayidx128.i557.1, align 1
  %conv129.i558.1496 = zext i8 %523 to i32
  %xor130.i559.1497 = xor i32 %conv129.i558.1496, %conv126.i555.1495
  %conv131.i560.1498 = trunc i32 %xor130.i559.1497 to i8
  store i8 %conv131.i560.1498, i8* %arrayidx128.i557.1, align 1
  %scevgep148.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %519, i64 0, i64 0, i64 2
  %524 = load i8, i8* %scevgep148.2.1, align 1
  %conv126.i555.2.1 = zext i8 %524 to i32
  %525 = load i8, i8* %arrayidx128.i557.1, align 1
  %conv129.i558.2.1 = zext i8 %525 to i32
  %xor130.i559.2.1 = xor i32 %conv129.i558.2.1, %conv126.i555.2.1
  %conv131.i560.2.1 = trunc i32 %xor130.i559.2.1 to i8
  store i8 %conv131.i560.2.1, i8* %arrayidx128.i557.1, align 1
  %scevgep148.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %519, i64 0, i64 0, i64 3
  %526 = load i8, i8* %scevgep148.3.1, align 1
  %conv126.i555.3.1 = zext i8 %526 to i32
  %527 = load i8, i8* %arrayidx128.i557.1, align 1
  %conv129.i558.3.1 = zext i8 %527 to i32
  %xor130.i559.3.1 = xor i32 %conv129.i558.3.1, %conv126.i555.3.1
  %conv131.i560.3.1 = trunc i32 %xor130.i559.3.1 to i8
  store i8 %conv131.i560.3.1, i8* %arrayidx128.i557.1, align 1
  %scevgep147.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %519, i64 0, i64 1, i64 0
  %528 = bitcast i8* %scevgep147.1 to [4 x [4 x i8]]*
  %arrayidx108.i540.2 = getelementptr inbounds i8, i8* %arraydecay17, i64 2
  %529 = load i8, i8* %arrayidx108.i540.2, align 1
  %arrayidx110.i542.2 = getelementptr inbounds i8, i8* %arraydecay18, i64 2
  %530 = load i8, i8* %arrayidx110.i542.2, align 1
  %call111.i543.2 = call zeroext i8 @mult(i8 zeroext %529, i8 zeroext %530) #3
  %arrayidx113.i545.2 = getelementptr inbounds i8, i8* %arraydecay19, i64 2
  store i8 %call111.i543.2, i8* %arrayidx113.i545.2, align 1
  %arrayidx128.i557.2 = getelementptr inbounds i8, i8* %arraydecay19, i64 2
  %scevgep148.2503 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %528, i64 0, i64 0, i64 0
  %531 = load i8, i8* %scevgep148.2503, align 1
  %conv126.i555.2504 = zext i8 %531 to i32
  %532 = load i8, i8* %arrayidx128.i557.2, align 1
  %conv129.i558.2505 = zext i8 %532 to i32
  %xor130.i559.2506 = xor i32 %conv129.i558.2505, %conv126.i555.2504
  %conv131.i560.2507 = trunc i32 %xor130.i559.2506 to i8
  store i8 %conv131.i560.2507, i8* %arrayidx128.i557.2, align 1
  %scevgep148.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %528, i64 0, i64 0, i64 1
  %533 = load i8, i8* %scevgep148.1.2, align 1
  %conv126.i555.1.2 = zext i8 %533 to i32
  %534 = load i8, i8* %arrayidx128.i557.2, align 1
  %conv129.i558.1.2 = zext i8 %534 to i32
  %xor130.i559.1.2 = xor i32 %conv129.i558.1.2, %conv126.i555.1.2
  %conv131.i560.1.2 = trunc i32 %xor130.i559.1.2 to i8
  store i8 %conv131.i560.1.2, i8* %arrayidx128.i557.2, align 1
  %scevgep148.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %528, i64 0, i64 0, i64 3
  %535 = load i8, i8* %scevgep148.3.2, align 1
  %conv126.i555.3.2 = zext i8 %535 to i32
  %536 = load i8, i8* %arrayidx128.i557.2, align 1
  %conv129.i558.3.2 = zext i8 %536 to i32
  %xor130.i559.3.2 = xor i32 %conv129.i558.3.2, %conv126.i555.3.2
  %conv131.i560.3.2 = trunc i32 %xor130.i559.3.2 to i8
  store i8 %conv131.i560.3.2, i8* %arrayidx128.i557.2, align 1
  %scevgep147.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %528, i64 0, i64 1, i64 0
  %537 = bitcast i8* %scevgep147.2 to [4 x [4 x i8]]*
  %arrayidx108.i540.3 = getelementptr inbounds i8, i8* %arraydecay17, i64 3
  %538 = load i8, i8* %arrayidx108.i540.3, align 1
  %arrayidx110.i542.3 = getelementptr inbounds i8, i8* %arraydecay18, i64 3
  %539 = load i8, i8* %arrayidx110.i542.3, align 1
  %call111.i543.3 = call zeroext i8 @mult(i8 zeroext %538, i8 zeroext %539) #3
  %arrayidx113.i545.3 = getelementptr inbounds i8, i8* %arraydecay19, i64 3
  store i8 %call111.i543.3, i8* %arrayidx113.i545.3, align 1
  %arrayidx128.i557.3 = getelementptr inbounds i8, i8* %arraydecay19, i64 3
  %scevgep148.3512 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %537, i64 0, i64 0, i64 0
  %540 = load i8, i8* %scevgep148.3512, align 1
  %conv126.i555.3513 = zext i8 %540 to i32
  %541 = load i8, i8* %arrayidx128.i557.3, align 1
  %conv129.i558.3514 = zext i8 %541 to i32
  %xor130.i559.3515 = xor i32 %conv129.i558.3514, %conv126.i555.3513
  %conv131.i560.3516 = trunc i32 %xor130.i559.3515 to i8
  store i8 %conv131.i560.3516, i8* %arrayidx128.i557.3, align 1
  %scevgep148.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %537, i64 0, i64 0, i64 1
  %542 = load i8, i8* %scevgep148.1.3, align 1
  %conv126.i555.1.3 = zext i8 %542 to i32
  %543 = load i8, i8* %arrayidx128.i557.3, align 1
  %conv129.i558.1.3 = zext i8 %543 to i32
  %xor130.i559.1.3 = xor i32 %conv129.i558.1.3, %conv126.i555.1.3
  %conv131.i560.1.3 = trunc i32 %xor130.i559.1.3 to i8
  store i8 %conv131.i560.1.3, i8* %arrayidx128.i557.3, align 1
  %scevgep148.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %537, i64 0, i64 0, i64 2
  %544 = load i8, i8* %scevgep148.2.3, align 1
  %conv126.i555.2.3 = zext i8 %544 to i32
  %545 = load i8, i8* %arrayidx128.i557.3, align 1
  %conv129.i558.2.3 = zext i8 %545 to i32
  %xor130.i559.2.3 = xor i32 %conv129.i558.2.3, %conv126.i555.2.3
  %conv131.i560.2.3 = trunc i32 %xor130.i559.2.3 to i8
  store i8 %conv131.i560.2.3, i8* %arrayidx128.i557.3, align 1
  %call139.i566 = call zeroext i8 @mult(i8 zeroext %call.i413, i8 zeroext %call1.i414) #3
  %conv140.i567 = zext i8 %call139.i566 to i32
  %scevgep138 = getelementptr [4 x i8], [4 x i8]* %m, i64 0, i64 0
  %546 = load i8, i8* %scevgep138, align 1
  %scevgep138.1 = getelementptr [4 x i8], [4 x i8]* %m, i64 0, i64 1
  %547 = load i8, i8* %scevgep138.1, align 1
  %conv.i.i172.i574.1 = zext i8 %547 to i32
  %conv1.i.i173.i575.1 = zext i8 %546 to i32
  %xor.i.i174.i576.1 = xor i32 %conv1.i.i173.i575.1, %conv.i.i172.i574.1
  %conv2.i.i175.i577.1 = trunc i32 %xor.i.i174.i576.1 to i8
  %scevgep138.2 = getelementptr [4 x i8], [4 x i8]* %m, i64 0, i64 2
  %548 = load i8, i8* %scevgep138.2, align 1
  %conv.i.i172.i574.2 = zext i8 %548 to i32
  %conv1.i.i173.i575.2 = zext i8 %conv2.i.i175.i577.1 to i32
  %xor.i.i174.i576.2 = xor i32 %conv1.i.i173.i575.2, %conv.i.i172.i574.2
  %conv2.i.i175.i577.2 = trunc i32 %xor.i.i174.i576.2 to i8
  %scevgep138.3 = getelementptr [4 x i8], [4 x i8]* %m, i64 0, i64 3
  %549 = load i8, i8* %scevgep138.3, align 1
  %conv.i.i172.i574.3 = zext i8 %549 to i32
  %conv1.i.i173.i575.3 = zext i8 %conv2.i.i175.i577.2 to i32
  %xor.i.i174.i576.3 = xor i32 %conv1.i.i173.i575.3, %conv.i.i172.i574.3
  %conv2.i.i175.i577.3 = trunc i32 %xor.i.i174.i576.3 to i8
  %conv142.i580 = zext i8 %conv2.i.i175.i577.3 to i32
  %cmp143.i581 = icmp eq i32 %conv140.i567, %conv142.i580
  call void @assert(i1 zeroext %cmp143.i581) #3
  %arraydecay20 = getelementptr inbounds [4 x i8], [4 x i8]* %m, i64 0, i64 0
  %arraydecay21 = getelementptr inbounds [4 x i8], [4 x i8]* %z, i64 0, i64 0
  %call.i614 = call zeroext i8 (...) @rand() #3
  %call1.i615 = call zeroext i8 (...) @rand() #3
  %conv.i616 = zext i8 %call.i614 to i32
  %scevgep134 = getelementptr [4 x i8], [4 x i8]* %m, i64 0, i64 0
  %550 = load i8, i8* %scevgep134, align 1
  %scevgep134.1 = getelementptr [4 x i8], [4 x i8]* %m, i64 0, i64 1
  %551 = load i8, i8* %scevgep134.1, align 1
  %conv.i.i.i622.1 = zext i8 %551 to i32
  %conv1.i.i.i623.1 = zext i8 %550 to i32
  %xor.i.i.i624.1 = xor i32 %conv1.i.i.i623.1, %conv.i.i.i622.1
  %conv2.i.i.i625.1 = trunc i32 %xor.i.i.i624.1 to i8
  %scevgep134.2 = getelementptr [4 x i8], [4 x i8]* %m, i64 0, i64 2
  %552 = load i8, i8* %scevgep134.2, align 1
  %conv.i.i.i622.2 = zext i8 %552 to i32
  %conv1.i.i.i623.2 = zext i8 %conv2.i.i.i625.1 to i32
  %xor.i.i.i624.2 = xor i32 %conv1.i.i.i623.2, %conv.i.i.i622.2
  %conv2.i.i.i625.2 = trunc i32 %xor.i.i.i624.2 to i8
  %scevgep134.3 = getelementptr [4 x i8], [4 x i8]* %m, i64 0, i64 3
  %553 = load i8, i8* %scevgep134.3, align 1
  %conv.i.i.i622.3 = zext i8 %553 to i32
  %conv1.i.i.i623.3 = zext i8 %conv2.i.i.i625.2 to i32
  %xor.i.i.i624.3 = xor i32 %conv1.i.i.i623.3, %conv.i.i.i622.3
  %conv2.i.i.i625.3 = trunc i32 %xor.i.i.i624.3 to i8
  %conv3.i628 = zext i8 %conv2.i.i.i625.3 to i32
  %cmp.i629 = icmp eq i32 %conv.i616, %conv3.i628
  call void @assume(i1 zeroext %cmp.i629) #3
  %conv5.i630 = zext i8 %call1.i615 to i32
  %scevgep130 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 0
  %554 = load i8, i8* %scevgep130, align 1
  %scevgep130.1 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 1
  %555 = load i8, i8* %scevgep130.1, align 1
  %conv.i.i155.i637.1 = zext i8 %555 to i32
  %conv1.i.i156.i638.1 = zext i8 %554 to i32
  %xor.i.i157.i639.1 = xor i32 %conv1.i.i156.i638.1, %conv.i.i155.i637.1
  %conv2.i.i158.i640.1 = trunc i32 %xor.i.i157.i639.1 to i8
  %scevgep130.2 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 2
  %556 = load i8, i8* %scevgep130.2, align 1
  %conv.i.i155.i637.2 = zext i8 %556 to i32
  %conv1.i.i156.i638.2 = zext i8 %conv2.i.i158.i640.1 to i32
  %xor.i.i157.i639.2 = xor i32 %conv1.i.i156.i638.2, %conv.i.i155.i637.2
  %conv2.i.i158.i640.2 = trunc i32 %xor.i.i157.i639.2 to i8
  %scevgep130.3 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 3
  %557 = load i8, i8* %scevgep130.3, align 1
  %conv.i.i155.i637.3 = zext i8 %557 to i32
  %conv1.i.i156.i638.3 = zext i8 %conv2.i.i158.i640.2 to i32
  %xor.i.i157.i639.3 = xor i32 %conv1.i.i156.i638.3, %conv.i.i155.i637.3
  %conv2.i.i158.i640.3 = trunc i32 %xor.i.i157.i639.3 to i8
  %conv7.i643 = zext i8 %conv2.i.i158.i640.3 to i32
  %cmp8.i644 = icmp eq i32 %conv5.i630, %conv7.i643
  call void @assume(i1 zeroext %cmp8.i644) #3
  %call16.i652 = call zeroext i8 (...) @rand() #3
  %scevgep120 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i652, i8* %scevgep120, align 1
  %scevgep121 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %558 = load i8, i8* %scevgep121, align 1
  %scevgep122 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %558, i8* %scevgep122, align 1
  %call16.i652.1813 = call zeroext i8 (...) @rand() #3
  %scevgep120.1814 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  store i8 %call16.i652.1813, i8* %scevgep120.1814, align 1
  %scevgep121.1815 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %559 = load i8, i8* %scevgep121.1815, align 1
  %scevgep122.1816 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 2, i64 0
  store i8 %559, i8* %scevgep122.1816, align 1
  %call16.i652.2818 = call zeroext i8 (...) @rand() #3
  %scevgep120.2819 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  store i8 %call16.i652.2818, i8* %scevgep120.2819, align 1
  %scevgep121.2820 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %560 = load i8, i8* %scevgep121.2820, align 1
  %scevgep122.2821 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 3, i64 0
  store i8 %560, i8* %scevgep122.2821, align 1
  %scevgep117 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 1
  %561 = bitcast i8* %scevgep117 to [4 x [4 x i8]]*
  %call16.i652.1 = call zeroext i8 (...) @rand() #3
  %scevgep120.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %561, i64 0, i64 0, i64 1
  store i8 %call16.i652.1, i8* %scevgep120.1, align 1
  %scevgep121.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %561, i64 0, i64 0, i64 1
  %562 = load i8, i8* %scevgep121.1, align 1
  %scevgep122.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %561, i64 0, i64 1, i64 0
  store i8 %562, i8* %scevgep122.1, align 1
  %call16.i652.1.1 = call zeroext i8 (...) @rand() #3
  %scevgep120.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %561, i64 0, i64 0, i64 2
  store i8 %call16.i652.1.1, i8* %scevgep120.1.1, align 1
  %scevgep121.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %561, i64 0, i64 0, i64 2
  %563 = load i8, i8* %scevgep121.1.1, align 1
  %scevgep122.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %561, i64 0, i64 2, i64 0
  store i8 %563, i8* %scevgep122.1.1, align 1
  %scevgep117.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %561, i64 0, i64 1, i64 1
  %564 = bitcast i8* %scevgep117.1 to [4 x [4 x i8]]*
  %call16.i652.2 = call zeroext i8 (...) @rand() #3
  %scevgep120.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %564, i64 0, i64 0, i64 1
  store i8 %call16.i652.2, i8* %scevgep120.2, align 1
  %scevgep121.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %564, i64 0, i64 0, i64 1
  %565 = load i8, i8* %scevgep121.2, align 1
  %scevgep122.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %564, i64 0, i64 1, i64 0
  store i8 %565, i8* %scevgep122.2, align 1
  %scevgep93.1 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 1
  %566 = load i8, i8* %scevgep93.1, align 1
  %conv44.i679.1 = zext i8 %566 to i32
  %scevgep96.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %567 = load i8, i8* %scevgep96.1, align 1
  %conv49.i684.1 = zext i8 %567 to i32
  %xor.i685.1 = xor i32 %conv44.i679.1, %conv49.i684.1
  %conv50.i686.1 = trunc i32 %xor.i685.1 to i8
  %scevgep100.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i686.1, i8* %scevgep100.1, align 1
  %568 = load i8, i8* %arraydecay20, align 1
  %conv57.i693.1 = zext i8 %568 to i32
  %xor58.i694.1 = xor i32 %conv57.i693.1, 1
  %conv59.i695.1 = trunc i32 %xor58.i694.1 to i8
  %scevgep97.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %569 = load i8, i8* %scevgep97.1, align 1
  %call64.i700.1 = call zeroext i8 @mult(i8 zeroext %conv59.i695.1, i8 zeroext %569) #3
  %scevgep104.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i700.1, i8* %scevgep104.1, align 1
  %570 = load i8, i8* %arraydecay20, align 1
  %scevgep101.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 1
  %571 = load i8, i8* %scevgep101.1, align 1
  %call75.i711.1 = call zeroext i8 @mult(i8 zeroext %570, i8 zeroext %571) #3
  %scevgep108.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i711.1, i8* %scevgep108.1, align 1
  %scevgep105.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %572 = load i8, i8* %scevgep105.1, align 1
  %conv84.i720.1 = zext i8 %572 to i32
  %scevgep109.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %573 = load i8, i8* %scevgep109.1, align 1
  %conv89.i725.1 = zext i8 %573 to i32
  %xor90.i726.1 = xor i32 %conv84.i720.1, %conv89.i725.1
  %conv91.i727.1 = trunc i32 %xor90.i726.1 to i8
  %scevgep112.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i727.1, i8* %scevgep112.1, align 1
  %scevgep93.2 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 2
  %574 = load i8, i8* %scevgep93.2, align 1
  %conv44.i679.2 = zext i8 %574 to i32
  %scevgep96.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %575 = load i8, i8* %scevgep96.2, align 1
  %conv49.i684.2 = zext i8 %575 to i32
  %xor.i685.2 = xor i32 %conv44.i679.2, %conv49.i684.2
  %conv50.i686.2 = trunc i32 %xor.i685.2 to i8
  %scevgep100.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 2
  store i8 %conv50.i686.2, i8* %scevgep100.2, align 1
  %576 = load i8, i8* %arraydecay20, align 1
  %conv57.i693.2 = zext i8 %576 to i32
  %xor58.i694.2 = xor i32 %conv57.i693.2, 1
  %conv59.i695.2 = trunc i32 %xor58.i694.2 to i8
  %scevgep97.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %577 = load i8, i8* %scevgep97.2, align 1
  %call64.i700.2 = call zeroext i8 @mult(i8 zeroext %conv59.i695.2, i8 zeroext %577) #3
  %scevgep104.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 2
  store i8 %call64.i700.2, i8* %scevgep104.2, align 1
  %578 = load i8, i8* %arraydecay20, align 1
  %scevgep101.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 2
  %579 = load i8, i8* %scevgep101.2, align 1
  %call75.i711.2 = call zeroext i8 @mult(i8 zeroext %578, i8 zeroext %579) #3
  %scevgep108.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 2
  store i8 %call75.i711.2, i8* %scevgep108.2, align 1
  %scevgep105.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 2
  %580 = load i8, i8* %scevgep105.2, align 1
  %conv84.i720.2 = zext i8 %580 to i32
  %scevgep109.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 2
  %581 = load i8, i8* %scevgep109.2, align 1
  %conv89.i725.2 = zext i8 %581 to i32
  %xor90.i726.2 = xor i32 %conv84.i720.2, %conv89.i725.2
  %conv91.i727.2 = trunc i32 %xor90.i726.2 to i8
  %scevgep112.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 2
  store i8 %conv91.i727.2, i8* %scevgep112.2, align 1
  %scevgep93.3 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 3
  %582 = load i8, i8* %scevgep93.3, align 1
  %conv44.i679.3 = zext i8 %582 to i32
  %scevgep96.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %583 = load i8, i8* %scevgep96.3, align 1
  %conv49.i684.3 = zext i8 %583 to i32
  %xor.i685.3 = xor i32 %conv44.i679.3, %conv49.i684.3
  %conv50.i686.3 = trunc i32 %xor.i685.3 to i8
  %scevgep100.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 3
  store i8 %conv50.i686.3, i8* %scevgep100.3, align 1
  %584 = load i8, i8* %arraydecay20, align 1
  %conv57.i693.3 = zext i8 %584 to i32
  %xor58.i694.3 = xor i32 %conv57.i693.3, 1
  %conv59.i695.3 = trunc i32 %xor58.i694.3 to i8
  %scevgep97.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %585 = load i8, i8* %scevgep97.3, align 1
  %call64.i700.3 = call zeroext i8 @mult(i8 zeroext %conv59.i695.3, i8 zeroext %585) #3
  %scevgep104.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 3
  store i8 %call64.i700.3, i8* %scevgep104.3, align 1
  %586 = load i8, i8* %arraydecay20, align 1
  %scevgep101.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 3
  %587 = load i8, i8* %scevgep101.3, align 1
  %call75.i711.3 = call zeroext i8 @mult(i8 zeroext %586, i8 zeroext %587) #3
  %scevgep108.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 3
  store i8 %call75.i711.3, i8* %scevgep108.3, align 1
  %scevgep105.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 3
  %588 = load i8, i8* %scevgep105.3, align 1
  %conv84.i720.3 = zext i8 %588 to i32
  %scevgep109.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 3
  %589 = load i8, i8* %scevgep109.3, align 1
  %conv89.i725.3 = zext i8 %589 to i32
  %xor90.i726.3 = xor i32 %conv84.i720.3, %conv89.i725.3
  %conv91.i727.3 = trunc i32 %xor90.i726.3 to i8
  %scevgep112.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 3
  store i8 %conv91.i727.3, i8* %scevgep112.3, align 1
  %scevgep95 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  %590 = bitcast i8* %scevgep95 to [4 x [4 x i8]]*
  %scevgep99 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 1, i64 0
  %591 = bitcast i8* %scevgep99 to [4 x [4 x i8]]*
  %scevgep103 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %592 = bitcast i8* %scevgep103 to [4 x [4 x i8]]*
  %scevgep107 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %593 = bitcast i8* %scevgep107 to [4 x [4 x i8]]*
  %scevgep111 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 1, i64 0
  %594 = bitcast i8* %scevgep111 to [4 x [4 x i8]]*
  %arrayidx56.i692.1 = getelementptr inbounds i8, i8* %arraydecay20, i64 1
  %arrayidx70.i706.1 = getelementptr inbounds i8, i8* %arraydecay20, i64 1
  %scevgep93.1413 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 0
  %595 = load i8, i8* %scevgep93.1413, align 1
  %conv44.i679.1414 = zext i8 %595 to i32
  %scevgep96.1415 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %590, i64 0, i64 0, i64 0
  %596 = load i8, i8* %scevgep96.1415, align 1
  %conv49.i684.1416 = zext i8 %596 to i32
  %xor.i685.1417 = xor i32 %conv44.i679.1414, %conv49.i684.1416
  %conv50.i686.1418 = trunc i32 %xor.i685.1417 to i8
  %scevgep100.1419 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %591, i64 0, i64 0, i64 0
  store i8 %conv50.i686.1418, i8* %scevgep100.1419, align 1
  %597 = load i8, i8* %arrayidx56.i692.1, align 1
  %conv57.i693.1420 = zext i8 %597 to i32
  %xor58.i694.1421 = xor i32 %conv57.i693.1420, 1
  %conv59.i695.1422 = trunc i32 %xor58.i694.1421 to i8
  %scevgep97.1423 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %590, i64 0, i64 0, i64 0
  %598 = load i8, i8* %scevgep97.1423, align 1
  %call64.i700.1424 = call zeroext i8 @mult(i8 zeroext %conv59.i695.1422, i8 zeroext %598) #3
  %scevgep104.1425 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %592, i64 0, i64 0, i64 0
  store i8 %call64.i700.1424, i8* %scevgep104.1425, align 1
  %599 = load i8, i8* %arrayidx70.i706.1, align 1
  %scevgep101.1426 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %591, i64 0, i64 0, i64 0
  %600 = load i8, i8* %scevgep101.1426, align 1
  %call75.i711.1427 = call zeroext i8 @mult(i8 zeroext %599, i8 zeroext %600) #3
  %scevgep108.1428 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %593, i64 0, i64 0, i64 0
  store i8 %call75.i711.1427, i8* %scevgep108.1428, align 1
  %scevgep105.1429 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %592, i64 0, i64 0, i64 0
  %601 = load i8, i8* %scevgep105.1429, align 1
  %conv84.i720.1430 = zext i8 %601 to i32
  %scevgep109.1431 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %593, i64 0, i64 0, i64 0
  %602 = load i8, i8* %scevgep109.1431, align 1
  %conv89.i725.1432 = zext i8 %602 to i32
  %xor90.i726.1433 = xor i32 %conv84.i720.1430, %conv89.i725.1432
  %conv91.i727.1434 = trunc i32 %xor90.i726.1433 to i8
  %scevgep112.1435 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %594, i64 0, i64 0, i64 0
  store i8 %conv91.i727.1434, i8* %scevgep112.1435, align 1
  %scevgep93.2.1 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 2
  %603 = load i8, i8* %scevgep93.2.1, align 1
  %conv44.i679.2.1 = zext i8 %603 to i32
  %scevgep96.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %590, i64 0, i64 0, i64 2
  %604 = load i8, i8* %scevgep96.2.1, align 1
  %conv49.i684.2.1 = zext i8 %604 to i32
  %xor.i685.2.1 = xor i32 %conv44.i679.2.1, %conv49.i684.2.1
  %conv50.i686.2.1 = trunc i32 %xor.i685.2.1 to i8
  %scevgep100.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %591, i64 0, i64 0, i64 2
  store i8 %conv50.i686.2.1, i8* %scevgep100.2.1, align 1
  %605 = load i8, i8* %arrayidx56.i692.1, align 1
  %conv57.i693.2.1 = zext i8 %605 to i32
  %xor58.i694.2.1 = xor i32 %conv57.i693.2.1, 1
  %conv59.i695.2.1 = trunc i32 %xor58.i694.2.1 to i8
  %scevgep97.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %590, i64 0, i64 0, i64 2
  %606 = load i8, i8* %scevgep97.2.1, align 1
  %call64.i700.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i695.2.1, i8 zeroext %606) #3
  %scevgep104.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %592, i64 0, i64 0, i64 2
  store i8 %call64.i700.2.1, i8* %scevgep104.2.1, align 1
  %607 = load i8, i8* %arrayidx70.i706.1, align 1
  %scevgep101.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %591, i64 0, i64 0, i64 2
  %608 = load i8, i8* %scevgep101.2.1, align 1
  %call75.i711.2.1 = call zeroext i8 @mult(i8 zeroext %607, i8 zeroext %608) #3
  %scevgep108.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %593, i64 0, i64 0, i64 2
  store i8 %call75.i711.2.1, i8* %scevgep108.2.1, align 1
  %scevgep105.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %592, i64 0, i64 0, i64 2
  %609 = load i8, i8* %scevgep105.2.1, align 1
  %conv84.i720.2.1 = zext i8 %609 to i32
  %scevgep109.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %593, i64 0, i64 0, i64 2
  %610 = load i8, i8* %scevgep109.2.1, align 1
  %conv89.i725.2.1 = zext i8 %610 to i32
  %xor90.i726.2.1 = xor i32 %conv84.i720.2.1, %conv89.i725.2.1
  %conv91.i727.2.1 = trunc i32 %xor90.i726.2.1 to i8
  %scevgep112.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %594, i64 0, i64 0, i64 2
  store i8 %conv91.i727.2.1, i8* %scevgep112.2.1, align 1
  %scevgep93.3.1 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 3
  %611 = load i8, i8* %scevgep93.3.1, align 1
  %conv44.i679.3.1 = zext i8 %611 to i32
  %scevgep96.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %590, i64 0, i64 0, i64 3
  %612 = load i8, i8* %scevgep96.3.1, align 1
  %conv49.i684.3.1 = zext i8 %612 to i32
  %xor.i685.3.1 = xor i32 %conv44.i679.3.1, %conv49.i684.3.1
  %conv50.i686.3.1 = trunc i32 %xor.i685.3.1 to i8
  %scevgep100.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %591, i64 0, i64 0, i64 3
  store i8 %conv50.i686.3.1, i8* %scevgep100.3.1, align 1
  %613 = load i8, i8* %arrayidx56.i692.1, align 1
  %conv57.i693.3.1 = zext i8 %613 to i32
  %xor58.i694.3.1 = xor i32 %conv57.i693.3.1, 1
  %conv59.i695.3.1 = trunc i32 %xor58.i694.3.1 to i8
  %scevgep97.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %590, i64 0, i64 0, i64 3
  %614 = load i8, i8* %scevgep97.3.1, align 1
  %call64.i700.3.1 = call zeroext i8 @mult(i8 zeroext %conv59.i695.3.1, i8 zeroext %614) #3
  %scevgep104.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %592, i64 0, i64 0, i64 3
  store i8 %call64.i700.3.1, i8* %scevgep104.3.1, align 1
  %615 = load i8, i8* %arrayidx70.i706.1, align 1
  %scevgep101.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %591, i64 0, i64 0, i64 3
  %616 = load i8, i8* %scevgep101.3.1, align 1
  %call75.i711.3.1 = call zeroext i8 @mult(i8 zeroext %615, i8 zeroext %616) #3
  %scevgep108.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %593, i64 0, i64 0, i64 3
  store i8 %call75.i711.3.1, i8* %scevgep108.3.1, align 1
  %scevgep105.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %592, i64 0, i64 0, i64 3
  %617 = load i8, i8* %scevgep105.3.1, align 1
  %conv84.i720.3.1 = zext i8 %617 to i32
  %scevgep109.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %593, i64 0, i64 0, i64 3
  %618 = load i8, i8* %scevgep109.3.1, align 1
  %conv89.i725.3.1 = zext i8 %618 to i32
  %xor90.i726.3.1 = xor i32 %conv84.i720.3.1, %conv89.i725.3.1
  %conv91.i727.3.1 = trunc i32 %xor90.i726.3.1 to i8
  %scevgep112.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %594, i64 0, i64 0, i64 3
  store i8 %conv91.i727.3.1, i8* %scevgep112.3.1, align 1
  %scevgep95.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %590, i64 0, i64 1, i64 0
  %619 = bitcast i8* %scevgep95.1 to [4 x [4 x i8]]*
  %scevgep99.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %591, i64 0, i64 1, i64 0
  %620 = bitcast i8* %scevgep99.1 to [4 x [4 x i8]]*
  %scevgep103.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %592, i64 0, i64 1, i64 0
  %621 = bitcast i8* %scevgep103.1 to [4 x [4 x i8]]*
  %scevgep107.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %593, i64 0, i64 1, i64 0
  %622 = bitcast i8* %scevgep107.1 to [4 x [4 x i8]]*
  %scevgep111.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %594, i64 0, i64 1, i64 0
  %623 = bitcast i8* %scevgep111.1 to [4 x [4 x i8]]*
  %arrayidx56.i692.2 = getelementptr inbounds i8, i8* %arraydecay20, i64 2
  %arrayidx70.i706.2 = getelementptr inbounds i8, i8* %arraydecay20, i64 2
  %scevgep93.2440 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 0
  %624 = load i8, i8* %scevgep93.2440, align 1
  %conv44.i679.2441 = zext i8 %624 to i32
  %scevgep96.2442 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %619, i64 0, i64 0, i64 0
  %625 = load i8, i8* %scevgep96.2442, align 1
  %conv49.i684.2443 = zext i8 %625 to i32
  %xor.i685.2444 = xor i32 %conv44.i679.2441, %conv49.i684.2443
  %conv50.i686.2445 = trunc i32 %xor.i685.2444 to i8
  %scevgep100.2446 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %620, i64 0, i64 0, i64 0
  store i8 %conv50.i686.2445, i8* %scevgep100.2446, align 1
  %626 = load i8, i8* %arrayidx56.i692.2, align 1
  %conv57.i693.2447 = zext i8 %626 to i32
  %xor58.i694.2448 = xor i32 %conv57.i693.2447, 1
  %conv59.i695.2449 = trunc i32 %xor58.i694.2448 to i8
  %scevgep97.2450 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %619, i64 0, i64 0, i64 0
  %627 = load i8, i8* %scevgep97.2450, align 1
  %call64.i700.2451 = call zeroext i8 @mult(i8 zeroext %conv59.i695.2449, i8 zeroext %627) #3
  %scevgep104.2452 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %621, i64 0, i64 0, i64 0
  store i8 %call64.i700.2451, i8* %scevgep104.2452, align 1
  %628 = load i8, i8* %arrayidx70.i706.2, align 1
  %scevgep101.2453 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %620, i64 0, i64 0, i64 0
  %629 = load i8, i8* %scevgep101.2453, align 1
  %call75.i711.2454 = call zeroext i8 @mult(i8 zeroext %628, i8 zeroext %629) #3
  %scevgep108.2455 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %622, i64 0, i64 0, i64 0
  store i8 %call75.i711.2454, i8* %scevgep108.2455, align 1
  %scevgep105.2456 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %621, i64 0, i64 0, i64 0
  %630 = load i8, i8* %scevgep105.2456, align 1
  %conv84.i720.2457 = zext i8 %630 to i32
  %scevgep109.2458 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %622, i64 0, i64 0, i64 0
  %631 = load i8, i8* %scevgep109.2458, align 1
  %conv89.i725.2459 = zext i8 %631 to i32
  %xor90.i726.2460 = xor i32 %conv84.i720.2457, %conv89.i725.2459
  %conv91.i727.2461 = trunc i32 %xor90.i726.2460 to i8
  %scevgep112.2462 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %623, i64 0, i64 0, i64 0
  store i8 %conv91.i727.2461, i8* %scevgep112.2462, align 1
  %scevgep93.1.2 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 1
  %632 = load i8, i8* %scevgep93.1.2, align 1
  %conv44.i679.1.2 = zext i8 %632 to i32
  %scevgep96.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %619, i64 0, i64 0, i64 1
  %633 = load i8, i8* %scevgep96.1.2, align 1
  %conv49.i684.1.2 = zext i8 %633 to i32
  %xor.i685.1.2 = xor i32 %conv44.i679.1.2, %conv49.i684.1.2
  %conv50.i686.1.2 = trunc i32 %xor.i685.1.2 to i8
  %scevgep100.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %620, i64 0, i64 0, i64 1
  store i8 %conv50.i686.1.2, i8* %scevgep100.1.2, align 1
  %634 = load i8, i8* %arrayidx56.i692.2, align 1
  %conv57.i693.1.2 = zext i8 %634 to i32
  %xor58.i694.1.2 = xor i32 %conv57.i693.1.2, 1
  %conv59.i695.1.2 = trunc i32 %xor58.i694.1.2 to i8
  %scevgep97.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %619, i64 0, i64 0, i64 1
  %635 = load i8, i8* %scevgep97.1.2, align 1
  %call64.i700.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i695.1.2, i8 zeroext %635) #3
  %scevgep104.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %621, i64 0, i64 0, i64 1
  store i8 %call64.i700.1.2, i8* %scevgep104.1.2, align 1
  %636 = load i8, i8* %arrayidx70.i706.2, align 1
  %scevgep101.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %620, i64 0, i64 0, i64 1
  %637 = load i8, i8* %scevgep101.1.2, align 1
  %call75.i711.1.2 = call zeroext i8 @mult(i8 zeroext %636, i8 zeroext %637) #3
  %scevgep108.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %622, i64 0, i64 0, i64 1
  store i8 %call75.i711.1.2, i8* %scevgep108.1.2, align 1
  %scevgep105.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %621, i64 0, i64 0, i64 1
  %638 = load i8, i8* %scevgep105.1.2, align 1
  %conv84.i720.1.2 = zext i8 %638 to i32
  %scevgep109.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %622, i64 0, i64 0, i64 1
  %639 = load i8, i8* %scevgep109.1.2, align 1
  %conv89.i725.1.2 = zext i8 %639 to i32
  %xor90.i726.1.2 = xor i32 %conv84.i720.1.2, %conv89.i725.1.2
  %conv91.i727.1.2 = trunc i32 %xor90.i726.1.2 to i8
  %scevgep112.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %623, i64 0, i64 0, i64 1
  store i8 %conv91.i727.1.2, i8* %scevgep112.1.2, align 1
  %scevgep93.3.2 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 3
  %640 = load i8, i8* %scevgep93.3.2, align 1
  %conv44.i679.3.2 = zext i8 %640 to i32
  %scevgep96.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %619, i64 0, i64 0, i64 3
  %641 = load i8, i8* %scevgep96.3.2, align 1
  %conv49.i684.3.2 = zext i8 %641 to i32
  %xor.i685.3.2 = xor i32 %conv44.i679.3.2, %conv49.i684.3.2
  %conv50.i686.3.2 = trunc i32 %xor.i685.3.2 to i8
  %scevgep100.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %620, i64 0, i64 0, i64 3
  store i8 %conv50.i686.3.2, i8* %scevgep100.3.2, align 1
  %642 = load i8, i8* %arrayidx56.i692.2, align 1
  %conv57.i693.3.2 = zext i8 %642 to i32
  %xor58.i694.3.2 = xor i32 %conv57.i693.3.2, 1
  %conv59.i695.3.2 = trunc i32 %xor58.i694.3.2 to i8
  %scevgep97.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %619, i64 0, i64 0, i64 3
  %643 = load i8, i8* %scevgep97.3.2, align 1
  %call64.i700.3.2 = call zeroext i8 @mult(i8 zeroext %conv59.i695.3.2, i8 zeroext %643) #3
  %scevgep104.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %621, i64 0, i64 0, i64 3
  store i8 %call64.i700.3.2, i8* %scevgep104.3.2, align 1
  %644 = load i8, i8* %arrayidx70.i706.2, align 1
  %scevgep101.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %620, i64 0, i64 0, i64 3
  %645 = load i8, i8* %scevgep101.3.2, align 1
  %call75.i711.3.2 = call zeroext i8 @mult(i8 zeroext %644, i8 zeroext %645) #3
  %scevgep108.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %622, i64 0, i64 0, i64 3
  store i8 %call75.i711.3.2, i8* %scevgep108.3.2, align 1
  %scevgep105.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %621, i64 0, i64 0, i64 3
  %646 = load i8, i8* %scevgep105.3.2, align 1
  %conv84.i720.3.2 = zext i8 %646 to i32
  %scevgep109.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %622, i64 0, i64 0, i64 3
  %647 = load i8, i8* %scevgep109.3.2, align 1
  %conv89.i725.3.2 = zext i8 %647 to i32
  %xor90.i726.3.2 = xor i32 %conv84.i720.3.2, %conv89.i725.3.2
  %conv91.i727.3.2 = trunc i32 %xor90.i726.3.2 to i8
  %scevgep112.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %623, i64 0, i64 0, i64 3
  store i8 %conv91.i727.3.2, i8* %scevgep112.3.2, align 1
  %scevgep95.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %619, i64 0, i64 1, i64 0
  %648 = bitcast i8* %scevgep95.2 to [4 x [4 x i8]]*
  %scevgep99.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %620, i64 0, i64 1, i64 0
  %649 = bitcast i8* %scevgep99.2 to [4 x [4 x i8]]*
  %scevgep103.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %621, i64 0, i64 1, i64 0
  %650 = bitcast i8* %scevgep103.2 to [4 x [4 x i8]]*
  %scevgep107.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %622, i64 0, i64 1, i64 0
  %651 = bitcast i8* %scevgep107.2 to [4 x [4 x i8]]*
  %scevgep111.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %623, i64 0, i64 1, i64 0
  %652 = bitcast i8* %scevgep111.2 to [4 x [4 x i8]]*
  %arrayidx56.i692.3 = getelementptr inbounds i8, i8* %arraydecay20, i64 3
  %arrayidx70.i706.3 = getelementptr inbounds i8, i8* %arraydecay20, i64 3
  %scevgep93.3467 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 0
  %653 = load i8, i8* %scevgep93.3467, align 1
  %conv44.i679.3468 = zext i8 %653 to i32
  %scevgep96.3469 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %648, i64 0, i64 0, i64 0
  %654 = load i8, i8* %scevgep96.3469, align 1
  %conv49.i684.3470 = zext i8 %654 to i32
  %xor.i685.3471 = xor i32 %conv44.i679.3468, %conv49.i684.3470
  %conv50.i686.3472 = trunc i32 %xor.i685.3471 to i8
  %scevgep100.3473 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %649, i64 0, i64 0, i64 0
  store i8 %conv50.i686.3472, i8* %scevgep100.3473, align 1
  %655 = load i8, i8* %arrayidx56.i692.3, align 1
  %conv57.i693.3474 = zext i8 %655 to i32
  %xor58.i694.3475 = xor i32 %conv57.i693.3474, 1
  %conv59.i695.3476 = trunc i32 %xor58.i694.3475 to i8
  %scevgep97.3477 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %648, i64 0, i64 0, i64 0
  %656 = load i8, i8* %scevgep97.3477, align 1
  %call64.i700.3478 = call zeroext i8 @mult(i8 zeroext %conv59.i695.3476, i8 zeroext %656) #3
  %scevgep104.3479 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %650, i64 0, i64 0, i64 0
  store i8 %call64.i700.3478, i8* %scevgep104.3479, align 1
  %657 = load i8, i8* %arrayidx70.i706.3, align 1
  %scevgep101.3480 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %649, i64 0, i64 0, i64 0
  %658 = load i8, i8* %scevgep101.3480, align 1
  %call75.i711.3481 = call zeroext i8 @mult(i8 zeroext %657, i8 zeroext %658) #3
  %scevgep108.3482 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %651, i64 0, i64 0, i64 0
  store i8 %call75.i711.3481, i8* %scevgep108.3482, align 1
  %scevgep105.3483 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %650, i64 0, i64 0, i64 0
  %659 = load i8, i8* %scevgep105.3483, align 1
  %conv84.i720.3484 = zext i8 %659 to i32
  %scevgep109.3485 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %651, i64 0, i64 0, i64 0
  %660 = load i8, i8* %scevgep109.3485, align 1
  %conv89.i725.3486 = zext i8 %660 to i32
  %xor90.i726.3487 = xor i32 %conv84.i720.3484, %conv89.i725.3486
  %conv91.i727.3488 = trunc i32 %xor90.i726.3487 to i8
  %scevgep112.3489 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %652, i64 0, i64 0, i64 0
  store i8 %conv91.i727.3488, i8* %scevgep112.3489, align 1
  %scevgep93.1.3 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 1
  %661 = load i8, i8* %scevgep93.1.3, align 1
  %conv44.i679.1.3 = zext i8 %661 to i32
  %scevgep96.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %648, i64 0, i64 0, i64 1
  %662 = load i8, i8* %scevgep96.1.3, align 1
  %conv49.i684.1.3 = zext i8 %662 to i32
  %xor.i685.1.3 = xor i32 %conv44.i679.1.3, %conv49.i684.1.3
  %conv50.i686.1.3 = trunc i32 %xor.i685.1.3 to i8
  %scevgep100.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %649, i64 0, i64 0, i64 1
  store i8 %conv50.i686.1.3, i8* %scevgep100.1.3, align 1
  %663 = load i8, i8* %arrayidx56.i692.3, align 1
  %conv57.i693.1.3 = zext i8 %663 to i32
  %xor58.i694.1.3 = xor i32 %conv57.i693.1.3, 1
  %conv59.i695.1.3 = trunc i32 %xor58.i694.1.3 to i8
  %scevgep97.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %648, i64 0, i64 0, i64 1
  %664 = load i8, i8* %scevgep97.1.3, align 1
  %call64.i700.1.3 = call zeroext i8 @mult(i8 zeroext %conv59.i695.1.3, i8 zeroext %664) #3
  %scevgep104.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %650, i64 0, i64 0, i64 1
  store i8 %call64.i700.1.3, i8* %scevgep104.1.3, align 1
  %665 = load i8, i8* %arrayidx70.i706.3, align 1
  %scevgep101.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %649, i64 0, i64 0, i64 1
  %666 = load i8, i8* %scevgep101.1.3, align 1
  %call75.i711.1.3 = call zeroext i8 @mult(i8 zeroext %665, i8 zeroext %666) #3
  %scevgep108.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %651, i64 0, i64 0, i64 1
  store i8 %call75.i711.1.3, i8* %scevgep108.1.3, align 1
  %scevgep105.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %650, i64 0, i64 0, i64 1
  %667 = load i8, i8* %scevgep105.1.3, align 1
  %conv84.i720.1.3 = zext i8 %667 to i32
  %scevgep109.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %651, i64 0, i64 0, i64 1
  %668 = load i8, i8* %scevgep109.1.3, align 1
  %conv89.i725.1.3 = zext i8 %668 to i32
  %xor90.i726.1.3 = xor i32 %conv84.i720.1.3, %conv89.i725.1.3
  %conv91.i727.1.3 = trunc i32 %xor90.i726.1.3 to i8
  %scevgep112.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %652, i64 0, i64 0, i64 1
  store i8 %conv91.i727.1.3, i8* %scevgep112.1.3, align 1
  %scevgep93.2.3 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 2
  %669 = load i8, i8* %scevgep93.2.3, align 1
  %conv44.i679.2.3 = zext i8 %669 to i32
  %scevgep96.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %648, i64 0, i64 0, i64 2
  %670 = load i8, i8* %scevgep96.2.3, align 1
  %conv49.i684.2.3 = zext i8 %670 to i32
  %xor.i685.2.3 = xor i32 %conv44.i679.2.3, %conv49.i684.2.3
  %conv50.i686.2.3 = trunc i32 %xor.i685.2.3 to i8
  %scevgep100.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %649, i64 0, i64 0, i64 2
  store i8 %conv50.i686.2.3, i8* %scevgep100.2.3, align 1
  %671 = load i8, i8* %arrayidx56.i692.3, align 1
  %conv57.i693.2.3 = zext i8 %671 to i32
  %xor58.i694.2.3 = xor i32 %conv57.i693.2.3, 1
  %conv59.i695.2.3 = trunc i32 %xor58.i694.2.3 to i8
  %scevgep97.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %648, i64 0, i64 0, i64 2
  %672 = load i8, i8* %scevgep97.2.3, align 1
  %call64.i700.2.3 = call zeroext i8 @mult(i8 zeroext %conv59.i695.2.3, i8 zeroext %672) #3
  %scevgep104.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %650, i64 0, i64 0, i64 2
  store i8 %call64.i700.2.3, i8* %scevgep104.2.3, align 1
  %673 = load i8, i8* %arrayidx70.i706.3, align 1
  %scevgep101.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %649, i64 0, i64 0, i64 2
  %674 = load i8, i8* %scevgep101.2.3, align 1
  %call75.i711.2.3 = call zeroext i8 @mult(i8 zeroext %673, i8 zeroext %674) #3
  %scevgep108.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %651, i64 0, i64 0, i64 2
  store i8 %call75.i711.2.3, i8* %scevgep108.2.3, align 1
  %scevgep105.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %650, i64 0, i64 0, i64 2
  %675 = load i8, i8* %scevgep105.2.3, align 1
  %conv84.i720.2.3 = zext i8 %675 to i32
  %scevgep109.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %651, i64 0, i64 0, i64 2
  %676 = load i8, i8* %scevgep109.2.3, align 1
  %conv89.i725.2.3 = zext i8 %676 to i32
  %xor90.i726.2.3 = xor i32 %conv84.i720.2.3, %conv89.i725.2.3
  %conv91.i727.2.3 = trunc i32 %xor90.i726.2.3 to i8
  %scevgep112.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %652, i64 0, i64 0, i64 2
  store i8 %conv91.i727.2.3, i8* %scevgep112.2.3, align 1
  %677 = load i8, i8* %arraydecay20, align 1
  %678 = load i8, i8* %arraydecay21, align 1
  %call111.i744 = call zeroext i8 @mult(i8 zeroext %677, i8 zeroext %678) #3
  store i8 %call111.i744, i8* %y, align 1
  %scevgep84.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 1
  %679 = load i8, i8* %scevgep84.1, align 1
  %conv126.i756.1 = zext i8 %679 to i32
  %680 = load i8, i8* %y, align 1
  %conv129.i759.1 = zext i8 %680 to i32
  %xor130.i760.1 = xor i32 %conv129.i759.1, %conv126.i756.1
  %conv131.i761.1 = trunc i32 %xor130.i760.1 to i8
  store i8 %conv131.i761.1, i8* %y, align 1
  %scevgep84.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 2
  %681 = load i8, i8* %scevgep84.2, align 1
  %conv126.i756.2 = zext i8 %681 to i32
  %682 = load i8, i8* %y, align 1
  %conv129.i759.2 = zext i8 %682 to i32
  %xor130.i760.2 = xor i32 %conv129.i759.2, %conv126.i756.2
  %conv131.i761.2 = trunc i32 %xor130.i760.2 to i8
  store i8 %conv131.i761.2, i8* %y, align 1
  %scevgep84.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 3
  %683 = load i8, i8* %scevgep84.3, align 1
  %conv126.i756.3 = zext i8 %683 to i32
  %684 = load i8, i8* %y, align 1
  %conv129.i759.3 = zext i8 %684 to i32
  %xor130.i760.3 = xor i32 %conv129.i759.3, %conv126.i756.3
  %conv131.i761.3 = trunc i32 %xor130.i760.3 to i8
  store i8 %conv131.i761.3, i8* %y, align 1
  %scevgep83 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 1, i64 0
  %685 = bitcast i8* %scevgep83 to [4 x [4 x i8]]*
  %arrayidx108.i741.1 = getelementptr inbounds i8, i8* %arraydecay20, i64 1
  %686 = load i8, i8* %arrayidx108.i741.1, align 1
  %arrayidx110.i743.1 = getelementptr inbounds i8, i8* %arraydecay21, i64 1
  %687 = load i8, i8* %arrayidx110.i743.1, align 1
  %call111.i744.1 = call zeroext i8 @mult(i8 zeroext %686, i8 zeroext %687) #3
  %arrayidx113.i746.1 = getelementptr inbounds i8, i8* %y, i64 1
  store i8 %call111.i744.1, i8* %arrayidx113.i746.1, align 1
  %arrayidx128.i758.1 = getelementptr inbounds i8, i8* %y, i64 1
  %scevgep84.1386 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %685, i64 0, i64 0, i64 0
  %688 = load i8, i8* %scevgep84.1386, align 1
  %conv126.i756.1387 = zext i8 %688 to i32
  %689 = load i8, i8* %arrayidx128.i758.1, align 1
  %conv129.i759.1388 = zext i8 %689 to i32
  %xor130.i760.1389 = xor i32 %conv129.i759.1388, %conv126.i756.1387
  %conv131.i761.1390 = trunc i32 %xor130.i760.1389 to i8
  store i8 %conv131.i761.1390, i8* %arrayidx128.i758.1, align 1
  %scevgep84.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %685, i64 0, i64 0, i64 2
  %690 = load i8, i8* %scevgep84.2.1, align 1
  %conv126.i756.2.1 = zext i8 %690 to i32
  %691 = load i8, i8* %arrayidx128.i758.1, align 1
  %conv129.i759.2.1 = zext i8 %691 to i32
  %xor130.i760.2.1 = xor i32 %conv129.i759.2.1, %conv126.i756.2.1
  %conv131.i761.2.1 = trunc i32 %xor130.i760.2.1 to i8
  store i8 %conv131.i761.2.1, i8* %arrayidx128.i758.1, align 1
  %scevgep84.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %685, i64 0, i64 0, i64 3
  %692 = load i8, i8* %scevgep84.3.1, align 1
  %conv126.i756.3.1 = zext i8 %692 to i32
  %693 = load i8, i8* %arrayidx128.i758.1, align 1
  %conv129.i759.3.1 = zext i8 %693 to i32
  %xor130.i760.3.1 = xor i32 %conv129.i759.3.1, %conv126.i756.3.1
  %conv131.i761.3.1 = trunc i32 %xor130.i760.3.1 to i8
  store i8 %conv131.i761.3.1, i8* %arrayidx128.i758.1, align 1
  %scevgep83.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %685, i64 0, i64 1, i64 0
  %694 = bitcast i8* %scevgep83.1 to [4 x [4 x i8]]*
  %arrayidx108.i741.2 = getelementptr inbounds i8, i8* %arraydecay20, i64 2
  %695 = load i8, i8* %arrayidx108.i741.2, align 1
  %arrayidx110.i743.2 = getelementptr inbounds i8, i8* %arraydecay21, i64 2
  %696 = load i8, i8* %arrayidx110.i743.2, align 1
  %call111.i744.2 = call zeroext i8 @mult(i8 zeroext %695, i8 zeroext %696) #3
  %arrayidx113.i746.2 = getelementptr inbounds i8, i8* %y, i64 2
  store i8 %call111.i744.2, i8* %arrayidx113.i746.2, align 1
  %arrayidx128.i758.2 = getelementptr inbounds i8, i8* %y, i64 2
  %scevgep84.2395 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %694, i64 0, i64 0, i64 0
  %697 = load i8, i8* %scevgep84.2395, align 1
  %conv126.i756.2396 = zext i8 %697 to i32
  %698 = load i8, i8* %arrayidx128.i758.2, align 1
  %conv129.i759.2397 = zext i8 %698 to i32
  %xor130.i760.2398 = xor i32 %conv129.i759.2397, %conv126.i756.2396
  %conv131.i761.2399 = trunc i32 %xor130.i760.2398 to i8
  store i8 %conv131.i761.2399, i8* %arrayidx128.i758.2, align 1
  %scevgep84.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %694, i64 0, i64 0, i64 1
  %699 = load i8, i8* %scevgep84.1.2, align 1
  %conv126.i756.1.2 = zext i8 %699 to i32
  %700 = load i8, i8* %arrayidx128.i758.2, align 1
  %conv129.i759.1.2 = zext i8 %700 to i32
  %xor130.i760.1.2 = xor i32 %conv129.i759.1.2, %conv126.i756.1.2
  %conv131.i761.1.2 = trunc i32 %xor130.i760.1.2 to i8
  store i8 %conv131.i761.1.2, i8* %arrayidx128.i758.2, align 1
  %scevgep84.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %694, i64 0, i64 0, i64 3
  %701 = load i8, i8* %scevgep84.3.2, align 1
  %conv126.i756.3.2 = zext i8 %701 to i32
  %702 = load i8, i8* %arrayidx128.i758.2, align 1
  %conv129.i759.3.2 = zext i8 %702 to i32
  %xor130.i760.3.2 = xor i32 %conv129.i759.3.2, %conv126.i756.3.2
  %conv131.i761.3.2 = trunc i32 %xor130.i760.3.2 to i8
  store i8 %conv131.i761.3.2, i8* %arrayidx128.i758.2, align 1
  %scevgep83.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %694, i64 0, i64 1, i64 0
  %703 = bitcast i8* %scevgep83.2 to [4 x [4 x i8]]*
  %arrayidx108.i741.3 = getelementptr inbounds i8, i8* %arraydecay20, i64 3
  %704 = load i8, i8* %arrayidx108.i741.3, align 1
  %arrayidx110.i743.3 = getelementptr inbounds i8, i8* %arraydecay21, i64 3
  %705 = load i8, i8* %arrayidx110.i743.3, align 1
  %call111.i744.3 = call zeroext i8 @mult(i8 zeroext %704, i8 zeroext %705) #3
  %arrayidx113.i746.3 = getelementptr inbounds i8, i8* %y, i64 3
  store i8 %call111.i744.3, i8* %arrayidx113.i746.3, align 1
  %arrayidx128.i758.3 = getelementptr inbounds i8, i8* %y, i64 3
  %scevgep84.3404 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %703, i64 0, i64 0, i64 0
  %706 = load i8, i8* %scevgep84.3404, align 1
  %conv126.i756.3405 = zext i8 %706 to i32
  %707 = load i8, i8* %arrayidx128.i758.3, align 1
  %conv129.i759.3406 = zext i8 %707 to i32
  %xor130.i760.3407 = xor i32 %conv129.i759.3406, %conv126.i756.3405
  %conv131.i761.3408 = trunc i32 %xor130.i760.3407 to i8
  store i8 %conv131.i761.3408, i8* %arrayidx128.i758.3, align 1
  %scevgep84.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %703, i64 0, i64 0, i64 1
  %708 = load i8, i8* %scevgep84.1.3, align 1
  %conv126.i756.1.3 = zext i8 %708 to i32
  %709 = load i8, i8* %arrayidx128.i758.3, align 1
  %conv129.i759.1.3 = zext i8 %709 to i32
  %xor130.i760.1.3 = xor i32 %conv129.i759.1.3, %conv126.i756.1.3
  %conv131.i761.1.3 = trunc i32 %xor130.i760.1.3 to i8
  store i8 %conv131.i761.1.3, i8* %arrayidx128.i758.3, align 1
  %scevgep84.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %703, i64 0, i64 0, i64 2
  %710 = load i8, i8* %scevgep84.2.3, align 1
  %conv126.i756.2.3 = zext i8 %710 to i32
  %711 = load i8, i8* %arrayidx128.i758.3, align 1
  %conv129.i759.2.3 = zext i8 %711 to i32
  %xor130.i760.2.3 = xor i32 %conv129.i759.2.3, %conv126.i756.2.3
  %conv131.i761.2.3 = trunc i32 %xor130.i760.2.3 to i8
  store i8 %conv131.i761.2.3, i8* %arrayidx128.i758.3, align 1
  %call139.i767 = call zeroext i8 @mult(i8 zeroext %call.i614, i8 zeroext %call1.i615) #3
  %conv140.i768 = zext i8 %call139.i767 to i32
  %712 = load i8, i8* %y, align 1
  %scevgep74.1 = getelementptr i8, i8* %y, i64 1
  %713 = load i8, i8* %scevgep74.1, align 1
  %conv.i.i172.i775.1 = zext i8 %713 to i32
  %conv1.i.i173.i776.1 = zext i8 %712 to i32
  %xor.i.i174.i777.1 = xor i32 %conv1.i.i173.i776.1, %conv.i.i172.i775.1
  %conv2.i.i175.i778.1 = trunc i32 %xor.i.i174.i777.1 to i8
  %scevgep74.2 = getelementptr i8, i8* %y, i64 2
  %714 = load i8, i8* %scevgep74.2, align 1
  %conv.i.i172.i775.2 = zext i8 %714 to i32
  %conv1.i.i173.i776.2 = zext i8 %conv2.i.i175.i778.1 to i32
  %xor.i.i174.i777.2 = xor i32 %conv1.i.i173.i776.2, %conv.i.i172.i775.2
  %conv2.i.i175.i778.2 = trunc i32 %xor.i.i174.i777.2 to i8
  %scevgep74.3 = getelementptr i8, i8* %y, i64 3
  %715 = load i8, i8* %scevgep74.3, align 1
  %conv.i.i172.i775.3 = zext i8 %715 to i32
  %conv1.i.i173.i776.3 = zext i8 %conv2.i.i175.i778.2 to i32
  %xor.i.i174.i777.3 = xor i32 %conv1.i.i173.i776.3, %conv.i.i172.i775.3
  %conv2.i.i175.i778.3 = trunc i32 %xor.i.i174.i777.3 to i8
  %conv142.i781 = zext i8 %conv2.i.i175.i778.3 to i32
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
  %716 = load i8, i8* %y, align 1
  %scevgep.1 = getelementptr i8, i8* %y, i64 1
  %717 = load i8, i8* %scevgep.1, align 1
  %conv.i.i799.1 = zext i8 %717 to i32
  %conv1.i.i800.1 = zext i8 %716 to i32
  %xor.i.i801.1 = xor i32 %conv1.i.i800.1, %conv.i.i799.1
  %conv2.i.i802.1 = trunc i32 %xor.i.i801.1 to i8
  %scevgep.2 = getelementptr i8, i8* %y, i64 2
  %718 = load i8, i8* %scevgep.2, align 1
  %conv.i.i799.2 = zext i8 %718 to i32
  %conv1.i.i800.2 = zext i8 %conv2.i.i802.1 to i32
  %xor.i.i801.2 = xor i32 %conv1.i.i800.2, %conv.i.i799.2
  %conv2.i.i802.2 = trunc i32 %xor.i.i801.2 to i8
  %scevgep.3 = getelementptr i8, i8* %y, i64 3
  %719 = load i8, i8* %scevgep.3, align 1
  %conv.i.i799.3 = zext i8 %719 to i32
  %conv1.i.i800.3 = zext i8 %conv2.i.i802.2 to i32
  %xor.i.i801.3 = xor i32 %conv1.i.i800.3, %conv.i.i799.3
  %conv2.i.i802.3 = trunc i32 %xor.i.i801.3 to i8
  %conv25 = zext i8 %conv2.i.i802.3 to i32
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
  ret i8 %call.2
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_expd(i8* %x, i8* %y) #0 {
entry:
  %r.i = alloca [4 x [4 x i8]], align 16
  %s.i = alloca [4 x [4 x i8]], align 16
  %p0.i = alloca [4 x [4 x i8]], align 16
  %p1.i = alloca [4 x [4 x i8]], align 16
  %z.i = alloca [4 x [4 x i8]], align 16
  %z = alloca [4 x [4 x i8]], align 16
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %scevgep103.1 = getelementptr i8, i8* %x, i64 1
  %1 = load i8, i8* %scevgep103.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep103.2 = getelementptr i8, i8* %x, i64 2
  %2 = load i8, i8* %scevgep103.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %scevgep103.3 = getelementptr i8, i8* %x, i64 3
  %3 = load i8, i8* %scevgep103.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %conv2 = zext i8 %conv2.i.i.3 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %4 = load i8, i8* %x, align 1
  %scevgep99 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 0
  store i8 %4, i8* %scevgep99, align 1
  %scevgep98.1 = getelementptr i8, i8* %x, i64 1
  %5 = load i8, i8* %scevgep98.1, align 1
  %scevgep99.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 1
  store i8 %5, i8* %scevgep99.1, align 1
  %scevgep98.2 = getelementptr i8, i8* %x, i64 2
  %6 = load i8, i8* %scevgep98.2, align 1
  %scevgep99.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 2
  store i8 %6, i8* %scevgep99.2, align 1
  %scevgep98.3 = getelementptr i8, i8* %x, i64 3
  %7 = load i8, i8* %scevgep98.3, align 1
  %scevgep99.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 3
  store i8 %7, i8* %scevgep99.3, align 1
  %arrayidx6 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx6, i64 0, i64 0
  %arrayidx9 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 1
  %arraydecay10 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx9, i64 0, i64 0
  %call.i22 = call zeroext i8 (...) @rand() #3
  %call1.i = call zeroext i8 (...) @rand() #3
  %conv.i = zext i8 %call.i22 to i32
  %8 = load i8, i8* %x, align 1
  %scevgep31.1 = getelementptr i8, i8* %x, i64 1
  %9 = load i8, i8* %scevgep31.1, align 1
  %conv.i.i.i.1 = zext i8 %9 to i32
  %conv1.i.i.i.1 = zext i8 %8 to i32
  %xor.i.i.i.1 = xor i32 %conv1.i.i.i.1, %conv.i.i.i.1
  %conv2.i.i.i.1 = trunc i32 %xor.i.i.i.1 to i8
  %scevgep31.2 = getelementptr i8, i8* %x, i64 2
  %10 = load i8, i8* %scevgep31.2, align 1
  %conv.i.i.i.2 = zext i8 %10 to i32
  %conv1.i.i.i.2 = zext i8 %conv2.i.i.i.1 to i32
  %xor.i.i.i.2 = xor i32 %conv1.i.i.i.2, %conv.i.i.i.2
  %conv2.i.i.i.2 = trunc i32 %xor.i.i.i.2 to i8
  %scevgep31.3 = getelementptr i8, i8* %x, i64 3
  %11 = load i8, i8* %scevgep31.3, align 1
  %conv.i.i.i.3 = zext i8 %11 to i32
  %conv1.i.i.i.3 = zext i8 %conv2.i.i.i.2 to i32
  %xor.i.i.i.3 = xor i32 %conv1.i.i.i.3, %conv.i.i.i.3
  %conv2.i.i.i.3 = trunc i32 %xor.i.i.i.3 to i8
  %conv3.i = zext i8 %conv2.i.i.i.3 to i32
  %cmp.i23 = icmp eq i32 %conv.i, %conv3.i
  call void @assume(i1 zeroext %cmp.i23) #3
  %conv5.i = zext i8 %call1.i to i32
  %scevgep37 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 0
  %12 = load i8, i8* %scevgep37, align 1
  %scevgep37.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 1
  %13 = load i8, i8* %scevgep37.1, align 1
  %conv.i.i155.i.1 = zext i8 %13 to i32
  %conv1.i.i156.i.1 = zext i8 %12 to i32
  %xor.i.i157.i.1 = xor i32 %conv1.i.i156.i.1, %conv.i.i155.i.1
  %conv2.i.i158.i.1 = trunc i32 %xor.i.i157.i.1 to i8
  %scevgep37.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 2
  %14 = load i8, i8* %scevgep37.2, align 1
  %conv.i.i155.i.2 = zext i8 %14 to i32
  %conv1.i.i156.i.2 = zext i8 %conv2.i.i158.i.1 to i32
  %xor.i.i157.i.2 = xor i32 %conv1.i.i156.i.2, %conv.i.i155.i.2
  %conv2.i.i158.i.2 = trunc i32 %xor.i.i157.i.2 to i8
  %scevgep37.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 3
  %15 = load i8, i8* %scevgep37.3, align 1
  %conv.i.i155.i.3 = zext i8 %15 to i32
  %conv1.i.i156.i.3 = zext i8 %conv2.i.i158.i.2 to i32
  %xor.i.i157.i.3 = xor i32 %conv1.i.i156.i.3, %conv.i.i155.i.3
  %conv2.i.i158.i.3 = trunc i32 %xor.i.i157.i.3 to i8
  %conv7.i = zext i8 %conv2.i.i158.i.3 to i32
  %cmp8.i = icmp eq i32 %conv5.i, %conv7.i
  call void @assume(i1 zeroext %cmp8.i) #3
  %call16.i = call zeroext i8 (...) @rand() #3
  %scevgep43 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i, i8* %scevgep43, align 1
  %scevgep44 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %16 = load i8, i8* %scevgep44, align 1
  %scevgep45 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %16, i8* %scevgep45, align 1
  %call16.i.1536 = call zeroext i8 (...) @rand() #3
  %scevgep43.1537 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  store i8 %call16.i.1536, i8* %scevgep43.1537, align 1
  %scevgep44.1538 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %17 = load i8, i8* %scevgep44.1538, align 1
  %scevgep45.1539 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 2, i64 0
  store i8 %17, i8* %scevgep45.1539, align 1
  %call16.i.2541 = call zeroext i8 (...) @rand() #3
  %scevgep43.2542 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  store i8 %call16.i.2541, i8* %scevgep43.2542, align 1
  %scevgep44.2543 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %18 = load i8, i8* %scevgep44.2543, align 1
  %scevgep45.2544 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 3, i64 0
  store i8 %18, i8* %scevgep45.2544, align 1
  %scevgep40 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 1
  %19 = bitcast i8* %scevgep40 to [4 x [4 x i8]]*
  %call16.i.1 = call zeroext i8 (...) @rand() #3
  %scevgep43.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %19, i64 0, i64 0, i64 1
  store i8 %call16.i.1, i8* %scevgep43.1, align 1
  %scevgep44.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %19, i64 0, i64 0, i64 1
  %20 = load i8, i8* %scevgep44.1, align 1
  %scevgep45.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %19, i64 0, i64 1, i64 0
  store i8 %20, i8* %scevgep45.1, align 1
  %call16.i.1.1531 = call zeroext i8 (...) @rand() #3
  %scevgep43.1.1532 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %19, i64 0, i64 0, i64 2
  store i8 %call16.i.1.1531, i8* %scevgep43.1.1532, align 1
  %scevgep44.1.1533 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %19, i64 0, i64 0, i64 2
  %21 = load i8, i8* %scevgep44.1.1533, align 1
  %scevgep45.1.1534 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %19, i64 0, i64 2, i64 0
  store i8 %21, i8* %scevgep45.1.1534, align 1
  %scevgep40.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %19, i64 0, i64 1, i64 1
  %22 = bitcast i8* %scevgep40.1 to [4 x [4 x i8]]*
  %call16.i.2 = call zeroext i8 (...) @rand() #3
  %scevgep43.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %22, i64 0, i64 0, i64 1
  store i8 %call16.i.2, i8* %scevgep43.2, align 1
  %scevgep44.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %22, i64 0, i64 0, i64 1
  %23 = load i8, i8* %scevgep44.2, align 1
  %scevgep45.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %22, i64 0, i64 1, i64 0
  store i8 %23, i8* %scevgep45.2, align 1
  %scevgep56.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 1
  %24 = load i8, i8* %scevgep56.1, align 1
  %conv44.i.1 = zext i8 %24 to i32
  %scevgep59.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %25 = load i8, i8* %scevgep59.1, align 1
  %conv49.i.1 = zext i8 %25 to i32
  %xor.i.1 = xor i32 %conv44.i.1, %conv49.i.1
  %conv50.i.1 = trunc i32 %xor.i.1 to i8
  %scevgep63.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i.1, i8* %scevgep63.1, align 1
  %26 = load i8, i8* %x, align 1
  %conv57.i.1 = zext i8 %26 to i32
  %xor58.i.1 = xor i32 %conv57.i.1, 1
  %conv59.i.1 = trunc i32 %xor58.i.1 to i8
  %scevgep60.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %27 = load i8, i8* %scevgep60.1, align 1
  %call64.i.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.1, i8 zeroext %27) #3
  %scevgep67.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i.1, i8* %scevgep67.1, align 1
  %28 = load i8, i8* %x, align 1
  %scevgep64.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 1
  %29 = load i8, i8* %scevgep64.1, align 1
  %call75.i.1 = call zeroext i8 @mult(i8 zeroext %28, i8 zeroext %29) #3
  %scevgep71.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i.1, i8* %scevgep71.1, align 1
  %scevgep68.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %30 = load i8, i8* %scevgep68.1, align 1
  %conv84.i.1 = zext i8 %30 to i32
  %scevgep72.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %31 = load i8, i8* %scevgep72.1, align 1
  %conv89.i.1 = zext i8 %31 to i32
  %xor90.i.1 = xor i32 %conv84.i.1, %conv89.i.1
  %conv91.i.1 = trunc i32 %xor90.i.1 to i8
  %scevgep75.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i.1, i8* %scevgep75.1, align 1
  %scevgep56.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 2
  %32 = load i8, i8* %scevgep56.2, align 1
  %conv44.i.2 = zext i8 %32 to i32
  %scevgep59.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %33 = load i8, i8* %scevgep59.2, align 1
  %conv49.i.2 = zext i8 %33 to i32
  %xor.i.2 = xor i32 %conv44.i.2, %conv49.i.2
  %conv50.i.2 = trunc i32 %xor.i.2 to i8
  %scevgep63.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 2
  store i8 %conv50.i.2, i8* %scevgep63.2, align 1
  %34 = load i8, i8* %x, align 1
  %conv57.i.2 = zext i8 %34 to i32
  %xor58.i.2 = xor i32 %conv57.i.2, 1
  %conv59.i.2 = trunc i32 %xor58.i.2 to i8
  %scevgep60.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %35 = load i8, i8* %scevgep60.2, align 1
  %call64.i.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.2, i8 zeroext %35) #3
  %scevgep67.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 2
  store i8 %call64.i.2, i8* %scevgep67.2, align 1
  %36 = load i8, i8* %x, align 1
  %scevgep64.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 2
  %37 = load i8, i8* %scevgep64.2, align 1
  %call75.i.2 = call zeroext i8 @mult(i8 zeroext %36, i8 zeroext %37) #3
  %scevgep71.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 2
  store i8 %call75.i.2, i8* %scevgep71.2, align 1
  %scevgep68.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 2
  %38 = load i8, i8* %scevgep68.2, align 1
  %conv84.i.2 = zext i8 %38 to i32
  %scevgep72.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 2
  %39 = load i8, i8* %scevgep72.2, align 1
  %conv89.i.2 = zext i8 %39 to i32
  %xor90.i.2 = xor i32 %conv84.i.2, %conv89.i.2
  %conv91.i.2 = trunc i32 %xor90.i.2 to i8
  %scevgep75.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 2
  store i8 %conv91.i.2, i8* %scevgep75.2, align 1
  %scevgep56.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 3
  %40 = load i8, i8* %scevgep56.3, align 1
  %conv44.i.3 = zext i8 %40 to i32
  %scevgep59.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %41 = load i8, i8* %scevgep59.3, align 1
  %conv49.i.3 = zext i8 %41 to i32
  %xor.i.3 = xor i32 %conv44.i.3, %conv49.i.3
  %conv50.i.3 = trunc i32 %xor.i.3 to i8
  %scevgep63.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 3
  store i8 %conv50.i.3, i8* %scevgep63.3, align 1
  %42 = load i8, i8* %x, align 1
  %conv57.i.3 = zext i8 %42 to i32
  %xor58.i.3 = xor i32 %conv57.i.3, 1
  %conv59.i.3 = trunc i32 %xor58.i.3 to i8
  %scevgep60.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %43 = load i8, i8* %scevgep60.3, align 1
  %call64.i.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.3, i8 zeroext %43) #3
  %scevgep67.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 3
  store i8 %call64.i.3, i8* %scevgep67.3, align 1
  %44 = load i8, i8* %x, align 1
  %scevgep64.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 3
  %45 = load i8, i8* %scevgep64.3, align 1
  %call75.i.3 = call zeroext i8 @mult(i8 zeroext %44, i8 zeroext %45) #3
  %scevgep71.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 3
  store i8 %call75.i.3, i8* %scevgep71.3, align 1
  %scevgep68.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 3
  %46 = load i8, i8* %scevgep68.3, align 1
  %conv84.i.3 = zext i8 %46 to i32
  %scevgep72.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 3
  %47 = load i8, i8* %scevgep72.3, align 1
  %conv89.i.3 = zext i8 %47 to i32
  %xor90.i.3 = xor i32 %conv84.i.3, %conv89.i.3
  %conv91.i.3 = trunc i32 %xor90.i.3 to i8
  %scevgep75.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 3
  store i8 %conv91.i.3, i8* %scevgep75.3, align 1
  %scevgep58 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  %48 = bitcast i8* %scevgep58 to [4 x [4 x i8]]*
  %scevgep62 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 1, i64 0
  %49 = bitcast i8* %scevgep62 to [4 x [4 x i8]]*
  %scevgep66 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %50 = bitcast i8* %scevgep66 to [4 x [4 x i8]]*
  %scevgep70 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %51 = bitcast i8* %scevgep70 to [4 x [4 x i8]]*
  %scevgep74 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 1, i64 0
  %52 = bitcast i8* %scevgep74 to [4 x [4 x i8]]*
  %arrayidx56.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %arrayidx70.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %scevgep56.1107 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 0
  %53 = load i8, i8* %scevgep56.1107, align 1
  %conv44.i.1108 = zext i8 %53 to i32
  %scevgep59.1109 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %48, i64 0, i64 0, i64 0
  %54 = load i8, i8* %scevgep59.1109, align 1
  %conv49.i.1110 = zext i8 %54 to i32
  %xor.i.1111 = xor i32 %conv44.i.1108, %conv49.i.1110
  %conv50.i.1112 = trunc i32 %xor.i.1111 to i8
  %scevgep63.1113 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %49, i64 0, i64 0, i64 0
  store i8 %conv50.i.1112, i8* %scevgep63.1113, align 1
  %55 = load i8, i8* %arrayidx56.i.1, align 1
  %conv57.i.1114 = zext i8 %55 to i32
  %xor58.i.1115 = xor i32 %conv57.i.1114, 1
  %conv59.i.1116 = trunc i32 %xor58.i.1115 to i8
  %scevgep60.1117 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %48, i64 0, i64 0, i64 0
  %56 = load i8, i8* %scevgep60.1117, align 1
  %call64.i.1118 = call zeroext i8 @mult(i8 zeroext %conv59.i.1116, i8 zeroext %56) #3
  %scevgep67.1119 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %50, i64 0, i64 0, i64 0
  store i8 %call64.i.1118, i8* %scevgep67.1119, align 1
  %57 = load i8, i8* %arrayidx70.i.1, align 1
  %scevgep64.1120 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %49, i64 0, i64 0, i64 0
  %58 = load i8, i8* %scevgep64.1120, align 1
  %call75.i.1121 = call zeroext i8 @mult(i8 zeroext %57, i8 zeroext %58) #3
  %scevgep71.1122 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %51, i64 0, i64 0, i64 0
  store i8 %call75.i.1121, i8* %scevgep71.1122, align 1
  %scevgep68.1123 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %50, i64 0, i64 0, i64 0
  %59 = load i8, i8* %scevgep68.1123, align 1
  %conv84.i.1124 = zext i8 %59 to i32
  %scevgep72.1125 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %51, i64 0, i64 0, i64 0
  %60 = load i8, i8* %scevgep72.1125, align 1
  %conv89.i.1126 = zext i8 %60 to i32
  %xor90.i.1127 = xor i32 %conv84.i.1124, %conv89.i.1126
  %conv91.i.1128 = trunc i32 %xor90.i.1127 to i8
  %scevgep75.1129 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %52, i64 0, i64 0, i64 0
  store i8 %conv91.i.1128, i8* %scevgep75.1129, align 1
  %scevgep56.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 2
  %61 = load i8, i8* %scevgep56.2.1, align 1
  %conv44.i.2.1 = zext i8 %61 to i32
  %scevgep59.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %48, i64 0, i64 0, i64 2
  %62 = load i8, i8* %scevgep59.2.1, align 1
  %conv49.i.2.1 = zext i8 %62 to i32
  %xor.i.2.1 = xor i32 %conv44.i.2.1, %conv49.i.2.1
  %conv50.i.2.1 = trunc i32 %xor.i.2.1 to i8
  %scevgep63.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %49, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.1, i8* %scevgep63.2.1, align 1
  %63 = load i8, i8* %arrayidx56.i.1, align 1
  %conv57.i.2.1 = zext i8 %63 to i32
  %xor58.i.2.1 = xor i32 %conv57.i.2.1, 1
  %conv59.i.2.1 = trunc i32 %xor58.i.2.1 to i8
  %scevgep60.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %48, i64 0, i64 0, i64 2
  %64 = load i8, i8* %scevgep60.2.1, align 1
  %call64.i.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.1, i8 zeroext %64) #3
  %scevgep67.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %50, i64 0, i64 0, i64 2
  store i8 %call64.i.2.1, i8* %scevgep67.2.1, align 1
  %65 = load i8, i8* %arrayidx70.i.1, align 1
  %scevgep64.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %49, i64 0, i64 0, i64 2
  %66 = load i8, i8* %scevgep64.2.1, align 1
  %call75.i.2.1 = call zeroext i8 @mult(i8 zeroext %65, i8 zeroext %66) #3
  %scevgep71.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %51, i64 0, i64 0, i64 2
  store i8 %call75.i.2.1, i8* %scevgep71.2.1, align 1
  %scevgep68.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %50, i64 0, i64 0, i64 2
  %67 = load i8, i8* %scevgep68.2.1, align 1
  %conv84.i.2.1 = zext i8 %67 to i32
  %scevgep72.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %51, i64 0, i64 0, i64 2
  %68 = load i8, i8* %scevgep72.2.1, align 1
  %conv89.i.2.1 = zext i8 %68 to i32
  %xor90.i.2.1 = xor i32 %conv84.i.2.1, %conv89.i.2.1
  %conv91.i.2.1 = trunc i32 %xor90.i.2.1 to i8
  %scevgep75.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %52, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.1, i8* %scevgep75.2.1, align 1
  %scevgep56.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 3
  %69 = load i8, i8* %scevgep56.3.1, align 1
  %conv44.i.3.1 = zext i8 %69 to i32
  %scevgep59.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %48, i64 0, i64 0, i64 3
  %70 = load i8, i8* %scevgep59.3.1, align 1
  %conv49.i.3.1 = zext i8 %70 to i32
  %xor.i.3.1 = xor i32 %conv44.i.3.1, %conv49.i.3.1
  %conv50.i.3.1 = trunc i32 %xor.i.3.1 to i8
  %scevgep63.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %49, i64 0, i64 0, i64 3
  store i8 %conv50.i.3.1, i8* %scevgep63.3.1, align 1
  %71 = load i8, i8* %arrayidx56.i.1, align 1
  %conv57.i.3.1 = zext i8 %71 to i32
  %xor58.i.3.1 = xor i32 %conv57.i.3.1, 1
  %conv59.i.3.1 = trunc i32 %xor58.i.3.1 to i8
  %scevgep60.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %48, i64 0, i64 0, i64 3
  %72 = load i8, i8* %scevgep60.3.1, align 1
  %call64.i.3.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.3.1, i8 zeroext %72) #3
  %scevgep67.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %50, i64 0, i64 0, i64 3
  store i8 %call64.i.3.1, i8* %scevgep67.3.1, align 1
  %73 = load i8, i8* %arrayidx70.i.1, align 1
  %scevgep64.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %49, i64 0, i64 0, i64 3
  %74 = load i8, i8* %scevgep64.3.1, align 1
  %call75.i.3.1 = call zeroext i8 @mult(i8 zeroext %73, i8 zeroext %74) #3
  %scevgep71.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %51, i64 0, i64 0, i64 3
  store i8 %call75.i.3.1, i8* %scevgep71.3.1, align 1
  %scevgep68.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %50, i64 0, i64 0, i64 3
  %75 = load i8, i8* %scevgep68.3.1, align 1
  %conv84.i.3.1 = zext i8 %75 to i32
  %scevgep72.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %51, i64 0, i64 0, i64 3
  %76 = load i8, i8* %scevgep72.3.1, align 1
  %conv89.i.3.1 = zext i8 %76 to i32
  %xor90.i.3.1 = xor i32 %conv84.i.3.1, %conv89.i.3.1
  %conv91.i.3.1 = trunc i32 %xor90.i.3.1 to i8
  %scevgep75.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %52, i64 0, i64 0, i64 3
  store i8 %conv91.i.3.1, i8* %scevgep75.3.1, align 1
  %scevgep58.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %48, i64 0, i64 1, i64 0
  %77 = bitcast i8* %scevgep58.1 to [4 x [4 x i8]]*
  %scevgep62.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %49, i64 0, i64 1, i64 0
  %78 = bitcast i8* %scevgep62.1 to [4 x [4 x i8]]*
  %scevgep66.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %50, i64 0, i64 1, i64 0
  %79 = bitcast i8* %scevgep66.1 to [4 x [4 x i8]]*
  %scevgep70.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %51, i64 0, i64 1, i64 0
  %80 = bitcast i8* %scevgep70.1 to [4 x [4 x i8]]*
  %scevgep74.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %52, i64 0, i64 1, i64 0
  %81 = bitcast i8* %scevgep74.1 to [4 x [4 x i8]]*
  %arrayidx56.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %arrayidx70.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %scevgep56.2134 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 0
  %82 = load i8, i8* %scevgep56.2134, align 1
  %conv44.i.2135 = zext i8 %82 to i32
  %scevgep59.2136 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %77, i64 0, i64 0, i64 0
  %83 = load i8, i8* %scevgep59.2136, align 1
  %conv49.i.2137 = zext i8 %83 to i32
  %xor.i.2138 = xor i32 %conv44.i.2135, %conv49.i.2137
  %conv50.i.2139 = trunc i32 %xor.i.2138 to i8
  %scevgep63.2140 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %78, i64 0, i64 0, i64 0
  store i8 %conv50.i.2139, i8* %scevgep63.2140, align 1
  %84 = load i8, i8* %arrayidx56.i.2, align 1
  %conv57.i.2141 = zext i8 %84 to i32
  %xor58.i.2142 = xor i32 %conv57.i.2141, 1
  %conv59.i.2143 = trunc i32 %xor58.i.2142 to i8
  %scevgep60.2144 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %77, i64 0, i64 0, i64 0
  %85 = load i8, i8* %scevgep60.2144, align 1
  %call64.i.2145 = call zeroext i8 @mult(i8 zeroext %conv59.i.2143, i8 zeroext %85) #3
  %scevgep67.2146 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %79, i64 0, i64 0, i64 0
  store i8 %call64.i.2145, i8* %scevgep67.2146, align 1
  %86 = load i8, i8* %arrayidx70.i.2, align 1
  %scevgep64.2147 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %78, i64 0, i64 0, i64 0
  %87 = load i8, i8* %scevgep64.2147, align 1
  %call75.i.2148 = call zeroext i8 @mult(i8 zeroext %86, i8 zeroext %87) #3
  %scevgep71.2149 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %80, i64 0, i64 0, i64 0
  store i8 %call75.i.2148, i8* %scevgep71.2149, align 1
  %scevgep68.2150 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %79, i64 0, i64 0, i64 0
  %88 = load i8, i8* %scevgep68.2150, align 1
  %conv84.i.2151 = zext i8 %88 to i32
  %scevgep72.2152 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %80, i64 0, i64 0, i64 0
  %89 = load i8, i8* %scevgep72.2152, align 1
  %conv89.i.2153 = zext i8 %89 to i32
  %xor90.i.2154 = xor i32 %conv84.i.2151, %conv89.i.2153
  %conv91.i.2155 = trunc i32 %xor90.i.2154 to i8
  %scevgep75.2156 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %81, i64 0, i64 0, i64 0
  store i8 %conv91.i.2155, i8* %scevgep75.2156, align 1
  %scevgep56.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 1
  %90 = load i8, i8* %scevgep56.1.2, align 1
  %conv44.i.1.2 = zext i8 %90 to i32
  %scevgep59.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %77, i64 0, i64 0, i64 1
  %91 = load i8, i8* %scevgep59.1.2, align 1
  %conv49.i.1.2 = zext i8 %91 to i32
  %xor.i.1.2 = xor i32 %conv44.i.1.2, %conv49.i.1.2
  %conv50.i.1.2 = trunc i32 %xor.i.1.2 to i8
  %scevgep63.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %78, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.2, i8* %scevgep63.1.2, align 1
  %92 = load i8, i8* %arrayidx56.i.2, align 1
  %conv57.i.1.2 = zext i8 %92 to i32
  %xor58.i.1.2 = xor i32 %conv57.i.1.2, 1
  %conv59.i.1.2 = trunc i32 %xor58.i.1.2 to i8
  %scevgep60.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %77, i64 0, i64 0, i64 1
  %93 = load i8, i8* %scevgep60.1.2, align 1
  %call64.i.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.2, i8 zeroext %93) #3
  %scevgep67.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %79, i64 0, i64 0, i64 1
  store i8 %call64.i.1.2, i8* %scevgep67.1.2, align 1
  %94 = load i8, i8* %arrayidx70.i.2, align 1
  %scevgep64.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %78, i64 0, i64 0, i64 1
  %95 = load i8, i8* %scevgep64.1.2, align 1
  %call75.i.1.2 = call zeroext i8 @mult(i8 zeroext %94, i8 zeroext %95) #3
  %scevgep71.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %80, i64 0, i64 0, i64 1
  store i8 %call75.i.1.2, i8* %scevgep71.1.2, align 1
  %scevgep68.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %79, i64 0, i64 0, i64 1
  %96 = load i8, i8* %scevgep68.1.2, align 1
  %conv84.i.1.2 = zext i8 %96 to i32
  %scevgep72.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %80, i64 0, i64 0, i64 1
  %97 = load i8, i8* %scevgep72.1.2, align 1
  %conv89.i.1.2 = zext i8 %97 to i32
  %xor90.i.1.2 = xor i32 %conv84.i.1.2, %conv89.i.1.2
  %conv91.i.1.2 = trunc i32 %xor90.i.1.2 to i8
  %scevgep75.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %81, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.2, i8* %scevgep75.1.2, align 1
  %scevgep56.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 3
  %98 = load i8, i8* %scevgep56.3.2, align 1
  %conv44.i.3.2 = zext i8 %98 to i32
  %scevgep59.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %77, i64 0, i64 0, i64 3
  %99 = load i8, i8* %scevgep59.3.2, align 1
  %conv49.i.3.2 = zext i8 %99 to i32
  %xor.i.3.2 = xor i32 %conv44.i.3.2, %conv49.i.3.2
  %conv50.i.3.2 = trunc i32 %xor.i.3.2 to i8
  %scevgep63.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %78, i64 0, i64 0, i64 3
  store i8 %conv50.i.3.2, i8* %scevgep63.3.2, align 1
  %100 = load i8, i8* %arrayidx56.i.2, align 1
  %conv57.i.3.2 = zext i8 %100 to i32
  %xor58.i.3.2 = xor i32 %conv57.i.3.2, 1
  %conv59.i.3.2 = trunc i32 %xor58.i.3.2 to i8
  %scevgep60.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %77, i64 0, i64 0, i64 3
  %101 = load i8, i8* %scevgep60.3.2, align 1
  %call64.i.3.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.3.2, i8 zeroext %101) #3
  %scevgep67.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %79, i64 0, i64 0, i64 3
  store i8 %call64.i.3.2, i8* %scevgep67.3.2, align 1
  %102 = load i8, i8* %arrayidx70.i.2, align 1
  %scevgep64.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %78, i64 0, i64 0, i64 3
  %103 = load i8, i8* %scevgep64.3.2, align 1
  %call75.i.3.2 = call zeroext i8 @mult(i8 zeroext %102, i8 zeroext %103) #3
  %scevgep71.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %80, i64 0, i64 0, i64 3
  store i8 %call75.i.3.2, i8* %scevgep71.3.2, align 1
  %scevgep68.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %79, i64 0, i64 0, i64 3
  %104 = load i8, i8* %scevgep68.3.2, align 1
  %conv84.i.3.2 = zext i8 %104 to i32
  %scevgep72.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %80, i64 0, i64 0, i64 3
  %105 = load i8, i8* %scevgep72.3.2, align 1
  %conv89.i.3.2 = zext i8 %105 to i32
  %xor90.i.3.2 = xor i32 %conv84.i.3.2, %conv89.i.3.2
  %conv91.i.3.2 = trunc i32 %xor90.i.3.2 to i8
  %scevgep75.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %81, i64 0, i64 0, i64 3
  store i8 %conv91.i.3.2, i8* %scevgep75.3.2, align 1
  %scevgep58.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %77, i64 0, i64 1, i64 0
  %106 = bitcast i8* %scevgep58.2 to [4 x [4 x i8]]*
  %scevgep62.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %78, i64 0, i64 1, i64 0
  %107 = bitcast i8* %scevgep62.2 to [4 x [4 x i8]]*
  %scevgep66.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %79, i64 0, i64 1, i64 0
  %108 = bitcast i8* %scevgep66.2 to [4 x [4 x i8]]*
  %scevgep70.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %80, i64 0, i64 1, i64 0
  %109 = bitcast i8* %scevgep70.2 to [4 x [4 x i8]]*
  %scevgep74.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %81, i64 0, i64 1, i64 0
  %110 = bitcast i8* %scevgep74.2 to [4 x [4 x i8]]*
  %arrayidx56.i.3 = getelementptr inbounds i8, i8* %x, i64 3
  %arrayidx70.i.3 = getelementptr inbounds i8, i8* %x, i64 3
  %scevgep56.3161 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 0
  %111 = load i8, i8* %scevgep56.3161, align 1
  %conv44.i.3162 = zext i8 %111 to i32
  %scevgep59.3163 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %106, i64 0, i64 0, i64 0
  %112 = load i8, i8* %scevgep59.3163, align 1
  %conv49.i.3164 = zext i8 %112 to i32
  %xor.i.3165 = xor i32 %conv44.i.3162, %conv49.i.3164
  %conv50.i.3166 = trunc i32 %xor.i.3165 to i8
  %scevgep63.3167 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %107, i64 0, i64 0, i64 0
  store i8 %conv50.i.3166, i8* %scevgep63.3167, align 1
  %113 = load i8, i8* %arrayidx56.i.3, align 1
  %conv57.i.3168 = zext i8 %113 to i32
  %xor58.i.3169 = xor i32 %conv57.i.3168, 1
  %conv59.i.3170 = trunc i32 %xor58.i.3169 to i8
  %scevgep60.3171 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %106, i64 0, i64 0, i64 0
  %114 = load i8, i8* %scevgep60.3171, align 1
  %call64.i.3172 = call zeroext i8 @mult(i8 zeroext %conv59.i.3170, i8 zeroext %114) #3
  %scevgep67.3173 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %108, i64 0, i64 0, i64 0
  store i8 %call64.i.3172, i8* %scevgep67.3173, align 1
  %115 = load i8, i8* %arrayidx70.i.3, align 1
  %scevgep64.3174 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %107, i64 0, i64 0, i64 0
  %116 = load i8, i8* %scevgep64.3174, align 1
  %call75.i.3175 = call zeroext i8 @mult(i8 zeroext %115, i8 zeroext %116) #3
  %scevgep71.3176 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %109, i64 0, i64 0, i64 0
  store i8 %call75.i.3175, i8* %scevgep71.3176, align 1
  %scevgep68.3177 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %108, i64 0, i64 0, i64 0
  %117 = load i8, i8* %scevgep68.3177, align 1
  %conv84.i.3178 = zext i8 %117 to i32
  %scevgep72.3179 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %109, i64 0, i64 0, i64 0
  %118 = load i8, i8* %scevgep72.3179, align 1
  %conv89.i.3180 = zext i8 %118 to i32
  %xor90.i.3181 = xor i32 %conv84.i.3178, %conv89.i.3180
  %conv91.i.3182 = trunc i32 %xor90.i.3181 to i8
  %scevgep75.3183 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %110, i64 0, i64 0, i64 0
  store i8 %conv91.i.3182, i8* %scevgep75.3183, align 1
  %scevgep56.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 1
  %119 = load i8, i8* %scevgep56.1.3, align 1
  %conv44.i.1.3 = zext i8 %119 to i32
  %scevgep59.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %106, i64 0, i64 0, i64 1
  %120 = load i8, i8* %scevgep59.1.3, align 1
  %conv49.i.1.3 = zext i8 %120 to i32
  %xor.i.1.3 = xor i32 %conv44.i.1.3, %conv49.i.1.3
  %conv50.i.1.3 = trunc i32 %xor.i.1.3 to i8
  %scevgep63.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %107, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.3, i8* %scevgep63.1.3, align 1
  %121 = load i8, i8* %arrayidx56.i.3, align 1
  %conv57.i.1.3 = zext i8 %121 to i32
  %xor58.i.1.3 = xor i32 %conv57.i.1.3, 1
  %conv59.i.1.3 = trunc i32 %xor58.i.1.3 to i8
  %scevgep60.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %106, i64 0, i64 0, i64 1
  %122 = load i8, i8* %scevgep60.1.3, align 1
  %call64.i.1.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.3, i8 zeroext %122) #3
  %scevgep67.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %108, i64 0, i64 0, i64 1
  store i8 %call64.i.1.3, i8* %scevgep67.1.3, align 1
  %123 = load i8, i8* %arrayidx70.i.3, align 1
  %scevgep64.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %107, i64 0, i64 0, i64 1
  %124 = load i8, i8* %scevgep64.1.3, align 1
  %call75.i.1.3 = call zeroext i8 @mult(i8 zeroext %123, i8 zeroext %124) #3
  %scevgep71.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %109, i64 0, i64 0, i64 1
  store i8 %call75.i.1.3, i8* %scevgep71.1.3, align 1
  %scevgep68.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %108, i64 0, i64 0, i64 1
  %125 = load i8, i8* %scevgep68.1.3, align 1
  %conv84.i.1.3 = zext i8 %125 to i32
  %scevgep72.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %109, i64 0, i64 0, i64 1
  %126 = load i8, i8* %scevgep72.1.3, align 1
  %conv89.i.1.3 = zext i8 %126 to i32
  %xor90.i.1.3 = xor i32 %conv84.i.1.3, %conv89.i.1.3
  %conv91.i.1.3 = trunc i32 %xor90.i.1.3 to i8
  %scevgep75.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %110, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.3, i8* %scevgep75.1.3, align 1
  %scevgep56.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 2
  %127 = load i8, i8* %scevgep56.2.3, align 1
  %conv44.i.2.3 = zext i8 %127 to i32
  %scevgep59.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %106, i64 0, i64 0, i64 2
  %128 = load i8, i8* %scevgep59.2.3, align 1
  %conv49.i.2.3 = zext i8 %128 to i32
  %xor.i.2.3 = xor i32 %conv44.i.2.3, %conv49.i.2.3
  %conv50.i.2.3 = trunc i32 %xor.i.2.3 to i8
  %scevgep63.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %107, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.3, i8* %scevgep63.2.3, align 1
  %129 = load i8, i8* %arrayidx56.i.3, align 1
  %conv57.i.2.3 = zext i8 %129 to i32
  %xor58.i.2.3 = xor i32 %conv57.i.2.3, 1
  %conv59.i.2.3 = trunc i32 %xor58.i.2.3 to i8
  %scevgep60.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %106, i64 0, i64 0, i64 2
  %130 = load i8, i8* %scevgep60.2.3, align 1
  %call64.i.2.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.3, i8 zeroext %130) #3
  %scevgep67.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %108, i64 0, i64 0, i64 2
  store i8 %call64.i.2.3, i8* %scevgep67.2.3, align 1
  %131 = load i8, i8* %arrayidx70.i.3, align 1
  %scevgep64.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %107, i64 0, i64 0, i64 2
  %132 = load i8, i8* %scevgep64.2.3, align 1
  %call75.i.2.3 = call zeroext i8 @mult(i8 zeroext %131, i8 zeroext %132) #3
  %scevgep71.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %109, i64 0, i64 0, i64 2
  store i8 %call75.i.2.3, i8* %scevgep71.2.3, align 1
  %scevgep68.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %108, i64 0, i64 0, i64 2
  %133 = load i8, i8* %scevgep68.2.3, align 1
  %conv84.i.2.3 = zext i8 %133 to i32
  %scevgep72.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %109, i64 0, i64 0, i64 2
  %134 = load i8, i8* %scevgep72.2.3, align 1
  %conv89.i.2.3 = zext i8 %134 to i32
  %xor90.i.2.3 = xor i32 %conv84.i.2.3, %conv89.i.2.3
  %conv91.i.2.3 = trunc i32 %xor90.i.2.3 to i8
  %scevgep75.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %110, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.3, i8* %scevgep75.2.3, align 1
  %135 = load i8, i8* %x, align 1
  %136 = load i8, i8* %arraydecay7, align 1
  %call111.i = call zeroext i8 @mult(i8 zeroext %135, i8 zeroext %136) #3
  store i8 %call111.i, i8* %arraydecay10, align 1
  %scevgep87.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 1
  %137 = load i8, i8* %scevgep87.1, align 1
  %conv126.i.1 = zext i8 %137 to i32
  %138 = load i8, i8* %arraydecay10, align 1
  %conv129.i.1 = zext i8 %138 to i32
  %xor130.i.1 = xor i32 %conv129.i.1, %conv126.i.1
  %conv131.i.1 = trunc i32 %xor130.i.1 to i8
  store i8 %conv131.i.1, i8* %arraydecay10, align 1
  %scevgep87.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 2
  %139 = load i8, i8* %scevgep87.2, align 1
  %conv126.i.2 = zext i8 %139 to i32
  %140 = load i8, i8* %arraydecay10, align 1
  %conv129.i.2 = zext i8 %140 to i32
  %xor130.i.2 = xor i32 %conv129.i.2, %conv126.i.2
  %conv131.i.2 = trunc i32 %xor130.i.2 to i8
  store i8 %conv131.i.2, i8* %arraydecay10, align 1
  %scevgep87.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 3
  %141 = load i8, i8* %scevgep87.3, align 1
  %conv126.i.3 = zext i8 %141 to i32
  %142 = load i8, i8* %arraydecay10, align 1
  %conv129.i.3 = zext i8 %142 to i32
  %xor130.i.3 = xor i32 %conv129.i.3, %conv126.i.3
  %conv131.i.3 = trunc i32 %xor130.i.3 to i8
  store i8 %conv131.i.3, i8* %arraydecay10, align 1
  %scevgep86 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 1, i64 0
  %143 = bitcast i8* %scevgep86 to [4 x [4 x i8]]*
  %arrayidx108.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %144 = load i8, i8* %arrayidx108.i.1, align 1
  %arrayidx110.i.1 = getelementptr inbounds i8, i8* %arraydecay7, i64 1
  %145 = load i8, i8* %arrayidx110.i.1, align 1
  %call111.i.1 = call zeroext i8 @mult(i8 zeroext %144, i8 zeroext %145) #3
  %arrayidx113.i.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  store i8 %call111.i.1, i8* %arrayidx113.i.1, align 1
  %arrayidx128.i.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %scevgep87.1188 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %143, i64 0, i64 0, i64 0
  %146 = load i8, i8* %scevgep87.1188, align 1
  %conv126.i.1189 = zext i8 %146 to i32
  %147 = load i8, i8* %arrayidx128.i.1, align 1
  %conv129.i.1190 = zext i8 %147 to i32
  %xor130.i.1191 = xor i32 %conv129.i.1190, %conv126.i.1189
  %conv131.i.1192 = trunc i32 %xor130.i.1191 to i8
  store i8 %conv131.i.1192, i8* %arrayidx128.i.1, align 1
  %scevgep87.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %143, i64 0, i64 0, i64 2
  %148 = load i8, i8* %scevgep87.2.1, align 1
  %conv126.i.2.1 = zext i8 %148 to i32
  %149 = load i8, i8* %arrayidx128.i.1, align 1
  %conv129.i.2.1 = zext i8 %149 to i32
  %xor130.i.2.1 = xor i32 %conv129.i.2.1, %conv126.i.2.1
  %conv131.i.2.1 = trunc i32 %xor130.i.2.1 to i8
  store i8 %conv131.i.2.1, i8* %arrayidx128.i.1, align 1
  %scevgep87.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %143, i64 0, i64 0, i64 3
  %150 = load i8, i8* %scevgep87.3.1, align 1
  %conv126.i.3.1 = zext i8 %150 to i32
  %151 = load i8, i8* %arrayidx128.i.1, align 1
  %conv129.i.3.1 = zext i8 %151 to i32
  %xor130.i.3.1 = xor i32 %conv129.i.3.1, %conv126.i.3.1
  %conv131.i.3.1 = trunc i32 %xor130.i.3.1 to i8
  store i8 %conv131.i.3.1, i8* %arrayidx128.i.1, align 1
  %scevgep86.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %143, i64 0, i64 1, i64 0
  %152 = bitcast i8* %scevgep86.1 to [4 x [4 x i8]]*
  %arrayidx108.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %153 = load i8, i8* %arrayidx108.i.2, align 1
  %arrayidx110.i.2 = getelementptr inbounds i8, i8* %arraydecay7, i64 2
  %154 = load i8, i8* %arrayidx110.i.2, align 1
  %call111.i.2 = call zeroext i8 @mult(i8 zeroext %153, i8 zeroext %154) #3
  %arrayidx113.i.2 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  store i8 %call111.i.2, i8* %arrayidx113.i.2, align 1
  %arrayidx128.i.2 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  %scevgep87.2197 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %152, i64 0, i64 0, i64 0
  %155 = load i8, i8* %scevgep87.2197, align 1
  %conv126.i.2198 = zext i8 %155 to i32
  %156 = load i8, i8* %arrayidx128.i.2, align 1
  %conv129.i.2199 = zext i8 %156 to i32
  %xor130.i.2200 = xor i32 %conv129.i.2199, %conv126.i.2198
  %conv131.i.2201 = trunc i32 %xor130.i.2200 to i8
  store i8 %conv131.i.2201, i8* %arrayidx128.i.2, align 1
  %scevgep87.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %152, i64 0, i64 0, i64 1
  %157 = load i8, i8* %scevgep87.1.2, align 1
  %conv126.i.1.2 = zext i8 %157 to i32
  %158 = load i8, i8* %arrayidx128.i.2, align 1
  %conv129.i.1.2 = zext i8 %158 to i32
  %xor130.i.1.2 = xor i32 %conv129.i.1.2, %conv126.i.1.2
  %conv131.i.1.2 = trunc i32 %xor130.i.1.2 to i8
  store i8 %conv131.i.1.2, i8* %arrayidx128.i.2, align 1
  %scevgep87.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %152, i64 0, i64 0, i64 3
  %159 = load i8, i8* %scevgep87.3.2, align 1
  %conv126.i.3.2 = zext i8 %159 to i32
  %160 = load i8, i8* %arrayidx128.i.2, align 1
  %conv129.i.3.2 = zext i8 %160 to i32
  %xor130.i.3.2 = xor i32 %conv129.i.3.2, %conv126.i.3.2
  %conv131.i.3.2 = trunc i32 %xor130.i.3.2 to i8
  store i8 %conv131.i.3.2, i8* %arrayidx128.i.2, align 1
  %scevgep86.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %152, i64 0, i64 1, i64 0
  %161 = bitcast i8* %scevgep86.2 to [4 x [4 x i8]]*
  %arrayidx108.i.3 = getelementptr inbounds i8, i8* %x, i64 3
  %162 = load i8, i8* %arrayidx108.i.3, align 1
  %arrayidx110.i.3 = getelementptr inbounds i8, i8* %arraydecay7, i64 3
  %163 = load i8, i8* %arrayidx110.i.3, align 1
  %call111.i.3 = call zeroext i8 @mult(i8 zeroext %162, i8 zeroext %163) #3
  %arrayidx113.i.3 = getelementptr inbounds i8, i8* %arraydecay10, i64 3
  store i8 %call111.i.3, i8* %arrayidx113.i.3, align 1
  %arrayidx128.i.3 = getelementptr inbounds i8, i8* %arraydecay10, i64 3
  %scevgep87.3206 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %161, i64 0, i64 0, i64 0
  %164 = load i8, i8* %scevgep87.3206, align 1
  %conv126.i.3207 = zext i8 %164 to i32
  %165 = load i8, i8* %arrayidx128.i.3, align 1
  %conv129.i.3208 = zext i8 %165 to i32
  %xor130.i.3209 = xor i32 %conv129.i.3208, %conv126.i.3207
  %conv131.i.3210 = trunc i32 %xor130.i.3209 to i8
  store i8 %conv131.i.3210, i8* %arrayidx128.i.3, align 1
  %scevgep87.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %161, i64 0, i64 0, i64 1
  %166 = load i8, i8* %scevgep87.1.3, align 1
  %conv126.i.1.3 = zext i8 %166 to i32
  %167 = load i8, i8* %arrayidx128.i.3, align 1
  %conv129.i.1.3 = zext i8 %167 to i32
  %xor130.i.1.3 = xor i32 %conv129.i.1.3, %conv126.i.1.3
  %conv131.i.1.3 = trunc i32 %xor130.i.1.3 to i8
  store i8 %conv131.i.1.3, i8* %arrayidx128.i.3, align 1
  %scevgep87.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %161, i64 0, i64 0, i64 2
  %168 = load i8, i8* %scevgep87.2.3, align 1
  %conv126.i.2.3 = zext i8 %168 to i32
  %169 = load i8, i8* %arrayidx128.i.3, align 1
  %conv129.i.2.3 = zext i8 %169 to i32
  %xor130.i.2.3 = xor i32 %conv129.i.2.3, %conv126.i.2.3
  %conv131.i.2.3 = trunc i32 %xor130.i.2.3 to i8
  store i8 %conv131.i.2.3, i8* %arrayidx128.i.3, align 1
  %call139.i = call zeroext i8 @mult(i8 zeroext %call.i22, i8 zeroext %call1.i) #3
  %conv140.i = zext i8 %call139.i to i32
  %scevgep93 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 0
  %scevgep94 = getelementptr i8, i8* %scevgep93, i64 4
  %170 = load i8, i8* %scevgep94, align 1
  %scevgep93.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 1
  %scevgep94.1 = getelementptr i8, i8* %scevgep93.1, i64 4
  %171 = load i8, i8* %scevgep94.1, align 1
  %conv.i.i172.i.1 = zext i8 %171 to i32
  %conv1.i.i173.i.1 = zext i8 %170 to i32
  %xor.i.i174.i.1 = xor i32 %conv1.i.i173.i.1, %conv.i.i172.i.1
  %conv2.i.i175.i.1 = trunc i32 %xor.i.i174.i.1 to i8
  %scevgep93.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 2
  %scevgep94.2 = getelementptr i8, i8* %scevgep93.2, i64 4
  %172 = load i8, i8* %scevgep94.2, align 1
  %conv.i.i172.i.2 = zext i8 %172 to i32
  %conv1.i.i173.i.2 = zext i8 %conv2.i.i175.i.1 to i32
  %xor.i.i174.i.2 = xor i32 %conv1.i.i173.i.2, %conv.i.i172.i.2
  %conv2.i.i175.i.2 = trunc i32 %xor.i.i174.i.2 to i8
  %scevgep93.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 3
  %scevgep94.3 = getelementptr i8, i8* %scevgep93.3, i64 4
  %173 = load i8, i8* %scevgep94.3, align 1
  %conv.i.i172.i.3 = zext i8 %173 to i32
  %conv1.i.i173.i.3 = zext i8 %conv2.i.i175.i.2 to i32
  %xor.i.i174.i.3 = xor i32 %conv1.i.i173.i.3, %conv.i.i172.i.3
  %conv2.i.i175.i.3 = trunc i32 %xor.i.i174.i.3 to i8
  %conv142.i = zext i8 %conv2.i.i175.i.3 to i32
  %cmp143.i = icmp eq i32 %conv140.i, %conv142.i
  call void @assert(i1 zeroext %cmp143.i) #3
  %scevgep34 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 1, i64 0
  %174 = bitcast i8* %scevgep34 to [4 x [4 x i8]]*
  %arrayidx6.1 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 1
  %arraydecay7.1 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx6.1, i64 0, i64 0
  %arrayidx9.1 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 2
  %arraydecay10.1 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx9.1, i64 0, i64 0
  %call.i22.1 = call zeroext i8 (...) @rand() #3
  %call1.i.1 = call zeroext i8 (...) @rand() #3
  %conv.i.1 = zext i8 %call.i22.1 to i32
  %175 = load i8, i8* %x, align 1
  %scevgep31.1.1 = getelementptr i8, i8* %x, i64 1
  %176 = load i8, i8* %scevgep31.1.1, align 1
  %conv.i.i.i.1.1 = zext i8 %176 to i32
  %conv1.i.i.i.1.1 = zext i8 %175 to i32
  %xor.i.i.i.1.1 = xor i32 %conv1.i.i.i.1.1, %conv.i.i.i.1.1
  %conv2.i.i.i.1.1 = trunc i32 %xor.i.i.i.1.1 to i8
  %scevgep31.2.1 = getelementptr i8, i8* %x, i64 2
  %177 = load i8, i8* %scevgep31.2.1, align 1
  %conv.i.i.i.2.1 = zext i8 %177 to i32
  %conv1.i.i.i.2.1 = zext i8 %conv2.i.i.i.1.1 to i32
  %xor.i.i.i.2.1 = xor i32 %conv1.i.i.i.2.1, %conv.i.i.i.2.1
  %conv2.i.i.i.2.1 = trunc i32 %xor.i.i.i.2.1 to i8
  %scevgep31.3.1 = getelementptr i8, i8* %x, i64 3
  %178 = load i8, i8* %scevgep31.3.1, align 1
  %conv.i.i.i.3.1 = zext i8 %178 to i32
  %conv1.i.i.i.3.1 = zext i8 %conv2.i.i.i.2.1 to i32
  %xor.i.i.i.3.1 = xor i32 %conv1.i.i.i.3.1, %conv.i.i.i.3.1
  %conv2.i.i.i.3.1 = trunc i32 %xor.i.i.i.3.1 to i8
  %conv3.i.1 = zext i8 %conv2.i.i.i.3.1 to i32
  %cmp.i23.1 = icmp eq i32 %conv.i.1, %conv3.i.1
  call void @assume(i1 zeroext %cmp.i23.1) #3
  %conv5.i.1 = zext i8 %call1.i.1 to i32
  %scevgep37.1215 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %174, i64 0, i64 0, i64 0
  %179 = load i8, i8* %scevgep37.1215, align 1
  %scevgep37.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %174, i64 0, i64 0, i64 1
  %180 = load i8, i8* %scevgep37.1.1, align 1
  %conv.i.i155.i.1.1 = zext i8 %180 to i32
  %conv1.i.i156.i.1.1 = zext i8 %179 to i32
  %xor.i.i157.i.1.1 = xor i32 %conv1.i.i156.i.1.1, %conv.i.i155.i.1.1
  %conv2.i.i158.i.1.1 = trunc i32 %xor.i.i157.i.1.1 to i8
  %scevgep37.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %174, i64 0, i64 0, i64 2
  %181 = load i8, i8* %scevgep37.2.1, align 1
  %conv.i.i155.i.2.1 = zext i8 %181 to i32
  %conv1.i.i156.i.2.1 = zext i8 %conv2.i.i158.i.1.1 to i32
  %xor.i.i157.i.2.1 = xor i32 %conv1.i.i156.i.2.1, %conv.i.i155.i.2.1
  %conv2.i.i158.i.2.1 = trunc i32 %xor.i.i157.i.2.1 to i8
  %scevgep37.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %174, i64 0, i64 0, i64 3
  %182 = load i8, i8* %scevgep37.3.1, align 1
  %conv.i.i155.i.3.1 = zext i8 %182 to i32
  %conv1.i.i156.i.3.1 = zext i8 %conv2.i.i158.i.2.1 to i32
  %xor.i.i157.i.3.1 = xor i32 %conv1.i.i156.i.3.1, %conv.i.i155.i.3.1
  %conv2.i.i158.i.3.1 = trunc i32 %xor.i.i157.i.3.1 to i8
  %conv7.i.1 = zext i8 %conv2.i.i158.i.3.1 to i32
  %cmp8.i.1 = icmp eq i32 %conv5.i.1, %conv7.i.1
  call void @assume(i1 zeroext %cmp8.i.1) #3
  %call16.i.1220 = call zeroext i8 (...) @rand() #3
  %scevgep43.1221 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i.1220, i8* %scevgep43.1221, align 1
  %scevgep44.1222 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %183 = load i8, i8* %scevgep44.1222, align 1
  %scevgep45.1223 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %183, i8* %scevgep45.1223, align 1
  %call16.i.1220.1 = call zeroext i8 (...) @rand() #3
  %scevgep43.1221.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  store i8 %call16.i.1220.1, i8* %scevgep43.1221.1, align 1
  %scevgep44.1222.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %184 = load i8, i8* %scevgep44.1222.1, align 1
  %scevgep45.1223.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 2, i64 0
  store i8 %184, i8* %scevgep45.1223.1, align 1
  %call16.i.1220.2 = call zeroext i8 (...) @rand() #3
  %scevgep43.1221.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  store i8 %call16.i.1220.2, i8* %scevgep43.1221.2, align 1
  %scevgep44.1222.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %185 = load i8, i8* %scevgep44.1222.2, align 1
  %scevgep45.1223.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 3, i64 0
  store i8 %185, i8* %scevgep45.1223.2, align 1
  %scevgep40.1229 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 1
  %186 = bitcast i8* %scevgep40.1229 to [4 x [4 x i8]]*
  %call16.i.1.1 = call zeroext i8 (...) @rand() #3
  %scevgep43.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %186, i64 0, i64 0, i64 1
  store i8 %call16.i.1.1, i8* %scevgep43.1.1, align 1
  %scevgep44.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %186, i64 0, i64 0, i64 1
  %187 = load i8, i8* %scevgep44.1.1, align 1
  %scevgep45.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %186, i64 0, i64 1, i64 0
  store i8 %187, i8* %scevgep45.1.1, align 1
  %call16.i.1.1.1 = call zeroext i8 (...) @rand() #3
  %scevgep43.1.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %186, i64 0, i64 0, i64 2
  store i8 %call16.i.1.1.1, i8* %scevgep43.1.1.1, align 1
  %scevgep44.1.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %186, i64 0, i64 0, i64 2
  %188 = load i8, i8* %scevgep44.1.1.1, align 1
  %scevgep45.1.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %186, i64 0, i64 2, i64 0
  store i8 %188, i8* %scevgep45.1.1.1, align 1
  %scevgep40.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %186, i64 0, i64 1, i64 1
  %189 = bitcast i8* %scevgep40.1.1 to [4 x [4 x i8]]*
  %call16.i.2.1 = call zeroext i8 (...) @rand() #3
  %scevgep43.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %189, i64 0, i64 0, i64 1
  store i8 %call16.i.2.1, i8* %scevgep43.2.1, align 1
  %scevgep44.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %189, i64 0, i64 0, i64 1
  %190 = load i8, i8* %scevgep44.2.1, align 1
  %scevgep45.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %189, i64 0, i64 1, i64 0
  store i8 %190, i8* %scevgep45.2.1, align 1
  %scevgep56.1.1257 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %174, i64 0, i64 0, i64 1
  %191 = load i8, i8* %scevgep56.1.1257, align 1
  %conv44.i.1.1258 = zext i8 %191 to i32
  %scevgep59.1.1259 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %192 = load i8, i8* %scevgep59.1.1259, align 1
  %conv49.i.1.1260 = zext i8 %192 to i32
  %xor.i.1.1261 = xor i32 %conv44.i.1.1258, %conv49.i.1.1260
  %conv50.i.1.1262 = trunc i32 %xor.i.1.1261 to i8
  %scevgep63.1.1263 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.1262, i8* %scevgep63.1.1263, align 1
  %193 = load i8, i8* %x, align 1
  %conv57.i.1.1264 = zext i8 %193 to i32
  %xor58.i.1.1265 = xor i32 %conv57.i.1.1264, 1
  %conv59.i.1.1266 = trunc i32 %xor58.i.1.1265 to i8
  %scevgep60.1.1267 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %194 = load i8, i8* %scevgep60.1.1267, align 1
  %call64.i.1.1268 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.1266, i8 zeroext %194) #3
  %scevgep67.1.1269 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i.1.1268, i8* %scevgep67.1.1269, align 1
  %195 = load i8, i8* %x, align 1
  %scevgep64.1.1270 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 1
  %196 = load i8, i8* %scevgep64.1.1270, align 1
  %call75.i.1.1271 = call zeroext i8 @mult(i8 zeroext %195, i8 zeroext %196) #3
  %scevgep71.1.1272 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i.1.1271, i8* %scevgep71.1.1272, align 1
  %scevgep68.1.1273 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %197 = load i8, i8* %scevgep68.1.1273, align 1
  %conv84.i.1.1274 = zext i8 %197 to i32
  %scevgep72.1.1275 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %198 = load i8, i8* %scevgep72.1.1275, align 1
  %conv89.i.1.1276 = zext i8 %198 to i32
  %xor90.i.1.1277 = xor i32 %conv84.i.1.1274, %conv89.i.1.1276
  %conv91.i.1.1278 = trunc i32 %xor90.i.1.1277 to i8
  %scevgep75.1.1279 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.1278, i8* %scevgep75.1.1279, align 1
  %scevgep56.2.1282 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %174, i64 0, i64 0, i64 2
  %199 = load i8, i8* %scevgep56.2.1282, align 1
  %conv44.i.2.1283 = zext i8 %199 to i32
  %scevgep59.2.1284 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %200 = load i8, i8* %scevgep59.2.1284, align 1
  %conv49.i.2.1285 = zext i8 %200 to i32
  %xor.i.2.1286 = xor i32 %conv44.i.2.1283, %conv49.i.2.1285
  %conv50.i.2.1287 = trunc i32 %xor.i.2.1286 to i8
  %scevgep63.2.1288 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.1287, i8* %scevgep63.2.1288, align 1
  %201 = load i8, i8* %x, align 1
  %conv57.i.2.1289 = zext i8 %201 to i32
  %xor58.i.2.1290 = xor i32 %conv57.i.2.1289, 1
  %conv59.i.2.1291 = trunc i32 %xor58.i.2.1290 to i8
  %scevgep60.2.1292 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %202 = load i8, i8* %scevgep60.2.1292, align 1
  %call64.i.2.1293 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.1291, i8 zeroext %202) #3
  %scevgep67.2.1294 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 2
  store i8 %call64.i.2.1293, i8* %scevgep67.2.1294, align 1
  %203 = load i8, i8* %x, align 1
  %scevgep64.2.1295 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 2
  %204 = load i8, i8* %scevgep64.2.1295, align 1
  %call75.i.2.1296 = call zeroext i8 @mult(i8 zeroext %203, i8 zeroext %204) #3
  %scevgep71.2.1297 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 2
  store i8 %call75.i.2.1296, i8* %scevgep71.2.1297, align 1
  %scevgep68.2.1298 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 2
  %205 = load i8, i8* %scevgep68.2.1298, align 1
  %conv84.i.2.1299 = zext i8 %205 to i32
  %scevgep72.2.1300 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 2
  %206 = load i8, i8* %scevgep72.2.1300, align 1
  %conv89.i.2.1301 = zext i8 %206 to i32
  %xor90.i.2.1302 = xor i32 %conv84.i.2.1299, %conv89.i.2.1301
  %conv91.i.2.1303 = trunc i32 %xor90.i.2.1302 to i8
  %scevgep75.2.1304 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.1303, i8* %scevgep75.2.1304, align 1
  %scevgep56.3.1307 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %174, i64 0, i64 0, i64 3
  %207 = load i8, i8* %scevgep56.3.1307, align 1
  %conv44.i.3.1308 = zext i8 %207 to i32
  %scevgep59.3.1309 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %208 = load i8, i8* %scevgep59.3.1309, align 1
  %conv49.i.3.1310 = zext i8 %208 to i32
  %xor.i.3.1311 = xor i32 %conv44.i.3.1308, %conv49.i.3.1310
  %conv50.i.3.1312 = trunc i32 %xor.i.3.1311 to i8
  %scevgep63.3.1313 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 3
  store i8 %conv50.i.3.1312, i8* %scevgep63.3.1313, align 1
  %209 = load i8, i8* %x, align 1
  %conv57.i.3.1314 = zext i8 %209 to i32
  %xor58.i.3.1315 = xor i32 %conv57.i.3.1314, 1
  %conv59.i.3.1316 = trunc i32 %xor58.i.3.1315 to i8
  %scevgep60.3.1317 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %210 = load i8, i8* %scevgep60.3.1317, align 1
  %call64.i.3.1318 = call zeroext i8 @mult(i8 zeroext %conv59.i.3.1316, i8 zeroext %210) #3
  %scevgep67.3.1319 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 3
  store i8 %call64.i.3.1318, i8* %scevgep67.3.1319, align 1
  %211 = load i8, i8* %x, align 1
  %scevgep64.3.1320 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 3
  %212 = load i8, i8* %scevgep64.3.1320, align 1
  %call75.i.3.1321 = call zeroext i8 @mult(i8 zeroext %211, i8 zeroext %212) #3
  %scevgep71.3.1322 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 3
  store i8 %call75.i.3.1321, i8* %scevgep71.3.1322, align 1
  %scevgep68.3.1323 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 3
  %213 = load i8, i8* %scevgep68.3.1323, align 1
  %conv84.i.3.1324 = zext i8 %213 to i32
  %scevgep72.3.1325 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 3
  %214 = load i8, i8* %scevgep72.3.1325, align 1
  %conv89.i.3.1326 = zext i8 %214 to i32
  %xor90.i.3.1327 = xor i32 %conv84.i.3.1324, %conv89.i.3.1326
  %conv91.i.3.1328 = trunc i32 %xor90.i.3.1327 to i8
  %scevgep75.3.1329 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 3
  store i8 %conv91.i.3.1328, i8* %scevgep75.3.1329, align 1
  %scevgep58.1331 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  %215 = bitcast i8* %scevgep58.1331 to [4 x [4 x i8]]*
  %scevgep62.1332 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 1, i64 0
  %216 = bitcast i8* %scevgep62.1332 to [4 x [4 x i8]]*
  %scevgep66.1333 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %217 = bitcast i8* %scevgep66.1333 to [4 x [4 x i8]]*
  %scevgep70.1334 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %218 = bitcast i8* %scevgep70.1334 to [4 x [4 x i8]]*
  %scevgep74.1335 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 1, i64 0
  %219 = bitcast i8* %scevgep74.1335 to [4 x [4 x i8]]*
  %arrayidx56.i.1.1 = getelementptr inbounds i8, i8* %x, i64 1
  %arrayidx70.i.1.1 = getelementptr inbounds i8, i8* %x, i64 1
  %scevgep56.1107.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %174, i64 0, i64 0, i64 0
  %220 = load i8, i8* %scevgep56.1107.1, align 1
  %conv44.i.1108.1 = zext i8 %220 to i32
  %scevgep59.1109.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %215, i64 0, i64 0, i64 0
  %221 = load i8, i8* %scevgep59.1109.1, align 1
  %conv49.i.1110.1 = zext i8 %221 to i32
  %xor.i.1111.1 = xor i32 %conv44.i.1108.1, %conv49.i.1110.1
  %conv50.i.1112.1 = trunc i32 %xor.i.1111.1 to i8
  %scevgep63.1113.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %216, i64 0, i64 0, i64 0
  store i8 %conv50.i.1112.1, i8* %scevgep63.1113.1, align 1
  %222 = load i8, i8* %arrayidx56.i.1.1, align 1
  %conv57.i.1114.1 = zext i8 %222 to i32
  %xor58.i.1115.1 = xor i32 %conv57.i.1114.1, 1
  %conv59.i.1116.1 = trunc i32 %xor58.i.1115.1 to i8
  %scevgep60.1117.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %215, i64 0, i64 0, i64 0
  %223 = load i8, i8* %scevgep60.1117.1, align 1
  %call64.i.1118.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.1116.1, i8 zeroext %223) #3
  %scevgep67.1119.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %217, i64 0, i64 0, i64 0
  store i8 %call64.i.1118.1, i8* %scevgep67.1119.1, align 1
  %224 = load i8, i8* %arrayidx70.i.1.1, align 1
  %scevgep64.1120.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %216, i64 0, i64 0, i64 0
  %225 = load i8, i8* %scevgep64.1120.1, align 1
  %call75.i.1121.1 = call zeroext i8 @mult(i8 zeroext %224, i8 zeroext %225) #3
  %scevgep71.1122.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %218, i64 0, i64 0, i64 0
  store i8 %call75.i.1121.1, i8* %scevgep71.1122.1, align 1
  %scevgep68.1123.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %217, i64 0, i64 0, i64 0
  %226 = load i8, i8* %scevgep68.1123.1, align 1
  %conv84.i.1124.1 = zext i8 %226 to i32
  %scevgep72.1125.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %218, i64 0, i64 0, i64 0
  %227 = load i8, i8* %scevgep72.1125.1, align 1
  %conv89.i.1126.1 = zext i8 %227 to i32
  %xor90.i.1127.1 = xor i32 %conv84.i.1124.1, %conv89.i.1126.1
  %conv91.i.1128.1 = trunc i32 %xor90.i.1127.1 to i8
  %scevgep75.1129.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %219, i64 0, i64 0, i64 0
  store i8 %conv91.i.1128.1, i8* %scevgep75.1129.1, align 1
  %scevgep56.2.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %174, i64 0, i64 0, i64 2
  %228 = load i8, i8* %scevgep56.2.1.1, align 1
  %conv44.i.2.1.1 = zext i8 %228 to i32
  %scevgep59.2.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %215, i64 0, i64 0, i64 2
  %229 = load i8, i8* %scevgep59.2.1.1, align 1
  %conv49.i.2.1.1 = zext i8 %229 to i32
  %xor.i.2.1.1 = xor i32 %conv44.i.2.1.1, %conv49.i.2.1.1
  %conv50.i.2.1.1 = trunc i32 %xor.i.2.1.1 to i8
  %scevgep63.2.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %216, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.1.1, i8* %scevgep63.2.1.1, align 1
  %230 = load i8, i8* %arrayidx56.i.1.1, align 1
  %conv57.i.2.1.1 = zext i8 %230 to i32
  %xor58.i.2.1.1 = xor i32 %conv57.i.2.1.1, 1
  %conv59.i.2.1.1 = trunc i32 %xor58.i.2.1.1 to i8
  %scevgep60.2.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %215, i64 0, i64 0, i64 2
  %231 = load i8, i8* %scevgep60.2.1.1, align 1
  %call64.i.2.1.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.1.1, i8 zeroext %231) #3
  %scevgep67.2.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %217, i64 0, i64 0, i64 2
  store i8 %call64.i.2.1.1, i8* %scevgep67.2.1.1, align 1
  %232 = load i8, i8* %arrayidx70.i.1.1, align 1
  %scevgep64.2.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %216, i64 0, i64 0, i64 2
  %233 = load i8, i8* %scevgep64.2.1.1, align 1
  %call75.i.2.1.1 = call zeroext i8 @mult(i8 zeroext %232, i8 zeroext %233) #3
  %scevgep71.2.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %218, i64 0, i64 0, i64 2
  store i8 %call75.i.2.1.1, i8* %scevgep71.2.1.1, align 1
  %scevgep68.2.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %217, i64 0, i64 0, i64 2
  %234 = load i8, i8* %scevgep68.2.1.1, align 1
  %conv84.i.2.1.1 = zext i8 %234 to i32
  %scevgep72.2.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %218, i64 0, i64 0, i64 2
  %235 = load i8, i8* %scevgep72.2.1.1, align 1
  %conv89.i.2.1.1 = zext i8 %235 to i32
  %xor90.i.2.1.1 = xor i32 %conv84.i.2.1.1, %conv89.i.2.1.1
  %conv91.i.2.1.1 = trunc i32 %xor90.i.2.1.1 to i8
  %scevgep75.2.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %219, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.1.1, i8* %scevgep75.2.1.1, align 1
  %scevgep56.3.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %174, i64 0, i64 0, i64 3
  %236 = load i8, i8* %scevgep56.3.1.1, align 1
  %conv44.i.3.1.1 = zext i8 %236 to i32
  %scevgep59.3.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %215, i64 0, i64 0, i64 3
  %237 = load i8, i8* %scevgep59.3.1.1, align 1
  %conv49.i.3.1.1 = zext i8 %237 to i32
  %xor.i.3.1.1 = xor i32 %conv44.i.3.1.1, %conv49.i.3.1.1
  %conv50.i.3.1.1 = trunc i32 %xor.i.3.1.1 to i8
  %scevgep63.3.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %216, i64 0, i64 0, i64 3
  store i8 %conv50.i.3.1.1, i8* %scevgep63.3.1.1, align 1
  %238 = load i8, i8* %arrayidx56.i.1.1, align 1
  %conv57.i.3.1.1 = zext i8 %238 to i32
  %xor58.i.3.1.1 = xor i32 %conv57.i.3.1.1, 1
  %conv59.i.3.1.1 = trunc i32 %xor58.i.3.1.1 to i8
  %scevgep60.3.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %215, i64 0, i64 0, i64 3
  %239 = load i8, i8* %scevgep60.3.1.1, align 1
  %call64.i.3.1.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.3.1.1, i8 zeroext %239) #3
  %scevgep67.3.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %217, i64 0, i64 0, i64 3
  store i8 %call64.i.3.1.1, i8* %scevgep67.3.1.1, align 1
  %240 = load i8, i8* %arrayidx70.i.1.1, align 1
  %scevgep64.3.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %216, i64 0, i64 0, i64 3
  %241 = load i8, i8* %scevgep64.3.1.1, align 1
  %call75.i.3.1.1 = call zeroext i8 @mult(i8 zeroext %240, i8 zeroext %241) #3
  %scevgep71.3.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %218, i64 0, i64 0, i64 3
  store i8 %call75.i.3.1.1, i8* %scevgep71.3.1.1, align 1
  %scevgep68.3.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %217, i64 0, i64 0, i64 3
  %242 = load i8, i8* %scevgep68.3.1.1, align 1
  %conv84.i.3.1.1 = zext i8 %242 to i32
  %scevgep72.3.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %218, i64 0, i64 0, i64 3
  %243 = load i8, i8* %scevgep72.3.1.1, align 1
  %conv89.i.3.1.1 = zext i8 %243 to i32
  %xor90.i.3.1.1 = xor i32 %conv84.i.3.1.1, %conv89.i.3.1.1
  %conv91.i.3.1.1 = trunc i32 %xor90.i.3.1.1 to i8
  %scevgep75.3.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %219, i64 0, i64 0, i64 3
  store i8 %conv91.i.3.1.1, i8* %scevgep75.3.1.1, align 1
  %scevgep58.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %215, i64 0, i64 1, i64 0
  %244 = bitcast i8* %scevgep58.1.1 to [4 x [4 x i8]]*
  %scevgep62.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %216, i64 0, i64 1, i64 0
  %245 = bitcast i8* %scevgep62.1.1 to [4 x [4 x i8]]*
  %scevgep66.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %217, i64 0, i64 1, i64 0
  %246 = bitcast i8* %scevgep66.1.1 to [4 x [4 x i8]]*
  %scevgep70.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %218, i64 0, i64 1, i64 0
  %247 = bitcast i8* %scevgep70.1.1 to [4 x [4 x i8]]*
  %scevgep74.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %219, i64 0, i64 1, i64 0
  %248 = bitcast i8* %scevgep74.1.1 to [4 x [4 x i8]]*
  %arrayidx56.i.2.1 = getelementptr inbounds i8, i8* %x, i64 2
  %arrayidx70.i.2.1 = getelementptr inbounds i8, i8* %x, i64 2
  %scevgep56.2134.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %174, i64 0, i64 0, i64 0
  %249 = load i8, i8* %scevgep56.2134.1, align 1
  %conv44.i.2135.1 = zext i8 %249 to i32
  %scevgep59.2136.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %244, i64 0, i64 0, i64 0
  %250 = load i8, i8* %scevgep59.2136.1, align 1
  %conv49.i.2137.1 = zext i8 %250 to i32
  %xor.i.2138.1 = xor i32 %conv44.i.2135.1, %conv49.i.2137.1
  %conv50.i.2139.1 = trunc i32 %xor.i.2138.1 to i8
  %scevgep63.2140.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %245, i64 0, i64 0, i64 0
  store i8 %conv50.i.2139.1, i8* %scevgep63.2140.1, align 1
  %251 = load i8, i8* %arrayidx56.i.2.1, align 1
  %conv57.i.2141.1 = zext i8 %251 to i32
  %xor58.i.2142.1 = xor i32 %conv57.i.2141.1, 1
  %conv59.i.2143.1 = trunc i32 %xor58.i.2142.1 to i8
  %scevgep60.2144.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %244, i64 0, i64 0, i64 0
  %252 = load i8, i8* %scevgep60.2144.1, align 1
  %call64.i.2145.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.2143.1, i8 zeroext %252) #3
  %scevgep67.2146.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %246, i64 0, i64 0, i64 0
  store i8 %call64.i.2145.1, i8* %scevgep67.2146.1, align 1
  %253 = load i8, i8* %arrayidx70.i.2.1, align 1
  %scevgep64.2147.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %245, i64 0, i64 0, i64 0
  %254 = load i8, i8* %scevgep64.2147.1, align 1
  %call75.i.2148.1 = call zeroext i8 @mult(i8 zeroext %253, i8 zeroext %254) #3
  %scevgep71.2149.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %247, i64 0, i64 0, i64 0
  store i8 %call75.i.2148.1, i8* %scevgep71.2149.1, align 1
  %scevgep68.2150.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %246, i64 0, i64 0, i64 0
  %255 = load i8, i8* %scevgep68.2150.1, align 1
  %conv84.i.2151.1 = zext i8 %255 to i32
  %scevgep72.2152.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %247, i64 0, i64 0, i64 0
  %256 = load i8, i8* %scevgep72.2152.1, align 1
  %conv89.i.2153.1 = zext i8 %256 to i32
  %xor90.i.2154.1 = xor i32 %conv84.i.2151.1, %conv89.i.2153.1
  %conv91.i.2155.1 = trunc i32 %xor90.i.2154.1 to i8
  %scevgep75.2156.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %248, i64 0, i64 0, i64 0
  store i8 %conv91.i.2155.1, i8* %scevgep75.2156.1, align 1
  %scevgep56.1.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %174, i64 0, i64 0, i64 1
  %257 = load i8, i8* %scevgep56.1.2.1, align 1
  %conv44.i.1.2.1 = zext i8 %257 to i32
  %scevgep59.1.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %244, i64 0, i64 0, i64 1
  %258 = load i8, i8* %scevgep59.1.2.1, align 1
  %conv49.i.1.2.1 = zext i8 %258 to i32
  %xor.i.1.2.1 = xor i32 %conv44.i.1.2.1, %conv49.i.1.2.1
  %conv50.i.1.2.1 = trunc i32 %xor.i.1.2.1 to i8
  %scevgep63.1.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %245, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.2.1, i8* %scevgep63.1.2.1, align 1
  %259 = load i8, i8* %arrayidx56.i.2.1, align 1
  %conv57.i.1.2.1 = zext i8 %259 to i32
  %xor58.i.1.2.1 = xor i32 %conv57.i.1.2.1, 1
  %conv59.i.1.2.1 = trunc i32 %xor58.i.1.2.1 to i8
  %scevgep60.1.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %244, i64 0, i64 0, i64 1
  %260 = load i8, i8* %scevgep60.1.2.1, align 1
  %call64.i.1.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.2.1, i8 zeroext %260) #3
  %scevgep67.1.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %246, i64 0, i64 0, i64 1
  store i8 %call64.i.1.2.1, i8* %scevgep67.1.2.1, align 1
  %261 = load i8, i8* %arrayidx70.i.2.1, align 1
  %scevgep64.1.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %245, i64 0, i64 0, i64 1
  %262 = load i8, i8* %scevgep64.1.2.1, align 1
  %call75.i.1.2.1 = call zeroext i8 @mult(i8 zeroext %261, i8 zeroext %262) #3
  %scevgep71.1.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %247, i64 0, i64 0, i64 1
  store i8 %call75.i.1.2.1, i8* %scevgep71.1.2.1, align 1
  %scevgep68.1.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %246, i64 0, i64 0, i64 1
  %263 = load i8, i8* %scevgep68.1.2.1, align 1
  %conv84.i.1.2.1 = zext i8 %263 to i32
  %scevgep72.1.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %247, i64 0, i64 0, i64 1
  %264 = load i8, i8* %scevgep72.1.2.1, align 1
  %conv89.i.1.2.1 = zext i8 %264 to i32
  %xor90.i.1.2.1 = xor i32 %conv84.i.1.2.1, %conv89.i.1.2.1
  %conv91.i.1.2.1 = trunc i32 %xor90.i.1.2.1 to i8
  %scevgep75.1.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %248, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.2.1, i8* %scevgep75.1.2.1, align 1
  %scevgep56.3.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %174, i64 0, i64 0, i64 3
  %265 = load i8, i8* %scevgep56.3.2.1, align 1
  %conv44.i.3.2.1 = zext i8 %265 to i32
  %scevgep59.3.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %244, i64 0, i64 0, i64 3
  %266 = load i8, i8* %scevgep59.3.2.1, align 1
  %conv49.i.3.2.1 = zext i8 %266 to i32
  %xor.i.3.2.1 = xor i32 %conv44.i.3.2.1, %conv49.i.3.2.1
  %conv50.i.3.2.1 = trunc i32 %xor.i.3.2.1 to i8
  %scevgep63.3.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %245, i64 0, i64 0, i64 3
  store i8 %conv50.i.3.2.1, i8* %scevgep63.3.2.1, align 1
  %267 = load i8, i8* %arrayidx56.i.2.1, align 1
  %conv57.i.3.2.1 = zext i8 %267 to i32
  %xor58.i.3.2.1 = xor i32 %conv57.i.3.2.1, 1
  %conv59.i.3.2.1 = trunc i32 %xor58.i.3.2.1 to i8
  %scevgep60.3.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %244, i64 0, i64 0, i64 3
  %268 = load i8, i8* %scevgep60.3.2.1, align 1
  %call64.i.3.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.3.2.1, i8 zeroext %268) #3
  %scevgep67.3.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %246, i64 0, i64 0, i64 3
  store i8 %call64.i.3.2.1, i8* %scevgep67.3.2.1, align 1
  %269 = load i8, i8* %arrayidx70.i.2.1, align 1
  %scevgep64.3.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %245, i64 0, i64 0, i64 3
  %270 = load i8, i8* %scevgep64.3.2.1, align 1
  %call75.i.3.2.1 = call zeroext i8 @mult(i8 zeroext %269, i8 zeroext %270) #3
  %scevgep71.3.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %247, i64 0, i64 0, i64 3
  store i8 %call75.i.3.2.1, i8* %scevgep71.3.2.1, align 1
  %scevgep68.3.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %246, i64 0, i64 0, i64 3
  %271 = load i8, i8* %scevgep68.3.2.1, align 1
  %conv84.i.3.2.1 = zext i8 %271 to i32
  %scevgep72.3.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %247, i64 0, i64 0, i64 3
  %272 = load i8, i8* %scevgep72.3.2.1, align 1
  %conv89.i.3.2.1 = zext i8 %272 to i32
  %xor90.i.3.2.1 = xor i32 %conv84.i.3.2.1, %conv89.i.3.2.1
  %conv91.i.3.2.1 = trunc i32 %xor90.i.3.2.1 to i8
  %scevgep75.3.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %248, i64 0, i64 0, i64 3
  store i8 %conv91.i.3.2.1, i8* %scevgep75.3.2.1, align 1
  %scevgep58.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %244, i64 0, i64 1, i64 0
  %273 = bitcast i8* %scevgep58.2.1 to [4 x [4 x i8]]*
  %scevgep62.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %245, i64 0, i64 1, i64 0
  %274 = bitcast i8* %scevgep62.2.1 to [4 x [4 x i8]]*
  %scevgep66.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %246, i64 0, i64 1, i64 0
  %275 = bitcast i8* %scevgep66.2.1 to [4 x [4 x i8]]*
  %scevgep70.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %247, i64 0, i64 1, i64 0
  %276 = bitcast i8* %scevgep70.2.1 to [4 x [4 x i8]]*
  %scevgep74.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %248, i64 0, i64 1, i64 0
  %277 = bitcast i8* %scevgep74.2.1 to [4 x [4 x i8]]*
  %arrayidx56.i.3.1 = getelementptr inbounds i8, i8* %x, i64 3
  %arrayidx70.i.3.1 = getelementptr inbounds i8, i8* %x, i64 3
  %scevgep56.3161.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %174, i64 0, i64 0, i64 0
  %278 = load i8, i8* %scevgep56.3161.1, align 1
  %conv44.i.3162.1 = zext i8 %278 to i32
  %scevgep59.3163.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %273, i64 0, i64 0, i64 0
  %279 = load i8, i8* %scevgep59.3163.1, align 1
  %conv49.i.3164.1 = zext i8 %279 to i32
  %xor.i.3165.1 = xor i32 %conv44.i.3162.1, %conv49.i.3164.1
  %conv50.i.3166.1 = trunc i32 %xor.i.3165.1 to i8
  %scevgep63.3167.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %274, i64 0, i64 0, i64 0
  store i8 %conv50.i.3166.1, i8* %scevgep63.3167.1, align 1
  %280 = load i8, i8* %arrayidx56.i.3.1, align 1
  %conv57.i.3168.1 = zext i8 %280 to i32
  %xor58.i.3169.1 = xor i32 %conv57.i.3168.1, 1
  %conv59.i.3170.1 = trunc i32 %xor58.i.3169.1 to i8
  %scevgep60.3171.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %273, i64 0, i64 0, i64 0
  %281 = load i8, i8* %scevgep60.3171.1, align 1
  %call64.i.3172.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.3170.1, i8 zeroext %281) #3
  %scevgep67.3173.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %275, i64 0, i64 0, i64 0
  store i8 %call64.i.3172.1, i8* %scevgep67.3173.1, align 1
  %282 = load i8, i8* %arrayidx70.i.3.1, align 1
  %scevgep64.3174.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %274, i64 0, i64 0, i64 0
  %283 = load i8, i8* %scevgep64.3174.1, align 1
  %call75.i.3175.1 = call zeroext i8 @mult(i8 zeroext %282, i8 zeroext %283) #3
  %scevgep71.3176.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %276, i64 0, i64 0, i64 0
  store i8 %call75.i.3175.1, i8* %scevgep71.3176.1, align 1
  %scevgep68.3177.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %275, i64 0, i64 0, i64 0
  %284 = load i8, i8* %scevgep68.3177.1, align 1
  %conv84.i.3178.1 = zext i8 %284 to i32
  %scevgep72.3179.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %276, i64 0, i64 0, i64 0
  %285 = load i8, i8* %scevgep72.3179.1, align 1
  %conv89.i.3180.1 = zext i8 %285 to i32
  %xor90.i.3181.1 = xor i32 %conv84.i.3178.1, %conv89.i.3180.1
  %conv91.i.3182.1 = trunc i32 %xor90.i.3181.1 to i8
  %scevgep75.3183.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %277, i64 0, i64 0, i64 0
  store i8 %conv91.i.3182.1, i8* %scevgep75.3183.1, align 1
  %scevgep56.1.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %174, i64 0, i64 0, i64 1
  %286 = load i8, i8* %scevgep56.1.3.1, align 1
  %conv44.i.1.3.1 = zext i8 %286 to i32
  %scevgep59.1.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %273, i64 0, i64 0, i64 1
  %287 = load i8, i8* %scevgep59.1.3.1, align 1
  %conv49.i.1.3.1 = zext i8 %287 to i32
  %xor.i.1.3.1 = xor i32 %conv44.i.1.3.1, %conv49.i.1.3.1
  %conv50.i.1.3.1 = trunc i32 %xor.i.1.3.1 to i8
  %scevgep63.1.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %274, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.3.1, i8* %scevgep63.1.3.1, align 1
  %288 = load i8, i8* %arrayidx56.i.3.1, align 1
  %conv57.i.1.3.1 = zext i8 %288 to i32
  %xor58.i.1.3.1 = xor i32 %conv57.i.1.3.1, 1
  %conv59.i.1.3.1 = trunc i32 %xor58.i.1.3.1 to i8
  %scevgep60.1.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %273, i64 0, i64 0, i64 1
  %289 = load i8, i8* %scevgep60.1.3.1, align 1
  %call64.i.1.3.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.3.1, i8 zeroext %289) #3
  %scevgep67.1.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %275, i64 0, i64 0, i64 1
  store i8 %call64.i.1.3.1, i8* %scevgep67.1.3.1, align 1
  %290 = load i8, i8* %arrayidx70.i.3.1, align 1
  %scevgep64.1.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %274, i64 0, i64 0, i64 1
  %291 = load i8, i8* %scevgep64.1.3.1, align 1
  %call75.i.1.3.1 = call zeroext i8 @mult(i8 zeroext %290, i8 zeroext %291) #3
  %scevgep71.1.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %276, i64 0, i64 0, i64 1
  store i8 %call75.i.1.3.1, i8* %scevgep71.1.3.1, align 1
  %scevgep68.1.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %275, i64 0, i64 0, i64 1
  %292 = load i8, i8* %scevgep68.1.3.1, align 1
  %conv84.i.1.3.1 = zext i8 %292 to i32
  %scevgep72.1.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %276, i64 0, i64 0, i64 1
  %293 = load i8, i8* %scevgep72.1.3.1, align 1
  %conv89.i.1.3.1 = zext i8 %293 to i32
  %xor90.i.1.3.1 = xor i32 %conv84.i.1.3.1, %conv89.i.1.3.1
  %conv91.i.1.3.1 = trunc i32 %xor90.i.1.3.1 to i8
  %scevgep75.1.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %277, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.3.1, i8* %scevgep75.1.3.1, align 1
  %scevgep56.2.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %174, i64 0, i64 0, i64 2
  %294 = load i8, i8* %scevgep56.2.3.1, align 1
  %conv44.i.2.3.1 = zext i8 %294 to i32
  %scevgep59.2.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %273, i64 0, i64 0, i64 2
  %295 = load i8, i8* %scevgep59.2.3.1, align 1
  %conv49.i.2.3.1 = zext i8 %295 to i32
  %xor.i.2.3.1 = xor i32 %conv44.i.2.3.1, %conv49.i.2.3.1
  %conv50.i.2.3.1 = trunc i32 %xor.i.2.3.1 to i8
  %scevgep63.2.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %274, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.3.1, i8* %scevgep63.2.3.1, align 1
  %296 = load i8, i8* %arrayidx56.i.3.1, align 1
  %conv57.i.2.3.1 = zext i8 %296 to i32
  %xor58.i.2.3.1 = xor i32 %conv57.i.2.3.1, 1
  %conv59.i.2.3.1 = trunc i32 %xor58.i.2.3.1 to i8
  %scevgep60.2.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %273, i64 0, i64 0, i64 2
  %297 = load i8, i8* %scevgep60.2.3.1, align 1
  %call64.i.2.3.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.3.1, i8 zeroext %297) #3
  %scevgep67.2.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %275, i64 0, i64 0, i64 2
  store i8 %call64.i.2.3.1, i8* %scevgep67.2.3.1, align 1
  %298 = load i8, i8* %arrayidx70.i.3.1, align 1
  %scevgep64.2.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %274, i64 0, i64 0, i64 2
  %299 = load i8, i8* %scevgep64.2.3.1, align 1
  %call75.i.2.3.1 = call zeroext i8 @mult(i8 zeroext %298, i8 zeroext %299) #3
  %scevgep71.2.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %276, i64 0, i64 0, i64 2
  store i8 %call75.i.2.3.1, i8* %scevgep71.2.3.1, align 1
  %scevgep68.2.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %275, i64 0, i64 0, i64 2
  %300 = load i8, i8* %scevgep68.2.3.1, align 1
  %conv84.i.2.3.1 = zext i8 %300 to i32
  %scevgep72.2.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %276, i64 0, i64 0, i64 2
  %301 = load i8, i8* %scevgep72.2.3.1, align 1
  %conv89.i.2.3.1 = zext i8 %301 to i32
  %xor90.i.2.3.1 = xor i32 %conv84.i.2.3.1, %conv89.i.2.3.1
  %conv91.i.2.3.1 = trunc i32 %xor90.i.2.3.1 to i8
  %scevgep75.2.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %277, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.3.1, i8* %scevgep75.2.3.1, align 1
  %302 = load i8, i8* %x, align 1
  %303 = load i8, i8* %arraydecay7.1, align 1
  %call111.i.1337 = call zeroext i8 @mult(i8 zeroext %302, i8 zeroext %303) #3
  store i8 %call111.i.1337, i8* %arraydecay10.1, align 1
  %scevgep87.1.1346 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 1
  %304 = load i8, i8* %scevgep87.1.1346, align 1
  %conv126.i.1.1347 = zext i8 %304 to i32
  %305 = load i8, i8* %arraydecay10.1, align 1
  %conv129.i.1.1348 = zext i8 %305 to i32
  %xor130.i.1.1349 = xor i32 %conv129.i.1.1348, %conv126.i.1.1347
  %conv131.i.1.1350 = trunc i32 %xor130.i.1.1349 to i8
  store i8 %conv131.i.1.1350, i8* %arraydecay10.1, align 1
  %scevgep87.2.1353 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 2
  %306 = load i8, i8* %scevgep87.2.1353, align 1
  %conv126.i.2.1354 = zext i8 %306 to i32
  %307 = load i8, i8* %arraydecay10.1, align 1
  %conv129.i.2.1355 = zext i8 %307 to i32
  %xor130.i.2.1356 = xor i32 %conv129.i.2.1355, %conv126.i.2.1354
  %conv131.i.2.1357 = trunc i32 %xor130.i.2.1356 to i8
  store i8 %conv131.i.2.1357, i8* %arraydecay10.1, align 1
  %scevgep87.3.1360 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 3
  %308 = load i8, i8* %scevgep87.3.1360, align 1
  %conv126.i.3.1361 = zext i8 %308 to i32
  %309 = load i8, i8* %arraydecay10.1, align 1
  %conv129.i.3.1362 = zext i8 %309 to i32
  %xor130.i.3.1363 = xor i32 %conv129.i.3.1362, %conv126.i.3.1361
  %conv131.i.3.1364 = trunc i32 %xor130.i.3.1363 to i8
  store i8 %conv131.i.3.1364, i8* %arraydecay10.1, align 1
  %scevgep86.1366 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 1, i64 0
  %310 = bitcast i8* %scevgep86.1366 to [4 x [4 x i8]]*
  %arrayidx108.i.1.1 = getelementptr inbounds i8, i8* %x, i64 1
  %311 = load i8, i8* %arrayidx108.i.1.1, align 1
  %arrayidx110.i.1.1 = getelementptr inbounds i8, i8* %arraydecay7.1, i64 1
  %312 = load i8, i8* %arrayidx110.i.1.1, align 1
  %call111.i.1.1 = call zeroext i8 @mult(i8 zeroext %311, i8 zeroext %312) #3
  %arrayidx113.i.1.1 = getelementptr inbounds i8, i8* %arraydecay10.1, i64 1
  store i8 %call111.i.1.1, i8* %arrayidx113.i.1.1, align 1
  %arrayidx128.i.1.1 = getelementptr inbounds i8, i8* %arraydecay10.1, i64 1
  %scevgep87.1188.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %310, i64 0, i64 0, i64 0
  %313 = load i8, i8* %scevgep87.1188.1, align 1
  %conv126.i.1189.1 = zext i8 %313 to i32
  %314 = load i8, i8* %arrayidx128.i.1.1, align 1
  %conv129.i.1190.1 = zext i8 %314 to i32
  %xor130.i.1191.1 = xor i32 %conv129.i.1190.1, %conv126.i.1189.1
  %conv131.i.1192.1 = trunc i32 %xor130.i.1191.1 to i8
  store i8 %conv131.i.1192.1, i8* %arrayidx128.i.1.1, align 1
  %scevgep87.2.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %310, i64 0, i64 0, i64 2
  %315 = load i8, i8* %scevgep87.2.1.1, align 1
  %conv126.i.2.1.1 = zext i8 %315 to i32
  %316 = load i8, i8* %arrayidx128.i.1.1, align 1
  %conv129.i.2.1.1 = zext i8 %316 to i32
  %xor130.i.2.1.1 = xor i32 %conv129.i.2.1.1, %conv126.i.2.1.1
  %conv131.i.2.1.1 = trunc i32 %xor130.i.2.1.1 to i8
  store i8 %conv131.i.2.1.1, i8* %arrayidx128.i.1.1, align 1
  %scevgep87.3.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %310, i64 0, i64 0, i64 3
  %317 = load i8, i8* %scevgep87.3.1.1, align 1
  %conv126.i.3.1.1 = zext i8 %317 to i32
  %318 = load i8, i8* %arrayidx128.i.1.1, align 1
  %conv129.i.3.1.1 = zext i8 %318 to i32
  %xor130.i.3.1.1 = xor i32 %conv129.i.3.1.1, %conv126.i.3.1.1
  %conv131.i.3.1.1 = trunc i32 %xor130.i.3.1.1 to i8
  store i8 %conv131.i.3.1.1, i8* %arrayidx128.i.1.1, align 1
  %scevgep86.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %310, i64 0, i64 1, i64 0
  %319 = bitcast i8* %scevgep86.1.1 to [4 x [4 x i8]]*
  %arrayidx108.i.2.1 = getelementptr inbounds i8, i8* %x, i64 2
  %320 = load i8, i8* %arrayidx108.i.2.1, align 1
  %arrayidx110.i.2.1 = getelementptr inbounds i8, i8* %arraydecay7.1, i64 2
  %321 = load i8, i8* %arrayidx110.i.2.1, align 1
  %call111.i.2.1 = call zeroext i8 @mult(i8 zeroext %320, i8 zeroext %321) #3
  %arrayidx113.i.2.1 = getelementptr inbounds i8, i8* %arraydecay10.1, i64 2
  store i8 %call111.i.2.1, i8* %arrayidx113.i.2.1, align 1
  %arrayidx128.i.2.1 = getelementptr inbounds i8, i8* %arraydecay10.1, i64 2
  %scevgep87.2197.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %319, i64 0, i64 0, i64 0
  %322 = load i8, i8* %scevgep87.2197.1, align 1
  %conv126.i.2198.1 = zext i8 %322 to i32
  %323 = load i8, i8* %arrayidx128.i.2.1, align 1
  %conv129.i.2199.1 = zext i8 %323 to i32
  %xor130.i.2200.1 = xor i32 %conv129.i.2199.1, %conv126.i.2198.1
  %conv131.i.2201.1 = trunc i32 %xor130.i.2200.1 to i8
  store i8 %conv131.i.2201.1, i8* %arrayidx128.i.2.1, align 1
  %scevgep87.1.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %319, i64 0, i64 0, i64 1
  %324 = load i8, i8* %scevgep87.1.2.1, align 1
  %conv126.i.1.2.1 = zext i8 %324 to i32
  %325 = load i8, i8* %arrayidx128.i.2.1, align 1
  %conv129.i.1.2.1 = zext i8 %325 to i32
  %xor130.i.1.2.1 = xor i32 %conv129.i.1.2.1, %conv126.i.1.2.1
  %conv131.i.1.2.1 = trunc i32 %xor130.i.1.2.1 to i8
  store i8 %conv131.i.1.2.1, i8* %arrayidx128.i.2.1, align 1
  %scevgep87.3.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %319, i64 0, i64 0, i64 3
  %326 = load i8, i8* %scevgep87.3.2.1, align 1
  %conv126.i.3.2.1 = zext i8 %326 to i32
  %327 = load i8, i8* %arrayidx128.i.2.1, align 1
  %conv129.i.3.2.1 = zext i8 %327 to i32
  %xor130.i.3.2.1 = xor i32 %conv129.i.3.2.1, %conv126.i.3.2.1
  %conv131.i.3.2.1 = trunc i32 %xor130.i.3.2.1 to i8
  store i8 %conv131.i.3.2.1, i8* %arrayidx128.i.2.1, align 1
  %scevgep86.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %319, i64 0, i64 1, i64 0
  %328 = bitcast i8* %scevgep86.2.1 to [4 x [4 x i8]]*
  %arrayidx108.i.3.1 = getelementptr inbounds i8, i8* %x, i64 3
  %329 = load i8, i8* %arrayidx108.i.3.1, align 1
  %arrayidx110.i.3.1 = getelementptr inbounds i8, i8* %arraydecay7.1, i64 3
  %330 = load i8, i8* %arrayidx110.i.3.1, align 1
  %call111.i.3.1 = call zeroext i8 @mult(i8 zeroext %329, i8 zeroext %330) #3
  %arrayidx113.i.3.1 = getelementptr inbounds i8, i8* %arraydecay10.1, i64 3
  store i8 %call111.i.3.1, i8* %arrayidx113.i.3.1, align 1
  %arrayidx128.i.3.1 = getelementptr inbounds i8, i8* %arraydecay10.1, i64 3
  %scevgep87.3206.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %328, i64 0, i64 0, i64 0
  %331 = load i8, i8* %scevgep87.3206.1, align 1
  %conv126.i.3207.1 = zext i8 %331 to i32
  %332 = load i8, i8* %arrayidx128.i.3.1, align 1
  %conv129.i.3208.1 = zext i8 %332 to i32
  %xor130.i.3209.1 = xor i32 %conv129.i.3208.1, %conv126.i.3207.1
  %conv131.i.3210.1 = trunc i32 %xor130.i.3209.1 to i8
  store i8 %conv131.i.3210.1, i8* %arrayidx128.i.3.1, align 1
  %scevgep87.1.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %328, i64 0, i64 0, i64 1
  %333 = load i8, i8* %scevgep87.1.3.1, align 1
  %conv126.i.1.3.1 = zext i8 %333 to i32
  %334 = load i8, i8* %arrayidx128.i.3.1, align 1
  %conv129.i.1.3.1 = zext i8 %334 to i32
  %xor130.i.1.3.1 = xor i32 %conv129.i.1.3.1, %conv126.i.1.3.1
  %conv131.i.1.3.1 = trunc i32 %xor130.i.1.3.1 to i8
  store i8 %conv131.i.1.3.1, i8* %arrayidx128.i.3.1, align 1
  %scevgep87.2.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %328, i64 0, i64 0, i64 2
  %335 = load i8, i8* %scevgep87.2.3.1, align 1
  %conv126.i.2.3.1 = zext i8 %335 to i32
  %336 = load i8, i8* %arrayidx128.i.3.1, align 1
  %conv129.i.2.3.1 = zext i8 %336 to i32
  %xor130.i.2.3.1 = xor i32 %conv129.i.2.3.1, %conv126.i.2.3.1
  %conv131.i.2.3.1 = trunc i32 %xor130.i.2.3.1 to i8
  store i8 %conv131.i.2.3.1, i8* %arrayidx128.i.3.1, align 1
  %call139.i.1 = call zeroext i8 @mult(i8 zeroext %call.i22.1, i8 zeroext %call1.i.1) #3
  %conv140.i.1 = zext i8 %call139.i.1 to i32
  %scevgep93.1368 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %174, i64 0, i64 0, i64 0
  %scevgep94.1369 = getelementptr i8, i8* %scevgep93.1368, i64 4
  %337 = load i8, i8* %scevgep94.1369, align 1
  %scevgep93.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %174, i64 0, i64 0, i64 1
  %scevgep94.1.1 = getelementptr i8, i8* %scevgep93.1.1, i64 4
  %338 = load i8, i8* %scevgep94.1.1, align 1
  %conv.i.i172.i.1.1 = zext i8 %338 to i32
  %conv1.i.i173.i.1.1 = zext i8 %337 to i32
  %xor.i.i174.i.1.1 = xor i32 %conv1.i.i173.i.1.1, %conv.i.i172.i.1.1
  %conv2.i.i175.i.1.1 = trunc i32 %xor.i.i174.i.1.1 to i8
  %scevgep93.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %174, i64 0, i64 0, i64 2
  %scevgep94.2.1 = getelementptr i8, i8* %scevgep93.2.1, i64 4
  %339 = load i8, i8* %scevgep94.2.1, align 1
  %conv.i.i172.i.2.1 = zext i8 %339 to i32
  %conv1.i.i173.i.2.1 = zext i8 %conv2.i.i175.i.1.1 to i32
  %xor.i.i174.i.2.1 = xor i32 %conv1.i.i173.i.2.1, %conv.i.i172.i.2.1
  %conv2.i.i175.i.2.1 = trunc i32 %xor.i.i174.i.2.1 to i8
  %scevgep93.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %174, i64 0, i64 0, i64 3
  %scevgep94.3.1 = getelementptr i8, i8* %scevgep93.3.1, i64 4
  %340 = load i8, i8* %scevgep94.3.1, align 1
  %conv.i.i172.i.3.1 = zext i8 %340 to i32
  %conv1.i.i173.i.3.1 = zext i8 %conv2.i.i175.i.2.1 to i32
  %xor.i.i174.i.3.1 = xor i32 %conv1.i.i173.i.3.1, %conv.i.i172.i.3.1
  %conv2.i.i175.i.3.1 = trunc i32 %xor.i.i174.i.3.1 to i8
  %conv142.i.1 = zext i8 %conv2.i.i175.i.3.1 to i32
  %cmp143.i.1 = icmp eq i32 %conv140.i.1, %conv142.i.1
  call void @assert(i1 zeroext %cmp143.i.1) #3
  %scevgep34.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %174, i64 0, i64 1, i64 0
  %341 = bitcast i8* %scevgep34.1 to [4 x [4 x i8]]*
  %arrayidx6.2 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 2
  %arraydecay7.2 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx6.2, i64 0, i64 0
  %arrayidx9.2 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 3
  %arraydecay10.2 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx9.2, i64 0, i64 0
  %call.i22.2 = call zeroext i8 (...) @rand() #3
  %call1.i.2 = call zeroext i8 (...) @rand() #3
  %conv.i.2 = zext i8 %call.i22.2 to i32
  %342 = load i8, i8* %x, align 1
  %scevgep31.1.2 = getelementptr i8, i8* %x, i64 1
  %343 = load i8, i8* %scevgep31.1.2, align 1
  %conv.i.i.i.1.2 = zext i8 %343 to i32
  %conv1.i.i.i.1.2 = zext i8 %342 to i32
  %xor.i.i.i.1.2 = xor i32 %conv1.i.i.i.1.2, %conv.i.i.i.1.2
  %conv2.i.i.i.1.2 = trunc i32 %xor.i.i.i.1.2 to i8
  %scevgep31.2.2 = getelementptr i8, i8* %x, i64 2
  %344 = load i8, i8* %scevgep31.2.2, align 1
  %conv.i.i.i.2.2 = zext i8 %344 to i32
  %conv1.i.i.i.2.2 = zext i8 %conv2.i.i.i.1.2 to i32
  %xor.i.i.i.2.2 = xor i32 %conv1.i.i.i.2.2, %conv.i.i.i.2.2
  %conv2.i.i.i.2.2 = trunc i32 %xor.i.i.i.2.2 to i8
  %scevgep31.3.2 = getelementptr i8, i8* %x, i64 3
  %345 = load i8, i8* %scevgep31.3.2, align 1
  %conv.i.i.i.3.2 = zext i8 %345 to i32
  %conv1.i.i.i.3.2 = zext i8 %conv2.i.i.i.2.2 to i32
  %xor.i.i.i.3.2 = xor i32 %conv1.i.i.i.3.2, %conv.i.i.i.3.2
  %conv2.i.i.i.3.2 = trunc i32 %xor.i.i.i.3.2 to i8
  %conv3.i.2 = zext i8 %conv2.i.i.i.3.2 to i32
  %cmp.i23.2 = icmp eq i32 %conv.i.2, %conv3.i.2
  call void @assume(i1 zeroext %cmp.i23.2) #3
  %conv5.i.2 = zext i8 %call1.i.2 to i32
  %scevgep37.2374 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %341, i64 0, i64 0, i64 0
  %346 = load i8, i8* %scevgep37.2374, align 1
  %scevgep37.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %341, i64 0, i64 0, i64 1
  %347 = load i8, i8* %scevgep37.1.2, align 1
  %conv.i.i155.i.1.2 = zext i8 %347 to i32
  %conv1.i.i156.i.1.2 = zext i8 %346 to i32
  %xor.i.i157.i.1.2 = xor i32 %conv1.i.i156.i.1.2, %conv.i.i155.i.1.2
  %conv2.i.i158.i.1.2 = trunc i32 %xor.i.i157.i.1.2 to i8
  %scevgep37.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %341, i64 0, i64 0, i64 2
  %348 = load i8, i8* %scevgep37.2.2, align 1
  %conv.i.i155.i.2.2 = zext i8 %348 to i32
  %conv1.i.i156.i.2.2 = zext i8 %conv2.i.i158.i.1.2 to i32
  %xor.i.i157.i.2.2 = xor i32 %conv1.i.i156.i.2.2, %conv.i.i155.i.2.2
  %conv2.i.i158.i.2.2 = trunc i32 %xor.i.i157.i.2.2 to i8
  %scevgep37.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %341, i64 0, i64 0, i64 3
  %349 = load i8, i8* %scevgep37.3.2, align 1
  %conv.i.i155.i.3.2 = zext i8 %349 to i32
  %conv1.i.i156.i.3.2 = zext i8 %conv2.i.i158.i.2.2 to i32
  %xor.i.i157.i.3.2 = xor i32 %conv1.i.i156.i.3.2, %conv.i.i155.i.3.2
  %conv2.i.i158.i.3.2 = trunc i32 %xor.i.i157.i.3.2 to i8
  %conv7.i.2 = zext i8 %conv2.i.i158.i.3.2 to i32
  %cmp8.i.2 = icmp eq i32 %conv5.i.2, %conv7.i.2
  call void @assume(i1 zeroext %cmp8.i.2) #3
  %call16.i.2379 = call zeroext i8 (...) @rand() #3
  %scevgep43.2380 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i.2379, i8* %scevgep43.2380, align 1
  %scevgep44.2381 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %350 = load i8, i8* %scevgep44.2381, align 1
  %scevgep45.2382 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %350, i8* %scevgep45.2382, align 1
  %call16.i.2379.1 = call zeroext i8 (...) @rand() #3
  %scevgep43.2380.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  store i8 %call16.i.2379.1, i8* %scevgep43.2380.1, align 1
  %scevgep44.2381.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %351 = load i8, i8* %scevgep44.2381.1, align 1
  %scevgep45.2382.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 2, i64 0
  store i8 %351, i8* %scevgep45.2382.1, align 1
  %call16.i.2379.2 = call zeroext i8 (...) @rand() #3
  %scevgep43.2380.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  store i8 %call16.i.2379.2, i8* %scevgep43.2380.2, align 1
  %scevgep44.2381.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %352 = load i8, i8* %scevgep44.2381.2, align 1
  %scevgep45.2382.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 3, i64 0
  store i8 %352, i8* %scevgep45.2382.2, align 1
  %scevgep40.2388 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 1
  %353 = bitcast i8* %scevgep40.2388 to [4 x [4 x i8]]*
  %call16.i.1.2 = call zeroext i8 (...) @rand() #3
  %scevgep43.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %353, i64 0, i64 0, i64 1
  store i8 %call16.i.1.2, i8* %scevgep43.1.2, align 1
  %scevgep44.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %353, i64 0, i64 0, i64 1
  %354 = load i8, i8* %scevgep44.1.2, align 1
  %scevgep45.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %353, i64 0, i64 1, i64 0
  store i8 %354, i8* %scevgep45.1.2, align 1
  %call16.i.1.2.1 = call zeroext i8 (...) @rand() #3
  %scevgep43.1.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %353, i64 0, i64 0, i64 2
  store i8 %call16.i.1.2.1, i8* %scevgep43.1.2.1, align 1
  %scevgep44.1.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %353, i64 0, i64 0, i64 2
  %355 = load i8, i8* %scevgep44.1.2.1, align 1
  %scevgep45.1.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %353, i64 0, i64 2, i64 0
  store i8 %355, i8* %scevgep45.1.2.1, align 1
  %scevgep40.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %353, i64 0, i64 1, i64 1
  %356 = bitcast i8* %scevgep40.1.2 to [4 x [4 x i8]]*
  %call16.i.2.2 = call zeroext i8 (...) @rand() #3
  %scevgep43.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %356, i64 0, i64 0, i64 1
  store i8 %call16.i.2.2, i8* %scevgep43.2.2, align 1
  %scevgep44.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %356, i64 0, i64 0, i64 1
  %357 = load i8, i8* %scevgep44.2.2, align 1
  %scevgep45.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %356, i64 0, i64 1, i64 0
  store i8 %357, i8* %scevgep45.2.2, align 1
  %scevgep56.1.2416 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %341, i64 0, i64 0, i64 1
  %358 = load i8, i8* %scevgep56.1.2416, align 1
  %conv44.i.1.2417 = zext i8 %358 to i32
  %scevgep59.1.2418 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %359 = load i8, i8* %scevgep59.1.2418, align 1
  %conv49.i.1.2419 = zext i8 %359 to i32
  %xor.i.1.2420 = xor i32 %conv44.i.1.2417, %conv49.i.1.2419
  %conv50.i.1.2421 = trunc i32 %xor.i.1.2420 to i8
  %scevgep63.1.2422 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.2421, i8* %scevgep63.1.2422, align 1
  %360 = load i8, i8* %x, align 1
  %conv57.i.1.2423 = zext i8 %360 to i32
  %xor58.i.1.2424 = xor i32 %conv57.i.1.2423, 1
  %conv59.i.1.2425 = trunc i32 %xor58.i.1.2424 to i8
  %scevgep60.1.2426 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %361 = load i8, i8* %scevgep60.1.2426, align 1
  %call64.i.1.2427 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.2425, i8 zeroext %361) #3
  %scevgep67.1.2428 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i.1.2427, i8* %scevgep67.1.2428, align 1
  %362 = load i8, i8* %x, align 1
  %scevgep64.1.2429 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 1
  %363 = load i8, i8* %scevgep64.1.2429, align 1
  %call75.i.1.2430 = call zeroext i8 @mult(i8 zeroext %362, i8 zeroext %363) #3
  %scevgep71.1.2431 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i.1.2430, i8* %scevgep71.1.2431, align 1
  %scevgep68.1.2432 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %364 = load i8, i8* %scevgep68.1.2432, align 1
  %conv84.i.1.2433 = zext i8 %364 to i32
  %scevgep72.1.2434 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %365 = load i8, i8* %scevgep72.1.2434, align 1
  %conv89.i.1.2435 = zext i8 %365 to i32
  %xor90.i.1.2436 = xor i32 %conv84.i.1.2433, %conv89.i.1.2435
  %conv91.i.1.2437 = trunc i32 %xor90.i.1.2436 to i8
  %scevgep75.1.2438 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.2437, i8* %scevgep75.1.2438, align 1
  %scevgep56.2.2441 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %341, i64 0, i64 0, i64 2
  %366 = load i8, i8* %scevgep56.2.2441, align 1
  %conv44.i.2.2442 = zext i8 %366 to i32
  %scevgep59.2.2443 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %367 = load i8, i8* %scevgep59.2.2443, align 1
  %conv49.i.2.2444 = zext i8 %367 to i32
  %xor.i.2.2445 = xor i32 %conv44.i.2.2442, %conv49.i.2.2444
  %conv50.i.2.2446 = trunc i32 %xor.i.2.2445 to i8
  %scevgep63.2.2447 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.2446, i8* %scevgep63.2.2447, align 1
  %368 = load i8, i8* %x, align 1
  %conv57.i.2.2448 = zext i8 %368 to i32
  %xor58.i.2.2449 = xor i32 %conv57.i.2.2448, 1
  %conv59.i.2.2450 = trunc i32 %xor58.i.2.2449 to i8
  %scevgep60.2.2451 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %369 = load i8, i8* %scevgep60.2.2451, align 1
  %call64.i.2.2452 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.2450, i8 zeroext %369) #3
  %scevgep67.2.2453 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 2
  store i8 %call64.i.2.2452, i8* %scevgep67.2.2453, align 1
  %370 = load i8, i8* %x, align 1
  %scevgep64.2.2454 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 2
  %371 = load i8, i8* %scevgep64.2.2454, align 1
  %call75.i.2.2455 = call zeroext i8 @mult(i8 zeroext %370, i8 zeroext %371) #3
  %scevgep71.2.2456 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 2
  store i8 %call75.i.2.2455, i8* %scevgep71.2.2456, align 1
  %scevgep68.2.2457 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 2
  %372 = load i8, i8* %scevgep68.2.2457, align 1
  %conv84.i.2.2458 = zext i8 %372 to i32
  %scevgep72.2.2459 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 2
  %373 = load i8, i8* %scevgep72.2.2459, align 1
  %conv89.i.2.2460 = zext i8 %373 to i32
  %xor90.i.2.2461 = xor i32 %conv84.i.2.2458, %conv89.i.2.2460
  %conv91.i.2.2462 = trunc i32 %xor90.i.2.2461 to i8
  %scevgep75.2.2463 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.2462, i8* %scevgep75.2.2463, align 1
  %scevgep56.3.2466 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %341, i64 0, i64 0, i64 3
  %374 = load i8, i8* %scevgep56.3.2466, align 1
  %conv44.i.3.2467 = zext i8 %374 to i32
  %scevgep59.3.2468 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %375 = load i8, i8* %scevgep59.3.2468, align 1
  %conv49.i.3.2469 = zext i8 %375 to i32
  %xor.i.3.2470 = xor i32 %conv44.i.3.2467, %conv49.i.3.2469
  %conv50.i.3.2471 = trunc i32 %xor.i.3.2470 to i8
  %scevgep63.3.2472 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 3
  store i8 %conv50.i.3.2471, i8* %scevgep63.3.2472, align 1
  %376 = load i8, i8* %x, align 1
  %conv57.i.3.2473 = zext i8 %376 to i32
  %xor58.i.3.2474 = xor i32 %conv57.i.3.2473, 1
  %conv59.i.3.2475 = trunc i32 %xor58.i.3.2474 to i8
  %scevgep60.3.2476 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %377 = load i8, i8* %scevgep60.3.2476, align 1
  %call64.i.3.2477 = call zeroext i8 @mult(i8 zeroext %conv59.i.3.2475, i8 zeroext %377) #3
  %scevgep67.3.2478 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 3
  store i8 %call64.i.3.2477, i8* %scevgep67.3.2478, align 1
  %378 = load i8, i8* %x, align 1
  %scevgep64.3.2479 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 3
  %379 = load i8, i8* %scevgep64.3.2479, align 1
  %call75.i.3.2480 = call zeroext i8 @mult(i8 zeroext %378, i8 zeroext %379) #3
  %scevgep71.3.2481 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 3
  store i8 %call75.i.3.2480, i8* %scevgep71.3.2481, align 1
  %scevgep68.3.2482 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 3
  %380 = load i8, i8* %scevgep68.3.2482, align 1
  %conv84.i.3.2483 = zext i8 %380 to i32
  %scevgep72.3.2484 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 3
  %381 = load i8, i8* %scevgep72.3.2484, align 1
  %conv89.i.3.2485 = zext i8 %381 to i32
  %xor90.i.3.2486 = xor i32 %conv84.i.3.2483, %conv89.i.3.2485
  %conv91.i.3.2487 = trunc i32 %xor90.i.3.2486 to i8
  %scevgep75.3.2488 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 3
  store i8 %conv91.i.3.2487, i8* %scevgep75.3.2488, align 1
  %scevgep58.2490 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  %382 = bitcast i8* %scevgep58.2490 to [4 x [4 x i8]]*
  %scevgep62.2491 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 1, i64 0
  %383 = bitcast i8* %scevgep62.2491 to [4 x [4 x i8]]*
  %scevgep66.2492 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %384 = bitcast i8* %scevgep66.2492 to [4 x [4 x i8]]*
  %scevgep70.2493 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %385 = bitcast i8* %scevgep70.2493 to [4 x [4 x i8]]*
  %scevgep74.2494 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 1, i64 0
  %386 = bitcast i8* %scevgep74.2494 to [4 x [4 x i8]]*
  %arrayidx56.i.1.2 = getelementptr inbounds i8, i8* %x, i64 1
  %arrayidx70.i.1.2 = getelementptr inbounds i8, i8* %x, i64 1
  %scevgep56.1107.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %341, i64 0, i64 0, i64 0
  %387 = load i8, i8* %scevgep56.1107.2, align 1
  %conv44.i.1108.2 = zext i8 %387 to i32
  %scevgep59.1109.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %382, i64 0, i64 0, i64 0
  %388 = load i8, i8* %scevgep59.1109.2, align 1
  %conv49.i.1110.2 = zext i8 %388 to i32
  %xor.i.1111.2 = xor i32 %conv44.i.1108.2, %conv49.i.1110.2
  %conv50.i.1112.2 = trunc i32 %xor.i.1111.2 to i8
  %scevgep63.1113.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %383, i64 0, i64 0, i64 0
  store i8 %conv50.i.1112.2, i8* %scevgep63.1113.2, align 1
  %389 = load i8, i8* %arrayidx56.i.1.2, align 1
  %conv57.i.1114.2 = zext i8 %389 to i32
  %xor58.i.1115.2 = xor i32 %conv57.i.1114.2, 1
  %conv59.i.1116.2 = trunc i32 %xor58.i.1115.2 to i8
  %scevgep60.1117.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %382, i64 0, i64 0, i64 0
  %390 = load i8, i8* %scevgep60.1117.2, align 1
  %call64.i.1118.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.1116.2, i8 zeroext %390) #3
  %scevgep67.1119.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %384, i64 0, i64 0, i64 0
  store i8 %call64.i.1118.2, i8* %scevgep67.1119.2, align 1
  %391 = load i8, i8* %arrayidx70.i.1.2, align 1
  %scevgep64.1120.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %383, i64 0, i64 0, i64 0
  %392 = load i8, i8* %scevgep64.1120.2, align 1
  %call75.i.1121.2 = call zeroext i8 @mult(i8 zeroext %391, i8 zeroext %392) #3
  %scevgep71.1122.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %385, i64 0, i64 0, i64 0
  store i8 %call75.i.1121.2, i8* %scevgep71.1122.2, align 1
  %scevgep68.1123.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %384, i64 0, i64 0, i64 0
  %393 = load i8, i8* %scevgep68.1123.2, align 1
  %conv84.i.1124.2 = zext i8 %393 to i32
  %scevgep72.1125.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %385, i64 0, i64 0, i64 0
  %394 = load i8, i8* %scevgep72.1125.2, align 1
  %conv89.i.1126.2 = zext i8 %394 to i32
  %xor90.i.1127.2 = xor i32 %conv84.i.1124.2, %conv89.i.1126.2
  %conv91.i.1128.2 = trunc i32 %xor90.i.1127.2 to i8
  %scevgep75.1129.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %386, i64 0, i64 0, i64 0
  store i8 %conv91.i.1128.2, i8* %scevgep75.1129.2, align 1
  %scevgep56.2.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %341, i64 0, i64 0, i64 2
  %395 = load i8, i8* %scevgep56.2.1.2, align 1
  %conv44.i.2.1.2 = zext i8 %395 to i32
  %scevgep59.2.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %382, i64 0, i64 0, i64 2
  %396 = load i8, i8* %scevgep59.2.1.2, align 1
  %conv49.i.2.1.2 = zext i8 %396 to i32
  %xor.i.2.1.2 = xor i32 %conv44.i.2.1.2, %conv49.i.2.1.2
  %conv50.i.2.1.2 = trunc i32 %xor.i.2.1.2 to i8
  %scevgep63.2.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %383, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.1.2, i8* %scevgep63.2.1.2, align 1
  %397 = load i8, i8* %arrayidx56.i.1.2, align 1
  %conv57.i.2.1.2 = zext i8 %397 to i32
  %xor58.i.2.1.2 = xor i32 %conv57.i.2.1.2, 1
  %conv59.i.2.1.2 = trunc i32 %xor58.i.2.1.2 to i8
  %scevgep60.2.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %382, i64 0, i64 0, i64 2
  %398 = load i8, i8* %scevgep60.2.1.2, align 1
  %call64.i.2.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.1.2, i8 zeroext %398) #3
  %scevgep67.2.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %384, i64 0, i64 0, i64 2
  store i8 %call64.i.2.1.2, i8* %scevgep67.2.1.2, align 1
  %399 = load i8, i8* %arrayidx70.i.1.2, align 1
  %scevgep64.2.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %383, i64 0, i64 0, i64 2
  %400 = load i8, i8* %scevgep64.2.1.2, align 1
  %call75.i.2.1.2 = call zeroext i8 @mult(i8 zeroext %399, i8 zeroext %400) #3
  %scevgep71.2.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %385, i64 0, i64 0, i64 2
  store i8 %call75.i.2.1.2, i8* %scevgep71.2.1.2, align 1
  %scevgep68.2.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %384, i64 0, i64 0, i64 2
  %401 = load i8, i8* %scevgep68.2.1.2, align 1
  %conv84.i.2.1.2 = zext i8 %401 to i32
  %scevgep72.2.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %385, i64 0, i64 0, i64 2
  %402 = load i8, i8* %scevgep72.2.1.2, align 1
  %conv89.i.2.1.2 = zext i8 %402 to i32
  %xor90.i.2.1.2 = xor i32 %conv84.i.2.1.2, %conv89.i.2.1.2
  %conv91.i.2.1.2 = trunc i32 %xor90.i.2.1.2 to i8
  %scevgep75.2.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %386, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.1.2, i8* %scevgep75.2.1.2, align 1
  %scevgep56.3.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %341, i64 0, i64 0, i64 3
  %403 = load i8, i8* %scevgep56.3.1.2, align 1
  %conv44.i.3.1.2 = zext i8 %403 to i32
  %scevgep59.3.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %382, i64 0, i64 0, i64 3
  %404 = load i8, i8* %scevgep59.3.1.2, align 1
  %conv49.i.3.1.2 = zext i8 %404 to i32
  %xor.i.3.1.2 = xor i32 %conv44.i.3.1.2, %conv49.i.3.1.2
  %conv50.i.3.1.2 = trunc i32 %xor.i.3.1.2 to i8
  %scevgep63.3.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %383, i64 0, i64 0, i64 3
  store i8 %conv50.i.3.1.2, i8* %scevgep63.3.1.2, align 1
  %405 = load i8, i8* %arrayidx56.i.1.2, align 1
  %conv57.i.3.1.2 = zext i8 %405 to i32
  %xor58.i.3.1.2 = xor i32 %conv57.i.3.1.2, 1
  %conv59.i.3.1.2 = trunc i32 %xor58.i.3.1.2 to i8
  %scevgep60.3.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %382, i64 0, i64 0, i64 3
  %406 = load i8, i8* %scevgep60.3.1.2, align 1
  %call64.i.3.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.3.1.2, i8 zeroext %406) #3
  %scevgep67.3.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %384, i64 0, i64 0, i64 3
  store i8 %call64.i.3.1.2, i8* %scevgep67.3.1.2, align 1
  %407 = load i8, i8* %arrayidx70.i.1.2, align 1
  %scevgep64.3.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %383, i64 0, i64 0, i64 3
  %408 = load i8, i8* %scevgep64.3.1.2, align 1
  %call75.i.3.1.2 = call zeroext i8 @mult(i8 zeroext %407, i8 zeroext %408) #3
  %scevgep71.3.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %385, i64 0, i64 0, i64 3
  store i8 %call75.i.3.1.2, i8* %scevgep71.3.1.2, align 1
  %scevgep68.3.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %384, i64 0, i64 0, i64 3
  %409 = load i8, i8* %scevgep68.3.1.2, align 1
  %conv84.i.3.1.2 = zext i8 %409 to i32
  %scevgep72.3.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %385, i64 0, i64 0, i64 3
  %410 = load i8, i8* %scevgep72.3.1.2, align 1
  %conv89.i.3.1.2 = zext i8 %410 to i32
  %xor90.i.3.1.2 = xor i32 %conv84.i.3.1.2, %conv89.i.3.1.2
  %conv91.i.3.1.2 = trunc i32 %xor90.i.3.1.2 to i8
  %scevgep75.3.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %386, i64 0, i64 0, i64 3
  store i8 %conv91.i.3.1.2, i8* %scevgep75.3.1.2, align 1
  %scevgep58.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %382, i64 0, i64 1, i64 0
  %411 = bitcast i8* %scevgep58.1.2 to [4 x [4 x i8]]*
  %scevgep62.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %383, i64 0, i64 1, i64 0
  %412 = bitcast i8* %scevgep62.1.2 to [4 x [4 x i8]]*
  %scevgep66.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %384, i64 0, i64 1, i64 0
  %413 = bitcast i8* %scevgep66.1.2 to [4 x [4 x i8]]*
  %scevgep70.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %385, i64 0, i64 1, i64 0
  %414 = bitcast i8* %scevgep70.1.2 to [4 x [4 x i8]]*
  %scevgep74.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %386, i64 0, i64 1, i64 0
  %415 = bitcast i8* %scevgep74.1.2 to [4 x [4 x i8]]*
  %arrayidx56.i.2.2 = getelementptr inbounds i8, i8* %x, i64 2
  %arrayidx70.i.2.2 = getelementptr inbounds i8, i8* %x, i64 2
  %scevgep56.2134.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %341, i64 0, i64 0, i64 0
  %416 = load i8, i8* %scevgep56.2134.2, align 1
  %conv44.i.2135.2 = zext i8 %416 to i32
  %scevgep59.2136.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %411, i64 0, i64 0, i64 0
  %417 = load i8, i8* %scevgep59.2136.2, align 1
  %conv49.i.2137.2 = zext i8 %417 to i32
  %xor.i.2138.2 = xor i32 %conv44.i.2135.2, %conv49.i.2137.2
  %conv50.i.2139.2 = trunc i32 %xor.i.2138.2 to i8
  %scevgep63.2140.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %412, i64 0, i64 0, i64 0
  store i8 %conv50.i.2139.2, i8* %scevgep63.2140.2, align 1
  %418 = load i8, i8* %arrayidx56.i.2.2, align 1
  %conv57.i.2141.2 = zext i8 %418 to i32
  %xor58.i.2142.2 = xor i32 %conv57.i.2141.2, 1
  %conv59.i.2143.2 = trunc i32 %xor58.i.2142.2 to i8
  %scevgep60.2144.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %411, i64 0, i64 0, i64 0
  %419 = load i8, i8* %scevgep60.2144.2, align 1
  %call64.i.2145.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.2143.2, i8 zeroext %419) #3
  %scevgep67.2146.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %413, i64 0, i64 0, i64 0
  store i8 %call64.i.2145.2, i8* %scevgep67.2146.2, align 1
  %420 = load i8, i8* %arrayidx70.i.2.2, align 1
  %scevgep64.2147.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %412, i64 0, i64 0, i64 0
  %421 = load i8, i8* %scevgep64.2147.2, align 1
  %call75.i.2148.2 = call zeroext i8 @mult(i8 zeroext %420, i8 zeroext %421) #3
  %scevgep71.2149.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %414, i64 0, i64 0, i64 0
  store i8 %call75.i.2148.2, i8* %scevgep71.2149.2, align 1
  %scevgep68.2150.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %413, i64 0, i64 0, i64 0
  %422 = load i8, i8* %scevgep68.2150.2, align 1
  %conv84.i.2151.2 = zext i8 %422 to i32
  %scevgep72.2152.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %414, i64 0, i64 0, i64 0
  %423 = load i8, i8* %scevgep72.2152.2, align 1
  %conv89.i.2153.2 = zext i8 %423 to i32
  %xor90.i.2154.2 = xor i32 %conv84.i.2151.2, %conv89.i.2153.2
  %conv91.i.2155.2 = trunc i32 %xor90.i.2154.2 to i8
  %scevgep75.2156.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %415, i64 0, i64 0, i64 0
  store i8 %conv91.i.2155.2, i8* %scevgep75.2156.2, align 1
  %scevgep56.1.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %341, i64 0, i64 0, i64 1
  %424 = load i8, i8* %scevgep56.1.2.2, align 1
  %conv44.i.1.2.2 = zext i8 %424 to i32
  %scevgep59.1.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %411, i64 0, i64 0, i64 1
  %425 = load i8, i8* %scevgep59.1.2.2, align 1
  %conv49.i.1.2.2 = zext i8 %425 to i32
  %xor.i.1.2.2 = xor i32 %conv44.i.1.2.2, %conv49.i.1.2.2
  %conv50.i.1.2.2 = trunc i32 %xor.i.1.2.2 to i8
  %scevgep63.1.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %412, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.2.2, i8* %scevgep63.1.2.2, align 1
  %426 = load i8, i8* %arrayidx56.i.2.2, align 1
  %conv57.i.1.2.2 = zext i8 %426 to i32
  %xor58.i.1.2.2 = xor i32 %conv57.i.1.2.2, 1
  %conv59.i.1.2.2 = trunc i32 %xor58.i.1.2.2 to i8
  %scevgep60.1.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %411, i64 0, i64 0, i64 1
  %427 = load i8, i8* %scevgep60.1.2.2, align 1
  %call64.i.1.2.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.2.2, i8 zeroext %427) #3
  %scevgep67.1.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %413, i64 0, i64 0, i64 1
  store i8 %call64.i.1.2.2, i8* %scevgep67.1.2.2, align 1
  %428 = load i8, i8* %arrayidx70.i.2.2, align 1
  %scevgep64.1.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %412, i64 0, i64 0, i64 1
  %429 = load i8, i8* %scevgep64.1.2.2, align 1
  %call75.i.1.2.2 = call zeroext i8 @mult(i8 zeroext %428, i8 zeroext %429) #3
  %scevgep71.1.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %414, i64 0, i64 0, i64 1
  store i8 %call75.i.1.2.2, i8* %scevgep71.1.2.2, align 1
  %scevgep68.1.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %413, i64 0, i64 0, i64 1
  %430 = load i8, i8* %scevgep68.1.2.2, align 1
  %conv84.i.1.2.2 = zext i8 %430 to i32
  %scevgep72.1.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %414, i64 0, i64 0, i64 1
  %431 = load i8, i8* %scevgep72.1.2.2, align 1
  %conv89.i.1.2.2 = zext i8 %431 to i32
  %xor90.i.1.2.2 = xor i32 %conv84.i.1.2.2, %conv89.i.1.2.2
  %conv91.i.1.2.2 = trunc i32 %xor90.i.1.2.2 to i8
  %scevgep75.1.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %415, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.2.2, i8* %scevgep75.1.2.2, align 1
  %scevgep56.3.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %341, i64 0, i64 0, i64 3
  %432 = load i8, i8* %scevgep56.3.2.2, align 1
  %conv44.i.3.2.2 = zext i8 %432 to i32
  %scevgep59.3.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %411, i64 0, i64 0, i64 3
  %433 = load i8, i8* %scevgep59.3.2.2, align 1
  %conv49.i.3.2.2 = zext i8 %433 to i32
  %xor.i.3.2.2 = xor i32 %conv44.i.3.2.2, %conv49.i.3.2.2
  %conv50.i.3.2.2 = trunc i32 %xor.i.3.2.2 to i8
  %scevgep63.3.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %412, i64 0, i64 0, i64 3
  store i8 %conv50.i.3.2.2, i8* %scevgep63.3.2.2, align 1
  %434 = load i8, i8* %arrayidx56.i.2.2, align 1
  %conv57.i.3.2.2 = zext i8 %434 to i32
  %xor58.i.3.2.2 = xor i32 %conv57.i.3.2.2, 1
  %conv59.i.3.2.2 = trunc i32 %xor58.i.3.2.2 to i8
  %scevgep60.3.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %411, i64 0, i64 0, i64 3
  %435 = load i8, i8* %scevgep60.3.2.2, align 1
  %call64.i.3.2.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.3.2.2, i8 zeroext %435) #3
  %scevgep67.3.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %413, i64 0, i64 0, i64 3
  store i8 %call64.i.3.2.2, i8* %scevgep67.3.2.2, align 1
  %436 = load i8, i8* %arrayidx70.i.2.2, align 1
  %scevgep64.3.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %412, i64 0, i64 0, i64 3
  %437 = load i8, i8* %scevgep64.3.2.2, align 1
  %call75.i.3.2.2 = call zeroext i8 @mult(i8 zeroext %436, i8 zeroext %437) #3
  %scevgep71.3.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %414, i64 0, i64 0, i64 3
  store i8 %call75.i.3.2.2, i8* %scevgep71.3.2.2, align 1
  %scevgep68.3.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %413, i64 0, i64 0, i64 3
  %438 = load i8, i8* %scevgep68.3.2.2, align 1
  %conv84.i.3.2.2 = zext i8 %438 to i32
  %scevgep72.3.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %414, i64 0, i64 0, i64 3
  %439 = load i8, i8* %scevgep72.3.2.2, align 1
  %conv89.i.3.2.2 = zext i8 %439 to i32
  %xor90.i.3.2.2 = xor i32 %conv84.i.3.2.2, %conv89.i.3.2.2
  %conv91.i.3.2.2 = trunc i32 %xor90.i.3.2.2 to i8
  %scevgep75.3.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %415, i64 0, i64 0, i64 3
  store i8 %conv91.i.3.2.2, i8* %scevgep75.3.2.2, align 1
  %scevgep58.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %411, i64 0, i64 1, i64 0
  %440 = bitcast i8* %scevgep58.2.2 to [4 x [4 x i8]]*
  %scevgep62.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %412, i64 0, i64 1, i64 0
  %441 = bitcast i8* %scevgep62.2.2 to [4 x [4 x i8]]*
  %scevgep66.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %413, i64 0, i64 1, i64 0
  %442 = bitcast i8* %scevgep66.2.2 to [4 x [4 x i8]]*
  %scevgep70.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %414, i64 0, i64 1, i64 0
  %443 = bitcast i8* %scevgep70.2.2 to [4 x [4 x i8]]*
  %scevgep74.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %415, i64 0, i64 1, i64 0
  %444 = bitcast i8* %scevgep74.2.2 to [4 x [4 x i8]]*
  %arrayidx56.i.3.2 = getelementptr inbounds i8, i8* %x, i64 3
  %arrayidx70.i.3.2 = getelementptr inbounds i8, i8* %x, i64 3
  %scevgep56.3161.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %341, i64 0, i64 0, i64 0
  %445 = load i8, i8* %scevgep56.3161.2, align 1
  %conv44.i.3162.2 = zext i8 %445 to i32
  %scevgep59.3163.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %440, i64 0, i64 0, i64 0
  %446 = load i8, i8* %scevgep59.3163.2, align 1
  %conv49.i.3164.2 = zext i8 %446 to i32
  %xor.i.3165.2 = xor i32 %conv44.i.3162.2, %conv49.i.3164.2
  %conv50.i.3166.2 = trunc i32 %xor.i.3165.2 to i8
  %scevgep63.3167.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %441, i64 0, i64 0, i64 0
  store i8 %conv50.i.3166.2, i8* %scevgep63.3167.2, align 1
  %447 = load i8, i8* %arrayidx56.i.3.2, align 1
  %conv57.i.3168.2 = zext i8 %447 to i32
  %xor58.i.3169.2 = xor i32 %conv57.i.3168.2, 1
  %conv59.i.3170.2 = trunc i32 %xor58.i.3169.2 to i8
  %scevgep60.3171.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %440, i64 0, i64 0, i64 0
  %448 = load i8, i8* %scevgep60.3171.2, align 1
  %call64.i.3172.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.3170.2, i8 zeroext %448) #3
  %scevgep67.3173.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %442, i64 0, i64 0, i64 0
  store i8 %call64.i.3172.2, i8* %scevgep67.3173.2, align 1
  %449 = load i8, i8* %arrayidx70.i.3.2, align 1
  %scevgep64.3174.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %441, i64 0, i64 0, i64 0
  %450 = load i8, i8* %scevgep64.3174.2, align 1
  %call75.i.3175.2 = call zeroext i8 @mult(i8 zeroext %449, i8 zeroext %450) #3
  %scevgep71.3176.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %443, i64 0, i64 0, i64 0
  store i8 %call75.i.3175.2, i8* %scevgep71.3176.2, align 1
  %scevgep68.3177.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %442, i64 0, i64 0, i64 0
  %451 = load i8, i8* %scevgep68.3177.2, align 1
  %conv84.i.3178.2 = zext i8 %451 to i32
  %scevgep72.3179.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %443, i64 0, i64 0, i64 0
  %452 = load i8, i8* %scevgep72.3179.2, align 1
  %conv89.i.3180.2 = zext i8 %452 to i32
  %xor90.i.3181.2 = xor i32 %conv84.i.3178.2, %conv89.i.3180.2
  %conv91.i.3182.2 = trunc i32 %xor90.i.3181.2 to i8
  %scevgep75.3183.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %444, i64 0, i64 0, i64 0
  store i8 %conv91.i.3182.2, i8* %scevgep75.3183.2, align 1
  %scevgep56.1.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %341, i64 0, i64 0, i64 1
  %453 = load i8, i8* %scevgep56.1.3.2, align 1
  %conv44.i.1.3.2 = zext i8 %453 to i32
  %scevgep59.1.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %440, i64 0, i64 0, i64 1
  %454 = load i8, i8* %scevgep59.1.3.2, align 1
  %conv49.i.1.3.2 = zext i8 %454 to i32
  %xor.i.1.3.2 = xor i32 %conv44.i.1.3.2, %conv49.i.1.3.2
  %conv50.i.1.3.2 = trunc i32 %xor.i.1.3.2 to i8
  %scevgep63.1.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %441, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.3.2, i8* %scevgep63.1.3.2, align 1
  %455 = load i8, i8* %arrayidx56.i.3.2, align 1
  %conv57.i.1.3.2 = zext i8 %455 to i32
  %xor58.i.1.3.2 = xor i32 %conv57.i.1.3.2, 1
  %conv59.i.1.3.2 = trunc i32 %xor58.i.1.3.2 to i8
  %scevgep60.1.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %440, i64 0, i64 0, i64 1
  %456 = load i8, i8* %scevgep60.1.3.2, align 1
  %call64.i.1.3.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.3.2, i8 zeroext %456) #3
  %scevgep67.1.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %442, i64 0, i64 0, i64 1
  store i8 %call64.i.1.3.2, i8* %scevgep67.1.3.2, align 1
  %457 = load i8, i8* %arrayidx70.i.3.2, align 1
  %scevgep64.1.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %441, i64 0, i64 0, i64 1
  %458 = load i8, i8* %scevgep64.1.3.2, align 1
  %call75.i.1.3.2 = call zeroext i8 @mult(i8 zeroext %457, i8 zeroext %458) #3
  %scevgep71.1.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %443, i64 0, i64 0, i64 1
  store i8 %call75.i.1.3.2, i8* %scevgep71.1.3.2, align 1
  %scevgep68.1.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %442, i64 0, i64 0, i64 1
  %459 = load i8, i8* %scevgep68.1.3.2, align 1
  %conv84.i.1.3.2 = zext i8 %459 to i32
  %scevgep72.1.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %443, i64 0, i64 0, i64 1
  %460 = load i8, i8* %scevgep72.1.3.2, align 1
  %conv89.i.1.3.2 = zext i8 %460 to i32
  %xor90.i.1.3.2 = xor i32 %conv84.i.1.3.2, %conv89.i.1.3.2
  %conv91.i.1.3.2 = trunc i32 %xor90.i.1.3.2 to i8
  %scevgep75.1.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %444, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.3.2, i8* %scevgep75.1.3.2, align 1
  %scevgep56.2.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %341, i64 0, i64 0, i64 2
  %461 = load i8, i8* %scevgep56.2.3.2, align 1
  %conv44.i.2.3.2 = zext i8 %461 to i32
  %scevgep59.2.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %440, i64 0, i64 0, i64 2
  %462 = load i8, i8* %scevgep59.2.3.2, align 1
  %conv49.i.2.3.2 = zext i8 %462 to i32
  %xor.i.2.3.2 = xor i32 %conv44.i.2.3.2, %conv49.i.2.3.2
  %conv50.i.2.3.2 = trunc i32 %xor.i.2.3.2 to i8
  %scevgep63.2.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %441, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.3.2, i8* %scevgep63.2.3.2, align 1
  %463 = load i8, i8* %arrayidx56.i.3.2, align 1
  %conv57.i.2.3.2 = zext i8 %463 to i32
  %xor58.i.2.3.2 = xor i32 %conv57.i.2.3.2, 1
  %conv59.i.2.3.2 = trunc i32 %xor58.i.2.3.2 to i8
  %scevgep60.2.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %440, i64 0, i64 0, i64 2
  %464 = load i8, i8* %scevgep60.2.3.2, align 1
  %call64.i.2.3.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.3.2, i8 zeroext %464) #3
  %scevgep67.2.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %442, i64 0, i64 0, i64 2
  store i8 %call64.i.2.3.2, i8* %scevgep67.2.3.2, align 1
  %465 = load i8, i8* %arrayidx70.i.3.2, align 1
  %scevgep64.2.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %441, i64 0, i64 0, i64 2
  %466 = load i8, i8* %scevgep64.2.3.2, align 1
  %call75.i.2.3.2 = call zeroext i8 @mult(i8 zeroext %465, i8 zeroext %466) #3
  %scevgep71.2.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %443, i64 0, i64 0, i64 2
  store i8 %call75.i.2.3.2, i8* %scevgep71.2.3.2, align 1
  %scevgep68.2.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %442, i64 0, i64 0, i64 2
  %467 = load i8, i8* %scevgep68.2.3.2, align 1
  %conv84.i.2.3.2 = zext i8 %467 to i32
  %scevgep72.2.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %443, i64 0, i64 0, i64 2
  %468 = load i8, i8* %scevgep72.2.3.2, align 1
  %conv89.i.2.3.2 = zext i8 %468 to i32
  %xor90.i.2.3.2 = xor i32 %conv84.i.2.3.2, %conv89.i.2.3.2
  %conv91.i.2.3.2 = trunc i32 %xor90.i.2.3.2 to i8
  %scevgep75.2.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %444, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.3.2, i8* %scevgep75.2.3.2, align 1
  %469 = load i8, i8* %x, align 1
  %470 = load i8, i8* %arraydecay7.2, align 1
  %call111.i.2496 = call zeroext i8 @mult(i8 zeroext %469, i8 zeroext %470) #3
  store i8 %call111.i.2496, i8* %arraydecay10.2, align 1
  %scevgep87.1.2505 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 1
  %471 = load i8, i8* %scevgep87.1.2505, align 1
  %conv126.i.1.2506 = zext i8 %471 to i32
  %472 = load i8, i8* %arraydecay10.2, align 1
  %conv129.i.1.2507 = zext i8 %472 to i32
  %xor130.i.1.2508 = xor i32 %conv129.i.1.2507, %conv126.i.1.2506
  %conv131.i.1.2509 = trunc i32 %xor130.i.1.2508 to i8
  store i8 %conv131.i.1.2509, i8* %arraydecay10.2, align 1
  %scevgep87.2.2512 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 2
  %473 = load i8, i8* %scevgep87.2.2512, align 1
  %conv126.i.2.2513 = zext i8 %473 to i32
  %474 = load i8, i8* %arraydecay10.2, align 1
  %conv129.i.2.2514 = zext i8 %474 to i32
  %xor130.i.2.2515 = xor i32 %conv129.i.2.2514, %conv126.i.2.2513
  %conv131.i.2.2516 = trunc i32 %xor130.i.2.2515 to i8
  store i8 %conv131.i.2.2516, i8* %arraydecay10.2, align 1
  %scevgep87.3.2519 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 3
  %475 = load i8, i8* %scevgep87.3.2519, align 1
  %conv126.i.3.2520 = zext i8 %475 to i32
  %476 = load i8, i8* %arraydecay10.2, align 1
  %conv129.i.3.2521 = zext i8 %476 to i32
  %xor130.i.3.2522 = xor i32 %conv129.i.3.2521, %conv126.i.3.2520
  %conv131.i.3.2523 = trunc i32 %xor130.i.3.2522 to i8
  store i8 %conv131.i.3.2523, i8* %arraydecay10.2, align 1
  %scevgep86.2525 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 1, i64 0
  %477 = bitcast i8* %scevgep86.2525 to [4 x [4 x i8]]*
  %arrayidx108.i.1.2 = getelementptr inbounds i8, i8* %x, i64 1
  %478 = load i8, i8* %arrayidx108.i.1.2, align 1
  %arrayidx110.i.1.2 = getelementptr inbounds i8, i8* %arraydecay7.2, i64 1
  %479 = load i8, i8* %arrayidx110.i.1.2, align 1
  %call111.i.1.2 = call zeroext i8 @mult(i8 zeroext %478, i8 zeroext %479) #3
  %arrayidx113.i.1.2 = getelementptr inbounds i8, i8* %arraydecay10.2, i64 1
  store i8 %call111.i.1.2, i8* %arrayidx113.i.1.2, align 1
  %arrayidx128.i.1.2 = getelementptr inbounds i8, i8* %arraydecay10.2, i64 1
  %scevgep87.1188.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %477, i64 0, i64 0, i64 0
  %480 = load i8, i8* %scevgep87.1188.2, align 1
  %conv126.i.1189.2 = zext i8 %480 to i32
  %481 = load i8, i8* %arrayidx128.i.1.2, align 1
  %conv129.i.1190.2 = zext i8 %481 to i32
  %xor130.i.1191.2 = xor i32 %conv129.i.1190.2, %conv126.i.1189.2
  %conv131.i.1192.2 = trunc i32 %xor130.i.1191.2 to i8
  store i8 %conv131.i.1192.2, i8* %arrayidx128.i.1.2, align 1
  %scevgep87.2.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %477, i64 0, i64 0, i64 2
  %482 = load i8, i8* %scevgep87.2.1.2, align 1
  %conv126.i.2.1.2 = zext i8 %482 to i32
  %483 = load i8, i8* %arrayidx128.i.1.2, align 1
  %conv129.i.2.1.2 = zext i8 %483 to i32
  %xor130.i.2.1.2 = xor i32 %conv129.i.2.1.2, %conv126.i.2.1.2
  %conv131.i.2.1.2 = trunc i32 %xor130.i.2.1.2 to i8
  store i8 %conv131.i.2.1.2, i8* %arrayidx128.i.1.2, align 1
  %scevgep87.3.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %477, i64 0, i64 0, i64 3
  %484 = load i8, i8* %scevgep87.3.1.2, align 1
  %conv126.i.3.1.2 = zext i8 %484 to i32
  %485 = load i8, i8* %arrayidx128.i.1.2, align 1
  %conv129.i.3.1.2 = zext i8 %485 to i32
  %xor130.i.3.1.2 = xor i32 %conv129.i.3.1.2, %conv126.i.3.1.2
  %conv131.i.3.1.2 = trunc i32 %xor130.i.3.1.2 to i8
  store i8 %conv131.i.3.1.2, i8* %arrayidx128.i.1.2, align 1
  %scevgep86.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %477, i64 0, i64 1, i64 0
  %486 = bitcast i8* %scevgep86.1.2 to [4 x [4 x i8]]*
  %arrayidx108.i.2.2 = getelementptr inbounds i8, i8* %x, i64 2
  %487 = load i8, i8* %arrayidx108.i.2.2, align 1
  %arrayidx110.i.2.2 = getelementptr inbounds i8, i8* %arraydecay7.2, i64 2
  %488 = load i8, i8* %arrayidx110.i.2.2, align 1
  %call111.i.2.2 = call zeroext i8 @mult(i8 zeroext %487, i8 zeroext %488) #3
  %arrayidx113.i.2.2 = getelementptr inbounds i8, i8* %arraydecay10.2, i64 2
  store i8 %call111.i.2.2, i8* %arrayidx113.i.2.2, align 1
  %arrayidx128.i.2.2 = getelementptr inbounds i8, i8* %arraydecay10.2, i64 2
  %scevgep87.2197.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %486, i64 0, i64 0, i64 0
  %489 = load i8, i8* %scevgep87.2197.2, align 1
  %conv126.i.2198.2 = zext i8 %489 to i32
  %490 = load i8, i8* %arrayidx128.i.2.2, align 1
  %conv129.i.2199.2 = zext i8 %490 to i32
  %xor130.i.2200.2 = xor i32 %conv129.i.2199.2, %conv126.i.2198.2
  %conv131.i.2201.2 = trunc i32 %xor130.i.2200.2 to i8
  store i8 %conv131.i.2201.2, i8* %arrayidx128.i.2.2, align 1
  %scevgep87.1.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %486, i64 0, i64 0, i64 1
  %491 = load i8, i8* %scevgep87.1.2.2, align 1
  %conv126.i.1.2.2 = zext i8 %491 to i32
  %492 = load i8, i8* %arrayidx128.i.2.2, align 1
  %conv129.i.1.2.2 = zext i8 %492 to i32
  %xor130.i.1.2.2 = xor i32 %conv129.i.1.2.2, %conv126.i.1.2.2
  %conv131.i.1.2.2 = trunc i32 %xor130.i.1.2.2 to i8
  store i8 %conv131.i.1.2.2, i8* %arrayidx128.i.2.2, align 1
  %scevgep87.3.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %486, i64 0, i64 0, i64 3
  %493 = load i8, i8* %scevgep87.3.2.2, align 1
  %conv126.i.3.2.2 = zext i8 %493 to i32
  %494 = load i8, i8* %arrayidx128.i.2.2, align 1
  %conv129.i.3.2.2 = zext i8 %494 to i32
  %xor130.i.3.2.2 = xor i32 %conv129.i.3.2.2, %conv126.i.3.2.2
  %conv131.i.3.2.2 = trunc i32 %xor130.i.3.2.2 to i8
  store i8 %conv131.i.3.2.2, i8* %arrayidx128.i.2.2, align 1
  %scevgep86.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %486, i64 0, i64 1, i64 0
  %495 = bitcast i8* %scevgep86.2.2 to [4 x [4 x i8]]*
  %arrayidx108.i.3.2 = getelementptr inbounds i8, i8* %x, i64 3
  %496 = load i8, i8* %arrayidx108.i.3.2, align 1
  %arrayidx110.i.3.2 = getelementptr inbounds i8, i8* %arraydecay7.2, i64 3
  %497 = load i8, i8* %arrayidx110.i.3.2, align 1
  %call111.i.3.2 = call zeroext i8 @mult(i8 zeroext %496, i8 zeroext %497) #3
  %arrayidx113.i.3.2 = getelementptr inbounds i8, i8* %arraydecay10.2, i64 3
  store i8 %call111.i.3.2, i8* %arrayidx113.i.3.2, align 1
  %arrayidx128.i.3.2 = getelementptr inbounds i8, i8* %arraydecay10.2, i64 3
  %scevgep87.3206.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %495, i64 0, i64 0, i64 0
  %498 = load i8, i8* %scevgep87.3206.2, align 1
  %conv126.i.3207.2 = zext i8 %498 to i32
  %499 = load i8, i8* %arrayidx128.i.3.2, align 1
  %conv129.i.3208.2 = zext i8 %499 to i32
  %xor130.i.3209.2 = xor i32 %conv129.i.3208.2, %conv126.i.3207.2
  %conv131.i.3210.2 = trunc i32 %xor130.i.3209.2 to i8
  store i8 %conv131.i.3210.2, i8* %arrayidx128.i.3.2, align 1
  %scevgep87.1.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %495, i64 0, i64 0, i64 1
  %500 = load i8, i8* %scevgep87.1.3.2, align 1
  %conv126.i.1.3.2 = zext i8 %500 to i32
  %501 = load i8, i8* %arrayidx128.i.3.2, align 1
  %conv129.i.1.3.2 = zext i8 %501 to i32
  %xor130.i.1.3.2 = xor i32 %conv129.i.1.3.2, %conv126.i.1.3.2
  %conv131.i.1.3.2 = trunc i32 %xor130.i.1.3.2 to i8
  store i8 %conv131.i.1.3.2, i8* %arrayidx128.i.3.2, align 1
  %scevgep87.2.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %495, i64 0, i64 0, i64 2
  %502 = load i8, i8* %scevgep87.2.3.2, align 1
  %conv126.i.2.3.2 = zext i8 %502 to i32
  %503 = load i8, i8* %arrayidx128.i.3.2, align 1
  %conv129.i.2.3.2 = zext i8 %503 to i32
  %xor130.i.2.3.2 = xor i32 %conv129.i.2.3.2, %conv126.i.2.3.2
  %conv131.i.2.3.2 = trunc i32 %xor130.i.2.3.2 to i8
  store i8 %conv131.i.2.3.2, i8* %arrayidx128.i.3.2, align 1
  %call139.i.2 = call zeroext i8 @mult(i8 zeroext %call.i22.2, i8 zeroext %call1.i.2) #3
  %conv140.i.2 = zext i8 %call139.i.2 to i32
  %scevgep93.2527 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %341, i64 0, i64 0, i64 0
  %scevgep94.2528 = getelementptr i8, i8* %scevgep93.2527, i64 4
  %504 = load i8, i8* %scevgep94.2528, align 1
  %scevgep93.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %341, i64 0, i64 0, i64 1
  %scevgep94.1.2 = getelementptr i8, i8* %scevgep93.1.2, i64 4
  %505 = load i8, i8* %scevgep94.1.2, align 1
  %conv.i.i172.i.1.2 = zext i8 %505 to i32
  %conv1.i.i173.i.1.2 = zext i8 %504 to i32
  %xor.i.i174.i.1.2 = xor i32 %conv1.i.i173.i.1.2, %conv.i.i172.i.1.2
  %conv2.i.i175.i.1.2 = trunc i32 %xor.i.i174.i.1.2 to i8
  %scevgep93.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %341, i64 0, i64 0, i64 2
  %scevgep94.2.2 = getelementptr i8, i8* %scevgep93.2.2, i64 4
  %506 = load i8, i8* %scevgep94.2.2, align 1
  %conv.i.i172.i.2.2 = zext i8 %506 to i32
  %conv1.i.i173.i.2.2 = zext i8 %conv2.i.i175.i.1.2 to i32
  %xor.i.i174.i.2.2 = xor i32 %conv1.i.i173.i.2.2, %conv.i.i172.i.2.2
  %conv2.i.i175.i.2.2 = trunc i32 %xor.i.i174.i.2.2 to i8
  %scevgep93.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %341, i64 0, i64 0, i64 3
  %scevgep94.3.2 = getelementptr i8, i8* %scevgep93.3.2, i64 4
  %507 = load i8, i8* %scevgep94.3.2, align 1
  %conv.i.i172.i.3.2 = zext i8 %507 to i32
  %conv1.i.i173.i.3.2 = zext i8 %conv2.i.i175.i.2.2 to i32
  %xor.i.i174.i.3.2 = xor i32 %conv1.i.i173.i.3.2, %conv.i.i172.i.3.2
  %conv2.i.i175.i.3.2 = trunc i32 %xor.i.i174.i.3.2 to i8
  %conv142.i.2 = zext i8 %conv2.i.i175.i.3.2 to i32
  %cmp143.i.2 = icmp eq i32 %conv140.i.2, %conv142.i.2
  call void @assert(i1 zeroext %cmp143.i.2) #3
  %scevgep23 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 3, i64 0
  %508 = load i8, i8* %scevgep23, align 1
  store i8 %508, i8* %y, align 1
  %scevgep26.1 = getelementptr i8, i8* %scevgep23, i64 1
  %509 = load i8, i8* %scevgep26.1, align 1
  %scevgep27.1 = getelementptr i8, i8* %y, i64 1
  store i8 %509, i8* %scevgep27.1, align 1
  %scevgep26.2 = getelementptr i8, i8* %scevgep23, i64 2
  %510 = load i8, i8* %scevgep26.2, align 1
  %scevgep27.2 = getelementptr i8, i8* %y, i64 2
  store i8 %510, i8* %scevgep27.2, align 1
  %scevgep26.3 = getelementptr i8, i8* %scevgep23, i64 3
  %511 = load i8, i8* %scevgep26.3, align 1
  %scevgep27.3 = getelementptr i8, i8* %y, i64 3
  store i8 %511, i8* %scevgep27.3, align 1
  %call.i48 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call) #3
  %call.i48.1 = call zeroext i8 @mult(i8 zeroext %call.i48, i8 zeroext %call) #3
  %call.i48.2 = call zeroext i8 @mult(i8 zeroext %call.i48.1, i8 zeroext %call) #3
  %conv14 = zext i8 %call.i48.2 to i32
  %512 = load i8, i8* %y, align 1
  %scevgep.1 = getelementptr i8, i8* %y, i64 1
  %513 = load i8, i8* %scevgep.1, align 1
  %conv.i.i62.1 = zext i8 %513 to i32
  %conv1.i.i63.1 = zext i8 %512 to i32
  %xor.i.i64.1 = xor i32 %conv1.i.i63.1, %conv.i.i62.1
  %conv2.i.i65.1 = trunc i32 %xor.i.i64.1 to i8
  %scevgep.2 = getelementptr i8, i8* %y, i64 2
  %514 = load i8, i8* %scevgep.2, align 1
  %conv.i.i62.2 = zext i8 %514 to i32
  %conv1.i.i63.2 = zext i8 %conv2.i.i65.1 to i32
  %xor.i.i64.2 = xor i32 %conv1.i.i63.2, %conv.i.i62.2
  %conv2.i.i65.2 = trunc i32 %xor.i.i64.2 to i8
  %scevgep.3 = getelementptr i8, i8* %y, i64 3
  %515 = load i8, i8* %scevgep.3, align 1
  %conv.i.i62.3 = zext i8 %515 to i32
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
  %r.i.i = alloca [4 x [4 x i8]], align 16
  %s.i.i = alloca [4 x [4 x i8]], align 16
  %p0.i.i = alloca [4 x [4 x i8]], align 16
  %p1.i.i = alloca [4 x [4 x i8]], align 16
  %z.i.i = alloca [4 x [4 x i8]], align 16
  %z.i = alloca [4 x i8], align 1
  %zr.i = alloca [4 x i8], align 1
  %w.i = alloca [4 x i8], align 1
  %wr.i = alloca [4 x i8], align 1
  %u.i = alloca [4 x i8], align 1
  %v.i = alloca [4 x i8], align 1
  %v16.i = alloca [4 x i8], align 1
  %m.i = alloca [4 x i8], align 1
  %x254 = alloca [4 x i8], align 1
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %scevgep400.1 = getelementptr i8, i8* %x, i64 1
  %1 = load i8, i8* %scevgep400.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep400.2 = getelementptr i8, i8* %x, i64 2
  %2 = load i8, i8* %scevgep400.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %scevgep400.3 = getelementptr i8, i8* %x, i64 3
  %3 = load i8, i8* %scevgep400.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %conv2 = zext i8 %conv2.i.i.3 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %x254, i64 0, i64 0
  %call.i = call zeroext i8 (...) @rand() #3
  %conv.i = zext i8 %call.i to i32
  %4 = load i8, i8* %x, align 1
  %scevgep396.1 = getelementptr i8, i8* %x, i64 1
  %5 = load i8, i8* %scevgep396.1, align 1
  %conv.i.i.i.1 = zext i8 %5 to i32
  %conv1.i.i.i.1 = zext i8 %4 to i32
  %xor.i.i.i.1 = xor i32 %conv1.i.i.i.1, %conv.i.i.i.1
  %conv2.i.i.i.1 = trunc i32 %xor.i.i.i.1 to i8
  %scevgep396.2 = getelementptr i8, i8* %x, i64 2
  %6 = load i8, i8* %scevgep396.2, align 1
  %conv.i.i.i.2 = zext i8 %6 to i32
  %conv1.i.i.i.2 = zext i8 %conv2.i.i.i.1 to i32
  %xor.i.i.i.2 = xor i32 %conv1.i.i.i.2, %conv.i.i.i.2
  %conv2.i.i.i.2 = trunc i32 %xor.i.i.i.2 to i8
  %scevgep396.3 = getelementptr i8, i8* %x, i64 3
  %7 = load i8, i8* %scevgep396.3, align 1
  %conv.i.i.i.3 = zext i8 %7 to i32
  %conv1.i.i.i.3 = zext i8 %conv2.i.i.i.2 to i32
  %xor.i.i.i.3 = xor i32 %conv1.i.i.i.3, %conv.i.i.i.3
  %conv2.i.i.i.3 = trunc i32 %xor.i.i.i.3 to i8
  %conv2.i = zext i8 %conv2.i.i.i.3 to i32
  %cmp.i = icmp eq i32 %conv.i, %conv2.i
  call void @assume(i1 zeroext %cmp.i) #3
  %8 = load i8, i8* %x, align 1
  %call.i867 = call zeroext i8 @mult(i8 zeroext %8, i8 zeroext %8) #3
  %scevgep392 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 0
  store i8 %call.i867, i8* %scevgep392, align 1
  %scevgep391.1 = getelementptr i8, i8* %x, i64 1
  %9 = load i8, i8* %scevgep391.1, align 1
  %call.i868 = call zeroext i8 @mult(i8 zeroext %9, i8 zeroext %9) #3
  %scevgep392.1 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 1
  store i8 %call.i868, i8* %scevgep392.1, align 1
  %scevgep391.2 = getelementptr i8, i8* %x, i64 2
  %10 = load i8, i8* %scevgep391.2, align 1
  %call.i869 = call zeroext i8 @mult(i8 zeroext %10, i8 zeroext %10) #3
  %scevgep392.2 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 2
  store i8 %call.i869, i8* %scevgep392.2, align 1
  %scevgep391.3 = getelementptr i8, i8* %x, i64 3
  %11 = load i8, i8* %scevgep391.3, align 1
  %call.i870 = call zeroext i8 @mult(i8 zeroext %11, i8 zeroext %11) #3
  %scevgep392.3 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 3
  store i8 %call.i870, i8* %scevgep392.3, align 1
  %arraydecay5.i = getelementptr inbounds [4 x i8], [4 x i8]* %zr.i, i64 0, i64 0
  %call.i32.i = call zeroext i8 (...) @rand() #3
  %conv.i.i23 = zext i8 %call.i32.i to i32
  %scevgep387 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 0
  %12 = load i8, i8* %scevgep387, align 1
  %scevgep387.1 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 1
  %13 = load i8, i8* %scevgep387.1, align 1
  %conv.i.i.i.i.1 = zext i8 %13 to i32
  %conv1.i.i.i.i.1 = zext i8 %12 to i32
  %xor.i.i.i.i.1 = xor i32 %conv1.i.i.i.i.1, %conv.i.i.i.i.1
  %conv2.i.i.i.i.1 = trunc i32 %xor.i.i.i.i.1 to i8
  %scevgep387.2 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 2
  %14 = load i8, i8* %scevgep387.2, align 1
  %conv.i.i.i.i.2 = zext i8 %14 to i32
  %conv1.i.i.i.i.2 = zext i8 %conv2.i.i.i.i.1 to i32
  %xor.i.i.i.i.2 = xor i32 %conv1.i.i.i.i.2, %conv.i.i.i.i.2
  %conv2.i.i.i.i.2 = trunc i32 %xor.i.i.i.i.2 to i8
  %scevgep387.3 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 3
  %15 = load i8, i8* %scevgep387.3, align 1
  %conv.i.i.i.i.3 = zext i8 %15 to i32
  %conv1.i.i.i.i.3 = zext i8 %conv2.i.i.i.i.2 to i32
  %xor.i.i.i.i.3 = xor i32 %conv1.i.i.i.i.3, %conv.i.i.i.i.3
  %conv2.i.i.i.i.3 = trunc i32 %xor.i.i.i.i.3 to i8
  %conv2.i.i24 = zext i8 %conv2.i.i.i.i.3 to i32
  %cmp.i33.i = icmp eq i32 %conv.i.i23, %conv2.i.i24
  call void @assume(i1 zeroext %cmp.i33.i) #3
  %scevgep382 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 0
  %16 = load i8, i8* %scevgep382, align 1
  %scevgep383 = getelementptr [4 x i8], [4 x i8]* %zr.i, i64 0, i64 0
  store i8 %16, i8* %scevgep383, align 1
  %scevgep382.1 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 1
  %17 = load i8, i8* %scevgep382.1, align 1
  %scevgep383.1 = getelementptr [4 x i8], [4 x i8]* %zr.i, i64 0, i64 1
  store i8 %17, i8* %scevgep383.1, align 1
  %scevgep382.2 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 2
  %18 = load i8, i8* %scevgep382.2, align 1
  %scevgep383.2 = getelementptr [4 x i8], [4 x i8]* %zr.i, i64 0, i64 2
  store i8 %18, i8* %scevgep383.2, align 1
  %scevgep382.3 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 3
  %19 = load i8, i8* %scevgep382.3, align 1
  %scevgep383.3 = getelementptr [4 x i8], [4 x i8]* %zr.i, i64 0, i64 3
  store i8 %19, i8* %scevgep383.3, align 1
  %call7.i.i = call zeroext i8 (...) @rand() #3
  %conv8.i.i = zext i8 %call7.i.i to i32
  %20 = load i8, i8* %arraydecay5.i, align 1
  %conv9.i.i = zext i8 %20 to i32
  %xor.i.i25 = xor i32 %conv9.i.i, %conv8.i.i
  %conv10.i.i = trunc i32 %xor.i.i25 to i8
  store i8 %conv10.i.i, i8* %arraydecay5.i, align 1
  %conv11.i.i = zext i8 %call7.i.i to i32
  %scevgep378 = getelementptr [4 x i8], [4 x i8]* %zr.i, i64 0, i64 1
  %21 = load i8, i8* %scevgep378, align 1
  %conv13.i.i = zext i8 %21 to i32
  %xor14.i.i = xor i32 %conv13.i.i, %conv11.i.i
  %conv15.i.i = trunc i32 %xor14.i.i to i8
  store i8 %conv15.i.i, i8* %scevgep378, align 1
  %call7.i.i.1 = call zeroext i8 (...) @rand() #3
  %conv8.i.i.1 = zext i8 %call7.i.i.1 to i32
  %22 = load i8, i8* %arraydecay5.i, align 1
  %conv9.i.i.1 = zext i8 %22 to i32
  %xor.i.i25.1 = xor i32 %conv9.i.i.1, %conv8.i.i.1
  %conv10.i.i.1 = trunc i32 %xor.i.i25.1 to i8
  store i8 %conv10.i.i.1, i8* %arraydecay5.i, align 1
  %conv11.i.i.1 = zext i8 %call7.i.i.1 to i32
  %scevgep378.1 = getelementptr [4 x i8], [4 x i8]* %zr.i, i64 0, i64 2
  %23 = load i8, i8* %scevgep378.1, align 1
  %conv13.i.i.1 = zext i8 %23 to i32
  %xor14.i.i.1 = xor i32 %conv13.i.i.1, %conv11.i.i.1
  %conv15.i.i.1 = trunc i32 %xor14.i.i.1 to i8
  store i8 %conv15.i.i.1, i8* %scevgep378.1, align 1
  %call7.i.i.2 = call zeroext i8 (...) @rand() #3
  %conv8.i.i.2 = zext i8 %call7.i.i.2 to i32
  %24 = load i8, i8* %arraydecay5.i, align 1
  %conv9.i.i.2 = zext i8 %24 to i32
  %xor.i.i25.2 = xor i32 %conv9.i.i.2, %conv8.i.i.2
  %conv10.i.i.2 = trunc i32 %xor.i.i25.2 to i8
  store i8 %conv10.i.i.2, i8* %arraydecay5.i, align 1
  %conv11.i.i.2 = zext i8 %call7.i.i.2 to i32
  %scevgep378.2 = getelementptr [4 x i8], [4 x i8]* %zr.i, i64 0, i64 3
  %25 = load i8, i8* %scevgep378.2, align 1
  %conv13.i.i.2 = zext i8 %25 to i32
  %xor14.i.i.2 = xor i32 %conv13.i.i.2, %conv11.i.i.2
  %conv15.i.i.2 = trunc i32 %xor14.i.i.2 to i8
  store i8 %conv15.i.i.2, i8* %scevgep378.2, align 1
  %conv16.i.i = zext i8 %call.i32.i to i32
  %scevgep374 = getelementptr [4 x i8], [4 x i8]* %zr.i, i64 0, i64 0
  %26 = load i8, i8* %scevgep374, align 1
  %scevgep374.1 = getelementptr [4 x i8], [4 x i8]* %zr.i, i64 0, i64 1
  %27 = load i8, i8* %scevgep374.1, align 1
  %conv.i.i31.i.i.1 = zext i8 %27 to i32
  %conv1.i.i32.i.i.1 = zext i8 %26 to i32
  %xor.i.i33.i.i.1 = xor i32 %conv1.i.i32.i.i.1, %conv.i.i31.i.i.1
  %conv2.i.i34.i.i.1 = trunc i32 %xor.i.i33.i.i.1 to i8
  %scevgep374.2 = getelementptr [4 x i8], [4 x i8]* %zr.i, i64 0, i64 2
  %28 = load i8, i8* %scevgep374.2, align 1
  %conv.i.i31.i.i.2 = zext i8 %28 to i32
  %conv1.i.i32.i.i.2 = zext i8 %conv2.i.i34.i.i.1 to i32
  %xor.i.i33.i.i.2 = xor i32 %conv1.i.i32.i.i.2, %conv.i.i31.i.i.2
  %conv2.i.i34.i.i.2 = trunc i32 %xor.i.i33.i.i.2 to i8
  %scevgep374.3 = getelementptr [4 x i8], [4 x i8]* %zr.i, i64 0, i64 3
  %29 = load i8, i8* %scevgep374.3, align 1
  %conv.i.i31.i.i.3 = zext i8 %29 to i32
  %conv1.i.i32.i.i.3 = zext i8 %conv2.i.i34.i.i.2 to i32
  %xor.i.i33.i.i.3 = xor i32 %conv1.i.i32.i.i.3, %conv.i.i31.i.i.3
  %conv2.i.i34.i.i.3 = trunc i32 %xor.i.i33.i.i.3 to i8
  %conv18.i.i = zext i8 %conv2.i.i34.i.i.3 to i32
  %cmp19.i.i = icmp eq i32 %conv16.i.i, %conv18.i.i
  call void @assert(i1 zeroext %cmp19.i.i) #3
  %arraydecay6.i = getelementptr inbounds [4 x i8], [4 x i8]* %zr.i, i64 0, i64 0
  %arraydecay7.i = getelementptr inbounds [4 x i8], [4 x i8]* %u.i, i64 0, i64 0
  %call.i52.i = call zeroext i8 (...) @rand() #3
  %call1.i.i = call zeroext i8 (...) @rand() #3
  %conv.i53.i = zext i8 %call.i52.i to i32
  %scevgep370 = getelementptr [4 x i8], [4 x i8]* %zr.i, i64 0, i64 0
  %30 = load i8, i8* %scevgep370, align 1
  %scevgep370.1 = getelementptr [4 x i8], [4 x i8]* %zr.i, i64 0, i64 1
  %31 = load i8, i8* %scevgep370.1, align 1
  %conv.i.i.i59.i.1 = zext i8 %31 to i32
  %conv1.i.i.i60.i.1 = zext i8 %30 to i32
  %xor.i.i.i61.i.1 = xor i32 %conv1.i.i.i60.i.1, %conv.i.i.i59.i.1
  %conv2.i.i.i62.i.1 = trunc i32 %xor.i.i.i61.i.1 to i8
  %scevgep370.2 = getelementptr [4 x i8], [4 x i8]* %zr.i, i64 0, i64 2
  %32 = load i8, i8* %scevgep370.2, align 1
  %conv.i.i.i59.i.2 = zext i8 %32 to i32
  %conv1.i.i.i60.i.2 = zext i8 %conv2.i.i.i62.i.1 to i32
  %xor.i.i.i61.i.2 = xor i32 %conv1.i.i.i60.i.2, %conv.i.i.i59.i.2
  %conv2.i.i.i62.i.2 = trunc i32 %xor.i.i.i61.i.2 to i8
  %scevgep370.3 = getelementptr [4 x i8], [4 x i8]* %zr.i, i64 0, i64 3
  %33 = load i8, i8* %scevgep370.3, align 1
  %conv.i.i.i59.i.3 = zext i8 %33 to i32
  %conv1.i.i.i60.i.3 = zext i8 %conv2.i.i.i62.i.2 to i32
  %xor.i.i.i61.i.3 = xor i32 %conv1.i.i.i60.i.3, %conv.i.i.i59.i.3
  %conv2.i.i.i62.i.3 = trunc i32 %xor.i.i.i61.i.3 to i8
  %conv3.i.i = zext i8 %conv2.i.i.i62.i.3 to i32
  %cmp.i65.i = icmp eq i32 %conv.i53.i, %conv3.i.i
  call void @assume(i1 zeroext %cmp.i65.i) #3
  %conv5.i.i = zext i8 %call1.i.i to i32
  %34 = load i8, i8* %x, align 1
  %scevgep366.1 = getelementptr i8, i8* %x, i64 1
  %35 = load i8, i8* %scevgep366.1, align 1
  %conv.i.i155.i.i.1 = zext i8 %35 to i32
  %conv1.i.i156.i.i.1 = zext i8 %34 to i32
  %xor.i.i157.i.i.1 = xor i32 %conv1.i.i156.i.i.1, %conv.i.i155.i.i.1
  %conv2.i.i158.i.i.1 = trunc i32 %xor.i.i157.i.i.1 to i8
  %scevgep366.2 = getelementptr i8, i8* %x, i64 2
  %36 = load i8, i8* %scevgep366.2, align 1
  %conv.i.i155.i.i.2 = zext i8 %36 to i32
  %conv1.i.i156.i.i.2 = zext i8 %conv2.i.i158.i.i.1 to i32
  %xor.i.i157.i.i.2 = xor i32 %conv1.i.i156.i.i.2, %conv.i.i155.i.i.2
  %conv2.i.i158.i.i.2 = trunc i32 %xor.i.i157.i.i.2 to i8
  %scevgep366.3 = getelementptr i8, i8* %x, i64 3
  %37 = load i8, i8* %scevgep366.3, align 1
  %conv.i.i155.i.i.3 = zext i8 %37 to i32
  %conv1.i.i156.i.i.3 = zext i8 %conv2.i.i158.i.i.2 to i32
  %xor.i.i157.i.i.3 = xor i32 %conv1.i.i156.i.i.3, %conv.i.i155.i.i.3
  %conv2.i.i158.i.i.3 = trunc i32 %xor.i.i157.i.i.3 to i8
  %conv7.i.i = zext i8 %conv2.i.i158.i.i.3 to i32
  %cmp8.i.i = icmp eq i32 %conv5.i.i, %conv7.i.i
  call void @assume(i1 zeroext %cmp8.i.i) #3
  %call16.i.i = call zeroext i8 (...) @rand() #3
  %scevgep356 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  store i8 %call16.i.i, i8* %scevgep356, align 1
  %scevgep357 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %38 = load i8, i8* %scevgep357, align 1
  %scevgep358 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  store i8 %38, i8* %scevgep358, align 1
  %call16.i.i.1858 = call zeroext i8 (...) @rand() #3
  %scevgep356.1859 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  store i8 %call16.i.i.1858, i8* %scevgep356.1859, align 1
  %scevgep357.1860 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %39 = load i8, i8* %scevgep357.1860, align 1
  %scevgep358.1861 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 2, i64 0
  store i8 %39, i8* %scevgep358.1861, align 1
  %call16.i.i.2863 = call zeroext i8 (...) @rand() #3
  %scevgep356.2864 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  store i8 %call16.i.i.2863, i8* %scevgep356.2864, align 1
  %scevgep357.2865 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  %40 = load i8, i8* %scevgep357.2865, align 1
  %scevgep358.2866 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 3, i64 0
  store i8 %40, i8* %scevgep358.2866, align 1
  %scevgep353 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 1, i64 1
  %41 = bitcast i8* %scevgep353 to [4 x [4 x i8]]*
  %call16.i.i.1 = call zeroext i8 (...) @rand() #3
  %scevgep356.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %41, i64 0, i64 0, i64 1
  store i8 %call16.i.i.1, i8* %scevgep356.1, align 1
  %scevgep357.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %41, i64 0, i64 0, i64 1
  %42 = load i8, i8* %scevgep357.1, align 1
  %scevgep358.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %41, i64 0, i64 1, i64 0
  store i8 %42, i8* %scevgep358.1, align 1
  %call16.i.i.1.1 = call zeroext i8 (...) @rand() #3
  %scevgep356.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %41, i64 0, i64 0, i64 2
  store i8 %call16.i.i.1.1, i8* %scevgep356.1.1, align 1
  %scevgep357.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %41, i64 0, i64 0, i64 2
  %43 = load i8, i8* %scevgep357.1.1, align 1
  %scevgep358.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %41, i64 0, i64 2, i64 0
  store i8 %43, i8* %scevgep358.1.1, align 1
  %scevgep353.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %41, i64 0, i64 1, i64 1
  %44 = bitcast i8* %scevgep353.1 to [4 x [4 x i8]]*
  %call16.i.i.2 = call zeroext i8 (...) @rand() #3
  %scevgep356.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %44, i64 0, i64 0, i64 1
  store i8 %call16.i.i.2, i8* %scevgep356.2, align 1
  %scevgep357.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %44, i64 0, i64 0, i64 1
  %45 = load i8, i8* %scevgep357.2, align 1
  %scevgep358.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %44, i64 0, i64 1, i64 0
  store i8 %45, i8* %scevgep358.2, align 1
  %scevgep329.1 = getelementptr i8, i8* %x, i64 1
  %46 = load i8, i8* %scevgep329.1, align 1
  %conv44.i.i.1 = zext i8 %46 to i32
  %scevgep332.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %47 = load i8, i8* %scevgep332.1, align 1
  %conv49.i.i.1 = zext i8 %47 to i32
  %xor.i73.i.1 = xor i32 %conv44.i.i.1, %conv49.i.i.1
  %conv50.i.i.1 = trunc i32 %xor.i73.i.1 to i8
  %scevgep336.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  store i8 %conv50.i.i.1, i8* %scevgep336.1, align 1
  %48 = load i8, i8* %arraydecay6.i, align 1
  %conv57.i.i.1 = zext i8 %48 to i32
  %xor58.i.i.1 = xor i32 %conv57.i.i.1, 1
  %conv59.i.i.1 = trunc i32 %xor58.i.i.1 to i8
  %scevgep333.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %49 = load i8, i8* %scevgep333.1, align 1
  %call64.i.i.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.1, i8 zeroext %49) #3
  %scevgep340.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  store i8 %call64.i.i.1, i8* %scevgep340.1, align 1
  %50 = load i8, i8* %arraydecay6.i, align 1
  %scevgep337.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  %51 = load i8, i8* %scevgep337.1, align 1
  %call75.i.i.1 = call zeroext i8 @mult(i8 zeroext %50, i8 zeroext %51) #3
  %scevgep344.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  store i8 %call75.i.i.1, i8* %scevgep344.1, align 1
  %scevgep341.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  %52 = load i8, i8* %scevgep341.1, align 1
  %conv84.i.i.1 = zext i8 %52 to i32
  %scevgep345.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  %53 = load i8, i8* %scevgep345.1, align 1
  %conv89.i.i.1 = zext i8 %53 to i32
  %xor90.i.i.1 = xor i32 %conv84.i.i.1, %conv89.i.i.1
  %conv91.i.i.1 = trunc i32 %xor90.i.i.1 to i8
  %scevgep348.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  store i8 %conv91.i.i.1, i8* %scevgep348.1, align 1
  %scevgep329.2 = getelementptr i8, i8* %x, i64 2
  %54 = load i8, i8* %scevgep329.2, align 1
  %conv44.i.i.2 = zext i8 %54 to i32
  %scevgep332.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %55 = load i8, i8* %scevgep332.2, align 1
  %conv49.i.i.2 = zext i8 %55 to i32
  %xor.i73.i.2 = xor i32 %conv44.i.i.2, %conv49.i.i.2
  %conv50.i.i.2 = trunc i32 %xor.i73.i.2 to i8
  %scevgep336.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 2
  store i8 %conv50.i.i.2, i8* %scevgep336.2, align 1
  %56 = load i8, i8* %arraydecay6.i, align 1
  %conv57.i.i.2 = zext i8 %56 to i32
  %xor58.i.i.2 = xor i32 %conv57.i.i.2, 1
  %conv59.i.i.2 = trunc i32 %xor58.i.i.2 to i8
  %scevgep333.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %57 = load i8, i8* %scevgep333.2, align 1
  %call64.i.i.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.2, i8 zeroext %57) #3
  %scevgep340.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 2
  store i8 %call64.i.i.2, i8* %scevgep340.2, align 1
  %58 = load i8, i8* %arraydecay6.i, align 1
  %scevgep337.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 2
  %59 = load i8, i8* %scevgep337.2, align 1
  %call75.i.i.2 = call zeroext i8 @mult(i8 zeroext %58, i8 zeroext %59) #3
  %scevgep344.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 2
  store i8 %call75.i.i.2, i8* %scevgep344.2, align 1
  %scevgep341.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 2
  %60 = load i8, i8* %scevgep341.2, align 1
  %conv84.i.i.2 = zext i8 %60 to i32
  %scevgep345.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 2
  %61 = load i8, i8* %scevgep345.2, align 1
  %conv89.i.i.2 = zext i8 %61 to i32
  %xor90.i.i.2 = xor i32 %conv84.i.i.2, %conv89.i.i.2
  %conv91.i.i.2 = trunc i32 %xor90.i.i.2 to i8
  %scevgep348.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 2
  store i8 %conv91.i.i.2, i8* %scevgep348.2, align 1
  %scevgep329.3 = getelementptr i8, i8* %x, i64 3
  %62 = load i8, i8* %scevgep329.3, align 1
  %conv44.i.i.3 = zext i8 %62 to i32
  %scevgep332.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  %63 = load i8, i8* %scevgep332.3, align 1
  %conv49.i.i.3 = zext i8 %63 to i32
  %xor.i73.i.3 = xor i32 %conv44.i.i.3, %conv49.i.i.3
  %conv50.i.i.3 = trunc i32 %xor.i73.i.3 to i8
  %scevgep336.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 3
  store i8 %conv50.i.i.3, i8* %scevgep336.3, align 1
  %64 = load i8, i8* %arraydecay6.i, align 1
  %conv57.i.i.3 = zext i8 %64 to i32
  %xor58.i.i.3 = xor i32 %conv57.i.i.3, 1
  %conv59.i.i.3 = trunc i32 %xor58.i.i.3 to i8
  %scevgep333.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  %65 = load i8, i8* %scevgep333.3, align 1
  %call64.i.i.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.3, i8 zeroext %65) #3
  %scevgep340.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 3
  store i8 %call64.i.i.3, i8* %scevgep340.3, align 1
  %66 = load i8, i8* %arraydecay6.i, align 1
  %scevgep337.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 3
  %67 = load i8, i8* %scevgep337.3, align 1
  %call75.i.i.3 = call zeroext i8 @mult(i8 zeroext %66, i8 zeroext %67) #3
  %scevgep344.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 3
  store i8 %call75.i.i.3, i8* %scevgep344.3, align 1
  %scevgep341.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 3
  %68 = load i8, i8* %scevgep341.3, align 1
  %conv84.i.i.3 = zext i8 %68 to i32
  %scevgep345.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 3
  %69 = load i8, i8* %scevgep345.3, align 1
  %conv89.i.i.3 = zext i8 %69 to i32
  %xor90.i.i.3 = xor i32 %conv84.i.i.3, %conv89.i.i.3
  %conv91.i.i.3 = trunc i32 %xor90.i.i.3 to i8
  %scevgep348.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 3
  store i8 %conv91.i.i.3, i8* %scevgep348.3, align 1
  %scevgep331 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %70 = bitcast i8* %scevgep331 to [4 x [4 x i8]]*
  %scevgep335 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 1, i64 0
  %71 = bitcast i8* %scevgep335 to [4 x [4 x i8]]*
  %scevgep339 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 1, i64 0
  %72 = bitcast i8* %scevgep339 to [4 x [4 x i8]]*
  %scevgep343 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 1, i64 0
  %73 = bitcast i8* %scevgep343 to [4 x [4 x i8]]*
  %scevgep347 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %74 = bitcast i8* %scevgep347 to [4 x [4 x i8]]*
  %arrayidx56.i.i.1 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 1
  %arrayidx70.i.i.1 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 1
  %75 = load i8, i8* %x, align 1
  %conv44.i.i.1755 = zext i8 %75 to i32
  %scevgep332.1756 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %70, i64 0, i64 0, i64 0
  %76 = load i8, i8* %scevgep332.1756, align 1
  %conv49.i.i.1757 = zext i8 %76 to i32
  %xor.i73.i.1758 = xor i32 %conv44.i.i.1755, %conv49.i.i.1757
  %conv50.i.i.1759 = trunc i32 %xor.i73.i.1758 to i8
  %scevgep336.1760 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %71, i64 0, i64 0, i64 0
  store i8 %conv50.i.i.1759, i8* %scevgep336.1760, align 1
  %77 = load i8, i8* %arrayidx56.i.i.1, align 1
  %conv57.i.i.1761 = zext i8 %77 to i32
  %xor58.i.i.1762 = xor i32 %conv57.i.i.1761, 1
  %conv59.i.i.1763 = trunc i32 %xor58.i.i.1762 to i8
  %scevgep333.1764 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %70, i64 0, i64 0, i64 0
  %78 = load i8, i8* %scevgep333.1764, align 1
  %call64.i.i.1765 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.1763, i8 zeroext %78) #3
  %scevgep340.1766 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %72, i64 0, i64 0, i64 0
  store i8 %call64.i.i.1765, i8* %scevgep340.1766, align 1
  %79 = load i8, i8* %arrayidx70.i.i.1, align 1
  %scevgep337.1767 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %71, i64 0, i64 0, i64 0
  %80 = load i8, i8* %scevgep337.1767, align 1
  %call75.i.i.1768 = call zeroext i8 @mult(i8 zeroext %79, i8 zeroext %80) #3
  %scevgep344.1769 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %73, i64 0, i64 0, i64 0
  store i8 %call75.i.i.1768, i8* %scevgep344.1769, align 1
  %scevgep341.1770 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %72, i64 0, i64 0, i64 0
  %81 = load i8, i8* %scevgep341.1770, align 1
  %conv84.i.i.1771 = zext i8 %81 to i32
  %scevgep345.1772 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %73, i64 0, i64 0, i64 0
  %82 = load i8, i8* %scevgep345.1772, align 1
  %conv89.i.i.1773 = zext i8 %82 to i32
  %xor90.i.i.1774 = xor i32 %conv84.i.i.1771, %conv89.i.i.1773
  %conv91.i.i.1775 = trunc i32 %xor90.i.i.1774 to i8
  %scevgep348.1776 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %74, i64 0, i64 0, i64 0
  store i8 %conv91.i.i.1775, i8* %scevgep348.1776, align 1
  %scevgep329.2.1 = getelementptr i8, i8* %x, i64 2
  %83 = load i8, i8* %scevgep329.2.1, align 1
  %conv44.i.i.2.1 = zext i8 %83 to i32
  %scevgep332.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %70, i64 0, i64 0, i64 2
  %84 = load i8, i8* %scevgep332.2.1, align 1
  %conv49.i.i.2.1 = zext i8 %84 to i32
  %xor.i73.i.2.1 = xor i32 %conv44.i.i.2.1, %conv49.i.i.2.1
  %conv50.i.i.2.1 = trunc i32 %xor.i73.i.2.1 to i8
  %scevgep336.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %71, i64 0, i64 0, i64 2
  store i8 %conv50.i.i.2.1, i8* %scevgep336.2.1, align 1
  %85 = load i8, i8* %arrayidx56.i.i.1, align 1
  %conv57.i.i.2.1 = zext i8 %85 to i32
  %xor58.i.i.2.1 = xor i32 %conv57.i.i.2.1, 1
  %conv59.i.i.2.1 = trunc i32 %xor58.i.i.2.1 to i8
  %scevgep333.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %70, i64 0, i64 0, i64 2
  %86 = load i8, i8* %scevgep333.2.1, align 1
  %call64.i.i.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.2.1, i8 zeroext %86) #3
  %scevgep340.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %72, i64 0, i64 0, i64 2
  store i8 %call64.i.i.2.1, i8* %scevgep340.2.1, align 1
  %87 = load i8, i8* %arrayidx70.i.i.1, align 1
  %scevgep337.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %71, i64 0, i64 0, i64 2
  %88 = load i8, i8* %scevgep337.2.1, align 1
  %call75.i.i.2.1 = call zeroext i8 @mult(i8 zeroext %87, i8 zeroext %88) #3
  %scevgep344.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %73, i64 0, i64 0, i64 2
  store i8 %call75.i.i.2.1, i8* %scevgep344.2.1, align 1
  %scevgep341.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %72, i64 0, i64 0, i64 2
  %89 = load i8, i8* %scevgep341.2.1, align 1
  %conv84.i.i.2.1 = zext i8 %89 to i32
  %scevgep345.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %73, i64 0, i64 0, i64 2
  %90 = load i8, i8* %scevgep345.2.1, align 1
  %conv89.i.i.2.1 = zext i8 %90 to i32
  %xor90.i.i.2.1 = xor i32 %conv84.i.i.2.1, %conv89.i.i.2.1
  %conv91.i.i.2.1 = trunc i32 %xor90.i.i.2.1 to i8
  %scevgep348.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %74, i64 0, i64 0, i64 2
  store i8 %conv91.i.i.2.1, i8* %scevgep348.2.1, align 1
  %scevgep329.3.1 = getelementptr i8, i8* %x, i64 3
  %91 = load i8, i8* %scevgep329.3.1, align 1
  %conv44.i.i.3.1 = zext i8 %91 to i32
  %scevgep332.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %70, i64 0, i64 0, i64 3
  %92 = load i8, i8* %scevgep332.3.1, align 1
  %conv49.i.i.3.1 = zext i8 %92 to i32
  %xor.i73.i.3.1 = xor i32 %conv44.i.i.3.1, %conv49.i.i.3.1
  %conv50.i.i.3.1 = trunc i32 %xor.i73.i.3.1 to i8
  %scevgep336.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %71, i64 0, i64 0, i64 3
  store i8 %conv50.i.i.3.1, i8* %scevgep336.3.1, align 1
  %93 = load i8, i8* %arrayidx56.i.i.1, align 1
  %conv57.i.i.3.1 = zext i8 %93 to i32
  %xor58.i.i.3.1 = xor i32 %conv57.i.i.3.1, 1
  %conv59.i.i.3.1 = trunc i32 %xor58.i.i.3.1 to i8
  %scevgep333.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %70, i64 0, i64 0, i64 3
  %94 = load i8, i8* %scevgep333.3.1, align 1
  %call64.i.i.3.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.3.1, i8 zeroext %94) #3
  %scevgep340.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %72, i64 0, i64 0, i64 3
  store i8 %call64.i.i.3.1, i8* %scevgep340.3.1, align 1
  %95 = load i8, i8* %arrayidx70.i.i.1, align 1
  %scevgep337.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %71, i64 0, i64 0, i64 3
  %96 = load i8, i8* %scevgep337.3.1, align 1
  %call75.i.i.3.1 = call zeroext i8 @mult(i8 zeroext %95, i8 zeroext %96) #3
  %scevgep344.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %73, i64 0, i64 0, i64 3
  store i8 %call75.i.i.3.1, i8* %scevgep344.3.1, align 1
  %scevgep341.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %72, i64 0, i64 0, i64 3
  %97 = load i8, i8* %scevgep341.3.1, align 1
  %conv84.i.i.3.1 = zext i8 %97 to i32
  %scevgep345.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %73, i64 0, i64 0, i64 3
  %98 = load i8, i8* %scevgep345.3.1, align 1
  %conv89.i.i.3.1 = zext i8 %98 to i32
  %xor90.i.i.3.1 = xor i32 %conv84.i.i.3.1, %conv89.i.i.3.1
  %conv91.i.i.3.1 = trunc i32 %xor90.i.i.3.1 to i8
  %scevgep348.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %74, i64 0, i64 0, i64 3
  store i8 %conv91.i.i.3.1, i8* %scevgep348.3.1, align 1
  %scevgep331.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %70, i64 0, i64 1, i64 0
  %99 = bitcast i8* %scevgep331.1 to [4 x [4 x i8]]*
  %scevgep335.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %71, i64 0, i64 1, i64 0
  %100 = bitcast i8* %scevgep335.1 to [4 x [4 x i8]]*
  %scevgep339.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %72, i64 0, i64 1, i64 0
  %101 = bitcast i8* %scevgep339.1 to [4 x [4 x i8]]*
  %scevgep343.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %73, i64 0, i64 1, i64 0
  %102 = bitcast i8* %scevgep343.1 to [4 x [4 x i8]]*
  %scevgep347.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %74, i64 0, i64 1, i64 0
  %103 = bitcast i8* %scevgep347.1 to [4 x [4 x i8]]*
  %arrayidx56.i.i.2 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 2
  %arrayidx70.i.i.2 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 2
  %104 = load i8, i8* %x, align 1
  %conv44.i.i.2781 = zext i8 %104 to i32
  %scevgep332.2782 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %99, i64 0, i64 0, i64 0
  %105 = load i8, i8* %scevgep332.2782, align 1
  %conv49.i.i.2783 = zext i8 %105 to i32
  %xor.i73.i.2784 = xor i32 %conv44.i.i.2781, %conv49.i.i.2783
  %conv50.i.i.2785 = trunc i32 %xor.i73.i.2784 to i8
  %scevgep336.2786 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %100, i64 0, i64 0, i64 0
  store i8 %conv50.i.i.2785, i8* %scevgep336.2786, align 1
  %106 = load i8, i8* %arrayidx56.i.i.2, align 1
  %conv57.i.i.2787 = zext i8 %106 to i32
  %xor58.i.i.2788 = xor i32 %conv57.i.i.2787, 1
  %conv59.i.i.2789 = trunc i32 %xor58.i.i.2788 to i8
  %scevgep333.2790 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %99, i64 0, i64 0, i64 0
  %107 = load i8, i8* %scevgep333.2790, align 1
  %call64.i.i.2791 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.2789, i8 zeroext %107) #3
  %scevgep340.2792 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %101, i64 0, i64 0, i64 0
  store i8 %call64.i.i.2791, i8* %scevgep340.2792, align 1
  %108 = load i8, i8* %arrayidx70.i.i.2, align 1
  %scevgep337.2793 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %100, i64 0, i64 0, i64 0
  %109 = load i8, i8* %scevgep337.2793, align 1
  %call75.i.i.2794 = call zeroext i8 @mult(i8 zeroext %108, i8 zeroext %109) #3
  %scevgep344.2795 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %102, i64 0, i64 0, i64 0
  store i8 %call75.i.i.2794, i8* %scevgep344.2795, align 1
  %scevgep341.2796 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %101, i64 0, i64 0, i64 0
  %110 = load i8, i8* %scevgep341.2796, align 1
  %conv84.i.i.2797 = zext i8 %110 to i32
  %scevgep345.2798 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %102, i64 0, i64 0, i64 0
  %111 = load i8, i8* %scevgep345.2798, align 1
  %conv89.i.i.2799 = zext i8 %111 to i32
  %xor90.i.i.2800 = xor i32 %conv84.i.i.2797, %conv89.i.i.2799
  %conv91.i.i.2801 = trunc i32 %xor90.i.i.2800 to i8
  %scevgep348.2802 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %103, i64 0, i64 0, i64 0
  store i8 %conv91.i.i.2801, i8* %scevgep348.2802, align 1
  %scevgep329.1.2 = getelementptr i8, i8* %x, i64 1
  %112 = load i8, i8* %scevgep329.1.2, align 1
  %conv44.i.i.1.2 = zext i8 %112 to i32
  %scevgep332.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %99, i64 0, i64 0, i64 1
  %113 = load i8, i8* %scevgep332.1.2, align 1
  %conv49.i.i.1.2 = zext i8 %113 to i32
  %xor.i73.i.1.2 = xor i32 %conv44.i.i.1.2, %conv49.i.i.1.2
  %conv50.i.i.1.2 = trunc i32 %xor.i73.i.1.2 to i8
  %scevgep336.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %100, i64 0, i64 0, i64 1
  store i8 %conv50.i.i.1.2, i8* %scevgep336.1.2, align 1
  %114 = load i8, i8* %arrayidx56.i.i.2, align 1
  %conv57.i.i.1.2 = zext i8 %114 to i32
  %xor58.i.i.1.2 = xor i32 %conv57.i.i.1.2, 1
  %conv59.i.i.1.2 = trunc i32 %xor58.i.i.1.2 to i8
  %scevgep333.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %99, i64 0, i64 0, i64 1
  %115 = load i8, i8* %scevgep333.1.2, align 1
  %call64.i.i.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.1.2, i8 zeroext %115) #3
  %scevgep340.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %101, i64 0, i64 0, i64 1
  store i8 %call64.i.i.1.2, i8* %scevgep340.1.2, align 1
  %116 = load i8, i8* %arrayidx70.i.i.2, align 1
  %scevgep337.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %100, i64 0, i64 0, i64 1
  %117 = load i8, i8* %scevgep337.1.2, align 1
  %call75.i.i.1.2 = call zeroext i8 @mult(i8 zeroext %116, i8 zeroext %117) #3
  %scevgep344.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %102, i64 0, i64 0, i64 1
  store i8 %call75.i.i.1.2, i8* %scevgep344.1.2, align 1
  %scevgep341.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %101, i64 0, i64 0, i64 1
  %118 = load i8, i8* %scevgep341.1.2, align 1
  %conv84.i.i.1.2 = zext i8 %118 to i32
  %scevgep345.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %102, i64 0, i64 0, i64 1
  %119 = load i8, i8* %scevgep345.1.2, align 1
  %conv89.i.i.1.2 = zext i8 %119 to i32
  %xor90.i.i.1.2 = xor i32 %conv84.i.i.1.2, %conv89.i.i.1.2
  %conv91.i.i.1.2 = trunc i32 %xor90.i.i.1.2 to i8
  %scevgep348.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %103, i64 0, i64 0, i64 1
  store i8 %conv91.i.i.1.2, i8* %scevgep348.1.2, align 1
  %scevgep329.3.2 = getelementptr i8, i8* %x, i64 3
  %120 = load i8, i8* %scevgep329.3.2, align 1
  %conv44.i.i.3.2 = zext i8 %120 to i32
  %scevgep332.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %99, i64 0, i64 0, i64 3
  %121 = load i8, i8* %scevgep332.3.2, align 1
  %conv49.i.i.3.2 = zext i8 %121 to i32
  %xor.i73.i.3.2 = xor i32 %conv44.i.i.3.2, %conv49.i.i.3.2
  %conv50.i.i.3.2 = trunc i32 %xor.i73.i.3.2 to i8
  %scevgep336.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %100, i64 0, i64 0, i64 3
  store i8 %conv50.i.i.3.2, i8* %scevgep336.3.2, align 1
  %122 = load i8, i8* %arrayidx56.i.i.2, align 1
  %conv57.i.i.3.2 = zext i8 %122 to i32
  %xor58.i.i.3.2 = xor i32 %conv57.i.i.3.2, 1
  %conv59.i.i.3.2 = trunc i32 %xor58.i.i.3.2 to i8
  %scevgep333.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %99, i64 0, i64 0, i64 3
  %123 = load i8, i8* %scevgep333.3.2, align 1
  %call64.i.i.3.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.3.2, i8 zeroext %123) #3
  %scevgep340.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %101, i64 0, i64 0, i64 3
  store i8 %call64.i.i.3.2, i8* %scevgep340.3.2, align 1
  %124 = load i8, i8* %arrayidx70.i.i.2, align 1
  %scevgep337.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %100, i64 0, i64 0, i64 3
  %125 = load i8, i8* %scevgep337.3.2, align 1
  %call75.i.i.3.2 = call zeroext i8 @mult(i8 zeroext %124, i8 zeroext %125) #3
  %scevgep344.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %102, i64 0, i64 0, i64 3
  store i8 %call75.i.i.3.2, i8* %scevgep344.3.2, align 1
  %scevgep341.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %101, i64 0, i64 0, i64 3
  %126 = load i8, i8* %scevgep341.3.2, align 1
  %conv84.i.i.3.2 = zext i8 %126 to i32
  %scevgep345.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %102, i64 0, i64 0, i64 3
  %127 = load i8, i8* %scevgep345.3.2, align 1
  %conv89.i.i.3.2 = zext i8 %127 to i32
  %xor90.i.i.3.2 = xor i32 %conv84.i.i.3.2, %conv89.i.i.3.2
  %conv91.i.i.3.2 = trunc i32 %xor90.i.i.3.2 to i8
  %scevgep348.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %103, i64 0, i64 0, i64 3
  store i8 %conv91.i.i.3.2, i8* %scevgep348.3.2, align 1
  %scevgep331.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %99, i64 0, i64 1, i64 0
  %128 = bitcast i8* %scevgep331.2 to [4 x [4 x i8]]*
  %scevgep335.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %100, i64 0, i64 1, i64 0
  %129 = bitcast i8* %scevgep335.2 to [4 x [4 x i8]]*
  %scevgep339.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %101, i64 0, i64 1, i64 0
  %130 = bitcast i8* %scevgep339.2 to [4 x [4 x i8]]*
  %scevgep343.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %102, i64 0, i64 1, i64 0
  %131 = bitcast i8* %scevgep343.2 to [4 x [4 x i8]]*
  %scevgep347.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %103, i64 0, i64 1, i64 0
  %132 = bitcast i8* %scevgep347.2 to [4 x [4 x i8]]*
  %arrayidx56.i.i.3 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 3
  %arrayidx70.i.i.3 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 3
  %133 = load i8, i8* %x, align 1
  %conv44.i.i.3807 = zext i8 %133 to i32
  %scevgep332.3808 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %128, i64 0, i64 0, i64 0
  %134 = load i8, i8* %scevgep332.3808, align 1
  %conv49.i.i.3809 = zext i8 %134 to i32
  %xor.i73.i.3810 = xor i32 %conv44.i.i.3807, %conv49.i.i.3809
  %conv50.i.i.3811 = trunc i32 %xor.i73.i.3810 to i8
  %scevgep336.3812 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %129, i64 0, i64 0, i64 0
  store i8 %conv50.i.i.3811, i8* %scevgep336.3812, align 1
  %135 = load i8, i8* %arrayidx56.i.i.3, align 1
  %conv57.i.i.3813 = zext i8 %135 to i32
  %xor58.i.i.3814 = xor i32 %conv57.i.i.3813, 1
  %conv59.i.i.3815 = trunc i32 %xor58.i.i.3814 to i8
  %scevgep333.3816 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %128, i64 0, i64 0, i64 0
  %136 = load i8, i8* %scevgep333.3816, align 1
  %call64.i.i.3817 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.3815, i8 zeroext %136) #3
  %scevgep340.3818 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %130, i64 0, i64 0, i64 0
  store i8 %call64.i.i.3817, i8* %scevgep340.3818, align 1
  %137 = load i8, i8* %arrayidx70.i.i.3, align 1
  %scevgep337.3819 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %129, i64 0, i64 0, i64 0
  %138 = load i8, i8* %scevgep337.3819, align 1
  %call75.i.i.3820 = call zeroext i8 @mult(i8 zeroext %137, i8 zeroext %138) #3
  %scevgep344.3821 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %131, i64 0, i64 0, i64 0
  store i8 %call75.i.i.3820, i8* %scevgep344.3821, align 1
  %scevgep341.3822 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %130, i64 0, i64 0, i64 0
  %139 = load i8, i8* %scevgep341.3822, align 1
  %conv84.i.i.3823 = zext i8 %139 to i32
  %scevgep345.3824 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %131, i64 0, i64 0, i64 0
  %140 = load i8, i8* %scevgep345.3824, align 1
  %conv89.i.i.3825 = zext i8 %140 to i32
  %xor90.i.i.3826 = xor i32 %conv84.i.i.3823, %conv89.i.i.3825
  %conv91.i.i.3827 = trunc i32 %xor90.i.i.3826 to i8
  %scevgep348.3828 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %132, i64 0, i64 0, i64 0
  store i8 %conv91.i.i.3827, i8* %scevgep348.3828, align 1
  %scevgep329.1.3 = getelementptr i8, i8* %x, i64 1
  %141 = load i8, i8* %scevgep329.1.3, align 1
  %conv44.i.i.1.3 = zext i8 %141 to i32
  %scevgep332.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %128, i64 0, i64 0, i64 1
  %142 = load i8, i8* %scevgep332.1.3, align 1
  %conv49.i.i.1.3 = zext i8 %142 to i32
  %xor.i73.i.1.3 = xor i32 %conv44.i.i.1.3, %conv49.i.i.1.3
  %conv50.i.i.1.3 = trunc i32 %xor.i73.i.1.3 to i8
  %scevgep336.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %129, i64 0, i64 0, i64 1
  store i8 %conv50.i.i.1.3, i8* %scevgep336.1.3, align 1
  %143 = load i8, i8* %arrayidx56.i.i.3, align 1
  %conv57.i.i.1.3 = zext i8 %143 to i32
  %xor58.i.i.1.3 = xor i32 %conv57.i.i.1.3, 1
  %conv59.i.i.1.3 = trunc i32 %xor58.i.i.1.3 to i8
  %scevgep333.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %128, i64 0, i64 0, i64 1
  %144 = load i8, i8* %scevgep333.1.3, align 1
  %call64.i.i.1.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.1.3, i8 zeroext %144) #3
  %scevgep340.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %130, i64 0, i64 0, i64 1
  store i8 %call64.i.i.1.3, i8* %scevgep340.1.3, align 1
  %145 = load i8, i8* %arrayidx70.i.i.3, align 1
  %scevgep337.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %129, i64 0, i64 0, i64 1
  %146 = load i8, i8* %scevgep337.1.3, align 1
  %call75.i.i.1.3 = call zeroext i8 @mult(i8 zeroext %145, i8 zeroext %146) #3
  %scevgep344.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %131, i64 0, i64 0, i64 1
  store i8 %call75.i.i.1.3, i8* %scevgep344.1.3, align 1
  %scevgep341.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %130, i64 0, i64 0, i64 1
  %147 = load i8, i8* %scevgep341.1.3, align 1
  %conv84.i.i.1.3 = zext i8 %147 to i32
  %scevgep345.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %131, i64 0, i64 0, i64 1
  %148 = load i8, i8* %scevgep345.1.3, align 1
  %conv89.i.i.1.3 = zext i8 %148 to i32
  %xor90.i.i.1.3 = xor i32 %conv84.i.i.1.3, %conv89.i.i.1.3
  %conv91.i.i.1.3 = trunc i32 %xor90.i.i.1.3 to i8
  %scevgep348.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %132, i64 0, i64 0, i64 1
  store i8 %conv91.i.i.1.3, i8* %scevgep348.1.3, align 1
  %scevgep329.2.3 = getelementptr i8, i8* %x, i64 2
  %149 = load i8, i8* %scevgep329.2.3, align 1
  %conv44.i.i.2.3 = zext i8 %149 to i32
  %scevgep332.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %128, i64 0, i64 0, i64 2
  %150 = load i8, i8* %scevgep332.2.3, align 1
  %conv49.i.i.2.3 = zext i8 %150 to i32
  %xor.i73.i.2.3 = xor i32 %conv44.i.i.2.3, %conv49.i.i.2.3
  %conv50.i.i.2.3 = trunc i32 %xor.i73.i.2.3 to i8
  %scevgep336.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %129, i64 0, i64 0, i64 2
  store i8 %conv50.i.i.2.3, i8* %scevgep336.2.3, align 1
  %151 = load i8, i8* %arrayidx56.i.i.3, align 1
  %conv57.i.i.2.3 = zext i8 %151 to i32
  %xor58.i.i.2.3 = xor i32 %conv57.i.i.2.3, 1
  %conv59.i.i.2.3 = trunc i32 %xor58.i.i.2.3 to i8
  %scevgep333.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %128, i64 0, i64 0, i64 2
  %152 = load i8, i8* %scevgep333.2.3, align 1
  %call64.i.i.2.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.2.3, i8 zeroext %152) #3
  %scevgep340.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %130, i64 0, i64 0, i64 2
  store i8 %call64.i.i.2.3, i8* %scevgep340.2.3, align 1
  %153 = load i8, i8* %arrayidx70.i.i.3, align 1
  %scevgep337.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %129, i64 0, i64 0, i64 2
  %154 = load i8, i8* %scevgep337.2.3, align 1
  %call75.i.i.2.3 = call zeroext i8 @mult(i8 zeroext %153, i8 zeroext %154) #3
  %scevgep344.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %131, i64 0, i64 0, i64 2
  store i8 %call75.i.i.2.3, i8* %scevgep344.2.3, align 1
  %scevgep341.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %130, i64 0, i64 0, i64 2
  %155 = load i8, i8* %scevgep341.2.3, align 1
  %conv84.i.i.2.3 = zext i8 %155 to i32
  %scevgep345.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %131, i64 0, i64 0, i64 2
  %156 = load i8, i8* %scevgep345.2.3, align 1
  %conv89.i.i.2.3 = zext i8 %156 to i32
  %xor90.i.i.2.3 = xor i32 %conv84.i.i.2.3, %conv89.i.i.2.3
  %conv91.i.i.2.3 = trunc i32 %xor90.i.i.2.3 to i8
  %scevgep348.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %132, i64 0, i64 0, i64 2
  store i8 %conv91.i.i.2.3, i8* %scevgep348.2.3, align 1
  %157 = load i8, i8* %arraydecay6.i, align 1
  %158 = load i8, i8* %x, align 1
  %call111.i.i = call zeroext i8 @mult(i8 zeroext %157, i8 zeroext %158) #3
  store i8 %call111.i.i, i8* %arraydecay7.i, align 1
  %scevgep319.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  %159 = load i8, i8* %scevgep319.1, align 1
  %conv126.i.i.1 = zext i8 %159 to i32
  %160 = load i8, i8* %arraydecay7.i, align 1
  %conv129.i.i.1 = zext i8 %160 to i32
  %xor130.i.i.1 = xor i32 %conv129.i.i.1, %conv126.i.i.1
  %conv131.i.i.1 = trunc i32 %xor130.i.i.1 to i8
  store i8 %conv131.i.i.1, i8* %arraydecay7.i, align 1
  %scevgep319.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 2
  %161 = load i8, i8* %scevgep319.2, align 1
  %conv126.i.i.2 = zext i8 %161 to i32
  %162 = load i8, i8* %arraydecay7.i, align 1
  %conv129.i.i.2 = zext i8 %162 to i32
  %xor130.i.i.2 = xor i32 %conv129.i.i.2, %conv126.i.i.2
  %conv131.i.i.2 = trunc i32 %xor130.i.i.2 to i8
  store i8 %conv131.i.i.2, i8* %arraydecay7.i, align 1
  %scevgep319.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 3
  %163 = load i8, i8* %scevgep319.3, align 1
  %conv126.i.i.3 = zext i8 %163 to i32
  %164 = load i8, i8* %arraydecay7.i, align 1
  %conv129.i.i.3 = zext i8 %164 to i32
  %xor130.i.i.3 = xor i32 %conv129.i.i.3, %conv126.i.i.3
  %conv131.i.i.3 = trunc i32 %xor130.i.i.3 to i8
  store i8 %conv131.i.i.3, i8* %arraydecay7.i, align 1
  %scevgep318 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %165 = bitcast i8* %scevgep318 to [4 x [4 x i8]]*
  %arrayidx108.i.i.1 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 1
  %166 = load i8, i8* %arrayidx108.i.i.1, align 1
  %arrayidx110.i.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %167 = load i8, i8* %arrayidx110.i.i.1, align 1
  %call111.i.i.1 = call zeroext i8 @mult(i8 zeroext %166, i8 zeroext %167) #3
  %arrayidx113.i.i.1 = getelementptr inbounds i8, i8* %arraydecay7.i, i64 1
  store i8 %call111.i.i.1, i8* %arrayidx113.i.i.1, align 1
  %arrayidx128.i.i.1 = getelementptr inbounds i8, i8* %arraydecay7.i, i64 1
  %scevgep319.1728 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %165, i64 0, i64 0, i64 0
  %168 = load i8, i8* %scevgep319.1728, align 1
  %conv126.i.i.1729 = zext i8 %168 to i32
  %169 = load i8, i8* %arrayidx128.i.i.1, align 1
  %conv129.i.i.1730 = zext i8 %169 to i32
  %xor130.i.i.1731 = xor i32 %conv129.i.i.1730, %conv126.i.i.1729
  %conv131.i.i.1732 = trunc i32 %xor130.i.i.1731 to i8
  store i8 %conv131.i.i.1732, i8* %arrayidx128.i.i.1, align 1
  %scevgep319.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %165, i64 0, i64 0, i64 2
  %170 = load i8, i8* %scevgep319.2.1, align 1
  %conv126.i.i.2.1 = zext i8 %170 to i32
  %171 = load i8, i8* %arrayidx128.i.i.1, align 1
  %conv129.i.i.2.1 = zext i8 %171 to i32
  %xor130.i.i.2.1 = xor i32 %conv129.i.i.2.1, %conv126.i.i.2.1
  %conv131.i.i.2.1 = trunc i32 %xor130.i.i.2.1 to i8
  store i8 %conv131.i.i.2.1, i8* %arrayidx128.i.i.1, align 1
  %scevgep319.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %165, i64 0, i64 0, i64 3
  %172 = load i8, i8* %scevgep319.3.1, align 1
  %conv126.i.i.3.1 = zext i8 %172 to i32
  %173 = load i8, i8* %arrayidx128.i.i.1, align 1
  %conv129.i.i.3.1 = zext i8 %173 to i32
  %xor130.i.i.3.1 = xor i32 %conv129.i.i.3.1, %conv126.i.i.3.1
  %conv131.i.i.3.1 = trunc i32 %xor130.i.i.3.1 to i8
  store i8 %conv131.i.i.3.1, i8* %arrayidx128.i.i.1, align 1
  %scevgep318.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %165, i64 0, i64 1, i64 0
  %174 = bitcast i8* %scevgep318.1 to [4 x [4 x i8]]*
  %arrayidx108.i.i.2 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 2
  %175 = load i8, i8* %arrayidx108.i.i.2, align 1
  %arrayidx110.i.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %176 = load i8, i8* %arrayidx110.i.i.2, align 1
  %call111.i.i.2 = call zeroext i8 @mult(i8 zeroext %175, i8 zeroext %176) #3
  %arrayidx113.i.i.2 = getelementptr inbounds i8, i8* %arraydecay7.i, i64 2
  store i8 %call111.i.i.2, i8* %arrayidx113.i.i.2, align 1
  %arrayidx128.i.i.2 = getelementptr inbounds i8, i8* %arraydecay7.i, i64 2
  %scevgep319.2737 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %174, i64 0, i64 0, i64 0
  %177 = load i8, i8* %scevgep319.2737, align 1
  %conv126.i.i.2738 = zext i8 %177 to i32
  %178 = load i8, i8* %arrayidx128.i.i.2, align 1
  %conv129.i.i.2739 = zext i8 %178 to i32
  %xor130.i.i.2740 = xor i32 %conv129.i.i.2739, %conv126.i.i.2738
  %conv131.i.i.2741 = trunc i32 %xor130.i.i.2740 to i8
  store i8 %conv131.i.i.2741, i8* %arrayidx128.i.i.2, align 1
  %scevgep319.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %174, i64 0, i64 0, i64 1
  %179 = load i8, i8* %scevgep319.1.2, align 1
  %conv126.i.i.1.2 = zext i8 %179 to i32
  %180 = load i8, i8* %arrayidx128.i.i.2, align 1
  %conv129.i.i.1.2 = zext i8 %180 to i32
  %xor130.i.i.1.2 = xor i32 %conv129.i.i.1.2, %conv126.i.i.1.2
  %conv131.i.i.1.2 = trunc i32 %xor130.i.i.1.2 to i8
  store i8 %conv131.i.i.1.2, i8* %arrayidx128.i.i.2, align 1
  %scevgep319.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %174, i64 0, i64 0, i64 3
  %181 = load i8, i8* %scevgep319.3.2, align 1
  %conv126.i.i.3.2 = zext i8 %181 to i32
  %182 = load i8, i8* %arrayidx128.i.i.2, align 1
  %conv129.i.i.3.2 = zext i8 %182 to i32
  %xor130.i.i.3.2 = xor i32 %conv129.i.i.3.2, %conv126.i.i.3.2
  %conv131.i.i.3.2 = trunc i32 %xor130.i.i.3.2 to i8
  store i8 %conv131.i.i.3.2, i8* %arrayidx128.i.i.2, align 1
  %scevgep318.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %174, i64 0, i64 1, i64 0
  %183 = bitcast i8* %scevgep318.2 to [4 x [4 x i8]]*
  %arrayidx108.i.i.3 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 3
  %184 = load i8, i8* %arrayidx108.i.i.3, align 1
  %arrayidx110.i.i.3 = getelementptr inbounds i8, i8* %x, i64 3
  %185 = load i8, i8* %arrayidx110.i.i.3, align 1
  %call111.i.i.3 = call zeroext i8 @mult(i8 zeroext %184, i8 zeroext %185) #3
  %arrayidx113.i.i.3 = getelementptr inbounds i8, i8* %arraydecay7.i, i64 3
  store i8 %call111.i.i.3, i8* %arrayidx113.i.i.3, align 1
  %arrayidx128.i.i.3 = getelementptr inbounds i8, i8* %arraydecay7.i, i64 3
  %scevgep319.3746 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %183, i64 0, i64 0, i64 0
  %186 = load i8, i8* %scevgep319.3746, align 1
  %conv126.i.i.3747 = zext i8 %186 to i32
  %187 = load i8, i8* %arrayidx128.i.i.3, align 1
  %conv129.i.i.3748 = zext i8 %187 to i32
  %xor130.i.i.3749 = xor i32 %conv129.i.i.3748, %conv126.i.i.3747
  %conv131.i.i.3750 = trunc i32 %xor130.i.i.3749 to i8
  store i8 %conv131.i.i.3750, i8* %arrayidx128.i.i.3, align 1
  %scevgep319.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %183, i64 0, i64 0, i64 1
  %188 = load i8, i8* %scevgep319.1.3, align 1
  %conv126.i.i.1.3 = zext i8 %188 to i32
  %189 = load i8, i8* %arrayidx128.i.i.3, align 1
  %conv129.i.i.1.3 = zext i8 %189 to i32
  %xor130.i.i.1.3 = xor i32 %conv129.i.i.1.3, %conv126.i.i.1.3
  %conv131.i.i.1.3 = trunc i32 %xor130.i.i.1.3 to i8
  store i8 %conv131.i.i.1.3, i8* %arrayidx128.i.i.3, align 1
  %scevgep319.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %183, i64 0, i64 0, i64 2
  %190 = load i8, i8* %scevgep319.2.3, align 1
  %conv126.i.i.2.3 = zext i8 %190 to i32
  %191 = load i8, i8* %arrayidx128.i.i.3, align 1
  %conv129.i.i.2.3 = zext i8 %191 to i32
  %xor130.i.i.2.3 = xor i32 %conv129.i.i.2.3, %conv126.i.i.2.3
  %conv131.i.i.2.3 = trunc i32 %xor130.i.i.2.3 to i8
  store i8 %conv131.i.i.2.3, i8* %arrayidx128.i.i.3, align 1
  %call139.i.i = call zeroext i8 @mult(i8 zeroext %call.i52.i, i8 zeroext %call1.i.i) #3
  %conv140.i.i = zext i8 %call139.i.i to i32
  %scevgep309 = getelementptr [4 x i8], [4 x i8]* %u.i, i64 0, i64 0
  %192 = load i8, i8* %scevgep309, align 1
  %scevgep309.1 = getelementptr [4 x i8], [4 x i8]* %u.i, i64 0, i64 1
  %193 = load i8, i8* %scevgep309.1, align 1
  %conv.i.i172.i.i.1 = zext i8 %193 to i32
  %conv1.i.i173.i.i.1 = zext i8 %192 to i32
  %xor.i.i174.i.i.1 = xor i32 %conv1.i.i173.i.i.1, %conv.i.i172.i.i.1
  %conv2.i.i175.i.i.1 = trunc i32 %xor.i.i174.i.i.1 to i8
  %scevgep309.2 = getelementptr [4 x i8], [4 x i8]* %u.i, i64 0, i64 2
  %194 = load i8, i8* %scevgep309.2, align 1
  %conv.i.i172.i.i.2 = zext i8 %194 to i32
  %conv1.i.i173.i.i.2 = zext i8 %conv2.i.i175.i.i.1 to i32
  %xor.i.i174.i.i.2 = xor i32 %conv1.i.i173.i.i.2, %conv.i.i172.i.i.2
  %conv2.i.i175.i.i.2 = trunc i32 %xor.i.i174.i.i.2 to i8
  %scevgep309.3 = getelementptr [4 x i8], [4 x i8]* %u.i, i64 0, i64 3
  %195 = load i8, i8* %scevgep309.3, align 1
  %conv.i.i172.i.i.3 = zext i8 %195 to i32
  %conv1.i.i173.i.i.3 = zext i8 %conv2.i.i175.i.i.2 to i32
  %xor.i.i174.i.i.3 = xor i32 %conv1.i.i173.i.i.3, %conv.i.i172.i.i.3
  %conv2.i.i175.i.i.3 = trunc i32 %xor.i.i174.i.i.3 to i8
  %conv142.i.i = zext i8 %conv2.i.i175.i.i.3 to i32
  %cmp143.i.i = icmp eq i32 %conv140.i.i, %conv142.i.i
  call void @assert(i1 zeroext %cmp143.i.i) #3
  %scevgep304 = getelementptr [4 x i8], [4 x i8]* %u.i, i64 0, i64 0
  %196 = load i8, i8* %scevgep304, align 1
  %call.i.i887 = call zeroext i8 @mult(i8 zeroext %196, i8 zeroext %196) #3
  %call.i3.i888 = call zeroext i8 @mult(i8 zeroext %call.i.i887, i8 zeroext %call.i.i887) #3
  %scevgep305 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 0
  store i8 %call.i3.i888, i8* %scevgep305, align 1
  %scevgep304.1 = getelementptr [4 x i8], [4 x i8]* %u.i, i64 0, i64 1
  %197 = load i8, i8* %scevgep304.1, align 1
  %call.i.i885 = call zeroext i8 @mult(i8 zeroext %197, i8 zeroext %197) #3
  %call.i3.i886 = call zeroext i8 @mult(i8 zeroext %call.i.i885, i8 zeroext %call.i.i885) #3
  %scevgep305.1 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 1
  store i8 %call.i3.i886, i8* %scevgep305.1, align 1
  %scevgep304.2 = getelementptr [4 x i8], [4 x i8]* %u.i, i64 0, i64 2
  %198 = load i8, i8* %scevgep304.2, align 1
  %call.i.i883 = call zeroext i8 @mult(i8 zeroext %198, i8 zeroext %198) #3
  %call.i3.i884 = call zeroext i8 @mult(i8 zeroext %call.i.i883, i8 zeroext %call.i.i883) #3
  %scevgep305.2 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 2
  store i8 %call.i3.i884, i8* %scevgep305.2, align 1
  %scevgep304.3 = getelementptr [4 x i8], [4 x i8]* %u.i, i64 0, i64 3
  %199 = load i8, i8* %scevgep304.3, align 1
  %call.i.i = call zeroext i8 @mult(i8 zeroext %199, i8 zeroext %199) #3
  %call.i3.i = call zeroext i8 @mult(i8 zeroext %call.i.i, i8 zeroext %call.i.i) #3
  %scevgep305.3 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 3
  store i8 %call.i3.i, i8* %scevgep305.3, align 1
  %arraydecay11.i = getelementptr inbounds [4 x i8], [4 x i8]* %wr.i, i64 0, i64 0
  %call.i108.i = call zeroext i8 (...) @rand() #3
  %conv.i109.i = zext i8 %call.i108.i to i32
  %scevgep300 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 0
  %200 = load i8, i8* %scevgep300, align 1
  %scevgep300.1 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 1
  %201 = load i8, i8* %scevgep300.1, align 1
  %conv.i.i.i115.i.1 = zext i8 %201 to i32
  %conv1.i.i.i116.i.1 = zext i8 %200 to i32
  %xor.i.i.i117.i.1 = xor i32 %conv1.i.i.i116.i.1, %conv.i.i.i115.i.1
  %conv2.i.i.i118.i.1 = trunc i32 %xor.i.i.i117.i.1 to i8
  %scevgep300.2 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 2
  %202 = load i8, i8* %scevgep300.2, align 1
  %conv.i.i.i115.i.2 = zext i8 %202 to i32
  %conv1.i.i.i116.i.2 = zext i8 %conv2.i.i.i118.i.1 to i32
  %xor.i.i.i117.i.2 = xor i32 %conv1.i.i.i116.i.2, %conv.i.i.i115.i.2
  %conv2.i.i.i118.i.2 = trunc i32 %xor.i.i.i117.i.2 to i8
  %scevgep300.3 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 3
  %203 = load i8, i8* %scevgep300.3, align 1
  %conv.i.i.i115.i.3 = zext i8 %203 to i32
  %conv1.i.i.i116.i.3 = zext i8 %conv2.i.i.i118.i.2 to i32
  %xor.i.i.i117.i.3 = xor i32 %conv1.i.i.i116.i.3, %conv.i.i.i115.i.3
  %conv2.i.i.i118.i.3 = trunc i32 %xor.i.i.i117.i.3 to i8
  %conv2.i121.i = zext i8 %conv2.i.i.i118.i.3 to i32
  %cmp.i122.i = icmp eq i32 %conv.i109.i, %conv2.i121.i
  call void @assume(i1 zeroext %cmp.i122.i) #3
  %scevgep295 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 0
  %204 = load i8, i8* %scevgep295, align 1
  %scevgep296 = getelementptr [4 x i8], [4 x i8]* %wr.i, i64 0, i64 0
  store i8 %204, i8* %scevgep296, align 1
  %scevgep295.1 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 1
  %205 = load i8, i8* %scevgep295.1, align 1
  %scevgep296.1 = getelementptr [4 x i8], [4 x i8]* %wr.i, i64 0, i64 1
  store i8 %205, i8* %scevgep296.1, align 1
  %scevgep295.2 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 2
  %206 = load i8, i8* %scevgep295.2, align 1
  %scevgep296.2 = getelementptr [4 x i8], [4 x i8]* %wr.i, i64 0, i64 2
  store i8 %206, i8* %scevgep296.2, align 1
  %scevgep295.3 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 3
  %207 = load i8, i8* %scevgep295.3, align 1
  %scevgep296.3 = getelementptr [4 x i8], [4 x i8]* %wr.i, i64 0, i64 3
  store i8 %207, i8* %scevgep296.3, align 1
  %call7.i137.i = call zeroext i8 (...) @rand() #3
  %conv8.i138.i = zext i8 %call7.i137.i to i32
  %208 = load i8, i8* %arraydecay11.i, align 1
  %conv9.i139.i = zext i8 %208 to i32
  %xor.i140.i = xor i32 %conv9.i139.i, %conv8.i138.i
  %conv10.i141.i = trunc i32 %xor.i140.i to i8
  store i8 %conv10.i141.i, i8* %arraydecay11.i, align 1
  %conv11.i142.i = zext i8 %call7.i137.i to i32
  %scevgep291 = getelementptr [4 x i8], [4 x i8]* %wr.i, i64 0, i64 1
  %209 = load i8, i8* %scevgep291, align 1
  %conv13.i145.i = zext i8 %209 to i32
  %xor14.i146.i = xor i32 %conv13.i145.i, %conv11.i142.i
  %conv15.i147.i = trunc i32 %xor14.i146.i to i8
  store i8 %conv15.i147.i, i8* %scevgep291, align 1
  %call7.i137.i.1 = call zeroext i8 (...) @rand() #3
  %conv8.i138.i.1 = zext i8 %call7.i137.i.1 to i32
  %210 = load i8, i8* %arraydecay11.i, align 1
  %conv9.i139.i.1 = zext i8 %210 to i32
  %xor.i140.i.1 = xor i32 %conv9.i139.i.1, %conv8.i138.i.1
  %conv10.i141.i.1 = trunc i32 %xor.i140.i.1 to i8
  store i8 %conv10.i141.i.1, i8* %arraydecay11.i, align 1
  %conv11.i142.i.1 = zext i8 %call7.i137.i.1 to i32
  %scevgep291.1 = getelementptr [4 x i8], [4 x i8]* %wr.i, i64 0, i64 2
  %211 = load i8, i8* %scevgep291.1, align 1
  %conv13.i145.i.1 = zext i8 %211 to i32
  %xor14.i146.i.1 = xor i32 %conv13.i145.i.1, %conv11.i142.i.1
  %conv15.i147.i.1 = trunc i32 %xor14.i146.i.1 to i8
  store i8 %conv15.i147.i.1, i8* %scevgep291.1, align 1
  %call7.i137.i.2 = call zeroext i8 (...) @rand() #3
  %conv8.i138.i.2 = zext i8 %call7.i137.i.2 to i32
  %212 = load i8, i8* %arraydecay11.i, align 1
  %conv9.i139.i.2 = zext i8 %212 to i32
  %xor.i140.i.2 = xor i32 %conv9.i139.i.2, %conv8.i138.i.2
  %conv10.i141.i.2 = trunc i32 %xor.i140.i.2 to i8
  store i8 %conv10.i141.i.2, i8* %arraydecay11.i, align 1
  %conv11.i142.i.2 = zext i8 %call7.i137.i.2 to i32
  %scevgep291.2 = getelementptr [4 x i8], [4 x i8]* %wr.i, i64 0, i64 3
  %213 = load i8, i8* %scevgep291.2, align 1
  %conv13.i145.i.2 = zext i8 %213 to i32
  %xor14.i146.i.2 = xor i32 %conv13.i145.i.2, %conv11.i142.i.2
  %conv15.i147.i.2 = trunc i32 %xor14.i146.i.2 to i8
  store i8 %conv15.i147.i.2, i8* %scevgep291.2, align 1
  %conv16.i150.i = zext i8 %call.i108.i to i32
  %scevgep287 = getelementptr [4 x i8], [4 x i8]* %wr.i, i64 0, i64 0
  %214 = load i8, i8* %scevgep287, align 1
  %scevgep287.1 = getelementptr [4 x i8], [4 x i8]* %wr.i, i64 0, i64 1
  %215 = load i8, i8* %scevgep287.1, align 1
  %conv.i.i31.i157.i.1 = zext i8 %215 to i32
  %conv1.i.i32.i158.i.1 = zext i8 %214 to i32
  %xor.i.i33.i159.i.1 = xor i32 %conv1.i.i32.i158.i.1, %conv.i.i31.i157.i.1
  %conv2.i.i34.i160.i.1 = trunc i32 %xor.i.i33.i159.i.1 to i8
  %scevgep287.2 = getelementptr [4 x i8], [4 x i8]* %wr.i, i64 0, i64 2
  %216 = load i8, i8* %scevgep287.2, align 1
  %conv.i.i31.i157.i.2 = zext i8 %216 to i32
  %conv1.i.i32.i158.i.2 = zext i8 %conv2.i.i34.i160.i.1 to i32
  %xor.i.i33.i159.i.2 = xor i32 %conv1.i.i32.i158.i.2, %conv.i.i31.i157.i.2
  %conv2.i.i34.i160.i.2 = trunc i32 %xor.i.i33.i159.i.2 to i8
  %scevgep287.3 = getelementptr [4 x i8], [4 x i8]* %wr.i, i64 0, i64 3
  %217 = load i8, i8* %scevgep287.3, align 1
  %conv.i.i31.i157.i.3 = zext i8 %217 to i32
  %conv1.i.i32.i158.i.3 = zext i8 %conv2.i.i34.i160.i.2 to i32
  %xor.i.i33.i159.i.3 = xor i32 %conv1.i.i32.i158.i.3, %conv.i.i31.i157.i.3
  %conv2.i.i34.i160.i.3 = trunc i32 %xor.i.i33.i159.i.3 to i8
  %conv18.i163.i = zext i8 %conv2.i.i34.i160.i.3 to i32
  %cmp19.i164.i = icmp eq i32 %conv16.i150.i, %conv18.i163.i
  call void @assert(i1 zeroext %cmp19.i164.i) #3
  %arraydecay12.i = getelementptr inbounds [4 x i8], [4 x i8]* %u.i, i64 0, i64 0
  %arraydecay13.i = getelementptr inbounds [4 x i8], [4 x i8]* %wr.i, i64 0, i64 0
  %arraydecay14.i = getelementptr inbounds [4 x i8], [4 x i8]* %v.i, i64 0, i64 0
  %call.i197.i = call zeroext i8 (...) @rand() #3
  %call1.i198.i = call zeroext i8 (...) @rand() #3
  %conv.i199.i = zext i8 %call.i197.i to i32
  %scevgep283 = getelementptr [4 x i8], [4 x i8]* %u.i, i64 0, i64 0
  %218 = load i8, i8* %scevgep283, align 1
  %scevgep283.1 = getelementptr [4 x i8], [4 x i8]* %u.i, i64 0, i64 1
  %219 = load i8, i8* %scevgep283.1, align 1
  %conv.i.i.i205.i.1 = zext i8 %219 to i32
  %conv1.i.i.i206.i.1 = zext i8 %218 to i32
  %xor.i.i.i207.i.1 = xor i32 %conv1.i.i.i206.i.1, %conv.i.i.i205.i.1
  %conv2.i.i.i208.i.1 = trunc i32 %xor.i.i.i207.i.1 to i8
  %scevgep283.2 = getelementptr [4 x i8], [4 x i8]* %u.i, i64 0, i64 2
  %220 = load i8, i8* %scevgep283.2, align 1
  %conv.i.i.i205.i.2 = zext i8 %220 to i32
  %conv1.i.i.i206.i.2 = zext i8 %conv2.i.i.i208.i.1 to i32
  %xor.i.i.i207.i.2 = xor i32 %conv1.i.i.i206.i.2, %conv.i.i.i205.i.2
  %conv2.i.i.i208.i.2 = trunc i32 %xor.i.i.i207.i.2 to i8
  %scevgep283.3 = getelementptr [4 x i8], [4 x i8]* %u.i, i64 0, i64 3
  %221 = load i8, i8* %scevgep283.3, align 1
  %conv.i.i.i205.i.3 = zext i8 %221 to i32
  %conv1.i.i.i206.i.3 = zext i8 %conv2.i.i.i208.i.2 to i32
  %xor.i.i.i207.i.3 = xor i32 %conv1.i.i.i206.i.3, %conv.i.i.i205.i.3
  %conv2.i.i.i208.i.3 = trunc i32 %xor.i.i.i207.i.3 to i8
  %conv3.i211.i = zext i8 %conv2.i.i.i208.i.3 to i32
  %cmp.i212.i = icmp eq i32 %conv.i199.i, %conv3.i211.i
  call void @assume(i1 zeroext %cmp.i212.i) #3
  %conv5.i213.i = zext i8 %call1.i198.i to i32
  %scevgep279 = getelementptr [4 x i8], [4 x i8]* %wr.i, i64 0, i64 0
  %222 = load i8, i8* %scevgep279, align 1
  %scevgep279.1 = getelementptr [4 x i8], [4 x i8]* %wr.i, i64 0, i64 1
  %223 = load i8, i8* %scevgep279.1, align 1
  %conv.i.i155.i220.i.1 = zext i8 %223 to i32
  %conv1.i.i156.i221.i.1 = zext i8 %222 to i32
  %xor.i.i157.i222.i.1 = xor i32 %conv1.i.i156.i221.i.1, %conv.i.i155.i220.i.1
  %conv2.i.i158.i223.i.1 = trunc i32 %xor.i.i157.i222.i.1 to i8
  %scevgep279.2 = getelementptr [4 x i8], [4 x i8]* %wr.i, i64 0, i64 2
  %224 = load i8, i8* %scevgep279.2, align 1
  %conv.i.i155.i220.i.2 = zext i8 %224 to i32
  %conv1.i.i156.i221.i.2 = zext i8 %conv2.i.i158.i223.i.1 to i32
  %xor.i.i157.i222.i.2 = xor i32 %conv1.i.i156.i221.i.2, %conv.i.i155.i220.i.2
  %conv2.i.i158.i223.i.2 = trunc i32 %xor.i.i157.i222.i.2 to i8
  %scevgep279.3 = getelementptr [4 x i8], [4 x i8]* %wr.i, i64 0, i64 3
  %225 = load i8, i8* %scevgep279.3, align 1
  %conv.i.i155.i220.i.3 = zext i8 %225 to i32
  %conv1.i.i156.i221.i.3 = zext i8 %conv2.i.i158.i223.i.2 to i32
  %xor.i.i157.i222.i.3 = xor i32 %conv1.i.i156.i221.i.3, %conv.i.i155.i220.i.3
  %conv2.i.i158.i223.i.3 = trunc i32 %xor.i.i157.i222.i.3 to i8
  %conv7.i226.i = zext i8 %conv2.i.i158.i223.i.3 to i32
  %cmp8.i227.i = icmp eq i32 %conv5.i213.i, %conv7.i226.i
  call void @assume(i1 zeroext %cmp8.i227.i) #3
  %call16.i235.i = call zeroext i8 (...) @rand() #3
  %scevgep269 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  store i8 %call16.i235.i, i8* %scevgep269, align 1
  %scevgep270 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %226 = load i8, i8* %scevgep270, align 1
  %scevgep271 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  store i8 %226, i8* %scevgep271, align 1
  %call16.i235.i.1849 = call zeroext i8 (...) @rand() #3
  %scevgep269.1850 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  store i8 %call16.i235.i.1849, i8* %scevgep269.1850, align 1
  %scevgep270.1851 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %227 = load i8, i8* %scevgep270.1851, align 1
  %scevgep271.1852 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 2, i64 0
  store i8 %227, i8* %scevgep271.1852, align 1
  %call16.i235.i.2854 = call zeroext i8 (...) @rand() #3
  %scevgep269.2855 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  store i8 %call16.i235.i.2854, i8* %scevgep269.2855, align 1
  %scevgep270.2856 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  %228 = load i8, i8* %scevgep270.2856, align 1
  %scevgep271.2857 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 3, i64 0
  store i8 %228, i8* %scevgep271.2857, align 1
  %scevgep266 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 1, i64 1
  %229 = bitcast i8* %scevgep266 to [4 x [4 x i8]]*
  %call16.i235.i.1 = call zeroext i8 (...) @rand() #3
  %scevgep269.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %229, i64 0, i64 0, i64 1
  store i8 %call16.i235.i.1, i8* %scevgep269.1, align 1
  %scevgep270.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %229, i64 0, i64 0, i64 1
  %230 = load i8, i8* %scevgep270.1, align 1
  %scevgep271.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %229, i64 0, i64 1, i64 0
  store i8 %230, i8* %scevgep271.1, align 1
  %call16.i235.i.1.1 = call zeroext i8 (...) @rand() #3
  %scevgep269.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %229, i64 0, i64 0, i64 2
  store i8 %call16.i235.i.1.1, i8* %scevgep269.1.1, align 1
  %scevgep270.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %229, i64 0, i64 0, i64 2
  %231 = load i8, i8* %scevgep270.1.1, align 1
  %scevgep271.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %229, i64 0, i64 2, i64 0
  store i8 %231, i8* %scevgep271.1.1, align 1
  %scevgep266.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %229, i64 0, i64 1, i64 1
  %232 = bitcast i8* %scevgep266.1 to [4 x [4 x i8]]*
  %call16.i235.i.2 = call zeroext i8 (...) @rand() #3
  %scevgep269.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %232, i64 0, i64 0, i64 1
  store i8 %call16.i235.i.2, i8* %scevgep269.2, align 1
  %scevgep270.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %232, i64 0, i64 0, i64 1
  %233 = load i8, i8* %scevgep270.2, align 1
  %scevgep271.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %232, i64 0, i64 1, i64 0
  store i8 %233, i8* %scevgep271.2, align 1
  %scevgep242.1 = getelementptr [4 x i8], [4 x i8]* %wr.i, i64 0, i64 1
  %234 = load i8, i8* %scevgep242.1, align 1
  %conv44.i262.i.1 = zext i8 %234 to i32
  %scevgep245.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %235 = load i8, i8* %scevgep245.1, align 1
  %conv49.i267.i.1 = zext i8 %235 to i32
  %xor.i268.i.1 = xor i32 %conv44.i262.i.1, %conv49.i267.i.1
  %conv50.i269.i.1 = trunc i32 %xor.i268.i.1 to i8
  %scevgep249.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  store i8 %conv50.i269.i.1, i8* %scevgep249.1, align 1
  %236 = load i8, i8* %arraydecay12.i, align 1
  %conv57.i276.i.1 = zext i8 %236 to i32
  %xor58.i277.i.1 = xor i32 %conv57.i276.i.1, 1
  %conv59.i278.i.1 = trunc i32 %xor58.i277.i.1 to i8
  %scevgep246.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %237 = load i8, i8* %scevgep246.1, align 1
  %call64.i283.i.1 = call zeroext i8 @mult(i8 zeroext %conv59.i278.i.1, i8 zeroext %237) #3
  %scevgep253.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  store i8 %call64.i283.i.1, i8* %scevgep253.1, align 1
  %238 = load i8, i8* %arraydecay12.i, align 1
  %scevgep250.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  %239 = load i8, i8* %scevgep250.1, align 1
  %call75.i294.i.1 = call zeroext i8 @mult(i8 zeroext %238, i8 zeroext %239) #3
  %scevgep257.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  store i8 %call75.i294.i.1, i8* %scevgep257.1, align 1
  %scevgep254.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  %240 = load i8, i8* %scevgep254.1, align 1
  %conv84.i303.i.1 = zext i8 %240 to i32
  %scevgep258.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  %241 = load i8, i8* %scevgep258.1, align 1
  %conv89.i308.i.1 = zext i8 %241 to i32
  %xor90.i309.i.1 = xor i32 %conv84.i303.i.1, %conv89.i308.i.1
  %conv91.i310.i.1 = trunc i32 %xor90.i309.i.1 to i8
  %scevgep261.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  store i8 %conv91.i310.i.1, i8* %scevgep261.1, align 1
  %scevgep242.2 = getelementptr [4 x i8], [4 x i8]* %wr.i, i64 0, i64 2
  %242 = load i8, i8* %scevgep242.2, align 1
  %conv44.i262.i.2 = zext i8 %242 to i32
  %scevgep245.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %243 = load i8, i8* %scevgep245.2, align 1
  %conv49.i267.i.2 = zext i8 %243 to i32
  %xor.i268.i.2 = xor i32 %conv44.i262.i.2, %conv49.i267.i.2
  %conv50.i269.i.2 = trunc i32 %xor.i268.i.2 to i8
  %scevgep249.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 2
  store i8 %conv50.i269.i.2, i8* %scevgep249.2, align 1
  %244 = load i8, i8* %arraydecay12.i, align 1
  %conv57.i276.i.2 = zext i8 %244 to i32
  %xor58.i277.i.2 = xor i32 %conv57.i276.i.2, 1
  %conv59.i278.i.2 = trunc i32 %xor58.i277.i.2 to i8
  %scevgep246.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %245 = load i8, i8* %scevgep246.2, align 1
  %call64.i283.i.2 = call zeroext i8 @mult(i8 zeroext %conv59.i278.i.2, i8 zeroext %245) #3
  %scevgep253.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 2
  store i8 %call64.i283.i.2, i8* %scevgep253.2, align 1
  %246 = load i8, i8* %arraydecay12.i, align 1
  %scevgep250.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 2
  %247 = load i8, i8* %scevgep250.2, align 1
  %call75.i294.i.2 = call zeroext i8 @mult(i8 zeroext %246, i8 zeroext %247) #3
  %scevgep257.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 2
  store i8 %call75.i294.i.2, i8* %scevgep257.2, align 1
  %scevgep254.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 2
  %248 = load i8, i8* %scevgep254.2, align 1
  %conv84.i303.i.2 = zext i8 %248 to i32
  %scevgep258.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 2
  %249 = load i8, i8* %scevgep258.2, align 1
  %conv89.i308.i.2 = zext i8 %249 to i32
  %xor90.i309.i.2 = xor i32 %conv84.i303.i.2, %conv89.i308.i.2
  %conv91.i310.i.2 = trunc i32 %xor90.i309.i.2 to i8
  %scevgep261.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 2
  store i8 %conv91.i310.i.2, i8* %scevgep261.2, align 1
  %scevgep242.3 = getelementptr [4 x i8], [4 x i8]* %wr.i, i64 0, i64 3
  %250 = load i8, i8* %scevgep242.3, align 1
  %conv44.i262.i.3 = zext i8 %250 to i32
  %scevgep245.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  %251 = load i8, i8* %scevgep245.3, align 1
  %conv49.i267.i.3 = zext i8 %251 to i32
  %xor.i268.i.3 = xor i32 %conv44.i262.i.3, %conv49.i267.i.3
  %conv50.i269.i.3 = trunc i32 %xor.i268.i.3 to i8
  %scevgep249.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 3
  store i8 %conv50.i269.i.3, i8* %scevgep249.3, align 1
  %252 = load i8, i8* %arraydecay12.i, align 1
  %conv57.i276.i.3 = zext i8 %252 to i32
  %xor58.i277.i.3 = xor i32 %conv57.i276.i.3, 1
  %conv59.i278.i.3 = trunc i32 %xor58.i277.i.3 to i8
  %scevgep246.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  %253 = load i8, i8* %scevgep246.3, align 1
  %call64.i283.i.3 = call zeroext i8 @mult(i8 zeroext %conv59.i278.i.3, i8 zeroext %253) #3
  %scevgep253.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 3
  store i8 %call64.i283.i.3, i8* %scevgep253.3, align 1
  %254 = load i8, i8* %arraydecay12.i, align 1
  %scevgep250.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 3
  %255 = load i8, i8* %scevgep250.3, align 1
  %call75.i294.i.3 = call zeroext i8 @mult(i8 zeroext %254, i8 zeroext %255) #3
  %scevgep257.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 3
  store i8 %call75.i294.i.3, i8* %scevgep257.3, align 1
  %scevgep254.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 3
  %256 = load i8, i8* %scevgep254.3, align 1
  %conv84.i303.i.3 = zext i8 %256 to i32
  %scevgep258.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 3
  %257 = load i8, i8* %scevgep258.3, align 1
  %conv89.i308.i.3 = zext i8 %257 to i32
  %xor90.i309.i.3 = xor i32 %conv84.i303.i.3, %conv89.i308.i.3
  %conv91.i310.i.3 = trunc i32 %xor90.i309.i.3 to i8
  %scevgep261.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 3
  store i8 %conv91.i310.i.3, i8* %scevgep261.3, align 1
  %scevgep244 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %258 = bitcast i8* %scevgep244 to [4 x [4 x i8]]*
  %scevgep248 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 1, i64 0
  %259 = bitcast i8* %scevgep248 to [4 x [4 x i8]]*
  %scevgep252 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 1, i64 0
  %260 = bitcast i8* %scevgep252 to [4 x [4 x i8]]*
  %scevgep256 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 1, i64 0
  %261 = bitcast i8* %scevgep256 to [4 x [4 x i8]]*
  %scevgep260 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %262 = bitcast i8* %scevgep260 to [4 x [4 x i8]]*
  %arrayidx56.i275.i.1 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 1
  %arrayidx70.i289.i.1 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 1
  %scevgep242.1647 = getelementptr [4 x i8], [4 x i8]* %wr.i, i64 0, i64 0
  %263 = load i8, i8* %scevgep242.1647, align 1
  %conv44.i262.i.1648 = zext i8 %263 to i32
  %scevgep245.1649 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %258, i64 0, i64 0, i64 0
  %264 = load i8, i8* %scevgep245.1649, align 1
  %conv49.i267.i.1650 = zext i8 %264 to i32
  %xor.i268.i.1651 = xor i32 %conv44.i262.i.1648, %conv49.i267.i.1650
  %conv50.i269.i.1652 = trunc i32 %xor.i268.i.1651 to i8
  %scevgep249.1653 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %259, i64 0, i64 0, i64 0
  store i8 %conv50.i269.i.1652, i8* %scevgep249.1653, align 1
  %265 = load i8, i8* %arrayidx56.i275.i.1, align 1
  %conv57.i276.i.1654 = zext i8 %265 to i32
  %xor58.i277.i.1655 = xor i32 %conv57.i276.i.1654, 1
  %conv59.i278.i.1656 = trunc i32 %xor58.i277.i.1655 to i8
  %scevgep246.1657 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %258, i64 0, i64 0, i64 0
  %266 = load i8, i8* %scevgep246.1657, align 1
  %call64.i283.i.1658 = call zeroext i8 @mult(i8 zeroext %conv59.i278.i.1656, i8 zeroext %266) #3
  %scevgep253.1659 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %260, i64 0, i64 0, i64 0
  store i8 %call64.i283.i.1658, i8* %scevgep253.1659, align 1
  %267 = load i8, i8* %arrayidx70.i289.i.1, align 1
  %scevgep250.1660 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %259, i64 0, i64 0, i64 0
  %268 = load i8, i8* %scevgep250.1660, align 1
  %call75.i294.i.1661 = call zeroext i8 @mult(i8 zeroext %267, i8 zeroext %268) #3
  %scevgep257.1662 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %261, i64 0, i64 0, i64 0
  store i8 %call75.i294.i.1661, i8* %scevgep257.1662, align 1
  %scevgep254.1663 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %260, i64 0, i64 0, i64 0
  %269 = load i8, i8* %scevgep254.1663, align 1
  %conv84.i303.i.1664 = zext i8 %269 to i32
  %scevgep258.1665 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %261, i64 0, i64 0, i64 0
  %270 = load i8, i8* %scevgep258.1665, align 1
  %conv89.i308.i.1666 = zext i8 %270 to i32
  %xor90.i309.i.1667 = xor i32 %conv84.i303.i.1664, %conv89.i308.i.1666
  %conv91.i310.i.1668 = trunc i32 %xor90.i309.i.1667 to i8
  %scevgep261.1669 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %262, i64 0, i64 0, i64 0
  store i8 %conv91.i310.i.1668, i8* %scevgep261.1669, align 1
  %scevgep242.2.1 = getelementptr [4 x i8], [4 x i8]* %wr.i, i64 0, i64 2
  %271 = load i8, i8* %scevgep242.2.1, align 1
  %conv44.i262.i.2.1 = zext i8 %271 to i32
  %scevgep245.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %258, i64 0, i64 0, i64 2
  %272 = load i8, i8* %scevgep245.2.1, align 1
  %conv49.i267.i.2.1 = zext i8 %272 to i32
  %xor.i268.i.2.1 = xor i32 %conv44.i262.i.2.1, %conv49.i267.i.2.1
  %conv50.i269.i.2.1 = trunc i32 %xor.i268.i.2.1 to i8
  %scevgep249.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %259, i64 0, i64 0, i64 2
  store i8 %conv50.i269.i.2.1, i8* %scevgep249.2.1, align 1
  %273 = load i8, i8* %arrayidx56.i275.i.1, align 1
  %conv57.i276.i.2.1 = zext i8 %273 to i32
  %xor58.i277.i.2.1 = xor i32 %conv57.i276.i.2.1, 1
  %conv59.i278.i.2.1 = trunc i32 %xor58.i277.i.2.1 to i8
  %scevgep246.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %258, i64 0, i64 0, i64 2
  %274 = load i8, i8* %scevgep246.2.1, align 1
  %call64.i283.i.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i278.i.2.1, i8 zeroext %274) #3
  %scevgep253.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %260, i64 0, i64 0, i64 2
  store i8 %call64.i283.i.2.1, i8* %scevgep253.2.1, align 1
  %275 = load i8, i8* %arrayidx70.i289.i.1, align 1
  %scevgep250.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %259, i64 0, i64 0, i64 2
  %276 = load i8, i8* %scevgep250.2.1, align 1
  %call75.i294.i.2.1 = call zeroext i8 @mult(i8 zeroext %275, i8 zeroext %276) #3
  %scevgep257.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %261, i64 0, i64 0, i64 2
  store i8 %call75.i294.i.2.1, i8* %scevgep257.2.1, align 1
  %scevgep254.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %260, i64 0, i64 0, i64 2
  %277 = load i8, i8* %scevgep254.2.1, align 1
  %conv84.i303.i.2.1 = zext i8 %277 to i32
  %scevgep258.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %261, i64 0, i64 0, i64 2
  %278 = load i8, i8* %scevgep258.2.1, align 1
  %conv89.i308.i.2.1 = zext i8 %278 to i32
  %xor90.i309.i.2.1 = xor i32 %conv84.i303.i.2.1, %conv89.i308.i.2.1
  %conv91.i310.i.2.1 = trunc i32 %xor90.i309.i.2.1 to i8
  %scevgep261.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %262, i64 0, i64 0, i64 2
  store i8 %conv91.i310.i.2.1, i8* %scevgep261.2.1, align 1
  %scevgep242.3.1 = getelementptr [4 x i8], [4 x i8]* %wr.i, i64 0, i64 3
  %279 = load i8, i8* %scevgep242.3.1, align 1
  %conv44.i262.i.3.1 = zext i8 %279 to i32
  %scevgep245.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %258, i64 0, i64 0, i64 3
  %280 = load i8, i8* %scevgep245.3.1, align 1
  %conv49.i267.i.3.1 = zext i8 %280 to i32
  %xor.i268.i.3.1 = xor i32 %conv44.i262.i.3.1, %conv49.i267.i.3.1
  %conv50.i269.i.3.1 = trunc i32 %xor.i268.i.3.1 to i8
  %scevgep249.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %259, i64 0, i64 0, i64 3
  store i8 %conv50.i269.i.3.1, i8* %scevgep249.3.1, align 1
  %281 = load i8, i8* %arrayidx56.i275.i.1, align 1
  %conv57.i276.i.3.1 = zext i8 %281 to i32
  %xor58.i277.i.3.1 = xor i32 %conv57.i276.i.3.1, 1
  %conv59.i278.i.3.1 = trunc i32 %xor58.i277.i.3.1 to i8
  %scevgep246.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %258, i64 0, i64 0, i64 3
  %282 = load i8, i8* %scevgep246.3.1, align 1
  %call64.i283.i.3.1 = call zeroext i8 @mult(i8 zeroext %conv59.i278.i.3.1, i8 zeroext %282) #3
  %scevgep253.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %260, i64 0, i64 0, i64 3
  store i8 %call64.i283.i.3.1, i8* %scevgep253.3.1, align 1
  %283 = load i8, i8* %arrayidx70.i289.i.1, align 1
  %scevgep250.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %259, i64 0, i64 0, i64 3
  %284 = load i8, i8* %scevgep250.3.1, align 1
  %call75.i294.i.3.1 = call zeroext i8 @mult(i8 zeroext %283, i8 zeroext %284) #3
  %scevgep257.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %261, i64 0, i64 0, i64 3
  store i8 %call75.i294.i.3.1, i8* %scevgep257.3.1, align 1
  %scevgep254.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %260, i64 0, i64 0, i64 3
  %285 = load i8, i8* %scevgep254.3.1, align 1
  %conv84.i303.i.3.1 = zext i8 %285 to i32
  %scevgep258.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %261, i64 0, i64 0, i64 3
  %286 = load i8, i8* %scevgep258.3.1, align 1
  %conv89.i308.i.3.1 = zext i8 %286 to i32
  %xor90.i309.i.3.1 = xor i32 %conv84.i303.i.3.1, %conv89.i308.i.3.1
  %conv91.i310.i.3.1 = trunc i32 %xor90.i309.i.3.1 to i8
  %scevgep261.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %262, i64 0, i64 0, i64 3
  store i8 %conv91.i310.i.3.1, i8* %scevgep261.3.1, align 1
  %scevgep244.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %258, i64 0, i64 1, i64 0
  %287 = bitcast i8* %scevgep244.1 to [4 x [4 x i8]]*
  %scevgep248.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %259, i64 0, i64 1, i64 0
  %288 = bitcast i8* %scevgep248.1 to [4 x [4 x i8]]*
  %scevgep252.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %260, i64 0, i64 1, i64 0
  %289 = bitcast i8* %scevgep252.1 to [4 x [4 x i8]]*
  %scevgep256.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %261, i64 0, i64 1, i64 0
  %290 = bitcast i8* %scevgep256.1 to [4 x [4 x i8]]*
  %scevgep260.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %262, i64 0, i64 1, i64 0
  %291 = bitcast i8* %scevgep260.1 to [4 x [4 x i8]]*
  %arrayidx56.i275.i.2 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 2
  %arrayidx70.i289.i.2 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 2
  %scevgep242.2674 = getelementptr [4 x i8], [4 x i8]* %wr.i, i64 0, i64 0
  %292 = load i8, i8* %scevgep242.2674, align 1
  %conv44.i262.i.2675 = zext i8 %292 to i32
  %scevgep245.2676 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %287, i64 0, i64 0, i64 0
  %293 = load i8, i8* %scevgep245.2676, align 1
  %conv49.i267.i.2677 = zext i8 %293 to i32
  %xor.i268.i.2678 = xor i32 %conv44.i262.i.2675, %conv49.i267.i.2677
  %conv50.i269.i.2679 = trunc i32 %xor.i268.i.2678 to i8
  %scevgep249.2680 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %288, i64 0, i64 0, i64 0
  store i8 %conv50.i269.i.2679, i8* %scevgep249.2680, align 1
  %294 = load i8, i8* %arrayidx56.i275.i.2, align 1
  %conv57.i276.i.2681 = zext i8 %294 to i32
  %xor58.i277.i.2682 = xor i32 %conv57.i276.i.2681, 1
  %conv59.i278.i.2683 = trunc i32 %xor58.i277.i.2682 to i8
  %scevgep246.2684 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %287, i64 0, i64 0, i64 0
  %295 = load i8, i8* %scevgep246.2684, align 1
  %call64.i283.i.2685 = call zeroext i8 @mult(i8 zeroext %conv59.i278.i.2683, i8 zeroext %295) #3
  %scevgep253.2686 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %289, i64 0, i64 0, i64 0
  store i8 %call64.i283.i.2685, i8* %scevgep253.2686, align 1
  %296 = load i8, i8* %arrayidx70.i289.i.2, align 1
  %scevgep250.2687 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %288, i64 0, i64 0, i64 0
  %297 = load i8, i8* %scevgep250.2687, align 1
  %call75.i294.i.2688 = call zeroext i8 @mult(i8 zeroext %296, i8 zeroext %297) #3
  %scevgep257.2689 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %290, i64 0, i64 0, i64 0
  store i8 %call75.i294.i.2688, i8* %scevgep257.2689, align 1
  %scevgep254.2690 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %289, i64 0, i64 0, i64 0
  %298 = load i8, i8* %scevgep254.2690, align 1
  %conv84.i303.i.2691 = zext i8 %298 to i32
  %scevgep258.2692 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %290, i64 0, i64 0, i64 0
  %299 = load i8, i8* %scevgep258.2692, align 1
  %conv89.i308.i.2693 = zext i8 %299 to i32
  %xor90.i309.i.2694 = xor i32 %conv84.i303.i.2691, %conv89.i308.i.2693
  %conv91.i310.i.2695 = trunc i32 %xor90.i309.i.2694 to i8
  %scevgep261.2696 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %291, i64 0, i64 0, i64 0
  store i8 %conv91.i310.i.2695, i8* %scevgep261.2696, align 1
  %scevgep242.1.2 = getelementptr [4 x i8], [4 x i8]* %wr.i, i64 0, i64 1
  %300 = load i8, i8* %scevgep242.1.2, align 1
  %conv44.i262.i.1.2 = zext i8 %300 to i32
  %scevgep245.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %287, i64 0, i64 0, i64 1
  %301 = load i8, i8* %scevgep245.1.2, align 1
  %conv49.i267.i.1.2 = zext i8 %301 to i32
  %xor.i268.i.1.2 = xor i32 %conv44.i262.i.1.2, %conv49.i267.i.1.2
  %conv50.i269.i.1.2 = trunc i32 %xor.i268.i.1.2 to i8
  %scevgep249.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %288, i64 0, i64 0, i64 1
  store i8 %conv50.i269.i.1.2, i8* %scevgep249.1.2, align 1
  %302 = load i8, i8* %arrayidx56.i275.i.2, align 1
  %conv57.i276.i.1.2 = zext i8 %302 to i32
  %xor58.i277.i.1.2 = xor i32 %conv57.i276.i.1.2, 1
  %conv59.i278.i.1.2 = trunc i32 %xor58.i277.i.1.2 to i8
  %scevgep246.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %287, i64 0, i64 0, i64 1
  %303 = load i8, i8* %scevgep246.1.2, align 1
  %call64.i283.i.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i278.i.1.2, i8 zeroext %303) #3
  %scevgep253.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %289, i64 0, i64 0, i64 1
  store i8 %call64.i283.i.1.2, i8* %scevgep253.1.2, align 1
  %304 = load i8, i8* %arrayidx70.i289.i.2, align 1
  %scevgep250.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %288, i64 0, i64 0, i64 1
  %305 = load i8, i8* %scevgep250.1.2, align 1
  %call75.i294.i.1.2 = call zeroext i8 @mult(i8 zeroext %304, i8 zeroext %305) #3
  %scevgep257.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %290, i64 0, i64 0, i64 1
  store i8 %call75.i294.i.1.2, i8* %scevgep257.1.2, align 1
  %scevgep254.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %289, i64 0, i64 0, i64 1
  %306 = load i8, i8* %scevgep254.1.2, align 1
  %conv84.i303.i.1.2 = zext i8 %306 to i32
  %scevgep258.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %290, i64 0, i64 0, i64 1
  %307 = load i8, i8* %scevgep258.1.2, align 1
  %conv89.i308.i.1.2 = zext i8 %307 to i32
  %xor90.i309.i.1.2 = xor i32 %conv84.i303.i.1.2, %conv89.i308.i.1.2
  %conv91.i310.i.1.2 = trunc i32 %xor90.i309.i.1.2 to i8
  %scevgep261.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %291, i64 0, i64 0, i64 1
  store i8 %conv91.i310.i.1.2, i8* %scevgep261.1.2, align 1
  %scevgep242.3.2 = getelementptr [4 x i8], [4 x i8]* %wr.i, i64 0, i64 3
  %308 = load i8, i8* %scevgep242.3.2, align 1
  %conv44.i262.i.3.2 = zext i8 %308 to i32
  %scevgep245.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %287, i64 0, i64 0, i64 3
  %309 = load i8, i8* %scevgep245.3.2, align 1
  %conv49.i267.i.3.2 = zext i8 %309 to i32
  %xor.i268.i.3.2 = xor i32 %conv44.i262.i.3.2, %conv49.i267.i.3.2
  %conv50.i269.i.3.2 = trunc i32 %xor.i268.i.3.2 to i8
  %scevgep249.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %288, i64 0, i64 0, i64 3
  store i8 %conv50.i269.i.3.2, i8* %scevgep249.3.2, align 1
  %310 = load i8, i8* %arrayidx56.i275.i.2, align 1
  %conv57.i276.i.3.2 = zext i8 %310 to i32
  %xor58.i277.i.3.2 = xor i32 %conv57.i276.i.3.2, 1
  %conv59.i278.i.3.2 = trunc i32 %xor58.i277.i.3.2 to i8
  %scevgep246.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %287, i64 0, i64 0, i64 3
  %311 = load i8, i8* %scevgep246.3.2, align 1
  %call64.i283.i.3.2 = call zeroext i8 @mult(i8 zeroext %conv59.i278.i.3.2, i8 zeroext %311) #3
  %scevgep253.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %289, i64 0, i64 0, i64 3
  store i8 %call64.i283.i.3.2, i8* %scevgep253.3.2, align 1
  %312 = load i8, i8* %arrayidx70.i289.i.2, align 1
  %scevgep250.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %288, i64 0, i64 0, i64 3
  %313 = load i8, i8* %scevgep250.3.2, align 1
  %call75.i294.i.3.2 = call zeroext i8 @mult(i8 zeroext %312, i8 zeroext %313) #3
  %scevgep257.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %290, i64 0, i64 0, i64 3
  store i8 %call75.i294.i.3.2, i8* %scevgep257.3.2, align 1
  %scevgep254.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %289, i64 0, i64 0, i64 3
  %314 = load i8, i8* %scevgep254.3.2, align 1
  %conv84.i303.i.3.2 = zext i8 %314 to i32
  %scevgep258.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %290, i64 0, i64 0, i64 3
  %315 = load i8, i8* %scevgep258.3.2, align 1
  %conv89.i308.i.3.2 = zext i8 %315 to i32
  %xor90.i309.i.3.2 = xor i32 %conv84.i303.i.3.2, %conv89.i308.i.3.2
  %conv91.i310.i.3.2 = trunc i32 %xor90.i309.i.3.2 to i8
  %scevgep261.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %291, i64 0, i64 0, i64 3
  store i8 %conv91.i310.i.3.2, i8* %scevgep261.3.2, align 1
  %scevgep244.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %287, i64 0, i64 1, i64 0
  %316 = bitcast i8* %scevgep244.2 to [4 x [4 x i8]]*
  %scevgep248.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %288, i64 0, i64 1, i64 0
  %317 = bitcast i8* %scevgep248.2 to [4 x [4 x i8]]*
  %scevgep252.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %289, i64 0, i64 1, i64 0
  %318 = bitcast i8* %scevgep252.2 to [4 x [4 x i8]]*
  %scevgep256.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %290, i64 0, i64 1, i64 0
  %319 = bitcast i8* %scevgep256.2 to [4 x [4 x i8]]*
  %scevgep260.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %291, i64 0, i64 1, i64 0
  %320 = bitcast i8* %scevgep260.2 to [4 x [4 x i8]]*
  %arrayidx56.i275.i.3 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 3
  %arrayidx70.i289.i.3 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 3
  %scevgep242.3701 = getelementptr [4 x i8], [4 x i8]* %wr.i, i64 0, i64 0
  %321 = load i8, i8* %scevgep242.3701, align 1
  %conv44.i262.i.3702 = zext i8 %321 to i32
  %scevgep245.3703 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %316, i64 0, i64 0, i64 0
  %322 = load i8, i8* %scevgep245.3703, align 1
  %conv49.i267.i.3704 = zext i8 %322 to i32
  %xor.i268.i.3705 = xor i32 %conv44.i262.i.3702, %conv49.i267.i.3704
  %conv50.i269.i.3706 = trunc i32 %xor.i268.i.3705 to i8
  %scevgep249.3707 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %317, i64 0, i64 0, i64 0
  store i8 %conv50.i269.i.3706, i8* %scevgep249.3707, align 1
  %323 = load i8, i8* %arrayidx56.i275.i.3, align 1
  %conv57.i276.i.3708 = zext i8 %323 to i32
  %xor58.i277.i.3709 = xor i32 %conv57.i276.i.3708, 1
  %conv59.i278.i.3710 = trunc i32 %xor58.i277.i.3709 to i8
  %scevgep246.3711 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %316, i64 0, i64 0, i64 0
  %324 = load i8, i8* %scevgep246.3711, align 1
  %call64.i283.i.3712 = call zeroext i8 @mult(i8 zeroext %conv59.i278.i.3710, i8 zeroext %324) #3
  %scevgep253.3713 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %318, i64 0, i64 0, i64 0
  store i8 %call64.i283.i.3712, i8* %scevgep253.3713, align 1
  %325 = load i8, i8* %arrayidx70.i289.i.3, align 1
  %scevgep250.3714 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %317, i64 0, i64 0, i64 0
  %326 = load i8, i8* %scevgep250.3714, align 1
  %call75.i294.i.3715 = call zeroext i8 @mult(i8 zeroext %325, i8 zeroext %326) #3
  %scevgep257.3716 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %319, i64 0, i64 0, i64 0
  store i8 %call75.i294.i.3715, i8* %scevgep257.3716, align 1
  %scevgep254.3717 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %318, i64 0, i64 0, i64 0
  %327 = load i8, i8* %scevgep254.3717, align 1
  %conv84.i303.i.3718 = zext i8 %327 to i32
  %scevgep258.3719 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %319, i64 0, i64 0, i64 0
  %328 = load i8, i8* %scevgep258.3719, align 1
  %conv89.i308.i.3720 = zext i8 %328 to i32
  %xor90.i309.i.3721 = xor i32 %conv84.i303.i.3718, %conv89.i308.i.3720
  %conv91.i310.i.3722 = trunc i32 %xor90.i309.i.3721 to i8
  %scevgep261.3723 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %320, i64 0, i64 0, i64 0
  store i8 %conv91.i310.i.3722, i8* %scevgep261.3723, align 1
  %scevgep242.1.3 = getelementptr [4 x i8], [4 x i8]* %wr.i, i64 0, i64 1
  %329 = load i8, i8* %scevgep242.1.3, align 1
  %conv44.i262.i.1.3 = zext i8 %329 to i32
  %scevgep245.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %316, i64 0, i64 0, i64 1
  %330 = load i8, i8* %scevgep245.1.3, align 1
  %conv49.i267.i.1.3 = zext i8 %330 to i32
  %xor.i268.i.1.3 = xor i32 %conv44.i262.i.1.3, %conv49.i267.i.1.3
  %conv50.i269.i.1.3 = trunc i32 %xor.i268.i.1.3 to i8
  %scevgep249.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %317, i64 0, i64 0, i64 1
  store i8 %conv50.i269.i.1.3, i8* %scevgep249.1.3, align 1
  %331 = load i8, i8* %arrayidx56.i275.i.3, align 1
  %conv57.i276.i.1.3 = zext i8 %331 to i32
  %xor58.i277.i.1.3 = xor i32 %conv57.i276.i.1.3, 1
  %conv59.i278.i.1.3 = trunc i32 %xor58.i277.i.1.3 to i8
  %scevgep246.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %316, i64 0, i64 0, i64 1
  %332 = load i8, i8* %scevgep246.1.3, align 1
  %call64.i283.i.1.3 = call zeroext i8 @mult(i8 zeroext %conv59.i278.i.1.3, i8 zeroext %332) #3
  %scevgep253.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %318, i64 0, i64 0, i64 1
  store i8 %call64.i283.i.1.3, i8* %scevgep253.1.3, align 1
  %333 = load i8, i8* %arrayidx70.i289.i.3, align 1
  %scevgep250.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %317, i64 0, i64 0, i64 1
  %334 = load i8, i8* %scevgep250.1.3, align 1
  %call75.i294.i.1.3 = call zeroext i8 @mult(i8 zeroext %333, i8 zeroext %334) #3
  %scevgep257.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %319, i64 0, i64 0, i64 1
  store i8 %call75.i294.i.1.3, i8* %scevgep257.1.3, align 1
  %scevgep254.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %318, i64 0, i64 0, i64 1
  %335 = load i8, i8* %scevgep254.1.3, align 1
  %conv84.i303.i.1.3 = zext i8 %335 to i32
  %scevgep258.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %319, i64 0, i64 0, i64 1
  %336 = load i8, i8* %scevgep258.1.3, align 1
  %conv89.i308.i.1.3 = zext i8 %336 to i32
  %xor90.i309.i.1.3 = xor i32 %conv84.i303.i.1.3, %conv89.i308.i.1.3
  %conv91.i310.i.1.3 = trunc i32 %xor90.i309.i.1.3 to i8
  %scevgep261.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %320, i64 0, i64 0, i64 1
  store i8 %conv91.i310.i.1.3, i8* %scevgep261.1.3, align 1
  %scevgep242.2.3 = getelementptr [4 x i8], [4 x i8]* %wr.i, i64 0, i64 2
  %337 = load i8, i8* %scevgep242.2.3, align 1
  %conv44.i262.i.2.3 = zext i8 %337 to i32
  %scevgep245.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %316, i64 0, i64 0, i64 2
  %338 = load i8, i8* %scevgep245.2.3, align 1
  %conv49.i267.i.2.3 = zext i8 %338 to i32
  %xor.i268.i.2.3 = xor i32 %conv44.i262.i.2.3, %conv49.i267.i.2.3
  %conv50.i269.i.2.3 = trunc i32 %xor.i268.i.2.3 to i8
  %scevgep249.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %317, i64 0, i64 0, i64 2
  store i8 %conv50.i269.i.2.3, i8* %scevgep249.2.3, align 1
  %339 = load i8, i8* %arrayidx56.i275.i.3, align 1
  %conv57.i276.i.2.3 = zext i8 %339 to i32
  %xor58.i277.i.2.3 = xor i32 %conv57.i276.i.2.3, 1
  %conv59.i278.i.2.3 = trunc i32 %xor58.i277.i.2.3 to i8
  %scevgep246.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %316, i64 0, i64 0, i64 2
  %340 = load i8, i8* %scevgep246.2.3, align 1
  %call64.i283.i.2.3 = call zeroext i8 @mult(i8 zeroext %conv59.i278.i.2.3, i8 zeroext %340) #3
  %scevgep253.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %318, i64 0, i64 0, i64 2
  store i8 %call64.i283.i.2.3, i8* %scevgep253.2.3, align 1
  %341 = load i8, i8* %arrayidx70.i289.i.3, align 1
  %scevgep250.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %317, i64 0, i64 0, i64 2
  %342 = load i8, i8* %scevgep250.2.3, align 1
  %call75.i294.i.2.3 = call zeroext i8 @mult(i8 zeroext %341, i8 zeroext %342) #3
  %scevgep257.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %319, i64 0, i64 0, i64 2
  store i8 %call75.i294.i.2.3, i8* %scevgep257.2.3, align 1
  %scevgep254.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %318, i64 0, i64 0, i64 2
  %343 = load i8, i8* %scevgep254.2.3, align 1
  %conv84.i303.i.2.3 = zext i8 %343 to i32
  %scevgep258.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %319, i64 0, i64 0, i64 2
  %344 = load i8, i8* %scevgep258.2.3, align 1
  %conv89.i308.i.2.3 = zext i8 %344 to i32
  %xor90.i309.i.2.3 = xor i32 %conv84.i303.i.2.3, %conv89.i308.i.2.3
  %conv91.i310.i.2.3 = trunc i32 %xor90.i309.i.2.3 to i8
  %scevgep261.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %320, i64 0, i64 0, i64 2
  store i8 %conv91.i310.i.2.3, i8* %scevgep261.2.3, align 1
  %345 = load i8, i8* %arraydecay12.i, align 1
  %346 = load i8, i8* %arraydecay13.i, align 1
  %call111.i327.i = call zeroext i8 @mult(i8 zeroext %345, i8 zeroext %346) #3
  store i8 %call111.i327.i, i8* %arraydecay14.i, align 1
  %scevgep232.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  %347 = load i8, i8* %scevgep232.1, align 1
  %conv126.i339.i.1 = zext i8 %347 to i32
  %348 = load i8, i8* %arraydecay14.i, align 1
  %conv129.i342.i.1 = zext i8 %348 to i32
  %xor130.i343.i.1 = xor i32 %conv129.i342.i.1, %conv126.i339.i.1
  %conv131.i344.i.1 = trunc i32 %xor130.i343.i.1 to i8
  store i8 %conv131.i344.i.1, i8* %arraydecay14.i, align 1
  %scevgep232.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 2
  %349 = load i8, i8* %scevgep232.2, align 1
  %conv126.i339.i.2 = zext i8 %349 to i32
  %350 = load i8, i8* %arraydecay14.i, align 1
  %conv129.i342.i.2 = zext i8 %350 to i32
  %xor130.i343.i.2 = xor i32 %conv129.i342.i.2, %conv126.i339.i.2
  %conv131.i344.i.2 = trunc i32 %xor130.i343.i.2 to i8
  store i8 %conv131.i344.i.2, i8* %arraydecay14.i, align 1
  %scevgep232.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 3
  %351 = load i8, i8* %scevgep232.3, align 1
  %conv126.i339.i.3 = zext i8 %351 to i32
  %352 = load i8, i8* %arraydecay14.i, align 1
  %conv129.i342.i.3 = zext i8 %352 to i32
  %xor130.i343.i.3 = xor i32 %conv129.i342.i.3, %conv126.i339.i.3
  %conv131.i344.i.3 = trunc i32 %xor130.i343.i.3 to i8
  store i8 %conv131.i344.i.3, i8* %arraydecay14.i, align 1
  %scevgep231 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %353 = bitcast i8* %scevgep231 to [4 x [4 x i8]]*
  %arrayidx108.i324.i.1 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 1
  %354 = load i8, i8* %arrayidx108.i324.i.1, align 1
  %arrayidx110.i326.i.1 = getelementptr inbounds i8, i8* %arraydecay13.i, i64 1
  %355 = load i8, i8* %arrayidx110.i326.i.1, align 1
  %call111.i327.i.1 = call zeroext i8 @mult(i8 zeroext %354, i8 zeroext %355) #3
  %arrayidx113.i329.i.1 = getelementptr inbounds i8, i8* %arraydecay14.i, i64 1
  store i8 %call111.i327.i.1, i8* %arrayidx113.i329.i.1, align 1
  %arrayidx128.i341.i.1 = getelementptr inbounds i8, i8* %arraydecay14.i, i64 1
  %scevgep232.1620 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %353, i64 0, i64 0, i64 0
  %356 = load i8, i8* %scevgep232.1620, align 1
  %conv126.i339.i.1621 = zext i8 %356 to i32
  %357 = load i8, i8* %arrayidx128.i341.i.1, align 1
  %conv129.i342.i.1622 = zext i8 %357 to i32
  %xor130.i343.i.1623 = xor i32 %conv129.i342.i.1622, %conv126.i339.i.1621
  %conv131.i344.i.1624 = trunc i32 %xor130.i343.i.1623 to i8
  store i8 %conv131.i344.i.1624, i8* %arrayidx128.i341.i.1, align 1
  %scevgep232.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %353, i64 0, i64 0, i64 2
  %358 = load i8, i8* %scevgep232.2.1, align 1
  %conv126.i339.i.2.1 = zext i8 %358 to i32
  %359 = load i8, i8* %arrayidx128.i341.i.1, align 1
  %conv129.i342.i.2.1 = zext i8 %359 to i32
  %xor130.i343.i.2.1 = xor i32 %conv129.i342.i.2.1, %conv126.i339.i.2.1
  %conv131.i344.i.2.1 = trunc i32 %xor130.i343.i.2.1 to i8
  store i8 %conv131.i344.i.2.1, i8* %arrayidx128.i341.i.1, align 1
  %scevgep232.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %353, i64 0, i64 0, i64 3
  %360 = load i8, i8* %scevgep232.3.1, align 1
  %conv126.i339.i.3.1 = zext i8 %360 to i32
  %361 = load i8, i8* %arrayidx128.i341.i.1, align 1
  %conv129.i342.i.3.1 = zext i8 %361 to i32
  %xor130.i343.i.3.1 = xor i32 %conv129.i342.i.3.1, %conv126.i339.i.3.1
  %conv131.i344.i.3.1 = trunc i32 %xor130.i343.i.3.1 to i8
  store i8 %conv131.i344.i.3.1, i8* %arrayidx128.i341.i.1, align 1
  %scevgep231.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %353, i64 0, i64 1, i64 0
  %362 = bitcast i8* %scevgep231.1 to [4 x [4 x i8]]*
  %arrayidx108.i324.i.2 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 2
  %363 = load i8, i8* %arrayidx108.i324.i.2, align 1
  %arrayidx110.i326.i.2 = getelementptr inbounds i8, i8* %arraydecay13.i, i64 2
  %364 = load i8, i8* %arrayidx110.i326.i.2, align 1
  %call111.i327.i.2 = call zeroext i8 @mult(i8 zeroext %363, i8 zeroext %364) #3
  %arrayidx113.i329.i.2 = getelementptr inbounds i8, i8* %arraydecay14.i, i64 2
  store i8 %call111.i327.i.2, i8* %arrayidx113.i329.i.2, align 1
  %arrayidx128.i341.i.2 = getelementptr inbounds i8, i8* %arraydecay14.i, i64 2
  %scevgep232.2629 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %362, i64 0, i64 0, i64 0
  %365 = load i8, i8* %scevgep232.2629, align 1
  %conv126.i339.i.2630 = zext i8 %365 to i32
  %366 = load i8, i8* %arrayidx128.i341.i.2, align 1
  %conv129.i342.i.2631 = zext i8 %366 to i32
  %xor130.i343.i.2632 = xor i32 %conv129.i342.i.2631, %conv126.i339.i.2630
  %conv131.i344.i.2633 = trunc i32 %xor130.i343.i.2632 to i8
  store i8 %conv131.i344.i.2633, i8* %arrayidx128.i341.i.2, align 1
  %scevgep232.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %362, i64 0, i64 0, i64 1
  %367 = load i8, i8* %scevgep232.1.2, align 1
  %conv126.i339.i.1.2 = zext i8 %367 to i32
  %368 = load i8, i8* %arrayidx128.i341.i.2, align 1
  %conv129.i342.i.1.2 = zext i8 %368 to i32
  %xor130.i343.i.1.2 = xor i32 %conv129.i342.i.1.2, %conv126.i339.i.1.2
  %conv131.i344.i.1.2 = trunc i32 %xor130.i343.i.1.2 to i8
  store i8 %conv131.i344.i.1.2, i8* %arrayidx128.i341.i.2, align 1
  %scevgep232.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %362, i64 0, i64 0, i64 3
  %369 = load i8, i8* %scevgep232.3.2, align 1
  %conv126.i339.i.3.2 = zext i8 %369 to i32
  %370 = load i8, i8* %arrayidx128.i341.i.2, align 1
  %conv129.i342.i.3.2 = zext i8 %370 to i32
  %xor130.i343.i.3.2 = xor i32 %conv129.i342.i.3.2, %conv126.i339.i.3.2
  %conv131.i344.i.3.2 = trunc i32 %xor130.i343.i.3.2 to i8
  store i8 %conv131.i344.i.3.2, i8* %arrayidx128.i341.i.2, align 1
  %scevgep231.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %362, i64 0, i64 1, i64 0
  %371 = bitcast i8* %scevgep231.2 to [4 x [4 x i8]]*
  %arrayidx108.i324.i.3 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 3
  %372 = load i8, i8* %arrayidx108.i324.i.3, align 1
  %arrayidx110.i326.i.3 = getelementptr inbounds i8, i8* %arraydecay13.i, i64 3
  %373 = load i8, i8* %arrayidx110.i326.i.3, align 1
  %call111.i327.i.3 = call zeroext i8 @mult(i8 zeroext %372, i8 zeroext %373) #3
  %arrayidx113.i329.i.3 = getelementptr inbounds i8, i8* %arraydecay14.i, i64 3
  store i8 %call111.i327.i.3, i8* %arrayidx113.i329.i.3, align 1
  %arrayidx128.i341.i.3 = getelementptr inbounds i8, i8* %arraydecay14.i, i64 3
  %scevgep232.3638 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %371, i64 0, i64 0, i64 0
  %374 = load i8, i8* %scevgep232.3638, align 1
  %conv126.i339.i.3639 = zext i8 %374 to i32
  %375 = load i8, i8* %arrayidx128.i341.i.3, align 1
  %conv129.i342.i.3640 = zext i8 %375 to i32
  %xor130.i343.i.3641 = xor i32 %conv129.i342.i.3640, %conv126.i339.i.3639
  %conv131.i344.i.3642 = trunc i32 %xor130.i343.i.3641 to i8
  store i8 %conv131.i344.i.3642, i8* %arrayidx128.i341.i.3, align 1
  %scevgep232.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %371, i64 0, i64 0, i64 1
  %376 = load i8, i8* %scevgep232.1.3, align 1
  %conv126.i339.i.1.3 = zext i8 %376 to i32
  %377 = load i8, i8* %arrayidx128.i341.i.3, align 1
  %conv129.i342.i.1.3 = zext i8 %377 to i32
  %xor130.i343.i.1.3 = xor i32 %conv129.i342.i.1.3, %conv126.i339.i.1.3
  %conv131.i344.i.1.3 = trunc i32 %xor130.i343.i.1.3 to i8
  store i8 %conv131.i344.i.1.3, i8* %arrayidx128.i341.i.3, align 1
  %scevgep232.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %371, i64 0, i64 0, i64 2
  %378 = load i8, i8* %scevgep232.2.3, align 1
  %conv126.i339.i.2.3 = zext i8 %378 to i32
  %379 = load i8, i8* %arrayidx128.i341.i.3, align 1
  %conv129.i342.i.2.3 = zext i8 %379 to i32
  %xor130.i343.i.2.3 = xor i32 %conv129.i342.i.2.3, %conv126.i339.i.2.3
  %conv131.i344.i.2.3 = trunc i32 %xor130.i343.i.2.3 to i8
  store i8 %conv131.i344.i.2.3, i8* %arrayidx128.i341.i.3, align 1
  %call139.i350.i = call zeroext i8 @mult(i8 zeroext %call.i197.i, i8 zeroext %call1.i198.i) #3
  %conv140.i351.i = zext i8 %call139.i350.i to i32
  %scevgep222 = getelementptr [4 x i8], [4 x i8]* %v.i, i64 0, i64 0
  %380 = load i8, i8* %scevgep222, align 1
  %scevgep222.1 = getelementptr [4 x i8], [4 x i8]* %v.i, i64 0, i64 1
  %381 = load i8, i8* %scevgep222.1, align 1
  %conv.i.i172.i358.i.1 = zext i8 %381 to i32
  %conv1.i.i173.i359.i.1 = zext i8 %380 to i32
  %xor.i.i174.i360.i.1 = xor i32 %conv1.i.i173.i359.i.1, %conv.i.i172.i358.i.1
  %conv2.i.i175.i361.i.1 = trunc i32 %xor.i.i174.i360.i.1 to i8
  %scevgep222.2 = getelementptr [4 x i8], [4 x i8]* %v.i, i64 0, i64 2
  %382 = load i8, i8* %scevgep222.2, align 1
  %conv.i.i172.i358.i.2 = zext i8 %382 to i32
  %conv1.i.i173.i359.i.2 = zext i8 %conv2.i.i175.i361.i.1 to i32
  %xor.i.i174.i360.i.2 = xor i32 %conv1.i.i173.i359.i.2, %conv.i.i172.i358.i.2
  %conv2.i.i175.i361.i.2 = trunc i32 %xor.i.i174.i360.i.2 to i8
  %scevgep222.3 = getelementptr [4 x i8], [4 x i8]* %v.i, i64 0, i64 3
  %383 = load i8, i8* %scevgep222.3, align 1
  %conv.i.i172.i358.i.3 = zext i8 %383 to i32
  %conv1.i.i173.i359.i.3 = zext i8 %conv2.i.i175.i361.i.2 to i32
  %xor.i.i174.i360.i.3 = xor i32 %conv1.i.i173.i359.i.3, %conv.i.i172.i358.i.3
  %conv2.i.i175.i361.i.3 = trunc i32 %xor.i.i174.i360.i.3 to i8
  %conv142.i364.i = zext i8 %conv2.i.i175.i361.i.3 to i32
  %cmp143.i365.i = icmp eq i32 %conv140.i351.i, %conv142.i364.i
  call void @assert(i1 zeroext %cmp143.i365.i) #3
  %scevgep217 = getelementptr [4 x i8], [4 x i8]* %v.i, i64 0, i64 0
  %384 = load i8, i8* %scevgep217, align 1
  %call.i.i.i879 = call zeroext i8 @mult(i8 zeroext %384, i8 zeroext %384) #3
  %call.i3.i.i880 = call zeroext i8 @mult(i8 zeroext %call.i.i.i879, i8 zeroext %call.i.i.i879) #3
  %call.i.i5.i881 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i880, i8 zeroext %call.i3.i.i880) #3
  %call.i3.i6.i882 = call zeroext i8 @mult(i8 zeroext %call.i.i5.i881, i8 zeroext %call.i.i5.i881) #3
  %scevgep218 = getelementptr [4 x i8], [4 x i8]* %v16.i, i64 0, i64 0
  store i8 %call.i3.i6.i882, i8* %scevgep218, align 1
  %scevgep217.1 = getelementptr [4 x i8], [4 x i8]* %v.i, i64 0, i64 1
  %385 = load i8, i8* %scevgep217.1, align 1
  %call.i.i.i875 = call zeroext i8 @mult(i8 zeroext %385, i8 zeroext %385) #3
  %call.i3.i.i876 = call zeroext i8 @mult(i8 zeroext %call.i.i.i875, i8 zeroext %call.i.i.i875) #3
  %call.i.i5.i877 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i876, i8 zeroext %call.i3.i.i876) #3
  %call.i3.i6.i878 = call zeroext i8 @mult(i8 zeroext %call.i.i5.i877, i8 zeroext %call.i.i5.i877) #3
  %scevgep218.1 = getelementptr [4 x i8], [4 x i8]* %v16.i, i64 0, i64 1
  store i8 %call.i3.i6.i878, i8* %scevgep218.1, align 1
  %scevgep217.2 = getelementptr [4 x i8], [4 x i8]* %v.i, i64 0, i64 2
  %386 = load i8, i8* %scevgep217.2, align 1
  %call.i.i.i871 = call zeroext i8 @mult(i8 zeroext %386, i8 zeroext %386) #3
  %call.i3.i.i872 = call zeroext i8 @mult(i8 zeroext %call.i.i.i871, i8 zeroext %call.i.i.i871) #3
  %call.i.i5.i873 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i872, i8 zeroext %call.i3.i.i872) #3
  %call.i3.i6.i874 = call zeroext i8 @mult(i8 zeroext %call.i.i5.i873, i8 zeroext %call.i.i5.i873) #3
  %scevgep218.2 = getelementptr [4 x i8], [4 x i8]* %v16.i, i64 0, i64 2
  store i8 %call.i3.i6.i874, i8* %scevgep218.2, align 1
  %scevgep217.3 = getelementptr [4 x i8], [4 x i8]* %v.i, i64 0, i64 3
  %387 = load i8, i8* %scevgep217.3, align 1
  %call.i.i.i = call zeroext i8 @mult(i8 zeroext %387, i8 zeroext %387) #3
  %call.i3.i.i = call zeroext i8 @mult(i8 zeroext %call.i.i.i, i8 zeroext %call.i.i.i) #3
  %call.i.i5.i = call zeroext i8 @mult(i8 zeroext %call.i3.i.i, i8 zeroext %call.i3.i.i) #3
  %call.i3.i6.i = call zeroext i8 @mult(i8 zeroext %call.i.i5.i, i8 zeroext %call.i.i5.i) #3
  %scevgep218.3 = getelementptr [4 x i8], [4 x i8]* %v16.i, i64 0, i64 3
  store i8 %call.i3.i6.i, i8* %scevgep218.3, align 1
  %arraydecay17.i = getelementptr inbounds [4 x i8], [4 x i8]* %v16.i, i64 0, i64 0
  %arraydecay18.i = getelementptr inbounds [4 x i8], [4 x i8]* %wr.i, i64 0, i64 0
  %arraydecay19.i = getelementptr inbounds [4 x i8], [4 x i8]* %m.i, i64 0, i64 0
  %call.i413.i = call zeroext i8 (...) @rand() #3
  %call1.i414.i = call zeroext i8 (...) @rand() #3
  %conv.i415.i = zext i8 %call.i413.i to i32
  %scevgep213 = getelementptr [4 x i8], [4 x i8]* %v16.i, i64 0, i64 0
  %388 = load i8, i8* %scevgep213, align 1
  %scevgep213.1 = getelementptr [4 x i8], [4 x i8]* %v16.i, i64 0, i64 1
  %389 = load i8, i8* %scevgep213.1, align 1
  %conv.i.i.i421.i.1 = zext i8 %389 to i32
  %conv1.i.i.i422.i.1 = zext i8 %388 to i32
  %xor.i.i.i423.i.1 = xor i32 %conv1.i.i.i422.i.1, %conv.i.i.i421.i.1
  %conv2.i.i.i424.i.1 = trunc i32 %xor.i.i.i423.i.1 to i8
  %scevgep213.2 = getelementptr [4 x i8], [4 x i8]* %v16.i, i64 0, i64 2
  %390 = load i8, i8* %scevgep213.2, align 1
  %conv.i.i.i421.i.2 = zext i8 %390 to i32
  %conv1.i.i.i422.i.2 = zext i8 %conv2.i.i.i424.i.1 to i32
  %xor.i.i.i423.i.2 = xor i32 %conv1.i.i.i422.i.2, %conv.i.i.i421.i.2
  %conv2.i.i.i424.i.2 = trunc i32 %xor.i.i.i423.i.2 to i8
  %scevgep213.3 = getelementptr [4 x i8], [4 x i8]* %v16.i, i64 0, i64 3
  %391 = load i8, i8* %scevgep213.3, align 1
  %conv.i.i.i421.i.3 = zext i8 %391 to i32
  %conv1.i.i.i422.i.3 = zext i8 %conv2.i.i.i424.i.2 to i32
  %xor.i.i.i423.i.3 = xor i32 %conv1.i.i.i422.i.3, %conv.i.i.i421.i.3
  %conv2.i.i.i424.i.3 = trunc i32 %xor.i.i.i423.i.3 to i8
  %conv3.i427.i = zext i8 %conv2.i.i.i424.i.3 to i32
  %cmp.i428.i = icmp eq i32 %conv.i415.i, %conv3.i427.i
  call void @assume(i1 zeroext %cmp.i428.i) #3
  %conv5.i429.i = zext i8 %call1.i414.i to i32
  %scevgep209 = getelementptr [4 x i8], [4 x i8]* %wr.i, i64 0, i64 0
  %392 = load i8, i8* %scevgep209, align 1
  %scevgep209.1 = getelementptr [4 x i8], [4 x i8]* %wr.i, i64 0, i64 1
  %393 = load i8, i8* %scevgep209.1, align 1
  %conv.i.i155.i436.i.1 = zext i8 %393 to i32
  %conv1.i.i156.i437.i.1 = zext i8 %392 to i32
  %xor.i.i157.i438.i.1 = xor i32 %conv1.i.i156.i437.i.1, %conv.i.i155.i436.i.1
  %conv2.i.i158.i439.i.1 = trunc i32 %xor.i.i157.i438.i.1 to i8
  %scevgep209.2 = getelementptr [4 x i8], [4 x i8]* %wr.i, i64 0, i64 2
  %394 = load i8, i8* %scevgep209.2, align 1
  %conv.i.i155.i436.i.2 = zext i8 %394 to i32
  %conv1.i.i156.i437.i.2 = zext i8 %conv2.i.i158.i439.i.1 to i32
  %xor.i.i157.i438.i.2 = xor i32 %conv1.i.i156.i437.i.2, %conv.i.i155.i436.i.2
  %conv2.i.i158.i439.i.2 = trunc i32 %xor.i.i157.i438.i.2 to i8
  %scevgep209.3 = getelementptr [4 x i8], [4 x i8]* %wr.i, i64 0, i64 3
  %395 = load i8, i8* %scevgep209.3, align 1
  %conv.i.i155.i436.i.3 = zext i8 %395 to i32
  %conv1.i.i156.i437.i.3 = zext i8 %conv2.i.i158.i439.i.2 to i32
  %xor.i.i157.i438.i.3 = xor i32 %conv1.i.i156.i437.i.3, %conv.i.i155.i436.i.3
  %conv2.i.i158.i439.i.3 = trunc i32 %xor.i.i157.i438.i.3 to i8
  %conv7.i442.i = zext i8 %conv2.i.i158.i439.i.3 to i32
  %cmp8.i443.i = icmp eq i32 %conv5.i429.i, %conv7.i442.i
  call void @assume(i1 zeroext %cmp8.i443.i) #3
  %call16.i451.i = call zeroext i8 (...) @rand() #3
  %scevgep199 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  store i8 %call16.i451.i, i8* %scevgep199, align 1
  %scevgep200 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %396 = load i8, i8* %scevgep200, align 1
  %scevgep201 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  store i8 %396, i8* %scevgep201, align 1
  %call16.i451.i.1840 = call zeroext i8 (...) @rand() #3
  %scevgep199.1841 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  store i8 %call16.i451.i.1840, i8* %scevgep199.1841, align 1
  %scevgep200.1842 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %397 = load i8, i8* %scevgep200.1842, align 1
  %scevgep201.1843 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 2, i64 0
  store i8 %397, i8* %scevgep201.1843, align 1
  %call16.i451.i.2845 = call zeroext i8 (...) @rand() #3
  %scevgep199.2846 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  store i8 %call16.i451.i.2845, i8* %scevgep199.2846, align 1
  %scevgep200.2847 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  %398 = load i8, i8* %scevgep200.2847, align 1
  %scevgep201.2848 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 3, i64 0
  store i8 %398, i8* %scevgep201.2848, align 1
  %scevgep196 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 1, i64 1
  %399 = bitcast i8* %scevgep196 to [4 x [4 x i8]]*
  %call16.i451.i.1 = call zeroext i8 (...) @rand() #3
  %scevgep199.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %399, i64 0, i64 0, i64 1
  store i8 %call16.i451.i.1, i8* %scevgep199.1, align 1
  %scevgep200.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %399, i64 0, i64 0, i64 1
  %400 = load i8, i8* %scevgep200.1, align 1
  %scevgep201.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %399, i64 0, i64 1, i64 0
  store i8 %400, i8* %scevgep201.1, align 1
  %call16.i451.i.1.1 = call zeroext i8 (...) @rand() #3
  %scevgep199.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %399, i64 0, i64 0, i64 2
  store i8 %call16.i451.i.1.1, i8* %scevgep199.1.1, align 1
  %scevgep200.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %399, i64 0, i64 0, i64 2
  %401 = load i8, i8* %scevgep200.1.1, align 1
  %scevgep201.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %399, i64 0, i64 2, i64 0
  store i8 %401, i8* %scevgep201.1.1, align 1
  %scevgep196.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %399, i64 0, i64 1, i64 1
  %402 = bitcast i8* %scevgep196.1 to [4 x [4 x i8]]*
  %call16.i451.i.2 = call zeroext i8 (...) @rand() #3
  %scevgep199.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %402, i64 0, i64 0, i64 1
  store i8 %call16.i451.i.2, i8* %scevgep199.2, align 1
  %scevgep200.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %402, i64 0, i64 0, i64 1
  %403 = load i8, i8* %scevgep200.2, align 1
  %scevgep201.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %402, i64 0, i64 1, i64 0
  store i8 %403, i8* %scevgep201.2, align 1
  %scevgep172.1 = getelementptr [4 x i8], [4 x i8]* %wr.i, i64 0, i64 1
  %404 = load i8, i8* %scevgep172.1, align 1
  %conv44.i478.i.1 = zext i8 %404 to i32
  %scevgep175.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %405 = load i8, i8* %scevgep175.1, align 1
  %conv49.i483.i.1 = zext i8 %405 to i32
  %xor.i484.i.1 = xor i32 %conv44.i478.i.1, %conv49.i483.i.1
  %conv50.i485.i.1 = trunc i32 %xor.i484.i.1 to i8
  %scevgep179.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  store i8 %conv50.i485.i.1, i8* %scevgep179.1, align 1
  %406 = load i8, i8* %arraydecay17.i, align 1
  %conv57.i492.i.1 = zext i8 %406 to i32
  %xor58.i493.i.1 = xor i32 %conv57.i492.i.1, 1
  %conv59.i494.i.1 = trunc i32 %xor58.i493.i.1 to i8
  %scevgep176.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %407 = load i8, i8* %scevgep176.1, align 1
  %call64.i499.i.1 = call zeroext i8 @mult(i8 zeroext %conv59.i494.i.1, i8 zeroext %407) #3
  %scevgep183.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  store i8 %call64.i499.i.1, i8* %scevgep183.1, align 1
  %408 = load i8, i8* %arraydecay17.i, align 1
  %scevgep180.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  %409 = load i8, i8* %scevgep180.1, align 1
  %call75.i510.i.1 = call zeroext i8 @mult(i8 zeroext %408, i8 zeroext %409) #3
  %scevgep187.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  store i8 %call75.i510.i.1, i8* %scevgep187.1, align 1
  %scevgep184.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  %410 = load i8, i8* %scevgep184.1, align 1
  %conv84.i519.i.1 = zext i8 %410 to i32
  %scevgep188.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  %411 = load i8, i8* %scevgep188.1, align 1
  %conv89.i524.i.1 = zext i8 %411 to i32
  %xor90.i525.i.1 = xor i32 %conv84.i519.i.1, %conv89.i524.i.1
  %conv91.i526.i.1 = trunc i32 %xor90.i525.i.1 to i8
  %scevgep191.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  store i8 %conv91.i526.i.1, i8* %scevgep191.1, align 1
  %scevgep172.2 = getelementptr [4 x i8], [4 x i8]* %wr.i, i64 0, i64 2
  %412 = load i8, i8* %scevgep172.2, align 1
  %conv44.i478.i.2 = zext i8 %412 to i32
  %scevgep175.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %413 = load i8, i8* %scevgep175.2, align 1
  %conv49.i483.i.2 = zext i8 %413 to i32
  %xor.i484.i.2 = xor i32 %conv44.i478.i.2, %conv49.i483.i.2
  %conv50.i485.i.2 = trunc i32 %xor.i484.i.2 to i8
  %scevgep179.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 2
  store i8 %conv50.i485.i.2, i8* %scevgep179.2, align 1
  %414 = load i8, i8* %arraydecay17.i, align 1
  %conv57.i492.i.2 = zext i8 %414 to i32
  %xor58.i493.i.2 = xor i32 %conv57.i492.i.2, 1
  %conv59.i494.i.2 = trunc i32 %xor58.i493.i.2 to i8
  %scevgep176.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %415 = load i8, i8* %scevgep176.2, align 1
  %call64.i499.i.2 = call zeroext i8 @mult(i8 zeroext %conv59.i494.i.2, i8 zeroext %415) #3
  %scevgep183.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 2
  store i8 %call64.i499.i.2, i8* %scevgep183.2, align 1
  %416 = load i8, i8* %arraydecay17.i, align 1
  %scevgep180.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 2
  %417 = load i8, i8* %scevgep180.2, align 1
  %call75.i510.i.2 = call zeroext i8 @mult(i8 zeroext %416, i8 zeroext %417) #3
  %scevgep187.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 2
  store i8 %call75.i510.i.2, i8* %scevgep187.2, align 1
  %scevgep184.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 2
  %418 = load i8, i8* %scevgep184.2, align 1
  %conv84.i519.i.2 = zext i8 %418 to i32
  %scevgep188.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 2
  %419 = load i8, i8* %scevgep188.2, align 1
  %conv89.i524.i.2 = zext i8 %419 to i32
  %xor90.i525.i.2 = xor i32 %conv84.i519.i.2, %conv89.i524.i.2
  %conv91.i526.i.2 = trunc i32 %xor90.i525.i.2 to i8
  %scevgep191.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 2
  store i8 %conv91.i526.i.2, i8* %scevgep191.2, align 1
  %scevgep172.3 = getelementptr [4 x i8], [4 x i8]* %wr.i, i64 0, i64 3
  %420 = load i8, i8* %scevgep172.3, align 1
  %conv44.i478.i.3 = zext i8 %420 to i32
  %scevgep175.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  %421 = load i8, i8* %scevgep175.3, align 1
  %conv49.i483.i.3 = zext i8 %421 to i32
  %xor.i484.i.3 = xor i32 %conv44.i478.i.3, %conv49.i483.i.3
  %conv50.i485.i.3 = trunc i32 %xor.i484.i.3 to i8
  %scevgep179.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 3
  store i8 %conv50.i485.i.3, i8* %scevgep179.3, align 1
  %422 = load i8, i8* %arraydecay17.i, align 1
  %conv57.i492.i.3 = zext i8 %422 to i32
  %xor58.i493.i.3 = xor i32 %conv57.i492.i.3, 1
  %conv59.i494.i.3 = trunc i32 %xor58.i493.i.3 to i8
  %scevgep176.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  %423 = load i8, i8* %scevgep176.3, align 1
  %call64.i499.i.3 = call zeroext i8 @mult(i8 zeroext %conv59.i494.i.3, i8 zeroext %423) #3
  %scevgep183.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 3
  store i8 %call64.i499.i.3, i8* %scevgep183.3, align 1
  %424 = load i8, i8* %arraydecay17.i, align 1
  %scevgep180.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 3
  %425 = load i8, i8* %scevgep180.3, align 1
  %call75.i510.i.3 = call zeroext i8 @mult(i8 zeroext %424, i8 zeroext %425) #3
  %scevgep187.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 3
  store i8 %call75.i510.i.3, i8* %scevgep187.3, align 1
  %scevgep184.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 3
  %426 = load i8, i8* %scevgep184.3, align 1
  %conv84.i519.i.3 = zext i8 %426 to i32
  %scevgep188.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 3
  %427 = load i8, i8* %scevgep188.3, align 1
  %conv89.i524.i.3 = zext i8 %427 to i32
  %xor90.i525.i.3 = xor i32 %conv84.i519.i.3, %conv89.i524.i.3
  %conv91.i526.i.3 = trunc i32 %xor90.i525.i.3 to i8
  %scevgep191.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 3
  store i8 %conv91.i526.i.3, i8* %scevgep191.3, align 1
  %scevgep174 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %428 = bitcast i8* %scevgep174 to [4 x [4 x i8]]*
  %scevgep178 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 1, i64 0
  %429 = bitcast i8* %scevgep178 to [4 x [4 x i8]]*
  %scevgep182 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 1, i64 0
  %430 = bitcast i8* %scevgep182 to [4 x [4 x i8]]*
  %scevgep186 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 1, i64 0
  %431 = bitcast i8* %scevgep186 to [4 x [4 x i8]]*
  %scevgep190 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %432 = bitcast i8* %scevgep190 to [4 x [4 x i8]]*
  %arrayidx56.i491.i.1 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 1
  %arrayidx70.i505.i.1 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 1
  %scevgep172.1539 = getelementptr [4 x i8], [4 x i8]* %wr.i, i64 0, i64 0
  %433 = load i8, i8* %scevgep172.1539, align 1
  %conv44.i478.i.1540 = zext i8 %433 to i32
  %scevgep175.1541 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %428, i64 0, i64 0, i64 0
  %434 = load i8, i8* %scevgep175.1541, align 1
  %conv49.i483.i.1542 = zext i8 %434 to i32
  %xor.i484.i.1543 = xor i32 %conv44.i478.i.1540, %conv49.i483.i.1542
  %conv50.i485.i.1544 = trunc i32 %xor.i484.i.1543 to i8
  %scevgep179.1545 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %429, i64 0, i64 0, i64 0
  store i8 %conv50.i485.i.1544, i8* %scevgep179.1545, align 1
  %435 = load i8, i8* %arrayidx56.i491.i.1, align 1
  %conv57.i492.i.1546 = zext i8 %435 to i32
  %xor58.i493.i.1547 = xor i32 %conv57.i492.i.1546, 1
  %conv59.i494.i.1548 = trunc i32 %xor58.i493.i.1547 to i8
  %scevgep176.1549 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %428, i64 0, i64 0, i64 0
  %436 = load i8, i8* %scevgep176.1549, align 1
  %call64.i499.i.1550 = call zeroext i8 @mult(i8 zeroext %conv59.i494.i.1548, i8 zeroext %436) #3
  %scevgep183.1551 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %430, i64 0, i64 0, i64 0
  store i8 %call64.i499.i.1550, i8* %scevgep183.1551, align 1
  %437 = load i8, i8* %arrayidx70.i505.i.1, align 1
  %scevgep180.1552 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %429, i64 0, i64 0, i64 0
  %438 = load i8, i8* %scevgep180.1552, align 1
  %call75.i510.i.1553 = call zeroext i8 @mult(i8 zeroext %437, i8 zeroext %438) #3
  %scevgep187.1554 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %431, i64 0, i64 0, i64 0
  store i8 %call75.i510.i.1553, i8* %scevgep187.1554, align 1
  %scevgep184.1555 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %430, i64 0, i64 0, i64 0
  %439 = load i8, i8* %scevgep184.1555, align 1
  %conv84.i519.i.1556 = zext i8 %439 to i32
  %scevgep188.1557 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %431, i64 0, i64 0, i64 0
  %440 = load i8, i8* %scevgep188.1557, align 1
  %conv89.i524.i.1558 = zext i8 %440 to i32
  %xor90.i525.i.1559 = xor i32 %conv84.i519.i.1556, %conv89.i524.i.1558
  %conv91.i526.i.1560 = trunc i32 %xor90.i525.i.1559 to i8
  %scevgep191.1561 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %432, i64 0, i64 0, i64 0
  store i8 %conv91.i526.i.1560, i8* %scevgep191.1561, align 1
  %scevgep172.2.1 = getelementptr [4 x i8], [4 x i8]* %wr.i, i64 0, i64 2
  %441 = load i8, i8* %scevgep172.2.1, align 1
  %conv44.i478.i.2.1 = zext i8 %441 to i32
  %scevgep175.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %428, i64 0, i64 0, i64 2
  %442 = load i8, i8* %scevgep175.2.1, align 1
  %conv49.i483.i.2.1 = zext i8 %442 to i32
  %xor.i484.i.2.1 = xor i32 %conv44.i478.i.2.1, %conv49.i483.i.2.1
  %conv50.i485.i.2.1 = trunc i32 %xor.i484.i.2.1 to i8
  %scevgep179.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %429, i64 0, i64 0, i64 2
  store i8 %conv50.i485.i.2.1, i8* %scevgep179.2.1, align 1
  %443 = load i8, i8* %arrayidx56.i491.i.1, align 1
  %conv57.i492.i.2.1 = zext i8 %443 to i32
  %xor58.i493.i.2.1 = xor i32 %conv57.i492.i.2.1, 1
  %conv59.i494.i.2.1 = trunc i32 %xor58.i493.i.2.1 to i8
  %scevgep176.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %428, i64 0, i64 0, i64 2
  %444 = load i8, i8* %scevgep176.2.1, align 1
  %call64.i499.i.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i494.i.2.1, i8 zeroext %444) #3
  %scevgep183.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %430, i64 0, i64 0, i64 2
  store i8 %call64.i499.i.2.1, i8* %scevgep183.2.1, align 1
  %445 = load i8, i8* %arrayidx70.i505.i.1, align 1
  %scevgep180.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %429, i64 0, i64 0, i64 2
  %446 = load i8, i8* %scevgep180.2.1, align 1
  %call75.i510.i.2.1 = call zeroext i8 @mult(i8 zeroext %445, i8 zeroext %446) #3
  %scevgep187.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %431, i64 0, i64 0, i64 2
  store i8 %call75.i510.i.2.1, i8* %scevgep187.2.1, align 1
  %scevgep184.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %430, i64 0, i64 0, i64 2
  %447 = load i8, i8* %scevgep184.2.1, align 1
  %conv84.i519.i.2.1 = zext i8 %447 to i32
  %scevgep188.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %431, i64 0, i64 0, i64 2
  %448 = load i8, i8* %scevgep188.2.1, align 1
  %conv89.i524.i.2.1 = zext i8 %448 to i32
  %xor90.i525.i.2.1 = xor i32 %conv84.i519.i.2.1, %conv89.i524.i.2.1
  %conv91.i526.i.2.1 = trunc i32 %xor90.i525.i.2.1 to i8
  %scevgep191.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %432, i64 0, i64 0, i64 2
  store i8 %conv91.i526.i.2.1, i8* %scevgep191.2.1, align 1
  %scevgep172.3.1 = getelementptr [4 x i8], [4 x i8]* %wr.i, i64 0, i64 3
  %449 = load i8, i8* %scevgep172.3.1, align 1
  %conv44.i478.i.3.1 = zext i8 %449 to i32
  %scevgep175.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %428, i64 0, i64 0, i64 3
  %450 = load i8, i8* %scevgep175.3.1, align 1
  %conv49.i483.i.3.1 = zext i8 %450 to i32
  %xor.i484.i.3.1 = xor i32 %conv44.i478.i.3.1, %conv49.i483.i.3.1
  %conv50.i485.i.3.1 = trunc i32 %xor.i484.i.3.1 to i8
  %scevgep179.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %429, i64 0, i64 0, i64 3
  store i8 %conv50.i485.i.3.1, i8* %scevgep179.3.1, align 1
  %451 = load i8, i8* %arrayidx56.i491.i.1, align 1
  %conv57.i492.i.3.1 = zext i8 %451 to i32
  %xor58.i493.i.3.1 = xor i32 %conv57.i492.i.3.1, 1
  %conv59.i494.i.3.1 = trunc i32 %xor58.i493.i.3.1 to i8
  %scevgep176.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %428, i64 0, i64 0, i64 3
  %452 = load i8, i8* %scevgep176.3.1, align 1
  %call64.i499.i.3.1 = call zeroext i8 @mult(i8 zeroext %conv59.i494.i.3.1, i8 zeroext %452) #3
  %scevgep183.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %430, i64 0, i64 0, i64 3
  store i8 %call64.i499.i.3.1, i8* %scevgep183.3.1, align 1
  %453 = load i8, i8* %arrayidx70.i505.i.1, align 1
  %scevgep180.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %429, i64 0, i64 0, i64 3
  %454 = load i8, i8* %scevgep180.3.1, align 1
  %call75.i510.i.3.1 = call zeroext i8 @mult(i8 zeroext %453, i8 zeroext %454) #3
  %scevgep187.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %431, i64 0, i64 0, i64 3
  store i8 %call75.i510.i.3.1, i8* %scevgep187.3.1, align 1
  %scevgep184.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %430, i64 0, i64 0, i64 3
  %455 = load i8, i8* %scevgep184.3.1, align 1
  %conv84.i519.i.3.1 = zext i8 %455 to i32
  %scevgep188.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %431, i64 0, i64 0, i64 3
  %456 = load i8, i8* %scevgep188.3.1, align 1
  %conv89.i524.i.3.1 = zext i8 %456 to i32
  %xor90.i525.i.3.1 = xor i32 %conv84.i519.i.3.1, %conv89.i524.i.3.1
  %conv91.i526.i.3.1 = trunc i32 %xor90.i525.i.3.1 to i8
  %scevgep191.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %432, i64 0, i64 0, i64 3
  store i8 %conv91.i526.i.3.1, i8* %scevgep191.3.1, align 1
  %scevgep174.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %428, i64 0, i64 1, i64 0
  %457 = bitcast i8* %scevgep174.1 to [4 x [4 x i8]]*
  %scevgep178.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %429, i64 0, i64 1, i64 0
  %458 = bitcast i8* %scevgep178.1 to [4 x [4 x i8]]*
  %scevgep182.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %430, i64 0, i64 1, i64 0
  %459 = bitcast i8* %scevgep182.1 to [4 x [4 x i8]]*
  %scevgep186.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %431, i64 0, i64 1, i64 0
  %460 = bitcast i8* %scevgep186.1 to [4 x [4 x i8]]*
  %scevgep190.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %432, i64 0, i64 1, i64 0
  %461 = bitcast i8* %scevgep190.1 to [4 x [4 x i8]]*
  %arrayidx56.i491.i.2 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 2
  %arrayidx70.i505.i.2 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 2
  %scevgep172.2566 = getelementptr [4 x i8], [4 x i8]* %wr.i, i64 0, i64 0
  %462 = load i8, i8* %scevgep172.2566, align 1
  %conv44.i478.i.2567 = zext i8 %462 to i32
  %scevgep175.2568 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %457, i64 0, i64 0, i64 0
  %463 = load i8, i8* %scevgep175.2568, align 1
  %conv49.i483.i.2569 = zext i8 %463 to i32
  %xor.i484.i.2570 = xor i32 %conv44.i478.i.2567, %conv49.i483.i.2569
  %conv50.i485.i.2571 = trunc i32 %xor.i484.i.2570 to i8
  %scevgep179.2572 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %458, i64 0, i64 0, i64 0
  store i8 %conv50.i485.i.2571, i8* %scevgep179.2572, align 1
  %464 = load i8, i8* %arrayidx56.i491.i.2, align 1
  %conv57.i492.i.2573 = zext i8 %464 to i32
  %xor58.i493.i.2574 = xor i32 %conv57.i492.i.2573, 1
  %conv59.i494.i.2575 = trunc i32 %xor58.i493.i.2574 to i8
  %scevgep176.2576 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %457, i64 0, i64 0, i64 0
  %465 = load i8, i8* %scevgep176.2576, align 1
  %call64.i499.i.2577 = call zeroext i8 @mult(i8 zeroext %conv59.i494.i.2575, i8 zeroext %465) #3
  %scevgep183.2578 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %459, i64 0, i64 0, i64 0
  store i8 %call64.i499.i.2577, i8* %scevgep183.2578, align 1
  %466 = load i8, i8* %arrayidx70.i505.i.2, align 1
  %scevgep180.2579 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %458, i64 0, i64 0, i64 0
  %467 = load i8, i8* %scevgep180.2579, align 1
  %call75.i510.i.2580 = call zeroext i8 @mult(i8 zeroext %466, i8 zeroext %467) #3
  %scevgep187.2581 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %460, i64 0, i64 0, i64 0
  store i8 %call75.i510.i.2580, i8* %scevgep187.2581, align 1
  %scevgep184.2582 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %459, i64 0, i64 0, i64 0
  %468 = load i8, i8* %scevgep184.2582, align 1
  %conv84.i519.i.2583 = zext i8 %468 to i32
  %scevgep188.2584 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %460, i64 0, i64 0, i64 0
  %469 = load i8, i8* %scevgep188.2584, align 1
  %conv89.i524.i.2585 = zext i8 %469 to i32
  %xor90.i525.i.2586 = xor i32 %conv84.i519.i.2583, %conv89.i524.i.2585
  %conv91.i526.i.2587 = trunc i32 %xor90.i525.i.2586 to i8
  %scevgep191.2588 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %461, i64 0, i64 0, i64 0
  store i8 %conv91.i526.i.2587, i8* %scevgep191.2588, align 1
  %scevgep172.1.2 = getelementptr [4 x i8], [4 x i8]* %wr.i, i64 0, i64 1
  %470 = load i8, i8* %scevgep172.1.2, align 1
  %conv44.i478.i.1.2 = zext i8 %470 to i32
  %scevgep175.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %457, i64 0, i64 0, i64 1
  %471 = load i8, i8* %scevgep175.1.2, align 1
  %conv49.i483.i.1.2 = zext i8 %471 to i32
  %xor.i484.i.1.2 = xor i32 %conv44.i478.i.1.2, %conv49.i483.i.1.2
  %conv50.i485.i.1.2 = trunc i32 %xor.i484.i.1.2 to i8
  %scevgep179.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %458, i64 0, i64 0, i64 1
  store i8 %conv50.i485.i.1.2, i8* %scevgep179.1.2, align 1
  %472 = load i8, i8* %arrayidx56.i491.i.2, align 1
  %conv57.i492.i.1.2 = zext i8 %472 to i32
  %xor58.i493.i.1.2 = xor i32 %conv57.i492.i.1.2, 1
  %conv59.i494.i.1.2 = trunc i32 %xor58.i493.i.1.2 to i8
  %scevgep176.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %457, i64 0, i64 0, i64 1
  %473 = load i8, i8* %scevgep176.1.2, align 1
  %call64.i499.i.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i494.i.1.2, i8 zeroext %473) #3
  %scevgep183.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %459, i64 0, i64 0, i64 1
  store i8 %call64.i499.i.1.2, i8* %scevgep183.1.2, align 1
  %474 = load i8, i8* %arrayidx70.i505.i.2, align 1
  %scevgep180.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %458, i64 0, i64 0, i64 1
  %475 = load i8, i8* %scevgep180.1.2, align 1
  %call75.i510.i.1.2 = call zeroext i8 @mult(i8 zeroext %474, i8 zeroext %475) #3
  %scevgep187.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %460, i64 0, i64 0, i64 1
  store i8 %call75.i510.i.1.2, i8* %scevgep187.1.2, align 1
  %scevgep184.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %459, i64 0, i64 0, i64 1
  %476 = load i8, i8* %scevgep184.1.2, align 1
  %conv84.i519.i.1.2 = zext i8 %476 to i32
  %scevgep188.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %460, i64 0, i64 0, i64 1
  %477 = load i8, i8* %scevgep188.1.2, align 1
  %conv89.i524.i.1.2 = zext i8 %477 to i32
  %xor90.i525.i.1.2 = xor i32 %conv84.i519.i.1.2, %conv89.i524.i.1.2
  %conv91.i526.i.1.2 = trunc i32 %xor90.i525.i.1.2 to i8
  %scevgep191.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %461, i64 0, i64 0, i64 1
  store i8 %conv91.i526.i.1.2, i8* %scevgep191.1.2, align 1
  %scevgep172.3.2 = getelementptr [4 x i8], [4 x i8]* %wr.i, i64 0, i64 3
  %478 = load i8, i8* %scevgep172.3.2, align 1
  %conv44.i478.i.3.2 = zext i8 %478 to i32
  %scevgep175.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %457, i64 0, i64 0, i64 3
  %479 = load i8, i8* %scevgep175.3.2, align 1
  %conv49.i483.i.3.2 = zext i8 %479 to i32
  %xor.i484.i.3.2 = xor i32 %conv44.i478.i.3.2, %conv49.i483.i.3.2
  %conv50.i485.i.3.2 = trunc i32 %xor.i484.i.3.2 to i8
  %scevgep179.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %458, i64 0, i64 0, i64 3
  store i8 %conv50.i485.i.3.2, i8* %scevgep179.3.2, align 1
  %480 = load i8, i8* %arrayidx56.i491.i.2, align 1
  %conv57.i492.i.3.2 = zext i8 %480 to i32
  %xor58.i493.i.3.2 = xor i32 %conv57.i492.i.3.2, 1
  %conv59.i494.i.3.2 = trunc i32 %xor58.i493.i.3.2 to i8
  %scevgep176.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %457, i64 0, i64 0, i64 3
  %481 = load i8, i8* %scevgep176.3.2, align 1
  %call64.i499.i.3.2 = call zeroext i8 @mult(i8 zeroext %conv59.i494.i.3.2, i8 zeroext %481) #3
  %scevgep183.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %459, i64 0, i64 0, i64 3
  store i8 %call64.i499.i.3.2, i8* %scevgep183.3.2, align 1
  %482 = load i8, i8* %arrayidx70.i505.i.2, align 1
  %scevgep180.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %458, i64 0, i64 0, i64 3
  %483 = load i8, i8* %scevgep180.3.2, align 1
  %call75.i510.i.3.2 = call zeroext i8 @mult(i8 zeroext %482, i8 zeroext %483) #3
  %scevgep187.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %460, i64 0, i64 0, i64 3
  store i8 %call75.i510.i.3.2, i8* %scevgep187.3.2, align 1
  %scevgep184.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %459, i64 0, i64 0, i64 3
  %484 = load i8, i8* %scevgep184.3.2, align 1
  %conv84.i519.i.3.2 = zext i8 %484 to i32
  %scevgep188.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %460, i64 0, i64 0, i64 3
  %485 = load i8, i8* %scevgep188.3.2, align 1
  %conv89.i524.i.3.2 = zext i8 %485 to i32
  %xor90.i525.i.3.2 = xor i32 %conv84.i519.i.3.2, %conv89.i524.i.3.2
  %conv91.i526.i.3.2 = trunc i32 %xor90.i525.i.3.2 to i8
  %scevgep191.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %461, i64 0, i64 0, i64 3
  store i8 %conv91.i526.i.3.2, i8* %scevgep191.3.2, align 1
  %scevgep174.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %457, i64 0, i64 1, i64 0
  %486 = bitcast i8* %scevgep174.2 to [4 x [4 x i8]]*
  %scevgep178.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %458, i64 0, i64 1, i64 0
  %487 = bitcast i8* %scevgep178.2 to [4 x [4 x i8]]*
  %scevgep182.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %459, i64 0, i64 1, i64 0
  %488 = bitcast i8* %scevgep182.2 to [4 x [4 x i8]]*
  %scevgep186.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %460, i64 0, i64 1, i64 0
  %489 = bitcast i8* %scevgep186.2 to [4 x [4 x i8]]*
  %scevgep190.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %461, i64 0, i64 1, i64 0
  %490 = bitcast i8* %scevgep190.2 to [4 x [4 x i8]]*
  %arrayidx56.i491.i.3 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 3
  %arrayidx70.i505.i.3 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 3
  %scevgep172.3593 = getelementptr [4 x i8], [4 x i8]* %wr.i, i64 0, i64 0
  %491 = load i8, i8* %scevgep172.3593, align 1
  %conv44.i478.i.3594 = zext i8 %491 to i32
  %scevgep175.3595 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %486, i64 0, i64 0, i64 0
  %492 = load i8, i8* %scevgep175.3595, align 1
  %conv49.i483.i.3596 = zext i8 %492 to i32
  %xor.i484.i.3597 = xor i32 %conv44.i478.i.3594, %conv49.i483.i.3596
  %conv50.i485.i.3598 = trunc i32 %xor.i484.i.3597 to i8
  %scevgep179.3599 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %487, i64 0, i64 0, i64 0
  store i8 %conv50.i485.i.3598, i8* %scevgep179.3599, align 1
  %493 = load i8, i8* %arrayidx56.i491.i.3, align 1
  %conv57.i492.i.3600 = zext i8 %493 to i32
  %xor58.i493.i.3601 = xor i32 %conv57.i492.i.3600, 1
  %conv59.i494.i.3602 = trunc i32 %xor58.i493.i.3601 to i8
  %scevgep176.3603 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %486, i64 0, i64 0, i64 0
  %494 = load i8, i8* %scevgep176.3603, align 1
  %call64.i499.i.3604 = call zeroext i8 @mult(i8 zeroext %conv59.i494.i.3602, i8 zeroext %494) #3
  %scevgep183.3605 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %488, i64 0, i64 0, i64 0
  store i8 %call64.i499.i.3604, i8* %scevgep183.3605, align 1
  %495 = load i8, i8* %arrayidx70.i505.i.3, align 1
  %scevgep180.3606 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %487, i64 0, i64 0, i64 0
  %496 = load i8, i8* %scevgep180.3606, align 1
  %call75.i510.i.3607 = call zeroext i8 @mult(i8 zeroext %495, i8 zeroext %496) #3
  %scevgep187.3608 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %489, i64 0, i64 0, i64 0
  store i8 %call75.i510.i.3607, i8* %scevgep187.3608, align 1
  %scevgep184.3609 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %488, i64 0, i64 0, i64 0
  %497 = load i8, i8* %scevgep184.3609, align 1
  %conv84.i519.i.3610 = zext i8 %497 to i32
  %scevgep188.3611 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %489, i64 0, i64 0, i64 0
  %498 = load i8, i8* %scevgep188.3611, align 1
  %conv89.i524.i.3612 = zext i8 %498 to i32
  %xor90.i525.i.3613 = xor i32 %conv84.i519.i.3610, %conv89.i524.i.3612
  %conv91.i526.i.3614 = trunc i32 %xor90.i525.i.3613 to i8
  %scevgep191.3615 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %490, i64 0, i64 0, i64 0
  store i8 %conv91.i526.i.3614, i8* %scevgep191.3615, align 1
  %scevgep172.1.3 = getelementptr [4 x i8], [4 x i8]* %wr.i, i64 0, i64 1
  %499 = load i8, i8* %scevgep172.1.3, align 1
  %conv44.i478.i.1.3 = zext i8 %499 to i32
  %scevgep175.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %486, i64 0, i64 0, i64 1
  %500 = load i8, i8* %scevgep175.1.3, align 1
  %conv49.i483.i.1.3 = zext i8 %500 to i32
  %xor.i484.i.1.3 = xor i32 %conv44.i478.i.1.3, %conv49.i483.i.1.3
  %conv50.i485.i.1.3 = trunc i32 %xor.i484.i.1.3 to i8
  %scevgep179.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %487, i64 0, i64 0, i64 1
  store i8 %conv50.i485.i.1.3, i8* %scevgep179.1.3, align 1
  %501 = load i8, i8* %arrayidx56.i491.i.3, align 1
  %conv57.i492.i.1.3 = zext i8 %501 to i32
  %xor58.i493.i.1.3 = xor i32 %conv57.i492.i.1.3, 1
  %conv59.i494.i.1.3 = trunc i32 %xor58.i493.i.1.3 to i8
  %scevgep176.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %486, i64 0, i64 0, i64 1
  %502 = load i8, i8* %scevgep176.1.3, align 1
  %call64.i499.i.1.3 = call zeroext i8 @mult(i8 zeroext %conv59.i494.i.1.3, i8 zeroext %502) #3
  %scevgep183.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %488, i64 0, i64 0, i64 1
  store i8 %call64.i499.i.1.3, i8* %scevgep183.1.3, align 1
  %503 = load i8, i8* %arrayidx70.i505.i.3, align 1
  %scevgep180.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %487, i64 0, i64 0, i64 1
  %504 = load i8, i8* %scevgep180.1.3, align 1
  %call75.i510.i.1.3 = call zeroext i8 @mult(i8 zeroext %503, i8 zeroext %504) #3
  %scevgep187.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %489, i64 0, i64 0, i64 1
  store i8 %call75.i510.i.1.3, i8* %scevgep187.1.3, align 1
  %scevgep184.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %488, i64 0, i64 0, i64 1
  %505 = load i8, i8* %scevgep184.1.3, align 1
  %conv84.i519.i.1.3 = zext i8 %505 to i32
  %scevgep188.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %489, i64 0, i64 0, i64 1
  %506 = load i8, i8* %scevgep188.1.3, align 1
  %conv89.i524.i.1.3 = zext i8 %506 to i32
  %xor90.i525.i.1.3 = xor i32 %conv84.i519.i.1.3, %conv89.i524.i.1.3
  %conv91.i526.i.1.3 = trunc i32 %xor90.i525.i.1.3 to i8
  %scevgep191.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %490, i64 0, i64 0, i64 1
  store i8 %conv91.i526.i.1.3, i8* %scevgep191.1.3, align 1
  %scevgep172.2.3 = getelementptr [4 x i8], [4 x i8]* %wr.i, i64 0, i64 2
  %507 = load i8, i8* %scevgep172.2.3, align 1
  %conv44.i478.i.2.3 = zext i8 %507 to i32
  %scevgep175.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %486, i64 0, i64 0, i64 2
  %508 = load i8, i8* %scevgep175.2.3, align 1
  %conv49.i483.i.2.3 = zext i8 %508 to i32
  %xor.i484.i.2.3 = xor i32 %conv44.i478.i.2.3, %conv49.i483.i.2.3
  %conv50.i485.i.2.3 = trunc i32 %xor.i484.i.2.3 to i8
  %scevgep179.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %487, i64 0, i64 0, i64 2
  store i8 %conv50.i485.i.2.3, i8* %scevgep179.2.3, align 1
  %509 = load i8, i8* %arrayidx56.i491.i.3, align 1
  %conv57.i492.i.2.3 = zext i8 %509 to i32
  %xor58.i493.i.2.3 = xor i32 %conv57.i492.i.2.3, 1
  %conv59.i494.i.2.3 = trunc i32 %xor58.i493.i.2.3 to i8
  %scevgep176.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %486, i64 0, i64 0, i64 2
  %510 = load i8, i8* %scevgep176.2.3, align 1
  %call64.i499.i.2.3 = call zeroext i8 @mult(i8 zeroext %conv59.i494.i.2.3, i8 zeroext %510) #3
  %scevgep183.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %488, i64 0, i64 0, i64 2
  store i8 %call64.i499.i.2.3, i8* %scevgep183.2.3, align 1
  %511 = load i8, i8* %arrayidx70.i505.i.3, align 1
  %scevgep180.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %487, i64 0, i64 0, i64 2
  %512 = load i8, i8* %scevgep180.2.3, align 1
  %call75.i510.i.2.3 = call zeroext i8 @mult(i8 zeroext %511, i8 zeroext %512) #3
  %scevgep187.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %489, i64 0, i64 0, i64 2
  store i8 %call75.i510.i.2.3, i8* %scevgep187.2.3, align 1
  %scevgep184.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %488, i64 0, i64 0, i64 2
  %513 = load i8, i8* %scevgep184.2.3, align 1
  %conv84.i519.i.2.3 = zext i8 %513 to i32
  %scevgep188.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %489, i64 0, i64 0, i64 2
  %514 = load i8, i8* %scevgep188.2.3, align 1
  %conv89.i524.i.2.3 = zext i8 %514 to i32
  %xor90.i525.i.2.3 = xor i32 %conv84.i519.i.2.3, %conv89.i524.i.2.3
  %conv91.i526.i.2.3 = trunc i32 %xor90.i525.i.2.3 to i8
  %scevgep191.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %490, i64 0, i64 0, i64 2
  store i8 %conv91.i526.i.2.3, i8* %scevgep191.2.3, align 1
  %515 = load i8, i8* %arraydecay17.i, align 1
  %516 = load i8, i8* %arraydecay18.i, align 1
  %call111.i543.i = call zeroext i8 @mult(i8 zeroext %515, i8 zeroext %516) #3
  store i8 %call111.i543.i, i8* %arraydecay19.i, align 1
  %scevgep162.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  %517 = load i8, i8* %scevgep162.1, align 1
  %conv126.i555.i.1 = zext i8 %517 to i32
  %518 = load i8, i8* %arraydecay19.i, align 1
  %conv129.i558.i.1 = zext i8 %518 to i32
  %xor130.i559.i.1 = xor i32 %conv129.i558.i.1, %conv126.i555.i.1
  %conv131.i560.i.1 = trunc i32 %xor130.i559.i.1 to i8
  store i8 %conv131.i560.i.1, i8* %arraydecay19.i, align 1
  %scevgep162.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 2
  %519 = load i8, i8* %scevgep162.2, align 1
  %conv126.i555.i.2 = zext i8 %519 to i32
  %520 = load i8, i8* %arraydecay19.i, align 1
  %conv129.i558.i.2 = zext i8 %520 to i32
  %xor130.i559.i.2 = xor i32 %conv129.i558.i.2, %conv126.i555.i.2
  %conv131.i560.i.2 = trunc i32 %xor130.i559.i.2 to i8
  store i8 %conv131.i560.i.2, i8* %arraydecay19.i, align 1
  %scevgep162.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 3
  %521 = load i8, i8* %scevgep162.3, align 1
  %conv126.i555.i.3 = zext i8 %521 to i32
  %522 = load i8, i8* %arraydecay19.i, align 1
  %conv129.i558.i.3 = zext i8 %522 to i32
  %xor130.i559.i.3 = xor i32 %conv129.i558.i.3, %conv126.i555.i.3
  %conv131.i560.i.3 = trunc i32 %xor130.i559.i.3 to i8
  store i8 %conv131.i560.i.3, i8* %arraydecay19.i, align 1
  %scevgep161 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %523 = bitcast i8* %scevgep161 to [4 x [4 x i8]]*
  %arrayidx108.i540.i.1 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 1
  %524 = load i8, i8* %arrayidx108.i540.i.1, align 1
  %arrayidx110.i542.i.1 = getelementptr inbounds i8, i8* %arraydecay18.i, i64 1
  %525 = load i8, i8* %arrayidx110.i542.i.1, align 1
  %call111.i543.i.1 = call zeroext i8 @mult(i8 zeroext %524, i8 zeroext %525) #3
  %arrayidx113.i545.i.1 = getelementptr inbounds i8, i8* %arraydecay19.i, i64 1
  store i8 %call111.i543.i.1, i8* %arrayidx113.i545.i.1, align 1
  %arrayidx128.i557.i.1 = getelementptr inbounds i8, i8* %arraydecay19.i, i64 1
  %scevgep162.1512 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %523, i64 0, i64 0, i64 0
  %526 = load i8, i8* %scevgep162.1512, align 1
  %conv126.i555.i.1513 = zext i8 %526 to i32
  %527 = load i8, i8* %arrayidx128.i557.i.1, align 1
  %conv129.i558.i.1514 = zext i8 %527 to i32
  %xor130.i559.i.1515 = xor i32 %conv129.i558.i.1514, %conv126.i555.i.1513
  %conv131.i560.i.1516 = trunc i32 %xor130.i559.i.1515 to i8
  store i8 %conv131.i560.i.1516, i8* %arrayidx128.i557.i.1, align 1
  %scevgep162.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %523, i64 0, i64 0, i64 2
  %528 = load i8, i8* %scevgep162.2.1, align 1
  %conv126.i555.i.2.1 = zext i8 %528 to i32
  %529 = load i8, i8* %arrayidx128.i557.i.1, align 1
  %conv129.i558.i.2.1 = zext i8 %529 to i32
  %xor130.i559.i.2.1 = xor i32 %conv129.i558.i.2.1, %conv126.i555.i.2.1
  %conv131.i560.i.2.1 = trunc i32 %xor130.i559.i.2.1 to i8
  store i8 %conv131.i560.i.2.1, i8* %arrayidx128.i557.i.1, align 1
  %scevgep162.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %523, i64 0, i64 0, i64 3
  %530 = load i8, i8* %scevgep162.3.1, align 1
  %conv126.i555.i.3.1 = zext i8 %530 to i32
  %531 = load i8, i8* %arrayidx128.i557.i.1, align 1
  %conv129.i558.i.3.1 = zext i8 %531 to i32
  %xor130.i559.i.3.1 = xor i32 %conv129.i558.i.3.1, %conv126.i555.i.3.1
  %conv131.i560.i.3.1 = trunc i32 %xor130.i559.i.3.1 to i8
  store i8 %conv131.i560.i.3.1, i8* %arrayidx128.i557.i.1, align 1
  %scevgep161.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %523, i64 0, i64 1, i64 0
  %532 = bitcast i8* %scevgep161.1 to [4 x [4 x i8]]*
  %arrayidx108.i540.i.2 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 2
  %533 = load i8, i8* %arrayidx108.i540.i.2, align 1
  %arrayidx110.i542.i.2 = getelementptr inbounds i8, i8* %arraydecay18.i, i64 2
  %534 = load i8, i8* %arrayidx110.i542.i.2, align 1
  %call111.i543.i.2 = call zeroext i8 @mult(i8 zeroext %533, i8 zeroext %534) #3
  %arrayidx113.i545.i.2 = getelementptr inbounds i8, i8* %arraydecay19.i, i64 2
  store i8 %call111.i543.i.2, i8* %arrayidx113.i545.i.2, align 1
  %arrayidx128.i557.i.2 = getelementptr inbounds i8, i8* %arraydecay19.i, i64 2
  %scevgep162.2521 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %532, i64 0, i64 0, i64 0
  %535 = load i8, i8* %scevgep162.2521, align 1
  %conv126.i555.i.2522 = zext i8 %535 to i32
  %536 = load i8, i8* %arrayidx128.i557.i.2, align 1
  %conv129.i558.i.2523 = zext i8 %536 to i32
  %xor130.i559.i.2524 = xor i32 %conv129.i558.i.2523, %conv126.i555.i.2522
  %conv131.i560.i.2525 = trunc i32 %xor130.i559.i.2524 to i8
  store i8 %conv131.i560.i.2525, i8* %arrayidx128.i557.i.2, align 1
  %scevgep162.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %532, i64 0, i64 0, i64 1
  %537 = load i8, i8* %scevgep162.1.2, align 1
  %conv126.i555.i.1.2 = zext i8 %537 to i32
  %538 = load i8, i8* %arrayidx128.i557.i.2, align 1
  %conv129.i558.i.1.2 = zext i8 %538 to i32
  %xor130.i559.i.1.2 = xor i32 %conv129.i558.i.1.2, %conv126.i555.i.1.2
  %conv131.i560.i.1.2 = trunc i32 %xor130.i559.i.1.2 to i8
  store i8 %conv131.i560.i.1.2, i8* %arrayidx128.i557.i.2, align 1
  %scevgep162.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %532, i64 0, i64 0, i64 3
  %539 = load i8, i8* %scevgep162.3.2, align 1
  %conv126.i555.i.3.2 = zext i8 %539 to i32
  %540 = load i8, i8* %arrayidx128.i557.i.2, align 1
  %conv129.i558.i.3.2 = zext i8 %540 to i32
  %xor130.i559.i.3.2 = xor i32 %conv129.i558.i.3.2, %conv126.i555.i.3.2
  %conv131.i560.i.3.2 = trunc i32 %xor130.i559.i.3.2 to i8
  store i8 %conv131.i560.i.3.2, i8* %arrayidx128.i557.i.2, align 1
  %scevgep161.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %532, i64 0, i64 1, i64 0
  %541 = bitcast i8* %scevgep161.2 to [4 x [4 x i8]]*
  %arrayidx108.i540.i.3 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 3
  %542 = load i8, i8* %arrayidx108.i540.i.3, align 1
  %arrayidx110.i542.i.3 = getelementptr inbounds i8, i8* %arraydecay18.i, i64 3
  %543 = load i8, i8* %arrayidx110.i542.i.3, align 1
  %call111.i543.i.3 = call zeroext i8 @mult(i8 zeroext %542, i8 zeroext %543) #3
  %arrayidx113.i545.i.3 = getelementptr inbounds i8, i8* %arraydecay19.i, i64 3
  store i8 %call111.i543.i.3, i8* %arrayidx113.i545.i.3, align 1
  %arrayidx128.i557.i.3 = getelementptr inbounds i8, i8* %arraydecay19.i, i64 3
  %scevgep162.3530 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %541, i64 0, i64 0, i64 0
  %544 = load i8, i8* %scevgep162.3530, align 1
  %conv126.i555.i.3531 = zext i8 %544 to i32
  %545 = load i8, i8* %arrayidx128.i557.i.3, align 1
  %conv129.i558.i.3532 = zext i8 %545 to i32
  %xor130.i559.i.3533 = xor i32 %conv129.i558.i.3532, %conv126.i555.i.3531
  %conv131.i560.i.3534 = trunc i32 %xor130.i559.i.3533 to i8
  store i8 %conv131.i560.i.3534, i8* %arrayidx128.i557.i.3, align 1
  %scevgep162.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %541, i64 0, i64 0, i64 1
  %546 = load i8, i8* %scevgep162.1.3, align 1
  %conv126.i555.i.1.3 = zext i8 %546 to i32
  %547 = load i8, i8* %arrayidx128.i557.i.3, align 1
  %conv129.i558.i.1.3 = zext i8 %547 to i32
  %xor130.i559.i.1.3 = xor i32 %conv129.i558.i.1.3, %conv126.i555.i.1.3
  %conv131.i560.i.1.3 = trunc i32 %xor130.i559.i.1.3 to i8
  store i8 %conv131.i560.i.1.3, i8* %arrayidx128.i557.i.3, align 1
  %scevgep162.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %541, i64 0, i64 0, i64 2
  %548 = load i8, i8* %scevgep162.2.3, align 1
  %conv126.i555.i.2.3 = zext i8 %548 to i32
  %549 = load i8, i8* %arrayidx128.i557.i.3, align 1
  %conv129.i558.i.2.3 = zext i8 %549 to i32
  %xor130.i559.i.2.3 = xor i32 %conv129.i558.i.2.3, %conv126.i555.i.2.3
  %conv131.i560.i.2.3 = trunc i32 %xor130.i559.i.2.3 to i8
  store i8 %conv131.i560.i.2.3, i8* %arrayidx128.i557.i.3, align 1
  %call139.i566.i = call zeroext i8 @mult(i8 zeroext %call.i413.i, i8 zeroext %call1.i414.i) #3
  %conv140.i567.i = zext i8 %call139.i566.i to i32
  %scevgep152 = getelementptr [4 x i8], [4 x i8]* %m.i, i64 0, i64 0
  %550 = load i8, i8* %scevgep152, align 1
  %scevgep152.1 = getelementptr [4 x i8], [4 x i8]* %m.i, i64 0, i64 1
  %551 = load i8, i8* %scevgep152.1, align 1
  %conv.i.i172.i574.i.1 = zext i8 %551 to i32
  %conv1.i.i173.i575.i.1 = zext i8 %550 to i32
  %xor.i.i174.i576.i.1 = xor i32 %conv1.i.i173.i575.i.1, %conv.i.i172.i574.i.1
  %conv2.i.i175.i577.i.1 = trunc i32 %xor.i.i174.i576.i.1 to i8
  %scevgep152.2 = getelementptr [4 x i8], [4 x i8]* %m.i, i64 0, i64 2
  %552 = load i8, i8* %scevgep152.2, align 1
  %conv.i.i172.i574.i.2 = zext i8 %552 to i32
  %conv1.i.i173.i575.i.2 = zext i8 %conv2.i.i175.i577.i.1 to i32
  %xor.i.i174.i576.i.2 = xor i32 %conv1.i.i173.i575.i.2, %conv.i.i172.i574.i.2
  %conv2.i.i175.i577.i.2 = trunc i32 %xor.i.i174.i576.i.2 to i8
  %scevgep152.3 = getelementptr [4 x i8], [4 x i8]* %m.i, i64 0, i64 3
  %553 = load i8, i8* %scevgep152.3, align 1
  %conv.i.i172.i574.i.3 = zext i8 %553 to i32
  %conv1.i.i173.i575.i.3 = zext i8 %conv2.i.i175.i577.i.2 to i32
  %xor.i.i174.i576.i.3 = xor i32 %conv1.i.i173.i575.i.3, %conv.i.i172.i574.i.3
  %conv2.i.i175.i577.i.3 = trunc i32 %xor.i.i174.i576.i.3 to i8
  %conv142.i580.i = zext i8 %conv2.i.i175.i577.i.3 to i32
  %cmp143.i581.i = icmp eq i32 %conv140.i567.i, %conv142.i580.i
  call void @assert(i1 zeroext %cmp143.i581.i) #3
  %arraydecay20.i = getelementptr inbounds [4 x i8], [4 x i8]* %m.i, i64 0, i64 0
  %arraydecay21.i = getelementptr inbounds [4 x i8], [4 x i8]* %z.i, i64 0, i64 0
  %call.i614.i = call zeroext i8 (...) @rand() #3
  %call1.i615.i = call zeroext i8 (...) @rand() #3
  %conv.i616.i = zext i8 %call.i614.i to i32
  %scevgep148 = getelementptr [4 x i8], [4 x i8]* %m.i, i64 0, i64 0
  %554 = load i8, i8* %scevgep148, align 1
  %scevgep148.1 = getelementptr [4 x i8], [4 x i8]* %m.i, i64 0, i64 1
  %555 = load i8, i8* %scevgep148.1, align 1
  %conv.i.i.i622.i.1 = zext i8 %555 to i32
  %conv1.i.i.i623.i.1 = zext i8 %554 to i32
  %xor.i.i.i624.i.1 = xor i32 %conv1.i.i.i623.i.1, %conv.i.i.i622.i.1
  %conv2.i.i.i625.i.1 = trunc i32 %xor.i.i.i624.i.1 to i8
  %scevgep148.2 = getelementptr [4 x i8], [4 x i8]* %m.i, i64 0, i64 2
  %556 = load i8, i8* %scevgep148.2, align 1
  %conv.i.i.i622.i.2 = zext i8 %556 to i32
  %conv1.i.i.i623.i.2 = zext i8 %conv2.i.i.i625.i.1 to i32
  %xor.i.i.i624.i.2 = xor i32 %conv1.i.i.i623.i.2, %conv.i.i.i622.i.2
  %conv2.i.i.i625.i.2 = trunc i32 %xor.i.i.i624.i.2 to i8
  %scevgep148.3 = getelementptr [4 x i8], [4 x i8]* %m.i, i64 0, i64 3
  %557 = load i8, i8* %scevgep148.3, align 1
  %conv.i.i.i622.i.3 = zext i8 %557 to i32
  %conv1.i.i.i623.i.3 = zext i8 %conv2.i.i.i625.i.2 to i32
  %xor.i.i.i624.i.3 = xor i32 %conv1.i.i.i623.i.3, %conv.i.i.i622.i.3
  %conv2.i.i.i625.i.3 = trunc i32 %xor.i.i.i624.i.3 to i8
  %conv3.i628.i = zext i8 %conv2.i.i.i625.i.3 to i32
  %cmp.i629.i = icmp eq i32 %conv.i616.i, %conv3.i628.i
  call void @assume(i1 zeroext %cmp.i629.i) #3
  %conv5.i630.i = zext i8 %call1.i615.i to i32
  %scevgep144 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 0
  %558 = load i8, i8* %scevgep144, align 1
  %scevgep144.1 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 1
  %559 = load i8, i8* %scevgep144.1, align 1
  %conv.i.i155.i637.i.1 = zext i8 %559 to i32
  %conv1.i.i156.i638.i.1 = zext i8 %558 to i32
  %xor.i.i157.i639.i.1 = xor i32 %conv1.i.i156.i638.i.1, %conv.i.i155.i637.i.1
  %conv2.i.i158.i640.i.1 = trunc i32 %xor.i.i157.i639.i.1 to i8
  %scevgep144.2 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 2
  %560 = load i8, i8* %scevgep144.2, align 1
  %conv.i.i155.i637.i.2 = zext i8 %560 to i32
  %conv1.i.i156.i638.i.2 = zext i8 %conv2.i.i158.i640.i.1 to i32
  %xor.i.i157.i639.i.2 = xor i32 %conv1.i.i156.i638.i.2, %conv.i.i155.i637.i.2
  %conv2.i.i158.i640.i.2 = trunc i32 %xor.i.i157.i639.i.2 to i8
  %scevgep144.3 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 3
  %561 = load i8, i8* %scevgep144.3, align 1
  %conv.i.i155.i637.i.3 = zext i8 %561 to i32
  %conv1.i.i156.i638.i.3 = zext i8 %conv2.i.i158.i640.i.2 to i32
  %xor.i.i157.i639.i.3 = xor i32 %conv1.i.i156.i638.i.3, %conv.i.i155.i637.i.3
  %conv2.i.i158.i640.i.3 = trunc i32 %xor.i.i157.i639.i.3 to i8
  %conv7.i643.i = zext i8 %conv2.i.i158.i640.i.3 to i32
  %cmp8.i644.i = icmp eq i32 %conv5.i630.i, %conv7.i643.i
  call void @assume(i1 zeroext %cmp8.i644.i) #3
  %call16.i652.i = call zeroext i8 (...) @rand() #3
  %scevgep134 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  store i8 %call16.i652.i, i8* %scevgep134, align 1
  %scevgep135 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %562 = load i8, i8* %scevgep135, align 1
  %scevgep136 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  store i8 %562, i8* %scevgep136, align 1
  %call16.i652.i.1831 = call zeroext i8 (...) @rand() #3
  %scevgep134.1832 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  store i8 %call16.i652.i.1831, i8* %scevgep134.1832, align 1
  %scevgep135.1833 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %563 = load i8, i8* %scevgep135.1833, align 1
  %scevgep136.1834 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 2, i64 0
  store i8 %563, i8* %scevgep136.1834, align 1
  %call16.i652.i.2836 = call zeroext i8 (...) @rand() #3
  %scevgep134.2837 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  store i8 %call16.i652.i.2836, i8* %scevgep134.2837, align 1
  %scevgep135.2838 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  %564 = load i8, i8* %scevgep135.2838, align 1
  %scevgep136.2839 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 3, i64 0
  store i8 %564, i8* %scevgep136.2839, align 1
  %scevgep131 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 1, i64 1
  %565 = bitcast i8* %scevgep131 to [4 x [4 x i8]]*
  %call16.i652.i.1 = call zeroext i8 (...) @rand() #3
  %scevgep134.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %565, i64 0, i64 0, i64 1
  store i8 %call16.i652.i.1, i8* %scevgep134.1, align 1
  %scevgep135.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %565, i64 0, i64 0, i64 1
  %566 = load i8, i8* %scevgep135.1, align 1
  %scevgep136.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %565, i64 0, i64 1, i64 0
  store i8 %566, i8* %scevgep136.1, align 1
  %call16.i652.i.1.1 = call zeroext i8 (...) @rand() #3
  %scevgep134.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %565, i64 0, i64 0, i64 2
  store i8 %call16.i652.i.1.1, i8* %scevgep134.1.1, align 1
  %scevgep135.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %565, i64 0, i64 0, i64 2
  %567 = load i8, i8* %scevgep135.1.1, align 1
  %scevgep136.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %565, i64 0, i64 2, i64 0
  store i8 %567, i8* %scevgep136.1.1, align 1
  %scevgep131.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %565, i64 0, i64 1, i64 1
  %568 = bitcast i8* %scevgep131.1 to [4 x [4 x i8]]*
  %call16.i652.i.2 = call zeroext i8 (...) @rand() #3
  %scevgep134.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %568, i64 0, i64 0, i64 1
  store i8 %call16.i652.i.2, i8* %scevgep134.2, align 1
  %scevgep135.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %568, i64 0, i64 0, i64 1
  %569 = load i8, i8* %scevgep135.2, align 1
  %scevgep136.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %568, i64 0, i64 1, i64 0
  store i8 %569, i8* %scevgep136.2, align 1
  %scevgep107.1 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 1
  %570 = load i8, i8* %scevgep107.1, align 1
  %conv44.i679.i.1 = zext i8 %570 to i32
  %scevgep110.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %571 = load i8, i8* %scevgep110.1, align 1
  %conv49.i684.i.1 = zext i8 %571 to i32
  %xor.i685.i.1 = xor i32 %conv44.i679.i.1, %conv49.i684.i.1
  %conv50.i686.i.1 = trunc i32 %xor.i685.i.1 to i8
  %scevgep114.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  store i8 %conv50.i686.i.1, i8* %scevgep114.1, align 1
  %572 = load i8, i8* %arraydecay20.i, align 1
  %conv57.i693.i.1 = zext i8 %572 to i32
  %xor58.i694.i.1 = xor i32 %conv57.i693.i.1, 1
  %conv59.i695.i.1 = trunc i32 %xor58.i694.i.1 to i8
  %scevgep111.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %573 = load i8, i8* %scevgep111.1, align 1
  %call64.i700.i.1 = call zeroext i8 @mult(i8 zeroext %conv59.i695.i.1, i8 zeroext %573) #3
  %scevgep118.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  store i8 %call64.i700.i.1, i8* %scevgep118.1, align 1
  %574 = load i8, i8* %arraydecay20.i, align 1
  %scevgep115.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  %575 = load i8, i8* %scevgep115.1, align 1
  %call75.i711.i.1 = call zeroext i8 @mult(i8 zeroext %574, i8 zeroext %575) #3
  %scevgep122.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  store i8 %call75.i711.i.1, i8* %scevgep122.1, align 1
  %scevgep119.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  %576 = load i8, i8* %scevgep119.1, align 1
  %conv84.i720.i.1 = zext i8 %576 to i32
  %scevgep123.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  %577 = load i8, i8* %scevgep123.1, align 1
  %conv89.i725.i.1 = zext i8 %577 to i32
  %xor90.i726.i.1 = xor i32 %conv84.i720.i.1, %conv89.i725.i.1
  %conv91.i727.i.1 = trunc i32 %xor90.i726.i.1 to i8
  %scevgep126.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  store i8 %conv91.i727.i.1, i8* %scevgep126.1, align 1
  %scevgep107.2 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 2
  %578 = load i8, i8* %scevgep107.2, align 1
  %conv44.i679.i.2 = zext i8 %578 to i32
  %scevgep110.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %579 = load i8, i8* %scevgep110.2, align 1
  %conv49.i684.i.2 = zext i8 %579 to i32
  %xor.i685.i.2 = xor i32 %conv44.i679.i.2, %conv49.i684.i.2
  %conv50.i686.i.2 = trunc i32 %xor.i685.i.2 to i8
  %scevgep114.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 2
  store i8 %conv50.i686.i.2, i8* %scevgep114.2, align 1
  %580 = load i8, i8* %arraydecay20.i, align 1
  %conv57.i693.i.2 = zext i8 %580 to i32
  %xor58.i694.i.2 = xor i32 %conv57.i693.i.2, 1
  %conv59.i695.i.2 = trunc i32 %xor58.i694.i.2 to i8
  %scevgep111.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %581 = load i8, i8* %scevgep111.2, align 1
  %call64.i700.i.2 = call zeroext i8 @mult(i8 zeroext %conv59.i695.i.2, i8 zeroext %581) #3
  %scevgep118.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 2
  store i8 %call64.i700.i.2, i8* %scevgep118.2, align 1
  %582 = load i8, i8* %arraydecay20.i, align 1
  %scevgep115.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 2
  %583 = load i8, i8* %scevgep115.2, align 1
  %call75.i711.i.2 = call zeroext i8 @mult(i8 zeroext %582, i8 zeroext %583) #3
  %scevgep122.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 2
  store i8 %call75.i711.i.2, i8* %scevgep122.2, align 1
  %scevgep119.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 2
  %584 = load i8, i8* %scevgep119.2, align 1
  %conv84.i720.i.2 = zext i8 %584 to i32
  %scevgep123.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 2
  %585 = load i8, i8* %scevgep123.2, align 1
  %conv89.i725.i.2 = zext i8 %585 to i32
  %xor90.i726.i.2 = xor i32 %conv84.i720.i.2, %conv89.i725.i.2
  %conv91.i727.i.2 = trunc i32 %xor90.i726.i.2 to i8
  %scevgep126.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 2
  store i8 %conv91.i727.i.2, i8* %scevgep126.2, align 1
  %scevgep107.3 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 3
  %586 = load i8, i8* %scevgep107.3, align 1
  %conv44.i679.i.3 = zext i8 %586 to i32
  %scevgep110.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  %587 = load i8, i8* %scevgep110.3, align 1
  %conv49.i684.i.3 = zext i8 %587 to i32
  %xor.i685.i.3 = xor i32 %conv44.i679.i.3, %conv49.i684.i.3
  %conv50.i686.i.3 = trunc i32 %xor.i685.i.3 to i8
  %scevgep114.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 3
  store i8 %conv50.i686.i.3, i8* %scevgep114.3, align 1
  %588 = load i8, i8* %arraydecay20.i, align 1
  %conv57.i693.i.3 = zext i8 %588 to i32
  %xor58.i694.i.3 = xor i32 %conv57.i693.i.3, 1
  %conv59.i695.i.3 = trunc i32 %xor58.i694.i.3 to i8
  %scevgep111.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  %589 = load i8, i8* %scevgep111.3, align 1
  %call64.i700.i.3 = call zeroext i8 @mult(i8 zeroext %conv59.i695.i.3, i8 zeroext %589) #3
  %scevgep118.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 3
  store i8 %call64.i700.i.3, i8* %scevgep118.3, align 1
  %590 = load i8, i8* %arraydecay20.i, align 1
  %scevgep115.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 3
  %591 = load i8, i8* %scevgep115.3, align 1
  %call75.i711.i.3 = call zeroext i8 @mult(i8 zeroext %590, i8 zeroext %591) #3
  %scevgep122.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 3
  store i8 %call75.i711.i.3, i8* %scevgep122.3, align 1
  %scevgep119.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 3
  %592 = load i8, i8* %scevgep119.3, align 1
  %conv84.i720.i.3 = zext i8 %592 to i32
  %scevgep123.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 3
  %593 = load i8, i8* %scevgep123.3, align 1
  %conv89.i725.i.3 = zext i8 %593 to i32
  %xor90.i726.i.3 = xor i32 %conv84.i720.i.3, %conv89.i725.i.3
  %conv91.i727.i.3 = trunc i32 %xor90.i726.i.3 to i8
  %scevgep126.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 3
  store i8 %conv91.i727.i.3, i8* %scevgep126.3, align 1
  %scevgep109 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %594 = bitcast i8* %scevgep109 to [4 x [4 x i8]]*
  %scevgep113 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 1, i64 0
  %595 = bitcast i8* %scevgep113 to [4 x [4 x i8]]*
  %scevgep117 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 1, i64 0
  %596 = bitcast i8* %scevgep117 to [4 x [4 x i8]]*
  %scevgep121 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 1, i64 0
  %597 = bitcast i8* %scevgep121 to [4 x [4 x i8]]*
  %scevgep125 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %598 = bitcast i8* %scevgep125 to [4 x [4 x i8]]*
  %arrayidx56.i692.i.1 = getelementptr inbounds i8, i8* %arraydecay20.i, i64 1
  %arrayidx70.i706.i.1 = getelementptr inbounds i8, i8* %arraydecay20.i, i64 1
  %scevgep107.1431 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 0
  %599 = load i8, i8* %scevgep107.1431, align 1
  %conv44.i679.i.1432 = zext i8 %599 to i32
  %scevgep110.1433 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %594, i64 0, i64 0, i64 0
  %600 = load i8, i8* %scevgep110.1433, align 1
  %conv49.i684.i.1434 = zext i8 %600 to i32
  %xor.i685.i.1435 = xor i32 %conv44.i679.i.1432, %conv49.i684.i.1434
  %conv50.i686.i.1436 = trunc i32 %xor.i685.i.1435 to i8
  %scevgep114.1437 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %595, i64 0, i64 0, i64 0
  store i8 %conv50.i686.i.1436, i8* %scevgep114.1437, align 1
  %601 = load i8, i8* %arrayidx56.i692.i.1, align 1
  %conv57.i693.i.1438 = zext i8 %601 to i32
  %xor58.i694.i.1439 = xor i32 %conv57.i693.i.1438, 1
  %conv59.i695.i.1440 = trunc i32 %xor58.i694.i.1439 to i8
  %scevgep111.1441 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %594, i64 0, i64 0, i64 0
  %602 = load i8, i8* %scevgep111.1441, align 1
  %call64.i700.i.1442 = call zeroext i8 @mult(i8 zeroext %conv59.i695.i.1440, i8 zeroext %602) #3
  %scevgep118.1443 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %596, i64 0, i64 0, i64 0
  store i8 %call64.i700.i.1442, i8* %scevgep118.1443, align 1
  %603 = load i8, i8* %arrayidx70.i706.i.1, align 1
  %scevgep115.1444 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %595, i64 0, i64 0, i64 0
  %604 = load i8, i8* %scevgep115.1444, align 1
  %call75.i711.i.1445 = call zeroext i8 @mult(i8 zeroext %603, i8 zeroext %604) #3
  %scevgep122.1446 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %597, i64 0, i64 0, i64 0
  store i8 %call75.i711.i.1445, i8* %scevgep122.1446, align 1
  %scevgep119.1447 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %596, i64 0, i64 0, i64 0
  %605 = load i8, i8* %scevgep119.1447, align 1
  %conv84.i720.i.1448 = zext i8 %605 to i32
  %scevgep123.1449 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %597, i64 0, i64 0, i64 0
  %606 = load i8, i8* %scevgep123.1449, align 1
  %conv89.i725.i.1450 = zext i8 %606 to i32
  %xor90.i726.i.1451 = xor i32 %conv84.i720.i.1448, %conv89.i725.i.1450
  %conv91.i727.i.1452 = trunc i32 %xor90.i726.i.1451 to i8
  %scevgep126.1453 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %598, i64 0, i64 0, i64 0
  store i8 %conv91.i727.i.1452, i8* %scevgep126.1453, align 1
  %scevgep107.2.1 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 2
  %607 = load i8, i8* %scevgep107.2.1, align 1
  %conv44.i679.i.2.1 = zext i8 %607 to i32
  %scevgep110.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %594, i64 0, i64 0, i64 2
  %608 = load i8, i8* %scevgep110.2.1, align 1
  %conv49.i684.i.2.1 = zext i8 %608 to i32
  %xor.i685.i.2.1 = xor i32 %conv44.i679.i.2.1, %conv49.i684.i.2.1
  %conv50.i686.i.2.1 = trunc i32 %xor.i685.i.2.1 to i8
  %scevgep114.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %595, i64 0, i64 0, i64 2
  store i8 %conv50.i686.i.2.1, i8* %scevgep114.2.1, align 1
  %609 = load i8, i8* %arrayidx56.i692.i.1, align 1
  %conv57.i693.i.2.1 = zext i8 %609 to i32
  %xor58.i694.i.2.1 = xor i32 %conv57.i693.i.2.1, 1
  %conv59.i695.i.2.1 = trunc i32 %xor58.i694.i.2.1 to i8
  %scevgep111.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %594, i64 0, i64 0, i64 2
  %610 = load i8, i8* %scevgep111.2.1, align 1
  %call64.i700.i.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i695.i.2.1, i8 zeroext %610) #3
  %scevgep118.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %596, i64 0, i64 0, i64 2
  store i8 %call64.i700.i.2.1, i8* %scevgep118.2.1, align 1
  %611 = load i8, i8* %arrayidx70.i706.i.1, align 1
  %scevgep115.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %595, i64 0, i64 0, i64 2
  %612 = load i8, i8* %scevgep115.2.1, align 1
  %call75.i711.i.2.1 = call zeroext i8 @mult(i8 zeroext %611, i8 zeroext %612) #3
  %scevgep122.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %597, i64 0, i64 0, i64 2
  store i8 %call75.i711.i.2.1, i8* %scevgep122.2.1, align 1
  %scevgep119.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %596, i64 0, i64 0, i64 2
  %613 = load i8, i8* %scevgep119.2.1, align 1
  %conv84.i720.i.2.1 = zext i8 %613 to i32
  %scevgep123.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %597, i64 0, i64 0, i64 2
  %614 = load i8, i8* %scevgep123.2.1, align 1
  %conv89.i725.i.2.1 = zext i8 %614 to i32
  %xor90.i726.i.2.1 = xor i32 %conv84.i720.i.2.1, %conv89.i725.i.2.1
  %conv91.i727.i.2.1 = trunc i32 %xor90.i726.i.2.1 to i8
  %scevgep126.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %598, i64 0, i64 0, i64 2
  store i8 %conv91.i727.i.2.1, i8* %scevgep126.2.1, align 1
  %scevgep107.3.1 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 3
  %615 = load i8, i8* %scevgep107.3.1, align 1
  %conv44.i679.i.3.1 = zext i8 %615 to i32
  %scevgep110.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %594, i64 0, i64 0, i64 3
  %616 = load i8, i8* %scevgep110.3.1, align 1
  %conv49.i684.i.3.1 = zext i8 %616 to i32
  %xor.i685.i.3.1 = xor i32 %conv44.i679.i.3.1, %conv49.i684.i.3.1
  %conv50.i686.i.3.1 = trunc i32 %xor.i685.i.3.1 to i8
  %scevgep114.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %595, i64 0, i64 0, i64 3
  store i8 %conv50.i686.i.3.1, i8* %scevgep114.3.1, align 1
  %617 = load i8, i8* %arrayidx56.i692.i.1, align 1
  %conv57.i693.i.3.1 = zext i8 %617 to i32
  %xor58.i694.i.3.1 = xor i32 %conv57.i693.i.3.1, 1
  %conv59.i695.i.3.1 = trunc i32 %xor58.i694.i.3.1 to i8
  %scevgep111.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %594, i64 0, i64 0, i64 3
  %618 = load i8, i8* %scevgep111.3.1, align 1
  %call64.i700.i.3.1 = call zeroext i8 @mult(i8 zeroext %conv59.i695.i.3.1, i8 zeroext %618) #3
  %scevgep118.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %596, i64 0, i64 0, i64 3
  store i8 %call64.i700.i.3.1, i8* %scevgep118.3.1, align 1
  %619 = load i8, i8* %arrayidx70.i706.i.1, align 1
  %scevgep115.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %595, i64 0, i64 0, i64 3
  %620 = load i8, i8* %scevgep115.3.1, align 1
  %call75.i711.i.3.1 = call zeroext i8 @mult(i8 zeroext %619, i8 zeroext %620) #3
  %scevgep122.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %597, i64 0, i64 0, i64 3
  store i8 %call75.i711.i.3.1, i8* %scevgep122.3.1, align 1
  %scevgep119.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %596, i64 0, i64 0, i64 3
  %621 = load i8, i8* %scevgep119.3.1, align 1
  %conv84.i720.i.3.1 = zext i8 %621 to i32
  %scevgep123.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %597, i64 0, i64 0, i64 3
  %622 = load i8, i8* %scevgep123.3.1, align 1
  %conv89.i725.i.3.1 = zext i8 %622 to i32
  %xor90.i726.i.3.1 = xor i32 %conv84.i720.i.3.1, %conv89.i725.i.3.1
  %conv91.i727.i.3.1 = trunc i32 %xor90.i726.i.3.1 to i8
  %scevgep126.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %598, i64 0, i64 0, i64 3
  store i8 %conv91.i727.i.3.1, i8* %scevgep126.3.1, align 1
  %scevgep109.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %594, i64 0, i64 1, i64 0
  %623 = bitcast i8* %scevgep109.1 to [4 x [4 x i8]]*
  %scevgep113.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %595, i64 0, i64 1, i64 0
  %624 = bitcast i8* %scevgep113.1 to [4 x [4 x i8]]*
  %scevgep117.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %596, i64 0, i64 1, i64 0
  %625 = bitcast i8* %scevgep117.1 to [4 x [4 x i8]]*
  %scevgep121.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %597, i64 0, i64 1, i64 0
  %626 = bitcast i8* %scevgep121.1 to [4 x [4 x i8]]*
  %scevgep125.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %598, i64 0, i64 1, i64 0
  %627 = bitcast i8* %scevgep125.1 to [4 x [4 x i8]]*
  %arrayidx56.i692.i.2 = getelementptr inbounds i8, i8* %arraydecay20.i, i64 2
  %arrayidx70.i706.i.2 = getelementptr inbounds i8, i8* %arraydecay20.i, i64 2
  %scevgep107.2458 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 0
  %628 = load i8, i8* %scevgep107.2458, align 1
  %conv44.i679.i.2459 = zext i8 %628 to i32
  %scevgep110.2460 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %623, i64 0, i64 0, i64 0
  %629 = load i8, i8* %scevgep110.2460, align 1
  %conv49.i684.i.2461 = zext i8 %629 to i32
  %xor.i685.i.2462 = xor i32 %conv44.i679.i.2459, %conv49.i684.i.2461
  %conv50.i686.i.2463 = trunc i32 %xor.i685.i.2462 to i8
  %scevgep114.2464 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %624, i64 0, i64 0, i64 0
  store i8 %conv50.i686.i.2463, i8* %scevgep114.2464, align 1
  %630 = load i8, i8* %arrayidx56.i692.i.2, align 1
  %conv57.i693.i.2465 = zext i8 %630 to i32
  %xor58.i694.i.2466 = xor i32 %conv57.i693.i.2465, 1
  %conv59.i695.i.2467 = trunc i32 %xor58.i694.i.2466 to i8
  %scevgep111.2468 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %623, i64 0, i64 0, i64 0
  %631 = load i8, i8* %scevgep111.2468, align 1
  %call64.i700.i.2469 = call zeroext i8 @mult(i8 zeroext %conv59.i695.i.2467, i8 zeroext %631) #3
  %scevgep118.2470 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %625, i64 0, i64 0, i64 0
  store i8 %call64.i700.i.2469, i8* %scevgep118.2470, align 1
  %632 = load i8, i8* %arrayidx70.i706.i.2, align 1
  %scevgep115.2471 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %624, i64 0, i64 0, i64 0
  %633 = load i8, i8* %scevgep115.2471, align 1
  %call75.i711.i.2472 = call zeroext i8 @mult(i8 zeroext %632, i8 zeroext %633) #3
  %scevgep122.2473 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %626, i64 0, i64 0, i64 0
  store i8 %call75.i711.i.2472, i8* %scevgep122.2473, align 1
  %scevgep119.2474 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %625, i64 0, i64 0, i64 0
  %634 = load i8, i8* %scevgep119.2474, align 1
  %conv84.i720.i.2475 = zext i8 %634 to i32
  %scevgep123.2476 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %626, i64 0, i64 0, i64 0
  %635 = load i8, i8* %scevgep123.2476, align 1
  %conv89.i725.i.2477 = zext i8 %635 to i32
  %xor90.i726.i.2478 = xor i32 %conv84.i720.i.2475, %conv89.i725.i.2477
  %conv91.i727.i.2479 = trunc i32 %xor90.i726.i.2478 to i8
  %scevgep126.2480 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %627, i64 0, i64 0, i64 0
  store i8 %conv91.i727.i.2479, i8* %scevgep126.2480, align 1
  %scevgep107.1.2 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 1
  %636 = load i8, i8* %scevgep107.1.2, align 1
  %conv44.i679.i.1.2 = zext i8 %636 to i32
  %scevgep110.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %623, i64 0, i64 0, i64 1
  %637 = load i8, i8* %scevgep110.1.2, align 1
  %conv49.i684.i.1.2 = zext i8 %637 to i32
  %xor.i685.i.1.2 = xor i32 %conv44.i679.i.1.2, %conv49.i684.i.1.2
  %conv50.i686.i.1.2 = trunc i32 %xor.i685.i.1.2 to i8
  %scevgep114.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %624, i64 0, i64 0, i64 1
  store i8 %conv50.i686.i.1.2, i8* %scevgep114.1.2, align 1
  %638 = load i8, i8* %arrayidx56.i692.i.2, align 1
  %conv57.i693.i.1.2 = zext i8 %638 to i32
  %xor58.i694.i.1.2 = xor i32 %conv57.i693.i.1.2, 1
  %conv59.i695.i.1.2 = trunc i32 %xor58.i694.i.1.2 to i8
  %scevgep111.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %623, i64 0, i64 0, i64 1
  %639 = load i8, i8* %scevgep111.1.2, align 1
  %call64.i700.i.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i695.i.1.2, i8 zeroext %639) #3
  %scevgep118.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %625, i64 0, i64 0, i64 1
  store i8 %call64.i700.i.1.2, i8* %scevgep118.1.2, align 1
  %640 = load i8, i8* %arrayidx70.i706.i.2, align 1
  %scevgep115.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %624, i64 0, i64 0, i64 1
  %641 = load i8, i8* %scevgep115.1.2, align 1
  %call75.i711.i.1.2 = call zeroext i8 @mult(i8 zeroext %640, i8 zeroext %641) #3
  %scevgep122.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %626, i64 0, i64 0, i64 1
  store i8 %call75.i711.i.1.2, i8* %scevgep122.1.2, align 1
  %scevgep119.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %625, i64 0, i64 0, i64 1
  %642 = load i8, i8* %scevgep119.1.2, align 1
  %conv84.i720.i.1.2 = zext i8 %642 to i32
  %scevgep123.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %626, i64 0, i64 0, i64 1
  %643 = load i8, i8* %scevgep123.1.2, align 1
  %conv89.i725.i.1.2 = zext i8 %643 to i32
  %xor90.i726.i.1.2 = xor i32 %conv84.i720.i.1.2, %conv89.i725.i.1.2
  %conv91.i727.i.1.2 = trunc i32 %xor90.i726.i.1.2 to i8
  %scevgep126.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %627, i64 0, i64 0, i64 1
  store i8 %conv91.i727.i.1.2, i8* %scevgep126.1.2, align 1
  %scevgep107.3.2 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 3
  %644 = load i8, i8* %scevgep107.3.2, align 1
  %conv44.i679.i.3.2 = zext i8 %644 to i32
  %scevgep110.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %623, i64 0, i64 0, i64 3
  %645 = load i8, i8* %scevgep110.3.2, align 1
  %conv49.i684.i.3.2 = zext i8 %645 to i32
  %xor.i685.i.3.2 = xor i32 %conv44.i679.i.3.2, %conv49.i684.i.3.2
  %conv50.i686.i.3.2 = trunc i32 %xor.i685.i.3.2 to i8
  %scevgep114.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %624, i64 0, i64 0, i64 3
  store i8 %conv50.i686.i.3.2, i8* %scevgep114.3.2, align 1
  %646 = load i8, i8* %arrayidx56.i692.i.2, align 1
  %conv57.i693.i.3.2 = zext i8 %646 to i32
  %xor58.i694.i.3.2 = xor i32 %conv57.i693.i.3.2, 1
  %conv59.i695.i.3.2 = trunc i32 %xor58.i694.i.3.2 to i8
  %scevgep111.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %623, i64 0, i64 0, i64 3
  %647 = load i8, i8* %scevgep111.3.2, align 1
  %call64.i700.i.3.2 = call zeroext i8 @mult(i8 zeroext %conv59.i695.i.3.2, i8 zeroext %647) #3
  %scevgep118.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %625, i64 0, i64 0, i64 3
  store i8 %call64.i700.i.3.2, i8* %scevgep118.3.2, align 1
  %648 = load i8, i8* %arrayidx70.i706.i.2, align 1
  %scevgep115.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %624, i64 0, i64 0, i64 3
  %649 = load i8, i8* %scevgep115.3.2, align 1
  %call75.i711.i.3.2 = call zeroext i8 @mult(i8 zeroext %648, i8 zeroext %649) #3
  %scevgep122.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %626, i64 0, i64 0, i64 3
  store i8 %call75.i711.i.3.2, i8* %scevgep122.3.2, align 1
  %scevgep119.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %625, i64 0, i64 0, i64 3
  %650 = load i8, i8* %scevgep119.3.2, align 1
  %conv84.i720.i.3.2 = zext i8 %650 to i32
  %scevgep123.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %626, i64 0, i64 0, i64 3
  %651 = load i8, i8* %scevgep123.3.2, align 1
  %conv89.i725.i.3.2 = zext i8 %651 to i32
  %xor90.i726.i.3.2 = xor i32 %conv84.i720.i.3.2, %conv89.i725.i.3.2
  %conv91.i727.i.3.2 = trunc i32 %xor90.i726.i.3.2 to i8
  %scevgep126.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %627, i64 0, i64 0, i64 3
  store i8 %conv91.i727.i.3.2, i8* %scevgep126.3.2, align 1
  %scevgep109.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %623, i64 0, i64 1, i64 0
  %652 = bitcast i8* %scevgep109.2 to [4 x [4 x i8]]*
  %scevgep113.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %624, i64 0, i64 1, i64 0
  %653 = bitcast i8* %scevgep113.2 to [4 x [4 x i8]]*
  %scevgep117.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %625, i64 0, i64 1, i64 0
  %654 = bitcast i8* %scevgep117.2 to [4 x [4 x i8]]*
  %scevgep121.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %626, i64 0, i64 1, i64 0
  %655 = bitcast i8* %scevgep121.2 to [4 x [4 x i8]]*
  %scevgep125.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %627, i64 0, i64 1, i64 0
  %656 = bitcast i8* %scevgep125.2 to [4 x [4 x i8]]*
  %arrayidx56.i692.i.3 = getelementptr inbounds i8, i8* %arraydecay20.i, i64 3
  %arrayidx70.i706.i.3 = getelementptr inbounds i8, i8* %arraydecay20.i, i64 3
  %scevgep107.3485 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 0
  %657 = load i8, i8* %scevgep107.3485, align 1
  %conv44.i679.i.3486 = zext i8 %657 to i32
  %scevgep110.3487 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %652, i64 0, i64 0, i64 0
  %658 = load i8, i8* %scevgep110.3487, align 1
  %conv49.i684.i.3488 = zext i8 %658 to i32
  %xor.i685.i.3489 = xor i32 %conv44.i679.i.3486, %conv49.i684.i.3488
  %conv50.i686.i.3490 = trunc i32 %xor.i685.i.3489 to i8
  %scevgep114.3491 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %653, i64 0, i64 0, i64 0
  store i8 %conv50.i686.i.3490, i8* %scevgep114.3491, align 1
  %659 = load i8, i8* %arrayidx56.i692.i.3, align 1
  %conv57.i693.i.3492 = zext i8 %659 to i32
  %xor58.i694.i.3493 = xor i32 %conv57.i693.i.3492, 1
  %conv59.i695.i.3494 = trunc i32 %xor58.i694.i.3493 to i8
  %scevgep111.3495 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %652, i64 0, i64 0, i64 0
  %660 = load i8, i8* %scevgep111.3495, align 1
  %call64.i700.i.3496 = call zeroext i8 @mult(i8 zeroext %conv59.i695.i.3494, i8 zeroext %660) #3
  %scevgep118.3497 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %654, i64 0, i64 0, i64 0
  store i8 %call64.i700.i.3496, i8* %scevgep118.3497, align 1
  %661 = load i8, i8* %arrayidx70.i706.i.3, align 1
  %scevgep115.3498 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %653, i64 0, i64 0, i64 0
  %662 = load i8, i8* %scevgep115.3498, align 1
  %call75.i711.i.3499 = call zeroext i8 @mult(i8 zeroext %661, i8 zeroext %662) #3
  %scevgep122.3500 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %655, i64 0, i64 0, i64 0
  store i8 %call75.i711.i.3499, i8* %scevgep122.3500, align 1
  %scevgep119.3501 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %654, i64 0, i64 0, i64 0
  %663 = load i8, i8* %scevgep119.3501, align 1
  %conv84.i720.i.3502 = zext i8 %663 to i32
  %scevgep123.3503 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %655, i64 0, i64 0, i64 0
  %664 = load i8, i8* %scevgep123.3503, align 1
  %conv89.i725.i.3504 = zext i8 %664 to i32
  %xor90.i726.i.3505 = xor i32 %conv84.i720.i.3502, %conv89.i725.i.3504
  %conv91.i727.i.3506 = trunc i32 %xor90.i726.i.3505 to i8
  %scevgep126.3507 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %656, i64 0, i64 0, i64 0
  store i8 %conv91.i727.i.3506, i8* %scevgep126.3507, align 1
  %scevgep107.1.3 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 1
  %665 = load i8, i8* %scevgep107.1.3, align 1
  %conv44.i679.i.1.3 = zext i8 %665 to i32
  %scevgep110.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %652, i64 0, i64 0, i64 1
  %666 = load i8, i8* %scevgep110.1.3, align 1
  %conv49.i684.i.1.3 = zext i8 %666 to i32
  %xor.i685.i.1.3 = xor i32 %conv44.i679.i.1.3, %conv49.i684.i.1.3
  %conv50.i686.i.1.3 = trunc i32 %xor.i685.i.1.3 to i8
  %scevgep114.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %653, i64 0, i64 0, i64 1
  store i8 %conv50.i686.i.1.3, i8* %scevgep114.1.3, align 1
  %667 = load i8, i8* %arrayidx56.i692.i.3, align 1
  %conv57.i693.i.1.3 = zext i8 %667 to i32
  %xor58.i694.i.1.3 = xor i32 %conv57.i693.i.1.3, 1
  %conv59.i695.i.1.3 = trunc i32 %xor58.i694.i.1.3 to i8
  %scevgep111.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %652, i64 0, i64 0, i64 1
  %668 = load i8, i8* %scevgep111.1.3, align 1
  %call64.i700.i.1.3 = call zeroext i8 @mult(i8 zeroext %conv59.i695.i.1.3, i8 zeroext %668) #3
  %scevgep118.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %654, i64 0, i64 0, i64 1
  store i8 %call64.i700.i.1.3, i8* %scevgep118.1.3, align 1
  %669 = load i8, i8* %arrayidx70.i706.i.3, align 1
  %scevgep115.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %653, i64 0, i64 0, i64 1
  %670 = load i8, i8* %scevgep115.1.3, align 1
  %call75.i711.i.1.3 = call zeroext i8 @mult(i8 zeroext %669, i8 zeroext %670) #3
  %scevgep122.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %655, i64 0, i64 0, i64 1
  store i8 %call75.i711.i.1.3, i8* %scevgep122.1.3, align 1
  %scevgep119.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %654, i64 0, i64 0, i64 1
  %671 = load i8, i8* %scevgep119.1.3, align 1
  %conv84.i720.i.1.3 = zext i8 %671 to i32
  %scevgep123.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %655, i64 0, i64 0, i64 1
  %672 = load i8, i8* %scevgep123.1.3, align 1
  %conv89.i725.i.1.3 = zext i8 %672 to i32
  %xor90.i726.i.1.3 = xor i32 %conv84.i720.i.1.3, %conv89.i725.i.1.3
  %conv91.i727.i.1.3 = trunc i32 %xor90.i726.i.1.3 to i8
  %scevgep126.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %656, i64 0, i64 0, i64 1
  store i8 %conv91.i727.i.1.3, i8* %scevgep126.1.3, align 1
  %scevgep107.2.3 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 2
  %673 = load i8, i8* %scevgep107.2.3, align 1
  %conv44.i679.i.2.3 = zext i8 %673 to i32
  %scevgep110.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %652, i64 0, i64 0, i64 2
  %674 = load i8, i8* %scevgep110.2.3, align 1
  %conv49.i684.i.2.3 = zext i8 %674 to i32
  %xor.i685.i.2.3 = xor i32 %conv44.i679.i.2.3, %conv49.i684.i.2.3
  %conv50.i686.i.2.3 = trunc i32 %xor.i685.i.2.3 to i8
  %scevgep114.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %653, i64 0, i64 0, i64 2
  store i8 %conv50.i686.i.2.3, i8* %scevgep114.2.3, align 1
  %675 = load i8, i8* %arrayidx56.i692.i.3, align 1
  %conv57.i693.i.2.3 = zext i8 %675 to i32
  %xor58.i694.i.2.3 = xor i32 %conv57.i693.i.2.3, 1
  %conv59.i695.i.2.3 = trunc i32 %xor58.i694.i.2.3 to i8
  %scevgep111.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %652, i64 0, i64 0, i64 2
  %676 = load i8, i8* %scevgep111.2.3, align 1
  %call64.i700.i.2.3 = call zeroext i8 @mult(i8 zeroext %conv59.i695.i.2.3, i8 zeroext %676) #3
  %scevgep118.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %654, i64 0, i64 0, i64 2
  store i8 %call64.i700.i.2.3, i8* %scevgep118.2.3, align 1
  %677 = load i8, i8* %arrayidx70.i706.i.3, align 1
  %scevgep115.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %653, i64 0, i64 0, i64 2
  %678 = load i8, i8* %scevgep115.2.3, align 1
  %call75.i711.i.2.3 = call zeroext i8 @mult(i8 zeroext %677, i8 zeroext %678) #3
  %scevgep122.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %655, i64 0, i64 0, i64 2
  store i8 %call75.i711.i.2.3, i8* %scevgep122.2.3, align 1
  %scevgep119.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %654, i64 0, i64 0, i64 2
  %679 = load i8, i8* %scevgep119.2.3, align 1
  %conv84.i720.i.2.3 = zext i8 %679 to i32
  %scevgep123.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %655, i64 0, i64 0, i64 2
  %680 = load i8, i8* %scevgep123.2.3, align 1
  %conv89.i725.i.2.3 = zext i8 %680 to i32
  %xor90.i726.i.2.3 = xor i32 %conv84.i720.i.2.3, %conv89.i725.i.2.3
  %conv91.i727.i.2.3 = trunc i32 %xor90.i726.i.2.3 to i8
  %scevgep126.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %656, i64 0, i64 0, i64 2
  store i8 %conv91.i727.i.2.3, i8* %scevgep126.2.3, align 1
  %681 = load i8, i8* %arraydecay20.i, align 1
  %682 = load i8, i8* %arraydecay21.i, align 1
  %call111.i744.i = call zeroext i8 @mult(i8 zeroext %681, i8 zeroext %682) #3
  store i8 %call111.i744.i, i8* %arraydecay, align 1
  %scevgep98.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  %683 = load i8, i8* %scevgep98.1, align 1
  %conv126.i756.i.1 = zext i8 %683 to i32
  %684 = load i8, i8* %arraydecay, align 1
  %conv129.i759.i.1 = zext i8 %684 to i32
  %xor130.i760.i.1 = xor i32 %conv129.i759.i.1, %conv126.i756.i.1
  %conv131.i761.i.1 = trunc i32 %xor130.i760.i.1 to i8
  store i8 %conv131.i761.i.1, i8* %arraydecay, align 1
  %scevgep98.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 2
  %685 = load i8, i8* %scevgep98.2, align 1
  %conv126.i756.i.2 = zext i8 %685 to i32
  %686 = load i8, i8* %arraydecay, align 1
  %conv129.i759.i.2 = zext i8 %686 to i32
  %xor130.i760.i.2 = xor i32 %conv129.i759.i.2, %conv126.i756.i.2
  %conv131.i761.i.2 = trunc i32 %xor130.i760.i.2 to i8
  store i8 %conv131.i761.i.2, i8* %arraydecay, align 1
  %scevgep98.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 3
  %687 = load i8, i8* %scevgep98.3, align 1
  %conv126.i756.i.3 = zext i8 %687 to i32
  %688 = load i8, i8* %arraydecay, align 1
  %conv129.i759.i.3 = zext i8 %688 to i32
  %xor130.i760.i.3 = xor i32 %conv129.i759.i.3, %conv126.i756.i.3
  %conv131.i761.i.3 = trunc i32 %xor130.i760.i.3 to i8
  store i8 %conv131.i761.i.3, i8* %arraydecay, align 1
  %scevgep97 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %689 = bitcast i8* %scevgep97 to [4 x [4 x i8]]*
  %arrayidx108.i741.i.1 = getelementptr inbounds i8, i8* %arraydecay20.i, i64 1
  %690 = load i8, i8* %arrayidx108.i741.i.1, align 1
  %arrayidx110.i743.i.1 = getelementptr inbounds i8, i8* %arraydecay21.i, i64 1
  %691 = load i8, i8* %arrayidx110.i743.i.1, align 1
  %call111.i744.i.1 = call zeroext i8 @mult(i8 zeroext %690, i8 zeroext %691) #3
  %arrayidx113.i746.i.1 = getelementptr inbounds i8, i8* %arraydecay, i64 1
  store i8 %call111.i744.i.1, i8* %arrayidx113.i746.i.1, align 1
  %arrayidx128.i758.i.1 = getelementptr inbounds i8, i8* %arraydecay, i64 1
  %scevgep98.1404 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %689, i64 0, i64 0, i64 0
  %692 = load i8, i8* %scevgep98.1404, align 1
  %conv126.i756.i.1405 = zext i8 %692 to i32
  %693 = load i8, i8* %arrayidx128.i758.i.1, align 1
  %conv129.i759.i.1406 = zext i8 %693 to i32
  %xor130.i760.i.1407 = xor i32 %conv129.i759.i.1406, %conv126.i756.i.1405
  %conv131.i761.i.1408 = trunc i32 %xor130.i760.i.1407 to i8
  store i8 %conv131.i761.i.1408, i8* %arrayidx128.i758.i.1, align 1
  %scevgep98.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %689, i64 0, i64 0, i64 2
  %694 = load i8, i8* %scevgep98.2.1, align 1
  %conv126.i756.i.2.1 = zext i8 %694 to i32
  %695 = load i8, i8* %arrayidx128.i758.i.1, align 1
  %conv129.i759.i.2.1 = zext i8 %695 to i32
  %xor130.i760.i.2.1 = xor i32 %conv129.i759.i.2.1, %conv126.i756.i.2.1
  %conv131.i761.i.2.1 = trunc i32 %xor130.i760.i.2.1 to i8
  store i8 %conv131.i761.i.2.1, i8* %arrayidx128.i758.i.1, align 1
  %scevgep98.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %689, i64 0, i64 0, i64 3
  %696 = load i8, i8* %scevgep98.3.1, align 1
  %conv126.i756.i.3.1 = zext i8 %696 to i32
  %697 = load i8, i8* %arrayidx128.i758.i.1, align 1
  %conv129.i759.i.3.1 = zext i8 %697 to i32
  %xor130.i760.i.3.1 = xor i32 %conv129.i759.i.3.1, %conv126.i756.i.3.1
  %conv131.i761.i.3.1 = trunc i32 %xor130.i760.i.3.1 to i8
  store i8 %conv131.i761.i.3.1, i8* %arrayidx128.i758.i.1, align 1
  %scevgep97.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %689, i64 0, i64 1, i64 0
  %698 = bitcast i8* %scevgep97.1 to [4 x [4 x i8]]*
  %arrayidx108.i741.i.2 = getelementptr inbounds i8, i8* %arraydecay20.i, i64 2
  %699 = load i8, i8* %arrayidx108.i741.i.2, align 1
  %arrayidx110.i743.i.2 = getelementptr inbounds i8, i8* %arraydecay21.i, i64 2
  %700 = load i8, i8* %arrayidx110.i743.i.2, align 1
  %call111.i744.i.2 = call zeroext i8 @mult(i8 zeroext %699, i8 zeroext %700) #3
  %arrayidx113.i746.i.2 = getelementptr inbounds i8, i8* %arraydecay, i64 2
  store i8 %call111.i744.i.2, i8* %arrayidx113.i746.i.2, align 1
  %arrayidx128.i758.i.2 = getelementptr inbounds i8, i8* %arraydecay, i64 2
  %scevgep98.2413 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %698, i64 0, i64 0, i64 0
  %701 = load i8, i8* %scevgep98.2413, align 1
  %conv126.i756.i.2414 = zext i8 %701 to i32
  %702 = load i8, i8* %arrayidx128.i758.i.2, align 1
  %conv129.i759.i.2415 = zext i8 %702 to i32
  %xor130.i760.i.2416 = xor i32 %conv129.i759.i.2415, %conv126.i756.i.2414
  %conv131.i761.i.2417 = trunc i32 %xor130.i760.i.2416 to i8
  store i8 %conv131.i761.i.2417, i8* %arrayidx128.i758.i.2, align 1
  %scevgep98.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %698, i64 0, i64 0, i64 1
  %703 = load i8, i8* %scevgep98.1.2, align 1
  %conv126.i756.i.1.2 = zext i8 %703 to i32
  %704 = load i8, i8* %arrayidx128.i758.i.2, align 1
  %conv129.i759.i.1.2 = zext i8 %704 to i32
  %xor130.i760.i.1.2 = xor i32 %conv129.i759.i.1.2, %conv126.i756.i.1.2
  %conv131.i761.i.1.2 = trunc i32 %xor130.i760.i.1.2 to i8
  store i8 %conv131.i761.i.1.2, i8* %arrayidx128.i758.i.2, align 1
  %scevgep98.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %698, i64 0, i64 0, i64 3
  %705 = load i8, i8* %scevgep98.3.2, align 1
  %conv126.i756.i.3.2 = zext i8 %705 to i32
  %706 = load i8, i8* %arrayidx128.i758.i.2, align 1
  %conv129.i759.i.3.2 = zext i8 %706 to i32
  %xor130.i760.i.3.2 = xor i32 %conv129.i759.i.3.2, %conv126.i756.i.3.2
  %conv131.i761.i.3.2 = trunc i32 %xor130.i760.i.3.2 to i8
  store i8 %conv131.i761.i.3.2, i8* %arrayidx128.i758.i.2, align 1
  %scevgep97.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %698, i64 0, i64 1, i64 0
  %707 = bitcast i8* %scevgep97.2 to [4 x [4 x i8]]*
  %arrayidx108.i741.i.3 = getelementptr inbounds i8, i8* %arraydecay20.i, i64 3
  %708 = load i8, i8* %arrayidx108.i741.i.3, align 1
  %arrayidx110.i743.i.3 = getelementptr inbounds i8, i8* %arraydecay21.i, i64 3
  %709 = load i8, i8* %arrayidx110.i743.i.3, align 1
  %call111.i744.i.3 = call zeroext i8 @mult(i8 zeroext %708, i8 zeroext %709) #3
  %arrayidx113.i746.i.3 = getelementptr inbounds i8, i8* %arraydecay, i64 3
  store i8 %call111.i744.i.3, i8* %arrayidx113.i746.i.3, align 1
  %arrayidx128.i758.i.3 = getelementptr inbounds i8, i8* %arraydecay, i64 3
  %scevgep98.3422 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %707, i64 0, i64 0, i64 0
  %710 = load i8, i8* %scevgep98.3422, align 1
  %conv126.i756.i.3423 = zext i8 %710 to i32
  %711 = load i8, i8* %arrayidx128.i758.i.3, align 1
  %conv129.i759.i.3424 = zext i8 %711 to i32
  %xor130.i760.i.3425 = xor i32 %conv129.i759.i.3424, %conv126.i756.i.3423
  %conv131.i761.i.3426 = trunc i32 %xor130.i760.i.3425 to i8
  store i8 %conv131.i761.i.3426, i8* %arrayidx128.i758.i.3, align 1
  %scevgep98.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %707, i64 0, i64 0, i64 1
  %712 = load i8, i8* %scevgep98.1.3, align 1
  %conv126.i756.i.1.3 = zext i8 %712 to i32
  %713 = load i8, i8* %arrayidx128.i758.i.3, align 1
  %conv129.i759.i.1.3 = zext i8 %713 to i32
  %xor130.i760.i.1.3 = xor i32 %conv129.i759.i.1.3, %conv126.i756.i.1.3
  %conv131.i761.i.1.3 = trunc i32 %xor130.i760.i.1.3 to i8
  store i8 %conv131.i761.i.1.3, i8* %arrayidx128.i758.i.3, align 1
  %scevgep98.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %707, i64 0, i64 0, i64 2
  %714 = load i8, i8* %scevgep98.2.3, align 1
  %conv126.i756.i.2.3 = zext i8 %714 to i32
  %715 = load i8, i8* %arrayidx128.i758.i.3, align 1
  %conv129.i759.i.2.3 = zext i8 %715 to i32
  %xor130.i760.i.2.3 = xor i32 %conv129.i759.i.2.3, %conv126.i756.i.2.3
  %conv131.i761.i.2.3 = trunc i32 %xor130.i760.i.2.3 to i8
  store i8 %conv131.i761.i.2.3, i8* %arrayidx128.i758.i.3, align 1
  %call139.i767.i = call zeroext i8 @mult(i8 zeroext %call.i614.i, i8 zeroext %call1.i615.i) #3
  %conv140.i768.i = zext i8 %call139.i767.i to i32
  %scevgep88 = getelementptr [4 x i8], [4 x i8]* %x254, i64 0, i64 0
  %716 = load i8, i8* %scevgep88, align 1
  %scevgep88.1 = getelementptr [4 x i8], [4 x i8]* %x254, i64 0, i64 1
  %717 = load i8, i8* %scevgep88.1, align 1
  %conv.i.i172.i775.i.1 = zext i8 %717 to i32
  %conv1.i.i173.i776.i.1 = zext i8 %716 to i32
  %xor.i.i174.i777.i.1 = xor i32 %conv1.i.i173.i776.i.1, %conv.i.i172.i775.i.1
  %conv2.i.i175.i778.i.1 = trunc i32 %xor.i.i174.i777.i.1 to i8
  %scevgep88.2 = getelementptr [4 x i8], [4 x i8]* %x254, i64 0, i64 2
  %718 = load i8, i8* %scevgep88.2, align 1
  %conv.i.i172.i775.i.2 = zext i8 %718 to i32
  %conv1.i.i173.i776.i.2 = zext i8 %conv2.i.i175.i778.i.1 to i32
  %xor.i.i174.i777.i.2 = xor i32 %conv1.i.i173.i776.i.2, %conv.i.i172.i775.i.2
  %conv2.i.i175.i778.i.2 = trunc i32 %xor.i.i174.i777.i.2 to i8
  %scevgep88.3 = getelementptr [4 x i8], [4 x i8]* %x254, i64 0, i64 3
  %719 = load i8, i8* %scevgep88.3, align 1
  %conv.i.i172.i775.i.3 = zext i8 %719 to i32
  %conv1.i.i173.i776.i.3 = zext i8 %conv2.i.i175.i778.i.2 to i32
  %xor.i.i174.i777.i.3 = xor i32 %conv1.i.i173.i776.i.3, %conv.i.i172.i775.i.3
  %conv2.i.i175.i778.i.3 = trunc i32 %xor.i.i174.i777.i.3 to i8
  %conv142.i781.i = zext i8 %conv2.i.i175.i778.i.3 to i32
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
  %scevgep84 = getelementptr [4 x i8], [4 x i8]* %x254, i64 0, i64 0
  %720 = load i8, i8* %scevgep84, align 1
  %scevgep84.1 = getelementptr [4 x i8], [4 x i8]* %x254, i64 0, i64 1
  %721 = load i8, i8* %scevgep84.1, align 1
  %conv.i.i799.i.1 = zext i8 %721 to i32
  %conv1.i.i800.i.1 = zext i8 %720 to i32
  %xor.i.i801.i.1 = xor i32 %conv1.i.i800.i.1, %conv.i.i799.i.1
  %conv2.i.i802.i.1 = trunc i32 %xor.i.i801.i.1 to i8
  %scevgep84.2 = getelementptr [4 x i8], [4 x i8]* %x254, i64 0, i64 2
  %722 = load i8, i8* %scevgep84.2, align 1
  %conv.i.i799.i.2 = zext i8 %722 to i32
  %conv1.i.i800.i.2 = zext i8 %conv2.i.i802.i.1 to i32
  %xor.i.i801.i.2 = xor i32 %conv1.i.i800.i.2, %conv.i.i799.i.2
  %conv2.i.i802.i.2 = trunc i32 %xor.i.i801.i.2 to i8
  %scevgep84.3 = getelementptr [4 x i8], [4 x i8]* %x254, i64 0, i64 3
  %723 = load i8, i8* %scevgep84.3, align 1
  %conv.i.i799.i.3 = zext i8 %723 to i32
  %conv1.i.i800.i.3 = zext i8 %conv2.i.i802.i.2 to i32
  %xor.i.i801.i.3 = xor i32 %conv1.i.i800.i.3, %conv.i.i799.i.3
  %conv2.i.i802.i.3 = trunc i32 %xor.i.i801.i.3 to i8
  %conv25.i = zext i8 %conv2.i.i802.i.3 to i32
  %cmp26.i = icmp eq i32 %conv23.i, %conv25.i
  call void @assert(i1 zeroext %cmp26.i) #3
  %scevgep79 = getelementptr [4 x i8], [4 x i8]* %x254, i64 0, i64 0
  %724 = load i8, i8* %scevgep79, align 1
  %call.i27 = call zeroext i8 @af(i8 zeroext %724) #3
  store i8 %call.i27, i8* %y, align 1
  %scevgep79.1 = getelementptr [4 x i8], [4 x i8]* %x254, i64 0, i64 1
  %725 = load i8, i8* %scevgep79.1, align 1
  %call.i27.1 = call zeroext i8 @af(i8 zeroext %725) #3
  %scevgep80.1 = getelementptr i8, i8* %y, i64 1
  store i8 %call.i27.1, i8* %scevgep80.1, align 1
  %scevgep79.2 = getelementptr [4 x i8], [4 x i8]* %x254, i64 0, i64 2
  %726 = load i8, i8* %scevgep79.2, align 1
  %call.i27.2 = call zeroext i8 @af(i8 zeroext %726) #3
  %scevgep80.2 = getelementptr i8, i8* %y, i64 2
  store i8 %call.i27.2, i8* %scevgep80.2, align 1
  %scevgep79.3 = getelementptr [4 x i8], [4 x i8]* %x254, i64 0, i64 3
  %727 = load i8, i8* %scevgep79.3, align 1
  %call.i27.3 = call zeroext i8 @af(i8 zeroext %727) #3
  %scevgep80.3 = getelementptr i8, i8* %y, i64 3
  store i8 %call.i27.3, i8* %scevgep80.3, align 1
  %728 = load i8, i8* %y, align 1
  %conv5 = zext i8 %728 to i32
  %xor = xor i32 %conv5, 99
  %conv6 = trunc i32 %xor to i8
  store i8 %conv6, i8* %y, align 1
  %call.i.i.i44 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call) #3
  %call1.i.i45 = call zeroext i8 @mult(i8 zeroext %call.i.i.i44, i8 zeroext %call) #3
  %call.i.i.i.i46 = call zeroext i8 @mult(i8 zeroext %call1.i.i45, i8 zeroext %call1.i.i45) #3
  %call.i3.i.i.i47 = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i46, i8 zeroext %call.i.i.i.i46) #3
  %call3.i.i48 = call zeroext i8 @mult(i8 zeroext %call1.i.i45, i8 zeroext %call.i3.i.i.i47) #3
  %call.i.i.i.i.i49 = call zeroext i8 @mult(i8 zeroext %call3.i.i48, i8 zeroext %call3.i.i48) #3
  %call.i3.i.i.i.i50 = call zeroext i8 @mult(i8 zeroext %call.i.i.i.i.i49, i8 zeroext %call.i.i.i.i.i49) #3
  %call.i.i5.i.i.i51 = call zeroext i8 @mult(i8 zeroext %call.i3.i.i.i.i50, i8 zeroext %call.i3.i.i.i.i50) #3
  %call.i3.i6.i.i.i52 = call zeroext i8 @mult(i8 zeroext %call.i.i5.i.i.i51, i8 zeroext %call.i.i5.i.i.i51) #3
  %call5.i.i53 = call zeroext i8 @mult(i8 zeroext %call.i3.i6.i.i.i52, i8 zeroext %call.i3.i.i.i47) #3
  %call6.i.i54 = call zeroext i8 @mult(i8 zeroext %call5.i.i53, i8 zeroext %call.i.i.i44) #3
  %call1.i = call zeroext i8 @af(i8 zeroext %call6.i.i54) #3
  %conv8 = zext i8 %call1.i to i32
  %729 = load i8, i8* %y, align 1
  %scevgep.1 = getelementptr i8, i8* %y, i64 1
  %730 = load i8, i8* %scevgep.1, align 1
  %conv.i.i65.1 = zext i8 %730 to i32
  %conv1.i.i66.1 = zext i8 %729 to i32
  %xor.i.i67.1 = xor i32 %conv1.i.i66.1, %conv.i.i65.1
  %conv2.i.i68.1 = trunc i32 %xor.i.i67.1 to i8
  %scevgep.2 = getelementptr i8, i8* %y, i64 2
  %731 = load i8, i8* %scevgep.2, align 1
  %conv.i.i65.2 = zext i8 %731 to i32
  %conv1.i.i66.2 = zext i8 %conv2.i.i68.1 to i32
  %xor.i.i67.2 = xor i32 %conv1.i.i66.2, %conv.i.i65.2
  %conv2.i.i68.2 = trunc i32 %xor.i.i67.2 to i8
  %scevgep.3 = getelementptr i8, i8* %y, i64 3
  %732 = load i8, i8* %scevgep.3, align 1
  %conv.i.i65.3 = zext i8 %732 to i32
  %conv1.i.i66.3 = zext i8 %conv2.i.i68.2 to i32
  %xor.i.i67.3 = xor i32 %conv1.i.i66.3, %conv.i.i65.3
  %conv2.i.i68.3 = trunc i32 %xor.i.i67.3 to i8
  %conv10 = zext i8 %conv2.i.i68.3 to i32
  %cmp11 = icmp eq i32 %conv8, %conv10
  call void @assert(i1 zeroext %cmp11)
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
