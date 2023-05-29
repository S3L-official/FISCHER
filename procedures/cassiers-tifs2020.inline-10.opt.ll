; ModuleID = '../examples/cassiers-tifs2020.inline-10.ll'
source_filename = "../examples/cassiers-tifs2020.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant i32 10, align 4
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
  %scevgep.6 = getelementptr i8, i8* %from, i64 6
  %6 = load i8, i8* %scevgep.6, align 1
  %call.6 = call zeroext i8 %f(i8 zeroext %6)
  %scevgep2.6 = getelementptr i8, i8* %to, i64 6
  store i8 %call.6, i8* %scevgep2.6, align 1
  %scevgep.7 = getelementptr i8, i8* %from, i64 7
  %7 = load i8, i8* %scevgep.7, align 1
  %call.7 = call zeroext i8 %f(i8 zeroext %7)
  %scevgep2.7 = getelementptr i8, i8* %to, i64 7
  store i8 %call.7, i8* %scevgep2.7, align 1
  %scevgep.8 = getelementptr i8, i8* %from, i64 8
  %8 = load i8, i8* %scevgep.8, align 1
  %call.8 = call zeroext i8 %f(i8 zeroext %8)
  %scevgep2.8 = getelementptr i8, i8* %to, i64 8
  store i8 %call.8, i8* %scevgep2.8, align 1
  %scevgep.9 = getelementptr i8, i8* %from, i64 9
  %9 = load i8, i8* %scevgep.9, align 1
  %call.9 = call zeroext i8 %f(i8 zeroext %9)
  %scevgep2.9 = getelementptr i8, i8* %to, i64 9
  store i8 %call.9, i8* %scevgep2.9, align 1
  %scevgep.10 = getelementptr i8, i8* %from, i64 10
  %10 = load i8, i8* %scevgep.10, align 1
  %call.10 = call zeroext i8 %f(i8 zeroext %10)
  %scevgep2.10 = getelementptr i8, i8* %to, i64 10
  store i8 %call.10, i8* %scevgep2.10, align 1
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
  %scevgep.6 = getelementptr i8, i8* %a, i64 6
  %6 = load i8, i8* %scevgep.6, align 1
  %call.6 = call zeroext i8 %f(i8 zeroext %6)
  %conv.6 = zext i8 %call.6 to i32
  %conv1.6 = zext i8 %conv2.5 to i32
  %xor.6 = xor i32 %conv1.6, %conv.6
  %conv2.6 = trunc i32 %xor.6 to i8
  %scevgep.7 = getelementptr i8, i8* %a, i64 7
  %7 = load i8, i8* %scevgep.7, align 1
  %call.7 = call zeroext i8 %f(i8 zeroext %7)
  %conv.7 = zext i8 %call.7 to i32
  %conv1.7 = zext i8 %conv2.6 to i32
  %xor.7 = xor i32 %conv1.7, %conv.7
  %conv2.7 = trunc i32 %xor.7 to i8
  %scevgep.8 = getelementptr i8, i8* %a, i64 8
  %8 = load i8, i8* %scevgep.8, align 1
  %call.8 = call zeroext i8 %f(i8 zeroext %8)
  %conv.8 = zext i8 %call.8 to i32
  %conv1.8 = zext i8 %conv2.7 to i32
  %xor.8 = xor i32 %conv1.8, %conv.8
  %conv2.8 = trunc i32 %xor.8 to i8
  %scevgep.9 = getelementptr i8, i8* %a, i64 9
  %9 = load i8, i8* %scevgep.9, align 1
  %call.9 = call zeroext i8 %f(i8 zeroext %9)
  %conv.9 = zext i8 %call.9 to i32
  %conv1.9 = zext i8 %conv2.8 to i32
  %xor.9 = xor i32 %conv1.9, %conv.9
  %conv2.9 = trunc i32 %xor.9 to i8
  %scevgep.10 = getelementptr i8, i8* %a, i64 10
  %10 = load i8, i8* %scevgep.10, align 1
  %call.10 = call zeroext i8 %f(i8 zeroext %10)
  %conv.10 = zext i8 %call.10 to i32
  %conv1.10 = zext i8 %conv2.9 to i32
  %xor.10 = xor i32 %conv1.10, %conv.10
  %conv2.10 = trunc i32 %xor.10 to i8
  ret i8 %conv2.10
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
  %scevgep.6 = getelementptr i8, i8* %a, i64 6
  %6 = load i8, i8* %scevgep.6, align 1
  %conv.i.6 = zext i8 %6 to i32
  %conv1.i.6 = zext i8 %conv2.i.5 to i32
  %xor.i.6 = xor i32 %conv1.i.6, %conv.i.6
  %conv2.i.6 = trunc i32 %xor.i.6 to i8
  %scevgep.7 = getelementptr i8, i8* %a, i64 7
  %7 = load i8, i8* %scevgep.7, align 1
  %conv.i.7 = zext i8 %7 to i32
  %conv1.i.7 = zext i8 %conv2.i.6 to i32
  %xor.i.7 = xor i32 %conv1.i.7, %conv.i.7
  %conv2.i.7 = trunc i32 %xor.i.7 to i8
  %scevgep.8 = getelementptr i8, i8* %a, i64 8
  %8 = load i8, i8* %scevgep.8, align 1
  %conv.i.8 = zext i8 %8 to i32
  %conv1.i.8 = zext i8 %conv2.i.7 to i32
  %xor.i.8 = xor i32 %conv1.i.8, %conv.i.8
  %conv2.i.8 = trunc i32 %xor.i.8 to i8
  %scevgep.9 = getelementptr i8, i8* %a, i64 9
  %9 = load i8, i8* %scevgep.9, align 1
  %conv.i.9 = zext i8 %9 to i32
  %conv1.i.9 = zext i8 %conv2.i.8 to i32
  %xor.i.9 = xor i32 %conv1.i.9, %conv.i.9
  %conv2.i.9 = trunc i32 %xor.i.9 to i8
  %scevgep.10 = getelementptr i8, i8* %a, i64 10
  %10 = load i8, i8* %scevgep.10, align 1
  %conv.i.10 = zext i8 %10 to i32
  %conv1.i.10 = zext i8 %conv2.i.9 to i32
  %xor.i.10 = xor i32 %conv1.i.10, %conv.i.10
  %conv2.i.10 = trunc i32 %xor.i.10 to i8
  ret i8 %conv2.i.10
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @sec_mult(i8* %a, i8* %b, i8* %c) #0 {
entry:
  %r = alloca [11 x [11 x i8]], align 16
  %s = alloca [11 x [11 x i8]], align 16
  %p0 = alloca [11 x [11 x i8]], align 16
  %p1 = alloca [11 x [11 x i8]], align 16
  %z = alloca [11 x [11 x i8]], align 16
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
  %scevgep74.6 = getelementptr i8, i8* %a, i64 6
  %6 = load i8, i8* %scevgep74.6, align 1
  %conv.i.i.6 = zext i8 %6 to i32
  %conv1.i.i.6 = zext i8 %conv2.i.i.5 to i32
  %xor.i.i.6 = xor i32 %conv1.i.i.6, %conv.i.i.6
  %conv2.i.i.6 = trunc i32 %xor.i.i.6 to i8
  %scevgep74.7 = getelementptr i8, i8* %a, i64 7
  %7 = load i8, i8* %scevgep74.7, align 1
  %conv.i.i.7 = zext i8 %7 to i32
  %conv1.i.i.7 = zext i8 %conv2.i.i.6 to i32
  %xor.i.i.7 = xor i32 %conv1.i.i.7, %conv.i.i.7
  %conv2.i.i.7 = trunc i32 %xor.i.i.7 to i8
  %scevgep74.8 = getelementptr i8, i8* %a, i64 8
  %8 = load i8, i8* %scevgep74.8, align 1
  %conv.i.i.8 = zext i8 %8 to i32
  %conv1.i.i.8 = zext i8 %conv2.i.i.7 to i32
  %xor.i.i.8 = xor i32 %conv1.i.i.8, %conv.i.i.8
  %conv2.i.i.8 = trunc i32 %xor.i.i.8 to i8
  %scevgep74.9 = getelementptr i8, i8* %a, i64 9
  %9 = load i8, i8* %scevgep74.9, align 1
  %conv.i.i.9 = zext i8 %9 to i32
  %conv1.i.i.9 = zext i8 %conv2.i.i.8 to i32
  %xor.i.i.9 = xor i32 %conv1.i.i.9, %conv.i.i.9
  %conv2.i.i.9 = trunc i32 %xor.i.i.9 to i8
  %scevgep74.10 = getelementptr i8, i8* %a, i64 10
  %10 = load i8, i8* %scevgep74.10, align 1
  %conv.i.i.10 = zext i8 %10 to i32
  %conv1.i.i.10 = zext i8 %conv2.i.i.9 to i32
  %xor.i.i.10 = xor i32 %conv1.i.i.10, %conv.i.i.10
  %conv2.i.i.10 = trunc i32 %xor.i.i.10 to i8
  %conv3 = zext i8 %conv2.i.i.10 to i32
  %cmp = icmp eq i32 %conv, %conv3
  call void @assume(i1 zeroext %cmp)
  %conv5 = zext i8 %call1 to i32
  %11 = load i8, i8* %b, align 1
  %scevgep70.1 = getelementptr i8, i8* %b, i64 1
  %12 = load i8, i8* %scevgep70.1, align 1
  %conv.i.i155.1 = zext i8 %12 to i32
  %conv1.i.i156.1 = zext i8 %11 to i32
  %xor.i.i157.1 = xor i32 %conv1.i.i156.1, %conv.i.i155.1
  %conv2.i.i158.1 = trunc i32 %xor.i.i157.1 to i8
  %scevgep70.2 = getelementptr i8, i8* %b, i64 2
  %13 = load i8, i8* %scevgep70.2, align 1
  %conv.i.i155.2 = zext i8 %13 to i32
  %conv1.i.i156.2 = zext i8 %conv2.i.i158.1 to i32
  %xor.i.i157.2 = xor i32 %conv1.i.i156.2, %conv.i.i155.2
  %conv2.i.i158.2 = trunc i32 %xor.i.i157.2 to i8
  %scevgep70.3 = getelementptr i8, i8* %b, i64 3
  %14 = load i8, i8* %scevgep70.3, align 1
  %conv.i.i155.3 = zext i8 %14 to i32
  %conv1.i.i156.3 = zext i8 %conv2.i.i158.2 to i32
  %xor.i.i157.3 = xor i32 %conv1.i.i156.3, %conv.i.i155.3
  %conv2.i.i158.3 = trunc i32 %xor.i.i157.3 to i8
  %scevgep70.4 = getelementptr i8, i8* %b, i64 4
  %15 = load i8, i8* %scevgep70.4, align 1
  %conv.i.i155.4 = zext i8 %15 to i32
  %conv1.i.i156.4 = zext i8 %conv2.i.i158.3 to i32
  %xor.i.i157.4 = xor i32 %conv1.i.i156.4, %conv.i.i155.4
  %conv2.i.i158.4 = trunc i32 %xor.i.i157.4 to i8
  %scevgep70.5 = getelementptr i8, i8* %b, i64 5
  %16 = load i8, i8* %scevgep70.5, align 1
  %conv.i.i155.5 = zext i8 %16 to i32
  %conv1.i.i156.5 = zext i8 %conv2.i.i158.4 to i32
  %xor.i.i157.5 = xor i32 %conv1.i.i156.5, %conv.i.i155.5
  %conv2.i.i158.5 = trunc i32 %xor.i.i157.5 to i8
  %scevgep70.6 = getelementptr i8, i8* %b, i64 6
  %17 = load i8, i8* %scevgep70.6, align 1
  %conv.i.i155.6 = zext i8 %17 to i32
  %conv1.i.i156.6 = zext i8 %conv2.i.i158.5 to i32
  %xor.i.i157.6 = xor i32 %conv1.i.i156.6, %conv.i.i155.6
  %conv2.i.i158.6 = trunc i32 %xor.i.i157.6 to i8
  %scevgep70.7 = getelementptr i8, i8* %b, i64 7
  %18 = load i8, i8* %scevgep70.7, align 1
  %conv.i.i155.7 = zext i8 %18 to i32
  %conv1.i.i156.7 = zext i8 %conv2.i.i158.6 to i32
  %xor.i.i157.7 = xor i32 %conv1.i.i156.7, %conv.i.i155.7
  %conv2.i.i158.7 = trunc i32 %xor.i.i157.7 to i8
  %scevgep70.8 = getelementptr i8, i8* %b, i64 8
  %19 = load i8, i8* %scevgep70.8, align 1
  %conv.i.i155.8 = zext i8 %19 to i32
  %conv1.i.i156.8 = zext i8 %conv2.i.i158.7 to i32
  %xor.i.i157.8 = xor i32 %conv1.i.i156.8, %conv.i.i155.8
  %conv2.i.i158.8 = trunc i32 %xor.i.i157.8 to i8
  %scevgep70.9 = getelementptr i8, i8* %b, i64 9
  %20 = load i8, i8* %scevgep70.9, align 1
  %conv.i.i155.9 = zext i8 %20 to i32
  %conv1.i.i156.9 = zext i8 %conv2.i.i158.8 to i32
  %xor.i.i157.9 = xor i32 %conv1.i.i156.9, %conv.i.i155.9
  %conv2.i.i158.9 = trunc i32 %xor.i.i157.9 to i8
  %scevgep70.10 = getelementptr i8, i8* %b, i64 10
  %21 = load i8, i8* %scevgep70.10, align 1
  %conv.i.i155.10 = zext i8 %21 to i32
  %conv1.i.i156.10 = zext i8 %conv2.i.i158.9 to i32
  %xor.i.i157.10 = xor i32 %conv1.i.i156.10, %conv.i.i155.10
  %conv2.i.i158.10 = trunc i32 %xor.i.i157.10 to i8
  %conv7 = zext i8 %conv2.i.i158.10 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  call void @assume(i1 zeroext %cmp8)
  %scevgep54 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 1
  %scevgep5455 = bitcast i8* %scevgep54 to [11 x [11 x i8]]*
  %scevgep61 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 1, i64 0
  %scevgep6162 = bitcast i8* %scevgep61 to [11 x [11 x i8]]*
  %call16 = call zeroext i8 (...) @rand()
  store i8 %call16, i8* %scevgep54, align 1
  %22 = load i8, i8* %scevgep54, align 1
  store i8 %22, i8* %scevgep61, align 1
  %scevgep59 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %scevgep5455, i64 0, i64 0, i64 1
  %23 = bitcast i8* %scevgep59 to [11 x [11 x i8]]*
  %scevgep66 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %scevgep6162, i64 0, i64 1, i64 0
  %24 = bitcast i8* %scevgep66 to [11 x [11 x i8]]*
  %call16.1446 = call zeroext i8 (...) @rand()
  store i8 %call16.1446, i8* %scevgep59, align 1
  %25 = load i8, i8* %scevgep59, align 1
  store i8 %25, i8* %scevgep66, align 1
  %scevgep59.1447 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %23, i64 0, i64 0, i64 1
  %26 = bitcast i8* %scevgep59.1447 to [11 x [11 x i8]]*
  %scevgep66.1448 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %24, i64 0, i64 1, i64 0
  %27 = bitcast i8* %scevgep66.1448 to [11 x [11 x i8]]*
  %call16.2450 = call zeroext i8 (...) @rand()
  store i8 %call16.2450, i8* %scevgep59.1447, align 1
  %28 = load i8, i8* %scevgep59.1447, align 1
  store i8 %28, i8* %scevgep66.1448, align 1
  %scevgep59.2451 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %26, i64 0, i64 0, i64 1
  %29 = bitcast i8* %scevgep59.2451 to [11 x [11 x i8]]*
  %scevgep66.2452 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %27, i64 0, i64 1, i64 0
  %30 = bitcast i8* %scevgep66.2452 to [11 x [11 x i8]]*
  %call16.3454 = call zeroext i8 (...) @rand()
  store i8 %call16.3454, i8* %scevgep59.2451, align 1
  %31 = load i8, i8* %scevgep59.2451, align 1
  store i8 %31, i8* %scevgep66.2452, align 1
  %scevgep59.3455 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %29, i64 0, i64 0, i64 1
  %32 = bitcast i8* %scevgep59.3455 to [11 x [11 x i8]]*
  %scevgep66.3456 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %30, i64 0, i64 1, i64 0
  %33 = bitcast i8* %scevgep66.3456 to [11 x [11 x i8]]*
  %call16.4458 = call zeroext i8 (...) @rand()
  store i8 %call16.4458, i8* %scevgep59.3455, align 1
  %34 = load i8, i8* %scevgep59.3455, align 1
  store i8 %34, i8* %scevgep66.3456, align 1
  %scevgep59.4459 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %32, i64 0, i64 0, i64 1
  %35 = bitcast i8* %scevgep59.4459 to [11 x [11 x i8]]*
  %scevgep66.4460 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %33, i64 0, i64 1, i64 0
  %36 = bitcast i8* %scevgep66.4460 to [11 x [11 x i8]]*
  %call16.5462 = call zeroext i8 (...) @rand()
  store i8 %call16.5462, i8* %scevgep59.4459, align 1
  %37 = load i8, i8* %scevgep59.4459, align 1
  store i8 %37, i8* %scevgep66.4460, align 1
  %scevgep59.5463 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %35, i64 0, i64 0, i64 1
  %38 = bitcast i8* %scevgep59.5463 to [11 x [11 x i8]]*
  %scevgep66.5464 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %36, i64 0, i64 1, i64 0
  %39 = bitcast i8* %scevgep66.5464 to [11 x [11 x i8]]*
  %call16.6466 = call zeroext i8 (...) @rand()
  store i8 %call16.6466, i8* %scevgep59.5463, align 1
  %40 = load i8, i8* %scevgep59.5463, align 1
  store i8 %40, i8* %scevgep66.5464, align 1
  %scevgep59.6467 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %38, i64 0, i64 0, i64 1
  %41 = bitcast i8* %scevgep59.6467 to [11 x [11 x i8]]*
  %scevgep66.6468 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %39, i64 0, i64 1, i64 0
  %42 = bitcast i8* %scevgep66.6468 to [11 x [11 x i8]]*
  %call16.7470 = call zeroext i8 (...) @rand()
  store i8 %call16.7470, i8* %scevgep59.6467, align 1
  %43 = load i8, i8* %scevgep59.6467, align 1
  store i8 %43, i8* %scevgep66.6468, align 1
  %scevgep59.7471 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %41, i64 0, i64 0, i64 1
  %44 = bitcast i8* %scevgep59.7471 to [11 x [11 x i8]]*
  %scevgep66.7472 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %42, i64 0, i64 1, i64 0
  %45 = bitcast i8* %scevgep66.7472 to [11 x [11 x i8]]*
  %call16.8474 = call zeroext i8 (...) @rand()
  store i8 %call16.8474, i8* %scevgep59.7471, align 1
  %46 = load i8, i8* %scevgep59.7471, align 1
  store i8 %46, i8* %scevgep66.7472, align 1
  %scevgep59.8475 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %44, i64 0, i64 0, i64 1
  %scevgep66.8476 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %45, i64 0, i64 1, i64 0
  %call16.9478 = call zeroext i8 (...) @rand()
  store i8 %call16.9478, i8* %scevgep59.8475, align 1
  %47 = load i8, i8* %scevgep59.8475, align 1
  store i8 %47, i8* %scevgep66.8476, align 1
  %scevgep57 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %scevgep5455, i64 0, i64 1, i64 1
  %48 = bitcast i8* %scevgep57 to [11 x [11 x i8]]*
  %scevgep64 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %scevgep6162, i64 0, i64 1, i64 1
  %49 = bitcast i8* %scevgep64 to [11 x [11 x i8]]*
  %call16.1 = call zeroext i8 (...) @rand()
  store i8 %call16.1, i8* %scevgep57, align 1
  %50 = load i8, i8* %scevgep57, align 1
  store i8 %50, i8* %scevgep64, align 1
  %scevgep59.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %48, i64 0, i64 0, i64 1
  %51 = bitcast i8* %scevgep59.1 to [11 x [11 x i8]]*
  %scevgep66.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %49, i64 0, i64 1, i64 0
  %52 = bitcast i8* %scevgep66.1 to [11 x [11 x i8]]*
  %call16.1.1 = call zeroext i8 (...) @rand()
  store i8 %call16.1.1, i8* %scevgep59.1, align 1
  %53 = load i8, i8* %scevgep59.1, align 1
  store i8 %53, i8* %scevgep66.1, align 1
  %scevgep59.1.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %51, i64 0, i64 0, i64 1
  %54 = bitcast i8* %scevgep59.1.1 to [11 x [11 x i8]]*
  %scevgep66.1.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %52, i64 0, i64 1, i64 0
  %55 = bitcast i8* %scevgep66.1.1 to [11 x [11 x i8]]*
  %call16.1.2 = call zeroext i8 (...) @rand()
  store i8 %call16.1.2, i8* %scevgep59.1.1, align 1
  %56 = load i8, i8* %scevgep59.1.1, align 1
  store i8 %56, i8* %scevgep66.1.1, align 1
  %scevgep59.1.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %54, i64 0, i64 0, i64 1
  %57 = bitcast i8* %scevgep59.1.2 to [11 x [11 x i8]]*
  %scevgep66.1.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %55, i64 0, i64 1, i64 0
  %58 = bitcast i8* %scevgep66.1.2 to [11 x [11 x i8]]*
  %call16.1.3 = call zeroext i8 (...) @rand()
  store i8 %call16.1.3, i8* %scevgep59.1.2, align 1
  %59 = load i8, i8* %scevgep59.1.2, align 1
  store i8 %59, i8* %scevgep66.1.2, align 1
  %scevgep59.1.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %57, i64 0, i64 0, i64 1
  %60 = bitcast i8* %scevgep59.1.3 to [11 x [11 x i8]]*
  %scevgep66.1.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %58, i64 0, i64 1, i64 0
  %61 = bitcast i8* %scevgep66.1.3 to [11 x [11 x i8]]*
  %call16.1.4 = call zeroext i8 (...) @rand()
  store i8 %call16.1.4, i8* %scevgep59.1.3, align 1
  %62 = load i8, i8* %scevgep59.1.3, align 1
  store i8 %62, i8* %scevgep66.1.3, align 1
  %scevgep59.1.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %60, i64 0, i64 0, i64 1
  %63 = bitcast i8* %scevgep59.1.4 to [11 x [11 x i8]]*
  %scevgep66.1.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %61, i64 0, i64 1, i64 0
  %64 = bitcast i8* %scevgep66.1.4 to [11 x [11 x i8]]*
  %call16.1.5 = call zeroext i8 (...) @rand()
  store i8 %call16.1.5, i8* %scevgep59.1.4, align 1
  %65 = load i8, i8* %scevgep59.1.4, align 1
  store i8 %65, i8* %scevgep66.1.4, align 1
  %scevgep59.1.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %63, i64 0, i64 0, i64 1
  %66 = bitcast i8* %scevgep59.1.5 to [11 x [11 x i8]]*
  %scevgep66.1.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %64, i64 0, i64 1, i64 0
  %67 = bitcast i8* %scevgep66.1.5 to [11 x [11 x i8]]*
  %call16.1.6 = call zeroext i8 (...) @rand()
  store i8 %call16.1.6, i8* %scevgep59.1.5, align 1
  %68 = load i8, i8* %scevgep59.1.5, align 1
  store i8 %68, i8* %scevgep66.1.5, align 1
  %scevgep59.1.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %66, i64 0, i64 0, i64 1
  %69 = bitcast i8* %scevgep59.1.6 to [11 x [11 x i8]]*
  %scevgep66.1.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %67, i64 0, i64 1, i64 0
  %70 = bitcast i8* %scevgep66.1.6 to [11 x [11 x i8]]*
  %call16.1.7 = call zeroext i8 (...) @rand()
  store i8 %call16.1.7, i8* %scevgep59.1.6, align 1
  %71 = load i8, i8* %scevgep59.1.6, align 1
  store i8 %71, i8* %scevgep66.1.6, align 1
  %scevgep59.1.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %69, i64 0, i64 0, i64 1
  %scevgep66.1.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %70, i64 0, i64 1, i64 0
  %call16.1.8 = call zeroext i8 (...) @rand()
  store i8 %call16.1.8, i8* %scevgep59.1.7, align 1
  %72 = load i8, i8* %scevgep59.1.7, align 1
  store i8 %72, i8* %scevgep66.1.7, align 1
  %scevgep57.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %48, i64 0, i64 1, i64 1
  %73 = bitcast i8* %scevgep57.1 to [11 x [11 x i8]]*
  %scevgep64.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %49, i64 0, i64 1, i64 1
  %74 = bitcast i8* %scevgep64.1 to [11 x [11 x i8]]*
  %call16.2 = call zeroext i8 (...) @rand()
  store i8 %call16.2, i8* %scevgep57.1, align 1
  %75 = load i8, i8* %scevgep57.1, align 1
  store i8 %75, i8* %scevgep64.1, align 1
  %scevgep59.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %73, i64 0, i64 0, i64 1
  %76 = bitcast i8* %scevgep59.2 to [11 x [11 x i8]]*
  %scevgep66.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %74, i64 0, i64 1, i64 0
  %77 = bitcast i8* %scevgep66.2 to [11 x [11 x i8]]*
  %call16.2.1 = call zeroext i8 (...) @rand()
  store i8 %call16.2.1, i8* %scevgep59.2, align 1
  %78 = load i8, i8* %scevgep59.2, align 1
  store i8 %78, i8* %scevgep66.2, align 1
  %scevgep59.2.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %76, i64 0, i64 0, i64 1
  %79 = bitcast i8* %scevgep59.2.1 to [11 x [11 x i8]]*
  %scevgep66.2.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %77, i64 0, i64 1, i64 0
  %80 = bitcast i8* %scevgep66.2.1 to [11 x [11 x i8]]*
  %call16.2.2 = call zeroext i8 (...) @rand()
  store i8 %call16.2.2, i8* %scevgep59.2.1, align 1
  %81 = load i8, i8* %scevgep59.2.1, align 1
  store i8 %81, i8* %scevgep66.2.1, align 1
  %scevgep59.2.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %79, i64 0, i64 0, i64 1
  %82 = bitcast i8* %scevgep59.2.2 to [11 x [11 x i8]]*
  %scevgep66.2.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %80, i64 0, i64 1, i64 0
  %83 = bitcast i8* %scevgep66.2.2 to [11 x [11 x i8]]*
  %call16.2.3 = call zeroext i8 (...) @rand()
  store i8 %call16.2.3, i8* %scevgep59.2.2, align 1
  %84 = load i8, i8* %scevgep59.2.2, align 1
  store i8 %84, i8* %scevgep66.2.2, align 1
  %scevgep59.2.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %82, i64 0, i64 0, i64 1
  %85 = bitcast i8* %scevgep59.2.3 to [11 x [11 x i8]]*
  %scevgep66.2.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %83, i64 0, i64 1, i64 0
  %86 = bitcast i8* %scevgep66.2.3 to [11 x [11 x i8]]*
  %call16.2.4 = call zeroext i8 (...) @rand()
  store i8 %call16.2.4, i8* %scevgep59.2.3, align 1
  %87 = load i8, i8* %scevgep59.2.3, align 1
  store i8 %87, i8* %scevgep66.2.3, align 1
  %scevgep59.2.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %85, i64 0, i64 0, i64 1
  %88 = bitcast i8* %scevgep59.2.4 to [11 x [11 x i8]]*
  %scevgep66.2.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %86, i64 0, i64 1, i64 0
  %89 = bitcast i8* %scevgep66.2.4 to [11 x [11 x i8]]*
  %call16.2.5 = call zeroext i8 (...) @rand()
  store i8 %call16.2.5, i8* %scevgep59.2.4, align 1
  %90 = load i8, i8* %scevgep59.2.4, align 1
  store i8 %90, i8* %scevgep66.2.4, align 1
  %scevgep59.2.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %88, i64 0, i64 0, i64 1
  %91 = bitcast i8* %scevgep59.2.5 to [11 x [11 x i8]]*
  %scevgep66.2.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %89, i64 0, i64 1, i64 0
  %92 = bitcast i8* %scevgep66.2.5 to [11 x [11 x i8]]*
  %call16.2.6 = call zeroext i8 (...) @rand()
  store i8 %call16.2.6, i8* %scevgep59.2.5, align 1
  %93 = load i8, i8* %scevgep59.2.5, align 1
  store i8 %93, i8* %scevgep66.2.5, align 1
  %scevgep59.2.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %91, i64 0, i64 0, i64 1
  %scevgep66.2.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %92, i64 0, i64 1, i64 0
  %call16.2.7 = call zeroext i8 (...) @rand()
  store i8 %call16.2.7, i8* %scevgep59.2.6, align 1
  %94 = load i8, i8* %scevgep59.2.6, align 1
  store i8 %94, i8* %scevgep66.2.6, align 1
  %scevgep57.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %73, i64 0, i64 1, i64 1
  %95 = bitcast i8* %scevgep57.2 to [11 x [11 x i8]]*
  %scevgep64.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %74, i64 0, i64 1, i64 1
  %96 = bitcast i8* %scevgep64.2 to [11 x [11 x i8]]*
  %call16.3 = call zeroext i8 (...) @rand()
  store i8 %call16.3, i8* %scevgep57.2, align 1
  %97 = load i8, i8* %scevgep57.2, align 1
  store i8 %97, i8* %scevgep64.2, align 1
  %scevgep59.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %95, i64 0, i64 0, i64 1
  %98 = bitcast i8* %scevgep59.3 to [11 x [11 x i8]]*
  %scevgep66.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %96, i64 0, i64 1, i64 0
  %99 = bitcast i8* %scevgep66.3 to [11 x [11 x i8]]*
  %call16.3.1 = call zeroext i8 (...) @rand()
  store i8 %call16.3.1, i8* %scevgep59.3, align 1
  %100 = load i8, i8* %scevgep59.3, align 1
  store i8 %100, i8* %scevgep66.3, align 1
  %scevgep59.3.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %98, i64 0, i64 0, i64 1
  %101 = bitcast i8* %scevgep59.3.1 to [11 x [11 x i8]]*
  %scevgep66.3.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %99, i64 0, i64 1, i64 0
  %102 = bitcast i8* %scevgep66.3.1 to [11 x [11 x i8]]*
  %call16.3.2 = call zeroext i8 (...) @rand()
  store i8 %call16.3.2, i8* %scevgep59.3.1, align 1
  %103 = load i8, i8* %scevgep59.3.1, align 1
  store i8 %103, i8* %scevgep66.3.1, align 1
  %scevgep59.3.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %101, i64 0, i64 0, i64 1
  %104 = bitcast i8* %scevgep59.3.2 to [11 x [11 x i8]]*
  %scevgep66.3.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %102, i64 0, i64 1, i64 0
  %105 = bitcast i8* %scevgep66.3.2 to [11 x [11 x i8]]*
  %call16.3.3 = call zeroext i8 (...) @rand()
  store i8 %call16.3.3, i8* %scevgep59.3.2, align 1
  %106 = load i8, i8* %scevgep59.3.2, align 1
  store i8 %106, i8* %scevgep66.3.2, align 1
  %scevgep59.3.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %104, i64 0, i64 0, i64 1
  %107 = bitcast i8* %scevgep59.3.3 to [11 x [11 x i8]]*
  %scevgep66.3.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %105, i64 0, i64 1, i64 0
  %108 = bitcast i8* %scevgep66.3.3 to [11 x [11 x i8]]*
  %call16.3.4 = call zeroext i8 (...) @rand()
  store i8 %call16.3.4, i8* %scevgep59.3.3, align 1
  %109 = load i8, i8* %scevgep59.3.3, align 1
  store i8 %109, i8* %scevgep66.3.3, align 1
  %scevgep59.3.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %107, i64 0, i64 0, i64 1
  %110 = bitcast i8* %scevgep59.3.4 to [11 x [11 x i8]]*
  %scevgep66.3.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %108, i64 0, i64 1, i64 0
  %111 = bitcast i8* %scevgep66.3.4 to [11 x [11 x i8]]*
  %call16.3.5 = call zeroext i8 (...) @rand()
  store i8 %call16.3.5, i8* %scevgep59.3.4, align 1
  %112 = load i8, i8* %scevgep59.3.4, align 1
  store i8 %112, i8* %scevgep66.3.4, align 1
  %scevgep59.3.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %110, i64 0, i64 0, i64 1
  %scevgep66.3.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %111, i64 0, i64 1, i64 0
  %call16.3.6 = call zeroext i8 (...) @rand()
  store i8 %call16.3.6, i8* %scevgep59.3.5, align 1
  %113 = load i8, i8* %scevgep59.3.5, align 1
  store i8 %113, i8* %scevgep66.3.5, align 1
  %scevgep57.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %95, i64 0, i64 1, i64 1
  %114 = bitcast i8* %scevgep57.3 to [11 x [11 x i8]]*
  %scevgep64.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %96, i64 0, i64 1, i64 1
  %115 = bitcast i8* %scevgep64.3 to [11 x [11 x i8]]*
  %call16.4 = call zeroext i8 (...) @rand()
  store i8 %call16.4, i8* %scevgep57.3, align 1
  %116 = load i8, i8* %scevgep57.3, align 1
  store i8 %116, i8* %scevgep64.3, align 1
  %scevgep59.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %114, i64 0, i64 0, i64 1
  %117 = bitcast i8* %scevgep59.4 to [11 x [11 x i8]]*
  %scevgep66.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %115, i64 0, i64 1, i64 0
  %118 = bitcast i8* %scevgep66.4 to [11 x [11 x i8]]*
  %call16.4.1 = call zeroext i8 (...) @rand()
  store i8 %call16.4.1, i8* %scevgep59.4, align 1
  %119 = load i8, i8* %scevgep59.4, align 1
  store i8 %119, i8* %scevgep66.4, align 1
  %scevgep59.4.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %117, i64 0, i64 0, i64 1
  %120 = bitcast i8* %scevgep59.4.1 to [11 x [11 x i8]]*
  %scevgep66.4.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %118, i64 0, i64 1, i64 0
  %121 = bitcast i8* %scevgep66.4.1 to [11 x [11 x i8]]*
  %call16.4.2 = call zeroext i8 (...) @rand()
  store i8 %call16.4.2, i8* %scevgep59.4.1, align 1
  %122 = load i8, i8* %scevgep59.4.1, align 1
  store i8 %122, i8* %scevgep66.4.1, align 1
  %scevgep59.4.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %120, i64 0, i64 0, i64 1
  %123 = bitcast i8* %scevgep59.4.2 to [11 x [11 x i8]]*
  %scevgep66.4.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %121, i64 0, i64 1, i64 0
  %124 = bitcast i8* %scevgep66.4.2 to [11 x [11 x i8]]*
  %call16.4.3 = call zeroext i8 (...) @rand()
  store i8 %call16.4.3, i8* %scevgep59.4.2, align 1
  %125 = load i8, i8* %scevgep59.4.2, align 1
  store i8 %125, i8* %scevgep66.4.2, align 1
  %scevgep59.4.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %123, i64 0, i64 0, i64 1
  %126 = bitcast i8* %scevgep59.4.3 to [11 x [11 x i8]]*
  %scevgep66.4.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %124, i64 0, i64 1, i64 0
  %127 = bitcast i8* %scevgep66.4.3 to [11 x [11 x i8]]*
  %call16.4.4 = call zeroext i8 (...) @rand()
  store i8 %call16.4.4, i8* %scevgep59.4.3, align 1
  %128 = load i8, i8* %scevgep59.4.3, align 1
  store i8 %128, i8* %scevgep66.4.3, align 1
  %scevgep59.4.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %126, i64 0, i64 0, i64 1
  %scevgep66.4.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %127, i64 0, i64 1, i64 0
  %call16.4.5 = call zeroext i8 (...) @rand()
  store i8 %call16.4.5, i8* %scevgep59.4.4, align 1
  %129 = load i8, i8* %scevgep59.4.4, align 1
  store i8 %129, i8* %scevgep66.4.4, align 1
  %scevgep57.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %114, i64 0, i64 1, i64 1
  %130 = bitcast i8* %scevgep57.4 to [11 x [11 x i8]]*
  %scevgep64.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %115, i64 0, i64 1, i64 1
  %131 = bitcast i8* %scevgep64.4 to [11 x [11 x i8]]*
  %call16.5 = call zeroext i8 (...) @rand()
  store i8 %call16.5, i8* %scevgep57.4, align 1
  %132 = load i8, i8* %scevgep57.4, align 1
  store i8 %132, i8* %scevgep64.4, align 1
  %scevgep59.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %130, i64 0, i64 0, i64 1
  %133 = bitcast i8* %scevgep59.5 to [11 x [11 x i8]]*
  %scevgep66.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %131, i64 0, i64 1, i64 0
  %134 = bitcast i8* %scevgep66.5 to [11 x [11 x i8]]*
  %call16.5.1 = call zeroext i8 (...) @rand()
  store i8 %call16.5.1, i8* %scevgep59.5, align 1
  %135 = load i8, i8* %scevgep59.5, align 1
  store i8 %135, i8* %scevgep66.5, align 1
  %scevgep59.5.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %133, i64 0, i64 0, i64 1
  %136 = bitcast i8* %scevgep59.5.1 to [11 x [11 x i8]]*
  %scevgep66.5.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %134, i64 0, i64 1, i64 0
  %137 = bitcast i8* %scevgep66.5.1 to [11 x [11 x i8]]*
  %call16.5.2 = call zeroext i8 (...) @rand()
  store i8 %call16.5.2, i8* %scevgep59.5.1, align 1
  %138 = load i8, i8* %scevgep59.5.1, align 1
  store i8 %138, i8* %scevgep66.5.1, align 1
  %scevgep59.5.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %136, i64 0, i64 0, i64 1
  %139 = bitcast i8* %scevgep59.5.2 to [11 x [11 x i8]]*
  %scevgep66.5.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %137, i64 0, i64 1, i64 0
  %140 = bitcast i8* %scevgep66.5.2 to [11 x [11 x i8]]*
  %call16.5.3 = call zeroext i8 (...) @rand()
  store i8 %call16.5.3, i8* %scevgep59.5.2, align 1
  %141 = load i8, i8* %scevgep59.5.2, align 1
  store i8 %141, i8* %scevgep66.5.2, align 1
  %scevgep59.5.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %139, i64 0, i64 0, i64 1
  %scevgep66.5.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %140, i64 0, i64 1, i64 0
  %call16.5.4 = call zeroext i8 (...) @rand()
  store i8 %call16.5.4, i8* %scevgep59.5.3, align 1
  %142 = load i8, i8* %scevgep59.5.3, align 1
  store i8 %142, i8* %scevgep66.5.3, align 1
  %scevgep57.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %130, i64 0, i64 1, i64 1
  %143 = bitcast i8* %scevgep57.5 to [11 x [11 x i8]]*
  %scevgep64.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %131, i64 0, i64 1, i64 1
  %144 = bitcast i8* %scevgep64.5 to [11 x [11 x i8]]*
  %call16.6 = call zeroext i8 (...) @rand()
  store i8 %call16.6, i8* %scevgep57.5, align 1
  %145 = load i8, i8* %scevgep57.5, align 1
  store i8 %145, i8* %scevgep64.5, align 1
  %scevgep59.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %143, i64 0, i64 0, i64 1
  %146 = bitcast i8* %scevgep59.6 to [11 x [11 x i8]]*
  %scevgep66.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %144, i64 0, i64 1, i64 0
  %147 = bitcast i8* %scevgep66.6 to [11 x [11 x i8]]*
  %call16.6.1 = call zeroext i8 (...) @rand()
  store i8 %call16.6.1, i8* %scevgep59.6, align 1
  %148 = load i8, i8* %scevgep59.6, align 1
  store i8 %148, i8* %scevgep66.6, align 1
  %scevgep59.6.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %146, i64 0, i64 0, i64 1
  %149 = bitcast i8* %scevgep59.6.1 to [11 x [11 x i8]]*
  %scevgep66.6.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %147, i64 0, i64 1, i64 0
  %150 = bitcast i8* %scevgep66.6.1 to [11 x [11 x i8]]*
  %call16.6.2 = call zeroext i8 (...) @rand()
  store i8 %call16.6.2, i8* %scevgep59.6.1, align 1
  %151 = load i8, i8* %scevgep59.6.1, align 1
  store i8 %151, i8* %scevgep66.6.1, align 1
  %scevgep59.6.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %149, i64 0, i64 0, i64 1
  %scevgep66.6.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %150, i64 0, i64 1, i64 0
  %call16.6.3 = call zeroext i8 (...) @rand()
  store i8 %call16.6.3, i8* %scevgep59.6.2, align 1
  %152 = load i8, i8* %scevgep59.6.2, align 1
  store i8 %152, i8* %scevgep66.6.2, align 1
  %scevgep57.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %143, i64 0, i64 1, i64 1
  %153 = bitcast i8* %scevgep57.6 to [11 x [11 x i8]]*
  %scevgep64.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %144, i64 0, i64 1, i64 1
  %154 = bitcast i8* %scevgep64.6 to [11 x [11 x i8]]*
  %call16.7 = call zeroext i8 (...) @rand()
  store i8 %call16.7, i8* %scevgep57.6, align 1
  %155 = load i8, i8* %scevgep57.6, align 1
  store i8 %155, i8* %scevgep64.6, align 1
  %scevgep59.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %153, i64 0, i64 0, i64 1
  %156 = bitcast i8* %scevgep59.7 to [11 x [11 x i8]]*
  %scevgep66.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %154, i64 0, i64 1, i64 0
  %157 = bitcast i8* %scevgep66.7 to [11 x [11 x i8]]*
  %call16.7.1 = call zeroext i8 (...) @rand()
  store i8 %call16.7.1, i8* %scevgep59.7, align 1
  %158 = load i8, i8* %scevgep59.7, align 1
  store i8 %158, i8* %scevgep66.7, align 1
  %scevgep59.7.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %156, i64 0, i64 0, i64 1
  %scevgep66.7.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %157, i64 0, i64 1, i64 0
  %call16.7.2 = call zeroext i8 (...) @rand()
  store i8 %call16.7.2, i8* %scevgep59.7.1, align 1
  %159 = load i8, i8* %scevgep59.7.1, align 1
  store i8 %159, i8* %scevgep66.7.1, align 1
  %scevgep57.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %153, i64 0, i64 1, i64 1
  %160 = bitcast i8* %scevgep57.7 to [11 x [11 x i8]]*
  %scevgep64.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %154, i64 0, i64 1, i64 1
  %161 = bitcast i8* %scevgep64.7 to [11 x [11 x i8]]*
  %call16.8 = call zeroext i8 (...) @rand()
  store i8 %call16.8, i8* %scevgep57.7, align 1
  %162 = load i8, i8* %scevgep57.7, align 1
  store i8 %162, i8* %scevgep64.7, align 1
  %scevgep59.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %160, i64 0, i64 0, i64 1
  %scevgep66.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %161, i64 0, i64 1, i64 0
  %call16.8.1 = call zeroext i8 (...) @rand()
  store i8 %call16.8.1, i8* %scevgep59.8, align 1
  %163 = load i8, i8* %scevgep59.8, align 1
  store i8 %163, i8* %scevgep66.8, align 1
  %scevgep57.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %160, i64 0, i64 1, i64 1
  %scevgep64.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %161, i64 0, i64 1, i64 1
  %call16.9 = call zeroext i8 (...) @rand()
  store i8 %call16.9, i8* %scevgep57.8, align 1
  %164 = load i8, i8* %scevgep57.8, align 1
  store i8 %164, i8* %scevgep64.8, align 1
  %scevgep31.1 = getelementptr i8, i8* %b, i64 1
  %165 = load i8, i8* %scevgep31.1, align 1
  %conv44.1 = zext i8 %165 to i32
  %scevgep34.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 1
  %166 = load i8, i8* %scevgep34.1, align 1
  %conv49.1 = zext i8 %166 to i32
  %xor.1 = xor i32 %conv44.1, %conv49.1
  %conv50.1 = trunc i32 %xor.1 to i8
  %scevgep38.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %s, i64 0, i64 0, i64 1
  store i8 %conv50.1, i8* %scevgep38.1, align 1
  %167 = load i8, i8* %a, align 1
  %conv57.1 = zext i8 %167 to i32
  %xor58.1 = xor i32 %conv57.1, 1
  %conv59.1 = trunc i32 %xor58.1 to i8
  %scevgep35.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 1
  %168 = load i8, i8* %scevgep35.1, align 1
  %call64.1 = call zeroext i8 @mult(i8 zeroext %conv59.1, i8 zeroext %168)
  %scevgep42.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %p0, i64 0, i64 0, i64 1
  store i8 %call64.1, i8* %scevgep42.1, align 1
  %169 = load i8, i8* %a, align 1
  %scevgep39.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %s, i64 0, i64 0, i64 1
  %170 = load i8, i8* %scevgep39.1, align 1
  %call75.1 = call zeroext i8 @mult(i8 zeroext %169, i8 zeroext %170)
  %scevgep46.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %p1, i64 0, i64 0, i64 1
  store i8 %call75.1, i8* %scevgep46.1, align 1
  %scevgep43.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %p0, i64 0, i64 0, i64 1
  %171 = load i8, i8* %scevgep43.1, align 1
  %conv84.1 = zext i8 %171 to i32
  %scevgep47.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %p1, i64 0, i64 0, i64 1
  %172 = load i8, i8* %scevgep47.1, align 1
  %conv89.1 = zext i8 %172 to i32
  %xor90.1 = xor i32 %conv84.1, %conv89.1
  %conv91.1 = trunc i32 %xor90.1 to i8
  %scevgep50.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %z, i64 0, i64 0, i64 1
  store i8 %conv91.1, i8* %scevgep50.1, align 1
  %scevgep31.2 = getelementptr i8, i8* %b, i64 2
  %173 = load i8, i8* %scevgep31.2, align 1
  %conv44.2 = zext i8 %173 to i32
  %scevgep34.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 2
  %174 = load i8, i8* %scevgep34.2, align 1
  %conv49.2 = zext i8 %174 to i32
  %xor.2 = xor i32 %conv44.2, %conv49.2
  %conv50.2 = trunc i32 %xor.2 to i8
  %scevgep38.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %s, i64 0, i64 0, i64 2
  store i8 %conv50.2, i8* %scevgep38.2, align 1
  %175 = load i8, i8* %a, align 1
  %conv57.2 = zext i8 %175 to i32
  %xor58.2 = xor i32 %conv57.2, 1
  %conv59.2 = trunc i32 %xor58.2 to i8
  %scevgep35.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 2
  %176 = load i8, i8* %scevgep35.2, align 1
  %call64.2 = call zeroext i8 @mult(i8 zeroext %conv59.2, i8 zeroext %176)
  %scevgep42.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %p0, i64 0, i64 0, i64 2
  store i8 %call64.2, i8* %scevgep42.2, align 1
  %177 = load i8, i8* %a, align 1
  %scevgep39.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %s, i64 0, i64 0, i64 2
  %178 = load i8, i8* %scevgep39.2, align 1
  %call75.2 = call zeroext i8 @mult(i8 zeroext %177, i8 zeroext %178)
  %scevgep46.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %p1, i64 0, i64 0, i64 2
  store i8 %call75.2, i8* %scevgep46.2, align 1
  %scevgep43.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %p0, i64 0, i64 0, i64 2
  %179 = load i8, i8* %scevgep43.2, align 1
  %conv84.2 = zext i8 %179 to i32
  %scevgep47.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %p1, i64 0, i64 0, i64 2
  %180 = load i8, i8* %scevgep47.2, align 1
  %conv89.2 = zext i8 %180 to i32
  %xor90.2 = xor i32 %conv84.2, %conv89.2
  %conv91.2 = trunc i32 %xor90.2 to i8
  %scevgep50.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %z, i64 0, i64 0, i64 2
  store i8 %conv91.2, i8* %scevgep50.2, align 1
  %scevgep31.3 = getelementptr i8, i8* %b, i64 3
  %181 = load i8, i8* %scevgep31.3, align 1
  %conv44.3 = zext i8 %181 to i32
  %scevgep34.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 3
  %182 = load i8, i8* %scevgep34.3, align 1
  %conv49.3 = zext i8 %182 to i32
  %xor.3 = xor i32 %conv44.3, %conv49.3
  %conv50.3 = trunc i32 %xor.3 to i8
  %scevgep38.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %s, i64 0, i64 0, i64 3
  store i8 %conv50.3, i8* %scevgep38.3, align 1
  %183 = load i8, i8* %a, align 1
  %conv57.3 = zext i8 %183 to i32
  %xor58.3 = xor i32 %conv57.3, 1
  %conv59.3 = trunc i32 %xor58.3 to i8
  %scevgep35.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 3
  %184 = load i8, i8* %scevgep35.3, align 1
  %call64.3 = call zeroext i8 @mult(i8 zeroext %conv59.3, i8 zeroext %184)
  %scevgep42.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %p0, i64 0, i64 0, i64 3
  store i8 %call64.3, i8* %scevgep42.3, align 1
  %185 = load i8, i8* %a, align 1
  %scevgep39.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %s, i64 0, i64 0, i64 3
  %186 = load i8, i8* %scevgep39.3, align 1
  %call75.3 = call zeroext i8 @mult(i8 zeroext %185, i8 zeroext %186)
  %scevgep46.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %p1, i64 0, i64 0, i64 3
  store i8 %call75.3, i8* %scevgep46.3, align 1
  %scevgep43.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %p0, i64 0, i64 0, i64 3
  %187 = load i8, i8* %scevgep43.3, align 1
  %conv84.3 = zext i8 %187 to i32
  %scevgep47.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %p1, i64 0, i64 0, i64 3
  %188 = load i8, i8* %scevgep47.3, align 1
  %conv89.3 = zext i8 %188 to i32
  %xor90.3 = xor i32 %conv84.3, %conv89.3
  %conv91.3 = trunc i32 %xor90.3 to i8
  %scevgep50.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %z, i64 0, i64 0, i64 3
  store i8 %conv91.3, i8* %scevgep50.3, align 1
  %scevgep31.4 = getelementptr i8, i8* %b, i64 4
  %189 = load i8, i8* %scevgep31.4, align 1
  %conv44.4 = zext i8 %189 to i32
  %scevgep34.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 4
  %190 = load i8, i8* %scevgep34.4, align 1
  %conv49.4 = zext i8 %190 to i32
  %xor.4 = xor i32 %conv44.4, %conv49.4
  %conv50.4 = trunc i32 %xor.4 to i8
  %scevgep38.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %s, i64 0, i64 0, i64 4
  store i8 %conv50.4, i8* %scevgep38.4, align 1
  %191 = load i8, i8* %a, align 1
  %conv57.4 = zext i8 %191 to i32
  %xor58.4 = xor i32 %conv57.4, 1
  %conv59.4 = trunc i32 %xor58.4 to i8
  %scevgep35.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 4
  %192 = load i8, i8* %scevgep35.4, align 1
  %call64.4 = call zeroext i8 @mult(i8 zeroext %conv59.4, i8 zeroext %192)
  %scevgep42.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %p0, i64 0, i64 0, i64 4
  store i8 %call64.4, i8* %scevgep42.4, align 1
  %193 = load i8, i8* %a, align 1
  %scevgep39.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %s, i64 0, i64 0, i64 4
  %194 = load i8, i8* %scevgep39.4, align 1
  %call75.4 = call zeroext i8 @mult(i8 zeroext %193, i8 zeroext %194)
  %scevgep46.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %p1, i64 0, i64 0, i64 4
  store i8 %call75.4, i8* %scevgep46.4, align 1
  %scevgep43.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %p0, i64 0, i64 0, i64 4
  %195 = load i8, i8* %scevgep43.4, align 1
  %conv84.4 = zext i8 %195 to i32
  %scevgep47.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %p1, i64 0, i64 0, i64 4
  %196 = load i8, i8* %scevgep47.4, align 1
  %conv89.4 = zext i8 %196 to i32
  %xor90.4 = xor i32 %conv84.4, %conv89.4
  %conv91.4 = trunc i32 %xor90.4 to i8
  %scevgep50.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %z, i64 0, i64 0, i64 4
  store i8 %conv91.4, i8* %scevgep50.4, align 1
  %scevgep31.5 = getelementptr i8, i8* %b, i64 5
  %197 = load i8, i8* %scevgep31.5, align 1
  %conv44.5 = zext i8 %197 to i32
  %scevgep34.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 5
  %198 = load i8, i8* %scevgep34.5, align 1
  %conv49.5 = zext i8 %198 to i32
  %xor.5 = xor i32 %conv44.5, %conv49.5
  %conv50.5 = trunc i32 %xor.5 to i8
  %scevgep38.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %s, i64 0, i64 0, i64 5
  store i8 %conv50.5, i8* %scevgep38.5, align 1
  %199 = load i8, i8* %a, align 1
  %conv57.5 = zext i8 %199 to i32
  %xor58.5 = xor i32 %conv57.5, 1
  %conv59.5 = trunc i32 %xor58.5 to i8
  %scevgep35.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 5
  %200 = load i8, i8* %scevgep35.5, align 1
  %call64.5 = call zeroext i8 @mult(i8 zeroext %conv59.5, i8 zeroext %200)
  %scevgep42.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %p0, i64 0, i64 0, i64 5
  store i8 %call64.5, i8* %scevgep42.5, align 1
  %201 = load i8, i8* %a, align 1
  %scevgep39.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %s, i64 0, i64 0, i64 5
  %202 = load i8, i8* %scevgep39.5, align 1
  %call75.5 = call zeroext i8 @mult(i8 zeroext %201, i8 zeroext %202)
  %scevgep46.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %p1, i64 0, i64 0, i64 5
  store i8 %call75.5, i8* %scevgep46.5, align 1
  %scevgep43.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %p0, i64 0, i64 0, i64 5
  %203 = load i8, i8* %scevgep43.5, align 1
  %conv84.5 = zext i8 %203 to i32
  %scevgep47.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %p1, i64 0, i64 0, i64 5
  %204 = load i8, i8* %scevgep47.5, align 1
  %conv89.5 = zext i8 %204 to i32
  %xor90.5 = xor i32 %conv84.5, %conv89.5
  %conv91.5 = trunc i32 %xor90.5 to i8
  %scevgep50.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %z, i64 0, i64 0, i64 5
  store i8 %conv91.5, i8* %scevgep50.5, align 1
  %scevgep31.6 = getelementptr i8, i8* %b, i64 6
  %205 = load i8, i8* %scevgep31.6, align 1
  %conv44.6 = zext i8 %205 to i32
  %scevgep34.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 6
  %206 = load i8, i8* %scevgep34.6, align 1
  %conv49.6 = zext i8 %206 to i32
  %xor.6 = xor i32 %conv44.6, %conv49.6
  %conv50.6 = trunc i32 %xor.6 to i8
  %scevgep38.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %s, i64 0, i64 0, i64 6
  store i8 %conv50.6, i8* %scevgep38.6, align 1
  %207 = load i8, i8* %a, align 1
  %conv57.6 = zext i8 %207 to i32
  %xor58.6 = xor i32 %conv57.6, 1
  %conv59.6 = trunc i32 %xor58.6 to i8
  %scevgep35.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 6
  %208 = load i8, i8* %scevgep35.6, align 1
  %call64.6 = call zeroext i8 @mult(i8 zeroext %conv59.6, i8 zeroext %208)
  %scevgep42.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %p0, i64 0, i64 0, i64 6
  store i8 %call64.6, i8* %scevgep42.6, align 1
  %209 = load i8, i8* %a, align 1
  %scevgep39.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %s, i64 0, i64 0, i64 6
  %210 = load i8, i8* %scevgep39.6, align 1
  %call75.6 = call zeroext i8 @mult(i8 zeroext %209, i8 zeroext %210)
  %scevgep46.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %p1, i64 0, i64 0, i64 6
  store i8 %call75.6, i8* %scevgep46.6, align 1
  %scevgep43.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %p0, i64 0, i64 0, i64 6
  %211 = load i8, i8* %scevgep43.6, align 1
  %conv84.6 = zext i8 %211 to i32
  %scevgep47.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %p1, i64 0, i64 0, i64 6
  %212 = load i8, i8* %scevgep47.6, align 1
  %conv89.6 = zext i8 %212 to i32
  %xor90.6 = xor i32 %conv84.6, %conv89.6
  %conv91.6 = trunc i32 %xor90.6 to i8
  %scevgep50.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %z, i64 0, i64 0, i64 6
  store i8 %conv91.6, i8* %scevgep50.6, align 1
  %scevgep31.7 = getelementptr i8, i8* %b, i64 7
  %213 = load i8, i8* %scevgep31.7, align 1
  %conv44.7 = zext i8 %213 to i32
  %scevgep34.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 7
  %214 = load i8, i8* %scevgep34.7, align 1
  %conv49.7 = zext i8 %214 to i32
  %xor.7 = xor i32 %conv44.7, %conv49.7
  %conv50.7 = trunc i32 %xor.7 to i8
  %scevgep38.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %s, i64 0, i64 0, i64 7
  store i8 %conv50.7, i8* %scevgep38.7, align 1
  %215 = load i8, i8* %a, align 1
  %conv57.7 = zext i8 %215 to i32
  %xor58.7 = xor i32 %conv57.7, 1
  %conv59.7 = trunc i32 %xor58.7 to i8
  %scevgep35.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 7
  %216 = load i8, i8* %scevgep35.7, align 1
  %call64.7 = call zeroext i8 @mult(i8 zeroext %conv59.7, i8 zeroext %216)
  %scevgep42.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %p0, i64 0, i64 0, i64 7
  store i8 %call64.7, i8* %scevgep42.7, align 1
  %217 = load i8, i8* %a, align 1
  %scevgep39.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %s, i64 0, i64 0, i64 7
  %218 = load i8, i8* %scevgep39.7, align 1
  %call75.7 = call zeroext i8 @mult(i8 zeroext %217, i8 zeroext %218)
  %scevgep46.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %p1, i64 0, i64 0, i64 7
  store i8 %call75.7, i8* %scevgep46.7, align 1
  %scevgep43.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %p0, i64 0, i64 0, i64 7
  %219 = load i8, i8* %scevgep43.7, align 1
  %conv84.7 = zext i8 %219 to i32
  %scevgep47.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %p1, i64 0, i64 0, i64 7
  %220 = load i8, i8* %scevgep47.7, align 1
  %conv89.7 = zext i8 %220 to i32
  %xor90.7 = xor i32 %conv84.7, %conv89.7
  %conv91.7 = trunc i32 %xor90.7 to i8
  %scevgep50.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %z, i64 0, i64 0, i64 7
  store i8 %conv91.7, i8* %scevgep50.7, align 1
  %scevgep31.8 = getelementptr i8, i8* %b, i64 8
  %221 = load i8, i8* %scevgep31.8, align 1
  %conv44.8 = zext i8 %221 to i32
  %scevgep34.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 8
  %222 = load i8, i8* %scevgep34.8, align 1
  %conv49.8 = zext i8 %222 to i32
  %xor.8 = xor i32 %conv44.8, %conv49.8
  %conv50.8 = trunc i32 %xor.8 to i8
  %scevgep38.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %s, i64 0, i64 0, i64 8
  store i8 %conv50.8, i8* %scevgep38.8, align 1
  %223 = load i8, i8* %a, align 1
  %conv57.8 = zext i8 %223 to i32
  %xor58.8 = xor i32 %conv57.8, 1
  %conv59.8 = trunc i32 %xor58.8 to i8
  %scevgep35.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 8
  %224 = load i8, i8* %scevgep35.8, align 1
  %call64.8 = call zeroext i8 @mult(i8 zeroext %conv59.8, i8 zeroext %224)
  %scevgep42.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %p0, i64 0, i64 0, i64 8
  store i8 %call64.8, i8* %scevgep42.8, align 1
  %225 = load i8, i8* %a, align 1
  %scevgep39.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %s, i64 0, i64 0, i64 8
  %226 = load i8, i8* %scevgep39.8, align 1
  %call75.8 = call zeroext i8 @mult(i8 zeroext %225, i8 zeroext %226)
  %scevgep46.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %p1, i64 0, i64 0, i64 8
  store i8 %call75.8, i8* %scevgep46.8, align 1
  %scevgep43.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %p0, i64 0, i64 0, i64 8
  %227 = load i8, i8* %scevgep43.8, align 1
  %conv84.8 = zext i8 %227 to i32
  %scevgep47.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %p1, i64 0, i64 0, i64 8
  %228 = load i8, i8* %scevgep47.8, align 1
  %conv89.8 = zext i8 %228 to i32
  %xor90.8 = xor i32 %conv84.8, %conv89.8
  %conv91.8 = trunc i32 %xor90.8 to i8
  %scevgep50.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %z, i64 0, i64 0, i64 8
  store i8 %conv91.8, i8* %scevgep50.8, align 1
  %scevgep31.9 = getelementptr i8, i8* %b, i64 9
  %229 = load i8, i8* %scevgep31.9, align 1
  %conv44.9 = zext i8 %229 to i32
  %scevgep34.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 9
  %230 = load i8, i8* %scevgep34.9, align 1
  %conv49.9 = zext i8 %230 to i32
  %xor.9 = xor i32 %conv44.9, %conv49.9
  %conv50.9 = trunc i32 %xor.9 to i8
  %scevgep38.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %s, i64 0, i64 0, i64 9
  store i8 %conv50.9, i8* %scevgep38.9, align 1
  %231 = load i8, i8* %a, align 1
  %conv57.9 = zext i8 %231 to i32
  %xor58.9 = xor i32 %conv57.9, 1
  %conv59.9 = trunc i32 %xor58.9 to i8
  %scevgep35.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 9
  %232 = load i8, i8* %scevgep35.9, align 1
  %call64.9 = call zeroext i8 @mult(i8 zeroext %conv59.9, i8 zeroext %232)
  %scevgep42.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %p0, i64 0, i64 0, i64 9
  store i8 %call64.9, i8* %scevgep42.9, align 1
  %233 = load i8, i8* %a, align 1
  %scevgep39.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %s, i64 0, i64 0, i64 9
  %234 = load i8, i8* %scevgep39.9, align 1
  %call75.9 = call zeroext i8 @mult(i8 zeroext %233, i8 zeroext %234)
  %scevgep46.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %p1, i64 0, i64 0, i64 9
  store i8 %call75.9, i8* %scevgep46.9, align 1
  %scevgep43.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %p0, i64 0, i64 0, i64 9
  %235 = load i8, i8* %scevgep43.9, align 1
  %conv84.9 = zext i8 %235 to i32
  %scevgep47.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %p1, i64 0, i64 0, i64 9
  %236 = load i8, i8* %scevgep47.9, align 1
  %conv89.9 = zext i8 %236 to i32
  %xor90.9 = xor i32 %conv84.9, %conv89.9
  %conv91.9 = trunc i32 %xor90.9 to i8
  %scevgep50.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %z, i64 0, i64 0, i64 9
  store i8 %conv91.9, i8* %scevgep50.9, align 1
  %scevgep31.10 = getelementptr i8, i8* %b, i64 10
  %237 = load i8, i8* %scevgep31.10, align 1
  %conv44.10 = zext i8 %237 to i32
  %scevgep34.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 10
  %238 = load i8, i8* %scevgep34.10, align 1
  %conv49.10 = zext i8 %238 to i32
  %xor.10 = xor i32 %conv44.10, %conv49.10
  %conv50.10 = trunc i32 %xor.10 to i8
  %scevgep38.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %s, i64 0, i64 0, i64 10
  store i8 %conv50.10, i8* %scevgep38.10, align 1
  %239 = load i8, i8* %a, align 1
  %conv57.10 = zext i8 %239 to i32
  %xor58.10 = xor i32 %conv57.10, 1
  %conv59.10 = trunc i32 %xor58.10 to i8
  %scevgep35.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 0, i64 10
  %240 = load i8, i8* %scevgep35.10, align 1
  %call64.10 = call zeroext i8 @mult(i8 zeroext %conv59.10, i8 zeroext %240)
  %scevgep42.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %p0, i64 0, i64 0, i64 10
  store i8 %call64.10, i8* %scevgep42.10, align 1
  %241 = load i8, i8* %a, align 1
  %scevgep39.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %s, i64 0, i64 0, i64 10
  %242 = load i8, i8* %scevgep39.10, align 1
  %call75.10 = call zeroext i8 @mult(i8 zeroext %241, i8 zeroext %242)
  %scevgep46.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %p1, i64 0, i64 0, i64 10
  store i8 %call75.10, i8* %scevgep46.10, align 1
  %scevgep43.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %p0, i64 0, i64 0, i64 10
  %243 = load i8, i8* %scevgep43.10, align 1
  %conv84.10 = zext i8 %243 to i32
  %scevgep47.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %p1, i64 0, i64 0, i64 10
  %244 = load i8, i8* %scevgep47.10, align 1
  %conv89.10 = zext i8 %244 to i32
  %xor90.10 = xor i32 %conv84.10, %conv89.10
  %conv91.10 = trunc i32 %xor90.10 to i8
  %scevgep50.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %z, i64 0, i64 0, i64 10
  store i8 %conv91.10, i8* %scevgep50.10, align 1
  %scevgep33 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %r, i64 0, i64 1, i64 0
  %245 = bitcast i8* %scevgep33 to [11 x [11 x i8]]*
  %scevgep37 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %s, i64 0, i64 1, i64 0
  %246 = bitcast i8* %scevgep37 to [11 x [11 x i8]]*
  %scevgep41 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %p0, i64 0, i64 1, i64 0
  %247 = bitcast i8* %scevgep41 to [11 x [11 x i8]]*
  %scevgep45 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %p1, i64 0, i64 1, i64 0
  %248 = bitcast i8* %scevgep45 to [11 x [11 x i8]]*
  %scevgep49 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %z, i64 0, i64 1, i64 0
  %249 = bitcast i8* %scevgep49 to [11 x [11 x i8]]*
  %arrayidx56.1 = getelementptr inbounds i8, i8* %a, i64 1
  %arrayidx70.1 = getelementptr inbounds i8, i8* %a, i64 1
  %250 = load i8, i8* %b, align 1
  %conv44.1178 = zext i8 %250 to i32
  %scevgep34.1179 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %245, i64 0, i64 0, i64 0
  %251 = load i8, i8* %scevgep34.1179, align 1
  %conv49.1180 = zext i8 %251 to i32
  %xor.1181 = xor i32 %conv44.1178, %conv49.1180
  %conv50.1182 = trunc i32 %xor.1181 to i8
  %scevgep38.1183 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %246, i64 0, i64 0, i64 0
  store i8 %conv50.1182, i8* %scevgep38.1183, align 1
  %252 = load i8, i8* %arrayidx56.1, align 1
  %conv57.1184 = zext i8 %252 to i32
  %xor58.1185 = xor i32 %conv57.1184, 1
  %conv59.1186 = trunc i32 %xor58.1185 to i8
  %scevgep35.1187 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %245, i64 0, i64 0, i64 0
  %253 = load i8, i8* %scevgep35.1187, align 1
  %call64.1188 = call zeroext i8 @mult(i8 zeroext %conv59.1186, i8 zeroext %253)
  %scevgep42.1189 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %247, i64 0, i64 0, i64 0
  store i8 %call64.1188, i8* %scevgep42.1189, align 1
  %254 = load i8, i8* %arrayidx70.1, align 1
  %scevgep39.1190 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %246, i64 0, i64 0, i64 0
  %255 = load i8, i8* %scevgep39.1190, align 1
  %call75.1191 = call zeroext i8 @mult(i8 zeroext %254, i8 zeroext %255)
  %scevgep46.1192 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %248, i64 0, i64 0, i64 0
  store i8 %call75.1191, i8* %scevgep46.1192, align 1
  %scevgep43.1193 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %247, i64 0, i64 0, i64 0
  %256 = load i8, i8* %scevgep43.1193, align 1
  %conv84.1194 = zext i8 %256 to i32
  %scevgep47.1195 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %248, i64 0, i64 0, i64 0
  %257 = load i8, i8* %scevgep47.1195, align 1
  %conv89.1196 = zext i8 %257 to i32
  %xor90.1197 = xor i32 %conv84.1194, %conv89.1196
  %conv91.1198 = trunc i32 %xor90.1197 to i8
  %scevgep50.1199 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %249, i64 0, i64 0, i64 0
  store i8 %conv91.1198, i8* %scevgep50.1199, align 1
  %scevgep31.2.1 = getelementptr i8, i8* %b, i64 2
  %258 = load i8, i8* %scevgep31.2.1, align 1
  %conv44.2.1 = zext i8 %258 to i32
  %scevgep34.2.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %245, i64 0, i64 0, i64 2
  %259 = load i8, i8* %scevgep34.2.1, align 1
  %conv49.2.1 = zext i8 %259 to i32
  %xor.2.1 = xor i32 %conv44.2.1, %conv49.2.1
  %conv50.2.1 = trunc i32 %xor.2.1 to i8
  %scevgep38.2.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %246, i64 0, i64 0, i64 2
  store i8 %conv50.2.1, i8* %scevgep38.2.1, align 1
  %260 = load i8, i8* %arrayidx56.1, align 1
  %conv57.2.1 = zext i8 %260 to i32
  %xor58.2.1 = xor i32 %conv57.2.1, 1
  %conv59.2.1 = trunc i32 %xor58.2.1 to i8
  %scevgep35.2.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %245, i64 0, i64 0, i64 2
  %261 = load i8, i8* %scevgep35.2.1, align 1
  %call64.2.1 = call zeroext i8 @mult(i8 zeroext %conv59.2.1, i8 zeroext %261)
  %scevgep42.2.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %247, i64 0, i64 0, i64 2
  store i8 %call64.2.1, i8* %scevgep42.2.1, align 1
  %262 = load i8, i8* %arrayidx70.1, align 1
  %scevgep39.2.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %246, i64 0, i64 0, i64 2
  %263 = load i8, i8* %scevgep39.2.1, align 1
  %call75.2.1 = call zeroext i8 @mult(i8 zeroext %262, i8 zeroext %263)
  %scevgep46.2.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %248, i64 0, i64 0, i64 2
  store i8 %call75.2.1, i8* %scevgep46.2.1, align 1
  %scevgep43.2.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %247, i64 0, i64 0, i64 2
  %264 = load i8, i8* %scevgep43.2.1, align 1
  %conv84.2.1 = zext i8 %264 to i32
  %scevgep47.2.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %248, i64 0, i64 0, i64 2
  %265 = load i8, i8* %scevgep47.2.1, align 1
  %conv89.2.1 = zext i8 %265 to i32
  %xor90.2.1 = xor i32 %conv84.2.1, %conv89.2.1
  %conv91.2.1 = trunc i32 %xor90.2.1 to i8
  %scevgep50.2.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %249, i64 0, i64 0, i64 2
  store i8 %conv91.2.1, i8* %scevgep50.2.1, align 1
  %scevgep31.3.1 = getelementptr i8, i8* %b, i64 3
  %266 = load i8, i8* %scevgep31.3.1, align 1
  %conv44.3.1 = zext i8 %266 to i32
  %scevgep34.3.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %245, i64 0, i64 0, i64 3
  %267 = load i8, i8* %scevgep34.3.1, align 1
  %conv49.3.1 = zext i8 %267 to i32
  %xor.3.1 = xor i32 %conv44.3.1, %conv49.3.1
  %conv50.3.1 = trunc i32 %xor.3.1 to i8
  %scevgep38.3.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %246, i64 0, i64 0, i64 3
  store i8 %conv50.3.1, i8* %scevgep38.3.1, align 1
  %268 = load i8, i8* %arrayidx56.1, align 1
  %conv57.3.1 = zext i8 %268 to i32
  %xor58.3.1 = xor i32 %conv57.3.1, 1
  %conv59.3.1 = trunc i32 %xor58.3.1 to i8
  %scevgep35.3.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %245, i64 0, i64 0, i64 3
  %269 = load i8, i8* %scevgep35.3.1, align 1
  %call64.3.1 = call zeroext i8 @mult(i8 zeroext %conv59.3.1, i8 zeroext %269)
  %scevgep42.3.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %247, i64 0, i64 0, i64 3
  store i8 %call64.3.1, i8* %scevgep42.3.1, align 1
  %270 = load i8, i8* %arrayidx70.1, align 1
  %scevgep39.3.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %246, i64 0, i64 0, i64 3
  %271 = load i8, i8* %scevgep39.3.1, align 1
  %call75.3.1 = call zeroext i8 @mult(i8 zeroext %270, i8 zeroext %271)
  %scevgep46.3.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %248, i64 0, i64 0, i64 3
  store i8 %call75.3.1, i8* %scevgep46.3.1, align 1
  %scevgep43.3.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %247, i64 0, i64 0, i64 3
  %272 = load i8, i8* %scevgep43.3.1, align 1
  %conv84.3.1 = zext i8 %272 to i32
  %scevgep47.3.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %248, i64 0, i64 0, i64 3
  %273 = load i8, i8* %scevgep47.3.1, align 1
  %conv89.3.1 = zext i8 %273 to i32
  %xor90.3.1 = xor i32 %conv84.3.1, %conv89.3.1
  %conv91.3.1 = trunc i32 %xor90.3.1 to i8
  %scevgep50.3.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %249, i64 0, i64 0, i64 3
  store i8 %conv91.3.1, i8* %scevgep50.3.1, align 1
  %scevgep31.4.1 = getelementptr i8, i8* %b, i64 4
  %274 = load i8, i8* %scevgep31.4.1, align 1
  %conv44.4.1 = zext i8 %274 to i32
  %scevgep34.4.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %245, i64 0, i64 0, i64 4
  %275 = load i8, i8* %scevgep34.4.1, align 1
  %conv49.4.1 = zext i8 %275 to i32
  %xor.4.1 = xor i32 %conv44.4.1, %conv49.4.1
  %conv50.4.1 = trunc i32 %xor.4.1 to i8
  %scevgep38.4.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %246, i64 0, i64 0, i64 4
  store i8 %conv50.4.1, i8* %scevgep38.4.1, align 1
  %276 = load i8, i8* %arrayidx56.1, align 1
  %conv57.4.1 = zext i8 %276 to i32
  %xor58.4.1 = xor i32 %conv57.4.1, 1
  %conv59.4.1 = trunc i32 %xor58.4.1 to i8
  %scevgep35.4.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %245, i64 0, i64 0, i64 4
  %277 = load i8, i8* %scevgep35.4.1, align 1
  %call64.4.1 = call zeroext i8 @mult(i8 zeroext %conv59.4.1, i8 zeroext %277)
  %scevgep42.4.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %247, i64 0, i64 0, i64 4
  store i8 %call64.4.1, i8* %scevgep42.4.1, align 1
  %278 = load i8, i8* %arrayidx70.1, align 1
  %scevgep39.4.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %246, i64 0, i64 0, i64 4
  %279 = load i8, i8* %scevgep39.4.1, align 1
  %call75.4.1 = call zeroext i8 @mult(i8 zeroext %278, i8 zeroext %279)
  %scevgep46.4.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %248, i64 0, i64 0, i64 4
  store i8 %call75.4.1, i8* %scevgep46.4.1, align 1
  %scevgep43.4.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %247, i64 0, i64 0, i64 4
  %280 = load i8, i8* %scevgep43.4.1, align 1
  %conv84.4.1 = zext i8 %280 to i32
  %scevgep47.4.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %248, i64 0, i64 0, i64 4
  %281 = load i8, i8* %scevgep47.4.1, align 1
  %conv89.4.1 = zext i8 %281 to i32
  %xor90.4.1 = xor i32 %conv84.4.1, %conv89.4.1
  %conv91.4.1 = trunc i32 %xor90.4.1 to i8
  %scevgep50.4.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %249, i64 0, i64 0, i64 4
  store i8 %conv91.4.1, i8* %scevgep50.4.1, align 1
  %scevgep31.5.1 = getelementptr i8, i8* %b, i64 5
  %282 = load i8, i8* %scevgep31.5.1, align 1
  %conv44.5.1 = zext i8 %282 to i32
  %scevgep34.5.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %245, i64 0, i64 0, i64 5
  %283 = load i8, i8* %scevgep34.5.1, align 1
  %conv49.5.1 = zext i8 %283 to i32
  %xor.5.1 = xor i32 %conv44.5.1, %conv49.5.1
  %conv50.5.1 = trunc i32 %xor.5.1 to i8
  %scevgep38.5.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %246, i64 0, i64 0, i64 5
  store i8 %conv50.5.1, i8* %scevgep38.5.1, align 1
  %284 = load i8, i8* %arrayidx56.1, align 1
  %conv57.5.1 = zext i8 %284 to i32
  %xor58.5.1 = xor i32 %conv57.5.1, 1
  %conv59.5.1 = trunc i32 %xor58.5.1 to i8
  %scevgep35.5.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %245, i64 0, i64 0, i64 5
  %285 = load i8, i8* %scevgep35.5.1, align 1
  %call64.5.1 = call zeroext i8 @mult(i8 zeroext %conv59.5.1, i8 zeroext %285)
  %scevgep42.5.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %247, i64 0, i64 0, i64 5
  store i8 %call64.5.1, i8* %scevgep42.5.1, align 1
  %286 = load i8, i8* %arrayidx70.1, align 1
  %scevgep39.5.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %246, i64 0, i64 0, i64 5
  %287 = load i8, i8* %scevgep39.5.1, align 1
  %call75.5.1 = call zeroext i8 @mult(i8 zeroext %286, i8 zeroext %287)
  %scevgep46.5.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %248, i64 0, i64 0, i64 5
  store i8 %call75.5.1, i8* %scevgep46.5.1, align 1
  %scevgep43.5.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %247, i64 0, i64 0, i64 5
  %288 = load i8, i8* %scevgep43.5.1, align 1
  %conv84.5.1 = zext i8 %288 to i32
  %scevgep47.5.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %248, i64 0, i64 0, i64 5
  %289 = load i8, i8* %scevgep47.5.1, align 1
  %conv89.5.1 = zext i8 %289 to i32
  %xor90.5.1 = xor i32 %conv84.5.1, %conv89.5.1
  %conv91.5.1 = trunc i32 %xor90.5.1 to i8
  %scevgep50.5.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %249, i64 0, i64 0, i64 5
  store i8 %conv91.5.1, i8* %scevgep50.5.1, align 1
  %scevgep31.6.1 = getelementptr i8, i8* %b, i64 6
  %290 = load i8, i8* %scevgep31.6.1, align 1
  %conv44.6.1 = zext i8 %290 to i32
  %scevgep34.6.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %245, i64 0, i64 0, i64 6
  %291 = load i8, i8* %scevgep34.6.1, align 1
  %conv49.6.1 = zext i8 %291 to i32
  %xor.6.1 = xor i32 %conv44.6.1, %conv49.6.1
  %conv50.6.1 = trunc i32 %xor.6.1 to i8
  %scevgep38.6.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %246, i64 0, i64 0, i64 6
  store i8 %conv50.6.1, i8* %scevgep38.6.1, align 1
  %292 = load i8, i8* %arrayidx56.1, align 1
  %conv57.6.1 = zext i8 %292 to i32
  %xor58.6.1 = xor i32 %conv57.6.1, 1
  %conv59.6.1 = trunc i32 %xor58.6.1 to i8
  %scevgep35.6.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %245, i64 0, i64 0, i64 6
  %293 = load i8, i8* %scevgep35.6.1, align 1
  %call64.6.1 = call zeroext i8 @mult(i8 zeroext %conv59.6.1, i8 zeroext %293)
  %scevgep42.6.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %247, i64 0, i64 0, i64 6
  store i8 %call64.6.1, i8* %scevgep42.6.1, align 1
  %294 = load i8, i8* %arrayidx70.1, align 1
  %scevgep39.6.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %246, i64 0, i64 0, i64 6
  %295 = load i8, i8* %scevgep39.6.1, align 1
  %call75.6.1 = call zeroext i8 @mult(i8 zeroext %294, i8 zeroext %295)
  %scevgep46.6.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %248, i64 0, i64 0, i64 6
  store i8 %call75.6.1, i8* %scevgep46.6.1, align 1
  %scevgep43.6.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %247, i64 0, i64 0, i64 6
  %296 = load i8, i8* %scevgep43.6.1, align 1
  %conv84.6.1 = zext i8 %296 to i32
  %scevgep47.6.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %248, i64 0, i64 0, i64 6
  %297 = load i8, i8* %scevgep47.6.1, align 1
  %conv89.6.1 = zext i8 %297 to i32
  %xor90.6.1 = xor i32 %conv84.6.1, %conv89.6.1
  %conv91.6.1 = trunc i32 %xor90.6.1 to i8
  %scevgep50.6.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %249, i64 0, i64 0, i64 6
  store i8 %conv91.6.1, i8* %scevgep50.6.1, align 1
  %scevgep31.7.1 = getelementptr i8, i8* %b, i64 7
  %298 = load i8, i8* %scevgep31.7.1, align 1
  %conv44.7.1 = zext i8 %298 to i32
  %scevgep34.7.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %245, i64 0, i64 0, i64 7
  %299 = load i8, i8* %scevgep34.7.1, align 1
  %conv49.7.1 = zext i8 %299 to i32
  %xor.7.1 = xor i32 %conv44.7.1, %conv49.7.1
  %conv50.7.1 = trunc i32 %xor.7.1 to i8
  %scevgep38.7.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %246, i64 0, i64 0, i64 7
  store i8 %conv50.7.1, i8* %scevgep38.7.1, align 1
  %300 = load i8, i8* %arrayidx56.1, align 1
  %conv57.7.1 = zext i8 %300 to i32
  %xor58.7.1 = xor i32 %conv57.7.1, 1
  %conv59.7.1 = trunc i32 %xor58.7.1 to i8
  %scevgep35.7.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %245, i64 0, i64 0, i64 7
  %301 = load i8, i8* %scevgep35.7.1, align 1
  %call64.7.1 = call zeroext i8 @mult(i8 zeroext %conv59.7.1, i8 zeroext %301)
  %scevgep42.7.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %247, i64 0, i64 0, i64 7
  store i8 %call64.7.1, i8* %scevgep42.7.1, align 1
  %302 = load i8, i8* %arrayidx70.1, align 1
  %scevgep39.7.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %246, i64 0, i64 0, i64 7
  %303 = load i8, i8* %scevgep39.7.1, align 1
  %call75.7.1 = call zeroext i8 @mult(i8 zeroext %302, i8 zeroext %303)
  %scevgep46.7.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %248, i64 0, i64 0, i64 7
  store i8 %call75.7.1, i8* %scevgep46.7.1, align 1
  %scevgep43.7.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %247, i64 0, i64 0, i64 7
  %304 = load i8, i8* %scevgep43.7.1, align 1
  %conv84.7.1 = zext i8 %304 to i32
  %scevgep47.7.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %248, i64 0, i64 0, i64 7
  %305 = load i8, i8* %scevgep47.7.1, align 1
  %conv89.7.1 = zext i8 %305 to i32
  %xor90.7.1 = xor i32 %conv84.7.1, %conv89.7.1
  %conv91.7.1 = trunc i32 %xor90.7.1 to i8
  %scevgep50.7.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %249, i64 0, i64 0, i64 7
  store i8 %conv91.7.1, i8* %scevgep50.7.1, align 1
  %scevgep31.8.1 = getelementptr i8, i8* %b, i64 8
  %306 = load i8, i8* %scevgep31.8.1, align 1
  %conv44.8.1 = zext i8 %306 to i32
  %scevgep34.8.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %245, i64 0, i64 0, i64 8
  %307 = load i8, i8* %scevgep34.8.1, align 1
  %conv49.8.1 = zext i8 %307 to i32
  %xor.8.1 = xor i32 %conv44.8.1, %conv49.8.1
  %conv50.8.1 = trunc i32 %xor.8.1 to i8
  %scevgep38.8.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %246, i64 0, i64 0, i64 8
  store i8 %conv50.8.1, i8* %scevgep38.8.1, align 1
  %308 = load i8, i8* %arrayidx56.1, align 1
  %conv57.8.1 = zext i8 %308 to i32
  %xor58.8.1 = xor i32 %conv57.8.1, 1
  %conv59.8.1 = trunc i32 %xor58.8.1 to i8
  %scevgep35.8.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %245, i64 0, i64 0, i64 8
  %309 = load i8, i8* %scevgep35.8.1, align 1
  %call64.8.1 = call zeroext i8 @mult(i8 zeroext %conv59.8.1, i8 zeroext %309)
  %scevgep42.8.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %247, i64 0, i64 0, i64 8
  store i8 %call64.8.1, i8* %scevgep42.8.1, align 1
  %310 = load i8, i8* %arrayidx70.1, align 1
  %scevgep39.8.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %246, i64 0, i64 0, i64 8
  %311 = load i8, i8* %scevgep39.8.1, align 1
  %call75.8.1 = call zeroext i8 @mult(i8 zeroext %310, i8 zeroext %311)
  %scevgep46.8.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %248, i64 0, i64 0, i64 8
  store i8 %call75.8.1, i8* %scevgep46.8.1, align 1
  %scevgep43.8.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %247, i64 0, i64 0, i64 8
  %312 = load i8, i8* %scevgep43.8.1, align 1
  %conv84.8.1 = zext i8 %312 to i32
  %scevgep47.8.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %248, i64 0, i64 0, i64 8
  %313 = load i8, i8* %scevgep47.8.1, align 1
  %conv89.8.1 = zext i8 %313 to i32
  %xor90.8.1 = xor i32 %conv84.8.1, %conv89.8.1
  %conv91.8.1 = trunc i32 %xor90.8.1 to i8
  %scevgep50.8.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %249, i64 0, i64 0, i64 8
  store i8 %conv91.8.1, i8* %scevgep50.8.1, align 1
  %scevgep31.9.1 = getelementptr i8, i8* %b, i64 9
  %314 = load i8, i8* %scevgep31.9.1, align 1
  %conv44.9.1 = zext i8 %314 to i32
  %scevgep34.9.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %245, i64 0, i64 0, i64 9
  %315 = load i8, i8* %scevgep34.9.1, align 1
  %conv49.9.1 = zext i8 %315 to i32
  %xor.9.1 = xor i32 %conv44.9.1, %conv49.9.1
  %conv50.9.1 = trunc i32 %xor.9.1 to i8
  %scevgep38.9.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %246, i64 0, i64 0, i64 9
  store i8 %conv50.9.1, i8* %scevgep38.9.1, align 1
  %316 = load i8, i8* %arrayidx56.1, align 1
  %conv57.9.1 = zext i8 %316 to i32
  %xor58.9.1 = xor i32 %conv57.9.1, 1
  %conv59.9.1 = trunc i32 %xor58.9.1 to i8
  %scevgep35.9.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %245, i64 0, i64 0, i64 9
  %317 = load i8, i8* %scevgep35.9.1, align 1
  %call64.9.1 = call zeroext i8 @mult(i8 zeroext %conv59.9.1, i8 zeroext %317)
  %scevgep42.9.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %247, i64 0, i64 0, i64 9
  store i8 %call64.9.1, i8* %scevgep42.9.1, align 1
  %318 = load i8, i8* %arrayidx70.1, align 1
  %scevgep39.9.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %246, i64 0, i64 0, i64 9
  %319 = load i8, i8* %scevgep39.9.1, align 1
  %call75.9.1 = call zeroext i8 @mult(i8 zeroext %318, i8 zeroext %319)
  %scevgep46.9.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %248, i64 0, i64 0, i64 9
  store i8 %call75.9.1, i8* %scevgep46.9.1, align 1
  %scevgep43.9.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %247, i64 0, i64 0, i64 9
  %320 = load i8, i8* %scevgep43.9.1, align 1
  %conv84.9.1 = zext i8 %320 to i32
  %scevgep47.9.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %248, i64 0, i64 0, i64 9
  %321 = load i8, i8* %scevgep47.9.1, align 1
  %conv89.9.1 = zext i8 %321 to i32
  %xor90.9.1 = xor i32 %conv84.9.1, %conv89.9.1
  %conv91.9.1 = trunc i32 %xor90.9.1 to i8
  %scevgep50.9.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %249, i64 0, i64 0, i64 9
  store i8 %conv91.9.1, i8* %scevgep50.9.1, align 1
  %scevgep31.10.1 = getelementptr i8, i8* %b, i64 10
  %322 = load i8, i8* %scevgep31.10.1, align 1
  %conv44.10.1 = zext i8 %322 to i32
  %scevgep34.10.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %245, i64 0, i64 0, i64 10
  %323 = load i8, i8* %scevgep34.10.1, align 1
  %conv49.10.1 = zext i8 %323 to i32
  %xor.10.1 = xor i32 %conv44.10.1, %conv49.10.1
  %conv50.10.1 = trunc i32 %xor.10.1 to i8
  %scevgep38.10.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %246, i64 0, i64 0, i64 10
  store i8 %conv50.10.1, i8* %scevgep38.10.1, align 1
  %324 = load i8, i8* %arrayidx56.1, align 1
  %conv57.10.1 = zext i8 %324 to i32
  %xor58.10.1 = xor i32 %conv57.10.1, 1
  %conv59.10.1 = trunc i32 %xor58.10.1 to i8
  %scevgep35.10.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %245, i64 0, i64 0, i64 10
  %325 = load i8, i8* %scevgep35.10.1, align 1
  %call64.10.1 = call zeroext i8 @mult(i8 zeroext %conv59.10.1, i8 zeroext %325)
  %scevgep42.10.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %247, i64 0, i64 0, i64 10
  store i8 %call64.10.1, i8* %scevgep42.10.1, align 1
  %326 = load i8, i8* %arrayidx70.1, align 1
  %scevgep39.10.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %246, i64 0, i64 0, i64 10
  %327 = load i8, i8* %scevgep39.10.1, align 1
  %call75.10.1 = call zeroext i8 @mult(i8 zeroext %326, i8 zeroext %327)
  %scevgep46.10.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %248, i64 0, i64 0, i64 10
  store i8 %call75.10.1, i8* %scevgep46.10.1, align 1
  %scevgep43.10.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %247, i64 0, i64 0, i64 10
  %328 = load i8, i8* %scevgep43.10.1, align 1
  %conv84.10.1 = zext i8 %328 to i32
  %scevgep47.10.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %248, i64 0, i64 0, i64 10
  %329 = load i8, i8* %scevgep47.10.1, align 1
  %conv89.10.1 = zext i8 %329 to i32
  %xor90.10.1 = xor i32 %conv84.10.1, %conv89.10.1
  %conv91.10.1 = trunc i32 %xor90.10.1 to i8
  %scevgep50.10.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %249, i64 0, i64 0, i64 10
  store i8 %conv91.10.1, i8* %scevgep50.10.1, align 1
  %scevgep33.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %245, i64 0, i64 1, i64 0
  %330 = bitcast i8* %scevgep33.1 to [11 x [11 x i8]]*
  %scevgep37.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %246, i64 0, i64 1, i64 0
  %331 = bitcast i8* %scevgep37.1 to [11 x [11 x i8]]*
  %scevgep41.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %247, i64 0, i64 1, i64 0
  %332 = bitcast i8* %scevgep41.1 to [11 x [11 x i8]]*
  %scevgep45.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %248, i64 0, i64 1, i64 0
  %333 = bitcast i8* %scevgep45.1 to [11 x [11 x i8]]*
  %scevgep49.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %249, i64 0, i64 1, i64 0
  %334 = bitcast i8* %scevgep49.1 to [11 x [11 x i8]]*
  %arrayidx56.2 = getelementptr inbounds i8, i8* %a, i64 2
  %arrayidx70.2 = getelementptr inbounds i8, i8* %a, i64 2
  %335 = load i8, i8* %b, align 1
  %conv44.2205 = zext i8 %335 to i32
  %scevgep34.2206 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %330, i64 0, i64 0, i64 0
  %336 = load i8, i8* %scevgep34.2206, align 1
  %conv49.2207 = zext i8 %336 to i32
  %xor.2208 = xor i32 %conv44.2205, %conv49.2207
  %conv50.2209 = trunc i32 %xor.2208 to i8
  %scevgep38.2210 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %331, i64 0, i64 0, i64 0
  store i8 %conv50.2209, i8* %scevgep38.2210, align 1
  %337 = load i8, i8* %arrayidx56.2, align 1
  %conv57.2211 = zext i8 %337 to i32
  %xor58.2212 = xor i32 %conv57.2211, 1
  %conv59.2213 = trunc i32 %xor58.2212 to i8
  %scevgep35.2214 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %330, i64 0, i64 0, i64 0
  %338 = load i8, i8* %scevgep35.2214, align 1
  %call64.2215 = call zeroext i8 @mult(i8 zeroext %conv59.2213, i8 zeroext %338)
  %scevgep42.2216 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %332, i64 0, i64 0, i64 0
  store i8 %call64.2215, i8* %scevgep42.2216, align 1
  %339 = load i8, i8* %arrayidx70.2, align 1
  %scevgep39.2217 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %331, i64 0, i64 0, i64 0
  %340 = load i8, i8* %scevgep39.2217, align 1
  %call75.2218 = call zeroext i8 @mult(i8 zeroext %339, i8 zeroext %340)
  %scevgep46.2219 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %333, i64 0, i64 0, i64 0
  store i8 %call75.2218, i8* %scevgep46.2219, align 1
  %scevgep43.2220 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %332, i64 0, i64 0, i64 0
  %341 = load i8, i8* %scevgep43.2220, align 1
  %conv84.2221 = zext i8 %341 to i32
  %scevgep47.2222 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %333, i64 0, i64 0, i64 0
  %342 = load i8, i8* %scevgep47.2222, align 1
  %conv89.2223 = zext i8 %342 to i32
  %xor90.2224 = xor i32 %conv84.2221, %conv89.2223
  %conv91.2225 = trunc i32 %xor90.2224 to i8
  %scevgep50.2226 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %334, i64 0, i64 0, i64 0
  store i8 %conv91.2225, i8* %scevgep50.2226, align 1
  %scevgep31.1.2 = getelementptr i8, i8* %b, i64 1
  %343 = load i8, i8* %scevgep31.1.2, align 1
  %conv44.1.2 = zext i8 %343 to i32
  %scevgep34.1.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %330, i64 0, i64 0, i64 1
  %344 = load i8, i8* %scevgep34.1.2, align 1
  %conv49.1.2 = zext i8 %344 to i32
  %xor.1.2 = xor i32 %conv44.1.2, %conv49.1.2
  %conv50.1.2 = trunc i32 %xor.1.2 to i8
  %scevgep38.1.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %331, i64 0, i64 0, i64 1
  store i8 %conv50.1.2, i8* %scevgep38.1.2, align 1
  %345 = load i8, i8* %arrayidx56.2, align 1
  %conv57.1.2 = zext i8 %345 to i32
  %xor58.1.2 = xor i32 %conv57.1.2, 1
  %conv59.1.2 = trunc i32 %xor58.1.2 to i8
  %scevgep35.1.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %330, i64 0, i64 0, i64 1
  %346 = load i8, i8* %scevgep35.1.2, align 1
  %call64.1.2 = call zeroext i8 @mult(i8 zeroext %conv59.1.2, i8 zeroext %346)
  %scevgep42.1.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %332, i64 0, i64 0, i64 1
  store i8 %call64.1.2, i8* %scevgep42.1.2, align 1
  %347 = load i8, i8* %arrayidx70.2, align 1
  %scevgep39.1.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %331, i64 0, i64 0, i64 1
  %348 = load i8, i8* %scevgep39.1.2, align 1
  %call75.1.2 = call zeroext i8 @mult(i8 zeroext %347, i8 zeroext %348)
  %scevgep46.1.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %333, i64 0, i64 0, i64 1
  store i8 %call75.1.2, i8* %scevgep46.1.2, align 1
  %scevgep43.1.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %332, i64 0, i64 0, i64 1
  %349 = load i8, i8* %scevgep43.1.2, align 1
  %conv84.1.2 = zext i8 %349 to i32
  %scevgep47.1.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %333, i64 0, i64 0, i64 1
  %350 = load i8, i8* %scevgep47.1.2, align 1
  %conv89.1.2 = zext i8 %350 to i32
  %xor90.1.2 = xor i32 %conv84.1.2, %conv89.1.2
  %conv91.1.2 = trunc i32 %xor90.1.2 to i8
  %scevgep50.1.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %334, i64 0, i64 0, i64 1
  store i8 %conv91.1.2, i8* %scevgep50.1.2, align 1
  %scevgep31.3.2 = getelementptr i8, i8* %b, i64 3
  %351 = load i8, i8* %scevgep31.3.2, align 1
  %conv44.3.2 = zext i8 %351 to i32
  %scevgep34.3.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %330, i64 0, i64 0, i64 3
  %352 = load i8, i8* %scevgep34.3.2, align 1
  %conv49.3.2 = zext i8 %352 to i32
  %xor.3.2 = xor i32 %conv44.3.2, %conv49.3.2
  %conv50.3.2 = trunc i32 %xor.3.2 to i8
  %scevgep38.3.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %331, i64 0, i64 0, i64 3
  store i8 %conv50.3.2, i8* %scevgep38.3.2, align 1
  %353 = load i8, i8* %arrayidx56.2, align 1
  %conv57.3.2 = zext i8 %353 to i32
  %xor58.3.2 = xor i32 %conv57.3.2, 1
  %conv59.3.2 = trunc i32 %xor58.3.2 to i8
  %scevgep35.3.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %330, i64 0, i64 0, i64 3
  %354 = load i8, i8* %scevgep35.3.2, align 1
  %call64.3.2 = call zeroext i8 @mult(i8 zeroext %conv59.3.2, i8 zeroext %354)
  %scevgep42.3.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %332, i64 0, i64 0, i64 3
  store i8 %call64.3.2, i8* %scevgep42.3.2, align 1
  %355 = load i8, i8* %arrayidx70.2, align 1
  %scevgep39.3.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %331, i64 0, i64 0, i64 3
  %356 = load i8, i8* %scevgep39.3.2, align 1
  %call75.3.2 = call zeroext i8 @mult(i8 zeroext %355, i8 zeroext %356)
  %scevgep46.3.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %333, i64 0, i64 0, i64 3
  store i8 %call75.3.2, i8* %scevgep46.3.2, align 1
  %scevgep43.3.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %332, i64 0, i64 0, i64 3
  %357 = load i8, i8* %scevgep43.3.2, align 1
  %conv84.3.2 = zext i8 %357 to i32
  %scevgep47.3.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %333, i64 0, i64 0, i64 3
  %358 = load i8, i8* %scevgep47.3.2, align 1
  %conv89.3.2 = zext i8 %358 to i32
  %xor90.3.2 = xor i32 %conv84.3.2, %conv89.3.2
  %conv91.3.2 = trunc i32 %xor90.3.2 to i8
  %scevgep50.3.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %334, i64 0, i64 0, i64 3
  store i8 %conv91.3.2, i8* %scevgep50.3.2, align 1
  %scevgep31.4.2 = getelementptr i8, i8* %b, i64 4
  %359 = load i8, i8* %scevgep31.4.2, align 1
  %conv44.4.2 = zext i8 %359 to i32
  %scevgep34.4.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %330, i64 0, i64 0, i64 4
  %360 = load i8, i8* %scevgep34.4.2, align 1
  %conv49.4.2 = zext i8 %360 to i32
  %xor.4.2 = xor i32 %conv44.4.2, %conv49.4.2
  %conv50.4.2 = trunc i32 %xor.4.2 to i8
  %scevgep38.4.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %331, i64 0, i64 0, i64 4
  store i8 %conv50.4.2, i8* %scevgep38.4.2, align 1
  %361 = load i8, i8* %arrayidx56.2, align 1
  %conv57.4.2 = zext i8 %361 to i32
  %xor58.4.2 = xor i32 %conv57.4.2, 1
  %conv59.4.2 = trunc i32 %xor58.4.2 to i8
  %scevgep35.4.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %330, i64 0, i64 0, i64 4
  %362 = load i8, i8* %scevgep35.4.2, align 1
  %call64.4.2 = call zeroext i8 @mult(i8 zeroext %conv59.4.2, i8 zeroext %362)
  %scevgep42.4.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %332, i64 0, i64 0, i64 4
  store i8 %call64.4.2, i8* %scevgep42.4.2, align 1
  %363 = load i8, i8* %arrayidx70.2, align 1
  %scevgep39.4.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %331, i64 0, i64 0, i64 4
  %364 = load i8, i8* %scevgep39.4.2, align 1
  %call75.4.2 = call zeroext i8 @mult(i8 zeroext %363, i8 zeroext %364)
  %scevgep46.4.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %333, i64 0, i64 0, i64 4
  store i8 %call75.4.2, i8* %scevgep46.4.2, align 1
  %scevgep43.4.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %332, i64 0, i64 0, i64 4
  %365 = load i8, i8* %scevgep43.4.2, align 1
  %conv84.4.2 = zext i8 %365 to i32
  %scevgep47.4.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %333, i64 0, i64 0, i64 4
  %366 = load i8, i8* %scevgep47.4.2, align 1
  %conv89.4.2 = zext i8 %366 to i32
  %xor90.4.2 = xor i32 %conv84.4.2, %conv89.4.2
  %conv91.4.2 = trunc i32 %xor90.4.2 to i8
  %scevgep50.4.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %334, i64 0, i64 0, i64 4
  store i8 %conv91.4.2, i8* %scevgep50.4.2, align 1
  %scevgep31.5.2 = getelementptr i8, i8* %b, i64 5
  %367 = load i8, i8* %scevgep31.5.2, align 1
  %conv44.5.2 = zext i8 %367 to i32
  %scevgep34.5.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %330, i64 0, i64 0, i64 5
  %368 = load i8, i8* %scevgep34.5.2, align 1
  %conv49.5.2 = zext i8 %368 to i32
  %xor.5.2 = xor i32 %conv44.5.2, %conv49.5.2
  %conv50.5.2 = trunc i32 %xor.5.2 to i8
  %scevgep38.5.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %331, i64 0, i64 0, i64 5
  store i8 %conv50.5.2, i8* %scevgep38.5.2, align 1
  %369 = load i8, i8* %arrayidx56.2, align 1
  %conv57.5.2 = zext i8 %369 to i32
  %xor58.5.2 = xor i32 %conv57.5.2, 1
  %conv59.5.2 = trunc i32 %xor58.5.2 to i8
  %scevgep35.5.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %330, i64 0, i64 0, i64 5
  %370 = load i8, i8* %scevgep35.5.2, align 1
  %call64.5.2 = call zeroext i8 @mult(i8 zeroext %conv59.5.2, i8 zeroext %370)
  %scevgep42.5.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %332, i64 0, i64 0, i64 5
  store i8 %call64.5.2, i8* %scevgep42.5.2, align 1
  %371 = load i8, i8* %arrayidx70.2, align 1
  %scevgep39.5.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %331, i64 0, i64 0, i64 5
  %372 = load i8, i8* %scevgep39.5.2, align 1
  %call75.5.2 = call zeroext i8 @mult(i8 zeroext %371, i8 zeroext %372)
  %scevgep46.5.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %333, i64 0, i64 0, i64 5
  store i8 %call75.5.2, i8* %scevgep46.5.2, align 1
  %scevgep43.5.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %332, i64 0, i64 0, i64 5
  %373 = load i8, i8* %scevgep43.5.2, align 1
  %conv84.5.2 = zext i8 %373 to i32
  %scevgep47.5.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %333, i64 0, i64 0, i64 5
  %374 = load i8, i8* %scevgep47.5.2, align 1
  %conv89.5.2 = zext i8 %374 to i32
  %xor90.5.2 = xor i32 %conv84.5.2, %conv89.5.2
  %conv91.5.2 = trunc i32 %xor90.5.2 to i8
  %scevgep50.5.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %334, i64 0, i64 0, i64 5
  store i8 %conv91.5.2, i8* %scevgep50.5.2, align 1
  %scevgep31.6.2 = getelementptr i8, i8* %b, i64 6
  %375 = load i8, i8* %scevgep31.6.2, align 1
  %conv44.6.2 = zext i8 %375 to i32
  %scevgep34.6.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %330, i64 0, i64 0, i64 6
  %376 = load i8, i8* %scevgep34.6.2, align 1
  %conv49.6.2 = zext i8 %376 to i32
  %xor.6.2 = xor i32 %conv44.6.2, %conv49.6.2
  %conv50.6.2 = trunc i32 %xor.6.2 to i8
  %scevgep38.6.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %331, i64 0, i64 0, i64 6
  store i8 %conv50.6.2, i8* %scevgep38.6.2, align 1
  %377 = load i8, i8* %arrayidx56.2, align 1
  %conv57.6.2 = zext i8 %377 to i32
  %xor58.6.2 = xor i32 %conv57.6.2, 1
  %conv59.6.2 = trunc i32 %xor58.6.2 to i8
  %scevgep35.6.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %330, i64 0, i64 0, i64 6
  %378 = load i8, i8* %scevgep35.6.2, align 1
  %call64.6.2 = call zeroext i8 @mult(i8 zeroext %conv59.6.2, i8 zeroext %378)
  %scevgep42.6.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %332, i64 0, i64 0, i64 6
  store i8 %call64.6.2, i8* %scevgep42.6.2, align 1
  %379 = load i8, i8* %arrayidx70.2, align 1
  %scevgep39.6.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %331, i64 0, i64 0, i64 6
  %380 = load i8, i8* %scevgep39.6.2, align 1
  %call75.6.2 = call zeroext i8 @mult(i8 zeroext %379, i8 zeroext %380)
  %scevgep46.6.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %333, i64 0, i64 0, i64 6
  store i8 %call75.6.2, i8* %scevgep46.6.2, align 1
  %scevgep43.6.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %332, i64 0, i64 0, i64 6
  %381 = load i8, i8* %scevgep43.6.2, align 1
  %conv84.6.2 = zext i8 %381 to i32
  %scevgep47.6.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %333, i64 0, i64 0, i64 6
  %382 = load i8, i8* %scevgep47.6.2, align 1
  %conv89.6.2 = zext i8 %382 to i32
  %xor90.6.2 = xor i32 %conv84.6.2, %conv89.6.2
  %conv91.6.2 = trunc i32 %xor90.6.2 to i8
  %scevgep50.6.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %334, i64 0, i64 0, i64 6
  store i8 %conv91.6.2, i8* %scevgep50.6.2, align 1
  %scevgep31.7.2 = getelementptr i8, i8* %b, i64 7
  %383 = load i8, i8* %scevgep31.7.2, align 1
  %conv44.7.2 = zext i8 %383 to i32
  %scevgep34.7.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %330, i64 0, i64 0, i64 7
  %384 = load i8, i8* %scevgep34.7.2, align 1
  %conv49.7.2 = zext i8 %384 to i32
  %xor.7.2 = xor i32 %conv44.7.2, %conv49.7.2
  %conv50.7.2 = trunc i32 %xor.7.2 to i8
  %scevgep38.7.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %331, i64 0, i64 0, i64 7
  store i8 %conv50.7.2, i8* %scevgep38.7.2, align 1
  %385 = load i8, i8* %arrayidx56.2, align 1
  %conv57.7.2 = zext i8 %385 to i32
  %xor58.7.2 = xor i32 %conv57.7.2, 1
  %conv59.7.2 = trunc i32 %xor58.7.2 to i8
  %scevgep35.7.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %330, i64 0, i64 0, i64 7
  %386 = load i8, i8* %scevgep35.7.2, align 1
  %call64.7.2 = call zeroext i8 @mult(i8 zeroext %conv59.7.2, i8 zeroext %386)
  %scevgep42.7.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %332, i64 0, i64 0, i64 7
  store i8 %call64.7.2, i8* %scevgep42.7.2, align 1
  %387 = load i8, i8* %arrayidx70.2, align 1
  %scevgep39.7.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %331, i64 0, i64 0, i64 7
  %388 = load i8, i8* %scevgep39.7.2, align 1
  %call75.7.2 = call zeroext i8 @mult(i8 zeroext %387, i8 zeroext %388)
  %scevgep46.7.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %333, i64 0, i64 0, i64 7
  store i8 %call75.7.2, i8* %scevgep46.7.2, align 1
  %scevgep43.7.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %332, i64 0, i64 0, i64 7
  %389 = load i8, i8* %scevgep43.7.2, align 1
  %conv84.7.2 = zext i8 %389 to i32
  %scevgep47.7.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %333, i64 0, i64 0, i64 7
  %390 = load i8, i8* %scevgep47.7.2, align 1
  %conv89.7.2 = zext i8 %390 to i32
  %xor90.7.2 = xor i32 %conv84.7.2, %conv89.7.2
  %conv91.7.2 = trunc i32 %xor90.7.2 to i8
  %scevgep50.7.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %334, i64 0, i64 0, i64 7
  store i8 %conv91.7.2, i8* %scevgep50.7.2, align 1
  %scevgep31.8.2 = getelementptr i8, i8* %b, i64 8
  %391 = load i8, i8* %scevgep31.8.2, align 1
  %conv44.8.2 = zext i8 %391 to i32
  %scevgep34.8.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %330, i64 0, i64 0, i64 8
  %392 = load i8, i8* %scevgep34.8.2, align 1
  %conv49.8.2 = zext i8 %392 to i32
  %xor.8.2 = xor i32 %conv44.8.2, %conv49.8.2
  %conv50.8.2 = trunc i32 %xor.8.2 to i8
  %scevgep38.8.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %331, i64 0, i64 0, i64 8
  store i8 %conv50.8.2, i8* %scevgep38.8.2, align 1
  %393 = load i8, i8* %arrayidx56.2, align 1
  %conv57.8.2 = zext i8 %393 to i32
  %xor58.8.2 = xor i32 %conv57.8.2, 1
  %conv59.8.2 = trunc i32 %xor58.8.2 to i8
  %scevgep35.8.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %330, i64 0, i64 0, i64 8
  %394 = load i8, i8* %scevgep35.8.2, align 1
  %call64.8.2 = call zeroext i8 @mult(i8 zeroext %conv59.8.2, i8 zeroext %394)
  %scevgep42.8.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %332, i64 0, i64 0, i64 8
  store i8 %call64.8.2, i8* %scevgep42.8.2, align 1
  %395 = load i8, i8* %arrayidx70.2, align 1
  %scevgep39.8.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %331, i64 0, i64 0, i64 8
  %396 = load i8, i8* %scevgep39.8.2, align 1
  %call75.8.2 = call zeroext i8 @mult(i8 zeroext %395, i8 zeroext %396)
  %scevgep46.8.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %333, i64 0, i64 0, i64 8
  store i8 %call75.8.2, i8* %scevgep46.8.2, align 1
  %scevgep43.8.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %332, i64 0, i64 0, i64 8
  %397 = load i8, i8* %scevgep43.8.2, align 1
  %conv84.8.2 = zext i8 %397 to i32
  %scevgep47.8.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %333, i64 0, i64 0, i64 8
  %398 = load i8, i8* %scevgep47.8.2, align 1
  %conv89.8.2 = zext i8 %398 to i32
  %xor90.8.2 = xor i32 %conv84.8.2, %conv89.8.2
  %conv91.8.2 = trunc i32 %xor90.8.2 to i8
  %scevgep50.8.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %334, i64 0, i64 0, i64 8
  store i8 %conv91.8.2, i8* %scevgep50.8.2, align 1
  %scevgep31.9.2 = getelementptr i8, i8* %b, i64 9
  %399 = load i8, i8* %scevgep31.9.2, align 1
  %conv44.9.2 = zext i8 %399 to i32
  %scevgep34.9.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %330, i64 0, i64 0, i64 9
  %400 = load i8, i8* %scevgep34.9.2, align 1
  %conv49.9.2 = zext i8 %400 to i32
  %xor.9.2 = xor i32 %conv44.9.2, %conv49.9.2
  %conv50.9.2 = trunc i32 %xor.9.2 to i8
  %scevgep38.9.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %331, i64 0, i64 0, i64 9
  store i8 %conv50.9.2, i8* %scevgep38.9.2, align 1
  %401 = load i8, i8* %arrayidx56.2, align 1
  %conv57.9.2 = zext i8 %401 to i32
  %xor58.9.2 = xor i32 %conv57.9.2, 1
  %conv59.9.2 = trunc i32 %xor58.9.2 to i8
  %scevgep35.9.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %330, i64 0, i64 0, i64 9
  %402 = load i8, i8* %scevgep35.9.2, align 1
  %call64.9.2 = call zeroext i8 @mult(i8 zeroext %conv59.9.2, i8 zeroext %402)
  %scevgep42.9.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %332, i64 0, i64 0, i64 9
  store i8 %call64.9.2, i8* %scevgep42.9.2, align 1
  %403 = load i8, i8* %arrayidx70.2, align 1
  %scevgep39.9.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %331, i64 0, i64 0, i64 9
  %404 = load i8, i8* %scevgep39.9.2, align 1
  %call75.9.2 = call zeroext i8 @mult(i8 zeroext %403, i8 zeroext %404)
  %scevgep46.9.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %333, i64 0, i64 0, i64 9
  store i8 %call75.9.2, i8* %scevgep46.9.2, align 1
  %scevgep43.9.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %332, i64 0, i64 0, i64 9
  %405 = load i8, i8* %scevgep43.9.2, align 1
  %conv84.9.2 = zext i8 %405 to i32
  %scevgep47.9.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %333, i64 0, i64 0, i64 9
  %406 = load i8, i8* %scevgep47.9.2, align 1
  %conv89.9.2 = zext i8 %406 to i32
  %xor90.9.2 = xor i32 %conv84.9.2, %conv89.9.2
  %conv91.9.2 = trunc i32 %xor90.9.2 to i8
  %scevgep50.9.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %334, i64 0, i64 0, i64 9
  store i8 %conv91.9.2, i8* %scevgep50.9.2, align 1
  %scevgep31.10.2 = getelementptr i8, i8* %b, i64 10
  %407 = load i8, i8* %scevgep31.10.2, align 1
  %conv44.10.2 = zext i8 %407 to i32
  %scevgep34.10.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %330, i64 0, i64 0, i64 10
  %408 = load i8, i8* %scevgep34.10.2, align 1
  %conv49.10.2 = zext i8 %408 to i32
  %xor.10.2 = xor i32 %conv44.10.2, %conv49.10.2
  %conv50.10.2 = trunc i32 %xor.10.2 to i8
  %scevgep38.10.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %331, i64 0, i64 0, i64 10
  store i8 %conv50.10.2, i8* %scevgep38.10.2, align 1
  %409 = load i8, i8* %arrayidx56.2, align 1
  %conv57.10.2 = zext i8 %409 to i32
  %xor58.10.2 = xor i32 %conv57.10.2, 1
  %conv59.10.2 = trunc i32 %xor58.10.2 to i8
  %scevgep35.10.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %330, i64 0, i64 0, i64 10
  %410 = load i8, i8* %scevgep35.10.2, align 1
  %call64.10.2 = call zeroext i8 @mult(i8 zeroext %conv59.10.2, i8 zeroext %410)
  %scevgep42.10.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %332, i64 0, i64 0, i64 10
  store i8 %call64.10.2, i8* %scevgep42.10.2, align 1
  %411 = load i8, i8* %arrayidx70.2, align 1
  %scevgep39.10.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %331, i64 0, i64 0, i64 10
  %412 = load i8, i8* %scevgep39.10.2, align 1
  %call75.10.2 = call zeroext i8 @mult(i8 zeroext %411, i8 zeroext %412)
  %scevgep46.10.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %333, i64 0, i64 0, i64 10
  store i8 %call75.10.2, i8* %scevgep46.10.2, align 1
  %scevgep43.10.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %332, i64 0, i64 0, i64 10
  %413 = load i8, i8* %scevgep43.10.2, align 1
  %conv84.10.2 = zext i8 %413 to i32
  %scevgep47.10.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %333, i64 0, i64 0, i64 10
  %414 = load i8, i8* %scevgep47.10.2, align 1
  %conv89.10.2 = zext i8 %414 to i32
  %xor90.10.2 = xor i32 %conv84.10.2, %conv89.10.2
  %conv91.10.2 = trunc i32 %xor90.10.2 to i8
  %scevgep50.10.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %334, i64 0, i64 0, i64 10
  store i8 %conv91.10.2, i8* %scevgep50.10.2, align 1
  %scevgep33.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %330, i64 0, i64 1, i64 0
  %415 = bitcast i8* %scevgep33.2 to [11 x [11 x i8]]*
  %scevgep37.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %331, i64 0, i64 1, i64 0
  %416 = bitcast i8* %scevgep37.2 to [11 x [11 x i8]]*
  %scevgep41.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %332, i64 0, i64 1, i64 0
  %417 = bitcast i8* %scevgep41.2 to [11 x [11 x i8]]*
  %scevgep45.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %333, i64 0, i64 1, i64 0
  %418 = bitcast i8* %scevgep45.2 to [11 x [11 x i8]]*
  %scevgep49.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %334, i64 0, i64 1, i64 0
  %419 = bitcast i8* %scevgep49.2 to [11 x [11 x i8]]*
  %arrayidx56.3 = getelementptr inbounds i8, i8* %a, i64 3
  %arrayidx70.3 = getelementptr inbounds i8, i8* %a, i64 3
  %420 = load i8, i8* %b, align 1
  %conv44.3232 = zext i8 %420 to i32
  %scevgep34.3233 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %415, i64 0, i64 0, i64 0
  %421 = load i8, i8* %scevgep34.3233, align 1
  %conv49.3234 = zext i8 %421 to i32
  %xor.3235 = xor i32 %conv44.3232, %conv49.3234
  %conv50.3236 = trunc i32 %xor.3235 to i8
  %scevgep38.3237 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %416, i64 0, i64 0, i64 0
  store i8 %conv50.3236, i8* %scevgep38.3237, align 1
  %422 = load i8, i8* %arrayidx56.3, align 1
  %conv57.3238 = zext i8 %422 to i32
  %xor58.3239 = xor i32 %conv57.3238, 1
  %conv59.3240 = trunc i32 %xor58.3239 to i8
  %scevgep35.3241 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %415, i64 0, i64 0, i64 0
  %423 = load i8, i8* %scevgep35.3241, align 1
  %call64.3242 = call zeroext i8 @mult(i8 zeroext %conv59.3240, i8 zeroext %423)
  %scevgep42.3243 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %417, i64 0, i64 0, i64 0
  store i8 %call64.3242, i8* %scevgep42.3243, align 1
  %424 = load i8, i8* %arrayidx70.3, align 1
  %scevgep39.3244 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %416, i64 0, i64 0, i64 0
  %425 = load i8, i8* %scevgep39.3244, align 1
  %call75.3245 = call zeroext i8 @mult(i8 zeroext %424, i8 zeroext %425)
  %scevgep46.3246 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %418, i64 0, i64 0, i64 0
  store i8 %call75.3245, i8* %scevgep46.3246, align 1
  %scevgep43.3247 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %417, i64 0, i64 0, i64 0
  %426 = load i8, i8* %scevgep43.3247, align 1
  %conv84.3248 = zext i8 %426 to i32
  %scevgep47.3249 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %418, i64 0, i64 0, i64 0
  %427 = load i8, i8* %scevgep47.3249, align 1
  %conv89.3250 = zext i8 %427 to i32
  %xor90.3251 = xor i32 %conv84.3248, %conv89.3250
  %conv91.3252 = trunc i32 %xor90.3251 to i8
  %scevgep50.3253 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %419, i64 0, i64 0, i64 0
  store i8 %conv91.3252, i8* %scevgep50.3253, align 1
  %scevgep31.1.3 = getelementptr i8, i8* %b, i64 1
  %428 = load i8, i8* %scevgep31.1.3, align 1
  %conv44.1.3 = zext i8 %428 to i32
  %scevgep34.1.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %415, i64 0, i64 0, i64 1
  %429 = load i8, i8* %scevgep34.1.3, align 1
  %conv49.1.3 = zext i8 %429 to i32
  %xor.1.3 = xor i32 %conv44.1.3, %conv49.1.3
  %conv50.1.3 = trunc i32 %xor.1.3 to i8
  %scevgep38.1.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %416, i64 0, i64 0, i64 1
  store i8 %conv50.1.3, i8* %scevgep38.1.3, align 1
  %430 = load i8, i8* %arrayidx56.3, align 1
  %conv57.1.3 = zext i8 %430 to i32
  %xor58.1.3 = xor i32 %conv57.1.3, 1
  %conv59.1.3 = trunc i32 %xor58.1.3 to i8
  %scevgep35.1.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %415, i64 0, i64 0, i64 1
  %431 = load i8, i8* %scevgep35.1.3, align 1
  %call64.1.3 = call zeroext i8 @mult(i8 zeroext %conv59.1.3, i8 zeroext %431)
  %scevgep42.1.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %417, i64 0, i64 0, i64 1
  store i8 %call64.1.3, i8* %scevgep42.1.3, align 1
  %432 = load i8, i8* %arrayidx70.3, align 1
  %scevgep39.1.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %416, i64 0, i64 0, i64 1
  %433 = load i8, i8* %scevgep39.1.3, align 1
  %call75.1.3 = call zeroext i8 @mult(i8 zeroext %432, i8 zeroext %433)
  %scevgep46.1.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %418, i64 0, i64 0, i64 1
  store i8 %call75.1.3, i8* %scevgep46.1.3, align 1
  %scevgep43.1.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %417, i64 0, i64 0, i64 1
  %434 = load i8, i8* %scevgep43.1.3, align 1
  %conv84.1.3 = zext i8 %434 to i32
  %scevgep47.1.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %418, i64 0, i64 0, i64 1
  %435 = load i8, i8* %scevgep47.1.3, align 1
  %conv89.1.3 = zext i8 %435 to i32
  %xor90.1.3 = xor i32 %conv84.1.3, %conv89.1.3
  %conv91.1.3 = trunc i32 %xor90.1.3 to i8
  %scevgep50.1.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %419, i64 0, i64 0, i64 1
  store i8 %conv91.1.3, i8* %scevgep50.1.3, align 1
  %scevgep31.2.3 = getelementptr i8, i8* %b, i64 2
  %436 = load i8, i8* %scevgep31.2.3, align 1
  %conv44.2.3 = zext i8 %436 to i32
  %scevgep34.2.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %415, i64 0, i64 0, i64 2
  %437 = load i8, i8* %scevgep34.2.3, align 1
  %conv49.2.3 = zext i8 %437 to i32
  %xor.2.3 = xor i32 %conv44.2.3, %conv49.2.3
  %conv50.2.3 = trunc i32 %xor.2.3 to i8
  %scevgep38.2.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %416, i64 0, i64 0, i64 2
  store i8 %conv50.2.3, i8* %scevgep38.2.3, align 1
  %438 = load i8, i8* %arrayidx56.3, align 1
  %conv57.2.3 = zext i8 %438 to i32
  %xor58.2.3 = xor i32 %conv57.2.3, 1
  %conv59.2.3 = trunc i32 %xor58.2.3 to i8
  %scevgep35.2.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %415, i64 0, i64 0, i64 2
  %439 = load i8, i8* %scevgep35.2.3, align 1
  %call64.2.3 = call zeroext i8 @mult(i8 zeroext %conv59.2.3, i8 zeroext %439)
  %scevgep42.2.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %417, i64 0, i64 0, i64 2
  store i8 %call64.2.3, i8* %scevgep42.2.3, align 1
  %440 = load i8, i8* %arrayidx70.3, align 1
  %scevgep39.2.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %416, i64 0, i64 0, i64 2
  %441 = load i8, i8* %scevgep39.2.3, align 1
  %call75.2.3 = call zeroext i8 @mult(i8 zeroext %440, i8 zeroext %441)
  %scevgep46.2.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %418, i64 0, i64 0, i64 2
  store i8 %call75.2.3, i8* %scevgep46.2.3, align 1
  %scevgep43.2.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %417, i64 0, i64 0, i64 2
  %442 = load i8, i8* %scevgep43.2.3, align 1
  %conv84.2.3 = zext i8 %442 to i32
  %scevgep47.2.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %418, i64 0, i64 0, i64 2
  %443 = load i8, i8* %scevgep47.2.3, align 1
  %conv89.2.3 = zext i8 %443 to i32
  %xor90.2.3 = xor i32 %conv84.2.3, %conv89.2.3
  %conv91.2.3 = trunc i32 %xor90.2.3 to i8
  %scevgep50.2.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %419, i64 0, i64 0, i64 2
  store i8 %conv91.2.3, i8* %scevgep50.2.3, align 1
  %scevgep31.4.3 = getelementptr i8, i8* %b, i64 4
  %444 = load i8, i8* %scevgep31.4.3, align 1
  %conv44.4.3 = zext i8 %444 to i32
  %scevgep34.4.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %415, i64 0, i64 0, i64 4
  %445 = load i8, i8* %scevgep34.4.3, align 1
  %conv49.4.3 = zext i8 %445 to i32
  %xor.4.3 = xor i32 %conv44.4.3, %conv49.4.3
  %conv50.4.3 = trunc i32 %xor.4.3 to i8
  %scevgep38.4.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %416, i64 0, i64 0, i64 4
  store i8 %conv50.4.3, i8* %scevgep38.4.3, align 1
  %446 = load i8, i8* %arrayidx56.3, align 1
  %conv57.4.3 = zext i8 %446 to i32
  %xor58.4.3 = xor i32 %conv57.4.3, 1
  %conv59.4.3 = trunc i32 %xor58.4.3 to i8
  %scevgep35.4.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %415, i64 0, i64 0, i64 4
  %447 = load i8, i8* %scevgep35.4.3, align 1
  %call64.4.3 = call zeroext i8 @mult(i8 zeroext %conv59.4.3, i8 zeroext %447)
  %scevgep42.4.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %417, i64 0, i64 0, i64 4
  store i8 %call64.4.3, i8* %scevgep42.4.3, align 1
  %448 = load i8, i8* %arrayidx70.3, align 1
  %scevgep39.4.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %416, i64 0, i64 0, i64 4
  %449 = load i8, i8* %scevgep39.4.3, align 1
  %call75.4.3 = call zeroext i8 @mult(i8 zeroext %448, i8 zeroext %449)
  %scevgep46.4.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %418, i64 0, i64 0, i64 4
  store i8 %call75.4.3, i8* %scevgep46.4.3, align 1
  %scevgep43.4.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %417, i64 0, i64 0, i64 4
  %450 = load i8, i8* %scevgep43.4.3, align 1
  %conv84.4.3 = zext i8 %450 to i32
  %scevgep47.4.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %418, i64 0, i64 0, i64 4
  %451 = load i8, i8* %scevgep47.4.3, align 1
  %conv89.4.3 = zext i8 %451 to i32
  %xor90.4.3 = xor i32 %conv84.4.3, %conv89.4.3
  %conv91.4.3 = trunc i32 %xor90.4.3 to i8
  %scevgep50.4.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %419, i64 0, i64 0, i64 4
  store i8 %conv91.4.3, i8* %scevgep50.4.3, align 1
  %scevgep31.5.3 = getelementptr i8, i8* %b, i64 5
  %452 = load i8, i8* %scevgep31.5.3, align 1
  %conv44.5.3 = zext i8 %452 to i32
  %scevgep34.5.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %415, i64 0, i64 0, i64 5
  %453 = load i8, i8* %scevgep34.5.3, align 1
  %conv49.5.3 = zext i8 %453 to i32
  %xor.5.3 = xor i32 %conv44.5.3, %conv49.5.3
  %conv50.5.3 = trunc i32 %xor.5.3 to i8
  %scevgep38.5.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %416, i64 0, i64 0, i64 5
  store i8 %conv50.5.3, i8* %scevgep38.5.3, align 1
  %454 = load i8, i8* %arrayidx56.3, align 1
  %conv57.5.3 = zext i8 %454 to i32
  %xor58.5.3 = xor i32 %conv57.5.3, 1
  %conv59.5.3 = trunc i32 %xor58.5.3 to i8
  %scevgep35.5.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %415, i64 0, i64 0, i64 5
  %455 = load i8, i8* %scevgep35.5.3, align 1
  %call64.5.3 = call zeroext i8 @mult(i8 zeroext %conv59.5.3, i8 zeroext %455)
  %scevgep42.5.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %417, i64 0, i64 0, i64 5
  store i8 %call64.5.3, i8* %scevgep42.5.3, align 1
  %456 = load i8, i8* %arrayidx70.3, align 1
  %scevgep39.5.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %416, i64 0, i64 0, i64 5
  %457 = load i8, i8* %scevgep39.5.3, align 1
  %call75.5.3 = call zeroext i8 @mult(i8 zeroext %456, i8 zeroext %457)
  %scevgep46.5.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %418, i64 0, i64 0, i64 5
  store i8 %call75.5.3, i8* %scevgep46.5.3, align 1
  %scevgep43.5.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %417, i64 0, i64 0, i64 5
  %458 = load i8, i8* %scevgep43.5.3, align 1
  %conv84.5.3 = zext i8 %458 to i32
  %scevgep47.5.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %418, i64 0, i64 0, i64 5
  %459 = load i8, i8* %scevgep47.5.3, align 1
  %conv89.5.3 = zext i8 %459 to i32
  %xor90.5.3 = xor i32 %conv84.5.3, %conv89.5.3
  %conv91.5.3 = trunc i32 %xor90.5.3 to i8
  %scevgep50.5.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %419, i64 0, i64 0, i64 5
  store i8 %conv91.5.3, i8* %scevgep50.5.3, align 1
  %scevgep31.6.3 = getelementptr i8, i8* %b, i64 6
  %460 = load i8, i8* %scevgep31.6.3, align 1
  %conv44.6.3 = zext i8 %460 to i32
  %scevgep34.6.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %415, i64 0, i64 0, i64 6
  %461 = load i8, i8* %scevgep34.6.3, align 1
  %conv49.6.3 = zext i8 %461 to i32
  %xor.6.3 = xor i32 %conv44.6.3, %conv49.6.3
  %conv50.6.3 = trunc i32 %xor.6.3 to i8
  %scevgep38.6.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %416, i64 0, i64 0, i64 6
  store i8 %conv50.6.3, i8* %scevgep38.6.3, align 1
  %462 = load i8, i8* %arrayidx56.3, align 1
  %conv57.6.3 = zext i8 %462 to i32
  %xor58.6.3 = xor i32 %conv57.6.3, 1
  %conv59.6.3 = trunc i32 %xor58.6.3 to i8
  %scevgep35.6.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %415, i64 0, i64 0, i64 6
  %463 = load i8, i8* %scevgep35.6.3, align 1
  %call64.6.3 = call zeroext i8 @mult(i8 zeroext %conv59.6.3, i8 zeroext %463)
  %scevgep42.6.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %417, i64 0, i64 0, i64 6
  store i8 %call64.6.3, i8* %scevgep42.6.3, align 1
  %464 = load i8, i8* %arrayidx70.3, align 1
  %scevgep39.6.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %416, i64 0, i64 0, i64 6
  %465 = load i8, i8* %scevgep39.6.3, align 1
  %call75.6.3 = call zeroext i8 @mult(i8 zeroext %464, i8 zeroext %465)
  %scevgep46.6.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %418, i64 0, i64 0, i64 6
  store i8 %call75.6.3, i8* %scevgep46.6.3, align 1
  %scevgep43.6.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %417, i64 0, i64 0, i64 6
  %466 = load i8, i8* %scevgep43.6.3, align 1
  %conv84.6.3 = zext i8 %466 to i32
  %scevgep47.6.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %418, i64 0, i64 0, i64 6
  %467 = load i8, i8* %scevgep47.6.3, align 1
  %conv89.6.3 = zext i8 %467 to i32
  %xor90.6.3 = xor i32 %conv84.6.3, %conv89.6.3
  %conv91.6.3 = trunc i32 %xor90.6.3 to i8
  %scevgep50.6.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %419, i64 0, i64 0, i64 6
  store i8 %conv91.6.3, i8* %scevgep50.6.3, align 1
  %scevgep31.7.3 = getelementptr i8, i8* %b, i64 7
  %468 = load i8, i8* %scevgep31.7.3, align 1
  %conv44.7.3 = zext i8 %468 to i32
  %scevgep34.7.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %415, i64 0, i64 0, i64 7
  %469 = load i8, i8* %scevgep34.7.3, align 1
  %conv49.7.3 = zext i8 %469 to i32
  %xor.7.3 = xor i32 %conv44.7.3, %conv49.7.3
  %conv50.7.3 = trunc i32 %xor.7.3 to i8
  %scevgep38.7.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %416, i64 0, i64 0, i64 7
  store i8 %conv50.7.3, i8* %scevgep38.7.3, align 1
  %470 = load i8, i8* %arrayidx56.3, align 1
  %conv57.7.3 = zext i8 %470 to i32
  %xor58.7.3 = xor i32 %conv57.7.3, 1
  %conv59.7.3 = trunc i32 %xor58.7.3 to i8
  %scevgep35.7.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %415, i64 0, i64 0, i64 7
  %471 = load i8, i8* %scevgep35.7.3, align 1
  %call64.7.3 = call zeroext i8 @mult(i8 zeroext %conv59.7.3, i8 zeroext %471)
  %scevgep42.7.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %417, i64 0, i64 0, i64 7
  store i8 %call64.7.3, i8* %scevgep42.7.3, align 1
  %472 = load i8, i8* %arrayidx70.3, align 1
  %scevgep39.7.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %416, i64 0, i64 0, i64 7
  %473 = load i8, i8* %scevgep39.7.3, align 1
  %call75.7.3 = call zeroext i8 @mult(i8 zeroext %472, i8 zeroext %473)
  %scevgep46.7.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %418, i64 0, i64 0, i64 7
  store i8 %call75.7.3, i8* %scevgep46.7.3, align 1
  %scevgep43.7.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %417, i64 0, i64 0, i64 7
  %474 = load i8, i8* %scevgep43.7.3, align 1
  %conv84.7.3 = zext i8 %474 to i32
  %scevgep47.7.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %418, i64 0, i64 0, i64 7
  %475 = load i8, i8* %scevgep47.7.3, align 1
  %conv89.7.3 = zext i8 %475 to i32
  %xor90.7.3 = xor i32 %conv84.7.3, %conv89.7.3
  %conv91.7.3 = trunc i32 %xor90.7.3 to i8
  %scevgep50.7.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %419, i64 0, i64 0, i64 7
  store i8 %conv91.7.3, i8* %scevgep50.7.3, align 1
  %scevgep31.8.3 = getelementptr i8, i8* %b, i64 8
  %476 = load i8, i8* %scevgep31.8.3, align 1
  %conv44.8.3 = zext i8 %476 to i32
  %scevgep34.8.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %415, i64 0, i64 0, i64 8
  %477 = load i8, i8* %scevgep34.8.3, align 1
  %conv49.8.3 = zext i8 %477 to i32
  %xor.8.3 = xor i32 %conv44.8.3, %conv49.8.3
  %conv50.8.3 = trunc i32 %xor.8.3 to i8
  %scevgep38.8.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %416, i64 0, i64 0, i64 8
  store i8 %conv50.8.3, i8* %scevgep38.8.3, align 1
  %478 = load i8, i8* %arrayidx56.3, align 1
  %conv57.8.3 = zext i8 %478 to i32
  %xor58.8.3 = xor i32 %conv57.8.3, 1
  %conv59.8.3 = trunc i32 %xor58.8.3 to i8
  %scevgep35.8.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %415, i64 0, i64 0, i64 8
  %479 = load i8, i8* %scevgep35.8.3, align 1
  %call64.8.3 = call zeroext i8 @mult(i8 zeroext %conv59.8.3, i8 zeroext %479)
  %scevgep42.8.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %417, i64 0, i64 0, i64 8
  store i8 %call64.8.3, i8* %scevgep42.8.3, align 1
  %480 = load i8, i8* %arrayidx70.3, align 1
  %scevgep39.8.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %416, i64 0, i64 0, i64 8
  %481 = load i8, i8* %scevgep39.8.3, align 1
  %call75.8.3 = call zeroext i8 @mult(i8 zeroext %480, i8 zeroext %481)
  %scevgep46.8.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %418, i64 0, i64 0, i64 8
  store i8 %call75.8.3, i8* %scevgep46.8.3, align 1
  %scevgep43.8.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %417, i64 0, i64 0, i64 8
  %482 = load i8, i8* %scevgep43.8.3, align 1
  %conv84.8.3 = zext i8 %482 to i32
  %scevgep47.8.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %418, i64 0, i64 0, i64 8
  %483 = load i8, i8* %scevgep47.8.3, align 1
  %conv89.8.3 = zext i8 %483 to i32
  %xor90.8.3 = xor i32 %conv84.8.3, %conv89.8.3
  %conv91.8.3 = trunc i32 %xor90.8.3 to i8
  %scevgep50.8.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %419, i64 0, i64 0, i64 8
  store i8 %conv91.8.3, i8* %scevgep50.8.3, align 1
  %scevgep31.9.3 = getelementptr i8, i8* %b, i64 9
  %484 = load i8, i8* %scevgep31.9.3, align 1
  %conv44.9.3 = zext i8 %484 to i32
  %scevgep34.9.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %415, i64 0, i64 0, i64 9
  %485 = load i8, i8* %scevgep34.9.3, align 1
  %conv49.9.3 = zext i8 %485 to i32
  %xor.9.3 = xor i32 %conv44.9.3, %conv49.9.3
  %conv50.9.3 = trunc i32 %xor.9.3 to i8
  %scevgep38.9.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %416, i64 0, i64 0, i64 9
  store i8 %conv50.9.3, i8* %scevgep38.9.3, align 1
  %486 = load i8, i8* %arrayidx56.3, align 1
  %conv57.9.3 = zext i8 %486 to i32
  %xor58.9.3 = xor i32 %conv57.9.3, 1
  %conv59.9.3 = trunc i32 %xor58.9.3 to i8
  %scevgep35.9.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %415, i64 0, i64 0, i64 9
  %487 = load i8, i8* %scevgep35.9.3, align 1
  %call64.9.3 = call zeroext i8 @mult(i8 zeroext %conv59.9.3, i8 zeroext %487)
  %scevgep42.9.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %417, i64 0, i64 0, i64 9
  store i8 %call64.9.3, i8* %scevgep42.9.3, align 1
  %488 = load i8, i8* %arrayidx70.3, align 1
  %scevgep39.9.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %416, i64 0, i64 0, i64 9
  %489 = load i8, i8* %scevgep39.9.3, align 1
  %call75.9.3 = call zeroext i8 @mult(i8 zeroext %488, i8 zeroext %489)
  %scevgep46.9.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %418, i64 0, i64 0, i64 9
  store i8 %call75.9.3, i8* %scevgep46.9.3, align 1
  %scevgep43.9.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %417, i64 0, i64 0, i64 9
  %490 = load i8, i8* %scevgep43.9.3, align 1
  %conv84.9.3 = zext i8 %490 to i32
  %scevgep47.9.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %418, i64 0, i64 0, i64 9
  %491 = load i8, i8* %scevgep47.9.3, align 1
  %conv89.9.3 = zext i8 %491 to i32
  %xor90.9.3 = xor i32 %conv84.9.3, %conv89.9.3
  %conv91.9.3 = trunc i32 %xor90.9.3 to i8
  %scevgep50.9.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %419, i64 0, i64 0, i64 9
  store i8 %conv91.9.3, i8* %scevgep50.9.3, align 1
  %scevgep31.10.3 = getelementptr i8, i8* %b, i64 10
  %492 = load i8, i8* %scevgep31.10.3, align 1
  %conv44.10.3 = zext i8 %492 to i32
  %scevgep34.10.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %415, i64 0, i64 0, i64 10
  %493 = load i8, i8* %scevgep34.10.3, align 1
  %conv49.10.3 = zext i8 %493 to i32
  %xor.10.3 = xor i32 %conv44.10.3, %conv49.10.3
  %conv50.10.3 = trunc i32 %xor.10.3 to i8
  %scevgep38.10.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %416, i64 0, i64 0, i64 10
  store i8 %conv50.10.3, i8* %scevgep38.10.3, align 1
  %494 = load i8, i8* %arrayidx56.3, align 1
  %conv57.10.3 = zext i8 %494 to i32
  %xor58.10.3 = xor i32 %conv57.10.3, 1
  %conv59.10.3 = trunc i32 %xor58.10.3 to i8
  %scevgep35.10.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %415, i64 0, i64 0, i64 10
  %495 = load i8, i8* %scevgep35.10.3, align 1
  %call64.10.3 = call zeroext i8 @mult(i8 zeroext %conv59.10.3, i8 zeroext %495)
  %scevgep42.10.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %417, i64 0, i64 0, i64 10
  store i8 %call64.10.3, i8* %scevgep42.10.3, align 1
  %496 = load i8, i8* %arrayidx70.3, align 1
  %scevgep39.10.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %416, i64 0, i64 0, i64 10
  %497 = load i8, i8* %scevgep39.10.3, align 1
  %call75.10.3 = call zeroext i8 @mult(i8 zeroext %496, i8 zeroext %497)
  %scevgep46.10.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %418, i64 0, i64 0, i64 10
  store i8 %call75.10.3, i8* %scevgep46.10.3, align 1
  %scevgep43.10.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %417, i64 0, i64 0, i64 10
  %498 = load i8, i8* %scevgep43.10.3, align 1
  %conv84.10.3 = zext i8 %498 to i32
  %scevgep47.10.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %418, i64 0, i64 0, i64 10
  %499 = load i8, i8* %scevgep47.10.3, align 1
  %conv89.10.3 = zext i8 %499 to i32
  %xor90.10.3 = xor i32 %conv84.10.3, %conv89.10.3
  %conv91.10.3 = trunc i32 %xor90.10.3 to i8
  %scevgep50.10.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %419, i64 0, i64 0, i64 10
  store i8 %conv91.10.3, i8* %scevgep50.10.3, align 1
  %scevgep33.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %415, i64 0, i64 1, i64 0
  %500 = bitcast i8* %scevgep33.3 to [11 x [11 x i8]]*
  %scevgep37.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %416, i64 0, i64 1, i64 0
  %501 = bitcast i8* %scevgep37.3 to [11 x [11 x i8]]*
  %scevgep41.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %417, i64 0, i64 1, i64 0
  %502 = bitcast i8* %scevgep41.3 to [11 x [11 x i8]]*
  %scevgep45.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %418, i64 0, i64 1, i64 0
  %503 = bitcast i8* %scevgep45.3 to [11 x [11 x i8]]*
  %scevgep49.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %419, i64 0, i64 1, i64 0
  %504 = bitcast i8* %scevgep49.3 to [11 x [11 x i8]]*
  %arrayidx56.4 = getelementptr inbounds i8, i8* %a, i64 4
  %arrayidx70.4 = getelementptr inbounds i8, i8* %a, i64 4
  %505 = load i8, i8* %b, align 1
  %conv44.4259 = zext i8 %505 to i32
  %scevgep34.4260 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %500, i64 0, i64 0, i64 0
  %506 = load i8, i8* %scevgep34.4260, align 1
  %conv49.4261 = zext i8 %506 to i32
  %xor.4262 = xor i32 %conv44.4259, %conv49.4261
  %conv50.4263 = trunc i32 %xor.4262 to i8
  %scevgep38.4264 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %501, i64 0, i64 0, i64 0
  store i8 %conv50.4263, i8* %scevgep38.4264, align 1
  %507 = load i8, i8* %arrayidx56.4, align 1
  %conv57.4265 = zext i8 %507 to i32
  %xor58.4266 = xor i32 %conv57.4265, 1
  %conv59.4267 = trunc i32 %xor58.4266 to i8
  %scevgep35.4268 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %500, i64 0, i64 0, i64 0
  %508 = load i8, i8* %scevgep35.4268, align 1
  %call64.4269 = call zeroext i8 @mult(i8 zeroext %conv59.4267, i8 zeroext %508)
  %scevgep42.4270 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %502, i64 0, i64 0, i64 0
  store i8 %call64.4269, i8* %scevgep42.4270, align 1
  %509 = load i8, i8* %arrayidx70.4, align 1
  %scevgep39.4271 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %501, i64 0, i64 0, i64 0
  %510 = load i8, i8* %scevgep39.4271, align 1
  %call75.4272 = call zeroext i8 @mult(i8 zeroext %509, i8 zeroext %510)
  %scevgep46.4273 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %503, i64 0, i64 0, i64 0
  store i8 %call75.4272, i8* %scevgep46.4273, align 1
  %scevgep43.4274 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %502, i64 0, i64 0, i64 0
  %511 = load i8, i8* %scevgep43.4274, align 1
  %conv84.4275 = zext i8 %511 to i32
  %scevgep47.4276 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %503, i64 0, i64 0, i64 0
  %512 = load i8, i8* %scevgep47.4276, align 1
  %conv89.4277 = zext i8 %512 to i32
  %xor90.4278 = xor i32 %conv84.4275, %conv89.4277
  %conv91.4279 = trunc i32 %xor90.4278 to i8
  %scevgep50.4280 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %504, i64 0, i64 0, i64 0
  store i8 %conv91.4279, i8* %scevgep50.4280, align 1
  %scevgep31.1.4 = getelementptr i8, i8* %b, i64 1
  %513 = load i8, i8* %scevgep31.1.4, align 1
  %conv44.1.4 = zext i8 %513 to i32
  %scevgep34.1.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %500, i64 0, i64 0, i64 1
  %514 = load i8, i8* %scevgep34.1.4, align 1
  %conv49.1.4 = zext i8 %514 to i32
  %xor.1.4 = xor i32 %conv44.1.4, %conv49.1.4
  %conv50.1.4 = trunc i32 %xor.1.4 to i8
  %scevgep38.1.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %501, i64 0, i64 0, i64 1
  store i8 %conv50.1.4, i8* %scevgep38.1.4, align 1
  %515 = load i8, i8* %arrayidx56.4, align 1
  %conv57.1.4 = zext i8 %515 to i32
  %xor58.1.4 = xor i32 %conv57.1.4, 1
  %conv59.1.4 = trunc i32 %xor58.1.4 to i8
  %scevgep35.1.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %500, i64 0, i64 0, i64 1
  %516 = load i8, i8* %scevgep35.1.4, align 1
  %call64.1.4 = call zeroext i8 @mult(i8 zeroext %conv59.1.4, i8 zeroext %516)
  %scevgep42.1.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %502, i64 0, i64 0, i64 1
  store i8 %call64.1.4, i8* %scevgep42.1.4, align 1
  %517 = load i8, i8* %arrayidx70.4, align 1
  %scevgep39.1.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %501, i64 0, i64 0, i64 1
  %518 = load i8, i8* %scevgep39.1.4, align 1
  %call75.1.4 = call zeroext i8 @mult(i8 zeroext %517, i8 zeroext %518)
  %scevgep46.1.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %503, i64 0, i64 0, i64 1
  store i8 %call75.1.4, i8* %scevgep46.1.4, align 1
  %scevgep43.1.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %502, i64 0, i64 0, i64 1
  %519 = load i8, i8* %scevgep43.1.4, align 1
  %conv84.1.4 = zext i8 %519 to i32
  %scevgep47.1.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %503, i64 0, i64 0, i64 1
  %520 = load i8, i8* %scevgep47.1.4, align 1
  %conv89.1.4 = zext i8 %520 to i32
  %xor90.1.4 = xor i32 %conv84.1.4, %conv89.1.4
  %conv91.1.4 = trunc i32 %xor90.1.4 to i8
  %scevgep50.1.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %504, i64 0, i64 0, i64 1
  store i8 %conv91.1.4, i8* %scevgep50.1.4, align 1
  %scevgep31.2.4 = getelementptr i8, i8* %b, i64 2
  %521 = load i8, i8* %scevgep31.2.4, align 1
  %conv44.2.4 = zext i8 %521 to i32
  %scevgep34.2.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %500, i64 0, i64 0, i64 2
  %522 = load i8, i8* %scevgep34.2.4, align 1
  %conv49.2.4 = zext i8 %522 to i32
  %xor.2.4 = xor i32 %conv44.2.4, %conv49.2.4
  %conv50.2.4 = trunc i32 %xor.2.4 to i8
  %scevgep38.2.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %501, i64 0, i64 0, i64 2
  store i8 %conv50.2.4, i8* %scevgep38.2.4, align 1
  %523 = load i8, i8* %arrayidx56.4, align 1
  %conv57.2.4 = zext i8 %523 to i32
  %xor58.2.4 = xor i32 %conv57.2.4, 1
  %conv59.2.4 = trunc i32 %xor58.2.4 to i8
  %scevgep35.2.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %500, i64 0, i64 0, i64 2
  %524 = load i8, i8* %scevgep35.2.4, align 1
  %call64.2.4 = call zeroext i8 @mult(i8 zeroext %conv59.2.4, i8 zeroext %524)
  %scevgep42.2.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %502, i64 0, i64 0, i64 2
  store i8 %call64.2.4, i8* %scevgep42.2.4, align 1
  %525 = load i8, i8* %arrayidx70.4, align 1
  %scevgep39.2.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %501, i64 0, i64 0, i64 2
  %526 = load i8, i8* %scevgep39.2.4, align 1
  %call75.2.4 = call zeroext i8 @mult(i8 zeroext %525, i8 zeroext %526)
  %scevgep46.2.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %503, i64 0, i64 0, i64 2
  store i8 %call75.2.4, i8* %scevgep46.2.4, align 1
  %scevgep43.2.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %502, i64 0, i64 0, i64 2
  %527 = load i8, i8* %scevgep43.2.4, align 1
  %conv84.2.4 = zext i8 %527 to i32
  %scevgep47.2.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %503, i64 0, i64 0, i64 2
  %528 = load i8, i8* %scevgep47.2.4, align 1
  %conv89.2.4 = zext i8 %528 to i32
  %xor90.2.4 = xor i32 %conv84.2.4, %conv89.2.4
  %conv91.2.4 = trunc i32 %xor90.2.4 to i8
  %scevgep50.2.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %504, i64 0, i64 0, i64 2
  store i8 %conv91.2.4, i8* %scevgep50.2.4, align 1
  %scevgep31.3.4 = getelementptr i8, i8* %b, i64 3
  %529 = load i8, i8* %scevgep31.3.4, align 1
  %conv44.3.4 = zext i8 %529 to i32
  %scevgep34.3.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %500, i64 0, i64 0, i64 3
  %530 = load i8, i8* %scevgep34.3.4, align 1
  %conv49.3.4 = zext i8 %530 to i32
  %xor.3.4 = xor i32 %conv44.3.4, %conv49.3.4
  %conv50.3.4 = trunc i32 %xor.3.4 to i8
  %scevgep38.3.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %501, i64 0, i64 0, i64 3
  store i8 %conv50.3.4, i8* %scevgep38.3.4, align 1
  %531 = load i8, i8* %arrayidx56.4, align 1
  %conv57.3.4 = zext i8 %531 to i32
  %xor58.3.4 = xor i32 %conv57.3.4, 1
  %conv59.3.4 = trunc i32 %xor58.3.4 to i8
  %scevgep35.3.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %500, i64 0, i64 0, i64 3
  %532 = load i8, i8* %scevgep35.3.4, align 1
  %call64.3.4 = call zeroext i8 @mult(i8 zeroext %conv59.3.4, i8 zeroext %532)
  %scevgep42.3.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %502, i64 0, i64 0, i64 3
  store i8 %call64.3.4, i8* %scevgep42.3.4, align 1
  %533 = load i8, i8* %arrayidx70.4, align 1
  %scevgep39.3.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %501, i64 0, i64 0, i64 3
  %534 = load i8, i8* %scevgep39.3.4, align 1
  %call75.3.4 = call zeroext i8 @mult(i8 zeroext %533, i8 zeroext %534)
  %scevgep46.3.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %503, i64 0, i64 0, i64 3
  store i8 %call75.3.4, i8* %scevgep46.3.4, align 1
  %scevgep43.3.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %502, i64 0, i64 0, i64 3
  %535 = load i8, i8* %scevgep43.3.4, align 1
  %conv84.3.4 = zext i8 %535 to i32
  %scevgep47.3.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %503, i64 0, i64 0, i64 3
  %536 = load i8, i8* %scevgep47.3.4, align 1
  %conv89.3.4 = zext i8 %536 to i32
  %xor90.3.4 = xor i32 %conv84.3.4, %conv89.3.4
  %conv91.3.4 = trunc i32 %xor90.3.4 to i8
  %scevgep50.3.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %504, i64 0, i64 0, i64 3
  store i8 %conv91.3.4, i8* %scevgep50.3.4, align 1
  %scevgep31.5.4 = getelementptr i8, i8* %b, i64 5
  %537 = load i8, i8* %scevgep31.5.4, align 1
  %conv44.5.4 = zext i8 %537 to i32
  %scevgep34.5.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %500, i64 0, i64 0, i64 5
  %538 = load i8, i8* %scevgep34.5.4, align 1
  %conv49.5.4 = zext i8 %538 to i32
  %xor.5.4 = xor i32 %conv44.5.4, %conv49.5.4
  %conv50.5.4 = trunc i32 %xor.5.4 to i8
  %scevgep38.5.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %501, i64 0, i64 0, i64 5
  store i8 %conv50.5.4, i8* %scevgep38.5.4, align 1
  %539 = load i8, i8* %arrayidx56.4, align 1
  %conv57.5.4 = zext i8 %539 to i32
  %xor58.5.4 = xor i32 %conv57.5.4, 1
  %conv59.5.4 = trunc i32 %xor58.5.4 to i8
  %scevgep35.5.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %500, i64 0, i64 0, i64 5
  %540 = load i8, i8* %scevgep35.5.4, align 1
  %call64.5.4 = call zeroext i8 @mult(i8 zeroext %conv59.5.4, i8 zeroext %540)
  %scevgep42.5.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %502, i64 0, i64 0, i64 5
  store i8 %call64.5.4, i8* %scevgep42.5.4, align 1
  %541 = load i8, i8* %arrayidx70.4, align 1
  %scevgep39.5.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %501, i64 0, i64 0, i64 5
  %542 = load i8, i8* %scevgep39.5.4, align 1
  %call75.5.4 = call zeroext i8 @mult(i8 zeroext %541, i8 zeroext %542)
  %scevgep46.5.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %503, i64 0, i64 0, i64 5
  store i8 %call75.5.4, i8* %scevgep46.5.4, align 1
  %scevgep43.5.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %502, i64 0, i64 0, i64 5
  %543 = load i8, i8* %scevgep43.5.4, align 1
  %conv84.5.4 = zext i8 %543 to i32
  %scevgep47.5.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %503, i64 0, i64 0, i64 5
  %544 = load i8, i8* %scevgep47.5.4, align 1
  %conv89.5.4 = zext i8 %544 to i32
  %xor90.5.4 = xor i32 %conv84.5.4, %conv89.5.4
  %conv91.5.4 = trunc i32 %xor90.5.4 to i8
  %scevgep50.5.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %504, i64 0, i64 0, i64 5
  store i8 %conv91.5.4, i8* %scevgep50.5.4, align 1
  %scevgep31.6.4 = getelementptr i8, i8* %b, i64 6
  %545 = load i8, i8* %scevgep31.6.4, align 1
  %conv44.6.4 = zext i8 %545 to i32
  %scevgep34.6.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %500, i64 0, i64 0, i64 6
  %546 = load i8, i8* %scevgep34.6.4, align 1
  %conv49.6.4 = zext i8 %546 to i32
  %xor.6.4 = xor i32 %conv44.6.4, %conv49.6.4
  %conv50.6.4 = trunc i32 %xor.6.4 to i8
  %scevgep38.6.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %501, i64 0, i64 0, i64 6
  store i8 %conv50.6.4, i8* %scevgep38.6.4, align 1
  %547 = load i8, i8* %arrayidx56.4, align 1
  %conv57.6.4 = zext i8 %547 to i32
  %xor58.6.4 = xor i32 %conv57.6.4, 1
  %conv59.6.4 = trunc i32 %xor58.6.4 to i8
  %scevgep35.6.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %500, i64 0, i64 0, i64 6
  %548 = load i8, i8* %scevgep35.6.4, align 1
  %call64.6.4 = call zeroext i8 @mult(i8 zeroext %conv59.6.4, i8 zeroext %548)
  %scevgep42.6.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %502, i64 0, i64 0, i64 6
  store i8 %call64.6.4, i8* %scevgep42.6.4, align 1
  %549 = load i8, i8* %arrayidx70.4, align 1
  %scevgep39.6.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %501, i64 0, i64 0, i64 6
  %550 = load i8, i8* %scevgep39.6.4, align 1
  %call75.6.4 = call zeroext i8 @mult(i8 zeroext %549, i8 zeroext %550)
  %scevgep46.6.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %503, i64 0, i64 0, i64 6
  store i8 %call75.6.4, i8* %scevgep46.6.4, align 1
  %scevgep43.6.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %502, i64 0, i64 0, i64 6
  %551 = load i8, i8* %scevgep43.6.4, align 1
  %conv84.6.4 = zext i8 %551 to i32
  %scevgep47.6.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %503, i64 0, i64 0, i64 6
  %552 = load i8, i8* %scevgep47.6.4, align 1
  %conv89.6.4 = zext i8 %552 to i32
  %xor90.6.4 = xor i32 %conv84.6.4, %conv89.6.4
  %conv91.6.4 = trunc i32 %xor90.6.4 to i8
  %scevgep50.6.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %504, i64 0, i64 0, i64 6
  store i8 %conv91.6.4, i8* %scevgep50.6.4, align 1
  %scevgep31.7.4 = getelementptr i8, i8* %b, i64 7
  %553 = load i8, i8* %scevgep31.7.4, align 1
  %conv44.7.4 = zext i8 %553 to i32
  %scevgep34.7.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %500, i64 0, i64 0, i64 7
  %554 = load i8, i8* %scevgep34.7.4, align 1
  %conv49.7.4 = zext i8 %554 to i32
  %xor.7.4 = xor i32 %conv44.7.4, %conv49.7.4
  %conv50.7.4 = trunc i32 %xor.7.4 to i8
  %scevgep38.7.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %501, i64 0, i64 0, i64 7
  store i8 %conv50.7.4, i8* %scevgep38.7.4, align 1
  %555 = load i8, i8* %arrayidx56.4, align 1
  %conv57.7.4 = zext i8 %555 to i32
  %xor58.7.4 = xor i32 %conv57.7.4, 1
  %conv59.7.4 = trunc i32 %xor58.7.4 to i8
  %scevgep35.7.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %500, i64 0, i64 0, i64 7
  %556 = load i8, i8* %scevgep35.7.4, align 1
  %call64.7.4 = call zeroext i8 @mult(i8 zeroext %conv59.7.4, i8 zeroext %556)
  %scevgep42.7.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %502, i64 0, i64 0, i64 7
  store i8 %call64.7.4, i8* %scevgep42.7.4, align 1
  %557 = load i8, i8* %arrayidx70.4, align 1
  %scevgep39.7.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %501, i64 0, i64 0, i64 7
  %558 = load i8, i8* %scevgep39.7.4, align 1
  %call75.7.4 = call zeroext i8 @mult(i8 zeroext %557, i8 zeroext %558)
  %scevgep46.7.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %503, i64 0, i64 0, i64 7
  store i8 %call75.7.4, i8* %scevgep46.7.4, align 1
  %scevgep43.7.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %502, i64 0, i64 0, i64 7
  %559 = load i8, i8* %scevgep43.7.4, align 1
  %conv84.7.4 = zext i8 %559 to i32
  %scevgep47.7.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %503, i64 0, i64 0, i64 7
  %560 = load i8, i8* %scevgep47.7.4, align 1
  %conv89.7.4 = zext i8 %560 to i32
  %xor90.7.4 = xor i32 %conv84.7.4, %conv89.7.4
  %conv91.7.4 = trunc i32 %xor90.7.4 to i8
  %scevgep50.7.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %504, i64 0, i64 0, i64 7
  store i8 %conv91.7.4, i8* %scevgep50.7.4, align 1
  %scevgep31.8.4 = getelementptr i8, i8* %b, i64 8
  %561 = load i8, i8* %scevgep31.8.4, align 1
  %conv44.8.4 = zext i8 %561 to i32
  %scevgep34.8.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %500, i64 0, i64 0, i64 8
  %562 = load i8, i8* %scevgep34.8.4, align 1
  %conv49.8.4 = zext i8 %562 to i32
  %xor.8.4 = xor i32 %conv44.8.4, %conv49.8.4
  %conv50.8.4 = trunc i32 %xor.8.4 to i8
  %scevgep38.8.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %501, i64 0, i64 0, i64 8
  store i8 %conv50.8.4, i8* %scevgep38.8.4, align 1
  %563 = load i8, i8* %arrayidx56.4, align 1
  %conv57.8.4 = zext i8 %563 to i32
  %xor58.8.4 = xor i32 %conv57.8.4, 1
  %conv59.8.4 = trunc i32 %xor58.8.4 to i8
  %scevgep35.8.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %500, i64 0, i64 0, i64 8
  %564 = load i8, i8* %scevgep35.8.4, align 1
  %call64.8.4 = call zeroext i8 @mult(i8 zeroext %conv59.8.4, i8 zeroext %564)
  %scevgep42.8.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %502, i64 0, i64 0, i64 8
  store i8 %call64.8.4, i8* %scevgep42.8.4, align 1
  %565 = load i8, i8* %arrayidx70.4, align 1
  %scevgep39.8.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %501, i64 0, i64 0, i64 8
  %566 = load i8, i8* %scevgep39.8.4, align 1
  %call75.8.4 = call zeroext i8 @mult(i8 zeroext %565, i8 zeroext %566)
  %scevgep46.8.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %503, i64 0, i64 0, i64 8
  store i8 %call75.8.4, i8* %scevgep46.8.4, align 1
  %scevgep43.8.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %502, i64 0, i64 0, i64 8
  %567 = load i8, i8* %scevgep43.8.4, align 1
  %conv84.8.4 = zext i8 %567 to i32
  %scevgep47.8.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %503, i64 0, i64 0, i64 8
  %568 = load i8, i8* %scevgep47.8.4, align 1
  %conv89.8.4 = zext i8 %568 to i32
  %xor90.8.4 = xor i32 %conv84.8.4, %conv89.8.4
  %conv91.8.4 = trunc i32 %xor90.8.4 to i8
  %scevgep50.8.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %504, i64 0, i64 0, i64 8
  store i8 %conv91.8.4, i8* %scevgep50.8.4, align 1
  %scevgep31.9.4 = getelementptr i8, i8* %b, i64 9
  %569 = load i8, i8* %scevgep31.9.4, align 1
  %conv44.9.4 = zext i8 %569 to i32
  %scevgep34.9.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %500, i64 0, i64 0, i64 9
  %570 = load i8, i8* %scevgep34.9.4, align 1
  %conv49.9.4 = zext i8 %570 to i32
  %xor.9.4 = xor i32 %conv44.9.4, %conv49.9.4
  %conv50.9.4 = trunc i32 %xor.9.4 to i8
  %scevgep38.9.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %501, i64 0, i64 0, i64 9
  store i8 %conv50.9.4, i8* %scevgep38.9.4, align 1
  %571 = load i8, i8* %arrayidx56.4, align 1
  %conv57.9.4 = zext i8 %571 to i32
  %xor58.9.4 = xor i32 %conv57.9.4, 1
  %conv59.9.4 = trunc i32 %xor58.9.4 to i8
  %scevgep35.9.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %500, i64 0, i64 0, i64 9
  %572 = load i8, i8* %scevgep35.9.4, align 1
  %call64.9.4 = call zeroext i8 @mult(i8 zeroext %conv59.9.4, i8 zeroext %572)
  %scevgep42.9.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %502, i64 0, i64 0, i64 9
  store i8 %call64.9.4, i8* %scevgep42.9.4, align 1
  %573 = load i8, i8* %arrayidx70.4, align 1
  %scevgep39.9.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %501, i64 0, i64 0, i64 9
  %574 = load i8, i8* %scevgep39.9.4, align 1
  %call75.9.4 = call zeroext i8 @mult(i8 zeroext %573, i8 zeroext %574)
  %scevgep46.9.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %503, i64 0, i64 0, i64 9
  store i8 %call75.9.4, i8* %scevgep46.9.4, align 1
  %scevgep43.9.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %502, i64 0, i64 0, i64 9
  %575 = load i8, i8* %scevgep43.9.4, align 1
  %conv84.9.4 = zext i8 %575 to i32
  %scevgep47.9.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %503, i64 0, i64 0, i64 9
  %576 = load i8, i8* %scevgep47.9.4, align 1
  %conv89.9.4 = zext i8 %576 to i32
  %xor90.9.4 = xor i32 %conv84.9.4, %conv89.9.4
  %conv91.9.4 = trunc i32 %xor90.9.4 to i8
  %scevgep50.9.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %504, i64 0, i64 0, i64 9
  store i8 %conv91.9.4, i8* %scevgep50.9.4, align 1
  %scevgep31.10.4 = getelementptr i8, i8* %b, i64 10
  %577 = load i8, i8* %scevgep31.10.4, align 1
  %conv44.10.4 = zext i8 %577 to i32
  %scevgep34.10.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %500, i64 0, i64 0, i64 10
  %578 = load i8, i8* %scevgep34.10.4, align 1
  %conv49.10.4 = zext i8 %578 to i32
  %xor.10.4 = xor i32 %conv44.10.4, %conv49.10.4
  %conv50.10.4 = trunc i32 %xor.10.4 to i8
  %scevgep38.10.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %501, i64 0, i64 0, i64 10
  store i8 %conv50.10.4, i8* %scevgep38.10.4, align 1
  %579 = load i8, i8* %arrayidx56.4, align 1
  %conv57.10.4 = zext i8 %579 to i32
  %xor58.10.4 = xor i32 %conv57.10.4, 1
  %conv59.10.4 = trunc i32 %xor58.10.4 to i8
  %scevgep35.10.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %500, i64 0, i64 0, i64 10
  %580 = load i8, i8* %scevgep35.10.4, align 1
  %call64.10.4 = call zeroext i8 @mult(i8 zeroext %conv59.10.4, i8 zeroext %580)
  %scevgep42.10.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %502, i64 0, i64 0, i64 10
  store i8 %call64.10.4, i8* %scevgep42.10.4, align 1
  %581 = load i8, i8* %arrayidx70.4, align 1
  %scevgep39.10.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %501, i64 0, i64 0, i64 10
  %582 = load i8, i8* %scevgep39.10.4, align 1
  %call75.10.4 = call zeroext i8 @mult(i8 zeroext %581, i8 zeroext %582)
  %scevgep46.10.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %503, i64 0, i64 0, i64 10
  store i8 %call75.10.4, i8* %scevgep46.10.4, align 1
  %scevgep43.10.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %502, i64 0, i64 0, i64 10
  %583 = load i8, i8* %scevgep43.10.4, align 1
  %conv84.10.4 = zext i8 %583 to i32
  %scevgep47.10.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %503, i64 0, i64 0, i64 10
  %584 = load i8, i8* %scevgep47.10.4, align 1
  %conv89.10.4 = zext i8 %584 to i32
  %xor90.10.4 = xor i32 %conv84.10.4, %conv89.10.4
  %conv91.10.4 = trunc i32 %xor90.10.4 to i8
  %scevgep50.10.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %504, i64 0, i64 0, i64 10
  store i8 %conv91.10.4, i8* %scevgep50.10.4, align 1
  %scevgep33.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %500, i64 0, i64 1, i64 0
  %585 = bitcast i8* %scevgep33.4 to [11 x [11 x i8]]*
  %scevgep37.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %501, i64 0, i64 1, i64 0
  %586 = bitcast i8* %scevgep37.4 to [11 x [11 x i8]]*
  %scevgep41.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %502, i64 0, i64 1, i64 0
  %587 = bitcast i8* %scevgep41.4 to [11 x [11 x i8]]*
  %scevgep45.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %503, i64 0, i64 1, i64 0
  %588 = bitcast i8* %scevgep45.4 to [11 x [11 x i8]]*
  %scevgep49.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %504, i64 0, i64 1, i64 0
  %589 = bitcast i8* %scevgep49.4 to [11 x [11 x i8]]*
  %arrayidx56.5 = getelementptr inbounds i8, i8* %a, i64 5
  %arrayidx70.5 = getelementptr inbounds i8, i8* %a, i64 5
  %590 = load i8, i8* %b, align 1
  %conv44.5286 = zext i8 %590 to i32
  %scevgep34.5287 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %585, i64 0, i64 0, i64 0
  %591 = load i8, i8* %scevgep34.5287, align 1
  %conv49.5288 = zext i8 %591 to i32
  %xor.5289 = xor i32 %conv44.5286, %conv49.5288
  %conv50.5290 = trunc i32 %xor.5289 to i8
  %scevgep38.5291 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %586, i64 0, i64 0, i64 0
  store i8 %conv50.5290, i8* %scevgep38.5291, align 1
  %592 = load i8, i8* %arrayidx56.5, align 1
  %conv57.5292 = zext i8 %592 to i32
  %xor58.5293 = xor i32 %conv57.5292, 1
  %conv59.5294 = trunc i32 %xor58.5293 to i8
  %scevgep35.5295 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %585, i64 0, i64 0, i64 0
  %593 = load i8, i8* %scevgep35.5295, align 1
  %call64.5296 = call zeroext i8 @mult(i8 zeroext %conv59.5294, i8 zeroext %593)
  %scevgep42.5297 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %587, i64 0, i64 0, i64 0
  store i8 %call64.5296, i8* %scevgep42.5297, align 1
  %594 = load i8, i8* %arrayidx70.5, align 1
  %scevgep39.5298 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %586, i64 0, i64 0, i64 0
  %595 = load i8, i8* %scevgep39.5298, align 1
  %call75.5299 = call zeroext i8 @mult(i8 zeroext %594, i8 zeroext %595)
  %scevgep46.5300 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %588, i64 0, i64 0, i64 0
  store i8 %call75.5299, i8* %scevgep46.5300, align 1
  %scevgep43.5301 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %587, i64 0, i64 0, i64 0
  %596 = load i8, i8* %scevgep43.5301, align 1
  %conv84.5302 = zext i8 %596 to i32
  %scevgep47.5303 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %588, i64 0, i64 0, i64 0
  %597 = load i8, i8* %scevgep47.5303, align 1
  %conv89.5304 = zext i8 %597 to i32
  %xor90.5305 = xor i32 %conv84.5302, %conv89.5304
  %conv91.5306 = trunc i32 %xor90.5305 to i8
  %scevgep50.5307 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %589, i64 0, i64 0, i64 0
  store i8 %conv91.5306, i8* %scevgep50.5307, align 1
  %scevgep31.1.5 = getelementptr i8, i8* %b, i64 1
  %598 = load i8, i8* %scevgep31.1.5, align 1
  %conv44.1.5 = zext i8 %598 to i32
  %scevgep34.1.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %585, i64 0, i64 0, i64 1
  %599 = load i8, i8* %scevgep34.1.5, align 1
  %conv49.1.5 = zext i8 %599 to i32
  %xor.1.5 = xor i32 %conv44.1.5, %conv49.1.5
  %conv50.1.5 = trunc i32 %xor.1.5 to i8
  %scevgep38.1.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %586, i64 0, i64 0, i64 1
  store i8 %conv50.1.5, i8* %scevgep38.1.5, align 1
  %600 = load i8, i8* %arrayidx56.5, align 1
  %conv57.1.5 = zext i8 %600 to i32
  %xor58.1.5 = xor i32 %conv57.1.5, 1
  %conv59.1.5 = trunc i32 %xor58.1.5 to i8
  %scevgep35.1.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %585, i64 0, i64 0, i64 1
  %601 = load i8, i8* %scevgep35.1.5, align 1
  %call64.1.5 = call zeroext i8 @mult(i8 zeroext %conv59.1.5, i8 zeroext %601)
  %scevgep42.1.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %587, i64 0, i64 0, i64 1
  store i8 %call64.1.5, i8* %scevgep42.1.5, align 1
  %602 = load i8, i8* %arrayidx70.5, align 1
  %scevgep39.1.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %586, i64 0, i64 0, i64 1
  %603 = load i8, i8* %scevgep39.1.5, align 1
  %call75.1.5 = call zeroext i8 @mult(i8 zeroext %602, i8 zeroext %603)
  %scevgep46.1.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %588, i64 0, i64 0, i64 1
  store i8 %call75.1.5, i8* %scevgep46.1.5, align 1
  %scevgep43.1.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %587, i64 0, i64 0, i64 1
  %604 = load i8, i8* %scevgep43.1.5, align 1
  %conv84.1.5 = zext i8 %604 to i32
  %scevgep47.1.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %588, i64 0, i64 0, i64 1
  %605 = load i8, i8* %scevgep47.1.5, align 1
  %conv89.1.5 = zext i8 %605 to i32
  %xor90.1.5 = xor i32 %conv84.1.5, %conv89.1.5
  %conv91.1.5 = trunc i32 %xor90.1.5 to i8
  %scevgep50.1.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %589, i64 0, i64 0, i64 1
  store i8 %conv91.1.5, i8* %scevgep50.1.5, align 1
  %scevgep31.2.5 = getelementptr i8, i8* %b, i64 2
  %606 = load i8, i8* %scevgep31.2.5, align 1
  %conv44.2.5 = zext i8 %606 to i32
  %scevgep34.2.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %585, i64 0, i64 0, i64 2
  %607 = load i8, i8* %scevgep34.2.5, align 1
  %conv49.2.5 = zext i8 %607 to i32
  %xor.2.5 = xor i32 %conv44.2.5, %conv49.2.5
  %conv50.2.5 = trunc i32 %xor.2.5 to i8
  %scevgep38.2.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %586, i64 0, i64 0, i64 2
  store i8 %conv50.2.5, i8* %scevgep38.2.5, align 1
  %608 = load i8, i8* %arrayidx56.5, align 1
  %conv57.2.5 = zext i8 %608 to i32
  %xor58.2.5 = xor i32 %conv57.2.5, 1
  %conv59.2.5 = trunc i32 %xor58.2.5 to i8
  %scevgep35.2.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %585, i64 0, i64 0, i64 2
  %609 = load i8, i8* %scevgep35.2.5, align 1
  %call64.2.5 = call zeroext i8 @mult(i8 zeroext %conv59.2.5, i8 zeroext %609)
  %scevgep42.2.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %587, i64 0, i64 0, i64 2
  store i8 %call64.2.5, i8* %scevgep42.2.5, align 1
  %610 = load i8, i8* %arrayidx70.5, align 1
  %scevgep39.2.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %586, i64 0, i64 0, i64 2
  %611 = load i8, i8* %scevgep39.2.5, align 1
  %call75.2.5 = call zeroext i8 @mult(i8 zeroext %610, i8 zeroext %611)
  %scevgep46.2.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %588, i64 0, i64 0, i64 2
  store i8 %call75.2.5, i8* %scevgep46.2.5, align 1
  %scevgep43.2.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %587, i64 0, i64 0, i64 2
  %612 = load i8, i8* %scevgep43.2.5, align 1
  %conv84.2.5 = zext i8 %612 to i32
  %scevgep47.2.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %588, i64 0, i64 0, i64 2
  %613 = load i8, i8* %scevgep47.2.5, align 1
  %conv89.2.5 = zext i8 %613 to i32
  %xor90.2.5 = xor i32 %conv84.2.5, %conv89.2.5
  %conv91.2.5 = trunc i32 %xor90.2.5 to i8
  %scevgep50.2.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %589, i64 0, i64 0, i64 2
  store i8 %conv91.2.5, i8* %scevgep50.2.5, align 1
  %scevgep31.3.5 = getelementptr i8, i8* %b, i64 3
  %614 = load i8, i8* %scevgep31.3.5, align 1
  %conv44.3.5 = zext i8 %614 to i32
  %scevgep34.3.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %585, i64 0, i64 0, i64 3
  %615 = load i8, i8* %scevgep34.3.5, align 1
  %conv49.3.5 = zext i8 %615 to i32
  %xor.3.5 = xor i32 %conv44.3.5, %conv49.3.5
  %conv50.3.5 = trunc i32 %xor.3.5 to i8
  %scevgep38.3.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %586, i64 0, i64 0, i64 3
  store i8 %conv50.3.5, i8* %scevgep38.3.5, align 1
  %616 = load i8, i8* %arrayidx56.5, align 1
  %conv57.3.5 = zext i8 %616 to i32
  %xor58.3.5 = xor i32 %conv57.3.5, 1
  %conv59.3.5 = trunc i32 %xor58.3.5 to i8
  %scevgep35.3.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %585, i64 0, i64 0, i64 3
  %617 = load i8, i8* %scevgep35.3.5, align 1
  %call64.3.5 = call zeroext i8 @mult(i8 zeroext %conv59.3.5, i8 zeroext %617)
  %scevgep42.3.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %587, i64 0, i64 0, i64 3
  store i8 %call64.3.5, i8* %scevgep42.3.5, align 1
  %618 = load i8, i8* %arrayidx70.5, align 1
  %scevgep39.3.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %586, i64 0, i64 0, i64 3
  %619 = load i8, i8* %scevgep39.3.5, align 1
  %call75.3.5 = call zeroext i8 @mult(i8 zeroext %618, i8 zeroext %619)
  %scevgep46.3.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %588, i64 0, i64 0, i64 3
  store i8 %call75.3.5, i8* %scevgep46.3.5, align 1
  %scevgep43.3.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %587, i64 0, i64 0, i64 3
  %620 = load i8, i8* %scevgep43.3.5, align 1
  %conv84.3.5 = zext i8 %620 to i32
  %scevgep47.3.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %588, i64 0, i64 0, i64 3
  %621 = load i8, i8* %scevgep47.3.5, align 1
  %conv89.3.5 = zext i8 %621 to i32
  %xor90.3.5 = xor i32 %conv84.3.5, %conv89.3.5
  %conv91.3.5 = trunc i32 %xor90.3.5 to i8
  %scevgep50.3.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %589, i64 0, i64 0, i64 3
  store i8 %conv91.3.5, i8* %scevgep50.3.5, align 1
  %scevgep31.4.5 = getelementptr i8, i8* %b, i64 4
  %622 = load i8, i8* %scevgep31.4.5, align 1
  %conv44.4.5 = zext i8 %622 to i32
  %scevgep34.4.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %585, i64 0, i64 0, i64 4
  %623 = load i8, i8* %scevgep34.4.5, align 1
  %conv49.4.5 = zext i8 %623 to i32
  %xor.4.5 = xor i32 %conv44.4.5, %conv49.4.5
  %conv50.4.5 = trunc i32 %xor.4.5 to i8
  %scevgep38.4.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %586, i64 0, i64 0, i64 4
  store i8 %conv50.4.5, i8* %scevgep38.4.5, align 1
  %624 = load i8, i8* %arrayidx56.5, align 1
  %conv57.4.5 = zext i8 %624 to i32
  %xor58.4.5 = xor i32 %conv57.4.5, 1
  %conv59.4.5 = trunc i32 %xor58.4.5 to i8
  %scevgep35.4.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %585, i64 0, i64 0, i64 4
  %625 = load i8, i8* %scevgep35.4.5, align 1
  %call64.4.5 = call zeroext i8 @mult(i8 zeroext %conv59.4.5, i8 zeroext %625)
  %scevgep42.4.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %587, i64 0, i64 0, i64 4
  store i8 %call64.4.5, i8* %scevgep42.4.5, align 1
  %626 = load i8, i8* %arrayidx70.5, align 1
  %scevgep39.4.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %586, i64 0, i64 0, i64 4
  %627 = load i8, i8* %scevgep39.4.5, align 1
  %call75.4.5 = call zeroext i8 @mult(i8 zeroext %626, i8 zeroext %627)
  %scevgep46.4.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %588, i64 0, i64 0, i64 4
  store i8 %call75.4.5, i8* %scevgep46.4.5, align 1
  %scevgep43.4.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %587, i64 0, i64 0, i64 4
  %628 = load i8, i8* %scevgep43.4.5, align 1
  %conv84.4.5 = zext i8 %628 to i32
  %scevgep47.4.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %588, i64 0, i64 0, i64 4
  %629 = load i8, i8* %scevgep47.4.5, align 1
  %conv89.4.5 = zext i8 %629 to i32
  %xor90.4.5 = xor i32 %conv84.4.5, %conv89.4.5
  %conv91.4.5 = trunc i32 %xor90.4.5 to i8
  %scevgep50.4.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %589, i64 0, i64 0, i64 4
  store i8 %conv91.4.5, i8* %scevgep50.4.5, align 1
  %scevgep31.6.5 = getelementptr i8, i8* %b, i64 6
  %630 = load i8, i8* %scevgep31.6.5, align 1
  %conv44.6.5 = zext i8 %630 to i32
  %scevgep34.6.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %585, i64 0, i64 0, i64 6
  %631 = load i8, i8* %scevgep34.6.5, align 1
  %conv49.6.5 = zext i8 %631 to i32
  %xor.6.5 = xor i32 %conv44.6.5, %conv49.6.5
  %conv50.6.5 = trunc i32 %xor.6.5 to i8
  %scevgep38.6.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %586, i64 0, i64 0, i64 6
  store i8 %conv50.6.5, i8* %scevgep38.6.5, align 1
  %632 = load i8, i8* %arrayidx56.5, align 1
  %conv57.6.5 = zext i8 %632 to i32
  %xor58.6.5 = xor i32 %conv57.6.5, 1
  %conv59.6.5 = trunc i32 %xor58.6.5 to i8
  %scevgep35.6.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %585, i64 0, i64 0, i64 6
  %633 = load i8, i8* %scevgep35.6.5, align 1
  %call64.6.5 = call zeroext i8 @mult(i8 zeroext %conv59.6.5, i8 zeroext %633)
  %scevgep42.6.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %587, i64 0, i64 0, i64 6
  store i8 %call64.6.5, i8* %scevgep42.6.5, align 1
  %634 = load i8, i8* %arrayidx70.5, align 1
  %scevgep39.6.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %586, i64 0, i64 0, i64 6
  %635 = load i8, i8* %scevgep39.6.5, align 1
  %call75.6.5 = call zeroext i8 @mult(i8 zeroext %634, i8 zeroext %635)
  %scevgep46.6.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %588, i64 0, i64 0, i64 6
  store i8 %call75.6.5, i8* %scevgep46.6.5, align 1
  %scevgep43.6.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %587, i64 0, i64 0, i64 6
  %636 = load i8, i8* %scevgep43.6.5, align 1
  %conv84.6.5 = zext i8 %636 to i32
  %scevgep47.6.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %588, i64 0, i64 0, i64 6
  %637 = load i8, i8* %scevgep47.6.5, align 1
  %conv89.6.5 = zext i8 %637 to i32
  %xor90.6.5 = xor i32 %conv84.6.5, %conv89.6.5
  %conv91.6.5 = trunc i32 %xor90.6.5 to i8
  %scevgep50.6.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %589, i64 0, i64 0, i64 6
  store i8 %conv91.6.5, i8* %scevgep50.6.5, align 1
  %scevgep31.7.5 = getelementptr i8, i8* %b, i64 7
  %638 = load i8, i8* %scevgep31.7.5, align 1
  %conv44.7.5 = zext i8 %638 to i32
  %scevgep34.7.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %585, i64 0, i64 0, i64 7
  %639 = load i8, i8* %scevgep34.7.5, align 1
  %conv49.7.5 = zext i8 %639 to i32
  %xor.7.5 = xor i32 %conv44.7.5, %conv49.7.5
  %conv50.7.5 = trunc i32 %xor.7.5 to i8
  %scevgep38.7.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %586, i64 0, i64 0, i64 7
  store i8 %conv50.7.5, i8* %scevgep38.7.5, align 1
  %640 = load i8, i8* %arrayidx56.5, align 1
  %conv57.7.5 = zext i8 %640 to i32
  %xor58.7.5 = xor i32 %conv57.7.5, 1
  %conv59.7.5 = trunc i32 %xor58.7.5 to i8
  %scevgep35.7.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %585, i64 0, i64 0, i64 7
  %641 = load i8, i8* %scevgep35.7.5, align 1
  %call64.7.5 = call zeroext i8 @mult(i8 zeroext %conv59.7.5, i8 zeroext %641)
  %scevgep42.7.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %587, i64 0, i64 0, i64 7
  store i8 %call64.7.5, i8* %scevgep42.7.5, align 1
  %642 = load i8, i8* %arrayidx70.5, align 1
  %scevgep39.7.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %586, i64 0, i64 0, i64 7
  %643 = load i8, i8* %scevgep39.7.5, align 1
  %call75.7.5 = call zeroext i8 @mult(i8 zeroext %642, i8 zeroext %643)
  %scevgep46.7.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %588, i64 0, i64 0, i64 7
  store i8 %call75.7.5, i8* %scevgep46.7.5, align 1
  %scevgep43.7.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %587, i64 0, i64 0, i64 7
  %644 = load i8, i8* %scevgep43.7.5, align 1
  %conv84.7.5 = zext i8 %644 to i32
  %scevgep47.7.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %588, i64 0, i64 0, i64 7
  %645 = load i8, i8* %scevgep47.7.5, align 1
  %conv89.7.5 = zext i8 %645 to i32
  %xor90.7.5 = xor i32 %conv84.7.5, %conv89.7.5
  %conv91.7.5 = trunc i32 %xor90.7.5 to i8
  %scevgep50.7.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %589, i64 0, i64 0, i64 7
  store i8 %conv91.7.5, i8* %scevgep50.7.5, align 1
  %scevgep31.8.5 = getelementptr i8, i8* %b, i64 8
  %646 = load i8, i8* %scevgep31.8.5, align 1
  %conv44.8.5 = zext i8 %646 to i32
  %scevgep34.8.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %585, i64 0, i64 0, i64 8
  %647 = load i8, i8* %scevgep34.8.5, align 1
  %conv49.8.5 = zext i8 %647 to i32
  %xor.8.5 = xor i32 %conv44.8.5, %conv49.8.5
  %conv50.8.5 = trunc i32 %xor.8.5 to i8
  %scevgep38.8.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %586, i64 0, i64 0, i64 8
  store i8 %conv50.8.5, i8* %scevgep38.8.5, align 1
  %648 = load i8, i8* %arrayidx56.5, align 1
  %conv57.8.5 = zext i8 %648 to i32
  %xor58.8.5 = xor i32 %conv57.8.5, 1
  %conv59.8.5 = trunc i32 %xor58.8.5 to i8
  %scevgep35.8.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %585, i64 0, i64 0, i64 8
  %649 = load i8, i8* %scevgep35.8.5, align 1
  %call64.8.5 = call zeroext i8 @mult(i8 zeroext %conv59.8.5, i8 zeroext %649)
  %scevgep42.8.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %587, i64 0, i64 0, i64 8
  store i8 %call64.8.5, i8* %scevgep42.8.5, align 1
  %650 = load i8, i8* %arrayidx70.5, align 1
  %scevgep39.8.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %586, i64 0, i64 0, i64 8
  %651 = load i8, i8* %scevgep39.8.5, align 1
  %call75.8.5 = call zeroext i8 @mult(i8 zeroext %650, i8 zeroext %651)
  %scevgep46.8.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %588, i64 0, i64 0, i64 8
  store i8 %call75.8.5, i8* %scevgep46.8.5, align 1
  %scevgep43.8.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %587, i64 0, i64 0, i64 8
  %652 = load i8, i8* %scevgep43.8.5, align 1
  %conv84.8.5 = zext i8 %652 to i32
  %scevgep47.8.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %588, i64 0, i64 0, i64 8
  %653 = load i8, i8* %scevgep47.8.5, align 1
  %conv89.8.5 = zext i8 %653 to i32
  %xor90.8.5 = xor i32 %conv84.8.5, %conv89.8.5
  %conv91.8.5 = trunc i32 %xor90.8.5 to i8
  %scevgep50.8.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %589, i64 0, i64 0, i64 8
  store i8 %conv91.8.5, i8* %scevgep50.8.5, align 1
  %scevgep31.9.5 = getelementptr i8, i8* %b, i64 9
  %654 = load i8, i8* %scevgep31.9.5, align 1
  %conv44.9.5 = zext i8 %654 to i32
  %scevgep34.9.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %585, i64 0, i64 0, i64 9
  %655 = load i8, i8* %scevgep34.9.5, align 1
  %conv49.9.5 = zext i8 %655 to i32
  %xor.9.5 = xor i32 %conv44.9.5, %conv49.9.5
  %conv50.9.5 = trunc i32 %xor.9.5 to i8
  %scevgep38.9.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %586, i64 0, i64 0, i64 9
  store i8 %conv50.9.5, i8* %scevgep38.9.5, align 1
  %656 = load i8, i8* %arrayidx56.5, align 1
  %conv57.9.5 = zext i8 %656 to i32
  %xor58.9.5 = xor i32 %conv57.9.5, 1
  %conv59.9.5 = trunc i32 %xor58.9.5 to i8
  %scevgep35.9.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %585, i64 0, i64 0, i64 9
  %657 = load i8, i8* %scevgep35.9.5, align 1
  %call64.9.5 = call zeroext i8 @mult(i8 zeroext %conv59.9.5, i8 zeroext %657)
  %scevgep42.9.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %587, i64 0, i64 0, i64 9
  store i8 %call64.9.5, i8* %scevgep42.9.5, align 1
  %658 = load i8, i8* %arrayidx70.5, align 1
  %scevgep39.9.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %586, i64 0, i64 0, i64 9
  %659 = load i8, i8* %scevgep39.9.5, align 1
  %call75.9.5 = call zeroext i8 @mult(i8 zeroext %658, i8 zeroext %659)
  %scevgep46.9.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %588, i64 0, i64 0, i64 9
  store i8 %call75.9.5, i8* %scevgep46.9.5, align 1
  %scevgep43.9.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %587, i64 0, i64 0, i64 9
  %660 = load i8, i8* %scevgep43.9.5, align 1
  %conv84.9.5 = zext i8 %660 to i32
  %scevgep47.9.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %588, i64 0, i64 0, i64 9
  %661 = load i8, i8* %scevgep47.9.5, align 1
  %conv89.9.5 = zext i8 %661 to i32
  %xor90.9.5 = xor i32 %conv84.9.5, %conv89.9.5
  %conv91.9.5 = trunc i32 %xor90.9.5 to i8
  %scevgep50.9.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %589, i64 0, i64 0, i64 9
  store i8 %conv91.9.5, i8* %scevgep50.9.5, align 1
  %scevgep31.10.5 = getelementptr i8, i8* %b, i64 10
  %662 = load i8, i8* %scevgep31.10.5, align 1
  %conv44.10.5 = zext i8 %662 to i32
  %scevgep34.10.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %585, i64 0, i64 0, i64 10
  %663 = load i8, i8* %scevgep34.10.5, align 1
  %conv49.10.5 = zext i8 %663 to i32
  %xor.10.5 = xor i32 %conv44.10.5, %conv49.10.5
  %conv50.10.5 = trunc i32 %xor.10.5 to i8
  %scevgep38.10.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %586, i64 0, i64 0, i64 10
  store i8 %conv50.10.5, i8* %scevgep38.10.5, align 1
  %664 = load i8, i8* %arrayidx56.5, align 1
  %conv57.10.5 = zext i8 %664 to i32
  %xor58.10.5 = xor i32 %conv57.10.5, 1
  %conv59.10.5 = trunc i32 %xor58.10.5 to i8
  %scevgep35.10.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %585, i64 0, i64 0, i64 10
  %665 = load i8, i8* %scevgep35.10.5, align 1
  %call64.10.5 = call zeroext i8 @mult(i8 zeroext %conv59.10.5, i8 zeroext %665)
  %scevgep42.10.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %587, i64 0, i64 0, i64 10
  store i8 %call64.10.5, i8* %scevgep42.10.5, align 1
  %666 = load i8, i8* %arrayidx70.5, align 1
  %scevgep39.10.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %586, i64 0, i64 0, i64 10
  %667 = load i8, i8* %scevgep39.10.5, align 1
  %call75.10.5 = call zeroext i8 @mult(i8 zeroext %666, i8 zeroext %667)
  %scevgep46.10.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %588, i64 0, i64 0, i64 10
  store i8 %call75.10.5, i8* %scevgep46.10.5, align 1
  %scevgep43.10.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %587, i64 0, i64 0, i64 10
  %668 = load i8, i8* %scevgep43.10.5, align 1
  %conv84.10.5 = zext i8 %668 to i32
  %scevgep47.10.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %588, i64 0, i64 0, i64 10
  %669 = load i8, i8* %scevgep47.10.5, align 1
  %conv89.10.5 = zext i8 %669 to i32
  %xor90.10.5 = xor i32 %conv84.10.5, %conv89.10.5
  %conv91.10.5 = trunc i32 %xor90.10.5 to i8
  %scevgep50.10.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %589, i64 0, i64 0, i64 10
  store i8 %conv91.10.5, i8* %scevgep50.10.5, align 1
  %scevgep33.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %585, i64 0, i64 1, i64 0
  %670 = bitcast i8* %scevgep33.5 to [11 x [11 x i8]]*
  %scevgep37.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %586, i64 0, i64 1, i64 0
  %671 = bitcast i8* %scevgep37.5 to [11 x [11 x i8]]*
  %scevgep41.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %587, i64 0, i64 1, i64 0
  %672 = bitcast i8* %scevgep41.5 to [11 x [11 x i8]]*
  %scevgep45.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %588, i64 0, i64 1, i64 0
  %673 = bitcast i8* %scevgep45.5 to [11 x [11 x i8]]*
  %scevgep49.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %589, i64 0, i64 1, i64 0
  %674 = bitcast i8* %scevgep49.5 to [11 x [11 x i8]]*
  %arrayidx56.6 = getelementptr inbounds i8, i8* %a, i64 6
  %arrayidx70.6 = getelementptr inbounds i8, i8* %a, i64 6
  %675 = load i8, i8* %b, align 1
  %conv44.6313 = zext i8 %675 to i32
  %scevgep34.6314 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %670, i64 0, i64 0, i64 0
  %676 = load i8, i8* %scevgep34.6314, align 1
  %conv49.6315 = zext i8 %676 to i32
  %xor.6316 = xor i32 %conv44.6313, %conv49.6315
  %conv50.6317 = trunc i32 %xor.6316 to i8
  %scevgep38.6318 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %671, i64 0, i64 0, i64 0
  store i8 %conv50.6317, i8* %scevgep38.6318, align 1
  %677 = load i8, i8* %arrayidx56.6, align 1
  %conv57.6319 = zext i8 %677 to i32
  %xor58.6320 = xor i32 %conv57.6319, 1
  %conv59.6321 = trunc i32 %xor58.6320 to i8
  %scevgep35.6322 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %670, i64 0, i64 0, i64 0
  %678 = load i8, i8* %scevgep35.6322, align 1
  %call64.6323 = call zeroext i8 @mult(i8 zeroext %conv59.6321, i8 zeroext %678)
  %scevgep42.6324 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %672, i64 0, i64 0, i64 0
  store i8 %call64.6323, i8* %scevgep42.6324, align 1
  %679 = load i8, i8* %arrayidx70.6, align 1
  %scevgep39.6325 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %671, i64 0, i64 0, i64 0
  %680 = load i8, i8* %scevgep39.6325, align 1
  %call75.6326 = call zeroext i8 @mult(i8 zeroext %679, i8 zeroext %680)
  %scevgep46.6327 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %673, i64 0, i64 0, i64 0
  store i8 %call75.6326, i8* %scevgep46.6327, align 1
  %scevgep43.6328 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %672, i64 0, i64 0, i64 0
  %681 = load i8, i8* %scevgep43.6328, align 1
  %conv84.6329 = zext i8 %681 to i32
  %scevgep47.6330 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %673, i64 0, i64 0, i64 0
  %682 = load i8, i8* %scevgep47.6330, align 1
  %conv89.6331 = zext i8 %682 to i32
  %xor90.6332 = xor i32 %conv84.6329, %conv89.6331
  %conv91.6333 = trunc i32 %xor90.6332 to i8
  %scevgep50.6334 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %674, i64 0, i64 0, i64 0
  store i8 %conv91.6333, i8* %scevgep50.6334, align 1
  %scevgep31.1.6 = getelementptr i8, i8* %b, i64 1
  %683 = load i8, i8* %scevgep31.1.6, align 1
  %conv44.1.6 = zext i8 %683 to i32
  %scevgep34.1.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %670, i64 0, i64 0, i64 1
  %684 = load i8, i8* %scevgep34.1.6, align 1
  %conv49.1.6 = zext i8 %684 to i32
  %xor.1.6 = xor i32 %conv44.1.6, %conv49.1.6
  %conv50.1.6 = trunc i32 %xor.1.6 to i8
  %scevgep38.1.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %671, i64 0, i64 0, i64 1
  store i8 %conv50.1.6, i8* %scevgep38.1.6, align 1
  %685 = load i8, i8* %arrayidx56.6, align 1
  %conv57.1.6 = zext i8 %685 to i32
  %xor58.1.6 = xor i32 %conv57.1.6, 1
  %conv59.1.6 = trunc i32 %xor58.1.6 to i8
  %scevgep35.1.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %670, i64 0, i64 0, i64 1
  %686 = load i8, i8* %scevgep35.1.6, align 1
  %call64.1.6 = call zeroext i8 @mult(i8 zeroext %conv59.1.6, i8 zeroext %686)
  %scevgep42.1.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %672, i64 0, i64 0, i64 1
  store i8 %call64.1.6, i8* %scevgep42.1.6, align 1
  %687 = load i8, i8* %arrayidx70.6, align 1
  %scevgep39.1.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %671, i64 0, i64 0, i64 1
  %688 = load i8, i8* %scevgep39.1.6, align 1
  %call75.1.6 = call zeroext i8 @mult(i8 zeroext %687, i8 zeroext %688)
  %scevgep46.1.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %673, i64 0, i64 0, i64 1
  store i8 %call75.1.6, i8* %scevgep46.1.6, align 1
  %scevgep43.1.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %672, i64 0, i64 0, i64 1
  %689 = load i8, i8* %scevgep43.1.6, align 1
  %conv84.1.6 = zext i8 %689 to i32
  %scevgep47.1.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %673, i64 0, i64 0, i64 1
  %690 = load i8, i8* %scevgep47.1.6, align 1
  %conv89.1.6 = zext i8 %690 to i32
  %xor90.1.6 = xor i32 %conv84.1.6, %conv89.1.6
  %conv91.1.6 = trunc i32 %xor90.1.6 to i8
  %scevgep50.1.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %674, i64 0, i64 0, i64 1
  store i8 %conv91.1.6, i8* %scevgep50.1.6, align 1
  %scevgep31.2.6 = getelementptr i8, i8* %b, i64 2
  %691 = load i8, i8* %scevgep31.2.6, align 1
  %conv44.2.6 = zext i8 %691 to i32
  %scevgep34.2.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %670, i64 0, i64 0, i64 2
  %692 = load i8, i8* %scevgep34.2.6, align 1
  %conv49.2.6 = zext i8 %692 to i32
  %xor.2.6 = xor i32 %conv44.2.6, %conv49.2.6
  %conv50.2.6 = trunc i32 %xor.2.6 to i8
  %scevgep38.2.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %671, i64 0, i64 0, i64 2
  store i8 %conv50.2.6, i8* %scevgep38.2.6, align 1
  %693 = load i8, i8* %arrayidx56.6, align 1
  %conv57.2.6 = zext i8 %693 to i32
  %xor58.2.6 = xor i32 %conv57.2.6, 1
  %conv59.2.6 = trunc i32 %xor58.2.6 to i8
  %scevgep35.2.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %670, i64 0, i64 0, i64 2
  %694 = load i8, i8* %scevgep35.2.6, align 1
  %call64.2.6 = call zeroext i8 @mult(i8 zeroext %conv59.2.6, i8 zeroext %694)
  %scevgep42.2.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %672, i64 0, i64 0, i64 2
  store i8 %call64.2.6, i8* %scevgep42.2.6, align 1
  %695 = load i8, i8* %arrayidx70.6, align 1
  %scevgep39.2.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %671, i64 0, i64 0, i64 2
  %696 = load i8, i8* %scevgep39.2.6, align 1
  %call75.2.6 = call zeroext i8 @mult(i8 zeroext %695, i8 zeroext %696)
  %scevgep46.2.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %673, i64 0, i64 0, i64 2
  store i8 %call75.2.6, i8* %scevgep46.2.6, align 1
  %scevgep43.2.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %672, i64 0, i64 0, i64 2
  %697 = load i8, i8* %scevgep43.2.6, align 1
  %conv84.2.6 = zext i8 %697 to i32
  %scevgep47.2.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %673, i64 0, i64 0, i64 2
  %698 = load i8, i8* %scevgep47.2.6, align 1
  %conv89.2.6 = zext i8 %698 to i32
  %xor90.2.6 = xor i32 %conv84.2.6, %conv89.2.6
  %conv91.2.6 = trunc i32 %xor90.2.6 to i8
  %scevgep50.2.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %674, i64 0, i64 0, i64 2
  store i8 %conv91.2.6, i8* %scevgep50.2.6, align 1
  %scevgep31.3.6 = getelementptr i8, i8* %b, i64 3
  %699 = load i8, i8* %scevgep31.3.6, align 1
  %conv44.3.6 = zext i8 %699 to i32
  %scevgep34.3.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %670, i64 0, i64 0, i64 3
  %700 = load i8, i8* %scevgep34.3.6, align 1
  %conv49.3.6 = zext i8 %700 to i32
  %xor.3.6 = xor i32 %conv44.3.6, %conv49.3.6
  %conv50.3.6 = trunc i32 %xor.3.6 to i8
  %scevgep38.3.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %671, i64 0, i64 0, i64 3
  store i8 %conv50.3.6, i8* %scevgep38.3.6, align 1
  %701 = load i8, i8* %arrayidx56.6, align 1
  %conv57.3.6 = zext i8 %701 to i32
  %xor58.3.6 = xor i32 %conv57.3.6, 1
  %conv59.3.6 = trunc i32 %xor58.3.6 to i8
  %scevgep35.3.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %670, i64 0, i64 0, i64 3
  %702 = load i8, i8* %scevgep35.3.6, align 1
  %call64.3.6 = call zeroext i8 @mult(i8 zeroext %conv59.3.6, i8 zeroext %702)
  %scevgep42.3.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %672, i64 0, i64 0, i64 3
  store i8 %call64.3.6, i8* %scevgep42.3.6, align 1
  %703 = load i8, i8* %arrayidx70.6, align 1
  %scevgep39.3.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %671, i64 0, i64 0, i64 3
  %704 = load i8, i8* %scevgep39.3.6, align 1
  %call75.3.6 = call zeroext i8 @mult(i8 zeroext %703, i8 zeroext %704)
  %scevgep46.3.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %673, i64 0, i64 0, i64 3
  store i8 %call75.3.6, i8* %scevgep46.3.6, align 1
  %scevgep43.3.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %672, i64 0, i64 0, i64 3
  %705 = load i8, i8* %scevgep43.3.6, align 1
  %conv84.3.6 = zext i8 %705 to i32
  %scevgep47.3.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %673, i64 0, i64 0, i64 3
  %706 = load i8, i8* %scevgep47.3.6, align 1
  %conv89.3.6 = zext i8 %706 to i32
  %xor90.3.6 = xor i32 %conv84.3.6, %conv89.3.6
  %conv91.3.6 = trunc i32 %xor90.3.6 to i8
  %scevgep50.3.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %674, i64 0, i64 0, i64 3
  store i8 %conv91.3.6, i8* %scevgep50.3.6, align 1
  %scevgep31.4.6 = getelementptr i8, i8* %b, i64 4
  %707 = load i8, i8* %scevgep31.4.6, align 1
  %conv44.4.6 = zext i8 %707 to i32
  %scevgep34.4.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %670, i64 0, i64 0, i64 4
  %708 = load i8, i8* %scevgep34.4.6, align 1
  %conv49.4.6 = zext i8 %708 to i32
  %xor.4.6 = xor i32 %conv44.4.6, %conv49.4.6
  %conv50.4.6 = trunc i32 %xor.4.6 to i8
  %scevgep38.4.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %671, i64 0, i64 0, i64 4
  store i8 %conv50.4.6, i8* %scevgep38.4.6, align 1
  %709 = load i8, i8* %arrayidx56.6, align 1
  %conv57.4.6 = zext i8 %709 to i32
  %xor58.4.6 = xor i32 %conv57.4.6, 1
  %conv59.4.6 = trunc i32 %xor58.4.6 to i8
  %scevgep35.4.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %670, i64 0, i64 0, i64 4
  %710 = load i8, i8* %scevgep35.4.6, align 1
  %call64.4.6 = call zeroext i8 @mult(i8 zeroext %conv59.4.6, i8 zeroext %710)
  %scevgep42.4.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %672, i64 0, i64 0, i64 4
  store i8 %call64.4.6, i8* %scevgep42.4.6, align 1
  %711 = load i8, i8* %arrayidx70.6, align 1
  %scevgep39.4.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %671, i64 0, i64 0, i64 4
  %712 = load i8, i8* %scevgep39.4.6, align 1
  %call75.4.6 = call zeroext i8 @mult(i8 zeroext %711, i8 zeroext %712)
  %scevgep46.4.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %673, i64 0, i64 0, i64 4
  store i8 %call75.4.6, i8* %scevgep46.4.6, align 1
  %scevgep43.4.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %672, i64 0, i64 0, i64 4
  %713 = load i8, i8* %scevgep43.4.6, align 1
  %conv84.4.6 = zext i8 %713 to i32
  %scevgep47.4.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %673, i64 0, i64 0, i64 4
  %714 = load i8, i8* %scevgep47.4.6, align 1
  %conv89.4.6 = zext i8 %714 to i32
  %xor90.4.6 = xor i32 %conv84.4.6, %conv89.4.6
  %conv91.4.6 = trunc i32 %xor90.4.6 to i8
  %scevgep50.4.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %674, i64 0, i64 0, i64 4
  store i8 %conv91.4.6, i8* %scevgep50.4.6, align 1
  %scevgep31.5.6 = getelementptr i8, i8* %b, i64 5
  %715 = load i8, i8* %scevgep31.5.6, align 1
  %conv44.5.6 = zext i8 %715 to i32
  %scevgep34.5.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %670, i64 0, i64 0, i64 5
  %716 = load i8, i8* %scevgep34.5.6, align 1
  %conv49.5.6 = zext i8 %716 to i32
  %xor.5.6 = xor i32 %conv44.5.6, %conv49.5.6
  %conv50.5.6 = trunc i32 %xor.5.6 to i8
  %scevgep38.5.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %671, i64 0, i64 0, i64 5
  store i8 %conv50.5.6, i8* %scevgep38.5.6, align 1
  %717 = load i8, i8* %arrayidx56.6, align 1
  %conv57.5.6 = zext i8 %717 to i32
  %xor58.5.6 = xor i32 %conv57.5.6, 1
  %conv59.5.6 = trunc i32 %xor58.5.6 to i8
  %scevgep35.5.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %670, i64 0, i64 0, i64 5
  %718 = load i8, i8* %scevgep35.5.6, align 1
  %call64.5.6 = call zeroext i8 @mult(i8 zeroext %conv59.5.6, i8 zeroext %718)
  %scevgep42.5.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %672, i64 0, i64 0, i64 5
  store i8 %call64.5.6, i8* %scevgep42.5.6, align 1
  %719 = load i8, i8* %arrayidx70.6, align 1
  %scevgep39.5.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %671, i64 0, i64 0, i64 5
  %720 = load i8, i8* %scevgep39.5.6, align 1
  %call75.5.6 = call zeroext i8 @mult(i8 zeroext %719, i8 zeroext %720)
  %scevgep46.5.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %673, i64 0, i64 0, i64 5
  store i8 %call75.5.6, i8* %scevgep46.5.6, align 1
  %scevgep43.5.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %672, i64 0, i64 0, i64 5
  %721 = load i8, i8* %scevgep43.5.6, align 1
  %conv84.5.6 = zext i8 %721 to i32
  %scevgep47.5.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %673, i64 0, i64 0, i64 5
  %722 = load i8, i8* %scevgep47.5.6, align 1
  %conv89.5.6 = zext i8 %722 to i32
  %xor90.5.6 = xor i32 %conv84.5.6, %conv89.5.6
  %conv91.5.6 = trunc i32 %xor90.5.6 to i8
  %scevgep50.5.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %674, i64 0, i64 0, i64 5
  store i8 %conv91.5.6, i8* %scevgep50.5.6, align 1
  %scevgep31.7.6 = getelementptr i8, i8* %b, i64 7
  %723 = load i8, i8* %scevgep31.7.6, align 1
  %conv44.7.6 = zext i8 %723 to i32
  %scevgep34.7.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %670, i64 0, i64 0, i64 7
  %724 = load i8, i8* %scevgep34.7.6, align 1
  %conv49.7.6 = zext i8 %724 to i32
  %xor.7.6 = xor i32 %conv44.7.6, %conv49.7.6
  %conv50.7.6 = trunc i32 %xor.7.6 to i8
  %scevgep38.7.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %671, i64 0, i64 0, i64 7
  store i8 %conv50.7.6, i8* %scevgep38.7.6, align 1
  %725 = load i8, i8* %arrayidx56.6, align 1
  %conv57.7.6 = zext i8 %725 to i32
  %xor58.7.6 = xor i32 %conv57.7.6, 1
  %conv59.7.6 = trunc i32 %xor58.7.6 to i8
  %scevgep35.7.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %670, i64 0, i64 0, i64 7
  %726 = load i8, i8* %scevgep35.7.6, align 1
  %call64.7.6 = call zeroext i8 @mult(i8 zeroext %conv59.7.6, i8 zeroext %726)
  %scevgep42.7.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %672, i64 0, i64 0, i64 7
  store i8 %call64.7.6, i8* %scevgep42.7.6, align 1
  %727 = load i8, i8* %arrayidx70.6, align 1
  %scevgep39.7.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %671, i64 0, i64 0, i64 7
  %728 = load i8, i8* %scevgep39.7.6, align 1
  %call75.7.6 = call zeroext i8 @mult(i8 zeroext %727, i8 zeroext %728)
  %scevgep46.7.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %673, i64 0, i64 0, i64 7
  store i8 %call75.7.6, i8* %scevgep46.7.6, align 1
  %scevgep43.7.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %672, i64 0, i64 0, i64 7
  %729 = load i8, i8* %scevgep43.7.6, align 1
  %conv84.7.6 = zext i8 %729 to i32
  %scevgep47.7.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %673, i64 0, i64 0, i64 7
  %730 = load i8, i8* %scevgep47.7.6, align 1
  %conv89.7.6 = zext i8 %730 to i32
  %xor90.7.6 = xor i32 %conv84.7.6, %conv89.7.6
  %conv91.7.6 = trunc i32 %xor90.7.6 to i8
  %scevgep50.7.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %674, i64 0, i64 0, i64 7
  store i8 %conv91.7.6, i8* %scevgep50.7.6, align 1
  %scevgep31.8.6 = getelementptr i8, i8* %b, i64 8
  %731 = load i8, i8* %scevgep31.8.6, align 1
  %conv44.8.6 = zext i8 %731 to i32
  %scevgep34.8.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %670, i64 0, i64 0, i64 8
  %732 = load i8, i8* %scevgep34.8.6, align 1
  %conv49.8.6 = zext i8 %732 to i32
  %xor.8.6 = xor i32 %conv44.8.6, %conv49.8.6
  %conv50.8.6 = trunc i32 %xor.8.6 to i8
  %scevgep38.8.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %671, i64 0, i64 0, i64 8
  store i8 %conv50.8.6, i8* %scevgep38.8.6, align 1
  %733 = load i8, i8* %arrayidx56.6, align 1
  %conv57.8.6 = zext i8 %733 to i32
  %xor58.8.6 = xor i32 %conv57.8.6, 1
  %conv59.8.6 = trunc i32 %xor58.8.6 to i8
  %scevgep35.8.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %670, i64 0, i64 0, i64 8
  %734 = load i8, i8* %scevgep35.8.6, align 1
  %call64.8.6 = call zeroext i8 @mult(i8 zeroext %conv59.8.6, i8 zeroext %734)
  %scevgep42.8.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %672, i64 0, i64 0, i64 8
  store i8 %call64.8.6, i8* %scevgep42.8.6, align 1
  %735 = load i8, i8* %arrayidx70.6, align 1
  %scevgep39.8.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %671, i64 0, i64 0, i64 8
  %736 = load i8, i8* %scevgep39.8.6, align 1
  %call75.8.6 = call zeroext i8 @mult(i8 zeroext %735, i8 zeroext %736)
  %scevgep46.8.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %673, i64 0, i64 0, i64 8
  store i8 %call75.8.6, i8* %scevgep46.8.6, align 1
  %scevgep43.8.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %672, i64 0, i64 0, i64 8
  %737 = load i8, i8* %scevgep43.8.6, align 1
  %conv84.8.6 = zext i8 %737 to i32
  %scevgep47.8.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %673, i64 0, i64 0, i64 8
  %738 = load i8, i8* %scevgep47.8.6, align 1
  %conv89.8.6 = zext i8 %738 to i32
  %xor90.8.6 = xor i32 %conv84.8.6, %conv89.8.6
  %conv91.8.6 = trunc i32 %xor90.8.6 to i8
  %scevgep50.8.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %674, i64 0, i64 0, i64 8
  store i8 %conv91.8.6, i8* %scevgep50.8.6, align 1
  %scevgep31.9.6 = getelementptr i8, i8* %b, i64 9
  %739 = load i8, i8* %scevgep31.9.6, align 1
  %conv44.9.6 = zext i8 %739 to i32
  %scevgep34.9.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %670, i64 0, i64 0, i64 9
  %740 = load i8, i8* %scevgep34.9.6, align 1
  %conv49.9.6 = zext i8 %740 to i32
  %xor.9.6 = xor i32 %conv44.9.6, %conv49.9.6
  %conv50.9.6 = trunc i32 %xor.9.6 to i8
  %scevgep38.9.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %671, i64 0, i64 0, i64 9
  store i8 %conv50.9.6, i8* %scevgep38.9.6, align 1
  %741 = load i8, i8* %arrayidx56.6, align 1
  %conv57.9.6 = zext i8 %741 to i32
  %xor58.9.6 = xor i32 %conv57.9.6, 1
  %conv59.9.6 = trunc i32 %xor58.9.6 to i8
  %scevgep35.9.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %670, i64 0, i64 0, i64 9
  %742 = load i8, i8* %scevgep35.9.6, align 1
  %call64.9.6 = call zeroext i8 @mult(i8 zeroext %conv59.9.6, i8 zeroext %742)
  %scevgep42.9.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %672, i64 0, i64 0, i64 9
  store i8 %call64.9.6, i8* %scevgep42.9.6, align 1
  %743 = load i8, i8* %arrayidx70.6, align 1
  %scevgep39.9.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %671, i64 0, i64 0, i64 9
  %744 = load i8, i8* %scevgep39.9.6, align 1
  %call75.9.6 = call zeroext i8 @mult(i8 zeroext %743, i8 zeroext %744)
  %scevgep46.9.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %673, i64 0, i64 0, i64 9
  store i8 %call75.9.6, i8* %scevgep46.9.6, align 1
  %scevgep43.9.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %672, i64 0, i64 0, i64 9
  %745 = load i8, i8* %scevgep43.9.6, align 1
  %conv84.9.6 = zext i8 %745 to i32
  %scevgep47.9.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %673, i64 0, i64 0, i64 9
  %746 = load i8, i8* %scevgep47.9.6, align 1
  %conv89.9.6 = zext i8 %746 to i32
  %xor90.9.6 = xor i32 %conv84.9.6, %conv89.9.6
  %conv91.9.6 = trunc i32 %xor90.9.6 to i8
  %scevgep50.9.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %674, i64 0, i64 0, i64 9
  store i8 %conv91.9.6, i8* %scevgep50.9.6, align 1
  %scevgep31.10.6 = getelementptr i8, i8* %b, i64 10
  %747 = load i8, i8* %scevgep31.10.6, align 1
  %conv44.10.6 = zext i8 %747 to i32
  %scevgep34.10.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %670, i64 0, i64 0, i64 10
  %748 = load i8, i8* %scevgep34.10.6, align 1
  %conv49.10.6 = zext i8 %748 to i32
  %xor.10.6 = xor i32 %conv44.10.6, %conv49.10.6
  %conv50.10.6 = trunc i32 %xor.10.6 to i8
  %scevgep38.10.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %671, i64 0, i64 0, i64 10
  store i8 %conv50.10.6, i8* %scevgep38.10.6, align 1
  %749 = load i8, i8* %arrayidx56.6, align 1
  %conv57.10.6 = zext i8 %749 to i32
  %xor58.10.6 = xor i32 %conv57.10.6, 1
  %conv59.10.6 = trunc i32 %xor58.10.6 to i8
  %scevgep35.10.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %670, i64 0, i64 0, i64 10
  %750 = load i8, i8* %scevgep35.10.6, align 1
  %call64.10.6 = call zeroext i8 @mult(i8 zeroext %conv59.10.6, i8 zeroext %750)
  %scevgep42.10.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %672, i64 0, i64 0, i64 10
  store i8 %call64.10.6, i8* %scevgep42.10.6, align 1
  %751 = load i8, i8* %arrayidx70.6, align 1
  %scevgep39.10.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %671, i64 0, i64 0, i64 10
  %752 = load i8, i8* %scevgep39.10.6, align 1
  %call75.10.6 = call zeroext i8 @mult(i8 zeroext %751, i8 zeroext %752)
  %scevgep46.10.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %673, i64 0, i64 0, i64 10
  store i8 %call75.10.6, i8* %scevgep46.10.6, align 1
  %scevgep43.10.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %672, i64 0, i64 0, i64 10
  %753 = load i8, i8* %scevgep43.10.6, align 1
  %conv84.10.6 = zext i8 %753 to i32
  %scevgep47.10.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %673, i64 0, i64 0, i64 10
  %754 = load i8, i8* %scevgep47.10.6, align 1
  %conv89.10.6 = zext i8 %754 to i32
  %xor90.10.6 = xor i32 %conv84.10.6, %conv89.10.6
  %conv91.10.6 = trunc i32 %xor90.10.6 to i8
  %scevgep50.10.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %674, i64 0, i64 0, i64 10
  store i8 %conv91.10.6, i8* %scevgep50.10.6, align 1
  %scevgep33.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %670, i64 0, i64 1, i64 0
  %755 = bitcast i8* %scevgep33.6 to [11 x [11 x i8]]*
  %scevgep37.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %671, i64 0, i64 1, i64 0
  %756 = bitcast i8* %scevgep37.6 to [11 x [11 x i8]]*
  %scevgep41.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %672, i64 0, i64 1, i64 0
  %757 = bitcast i8* %scevgep41.6 to [11 x [11 x i8]]*
  %scevgep45.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %673, i64 0, i64 1, i64 0
  %758 = bitcast i8* %scevgep45.6 to [11 x [11 x i8]]*
  %scevgep49.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %674, i64 0, i64 1, i64 0
  %759 = bitcast i8* %scevgep49.6 to [11 x [11 x i8]]*
  %arrayidx56.7 = getelementptr inbounds i8, i8* %a, i64 7
  %arrayidx70.7 = getelementptr inbounds i8, i8* %a, i64 7
  %760 = load i8, i8* %b, align 1
  %conv44.7340 = zext i8 %760 to i32
  %scevgep34.7341 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %755, i64 0, i64 0, i64 0
  %761 = load i8, i8* %scevgep34.7341, align 1
  %conv49.7342 = zext i8 %761 to i32
  %xor.7343 = xor i32 %conv44.7340, %conv49.7342
  %conv50.7344 = trunc i32 %xor.7343 to i8
  %scevgep38.7345 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %756, i64 0, i64 0, i64 0
  store i8 %conv50.7344, i8* %scevgep38.7345, align 1
  %762 = load i8, i8* %arrayidx56.7, align 1
  %conv57.7346 = zext i8 %762 to i32
  %xor58.7347 = xor i32 %conv57.7346, 1
  %conv59.7348 = trunc i32 %xor58.7347 to i8
  %scevgep35.7349 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %755, i64 0, i64 0, i64 0
  %763 = load i8, i8* %scevgep35.7349, align 1
  %call64.7350 = call zeroext i8 @mult(i8 zeroext %conv59.7348, i8 zeroext %763)
  %scevgep42.7351 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %757, i64 0, i64 0, i64 0
  store i8 %call64.7350, i8* %scevgep42.7351, align 1
  %764 = load i8, i8* %arrayidx70.7, align 1
  %scevgep39.7352 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %756, i64 0, i64 0, i64 0
  %765 = load i8, i8* %scevgep39.7352, align 1
  %call75.7353 = call zeroext i8 @mult(i8 zeroext %764, i8 zeroext %765)
  %scevgep46.7354 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %758, i64 0, i64 0, i64 0
  store i8 %call75.7353, i8* %scevgep46.7354, align 1
  %scevgep43.7355 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %757, i64 0, i64 0, i64 0
  %766 = load i8, i8* %scevgep43.7355, align 1
  %conv84.7356 = zext i8 %766 to i32
  %scevgep47.7357 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %758, i64 0, i64 0, i64 0
  %767 = load i8, i8* %scevgep47.7357, align 1
  %conv89.7358 = zext i8 %767 to i32
  %xor90.7359 = xor i32 %conv84.7356, %conv89.7358
  %conv91.7360 = trunc i32 %xor90.7359 to i8
  %scevgep50.7361 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %759, i64 0, i64 0, i64 0
  store i8 %conv91.7360, i8* %scevgep50.7361, align 1
  %scevgep31.1.7 = getelementptr i8, i8* %b, i64 1
  %768 = load i8, i8* %scevgep31.1.7, align 1
  %conv44.1.7 = zext i8 %768 to i32
  %scevgep34.1.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %755, i64 0, i64 0, i64 1
  %769 = load i8, i8* %scevgep34.1.7, align 1
  %conv49.1.7 = zext i8 %769 to i32
  %xor.1.7 = xor i32 %conv44.1.7, %conv49.1.7
  %conv50.1.7 = trunc i32 %xor.1.7 to i8
  %scevgep38.1.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %756, i64 0, i64 0, i64 1
  store i8 %conv50.1.7, i8* %scevgep38.1.7, align 1
  %770 = load i8, i8* %arrayidx56.7, align 1
  %conv57.1.7 = zext i8 %770 to i32
  %xor58.1.7 = xor i32 %conv57.1.7, 1
  %conv59.1.7 = trunc i32 %xor58.1.7 to i8
  %scevgep35.1.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %755, i64 0, i64 0, i64 1
  %771 = load i8, i8* %scevgep35.1.7, align 1
  %call64.1.7 = call zeroext i8 @mult(i8 zeroext %conv59.1.7, i8 zeroext %771)
  %scevgep42.1.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %757, i64 0, i64 0, i64 1
  store i8 %call64.1.7, i8* %scevgep42.1.7, align 1
  %772 = load i8, i8* %arrayidx70.7, align 1
  %scevgep39.1.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %756, i64 0, i64 0, i64 1
  %773 = load i8, i8* %scevgep39.1.7, align 1
  %call75.1.7 = call zeroext i8 @mult(i8 zeroext %772, i8 zeroext %773)
  %scevgep46.1.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %758, i64 0, i64 0, i64 1
  store i8 %call75.1.7, i8* %scevgep46.1.7, align 1
  %scevgep43.1.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %757, i64 0, i64 0, i64 1
  %774 = load i8, i8* %scevgep43.1.7, align 1
  %conv84.1.7 = zext i8 %774 to i32
  %scevgep47.1.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %758, i64 0, i64 0, i64 1
  %775 = load i8, i8* %scevgep47.1.7, align 1
  %conv89.1.7 = zext i8 %775 to i32
  %xor90.1.7 = xor i32 %conv84.1.7, %conv89.1.7
  %conv91.1.7 = trunc i32 %xor90.1.7 to i8
  %scevgep50.1.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %759, i64 0, i64 0, i64 1
  store i8 %conv91.1.7, i8* %scevgep50.1.7, align 1
  %scevgep31.2.7 = getelementptr i8, i8* %b, i64 2
  %776 = load i8, i8* %scevgep31.2.7, align 1
  %conv44.2.7 = zext i8 %776 to i32
  %scevgep34.2.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %755, i64 0, i64 0, i64 2
  %777 = load i8, i8* %scevgep34.2.7, align 1
  %conv49.2.7 = zext i8 %777 to i32
  %xor.2.7 = xor i32 %conv44.2.7, %conv49.2.7
  %conv50.2.7 = trunc i32 %xor.2.7 to i8
  %scevgep38.2.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %756, i64 0, i64 0, i64 2
  store i8 %conv50.2.7, i8* %scevgep38.2.7, align 1
  %778 = load i8, i8* %arrayidx56.7, align 1
  %conv57.2.7 = zext i8 %778 to i32
  %xor58.2.7 = xor i32 %conv57.2.7, 1
  %conv59.2.7 = trunc i32 %xor58.2.7 to i8
  %scevgep35.2.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %755, i64 0, i64 0, i64 2
  %779 = load i8, i8* %scevgep35.2.7, align 1
  %call64.2.7 = call zeroext i8 @mult(i8 zeroext %conv59.2.7, i8 zeroext %779)
  %scevgep42.2.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %757, i64 0, i64 0, i64 2
  store i8 %call64.2.7, i8* %scevgep42.2.7, align 1
  %780 = load i8, i8* %arrayidx70.7, align 1
  %scevgep39.2.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %756, i64 0, i64 0, i64 2
  %781 = load i8, i8* %scevgep39.2.7, align 1
  %call75.2.7 = call zeroext i8 @mult(i8 zeroext %780, i8 zeroext %781)
  %scevgep46.2.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %758, i64 0, i64 0, i64 2
  store i8 %call75.2.7, i8* %scevgep46.2.7, align 1
  %scevgep43.2.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %757, i64 0, i64 0, i64 2
  %782 = load i8, i8* %scevgep43.2.7, align 1
  %conv84.2.7 = zext i8 %782 to i32
  %scevgep47.2.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %758, i64 0, i64 0, i64 2
  %783 = load i8, i8* %scevgep47.2.7, align 1
  %conv89.2.7 = zext i8 %783 to i32
  %xor90.2.7 = xor i32 %conv84.2.7, %conv89.2.7
  %conv91.2.7 = trunc i32 %xor90.2.7 to i8
  %scevgep50.2.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %759, i64 0, i64 0, i64 2
  store i8 %conv91.2.7, i8* %scevgep50.2.7, align 1
  %scevgep31.3.7 = getelementptr i8, i8* %b, i64 3
  %784 = load i8, i8* %scevgep31.3.7, align 1
  %conv44.3.7 = zext i8 %784 to i32
  %scevgep34.3.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %755, i64 0, i64 0, i64 3
  %785 = load i8, i8* %scevgep34.3.7, align 1
  %conv49.3.7 = zext i8 %785 to i32
  %xor.3.7 = xor i32 %conv44.3.7, %conv49.3.7
  %conv50.3.7 = trunc i32 %xor.3.7 to i8
  %scevgep38.3.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %756, i64 0, i64 0, i64 3
  store i8 %conv50.3.7, i8* %scevgep38.3.7, align 1
  %786 = load i8, i8* %arrayidx56.7, align 1
  %conv57.3.7 = zext i8 %786 to i32
  %xor58.3.7 = xor i32 %conv57.3.7, 1
  %conv59.3.7 = trunc i32 %xor58.3.7 to i8
  %scevgep35.3.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %755, i64 0, i64 0, i64 3
  %787 = load i8, i8* %scevgep35.3.7, align 1
  %call64.3.7 = call zeroext i8 @mult(i8 zeroext %conv59.3.7, i8 zeroext %787)
  %scevgep42.3.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %757, i64 0, i64 0, i64 3
  store i8 %call64.3.7, i8* %scevgep42.3.7, align 1
  %788 = load i8, i8* %arrayidx70.7, align 1
  %scevgep39.3.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %756, i64 0, i64 0, i64 3
  %789 = load i8, i8* %scevgep39.3.7, align 1
  %call75.3.7 = call zeroext i8 @mult(i8 zeroext %788, i8 zeroext %789)
  %scevgep46.3.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %758, i64 0, i64 0, i64 3
  store i8 %call75.3.7, i8* %scevgep46.3.7, align 1
  %scevgep43.3.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %757, i64 0, i64 0, i64 3
  %790 = load i8, i8* %scevgep43.3.7, align 1
  %conv84.3.7 = zext i8 %790 to i32
  %scevgep47.3.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %758, i64 0, i64 0, i64 3
  %791 = load i8, i8* %scevgep47.3.7, align 1
  %conv89.3.7 = zext i8 %791 to i32
  %xor90.3.7 = xor i32 %conv84.3.7, %conv89.3.7
  %conv91.3.7 = trunc i32 %xor90.3.7 to i8
  %scevgep50.3.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %759, i64 0, i64 0, i64 3
  store i8 %conv91.3.7, i8* %scevgep50.3.7, align 1
  %scevgep31.4.7 = getelementptr i8, i8* %b, i64 4
  %792 = load i8, i8* %scevgep31.4.7, align 1
  %conv44.4.7 = zext i8 %792 to i32
  %scevgep34.4.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %755, i64 0, i64 0, i64 4
  %793 = load i8, i8* %scevgep34.4.7, align 1
  %conv49.4.7 = zext i8 %793 to i32
  %xor.4.7 = xor i32 %conv44.4.7, %conv49.4.7
  %conv50.4.7 = trunc i32 %xor.4.7 to i8
  %scevgep38.4.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %756, i64 0, i64 0, i64 4
  store i8 %conv50.4.7, i8* %scevgep38.4.7, align 1
  %794 = load i8, i8* %arrayidx56.7, align 1
  %conv57.4.7 = zext i8 %794 to i32
  %xor58.4.7 = xor i32 %conv57.4.7, 1
  %conv59.4.7 = trunc i32 %xor58.4.7 to i8
  %scevgep35.4.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %755, i64 0, i64 0, i64 4
  %795 = load i8, i8* %scevgep35.4.7, align 1
  %call64.4.7 = call zeroext i8 @mult(i8 zeroext %conv59.4.7, i8 zeroext %795)
  %scevgep42.4.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %757, i64 0, i64 0, i64 4
  store i8 %call64.4.7, i8* %scevgep42.4.7, align 1
  %796 = load i8, i8* %arrayidx70.7, align 1
  %scevgep39.4.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %756, i64 0, i64 0, i64 4
  %797 = load i8, i8* %scevgep39.4.7, align 1
  %call75.4.7 = call zeroext i8 @mult(i8 zeroext %796, i8 zeroext %797)
  %scevgep46.4.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %758, i64 0, i64 0, i64 4
  store i8 %call75.4.7, i8* %scevgep46.4.7, align 1
  %scevgep43.4.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %757, i64 0, i64 0, i64 4
  %798 = load i8, i8* %scevgep43.4.7, align 1
  %conv84.4.7 = zext i8 %798 to i32
  %scevgep47.4.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %758, i64 0, i64 0, i64 4
  %799 = load i8, i8* %scevgep47.4.7, align 1
  %conv89.4.7 = zext i8 %799 to i32
  %xor90.4.7 = xor i32 %conv84.4.7, %conv89.4.7
  %conv91.4.7 = trunc i32 %xor90.4.7 to i8
  %scevgep50.4.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %759, i64 0, i64 0, i64 4
  store i8 %conv91.4.7, i8* %scevgep50.4.7, align 1
  %scevgep31.5.7 = getelementptr i8, i8* %b, i64 5
  %800 = load i8, i8* %scevgep31.5.7, align 1
  %conv44.5.7 = zext i8 %800 to i32
  %scevgep34.5.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %755, i64 0, i64 0, i64 5
  %801 = load i8, i8* %scevgep34.5.7, align 1
  %conv49.5.7 = zext i8 %801 to i32
  %xor.5.7 = xor i32 %conv44.5.7, %conv49.5.7
  %conv50.5.7 = trunc i32 %xor.5.7 to i8
  %scevgep38.5.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %756, i64 0, i64 0, i64 5
  store i8 %conv50.5.7, i8* %scevgep38.5.7, align 1
  %802 = load i8, i8* %arrayidx56.7, align 1
  %conv57.5.7 = zext i8 %802 to i32
  %xor58.5.7 = xor i32 %conv57.5.7, 1
  %conv59.5.7 = trunc i32 %xor58.5.7 to i8
  %scevgep35.5.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %755, i64 0, i64 0, i64 5
  %803 = load i8, i8* %scevgep35.5.7, align 1
  %call64.5.7 = call zeroext i8 @mult(i8 zeroext %conv59.5.7, i8 zeroext %803)
  %scevgep42.5.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %757, i64 0, i64 0, i64 5
  store i8 %call64.5.7, i8* %scevgep42.5.7, align 1
  %804 = load i8, i8* %arrayidx70.7, align 1
  %scevgep39.5.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %756, i64 0, i64 0, i64 5
  %805 = load i8, i8* %scevgep39.5.7, align 1
  %call75.5.7 = call zeroext i8 @mult(i8 zeroext %804, i8 zeroext %805)
  %scevgep46.5.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %758, i64 0, i64 0, i64 5
  store i8 %call75.5.7, i8* %scevgep46.5.7, align 1
  %scevgep43.5.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %757, i64 0, i64 0, i64 5
  %806 = load i8, i8* %scevgep43.5.7, align 1
  %conv84.5.7 = zext i8 %806 to i32
  %scevgep47.5.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %758, i64 0, i64 0, i64 5
  %807 = load i8, i8* %scevgep47.5.7, align 1
  %conv89.5.7 = zext i8 %807 to i32
  %xor90.5.7 = xor i32 %conv84.5.7, %conv89.5.7
  %conv91.5.7 = trunc i32 %xor90.5.7 to i8
  %scevgep50.5.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %759, i64 0, i64 0, i64 5
  store i8 %conv91.5.7, i8* %scevgep50.5.7, align 1
  %scevgep31.6.7 = getelementptr i8, i8* %b, i64 6
  %808 = load i8, i8* %scevgep31.6.7, align 1
  %conv44.6.7 = zext i8 %808 to i32
  %scevgep34.6.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %755, i64 0, i64 0, i64 6
  %809 = load i8, i8* %scevgep34.6.7, align 1
  %conv49.6.7 = zext i8 %809 to i32
  %xor.6.7 = xor i32 %conv44.6.7, %conv49.6.7
  %conv50.6.7 = trunc i32 %xor.6.7 to i8
  %scevgep38.6.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %756, i64 0, i64 0, i64 6
  store i8 %conv50.6.7, i8* %scevgep38.6.7, align 1
  %810 = load i8, i8* %arrayidx56.7, align 1
  %conv57.6.7 = zext i8 %810 to i32
  %xor58.6.7 = xor i32 %conv57.6.7, 1
  %conv59.6.7 = trunc i32 %xor58.6.7 to i8
  %scevgep35.6.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %755, i64 0, i64 0, i64 6
  %811 = load i8, i8* %scevgep35.6.7, align 1
  %call64.6.7 = call zeroext i8 @mult(i8 zeroext %conv59.6.7, i8 zeroext %811)
  %scevgep42.6.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %757, i64 0, i64 0, i64 6
  store i8 %call64.6.7, i8* %scevgep42.6.7, align 1
  %812 = load i8, i8* %arrayidx70.7, align 1
  %scevgep39.6.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %756, i64 0, i64 0, i64 6
  %813 = load i8, i8* %scevgep39.6.7, align 1
  %call75.6.7 = call zeroext i8 @mult(i8 zeroext %812, i8 zeroext %813)
  %scevgep46.6.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %758, i64 0, i64 0, i64 6
  store i8 %call75.6.7, i8* %scevgep46.6.7, align 1
  %scevgep43.6.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %757, i64 0, i64 0, i64 6
  %814 = load i8, i8* %scevgep43.6.7, align 1
  %conv84.6.7 = zext i8 %814 to i32
  %scevgep47.6.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %758, i64 0, i64 0, i64 6
  %815 = load i8, i8* %scevgep47.6.7, align 1
  %conv89.6.7 = zext i8 %815 to i32
  %xor90.6.7 = xor i32 %conv84.6.7, %conv89.6.7
  %conv91.6.7 = trunc i32 %xor90.6.7 to i8
  %scevgep50.6.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %759, i64 0, i64 0, i64 6
  store i8 %conv91.6.7, i8* %scevgep50.6.7, align 1
  %scevgep31.8.7 = getelementptr i8, i8* %b, i64 8
  %816 = load i8, i8* %scevgep31.8.7, align 1
  %conv44.8.7 = zext i8 %816 to i32
  %scevgep34.8.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %755, i64 0, i64 0, i64 8
  %817 = load i8, i8* %scevgep34.8.7, align 1
  %conv49.8.7 = zext i8 %817 to i32
  %xor.8.7 = xor i32 %conv44.8.7, %conv49.8.7
  %conv50.8.7 = trunc i32 %xor.8.7 to i8
  %scevgep38.8.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %756, i64 0, i64 0, i64 8
  store i8 %conv50.8.7, i8* %scevgep38.8.7, align 1
  %818 = load i8, i8* %arrayidx56.7, align 1
  %conv57.8.7 = zext i8 %818 to i32
  %xor58.8.7 = xor i32 %conv57.8.7, 1
  %conv59.8.7 = trunc i32 %xor58.8.7 to i8
  %scevgep35.8.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %755, i64 0, i64 0, i64 8
  %819 = load i8, i8* %scevgep35.8.7, align 1
  %call64.8.7 = call zeroext i8 @mult(i8 zeroext %conv59.8.7, i8 zeroext %819)
  %scevgep42.8.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %757, i64 0, i64 0, i64 8
  store i8 %call64.8.7, i8* %scevgep42.8.7, align 1
  %820 = load i8, i8* %arrayidx70.7, align 1
  %scevgep39.8.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %756, i64 0, i64 0, i64 8
  %821 = load i8, i8* %scevgep39.8.7, align 1
  %call75.8.7 = call zeroext i8 @mult(i8 zeroext %820, i8 zeroext %821)
  %scevgep46.8.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %758, i64 0, i64 0, i64 8
  store i8 %call75.8.7, i8* %scevgep46.8.7, align 1
  %scevgep43.8.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %757, i64 0, i64 0, i64 8
  %822 = load i8, i8* %scevgep43.8.7, align 1
  %conv84.8.7 = zext i8 %822 to i32
  %scevgep47.8.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %758, i64 0, i64 0, i64 8
  %823 = load i8, i8* %scevgep47.8.7, align 1
  %conv89.8.7 = zext i8 %823 to i32
  %xor90.8.7 = xor i32 %conv84.8.7, %conv89.8.7
  %conv91.8.7 = trunc i32 %xor90.8.7 to i8
  %scevgep50.8.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %759, i64 0, i64 0, i64 8
  store i8 %conv91.8.7, i8* %scevgep50.8.7, align 1
  %scevgep31.9.7 = getelementptr i8, i8* %b, i64 9
  %824 = load i8, i8* %scevgep31.9.7, align 1
  %conv44.9.7 = zext i8 %824 to i32
  %scevgep34.9.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %755, i64 0, i64 0, i64 9
  %825 = load i8, i8* %scevgep34.9.7, align 1
  %conv49.9.7 = zext i8 %825 to i32
  %xor.9.7 = xor i32 %conv44.9.7, %conv49.9.7
  %conv50.9.7 = trunc i32 %xor.9.7 to i8
  %scevgep38.9.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %756, i64 0, i64 0, i64 9
  store i8 %conv50.9.7, i8* %scevgep38.9.7, align 1
  %826 = load i8, i8* %arrayidx56.7, align 1
  %conv57.9.7 = zext i8 %826 to i32
  %xor58.9.7 = xor i32 %conv57.9.7, 1
  %conv59.9.7 = trunc i32 %xor58.9.7 to i8
  %scevgep35.9.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %755, i64 0, i64 0, i64 9
  %827 = load i8, i8* %scevgep35.9.7, align 1
  %call64.9.7 = call zeroext i8 @mult(i8 zeroext %conv59.9.7, i8 zeroext %827)
  %scevgep42.9.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %757, i64 0, i64 0, i64 9
  store i8 %call64.9.7, i8* %scevgep42.9.7, align 1
  %828 = load i8, i8* %arrayidx70.7, align 1
  %scevgep39.9.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %756, i64 0, i64 0, i64 9
  %829 = load i8, i8* %scevgep39.9.7, align 1
  %call75.9.7 = call zeroext i8 @mult(i8 zeroext %828, i8 zeroext %829)
  %scevgep46.9.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %758, i64 0, i64 0, i64 9
  store i8 %call75.9.7, i8* %scevgep46.9.7, align 1
  %scevgep43.9.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %757, i64 0, i64 0, i64 9
  %830 = load i8, i8* %scevgep43.9.7, align 1
  %conv84.9.7 = zext i8 %830 to i32
  %scevgep47.9.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %758, i64 0, i64 0, i64 9
  %831 = load i8, i8* %scevgep47.9.7, align 1
  %conv89.9.7 = zext i8 %831 to i32
  %xor90.9.7 = xor i32 %conv84.9.7, %conv89.9.7
  %conv91.9.7 = trunc i32 %xor90.9.7 to i8
  %scevgep50.9.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %759, i64 0, i64 0, i64 9
  store i8 %conv91.9.7, i8* %scevgep50.9.7, align 1
  %scevgep31.10.7 = getelementptr i8, i8* %b, i64 10
  %832 = load i8, i8* %scevgep31.10.7, align 1
  %conv44.10.7 = zext i8 %832 to i32
  %scevgep34.10.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %755, i64 0, i64 0, i64 10
  %833 = load i8, i8* %scevgep34.10.7, align 1
  %conv49.10.7 = zext i8 %833 to i32
  %xor.10.7 = xor i32 %conv44.10.7, %conv49.10.7
  %conv50.10.7 = trunc i32 %xor.10.7 to i8
  %scevgep38.10.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %756, i64 0, i64 0, i64 10
  store i8 %conv50.10.7, i8* %scevgep38.10.7, align 1
  %834 = load i8, i8* %arrayidx56.7, align 1
  %conv57.10.7 = zext i8 %834 to i32
  %xor58.10.7 = xor i32 %conv57.10.7, 1
  %conv59.10.7 = trunc i32 %xor58.10.7 to i8
  %scevgep35.10.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %755, i64 0, i64 0, i64 10
  %835 = load i8, i8* %scevgep35.10.7, align 1
  %call64.10.7 = call zeroext i8 @mult(i8 zeroext %conv59.10.7, i8 zeroext %835)
  %scevgep42.10.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %757, i64 0, i64 0, i64 10
  store i8 %call64.10.7, i8* %scevgep42.10.7, align 1
  %836 = load i8, i8* %arrayidx70.7, align 1
  %scevgep39.10.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %756, i64 0, i64 0, i64 10
  %837 = load i8, i8* %scevgep39.10.7, align 1
  %call75.10.7 = call zeroext i8 @mult(i8 zeroext %836, i8 zeroext %837)
  %scevgep46.10.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %758, i64 0, i64 0, i64 10
  store i8 %call75.10.7, i8* %scevgep46.10.7, align 1
  %scevgep43.10.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %757, i64 0, i64 0, i64 10
  %838 = load i8, i8* %scevgep43.10.7, align 1
  %conv84.10.7 = zext i8 %838 to i32
  %scevgep47.10.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %758, i64 0, i64 0, i64 10
  %839 = load i8, i8* %scevgep47.10.7, align 1
  %conv89.10.7 = zext i8 %839 to i32
  %xor90.10.7 = xor i32 %conv84.10.7, %conv89.10.7
  %conv91.10.7 = trunc i32 %xor90.10.7 to i8
  %scevgep50.10.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %759, i64 0, i64 0, i64 10
  store i8 %conv91.10.7, i8* %scevgep50.10.7, align 1
  %scevgep33.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %755, i64 0, i64 1, i64 0
  %840 = bitcast i8* %scevgep33.7 to [11 x [11 x i8]]*
  %scevgep37.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %756, i64 0, i64 1, i64 0
  %841 = bitcast i8* %scevgep37.7 to [11 x [11 x i8]]*
  %scevgep41.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %757, i64 0, i64 1, i64 0
  %842 = bitcast i8* %scevgep41.7 to [11 x [11 x i8]]*
  %scevgep45.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %758, i64 0, i64 1, i64 0
  %843 = bitcast i8* %scevgep45.7 to [11 x [11 x i8]]*
  %scevgep49.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %759, i64 0, i64 1, i64 0
  %844 = bitcast i8* %scevgep49.7 to [11 x [11 x i8]]*
  %arrayidx56.8 = getelementptr inbounds i8, i8* %a, i64 8
  %arrayidx70.8 = getelementptr inbounds i8, i8* %a, i64 8
  %845 = load i8, i8* %b, align 1
  %conv44.8367 = zext i8 %845 to i32
  %scevgep34.8368 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %840, i64 0, i64 0, i64 0
  %846 = load i8, i8* %scevgep34.8368, align 1
  %conv49.8369 = zext i8 %846 to i32
  %xor.8370 = xor i32 %conv44.8367, %conv49.8369
  %conv50.8371 = trunc i32 %xor.8370 to i8
  %scevgep38.8372 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %841, i64 0, i64 0, i64 0
  store i8 %conv50.8371, i8* %scevgep38.8372, align 1
  %847 = load i8, i8* %arrayidx56.8, align 1
  %conv57.8373 = zext i8 %847 to i32
  %xor58.8374 = xor i32 %conv57.8373, 1
  %conv59.8375 = trunc i32 %xor58.8374 to i8
  %scevgep35.8376 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %840, i64 0, i64 0, i64 0
  %848 = load i8, i8* %scevgep35.8376, align 1
  %call64.8377 = call zeroext i8 @mult(i8 zeroext %conv59.8375, i8 zeroext %848)
  %scevgep42.8378 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %842, i64 0, i64 0, i64 0
  store i8 %call64.8377, i8* %scevgep42.8378, align 1
  %849 = load i8, i8* %arrayidx70.8, align 1
  %scevgep39.8379 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %841, i64 0, i64 0, i64 0
  %850 = load i8, i8* %scevgep39.8379, align 1
  %call75.8380 = call zeroext i8 @mult(i8 zeroext %849, i8 zeroext %850)
  %scevgep46.8381 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %843, i64 0, i64 0, i64 0
  store i8 %call75.8380, i8* %scevgep46.8381, align 1
  %scevgep43.8382 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %842, i64 0, i64 0, i64 0
  %851 = load i8, i8* %scevgep43.8382, align 1
  %conv84.8383 = zext i8 %851 to i32
  %scevgep47.8384 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %843, i64 0, i64 0, i64 0
  %852 = load i8, i8* %scevgep47.8384, align 1
  %conv89.8385 = zext i8 %852 to i32
  %xor90.8386 = xor i32 %conv84.8383, %conv89.8385
  %conv91.8387 = trunc i32 %xor90.8386 to i8
  %scevgep50.8388 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %844, i64 0, i64 0, i64 0
  store i8 %conv91.8387, i8* %scevgep50.8388, align 1
  %scevgep31.1.8 = getelementptr i8, i8* %b, i64 1
  %853 = load i8, i8* %scevgep31.1.8, align 1
  %conv44.1.8 = zext i8 %853 to i32
  %scevgep34.1.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %840, i64 0, i64 0, i64 1
  %854 = load i8, i8* %scevgep34.1.8, align 1
  %conv49.1.8 = zext i8 %854 to i32
  %xor.1.8 = xor i32 %conv44.1.8, %conv49.1.8
  %conv50.1.8 = trunc i32 %xor.1.8 to i8
  %scevgep38.1.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %841, i64 0, i64 0, i64 1
  store i8 %conv50.1.8, i8* %scevgep38.1.8, align 1
  %855 = load i8, i8* %arrayidx56.8, align 1
  %conv57.1.8 = zext i8 %855 to i32
  %xor58.1.8 = xor i32 %conv57.1.8, 1
  %conv59.1.8 = trunc i32 %xor58.1.8 to i8
  %scevgep35.1.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %840, i64 0, i64 0, i64 1
  %856 = load i8, i8* %scevgep35.1.8, align 1
  %call64.1.8 = call zeroext i8 @mult(i8 zeroext %conv59.1.8, i8 zeroext %856)
  %scevgep42.1.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %842, i64 0, i64 0, i64 1
  store i8 %call64.1.8, i8* %scevgep42.1.8, align 1
  %857 = load i8, i8* %arrayidx70.8, align 1
  %scevgep39.1.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %841, i64 0, i64 0, i64 1
  %858 = load i8, i8* %scevgep39.1.8, align 1
  %call75.1.8 = call zeroext i8 @mult(i8 zeroext %857, i8 zeroext %858)
  %scevgep46.1.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %843, i64 0, i64 0, i64 1
  store i8 %call75.1.8, i8* %scevgep46.1.8, align 1
  %scevgep43.1.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %842, i64 0, i64 0, i64 1
  %859 = load i8, i8* %scevgep43.1.8, align 1
  %conv84.1.8 = zext i8 %859 to i32
  %scevgep47.1.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %843, i64 0, i64 0, i64 1
  %860 = load i8, i8* %scevgep47.1.8, align 1
  %conv89.1.8 = zext i8 %860 to i32
  %xor90.1.8 = xor i32 %conv84.1.8, %conv89.1.8
  %conv91.1.8 = trunc i32 %xor90.1.8 to i8
  %scevgep50.1.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %844, i64 0, i64 0, i64 1
  store i8 %conv91.1.8, i8* %scevgep50.1.8, align 1
  %scevgep31.2.8 = getelementptr i8, i8* %b, i64 2
  %861 = load i8, i8* %scevgep31.2.8, align 1
  %conv44.2.8 = zext i8 %861 to i32
  %scevgep34.2.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %840, i64 0, i64 0, i64 2
  %862 = load i8, i8* %scevgep34.2.8, align 1
  %conv49.2.8 = zext i8 %862 to i32
  %xor.2.8 = xor i32 %conv44.2.8, %conv49.2.8
  %conv50.2.8 = trunc i32 %xor.2.8 to i8
  %scevgep38.2.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %841, i64 0, i64 0, i64 2
  store i8 %conv50.2.8, i8* %scevgep38.2.8, align 1
  %863 = load i8, i8* %arrayidx56.8, align 1
  %conv57.2.8 = zext i8 %863 to i32
  %xor58.2.8 = xor i32 %conv57.2.8, 1
  %conv59.2.8 = trunc i32 %xor58.2.8 to i8
  %scevgep35.2.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %840, i64 0, i64 0, i64 2
  %864 = load i8, i8* %scevgep35.2.8, align 1
  %call64.2.8 = call zeroext i8 @mult(i8 zeroext %conv59.2.8, i8 zeroext %864)
  %scevgep42.2.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %842, i64 0, i64 0, i64 2
  store i8 %call64.2.8, i8* %scevgep42.2.8, align 1
  %865 = load i8, i8* %arrayidx70.8, align 1
  %scevgep39.2.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %841, i64 0, i64 0, i64 2
  %866 = load i8, i8* %scevgep39.2.8, align 1
  %call75.2.8 = call zeroext i8 @mult(i8 zeroext %865, i8 zeroext %866)
  %scevgep46.2.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %843, i64 0, i64 0, i64 2
  store i8 %call75.2.8, i8* %scevgep46.2.8, align 1
  %scevgep43.2.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %842, i64 0, i64 0, i64 2
  %867 = load i8, i8* %scevgep43.2.8, align 1
  %conv84.2.8 = zext i8 %867 to i32
  %scevgep47.2.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %843, i64 0, i64 0, i64 2
  %868 = load i8, i8* %scevgep47.2.8, align 1
  %conv89.2.8 = zext i8 %868 to i32
  %xor90.2.8 = xor i32 %conv84.2.8, %conv89.2.8
  %conv91.2.8 = trunc i32 %xor90.2.8 to i8
  %scevgep50.2.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %844, i64 0, i64 0, i64 2
  store i8 %conv91.2.8, i8* %scevgep50.2.8, align 1
  %scevgep31.3.8 = getelementptr i8, i8* %b, i64 3
  %869 = load i8, i8* %scevgep31.3.8, align 1
  %conv44.3.8 = zext i8 %869 to i32
  %scevgep34.3.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %840, i64 0, i64 0, i64 3
  %870 = load i8, i8* %scevgep34.3.8, align 1
  %conv49.3.8 = zext i8 %870 to i32
  %xor.3.8 = xor i32 %conv44.3.8, %conv49.3.8
  %conv50.3.8 = trunc i32 %xor.3.8 to i8
  %scevgep38.3.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %841, i64 0, i64 0, i64 3
  store i8 %conv50.3.8, i8* %scevgep38.3.8, align 1
  %871 = load i8, i8* %arrayidx56.8, align 1
  %conv57.3.8 = zext i8 %871 to i32
  %xor58.3.8 = xor i32 %conv57.3.8, 1
  %conv59.3.8 = trunc i32 %xor58.3.8 to i8
  %scevgep35.3.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %840, i64 0, i64 0, i64 3
  %872 = load i8, i8* %scevgep35.3.8, align 1
  %call64.3.8 = call zeroext i8 @mult(i8 zeroext %conv59.3.8, i8 zeroext %872)
  %scevgep42.3.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %842, i64 0, i64 0, i64 3
  store i8 %call64.3.8, i8* %scevgep42.3.8, align 1
  %873 = load i8, i8* %arrayidx70.8, align 1
  %scevgep39.3.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %841, i64 0, i64 0, i64 3
  %874 = load i8, i8* %scevgep39.3.8, align 1
  %call75.3.8 = call zeroext i8 @mult(i8 zeroext %873, i8 zeroext %874)
  %scevgep46.3.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %843, i64 0, i64 0, i64 3
  store i8 %call75.3.8, i8* %scevgep46.3.8, align 1
  %scevgep43.3.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %842, i64 0, i64 0, i64 3
  %875 = load i8, i8* %scevgep43.3.8, align 1
  %conv84.3.8 = zext i8 %875 to i32
  %scevgep47.3.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %843, i64 0, i64 0, i64 3
  %876 = load i8, i8* %scevgep47.3.8, align 1
  %conv89.3.8 = zext i8 %876 to i32
  %xor90.3.8 = xor i32 %conv84.3.8, %conv89.3.8
  %conv91.3.8 = trunc i32 %xor90.3.8 to i8
  %scevgep50.3.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %844, i64 0, i64 0, i64 3
  store i8 %conv91.3.8, i8* %scevgep50.3.8, align 1
  %scevgep31.4.8 = getelementptr i8, i8* %b, i64 4
  %877 = load i8, i8* %scevgep31.4.8, align 1
  %conv44.4.8 = zext i8 %877 to i32
  %scevgep34.4.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %840, i64 0, i64 0, i64 4
  %878 = load i8, i8* %scevgep34.4.8, align 1
  %conv49.4.8 = zext i8 %878 to i32
  %xor.4.8 = xor i32 %conv44.4.8, %conv49.4.8
  %conv50.4.8 = trunc i32 %xor.4.8 to i8
  %scevgep38.4.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %841, i64 0, i64 0, i64 4
  store i8 %conv50.4.8, i8* %scevgep38.4.8, align 1
  %879 = load i8, i8* %arrayidx56.8, align 1
  %conv57.4.8 = zext i8 %879 to i32
  %xor58.4.8 = xor i32 %conv57.4.8, 1
  %conv59.4.8 = trunc i32 %xor58.4.8 to i8
  %scevgep35.4.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %840, i64 0, i64 0, i64 4
  %880 = load i8, i8* %scevgep35.4.8, align 1
  %call64.4.8 = call zeroext i8 @mult(i8 zeroext %conv59.4.8, i8 zeroext %880)
  %scevgep42.4.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %842, i64 0, i64 0, i64 4
  store i8 %call64.4.8, i8* %scevgep42.4.8, align 1
  %881 = load i8, i8* %arrayidx70.8, align 1
  %scevgep39.4.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %841, i64 0, i64 0, i64 4
  %882 = load i8, i8* %scevgep39.4.8, align 1
  %call75.4.8 = call zeroext i8 @mult(i8 zeroext %881, i8 zeroext %882)
  %scevgep46.4.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %843, i64 0, i64 0, i64 4
  store i8 %call75.4.8, i8* %scevgep46.4.8, align 1
  %scevgep43.4.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %842, i64 0, i64 0, i64 4
  %883 = load i8, i8* %scevgep43.4.8, align 1
  %conv84.4.8 = zext i8 %883 to i32
  %scevgep47.4.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %843, i64 0, i64 0, i64 4
  %884 = load i8, i8* %scevgep47.4.8, align 1
  %conv89.4.8 = zext i8 %884 to i32
  %xor90.4.8 = xor i32 %conv84.4.8, %conv89.4.8
  %conv91.4.8 = trunc i32 %xor90.4.8 to i8
  %scevgep50.4.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %844, i64 0, i64 0, i64 4
  store i8 %conv91.4.8, i8* %scevgep50.4.8, align 1
  %scevgep31.5.8 = getelementptr i8, i8* %b, i64 5
  %885 = load i8, i8* %scevgep31.5.8, align 1
  %conv44.5.8 = zext i8 %885 to i32
  %scevgep34.5.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %840, i64 0, i64 0, i64 5
  %886 = load i8, i8* %scevgep34.5.8, align 1
  %conv49.5.8 = zext i8 %886 to i32
  %xor.5.8 = xor i32 %conv44.5.8, %conv49.5.8
  %conv50.5.8 = trunc i32 %xor.5.8 to i8
  %scevgep38.5.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %841, i64 0, i64 0, i64 5
  store i8 %conv50.5.8, i8* %scevgep38.5.8, align 1
  %887 = load i8, i8* %arrayidx56.8, align 1
  %conv57.5.8 = zext i8 %887 to i32
  %xor58.5.8 = xor i32 %conv57.5.8, 1
  %conv59.5.8 = trunc i32 %xor58.5.8 to i8
  %scevgep35.5.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %840, i64 0, i64 0, i64 5
  %888 = load i8, i8* %scevgep35.5.8, align 1
  %call64.5.8 = call zeroext i8 @mult(i8 zeroext %conv59.5.8, i8 zeroext %888)
  %scevgep42.5.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %842, i64 0, i64 0, i64 5
  store i8 %call64.5.8, i8* %scevgep42.5.8, align 1
  %889 = load i8, i8* %arrayidx70.8, align 1
  %scevgep39.5.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %841, i64 0, i64 0, i64 5
  %890 = load i8, i8* %scevgep39.5.8, align 1
  %call75.5.8 = call zeroext i8 @mult(i8 zeroext %889, i8 zeroext %890)
  %scevgep46.5.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %843, i64 0, i64 0, i64 5
  store i8 %call75.5.8, i8* %scevgep46.5.8, align 1
  %scevgep43.5.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %842, i64 0, i64 0, i64 5
  %891 = load i8, i8* %scevgep43.5.8, align 1
  %conv84.5.8 = zext i8 %891 to i32
  %scevgep47.5.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %843, i64 0, i64 0, i64 5
  %892 = load i8, i8* %scevgep47.5.8, align 1
  %conv89.5.8 = zext i8 %892 to i32
  %xor90.5.8 = xor i32 %conv84.5.8, %conv89.5.8
  %conv91.5.8 = trunc i32 %xor90.5.8 to i8
  %scevgep50.5.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %844, i64 0, i64 0, i64 5
  store i8 %conv91.5.8, i8* %scevgep50.5.8, align 1
  %scevgep31.6.8 = getelementptr i8, i8* %b, i64 6
  %893 = load i8, i8* %scevgep31.6.8, align 1
  %conv44.6.8 = zext i8 %893 to i32
  %scevgep34.6.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %840, i64 0, i64 0, i64 6
  %894 = load i8, i8* %scevgep34.6.8, align 1
  %conv49.6.8 = zext i8 %894 to i32
  %xor.6.8 = xor i32 %conv44.6.8, %conv49.6.8
  %conv50.6.8 = trunc i32 %xor.6.8 to i8
  %scevgep38.6.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %841, i64 0, i64 0, i64 6
  store i8 %conv50.6.8, i8* %scevgep38.6.8, align 1
  %895 = load i8, i8* %arrayidx56.8, align 1
  %conv57.6.8 = zext i8 %895 to i32
  %xor58.6.8 = xor i32 %conv57.6.8, 1
  %conv59.6.8 = trunc i32 %xor58.6.8 to i8
  %scevgep35.6.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %840, i64 0, i64 0, i64 6
  %896 = load i8, i8* %scevgep35.6.8, align 1
  %call64.6.8 = call zeroext i8 @mult(i8 zeroext %conv59.6.8, i8 zeroext %896)
  %scevgep42.6.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %842, i64 0, i64 0, i64 6
  store i8 %call64.6.8, i8* %scevgep42.6.8, align 1
  %897 = load i8, i8* %arrayidx70.8, align 1
  %scevgep39.6.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %841, i64 0, i64 0, i64 6
  %898 = load i8, i8* %scevgep39.6.8, align 1
  %call75.6.8 = call zeroext i8 @mult(i8 zeroext %897, i8 zeroext %898)
  %scevgep46.6.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %843, i64 0, i64 0, i64 6
  store i8 %call75.6.8, i8* %scevgep46.6.8, align 1
  %scevgep43.6.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %842, i64 0, i64 0, i64 6
  %899 = load i8, i8* %scevgep43.6.8, align 1
  %conv84.6.8 = zext i8 %899 to i32
  %scevgep47.6.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %843, i64 0, i64 0, i64 6
  %900 = load i8, i8* %scevgep47.6.8, align 1
  %conv89.6.8 = zext i8 %900 to i32
  %xor90.6.8 = xor i32 %conv84.6.8, %conv89.6.8
  %conv91.6.8 = trunc i32 %xor90.6.8 to i8
  %scevgep50.6.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %844, i64 0, i64 0, i64 6
  store i8 %conv91.6.8, i8* %scevgep50.6.8, align 1
  %scevgep31.7.8 = getelementptr i8, i8* %b, i64 7
  %901 = load i8, i8* %scevgep31.7.8, align 1
  %conv44.7.8 = zext i8 %901 to i32
  %scevgep34.7.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %840, i64 0, i64 0, i64 7
  %902 = load i8, i8* %scevgep34.7.8, align 1
  %conv49.7.8 = zext i8 %902 to i32
  %xor.7.8 = xor i32 %conv44.7.8, %conv49.7.8
  %conv50.7.8 = trunc i32 %xor.7.8 to i8
  %scevgep38.7.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %841, i64 0, i64 0, i64 7
  store i8 %conv50.7.8, i8* %scevgep38.7.8, align 1
  %903 = load i8, i8* %arrayidx56.8, align 1
  %conv57.7.8 = zext i8 %903 to i32
  %xor58.7.8 = xor i32 %conv57.7.8, 1
  %conv59.7.8 = trunc i32 %xor58.7.8 to i8
  %scevgep35.7.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %840, i64 0, i64 0, i64 7
  %904 = load i8, i8* %scevgep35.7.8, align 1
  %call64.7.8 = call zeroext i8 @mult(i8 zeroext %conv59.7.8, i8 zeroext %904)
  %scevgep42.7.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %842, i64 0, i64 0, i64 7
  store i8 %call64.7.8, i8* %scevgep42.7.8, align 1
  %905 = load i8, i8* %arrayidx70.8, align 1
  %scevgep39.7.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %841, i64 0, i64 0, i64 7
  %906 = load i8, i8* %scevgep39.7.8, align 1
  %call75.7.8 = call zeroext i8 @mult(i8 zeroext %905, i8 zeroext %906)
  %scevgep46.7.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %843, i64 0, i64 0, i64 7
  store i8 %call75.7.8, i8* %scevgep46.7.8, align 1
  %scevgep43.7.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %842, i64 0, i64 0, i64 7
  %907 = load i8, i8* %scevgep43.7.8, align 1
  %conv84.7.8 = zext i8 %907 to i32
  %scevgep47.7.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %843, i64 0, i64 0, i64 7
  %908 = load i8, i8* %scevgep47.7.8, align 1
  %conv89.7.8 = zext i8 %908 to i32
  %xor90.7.8 = xor i32 %conv84.7.8, %conv89.7.8
  %conv91.7.8 = trunc i32 %xor90.7.8 to i8
  %scevgep50.7.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %844, i64 0, i64 0, i64 7
  store i8 %conv91.7.8, i8* %scevgep50.7.8, align 1
  %scevgep31.9.8 = getelementptr i8, i8* %b, i64 9
  %909 = load i8, i8* %scevgep31.9.8, align 1
  %conv44.9.8 = zext i8 %909 to i32
  %scevgep34.9.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %840, i64 0, i64 0, i64 9
  %910 = load i8, i8* %scevgep34.9.8, align 1
  %conv49.9.8 = zext i8 %910 to i32
  %xor.9.8 = xor i32 %conv44.9.8, %conv49.9.8
  %conv50.9.8 = trunc i32 %xor.9.8 to i8
  %scevgep38.9.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %841, i64 0, i64 0, i64 9
  store i8 %conv50.9.8, i8* %scevgep38.9.8, align 1
  %911 = load i8, i8* %arrayidx56.8, align 1
  %conv57.9.8 = zext i8 %911 to i32
  %xor58.9.8 = xor i32 %conv57.9.8, 1
  %conv59.9.8 = trunc i32 %xor58.9.8 to i8
  %scevgep35.9.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %840, i64 0, i64 0, i64 9
  %912 = load i8, i8* %scevgep35.9.8, align 1
  %call64.9.8 = call zeroext i8 @mult(i8 zeroext %conv59.9.8, i8 zeroext %912)
  %scevgep42.9.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %842, i64 0, i64 0, i64 9
  store i8 %call64.9.8, i8* %scevgep42.9.8, align 1
  %913 = load i8, i8* %arrayidx70.8, align 1
  %scevgep39.9.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %841, i64 0, i64 0, i64 9
  %914 = load i8, i8* %scevgep39.9.8, align 1
  %call75.9.8 = call zeroext i8 @mult(i8 zeroext %913, i8 zeroext %914)
  %scevgep46.9.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %843, i64 0, i64 0, i64 9
  store i8 %call75.9.8, i8* %scevgep46.9.8, align 1
  %scevgep43.9.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %842, i64 0, i64 0, i64 9
  %915 = load i8, i8* %scevgep43.9.8, align 1
  %conv84.9.8 = zext i8 %915 to i32
  %scevgep47.9.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %843, i64 0, i64 0, i64 9
  %916 = load i8, i8* %scevgep47.9.8, align 1
  %conv89.9.8 = zext i8 %916 to i32
  %xor90.9.8 = xor i32 %conv84.9.8, %conv89.9.8
  %conv91.9.8 = trunc i32 %xor90.9.8 to i8
  %scevgep50.9.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %844, i64 0, i64 0, i64 9
  store i8 %conv91.9.8, i8* %scevgep50.9.8, align 1
  %scevgep31.10.8 = getelementptr i8, i8* %b, i64 10
  %917 = load i8, i8* %scevgep31.10.8, align 1
  %conv44.10.8 = zext i8 %917 to i32
  %scevgep34.10.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %840, i64 0, i64 0, i64 10
  %918 = load i8, i8* %scevgep34.10.8, align 1
  %conv49.10.8 = zext i8 %918 to i32
  %xor.10.8 = xor i32 %conv44.10.8, %conv49.10.8
  %conv50.10.8 = trunc i32 %xor.10.8 to i8
  %scevgep38.10.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %841, i64 0, i64 0, i64 10
  store i8 %conv50.10.8, i8* %scevgep38.10.8, align 1
  %919 = load i8, i8* %arrayidx56.8, align 1
  %conv57.10.8 = zext i8 %919 to i32
  %xor58.10.8 = xor i32 %conv57.10.8, 1
  %conv59.10.8 = trunc i32 %xor58.10.8 to i8
  %scevgep35.10.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %840, i64 0, i64 0, i64 10
  %920 = load i8, i8* %scevgep35.10.8, align 1
  %call64.10.8 = call zeroext i8 @mult(i8 zeroext %conv59.10.8, i8 zeroext %920)
  %scevgep42.10.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %842, i64 0, i64 0, i64 10
  store i8 %call64.10.8, i8* %scevgep42.10.8, align 1
  %921 = load i8, i8* %arrayidx70.8, align 1
  %scevgep39.10.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %841, i64 0, i64 0, i64 10
  %922 = load i8, i8* %scevgep39.10.8, align 1
  %call75.10.8 = call zeroext i8 @mult(i8 zeroext %921, i8 zeroext %922)
  %scevgep46.10.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %843, i64 0, i64 0, i64 10
  store i8 %call75.10.8, i8* %scevgep46.10.8, align 1
  %scevgep43.10.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %842, i64 0, i64 0, i64 10
  %923 = load i8, i8* %scevgep43.10.8, align 1
  %conv84.10.8 = zext i8 %923 to i32
  %scevgep47.10.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %843, i64 0, i64 0, i64 10
  %924 = load i8, i8* %scevgep47.10.8, align 1
  %conv89.10.8 = zext i8 %924 to i32
  %xor90.10.8 = xor i32 %conv84.10.8, %conv89.10.8
  %conv91.10.8 = trunc i32 %xor90.10.8 to i8
  %scevgep50.10.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %844, i64 0, i64 0, i64 10
  store i8 %conv91.10.8, i8* %scevgep50.10.8, align 1
  %scevgep33.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %840, i64 0, i64 1, i64 0
  %925 = bitcast i8* %scevgep33.8 to [11 x [11 x i8]]*
  %scevgep37.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %841, i64 0, i64 1, i64 0
  %926 = bitcast i8* %scevgep37.8 to [11 x [11 x i8]]*
  %scevgep41.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %842, i64 0, i64 1, i64 0
  %927 = bitcast i8* %scevgep41.8 to [11 x [11 x i8]]*
  %scevgep45.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %843, i64 0, i64 1, i64 0
  %928 = bitcast i8* %scevgep45.8 to [11 x [11 x i8]]*
  %scevgep49.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %844, i64 0, i64 1, i64 0
  %929 = bitcast i8* %scevgep49.8 to [11 x [11 x i8]]*
  %arrayidx56.9 = getelementptr inbounds i8, i8* %a, i64 9
  %arrayidx70.9 = getelementptr inbounds i8, i8* %a, i64 9
  %930 = load i8, i8* %b, align 1
  %conv44.9394 = zext i8 %930 to i32
  %scevgep34.9395 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %925, i64 0, i64 0, i64 0
  %931 = load i8, i8* %scevgep34.9395, align 1
  %conv49.9396 = zext i8 %931 to i32
  %xor.9397 = xor i32 %conv44.9394, %conv49.9396
  %conv50.9398 = trunc i32 %xor.9397 to i8
  %scevgep38.9399 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %926, i64 0, i64 0, i64 0
  store i8 %conv50.9398, i8* %scevgep38.9399, align 1
  %932 = load i8, i8* %arrayidx56.9, align 1
  %conv57.9400 = zext i8 %932 to i32
  %xor58.9401 = xor i32 %conv57.9400, 1
  %conv59.9402 = trunc i32 %xor58.9401 to i8
  %scevgep35.9403 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %925, i64 0, i64 0, i64 0
  %933 = load i8, i8* %scevgep35.9403, align 1
  %call64.9404 = call zeroext i8 @mult(i8 zeroext %conv59.9402, i8 zeroext %933)
  %scevgep42.9405 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %927, i64 0, i64 0, i64 0
  store i8 %call64.9404, i8* %scevgep42.9405, align 1
  %934 = load i8, i8* %arrayidx70.9, align 1
  %scevgep39.9406 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %926, i64 0, i64 0, i64 0
  %935 = load i8, i8* %scevgep39.9406, align 1
  %call75.9407 = call zeroext i8 @mult(i8 zeroext %934, i8 zeroext %935)
  %scevgep46.9408 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %928, i64 0, i64 0, i64 0
  store i8 %call75.9407, i8* %scevgep46.9408, align 1
  %scevgep43.9409 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %927, i64 0, i64 0, i64 0
  %936 = load i8, i8* %scevgep43.9409, align 1
  %conv84.9410 = zext i8 %936 to i32
  %scevgep47.9411 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %928, i64 0, i64 0, i64 0
  %937 = load i8, i8* %scevgep47.9411, align 1
  %conv89.9412 = zext i8 %937 to i32
  %xor90.9413 = xor i32 %conv84.9410, %conv89.9412
  %conv91.9414 = trunc i32 %xor90.9413 to i8
  %scevgep50.9415 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %929, i64 0, i64 0, i64 0
  store i8 %conv91.9414, i8* %scevgep50.9415, align 1
  %scevgep31.1.9 = getelementptr i8, i8* %b, i64 1
  %938 = load i8, i8* %scevgep31.1.9, align 1
  %conv44.1.9 = zext i8 %938 to i32
  %scevgep34.1.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %925, i64 0, i64 0, i64 1
  %939 = load i8, i8* %scevgep34.1.9, align 1
  %conv49.1.9 = zext i8 %939 to i32
  %xor.1.9 = xor i32 %conv44.1.9, %conv49.1.9
  %conv50.1.9 = trunc i32 %xor.1.9 to i8
  %scevgep38.1.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %926, i64 0, i64 0, i64 1
  store i8 %conv50.1.9, i8* %scevgep38.1.9, align 1
  %940 = load i8, i8* %arrayidx56.9, align 1
  %conv57.1.9 = zext i8 %940 to i32
  %xor58.1.9 = xor i32 %conv57.1.9, 1
  %conv59.1.9 = trunc i32 %xor58.1.9 to i8
  %scevgep35.1.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %925, i64 0, i64 0, i64 1
  %941 = load i8, i8* %scevgep35.1.9, align 1
  %call64.1.9 = call zeroext i8 @mult(i8 zeroext %conv59.1.9, i8 zeroext %941)
  %scevgep42.1.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %927, i64 0, i64 0, i64 1
  store i8 %call64.1.9, i8* %scevgep42.1.9, align 1
  %942 = load i8, i8* %arrayidx70.9, align 1
  %scevgep39.1.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %926, i64 0, i64 0, i64 1
  %943 = load i8, i8* %scevgep39.1.9, align 1
  %call75.1.9 = call zeroext i8 @mult(i8 zeroext %942, i8 zeroext %943)
  %scevgep46.1.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %928, i64 0, i64 0, i64 1
  store i8 %call75.1.9, i8* %scevgep46.1.9, align 1
  %scevgep43.1.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %927, i64 0, i64 0, i64 1
  %944 = load i8, i8* %scevgep43.1.9, align 1
  %conv84.1.9 = zext i8 %944 to i32
  %scevgep47.1.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %928, i64 0, i64 0, i64 1
  %945 = load i8, i8* %scevgep47.1.9, align 1
  %conv89.1.9 = zext i8 %945 to i32
  %xor90.1.9 = xor i32 %conv84.1.9, %conv89.1.9
  %conv91.1.9 = trunc i32 %xor90.1.9 to i8
  %scevgep50.1.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %929, i64 0, i64 0, i64 1
  store i8 %conv91.1.9, i8* %scevgep50.1.9, align 1
  %scevgep31.2.9 = getelementptr i8, i8* %b, i64 2
  %946 = load i8, i8* %scevgep31.2.9, align 1
  %conv44.2.9 = zext i8 %946 to i32
  %scevgep34.2.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %925, i64 0, i64 0, i64 2
  %947 = load i8, i8* %scevgep34.2.9, align 1
  %conv49.2.9 = zext i8 %947 to i32
  %xor.2.9 = xor i32 %conv44.2.9, %conv49.2.9
  %conv50.2.9 = trunc i32 %xor.2.9 to i8
  %scevgep38.2.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %926, i64 0, i64 0, i64 2
  store i8 %conv50.2.9, i8* %scevgep38.2.9, align 1
  %948 = load i8, i8* %arrayidx56.9, align 1
  %conv57.2.9 = zext i8 %948 to i32
  %xor58.2.9 = xor i32 %conv57.2.9, 1
  %conv59.2.9 = trunc i32 %xor58.2.9 to i8
  %scevgep35.2.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %925, i64 0, i64 0, i64 2
  %949 = load i8, i8* %scevgep35.2.9, align 1
  %call64.2.9 = call zeroext i8 @mult(i8 zeroext %conv59.2.9, i8 zeroext %949)
  %scevgep42.2.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %927, i64 0, i64 0, i64 2
  store i8 %call64.2.9, i8* %scevgep42.2.9, align 1
  %950 = load i8, i8* %arrayidx70.9, align 1
  %scevgep39.2.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %926, i64 0, i64 0, i64 2
  %951 = load i8, i8* %scevgep39.2.9, align 1
  %call75.2.9 = call zeroext i8 @mult(i8 zeroext %950, i8 zeroext %951)
  %scevgep46.2.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %928, i64 0, i64 0, i64 2
  store i8 %call75.2.9, i8* %scevgep46.2.9, align 1
  %scevgep43.2.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %927, i64 0, i64 0, i64 2
  %952 = load i8, i8* %scevgep43.2.9, align 1
  %conv84.2.9 = zext i8 %952 to i32
  %scevgep47.2.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %928, i64 0, i64 0, i64 2
  %953 = load i8, i8* %scevgep47.2.9, align 1
  %conv89.2.9 = zext i8 %953 to i32
  %xor90.2.9 = xor i32 %conv84.2.9, %conv89.2.9
  %conv91.2.9 = trunc i32 %xor90.2.9 to i8
  %scevgep50.2.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %929, i64 0, i64 0, i64 2
  store i8 %conv91.2.9, i8* %scevgep50.2.9, align 1
  %scevgep31.3.9 = getelementptr i8, i8* %b, i64 3
  %954 = load i8, i8* %scevgep31.3.9, align 1
  %conv44.3.9 = zext i8 %954 to i32
  %scevgep34.3.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %925, i64 0, i64 0, i64 3
  %955 = load i8, i8* %scevgep34.3.9, align 1
  %conv49.3.9 = zext i8 %955 to i32
  %xor.3.9 = xor i32 %conv44.3.9, %conv49.3.9
  %conv50.3.9 = trunc i32 %xor.3.9 to i8
  %scevgep38.3.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %926, i64 0, i64 0, i64 3
  store i8 %conv50.3.9, i8* %scevgep38.3.9, align 1
  %956 = load i8, i8* %arrayidx56.9, align 1
  %conv57.3.9 = zext i8 %956 to i32
  %xor58.3.9 = xor i32 %conv57.3.9, 1
  %conv59.3.9 = trunc i32 %xor58.3.9 to i8
  %scevgep35.3.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %925, i64 0, i64 0, i64 3
  %957 = load i8, i8* %scevgep35.3.9, align 1
  %call64.3.9 = call zeroext i8 @mult(i8 zeroext %conv59.3.9, i8 zeroext %957)
  %scevgep42.3.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %927, i64 0, i64 0, i64 3
  store i8 %call64.3.9, i8* %scevgep42.3.9, align 1
  %958 = load i8, i8* %arrayidx70.9, align 1
  %scevgep39.3.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %926, i64 0, i64 0, i64 3
  %959 = load i8, i8* %scevgep39.3.9, align 1
  %call75.3.9 = call zeroext i8 @mult(i8 zeroext %958, i8 zeroext %959)
  %scevgep46.3.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %928, i64 0, i64 0, i64 3
  store i8 %call75.3.9, i8* %scevgep46.3.9, align 1
  %scevgep43.3.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %927, i64 0, i64 0, i64 3
  %960 = load i8, i8* %scevgep43.3.9, align 1
  %conv84.3.9 = zext i8 %960 to i32
  %scevgep47.3.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %928, i64 0, i64 0, i64 3
  %961 = load i8, i8* %scevgep47.3.9, align 1
  %conv89.3.9 = zext i8 %961 to i32
  %xor90.3.9 = xor i32 %conv84.3.9, %conv89.3.9
  %conv91.3.9 = trunc i32 %xor90.3.9 to i8
  %scevgep50.3.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %929, i64 0, i64 0, i64 3
  store i8 %conv91.3.9, i8* %scevgep50.3.9, align 1
  %scevgep31.4.9 = getelementptr i8, i8* %b, i64 4
  %962 = load i8, i8* %scevgep31.4.9, align 1
  %conv44.4.9 = zext i8 %962 to i32
  %scevgep34.4.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %925, i64 0, i64 0, i64 4
  %963 = load i8, i8* %scevgep34.4.9, align 1
  %conv49.4.9 = zext i8 %963 to i32
  %xor.4.9 = xor i32 %conv44.4.9, %conv49.4.9
  %conv50.4.9 = trunc i32 %xor.4.9 to i8
  %scevgep38.4.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %926, i64 0, i64 0, i64 4
  store i8 %conv50.4.9, i8* %scevgep38.4.9, align 1
  %964 = load i8, i8* %arrayidx56.9, align 1
  %conv57.4.9 = zext i8 %964 to i32
  %xor58.4.9 = xor i32 %conv57.4.9, 1
  %conv59.4.9 = trunc i32 %xor58.4.9 to i8
  %scevgep35.4.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %925, i64 0, i64 0, i64 4
  %965 = load i8, i8* %scevgep35.4.9, align 1
  %call64.4.9 = call zeroext i8 @mult(i8 zeroext %conv59.4.9, i8 zeroext %965)
  %scevgep42.4.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %927, i64 0, i64 0, i64 4
  store i8 %call64.4.9, i8* %scevgep42.4.9, align 1
  %966 = load i8, i8* %arrayidx70.9, align 1
  %scevgep39.4.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %926, i64 0, i64 0, i64 4
  %967 = load i8, i8* %scevgep39.4.9, align 1
  %call75.4.9 = call zeroext i8 @mult(i8 zeroext %966, i8 zeroext %967)
  %scevgep46.4.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %928, i64 0, i64 0, i64 4
  store i8 %call75.4.9, i8* %scevgep46.4.9, align 1
  %scevgep43.4.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %927, i64 0, i64 0, i64 4
  %968 = load i8, i8* %scevgep43.4.9, align 1
  %conv84.4.9 = zext i8 %968 to i32
  %scevgep47.4.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %928, i64 0, i64 0, i64 4
  %969 = load i8, i8* %scevgep47.4.9, align 1
  %conv89.4.9 = zext i8 %969 to i32
  %xor90.4.9 = xor i32 %conv84.4.9, %conv89.4.9
  %conv91.4.9 = trunc i32 %xor90.4.9 to i8
  %scevgep50.4.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %929, i64 0, i64 0, i64 4
  store i8 %conv91.4.9, i8* %scevgep50.4.9, align 1
  %scevgep31.5.9 = getelementptr i8, i8* %b, i64 5
  %970 = load i8, i8* %scevgep31.5.9, align 1
  %conv44.5.9 = zext i8 %970 to i32
  %scevgep34.5.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %925, i64 0, i64 0, i64 5
  %971 = load i8, i8* %scevgep34.5.9, align 1
  %conv49.5.9 = zext i8 %971 to i32
  %xor.5.9 = xor i32 %conv44.5.9, %conv49.5.9
  %conv50.5.9 = trunc i32 %xor.5.9 to i8
  %scevgep38.5.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %926, i64 0, i64 0, i64 5
  store i8 %conv50.5.9, i8* %scevgep38.5.9, align 1
  %972 = load i8, i8* %arrayidx56.9, align 1
  %conv57.5.9 = zext i8 %972 to i32
  %xor58.5.9 = xor i32 %conv57.5.9, 1
  %conv59.5.9 = trunc i32 %xor58.5.9 to i8
  %scevgep35.5.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %925, i64 0, i64 0, i64 5
  %973 = load i8, i8* %scevgep35.5.9, align 1
  %call64.5.9 = call zeroext i8 @mult(i8 zeroext %conv59.5.9, i8 zeroext %973)
  %scevgep42.5.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %927, i64 0, i64 0, i64 5
  store i8 %call64.5.9, i8* %scevgep42.5.9, align 1
  %974 = load i8, i8* %arrayidx70.9, align 1
  %scevgep39.5.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %926, i64 0, i64 0, i64 5
  %975 = load i8, i8* %scevgep39.5.9, align 1
  %call75.5.9 = call zeroext i8 @mult(i8 zeroext %974, i8 zeroext %975)
  %scevgep46.5.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %928, i64 0, i64 0, i64 5
  store i8 %call75.5.9, i8* %scevgep46.5.9, align 1
  %scevgep43.5.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %927, i64 0, i64 0, i64 5
  %976 = load i8, i8* %scevgep43.5.9, align 1
  %conv84.5.9 = zext i8 %976 to i32
  %scevgep47.5.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %928, i64 0, i64 0, i64 5
  %977 = load i8, i8* %scevgep47.5.9, align 1
  %conv89.5.9 = zext i8 %977 to i32
  %xor90.5.9 = xor i32 %conv84.5.9, %conv89.5.9
  %conv91.5.9 = trunc i32 %xor90.5.9 to i8
  %scevgep50.5.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %929, i64 0, i64 0, i64 5
  store i8 %conv91.5.9, i8* %scevgep50.5.9, align 1
  %scevgep31.6.9 = getelementptr i8, i8* %b, i64 6
  %978 = load i8, i8* %scevgep31.6.9, align 1
  %conv44.6.9 = zext i8 %978 to i32
  %scevgep34.6.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %925, i64 0, i64 0, i64 6
  %979 = load i8, i8* %scevgep34.6.9, align 1
  %conv49.6.9 = zext i8 %979 to i32
  %xor.6.9 = xor i32 %conv44.6.9, %conv49.6.9
  %conv50.6.9 = trunc i32 %xor.6.9 to i8
  %scevgep38.6.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %926, i64 0, i64 0, i64 6
  store i8 %conv50.6.9, i8* %scevgep38.6.9, align 1
  %980 = load i8, i8* %arrayidx56.9, align 1
  %conv57.6.9 = zext i8 %980 to i32
  %xor58.6.9 = xor i32 %conv57.6.9, 1
  %conv59.6.9 = trunc i32 %xor58.6.9 to i8
  %scevgep35.6.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %925, i64 0, i64 0, i64 6
  %981 = load i8, i8* %scevgep35.6.9, align 1
  %call64.6.9 = call zeroext i8 @mult(i8 zeroext %conv59.6.9, i8 zeroext %981)
  %scevgep42.6.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %927, i64 0, i64 0, i64 6
  store i8 %call64.6.9, i8* %scevgep42.6.9, align 1
  %982 = load i8, i8* %arrayidx70.9, align 1
  %scevgep39.6.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %926, i64 0, i64 0, i64 6
  %983 = load i8, i8* %scevgep39.6.9, align 1
  %call75.6.9 = call zeroext i8 @mult(i8 zeroext %982, i8 zeroext %983)
  %scevgep46.6.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %928, i64 0, i64 0, i64 6
  store i8 %call75.6.9, i8* %scevgep46.6.9, align 1
  %scevgep43.6.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %927, i64 0, i64 0, i64 6
  %984 = load i8, i8* %scevgep43.6.9, align 1
  %conv84.6.9 = zext i8 %984 to i32
  %scevgep47.6.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %928, i64 0, i64 0, i64 6
  %985 = load i8, i8* %scevgep47.6.9, align 1
  %conv89.6.9 = zext i8 %985 to i32
  %xor90.6.9 = xor i32 %conv84.6.9, %conv89.6.9
  %conv91.6.9 = trunc i32 %xor90.6.9 to i8
  %scevgep50.6.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %929, i64 0, i64 0, i64 6
  store i8 %conv91.6.9, i8* %scevgep50.6.9, align 1
  %scevgep31.7.9 = getelementptr i8, i8* %b, i64 7
  %986 = load i8, i8* %scevgep31.7.9, align 1
  %conv44.7.9 = zext i8 %986 to i32
  %scevgep34.7.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %925, i64 0, i64 0, i64 7
  %987 = load i8, i8* %scevgep34.7.9, align 1
  %conv49.7.9 = zext i8 %987 to i32
  %xor.7.9 = xor i32 %conv44.7.9, %conv49.7.9
  %conv50.7.9 = trunc i32 %xor.7.9 to i8
  %scevgep38.7.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %926, i64 0, i64 0, i64 7
  store i8 %conv50.7.9, i8* %scevgep38.7.9, align 1
  %988 = load i8, i8* %arrayidx56.9, align 1
  %conv57.7.9 = zext i8 %988 to i32
  %xor58.7.9 = xor i32 %conv57.7.9, 1
  %conv59.7.9 = trunc i32 %xor58.7.9 to i8
  %scevgep35.7.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %925, i64 0, i64 0, i64 7
  %989 = load i8, i8* %scevgep35.7.9, align 1
  %call64.7.9 = call zeroext i8 @mult(i8 zeroext %conv59.7.9, i8 zeroext %989)
  %scevgep42.7.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %927, i64 0, i64 0, i64 7
  store i8 %call64.7.9, i8* %scevgep42.7.9, align 1
  %990 = load i8, i8* %arrayidx70.9, align 1
  %scevgep39.7.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %926, i64 0, i64 0, i64 7
  %991 = load i8, i8* %scevgep39.7.9, align 1
  %call75.7.9 = call zeroext i8 @mult(i8 zeroext %990, i8 zeroext %991)
  %scevgep46.7.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %928, i64 0, i64 0, i64 7
  store i8 %call75.7.9, i8* %scevgep46.7.9, align 1
  %scevgep43.7.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %927, i64 0, i64 0, i64 7
  %992 = load i8, i8* %scevgep43.7.9, align 1
  %conv84.7.9 = zext i8 %992 to i32
  %scevgep47.7.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %928, i64 0, i64 0, i64 7
  %993 = load i8, i8* %scevgep47.7.9, align 1
  %conv89.7.9 = zext i8 %993 to i32
  %xor90.7.9 = xor i32 %conv84.7.9, %conv89.7.9
  %conv91.7.9 = trunc i32 %xor90.7.9 to i8
  %scevgep50.7.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %929, i64 0, i64 0, i64 7
  store i8 %conv91.7.9, i8* %scevgep50.7.9, align 1
  %scevgep31.8.9 = getelementptr i8, i8* %b, i64 8
  %994 = load i8, i8* %scevgep31.8.9, align 1
  %conv44.8.9 = zext i8 %994 to i32
  %scevgep34.8.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %925, i64 0, i64 0, i64 8
  %995 = load i8, i8* %scevgep34.8.9, align 1
  %conv49.8.9 = zext i8 %995 to i32
  %xor.8.9 = xor i32 %conv44.8.9, %conv49.8.9
  %conv50.8.9 = trunc i32 %xor.8.9 to i8
  %scevgep38.8.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %926, i64 0, i64 0, i64 8
  store i8 %conv50.8.9, i8* %scevgep38.8.9, align 1
  %996 = load i8, i8* %arrayidx56.9, align 1
  %conv57.8.9 = zext i8 %996 to i32
  %xor58.8.9 = xor i32 %conv57.8.9, 1
  %conv59.8.9 = trunc i32 %xor58.8.9 to i8
  %scevgep35.8.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %925, i64 0, i64 0, i64 8
  %997 = load i8, i8* %scevgep35.8.9, align 1
  %call64.8.9 = call zeroext i8 @mult(i8 zeroext %conv59.8.9, i8 zeroext %997)
  %scevgep42.8.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %927, i64 0, i64 0, i64 8
  store i8 %call64.8.9, i8* %scevgep42.8.9, align 1
  %998 = load i8, i8* %arrayidx70.9, align 1
  %scevgep39.8.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %926, i64 0, i64 0, i64 8
  %999 = load i8, i8* %scevgep39.8.9, align 1
  %call75.8.9 = call zeroext i8 @mult(i8 zeroext %998, i8 zeroext %999)
  %scevgep46.8.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %928, i64 0, i64 0, i64 8
  store i8 %call75.8.9, i8* %scevgep46.8.9, align 1
  %scevgep43.8.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %927, i64 0, i64 0, i64 8
  %1000 = load i8, i8* %scevgep43.8.9, align 1
  %conv84.8.9 = zext i8 %1000 to i32
  %scevgep47.8.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %928, i64 0, i64 0, i64 8
  %1001 = load i8, i8* %scevgep47.8.9, align 1
  %conv89.8.9 = zext i8 %1001 to i32
  %xor90.8.9 = xor i32 %conv84.8.9, %conv89.8.9
  %conv91.8.9 = trunc i32 %xor90.8.9 to i8
  %scevgep50.8.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %929, i64 0, i64 0, i64 8
  store i8 %conv91.8.9, i8* %scevgep50.8.9, align 1
  %scevgep31.10.9 = getelementptr i8, i8* %b, i64 10
  %1002 = load i8, i8* %scevgep31.10.9, align 1
  %conv44.10.9 = zext i8 %1002 to i32
  %scevgep34.10.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %925, i64 0, i64 0, i64 10
  %1003 = load i8, i8* %scevgep34.10.9, align 1
  %conv49.10.9 = zext i8 %1003 to i32
  %xor.10.9 = xor i32 %conv44.10.9, %conv49.10.9
  %conv50.10.9 = trunc i32 %xor.10.9 to i8
  %scevgep38.10.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %926, i64 0, i64 0, i64 10
  store i8 %conv50.10.9, i8* %scevgep38.10.9, align 1
  %1004 = load i8, i8* %arrayidx56.9, align 1
  %conv57.10.9 = zext i8 %1004 to i32
  %xor58.10.9 = xor i32 %conv57.10.9, 1
  %conv59.10.9 = trunc i32 %xor58.10.9 to i8
  %scevgep35.10.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %925, i64 0, i64 0, i64 10
  %1005 = load i8, i8* %scevgep35.10.9, align 1
  %call64.10.9 = call zeroext i8 @mult(i8 zeroext %conv59.10.9, i8 zeroext %1005)
  %scevgep42.10.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %927, i64 0, i64 0, i64 10
  store i8 %call64.10.9, i8* %scevgep42.10.9, align 1
  %1006 = load i8, i8* %arrayidx70.9, align 1
  %scevgep39.10.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %926, i64 0, i64 0, i64 10
  %1007 = load i8, i8* %scevgep39.10.9, align 1
  %call75.10.9 = call zeroext i8 @mult(i8 zeroext %1006, i8 zeroext %1007)
  %scevgep46.10.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %928, i64 0, i64 0, i64 10
  store i8 %call75.10.9, i8* %scevgep46.10.9, align 1
  %scevgep43.10.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %927, i64 0, i64 0, i64 10
  %1008 = load i8, i8* %scevgep43.10.9, align 1
  %conv84.10.9 = zext i8 %1008 to i32
  %scevgep47.10.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %928, i64 0, i64 0, i64 10
  %1009 = load i8, i8* %scevgep47.10.9, align 1
  %conv89.10.9 = zext i8 %1009 to i32
  %xor90.10.9 = xor i32 %conv84.10.9, %conv89.10.9
  %conv91.10.9 = trunc i32 %xor90.10.9 to i8
  %scevgep50.10.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %929, i64 0, i64 0, i64 10
  store i8 %conv91.10.9, i8* %scevgep50.10.9, align 1
  %scevgep33.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %925, i64 0, i64 1, i64 0
  %1010 = bitcast i8* %scevgep33.9 to [11 x [11 x i8]]*
  %scevgep37.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %926, i64 0, i64 1, i64 0
  %1011 = bitcast i8* %scevgep37.9 to [11 x [11 x i8]]*
  %scevgep41.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %927, i64 0, i64 1, i64 0
  %1012 = bitcast i8* %scevgep41.9 to [11 x [11 x i8]]*
  %scevgep45.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %928, i64 0, i64 1, i64 0
  %1013 = bitcast i8* %scevgep45.9 to [11 x [11 x i8]]*
  %scevgep49.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %929, i64 0, i64 1, i64 0
  %1014 = bitcast i8* %scevgep49.9 to [11 x [11 x i8]]*
  %arrayidx56.10 = getelementptr inbounds i8, i8* %a, i64 10
  %arrayidx70.10 = getelementptr inbounds i8, i8* %a, i64 10
  %1015 = load i8, i8* %b, align 1
  %conv44.10421 = zext i8 %1015 to i32
  %scevgep34.10422 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1010, i64 0, i64 0, i64 0
  %1016 = load i8, i8* %scevgep34.10422, align 1
  %conv49.10423 = zext i8 %1016 to i32
  %xor.10424 = xor i32 %conv44.10421, %conv49.10423
  %conv50.10425 = trunc i32 %xor.10424 to i8
  %scevgep38.10426 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1011, i64 0, i64 0, i64 0
  store i8 %conv50.10425, i8* %scevgep38.10426, align 1
  %1017 = load i8, i8* %arrayidx56.10, align 1
  %conv57.10427 = zext i8 %1017 to i32
  %xor58.10428 = xor i32 %conv57.10427, 1
  %conv59.10429 = trunc i32 %xor58.10428 to i8
  %scevgep35.10430 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1010, i64 0, i64 0, i64 0
  %1018 = load i8, i8* %scevgep35.10430, align 1
  %call64.10431 = call zeroext i8 @mult(i8 zeroext %conv59.10429, i8 zeroext %1018)
  %scevgep42.10432 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1012, i64 0, i64 0, i64 0
  store i8 %call64.10431, i8* %scevgep42.10432, align 1
  %1019 = load i8, i8* %arrayidx70.10, align 1
  %scevgep39.10433 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1011, i64 0, i64 0, i64 0
  %1020 = load i8, i8* %scevgep39.10433, align 1
  %call75.10434 = call zeroext i8 @mult(i8 zeroext %1019, i8 zeroext %1020)
  %scevgep46.10435 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1013, i64 0, i64 0, i64 0
  store i8 %call75.10434, i8* %scevgep46.10435, align 1
  %scevgep43.10436 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1012, i64 0, i64 0, i64 0
  %1021 = load i8, i8* %scevgep43.10436, align 1
  %conv84.10437 = zext i8 %1021 to i32
  %scevgep47.10438 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1013, i64 0, i64 0, i64 0
  %1022 = load i8, i8* %scevgep47.10438, align 1
  %conv89.10439 = zext i8 %1022 to i32
  %xor90.10440 = xor i32 %conv84.10437, %conv89.10439
  %conv91.10441 = trunc i32 %xor90.10440 to i8
  %scevgep50.10442 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1014, i64 0, i64 0, i64 0
  store i8 %conv91.10441, i8* %scevgep50.10442, align 1
  %scevgep31.1.10 = getelementptr i8, i8* %b, i64 1
  %1023 = load i8, i8* %scevgep31.1.10, align 1
  %conv44.1.10 = zext i8 %1023 to i32
  %scevgep34.1.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1010, i64 0, i64 0, i64 1
  %1024 = load i8, i8* %scevgep34.1.10, align 1
  %conv49.1.10 = zext i8 %1024 to i32
  %xor.1.10 = xor i32 %conv44.1.10, %conv49.1.10
  %conv50.1.10 = trunc i32 %xor.1.10 to i8
  %scevgep38.1.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1011, i64 0, i64 0, i64 1
  store i8 %conv50.1.10, i8* %scevgep38.1.10, align 1
  %1025 = load i8, i8* %arrayidx56.10, align 1
  %conv57.1.10 = zext i8 %1025 to i32
  %xor58.1.10 = xor i32 %conv57.1.10, 1
  %conv59.1.10 = trunc i32 %xor58.1.10 to i8
  %scevgep35.1.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1010, i64 0, i64 0, i64 1
  %1026 = load i8, i8* %scevgep35.1.10, align 1
  %call64.1.10 = call zeroext i8 @mult(i8 zeroext %conv59.1.10, i8 zeroext %1026)
  %scevgep42.1.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1012, i64 0, i64 0, i64 1
  store i8 %call64.1.10, i8* %scevgep42.1.10, align 1
  %1027 = load i8, i8* %arrayidx70.10, align 1
  %scevgep39.1.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1011, i64 0, i64 0, i64 1
  %1028 = load i8, i8* %scevgep39.1.10, align 1
  %call75.1.10 = call zeroext i8 @mult(i8 zeroext %1027, i8 zeroext %1028)
  %scevgep46.1.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1013, i64 0, i64 0, i64 1
  store i8 %call75.1.10, i8* %scevgep46.1.10, align 1
  %scevgep43.1.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1012, i64 0, i64 0, i64 1
  %1029 = load i8, i8* %scevgep43.1.10, align 1
  %conv84.1.10 = zext i8 %1029 to i32
  %scevgep47.1.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1013, i64 0, i64 0, i64 1
  %1030 = load i8, i8* %scevgep47.1.10, align 1
  %conv89.1.10 = zext i8 %1030 to i32
  %xor90.1.10 = xor i32 %conv84.1.10, %conv89.1.10
  %conv91.1.10 = trunc i32 %xor90.1.10 to i8
  %scevgep50.1.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1014, i64 0, i64 0, i64 1
  store i8 %conv91.1.10, i8* %scevgep50.1.10, align 1
  %scevgep31.2.10 = getelementptr i8, i8* %b, i64 2
  %1031 = load i8, i8* %scevgep31.2.10, align 1
  %conv44.2.10 = zext i8 %1031 to i32
  %scevgep34.2.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1010, i64 0, i64 0, i64 2
  %1032 = load i8, i8* %scevgep34.2.10, align 1
  %conv49.2.10 = zext i8 %1032 to i32
  %xor.2.10 = xor i32 %conv44.2.10, %conv49.2.10
  %conv50.2.10 = trunc i32 %xor.2.10 to i8
  %scevgep38.2.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1011, i64 0, i64 0, i64 2
  store i8 %conv50.2.10, i8* %scevgep38.2.10, align 1
  %1033 = load i8, i8* %arrayidx56.10, align 1
  %conv57.2.10 = zext i8 %1033 to i32
  %xor58.2.10 = xor i32 %conv57.2.10, 1
  %conv59.2.10 = trunc i32 %xor58.2.10 to i8
  %scevgep35.2.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1010, i64 0, i64 0, i64 2
  %1034 = load i8, i8* %scevgep35.2.10, align 1
  %call64.2.10 = call zeroext i8 @mult(i8 zeroext %conv59.2.10, i8 zeroext %1034)
  %scevgep42.2.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1012, i64 0, i64 0, i64 2
  store i8 %call64.2.10, i8* %scevgep42.2.10, align 1
  %1035 = load i8, i8* %arrayidx70.10, align 1
  %scevgep39.2.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1011, i64 0, i64 0, i64 2
  %1036 = load i8, i8* %scevgep39.2.10, align 1
  %call75.2.10 = call zeroext i8 @mult(i8 zeroext %1035, i8 zeroext %1036)
  %scevgep46.2.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1013, i64 0, i64 0, i64 2
  store i8 %call75.2.10, i8* %scevgep46.2.10, align 1
  %scevgep43.2.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1012, i64 0, i64 0, i64 2
  %1037 = load i8, i8* %scevgep43.2.10, align 1
  %conv84.2.10 = zext i8 %1037 to i32
  %scevgep47.2.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1013, i64 0, i64 0, i64 2
  %1038 = load i8, i8* %scevgep47.2.10, align 1
  %conv89.2.10 = zext i8 %1038 to i32
  %xor90.2.10 = xor i32 %conv84.2.10, %conv89.2.10
  %conv91.2.10 = trunc i32 %xor90.2.10 to i8
  %scevgep50.2.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1014, i64 0, i64 0, i64 2
  store i8 %conv91.2.10, i8* %scevgep50.2.10, align 1
  %scevgep31.3.10 = getelementptr i8, i8* %b, i64 3
  %1039 = load i8, i8* %scevgep31.3.10, align 1
  %conv44.3.10 = zext i8 %1039 to i32
  %scevgep34.3.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1010, i64 0, i64 0, i64 3
  %1040 = load i8, i8* %scevgep34.3.10, align 1
  %conv49.3.10 = zext i8 %1040 to i32
  %xor.3.10 = xor i32 %conv44.3.10, %conv49.3.10
  %conv50.3.10 = trunc i32 %xor.3.10 to i8
  %scevgep38.3.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1011, i64 0, i64 0, i64 3
  store i8 %conv50.3.10, i8* %scevgep38.3.10, align 1
  %1041 = load i8, i8* %arrayidx56.10, align 1
  %conv57.3.10 = zext i8 %1041 to i32
  %xor58.3.10 = xor i32 %conv57.3.10, 1
  %conv59.3.10 = trunc i32 %xor58.3.10 to i8
  %scevgep35.3.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1010, i64 0, i64 0, i64 3
  %1042 = load i8, i8* %scevgep35.3.10, align 1
  %call64.3.10 = call zeroext i8 @mult(i8 zeroext %conv59.3.10, i8 zeroext %1042)
  %scevgep42.3.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1012, i64 0, i64 0, i64 3
  store i8 %call64.3.10, i8* %scevgep42.3.10, align 1
  %1043 = load i8, i8* %arrayidx70.10, align 1
  %scevgep39.3.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1011, i64 0, i64 0, i64 3
  %1044 = load i8, i8* %scevgep39.3.10, align 1
  %call75.3.10 = call zeroext i8 @mult(i8 zeroext %1043, i8 zeroext %1044)
  %scevgep46.3.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1013, i64 0, i64 0, i64 3
  store i8 %call75.3.10, i8* %scevgep46.3.10, align 1
  %scevgep43.3.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1012, i64 0, i64 0, i64 3
  %1045 = load i8, i8* %scevgep43.3.10, align 1
  %conv84.3.10 = zext i8 %1045 to i32
  %scevgep47.3.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1013, i64 0, i64 0, i64 3
  %1046 = load i8, i8* %scevgep47.3.10, align 1
  %conv89.3.10 = zext i8 %1046 to i32
  %xor90.3.10 = xor i32 %conv84.3.10, %conv89.3.10
  %conv91.3.10 = trunc i32 %xor90.3.10 to i8
  %scevgep50.3.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1014, i64 0, i64 0, i64 3
  store i8 %conv91.3.10, i8* %scevgep50.3.10, align 1
  %scevgep31.4.10 = getelementptr i8, i8* %b, i64 4
  %1047 = load i8, i8* %scevgep31.4.10, align 1
  %conv44.4.10 = zext i8 %1047 to i32
  %scevgep34.4.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1010, i64 0, i64 0, i64 4
  %1048 = load i8, i8* %scevgep34.4.10, align 1
  %conv49.4.10 = zext i8 %1048 to i32
  %xor.4.10 = xor i32 %conv44.4.10, %conv49.4.10
  %conv50.4.10 = trunc i32 %xor.4.10 to i8
  %scevgep38.4.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1011, i64 0, i64 0, i64 4
  store i8 %conv50.4.10, i8* %scevgep38.4.10, align 1
  %1049 = load i8, i8* %arrayidx56.10, align 1
  %conv57.4.10 = zext i8 %1049 to i32
  %xor58.4.10 = xor i32 %conv57.4.10, 1
  %conv59.4.10 = trunc i32 %xor58.4.10 to i8
  %scevgep35.4.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1010, i64 0, i64 0, i64 4
  %1050 = load i8, i8* %scevgep35.4.10, align 1
  %call64.4.10 = call zeroext i8 @mult(i8 zeroext %conv59.4.10, i8 zeroext %1050)
  %scevgep42.4.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1012, i64 0, i64 0, i64 4
  store i8 %call64.4.10, i8* %scevgep42.4.10, align 1
  %1051 = load i8, i8* %arrayidx70.10, align 1
  %scevgep39.4.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1011, i64 0, i64 0, i64 4
  %1052 = load i8, i8* %scevgep39.4.10, align 1
  %call75.4.10 = call zeroext i8 @mult(i8 zeroext %1051, i8 zeroext %1052)
  %scevgep46.4.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1013, i64 0, i64 0, i64 4
  store i8 %call75.4.10, i8* %scevgep46.4.10, align 1
  %scevgep43.4.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1012, i64 0, i64 0, i64 4
  %1053 = load i8, i8* %scevgep43.4.10, align 1
  %conv84.4.10 = zext i8 %1053 to i32
  %scevgep47.4.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1013, i64 0, i64 0, i64 4
  %1054 = load i8, i8* %scevgep47.4.10, align 1
  %conv89.4.10 = zext i8 %1054 to i32
  %xor90.4.10 = xor i32 %conv84.4.10, %conv89.4.10
  %conv91.4.10 = trunc i32 %xor90.4.10 to i8
  %scevgep50.4.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1014, i64 0, i64 0, i64 4
  store i8 %conv91.4.10, i8* %scevgep50.4.10, align 1
  %scevgep31.5.10 = getelementptr i8, i8* %b, i64 5
  %1055 = load i8, i8* %scevgep31.5.10, align 1
  %conv44.5.10 = zext i8 %1055 to i32
  %scevgep34.5.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1010, i64 0, i64 0, i64 5
  %1056 = load i8, i8* %scevgep34.5.10, align 1
  %conv49.5.10 = zext i8 %1056 to i32
  %xor.5.10 = xor i32 %conv44.5.10, %conv49.5.10
  %conv50.5.10 = trunc i32 %xor.5.10 to i8
  %scevgep38.5.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1011, i64 0, i64 0, i64 5
  store i8 %conv50.5.10, i8* %scevgep38.5.10, align 1
  %1057 = load i8, i8* %arrayidx56.10, align 1
  %conv57.5.10 = zext i8 %1057 to i32
  %xor58.5.10 = xor i32 %conv57.5.10, 1
  %conv59.5.10 = trunc i32 %xor58.5.10 to i8
  %scevgep35.5.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1010, i64 0, i64 0, i64 5
  %1058 = load i8, i8* %scevgep35.5.10, align 1
  %call64.5.10 = call zeroext i8 @mult(i8 zeroext %conv59.5.10, i8 zeroext %1058)
  %scevgep42.5.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1012, i64 0, i64 0, i64 5
  store i8 %call64.5.10, i8* %scevgep42.5.10, align 1
  %1059 = load i8, i8* %arrayidx70.10, align 1
  %scevgep39.5.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1011, i64 0, i64 0, i64 5
  %1060 = load i8, i8* %scevgep39.5.10, align 1
  %call75.5.10 = call zeroext i8 @mult(i8 zeroext %1059, i8 zeroext %1060)
  %scevgep46.5.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1013, i64 0, i64 0, i64 5
  store i8 %call75.5.10, i8* %scevgep46.5.10, align 1
  %scevgep43.5.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1012, i64 0, i64 0, i64 5
  %1061 = load i8, i8* %scevgep43.5.10, align 1
  %conv84.5.10 = zext i8 %1061 to i32
  %scevgep47.5.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1013, i64 0, i64 0, i64 5
  %1062 = load i8, i8* %scevgep47.5.10, align 1
  %conv89.5.10 = zext i8 %1062 to i32
  %xor90.5.10 = xor i32 %conv84.5.10, %conv89.5.10
  %conv91.5.10 = trunc i32 %xor90.5.10 to i8
  %scevgep50.5.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1014, i64 0, i64 0, i64 5
  store i8 %conv91.5.10, i8* %scevgep50.5.10, align 1
  %scevgep31.6.10 = getelementptr i8, i8* %b, i64 6
  %1063 = load i8, i8* %scevgep31.6.10, align 1
  %conv44.6.10 = zext i8 %1063 to i32
  %scevgep34.6.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1010, i64 0, i64 0, i64 6
  %1064 = load i8, i8* %scevgep34.6.10, align 1
  %conv49.6.10 = zext i8 %1064 to i32
  %xor.6.10 = xor i32 %conv44.6.10, %conv49.6.10
  %conv50.6.10 = trunc i32 %xor.6.10 to i8
  %scevgep38.6.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1011, i64 0, i64 0, i64 6
  store i8 %conv50.6.10, i8* %scevgep38.6.10, align 1
  %1065 = load i8, i8* %arrayidx56.10, align 1
  %conv57.6.10 = zext i8 %1065 to i32
  %xor58.6.10 = xor i32 %conv57.6.10, 1
  %conv59.6.10 = trunc i32 %xor58.6.10 to i8
  %scevgep35.6.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1010, i64 0, i64 0, i64 6
  %1066 = load i8, i8* %scevgep35.6.10, align 1
  %call64.6.10 = call zeroext i8 @mult(i8 zeroext %conv59.6.10, i8 zeroext %1066)
  %scevgep42.6.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1012, i64 0, i64 0, i64 6
  store i8 %call64.6.10, i8* %scevgep42.6.10, align 1
  %1067 = load i8, i8* %arrayidx70.10, align 1
  %scevgep39.6.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1011, i64 0, i64 0, i64 6
  %1068 = load i8, i8* %scevgep39.6.10, align 1
  %call75.6.10 = call zeroext i8 @mult(i8 zeroext %1067, i8 zeroext %1068)
  %scevgep46.6.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1013, i64 0, i64 0, i64 6
  store i8 %call75.6.10, i8* %scevgep46.6.10, align 1
  %scevgep43.6.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1012, i64 0, i64 0, i64 6
  %1069 = load i8, i8* %scevgep43.6.10, align 1
  %conv84.6.10 = zext i8 %1069 to i32
  %scevgep47.6.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1013, i64 0, i64 0, i64 6
  %1070 = load i8, i8* %scevgep47.6.10, align 1
  %conv89.6.10 = zext i8 %1070 to i32
  %xor90.6.10 = xor i32 %conv84.6.10, %conv89.6.10
  %conv91.6.10 = trunc i32 %xor90.6.10 to i8
  %scevgep50.6.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1014, i64 0, i64 0, i64 6
  store i8 %conv91.6.10, i8* %scevgep50.6.10, align 1
  %scevgep31.7.10 = getelementptr i8, i8* %b, i64 7
  %1071 = load i8, i8* %scevgep31.7.10, align 1
  %conv44.7.10 = zext i8 %1071 to i32
  %scevgep34.7.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1010, i64 0, i64 0, i64 7
  %1072 = load i8, i8* %scevgep34.7.10, align 1
  %conv49.7.10 = zext i8 %1072 to i32
  %xor.7.10 = xor i32 %conv44.7.10, %conv49.7.10
  %conv50.7.10 = trunc i32 %xor.7.10 to i8
  %scevgep38.7.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1011, i64 0, i64 0, i64 7
  store i8 %conv50.7.10, i8* %scevgep38.7.10, align 1
  %1073 = load i8, i8* %arrayidx56.10, align 1
  %conv57.7.10 = zext i8 %1073 to i32
  %xor58.7.10 = xor i32 %conv57.7.10, 1
  %conv59.7.10 = trunc i32 %xor58.7.10 to i8
  %scevgep35.7.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1010, i64 0, i64 0, i64 7
  %1074 = load i8, i8* %scevgep35.7.10, align 1
  %call64.7.10 = call zeroext i8 @mult(i8 zeroext %conv59.7.10, i8 zeroext %1074)
  %scevgep42.7.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1012, i64 0, i64 0, i64 7
  store i8 %call64.7.10, i8* %scevgep42.7.10, align 1
  %1075 = load i8, i8* %arrayidx70.10, align 1
  %scevgep39.7.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1011, i64 0, i64 0, i64 7
  %1076 = load i8, i8* %scevgep39.7.10, align 1
  %call75.7.10 = call zeroext i8 @mult(i8 zeroext %1075, i8 zeroext %1076)
  %scevgep46.7.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1013, i64 0, i64 0, i64 7
  store i8 %call75.7.10, i8* %scevgep46.7.10, align 1
  %scevgep43.7.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1012, i64 0, i64 0, i64 7
  %1077 = load i8, i8* %scevgep43.7.10, align 1
  %conv84.7.10 = zext i8 %1077 to i32
  %scevgep47.7.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1013, i64 0, i64 0, i64 7
  %1078 = load i8, i8* %scevgep47.7.10, align 1
  %conv89.7.10 = zext i8 %1078 to i32
  %xor90.7.10 = xor i32 %conv84.7.10, %conv89.7.10
  %conv91.7.10 = trunc i32 %xor90.7.10 to i8
  %scevgep50.7.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1014, i64 0, i64 0, i64 7
  store i8 %conv91.7.10, i8* %scevgep50.7.10, align 1
  %scevgep31.8.10 = getelementptr i8, i8* %b, i64 8
  %1079 = load i8, i8* %scevgep31.8.10, align 1
  %conv44.8.10 = zext i8 %1079 to i32
  %scevgep34.8.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1010, i64 0, i64 0, i64 8
  %1080 = load i8, i8* %scevgep34.8.10, align 1
  %conv49.8.10 = zext i8 %1080 to i32
  %xor.8.10 = xor i32 %conv44.8.10, %conv49.8.10
  %conv50.8.10 = trunc i32 %xor.8.10 to i8
  %scevgep38.8.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1011, i64 0, i64 0, i64 8
  store i8 %conv50.8.10, i8* %scevgep38.8.10, align 1
  %1081 = load i8, i8* %arrayidx56.10, align 1
  %conv57.8.10 = zext i8 %1081 to i32
  %xor58.8.10 = xor i32 %conv57.8.10, 1
  %conv59.8.10 = trunc i32 %xor58.8.10 to i8
  %scevgep35.8.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1010, i64 0, i64 0, i64 8
  %1082 = load i8, i8* %scevgep35.8.10, align 1
  %call64.8.10 = call zeroext i8 @mult(i8 zeroext %conv59.8.10, i8 zeroext %1082)
  %scevgep42.8.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1012, i64 0, i64 0, i64 8
  store i8 %call64.8.10, i8* %scevgep42.8.10, align 1
  %1083 = load i8, i8* %arrayidx70.10, align 1
  %scevgep39.8.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1011, i64 0, i64 0, i64 8
  %1084 = load i8, i8* %scevgep39.8.10, align 1
  %call75.8.10 = call zeroext i8 @mult(i8 zeroext %1083, i8 zeroext %1084)
  %scevgep46.8.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1013, i64 0, i64 0, i64 8
  store i8 %call75.8.10, i8* %scevgep46.8.10, align 1
  %scevgep43.8.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1012, i64 0, i64 0, i64 8
  %1085 = load i8, i8* %scevgep43.8.10, align 1
  %conv84.8.10 = zext i8 %1085 to i32
  %scevgep47.8.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1013, i64 0, i64 0, i64 8
  %1086 = load i8, i8* %scevgep47.8.10, align 1
  %conv89.8.10 = zext i8 %1086 to i32
  %xor90.8.10 = xor i32 %conv84.8.10, %conv89.8.10
  %conv91.8.10 = trunc i32 %xor90.8.10 to i8
  %scevgep50.8.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1014, i64 0, i64 0, i64 8
  store i8 %conv91.8.10, i8* %scevgep50.8.10, align 1
  %scevgep31.9.10 = getelementptr i8, i8* %b, i64 9
  %1087 = load i8, i8* %scevgep31.9.10, align 1
  %conv44.9.10 = zext i8 %1087 to i32
  %scevgep34.9.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1010, i64 0, i64 0, i64 9
  %1088 = load i8, i8* %scevgep34.9.10, align 1
  %conv49.9.10 = zext i8 %1088 to i32
  %xor.9.10 = xor i32 %conv44.9.10, %conv49.9.10
  %conv50.9.10 = trunc i32 %xor.9.10 to i8
  %scevgep38.9.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1011, i64 0, i64 0, i64 9
  store i8 %conv50.9.10, i8* %scevgep38.9.10, align 1
  %1089 = load i8, i8* %arrayidx56.10, align 1
  %conv57.9.10 = zext i8 %1089 to i32
  %xor58.9.10 = xor i32 %conv57.9.10, 1
  %conv59.9.10 = trunc i32 %xor58.9.10 to i8
  %scevgep35.9.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1010, i64 0, i64 0, i64 9
  %1090 = load i8, i8* %scevgep35.9.10, align 1
  %call64.9.10 = call zeroext i8 @mult(i8 zeroext %conv59.9.10, i8 zeroext %1090)
  %scevgep42.9.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1012, i64 0, i64 0, i64 9
  store i8 %call64.9.10, i8* %scevgep42.9.10, align 1
  %1091 = load i8, i8* %arrayidx70.10, align 1
  %scevgep39.9.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1011, i64 0, i64 0, i64 9
  %1092 = load i8, i8* %scevgep39.9.10, align 1
  %call75.9.10 = call zeroext i8 @mult(i8 zeroext %1091, i8 zeroext %1092)
  %scevgep46.9.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1013, i64 0, i64 0, i64 9
  store i8 %call75.9.10, i8* %scevgep46.9.10, align 1
  %scevgep43.9.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1012, i64 0, i64 0, i64 9
  %1093 = load i8, i8* %scevgep43.9.10, align 1
  %conv84.9.10 = zext i8 %1093 to i32
  %scevgep47.9.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1013, i64 0, i64 0, i64 9
  %1094 = load i8, i8* %scevgep47.9.10, align 1
  %conv89.9.10 = zext i8 %1094 to i32
  %xor90.9.10 = xor i32 %conv84.9.10, %conv89.9.10
  %conv91.9.10 = trunc i32 %xor90.9.10 to i8
  %scevgep50.9.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1014, i64 0, i64 0, i64 9
  store i8 %conv91.9.10, i8* %scevgep50.9.10, align 1
  %1095 = load i8, i8* %a, align 1
  %1096 = load i8, i8* %b, align 1
  %call111 = call zeroext i8 @mult(i8 zeroext %1095, i8 zeroext %1096)
  store i8 %call111, i8* %c, align 1
  %scevgep22.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %z, i64 0, i64 0, i64 1
  %1097 = load i8, i8* %scevgep22.1, align 1
  %conv126.1 = zext i8 %1097 to i32
  %1098 = load i8, i8* %c, align 1
  %conv129.1 = zext i8 %1098 to i32
  %xor130.1 = xor i32 %conv129.1, %conv126.1
  %conv131.1 = trunc i32 %xor130.1 to i8
  store i8 %conv131.1, i8* %c, align 1
  %scevgep22.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %z, i64 0, i64 0, i64 2
  %1099 = load i8, i8* %scevgep22.2, align 1
  %conv126.2 = zext i8 %1099 to i32
  %1100 = load i8, i8* %c, align 1
  %conv129.2 = zext i8 %1100 to i32
  %xor130.2 = xor i32 %conv129.2, %conv126.2
  %conv131.2 = trunc i32 %xor130.2 to i8
  store i8 %conv131.2, i8* %c, align 1
  %scevgep22.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %z, i64 0, i64 0, i64 3
  %1101 = load i8, i8* %scevgep22.3, align 1
  %conv126.3 = zext i8 %1101 to i32
  %1102 = load i8, i8* %c, align 1
  %conv129.3 = zext i8 %1102 to i32
  %xor130.3 = xor i32 %conv129.3, %conv126.3
  %conv131.3 = trunc i32 %xor130.3 to i8
  store i8 %conv131.3, i8* %c, align 1
  %scevgep22.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %z, i64 0, i64 0, i64 4
  %1103 = load i8, i8* %scevgep22.4, align 1
  %conv126.4 = zext i8 %1103 to i32
  %1104 = load i8, i8* %c, align 1
  %conv129.4 = zext i8 %1104 to i32
  %xor130.4 = xor i32 %conv129.4, %conv126.4
  %conv131.4 = trunc i32 %xor130.4 to i8
  store i8 %conv131.4, i8* %c, align 1
  %scevgep22.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %z, i64 0, i64 0, i64 5
  %1105 = load i8, i8* %scevgep22.5, align 1
  %conv126.5 = zext i8 %1105 to i32
  %1106 = load i8, i8* %c, align 1
  %conv129.5 = zext i8 %1106 to i32
  %xor130.5 = xor i32 %conv129.5, %conv126.5
  %conv131.5 = trunc i32 %xor130.5 to i8
  store i8 %conv131.5, i8* %c, align 1
  %scevgep22.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %z, i64 0, i64 0, i64 6
  %1107 = load i8, i8* %scevgep22.6, align 1
  %conv126.6 = zext i8 %1107 to i32
  %1108 = load i8, i8* %c, align 1
  %conv129.6 = zext i8 %1108 to i32
  %xor130.6 = xor i32 %conv129.6, %conv126.6
  %conv131.6 = trunc i32 %xor130.6 to i8
  store i8 %conv131.6, i8* %c, align 1
  %scevgep22.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %z, i64 0, i64 0, i64 7
  %1109 = load i8, i8* %scevgep22.7, align 1
  %conv126.7 = zext i8 %1109 to i32
  %1110 = load i8, i8* %c, align 1
  %conv129.7 = zext i8 %1110 to i32
  %xor130.7 = xor i32 %conv129.7, %conv126.7
  %conv131.7 = trunc i32 %xor130.7 to i8
  store i8 %conv131.7, i8* %c, align 1
  %scevgep22.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %z, i64 0, i64 0, i64 8
  %1111 = load i8, i8* %scevgep22.8, align 1
  %conv126.8 = zext i8 %1111 to i32
  %1112 = load i8, i8* %c, align 1
  %conv129.8 = zext i8 %1112 to i32
  %xor130.8 = xor i32 %conv129.8, %conv126.8
  %conv131.8 = trunc i32 %xor130.8 to i8
  store i8 %conv131.8, i8* %c, align 1
  %scevgep22.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %z, i64 0, i64 0, i64 9
  %1113 = load i8, i8* %scevgep22.9, align 1
  %conv126.9 = zext i8 %1113 to i32
  %1114 = load i8, i8* %c, align 1
  %conv129.9 = zext i8 %1114 to i32
  %xor130.9 = xor i32 %conv129.9, %conv126.9
  %conv131.9 = trunc i32 %xor130.9 to i8
  store i8 %conv131.9, i8* %c, align 1
  %scevgep22.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %z, i64 0, i64 0, i64 10
  %1115 = load i8, i8* %scevgep22.10, align 1
  %conv126.10 = zext i8 %1115 to i32
  %1116 = load i8, i8* %c, align 1
  %conv129.10 = zext i8 %1116 to i32
  %xor130.10 = xor i32 %conv129.10, %conv126.10
  %conv131.10 = trunc i32 %xor130.10 to i8
  store i8 %conv131.10, i8* %c, align 1
  %scevgep21 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %z, i64 0, i64 1, i64 0
  %1117 = bitcast i8* %scevgep21 to [11 x [11 x i8]]*
  %arrayidx108.1 = getelementptr inbounds i8, i8* %a, i64 1
  %1118 = load i8, i8* %arrayidx108.1, align 1
  %arrayidx110.1 = getelementptr inbounds i8, i8* %b, i64 1
  %1119 = load i8, i8* %arrayidx110.1, align 1
  %call111.1 = call zeroext i8 @mult(i8 zeroext %1118, i8 zeroext %1119)
  %arrayidx113.1 = getelementptr inbounds i8, i8* %c, i64 1
  store i8 %call111.1, i8* %arrayidx113.1, align 1
  %arrayidx128.1 = getelementptr inbounds i8, i8* %c, i64 1
  %scevgep22.178 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1117, i64 0, i64 0, i64 0
  %1120 = load i8, i8* %scevgep22.178, align 1
  %conv126.179 = zext i8 %1120 to i32
  %1121 = load i8, i8* %arrayidx128.1, align 1
  %conv129.180 = zext i8 %1121 to i32
  %xor130.181 = xor i32 %conv129.180, %conv126.179
  %conv131.182 = trunc i32 %xor130.181 to i8
  store i8 %conv131.182, i8* %arrayidx128.1, align 1
  %scevgep22.2.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1117, i64 0, i64 0, i64 2
  %1122 = load i8, i8* %scevgep22.2.1, align 1
  %conv126.2.1 = zext i8 %1122 to i32
  %1123 = load i8, i8* %arrayidx128.1, align 1
  %conv129.2.1 = zext i8 %1123 to i32
  %xor130.2.1 = xor i32 %conv129.2.1, %conv126.2.1
  %conv131.2.1 = trunc i32 %xor130.2.1 to i8
  store i8 %conv131.2.1, i8* %arrayidx128.1, align 1
  %scevgep22.3.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1117, i64 0, i64 0, i64 3
  %1124 = load i8, i8* %scevgep22.3.1, align 1
  %conv126.3.1 = zext i8 %1124 to i32
  %1125 = load i8, i8* %arrayidx128.1, align 1
  %conv129.3.1 = zext i8 %1125 to i32
  %xor130.3.1 = xor i32 %conv129.3.1, %conv126.3.1
  %conv131.3.1 = trunc i32 %xor130.3.1 to i8
  store i8 %conv131.3.1, i8* %arrayidx128.1, align 1
  %scevgep22.4.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1117, i64 0, i64 0, i64 4
  %1126 = load i8, i8* %scevgep22.4.1, align 1
  %conv126.4.1 = zext i8 %1126 to i32
  %1127 = load i8, i8* %arrayidx128.1, align 1
  %conv129.4.1 = zext i8 %1127 to i32
  %xor130.4.1 = xor i32 %conv129.4.1, %conv126.4.1
  %conv131.4.1 = trunc i32 %xor130.4.1 to i8
  store i8 %conv131.4.1, i8* %arrayidx128.1, align 1
  %scevgep22.5.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1117, i64 0, i64 0, i64 5
  %1128 = load i8, i8* %scevgep22.5.1, align 1
  %conv126.5.1 = zext i8 %1128 to i32
  %1129 = load i8, i8* %arrayidx128.1, align 1
  %conv129.5.1 = zext i8 %1129 to i32
  %xor130.5.1 = xor i32 %conv129.5.1, %conv126.5.1
  %conv131.5.1 = trunc i32 %xor130.5.1 to i8
  store i8 %conv131.5.1, i8* %arrayidx128.1, align 1
  %scevgep22.6.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1117, i64 0, i64 0, i64 6
  %1130 = load i8, i8* %scevgep22.6.1, align 1
  %conv126.6.1 = zext i8 %1130 to i32
  %1131 = load i8, i8* %arrayidx128.1, align 1
  %conv129.6.1 = zext i8 %1131 to i32
  %xor130.6.1 = xor i32 %conv129.6.1, %conv126.6.1
  %conv131.6.1 = trunc i32 %xor130.6.1 to i8
  store i8 %conv131.6.1, i8* %arrayidx128.1, align 1
  %scevgep22.7.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1117, i64 0, i64 0, i64 7
  %1132 = load i8, i8* %scevgep22.7.1, align 1
  %conv126.7.1 = zext i8 %1132 to i32
  %1133 = load i8, i8* %arrayidx128.1, align 1
  %conv129.7.1 = zext i8 %1133 to i32
  %xor130.7.1 = xor i32 %conv129.7.1, %conv126.7.1
  %conv131.7.1 = trunc i32 %xor130.7.1 to i8
  store i8 %conv131.7.1, i8* %arrayidx128.1, align 1
  %scevgep22.8.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1117, i64 0, i64 0, i64 8
  %1134 = load i8, i8* %scevgep22.8.1, align 1
  %conv126.8.1 = zext i8 %1134 to i32
  %1135 = load i8, i8* %arrayidx128.1, align 1
  %conv129.8.1 = zext i8 %1135 to i32
  %xor130.8.1 = xor i32 %conv129.8.1, %conv126.8.1
  %conv131.8.1 = trunc i32 %xor130.8.1 to i8
  store i8 %conv131.8.1, i8* %arrayidx128.1, align 1
  %scevgep22.9.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1117, i64 0, i64 0, i64 9
  %1136 = load i8, i8* %scevgep22.9.1, align 1
  %conv126.9.1 = zext i8 %1136 to i32
  %1137 = load i8, i8* %arrayidx128.1, align 1
  %conv129.9.1 = zext i8 %1137 to i32
  %xor130.9.1 = xor i32 %conv129.9.1, %conv126.9.1
  %conv131.9.1 = trunc i32 %xor130.9.1 to i8
  store i8 %conv131.9.1, i8* %arrayidx128.1, align 1
  %scevgep22.10.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1117, i64 0, i64 0, i64 10
  %1138 = load i8, i8* %scevgep22.10.1, align 1
  %conv126.10.1 = zext i8 %1138 to i32
  %1139 = load i8, i8* %arrayidx128.1, align 1
  %conv129.10.1 = zext i8 %1139 to i32
  %xor130.10.1 = xor i32 %conv129.10.1, %conv126.10.1
  %conv131.10.1 = trunc i32 %xor130.10.1 to i8
  store i8 %conv131.10.1, i8* %arrayidx128.1, align 1
  %scevgep21.1 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1117, i64 0, i64 1, i64 0
  %1140 = bitcast i8* %scevgep21.1 to [11 x [11 x i8]]*
  %arrayidx108.2 = getelementptr inbounds i8, i8* %a, i64 2
  %1141 = load i8, i8* %arrayidx108.2, align 1
  %arrayidx110.2 = getelementptr inbounds i8, i8* %b, i64 2
  %1142 = load i8, i8* %arrayidx110.2, align 1
  %call111.2 = call zeroext i8 @mult(i8 zeroext %1141, i8 zeroext %1142)
  %arrayidx113.2 = getelementptr inbounds i8, i8* %c, i64 2
  store i8 %call111.2, i8* %arrayidx113.2, align 1
  %arrayidx128.2 = getelementptr inbounds i8, i8* %c, i64 2
  %scevgep22.288 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1140, i64 0, i64 0, i64 0
  %1143 = load i8, i8* %scevgep22.288, align 1
  %conv126.289 = zext i8 %1143 to i32
  %1144 = load i8, i8* %arrayidx128.2, align 1
  %conv129.290 = zext i8 %1144 to i32
  %xor130.291 = xor i32 %conv129.290, %conv126.289
  %conv131.292 = trunc i32 %xor130.291 to i8
  store i8 %conv131.292, i8* %arrayidx128.2, align 1
  %scevgep22.1.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1140, i64 0, i64 0, i64 1
  %1145 = load i8, i8* %scevgep22.1.2, align 1
  %conv126.1.2 = zext i8 %1145 to i32
  %1146 = load i8, i8* %arrayidx128.2, align 1
  %conv129.1.2 = zext i8 %1146 to i32
  %xor130.1.2 = xor i32 %conv129.1.2, %conv126.1.2
  %conv131.1.2 = trunc i32 %xor130.1.2 to i8
  store i8 %conv131.1.2, i8* %arrayidx128.2, align 1
  %scevgep22.3.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1140, i64 0, i64 0, i64 3
  %1147 = load i8, i8* %scevgep22.3.2, align 1
  %conv126.3.2 = zext i8 %1147 to i32
  %1148 = load i8, i8* %arrayidx128.2, align 1
  %conv129.3.2 = zext i8 %1148 to i32
  %xor130.3.2 = xor i32 %conv129.3.2, %conv126.3.2
  %conv131.3.2 = trunc i32 %xor130.3.2 to i8
  store i8 %conv131.3.2, i8* %arrayidx128.2, align 1
  %scevgep22.4.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1140, i64 0, i64 0, i64 4
  %1149 = load i8, i8* %scevgep22.4.2, align 1
  %conv126.4.2 = zext i8 %1149 to i32
  %1150 = load i8, i8* %arrayidx128.2, align 1
  %conv129.4.2 = zext i8 %1150 to i32
  %xor130.4.2 = xor i32 %conv129.4.2, %conv126.4.2
  %conv131.4.2 = trunc i32 %xor130.4.2 to i8
  store i8 %conv131.4.2, i8* %arrayidx128.2, align 1
  %scevgep22.5.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1140, i64 0, i64 0, i64 5
  %1151 = load i8, i8* %scevgep22.5.2, align 1
  %conv126.5.2 = zext i8 %1151 to i32
  %1152 = load i8, i8* %arrayidx128.2, align 1
  %conv129.5.2 = zext i8 %1152 to i32
  %xor130.5.2 = xor i32 %conv129.5.2, %conv126.5.2
  %conv131.5.2 = trunc i32 %xor130.5.2 to i8
  store i8 %conv131.5.2, i8* %arrayidx128.2, align 1
  %scevgep22.6.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1140, i64 0, i64 0, i64 6
  %1153 = load i8, i8* %scevgep22.6.2, align 1
  %conv126.6.2 = zext i8 %1153 to i32
  %1154 = load i8, i8* %arrayidx128.2, align 1
  %conv129.6.2 = zext i8 %1154 to i32
  %xor130.6.2 = xor i32 %conv129.6.2, %conv126.6.2
  %conv131.6.2 = trunc i32 %xor130.6.2 to i8
  store i8 %conv131.6.2, i8* %arrayidx128.2, align 1
  %scevgep22.7.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1140, i64 0, i64 0, i64 7
  %1155 = load i8, i8* %scevgep22.7.2, align 1
  %conv126.7.2 = zext i8 %1155 to i32
  %1156 = load i8, i8* %arrayidx128.2, align 1
  %conv129.7.2 = zext i8 %1156 to i32
  %xor130.7.2 = xor i32 %conv129.7.2, %conv126.7.2
  %conv131.7.2 = trunc i32 %xor130.7.2 to i8
  store i8 %conv131.7.2, i8* %arrayidx128.2, align 1
  %scevgep22.8.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1140, i64 0, i64 0, i64 8
  %1157 = load i8, i8* %scevgep22.8.2, align 1
  %conv126.8.2 = zext i8 %1157 to i32
  %1158 = load i8, i8* %arrayidx128.2, align 1
  %conv129.8.2 = zext i8 %1158 to i32
  %xor130.8.2 = xor i32 %conv129.8.2, %conv126.8.2
  %conv131.8.2 = trunc i32 %xor130.8.2 to i8
  store i8 %conv131.8.2, i8* %arrayidx128.2, align 1
  %scevgep22.9.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1140, i64 0, i64 0, i64 9
  %1159 = load i8, i8* %scevgep22.9.2, align 1
  %conv126.9.2 = zext i8 %1159 to i32
  %1160 = load i8, i8* %arrayidx128.2, align 1
  %conv129.9.2 = zext i8 %1160 to i32
  %xor130.9.2 = xor i32 %conv129.9.2, %conv126.9.2
  %conv131.9.2 = trunc i32 %xor130.9.2 to i8
  store i8 %conv131.9.2, i8* %arrayidx128.2, align 1
  %scevgep22.10.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1140, i64 0, i64 0, i64 10
  %1161 = load i8, i8* %scevgep22.10.2, align 1
  %conv126.10.2 = zext i8 %1161 to i32
  %1162 = load i8, i8* %arrayidx128.2, align 1
  %conv129.10.2 = zext i8 %1162 to i32
  %xor130.10.2 = xor i32 %conv129.10.2, %conv126.10.2
  %conv131.10.2 = trunc i32 %xor130.10.2 to i8
  store i8 %conv131.10.2, i8* %arrayidx128.2, align 1
  %scevgep21.2 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1140, i64 0, i64 1, i64 0
  %1163 = bitcast i8* %scevgep21.2 to [11 x [11 x i8]]*
  %arrayidx108.3 = getelementptr inbounds i8, i8* %a, i64 3
  %1164 = load i8, i8* %arrayidx108.3, align 1
  %arrayidx110.3 = getelementptr inbounds i8, i8* %b, i64 3
  %1165 = load i8, i8* %arrayidx110.3, align 1
  %call111.3 = call zeroext i8 @mult(i8 zeroext %1164, i8 zeroext %1165)
  %arrayidx113.3 = getelementptr inbounds i8, i8* %c, i64 3
  store i8 %call111.3, i8* %arrayidx113.3, align 1
  %arrayidx128.3 = getelementptr inbounds i8, i8* %c, i64 3
  %scevgep22.398 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1163, i64 0, i64 0, i64 0
  %1166 = load i8, i8* %scevgep22.398, align 1
  %conv126.399 = zext i8 %1166 to i32
  %1167 = load i8, i8* %arrayidx128.3, align 1
  %conv129.3100 = zext i8 %1167 to i32
  %xor130.3101 = xor i32 %conv129.3100, %conv126.399
  %conv131.3102 = trunc i32 %xor130.3101 to i8
  store i8 %conv131.3102, i8* %arrayidx128.3, align 1
  %scevgep22.1.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1163, i64 0, i64 0, i64 1
  %1168 = load i8, i8* %scevgep22.1.3, align 1
  %conv126.1.3 = zext i8 %1168 to i32
  %1169 = load i8, i8* %arrayidx128.3, align 1
  %conv129.1.3 = zext i8 %1169 to i32
  %xor130.1.3 = xor i32 %conv129.1.3, %conv126.1.3
  %conv131.1.3 = trunc i32 %xor130.1.3 to i8
  store i8 %conv131.1.3, i8* %arrayidx128.3, align 1
  %scevgep22.2.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1163, i64 0, i64 0, i64 2
  %1170 = load i8, i8* %scevgep22.2.3, align 1
  %conv126.2.3 = zext i8 %1170 to i32
  %1171 = load i8, i8* %arrayidx128.3, align 1
  %conv129.2.3 = zext i8 %1171 to i32
  %xor130.2.3 = xor i32 %conv129.2.3, %conv126.2.3
  %conv131.2.3 = trunc i32 %xor130.2.3 to i8
  store i8 %conv131.2.3, i8* %arrayidx128.3, align 1
  %scevgep22.4.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1163, i64 0, i64 0, i64 4
  %1172 = load i8, i8* %scevgep22.4.3, align 1
  %conv126.4.3 = zext i8 %1172 to i32
  %1173 = load i8, i8* %arrayidx128.3, align 1
  %conv129.4.3 = zext i8 %1173 to i32
  %xor130.4.3 = xor i32 %conv129.4.3, %conv126.4.3
  %conv131.4.3 = trunc i32 %xor130.4.3 to i8
  store i8 %conv131.4.3, i8* %arrayidx128.3, align 1
  %scevgep22.5.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1163, i64 0, i64 0, i64 5
  %1174 = load i8, i8* %scevgep22.5.3, align 1
  %conv126.5.3 = zext i8 %1174 to i32
  %1175 = load i8, i8* %arrayidx128.3, align 1
  %conv129.5.3 = zext i8 %1175 to i32
  %xor130.5.3 = xor i32 %conv129.5.3, %conv126.5.3
  %conv131.5.3 = trunc i32 %xor130.5.3 to i8
  store i8 %conv131.5.3, i8* %arrayidx128.3, align 1
  %scevgep22.6.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1163, i64 0, i64 0, i64 6
  %1176 = load i8, i8* %scevgep22.6.3, align 1
  %conv126.6.3 = zext i8 %1176 to i32
  %1177 = load i8, i8* %arrayidx128.3, align 1
  %conv129.6.3 = zext i8 %1177 to i32
  %xor130.6.3 = xor i32 %conv129.6.3, %conv126.6.3
  %conv131.6.3 = trunc i32 %xor130.6.3 to i8
  store i8 %conv131.6.3, i8* %arrayidx128.3, align 1
  %scevgep22.7.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1163, i64 0, i64 0, i64 7
  %1178 = load i8, i8* %scevgep22.7.3, align 1
  %conv126.7.3 = zext i8 %1178 to i32
  %1179 = load i8, i8* %arrayidx128.3, align 1
  %conv129.7.3 = zext i8 %1179 to i32
  %xor130.7.3 = xor i32 %conv129.7.3, %conv126.7.3
  %conv131.7.3 = trunc i32 %xor130.7.3 to i8
  store i8 %conv131.7.3, i8* %arrayidx128.3, align 1
  %scevgep22.8.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1163, i64 0, i64 0, i64 8
  %1180 = load i8, i8* %scevgep22.8.3, align 1
  %conv126.8.3 = zext i8 %1180 to i32
  %1181 = load i8, i8* %arrayidx128.3, align 1
  %conv129.8.3 = zext i8 %1181 to i32
  %xor130.8.3 = xor i32 %conv129.8.3, %conv126.8.3
  %conv131.8.3 = trunc i32 %xor130.8.3 to i8
  store i8 %conv131.8.3, i8* %arrayidx128.3, align 1
  %scevgep22.9.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1163, i64 0, i64 0, i64 9
  %1182 = load i8, i8* %scevgep22.9.3, align 1
  %conv126.9.3 = zext i8 %1182 to i32
  %1183 = load i8, i8* %arrayidx128.3, align 1
  %conv129.9.3 = zext i8 %1183 to i32
  %xor130.9.3 = xor i32 %conv129.9.3, %conv126.9.3
  %conv131.9.3 = trunc i32 %xor130.9.3 to i8
  store i8 %conv131.9.3, i8* %arrayidx128.3, align 1
  %scevgep22.10.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1163, i64 0, i64 0, i64 10
  %1184 = load i8, i8* %scevgep22.10.3, align 1
  %conv126.10.3 = zext i8 %1184 to i32
  %1185 = load i8, i8* %arrayidx128.3, align 1
  %conv129.10.3 = zext i8 %1185 to i32
  %xor130.10.3 = xor i32 %conv129.10.3, %conv126.10.3
  %conv131.10.3 = trunc i32 %xor130.10.3 to i8
  store i8 %conv131.10.3, i8* %arrayidx128.3, align 1
  %scevgep21.3 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1163, i64 0, i64 1, i64 0
  %1186 = bitcast i8* %scevgep21.3 to [11 x [11 x i8]]*
  %arrayidx108.4 = getelementptr inbounds i8, i8* %a, i64 4
  %1187 = load i8, i8* %arrayidx108.4, align 1
  %arrayidx110.4 = getelementptr inbounds i8, i8* %b, i64 4
  %1188 = load i8, i8* %arrayidx110.4, align 1
  %call111.4 = call zeroext i8 @mult(i8 zeroext %1187, i8 zeroext %1188)
  %arrayidx113.4 = getelementptr inbounds i8, i8* %c, i64 4
  store i8 %call111.4, i8* %arrayidx113.4, align 1
  %arrayidx128.4 = getelementptr inbounds i8, i8* %c, i64 4
  %scevgep22.4108 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1186, i64 0, i64 0, i64 0
  %1189 = load i8, i8* %scevgep22.4108, align 1
  %conv126.4109 = zext i8 %1189 to i32
  %1190 = load i8, i8* %arrayidx128.4, align 1
  %conv129.4110 = zext i8 %1190 to i32
  %xor130.4111 = xor i32 %conv129.4110, %conv126.4109
  %conv131.4112 = trunc i32 %xor130.4111 to i8
  store i8 %conv131.4112, i8* %arrayidx128.4, align 1
  %scevgep22.1.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1186, i64 0, i64 0, i64 1
  %1191 = load i8, i8* %scevgep22.1.4, align 1
  %conv126.1.4 = zext i8 %1191 to i32
  %1192 = load i8, i8* %arrayidx128.4, align 1
  %conv129.1.4 = zext i8 %1192 to i32
  %xor130.1.4 = xor i32 %conv129.1.4, %conv126.1.4
  %conv131.1.4 = trunc i32 %xor130.1.4 to i8
  store i8 %conv131.1.4, i8* %arrayidx128.4, align 1
  %scevgep22.2.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1186, i64 0, i64 0, i64 2
  %1193 = load i8, i8* %scevgep22.2.4, align 1
  %conv126.2.4 = zext i8 %1193 to i32
  %1194 = load i8, i8* %arrayidx128.4, align 1
  %conv129.2.4 = zext i8 %1194 to i32
  %xor130.2.4 = xor i32 %conv129.2.4, %conv126.2.4
  %conv131.2.4 = trunc i32 %xor130.2.4 to i8
  store i8 %conv131.2.4, i8* %arrayidx128.4, align 1
  %scevgep22.3.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1186, i64 0, i64 0, i64 3
  %1195 = load i8, i8* %scevgep22.3.4, align 1
  %conv126.3.4 = zext i8 %1195 to i32
  %1196 = load i8, i8* %arrayidx128.4, align 1
  %conv129.3.4 = zext i8 %1196 to i32
  %xor130.3.4 = xor i32 %conv129.3.4, %conv126.3.4
  %conv131.3.4 = trunc i32 %xor130.3.4 to i8
  store i8 %conv131.3.4, i8* %arrayidx128.4, align 1
  %scevgep22.5.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1186, i64 0, i64 0, i64 5
  %1197 = load i8, i8* %scevgep22.5.4, align 1
  %conv126.5.4 = zext i8 %1197 to i32
  %1198 = load i8, i8* %arrayidx128.4, align 1
  %conv129.5.4 = zext i8 %1198 to i32
  %xor130.5.4 = xor i32 %conv129.5.4, %conv126.5.4
  %conv131.5.4 = trunc i32 %xor130.5.4 to i8
  store i8 %conv131.5.4, i8* %arrayidx128.4, align 1
  %scevgep22.6.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1186, i64 0, i64 0, i64 6
  %1199 = load i8, i8* %scevgep22.6.4, align 1
  %conv126.6.4 = zext i8 %1199 to i32
  %1200 = load i8, i8* %arrayidx128.4, align 1
  %conv129.6.4 = zext i8 %1200 to i32
  %xor130.6.4 = xor i32 %conv129.6.4, %conv126.6.4
  %conv131.6.4 = trunc i32 %xor130.6.4 to i8
  store i8 %conv131.6.4, i8* %arrayidx128.4, align 1
  %scevgep22.7.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1186, i64 0, i64 0, i64 7
  %1201 = load i8, i8* %scevgep22.7.4, align 1
  %conv126.7.4 = zext i8 %1201 to i32
  %1202 = load i8, i8* %arrayidx128.4, align 1
  %conv129.7.4 = zext i8 %1202 to i32
  %xor130.7.4 = xor i32 %conv129.7.4, %conv126.7.4
  %conv131.7.4 = trunc i32 %xor130.7.4 to i8
  store i8 %conv131.7.4, i8* %arrayidx128.4, align 1
  %scevgep22.8.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1186, i64 0, i64 0, i64 8
  %1203 = load i8, i8* %scevgep22.8.4, align 1
  %conv126.8.4 = zext i8 %1203 to i32
  %1204 = load i8, i8* %arrayidx128.4, align 1
  %conv129.8.4 = zext i8 %1204 to i32
  %xor130.8.4 = xor i32 %conv129.8.4, %conv126.8.4
  %conv131.8.4 = trunc i32 %xor130.8.4 to i8
  store i8 %conv131.8.4, i8* %arrayidx128.4, align 1
  %scevgep22.9.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1186, i64 0, i64 0, i64 9
  %1205 = load i8, i8* %scevgep22.9.4, align 1
  %conv126.9.4 = zext i8 %1205 to i32
  %1206 = load i8, i8* %arrayidx128.4, align 1
  %conv129.9.4 = zext i8 %1206 to i32
  %xor130.9.4 = xor i32 %conv129.9.4, %conv126.9.4
  %conv131.9.4 = trunc i32 %xor130.9.4 to i8
  store i8 %conv131.9.4, i8* %arrayidx128.4, align 1
  %scevgep22.10.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1186, i64 0, i64 0, i64 10
  %1207 = load i8, i8* %scevgep22.10.4, align 1
  %conv126.10.4 = zext i8 %1207 to i32
  %1208 = load i8, i8* %arrayidx128.4, align 1
  %conv129.10.4 = zext i8 %1208 to i32
  %xor130.10.4 = xor i32 %conv129.10.4, %conv126.10.4
  %conv131.10.4 = trunc i32 %xor130.10.4 to i8
  store i8 %conv131.10.4, i8* %arrayidx128.4, align 1
  %scevgep21.4 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1186, i64 0, i64 1, i64 0
  %1209 = bitcast i8* %scevgep21.4 to [11 x [11 x i8]]*
  %arrayidx108.5 = getelementptr inbounds i8, i8* %a, i64 5
  %1210 = load i8, i8* %arrayidx108.5, align 1
  %arrayidx110.5 = getelementptr inbounds i8, i8* %b, i64 5
  %1211 = load i8, i8* %arrayidx110.5, align 1
  %call111.5 = call zeroext i8 @mult(i8 zeroext %1210, i8 zeroext %1211)
  %arrayidx113.5 = getelementptr inbounds i8, i8* %c, i64 5
  store i8 %call111.5, i8* %arrayidx113.5, align 1
  %arrayidx128.5 = getelementptr inbounds i8, i8* %c, i64 5
  %scevgep22.5118 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1209, i64 0, i64 0, i64 0
  %1212 = load i8, i8* %scevgep22.5118, align 1
  %conv126.5119 = zext i8 %1212 to i32
  %1213 = load i8, i8* %arrayidx128.5, align 1
  %conv129.5120 = zext i8 %1213 to i32
  %xor130.5121 = xor i32 %conv129.5120, %conv126.5119
  %conv131.5122 = trunc i32 %xor130.5121 to i8
  store i8 %conv131.5122, i8* %arrayidx128.5, align 1
  %scevgep22.1.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1209, i64 0, i64 0, i64 1
  %1214 = load i8, i8* %scevgep22.1.5, align 1
  %conv126.1.5 = zext i8 %1214 to i32
  %1215 = load i8, i8* %arrayidx128.5, align 1
  %conv129.1.5 = zext i8 %1215 to i32
  %xor130.1.5 = xor i32 %conv129.1.5, %conv126.1.5
  %conv131.1.5 = trunc i32 %xor130.1.5 to i8
  store i8 %conv131.1.5, i8* %arrayidx128.5, align 1
  %scevgep22.2.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1209, i64 0, i64 0, i64 2
  %1216 = load i8, i8* %scevgep22.2.5, align 1
  %conv126.2.5 = zext i8 %1216 to i32
  %1217 = load i8, i8* %arrayidx128.5, align 1
  %conv129.2.5 = zext i8 %1217 to i32
  %xor130.2.5 = xor i32 %conv129.2.5, %conv126.2.5
  %conv131.2.5 = trunc i32 %xor130.2.5 to i8
  store i8 %conv131.2.5, i8* %arrayidx128.5, align 1
  %scevgep22.3.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1209, i64 0, i64 0, i64 3
  %1218 = load i8, i8* %scevgep22.3.5, align 1
  %conv126.3.5 = zext i8 %1218 to i32
  %1219 = load i8, i8* %arrayidx128.5, align 1
  %conv129.3.5 = zext i8 %1219 to i32
  %xor130.3.5 = xor i32 %conv129.3.5, %conv126.3.5
  %conv131.3.5 = trunc i32 %xor130.3.5 to i8
  store i8 %conv131.3.5, i8* %arrayidx128.5, align 1
  %scevgep22.4.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1209, i64 0, i64 0, i64 4
  %1220 = load i8, i8* %scevgep22.4.5, align 1
  %conv126.4.5 = zext i8 %1220 to i32
  %1221 = load i8, i8* %arrayidx128.5, align 1
  %conv129.4.5 = zext i8 %1221 to i32
  %xor130.4.5 = xor i32 %conv129.4.5, %conv126.4.5
  %conv131.4.5 = trunc i32 %xor130.4.5 to i8
  store i8 %conv131.4.5, i8* %arrayidx128.5, align 1
  %scevgep22.6.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1209, i64 0, i64 0, i64 6
  %1222 = load i8, i8* %scevgep22.6.5, align 1
  %conv126.6.5 = zext i8 %1222 to i32
  %1223 = load i8, i8* %arrayidx128.5, align 1
  %conv129.6.5 = zext i8 %1223 to i32
  %xor130.6.5 = xor i32 %conv129.6.5, %conv126.6.5
  %conv131.6.5 = trunc i32 %xor130.6.5 to i8
  store i8 %conv131.6.5, i8* %arrayidx128.5, align 1
  %scevgep22.7.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1209, i64 0, i64 0, i64 7
  %1224 = load i8, i8* %scevgep22.7.5, align 1
  %conv126.7.5 = zext i8 %1224 to i32
  %1225 = load i8, i8* %arrayidx128.5, align 1
  %conv129.7.5 = zext i8 %1225 to i32
  %xor130.7.5 = xor i32 %conv129.7.5, %conv126.7.5
  %conv131.7.5 = trunc i32 %xor130.7.5 to i8
  store i8 %conv131.7.5, i8* %arrayidx128.5, align 1
  %scevgep22.8.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1209, i64 0, i64 0, i64 8
  %1226 = load i8, i8* %scevgep22.8.5, align 1
  %conv126.8.5 = zext i8 %1226 to i32
  %1227 = load i8, i8* %arrayidx128.5, align 1
  %conv129.8.5 = zext i8 %1227 to i32
  %xor130.8.5 = xor i32 %conv129.8.5, %conv126.8.5
  %conv131.8.5 = trunc i32 %xor130.8.5 to i8
  store i8 %conv131.8.5, i8* %arrayidx128.5, align 1
  %scevgep22.9.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1209, i64 0, i64 0, i64 9
  %1228 = load i8, i8* %scevgep22.9.5, align 1
  %conv126.9.5 = zext i8 %1228 to i32
  %1229 = load i8, i8* %arrayidx128.5, align 1
  %conv129.9.5 = zext i8 %1229 to i32
  %xor130.9.5 = xor i32 %conv129.9.5, %conv126.9.5
  %conv131.9.5 = trunc i32 %xor130.9.5 to i8
  store i8 %conv131.9.5, i8* %arrayidx128.5, align 1
  %scevgep22.10.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1209, i64 0, i64 0, i64 10
  %1230 = load i8, i8* %scevgep22.10.5, align 1
  %conv126.10.5 = zext i8 %1230 to i32
  %1231 = load i8, i8* %arrayidx128.5, align 1
  %conv129.10.5 = zext i8 %1231 to i32
  %xor130.10.5 = xor i32 %conv129.10.5, %conv126.10.5
  %conv131.10.5 = trunc i32 %xor130.10.5 to i8
  store i8 %conv131.10.5, i8* %arrayidx128.5, align 1
  %scevgep21.5 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1209, i64 0, i64 1, i64 0
  %1232 = bitcast i8* %scevgep21.5 to [11 x [11 x i8]]*
  %arrayidx108.6 = getelementptr inbounds i8, i8* %a, i64 6
  %1233 = load i8, i8* %arrayidx108.6, align 1
  %arrayidx110.6 = getelementptr inbounds i8, i8* %b, i64 6
  %1234 = load i8, i8* %arrayidx110.6, align 1
  %call111.6 = call zeroext i8 @mult(i8 zeroext %1233, i8 zeroext %1234)
  %arrayidx113.6 = getelementptr inbounds i8, i8* %c, i64 6
  store i8 %call111.6, i8* %arrayidx113.6, align 1
  %arrayidx128.6 = getelementptr inbounds i8, i8* %c, i64 6
  %scevgep22.6128 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1232, i64 0, i64 0, i64 0
  %1235 = load i8, i8* %scevgep22.6128, align 1
  %conv126.6129 = zext i8 %1235 to i32
  %1236 = load i8, i8* %arrayidx128.6, align 1
  %conv129.6130 = zext i8 %1236 to i32
  %xor130.6131 = xor i32 %conv129.6130, %conv126.6129
  %conv131.6132 = trunc i32 %xor130.6131 to i8
  store i8 %conv131.6132, i8* %arrayidx128.6, align 1
  %scevgep22.1.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1232, i64 0, i64 0, i64 1
  %1237 = load i8, i8* %scevgep22.1.6, align 1
  %conv126.1.6 = zext i8 %1237 to i32
  %1238 = load i8, i8* %arrayidx128.6, align 1
  %conv129.1.6 = zext i8 %1238 to i32
  %xor130.1.6 = xor i32 %conv129.1.6, %conv126.1.6
  %conv131.1.6 = trunc i32 %xor130.1.6 to i8
  store i8 %conv131.1.6, i8* %arrayidx128.6, align 1
  %scevgep22.2.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1232, i64 0, i64 0, i64 2
  %1239 = load i8, i8* %scevgep22.2.6, align 1
  %conv126.2.6 = zext i8 %1239 to i32
  %1240 = load i8, i8* %arrayidx128.6, align 1
  %conv129.2.6 = zext i8 %1240 to i32
  %xor130.2.6 = xor i32 %conv129.2.6, %conv126.2.6
  %conv131.2.6 = trunc i32 %xor130.2.6 to i8
  store i8 %conv131.2.6, i8* %arrayidx128.6, align 1
  %scevgep22.3.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1232, i64 0, i64 0, i64 3
  %1241 = load i8, i8* %scevgep22.3.6, align 1
  %conv126.3.6 = zext i8 %1241 to i32
  %1242 = load i8, i8* %arrayidx128.6, align 1
  %conv129.3.6 = zext i8 %1242 to i32
  %xor130.3.6 = xor i32 %conv129.3.6, %conv126.3.6
  %conv131.3.6 = trunc i32 %xor130.3.6 to i8
  store i8 %conv131.3.6, i8* %arrayidx128.6, align 1
  %scevgep22.4.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1232, i64 0, i64 0, i64 4
  %1243 = load i8, i8* %scevgep22.4.6, align 1
  %conv126.4.6 = zext i8 %1243 to i32
  %1244 = load i8, i8* %arrayidx128.6, align 1
  %conv129.4.6 = zext i8 %1244 to i32
  %xor130.4.6 = xor i32 %conv129.4.6, %conv126.4.6
  %conv131.4.6 = trunc i32 %xor130.4.6 to i8
  store i8 %conv131.4.6, i8* %arrayidx128.6, align 1
  %scevgep22.5.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1232, i64 0, i64 0, i64 5
  %1245 = load i8, i8* %scevgep22.5.6, align 1
  %conv126.5.6 = zext i8 %1245 to i32
  %1246 = load i8, i8* %arrayidx128.6, align 1
  %conv129.5.6 = zext i8 %1246 to i32
  %xor130.5.6 = xor i32 %conv129.5.6, %conv126.5.6
  %conv131.5.6 = trunc i32 %xor130.5.6 to i8
  store i8 %conv131.5.6, i8* %arrayidx128.6, align 1
  %scevgep22.7.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1232, i64 0, i64 0, i64 7
  %1247 = load i8, i8* %scevgep22.7.6, align 1
  %conv126.7.6 = zext i8 %1247 to i32
  %1248 = load i8, i8* %arrayidx128.6, align 1
  %conv129.7.6 = zext i8 %1248 to i32
  %xor130.7.6 = xor i32 %conv129.7.6, %conv126.7.6
  %conv131.7.6 = trunc i32 %xor130.7.6 to i8
  store i8 %conv131.7.6, i8* %arrayidx128.6, align 1
  %scevgep22.8.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1232, i64 0, i64 0, i64 8
  %1249 = load i8, i8* %scevgep22.8.6, align 1
  %conv126.8.6 = zext i8 %1249 to i32
  %1250 = load i8, i8* %arrayidx128.6, align 1
  %conv129.8.6 = zext i8 %1250 to i32
  %xor130.8.6 = xor i32 %conv129.8.6, %conv126.8.6
  %conv131.8.6 = trunc i32 %xor130.8.6 to i8
  store i8 %conv131.8.6, i8* %arrayidx128.6, align 1
  %scevgep22.9.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1232, i64 0, i64 0, i64 9
  %1251 = load i8, i8* %scevgep22.9.6, align 1
  %conv126.9.6 = zext i8 %1251 to i32
  %1252 = load i8, i8* %arrayidx128.6, align 1
  %conv129.9.6 = zext i8 %1252 to i32
  %xor130.9.6 = xor i32 %conv129.9.6, %conv126.9.6
  %conv131.9.6 = trunc i32 %xor130.9.6 to i8
  store i8 %conv131.9.6, i8* %arrayidx128.6, align 1
  %scevgep22.10.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1232, i64 0, i64 0, i64 10
  %1253 = load i8, i8* %scevgep22.10.6, align 1
  %conv126.10.6 = zext i8 %1253 to i32
  %1254 = load i8, i8* %arrayidx128.6, align 1
  %conv129.10.6 = zext i8 %1254 to i32
  %xor130.10.6 = xor i32 %conv129.10.6, %conv126.10.6
  %conv131.10.6 = trunc i32 %xor130.10.6 to i8
  store i8 %conv131.10.6, i8* %arrayidx128.6, align 1
  %scevgep21.6 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1232, i64 0, i64 1, i64 0
  %1255 = bitcast i8* %scevgep21.6 to [11 x [11 x i8]]*
  %arrayidx108.7 = getelementptr inbounds i8, i8* %a, i64 7
  %1256 = load i8, i8* %arrayidx108.7, align 1
  %arrayidx110.7 = getelementptr inbounds i8, i8* %b, i64 7
  %1257 = load i8, i8* %arrayidx110.7, align 1
  %call111.7 = call zeroext i8 @mult(i8 zeroext %1256, i8 zeroext %1257)
  %arrayidx113.7 = getelementptr inbounds i8, i8* %c, i64 7
  store i8 %call111.7, i8* %arrayidx113.7, align 1
  %arrayidx128.7 = getelementptr inbounds i8, i8* %c, i64 7
  %scevgep22.7138 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1255, i64 0, i64 0, i64 0
  %1258 = load i8, i8* %scevgep22.7138, align 1
  %conv126.7139 = zext i8 %1258 to i32
  %1259 = load i8, i8* %arrayidx128.7, align 1
  %conv129.7140 = zext i8 %1259 to i32
  %xor130.7141 = xor i32 %conv129.7140, %conv126.7139
  %conv131.7142 = trunc i32 %xor130.7141 to i8
  store i8 %conv131.7142, i8* %arrayidx128.7, align 1
  %scevgep22.1.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1255, i64 0, i64 0, i64 1
  %1260 = load i8, i8* %scevgep22.1.7, align 1
  %conv126.1.7 = zext i8 %1260 to i32
  %1261 = load i8, i8* %arrayidx128.7, align 1
  %conv129.1.7 = zext i8 %1261 to i32
  %xor130.1.7 = xor i32 %conv129.1.7, %conv126.1.7
  %conv131.1.7 = trunc i32 %xor130.1.7 to i8
  store i8 %conv131.1.7, i8* %arrayidx128.7, align 1
  %scevgep22.2.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1255, i64 0, i64 0, i64 2
  %1262 = load i8, i8* %scevgep22.2.7, align 1
  %conv126.2.7 = zext i8 %1262 to i32
  %1263 = load i8, i8* %arrayidx128.7, align 1
  %conv129.2.7 = zext i8 %1263 to i32
  %xor130.2.7 = xor i32 %conv129.2.7, %conv126.2.7
  %conv131.2.7 = trunc i32 %xor130.2.7 to i8
  store i8 %conv131.2.7, i8* %arrayidx128.7, align 1
  %scevgep22.3.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1255, i64 0, i64 0, i64 3
  %1264 = load i8, i8* %scevgep22.3.7, align 1
  %conv126.3.7 = zext i8 %1264 to i32
  %1265 = load i8, i8* %arrayidx128.7, align 1
  %conv129.3.7 = zext i8 %1265 to i32
  %xor130.3.7 = xor i32 %conv129.3.7, %conv126.3.7
  %conv131.3.7 = trunc i32 %xor130.3.7 to i8
  store i8 %conv131.3.7, i8* %arrayidx128.7, align 1
  %scevgep22.4.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1255, i64 0, i64 0, i64 4
  %1266 = load i8, i8* %scevgep22.4.7, align 1
  %conv126.4.7 = zext i8 %1266 to i32
  %1267 = load i8, i8* %arrayidx128.7, align 1
  %conv129.4.7 = zext i8 %1267 to i32
  %xor130.4.7 = xor i32 %conv129.4.7, %conv126.4.7
  %conv131.4.7 = trunc i32 %xor130.4.7 to i8
  store i8 %conv131.4.7, i8* %arrayidx128.7, align 1
  %scevgep22.5.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1255, i64 0, i64 0, i64 5
  %1268 = load i8, i8* %scevgep22.5.7, align 1
  %conv126.5.7 = zext i8 %1268 to i32
  %1269 = load i8, i8* %arrayidx128.7, align 1
  %conv129.5.7 = zext i8 %1269 to i32
  %xor130.5.7 = xor i32 %conv129.5.7, %conv126.5.7
  %conv131.5.7 = trunc i32 %xor130.5.7 to i8
  store i8 %conv131.5.7, i8* %arrayidx128.7, align 1
  %scevgep22.6.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1255, i64 0, i64 0, i64 6
  %1270 = load i8, i8* %scevgep22.6.7, align 1
  %conv126.6.7 = zext i8 %1270 to i32
  %1271 = load i8, i8* %arrayidx128.7, align 1
  %conv129.6.7 = zext i8 %1271 to i32
  %xor130.6.7 = xor i32 %conv129.6.7, %conv126.6.7
  %conv131.6.7 = trunc i32 %xor130.6.7 to i8
  store i8 %conv131.6.7, i8* %arrayidx128.7, align 1
  %scevgep22.8.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1255, i64 0, i64 0, i64 8
  %1272 = load i8, i8* %scevgep22.8.7, align 1
  %conv126.8.7 = zext i8 %1272 to i32
  %1273 = load i8, i8* %arrayidx128.7, align 1
  %conv129.8.7 = zext i8 %1273 to i32
  %xor130.8.7 = xor i32 %conv129.8.7, %conv126.8.7
  %conv131.8.7 = trunc i32 %xor130.8.7 to i8
  store i8 %conv131.8.7, i8* %arrayidx128.7, align 1
  %scevgep22.9.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1255, i64 0, i64 0, i64 9
  %1274 = load i8, i8* %scevgep22.9.7, align 1
  %conv126.9.7 = zext i8 %1274 to i32
  %1275 = load i8, i8* %arrayidx128.7, align 1
  %conv129.9.7 = zext i8 %1275 to i32
  %xor130.9.7 = xor i32 %conv129.9.7, %conv126.9.7
  %conv131.9.7 = trunc i32 %xor130.9.7 to i8
  store i8 %conv131.9.7, i8* %arrayidx128.7, align 1
  %scevgep22.10.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1255, i64 0, i64 0, i64 10
  %1276 = load i8, i8* %scevgep22.10.7, align 1
  %conv126.10.7 = zext i8 %1276 to i32
  %1277 = load i8, i8* %arrayidx128.7, align 1
  %conv129.10.7 = zext i8 %1277 to i32
  %xor130.10.7 = xor i32 %conv129.10.7, %conv126.10.7
  %conv131.10.7 = trunc i32 %xor130.10.7 to i8
  store i8 %conv131.10.7, i8* %arrayidx128.7, align 1
  %scevgep21.7 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1255, i64 0, i64 1, i64 0
  %1278 = bitcast i8* %scevgep21.7 to [11 x [11 x i8]]*
  %arrayidx108.8 = getelementptr inbounds i8, i8* %a, i64 8
  %1279 = load i8, i8* %arrayidx108.8, align 1
  %arrayidx110.8 = getelementptr inbounds i8, i8* %b, i64 8
  %1280 = load i8, i8* %arrayidx110.8, align 1
  %call111.8 = call zeroext i8 @mult(i8 zeroext %1279, i8 zeroext %1280)
  %arrayidx113.8 = getelementptr inbounds i8, i8* %c, i64 8
  store i8 %call111.8, i8* %arrayidx113.8, align 1
  %arrayidx128.8 = getelementptr inbounds i8, i8* %c, i64 8
  %scevgep22.8148 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1278, i64 0, i64 0, i64 0
  %1281 = load i8, i8* %scevgep22.8148, align 1
  %conv126.8149 = zext i8 %1281 to i32
  %1282 = load i8, i8* %arrayidx128.8, align 1
  %conv129.8150 = zext i8 %1282 to i32
  %xor130.8151 = xor i32 %conv129.8150, %conv126.8149
  %conv131.8152 = trunc i32 %xor130.8151 to i8
  store i8 %conv131.8152, i8* %arrayidx128.8, align 1
  %scevgep22.1.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1278, i64 0, i64 0, i64 1
  %1283 = load i8, i8* %scevgep22.1.8, align 1
  %conv126.1.8 = zext i8 %1283 to i32
  %1284 = load i8, i8* %arrayidx128.8, align 1
  %conv129.1.8 = zext i8 %1284 to i32
  %xor130.1.8 = xor i32 %conv129.1.8, %conv126.1.8
  %conv131.1.8 = trunc i32 %xor130.1.8 to i8
  store i8 %conv131.1.8, i8* %arrayidx128.8, align 1
  %scevgep22.2.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1278, i64 0, i64 0, i64 2
  %1285 = load i8, i8* %scevgep22.2.8, align 1
  %conv126.2.8 = zext i8 %1285 to i32
  %1286 = load i8, i8* %arrayidx128.8, align 1
  %conv129.2.8 = zext i8 %1286 to i32
  %xor130.2.8 = xor i32 %conv129.2.8, %conv126.2.8
  %conv131.2.8 = trunc i32 %xor130.2.8 to i8
  store i8 %conv131.2.8, i8* %arrayidx128.8, align 1
  %scevgep22.3.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1278, i64 0, i64 0, i64 3
  %1287 = load i8, i8* %scevgep22.3.8, align 1
  %conv126.3.8 = zext i8 %1287 to i32
  %1288 = load i8, i8* %arrayidx128.8, align 1
  %conv129.3.8 = zext i8 %1288 to i32
  %xor130.3.8 = xor i32 %conv129.3.8, %conv126.3.8
  %conv131.3.8 = trunc i32 %xor130.3.8 to i8
  store i8 %conv131.3.8, i8* %arrayidx128.8, align 1
  %scevgep22.4.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1278, i64 0, i64 0, i64 4
  %1289 = load i8, i8* %scevgep22.4.8, align 1
  %conv126.4.8 = zext i8 %1289 to i32
  %1290 = load i8, i8* %arrayidx128.8, align 1
  %conv129.4.8 = zext i8 %1290 to i32
  %xor130.4.8 = xor i32 %conv129.4.8, %conv126.4.8
  %conv131.4.8 = trunc i32 %xor130.4.8 to i8
  store i8 %conv131.4.8, i8* %arrayidx128.8, align 1
  %scevgep22.5.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1278, i64 0, i64 0, i64 5
  %1291 = load i8, i8* %scevgep22.5.8, align 1
  %conv126.5.8 = zext i8 %1291 to i32
  %1292 = load i8, i8* %arrayidx128.8, align 1
  %conv129.5.8 = zext i8 %1292 to i32
  %xor130.5.8 = xor i32 %conv129.5.8, %conv126.5.8
  %conv131.5.8 = trunc i32 %xor130.5.8 to i8
  store i8 %conv131.5.8, i8* %arrayidx128.8, align 1
  %scevgep22.6.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1278, i64 0, i64 0, i64 6
  %1293 = load i8, i8* %scevgep22.6.8, align 1
  %conv126.6.8 = zext i8 %1293 to i32
  %1294 = load i8, i8* %arrayidx128.8, align 1
  %conv129.6.8 = zext i8 %1294 to i32
  %xor130.6.8 = xor i32 %conv129.6.8, %conv126.6.8
  %conv131.6.8 = trunc i32 %xor130.6.8 to i8
  store i8 %conv131.6.8, i8* %arrayidx128.8, align 1
  %scevgep22.7.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1278, i64 0, i64 0, i64 7
  %1295 = load i8, i8* %scevgep22.7.8, align 1
  %conv126.7.8 = zext i8 %1295 to i32
  %1296 = load i8, i8* %arrayidx128.8, align 1
  %conv129.7.8 = zext i8 %1296 to i32
  %xor130.7.8 = xor i32 %conv129.7.8, %conv126.7.8
  %conv131.7.8 = trunc i32 %xor130.7.8 to i8
  store i8 %conv131.7.8, i8* %arrayidx128.8, align 1
  %scevgep22.9.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1278, i64 0, i64 0, i64 9
  %1297 = load i8, i8* %scevgep22.9.8, align 1
  %conv126.9.8 = zext i8 %1297 to i32
  %1298 = load i8, i8* %arrayidx128.8, align 1
  %conv129.9.8 = zext i8 %1298 to i32
  %xor130.9.8 = xor i32 %conv129.9.8, %conv126.9.8
  %conv131.9.8 = trunc i32 %xor130.9.8 to i8
  store i8 %conv131.9.8, i8* %arrayidx128.8, align 1
  %scevgep22.10.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1278, i64 0, i64 0, i64 10
  %1299 = load i8, i8* %scevgep22.10.8, align 1
  %conv126.10.8 = zext i8 %1299 to i32
  %1300 = load i8, i8* %arrayidx128.8, align 1
  %conv129.10.8 = zext i8 %1300 to i32
  %xor130.10.8 = xor i32 %conv129.10.8, %conv126.10.8
  %conv131.10.8 = trunc i32 %xor130.10.8 to i8
  store i8 %conv131.10.8, i8* %arrayidx128.8, align 1
  %scevgep21.8 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1278, i64 0, i64 1, i64 0
  %1301 = bitcast i8* %scevgep21.8 to [11 x [11 x i8]]*
  %arrayidx108.9 = getelementptr inbounds i8, i8* %a, i64 9
  %1302 = load i8, i8* %arrayidx108.9, align 1
  %arrayidx110.9 = getelementptr inbounds i8, i8* %b, i64 9
  %1303 = load i8, i8* %arrayidx110.9, align 1
  %call111.9 = call zeroext i8 @mult(i8 zeroext %1302, i8 zeroext %1303)
  %arrayidx113.9 = getelementptr inbounds i8, i8* %c, i64 9
  store i8 %call111.9, i8* %arrayidx113.9, align 1
  %arrayidx128.9 = getelementptr inbounds i8, i8* %c, i64 9
  %scevgep22.9158 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1301, i64 0, i64 0, i64 0
  %1304 = load i8, i8* %scevgep22.9158, align 1
  %conv126.9159 = zext i8 %1304 to i32
  %1305 = load i8, i8* %arrayidx128.9, align 1
  %conv129.9160 = zext i8 %1305 to i32
  %xor130.9161 = xor i32 %conv129.9160, %conv126.9159
  %conv131.9162 = trunc i32 %xor130.9161 to i8
  store i8 %conv131.9162, i8* %arrayidx128.9, align 1
  %scevgep22.1.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1301, i64 0, i64 0, i64 1
  %1306 = load i8, i8* %scevgep22.1.9, align 1
  %conv126.1.9 = zext i8 %1306 to i32
  %1307 = load i8, i8* %arrayidx128.9, align 1
  %conv129.1.9 = zext i8 %1307 to i32
  %xor130.1.9 = xor i32 %conv129.1.9, %conv126.1.9
  %conv131.1.9 = trunc i32 %xor130.1.9 to i8
  store i8 %conv131.1.9, i8* %arrayidx128.9, align 1
  %scevgep22.2.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1301, i64 0, i64 0, i64 2
  %1308 = load i8, i8* %scevgep22.2.9, align 1
  %conv126.2.9 = zext i8 %1308 to i32
  %1309 = load i8, i8* %arrayidx128.9, align 1
  %conv129.2.9 = zext i8 %1309 to i32
  %xor130.2.9 = xor i32 %conv129.2.9, %conv126.2.9
  %conv131.2.9 = trunc i32 %xor130.2.9 to i8
  store i8 %conv131.2.9, i8* %arrayidx128.9, align 1
  %scevgep22.3.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1301, i64 0, i64 0, i64 3
  %1310 = load i8, i8* %scevgep22.3.9, align 1
  %conv126.3.9 = zext i8 %1310 to i32
  %1311 = load i8, i8* %arrayidx128.9, align 1
  %conv129.3.9 = zext i8 %1311 to i32
  %xor130.3.9 = xor i32 %conv129.3.9, %conv126.3.9
  %conv131.3.9 = trunc i32 %xor130.3.9 to i8
  store i8 %conv131.3.9, i8* %arrayidx128.9, align 1
  %scevgep22.4.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1301, i64 0, i64 0, i64 4
  %1312 = load i8, i8* %scevgep22.4.9, align 1
  %conv126.4.9 = zext i8 %1312 to i32
  %1313 = load i8, i8* %arrayidx128.9, align 1
  %conv129.4.9 = zext i8 %1313 to i32
  %xor130.4.9 = xor i32 %conv129.4.9, %conv126.4.9
  %conv131.4.9 = trunc i32 %xor130.4.9 to i8
  store i8 %conv131.4.9, i8* %arrayidx128.9, align 1
  %scevgep22.5.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1301, i64 0, i64 0, i64 5
  %1314 = load i8, i8* %scevgep22.5.9, align 1
  %conv126.5.9 = zext i8 %1314 to i32
  %1315 = load i8, i8* %arrayidx128.9, align 1
  %conv129.5.9 = zext i8 %1315 to i32
  %xor130.5.9 = xor i32 %conv129.5.9, %conv126.5.9
  %conv131.5.9 = trunc i32 %xor130.5.9 to i8
  store i8 %conv131.5.9, i8* %arrayidx128.9, align 1
  %scevgep22.6.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1301, i64 0, i64 0, i64 6
  %1316 = load i8, i8* %scevgep22.6.9, align 1
  %conv126.6.9 = zext i8 %1316 to i32
  %1317 = load i8, i8* %arrayidx128.9, align 1
  %conv129.6.9 = zext i8 %1317 to i32
  %xor130.6.9 = xor i32 %conv129.6.9, %conv126.6.9
  %conv131.6.9 = trunc i32 %xor130.6.9 to i8
  store i8 %conv131.6.9, i8* %arrayidx128.9, align 1
  %scevgep22.7.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1301, i64 0, i64 0, i64 7
  %1318 = load i8, i8* %scevgep22.7.9, align 1
  %conv126.7.9 = zext i8 %1318 to i32
  %1319 = load i8, i8* %arrayidx128.9, align 1
  %conv129.7.9 = zext i8 %1319 to i32
  %xor130.7.9 = xor i32 %conv129.7.9, %conv126.7.9
  %conv131.7.9 = trunc i32 %xor130.7.9 to i8
  store i8 %conv131.7.9, i8* %arrayidx128.9, align 1
  %scevgep22.8.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1301, i64 0, i64 0, i64 8
  %1320 = load i8, i8* %scevgep22.8.9, align 1
  %conv126.8.9 = zext i8 %1320 to i32
  %1321 = load i8, i8* %arrayidx128.9, align 1
  %conv129.8.9 = zext i8 %1321 to i32
  %xor130.8.9 = xor i32 %conv129.8.9, %conv126.8.9
  %conv131.8.9 = trunc i32 %xor130.8.9 to i8
  store i8 %conv131.8.9, i8* %arrayidx128.9, align 1
  %scevgep22.10.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1301, i64 0, i64 0, i64 10
  %1322 = load i8, i8* %scevgep22.10.9, align 1
  %conv126.10.9 = zext i8 %1322 to i32
  %1323 = load i8, i8* %arrayidx128.9, align 1
  %conv129.10.9 = zext i8 %1323 to i32
  %xor130.10.9 = xor i32 %conv129.10.9, %conv126.10.9
  %conv131.10.9 = trunc i32 %xor130.10.9 to i8
  store i8 %conv131.10.9, i8* %arrayidx128.9, align 1
  %scevgep21.9 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1301, i64 0, i64 1, i64 0
  %1324 = bitcast i8* %scevgep21.9 to [11 x [11 x i8]]*
  %arrayidx108.10 = getelementptr inbounds i8, i8* %a, i64 10
  %1325 = load i8, i8* %arrayidx108.10, align 1
  %arrayidx110.10 = getelementptr inbounds i8, i8* %b, i64 10
  %1326 = load i8, i8* %arrayidx110.10, align 1
  %call111.10 = call zeroext i8 @mult(i8 zeroext %1325, i8 zeroext %1326)
  %arrayidx113.10 = getelementptr inbounds i8, i8* %c, i64 10
  store i8 %call111.10, i8* %arrayidx113.10, align 1
  %arrayidx128.10 = getelementptr inbounds i8, i8* %c, i64 10
  %scevgep22.10168 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1324, i64 0, i64 0, i64 0
  %1327 = load i8, i8* %scevgep22.10168, align 1
  %conv126.10169 = zext i8 %1327 to i32
  %1328 = load i8, i8* %arrayidx128.10, align 1
  %conv129.10170 = zext i8 %1328 to i32
  %xor130.10171 = xor i32 %conv129.10170, %conv126.10169
  %conv131.10172 = trunc i32 %xor130.10171 to i8
  store i8 %conv131.10172, i8* %arrayidx128.10, align 1
  %scevgep22.1.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1324, i64 0, i64 0, i64 1
  %1329 = load i8, i8* %scevgep22.1.10, align 1
  %conv126.1.10 = zext i8 %1329 to i32
  %1330 = load i8, i8* %arrayidx128.10, align 1
  %conv129.1.10 = zext i8 %1330 to i32
  %xor130.1.10 = xor i32 %conv129.1.10, %conv126.1.10
  %conv131.1.10 = trunc i32 %xor130.1.10 to i8
  store i8 %conv131.1.10, i8* %arrayidx128.10, align 1
  %scevgep22.2.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1324, i64 0, i64 0, i64 2
  %1331 = load i8, i8* %scevgep22.2.10, align 1
  %conv126.2.10 = zext i8 %1331 to i32
  %1332 = load i8, i8* %arrayidx128.10, align 1
  %conv129.2.10 = zext i8 %1332 to i32
  %xor130.2.10 = xor i32 %conv129.2.10, %conv126.2.10
  %conv131.2.10 = trunc i32 %xor130.2.10 to i8
  store i8 %conv131.2.10, i8* %arrayidx128.10, align 1
  %scevgep22.3.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1324, i64 0, i64 0, i64 3
  %1333 = load i8, i8* %scevgep22.3.10, align 1
  %conv126.3.10 = zext i8 %1333 to i32
  %1334 = load i8, i8* %arrayidx128.10, align 1
  %conv129.3.10 = zext i8 %1334 to i32
  %xor130.3.10 = xor i32 %conv129.3.10, %conv126.3.10
  %conv131.3.10 = trunc i32 %xor130.3.10 to i8
  store i8 %conv131.3.10, i8* %arrayidx128.10, align 1
  %scevgep22.4.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1324, i64 0, i64 0, i64 4
  %1335 = load i8, i8* %scevgep22.4.10, align 1
  %conv126.4.10 = zext i8 %1335 to i32
  %1336 = load i8, i8* %arrayidx128.10, align 1
  %conv129.4.10 = zext i8 %1336 to i32
  %xor130.4.10 = xor i32 %conv129.4.10, %conv126.4.10
  %conv131.4.10 = trunc i32 %xor130.4.10 to i8
  store i8 %conv131.4.10, i8* %arrayidx128.10, align 1
  %scevgep22.5.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1324, i64 0, i64 0, i64 5
  %1337 = load i8, i8* %scevgep22.5.10, align 1
  %conv126.5.10 = zext i8 %1337 to i32
  %1338 = load i8, i8* %arrayidx128.10, align 1
  %conv129.5.10 = zext i8 %1338 to i32
  %xor130.5.10 = xor i32 %conv129.5.10, %conv126.5.10
  %conv131.5.10 = trunc i32 %xor130.5.10 to i8
  store i8 %conv131.5.10, i8* %arrayidx128.10, align 1
  %scevgep22.6.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1324, i64 0, i64 0, i64 6
  %1339 = load i8, i8* %scevgep22.6.10, align 1
  %conv126.6.10 = zext i8 %1339 to i32
  %1340 = load i8, i8* %arrayidx128.10, align 1
  %conv129.6.10 = zext i8 %1340 to i32
  %xor130.6.10 = xor i32 %conv129.6.10, %conv126.6.10
  %conv131.6.10 = trunc i32 %xor130.6.10 to i8
  store i8 %conv131.6.10, i8* %arrayidx128.10, align 1
  %scevgep22.7.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1324, i64 0, i64 0, i64 7
  %1341 = load i8, i8* %scevgep22.7.10, align 1
  %conv126.7.10 = zext i8 %1341 to i32
  %1342 = load i8, i8* %arrayidx128.10, align 1
  %conv129.7.10 = zext i8 %1342 to i32
  %xor130.7.10 = xor i32 %conv129.7.10, %conv126.7.10
  %conv131.7.10 = trunc i32 %xor130.7.10 to i8
  store i8 %conv131.7.10, i8* %arrayidx128.10, align 1
  %scevgep22.8.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1324, i64 0, i64 0, i64 8
  %1343 = load i8, i8* %scevgep22.8.10, align 1
  %conv126.8.10 = zext i8 %1343 to i32
  %1344 = load i8, i8* %arrayidx128.10, align 1
  %conv129.8.10 = zext i8 %1344 to i32
  %xor130.8.10 = xor i32 %conv129.8.10, %conv126.8.10
  %conv131.8.10 = trunc i32 %xor130.8.10 to i8
  store i8 %conv131.8.10, i8* %arrayidx128.10, align 1
  %scevgep22.9.10 = getelementptr [11 x [11 x i8]], [11 x [11 x i8]]* %1324, i64 0, i64 0, i64 9
  %1345 = load i8, i8* %scevgep22.9.10, align 1
  %conv126.9.10 = zext i8 %1345 to i32
  %1346 = load i8, i8* %arrayidx128.10, align 1
  %conv129.9.10 = zext i8 %1346 to i32
  %xor130.9.10 = xor i32 %conv129.9.10, %conv126.9.10
  %conv131.9.10 = trunc i32 %xor130.9.10 to i8
  store i8 %conv131.9.10, i8* %arrayidx128.10, align 1
  %call139 = call zeroext i8 @mult(i8 zeroext %call, i8 zeroext %call1)
  %conv140 = zext i8 %call139 to i32
  %1347 = load i8, i8* %c, align 1
  %scevgep.1 = getelementptr i8, i8* %c, i64 1
  %1348 = load i8, i8* %scevgep.1, align 1
  %conv.i.i172.1 = zext i8 %1348 to i32
  %conv1.i.i173.1 = zext i8 %1347 to i32
  %xor.i.i174.1 = xor i32 %conv1.i.i173.1, %conv.i.i172.1
  %conv2.i.i175.1 = trunc i32 %xor.i.i174.1 to i8
  %scevgep.2 = getelementptr i8, i8* %c, i64 2
  %1349 = load i8, i8* %scevgep.2, align 1
  %conv.i.i172.2 = zext i8 %1349 to i32
  %conv1.i.i173.2 = zext i8 %conv2.i.i175.1 to i32
  %xor.i.i174.2 = xor i32 %conv1.i.i173.2, %conv.i.i172.2
  %conv2.i.i175.2 = trunc i32 %xor.i.i174.2 to i8
  %scevgep.3 = getelementptr i8, i8* %c, i64 3
  %1350 = load i8, i8* %scevgep.3, align 1
  %conv.i.i172.3 = zext i8 %1350 to i32
  %conv1.i.i173.3 = zext i8 %conv2.i.i175.2 to i32
  %xor.i.i174.3 = xor i32 %conv1.i.i173.3, %conv.i.i172.3
  %conv2.i.i175.3 = trunc i32 %xor.i.i174.3 to i8
  %scevgep.4 = getelementptr i8, i8* %c, i64 4
  %1351 = load i8, i8* %scevgep.4, align 1
  %conv.i.i172.4 = zext i8 %1351 to i32
  %conv1.i.i173.4 = zext i8 %conv2.i.i175.3 to i32
  %xor.i.i174.4 = xor i32 %conv1.i.i173.4, %conv.i.i172.4
  %conv2.i.i175.4 = trunc i32 %xor.i.i174.4 to i8
  %scevgep.5 = getelementptr i8, i8* %c, i64 5
  %1352 = load i8, i8* %scevgep.5, align 1
  %conv.i.i172.5 = zext i8 %1352 to i32
  %conv1.i.i173.5 = zext i8 %conv2.i.i175.4 to i32
  %xor.i.i174.5 = xor i32 %conv1.i.i173.5, %conv.i.i172.5
  %conv2.i.i175.5 = trunc i32 %xor.i.i174.5 to i8
  %scevgep.6 = getelementptr i8, i8* %c, i64 6
  %1353 = load i8, i8* %scevgep.6, align 1
  %conv.i.i172.6 = zext i8 %1353 to i32
  %conv1.i.i173.6 = zext i8 %conv2.i.i175.5 to i32
  %xor.i.i174.6 = xor i32 %conv1.i.i173.6, %conv.i.i172.6
  %conv2.i.i175.6 = trunc i32 %xor.i.i174.6 to i8
  %scevgep.7 = getelementptr i8, i8* %c, i64 7
  %1354 = load i8, i8* %scevgep.7, align 1
  %conv.i.i172.7 = zext i8 %1354 to i32
  %conv1.i.i173.7 = zext i8 %conv2.i.i175.6 to i32
  %xor.i.i174.7 = xor i32 %conv1.i.i173.7, %conv.i.i172.7
  %conv2.i.i175.7 = trunc i32 %xor.i.i174.7 to i8
  %scevgep.8 = getelementptr i8, i8* %c, i64 8
  %1355 = load i8, i8* %scevgep.8, align 1
  %conv.i.i172.8 = zext i8 %1355 to i32
  %conv1.i.i173.8 = zext i8 %conv2.i.i175.7 to i32
  %xor.i.i174.8 = xor i32 %conv1.i.i173.8, %conv.i.i172.8
  %conv2.i.i175.8 = trunc i32 %xor.i.i174.8 to i8
  %scevgep.9 = getelementptr i8, i8* %c, i64 9
  %1356 = load i8, i8* %scevgep.9, align 1
  %conv.i.i172.9 = zext i8 %1356 to i32
  %conv1.i.i173.9 = zext i8 %conv2.i.i175.8 to i32
  %xor.i.i174.9 = xor i32 %conv1.i.i173.9, %conv.i.i172.9
  %conv2.i.i175.9 = trunc i32 %xor.i.i174.9 to i8
  %scevgep.10 = getelementptr i8, i8* %c, i64 10
  %1357 = load i8, i8* %scevgep.10, align 1
  %conv.i.i172.10 = zext i8 %1357 to i32
  %conv1.i.i173.10 = zext i8 %conv2.i.i175.9 to i32
  %xor.i.i174.10 = xor i32 %conv1.i.i173.10, %conv.i.i172.10
  %conv2.i.i175.10 = trunc i32 %xor.i.i174.10 to i8
  %conv142 = zext i8 %conv2.i.i175.10 to i32
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
