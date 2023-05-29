; ModuleID = '../examples/cassiers-tifs2020.inline-3.ll'
source_filename = "../examples/cassiers-tifs2020.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 3, align 4
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

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.1.0 (https://github.com/llvm/llvm-project.git 7e99bddfeaab2713a8bb6ca538da25b66e6efc59)"}
