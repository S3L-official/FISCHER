; ModuleID = '../examples/cassiers-tifs2020-sbox.inline-3.ll'
source_filename = "../examples/cassiers-tifs2020-sbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 3, align 4
@.str = private unnamed_addr constant [7 x i8] c"verify\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [37 x i8] c"../examples/cassiers-tifs2020-sbox.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [7 x i8] c"affine\00", section "llvm.metadata"
@llvm.global.annotations = appending global [9 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*, i8*)* @sec_mult to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i32 3 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*)* @refresh_masks to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i32 40 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @square to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i32 54 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp4 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i32 56 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @exp16 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i32 58 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*)* @sec_exp254 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i32 72 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*)* @sec_expd to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i32 102 }, { i8*, i8*, i8*, i32 } { i8* bitcast (i8 (i8)* @af to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i32 125 }, { i8*, i8*, i8*, i32 } { i8* bitcast (void (i8*, i8*)* @sec_sbox to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i32 131 }], section "llvm.metadata"

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
  %s.i = alloca [4 x [4 x i8]], align 16
  %p0.i = alloca [4 x [4 x i8]], align 16
  %p1.i = alloca [4 x [4 x i8]], align 16
  %z.i = alloca [4 x [4 x i8]], align 16
  %z = alloca [4 x i8], align 1
  %w = alloca [4 x i8], align 1
  %u = alloca [4 x i8], align 1
  %v = alloca [4 x i8], align 1
  %m = alloca [4 x i8], align 1
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %scevgep370.1 = getelementptr i8, i8* %x, i64 1
  %1 = load i8, i8* %scevgep370.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep370.2 = getelementptr i8, i8* %x, i64 2
  %2 = load i8, i8* %scevgep370.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %scevgep370.3 = getelementptr i8, i8* %x, i64 3
  %3 = load i8, i8* %scevgep370.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %conv2 = zext i8 %conv2.i.i.3 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %4 = load i8, i8* %x, align 1
  %call.i = call zeroext i8 @square(i8 zeroext %4) #3
  %scevgep366 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 0
  store i8 %call.i, i8* %scevgep366, align 1
  %scevgep365.1 = getelementptr i8, i8* %x, i64 1
  %5 = load i8, i8* %scevgep365.1, align 1
  %call.i.1 = call zeroext i8 @square(i8 zeroext %5) #3
  %scevgep366.1 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 1
  store i8 %call.i.1, i8* %scevgep366.1, align 1
  %scevgep365.2 = getelementptr i8, i8* %x, i64 2
  %6 = load i8, i8* %scevgep365.2, align 1
  %call.i.2 = call zeroext i8 @square(i8 zeroext %6) #3
  %scevgep366.2 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 2
  store i8 %call.i.2, i8* %scevgep366.2, align 1
  %scevgep365.3 = getelementptr i8, i8* %x, i64 3
  %7 = load i8, i8* %scevgep365.3, align 1
  %call.i.3 = call zeroext i8 @square(i8 zeroext %7) #3
  %scevgep366.3 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 3
  store i8 %call.i.3, i8* %scevgep366.3, align 1
  %arraydecay4 = getelementptr inbounds [4 x i8], [4 x i8]* %z, i64 0, i64 0
  %call.i28 = call zeroext i8 (...) @rand() #3
  %conv.i = zext i8 %call.i28 to i32
  %scevgep361 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 0
  %8 = load i8, i8* %scevgep361, align 1
  %scevgep361.1 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 1
  %9 = load i8, i8* %scevgep361.1, align 1
  %conv.i.i.i.1 = zext i8 %9 to i32
  %conv1.i.i.i.1 = zext i8 %8 to i32
  %xor.i.i.i.1 = xor i32 %conv1.i.i.i.1, %conv.i.i.i.1
  %conv2.i.i.i.1 = trunc i32 %xor.i.i.i.1 to i8
  %scevgep361.2 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 2
  %10 = load i8, i8* %scevgep361.2, align 1
  %conv.i.i.i.2 = zext i8 %10 to i32
  %conv1.i.i.i.2 = zext i8 %conv2.i.i.i.1 to i32
  %xor.i.i.i.2 = xor i32 %conv1.i.i.i.2, %conv.i.i.i.2
  %conv2.i.i.i.2 = trunc i32 %xor.i.i.i.2 to i8
  %scevgep361.3 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 3
  %11 = load i8, i8* %scevgep361.3, align 1
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
  %scevgep357 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 1
  %13 = load i8, i8* %scevgep357, align 1
  %conv13.i = zext i8 %13 to i32
  %xor14.i = xor i32 %conv13.i, %conv11.i
  %conv15.i = trunc i32 %xor14.i to i8
  store i8 %conv15.i, i8* %scevgep357, align 1
  %call7.i.1 = call zeroext i8 (...) @rand() #3
  %conv8.i.1 = zext i8 %call7.i.1 to i32
  %14 = load i8, i8* %arraydecay4, align 1
  %conv9.i.1 = zext i8 %14 to i32
  %xor.i.1 = xor i32 %conv9.i.1, %conv8.i.1
  %conv10.i.1 = trunc i32 %xor.i.1 to i8
  store i8 %conv10.i.1, i8* %arraydecay4, align 1
  %conv11.i.1 = zext i8 %call7.i.1 to i32
  %scevgep357.1 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 2
  %15 = load i8, i8* %scevgep357.1, align 1
  %conv13.i.1 = zext i8 %15 to i32
  %xor14.i.1 = xor i32 %conv13.i.1, %conv11.i.1
  %conv15.i.1 = trunc i32 %xor14.i.1 to i8
  store i8 %conv15.i.1, i8* %scevgep357.1, align 1
  %call7.i.2 = call zeroext i8 (...) @rand() #3
  %conv8.i.2 = zext i8 %call7.i.2 to i32
  %16 = load i8, i8* %arraydecay4, align 1
  %conv9.i.2 = zext i8 %16 to i32
  %xor.i.2 = xor i32 %conv9.i.2, %conv8.i.2
  %conv10.i.2 = trunc i32 %xor.i.2 to i8
  store i8 %conv10.i.2, i8* %arraydecay4, align 1
  %conv11.i.2 = zext i8 %call7.i.2 to i32
  %scevgep357.2 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 3
  %17 = load i8, i8* %scevgep357.2, align 1
  %conv13.i.2 = zext i8 %17 to i32
  %xor14.i.2 = xor i32 %conv13.i.2, %conv11.i.2
  %conv15.i.2 = trunc i32 %xor14.i.2 to i8
  store i8 %conv15.i.2, i8* %scevgep357.2, align 1
  %conv16.i = zext i8 %call.i28 to i32
  %scevgep353 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 0
  %18 = load i8, i8* %scevgep353, align 1
  %scevgep353.1 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 1
  %19 = load i8, i8* %scevgep353.1, align 1
  %conv.i.i31.i.1 = zext i8 %19 to i32
  %conv1.i.i32.i.1 = zext i8 %18 to i32
  %xor.i.i33.i.1 = xor i32 %conv1.i.i32.i.1, %conv.i.i31.i.1
  %conv2.i.i34.i.1 = trunc i32 %xor.i.i33.i.1 to i8
  %scevgep353.2 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 2
  %20 = load i8, i8* %scevgep353.2, align 1
  %conv.i.i31.i.2 = zext i8 %20 to i32
  %conv1.i.i32.i.2 = zext i8 %conv2.i.i34.i.1 to i32
  %xor.i.i33.i.2 = xor i32 %conv1.i.i32.i.2, %conv.i.i31.i.2
  %conv2.i.i34.i.2 = trunc i32 %xor.i.i33.i.2 to i8
  %scevgep353.3 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 3
  %21 = load i8, i8* %scevgep353.3, align 1
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
  %scevgep349 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 0
  %22 = load i8, i8* %scevgep349, align 1
  %scevgep349.1 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 1
  %23 = load i8, i8* %scevgep349.1, align 1
  %conv.i.i.i48.1 = zext i8 %23 to i32
  %conv1.i.i.i49.1 = zext i8 %22 to i32
  %xor.i.i.i50.1 = xor i32 %conv1.i.i.i49.1, %conv.i.i.i48.1
  %conv2.i.i.i51.1 = trunc i32 %xor.i.i.i50.1 to i8
  %scevgep349.2 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 2
  %24 = load i8, i8* %scevgep349.2, align 1
  %conv.i.i.i48.2 = zext i8 %24 to i32
  %conv1.i.i.i49.2 = zext i8 %conv2.i.i.i51.1 to i32
  %xor.i.i.i50.2 = xor i32 %conv1.i.i.i49.2, %conv.i.i.i48.2
  %conv2.i.i.i51.2 = trunc i32 %xor.i.i.i50.2 to i8
  %scevgep349.3 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 3
  %25 = load i8, i8* %scevgep349.3, align 1
  %conv.i.i.i48.3 = zext i8 %25 to i32
  %conv1.i.i.i49.3 = zext i8 %conv2.i.i.i51.2 to i32
  %xor.i.i.i50.3 = xor i32 %conv1.i.i.i49.3, %conv.i.i.i48.3
  %conv2.i.i.i51.3 = trunc i32 %xor.i.i.i50.3 to i8
  %conv3.i = zext i8 %conv2.i.i.i51.3 to i32
  %cmp.i54 = icmp eq i32 %conv.i42, %conv3.i
  call void @assume(i1 zeroext %cmp.i54) #3
  %conv5.i = zext i8 %call1.i to i32
  %26 = load i8, i8* %x, align 1
  %scevgep345.1 = getelementptr i8, i8* %x, i64 1
  %27 = load i8, i8* %scevgep345.1, align 1
  %conv.i.i155.i.1 = zext i8 %27 to i32
  %conv1.i.i156.i.1 = zext i8 %26 to i32
  %xor.i.i157.i.1 = xor i32 %conv1.i.i156.i.1, %conv.i.i155.i.1
  %conv2.i.i158.i.1 = trunc i32 %xor.i.i157.i.1 to i8
  %scevgep345.2 = getelementptr i8, i8* %x, i64 2
  %28 = load i8, i8* %scevgep345.2, align 1
  %conv.i.i155.i.2 = zext i8 %28 to i32
  %conv1.i.i156.i.2 = zext i8 %conv2.i.i158.i.1 to i32
  %xor.i.i157.i.2 = xor i32 %conv1.i.i156.i.2, %conv.i.i155.i.2
  %conv2.i.i158.i.2 = trunc i32 %xor.i.i157.i.2 to i8
  %scevgep345.3 = getelementptr i8, i8* %x, i64 3
  %29 = load i8, i8* %scevgep345.3, align 1
  %conv.i.i155.i.3 = zext i8 %29 to i32
  %conv1.i.i156.i.3 = zext i8 %conv2.i.i158.i.2 to i32
  %xor.i.i157.i.3 = xor i32 %conv1.i.i156.i.3, %conv.i.i155.i.3
  %conv2.i.i158.i.3 = trunc i32 %xor.i.i157.i.3 to i8
  %conv7.i = zext i8 %conv2.i.i158.i.3 to i32
  %cmp8.i = icmp eq i32 %conv5.i, %conv7.i
  call void @assume(i1 zeroext %cmp8.i) #3
  %call16.i = call zeroext i8 (...) @rand() #3
  %scevgep335 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i, i8* %scevgep335, align 1
  %scevgep336 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %30 = load i8, i8* %scevgep336, align 1
  %scevgep337 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %30, i8* %scevgep337, align 1
  %call16.i.1828 = call zeroext i8 (...) @rand() #3
  %scevgep335.1829 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  store i8 %call16.i.1828, i8* %scevgep335.1829, align 1
  %scevgep336.1830 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %31 = load i8, i8* %scevgep336.1830, align 1
  %scevgep337.1831 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 2, i64 0
  store i8 %31, i8* %scevgep337.1831, align 1
  %call16.i.2833 = call zeroext i8 (...) @rand() #3
  %scevgep335.2834 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  store i8 %call16.i.2833, i8* %scevgep335.2834, align 1
  %scevgep336.2835 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %32 = load i8, i8* %scevgep336.2835, align 1
  %scevgep337.2836 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 3, i64 0
  store i8 %32, i8* %scevgep337.2836, align 1
  %scevgep332 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 1
  %33 = bitcast i8* %scevgep332 to [4 x [4 x i8]]*
  %call16.i.1 = call zeroext i8 (...) @rand() #3
  %scevgep335.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %33, i64 0, i64 0, i64 1
  store i8 %call16.i.1, i8* %scevgep335.1, align 1
  %scevgep336.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %33, i64 0, i64 0, i64 1
  %34 = load i8, i8* %scevgep336.1, align 1
  %scevgep337.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %33, i64 0, i64 1, i64 0
  store i8 %34, i8* %scevgep337.1, align 1
  %call16.i.1.1 = call zeroext i8 (...) @rand() #3
  %scevgep335.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %33, i64 0, i64 0, i64 2
  store i8 %call16.i.1.1, i8* %scevgep335.1.1, align 1
  %scevgep336.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %33, i64 0, i64 0, i64 2
  %35 = load i8, i8* %scevgep336.1.1, align 1
  %scevgep337.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %33, i64 0, i64 2, i64 0
  store i8 %35, i8* %scevgep337.1.1, align 1
  %scevgep332.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %33, i64 0, i64 1, i64 1
  %36 = bitcast i8* %scevgep332.1 to [4 x [4 x i8]]*
  %call16.i.2 = call zeroext i8 (...) @rand() #3
  %scevgep335.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %36, i64 0, i64 0, i64 1
  store i8 %call16.i.2, i8* %scevgep335.2, align 1
  %scevgep336.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %36, i64 0, i64 0, i64 1
  %37 = load i8, i8* %scevgep336.2, align 1
  %scevgep337.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %36, i64 0, i64 1, i64 0
  store i8 %37, i8* %scevgep337.2, align 1
  %scevgep308.1 = getelementptr i8, i8* %x, i64 1
  %38 = load i8, i8* %scevgep308.1, align 1
  %conv44.i.1 = zext i8 %38 to i32
  %scevgep311.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %39 = load i8, i8* %scevgep311.1, align 1
  %conv49.i.1 = zext i8 %39 to i32
  %xor.i62.1 = xor i32 %conv44.i.1, %conv49.i.1
  %conv50.i.1 = trunc i32 %xor.i62.1 to i8
  %scevgep315.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i.1, i8* %scevgep315.1, align 1
  %40 = load i8, i8* %arraydecay5, align 1
  %conv57.i.1 = zext i8 %40 to i32
  %xor58.i.1 = xor i32 %conv57.i.1, 1
  %conv59.i.1 = trunc i32 %xor58.i.1 to i8
  %scevgep312.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %41 = load i8, i8* %scevgep312.1, align 1
  %call64.i.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.1, i8 zeroext %41) #3
  %scevgep319.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i.1, i8* %scevgep319.1, align 1
  %42 = load i8, i8* %arraydecay5, align 1
  %scevgep316.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 1
  %43 = load i8, i8* %scevgep316.1, align 1
  %call75.i.1 = call zeroext i8 @mult(i8 zeroext %42, i8 zeroext %43) #3
  %scevgep323.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i.1, i8* %scevgep323.1, align 1
  %scevgep320.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %44 = load i8, i8* %scevgep320.1, align 1
  %conv84.i.1 = zext i8 %44 to i32
  %scevgep324.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %45 = load i8, i8* %scevgep324.1, align 1
  %conv89.i.1 = zext i8 %45 to i32
  %xor90.i.1 = xor i32 %conv84.i.1, %conv89.i.1
  %conv91.i.1 = trunc i32 %xor90.i.1 to i8
  %scevgep327.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i.1, i8* %scevgep327.1, align 1
  %scevgep308.2 = getelementptr i8, i8* %x, i64 2
  %46 = load i8, i8* %scevgep308.2, align 1
  %conv44.i.2 = zext i8 %46 to i32
  %scevgep311.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %47 = load i8, i8* %scevgep311.2, align 1
  %conv49.i.2 = zext i8 %47 to i32
  %xor.i62.2 = xor i32 %conv44.i.2, %conv49.i.2
  %conv50.i.2 = trunc i32 %xor.i62.2 to i8
  %scevgep315.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 2
  store i8 %conv50.i.2, i8* %scevgep315.2, align 1
  %48 = load i8, i8* %arraydecay5, align 1
  %conv57.i.2 = zext i8 %48 to i32
  %xor58.i.2 = xor i32 %conv57.i.2, 1
  %conv59.i.2 = trunc i32 %xor58.i.2 to i8
  %scevgep312.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %49 = load i8, i8* %scevgep312.2, align 1
  %call64.i.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.2, i8 zeroext %49) #3
  %scevgep319.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 2
  store i8 %call64.i.2, i8* %scevgep319.2, align 1
  %50 = load i8, i8* %arraydecay5, align 1
  %scevgep316.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 2
  %51 = load i8, i8* %scevgep316.2, align 1
  %call75.i.2 = call zeroext i8 @mult(i8 zeroext %50, i8 zeroext %51) #3
  %scevgep323.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 2
  store i8 %call75.i.2, i8* %scevgep323.2, align 1
  %scevgep320.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 2
  %52 = load i8, i8* %scevgep320.2, align 1
  %conv84.i.2 = zext i8 %52 to i32
  %scevgep324.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 2
  %53 = load i8, i8* %scevgep324.2, align 1
  %conv89.i.2 = zext i8 %53 to i32
  %xor90.i.2 = xor i32 %conv84.i.2, %conv89.i.2
  %conv91.i.2 = trunc i32 %xor90.i.2 to i8
  %scevgep327.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 2
  store i8 %conv91.i.2, i8* %scevgep327.2, align 1
  %scevgep308.3 = getelementptr i8, i8* %x, i64 3
  %54 = load i8, i8* %scevgep308.3, align 1
  %conv44.i.3 = zext i8 %54 to i32
  %scevgep311.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %55 = load i8, i8* %scevgep311.3, align 1
  %conv49.i.3 = zext i8 %55 to i32
  %xor.i62.3 = xor i32 %conv44.i.3, %conv49.i.3
  %conv50.i.3 = trunc i32 %xor.i62.3 to i8
  %scevgep315.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 3
  store i8 %conv50.i.3, i8* %scevgep315.3, align 1
  %56 = load i8, i8* %arraydecay5, align 1
  %conv57.i.3 = zext i8 %56 to i32
  %xor58.i.3 = xor i32 %conv57.i.3, 1
  %conv59.i.3 = trunc i32 %xor58.i.3 to i8
  %scevgep312.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %57 = load i8, i8* %scevgep312.3, align 1
  %call64.i.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.3, i8 zeroext %57) #3
  %scevgep319.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 3
  store i8 %call64.i.3, i8* %scevgep319.3, align 1
  %58 = load i8, i8* %arraydecay5, align 1
  %scevgep316.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 3
  %59 = load i8, i8* %scevgep316.3, align 1
  %call75.i.3 = call zeroext i8 @mult(i8 zeroext %58, i8 zeroext %59) #3
  %scevgep323.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 3
  store i8 %call75.i.3, i8* %scevgep323.3, align 1
  %scevgep320.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 3
  %60 = load i8, i8* %scevgep320.3, align 1
  %conv84.i.3 = zext i8 %60 to i32
  %scevgep324.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 3
  %61 = load i8, i8* %scevgep324.3, align 1
  %conv89.i.3 = zext i8 %61 to i32
  %xor90.i.3 = xor i32 %conv84.i.3, %conv89.i.3
  %conv91.i.3 = trunc i32 %xor90.i.3 to i8
  %scevgep327.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 3
  store i8 %conv91.i.3, i8* %scevgep327.3, align 1
  %scevgep310 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  %62 = bitcast i8* %scevgep310 to [4 x [4 x i8]]*
  %scevgep314 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 1, i64 0
  %63 = bitcast i8* %scevgep314 to [4 x [4 x i8]]*
  %scevgep318 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %64 = bitcast i8* %scevgep318 to [4 x [4 x i8]]*
  %scevgep322 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %65 = bitcast i8* %scevgep322 to [4 x [4 x i8]]*
  %scevgep326 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 1, i64 0
  %66 = bitcast i8* %scevgep326 to [4 x [4 x i8]]*
  %arrayidx56.i.1 = getelementptr inbounds i8, i8* %arraydecay5, i64 1
  %arrayidx70.i.1 = getelementptr inbounds i8, i8* %arraydecay5, i64 1
  %67 = load i8, i8* %x, align 1
  %conv44.i.1725 = zext i8 %67 to i32
  %scevgep311.1726 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %62, i64 0, i64 0, i64 0
  %68 = load i8, i8* %scevgep311.1726, align 1
  %conv49.i.1727 = zext i8 %68 to i32
  %xor.i62.1728 = xor i32 %conv44.i.1725, %conv49.i.1727
  %conv50.i.1729 = trunc i32 %xor.i62.1728 to i8
  %scevgep315.1730 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %63, i64 0, i64 0, i64 0
  store i8 %conv50.i.1729, i8* %scevgep315.1730, align 1
  %69 = load i8, i8* %arrayidx56.i.1, align 1
  %conv57.i.1731 = zext i8 %69 to i32
  %xor58.i.1732 = xor i32 %conv57.i.1731, 1
  %conv59.i.1733 = trunc i32 %xor58.i.1732 to i8
  %scevgep312.1734 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %62, i64 0, i64 0, i64 0
  %70 = load i8, i8* %scevgep312.1734, align 1
  %call64.i.1735 = call zeroext i8 @mult(i8 zeroext %conv59.i.1733, i8 zeroext %70) #3
  %scevgep319.1736 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %64, i64 0, i64 0, i64 0
  store i8 %call64.i.1735, i8* %scevgep319.1736, align 1
  %71 = load i8, i8* %arrayidx70.i.1, align 1
  %scevgep316.1737 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %63, i64 0, i64 0, i64 0
  %72 = load i8, i8* %scevgep316.1737, align 1
  %call75.i.1738 = call zeroext i8 @mult(i8 zeroext %71, i8 zeroext %72) #3
  %scevgep323.1739 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %65, i64 0, i64 0, i64 0
  store i8 %call75.i.1738, i8* %scevgep323.1739, align 1
  %scevgep320.1740 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %64, i64 0, i64 0, i64 0
  %73 = load i8, i8* %scevgep320.1740, align 1
  %conv84.i.1741 = zext i8 %73 to i32
  %scevgep324.1742 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %65, i64 0, i64 0, i64 0
  %74 = load i8, i8* %scevgep324.1742, align 1
  %conv89.i.1743 = zext i8 %74 to i32
  %xor90.i.1744 = xor i32 %conv84.i.1741, %conv89.i.1743
  %conv91.i.1745 = trunc i32 %xor90.i.1744 to i8
  %scevgep327.1746 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %66, i64 0, i64 0, i64 0
  store i8 %conv91.i.1745, i8* %scevgep327.1746, align 1
  %scevgep308.2.1 = getelementptr i8, i8* %x, i64 2
  %75 = load i8, i8* %scevgep308.2.1, align 1
  %conv44.i.2.1 = zext i8 %75 to i32
  %scevgep311.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %62, i64 0, i64 0, i64 2
  %76 = load i8, i8* %scevgep311.2.1, align 1
  %conv49.i.2.1 = zext i8 %76 to i32
  %xor.i62.2.1 = xor i32 %conv44.i.2.1, %conv49.i.2.1
  %conv50.i.2.1 = trunc i32 %xor.i62.2.1 to i8
  %scevgep315.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %63, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.1, i8* %scevgep315.2.1, align 1
  %77 = load i8, i8* %arrayidx56.i.1, align 1
  %conv57.i.2.1 = zext i8 %77 to i32
  %xor58.i.2.1 = xor i32 %conv57.i.2.1, 1
  %conv59.i.2.1 = trunc i32 %xor58.i.2.1 to i8
  %scevgep312.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %62, i64 0, i64 0, i64 2
  %78 = load i8, i8* %scevgep312.2.1, align 1
  %call64.i.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.1, i8 zeroext %78) #3
  %scevgep319.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %64, i64 0, i64 0, i64 2
  store i8 %call64.i.2.1, i8* %scevgep319.2.1, align 1
  %79 = load i8, i8* %arrayidx70.i.1, align 1
  %scevgep316.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %63, i64 0, i64 0, i64 2
  %80 = load i8, i8* %scevgep316.2.1, align 1
  %call75.i.2.1 = call zeroext i8 @mult(i8 zeroext %79, i8 zeroext %80) #3
  %scevgep323.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %65, i64 0, i64 0, i64 2
  store i8 %call75.i.2.1, i8* %scevgep323.2.1, align 1
  %scevgep320.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %64, i64 0, i64 0, i64 2
  %81 = load i8, i8* %scevgep320.2.1, align 1
  %conv84.i.2.1 = zext i8 %81 to i32
  %scevgep324.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %65, i64 0, i64 0, i64 2
  %82 = load i8, i8* %scevgep324.2.1, align 1
  %conv89.i.2.1 = zext i8 %82 to i32
  %xor90.i.2.1 = xor i32 %conv84.i.2.1, %conv89.i.2.1
  %conv91.i.2.1 = trunc i32 %xor90.i.2.1 to i8
  %scevgep327.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %66, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.1, i8* %scevgep327.2.1, align 1
  %scevgep308.3.1 = getelementptr i8, i8* %x, i64 3
  %83 = load i8, i8* %scevgep308.3.1, align 1
  %conv44.i.3.1 = zext i8 %83 to i32
  %scevgep311.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %62, i64 0, i64 0, i64 3
  %84 = load i8, i8* %scevgep311.3.1, align 1
  %conv49.i.3.1 = zext i8 %84 to i32
  %xor.i62.3.1 = xor i32 %conv44.i.3.1, %conv49.i.3.1
  %conv50.i.3.1 = trunc i32 %xor.i62.3.1 to i8
  %scevgep315.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %63, i64 0, i64 0, i64 3
  store i8 %conv50.i.3.1, i8* %scevgep315.3.1, align 1
  %85 = load i8, i8* %arrayidx56.i.1, align 1
  %conv57.i.3.1 = zext i8 %85 to i32
  %xor58.i.3.1 = xor i32 %conv57.i.3.1, 1
  %conv59.i.3.1 = trunc i32 %xor58.i.3.1 to i8
  %scevgep312.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %62, i64 0, i64 0, i64 3
  %86 = load i8, i8* %scevgep312.3.1, align 1
  %call64.i.3.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.3.1, i8 zeroext %86) #3
  %scevgep319.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %64, i64 0, i64 0, i64 3
  store i8 %call64.i.3.1, i8* %scevgep319.3.1, align 1
  %87 = load i8, i8* %arrayidx70.i.1, align 1
  %scevgep316.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %63, i64 0, i64 0, i64 3
  %88 = load i8, i8* %scevgep316.3.1, align 1
  %call75.i.3.1 = call zeroext i8 @mult(i8 zeroext %87, i8 zeroext %88) #3
  %scevgep323.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %65, i64 0, i64 0, i64 3
  store i8 %call75.i.3.1, i8* %scevgep323.3.1, align 1
  %scevgep320.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %64, i64 0, i64 0, i64 3
  %89 = load i8, i8* %scevgep320.3.1, align 1
  %conv84.i.3.1 = zext i8 %89 to i32
  %scevgep324.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %65, i64 0, i64 0, i64 3
  %90 = load i8, i8* %scevgep324.3.1, align 1
  %conv89.i.3.1 = zext i8 %90 to i32
  %xor90.i.3.1 = xor i32 %conv84.i.3.1, %conv89.i.3.1
  %conv91.i.3.1 = trunc i32 %xor90.i.3.1 to i8
  %scevgep327.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %66, i64 0, i64 0, i64 3
  store i8 %conv91.i.3.1, i8* %scevgep327.3.1, align 1
  %scevgep310.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %62, i64 0, i64 1, i64 0
  %91 = bitcast i8* %scevgep310.1 to [4 x [4 x i8]]*
  %scevgep314.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %63, i64 0, i64 1, i64 0
  %92 = bitcast i8* %scevgep314.1 to [4 x [4 x i8]]*
  %scevgep318.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %64, i64 0, i64 1, i64 0
  %93 = bitcast i8* %scevgep318.1 to [4 x [4 x i8]]*
  %scevgep322.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %65, i64 0, i64 1, i64 0
  %94 = bitcast i8* %scevgep322.1 to [4 x [4 x i8]]*
  %scevgep326.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %66, i64 0, i64 1, i64 0
  %95 = bitcast i8* %scevgep326.1 to [4 x [4 x i8]]*
  %arrayidx56.i.2 = getelementptr inbounds i8, i8* %arraydecay5, i64 2
  %arrayidx70.i.2 = getelementptr inbounds i8, i8* %arraydecay5, i64 2
  %96 = load i8, i8* %x, align 1
  %conv44.i.2751 = zext i8 %96 to i32
  %scevgep311.2752 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %91, i64 0, i64 0, i64 0
  %97 = load i8, i8* %scevgep311.2752, align 1
  %conv49.i.2753 = zext i8 %97 to i32
  %xor.i62.2754 = xor i32 %conv44.i.2751, %conv49.i.2753
  %conv50.i.2755 = trunc i32 %xor.i62.2754 to i8
  %scevgep315.2756 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %92, i64 0, i64 0, i64 0
  store i8 %conv50.i.2755, i8* %scevgep315.2756, align 1
  %98 = load i8, i8* %arrayidx56.i.2, align 1
  %conv57.i.2757 = zext i8 %98 to i32
  %xor58.i.2758 = xor i32 %conv57.i.2757, 1
  %conv59.i.2759 = trunc i32 %xor58.i.2758 to i8
  %scevgep312.2760 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %91, i64 0, i64 0, i64 0
  %99 = load i8, i8* %scevgep312.2760, align 1
  %call64.i.2761 = call zeroext i8 @mult(i8 zeroext %conv59.i.2759, i8 zeroext %99) #3
  %scevgep319.2762 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %93, i64 0, i64 0, i64 0
  store i8 %call64.i.2761, i8* %scevgep319.2762, align 1
  %100 = load i8, i8* %arrayidx70.i.2, align 1
  %scevgep316.2763 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %92, i64 0, i64 0, i64 0
  %101 = load i8, i8* %scevgep316.2763, align 1
  %call75.i.2764 = call zeroext i8 @mult(i8 zeroext %100, i8 zeroext %101) #3
  %scevgep323.2765 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %94, i64 0, i64 0, i64 0
  store i8 %call75.i.2764, i8* %scevgep323.2765, align 1
  %scevgep320.2766 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %93, i64 0, i64 0, i64 0
  %102 = load i8, i8* %scevgep320.2766, align 1
  %conv84.i.2767 = zext i8 %102 to i32
  %scevgep324.2768 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %94, i64 0, i64 0, i64 0
  %103 = load i8, i8* %scevgep324.2768, align 1
  %conv89.i.2769 = zext i8 %103 to i32
  %xor90.i.2770 = xor i32 %conv84.i.2767, %conv89.i.2769
  %conv91.i.2771 = trunc i32 %xor90.i.2770 to i8
  %scevgep327.2772 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %95, i64 0, i64 0, i64 0
  store i8 %conv91.i.2771, i8* %scevgep327.2772, align 1
  %scevgep308.1.2 = getelementptr i8, i8* %x, i64 1
  %104 = load i8, i8* %scevgep308.1.2, align 1
  %conv44.i.1.2 = zext i8 %104 to i32
  %scevgep311.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %91, i64 0, i64 0, i64 1
  %105 = load i8, i8* %scevgep311.1.2, align 1
  %conv49.i.1.2 = zext i8 %105 to i32
  %xor.i62.1.2 = xor i32 %conv44.i.1.2, %conv49.i.1.2
  %conv50.i.1.2 = trunc i32 %xor.i62.1.2 to i8
  %scevgep315.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %92, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.2, i8* %scevgep315.1.2, align 1
  %106 = load i8, i8* %arrayidx56.i.2, align 1
  %conv57.i.1.2 = zext i8 %106 to i32
  %xor58.i.1.2 = xor i32 %conv57.i.1.2, 1
  %conv59.i.1.2 = trunc i32 %xor58.i.1.2 to i8
  %scevgep312.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %91, i64 0, i64 0, i64 1
  %107 = load i8, i8* %scevgep312.1.2, align 1
  %call64.i.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.2, i8 zeroext %107) #3
  %scevgep319.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %93, i64 0, i64 0, i64 1
  store i8 %call64.i.1.2, i8* %scevgep319.1.2, align 1
  %108 = load i8, i8* %arrayidx70.i.2, align 1
  %scevgep316.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %92, i64 0, i64 0, i64 1
  %109 = load i8, i8* %scevgep316.1.2, align 1
  %call75.i.1.2 = call zeroext i8 @mult(i8 zeroext %108, i8 zeroext %109) #3
  %scevgep323.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %94, i64 0, i64 0, i64 1
  store i8 %call75.i.1.2, i8* %scevgep323.1.2, align 1
  %scevgep320.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %93, i64 0, i64 0, i64 1
  %110 = load i8, i8* %scevgep320.1.2, align 1
  %conv84.i.1.2 = zext i8 %110 to i32
  %scevgep324.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %94, i64 0, i64 0, i64 1
  %111 = load i8, i8* %scevgep324.1.2, align 1
  %conv89.i.1.2 = zext i8 %111 to i32
  %xor90.i.1.2 = xor i32 %conv84.i.1.2, %conv89.i.1.2
  %conv91.i.1.2 = trunc i32 %xor90.i.1.2 to i8
  %scevgep327.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %95, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.2, i8* %scevgep327.1.2, align 1
  %scevgep308.3.2 = getelementptr i8, i8* %x, i64 3
  %112 = load i8, i8* %scevgep308.3.2, align 1
  %conv44.i.3.2 = zext i8 %112 to i32
  %scevgep311.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %91, i64 0, i64 0, i64 3
  %113 = load i8, i8* %scevgep311.3.2, align 1
  %conv49.i.3.2 = zext i8 %113 to i32
  %xor.i62.3.2 = xor i32 %conv44.i.3.2, %conv49.i.3.2
  %conv50.i.3.2 = trunc i32 %xor.i62.3.2 to i8
  %scevgep315.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %92, i64 0, i64 0, i64 3
  store i8 %conv50.i.3.2, i8* %scevgep315.3.2, align 1
  %114 = load i8, i8* %arrayidx56.i.2, align 1
  %conv57.i.3.2 = zext i8 %114 to i32
  %xor58.i.3.2 = xor i32 %conv57.i.3.2, 1
  %conv59.i.3.2 = trunc i32 %xor58.i.3.2 to i8
  %scevgep312.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %91, i64 0, i64 0, i64 3
  %115 = load i8, i8* %scevgep312.3.2, align 1
  %call64.i.3.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.3.2, i8 zeroext %115) #3
  %scevgep319.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %93, i64 0, i64 0, i64 3
  store i8 %call64.i.3.2, i8* %scevgep319.3.2, align 1
  %116 = load i8, i8* %arrayidx70.i.2, align 1
  %scevgep316.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %92, i64 0, i64 0, i64 3
  %117 = load i8, i8* %scevgep316.3.2, align 1
  %call75.i.3.2 = call zeroext i8 @mult(i8 zeroext %116, i8 zeroext %117) #3
  %scevgep323.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %94, i64 0, i64 0, i64 3
  store i8 %call75.i.3.2, i8* %scevgep323.3.2, align 1
  %scevgep320.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %93, i64 0, i64 0, i64 3
  %118 = load i8, i8* %scevgep320.3.2, align 1
  %conv84.i.3.2 = zext i8 %118 to i32
  %scevgep324.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %94, i64 0, i64 0, i64 3
  %119 = load i8, i8* %scevgep324.3.2, align 1
  %conv89.i.3.2 = zext i8 %119 to i32
  %xor90.i.3.2 = xor i32 %conv84.i.3.2, %conv89.i.3.2
  %conv91.i.3.2 = trunc i32 %xor90.i.3.2 to i8
  %scevgep327.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %95, i64 0, i64 0, i64 3
  store i8 %conv91.i.3.2, i8* %scevgep327.3.2, align 1
  %scevgep310.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %91, i64 0, i64 1, i64 0
  %120 = bitcast i8* %scevgep310.2 to [4 x [4 x i8]]*
  %scevgep314.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %92, i64 0, i64 1, i64 0
  %121 = bitcast i8* %scevgep314.2 to [4 x [4 x i8]]*
  %scevgep318.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %93, i64 0, i64 1, i64 0
  %122 = bitcast i8* %scevgep318.2 to [4 x [4 x i8]]*
  %scevgep322.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %94, i64 0, i64 1, i64 0
  %123 = bitcast i8* %scevgep322.2 to [4 x [4 x i8]]*
  %scevgep326.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %95, i64 0, i64 1, i64 0
  %124 = bitcast i8* %scevgep326.2 to [4 x [4 x i8]]*
  %arrayidx56.i.3 = getelementptr inbounds i8, i8* %arraydecay5, i64 3
  %arrayidx70.i.3 = getelementptr inbounds i8, i8* %arraydecay5, i64 3
  %125 = load i8, i8* %x, align 1
  %conv44.i.3777 = zext i8 %125 to i32
  %scevgep311.3778 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %120, i64 0, i64 0, i64 0
  %126 = load i8, i8* %scevgep311.3778, align 1
  %conv49.i.3779 = zext i8 %126 to i32
  %xor.i62.3780 = xor i32 %conv44.i.3777, %conv49.i.3779
  %conv50.i.3781 = trunc i32 %xor.i62.3780 to i8
  %scevgep315.3782 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %121, i64 0, i64 0, i64 0
  store i8 %conv50.i.3781, i8* %scevgep315.3782, align 1
  %127 = load i8, i8* %arrayidx56.i.3, align 1
  %conv57.i.3783 = zext i8 %127 to i32
  %xor58.i.3784 = xor i32 %conv57.i.3783, 1
  %conv59.i.3785 = trunc i32 %xor58.i.3784 to i8
  %scevgep312.3786 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %120, i64 0, i64 0, i64 0
  %128 = load i8, i8* %scevgep312.3786, align 1
  %call64.i.3787 = call zeroext i8 @mult(i8 zeroext %conv59.i.3785, i8 zeroext %128) #3
  %scevgep319.3788 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %122, i64 0, i64 0, i64 0
  store i8 %call64.i.3787, i8* %scevgep319.3788, align 1
  %129 = load i8, i8* %arrayidx70.i.3, align 1
  %scevgep316.3789 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %121, i64 0, i64 0, i64 0
  %130 = load i8, i8* %scevgep316.3789, align 1
  %call75.i.3790 = call zeroext i8 @mult(i8 zeroext %129, i8 zeroext %130) #3
  %scevgep323.3791 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %123, i64 0, i64 0, i64 0
  store i8 %call75.i.3790, i8* %scevgep323.3791, align 1
  %scevgep320.3792 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %122, i64 0, i64 0, i64 0
  %131 = load i8, i8* %scevgep320.3792, align 1
  %conv84.i.3793 = zext i8 %131 to i32
  %scevgep324.3794 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %123, i64 0, i64 0, i64 0
  %132 = load i8, i8* %scevgep324.3794, align 1
  %conv89.i.3795 = zext i8 %132 to i32
  %xor90.i.3796 = xor i32 %conv84.i.3793, %conv89.i.3795
  %conv91.i.3797 = trunc i32 %xor90.i.3796 to i8
  %scevgep327.3798 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %124, i64 0, i64 0, i64 0
  store i8 %conv91.i.3797, i8* %scevgep327.3798, align 1
  %scevgep308.1.3 = getelementptr i8, i8* %x, i64 1
  %133 = load i8, i8* %scevgep308.1.3, align 1
  %conv44.i.1.3 = zext i8 %133 to i32
  %scevgep311.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %120, i64 0, i64 0, i64 1
  %134 = load i8, i8* %scevgep311.1.3, align 1
  %conv49.i.1.3 = zext i8 %134 to i32
  %xor.i62.1.3 = xor i32 %conv44.i.1.3, %conv49.i.1.3
  %conv50.i.1.3 = trunc i32 %xor.i62.1.3 to i8
  %scevgep315.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %121, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.3, i8* %scevgep315.1.3, align 1
  %135 = load i8, i8* %arrayidx56.i.3, align 1
  %conv57.i.1.3 = zext i8 %135 to i32
  %xor58.i.1.3 = xor i32 %conv57.i.1.3, 1
  %conv59.i.1.3 = trunc i32 %xor58.i.1.3 to i8
  %scevgep312.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %120, i64 0, i64 0, i64 1
  %136 = load i8, i8* %scevgep312.1.3, align 1
  %call64.i.1.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.3, i8 zeroext %136) #3
  %scevgep319.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %122, i64 0, i64 0, i64 1
  store i8 %call64.i.1.3, i8* %scevgep319.1.3, align 1
  %137 = load i8, i8* %arrayidx70.i.3, align 1
  %scevgep316.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %121, i64 0, i64 0, i64 1
  %138 = load i8, i8* %scevgep316.1.3, align 1
  %call75.i.1.3 = call zeroext i8 @mult(i8 zeroext %137, i8 zeroext %138) #3
  %scevgep323.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %123, i64 0, i64 0, i64 1
  store i8 %call75.i.1.3, i8* %scevgep323.1.3, align 1
  %scevgep320.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %122, i64 0, i64 0, i64 1
  %139 = load i8, i8* %scevgep320.1.3, align 1
  %conv84.i.1.3 = zext i8 %139 to i32
  %scevgep324.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %123, i64 0, i64 0, i64 1
  %140 = load i8, i8* %scevgep324.1.3, align 1
  %conv89.i.1.3 = zext i8 %140 to i32
  %xor90.i.1.3 = xor i32 %conv84.i.1.3, %conv89.i.1.3
  %conv91.i.1.3 = trunc i32 %xor90.i.1.3 to i8
  %scevgep327.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %124, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.3, i8* %scevgep327.1.3, align 1
  %scevgep308.2.3 = getelementptr i8, i8* %x, i64 2
  %141 = load i8, i8* %scevgep308.2.3, align 1
  %conv44.i.2.3 = zext i8 %141 to i32
  %scevgep311.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %120, i64 0, i64 0, i64 2
  %142 = load i8, i8* %scevgep311.2.3, align 1
  %conv49.i.2.3 = zext i8 %142 to i32
  %xor.i62.2.3 = xor i32 %conv44.i.2.3, %conv49.i.2.3
  %conv50.i.2.3 = trunc i32 %xor.i62.2.3 to i8
  %scevgep315.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %121, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.3, i8* %scevgep315.2.3, align 1
  %143 = load i8, i8* %arrayidx56.i.3, align 1
  %conv57.i.2.3 = zext i8 %143 to i32
  %xor58.i.2.3 = xor i32 %conv57.i.2.3, 1
  %conv59.i.2.3 = trunc i32 %xor58.i.2.3 to i8
  %scevgep312.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %120, i64 0, i64 0, i64 2
  %144 = load i8, i8* %scevgep312.2.3, align 1
  %call64.i.2.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.3, i8 zeroext %144) #3
  %scevgep319.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %122, i64 0, i64 0, i64 2
  store i8 %call64.i.2.3, i8* %scevgep319.2.3, align 1
  %145 = load i8, i8* %arrayidx70.i.3, align 1
  %scevgep316.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %121, i64 0, i64 0, i64 2
  %146 = load i8, i8* %scevgep316.2.3, align 1
  %call75.i.2.3 = call zeroext i8 @mult(i8 zeroext %145, i8 zeroext %146) #3
  %scevgep323.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %123, i64 0, i64 0, i64 2
  store i8 %call75.i.2.3, i8* %scevgep323.2.3, align 1
  %scevgep320.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %122, i64 0, i64 0, i64 2
  %147 = load i8, i8* %scevgep320.2.3, align 1
  %conv84.i.2.3 = zext i8 %147 to i32
  %scevgep324.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %123, i64 0, i64 0, i64 2
  %148 = load i8, i8* %scevgep324.2.3, align 1
  %conv89.i.2.3 = zext i8 %148 to i32
  %xor90.i.2.3 = xor i32 %conv84.i.2.3, %conv89.i.2.3
  %conv91.i.2.3 = trunc i32 %xor90.i.2.3 to i8
  %scevgep327.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %124, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.3, i8* %scevgep327.2.3, align 1
  %149 = load i8, i8* %arraydecay5, align 1
  %150 = load i8, i8* %x, align 1
  %call111.i = call zeroext i8 @mult(i8 zeroext %149, i8 zeroext %150) #3
  store i8 %call111.i, i8* %arraydecay6, align 1
  %scevgep298.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 1
  %151 = load i8, i8* %scevgep298.1, align 1
  %conv126.i.1 = zext i8 %151 to i32
  %152 = load i8, i8* %arraydecay6, align 1
  %conv129.i.1 = zext i8 %152 to i32
  %xor130.i.1 = xor i32 %conv129.i.1, %conv126.i.1
  %conv131.i.1 = trunc i32 %xor130.i.1 to i8
  store i8 %conv131.i.1, i8* %arraydecay6, align 1
  %scevgep298.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 2
  %153 = load i8, i8* %scevgep298.2, align 1
  %conv126.i.2 = zext i8 %153 to i32
  %154 = load i8, i8* %arraydecay6, align 1
  %conv129.i.2 = zext i8 %154 to i32
  %xor130.i.2 = xor i32 %conv129.i.2, %conv126.i.2
  %conv131.i.2 = trunc i32 %xor130.i.2 to i8
  store i8 %conv131.i.2, i8* %arraydecay6, align 1
  %scevgep298.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 3
  %155 = load i8, i8* %scevgep298.3, align 1
  %conv126.i.3 = zext i8 %155 to i32
  %156 = load i8, i8* %arraydecay6, align 1
  %conv129.i.3 = zext i8 %156 to i32
  %xor130.i.3 = xor i32 %conv129.i.3, %conv126.i.3
  %conv131.i.3 = trunc i32 %xor130.i.3 to i8
  store i8 %conv131.i.3, i8* %arraydecay6, align 1
  %scevgep297 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 1, i64 0
  %157 = bitcast i8* %scevgep297 to [4 x [4 x i8]]*
  %arrayidx108.i.1 = getelementptr inbounds i8, i8* %arraydecay5, i64 1
  %158 = load i8, i8* %arrayidx108.i.1, align 1
  %arrayidx110.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %159 = load i8, i8* %arrayidx110.i.1, align 1
  %call111.i.1 = call zeroext i8 @mult(i8 zeroext %158, i8 zeroext %159) #3
  %arrayidx113.i.1 = getelementptr inbounds i8, i8* %arraydecay6, i64 1
  store i8 %call111.i.1, i8* %arrayidx113.i.1, align 1
  %arrayidx128.i.1 = getelementptr inbounds i8, i8* %arraydecay6, i64 1
  %scevgep298.1698 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %157, i64 0, i64 0, i64 0
  %160 = load i8, i8* %scevgep298.1698, align 1
  %conv126.i.1699 = zext i8 %160 to i32
  %161 = load i8, i8* %arrayidx128.i.1, align 1
  %conv129.i.1700 = zext i8 %161 to i32
  %xor130.i.1701 = xor i32 %conv129.i.1700, %conv126.i.1699
  %conv131.i.1702 = trunc i32 %xor130.i.1701 to i8
  store i8 %conv131.i.1702, i8* %arrayidx128.i.1, align 1
  %scevgep298.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %157, i64 0, i64 0, i64 2
  %162 = load i8, i8* %scevgep298.2.1, align 1
  %conv126.i.2.1 = zext i8 %162 to i32
  %163 = load i8, i8* %arrayidx128.i.1, align 1
  %conv129.i.2.1 = zext i8 %163 to i32
  %xor130.i.2.1 = xor i32 %conv129.i.2.1, %conv126.i.2.1
  %conv131.i.2.1 = trunc i32 %xor130.i.2.1 to i8
  store i8 %conv131.i.2.1, i8* %arrayidx128.i.1, align 1
  %scevgep298.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %157, i64 0, i64 0, i64 3
  %164 = load i8, i8* %scevgep298.3.1, align 1
  %conv126.i.3.1 = zext i8 %164 to i32
  %165 = load i8, i8* %arrayidx128.i.1, align 1
  %conv129.i.3.1 = zext i8 %165 to i32
  %xor130.i.3.1 = xor i32 %conv129.i.3.1, %conv126.i.3.1
  %conv131.i.3.1 = trunc i32 %xor130.i.3.1 to i8
  store i8 %conv131.i.3.1, i8* %arrayidx128.i.1, align 1
  %scevgep297.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %157, i64 0, i64 1, i64 0
  %166 = bitcast i8* %scevgep297.1 to [4 x [4 x i8]]*
  %arrayidx108.i.2 = getelementptr inbounds i8, i8* %arraydecay5, i64 2
  %167 = load i8, i8* %arrayidx108.i.2, align 1
  %arrayidx110.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %168 = load i8, i8* %arrayidx110.i.2, align 1
  %call111.i.2 = call zeroext i8 @mult(i8 zeroext %167, i8 zeroext %168) #3
  %arrayidx113.i.2 = getelementptr inbounds i8, i8* %arraydecay6, i64 2
  store i8 %call111.i.2, i8* %arrayidx113.i.2, align 1
  %arrayidx128.i.2 = getelementptr inbounds i8, i8* %arraydecay6, i64 2
  %scevgep298.2707 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %166, i64 0, i64 0, i64 0
  %169 = load i8, i8* %scevgep298.2707, align 1
  %conv126.i.2708 = zext i8 %169 to i32
  %170 = load i8, i8* %arrayidx128.i.2, align 1
  %conv129.i.2709 = zext i8 %170 to i32
  %xor130.i.2710 = xor i32 %conv129.i.2709, %conv126.i.2708
  %conv131.i.2711 = trunc i32 %xor130.i.2710 to i8
  store i8 %conv131.i.2711, i8* %arrayidx128.i.2, align 1
  %scevgep298.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %166, i64 0, i64 0, i64 1
  %171 = load i8, i8* %scevgep298.1.2, align 1
  %conv126.i.1.2 = zext i8 %171 to i32
  %172 = load i8, i8* %arrayidx128.i.2, align 1
  %conv129.i.1.2 = zext i8 %172 to i32
  %xor130.i.1.2 = xor i32 %conv129.i.1.2, %conv126.i.1.2
  %conv131.i.1.2 = trunc i32 %xor130.i.1.2 to i8
  store i8 %conv131.i.1.2, i8* %arrayidx128.i.2, align 1
  %scevgep298.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %166, i64 0, i64 0, i64 3
  %173 = load i8, i8* %scevgep298.3.2, align 1
  %conv126.i.3.2 = zext i8 %173 to i32
  %174 = load i8, i8* %arrayidx128.i.2, align 1
  %conv129.i.3.2 = zext i8 %174 to i32
  %xor130.i.3.2 = xor i32 %conv129.i.3.2, %conv126.i.3.2
  %conv131.i.3.2 = trunc i32 %xor130.i.3.2 to i8
  store i8 %conv131.i.3.2, i8* %arrayidx128.i.2, align 1
  %scevgep297.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %166, i64 0, i64 1, i64 0
  %175 = bitcast i8* %scevgep297.2 to [4 x [4 x i8]]*
  %arrayidx108.i.3 = getelementptr inbounds i8, i8* %arraydecay5, i64 3
  %176 = load i8, i8* %arrayidx108.i.3, align 1
  %arrayidx110.i.3 = getelementptr inbounds i8, i8* %x, i64 3
  %177 = load i8, i8* %arrayidx110.i.3, align 1
  %call111.i.3 = call zeroext i8 @mult(i8 zeroext %176, i8 zeroext %177) #3
  %arrayidx113.i.3 = getelementptr inbounds i8, i8* %arraydecay6, i64 3
  store i8 %call111.i.3, i8* %arrayidx113.i.3, align 1
  %arrayidx128.i.3 = getelementptr inbounds i8, i8* %arraydecay6, i64 3
  %scevgep298.3716 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %175, i64 0, i64 0, i64 0
  %178 = load i8, i8* %scevgep298.3716, align 1
  %conv126.i.3717 = zext i8 %178 to i32
  %179 = load i8, i8* %arrayidx128.i.3, align 1
  %conv129.i.3718 = zext i8 %179 to i32
  %xor130.i.3719 = xor i32 %conv129.i.3718, %conv126.i.3717
  %conv131.i.3720 = trunc i32 %xor130.i.3719 to i8
  store i8 %conv131.i.3720, i8* %arrayidx128.i.3, align 1
  %scevgep298.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %175, i64 0, i64 0, i64 1
  %180 = load i8, i8* %scevgep298.1.3, align 1
  %conv126.i.1.3 = zext i8 %180 to i32
  %181 = load i8, i8* %arrayidx128.i.3, align 1
  %conv129.i.1.3 = zext i8 %181 to i32
  %xor130.i.1.3 = xor i32 %conv129.i.1.3, %conv126.i.1.3
  %conv131.i.1.3 = trunc i32 %xor130.i.1.3 to i8
  store i8 %conv131.i.1.3, i8* %arrayidx128.i.3, align 1
  %scevgep298.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %175, i64 0, i64 0, i64 2
  %182 = load i8, i8* %scevgep298.2.3, align 1
  %conv126.i.2.3 = zext i8 %182 to i32
  %183 = load i8, i8* %arrayidx128.i.3, align 1
  %conv129.i.2.3 = zext i8 %183 to i32
  %xor130.i.2.3 = xor i32 %conv129.i.2.3, %conv126.i.2.3
  %conv131.i.2.3 = trunc i32 %xor130.i.2.3 to i8
  store i8 %conv131.i.2.3, i8* %arrayidx128.i.3, align 1
  %call139.i = call zeroext i8 @mult(i8 zeroext %call.i41, i8 zeroext %call1.i) #3
  %conv140.i = zext i8 %call139.i to i32
  %scevgep288 = getelementptr [4 x i8], [4 x i8]* %u, i64 0, i64 0
  %184 = load i8, i8* %scevgep288, align 1
  %scevgep288.1 = getelementptr [4 x i8], [4 x i8]* %u, i64 0, i64 1
  %185 = load i8, i8* %scevgep288.1, align 1
  %conv.i.i172.i.1 = zext i8 %185 to i32
  %conv1.i.i173.i.1 = zext i8 %184 to i32
  %xor.i.i174.i.1 = xor i32 %conv1.i.i173.i.1, %conv.i.i172.i.1
  %conv2.i.i175.i.1 = trunc i32 %xor.i.i174.i.1 to i8
  %scevgep288.2 = getelementptr [4 x i8], [4 x i8]* %u, i64 0, i64 2
  %186 = load i8, i8* %scevgep288.2, align 1
  %conv.i.i172.i.2 = zext i8 %186 to i32
  %conv1.i.i173.i.2 = zext i8 %conv2.i.i175.i.1 to i32
  %xor.i.i174.i.2 = xor i32 %conv1.i.i173.i.2, %conv.i.i172.i.2
  %conv2.i.i175.i.2 = trunc i32 %xor.i.i174.i.2 to i8
  %scevgep288.3 = getelementptr [4 x i8], [4 x i8]* %u, i64 0, i64 3
  %187 = load i8, i8* %scevgep288.3, align 1
  %conv.i.i172.i.3 = zext i8 %187 to i32
  %conv1.i.i173.i.3 = zext i8 %conv2.i.i175.i.2 to i32
  %xor.i.i174.i.3 = xor i32 %conv1.i.i173.i.3, %conv.i.i172.i.3
  %conv2.i.i175.i.3 = trunc i32 %xor.i.i174.i.3 to i8
  %conv142.i = zext i8 %conv2.i.i175.i.3 to i32
  %cmp143.i = icmp eq i32 %conv140.i, %conv142.i
  call void @assert(i1 zeroext %cmp143.i) #3
  %scevgep283 = getelementptr [4 x i8], [4 x i8]* %u, i64 0, i64 0
  %188 = load i8, i8* %scevgep283, align 1
  %call.i71 = call zeroext i8 @exp4(i8 zeroext %188) #3
  %scevgep284 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 0
  store i8 %call.i71, i8* %scevgep284, align 1
  %scevgep283.1 = getelementptr [4 x i8], [4 x i8]* %u, i64 0, i64 1
  %189 = load i8, i8* %scevgep283.1, align 1
  %call.i71.1 = call zeroext i8 @exp4(i8 zeroext %189) #3
  %scevgep284.1 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 1
  store i8 %call.i71.1, i8* %scevgep284.1, align 1
  %scevgep283.2 = getelementptr [4 x i8], [4 x i8]* %u, i64 0, i64 2
  %190 = load i8, i8* %scevgep283.2, align 1
  %call.i71.2 = call zeroext i8 @exp4(i8 zeroext %190) #3
  %scevgep284.2 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 2
  store i8 %call.i71.2, i8* %scevgep284.2, align 1
  %scevgep283.3 = getelementptr [4 x i8], [4 x i8]* %u, i64 0, i64 3
  %191 = load i8, i8* %scevgep283.3, align 1
  %call.i71.3 = call zeroext i8 @exp4(i8 zeroext %191) #3
  %scevgep284.3 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 3
  store i8 %call.i71.3, i8* %scevgep284.3, align 1
  %arraydecay9 = getelementptr inbounds [4 x i8], [4 x i8]* %w, i64 0, i64 0
  %call.i92 = call zeroext i8 (...) @rand() #3
  %conv.i93 = zext i8 %call.i92 to i32
  %scevgep279 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 0
  %192 = load i8, i8* %scevgep279, align 1
  %scevgep279.1 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 1
  %193 = load i8, i8* %scevgep279.1, align 1
  %conv.i.i.i99.1 = zext i8 %193 to i32
  %conv1.i.i.i100.1 = zext i8 %192 to i32
  %xor.i.i.i101.1 = xor i32 %conv1.i.i.i100.1, %conv.i.i.i99.1
  %conv2.i.i.i102.1 = trunc i32 %xor.i.i.i101.1 to i8
  %scevgep279.2 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 2
  %194 = load i8, i8* %scevgep279.2, align 1
  %conv.i.i.i99.2 = zext i8 %194 to i32
  %conv1.i.i.i100.2 = zext i8 %conv2.i.i.i102.1 to i32
  %xor.i.i.i101.2 = xor i32 %conv1.i.i.i100.2, %conv.i.i.i99.2
  %conv2.i.i.i102.2 = trunc i32 %xor.i.i.i101.2 to i8
  %scevgep279.3 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 3
  %195 = load i8, i8* %scevgep279.3, align 1
  %conv.i.i.i99.3 = zext i8 %195 to i32
  %conv1.i.i.i100.3 = zext i8 %conv2.i.i.i102.2 to i32
  %xor.i.i.i101.3 = xor i32 %conv1.i.i.i100.3, %conv.i.i.i99.3
  %conv2.i.i.i102.3 = trunc i32 %xor.i.i.i101.3 to i8
  %conv2.i105 = zext i8 %conv2.i.i.i102.3 to i32
  %cmp.i106 = icmp eq i32 %conv.i93, %conv2.i105
  call void @assume(i1 zeroext %cmp.i106) #3
  %call7.i111 = call zeroext i8 (...) @rand() #3
  %conv8.i112 = zext i8 %call7.i111 to i32
  %196 = load i8, i8* %arraydecay9, align 1
  %conv9.i113 = zext i8 %196 to i32
  %xor.i114 = xor i32 %conv9.i113, %conv8.i112
  %conv10.i115 = trunc i32 %xor.i114 to i8
  store i8 %conv10.i115, i8* %arraydecay9, align 1
  %conv11.i116 = zext i8 %call7.i111 to i32
  %scevgep275 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 1
  %197 = load i8, i8* %scevgep275, align 1
  %conv13.i119 = zext i8 %197 to i32
  %xor14.i120 = xor i32 %conv13.i119, %conv11.i116
  %conv15.i121 = trunc i32 %xor14.i120 to i8
  store i8 %conv15.i121, i8* %scevgep275, align 1
  %call7.i111.1 = call zeroext i8 (...) @rand() #3
  %conv8.i112.1 = zext i8 %call7.i111.1 to i32
  %198 = load i8, i8* %arraydecay9, align 1
  %conv9.i113.1 = zext i8 %198 to i32
  %xor.i114.1 = xor i32 %conv9.i113.1, %conv8.i112.1
  %conv10.i115.1 = trunc i32 %xor.i114.1 to i8
  store i8 %conv10.i115.1, i8* %arraydecay9, align 1
  %conv11.i116.1 = zext i8 %call7.i111.1 to i32
  %scevgep275.1 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 2
  %199 = load i8, i8* %scevgep275.1, align 1
  %conv13.i119.1 = zext i8 %199 to i32
  %xor14.i120.1 = xor i32 %conv13.i119.1, %conv11.i116.1
  %conv15.i121.1 = trunc i32 %xor14.i120.1 to i8
  store i8 %conv15.i121.1, i8* %scevgep275.1, align 1
  %call7.i111.2 = call zeroext i8 (...) @rand() #3
  %conv8.i112.2 = zext i8 %call7.i111.2 to i32
  %200 = load i8, i8* %arraydecay9, align 1
  %conv9.i113.2 = zext i8 %200 to i32
  %xor.i114.2 = xor i32 %conv9.i113.2, %conv8.i112.2
  %conv10.i115.2 = trunc i32 %xor.i114.2 to i8
  store i8 %conv10.i115.2, i8* %arraydecay9, align 1
  %conv11.i116.2 = zext i8 %call7.i111.2 to i32
  %scevgep275.2 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 3
  %201 = load i8, i8* %scevgep275.2, align 1
  %conv13.i119.2 = zext i8 %201 to i32
  %xor14.i120.2 = xor i32 %conv13.i119.2, %conv11.i116.2
  %conv15.i121.2 = trunc i32 %xor14.i120.2 to i8
  store i8 %conv15.i121.2, i8* %scevgep275.2, align 1
  %conv16.i124 = zext i8 %call.i92 to i32
  %scevgep271 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 0
  %202 = load i8, i8* %scevgep271, align 1
  %scevgep271.1 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 1
  %203 = load i8, i8* %scevgep271.1, align 1
  %conv.i.i31.i131.1 = zext i8 %203 to i32
  %conv1.i.i32.i132.1 = zext i8 %202 to i32
  %xor.i.i33.i133.1 = xor i32 %conv1.i.i32.i132.1, %conv.i.i31.i131.1
  %conv2.i.i34.i134.1 = trunc i32 %xor.i.i33.i133.1 to i8
  %scevgep271.2 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 2
  %204 = load i8, i8* %scevgep271.2, align 1
  %conv.i.i31.i131.2 = zext i8 %204 to i32
  %conv1.i.i32.i132.2 = zext i8 %conv2.i.i34.i134.1 to i32
  %xor.i.i33.i133.2 = xor i32 %conv1.i.i32.i132.2, %conv.i.i31.i131.2
  %conv2.i.i34.i134.2 = trunc i32 %xor.i.i33.i133.2 to i8
  %scevgep271.3 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 3
  %205 = load i8, i8* %scevgep271.3, align 1
  %conv.i.i31.i131.3 = zext i8 %205 to i32
  %conv1.i.i32.i132.3 = zext i8 %conv2.i.i34.i134.2 to i32
  %xor.i.i33.i133.3 = xor i32 %conv1.i.i32.i132.3, %conv.i.i31.i131.3
  %conv2.i.i34.i134.3 = trunc i32 %xor.i.i33.i133.3 to i8
  %conv18.i137 = zext i8 %conv2.i.i34.i134.3 to i32
  %cmp19.i138 = icmp eq i32 %conv16.i124, %conv18.i137
  call void @assert(i1 zeroext %cmp19.i138) #3
  %arraydecay10 = getelementptr inbounds [4 x i8], [4 x i8]* %u, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [4 x i8], [4 x i8]* %w, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [4 x i8], [4 x i8]* %v, i64 0, i64 0
  %call.i171 = call zeroext i8 (...) @rand() #3
  %call1.i172 = call zeroext i8 (...) @rand() #3
  %conv.i173 = zext i8 %call.i171 to i32
  %scevgep267 = getelementptr [4 x i8], [4 x i8]* %u, i64 0, i64 0
  %206 = load i8, i8* %scevgep267, align 1
  %scevgep267.1 = getelementptr [4 x i8], [4 x i8]* %u, i64 0, i64 1
  %207 = load i8, i8* %scevgep267.1, align 1
  %conv.i.i.i179.1 = zext i8 %207 to i32
  %conv1.i.i.i180.1 = zext i8 %206 to i32
  %xor.i.i.i181.1 = xor i32 %conv1.i.i.i180.1, %conv.i.i.i179.1
  %conv2.i.i.i182.1 = trunc i32 %xor.i.i.i181.1 to i8
  %scevgep267.2 = getelementptr [4 x i8], [4 x i8]* %u, i64 0, i64 2
  %208 = load i8, i8* %scevgep267.2, align 1
  %conv.i.i.i179.2 = zext i8 %208 to i32
  %conv1.i.i.i180.2 = zext i8 %conv2.i.i.i182.1 to i32
  %xor.i.i.i181.2 = xor i32 %conv1.i.i.i180.2, %conv.i.i.i179.2
  %conv2.i.i.i182.2 = trunc i32 %xor.i.i.i181.2 to i8
  %scevgep267.3 = getelementptr [4 x i8], [4 x i8]* %u, i64 0, i64 3
  %209 = load i8, i8* %scevgep267.3, align 1
  %conv.i.i.i179.3 = zext i8 %209 to i32
  %conv1.i.i.i180.3 = zext i8 %conv2.i.i.i182.2 to i32
  %xor.i.i.i181.3 = xor i32 %conv1.i.i.i180.3, %conv.i.i.i179.3
  %conv2.i.i.i182.3 = trunc i32 %xor.i.i.i181.3 to i8
  %conv3.i185 = zext i8 %conv2.i.i.i182.3 to i32
  %cmp.i186 = icmp eq i32 %conv.i173, %conv3.i185
  call void @assume(i1 zeroext %cmp.i186) #3
  %conv5.i187 = zext i8 %call1.i172 to i32
  %scevgep263 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 0
  %210 = load i8, i8* %scevgep263, align 1
  %scevgep263.1 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 1
  %211 = load i8, i8* %scevgep263.1, align 1
  %conv.i.i155.i194.1 = zext i8 %211 to i32
  %conv1.i.i156.i195.1 = zext i8 %210 to i32
  %xor.i.i157.i196.1 = xor i32 %conv1.i.i156.i195.1, %conv.i.i155.i194.1
  %conv2.i.i158.i197.1 = trunc i32 %xor.i.i157.i196.1 to i8
  %scevgep263.2 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 2
  %212 = load i8, i8* %scevgep263.2, align 1
  %conv.i.i155.i194.2 = zext i8 %212 to i32
  %conv1.i.i156.i195.2 = zext i8 %conv2.i.i158.i197.1 to i32
  %xor.i.i157.i196.2 = xor i32 %conv1.i.i156.i195.2, %conv.i.i155.i194.2
  %conv2.i.i158.i197.2 = trunc i32 %xor.i.i157.i196.2 to i8
  %scevgep263.3 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 3
  %213 = load i8, i8* %scevgep263.3, align 1
  %conv.i.i155.i194.3 = zext i8 %213 to i32
  %conv1.i.i156.i195.3 = zext i8 %conv2.i.i158.i197.2 to i32
  %xor.i.i157.i196.3 = xor i32 %conv1.i.i156.i195.3, %conv.i.i155.i194.3
  %conv2.i.i158.i197.3 = trunc i32 %xor.i.i157.i196.3 to i8
  %conv7.i200 = zext i8 %conv2.i.i158.i197.3 to i32
  %cmp8.i201 = icmp eq i32 %conv5.i187, %conv7.i200
  call void @assume(i1 zeroext %cmp8.i201) #3
  %call16.i209 = call zeroext i8 (...) @rand() #3
  %scevgep253 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i209, i8* %scevgep253, align 1
  %scevgep254 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %214 = load i8, i8* %scevgep254, align 1
  %scevgep255 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %214, i8* %scevgep255, align 1
  %call16.i209.1819 = call zeroext i8 (...) @rand() #3
  %scevgep253.1820 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  store i8 %call16.i209.1819, i8* %scevgep253.1820, align 1
  %scevgep254.1821 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %215 = load i8, i8* %scevgep254.1821, align 1
  %scevgep255.1822 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 2, i64 0
  store i8 %215, i8* %scevgep255.1822, align 1
  %call16.i209.2824 = call zeroext i8 (...) @rand() #3
  %scevgep253.2825 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  store i8 %call16.i209.2824, i8* %scevgep253.2825, align 1
  %scevgep254.2826 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %216 = load i8, i8* %scevgep254.2826, align 1
  %scevgep255.2827 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 3, i64 0
  store i8 %216, i8* %scevgep255.2827, align 1
  %scevgep250 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 1
  %217 = bitcast i8* %scevgep250 to [4 x [4 x i8]]*
  %call16.i209.1 = call zeroext i8 (...) @rand() #3
  %scevgep253.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %217, i64 0, i64 0, i64 1
  store i8 %call16.i209.1, i8* %scevgep253.1, align 1
  %scevgep254.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %217, i64 0, i64 0, i64 1
  %218 = load i8, i8* %scevgep254.1, align 1
  %scevgep255.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %217, i64 0, i64 1, i64 0
  store i8 %218, i8* %scevgep255.1, align 1
  %call16.i209.1.1 = call zeroext i8 (...) @rand() #3
  %scevgep253.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %217, i64 0, i64 0, i64 2
  store i8 %call16.i209.1.1, i8* %scevgep253.1.1, align 1
  %scevgep254.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %217, i64 0, i64 0, i64 2
  %219 = load i8, i8* %scevgep254.1.1, align 1
  %scevgep255.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %217, i64 0, i64 2, i64 0
  store i8 %219, i8* %scevgep255.1.1, align 1
  %scevgep250.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %217, i64 0, i64 1, i64 1
  %220 = bitcast i8* %scevgep250.1 to [4 x [4 x i8]]*
  %call16.i209.2 = call zeroext i8 (...) @rand() #3
  %scevgep253.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %220, i64 0, i64 0, i64 1
  store i8 %call16.i209.2, i8* %scevgep253.2, align 1
  %scevgep254.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %220, i64 0, i64 0, i64 1
  %221 = load i8, i8* %scevgep254.2, align 1
  %scevgep255.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %220, i64 0, i64 1, i64 0
  store i8 %221, i8* %scevgep255.2, align 1
  %scevgep226.1 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 1
  %222 = load i8, i8* %scevgep226.1, align 1
  %conv44.i236.1 = zext i8 %222 to i32
  %scevgep229.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %223 = load i8, i8* %scevgep229.1, align 1
  %conv49.i241.1 = zext i8 %223 to i32
  %xor.i242.1 = xor i32 %conv44.i236.1, %conv49.i241.1
  %conv50.i243.1 = trunc i32 %xor.i242.1 to i8
  %scevgep233.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i243.1, i8* %scevgep233.1, align 1
  %224 = load i8, i8* %arraydecay10, align 1
  %conv57.i250.1 = zext i8 %224 to i32
  %xor58.i251.1 = xor i32 %conv57.i250.1, 1
  %conv59.i252.1 = trunc i32 %xor58.i251.1 to i8
  %scevgep230.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %225 = load i8, i8* %scevgep230.1, align 1
  %call64.i257.1 = call zeroext i8 @mult(i8 zeroext %conv59.i252.1, i8 zeroext %225) #3
  %scevgep237.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i257.1, i8* %scevgep237.1, align 1
  %226 = load i8, i8* %arraydecay10, align 1
  %scevgep234.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 1
  %227 = load i8, i8* %scevgep234.1, align 1
  %call75.i268.1 = call zeroext i8 @mult(i8 zeroext %226, i8 zeroext %227) #3
  %scevgep241.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i268.1, i8* %scevgep241.1, align 1
  %scevgep238.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %228 = load i8, i8* %scevgep238.1, align 1
  %conv84.i277.1 = zext i8 %228 to i32
  %scevgep242.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %229 = load i8, i8* %scevgep242.1, align 1
  %conv89.i282.1 = zext i8 %229 to i32
  %xor90.i283.1 = xor i32 %conv84.i277.1, %conv89.i282.1
  %conv91.i284.1 = trunc i32 %xor90.i283.1 to i8
  %scevgep245.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i284.1, i8* %scevgep245.1, align 1
  %scevgep226.2 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 2
  %230 = load i8, i8* %scevgep226.2, align 1
  %conv44.i236.2 = zext i8 %230 to i32
  %scevgep229.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %231 = load i8, i8* %scevgep229.2, align 1
  %conv49.i241.2 = zext i8 %231 to i32
  %xor.i242.2 = xor i32 %conv44.i236.2, %conv49.i241.2
  %conv50.i243.2 = trunc i32 %xor.i242.2 to i8
  %scevgep233.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 2
  store i8 %conv50.i243.2, i8* %scevgep233.2, align 1
  %232 = load i8, i8* %arraydecay10, align 1
  %conv57.i250.2 = zext i8 %232 to i32
  %xor58.i251.2 = xor i32 %conv57.i250.2, 1
  %conv59.i252.2 = trunc i32 %xor58.i251.2 to i8
  %scevgep230.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %233 = load i8, i8* %scevgep230.2, align 1
  %call64.i257.2 = call zeroext i8 @mult(i8 zeroext %conv59.i252.2, i8 zeroext %233) #3
  %scevgep237.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 2
  store i8 %call64.i257.2, i8* %scevgep237.2, align 1
  %234 = load i8, i8* %arraydecay10, align 1
  %scevgep234.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 2
  %235 = load i8, i8* %scevgep234.2, align 1
  %call75.i268.2 = call zeroext i8 @mult(i8 zeroext %234, i8 zeroext %235) #3
  %scevgep241.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 2
  store i8 %call75.i268.2, i8* %scevgep241.2, align 1
  %scevgep238.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 2
  %236 = load i8, i8* %scevgep238.2, align 1
  %conv84.i277.2 = zext i8 %236 to i32
  %scevgep242.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 2
  %237 = load i8, i8* %scevgep242.2, align 1
  %conv89.i282.2 = zext i8 %237 to i32
  %xor90.i283.2 = xor i32 %conv84.i277.2, %conv89.i282.2
  %conv91.i284.2 = trunc i32 %xor90.i283.2 to i8
  %scevgep245.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 2
  store i8 %conv91.i284.2, i8* %scevgep245.2, align 1
  %scevgep226.3 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 3
  %238 = load i8, i8* %scevgep226.3, align 1
  %conv44.i236.3 = zext i8 %238 to i32
  %scevgep229.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %239 = load i8, i8* %scevgep229.3, align 1
  %conv49.i241.3 = zext i8 %239 to i32
  %xor.i242.3 = xor i32 %conv44.i236.3, %conv49.i241.3
  %conv50.i243.3 = trunc i32 %xor.i242.3 to i8
  %scevgep233.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 3
  store i8 %conv50.i243.3, i8* %scevgep233.3, align 1
  %240 = load i8, i8* %arraydecay10, align 1
  %conv57.i250.3 = zext i8 %240 to i32
  %xor58.i251.3 = xor i32 %conv57.i250.3, 1
  %conv59.i252.3 = trunc i32 %xor58.i251.3 to i8
  %scevgep230.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %241 = load i8, i8* %scevgep230.3, align 1
  %call64.i257.3 = call zeroext i8 @mult(i8 zeroext %conv59.i252.3, i8 zeroext %241) #3
  %scevgep237.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 3
  store i8 %call64.i257.3, i8* %scevgep237.3, align 1
  %242 = load i8, i8* %arraydecay10, align 1
  %scevgep234.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 3
  %243 = load i8, i8* %scevgep234.3, align 1
  %call75.i268.3 = call zeroext i8 @mult(i8 zeroext %242, i8 zeroext %243) #3
  %scevgep241.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 3
  store i8 %call75.i268.3, i8* %scevgep241.3, align 1
  %scevgep238.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 3
  %244 = load i8, i8* %scevgep238.3, align 1
  %conv84.i277.3 = zext i8 %244 to i32
  %scevgep242.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 3
  %245 = load i8, i8* %scevgep242.3, align 1
  %conv89.i282.3 = zext i8 %245 to i32
  %xor90.i283.3 = xor i32 %conv84.i277.3, %conv89.i282.3
  %conv91.i284.3 = trunc i32 %xor90.i283.3 to i8
  %scevgep245.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 3
  store i8 %conv91.i284.3, i8* %scevgep245.3, align 1
  %scevgep228 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  %246 = bitcast i8* %scevgep228 to [4 x [4 x i8]]*
  %scevgep232 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 1, i64 0
  %247 = bitcast i8* %scevgep232 to [4 x [4 x i8]]*
  %scevgep236 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %248 = bitcast i8* %scevgep236 to [4 x [4 x i8]]*
  %scevgep240 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %249 = bitcast i8* %scevgep240 to [4 x [4 x i8]]*
  %scevgep244 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 1, i64 0
  %250 = bitcast i8* %scevgep244 to [4 x [4 x i8]]*
  %arrayidx56.i249.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %arrayidx70.i263.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %scevgep226.1617 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 0
  %251 = load i8, i8* %scevgep226.1617, align 1
  %conv44.i236.1618 = zext i8 %251 to i32
  %scevgep229.1619 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %246, i64 0, i64 0, i64 0
  %252 = load i8, i8* %scevgep229.1619, align 1
  %conv49.i241.1620 = zext i8 %252 to i32
  %xor.i242.1621 = xor i32 %conv44.i236.1618, %conv49.i241.1620
  %conv50.i243.1622 = trunc i32 %xor.i242.1621 to i8
  %scevgep233.1623 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %247, i64 0, i64 0, i64 0
  store i8 %conv50.i243.1622, i8* %scevgep233.1623, align 1
  %253 = load i8, i8* %arrayidx56.i249.1, align 1
  %conv57.i250.1624 = zext i8 %253 to i32
  %xor58.i251.1625 = xor i32 %conv57.i250.1624, 1
  %conv59.i252.1626 = trunc i32 %xor58.i251.1625 to i8
  %scevgep230.1627 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %246, i64 0, i64 0, i64 0
  %254 = load i8, i8* %scevgep230.1627, align 1
  %call64.i257.1628 = call zeroext i8 @mult(i8 zeroext %conv59.i252.1626, i8 zeroext %254) #3
  %scevgep237.1629 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %248, i64 0, i64 0, i64 0
  store i8 %call64.i257.1628, i8* %scevgep237.1629, align 1
  %255 = load i8, i8* %arrayidx70.i263.1, align 1
  %scevgep234.1630 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %247, i64 0, i64 0, i64 0
  %256 = load i8, i8* %scevgep234.1630, align 1
  %call75.i268.1631 = call zeroext i8 @mult(i8 zeroext %255, i8 zeroext %256) #3
  %scevgep241.1632 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %249, i64 0, i64 0, i64 0
  store i8 %call75.i268.1631, i8* %scevgep241.1632, align 1
  %scevgep238.1633 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %248, i64 0, i64 0, i64 0
  %257 = load i8, i8* %scevgep238.1633, align 1
  %conv84.i277.1634 = zext i8 %257 to i32
  %scevgep242.1635 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %249, i64 0, i64 0, i64 0
  %258 = load i8, i8* %scevgep242.1635, align 1
  %conv89.i282.1636 = zext i8 %258 to i32
  %xor90.i283.1637 = xor i32 %conv84.i277.1634, %conv89.i282.1636
  %conv91.i284.1638 = trunc i32 %xor90.i283.1637 to i8
  %scevgep245.1639 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %250, i64 0, i64 0, i64 0
  store i8 %conv91.i284.1638, i8* %scevgep245.1639, align 1
  %scevgep226.2.1 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 2
  %259 = load i8, i8* %scevgep226.2.1, align 1
  %conv44.i236.2.1 = zext i8 %259 to i32
  %scevgep229.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %246, i64 0, i64 0, i64 2
  %260 = load i8, i8* %scevgep229.2.1, align 1
  %conv49.i241.2.1 = zext i8 %260 to i32
  %xor.i242.2.1 = xor i32 %conv44.i236.2.1, %conv49.i241.2.1
  %conv50.i243.2.1 = trunc i32 %xor.i242.2.1 to i8
  %scevgep233.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %247, i64 0, i64 0, i64 2
  store i8 %conv50.i243.2.1, i8* %scevgep233.2.1, align 1
  %261 = load i8, i8* %arrayidx56.i249.1, align 1
  %conv57.i250.2.1 = zext i8 %261 to i32
  %xor58.i251.2.1 = xor i32 %conv57.i250.2.1, 1
  %conv59.i252.2.1 = trunc i32 %xor58.i251.2.1 to i8
  %scevgep230.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %246, i64 0, i64 0, i64 2
  %262 = load i8, i8* %scevgep230.2.1, align 1
  %call64.i257.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i252.2.1, i8 zeroext %262) #3
  %scevgep237.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %248, i64 0, i64 0, i64 2
  store i8 %call64.i257.2.1, i8* %scevgep237.2.1, align 1
  %263 = load i8, i8* %arrayidx70.i263.1, align 1
  %scevgep234.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %247, i64 0, i64 0, i64 2
  %264 = load i8, i8* %scevgep234.2.1, align 1
  %call75.i268.2.1 = call zeroext i8 @mult(i8 zeroext %263, i8 zeroext %264) #3
  %scevgep241.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %249, i64 0, i64 0, i64 2
  store i8 %call75.i268.2.1, i8* %scevgep241.2.1, align 1
  %scevgep238.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %248, i64 0, i64 0, i64 2
  %265 = load i8, i8* %scevgep238.2.1, align 1
  %conv84.i277.2.1 = zext i8 %265 to i32
  %scevgep242.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %249, i64 0, i64 0, i64 2
  %266 = load i8, i8* %scevgep242.2.1, align 1
  %conv89.i282.2.1 = zext i8 %266 to i32
  %xor90.i283.2.1 = xor i32 %conv84.i277.2.1, %conv89.i282.2.1
  %conv91.i284.2.1 = trunc i32 %xor90.i283.2.1 to i8
  %scevgep245.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %250, i64 0, i64 0, i64 2
  store i8 %conv91.i284.2.1, i8* %scevgep245.2.1, align 1
  %scevgep226.3.1 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 3
  %267 = load i8, i8* %scevgep226.3.1, align 1
  %conv44.i236.3.1 = zext i8 %267 to i32
  %scevgep229.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %246, i64 0, i64 0, i64 3
  %268 = load i8, i8* %scevgep229.3.1, align 1
  %conv49.i241.3.1 = zext i8 %268 to i32
  %xor.i242.3.1 = xor i32 %conv44.i236.3.1, %conv49.i241.3.1
  %conv50.i243.3.1 = trunc i32 %xor.i242.3.1 to i8
  %scevgep233.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %247, i64 0, i64 0, i64 3
  store i8 %conv50.i243.3.1, i8* %scevgep233.3.1, align 1
  %269 = load i8, i8* %arrayidx56.i249.1, align 1
  %conv57.i250.3.1 = zext i8 %269 to i32
  %xor58.i251.3.1 = xor i32 %conv57.i250.3.1, 1
  %conv59.i252.3.1 = trunc i32 %xor58.i251.3.1 to i8
  %scevgep230.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %246, i64 0, i64 0, i64 3
  %270 = load i8, i8* %scevgep230.3.1, align 1
  %call64.i257.3.1 = call zeroext i8 @mult(i8 zeroext %conv59.i252.3.1, i8 zeroext %270) #3
  %scevgep237.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %248, i64 0, i64 0, i64 3
  store i8 %call64.i257.3.1, i8* %scevgep237.3.1, align 1
  %271 = load i8, i8* %arrayidx70.i263.1, align 1
  %scevgep234.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %247, i64 0, i64 0, i64 3
  %272 = load i8, i8* %scevgep234.3.1, align 1
  %call75.i268.3.1 = call zeroext i8 @mult(i8 zeroext %271, i8 zeroext %272) #3
  %scevgep241.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %249, i64 0, i64 0, i64 3
  store i8 %call75.i268.3.1, i8* %scevgep241.3.1, align 1
  %scevgep238.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %248, i64 0, i64 0, i64 3
  %273 = load i8, i8* %scevgep238.3.1, align 1
  %conv84.i277.3.1 = zext i8 %273 to i32
  %scevgep242.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %249, i64 0, i64 0, i64 3
  %274 = load i8, i8* %scevgep242.3.1, align 1
  %conv89.i282.3.1 = zext i8 %274 to i32
  %xor90.i283.3.1 = xor i32 %conv84.i277.3.1, %conv89.i282.3.1
  %conv91.i284.3.1 = trunc i32 %xor90.i283.3.1 to i8
  %scevgep245.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %250, i64 0, i64 0, i64 3
  store i8 %conv91.i284.3.1, i8* %scevgep245.3.1, align 1
  %scevgep228.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %246, i64 0, i64 1, i64 0
  %275 = bitcast i8* %scevgep228.1 to [4 x [4 x i8]]*
  %scevgep232.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %247, i64 0, i64 1, i64 0
  %276 = bitcast i8* %scevgep232.1 to [4 x [4 x i8]]*
  %scevgep236.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %248, i64 0, i64 1, i64 0
  %277 = bitcast i8* %scevgep236.1 to [4 x [4 x i8]]*
  %scevgep240.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %249, i64 0, i64 1, i64 0
  %278 = bitcast i8* %scevgep240.1 to [4 x [4 x i8]]*
  %scevgep244.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %250, i64 0, i64 1, i64 0
  %279 = bitcast i8* %scevgep244.1 to [4 x [4 x i8]]*
  %arrayidx56.i249.2 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  %arrayidx70.i263.2 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  %scevgep226.2644 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 0
  %280 = load i8, i8* %scevgep226.2644, align 1
  %conv44.i236.2645 = zext i8 %280 to i32
  %scevgep229.2646 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %275, i64 0, i64 0, i64 0
  %281 = load i8, i8* %scevgep229.2646, align 1
  %conv49.i241.2647 = zext i8 %281 to i32
  %xor.i242.2648 = xor i32 %conv44.i236.2645, %conv49.i241.2647
  %conv50.i243.2649 = trunc i32 %xor.i242.2648 to i8
  %scevgep233.2650 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %276, i64 0, i64 0, i64 0
  store i8 %conv50.i243.2649, i8* %scevgep233.2650, align 1
  %282 = load i8, i8* %arrayidx56.i249.2, align 1
  %conv57.i250.2651 = zext i8 %282 to i32
  %xor58.i251.2652 = xor i32 %conv57.i250.2651, 1
  %conv59.i252.2653 = trunc i32 %xor58.i251.2652 to i8
  %scevgep230.2654 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %275, i64 0, i64 0, i64 0
  %283 = load i8, i8* %scevgep230.2654, align 1
  %call64.i257.2655 = call zeroext i8 @mult(i8 zeroext %conv59.i252.2653, i8 zeroext %283) #3
  %scevgep237.2656 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %277, i64 0, i64 0, i64 0
  store i8 %call64.i257.2655, i8* %scevgep237.2656, align 1
  %284 = load i8, i8* %arrayidx70.i263.2, align 1
  %scevgep234.2657 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %276, i64 0, i64 0, i64 0
  %285 = load i8, i8* %scevgep234.2657, align 1
  %call75.i268.2658 = call zeroext i8 @mult(i8 zeroext %284, i8 zeroext %285) #3
  %scevgep241.2659 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %278, i64 0, i64 0, i64 0
  store i8 %call75.i268.2658, i8* %scevgep241.2659, align 1
  %scevgep238.2660 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %277, i64 0, i64 0, i64 0
  %286 = load i8, i8* %scevgep238.2660, align 1
  %conv84.i277.2661 = zext i8 %286 to i32
  %scevgep242.2662 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %278, i64 0, i64 0, i64 0
  %287 = load i8, i8* %scevgep242.2662, align 1
  %conv89.i282.2663 = zext i8 %287 to i32
  %xor90.i283.2664 = xor i32 %conv84.i277.2661, %conv89.i282.2663
  %conv91.i284.2665 = trunc i32 %xor90.i283.2664 to i8
  %scevgep245.2666 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %279, i64 0, i64 0, i64 0
  store i8 %conv91.i284.2665, i8* %scevgep245.2666, align 1
  %scevgep226.1.2 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 1
  %288 = load i8, i8* %scevgep226.1.2, align 1
  %conv44.i236.1.2 = zext i8 %288 to i32
  %scevgep229.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %275, i64 0, i64 0, i64 1
  %289 = load i8, i8* %scevgep229.1.2, align 1
  %conv49.i241.1.2 = zext i8 %289 to i32
  %xor.i242.1.2 = xor i32 %conv44.i236.1.2, %conv49.i241.1.2
  %conv50.i243.1.2 = trunc i32 %xor.i242.1.2 to i8
  %scevgep233.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %276, i64 0, i64 0, i64 1
  store i8 %conv50.i243.1.2, i8* %scevgep233.1.2, align 1
  %290 = load i8, i8* %arrayidx56.i249.2, align 1
  %conv57.i250.1.2 = zext i8 %290 to i32
  %xor58.i251.1.2 = xor i32 %conv57.i250.1.2, 1
  %conv59.i252.1.2 = trunc i32 %xor58.i251.1.2 to i8
  %scevgep230.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %275, i64 0, i64 0, i64 1
  %291 = load i8, i8* %scevgep230.1.2, align 1
  %call64.i257.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i252.1.2, i8 zeroext %291) #3
  %scevgep237.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %277, i64 0, i64 0, i64 1
  store i8 %call64.i257.1.2, i8* %scevgep237.1.2, align 1
  %292 = load i8, i8* %arrayidx70.i263.2, align 1
  %scevgep234.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %276, i64 0, i64 0, i64 1
  %293 = load i8, i8* %scevgep234.1.2, align 1
  %call75.i268.1.2 = call zeroext i8 @mult(i8 zeroext %292, i8 zeroext %293) #3
  %scevgep241.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %278, i64 0, i64 0, i64 1
  store i8 %call75.i268.1.2, i8* %scevgep241.1.2, align 1
  %scevgep238.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %277, i64 0, i64 0, i64 1
  %294 = load i8, i8* %scevgep238.1.2, align 1
  %conv84.i277.1.2 = zext i8 %294 to i32
  %scevgep242.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %278, i64 0, i64 0, i64 1
  %295 = load i8, i8* %scevgep242.1.2, align 1
  %conv89.i282.1.2 = zext i8 %295 to i32
  %xor90.i283.1.2 = xor i32 %conv84.i277.1.2, %conv89.i282.1.2
  %conv91.i284.1.2 = trunc i32 %xor90.i283.1.2 to i8
  %scevgep245.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %279, i64 0, i64 0, i64 1
  store i8 %conv91.i284.1.2, i8* %scevgep245.1.2, align 1
  %scevgep226.3.2 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 3
  %296 = load i8, i8* %scevgep226.3.2, align 1
  %conv44.i236.3.2 = zext i8 %296 to i32
  %scevgep229.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %275, i64 0, i64 0, i64 3
  %297 = load i8, i8* %scevgep229.3.2, align 1
  %conv49.i241.3.2 = zext i8 %297 to i32
  %xor.i242.3.2 = xor i32 %conv44.i236.3.2, %conv49.i241.3.2
  %conv50.i243.3.2 = trunc i32 %xor.i242.3.2 to i8
  %scevgep233.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %276, i64 0, i64 0, i64 3
  store i8 %conv50.i243.3.2, i8* %scevgep233.3.2, align 1
  %298 = load i8, i8* %arrayidx56.i249.2, align 1
  %conv57.i250.3.2 = zext i8 %298 to i32
  %xor58.i251.3.2 = xor i32 %conv57.i250.3.2, 1
  %conv59.i252.3.2 = trunc i32 %xor58.i251.3.2 to i8
  %scevgep230.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %275, i64 0, i64 0, i64 3
  %299 = load i8, i8* %scevgep230.3.2, align 1
  %call64.i257.3.2 = call zeroext i8 @mult(i8 zeroext %conv59.i252.3.2, i8 zeroext %299) #3
  %scevgep237.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %277, i64 0, i64 0, i64 3
  store i8 %call64.i257.3.2, i8* %scevgep237.3.2, align 1
  %300 = load i8, i8* %arrayidx70.i263.2, align 1
  %scevgep234.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %276, i64 0, i64 0, i64 3
  %301 = load i8, i8* %scevgep234.3.2, align 1
  %call75.i268.3.2 = call zeroext i8 @mult(i8 zeroext %300, i8 zeroext %301) #3
  %scevgep241.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %278, i64 0, i64 0, i64 3
  store i8 %call75.i268.3.2, i8* %scevgep241.3.2, align 1
  %scevgep238.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %277, i64 0, i64 0, i64 3
  %302 = load i8, i8* %scevgep238.3.2, align 1
  %conv84.i277.3.2 = zext i8 %302 to i32
  %scevgep242.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %278, i64 0, i64 0, i64 3
  %303 = load i8, i8* %scevgep242.3.2, align 1
  %conv89.i282.3.2 = zext i8 %303 to i32
  %xor90.i283.3.2 = xor i32 %conv84.i277.3.2, %conv89.i282.3.2
  %conv91.i284.3.2 = trunc i32 %xor90.i283.3.2 to i8
  %scevgep245.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %279, i64 0, i64 0, i64 3
  store i8 %conv91.i284.3.2, i8* %scevgep245.3.2, align 1
  %scevgep228.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %275, i64 0, i64 1, i64 0
  %304 = bitcast i8* %scevgep228.2 to [4 x [4 x i8]]*
  %scevgep232.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %276, i64 0, i64 1, i64 0
  %305 = bitcast i8* %scevgep232.2 to [4 x [4 x i8]]*
  %scevgep236.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %277, i64 0, i64 1, i64 0
  %306 = bitcast i8* %scevgep236.2 to [4 x [4 x i8]]*
  %scevgep240.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %278, i64 0, i64 1, i64 0
  %307 = bitcast i8* %scevgep240.2 to [4 x [4 x i8]]*
  %scevgep244.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %279, i64 0, i64 1, i64 0
  %308 = bitcast i8* %scevgep244.2 to [4 x [4 x i8]]*
  %arrayidx56.i249.3 = getelementptr inbounds i8, i8* %arraydecay10, i64 3
  %arrayidx70.i263.3 = getelementptr inbounds i8, i8* %arraydecay10, i64 3
  %scevgep226.3671 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 0
  %309 = load i8, i8* %scevgep226.3671, align 1
  %conv44.i236.3672 = zext i8 %309 to i32
  %scevgep229.3673 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %304, i64 0, i64 0, i64 0
  %310 = load i8, i8* %scevgep229.3673, align 1
  %conv49.i241.3674 = zext i8 %310 to i32
  %xor.i242.3675 = xor i32 %conv44.i236.3672, %conv49.i241.3674
  %conv50.i243.3676 = trunc i32 %xor.i242.3675 to i8
  %scevgep233.3677 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %305, i64 0, i64 0, i64 0
  store i8 %conv50.i243.3676, i8* %scevgep233.3677, align 1
  %311 = load i8, i8* %arrayidx56.i249.3, align 1
  %conv57.i250.3678 = zext i8 %311 to i32
  %xor58.i251.3679 = xor i32 %conv57.i250.3678, 1
  %conv59.i252.3680 = trunc i32 %xor58.i251.3679 to i8
  %scevgep230.3681 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %304, i64 0, i64 0, i64 0
  %312 = load i8, i8* %scevgep230.3681, align 1
  %call64.i257.3682 = call zeroext i8 @mult(i8 zeroext %conv59.i252.3680, i8 zeroext %312) #3
  %scevgep237.3683 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %306, i64 0, i64 0, i64 0
  store i8 %call64.i257.3682, i8* %scevgep237.3683, align 1
  %313 = load i8, i8* %arrayidx70.i263.3, align 1
  %scevgep234.3684 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %305, i64 0, i64 0, i64 0
  %314 = load i8, i8* %scevgep234.3684, align 1
  %call75.i268.3685 = call zeroext i8 @mult(i8 zeroext %313, i8 zeroext %314) #3
  %scevgep241.3686 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %307, i64 0, i64 0, i64 0
  store i8 %call75.i268.3685, i8* %scevgep241.3686, align 1
  %scevgep238.3687 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %306, i64 0, i64 0, i64 0
  %315 = load i8, i8* %scevgep238.3687, align 1
  %conv84.i277.3688 = zext i8 %315 to i32
  %scevgep242.3689 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %307, i64 0, i64 0, i64 0
  %316 = load i8, i8* %scevgep242.3689, align 1
  %conv89.i282.3690 = zext i8 %316 to i32
  %xor90.i283.3691 = xor i32 %conv84.i277.3688, %conv89.i282.3690
  %conv91.i284.3692 = trunc i32 %xor90.i283.3691 to i8
  %scevgep245.3693 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %308, i64 0, i64 0, i64 0
  store i8 %conv91.i284.3692, i8* %scevgep245.3693, align 1
  %scevgep226.1.3 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 1
  %317 = load i8, i8* %scevgep226.1.3, align 1
  %conv44.i236.1.3 = zext i8 %317 to i32
  %scevgep229.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %304, i64 0, i64 0, i64 1
  %318 = load i8, i8* %scevgep229.1.3, align 1
  %conv49.i241.1.3 = zext i8 %318 to i32
  %xor.i242.1.3 = xor i32 %conv44.i236.1.3, %conv49.i241.1.3
  %conv50.i243.1.3 = trunc i32 %xor.i242.1.3 to i8
  %scevgep233.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %305, i64 0, i64 0, i64 1
  store i8 %conv50.i243.1.3, i8* %scevgep233.1.3, align 1
  %319 = load i8, i8* %arrayidx56.i249.3, align 1
  %conv57.i250.1.3 = zext i8 %319 to i32
  %xor58.i251.1.3 = xor i32 %conv57.i250.1.3, 1
  %conv59.i252.1.3 = trunc i32 %xor58.i251.1.3 to i8
  %scevgep230.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %304, i64 0, i64 0, i64 1
  %320 = load i8, i8* %scevgep230.1.3, align 1
  %call64.i257.1.3 = call zeroext i8 @mult(i8 zeroext %conv59.i252.1.3, i8 zeroext %320) #3
  %scevgep237.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %306, i64 0, i64 0, i64 1
  store i8 %call64.i257.1.3, i8* %scevgep237.1.3, align 1
  %321 = load i8, i8* %arrayidx70.i263.3, align 1
  %scevgep234.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %305, i64 0, i64 0, i64 1
  %322 = load i8, i8* %scevgep234.1.3, align 1
  %call75.i268.1.3 = call zeroext i8 @mult(i8 zeroext %321, i8 zeroext %322) #3
  %scevgep241.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %307, i64 0, i64 0, i64 1
  store i8 %call75.i268.1.3, i8* %scevgep241.1.3, align 1
  %scevgep238.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %306, i64 0, i64 0, i64 1
  %323 = load i8, i8* %scevgep238.1.3, align 1
  %conv84.i277.1.3 = zext i8 %323 to i32
  %scevgep242.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %307, i64 0, i64 0, i64 1
  %324 = load i8, i8* %scevgep242.1.3, align 1
  %conv89.i282.1.3 = zext i8 %324 to i32
  %xor90.i283.1.3 = xor i32 %conv84.i277.1.3, %conv89.i282.1.3
  %conv91.i284.1.3 = trunc i32 %xor90.i283.1.3 to i8
  %scevgep245.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %308, i64 0, i64 0, i64 1
  store i8 %conv91.i284.1.3, i8* %scevgep245.1.3, align 1
  %scevgep226.2.3 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 2
  %325 = load i8, i8* %scevgep226.2.3, align 1
  %conv44.i236.2.3 = zext i8 %325 to i32
  %scevgep229.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %304, i64 0, i64 0, i64 2
  %326 = load i8, i8* %scevgep229.2.3, align 1
  %conv49.i241.2.3 = zext i8 %326 to i32
  %xor.i242.2.3 = xor i32 %conv44.i236.2.3, %conv49.i241.2.3
  %conv50.i243.2.3 = trunc i32 %xor.i242.2.3 to i8
  %scevgep233.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %305, i64 0, i64 0, i64 2
  store i8 %conv50.i243.2.3, i8* %scevgep233.2.3, align 1
  %327 = load i8, i8* %arrayidx56.i249.3, align 1
  %conv57.i250.2.3 = zext i8 %327 to i32
  %xor58.i251.2.3 = xor i32 %conv57.i250.2.3, 1
  %conv59.i252.2.3 = trunc i32 %xor58.i251.2.3 to i8
  %scevgep230.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %304, i64 0, i64 0, i64 2
  %328 = load i8, i8* %scevgep230.2.3, align 1
  %call64.i257.2.3 = call zeroext i8 @mult(i8 zeroext %conv59.i252.2.3, i8 zeroext %328) #3
  %scevgep237.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %306, i64 0, i64 0, i64 2
  store i8 %call64.i257.2.3, i8* %scevgep237.2.3, align 1
  %329 = load i8, i8* %arrayidx70.i263.3, align 1
  %scevgep234.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %305, i64 0, i64 0, i64 2
  %330 = load i8, i8* %scevgep234.2.3, align 1
  %call75.i268.2.3 = call zeroext i8 @mult(i8 zeroext %329, i8 zeroext %330) #3
  %scevgep241.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %307, i64 0, i64 0, i64 2
  store i8 %call75.i268.2.3, i8* %scevgep241.2.3, align 1
  %scevgep238.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %306, i64 0, i64 0, i64 2
  %331 = load i8, i8* %scevgep238.2.3, align 1
  %conv84.i277.2.3 = zext i8 %331 to i32
  %scevgep242.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %307, i64 0, i64 0, i64 2
  %332 = load i8, i8* %scevgep242.2.3, align 1
  %conv89.i282.2.3 = zext i8 %332 to i32
  %xor90.i283.2.3 = xor i32 %conv84.i277.2.3, %conv89.i282.2.3
  %conv91.i284.2.3 = trunc i32 %xor90.i283.2.3 to i8
  %scevgep245.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %308, i64 0, i64 0, i64 2
  store i8 %conv91.i284.2.3, i8* %scevgep245.2.3, align 1
  %333 = load i8, i8* %arraydecay10, align 1
  %334 = load i8, i8* %arraydecay11, align 1
  %call111.i301 = call zeroext i8 @mult(i8 zeroext %333, i8 zeroext %334) #3
  store i8 %call111.i301, i8* %arraydecay12, align 1
  %scevgep216.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 1
  %335 = load i8, i8* %scevgep216.1, align 1
  %conv126.i313.1 = zext i8 %335 to i32
  %336 = load i8, i8* %arraydecay12, align 1
  %conv129.i316.1 = zext i8 %336 to i32
  %xor130.i317.1 = xor i32 %conv129.i316.1, %conv126.i313.1
  %conv131.i318.1 = trunc i32 %xor130.i317.1 to i8
  store i8 %conv131.i318.1, i8* %arraydecay12, align 1
  %scevgep216.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 2
  %337 = load i8, i8* %scevgep216.2, align 1
  %conv126.i313.2 = zext i8 %337 to i32
  %338 = load i8, i8* %arraydecay12, align 1
  %conv129.i316.2 = zext i8 %338 to i32
  %xor130.i317.2 = xor i32 %conv129.i316.2, %conv126.i313.2
  %conv131.i318.2 = trunc i32 %xor130.i317.2 to i8
  store i8 %conv131.i318.2, i8* %arraydecay12, align 1
  %scevgep216.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 3
  %339 = load i8, i8* %scevgep216.3, align 1
  %conv126.i313.3 = zext i8 %339 to i32
  %340 = load i8, i8* %arraydecay12, align 1
  %conv129.i316.3 = zext i8 %340 to i32
  %xor130.i317.3 = xor i32 %conv129.i316.3, %conv126.i313.3
  %conv131.i318.3 = trunc i32 %xor130.i317.3 to i8
  store i8 %conv131.i318.3, i8* %arraydecay12, align 1
  %scevgep215 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 1, i64 0
  %341 = bitcast i8* %scevgep215 to [4 x [4 x i8]]*
  %arrayidx108.i298.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %342 = load i8, i8* %arrayidx108.i298.1, align 1
  %arrayidx110.i300.1 = getelementptr inbounds i8, i8* %arraydecay11, i64 1
  %343 = load i8, i8* %arrayidx110.i300.1, align 1
  %call111.i301.1 = call zeroext i8 @mult(i8 zeroext %342, i8 zeroext %343) #3
  %arrayidx113.i303.1 = getelementptr inbounds i8, i8* %arraydecay12, i64 1
  store i8 %call111.i301.1, i8* %arrayidx113.i303.1, align 1
  %arrayidx128.i315.1 = getelementptr inbounds i8, i8* %arraydecay12, i64 1
  %scevgep216.1590 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %341, i64 0, i64 0, i64 0
  %344 = load i8, i8* %scevgep216.1590, align 1
  %conv126.i313.1591 = zext i8 %344 to i32
  %345 = load i8, i8* %arrayidx128.i315.1, align 1
  %conv129.i316.1592 = zext i8 %345 to i32
  %xor130.i317.1593 = xor i32 %conv129.i316.1592, %conv126.i313.1591
  %conv131.i318.1594 = trunc i32 %xor130.i317.1593 to i8
  store i8 %conv131.i318.1594, i8* %arrayidx128.i315.1, align 1
  %scevgep216.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %341, i64 0, i64 0, i64 2
  %346 = load i8, i8* %scevgep216.2.1, align 1
  %conv126.i313.2.1 = zext i8 %346 to i32
  %347 = load i8, i8* %arrayidx128.i315.1, align 1
  %conv129.i316.2.1 = zext i8 %347 to i32
  %xor130.i317.2.1 = xor i32 %conv129.i316.2.1, %conv126.i313.2.1
  %conv131.i318.2.1 = trunc i32 %xor130.i317.2.1 to i8
  store i8 %conv131.i318.2.1, i8* %arrayidx128.i315.1, align 1
  %scevgep216.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %341, i64 0, i64 0, i64 3
  %348 = load i8, i8* %scevgep216.3.1, align 1
  %conv126.i313.3.1 = zext i8 %348 to i32
  %349 = load i8, i8* %arrayidx128.i315.1, align 1
  %conv129.i316.3.1 = zext i8 %349 to i32
  %xor130.i317.3.1 = xor i32 %conv129.i316.3.1, %conv126.i313.3.1
  %conv131.i318.3.1 = trunc i32 %xor130.i317.3.1 to i8
  store i8 %conv131.i318.3.1, i8* %arrayidx128.i315.1, align 1
  %scevgep215.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %341, i64 0, i64 1, i64 0
  %350 = bitcast i8* %scevgep215.1 to [4 x [4 x i8]]*
  %arrayidx108.i298.2 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  %351 = load i8, i8* %arrayidx108.i298.2, align 1
  %arrayidx110.i300.2 = getelementptr inbounds i8, i8* %arraydecay11, i64 2
  %352 = load i8, i8* %arrayidx110.i300.2, align 1
  %call111.i301.2 = call zeroext i8 @mult(i8 zeroext %351, i8 zeroext %352) #3
  %arrayidx113.i303.2 = getelementptr inbounds i8, i8* %arraydecay12, i64 2
  store i8 %call111.i301.2, i8* %arrayidx113.i303.2, align 1
  %arrayidx128.i315.2 = getelementptr inbounds i8, i8* %arraydecay12, i64 2
  %scevgep216.2599 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %350, i64 0, i64 0, i64 0
  %353 = load i8, i8* %scevgep216.2599, align 1
  %conv126.i313.2600 = zext i8 %353 to i32
  %354 = load i8, i8* %arrayidx128.i315.2, align 1
  %conv129.i316.2601 = zext i8 %354 to i32
  %xor130.i317.2602 = xor i32 %conv129.i316.2601, %conv126.i313.2600
  %conv131.i318.2603 = trunc i32 %xor130.i317.2602 to i8
  store i8 %conv131.i318.2603, i8* %arrayidx128.i315.2, align 1
  %scevgep216.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %350, i64 0, i64 0, i64 1
  %355 = load i8, i8* %scevgep216.1.2, align 1
  %conv126.i313.1.2 = zext i8 %355 to i32
  %356 = load i8, i8* %arrayidx128.i315.2, align 1
  %conv129.i316.1.2 = zext i8 %356 to i32
  %xor130.i317.1.2 = xor i32 %conv129.i316.1.2, %conv126.i313.1.2
  %conv131.i318.1.2 = trunc i32 %xor130.i317.1.2 to i8
  store i8 %conv131.i318.1.2, i8* %arrayidx128.i315.2, align 1
  %scevgep216.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %350, i64 0, i64 0, i64 3
  %357 = load i8, i8* %scevgep216.3.2, align 1
  %conv126.i313.3.2 = zext i8 %357 to i32
  %358 = load i8, i8* %arrayidx128.i315.2, align 1
  %conv129.i316.3.2 = zext i8 %358 to i32
  %xor130.i317.3.2 = xor i32 %conv129.i316.3.2, %conv126.i313.3.2
  %conv131.i318.3.2 = trunc i32 %xor130.i317.3.2 to i8
  store i8 %conv131.i318.3.2, i8* %arrayidx128.i315.2, align 1
  %scevgep215.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %350, i64 0, i64 1, i64 0
  %359 = bitcast i8* %scevgep215.2 to [4 x [4 x i8]]*
  %arrayidx108.i298.3 = getelementptr inbounds i8, i8* %arraydecay10, i64 3
  %360 = load i8, i8* %arrayidx108.i298.3, align 1
  %arrayidx110.i300.3 = getelementptr inbounds i8, i8* %arraydecay11, i64 3
  %361 = load i8, i8* %arrayidx110.i300.3, align 1
  %call111.i301.3 = call zeroext i8 @mult(i8 zeroext %360, i8 zeroext %361) #3
  %arrayidx113.i303.3 = getelementptr inbounds i8, i8* %arraydecay12, i64 3
  store i8 %call111.i301.3, i8* %arrayidx113.i303.3, align 1
  %arrayidx128.i315.3 = getelementptr inbounds i8, i8* %arraydecay12, i64 3
  %scevgep216.3608 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %359, i64 0, i64 0, i64 0
  %362 = load i8, i8* %scevgep216.3608, align 1
  %conv126.i313.3609 = zext i8 %362 to i32
  %363 = load i8, i8* %arrayidx128.i315.3, align 1
  %conv129.i316.3610 = zext i8 %363 to i32
  %xor130.i317.3611 = xor i32 %conv129.i316.3610, %conv126.i313.3609
  %conv131.i318.3612 = trunc i32 %xor130.i317.3611 to i8
  store i8 %conv131.i318.3612, i8* %arrayidx128.i315.3, align 1
  %scevgep216.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %359, i64 0, i64 0, i64 1
  %364 = load i8, i8* %scevgep216.1.3, align 1
  %conv126.i313.1.3 = zext i8 %364 to i32
  %365 = load i8, i8* %arrayidx128.i315.3, align 1
  %conv129.i316.1.3 = zext i8 %365 to i32
  %xor130.i317.1.3 = xor i32 %conv129.i316.1.3, %conv126.i313.1.3
  %conv131.i318.1.3 = trunc i32 %xor130.i317.1.3 to i8
  store i8 %conv131.i318.1.3, i8* %arrayidx128.i315.3, align 1
  %scevgep216.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %359, i64 0, i64 0, i64 2
  %366 = load i8, i8* %scevgep216.2.3, align 1
  %conv126.i313.2.3 = zext i8 %366 to i32
  %367 = load i8, i8* %arrayidx128.i315.3, align 1
  %conv129.i316.2.3 = zext i8 %367 to i32
  %xor130.i317.2.3 = xor i32 %conv129.i316.2.3, %conv126.i313.2.3
  %conv131.i318.2.3 = trunc i32 %xor130.i317.2.3 to i8
  store i8 %conv131.i318.2.3, i8* %arrayidx128.i315.3, align 1
  %call139.i324 = call zeroext i8 @mult(i8 zeroext %call.i171, i8 zeroext %call1.i172) #3
  %conv140.i325 = zext i8 %call139.i324 to i32
  %scevgep206 = getelementptr [4 x i8], [4 x i8]* %v, i64 0, i64 0
  %368 = load i8, i8* %scevgep206, align 1
  %scevgep206.1 = getelementptr [4 x i8], [4 x i8]* %v, i64 0, i64 1
  %369 = load i8, i8* %scevgep206.1, align 1
  %conv.i.i172.i332.1 = zext i8 %369 to i32
  %conv1.i.i173.i333.1 = zext i8 %368 to i32
  %xor.i.i174.i334.1 = xor i32 %conv1.i.i173.i333.1, %conv.i.i172.i332.1
  %conv2.i.i175.i335.1 = trunc i32 %xor.i.i174.i334.1 to i8
  %scevgep206.2 = getelementptr [4 x i8], [4 x i8]* %v, i64 0, i64 2
  %370 = load i8, i8* %scevgep206.2, align 1
  %conv.i.i172.i332.2 = zext i8 %370 to i32
  %conv1.i.i173.i333.2 = zext i8 %conv2.i.i175.i335.1 to i32
  %xor.i.i174.i334.2 = xor i32 %conv1.i.i173.i333.2, %conv.i.i172.i332.2
  %conv2.i.i175.i335.2 = trunc i32 %xor.i.i174.i334.2 to i8
  %scevgep206.3 = getelementptr [4 x i8], [4 x i8]* %v, i64 0, i64 3
  %371 = load i8, i8* %scevgep206.3, align 1
  %conv.i.i172.i332.3 = zext i8 %371 to i32
  %conv1.i.i173.i333.3 = zext i8 %conv2.i.i175.i335.2 to i32
  %xor.i.i174.i334.3 = xor i32 %conv1.i.i173.i333.3, %conv.i.i172.i332.3
  %conv2.i.i175.i335.3 = trunc i32 %xor.i.i174.i334.3 to i8
  %conv142.i338 = zext i8 %conv2.i.i175.i335.3 to i32
  %cmp143.i339 = icmp eq i32 %conv140.i325, %conv142.i338
  call void @assert(i1 zeroext %cmp143.i339) #3
  %scevgep201 = getelementptr [4 x i8], [4 x i8]* %v, i64 0, i64 0
  %372 = load i8, i8* %scevgep201, align 1
  %call.i349 = call zeroext i8 @exp16(i8 zeroext %372) #3
  %scevgep202 = getelementptr [4 x i8], [4 x i8]* %v, i64 0, i64 0
  store i8 %call.i349, i8* %scevgep202, align 1
  %scevgep201.1 = getelementptr [4 x i8], [4 x i8]* %v, i64 0, i64 1
  %373 = load i8, i8* %scevgep201.1, align 1
  %call.i349.1 = call zeroext i8 @exp16(i8 zeroext %373) #3
  %scevgep202.1 = getelementptr [4 x i8], [4 x i8]* %v, i64 0, i64 1
  store i8 %call.i349.1, i8* %scevgep202.1, align 1
  %scevgep201.2 = getelementptr [4 x i8], [4 x i8]* %v, i64 0, i64 2
  %374 = load i8, i8* %scevgep201.2, align 1
  %call.i349.2 = call zeroext i8 @exp16(i8 zeroext %374) #3
  %scevgep202.2 = getelementptr [4 x i8], [4 x i8]* %v, i64 0, i64 2
  store i8 %call.i349.2, i8* %scevgep202.2, align 1
  %scevgep201.3 = getelementptr [4 x i8], [4 x i8]* %v, i64 0, i64 3
  %375 = load i8, i8* %scevgep201.3, align 1
  %call.i349.3 = call zeroext i8 @exp16(i8 zeroext %375) #3
  %scevgep202.3 = getelementptr [4 x i8], [4 x i8]* %v, i64 0, i64 3
  store i8 %call.i349.3, i8* %scevgep202.3, align 1
  %arraydecay15 = getelementptr inbounds [4 x i8], [4 x i8]* %v, i64 0, i64 0
  %arraydecay16 = getelementptr inbounds [4 x i8], [4 x i8]* %w, i64 0, i64 0
  %arraydecay17 = getelementptr inbounds [4 x i8], [4 x i8]* %m, i64 0, i64 0
  %call.i387 = call zeroext i8 (...) @rand() #3
  %call1.i388 = call zeroext i8 (...) @rand() #3
  %conv.i389 = zext i8 %call.i387 to i32
  %scevgep197 = getelementptr [4 x i8], [4 x i8]* %v, i64 0, i64 0
  %376 = load i8, i8* %scevgep197, align 1
  %scevgep197.1 = getelementptr [4 x i8], [4 x i8]* %v, i64 0, i64 1
  %377 = load i8, i8* %scevgep197.1, align 1
  %conv.i.i.i395.1 = zext i8 %377 to i32
  %conv1.i.i.i396.1 = zext i8 %376 to i32
  %xor.i.i.i397.1 = xor i32 %conv1.i.i.i396.1, %conv.i.i.i395.1
  %conv2.i.i.i398.1 = trunc i32 %xor.i.i.i397.1 to i8
  %scevgep197.2 = getelementptr [4 x i8], [4 x i8]* %v, i64 0, i64 2
  %378 = load i8, i8* %scevgep197.2, align 1
  %conv.i.i.i395.2 = zext i8 %378 to i32
  %conv1.i.i.i396.2 = zext i8 %conv2.i.i.i398.1 to i32
  %xor.i.i.i397.2 = xor i32 %conv1.i.i.i396.2, %conv.i.i.i395.2
  %conv2.i.i.i398.2 = trunc i32 %xor.i.i.i397.2 to i8
  %scevgep197.3 = getelementptr [4 x i8], [4 x i8]* %v, i64 0, i64 3
  %379 = load i8, i8* %scevgep197.3, align 1
  %conv.i.i.i395.3 = zext i8 %379 to i32
  %conv1.i.i.i396.3 = zext i8 %conv2.i.i.i398.2 to i32
  %xor.i.i.i397.3 = xor i32 %conv1.i.i.i396.3, %conv.i.i.i395.3
  %conv2.i.i.i398.3 = trunc i32 %xor.i.i.i397.3 to i8
  %conv3.i401 = zext i8 %conv2.i.i.i398.3 to i32
  %cmp.i402 = icmp eq i32 %conv.i389, %conv3.i401
  call void @assume(i1 zeroext %cmp.i402) #3
  %conv5.i403 = zext i8 %call1.i388 to i32
  %scevgep193 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 0
  %380 = load i8, i8* %scevgep193, align 1
  %scevgep193.1 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 1
  %381 = load i8, i8* %scevgep193.1, align 1
  %conv.i.i155.i410.1 = zext i8 %381 to i32
  %conv1.i.i156.i411.1 = zext i8 %380 to i32
  %xor.i.i157.i412.1 = xor i32 %conv1.i.i156.i411.1, %conv.i.i155.i410.1
  %conv2.i.i158.i413.1 = trunc i32 %xor.i.i157.i412.1 to i8
  %scevgep193.2 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 2
  %382 = load i8, i8* %scevgep193.2, align 1
  %conv.i.i155.i410.2 = zext i8 %382 to i32
  %conv1.i.i156.i411.2 = zext i8 %conv2.i.i158.i413.1 to i32
  %xor.i.i157.i412.2 = xor i32 %conv1.i.i156.i411.2, %conv.i.i155.i410.2
  %conv2.i.i158.i413.2 = trunc i32 %xor.i.i157.i412.2 to i8
  %scevgep193.3 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 3
  %383 = load i8, i8* %scevgep193.3, align 1
  %conv.i.i155.i410.3 = zext i8 %383 to i32
  %conv1.i.i156.i411.3 = zext i8 %conv2.i.i158.i413.2 to i32
  %xor.i.i157.i412.3 = xor i32 %conv1.i.i156.i411.3, %conv.i.i155.i410.3
  %conv2.i.i158.i413.3 = trunc i32 %xor.i.i157.i412.3 to i8
  %conv7.i416 = zext i8 %conv2.i.i158.i413.3 to i32
  %cmp8.i417 = icmp eq i32 %conv5.i403, %conv7.i416
  call void @assume(i1 zeroext %cmp8.i417) #3
  %call16.i425 = call zeroext i8 (...) @rand() #3
  %scevgep183 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i425, i8* %scevgep183, align 1
  %scevgep184 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %384 = load i8, i8* %scevgep184, align 1
  %scevgep185 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %384, i8* %scevgep185, align 1
  %call16.i425.1810 = call zeroext i8 (...) @rand() #3
  %scevgep183.1811 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  store i8 %call16.i425.1810, i8* %scevgep183.1811, align 1
  %scevgep184.1812 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %385 = load i8, i8* %scevgep184.1812, align 1
  %scevgep185.1813 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 2, i64 0
  store i8 %385, i8* %scevgep185.1813, align 1
  %call16.i425.2815 = call zeroext i8 (...) @rand() #3
  %scevgep183.2816 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  store i8 %call16.i425.2815, i8* %scevgep183.2816, align 1
  %scevgep184.2817 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %386 = load i8, i8* %scevgep184.2817, align 1
  %scevgep185.2818 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 3, i64 0
  store i8 %386, i8* %scevgep185.2818, align 1
  %scevgep180 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 1
  %387 = bitcast i8* %scevgep180 to [4 x [4 x i8]]*
  %call16.i425.1 = call zeroext i8 (...) @rand() #3
  %scevgep183.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %387, i64 0, i64 0, i64 1
  store i8 %call16.i425.1, i8* %scevgep183.1, align 1
  %scevgep184.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %387, i64 0, i64 0, i64 1
  %388 = load i8, i8* %scevgep184.1, align 1
  %scevgep185.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %387, i64 0, i64 1, i64 0
  store i8 %388, i8* %scevgep185.1, align 1
  %call16.i425.1.1 = call zeroext i8 (...) @rand() #3
  %scevgep183.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %387, i64 0, i64 0, i64 2
  store i8 %call16.i425.1.1, i8* %scevgep183.1.1, align 1
  %scevgep184.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %387, i64 0, i64 0, i64 2
  %389 = load i8, i8* %scevgep184.1.1, align 1
  %scevgep185.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %387, i64 0, i64 2, i64 0
  store i8 %389, i8* %scevgep185.1.1, align 1
  %scevgep180.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %387, i64 0, i64 1, i64 1
  %390 = bitcast i8* %scevgep180.1 to [4 x [4 x i8]]*
  %call16.i425.2 = call zeroext i8 (...) @rand() #3
  %scevgep183.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %390, i64 0, i64 0, i64 1
  store i8 %call16.i425.2, i8* %scevgep183.2, align 1
  %scevgep184.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %390, i64 0, i64 0, i64 1
  %391 = load i8, i8* %scevgep184.2, align 1
  %scevgep185.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %390, i64 0, i64 1, i64 0
  store i8 %391, i8* %scevgep185.2, align 1
  %scevgep156.1 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 1
  %392 = load i8, i8* %scevgep156.1, align 1
  %conv44.i452.1 = zext i8 %392 to i32
  %scevgep159.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %393 = load i8, i8* %scevgep159.1, align 1
  %conv49.i457.1 = zext i8 %393 to i32
  %xor.i458.1 = xor i32 %conv44.i452.1, %conv49.i457.1
  %conv50.i459.1 = trunc i32 %xor.i458.1 to i8
  %scevgep163.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i459.1, i8* %scevgep163.1, align 1
  %394 = load i8, i8* %arraydecay15, align 1
  %conv57.i466.1 = zext i8 %394 to i32
  %xor58.i467.1 = xor i32 %conv57.i466.1, 1
  %conv59.i468.1 = trunc i32 %xor58.i467.1 to i8
  %scevgep160.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %395 = load i8, i8* %scevgep160.1, align 1
  %call64.i473.1 = call zeroext i8 @mult(i8 zeroext %conv59.i468.1, i8 zeroext %395) #3
  %scevgep167.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i473.1, i8* %scevgep167.1, align 1
  %396 = load i8, i8* %arraydecay15, align 1
  %scevgep164.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 1
  %397 = load i8, i8* %scevgep164.1, align 1
  %call75.i484.1 = call zeroext i8 @mult(i8 zeroext %396, i8 zeroext %397) #3
  %scevgep171.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i484.1, i8* %scevgep171.1, align 1
  %scevgep168.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %398 = load i8, i8* %scevgep168.1, align 1
  %conv84.i493.1 = zext i8 %398 to i32
  %scevgep172.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %399 = load i8, i8* %scevgep172.1, align 1
  %conv89.i498.1 = zext i8 %399 to i32
  %xor90.i499.1 = xor i32 %conv84.i493.1, %conv89.i498.1
  %conv91.i500.1 = trunc i32 %xor90.i499.1 to i8
  %scevgep175.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i500.1, i8* %scevgep175.1, align 1
  %scevgep156.2 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 2
  %400 = load i8, i8* %scevgep156.2, align 1
  %conv44.i452.2 = zext i8 %400 to i32
  %scevgep159.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %401 = load i8, i8* %scevgep159.2, align 1
  %conv49.i457.2 = zext i8 %401 to i32
  %xor.i458.2 = xor i32 %conv44.i452.2, %conv49.i457.2
  %conv50.i459.2 = trunc i32 %xor.i458.2 to i8
  %scevgep163.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 2
  store i8 %conv50.i459.2, i8* %scevgep163.2, align 1
  %402 = load i8, i8* %arraydecay15, align 1
  %conv57.i466.2 = zext i8 %402 to i32
  %xor58.i467.2 = xor i32 %conv57.i466.2, 1
  %conv59.i468.2 = trunc i32 %xor58.i467.2 to i8
  %scevgep160.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %403 = load i8, i8* %scevgep160.2, align 1
  %call64.i473.2 = call zeroext i8 @mult(i8 zeroext %conv59.i468.2, i8 zeroext %403) #3
  %scevgep167.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 2
  store i8 %call64.i473.2, i8* %scevgep167.2, align 1
  %404 = load i8, i8* %arraydecay15, align 1
  %scevgep164.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 2
  %405 = load i8, i8* %scevgep164.2, align 1
  %call75.i484.2 = call zeroext i8 @mult(i8 zeroext %404, i8 zeroext %405) #3
  %scevgep171.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 2
  store i8 %call75.i484.2, i8* %scevgep171.2, align 1
  %scevgep168.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 2
  %406 = load i8, i8* %scevgep168.2, align 1
  %conv84.i493.2 = zext i8 %406 to i32
  %scevgep172.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 2
  %407 = load i8, i8* %scevgep172.2, align 1
  %conv89.i498.2 = zext i8 %407 to i32
  %xor90.i499.2 = xor i32 %conv84.i493.2, %conv89.i498.2
  %conv91.i500.2 = trunc i32 %xor90.i499.2 to i8
  %scevgep175.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 2
  store i8 %conv91.i500.2, i8* %scevgep175.2, align 1
  %scevgep156.3 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 3
  %408 = load i8, i8* %scevgep156.3, align 1
  %conv44.i452.3 = zext i8 %408 to i32
  %scevgep159.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %409 = load i8, i8* %scevgep159.3, align 1
  %conv49.i457.3 = zext i8 %409 to i32
  %xor.i458.3 = xor i32 %conv44.i452.3, %conv49.i457.3
  %conv50.i459.3 = trunc i32 %xor.i458.3 to i8
  %scevgep163.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 3
  store i8 %conv50.i459.3, i8* %scevgep163.3, align 1
  %410 = load i8, i8* %arraydecay15, align 1
  %conv57.i466.3 = zext i8 %410 to i32
  %xor58.i467.3 = xor i32 %conv57.i466.3, 1
  %conv59.i468.3 = trunc i32 %xor58.i467.3 to i8
  %scevgep160.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %411 = load i8, i8* %scevgep160.3, align 1
  %call64.i473.3 = call zeroext i8 @mult(i8 zeroext %conv59.i468.3, i8 zeroext %411) #3
  %scevgep167.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 3
  store i8 %call64.i473.3, i8* %scevgep167.3, align 1
  %412 = load i8, i8* %arraydecay15, align 1
  %scevgep164.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 3
  %413 = load i8, i8* %scevgep164.3, align 1
  %call75.i484.3 = call zeroext i8 @mult(i8 zeroext %412, i8 zeroext %413) #3
  %scevgep171.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 3
  store i8 %call75.i484.3, i8* %scevgep171.3, align 1
  %scevgep168.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 3
  %414 = load i8, i8* %scevgep168.3, align 1
  %conv84.i493.3 = zext i8 %414 to i32
  %scevgep172.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 3
  %415 = load i8, i8* %scevgep172.3, align 1
  %conv89.i498.3 = zext i8 %415 to i32
  %xor90.i499.3 = xor i32 %conv84.i493.3, %conv89.i498.3
  %conv91.i500.3 = trunc i32 %xor90.i499.3 to i8
  %scevgep175.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 3
  store i8 %conv91.i500.3, i8* %scevgep175.3, align 1
  %scevgep158 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  %416 = bitcast i8* %scevgep158 to [4 x [4 x i8]]*
  %scevgep162 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 1, i64 0
  %417 = bitcast i8* %scevgep162 to [4 x [4 x i8]]*
  %scevgep166 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %418 = bitcast i8* %scevgep166 to [4 x [4 x i8]]*
  %scevgep170 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %419 = bitcast i8* %scevgep170 to [4 x [4 x i8]]*
  %scevgep174 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 1, i64 0
  %420 = bitcast i8* %scevgep174 to [4 x [4 x i8]]*
  %arrayidx56.i465.1 = getelementptr inbounds i8, i8* %arraydecay15, i64 1
  %arrayidx70.i479.1 = getelementptr inbounds i8, i8* %arraydecay15, i64 1
  %scevgep156.1509 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 0
  %421 = load i8, i8* %scevgep156.1509, align 1
  %conv44.i452.1510 = zext i8 %421 to i32
  %scevgep159.1511 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %416, i64 0, i64 0, i64 0
  %422 = load i8, i8* %scevgep159.1511, align 1
  %conv49.i457.1512 = zext i8 %422 to i32
  %xor.i458.1513 = xor i32 %conv44.i452.1510, %conv49.i457.1512
  %conv50.i459.1514 = trunc i32 %xor.i458.1513 to i8
  %scevgep163.1515 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %417, i64 0, i64 0, i64 0
  store i8 %conv50.i459.1514, i8* %scevgep163.1515, align 1
  %423 = load i8, i8* %arrayidx56.i465.1, align 1
  %conv57.i466.1516 = zext i8 %423 to i32
  %xor58.i467.1517 = xor i32 %conv57.i466.1516, 1
  %conv59.i468.1518 = trunc i32 %xor58.i467.1517 to i8
  %scevgep160.1519 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %416, i64 0, i64 0, i64 0
  %424 = load i8, i8* %scevgep160.1519, align 1
  %call64.i473.1520 = call zeroext i8 @mult(i8 zeroext %conv59.i468.1518, i8 zeroext %424) #3
  %scevgep167.1521 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %418, i64 0, i64 0, i64 0
  store i8 %call64.i473.1520, i8* %scevgep167.1521, align 1
  %425 = load i8, i8* %arrayidx70.i479.1, align 1
  %scevgep164.1522 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %417, i64 0, i64 0, i64 0
  %426 = load i8, i8* %scevgep164.1522, align 1
  %call75.i484.1523 = call zeroext i8 @mult(i8 zeroext %425, i8 zeroext %426) #3
  %scevgep171.1524 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %419, i64 0, i64 0, i64 0
  store i8 %call75.i484.1523, i8* %scevgep171.1524, align 1
  %scevgep168.1525 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %418, i64 0, i64 0, i64 0
  %427 = load i8, i8* %scevgep168.1525, align 1
  %conv84.i493.1526 = zext i8 %427 to i32
  %scevgep172.1527 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %419, i64 0, i64 0, i64 0
  %428 = load i8, i8* %scevgep172.1527, align 1
  %conv89.i498.1528 = zext i8 %428 to i32
  %xor90.i499.1529 = xor i32 %conv84.i493.1526, %conv89.i498.1528
  %conv91.i500.1530 = trunc i32 %xor90.i499.1529 to i8
  %scevgep175.1531 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %420, i64 0, i64 0, i64 0
  store i8 %conv91.i500.1530, i8* %scevgep175.1531, align 1
  %scevgep156.2.1 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 2
  %429 = load i8, i8* %scevgep156.2.1, align 1
  %conv44.i452.2.1 = zext i8 %429 to i32
  %scevgep159.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %416, i64 0, i64 0, i64 2
  %430 = load i8, i8* %scevgep159.2.1, align 1
  %conv49.i457.2.1 = zext i8 %430 to i32
  %xor.i458.2.1 = xor i32 %conv44.i452.2.1, %conv49.i457.2.1
  %conv50.i459.2.1 = trunc i32 %xor.i458.2.1 to i8
  %scevgep163.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %417, i64 0, i64 0, i64 2
  store i8 %conv50.i459.2.1, i8* %scevgep163.2.1, align 1
  %431 = load i8, i8* %arrayidx56.i465.1, align 1
  %conv57.i466.2.1 = zext i8 %431 to i32
  %xor58.i467.2.1 = xor i32 %conv57.i466.2.1, 1
  %conv59.i468.2.1 = trunc i32 %xor58.i467.2.1 to i8
  %scevgep160.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %416, i64 0, i64 0, i64 2
  %432 = load i8, i8* %scevgep160.2.1, align 1
  %call64.i473.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i468.2.1, i8 zeroext %432) #3
  %scevgep167.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %418, i64 0, i64 0, i64 2
  store i8 %call64.i473.2.1, i8* %scevgep167.2.1, align 1
  %433 = load i8, i8* %arrayidx70.i479.1, align 1
  %scevgep164.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %417, i64 0, i64 0, i64 2
  %434 = load i8, i8* %scevgep164.2.1, align 1
  %call75.i484.2.1 = call zeroext i8 @mult(i8 zeroext %433, i8 zeroext %434) #3
  %scevgep171.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %419, i64 0, i64 0, i64 2
  store i8 %call75.i484.2.1, i8* %scevgep171.2.1, align 1
  %scevgep168.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %418, i64 0, i64 0, i64 2
  %435 = load i8, i8* %scevgep168.2.1, align 1
  %conv84.i493.2.1 = zext i8 %435 to i32
  %scevgep172.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %419, i64 0, i64 0, i64 2
  %436 = load i8, i8* %scevgep172.2.1, align 1
  %conv89.i498.2.1 = zext i8 %436 to i32
  %xor90.i499.2.1 = xor i32 %conv84.i493.2.1, %conv89.i498.2.1
  %conv91.i500.2.1 = trunc i32 %xor90.i499.2.1 to i8
  %scevgep175.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %420, i64 0, i64 0, i64 2
  store i8 %conv91.i500.2.1, i8* %scevgep175.2.1, align 1
  %scevgep156.3.1 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 3
  %437 = load i8, i8* %scevgep156.3.1, align 1
  %conv44.i452.3.1 = zext i8 %437 to i32
  %scevgep159.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %416, i64 0, i64 0, i64 3
  %438 = load i8, i8* %scevgep159.3.1, align 1
  %conv49.i457.3.1 = zext i8 %438 to i32
  %xor.i458.3.1 = xor i32 %conv44.i452.3.1, %conv49.i457.3.1
  %conv50.i459.3.1 = trunc i32 %xor.i458.3.1 to i8
  %scevgep163.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %417, i64 0, i64 0, i64 3
  store i8 %conv50.i459.3.1, i8* %scevgep163.3.1, align 1
  %439 = load i8, i8* %arrayidx56.i465.1, align 1
  %conv57.i466.3.1 = zext i8 %439 to i32
  %xor58.i467.3.1 = xor i32 %conv57.i466.3.1, 1
  %conv59.i468.3.1 = trunc i32 %xor58.i467.3.1 to i8
  %scevgep160.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %416, i64 0, i64 0, i64 3
  %440 = load i8, i8* %scevgep160.3.1, align 1
  %call64.i473.3.1 = call zeroext i8 @mult(i8 zeroext %conv59.i468.3.1, i8 zeroext %440) #3
  %scevgep167.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %418, i64 0, i64 0, i64 3
  store i8 %call64.i473.3.1, i8* %scevgep167.3.1, align 1
  %441 = load i8, i8* %arrayidx70.i479.1, align 1
  %scevgep164.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %417, i64 0, i64 0, i64 3
  %442 = load i8, i8* %scevgep164.3.1, align 1
  %call75.i484.3.1 = call zeroext i8 @mult(i8 zeroext %441, i8 zeroext %442) #3
  %scevgep171.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %419, i64 0, i64 0, i64 3
  store i8 %call75.i484.3.1, i8* %scevgep171.3.1, align 1
  %scevgep168.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %418, i64 0, i64 0, i64 3
  %443 = load i8, i8* %scevgep168.3.1, align 1
  %conv84.i493.3.1 = zext i8 %443 to i32
  %scevgep172.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %419, i64 0, i64 0, i64 3
  %444 = load i8, i8* %scevgep172.3.1, align 1
  %conv89.i498.3.1 = zext i8 %444 to i32
  %xor90.i499.3.1 = xor i32 %conv84.i493.3.1, %conv89.i498.3.1
  %conv91.i500.3.1 = trunc i32 %xor90.i499.3.1 to i8
  %scevgep175.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %420, i64 0, i64 0, i64 3
  store i8 %conv91.i500.3.1, i8* %scevgep175.3.1, align 1
  %scevgep158.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %416, i64 0, i64 1, i64 0
  %445 = bitcast i8* %scevgep158.1 to [4 x [4 x i8]]*
  %scevgep162.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %417, i64 0, i64 1, i64 0
  %446 = bitcast i8* %scevgep162.1 to [4 x [4 x i8]]*
  %scevgep166.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %418, i64 0, i64 1, i64 0
  %447 = bitcast i8* %scevgep166.1 to [4 x [4 x i8]]*
  %scevgep170.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %419, i64 0, i64 1, i64 0
  %448 = bitcast i8* %scevgep170.1 to [4 x [4 x i8]]*
  %scevgep174.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %420, i64 0, i64 1, i64 0
  %449 = bitcast i8* %scevgep174.1 to [4 x [4 x i8]]*
  %arrayidx56.i465.2 = getelementptr inbounds i8, i8* %arraydecay15, i64 2
  %arrayidx70.i479.2 = getelementptr inbounds i8, i8* %arraydecay15, i64 2
  %scevgep156.2536 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 0
  %450 = load i8, i8* %scevgep156.2536, align 1
  %conv44.i452.2537 = zext i8 %450 to i32
  %scevgep159.2538 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %445, i64 0, i64 0, i64 0
  %451 = load i8, i8* %scevgep159.2538, align 1
  %conv49.i457.2539 = zext i8 %451 to i32
  %xor.i458.2540 = xor i32 %conv44.i452.2537, %conv49.i457.2539
  %conv50.i459.2541 = trunc i32 %xor.i458.2540 to i8
  %scevgep163.2542 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %446, i64 0, i64 0, i64 0
  store i8 %conv50.i459.2541, i8* %scevgep163.2542, align 1
  %452 = load i8, i8* %arrayidx56.i465.2, align 1
  %conv57.i466.2543 = zext i8 %452 to i32
  %xor58.i467.2544 = xor i32 %conv57.i466.2543, 1
  %conv59.i468.2545 = trunc i32 %xor58.i467.2544 to i8
  %scevgep160.2546 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %445, i64 0, i64 0, i64 0
  %453 = load i8, i8* %scevgep160.2546, align 1
  %call64.i473.2547 = call zeroext i8 @mult(i8 zeroext %conv59.i468.2545, i8 zeroext %453) #3
  %scevgep167.2548 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %447, i64 0, i64 0, i64 0
  store i8 %call64.i473.2547, i8* %scevgep167.2548, align 1
  %454 = load i8, i8* %arrayidx70.i479.2, align 1
  %scevgep164.2549 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %446, i64 0, i64 0, i64 0
  %455 = load i8, i8* %scevgep164.2549, align 1
  %call75.i484.2550 = call zeroext i8 @mult(i8 zeroext %454, i8 zeroext %455) #3
  %scevgep171.2551 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %448, i64 0, i64 0, i64 0
  store i8 %call75.i484.2550, i8* %scevgep171.2551, align 1
  %scevgep168.2552 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %447, i64 0, i64 0, i64 0
  %456 = load i8, i8* %scevgep168.2552, align 1
  %conv84.i493.2553 = zext i8 %456 to i32
  %scevgep172.2554 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %448, i64 0, i64 0, i64 0
  %457 = load i8, i8* %scevgep172.2554, align 1
  %conv89.i498.2555 = zext i8 %457 to i32
  %xor90.i499.2556 = xor i32 %conv84.i493.2553, %conv89.i498.2555
  %conv91.i500.2557 = trunc i32 %xor90.i499.2556 to i8
  %scevgep175.2558 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %449, i64 0, i64 0, i64 0
  store i8 %conv91.i500.2557, i8* %scevgep175.2558, align 1
  %scevgep156.1.2 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 1
  %458 = load i8, i8* %scevgep156.1.2, align 1
  %conv44.i452.1.2 = zext i8 %458 to i32
  %scevgep159.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %445, i64 0, i64 0, i64 1
  %459 = load i8, i8* %scevgep159.1.2, align 1
  %conv49.i457.1.2 = zext i8 %459 to i32
  %xor.i458.1.2 = xor i32 %conv44.i452.1.2, %conv49.i457.1.2
  %conv50.i459.1.2 = trunc i32 %xor.i458.1.2 to i8
  %scevgep163.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %446, i64 0, i64 0, i64 1
  store i8 %conv50.i459.1.2, i8* %scevgep163.1.2, align 1
  %460 = load i8, i8* %arrayidx56.i465.2, align 1
  %conv57.i466.1.2 = zext i8 %460 to i32
  %xor58.i467.1.2 = xor i32 %conv57.i466.1.2, 1
  %conv59.i468.1.2 = trunc i32 %xor58.i467.1.2 to i8
  %scevgep160.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %445, i64 0, i64 0, i64 1
  %461 = load i8, i8* %scevgep160.1.2, align 1
  %call64.i473.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i468.1.2, i8 zeroext %461) #3
  %scevgep167.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %447, i64 0, i64 0, i64 1
  store i8 %call64.i473.1.2, i8* %scevgep167.1.2, align 1
  %462 = load i8, i8* %arrayidx70.i479.2, align 1
  %scevgep164.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %446, i64 0, i64 0, i64 1
  %463 = load i8, i8* %scevgep164.1.2, align 1
  %call75.i484.1.2 = call zeroext i8 @mult(i8 zeroext %462, i8 zeroext %463) #3
  %scevgep171.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %448, i64 0, i64 0, i64 1
  store i8 %call75.i484.1.2, i8* %scevgep171.1.2, align 1
  %scevgep168.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %447, i64 0, i64 0, i64 1
  %464 = load i8, i8* %scevgep168.1.2, align 1
  %conv84.i493.1.2 = zext i8 %464 to i32
  %scevgep172.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %448, i64 0, i64 0, i64 1
  %465 = load i8, i8* %scevgep172.1.2, align 1
  %conv89.i498.1.2 = zext i8 %465 to i32
  %xor90.i499.1.2 = xor i32 %conv84.i493.1.2, %conv89.i498.1.2
  %conv91.i500.1.2 = trunc i32 %xor90.i499.1.2 to i8
  %scevgep175.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %449, i64 0, i64 0, i64 1
  store i8 %conv91.i500.1.2, i8* %scevgep175.1.2, align 1
  %scevgep156.3.2 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 3
  %466 = load i8, i8* %scevgep156.3.2, align 1
  %conv44.i452.3.2 = zext i8 %466 to i32
  %scevgep159.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %445, i64 0, i64 0, i64 3
  %467 = load i8, i8* %scevgep159.3.2, align 1
  %conv49.i457.3.2 = zext i8 %467 to i32
  %xor.i458.3.2 = xor i32 %conv44.i452.3.2, %conv49.i457.3.2
  %conv50.i459.3.2 = trunc i32 %xor.i458.3.2 to i8
  %scevgep163.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %446, i64 0, i64 0, i64 3
  store i8 %conv50.i459.3.2, i8* %scevgep163.3.2, align 1
  %468 = load i8, i8* %arrayidx56.i465.2, align 1
  %conv57.i466.3.2 = zext i8 %468 to i32
  %xor58.i467.3.2 = xor i32 %conv57.i466.3.2, 1
  %conv59.i468.3.2 = trunc i32 %xor58.i467.3.2 to i8
  %scevgep160.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %445, i64 0, i64 0, i64 3
  %469 = load i8, i8* %scevgep160.3.2, align 1
  %call64.i473.3.2 = call zeroext i8 @mult(i8 zeroext %conv59.i468.3.2, i8 zeroext %469) #3
  %scevgep167.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %447, i64 0, i64 0, i64 3
  store i8 %call64.i473.3.2, i8* %scevgep167.3.2, align 1
  %470 = load i8, i8* %arrayidx70.i479.2, align 1
  %scevgep164.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %446, i64 0, i64 0, i64 3
  %471 = load i8, i8* %scevgep164.3.2, align 1
  %call75.i484.3.2 = call zeroext i8 @mult(i8 zeroext %470, i8 zeroext %471) #3
  %scevgep171.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %448, i64 0, i64 0, i64 3
  store i8 %call75.i484.3.2, i8* %scevgep171.3.2, align 1
  %scevgep168.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %447, i64 0, i64 0, i64 3
  %472 = load i8, i8* %scevgep168.3.2, align 1
  %conv84.i493.3.2 = zext i8 %472 to i32
  %scevgep172.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %448, i64 0, i64 0, i64 3
  %473 = load i8, i8* %scevgep172.3.2, align 1
  %conv89.i498.3.2 = zext i8 %473 to i32
  %xor90.i499.3.2 = xor i32 %conv84.i493.3.2, %conv89.i498.3.2
  %conv91.i500.3.2 = trunc i32 %xor90.i499.3.2 to i8
  %scevgep175.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %449, i64 0, i64 0, i64 3
  store i8 %conv91.i500.3.2, i8* %scevgep175.3.2, align 1
  %scevgep158.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %445, i64 0, i64 1, i64 0
  %474 = bitcast i8* %scevgep158.2 to [4 x [4 x i8]]*
  %scevgep162.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %446, i64 0, i64 1, i64 0
  %475 = bitcast i8* %scevgep162.2 to [4 x [4 x i8]]*
  %scevgep166.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %447, i64 0, i64 1, i64 0
  %476 = bitcast i8* %scevgep166.2 to [4 x [4 x i8]]*
  %scevgep170.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %448, i64 0, i64 1, i64 0
  %477 = bitcast i8* %scevgep170.2 to [4 x [4 x i8]]*
  %scevgep174.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %449, i64 0, i64 1, i64 0
  %478 = bitcast i8* %scevgep174.2 to [4 x [4 x i8]]*
  %arrayidx56.i465.3 = getelementptr inbounds i8, i8* %arraydecay15, i64 3
  %arrayidx70.i479.3 = getelementptr inbounds i8, i8* %arraydecay15, i64 3
  %scevgep156.3563 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 0
  %479 = load i8, i8* %scevgep156.3563, align 1
  %conv44.i452.3564 = zext i8 %479 to i32
  %scevgep159.3565 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %474, i64 0, i64 0, i64 0
  %480 = load i8, i8* %scevgep159.3565, align 1
  %conv49.i457.3566 = zext i8 %480 to i32
  %xor.i458.3567 = xor i32 %conv44.i452.3564, %conv49.i457.3566
  %conv50.i459.3568 = trunc i32 %xor.i458.3567 to i8
  %scevgep163.3569 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %475, i64 0, i64 0, i64 0
  store i8 %conv50.i459.3568, i8* %scevgep163.3569, align 1
  %481 = load i8, i8* %arrayidx56.i465.3, align 1
  %conv57.i466.3570 = zext i8 %481 to i32
  %xor58.i467.3571 = xor i32 %conv57.i466.3570, 1
  %conv59.i468.3572 = trunc i32 %xor58.i467.3571 to i8
  %scevgep160.3573 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %474, i64 0, i64 0, i64 0
  %482 = load i8, i8* %scevgep160.3573, align 1
  %call64.i473.3574 = call zeroext i8 @mult(i8 zeroext %conv59.i468.3572, i8 zeroext %482) #3
  %scevgep167.3575 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %476, i64 0, i64 0, i64 0
  store i8 %call64.i473.3574, i8* %scevgep167.3575, align 1
  %483 = load i8, i8* %arrayidx70.i479.3, align 1
  %scevgep164.3576 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %475, i64 0, i64 0, i64 0
  %484 = load i8, i8* %scevgep164.3576, align 1
  %call75.i484.3577 = call zeroext i8 @mult(i8 zeroext %483, i8 zeroext %484) #3
  %scevgep171.3578 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %477, i64 0, i64 0, i64 0
  store i8 %call75.i484.3577, i8* %scevgep171.3578, align 1
  %scevgep168.3579 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %476, i64 0, i64 0, i64 0
  %485 = load i8, i8* %scevgep168.3579, align 1
  %conv84.i493.3580 = zext i8 %485 to i32
  %scevgep172.3581 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %477, i64 0, i64 0, i64 0
  %486 = load i8, i8* %scevgep172.3581, align 1
  %conv89.i498.3582 = zext i8 %486 to i32
  %xor90.i499.3583 = xor i32 %conv84.i493.3580, %conv89.i498.3582
  %conv91.i500.3584 = trunc i32 %xor90.i499.3583 to i8
  %scevgep175.3585 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %478, i64 0, i64 0, i64 0
  store i8 %conv91.i500.3584, i8* %scevgep175.3585, align 1
  %scevgep156.1.3 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 1
  %487 = load i8, i8* %scevgep156.1.3, align 1
  %conv44.i452.1.3 = zext i8 %487 to i32
  %scevgep159.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %474, i64 0, i64 0, i64 1
  %488 = load i8, i8* %scevgep159.1.3, align 1
  %conv49.i457.1.3 = zext i8 %488 to i32
  %xor.i458.1.3 = xor i32 %conv44.i452.1.3, %conv49.i457.1.3
  %conv50.i459.1.3 = trunc i32 %xor.i458.1.3 to i8
  %scevgep163.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %475, i64 0, i64 0, i64 1
  store i8 %conv50.i459.1.3, i8* %scevgep163.1.3, align 1
  %489 = load i8, i8* %arrayidx56.i465.3, align 1
  %conv57.i466.1.3 = zext i8 %489 to i32
  %xor58.i467.1.3 = xor i32 %conv57.i466.1.3, 1
  %conv59.i468.1.3 = trunc i32 %xor58.i467.1.3 to i8
  %scevgep160.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %474, i64 0, i64 0, i64 1
  %490 = load i8, i8* %scevgep160.1.3, align 1
  %call64.i473.1.3 = call zeroext i8 @mult(i8 zeroext %conv59.i468.1.3, i8 zeroext %490) #3
  %scevgep167.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %476, i64 0, i64 0, i64 1
  store i8 %call64.i473.1.3, i8* %scevgep167.1.3, align 1
  %491 = load i8, i8* %arrayidx70.i479.3, align 1
  %scevgep164.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %475, i64 0, i64 0, i64 1
  %492 = load i8, i8* %scevgep164.1.3, align 1
  %call75.i484.1.3 = call zeroext i8 @mult(i8 zeroext %491, i8 zeroext %492) #3
  %scevgep171.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %477, i64 0, i64 0, i64 1
  store i8 %call75.i484.1.3, i8* %scevgep171.1.3, align 1
  %scevgep168.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %476, i64 0, i64 0, i64 1
  %493 = load i8, i8* %scevgep168.1.3, align 1
  %conv84.i493.1.3 = zext i8 %493 to i32
  %scevgep172.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %477, i64 0, i64 0, i64 1
  %494 = load i8, i8* %scevgep172.1.3, align 1
  %conv89.i498.1.3 = zext i8 %494 to i32
  %xor90.i499.1.3 = xor i32 %conv84.i493.1.3, %conv89.i498.1.3
  %conv91.i500.1.3 = trunc i32 %xor90.i499.1.3 to i8
  %scevgep175.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %478, i64 0, i64 0, i64 1
  store i8 %conv91.i500.1.3, i8* %scevgep175.1.3, align 1
  %scevgep156.2.3 = getelementptr [4 x i8], [4 x i8]* %w, i64 0, i64 2
  %495 = load i8, i8* %scevgep156.2.3, align 1
  %conv44.i452.2.3 = zext i8 %495 to i32
  %scevgep159.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %474, i64 0, i64 0, i64 2
  %496 = load i8, i8* %scevgep159.2.3, align 1
  %conv49.i457.2.3 = zext i8 %496 to i32
  %xor.i458.2.3 = xor i32 %conv44.i452.2.3, %conv49.i457.2.3
  %conv50.i459.2.3 = trunc i32 %xor.i458.2.3 to i8
  %scevgep163.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %475, i64 0, i64 0, i64 2
  store i8 %conv50.i459.2.3, i8* %scevgep163.2.3, align 1
  %497 = load i8, i8* %arrayidx56.i465.3, align 1
  %conv57.i466.2.3 = zext i8 %497 to i32
  %xor58.i467.2.3 = xor i32 %conv57.i466.2.3, 1
  %conv59.i468.2.3 = trunc i32 %xor58.i467.2.3 to i8
  %scevgep160.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %474, i64 0, i64 0, i64 2
  %498 = load i8, i8* %scevgep160.2.3, align 1
  %call64.i473.2.3 = call zeroext i8 @mult(i8 zeroext %conv59.i468.2.3, i8 zeroext %498) #3
  %scevgep167.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %476, i64 0, i64 0, i64 2
  store i8 %call64.i473.2.3, i8* %scevgep167.2.3, align 1
  %499 = load i8, i8* %arrayidx70.i479.3, align 1
  %scevgep164.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %475, i64 0, i64 0, i64 2
  %500 = load i8, i8* %scevgep164.2.3, align 1
  %call75.i484.2.3 = call zeroext i8 @mult(i8 zeroext %499, i8 zeroext %500) #3
  %scevgep171.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %477, i64 0, i64 0, i64 2
  store i8 %call75.i484.2.3, i8* %scevgep171.2.3, align 1
  %scevgep168.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %476, i64 0, i64 0, i64 2
  %501 = load i8, i8* %scevgep168.2.3, align 1
  %conv84.i493.2.3 = zext i8 %501 to i32
  %scevgep172.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %477, i64 0, i64 0, i64 2
  %502 = load i8, i8* %scevgep172.2.3, align 1
  %conv89.i498.2.3 = zext i8 %502 to i32
  %xor90.i499.2.3 = xor i32 %conv84.i493.2.3, %conv89.i498.2.3
  %conv91.i500.2.3 = trunc i32 %xor90.i499.2.3 to i8
  %scevgep175.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %478, i64 0, i64 0, i64 2
  store i8 %conv91.i500.2.3, i8* %scevgep175.2.3, align 1
  %503 = load i8, i8* %arraydecay15, align 1
  %504 = load i8, i8* %arraydecay16, align 1
  %call111.i517 = call zeroext i8 @mult(i8 zeroext %503, i8 zeroext %504) #3
  store i8 %call111.i517, i8* %arraydecay17, align 1
  %scevgep146.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 1
  %505 = load i8, i8* %scevgep146.1, align 1
  %conv126.i529.1 = zext i8 %505 to i32
  %506 = load i8, i8* %arraydecay17, align 1
  %conv129.i532.1 = zext i8 %506 to i32
  %xor130.i533.1 = xor i32 %conv129.i532.1, %conv126.i529.1
  %conv131.i534.1 = trunc i32 %xor130.i533.1 to i8
  store i8 %conv131.i534.1, i8* %arraydecay17, align 1
  %scevgep146.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 2
  %507 = load i8, i8* %scevgep146.2, align 1
  %conv126.i529.2 = zext i8 %507 to i32
  %508 = load i8, i8* %arraydecay17, align 1
  %conv129.i532.2 = zext i8 %508 to i32
  %xor130.i533.2 = xor i32 %conv129.i532.2, %conv126.i529.2
  %conv131.i534.2 = trunc i32 %xor130.i533.2 to i8
  store i8 %conv131.i534.2, i8* %arraydecay17, align 1
  %scevgep146.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 3
  %509 = load i8, i8* %scevgep146.3, align 1
  %conv126.i529.3 = zext i8 %509 to i32
  %510 = load i8, i8* %arraydecay17, align 1
  %conv129.i532.3 = zext i8 %510 to i32
  %xor130.i533.3 = xor i32 %conv129.i532.3, %conv126.i529.3
  %conv131.i534.3 = trunc i32 %xor130.i533.3 to i8
  store i8 %conv131.i534.3, i8* %arraydecay17, align 1
  %scevgep145 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 1, i64 0
  %511 = bitcast i8* %scevgep145 to [4 x [4 x i8]]*
  %arrayidx108.i514.1 = getelementptr inbounds i8, i8* %arraydecay15, i64 1
  %512 = load i8, i8* %arrayidx108.i514.1, align 1
  %arrayidx110.i516.1 = getelementptr inbounds i8, i8* %arraydecay16, i64 1
  %513 = load i8, i8* %arrayidx110.i516.1, align 1
  %call111.i517.1 = call zeroext i8 @mult(i8 zeroext %512, i8 zeroext %513) #3
  %arrayidx113.i519.1 = getelementptr inbounds i8, i8* %arraydecay17, i64 1
  store i8 %call111.i517.1, i8* %arrayidx113.i519.1, align 1
  %arrayidx128.i531.1 = getelementptr inbounds i8, i8* %arraydecay17, i64 1
  %scevgep146.1482 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %511, i64 0, i64 0, i64 0
  %514 = load i8, i8* %scevgep146.1482, align 1
  %conv126.i529.1483 = zext i8 %514 to i32
  %515 = load i8, i8* %arrayidx128.i531.1, align 1
  %conv129.i532.1484 = zext i8 %515 to i32
  %xor130.i533.1485 = xor i32 %conv129.i532.1484, %conv126.i529.1483
  %conv131.i534.1486 = trunc i32 %xor130.i533.1485 to i8
  store i8 %conv131.i534.1486, i8* %arrayidx128.i531.1, align 1
  %scevgep146.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %511, i64 0, i64 0, i64 2
  %516 = load i8, i8* %scevgep146.2.1, align 1
  %conv126.i529.2.1 = zext i8 %516 to i32
  %517 = load i8, i8* %arrayidx128.i531.1, align 1
  %conv129.i532.2.1 = zext i8 %517 to i32
  %xor130.i533.2.1 = xor i32 %conv129.i532.2.1, %conv126.i529.2.1
  %conv131.i534.2.1 = trunc i32 %xor130.i533.2.1 to i8
  store i8 %conv131.i534.2.1, i8* %arrayidx128.i531.1, align 1
  %scevgep146.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %511, i64 0, i64 0, i64 3
  %518 = load i8, i8* %scevgep146.3.1, align 1
  %conv126.i529.3.1 = zext i8 %518 to i32
  %519 = load i8, i8* %arrayidx128.i531.1, align 1
  %conv129.i532.3.1 = zext i8 %519 to i32
  %xor130.i533.3.1 = xor i32 %conv129.i532.3.1, %conv126.i529.3.1
  %conv131.i534.3.1 = trunc i32 %xor130.i533.3.1 to i8
  store i8 %conv131.i534.3.1, i8* %arrayidx128.i531.1, align 1
  %scevgep145.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %511, i64 0, i64 1, i64 0
  %520 = bitcast i8* %scevgep145.1 to [4 x [4 x i8]]*
  %arrayidx108.i514.2 = getelementptr inbounds i8, i8* %arraydecay15, i64 2
  %521 = load i8, i8* %arrayidx108.i514.2, align 1
  %arrayidx110.i516.2 = getelementptr inbounds i8, i8* %arraydecay16, i64 2
  %522 = load i8, i8* %arrayidx110.i516.2, align 1
  %call111.i517.2 = call zeroext i8 @mult(i8 zeroext %521, i8 zeroext %522) #3
  %arrayidx113.i519.2 = getelementptr inbounds i8, i8* %arraydecay17, i64 2
  store i8 %call111.i517.2, i8* %arrayidx113.i519.2, align 1
  %arrayidx128.i531.2 = getelementptr inbounds i8, i8* %arraydecay17, i64 2
  %scevgep146.2491 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %520, i64 0, i64 0, i64 0
  %523 = load i8, i8* %scevgep146.2491, align 1
  %conv126.i529.2492 = zext i8 %523 to i32
  %524 = load i8, i8* %arrayidx128.i531.2, align 1
  %conv129.i532.2493 = zext i8 %524 to i32
  %xor130.i533.2494 = xor i32 %conv129.i532.2493, %conv126.i529.2492
  %conv131.i534.2495 = trunc i32 %xor130.i533.2494 to i8
  store i8 %conv131.i534.2495, i8* %arrayidx128.i531.2, align 1
  %scevgep146.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %520, i64 0, i64 0, i64 1
  %525 = load i8, i8* %scevgep146.1.2, align 1
  %conv126.i529.1.2 = zext i8 %525 to i32
  %526 = load i8, i8* %arrayidx128.i531.2, align 1
  %conv129.i532.1.2 = zext i8 %526 to i32
  %xor130.i533.1.2 = xor i32 %conv129.i532.1.2, %conv126.i529.1.2
  %conv131.i534.1.2 = trunc i32 %xor130.i533.1.2 to i8
  store i8 %conv131.i534.1.2, i8* %arrayidx128.i531.2, align 1
  %scevgep146.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %520, i64 0, i64 0, i64 3
  %527 = load i8, i8* %scevgep146.3.2, align 1
  %conv126.i529.3.2 = zext i8 %527 to i32
  %528 = load i8, i8* %arrayidx128.i531.2, align 1
  %conv129.i532.3.2 = zext i8 %528 to i32
  %xor130.i533.3.2 = xor i32 %conv129.i532.3.2, %conv126.i529.3.2
  %conv131.i534.3.2 = trunc i32 %xor130.i533.3.2 to i8
  store i8 %conv131.i534.3.2, i8* %arrayidx128.i531.2, align 1
  %scevgep145.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %520, i64 0, i64 1, i64 0
  %529 = bitcast i8* %scevgep145.2 to [4 x [4 x i8]]*
  %arrayidx108.i514.3 = getelementptr inbounds i8, i8* %arraydecay15, i64 3
  %530 = load i8, i8* %arrayidx108.i514.3, align 1
  %arrayidx110.i516.3 = getelementptr inbounds i8, i8* %arraydecay16, i64 3
  %531 = load i8, i8* %arrayidx110.i516.3, align 1
  %call111.i517.3 = call zeroext i8 @mult(i8 zeroext %530, i8 zeroext %531) #3
  %arrayidx113.i519.3 = getelementptr inbounds i8, i8* %arraydecay17, i64 3
  store i8 %call111.i517.3, i8* %arrayidx113.i519.3, align 1
  %arrayidx128.i531.3 = getelementptr inbounds i8, i8* %arraydecay17, i64 3
  %scevgep146.3500 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %529, i64 0, i64 0, i64 0
  %532 = load i8, i8* %scevgep146.3500, align 1
  %conv126.i529.3501 = zext i8 %532 to i32
  %533 = load i8, i8* %arrayidx128.i531.3, align 1
  %conv129.i532.3502 = zext i8 %533 to i32
  %xor130.i533.3503 = xor i32 %conv129.i532.3502, %conv126.i529.3501
  %conv131.i534.3504 = trunc i32 %xor130.i533.3503 to i8
  store i8 %conv131.i534.3504, i8* %arrayidx128.i531.3, align 1
  %scevgep146.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %529, i64 0, i64 0, i64 1
  %534 = load i8, i8* %scevgep146.1.3, align 1
  %conv126.i529.1.3 = zext i8 %534 to i32
  %535 = load i8, i8* %arrayidx128.i531.3, align 1
  %conv129.i532.1.3 = zext i8 %535 to i32
  %xor130.i533.1.3 = xor i32 %conv129.i532.1.3, %conv126.i529.1.3
  %conv131.i534.1.3 = trunc i32 %xor130.i533.1.3 to i8
  store i8 %conv131.i534.1.3, i8* %arrayidx128.i531.3, align 1
  %scevgep146.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %529, i64 0, i64 0, i64 2
  %536 = load i8, i8* %scevgep146.2.3, align 1
  %conv126.i529.2.3 = zext i8 %536 to i32
  %537 = load i8, i8* %arrayidx128.i531.3, align 1
  %conv129.i532.2.3 = zext i8 %537 to i32
  %xor130.i533.2.3 = xor i32 %conv129.i532.2.3, %conv126.i529.2.3
  %conv131.i534.2.3 = trunc i32 %xor130.i533.2.3 to i8
  store i8 %conv131.i534.2.3, i8* %arrayidx128.i531.3, align 1
  %call139.i540 = call zeroext i8 @mult(i8 zeroext %call.i387, i8 zeroext %call1.i388) #3
  %conv140.i541 = zext i8 %call139.i540 to i32
  %scevgep136 = getelementptr [4 x i8], [4 x i8]* %m, i64 0, i64 0
  %538 = load i8, i8* %scevgep136, align 1
  %scevgep136.1 = getelementptr [4 x i8], [4 x i8]* %m, i64 0, i64 1
  %539 = load i8, i8* %scevgep136.1, align 1
  %conv.i.i172.i548.1 = zext i8 %539 to i32
  %conv1.i.i173.i549.1 = zext i8 %538 to i32
  %xor.i.i174.i550.1 = xor i32 %conv1.i.i173.i549.1, %conv.i.i172.i548.1
  %conv2.i.i175.i551.1 = trunc i32 %xor.i.i174.i550.1 to i8
  %scevgep136.2 = getelementptr [4 x i8], [4 x i8]* %m, i64 0, i64 2
  %540 = load i8, i8* %scevgep136.2, align 1
  %conv.i.i172.i548.2 = zext i8 %540 to i32
  %conv1.i.i173.i549.2 = zext i8 %conv2.i.i175.i551.1 to i32
  %xor.i.i174.i550.2 = xor i32 %conv1.i.i173.i549.2, %conv.i.i172.i548.2
  %conv2.i.i175.i551.2 = trunc i32 %xor.i.i174.i550.2 to i8
  %scevgep136.3 = getelementptr [4 x i8], [4 x i8]* %m, i64 0, i64 3
  %541 = load i8, i8* %scevgep136.3, align 1
  %conv.i.i172.i548.3 = zext i8 %541 to i32
  %conv1.i.i173.i549.3 = zext i8 %conv2.i.i175.i551.2 to i32
  %xor.i.i174.i550.3 = xor i32 %conv1.i.i173.i549.3, %conv.i.i172.i548.3
  %conv2.i.i175.i551.3 = trunc i32 %xor.i.i174.i550.3 to i8
  %conv142.i554 = zext i8 %conv2.i.i175.i551.3 to i32
  %cmp143.i555 = icmp eq i32 %conv140.i541, %conv142.i554
  call void @assert(i1 zeroext %cmp143.i555) #3
  %arraydecay18 = getelementptr inbounds [4 x i8], [4 x i8]* %m, i64 0, i64 0
  %arraydecay19 = getelementptr inbounds [4 x i8], [4 x i8]* %z, i64 0, i64 0
  %call.i588 = call zeroext i8 (...) @rand() #3
  %call1.i589 = call zeroext i8 (...) @rand() #3
  %conv.i590 = zext i8 %call.i588 to i32
  %scevgep132 = getelementptr [4 x i8], [4 x i8]* %m, i64 0, i64 0
  %542 = load i8, i8* %scevgep132, align 1
  %scevgep132.1 = getelementptr [4 x i8], [4 x i8]* %m, i64 0, i64 1
  %543 = load i8, i8* %scevgep132.1, align 1
  %conv.i.i.i596.1 = zext i8 %543 to i32
  %conv1.i.i.i597.1 = zext i8 %542 to i32
  %xor.i.i.i598.1 = xor i32 %conv1.i.i.i597.1, %conv.i.i.i596.1
  %conv2.i.i.i599.1 = trunc i32 %xor.i.i.i598.1 to i8
  %scevgep132.2 = getelementptr [4 x i8], [4 x i8]* %m, i64 0, i64 2
  %544 = load i8, i8* %scevgep132.2, align 1
  %conv.i.i.i596.2 = zext i8 %544 to i32
  %conv1.i.i.i597.2 = zext i8 %conv2.i.i.i599.1 to i32
  %xor.i.i.i598.2 = xor i32 %conv1.i.i.i597.2, %conv.i.i.i596.2
  %conv2.i.i.i599.2 = trunc i32 %xor.i.i.i598.2 to i8
  %scevgep132.3 = getelementptr [4 x i8], [4 x i8]* %m, i64 0, i64 3
  %545 = load i8, i8* %scevgep132.3, align 1
  %conv.i.i.i596.3 = zext i8 %545 to i32
  %conv1.i.i.i597.3 = zext i8 %conv2.i.i.i599.2 to i32
  %xor.i.i.i598.3 = xor i32 %conv1.i.i.i597.3, %conv.i.i.i596.3
  %conv2.i.i.i599.3 = trunc i32 %xor.i.i.i598.3 to i8
  %conv3.i602 = zext i8 %conv2.i.i.i599.3 to i32
  %cmp.i603 = icmp eq i32 %conv.i590, %conv3.i602
  call void @assume(i1 zeroext %cmp.i603) #3
  %conv5.i604 = zext i8 %call1.i589 to i32
  %scevgep128 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 0
  %546 = load i8, i8* %scevgep128, align 1
  %scevgep128.1 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 1
  %547 = load i8, i8* %scevgep128.1, align 1
  %conv.i.i155.i611.1 = zext i8 %547 to i32
  %conv1.i.i156.i612.1 = zext i8 %546 to i32
  %xor.i.i157.i613.1 = xor i32 %conv1.i.i156.i612.1, %conv.i.i155.i611.1
  %conv2.i.i158.i614.1 = trunc i32 %xor.i.i157.i613.1 to i8
  %scevgep128.2 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 2
  %548 = load i8, i8* %scevgep128.2, align 1
  %conv.i.i155.i611.2 = zext i8 %548 to i32
  %conv1.i.i156.i612.2 = zext i8 %conv2.i.i158.i614.1 to i32
  %xor.i.i157.i613.2 = xor i32 %conv1.i.i156.i612.2, %conv.i.i155.i611.2
  %conv2.i.i158.i614.2 = trunc i32 %xor.i.i157.i613.2 to i8
  %scevgep128.3 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 3
  %549 = load i8, i8* %scevgep128.3, align 1
  %conv.i.i155.i611.3 = zext i8 %549 to i32
  %conv1.i.i156.i612.3 = zext i8 %conv2.i.i158.i614.2 to i32
  %xor.i.i157.i613.3 = xor i32 %conv1.i.i156.i612.3, %conv.i.i155.i611.3
  %conv2.i.i158.i614.3 = trunc i32 %xor.i.i157.i613.3 to i8
  %conv7.i617 = zext i8 %conv2.i.i158.i614.3 to i32
  %cmp8.i618 = icmp eq i32 %conv5.i604, %conv7.i617
  call void @assume(i1 zeroext %cmp8.i618) #3
  %call16.i626 = call zeroext i8 (...) @rand() #3
  %scevgep118 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i626, i8* %scevgep118, align 1
  %scevgep119 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %550 = load i8, i8* %scevgep119, align 1
  %scevgep120 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %550, i8* %scevgep120, align 1
  %call16.i626.1801 = call zeroext i8 (...) @rand() #3
  %scevgep118.1802 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  store i8 %call16.i626.1801, i8* %scevgep118.1802, align 1
  %scevgep119.1803 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %551 = load i8, i8* %scevgep119.1803, align 1
  %scevgep120.1804 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 2, i64 0
  store i8 %551, i8* %scevgep120.1804, align 1
  %call16.i626.2806 = call zeroext i8 (...) @rand() #3
  %scevgep118.2807 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  store i8 %call16.i626.2806, i8* %scevgep118.2807, align 1
  %scevgep119.2808 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %552 = load i8, i8* %scevgep119.2808, align 1
  %scevgep120.2809 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 3, i64 0
  store i8 %552, i8* %scevgep120.2809, align 1
  %scevgep115 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 1
  %553 = bitcast i8* %scevgep115 to [4 x [4 x i8]]*
  %call16.i626.1 = call zeroext i8 (...) @rand() #3
  %scevgep118.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %553, i64 0, i64 0, i64 1
  store i8 %call16.i626.1, i8* %scevgep118.1, align 1
  %scevgep119.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %553, i64 0, i64 0, i64 1
  %554 = load i8, i8* %scevgep119.1, align 1
  %scevgep120.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %553, i64 0, i64 1, i64 0
  store i8 %554, i8* %scevgep120.1, align 1
  %call16.i626.1.1 = call zeroext i8 (...) @rand() #3
  %scevgep118.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %553, i64 0, i64 0, i64 2
  store i8 %call16.i626.1.1, i8* %scevgep118.1.1, align 1
  %scevgep119.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %553, i64 0, i64 0, i64 2
  %555 = load i8, i8* %scevgep119.1.1, align 1
  %scevgep120.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %553, i64 0, i64 2, i64 0
  store i8 %555, i8* %scevgep120.1.1, align 1
  %scevgep115.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %553, i64 0, i64 1, i64 1
  %556 = bitcast i8* %scevgep115.1 to [4 x [4 x i8]]*
  %call16.i626.2 = call zeroext i8 (...) @rand() #3
  %scevgep118.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %556, i64 0, i64 0, i64 1
  store i8 %call16.i626.2, i8* %scevgep118.2, align 1
  %scevgep119.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %556, i64 0, i64 0, i64 1
  %557 = load i8, i8* %scevgep119.2, align 1
  %scevgep120.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %556, i64 0, i64 1, i64 0
  store i8 %557, i8* %scevgep120.2, align 1
  %scevgep91.1 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 1
  %558 = load i8, i8* %scevgep91.1, align 1
  %conv44.i653.1 = zext i8 %558 to i32
  %scevgep94.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %559 = load i8, i8* %scevgep94.1, align 1
  %conv49.i658.1 = zext i8 %559 to i32
  %xor.i659.1 = xor i32 %conv44.i653.1, %conv49.i658.1
  %conv50.i660.1 = trunc i32 %xor.i659.1 to i8
  %scevgep98.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i660.1, i8* %scevgep98.1, align 1
  %560 = load i8, i8* %arraydecay18, align 1
  %conv57.i667.1 = zext i8 %560 to i32
  %xor58.i668.1 = xor i32 %conv57.i667.1, 1
  %conv59.i669.1 = trunc i32 %xor58.i668.1 to i8
  %scevgep95.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %561 = load i8, i8* %scevgep95.1, align 1
  %call64.i674.1 = call zeroext i8 @mult(i8 zeroext %conv59.i669.1, i8 zeroext %561) #3
  %scevgep102.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i674.1, i8* %scevgep102.1, align 1
  %562 = load i8, i8* %arraydecay18, align 1
  %scevgep99.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 1
  %563 = load i8, i8* %scevgep99.1, align 1
  %call75.i685.1 = call zeroext i8 @mult(i8 zeroext %562, i8 zeroext %563) #3
  %scevgep106.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i685.1, i8* %scevgep106.1, align 1
  %scevgep103.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %564 = load i8, i8* %scevgep103.1, align 1
  %conv84.i694.1 = zext i8 %564 to i32
  %scevgep107.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %565 = load i8, i8* %scevgep107.1, align 1
  %conv89.i699.1 = zext i8 %565 to i32
  %xor90.i700.1 = xor i32 %conv84.i694.1, %conv89.i699.1
  %conv91.i701.1 = trunc i32 %xor90.i700.1 to i8
  %scevgep110.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i701.1, i8* %scevgep110.1, align 1
  %scevgep91.2 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 2
  %566 = load i8, i8* %scevgep91.2, align 1
  %conv44.i653.2 = zext i8 %566 to i32
  %scevgep94.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %567 = load i8, i8* %scevgep94.2, align 1
  %conv49.i658.2 = zext i8 %567 to i32
  %xor.i659.2 = xor i32 %conv44.i653.2, %conv49.i658.2
  %conv50.i660.2 = trunc i32 %xor.i659.2 to i8
  %scevgep98.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 2
  store i8 %conv50.i660.2, i8* %scevgep98.2, align 1
  %568 = load i8, i8* %arraydecay18, align 1
  %conv57.i667.2 = zext i8 %568 to i32
  %xor58.i668.2 = xor i32 %conv57.i667.2, 1
  %conv59.i669.2 = trunc i32 %xor58.i668.2 to i8
  %scevgep95.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %569 = load i8, i8* %scevgep95.2, align 1
  %call64.i674.2 = call zeroext i8 @mult(i8 zeroext %conv59.i669.2, i8 zeroext %569) #3
  %scevgep102.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 2
  store i8 %call64.i674.2, i8* %scevgep102.2, align 1
  %570 = load i8, i8* %arraydecay18, align 1
  %scevgep99.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 2
  %571 = load i8, i8* %scevgep99.2, align 1
  %call75.i685.2 = call zeroext i8 @mult(i8 zeroext %570, i8 zeroext %571) #3
  %scevgep106.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 2
  store i8 %call75.i685.2, i8* %scevgep106.2, align 1
  %scevgep103.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 2
  %572 = load i8, i8* %scevgep103.2, align 1
  %conv84.i694.2 = zext i8 %572 to i32
  %scevgep107.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 2
  %573 = load i8, i8* %scevgep107.2, align 1
  %conv89.i699.2 = zext i8 %573 to i32
  %xor90.i700.2 = xor i32 %conv84.i694.2, %conv89.i699.2
  %conv91.i701.2 = trunc i32 %xor90.i700.2 to i8
  %scevgep110.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 2
  store i8 %conv91.i701.2, i8* %scevgep110.2, align 1
  %scevgep91.3 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 3
  %574 = load i8, i8* %scevgep91.3, align 1
  %conv44.i653.3 = zext i8 %574 to i32
  %scevgep94.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %575 = load i8, i8* %scevgep94.3, align 1
  %conv49.i658.3 = zext i8 %575 to i32
  %xor.i659.3 = xor i32 %conv44.i653.3, %conv49.i658.3
  %conv50.i660.3 = trunc i32 %xor.i659.3 to i8
  %scevgep98.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 3
  store i8 %conv50.i660.3, i8* %scevgep98.3, align 1
  %576 = load i8, i8* %arraydecay18, align 1
  %conv57.i667.3 = zext i8 %576 to i32
  %xor58.i668.3 = xor i32 %conv57.i667.3, 1
  %conv59.i669.3 = trunc i32 %xor58.i668.3 to i8
  %scevgep95.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %577 = load i8, i8* %scevgep95.3, align 1
  %call64.i674.3 = call zeroext i8 @mult(i8 zeroext %conv59.i669.3, i8 zeroext %577) #3
  %scevgep102.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 3
  store i8 %call64.i674.3, i8* %scevgep102.3, align 1
  %578 = load i8, i8* %arraydecay18, align 1
  %scevgep99.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 3
  %579 = load i8, i8* %scevgep99.3, align 1
  %call75.i685.3 = call zeroext i8 @mult(i8 zeroext %578, i8 zeroext %579) #3
  %scevgep106.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 3
  store i8 %call75.i685.3, i8* %scevgep106.3, align 1
  %scevgep103.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 3
  %580 = load i8, i8* %scevgep103.3, align 1
  %conv84.i694.3 = zext i8 %580 to i32
  %scevgep107.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 3
  %581 = load i8, i8* %scevgep107.3, align 1
  %conv89.i699.3 = zext i8 %581 to i32
  %xor90.i700.3 = xor i32 %conv84.i694.3, %conv89.i699.3
  %conv91.i701.3 = trunc i32 %xor90.i700.3 to i8
  %scevgep110.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 3
  store i8 %conv91.i701.3, i8* %scevgep110.3, align 1
  %scevgep93 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  %582 = bitcast i8* %scevgep93 to [4 x [4 x i8]]*
  %scevgep97 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 1, i64 0
  %583 = bitcast i8* %scevgep97 to [4 x [4 x i8]]*
  %scevgep101 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %584 = bitcast i8* %scevgep101 to [4 x [4 x i8]]*
  %scevgep105 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %585 = bitcast i8* %scevgep105 to [4 x [4 x i8]]*
  %scevgep109 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 1, i64 0
  %586 = bitcast i8* %scevgep109 to [4 x [4 x i8]]*
  %arrayidx56.i666.1 = getelementptr inbounds i8, i8* %arraydecay18, i64 1
  %arrayidx70.i680.1 = getelementptr inbounds i8, i8* %arraydecay18, i64 1
  %scevgep91.1401 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 0
  %587 = load i8, i8* %scevgep91.1401, align 1
  %conv44.i653.1402 = zext i8 %587 to i32
  %scevgep94.1403 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %582, i64 0, i64 0, i64 0
  %588 = load i8, i8* %scevgep94.1403, align 1
  %conv49.i658.1404 = zext i8 %588 to i32
  %xor.i659.1405 = xor i32 %conv44.i653.1402, %conv49.i658.1404
  %conv50.i660.1406 = trunc i32 %xor.i659.1405 to i8
  %scevgep98.1407 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %583, i64 0, i64 0, i64 0
  store i8 %conv50.i660.1406, i8* %scevgep98.1407, align 1
  %589 = load i8, i8* %arrayidx56.i666.1, align 1
  %conv57.i667.1408 = zext i8 %589 to i32
  %xor58.i668.1409 = xor i32 %conv57.i667.1408, 1
  %conv59.i669.1410 = trunc i32 %xor58.i668.1409 to i8
  %scevgep95.1411 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %582, i64 0, i64 0, i64 0
  %590 = load i8, i8* %scevgep95.1411, align 1
  %call64.i674.1412 = call zeroext i8 @mult(i8 zeroext %conv59.i669.1410, i8 zeroext %590) #3
  %scevgep102.1413 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %584, i64 0, i64 0, i64 0
  store i8 %call64.i674.1412, i8* %scevgep102.1413, align 1
  %591 = load i8, i8* %arrayidx70.i680.1, align 1
  %scevgep99.1414 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %583, i64 0, i64 0, i64 0
  %592 = load i8, i8* %scevgep99.1414, align 1
  %call75.i685.1415 = call zeroext i8 @mult(i8 zeroext %591, i8 zeroext %592) #3
  %scevgep106.1416 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %585, i64 0, i64 0, i64 0
  store i8 %call75.i685.1415, i8* %scevgep106.1416, align 1
  %scevgep103.1417 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %584, i64 0, i64 0, i64 0
  %593 = load i8, i8* %scevgep103.1417, align 1
  %conv84.i694.1418 = zext i8 %593 to i32
  %scevgep107.1419 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %585, i64 0, i64 0, i64 0
  %594 = load i8, i8* %scevgep107.1419, align 1
  %conv89.i699.1420 = zext i8 %594 to i32
  %xor90.i700.1421 = xor i32 %conv84.i694.1418, %conv89.i699.1420
  %conv91.i701.1422 = trunc i32 %xor90.i700.1421 to i8
  %scevgep110.1423 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %586, i64 0, i64 0, i64 0
  store i8 %conv91.i701.1422, i8* %scevgep110.1423, align 1
  %scevgep91.2.1 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 2
  %595 = load i8, i8* %scevgep91.2.1, align 1
  %conv44.i653.2.1 = zext i8 %595 to i32
  %scevgep94.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %582, i64 0, i64 0, i64 2
  %596 = load i8, i8* %scevgep94.2.1, align 1
  %conv49.i658.2.1 = zext i8 %596 to i32
  %xor.i659.2.1 = xor i32 %conv44.i653.2.1, %conv49.i658.2.1
  %conv50.i660.2.1 = trunc i32 %xor.i659.2.1 to i8
  %scevgep98.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %583, i64 0, i64 0, i64 2
  store i8 %conv50.i660.2.1, i8* %scevgep98.2.1, align 1
  %597 = load i8, i8* %arrayidx56.i666.1, align 1
  %conv57.i667.2.1 = zext i8 %597 to i32
  %xor58.i668.2.1 = xor i32 %conv57.i667.2.1, 1
  %conv59.i669.2.1 = trunc i32 %xor58.i668.2.1 to i8
  %scevgep95.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %582, i64 0, i64 0, i64 2
  %598 = load i8, i8* %scevgep95.2.1, align 1
  %call64.i674.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i669.2.1, i8 zeroext %598) #3
  %scevgep102.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %584, i64 0, i64 0, i64 2
  store i8 %call64.i674.2.1, i8* %scevgep102.2.1, align 1
  %599 = load i8, i8* %arrayidx70.i680.1, align 1
  %scevgep99.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %583, i64 0, i64 0, i64 2
  %600 = load i8, i8* %scevgep99.2.1, align 1
  %call75.i685.2.1 = call zeroext i8 @mult(i8 zeroext %599, i8 zeroext %600) #3
  %scevgep106.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %585, i64 0, i64 0, i64 2
  store i8 %call75.i685.2.1, i8* %scevgep106.2.1, align 1
  %scevgep103.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %584, i64 0, i64 0, i64 2
  %601 = load i8, i8* %scevgep103.2.1, align 1
  %conv84.i694.2.1 = zext i8 %601 to i32
  %scevgep107.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %585, i64 0, i64 0, i64 2
  %602 = load i8, i8* %scevgep107.2.1, align 1
  %conv89.i699.2.1 = zext i8 %602 to i32
  %xor90.i700.2.1 = xor i32 %conv84.i694.2.1, %conv89.i699.2.1
  %conv91.i701.2.1 = trunc i32 %xor90.i700.2.1 to i8
  %scevgep110.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %586, i64 0, i64 0, i64 2
  store i8 %conv91.i701.2.1, i8* %scevgep110.2.1, align 1
  %scevgep91.3.1 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 3
  %603 = load i8, i8* %scevgep91.3.1, align 1
  %conv44.i653.3.1 = zext i8 %603 to i32
  %scevgep94.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %582, i64 0, i64 0, i64 3
  %604 = load i8, i8* %scevgep94.3.1, align 1
  %conv49.i658.3.1 = zext i8 %604 to i32
  %xor.i659.3.1 = xor i32 %conv44.i653.3.1, %conv49.i658.3.1
  %conv50.i660.3.1 = trunc i32 %xor.i659.3.1 to i8
  %scevgep98.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %583, i64 0, i64 0, i64 3
  store i8 %conv50.i660.3.1, i8* %scevgep98.3.1, align 1
  %605 = load i8, i8* %arrayidx56.i666.1, align 1
  %conv57.i667.3.1 = zext i8 %605 to i32
  %xor58.i668.3.1 = xor i32 %conv57.i667.3.1, 1
  %conv59.i669.3.1 = trunc i32 %xor58.i668.3.1 to i8
  %scevgep95.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %582, i64 0, i64 0, i64 3
  %606 = load i8, i8* %scevgep95.3.1, align 1
  %call64.i674.3.1 = call zeroext i8 @mult(i8 zeroext %conv59.i669.3.1, i8 zeroext %606) #3
  %scevgep102.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %584, i64 0, i64 0, i64 3
  store i8 %call64.i674.3.1, i8* %scevgep102.3.1, align 1
  %607 = load i8, i8* %arrayidx70.i680.1, align 1
  %scevgep99.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %583, i64 0, i64 0, i64 3
  %608 = load i8, i8* %scevgep99.3.1, align 1
  %call75.i685.3.1 = call zeroext i8 @mult(i8 zeroext %607, i8 zeroext %608) #3
  %scevgep106.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %585, i64 0, i64 0, i64 3
  store i8 %call75.i685.3.1, i8* %scevgep106.3.1, align 1
  %scevgep103.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %584, i64 0, i64 0, i64 3
  %609 = load i8, i8* %scevgep103.3.1, align 1
  %conv84.i694.3.1 = zext i8 %609 to i32
  %scevgep107.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %585, i64 0, i64 0, i64 3
  %610 = load i8, i8* %scevgep107.3.1, align 1
  %conv89.i699.3.1 = zext i8 %610 to i32
  %xor90.i700.3.1 = xor i32 %conv84.i694.3.1, %conv89.i699.3.1
  %conv91.i701.3.1 = trunc i32 %xor90.i700.3.1 to i8
  %scevgep110.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %586, i64 0, i64 0, i64 3
  store i8 %conv91.i701.3.1, i8* %scevgep110.3.1, align 1
  %scevgep93.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %582, i64 0, i64 1, i64 0
  %611 = bitcast i8* %scevgep93.1 to [4 x [4 x i8]]*
  %scevgep97.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %583, i64 0, i64 1, i64 0
  %612 = bitcast i8* %scevgep97.1 to [4 x [4 x i8]]*
  %scevgep101.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %584, i64 0, i64 1, i64 0
  %613 = bitcast i8* %scevgep101.1 to [4 x [4 x i8]]*
  %scevgep105.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %585, i64 0, i64 1, i64 0
  %614 = bitcast i8* %scevgep105.1 to [4 x [4 x i8]]*
  %scevgep109.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %586, i64 0, i64 1, i64 0
  %615 = bitcast i8* %scevgep109.1 to [4 x [4 x i8]]*
  %arrayidx56.i666.2 = getelementptr inbounds i8, i8* %arraydecay18, i64 2
  %arrayidx70.i680.2 = getelementptr inbounds i8, i8* %arraydecay18, i64 2
  %scevgep91.2428 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 0
  %616 = load i8, i8* %scevgep91.2428, align 1
  %conv44.i653.2429 = zext i8 %616 to i32
  %scevgep94.2430 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %611, i64 0, i64 0, i64 0
  %617 = load i8, i8* %scevgep94.2430, align 1
  %conv49.i658.2431 = zext i8 %617 to i32
  %xor.i659.2432 = xor i32 %conv44.i653.2429, %conv49.i658.2431
  %conv50.i660.2433 = trunc i32 %xor.i659.2432 to i8
  %scevgep98.2434 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %612, i64 0, i64 0, i64 0
  store i8 %conv50.i660.2433, i8* %scevgep98.2434, align 1
  %618 = load i8, i8* %arrayidx56.i666.2, align 1
  %conv57.i667.2435 = zext i8 %618 to i32
  %xor58.i668.2436 = xor i32 %conv57.i667.2435, 1
  %conv59.i669.2437 = trunc i32 %xor58.i668.2436 to i8
  %scevgep95.2438 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %611, i64 0, i64 0, i64 0
  %619 = load i8, i8* %scevgep95.2438, align 1
  %call64.i674.2439 = call zeroext i8 @mult(i8 zeroext %conv59.i669.2437, i8 zeroext %619) #3
  %scevgep102.2440 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %613, i64 0, i64 0, i64 0
  store i8 %call64.i674.2439, i8* %scevgep102.2440, align 1
  %620 = load i8, i8* %arrayidx70.i680.2, align 1
  %scevgep99.2441 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %612, i64 0, i64 0, i64 0
  %621 = load i8, i8* %scevgep99.2441, align 1
  %call75.i685.2442 = call zeroext i8 @mult(i8 zeroext %620, i8 zeroext %621) #3
  %scevgep106.2443 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %614, i64 0, i64 0, i64 0
  store i8 %call75.i685.2442, i8* %scevgep106.2443, align 1
  %scevgep103.2444 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %613, i64 0, i64 0, i64 0
  %622 = load i8, i8* %scevgep103.2444, align 1
  %conv84.i694.2445 = zext i8 %622 to i32
  %scevgep107.2446 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %614, i64 0, i64 0, i64 0
  %623 = load i8, i8* %scevgep107.2446, align 1
  %conv89.i699.2447 = zext i8 %623 to i32
  %xor90.i700.2448 = xor i32 %conv84.i694.2445, %conv89.i699.2447
  %conv91.i701.2449 = trunc i32 %xor90.i700.2448 to i8
  %scevgep110.2450 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %615, i64 0, i64 0, i64 0
  store i8 %conv91.i701.2449, i8* %scevgep110.2450, align 1
  %scevgep91.1.2 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 1
  %624 = load i8, i8* %scevgep91.1.2, align 1
  %conv44.i653.1.2 = zext i8 %624 to i32
  %scevgep94.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %611, i64 0, i64 0, i64 1
  %625 = load i8, i8* %scevgep94.1.2, align 1
  %conv49.i658.1.2 = zext i8 %625 to i32
  %xor.i659.1.2 = xor i32 %conv44.i653.1.2, %conv49.i658.1.2
  %conv50.i660.1.2 = trunc i32 %xor.i659.1.2 to i8
  %scevgep98.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %612, i64 0, i64 0, i64 1
  store i8 %conv50.i660.1.2, i8* %scevgep98.1.2, align 1
  %626 = load i8, i8* %arrayidx56.i666.2, align 1
  %conv57.i667.1.2 = zext i8 %626 to i32
  %xor58.i668.1.2 = xor i32 %conv57.i667.1.2, 1
  %conv59.i669.1.2 = trunc i32 %xor58.i668.1.2 to i8
  %scevgep95.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %611, i64 0, i64 0, i64 1
  %627 = load i8, i8* %scevgep95.1.2, align 1
  %call64.i674.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i669.1.2, i8 zeroext %627) #3
  %scevgep102.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %613, i64 0, i64 0, i64 1
  store i8 %call64.i674.1.2, i8* %scevgep102.1.2, align 1
  %628 = load i8, i8* %arrayidx70.i680.2, align 1
  %scevgep99.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %612, i64 0, i64 0, i64 1
  %629 = load i8, i8* %scevgep99.1.2, align 1
  %call75.i685.1.2 = call zeroext i8 @mult(i8 zeroext %628, i8 zeroext %629) #3
  %scevgep106.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %614, i64 0, i64 0, i64 1
  store i8 %call75.i685.1.2, i8* %scevgep106.1.2, align 1
  %scevgep103.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %613, i64 0, i64 0, i64 1
  %630 = load i8, i8* %scevgep103.1.2, align 1
  %conv84.i694.1.2 = zext i8 %630 to i32
  %scevgep107.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %614, i64 0, i64 0, i64 1
  %631 = load i8, i8* %scevgep107.1.2, align 1
  %conv89.i699.1.2 = zext i8 %631 to i32
  %xor90.i700.1.2 = xor i32 %conv84.i694.1.2, %conv89.i699.1.2
  %conv91.i701.1.2 = trunc i32 %xor90.i700.1.2 to i8
  %scevgep110.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %615, i64 0, i64 0, i64 1
  store i8 %conv91.i701.1.2, i8* %scevgep110.1.2, align 1
  %scevgep91.3.2 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 3
  %632 = load i8, i8* %scevgep91.3.2, align 1
  %conv44.i653.3.2 = zext i8 %632 to i32
  %scevgep94.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %611, i64 0, i64 0, i64 3
  %633 = load i8, i8* %scevgep94.3.2, align 1
  %conv49.i658.3.2 = zext i8 %633 to i32
  %xor.i659.3.2 = xor i32 %conv44.i653.3.2, %conv49.i658.3.2
  %conv50.i660.3.2 = trunc i32 %xor.i659.3.2 to i8
  %scevgep98.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %612, i64 0, i64 0, i64 3
  store i8 %conv50.i660.3.2, i8* %scevgep98.3.2, align 1
  %634 = load i8, i8* %arrayidx56.i666.2, align 1
  %conv57.i667.3.2 = zext i8 %634 to i32
  %xor58.i668.3.2 = xor i32 %conv57.i667.3.2, 1
  %conv59.i669.3.2 = trunc i32 %xor58.i668.3.2 to i8
  %scevgep95.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %611, i64 0, i64 0, i64 3
  %635 = load i8, i8* %scevgep95.3.2, align 1
  %call64.i674.3.2 = call zeroext i8 @mult(i8 zeroext %conv59.i669.3.2, i8 zeroext %635) #3
  %scevgep102.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %613, i64 0, i64 0, i64 3
  store i8 %call64.i674.3.2, i8* %scevgep102.3.2, align 1
  %636 = load i8, i8* %arrayidx70.i680.2, align 1
  %scevgep99.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %612, i64 0, i64 0, i64 3
  %637 = load i8, i8* %scevgep99.3.2, align 1
  %call75.i685.3.2 = call zeroext i8 @mult(i8 zeroext %636, i8 zeroext %637) #3
  %scevgep106.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %614, i64 0, i64 0, i64 3
  store i8 %call75.i685.3.2, i8* %scevgep106.3.2, align 1
  %scevgep103.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %613, i64 0, i64 0, i64 3
  %638 = load i8, i8* %scevgep103.3.2, align 1
  %conv84.i694.3.2 = zext i8 %638 to i32
  %scevgep107.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %614, i64 0, i64 0, i64 3
  %639 = load i8, i8* %scevgep107.3.2, align 1
  %conv89.i699.3.2 = zext i8 %639 to i32
  %xor90.i700.3.2 = xor i32 %conv84.i694.3.2, %conv89.i699.3.2
  %conv91.i701.3.2 = trunc i32 %xor90.i700.3.2 to i8
  %scevgep110.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %615, i64 0, i64 0, i64 3
  store i8 %conv91.i701.3.2, i8* %scevgep110.3.2, align 1
  %scevgep93.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %611, i64 0, i64 1, i64 0
  %640 = bitcast i8* %scevgep93.2 to [4 x [4 x i8]]*
  %scevgep97.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %612, i64 0, i64 1, i64 0
  %641 = bitcast i8* %scevgep97.2 to [4 x [4 x i8]]*
  %scevgep101.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %613, i64 0, i64 1, i64 0
  %642 = bitcast i8* %scevgep101.2 to [4 x [4 x i8]]*
  %scevgep105.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %614, i64 0, i64 1, i64 0
  %643 = bitcast i8* %scevgep105.2 to [4 x [4 x i8]]*
  %scevgep109.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %615, i64 0, i64 1, i64 0
  %644 = bitcast i8* %scevgep109.2 to [4 x [4 x i8]]*
  %arrayidx56.i666.3 = getelementptr inbounds i8, i8* %arraydecay18, i64 3
  %arrayidx70.i680.3 = getelementptr inbounds i8, i8* %arraydecay18, i64 3
  %scevgep91.3455 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 0
  %645 = load i8, i8* %scevgep91.3455, align 1
  %conv44.i653.3456 = zext i8 %645 to i32
  %scevgep94.3457 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %640, i64 0, i64 0, i64 0
  %646 = load i8, i8* %scevgep94.3457, align 1
  %conv49.i658.3458 = zext i8 %646 to i32
  %xor.i659.3459 = xor i32 %conv44.i653.3456, %conv49.i658.3458
  %conv50.i660.3460 = trunc i32 %xor.i659.3459 to i8
  %scevgep98.3461 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %641, i64 0, i64 0, i64 0
  store i8 %conv50.i660.3460, i8* %scevgep98.3461, align 1
  %647 = load i8, i8* %arrayidx56.i666.3, align 1
  %conv57.i667.3462 = zext i8 %647 to i32
  %xor58.i668.3463 = xor i32 %conv57.i667.3462, 1
  %conv59.i669.3464 = trunc i32 %xor58.i668.3463 to i8
  %scevgep95.3465 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %640, i64 0, i64 0, i64 0
  %648 = load i8, i8* %scevgep95.3465, align 1
  %call64.i674.3466 = call zeroext i8 @mult(i8 zeroext %conv59.i669.3464, i8 zeroext %648) #3
  %scevgep102.3467 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %642, i64 0, i64 0, i64 0
  store i8 %call64.i674.3466, i8* %scevgep102.3467, align 1
  %649 = load i8, i8* %arrayidx70.i680.3, align 1
  %scevgep99.3468 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %641, i64 0, i64 0, i64 0
  %650 = load i8, i8* %scevgep99.3468, align 1
  %call75.i685.3469 = call zeroext i8 @mult(i8 zeroext %649, i8 zeroext %650) #3
  %scevgep106.3470 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %643, i64 0, i64 0, i64 0
  store i8 %call75.i685.3469, i8* %scevgep106.3470, align 1
  %scevgep103.3471 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %642, i64 0, i64 0, i64 0
  %651 = load i8, i8* %scevgep103.3471, align 1
  %conv84.i694.3472 = zext i8 %651 to i32
  %scevgep107.3473 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %643, i64 0, i64 0, i64 0
  %652 = load i8, i8* %scevgep107.3473, align 1
  %conv89.i699.3474 = zext i8 %652 to i32
  %xor90.i700.3475 = xor i32 %conv84.i694.3472, %conv89.i699.3474
  %conv91.i701.3476 = trunc i32 %xor90.i700.3475 to i8
  %scevgep110.3477 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %644, i64 0, i64 0, i64 0
  store i8 %conv91.i701.3476, i8* %scevgep110.3477, align 1
  %scevgep91.1.3 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 1
  %653 = load i8, i8* %scevgep91.1.3, align 1
  %conv44.i653.1.3 = zext i8 %653 to i32
  %scevgep94.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %640, i64 0, i64 0, i64 1
  %654 = load i8, i8* %scevgep94.1.3, align 1
  %conv49.i658.1.3 = zext i8 %654 to i32
  %xor.i659.1.3 = xor i32 %conv44.i653.1.3, %conv49.i658.1.3
  %conv50.i660.1.3 = trunc i32 %xor.i659.1.3 to i8
  %scevgep98.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %641, i64 0, i64 0, i64 1
  store i8 %conv50.i660.1.3, i8* %scevgep98.1.3, align 1
  %655 = load i8, i8* %arrayidx56.i666.3, align 1
  %conv57.i667.1.3 = zext i8 %655 to i32
  %xor58.i668.1.3 = xor i32 %conv57.i667.1.3, 1
  %conv59.i669.1.3 = trunc i32 %xor58.i668.1.3 to i8
  %scevgep95.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %640, i64 0, i64 0, i64 1
  %656 = load i8, i8* %scevgep95.1.3, align 1
  %call64.i674.1.3 = call zeroext i8 @mult(i8 zeroext %conv59.i669.1.3, i8 zeroext %656) #3
  %scevgep102.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %642, i64 0, i64 0, i64 1
  store i8 %call64.i674.1.3, i8* %scevgep102.1.3, align 1
  %657 = load i8, i8* %arrayidx70.i680.3, align 1
  %scevgep99.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %641, i64 0, i64 0, i64 1
  %658 = load i8, i8* %scevgep99.1.3, align 1
  %call75.i685.1.3 = call zeroext i8 @mult(i8 zeroext %657, i8 zeroext %658) #3
  %scevgep106.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %643, i64 0, i64 0, i64 1
  store i8 %call75.i685.1.3, i8* %scevgep106.1.3, align 1
  %scevgep103.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %642, i64 0, i64 0, i64 1
  %659 = load i8, i8* %scevgep103.1.3, align 1
  %conv84.i694.1.3 = zext i8 %659 to i32
  %scevgep107.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %643, i64 0, i64 0, i64 1
  %660 = load i8, i8* %scevgep107.1.3, align 1
  %conv89.i699.1.3 = zext i8 %660 to i32
  %xor90.i700.1.3 = xor i32 %conv84.i694.1.3, %conv89.i699.1.3
  %conv91.i701.1.3 = trunc i32 %xor90.i700.1.3 to i8
  %scevgep110.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %644, i64 0, i64 0, i64 1
  store i8 %conv91.i701.1.3, i8* %scevgep110.1.3, align 1
  %scevgep91.2.3 = getelementptr [4 x i8], [4 x i8]* %z, i64 0, i64 2
  %661 = load i8, i8* %scevgep91.2.3, align 1
  %conv44.i653.2.3 = zext i8 %661 to i32
  %scevgep94.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %640, i64 0, i64 0, i64 2
  %662 = load i8, i8* %scevgep94.2.3, align 1
  %conv49.i658.2.3 = zext i8 %662 to i32
  %xor.i659.2.3 = xor i32 %conv44.i653.2.3, %conv49.i658.2.3
  %conv50.i660.2.3 = trunc i32 %xor.i659.2.3 to i8
  %scevgep98.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %641, i64 0, i64 0, i64 2
  store i8 %conv50.i660.2.3, i8* %scevgep98.2.3, align 1
  %663 = load i8, i8* %arrayidx56.i666.3, align 1
  %conv57.i667.2.3 = zext i8 %663 to i32
  %xor58.i668.2.3 = xor i32 %conv57.i667.2.3, 1
  %conv59.i669.2.3 = trunc i32 %xor58.i668.2.3 to i8
  %scevgep95.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %640, i64 0, i64 0, i64 2
  %664 = load i8, i8* %scevgep95.2.3, align 1
  %call64.i674.2.3 = call zeroext i8 @mult(i8 zeroext %conv59.i669.2.3, i8 zeroext %664) #3
  %scevgep102.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %642, i64 0, i64 0, i64 2
  store i8 %call64.i674.2.3, i8* %scevgep102.2.3, align 1
  %665 = load i8, i8* %arrayidx70.i680.3, align 1
  %scevgep99.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %641, i64 0, i64 0, i64 2
  %666 = load i8, i8* %scevgep99.2.3, align 1
  %call75.i685.2.3 = call zeroext i8 @mult(i8 zeroext %665, i8 zeroext %666) #3
  %scevgep106.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %643, i64 0, i64 0, i64 2
  store i8 %call75.i685.2.3, i8* %scevgep106.2.3, align 1
  %scevgep103.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %642, i64 0, i64 0, i64 2
  %667 = load i8, i8* %scevgep103.2.3, align 1
  %conv84.i694.2.3 = zext i8 %667 to i32
  %scevgep107.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %643, i64 0, i64 0, i64 2
  %668 = load i8, i8* %scevgep107.2.3, align 1
  %conv89.i699.2.3 = zext i8 %668 to i32
  %xor90.i700.2.3 = xor i32 %conv84.i694.2.3, %conv89.i699.2.3
  %conv91.i701.2.3 = trunc i32 %xor90.i700.2.3 to i8
  %scevgep110.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %644, i64 0, i64 0, i64 2
  store i8 %conv91.i701.2.3, i8* %scevgep110.2.3, align 1
  %669 = load i8, i8* %arraydecay18, align 1
  %670 = load i8, i8* %arraydecay19, align 1
  %call111.i718 = call zeroext i8 @mult(i8 zeroext %669, i8 zeroext %670) #3
  store i8 %call111.i718, i8* %y, align 1
  %scevgep82.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 1
  %671 = load i8, i8* %scevgep82.1, align 1
  %conv126.i730.1 = zext i8 %671 to i32
  %672 = load i8, i8* %y, align 1
  %conv129.i733.1 = zext i8 %672 to i32
  %xor130.i734.1 = xor i32 %conv129.i733.1, %conv126.i730.1
  %conv131.i735.1 = trunc i32 %xor130.i734.1 to i8
  store i8 %conv131.i735.1, i8* %y, align 1
  %scevgep82.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 2
  %673 = load i8, i8* %scevgep82.2, align 1
  %conv126.i730.2 = zext i8 %673 to i32
  %674 = load i8, i8* %y, align 1
  %conv129.i733.2 = zext i8 %674 to i32
  %xor130.i734.2 = xor i32 %conv129.i733.2, %conv126.i730.2
  %conv131.i735.2 = trunc i32 %xor130.i734.2 to i8
  store i8 %conv131.i735.2, i8* %y, align 1
  %scevgep82.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 3
  %675 = load i8, i8* %scevgep82.3, align 1
  %conv126.i730.3 = zext i8 %675 to i32
  %676 = load i8, i8* %y, align 1
  %conv129.i733.3 = zext i8 %676 to i32
  %xor130.i734.3 = xor i32 %conv129.i733.3, %conv126.i730.3
  %conv131.i735.3 = trunc i32 %xor130.i734.3 to i8
  store i8 %conv131.i735.3, i8* %y, align 1
  %scevgep81 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 1, i64 0
  %677 = bitcast i8* %scevgep81 to [4 x [4 x i8]]*
  %arrayidx108.i715.1 = getelementptr inbounds i8, i8* %arraydecay18, i64 1
  %678 = load i8, i8* %arrayidx108.i715.1, align 1
  %arrayidx110.i717.1 = getelementptr inbounds i8, i8* %arraydecay19, i64 1
  %679 = load i8, i8* %arrayidx110.i717.1, align 1
  %call111.i718.1 = call zeroext i8 @mult(i8 zeroext %678, i8 zeroext %679) #3
  %arrayidx113.i720.1 = getelementptr inbounds i8, i8* %y, i64 1
  store i8 %call111.i718.1, i8* %arrayidx113.i720.1, align 1
  %arrayidx128.i732.1 = getelementptr inbounds i8, i8* %y, i64 1
  %scevgep82.1374 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %677, i64 0, i64 0, i64 0
  %680 = load i8, i8* %scevgep82.1374, align 1
  %conv126.i730.1375 = zext i8 %680 to i32
  %681 = load i8, i8* %arrayidx128.i732.1, align 1
  %conv129.i733.1376 = zext i8 %681 to i32
  %xor130.i734.1377 = xor i32 %conv129.i733.1376, %conv126.i730.1375
  %conv131.i735.1378 = trunc i32 %xor130.i734.1377 to i8
  store i8 %conv131.i735.1378, i8* %arrayidx128.i732.1, align 1
  %scevgep82.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %677, i64 0, i64 0, i64 2
  %682 = load i8, i8* %scevgep82.2.1, align 1
  %conv126.i730.2.1 = zext i8 %682 to i32
  %683 = load i8, i8* %arrayidx128.i732.1, align 1
  %conv129.i733.2.1 = zext i8 %683 to i32
  %xor130.i734.2.1 = xor i32 %conv129.i733.2.1, %conv126.i730.2.1
  %conv131.i735.2.1 = trunc i32 %xor130.i734.2.1 to i8
  store i8 %conv131.i735.2.1, i8* %arrayidx128.i732.1, align 1
  %scevgep82.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %677, i64 0, i64 0, i64 3
  %684 = load i8, i8* %scevgep82.3.1, align 1
  %conv126.i730.3.1 = zext i8 %684 to i32
  %685 = load i8, i8* %arrayidx128.i732.1, align 1
  %conv129.i733.3.1 = zext i8 %685 to i32
  %xor130.i734.3.1 = xor i32 %conv129.i733.3.1, %conv126.i730.3.1
  %conv131.i735.3.1 = trunc i32 %xor130.i734.3.1 to i8
  store i8 %conv131.i735.3.1, i8* %arrayidx128.i732.1, align 1
  %scevgep81.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %677, i64 0, i64 1, i64 0
  %686 = bitcast i8* %scevgep81.1 to [4 x [4 x i8]]*
  %arrayidx108.i715.2 = getelementptr inbounds i8, i8* %arraydecay18, i64 2
  %687 = load i8, i8* %arrayidx108.i715.2, align 1
  %arrayidx110.i717.2 = getelementptr inbounds i8, i8* %arraydecay19, i64 2
  %688 = load i8, i8* %arrayidx110.i717.2, align 1
  %call111.i718.2 = call zeroext i8 @mult(i8 zeroext %687, i8 zeroext %688) #3
  %arrayidx113.i720.2 = getelementptr inbounds i8, i8* %y, i64 2
  store i8 %call111.i718.2, i8* %arrayidx113.i720.2, align 1
  %arrayidx128.i732.2 = getelementptr inbounds i8, i8* %y, i64 2
  %scevgep82.2383 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %686, i64 0, i64 0, i64 0
  %689 = load i8, i8* %scevgep82.2383, align 1
  %conv126.i730.2384 = zext i8 %689 to i32
  %690 = load i8, i8* %arrayidx128.i732.2, align 1
  %conv129.i733.2385 = zext i8 %690 to i32
  %xor130.i734.2386 = xor i32 %conv129.i733.2385, %conv126.i730.2384
  %conv131.i735.2387 = trunc i32 %xor130.i734.2386 to i8
  store i8 %conv131.i735.2387, i8* %arrayidx128.i732.2, align 1
  %scevgep82.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %686, i64 0, i64 0, i64 1
  %691 = load i8, i8* %scevgep82.1.2, align 1
  %conv126.i730.1.2 = zext i8 %691 to i32
  %692 = load i8, i8* %arrayidx128.i732.2, align 1
  %conv129.i733.1.2 = zext i8 %692 to i32
  %xor130.i734.1.2 = xor i32 %conv129.i733.1.2, %conv126.i730.1.2
  %conv131.i735.1.2 = trunc i32 %xor130.i734.1.2 to i8
  store i8 %conv131.i735.1.2, i8* %arrayidx128.i732.2, align 1
  %scevgep82.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %686, i64 0, i64 0, i64 3
  %693 = load i8, i8* %scevgep82.3.2, align 1
  %conv126.i730.3.2 = zext i8 %693 to i32
  %694 = load i8, i8* %arrayidx128.i732.2, align 1
  %conv129.i733.3.2 = zext i8 %694 to i32
  %xor130.i734.3.2 = xor i32 %conv129.i733.3.2, %conv126.i730.3.2
  %conv131.i735.3.2 = trunc i32 %xor130.i734.3.2 to i8
  store i8 %conv131.i735.3.2, i8* %arrayidx128.i732.2, align 1
  %scevgep81.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %686, i64 0, i64 1, i64 0
  %695 = bitcast i8* %scevgep81.2 to [4 x [4 x i8]]*
  %arrayidx108.i715.3 = getelementptr inbounds i8, i8* %arraydecay18, i64 3
  %696 = load i8, i8* %arrayidx108.i715.3, align 1
  %arrayidx110.i717.3 = getelementptr inbounds i8, i8* %arraydecay19, i64 3
  %697 = load i8, i8* %arrayidx110.i717.3, align 1
  %call111.i718.3 = call zeroext i8 @mult(i8 zeroext %696, i8 zeroext %697) #3
  %arrayidx113.i720.3 = getelementptr inbounds i8, i8* %y, i64 3
  store i8 %call111.i718.3, i8* %arrayidx113.i720.3, align 1
  %arrayidx128.i732.3 = getelementptr inbounds i8, i8* %y, i64 3
  %scevgep82.3392 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %695, i64 0, i64 0, i64 0
  %698 = load i8, i8* %scevgep82.3392, align 1
  %conv126.i730.3393 = zext i8 %698 to i32
  %699 = load i8, i8* %arrayidx128.i732.3, align 1
  %conv129.i733.3394 = zext i8 %699 to i32
  %xor130.i734.3395 = xor i32 %conv129.i733.3394, %conv126.i730.3393
  %conv131.i735.3396 = trunc i32 %xor130.i734.3395 to i8
  store i8 %conv131.i735.3396, i8* %arrayidx128.i732.3, align 1
  %scevgep82.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %695, i64 0, i64 0, i64 1
  %700 = load i8, i8* %scevgep82.1.3, align 1
  %conv126.i730.1.3 = zext i8 %700 to i32
  %701 = load i8, i8* %arrayidx128.i732.3, align 1
  %conv129.i733.1.3 = zext i8 %701 to i32
  %xor130.i734.1.3 = xor i32 %conv129.i733.1.3, %conv126.i730.1.3
  %conv131.i735.1.3 = trunc i32 %xor130.i734.1.3 to i8
  store i8 %conv131.i735.1.3, i8* %arrayidx128.i732.3, align 1
  %scevgep82.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %695, i64 0, i64 0, i64 2
  %702 = load i8, i8* %scevgep82.2.3, align 1
  %conv126.i730.2.3 = zext i8 %702 to i32
  %703 = load i8, i8* %arrayidx128.i732.3, align 1
  %conv129.i733.2.3 = zext i8 %703 to i32
  %xor130.i734.2.3 = xor i32 %conv129.i733.2.3, %conv126.i730.2.3
  %conv131.i735.2.3 = trunc i32 %xor130.i734.2.3 to i8
  store i8 %conv131.i735.2.3, i8* %arrayidx128.i732.3, align 1
  %call139.i741 = call zeroext i8 @mult(i8 zeroext %call.i588, i8 zeroext %call1.i589) #3
  %conv140.i742 = zext i8 %call139.i741 to i32
  %704 = load i8, i8* %y, align 1
  %scevgep72.1 = getelementptr i8, i8* %y, i64 1
  %705 = load i8, i8* %scevgep72.1, align 1
  %conv.i.i172.i749.1 = zext i8 %705 to i32
  %conv1.i.i173.i750.1 = zext i8 %704 to i32
  %xor.i.i174.i751.1 = xor i32 %conv1.i.i173.i750.1, %conv.i.i172.i749.1
  %conv2.i.i175.i752.1 = trunc i32 %xor.i.i174.i751.1 to i8
  %scevgep72.2 = getelementptr i8, i8* %y, i64 2
  %706 = load i8, i8* %scevgep72.2, align 1
  %conv.i.i172.i749.2 = zext i8 %706 to i32
  %conv1.i.i173.i750.2 = zext i8 %conv2.i.i175.i752.1 to i32
  %xor.i.i174.i751.2 = xor i32 %conv1.i.i173.i750.2, %conv.i.i172.i749.2
  %conv2.i.i175.i752.2 = trunc i32 %xor.i.i174.i751.2 to i8
  %scevgep72.3 = getelementptr i8, i8* %y, i64 3
  %707 = load i8, i8* %scevgep72.3, align 1
  %conv.i.i172.i749.3 = zext i8 %707 to i32
  %conv1.i.i173.i750.3 = zext i8 %conv2.i.i175.i752.2 to i32
  %xor.i.i174.i751.3 = xor i32 %conv1.i.i173.i750.3, %conv.i.i172.i749.3
  %conv2.i.i175.i752.3 = trunc i32 %xor.i.i174.i751.3 to i8
  %conv142.i755 = zext i8 %conv2.i.i175.i752.3 to i32
  %cmp143.i756 = icmp eq i32 %conv140.i742, %conv142.i755
  call void @assert(i1 zeroext %cmp143.i756) #3
  %call.i760 = call zeroext i8 @square(i8 zeroext %call) #3
  %call1.i761 = call zeroext i8 @mult(i8 zeroext %call.i760, i8 zeroext %call) #3
  %call2.i = call zeroext i8 @exp4(i8 zeroext %call1.i761) #3
  %call3.i = call zeroext i8 @mult(i8 zeroext %call1.i761, i8 zeroext %call2.i) #3
  %call4.i = call zeroext i8 @exp16(i8 zeroext %call3.i) #3
  %call5.i = call zeroext i8 @mult(i8 zeroext %call4.i, i8 zeroext %call2.i) #3
  %call6.i = call zeroext i8 @mult(i8 zeroext %call5.i, i8 zeroext %call.i760) #3
  %conv21 = zext i8 %call6.i to i32
  %708 = load i8, i8* %y, align 1
  %scevgep.1 = getelementptr i8, i8* %y, i64 1
  %709 = load i8, i8* %scevgep.1, align 1
  %conv.i.i772.1 = zext i8 %709 to i32
  %conv1.i.i773.1 = zext i8 %708 to i32
  %xor.i.i774.1 = xor i32 %conv1.i.i773.1, %conv.i.i772.1
  %conv2.i.i775.1 = trunc i32 %xor.i.i774.1 to i8
  %scevgep.2 = getelementptr i8, i8* %y, i64 2
  %710 = load i8, i8* %scevgep.2, align 1
  %conv.i.i772.2 = zext i8 %710 to i32
  %conv1.i.i773.2 = zext i8 %conv2.i.i775.1 to i32
  %xor.i.i774.2 = xor i32 %conv1.i.i773.2, %conv.i.i772.2
  %conv2.i.i775.2 = trunc i32 %xor.i.i774.2 to i8
  %scevgep.3 = getelementptr i8, i8* %y, i64 3
  %711 = load i8, i8* %scevgep.3, align 1
  %conv.i.i772.3 = zext i8 %711 to i32
  %conv1.i.i773.3 = zext i8 %conv2.i.i775.2 to i32
  %xor.i.i774.3 = xor i32 %conv1.i.i773.3, %conv.i.i772.3
  %conv2.i.i775.3 = trunc i32 %xor.i.i774.3 to i8
  %conv23 = zext i8 %conv2.i.i775.3 to i32
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
  %s.i = alloca [4 x [4 x i8]], align 16
  %p0.i = alloca [4 x [4 x i8]], align 16
  %p1.i = alloca [4 x [4 x i8]], align 16
  %z.i = alloca [4 x [4 x i8]], align 16
  %z = alloca [4 x [4 x i8]], align 16
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %scevgep106.1 = getelementptr i8, i8* %x, i64 1
  %1 = load i8, i8* %scevgep106.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep106.2 = getelementptr i8, i8* %x, i64 2
  %2 = load i8, i8* %scevgep106.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %scevgep106.3 = getelementptr i8, i8* %x, i64 3
  %3 = load i8, i8* %scevgep106.3, align 1
  %conv.i.i.3 = zext i8 %3 to i32
  %conv1.i.i.3 = zext i8 %conv2.i.i.2 to i32
  %xor.i.i.3 = xor i32 %conv1.i.i.3, %conv.i.i.3
  %conv2.i.i.3 = trunc i32 %xor.i.i.3 to i8
  %conv2 = zext i8 %conv2.i.i.3 to i32
  %cmp = icmp eq i32 %conv, %conv2
  call void @assume(i1 zeroext %cmp)
  %4 = load i8, i8* %x, align 1
  %scevgep102 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 0
  store i8 %4, i8* %scevgep102, align 1
  %scevgep101.1 = getelementptr i8, i8* %x, i64 1
  %5 = load i8, i8* %scevgep101.1, align 1
  %scevgep102.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 1
  store i8 %5, i8* %scevgep102.1, align 1
  %scevgep101.2 = getelementptr i8, i8* %x, i64 2
  %6 = load i8, i8* %scevgep101.2, align 1
  %scevgep102.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 2
  store i8 %6, i8* %scevgep102.2, align 1
  %scevgep101.3 = getelementptr i8, i8* %x, i64 3
  %7 = load i8, i8* %scevgep101.3, align 1
  %scevgep102.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 3
  store i8 %7, i8* %scevgep102.3, align 1
  %arrayidx6 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx6, i64 0, i64 0
  %arrayidx9 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 1
  %arraydecay10 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx9, i64 0, i64 0
  %call.i22 = call zeroext i8 (...) @rand() #3
  %call1.i = call zeroext i8 (...) @rand() #3
  %conv.i = zext i8 %call.i22 to i32
  %8 = load i8, i8* %x, align 1
  %scevgep34.1 = getelementptr i8, i8* %x, i64 1
  %9 = load i8, i8* %scevgep34.1, align 1
  %conv.i.i.i.1 = zext i8 %9 to i32
  %conv1.i.i.i.1 = zext i8 %8 to i32
  %xor.i.i.i.1 = xor i32 %conv1.i.i.i.1, %conv.i.i.i.1
  %conv2.i.i.i.1 = trunc i32 %xor.i.i.i.1 to i8
  %scevgep34.2 = getelementptr i8, i8* %x, i64 2
  %10 = load i8, i8* %scevgep34.2, align 1
  %conv.i.i.i.2 = zext i8 %10 to i32
  %conv1.i.i.i.2 = zext i8 %conv2.i.i.i.1 to i32
  %xor.i.i.i.2 = xor i32 %conv1.i.i.i.2, %conv.i.i.i.2
  %conv2.i.i.i.2 = trunc i32 %xor.i.i.i.2 to i8
  %scevgep34.3 = getelementptr i8, i8* %x, i64 3
  %11 = load i8, i8* %scevgep34.3, align 1
  %conv.i.i.i.3 = zext i8 %11 to i32
  %conv1.i.i.i.3 = zext i8 %conv2.i.i.i.2 to i32
  %xor.i.i.i.3 = xor i32 %conv1.i.i.i.3, %conv.i.i.i.3
  %conv2.i.i.i.3 = trunc i32 %xor.i.i.i.3 to i8
  %conv3.i = zext i8 %conv2.i.i.i.3 to i32
  %cmp.i23 = icmp eq i32 %conv.i, %conv3.i
  call void @assume(i1 zeroext %cmp.i23) #3
  %conv5.i = zext i8 %call1.i to i32
  %scevgep40 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 0
  %12 = load i8, i8* %scevgep40, align 1
  %scevgep40.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 1
  %13 = load i8, i8* %scevgep40.1, align 1
  %conv.i.i155.i.1 = zext i8 %13 to i32
  %conv1.i.i156.i.1 = zext i8 %12 to i32
  %xor.i.i157.i.1 = xor i32 %conv1.i.i156.i.1, %conv.i.i155.i.1
  %conv2.i.i158.i.1 = trunc i32 %xor.i.i157.i.1 to i8
  %scevgep40.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 2
  %14 = load i8, i8* %scevgep40.2, align 1
  %conv.i.i155.i.2 = zext i8 %14 to i32
  %conv1.i.i156.i.2 = zext i8 %conv2.i.i158.i.1 to i32
  %xor.i.i157.i.2 = xor i32 %conv1.i.i156.i.2, %conv.i.i155.i.2
  %conv2.i.i158.i.2 = trunc i32 %xor.i.i157.i.2 to i8
  %scevgep40.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 3
  %15 = load i8, i8* %scevgep40.3, align 1
  %conv.i.i155.i.3 = zext i8 %15 to i32
  %conv1.i.i156.i.3 = zext i8 %conv2.i.i158.i.2 to i32
  %xor.i.i157.i.3 = xor i32 %conv1.i.i156.i.3, %conv.i.i155.i.3
  %conv2.i.i158.i.3 = trunc i32 %xor.i.i157.i.3 to i8
  %conv7.i = zext i8 %conv2.i.i158.i.3 to i32
  %cmp8.i = icmp eq i32 %conv5.i, %conv7.i
  call void @assume(i1 zeroext %cmp8.i) #3
  %call16.i = call zeroext i8 (...) @rand() #3
  %scevgep46 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i, i8* %scevgep46, align 1
  %scevgep47 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %16 = load i8, i8* %scevgep47, align 1
  %scevgep48 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %16, i8* %scevgep48, align 1
  %call16.i.1557 = call zeroext i8 (...) @rand() #3
  %scevgep46.1558 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  store i8 %call16.i.1557, i8* %scevgep46.1558, align 1
  %scevgep47.1559 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %17 = load i8, i8* %scevgep47.1559, align 1
  %scevgep48.1560 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 2, i64 0
  store i8 %17, i8* %scevgep48.1560, align 1
  %call16.i.2562 = call zeroext i8 (...) @rand() #3
  %scevgep46.2563 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  store i8 %call16.i.2562, i8* %scevgep46.2563, align 1
  %scevgep47.2564 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %18 = load i8, i8* %scevgep47.2564, align 1
  %scevgep48.2565 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 3, i64 0
  store i8 %18, i8* %scevgep48.2565, align 1
  %scevgep43 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 1
  %19 = bitcast i8* %scevgep43 to [4 x [4 x i8]]*
  %call16.i.1 = call zeroext i8 (...) @rand() #3
  %scevgep46.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %19, i64 0, i64 0, i64 1
  store i8 %call16.i.1, i8* %scevgep46.1, align 1
  %scevgep47.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %19, i64 0, i64 0, i64 1
  %20 = load i8, i8* %scevgep47.1, align 1
  %scevgep48.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %19, i64 0, i64 1, i64 0
  store i8 %20, i8* %scevgep48.1, align 1
  %call16.i.1.1552 = call zeroext i8 (...) @rand() #3
  %scevgep46.1.1553 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %19, i64 0, i64 0, i64 2
  store i8 %call16.i.1.1552, i8* %scevgep46.1.1553, align 1
  %scevgep47.1.1554 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %19, i64 0, i64 0, i64 2
  %21 = load i8, i8* %scevgep47.1.1554, align 1
  %scevgep48.1.1555 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %19, i64 0, i64 2, i64 0
  store i8 %21, i8* %scevgep48.1.1555, align 1
  %scevgep43.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %19, i64 0, i64 1, i64 1
  %22 = bitcast i8* %scevgep43.1 to [4 x [4 x i8]]*
  %call16.i.2 = call zeroext i8 (...) @rand() #3
  %scevgep46.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %22, i64 0, i64 0, i64 1
  store i8 %call16.i.2, i8* %scevgep46.2, align 1
  %scevgep47.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %22, i64 0, i64 0, i64 1
  %23 = load i8, i8* %scevgep47.2, align 1
  %scevgep48.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %22, i64 0, i64 1, i64 0
  store i8 %23, i8* %scevgep48.2, align 1
  %scevgep59.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 1
  %24 = load i8, i8* %scevgep59.1, align 1
  %conv44.i.1 = zext i8 %24 to i32
  %scevgep62.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %25 = load i8, i8* %scevgep62.1, align 1
  %conv49.i.1 = zext i8 %25 to i32
  %xor.i.1 = xor i32 %conv44.i.1, %conv49.i.1
  %conv50.i.1 = trunc i32 %xor.i.1 to i8
  %scevgep66.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i.1, i8* %scevgep66.1, align 1
  %26 = load i8, i8* %x, align 1
  %conv57.i.1 = zext i8 %26 to i32
  %xor58.i.1 = xor i32 %conv57.i.1, 1
  %conv59.i.1 = trunc i32 %xor58.i.1 to i8
  %scevgep63.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %27 = load i8, i8* %scevgep63.1, align 1
  %call64.i.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.1, i8 zeroext %27) #3
  %scevgep70.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i.1, i8* %scevgep70.1, align 1
  %28 = load i8, i8* %x, align 1
  %scevgep67.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 1
  %29 = load i8, i8* %scevgep67.1, align 1
  %call75.i.1 = call zeroext i8 @mult(i8 zeroext %28, i8 zeroext %29) #3
  %scevgep74.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i.1, i8* %scevgep74.1, align 1
  %scevgep71.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %30 = load i8, i8* %scevgep71.1, align 1
  %conv84.i.1 = zext i8 %30 to i32
  %scevgep75.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %31 = load i8, i8* %scevgep75.1, align 1
  %conv89.i.1 = zext i8 %31 to i32
  %xor90.i.1 = xor i32 %conv84.i.1, %conv89.i.1
  %conv91.i.1 = trunc i32 %xor90.i.1 to i8
  %scevgep78.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i.1, i8* %scevgep78.1, align 1
  %scevgep59.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 2
  %32 = load i8, i8* %scevgep59.2, align 1
  %conv44.i.2 = zext i8 %32 to i32
  %scevgep62.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %33 = load i8, i8* %scevgep62.2, align 1
  %conv49.i.2 = zext i8 %33 to i32
  %xor.i.2 = xor i32 %conv44.i.2, %conv49.i.2
  %conv50.i.2 = trunc i32 %xor.i.2 to i8
  %scevgep66.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 2
  store i8 %conv50.i.2, i8* %scevgep66.2, align 1
  %34 = load i8, i8* %x, align 1
  %conv57.i.2 = zext i8 %34 to i32
  %xor58.i.2 = xor i32 %conv57.i.2, 1
  %conv59.i.2 = trunc i32 %xor58.i.2 to i8
  %scevgep63.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %35 = load i8, i8* %scevgep63.2, align 1
  %call64.i.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.2, i8 zeroext %35) #3
  %scevgep70.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 2
  store i8 %call64.i.2, i8* %scevgep70.2, align 1
  %36 = load i8, i8* %x, align 1
  %scevgep67.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 2
  %37 = load i8, i8* %scevgep67.2, align 1
  %call75.i.2 = call zeroext i8 @mult(i8 zeroext %36, i8 zeroext %37) #3
  %scevgep74.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 2
  store i8 %call75.i.2, i8* %scevgep74.2, align 1
  %scevgep71.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 2
  %38 = load i8, i8* %scevgep71.2, align 1
  %conv84.i.2 = zext i8 %38 to i32
  %scevgep75.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 2
  %39 = load i8, i8* %scevgep75.2, align 1
  %conv89.i.2 = zext i8 %39 to i32
  %xor90.i.2 = xor i32 %conv84.i.2, %conv89.i.2
  %conv91.i.2 = trunc i32 %xor90.i.2 to i8
  %scevgep78.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 2
  store i8 %conv91.i.2, i8* %scevgep78.2, align 1
  %scevgep59.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 3
  %40 = load i8, i8* %scevgep59.3, align 1
  %conv44.i.3 = zext i8 %40 to i32
  %scevgep62.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %41 = load i8, i8* %scevgep62.3, align 1
  %conv49.i.3 = zext i8 %41 to i32
  %xor.i.3 = xor i32 %conv44.i.3, %conv49.i.3
  %conv50.i.3 = trunc i32 %xor.i.3 to i8
  %scevgep66.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 3
  store i8 %conv50.i.3, i8* %scevgep66.3, align 1
  %42 = load i8, i8* %x, align 1
  %conv57.i.3 = zext i8 %42 to i32
  %xor58.i.3 = xor i32 %conv57.i.3, 1
  %conv59.i.3 = trunc i32 %xor58.i.3 to i8
  %scevgep63.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %43 = load i8, i8* %scevgep63.3, align 1
  %call64.i.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.3, i8 zeroext %43) #3
  %scevgep70.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 3
  store i8 %call64.i.3, i8* %scevgep70.3, align 1
  %44 = load i8, i8* %x, align 1
  %scevgep67.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 3
  %45 = load i8, i8* %scevgep67.3, align 1
  %call75.i.3 = call zeroext i8 @mult(i8 zeroext %44, i8 zeroext %45) #3
  %scevgep74.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 3
  store i8 %call75.i.3, i8* %scevgep74.3, align 1
  %scevgep71.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 3
  %46 = load i8, i8* %scevgep71.3, align 1
  %conv84.i.3 = zext i8 %46 to i32
  %scevgep75.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 3
  %47 = load i8, i8* %scevgep75.3, align 1
  %conv89.i.3 = zext i8 %47 to i32
  %xor90.i.3 = xor i32 %conv84.i.3, %conv89.i.3
  %conv91.i.3 = trunc i32 %xor90.i.3 to i8
  %scevgep78.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 3
  store i8 %conv91.i.3, i8* %scevgep78.3, align 1
  %scevgep61 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  %48 = bitcast i8* %scevgep61 to [4 x [4 x i8]]*
  %scevgep65 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 1, i64 0
  %49 = bitcast i8* %scevgep65 to [4 x [4 x i8]]*
  %scevgep69 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %50 = bitcast i8* %scevgep69 to [4 x [4 x i8]]*
  %scevgep73 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %51 = bitcast i8* %scevgep73 to [4 x [4 x i8]]*
  %scevgep77 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 1, i64 0
  %52 = bitcast i8* %scevgep77 to [4 x [4 x i8]]*
  %arrayidx56.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %arrayidx70.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %scevgep59.1110 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 0
  %53 = load i8, i8* %scevgep59.1110, align 1
  %conv44.i.1111 = zext i8 %53 to i32
  %scevgep62.1112 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %48, i64 0, i64 0, i64 0
  %54 = load i8, i8* %scevgep62.1112, align 1
  %conv49.i.1113 = zext i8 %54 to i32
  %xor.i.1114 = xor i32 %conv44.i.1111, %conv49.i.1113
  %conv50.i.1115 = trunc i32 %xor.i.1114 to i8
  %scevgep66.1116 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %49, i64 0, i64 0, i64 0
  store i8 %conv50.i.1115, i8* %scevgep66.1116, align 1
  %55 = load i8, i8* %arrayidx56.i.1, align 1
  %conv57.i.1117 = zext i8 %55 to i32
  %xor58.i.1118 = xor i32 %conv57.i.1117, 1
  %conv59.i.1119 = trunc i32 %xor58.i.1118 to i8
  %scevgep63.1120 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %48, i64 0, i64 0, i64 0
  %56 = load i8, i8* %scevgep63.1120, align 1
  %call64.i.1121 = call zeroext i8 @mult(i8 zeroext %conv59.i.1119, i8 zeroext %56) #3
  %scevgep70.1122 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %50, i64 0, i64 0, i64 0
  store i8 %call64.i.1121, i8* %scevgep70.1122, align 1
  %57 = load i8, i8* %arrayidx70.i.1, align 1
  %scevgep67.1123 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %49, i64 0, i64 0, i64 0
  %58 = load i8, i8* %scevgep67.1123, align 1
  %call75.i.1124 = call zeroext i8 @mult(i8 zeroext %57, i8 zeroext %58) #3
  %scevgep74.1125 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %51, i64 0, i64 0, i64 0
  store i8 %call75.i.1124, i8* %scevgep74.1125, align 1
  %scevgep71.1126 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %50, i64 0, i64 0, i64 0
  %59 = load i8, i8* %scevgep71.1126, align 1
  %conv84.i.1127 = zext i8 %59 to i32
  %scevgep75.1128 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %51, i64 0, i64 0, i64 0
  %60 = load i8, i8* %scevgep75.1128, align 1
  %conv89.i.1129 = zext i8 %60 to i32
  %xor90.i.1130 = xor i32 %conv84.i.1127, %conv89.i.1129
  %conv91.i.1131 = trunc i32 %xor90.i.1130 to i8
  %scevgep78.1132 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %52, i64 0, i64 0, i64 0
  store i8 %conv91.i.1131, i8* %scevgep78.1132, align 1
  %scevgep59.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 2
  %61 = load i8, i8* %scevgep59.2.1, align 1
  %conv44.i.2.1 = zext i8 %61 to i32
  %scevgep62.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %48, i64 0, i64 0, i64 2
  %62 = load i8, i8* %scevgep62.2.1, align 1
  %conv49.i.2.1 = zext i8 %62 to i32
  %xor.i.2.1 = xor i32 %conv44.i.2.1, %conv49.i.2.1
  %conv50.i.2.1 = trunc i32 %xor.i.2.1 to i8
  %scevgep66.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %49, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.1, i8* %scevgep66.2.1, align 1
  %63 = load i8, i8* %arrayidx56.i.1, align 1
  %conv57.i.2.1 = zext i8 %63 to i32
  %xor58.i.2.1 = xor i32 %conv57.i.2.1, 1
  %conv59.i.2.1 = trunc i32 %xor58.i.2.1 to i8
  %scevgep63.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %48, i64 0, i64 0, i64 2
  %64 = load i8, i8* %scevgep63.2.1, align 1
  %call64.i.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.1, i8 zeroext %64) #3
  %scevgep70.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %50, i64 0, i64 0, i64 2
  store i8 %call64.i.2.1, i8* %scevgep70.2.1, align 1
  %65 = load i8, i8* %arrayidx70.i.1, align 1
  %scevgep67.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %49, i64 0, i64 0, i64 2
  %66 = load i8, i8* %scevgep67.2.1, align 1
  %call75.i.2.1 = call zeroext i8 @mult(i8 zeroext %65, i8 zeroext %66) #3
  %scevgep74.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %51, i64 0, i64 0, i64 2
  store i8 %call75.i.2.1, i8* %scevgep74.2.1, align 1
  %scevgep71.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %50, i64 0, i64 0, i64 2
  %67 = load i8, i8* %scevgep71.2.1, align 1
  %conv84.i.2.1 = zext i8 %67 to i32
  %scevgep75.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %51, i64 0, i64 0, i64 2
  %68 = load i8, i8* %scevgep75.2.1, align 1
  %conv89.i.2.1 = zext i8 %68 to i32
  %xor90.i.2.1 = xor i32 %conv84.i.2.1, %conv89.i.2.1
  %conv91.i.2.1 = trunc i32 %xor90.i.2.1 to i8
  %scevgep78.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %52, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.1, i8* %scevgep78.2.1, align 1
  %scevgep59.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 3
  %69 = load i8, i8* %scevgep59.3.1, align 1
  %conv44.i.3.1 = zext i8 %69 to i32
  %scevgep62.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %48, i64 0, i64 0, i64 3
  %70 = load i8, i8* %scevgep62.3.1, align 1
  %conv49.i.3.1 = zext i8 %70 to i32
  %xor.i.3.1 = xor i32 %conv44.i.3.1, %conv49.i.3.1
  %conv50.i.3.1 = trunc i32 %xor.i.3.1 to i8
  %scevgep66.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %49, i64 0, i64 0, i64 3
  store i8 %conv50.i.3.1, i8* %scevgep66.3.1, align 1
  %71 = load i8, i8* %arrayidx56.i.1, align 1
  %conv57.i.3.1 = zext i8 %71 to i32
  %xor58.i.3.1 = xor i32 %conv57.i.3.1, 1
  %conv59.i.3.1 = trunc i32 %xor58.i.3.1 to i8
  %scevgep63.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %48, i64 0, i64 0, i64 3
  %72 = load i8, i8* %scevgep63.3.1, align 1
  %call64.i.3.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.3.1, i8 zeroext %72) #3
  %scevgep70.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %50, i64 0, i64 0, i64 3
  store i8 %call64.i.3.1, i8* %scevgep70.3.1, align 1
  %73 = load i8, i8* %arrayidx70.i.1, align 1
  %scevgep67.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %49, i64 0, i64 0, i64 3
  %74 = load i8, i8* %scevgep67.3.1, align 1
  %call75.i.3.1 = call zeroext i8 @mult(i8 zeroext %73, i8 zeroext %74) #3
  %scevgep74.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %51, i64 0, i64 0, i64 3
  store i8 %call75.i.3.1, i8* %scevgep74.3.1, align 1
  %scevgep71.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %50, i64 0, i64 0, i64 3
  %75 = load i8, i8* %scevgep71.3.1, align 1
  %conv84.i.3.1 = zext i8 %75 to i32
  %scevgep75.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %51, i64 0, i64 0, i64 3
  %76 = load i8, i8* %scevgep75.3.1, align 1
  %conv89.i.3.1 = zext i8 %76 to i32
  %xor90.i.3.1 = xor i32 %conv84.i.3.1, %conv89.i.3.1
  %conv91.i.3.1 = trunc i32 %xor90.i.3.1 to i8
  %scevgep78.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %52, i64 0, i64 0, i64 3
  store i8 %conv91.i.3.1, i8* %scevgep78.3.1, align 1
  %scevgep61.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %48, i64 0, i64 1, i64 0
  %77 = bitcast i8* %scevgep61.1 to [4 x [4 x i8]]*
  %scevgep65.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %49, i64 0, i64 1, i64 0
  %78 = bitcast i8* %scevgep65.1 to [4 x [4 x i8]]*
  %scevgep69.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %50, i64 0, i64 1, i64 0
  %79 = bitcast i8* %scevgep69.1 to [4 x [4 x i8]]*
  %scevgep73.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %51, i64 0, i64 1, i64 0
  %80 = bitcast i8* %scevgep73.1 to [4 x [4 x i8]]*
  %scevgep77.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %52, i64 0, i64 1, i64 0
  %81 = bitcast i8* %scevgep77.1 to [4 x [4 x i8]]*
  %arrayidx56.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %arrayidx70.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %scevgep59.2137 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 0
  %82 = load i8, i8* %scevgep59.2137, align 1
  %conv44.i.2138 = zext i8 %82 to i32
  %scevgep62.2139 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %77, i64 0, i64 0, i64 0
  %83 = load i8, i8* %scevgep62.2139, align 1
  %conv49.i.2140 = zext i8 %83 to i32
  %xor.i.2141 = xor i32 %conv44.i.2138, %conv49.i.2140
  %conv50.i.2142 = trunc i32 %xor.i.2141 to i8
  %scevgep66.2143 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %78, i64 0, i64 0, i64 0
  store i8 %conv50.i.2142, i8* %scevgep66.2143, align 1
  %84 = load i8, i8* %arrayidx56.i.2, align 1
  %conv57.i.2144 = zext i8 %84 to i32
  %xor58.i.2145 = xor i32 %conv57.i.2144, 1
  %conv59.i.2146 = trunc i32 %xor58.i.2145 to i8
  %scevgep63.2147 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %77, i64 0, i64 0, i64 0
  %85 = load i8, i8* %scevgep63.2147, align 1
  %call64.i.2148 = call zeroext i8 @mult(i8 zeroext %conv59.i.2146, i8 zeroext %85) #3
  %scevgep70.2149 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %79, i64 0, i64 0, i64 0
  store i8 %call64.i.2148, i8* %scevgep70.2149, align 1
  %86 = load i8, i8* %arrayidx70.i.2, align 1
  %scevgep67.2150 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %78, i64 0, i64 0, i64 0
  %87 = load i8, i8* %scevgep67.2150, align 1
  %call75.i.2151 = call zeroext i8 @mult(i8 zeroext %86, i8 zeroext %87) #3
  %scevgep74.2152 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %80, i64 0, i64 0, i64 0
  store i8 %call75.i.2151, i8* %scevgep74.2152, align 1
  %scevgep71.2153 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %79, i64 0, i64 0, i64 0
  %88 = load i8, i8* %scevgep71.2153, align 1
  %conv84.i.2154 = zext i8 %88 to i32
  %scevgep75.2155 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %80, i64 0, i64 0, i64 0
  %89 = load i8, i8* %scevgep75.2155, align 1
  %conv89.i.2156 = zext i8 %89 to i32
  %xor90.i.2157 = xor i32 %conv84.i.2154, %conv89.i.2156
  %conv91.i.2158 = trunc i32 %xor90.i.2157 to i8
  %scevgep78.2159 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %81, i64 0, i64 0, i64 0
  store i8 %conv91.i.2158, i8* %scevgep78.2159, align 1
  %scevgep59.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 1
  %90 = load i8, i8* %scevgep59.1.2, align 1
  %conv44.i.1.2 = zext i8 %90 to i32
  %scevgep62.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %77, i64 0, i64 0, i64 1
  %91 = load i8, i8* %scevgep62.1.2, align 1
  %conv49.i.1.2 = zext i8 %91 to i32
  %xor.i.1.2 = xor i32 %conv44.i.1.2, %conv49.i.1.2
  %conv50.i.1.2 = trunc i32 %xor.i.1.2 to i8
  %scevgep66.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %78, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.2, i8* %scevgep66.1.2, align 1
  %92 = load i8, i8* %arrayidx56.i.2, align 1
  %conv57.i.1.2 = zext i8 %92 to i32
  %xor58.i.1.2 = xor i32 %conv57.i.1.2, 1
  %conv59.i.1.2 = trunc i32 %xor58.i.1.2 to i8
  %scevgep63.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %77, i64 0, i64 0, i64 1
  %93 = load i8, i8* %scevgep63.1.2, align 1
  %call64.i.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.2, i8 zeroext %93) #3
  %scevgep70.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %79, i64 0, i64 0, i64 1
  store i8 %call64.i.1.2, i8* %scevgep70.1.2, align 1
  %94 = load i8, i8* %arrayidx70.i.2, align 1
  %scevgep67.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %78, i64 0, i64 0, i64 1
  %95 = load i8, i8* %scevgep67.1.2, align 1
  %call75.i.1.2 = call zeroext i8 @mult(i8 zeroext %94, i8 zeroext %95) #3
  %scevgep74.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %80, i64 0, i64 0, i64 1
  store i8 %call75.i.1.2, i8* %scevgep74.1.2, align 1
  %scevgep71.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %79, i64 0, i64 0, i64 1
  %96 = load i8, i8* %scevgep71.1.2, align 1
  %conv84.i.1.2 = zext i8 %96 to i32
  %scevgep75.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %80, i64 0, i64 0, i64 1
  %97 = load i8, i8* %scevgep75.1.2, align 1
  %conv89.i.1.2 = zext i8 %97 to i32
  %xor90.i.1.2 = xor i32 %conv84.i.1.2, %conv89.i.1.2
  %conv91.i.1.2 = trunc i32 %xor90.i.1.2 to i8
  %scevgep78.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %81, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.2, i8* %scevgep78.1.2, align 1
  %scevgep59.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 3
  %98 = load i8, i8* %scevgep59.3.2, align 1
  %conv44.i.3.2 = zext i8 %98 to i32
  %scevgep62.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %77, i64 0, i64 0, i64 3
  %99 = load i8, i8* %scevgep62.3.2, align 1
  %conv49.i.3.2 = zext i8 %99 to i32
  %xor.i.3.2 = xor i32 %conv44.i.3.2, %conv49.i.3.2
  %conv50.i.3.2 = trunc i32 %xor.i.3.2 to i8
  %scevgep66.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %78, i64 0, i64 0, i64 3
  store i8 %conv50.i.3.2, i8* %scevgep66.3.2, align 1
  %100 = load i8, i8* %arrayidx56.i.2, align 1
  %conv57.i.3.2 = zext i8 %100 to i32
  %xor58.i.3.2 = xor i32 %conv57.i.3.2, 1
  %conv59.i.3.2 = trunc i32 %xor58.i.3.2 to i8
  %scevgep63.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %77, i64 0, i64 0, i64 3
  %101 = load i8, i8* %scevgep63.3.2, align 1
  %call64.i.3.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.3.2, i8 zeroext %101) #3
  %scevgep70.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %79, i64 0, i64 0, i64 3
  store i8 %call64.i.3.2, i8* %scevgep70.3.2, align 1
  %102 = load i8, i8* %arrayidx70.i.2, align 1
  %scevgep67.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %78, i64 0, i64 0, i64 3
  %103 = load i8, i8* %scevgep67.3.2, align 1
  %call75.i.3.2 = call zeroext i8 @mult(i8 zeroext %102, i8 zeroext %103) #3
  %scevgep74.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %80, i64 0, i64 0, i64 3
  store i8 %call75.i.3.2, i8* %scevgep74.3.2, align 1
  %scevgep71.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %79, i64 0, i64 0, i64 3
  %104 = load i8, i8* %scevgep71.3.2, align 1
  %conv84.i.3.2 = zext i8 %104 to i32
  %scevgep75.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %80, i64 0, i64 0, i64 3
  %105 = load i8, i8* %scevgep75.3.2, align 1
  %conv89.i.3.2 = zext i8 %105 to i32
  %xor90.i.3.2 = xor i32 %conv84.i.3.2, %conv89.i.3.2
  %conv91.i.3.2 = trunc i32 %xor90.i.3.2 to i8
  %scevgep78.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %81, i64 0, i64 0, i64 3
  store i8 %conv91.i.3.2, i8* %scevgep78.3.2, align 1
  %scevgep61.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %77, i64 0, i64 1, i64 0
  %106 = bitcast i8* %scevgep61.2 to [4 x [4 x i8]]*
  %scevgep65.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %78, i64 0, i64 1, i64 0
  %107 = bitcast i8* %scevgep65.2 to [4 x [4 x i8]]*
  %scevgep69.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %79, i64 0, i64 1, i64 0
  %108 = bitcast i8* %scevgep69.2 to [4 x [4 x i8]]*
  %scevgep73.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %80, i64 0, i64 1, i64 0
  %109 = bitcast i8* %scevgep73.2 to [4 x [4 x i8]]*
  %scevgep77.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %81, i64 0, i64 1, i64 0
  %110 = bitcast i8* %scevgep77.2 to [4 x [4 x i8]]*
  %arrayidx56.i.3 = getelementptr inbounds i8, i8* %x, i64 3
  %arrayidx70.i.3 = getelementptr inbounds i8, i8* %x, i64 3
  %scevgep59.3164 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 0
  %111 = load i8, i8* %scevgep59.3164, align 1
  %conv44.i.3165 = zext i8 %111 to i32
  %scevgep62.3166 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %106, i64 0, i64 0, i64 0
  %112 = load i8, i8* %scevgep62.3166, align 1
  %conv49.i.3167 = zext i8 %112 to i32
  %xor.i.3168 = xor i32 %conv44.i.3165, %conv49.i.3167
  %conv50.i.3169 = trunc i32 %xor.i.3168 to i8
  %scevgep66.3170 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %107, i64 0, i64 0, i64 0
  store i8 %conv50.i.3169, i8* %scevgep66.3170, align 1
  %113 = load i8, i8* %arrayidx56.i.3, align 1
  %conv57.i.3171 = zext i8 %113 to i32
  %xor58.i.3172 = xor i32 %conv57.i.3171, 1
  %conv59.i.3173 = trunc i32 %xor58.i.3172 to i8
  %scevgep63.3174 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %106, i64 0, i64 0, i64 0
  %114 = load i8, i8* %scevgep63.3174, align 1
  %call64.i.3175 = call zeroext i8 @mult(i8 zeroext %conv59.i.3173, i8 zeroext %114) #3
  %scevgep70.3176 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %108, i64 0, i64 0, i64 0
  store i8 %call64.i.3175, i8* %scevgep70.3176, align 1
  %115 = load i8, i8* %arrayidx70.i.3, align 1
  %scevgep67.3177 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %107, i64 0, i64 0, i64 0
  %116 = load i8, i8* %scevgep67.3177, align 1
  %call75.i.3178 = call zeroext i8 @mult(i8 zeroext %115, i8 zeroext %116) #3
  %scevgep74.3179 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %109, i64 0, i64 0, i64 0
  store i8 %call75.i.3178, i8* %scevgep74.3179, align 1
  %scevgep71.3180 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %108, i64 0, i64 0, i64 0
  %117 = load i8, i8* %scevgep71.3180, align 1
  %conv84.i.3181 = zext i8 %117 to i32
  %scevgep75.3182 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %109, i64 0, i64 0, i64 0
  %118 = load i8, i8* %scevgep75.3182, align 1
  %conv89.i.3183 = zext i8 %118 to i32
  %xor90.i.3184 = xor i32 %conv84.i.3181, %conv89.i.3183
  %conv91.i.3185 = trunc i32 %xor90.i.3184 to i8
  %scevgep78.3186 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %110, i64 0, i64 0, i64 0
  store i8 %conv91.i.3185, i8* %scevgep78.3186, align 1
  %scevgep59.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 1
  %119 = load i8, i8* %scevgep59.1.3, align 1
  %conv44.i.1.3 = zext i8 %119 to i32
  %scevgep62.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %106, i64 0, i64 0, i64 1
  %120 = load i8, i8* %scevgep62.1.3, align 1
  %conv49.i.1.3 = zext i8 %120 to i32
  %xor.i.1.3 = xor i32 %conv44.i.1.3, %conv49.i.1.3
  %conv50.i.1.3 = trunc i32 %xor.i.1.3 to i8
  %scevgep66.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %107, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.3, i8* %scevgep66.1.3, align 1
  %121 = load i8, i8* %arrayidx56.i.3, align 1
  %conv57.i.1.3 = zext i8 %121 to i32
  %xor58.i.1.3 = xor i32 %conv57.i.1.3, 1
  %conv59.i.1.3 = trunc i32 %xor58.i.1.3 to i8
  %scevgep63.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %106, i64 0, i64 0, i64 1
  %122 = load i8, i8* %scevgep63.1.3, align 1
  %call64.i.1.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.3, i8 zeroext %122) #3
  %scevgep70.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %108, i64 0, i64 0, i64 1
  store i8 %call64.i.1.3, i8* %scevgep70.1.3, align 1
  %123 = load i8, i8* %arrayidx70.i.3, align 1
  %scevgep67.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %107, i64 0, i64 0, i64 1
  %124 = load i8, i8* %scevgep67.1.3, align 1
  %call75.i.1.3 = call zeroext i8 @mult(i8 zeroext %123, i8 zeroext %124) #3
  %scevgep74.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %109, i64 0, i64 0, i64 1
  store i8 %call75.i.1.3, i8* %scevgep74.1.3, align 1
  %scevgep71.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %108, i64 0, i64 0, i64 1
  %125 = load i8, i8* %scevgep71.1.3, align 1
  %conv84.i.1.3 = zext i8 %125 to i32
  %scevgep75.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %109, i64 0, i64 0, i64 1
  %126 = load i8, i8* %scevgep75.1.3, align 1
  %conv89.i.1.3 = zext i8 %126 to i32
  %xor90.i.1.3 = xor i32 %conv84.i.1.3, %conv89.i.1.3
  %conv91.i.1.3 = trunc i32 %xor90.i.1.3 to i8
  %scevgep78.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %110, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.3, i8* %scevgep78.1.3, align 1
  %scevgep59.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 2
  %127 = load i8, i8* %scevgep59.2.3, align 1
  %conv44.i.2.3 = zext i8 %127 to i32
  %scevgep62.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %106, i64 0, i64 0, i64 2
  %128 = load i8, i8* %scevgep62.2.3, align 1
  %conv49.i.2.3 = zext i8 %128 to i32
  %xor.i.2.3 = xor i32 %conv44.i.2.3, %conv49.i.2.3
  %conv50.i.2.3 = trunc i32 %xor.i.2.3 to i8
  %scevgep66.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %107, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.3, i8* %scevgep66.2.3, align 1
  %129 = load i8, i8* %arrayidx56.i.3, align 1
  %conv57.i.2.3 = zext i8 %129 to i32
  %xor58.i.2.3 = xor i32 %conv57.i.2.3, 1
  %conv59.i.2.3 = trunc i32 %xor58.i.2.3 to i8
  %scevgep63.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %106, i64 0, i64 0, i64 2
  %130 = load i8, i8* %scevgep63.2.3, align 1
  %call64.i.2.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.3, i8 zeroext %130) #3
  %scevgep70.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %108, i64 0, i64 0, i64 2
  store i8 %call64.i.2.3, i8* %scevgep70.2.3, align 1
  %131 = load i8, i8* %arrayidx70.i.3, align 1
  %scevgep67.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %107, i64 0, i64 0, i64 2
  %132 = load i8, i8* %scevgep67.2.3, align 1
  %call75.i.2.3 = call zeroext i8 @mult(i8 zeroext %131, i8 zeroext %132) #3
  %scevgep74.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %109, i64 0, i64 0, i64 2
  store i8 %call75.i.2.3, i8* %scevgep74.2.3, align 1
  %scevgep71.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %108, i64 0, i64 0, i64 2
  %133 = load i8, i8* %scevgep71.2.3, align 1
  %conv84.i.2.3 = zext i8 %133 to i32
  %scevgep75.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %109, i64 0, i64 0, i64 2
  %134 = load i8, i8* %scevgep75.2.3, align 1
  %conv89.i.2.3 = zext i8 %134 to i32
  %xor90.i.2.3 = xor i32 %conv84.i.2.3, %conv89.i.2.3
  %conv91.i.2.3 = trunc i32 %xor90.i.2.3 to i8
  %scevgep78.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %110, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.3, i8* %scevgep78.2.3, align 1
  %135 = load i8, i8* %x, align 1
  %136 = load i8, i8* %arraydecay7, align 1
  %call111.i = call zeroext i8 @mult(i8 zeroext %135, i8 zeroext %136) #3
  store i8 %call111.i, i8* %arraydecay10, align 1
  %scevgep90.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 1
  %137 = load i8, i8* %scevgep90.1, align 1
  %conv126.i.1 = zext i8 %137 to i32
  %138 = load i8, i8* %arraydecay10, align 1
  %conv129.i.1 = zext i8 %138 to i32
  %xor130.i.1 = xor i32 %conv129.i.1, %conv126.i.1
  %conv131.i.1 = trunc i32 %xor130.i.1 to i8
  store i8 %conv131.i.1, i8* %arraydecay10, align 1
  %scevgep90.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 2
  %139 = load i8, i8* %scevgep90.2, align 1
  %conv126.i.2 = zext i8 %139 to i32
  %140 = load i8, i8* %arraydecay10, align 1
  %conv129.i.2 = zext i8 %140 to i32
  %xor130.i.2 = xor i32 %conv129.i.2, %conv126.i.2
  %conv131.i.2 = trunc i32 %xor130.i.2 to i8
  store i8 %conv131.i.2, i8* %arraydecay10, align 1
  %scevgep90.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 3
  %141 = load i8, i8* %scevgep90.3, align 1
  %conv126.i.3 = zext i8 %141 to i32
  %142 = load i8, i8* %arraydecay10, align 1
  %conv129.i.3 = zext i8 %142 to i32
  %xor130.i.3 = xor i32 %conv129.i.3, %conv126.i.3
  %conv131.i.3 = trunc i32 %xor130.i.3 to i8
  store i8 %conv131.i.3, i8* %arraydecay10, align 1
  %scevgep89 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 1, i64 0
  %143 = bitcast i8* %scevgep89 to [4 x [4 x i8]]*
  %arrayidx108.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %144 = load i8, i8* %arrayidx108.i.1, align 1
  %arrayidx110.i.1 = getelementptr inbounds i8, i8* %arraydecay7, i64 1
  %145 = load i8, i8* %arrayidx110.i.1, align 1
  %call111.i.1 = call zeroext i8 @mult(i8 zeroext %144, i8 zeroext %145) #3
  %arrayidx113.i.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  store i8 %call111.i.1, i8* %arrayidx113.i.1, align 1
  %arrayidx128.i.1 = getelementptr inbounds i8, i8* %arraydecay10, i64 1
  %scevgep90.1191 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %143, i64 0, i64 0, i64 0
  %146 = load i8, i8* %scevgep90.1191, align 1
  %conv126.i.1192 = zext i8 %146 to i32
  %147 = load i8, i8* %arrayidx128.i.1, align 1
  %conv129.i.1193 = zext i8 %147 to i32
  %xor130.i.1194 = xor i32 %conv129.i.1193, %conv126.i.1192
  %conv131.i.1195 = trunc i32 %xor130.i.1194 to i8
  store i8 %conv131.i.1195, i8* %arrayidx128.i.1, align 1
  %scevgep90.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %143, i64 0, i64 0, i64 2
  %148 = load i8, i8* %scevgep90.2.1, align 1
  %conv126.i.2.1 = zext i8 %148 to i32
  %149 = load i8, i8* %arrayidx128.i.1, align 1
  %conv129.i.2.1 = zext i8 %149 to i32
  %xor130.i.2.1 = xor i32 %conv129.i.2.1, %conv126.i.2.1
  %conv131.i.2.1 = trunc i32 %xor130.i.2.1 to i8
  store i8 %conv131.i.2.1, i8* %arrayidx128.i.1, align 1
  %scevgep90.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %143, i64 0, i64 0, i64 3
  %150 = load i8, i8* %scevgep90.3.1, align 1
  %conv126.i.3.1 = zext i8 %150 to i32
  %151 = load i8, i8* %arrayidx128.i.1, align 1
  %conv129.i.3.1 = zext i8 %151 to i32
  %xor130.i.3.1 = xor i32 %conv129.i.3.1, %conv126.i.3.1
  %conv131.i.3.1 = trunc i32 %xor130.i.3.1 to i8
  store i8 %conv131.i.3.1, i8* %arrayidx128.i.1, align 1
  %scevgep89.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %143, i64 0, i64 1, i64 0
  %152 = bitcast i8* %scevgep89.1 to [4 x [4 x i8]]*
  %arrayidx108.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %153 = load i8, i8* %arrayidx108.i.2, align 1
  %arrayidx110.i.2 = getelementptr inbounds i8, i8* %arraydecay7, i64 2
  %154 = load i8, i8* %arrayidx110.i.2, align 1
  %call111.i.2 = call zeroext i8 @mult(i8 zeroext %153, i8 zeroext %154) #3
  %arrayidx113.i.2 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  store i8 %call111.i.2, i8* %arrayidx113.i.2, align 1
  %arrayidx128.i.2 = getelementptr inbounds i8, i8* %arraydecay10, i64 2
  %scevgep90.2200 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %152, i64 0, i64 0, i64 0
  %155 = load i8, i8* %scevgep90.2200, align 1
  %conv126.i.2201 = zext i8 %155 to i32
  %156 = load i8, i8* %arrayidx128.i.2, align 1
  %conv129.i.2202 = zext i8 %156 to i32
  %xor130.i.2203 = xor i32 %conv129.i.2202, %conv126.i.2201
  %conv131.i.2204 = trunc i32 %xor130.i.2203 to i8
  store i8 %conv131.i.2204, i8* %arrayidx128.i.2, align 1
  %scevgep90.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %152, i64 0, i64 0, i64 1
  %157 = load i8, i8* %scevgep90.1.2, align 1
  %conv126.i.1.2 = zext i8 %157 to i32
  %158 = load i8, i8* %arrayidx128.i.2, align 1
  %conv129.i.1.2 = zext i8 %158 to i32
  %xor130.i.1.2 = xor i32 %conv129.i.1.2, %conv126.i.1.2
  %conv131.i.1.2 = trunc i32 %xor130.i.1.2 to i8
  store i8 %conv131.i.1.2, i8* %arrayidx128.i.2, align 1
  %scevgep90.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %152, i64 0, i64 0, i64 3
  %159 = load i8, i8* %scevgep90.3.2, align 1
  %conv126.i.3.2 = zext i8 %159 to i32
  %160 = load i8, i8* %arrayidx128.i.2, align 1
  %conv129.i.3.2 = zext i8 %160 to i32
  %xor130.i.3.2 = xor i32 %conv129.i.3.2, %conv126.i.3.2
  %conv131.i.3.2 = trunc i32 %xor130.i.3.2 to i8
  store i8 %conv131.i.3.2, i8* %arrayidx128.i.2, align 1
  %scevgep89.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %152, i64 0, i64 1, i64 0
  %161 = bitcast i8* %scevgep89.2 to [4 x [4 x i8]]*
  %arrayidx108.i.3 = getelementptr inbounds i8, i8* %x, i64 3
  %162 = load i8, i8* %arrayidx108.i.3, align 1
  %arrayidx110.i.3 = getelementptr inbounds i8, i8* %arraydecay7, i64 3
  %163 = load i8, i8* %arrayidx110.i.3, align 1
  %call111.i.3 = call zeroext i8 @mult(i8 zeroext %162, i8 zeroext %163) #3
  %arrayidx113.i.3 = getelementptr inbounds i8, i8* %arraydecay10, i64 3
  store i8 %call111.i.3, i8* %arrayidx113.i.3, align 1
  %arrayidx128.i.3 = getelementptr inbounds i8, i8* %arraydecay10, i64 3
  %scevgep90.3209 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %161, i64 0, i64 0, i64 0
  %164 = load i8, i8* %scevgep90.3209, align 1
  %conv126.i.3210 = zext i8 %164 to i32
  %165 = load i8, i8* %arrayidx128.i.3, align 1
  %conv129.i.3211 = zext i8 %165 to i32
  %xor130.i.3212 = xor i32 %conv129.i.3211, %conv126.i.3210
  %conv131.i.3213 = trunc i32 %xor130.i.3212 to i8
  store i8 %conv131.i.3213, i8* %arrayidx128.i.3, align 1
  %scevgep90.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %161, i64 0, i64 0, i64 1
  %166 = load i8, i8* %scevgep90.1.3, align 1
  %conv126.i.1.3 = zext i8 %166 to i32
  %167 = load i8, i8* %arrayidx128.i.3, align 1
  %conv129.i.1.3 = zext i8 %167 to i32
  %xor130.i.1.3 = xor i32 %conv129.i.1.3, %conv126.i.1.3
  %conv131.i.1.3 = trunc i32 %xor130.i.1.3 to i8
  store i8 %conv131.i.1.3, i8* %arrayidx128.i.3, align 1
  %scevgep90.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %161, i64 0, i64 0, i64 2
  %168 = load i8, i8* %scevgep90.2.3, align 1
  %conv126.i.2.3 = zext i8 %168 to i32
  %169 = load i8, i8* %arrayidx128.i.3, align 1
  %conv129.i.2.3 = zext i8 %169 to i32
  %xor130.i.2.3 = xor i32 %conv129.i.2.3, %conv126.i.2.3
  %conv131.i.2.3 = trunc i32 %xor130.i.2.3 to i8
  store i8 %conv131.i.2.3, i8* %arrayidx128.i.3, align 1
  %call139.i = call zeroext i8 @mult(i8 zeroext %call.i22, i8 zeroext %call1.i) #3
  %conv140.i = zext i8 %call139.i to i32
  %scevgep96 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 0
  %scevgep97 = getelementptr i8, i8* %scevgep96, i64 4
  %170 = load i8, i8* %scevgep97, align 1
  %scevgep96.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 1
  %scevgep97.1 = getelementptr i8, i8* %scevgep96.1, i64 4
  %171 = load i8, i8* %scevgep97.1, align 1
  %conv.i.i172.i.1 = zext i8 %171 to i32
  %conv1.i.i173.i.1 = zext i8 %170 to i32
  %xor.i.i174.i.1 = xor i32 %conv1.i.i173.i.1, %conv.i.i172.i.1
  %conv2.i.i175.i.1 = trunc i32 %xor.i.i174.i.1 to i8
  %scevgep96.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 2
  %scevgep97.2 = getelementptr i8, i8* %scevgep96.2, i64 4
  %172 = load i8, i8* %scevgep97.2, align 1
  %conv.i.i172.i.2 = zext i8 %172 to i32
  %conv1.i.i173.i.2 = zext i8 %conv2.i.i175.i.1 to i32
  %xor.i.i174.i.2 = xor i32 %conv1.i.i173.i.2, %conv.i.i172.i.2
  %conv2.i.i175.i.2 = trunc i32 %xor.i.i174.i.2 to i8
  %scevgep96.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 0, i64 3
  %scevgep97.3 = getelementptr i8, i8* %scevgep96.3, i64 4
  %173 = load i8, i8* %scevgep97.3, align 1
  %conv.i.i172.i.3 = zext i8 %173 to i32
  %conv1.i.i173.i.3 = zext i8 %conv2.i.i175.i.2 to i32
  %xor.i.i174.i.3 = xor i32 %conv1.i.i173.i.3, %conv.i.i172.i.3
  %conv2.i.i175.i.3 = trunc i32 %xor.i.i174.i.3 to i8
  %conv142.i = zext i8 %conv2.i.i175.i.3 to i32
  %cmp143.i = icmp eq i32 %conv140.i, %conv142.i
  call void @assert(i1 zeroext %cmp143.i) #3
  %scevgep37 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 1, i64 0
  %174 = bitcast i8* %scevgep37 to [4 x [4 x i8]]*
  %arrayidx6.1 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 1
  %arraydecay7.1 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx6.1, i64 0, i64 0
  %arrayidx9.1 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 2
  %arraydecay10.1 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx9.1, i64 0, i64 0
  %call.i22.1 = call zeroext i8 (...) @rand() #3
  %call1.i.1 = call zeroext i8 (...) @rand() #3
  %conv.i.1 = zext i8 %call.i22.1 to i32
  %175 = load i8, i8* %x, align 1
  %conv.i.i.i.1217 = zext i8 %175 to i32
  %conv1.i.i.i.1218 = zext i8 %conv2.i.i.i.3 to i32
  %xor.i.i.i.1219 = xor i32 %conv1.i.i.i.1218, %conv.i.i.i.1217
  %conv2.i.i.i.1220 = trunc i32 %xor.i.i.i.1219 to i8
  %scevgep34.1.1 = getelementptr i8, i8* %x, i64 1
  %176 = load i8, i8* %scevgep34.1.1, align 1
  %conv.i.i.i.1.1 = zext i8 %176 to i32
  %conv1.i.i.i.1.1 = zext i8 %conv2.i.i.i.1220 to i32
  %xor.i.i.i.1.1 = xor i32 %conv1.i.i.i.1.1, %conv.i.i.i.1.1
  %conv2.i.i.i.1.1 = trunc i32 %xor.i.i.i.1.1 to i8
  %scevgep34.2.1 = getelementptr i8, i8* %x, i64 2
  %177 = load i8, i8* %scevgep34.2.1, align 1
  %conv.i.i.i.2.1 = zext i8 %177 to i32
  %conv1.i.i.i.2.1 = zext i8 %conv2.i.i.i.1.1 to i32
  %xor.i.i.i.2.1 = xor i32 %conv1.i.i.i.2.1, %conv.i.i.i.2.1
  %conv2.i.i.i.2.1 = trunc i32 %xor.i.i.i.2.1 to i8
  %scevgep34.3.1 = getelementptr i8, i8* %x, i64 3
  %178 = load i8, i8* %scevgep34.3.1, align 1
  %conv.i.i.i.3.1 = zext i8 %178 to i32
  %conv1.i.i.i.3.1 = zext i8 %conv2.i.i.i.2.1 to i32
  %xor.i.i.i.3.1 = xor i32 %conv1.i.i.i.3.1, %conv.i.i.i.3.1
  %conv2.i.i.i.3.1 = trunc i32 %xor.i.i.i.3.1 to i8
  %conv3.i.1 = zext i8 %conv2.i.i.i.3.1 to i32
  %cmp.i23.1 = icmp eq i32 %conv.i.1, %conv3.i.1
  call void @assume(i1 zeroext %cmp.i23.1) #3
  %conv5.i.1 = zext i8 %call1.i.1 to i32
  %scevgep40.1221 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %174, i64 0, i64 0, i64 0
  %179 = load i8, i8* %scevgep40.1221, align 1
  %conv.i.i155.i.1223 = zext i8 %179 to i32
  %conv1.i.i156.i.1224 = zext i8 %conv2.i.i158.i.3 to i32
  %xor.i.i157.i.1225 = xor i32 %conv1.i.i156.i.1224, %conv.i.i155.i.1223
  %conv2.i.i158.i.1226 = trunc i32 %xor.i.i157.i.1225 to i8
  %scevgep40.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %174, i64 0, i64 0, i64 1
  %180 = load i8, i8* %scevgep40.1.1, align 1
  %conv.i.i155.i.1.1 = zext i8 %180 to i32
  %conv1.i.i156.i.1.1 = zext i8 %conv2.i.i158.i.1226 to i32
  %xor.i.i157.i.1.1 = xor i32 %conv1.i.i156.i.1.1, %conv.i.i155.i.1.1
  %conv2.i.i158.i.1.1 = trunc i32 %xor.i.i157.i.1.1 to i8
  %scevgep40.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %174, i64 0, i64 0, i64 2
  %181 = load i8, i8* %scevgep40.2.1, align 1
  %conv.i.i155.i.2.1 = zext i8 %181 to i32
  %conv1.i.i156.i.2.1 = zext i8 %conv2.i.i158.i.1.1 to i32
  %xor.i.i157.i.2.1 = xor i32 %conv1.i.i156.i.2.1, %conv.i.i155.i.2.1
  %conv2.i.i158.i.2.1 = trunc i32 %xor.i.i157.i.2.1 to i8
  %scevgep40.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %174, i64 0, i64 0, i64 3
  %182 = load i8, i8* %scevgep40.3.1, align 1
  %conv.i.i155.i.3.1 = zext i8 %182 to i32
  %conv1.i.i156.i.3.1 = zext i8 %conv2.i.i158.i.2.1 to i32
  %xor.i.i157.i.3.1 = xor i32 %conv1.i.i156.i.3.1, %conv.i.i155.i.3.1
  %conv2.i.i158.i.3.1 = trunc i32 %xor.i.i157.i.3.1 to i8
  %conv7.i.1 = zext i8 %conv2.i.i158.i.3.1 to i32
  %cmp8.i.1 = icmp eq i32 %conv5.i.1, %conv7.i.1
  call void @assume(i1 zeroext %cmp8.i.1) #3
  %call16.i.1229 = call zeroext i8 (...) @rand() #3
  %scevgep46.1230 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i.1229, i8* %scevgep46.1230, align 1
  %scevgep47.1231 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %183 = load i8, i8* %scevgep47.1231, align 1
  %scevgep48.1232 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %183, i8* %scevgep48.1232, align 1
  %call16.i.1229.1 = call zeroext i8 (...) @rand() #3
  %scevgep46.1230.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  store i8 %call16.i.1229.1, i8* %scevgep46.1230.1, align 1
  %scevgep47.1231.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %184 = load i8, i8* %scevgep47.1231.1, align 1
  %scevgep48.1232.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 2, i64 0
  store i8 %184, i8* %scevgep48.1232.1, align 1
  %call16.i.1229.2 = call zeroext i8 (...) @rand() #3
  %scevgep46.1230.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  store i8 %call16.i.1229.2, i8* %scevgep46.1230.2, align 1
  %scevgep47.1231.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %185 = load i8, i8* %scevgep47.1231.2, align 1
  %scevgep48.1232.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 3, i64 0
  store i8 %185, i8* %scevgep48.1232.2, align 1
  %scevgep43.1238 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 1
  %186 = bitcast i8* %scevgep43.1238 to [4 x [4 x i8]]*
  %call16.i.1.1 = call zeroext i8 (...) @rand() #3
  %scevgep46.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %186, i64 0, i64 0, i64 1
  store i8 %call16.i.1.1, i8* %scevgep46.1.1, align 1
  %scevgep47.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %186, i64 0, i64 0, i64 1
  %187 = load i8, i8* %scevgep47.1.1, align 1
  %scevgep48.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %186, i64 0, i64 1, i64 0
  store i8 %187, i8* %scevgep48.1.1, align 1
  %call16.i.1.1.1 = call zeroext i8 (...) @rand() #3
  %scevgep46.1.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %186, i64 0, i64 0, i64 2
  store i8 %call16.i.1.1.1, i8* %scevgep46.1.1.1, align 1
  %scevgep47.1.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %186, i64 0, i64 0, i64 2
  %188 = load i8, i8* %scevgep47.1.1.1, align 1
  %scevgep48.1.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %186, i64 0, i64 2, i64 0
  store i8 %188, i8* %scevgep48.1.1.1, align 1
  %scevgep43.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %186, i64 0, i64 1, i64 1
  %189 = bitcast i8* %scevgep43.1.1 to [4 x [4 x i8]]*
  %call16.i.2.1 = call zeroext i8 (...) @rand() #3
  %scevgep46.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %189, i64 0, i64 0, i64 1
  store i8 %call16.i.2.1, i8* %scevgep46.2.1, align 1
  %scevgep47.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %189, i64 0, i64 0, i64 1
  %190 = load i8, i8* %scevgep47.2.1, align 1
  %scevgep48.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %189, i64 0, i64 1, i64 0
  store i8 %190, i8* %scevgep48.2.1, align 1
  %scevgep59.1.1266 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %174, i64 0, i64 0, i64 1
  %191 = load i8, i8* %scevgep59.1.1266, align 1
  %conv44.i.1.1267 = zext i8 %191 to i32
  %scevgep62.1.1268 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %192 = load i8, i8* %scevgep62.1.1268, align 1
  %conv49.i.1.1269 = zext i8 %192 to i32
  %xor.i.1.1270 = xor i32 %conv44.i.1.1267, %conv49.i.1.1269
  %conv50.i.1.1271 = trunc i32 %xor.i.1.1270 to i8
  %scevgep66.1.1272 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.1271, i8* %scevgep66.1.1272, align 1
  %193 = load i8, i8* %x, align 1
  %conv57.i.1.1273 = zext i8 %193 to i32
  %xor58.i.1.1274 = xor i32 %conv57.i.1.1273, 1
  %conv59.i.1.1275 = trunc i32 %xor58.i.1.1274 to i8
  %scevgep63.1.1276 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %194 = load i8, i8* %scevgep63.1.1276, align 1
  %call64.i.1.1277 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.1275, i8 zeroext %194) #3
  %scevgep70.1.1278 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i.1.1277, i8* %scevgep70.1.1278, align 1
  %195 = load i8, i8* %x, align 1
  %scevgep67.1.1279 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 1
  %196 = load i8, i8* %scevgep67.1.1279, align 1
  %call75.i.1.1280 = call zeroext i8 @mult(i8 zeroext %195, i8 zeroext %196) #3
  %scevgep74.1.1281 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i.1.1280, i8* %scevgep74.1.1281, align 1
  %scevgep71.1.1282 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %197 = load i8, i8* %scevgep71.1.1282, align 1
  %conv84.i.1.1283 = zext i8 %197 to i32
  %scevgep75.1.1284 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %198 = load i8, i8* %scevgep75.1.1284, align 1
  %conv89.i.1.1285 = zext i8 %198 to i32
  %xor90.i.1.1286 = xor i32 %conv84.i.1.1283, %conv89.i.1.1285
  %conv91.i.1.1287 = trunc i32 %xor90.i.1.1286 to i8
  %scevgep78.1.1288 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.1287, i8* %scevgep78.1.1288, align 1
  %scevgep59.2.1291 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %174, i64 0, i64 0, i64 2
  %199 = load i8, i8* %scevgep59.2.1291, align 1
  %conv44.i.2.1292 = zext i8 %199 to i32
  %scevgep62.2.1293 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %200 = load i8, i8* %scevgep62.2.1293, align 1
  %conv49.i.2.1294 = zext i8 %200 to i32
  %xor.i.2.1295 = xor i32 %conv44.i.2.1292, %conv49.i.2.1294
  %conv50.i.2.1296 = trunc i32 %xor.i.2.1295 to i8
  %scevgep66.2.1297 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.1296, i8* %scevgep66.2.1297, align 1
  %201 = load i8, i8* %x, align 1
  %conv57.i.2.1298 = zext i8 %201 to i32
  %xor58.i.2.1299 = xor i32 %conv57.i.2.1298, 1
  %conv59.i.2.1300 = trunc i32 %xor58.i.2.1299 to i8
  %scevgep63.2.1301 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %202 = load i8, i8* %scevgep63.2.1301, align 1
  %call64.i.2.1302 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.1300, i8 zeroext %202) #3
  %scevgep70.2.1303 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 2
  store i8 %call64.i.2.1302, i8* %scevgep70.2.1303, align 1
  %203 = load i8, i8* %x, align 1
  %scevgep67.2.1304 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 2
  %204 = load i8, i8* %scevgep67.2.1304, align 1
  %call75.i.2.1305 = call zeroext i8 @mult(i8 zeroext %203, i8 zeroext %204) #3
  %scevgep74.2.1306 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 2
  store i8 %call75.i.2.1305, i8* %scevgep74.2.1306, align 1
  %scevgep71.2.1307 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 2
  %205 = load i8, i8* %scevgep71.2.1307, align 1
  %conv84.i.2.1308 = zext i8 %205 to i32
  %scevgep75.2.1309 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 2
  %206 = load i8, i8* %scevgep75.2.1309, align 1
  %conv89.i.2.1310 = zext i8 %206 to i32
  %xor90.i.2.1311 = xor i32 %conv84.i.2.1308, %conv89.i.2.1310
  %conv91.i.2.1312 = trunc i32 %xor90.i.2.1311 to i8
  %scevgep78.2.1313 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.1312, i8* %scevgep78.2.1313, align 1
  %scevgep59.3.1316 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %174, i64 0, i64 0, i64 3
  %207 = load i8, i8* %scevgep59.3.1316, align 1
  %conv44.i.3.1317 = zext i8 %207 to i32
  %scevgep62.3.1318 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %208 = load i8, i8* %scevgep62.3.1318, align 1
  %conv49.i.3.1319 = zext i8 %208 to i32
  %xor.i.3.1320 = xor i32 %conv44.i.3.1317, %conv49.i.3.1319
  %conv50.i.3.1321 = trunc i32 %xor.i.3.1320 to i8
  %scevgep66.3.1322 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 3
  store i8 %conv50.i.3.1321, i8* %scevgep66.3.1322, align 1
  %209 = load i8, i8* %x, align 1
  %conv57.i.3.1323 = zext i8 %209 to i32
  %xor58.i.3.1324 = xor i32 %conv57.i.3.1323, 1
  %conv59.i.3.1325 = trunc i32 %xor58.i.3.1324 to i8
  %scevgep63.3.1326 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %210 = load i8, i8* %scevgep63.3.1326, align 1
  %call64.i.3.1327 = call zeroext i8 @mult(i8 zeroext %conv59.i.3.1325, i8 zeroext %210) #3
  %scevgep70.3.1328 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 3
  store i8 %call64.i.3.1327, i8* %scevgep70.3.1328, align 1
  %211 = load i8, i8* %x, align 1
  %scevgep67.3.1329 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 3
  %212 = load i8, i8* %scevgep67.3.1329, align 1
  %call75.i.3.1330 = call zeroext i8 @mult(i8 zeroext %211, i8 zeroext %212) #3
  %scevgep74.3.1331 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 3
  store i8 %call75.i.3.1330, i8* %scevgep74.3.1331, align 1
  %scevgep71.3.1332 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 3
  %213 = load i8, i8* %scevgep71.3.1332, align 1
  %conv84.i.3.1333 = zext i8 %213 to i32
  %scevgep75.3.1334 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 3
  %214 = load i8, i8* %scevgep75.3.1334, align 1
  %conv89.i.3.1335 = zext i8 %214 to i32
  %xor90.i.3.1336 = xor i32 %conv84.i.3.1333, %conv89.i.3.1335
  %conv91.i.3.1337 = trunc i32 %xor90.i.3.1336 to i8
  %scevgep78.3.1338 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 3
  store i8 %conv91.i.3.1337, i8* %scevgep78.3.1338, align 1
  %scevgep61.1340 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  %215 = bitcast i8* %scevgep61.1340 to [4 x [4 x i8]]*
  %scevgep65.1341 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 1, i64 0
  %216 = bitcast i8* %scevgep65.1341 to [4 x [4 x i8]]*
  %scevgep69.1342 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %217 = bitcast i8* %scevgep69.1342 to [4 x [4 x i8]]*
  %scevgep73.1343 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %218 = bitcast i8* %scevgep73.1343 to [4 x [4 x i8]]*
  %scevgep77.1344 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 1, i64 0
  %219 = bitcast i8* %scevgep77.1344 to [4 x [4 x i8]]*
  %arrayidx56.i.1.1 = getelementptr inbounds i8, i8* %x, i64 1
  %arrayidx70.i.1.1 = getelementptr inbounds i8, i8* %x, i64 1
  %scevgep59.1110.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %174, i64 0, i64 0, i64 0
  %220 = load i8, i8* %scevgep59.1110.1, align 1
  %conv44.i.1111.1 = zext i8 %220 to i32
  %scevgep62.1112.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %215, i64 0, i64 0, i64 0
  %221 = load i8, i8* %scevgep62.1112.1, align 1
  %conv49.i.1113.1 = zext i8 %221 to i32
  %xor.i.1114.1 = xor i32 %conv44.i.1111.1, %conv49.i.1113.1
  %conv50.i.1115.1 = trunc i32 %xor.i.1114.1 to i8
  %scevgep66.1116.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %216, i64 0, i64 0, i64 0
  store i8 %conv50.i.1115.1, i8* %scevgep66.1116.1, align 1
  %222 = load i8, i8* %arrayidx56.i.1.1, align 1
  %conv57.i.1117.1 = zext i8 %222 to i32
  %xor58.i.1118.1 = xor i32 %conv57.i.1117.1, 1
  %conv59.i.1119.1 = trunc i32 %xor58.i.1118.1 to i8
  %scevgep63.1120.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %215, i64 0, i64 0, i64 0
  %223 = load i8, i8* %scevgep63.1120.1, align 1
  %call64.i.1121.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.1119.1, i8 zeroext %223) #3
  %scevgep70.1122.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %217, i64 0, i64 0, i64 0
  store i8 %call64.i.1121.1, i8* %scevgep70.1122.1, align 1
  %224 = load i8, i8* %arrayidx70.i.1.1, align 1
  %scevgep67.1123.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %216, i64 0, i64 0, i64 0
  %225 = load i8, i8* %scevgep67.1123.1, align 1
  %call75.i.1124.1 = call zeroext i8 @mult(i8 zeroext %224, i8 zeroext %225) #3
  %scevgep74.1125.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %218, i64 0, i64 0, i64 0
  store i8 %call75.i.1124.1, i8* %scevgep74.1125.1, align 1
  %scevgep71.1126.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %217, i64 0, i64 0, i64 0
  %226 = load i8, i8* %scevgep71.1126.1, align 1
  %conv84.i.1127.1 = zext i8 %226 to i32
  %scevgep75.1128.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %218, i64 0, i64 0, i64 0
  %227 = load i8, i8* %scevgep75.1128.1, align 1
  %conv89.i.1129.1 = zext i8 %227 to i32
  %xor90.i.1130.1 = xor i32 %conv84.i.1127.1, %conv89.i.1129.1
  %conv91.i.1131.1 = trunc i32 %xor90.i.1130.1 to i8
  %scevgep78.1132.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %219, i64 0, i64 0, i64 0
  store i8 %conv91.i.1131.1, i8* %scevgep78.1132.1, align 1
  %scevgep59.2.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %174, i64 0, i64 0, i64 2
  %228 = load i8, i8* %scevgep59.2.1.1, align 1
  %conv44.i.2.1.1 = zext i8 %228 to i32
  %scevgep62.2.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %215, i64 0, i64 0, i64 2
  %229 = load i8, i8* %scevgep62.2.1.1, align 1
  %conv49.i.2.1.1 = zext i8 %229 to i32
  %xor.i.2.1.1 = xor i32 %conv44.i.2.1.1, %conv49.i.2.1.1
  %conv50.i.2.1.1 = trunc i32 %xor.i.2.1.1 to i8
  %scevgep66.2.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %216, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.1.1, i8* %scevgep66.2.1.1, align 1
  %230 = load i8, i8* %arrayidx56.i.1.1, align 1
  %conv57.i.2.1.1 = zext i8 %230 to i32
  %xor58.i.2.1.1 = xor i32 %conv57.i.2.1.1, 1
  %conv59.i.2.1.1 = trunc i32 %xor58.i.2.1.1 to i8
  %scevgep63.2.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %215, i64 0, i64 0, i64 2
  %231 = load i8, i8* %scevgep63.2.1.1, align 1
  %call64.i.2.1.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.1.1, i8 zeroext %231) #3
  %scevgep70.2.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %217, i64 0, i64 0, i64 2
  store i8 %call64.i.2.1.1, i8* %scevgep70.2.1.1, align 1
  %232 = load i8, i8* %arrayidx70.i.1.1, align 1
  %scevgep67.2.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %216, i64 0, i64 0, i64 2
  %233 = load i8, i8* %scevgep67.2.1.1, align 1
  %call75.i.2.1.1 = call zeroext i8 @mult(i8 zeroext %232, i8 zeroext %233) #3
  %scevgep74.2.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %218, i64 0, i64 0, i64 2
  store i8 %call75.i.2.1.1, i8* %scevgep74.2.1.1, align 1
  %scevgep71.2.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %217, i64 0, i64 0, i64 2
  %234 = load i8, i8* %scevgep71.2.1.1, align 1
  %conv84.i.2.1.1 = zext i8 %234 to i32
  %scevgep75.2.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %218, i64 0, i64 0, i64 2
  %235 = load i8, i8* %scevgep75.2.1.1, align 1
  %conv89.i.2.1.1 = zext i8 %235 to i32
  %xor90.i.2.1.1 = xor i32 %conv84.i.2.1.1, %conv89.i.2.1.1
  %conv91.i.2.1.1 = trunc i32 %xor90.i.2.1.1 to i8
  %scevgep78.2.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %219, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.1.1, i8* %scevgep78.2.1.1, align 1
  %scevgep59.3.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %174, i64 0, i64 0, i64 3
  %236 = load i8, i8* %scevgep59.3.1.1, align 1
  %conv44.i.3.1.1 = zext i8 %236 to i32
  %scevgep62.3.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %215, i64 0, i64 0, i64 3
  %237 = load i8, i8* %scevgep62.3.1.1, align 1
  %conv49.i.3.1.1 = zext i8 %237 to i32
  %xor.i.3.1.1 = xor i32 %conv44.i.3.1.1, %conv49.i.3.1.1
  %conv50.i.3.1.1 = trunc i32 %xor.i.3.1.1 to i8
  %scevgep66.3.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %216, i64 0, i64 0, i64 3
  store i8 %conv50.i.3.1.1, i8* %scevgep66.3.1.1, align 1
  %238 = load i8, i8* %arrayidx56.i.1.1, align 1
  %conv57.i.3.1.1 = zext i8 %238 to i32
  %xor58.i.3.1.1 = xor i32 %conv57.i.3.1.1, 1
  %conv59.i.3.1.1 = trunc i32 %xor58.i.3.1.1 to i8
  %scevgep63.3.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %215, i64 0, i64 0, i64 3
  %239 = load i8, i8* %scevgep63.3.1.1, align 1
  %call64.i.3.1.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.3.1.1, i8 zeroext %239) #3
  %scevgep70.3.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %217, i64 0, i64 0, i64 3
  store i8 %call64.i.3.1.1, i8* %scevgep70.3.1.1, align 1
  %240 = load i8, i8* %arrayidx70.i.1.1, align 1
  %scevgep67.3.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %216, i64 0, i64 0, i64 3
  %241 = load i8, i8* %scevgep67.3.1.1, align 1
  %call75.i.3.1.1 = call zeroext i8 @mult(i8 zeroext %240, i8 zeroext %241) #3
  %scevgep74.3.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %218, i64 0, i64 0, i64 3
  store i8 %call75.i.3.1.1, i8* %scevgep74.3.1.1, align 1
  %scevgep71.3.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %217, i64 0, i64 0, i64 3
  %242 = load i8, i8* %scevgep71.3.1.1, align 1
  %conv84.i.3.1.1 = zext i8 %242 to i32
  %scevgep75.3.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %218, i64 0, i64 0, i64 3
  %243 = load i8, i8* %scevgep75.3.1.1, align 1
  %conv89.i.3.1.1 = zext i8 %243 to i32
  %xor90.i.3.1.1 = xor i32 %conv84.i.3.1.1, %conv89.i.3.1.1
  %conv91.i.3.1.1 = trunc i32 %xor90.i.3.1.1 to i8
  %scevgep78.3.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %219, i64 0, i64 0, i64 3
  store i8 %conv91.i.3.1.1, i8* %scevgep78.3.1.1, align 1
  %scevgep61.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %215, i64 0, i64 1, i64 0
  %244 = bitcast i8* %scevgep61.1.1 to [4 x [4 x i8]]*
  %scevgep65.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %216, i64 0, i64 1, i64 0
  %245 = bitcast i8* %scevgep65.1.1 to [4 x [4 x i8]]*
  %scevgep69.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %217, i64 0, i64 1, i64 0
  %246 = bitcast i8* %scevgep69.1.1 to [4 x [4 x i8]]*
  %scevgep73.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %218, i64 0, i64 1, i64 0
  %247 = bitcast i8* %scevgep73.1.1 to [4 x [4 x i8]]*
  %scevgep77.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %219, i64 0, i64 1, i64 0
  %248 = bitcast i8* %scevgep77.1.1 to [4 x [4 x i8]]*
  %arrayidx56.i.2.1 = getelementptr inbounds i8, i8* %x, i64 2
  %arrayidx70.i.2.1 = getelementptr inbounds i8, i8* %x, i64 2
  %scevgep59.2137.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %174, i64 0, i64 0, i64 0
  %249 = load i8, i8* %scevgep59.2137.1, align 1
  %conv44.i.2138.1 = zext i8 %249 to i32
  %scevgep62.2139.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %244, i64 0, i64 0, i64 0
  %250 = load i8, i8* %scevgep62.2139.1, align 1
  %conv49.i.2140.1 = zext i8 %250 to i32
  %xor.i.2141.1 = xor i32 %conv44.i.2138.1, %conv49.i.2140.1
  %conv50.i.2142.1 = trunc i32 %xor.i.2141.1 to i8
  %scevgep66.2143.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %245, i64 0, i64 0, i64 0
  store i8 %conv50.i.2142.1, i8* %scevgep66.2143.1, align 1
  %251 = load i8, i8* %arrayidx56.i.2.1, align 1
  %conv57.i.2144.1 = zext i8 %251 to i32
  %xor58.i.2145.1 = xor i32 %conv57.i.2144.1, 1
  %conv59.i.2146.1 = trunc i32 %xor58.i.2145.1 to i8
  %scevgep63.2147.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %244, i64 0, i64 0, i64 0
  %252 = load i8, i8* %scevgep63.2147.1, align 1
  %call64.i.2148.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.2146.1, i8 zeroext %252) #3
  %scevgep70.2149.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %246, i64 0, i64 0, i64 0
  store i8 %call64.i.2148.1, i8* %scevgep70.2149.1, align 1
  %253 = load i8, i8* %arrayidx70.i.2.1, align 1
  %scevgep67.2150.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %245, i64 0, i64 0, i64 0
  %254 = load i8, i8* %scevgep67.2150.1, align 1
  %call75.i.2151.1 = call zeroext i8 @mult(i8 zeroext %253, i8 zeroext %254) #3
  %scevgep74.2152.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %247, i64 0, i64 0, i64 0
  store i8 %call75.i.2151.1, i8* %scevgep74.2152.1, align 1
  %scevgep71.2153.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %246, i64 0, i64 0, i64 0
  %255 = load i8, i8* %scevgep71.2153.1, align 1
  %conv84.i.2154.1 = zext i8 %255 to i32
  %scevgep75.2155.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %247, i64 0, i64 0, i64 0
  %256 = load i8, i8* %scevgep75.2155.1, align 1
  %conv89.i.2156.1 = zext i8 %256 to i32
  %xor90.i.2157.1 = xor i32 %conv84.i.2154.1, %conv89.i.2156.1
  %conv91.i.2158.1 = trunc i32 %xor90.i.2157.1 to i8
  %scevgep78.2159.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %248, i64 0, i64 0, i64 0
  store i8 %conv91.i.2158.1, i8* %scevgep78.2159.1, align 1
  %scevgep59.1.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %174, i64 0, i64 0, i64 1
  %257 = load i8, i8* %scevgep59.1.2.1, align 1
  %conv44.i.1.2.1 = zext i8 %257 to i32
  %scevgep62.1.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %244, i64 0, i64 0, i64 1
  %258 = load i8, i8* %scevgep62.1.2.1, align 1
  %conv49.i.1.2.1 = zext i8 %258 to i32
  %xor.i.1.2.1 = xor i32 %conv44.i.1.2.1, %conv49.i.1.2.1
  %conv50.i.1.2.1 = trunc i32 %xor.i.1.2.1 to i8
  %scevgep66.1.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %245, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.2.1, i8* %scevgep66.1.2.1, align 1
  %259 = load i8, i8* %arrayidx56.i.2.1, align 1
  %conv57.i.1.2.1 = zext i8 %259 to i32
  %xor58.i.1.2.1 = xor i32 %conv57.i.1.2.1, 1
  %conv59.i.1.2.1 = trunc i32 %xor58.i.1.2.1 to i8
  %scevgep63.1.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %244, i64 0, i64 0, i64 1
  %260 = load i8, i8* %scevgep63.1.2.1, align 1
  %call64.i.1.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.2.1, i8 zeroext %260) #3
  %scevgep70.1.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %246, i64 0, i64 0, i64 1
  store i8 %call64.i.1.2.1, i8* %scevgep70.1.2.1, align 1
  %261 = load i8, i8* %arrayidx70.i.2.1, align 1
  %scevgep67.1.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %245, i64 0, i64 0, i64 1
  %262 = load i8, i8* %scevgep67.1.2.1, align 1
  %call75.i.1.2.1 = call zeroext i8 @mult(i8 zeroext %261, i8 zeroext %262) #3
  %scevgep74.1.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %247, i64 0, i64 0, i64 1
  store i8 %call75.i.1.2.1, i8* %scevgep74.1.2.1, align 1
  %scevgep71.1.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %246, i64 0, i64 0, i64 1
  %263 = load i8, i8* %scevgep71.1.2.1, align 1
  %conv84.i.1.2.1 = zext i8 %263 to i32
  %scevgep75.1.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %247, i64 0, i64 0, i64 1
  %264 = load i8, i8* %scevgep75.1.2.1, align 1
  %conv89.i.1.2.1 = zext i8 %264 to i32
  %xor90.i.1.2.1 = xor i32 %conv84.i.1.2.1, %conv89.i.1.2.1
  %conv91.i.1.2.1 = trunc i32 %xor90.i.1.2.1 to i8
  %scevgep78.1.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %248, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.2.1, i8* %scevgep78.1.2.1, align 1
  %scevgep59.3.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %174, i64 0, i64 0, i64 3
  %265 = load i8, i8* %scevgep59.3.2.1, align 1
  %conv44.i.3.2.1 = zext i8 %265 to i32
  %scevgep62.3.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %244, i64 0, i64 0, i64 3
  %266 = load i8, i8* %scevgep62.3.2.1, align 1
  %conv49.i.3.2.1 = zext i8 %266 to i32
  %xor.i.3.2.1 = xor i32 %conv44.i.3.2.1, %conv49.i.3.2.1
  %conv50.i.3.2.1 = trunc i32 %xor.i.3.2.1 to i8
  %scevgep66.3.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %245, i64 0, i64 0, i64 3
  store i8 %conv50.i.3.2.1, i8* %scevgep66.3.2.1, align 1
  %267 = load i8, i8* %arrayidx56.i.2.1, align 1
  %conv57.i.3.2.1 = zext i8 %267 to i32
  %xor58.i.3.2.1 = xor i32 %conv57.i.3.2.1, 1
  %conv59.i.3.2.1 = trunc i32 %xor58.i.3.2.1 to i8
  %scevgep63.3.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %244, i64 0, i64 0, i64 3
  %268 = load i8, i8* %scevgep63.3.2.1, align 1
  %call64.i.3.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.3.2.1, i8 zeroext %268) #3
  %scevgep70.3.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %246, i64 0, i64 0, i64 3
  store i8 %call64.i.3.2.1, i8* %scevgep70.3.2.1, align 1
  %269 = load i8, i8* %arrayidx70.i.2.1, align 1
  %scevgep67.3.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %245, i64 0, i64 0, i64 3
  %270 = load i8, i8* %scevgep67.3.2.1, align 1
  %call75.i.3.2.1 = call zeroext i8 @mult(i8 zeroext %269, i8 zeroext %270) #3
  %scevgep74.3.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %247, i64 0, i64 0, i64 3
  store i8 %call75.i.3.2.1, i8* %scevgep74.3.2.1, align 1
  %scevgep71.3.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %246, i64 0, i64 0, i64 3
  %271 = load i8, i8* %scevgep71.3.2.1, align 1
  %conv84.i.3.2.1 = zext i8 %271 to i32
  %scevgep75.3.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %247, i64 0, i64 0, i64 3
  %272 = load i8, i8* %scevgep75.3.2.1, align 1
  %conv89.i.3.2.1 = zext i8 %272 to i32
  %xor90.i.3.2.1 = xor i32 %conv84.i.3.2.1, %conv89.i.3.2.1
  %conv91.i.3.2.1 = trunc i32 %xor90.i.3.2.1 to i8
  %scevgep78.3.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %248, i64 0, i64 0, i64 3
  store i8 %conv91.i.3.2.1, i8* %scevgep78.3.2.1, align 1
  %scevgep61.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %244, i64 0, i64 1, i64 0
  %273 = bitcast i8* %scevgep61.2.1 to [4 x [4 x i8]]*
  %scevgep65.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %245, i64 0, i64 1, i64 0
  %274 = bitcast i8* %scevgep65.2.1 to [4 x [4 x i8]]*
  %scevgep69.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %246, i64 0, i64 1, i64 0
  %275 = bitcast i8* %scevgep69.2.1 to [4 x [4 x i8]]*
  %scevgep73.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %247, i64 0, i64 1, i64 0
  %276 = bitcast i8* %scevgep73.2.1 to [4 x [4 x i8]]*
  %scevgep77.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %248, i64 0, i64 1, i64 0
  %277 = bitcast i8* %scevgep77.2.1 to [4 x [4 x i8]]*
  %arrayidx56.i.3.1 = getelementptr inbounds i8, i8* %x, i64 3
  %arrayidx70.i.3.1 = getelementptr inbounds i8, i8* %x, i64 3
  %scevgep59.3164.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %174, i64 0, i64 0, i64 0
  %278 = load i8, i8* %scevgep59.3164.1, align 1
  %conv44.i.3165.1 = zext i8 %278 to i32
  %scevgep62.3166.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %273, i64 0, i64 0, i64 0
  %279 = load i8, i8* %scevgep62.3166.1, align 1
  %conv49.i.3167.1 = zext i8 %279 to i32
  %xor.i.3168.1 = xor i32 %conv44.i.3165.1, %conv49.i.3167.1
  %conv50.i.3169.1 = trunc i32 %xor.i.3168.1 to i8
  %scevgep66.3170.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %274, i64 0, i64 0, i64 0
  store i8 %conv50.i.3169.1, i8* %scevgep66.3170.1, align 1
  %280 = load i8, i8* %arrayidx56.i.3.1, align 1
  %conv57.i.3171.1 = zext i8 %280 to i32
  %xor58.i.3172.1 = xor i32 %conv57.i.3171.1, 1
  %conv59.i.3173.1 = trunc i32 %xor58.i.3172.1 to i8
  %scevgep63.3174.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %273, i64 0, i64 0, i64 0
  %281 = load i8, i8* %scevgep63.3174.1, align 1
  %call64.i.3175.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.3173.1, i8 zeroext %281) #3
  %scevgep70.3176.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %275, i64 0, i64 0, i64 0
  store i8 %call64.i.3175.1, i8* %scevgep70.3176.1, align 1
  %282 = load i8, i8* %arrayidx70.i.3.1, align 1
  %scevgep67.3177.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %274, i64 0, i64 0, i64 0
  %283 = load i8, i8* %scevgep67.3177.1, align 1
  %call75.i.3178.1 = call zeroext i8 @mult(i8 zeroext %282, i8 zeroext %283) #3
  %scevgep74.3179.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %276, i64 0, i64 0, i64 0
  store i8 %call75.i.3178.1, i8* %scevgep74.3179.1, align 1
  %scevgep71.3180.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %275, i64 0, i64 0, i64 0
  %284 = load i8, i8* %scevgep71.3180.1, align 1
  %conv84.i.3181.1 = zext i8 %284 to i32
  %scevgep75.3182.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %276, i64 0, i64 0, i64 0
  %285 = load i8, i8* %scevgep75.3182.1, align 1
  %conv89.i.3183.1 = zext i8 %285 to i32
  %xor90.i.3184.1 = xor i32 %conv84.i.3181.1, %conv89.i.3183.1
  %conv91.i.3185.1 = trunc i32 %xor90.i.3184.1 to i8
  %scevgep78.3186.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %277, i64 0, i64 0, i64 0
  store i8 %conv91.i.3185.1, i8* %scevgep78.3186.1, align 1
  %scevgep59.1.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %174, i64 0, i64 0, i64 1
  %286 = load i8, i8* %scevgep59.1.3.1, align 1
  %conv44.i.1.3.1 = zext i8 %286 to i32
  %scevgep62.1.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %273, i64 0, i64 0, i64 1
  %287 = load i8, i8* %scevgep62.1.3.1, align 1
  %conv49.i.1.3.1 = zext i8 %287 to i32
  %xor.i.1.3.1 = xor i32 %conv44.i.1.3.1, %conv49.i.1.3.1
  %conv50.i.1.3.1 = trunc i32 %xor.i.1.3.1 to i8
  %scevgep66.1.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %274, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.3.1, i8* %scevgep66.1.3.1, align 1
  %288 = load i8, i8* %arrayidx56.i.3.1, align 1
  %conv57.i.1.3.1 = zext i8 %288 to i32
  %xor58.i.1.3.1 = xor i32 %conv57.i.1.3.1, 1
  %conv59.i.1.3.1 = trunc i32 %xor58.i.1.3.1 to i8
  %scevgep63.1.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %273, i64 0, i64 0, i64 1
  %289 = load i8, i8* %scevgep63.1.3.1, align 1
  %call64.i.1.3.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.3.1, i8 zeroext %289) #3
  %scevgep70.1.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %275, i64 0, i64 0, i64 1
  store i8 %call64.i.1.3.1, i8* %scevgep70.1.3.1, align 1
  %290 = load i8, i8* %arrayidx70.i.3.1, align 1
  %scevgep67.1.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %274, i64 0, i64 0, i64 1
  %291 = load i8, i8* %scevgep67.1.3.1, align 1
  %call75.i.1.3.1 = call zeroext i8 @mult(i8 zeroext %290, i8 zeroext %291) #3
  %scevgep74.1.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %276, i64 0, i64 0, i64 1
  store i8 %call75.i.1.3.1, i8* %scevgep74.1.3.1, align 1
  %scevgep71.1.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %275, i64 0, i64 0, i64 1
  %292 = load i8, i8* %scevgep71.1.3.1, align 1
  %conv84.i.1.3.1 = zext i8 %292 to i32
  %scevgep75.1.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %276, i64 0, i64 0, i64 1
  %293 = load i8, i8* %scevgep75.1.3.1, align 1
  %conv89.i.1.3.1 = zext i8 %293 to i32
  %xor90.i.1.3.1 = xor i32 %conv84.i.1.3.1, %conv89.i.1.3.1
  %conv91.i.1.3.1 = trunc i32 %xor90.i.1.3.1 to i8
  %scevgep78.1.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %277, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.3.1, i8* %scevgep78.1.3.1, align 1
  %scevgep59.2.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %174, i64 0, i64 0, i64 2
  %294 = load i8, i8* %scevgep59.2.3.1, align 1
  %conv44.i.2.3.1 = zext i8 %294 to i32
  %scevgep62.2.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %273, i64 0, i64 0, i64 2
  %295 = load i8, i8* %scevgep62.2.3.1, align 1
  %conv49.i.2.3.1 = zext i8 %295 to i32
  %xor.i.2.3.1 = xor i32 %conv44.i.2.3.1, %conv49.i.2.3.1
  %conv50.i.2.3.1 = trunc i32 %xor.i.2.3.1 to i8
  %scevgep66.2.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %274, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.3.1, i8* %scevgep66.2.3.1, align 1
  %296 = load i8, i8* %arrayidx56.i.3.1, align 1
  %conv57.i.2.3.1 = zext i8 %296 to i32
  %xor58.i.2.3.1 = xor i32 %conv57.i.2.3.1, 1
  %conv59.i.2.3.1 = trunc i32 %xor58.i.2.3.1 to i8
  %scevgep63.2.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %273, i64 0, i64 0, i64 2
  %297 = load i8, i8* %scevgep63.2.3.1, align 1
  %call64.i.2.3.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.3.1, i8 zeroext %297) #3
  %scevgep70.2.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %275, i64 0, i64 0, i64 2
  store i8 %call64.i.2.3.1, i8* %scevgep70.2.3.1, align 1
  %298 = load i8, i8* %arrayidx70.i.3.1, align 1
  %scevgep67.2.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %274, i64 0, i64 0, i64 2
  %299 = load i8, i8* %scevgep67.2.3.1, align 1
  %call75.i.2.3.1 = call zeroext i8 @mult(i8 zeroext %298, i8 zeroext %299) #3
  %scevgep74.2.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %276, i64 0, i64 0, i64 2
  store i8 %call75.i.2.3.1, i8* %scevgep74.2.3.1, align 1
  %scevgep71.2.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %275, i64 0, i64 0, i64 2
  %300 = load i8, i8* %scevgep71.2.3.1, align 1
  %conv84.i.2.3.1 = zext i8 %300 to i32
  %scevgep75.2.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %276, i64 0, i64 0, i64 2
  %301 = load i8, i8* %scevgep75.2.3.1, align 1
  %conv89.i.2.3.1 = zext i8 %301 to i32
  %xor90.i.2.3.1 = xor i32 %conv84.i.2.3.1, %conv89.i.2.3.1
  %conv91.i.2.3.1 = trunc i32 %xor90.i.2.3.1 to i8
  %scevgep78.2.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %277, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.3.1, i8* %scevgep78.2.3.1, align 1
  %302 = load i8, i8* %x, align 1
  %303 = load i8, i8* %arraydecay7.1, align 1
  %call111.i.1346 = call zeroext i8 @mult(i8 zeroext %302, i8 zeroext %303) #3
  store i8 %call111.i.1346, i8* %arraydecay10.1, align 1
  %scevgep90.1.1355 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 1
  %304 = load i8, i8* %scevgep90.1.1355, align 1
  %conv126.i.1.1356 = zext i8 %304 to i32
  %305 = load i8, i8* %arraydecay10.1, align 1
  %conv129.i.1.1357 = zext i8 %305 to i32
  %xor130.i.1.1358 = xor i32 %conv129.i.1.1357, %conv126.i.1.1356
  %conv131.i.1.1359 = trunc i32 %xor130.i.1.1358 to i8
  store i8 %conv131.i.1.1359, i8* %arraydecay10.1, align 1
  %scevgep90.2.1362 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 2
  %306 = load i8, i8* %scevgep90.2.1362, align 1
  %conv126.i.2.1363 = zext i8 %306 to i32
  %307 = load i8, i8* %arraydecay10.1, align 1
  %conv129.i.2.1364 = zext i8 %307 to i32
  %xor130.i.2.1365 = xor i32 %conv129.i.2.1364, %conv126.i.2.1363
  %conv131.i.2.1366 = trunc i32 %xor130.i.2.1365 to i8
  store i8 %conv131.i.2.1366, i8* %arraydecay10.1, align 1
  %scevgep90.3.1369 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 3
  %308 = load i8, i8* %scevgep90.3.1369, align 1
  %conv126.i.3.1370 = zext i8 %308 to i32
  %309 = load i8, i8* %arraydecay10.1, align 1
  %conv129.i.3.1371 = zext i8 %309 to i32
  %xor130.i.3.1372 = xor i32 %conv129.i.3.1371, %conv126.i.3.1370
  %conv131.i.3.1373 = trunc i32 %xor130.i.3.1372 to i8
  store i8 %conv131.i.3.1373, i8* %arraydecay10.1, align 1
  %scevgep89.1375 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 1, i64 0
  %310 = bitcast i8* %scevgep89.1375 to [4 x [4 x i8]]*
  %arrayidx108.i.1.1 = getelementptr inbounds i8, i8* %x, i64 1
  %311 = load i8, i8* %arrayidx108.i.1.1, align 1
  %arrayidx110.i.1.1 = getelementptr inbounds i8, i8* %arraydecay7.1, i64 1
  %312 = load i8, i8* %arrayidx110.i.1.1, align 1
  %call111.i.1.1 = call zeroext i8 @mult(i8 zeroext %311, i8 zeroext %312) #3
  %arrayidx113.i.1.1 = getelementptr inbounds i8, i8* %arraydecay10.1, i64 1
  store i8 %call111.i.1.1, i8* %arrayidx113.i.1.1, align 1
  %arrayidx128.i.1.1 = getelementptr inbounds i8, i8* %arraydecay10.1, i64 1
  %scevgep90.1191.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %310, i64 0, i64 0, i64 0
  %313 = load i8, i8* %scevgep90.1191.1, align 1
  %conv126.i.1192.1 = zext i8 %313 to i32
  %314 = load i8, i8* %arrayidx128.i.1.1, align 1
  %conv129.i.1193.1 = zext i8 %314 to i32
  %xor130.i.1194.1 = xor i32 %conv129.i.1193.1, %conv126.i.1192.1
  %conv131.i.1195.1 = trunc i32 %xor130.i.1194.1 to i8
  store i8 %conv131.i.1195.1, i8* %arrayidx128.i.1.1, align 1
  %scevgep90.2.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %310, i64 0, i64 0, i64 2
  %315 = load i8, i8* %scevgep90.2.1.1, align 1
  %conv126.i.2.1.1 = zext i8 %315 to i32
  %316 = load i8, i8* %arrayidx128.i.1.1, align 1
  %conv129.i.2.1.1 = zext i8 %316 to i32
  %xor130.i.2.1.1 = xor i32 %conv129.i.2.1.1, %conv126.i.2.1.1
  %conv131.i.2.1.1 = trunc i32 %xor130.i.2.1.1 to i8
  store i8 %conv131.i.2.1.1, i8* %arrayidx128.i.1.1, align 1
  %scevgep90.3.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %310, i64 0, i64 0, i64 3
  %317 = load i8, i8* %scevgep90.3.1.1, align 1
  %conv126.i.3.1.1 = zext i8 %317 to i32
  %318 = load i8, i8* %arrayidx128.i.1.1, align 1
  %conv129.i.3.1.1 = zext i8 %318 to i32
  %xor130.i.3.1.1 = xor i32 %conv129.i.3.1.1, %conv126.i.3.1.1
  %conv131.i.3.1.1 = trunc i32 %xor130.i.3.1.1 to i8
  store i8 %conv131.i.3.1.1, i8* %arrayidx128.i.1.1, align 1
  %scevgep89.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %310, i64 0, i64 1, i64 0
  %319 = bitcast i8* %scevgep89.1.1 to [4 x [4 x i8]]*
  %arrayidx108.i.2.1 = getelementptr inbounds i8, i8* %x, i64 2
  %320 = load i8, i8* %arrayidx108.i.2.1, align 1
  %arrayidx110.i.2.1 = getelementptr inbounds i8, i8* %arraydecay7.1, i64 2
  %321 = load i8, i8* %arrayidx110.i.2.1, align 1
  %call111.i.2.1 = call zeroext i8 @mult(i8 zeroext %320, i8 zeroext %321) #3
  %arrayidx113.i.2.1 = getelementptr inbounds i8, i8* %arraydecay10.1, i64 2
  store i8 %call111.i.2.1, i8* %arrayidx113.i.2.1, align 1
  %arrayidx128.i.2.1 = getelementptr inbounds i8, i8* %arraydecay10.1, i64 2
  %scevgep90.2200.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %319, i64 0, i64 0, i64 0
  %322 = load i8, i8* %scevgep90.2200.1, align 1
  %conv126.i.2201.1 = zext i8 %322 to i32
  %323 = load i8, i8* %arrayidx128.i.2.1, align 1
  %conv129.i.2202.1 = zext i8 %323 to i32
  %xor130.i.2203.1 = xor i32 %conv129.i.2202.1, %conv126.i.2201.1
  %conv131.i.2204.1 = trunc i32 %xor130.i.2203.1 to i8
  store i8 %conv131.i.2204.1, i8* %arrayidx128.i.2.1, align 1
  %scevgep90.1.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %319, i64 0, i64 0, i64 1
  %324 = load i8, i8* %scevgep90.1.2.1, align 1
  %conv126.i.1.2.1 = zext i8 %324 to i32
  %325 = load i8, i8* %arrayidx128.i.2.1, align 1
  %conv129.i.1.2.1 = zext i8 %325 to i32
  %xor130.i.1.2.1 = xor i32 %conv129.i.1.2.1, %conv126.i.1.2.1
  %conv131.i.1.2.1 = trunc i32 %xor130.i.1.2.1 to i8
  store i8 %conv131.i.1.2.1, i8* %arrayidx128.i.2.1, align 1
  %scevgep90.3.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %319, i64 0, i64 0, i64 3
  %326 = load i8, i8* %scevgep90.3.2.1, align 1
  %conv126.i.3.2.1 = zext i8 %326 to i32
  %327 = load i8, i8* %arrayidx128.i.2.1, align 1
  %conv129.i.3.2.1 = zext i8 %327 to i32
  %xor130.i.3.2.1 = xor i32 %conv129.i.3.2.1, %conv126.i.3.2.1
  %conv131.i.3.2.1 = trunc i32 %xor130.i.3.2.1 to i8
  store i8 %conv131.i.3.2.1, i8* %arrayidx128.i.2.1, align 1
  %scevgep89.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %319, i64 0, i64 1, i64 0
  %328 = bitcast i8* %scevgep89.2.1 to [4 x [4 x i8]]*
  %arrayidx108.i.3.1 = getelementptr inbounds i8, i8* %x, i64 3
  %329 = load i8, i8* %arrayidx108.i.3.1, align 1
  %arrayidx110.i.3.1 = getelementptr inbounds i8, i8* %arraydecay7.1, i64 3
  %330 = load i8, i8* %arrayidx110.i.3.1, align 1
  %call111.i.3.1 = call zeroext i8 @mult(i8 zeroext %329, i8 zeroext %330) #3
  %arrayidx113.i.3.1 = getelementptr inbounds i8, i8* %arraydecay10.1, i64 3
  store i8 %call111.i.3.1, i8* %arrayidx113.i.3.1, align 1
  %arrayidx128.i.3.1 = getelementptr inbounds i8, i8* %arraydecay10.1, i64 3
  %scevgep90.3209.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %328, i64 0, i64 0, i64 0
  %331 = load i8, i8* %scevgep90.3209.1, align 1
  %conv126.i.3210.1 = zext i8 %331 to i32
  %332 = load i8, i8* %arrayidx128.i.3.1, align 1
  %conv129.i.3211.1 = zext i8 %332 to i32
  %xor130.i.3212.1 = xor i32 %conv129.i.3211.1, %conv126.i.3210.1
  %conv131.i.3213.1 = trunc i32 %xor130.i.3212.1 to i8
  store i8 %conv131.i.3213.1, i8* %arrayidx128.i.3.1, align 1
  %scevgep90.1.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %328, i64 0, i64 0, i64 1
  %333 = load i8, i8* %scevgep90.1.3.1, align 1
  %conv126.i.1.3.1 = zext i8 %333 to i32
  %334 = load i8, i8* %arrayidx128.i.3.1, align 1
  %conv129.i.1.3.1 = zext i8 %334 to i32
  %xor130.i.1.3.1 = xor i32 %conv129.i.1.3.1, %conv126.i.1.3.1
  %conv131.i.1.3.1 = trunc i32 %xor130.i.1.3.1 to i8
  store i8 %conv131.i.1.3.1, i8* %arrayidx128.i.3.1, align 1
  %scevgep90.2.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %328, i64 0, i64 0, i64 2
  %335 = load i8, i8* %scevgep90.2.3.1, align 1
  %conv126.i.2.3.1 = zext i8 %335 to i32
  %336 = load i8, i8* %arrayidx128.i.3.1, align 1
  %conv129.i.2.3.1 = zext i8 %336 to i32
  %xor130.i.2.3.1 = xor i32 %conv129.i.2.3.1, %conv126.i.2.3.1
  %conv131.i.2.3.1 = trunc i32 %xor130.i.2.3.1 to i8
  store i8 %conv131.i.2.3.1, i8* %arrayidx128.i.3.1, align 1
  %call139.i.1 = call zeroext i8 @mult(i8 zeroext %call.i22.1, i8 zeroext %call1.i.1) #3
  %conv140.i.1 = zext i8 %call139.i.1 to i32
  %scevgep96.1377 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %174, i64 0, i64 0, i64 0
  %scevgep97.1378 = getelementptr i8, i8* %scevgep96.1377, i64 4
  %337 = load i8, i8* %scevgep97.1378, align 1
  %conv.i.i172.i.1380 = zext i8 %337 to i32
  %conv1.i.i173.i.1381 = zext i8 %conv2.i.i175.i.3 to i32
  %xor.i.i174.i.1382 = xor i32 %conv1.i.i173.i.1381, %conv.i.i172.i.1380
  %conv2.i.i175.i.1383 = trunc i32 %xor.i.i174.i.1382 to i8
  %scevgep96.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %174, i64 0, i64 0, i64 1
  %scevgep97.1.1 = getelementptr i8, i8* %scevgep96.1.1, i64 4
  %338 = load i8, i8* %scevgep97.1.1, align 1
  %conv.i.i172.i.1.1 = zext i8 %338 to i32
  %conv1.i.i173.i.1.1 = zext i8 %conv2.i.i175.i.1383 to i32
  %xor.i.i174.i.1.1 = xor i32 %conv1.i.i173.i.1.1, %conv.i.i172.i.1.1
  %conv2.i.i175.i.1.1 = trunc i32 %xor.i.i174.i.1.1 to i8
  %scevgep96.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %174, i64 0, i64 0, i64 2
  %scevgep97.2.1 = getelementptr i8, i8* %scevgep96.2.1, i64 4
  %339 = load i8, i8* %scevgep97.2.1, align 1
  %conv.i.i172.i.2.1 = zext i8 %339 to i32
  %conv1.i.i173.i.2.1 = zext i8 %conv2.i.i175.i.1.1 to i32
  %xor.i.i174.i.2.1 = xor i32 %conv1.i.i173.i.2.1, %conv.i.i172.i.2.1
  %conv2.i.i175.i.2.1 = trunc i32 %xor.i.i174.i.2.1 to i8
  %scevgep96.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %174, i64 0, i64 0, i64 3
  %scevgep97.3.1 = getelementptr i8, i8* %scevgep96.3.1, i64 4
  %340 = load i8, i8* %scevgep97.3.1, align 1
  %conv.i.i172.i.3.1 = zext i8 %340 to i32
  %conv1.i.i173.i.3.1 = zext i8 %conv2.i.i175.i.2.1 to i32
  %xor.i.i174.i.3.1 = xor i32 %conv1.i.i173.i.3.1, %conv.i.i172.i.3.1
  %conv2.i.i175.i.3.1 = trunc i32 %xor.i.i174.i.3.1 to i8
  %conv142.i.1 = zext i8 %conv2.i.i175.i.3.1 to i32
  %cmp143.i.1 = icmp eq i32 %conv140.i.1, %conv142.i.1
  call void @assert(i1 zeroext %cmp143.i.1) #3
  %scevgep37.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %174, i64 0, i64 1, i64 0
  %341 = bitcast i8* %scevgep37.1 to [4 x [4 x i8]]*
  %arrayidx6.2 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 2
  %arraydecay7.2 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx6.2, i64 0, i64 0
  %arrayidx9.2 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 3
  %arraydecay10.2 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx9.2, i64 0, i64 0
  %call.i22.2 = call zeroext i8 (...) @rand() #3
  %call1.i.2 = call zeroext i8 (...) @rand() #3
  %conv.i.2 = zext i8 %call.i22.2 to i32
  %342 = load i8, i8* %x, align 1
  %conv.i.i.i.2385 = zext i8 %342 to i32
  %conv1.i.i.i.2386 = zext i8 %conv2.i.i.i.3.1 to i32
  %xor.i.i.i.2387 = xor i32 %conv1.i.i.i.2386, %conv.i.i.i.2385
  %conv2.i.i.i.2388 = trunc i32 %xor.i.i.i.2387 to i8
  %scevgep34.1.2 = getelementptr i8, i8* %x, i64 1
  %343 = load i8, i8* %scevgep34.1.2, align 1
  %conv.i.i.i.1.2 = zext i8 %343 to i32
  %conv1.i.i.i.1.2 = zext i8 %conv2.i.i.i.2388 to i32
  %xor.i.i.i.1.2 = xor i32 %conv1.i.i.i.1.2, %conv.i.i.i.1.2
  %conv2.i.i.i.1.2 = trunc i32 %xor.i.i.i.1.2 to i8
  %scevgep34.2.2 = getelementptr i8, i8* %x, i64 2
  %344 = load i8, i8* %scevgep34.2.2, align 1
  %conv.i.i.i.2.2 = zext i8 %344 to i32
  %conv1.i.i.i.2.2 = zext i8 %conv2.i.i.i.1.2 to i32
  %xor.i.i.i.2.2 = xor i32 %conv1.i.i.i.2.2, %conv.i.i.i.2.2
  %conv2.i.i.i.2.2 = trunc i32 %xor.i.i.i.2.2 to i8
  %scevgep34.3.2 = getelementptr i8, i8* %x, i64 3
  %345 = load i8, i8* %scevgep34.3.2, align 1
  %conv.i.i.i.3.2 = zext i8 %345 to i32
  %conv1.i.i.i.3.2 = zext i8 %conv2.i.i.i.2.2 to i32
  %xor.i.i.i.3.2 = xor i32 %conv1.i.i.i.3.2, %conv.i.i.i.3.2
  %conv2.i.i.i.3.2 = trunc i32 %xor.i.i.i.3.2 to i8
  %conv3.i.2 = zext i8 %conv2.i.i.i.3.2 to i32
  %cmp.i23.2 = icmp eq i32 %conv.i.2, %conv3.i.2
  call void @assume(i1 zeroext %cmp.i23.2) #3
  %conv5.i.2 = zext i8 %call1.i.2 to i32
  %scevgep40.2389 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %341, i64 0, i64 0, i64 0
  %346 = load i8, i8* %scevgep40.2389, align 1
  %conv.i.i155.i.2391 = zext i8 %346 to i32
  %conv1.i.i156.i.2392 = zext i8 %conv2.i.i158.i.3.1 to i32
  %xor.i.i157.i.2393 = xor i32 %conv1.i.i156.i.2392, %conv.i.i155.i.2391
  %conv2.i.i158.i.2394 = trunc i32 %xor.i.i157.i.2393 to i8
  %scevgep40.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %341, i64 0, i64 0, i64 1
  %347 = load i8, i8* %scevgep40.1.2, align 1
  %conv.i.i155.i.1.2 = zext i8 %347 to i32
  %conv1.i.i156.i.1.2 = zext i8 %conv2.i.i158.i.2394 to i32
  %xor.i.i157.i.1.2 = xor i32 %conv1.i.i156.i.1.2, %conv.i.i155.i.1.2
  %conv2.i.i158.i.1.2 = trunc i32 %xor.i.i157.i.1.2 to i8
  %scevgep40.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %341, i64 0, i64 0, i64 2
  %348 = load i8, i8* %scevgep40.2.2, align 1
  %conv.i.i155.i.2.2 = zext i8 %348 to i32
  %conv1.i.i156.i.2.2 = zext i8 %conv2.i.i158.i.1.2 to i32
  %xor.i.i157.i.2.2 = xor i32 %conv1.i.i156.i.2.2, %conv.i.i155.i.2.2
  %conv2.i.i158.i.2.2 = trunc i32 %xor.i.i157.i.2.2 to i8
  %scevgep40.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %341, i64 0, i64 0, i64 3
  %349 = load i8, i8* %scevgep40.3.2, align 1
  %conv.i.i155.i.3.2 = zext i8 %349 to i32
  %conv1.i.i156.i.3.2 = zext i8 %conv2.i.i158.i.2.2 to i32
  %xor.i.i157.i.3.2 = xor i32 %conv1.i.i156.i.3.2, %conv.i.i155.i.3.2
  %conv2.i.i158.i.3.2 = trunc i32 %xor.i.i157.i.3.2 to i8
  %conv7.i.2 = zext i8 %conv2.i.i158.i.3.2 to i32
  %cmp8.i.2 = icmp eq i32 %conv5.i.2, %conv7.i.2
  call void @assume(i1 zeroext %cmp8.i.2) #3
  %call16.i.2397 = call zeroext i8 (...) @rand() #3
  %scevgep46.2398 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  store i8 %call16.i.2397, i8* %scevgep46.2398, align 1
  %scevgep47.2399 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %350 = load i8, i8* %scevgep47.2399, align 1
  %scevgep48.2400 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  store i8 %350, i8* %scevgep48.2400, align 1
  %call16.i.2397.1 = call zeroext i8 (...) @rand() #3
  %scevgep46.2398.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  store i8 %call16.i.2397.1, i8* %scevgep46.2398.1, align 1
  %scevgep47.2399.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %351 = load i8, i8* %scevgep47.2399.1, align 1
  %scevgep48.2400.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 2, i64 0
  store i8 %351, i8* %scevgep48.2400.1, align 1
  %call16.i.2397.2 = call zeroext i8 (...) @rand() #3
  %scevgep46.2398.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  store i8 %call16.i.2397.2, i8* %scevgep46.2398.2, align 1
  %scevgep47.2399.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %352 = load i8, i8* %scevgep47.2399.2, align 1
  %scevgep48.2400.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 3, i64 0
  store i8 %352, i8* %scevgep48.2400.2, align 1
  %scevgep43.2406 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 1
  %353 = bitcast i8* %scevgep43.2406 to [4 x [4 x i8]]*
  %call16.i.1.2 = call zeroext i8 (...) @rand() #3
  %scevgep46.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %353, i64 0, i64 0, i64 1
  store i8 %call16.i.1.2, i8* %scevgep46.1.2, align 1
  %scevgep47.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %353, i64 0, i64 0, i64 1
  %354 = load i8, i8* %scevgep47.1.2, align 1
  %scevgep48.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %353, i64 0, i64 1, i64 0
  store i8 %354, i8* %scevgep48.1.2, align 1
  %call16.i.1.2.1 = call zeroext i8 (...) @rand() #3
  %scevgep46.1.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %353, i64 0, i64 0, i64 2
  store i8 %call16.i.1.2.1, i8* %scevgep46.1.2.1, align 1
  %scevgep47.1.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %353, i64 0, i64 0, i64 2
  %355 = load i8, i8* %scevgep47.1.2.1, align 1
  %scevgep48.1.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %353, i64 0, i64 2, i64 0
  store i8 %355, i8* %scevgep48.1.2.1, align 1
  %scevgep43.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %353, i64 0, i64 1, i64 1
  %356 = bitcast i8* %scevgep43.1.2 to [4 x [4 x i8]]*
  %call16.i.2.2 = call zeroext i8 (...) @rand() #3
  %scevgep46.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %356, i64 0, i64 0, i64 1
  store i8 %call16.i.2.2, i8* %scevgep46.2.2, align 1
  %scevgep47.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %356, i64 0, i64 0, i64 1
  %357 = load i8, i8* %scevgep47.2.2, align 1
  %scevgep48.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %356, i64 0, i64 1, i64 0
  store i8 %357, i8* %scevgep48.2.2, align 1
  %scevgep59.1.2434 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %341, i64 0, i64 0, i64 1
  %358 = load i8, i8* %scevgep59.1.2434, align 1
  %conv44.i.1.2435 = zext i8 %358 to i32
  %scevgep62.1.2436 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %359 = load i8, i8* %scevgep62.1.2436, align 1
  %conv49.i.1.2437 = zext i8 %359 to i32
  %xor.i.1.2438 = xor i32 %conv44.i.1.2435, %conv49.i.1.2437
  %conv50.i.1.2439 = trunc i32 %xor.i.1.2438 to i8
  %scevgep66.1.2440 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.2439, i8* %scevgep66.1.2440, align 1
  %360 = load i8, i8* %x, align 1
  %conv57.i.1.2441 = zext i8 %360 to i32
  %xor58.i.1.2442 = xor i32 %conv57.i.1.2441, 1
  %conv59.i.1.2443 = trunc i32 %xor58.i.1.2442 to i8
  %scevgep63.1.2444 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 1
  %361 = load i8, i8* %scevgep63.1.2444, align 1
  %call64.i.1.2445 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.2443, i8 zeroext %361) #3
  %scevgep70.1.2446 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 1
  store i8 %call64.i.1.2445, i8* %scevgep70.1.2446, align 1
  %362 = load i8, i8* %x, align 1
  %scevgep67.1.2447 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 1
  %363 = load i8, i8* %scevgep67.1.2447, align 1
  %call75.i.1.2448 = call zeroext i8 @mult(i8 zeroext %362, i8 zeroext %363) #3
  %scevgep74.1.2449 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 1
  store i8 %call75.i.1.2448, i8* %scevgep74.1.2449, align 1
  %scevgep71.1.2450 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 1
  %364 = load i8, i8* %scevgep71.1.2450, align 1
  %conv84.i.1.2451 = zext i8 %364 to i32
  %scevgep75.1.2452 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 1
  %365 = load i8, i8* %scevgep75.1.2452, align 1
  %conv89.i.1.2453 = zext i8 %365 to i32
  %xor90.i.1.2454 = xor i32 %conv84.i.1.2451, %conv89.i.1.2453
  %conv91.i.1.2455 = trunc i32 %xor90.i.1.2454 to i8
  %scevgep78.1.2456 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.2455, i8* %scevgep78.1.2456, align 1
  %scevgep59.2.2459 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %341, i64 0, i64 0, i64 2
  %366 = load i8, i8* %scevgep59.2.2459, align 1
  %conv44.i.2.2460 = zext i8 %366 to i32
  %scevgep62.2.2461 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %367 = load i8, i8* %scevgep62.2.2461, align 1
  %conv49.i.2.2462 = zext i8 %367 to i32
  %xor.i.2.2463 = xor i32 %conv44.i.2.2460, %conv49.i.2.2462
  %conv50.i.2.2464 = trunc i32 %xor.i.2.2463 to i8
  %scevgep66.2.2465 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.2464, i8* %scevgep66.2.2465, align 1
  %368 = load i8, i8* %x, align 1
  %conv57.i.2.2466 = zext i8 %368 to i32
  %xor58.i.2.2467 = xor i32 %conv57.i.2.2466, 1
  %conv59.i.2.2468 = trunc i32 %xor58.i.2.2467 to i8
  %scevgep63.2.2469 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 2
  %369 = load i8, i8* %scevgep63.2.2469, align 1
  %call64.i.2.2470 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.2468, i8 zeroext %369) #3
  %scevgep70.2.2471 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 2
  store i8 %call64.i.2.2470, i8* %scevgep70.2.2471, align 1
  %370 = load i8, i8* %x, align 1
  %scevgep67.2.2472 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 2
  %371 = load i8, i8* %scevgep67.2.2472, align 1
  %call75.i.2.2473 = call zeroext i8 @mult(i8 zeroext %370, i8 zeroext %371) #3
  %scevgep74.2.2474 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 2
  store i8 %call75.i.2.2473, i8* %scevgep74.2.2474, align 1
  %scevgep71.2.2475 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 2
  %372 = load i8, i8* %scevgep71.2.2475, align 1
  %conv84.i.2.2476 = zext i8 %372 to i32
  %scevgep75.2.2477 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 2
  %373 = load i8, i8* %scevgep75.2.2477, align 1
  %conv89.i.2.2478 = zext i8 %373 to i32
  %xor90.i.2.2479 = xor i32 %conv84.i.2.2476, %conv89.i.2.2478
  %conv91.i.2.2480 = trunc i32 %xor90.i.2.2479 to i8
  %scevgep78.2.2481 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.2480, i8* %scevgep78.2.2481, align 1
  %scevgep59.3.2484 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %341, i64 0, i64 0, i64 3
  %374 = load i8, i8* %scevgep59.3.2484, align 1
  %conv44.i.3.2485 = zext i8 %374 to i32
  %scevgep62.3.2486 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %375 = load i8, i8* %scevgep62.3.2486, align 1
  %conv49.i.3.2487 = zext i8 %375 to i32
  %xor.i.3.2488 = xor i32 %conv44.i.3.2485, %conv49.i.3.2487
  %conv50.i.3.2489 = trunc i32 %xor.i.3.2488 to i8
  %scevgep66.3.2490 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 3
  store i8 %conv50.i.3.2489, i8* %scevgep66.3.2490, align 1
  %376 = load i8, i8* %x, align 1
  %conv57.i.3.2491 = zext i8 %376 to i32
  %xor58.i.3.2492 = xor i32 %conv57.i.3.2491, 1
  %conv59.i.3.2493 = trunc i32 %xor58.i.3.2492 to i8
  %scevgep63.3.2494 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 0, i64 3
  %377 = load i8, i8* %scevgep63.3.2494, align 1
  %call64.i.3.2495 = call zeroext i8 @mult(i8 zeroext %conv59.i.3.2493, i8 zeroext %377) #3
  %scevgep70.3.2496 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 3
  store i8 %call64.i.3.2495, i8* %scevgep70.3.2496, align 1
  %378 = load i8, i8* %x, align 1
  %scevgep67.3.2497 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 0, i64 3
  %379 = load i8, i8* %scevgep67.3.2497, align 1
  %call75.i.3.2498 = call zeroext i8 @mult(i8 zeroext %378, i8 zeroext %379) #3
  %scevgep74.3.2499 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 3
  store i8 %call75.i.3.2498, i8* %scevgep74.3.2499, align 1
  %scevgep71.3.2500 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 0, i64 3
  %380 = load i8, i8* %scevgep71.3.2500, align 1
  %conv84.i.3.2501 = zext i8 %380 to i32
  %scevgep75.3.2502 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 0, i64 3
  %381 = load i8, i8* %scevgep75.3.2502, align 1
  %conv89.i.3.2503 = zext i8 %381 to i32
  %xor90.i.3.2504 = xor i32 %conv84.i.3.2501, %conv89.i.3.2503
  %conv91.i.3.2505 = trunc i32 %xor90.i.3.2504 to i8
  %scevgep78.3.2506 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 3
  store i8 %conv91.i.3.2505, i8* %scevgep78.3.2506, align 1
  %scevgep61.2508 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i, i64 0, i64 1, i64 0
  %382 = bitcast i8* %scevgep61.2508 to [4 x [4 x i8]]*
  %scevgep65.2509 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i, i64 0, i64 1, i64 0
  %383 = bitcast i8* %scevgep65.2509 to [4 x [4 x i8]]*
  %scevgep69.2510 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i, i64 0, i64 1, i64 0
  %384 = bitcast i8* %scevgep69.2510 to [4 x [4 x i8]]*
  %scevgep73.2511 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i, i64 0, i64 1, i64 0
  %385 = bitcast i8* %scevgep73.2511 to [4 x [4 x i8]]*
  %scevgep77.2512 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 1, i64 0
  %386 = bitcast i8* %scevgep77.2512 to [4 x [4 x i8]]*
  %arrayidx56.i.1.2 = getelementptr inbounds i8, i8* %x, i64 1
  %arrayidx70.i.1.2 = getelementptr inbounds i8, i8* %x, i64 1
  %scevgep59.1110.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %341, i64 0, i64 0, i64 0
  %387 = load i8, i8* %scevgep59.1110.2, align 1
  %conv44.i.1111.2 = zext i8 %387 to i32
  %scevgep62.1112.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %382, i64 0, i64 0, i64 0
  %388 = load i8, i8* %scevgep62.1112.2, align 1
  %conv49.i.1113.2 = zext i8 %388 to i32
  %xor.i.1114.2 = xor i32 %conv44.i.1111.2, %conv49.i.1113.2
  %conv50.i.1115.2 = trunc i32 %xor.i.1114.2 to i8
  %scevgep66.1116.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %383, i64 0, i64 0, i64 0
  store i8 %conv50.i.1115.2, i8* %scevgep66.1116.2, align 1
  %389 = load i8, i8* %arrayidx56.i.1.2, align 1
  %conv57.i.1117.2 = zext i8 %389 to i32
  %xor58.i.1118.2 = xor i32 %conv57.i.1117.2, 1
  %conv59.i.1119.2 = trunc i32 %xor58.i.1118.2 to i8
  %scevgep63.1120.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %382, i64 0, i64 0, i64 0
  %390 = load i8, i8* %scevgep63.1120.2, align 1
  %call64.i.1121.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.1119.2, i8 zeroext %390) #3
  %scevgep70.1122.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %384, i64 0, i64 0, i64 0
  store i8 %call64.i.1121.2, i8* %scevgep70.1122.2, align 1
  %391 = load i8, i8* %arrayidx70.i.1.2, align 1
  %scevgep67.1123.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %383, i64 0, i64 0, i64 0
  %392 = load i8, i8* %scevgep67.1123.2, align 1
  %call75.i.1124.2 = call zeroext i8 @mult(i8 zeroext %391, i8 zeroext %392) #3
  %scevgep74.1125.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %385, i64 0, i64 0, i64 0
  store i8 %call75.i.1124.2, i8* %scevgep74.1125.2, align 1
  %scevgep71.1126.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %384, i64 0, i64 0, i64 0
  %393 = load i8, i8* %scevgep71.1126.2, align 1
  %conv84.i.1127.2 = zext i8 %393 to i32
  %scevgep75.1128.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %385, i64 0, i64 0, i64 0
  %394 = load i8, i8* %scevgep75.1128.2, align 1
  %conv89.i.1129.2 = zext i8 %394 to i32
  %xor90.i.1130.2 = xor i32 %conv84.i.1127.2, %conv89.i.1129.2
  %conv91.i.1131.2 = trunc i32 %xor90.i.1130.2 to i8
  %scevgep78.1132.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %386, i64 0, i64 0, i64 0
  store i8 %conv91.i.1131.2, i8* %scevgep78.1132.2, align 1
  %scevgep59.2.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %341, i64 0, i64 0, i64 2
  %395 = load i8, i8* %scevgep59.2.1.2, align 1
  %conv44.i.2.1.2 = zext i8 %395 to i32
  %scevgep62.2.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %382, i64 0, i64 0, i64 2
  %396 = load i8, i8* %scevgep62.2.1.2, align 1
  %conv49.i.2.1.2 = zext i8 %396 to i32
  %xor.i.2.1.2 = xor i32 %conv44.i.2.1.2, %conv49.i.2.1.2
  %conv50.i.2.1.2 = trunc i32 %xor.i.2.1.2 to i8
  %scevgep66.2.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %383, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.1.2, i8* %scevgep66.2.1.2, align 1
  %397 = load i8, i8* %arrayidx56.i.1.2, align 1
  %conv57.i.2.1.2 = zext i8 %397 to i32
  %xor58.i.2.1.2 = xor i32 %conv57.i.2.1.2, 1
  %conv59.i.2.1.2 = trunc i32 %xor58.i.2.1.2 to i8
  %scevgep63.2.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %382, i64 0, i64 0, i64 2
  %398 = load i8, i8* %scevgep63.2.1.2, align 1
  %call64.i.2.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.1.2, i8 zeroext %398) #3
  %scevgep70.2.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %384, i64 0, i64 0, i64 2
  store i8 %call64.i.2.1.2, i8* %scevgep70.2.1.2, align 1
  %399 = load i8, i8* %arrayidx70.i.1.2, align 1
  %scevgep67.2.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %383, i64 0, i64 0, i64 2
  %400 = load i8, i8* %scevgep67.2.1.2, align 1
  %call75.i.2.1.2 = call zeroext i8 @mult(i8 zeroext %399, i8 zeroext %400) #3
  %scevgep74.2.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %385, i64 0, i64 0, i64 2
  store i8 %call75.i.2.1.2, i8* %scevgep74.2.1.2, align 1
  %scevgep71.2.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %384, i64 0, i64 0, i64 2
  %401 = load i8, i8* %scevgep71.2.1.2, align 1
  %conv84.i.2.1.2 = zext i8 %401 to i32
  %scevgep75.2.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %385, i64 0, i64 0, i64 2
  %402 = load i8, i8* %scevgep75.2.1.2, align 1
  %conv89.i.2.1.2 = zext i8 %402 to i32
  %xor90.i.2.1.2 = xor i32 %conv84.i.2.1.2, %conv89.i.2.1.2
  %conv91.i.2.1.2 = trunc i32 %xor90.i.2.1.2 to i8
  %scevgep78.2.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %386, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.1.2, i8* %scevgep78.2.1.2, align 1
  %scevgep59.3.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %341, i64 0, i64 0, i64 3
  %403 = load i8, i8* %scevgep59.3.1.2, align 1
  %conv44.i.3.1.2 = zext i8 %403 to i32
  %scevgep62.3.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %382, i64 0, i64 0, i64 3
  %404 = load i8, i8* %scevgep62.3.1.2, align 1
  %conv49.i.3.1.2 = zext i8 %404 to i32
  %xor.i.3.1.2 = xor i32 %conv44.i.3.1.2, %conv49.i.3.1.2
  %conv50.i.3.1.2 = trunc i32 %xor.i.3.1.2 to i8
  %scevgep66.3.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %383, i64 0, i64 0, i64 3
  store i8 %conv50.i.3.1.2, i8* %scevgep66.3.1.2, align 1
  %405 = load i8, i8* %arrayidx56.i.1.2, align 1
  %conv57.i.3.1.2 = zext i8 %405 to i32
  %xor58.i.3.1.2 = xor i32 %conv57.i.3.1.2, 1
  %conv59.i.3.1.2 = trunc i32 %xor58.i.3.1.2 to i8
  %scevgep63.3.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %382, i64 0, i64 0, i64 3
  %406 = load i8, i8* %scevgep63.3.1.2, align 1
  %call64.i.3.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.3.1.2, i8 zeroext %406) #3
  %scevgep70.3.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %384, i64 0, i64 0, i64 3
  store i8 %call64.i.3.1.2, i8* %scevgep70.3.1.2, align 1
  %407 = load i8, i8* %arrayidx70.i.1.2, align 1
  %scevgep67.3.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %383, i64 0, i64 0, i64 3
  %408 = load i8, i8* %scevgep67.3.1.2, align 1
  %call75.i.3.1.2 = call zeroext i8 @mult(i8 zeroext %407, i8 zeroext %408) #3
  %scevgep74.3.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %385, i64 0, i64 0, i64 3
  store i8 %call75.i.3.1.2, i8* %scevgep74.3.1.2, align 1
  %scevgep71.3.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %384, i64 0, i64 0, i64 3
  %409 = load i8, i8* %scevgep71.3.1.2, align 1
  %conv84.i.3.1.2 = zext i8 %409 to i32
  %scevgep75.3.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %385, i64 0, i64 0, i64 3
  %410 = load i8, i8* %scevgep75.3.1.2, align 1
  %conv89.i.3.1.2 = zext i8 %410 to i32
  %xor90.i.3.1.2 = xor i32 %conv84.i.3.1.2, %conv89.i.3.1.2
  %conv91.i.3.1.2 = trunc i32 %xor90.i.3.1.2 to i8
  %scevgep78.3.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %386, i64 0, i64 0, i64 3
  store i8 %conv91.i.3.1.2, i8* %scevgep78.3.1.2, align 1
  %scevgep61.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %382, i64 0, i64 1, i64 0
  %411 = bitcast i8* %scevgep61.1.2 to [4 x [4 x i8]]*
  %scevgep65.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %383, i64 0, i64 1, i64 0
  %412 = bitcast i8* %scevgep65.1.2 to [4 x [4 x i8]]*
  %scevgep69.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %384, i64 0, i64 1, i64 0
  %413 = bitcast i8* %scevgep69.1.2 to [4 x [4 x i8]]*
  %scevgep73.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %385, i64 0, i64 1, i64 0
  %414 = bitcast i8* %scevgep73.1.2 to [4 x [4 x i8]]*
  %scevgep77.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %386, i64 0, i64 1, i64 0
  %415 = bitcast i8* %scevgep77.1.2 to [4 x [4 x i8]]*
  %arrayidx56.i.2.2 = getelementptr inbounds i8, i8* %x, i64 2
  %arrayidx70.i.2.2 = getelementptr inbounds i8, i8* %x, i64 2
  %scevgep59.2137.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %341, i64 0, i64 0, i64 0
  %416 = load i8, i8* %scevgep59.2137.2, align 1
  %conv44.i.2138.2 = zext i8 %416 to i32
  %scevgep62.2139.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %411, i64 0, i64 0, i64 0
  %417 = load i8, i8* %scevgep62.2139.2, align 1
  %conv49.i.2140.2 = zext i8 %417 to i32
  %xor.i.2141.2 = xor i32 %conv44.i.2138.2, %conv49.i.2140.2
  %conv50.i.2142.2 = trunc i32 %xor.i.2141.2 to i8
  %scevgep66.2143.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %412, i64 0, i64 0, i64 0
  store i8 %conv50.i.2142.2, i8* %scevgep66.2143.2, align 1
  %418 = load i8, i8* %arrayidx56.i.2.2, align 1
  %conv57.i.2144.2 = zext i8 %418 to i32
  %xor58.i.2145.2 = xor i32 %conv57.i.2144.2, 1
  %conv59.i.2146.2 = trunc i32 %xor58.i.2145.2 to i8
  %scevgep63.2147.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %411, i64 0, i64 0, i64 0
  %419 = load i8, i8* %scevgep63.2147.2, align 1
  %call64.i.2148.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.2146.2, i8 zeroext %419) #3
  %scevgep70.2149.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %413, i64 0, i64 0, i64 0
  store i8 %call64.i.2148.2, i8* %scevgep70.2149.2, align 1
  %420 = load i8, i8* %arrayidx70.i.2.2, align 1
  %scevgep67.2150.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %412, i64 0, i64 0, i64 0
  %421 = load i8, i8* %scevgep67.2150.2, align 1
  %call75.i.2151.2 = call zeroext i8 @mult(i8 zeroext %420, i8 zeroext %421) #3
  %scevgep74.2152.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %414, i64 0, i64 0, i64 0
  store i8 %call75.i.2151.2, i8* %scevgep74.2152.2, align 1
  %scevgep71.2153.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %413, i64 0, i64 0, i64 0
  %422 = load i8, i8* %scevgep71.2153.2, align 1
  %conv84.i.2154.2 = zext i8 %422 to i32
  %scevgep75.2155.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %414, i64 0, i64 0, i64 0
  %423 = load i8, i8* %scevgep75.2155.2, align 1
  %conv89.i.2156.2 = zext i8 %423 to i32
  %xor90.i.2157.2 = xor i32 %conv84.i.2154.2, %conv89.i.2156.2
  %conv91.i.2158.2 = trunc i32 %xor90.i.2157.2 to i8
  %scevgep78.2159.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %415, i64 0, i64 0, i64 0
  store i8 %conv91.i.2158.2, i8* %scevgep78.2159.2, align 1
  %scevgep59.1.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %341, i64 0, i64 0, i64 1
  %424 = load i8, i8* %scevgep59.1.2.2, align 1
  %conv44.i.1.2.2 = zext i8 %424 to i32
  %scevgep62.1.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %411, i64 0, i64 0, i64 1
  %425 = load i8, i8* %scevgep62.1.2.2, align 1
  %conv49.i.1.2.2 = zext i8 %425 to i32
  %xor.i.1.2.2 = xor i32 %conv44.i.1.2.2, %conv49.i.1.2.2
  %conv50.i.1.2.2 = trunc i32 %xor.i.1.2.2 to i8
  %scevgep66.1.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %412, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.2.2, i8* %scevgep66.1.2.2, align 1
  %426 = load i8, i8* %arrayidx56.i.2.2, align 1
  %conv57.i.1.2.2 = zext i8 %426 to i32
  %xor58.i.1.2.2 = xor i32 %conv57.i.1.2.2, 1
  %conv59.i.1.2.2 = trunc i32 %xor58.i.1.2.2 to i8
  %scevgep63.1.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %411, i64 0, i64 0, i64 1
  %427 = load i8, i8* %scevgep63.1.2.2, align 1
  %call64.i.1.2.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.2.2, i8 zeroext %427) #3
  %scevgep70.1.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %413, i64 0, i64 0, i64 1
  store i8 %call64.i.1.2.2, i8* %scevgep70.1.2.2, align 1
  %428 = load i8, i8* %arrayidx70.i.2.2, align 1
  %scevgep67.1.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %412, i64 0, i64 0, i64 1
  %429 = load i8, i8* %scevgep67.1.2.2, align 1
  %call75.i.1.2.2 = call zeroext i8 @mult(i8 zeroext %428, i8 zeroext %429) #3
  %scevgep74.1.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %414, i64 0, i64 0, i64 1
  store i8 %call75.i.1.2.2, i8* %scevgep74.1.2.2, align 1
  %scevgep71.1.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %413, i64 0, i64 0, i64 1
  %430 = load i8, i8* %scevgep71.1.2.2, align 1
  %conv84.i.1.2.2 = zext i8 %430 to i32
  %scevgep75.1.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %414, i64 0, i64 0, i64 1
  %431 = load i8, i8* %scevgep75.1.2.2, align 1
  %conv89.i.1.2.2 = zext i8 %431 to i32
  %xor90.i.1.2.2 = xor i32 %conv84.i.1.2.2, %conv89.i.1.2.2
  %conv91.i.1.2.2 = trunc i32 %xor90.i.1.2.2 to i8
  %scevgep78.1.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %415, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.2.2, i8* %scevgep78.1.2.2, align 1
  %scevgep59.3.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %341, i64 0, i64 0, i64 3
  %432 = load i8, i8* %scevgep59.3.2.2, align 1
  %conv44.i.3.2.2 = zext i8 %432 to i32
  %scevgep62.3.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %411, i64 0, i64 0, i64 3
  %433 = load i8, i8* %scevgep62.3.2.2, align 1
  %conv49.i.3.2.2 = zext i8 %433 to i32
  %xor.i.3.2.2 = xor i32 %conv44.i.3.2.2, %conv49.i.3.2.2
  %conv50.i.3.2.2 = trunc i32 %xor.i.3.2.2 to i8
  %scevgep66.3.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %412, i64 0, i64 0, i64 3
  store i8 %conv50.i.3.2.2, i8* %scevgep66.3.2.2, align 1
  %434 = load i8, i8* %arrayidx56.i.2.2, align 1
  %conv57.i.3.2.2 = zext i8 %434 to i32
  %xor58.i.3.2.2 = xor i32 %conv57.i.3.2.2, 1
  %conv59.i.3.2.2 = trunc i32 %xor58.i.3.2.2 to i8
  %scevgep63.3.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %411, i64 0, i64 0, i64 3
  %435 = load i8, i8* %scevgep63.3.2.2, align 1
  %call64.i.3.2.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.3.2.2, i8 zeroext %435) #3
  %scevgep70.3.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %413, i64 0, i64 0, i64 3
  store i8 %call64.i.3.2.2, i8* %scevgep70.3.2.2, align 1
  %436 = load i8, i8* %arrayidx70.i.2.2, align 1
  %scevgep67.3.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %412, i64 0, i64 0, i64 3
  %437 = load i8, i8* %scevgep67.3.2.2, align 1
  %call75.i.3.2.2 = call zeroext i8 @mult(i8 zeroext %436, i8 zeroext %437) #3
  %scevgep74.3.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %414, i64 0, i64 0, i64 3
  store i8 %call75.i.3.2.2, i8* %scevgep74.3.2.2, align 1
  %scevgep71.3.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %413, i64 0, i64 0, i64 3
  %438 = load i8, i8* %scevgep71.3.2.2, align 1
  %conv84.i.3.2.2 = zext i8 %438 to i32
  %scevgep75.3.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %414, i64 0, i64 0, i64 3
  %439 = load i8, i8* %scevgep75.3.2.2, align 1
  %conv89.i.3.2.2 = zext i8 %439 to i32
  %xor90.i.3.2.2 = xor i32 %conv84.i.3.2.2, %conv89.i.3.2.2
  %conv91.i.3.2.2 = trunc i32 %xor90.i.3.2.2 to i8
  %scevgep78.3.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %415, i64 0, i64 0, i64 3
  store i8 %conv91.i.3.2.2, i8* %scevgep78.3.2.2, align 1
  %scevgep61.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %411, i64 0, i64 1, i64 0
  %440 = bitcast i8* %scevgep61.2.2 to [4 x [4 x i8]]*
  %scevgep65.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %412, i64 0, i64 1, i64 0
  %441 = bitcast i8* %scevgep65.2.2 to [4 x [4 x i8]]*
  %scevgep69.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %413, i64 0, i64 1, i64 0
  %442 = bitcast i8* %scevgep69.2.2 to [4 x [4 x i8]]*
  %scevgep73.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %414, i64 0, i64 1, i64 0
  %443 = bitcast i8* %scevgep73.2.2 to [4 x [4 x i8]]*
  %scevgep77.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %415, i64 0, i64 1, i64 0
  %444 = bitcast i8* %scevgep77.2.2 to [4 x [4 x i8]]*
  %arrayidx56.i.3.2 = getelementptr inbounds i8, i8* %x, i64 3
  %arrayidx70.i.3.2 = getelementptr inbounds i8, i8* %x, i64 3
  %scevgep59.3164.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %341, i64 0, i64 0, i64 0
  %445 = load i8, i8* %scevgep59.3164.2, align 1
  %conv44.i.3165.2 = zext i8 %445 to i32
  %scevgep62.3166.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %440, i64 0, i64 0, i64 0
  %446 = load i8, i8* %scevgep62.3166.2, align 1
  %conv49.i.3167.2 = zext i8 %446 to i32
  %xor.i.3168.2 = xor i32 %conv44.i.3165.2, %conv49.i.3167.2
  %conv50.i.3169.2 = trunc i32 %xor.i.3168.2 to i8
  %scevgep66.3170.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %441, i64 0, i64 0, i64 0
  store i8 %conv50.i.3169.2, i8* %scevgep66.3170.2, align 1
  %447 = load i8, i8* %arrayidx56.i.3.2, align 1
  %conv57.i.3171.2 = zext i8 %447 to i32
  %xor58.i.3172.2 = xor i32 %conv57.i.3171.2, 1
  %conv59.i.3173.2 = trunc i32 %xor58.i.3172.2 to i8
  %scevgep63.3174.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %440, i64 0, i64 0, i64 0
  %448 = load i8, i8* %scevgep63.3174.2, align 1
  %call64.i.3175.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.3173.2, i8 zeroext %448) #3
  %scevgep70.3176.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %442, i64 0, i64 0, i64 0
  store i8 %call64.i.3175.2, i8* %scevgep70.3176.2, align 1
  %449 = load i8, i8* %arrayidx70.i.3.2, align 1
  %scevgep67.3177.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %441, i64 0, i64 0, i64 0
  %450 = load i8, i8* %scevgep67.3177.2, align 1
  %call75.i.3178.2 = call zeroext i8 @mult(i8 zeroext %449, i8 zeroext %450) #3
  %scevgep74.3179.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %443, i64 0, i64 0, i64 0
  store i8 %call75.i.3178.2, i8* %scevgep74.3179.2, align 1
  %scevgep71.3180.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %442, i64 0, i64 0, i64 0
  %451 = load i8, i8* %scevgep71.3180.2, align 1
  %conv84.i.3181.2 = zext i8 %451 to i32
  %scevgep75.3182.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %443, i64 0, i64 0, i64 0
  %452 = load i8, i8* %scevgep75.3182.2, align 1
  %conv89.i.3183.2 = zext i8 %452 to i32
  %xor90.i.3184.2 = xor i32 %conv84.i.3181.2, %conv89.i.3183.2
  %conv91.i.3185.2 = trunc i32 %xor90.i.3184.2 to i8
  %scevgep78.3186.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %444, i64 0, i64 0, i64 0
  store i8 %conv91.i.3185.2, i8* %scevgep78.3186.2, align 1
  %scevgep59.1.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %341, i64 0, i64 0, i64 1
  %453 = load i8, i8* %scevgep59.1.3.2, align 1
  %conv44.i.1.3.2 = zext i8 %453 to i32
  %scevgep62.1.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %440, i64 0, i64 0, i64 1
  %454 = load i8, i8* %scevgep62.1.3.2, align 1
  %conv49.i.1.3.2 = zext i8 %454 to i32
  %xor.i.1.3.2 = xor i32 %conv44.i.1.3.2, %conv49.i.1.3.2
  %conv50.i.1.3.2 = trunc i32 %xor.i.1.3.2 to i8
  %scevgep66.1.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %441, i64 0, i64 0, i64 1
  store i8 %conv50.i.1.3.2, i8* %scevgep66.1.3.2, align 1
  %455 = load i8, i8* %arrayidx56.i.3.2, align 1
  %conv57.i.1.3.2 = zext i8 %455 to i32
  %xor58.i.1.3.2 = xor i32 %conv57.i.1.3.2, 1
  %conv59.i.1.3.2 = trunc i32 %xor58.i.1.3.2 to i8
  %scevgep63.1.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %440, i64 0, i64 0, i64 1
  %456 = load i8, i8* %scevgep63.1.3.2, align 1
  %call64.i.1.3.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.1.3.2, i8 zeroext %456) #3
  %scevgep70.1.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %442, i64 0, i64 0, i64 1
  store i8 %call64.i.1.3.2, i8* %scevgep70.1.3.2, align 1
  %457 = load i8, i8* %arrayidx70.i.3.2, align 1
  %scevgep67.1.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %441, i64 0, i64 0, i64 1
  %458 = load i8, i8* %scevgep67.1.3.2, align 1
  %call75.i.1.3.2 = call zeroext i8 @mult(i8 zeroext %457, i8 zeroext %458) #3
  %scevgep74.1.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %443, i64 0, i64 0, i64 1
  store i8 %call75.i.1.3.2, i8* %scevgep74.1.3.2, align 1
  %scevgep71.1.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %442, i64 0, i64 0, i64 1
  %459 = load i8, i8* %scevgep71.1.3.2, align 1
  %conv84.i.1.3.2 = zext i8 %459 to i32
  %scevgep75.1.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %443, i64 0, i64 0, i64 1
  %460 = load i8, i8* %scevgep75.1.3.2, align 1
  %conv89.i.1.3.2 = zext i8 %460 to i32
  %xor90.i.1.3.2 = xor i32 %conv84.i.1.3.2, %conv89.i.1.3.2
  %conv91.i.1.3.2 = trunc i32 %xor90.i.1.3.2 to i8
  %scevgep78.1.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %444, i64 0, i64 0, i64 1
  store i8 %conv91.i.1.3.2, i8* %scevgep78.1.3.2, align 1
  %scevgep59.2.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %341, i64 0, i64 0, i64 2
  %461 = load i8, i8* %scevgep59.2.3.2, align 1
  %conv44.i.2.3.2 = zext i8 %461 to i32
  %scevgep62.2.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %440, i64 0, i64 0, i64 2
  %462 = load i8, i8* %scevgep62.2.3.2, align 1
  %conv49.i.2.3.2 = zext i8 %462 to i32
  %xor.i.2.3.2 = xor i32 %conv44.i.2.3.2, %conv49.i.2.3.2
  %conv50.i.2.3.2 = trunc i32 %xor.i.2.3.2 to i8
  %scevgep66.2.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %441, i64 0, i64 0, i64 2
  store i8 %conv50.i.2.3.2, i8* %scevgep66.2.3.2, align 1
  %463 = load i8, i8* %arrayidx56.i.3.2, align 1
  %conv57.i.2.3.2 = zext i8 %463 to i32
  %xor58.i.2.3.2 = xor i32 %conv57.i.2.3.2, 1
  %conv59.i.2.3.2 = trunc i32 %xor58.i.2.3.2 to i8
  %scevgep63.2.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %440, i64 0, i64 0, i64 2
  %464 = load i8, i8* %scevgep63.2.3.2, align 1
  %call64.i.2.3.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.2.3.2, i8 zeroext %464) #3
  %scevgep70.2.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %442, i64 0, i64 0, i64 2
  store i8 %call64.i.2.3.2, i8* %scevgep70.2.3.2, align 1
  %465 = load i8, i8* %arrayidx70.i.3.2, align 1
  %scevgep67.2.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %441, i64 0, i64 0, i64 2
  %466 = load i8, i8* %scevgep67.2.3.2, align 1
  %call75.i.2.3.2 = call zeroext i8 @mult(i8 zeroext %465, i8 zeroext %466) #3
  %scevgep74.2.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %443, i64 0, i64 0, i64 2
  store i8 %call75.i.2.3.2, i8* %scevgep74.2.3.2, align 1
  %scevgep71.2.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %442, i64 0, i64 0, i64 2
  %467 = load i8, i8* %scevgep71.2.3.2, align 1
  %conv84.i.2.3.2 = zext i8 %467 to i32
  %scevgep75.2.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %443, i64 0, i64 0, i64 2
  %468 = load i8, i8* %scevgep75.2.3.2, align 1
  %conv89.i.2.3.2 = zext i8 %468 to i32
  %xor90.i.2.3.2 = xor i32 %conv84.i.2.3.2, %conv89.i.2.3.2
  %conv91.i.2.3.2 = trunc i32 %xor90.i.2.3.2 to i8
  %scevgep78.2.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %444, i64 0, i64 0, i64 2
  store i8 %conv91.i.2.3.2, i8* %scevgep78.2.3.2, align 1
  %469 = load i8, i8* %x, align 1
  %470 = load i8, i8* %arraydecay7.2, align 1
  %call111.i.2514 = call zeroext i8 @mult(i8 zeroext %469, i8 zeroext %470) #3
  store i8 %call111.i.2514, i8* %arraydecay10.2, align 1
  %scevgep90.1.2523 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 1
  %471 = load i8, i8* %scevgep90.1.2523, align 1
  %conv126.i.1.2524 = zext i8 %471 to i32
  %472 = load i8, i8* %arraydecay10.2, align 1
  %conv129.i.1.2525 = zext i8 %472 to i32
  %xor130.i.1.2526 = xor i32 %conv129.i.1.2525, %conv126.i.1.2524
  %conv131.i.1.2527 = trunc i32 %xor130.i.1.2526 to i8
  store i8 %conv131.i.1.2527, i8* %arraydecay10.2, align 1
  %scevgep90.2.2530 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 2
  %473 = load i8, i8* %scevgep90.2.2530, align 1
  %conv126.i.2.2531 = zext i8 %473 to i32
  %474 = load i8, i8* %arraydecay10.2, align 1
  %conv129.i.2.2532 = zext i8 %474 to i32
  %xor130.i.2.2533 = xor i32 %conv129.i.2.2532, %conv126.i.2.2531
  %conv131.i.2.2534 = trunc i32 %xor130.i.2.2533 to i8
  store i8 %conv131.i.2.2534, i8* %arraydecay10.2, align 1
  %scevgep90.3.2537 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 0, i64 3
  %475 = load i8, i8* %scevgep90.3.2537, align 1
  %conv126.i.3.2538 = zext i8 %475 to i32
  %476 = load i8, i8* %arraydecay10.2, align 1
  %conv129.i.3.2539 = zext i8 %476 to i32
  %xor130.i.3.2540 = xor i32 %conv129.i.3.2539, %conv126.i.3.2538
  %conv131.i.3.2541 = trunc i32 %xor130.i.3.2540 to i8
  store i8 %conv131.i.3.2541, i8* %arraydecay10.2, align 1
  %scevgep89.2543 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i, i64 0, i64 1, i64 0
  %477 = bitcast i8* %scevgep89.2543 to [4 x [4 x i8]]*
  %arrayidx108.i.1.2 = getelementptr inbounds i8, i8* %x, i64 1
  %478 = load i8, i8* %arrayidx108.i.1.2, align 1
  %arrayidx110.i.1.2 = getelementptr inbounds i8, i8* %arraydecay7.2, i64 1
  %479 = load i8, i8* %arrayidx110.i.1.2, align 1
  %call111.i.1.2 = call zeroext i8 @mult(i8 zeroext %478, i8 zeroext %479) #3
  %arrayidx113.i.1.2 = getelementptr inbounds i8, i8* %arraydecay10.2, i64 1
  store i8 %call111.i.1.2, i8* %arrayidx113.i.1.2, align 1
  %arrayidx128.i.1.2 = getelementptr inbounds i8, i8* %arraydecay10.2, i64 1
  %scevgep90.1191.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %477, i64 0, i64 0, i64 0
  %480 = load i8, i8* %scevgep90.1191.2, align 1
  %conv126.i.1192.2 = zext i8 %480 to i32
  %481 = load i8, i8* %arrayidx128.i.1.2, align 1
  %conv129.i.1193.2 = zext i8 %481 to i32
  %xor130.i.1194.2 = xor i32 %conv129.i.1193.2, %conv126.i.1192.2
  %conv131.i.1195.2 = trunc i32 %xor130.i.1194.2 to i8
  store i8 %conv131.i.1195.2, i8* %arrayidx128.i.1.2, align 1
  %scevgep90.2.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %477, i64 0, i64 0, i64 2
  %482 = load i8, i8* %scevgep90.2.1.2, align 1
  %conv126.i.2.1.2 = zext i8 %482 to i32
  %483 = load i8, i8* %arrayidx128.i.1.2, align 1
  %conv129.i.2.1.2 = zext i8 %483 to i32
  %xor130.i.2.1.2 = xor i32 %conv129.i.2.1.2, %conv126.i.2.1.2
  %conv131.i.2.1.2 = trunc i32 %xor130.i.2.1.2 to i8
  store i8 %conv131.i.2.1.2, i8* %arrayidx128.i.1.2, align 1
  %scevgep90.3.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %477, i64 0, i64 0, i64 3
  %484 = load i8, i8* %scevgep90.3.1.2, align 1
  %conv126.i.3.1.2 = zext i8 %484 to i32
  %485 = load i8, i8* %arrayidx128.i.1.2, align 1
  %conv129.i.3.1.2 = zext i8 %485 to i32
  %xor130.i.3.1.2 = xor i32 %conv129.i.3.1.2, %conv126.i.3.1.2
  %conv131.i.3.1.2 = trunc i32 %xor130.i.3.1.2 to i8
  store i8 %conv131.i.3.1.2, i8* %arrayidx128.i.1.2, align 1
  %scevgep89.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %477, i64 0, i64 1, i64 0
  %486 = bitcast i8* %scevgep89.1.2 to [4 x [4 x i8]]*
  %arrayidx108.i.2.2 = getelementptr inbounds i8, i8* %x, i64 2
  %487 = load i8, i8* %arrayidx108.i.2.2, align 1
  %arrayidx110.i.2.2 = getelementptr inbounds i8, i8* %arraydecay7.2, i64 2
  %488 = load i8, i8* %arrayidx110.i.2.2, align 1
  %call111.i.2.2 = call zeroext i8 @mult(i8 zeroext %487, i8 zeroext %488) #3
  %arrayidx113.i.2.2 = getelementptr inbounds i8, i8* %arraydecay10.2, i64 2
  store i8 %call111.i.2.2, i8* %arrayidx113.i.2.2, align 1
  %arrayidx128.i.2.2 = getelementptr inbounds i8, i8* %arraydecay10.2, i64 2
  %scevgep90.2200.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %486, i64 0, i64 0, i64 0
  %489 = load i8, i8* %scevgep90.2200.2, align 1
  %conv126.i.2201.2 = zext i8 %489 to i32
  %490 = load i8, i8* %arrayidx128.i.2.2, align 1
  %conv129.i.2202.2 = zext i8 %490 to i32
  %xor130.i.2203.2 = xor i32 %conv129.i.2202.2, %conv126.i.2201.2
  %conv131.i.2204.2 = trunc i32 %xor130.i.2203.2 to i8
  store i8 %conv131.i.2204.2, i8* %arrayidx128.i.2.2, align 1
  %scevgep90.1.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %486, i64 0, i64 0, i64 1
  %491 = load i8, i8* %scevgep90.1.2.2, align 1
  %conv126.i.1.2.2 = zext i8 %491 to i32
  %492 = load i8, i8* %arrayidx128.i.2.2, align 1
  %conv129.i.1.2.2 = zext i8 %492 to i32
  %xor130.i.1.2.2 = xor i32 %conv129.i.1.2.2, %conv126.i.1.2.2
  %conv131.i.1.2.2 = trunc i32 %xor130.i.1.2.2 to i8
  store i8 %conv131.i.1.2.2, i8* %arrayidx128.i.2.2, align 1
  %scevgep90.3.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %486, i64 0, i64 0, i64 3
  %493 = load i8, i8* %scevgep90.3.2.2, align 1
  %conv126.i.3.2.2 = zext i8 %493 to i32
  %494 = load i8, i8* %arrayidx128.i.2.2, align 1
  %conv129.i.3.2.2 = zext i8 %494 to i32
  %xor130.i.3.2.2 = xor i32 %conv129.i.3.2.2, %conv126.i.3.2.2
  %conv131.i.3.2.2 = trunc i32 %xor130.i.3.2.2 to i8
  store i8 %conv131.i.3.2.2, i8* %arrayidx128.i.2.2, align 1
  %scevgep89.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %486, i64 0, i64 1, i64 0
  %495 = bitcast i8* %scevgep89.2.2 to [4 x [4 x i8]]*
  %arrayidx108.i.3.2 = getelementptr inbounds i8, i8* %x, i64 3
  %496 = load i8, i8* %arrayidx108.i.3.2, align 1
  %arrayidx110.i.3.2 = getelementptr inbounds i8, i8* %arraydecay7.2, i64 3
  %497 = load i8, i8* %arrayidx110.i.3.2, align 1
  %call111.i.3.2 = call zeroext i8 @mult(i8 zeroext %496, i8 zeroext %497) #3
  %arrayidx113.i.3.2 = getelementptr inbounds i8, i8* %arraydecay10.2, i64 3
  store i8 %call111.i.3.2, i8* %arrayidx113.i.3.2, align 1
  %arrayidx128.i.3.2 = getelementptr inbounds i8, i8* %arraydecay10.2, i64 3
  %scevgep90.3209.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %495, i64 0, i64 0, i64 0
  %498 = load i8, i8* %scevgep90.3209.2, align 1
  %conv126.i.3210.2 = zext i8 %498 to i32
  %499 = load i8, i8* %arrayidx128.i.3.2, align 1
  %conv129.i.3211.2 = zext i8 %499 to i32
  %xor130.i.3212.2 = xor i32 %conv129.i.3211.2, %conv126.i.3210.2
  %conv131.i.3213.2 = trunc i32 %xor130.i.3212.2 to i8
  store i8 %conv131.i.3213.2, i8* %arrayidx128.i.3.2, align 1
  %scevgep90.1.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %495, i64 0, i64 0, i64 1
  %500 = load i8, i8* %scevgep90.1.3.2, align 1
  %conv126.i.1.3.2 = zext i8 %500 to i32
  %501 = load i8, i8* %arrayidx128.i.3.2, align 1
  %conv129.i.1.3.2 = zext i8 %501 to i32
  %xor130.i.1.3.2 = xor i32 %conv129.i.1.3.2, %conv126.i.1.3.2
  %conv131.i.1.3.2 = trunc i32 %xor130.i.1.3.2 to i8
  store i8 %conv131.i.1.3.2, i8* %arrayidx128.i.3.2, align 1
  %scevgep90.2.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %495, i64 0, i64 0, i64 2
  %502 = load i8, i8* %scevgep90.2.3.2, align 1
  %conv126.i.2.3.2 = zext i8 %502 to i32
  %503 = load i8, i8* %arrayidx128.i.3.2, align 1
  %conv129.i.2.3.2 = zext i8 %503 to i32
  %xor130.i.2.3.2 = xor i32 %conv129.i.2.3.2, %conv126.i.2.3.2
  %conv131.i.2.3.2 = trunc i32 %xor130.i.2.3.2 to i8
  store i8 %conv131.i.2.3.2, i8* %arrayidx128.i.3.2, align 1
  %call139.i.2 = call zeroext i8 @mult(i8 zeroext %call.i22.2, i8 zeroext %call1.i.2) #3
  %conv140.i.2 = zext i8 %call139.i.2 to i32
  %scevgep96.2545 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %341, i64 0, i64 0, i64 0
  %scevgep97.2546 = getelementptr i8, i8* %scevgep96.2545, i64 4
  %504 = load i8, i8* %scevgep97.2546, align 1
  %conv.i.i172.i.2548 = zext i8 %504 to i32
  %conv1.i.i173.i.2549 = zext i8 %conv2.i.i175.i.3.1 to i32
  %xor.i.i174.i.2550 = xor i32 %conv1.i.i173.i.2549, %conv.i.i172.i.2548
  %conv2.i.i175.i.2551 = trunc i32 %xor.i.i174.i.2550 to i8
  %scevgep96.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %341, i64 0, i64 0, i64 1
  %scevgep97.1.2 = getelementptr i8, i8* %scevgep96.1.2, i64 4
  %505 = load i8, i8* %scevgep97.1.2, align 1
  %conv.i.i172.i.1.2 = zext i8 %505 to i32
  %conv1.i.i173.i.1.2 = zext i8 %conv2.i.i175.i.2551 to i32
  %xor.i.i174.i.1.2 = xor i32 %conv1.i.i173.i.1.2, %conv.i.i172.i.1.2
  %conv2.i.i175.i.1.2 = trunc i32 %xor.i.i174.i.1.2 to i8
  %scevgep96.2.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %341, i64 0, i64 0, i64 2
  %scevgep97.2.2 = getelementptr i8, i8* %scevgep96.2.2, i64 4
  %506 = load i8, i8* %scevgep97.2.2, align 1
  %conv.i.i172.i.2.2 = zext i8 %506 to i32
  %conv1.i.i173.i.2.2 = zext i8 %conv2.i.i175.i.1.2 to i32
  %xor.i.i174.i.2.2 = xor i32 %conv1.i.i173.i.2.2, %conv.i.i172.i.2.2
  %conv2.i.i175.i.2.2 = trunc i32 %xor.i.i174.i.2.2 to i8
  %scevgep96.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %341, i64 0, i64 0, i64 3
  %scevgep97.3.2 = getelementptr i8, i8* %scevgep96.3.2, i64 4
  %507 = load i8, i8* %scevgep97.3.2, align 1
  %conv.i.i172.i.3.2 = zext i8 %507 to i32
  %conv1.i.i173.i.3.2 = zext i8 %conv2.i.i175.i.2.2 to i32
  %xor.i.i174.i.3.2 = xor i32 %conv1.i.i173.i.3.2, %conv.i.i172.i.3.2
  %conv2.i.i175.i.3.2 = trunc i32 %xor.i.i174.i.3.2 to i8
  %conv142.i.2 = zext i8 %conv2.i.i175.i.3.2 to i32
  %cmp143.i.2 = icmp eq i32 %conv140.i.2, %conv142.i.2
  call void @assert(i1 zeroext %cmp143.i.2) #3
  %scevgep26 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z, i64 0, i64 3, i64 0
  %508 = load i8, i8* %scevgep26, align 1
  store i8 %508, i8* %y, align 1
  %scevgep29.1 = getelementptr i8, i8* %scevgep26, i64 1
  %509 = load i8, i8* %scevgep29.1, align 1
  %scevgep30.1 = getelementptr i8, i8* %y, i64 1
  store i8 %509, i8* %scevgep30.1, align 1
  %scevgep29.2 = getelementptr i8, i8* %scevgep26, i64 2
  %510 = load i8, i8* %scevgep29.2, align 1
  %scevgep30.2 = getelementptr i8, i8* %y, i64 2
  store i8 %510, i8* %scevgep30.2, align 1
  %scevgep29.3 = getelementptr i8, i8* %scevgep26, i64 3
  %511 = load i8, i8* %scevgep29.3, align 1
  %scevgep30.3 = getelementptr i8, i8* %y, i64 3
  store i8 %511, i8* %scevgep30.3, align 1
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
  %s.i.i = alloca [4 x [4 x i8]], align 16
  %p0.i.i = alloca [4 x [4 x i8]], align 16
  %p1.i.i = alloca [4 x [4 x i8]], align 16
  %z.i.i = alloca [4 x [4 x i8]], align 16
  %z.i = alloca [4 x i8], align 1
  %w.i = alloca [4 x i8], align 1
  %u.i = alloca [4 x i8], align 1
  %v.i = alloca [4 x i8], align 1
  %m.i = alloca [4 x i8], align 1
  %call = call zeroext i8 (...) @rand()
  %conv = zext i8 %call to i32
  %0 = load i8, i8* %x, align 1
  %scevgep388.1 = getelementptr i8, i8* %x, i64 1
  %1 = load i8, i8* %scevgep388.1, align 1
  %conv.i.i.1 = zext i8 %1 to i32
  %conv1.i.i.1 = zext i8 %0 to i32
  %xor.i.i.1 = xor i32 %conv1.i.i.1, %conv.i.i.1
  %conv2.i.i.1 = trunc i32 %xor.i.i.1 to i8
  %scevgep388.2 = getelementptr i8, i8* %x, i64 2
  %2 = load i8, i8* %scevgep388.2, align 1
  %conv.i.i.2 = zext i8 %2 to i32
  %conv1.i.i.2 = zext i8 %conv2.i.i.1 to i32
  %xor.i.i.2 = xor i32 %conv1.i.i.2, %conv.i.i.2
  %conv2.i.i.2 = trunc i32 %xor.i.i.2 to i8
  %scevgep388.3 = getelementptr i8, i8* %x, i64 3
  %3 = load i8, i8* %scevgep388.3, align 1
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
  %scevgep384.1 = getelementptr i8, i8* %x, i64 1
  %5 = load i8, i8* %scevgep384.1, align 1
  %conv.i.i.i.1 = zext i8 %5 to i32
  %conv1.i.i.i.1 = zext i8 %4 to i32
  %xor.i.i.i.1 = xor i32 %conv1.i.i.i.1, %conv.i.i.i.1
  %conv2.i.i.i.1 = trunc i32 %xor.i.i.i.1 to i8
  %scevgep384.2 = getelementptr i8, i8* %x, i64 2
  %6 = load i8, i8* %scevgep384.2, align 1
  %conv.i.i.i.2 = zext i8 %6 to i32
  %conv1.i.i.i.2 = zext i8 %conv2.i.i.i.1 to i32
  %xor.i.i.i.2 = xor i32 %conv1.i.i.i.2, %conv.i.i.i.2
  %conv2.i.i.i.2 = trunc i32 %xor.i.i.i.2 to i8
  %scevgep384.3 = getelementptr i8, i8* %x, i64 3
  %7 = load i8, i8* %scevgep384.3, align 1
  %conv.i.i.i.3 = zext i8 %7 to i32
  %conv1.i.i.i.3 = zext i8 %conv2.i.i.i.2 to i32
  %xor.i.i.i.3 = xor i32 %conv1.i.i.i.3, %conv.i.i.i.3
  %conv2.i.i.i.3 = trunc i32 %xor.i.i.i.3 to i8
  %conv2.i = zext i8 %conv2.i.i.i.3 to i32
  %cmp.i = icmp eq i32 %conv.i, %conv2.i
  call void @assume(i1 zeroext %cmp.i) #3
  %8 = load i8, i8* %x, align 1
  %call.i.i19 = call zeroext i8 @square(i8 zeroext %8) #3
  %scevgep380 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 0
  store i8 %call.i.i19, i8* %scevgep380, align 1
  %scevgep379.1 = getelementptr i8, i8* %x, i64 1
  %9 = load i8, i8* %scevgep379.1, align 1
  %call.i.i19.1 = call zeroext i8 @square(i8 zeroext %9) #3
  %scevgep380.1 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 1
  store i8 %call.i.i19.1, i8* %scevgep380.1, align 1
  %scevgep379.2 = getelementptr i8, i8* %x, i64 2
  %10 = load i8, i8* %scevgep379.2, align 1
  %call.i.i19.2 = call zeroext i8 @square(i8 zeroext %10) #3
  %scevgep380.2 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 2
  store i8 %call.i.i19.2, i8* %scevgep380.2, align 1
  %scevgep379.3 = getelementptr i8, i8* %x, i64 3
  %11 = load i8, i8* %scevgep379.3, align 1
  %call.i.i19.3 = call zeroext i8 @square(i8 zeroext %11) #3
  %scevgep380.3 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 3
  store i8 %call.i.i19.3, i8* %scevgep380.3, align 1
  %arraydecay4.i = getelementptr inbounds [4 x i8], [4 x i8]* %z.i, i64 0, i64 0
  %call.i28.i = call zeroext i8 (...) @rand() #3
  %conv.i.i22 = zext i8 %call.i28.i to i32
  %scevgep375 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 0
  %12 = load i8, i8* %scevgep375, align 1
  %scevgep375.1 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 1
  %13 = load i8, i8* %scevgep375.1, align 1
  %conv.i.i.i.i.1 = zext i8 %13 to i32
  %conv1.i.i.i.i.1 = zext i8 %12 to i32
  %xor.i.i.i.i.1 = xor i32 %conv1.i.i.i.i.1, %conv.i.i.i.i.1
  %conv2.i.i.i.i.1 = trunc i32 %xor.i.i.i.i.1 to i8
  %scevgep375.2 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 2
  %14 = load i8, i8* %scevgep375.2, align 1
  %conv.i.i.i.i.2 = zext i8 %14 to i32
  %conv1.i.i.i.i.2 = zext i8 %conv2.i.i.i.i.1 to i32
  %xor.i.i.i.i.2 = xor i32 %conv1.i.i.i.i.2, %conv.i.i.i.i.2
  %conv2.i.i.i.i.2 = trunc i32 %xor.i.i.i.i.2 to i8
  %scevgep375.3 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 3
  %15 = load i8, i8* %scevgep375.3, align 1
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
  %scevgep371 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 1
  %17 = load i8, i8* %scevgep371, align 1
  %conv13.i.i = zext i8 %17 to i32
  %xor14.i.i = xor i32 %conv13.i.i, %conv11.i.i
  %conv15.i.i = trunc i32 %xor14.i.i to i8
  store i8 %conv15.i.i, i8* %scevgep371, align 1
  %call7.i.i.1 = call zeroext i8 (...) @rand() #3
  %conv8.i.i.1 = zext i8 %call7.i.i.1 to i32
  %18 = load i8, i8* %arraydecay4.i, align 1
  %conv9.i.i.1 = zext i8 %18 to i32
  %xor.i.i24.1 = xor i32 %conv9.i.i.1, %conv8.i.i.1
  %conv10.i.i.1 = trunc i32 %xor.i.i24.1 to i8
  store i8 %conv10.i.i.1, i8* %arraydecay4.i, align 1
  %conv11.i.i.1 = zext i8 %call7.i.i.1 to i32
  %scevgep371.1 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 2
  %19 = load i8, i8* %scevgep371.1, align 1
  %conv13.i.i.1 = zext i8 %19 to i32
  %xor14.i.i.1 = xor i32 %conv13.i.i.1, %conv11.i.i.1
  %conv15.i.i.1 = trunc i32 %xor14.i.i.1 to i8
  store i8 %conv15.i.i.1, i8* %scevgep371.1, align 1
  %call7.i.i.2 = call zeroext i8 (...) @rand() #3
  %conv8.i.i.2 = zext i8 %call7.i.i.2 to i32
  %20 = load i8, i8* %arraydecay4.i, align 1
  %conv9.i.i.2 = zext i8 %20 to i32
  %xor.i.i24.2 = xor i32 %conv9.i.i.2, %conv8.i.i.2
  %conv10.i.i.2 = trunc i32 %xor.i.i24.2 to i8
  store i8 %conv10.i.i.2, i8* %arraydecay4.i, align 1
  %conv11.i.i.2 = zext i8 %call7.i.i.2 to i32
  %scevgep371.2 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 3
  %21 = load i8, i8* %scevgep371.2, align 1
  %conv13.i.i.2 = zext i8 %21 to i32
  %xor14.i.i.2 = xor i32 %conv13.i.i.2, %conv11.i.i.2
  %conv15.i.i.2 = trunc i32 %xor14.i.i.2 to i8
  store i8 %conv15.i.i.2, i8* %scevgep371.2, align 1
  %conv16.i.i = zext i8 %call.i28.i to i32
  %scevgep367 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 0
  %22 = load i8, i8* %scevgep367, align 1
  %scevgep367.1 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 1
  %23 = load i8, i8* %scevgep367.1, align 1
  %conv.i.i31.i.i.1 = zext i8 %23 to i32
  %conv1.i.i32.i.i.1 = zext i8 %22 to i32
  %xor.i.i33.i.i.1 = xor i32 %conv1.i.i32.i.i.1, %conv.i.i31.i.i.1
  %conv2.i.i34.i.i.1 = trunc i32 %xor.i.i33.i.i.1 to i8
  %scevgep367.2 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 2
  %24 = load i8, i8* %scevgep367.2, align 1
  %conv.i.i31.i.i.2 = zext i8 %24 to i32
  %conv1.i.i32.i.i.2 = zext i8 %conv2.i.i34.i.i.1 to i32
  %xor.i.i33.i.i.2 = xor i32 %conv1.i.i32.i.i.2, %conv.i.i31.i.i.2
  %conv2.i.i34.i.i.2 = trunc i32 %xor.i.i33.i.i.2 to i8
  %scevgep367.3 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 3
  %25 = load i8, i8* %scevgep367.3, align 1
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
  %scevgep363 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 0
  %26 = load i8, i8* %scevgep363, align 1
  %scevgep363.1 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 1
  %27 = load i8, i8* %scevgep363.1, align 1
  %conv.i.i.i48.i.1 = zext i8 %27 to i32
  %conv1.i.i.i49.i.1 = zext i8 %26 to i32
  %xor.i.i.i50.i.1 = xor i32 %conv1.i.i.i49.i.1, %conv.i.i.i48.i.1
  %conv2.i.i.i51.i.1 = trunc i32 %xor.i.i.i50.i.1 to i8
  %scevgep363.2 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 2
  %28 = load i8, i8* %scevgep363.2, align 1
  %conv.i.i.i48.i.2 = zext i8 %28 to i32
  %conv1.i.i.i49.i.2 = zext i8 %conv2.i.i.i51.i.1 to i32
  %xor.i.i.i50.i.2 = xor i32 %conv1.i.i.i49.i.2, %conv.i.i.i48.i.2
  %conv2.i.i.i51.i.2 = trunc i32 %xor.i.i.i50.i.2 to i8
  %scevgep363.3 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 3
  %29 = load i8, i8* %scevgep363.3, align 1
  %conv.i.i.i48.i.3 = zext i8 %29 to i32
  %conv1.i.i.i49.i.3 = zext i8 %conv2.i.i.i51.i.2 to i32
  %xor.i.i.i50.i.3 = xor i32 %conv1.i.i.i49.i.3, %conv.i.i.i48.i.3
  %conv2.i.i.i51.i.3 = trunc i32 %xor.i.i.i50.i.3 to i8
  %conv3.i.i = zext i8 %conv2.i.i.i51.i.3 to i32
  %cmp.i54.i = icmp eq i32 %conv.i42.i, %conv3.i.i
  call void @assume(i1 zeroext %cmp.i54.i) #3
  %conv5.i.i = zext i8 %call1.i.i to i32
  %30 = load i8, i8* %x, align 1
  %scevgep359.1 = getelementptr i8, i8* %x, i64 1
  %31 = load i8, i8* %scevgep359.1, align 1
  %conv.i.i155.i.i.1 = zext i8 %31 to i32
  %conv1.i.i156.i.i.1 = zext i8 %30 to i32
  %xor.i.i157.i.i.1 = xor i32 %conv1.i.i156.i.i.1, %conv.i.i155.i.i.1
  %conv2.i.i158.i.i.1 = trunc i32 %xor.i.i157.i.i.1 to i8
  %scevgep359.2 = getelementptr i8, i8* %x, i64 2
  %32 = load i8, i8* %scevgep359.2, align 1
  %conv.i.i155.i.i.2 = zext i8 %32 to i32
  %conv1.i.i156.i.i.2 = zext i8 %conv2.i.i158.i.i.1 to i32
  %xor.i.i157.i.i.2 = xor i32 %conv1.i.i156.i.i.2, %conv.i.i155.i.i.2
  %conv2.i.i158.i.i.2 = trunc i32 %xor.i.i157.i.i.2 to i8
  %scevgep359.3 = getelementptr i8, i8* %x, i64 3
  %33 = load i8, i8* %scevgep359.3, align 1
  %conv.i.i155.i.i.3 = zext i8 %33 to i32
  %conv1.i.i156.i.i.3 = zext i8 %conv2.i.i158.i.i.2 to i32
  %xor.i.i157.i.i.3 = xor i32 %conv1.i.i156.i.i.3, %conv.i.i155.i.i.3
  %conv2.i.i158.i.i.3 = trunc i32 %xor.i.i157.i.i.3 to i8
  %conv7.i.i = zext i8 %conv2.i.i158.i.i.3 to i32
  %cmp8.i.i = icmp eq i32 %conv5.i.i, %conv7.i.i
  call void @assume(i1 zeroext %cmp8.i.i) #3
  %call16.i.i = call zeroext i8 (...) @rand() #3
  %scevgep349 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  store i8 %call16.i.i, i8* %scevgep349, align 1
  %scevgep350 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %34 = load i8, i8* %scevgep350, align 1
  %scevgep351 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  store i8 %34, i8* %scevgep351, align 1
  %call16.i.i.1846 = call zeroext i8 (...) @rand() #3
  %scevgep349.1847 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  store i8 %call16.i.i.1846, i8* %scevgep349.1847, align 1
  %scevgep350.1848 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %35 = load i8, i8* %scevgep350.1848, align 1
  %scevgep351.1849 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 2, i64 0
  store i8 %35, i8* %scevgep351.1849, align 1
  %call16.i.i.2851 = call zeroext i8 (...) @rand() #3
  %scevgep349.2852 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  store i8 %call16.i.i.2851, i8* %scevgep349.2852, align 1
  %scevgep350.2853 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  %36 = load i8, i8* %scevgep350.2853, align 1
  %scevgep351.2854 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 3, i64 0
  store i8 %36, i8* %scevgep351.2854, align 1
  %scevgep346 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 1, i64 1
  %37 = bitcast i8* %scevgep346 to [4 x [4 x i8]]*
  %call16.i.i.1 = call zeroext i8 (...) @rand() #3
  %scevgep349.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %37, i64 0, i64 0, i64 1
  store i8 %call16.i.i.1, i8* %scevgep349.1, align 1
  %scevgep350.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %37, i64 0, i64 0, i64 1
  %38 = load i8, i8* %scevgep350.1, align 1
  %scevgep351.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %37, i64 0, i64 1, i64 0
  store i8 %38, i8* %scevgep351.1, align 1
  %call16.i.i.1.1 = call zeroext i8 (...) @rand() #3
  %scevgep349.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %37, i64 0, i64 0, i64 2
  store i8 %call16.i.i.1.1, i8* %scevgep349.1.1, align 1
  %scevgep350.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %37, i64 0, i64 0, i64 2
  %39 = load i8, i8* %scevgep350.1.1, align 1
  %scevgep351.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %37, i64 0, i64 2, i64 0
  store i8 %39, i8* %scevgep351.1.1, align 1
  %scevgep346.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %37, i64 0, i64 1, i64 1
  %40 = bitcast i8* %scevgep346.1 to [4 x [4 x i8]]*
  %call16.i.i.2 = call zeroext i8 (...) @rand() #3
  %scevgep349.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %40, i64 0, i64 0, i64 1
  store i8 %call16.i.i.2, i8* %scevgep349.2, align 1
  %scevgep350.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %40, i64 0, i64 0, i64 1
  %41 = load i8, i8* %scevgep350.2, align 1
  %scevgep351.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %40, i64 0, i64 1, i64 0
  store i8 %41, i8* %scevgep351.2, align 1
  %scevgep322.1 = getelementptr i8, i8* %x, i64 1
  %42 = load i8, i8* %scevgep322.1, align 1
  %conv44.i.i.1 = zext i8 %42 to i32
  %scevgep325.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %43 = load i8, i8* %scevgep325.1, align 1
  %conv49.i.i.1 = zext i8 %43 to i32
  %xor.i62.i.1 = xor i32 %conv44.i.i.1, %conv49.i.i.1
  %conv50.i.i.1 = trunc i32 %xor.i62.i.1 to i8
  %scevgep329.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  store i8 %conv50.i.i.1, i8* %scevgep329.1, align 1
  %44 = load i8, i8* %arraydecay5.i, align 1
  %conv57.i.i.1 = zext i8 %44 to i32
  %xor58.i.i.1 = xor i32 %conv57.i.i.1, 1
  %conv59.i.i.1 = trunc i32 %xor58.i.i.1 to i8
  %scevgep326.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %45 = load i8, i8* %scevgep326.1, align 1
  %call64.i.i.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.1, i8 zeroext %45) #3
  %scevgep333.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  store i8 %call64.i.i.1, i8* %scevgep333.1, align 1
  %46 = load i8, i8* %arraydecay5.i, align 1
  %scevgep330.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  %47 = load i8, i8* %scevgep330.1, align 1
  %call75.i.i.1 = call zeroext i8 @mult(i8 zeroext %46, i8 zeroext %47) #3
  %scevgep337.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  store i8 %call75.i.i.1, i8* %scevgep337.1, align 1
  %scevgep334.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  %48 = load i8, i8* %scevgep334.1, align 1
  %conv84.i.i.1 = zext i8 %48 to i32
  %scevgep338.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  %49 = load i8, i8* %scevgep338.1, align 1
  %conv89.i.i.1 = zext i8 %49 to i32
  %xor90.i.i.1 = xor i32 %conv84.i.i.1, %conv89.i.i.1
  %conv91.i.i.1 = trunc i32 %xor90.i.i.1 to i8
  %scevgep341.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  store i8 %conv91.i.i.1, i8* %scevgep341.1, align 1
  %scevgep322.2 = getelementptr i8, i8* %x, i64 2
  %50 = load i8, i8* %scevgep322.2, align 1
  %conv44.i.i.2 = zext i8 %50 to i32
  %scevgep325.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %51 = load i8, i8* %scevgep325.2, align 1
  %conv49.i.i.2 = zext i8 %51 to i32
  %xor.i62.i.2 = xor i32 %conv44.i.i.2, %conv49.i.i.2
  %conv50.i.i.2 = trunc i32 %xor.i62.i.2 to i8
  %scevgep329.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 2
  store i8 %conv50.i.i.2, i8* %scevgep329.2, align 1
  %52 = load i8, i8* %arraydecay5.i, align 1
  %conv57.i.i.2 = zext i8 %52 to i32
  %xor58.i.i.2 = xor i32 %conv57.i.i.2, 1
  %conv59.i.i.2 = trunc i32 %xor58.i.i.2 to i8
  %scevgep326.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %53 = load i8, i8* %scevgep326.2, align 1
  %call64.i.i.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.2, i8 zeroext %53) #3
  %scevgep333.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 2
  store i8 %call64.i.i.2, i8* %scevgep333.2, align 1
  %54 = load i8, i8* %arraydecay5.i, align 1
  %scevgep330.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 2
  %55 = load i8, i8* %scevgep330.2, align 1
  %call75.i.i.2 = call zeroext i8 @mult(i8 zeroext %54, i8 zeroext %55) #3
  %scevgep337.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 2
  store i8 %call75.i.i.2, i8* %scevgep337.2, align 1
  %scevgep334.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 2
  %56 = load i8, i8* %scevgep334.2, align 1
  %conv84.i.i.2 = zext i8 %56 to i32
  %scevgep338.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 2
  %57 = load i8, i8* %scevgep338.2, align 1
  %conv89.i.i.2 = zext i8 %57 to i32
  %xor90.i.i.2 = xor i32 %conv84.i.i.2, %conv89.i.i.2
  %conv91.i.i.2 = trunc i32 %xor90.i.i.2 to i8
  %scevgep341.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 2
  store i8 %conv91.i.i.2, i8* %scevgep341.2, align 1
  %scevgep322.3 = getelementptr i8, i8* %x, i64 3
  %58 = load i8, i8* %scevgep322.3, align 1
  %conv44.i.i.3 = zext i8 %58 to i32
  %scevgep325.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  %59 = load i8, i8* %scevgep325.3, align 1
  %conv49.i.i.3 = zext i8 %59 to i32
  %xor.i62.i.3 = xor i32 %conv44.i.i.3, %conv49.i.i.3
  %conv50.i.i.3 = trunc i32 %xor.i62.i.3 to i8
  %scevgep329.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 3
  store i8 %conv50.i.i.3, i8* %scevgep329.3, align 1
  %60 = load i8, i8* %arraydecay5.i, align 1
  %conv57.i.i.3 = zext i8 %60 to i32
  %xor58.i.i.3 = xor i32 %conv57.i.i.3, 1
  %conv59.i.i.3 = trunc i32 %xor58.i.i.3 to i8
  %scevgep326.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  %61 = load i8, i8* %scevgep326.3, align 1
  %call64.i.i.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.3, i8 zeroext %61) #3
  %scevgep333.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 3
  store i8 %call64.i.i.3, i8* %scevgep333.3, align 1
  %62 = load i8, i8* %arraydecay5.i, align 1
  %scevgep330.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 3
  %63 = load i8, i8* %scevgep330.3, align 1
  %call75.i.i.3 = call zeroext i8 @mult(i8 zeroext %62, i8 zeroext %63) #3
  %scevgep337.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 3
  store i8 %call75.i.i.3, i8* %scevgep337.3, align 1
  %scevgep334.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 3
  %64 = load i8, i8* %scevgep334.3, align 1
  %conv84.i.i.3 = zext i8 %64 to i32
  %scevgep338.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 3
  %65 = load i8, i8* %scevgep338.3, align 1
  %conv89.i.i.3 = zext i8 %65 to i32
  %xor90.i.i.3 = xor i32 %conv84.i.i.3, %conv89.i.i.3
  %conv91.i.i.3 = trunc i32 %xor90.i.i.3 to i8
  %scevgep341.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 3
  store i8 %conv91.i.i.3, i8* %scevgep341.3, align 1
  %scevgep324 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %66 = bitcast i8* %scevgep324 to [4 x [4 x i8]]*
  %scevgep328 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 1, i64 0
  %67 = bitcast i8* %scevgep328 to [4 x [4 x i8]]*
  %scevgep332 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 1, i64 0
  %68 = bitcast i8* %scevgep332 to [4 x [4 x i8]]*
  %scevgep336 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 1, i64 0
  %69 = bitcast i8* %scevgep336 to [4 x [4 x i8]]*
  %scevgep340 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %70 = bitcast i8* %scevgep340 to [4 x [4 x i8]]*
  %arrayidx56.i.i.1 = getelementptr inbounds i8, i8* %arraydecay5.i, i64 1
  %arrayidx70.i.i.1 = getelementptr inbounds i8, i8* %arraydecay5.i, i64 1
  %71 = load i8, i8* %x, align 1
  %conv44.i.i.1743 = zext i8 %71 to i32
  %scevgep325.1744 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %66, i64 0, i64 0, i64 0
  %72 = load i8, i8* %scevgep325.1744, align 1
  %conv49.i.i.1745 = zext i8 %72 to i32
  %xor.i62.i.1746 = xor i32 %conv44.i.i.1743, %conv49.i.i.1745
  %conv50.i.i.1747 = trunc i32 %xor.i62.i.1746 to i8
  %scevgep329.1748 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %67, i64 0, i64 0, i64 0
  store i8 %conv50.i.i.1747, i8* %scevgep329.1748, align 1
  %73 = load i8, i8* %arrayidx56.i.i.1, align 1
  %conv57.i.i.1749 = zext i8 %73 to i32
  %xor58.i.i.1750 = xor i32 %conv57.i.i.1749, 1
  %conv59.i.i.1751 = trunc i32 %xor58.i.i.1750 to i8
  %scevgep326.1752 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %66, i64 0, i64 0, i64 0
  %74 = load i8, i8* %scevgep326.1752, align 1
  %call64.i.i.1753 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.1751, i8 zeroext %74) #3
  %scevgep333.1754 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %68, i64 0, i64 0, i64 0
  store i8 %call64.i.i.1753, i8* %scevgep333.1754, align 1
  %75 = load i8, i8* %arrayidx70.i.i.1, align 1
  %scevgep330.1755 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %67, i64 0, i64 0, i64 0
  %76 = load i8, i8* %scevgep330.1755, align 1
  %call75.i.i.1756 = call zeroext i8 @mult(i8 zeroext %75, i8 zeroext %76) #3
  %scevgep337.1757 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %69, i64 0, i64 0, i64 0
  store i8 %call75.i.i.1756, i8* %scevgep337.1757, align 1
  %scevgep334.1758 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %68, i64 0, i64 0, i64 0
  %77 = load i8, i8* %scevgep334.1758, align 1
  %conv84.i.i.1759 = zext i8 %77 to i32
  %scevgep338.1760 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %69, i64 0, i64 0, i64 0
  %78 = load i8, i8* %scevgep338.1760, align 1
  %conv89.i.i.1761 = zext i8 %78 to i32
  %xor90.i.i.1762 = xor i32 %conv84.i.i.1759, %conv89.i.i.1761
  %conv91.i.i.1763 = trunc i32 %xor90.i.i.1762 to i8
  %scevgep341.1764 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %70, i64 0, i64 0, i64 0
  store i8 %conv91.i.i.1763, i8* %scevgep341.1764, align 1
  %scevgep322.2.1 = getelementptr i8, i8* %x, i64 2
  %79 = load i8, i8* %scevgep322.2.1, align 1
  %conv44.i.i.2.1 = zext i8 %79 to i32
  %scevgep325.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %66, i64 0, i64 0, i64 2
  %80 = load i8, i8* %scevgep325.2.1, align 1
  %conv49.i.i.2.1 = zext i8 %80 to i32
  %xor.i62.i.2.1 = xor i32 %conv44.i.i.2.1, %conv49.i.i.2.1
  %conv50.i.i.2.1 = trunc i32 %xor.i62.i.2.1 to i8
  %scevgep329.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %67, i64 0, i64 0, i64 2
  store i8 %conv50.i.i.2.1, i8* %scevgep329.2.1, align 1
  %81 = load i8, i8* %arrayidx56.i.i.1, align 1
  %conv57.i.i.2.1 = zext i8 %81 to i32
  %xor58.i.i.2.1 = xor i32 %conv57.i.i.2.1, 1
  %conv59.i.i.2.1 = trunc i32 %xor58.i.i.2.1 to i8
  %scevgep326.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %66, i64 0, i64 0, i64 2
  %82 = load i8, i8* %scevgep326.2.1, align 1
  %call64.i.i.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.2.1, i8 zeroext %82) #3
  %scevgep333.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %68, i64 0, i64 0, i64 2
  store i8 %call64.i.i.2.1, i8* %scevgep333.2.1, align 1
  %83 = load i8, i8* %arrayidx70.i.i.1, align 1
  %scevgep330.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %67, i64 0, i64 0, i64 2
  %84 = load i8, i8* %scevgep330.2.1, align 1
  %call75.i.i.2.1 = call zeroext i8 @mult(i8 zeroext %83, i8 zeroext %84) #3
  %scevgep337.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %69, i64 0, i64 0, i64 2
  store i8 %call75.i.i.2.1, i8* %scevgep337.2.1, align 1
  %scevgep334.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %68, i64 0, i64 0, i64 2
  %85 = load i8, i8* %scevgep334.2.1, align 1
  %conv84.i.i.2.1 = zext i8 %85 to i32
  %scevgep338.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %69, i64 0, i64 0, i64 2
  %86 = load i8, i8* %scevgep338.2.1, align 1
  %conv89.i.i.2.1 = zext i8 %86 to i32
  %xor90.i.i.2.1 = xor i32 %conv84.i.i.2.1, %conv89.i.i.2.1
  %conv91.i.i.2.1 = trunc i32 %xor90.i.i.2.1 to i8
  %scevgep341.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %70, i64 0, i64 0, i64 2
  store i8 %conv91.i.i.2.1, i8* %scevgep341.2.1, align 1
  %scevgep322.3.1 = getelementptr i8, i8* %x, i64 3
  %87 = load i8, i8* %scevgep322.3.1, align 1
  %conv44.i.i.3.1 = zext i8 %87 to i32
  %scevgep325.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %66, i64 0, i64 0, i64 3
  %88 = load i8, i8* %scevgep325.3.1, align 1
  %conv49.i.i.3.1 = zext i8 %88 to i32
  %xor.i62.i.3.1 = xor i32 %conv44.i.i.3.1, %conv49.i.i.3.1
  %conv50.i.i.3.1 = trunc i32 %xor.i62.i.3.1 to i8
  %scevgep329.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %67, i64 0, i64 0, i64 3
  store i8 %conv50.i.i.3.1, i8* %scevgep329.3.1, align 1
  %89 = load i8, i8* %arrayidx56.i.i.1, align 1
  %conv57.i.i.3.1 = zext i8 %89 to i32
  %xor58.i.i.3.1 = xor i32 %conv57.i.i.3.1, 1
  %conv59.i.i.3.1 = trunc i32 %xor58.i.i.3.1 to i8
  %scevgep326.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %66, i64 0, i64 0, i64 3
  %90 = load i8, i8* %scevgep326.3.1, align 1
  %call64.i.i.3.1 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.3.1, i8 zeroext %90) #3
  %scevgep333.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %68, i64 0, i64 0, i64 3
  store i8 %call64.i.i.3.1, i8* %scevgep333.3.1, align 1
  %91 = load i8, i8* %arrayidx70.i.i.1, align 1
  %scevgep330.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %67, i64 0, i64 0, i64 3
  %92 = load i8, i8* %scevgep330.3.1, align 1
  %call75.i.i.3.1 = call zeroext i8 @mult(i8 zeroext %91, i8 zeroext %92) #3
  %scevgep337.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %69, i64 0, i64 0, i64 3
  store i8 %call75.i.i.3.1, i8* %scevgep337.3.1, align 1
  %scevgep334.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %68, i64 0, i64 0, i64 3
  %93 = load i8, i8* %scevgep334.3.1, align 1
  %conv84.i.i.3.1 = zext i8 %93 to i32
  %scevgep338.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %69, i64 0, i64 0, i64 3
  %94 = load i8, i8* %scevgep338.3.1, align 1
  %conv89.i.i.3.1 = zext i8 %94 to i32
  %xor90.i.i.3.1 = xor i32 %conv84.i.i.3.1, %conv89.i.i.3.1
  %conv91.i.i.3.1 = trunc i32 %xor90.i.i.3.1 to i8
  %scevgep341.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %70, i64 0, i64 0, i64 3
  store i8 %conv91.i.i.3.1, i8* %scevgep341.3.1, align 1
  %scevgep324.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %66, i64 0, i64 1, i64 0
  %95 = bitcast i8* %scevgep324.1 to [4 x [4 x i8]]*
  %scevgep328.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %67, i64 0, i64 1, i64 0
  %96 = bitcast i8* %scevgep328.1 to [4 x [4 x i8]]*
  %scevgep332.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %68, i64 0, i64 1, i64 0
  %97 = bitcast i8* %scevgep332.1 to [4 x [4 x i8]]*
  %scevgep336.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %69, i64 0, i64 1, i64 0
  %98 = bitcast i8* %scevgep336.1 to [4 x [4 x i8]]*
  %scevgep340.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %70, i64 0, i64 1, i64 0
  %99 = bitcast i8* %scevgep340.1 to [4 x [4 x i8]]*
  %arrayidx56.i.i.2 = getelementptr inbounds i8, i8* %arraydecay5.i, i64 2
  %arrayidx70.i.i.2 = getelementptr inbounds i8, i8* %arraydecay5.i, i64 2
  %100 = load i8, i8* %x, align 1
  %conv44.i.i.2769 = zext i8 %100 to i32
  %scevgep325.2770 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %95, i64 0, i64 0, i64 0
  %101 = load i8, i8* %scevgep325.2770, align 1
  %conv49.i.i.2771 = zext i8 %101 to i32
  %xor.i62.i.2772 = xor i32 %conv44.i.i.2769, %conv49.i.i.2771
  %conv50.i.i.2773 = trunc i32 %xor.i62.i.2772 to i8
  %scevgep329.2774 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %96, i64 0, i64 0, i64 0
  store i8 %conv50.i.i.2773, i8* %scevgep329.2774, align 1
  %102 = load i8, i8* %arrayidx56.i.i.2, align 1
  %conv57.i.i.2775 = zext i8 %102 to i32
  %xor58.i.i.2776 = xor i32 %conv57.i.i.2775, 1
  %conv59.i.i.2777 = trunc i32 %xor58.i.i.2776 to i8
  %scevgep326.2778 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %95, i64 0, i64 0, i64 0
  %103 = load i8, i8* %scevgep326.2778, align 1
  %call64.i.i.2779 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.2777, i8 zeroext %103) #3
  %scevgep333.2780 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %97, i64 0, i64 0, i64 0
  store i8 %call64.i.i.2779, i8* %scevgep333.2780, align 1
  %104 = load i8, i8* %arrayidx70.i.i.2, align 1
  %scevgep330.2781 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %96, i64 0, i64 0, i64 0
  %105 = load i8, i8* %scevgep330.2781, align 1
  %call75.i.i.2782 = call zeroext i8 @mult(i8 zeroext %104, i8 zeroext %105) #3
  %scevgep337.2783 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %98, i64 0, i64 0, i64 0
  store i8 %call75.i.i.2782, i8* %scevgep337.2783, align 1
  %scevgep334.2784 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %97, i64 0, i64 0, i64 0
  %106 = load i8, i8* %scevgep334.2784, align 1
  %conv84.i.i.2785 = zext i8 %106 to i32
  %scevgep338.2786 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %98, i64 0, i64 0, i64 0
  %107 = load i8, i8* %scevgep338.2786, align 1
  %conv89.i.i.2787 = zext i8 %107 to i32
  %xor90.i.i.2788 = xor i32 %conv84.i.i.2785, %conv89.i.i.2787
  %conv91.i.i.2789 = trunc i32 %xor90.i.i.2788 to i8
  %scevgep341.2790 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %99, i64 0, i64 0, i64 0
  store i8 %conv91.i.i.2789, i8* %scevgep341.2790, align 1
  %scevgep322.1.2 = getelementptr i8, i8* %x, i64 1
  %108 = load i8, i8* %scevgep322.1.2, align 1
  %conv44.i.i.1.2 = zext i8 %108 to i32
  %scevgep325.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %95, i64 0, i64 0, i64 1
  %109 = load i8, i8* %scevgep325.1.2, align 1
  %conv49.i.i.1.2 = zext i8 %109 to i32
  %xor.i62.i.1.2 = xor i32 %conv44.i.i.1.2, %conv49.i.i.1.2
  %conv50.i.i.1.2 = trunc i32 %xor.i62.i.1.2 to i8
  %scevgep329.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %96, i64 0, i64 0, i64 1
  store i8 %conv50.i.i.1.2, i8* %scevgep329.1.2, align 1
  %110 = load i8, i8* %arrayidx56.i.i.2, align 1
  %conv57.i.i.1.2 = zext i8 %110 to i32
  %xor58.i.i.1.2 = xor i32 %conv57.i.i.1.2, 1
  %conv59.i.i.1.2 = trunc i32 %xor58.i.i.1.2 to i8
  %scevgep326.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %95, i64 0, i64 0, i64 1
  %111 = load i8, i8* %scevgep326.1.2, align 1
  %call64.i.i.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.1.2, i8 zeroext %111) #3
  %scevgep333.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %97, i64 0, i64 0, i64 1
  store i8 %call64.i.i.1.2, i8* %scevgep333.1.2, align 1
  %112 = load i8, i8* %arrayidx70.i.i.2, align 1
  %scevgep330.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %96, i64 0, i64 0, i64 1
  %113 = load i8, i8* %scevgep330.1.2, align 1
  %call75.i.i.1.2 = call zeroext i8 @mult(i8 zeroext %112, i8 zeroext %113) #3
  %scevgep337.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %98, i64 0, i64 0, i64 1
  store i8 %call75.i.i.1.2, i8* %scevgep337.1.2, align 1
  %scevgep334.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %97, i64 0, i64 0, i64 1
  %114 = load i8, i8* %scevgep334.1.2, align 1
  %conv84.i.i.1.2 = zext i8 %114 to i32
  %scevgep338.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %98, i64 0, i64 0, i64 1
  %115 = load i8, i8* %scevgep338.1.2, align 1
  %conv89.i.i.1.2 = zext i8 %115 to i32
  %xor90.i.i.1.2 = xor i32 %conv84.i.i.1.2, %conv89.i.i.1.2
  %conv91.i.i.1.2 = trunc i32 %xor90.i.i.1.2 to i8
  %scevgep341.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %99, i64 0, i64 0, i64 1
  store i8 %conv91.i.i.1.2, i8* %scevgep341.1.2, align 1
  %scevgep322.3.2 = getelementptr i8, i8* %x, i64 3
  %116 = load i8, i8* %scevgep322.3.2, align 1
  %conv44.i.i.3.2 = zext i8 %116 to i32
  %scevgep325.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %95, i64 0, i64 0, i64 3
  %117 = load i8, i8* %scevgep325.3.2, align 1
  %conv49.i.i.3.2 = zext i8 %117 to i32
  %xor.i62.i.3.2 = xor i32 %conv44.i.i.3.2, %conv49.i.i.3.2
  %conv50.i.i.3.2 = trunc i32 %xor.i62.i.3.2 to i8
  %scevgep329.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %96, i64 0, i64 0, i64 3
  store i8 %conv50.i.i.3.2, i8* %scevgep329.3.2, align 1
  %118 = load i8, i8* %arrayidx56.i.i.2, align 1
  %conv57.i.i.3.2 = zext i8 %118 to i32
  %xor58.i.i.3.2 = xor i32 %conv57.i.i.3.2, 1
  %conv59.i.i.3.2 = trunc i32 %xor58.i.i.3.2 to i8
  %scevgep326.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %95, i64 0, i64 0, i64 3
  %119 = load i8, i8* %scevgep326.3.2, align 1
  %call64.i.i.3.2 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.3.2, i8 zeroext %119) #3
  %scevgep333.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %97, i64 0, i64 0, i64 3
  store i8 %call64.i.i.3.2, i8* %scevgep333.3.2, align 1
  %120 = load i8, i8* %arrayidx70.i.i.2, align 1
  %scevgep330.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %96, i64 0, i64 0, i64 3
  %121 = load i8, i8* %scevgep330.3.2, align 1
  %call75.i.i.3.2 = call zeroext i8 @mult(i8 zeroext %120, i8 zeroext %121) #3
  %scevgep337.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %98, i64 0, i64 0, i64 3
  store i8 %call75.i.i.3.2, i8* %scevgep337.3.2, align 1
  %scevgep334.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %97, i64 0, i64 0, i64 3
  %122 = load i8, i8* %scevgep334.3.2, align 1
  %conv84.i.i.3.2 = zext i8 %122 to i32
  %scevgep338.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %98, i64 0, i64 0, i64 3
  %123 = load i8, i8* %scevgep338.3.2, align 1
  %conv89.i.i.3.2 = zext i8 %123 to i32
  %xor90.i.i.3.2 = xor i32 %conv84.i.i.3.2, %conv89.i.i.3.2
  %conv91.i.i.3.2 = trunc i32 %xor90.i.i.3.2 to i8
  %scevgep341.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %99, i64 0, i64 0, i64 3
  store i8 %conv91.i.i.3.2, i8* %scevgep341.3.2, align 1
  %scevgep324.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %95, i64 0, i64 1, i64 0
  %124 = bitcast i8* %scevgep324.2 to [4 x [4 x i8]]*
  %scevgep328.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %96, i64 0, i64 1, i64 0
  %125 = bitcast i8* %scevgep328.2 to [4 x [4 x i8]]*
  %scevgep332.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %97, i64 0, i64 1, i64 0
  %126 = bitcast i8* %scevgep332.2 to [4 x [4 x i8]]*
  %scevgep336.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %98, i64 0, i64 1, i64 0
  %127 = bitcast i8* %scevgep336.2 to [4 x [4 x i8]]*
  %scevgep340.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %99, i64 0, i64 1, i64 0
  %128 = bitcast i8* %scevgep340.2 to [4 x [4 x i8]]*
  %arrayidx56.i.i.3 = getelementptr inbounds i8, i8* %arraydecay5.i, i64 3
  %arrayidx70.i.i.3 = getelementptr inbounds i8, i8* %arraydecay5.i, i64 3
  %129 = load i8, i8* %x, align 1
  %conv44.i.i.3795 = zext i8 %129 to i32
  %scevgep325.3796 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %124, i64 0, i64 0, i64 0
  %130 = load i8, i8* %scevgep325.3796, align 1
  %conv49.i.i.3797 = zext i8 %130 to i32
  %xor.i62.i.3798 = xor i32 %conv44.i.i.3795, %conv49.i.i.3797
  %conv50.i.i.3799 = trunc i32 %xor.i62.i.3798 to i8
  %scevgep329.3800 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %125, i64 0, i64 0, i64 0
  store i8 %conv50.i.i.3799, i8* %scevgep329.3800, align 1
  %131 = load i8, i8* %arrayidx56.i.i.3, align 1
  %conv57.i.i.3801 = zext i8 %131 to i32
  %xor58.i.i.3802 = xor i32 %conv57.i.i.3801, 1
  %conv59.i.i.3803 = trunc i32 %xor58.i.i.3802 to i8
  %scevgep326.3804 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %124, i64 0, i64 0, i64 0
  %132 = load i8, i8* %scevgep326.3804, align 1
  %call64.i.i.3805 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.3803, i8 zeroext %132) #3
  %scevgep333.3806 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %126, i64 0, i64 0, i64 0
  store i8 %call64.i.i.3805, i8* %scevgep333.3806, align 1
  %133 = load i8, i8* %arrayidx70.i.i.3, align 1
  %scevgep330.3807 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %125, i64 0, i64 0, i64 0
  %134 = load i8, i8* %scevgep330.3807, align 1
  %call75.i.i.3808 = call zeroext i8 @mult(i8 zeroext %133, i8 zeroext %134) #3
  %scevgep337.3809 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %127, i64 0, i64 0, i64 0
  store i8 %call75.i.i.3808, i8* %scevgep337.3809, align 1
  %scevgep334.3810 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %126, i64 0, i64 0, i64 0
  %135 = load i8, i8* %scevgep334.3810, align 1
  %conv84.i.i.3811 = zext i8 %135 to i32
  %scevgep338.3812 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %127, i64 0, i64 0, i64 0
  %136 = load i8, i8* %scevgep338.3812, align 1
  %conv89.i.i.3813 = zext i8 %136 to i32
  %xor90.i.i.3814 = xor i32 %conv84.i.i.3811, %conv89.i.i.3813
  %conv91.i.i.3815 = trunc i32 %xor90.i.i.3814 to i8
  %scevgep341.3816 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %128, i64 0, i64 0, i64 0
  store i8 %conv91.i.i.3815, i8* %scevgep341.3816, align 1
  %scevgep322.1.3 = getelementptr i8, i8* %x, i64 1
  %137 = load i8, i8* %scevgep322.1.3, align 1
  %conv44.i.i.1.3 = zext i8 %137 to i32
  %scevgep325.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %124, i64 0, i64 0, i64 1
  %138 = load i8, i8* %scevgep325.1.3, align 1
  %conv49.i.i.1.3 = zext i8 %138 to i32
  %xor.i62.i.1.3 = xor i32 %conv44.i.i.1.3, %conv49.i.i.1.3
  %conv50.i.i.1.3 = trunc i32 %xor.i62.i.1.3 to i8
  %scevgep329.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %125, i64 0, i64 0, i64 1
  store i8 %conv50.i.i.1.3, i8* %scevgep329.1.3, align 1
  %139 = load i8, i8* %arrayidx56.i.i.3, align 1
  %conv57.i.i.1.3 = zext i8 %139 to i32
  %xor58.i.i.1.3 = xor i32 %conv57.i.i.1.3, 1
  %conv59.i.i.1.3 = trunc i32 %xor58.i.i.1.3 to i8
  %scevgep326.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %124, i64 0, i64 0, i64 1
  %140 = load i8, i8* %scevgep326.1.3, align 1
  %call64.i.i.1.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.1.3, i8 zeroext %140) #3
  %scevgep333.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %126, i64 0, i64 0, i64 1
  store i8 %call64.i.i.1.3, i8* %scevgep333.1.3, align 1
  %141 = load i8, i8* %arrayidx70.i.i.3, align 1
  %scevgep330.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %125, i64 0, i64 0, i64 1
  %142 = load i8, i8* %scevgep330.1.3, align 1
  %call75.i.i.1.3 = call zeroext i8 @mult(i8 zeroext %141, i8 zeroext %142) #3
  %scevgep337.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %127, i64 0, i64 0, i64 1
  store i8 %call75.i.i.1.3, i8* %scevgep337.1.3, align 1
  %scevgep334.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %126, i64 0, i64 0, i64 1
  %143 = load i8, i8* %scevgep334.1.3, align 1
  %conv84.i.i.1.3 = zext i8 %143 to i32
  %scevgep338.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %127, i64 0, i64 0, i64 1
  %144 = load i8, i8* %scevgep338.1.3, align 1
  %conv89.i.i.1.3 = zext i8 %144 to i32
  %xor90.i.i.1.3 = xor i32 %conv84.i.i.1.3, %conv89.i.i.1.3
  %conv91.i.i.1.3 = trunc i32 %xor90.i.i.1.3 to i8
  %scevgep341.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %128, i64 0, i64 0, i64 1
  store i8 %conv91.i.i.1.3, i8* %scevgep341.1.3, align 1
  %scevgep322.2.3 = getelementptr i8, i8* %x, i64 2
  %145 = load i8, i8* %scevgep322.2.3, align 1
  %conv44.i.i.2.3 = zext i8 %145 to i32
  %scevgep325.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %124, i64 0, i64 0, i64 2
  %146 = load i8, i8* %scevgep325.2.3, align 1
  %conv49.i.i.2.3 = zext i8 %146 to i32
  %xor.i62.i.2.3 = xor i32 %conv44.i.i.2.3, %conv49.i.i.2.3
  %conv50.i.i.2.3 = trunc i32 %xor.i62.i.2.3 to i8
  %scevgep329.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %125, i64 0, i64 0, i64 2
  store i8 %conv50.i.i.2.3, i8* %scevgep329.2.3, align 1
  %147 = load i8, i8* %arrayidx56.i.i.3, align 1
  %conv57.i.i.2.3 = zext i8 %147 to i32
  %xor58.i.i.2.3 = xor i32 %conv57.i.i.2.3, 1
  %conv59.i.i.2.3 = trunc i32 %xor58.i.i.2.3 to i8
  %scevgep326.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %124, i64 0, i64 0, i64 2
  %148 = load i8, i8* %scevgep326.2.3, align 1
  %call64.i.i.2.3 = call zeroext i8 @mult(i8 zeroext %conv59.i.i.2.3, i8 zeroext %148) #3
  %scevgep333.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %126, i64 0, i64 0, i64 2
  store i8 %call64.i.i.2.3, i8* %scevgep333.2.3, align 1
  %149 = load i8, i8* %arrayidx70.i.i.3, align 1
  %scevgep330.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %125, i64 0, i64 0, i64 2
  %150 = load i8, i8* %scevgep330.2.3, align 1
  %call75.i.i.2.3 = call zeroext i8 @mult(i8 zeroext %149, i8 zeroext %150) #3
  %scevgep337.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %127, i64 0, i64 0, i64 2
  store i8 %call75.i.i.2.3, i8* %scevgep337.2.3, align 1
  %scevgep334.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %126, i64 0, i64 0, i64 2
  %151 = load i8, i8* %scevgep334.2.3, align 1
  %conv84.i.i.2.3 = zext i8 %151 to i32
  %scevgep338.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %127, i64 0, i64 0, i64 2
  %152 = load i8, i8* %scevgep338.2.3, align 1
  %conv89.i.i.2.3 = zext i8 %152 to i32
  %xor90.i.i.2.3 = xor i32 %conv84.i.i.2.3, %conv89.i.i.2.3
  %conv91.i.i.2.3 = trunc i32 %xor90.i.i.2.3 to i8
  %scevgep341.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %128, i64 0, i64 0, i64 2
  store i8 %conv91.i.i.2.3, i8* %scevgep341.2.3, align 1
  %153 = load i8, i8* %arraydecay5.i, align 1
  %154 = load i8, i8* %x, align 1
  %call111.i.i = call zeroext i8 @mult(i8 zeroext %153, i8 zeroext %154) #3
  store i8 %call111.i.i, i8* %arraydecay6.i, align 1
  %scevgep312.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  %155 = load i8, i8* %scevgep312.1, align 1
  %conv126.i.i.1 = zext i8 %155 to i32
  %156 = load i8, i8* %arraydecay6.i, align 1
  %conv129.i.i.1 = zext i8 %156 to i32
  %xor130.i.i.1 = xor i32 %conv129.i.i.1, %conv126.i.i.1
  %conv131.i.i.1 = trunc i32 %xor130.i.i.1 to i8
  store i8 %conv131.i.i.1, i8* %arraydecay6.i, align 1
  %scevgep312.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 2
  %157 = load i8, i8* %scevgep312.2, align 1
  %conv126.i.i.2 = zext i8 %157 to i32
  %158 = load i8, i8* %arraydecay6.i, align 1
  %conv129.i.i.2 = zext i8 %158 to i32
  %xor130.i.i.2 = xor i32 %conv129.i.i.2, %conv126.i.i.2
  %conv131.i.i.2 = trunc i32 %xor130.i.i.2 to i8
  store i8 %conv131.i.i.2, i8* %arraydecay6.i, align 1
  %scevgep312.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 3
  %159 = load i8, i8* %scevgep312.3, align 1
  %conv126.i.i.3 = zext i8 %159 to i32
  %160 = load i8, i8* %arraydecay6.i, align 1
  %conv129.i.i.3 = zext i8 %160 to i32
  %xor130.i.i.3 = xor i32 %conv129.i.i.3, %conv126.i.i.3
  %conv131.i.i.3 = trunc i32 %xor130.i.i.3 to i8
  store i8 %conv131.i.i.3, i8* %arraydecay6.i, align 1
  %scevgep311 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %161 = bitcast i8* %scevgep311 to [4 x [4 x i8]]*
  %arrayidx108.i.i.1 = getelementptr inbounds i8, i8* %arraydecay5.i, i64 1
  %162 = load i8, i8* %arrayidx108.i.i.1, align 1
  %arrayidx110.i.i.1 = getelementptr inbounds i8, i8* %x, i64 1
  %163 = load i8, i8* %arrayidx110.i.i.1, align 1
  %call111.i.i.1 = call zeroext i8 @mult(i8 zeroext %162, i8 zeroext %163) #3
  %arrayidx113.i.i.1 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 1
  store i8 %call111.i.i.1, i8* %arrayidx113.i.i.1, align 1
  %arrayidx128.i.i.1 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 1
  %scevgep312.1716 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %161, i64 0, i64 0, i64 0
  %164 = load i8, i8* %scevgep312.1716, align 1
  %conv126.i.i.1717 = zext i8 %164 to i32
  %165 = load i8, i8* %arrayidx128.i.i.1, align 1
  %conv129.i.i.1718 = zext i8 %165 to i32
  %xor130.i.i.1719 = xor i32 %conv129.i.i.1718, %conv126.i.i.1717
  %conv131.i.i.1720 = trunc i32 %xor130.i.i.1719 to i8
  store i8 %conv131.i.i.1720, i8* %arrayidx128.i.i.1, align 1
  %scevgep312.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %161, i64 0, i64 0, i64 2
  %166 = load i8, i8* %scevgep312.2.1, align 1
  %conv126.i.i.2.1 = zext i8 %166 to i32
  %167 = load i8, i8* %arrayidx128.i.i.1, align 1
  %conv129.i.i.2.1 = zext i8 %167 to i32
  %xor130.i.i.2.1 = xor i32 %conv129.i.i.2.1, %conv126.i.i.2.1
  %conv131.i.i.2.1 = trunc i32 %xor130.i.i.2.1 to i8
  store i8 %conv131.i.i.2.1, i8* %arrayidx128.i.i.1, align 1
  %scevgep312.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %161, i64 0, i64 0, i64 3
  %168 = load i8, i8* %scevgep312.3.1, align 1
  %conv126.i.i.3.1 = zext i8 %168 to i32
  %169 = load i8, i8* %arrayidx128.i.i.1, align 1
  %conv129.i.i.3.1 = zext i8 %169 to i32
  %xor130.i.i.3.1 = xor i32 %conv129.i.i.3.1, %conv126.i.i.3.1
  %conv131.i.i.3.1 = trunc i32 %xor130.i.i.3.1 to i8
  store i8 %conv131.i.i.3.1, i8* %arrayidx128.i.i.1, align 1
  %scevgep311.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %161, i64 0, i64 1, i64 0
  %170 = bitcast i8* %scevgep311.1 to [4 x [4 x i8]]*
  %arrayidx108.i.i.2 = getelementptr inbounds i8, i8* %arraydecay5.i, i64 2
  %171 = load i8, i8* %arrayidx108.i.i.2, align 1
  %arrayidx110.i.i.2 = getelementptr inbounds i8, i8* %x, i64 2
  %172 = load i8, i8* %arrayidx110.i.i.2, align 1
  %call111.i.i.2 = call zeroext i8 @mult(i8 zeroext %171, i8 zeroext %172) #3
  %arrayidx113.i.i.2 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 2
  store i8 %call111.i.i.2, i8* %arrayidx113.i.i.2, align 1
  %arrayidx128.i.i.2 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 2
  %scevgep312.2725 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %170, i64 0, i64 0, i64 0
  %173 = load i8, i8* %scevgep312.2725, align 1
  %conv126.i.i.2726 = zext i8 %173 to i32
  %174 = load i8, i8* %arrayidx128.i.i.2, align 1
  %conv129.i.i.2727 = zext i8 %174 to i32
  %xor130.i.i.2728 = xor i32 %conv129.i.i.2727, %conv126.i.i.2726
  %conv131.i.i.2729 = trunc i32 %xor130.i.i.2728 to i8
  store i8 %conv131.i.i.2729, i8* %arrayidx128.i.i.2, align 1
  %scevgep312.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %170, i64 0, i64 0, i64 1
  %175 = load i8, i8* %scevgep312.1.2, align 1
  %conv126.i.i.1.2 = zext i8 %175 to i32
  %176 = load i8, i8* %arrayidx128.i.i.2, align 1
  %conv129.i.i.1.2 = zext i8 %176 to i32
  %xor130.i.i.1.2 = xor i32 %conv129.i.i.1.2, %conv126.i.i.1.2
  %conv131.i.i.1.2 = trunc i32 %xor130.i.i.1.2 to i8
  store i8 %conv131.i.i.1.2, i8* %arrayidx128.i.i.2, align 1
  %scevgep312.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %170, i64 0, i64 0, i64 3
  %177 = load i8, i8* %scevgep312.3.2, align 1
  %conv126.i.i.3.2 = zext i8 %177 to i32
  %178 = load i8, i8* %arrayidx128.i.i.2, align 1
  %conv129.i.i.3.2 = zext i8 %178 to i32
  %xor130.i.i.3.2 = xor i32 %conv129.i.i.3.2, %conv126.i.i.3.2
  %conv131.i.i.3.2 = trunc i32 %xor130.i.i.3.2 to i8
  store i8 %conv131.i.i.3.2, i8* %arrayidx128.i.i.2, align 1
  %scevgep311.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %170, i64 0, i64 1, i64 0
  %179 = bitcast i8* %scevgep311.2 to [4 x [4 x i8]]*
  %arrayidx108.i.i.3 = getelementptr inbounds i8, i8* %arraydecay5.i, i64 3
  %180 = load i8, i8* %arrayidx108.i.i.3, align 1
  %arrayidx110.i.i.3 = getelementptr inbounds i8, i8* %x, i64 3
  %181 = load i8, i8* %arrayidx110.i.i.3, align 1
  %call111.i.i.3 = call zeroext i8 @mult(i8 zeroext %180, i8 zeroext %181) #3
  %arrayidx113.i.i.3 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 3
  store i8 %call111.i.i.3, i8* %arrayidx113.i.i.3, align 1
  %arrayidx128.i.i.3 = getelementptr inbounds i8, i8* %arraydecay6.i, i64 3
  %scevgep312.3734 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %179, i64 0, i64 0, i64 0
  %182 = load i8, i8* %scevgep312.3734, align 1
  %conv126.i.i.3735 = zext i8 %182 to i32
  %183 = load i8, i8* %arrayidx128.i.i.3, align 1
  %conv129.i.i.3736 = zext i8 %183 to i32
  %xor130.i.i.3737 = xor i32 %conv129.i.i.3736, %conv126.i.i.3735
  %conv131.i.i.3738 = trunc i32 %xor130.i.i.3737 to i8
  store i8 %conv131.i.i.3738, i8* %arrayidx128.i.i.3, align 1
  %scevgep312.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %179, i64 0, i64 0, i64 1
  %184 = load i8, i8* %scevgep312.1.3, align 1
  %conv126.i.i.1.3 = zext i8 %184 to i32
  %185 = load i8, i8* %arrayidx128.i.i.3, align 1
  %conv129.i.i.1.3 = zext i8 %185 to i32
  %xor130.i.i.1.3 = xor i32 %conv129.i.i.1.3, %conv126.i.i.1.3
  %conv131.i.i.1.3 = trunc i32 %xor130.i.i.1.3 to i8
  store i8 %conv131.i.i.1.3, i8* %arrayidx128.i.i.3, align 1
  %scevgep312.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %179, i64 0, i64 0, i64 2
  %186 = load i8, i8* %scevgep312.2.3, align 1
  %conv126.i.i.2.3 = zext i8 %186 to i32
  %187 = load i8, i8* %arrayidx128.i.i.3, align 1
  %conv129.i.i.2.3 = zext i8 %187 to i32
  %xor130.i.i.2.3 = xor i32 %conv129.i.i.2.3, %conv126.i.i.2.3
  %conv131.i.i.2.3 = trunc i32 %xor130.i.i.2.3 to i8
  store i8 %conv131.i.i.2.3, i8* %arrayidx128.i.i.3, align 1
  %call139.i.i = call zeroext i8 @mult(i8 zeroext %call.i41.i, i8 zeroext %call1.i.i) #3
  %conv140.i.i = zext i8 %call139.i.i to i32
  %scevgep302 = getelementptr [4 x i8], [4 x i8]* %u.i, i64 0, i64 0
  %188 = load i8, i8* %scevgep302, align 1
  %scevgep302.1 = getelementptr [4 x i8], [4 x i8]* %u.i, i64 0, i64 1
  %189 = load i8, i8* %scevgep302.1, align 1
  %conv.i.i172.i.i.1 = zext i8 %189 to i32
  %conv1.i.i173.i.i.1 = zext i8 %188 to i32
  %xor.i.i174.i.i.1 = xor i32 %conv1.i.i173.i.i.1, %conv.i.i172.i.i.1
  %conv2.i.i175.i.i.1 = trunc i32 %xor.i.i174.i.i.1 to i8
  %scevgep302.2 = getelementptr [4 x i8], [4 x i8]* %u.i, i64 0, i64 2
  %190 = load i8, i8* %scevgep302.2, align 1
  %conv.i.i172.i.i.2 = zext i8 %190 to i32
  %conv1.i.i173.i.i.2 = zext i8 %conv2.i.i175.i.i.1 to i32
  %xor.i.i174.i.i.2 = xor i32 %conv1.i.i173.i.i.2, %conv.i.i172.i.i.2
  %conv2.i.i175.i.i.2 = trunc i32 %xor.i.i174.i.i.2 to i8
  %scevgep302.3 = getelementptr [4 x i8], [4 x i8]* %u.i, i64 0, i64 3
  %191 = load i8, i8* %scevgep302.3, align 1
  %conv.i.i172.i.i.3 = zext i8 %191 to i32
  %conv1.i.i173.i.i.3 = zext i8 %conv2.i.i175.i.i.2 to i32
  %xor.i.i174.i.i.3 = xor i32 %conv1.i.i173.i.i.3, %conv.i.i172.i.i.3
  %conv2.i.i175.i.i.3 = trunc i32 %xor.i.i174.i.i.3 to i8
  %conv142.i.i = zext i8 %conv2.i.i175.i.i.3 to i32
  %cmp143.i.i = icmp eq i32 %conv140.i.i, %conv142.i.i
  call void @assert(i1 zeroext %cmp143.i.i) #3
  %scevgep297 = getelementptr [4 x i8], [4 x i8]* %u.i, i64 0, i64 0
  %192 = load i8, i8* %scevgep297, align 1
  %call.i71.i = call zeroext i8 @exp4(i8 zeroext %192) #3
  %scevgep298 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 0
  store i8 %call.i71.i, i8* %scevgep298, align 1
  %scevgep297.1 = getelementptr [4 x i8], [4 x i8]* %u.i, i64 0, i64 1
  %193 = load i8, i8* %scevgep297.1, align 1
  %call.i71.i.1 = call zeroext i8 @exp4(i8 zeroext %193) #3
  %scevgep298.1 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 1
  store i8 %call.i71.i.1, i8* %scevgep298.1, align 1
  %scevgep297.2 = getelementptr [4 x i8], [4 x i8]* %u.i, i64 0, i64 2
  %194 = load i8, i8* %scevgep297.2, align 1
  %call.i71.i.2 = call zeroext i8 @exp4(i8 zeroext %194) #3
  %scevgep298.2 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 2
  store i8 %call.i71.i.2, i8* %scevgep298.2, align 1
  %scevgep297.3 = getelementptr [4 x i8], [4 x i8]* %u.i, i64 0, i64 3
  %195 = load i8, i8* %scevgep297.3, align 1
  %call.i71.i.3 = call zeroext i8 @exp4(i8 zeroext %195) #3
  %scevgep298.3 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 3
  store i8 %call.i71.i.3, i8* %scevgep298.3, align 1
  %arraydecay9.i = getelementptr inbounds [4 x i8], [4 x i8]* %w.i, i64 0, i64 0
  %call.i92.i = call zeroext i8 (...) @rand() #3
  %conv.i93.i = zext i8 %call.i92.i to i32
  %scevgep293 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 0
  %196 = load i8, i8* %scevgep293, align 1
  %scevgep293.1 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 1
  %197 = load i8, i8* %scevgep293.1, align 1
  %conv.i.i.i99.i.1 = zext i8 %197 to i32
  %conv1.i.i.i100.i.1 = zext i8 %196 to i32
  %xor.i.i.i101.i.1 = xor i32 %conv1.i.i.i100.i.1, %conv.i.i.i99.i.1
  %conv2.i.i.i102.i.1 = trunc i32 %xor.i.i.i101.i.1 to i8
  %scevgep293.2 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 2
  %198 = load i8, i8* %scevgep293.2, align 1
  %conv.i.i.i99.i.2 = zext i8 %198 to i32
  %conv1.i.i.i100.i.2 = zext i8 %conv2.i.i.i102.i.1 to i32
  %xor.i.i.i101.i.2 = xor i32 %conv1.i.i.i100.i.2, %conv.i.i.i99.i.2
  %conv2.i.i.i102.i.2 = trunc i32 %xor.i.i.i101.i.2 to i8
  %scevgep293.3 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 3
  %199 = load i8, i8* %scevgep293.3, align 1
  %conv.i.i.i99.i.3 = zext i8 %199 to i32
  %conv1.i.i.i100.i.3 = zext i8 %conv2.i.i.i102.i.2 to i32
  %xor.i.i.i101.i.3 = xor i32 %conv1.i.i.i100.i.3, %conv.i.i.i99.i.3
  %conv2.i.i.i102.i.3 = trunc i32 %xor.i.i.i101.i.3 to i8
  %conv2.i105.i = zext i8 %conv2.i.i.i102.i.3 to i32
  %cmp.i106.i = icmp eq i32 %conv.i93.i, %conv2.i105.i
  call void @assume(i1 zeroext %cmp.i106.i) #3
  %call7.i111.i = call zeroext i8 (...) @rand() #3
  %conv8.i112.i = zext i8 %call7.i111.i to i32
  %200 = load i8, i8* %arraydecay9.i, align 1
  %conv9.i113.i = zext i8 %200 to i32
  %xor.i114.i = xor i32 %conv9.i113.i, %conv8.i112.i
  %conv10.i115.i = trunc i32 %xor.i114.i to i8
  store i8 %conv10.i115.i, i8* %arraydecay9.i, align 1
  %conv11.i116.i = zext i8 %call7.i111.i to i32
  %scevgep289 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 1
  %201 = load i8, i8* %scevgep289, align 1
  %conv13.i119.i = zext i8 %201 to i32
  %xor14.i120.i = xor i32 %conv13.i119.i, %conv11.i116.i
  %conv15.i121.i = trunc i32 %xor14.i120.i to i8
  store i8 %conv15.i121.i, i8* %scevgep289, align 1
  %call7.i111.i.1 = call zeroext i8 (...) @rand() #3
  %conv8.i112.i.1 = zext i8 %call7.i111.i.1 to i32
  %202 = load i8, i8* %arraydecay9.i, align 1
  %conv9.i113.i.1 = zext i8 %202 to i32
  %xor.i114.i.1 = xor i32 %conv9.i113.i.1, %conv8.i112.i.1
  %conv10.i115.i.1 = trunc i32 %xor.i114.i.1 to i8
  store i8 %conv10.i115.i.1, i8* %arraydecay9.i, align 1
  %conv11.i116.i.1 = zext i8 %call7.i111.i.1 to i32
  %scevgep289.1 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 2
  %203 = load i8, i8* %scevgep289.1, align 1
  %conv13.i119.i.1 = zext i8 %203 to i32
  %xor14.i120.i.1 = xor i32 %conv13.i119.i.1, %conv11.i116.i.1
  %conv15.i121.i.1 = trunc i32 %xor14.i120.i.1 to i8
  store i8 %conv15.i121.i.1, i8* %scevgep289.1, align 1
  %call7.i111.i.2 = call zeroext i8 (...) @rand() #3
  %conv8.i112.i.2 = zext i8 %call7.i111.i.2 to i32
  %204 = load i8, i8* %arraydecay9.i, align 1
  %conv9.i113.i.2 = zext i8 %204 to i32
  %xor.i114.i.2 = xor i32 %conv9.i113.i.2, %conv8.i112.i.2
  %conv10.i115.i.2 = trunc i32 %xor.i114.i.2 to i8
  store i8 %conv10.i115.i.2, i8* %arraydecay9.i, align 1
  %conv11.i116.i.2 = zext i8 %call7.i111.i.2 to i32
  %scevgep289.2 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 3
  %205 = load i8, i8* %scevgep289.2, align 1
  %conv13.i119.i.2 = zext i8 %205 to i32
  %xor14.i120.i.2 = xor i32 %conv13.i119.i.2, %conv11.i116.i.2
  %conv15.i121.i.2 = trunc i32 %xor14.i120.i.2 to i8
  store i8 %conv15.i121.i.2, i8* %scevgep289.2, align 1
  %conv16.i124.i = zext i8 %call.i92.i to i32
  %scevgep285 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 0
  %206 = load i8, i8* %scevgep285, align 1
  %scevgep285.1 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 1
  %207 = load i8, i8* %scevgep285.1, align 1
  %conv.i.i31.i131.i.1 = zext i8 %207 to i32
  %conv1.i.i32.i132.i.1 = zext i8 %206 to i32
  %xor.i.i33.i133.i.1 = xor i32 %conv1.i.i32.i132.i.1, %conv.i.i31.i131.i.1
  %conv2.i.i34.i134.i.1 = trunc i32 %xor.i.i33.i133.i.1 to i8
  %scevgep285.2 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 2
  %208 = load i8, i8* %scevgep285.2, align 1
  %conv.i.i31.i131.i.2 = zext i8 %208 to i32
  %conv1.i.i32.i132.i.2 = zext i8 %conv2.i.i34.i134.i.1 to i32
  %xor.i.i33.i133.i.2 = xor i32 %conv1.i.i32.i132.i.2, %conv.i.i31.i131.i.2
  %conv2.i.i34.i134.i.2 = trunc i32 %xor.i.i33.i133.i.2 to i8
  %scevgep285.3 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 3
  %209 = load i8, i8* %scevgep285.3, align 1
  %conv.i.i31.i131.i.3 = zext i8 %209 to i32
  %conv1.i.i32.i132.i.3 = zext i8 %conv2.i.i34.i134.i.2 to i32
  %xor.i.i33.i133.i.3 = xor i32 %conv1.i.i32.i132.i.3, %conv.i.i31.i131.i.3
  %conv2.i.i34.i134.i.3 = trunc i32 %xor.i.i33.i133.i.3 to i8
  %conv18.i137.i = zext i8 %conv2.i.i34.i134.i.3 to i32
  %cmp19.i138.i = icmp eq i32 %conv16.i124.i, %conv18.i137.i
  call void @assert(i1 zeroext %cmp19.i138.i) #3
  %arraydecay10.i = getelementptr inbounds [4 x i8], [4 x i8]* %u.i, i64 0, i64 0
  %arraydecay11.i = getelementptr inbounds [4 x i8], [4 x i8]* %w.i, i64 0, i64 0
  %arraydecay12.i = getelementptr inbounds [4 x i8], [4 x i8]* %v.i, i64 0, i64 0
  %call.i171.i = call zeroext i8 (...) @rand() #3
  %call1.i172.i = call zeroext i8 (...) @rand() #3
  %conv.i173.i = zext i8 %call.i171.i to i32
  %scevgep281 = getelementptr [4 x i8], [4 x i8]* %u.i, i64 0, i64 0
  %210 = load i8, i8* %scevgep281, align 1
  %scevgep281.1 = getelementptr [4 x i8], [4 x i8]* %u.i, i64 0, i64 1
  %211 = load i8, i8* %scevgep281.1, align 1
  %conv.i.i.i179.i.1 = zext i8 %211 to i32
  %conv1.i.i.i180.i.1 = zext i8 %210 to i32
  %xor.i.i.i181.i.1 = xor i32 %conv1.i.i.i180.i.1, %conv.i.i.i179.i.1
  %conv2.i.i.i182.i.1 = trunc i32 %xor.i.i.i181.i.1 to i8
  %scevgep281.2 = getelementptr [4 x i8], [4 x i8]* %u.i, i64 0, i64 2
  %212 = load i8, i8* %scevgep281.2, align 1
  %conv.i.i.i179.i.2 = zext i8 %212 to i32
  %conv1.i.i.i180.i.2 = zext i8 %conv2.i.i.i182.i.1 to i32
  %xor.i.i.i181.i.2 = xor i32 %conv1.i.i.i180.i.2, %conv.i.i.i179.i.2
  %conv2.i.i.i182.i.2 = trunc i32 %xor.i.i.i181.i.2 to i8
  %scevgep281.3 = getelementptr [4 x i8], [4 x i8]* %u.i, i64 0, i64 3
  %213 = load i8, i8* %scevgep281.3, align 1
  %conv.i.i.i179.i.3 = zext i8 %213 to i32
  %conv1.i.i.i180.i.3 = zext i8 %conv2.i.i.i182.i.2 to i32
  %xor.i.i.i181.i.3 = xor i32 %conv1.i.i.i180.i.3, %conv.i.i.i179.i.3
  %conv2.i.i.i182.i.3 = trunc i32 %xor.i.i.i181.i.3 to i8
  %conv3.i185.i = zext i8 %conv2.i.i.i182.i.3 to i32
  %cmp.i186.i = icmp eq i32 %conv.i173.i, %conv3.i185.i
  call void @assume(i1 zeroext %cmp.i186.i) #3
  %conv5.i187.i = zext i8 %call1.i172.i to i32
  %scevgep277 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 0
  %214 = load i8, i8* %scevgep277, align 1
  %scevgep277.1 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 1
  %215 = load i8, i8* %scevgep277.1, align 1
  %conv.i.i155.i194.i.1 = zext i8 %215 to i32
  %conv1.i.i156.i195.i.1 = zext i8 %214 to i32
  %xor.i.i157.i196.i.1 = xor i32 %conv1.i.i156.i195.i.1, %conv.i.i155.i194.i.1
  %conv2.i.i158.i197.i.1 = trunc i32 %xor.i.i157.i196.i.1 to i8
  %scevgep277.2 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 2
  %216 = load i8, i8* %scevgep277.2, align 1
  %conv.i.i155.i194.i.2 = zext i8 %216 to i32
  %conv1.i.i156.i195.i.2 = zext i8 %conv2.i.i158.i197.i.1 to i32
  %xor.i.i157.i196.i.2 = xor i32 %conv1.i.i156.i195.i.2, %conv.i.i155.i194.i.2
  %conv2.i.i158.i197.i.2 = trunc i32 %xor.i.i157.i196.i.2 to i8
  %scevgep277.3 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 3
  %217 = load i8, i8* %scevgep277.3, align 1
  %conv.i.i155.i194.i.3 = zext i8 %217 to i32
  %conv1.i.i156.i195.i.3 = zext i8 %conv2.i.i158.i197.i.2 to i32
  %xor.i.i157.i196.i.3 = xor i32 %conv1.i.i156.i195.i.3, %conv.i.i155.i194.i.3
  %conv2.i.i158.i197.i.3 = trunc i32 %xor.i.i157.i196.i.3 to i8
  %conv7.i200.i = zext i8 %conv2.i.i158.i197.i.3 to i32
  %cmp8.i201.i = icmp eq i32 %conv5.i187.i, %conv7.i200.i
  call void @assume(i1 zeroext %cmp8.i201.i) #3
  %call16.i209.i = call zeroext i8 (...) @rand() #3
  %scevgep267 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  store i8 %call16.i209.i, i8* %scevgep267, align 1
  %scevgep268 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %218 = load i8, i8* %scevgep268, align 1
  %scevgep269 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  store i8 %218, i8* %scevgep269, align 1
  %call16.i209.i.1837 = call zeroext i8 (...) @rand() #3
  %scevgep267.1838 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  store i8 %call16.i209.i.1837, i8* %scevgep267.1838, align 1
  %scevgep268.1839 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %219 = load i8, i8* %scevgep268.1839, align 1
  %scevgep269.1840 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 2, i64 0
  store i8 %219, i8* %scevgep269.1840, align 1
  %call16.i209.i.2842 = call zeroext i8 (...) @rand() #3
  %scevgep267.2843 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  store i8 %call16.i209.i.2842, i8* %scevgep267.2843, align 1
  %scevgep268.2844 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  %220 = load i8, i8* %scevgep268.2844, align 1
  %scevgep269.2845 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 3, i64 0
  store i8 %220, i8* %scevgep269.2845, align 1
  %scevgep264 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 1, i64 1
  %221 = bitcast i8* %scevgep264 to [4 x [4 x i8]]*
  %call16.i209.i.1 = call zeroext i8 (...) @rand() #3
  %scevgep267.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %221, i64 0, i64 0, i64 1
  store i8 %call16.i209.i.1, i8* %scevgep267.1, align 1
  %scevgep268.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %221, i64 0, i64 0, i64 1
  %222 = load i8, i8* %scevgep268.1, align 1
  %scevgep269.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %221, i64 0, i64 1, i64 0
  store i8 %222, i8* %scevgep269.1, align 1
  %call16.i209.i.1.1 = call zeroext i8 (...) @rand() #3
  %scevgep267.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %221, i64 0, i64 0, i64 2
  store i8 %call16.i209.i.1.1, i8* %scevgep267.1.1, align 1
  %scevgep268.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %221, i64 0, i64 0, i64 2
  %223 = load i8, i8* %scevgep268.1.1, align 1
  %scevgep269.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %221, i64 0, i64 2, i64 0
  store i8 %223, i8* %scevgep269.1.1, align 1
  %scevgep264.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %221, i64 0, i64 1, i64 1
  %224 = bitcast i8* %scevgep264.1 to [4 x [4 x i8]]*
  %call16.i209.i.2 = call zeroext i8 (...) @rand() #3
  %scevgep267.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %224, i64 0, i64 0, i64 1
  store i8 %call16.i209.i.2, i8* %scevgep267.2, align 1
  %scevgep268.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %224, i64 0, i64 0, i64 1
  %225 = load i8, i8* %scevgep268.2, align 1
  %scevgep269.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %224, i64 0, i64 1, i64 0
  store i8 %225, i8* %scevgep269.2, align 1
  %scevgep240.1 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 1
  %226 = load i8, i8* %scevgep240.1, align 1
  %conv44.i236.i.1 = zext i8 %226 to i32
  %scevgep243.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %227 = load i8, i8* %scevgep243.1, align 1
  %conv49.i241.i.1 = zext i8 %227 to i32
  %xor.i242.i.1 = xor i32 %conv44.i236.i.1, %conv49.i241.i.1
  %conv50.i243.i.1 = trunc i32 %xor.i242.i.1 to i8
  %scevgep247.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  store i8 %conv50.i243.i.1, i8* %scevgep247.1, align 1
  %228 = load i8, i8* %arraydecay10.i, align 1
  %conv57.i250.i.1 = zext i8 %228 to i32
  %xor58.i251.i.1 = xor i32 %conv57.i250.i.1, 1
  %conv59.i252.i.1 = trunc i32 %xor58.i251.i.1 to i8
  %scevgep244.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %229 = load i8, i8* %scevgep244.1, align 1
  %call64.i257.i.1 = call zeroext i8 @mult(i8 zeroext %conv59.i252.i.1, i8 zeroext %229) #3
  %scevgep251.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  store i8 %call64.i257.i.1, i8* %scevgep251.1, align 1
  %230 = load i8, i8* %arraydecay10.i, align 1
  %scevgep248.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  %231 = load i8, i8* %scevgep248.1, align 1
  %call75.i268.i.1 = call zeroext i8 @mult(i8 zeroext %230, i8 zeroext %231) #3
  %scevgep255.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  store i8 %call75.i268.i.1, i8* %scevgep255.1, align 1
  %scevgep252.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  %232 = load i8, i8* %scevgep252.1, align 1
  %conv84.i277.i.1 = zext i8 %232 to i32
  %scevgep256.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  %233 = load i8, i8* %scevgep256.1, align 1
  %conv89.i282.i.1 = zext i8 %233 to i32
  %xor90.i283.i.1 = xor i32 %conv84.i277.i.1, %conv89.i282.i.1
  %conv91.i284.i.1 = trunc i32 %xor90.i283.i.1 to i8
  %scevgep259.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  store i8 %conv91.i284.i.1, i8* %scevgep259.1, align 1
  %scevgep240.2 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 2
  %234 = load i8, i8* %scevgep240.2, align 1
  %conv44.i236.i.2 = zext i8 %234 to i32
  %scevgep243.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %235 = load i8, i8* %scevgep243.2, align 1
  %conv49.i241.i.2 = zext i8 %235 to i32
  %xor.i242.i.2 = xor i32 %conv44.i236.i.2, %conv49.i241.i.2
  %conv50.i243.i.2 = trunc i32 %xor.i242.i.2 to i8
  %scevgep247.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 2
  store i8 %conv50.i243.i.2, i8* %scevgep247.2, align 1
  %236 = load i8, i8* %arraydecay10.i, align 1
  %conv57.i250.i.2 = zext i8 %236 to i32
  %xor58.i251.i.2 = xor i32 %conv57.i250.i.2, 1
  %conv59.i252.i.2 = trunc i32 %xor58.i251.i.2 to i8
  %scevgep244.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %237 = load i8, i8* %scevgep244.2, align 1
  %call64.i257.i.2 = call zeroext i8 @mult(i8 zeroext %conv59.i252.i.2, i8 zeroext %237) #3
  %scevgep251.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 2
  store i8 %call64.i257.i.2, i8* %scevgep251.2, align 1
  %238 = load i8, i8* %arraydecay10.i, align 1
  %scevgep248.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 2
  %239 = load i8, i8* %scevgep248.2, align 1
  %call75.i268.i.2 = call zeroext i8 @mult(i8 zeroext %238, i8 zeroext %239) #3
  %scevgep255.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 2
  store i8 %call75.i268.i.2, i8* %scevgep255.2, align 1
  %scevgep252.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 2
  %240 = load i8, i8* %scevgep252.2, align 1
  %conv84.i277.i.2 = zext i8 %240 to i32
  %scevgep256.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 2
  %241 = load i8, i8* %scevgep256.2, align 1
  %conv89.i282.i.2 = zext i8 %241 to i32
  %xor90.i283.i.2 = xor i32 %conv84.i277.i.2, %conv89.i282.i.2
  %conv91.i284.i.2 = trunc i32 %xor90.i283.i.2 to i8
  %scevgep259.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 2
  store i8 %conv91.i284.i.2, i8* %scevgep259.2, align 1
  %scevgep240.3 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 3
  %242 = load i8, i8* %scevgep240.3, align 1
  %conv44.i236.i.3 = zext i8 %242 to i32
  %scevgep243.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  %243 = load i8, i8* %scevgep243.3, align 1
  %conv49.i241.i.3 = zext i8 %243 to i32
  %xor.i242.i.3 = xor i32 %conv44.i236.i.3, %conv49.i241.i.3
  %conv50.i243.i.3 = trunc i32 %xor.i242.i.3 to i8
  %scevgep247.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 3
  store i8 %conv50.i243.i.3, i8* %scevgep247.3, align 1
  %244 = load i8, i8* %arraydecay10.i, align 1
  %conv57.i250.i.3 = zext i8 %244 to i32
  %xor58.i251.i.3 = xor i32 %conv57.i250.i.3, 1
  %conv59.i252.i.3 = trunc i32 %xor58.i251.i.3 to i8
  %scevgep244.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  %245 = load i8, i8* %scevgep244.3, align 1
  %call64.i257.i.3 = call zeroext i8 @mult(i8 zeroext %conv59.i252.i.3, i8 zeroext %245) #3
  %scevgep251.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 3
  store i8 %call64.i257.i.3, i8* %scevgep251.3, align 1
  %246 = load i8, i8* %arraydecay10.i, align 1
  %scevgep248.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 3
  %247 = load i8, i8* %scevgep248.3, align 1
  %call75.i268.i.3 = call zeroext i8 @mult(i8 zeroext %246, i8 zeroext %247) #3
  %scevgep255.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 3
  store i8 %call75.i268.i.3, i8* %scevgep255.3, align 1
  %scevgep252.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 3
  %248 = load i8, i8* %scevgep252.3, align 1
  %conv84.i277.i.3 = zext i8 %248 to i32
  %scevgep256.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 3
  %249 = load i8, i8* %scevgep256.3, align 1
  %conv89.i282.i.3 = zext i8 %249 to i32
  %xor90.i283.i.3 = xor i32 %conv84.i277.i.3, %conv89.i282.i.3
  %conv91.i284.i.3 = trunc i32 %xor90.i283.i.3 to i8
  %scevgep259.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 3
  store i8 %conv91.i284.i.3, i8* %scevgep259.3, align 1
  %scevgep242 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %250 = bitcast i8* %scevgep242 to [4 x [4 x i8]]*
  %scevgep246 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 1, i64 0
  %251 = bitcast i8* %scevgep246 to [4 x [4 x i8]]*
  %scevgep250 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 1, i64 0
  %252 = bitcast i8* %scevgep250 to [4 x [4 x i8]]*
  %scevgep254 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 1, i64 0
  %253 = bitcast i8* %scevgep254 to [4 x [4 x i8]]*
  %scevgep258 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %254 = bitcast i8* %scevgep258 to [4 x [4 x i8]]*
  %arrayidx56.i249.i.1 = getelementptr inbounds i8, i8* %arraydecay10.i, i64 1
  %arrayidx70.i263.i.1 = getelementptr inbounds i8, i8* %arraydecay10.i, i64 1
  %scevgep240.1635 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 0
  %255 = load i8, i8* %scevgep240.1635, align 1
  %conv44.i236.i.1636 = zext i8 %255 to i32
  %scevgep243.1637 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %250, i64 0, i64 0, i64 0
  %256 = load i8, i8* %scevgep243.1637, align 1
  %conv49.i241.i.1638 = zext i8 %256 to i32
  %xor.i242.i.1639 = xor i32 %conv44.i236.i.1636, %conv49.i241.i.1638
  %conv50.i243.i.1640 = trunc i32 %xor.i242.i.1639 to i8
  %scevgep247.1641 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %251, i64 0, i64 0, i64 0
  store i8 %conv50.i243.i.1640, i8* %scevgep247.1641, align 1
  %257 = load i8, i8* %arrayidx56.i249.i.1, align 1
  %conv57.i250.i.1642 = zext i8 %257 to i32
  %xor58.i251.i.1643 = xor i32 %conv57.i250.i.1642, 1
  %conv59.i252.i.1644 = trunc i32 %xor58.i251.i.1643 to i8
  %scevgep244.1645 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %250, i64 0, i64 0, i64 0
  %258 = load i8, i8* %scevgep244.1645, align 1
  %call64.i257.i.1646 = call zeroext i8 @mult(i8 zeroext %conv59.i252.i.1644, i8 zeroext %258) #3
  %scevgep251.1647 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %252, i64 0, i64 0, i64 0
  store i8 %call64.i257.i.1646, i8* %scevgep251.1647, align 1
  %259 = load i8, i8* %arrayidx70.i263.i.1, align 1
  %scevgep248.1648 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %251, i64 0, i64 0, i64 0
  %260 = load i8, i8* %scevgep248.1648, align 1
  %call75.i268.i.1649 = call zeroext i8 @mult(i8 zeroext %259, i8 zeroext %260) #3
  %scevgep255.1650 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %253, i64 0, i64 0, i64 0
  store i8 %call75.i268.i.1649, i8* %scevgep255.1650, align 1
  %scevgep252.1651 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %252, i64 0, i64 0, i64 0
  %261 = load i8, i8* %scevgep252.1651, align 1
  %conv84.i277.i.1652 = zext i8 %261 to i32
  %scevgep256.1653 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %253, i64 0, i64 0, i64 0
  %262 = load i8, i8* %scevgep256.1653, align 1
  %conv89.i282.i.1654 = zext i8 %262 to i32
  %xor90.i283.i.1655 = xor i32 %conv84.i277.i.1652, %conv89.i282.i.1654
  %conv91.i284.i.1656 = trunc i32 %xor90.i283.i.1655 to i8
  %scevgep259.1657 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %254, i64 0, i64 0, i64 0
  store i8 %conv91.i284.i.1656, i8* %scevgep259.1657, align 1
  %scevgep240.2.1 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 2
  %263 = load i8, i8* %scevgep240.2.1, align 1
  %conv44.i236.i.2.1 = zext i8 %263 to i32
  %scevgep243.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %250, i64 0, i64 0, i64 2
  %264 = load i8, i8* %scevgep243.2.1, align 1
  %conv49.i241.i.2.1 = zext i8 %264 to i32
  %xor.i242.i.2.1 = xor i32 %conv44.i236.i.2.1, %conv49.i241.i.2.1
  %conv50.i243.i.2.1 = trunc i32 %xor.i242.i.2.1 to i8
  %scevgep247.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %251, i64 0, i64 0, i64 2
  store i8 %conv50.i243.i.2.1, i8* %scevgep247.2.1, align 1
  %265 = load i8, i8* %arrayidx56.i249.i.1, align 1
  %conv57.i250.i.2.1 = zext i8 %265 to i32
  %xor58.i251.i.2.1 = xor i32 %conv57.i250.i.2.1, 1
  %conv59.i252.i.2.1 = trunc i32 %xor58.i251.i.2.1 to i8
  %scevgep244.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %250, i64 0, i64 0, i64 2
  %266 = load i8, i8* %scevgep244.2.1, align 1
  %call64.i257.i.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i252.i.2.1, i8 zeroext %266) #3
  %scevgep251.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %252, i64 0, i64 0, i64 2
  store i8 %call64.i257.i.2.1, i8* %scevgep251.2.1, align 1
  %267 = load i8, i8* %arrayidx70.i263.i.1, align 1
  %scevgep248.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %251, i64 0, i64 0, i64 2
  %268 = load i8, i8* %scevgep248.2.1, align 1
  %call75.i268.i.2.1 = call zeroext i8 @mult(i8 zeroext %267, i8 zeroext %268) #3
  %scevgep255.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %253, i64 0, i64 0, i64 2
  store i8 %call75.i268.i.2.1, i8* %scevgep255.2.1, align 1
  %scevgep252.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %252, i64 0, i64 0, i64 2
  %269 = load i8, i8* %scevgep252.2.1, align 1
  %conv84.i277.i.2.1 = zext i8 %269 to i32
  %scevgep256.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %253, i64 0, i64 0, i64 2
  %270 = load i8, i8* %scevgep256.2.1, align 1
  %conv89.i282.i.2.1 = zext i8 %270 to i32
  %xor90.i283.i.2.1 = xor i32 %conv84.i277.i.2.1, %conv89.i282.i.2.1
  %conv91.i284.i.2.1 = trunc i32 %xor90.i283.i.2.1 to i8
  %scevgep259.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %254, i64 0, i64 0, i64 2
  store i8 %conv91.i284.i.2.1, i8* %scevgep259.2.1, align 1
  %scevgep240.3.1 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 3
  %271 = load i8, i8* %scevgep240.3.1, align 1
  %conv44.i236.i.3.1 = zext i8 %271 to i32
  %scevgep243.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %250, i64 0, i64 0, i64 3
  %272 = load i8, i8* %scevgep243.3.1, align 1
  %conv49.i241.i.3.1 = zext i8 %272 to i32
  %xor.i242.i.3.1 = xor i32 %conv44.i236.i.3.1, %conv49.i241.i.3.1
  %conv50.i243.i.3.1 = trunc i32 %xor.i242.i.3.1 to i8
  %scevgep247.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %251, i64 0, i64 0, i64 3
  store i8 %conv50.i243.i.3.1, i8* %scevgep247.3.1, align 1
  %273 = load i8, i8* %arrayidx56.i249.i.1, align 1
  %conv57.i250.i.3.1 = zext i8 %273 to i32
  %xor58.i251.i.3.1 = xor i32 %conv57.i250.i.3.1, 1
  %conv59.i252.i.3.1 = trunc i32 %xor58.i251.i.3.1 to i8
  %scevgep244.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %250, i64 0, i64 0, i64 3
  %274 = load i8, i8* %scevgep244.3.1, align 1
  %call64.i257.i.3.1 = call zeroext i8 @mult(i8 zeroext %conv59.i252.i.3.1, i8 zeroext %274) #3
  %scevgep251.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %252, i64 0, i64 0, i64 3
  store i8 %call64.i257.i.3.1, i8* %scevgep251.3.1, align 1
  %275 = load i8, i8* %arrayidx70.i263.i.1, align 1
  %scevgep248.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %251, i64 0, i64 0, i64 3
  %276 = load i8, i8* %scevgep248.3.1, align 1
  %call75.i268.i.3.1 = call zeroext i8 @mult(i8 zeroext %275, i8 zeroext %276) #3
  %scevgep255.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %253, i64 0, i64 0, i64 3
  store i8 %call75.i268.i.3.1, i8* %scevgep255.3.1, align 1
  %scevgep252.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %252, i64 0, i64 0, i64 3
  %277 = load i8, i8* %scevgep252.3.1, align 1
  %conv84.i277.i.3.1 = zext i8 %277 to i32
  %scevgep256.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %253, i64 0, i64 0, i64 3
  %278 = load i8, i8* %scevgep256.3.1, align 1
  %conv89.i282.i.3.1 = zext i8 %278 to i32
  %xor90.i283.i.3.1 = xor i32 %conv84.i277.i.3.1, %conv89.i282.i.3.1
  %conv91.i284.i.3.1 = trunc i32 %xor90.i283.i.3.1 to i8
  %scevgep259.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %254, i64 0, i64 0, i64 3
  store i8 %conv91.i284.i.3.1, i8* %scevgep259.3.1, align 1
  %scevgep242.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %250, i64 0, i64 1, i64 0
  %279 = bitcast i8* %scevgep242.1 to [4 x [4 x i8]]*
  %scevgep246.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %251, i64 0, i64 1, i64 0
  %280 = bitcast i8* %scevgep246.1 to [4 x [4 x i8]]*
  %scevgep250.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %252, i64 0, i64 1, i64 0
  %281 = bitcast i8* %scevgep250.1 to [4 x [4 x i8]]*
  %scevgep254.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %253, i64 0, i64 1, i64 0
  %282 = bitcast i8* %scevgep254.1 to [4 x [4 x i8]]*
  %scevgep258.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %254, i64 0, i64 1, i64 0
  %283 = bitcast i8* %scevgep258.1 to [4 x [4 x i8]]*
  %arrayidx56.i249.i.2 = getelementptr inbounds i8, i8* %arraydecay10.i, i64 2
  %arrayidx70.i263.i.2 = getelementptr inbounds i8, i8* %arraydecay10.i, i64 2
  %scevgep240.2662 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 0
  %284 = load i8, i8* %scevgep240.2662, align 1
  %conv44.i236.i.2663 = zext i8 %284 to i32
  %scevgep243.2664 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %279, i64 0, i64 0, i64 0
  %285 = load i8, i8* %scevgep243.2664, align 1
  %conv49.i241.i.2665 = zext i8 %285 to i32
  %xor.i242.i.2666 = xor i32 %conv44.i236.i.2663, %conv49.i241.i.2665
  %conv50.i243.i.2667 = trunc i32 %xor.i242.i.2666 to i8
  %scevgep247.2668 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %280, i64 0, i64 0, i64 0
  store i8 %conv50.i243.i.2667, i8* %scevgep247.2668, align 1
  %286 = load i8, i8* %arrayidx56.i249.i.2, align 1
  %conv57.i250.i.2669 = zext i8 %286 to i32
  %xor58.i251.i.2670 = xor i32 %conv57.i250.i.2669, 1
  %conv59.i252.i.2671 = trunc i32 %xor58.i251.i.2670 to i8
  %scevgep244.2672 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %279, i64 0, i64 0, i64 0
  %287 = load i8, i8* %scevgep244.2672, align 1
  %call64.i257.i.2673 = call zeroext i8 @mult(i8 zeroext %conv59.i252.i.2671, i8 zeroext %287) #3
  %scevgep251.2674 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %281, i64 0, i64 0, i64 0
  store i8 %call64.i257.i.2673, i8* %scevgep251.2674, align 1
  %288 = load i8, i8* %arrayidx70.i263.i.2, align 1
  %scevgep248.2675 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %280, i64 0, i64 0, i64 0
  %289 = load i8, i8* %scevgep248.2675, align 1
  %call75.i268.i.2676 = call zeroext i8 @mult(i8 zeroext %288, i8 zeroext %289) #3
  %scevgep255.2677 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %282, i64 0, i64 0, i64 0
  store i8 %call75.i268.i.2676, i8* %scevgep255.2677, align 1
  %scevgep252.2678 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %281, i64 0, i64 0, i64 0
  %290 = load i8, i8* %scevgep252.2678, align 1
  %conv84.i277.i.2679 = zext i8 %290 to i32
  %scevgep256.2680 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %282, i64 0, i64 0, i64 0
  %291 = load i8, i8* %scevgep256.2680, align 1
  %conv89.i282.i.2681 = zext i8 %291 to i32
  %xor90.i283.i.2682 = xor i32 %conv84.i277.i.2679, %conv89.i282.i.2681
  %conv91.i284.i.2683 = trunc i32 %xor90.i283.i.2682 to i8
  %scevgep259.2684 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %283, i64 0, i64 0, i64 0
  store i8 %conv91.i284.i.2683, i8* %scevgep259.2684, align 1
  %scevgep240.1.2 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 1
  %292 = load i8, i8* %scevgep240.1.2, align 1
  %conv44.i236.i.1.2 = zext i8 %292 to i32
  %scevgep243.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %279, i64 0, i64 0, i64 1
  %293 = load i8, i8* %scevgep243.1.2, align 1
  %conv49.i241.i.1.2 = zext i8 %293 to i32
  %xor.i242.i.1.2 = xor i32 %conv44.i236.i.1.2, %conv49.i241.i.1.2
  %conv50.i243.i.1.2 = trunc i32 %xor.i242.i.1.2 to i8
  %scevgep247.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %280, i64 0, i64 0, i64 1
  store i8 %conv50.i243.i.1.2, i8* %scevgep247.1.2, align 1
  %294 = load i8, i8* %arrayidx56.i249.i.2, align 1
  %conv57.i250.i.1.2 = zext i8 %294 to i32
  %xor58.i251.i.1.2 = xor i32 %conv57.i250.i.1.2, 1
  %conv59.i252.i.1.2 = trunc i32 %xor58.i251.i.1.2 to i8
  %scevgep244.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %279, i64 0, i64 0, i64 1
  %295 = load i8, i8* %scevgep244.1.2, align 1
  %call64.i257.i.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i252.i.1.2, i8 zeroext %295) #3
  %scevgep251.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %281, i64 0, i64 0, i64 1
  store i8 %call64.i257.i.1.2, i8* %scevgep251.1.2, align 1
  %296 = load i8, i8* %arrayidx70.i263.i.2, align 1
  %scevgep248.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %280, i64 0, i64 0, i64 1
  %297 = load i8, i8* %scevgep248.1.2, align 1
  %call75.i268.i.1.2 = call zeroext i8 @mult(i8 zeroext %296, i8 zeroext %297) #3
  %scevgep255.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %282, i64 0, i64 0, i64 1
  store i8 %call75.i268.i.1.2, i8* %scevgep255.1.2, align 1
  %scevgep252.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %281, i64 0, i64 0, i64 1
  %298 = load i8, i8* %scevgep252.1.2, align 1
  %conv84.i277.i.1.2 = zext i8 %298 to i32
  %scevgep256.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %282, i64 0, i64 0, i64 1
  %299 = load i8, i8* %scevgep256.1.2, align 1
  %conv89.i282.i.1.2 = zext i8 %299 to i32
  %xor90.i283.i.1.2 = xor i32 %conv84.i277.i.1.2, %conv89.i282.i.1.2
  %conv91.i284.i.1.2 = trunc i32 %xor90.i283.i.1.2 to i8
  %scevgep259.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %283, i64 0, i64 0, i64 1
  store i8 %conv91.i284.i.1.2, i8* %scevgep259.1.2, align 1
  %scevgep240.3.2 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 3
  %300 = load i8, i8* %scevgep240.3.2, align 1
  %conv44.i236.i.3.2 = zext i8 %300 to i32
  %scevgep243.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %279, i64 0, i64 0, i64 3
  %301 = load i8, i8* %scevgep243.3.2, align 1
  %conv49.i241.i.3.2 = zext i8 %301 to i32
  %xor.i242.i.3.2 = xor i32 %conv44.i236.i.3.2, %conv49.i241.i.3.2
  %conv50.i243.i.3.2 = trunc i32 %xor.i242.i.3.2 to i8
  %scevgep247.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %280, i64 0, i64 0, i64 3
  store i8 %conv50.i243.i.3.2, i8* %scevgep247.3.2, align 1
  %302 = load i8, i8* %arrayidx56.i249.i.2, align 1
  %conv57.i250.i.3.2 = zext i8 %302 to i32
  %xor58.i251.i.3.2 = xor i32 %conv57.i250.i.3.2, 1
  %conv59.i252.i.3.2 = trunc i32 %xor58.i251.i.3.2 to i8
  %scevgep244.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %279, i64 0, i64 0, i64 3
  %303 = load i8, i8* %scevgep244.3.2, align 1
  %call64.i257.i.3.2 = call zeroext i8 @mult(i8 zeroext %conv59.i252.i.3.2, i8 zeroext %303) #3
  %scevgep251.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %281, i64 0, i64 0, i64 3
  store i8 %call64.i257.i.3.2, i8* %scevgep251.3.2, align 1
  %304 = load i8, i8* %arrayidx70.i263.i.2, align 1
  %scevgep248.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %280, i64 0, i64 0, i64 3
  %305 = load i8, i8* %scevgep248.3.2, align 1
  %call75.i268.i.3.2 = call zeroext i8 @mult(i8 zeroext %304, i8 zeroext %305) #3
  %scevgep255.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %282, i64 0, i64 0, i64 3
  store i8 %call75.i268.i.3.2, i8* %scevgep255.3.2, align 1
  %scevgep252.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %281, i64 0, i64 0, i64 3
  %306 = load i8, i8* %scevgep252.3.2, align 1
  %conv84.i277.i.3.2 = zext i8 %306 to i32
  %scevgep256.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %282, i64 0, i64 0, i64 3
  %307 = load i8, i8* %scevgep256.3.2, align 1
  %conv89.i282.i.3.2 = zext i8 %307 to i32
  %xor90.i283.i.3.2 = xor i32 %conv84.i277.i.3.2, %conv89.i282.i.3.2
  %conv91.i284.i.3.2 = trunc i32 %xor90.i283.i.3.2 to i8
  %scevgep259.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %283, i64 0, i64 0, i64 3
  store i8 %conv91.i284.i.3.2, i8* %scevgep259.3.2, align 1
  %scevgep242.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %279, i64 0, i64 1, i64 0
  %308 = bitcast i8* %scevgep242.2 to [4 x [4 x i8]]*
  %scevgep246.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %280, i64 0, i64 1, i64 0
  %309 = bitcast i8* %scevgep246.2 to [4 x [4 x i8]]*
  %scevgep250.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %281, i64 0, i64 1, i64 0
  %310 = bitcast i8* %scevgep250.2 to [4 x [4 x i8]]*
  %scevgep254.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %282, i64 0, i64 1, i64 0
  %311 = bitcast i8* %scevgep254.2 to [4 x [4 x i8]]*
  %scevgep258.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %283, i64 0, i64 1, i64 0
  %312 = bitcast i8* %scevgep258.2 to [4 x [4 x i8]]*
  %arrayidx56.i249.i.3 = getelementptr inbounds i8, i8* %arraydecay10.i, i64 3
  %arrayidx70.i263.i.3 = getelementptr inbounds i8, i8* %arraydecay10.i, i64 3
  %scevgep240.3689 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 0
  %313 = load i8, i8* %scevgep240.3689, align 1
  %conv44.i236.i.3690 = zext i8 %313 to i32
  %scevgep243.3691 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %308, i64 0, i64 0, i64 0
  %314 = load i8, i8* %scevgep243.3691, align 1
  %conv49.i241.i.3692 = zext i8 %314 to i32
  %xor.i242.i.3693 = xor i32 %conv44.i236.i.3690, %conv49.i241.i.3692
  %conv50.i243.i.3694 = trunc i32 %xor.i242.i.3693 to i8
  %scevgep247.3695 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %309, i64 0, i64 0, i64 0
  store i8 %conv50.i243.i.3694, i8* %scevgep247.3695, align 1
  %315 = load i8, i8* %arrayidx56.i249.i.3, align 1
  %conv57.i250.i.3696 = zext i8 %315 to i32
  %xor58.i251.i.3697 = xor i32 %conv57.i250.i.3696, 1
  %conv59.i252.i.3698 = trunc i32 %xor58.i251.i.3697 to i8
  %scevgep244.3699 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %308, i64 0, i64 0, i64 0
  %316 = load i8, i8* %scevgep244.3699, align 1
  %call64.i257.i.3700 = call zeroext i8 @mult(i8 zeroext %conv59.i252.i.3698, i8 zeroext %316) #3
  %scevgep251.3701 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %310, i64 0, i64 0, i64 0
  store i8 %call64.i257.i.3700, i8* %scevgep251.3701, align 1
  %317 = load i8, i8* %arrayidx70.i263.i.3, align 1
  %scevgep248.3702 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %309, i64 0, i64 0, i64 0
  %318 = load i8, i8* %scevgep248.3702, align 1
  %call75.i268.i.3703 = call zeroext i8 @mult(i8 zeroext %317, i8 zeroext %318) #3
  %scevgep255.3704 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %311, i64 0, i64 0, i64 0
  store i8 %call75.i268.i.3703, i8* %scevgep255.3704, align 1
  %scevgep252.3705 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %310, i64 0, i64 0, i64 0
  %319 = load i8, i8* %scevgep252.3705, align 1
  %conv84.i277.i.3706 = zext i8 %319 to i32
  %scevgep256.3707 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %311, i64 0, i64 0, i64 0
  %320 = load i8, i8* %scevgep256.3707, align 1
  %conv89.i282.i.3708 = zext i8 %320 to i32
  %xor90.i283.i.3709 = xor i32 %conv84.i277.i.3706, %conv89.i282.i.3708
  %conv91.i284.i.3710 = trunc i32 %xor90.i283.i.3709 to i8
  %scevgep259.3711 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %312, i64 0, i64 0, i64 0
  store i8 %conv91.i284.i.3710, i8* %scevgep259.3711, align 1
  %scevgep240.1.3 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 1
  %321 = load i8, i8* %scevgep240.1.3, align 1
  %conv44.i236.i.1.3 = zext i8 %321 to i32
  %scevgep243.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %308, i64 0, i64 0, i64 1
  %322 = load i8, i8* %scevgep243.1.3, align 1
  %conv49.i241.i.1.3 = zext i8 %322 to i32
  %xor.i242.i.1.3 = xor i32 %conv44.i236.i.1.3, %conv49.i241.i.1.3
  %conv50.i243.i.1.3 = trunc i32 %xor.i242.i.1.3 to i8
  %scevgep247.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %309, i64 0, i64 0, i64 1
  store i8 %conv50.i243.i.1.3, i8* %scevgep247.1.3, align 1
  %323 = load i8, i8* %arrayidx56.i249.i.3, align 1
  %conv57.i250.i.1.3 = zext i8 %323 to i32
  %xor58.i251.i.1.3 = xor i32 %conv57.i250.i.1.3, 1
  %conv59.i252.i.1.3 = trunc i32 %xor58.i251.i.1.3 to i8
  %scevgep244.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %308, i64 0, i64 0, i64 1
  %324 = load i8, i8* %scevgep244.1.3, align 1
  %call64.i257.i.1.3 = call zeroext i8 @mult(i8 zeroext %conv59.i252.i.1.3, i8 zeroext %324) #3
  %scevgep251.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %310, i64 0, i64 0, i64 1
  store i8 %call64.i257.i.1.3, i8* %scevgep251.1.3, align 1
  %325 = load i8, i8* %arrayidx70.i263.i.3, align 1
  %scevgep248.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %309, i64 0, i64 0, i64 1
  %326 = load i8, i8* %scevgep248.1.3, align 1
  %call75.i268.i.1.3 = call zeroext i8 @mult(i8 zeroext %325, i8 zeroext %326) #3
  %scevgep255.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %311, i64 0, i64 0, i64 1
  store i8 %call75.i268.i.1.3, i8* %scevgep255.1.3, align 1
  %scevgep252.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %310, i64 0, i64 0, i64 1
  %327 = load i8, i8* %scevgep252.1.3, align 1
  %conv84.i277.i.1.3 = zext i8 %327 to i32
  %scevgep256.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %311, i64 0, i64 0, i64 1
  %328 = load i8, i8* %scevgep256.1.3, align 1
  %conv89.i282.i.1.3 = zext i8 %328 to i32
  %xor90.i283.i.1.3 = xor i32 %conv84.i277.i.1.3, %conv89.i282.i.1.3
  %conv91.i284.i.1.3 = trunc i32 %xor90.i283.i.1.3 to i8
  %scevgep259.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %312, i64 0, i64 0, i64 1
  store i8 %conv91.i284.i.1.3, i8* %scevgep259.1.3, align 1
  %scevgep240.2.3 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 2
  %329 = load i8, i8* %scevgep240.2.3, align 1
  %conv44.i236.i.2.3 = zext i8 %329 to i32
  %scevgep243.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %308, i64 0, i64 0, i64 2
  %330 = load i8, i8* %scevgep243.2.3, align 1
  %conv49.i241.i.2.3 = zext i8 %330 to i32
  %xor.i242.i.2.3 = xor i32 %conv44.i236.i.2.3, %conv49.i241.i.2.3
  %conv50.i243.i.2.3 = trunc i32 %xor.i242.i.2.3 to i8
  %scevgep247.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %309, i64 0, i64 0, i64 2
  store i8 %conv50.i243.i.2.3, i8* %scevgep247.2.3, align 1
  %331 = load i8, i8* %arrayidx56.i249.i.3, align 1
  %conv57.i250.i.2.3 = zext i8 %331 to i32
  %xor58.i251.i.2.3 = xor i32 %conv57.i250.i.2.3, 1
  %conv59.i252.i.2.3 = trunc i32 %xor58.i251.i.2.3 to i8
  %scevgep244.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %308, i64 0, i64 0, i64 2
  %332 = load i8, i8* %scevgep244.2.3, align 1
  %call64.i257.i.2.3 = call zeroext i8 @mult(i8 zeroext %conv59.i252.i.2.3, i8 zeroext %332) #3
  %scevgep251.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %310, i64 0, i64 0, i64 2
  store i8 %call64.i257.i.2.3, i8* %scevgep251.2.3, align 1
  %333 = load i8, i8* %arrayidx70.i263.i.3, align 1
  %scevgep248.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %309, i64 0, i64 0, i64 2
  %334 = load i8, i8* %scevgep248.2.3, align 1
  %call75.i268.i.2.3 = call zeroext i8 @mult(i8 zeroext %333, i8 zeroext %334) #3
  %scevgep255.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %311, i64 0, i64 0, i64 2
  store i8 %call75.i268.i.2.3, i8* %scevgep255.2.3, align 1
  %scevgep252.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %310, i64 0, i64 0, i64 2
  %335 = load i8, i8* %scevgep252.2.3, align 1
  %conv84.i277.i.2.3 = zext i8 %335 to i32
  %scevgep256.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %311, i64 0, i64 0, i64 2
  %336 = load i8, i8* %scevgep256.2.3, align 1
  %conv89.i282.i.2.3 = zext i8 %336 to i32
  %xor90.i283.i.2.3 = xor i32 %conv84.i277.i.2.3, %conv89.i282.i.2.3
  %conv91.i284.i.2.3 = trunc i32 %xor90.i283.i.2.3 to i8
  %scevgep259.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %312, i64 0, i64 0, i64 2
  store i8 %conv91.i284.i.2.3, i8* %scevgep259.2.3, align 1
  %337 = load i8, i8* %arraydecay10.i, align 1
  %338 = load i8, i8* %arraydecay11.i, align 1
  %call111.i301.i = call zeroext i8 @mult(i8 zeroext %337, i8 zeroext %338) #3
  store i8 %call111.i301.i, i8* %arraydecay12.i, align 1
  %scevgep230.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  %339 = load i8, i8* %scevgep230.1, align 1
  %conv126.i313.i.1 = zext i8 %339 to i32
  %340 = load i8, i8* %arraydecay12.i, align 1
  %conv129.i316.i.1 = zext i8 %340 to i32
  %xor130.i317.i.1 = xor i32 %conv129.i316.i.1, %conv126.i313.i.1
  %conv131.i318.i.1 = trunc i32 %xor130.i317.i.1 to i8
  store i8 %conv131.i318.i.1, i8* %arraydecay12.i, align 1
  %scevgep230.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 2
  %341 = load i8, i8* %scevgep230.2, align 1
  %conv126.i313.i.2 = zext i8 %341 to i32
  %342 = load i8, i8* %arraydecay12.i, align 1
  %conv129.i316.i.2 = zext i8 %342 to i32
  %xor130.i317.i.2 = xor i32 %conv129.i316.i.2, %conv126.i313.i.2
  %conv131.i318.i.2 = trunc i32 %xor130.i317.i.2 to i8
  store i8 %conv131.i318.i.2, i8* %arraydecay12.i, align 1
  %scevgep230.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 3
  %343 = load i8, i8* %scevgep230.3, align 1
  %conv126.i313.i.3 = zext i8 %343 to i32
  %344 = load i8, i8* %arraydecay12.i, align 1
  %conv129.i316.i.3 = zext i8 %344 to i32
  %xor130.i317.i.3 = xor i32 %conv129.i316.i.3, %conv126.i313.i.3
  %conv131.i318.i.3 = trunc i32 %xor130.i317.i.3 to i8
  store i8 %conv131.i318.i.3, i8* %arraydecay12.i, align 1
  %scevgep229 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %345 = bitcast i8* %scevgep229 to [4 x [4 x i8]]*
  %arrayidx108.i298.i.1 = getelementptr inbounds i8, i8* %arraydecay10.i, i64 1
  %346 = load i8, i8* %arrayidx108.i298.i.1, align 1
  %arrayidx110.i300.i.1 = getelementptr inbounds i8, i8* %arraydecay11.i, i64 1
  %347 = load i8, i8* %arrayidx110.i300.i.1, align 1
  %call111.i301.i.1 = call zeroext i8 @mult(i8 zeroext %346, i8 zeroext %347) #3
  %arrayidx113.i303.i.1 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 1
  store i8 %call111.i301.i.1, i8* %arrayidx113.i303.i.1, align 1
  %arrayidx128.i315.i.1 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 1
  %scevgep230.1608 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %345, i64 0, i64 0, i64 0
  %348 = load i8, i8* %scevgep230.1608, align 1
  %conv126.i313.i.1609 = zext i8 %348 to i32
  %349 = load i8, i8* %arrayidx128.i315.i.1, align 1
  %conv129.i316.i.1610 = zext i8 %349 to i32
  %xor130.i317.i.1611 = xor i32 %conv129.i316.i.1610, %conv126.i313.i.1609
  %conv131.i318.i.1612 = trunc i32 %xor130.i317.i.1611 to i8
  store i8 %conv131.i318.i.1612, i8* %arrayidx128.i315.i.1, align 1
  %scevgep230.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %345, i64 0, i64 0, i64 2
  %350 = load i8, i8* %scevgep230.2.1, align 1
  %conv126.i313.i.2.1 = zext i8 %350 to i32
  %351 = load i8, i8* %arrayidx128.i315.i.1, align 1
  %conv129.i316.i.2.1 = zext i8 %351 to i32
  %xor130.i317.i.2.1 = xor i32 %conv129.i316.i.2.1, %conv126.i313.i.2.1
  %conv131.i318.i.2.1 = trunc i32 %xor130.i317.i.2.1 to i8
  store i8 %conv131.i318.i.2.1, i8* %arrayidx128.i315.i.1, align 1
  %scevgep230.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %345, i64 0, i64 0, i64 3
  %352 = load i8, i8* %scevgep230.3.1, align 1
  %conv126.i313.i.3.1 = zext i8 %352 to i32
  %353 = load i8, i8* %arrayidx128.i315.i.1, align 1
  %conv129.i316.i.3.1 = zext i8 %353 to i32
  %xor130.i317.i.3.1 = xor i32 %conv129.i316.i.3.1, %conv126.i313.i.3.1
  %conv131.i318.i.3.1 = trunc i32 %xor130.i317.i.3.1 to i8
  store i8 %conv131.i318.i.3.1, i8* %arrayidx128.i315.i.1, align 1
  %scevgep229.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %345, i64 0, i64 1, i64 0
  %354 = bitcast i8* %scevgep229.1 to [4 x [4 x i8]]*
  %arrayidx108.i298.i.2 = getelementptr inbounds i8, i8* %arraydecay10.i, i64 2
  %355 = load i8, i8* %arrayidx108.i298.i.2, align 1
  %arrayidx110.i300.i.2 = getelementptr inbounds i8, i8* %arraydecay11.i, i64 2
  %356 = load i8, i8* %arrayidx110.i300.i.2, align 1
  %call111.i301.i.2 = call zeroext i8 @mult(i8 zeroext %355, i8 zeroext %356) #3
  %arrayidx113.i303.i.2 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 2
  store i8 %call111.i301.i.2, i8* %arrayidx113.i303.i.2, align 1
  %arrayidx128.i315.i.2 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 2
  %scevgep230.2617 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %354, i64 0, i64 0, i64 0
  %357 = load i8, i8* %scevgep230.2617, align 1
  %conv126.i313.i.2618 = zext i8 %357 to i32
  %358 = load i8, i8* %arrayidx128.i315.i.2, align 1
  %conv129.i316.i.2619 = zext i8 %358 to i32
  %xor130.i317.i.2620 = xor i32 %conv129.i316.i.2619, %conv126.i313.i.2618
  %conv131.i318.i.2621 = trunc i32 %xor130.i317.i.2620 to i8
  store i8 %conv131.i318.i.2621, i8* %arrayidx128.i315.i.2, align 1
  %scevgep230.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %354, i64 0, i64 0, i64 1
  %359 = load i8, i8* %scevgep230.1.2, align 1
  %conv126.i313.i.1.2 = zext i8 %359 to i32
  %360 = load i8, i8* %arrayidx128.i315.i.2, align 1
  %conv129.i316.i.1.2 = zext i8 %360 to i32
  %xor130.i317.i.1.2 = xor i32 %conv129.i316.i.1.2, %conv126.i313.i.1.2
  %conv131.i318.i.1.2 = trunc i32 %xor130.i317.i.1.2 to i8
  store i8 %conv131.i318.i.1.2, i8* %arrayidx128.i315.i.2, align 1
  %scevgep230.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %354, i64 0, i64 0, i64 3
  %361 = load i8, i8* %scevgep230.3.2, align 1
  %conv126.i313.i.3.2 = zext i8 %361 to i32
  %362 = load i8, i8* %arrayidx128.i315.i.2, align 1
  %conv129.i316.i.3.2 = zext i8 %362 to i32
  %xor130.i317.i.3.2 = xor i32 %conv129.i316.i.3.2, %conv126.i313.i.3.2
  %conv131.i318.i.3.2 = trunc i32 %xor130.i317.i.3.2 to i8
  store i8 %conv131.i318.i.3.2, i8* %arrayidx128.i315.i.2, align 1
  %scevgep229.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %354, i64 0, i64 1, i64 0
  %363 = bitcast i8* %scevgep229.2 to [4 x [4 x i8]]*
  %arrayidx108.i298.i.3 = getelementptr inbounds i8, i8* %arraydecay10.i, i64 3
  %364 = load i8, i8* %arrayidx108.i298.i.3, align 1
  %arrayidx110.i300.i.3 = getelementptr inbounds i8, i8* %arraydecay11.i, i64 3
  %365 = load i8, i8* %arrayidx110.i300.i.3, align 1
  %call111.i301.i.3 = call zeroext i8 @mult(i8 zeroext %364, i8 zeroext %365) #3
  %arrayidx113.i303.i.3 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 3
  store i8 %call111.i301.i.3, i8* %arrayidx113.i303.i.3, align 1
  %arrayidx128.i315.i.3 = getelementptr inbounds i8, i8* %arraydecay12.i, i64 3
  %scevgep230.3626 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %363, i64 0, i64 0, i64 0
  %366 = load i8, i8* %scevgep230.3626, align 1
  %conv126.i313.i.3627 = zext i8 %366 to i32
  %367 = load i8, i8* %arrayidx128.i315.i.3, align 1
  %conv129.i316.i.3628 = zext i8 %367 to i32
  %xor130.i317.i.3629 = xor i32 %conv129.i316.i.3628, %conv126.i313.i.3627
  %conv131.i318.i.3630 = trunc i32 %xor130.i317.i.3629 to i8
  store i8 %conv131.i318.i.3630, i8* %arrayidx128.i315.i.3, align 1
  %scevgep230.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %363, i64 0, i64 0, i64 1
  %368 = load i8, i8* %scevgep230.1.3, align 1
  %conv126.i313.i.1.3 = zext i8 %368 to i32
  %369 = load i8, i8* %arrayidx128.i315.i.3, align 1
  %conv129.i316.i.1.3 = zext i8 %369 to i32
  %xor130.i317.i.1.3 = xor i32 %conv129.i316.i.1.3, %conv126.i313.i.1.3
  %conv131.i318.i.1.3 = trunc i32 %xor130.i317.i.1.3 to i8
  store i8 %conv131.i318.i.1.3, i8* %arrayidx128.i315.i.3, align 1
  %scevgep230.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %363, i64 0, i64 0, i64 2
  %370 = load i8, i8* %scevgep230.2.3, align 1
  %conv126.i313.i.2.3 = zext i8 %370 to i32
  %371 = load i8, i8* %arrayidx128.i315.i.3, align 1
  %conv129.i316.i.2.3 = zext i8 %371 to i32
  %xor130.i317.i.2.3 = xor i32 %conv129.i316.i.2.3, %conv126.i313.i.2.3
  %conv131.i318.i.2.3 = trunc i32 %xor130.i317.i.2.3 to i8
  store i8 %conv131.i318.i.2.3, i8* %arrayidx128.i315.i.3, align 1
  %call139.i324.i = call zeroext i8 @mult(i8 zeroext %call.i171.i, i8 zeroext %call1.i172.i) #3
  %conv140.i325.i = zext i8 %call139.i324.i to i32
  %scevgep220 = getelementptr [4 x i8], [4 x i8]* %v.i, i64 0, i64 0
  %372 = load i8, i8* %scevgep220, align 1
  %scevgep220.1 = getelementptr [4 x i8], [4 x i8]* %v.i, i64 0, i64 1
  %373 = load i8, i8* %scevgep220.1, align 1
  %conv.i.i172.i332.i.1 = zext i8 %373 to i32
  %conv1.i.i173.i333.i.1 = zext i8 %372 to i32
  %xor.i.i174.i334.i.1 = xor i32 %conv1.i.i173.i333.i.1, %conv.i.i172.i332.i.1
  %conv2.i.i175.i335.i.1 = trunc i32 %xor.i.i174.i334.i.1 to i8
  %scevgep220.2 = getelementptr [4 x i8], [4 x i8]* %v.i, i64 0, i64 2
  %374 = load i8, i8* %scevgep220.2, align 1
  %conv.i.i172.i332.i.2 = zext i8 %374 to i32
  %conv1.i.i173.i333.i.2 = zext i8 %conv2.i.i175.i335.i.1 to i32
  %xor.i.i174.i334.i.2 = xor i32 %conv1.i.i173.i333.i.2, %conv.i.i172.i332.i.2
  %conv2.i.i175.i335.i.2 = trunc i32 %xor.i.i174.i334.i.2 to i8
  %scevgep220.3 = getelementptr [4 x i8], [4 x i8]* %v.i, i64 0, i64 3
  %375 = load i8, i8* %scevgep220.3, align 1
  %conv.i.i172.i332.i.3 = zext i8 %375 to i32
  %conv1.i.i173.i333.i.3 = zext i8 %conv2.i.i175.i335.i.2 to i32
  %xor.i.i174.i334.i.3 = xor i32 %conv1.i.i173.i333.i.3, %conv.i.i172.i332.i.3
  %conv2.i.i175.i335.i.3 = trunc i32 %xor.i.i174.i334.i.3 to i8
  %conv142.i338.i = zext i8 %conv2.i.i175.i335.i.3 to i32
  %cmp143.i339.i = icmp eq i32 %conv140.i325.i, %conv142.i338.i
  call void @assert(i1 zeroext %cmp143.i339.i) #3
  %scevgep215 = getelementptr [4 x i8], [4 x i8]* %v.i, i64 0, i64 0
  %376 = load i8, i8* %scevgep215, align 1
  %call.i349.i = call zeroext i8 @exp16(i8 zeroext %376) #3
  %scevgep216 = getelementptr [4 x i8], [4 x i8]* %v.i, i64 0, i64 0
  store i8 %call.i349.i, i8* %scevgep216, align 1
  %scevgep215.1 = getelementptr [4 x i8], [4 x i8]* %v.i, i64 0, i64 1
  %377 = load i8, i8* %scevgep215.1, align 1
  %call.i349.i.1 = call zeroext i8 @exp16(i8 zeroext %377) #3
  %scevgep216.1 = getelementptr [4 x i8], [4 x i8]* %v.i, i64 0, i64 1
  store i8 %call.i349.i.1, i8* %scevgep216.1, align 1
  %scevgep215.2 = getelementptr [4 x i8], [4 x i8]* %v.i, i64 0, i64 2
  %378 = load i8, i8* %scevgep215.2, align 1
  %call.i349.i.2 = call zeroext i8 @exp16(i8 zeroext %378) #3
  %scevgep216.2 = getelementptr [4 x i8], [4 x i8]* %v.i, i64 0, i64 2
  store i8 %call.i349.i.2, i8* %scevgep216.2, align 1
  %scevgep215.3 = getelementptr [4 x i8], [4 x i8]* %v.i, i64 0, i64 3
  %379 = load i8, i8* %scevgep215.3, align 1
  %call.i349.i.3 = call zeroext i8 @exp16(i8 zeroext %379) #3
  %scevgep216.3 = getelementptr [4 x i8], [4 x i8]* %v.i, i64 0, i64 3
  store i8 %call.i349.i.3, i8* %scevgep216.3, align 1
  %arraydecay15.i = getelementptr inbounds [4 x i8], [4 x i8]* %v.i, i64 0, i64 0
  %arraydecay16.i = getelementptr inbounds [4 x i8], [4 x i8]* %w.i, i64 0, i64 0
  %arraydecay17.i = getelementptr inbounds [4 x i8], [4 x i8]* %m.i, i64 0, i64 0
  %call.i387.i = call zeroext i8 (...) @rand() #3
  %call1.i388.i = call zeroext i8 (...) @rand() #3
  %conv.i389.i = zext i8 %call.i387.i to i32
  %scevgep211 = getelementptr [4 x i8], [4 x i8]* %v.i, i64 0, i64 0
  %380 = load i8, i8* %scevgep211, align 1
  %scevgep211.1 = getelementptr [4 x i8], [4 x i8]* %v.i, i64 0, i64 1
  %381 = load i8, i8* %scevgep211.1, align 1
  %conv.i.i.i395.i.1 = zext i8 %381 to i32
  %conv1.i.i.i396.i.1 = zext i8 %380 to i32
  %xor.i.i.i397.i.1 = xor i32 %conv1.i.i.i396.i.1, %conv.i.i.i395.i.1
  %conv2.i.i.i398.i.1 = trunc i32 %xor.i.i.i397.i.1 to i8
  %scevgep211.2 = getelementptr [4 x i8], [4 x i8]* %v.i, i64 0, i64 2
  %382 = load i8, i8* %scevgep211.2, align 1
  %conv.i.i.i395.i.2 = zext i8 %382 to i32
  %conv1.i.i.i396.i.2 = zext i8 %conv2.i.i.i398.i.1 to i32
  %xor.i.i.i397.i.2 = xor i32 %conv1.i.i.i396.i.2, %conv.i.i.i395.i.2
  %conv2.i.i.i398.i.2 = trunc i32 %xor.i.i.i397.i.2 to i8
  %scevgep211.3 = getelementptr [4 x i8], [4 x i8]* %v.i, i64 0, i64 3
  %383 = load i8, i8* %scevgep211.3, align 1
  %conv.i.i.i395.i.3 = zext i8 %383 to i32
  %conv1.i.i.i396.i.3 = zext i8 %conv2.i.i.i398.i.2 to i32
  %xor.i.i.i397.i.3 = xor i32 %conv1.i.i.i396.i.3, %conv.i.i.i395.i.3
  %conv2.i.i.i398.i.3 = trunc i32 %xor.i.i.i397.i.3 to i8
  %conv3.i401.i = zext i8 %conv2.i.i.i398.i.3 to i32
  %cmp.i402.i = icmp eq i32 %conv.i389.i, %conv3.i401.i
  call void @assume(i1 zeroext %cmp.i402.i) #3
  %conv5.i403.i = zext i8 %call1.i388.i to i32
  %scevgep207 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 0
  %384 = load i8, i8* %scevgep207, align 1
  %scevgep207.1 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 1
  %385 = load i8, i8* %scevgep207.1, align 1
  %conv.i.i155.i410.i.1 = zext i8 %385 to i32
  %conv1.i.i156.i411.i.1 = zext i8 %384 to i32
  %xor.i.i157.i412.i.1 = xor i32 %conv1.i.i156.i411.i.1, %conv.i.i155.i410.i.1
  %conv2.i.i158.i413.i.1 = trunc i32 %xor.i.i157.i412.i.1 to i8
  %scevgep207.2 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 2
  %386 = load i8, i8* %scevgep207.2, align 1
  %conv.i.i155.i410.i.2 = zext i8 %386 to i32
  %conv1.i.i156.i411.i.2 = zext i8 %conv2.i.i158.i413.i.1 to i32
  %xor.i.i157.i412.i.2 = xor i32 %conv1.i.i156.i411.i.2, %conv.i.i155.i410.i.2
  %conv2.i.i158.i413.i.2 = trunc i32 %xor.i.i157.i412.i.2 to i8
  %scevgep207.3 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 3
  %387 = load i8, i8* %scevgep207.3, align 1
  %conv.i.i155.i410.i.3 = zext i8 %387 to i32
  %conv1.i.i156.i411.i.3 = zext i8 %conv2.i.i158.i413.i.2 to i32
  %xor.i.i157.i412.i.3 = xor i32 %conv1.i.i156.i411.i.3, %conv.i.i155.i410.i.3
  %conv2.i.i158.i413.i.3 = trunc i32 %xor.i.i157.i412.i.3 to i8
  %conv7.i416.i = zext i8 %conv2.i.i158.i413.i.3 to i32
  %cmp8.i417.i = icmp eq i32 %conv5.i403.i, %conv7.i416.i
  call void @assume(i1 zeroext %cmp8.i417.i) #3
  %call16.i425.i = call zeroext i8 (...) @rand() #3
  %scevgep197 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  store i8 %call16.i425.i, i8* %scevgep197, align 1
  %scevgep198 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %388 = load i8, i8* %scevgep198, align 1
  %scevgep199 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  store i8 %388, i8* %scevgep199, align 1
  %call16.i425.i.1828 = call zeroext i8 (...) @rand() #3
  %scevgep197.1829 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  store i8 %call16.i425.i.1828, i8* %scevgep197.1829, align 1
  %scevgep198.1830 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %389 = load i8, i8* %scevgep198.1830, align 1
  %scevgep199.1831 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 2, i64 0
  store i8 %389, i8* %scevgep199.1831, align 1
  %call16.i425.i.2833 = call zeroext i8 (...) @rand() #3
  %scevgep197.2834 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  store i8 %call16.i425.i.2833, i8* %scevgep197.2834, align 1
  %scevgep198.2835 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  %390 = load i8, i8* %scevgep198.2835, align 1
  %scevgep199.2836 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 3, i64 0
  store i8 %390, i8* %scevgep199.2836, align 1
  %scevgep194 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 1, i64 1
  %391 = bitcast i8* %scevgep194 to [4 x [4 x i8]]*
  %call16.i425.i.1 = call zeroext i8 (...) @rand() #3
  %scevgep197.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %391, i64 0, i64 0, i64 1
  store i8 %call16.i425.i.1, i8* %scevgep197.1, align 1
  %scevgep198.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %391, i64 0, i64 0, i64 1
  %392 = load i8, i8* %scevgep198.1, align 1
  %scevgep199.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %391, i64 0, i64 1, i64 0
  store i8 %392, i8* %scevgep199.1, align 1
  %call16.i425.i.1.1 = call zeroext i8 (...) @rand() #3
  %scevgep197.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %391, i64 0, i64 0, i64 2
  store i8 %call16.i425.i.1.1, i8* %scevgep197.1.1, align 1
  %scevgep198.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %391, i64 0, i64 0, i64 2
  %393 = load i8, i8* %scevgep198.1.1, align 1
  %scevgep199.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %391, i64 0, i64 2, i64 0
  store i8 %393, i8* %scevgep199.1.1, align 1
  %scevgep194.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %391, i64 0, i64 1, i64 1
  %394 = bitcast i8* %scevgep194.1 to [4 x [4 x i8]]*
  %call16.i425.i.2 = call zeroext i8 (...) @rand() #3
  %scevgep197.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %394, i64 0, i64 0, i64 1
  store i8 %call16.i425.i.2, i8* %scevgep197.2, align 1
  %scevgep198.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %394, i64 0, i64 0, i64 1
  %395 = load i8, i8* %scevgep198.2, align 1
  %scevgep199.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %394, i64 0, i64 1, i64 0
  store i8 %395, i8* %scevgep199.2, align 1
  %scevgep170.1 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 1
  %396 = load i8, i8* %scevgep170.1, align 1
  %conv44.i452.i.1 = zext i8 %396 to i32
  %scevgep173.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %397 = load i8, i8* %scevgep173.1, align 1
  %conv49.i457.i.1 = zext i8 %397 to i32
  %xor.i458.i.1 = xor i32 %conv44.i452.i.1, %conv49.i457.i.1
  %conv50.i459.i.1 = trunc i32 %xor.i458.i.1 to i8
  %scevgep177.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  store i8 %conv50.i459.i.1, i8* %scevgep177.1, align 1
  %398 = load i8, i8* %arraydecay15.i, align 1
  %conv57.i466.i.1 = zext i8 %398 to i32
  %xor58.i467.i.1 = xor i32 %conv57.i466.i.1, 1
  %conv59.i468.i.1 = trunc i32 %xor58.i467.i.1 to i8
  %scevgep174.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %399 = load i8, i8* %scevgep174.1, align 1
  %call64.i473.i.1 = call zeroext i8 @mult(i8 zeroext %conv59.i468.i.1, i8 zeroext %399) #3
  %scevgep181.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  store i8 %call64.i473.i.1, i8* %scevgep181.1, align 1
  %400 = load i8, i8* %arraydecay15.i, align 1
  %scevgep178.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  %401 = load i8, i8* %scevgep178.1, align 1
  %call75.i484.i.1 = call zeroext i8 @mult(i8 zeroext %400, i8 zeroext %401) #3
  %scevgep185.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  store i8 %call75.i484.i.1, i8* %scevgep185.1, align 1
  %scevgep182.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  %402 = load i8, i8* %scevgep182.1, align 1
  %conv84.i493.i.1 = zext i8 %402 to i32
  %scevgep186.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  %403 = load i8, i8* %scevgep186.1, align 1
  %conv89.i498.i.1 = zext i8 %403 to i32
  %xor90.i499.i.1 = xor i32 %conv84.i493.i.1, %conv89.i498.i.1
  %conv91.i500.i.1 = trunc i32 %xor90.i499.i.1 to i8
  %scevgep189.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  store i8 %conv91.i500.i.1, i8* %scevgep189.1, align 1
  %scevgep170.2 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 2
  %404 = load i8, i8* %scevgep170.2, align 1
  %conv44.i452.i.2 = zext i8 %404 to i32
  %scevgep173.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %405 = load i8, i8* %scevgep173.2, align 1
  %conv49.i457.i.2 = zext i8 %405 to i32
  %xor.i458.i.2 = xor i32 %conv44.i452.i.2, %conv49.i457.i.2
  %conv50.i459.i.2 = trunc i32 %xor.i458.i.2 to i8
  %scevgep177.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 2
  store i8 %conv50.i459.i.2, i8* %scevgep177.2, align 1
  %406 = load i8, i8* %arraydecay15.i, align 1
  %conv57.i466.i.2 = zext i8 %406 to i32
  %xor58.i467.i.2 = xor i32 %conv57.i466.i.2, 1
  %conv59.i468.i.2 = trunc i32 %xor58.i467.i.2 to i8
  %scevgep174.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %407 = load i8, i8* %scevgep174.2, align 1
  %call64.i473.i.2 = call zeroext i8 @mult(i8 zeroext %conv59.i468.i.2, i8 zeroext %407) #3
  %scevgep181.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 2
  store i8 %call64.i473.i.2, i8* %scevgep181.2, align 1
  %408 = load i8, i8* %arraydecay15.i, align 1
  %scevgep178.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 2
  %409 = load i8, i8* %scevgep178.2, align 1
  %call75.i484.i.2 = call zeroext i8 @mult(i8 zeroext %408, i8 zeroext %409) #3
  %scevgep185.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 2
  store i8 %call75.i484.i.2, i8* %scevgep185.2, align 1
  %scevgep182.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 2
  %410 = load i8, i8* %scevgep182.2, align 1
  %conv84.i493.i.2 = zext i8 %410 to i32
  %scevgep186.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 2
  %411 = load i8, i8* %scevgep186.2, align 1
  %conv89.i498.i.2 = zext i8 %411 to i32
  %xor90.i499.i.2 = xor i32 %conv84.i493.i.2, %conv89.i498.i.2
  %conv91.i500.i.2 = trunc i32 %xor90.i499.i.2 to i8
  %scevgep189.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 2
  store i8 %conv91.i500.i.2, i8* %scevgep189.2, align 1
  %scevgep170.3 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 3
  %412 = load i8, i8* %scevgep170.3, align 1
  %conv44.i452.i.3 = zext i8 %412 to i32
  %scevgep173.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  %413 = load i8, i8* %scevgep173.3, align 1
  %conv49.i457.i.3 = zext i8 %413 to i32
  %xor.i458.i.3 = xor i32 %conv44.i452.i.3, %conv49.i457.i.3
  %conv50.i459.i.3 = trunc i32 %xor.i458.i.3 to i8
  %scevgep177.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 3
  store i8 %conv50.i459.i.3, i8* %scevgep177.3, align 1
  %414 = load i8, i8* %arraydecay15.i, align 1
  %conv57.i466.i.3 = zext i8 %414 to i32
  %xor58.i467.i.3 = xor i32 %conv57.i466.i.3, 1
  %conv59.i468.i.3 = trunc i32 %xor58.i467.i.3 to i8
  %scevgep174.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  %415 = load i8, i8* %scevgep174.3, align 1
  %call64.i473.i.3 = call zeroext i8 @mult(i8 zeroext %conv59.i468.i.3, i8 zeroext %415) #3
  %scevgep181.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 3
  store i8 %call64.i473.i.3, i8* %scevgep181.3, align 1
  %416 = load i8, i8* %arraydecay15.i, align 1
  %scevgep178.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 3
  %417 = load i8, i8* %scevgep178.3, align 1
  %call75.i484.i.3 = call zeroext i8 @mult(i8 zeroext %416, i8 zeroext %417) #3
  %scevgep185.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 3
  store i8 %call75.i484.i.3, i8* %scevgep185.3, align 1
  %scevgep182.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 3
  %418 = load i8, i8* %scevgep182.3, align 1
  %conv84.i493.i.3 = zext i8 %418 to i32
  %scevgep186.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 3
  %419 = load i8, i8* %scevgep186.3, align 1
  %conv89.i498.i.3 = zext i8 %419 to i32
  %xor90.i499.i.3 = xor i32 %conv84.i493.i.3, %conv89.i498.i.3
  %conv91.i500.i.3 = trunc i32 %xor90.i499.i.3 to i8
  %scevgep189.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 3
  store i8 %conv91.i500.i.3, i8* %scevgep189.3, align 1
  %scevgep172 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %420 = bitcast i8* %scevgep172 to [4 x [4 x i8]]*
  %scevgep176 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 1, i64 0
  %421 = bitcast i8* %scevgep176 to [4 x [4 x i8]]*
  %scevgep180 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 1, i64 0
  %422 = bitcast i8* %scevgep180 to [4 x [4 x i8]]*
  %scevgep184 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 1, i64 0
  %423 = bitcast i8* %scevgep184 to [4 x [4 x i8]]*
  %scevgep188 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %424 = bitcast i8* %scevgep188 to [4 x [4 x i8]]*
  %arrayidx56.i465.i.1 = getelementptr inbounds i8, i8* %arraydecay15.i, i64 1
  %arrayidx70.i479.i.1 = getelementptr inbounds i8, i8* %arraydecay15.i, i64 1
  %scevgep170.1527 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 0
  %425 = load i8, i8* %scevgep170.1527, align 1
  %conv44.i452.i.1528 = zext i8 %425 to i32
  %scevgep173.1529 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %420, i64 0, i64 0, i64 0
  %426 = load i8, i8* %scevgep173.1529, align 1
  %conv49.i457.i.1530 = zext i8 %426 to i32
  %xor.i458.i.1531 = xor i32 %conv44.i452.i.1528, %conv49.i457.i.1530
  %conv50.i459.i.1532 = trunc i32 %xor.i458.i.1531 to i8
  %scevgep177.1533 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %421, i64 0, i64 0, i64 0
  store i8 %conv50.i459.i.1532, i8* %scevgep177.1533, align 1
  %427 = load i8, i8* %arrayidx56.i465.i.1, align 1
  %conv57.i466.i.1534 = zext i8 %427 to i32
  %xor58.i467.i.1535 = xor i32 %conv57.i466.i.1534, 1
  %conv59.i468.i.1536 = trunc i32 %xor58.i467.i.1535 to i8
  %scevgep174.1537 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %420, i64 0, i64 0, i64 0
  %428 = load i8, i8* %scevgep174.1537, align 1
  %call64.i473.i.1538 = call zeroext i8 @mult(i8 zeroext %conv59.i468.i.1536, i8 zeroext %428) #3
  %scevgep181.1539 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %422, i64 0, i64 0, i64 0
  store i8 %call64.i473.i.1538, i8* %scevgep181.1539, align 1
  %429 = load i8, i8* %arrayidx70.i479.i.1, align 1
  %scevgep178.1540 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %421, i64 0, i64 0, i64 0
  %430 = load i8, i8* %scevgep178.1540, align 1
  %call75.i484.i.1541 = call zeroext i8 @mult(i8 zeroext %429, i8 zeroext %430) #3
  %scevgep185.1542 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %423, i64 0, i64 0, i64 0
  store i8 %call75.i484.i.1541, i8* %scevgep185.1542, align 1
  %scevgep182.1543 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %422, i64 0, i64 0, i64 0
  %431 = load i8, i8* %scevgep182.1543, align 1
  %conv84.i493.i.1544 = zext i8 %431 to i32
  %scevgep186.1545 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %423, i64 0, i64 0, i64 0
  %432 = load i8, i8* %scevgep186.1545, align 1
  %conv89.i498.i.1546 = zext i8 %432 to i32
  %xor90.i499.i.1547 = xor i32 %conv84.i493.i.1544, %conv89.i498.i.1546
  %conv91.i500.i.1548 = trunc i32 %xor90.i499.i.1547 to i8
  %scevgep189.1549 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %424, i64 0, i64 0, i64 0
  store i8 %conv91.i500.i.1548, i8* %scevgep189.1549, align 1
  %scevgep170.2.1 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 2
  %433 = load i8, i8* %scevgep170.2.1, align 1
  %conv44.i452.i.2.1 = zext i8 %433 to i32
  %scevgep173.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %420, i64 0, i64 0, i64 2
  %434 = load i8, i8* %scevgep173.2.1, align 1
  %conv49.i457.i.2.1 = zext i8 %434 to i32
  %xor.i458.i.2.1 = xor i32 %conv44.i452.i.2.1, %conv49.i457.i.2.1
  %conv50.i459.i.2.1 = trunc i32 %xor.i458.i.2.1 to i8
  %scevgep177.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %421, i64 0, i64 0, i64 2
  store i8 %conv50.i459.i.2.1, i8* %scevgep177.2.1, align 1
  %435 = load i8, i8* %arrayidx56.i465.i.1, align 1
  %conv57.i466.i.2.1 = zext i8 %435 to i32
  %xor58.i467.i.2.1 = xor i32 %conv57.i466.i.2.1, 1
  %conv59.i468.i.2.1 = trunc i32 %xor58.i467.i.2.1 to i8
  %scevgep174.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %420, i64 0, i64 0, i64 2
  %436 = load i8, i8* %scevgep174.2.1, align 1
  %call64.i473.i.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i468.i.2.1, i8 zeroext %436) #3
  %scevgep181.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %422, i64 0, i64 0, i64 2
  store i8 %call64.i473.i.2.1, i8* %scevgep181.2.1, align 1
  %437 = load i8, i8* %arrayidx70.i479.i.1, align 1
  %scevgep178.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %421, i64 0, i64 0, i64 2
  %438 = load i8, i8* %scevgep178.2.1, align 1
  %call75.i484.i.2.1 = call zeroext i8 @mult(i8 zeroext %437, i8 zeroext %438) #3
  %scevgep185.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %423, i64 0, i64 0, i64 2
  store i8 %call75.i484.i.2.1, i8* %scevgep185.2.1, align 1
  %scevgep182.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %422, i64 0, i64 0, i64 2
  %439 = load i8, i8* %scevgep182.2.1, align 1
  %conv84.i493.i.2.1 = zext i8 %439 to i32
  %scevgep186.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %423, i64 0, i64 0, i64 2
  %440 = load i8, i8* %scevgep186.2.1, align 1
  %conv89.i498.i.2.1 = zext i8 %440 to i32
  %xor90.i499.i.2.1 = xor i32 %conv84.i493.i.2.1, %conv89.i498.i.2.1
  %conv91.i500.i.2.1 = trunc i32 %xor90.i499.i.2.1 to i8
  %scevgep189.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %424, i64 0, i64 0, i64 2
  store i8 %conv91.i500.i.2.1, i8* %scevgep189.2.1, align 1
  %scevgep170.3.1 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 3
  %441 = load i8, i8* %scevgep170.3.1, align 1
  %conv44.i452.i.3.1 = zext i8 %441 to i32
  %scevgep173.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %420, i64 0, i64 0, i64 3
  %442 = load i8, i8* %scevgep173.3.1, align 1
  %conv49.i457.i.3.1 = zext i8 %442 to i32
  %xor.i458.i.3.1 = xor i32 %conv44.i452.i.3.1, %conv49.i457.i.3.1
  %conv50.i459.i.3.1 = trunc i32 %xor.i458.i.3.1 to i8
  %scevgep177.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %421, i64 0, i64 0, i64 3
  store i8 %conv50.i459.i.3.1, i8* %scevgep177.3.1, align 1
  %443 = load i8, i8* %arrayidx56.i465.i.1, align 1
  %conv57.i466.i.3.1 = zext i8 %443 to i32
  %xor58.i467.i.3.1 = xor i32 %conv57.i466.i.3.1, 1
  %conv59.i468.i.3.1 = trunc i32 %xor58.i467.i.3.1 to i8
  %scevgep174.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %420, i64 0, i64 0, i64 3
  %444 = load i8, i8* %scevgep174.3.1, align 1
  %call64.i473.i.3.1 = call zeroext i8 @mult(i8 zeroext %conv59.i468.i.3.1, i8 zeroext %444) #3
  %scevgep181.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %422, i64 0, i64 0, i64 3
  store i8 %call64.i473.i.3.1, i8* %scevgep181.3.1, align 1
  %445 = load i8, i8* %arrayidx70.i479.i.1, align 1
  %scevgep178.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %421, i64 0, i64 0, i64 3
  %446 = load i8, i8* %scevgep178.3.1, align 1
  %call75.i484.i.3.1 = call zeroext i8 @mult(i8 zeroext %445, i8 zeroext %446) #3
  %scevgep185.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %423, i64 0, i64 0, i64 3
  store i8 %call75.i484.i.3.1, i8* %scevgep185.3.1, align 1
  %scevgep182.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %422, i64 0, i64 0, i64 3
  %447 = load i8, i8* %scevgep182.3.1, align 1
  %conv84.i493.i.3.1 = zext i8 %447 to i32
  %scevgep186.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %423, i64 0, i64 0, i64 3
  %448 = load i8, i8* %scevgep186.3.1, align 1
  %conv89.i498.i.3.1 = zext i8 %448 to i32
  %xor90.i499.i.3.1 = xor i32 %conv84.i493.i.3.1, %conv89.i498.i.3.1
  %conv91.i500.i.3.1 = trunc i32 %xor90.i499.i.3.1 to i8
  %scevgep189.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %424, i64 0, i64 0, i64 3
  store i8 %conv91.i500.i.3.1, i8* %scevgep189.3.1, align 1
  %scevgep172.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %420, i64 0, i64 1, i64 0
  %449 = bitcast i8* %scevgep172.1 to [4 x [4 x i8]]*
  %scevgep176.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %421, i64 0, i64 1, i64 0
  %450 = bitcast i8* %scevgep176.1 to [4 x [4 x i8]]*
  %scevgep180.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %422, i64 0, i64 1, i64 0
  %451 = bitcast i8* %scevgep180.1 to [4 x [4 x i8]]*
  %scevgep184.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %423, i64 0, i64 1, i64 0
  %452 = bitcast i8* %scevgep184.1 to [4 x [4 x i8]]*
  %scevgep188.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %424, i64 0, i64 1, i64 0
  %453 = bitcast i8* %scevgep188.1 to [4 x [4 x i8]]*
  %arrayidx56.i465.i.2 = getelementptr inbounds i8, i8* %arraydecay15.i, i64 2
  %arrayidx70.i479.i.2 = getelementptr inbounds i8, i8* %arraydecay15.i, i64 2
  %scevgep170.2554 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 0
  %454 = load i8, i8* %scevgep170.2554, align 1
  %conv44.i452.i.2555 = zext i8 %454 to i32
  %scevgep173.2556 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %449, i64 0, i64 0, i64 0
  %455 = load i8, i8* %scevgep173.2556, align 1
  %conv49.i457.i.2557 = zext i8 %455 to i32
  %xor.i458.i.2558 = xor i32 %conv44.i452.i.2555, %conv49.i457.i.2557
  %conv50.i459.i.2559 = trunc i32 %xor.i458.i.2558 to i8
  %scevgep177.2560 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %450, i64 0, i64 0, i64 0
  store i8 %conv50.i459.i.2559, i8* %scevgep177.2560, align 1
  %456 = load i8, i8* %arrayidx56.i465.i.2, align 1
  %conv57.i466.i.2561 = zext i8 %456 to i32
  %xor58.i467.i.2562 = xor i32 %conv57.i466.i.2561, 1
  %conv59.i468.i.2563 = trunc i32 %xor58.i467.i.2562 to i8
  %scevgep174.2564 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %449, i64 0, i64 0, i64 0
  %457 = load i8, i8* %scevgep174.2564, align 1
  %call64.i473.i.2565 = call zeroext i8 @mult(i8 zeroext %conv59.i468.i.2563, i8 zeroext %457) #3
  %scevgep181.2566 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %451, i64 0, i64 0, i64 0
  store i8 %call64.i473.i.2565, i8* %scevgep181.2566, align 1
  %458 = load i8, i8* %arrayidx70.i479.i.2, align 1
  %scevgep178.2567 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %450, i64 0, i64 0, i64 0
  %459 = load i8, i8* %scevgep178.2567, align 1
  %call75.i484.i.2568 = call zeroext i8 @mult(i8 zeroext %458, i8 zeroext %459) #3
  %scevgep185.2569 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %452, i64 0, i64 0, i64 0
  store i8 %call75.i484.i.2568, i8* %scevgep185.2569, align 1
  %scevgep182.2570 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %451, i64 0, i64 0, i64 0
  %460 = load i8, i8* %scevgep182.2570, align 1
  %conv84.i493.i.2571 = zext i8 %460 to i32
  %scevgep186.2572 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %452, i64 0, i64 0, i64 0
  %461 = load i8, i8* %scevgep186.2572, align 1
  %conv89.i498.i.2573 = zext i8 %461 to i32
  %xor90.i499.i.2574 = xor i32 %conv84.i493.i.2571, %conv89.i498.i.2573
  %conv91.i500.i.2575 = trunc i32 %xor90.i499.i.2574 to i8
  %scevgep189.2576 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %453, i64 0, i64 0, i64 0
  store i8 %conv91.i500.i.2575, i8* %scevgep189.2576, align 1
  %scevgep170.1.2 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 1
  %462 = load i8, i8* %scevgep170.1.2, align 1
  %conv44.i452.i.1.2 = zext i8 %462 to i32
  %scevgep173.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %449, i64 0, i64 0, i64 1
  %463 = load i8, i8* %scevgep173.1.2, align 1
  %conv49.i457.i.1.2 = zext i8 %463 to i32
  %xor.i458.i.1.2 = xor i32 %conv44.i452.i.1.2, %conv49.i457.i.1.2
  %conv50.i459.i.1.2 = trunc i32 %xor.i458.i.1.2 to i8
  %scevgep177.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %450, i64 0, i64 0, i64 1
  store i8 %conv50.i459.i.1.2, i8* %scevgep177.1.2, align 1
  %464 = load i8, i8* %arrayidx56.i465.i.2, align 1
  %conv57.i466.i.1.2 = zext i8 %464 to i32
  %xor58.i467.i.1.2 = xor i32 %conv57.i466.i.1.2, 1
  %conv59.i468.i.1.2 = trunc i32 %xor58.i467.i.1.2 to i8
  %scevgep174.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %449, i64 0, i64 0, i64 1
  %465 = load i8, i8* %scevgep174.1.2, align 1
  %call64.i473.i.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i468.i.1.2, i8 zeroext %465) #3
  %scevgep181.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %451, i64 0, i64 0, i64 1
  store i8 %call64.i473.i.1.2, i8* %scevgep181.1.2, align 1
  %466 = load i8, i8* %arrayidx70.i479.i.2, align 1
  %scevgep178.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %450, i64 0, i64 0, i64 1
  %467 = load i8, i8* %scevgep178.1.2, align 1
  %call75.i484.i.1.2 = call zeroext i8 @mult(i8 zeroext %466, i8 zeroext %467) #3
  %scevgep185.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %452, i64 0, i64 0, i64 1
  store i8 %call75.i484.i.1.2, i8* %scevgep185.1.2, align 1
  %scevgep182.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %451, i64 0, i64 0, i64 1
  %468 = load i8, i8* %scevgep182.1.2, align 1
  %conv84.i493.i.1.2 = zext i8 %468 to i32
  %scevgep186.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %452, i64 0, i64 0, i64 1
  %469 = load i8, i8* %scevgep186.1.2, align 1
  %conv89.i498.i.1.2 = zext i8 %469 to i32
  %xor90.i499.i.1.2 = xor i32 %conv84.i493.i.1.2, %conv89.i498.i.1.2
  %conv91.i500.i.1.2 = trunc i32 %xor90.i499.i.1.2 to i8
  %scevgep189.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %453, i64 0, i64 0, i64 1
  store i8 %conv91.i500.i.1.2, i8* %scevgep189.1.2, align 1
  %scevgep170.3.2 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 3
  %470 = load i8, i8* %scevgep170.3.2, align 1
  %conv44.i452.i.3.2 = zext i8 %470 to i32
  %scevgep173.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %449, i64 0, i64 0, i64 3
  %471 = load i8, i8* %scevgep173.3.2, align 1
  %conv49.i457.i.3.2 = zext i8 %471 to i32
  %xor.i458.i.3.2 = xor i32 %conv44.i452.i.3.2, %conv49.i457.i.3.2
  %conv50.i459.i.3.2 = trunc i32 %xor.i458.i.3.2 to i8
  %scevgep177.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %450, i64 0, i64 0, i64 3
  store i8 %conv50.i459.i.3.2, i8* %scevgep177.3.2, align 1
  %472 = load i8, i8* %arrayidx56.i465.i.2, align 1
  %conv57.i466.i.3.2 = zext i8 %472 to i32
  %xor58.i467.i.3.2 = xor i32 %conv57.i466.i.3.2, 1
  %conv59.i468.i.3.2 = trunc i32 %xor58.i467.i.3.2 to i8
  %scevgep174.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %449, i64 0, i64 0, i64 3
  %473 = load i8, i8* %scevgep174.3.2, align 1
  %call64.i473.i.3.2 = call zeroext i8 @mult(i8 zeroext %conv59.i468.i.3.2, i8 zeroext %473) #3
  %scevgep181.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %451, i64 0, i64 0, i64 3
  store i8 %call64.i473.i.3.2, i8* %scevgep181.3.2, align 1
  %474 = load i8, i8* %arrayidx70.i479.i.2, align 1
  %scevgep178.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %450, i64 0, i64 0, i64 3
  %475 = load i8, i8* %scevgep178.3.2, align 1
  %call75.i484.i.3.2 = call zeroext i8 @mult(i8 zeroext %474, i8 zeroext %475) #3
  %scevgep185.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %452, i64 0, i64 0, i64 3
  store i8 %call75.i484.i.3.2, i8* %scevgep185.3.2, align 1
  %scevgep182.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %451, i64 0, i64 0, i64 3
  %476 = load i8, i8* %scevgep182.3.2, align 1
  %conv84.i493.i.3.2 = zext i8 %476 to i32
  %scevgep186.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %452, i64 0, i64 0, i64 3
  %477 = load i8, i8* %scevgep186.3.2, align 1
  %conv89.i498.i.3.2 = zext i8 %477 to i32
  %xor90.i499.i.3.2 = xor i32 %conv84.i493.i.3.2, %conv89.i498.i.3.2
  %conv91.i500.i.3.2 = trunc i32 %xor90.i499.i.3.2 to i8
  %scevgep189.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %453, i64 0, i64 0, i64 3
  store i8 %conv91.i500.i.3.2, i8* %scevgep189.3.2, align 1
  %scevgep172.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %449, i64 0, i64 1, i64 0
  %478 = bitcast i8* %scevgep172.2 to [4 x [4 x i8]]*
  %scevgep176.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %450, i64 0, i64 1, i64 0
  %479 = bitcast i8* %scevgep176.2 to [4 x [4 x i8]]*
  %scevgep180.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %451, i64 0, i64 1, i64 0
  %480 = bitcast i8* %scevgep180.2 to [4 x [4 x i8]]*
  %scevgep184.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %452, i64 0, i64 1, i64 0
  %481 = bitcast i8* %scevgep184.2 to [4 x [4 x i8]]*
  %scevgep188.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %453, i64 0, i64 1, i64 0
  %482 = bitcast i8* %scevgep188.2 to [4 x [4 x i8]]*
  %arrayidx56.i465.i.3 = getelementptr inbounds i8, i8* %arraydecay15.i, i64 3
  %arrayidx70.i479.i.3 = getelementptr inbounds i8, i8* %arraydecay15.i, i64 3
  %scevgep170.3581 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 0
  %483 = load i8, i8* %scevgep170.3581, align 1
  %conv44.i452.i.3582 = zext i8 %483 to i32
  %scevgep173.3583 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %478, i64 0, i64 0, i64 0
  %484 = load i8, i8* %scevgep173.3583, align 1
  %conv49.i457.i.3584 = zext i8 %484 to i32
  %xor.i458.i.3585 = xor i32 %conv44.i452.i.3582, %conv49.i457.i.3584
  %conv50.i459.i.3586 = trunc i32 %xor.i458.i.3585 to i8
  %scevgep177.3587 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %479, i64 0, i64 0, i64 0
  store i8 %conv50.i459.i.3586, i8* %scevgep177.3587, align 1
  %485 = load i8, i8* %arrayidx56.i465.i.3, align 1
  %conv57.i466.i.3588 = zext i8 %485 to i32
  %xor58.i467.i.3589 = xor i32 %conv57.i466.i.3588, 1
  %conv59.i468.i.3590 = trunc i32 %xor58.i467.i.3589 to i8
  %scevgep174.3591 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %478, i64 0, i64 0, i64 0
  %486 = load i8, i8* %scevgep174.3591, align 1
  %call64.i473.i.3592 = call zeroext i8 @mult(i8 zeroext %conv59.i468.i.3590, i8 zeroext %486) #3
  %scevgep181.3593 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %480, i64 0, i64 0, i64 0
  store i8 %call64.i473.i.3592, i8* %scevgep181.3593, align 1
  %487 = load i8, i8* %arrayidx70.i479.i.3, align 1
  %scevgep178.3594 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %479, i64 0, i64 0, i64 0
  %488 = load i8, i8* %scevgep178.3594, align 1
  %call75.i484.i.3595 = call zeroext i8 @mult(i8 zeroext %487, i8 zeroext %488) #3
  %scevgep185.3596 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %481, i64 0, i64 0, i64 0
  store i8 %call75.i484.i.3595, i8* %scevgep185.3596, align 1
  %scevgep182.3597 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %480, i64 0, i64 0, i64 0
  %489 = load i8, i8* %scevgep182.3597, align 1
  %conv84.i493.i.3598 = zext i8 %489 to i32
  %scevgep186.3599 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %481, i64 0, i64 0, i64 0
  %490 = load i8, i8* %scevgep186.3599, align 1
  %conv89.i498.i.3600 = zext i8 %490 to i32
  %xor90.i499.i.3601 = xor i32 %conv84.i493.i.3598, %conv89.i498.i.3600
  %conv91.i500.i.3602 = trunc i32 %xor90.i499.i.3601 to i8
  %scevgep189.3603 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %482, i64 0, i64 0, i64 0
  store i8 %conv91.i500.i.3602, i8* %scevgep189.3603, align 1
  %scevgep170.1.3 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 1
  %491 = load i8, i8* %scevgep170.1.3, align 1
  %conv44.i452.i.1.3 = zext i8 %491 to i32
  %scevgep173.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %478, i64 0, i64 0, i64 1
  %492 = load i8, i8* %scevgep173.1.3, align 1
  %conv49.i457.i.1.3 = zext i8 %492 to i32
  %xor.i458.i.1.3 = xor i32 %conv44.i452.i.1.3, %conv49.i457.i.1.3
  %conv50.i459.i.1.3 = trunc i32 %xor.i458.i.1.3 to i8
  %scevgep177.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %479, i64 0, i64 0, i64 1
  store i8 %conv50.i459.i.1.3, i8* %scevgep177.1.3, align 1
  %493 = load i8, i8* %arrayidx56.i465.i.3, align 1
  %conv57.i466.i.1.3 = zext i8 %493 to i32
  %xor58.i467.i.1.3 = xor i32 %conv57.i466.i.1.3, 1
  %conv59.i468.i.1.3 = trunc i32 %xor58.i467.i.1.3 to i8
  %scevgep174.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %478, i64 0, i64 0, i64 1
  %494 = load i8, i8* %scevgep174.1.3, align 1
  %call64.i473.i.1.3 = call zeroext i8 @mult(i8 zeroext %conv59.i468.i.1.3, i8 zeroext %494) #3
  %scevgep181.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %480, i64 0, i64 0, i64 1
  store i8 %call64.i473.i.1.3, i8* %scevgep181.1.3, align 1
  %495 = load i8, i8* %arrayidx70.i479.i.3, align 1
  %scevgep178.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %479, i64 0, i64 0, i64 1
  %496 = load i8, i8* %scevgep178.1.3, align 1
  %call75.i484.i.1.3 = call zeroext i8 @mult(i8 zeroext %495, i8 zeroext %496) #3
  %scevgep185.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %481, i64 0, i64 0, i64 1
  store i8 %call75.i484.i.1.3, i8* %scevgep185.1.3, align 1
  %scevgep182.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %480, i64 0, i64 0, i64 1
  %497 = load i8, i8* %scevgep182.1.3, align 1
  %conv84.i493.i.1.3 = zext i8 %497 to i32
  %scevgep186.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %481, i64 0, i64 0, i64 1
  %498 = load i8, i8* %scevgep186.1.3, align 1
  %conv89.i498.i.1.3 = zext i8 %498 to i32
  %xor90.i499.i.1.3 = xor i32 %conv84.i493.i.1.3, %conv89.i498.i.1.3
  %conv91.i500.i.1.3 = trunc i32 %xor90.i499.i.1.3 to i8
  %scevgep189.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %482, i64 0, i64 0, i64 1
  store i8 %conv91.i500.i.1.3, i8* %scevgep189.1.3, align 1
  %scevgep170.2.3 = getelementptr [4 x i8], [4 x i8]* %w.i, i64 0, i64 2
  %499 = load i8, i8* %scevgep170.2.3, align 1
  %conv44.i452.i.2.3 = zext i8 %499 to i32
  %scevgep173.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %478, i64 0, i64 0, i64 2
  %500 = load i8, i8* %scevgep173.2.3, align 1
  %conv49.i457.i.2.3 = zext i8 %500 to i32
  %xor.i458.i.2.3 = xor i32 %conv44.i452.i.2.3, %conv49.i457.i.2.3
  %conv50.i459.i.2.3 = trunc i32 %xor.i458.i.2.3 to i8
  %scevgep177.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %479, i64 0, i64 0, i64 2
  store i8 %conv50.i459.i.2.3, i8* %scevgep177.2.3, align 1
  %501 = load i8, i8* %arrayidx56.i465.i.3, align 1
  %conv57.i466.i.2.3 = zext i8 %501 to i32
  %xor58.i467.i.2.3 = xor i32 %conv57.i466.i.2.3, 1
  %conv59.i468.i.2.3 = trunc i32 %xor58.i467.i.2.3 to i8
  %scevgep174.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %478, i64 0, i64 0, i64 2
  %502 = load i8, i8* %scevgep174.2.3, align 1
  %call64.i473.i.2.3 = call zeroext i8 @mult(i8 zeroext %conv59.i468.i.2.3, i8 zeroext %502) #3
  %scevgep181.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %480, i64 0, i64 0, i64 2
  store i8 %call64.i473.i.2.3, i8* %scevgep181.2.3, align 1
  %503 = load i8, i8* %arrayidx70.i479.i.3, align 1
  %scevgep178.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %479, i64 0, i64 0, i64 2
  %504 = load i8, i8* %scevgep178.2.3, align 1
  %call75.i484.i.2.3 = call zeroext i8 @mult(i8 zeroext %503, i8 zeroext %504) #3
  %scevgep185.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %481, i64 0, i64 0, i64 2
  store i8 %call75.i484.i.2.3, i8* %scevgep185.2.3, align 1
  %scevgep182.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %480, i64 0, i64 0, i64 2
  %505 = load i8, i8* %scevgep182.2.3, align 1
  %conv84.i493.i.2.3 = zext i8 %505 to i32
  %scevgep186.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %481, i64 0, i64 0, i64 2
  %506 = load i8, i8* %scevgep186.2.3, align 1
  %conv89.i498.i.2.3 = zext i8 %506 to i32
  %xor90.i499.i.2.3 = xor i32 %conv84.i493.i.2.3, %conv89.i498.i.2.3
  %conv91.i500.i.2.3 = trunc i32 %xor90.i499.i.2.3 to i8
  %scevgep189.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %482, i64 0, i64 0, i64 2
  store i8 %conv91.i500.i.2.3, i8* %scevgep189.2.3, align 1
  %507 = load i8, i8* %arraydecay15.i, align 1
  %508 = load i8, i8* %arraydecay16.i, align 1
  %call111.i517.i = call zeroext i8 @mult(i8 zeroext %507, i8 zeroext %508) #3
  store i8 %call111.i517.i, i8* %arraydecay17.i, align 1
  %scevgep160.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  %509 = load i8, i8* %scevgep160.1, align 1
  %conv126.i529.i.1 = zext i8 %509 to i32
  %510 = load i8, i8* %arraydecay17.i, align 1
  %conv129.i532.i.1 = zext i8 %510 to i32
  %xor130.i533.i.1 = xor i32 %conv129.i532.i.1, %conv126.i529.i.1
  %conv131.i534.i.1 = trunc i32 %xor130.i533.i.1 to i8
  store i8 %conv131.i534.i.1, i8* %arraydecay17.i, align 1
  %scevgep160.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 2
  %511 = load i8, i8* %scevgep160.2, align 1
  %conv126.i529.i.2 = zext i8 %511 to i32
  %512 = load i8, i8* %arraydecay17.i, align 1
  %conv129.i532.i.2 = zext i8 %512 to i32
  %xor130.i533.i.2 = xor i32 %conv129.i532.i.2, %conv126.i529.i.2
  %conv131.i534.i.2 = trunc i32 %xor130.i533.i.2 to i8
  store i8 %conv131.i534.i.2, i8* %arraydecay17.i, align 1
  %scevgep160.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 3
  %513 = load i8, i8* %scevgep160.3, align 1
  %conv126.i529.i.3 = zext i8 %513 to i32
  %514 = load i8, i8* %arraydecay17.i, align 1
  %conv129.i532.i.3 = zext i8 %514 to i32
  %xor130.i533.i.3 = xor i32 %conv129.i532.i.3, %conv126.i529.i.3
  %conv131.i534.i.3 = trunc i32 %xor130.i533.i.3 to i8
  store i8 %conv131.i534.i.3, i8* %arraydecay17.i, align 1
  %scevgep159 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %515 = bitcast i8* %scevgep159 to [4 x [4 x i8]]*
  %arrayidx108.i514.i.1 = getelementptr inbounds i8, i8* %arraydecay15.i, i64 1
  %516 = load i8, i8* %arrayidx108.i514.i.1, align 1
  %arrayidx110.i516.i.1 = getelementptr inbounds i8, i8* %arraydecay16.i, i64 1
  %517 = load i8, i8* %arrayidx110.i516.i.1, align 1
  %call111.i517.i.1 = call zeroext i8 @mult(i8 zeroext %516, i8 zeroext %517) #3
  %arrayidx113.i519.i.1 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 1
  store i8 %call111.i517.i.1, i8* %arrayidx113.i519.i.1, align 1
  %arrayidx128.i531.i.1 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 1
  %scevgep160.1500 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %515, i64 0, i64 0, i64 0
  %518 = load i8, i8* %scevgep160.1500, align 1
  %conv126.i529.i.1501 = zext i8 %518 to i32
  %519 = load i8, i8* %arrayidx128.i531.i.1, align 1
  %conv129.i532.i.1502 = zext i8 %519 to i32
  %xor130.i533.i.1503 = xor i32 %conv129.i532.i.1502, %conv126.i529.i.1501
  %conv131.i534.i.1504 = trunc i32 %xor130.i533.i.1503 to i8
  store i8 %conv131.i534.i.1504, i8* %arrayidx128.i531.i.1, align 1
  %scevgep160.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %515, i64 0, i64 0, i64 2
  %520 = load i8, i8* %scevgep160.2.1, align 1
  %conv126.i529.i.2.1 = zext i8 %520 to i32
  %521 = load i8, i8* %arrayidx128.i531.i.1, align 1
  %conv129.i532.i.2.1 = zext i8 %521 to i32
  %xor130.i533.i.2.1 = xor i32 %conv129.i532.i.2.1, %conv126.i529.i.2.1
  %conv131.i534.i.2.1 = trunc i32 %xor130.i533.i.2.1 to i8
  store i8 %conv131.i534.i.2.1, i8* %arrayidx128.i531.i.1, align 1
  %scevgep160.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %515, i64 0, i64 0, i64 3
  %522 = load i8, i8* %scevgep160.3.1, align 1
  %conv126.i529.i.3.1 = zext i8 %522 to i32
  %523 = load i8, i8* %arrayidx128.i531.i.1, align 1
  %conv129.i532.i.3.1 = zext i8 %523 to i32
  %xor130.i533.i.3.1 = xor i32 %conv129.i532.i.3.1, %conv126.i529.i.3.1
  %conv131.i534.i.3.1 = trunc i32 %xor130.i533.i.3.1 to i8
  store i8 %conv131.i534.i.3.1, i8* %arrayidx128.i531.i.1, align 1
  %scevgep159.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %515, i64 0, i64 1, i64 0
  %524 = bitcast i8* %scevgep159.1 to [4 x [4 x i8]]*
  %arrayidx108.i514.i.2 = getelementptr inbounds i8, i8* %arraydecay15.i, i64 2
  %525 = load i8, i8* %arrayidx108.i514.i.2, align 1
  %arrayidx110.i516.i.2 = getelementptr inbounds i8, i8* %arraydecay16.i, i64 2
  %526 = load i8, i8* %arrayidx110.i516.i.2, align 1
  %call111.i517.i.2 = call zeroext i8 @mult(i8 zeroext %525, i8 zeroext %526) #3
  %arrayidx113.i519.i.2 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 2
  store i8 %call111.i517.i.2, i8* %arrayidx113.i519.i.2, align 1
  %arrayidx128.i531.i.2 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 2
  %scevgep160.2509 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %524, i64 0, i64 0, i64 0
  %527 = load i8, i8* %scevgep160.2509, align 1
  %conv126.i529.i.2510 = zext i8 %527 to i32
  %528 = load i8, i8* %arrayidx128.i531.i.2, align 1
  %conv129.i532.i.2511 = zext i8 %528 to i32
  %xor130.i533.i.2512 = xor i32 %conv129.i532.i.2511, %conv126.i529.i.2510
  %conv131.i534.i.2513 = trunc i32 %xor130.i533.i.2512 to i8
  store i8 %conv131.i534.i.2513, i8* %arrayidx128.i531.i.2, align 1
  %scevgep160.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %524, i64 0, i64 0, i64 1
  %529 = load i8, i8* %scevgep160.1.2, align 1
  %conv126.i529.i.1.2 = zext i8 %529 to i32
  %530 = load i8, i8* %arrayidx128.i531.i.2, align 1
  %conv129.i532.i.1.2 = zext i8 %530 to i32
  %xor130.i533.i.1.2 = xor i32 %conv129.i532.i.1.2, %conv126.i529.i.1.2
  %conv131.i534.i.1.2 = trunc i32 %xor130.i533.i.1.2 to i8
  store i8 %conv131.i534.i.1.2, i8* %arrayidx128.i531.i.2, align 1
  %scevgep160.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %524, i64 0, i64 0, i64 3
  %531 = load i8, i8* %scevgep160.3.2, align 1
  %conv126.i529.i.3.2 = zext i8 %531 to i32
  %532 = load i8, i8* %arrayidx128.i531.i.2, align 1
  %conv129.i532.i.3.2 = zext i8 %532 to i32
  %xor130.i533.i.3.2 = xor i32 %conv129.i532.i.3.2, %conv126.i529.i.3.2
  %conv131.i534.i.3.2 = trunc i32 %xor130.i533.i.3.2 to i8
  store i8 %conv131.i534.i.3.2, i8* %arrayidx128.i531.i.2, align 1
  %scevgep159.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %524, i64 0, i64 1, i64 0
  %533 = bitcast i8* %scevgep159.2 to [4 x [4 x i8]]*
  %arrayidx108.i514.i.3 = getelementptr inbounds i8, i8* %arraydecay15.i, i64 3
  %534 = load i8, i8* %arrayidx108.i514.i.3, align 1
  %arrayidx110.i516.i.3 = getelementptr inbounds i8, i8* %arraydecay16.i, i64 3
  %535 = load i8, i8* %arrayidx110.i516.i.3, align 1
  %call111.i517.i.3 = call zeroext i8 @mult(i8 zeroext %534, i8 zeroext %535) #3
  %arrayidx113.i519.i.3 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 3
  store i8 %call111.i517.i.3, i8* %arrayidx113.i519.i.3, align 1
  %arrayidx128.i531.i.3 = getelementptr inbounds i8, i8* %arraydecay17.i, i64 3
  %scevgep160.3518 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %533, i64 0, i64 0, i64 0
  %536 = load i8, i8* %scevgep160.3518, align 1
  %conv126.i529.i.3519 = zext i8 %536 to i32
  %537 = load i8, i8* %arrayidx128.i531.i.3, align 1
  %conv129.i532.i.3520 = zext i8 %537 to i32
  %xor130.i533.i.3521 = xor i32 %conv129.i532.i.3520, %conv126.i529.i.3519
  %conv131.i534.i.3522 = trunc i32 %xor130.i533.i.3521 to i8
  store i8 %conv131.i534.i.3522, i8* %arrayidx128.i531.i.3, align 1
  %scevgep160.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %533, i64 0, i64 0, i64 1
  %538 = load i8, i8* %scevgep160.1.3, align 1
  %conv126.i529.i.1.3 = zext i8 %538 to i32
  %539 = load i8, i8* %arrayidx128.i531.i.3, align 1
  %conv129.i532.i.1.3 = zext i8 %539 to i32
  %xor130.i533.i.1.3 = xor i32 %conv129.i532.i.1.3, %conv126.i529.i.1.3
  %conv131.i534.i.1.3 = trunc i32 %xor130.i533.i.1.3 to i8
  store i8 %conv131.i534.i.1.3, i8* %arrayidx128.i531.i.3, align 1
  %scevgep160.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %533, i64 0, i64 0, i64 2
  %540 = load i8, i8* %scevgep160.2.3, align 1
  %conv126.i529.i.2.3 = zext i8 %540 to i32
  %541 = load i8, i8* %arrayidx128.i531.i.3, align 1
  %conv129.i532.i.2.3 = zext i8 %541 to i32
  %xor130.i533.i.2.3 = xor i32 %conv129.i532.i.2.3, %conv126.i529.i.2.3
  %conv131.i534.i.2.3 = trunc i32 %xor130.i533.i.2.3 to i8
  store i8 %conv131.i534.i.2.3, i8* %arrayidx128.i531.i.3, align 1
  %call139.i540.i = call zeroext i8 @mult(i8 zeroext %call.i387.i, i8 zeroext %call1.i388.i) #3
  %conv140.i541.i = zext i8 %call139.i540.i to i32
  %scevgep150 = getelementptr [4 x i8], [4 x i8]* %m.i, i64 0, i64 0
  %542 = load i8, i8* %scevgep150, align 1
  %scevgep150.1 = getelementptr [4 x i8], [4 x i8]* %m.i, i64 0, i64 1
  %543 = load i8, i8* %scevgep150.1, align 1
  %conv.i.i172.i548.i.1 = zext i8 %543 to i32
  %conv1.i.i173.i549.i.1 = zext i8 %542 to i32
  %xor.i.i174.i550.i.1 = xor i32 %conv1.i.i173.i549.i.1, %conv.i.i172.i548.i.1
  %conv2.i.i175.i551.i.1 = trunc i32 %xor.i.i174.i550.i.1 to i8
  %scevgep150.2 = getelementptr [4 x i8], [4 x i8]* %m.i, i64 0, i64 2
  %544 = load i8, i8* %scevgep150.2, align 1
  %conv.i.i172.i548.i.2 = zext i8 %544 to i32
  %conv1.i.i173.i549.i.2 = zext i8 %conv2.i.i175.i551.i.1 to i32
  %xor.i.i174.i550.i.2 = xor i32 %conv1.i.i173.i549.i.2, %conv.i.i172.i548.i.2
  %conv2.i.i175.i551.i.2 = trunc i32 %xor.i.i174.i550.i.2 to i8
  %scevgep150.3 = getelementptr [4 x i8], [4 x i8]* %m.i, i64 0, i64 3
  %545 = load i8, i8* %scevgep150.3, align 1
  %conv.i.i172.i548.i.3 = zext i8 %545 to i32
  %conv1.i.i173.i549.i.3 = zext i8 %conv2.i.i175.i551.i.2 to i32
  %xor.i.i174.i550.i.3 = xor i32 %conv1.i.i173.i549.i.3, %conv.i.i172.i548.i.3
  %conv2.i.i175.i551.i.3 = trunc i32 %xor.i.i174.i550.i.3 to i8
  %conv142.i554.i = zext i8 %conv2.i.i175.i551.i.3 to i32
  %cmp143.i555.i = icmp eq i32 %conv140.i541.i, %conv142.i554.i
  call void @assert(i1 zeroext %cmp143.i555.i) #3
  %arraydecay18.i = getelementptr inbounds [4 x i8], [4 x i8]* %m.i, i64 0, i64 0
  %arraydecay19.i = getelementptr inbounds [4 x i8], [4 x i8]* %z.i, i64 0, i64 0
  %call.i588.i = call zeroext i8 (...) @rand() #3
  %call1.i589.i = call zeroext i8 (...) @rand() #3
  %conv.i590.i = zext i8 %call.i588.i to i32
  %scevgep146 = getelementptr [4 x i8], [4 x i8]* %m.i, i64 0, i64 0
  %546 = load i8, i8* %scevgep146, align 1
  %scevgep146.1 = getelementptr [4 x i8], [4 x i8]* %m.i, i64 0, i64 1
  %547 = load i8, i8* %scevgep146.1, align 1
  %conv.i.i.i596.i.1 = zext i8 %547 to i32
  %conv1.i.i.i597.i.1 = zext i8 %546 to i32
  %xor.i.i.i598.i.1 = xor i32 %conv1.i.i.i597.i.1, %conv.i.i.i596.i.1
  %conv2.i.i.i599.i.1 = trunc i32 %xor.i.i.i598.i.1 to i8
  %scevgep146.2 = getelementptr [4 x i8], [4 x i8]* %m.i, i64 0, i64 2
  %548 = load i8, i8* %scevgep146.2, align 1
  %conv.i.i.i596.i.2 = zext i8 %548 to i32
  %conv1.i.i.i597.i.2 = zext i8 %conv2.i.i.i599.i.1 to i32
  %xor.i.i.i598.i.2 = xor i32 %conv1.i.i.i597.i.2, %conv.i.i.i596.i.2
  %conv2.i.i.i599.i.2 = trunc i32 %xor.i.i.i598.i.2 to i8
  %scevgep146.3 = getelementptr [4 x i8], [4 x i8]* %m.i, i64 0, i64 3
  %549 = load i8, i8* %scevgep146.3, align 1
  %conv.i.i.i596.i.3 = zext i8 %549 to i32
  %conv1.i.i.i597.i.3 = zext i8 %conv2.i.i.i599.i.2 to i32
  %xor.i.i.i598.i.3 = xor i32 %conv1.i.i.i597.i.3, %conv.i.i.i596.i.3
  %conv2.i.i.i599.i.3 = trunc i32 %xor.i.i.i598.i.3 to i8
  %conv3.i602.i = zext i8 %conv2.i.i.i599.i.3 to i32
  %cmp.i603.i = icmp eq i32 %conv.i590.i, %conv3.i602.i
  call void @assume(i1 zeroext %cmp.i603.i) #3
  %conv5.i604.i = zext i8 %call1.i589.i to i32
  %scevgep142 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 0
  %550 = load i8, i8* %scevgep142, align 1
  %scevgep142.1 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 1
  %551 = load i8, i8* %scevgep142.1, align 1
  %conv.i.i155.i611.i.1 = zext i8 %551 to i32
  %conv1.i.i156.i612.i.1 = zext i8 %550 to i32
  %xor.i.i157.i613.i.1 = xor i32 %conv1.i.i156.i612.i.1, %conv.i.i155.i611.i.1
  %conv2.i.i158.i614.i.1 = trunc i32 %xor.i.i157.i613.i.1 to i8
  %scevgep142.2 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 2
  %552 = load i8, i8* %scevgep142.2, align 1
  %conv.i.i155.i611.i.2 = zext i8 %552 to i32
  %conv1.i.i156.i612.i.2 = zext i8 %conv2.i.i158.i614.i.1 to i32
  %xor.i.i157.i613.i.2 = xor i32 %conv1.i.i156.i612.i.2, %conv.i.i155.i611.i.2
  %conv2.i.i158.i614.i.2 = trunc i32 %xor.i.i157.i613.i.2 to i8
  %scevgep142.3 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 3
  %553 = load i8, i8* %scevgep142.3, align 1
  %conv.i.i155.i611.i.3 = zext i8 %553 to i32
  %conv1.i.i156.i612.i.3 = zext i8 %conv2.i.i158.i614.i.2 to i32
  %xor.i.i157.i613.i.3 = xor i32 %conv1.i.i156.i612.i.3, %conv.i.i155.i611.i.3
  %conv2.i.i158.i614.i.3 = trunc i32 %xor.i.i157.i613.i.3 to i8
  %conv7.i617.i = zext i8 %conv2.i.i158.i614.i.3 to i32
  %cmp8.i618.i = icmp eq i32 %conv5.i604.i, %conv7.i617.i
  call void @assume(i1 zeroext %cmp8.i618.i) #3
  %call16.i626.i = call zeroext i8 (...) @rand() #3
  %scevgep132 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  store i8 %call16.i626.i, i8* %scevgep132, align 1
  %scevgep133 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %554 = load i8, i8* %scevgep133, align 1
  %scevgep134 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  store i8 %554, i8* %scevgep134, align 1
  %call16.i626.i.1819 = call zeroext i8 (...) @rand() #3
  %scevgep132.1820 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  store i8 %call16.i626.i.1819, i8* %scevgep132.1820, align 1
  %scevgep133.1821 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %555 = load i8, i8* %scevgep133.1821, align 1
  %scevgep134.1822 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 2, i64 0
  store i8 %555, i8* %scevgep134.1822, align 1
  %call16.i626.i.2824 = call zeroext i8 (...) @rand() #3
  %scevgep132.2825 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  store i8 %call16.i626.i.2824, i8* %scevgep132.2825, align 1
  %scevgep133.2826 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  %556 = load i8, i8* %scevgep133.2826, align 1
  %scevgep134.2827 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 3, i64 0
  store i8 %556, i8* %scevgep134.2827, align 1
  %scevgep129 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 1, i64 1
  %557 = bitcast i8* %scevgep129 to [4 x [4 x i8]]*
  %call16.i626.i.1 = call zeroext i8 (...) @rand() #3
  %scevgep132.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %557, i64 0, i64 0, i64 1
  store i8 %call16.i626.i.1, i8* %scevgep132.1, align 1
  %scevgep133.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %557, i64 0, i64 0, i64 1
  %558 = load i8, i8* %scevgep133.1, align 1
  %scevgep134.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %557, i64 0, i64 1, i64 0
  store i8 %558, i8* %scevgep134.1, align 1
  %call16.i626.i.1.1 = call zeroext i8 (...) @rand() #3
  %scevgep132.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %557, i64 0, i64 0, i64 2
  store i8 %call16.i626.i.1.1, i8* %scevgep132.1.1, align 1
  %scevgep133.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %557, i64 0, i64 0, i64 2
  %559 = load i8, i8* %scevgep133.1.1, align 1
  %scevgep134.1.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %557, i64 0, i64 2, i64 0
  store i8 %559, i8* %scevgep134.1.1, align 1
  %scevgep129.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %557, i64 0, i64 1, i64 1
  %560 = bitcast i8* %scevgep129.1 to [4 x [4 x i8]]*
  %call16.i626.i.2 = call zeroext i8 (...) @rand() #3
  %scevgep132.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %560, i64 0, i64 0, i64 1
  store i8 %call16.i626.i.2, i8* %scevgep132.2, align 1
  %scevgep133.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %560, i64 0, i64 0, i64 1
  %561 = load i8, i8* %scevgep133.2, align 1
  %scevgep134.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %560, i64 0, i64 1, i64 0
  store i8 %561, i8* %scevgep134.2, align 1
  %scevgep105.1 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 1
  %562 = load i8, i8* %scevgep105.1, align 1
  %conv44.i653.i.1 = zext i8 %562 to i32
  %scevgep108.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %563 = load i8, i8* %scevgep108.1, align 1
  %conv49.i658.i.1 = zext i8 %563 to i32
  %xor.i659.i.1 = xor i32 %conv44.i653.i.1, %conv49.i658.i.1
  %conv50.i660.i.1 = trunc i32 %xor.i659.i.1 to i8
  %scevgep112.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  store i8 %conv50.i660.i.1, i8* %scevgep112.1, align 1
  %564 = load i8, i8* %arraydecay18.i, align 1
  %conv57.i667.i.1 = zext i8 %564 to i32
  %xor58.i668.i.1 = xor i32 %conv57.i667.i.1, 1
  %conv59.i669.i.1 = trunc i32 %xor58.i668.i.1 to i8
  %scevgep109.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 1
  %565 = load i8, i8* %scevgep109.1, align 1
  %call64.i674.i.1 = call zeroext i8 @mult(i8 zeroext %conv59.i669.i.1, i8 zeroext %565) #3
  %scevgep116.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  store i8 %call64.i674.i.1, i8* %scevgep116.1, align 1
  %566 = load i8, i8* %arraydecay18.i, align 1
  %scevgep113.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 1
  %567 = load i8, i8* %scevgep113.1, align 1
  %call75.i685.i.1 = call zeroext i8 @mult(i8 zeroext %566, i8 zeroext %567) #3
  %scevgep120.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  store i8 %call75.i685.i.1, i8* %scevgep120.1, align 1
  %scevgep117.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 1
  %568 = load i8, i8* %scevgep117.1, align 1
  %conv84.i694.i.1 = zext i8 %568 to i32
  %scevgep121.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 1
  %569 = load i8, i8* %scevgep121.1, align 1
  %conv89.i699.i.1 = zext i8 %569 to i32
  %xor90.i700.i.1 = xor i32 %conv84.i694.i.1, %conv89.i699.i.1
  %conv91.i701.i.1 = trunc i32 %xor90.i700.i.1 to i8
  %scevgep124.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  store i8 %conv91.i701.i.1, i8* %scevgep124.1, align 1
  %scevgep105.2 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 2
  %570 = load i8, i8* %scevgep105.2, align 1
  %conv44.i653.i.2 = zext i8 %570 to i32
  %scevgep108.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %571 = load i8, i8* %scevgep108.2, align 1
  %conv49.i658.i.2 = zext i8 %571 to i32
  %xor.i659.i.2 = xor i32 %conv44.i653.i.2, %conv49.i658.i.2
  %conv50.i660.i.2 = trunc i32 %xor.i659.i.2 to i8
  %scevgep112.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 2
  store i8 %conv50.i660.i.2, i8* %scevgep112.2, align 1
  %572 = load i8, i8* %arraydecay18.i, align 1
  %conv57.i667.i.2 = zext i8 %572 to i32
  %xor58.i668.i.2 = xor i32 %conv57.i667.i.2, 1
  %conv59.i669.i.2 = trunc i32 %xor58.i668.i.2 to i8
  %scevgep109.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 2
  %573 = load i8, i8* %scevgep109.2, align 1
  %call64.i674.i.2 = call zeroext i8 @mult(i8 zeroext %conv59.i669.i.2, i8 zeroext %573) #3
  %scevgep116.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 2
  store i8 %call64.i674.i.2, i8* %scevgep116.2, align 1
  %574 = load i8, i8* %arraydecay18.i, align 1
  %scevgep113.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 2
  %575 = load i8, i8* %scevgep113.2, align 1
  %call75.i685.i.2 = call zeroext i8 @mult(i8 zeroext %574, i8 zeroext %575) #3
  %scevgep120.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 2
  store i8 %call75.i685.i.2, i8* %scevgep120.2, align 1
  %scevgep117.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 2
  %576 = load i8, i8* %scevgep117.2, align 1
  %conv84.i694.i.2 = zext i8 %576 to i32
  %scevgep121.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 2
  %577 = load i8, i8* %scevgep121.2, align 1
  %conv89.i699.i.2 = zext i8 %577 to i32
  %xor90.i700.i.2 = xor i32 %conv84.i694.i.2, %conv89.i699.i.2
  %conv91.i701.i.2 = trunc i32 %xor90.i700.i.2 to i8
  %scevgep124.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 2
  store i8 %conv91.i701.i.2, i8* %scevgep124.2, align 1
  %scevgep105.3 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 3
  %578 = load i8, i8* %scevgep105.3, align 1
  %conv44.i653.i.3 = zext i8 %578 to i32
  %scevgep108.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  %579 = load i8, i8* %scevgep108.3, align 1
  %conv49.i658.i.3 = zext i8 %579 to i32
  %xor.i659.i.3 = xor i32 %conv44.i653.i.3, %conv49.i658.i.3
  %conv50.i660.i.3 = trunc i32 %xor.i659.i.3 to i8
  %scevgep112.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 3
  store i8 %conv50.i660.i.3, i8* %scevgep112.3, align 1
  %580 = load i8, i8* %arraydecay18.i, align 1
  %conv57.i667.i.3 = zext i8 %580 to i32
  %xor58.i668.i.3 = xor i32 %conv57.i667.i.3, 1
  %conv59.i669.i.3 = trunc i32 %xor58.i668.i.3 to i8
  %scevgep109.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 0, i64 3
  %581 = load i8, i8* %scevgep109.3, align 1
  %call64.i674.i.3 = call zeroext i8 @mult(i8 zeroext %conv59.i669.i.3, i8 zeroext %581) #3
  %scevgep116.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 3
  store i8 %call64.i674.i.3, i8* %scevgep116.3, align 1
  %582 = load i8, i8* %arraydecay18.i, align 1
  %scevgep113.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 0, i64 3
  %583 = load i8, i8* %scevgep113.3, align 1
  %call75.i685.i.3 = call zeroext i8 @mult(i8 zeroext %582, i8 zeroext %583) #3
  %scevgep120.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 3
  store i8 %call75.i685.i.3, i8* %scevgep120.3, align 1
  %scevgep117.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 0, i64 3
  %584 = load i8, i8* %scevgep117.3, align 1
  %conv84.i694.i.3 = zext i8 %584 to i32
  %scevgep121.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 0, i64 3
  %585 = load i8, i8* %scevgep121.3, align 1
  %conv89.i699.i.3 = zext i8 %585 to i32
  %xor90.i700.i.3 = xor i32 %conv84.i694.i.3, %conv89.i699.i.3
  %conv91.i701.i.3 = trunc i32 %xor90.i700.i.3 to i8
  %scevgep124.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 3
  store i8 %conv91.i701.i.3, i8* %scevgep124.3, align 1
  %scevgep107 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %r.i.i, i64 0, i64 1, i64 0
  %586 = bitcast i8* %scevgep107 to [4 x [4 x i8]]*
  %scevgep111 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %s.i.i, i64 0, i64 1, i64 0
  %587 = bitcast i8* %scevgep111 to [4 x [4 x i8]]*
  %scevgep115 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p0.i.i, i64 0, i64 1, i64 0
  %588 = bitcast i8* %scevgep115 to [4 x [4 x i8]]*
  %scevgep119 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %p1.i.i, i64 0, i64 1, i64 0
  %589 = bitcast i8* %scevgep119 to [4 x [4 x i8]]*
  %scevgep123 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %590 = bitcast i8* %scevgep123 to [4 x [4 x i8]]*
  %arrayidx56.i666.i.1 = getelementptr inbounds i8, i8* %arraydecay18.i, i64 1
  %arrayidx70.i680.i.1 = getelementptr inbounds i8, i8* %arraydecay18.i, i64 1
  %scevgep105.1419 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 0
  %591 = load i8, i8* %scevgep105.1419, align 1
  %conv44.i653.i.1420 = zext i8 %591 to i32
  %scevgep108.1421 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %586, i64 0, i64 0, i64 0
  %592 = load i8, i8* %scevgep108.1421, align 1
  %conv49.i658.i.1422 = zext i8 %592 to i32
  %xor.i659.i.1423 = xor i32 %conv44.i653.i.1420, %conv49.i658.i.1422
  %conv50.i660.i.1424 = trunc i32 %xor.i659.i.1423 to i8
  %scevgep112.1425 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %587, i64 0, i64 0, i64 0
  store i8 %conv50.i660.i.1424, i8* %scevgep112.1425, align 1
  %593 = load i8, i8* %arrayidx56.i666.i.1, align 1
  %conv57.i667.i.1426 = zext i8 %593 to i32
  %xor58.i668.i.1427 = xor i32 %conv57.i667.i.1426, 1
  %conv59.i669.i.1428 = trunc i32 %xor58.i668.i.1427 to i8
  %scevgep109.1429 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %586, i64 0, i64 0, i64 0
  %594 = load i8, i8* %scevgep109.1429, align 1
  %call64.i674.i.1430 = call zeroext i8 @mult(i8 zeroext %conv59.i669.i.1428, i8 zeroext %594) #3
  %scevgep116.1431 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %588, i64 0, i64 0, i64 0
  store i8 %call64.i674.i.1430, i8* %scevgep116.1431, align 1
  %595 = load i8, i8* %arrayidx70.i680.i.1, align 1
  %scevgep113.1432 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %587, i64 0, i64 0, i64 0
  %596 = load i8, i8* %scevgep113.1432, align 1
  %call75.i685.i.1433 = call zeroext i8 @mult(i8 zeroext %595, i8 zeroext %596) #3
  %scevgep120.1434 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %589, i64 0, i64 0, i64 0
  store i8 %call75.i685.i.1433, i8* %scevgep120.1434, align 1
  %scevgep117.1435 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %588, i64 0, i64 0, i64 0
  %597 = load i8, i8* %scevgep117.1435, align 1
  %conv84.i694.i.1436 = zext i8 %597 to i32
  %scevgep121.1437 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %589, i64 0, i64 0, i64 0
  %598 = load i8, i8* %scevgep121.1437, align 1
  %conv89.i699.i.1438 = zext i8 %598 to i32
  %xor90.i700.i.1439 = xor i32 %conv84.i694.i.1436, %conv89.i699.i.1438
  %conv91.i701.i.1440 = trunc i32 %xor90.i700.i.1439 to i8
  %scevgep124.1441 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %590, i64 0, i64 0, i64 0
  store i8 %conv91.i701.i.1440, i8* %scevgep124.1441, align 1
  %scevgep105.2.1 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 2
  %599 = load i8, i8* %scevgep105.2.1, align 1
  %conv44.i653.i.2.1 = zext i8 %599 to i32
  %scevgep108.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %586, i64 0, i64 0, i64 2
  %600 = load i8, i8* %scevgep108.2.1, align 1
  %conv49.i658.i.2.1 = zext i8 %600 to i32
  %xor.i659.i.2.1 = xor i32 %conv44.i653.i.2.1, %conv49.i658.i.2.1
  %conv50.i660.i.2.1 = trunc i32 %xor.i659.i.2.1 to i8
  %scevgep112.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %587, i64 0, i64 0, i64 2
  store i8 %conv50.i660.i.2.1, i8* %scevgep112.2.1, align 1
  %601 = load i8, i8* %arrayidx56.i666.i.1, align 1
  %conv57.i667.i.2.1 = zext i8 %601 to i32
  %xor58.i668.i.2.1 = xor i32 %conv57.i667.i.2.1, 1
  %conv59.i669.i.2.1 = trunc i32 %xor58.i668.i.2.1 to i8
  %scevgep109.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %586, i64 0, i64 0, i64 2
  %602 = load i8, i8* %scevgep109.2.1, align 1
  %call64.i674.i.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.i669.i.2.1, i8 zeroext %602) #3
  %scevgep116.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %588, i64 0, i64 0, i64 2
  store i8 %call64.i674.i.2.1, i8* %scevgep116.2.1, align 1
  %603 = load i8, i8* %arrayidx70.i680.i.1, align 1
  %scevgep113.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %587, i64 0, i64 0, i64 2
  %604 = load i8, i8* %scevgep113.2.1, align 1
  %call75.i685.i.2.1 = call zeroext i8 @mult(i8 zeroext %603, i8 zeroext %604) #3
  %scevgep120.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %589, i64 0, i64 0, i64 2
  store i8 %call75.i685.i.2.1, i8* %scevgep120.2.1, align 1
  %scevgep117.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %588, i64 0, i64 0, i64 2
  %605 = load i8, i8* %scevgep117.2.1, align 1
  %conv84.i694.i.2.1 = zext i8 %605 to i32
  %scevgep121.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %589, i64 0, i64 0, i64 2
  %606 = load i8, i8* %scevgep121.2.1, align 1
  %conv89.i699.i.2.1 = zext i8 %606 to i32
  %xor90.i700.i.2.1 = xor i32 %conv84.i694.i.2.1, %conv89.i699.i.2.1
  %conv91.i701.i.2.1 = trunc i32 %xor90.i700.i.2.1 to i8
  %scevgep124.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %590, i64 0, i64 0, i64 2
  store i8 %conv91.i701.i.2.1, i8* %scevgep124.2.1, align 1
  %scevgep105.3.1 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 3
  %607 = load i8, i8* %scevgep105.3.1, align 1
  %conv44.i653.i.3.1 = zext i8 %607 to i32
  %scevgep108.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %586, i64 0, i64 0, i64 3
  %608 = load i8, i8* %scevgep108.3.1, align 1
  %conv49.i658.i.3.1 = zext i8 %608 to i32
  %xor.i659.i.3.1 = xor i32 %conv44.i653.i.3.1, %conv49.i658.i.3.1
  %conv50.i660.i.3.1 = trunc i32 %xor.i659.i.3.1 to i8
  %scevgep112.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %587, i64 0, i64 0, i64 3
  store i8 %conv50.i660.i.3.1, i8* %scevgep112.3.1, align 1
  %609 = load i8, i8* %arrayidx56.i666.i.1, align 1
  %conv57.i667.i.3.1 = zext i8 %609 to i32
  %xor58.i668.i.3.1 = xor i32 %conv57.i667.i.3.1, 1
  %conv59.i669.i.3.1 = trunc i32 %xor58.i668.i.3.1 to i8
  %scevgep109.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %586, i64 0, i64 0, i64 3
  %610 = load i8, i8* %scevgep109.3.1, align 1
  %call64.i674.i.3.1 = call zeroext i8 @mult(i8 zeroext %conv59.i669.i.3.1, i8 zeroext %610) #3
  %scevgep116.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %588, i64 0, i64 0, i64 3
  store i8 %call64.i674.i.3.1, i8* %scevgep116.3.1, align 1
  %611 = load i8, i8* %arrayidx70.i680.i.1, align 1
  %scevgep113.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %587, i64 0, i64 0, i64 3
  %612 = load i8, i8* %scevgep113.3.1, align 1
  %call75.i685.i.3.1 = call zeroext i8 @mult(i8 zeroext %611, i8 zeroext %612) #3
  %scevgep120.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %589, i64 0, i64 0, i64 3
  store i8 %call75.i685.i.3.1, i8* %scevgep120.3.1, align 1
  %scevgep117.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %588, i64 0, i64 0, i64 3
  %613 = load i8, i8* %scevgep117.3.1, align 1
  %conv84.i694.i.3.1 = zext i8 %613 to i32
  %scevgep121.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %589, i64 0, i64 0, i64 3
  %614 = load i8, i8* %scevgep121.3.1, align 1
  %conv89.i699.i.3.1 = zext i8 %614 to i32
  %xor90.i700.i.3.1 = xor i32 %conv84.i694.i.3.1, %conv89.i699.i.3.1
  %conv91.i701.i.3.1 = trunc i32 %xor90.i700.i.3.1 to i8
  %scevgep124.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %590, i64 0, i64 0, i64 3
  store i8 %conv91.i701.i.3.1, i8* %scevgep124.3.1, align 1
  %scevgep107.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %586, i64 0, i64 1, i64 0
  %615 = bitcast i8* %scevgep107.1 to [4 x [4 x i8]]*
  %scevgep111.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %587, i64 0, i64 1, i64 0
  %616 = bitcast i8* %scevgep111.1 to [4 x [4 x i8]]*
  %scevgep115.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %588, i64 0, i64 1, i64 0
  %617 = bitcast i8* %scevgep115.1 to [4 x [4 x i8]]*
  %scevgep119.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %589, i64 0, i64 1, i64 0
  %618 = bitcast i8* %scevgep119.1 to [4 x [4 x i8]]*
  %scevgep123.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %590, i64 0, i64 1, i64 0
  %619 = bitcast i8* %scevgep123.1 to [4 x [4 x i8]]*
  %arrayidx56.i666.i.2 = getelementptr inbounds i8, i8* %arraydecay18.i, i64 2
  %arrayidx70.i680.i.2 = getelementptr inbounds i8, i8* %arraydecay18.i, i64 2
  %scevgep105.2446 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 0
  %620 = load i8, i8* %scevgep105.2446, align 1
  %conv44.i653.i.2447 = zext i8 %620 to i32
  %scevgep108.2448 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %615, i64 0, i64 0, i64 0
  %621 = load i8, i8* %scevgep108.2448, align 1
  %conv49.i658.i.2449 = zext i8 %621 to i32
  %xor.i659.i.2450 = xor i32 %conv44.i653.i.2447, %conv49.i658.i.2449
  %conv50.i660.i.2451 = trunc i32 %xor.i659.i.2450 to i8
  %scevgep112.2452 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %616, i64 0, i64 0, i64 0
  store i8 %conv50.i660.i.2451, i8* %scevgep112.2452, align 1
  %622 = load i8, i8* %arrayidx56.i666.i.2, align 1
  %conv57.i667.i.2453 = zext i8 %622 to i32
  %xor58.i668.i.2454 = xor i32 %conv57.i667.i.2453, 1
  %conv59.i669.i.2455 = trunc i32 %xor58.i668.i.2454 to i8
  %scevgep109.2456 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %615, i64 0, i64 0, i64 0
  %623 = load i8, i8* %scevgep109.2456, align 1
  %call64.i674.i.2457 = call zeroext i8 @mult(i8 zeroext %conv59.i669.i.2455, i8 zeroext %623) #3
  %scevgep116.2458 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %617, i64 0, i64 0, i64 0
  store i8 %call64.i674.i.2457, i8* %scevgep116.2458, align 1
  %624 = load i8, i8* %arrayidx70.i680.i.2, align 1
  %scevgep113.2459 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %616, i64 0, i64 0, i64 0
  %625 = load i8, i8* %scevgep113.2459, align 1
  %call75.i685.i.2460 = call zeroext i8 @mult(i8 zeroext %624, i8 zeroext %625) #3
  %scevgep120.2461 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %618, i64 0, i64 0, i64 0
  store i8 %call75.i685.i.2460, i8* %scevgep120.2461, align 1
  %scevgep117.2462 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %617, i64 0, i64 0, i64 0
  %626 = load i8, i8* %scevgep117.2462, align 1
  %conv84.i694.i.2463 = zext i8 %626 to i32
  %scevgep121.2464 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %618, i64 0, i64 0, i64 0
  %627 = load i8, i8* %scevgep121.2464, align 1
  %conv89.i699.i.2465 = zext i8 %627 to i32
  %xor90.i700.i.2466 = xor i32 %conv84.i694.i.2463, %conv89.i699.i.2465
  %conv91.i701.i.2467 = trunc i32 %xor90.i700.i.2466 to i8
  %scevgep124.2468 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %619, i64 0, i64 0, i64 0
  store i8 %conv91.i701.i.2467, i8* %scevgep124.2468, align 1
  %scevgep105.1.2 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 1
  %628 = load i8, i8* %scevgep105.1.2, align 1
  %conv44.i653.i.1.2 = zext i8 %628 to i32
  %scevgep108.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %615, i64 0, i64 0, i64 1
  %629 = load i8, i8* %scevgep108.1.2, align 1
  %conv49.i658.i.1.2 = zext i8 %629 to i32
  %xor.i659.i.1.2 = xor i32 %conv44.i653.i.1.2, %conv49.i658.i.1.2
  %conv50.i660.i.1.2 = trunc i32 %xor.i659.i.1.2 to i8
  %scevgep112.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %616, i64 0, i64 0, i64 1
  store i8 %conv50.i660.i.1.2, i8* %scevgep112.1.2, align 1
  %630 = load i8, i8* %arrayidx56.i666.i.2, align 1
  %conv57.i667.i.1.2 = zext i8 %630 to i32
  %xor58.i668.i.1.2 = xor i32 %conv57.i667.i.1.2, 1
  %conv59.i669.i.1.2 = trunc i32 %xor58.i668.i.1.2 to i8
  %scevgep109.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %615, i64 0, i64 0, i64 1
  %631 = load i8, i8* %scevgep109.1.2, align 1
  %call64.i674.i.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.i669.i.1.2, i8 zeroext %631) #3
  %scevgep116.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %617, i64 0, i64 0, i64 1
  store i8 %call64.i674.i.1.2, i8* %scevgep116.1.2, align 1
  %632 = load i8, i8* %arrayidx70.i680.i.2, align 1
  %scevgep113.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %616, i64 0, i64 0, i64 1
  %633 = load i8, i8* %scevgep113.1.2, align 1
  %call75.i685.i.1.2 = call zeroext i8 @mult(i8 zeroext %632, i8 zeroext %633) #3
  %scevgep120.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %618, i64 0, i64 0, i64 1
  store i8 %call75.i685.i.1.2, i8* %scevgep120.1.2, align 1
  %scevgep117.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %617, i64 0, i64 0, i64 1
  %634 = load i8, i8* %scevgep117.1.2, align 1
  %conv84.i694.i.1.2 = zext i8 %634 to i32
  %scevgep121.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %618, i64 0, i64 0, i64 1
  %635 = load i8, i8* %scevgep121.1.2, align 1
  %conv89.i699.i.1.2 = zext i8 %635 to i32
  %xor90.i700.i.1.2 = xor i32 %conv84.i694.i.1.2, %conv89.i699.i.1.2
  %conv91.i701.i.1.2 = trunc i32 %xor90.i700.i.1.2 to i8
  %scevgep124.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %619, i64 0, i64 0, i64 1
  store i8 %conv91.i701.i.1.2, i8* %scevgep124.1.2, align 1
  %scevgep105.3.2 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 3
  %636 = load i8, i8* %scevgep105.3.2, align 1
  %conv44.i653.i.3.2 = zext i8 %636 to i32
  %scevgep108.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %615, i64 0, i64 0, i64 3
  %637 = load i8, i8* %scevgep108.3.2, align 1
  %conv49.i658.i.3.2 = zext i8 %637 to i32
  %xor.i659.i.3.2 = xor i32 %conv44.i653.i.3.2, %conv49.i658.i.3.2
  %conv50.i660.i.3.2 = trunc i32 %xor.i659.i.3.2 to i8
  %scevgep112.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %616, i64 0, i64 0, i64 3
  store i8 %conv50.i660.i.3.2, i8* %scevgep112.3.2, align 1
  %638 = load i8, i8* %arrayidx56.i666.i.2, align 1
  %conv57.i667.i.3.2 = zext i8 %638 to i32
  %xor58.i668.i.3.2 = xor i32 %conv57.i667.i.3.2, 1
  %conv59.i669.i.3.2 = trunc i32 %xor58.i668.i.3.2 to i8
  %scevgep109.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %615, i64 0, i64 0, i64 3
  %639 = load i8, i8* %scevgep109.3.2, align 1
  %call64.i674.i.3.2 = call zeroext i8 @mult(i8 zeroext %conv59.i669.i.3.2, i8 zeroext %639) #3
  %scevgep116.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %617, i64 0, i64 0, i64 3
  store i8 %call64.i674.i.3.2, i8* %scevgep116.3.2, align 1
  %640 = load i8, i8* %arrayidx70.i680.i.2, align 1
  %scevgep113.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %616, i64 0, i64 0, i64 3
  %641 = load i8, i8* %scevgep113.3.2, align 1
  %call75.i685.i.3.2 = call zeroext i8 @mult(i8 zeroext %640, i8 zeroext %641) #3
  %scevgep120.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %618, i64 0, i64 0, i64 3
  store i8 %call75.i685.i.3.2, i8* %scevgep120.3.2, align 1
  %scevgep117.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %617, i64 0, i64 0, i64 3
  %642 = load i8, i8* %scevgep117.3.2, align 1
  %conv84.i694.i.3.2 = zext i8 %642 to i32
  %scevgep121.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %618, i64 0, i64 0, i64 3
  %643 = load i8, i8* %scevgep121.3.2, align 1
  %conv89.i699.i.3.2 = zext i8 %643 to i32
  %xor90.i700.i.3.2 = xor i32 %conv84.i694.i.3.2, %conv89.i699.i.3.2
  %conv91.i701.i.3.2 = trunc i32 %xor90.i700.i.3.2 to i8
  %scevgep124.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %619, i64 0, i64 0, i64 3
  store i8 %conv91.i701.i.3.2, i8* %scevgep124.3.2, align 1
  %scevgep107.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %615, i64 0, i64 1, i64 0
  %644 = bitcast i8* %scevgep107.2 to [4 x [4 x i8]]*
  %scevgep111.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %616, i64 0, i64 1, i64 0
  %645 = bitcast i8* %scevgep111.2 to [4 x [4 x i8]]*
  %scevgep115.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %617, i64 0, i64 1, i64 0
  %646 = bitcast i8* %scevgep115.2 to [4 x [4 x i8]]*
  %scevgep119.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %618, i64 0, i64 1, i64 0
  %647 = bitcast i8* %scevgep119.2 to [4 x [4 x i8]]*
  %scevgep123.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %619, i64 0, i64 1, i64 0
  %648 = bitcast i8* %scevgep123.2 to [4 x [4 x i8]]*
  %arrayidx56.i666.i.3 = getelementptr inbounds i8, i8* %arraydecay18.i, i64 3
  %arrayidx70.i680.i.3 = getelementptr inbounds i8, i8* %arraydecay18.i, i64 3
  %scevgep105.3473 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 0
  %649 = load i8, i8* %scevgep105.3473, align 1
  %conv44.i653.i.3474 = zext i8 %649 to i32
  %scevgep108.3475 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %644, i64 0, i64 0, i64 0
  %650 = load i8, i8* %scevgep108.3475, align 1
  %conv49.i658.i.3476 = zext i8 %650 to i32
  %xor.i659.i.3477 = xor i32 %conv44.i653.i.3474, %conv49.i658.i.3476
  %conv50.i660.i.3478 = trunc i32 %xor.i659.i.3477 to i8
  %scevgep112.3479 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %645, i64 0, i64 0, i64 0
  store i8 %conv50.i660.i.3478, i8* %scevgep112.3479, align 1
  %651 = load i8, i8* %arrayidx56.i666.i.3, align 1
  %conv57.i667.i.3480 = zext i8 %651 to i32
  %xor58.i668.i.3481 = xor i32 %conv57.i667.i.3480, 1
  %conv59.i669.i.3482 = trunc i32 %xor58.i668.i.3481 to i8
  %scevgep109.3483 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %644, i64 0, i64 0, i64 0
  %652 = load i8, i8* %scevgep109.3483, align 1
  %call64.i674.i.3484 = call zeroext i8 @mult(i8 zeroext %conv59.i669.i.3482, i8 zeroext %652) #3
  %scevgep116.3485 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %646, i64 0, i64 0, i64 0
  store i8 %call64.i674.i.3484, i8* %scevgep116.3485, align 1
  %653 = load i8, i8* %arrayidx70.i680.i.3, align 1
  %scevgep113.3486 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %645, i64 0, i64 0, i64 0
  %654 = load i8, i8* %scevgep113.3486, align 1
  %call75.i685.i.3487 = call zeroext i8 @mult(i8 zeroext %653, i8 zeroext %654) #3
  %scevgep120.3488 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %647, i64 0, i64 0, i64 0
  store i8 %call75.i685.i.3487, i8* %scevgep120.3488, align 1
  %scevgep117.3489 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %646, i64 0, i64 0, i64 0
  %655 = load i8, i8* %scevgep117.3489, align 1
  %conv84.i694.i.3490 = zext i8 %655 to i32
  %scevgep121.3491 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %647, i64 0, i64 0, i64 0
  %656 = load i8, i8* %scevgep121.3491, align 1
  %conv89.i699.i.3492 = zext i8 %656 to i32
  %xor90.i700.i.3493 = xor i32 %conv84.i694.i.3490, %conv89.i699.i.3492
  %conv91.i701.i.3494 = trunc i32 %xor90.i700.i.3493 to i8
  %scevgep124.3495 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %648, i64 0, i64 0, i64 0
  store i8 %conv91.i701.i.3494, i8* %scevgep124.3495, align 1
  %scevgep105.1.3 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 1
  %657 = load i8, i8* %scevgep105.1.3, align 1
  %conv44.i653.i.1.3 = zext i8 %657 to i32
  %scevgep108.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %644, i64 0, i64 0, i64 1
  %658 = load i8, i8* %scevgep108.1.3, align 1
  %conv49.i658.i.1.3 = zext i8 %658 to i32
  %xor.i659.i.1.3 = xor i32 %conv44.i653.i.1.3, %conv49.i658.i.1.3
  %conv50.i660.i.1.3 = trunc i32 %xor.i659.i.1.3 to i8
  %scevgep112.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %645, i64 0, i64 0, i64 1
  store i8 %conv50.i660.i.1.3, i8* %scevgep112.1.3, align 1
  %659 = load i8, i8* %arrayidx56.i666.i.3, align 1
  %conv57.i667.i.1.3 = zext i8 %659 to i32
  %xor58.i668.i.1.3 = xor i32 %conv57.i667.i.1.3, 1
  %conv59.i669.i.1.3 = trunc i32 %xor58.i668.i.1.3 to i8
  %scevgep109.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %644, i64 0, i64 0, i64 1
  %660 = load i8, i8* %scevgep109.1.3, align 1
  %call64.i674.i.1.3 = call zeroext i8 @mult(i8 zeroext %conv59.i669.i.1.3, i8 zeroext %660) #3
  %scevgep116.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %646, i64 0, i64 0, i64 1
  store i8 %call64.i674.i.1.3, i8* %scevgep116.1.3, align 1
  %661 = load i8, i8* %arrayidx70.i680.i.3, align 1
  %scevgep113.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %645, i64 0, i64 0, i64 1
  %662 = load i8, i8* %scevgep113.1.3, align 1
  %call75.i685.i.1.3 = call zeroext i8 @mult(i8 zeroext %661, i8 zeroext %662) #3
  %scevgep120.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %647, i64 0, i64 0, i64 1
  store i8 %call75.i685.i.1.3, i8* %scevgep120.1.3, align 1
  %scevgep117.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %646, i64 0, i64 0, i64 1
  %663 = load i8, i8* %scevgep117.1.3, align 1
  %conv84.i694.i.1.3 = zext i8 %663 to i32
  %scevgep121.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %647, i64 0, i64 0, i64 1
  %664 = load i8, i8* %scevgep121.1.3, align 1
  %conv89.i699.i.1.3 = zext i8 %664 to i32
  %xor90.i700.i.1.3 = xor i32 %conv84.i694.i.1.3, %conv89.i699.i.1.3
  %conv91.i701.i.1.3 = trunc i32 %xor90.i700.i.1.3 to i8
  %scevgep124.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %648, i64 0, i64 0, i64 1
  store i8 %conv91.i701.i.1.3, i8* %scevgep124.1.3, align 1
  %scevgep105.2.3 = getelementptr [4 x i8], [4 x i8]* %z.i, i64 0, i64 2
  %665 = load i8, i8* %scevgep105.2.3, align 1
  %conv44.i653.i.2.3 = zext i8 %665 to i32
  %scevgep108.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %644, i64 0, i64 0, i64 2
  %666 = load i8, i8* %scevgep108.2.3, align 1
  %conv49.i658.i.2.3 = zext i8 %666 to i32
  %xor.i659.i.2.3 = xor i32 %conv44.i653.i.2.3, %conv49.i658.i.2.3
  %conv50.i660.i.2.3 = trunc i32 %xor.i659.i.2.3 to i8
  %scevgep112.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %645, i64 0, i64 0, i64 2
  store i8 %conv50.i660.i.2.3, i8* %scevgep112.2.3, align 1
  %667 = load i8, i8* %arrayidx56.i666.i.3, align 1
  %conv57.i667.i.2.3 = zext i8 %667 to i32
  %xor58.i668.i.2.3 = xor i32 %conv57.i667.i.2.3, 1
  %conv59.i669.i.2.3 = trunc i32 %xor58.i668.i.2.3 to i8
  %scevgep109.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %644, i64 0, i64 0, i64 2
  %668 = load i8, i8* %scevgep109.2.3, align 1
  %call64.i674.i.2.3 = call zeroext i8 @mult(i8 zeroext %conv59.i669.i.2.3, i8 zeroext %668) #3
  %scevgep116.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %646, i64 0, i64 0, i64 2
  store i8 %call64.i674.i.2.3, i8* %scevgep116.2.3, align 1
  %669 = load i8, i8* %arrayidx70.i680.i.3, align 1
  %scevgep113.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %645, i64 0, i64 0, i64 2
  %670 = load i8, i8* %scevgep113.2.3, align 1
  %call75.i685.i.2.3 = call zeroext i8 @mult(i8 zeroext %669, i8 zeroext %670) #3
  %scevgep120.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %647, i64 0, i64 0, i64 2
  store i8 %call75.i685.i.2.3, i8* %scevgep120.2.3, align 1
  %scevgep117.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %646, i64 0, i64 0, i64 2
  %671 = load i8, i8* %scevgep117.2.3, align 1
  %conv84.i694.i.2.3 = zext i8 %671 to i32
  %scevgep121.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %647, i64 0, i64 0, i64 2
  %672 = load i8, i8* %scevgep121.2.3, align 1
  %conv89.i699.i.2.3 = zext i8 %672 to i32
  %xor90.i700.i.2.3 = xor i32 %conv84.i694.i.2.3, %conv89.i699.i.2.3
  %conv91.i701.i.2.3 = trunc i32 %xor90.i700.i.2.3 to i8
  %scevgep124.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %648, i64 0, i64 0, i64 2
  store i8 %conv91.i701.i.2.3, i8* %scevgep124.2.3, align 1
  %673 = load i8, i8* %arraydecay18.i, align 1
  %674 = load i8, i8* %arraydecay19.i, align 1
  %call111.i718.i = call zeroext i8 @mult(i8 zeroext %673, i8 zeroext %674) #3
  store i8 %call111.i718.i, i8* %y, align 1
  %scevgep96.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 1
  %675 = load i8, i8* %scevgep96.1, align 1
  %conv126.i730.i.1 = zext i8 %675 to i32
  %676 = load i8, i8* %y, align 1
  %conv129.i733.i.1 = zext i8 %676 to i32
  %xor130.i734.i.1 = xor i32 %conv129.i733.i.1, %conv126.i730.i.1
  %conv131.i735.i.1 = trunc i32 %xor130.i734.i.1 to i8
  store i8 %conv131.i735.i.1, i8* %y, align 1
  %scevgep96.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 2
  %677 = load i8, i8* %scevgep96.2, align 1
  %conv126.i730.i.2 = zext i8 %677 to i32
  %678 = load i8, i8* %y, align 1
  %conv129.i733.i.2 = zext i8 %678 to i32
  %xor130.i734.i.2 = xor i32 %conv129.i733.i.2, %conv126.i730.i.2
  %conv131.i735.i.2 = trunc i32 %xor130.i734.i.2 to i8
  store i8 %conv131.i735.i.2, i8* %y, align 1
  %scevgep96.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 0, i64 3
  %679 = load i8, i8* %scevgep96.3, align 1
  %conv126.i730.i.3 = zext i8 %679 to i32
  %680 = load i8, i8* %y, align 1
  %conv129.i733.i.3 = zext i8 %680 to i32
  %xor130.i734.i.3 = xor i32 %conv129.i733.i.3, %conv126.i730.i.3
  %conv131.i735.i.3 = trunc i32 %xor130.i734.i.3 to i8
  store i8 %conv131.i735.i.3, i8* %y, align 1
  %scevgep95 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %z.i.i, i64 0, i64 1, i64 0
  %681 = bitcast i8* %scevgep95 to [4 x [4 x i8]]*
  %arrayidx108.i715.i.1 = getelementptr inbounds i8, i8* %arraydecay18.i, i64 1
  %682 = load i8, i8* %arrayidx108.i715.i.1, align 1
  %arrayidx110.i717.i.1 = getelementptr inbounds i8, i8* %arraydecay19.i, i64 1
  %683 = load i8, i8* %arrayidx110.i717.i.1, align 1
  %call111.i718.i.1 = call zeroext i8 @mult(i8 zeroext %682, i8 zeroext %683) #3
  %arrayidx113.i720.i.1 = getelementptr inbounds i8, i8* %y, i64 1
  store i8 %call111.i718.i.1, i8* %arrayidx113.i720.i.1, align 1
  %arrayidx128.i732.i.1 = getelementptr inbounds i8, i8* %y, i64 1
  %scevgep96.1392 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %681, i64 0, i64 0, i64 0
  %684 = load i8, i8* %scevgep96.1392, align 1
  %conv126.i730.i.1393 = zext i8 %684 to i32
  %685 = load i8, i8* %arrayidx128.i732.i.1, align 1
  %conv129.i733.i.1394 = zext i8 %685 to i32
  %xor130.i734.i.1395 = xor i32 %conv129.i733.i.1394, %conv126.i730.i.1393
  %conv131.i735.i.1396 = trunc i32 %xor130.i734.i.1395 to i8
  store i8 %conv131.i735.i.1396, i8* %arrayidx128.i732.i.1, align 1
  %scevgep96.2.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %681, i64 0, i64 0, i64 2
  %686 = load i8, i8* %scevgep96.2.1, align 1
  %conv126.i730.i.2.1 = zext i8 %686 to i32
  %687 = load i8, i8* %arrayidx128.i732.i.1, align 1
  %conv129.i733.i.2.1 = zext i8 %687 to i32
  %xor130.i734.i.2.1 = xor i32 %conv129.i733.i.2.1, %conv126.i730.i.2.1
  %conv131.i735.i.2.1 = trunc i32 %xor130.i734.i.2.1 to i8
  store i8 %conv131.i735.i.2.1, i8* %arrayidx128.i732.i.1, align 1
  %scevgep96.3.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %681, i64 0, i64 0, i64 3
  %688 = load i8, i8* %scevgep96.3.1, align 1
  %conv126.i730.i.3.1 = zext i8 %688 to i32
  %689 = load i8, i8* %arrayidx128.i732.i.1, align 1
  %conv129.i733.i.3.1 = zext i8 %689 to i32
  %xor130.i734.i.3.1 = xor i32 %conv129.i733.i.3.1, %conv126.i730.i.3.1
  %conv131.i735.i.3.1 = trunc i32 %xor130.i734.i.3.1 to i8
  store i8 %conv131.i735.i.3.1, i8* %arrayidx128.i732.i.1, align 1
  %scevgep95.1 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %681, i64 0, i64 1, i64 0
  %690 = bitcast i8* %scevgep95.1 to [4 x [4 x i8]]*
  %arrayidx108.i715.i.2 = getelementptr inbounds i8, i8* %arraydecay18.i, i64 2
  %691 = load i8, i8* %arrayidx108.i715.i.2, align 1
  %arrayidx110.i717.i.2 = getelementptr inbounds i8, i8* %arraydecay19.i, i64 2
  %692 = load i8, i8* %arrayidx110.i717.i.2, align 1
  %call111.i718.i.2 = call zeroext i8 @mult(i8 zeroext %691, i8 zeroext %692) #3
  %arrayidx113.i720.i.2 = getelementptr inbounds i8, i8* %y, i64 2
  store i8 %call111.i718.i.2, i8* %arrayidx113.i720.i.2, align 1
  %arrayidx128.i732.i.2 = getelementptr inbounds i8, i8* %y, i64 2
  %scevgep96.2401 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %690, i64 0, i64 0, i64 0
  %693 = load i8, i8* %scevgep96.2401, align 1
  %conv126.i730.i.2402 = zext i8 %693 to i32
  %694 = load i8, i8* %arrayidx128.i732.i.2, align 1
  %conv129.i733.i.2403 = zext i8 %694 to i32
  %xor130.i734.i.2404 = xor i32 %conv129.i733.i.2403, %conv126.i730.i.2402
  %conv131.i735.i.2405 = trunc i32 %xor130.i734.i.2404 to i8
  store i8 %conv131.i735.i.2405, i8* %arrayidx128.i732.i.2, align 1
  %scevgep96.1.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %690, i64 0, i64 0, i64 1
  %695 = load i8, i8* %scevgep96.1.2, align 1
  %conv126.i730.i.1.2 = zext i8 %695 to i32
  %696 = load i8, i8* %arrayidx128.i732.i.2, align 1
  %conv129.i733.i.1.2 = zext i8 %696 to i32
  %xor130.i734.i.1.2 = xor i32 %conv129.i733.i.1.2, %conv126.i730.i.1.2
  %conv131.i735.i.1.2 = trunc i32 %xor130.i734.i.1.2 to i8
  store i8 %conv131.i735.i.1.2, i8* %arrayidx128.i732.i.2, align 1
  %scevgep96.3.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %690, i64 0, i64 0, i64 3
  %697 = load i8, i8* %scevgep96.3.2, align 1
  %conv126.i730.i.3.2 = zext i8 %697 to i32
  %698 = load i8, i8* %arrayidx128.i732.i.2, align 1
  %conv129.i733.i.3.2 = zext i8 %698 to i32
  %xor130.i734.i.3.2 = xor i32 %conv129.i733.i.3.2, %conv126.i730.i.3.2
  %conv131.i735.i.3.2 = trunc i32 %xor130.i734.i.3.2 to i8
  store i8 %conv131.i735.i.3.2, i8* %arrayidx128.i732.i.2, align 1
  %scevgep95.2 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %690, i64 0, i64 1, i64 0
  %699 = bitcast i8* %scevgep95.2 to [4 x [4 x i8]]*
  %arrayidx108.i715.i.3 = getelementptr inbounds i8, i8* %arraydecay18.i, i64 3
  %700 = load i8, i8* %arrayidx108.i715.i.3, align 1
  %arrayidx110.i717.i.3 = getelementptr inbounds i8, i8* %arraydecay19.i, i64 3
  %701 = load i8, i8* %arrayidx110.i717.i.3, align 1
  %call111.i718.i.3 = call zeroext i8 @mult(i8 zeroext %700, i8 zeroext %701) #3
  %arrayidx113.i720.i.3 = getelementptr inbounds i8, i8* %y, i64 3
  store i8 %call111.i718.i.3, i8* %arrayidx113.i720.i.3, align 1
  %arrayidx128.i732.i.3 = getelementptr inbounds i8, i8* %y, i64 3
  %scevgep96.3410 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %699, i64 0, i64 0, i64 0
  %702 = load i8, i8* %scevgep96.3410, align 1
  %conv126.i730.i.3411 = zext i8 %702 to i32
  %703 = load i8, i8* %arrayidx128.i732.i.3, align 1
  %conv129.i733.i.3412 = zext i8 %703 to i32
  %xor130.i734.i.3413 = xor i32 %conv129.i733.i.3412, %conv126.i730.i.3411
  %conv131.i735.i.3414 = trunc i32 %xor130.i734.i.3413 to i8
  store i8 %conv131.i735.i.3414, i8* %arrayidx128.i732.i.3, align 1
  %scevgep96.1.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %699, i64 0, i64 0, i64 1
  %704 = load i8, i8* %scevgep96.1.3, align 1
  %conv126.i730.i.1.3 = zext i8 %704 to i32
  %705 = load i8, i8* %arrayidx128.i732.i.3, align 1
  %conv129.i733.i.1.3 = zext i8 %705 to i32
  %xor130.i734.i.1.3 = xor i32 %conv129.i733.i.1.3, %conv126.i730.i.1.3
  %conv131.i735.i.1.3 = trunc i32 %xor130.i734.i.1.3 to i8
  store i8 %conv131.i735.i.1.3, i8* %arrayidx128.i732.i.3, align 1
  %scevgep96.2.3 = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %699, i64 0, i64 0, i64 2
  %706 = load i8, i8* %scevgep96.2.3, align 1
  %conv126.i730.i.2.3 = zext i8 %706 to i32
  %707 = load i8, i8* %arrayidx128.i732.i.3, align 1
  %conv129.i733.i.2.3 = zext i8 %707 to i32
  %xor130.i734.i.2.3 = xor i32 %conv129.i733.i.2.3, %conv126.i730.i.2.3
  %conv131.i735.i.2.3 = trunc i32 %xor130.i734.i.2.3 to i8
  store i8 %conv131.i735.i.2.3, i8* %arrayidx128.i732.i.3, align 1
  %call139.i741.i = call zeroext i8 @mult(i8 zeroext %call.i588.i, i8 zeroext %call1.i589.i) #3
  %conv140.i742.i = zext i8 %call139.i741.i to i32
  %708 = load i8, i8* %y, align 1
  %scevgep86.1 = getelementptr i8, i8* %y, i64 1
  %709 = load i8, i8* %scevgep86.1, align 1
  %conv.i.i172.i749.i.1 = zext i8 %709 to i32
  %conv1.i.i173.i750.i.1 = zext i8 %708 to i32
  %xor.i.i174.i751.i.1 = xor i32 %conv1.i.i173.i750.i.1, %conv.i.i172.i749.i.1
  %conv2.i.i175.i752.i.1 = trunc i32 %xor.i.i174.i751.i.1 to i8
  %scevgep86.2 = getelementptr i8, i8* %y, i64 2
  %710 = load i8, i8* %scevgep86.2, align 1
  %conv.i.i172.i749.i.2 = zext i8 %710 to i32
  %conv1.i.i173.i750.i.2 = zext i8 %conv2.i.i175.i752.i.1 to i32
  %xor.i.i174.i751.i.2 = xor i32 %conv1.i.i173.i750.i.2, %conv.i.i172.i749.i.2
  %conv2.i.i175.i752.i.2 = trunc i32 %xor.i.i174.i751.i.2 to i8
  %scevgep86.3 = getelementptr i8, i8* %y, i64 3
  %711 = load i8, i8* %scevgep86.3, align 1
  %conv.i.i172.i749.i.3 = zext i8 %711 to i32
  %conv1.i.i173.i750.i.3 = zext i8 %conv2.i.i175.i752.i.2 to i32
  %xor.i.i174.i751.i.3 = xor i32 %conv1.i.i173.i750.i.3, %conv.i.i172.i749.i.3
  %conv2.i.i175.i752.i.3 = trunc i32 %xor.i.i174.i751.i.3 to i8
  %conv142.i755.i = zext i8 %conv2.i.i175.i752.i.3 to i32
  %cmp143.i756.i = icmp eq i32 %conv140.i742.i, %conv142.i755.i
  call void @assert(i1 zeroext %cmp143.i756.i) #3
  %call.i760.i = call zeroext i8 @square(i8 zeroext %call.i) #3
  %call1.i761.i = call zeroext i8 @mult(i8 zeroext %call.i760.i, i8 zeroext %call.i) #3
  %call2.i.i = call zeroext i8 @exp4(i8 zeroext %call1.i761.i) #3
  %call3.i.i = call zeroext i8 @mult(i8 zeroext %call1.i761.i, i8 zeroext %call2.i.i) #3
  %call4.i.i = call zeroext i8 @exp16(i8 zeroext %call3.i.i) #3
  %call5.i.i = call zeroext i8 @mult(i8 zeroext %call4.i.i, i8 zeroext %call2.i.i) #3
  %call6.i.i = call zeroext i8 @mult(i8 zeroext %call5.i.i, i8 zeroext %call.i760.i) #3
  %conv21.i = zext i8 %call6.i.i to i32
  %712 = load i8, i8* %y, align 1
  %scevgep82.1 = getelementptr i8, i8* %y, i64 1
  %713 = load i8, i8* %scevgep82.1, align 1
  %conv.i.i772.i.1 = zext i8 %713 to i32
  %conv1.i.i773.i.1 = zext i8 %712 to i32
  %xor.i.i774.i.1 = xor i32 %conv1.i.i773.i.1, %conv.i.i772.i.1
  %conv2.i.i775.i.1 = trunc i32 %xor.i.i774.i.1 to i8
  %scevgep82.2 = getelementptr i8, i8* %y, i64 2
  %714 = load i8, i8* %scevgep82.2, align 1
  %conv.i.i772.i.2 = zext i8 %714 to i32
  %conv1.i.i773.i.2 = zext i8 %conv2.i.i775.i.1 to i32
  %xor.i.i774.i.2 = xor i32 %conv1.i.i773.i.2, %conv.i.i772.i.2
  %conv2.i.i775.i.2 = trunc i32 %xor.i.i774.i.2 to i8
  %scevgep82.3 = getelementptr i8, i8* %y, i64 3
  %715 = load i8, i8* %scevgep82.3, align 1
  %conv.i.i772.i.3 = zext i8 %715 to i32
  %conv1.i.i773.i.3 = zext i8 %conv2.i.i775.i.2 to i32
  %xor.i.i774.i.3 = xor i32 %conv1.i.i773.i.3, %conv.i.i772.i.3
  %conv2.i.i775.i.3 = trunc i32 %xor.i.i774.i.3 to i8
  %conv23.i = zext i8 %conv2.i.i775.i.3 to i32
  %cmp24.i = icmp eq i32 %conv21.i, %conv23.i
  call void @assert(i1 zeroext %cmp24.i) #3
  %716 = load i8, i8* %y, align 1
  %call.i26 = call zeroext i8 @af(i8 zeroext %716) #3
  store i8 %call.i26, i8* %y, align 1
  %scevgep77.1 = getelementptr i8, i8* %y, i64 1
  %717 = load i8, i8* %scevgep77.1, align 1
  %call.i26.1 = call zeroext i8 @af(i8 zeroext %717) #3
  %scevgep78.1 = getelementptr i8, i8* %y, i64 1
  store i8 %call.i26.1, i8* %scevgep78.1, align 1
  %scevgep77.2 = getelementptr i8, i8* %y, i64 2
  %718 = load i8, i8* %scevgep77.2, align 1
  %call.i26.2 = call zeroext i8 @af(i8 zeroext %718) #3
  %scevgep78.2 = getelementptr i8, i8* %y, i64 2
  store i8 %call.i26.2, i8* %scevgep78.2, align 1
  %scevgep77.3 = getelementptr i8, i8* %y, i64 3
  %719 = load i8, i8* %scevgep77.3, align 1
  %call.i26.3 = call zeroext i8 @af(i8 zeroext %719) #3
  %scevgep78.3 = getelementptr i8, i8* %y, i64 3
  store i8 %call.i26.3, i8* %scevgep78.3, align 1
  %720 = load i8, i8* %y, align 1
  %conv4 = zext i8 %720 to i32
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
  %721 = load i8, i8* %y, align 1
  %scevgep.1 = getelementptr i8, i8* %y, i64 1
  %722 = load i8, i8* %scevgep.1, align 1
  %conv.i.i49.1 = zext i8 %722 to i32
  %conv1.i.i50.1 = zext i8 %721 to i32
  %xor.i.i51.1 = xor i32 %conv1.i.i50.1, %conv.i.i49.1
  %conv2.i.i52.1 = trunc i32 %xor.i.i51.1 to i8
  %scevgep.2 = getelementptr i8, i8* %y, i64 2
  %723 = load i8, i8* %scevgep.2, align 1
  %conv.i.i49.2 = zext i8 %723 to i32
  %conv1.i.i50.2 = zext i8 %conv2.i.i52.1 to i32
  %xor.i.i51.2 = xor i32 %conv1.i.i50.2, %conv.i.i49.2
  %conv2.i.i52.2 = trunc i32 %xor.i.i51.2 to i8
  %scevgep.3 = getelementptr i8, i8* %y, i64 3
  %724 = load i8, i8* %scevgep.3, align 1
  %conv.i.i49.3 = zext i8 %724 to i32
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
