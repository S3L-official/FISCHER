; ModuleID = '../examples/cassiers-tifs2020-present-sbox.inline-3.ll'
source_filename = "../examples/cassiers-tifs2020-present-sbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 3, align 4
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
  %r.i = alloca [4 x [4 x i8]], align 16
  %s.i = alloca [4 x [4 x i8]], align 16
  %p0.i = alloca [4 x [4 x i8]], align 16
  %p1.i = alloca [4 x [4 x i8]], align 16
  %z.i = alloca [4 x [4 x i8]], align 16
  %l1 = alloca [4 x i8], align 1
  %l3 = alloca [4 x i8], align 1
  %l5 = alloca [4 x i8], align 1
  %l7 = alloca [4 x i8], align 1
  %e2 = alloca [4 x i8], align 1
  %e3 = alloca [4 x i8], align 1
  %e4 = alloca [4 x i8], align 1
  %e5 = alloca [4 x i8], align 1
  %e7 = alloca [4 x i8], align 1
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %scevgep285.1 = getelementptr i8, i8* %x, i64 1
  %1 = load i8, i8* %scevgep285.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep285.2 = getelementptr i8, i8* %x, i64 2
  %2 = load i8, i8* %scevgep285.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %scevgep285.3 = getelementptr i8, i8* %x, i64 3
  %3 = load i8, i8* %scevgep285.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %conv2 = zext i8 %conv2.i.i.3 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %4 = load i8, i8* %x, align 1
  %call.i = call zeroext i8 @L1(i8 zeroext %4) #3
  %scevgep281 = getelementptr [4 x i8], [4 x i8]* %l1, i64 0, i64 0
  store i8 %call.i, i8* %scevgep281, align 1
  %scevgep280.1 = getelementptr i8, i8* %x, i64 1
  %5 = load i8, i8* %scevgep280.1, align 1
  %call.i.1 = call zeroext i8 @L1(i8 zeroext %5) #3
  %scevgep281.1 = getelementptr [4 x i8], [4 x i8]* %l1, i64 0, i64 1
  store i8 %call.i.1, i8* %scevgep281.1, align 1
  %scevgep280.2 = getelementptr i8, i8* %x, i64 2
  %6 = load i8, i8* %scevgep280.2, align 1
  %call.i.2 = call zeroext i8 @L1(i8 zeroext %6) #3
  %scevgep281.2 = getelementptr [4 x i8], [4 x i8]* %l1, i64 0, i64 2
  store i8 %call.i.2, i8* %scevgep281.2, align 1
  %scevgep280.3 = getelementptr i8, i8* %x, i64 3
  %7 = load i8, i8* %scevgep280.3, align 1
  %call.i.3 = call zeroext i8 @L1(i8 zeroext %7) #3
  %scevgep281.3 = getelementptr [4 x i8], [4 x i8]* %l1, i64 0, i64 3
  store i8 %call.i.3, i8* %scevgep281.3, align 1
  %8 = load i8, i8* %x, align 1
  %call.i54 = call zeroext i8 @square(i8 zeroext %8) #3
  %scevgep276 = getelementptr [4 x i8], [4 x i8]* %e2, i64 0, i64 0
  store i8 %call.i54, i8* %scevgep276, align 1
  %scevgep275.1 = getelementptr i8, i8* %x, i64 1
  %9 = load i8, i8* %scevgep275.1, align 1
  %call.i54.1 = call zeroext i8 @square(i8 zeroext %9) #3
  %scevgep276.1 = getelementptr [4 x i8], [4 x i8]* %e2, i64 0, i64 1
  store i8 %call.i54.1, i8* %scevgep276.1, align 1
  %scevgep275.2 = getelementptr i8, i8* %x, i64 2
  %10 = load i8, i8* %scevgep275.2, align 1
  %call.i54.2 = call zeroext i8 @square(i8 zeroext %10) #3
  %scevgep276.2 = getelementptr [4 x i8], [4 x i8]* %e2, i64 0, i64 2
  store i8 %call.i54.2, i8* %scevgep276.2, align 1
  %scevgep275.3 = getelementptr i8, i8* %x, i64 3
  %11 = load i8, i8* %scevgep275.3, align 1
  %call.i54.3 = call zeroext i8 @square(i8 zeroext %11) #3
  %scevgep276.3 = getelementptr [4 x i8], [4 x i8]* %e2, i64 0, i64 3
  store i8 %call.i54.3, i8* %scevgep276.3, align 1
  %12 = load i8, i8* %x, align 1
  %call.i68 = call zeroext i8 @exp4(i8 zeroext %12) #3
  %scevgep271 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 0
  store i8 %call.i68, i8* %scevgep271, align 1
  %scevgep270.1 = getelementptr i8, i8* %x, i64 1
  %13 = load i8, i8* %scevgep270.1, align 1
  %call.i68.1 = call zeroext i8 @exp4(i8 zeroext %13) #3
  %scevgep271.1 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 1
  store i8 %call.i68.1, i8* %scevgep271.1, align 1
  %scevgep270.2 = getelementptr i8, i8* %x, i64 2
  %14 = load i8, i8* %scevgep270.2, align 1
  %call.i68.2 = call zeroext i8 @exp4(i8 zeroext %14) #3
  %scevgep271.2 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 2
  store i8 %call.i68.2, i8* %scevgep271.2, align 1
  %scevgep270.3 = getelementptr i8, i8* %x, i64 3
  %15 = load i8, i8* %scevgep270.3, align 1
  %call.i68.3 = call zeroext i8 @exp4(i8 zeroext %15) #3
  %scevgep271.3 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 3
  store i8 %call.i68.3, i8* %scevgep271.3, align 1
  %arraydecay6 = getelementptr inbounds [4 x i8], [4 x i8]* %e2, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [4 x i8], [4 x i8]* %e3, i64 0, i64 0
  %call.i77 = call zeroext i8 (...) @rand() #3
  %call1.i = call zeroext i8 (...) @rand() #3
  %conv.i = zext i8 %call.i77 to i32
  %16 = load i8, i8* %x, align 1
  %scevgep266.1 = getelementptr i8, i8* %x, i64 1
  %17 = load i8, i8* %scevgep266.1, align 1
  %conv.i.i.i.1 = zext i8 %17 to i32
  %conv1.i.i.i.1 = zext i8 %16 to i32
  %xor.i.i.i.1 = xor i32 %conv1.i.i.i.1, %conv.i.i.i.1
  %conv2.i.i.i.1 = trunc i32 %xor.i.i.i.1 to i8
  %scevgep266.2 = getelementptr i8, i8* %x, i64 2
  %18 = load i8, i8* %scevgep266.2, align 1
  %conv.i.i.i.2 = zext i8 %18 to i32
  %conv1.i.i.i.2 = zext i8 %conv2.i.i.i.1 to i32
  %xor.i.i.i.2 = xor i32 %conv1.i.i.i.2, %conv.i.i.i.2
  %conv2.i.i.i.2 = trunc i32 %xor.i.i.i.2 to i8
  %scevgep266.3 = getelementptr i8, i8* %x, i64 3
  %19 = load i8, i8* %scevgep266.3, align 1
  %conv.i.i.i.3 = zext i8 %19 to i32
  %conv1.i.i.i.3 = zext i8 %conv2.i.i.i.2 to i32
  %xor.i.i.i.3 = xor i32 %conv1.i.i.i.3, %conv.i.i.i.3
  %conv2.i.i.i.3 = trunc i32 %xor.i.i.i.3 to i8
  %conv3.i = zext i8 %conv2.i.i.i.3 to i32
  %cmp.i78 = icmp eq i32 %conv.i, %conv3.i
  call void @assume(i1 zeroext %cmp.i78) #3
  %conv5.i = zext i8 %call1.i to i32
  %scevgep262 = getelementptr [4 x i8], [4 x i8]* %e2, i64 0, i64 0
  %20 = load i8, i8* %scevgep262, align 1
  %scevgep262.1 = getelementptr [4 x i8], [4 x i8]* %e2, i64 0, i64 1
  %21 = load i8, i8* %scevgep262.1, align 1
  %conv.i.i155.i.1 = zext i8 %21 to i32
  %conv1.i.i156.i.1 = zext i8 %20 to i32
  %xor.i.i157.i.1 = xor i32 %conv1.i.i156.i.1, %conv.i.i155.i.1
  %conv2.i.i158.i.1 = trunc i32 %xor.i.i157.i.1 to i8
  %scevgep262.2 = getelementptr [4 x i8], [4 x i8]* %e2, i64 0, i64 2
  %22 = load i8, i8* %scevgep262.2, align 1
  %conv.i.i155.i.2 = zext i8 %22 to i32
  %conv1.i.i156.i.2 = zext i8 %conv2.i.i158.i.1 to i32
  %xor.i.i157.i.2 = xor i32 %conv1.i.i156.i.2, %conv.i.i155.i.2
  %conv2.i.i158.i.2 = trunc i32 %xor.i.i157.i.2 to i8
  %scevgep262.3 = getelementptr [4 x i8], [4 x i8]* %e2, i64 0, i64 3
  %23 = load i8, i8* %scevgep262.3, align 1
  %conv.i.i155.i.3 = zext i8 %23 to i32
  %conv1.i.i156.i.3 = zext i8 %conv2.i.i158.i.2 to i32
  %xor.i.i157.i.3 = xor i32 %conv1.i.i156.i.3, %conv.i.i155.i.3
  %conv2.i.i158.i.3 = trunc i32 %xor.i.i157.i.3 to i8
  %conv7.i = zext i8 %conv2.i.i158.i.3 to i32
  %cmp8.i = icmp eq i32 %conv5.i, %conv7.i
  call void @assume(i1 zeroext %cmp8.i) #3
  %call16.i = call zeroext i8 (...) @rand() #3
  %scevgep252 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i, i8* %scevgep252, align 1
  %scevgep253 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %24 = load i8, i8* %scevgep253, align 1
  %scevgep254 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %24, i8* %scevgep254, align 1
  %call16.i.1629 = call zeroext i8 (...) @rand() #3
  %scevgep252.1630 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  store i8 %call16.i.1629, i8* %scevgep252.1630, align 1
  %scevgep253.1631 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %25 = load i8, i8* %scevgep253.1631, align 1
  %scevgep254.1632 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 2, i64 0
  store i8 %25, i8* %scevgep254.1632, align 1
  %call16.i.2634 = call zeroext i8 (...) @rand() #3
  %scevgep252.2635 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  store i8 %call16.i.2634, i8* %scevgep252.2635, align 1
  %scevgep253.2636 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %26 = load i8, i8* %scevgep253.2636, align 1
  %scevgep254.2637 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 3, i64 0
  store i8 %26, i8* %scevgep254.2637, align 1
  %scevgep249 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 1
  %27 = bitcast i8* %scevgep249 to [4 x [4 x i8]]*
  %call16.i.1 = call zeroext i8 (...) @rand() #3
  %scevgep252.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %27, i64 0, i64 0, i64 1
  store i8 %call16.i.1, i8* %scevgep252.1, align 1
  %scevgep253.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %27, i64 0, i64 0, i64 1
  %28 = load i8, i8* %scevgep253.1, align 1
  %scevgep254.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %27, i64 0, i64 1, i64 0
  store i8 %28, i8* %scevgep254.1, align 1
  %call16.i.1.1 = call zeroext i8 (...) @rand() #3
  %scevgep252.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %27, i64 0, i64 0, i64 2
  store i8 %call16.i.1.1, i8* %scevgep252.1.1, align 1
  %scevgep253.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %27, i64 0, i64 0, i64 2
  %29 = load i8, i8* %scevgep253.1.1, align 1
  %scevgep254.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %27, i64 0, i64 2, i64 0
  store i8 %29, i8* %scevgep254.1.1, align 1
  %scevgep249.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %27, i64 0, i64 1, i64 1
  %30 = bitcast i8* %scevgep249.1 to [4 x [4 x i8]]*
  %call16.i.2 = call zeroext i8 (...) @rand() #3
  %scevgep252.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %30, i64 0, i64 0, i64 1
  store i8 %call16.i.2, i8* %scevgep252.2, align 1
  %scevgep253.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %30, i64 0, i64 0, i64 1
  %31 = load i8, i8* %scevgep253.2, align 1
  %scevgep254.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %30, i64 0, i64 1, i64 0
  store i8 %31, i8* %scevgep254.2, align 1
  %scevgep225.1 = getelementptr [4 x i8], [4 x i8]* %e2, i64 0, i64 1
  %32 = load i8, i8* %scevgep225.1, align 1
  %conv44.i.1 = zext i8 %32 to i32
  %scevgep228.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %33 = load i8, i8* %scevgep228.1, align 1
  %conv49.i.1 = zext i8 %33 to i32
  %xor.i.1 = xor i32 %conv44.i.1, %conv49.i.1
  %conv50.i.1 = trunc i32 %xor.i.1 to i8
  %scevgep232.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i.1, i8* %scevgep232.1, align 1
  %34 = load i8, i8* %x, align 1
  %conv57.i.1 = zext i8 %34 to i32
  %xor58.i.1 = xor i32 %conv57.i.1, 1
  %conv59.i.1 = trunc i32 %xor58.i.1 to i8
  %scevgep229.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %35 = load i8, i8* %scevgep229.1, align 1
  %call64.i.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.1, i8 zeroext %35) #3
  %scevgep236.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i.1, i8* %scevgep236.1, align 1
  %36 = load i8, i8* %x, align 1
  %scevgep233.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 1
  %37 = load i8, i8* %scevgep233.1, align 1
  %call75.i.1 = call zeroext i8 @mult(i8 zeroext %36, i8 zeroext %37) #3
  %scevgep240.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i.1, i8* %scevgep240.1, align 1
  %scevgep237.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %38 = load i8, i8* %scevgep237.1, align 1
  %conv84.i.1 = zext i8 %38 to i32
  %scevgep241.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %39 = load i8, i8* %scevgep241.1, align 1
  %conv89.i.1 = zext i8 %39 to i32
  %xor90.i.1 = xor i32 %conv84.i.1, %conv89.i.1
  %conv91.i.1 = trunc i32 %xor90.i.1 to i8
  %scevgep244.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i.1, i8* %scevgep244.1, align 1
  %scevgep225.2 = getelementptr [4 x i8], [4 x i8]* %e2, i64 0, i64 2
  %40 = load i8, i8* %scevgep225.2, align 1
  %conv44.i.2 = zext i8 %40 to i32
  %scevgep228.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %41 = load i8, i8* %scevgep228.2, align 1
  %conv49.i.2 = zext i8 %41 to i32
  %xor.i.2 = xor i32 %conv44.i.2, %conv49.i.2
  %conv50.i.2 = trunc i32 %xor.i.2 to i8
  %scevgep232.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 2
  store i8 %conv50.i.2, i8* %scevgep232.2, align 1
  %42 = load i8, i8* %x, align 1
  %conv57.i.2 = zext i8 %42 to i32
  %xor58.i.2 = xor i32 %conv57.i.2, 1
  %conv59.i.2 = trunc i32 %xor58.i.2 to i8
  %scevgep229.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %43 = load i8, i8* %scevgep229.2, align 1
  %call64.i.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.2, i8 zeroext %43) #3
  %scevgep236.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 2
  store i8 %call64.i.2, i8* %scevgep236.2, align 1
  %44 = load i8, i8* %x, align 1
  %scevgep233.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 2
  %45 = load i8, i8* %scevgep233.2, align 1
  %call75.i.2 = call zeroext i8 @mult(i8 zeroext %44, i8 zeroext %45) #3
  %scevgep240.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 2
  store i8 %call75.i.2, i8* %scevgep240.2, align 1
  %scevgep237.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 2
  %46 = load i8, i8* %scevgep237.2, align 1
  %conv84.i.2 = zext i8 %46 to i32
  %scevgep241.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 2
  %47 = load i8, i8* %scevgep241.2, align 1
  %conv89.i.2 = zext i8 %47 to i32
  %xor90.i.2 = xor i32 %conv84.i.2, %conv89.i.2
  %conv91.i.2 = trunc i32 %xor90.i.2 to i8
  %scevgep244.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 2
  store i8 %conv91.i.2, i8* %scevgep244.2, align 1
  %scevgep225.3 = getelementptr [4 x i8], [4 x i8]* %e2, i64 0, i64 3
  %48 = load i8, i8* %scevgep225.3, align 1
  %conv44.i.3 = zext i8 %48 to i32
  %scevgep228.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %49 = load i8, i8* %scevgep228.3, align 1
  %conv49.i.3 = zext i8 %49 to i32
  %xor.i.3 = xor i32 %conv44.i.3, %conv49.i.3
  %conv50.i.3 = trunc i32 %xor.i.3 to i8
  %scevgep232.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 3
  store i8 %conv50.i.3, i8* %scevgep232.3, align 1
  %50 = load i8, i8* %x, align 1
  %conv57.i.3 = zext i8 %50 to i32
  %xor58.i.3 = xor i32 %conv57.i.3, 1
  %conv59.i.3 = trunc i32 %xor58.i.3 to i8
  %scevgep229.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %51 = load i8, i8* %scevgep229.3, align 1
  %call64.i.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.3, i8 zeroext %51) #3
  %scevgep236.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 3
  store i8 %call64.i.3, i8* %scevgep236.3, align 1
  %52 = load i8, i8* %x, align 1
  %scevgep233.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 3
  %53 = load i8, i8* %scevgep233.3, align 1
  %call75.i.3 = call zeroext i8 @mult(i8 zeroext %52, i8 zeroext %53) #3
  %scevgep240.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 3
  store i8 %call75.i.3, i8* %scevgep240.3, align 1
  %scevgep237.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 3
  %54 = load i8, i8* %scevgep237.3, align 1
  %conv84.i.3 = zext i8 %54 to i32
  %scevgep241.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 3
  %55 = load i8, i8* %scevgep241.3, align 1
  %conv89.i.3 = zext i8 %55 to i32
  %xor90.i.3 = xor i32 %conv84.i.3, %conv89.i.3
  %conv91.i.3 = trunc i32 %xor90.i.3 to i8
  %scevgep244.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 3
  store i8 %conv91.i.3, i8* %scevgep244.3, align 1
  %scevgep227 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  %56 = bitcast i8* %scevgep227 to [4 x [4 x i8]]*
  %scevgep231 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 1, i64 0
  %57 = bitcast i8* %scevgep231 to [4 x [4 x i8]]*
  %scevgep235 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %58 = bitcast i8* %scevgep235 to [4 x [4 x i8]]*
  %scevgep239 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %59 = bitcast i8* %scevgep239 to [4 x [4 x i8]]*
  %scevgep243 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 1, i64 0
  %60 = bitcast i8* %scevgep243 to [4 x [4 x i8]]*
  %arrayidx56.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %arrayidx70.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %scevgep225.1532 = getelementptr [4 x i8], [4 x i8]* %e2, i64 0, i64 0
  %61 = load i8, i8* %scevgep225.1532, align 1
  %conv44.i.1533 = zext i8 %61 to i32
  %scevgep228.1534 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %56, i64 0, i64 0, i64 0
  %62 = load i8, i8* %scevgep228.1534, align 1
  %conv49.i.1535 = zext i8 %62 to i32
  %xor.i.1536 = xor i32 %conv44.i.1533, %conv49.i.1535
  %conv50.i.1537 = trunc i32 %xor.i.1536 to i8
  %scevgep232.1538 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %57, i64 0, i64 0, i64 0
  store i8 %conv50.i.1537, i8* %scevgep232.1538, align 1
  %63 = load i8, i8* %arrayidx56.i.1, align 1
  %conv57.i.1539 = zext i8 %63 to i32
  %xor58.i.1540 = xor i32 %conv57.i.1539, 1
  %conv59.i.1541 = trunc i32 %xor58.i.1540 to i8
  %scevgep229.1542 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %56, i64 0, i64 0, i64 0
  %64 = load i8, i8* %scevgep229.1542, align 1
  %call64.i.1543 = call zeroext i8 @mult(i8 zeroext %conv59.i.1541, i8 zeroext %64) #3
  %scevgep236.1544 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %58, i64 0, i64 0, i64 0
  store i8 %call64.i.1543, i8* %scevgep236.1544, align 1
  %65 = load i8, i8* %arrayidx70.i.1, align 1
  %scevgep233.1545 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %57, i64 0, i64 0, i64 0
  %66 = load i8, i8* %scevgep233.1545, align 1
  %call75.i.1546 = call zeroext i8 @mult(i8 zeroext %65, i8 zeroext %66) #3
  %scevgep240.1547 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %59, i64 0, i64 0, i64 0
  store i8 %call75.i.1546, i8* %scevgep240.1547, align 1
  %scevgep237.1548 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %58, i64 0, i64 0, i64 0
  %67 = load i8, i8* %scevgep237.1548, align 1
  %conv84.i.1549 = zext i8 %67 to i32
  %scevgep241.1550 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %59, i64 0, i64 0, i64 0
  %68 = load i8, i8* %scevgep241.1550, align 1
  %conv89.i.1551 = zext i8 %68 to i32
  %xor90.i.1552 = xor i32 %conv84.i.1549, %conv89.i.1551
  %conv91.i.1553 = trunc i32 %xor90.i.1552 to i8
  %scevgep244.1554 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %60, i64 0, i64 0, i64 0
  store i8 %conv91.i.1553, i8* %scevgep244.1554, align 1
  %scevgep225.2.1 = getelementptr [4 x i8], [4 x i8]* %e2, i64 0, i64 2
  %69 = load i8, i8* %scevgep225.2.1, align 1
  %conv44.i.2.1 = zext i8 %69 to i32
  %scevgep228.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %56, i64 0, i64 0, i64 2
  %70 = load i8, i8* %scevgep228.2.1, align 1
  %conv49.i.2.1 = zext i8 %70 to i32
  %xor.i.2.1 = xor i32 %conv44.i.2.1, %conv49.i.2.1
  %conv50.i.2.1 = trunc i32 %xor.i.2.1 to i8
  %scevgep232.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %57, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.1, i8* %scevgep232.2.1, align 1
  %71 = load i8, i8* %arrayidx56.i.1, align 1
  %conv57.i.2.1 = zext i8 %71 to i32
  %xor58.i.2.1 = xor i32 %conv57.i.2.1, 1
  %conv59.i.2.1 = trunc i32 %xor58.i.2.1 to i8
  %scevgep229.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %56, i64 0, i64 0, i64 2
  %72 = load i8, i8* %scevgep229.2.1, align 1
  %call64.i.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.1, i8 zeroext %72) #3
  %scevgep236.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %58, i64 0, i64 0, i64 2
  store i8 %call64.i.2.1, i8* %scevgep236.2.1, align 1
  %73 = load i8, i8* %arrayidx70.i.1, align 1
  %scevgep233.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %57, i64 0, i64 0, i64 2
  %74 = load i8, i8* %scevgep233.2.1, align 1
  %call75.i.2.1 = call zeroext i8 @mult(i8 zeroext %73, i8 zeroext %74) #3
  %scevgep240.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %59, i64 0, i64 0, i64 2
  store i8 %call75.i.2.1, i8* %scevgep240.2.1, align 1
  %scevgep237.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %58, i64 0, i64 0, i64 2
  %75 = load i8, i8* %scevgep237.2.1, align 1
  %conv84.i.2.1 = zext i8 %75 to i32
  %scevgep241.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %59, i64 0, i64 0, i64 2
  %76 = load i8, i8* %scevgep241.2.1, align 1
  %conv89.i.2.1 = zext i8 %76 to i32
  %xor90.i.2.1 = xor i32 %conv84.i.2.1, %conv89.i.2.1
  %conv91.i.2.1 = trunc i32 %xor90.i.2.1 to i8
  %scevgep244.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %60, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.1, i8* %scevgep244.2.1, align 1
  %scevgep225.3.1 = getelementptr [4 x i8], [4 x i8]* %e2, i64 0, i64 3
  %77 = load i8, i8* %scevgep225.3.1, align 1
  %conv44.i.3.1 = zext i8 %77 to i32
  %scevgep228.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %56, i64 0, i64 0, i64 3
  %78 = load i8, i8* %scevgep228.3.1, align 1
  %conv49.i.3.1 = zext i8 %78 to i32
  %xor.i.3.1 = xor i32 %conv44.i.3.1, %conv49.i.3.1
  %conv50.i.3.1 = trunc i32 %xor.i.3.1 to i8
  %scevgep232.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %57, i64 0, i64 0, i64 3
  store i8 %conv50.i.3.1, i8* %scevgep232.3.1, align 1
  %79 = load i8, i8* %arrayidx56.i.1, align 1
  %conv57.i.3.1 = zext i8 %79 to i32
  %xor58.i.3.1 = xor i32 %conv57.i.3.1, 1
  %conv59.i.3.1 = trunc i32 %xor58.i.3.1 to i8
  %scevgep229.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %56, i64 0, i64 0, i64 3
  %80 = load i8, i8* %scevgep229.3.1, align 1
  %call64.i.3.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.3.1, i8 zeroext %80) #3
  %scevgep236.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %58, i64 0, i64 0, i64 3
  store i8 %call64.i.3.1, i8* %scevgep236.3.1, align 1
  %81 = load i8, i8* %arrayidx70.i.1, align 1
  %scevgep233.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %57, i64 0, i64 0, i64 3
  %82 = load i8, i8* %scevgep233.3.1, align 1
  %call75.i.3.1 = call zeroext i8 @mult(i8 zeroext %81, i8 zeroext %82) #3
  %scevgep240.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %59, i64 0, i64 0, i64 3
  store i8 %call75.i.3.1, i8* %scevgep240.3.1, align 1
  %scevgep237.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %58, i64 0, i64 0, i64 3
  %83 = load i8, i8* %scevgep237.3.1, align 1
  %conv84.i.3.1 = zext i8 %83 to i32
  %scevgep241.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %59, i64 0, i64 0, i64 3
  %84 = load i8, i8* %scevgep241.3.1, align 1
  %conv89.i.3.1 = zext i8 %84 to i32
  %xor90.i.3.1 = xor i32 %conv84.i.3.1, %conv89.i.3.1
  %conv91.i.3.1 = trunc i32 %xor90.i.3.1 to i8
  %scevgep244.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %60, i64 0, i64 0, i64 3
  store i8 %conv91.i.3.1, i8* %scevgep244.3.1, align 1
  %scevgep227.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %56, i64 0, i64 1, i64 0
  %85 = bitcast i8* %scevgep227.1 to [4 x [4 x i8]]*
  %scevgep231.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %57, i64 0, i64 1, i64 0
  %86 = bitcast i8* %scevgep231.1 to [4 x [4 x i8]]*
  %scevgep235.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %58, i64 0, i64 1, i64 0
  %87 = bitcast i8* %scevgep235.1 to [4 x [4 x i8]]*
  %scevgep239.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %59, i64 0, i64 1, i64 0
  %88 = bitcast i8* %scevgep239.1 to [4 x [4 x i8]]*
  %scevgep243.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %60, i64 0, i64 1, i64 0
  %89 = bitcast i8* %scevgep243.1 to [4 x [4 x i8]]*
  %arrayidx56.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %arrayidx70.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %scevgep225.2559 = getelementptr [4 x i8], [4 x i8]* %e2, i64 0, i64 0
  %90 = load i8, i8* %scevgep225.2559, align 1
  %conv44.i.2560 = zext i8 %90 to i32
  %scevgep228.2561 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %85, i64 0, i64 0, i64 0
  %91 = load i8, i8* %scevgep228.2561, align 1
  %conv49.i.2562 = zext i8 %91 to i32
  %xor.i.2563 = xor i32 %conv44.i.2560, %conv49.i.2562
  %conv50.i.2564 = trunc i32 %xor.i.2563 to i8
  %scevgep232.2565 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %86, i64 0, i64 0, i64 0
  store i8 %conv50.i.2564, i8* %scevgep232.2565, align 1
  %92 = load i8, i8* %arrayidx56.i.2, align 1
  %conv57.i.2566 = zext i8 %92 to i32
  %xor58.i.2567 = xor i32 %conv57.i.2566, 1
  %conv59.i.2568 = trunc i32 %xor58.i.2567 to i8
  %scevgep229.2569 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %85, i64 0, i64 0, i64 0
  %93 = load i8, i8* %scevgep229.2569, align 1
  %call64.i.2570 = call zeroext i8 @mult(i8 zeroext %conv59.i.2568, i8 zeroext %93) #3
  %scevgep236.2571 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %87, i64 0, i64 0, i64 0
  store i8 %call64.i.2570, i8* %scevgep236.2571, align 1
  %94 = load i8, i8* %arrayidx70.i.2, align 1
  %scevgep233.2572 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %86, i64 0, i64 0, i64 0
  %95 = load i8, i8* %scevgep233.2572, align 1
  %call75.i.2573 = call zeroext i8 @mult(i8 zeroext %94, i8 zeroext %95) #3
  %scevgep240.2574 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %88, i64 0, i64 0, i64 0
  store i8 %call75.i.2573, i8* %scevgep240.2574, align 1
  %scevgep237.2575 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %87, i64 0, i64 0, i64 0
  %96 = load i8, i8* %scevgep237.2575, align 1
  %conv84.i.2576 = zext i8 %96 to i32
  %scevgep241.2577 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %88, i64 0, i64 0, i64 0
  %97 = load i8, i8* %scevgep241.2577, align 1
  %conv89.i.2578 = zext i8 %97 to i32
  %xor90.i.2579 = xor i32 %conv84.i.2576, %conv89.i.2578
  %conv91.i.2580 = trunc i32 %xor90.i.2579 to i8
  %scevgep244.2581 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %89, i64 0, i64 0, i64 0
  store i8 %conv91.i.2580, i8* %scevgep244.2581, align 1
  %scevgep225.1.2 = getelementptr [4 x i8], [4 x i8]* %e2, i64 0, i64 1
  %98 = load i8, i8* %scevgep225.1.2, align 1
  %conv44.i.1.2 = zext i8 %98 to i32
  %scevgep228.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %85, i64 0, i64 0, i64 1
  %99 = load i8, i8* %scevgep228.1.2, align 1
  %conv49.i.1.2 = zext i8 %99 to i32
  %xor.i.1.2 = xor i32 %conv44.i.1.2, %conv49.i.1.2
  %conv50.i.1.2 = trunc i32 %xor.i.1.2 to i8
  %scevgep232.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %86, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.2, i8* %scevgep232.1.2, align 1
  %100 = load i8, i8* %arrayidx56.i.2, align 1
  %conv57.i.1.2 = zext i8 %100 to i32
  %xor58.i.1.2 = xor i32 %conv57.i.1.2, 1
  %conv59.i.1.2 = trunc i32 %xor58.i.1.2 to i8
  %scevgep229.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %85, i64 0, i64 0, i64 1
  %101 = load i8, i8* %scevgep229.1.2, align 1
  %call64.i.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.2, i8 zeroext %101) #3
  %scevgep236.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %87, i64 0, i64 0, i64 1
  store i8 %call64.i.1.2, i8* %scevgep236.1.2, align 1
  %102 = load i8, i8* %arrayidx70.i.2, align 1
  %scevgep233.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %86, i64 0, i64 0, i64 1
  %103 = load i8, i8* %scevgep233.1.2, align 1
  %call75.i.1.2 = call zeroext i8 @mult(i8 zeroext %102, i8 zeroext %103) #3
  %scevgep240.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %88, i64 0, i64 0, i64 1
  store i8 %call75.i.1.2, i8* %scevgep240.1.2, align 1
  %scevgep237.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %87, i64 0, i64 0, i64 1
  %104 = load i8, i8* %scevgep237.1.2, align 1
  %conv84.i.1.2 = zext i8 %104 to i32
  %scevgep241.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %88, i64 0, i64 0, i64 1
  %105 = load i8, i8* %scevgep241.1.2, align 1
  %conv89.i.1.2 = zext i8 %105 to i32
  %xor90.i.1.2 = xor i32 %conv84.i.1.2, %conv89.i.1.2
  %conv91.i.1.2 = trunc i32 %xor90.i.1.2 to i8
  %scevgep244.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %89, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.2, i8* %scevgep244.1.2, align 1
  %scevgep225.3.2 = getelementptr [4 x i8], [4 x i8]* %e2, i64 0, i64 3
  %106 = load i8, i8* %scevgep225.3.2, align 1
  %conv44.i.3.2 = zext i8 %106 to i32
  %scevgep228.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %85, i64 0, i64 0, i64 3
  %107 = load i8, i8* %scevgep228.3.2, align 1
  %conv49.i.3.2 = zext i8 %107 to i32
  %xor.i.3.2 = xor i32 %conv44.i.3.2, %conv49.i.3.2
  %conv50.i.3.2 = trunc i32 %xor.i.3.2 to i8
  %scevgep232.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %86, i64 0, i64 0, i64 3
  store i8 %conv50.i.3.2, i8* %scevgep232.3.2, align 1
  %108 = load i8, i8* %arrayidx56.i.2, align 1
  %conv57.i.3.2 = zext i8 %108 to i32
  %xor58.i.3.2 = xor i32 %conv57.i.3.2, 1
  %conv59.i.3.2 = trunc i32 %xor58.i.3.2 to i8
  %scevgep229.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %85, i64 0, i64 0, i64 3
  %109 = load i8, i8* %scevgep229.3.2, align 1
  %call64.i.3.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.3.2, i8 zeroext %109) #3
  %scevgep236.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %87, i64 0, i64 0, i64 3
  store i8 %call64.i.3.2, i8* %scevgep236.3.2, align 1
  %110 = load i8, i8* %arrayidx70.i.2, align 1
  %scevgep233.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %86, i64 0, i64 0, i64 3
  %111 = load i8, i8* %scevgep233.3.2, align 1
  %call75.i.3.2 = call zeroext i8 @mult(i8 zeroext %110, i8 zeroext %111) #3
  %scevgep240.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %88, i64 0, i64 0, i64 3
  store i8 %call75.i.3.2, i8* %scevgep240.3.2, align 1
  %scevgep237.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %87, i64 0, i64 0, i64 3
  %112 = load i8, i8* %scevgep237.3.2, align 1
  %conv84.i.3.2 = zext i8 %112 to i32
  %scevgep241.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %88, i64 0, i64 0, i64 3
  %113 = load i8, i8* %scevgep241.3.2, align 1
  %conv89.i.3.2 = zext i8 %113 to i32
  %xor90.i.3.2 = xor i32 %conv84.i.3.2, %conv89.i.3.2
  %conv91.i.3.2 = trunc i32 %xor90.i.3.2 to i8
  %scevgep244.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %89, i64 0, i64 0, i64 3
  store i8 %conv91.i.3.2, i8* %scevgep244.3.2, align 1
  %scevgep227.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %85, i64 0, i64 1, i64 0
  %114 = bitcast i8* %scevgep227.2 to [4 x [4 x i8]]*
  %scevgep231.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %86, i64 0, i64 1, i64 0
  %115 = bitcast i8* %scevgep231.2 to [4 x [4 x i8]]*
  %scevgep235.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %87, i64 0, i64 1, i64 0
  %116 = bitcast i8* %scevgep235.2 to [4 x [4 x i8]]*
  %scevgep239.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %88, i64 0, i64 1, i64 0
  %117 = bitcast i8* %scevgep239.2 to [4 x [4 x i8]]*
  %scevgep243.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %89, i64 0, i64 1, i64 0
  %118 = bitcast i8* %scevgep243.2 to [4 x [4 x i8]]*
  %arrayidx56.i.3 = getelementptr inbounds i8, i8* %x, i64 3
  %arrayidx70.i.3 = getelementptr inbounds i8, i8* %x, i64 3
  %scevgep225.3586 = getelementptr [4 x i8], [4 x i8]* %e2, i64 0, i64 0
  %119 = load i8, i8* %scevgep225.3586, align 1
  %conv44.i.3587 = zext i8 %119 to i32
  %scevgep228.3588 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %114, i64 0, i64 0, i64 0
  %120 = load i8, i8* %scevgep228.3588, align 1
  %conv49.i.3589 = zext i8 %120 to i32
  %xor.i.3590 = xor i32 %conv44.i.3587, %conv49.i.3589
  %conv50.i.3591 = trunc i32 %xor.i.3590 to i8
  %scevgep232.3592 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %115, i64 0, i64 0, i64 0
  store i8 %conv50.i.3591, i8* %scevgep232.3592, align 1
  %121 = load i8, i8* %arrayidx56.i.3, align 1
  %conv57.i.3593 = zext i8 %121 to i32
  %xor58.i.3594 = xor i32 %conv57.i.3593, 1
  %conv59.i.3595 = trunc i32 %xor58.i.3594 to i8
  %scevgep229.3596 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %114, i64 0, i64 0, i64 0
  %122 = load i8, i8* %scevgep229.3596, align 1
  %call64.i.3597 = call zeroext i8 @mult(i8 zeroext %conv59.i.3595, i8 zeroext %122) #3
  %scevgep236.3598 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %116, i64 0, i64 0, i64 0
  store i8 %call64.i.3597, i8* %scevgep236.3598, align 1
  %123 = load i8, i8* %arrayidx70.i.3, align 1
  %scevgep233.3599 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %115, i64 0, i64 0, i64 0
  %124 = load i8, i8* %scevgep233.3599, align 1
  %call75.i.3600 = call zeroext i8 @mult(i8 zeroext %123, i8 zeroext %124) #3
  %scevgep240.3601 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %117, i64 0, i64 0, i64 0
  store i8 %call75.i.3600, i8* %scevgep240.3601, align 1
  %scevgep237.3602 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %116, i64 0, i64 0, i64 0
  %125 = load i8, i8* %scevgep237.3602, align 1
  %conv84.i.3603 = zext i8 %125 to i32
  %scevgep241.3604 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %117, i64 0, i64 0, i64 0
  %126 = load i8, i8* %scevgep241.3604, align 1
  %conv89.i.3605 = zext i8 %126 to i32
  %xor90.i.3606 = xor i32 %conv84.i.3603, %conv89.i.3605
  %conv91.i.3607 = trunc i32 %xor90.i.3606 to i8
  %scevgep244.3608 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %118, i64 0, i64 0, i64 0
  store i8 %conv91.i.3607, i8* %scevgep244.3608, align 1
  %scevgep225.1.3 = getelementptr [4 x i8], [4 x i8]* %e2, i64 0, i64 1
  %127 = load i8, i8* %scevgep225.1.3, align 1
  %conv44.i.1.3 = zext i8 %127 to i32
  %scevgep228.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %114, i64 0, i64 0, i64 1
  %128 = load i8, i8* %scevgep228.1.3, align 1
  %conv49.i.1.3 = zext i8 %128 to i32
  %xor.i.1.3 = xor i32 %conv44.i.1.3, %conv49.i.1.3
  %conv50.i.1.3 = trunc i32 %xor.i.1.3 to i8
  %scevgep232.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %115, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.3, i8* %scevgep232.1.3, align 1
  %129 = load i8, i8* %arrayidx56.i.3, align 1
  %conv57.i.1.3 = zext i8 %129 to i32
  %xor58.i.1.3 = xor i32 %conv57.i.1.3, 1
  %conv59.i.1.3 = trunc i32 %xor58.i.1.3 to i8
  %scevgep229.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %114, i64 0, i64 0, i64 1
  %130 = load i8, i8* %scevgep229.1.3, align 1
  %call64.i.1.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.3, i8 zeroext %130) #3
  %scevgep236.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %116, i64 0, i64 0, i64 1
  store i8 %call64.i.1.3, i8* %scevgep236.1.3, align 1
  %131 = load i8, i8* %arrayidx70.i.3, align 1
  %scevgep233.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %115, i64 0, i64 0, i64 1
  %132 = load i8, i8* %scevgep233.1.3, align 1
  %call75.i.1.3 = call zeroext i8 @mult(i8 zeroext %131, i8 zeroext %132) #3
  %scevgep240.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %117, i64 0, i64 0, i64 1
  store i8 %call75.i.1.3, i8* %scevgep240.1.3, align 1
  %scevgep237.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %116, i64 0, i64 0, i64 1
  %133 = load i8, i8* %scevgep237.1.3, align 1
  %conv84.i.1.3 = zext i8 %133 to i32
  %scevgep241.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %117, i64 0, i64 0, i64 1
  %134 = load i8, i8* %scevgep241.1.3, align 1
  %conv89.i.1.3 = zext i8 %134 to i32
  %xor90.i.1.3 = xor i32 %conv84.i.1.3, %conv89.i.1.3
  %conv91.i.1.3 = trunc i32 %xor90.i.1.3 to i8
  %scevgep244.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %118, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.3, i8* %scevgep244.1.3, align 1
  %scevgep225.2.3 = getelementptr [4 x i8], [4 x i8]* %e2, i64 0, i64 2
  %135 = load i8, i8* %scevgep225.2.3, align 1
  %conv44.i.2.3 = zext i8 %135 to i32
  %scevgep228.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %114, i64 0, i64 0, i64 2
  %136 = load i8, i8* %scevgep228.2.3, align 1
  %conv49.i.2.3 = zext i8 %136 to i32
  %xor.i.2.3 = xor i32 %conv44.i.2.3, %conv49.i.2.3
  %conv50.i.2.3 = trunc i32 %xor.i.2.3 to i8
  %scevgep232.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %115, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.3, i8* %scevgep232.2.3, align 1
  %137 = load i8, i8* %arrayidx56.i.3, align 1
  %conv57.i.2.3 = zext i8 %137 to i32
  %xor58.i.2.3 = xor i32 %conv57.i.2.3, 1
  %conv59.i.2.3 = trunc i32 %xor58.i.2.3 to i8
  %scevgep229.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %114, i64 0, i64 0, i64 2
  %138 = load i8, i8* %scevgep229.2.3, align 1
  %call64.i.2.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.3, i8 zeroext %138) #3
  %scevgep236.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %116, i64 0, i64 0, i64 2
  store i8 %call64.i.2.3, i8* %scevgep236.2.3, align 1
  %139 = load i8, i8* %arrayidx70.i.3, align 1
  %scevgep233.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %115, i64 0, i64 0, i64 2
  %140 = load i8, i8* %scevgep233.2.3, align 1
  %call75.i.2.3 = call zeroext i8 @mult(i8 zeroext %139, i8 zeroext %140) #3
  %scevgep240.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %117, i64 0, i64 0, i64 2
  store i8 %call75.i.2.3, i8* %scevgep240.2.3, align 1
  %scevgep237.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %116, i64 0, i64 0, i64 2
  %141 = load i8, i8* %scevgep237.2.3, align 1
  %conv84.i.2.3 = zext i8 %141 to i32
  %scevgep241.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %117, i64 0, i64 0, i64 2
  %142 = load i8, i8* %scevgep241.2.3, align 1
  %conv89.i.2.3 = zext i8 %142 to i32
  %xor90.i.2.3 = xor i32 %conv84.i.2.3, %conv89.i.2.3
  %conv91.i.2.3 = trunc i32 %xor90.i.2.3 to i8
  %scevgep244.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %118, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.3, i8* %scevgep244.2.3, align 1
  %143 = load i8, i8* %x, align 1
  %144 = load i8, i8* %arraydecay6, align 1
  %call111.i = call zeroext i8 @mult(i8 zeroext %143, i8 zeroext %144) #3
  store i8 %call111.i, i8* %arraydecay7, align 1
  %scevgep215.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 1
  %145 = load i8, i8* %scevgep215.1, align 1
  %conv126.i.1 = zext i8 %145 to i32
  %146 = load i8, i8* %arraydecay7, align 1
  %conv129.i.1 = zext i8 %146 to i32
  %xor130.i.1 = xor i32 %conv129.i.1, %conv126.i.1
  %conv131.i.1 = trunc i32 %xor130.i.1 to i8
  store i8 %conv131.i.1, i8* %arraydecay7, align 1
  %scevgep215.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 2
  %147 = load i8, i8* %scevgep215.2, align 1
  %conv126.i.2 = zext i8 %147 to i32
  %148 = load i8, i8* %arraydecay7, align 1
  %conv129.i.2 = zext i8 %148 to i32
  %xor130.i.2 = xor i32 %conv129.i.2, %conv126.i.2
  %conv131.i.2 = trunc i32 %xor130.i.2 to i8
  store i8 %conv131.i.2, i8* %arraydecay7, align 1
  %scevgep215.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 3
  %149 = load i8, i8* %scevgep215.3, align 1
  %conv126.i.3 = zext i8 %149 to i32
  %150 = load i8, i8* %arraydecay7, align 1
  %conv129.i.3 = zext i8 %150 to i32
  %xor130.i.3 = xor i32 %conv129.i.3, %conv126.i.3
  %conv131.i.3 = trunc i32 %xor130.i.3 to i8
  store i8 %conv131.i.3, i8* %arraydecay7, align 1
  %scevgep214 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 1, i64 0
  %151 = bitcast i8* %scevgep214 to [4 x [4 x i8]]*
  %arrayidx108.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %152 = load i8, i8* %arrayidx108.i.1, align 1
  %arrayidx110.i.1 = getelementptr inbounds i8, i8* %arraydecay6, i64 1
  %153 = load i8, i8* %arrayidx110.i.1, align 1
  %call111.i.1 = call zeroext i8 @mult(i8 zeroext %152, i8 zeroext %153) #3
  %arrayidx113.i.1 = getelementptr inbounds i8, i8* %arraydecay7, i64 1
  store i8 %call111.i.1, i8* %arrayidx113.i.1, align 1
  %arrayidx128.i.1 = getelementptr inbounds i8, i8* %arraydecay7, i64 1
  %scevgep215.1505 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %151, i64 0, i64 0, i64 0
  %154 = load i8, i8* %scevgep215.1505, align 1
  %conv126.i.1506 = zext i8 %154 to i32
  %155 = load i8, i8* %arrayidx128.i.1, align 1
  %conv129.i.1507 = zext i8 %155 to i32
  %xor130.i.1508 = xor i32 %conv129.i.1507, %conv126.i.1506
  %conv131.i.1509 = trunc i32 %xor130.i.1508 to i8
  store i8 %conv131.i.1509, i8* %arrayidx128.i.1, align 1
  %scevgep215.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %151, i64 0, i64 0, i64 2
  %156 = load i8, i8* %scevgep215.2.1, align 1
  %conv126.i.2.1 = zext i8 %156 to i32
  %157 = load i8, i8* %arrayidx128.i.1, align 1
  %conv129.i.2.1 = zext i8 %157 to i32
  %xor130.i.2.1 = xor i32 %conv129.i.2.1, %conv126.i.2.1
  %conv131.i.2.1 = trunc i32 %xor130.i.2.1 to i8
  store i8 %conv131.i.2.1, i8* %arrayidx128.i.1, align 1
  %scevgep215.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %151, i64 0, i64 0, i64 3
  %158 = load i8, i8* %scevgep215.3.1, align 1
  %conv126.i.3.1 = zext i8 %158 to i32
  %159 = load i8, i8* %arrayidx128.i.1, align 1
  %conv129.i.3.1 = zext i8 %159 to i32
  %xor130.i.3.1 = xor i32 %conv129.i.3.1, %conv126.i.3.1
  %conv131.i.3.1 = trunc i32 %xor130.i.3.1 to i8
  store i8 %conv131.i.3.1, i8* %arrayidx128.i.1, align 1
  %scevgep214.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %151, i64 0, i64 1, i64 0
  %160 = bitcast i8* %scevgep214.1 to [4 x [4 x i8]]*
  %arrayidx108.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %161 = load i8, i8* %arrayidx108.i.2, align 1
  %arrayidx110.i.2 = getelementptr inbounds i8, i8* %arraydecay6, i64 2
  %162 = load i8, i8* %arrayidx110.i.2, align 1
  %call111.i.2 = call zeroext i8 @mult(i8 zeroext %161, i8 zeroext %162) #3
  %arrayidx113.i.2 = getelementptr inbounds i8, i8* %arraydecay7, i64 2
  store i8 %call111.i.2, i8* %arrayidx113.i.2, align 1
  %arrayidx128.i.2 = getelementptr inbounds i8, i8* %arraydecay7, i64 2
  %scevgep215.2514 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %160, i64 0, i64 0, i64 0
  %163 = load i8, i8* %scevgep215.2514, align 1
  %conv126.i.2515 = zext i8 %163 to i32
  %164 = load i8, i8* %arrayidx128.i.2, align 1
  %conv129.i.2516 = zext i8 %164 to i32
  %xor130.i.2517 = xor i32 %conv129.i.2516, %conv126.i.2515
  %conv131.i.2518 = trunc i32 %xor130.i.2517 to i8
  store i8 %conv131.i.2518, i8* %arrayidx128.i.2, align 1
  %scevgep215.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %160, i64 0, i64 0, i64 1
  %165 = load i8, i8* %scevgep215.1.2, align 1
  %conv126.i.1.2 = zext i8 %165 to i32
  %166 = load i8, i8* %arrayidx128.i.2, align 1
  %conv129.i.1.2 = zext i8 %166 to i32
  %xor130.i.1.2 = xor i32 %conv129.i.1.2, %conv126.i.1.2
  %conv131.i.1.2 = trunc i32 %xor130.i.1.2 to i8
  store i8 %conv131.i.1.2, i8* %arrayidx128.i.2, align 1
  %scevgep215.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %160, i64 0, i64 0, i64 3
  %167 = load i8, i8* %scevgep215.3.2, align 1
  %conv126.i.3.2 = zext i8 %167 to i32
  %168 = load i8, i8* %arrayidx128.i.2, align 1
  %conv129.i.3.2 = zext i8 %168 to i32
  %xor130.i.3.2 = xor i32 %conv129.i.3.2, %conv126.i.3.2
  %conv131.i.3.2 = trunc i32 %xor130.i.3.2 to i8
  store i8 %conv131.i.3.2, i8* %arrayidx128.i.2, align 1
  %scevgep214.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %160, i64 0, i64 1, i64 0
  %169 = bitcast i8* %scevgep214.2 to [4 x [4 x i8]]*
  %arrayidx108.i.3 = getelementptr inbounds i8, i8* %x, i64 3
  %170 = load i8, i8* %arrayidx108.i.3, align 1
  %arrayidx110.i.3 = getelementptr inbounds i8, i8* %arraydecay6, i64 3
  %171 = load i8, i8* %arrayidx110.i.3, align 1
  %call111.i.3 = call zeroext i8 @mult(i8 zeroext %170, i8 zeroext %171) #3
  %arrayidx113.i.3 = getelementptr inbounds i8, i8* %arraydecay7, i64 3
  store i8 %call111.i.3, i8* %arrayidx113.i.3, align 1
  %arrayidx128.i.3 = getelementptr inbounds i8, i8* %arraydecay7, i64 3
  %scevgep215.3523 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %169, i64 0, i64 0, i64 0
  %172 = load i8, i8* %scevgep215.3523, align 1
  %conv126.i.3524 = zext i8 %172 to i32
  %173 = load i8, i8* %arrayidx128.i.3, align 1
  %conv129.i.3525 = zext i8 %173 to i32
  %xor130.i.3526 = xor i32 %conv129.i.3525, %conv126.i.3524
  %conv131.i.3527 = trunc i32 %xor130.i.3526 to i8
  store i8 %conv131.i.3527, i8* %arrayidx128.i.3, align 1
  %scevgep215.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %169, i64 0, i64 0, i64 1
  %174 = load i8, i8* %scevgep215.1.3, align 1
  %conv126.i.1.3 = zext i8 %174 to i32
  %175 = load i8, i8* %arrayidx128.i.3, align 1
  %conv129.i.1.3 = zext i8 %175 to i32
  %xor130.i.1.3 = xor i32 %conv129.i.1.3, %conv126.i.1.3
  %conv131.i.1.3 = trunc i32 %xor130.i.1.3 to i8
  store i8 %conv131.i.1.3, i8* %arrayidx128.i.3, align 1
  %scevgep215.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %169, i64 0, i64 0, i64 2
  %176 = load i8, i8* %scevgep215.2.3, align 1
  %conv126.i.2.3 = zext i8 %176 to i32
  %177 = load i8, i8* %arrayidx128.i.3, align 1
  %conv129.i.2.3 = zext i8 %177 to i32
  %xor130.i.2.3 = xor i32 %conv129.i.2.3, %conv126.i.2.3
  %conv131.i.2.3 = trunc i32 %xor130.i.2.3 to i8
  store i8 %conv131.i.2.3, i8* %arrayidx128.i.3, align 1
  %call139.i = call zeroext i8 @mult(i8 zeroext %call.i77, i8 zeroext %call1.i) #3
  %conv140.i = zext i8 %call139.i to i32
  %scevgep205 = getelementptr [4 x i8], [4 x i8]* %e3, i64 0, i64 0
  %178 = load i8, i8* %scevgep205, align 1
  %scevgep205.1 = getelementptr [4 x i8], [4 x i8]* %e3, i64 0, i64 1
  %179 = load i8, i8* %scevgep205.1, align 1
  %conv.i.i172.i.1 = zext i8 %179 to i32
  %conv1.i.i173.i.1 = zext i8 %178 to i32
  %xor.i.i174.i.1 = xor i32 %conv1.i.i173.i.1, %conv.i.i172.i.1
  %conv2.i.i175.i.1 = trunc i32 %xor.i.i174.i.1 to i8
  %scevgep205.2 = getelementptr [4 x i8], [4 x i8]* %e3, i64 0, i64 2
  %180 = load i8, i8* %scevgep205.2, align 1
  %conv.i.i172.i.2 = zext i8 %180 to i32
  %conv1.i.i173.i.2 = zext i8 %conv2.i.i175.i.1 to i32
  %xor.i.i174.i.2 = xor i32 %conv1.i.i173.i.2, %conv.i.i172.i.2
  %conv2.i.i175.i.2 = trunc i32 %xor.i.i174.i.2 to i8
  %scevgep205.3 = getelementptr [4 x i8], [4 x i8]* %e3, i64 0, i64 3
  %181 = load i8, i8* %scevgep205.3, align 1
  %conv.i.i172.i.3 = zext i8 %181 to i32
  %conv1.i.i173.i.3 = zext i8 %conv2.i.i175.i.2 to i32
  %xor.i.i174.i.3 = xor i32 %conv1.i.i173.i.3, %conv.i.i172.i.3
  %conv2.i.i175.i.3 = trunc i32 %xor.i.i174.i.3 to i8
  %conv142.i = zext i8 %conv2.i.i175.i.3 to i32
  %cmp143.i = icmp eq i32 %conv140.i, %conv142.i
  call void @assert(i1 zeroext %cmp143.i) #3
  %arraydecay8 = getelementptr inbounds [4 x i8], [4 x i8]* %e4, i64 0, i64 0
  %arraydecay9 = getelementptr inbounds [4 x i8], [4 x i8]* %e5, i64 0, i64 0
  %call.i115 = call zeroext i8 (...) @rand() #3
  %call1.i116 = call zeroext i8 (...) @rand() #3
  %conv.i117 = zext i8 %call.i115 to i32
  %182 = load i8, i8* %x, align 1
  %scevgep201.1 = getelementptr i8, i8* %x, i64 1
  %183 = load i8, i8* %scevgep201.1, align 1
  %conv.i.i.i123.1 = zext i8 %183 to i32
  %conv1.i.i.i124.1 = zext i8 %182 to i32
  %xor.i.i.i125.1 = xor i32 %conv1.i.i.i124.1, %conv.i.i.i123.1
  %conv2.i.i.i126.1 = trunc i32 %xor.i.i.i125.1 to i8
  %scevgep201.2 = getelementptr i8, i8* %x, i64 2
  %184 = load i8, i8* %scevgep201.2, align 1
  %conv.i.i.i123.2 = zext i8 %184 to i32
  %conv1.i.i.i124.2 = zext i8 %conv2.i.i.i126.1 to i32
  %xor.i.i.i125.2 = xor i32 %conv1.i.i.i124.2, %conv.i.i.i123.2
  %conv2.i.i.i126.2 = trunc i32 %xor.i.i.i125.2 to i8
  %scevgep201.3 = getelementptr i8, i8* %x, i64 3
  %185 = load i8, i8* %scevgep201.3, align 1
  %conv.i.i.i123.3 = zext i8 %185 to i32
  %conv1.i.i.i124.3 = zext i8 %conv2.i.i.i126.2 to i32
  %xor.i.i.i125.3 = xor i32 %conv1.i.i.i124.3, %conv.i.i.i123.3
  %conv2.i.i.i126.3 = trunc i32 %xor.i.i.i125.3 to i8
  %conv3.i129 = zext i8 %conv2.i.i.i126.3 to i32
  %cmp.i130 = icmp eq i32 %conv.i117, %conv3.i129
  call void @assume(i1 zeroext %cmp.i130) #3
  %conv5.i131 = zext i8 %call1.i116 to i32
  %scevgep197 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 0
  %186 = load i8, i8* %scevgep197, align 1
  %scevgep197.1 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 1
  %187 = load i8, i8* %scevgep197.1, align 1
  %conv.i.i155.i138.1 = zext i8 %187 to i32
  %conv1.i.i156.i139.1 = zext i8 %186 to i32
  %xor.i.i157.i140.1 = xor i32 %conv1.i.i156.i139.1, %conv.i.i155.i138.1
  %conv2.i.i158.i141.1 = trunc i32 %xor.i.i157.i140.1 to i8
  %scevgep197.2 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 2
  %188 = load i8, i8* %scevgep197.2, align 1
  %conv.i.i155.i138.2 = zext i8 %188 to i32
  %conv1.i.i156.i139.2 = zext i8 %conv2.i.i158.i141.1 to i32
  %xor.i.i157.i140.2 = xor i32 %conv1.i.i156.i139.2, %conv.i.i155.i138.2
  %conv2.i.i158.i141.2 = trunc i32 %xor.i.i157.i140.2 to i8
  %scevgep197.3 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 3
  %189 = load i8, i8* %scevgep197.3, align 1
  %conv.i.i155.i138.3 = zext i8 %189 to i32
  %conv1.i.i156.i139.3 = zext i8 %conv2.i.i158.i141.2 to i32
  %xor.i.i157.i140.3 = xor i32 %conv1.i.i156.i139.3, %conv.i.i155.i138.3
  %conv2.i.i158.i141.3 = trunc i32 %xor.i.i157.i140.3 to i8
  %conv7.i144 = zext i8 %conv2.i.i158.i141.3 to i32
  %cmp8.i145 = icmp eq i32 %conv5.i131, %conv7.i144
  call void @assume(i1 zeroext %cmp8.i145) #3
  %call16.i153 = call zeroext i8 (...) @rand() #3
  %scevgep187 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i153, i8* %scevgep187, align 1
  %scevgep188 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %190 = load i8, i8* %scevgep188, align 1
  %scevgep189 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %190, i8* %scevgep189, align 1
  %call16.i153.1620 = call zeroext i8 (...) @rand() #3
  %scevgep187.1621 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  store i8 %call16.i153.1620, i8* %scevgep187.1621, align 1
  %scevgep188.1622 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %191 = load i8, i8* %scevgep188.1622, align 1
  %scevgep189.1623 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 2, i64 0
  store i8 %191, i8* %scevgep189.1623, align 1
  %call16.i153.2625 = call zeroext i8 (...) @rand() #3
  %scevgep187.2626 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  store i8 %call16.i153.2625, i8* %scevgep187.2626, align 1
  %scevgep188.2627 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %192 = load i8, i8* %scevgep188.2627, align 1
  %scevgep189.2628 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 3, i64 0
  store i8 %192, i8* %scevgep189.2628, align 1
  %scevgep184 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 1
  %193 = bitcast i8* %scevgep184 to [4 x [4 x i8]]*
  %call16.i153.1 = call zeroext i8 (...) @rand() #3
  %scevgep187.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %193, i64 0, i64 0, i64 1
  store i8 %call16.i153.1, i8* %scevgep187.1, align 1
  %scevgep188.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %193, i64 0, i64 0, i64 1
  %194 = load i8, i8* %scevgep188.1, align 1
  %scevgep189.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %193, i64 0, i64 1, i64 0
  store i8 %194, i8* %scevgep189.1, align 1
  %call16.i153.1.1 = call zeroext i8 (...) @rand() #3
  %scevgep187.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %193, i64 0, i64 0, i64 2
  store i8 %call16.i153.1.1, i8* %scevgep187.1.1, align 1
  %scevgep188.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %193, i64 0, i64 0, i64 2
  %195 = load i8, i8* %scevgep188.1.1, align 1
  %scevgep189.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %193, i64 0, i64 2, i64 0
  store i8 %195, i8* %scevgep189.1.1, align 1
  %scevgep184.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %193, i64 0, i64 1, i64 1
  %196 = bitcast i8* %scevgep184.1 to [4 x [4 x i8]]*
  %call16.i153.2 = call zeroext i8 (...) @rand() #3
  %scevgep187.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %196, i64 0, i64 0, i64 1
  store i8 %call16.i153.2, i8* %scevgep187.2, align 1
  %scevgep188.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %196, i64 0, i64 0, i64 1
  %197 = load i8, i8* %scevgep188.2, align 1
  %scevgep189.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %196, i64 0, i64 1, i64 0
  store i8 %197, i8* %scevgep189.2, align 1
  %scevgep160.1 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 1
  %198 = load i8, i8* %scevgep160.1, align 1
  %conv44.i180.1 = zext i8 %198 to i32
  %scevgep163.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %199 = load i8, i8* %scevgep163.1, align 1
  %conv49.i185.1 = zext i8 %199 to i32
  %xor.i186.1 = xor i32 %conv44.i180.1, %conv49.i185.1
  %conv50.i187.1 = trunc i32 %xor.i186.1 to i8
  %scevgep167.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i187.1, i8* %scevgep167.1, align 1
  %200 = load i8, i8* %x, align 1
  %conv57.i194.1 = zext i8 %200 to i32
  %xor58.i195.1 = xor i32 %conv57.i194.1, 1
  %conv59.i196.1 = trunc i32 %xor58.i195.1 to i8
  %scevgep164.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %201 = load i8, i8* %scevgep164.1, align 1
  %call64.i201.1 = call zeroext i8 @mult(i8 zeroext %conv59.i196.1, i8 zeroext %201) #3
  %scevgep171.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i201.1, i8* %scevgep171.1, align 1
  %202 = load i8, i8* %x, align 1
  %scevgep168.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 1
  %203 = load i8, i8* %scevgep168.1, align 1
  %call75.i212.1 = call zeroext i8 @mult(i8 zeroext %202, i8 zeroext %203) #3
  %scevgep175.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i212.1, i8* %scevgep175.1, align 1
  %scevgep172.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %204 = load i8, i8* %scevgep172.1, align 1
  %conv84.i221.1 = zext i8 %204 to i32
  %scevgep176.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %205 = load i8, i8* %scevgep176.1, align 1
  %conv89.i226.1 = zext i8 %205 to i32
  %xor90.i227.1 = xor i32 %conv84.i221.1, %conv89.i226.1
  %conv91.i228.1 = trunc i32 %xor90.i227.1 to i8
  %scevgep179.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i228.1, i8* %scevgep179.1, align 1
  %scevgep160.2 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 2
  %206 = load i8, i8* %scevgep160.2, align 1
  %conv44.i180.2 = zext i8 %206 to i32
  %scevgep163.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %207 = load i8, i8* %scevgep163.2, align 1
  %conv49.i185.2 = zext i8 %207 to i32
  %xor.i186.2 = xor i32 %conv44.i180.2, %conv49.i185.2
  %conv50.i187.2 = trunc i32 %xor.i186.2 to i8
  %scevgep167.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 2
  store i8 %conv50.i187.2, i8* %scevgep167.2, align 1
  %208 = load i8, i8* %x, align 1
  %conv57.i194.2 = zext i8 %208 to i32
  %xor58.i195.2 = xor i32 %conv57.i194.2, 1
  %conv59.i196.2 = trunc i32 %xor58.i195.2 to i8
  %scevgep164.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %209 = load i8, i8* %scevgep164.2, align 1
  %call64.i201.2 = call zeroext i8 @mult(i8 zeroext %conv59.i196.2, i8 zeroext %209) #3
  %scevgep171.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 2
  store i8 %call64.i201.2, i8* %scevgep171.2, align 1
  %210 = load i8, i8* %x, align 1
  %scevgep168.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 2
  %211 = load i8, i8* %scevgep168.2, align 1
  %call75.i212.2 = call zeroext i8 @mult(i8 zeroext %210, i8 zeroext %211) #3
  %scevgep175.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 2
  store i8 %call75.i212.2, i8* %scevgep175.2, align 1
  %scevgep172.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 2
  %212 = load i8, i8* %scevgep172.2, align 1
  %conv84.i221.2 = zext i8 %212 to i32
  %scevgep176.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 2
  %213 = load i8, i8* %scevgep176.2, align 1
  %conv89.i226.2 = zext i8 %213 to i32
  %xor90.i227.2 = xor i32 %conv84.i221.2, %conv89.i226.2
  %conv91.i228.2 = trunc i32 %xor90.i227.2 to i8
  %scevgep179.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 2
  store i8 %conv91.i228.2, i8* %scevgep179.2, align 1
  %scevgep160.3 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 3
  %214 = load i8, i8* %scevgep160.3, align 1
  %conv44.i180.3 = zext i8 %214 to i32
  %scevgep163.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %215 = load i8, i8* %scevgep163.3, align 1
  %conv49.i185.3 = zext i8 %215 to i32
  %xor.i186.3 = xor i32 %conv44.i180.3, %conv49.i185.3
  %conv50.i187.3 = trunc i32 %xor.i186.3 to i8
  %scevgep167.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 3
  store i8 %conv50.i187.3, i8* %scevgep167.3, align 1
  %216 = load i8, i8* %x, align 1
  %conv57.i194.3 = zext i8 %216 to i32
  %xor58.i195.3 = xor i32 %conv57.i194.3, 1
  %conv59.i196.3 = trunc i32 %xor58.i195.3 to i8
  %scevgep164.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %217 = load i8, i8* %scevgep164.3, align 1
  %call64.i201.3 = call zeroext i8 @mult(i8 zeroext %conv59.i196.3, i8 zeroext %217) #3
  %scevgep171.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 3
  store i8 %call64.i201.3, i8* %scevgep171.3, align 1
  %218 = load i8, i8* %x, align 1
  %scevgep168.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 3
  %219 = load i8, i8* %scevgep168.3, align 1
  %call75.i212.3 = call zeroext i8 @mult(i8 zeroext %218, i8 zeroext %219) #3
  %scevgep175.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 3
  store i8 %call75.i212.3, i8* %scevgep175.3, align 1
  %scevgep172.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 3
  %220 = load i8, i8* %scevgep172.3, align 1
  %conv84.i221.3 = zext i8 %220 to i32
  %scevgep176.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 3
  %221 = load i8, i8* %scevgep176.3, align 1
  %conv89.i226.3 = zext i8 %221 to i32
  %xor90.i227.3 = xor i32 %conv84.i221.3, %conv89.i226.3
  %conv91.i228.3 = trunc i32 %xor90.i227.3 to i8
  %scevgep179.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 3
  store i8 %conv91.i228.3, i8* %scevgep179.3, align 1
  %scevgep162 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  %222 = bitcast i8* %scevgep162 to [4 x [4 x i8]]*
  %scevgep166 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 1, i64 0
  %223 = bitcast i8* %scevgep166 to [4 x [4 x i8]]*
  %scevgep170 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %224 = bitcast i8* %scevgep170 to [4 x [4 x i8]]*
  %scevgep174 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %225 = bitcast i8* %scevgep174 to [4 x [4 x i8]]*
  %scevgep178 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 1, i64 0
  %226 = bitcast i8* %scevgep178 to [4 x [4 x i8]]*
  %arrayidx56.i193.1 = getelementptr inbounds i8, i8* %x, i64 1
  %arrayidx70.i207.1 = getelementptr inbounds i8, i8* %x, i64 1
  %scevgep160.1424 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 0
  %227 = load i8, i8* %scevgep160.1424, align 1
  %conv44.i180.1425 = zext i8 %227 to i32
  %scevgep163.1426 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %222, i64 0, i64 0, i64 0
  %228 = load i8, i8* %scevgep163.1426, align 1
  %conv49.i185.1427 = zext i8 %228 to i32
  %xor.i186.1428 = xor i32 %conv44.i180.1425, %conv49.i185.1427
  %conv50.i187.1429 = trunc i32 %xor.i186.1428 to i8
  %scevgep167.1430 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %223, i64 0, i64 0, i64 0
  store i8 %conv50.i187.1429, i8* %scevgep167.1430, align 1
  %229 = load i8, i8* %arrayidx56.i193.1, align 1
  %conv57.i194.1431 = zext i8 %229 to i32
  %xor58.i195.1432 = xor i32 %conv57.i194.1431, 1
  %conv59.i196.1433 = trunc i32 %xor58.i195.1432 to i8
  %scevgep164.1434 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %222, i64 0, i64 0, i64 0
  %230 = load i8, i8* %scevgep164.1434, align 1
  %call64.i201.1435 = call zeroext i8 @mult(i8 zeroext %conv59.i196.1433, i8 zeroext %230) #3
  %scevgep171.1436 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %224, i64 0, i64 0, i64 0
  store i8 %call64.i201.1435, i8* %scevgep171.1436, align 1
  %231 = load i8, i8* %arrayidx70.i207.1, align 1
  %scevgep168.1437 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %223, i64 0, i64 0, i64 0
  %232 = load i8, i8* %scevgep168.1437, align 1
  %call75.i212.1438 = call zeroext i8 @mult(i8 zeroext %231, i8 zeroext %232) #3
  %scevgep175.1439 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %225, i64 0, i64 0, i64 0
  store i8 %call75.i212.1438, i8* %scevgep175.1439, align 1
  %scevgep172.1440 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %224, i64 0, i64 0, i64 0
  %233 = load i8, i8* %scevgep172.1440, align 1
  %conv84.i221.1441 = zext i8 %233 to i32
  %scevgep176.1442 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %225, i64 0, i64 0, i64 0
  %234 = load i8, i8* %scevgep176.1442, align 1
  %conv89.i226.1443 = zext i8 %234 to i32
  %xor90.i227.1444 = xor i32 %conv84.i221.1441, %conv89.i226.1443
  %conv91.i228.1445 = trunc i32 %xor90.i227.1444 to i8
  %scevgep179.1446 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %226, i64 0, i64 0, i64 0
  store i8 %conv91.i228.1445, i8* %scevgep179.1446, align 1
  %scevgep160.2.1 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 2
  %235 = load i8, i8* %scevgep160.2.1, align 1
  %conv44.i180.2.1 = zext i8 %235 to i32
  %scevgep163.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %222, i64 0, i64 0, i64 2
  %236 = load i8, i8* %scevgep163.2.1, align 1
  %conv49.i185.2.1 = zext i8 %236 to i32
  %xor.i186.2.1 = xor i32 %conv44.i180.2.1, %conv49.i185.2.1
  %conv50.i187.2.1 = trunc i32 %xor.i186.2.1 to i8
  %scevgep167.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %223, i64 0, i64 0, i64 2
  store i8 %conv50.i187.2.1, i8* %scevgep167.2.1, align 1
  %237 = load i8, i8* %arrayidx56.i193.1, align 1
  %conv57.i194.2.1 = zext i8 %237 to i32
  %xor58.i195.2.1 = xor i32 %conv57.i194.2.1, 1
  %conv59.i196.2.1 = trunc i32 %xor58.i195.2.1 to i8
  %scevgep164.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %222, i64 0, i64 0, i64 2
  %238 = load i8, i8* %scevgep164.2.1, align 1
  %call64.i201.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i196.2.1, i8 zeroext %238) #3
  %scevgep171.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %224, i64 0, i64 0, i64 2
  store i8 %call64.i201.2.1, i8* %scevgep171.2.1, align 1
  %239 = load i8, i8* %arrayidx70.i207.1, align 1
  %scevgep168.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %223, i64 0, i64 0, i64 2
  %240 = load i8, i8* %scevgep168.2.1, align 1
  %call75.i212.2.1 = call zeroext i8 @mult(i8 zeroext %239, i8 zeroext %240) #3
  %scevgep175.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %225, i64 0, i64 0, i64 2
  store i8 %call75.i212.2.1, i8* %scevgep175.2.1, align 1
  %scevgep172.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %224, i64 0, i64 0, i64 2
  %241 = load i8, i8* %scevgep172.2.1, align 1
  %conv84.i221.2.1 = zext i8 %241 to i32
  %scevgep176.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %225, i64 0, i64 0, i64 2
  %242 = load i8, i8* %scevgep176.2.1, align 1
  %conv89.i226.2.1 = zext i8 %242 to i32
  %xor90.i227.2.1 = xor i32 %conv84.i221.2.1, %conv89.i226.2.1
  %conv91.i228.2.1 = trunc i32 %xor90.i227.2.1 to i8
  %scevgep179.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %226, i64 0, i64 0, i64 2
  store i8 %conv91.i228.2.1, i8* %scevgep179.2.1, align 1
  %scevgep160.3.1 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 3
  %243 = load i8, i8* %scevgep160.3.1, align 1
  %conv44.i180.3.1 = zext i8 %243 to i32
  %scevgep163.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %222, i64 0, i64 0, i64 3
  %244 = load i8, i8* %scevgep163.3.1, align 1
  %conv49.i185.3.1 = zext i8 %244 to i32
  %xor.i186.3.1 = xor i32 %conv44.i180.3.1, %conv49.i185.3.1
  %conv50.i187.3.1 = trunc i32 %xor.i186.3.1 to i8
  %scevgep167.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %223, i64 0, i64 0, i64 3
  store i8 %conv50.i187.3.1, i8* %scevgep167.3.1, align 1
  %245 = load i8, i8* %arrayidx56.i193.1, align 1
  %conv57.i194.3.1 = zext i8 %245 to i32
  %xor58.i195.3.1 = xor i32 %conv57.i194.3.1, 1
  %conv59.i196.3.1 = trunc i32 %xor58.i195.3.1 to i8
  %scevgep164.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %222, i64 0, i64 0, i64 3
  %246 = load i8, i8* %scevgep164.3.1, align 1
  %call64.i201.3.1 = call zeroext i8 @mult(i8 zeroext %conv59.i196.3.1, i8 zeroext %246) #3
  %scevgep171.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %224, i64 0, i64 0, i64 3
  store i8 %call64.i201.3.1, i8* %scevgep171.3.1, align 1
  %247 = load i8, i8* %arrayidx70.i207.1, align 1
  %scevgep168.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %223, i64 0, i64 0, i64 3
  %248 = load i8, i8* %scevgep168.3.1, align 1
  %call75.i212.3.1 = call zeroext i8 @mult(i8 zeroext %247, i8 zeroext %248) #3
  %scevgep175.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %225, i64 0, i64 0, i64 3
  store i8 %call75.i212.3.1, i8* %scevgep175.3.1, align 1
  %scevgep172.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %224, i64 0, i64 0, i64 3
  %249 = load i8, i8* %scevgep172.3.1, align 1
  %conv84.i221.3.1 = zext i8 %249 to i32
  %scevgep176.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %225, i64 0, i64 0, i64 3
  %250 = load i8, i8* %scevgep176.3.1, align 1
  %conv89.i226.3.1 = zext i8 %250 to i32
  %xor90.i227.3.1 = xor i32 %conv84.i221.3.1, %conv89.i226.3.1
  %conv91.i228.3.1 = trunc i32 %xor90.i227.3.1 to i8
  %scevgep179.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %226, i64 0, i64 0, i64 3
  store i8 %conv91.i228.3.1, i8* %scevgep179.3.1, align 1
  %scevgep162.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %222, i64 0, i64 1, i64 0
  %251 = bitcast i8* %scevgep162.1 to [4 x [4 x i8]]*
  %scevgep166.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %223, i64 0, i64 1, i64 0
  %252 = bitcast i8* %scevgep166.1 to [4 x [4 x i8]]*
  %scevgep170.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %224, i64 0, i64 1, i64 0
  %253 = bitcast i8* %scevgep170.1 to [4 x [4 x i8]]*
  %scevgep174.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %225, i64 0, i64 1, i64 0
  %254 = bitcast i8* %scevgep174.1 to [4 x [4 x i8]]*
  %scevgep178.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %226, i64 0, i64 1, i64 0
  %255 = bitcast i8* %scevgep178.1 to [4 x [4 x i8]]*
  %arrayidx56.i193.2 = getelementptr inbounds i8, i8* %x, i64 2
  %arrayidx70.i207.2 = getelementptr inbounds i8, i8* %x, i64 2
  %scevgep160.2451 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 0
  %256 = load i8, i8* %scevgep160.2451, align 1
  %conv44.i180.2452 = zext i8 %256 to i32
  %scevgep163.2453 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %251, i64 0, i64 0, i64 0
  %257 = load i8, i8* %scevgep163.2453, align 1
  %conv49.i185.2454 = zext i8 %257 to i32
  %xor.i186.2455 = xor i32 %conv44.i180.2452, %conv49.i185.2454
  %conv50.i187.2456 = trunc i32 %xor.i186.2455 to i8
  %scevgep167.2457 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %252, i64 0, i64 0, i64 0
  store i8 %conv50.i187.2456, i8* %scevgep167.2457, align 1
  %258 = load i8, i8* %arrayidx56.i193.2, align 1
  %conv57.i194.2458 = zext i8 %258 to i32
  %xor58.i195.2459 = xor i32 %conv57.i194.2458, 1
  %conv59.i196.2460 = trunc i32 %xor58.i195.2459 to i8
  %scevgep164.2461 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %251, i64 0, i64 0, i64 0
  %259 = load i8, i8* %scevgep164.2461, align 1
  %call64.i201.2462 = call zeroext i8 @mult(i8 zeroext %conv59.i196.2460, i8 zeroext %259) #3
  %scevgep171.2463 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %253, i64 0, i64 0, i64 0
  store i8 %call64.i201.2462, i8* %scevgep171.2463, align 1
  %260 = load i8, i8* %arrayidx70.i207.2, align 1
  %scevgep168.2464 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %252, i64 0, i64 0, i64 0
  %261 = load i8, i8* %scevgep168.2464, align 1
  %call75.i212.2465 = call zeroext i8 @mult(i8 zeroext %260, i8 zeroext %261) #3
  %scevgep175.2466 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %254, i64 0, i64 0, i64 0
  store i8 %call75.i212.2465, i8* %scevgep175.2466, align 1
  %scevgep172.2467 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %253, i64 0, i64 0, i64 0
  %262 = load i8, i8* %scevgep172.2467, align 1
  %conv84.i221.2468 = zext i8 %262 to i32
  %scevgep176.2469 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %254, i64 0, i64 0, i64 0
  %263 = load i8, i8* %scevgep176.2469, align 1
  %conv89.i226.2470 = zext i8 %263 to i32
  %xor90.i227.2471 = xor i32 %conv84.i221.2468, %conv89.i226.2470
  %conv91.i228.2472 = trunc i32 %xor90.i227.2471 to i8
  %scevgep179.2473 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %255, i64 0, i64 0, i64 0
  store i8 %conv91.i228.2472, i8* %scevgep179.2473, align 1
  %scevgep160.1.2 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 1
  %264 = load i8, i8* %scevgep160.1.2, align 1
  %conv44.i180.1.2 = zext i8 %264 to i32
  %scevgep163.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %251, i64 0, i64 0, i64 1
  %265 = load i8, i8* %scevgep163.1.2, align 1
  %conv49.i185.1.2 = zext i8 %265 to i32
  %xor.i186.1.2 = xor i32 %conv44.i180.1.2, %conv49.i185.1.2
  %conv50.i187.1.2 = trunc i32 %xor.i186.1.2 to i8
  %scevgep167.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %252, i64 0, i64 0, i64 1
  store i8 %conv50.i187.1.2, i8* %scevgep167.1.2, align 1
  %266 = load i8, i8* %arrayidx56.i193.2, align 1
  %conv57.i194.1.2 = zext i8 %266 to i32
  %xor58.i195.1.2 = xor i32 %conv57.i194.1.2, 1
  %conv59.i196.1.2 = trunc i32 %xor58.i195.1.2 to i8
  %scevgep164.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %251, i64 0, i64 0, i64 1
  %267 = load i8, i8* %scevgep164.1.2, align 1
  %call64.i201.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i196.1.2, i8 zeroext %267) #3
  %scevgep171.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %253, i64 0, i64 0, i64 1
  store i8 %call64.i201.1.2, i8* %scevgep171.1.2, align 1
  %268 = load i8, i8* %arrayidx70.i207.2, align 1
  %scevgep168.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %252, i64 0, i64 0, i64 1
  %269 = load i8, i8* %scevgep168.1.2, align 1
  %call75.i212.1.2 = call zeroext i8 @mult(i8 zeroext %268, i8 zeroext %269) #3
  %scevgep175.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %254, i64 0, i64 0, i64 1
  store i8 %call75.i212.1.2, i8* %scevgep175.1.2, align 1
  %scevgep172.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %253, i64 0, i64 0, i64 1
  %270 = load i8, i8* %scevgep172.1.2, align 1
  %conv84.i221.1.2 = zext i8 %270 to i32
  %scevgep176.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %254, i64 0, i64 0, i64 1
  %271 = load i8, i8* %scevgep176.1.2, align 1
  %conv89.i226.1.2 = zext i8 %271 to i32
  %xor90.i227.1.2 = xor i32 %conv84.i221.1.2, %conv89.i226.1.2
  %conv91.i228.1.2 = trunc i32 %xor90.i227.1.2 to i8
  %scevgep179.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %255, i64 0, i64 0, i64 1
  store i8 %conv91.i228.1.2, i8* %scevgep179.1.2, align 1
  %scevgep160.3.2 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 3
  %272 = load i8, i8* %scevgep160.3.2, align 1
  %conv44.i180.3.2 = zext i8 %272 to i32
  %scevgep163.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %251, i64 0, i64 0, i64 3
  %273 = load i8, i8* %scevgep163.3.2, align 1
  %conv49.i185.3.2 = zext i8 %273 to i32
  %xor.i186.3.2 = xor i32 %conv44.i180.3.2, %conv49.i185.3.2
  %conv50.i187.3.2 = trunc i32 %xor.i186.3.2 to i8
  %scevgep167.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %252, i64 0, i64 0, i64 3
  store i8 %conv50.i187.3.2, i8* %scevgep167.3.2, align 1
  %274 = load i8, i8* %arrayidx56.i193.2, align 1
  %conv57.i194.3.2 = zext i8 %274 to i32
  %xor58.i195.3.2 = xor i32 %conv57.i194.3.2, 1
  %conv59.i196.3.2 = trunc i32 %xor58.i195.3.2 to i8
  %scevgep164.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %251, i64 0, i64 0, i64 3
  %275 = load i8, i8* %scevgep164.3.2, align 1
  %call64.i201.3.2 = call zeroext i8 @mult(i8 zeroext %conv59.i196.3.2, i8 zeroext %275) #3
  %scevgep171.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %253, i64 0, i64 0, i64 3
  store i8 %call64.i201.3.2, i8* %scevgep171.3.2, align 1
  %276 = load i8, i8* %arrayidx70.i207.2, align 1
  %scevgep168.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %252, i64 0, i64 0, i64 3
  %277 = load i8, i8* %scevgep168.3.2, align 1
  %call75.i212.3.2 = call zeroext i8 @mult(i8 zeroext %276, i8 zeroext %277) #3
  %scevgep175.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %254, i64 0, i64 0, i64 3
  store i8 %call75.i212.3.2, i8* %scevgep175.3.2, align 1
  %scevgep172.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %253, i64 0, i64 0, i64 3
  %278 = load i8, i8* %scevgep172.3.2, align 1
  %conv84.i221.3.2 = zext i8 %278 to i32
  %scevgep176.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %254, i64 0, i64 0, i64 3
  %279 = load i8, i8* %scevgep176.3.2, align 1
  %conv89.i226.3.2 = zext i8 %279 to i32
  %xor90.i227.3.2 = xor i32 %conv84.i221.3.2, %conv89.i226.3.2
  %conv91.i228.3.2 = trunc i32 %xor90.i227.3.2 to i8
  %scevgep179.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %255, i64 0, i64 0, i64 3
  store i8 %conv91.i228.3.2, i8* %scevgep179.3.2, align 1
  %scevgep162.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %251, i64 0, i64 1, i64 0
  %280 = bitcast i8* %scevgep162.2 to [4 x [4 x i8]]*
  %scevgep166.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %252, i64 0, i64 1, i64 0
  %281 = bitcast i8* %scevgep166.2 to [4 x [4 x i8]]*
  %scevgep170.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %253, i64 0, i64 1, i64 0
  %282 = bitcast i8* %scevgep170.2 to [4 x [4 x i8]]*
  %scevgep174.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %254, i64 0, i64 1, i64 0
  %283 = bitcast i8* %scevgep174.2 to [4 x [4 x i8]]*
  %scevgep178.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %255, i64 0, i64 1, i64 0
  %284 = bitcast i8* %scevgep178.2 to [4 x [4 x i8]]*
  %arrayidx56.i193.3 = getelementptr inbounds i8, i8* %x, i64 3
  %arrayidx70.i207.3 = getelementptr inbounds i8, i8* %x, i64 3
  %scevgep160.3478 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 0
  %285 = load i8, i8* %scevgep160.3478, align 1
  %conv44.i180.3479 = zext i8 %285 to i32
  %scevgep163.3480 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %280, i64 0, i64 0, i64 0
  %286 = load i8, i8* %scevgep163.3480, align 1
  %conv49.i185.3481 = zext i8 %286 to i32
  %xor.i186.3482 = xor i32 %conv44.i180.3479, %conv49.i185.3481
  %conv50.i187.3483 = trunc i32 %xor.i186.3482 to i8
  %scevgep167.3484 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %281, i64 0, i64 0, i64 0
  store i8 %conv50.i187.3483, i8* %scevgep167.3484, align 1
  %287 = load i8, i8* %arrayidx56.i193.3, align 1
  %conv57.i194.3485 = zext i8 %287 to i32
  %xor58.i195.3486 = xor i32 %conv57.i194.3485, 1
  %conv59.i196.3487 = trunc i32 %xor58.i195.3486 to i8
  %scevgep164.3488 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %280, i64 0, i64 0, i64 0
  %288 = load i8, i8* %scevgep164.3488, align 1
  %call64.i201.3489 = call zeroext i8 @mult(i8 zeroext %conv59.i196.3487, i8 zeroext %288) #3
  %scevgep171.3490 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %282, i64 0, i64 0, i64 0
  store i8 %call64.i201.3489, i8* %scevgep171.3490, align 1
  %289 = load i8, i8* %arrayidx70.i207.3, align 1
  %scevgep168.3491 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %281, i64 0, i64 0, i64 0
  %290 = load i8, i8* %scevgep168.3491, align 1
  %call75.i212.3492 = call zeroext i8 @mult(i8 zeroext %289, i8 zeroext %290) #3
  %scevgep175.3493 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %283, i64 0, i64 0, i64 0
  store i8 %call75.i212.3492, i8* %scevgep175.3493, align 1
  %scevgep172.3494 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %282, i64 0, i64 0, i64 0
  %291 = load i8, i8* %scevgep172.3494, align 1
  %conv84.i221.3495 = zext i8 %291 to i32
  %scevgep176.3496 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %283, i64 0, i64 0, i64 0
  %292 = load i8, i8* %scevgep176.3496, align 1
  %conv89.i226.3497 = zext i8 %292 to i32
  %xor90.i227.3498 = xor i32 %conv84.i221.3495, %conv89.i226.3497
  %conv91.i228.3499 = trunc i32 %xor90.i227.3498 to i8
  %scevgep179.3500 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %284, i64 0, i64 0, i64 0
  store i8 %conv91.i228.3499, i8* %scevgep179.3500, align 1
  %scevgep160.1.3 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 1
  %293 = load i8, i8* %scevgep160.1.3, align 1
  %conv44.i180.1.3 = zext i8 %293 to i32
  %scevgep163.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %280, i64 0, i64 0, i64 1
  %294 = load i8, i8* %scevgep163.1.3, align 1
  %conv49.i185.1.3 = zext i8 %294 to i32
  %xor.i186.1.3 = xor i32 %conv44.i180.1.3, %conv49.i185.1.3
  %conv50.i187.1.3 = trunc i32 %xor.i186.1.3 to i8
  %scevgep167.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %281, i64 0, i64 0, i64 1
  store i8 %conv50.i187.1.3, i8* %scevgep167.1.3, align 1
  %295 = load i8, i8* %arrayidx56.i193.3, align 1
  %conv57.i194.1.3 = zext i8 %295 to i32
  %xor58.i195.1.3 = xor i32 %conv57.i194.1.3, 1
  %conv59.i196.1.3 = trunc i32 %xor58.i195.1.3 to i8
  %scevgep164.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %280, i64 0, i64 0, i64 1
  %296 = load i8, i8* %scevgep164.1.3, align 1
  %call64.i201.1.3 = call zeroext i8 @mult(i8 zeroext %conv59.i196.1.3, i8 zeroext %296) #3
  %scevgep171.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %282, i64 0, i64 0, i64 1
  store i8 %call64.i201.1.3, i8* %scevgep171.1.3, align 1
  %297 = load i8, i8* %arrayidx70.i207.3, align 1
  %scevgep168.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %281, i64 0, i64 0, i64 1
  %298 = load i8, i8* %scevgep168.1.3, align 1
  %call75.i212.1.3 = call zeroext i8 @mult(i8 zeroext %297, i8 zeroext %298) #3
  %scevgep175.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %283, i64 0, i64 0, i64 1
  store i8 %call75.i212.1.3, i8* %scevgep175.1.3, align 1
  %scevgep172.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %282, i64 0, i64 0, i64 1
  %299 = load i8, i8* %scevgep172.1.3, align 1
  %conv84.i221.1.3 = zext i8 %299 to i32
  %scevgep176.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %283, i64 0, i64 0, i64 1
  %300 = load i8, i8* %scevgep176.1.3, align 1
  %conv89.i226.1.3 = zext i8 %300 to i32
  %xor90.i227.1.3 = xor i32 %conv84.i221.1.3, %conv89.i226.1.3
  %conv91.i228.1.3 = trunc i32 %xor90.i227.1.3 to i8
  %scevgep179.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %284, i64 0, i64 0, i64 1
  store i8 %conv91.i228.1.3, i8* %scevgep179.1.3, align 1
  %scevgep160.2.3 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 2
  %301 = load i8, i8* %scevgep160.2.3, align 1
  %conv44.i180.2.3 = zext i8 %301 to i32
  %scevgep163.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %280, i64 0, i64 0, i64 2
  %302 = load i8, i8* %scevgep163.2.3, align 1
  %conv49.i185.2.3 = zext i8 %302 to i32
  %xor.i186.2.3 = xor i32 %conv44.i180.2.3, %conv49.i185.2.3
  %conv50.i187.2.3 = trunc i32 %xor.i186.2.3 to i8
  %scevgep167.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %281, i64 0, i64 0, i64 2
  store i8 %conv50.i187.2.3, i8* %scevgep167.2.3, align 1
  %303 = load i8, i8* %arrayidx56.i193.3, align 1
  %conv57.i194.2.3 = zext i8 %303 to i32
  %xor58.i195.2.3 = xor i32 %conv57.i194.2.3, 1
  %conv59.i196.2.3 = trunc i32 %xor58.i195.2.3 to i8
  %scevgep164.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %280, i64 0, i64 0, i64 2
  %304 = load i8, i8* %scevgep164.2.3, align 1
  %call64.i201.2.3 = call zeroext i8 @mult(i8 zeroext %conv59.i196.2.3, i8 zeroext %304) #3
  %scevgep171.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %282, i64 0, i64 0, i64 2
  store i8 %call64.i201.2.3, i8* %scevgep171.2.3, align 1
  %305 = load i8, i8* %arrayidx70.i207.3, align 1
  %scevgep168.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %281, i64 0, i64 0, i64 2
  %306 = load i8, i8* %scevgep168.2.3, align 1
  %call75.i212.2.3 = call zeroext i8 @mult(i8 zeroext %305, i8 zeroext %306) #3
  %scevgep175.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %283, i64 0, i64 0, i64 2
  store i8 %call75.i212.2.3, i8* %scevgep175.2.3, align 1
  %scevgep172.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %282, i64 0, i64 0, i64 2
  %307 = load i8, i8* %scevgep172.2.3, align 1
  %conv84.i221.2.3 = zext i8 %307 to i32
  %scevgep176.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %283, i64 0, i64 0, i64 2
  %308 = load i8, i8* %scevgep176.2.3, align 1
  %conv89.i226.2.3 = zext i8 %308 to i32
  %xor90.i227.2.3 = xor i32 %conv84.i221.2.3, %conv89.i226.2.3
  %conv91.i228.2.3 = trunc i32 %xor90.i227.2.3 to i8
  %scevgep179.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %284, i64 0, i64 0, i64 2
  store i8 %conv91.i228.2.3, i8* %scevgep179.2.3, align 1
  %309 = load i8, i8* %x, align 1
  %310 = load i8, i8* %arraydecay8, align 1
  %call111.i245 = call zeroext i8 @mult(i8 zeroext %309, i8 zeroext %310) #3
  store i8 %call111.i245, i8* %arraydecay9, align 1
  %scevgep150.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 1
  %311 = load i8, i8* %scevgep150.1, align 1
  %conv126.i257.1 = zext i8 %311 to i32
  %312 = load i8, i8* %arraydecay9, align 1
  %conv129.i260.1 = zext i8 %312 to i32
  %xor130.i261.1 = xor i32 %conv129.i260.1, %conv126.i257.1
  %conv131.i262.1 = trunc i32 %xor130.i261.1 to i8
  store i8 %conv131.i262.1, i8* %arraydecay9, align 1
  %scevgep150.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 2
  %313 = load i8, i8* %scevgep150.2, align 1
  %conv126.i257.2 = zext i8 %313 to i32
  %314 = load i8, i8* %arraydecay9, align 1
  %conv129.i260.2 = zext i8 %314 to i32
  %xor130.i261.2 = xor i32 %conv129.i260.2, %conv126.i257.2
  %conv131.i262.2 = trunc i32 %xor130.i261.2 to i8
  store i8 %conv131.i262.2, i8* %arraydecay9, align 1
  %scevgep150.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 3
  %315 = load i8, i8* %scevgep150.3, align 1
  %conv126.i257.3 = zext i8 %315 to i32
  %316 = load i8, i8* %arraydecay9, align 1
  %conv129.i260.3 = zext i8 %316 to i32
  %xor130.i261.3 = xor i32 %conv129.i260.3, %conv126.i257.3
  %conv131.i262.3 = trunc i32 %xor130.i261.3 to i8
  store i8 %conv131.i262.3, i8* %arraydecay9, align 1
  %scevgep149 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 1, i64 0
  %317 = bitcast i8* %scevgep149 to [4 x [4 x i8]]*
  %arrayidx108.i242.1 = getelementptr inbounds i8, i8* %x, i64 1
  %318 = load i8, i8* %arrayidx108.i242.1, align 1
  %arrayidx110.i244.1 = getelementptr inbounds i8, i8* %arraydecay8, i64 1
  %319 = load i8, i8* %arrayidx110.i244.1, align 1
  %call111.i245.1 = call zeroext i8 @mult(i8 zeroext %318, i8 zeroext %319) #3
  %arrayidx113.i247.1 = getelementptr inbounds i8, i8* %arraydecay9, i64 1
  store i8 %call111.i245.1, i8* %arrayidx113.i247.1, align 1
  %arrayidx128.i259.1 = getelementptr inbounds i8, i8* %arraydecay9, i64 1
  %scevgep150.1397 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %317, i64 0, i64 0, i64 0
  %320 = load i8, i8* %scevgep150.1397, align 1
  %conv126.i257.1398 = zext i8 %320 to i32
  %321 = load i8, i8* %arrayidx128.i259.1, align 1
  %conv129.i260.1399 = zext i8 %321 to i32
  %xor130.i261.1400 = xor i32 %conv129.i260.1399, %conv126.i257.1398
  %conv131.i262.1401 = trunc i32 %xor130.i261.1400 to i8
  store i8 %conv131.i262.1401, i8* %arrayidx128.i259.1, align 1
  %scevgep150.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %317, i64 0, i64 0, i64 2
  %322 = load i8, i8* %scevgep150.2.1, align 1
  %conv126.i257.2.1 = zext i8 %322 to i32
  %323 = load i8, i8* %arrayidx128.i259.1, align 1
  %conv129.i260.2.1 = zext i8 %323 to i32
  %xor130.i261.2.1 = xor i32 %conv129.i260.2.1, %conv126.i257.2.1
  %conv131.i262.2.1 = trunc i32 %xor130.i261.2.1 to i8
  store i8 %conv131.i262.2.1, i8* %arrayidx128.i259.1, align 1
  %scevgep150.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %317, i64 0, i64 0, i64 3
  %324 = load i8, i8* %scevgep150.3.1, align 1
  %conv126.i257.3.1 = zext i8 %324 to i32
  %325 = load i8, i8* %arrayidx128.i259.1, align 1
  %conv129.i260.3.1 = zext i8 %325 to i32
  %xor130.i261.3.1 = xor i32 %conv129.i260.3.1, %conv126.i257.3.1
  %conv131.i262.3.1 = trunc i32 %xor130.i261.3.1 to i8
  store i8 %conv131.i262.3.1, i8* %arrayidx128.i259.1, align 1
  %scevgep149.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %317, i64 0, i64 1, i64 0
  %326 = bitcast i8* %scevgep149.1 to [4 x [4 x i8]]*
  %arrayidx108.i242.2 = getelementptr inbounds i8, i8* %x, i64 2
  %327 = load i8, i8* %arrayidx108.i242.2, align 1
  %arrayidx110.i244.2 = getelementptr inbounds i8, i8* %arraydecay8, i64 2
  %328 = load i8, i8* %arrayidx110.i244.2, align 1
  %call111.i245.2 = call zeroext i8 @mult(i8 zeroext %327, i8 zeroext %328) #3
  %arrayidx113.i247.2 = getelementptr inbounds i8, i8* %arraydecay9, i64 2
  store i8 %call111.i245.2, i8* %arrayidx113.i247.2, align 1
  %arrayidx128.i259.2 = getelementptr inbounds i8, i8* %arraydecay9, i64 2
  %scevgep150.2406 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %326, i64 0, i64 0, i64 0
  %329 = load i8, i8* %scevgep150.2406, align 1
  %conv126.i257.2407 = zext i8 %329 to i32
  %330 = load i8, i8* %arrayidx128.i259.2, align 1
  %conv129.i260.2408 = zext i8 %330 to i32
  %xor130.i261.2409 = xor i32 %conv129.i260.2408, %conv126.i257.2407
  %conv131.i262.2410 = trunc i32 %xor130.i261.2409 to i8
  store i8 %conv131.i262.2410, i8* %arrayidx128.i259.2, align 1
  %scevgep150.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %326, i64 0, i64 0, i64 1
  %331 = load i8, i8* %scevgep150.1.2, align 1
  %conv126.i257.1.2 = zext i8 %331 to i32
  %332 = load i8, i8* %arrayidx128.i259.2, align 1
  %conv129.i260.1.2 = zext i8 %332 to i32
  %xor130.i261.1.2 = xor i32 %conv129.i260.1.2, %conv126.i257.1.2
  %conv131.i262.1.2 = trunc i32 %xor130.i261.1.2 to i8
  store i8 %conv131.i262.1.2, i8* %arrayidx128.i259.2, align 1
  %scevgep150.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %326, i64 0, i64 0, i64 3
  %333 = load i8, i8* %scevgep150.3.2, align 1
  %conv126.i257.3.2 = zext i8 %333 to i32
  %334 = load i8, i8* %arrayidx128.i259.2, align 1
  %conv129.i260.3.2 = zext i8 %334 to i32
  %xor130.i261.3.2 = xor i32 %conv129.i260.3.2, %conv126.i257.3.2
  %conv131.i262.3.2 = trunc i32 %xor130.i261.3.2 to i8
  store i8 %conv131.i262.3.2, i8* %arrayidx128.i259.2, align 1
  %scevgep149.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %326, i64 0, i64 1, i64 0
  %335 = bitcast i8* %scevgep149.2 to [4 x [4 x i8]]*
  %arrayidx108.i242.3 = getelementptr inbounds i8, i8* %x, i64 3
  %336 = load i8, i8* %arrayidx108.i242.3, align 1
  %arrayidx110.i244.3 = getelementptr inbounds i8, i8* %arraydecay8, i64 3
  %337 = load i8, i8* %arrayidx110.i244.3, align 1
  %call111.i245.3 = call zeroext i8 @mult(i8 zeroext %336, i8 zeroext %337) #3
  %arrayidx113.i247.3 = getelementptr inbounds i8, i8* %arraydecay9, i64 3
  store i8 %call111.i245.3, i8* %arrayidx113.i247.3, align 1
  %arrayidx128.i259.3 = getelementptr inbounds i8, i8* %arraydecay9, i64 3
  %scevgep150.3415 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %335, i64 0, i64 0, i64 0
  %338 = load i8, i8* %scevgep150.3415, align 1
  %conv126.i257.3416 = zext i8 %338 to i32
  %339 = load i8, i8* %arrayidx128.i259.3, align 1
  %conv129.i260.3417 = zext i8 %339 to i32
  %xor130.i261.3418 = xor i32 %conv129.i260.3417, %conv126.i257.3416
  %conv131.i262.3419 = trunc i32 %xor130.i261.3418 to i8
  store i8 %conv131.i262.3419, i8* %arrayidx128.i259.3, align 1
  %scevgep150.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %335, i64 0, i64 0, i64 1
  %340 = load i8, i8* %scevgep150.1.3, align 1
  %conv126.i257.1.3 = zext i8 %340 to i32
  %341 = load i8, i8* %arrayidx128.i259.3, align 1
  %conv129.i260.1.3 = zext i8 %341 to i32
  %xor130.i261.1.3 = xor i32 %conv129.i260.1.3, %conv126.i257.1.3
  %conv131.i262.1.3 = trunc i32 %xor130.i261.1.3 to i8
  store i8 %conv131.i262.1.3, i8* %arrayidx128.i259.3, align 1
  %scevgep150.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %335, i64 0, i64 0, i64 2
  %342 = load i8, i8* %scevgep150.2.3, align 1
  %conv126.i257.2.3 = zext i8 %342 to i32
  %343 = load i8, i8* %arrayidx128.i259.3, align 1
  %conv129.i260.2.3 = zext i8 %343 to i32
  %xor130.i261.2.3 = xor i32 %conv129.i260.2.3, %conv126.i257.2.3
  %conv131.i262.2.3 = trunc i32 %xor130.i261.2.3 to i8
  store i8 %conv131.i262.2.3, i8* %arrayidx128.i259.3, align 1
  %call139.i268 = call zeroext i8 @mult(i8 zeroext %call.i115, i8 zeroext %call1.i116) #3
  %conv140.i269 = zext i8 %call139.i268 to i32
  %scevgep140 = getelementptr [4 x i8], [4 x i8]* %e5, i64 0, i64 0
  %344 = load i8, i8* %scevgep140, align 1
  %scevgep140.1 = getelementptr [4 x i8], [4 x i8]* %e5, i64 0, i64 1
  %345 = load i8, i8* %scevgep140.1, align 1
  %conv.i.i172.i276.1 = zext i8 %345 to i32
  %conv1.i.i173.i277.1 = zext i8 %344 to i32
  %xor.i.i174.i278.1 = xor i32 %conv1.i.i173.i277.1, %conv.i.i172.i276.1
  %conv2.i.i175.i279.1 = trunc i32 %xor.i.i174.i278.1 to i8
  %scevgep140.2 = getelementptr [4 x i8], [4 x i8]* %e5, i64 0, i64 2
  %346 = load i8, i8* %scevgep140.2, align 1
  %conv.i.i172.i276.2 = zext i8 %346 to i32
  %conv1.i.i173.i277.2 = zext i8 %conv2.i.i175.i279.1 to i32
  %xor.i.i174.i278.2 = xor i32 %conv1.i.i173.i277.2, %conv.i.i172.i276.2
  %conv2.i.i175.i279.2 = trunc i32 %xor.i.i174.i278.2 to i8
  %scevgep140.3 = getelementptr [4 x i8], [4 x i8]* %e5, i64 0, i64 3
  %347 = load i8, i8* %scevgep140.3, align 1
  %conv.i.i172.i276.3 = zext i8 %347 to i32
  %conv1.i.i173.i277.3 = zext i8 %conv2.i.i175.i279.2 to i32
  %xor.i.i174.i278.3 = xor i32 %conv1.i.i173.i277.3, %conv.i.i172.i276.3
  %conv2.i.i175.i279.3 = trunc i32 %xor.i.i174.i278.3 to i8
  %conv142.i282 = zext i8 %conv2.i.i175.i279.3 to i32
  %cmp143.i283 = icmp eq i32 %conv140.i269, %conv142.i282
  call void @assert(i1 zeroext %cmp143.i283) #3
  %arraydecay10 = getelementptr inbounds [4 x i8], [4 x i8]* %e3, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [4 x i8], [4 x i8]* %e4, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [4 x i8], [4 x i8]* %e7, i64 0, i64 0
  %call.i316 = call zeroext i8 (...) @rand() #3
  %call1.i317 = call zeroext i8 (...) @rand() #3
  %conv.i318 = zext i8 %call.i316 to i32
  %scevgep136 = getelementptr [4 x i8], [4 x i8]* %e3, i64 0, i64 0
  %348 = load i8, i8* %scevgep136, align 1
  %scevgep136.1 = getelementptr [4 x i8], [4 x i8]* %e3, i64 0, i64 1
  %349 = load i8, i8* %scevgep136.1, align 1
  %conv.i.i.i324.1 = zext i8 %349 to i32
  %conv1.i.i.i325.1 = zext i8 %348 to i32
  %xor.i.i.i326.1 = xor i32 %conv1.i.i.i325.1, %conv.i.i.i324.1
  %conv2.i.i.i327.1 = trunc i32 %xor.i.i.i326.1 to i8
  %scevgep136.2 = getelementptr [4 x i8], [4 x i8]* %e3, i64 0, i64 2
  %350 = load i8, i8* %scevgep136.2, align 1
  %conv.i.i.i324.2 = zext i8 %350 to i32
  %conv1.i.i.i325.2 = zext i8 %conv2.i.i.i327.1 to i32
  %xor.i.i.i326.2 = xor i32 %conv1.i.i.i325.2, %conv.i.i.i324.2
  %conv2.i.i.i327.2 = trunc i32 %xor.i.i.i326.2 to i8
  %scevgep136.3 = getelementptr [4 x i8], [4 x i8]* %e3, i64 0, i64 3
  %351 = load i8, i8* %scevgep136.3, align 1
  %conv.i.i.i324.3 = zext i8 %351 to i32
  %conv1.i.i.i325.3 = zext i8 %conv2.i.i.i327.2 to i32
  %xor.i.i.i326.3 = xor i32 %conv1.i.i.i325.3, %conv.i.i.i324.3
  %conv2.i.i.i327.3 = trunc i32 %xor.i.i.i326.3 to i8
  %conv3.i330 = zext i8 %conv2.i.i.i327.3 to i32
  %cmp.i331 = icmp eq i32 %conv.i318, %conv3.i330
  call void @assume(i1 zeroext %cmp.i331) #3
  %conv5.i332 = zext i8 %call1.i317 to i32
  %scevgep132 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 0
  %352 = load i8, i8* %scevgep132, align 1
  %scevgep132.1 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 1
  %353 = load i8, i8* %scevgep132.1, align 1
  %conv.i.i155.i339.1 = zext i8 %353 to i32
  %conv1.i.i156.i340.1 = zext i8 %352 to i32
  %xor.i.i157.i341.1 = xor i32 %conv1.i.i156.i340.1, %conv.i.i155.i339.1
  %conv2.i.i158.i342.1 = trunc i32 %xor.i.i157.i341.1 to i8
  %scevgep132.2 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 2
  %354 = load i8, i8* %scevgep132.2, align 1
  %conv.i.i155.i339.2 = zext i8 %354 to i32
  %conv1.i.i156.i340.2 = zext i8 %conv2.i.i158.i342.1 to i32
  %xor.i.i157.i341.2 = xor i32 %conv1.i.i156.i340.2, %conv.i.i155.i339.2
  %conv2.i.i158.i342.2 = trunc i32 %xor.i.i157.i341.2 to i8
  %scevgep132.3 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 3
  %355 = load i8, i8* %scevgep132.3, align 1
  %conv.i.i155.i339.3 = zext i8 %355 to i32
  %conv1.i.i156.i340.3 = zext i8 %conv2.i.i158.i342.2 to i32
  %xor.i.i157.i341.3 = xor i32 %conv1.i.i156.i340.3, %conv.i.i155.i339.3
  %conv2.i.i158.i342.3 = trunc i32 %xor.i.i157.i341.3 to i8
  %conv7.i345 = zext i8 %conv2.i.i158.i342.3 to i32
  %cmp8.i346 = icmp eq i32 %conv5.i332, %conv7.i345
  call void @assume(i1 zeroext %cmp8.i346) #3
  %call16.i354 = call zeroext i8 (...) @rand() #3
  %scevgep122 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i354, i8* %scevgep122, align 1
  %scevgep123 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %356 = load i8, i8* %scevgep123, align 1
  %scevgep124 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %356, i8* %scevgep124, align 1
  %call16.i354.1611 = call zeroext i8 (...) @rand() #3
  %scevgep122.1612 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  store i8 %call16.i354.1611, i8* %scevgep122.1612, align 1
  %scevgep123.1613 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %357 = load i8, i8* %scevgep123.1613, align 1
  %scevgep124.1614 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 2, i64 0
  store i8 %357, i8* %scevgep124.1614, align 1
  %call16.i354.2616 = call zeroext i8 (...) @rand() #3
  %scevgep122.2617 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  store i8 %call16.i354.2616, i8* %scevgep122.2617, align 1
  %scevgep123.2618 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %358 = load i8, i8* %scevgep123.2618, align 1
  %scevgep124.2619 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 3, i64 0
  store i8 %358, i8* %scevgep124.2619, align 1
  %scevgep119 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 1
  %359 = bitcast i8* %scevgep119 to [4 x [4 x i8]]*
  %call16.i354.1 = call zeroext i8 (...) @rand() #3
  %scevgep122.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %359, i64 0, i64 0, i64 1
  store i8 %call16.i354.1, i8* %scevgep122.1, align 1
  %scevgep123.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %359, i64 0, i64 0, i64 1
  %360 = load i8, i8* %scevgep123.1, align 1
  %scevgep124.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %359, i64 0, i64 1, i64 0
  store i8 %360, i8* %scevgep124.1, align 1
  %call16.i354.1.1 = call zeroext i8 (...) @rand() #3
  %scevgep122.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %359, i64 0, i64 0, i64 2
  store i8 %call16.i354.1.1, i8* %scevgep122.1.1, align 1
  %scevgep123.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %359, i64 0, i64 0, i64 2
  %361 = load i8, i8* %scevgep123.1.1, align 1
  %scevgep124.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %359, i64 0, i64 2, i64 0
  store i8 %361, i8* %scevgep124.1.1, align 1
  %scevgep119.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %359, i64 0, i64 1, i64 1
  %362 = bitcast i8* %scevgep119.1 to [4 x [4 x i8]]*
  %call16.i354.2 = call zeroext i8 (...) @rand() #3
  %scevgep122.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %362, i64 0, i64 0, i64 1
  store i8 %call16.i354.2, i8* %scevgep122.2, align 1
  %scevgep123.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %362, i64 0, i64 0, i64 1
  %363 = load i8, i8* %scevgep123.2, align 1
  %scevgep124.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %362, i64 0, i64 1, i64 0
  store i8 %363, i8* %scevgep124.2, align 1
  %scevgep95.1 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 1
  %364 = load i8, i8* %scevgep95.1, align 1
  %conv44.i381.1 = zext i8 %364 to i32
  %scevgep98.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %365 = load i8, i8* %scevgep98.1, align 1
  %conv49.i386.1 = zext i8 %365 to i32
  %xor.i387.1 = xor i32 %conv44.i381.1, %conv49.i386.1
  %conv50.i388.1 = trunc i32 %xor.i387.1 to i8
  %scevgep102.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i388.1, i8* %scevgep102.1, align 1
  %366 = load i8, i8* %arraydecay10, align 1
  %conv57.i395.1 = zext i8 %366 to i32
  %xor58.i396.1 = xor i32 %conv57.i395.1, 1
  %conv59.i397.1 = trunc i32 %xor58.i396.1 to i8
  %scevgep99.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %367 = load i8, i8* %scevgep99.1, align 1
  %call64.i402.1 = call zeroext i8 @mult(i8 zeroext %conv59.i397.1, i8 zeroext %367) #3
  %scevgep106.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i402.1, i8* %scevgep106.1, align 1
  %368 = load i8, i8* %arraydecay10, align 1
  %scevgep103.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 1
  %369 = load i8, i8* %scevgep103.1, align 1
  %call75.i413.1 = call zeroext i8 @mult(i8 zeroext %368, i8 zeroext %369) #3
  %scevgep110.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i413.1, i8* %scevgep110.1, align 1
  %scevgep107.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %370 = load i8, i8* %scevgep107.1, align 1
  %conv84.i422.1 = zext i8 %370 to i32
  %scevgep111.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %371 = load i8, i8* %scevgep111.1, align 1
  %conv89.i427.1 = zext i8 %371 to i32
  %xor90.i428.1 = xor i32 %conv84.i422.1, %conv89.i427.1
  %conv91.i429.1 = trunc i32 %xor90.i428.1 to i8
  %scevgep114.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i429.1, i8* %scevgep114.1, align 1
  %scevgep95.2 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 2
  %372 = load i8, i8* %scevgep95.2, align 1
  %conv44.i381.2 = zext i8 %372 to i32
  %scevgep98.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %373 = load i8, i8* %scevgep98.2, align 1
  %conv49.i386.2 = zext i8 %373 to i32
  %xor.i387.2 = xor i32 %conv44.i381.2, %conv49.i386.2
  %conv50.i388.2 = trunc i32 %xor.i387.2 to i8
  %scevgep102.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 2
  store i8 %conv50.i388.2, i8* %scevgep102.2, align 1
  %374 = load i8, i8* %arraydecay10, align 1
  %conv57.i395.2 = zext i8 %374 to i32
  %xor58.i396.2 = xor i32 %conv57.i395.2, 1
  %conv59.i397.2 = trunc i32 %xor58.i396.2 to i8
  %scevgep99.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %375 = load i8, i8* %scevgep99.2, align 1
  %call64.i402.2 = call zeroext i8 @mult(i8 zeroext %conv59.i397.2, i8 zeroext %375) #3
  %scevgep106.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 2
  store i8 %call64.i402.2, i8* %scevgep106.2, align 1
  %376 = load i8, i8* %arraydecay10, align 1
  %scevgep103.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 2
  %377 = load i8, i8* %scevgep103.2, align 1
  %call75.i413.2 = call zeroext i8 @mult(i8 zeroext %376, i8 zeroext %377) #3
  %scevgep110.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 2
  store i8 %call75.i413.2, i8* %scevgep110.2, align 1
  %scevgep107.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 2
  %378 = load i8, i8* %scevgep107.2, align 1
  %conv84.i422.2 = zext i8 %378 to i32
  %scevgep111.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 2
  %379 = load i8, i8* %scevgep111.2, align 1
  %conv89.i427.2 = zext i8 %379 to i32
  %xor90.i428.2 = xor i32 %conv84.i422.2, %conv89.i427.2
  %conv91.i429.2 = trunc i32 %xor90.i428.2 to i8
  %scevgep114.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 2
  store i8 %conv91.i429.2, i8* %scevgep114.2, align 1
  %scevgep95.3 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 3
  %380 = load i8, i8* %scevgep95.3, align 1
  %conv44.i381.3 = zext i8 %380 to i32
  %scevgep98.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %381 = load i8, i8* %scevgep98.3, align 1
  %conv49.i386.3 = zext i8 %381 to i32
  %xor.i387.3 = xor i32 %conv44.i381.3, %conv49.i386.3
  %conv50.i388.3 = trunc i32 %xor.i387.3 to i8
  %scevgep102.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 3
  store i8 %conv50.i388.3, i8* %scevgep102.3, align 1
  %382 = load i8, i8* %arraydecay10, align 1
  %conv57.i395.3 = zext i8 %382 to i32
  %xor58.i396.3 = xor i32 %conv57.i395.3, 1
  %conv59.i397.3 = trunc i32 %xor58.i396.3 to i8
  %scevgep99.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %383 = load i8, i8* %scevgep99.3, align 1
  %call64.i402.3 = call zeroext i8 @mult(i8 zeroext %conv59.i397.3, i8 zeroext %383) #3
  %scevgep106.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 3
  store i8 %call64.i402.3, i8* %scevgep106.3, align 1
  %384 = load i8, i8* %arraydecay10, align 1
  %scevgep103.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 3
  %385 = load i8, i8* %scevgep103.3, align 1
  %call75.i413.3 = call zeroext i8 @mult(i8 zeroext %384, i8 zeroext %385) #3
  %scevgep110.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 3
  store i8 %call75.i413.3, i8* %scevgep110.3, align 1
  %scevgep107.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 3
  %386 = load i8, i8* %scevgep107.3, align 1
  %conv84.i422.3 = zext i8 %386 to i32
  %scevgep111.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 3
  %387 = load i8, i8* %scevgep111.3, align 1
  %conv89.i427.3 = zext i8 %387 to i32
  %xor90.i428.3 = xor i32 %conv84.i422.3, %conv89.i427.3
  %conv91.i429.3 = trunc i32 %xor90.i428.3 to i8
  %scevgep114.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 3
  store i8 %conv91.i429.3, i8* %scevgep114.3, align 1
  %scevgep97 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  %388 = bitcast i8* %scevgep97 to [4 x [4 x i8]]*
  %scevgep101 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 1, i64 0
  %389 = bitcast i8* %scevgep101 to [4 x [4 x i8]]*
  %scevgep105 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %390 = bitcast i8* %scevgep105 to [4 x [4 x i8]]*
  %scevgep109 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %391 = bitcast i8* %scevgep109 to [4 x [4 x i8]]*
  %scevgep113 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 1, i64 0
  %392 = bitcast i8* %scevgep113 to [4 x [4 x i8]]*
  %arrayidx56.i394.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %arrayidx70.i408.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %scevgep95.1316 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 0
  %393 = load i8, i8* %scevgep95.1316, align 1
  %conv44.i381.1317 = zext i8 %393 to i32
  %scevgep98.1318 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %388, i64 0, i64 0, i64 0
  %394 = load i8, i8* %scevgep98.1318, align 1
  %conv49.i386.1319 = zext i8 %394 to i32
  %xor.i387.1320 = xor i32 %conv44.i381.1317, %conv49.i386.1319
  %conv50.i388.1321 = trunc i32 %xor.i387.1320 to i8
  %scevgep102.1322 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %389, i64 0, i64 0, i64 0
  store i8 %conv50.i388.1321, i8* %scevgep102.1322, align 1
  %395 = load i8, i8* %arrayidx56.i394.1, align 1
  %conv57.i395.1323 = zext i8 %395 to i32
  %xor58.i396.1324 = xor i32 %conv57.i395.1323, 1
  %conv59.i397.1325 = trunc i32 %xor58.i396.1324 to i8
  %scevgep99.1326 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %388, i64 0, i64 0, i64 0
  %396 = load i8, i8* %scevgep99.1326, align 1
  %call64.i402.1327 = call zeroext i8 @mult(i8 zeroext %conv59.i397.1325, i8 zeroext %396) #3
  %scevgep106.1328 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %390, i64 0, i64 0, i64 0
  store i8 %call64.i402.1327, i8* %scevgep106.1328, align 1
  %397 = load i8, i8* %arrayidx70.i408.1, align 1
  %scevgep103.1329 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %389, i64 0, i64 0, i64 0
  %398 = load i8, i8* %scevgep103.1329, align 1
  %call75.i413.1330 = call zeroext i8 @mult(i8 zeroext %397, i8 zeroext %398) #3
  %scevgep110.1331 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %391, i64 0, i64 0, i64 0
  store i8 %call75.i413.1330, i8* %scevgep110.1331, align 1
  %scevgep107.1332 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %390, i64 0, i64 0, i64 0
  %399 = load i8, i8* %scevgep107.1332, align 1
  %conv84.i422.1333 = zext i8 %399 to i32
  %scevgep111.1334 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %391, i64 0, i64 0, i64 0
  %400 = load i8, i8* %scevgep111.1334, align 1
  %conv89.i427.1335 = zext i8 %400 to i32
  %xor90.i428.1336 = xor i32 %conv84.i422.1333, %conv89.i427.1335
  %conv91.i429.1337 = trunc i32 %xor90.i428.1336 to i8
  %scevgep114.1338 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %392, i64 0, i64 0, i64 0
  store i8 %conv91.i429.1337, i8* %scevgep114.1338, align 1
  %scevgep95.2.1 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 2
  %401 = load i8, i8* %scevgep95.2.1, align 1
  %conv44.i381.2.1 = zext i8 %401 to i32
  %scevgep98.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %388, i64 0, i64 0, i64 2
  %402 = load i8, i8* %scevgep98.2.1, align 1
  %conv49.i386.2.1 = zext i8 %402 to i32
  %xor.i387.2.1 = xor i32 %conv44.i381.2.1, %conv49.i386.2.1
  %conv50.i388.2.1 = trunc i32 %xor.i387.2.1 to i8
  %scevgep102.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %389, i64 0, i64 0, i64 2
  store i8 %conv50.i388.2.1, i8* %scevgep102.2.1, align 1
  %403 = load i8, i8* %arrayidx56.i394.1, align 1
  %conv57.i395.2.1 = zext i8 %403 to i32
  %xor58.i396.2.1 = xor i32 %conv57.i395.2.1, 1
  %conv59.i397.2.1 = trunc i32 %xor58.i396.2.1 to i8
  %scevgep99.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %388, i64 0, i64 0, i64 2
  %404 = load i8, i8* %scevgep99.2.1, align 1
  %call64.i402.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i397.2.1, i8 zeroext %404) #3
  %scevgep106.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %390, i64 0, i64 0, i64 2
  store i8 %call64.i402.2.1, i8* %scevgep106.2.1, align 1
  %405 = load i8, i8* %arrayidx70.i408.1, align 1
  %scevgep103.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %389, i64 0, i64 0, i64 2
  %406 = load i8, i8* %scevgep103.2.1, align 1
  %call75.i413.2.1 = call zeroext i8 @mult(i8 zeroext %405, i8 zeroext %406) #3
  %scevgep110.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %391, i64 0, i64 0, i64 2
  store i8 %call75.i413.2.1, i8* %scevgep110.2.1, align 1
  %scevgep107.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %390, i64 0, i64 0, i64 2
  %407 = load i8, i8* %scevgep107.2.1, align 1
  %conv84.i422.2.1 = zext i8 %407 to i32
  %scevgep111.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %391, i64 0, i64 0, i64 2
  %408 = load i8, i8* %scevgep111.2.1, align 1
  %conv89.i427.2.1 = zext i8 %408 to i32
  %xor90.i428.2.1 = xor i32 %conv84.i422.2.1, %conv89.i427.2.1
  %conv91.i429.2.1 = trunc i32 %xor90.i428.2.1 to i8
  %scevgep114.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %392, i64 0, i64 0, i64 2
  store i8 %conv91.i429.2.1, i8* %scevgep114.2.1, align 1
  %scevgep95.3.1 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 3
  %409 = load i8, i8* %scevgep95.3.1, align 1
  %conv44.i381.3.1 = zext i8 %409 to i32
  %scevgep98.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %388, i64 0, i64 0, i64 3
  %410 = load i8, i8* %scevgep98.3.1, align 1
  %conv49.i386.3.1 = zext i8 %410 to i32
  %xor.i387.3.1 = xor i32 %conv44.i381.3.1, %conv49.i386.3.1
  %conv50.i388.3.1 = trunc i32 %xor.i387.3.1 to i8
  %scevgep102.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %389, i64 0, i64 0, i64 3
  store i8 %conv50.i388.3.1, i8* %scevgep102.3.1, align 1
  %411 = load i8, i8* %arrayidx56.i394.1, align 1
  %conv57.i395.3.1 = zext i8 %411 to i32
  %xor58.i396.3.1 = xor i32 %conv57.i395.3.1, 1
  %conv59.i397.3.1 = trunc i32 %xor58.i396.3.1 to i8
  %scevgep99.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %388, i64 0, i64 0, i64 3
  %412 = load i8, i8* %scevgep99.3.1, align 1
  %call64.i402.3.1 = call zeroext i8 @mult(i8 zeroext %conv59.i397.3.1, i8 zeroext %412) #3
  %scevgep106.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %390, i64 0, i64 0, i64 3
  store i8 %call64.i402.3.1, i8* %scevgep106.3.1, align 1
  %413 = load i8, i8* %arrayidx70.i408.1, align 1
  %scevgep103.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %389, i64 0, i64 0, i64 3
  %414 = load i8, i8* %scevgep103.3.1, align 1
  %call75.i413.3.1 = call zeroext i8 @mult(i8 zeroext %413, i8 zeroext %414) #3
  %scevgep110.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %391, i64 0, i64 0, i64 3
  store i8 %call75.i413.3.1, i8* %scevgep110.3.1, align 1
  %scevgep107.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %390, i64 0, i64 0, i64 3
  %415 = load i8, i8* %scevgep107.3.1, align 1
  %conv84.i422.3.1 = zext i8 %415 to i32
  %scevgep111.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %391, i64 0, i64 0, i64 3
  %416 = load i8, i8* %scevgep111.3.1, align 1
  %conv89.i427.3.1 = zext i8 %416 to i32
  %xor90.i428.3.1 = xor i32 %conv84.i422.3.1, %conv89.i427.3.1
  %conv91.i429.3.1 = trunc i32 %xor90.i428.3.1 to i8
  %scevgep114.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %392, i64 0, i64 0, i64 3
  store i8 %conv91.i429.3.1, i8* %scevgep114.3.1, align 1
  %scevgep97.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %388, i64 0, i64 1, i64 0
  %417 = bitcast i8* %scevgep97.1 to [4 x [4 x i8]]*
  %scevgep101.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %389, i64 0, i64 1, i64 0
  %418 = bitcast i8* %scevgep101.1 to [4 x [4 x i8]]*
  %scevgep105.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %390, i64 0, i64 1, i64 0
  %419 = bitcast i8* %scevgep105.1 to [4 x [4 x i8]]*
  %scevgep109.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %391, i64 0, i64 1, i64 0
  %420 = bitcast i8* %scevgep109.1 to [4 x [4 x i8]]*
  %scevgep113.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %392, i64 0, i64 1, i64 0
  %421 = bitcast i8* %scevgep113.1 to [4 x [4 x i8]]*
  %arrayidx56.i394.2 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  %arrayidx70.i408.2 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  %scevgep95.2343 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 0
  %422 = load i8, i8* %scevgep95.2343, align 1
  %conv44.i381.2344 = zext i8 %422 to i32
  %scevgep98.2345 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %417, i64 0, i64 0, i64 0
  %423 = load i8, i8* %scevgep98.2345, align 1
  %conv49.i386.2346 = zext i8 %423 to i32
  %xor.i387.2347 = xor i32 %conv44.i381.2344, %conv49.i386.2346
  %conv50.i388.2348 = trunc i32 %xor.i387.2347 to i8
  %scevgep102.2349 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %418, i64 0, i64 0, i64 0
  store i8 %conv50.i388.2348, i8* %scevgep102.2349, align 1
  %424 = load i8, i8* %arrayidx56.i394.2, align 1
  %conv57.i395.2350 = zext i8 %424 to i32
  %xor58.i396.2351 = xor i32 %conv57.i395.2350, 1
  %conv59.i397.2352 = trunc i32 %xor58.i396.2351 to i8
  %scevgep99.2353 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %417, i64 0, i64 0, i64 0
  %425 = load i8, i8* %scevgep99.2353, align 1
  %call64.i402.2354 = call zeroext i8 @mult(i8 zeroext %conv59.i397.2352, i8 zeroext %425) #3
  %scevgep106.2355 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %419, i64 0, i64 0, i64 0
  store i8 %call64.i402.2354, i8* %scevgep106.2355, align 1
  %426 = load i8, i8* %arrayidx70.i408.2, align 1
  %scevgep103.2356 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %418, i64 0, i64 0, i64 0
  %427 = load i8, i8* %scevgep103.2356, align 1
  %call75.i413.2357 = call zeroext i8 @mult(i8 zeroext %426, i8 zeroext %427) #3
  %scevgep110.2358 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %420, i64 0, i64 0, i64 0
  store i8 %call75.i413.2357, i8* %scevgep110.2358, align 1
  %scevgep107.2359 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %419, i64 0, i64 0, i64 0
  %428 = load i8, i8* %scevgep107.2359, align 1
  %conv84.i422.2360 = zext i8 %428 to i32
  %scevgep111.2361 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %420, i64 0, i64 0, i64 0
  %429 = load i8, i8* %scevgep111.2361, align 1
  %conv89.i427.2362 = zext i8 %429 to i32
  %xor90.i428.2363 = xor i32 %conv84.i422.2360, %conv89.i427.2362
  %conv91.i429.2364 = trunc i32 %xor90.i428.2363 to i8
  %scevgep114.2365 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %421, i64 0, i64 0, i64 0
  store i8 %conv91.i429.2364, i8* %scevgep114.2365, align 1
  %scevgep95.1.2 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 1
  %430 = load i8, i8* %scevgep95.1.2, align 1
  %conv44.i381.1.2 = zext i8 %430 to i32
  %scevgep98.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %417, i64 0, i64 0, i64 1
  %431 = load i8, i8* %scevgep98.1.2, align 1
  %conv49.i386.1.2 = zext i8 %431 to i32
  %xor.i387.1.2 = xor i32 %conv44.i381.1.2, %conv49.i386.1.2
  %conv50.i388.1.2 = trunc i32 %xor.i387.1.2 to i8
  %scevgep102.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %418, i64 0, i64 0, i64 1
  store i8 %conv50.i388.1.2, i8* %scevgep102.1.2, align 1
  %432 = load i8, i8* %arrayidx56.i394.2, align 1
  %conv57.i395.1.2 = zext i8 %432 to i32
  %xor58.i396.1.2 = xor i32 %conv57.i395.1.2, 1
  %conv59.i397.1.2 = trunc i32 %xor58.i396.1.2 to i8
  %scevgep99.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %417, i64 0, i64 0, i64 1
  %433 = load i8, i8* %scevgep99.1.2, align 1
  %call64.i402.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i397.1.2, i8 zeroext %433) #3
  %scevgep106.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %419, i64 0, i64 0, i64 1
  store i8 %call64.i402.1.2, i8* %scevgep106.1.2, align 1
  %434 = load i8, i8* %arrayidx70.i408.2, align 1
  %scevgep103.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %418, i64 0, i64 0, i64 1
  %435 = load i8, i8* %scevgep103.1.2, align 1
  %call75.i413.1.2 = call zeroext i8 @mult(i8 zeroext %434, i8 zeroext %435) #3
  %scevgep110.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %420, i64 0, i64 0, i64 1
  store i8 %call75.i413.1.2, i8* %scevgep110.1.2, align 1
  %scevgep107.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %419, i64 0, i64 0, i64 1
  %436 = load i8, i8* %scevgep107.1.2, align 1
  %conv84.i422.1.2 = zext i8 %436 to i32
  %scevgep111.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %420, i64 0, i64 0, i64 1
  %437 = load i8, i8* %scevgep111.1.2, align 1
  %conv89.i427.1.2 = zext i8 %437 to i32
  %xor90.i428.1.2 = xor i32 %conv84.i422.1.2, %conv89.i427.1.2
  %conv91.i429.1.2 = trunc i32 %xor90.i428.1.2 to i8
  %scevgep114.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %421, i64 0, i64 0, i64 1
  store i8 %conv91.i429.1.2, i8* %scevgep114.1.2, align 1
  %scevgep95.3.2 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 3
  %438 = load i8, i8* %scevgep95.3.2, align 1
  %conv44.i381.3.2 = zext i8 %438 to i32
  %scevgep98.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %417, i64 0, i64 0, i64 3
  %439 = load i8, i8* %scevgep98.3.2, align 1
  %conv49.i386.3.2 = zext i8 %439 to i32
  %xor.i387.3.2 = xor i32 %conv44.i381.3.2, %conv49.i386.3.2
  %conv50.i388.3.2 = trunc i32 %xor.i387.3.2 to i8
  %scevgep102.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %418, i64 0, i64 0, i64 3
  store i8 %conv50.i388.3.2, i8* %scevgep102.3.2, align 1
  %440 = load i8, i8* %arrayidx56.i394.2, align 1
  %conv57.i395.3.2 = zext i8 %440 to i32
  %xor58.i396.3.2 = xor i32 %conv57.i395.3.2, 1
  %conv59.i397.3.2 = trunc i32 %xor58.i396.3.2 to i8
  %scevgep99.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %417, i64 0, i64 0, i64 3
  %441 = load i8, i8* %scevgep99.3.2, align 1
  %call64.i402.3.2 = call zeroext i8 @mult(i8 zeroext %conv59.i397.3.2, i8 zeroext %441) #3
  %scevgep106.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %419, i64 0, i64 0, i64 3
  store i8 %call64.i402.3.2, i8* %scevgep106.3.2, align 1
  %442 = load i8, i8* %arrayidx70.i408.2, align 1
  %scevgep103.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %418, i64 0, i64 0, i64 3
  %443 = load i8, i8* %scevgep103.3.2, align 1
  %call75.i413.3.2 = call zeroext i8 @mult(i8 zeroext %442, i8 zeroext %443) #3
  %scevgep110.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %420, i64 0, i64 0, i64 3
  store i8 %call75.i413.3.2, i8* %scevgep110.3.2, align 1
  %scevgep107.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %419, i64 0, i64 0, i64 3
  %444 = load i8, i8* %scevgep107.3.2, align 1
  %conv84.i422.3.2 = zext i8 %444 to i32
  %scevgep111.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %420, i64 0, i64 0, i64 3
  %445 = load i8, i8* %scevgep111.3.2, align 1
  %conv89.i427.3.2 = zext i8 %445 to i32
  %xor90.i428.3.2 = xor i32 %conv84.i422.3.2, %conv89.i427.3.2
  %conv91.i429.3.2 = trunc i32 %xor90.i428.3.2 to i8
  %scevgep114.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %421, i64 0, i64 0, i64 3
  store i8 %conv91.i429.3.2, i8* %scevgep114.3.2, align 1
  %scevgep97.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %417, i64 0, i64 1, i64 0
  %446 = bitcast i8* %scevgep97.2 to [4 x [4 x i8]]*
  %scevgep101.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %418, i64 0, i64 1, i64 0
  %447 = bitcast i8* %scevgep101.2 to [4 x [4 x i8]]*
  %scevgep105.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %419, i64 0, i64 1, i64 0
  %448 = bitcast i8* %scevgep105.2 to [4 x [4 x i8]]*
  %scevgep109.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %420, i64 0, i64 1, i64 0
  %449 = bitcast i8* %scevgep109.2 to [4 x [4 x i8]]*
  %scevgep113.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %421, i64 0, i64 1, i64 0
  %450 = bitcast i8* %scevgep113.2 to [4 x [4 x i8]]*
  %arrayidx56.i394.3 = getelementptr inbounds i8, i8* %arraydecay10, i64 3
  %arrayidx70.i408.3 = getelementptr inbounds i8, i8* %arraydecay10, i64 3
  %scevgep95.3370 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 0
  %451 = load i8, i8* %scevgep95.3370, align 1
  %conv44.i381.3371 = zext i8 %451 to i32
  %scevgep98.3372 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %446, i64 0, i64 0, i64 0
  %452 = load i8, i8* %scevgep98.3372, align 1
  %conv49.i386.3373 = zext i8 %452 to i32
  %xor.i387.3374 = xor i32 %conv44.i381.3371, %conv49.i386.3373
  %conv50.i388.3375 = trunc i32 %xor.i387.3374 to i8
  %scevgep102.3376 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %447, i64 0, i64 0, i64 0
  store i8 %conv50.i388.3375, i8* %scevgep102.3376, align 1
  %453 = load i8, i8* %arrayidx56.i394.3, align 1
  %conv57.i395.3377 = zext i8 %453 to i32
  %xor58.i396.3378 = xor i32 %conv57.i395.3377, 1
  %conv59.i397.3379 = trunc i32 %xor58.i396.3378 to i8
  %scevgep99.3380 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %446, i64 0, i64 0, i64 0
  %454 = load i8, i8* %scevgep99.3380, align 1
  %call64.i402.3381 = call zeroext i8 @mult(i8 zeroext %conv59.i397.3379, i8 zeroext %454) #3
  %scevgep106.3382 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %448, i64 0, i64 0, i64 0
  store i8 %call64.i402.3381, i8* %scevgep106.3382, align 1
  %455 = load i8, i8* %arrayidx70.i408.3, align 1
  %scevgep103.3383 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %447, i64 0, i64 0, i64 0
  %456 = load i8, i8* %scevgep103.3383, align 1
  %call75.i413.3384 = call zeroext i8 @mult(i8 zeroext %455, i8 zeroext %456) #3
  %scevgep110.3385 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %449, i64 0, i64 0, i64 0
  store i8 %call75.i413.3384, i8* %scevgep110.3385, align 1
  %scevgep107.3386 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %448, i64 0, i64 0, i64 0
  %457 = load i8, i8* %scevgep107.3386, align 1
  %conv84.i422.3387 = zext i8 %457 to i32
  %scevgep111.3388 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %449, i64 0, i64 0, i64 0
  %458 = load i8, i8* %scevgep111.3388, align 1
  %conv89.i427.3389 = zext i8 %458 to i32
  %xor90.i428.3390 = xor i32 %conv84.i422.3387, %conv89.i427.3389
  %conv91.i429.3391 = trunc i32 %xor90.i428.3390 to i8
  %scevgep114.3392 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %450, i64 0, i64 0, i64 0
  store i8 %conv91.i429.3391, i8* %scevgep114.3392, align 1
  %scevgep95.1.3 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 1
  %459 = load i8, i8* %scevgep95.1.3, align 1
  %conv44.i381.1.3 = zext i8 %459 to i32
  %scevgep98.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %446, i64 0, i64 0, i64 1
  %460 = load i8, i8* %scevgep98.1.3, align 1
  %conv49.i386.1.3 = zext i8 %460 to i32
  %xor.i387.1.3 = xor i32 %conv44.i381.1.3, %conv49.i386.1.3
  %conv50.i388.1.3 = trunc i32 %xor.i387.1.3 to i8
  %scevgep102.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %447, i64 0, i64 0, i64 1
  store i8 %conv50.i388.1.3, i8* %scevgep102.1.3, align 1
  %461 = load i8, i8* %arrayidx56.i394.3, align 1
  %conv57.i395.1.3 = zext i8 %461 to i32
  %xor58.i396.1.3 = xor i32 %conv57.i395.1.3, 1
  %conv59.i397.1.3 = trunc i32 %xor58.i396.1.3 to i8
  %scevgep99.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %446, i64 0, i64 0, i64 1
  %462 = load i8, i8* %scevgep99.1.3, align 1
  %call64.i402.1.3 = call zeroext i8 @mult(i8 zeroext %conv59.i397.1.3, i8 zeroext %462) #3
  %scevgep106.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %448, i64 0, i64 0, i64 1
  store i8 %call64.i402.1.3, i8* %scevgep106.1.3, align 1
  %463 = load i8, i8* %arrayidx70.i408.3, align 1
  %scevgep103.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %447, i64 0, i64 0, i64 1
  %464 = load i8, i8* %scevgep103.1.3, align 1
  %call75.i413.1.3 = call zeroext i8 @mult(i8 zeroext %463, i8 zeroext %464) #3
  %scevgep110.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %449, i64 0, i64 0, i64 1
  store i8 %call75.i413.1.3, i8* %scevgep110.1.3, align 1
  %scevgep107.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %448, i64 0, i64 0, i64 1
  %465 = load i8, i8* %scevgep107.1.3, align 1
  %conv84.i422.1.3 = zext i8 %465 to i32
  %scevgep111.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %449, i64 0, i64 0, i64 1
  %466 = load i8, i8* %scevgep111.1.3, align 1
  %conv89.i427.1.3 = zext i8 %466 to i32
  %xor90.i428.1.3 = xor i32 %conv84.i422.1.3, %conv89.i427.1.3
  %conv91.i429.1.3 = trunc i32 %xor90.i428.1.3 to i8
  %scevgep114.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %450, i64 0, i64 0, i64 1
  store i8 %conv91.i429.1.3, i8* %scevgep114.1.3, align 1
  %scevgep95.2.3 = getelementptr [4 x i8], [4 x i8]* %e4, i64 0, i64 2
  %467 = load i8, i8* %scevgep95.2.3, align 1
  %conv44.i381.2.3 = zext i8 %467 to i32
  %scevgep98.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %446, i64 0, i64 0, i64 2
  %468 = load i8, i8* %scevgep98.2.3, align 1
  %conv49.i386.2.3 = zext i8 %468 to i32
  %xor.i387.2.3 = xor i32 %conv44.i381.2.3, %conv49.i386.2.3
  %conv50.i388.2.3 = trunc i32 %xor.i387.2.3 to i8
  %scevgep102.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %447, i64 0, i64 0, i64 2
  store i8 %conv50.i388.2.3, i8* %scevgep102.2.3, align 1
  %469 = load i8, i8* %arrayidx56.i394.3, align 1
  %conv57.i395.2.3 = zext i8 %469 to i32
  %xor58.i396.2.3 = xor i32 %conv57.i395.2.3, 1
  %conv59.i397.2.3 = trunc i32 %xor58.i396.2.3 to i8
  %scevgep99.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %446, i64 0, i64 0, i64 2
  %470 = load i8, i8* %scevgep99.2.3, align 1
  %call64.i402.2.3 = call zeroext i8 @mult(i8 zeroext %conv59.i397.2.3, i8 zeroext %470) #3
  %scevgep106.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %448, i64 0, i64 0, i64 2
  store i8 %call64.i402.2.3, i8* %scevgep106.2.3, align 1
  %471 = load i8, i8* %arrayidx70.i408.3, align 1
  %scevgep103.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %447, i64 0, i64 0, i64 2
  %472 = load i8, i8* %scevgep103.2.3, align 1
  %call75.i413.2.3 = call zeroext i8 @mult(i8 zeroext %471, i8 zeroext %472) #3
  %scevgep110.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %449, i64 0, i64 0, i64 2
  store i8 %call75.i413.2.3, i8* %scevgep110.2.3, align 1
  %scevgep107.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %448, i64 0, i64 0, i64 2
  %473 = load i8, i8* %scevgep107.2.3, align 1
  %conv84.i422.2.3 = zext i8 %473 to i32
  %scevgep111.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %449, i64 0, i64 0, i64 2
  %474 = load i8, i8* %scevgep111.2.3, align 1
  %conv89.i427.2.3 = zext i8 %474 to i32
  %xor90.i428.2.3 = xor i32 %conv84.i422.2.3, %conv89.i427.2.3
  %conv91.i429.2.3 = trunc i32 %xor90.i428.2.3 to i8
  %scevgep114.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %450, i64 0, i64 0, i64 2
  store i8 %conv91.i429.2.3, i8* %scevgep114.2.3, align 1
  %475 = load i8, i8* %arraydecay10, align 1
  %476 = load i8, i8* %arraydecay11, align 1
  %call111.i446 = call zeroext i8 @mult(i8 zeroext %475, i8 zeroext %476) #3
  store i8 %call111.i446, i8* %arraydecay12, align 1
  %scevgep86.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 1
  %477 = load i8, i8* %scevgep86.1, align 1
  %conv126.i458.1 = zext i8 %477 to i32
  %478 = load i8, i8* %arraydecay12, align 1
  %conv129.i461.1 = zext i8 %478 to i32
  %xor130.i462.1 = xor i32 %conv129.i461.1, %conv126.i458.1
  %conv131.i463.1 = trunc i32 %xor130.i462.1 to i8
  store i8 %conv131.i463.1, i8* %arraydecay12, align 1
  %scevgep86.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 2
  %479 = load i8, i8* %scevgep86.2, align 1
  %conv126.i458.2 = zext i8 %479 to i32
  %480 = load i8, i8* %arraydecay12, align 1
  %conv129.i461.2 = zext i8 %480 to i32
  %xor130.i462.2 = xor i32 %conv129.i461.2, %conv126.i458.2
  %conv131.i463.2 = trunc i32 %xor130.i462.2 to i8
  store i8 %conv131.i463.2, i8* %arraydecay12, align 1
  %scevgep86.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 3
  %481 = load i8, i8* %scevgep86.3, align 1
  %conv126.i458.3 = zext i8 %481 to i32
  %482 = load i8, i8* %arraydecay12, align 1
  %conv129.i461.3 = zext i8 %482 to i32
  %xor130.i462.3 = xor i32 %conv129.i461.3, %conv126.i458.3
  %conv131.i463.3 = trunc i32 %xor130.i462.3 to i8
  store i8 %conv131.i463.3, i8* %arraydecay12, align 1
  %scevgep85 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 1, i64 0
  %483 = bitcast i8* %scevgep85 to [4 x [4 x i8]]*
  %arrayidx108.i443.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %484 = load i8, i8* %arrayidx108.i443.1, align 1
  %arrayidx110.i445.1 = getelementptr inbounds i8, i8* %arraydecay11, i64 1
  %485 = load i8, i8* %arrayidx110.i445.1, align 1
  %call111.i446.1 = call zeroext i8 @mult(i8 zeroext %484, i8 zeroext %485) #3
  %arrayidx113.i448.1 = getelementptr inbounds i8, i8* %arraydecay12, i64 1
  store i8 %call111.i446.1, i8* %arrayidx113.i448.1, align 1
  %arrayidx128.i460.1 = getelementptr inbounds i8, i8* %arraydecay12, i64 1
  %scevgep86.1289 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %483, i64 0, i64 0, i64 0
  %486 = load i8, i8* %scevgep86.1289, align 1
  %conv126.i458.1290 = zext i8 %486 to i32
  %487 = load i8, i8* %arrayidx128.i460.1, align 1
  %conv129.i461.1291 = zext i8 %487 to i32
  %xor130.i462.1292 = xor i32 %conv129.i461.1291, %conv126.i458.1290
  %conv131.i463.1293 = trunc i32 %xor130.i462.1292 to i8
  store i8 %conv131.i463.1293, i8* %arrayidx128.i460.1, align 1
  %scevgep86.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %483, i64 0, i64 0, i64 2
  %488 = load i8, i8* %scevgep86.2.1, align 1
  %conv126.i458.2.1 = zext i8 %488 to i32
  %489 = load i8, i8* %arrayidx128.i460.1, align 1
  %conv129.i461.2.1 = zext i8 %489 to i32
  %xor130.i462.2.1 = xor i32 %conv129.i461.2.1, %conv126.i458.2.1
  %conv131.i463.2.1 = trunc i32 %xor130.i462.2.1 to i8
  store i8 %conv131.i463.2.1, i8* %arrayidx128.i460.1, align 1
  %scevgep86.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %483, i64 0, i64 0, i64 3
  %490 = load i8, i8* %scevgep86.3.1, align 1
  %conv126.i458.3.1 = zext i8 %490 to i32
  %491 = load i8, i8* %arrayidx128.i460.1, align 1
  %conv129.i461.3.1 = zext i8 %491 to i32
  %xor130.i462.3.1 = xor i32 %conv129.i461.3.1, %conv126.i458.3.1
  %conv131.i463.3.1 = trunc i32 %xor130.i462.3.1 to i8
  store i8 %conv131.i463.3.1, i8* %arrayidx128.i460.1, align 1
  %scevgep85.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %483, i64 0, i64 1, i64 0
  %492 = bitcast i8* %scevgep85.1 to [4 x [4 x i8]]*
  %arrayidx108.i443.2 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  %493 = load i8, i8* %arrayidx108.i443.2, align 1
  %arrayidx110.i445.2 = getelementptr inbounds i8, i8* %arraydecay11, i64 2
  %494 = load i8, i8* %arrayidx110.i445.2, align 1
  %call111.i446.2 = call zeroext i8 @mult(i8 zeroext %493, i8 zeroext %494) #3
  %arrayidx113.i448.2 = getelementptr inbounds i8, i8* %arraydecay12, i64 2
  store i8 %call111.i446.2, i8* %arrayidx113.i448.2, align 1
  %arrayidx128.i460.2 = getelementptr inbounds i8, i8* %arraydecay12, i64 2
  %scevgep86.2298 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %492, i64 0, i64 0, i64 0
  %495 = load i8, i8* %scevgep86.2298, align 1
  %conv126.i458.2299 = zext i8 %495 to i32
  %496 = load i8, i8* %arrayidx128.i460.2, align 1
  %conv129.i461.2300 = zext i8 %496 to i32
  %xor130.i462.2301 = xor i32 %conv129.i461.2300, %conv126.i458.2299
  %conv131.i463.2302 = trunc i32 %xor130.i462.2301 to i8
  store i8 %conv131.i463.2302, i8* %arrayidx128.i460.2, align 1
  %scevgep86.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %492, i64 0, i64 0, i64 1
  %497 = load i8, i8* %scevgep86.1.2, align 1
  %conv126.i458.1.2 = zext i8 %497 to i32
  %498 = load i8, i8* %arrayidx128.i460.2, align 1
  %conv129.i461.1.2 = zext i8 %498 to i32
  %xor130.i462.1.2 = xor i32 %conv129.i461.1.2, %conv126.i458.1.2
  %conv131.i463.1.2 = trunc i32 %xor130.i462.1.2 to i8
  store i8 %conv131.i463.1.2, i8* %arrayidx128.i460.2, align 1
  %scevgep86.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %492, i64 0, i64 0, i64 3
  %499 = load i8, i8* %scevgep86.3.2, align 1
  %conv126.i458.3.2 = zext i8 %499 to i32
  %500 = load i8, i8* %arrayidx128.i460.2, align 1
  %conv129.i461.3.2 = zext i8 %500 to i32
  %xor130.i462.3.2 = xor i32 %conv129.i461.3.2, %conv126.i458.3.2
  %conv131.i463.3.2 = trunc i32 %xor130.i462.3.2 to i8
  store i8 %conv131.i463.3.2, i8* %arrayidx128.i460.2, align 1
  %scevgep85.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %492, i64 0, i64 1, i64 0
  %501 = bitcast i8* %scevgep85.2 to [4 x [4 x i8]]*
  %arrayidx108.i443.3 = getelementptr inbounds i8, i8* %arraydecay10, i64 3
  %502 = load i8, i8* %arrayidx108.i443.3, align 1
  %arrayidx110.i445.3 = getelementptr inbounds i8, i8* %arraydecay11, i64 3
  %503 = load i8, i8* %arrayidx110.i445.3, align 1
  %call111.i446.3 = call zeroext i8 @mult(i8 zeroext %502, i8 zeroext %503) #3
  %arrayidx113.i448.3 = getelementptr inbounds i8, i8* %arraydecay12, i64 3
  store i8 %call111.i446.3, i8* %arrayidx113.i448.3, align 1
  %arrayidx128.i460.3 = getelementptr inbounds i8, i8* %arraydecay12, i64 3
  %scevgep86.3307 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %501, i64 0, i64 0, i64 0
  %504 = load i8, i8* %scevgep86.3307, align 1
  %conv126.i458.3308 = zext i8 %504 to i32
  %505 = load i8, i8* %arrayidx128.i460.3, align 1
  %conv129.i461.3309 = zext i8 %505 to i32
  %xor130.i462.3310 = xor i32 %conv129.i461.3309, %conv126.i458.3308
  %conv131.i463.3311 = trunc i32 %xor130.i462.3310 to i8
  store i8 %conv131.i463.3311, i8* %arrayidx128.i460.3, align 1
  %scevgep86.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %501, i64 0, i64 0, i64 1
  %506 = load i8, i8* %scevgep86.1.3, align 1
  %conv126.i458.1.3 = zext i8 %506 to i32
  %507 = load i8, i8* %arrayidx128.i460.3, align 1
  %conv129.i461.1.3 = zext i8 %507 to i32
  %xor130.i462.1.3 = xor i32 %conv129.i461.1.3, %conv126.i458.1.3
  %conv131.i463.1.3 = trunc i32 %xor130.i462.1.3 to i8
  store i8 %conv131.i463.1.3, i8* %arrayidx128.i460.3, align 1
  %scevgep86.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %501, i64 0, i64 0, i64 2
  %508 = load i8, i8* %scevgep86.2.3, align 1
  %conv126.i458.2.3 = zext i8 %508 to i32
  %509 = load i8, i8* %arrayidx128.i460.3, align 1
  %conv129.i461.2.3 = zext i8 %509 to i32
  %xor130.i462.2.3 = xor i32 %conv129.i461.2.3, %conv126.i458.2.3
  %conv131.i463.2.3 = trunc i32 %xor130.i462.2.3 to i8
  store i8 %conv131.i463.2.3, i8* %arrayidx128.i460.3, align 1
  %call139.i469 = call zeroext i8 @mult(i8 zeroext %call.i316, i8 zeroext %call1.i317) #3
  %conv140.i470 = zext i8 %call139.i469 to i32
  %scevgep76 = getelementptr [4 x i8], [4 x i8]* %e7, i64 0, i64 0
  %510 = load i8, i8* %scevgep76, align 1
  %scevgep76.1 = getelementptr [4 x i8], [4 x i8]* %e7, i64 0, i64 1
  %511 = load i8, i8* %scevgep76.1, align 1
  %conv.i.i172.i477.1 = zext i8 %511 to i32
  %conv1.i.i173.i478.1 = zext i8 %510 to i32
  %xor.i.i174.i479.1 = xor i32 %conv1.i.i173.i478.1, %conv.i.i172.i477.1
  %conv2.i.i175.i480.1 = trunc i32 %xor.i.i174.i479.1 to i8
  %scevgep76.2 = getelementptr [4 x i8], [4 x i8]* %e7, i64 0, i64 2
  %512 = load i8, i8* %scevgep76.2, align 1
  %conv.i.i172.i477.2 = zext i8 %512 to i32
  %conv1.i.i173.i478.2 = zext i8 %conv2.i.i175.i480.1 to i32
  %xor.i.i174.i479.2 = xor i32 %conv1.i.i173.i478.2, %conv.i.i172.i477.2
  %conv2.i.i175.i480.2 = trunc i32 %xor.i.i174.i479.2 to i8
  %scevgep76.3 = getelementptr [4 x i8], [4 x i8]* %e7, i64 0, i64 3
  %513 = load i8, i8* %scevgep76.3, align 1
  %conv.i.i172.i477.3 = zext i8 %513 to i32
  %conv1.i.i173.i478.3 = zext i8 %conv2.i.i175.i480.2 to i32
  %xor.i.i174.i479.3 = xor i32 %conv1.i.i173.i478.3, %conv.i.i172.i477.3
  %conv2.i.i175.i480.3 = trunc i32 %xor.i.i174.i479.3 to i8
  %conv142.i483 = zext i8 %conv2.i.i175.i480.3 to i32
  %cmp143.i484 = icmp eq i32 %conv140.i470, %conv142.i483
  call void @assert(i1 zeroext %cmp143.i484) #3
  %scevgep71 = getelementptr [4 x i8], [4 x i8]* %e3, i64 0, i64 0
  %514 = load i8, i8* %scevgep71, align 1
  %call.i494 = call zeroext i8 @L3(i8 zeroext %514) #3
  %scevgep72 = getelementptr [4 x i8], [4 x i8]* %l3, i64 0, i64 0
  store i8 %call.i494, i8* %scevgep72, align 1
  %scevgep71.1 = getelementptr [4 x i8], [4 x i8]* %e3, i64 0, i64 1
  %515 = load i8, i8* %scevgep71.1, align 1
  %call.i494.1 = call zeroext i8 @L3(i8 zeroext %515) #3
  %scevgep72.1 = getelementptr [4 x i8], [4 x i8]* %l3, i64 0, i64 1
  store i8 %call.i494.1, i8* %scevgep72.1, align 1
  %scevgep71.2 = getelementptr [4 x i8], [4 x i8]* %e3, i64 0, i64 2
  %516 = load i8, i8* %scevgep71.2, align 1
  %call.i494.2 = call zeroext i8 @L3(i8 zeroext %516) #3
  %scevgep72.2 = getelementptr [4 x i8], [4 x i8]* %l3, i64 0, i64 2
  store i8 %call.i494.2, i8* %scevgep72.2, align 1
  %scevgep71.3 = getelementptr [4 x i8], [4 x i8]* %e3, i64 0, i64 3
  %517 = load i8, i8* %scevgep71.3, align 1
  %call.i494.3 = call zeroext i8 @L3(i8 zeroext %517) #3
  %scevgep72.3 = getelementptr [4 x i8], [4 x i8]* %l3, i64 0, i64 3
  store i8 %call.i494.3, i8* %scevgep72.3, align 1
  %scevgep66 = getelementptr [4 x i8], [4 x i8]* %e5, i64 0, i64 0
  %518 = load i8, i8* %scevgep66, align 1
  %call.i509 = call zeroext i8 @L5(i8 zeroext %518) #3
  %scevgep67 = getelementptr [4 x i8], [4 x i8]* %l5, i64 0, i64 0
  store i8 %call.i509, i8* %scevgep67, align 1
  %scevgep66.1 = getelementptr [4 x i8], [4 x i8]* %e5, i64 0, i64 1
  %519 = load i8, i8* %scevgep66.1, align 1
  %call.i509.1 = call zeroext i8 @L5(i8 zeroext %519) #3
  %scevgep67.1 = getelementptr [4 x i8], [4 x i8]* %l5, i64 0, i64 1
  store i8 %call.i509.1, i8* %scevgep67.1, align 1
  %scevgep66.2 = getelementptr [4 x i8], [4 x i8]* %e5, i64 0, i64 2
  %520 = load i8, i8* %scevgep66.2, align 1
  %call.i509.2 = call zeroext i8 @L5(i8 zeroext %520) #3
  %scevgep67.2 = getelementptr [4 x i8], [4 x i8]* %l5, i64 0, i64 2
  store i8 %call.i509.2, i8* %scevgep67.2, align 1
  %scevgep66.3 = getelementptr [4 x i8], [4 x i8]* %e5, i64 0, i64 3
  %521 = load i8, i8* %scevgep66.3, align 1
  %call.i509.3 = call zeroext i8 @L5(i8 zeroext %521) #3
  %scevgep67.3 = getelementptr [4 x i8], [4 x i8]* %l5, i64 0, i64 3
  store i8 %call.i509.3, i8* %scevgep67.3, align 1
  %scevgep61 = getelementptr [4 x i8], [4 x i8]* %e7, i64 0, i64 0
  %522 = load i8, i8* %scevgep61, align 1
  %call.i524 = call zeroext i8 @L7(i8 zeroext %522) #3
  %scevgep62 = getelementptr [4 x i8], [4 x i8]* %l7, i64 0, i64 0
  store i8 %call.i524, i8* %scevgep62, align 1
  %scevgep61.1 = getelementptr [4 x i8], [4 x i8]* %e7, i64 0, i64 1
  %523 = load i8, i8* %scevgep61.1, align 1
  %call.i524.1 = call zeroext i8 @L7(i8 zeroext %523) #3
  %scevgep62.1 = getelementptr [4 x i8], [4 x i8]* %l7, i64 0, i64 1
  store i8 %call.i524.1, i8* %scevgep62.1, align 1
  %scevgep61.2 = getelementptr [4 x i8], [4 x i8]* %e7, i64 0, i64 2
  %524 = load i8, i8* %scevgep61.2, align 1
  %call.i524.2 = call zeroext i8 @L7(i8 zeroext %524) #3
  %scevgep62.2 = getelementptr [4 x i8], [4 x i8]* %l7, i64 0, i64 2
  store i8 %call.i524.2, i8* %scevgep62.2, align 1
  %scevgep61.3 = getelementptr [4 x i8], [4 x i8]* %e7, i64 0, i64 3
  %525 = load i8, i8* %scevgep61.3, align 1
  %call.i524.3 = call zeroext i8 @L7(i8 zeroext %525) #3
  %scevgep62.3 = getelementptr [4 x i8], [4 x i8]* %l7, i64 0, i64 3
  store i8 %call.i524.3, i8* %scevgep62.3, align 1
  %scevgep53 = getelementptr [4 x i8], [4 x i8]* %l1, i64 0, i64 0
  %526 = load i8, i8* %scevgep53, align 1
  %conv21 = zext i8 %526 to i32
  %scevgep54 = getelementptr [4 x i8], [4 x i8]* %l3, i64 0, i64 0
  %527 = load i8, i8* %scevgep54, align 1
  %conv24 = zext i8 %527 to i32
  %xor = xor i32 %conv21, %conv24
  %scevgep55 = getelementptr [4 x i8], [4 x i8]* %l5, i64 0, i64 0
  %528 = load i8, i8* %scevgep55, align 1
  %conv27 = zext i8 %528 to i32
  %xor28 = xor i32 %xor, %conv27
  %scevgep56 = getelementptr [4 x i8], [4 x i8]* %l7, i64 0, i64 0
  %529 = load i8, i8* %scevgep56, align 1
  %conv31 = zext i8 %529 to i32
  %xor32 = xor i32 %xor28, %conv31
  %conv33 = trunc i32 %xor32 to i8
  store i8 %conv33, i8* %y, align 1
  %scevgep53.1 = getelementptr [4 x i8], [4 x i8]* %l1, i64 0, i64 1
  %530 = load i8, i8* %scevgep53.1, align 1
  %conv21.1 = zext i8 %530 to i32
  %scevgep54.1 = getelementptr [4 x i8], [4 x i8]* %l3, i64 0, i64 1
  %531 = load i8, i8* %scevgep54.1, align 1
  %conv24.1 = zext i8 %531 to i32
  %xor.1 = xor i32 %conv21.1, %conv24.1
  %scevgep55.1 = getelementptr [4 x i8], [4 x i8]* %l5, i64 0, i64 1
  %532 = load i8, i8* %scevgep55.1, align 1
  %conv27.1 = zext i8 %532 to i32
  %xor28.1 = xor i32 %xor.1, %conv27.1
  %scevgep56.1 = getelementptr [4 x i8], [4 x i8]* %l7, i64 0, i64 1
  %533 = load i8, i8* %scevgep56.1, align 1
  %conv31.1 = zext i8 %533 to i32
  %xor32.1 = xor i32 %xor28.1, %conv31.1
  %conv33.1 = trunc i32 %xor32.1 to i8
  %scevgep57.1 = getelementptr i8, i8* %y, i64 1
  store i8 %conv33.1, i8* %scevgep57.1, align 1
  %scevgep53.2 = getelementptr [4 x i8], [4 x i8]* %l1, i64 0, i64 2
  %534 = load i8, i8* %scevgep53.2, align 1
  %conv21.2 = zext i8 %534 to i32
  %scevgep54.2 = getelementptr [4 x i8], [4 x i8]* %l3, i64 0, i64 2
  %535 = load i8, i8* %scevgep54.2, align 1
  %conv24.2 = zext i8 %535 to i32
  %xor.2 = xor i32 %conv21.2, %conv24.2
  %scevgep55.2 = getelementptr [4 x i8], [4 x i8]* %l5, i64 0, i64 2
  %536 = load i8, i8* %scevgep55.2, align 1
  %conv27.2 = zext i8 %536 to i32
  %xor28.2 = xor i32 %xor.2, %conv27.2
  %scevgep56.2 = getelementptr [4 x i8], [4 x i8]* %l7, i64 0, i64 2
  %537 = load i8, i8* %scevgep56.2, align 1
  %conv31.2 = zext i8 %537 to i32
  %xor32.2 = xor i32 %xor28.2, %conv31.2
  %conv33.2 = trunc i32 %xor32.2 to i8
  %scevgep57.2 = getelementptr i8, i8* %y, i64 2
  store i8 %conv33.2, i8* %scevgep57.2, align 1
  %scevgep53.3 = getelementptr [4 x i8], [4 x i8]* %l1, i64 0, i64 3
  %538 = load i8, i8* %scevgep53.3, align 1
  %conv21.3 = zext i8 %538 to i32
  %scevgep54.3 = getelementptr [4 x i8], [4 x i8]* %l3, i64 0, i64 3
  %539 = load i8, i8* %scevgep54.3, align 1
  %conv24.3 = zext i8 %539 to i32
  %xor.3 = xor i32 %conv21.3, %conv24.3
  %scevgep55.3 = getelementptr [4 x i8], [4 x i8]* %l5, i64 0, i64 3
  %540 = load i8, i8* %scevgep55.3, align 1
  %conv27.3 = zext i8 %540 to i32
  %xor28.3 = xor i32 %xor.3, %conv27.3
  %scevgep56.3 = getelementptr [4 x i8], [4 x i8]* %l7, i64 0, i64 3
  %541 = load i8, i8* %scevgep56.3, align 1
  %conv31.3 = zext i8 %541 to i32
  %xor32.3 = xor i32 %xor28.3, %conv31.3
  %conv33.3 = trunc i32 %xor32.3 to i8
  %scevgep57.3 = getelementptr i8, i8* %y, i64 3
  store i8 %conv33.3, i8* %scevgep57.3, align 1
  %542 = load i8, i8* %y, align 1
  %conv37 = zext i8 %542 to i32
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
  %543 = load i8, i8* %y, align 1
  %scevgep.1 = getelementptr i8, i8* %y, i64 1
  %544 = load i8, i8* %scevgep.1, align 1
  %conv.i.i548.1 = zext i8 %544 to i32
  %conv1.i.i549.1 = zext i8 %543 to i32
  %xor.i.i550.1 = xor i32 %conv1.i.i549.1, %conv.i.i548.1
  %conv2.i.i551.1 = trunc i32 %xor.i.i550.1 to i8
  %scevgep.2 = getelementptr i8, i8* %y, i64 2
  %545 = load i8, i8* %scevgep.2, align 1
  %conv.i.i548.2 = zext i8 %545 to i32
  %conv1.i.i549.2 = zext i8 %conv2.i.i551.1 to i32
  %xor.i.i550.2 = xor i32 %conv1.i.i549.2, %conv.i.i548.2
  %conv2.i.i551.2 = trunc i32 %xor.i.i550.2 to i8
  %scevgep.3 = getelementptr i8, i8* %y, i64 3
  %546 = load i8, i8* %scevgep.3, align 1
  %conv.i.i548.3 = zext i8 %546 to i32
  %conv1.i.i549.3 = zext i8 %conv2.i.i551.2 to i32
  %xor.i.i550.3 = xor i32 %conv1.i.i549.3, %conv.i.i548.3
  %conv2.i.i551.3 = trunc i32 %xor.i.i550.3 to i8
  %conv43 = zext i8 %conv2.i.i551.3 to i32
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
